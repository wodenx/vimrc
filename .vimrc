execute pathogen#infect()
set mouse=a
syntax on
set ttymouse=xterm2
filetype plugin indent on
imap jj <esc>
set shell=bash\ -l
cmap w!! w !sudo tee >/dev/null %
nnoremap <leader>d :NERDTreeToggle<enter>
nnoremap <leader>t :TagbarToggle<enter><C-w><C-w>2001/
nnoremap <D>p :Ctrl<CR>
set number

" highlight Pmenu ctermfg=201 ctermbg=238 

" Vim-Go Settings
autocmd Filetype go setlocal ts=4 sw=4 sts=0 noexpandtab
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
au FileType go map <F3> <Plug>(go-def)
au FileType go nmap <leader>c <Plug>(go-test)
au FileType go nmap <Leader>i <Plug>(go-info)

" Gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"  " Some Linux distributions set filetype in /etc/vimrc.
"  " Clear filetype flags before changing runtimepath to force Vim to reload them.
"  filetype off
"  filetype plugin indent off
"  set runtimepath+=$GOROOT/misc/vim
"  filetype plugin indent on
"  syntax on
"
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"set number
"
