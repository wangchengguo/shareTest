#!/bin/bash

GIT_PATH='/data/github/tuboshi'
WEB_PATH='/data/wwwroot/share/tmp'

echo "开始拉取服务"
cd $GIT_PATH
echo "拉取代码中..."
git reset --hard origin/299
git clean -f
git pull
# 切换分支
git checkout 299
echo "拉取完成!!!"
echo "开始编译..."
gulp bundle-299-share
echo "编译完成!!!"
echo "开始拷贝"
cp -r ./front/angularApp2/dist_share $WEB_PATH
cp -r ./front/angularApp2/fonts $WEB_PATH
cp -r ./front/angularApp2/img $WEB_PATH
cp -r ./front/angularApp2/libs $WEB_PATH
cp -r ./front/angularApp2/index_share.html $WEB_PATH
echo "拷贝完成!!!"



