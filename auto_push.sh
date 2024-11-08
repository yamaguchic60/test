#!/bin/bash

# ベースディレクトリ
BASE_DIR=~/dev/git_projects

# ベースディレクトリ内のすべてのサブディレクトリをループ
for dir in $BASE_DIR/*; do
  if [ -d "$dir/.git" ]; then
    echo "Processing $dir"
    cd $dir

    # 変更をステージング
    git add .

    # コミット
    git commit -m "Daily auto commit"

    # プッシュ
    git push origin main
  fi
done