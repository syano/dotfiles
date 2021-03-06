alias bfg='java -jar ~/bin/bfg-1.12.12.jar'

########################################
# コマンド受付状態の表示変更
########################################
##############################
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
##############################
export PS1='\[\033[1;32m\]･ᴗ･\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \n\$ '

########################################
# ls
########################################
alias ls='ls -G'
#alias ll='ls -lG'

########################################
# git
########################################
##############################
# ブランチ表示
##############################
#git_branch() {
#  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
#}
#PS1='——\n\[\033[36m\]\u\[\033[0m\]\[\033[32m\]\w\[\033[0m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '
export LSCOLORS=gxfxcxdxbxegedabagacad

##############################
# スクリプト読み込み
##############################
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

##############################
# プロンプトに各種情報表示
##############################
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1

########################################
# nodebrew
# https://github.com/hokaccha/nodebrew
########################################
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH=$HOME/woff2/woff2_compress:$PATH
export PATH=$HOME/woff2/woff2_decompress:$PATH

########################################
# homebrewでインストールしたphp7へPATHを通す
########################################
export PATH="$(brew --prefix php70)/bin:$PATH"
