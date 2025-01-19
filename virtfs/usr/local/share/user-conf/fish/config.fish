#!/bin/fish


# unset greeting message
set -U fish_greeting

# unset PATH
set -U fish_user_paths

# re-populate path
if fish_is_root_user
    set PATH /usr/local/env/rust/cargo/bin /usr/local/bin /usr/local/sbin /usr//bin /usr/sbin /bin /sbin
else
    set PATH /usr/local/env/rust/cargo/bin /usr/local/bin /usr/bin /bin
end

# set configuration directory
set USER_CONF_DIR /usr/local/share/user-conf

#set editor variables to point to DebianAlternatives editor
set VISUAL editor
set EDITOR editor

# export variables
export PATH
export USER_CONF_DIR
export USER_CONF_DIR


# set colours
set fish_color_command white
set fish_color_keyword blue
set fish_color_quote white
set fish_color_param cyan

set fish_color_redirection cyan
set fish_color_end magenta
set fish_color_error yellow
set fish_color_comment brblack
set fish_color_operator white
set fish_color_escape green

set fish_color_autosuggestion brblack
set fish_color_cancel yellow

# set prompt colours
set fish_color_user red
set fish_color_host magenta
set fish_color_host_remote white

set fish_color_cwd cyan
set fish_color_cwd_root cyan

set fish_color_status yellow

# set prompt
source /usr/local/share/user-conf/fish/functions/fish_prompt.fish
