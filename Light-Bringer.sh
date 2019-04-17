#!/bin/bash

echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
echo "             . "
sleep 0.03
echo "         .   :   .  "
sleep 0.03
echo "     '.   .  :  .   .' "
sleep 0.03
echo "  ._   '._.-'''-._.'   _. "
sleep 0.03
echo "    '-..'         '..-'  "
sleep 0.03
echo " --._ /.==.     .==.\ _.-- "
sleep 0.03
echo "     ;/_o__\   /_o__\; "
sleep 0.03
echo "-----|'     )^(     '|-----"
sleep 0.03
echo "    _: \_) (\_/) (_/ ;_ "
sleep 0.03
echo " --'  \  '._.=._.'  /  '-- "
sleep 0.03
echo "   _.-''.  '._.'  .''-._ "
sleep 0.03
echo "  '    .''-.(_).-''.    ' "
sleep 0.03
echo "     .'   '  :  '   '. "
sleep 0.03
echo "        '    :   ' "
sleep 0.03
echo "             ' "
sleep 0.03
echo "==============================="
sleep 2
echo " Light Bringer Project"
sleep 0.7
echo "==============================="
echo " Tools Pencegah Penipuan Online "

echo Selamat datang $nick ":)"
get_url=$(curl -s http://zlucifer.com/api/nik.php)
cek='curl -s '$get_url # check status
zlucifer="user-agent: zlucifer"
response=`curl -H "$zlucifer" -m "60" -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response != *HACKER* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
    echo "Silahkan coba lagi"
else
    echo
    echo "Pilih & Masukan angka yang ingin $nick mau"
    echo " 1.Tips"
    echo " 2.Cek"
    echo "1/2?"
    read info
    if [ $info = "1" ]; then
        echo "TIPS: "
        echo " Minta nomor rekening (Atas Nama) dan "
        echo " NIK penjual keasliannya"
        echo
        echo " Penjual tidak mau memberi NIK = Waspada!"
        echo " Nama pemilik NIK tidak muncul = Waspada!"
        echo " Nama pemilik NIK dan Nama pemilik rekening berbeda = Waspada!"
        echo " Nama pemilik NIK sama dengan Nama pemilik rekening = Aman!"
        echo " Meskipun penjual asli, tetap waspada"
     else
            echo
            echo "Silahkan masukan NIK target dengan benar"
            read target # masukin NIK
            echo
            echo Apakah NIK $target "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                echo Melakukan Pengecekan NIK $target
                cek_target=`curl -s $get_url/nik.php?nik=$target`
                echo -e $cek_target
            else
                echo Kesalahan, silahkan coba lagi
            fi
     fi
fi
echo "
echo ">~==================================~<"
echo " Tools ini Gratis! by @zLucifer"
echo " Special 500k Subscribe HackBae
echo " Dilarang menyalahgunakan tools ini
echo " Gunakan Tools Dengan Bijak :)"
echo ">~==================================~<"
