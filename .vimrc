set nocompatible
filetype plugin on
filetype indent on

"Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-dispatch'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

set number
set path+=**
set wildmenu
set autoindent
set foldmethod=indent
set foldlevelstart=20
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
"disable the bells. 
set vb t_vb=

"sensible default configs
"vim-tmux navigator config
"save current buffer on switching
let g:tmux_navigator_save_on_switch = 1
" Disable tmux navigator when zooming the Vim pane let
let g:tmux_navigator_disable_when_zoomed = 1

"color stuff " order matters here
syntax on
" The "^[" is a single character. You enter it by pressing Ctrl+v and then ESC.
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
colorscheme monokai
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
"set termguicolors "doesnt seem to work or be needed
set laststatus=2

"complilation workflow
nnoremap <F5> :Make release <CR>

noremap <Space> za
:command WQ wq
:command Wq wq
:command W w
:command G q
:command E e
