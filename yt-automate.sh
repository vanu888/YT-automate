#!/bin/bash

echo "Start the programme"
 
# Change path to the virtual enviornment
echo "Change path to the virtual enviornment"
cd /path/to/your/venv

# Activate virtual enviornment
echo "Activate the virtual environment"
source venv/bin/activate # Edit the enviornment name as yours

# Start the main programme
figlet "YT - Automate" | boxes -d parchment -p a2

while  true; do
	echo "Welcome to Youtube Automate"

	# Display menu options
	echo -e "1 - Online Play\n2 - Download as a mp3\n3 - Download a video"
	
	# Prompt the user with a message
	read -p "Enter your choice: " choice

	# Perform actions based on the user's choice
	# Action for choice 1
	if [[ "$choice" == "1" ]]; then
		read -p "Enter the URL: " url
    		mpv "$url"

	# Action for choice 2
	elif [[ "$choice" == "2" ]]; then
		read -p "Enter the URL: " url
			# Change path to the music folder		
    		cd /path/to/your/MusicFolder
    		yt-dlp --progress -v -x --audio-format mp3 "$url"
    		echo ""
    		echo "Download completed successfully!"
			# Open file manager 
    		thunar # Replace your file manager

	# Action for choice 3		
	elif [[ "$choice" == "3" ]]; then
		read -p "Enter the URL: " url
    		# Change path to the video folder		
    		cd /path/to/your/VideoFolder
			yt-dlp --progress -v "$url"
    		echo ""
   			echo "Download completed sucessfully"

	# Action for when input an invalid choice	
	else
    		echo "Invalid choice. Exiting."
			# Stop the programme/loop
    		break
	fi

done
