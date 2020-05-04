Headwon=0;
Tailwon=0;

while [[ $Headwon -lt 21 && $Tailwon -lt 21 ]]
do
randomCheck=$(( RANDOM%2 ))
if [[ isHead -eq randomCheck ]]
then
	echo "Tail"
	Headwon=$(( $Headwon + 1 ))
else
	echo "Head"
	Tailwon=$(( $Tailwon + 1 ))
fi
done

echo "Total number of head win is $Headwon"
echo "Total number of tail win is $Tailwon"

if [[ Headwon -lt Tailwon ]]
then
	echo "Tail Won"
elif [[ Headwon -eq Tailwon ]]
then
	echo "Tie"
else
	echo "Head won"
fi
