language en_US

call plug#begin('~/.local/share/nvim/plugged')
Plug 'iCyMind/NeoSolarized'
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'
Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'cespare/vim-toml'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'justinmk/vim-sneak'
Plug 'jremmen/vim-ripgrep'
call plug#end()

set hidden
set number
set noshowmode
set incsearch
set ignorecase
set smartcase
set nohlsearch
set signcolumn=yes
set completeopt=menu,preview,noinsert
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype on
filetype plugin on
filetype indent on

set splitright
set splitbelow

let mapleader="\<SPACE>"

inoremap ;; <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

nmap <Leader><Leader> <c-^>

nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR>

nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

map ` :VimFiler -explorer<CR>
map ~ :VimFilerCurrentDir -explorer -find<CR>

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

set background=light
colorscheme NeoSolarized

let g:airline#extensions#tabline#enabled=1
set laststatus=2

let g:rustfmt_autosave = 1

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 7

