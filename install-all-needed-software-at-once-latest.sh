#!/bin/bash 
#!/bin/bash 
############################################################################
#
#                                       
#
#                                    
#            eeeeeeeeeeeeeeeee           
#         eeeeeeeeeeeeeeeeeeeeeee        
#       eeeee  eeeeeeeeeeee   eeeee      
#     eeee   eeeee       eee     eeee    
#    eeee   eeee          eee     eeee   
#   eee    eee            eee       eee  
#   eee   eee            eee        eee  
#   ee    eee           eeee       eeee  
#   ee    eee         eeeee      eeeeee  
#   ee    eee       eeeee      eeeee ee  
#   eee   eeee   eeeeee      eeeee  eee  
#   eee    eeeeeeeeee     eeeeee    eee 
#   eeeeeeeeeeeeeeeeeeeeeeee    eeeee  
#    eeeeeeee eeeeeeeeeeee      eeee   
#        eeeee                 eeeee     
#          eeeeeee         eeeeeee       
#             eeeeeeeeeeeeeeeee
#
#                               
#
#
############################################################################
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
# More from Erik Dubois
#
# Aurora conky and all its components are installed via an other script
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/
#
# Sardi icons can be found at
# http://sourceforge.net/projects/sardi/
#
# Yltra flat icons can be found at 
# https://github.com/erikdubois/yltra-flat-icon-theme
############################################################################
#
# the option -y has been added. It will autoinstall all. Omit if you do not want that.
#
############################################################################


############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
############################################################################

###############################################################################################


# repo for grub-customizer
# sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y

# repo for numix themes
#sudo add-apt-repository ppa:numix/ppa -y

# repo for boot-repair
# sudo add-apt-repository -y ppa:yannubuntu/boot-repair


###############################################################################################

# after all these new repo's - getting new info
#sudo apt-get -y update

############################################################################


# Spotify
# https://www.spotify.com/be-nl/download/linux/

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client -y


############################################################################


# donwloading and installing google chrome for netflix e.g.
echo "downloading google chrome latest stable edition"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y libcurl3
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y



##############################################################################################

# Downloading and installing latest sublime text 3
rm /tmp/sublime-text_build-3126_amd64.deb

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb -O /tmp/sublime-text_build-3126_amd64.deb
sudo dpkg -i /tmp/sublime-text_build-3126_amd64.deb

rm /tmp/sublime-text_build-3126_amd64.deb


###############################################################################################

# Downloading and installing latest variety
# to be able to add repositories
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install variety -y

###############################################################################################


#software from 'normal' repositories
echo "software from 'normal' repositories"
sudo apt-get install -y catfish clementine curl dconf-cli dconf-editor evolution focuswriter frei0r-plugins
sudo apt-get install -y geary gimp git 
sudo apt-get install -y gpick glances gparted
sudo apt-get install -y hardinfo inkscape inxi kazam openshot p7zip-full ppa-purge radiotray redshift
sudo apt-get install -y screenruler scrot shutter slurm synapse
sudo apt-get install -y thunar transmission transmission-cli vnstat winbind screenfetch
sudo apt-get install -y browser-plugin-vlc vlc 
#sudo apt-get install -y plank


############################################################################

# installation of zippers and unzippers
echo "installation of zippers and unzippers"
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

############################################################################

#software from extra repositories
#echo "software from extra repositories"
#sudo apt-get install -y grub-customizer 

#themes
#echo "themes and icons"
#sudo apt-get install  -y numix-gtk-theme numix-icon-theme-circle
sudo apt-get install -y breeze-cursor-theme  

############################################################################

#software operating system specific

sudo apt install -y gnome-tweak-tool gdebi
#sudo apt install -y compizconfig-settings-manager  

sudo apt install -y xfce4-taskmanager


############################################################################

#ending

