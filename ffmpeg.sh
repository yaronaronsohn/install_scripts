#!/bin/sh

cd /usr/local/bin
mkdir ffmpeg
cd ffmpeg
curl https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -o ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz
rm -f ./ffmpeg-release-amd64-static.tar.xz
untar_dir=`ls | grep ffmpeg-*-amd64-static`
cp -a ${untar_dir}/* .
ln -s /usr/local/bin/ffmpeg/ffmpeg /usr/bin/ffmpeg
ln -s /usr/local/bin/ffmpeg/ffprobe /usr/bin/ffprobe
