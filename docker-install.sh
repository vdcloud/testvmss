echo "Install docker"
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
sudo apt-get update


if [ -x "$(command -v docker)" ]; then
    echo "docker is already installed"
else
    echo "Installing docker"
    sudo apt install docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
    echo "finished installing docker"
fi
