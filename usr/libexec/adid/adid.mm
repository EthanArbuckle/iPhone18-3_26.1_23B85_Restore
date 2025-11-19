uint64_t sub_100000998(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1002DD400 + ((97 * (dword_1002E0B50 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_10027CCF0[byte_1002C6050[(97 * (dword_1002E0B50 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x7A]) + 249);
  v4 = *(v3 - 1452067362);
  v5 = *(&off_1002DD400 + ((97 * (v4 ^ dword_1002E0DA8 ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * (v4 ^ dword_1002E0DA8 ^ 0x1C))] ^ 0x92]) + 607);
  v6 = (*(v5 - 1056958627) - v4) ^ &v15;
  v7 = 1912442209 * (v6 - 0x71B9CF6610DE981CLL);
  v8 = 1912442209 * (v6 ^ 0x71B9CF6610DE981CLL);
  *(v3 - 1452067362) = v7;
  *(v5 - 1056958627) = v8;
  LOBYTE(v8) = 97 * ((v8 - *(v3 - 1452067362)) ^ 0x1C);
  v9 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0B50) ^ 0x1C)) ^ byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 - dword_1002E0B50) ^ 0x1C))] ^ 0xD4]) + 325) - 2062743291;
  (*&v9[8 * (byte_1002C5F50[byte_1002A9990[v8] ^ 0x80] ^ v8) + 85504])(a2, *(a1 + 32));
  v10 = 97 * (*(v3 - 1452067362) ^ 0x1C ^ *(v5 - 1056958627));
  v14[0] = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[v10] ^ 0x7A] ^ v10) + 545) - 1086039546;
  v14[1] = 0x40000000;
  v14[2] = sub_100116A9C;
  v11 = 97 * ((*(v5 - 1056958627) + *(v3 - 1452067362)) ^ 0x1C);
  v14[3] = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[v11] ^ 0xF6] ^ v11) + 367) - 680818759;
  v14[4] = a2;
  v12 = 97 * (*(v3 - 1452067362) ^ 0x1C ^ *(v5 - 1056958627));
  (*&v9[8 * (byte_10027CAF0[byte_1002C5E50[v12] ^ 2] ^ v12) + 84200])(a2, v14);
  return (*&v9[8 * ((97 * ((*(v5 - 1056958627) + *(v3 - 1452067362)) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((*(v5 - 1056958627) + *(v3 - 1452067362)) ^ 0x1C))] ^ 0x80]) + 84608])(a2);
}

void sub_100000D18(uint64_t a1)
{
  v1 = 301143701 * ((2 * (a1 & 0x88B2A888) - a1 + 2001557367) ^ 0xCE5CA05);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100000E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(v59 - 160) = *v57;
  *(v59 - 159) = v57[1];
  *(v59 - 158) = v57[2];
  *(v59 - 157) = v57[3];
  *(v59 - 156) = v57[4];
  *(v59 - 155) = v57[5];
  *(v59 - 154) = v57[6];
  *(v59 - 153) = v57[7];
  *(v59 - 152) = v57[8];
  *(v59 - 151) = v57[9];
  *(v59 - 150) = v57[10];
  *(v59 - 149) = v57[11];
  *(v59 - 148) = v57[12];
  *(v59 - 147) = v57[13];
  *(v59 - 146) = v57[14];
  *(v59 - 145) = v57[15];
  return (*(a57 + 8 * v58))(a1, a2, v59 + 0x455BF20E4845822ELL);
}

uint64_t sub_100000F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a2)
  {
    v60 = a3 == v58;
  }

  else
  {
    v60 = 1;
  }

  v63 = v60 || v59 == 0 || *(a1 + 48) == 0x28209B5BBA810FE3;
  return (*(a57 + 8 * ((50 * (((v57 - 1) ^ v63) & 1)) ^ v57)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a1, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_100000F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = (v60 ^ 0x3FC9AD4B) + v59 - a9 - ((2 * (v59 - a9) - 2086346366) & 0xFBEE82DE);
  v62 = v61 - 6;
  v63 = (v58 - 28) | 0x8EC;
  v64 = (5 - v61) & 0xF;
  v66 = v62 != 2113356143 && v64 == ((v63 - 8215) ^ (v63 - 7599) ^ 0x3E8);
  return (*(a58 + 8 * (v66 | (16 * v66) | v63)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100001028(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(v60 - 180) = v58 + 1325;
  v61 = *(a6 + 8 * (v58 ^ 0xA9E)) - 606221910;
  v62 = (*(v61 + (*(v57 - 0x28209B5BBA810FD9) ^ 0x8DLL)) ^ 0xC5) << ((v58 + 45) ^ 0xA);
  v63 = *(a6 + 8 * (v58 - 2231)) - 692831203;
  v64 = *(v57 - 0x28209B5BBA810FD6);
  v65 = v58;
  v66 = ((*(v63 + (*(v57 - 0x28209B5BBA810FE3) ^ 0x8DLL)) ^ 0xE2) << 24) | ((*(v61 + (*(v57 - 0x28209B5BBA810FE1) ^ 0xC1)) ^ 0xD3) << 8);
  v67 = *(a6 + 8 * (v58 ^ 0x80A));
  LODWORD(STACK[0x290]) = v59;
  v68 = v67 - 446916162;
  v69 = (v64 ^ 0x4E) + *(v67 - 446916162 + (v64 ^ 0xCF)) - 9;
  v70 = *(v63 + (*(v57 - 0x28209B5BBA810FD7) ^ 0x5ELL));
  *(v60 - 192) = a2;
  LODWORD(v67) = *(v63 + (*(v57 - 0x28209B5BBA810FDBLL) ^ 0x4DLL));
  STACK[0x270] = a3;
  v71 = *(a6 + 8 * (v65 - 2155)) - 395710743;
  v72 = *(v71 + *(v57 - 0x28209B5BBA810FE0)) ^ 0xF4 | v66;
  v73 = *(v71 + (*(v57 - 0x28209B5BBA810FDCLL) ^ 6)) ^ 0x85 | ((*(v61 + (*(v57 - 0x28209B5BBA810FDDLL) ^ 0x98)) ^ 0xCA) << 8);
  v74 = (*(v71 + (*(v57 - 0x28209B5BBA810FD8) ^ 0x4BLL)) ^ 0xB3) + v62 + ((v67 ^ 0xD1) << 24);
  v75 = *(v71 + (*(v57 - 0x28209B5BBA810FD4) ^ 0xBCLL));
  LOBYTE(v61) = *(v61 + (*(v57 - 0x28209B5BBA810FD5) ^ 0x10));
  v76 = v72 & 0xFF00FFFF | ((((*(v57 - 0x28209B5BBA810FE2) ^ 0x49) + *(v68 + (*(v57 - 0x28209B5BBA810FE2) ^ 0xC8)) - 9) ^ 0xF7) << 16);
  v77 = v73 & 0xFF00FFFF | (((*(v68 + (*(v57 - 0x28209B5BBA810FDELL) ^ 0x5FLL)) + (*(v57 - 0x28209B5BBA810FDELL) ^ 0xDE) - 9) ^ 0xB0) << 16) | ((*(v63 + (*(v57 - 0x28209B5BBA810FDFLL) ^ 0x9FLL)) ^ 0x52) << 24);
  v78 = v74 + ((((*(v57 - 0x28209B5BBA810FDALL) ^ 0xE) + *(v68 + (*(v57 - 0x28209B5BBA810FDALL) ^ 0x8FLL)) - 9) ^ 0xF3) << 16);
  v79 = v78 - ((2 * v78) & 0x30F6A13E) - 1736748897;
  v80 = *(a6 + 8 * (v65 ^ 0x9C0)) - 800931534;
  v81 = *(a6 + 8 * (v65 - 1620)) - 960237282;
  v82 = *(v80 + 4 * (v70 ^ 0x9A)) ^ *(v81 + 4 * (v61 ^ 0x5Au)) ^ 0xCBE9C948;
  *(v60 - 200) = v65;
  v83 = *(a6 + 8 * (v65 - 2010)) - 789552550;
  v84 = (v82 - ((2 * v82) & 0x6102D348) + 813787556) ^ *(v83 + 4 * (v75 ^ 0x8B));
  v85 = *(a6 + 8 * (v65 ^ 0x9F8)) - 481053110;
  LODWORD(v64) = v76 ^ v70 ^ 0x32 ^ *(v85 + 4 * (v69 ^ 0x34u)) ^ (v84 - ((2 * v84) & 0x5AB7AE3A) + 760993565);
  LODWORD(STACK[0x230]) = v75 ^ 0x5A;
  LODWORD(v67) = ((v70 ^ 0x32) << 24) | ((v69 ^ 0xD1) << 16) | ((v61 ^ 0xAE) << 8) | v75 ^ 0x5A;
  v86 = v64 ^ v77;
  v87 = v64;
  v213 = v64;
  LODWORD(v64) = v64 ^ v77 ^ v79;
  LODWORD(v75) = v86;
  LODWORD(STACK[0x248]) = v64;
  LODWORD(v67) = v64 ^ 0x66F081F4 ^ v67;
  LODWORD(STACK[0x22C]) = BYTE1(v67);
  LODWORD(v64) = *(v81 + 4 * (BYTE1(v67) ^ 0xFBu)) ^ 0xCBE9C948;
  v88 = v67 ^ 0x595008F6;
  v89 = (v67 ^ 0x595008F6) >> 24;
  LODWORD(STACK[0x210]) = v89;
  LODWORD(v64) = *(v80 + 4 * (v89 ^ 0x16)) ^ v64;
  LODWORD(v67) = (v64 - ((2 * v64) & 0x5AB7AE3A) + 760993565) ^ *(v85 + 4 * (BYTE2(v67) ^ 0xD9u));
  LODWORD(STACK[0x244]) = v88;
  LODWORD(v67) = (v67 - ((2 * v67) & 0x6102D348) + 813787556) ^ *(v83 + 4 * (v88 ^ 0x9Eu));
  LODWORD(v67) = v89 ^ v87 ^ (v67 - 526708842 - ((2 * v67) & 0xC1361F66) + 29);
  v90 = v67 ^ 0xE09B0F96;
  LODWORD(STACK[0x2BC]) = v67 ^ 0xE09B0F96;
  LODWORD(v67) = v67 ^ 0x2E10EC7A;
  v210 = v75;
  LODWORD(STACK[0x2B8]) = v75 ^ 0x16CECA13 ^ v67;
  LODWORD(v64) = v67 ^ v79;
  LODWORD(v67) = v67 ^ v79 ^ v88;
  v91 = v64;
  LODWORD(STACK[0x2AC]) = v64;
  LODWORD(v63) = BYTE3(v67);
  LODWORD(v64) = *(v80 + 4 * (BYTE3(v67) ^ 0xF6));
  LODWORD(STACK[0x238]) = v67;
  LODWORD(v64) = v64 ^ *(v83 + 4 * (v67 ^ 0x65u)) ^ 0x626781EB;
  LODWORD(v64) = (v64 - ((2 * v64) & 0x5AB7AE3A) + 760993565) ^ *(v85 + 4 * (BYTE2(v67) ^ 9u));
  LODWORD(v67) = (v64 - ((2 * v64) & 0x321E420E) - 1727061753) ^ *(v81 + 4 * (BYTE1(v67) ^ 0xA4u));
  LODWORD(v64) = (v67 + 1949410091 - ((2 * v67) & 0xE86347DC) + 195) ^ v63 ^ 0x7431A32B;
  LODWORD(v67) = v64 ^ v75 ^ v88;
  LODWORD(v63) = v64 ^ v75;
  *(v60 - 224) = v64 ^ v75;
  LOWORD(v75) = v64 ^ v75 ^ v88;
  LODWORD(STACK[0x220]) = v67;
  v92 = *(v85 + 4 * (BYTE2(v67) ^ 0x64u));
  v93 = (v67 ^ 0xAACEB432) >> 24;
  LODWORD(STACK[0x218]) = v93;
  v94 = v92 ^ 0x7FBD3F52 ^ *(v80 + 4 * (v93 ^ 0x67));
  v95 = (v94 - ((2 * v94) & 0x6102D348) + 813787556) ^ *(v83 + 4 * (v67 ^ 0x87u));
  LODWORD(STACK[0x228]) = BYTE1(v75);
  v96 = (v95 - ((2 * v95) & 0x321E420E) - 1727061753) ^ *(v81 + 4 * (BYTE1(v75) ^ 0x6Fu));
  v97 = (v96 + 513298204 - ((2 * v96) & 0x3D309E90) + 44) ^ v93 ^ 0x1E984F1C;
  LODWORD(STACK[0x2A4]) = v64 ^ v90;
  v98 = v64 ^ v90 ^ 0x156E6C01 ^ (v97 - ((2 * v97) & 0x80EB737C) + 1081457086);
  LODWORD(v75) = v98 ^ v91;
  v212 = v98 ^ v91 ^ 0xEAB0F60;
  LODWORD(v64) = v212 ^ v67 ^ 0xAACEB432;
  v99 = *(v85 + 4 * (BYTE2(v64) ^ 0xAFu));
  LODWORD(STACK[0x260]) = BYTE1(v64);
  v100 = v99 ^ *(v81 + 4 * (BYTE1(v64) ^ 0x4Cu)) ^ 0xB454F61A;
  LODWORD(STACK[0x208]) = (v212 ^ v67 ^ 0x32);
  v101 = (v100 - ((2 * v100) & 0x6102D348) + 813787556) ^ *(v83 + 4 * ((v212 ^ v67 ^ 0x32) ^ 0x38u));
  v102 = BYTE3(v64);
  LODWORD(v64) = *(v80 + 4 * (BYTE3(v64) ^ 0x32));
  *(v60 - 208) = v98;
  v103 = v102 ^ (v101 - ((2 * v101) & 0xA5CDD09E) + 1390864463) ^ v64 ^ v98 ^ 0x64DE2BD3;
  BYTE1(v91) = BYTE1(v98) ^ BYTE1(v63);
  v104 = v103 ^ v98 ^ v63;
  LODWORD(STACK[0x2B4]) = v104;
  LODWORD(v63) = v104 ^ 0x8AEBF9E9;
  LODWORD(v64) = v104 ^ 0x8AEBF9E9 ^ v67 ^ 0xAACEB432;
  v105 = *(v81 + 4 * (BYTE1(v64) ^ 0x29u)) ^ 0xB454F61A ^ *(v85 + 4 * (((v64 ^ 0xEBFEE54D) >> 16) ^ 0x93u));
  LODWORD(STACK[0x20C]) = v64;
  v106 = (v105 - ((2 * v105) & 0xA5CDD09E) + 1390864463) ^ *(v80 + 4 * (BYTE3(v64) ^ 0x6D));
  v107 = BYTE3(v64) ^ (v106 - ((2 * v106) & 0x6102D348) + 813787556) ^ *(v83 + 4 * (v64 ^ 0x7Du)) ^ v103;
  v108 = v107 ^ v75;
  v109 = v107;
  *(v60 - 236) = v107;
  v110 = v107 ^ v75 ^ v64;
  LODWORD(STACK[0x200]) = v110;
  v111 = v108;
  LODWORD(STACK[0x294]) = v108;
  v112 = v110 ^ 0x69E086DE;
  v113 = *(v81 + 4 * (BYTE1(v110) ^ 0x55u));
  v114 = *(v85 + 4 * (BYTE2(v110) ^ 0x33u));
  v115 = (v110 ^ 0x69E086DEu) >> 24;
  *(v60 - 248) = v115;
  v116 = v113 ^ v114 ^ *(v80 + 4 * (v115 ^ 0x7F)) ^ v115 ^ 0xE6B21E19;
  v117 = (v116 - ((2 * v116) & 0x6102D348) + 813787556) ^ *(v83 + 4 * (v112 ^ 0xD4u));
  v118 = v117 ^ v63 ^ v111;
  LODWORD(STACK[0x29C]) = v117 ^ v63;
  v119 = v118 ^ v112;
  LODWORD(STACK[0x298]) = v118;
  v120 = v118 ^ v112 ^ 0xE22A96E9;
  v121 = *(v83 + 4 * ((v118 ^ v112) ^ 0x81u)) ^ *(v85 + 4 * (((v118 ^ v112) >> 16) ^ 0x55u)) ^ 0x1DDABEB9;
  LODWORD(v70) = (v121 - ((2 * v121) & 0x321E420E) - 1727061753) ^ *(v81 + 4 * (BYTE1(v119) ^ 0xE1u));
  LODWORD(STACK[0x2A0]) = v117 ^ v109;
  *(v60 - 252) = (v119 ^ 0xE22A96E9) >> 24;
  v122 = (v70 - ((2 * v70) & 0xA5CDD09E) + 1390864463) ^ *(v80 + 4 * (((v119 ^ 0xE22A96E9) >> 24) ^ 0x5E)) ^ v117 ^ v109;
  LODWORD(STACK[0x2A8]) = v122;
  v123 = HIBYTE(v120) ^ v122;
  v124 = v123 ^ 0xE0C12AF4 ^ v117 ^ v63;
  *(v60 - 232) = v124;
  v125 = v124 ^ v118 ^ 0x3C165780;
  *(v60 - 216) = v125;
  v126 = v125 ^ v120;
  v127 = v126 ^ 0xF20621A6;
  v128 = (v126 ^ 0xF20621A6) >> 24;
  v129 = *(v83 + 4 * (v126 ^ 0x9Cu)) ^ *(v80 + 4 * (v128 ^ 0x18));
  LODWORD(STACK[0x288]) = v126;
  v130 = ((v129 ^ 0x626781EB) - 2 * ((v129 ^ 0x626781EB) & 0x190F2117 ^ v129 & 0x10) - 1727061753) ^ *(v81 + 4 * (BYTE1(v126) ^ 0x92u));
  v131 = (v130 - ((2 * v130) & 0x5AB7AE3A) + 760993565) ^ *(v85 + 4 * (BYTE2(v126) ^ 6u));
  v208 = v123 ^ 0xE0C12AF4 ^ (v131 - 1049915380 - ((2 * v131) & 0x82D7204E) + 27);
  *(v60 - 256) = v128 ^ v208;
  v132 = v128 ^ v208 ^ v118 ^ 0x3C165780;
  LODWORD(STACK[0x2B0]) = v132;
  v211 = v132 ^ v127;
  v133 = *(v85 + 4 * (((v132 ^ v127) >> 16) ^ 0xD5u)) ^ *(v81 + 4 * (((v132 ^ v127) >> 8) ^ 0x34u)) ^ 0xB454F61A;
  LODWORD(STACK[0x280]) = *(v80 + 4 * (((v211 ^ 0xC16B900C) >> 24) ^ 0x6D)) ^ *(v83 + 4 * (v211 ^ 0xAu)) ^ ((v211 ^ 0xC16B900C) >> 24) ^ (v133 - ((2 * v133) & 0x6102D348) + 813787556) ^ 0x52E6E811;
  LODWORD(v81) = *(v60 - 200);
  v134 = *(&off_1002DD400 + v81 - 2074) - 926733798;
  v135 = *(&off_1002DD400 + (v81 ^ 0x93A)) - 400766770;
  v136 = *(&off_1002DD400 + (v81 ^ 0x816)) - 104279774;
  v137 = *(&off_1002DD400 + (v81 ^ 0x9E1)) - 1640454031;
  v138 = *(v60 - 208);
  LODWORD(v83) = *&v137[4 * (BYTE1(v138) ^ 0xA9)];
  HIDWORD(v139) = v83 ^ 0x332;
  LODWORD(v139) = v83 ^ 0xF30C5800;
  LODWORD(STACK[0x278]) = v139 >> 11;
  LODWORD(v83) = *&v136[4 * (HIBYTE(v138) ^ 0xAE)] ^ ((HIBYTE(v138) ^ 0x9E) - ((2 * (HIBYTE(v138) ^ 0x9E) + 20588324) & 0x118276A) + 495699783);
  LODWORD(v61) = *&v137[4 * (BYTE1(v91) ^ 0x22)];
  HIDWORD(v139) = v61 ^ 0x332;
  LODWORD(v139) = v61 ^ 0xF30C5800;
  LODWORD(STACK[0x26C]) = v139 >> 11;
  LODWORD(v61) = *&v137[4 * (LODWORD(STACK[0x260]) ^ 0xD7)];
  HIDWORD(v139) = v61 ^ 0x332;
  LODWORD(v139) = v61 ^ 0xF30C5800;
  LODWORD(STACK[0x260]) = v139 >> 11;
  v140 = STACK[0x2AC];
  v209 = v83 - ((2 * v83) & 0xD16F6506);
  v141 = STACK[0x2B8];
  LODWORD(STACK[0x258]) = (HIBYTE(LODWORD(STACK[0x2BC])) ^ 0x4F) + 495699784 + ((2 * (HIBYTE(LODWORD(STACK[0x2BC])) ^ 0x4F) + 1828) & 0x76A ^ 0xFEE7DFFF);
  v142 = *&v137[4 * (BYTE1(v141) ^ 0xCA)];
  HIDWORD(v139) = v142 ^ 0x332;
  LODWORD(v139) = v142 ^ 0xF30C5800;
  LODWORD(STACK[0x250]) = v139 >> 11;
  v206 = HIBYTE(v140);
  v207 = (HIBYTE(v140) ^ 0x62) - ((2 * (HIBYTE(v140) ^ 0x62) + 20588324) & 0x118276A);
  v143 = *&v137[4 * (BYTE1(*(v60 - 232)) ^ 0x78)];
  HIDWORD(v139) = v143 ^ 0x332;
  LODWORD(v139) = v143 ^ 0xF30C5800;
  LODWORD(STACK[0x230]) = v139 >> 11;
  v144 = *(v60 - 224);
  LODWORD(v83) = *&v137[4 * (LODWORD(STACK[0x228]) ^ 0x21)];
  HIDWORD(v139) = v83 ^ 0x332;
  LODWORD(v139) = v83 ^ 0xF30C5800;
  LODWORD(STACK[0x228]) = v139 >> 11;
  v205 = v144 ^ v140;
  v145 = *&v137[4 * (((v144 ^ v140 ^ 0xCBE2) >> 8) ^ 0xDC)];
  HIDWORD(v139) = v145 ^ 0x332;
  LODWORD(v139) = v145 ^ 0xF30C5800;
  LODWORD(v67) = (v139 >> 11) ^ (-34187265 * *&v135[4 * (((v144 ^ v140) >> 16) ^ 0x41)] - 1549226314);
  LODWORD(STACK[0x218]) = v67 + 1756869251 + (~(2 * v67) | 0x2E909AF9);
  LODWORD(STACK[0x2A8]) = -34187265 * *&v135[4 * (BYTE2(*(v60 - 208)) ^ 0x5A)] - 1549226314;
  LODWORD(STACK[0x2B4]) = (HIBYTE(v141) ^ 0xC1) - ((2 * (HIBYTE(v141) ^ 0xC1) + 1828) & 0x76A) + 477341511;
  v146 = *&v137[4 * (HIBYTE(v213) ^ 0xAF)];
  HIDWORD(v139) = v146 ^ 0x332;
  LODWORD(v139) = v146 ^ 0xF30C5800;
  LODWORD(STACK[0x210]) = v139 >> 11;
  LODWORD(STACK[0x22C]) = *&v136[4 * (v206 ^ 0x52)];
  *(v60 - 248) = *&v134[4 * (*(v60 - 208) ^ 0xFB)];
  LODWORD(STACK[0x2B8]) = *&v134[4 * (LODWORD(STACK[0x2B8]) ^ 0xF1)];
  *(v60 - 252) = v207 + 495699783;
  LODWORD(STACK[0x208]) = *&v134[4 * (LODWORD(STACK[0x2BC]) ^ 0x38)];
  LODWORD(STACK[0x2AC]) = *&v134[4 * (LODWORD(STACK[0x2AC]) ^ 0x70)];
  LODWORD(STACK[0x2BC]) = *&v134[4 * (LODWORD(STACK[0x238]) ^ 0x79)];
  LODWORD(STACK[0x238]) = *&v134[4 * (LODWORD(STACK[0x220]) ^ 5)];
  LODWORD(STACK[0x220]) = *&v134[4 * (v205 ^ 0x91)];
  LODWORD(STACK[0x2A4]) = *&v134[4 * (LODWORD(STACK[0x2A4]) ^ 0xF4)];
  LODWORD(STACK[0x294]) = *&v134[4 * (LODWORD(STACK[0x294]) ^ 0x61)];
  LODWORD(STACK[0x200]) = *&v134[4 * (LODWORD(STACK[0x200]) ^ 0xB)];
  LODWORD(STACK[0x298]) = *&v134[4 * (LODWORD(STACK[0x298]) ^ 0x6C)];
  LODWORD(STACK[0x29C]) = *&v134[4 * ((v63 ^ v212) ^ 0x9E)];
  LODWORD(STACK[0x20C]) = *&v134[4 * (LODWORD(STACK[0x20C]) ^ 0x96)];
  LODWORD(STACK[0x2A0]) = *&v134[4 * (v213 ^ 0xB)];
  LODWORD(STACK[0x2B0]) = *&v134[4 * (LODWORD(STACK[0x244]) ^ 0x36)];
  LODWORD(STACK[0x244]) = *&v134[4 * (v210 ^ 0x56)];
  LODWORD(STACK[0x248]) = *&v134[4 * (LODWORD(STACK[0x248]) ^ 0x58)];
  *(v60 - 256) = v209 + 1756869251;
  v147 = *(v60 - 200);
  v148 = *(&off_1002DD400 + v147 - 2261) - 18937411;
  v149 = *(&off_1002DD400 + (v147 ^ 0x975)) - 201001123;
  v150 = STACK[0x270];
  v151 = *(&off_1002DD400 + (v147 ^ 0xBC5)) - 1022821683;
  v152 = *(&off_1002DD400 + (v147 ^ 0x8BE)) - 561339446;
  v153 = STACK[0x270] - 0x455BF20E484582CELL;
  LODWORD(v71) = v149[*(STACK[0x270] - 0x455BF20E484582BFLL) ^ 0x10] ^ 0xFA;
  v154 = ((v148[*(STACK[0x270] - 0x455BF20E484582C1) ^ 0xC8] ^ 0xC2) << 16) | ((v151[*(STACK[0x270] - 0x455BF20E484582C0) ^ 0xAELL] ^ 0xDE) << 8) | ((v152[*(STACK[0x270] - 0x455BF20E484582C2) ^ 0xC0] ^ 6) << 24) | v71;
  LODWORD(v136) = v154 - 2 * (v154 & 0x384995C3 ^ v71 & 2);
  v155 = v149[*(STACK[0x270] - 0x455BF20E484582C7) ^ 0xBLL] ^ 1;
  LODWORD(v83) = ((v152[*(STACK[0x270] - 0x455BF20E484582CALL) ^ 0x65] ^ 0x1E) << 24) | ((v148[*(STACK[0x270] - 0x455BF20E484582C9) ^ 0x14] ^ 0x53) << 16) | ((v151[*(STACK[0x270] - 0x455BF20E484582C8) ^ 0x2FLL] ^ 0xA5) << 8) | v155;
  *(v60 - 236) = v83 + 693081811 + ~(2 * (v83 & 0x294F96D3 ^ v155 & 1));
  v156 = __ROR8__(v153 & 0xFFFFFFFFFFFFFFF8, 8) + 0x7695A575CC8A36DALL;
  v157 = __ROR8__(v156 ^ 0xD716ECD53D61FD7, 8) + (v156 ^ 0xB9DC45633787A904);
  *(&v158 + 1) = v156 ^ 0x19DC45633787A904;
  *&v158 = v156 ^ 0xBFFFFFFFFFFFFFFFLL;
  v159 = v157 ^ (v158 >> 61);
  v160 = (v159 ^ 0x5EEE4453CA35DABALL) + __ROR8__(v157 ^ 0x5EEE4453CA35DABALL, 8);
  *(&v158 + 1) = v159 ^ 0x1EEE4453CA35DABALL;
  *&v158 = v159 ^ 0x4000000000000000;
  v161 = (v158 >> 61) ^ v160;
  v162 = (v161 ^ 0x96518B1852248A0DLL) + __ROR8__(v160 ^ 0x96518B1852248A0DLL, 8);
  *(&v158 + 1) = v161 ^ 0x16518B1852248A0DLL;
  *&v158 = v161 ^ 0x8000000000000000;
  v163 = v162 ^ (v158 >> 61);
  *(&v158 + 1) = v162 ^ 2;
  *&v158 = v162 ^ 0xC73EF603490C4400;
  v164 = v158 >> 8;
  *(&v158 + 1) = v163 ^ 0x73EF603490C4402;
  *&v158 = v163 ^ 0xC000000000000000;
  v165 = v164 + (v163 ^ 0xC73EF603490C4402);
  v166 = v165 ^ (v158 >> 61);
  *(&v158 + 1) = v166 ^ 0xC4318A842864C03;
  *&v158 = v166;
  v167 = __ROR8__(v165 ^ 0xC4318A842864C03, 8) + (v166 ^ 0xC4318A842864C03);
  v168 = (v158 >> 61) ^ v167;
  *(&v158 + 1) = v168 ^ 0x3600812E0A35073;
  *&v158 = v168 ^ 0x4000000000000000;
  v169 = (__ROR8__(v167 ^ 0x43600812E0A35073, 8) + (v168 ^ 0x43600812E0A35073)) ^ 0xB581C077348D623CLL;
  v170 = (v169 ^ (v158 >> 61)) + __ROR8__(v169, 8);
  v171 = __ROR8__((v150 - 0x455BF20E484582C6) & 0xFFFFFFFFFFFFFFF8, 8) + 0x7695A575CC8A36DALL;
  v172 = __ROR8__(v171 ^ 0xD716ECD53D61FD7, 8) + (v171 ^ 0xB9DC45633787A904);
  *(&v158 + 1) = v171 ^ 0x19DC45633787A904;
  *&v158 = v171 ^ 0xBFFFFFFFFFFFFFFFLL;
  v173 = v172 ^ (v158 >> 61);
  *(&v158 + 1) = v172 ^ 0xBA;
  *&v158 = v172 ^ 0x5EEE4453CA35DA00;
  v174 = (v173 ^ 0x5EEE4453CA35DABALL) + (v158 >> 8);
  *(&v158 + 1) = v173 ^ 0x1EEE4453CA35DABALL;
  *&v158 = v173 ^ 0x4000000000000000;
  v175 = v174 ^ (v158 >> 61);
  v176 = __ROR8__(v174 ^ 0x96518B1852248A0DLL, 8) + (v175 ^ 0x96518B1852248A0DLL);
  *(&v158 + 1) = v175 ^ 0x16518B1852248A0DLL;
  *&v158 = v175 ^ 0x8000000000000000;
  v177 = v176 ^ (v158 >> 61);
  v178 = (v177 ^ 0xC73EF603490C4402) + ((v176 << 56) ^ 0x200000000000000) + ((v176 >> 8) ^ 0xC73EF603490C44);
  *(&v158 + 1) = v177 ^ 0x73EF603490C4402;
  *&v158 = v177 ^ 0xC000000000000000;
  v179 = v178 ^ (v158 >> 61);
  v180 = (v179 ^ 0xC4318A842864C03) + ((v178 ^ 0xC4318A842864C03) >> 8) + ((v178 ^ 0xC4318A842864C03) << 56);
  *(&v158 + 1) = v179 ^ 0xC4318A842864C03;
  *&v158 = v179;
  v181 = v180 ^ (v158 >> 61);
  v182 = (v181 ^ 0x43600812E0A35073) + __ROR8__(v180 ^ 0x43600812E0A35073, 8);
  *(&v158 + 1) = v181 ^ 0x3600812E0A35073;
  *&v158 = v181 ^ 0x4000000000000000;
  v183 = v182 ^ 0x9B5D991B3AA85693 ^ ((v158 >> 61) - ((2 * (v158 >> 61)) & 0x5DB8B2D81C4A695ELL) + 0x2EDC596C0E2534AFLL);
  *(&v158 + 1) = v182 ^ 0x3C;
  *&v158 = v182 ^ 0xB581C077348D6200;
  LOBYTE(v81) = 8 * (v153 & 7);
  v184 = (v170 ^ 0xF03E4241B0D5EBFELL) >> v81;
  v185 = (v183 + (v158 >> 8)) ^ 0xF03E4241B0D5EBFELL;
  LOBYTE(v153) = v81 ^ 0x3A;
  v186 = v185 >> v81;
  v187 = v184 + (v185 << (v81 ^ 0x3Au) << 6) - 2 * ((v184 + (v185 << (v81 ^ 0x3Au) << 6)) & 0x34142AA39AFE6BAFLL ^ v184 & 0xC) + 0x34142AA39AFE6BA3;
  v188 = (__ROR8__(v150 - 0x455BF20E484582BELL, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x7695A575CC8A36DALL;
  v189 = __ROR8__(v188 ^ 0xD716ECD53D61FD7, 8) + (v188 ^ 0xB9DC45633787A904);
  *(&v158 + 1) = v188 ^ 0x19DC45633787A904;
  *&v158 = v188 ^ 0xBFFFFFFFFFFFFFFFLL;
  v190 = v189 ^ (v158 >> 61);
  v191 = __ROR8__(v189 ^ 0x5EEE4453CA35DABALL, 8) + (v190 ^ 0x5EEE4453CA35DABALL);
  *(&v158 + 1) = v190 ^ 0x1EEE4453CA35DABALL;
  *&v158 = v190 ^ 0x4000000000000000;
  v192 = (v158 >> 61) ^ v191;
  v193 = (v192 ^ 0x96518B1852248A0DLL) + __ROR8__(v191 ^ 0x96518B1852248A0DLL, 8);
  *(&v158 + 1) = v192 ^ 0x16518B1852248A0DLL;
  *&v158 = v192 ^ 0x8000000000000000;
  v194 = v193 ^ (v158 >> 61);
  v195 = __ROR8__(v193 ^ 0xC73EF603490C4402, 8) + (v194 ^ 0xC73EF603490C4402);
  *(&v158 + 1) = v194 ^ 0x73EF603490C4402;
  *&v158 = v194 ^ 0xC000000000000000;
  v196 = v195 ^ (v158 >> 61);
  v197 = __ROR8__(v195 ^ 0xC4318A842864C03, 8) + (v196 ^ 0xC4318A842864C03);
  *(&v158 + 1) = v196 ^ 0xC4318A842864C03;
  *&v158 = v196;
  v198 = (v158 >> 61) ^ v197;
  v199 = (v198 ^ 0x43600812E0A35073) + __ROR8__(v197 ^ 0x43600812E0A35073, 8);
  *(&v158 + 1) = v198 ^ 0x3600812E0A35073;
  *&v158 = v198 ^ 0x4000000000000000;
  v200 = v186 + (((__ROR8__(v199 ^ 0xB581C077348D623CLL, 8) + (v199 ^ (v158 >> 61) ^ 0x181C077348D623CLL)) ^ 0x3E4241B0D5EBFELL) << v153 << 6);
  v201 = v200 - 2 * (v200 & 0x682E683210D7AA9BLL ^ v186 & 8) + 0x682E683210D7AA93;
  v202 = ((v152[BYTE4(v187) ^ 1] ^ 0x1E) << 24) | ((v151[BYTE6(v187) ^ 0xF5] ^ 0xAB) << 8) | ((v148[BYTE5(v187) ^ 0xF1] ^ 0x52) << 16) | v149[HIBYTE(v187) ^ 0x9C] ^ 0xE4u;
  LODWORD(v186) = ((v152[v186 ^ 0xE9] ^ 0xFFFFFFFB) << 24) | ((v148[BYTE1(v201) ^ 0xEALL] ^ 0xC7) << 16) | ((v151[BYTE2(v201) ^ 0x7DLL] ^ 0xC1) << 8);
  LODWORD(v187) = v149[BYTE3(v201) ^ 0x6CLL] ^ 0xD7;
  *(v60 - 208) = v148;
  v203 = v186 | v187;
  LODWORD(v186) = v148[BYTE5(v201) ^ 0x60] ^ 0x6B;
  *(v60 - 232) = v152;
  *(v60 - 224) = v151;
  LODWORD(v186) = ((v152[BYTE4(v201) ^ 0x8CLL] ^ 0xB1) << 24) | (v186 << 16) | ((v151[BYTE6(v201) ^ 0x7ELL] ^ 0xB8) << 8);
  *(v60 - 216) = v149;
  return (*(a57 + 8 * *(v60 - 200)))(4114211392, v186 | v149[HIBYTE(v201) ^ 0x95] ^ 0x74, v203, v202, (v136 - 1203137087));
}

uint64_t sub_10000432C(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, uint64_t a34, int a35, int a36, int a37, int a38, unsigned int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x2A4]) = a1;
  LODWORD(STACK[0x2A8]) = a4;
  LODWORD(STACK[0x2AC]) = a3;
  LODWORD(STACK[0x2B0]) = v85;
  LODWORD(STACK[0x2B4]) = v90;
  LODWORD(STACK[0x2B8]) = v88;
  LODWORD(STACK[0x2BC]) = v89;
  *(v91 - 256) = v84;
  *(v91 - 252) = v87;
  v92 = (*(v91 - 180) - 974) | 0x109;
  v93 = v86 ^ 0xC9FEA026;
  *(v91 - 248) = v93;
  v94 = (v86 ^ 0xDFE5E7FDA72455F8) + 0x201A180291250A22 + ((v93 << (v92 ^ 0x3Cu)) & 0xDDB5EBBCLL);
  *(v91 - 200) = v94;
  v95 = a34 + v94;
  v96 = ((v95 - 0x674130EBE8C2F41FLL) >> 8) + 0x7695A575CC8A36DALL + ((v95 - 0x674130EBE8C2F41FLL) >> 3 << 59);
  v97 = 8 * ((v95 - 31) & 7);
  *(&v98 + 1) = v96 ^ 0x19DC45633787A904;
  *&v98 = v96 ^ 0xBFFFFFFFFFFFFFFFLL;
  v99 = __ROR8__(v96 ^ 0xD716ECD53D61FD7, 8) + (v96 ^ 0xB9DC45633787A904);
  v100 = v99 ^ (v98 >> 61);
  *(&v98 + 1) = v99 ^ 0xBA;
  *&v98 = v99 ^ a76;
  v101 = v98 >> 8;
  *(&v98 + 1) = v100 ^ 0x1EEE4453CA35DABALL;
  *&v98 = v100 ^ 0x4000000000000000;
  v102 = v101 + (v100 ^ 0x5EEE4453CA35DABALL);
  v103 = v102 ^ (v98 >> 61);
  v104 = (v103 ^ 0x96518B1852248A0DLL) + __ROR8__(v102 ^ 0x96518B1852248A0DLL, 8);
  *(&v98 + 1) = v103 ^ 0x16518B1852248A0DLL;
  *&v98 = v103 ^ 0x8000000000000000;
  v105 = (v98 >> 61) ^ v104;
  v106 = (v105 ^ 0xC73EF603490C4402) + __ROR8__(v104 ^ 0xC73EF603490C4402, 8);
  *(&v98 + 1) = v105 ^ 0x73EF603490C4402;
  *&v98 = v105 ^ 0xC000000000000000;
  v107 = v106 ^ (v98 >> 61);
  *(&v98 + 1) = v106 ^ 3;
  *&v98 = v106 ^ 0xC4318A842864C00;
  v108 = v98 >> 8;
  *(&v98 + 1) = v107 ^ 0xC4318A842864C03;
  *&v98 = v107;
  v109 = v108 + (v107 ^ 0xC4318A842864C03);
  v110 = (v98 >> 61) ^ v109;
  v111 = v110 ^ 0x43600812E0A35073;
  v112 = (__ROR8__(v95 - 0x674130EBE8C2F417, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x7695A575CC8A36DALL;
  *(&v98 + 1) = v110 ^ 0x3600812E0A35073;
  *&v98 = v110 ^ 0x4000000000000000;
  v113 = v98 >> 61;
  v114 = __ROR8__(v112 ^ 0xD716ECD53D61FD7, 8) + (v112 ^ 0xB9DC45633787A904);
  *(&v98 + 1) = v112 ^ 0x19DC45633787A904;
  *&v98 = v112 ^ 0xBFFFFFFFFFFFFFFFLL;
  v115 = v111 + __ROR8__(v109 ^ 0x43600812E0A35073, 8);
  v116 = v114 ^ (v98 >> 61);
  v117 = (v116 ^ 0x5EEE4453CA35DABALL) + ((v114 ^ 0x5EEE4453CA35DABALL) >> 8) + ((v114 ^ 0x5EEE4453CA35DABALL) << 56);
  *(&v98 + 1) = v116 ^ 0x1EEE4453CA35DABALL;
  *&v98 = v116 ^ 0x4000000000000000;
  v118 = v117 ^ (v98 >> 61);
  v119 = (v118 ^ 0x96518B1852248A0DLL) + __ROR8__(v117 ^ 0x96518B1852248A0DLL, 8);
  *(&v98 + 1) = v118 ^ 0x16518B1852248A0DLL;
  *&v98 = v118 ^ 0x8000000000000000;
  v120 = v119 ^ (v98 >> 61);
  v121 = (v119 >> 8) ^ 0xC73EF603490C44;
  *(&v98 + 1) = v115 ^ 0x3C;
  *&v98 = v115 ^ a75;
  v122 = v98 >> 8;
  v123 = ((v119 << 56) ^ 0x200000000000000) + (v120 ^ 0xC73EF603490C4402);
  *(&v98 + 1) = v120 ^ 0x73EF603490C4402;
  *&v98 = v120 ^ 0xC000000000000000;
  v124 = v98 >> 61;
  v125 = v123 + v121;
  *(&v98 + 1) = v125 ^ 3;
  *&v98 = v125 ^ 0xC4318A842864C00;
  v126 = v125 ^ v124;
  v127 = (v126 ^ 0xC4318A842864C03) + (v98 >> 8);
  *(&v98 + 1) = v126 ^ 0xC4318A842864C03;
  *&v98 = v126;
  v128 = v115 ^ 0x4653DFA78CA52455 ^ (v113 - ((2 * v113) & 0xE7A43FA170508CD2) - 0xC2DE02F47D7B997);
  v129 = v127 ^ (v98 >> 61);
  v130 = (v129 ^ 0x43600812E0A35073) + __ROR8__(v127 ^ 0x43600812E0A35073, 8);
  *(&v98 + 1) = v129 ^ 0x3600812E0A35073;
  *&v98 = v129 ^ 0x4000000000000000;
  v131 = v130 ^ 0x33879F05BA8156B6 ^ ((v98 >> 61) - ((2 * (v98 >> 61)) & 0xC0CBEE51C186914) - 0x79F9A08D71F3CB76);
  v132 = ((v128 + v122) ^ 0xF03E4241B0D5EBFELL) >> v97;
  *(&v98 + 1) = v130 ^ 0x3C;
  *&v98 = v130 ^ a75;
  LOBYTE(v130) = v97 ^ 0x3C;
  v133 = (__ROR8__(v95 - 0x674130EBE8C2F40FLL, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x7695A575CC8A36DALL;
  v134 = (v133 ^ 0xB9DC45633787A904) + ((v133 ^ 0xD716ECD53D61FD7) >> 8);
  v135 = (v131 + (v98 >> 8)) ^ 0xF03E4241B0D5EBFELL;
  v136 = v134 + ((v133 ^ 0xD716ECD53D61FD7) << 56);
  *(&v98 + 1) = v133 ^ 0x19DC45633787A904;
  *&v98 = v133 ^ 0xBFFFFFFFFFFFFFFFLL;
  v137 = v98 >> 61;
  v138 = v135 << (v97 ^ 0x3Cu);
  *(&v98 + 1) = v134 ^ 0xBA;
  *&v98 = v136 ^ a76;
  v139 = v98 >> 8;
  v140 = v136 ^ v137;
  v141 = v135 >> v97;
  v142 = v140 ^ 0x5EEE4453CA35DABALL;
  *(&v98 + 1) = v140 ^ 0x1EEE4453CA35DABALL;
  *&v98 = v140 ^ 0x4000000000000000;
  v143 = v132 - 0x3A221ED17971C2B8 - ((2 * v132) & 0x8BBBC25D0D1C7A90);
  v144 = (v98 >> 61) ^ ((v140 ^ 0x5EEE4453CA35DABALL) + v139);
  *(&v98 + 1) = v144 ^ 0x16518B1852248A0DLL;
  *&v98 = v144 ^ 0x8000000000000000;
  v145 = __ROR8__((v142 + v139) ^ 0x96518B1852248A0DLL, 8) + (v144 ^ 0x96518B1852248A0DLL);
  v146 = v145 ^ 0xC73EF603490C4402;
  v147 = v145 ^ (v98 >> 61);
  *(&v98 + 1) = v147 ^ 0x73EF603490C4402;
  *&v98 = v147 ^ 0xC000000000000000;
  v148 = (v147 ^ 0xC73EF603490C4402) + __ROR8__(v146, 8);
  v149 = (v98 >> 61) ^ v148;
  v150 = v141 - 0x5EB193CF27989AE4 - ((2 * v141) & 0x429CD861B0CECA38);
  v151 = __ROR8__(v148 ^ 0xC4318A842864C03, 8) + (v149 ^ 0xC4318A842864C03);
  *(&v98 + 1) = v149 ^ 0xC4318A842864C03;
  *&v98 = v149;
  v152 = v151 ^ (v98 >> 61);
  *(&v98 + 1) = v151 ^ 0x73;
  *&v98 = v151 ^ 0x43600812E0A35000;
  v153 = (v152 ^ 0x43600812E0A35073) + (v98 >> 8);
  *(&v98 + 1) = v152 ^ 0x3600812E0A35073;
  *&v98 = v152 ^ 0x4000000000000000;
  v154 = (((v153 ^ (v98 >> 61) ^ 0x581C077348D623CLL) + __ROR8__(v153 ^ 0xB581C077348D623CLL, 8)) ^ 0x3E4241B0D5EBFELL) << v130;
  v155 = (v143 ^ 0xC5DDE12E868E3D48) + 16 * v138 + 0x545AC4A188B81F53 - 2 * (((v143 ^ 0xC5DDE12E868E3D48) + 16 * v138) & 0x545AC4A188B81F77 ^ v143 & 0x24);
  v156 = (v150 ^ 0xA14E6C30D867651CLL) + 16 * v154 - 2 * (((v150 ^ 0xA14E6C30D867651CLL) + 16 * v154) & 0x2F27E5CE0F75562DLL ^ (v150 ^ 0xA14E6C30D867651CLL) & 0xC);
  LODWORD(v154) = ((v143 ^ 0x868E3D48) + 16 * v138 - 2001199277 - 2 * (((v143 ^ 0x868E3D48) + 16 * v138) & 0x88B81F77 ^ v143 & 0x24)) >> 24;
  STACK[0x288] = v143;
  v157 = *(v91 - 232);
  LODWORD(v143) = (*(v157 + (v143 ^ 0xDFLL)) ^ 0xB8) << 24;
  STACK[0x280] = BYTE1(v155);
  v158 = (HIBYTE(v155) & 0x5F ^ 0xF4) & (HIBYTE(v155) | 0x5F);
  STACK[0x200] = v158;
  LODWORD(v152) = *(*(v91 - 208) + (BYTE1(v155) ^ 0xB8));
  v159 = *(v91 - 208);
  STACK[0x278] = BYTE2(v155);
  v160 = *(v91 - 224);
  LODWORD(v125) = *(v160 + (BYTE2(v155) ^ 0xC2)) ^ 0x1D;
  STACK[0x270] = v154;
  LODWORD(v143) = v143 | ((v152 ^ 0xF9) << 16);
  v161 = *(v91 - 216);
  LODWORD(v152) = *(v161 + (v154 ^ 0x19)) ^ 0xAD;
  LODWORD(v154) = v143 | (v125 << 8) | v152;
  STACK[0x260] = BYTE4(v155);
  LODWORD(v143) = *(v157 + (BYTE4(v155) ^ 0x66)) ^ 0x35;
  STACK[0x258] = BYTE5(v155);
  LODWORD(v125) = *(v159 + (BYTE5(v155) ^ 0xFBLL)) ^ 0x16;
  STACK[0x250] = BYTE6(v155);
  LODWORD(v143) = (v143 << 24) | (v125 << 16) | ((*(v160 + (BYTE6(v155) ^ 0xA4)) ^ 0x2C) << 8);
  STACK[0x248] = v150;
  v162 = v157;
  v163 = v156 - 0x50D81A31F08AA9DFLL;
  LODWORD(v150) = *(v157 + (v150 ^ 0x57)) ^ 0x24;
  v164 = ((v156 + 22049) >> 8);
  STACK[0x238] = v164;
  LODWORD(v164) = *(v159 + (v164 ^ 0x6E));
  STACK[0x230] = BYTE2(v163);
  LODWORD(v155) = *(v160 + (BYTE2(v163) ^ 0x2CLL));
  STACK[0x220] = BYTE4(v163);
  LODWORD(v125) = *(v157 + (BYTE4(v163) ^ 0x55));
  LODWORD(v164) = (v150 << 24) | ((v164 ^ 0x30) << 16) | ((v155 ^ 0xA7) << 8);
  STACK[0x218] = BYTE5(v163);
  LODWORD(v150) = *(v159 + (BYTE5(v163) ^ 0x5FLL)) ^ 0x92;
  STACK[0x210] = BYTE6(v163);
  LODWORD(v150) = ((v125 ^ 0x39) << 24) | (v150 << 16) | ((*(v160 + (BYTE6(v163) ^ 0xABLL)) ^ 0x31) << 8);
  LODWORD(v157) = v86 & 0xFFFFFFF5 ^ 0xC9FEA02E;
  LODWORD(STACK[0x26C]) = v157;
  LODWORD(v125) = *(v160 + (*(a83 + v157) ^ 0x1ELL));
  LODWORD(v157) = v86 & 0xFFFFFFF7 ^ 0xC9FEA02E;
  LODWORD(STACK[0x29C]) = v157;
  LODWORD(v125) = ((v125 ^ 0x6C) << 8) | ((*(v162 + (*(a83 + v157) ^ 0x3DLL)) ^ 0x18) << 24);
  LODWORD(v138) = v154 - 1323914843 - 2 * (v154 & 0x3116A9A7 ^ v152 & 2);
  LODWORD(v157) = v86 & 0xFFFFFFF4 ^ 0xC9FEA02F;
  LODWORD(STACK[0x298]) = v157;
  LODWORD(v152) = *(v161 + (*(a83 + v157) ^ 0x51)) ^ 0xD2 | v125;
  LODWORD(v125) = *(v161 + (v158 ^ 0xB7)) ^ 0x94;
  LODWORD(v157) = v86 & 0xFFFFFFF3 ^ 0xC9FEA02E;
  LODWORD(STACK[0x2A0]) = v157;
  LODWORD(v155) = v86 & 0xFFFFFFF1 ^ 0xC9FEA02E;
  LODWORD(STACK[0x294]) = v155;
  LODWORD(v158) = (v143 | v125) - 86549245 - 2 * ((v143 | v125) & 0x7AD75D0B ^ v125 & 8);
  LODWORD(v143) = ((*(v162 + (*(a83 + v157) ^ 0xA0)) ^ 0x74) << 24) | ((*(v160 + (*(a83 + v155) ^ 0xF0)) ^ 0xBB) << 8);
  LODWORD(v157) = v86 & 0xFFFFFFF6 ^ 0xC9FEA02F;
  LODWORD(STACK[0x290]) = v157;
  v165 = v152 | ((*(v159 + (*(a83 + v157) ^ 0x99)) ^ 0x59) << 16);
  LODWORD(v152) = (*(v162 + (*(a83 + *(v91 - 200)) ^ 0xE3)) ^ 0x1A) << 24;
  LODWORD(v125) = v86 & 0xFFFFFFF9 ^ 0xC9FEA026;
  LODWORD(STACK[0x22C]) = v125;
  LODWORD(v157) = v86 & 0xFFFFFFFD ^ 0xC9FEA026;
  LODWORD(STACK[0x244]) = v157;
  LODWORD(v152) = v152 | ((*(v160 + (*(a83 + v157) ^ 0x7ALL)) ^ 0xE9) << 8);
  v166 = *(a83 + v125) ^ 0xF6;
  LODWORD(v157) = v86 & 0xFFFFFFFB ^ 0xC9FEA026;
  LODWORD(STACK[0x20C]) = v157;
  LODWORD(v166) = ((*(v160 + v166) ^ 0x66) << 8) | ((*(v162 + (*(a83 + v157) ^ 0x99)) ^ 0x53) << 24);
  v327 = v86 & 0xFFFFFFFA ^ 0xC9FEA027;
  LODWORD(v125) = *(v159 + (*(a83 + v327) ^ 0xDALL));
  LODWORD(v157) = v86 & 0xFFFFFFF8 ^ 0xC9FEA027;
  LODWORD(STACK[0x208]) = v157;
  LODWORD(v149) = *(v161 + (*(a83 + v157) ^ 0x18)) ^ 0x19;
  v320 = (v166 | v149 | ((v125 ^ 1) << 16)) + 693081810 - 2 * ((v166 | v149 | ((v125 ^ 1) << 16)) & 0x294F96F2 ^ v149 & 0x20);
  LODWORD(v162) = v86 & 0xFFFFFFF0 ^ 0xC9FEA02F;
  v326 = v162;
  v328 = v86 & 0xFFFFFFF2 ^ 0xC9FEA02F;
  LODWORD(v154) = v86 & 0xFFFFFFFE ^ 0xC9FEA027;
  LODWORD(STACK[0x228]) = v154;
  v167 = v152 | ((*(v159 + (*(a83 + v154) ^ 0x48)) ^ 0xBD) << 16);
  v318 = v86 & 0xFFFFFFFC ^ 0xC9FEA027;
  v325 = BYTE3(v163);
  LODWORD(v143) = v143 | ((*(v159 + (*(a83 + v328) ^ 0xC3)) ^ 0x36) << 16);
  LODWORD(v154) = *(v161 + (BYTE3(v163) ^ 0xADLL)) ^ 0xFD;
  v168 = v164 | v154;
  LODWORD(v154) = (v164 | v154) & 0x7BCD882B ^ v154 & 8;
  LODWORD(v164) = *(v161 + (*(a83 + v162) ^ 0x89)) ^ 0xFF;
  v317 = v168 - 70416349 - 2 * v154;
  v314 = a2 ^ a5;
  v316 = HIBYTE(v163);
  LODWORD(v154) = *(v161 + (HIBYTE(v163) ^ 0xCF));
  v324 = (v143 | v164) - 1203137087 - 2 * ((v143 | v164) & a30 ^ v164 & 0x20);
  LODWORD(v150) = v150 | v154 ^ 0xFA;
  LODWORD(v143) = v150 & 0x7539E24D ^ (v154 ^ 0xFA) & 0xD;
  LODWORD(v154) = *(v161 + (*(a83 + v318) ^ 0x93)) ^ 0xA3;
  v319 = v150 - 180755904 - 2 * v143;
  v322 = (v154 | v167) - 1115087524 - 2 * ((v154 | v167) & a29 ^ v154 & 2);
  LODWORD(v150) = ((v324 ^ a33 ^ 0xC1CA4024) - 180755904 - 2 * ((v324 ^ a33 ^ 0xC1CA4024) & 0x7539E258 ^ (v324 ^ a33) & 0x18)) ^ v319;
  LODWORD(v150) = a37 ^ (v150 - ((2 * v150) & 0x735649E2) - 1179966223);
  LODWORD(v150) = (v150 - 963081345 - ((2 * v150) & 0x8D3116FE)) ^ a74;
  LODWORD(v157) = v150 + 1898391092 - ((2 * v150) & 0xE24E4C68);
  LODWORD(v143) = ((v158 ^ v320 ^ 0xD398CBD1) - 963081345 - ((2 * (v158 ^ v320 ^ 0xD398CBD1)) & 0x8D3116FE)) ^ a74;
  LODWORD(v154) = a38 ^ ((v138 ^ v322 ^ 0xC9FB4F9) - ((2 * (v138 ^ v322 ^ 0xC9FB4F9)) & 0x43CF76EC) - 1578648714);
  v169 = *(&off_1002DD400 + a28) - 92267330;
  LODWORD(v152) = ((BYTE1(v154) ^ 0x4E) - 104379135 - ((2 * (BYTE1(v154) ^ 0x4E) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v154) ^ 0x9F)];
  LODWORD(v142) = *(v91 - 180);
  v170 = *(&off_1002DD400 + v142 - 3491) - 721278658;
  LODWORD(v166) = ((BYTE3(v154) ^ 0xD1) + 1010047341 + ((2 * (((BYTE3(v154) ^ 0xD1) + 132) & 0xE9 ^ (BYTE3(v154) ^ 0xD1 | 0x7FFFFFFE))) ^ 0x709403)) ^ *&v170[4 * (BYTE3(v154) ^ 0xD0)];
  LODWORD(v157) = v157 ^ a32;
  v171 = *(&off_1002DD400 + v142 - 2937) - 137783258;
  LODWORD(v166) = (v166 + 647724883 - ((2 * v166) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v157) ^ 0x2B)];
  v172 = a73 ^ v165 ^ v317;
  LODWORD(v164) = BYTE3(v157);
  LODWORD(v163) = (BYTE3(v157) ^ 0xC7) + 1002669420 - ((2 * (BYTE3(v157) ^ 0xC7) + 264) & 0x1D0);
  LODWORD(v142) = *&v169[4 * (BYTE1(v157) ^ 0x40)] ^ *&v170[4 * (BYTE3(v143) ^ 0xCA)] ^ ((BYTE3(v143) ^ 0xCB) + 1010047341 + ((2 * (((BYTE3(v143) ^ 0xCB) + 132) & 0xE9 ^ (BYTE3(v143) ^ 0xCB | 0x7FFFFFFE))) ^ 0x709403)) ^ ((BYTE1(v157) ^ 0x91) - 104379135 - ((2 * (BYTE1(v157) ^ 0x91) + 7788) & 0x3B96));
  LODWORD(v160) = *&v169[4 * (BYTE1(v143) ^ 0x15)];
  DWORD1(v98) = v160 ^ 0x66DE7DCB;
  LODWORD(v98) = ~v160;
  LODWORD(v149) = (2 * (BYTE1(v143) ^ 0xC4) + 1043504748) ^ 0x62CA580F ^ (v98 >> 31);
  v173 = (((v172 ^ 0xFEC0AF91) >> 24) + 1002669420 - ((2 * ((v172 ^ 0xFEC0AF91) >> 24) + 264) & 0x1D0)) ^ *&v171[4 * (BYTE2(v143) ^ 0x21)] ^ *&v170[4 * (((v172 ^ 0xFEC0AF91) >> 24) ^ 1)] ^ 0xF53AE10 ^ (v152 + 647724883 - ((2 * v152) & 0x4D36FEA6));
  v174 = *(&off_1002DD400 + *(v91 - 180) - 2940) - 1788380795;
  LODWORD(v142) = (v142 - 1883003910 - ((2 * v142) & 0x1F8747F4)) ^ *&v174[4 * ((a73 ^ v165 ^ v317) ^ 0xC7)];
  LODWORD(v143) = a71 ^ (((v172 ^ 0xAF91) >> 8) - 104379135 - ((2 * ((v172 ^ 0xAF91) >> 8) + 7788) & 0x3B96)) ^ *&v174[4 * ((((v158 ^ v320 ^ 0xD1) + 127 - 2 * (v158 ^ v320 ^ 0xD1)) ^ a74) ^ 0xD4)] ^ *&v169[4 * (((v172 ^ 0xAF91) >> 8) ^ 0xD1)] ^ (v166 - 1883003910 - ((2 * v166) & 0x1F8747F4));
  LODWORD(v157) = a70 ^ *&v174[4 * (v157 ^ 0xFD)] ^ (v173 + a31 - 2 * (v173 & a31) - 1883003910 - ((2 * (v173 + a31 - 2 * (v173 & a31))) & 0x1F8747F4));
  v175 = v157 + 1898391092 - ((2 * v157) & 0xE24E4C68);
  LODWORD(v157) = a69 ^ *&v171[4 * (BYTE2(v172) ^ 0x16)] ^ *&v174[4 * ((a38 ^ ((v138 ^ v322 ^ 0xF9) - ((2 * (v138 ^ v322 ^ 0xF9)) & 0xEC) + 118)) ^ 0x96)] ^ *&v170[4 * (v164 ^ 0xC6)] ^ __ROR4__(v149, 1) ^ v163;
  LODWORD(v164) = a72 ^ *&v171[4 * (BYTE2(v154) ^ 0xDF)] ^ (v142 + 647724883 - ((2 * v142) & 0x4D36FEA6));
  LODWORD(v154) = v175 ^ a32;
  v176 = ((((v175 ^ a32) >> 8) ^ 0x14) - 104379135 - ((2 * (((v175 ^ a32) >> 8) ^ 0x14) + 7788) & 0x3B96)) ^ *&v169[4 * (((v175 ^ a32) >> 8) ^ 0xC5)];
  LODWORD(v152) = ((BYTE1(v164) ^ 0x58) - 104379135 - ((2 * (BYTE1(v164) ^ 0x58) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v164) ^ 0x89)];
  LODWORD(v166) = ((BYTE1(v157) ^ 0xA2) - 104379135 - ((2 * (BYTE1(v157) ^ 0xA2) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v157) ^ 0x73)];
  LODWORD(v152) = *&v170[4 * (BYTE3(v157) ^ 0xC)] ^ ((BYTE3(v157) ^ 0xD) + 1010047340 - ((2 * (BYTE3(v157) ^ 0xD) + 7574792) & 0x7095D0)) ^ *&v174[4 * (v143 ^ 0xB5)] ^ (v152 - 1883003910 - ((2 * v152) & 0x1F8747F4));
  v177 = *&v170[4 * (BYTE3(v143) ^ 0x87)] ^ ((BYTE3(v143) ^ 0x86) + 1002669420 - ((2 * (BYTE3(v143) ^ 0x86) + 264) & 0x1D0)) ^ *&v174[4 * (v164 ^ 0xCF)] ^ (v176 - 1883003910 - ((2 * v176) & 0x1F8747F4));
  LODWORD(v160) = BYTE3(v154) ^ 0x11;
  LODWORD(v166) = a68 ^ *&v174[4 * (v154 ^ 0x92)] ^ (v166 - 1883003910 - ((2 * v166) & 0x1F8747F4)) ^ *&v170[4 * (BYTE3(v164) ^ 0x70)] ^ ((BYTE3(v164) ^ 0x71) + 1010047341 + ((2 * (((BYTE3(v164) ^ 0x71) + 132) & 0xEA ^ (BYTE3(v164) | 0x7FFFFFFD))) ^ 0x709405));
  LODWORD(v164) = a67 ^ *&v174[4 * (v157 ^ 0x2C)] ^ *&v169[4 * (BYTE1(v143) ^ 0x62)] ^ *&v170[4 * v160 + 8 + 4 * ((v154 >> 23) | 0xFFFFFFFD)] ^ *&v171[4 * (BYTE2(v164) ^ 8)] ^ ((BYTE1(v143) ^ 0xB3) + 100125953 - ((2 * (BYTE1(v143) ^ 0xB3) + 238198380) & 0xC30BB96)) ^ (v160 + 1010047340 - ((2 * v160 + 7574792) & 0x7095D0));
  LODWORD(v143) = (v166 + 647724883 - ((2 * v166) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v143) ^ 0x97)];
  LODWORD(v157) = a65 ^ *&v171[4 * (BYTE2(v157) ^ 0x5C)] ^ (v177 + 647724883 - ((2 * v177) & 0x4D36FEA6));
  LODWORD(v154) = a66 ^ *&v171[4 * (BYTE2(v154) ^ 0xA7)] ^ (v152 + 647724883 - ((2 * v152) & 0x4D36FEA6));
  LODWORD(v152) = ((BYTE3(v143) ^ 0xE1) + 1002669420 - ((2 * (BYTE3(v143) ^ 0xE1) + 264) & 0x1D0)) ^ *&v170[4 * (BYTE3(v143) ^ 0xE0)];
  LODWORD(v152) = *&v169[4 * BYTE1(v154)] ^ *&v174[4 * (v164 ^ 7)] ^ ((BYTE1(v154) ^ 0xD1) - 104379135 - ((2 * (BYTE1(v154) ^ 0xD1) + 7788) & 0x3B96)) ^ (v152 - 1883003910 - ((2 * v152) & 0x1F8747F4));
  LODWORD(v166) = ((BYTE3(v154) ^ 0x4E) + 1002669420 - ((2 * (BYTE3(v154) ^ 0x4E) + 264) & 0x1D0)) ^ *&v170[4 * (BYTE3(v154) ^ 0x4F)];
  v178 = ((BYTE3(v157) ^ 0x19) + 1002669420 - ((2 * (BYTE3(v157) ^ 0x19) + 264) & 0x1D0)) ^ *&v170[4 * (BYTE3(v157) ^ 0x18)];
  v179 = *&v169[4 * (BYTE1(v164) ^ 0x7A)] ^ ((BYTE1(v164) ^ 0xAB) - 104379135 - ((2 * (BYTE1(v164) ^ 0xAB) + 7788) & 0x3B96)) ^ *&v174[4 * (v143 ^ 0xA3)] ^ (v178 - 1883003910 - ((2 * v178) & 0x1F8747F4));
  LODWORD(v166) = *&v169[4 * (BYTE1(v143) ^ 0x52)] ^ *&v171[4 * (BYTE2(v164) ^ 0x9E)] ^ ((BYTE1(v143) ^ 0x83) - 104379135 - ((2 * (BYTE1(v143) ^ 0x83) + 7788) & 0x3B96)) ^ (v166 + 647724883 - ((2 * v166) & 0x4D36FEA6));
  LODWORD(v142) = BYTE3(v164);
  LODWORD(v149) = (BYTE3(v164) ^ 0x39) + 1002669420 - ((2 * (BYTE3(v164) ^ 0x39) + 264) & 0x1D0);
  v180 = a64 ^ *&v171[4 * (BYTE2(v154) ^ 0xF7)] ^ (v179 + 647724883 - ((2 * v179) & 0x4D36FEA6));
  v181 = *&v171[4 * (BYTE2(v143) ^ 0x96)];
  v182 = a63 ^ *&v171[4 * (BYTE2(v157) ^ 0x5A)] ^ (v152 + 647724883 - ((2 * v152) & 0x4D36FEA6));
  LODWORD(v152) = a61 ^ v181 ^ *&v170[4 * (v142 ^ 0x38)] ^ v149 ^ *&v174[4 * (v154 ^ 0x71)];
  v183 = a62 ^ *&v174[4 * (v157 ^ 6)] ^ (v166 - 1883003910 - ((2 * v166) & 0x1F8747F4));
  v184 = v152 ^ *&v169[4 * (BYTE1(v157) ^ 0xA3)] ^ ((BYTE1(v157) ^ 0x72) - 104379135 - ((2 * (BYTE1(v157) ^ 0x72) + 7788) & 0x3B96));
  LODWORD(v152) = *&v170[4 * (HIBYTE(v184) ^ 0x36)] ^ ((HIBYTE(v184) ^ 0x37) + 1010047341 + ((2 * (((HIBYTE(v184) ^ 0x37) + 132) & 0xE9 ^ (HIBYTE(v184) ^ 0x37 | 0x7FFFFFFE))) ^ 0x709403)) ^ ((BYTE1(v180) ^ 0xFB) - 104379135 - ((2 * (BYTE1(v180) ^ 0xFB) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v180) ^ 0x2A)];
  v185 = (v152 - 1883003910 - ((2 * v152) & 0x1F8747F4)) ^ *&v174[4 * (v183 ^ 0x9E)];
  v187 = v180 ^ 0x94;
  v188 = v187 - 239;
  if (v187 >= 0xEF)
  {
    LOBYTE(v187) = (v180 ^ 0x94) + 17;
  }

  else
  {
    v188 = v180 ^ 0x94;
  }

  v189 = v188 + ((v180 ^ 0x94) - v187);
  v190 = ((BYTE1(v183) ^ 0xC3) - 104379135 - ((2 * (BYTE1(v183) ^ 0xC3) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v183) ^ 0x12)];
  v186 = *&v170[4 * (HIBYTE(v183) ^ 0xE0)] ^ *&v169[4 * (BYTE1(v182) ^ 0x27)] ^ ((BYTE1(v182) ^ 0xF6) + 100125953 - ((2 * (BYTE1(v182) ^ 0xF6) + 238198380) & 0xC30BB96)) ^ ((HIBYTE(v183) ^ 0xE1) + 1010047341 + ((2 * (((HIBYTE(v183) ^ 0xE1) + 132) & 0xEA ^ (HIBYTE(v183) | 0x7FFFFFFD))) ^ 0x709405));
  v191 = (v186 - 1883003910 - ((2 * v186) & 0x1F8747F4)) ^ *&v174[4 * (v189 ^ 0x56)];
  v192 = (v190 + 647724883 - ((2 * v190) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v180) ^ 0x1A)];
  v193 = HIBYTE(v180);
  v194 = a60 ^ *&v174[4 * (v182 ^ 0xB4)] ^ *&v170[4 * (v193 ^ 0xC9)] ^ ((BYTE1(v184) ^ 0x74) - 104379135 - ((2 * (BYTE1(v184) ^ 0x74) + 7788) & 0x3B96)) ^ *&v171[4 * (BYTE2(v183) ^ 0x60)] ^ *&v169[4 * (BYTE1(v184) ^ 0xA5)] ^ ((v193 ^ 0xC8) + 1010047341 + ((2 * (((v193 ^ 0xC8) + 132) & 0xE9 ^ (v193 | 0x7FFFFFFE))) ^ 0x709403));
  v195 = *&v171[4 * (BYTE2(v184) ^ 0x4C)];
  v196 = a59 ^ *&v174[4 * (v184 ^ 0x55)] ^ *&v170[4 * (HIBYTE(v182) ^ 0xE9)] ^ ((HIBYTE(v182) ^ 0xE8) + 1010047341 + ((2 * (((HIBYTE(v182) ^ 0xE8) + 132) & 0xE9 ^ (HIBYTE(v182) | 0x7FFFFFFE))) ^ 0x709403)) ^ (v192 - 1883003910 - ((2 * v192) & 0x1F8747F4));
  v197 = a58 ^ *&v171[4 * (BYTE2(v182) ^ 0x6F)] ^ (v185 + 647724883 - ((2 * v185) & 0x4D36FEA6));
  v198 = a57 ^ v195 ^ (v191 + 647724883 - ((2 * v191) & 0x4D36FEA6));
  v199 = ((HIBYTE(v194) ^ 0x9F) + 1002669420 - ((2 * (HIBYTE(v194) ^ 0x9F) + 264) & 0x1D0)) ^ *&v170[4 * (HIBYTE(v194) ^ 0x9E)];
  v200 = *&v169[4 * (BYTE1(v196) ^ 0x80)] ^ ((HIBYTE(v198) ^ 0xF0) + 1002669420 - ((2 * (HIBYTE(v198) ^ 0xF0) + 264) & 0x1D0)) ^ *&v170[4 * (HIBYTE(v198) ^ 0xF1)] ^ ((BYTE1(v196) ^ 0x51) - 104379135 - ((2 * (BYTE1(v196) ^ 0x51) + 7788) & 0x3B96));
  v201 = (v200 + 647724883 - ((2 * v200) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v197) ^ 0x54)];
  v202 = *&v169[4 * (BYTE1(v198) ^ 0x40)] ^ *&v170[4 * (HIBYTE(v196) ^ 0x83)] ^ ((BYTE1(v198) ^ 0x91) - 104379135 - ((2 * (BYTE1(v198) ^ 0x91) + 7788) & 0x3B96)) ^ ((HIBYTE(v196) ^ 0x82) + 1010047341 + ((2 * (((HIBYTE(v196) ^ 0x82) + 132) & 0xEA ^ (HIBYTE(v196) ^ 0x82 | 0x7FFFFFFD))) ^ 0x709405));
  v203 = *&v169[4 * (BYTE1(v197) ^ 0x63)] ^ (v199 + 647724883 - ((2 * v199) & 0x4D36FEA6)) ^ ((BYTE1(v197) ^ 0xB2) - 104379135 - ((2 * (BYTE1(v197) ^ 0xB2) + 7788) & 0x3B96)) ^ *&v171[4 * (BYTE2(v198) ^ 0x4C)];
  v204 = (v202 - 1883003910 - ((2 * v202) & 0x1F8747F4)) ^ *&v174[4 * (v197 ^ 0x29)];
  v205 = v203 - 1883003910 - ((2 * v203) & 0x1F8747F4);
  v197 >>= 24;
  v206 = (v197 ^ 0x56) + 1002669420 - ((2 * (v197 ^ 0x56) + 264) & 0x1D0);
  v207 = a54 ^ *&v174[4 * (v198 ^ 0xAF)] ^ *&v171[4 * (((BYTE2(v196) ^ 0x31) & 1 | 0xD6) ^ (BYTE2(v196) ^ 0x31) & 0xFE)];
  v208 = *&v169[4 * (BYTE1(v194) ^ 0x5F)] ^ *&v170[4 * (v197 ^ 0x57)] ^ ((BYTE1(v194) ^ 0x8E) - 104379135 - ((2 * (BYTE1(v194) ^ 0x8E) + 7788) & 0x3B96));
  v209 = a56 ^ *&v174[4 * (v194 ^ 0xAB)] ^ (v201 - 1883003910 - ((2 * v201) & 0x1F8747F4));
  v210 = a55 ^ *&v171[4 * (BYTE2(v194) ^ 0x9E)] ^ (v204 + 647724883 - ((2 * v204) & 0x4D36FEA6));
  v211 = v207 ^ v208 ^ v206;
  v212 = *&v174[4 * (v196 ^ 0x79)] ^ a81 ^ v205;
  v213 = ((BYTE1(v209) ^ 0x5D) - 104379135 - ((2 * (BYTE1(v209) ^ 0x5D) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v209) ^ 0x8C)];
  v214 = *&v169[4 * (BYTE1(v212) ^ 0x27)] ^ *&v170[4 * (HIBYTE(v211) ^ 0x1E)] ^ ((HIBYTE(v211) ^ 0x1F) + 1010047341 + ((2 * (((HIBYTE(v211) ^ 0x1F) + 132) & 0xEB ^ (HIBYTE(v211) ^ 0x1F | 0x7FFFFFFC))) ^ 0x709407)) ^ ((BYTE1(v212) ^ 0xF6) + 100125953 - ((2 * (BYTE1(v212) ^ 0xF6) + 238198380) & 0xC30BB96));
  v215 = *&v169[4 * (BYTE1(v210) ^ 0x25)] ^ *&v170[4 * (HIBYTE(v209) ^ 0x96)] ^ ((HIBYTE(v209) ^ 0x97) + 1002669420 - ((2 * (HIBYTE(v209) ^ 0x97) + 264) & 0x1D0)) ^ ((BYTE1(v210) ^ 0xF4) - 104379135 - ((2 * (BYTE1(v210) ^ 0xF4) + 7788) & 0x3B96));
  v216 = *&v170[4 * (HIBYTE(v210) ^ 0xB3)] ^ *&v174[4 * (v211 ^ 0x8E)] ^ ((HIBYTE(v210) ^ 0xB2) + 1002669420 - ((2 * (HIBYTE(v210) ^ 0xB2) + 264) & 0x1D0)) ^ (v213 - 1883003910 - ((2 * v213) & 0x1F8747F4));
  v217 = (v214 + 647724883 - ((2 * v214) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v210) ^ 0xAA)];
  v218 = BYTE1(v211);
  v219 = (BYTE1(v211) ^ 0x38) - 104379135 - ((2 * (BYTE1(v211) ^ 0x38) + 7788) & 0x3B96);
  v220 = (v215 + 647724883 - ((2 * v215) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v211) ^ 0x97)];
  v221 = *&v169[4 * (v218 ^ 0xE9)] ^ v219 ^ ((HIBYTE(v212) ^ 0xDD) + 1002669420 - ((2 * (HIBYTE(v212) ^ 0xDD) + 264) & 0x1D0)) ^ *&v170[4 * (HIBYTE(v212) ^ 0xDC)];
  v222 = (v221 - 1883003910 - ((2 * v221) & 0x1F8747F4)) ^ *&v174[4 * (v210 ^ 0x4D)];
  v223 = a53 ^ *&v174[4 * (v212 ^ 0x61)] ^ (v220 - 1883003910 - ((2 * v220) & 0x1F8747F4));
  v224 = *&v174[4 * (v209 ^ 0xF3)] ^ a82 ^ (v217 - 1883003910 - ((2 * v217) & 0x1F8747F4));
  v225 = a52 ^ *&v171[4 * (BYTE2(v212) ^ 0x33)] ^ (v216 + 647724883 - ((2 * v216) & 0x4D36FEA6));
  v226 = a36 ^ *&v171[4 * (BYTE2(v209) ^ 0x45)] ^ (v222 + 647724883 - ((2 * v222) & 0x4D36FEA6));
  v227 = ((BYTE1(v226) ^ 0x7A) - 104379135 - ((2 * (BYTE1(v226) ^ 0x7A) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v226) ^ 0xAB)];
  v228 = v227 + 647724883 - ((2 * v227) & 0x4D36FEA6);
  v229 = ((BYTE1(v224) ^ 0x33) - 104379135 - ((2 * (BYTE1(v224) ^ 0x33) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v224) ^ 0xE2)];
  v230 = (v229 + 647724883 - ((2 * v229) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v223) ^ 0x8F)];
  v231 = HIBYTE(v224);
  v232 = (HIBYTE(v224) ^ 5) + 1002669420 - ((2 * (HIBYTE(v224) ^ 5) + 264) & 0x1D0);
  v233 = ((HIBYTE(v223) ^ 0x85) + 1002669420 - ((2 * (HIBYTE(v223) ^ 0x85) + 264) & 0x1D0)) ^ *&v170[4 * (HIBYTE(v223) ^ 0x84)];
  v234 = v226 ^ 0x89F4F9FB;
  v235 = a51 ^ *&v174[4 * (v224 ^ 0xC0)] ^ *&v171[4 * (((v226 ^ 0x89F4F9FB) >> 16) ^ 0x1F)];
  v236 = *&v169[4 * (BYTE1(v225) ^ 0xF7)] ^ *&v171[4 * (BYTE2(v224) ^ 0xB8)] ^ ((BYTE1(v225) ^ 0x26) - 104379135 - ((2 * (BYTE1(v225) ^ 0x26) + 7788) & 0x3B96)) ^ (v233 + 647724883 - ((2 * v233) & 0x4D36FEA6));
  v237 = v235 ^ *&v170[4 * (HIBYTE(v225) ^ 0x34)] ^ *&v169[4 * (BYTE1(v223) ^ 0x2B)] ^ ((HIBYTE(v225) ^ 0x35) + 1010047341 + ((2 * (((HIBYTE(v225) ^ 0x35) + 132) & 0xEA ^ (HIBYTE(v225) | 0x7FFFFFFD))) ^ 0x709405)) ^ ((BYTE1(v223) ^ 0xFA) - 104379135 - ((2 * (BYTE1(v223) ^ 0xFA) + 7788) & 0x3B96));
  v238 = a50 ^ *&v170[4 * (HIBYTE(v234) ^ 0x14)] ^ ((HIBYTE(v234) ^ 0x15) + 1002669420 - ((2 * (HIBYTE(v234) ^ 0x15) + 264) & 0x1D0)) ^ *&v174[4 * (v225 ^ 0x7E)] ^ (v230 - 1883003910 - ((2 * v230) & 0x1F8747F4));
  v239 = a49 ^ *&v170[4 * (v231 ^ 4)] ^ v232 ^ *&v171[4 * (BYTE2(v225) ^ 0x4D)] ^ v228;
  v240 = (v239 - 1883003910 - ((2 * v239) & 0x1F8747F4)) ^ *&v174[4 * (v223 ^ 0xD9)];
  v241 = a48 ^ *&v174[4 * (v234 ^ 0x13)] ^ (v236 - 1883003910 - ((2 * v236) & 0x1F8747F4));
  v242 = ((HIBYTE(v237) ^ 0x76) + 1002669420 - ((2 * (HIBYTE(v237) ^ 0x76) + 264) & 0x1D0)) ^ *&v170[4 * (HIBYTE(v237) ^ 0x77)];
  v243 = (v242 + 647724883 - ((2 * v242) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v238) ^ 3)];
  v244 = a46 ^ *&v174[4 * (v237 ^ 0x37)] ^ *&v170[4 * (HIBYTE(v238) ^ 0x62)] ^ *&v169[4 * (BYTE1(v240) ^ 0x72)] ^ ((BYTE1(v240) ^ 0xA3) - 104379135 - ((2 * (BYTE1(v240) ^ 0xA3) + 7788) & 0x3B96)) ^ ((HIBYTE(v238) ^ 0x63) + 1002669420 - ((2 * (HIBYTE(v238) ^ 0x63) + 264) & 0x1D0)) ^ *&v171[4 * (BYTE2(v241) ^ 0xD1)];
  v245 = a47 ^ *&v174[4 * (v240 ^ 0x14)] ^ ((BYTE1(v241) ^ 0x68) - 104379135 - ((2 * (BYTE1(v241) ^ 0x68) + 7788) & 0x3B96)) ^ *&v169[4 * (BYTE1(v241) ^ 0xB9)] ^ (v243 - 1883003910 - ((2 * v243) & 0x1F8747F4));
  v246 = *&v171[4 * (BYTE2(v240) ^ 5)];
  v247 = a45 ^ *&v171[4 * (BYTE2(v237) ^ 0xEA)] ^ *&v169[4 * (BYTE1(v238) ^ 0x9A)] ^ *&v170[4 * (HIBYTE(v240) ^ 0x49)] ^ ((HIBYTE(v240) ^ 0x48) + 1002669420 - ((2 * (HIBYTE(v240) ^ 0x48) + 264) & 0x1D0)) ^ ((BYTE1(v238) ^ 0x4B) + 100125953 - ((2 * (BYTE1(v238) ^ 0x4B) + 238198380) & 0xC30BB96)) ^ *&v174[4 * ((a48 ^ v174[4 * (v234 ^ 0x13)] ^ (v236 - 6 - ((2 * v236) & 0xF4))) ^ 0xDC)];
  v248 = a44 ^ *&v174[4 * (v238 ^ 0xF7)] ^ v246 ^ *&v169[4 * (BYTE1(v237) ^ 0xEC)] ^ ((BYTE1(v237) ^ 0x3D) - 104379135 - ((2 * (BYTE1(v237) ^ 0x3D) + 7788) & 0x3B96)) ^ ((HIBYTE(v241) ^ 0x8A) + 1002669420 - ((2 * (HIBYTE(v241) ^ 0x8A) + 264) & 0x1D0)) ^ *&v170[4 * (HIBYTE(v241) ^ 0x8B)];
  LOBYTE(v241) = a44 ^ v174[4 * (v238 ^ 0xF7)] ^ v246 ^ v169[4 * (BYTE1(v237) ^ 0xEC)] ^ ((BYTE1(v237) ^ 0x3D) + 1 - ((2 * (BYTE1(v237) ^ 0x3D) + 108) & 0x96)) ^ ((HIBYTE(v241) ^ 0x8A) + 108 - ((2 * (HIBYTE(v241) ^ 0x8A) + 8) & 0xD0)) ^ v170[4 * (HIBYTE(v241) ^ 0x8B)] ^ 0x26;
  v249 = ((((v248 ^ 0xF66B8826) >> 24) ^ 0x5C) + 1010047341 + ((2 * (((((v248 ^ 0xF66B8826) >> 24) ^ 0x5C) + 132) & 0xE9 ^ (((v248 ^ 0xF66B8826) >> 24) | 0x7FFFFFFE))) ^ 0x709403)) ^ *&v170[4 * (((v248 ^ 0xF66B8826) >> 24) ^ 0x5D)];
  v250 = ((BYTE1(v247) ^ 0x43) + 100125953 + ((2 * (BYTE1(v247) ^ 0x43) + 7788) & 0x3B96 ^ 0xF3CF7FFF) + 1) ^ *&v169[4 * (BYTE1(v247) ^ 0x92)];
  v251 = v250 - 1883003910 - ((2 * v250) & 0x1F8747F4);
  v252 = *&v171[4 * (((v248 ^ 0xF66B8826) >> 16) ^ 0x33)];
  v253 = *&v169[4 * (BYTE1(v244) ^ 0x24)];
  v254 = *&v169[4 * (BYTE1(v245) ^ 0x86)];
  v255 = v251 ^ *&v174[4 * (v245 ^ 0x2B)];
  v256 = (v249 + 647724883 - ((2 * v249) & 0x4D36FEA6)) ^ *&v171[4 * (BYTE2(v247) ^ 0x2D)];
  v257 = ((BYTE1(v248) ^ 0x1A) + 100125953 - ((2 * (BYTE1(v248) ^ 0x1A) + 238198380) & 0xC30BB96)) ^ *&v169[4 * (BYTE1(v248) ^ 0xCB)];
  v258 = *&v170[4 * (HIBYTE(v247) ^ 0x19)];
  v259 = *&v170[4 * (HIBYTE(v244) ^ 0x97)];
  v260 = *&v170[4 * (HIBYTE(v245) ^ 0xD6)] ^ *&v171[4 * (BYTE2(v244) ^ 0x1F)] ^ ((HIBYTE(v245) ^ 0xD7) + 1010047341 + ((2 * (((HIBYTE(v245) ^ 0xD7) + 132) & 0xEB ^ (HIBYTE(v245) ^ 0xD7 | 0x7FFFFFFC))) ^ 0x709407)) ^ (v257 + 647724883 - ((2 * v257) & 0x4D36FEA6));
  v261 = a43 ^ *&v171[4 * (BYTE2(v245) ^ 0x56)] ^ *&v174[4 * (v241 ^ 0xAC)] ^ v253 ^ v258 ^ ((HIBYTE(v247) ^ 0x18) + 1002669420 - ((2 * (HIBYTE(v247) ^ 0x18) + 264) & 0x1D0)) ^ ((BYTE1(v244) ^ 0xF5) + 100125953 - ((2 * (BYTE1(v244) ^ 0xF5) + 238198380) & 0xC30BB96));
  v262 = a42 ^ ((HIBYTE(v244) ^ 0x96) + 1002669420 - ((2 * (HIBYTE(v244) ^ 0x96) + 264) & 0x1D0)) ^ v259 ^ v252 ^ (v255 + 647724883 - ((2 * v255) & 0x4D36FEA6));
  v263 = a41 ^ *&v174[4 * (v247 ^ 0x75)] ^ (v260 - 1883003910 - ((2 * v260) & 0x1F8747F4));
  v264 = a40 ^ *&v174[4 * (v244 ^ 0x12)] ^ v254 ^ ((BYTE1(v245) ^ 0x57) - 104379135 - ((2 * (BYTE1(v245) ^ 0x57) + 7788) & 0x3B96)) ^ (v256 - 1883003910 - ((2 * v256) & 0x1F8747F4));
  v265 = *(&off_1002DD400 + a27) - 749726115;
  v313 = *&v265[4 * (v263 ^ 0xAE)];
  v266 = *&v265[4 * ((a42 ^ ((HIBYTE(v244) ^ 0x96) + 108 - ((2 * (HIBYTE(v244) ^ 0x96) + 8) & 0xD0)) ^ v259 ^ v252 ^ (v255 + 83 - ((2 * v255) & 0xA6))) ^ 0xF4)];
  v307 = *&v265[4 * (v264 ^ 0x96)];
  v267 = *&v265[4 * (v261 ^ 0x89)];
  v268 = *(v91 - 180);
  v269 = *(&off_1002DD400 + v268 - 3205) - 846447462;
  v270 = (((v263 ^ 0x2A4E) >> 8) + 281948793 - (((v263 ^ 0xF82A4E) >> 7) & 0xF2)) ^ *&v269[4 * (((v263 ^ 0x2A4E) >> 8) ^ 0xE)];
  v271 = *(&off_1002DD400 + a26) - 891329926;
  v311 = (v261 >> 8) ^ 0x59BBA5;
  v310 = BYTE1(v261) ^ 0xA5;
  v312 = *&v269[4 * (BYTE1(v261) ^ 0xAB)];
  v272 = *&v269[4 * (BYTE1(v264) ^ 8)];
  v273 = (v262 >> 8) ^ 0x736313;
  v274 = BYTE1(v262) ^ 0x13;
  v306 = *&v269[4 * (BYTE1(v262) ^ 0x9D)];
  v275 = *(&off_1002DD400 + a25) - 228815114;
  v276 = *&v275[4 * (BYTE2(v262) ^ 0x63)];
  v309 = *&v275[4 * (BYTE2(v264) ^ 0x4A)];
  v305 = *&v275[4 * ((v263 ^ 0xF82A4E) >> 16)];
  v277 = (*&v271[4 * (HIBYTE(v264) ^ 0x2F)] - 1405741650) ^ v266 ^ (v270 + 755420530 - ((2 * v270) & 0x5A0D9AE4));
  LODWORD(v275) = (v277 - 1749264326 - ((2 * v277) & 0x2F78B074)) ^ *&v275[4 * (BYTE2(v261) ^ 0x67)];
  v278 = *&v271[4 * (HIBYTE(v261) ^ 0x59)];
  v308 = *&v271[4 * (HIBYTE(v262) ^ 0x73)];
  v279 = *&v271[4 * (HIBYTE(v263) ^ 0x57)];
  v280 = v314 ^ (v275 - 1203137087 - ((2 * v275) & 0x70932B82));
  v281 = LODWORD(STACK[0x2A4]) ^ a77 ^ (v280 - 180755904 - ((2 * v280) & 0xEA73C480));
  v282 = *(v91 - 232);
  v315 = *(v282 + (STACK[0x288] ^ 0xE));
  v283 = *(v91 - 208);
  v303 = *(v283 + (STACK[0x280] ^ 0x3C));
  v284 = *(v91 - 224);
  v304 = *(v284 + (STACK[0x278] ^ 0x12));
  v285 = *(v282 + (STACK[0x260] ^ 0xD6));
  v286 = v282;
  LODWORD(v282) = *(v283 + (STACK[0x258] ^ 0xAF));
  v287 = *(v91 - 216);
  v288 = *(v287 + (STACK[0x270] ^ 0xA8));
  v289 = *(v284 + (STACK[0x250] ^ 0xB1));
  v290 = *(v287 + (STACK[0x200] ^ 0xA0));
  LODWORD(STACK[0x270]) = *(v286 + (STACK[0x248] ^ 0xF5));
  v291 = STACK[0x230] ^ 0xDD;
  LODWORD(STACK[0x288]) = *(v283 + (STACK[0x238] ^ 0x8B));
  LOWORD(v258) = *(v284 + v291);
  LODWORD(STACK[0x2A4]) = *(v286 + (STACK[0x220] ^ 0x6E));
  LODWORD(v291) = *(v283 + (STACK[0x218] ^ 0x1B));
  v292 = STACK[0x210] ^ 0xB3;
  LODWORD(STACK[0x278]) = *(v287 + (v325 ^ 0x88));
  LODWORD(STACK[0x280]) = *(v284 + v292);
  v293 = *(&off_1002DD400 + v268 - 3506) - 384331763;
  *(*(v91 - 192) + v326) = (13 - 13 * v293[*(v287 + (v316 ^ 0xC0)) ^ 0xD2u ^ v281 ^ 0x4ALL]) ^ 0x85;
  LODWORD(v287) = ((BYTE1(v264) ^ 6) + 281948793 - ((v264 >> 7) & 0xF2)) ^ v272;
  LODWORD(v287) = (v287 + 755420530 - ((2 * v287) & 0x5A0D9AE4)) ^ v267;
  LODWORD(v287) = v276 ^ LODWORD(STACK[0x2A8]) ^ (v279 - 1405741650) ^ (v287 - 1749264326 - ((2 * v287) & 0x2F78B074));
  LODWORD(v287) = (v287 + 693081810 - ((2 * v287) & 0x529F2DA4)) ^ *(v91 - 236);
  v294 = v290 ^ LODWORD(STACK[0x2B4]) ^ a79 ^ ((v285 ^ 0x5A) << 24) ^ ((v282 ^ 0x76) << 16) ^ ((v289 ^ 0x23) << 8) ^ (v287 - 86549245 - ((2 * v287) & 0xF5AEBA06));
  v295 = *(&off_1002DD400 + a24) - 1852232126;
  *(*(v91 - 192) + v327) = v295[BYTE2(v294) ^ 0xE7] ^ 0x9A;
  LODWORD(v287) = v278 - ((2 * v278 + 1483483996) & 0x5A0D9AE4);
  v296 = *(v91 - 192);
  LODWORD(v287) = (v274 + 281948793 - ((2 * v273) & 0xF2)) ^ v307 ^ v306 ^ (v287 - 650321120);
  LODWORD(v287) = (v287 - 1749264326 - ((2 * v287) & 0x2F78B074)) ^ v305;
  LODWORD(v287) = LODWORD(STACK[0x2AC]) ^ LODWORD(STACK[0x2B0]) ^ (v287 + 1936869670 - ((2 * v287) & 0xE6E4924C));
  LODWORD(v287) = LODWORD(STACK[0x2B8]) ^ a78 ^ (v287 - 70416349 - ((2 * v287) & 0xF79B1046));
  v297 = *(&off_1002DD400 + a23) - 1959698991;
  *(v296 + LODWORD(STACK[0x26C])) = v297[((v287 ^ ((v258 ^ 0xFFF7) << 8)) >> 8) ^ 0x16] ^ 0x5A;
  v298 = *(&off_1002DD400 + v268 - 3421) - 1577869630;
  *(v296 + LODWORD(STACK[0x20C])) = (51 * v298[HIBYTE(v294) ^ 0x73] - 39) ^ 0x64;
  *(v296 + v328) = v295[((v281 ^ ((v291 ^ 0xEC) << 16)) >> 16) ^ 0x8BLL] ^ 0xEE;
  *(v296 + LODWORD(STACK[0x208])) = (13 - 13 * v293[v294 ^ 0x37]) ^ 0x12;
  LODWORD(v282) = v312 ^ (v310 + 281948793 - ((2 * v311) & 0xF2));
  LODWORD(v282) = (v282 + 755420530 - ((2 * v282) & 0x5A0D9AE4)) ^ v313 ^ (v308 - 1405741650);
  LODWORD(v282) = (v282 - 1749264326 - ((2 * v282) & 0x2F78B074)) ^ v309;
  v299 = LODWORD(STACK[0x2BC]) ^ *(v91 - 256) ^ (v282 - 1115087524 - ((2 * v282) & 0x7B123AB8));
  v300 = v288 ^ *(v91 - 252) ^ a80 ^ ((v315 ^ 0xF6) << 24) ^ ((v303 ^ 0xDA) << 16) ^ ((v304 ^ 0xC1) << 8) ^ (v299 - 1323914843 - ((2 * v299) & 0x622D534A));
  *(v296 + v318) = (13 - 13 * v293[v300 ^ 5]) ^ 0xEB;
  *(v296 + LODWORD(STACK[0x22C])) = v297[BYTE1(v294) ^ 0x54] ^ 0x11;
  *(v296 + LODWORD(STACK[0x29C])) = (51 * v298[((v287 ^ ((LODWORD(STACK[0x270]) ^ 0xFFFFFFFB) << 24)) >> 24) ^ 0xC1] - 39) ^ 0x9A;
  *(v296 + LODWORD(STACK[0x244])) = v297[BYTE1(v300) ^ 0x47] ^ 0x9D;
  *(v296 + LODWORD(STACK[0x298])) = (13 - 13 * v293[LODWORD(STACK[0x278]) ^ 0xD2u ^ v287 ^ 0xAFLL]) ^ 0xD3;
  *(v296 + *(v91 - 200)) = (51 * v298[HIBYTE(v300) ^ 0xF0] - 39) ^ 0x97;
  *(v296 + LODWORD(STACK[0x228])) = v295[BYTE2(v300) ^ 0x68] ^ 0x79;
  *(v296 + LODWORD(STACK[0x294])) = v297[((v281 ^ ((LOWORD(STACK[0x280]) ^ 0xCA) << 8)) >> 8) ^ 0x1BLL] ^ 0x83;
  *(v296 + LODWORD(STACK[0x290])) = v295[((v287 ^ ((LODWORD(STACK[0x288]) ^ 0xD3) << 16)) >> 16) ^ 0xBDLL] ^ 8;
  LODWORD(v283) = *(v91 - 248) - 906059738 - ((2 * *(v91 - 248) + 32) & 0x93FD404C) + 16;
  *(v296 + LODWORD(STACK[0x2A0])) = (51 * v298[((v281 ^ ((LODWORD(STACK[0x2A4]) ^ 0x80) << 24)) >> 24) ^ 0x1CLL] - 39) ^ 0x6D;
  v301 = *(a84 + 8 * ((57 * ((v283 ^ 0xC9FEA026) >= a39)) | v268));
  *(v91 - 236) = v320;
  return v301(v319, 0, 0, 0, v324);
}

void sub_100007550(uint64_t a1)
{
  v1 = 199319723 * ((-2 - ((~a1 | 0x240C0B7E) + (a1 | 0xDBF3F481))) ^ 0x91FCE5B6);
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && (*(a1 + 16) - v1 - 194692898) < 0xFFFFFFF0;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100007644@<X0>(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, int a5, uint64_t a6, unsigned int a7, uint64_t a8, int a9, char a10)
{
  v16 = *(v13 + 36) ^ v12;
  v17 = (*v13 ^ v12) + 469001728;
  v18 = 586739509 * (((&a3 | 0xB1F068CE) - (&a3 & 0xB1F068CE)) ^ 0x477A6EAB);
  a8 = v10;
  a6 = a1;
  a7 = v18 + 26978826;
  a10 = ((9 * v16 + 67) ^ 0xBF) - 53 * (((&a3 | 0xCE) - (&a3 & 0xCE)) ^ 0xAB) + 2 * ((9 * v16 + 67) & 0x3F) + 107;
  a5 = v18 - 4662 + v14;
  a3 = v17 ^ v18;
  a9 = v11 - v18 + 1248762311;
  v19 = (*(v15 + 8 * (v14 ^ 0x9A3)))(&a3);
  return (*(v15 + 8 * v14))(v19);
}

uint64_t sub_100007758(uint64_t a1)
{
  v2 = *(a1 + 4) + 678427121 * (((a1 | 0x94D216FE) - a1 + (a1 & 0x6B2DE901)) ^ 0x6084CE4);
  v8 = 4;
  v3 = *(*(&off_1002DD400 + (v2 & 0x4304A3B8)) - 1526030747);
  v7 = 0;
  v9[0] = *v3 ^ 0xB;
  v9[1] = v3[1] ^ 0xB;
  v9[2] = v3[2] ^ 0xB;
  v9[3] = v3[3] ^ 0xB;
  v9[4] = v3[4] ^ 0xB;
  v9[5] = v3[5] ^ 0xB;
  v9[6] = v3[6] ^ 0xB;
  v9[7] = v3[7] ^ 0xB;
  v9[8] = v3[8] ^ 0xB;
  v9[9] = v3[9] ^ 0xB;
  v9[10] = v3[10] ^ 0xB;
  v9[11] = v3[11] ^ 0xB;
  v9[12] = v3[12] ^ 0xB;
  v9[13] = v3[13] ^ 0xB;
  v9[14] = v3[14] ^ 0xB;
  v9[15] = v3[15] ^ 0xB;
  v9[16] = v3[16] ^ 0xB;
  v9[17] = v3[17] ^ 0xB;
  v9[18] = v3[18] ^ 0xB;
  v9[19] = v3[19] ^ 0xB;
  result = (*(*(&off_1002DD400 + (v2 ^ 0x303A47ED)) + 8 * (v2 ^ 0x303A6C39) - 2062743291))(v9, &v7, &v8, 0, 0);
  if (v7 == 1 && result == 0)
  {
    v6 = 82;
  }

  else
  {
    v6 = 81;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_10000796C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8) ^ (301143701 * ((-2 - ((~result | 0x3ABA8F6F3BE762B5) + (result | 0xC5457090C4189D4ALL))) ^ 0x28ED3D4B404FFFC7));
  *v1 = 134217984;
  *(v1 + 4) = v2;
  return result;
}

void sub_1000079DC()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 40))
  {
    v2 = *(v0 + 48) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(v0 + 8) == 0;
  v1 = *v0 ^ (1949688233 * (((v0 | 0x8D74F9A4) - (v0 & 0x8D74F9A4)) ^ 0x6A33AF2F));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10000A64C()
{
  LODWORD(STACK[0x4214]) = STACK[0x768];
  v1 = STACK[0x1700];
  LODWORD(STACK[0x4218]) = STACK[0x1700] + 1074;
  LODWORD(STACK[0x421C]) = v1 + 3761;
  v2 = STACK[0x3108];
  STACK[0x4220] = STACK[0x3108];
  STACK[0x4228] = v2;
  v3 = *(STACK[0x2E68] - 0x34F9377BC915C8F4);
  STACK[0x4230] = v3;
  STACK[0x4238] = v3 - 0x2087B04485EAB6B8;
  LODWORD(STACK[0x4244]) = *(v3 - 0x2087B04485EAB6BCLL);
  v4 = STACK[0x1B28];
  v5 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x4248] = v5;
  STACK[0x1B28] = v4 + 16;
  STACK[0x40B8] = *(&off_1002DD400 + SLODWORD(STACK[0x764])) - 606855374;
  STACK[0x40B0] = v5;
  STACK[0x40A8] = 16;
  STACK[0x40A0] = *(v0 + 8 * SLODWORD(STACK[0x760]));
  return (*(v0 + 8 * (v1 ^ 0x3137)))();
}

uint64_t sub_10000A750()
{
  v0 = STACK[0x40B8];
  v1 = STACK[0x40B0];
  v2 = STACK[0x40A8];
  if (((STACK[0x40B0] ^ STACK[0x40B8]) & 7) == 0)
  {
    v5 = -v0 & 7;
    if ((-v0 & 7u) <= 3)
    {
      if ((-v0 & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = v2 >= v5;
          v14 = v2 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *v0;
              v0 += 8;
              *v1 = v32;
              v1 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *v0;
              v0 += 8;
              *v1 = v25;
              v1 += 8;
LABEL_55:
              v26 = *v0;
              v0 += 8;
              *v1 = v26;
              v1 += 8;
LABEL_56:
              v27 = *v0;
              v0 += 8;
              *v1 = v27;
              v1 += 8;
LABEL_57:
              v28 = *v0;
              v0 += 8;
              *v1 = v28;
              v1 += 8;
LABEL_58:
              v29 = *v0;
              v0 += 8;
              *v1 = v29;
              v1 += 8;
LABEL_59:
              v30 = *v0;
              v0 += 8;
              *v1 = v30;
              v1 += 8;
LABEL_60:
              v31 = *v0;
              v0 += 8;
              *v1 = v31;
              v1 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *v0++;
              *v1++ = v39;
LABEL_78:
              *v1 = *v0;
              goto LABEL_79;
            }

LABEL_76:
            v38 = *v0++;
            *v1++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *v0++;
              *v1++ = v34;
            }

            v35 = *v0++;
            *v1++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *v0++;
          *v1++ = v36;
LABEL_75:
          v37 = *v0++;
          *v1++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *v0++;
        *v1++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *v0++;
        *v1++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *v0++;
      *v1++ = v10;
      goto LABEL_25;
    }

    if ((-v0 & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *v0++;
        *v1++ = v6;
      }

      v7 = *v0++;
      *v1++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *v0++;
    *v1++ = v8;
LABEL_23:
    v9 = *v0++;
    *v1++ = v9;
    goto LABEL_24;
  }

  if ((v2 + 7) >= 8)
  {
    v3 = (v2 + 7) >> 3;
    v4 = STACK[0x40A8] & 7;
    if (v4 > 3)
    {
      if ((STACK[0x40A8] & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((STACK[0x40A8] & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (!v4)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *v0++;
      *v1++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *v0++;
      *v1++ = v17;
LABEL_46:
      v18 = *v0++;
      *v1++ = v18;
LABEL_47:
      v19 = *v0++;
      *v1++ = v19;
LABEL_48:
      v20 = *v0++;
      *v1++ = v20;
LABEL_49:
      v21 = *v0++;
      *v1++ = v21;
LABEL_50:
      v22 = *v0++;
      *v1++ = v22;
LABEL_51:
      v23 = *v0++;
      *v1++ = v23;
    }
  }

LABEL_79:
  v40 = STACK[0xC8C];
  v41 = *(&off_1002DD400 + LODWORD(STACK[0xC8C]) - 2067);
  v42 = *(&off_1002DD400 + SLODWORD(STACK[0xBEC]));
  v43 = *(&off_1002DD400 + SLODWORD(STACK[0xB48]));
  v44 = *(&off_1002DD400 + SLODWORD(STACK[0xB44]));
  v45 = *(&off_1002DD400 + SLODWORD(STACK[0xBE8]));
  v46 = *(&off_1002DD400 + SLODWORD(STACK[0xBE4]));
  STACK[0x1370] = *(&off_1002DD400 + SLODWORD(STACK[0xB40])) - 343871862;
  v47 = *(&off_1002DD400 + SLODWORD(STACK[0xBE0]));
  v48 = *(&off_1002DD400 + v40 - 1499);
  STACK[0xC40] = v41 - 361573799;
  v49 = *(&off_1002DD400 + SLODWORD(STACK[0xB4C]));
  v50 = *(&off_1002DD400 + v40 - 1498);
  STACK[0x14D0] = v42 - 1080983519;
  STACK[0xCE8] = v43 - 41061911;
  v51 = *(&off_1002DD400 + SLODWORD(STACK[0xBD8]));
  STACK[0xCE0] = v44 - 1794703750;
  STACK[0xC38] = v45 - 440593207;
  v52 = *(&off_1002DD400 + SLODWORD(STACK[0xB54]));
  v53 = *(&off_1002DD400 + SLODWORD(STACK[0xB5C]));
  STACK[0x1368] = v46 - 2051997775;
  v54 = *(&off_1002DD400 + v40 - 1272);
  v55 = *(&off_1002DD400 + SLODWORD(STACK[0xB60]));
  STACK[0x1390] = v47 - 1743498331;
  STACK[0x1680] = v48 - 2096880239;
  v56 = *(&off_1002DD400 + SLODWORD(STACK[0xB68]));
  STACK[0x16A8] = v49 - 971616262;
  STACK[0x1360] = v50 - 115025294;
  v57 = *(&off_1002DD400 + SLODWORD(STACK[0xB64]));
  STACK[0xDE0] = v51 - 1948953471;
  v58 = *(&off_1002DD400 + SLODWORD(STACK[0xBC4]));
  STACK[0x1688] = v52 - 1646143522;
  STACK[0x13A8] = v53 - 1474825326;
  v59 = *(&off_1002DD400 + SLODWORD(STACK[0xB6C]));
  v60 = *(&off_1002DD400 + SLODWORD(STACK[0xB74]));
  STACK[0xB28] = *(&off_1002DD400 + v40 - 1489);
  v61 = *(&off_1002DD400 + v40 - 1351);
  v62 = *(&off_1002DD400 + v40 - 1280);
  STACK[0xB30] = *(&off_1002DD400 + v40 - 1796);
  STACK[0x14E0] = v54 - 1039890154;
  STACK[0x1358] = v55 - 2102569730;
  STACK[0x13A0] = v56 - 486742599;
  STACK[0x1350] = v57 - 1971077971;
  *&STACK[0x1650] = vdupq_n_s64(0xB581C077348D623CLL);
  STACK[0x1388] = v58 - 1012076163;
  *&STACK[0x1690] = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  STACK[0xC30] = v59 - 424158198;
  STACK[0xDD8] = v60 - 1720740367;
  v63 = *(&off_1002DD400 + SLODWORD(STACK[0xBB8]));
  STACK[0x1348] = *(&off_1002DD400 + SLODWORD(STACK[0xB70])) - 601165883;
  STACK[0x1340] = v63 - 651737838;
  STACK[0x1338] = *(&off_1002DD400 + SLODWORD(STACK[0xBB4])) - 275597970;
  STACK[0xDD0] = *(&off_1002DD400 + SLODWORD(STACK[0xB78])) - 1622752094;
  STACK[0x1590] = *(&off_1002DD400 + SLODWORD(STACK[0xBB0])) - 1423619907;
  STACK[0x1398] = *(&off_1002DD400 + SLODWORD(STACK[0xBAC])) - 1434365427;
  STACK[0x15A0] = v61 - 840124507;
  STACK[0xCD8] = *(&off_1002DD400 + SLODWORD(STACK[0xBA4])) - 1519707790;
  v64 = *(&off_1002DD400 + SLODWORD(STACK[0xB84]));
  STACK[0x1330] = *(&off_1002DD400 + SLODWORD(STACK[0xBA0])) - 491798626;
  STACK[0x13B8] = v64 - 1805449270;
  STACK[0x1380] = v62 - 1862344178;
  STACK[0x1328] = *(&off_1002DD400 + SLODWORD(STACK[0xB88])) - 1880679579;
  STACK[0x1378] = *(&off_1002DD400 + SLODWORD(STACK[0xB90])) - 1194773339;
  STACK[0x1320] = *(&off_1002DD400 + SLODWORD(STACK[0xB8C])) - 189622139;
  STACK[0x14F0] = *(&off_1002DD400 + SLODWORD(STACK[0xB9C])) - 2136706666;
  *&STACK[0x16F0] = vdupq_n_s64(0xC73EF603490C4402);
  *&STACK[0x1660] = vdupq_n_s64(0x43600812E0A35073uLL);
  *&STACK[0x1620] = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  *&STACK[0x15D0] = vdupq_n_s64(0x9716ECD53D61FD7uLL);
  *&STACK[0x1610] = vdupq_n_s64(0xBDDC45633787A904);
  STACK[0x13B0] = *(&off_1002DD400 + SLODWORD(STACK[0xB98])) - 543004047;
  v65 = STACK[0x40A0];
  LODWORD(STACK[0x12EC]) = 2 * STACK[0x1700];
  STACK[0xD30] = *(&off_1002DD400 + SLODWORD(STACK[0xBF0]));
  STACK[0x15A8] = *(&off_1002DD400 + SLODWORD(STACK[0xBDC]));
  v66 = *(&off_1002DD400 + SLODWORD(STACK[0xB58]));
  STACK[0xB20] = *(&off_1002DD400 + SLODWORD(STACK[0xBD4]));
  STACK[0x1170] = *(&off_1002DD400 + SLODWORD(STACK[0xBC8]));
  STACK[0xD58] = *(&off_1002DD400 + SLODWORD(STACK[0xBBC]));
  STACK[0x1598] = *(&off_1002DD400 + SLODWORD(STACK[0xB94]));
  return v65(v66);
}

uint64_t sub_10000AF64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  STACK[0x40D0] = &STACK[0x4570];
  STACK[0x2C90] = STACK[0x430];
  STACK[0x1B28] = 96;
  LODWORD(STACK[0x2A04]) = 1443455193;
  LODWORD(STACK[0x280C]) = 1443455193;
  STACK[0x40D8] = &STACK[0x1C78];
  STACK[0x1C78] = 0x56F780AC40F6473BLL;
  LODWORD(STACK[0x2314]) = 1103264941;
  (*(v13 + 8 * SLODWORD(STACK[0x454])))();
  v14 = (*(STACK[0x1708] + 8 * SLODWORD(STACK[0x438])))(24);
  v15 = STACK[0x1708];
  STACK[0x40E0] = v14;
  STACK[0x40E8] = v14 + 0x56F780AC40F6473BLL;
  return (*(v15 + 8 * ((19 * (((v14 == 0) ^ (LODWORD(STACK[0x40CC]) + 1)) & 1)) ^ LODWORD(STACK[0x40C4]))))();
}

uint64_t sub_10000B064()
{
  v2 = STACK[0x40E0];
  *v2 = 0;
  *(v2 + 8) = 1311677069;
  *(v2 + 12) = 1443455193;
  *(v2 + 16) = 0;
  v3 = (*(v1 + 8 * (v0 ^ 0x3C83)))(4096);
  v4 = STACK[0x1708];
  *STACK[0x40E0] = v3;
  v5 = *(v4 + 8 * (((v3 != 0) * ((v0 ^ 0xE0C) - 6919)) ^ v0));
  LODWORD(STACK[0x40F0]) = v0 ^ 0xE0C;
  return v5();
}

uint64_t sub_10000B0E0()
{
  v3 = STACK[0x40F0];
  LODWORD(STACK[0x40F4]) = STACK[0x40F0];
  LODWORD(STACK[0x40F8]) = v3 - 611;
  LODWORD(STACK[0x40FC]) = (v3 - 807534479) & 0x3021FCFE;
  *(v0 + 8) = v1 + 4096;
  *STACK[0x40D8] = STACK[0x40E8];
  STACK[0x4100] = &STACK[0x4570];
  STACK[0x40B8] = &STACK[0x20E4];
  STACK[0x40B0] = &STACK[0x4570];
  STACK[0x40A8] = 32;
  STACK[0x40A0] = *(v2 + 8 * (v3 + 3660));
  return (*(v2 + 8 * (v3 ^ 0x3247)))();
}

uint64_t sub_10000B1B0()
{
  v1 = STACK[0x4370];
  v2 = STACK[0x1700];
  STACK[0x40B8] = *(&off_1002DD400 + (STACK[0x1700] ^ 0x19E7)) - 1189083850;
  STACK[0x40B0] = v1;
  STACK[0x40A8] = 64;
  STACK[0x40A0] = *(v0 + 8 * SLODWORD(STACK[0x43C]));
  return (*(v0 + 8 * (v2 ^ 0x3137)))();
}

uint64_t sub_10000B208(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  v14 = (*(v13 + 8 * SLODWORD(STACK[0x44C])))(STACK[0x4120], STACK[0x4148]);
  v15 = STACK[0x1708];
  STACK[0x4150] = v14;
  return (*(v15 + 8 * (((((v14 == 0) ^ LODWORD(STACK[0x4140])) & 1) * (LODWORD(STACK[0x4144]) - 6250)) ^ LODWORD(STACK[0x413C]))))();
}

uint64_t sub_10000B34C()
{
  v4 = (*(v0 + 8 * (v3 ^ 0x321A)))();
  v5 = v4 == (*(STACK[0x1708] + 8 * (v3 + 4473)))(v1);
  return (*(STACK[0x1708] + 8 * ((v5 * (((v3 ^ 0x189C) + 9581) ^ ((v3 ^ 0x189C) * v2))) ^ v3)))();
}

uint64_t sub_10000B458(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v7;
  STACK[0x1308] = v13;
  STACK[0x1310] = v12;
  STACK[0xD88] = v11;
  STACK[0x1318] = v10;
  STACK[0x11A8] = v9;
  STACK[0xAE8] = v8;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v15;
  v17 = (STACK[0x4360] + 383);
  STACK[0x4378] = v17;
  *v17 = 44;
  *(STACK[0x4360] + 384) = -16;
  v18 = STACK[0x4360];
  STACK[0x4380] = STACK[0x4360] + 385;
  *(v18 + 385) = -96;
  v19 = STACK[0x4360];
  STACK[0x4388] = STACK[0x4360] + 386;
  *(v19 + 386) = -104;
  v20 = STACK[0x4360];
  STACK[0x4390] = STACK[0x4360] + 387;
  *(v20 + 387) = 117;
  *(STACK[0x4360] + 388) = 85;
  *(STACK[0x4360] + 389) = 26;
  *(STACK[0x4360] + 390) = 19;
  v21 = STACK[0x4360];
  STACK[0x4398] = STACK[0x4360] + 391;
  *(v21 + 391) = -82;
  *(STACK[0x4360] + 392) = 15;
  v22 = STACK[0x4360];
  STACK[0x43A0] = STACK[0x4360] + 393;
  *(v22 + 393) = 55;
  v23 = STACK[0x4360];
  STACK[0x43A8] = STACK[0x4360] + 394;
  *(v23 + 394) = -76;
  *(STACK[0x4360] + 395) = -119;
  *(STACK[0x4360] + 396) = -68;
  *(STACK[0x4360] + 397) = -2;
  *(STACK[0x4360] + 398) = v14;
  v24 = STACK[0x4360];
  STACK[0x43B0] = STACK[0x4360] + 399;
  *(v24 + 399) = 69;
  *(STACK[0x4360] + 400) = 24;
  *(STACK[0x4360] + 401) = 40;
  *(STACK[0x4360] + 402) = -8;
  v25 = STACK[0x4360];
  STACK[0x43B8] = STACK[0x4360] + 403;
  *(v25 + 403) = -57;
  *(STACK[0x4360] + 404) = -98;
  *(STACK[0x4360] + 405) = 33;
  *(STACK[0x4360] + 406) = 50;
  v26 = STACK[0x4360];
  STACK[0x43C0] = STACK[0x4360] + 407;
  *(v26 + 407) = -13;
  v27 = STACK[0x4360];
  STACK[0x43C8] = STACK[0x4360] + 408;
  *(v27 + 408) = -34;
  v28 = STACK[0x4360];
  STACK[0x43D0] = STACK[0x4360] + 409;
  *(v28 + 409) = 43;
  *(STACK[0x4360] + 410) = 65;
  v29 = STACK[0x4360];
  STACK[0x43D8] = STACK[0x4360] + 411;
  *(v29 + 411) = 74;
  *(STACK[0x4360] + 412) = 16;
  v30 = STACK[0x4360];
  STACK[0x43E0] = STACK[0x4360] + 413;
  *(v30 + 413) = -46;
  v31 = STACK[0x4360];
  STACK[0x43E8] = STACK[0x4360] + 414;
  *(v31 + 414) = 77;
  *(STACK[0x4360] + 415) = -117;
  v32 = (STACK[0x4360] + 416);
  STACK[0x43F0] = v32;
  *v32 = a7;
  *(STACK[0x4360] + 417) = 118;
  v33 = STACK[0x4360];
  STACK[0x43F8] = STACK[0x4360] + 418;
  *(v33 + 418) = 125;
  v34 = STACK[0x4360];
  STACK[0x4400] = STACK[0x4360] + 419;
  *(v34 + 419) = 54;
  v35 = (STACK[0x4360] + 420);
  STACK[0x4408] = v35;
  *v35 = -8;
  v36 = (STACK[0x4360] + 421);
  STACK[0x4410] = v36;
  *v36 = 73;
  v37 = STACK[0x4360];
  STACK[0x4418] = STACK[0x4360] + 422;
  *(v37 + 422) = 104;
  *(STACK[0x4360] + 423) = -28;
  *(STACK[0x4360] + 424) = 44;
  v38 = STACK[0x4360];
  STACK[0x4420] = STACK[0x4360] + 425;
  *(v38 + 425) = 11;
  *(STACK[0x4360] + 426) = -4;
  *(STACK[0x4360] + 427) = -32;
  *(STACK[0x4360] + 428) = -44;
  *(STACK[0x4360] + 429) = -99;
  v39 = (STACK[0x4360] + 430);
  STACK[0x4428] = v39;
  *v39 = 42;
  *(STACK[0x4360] + 431) = 47;
  *(STACK[0x4360] + 432) = -36;
  v40 = STACK[0x4360];
  STACK[0x4430] = STACK[0x4360] + 433;
  *(v40 + 433) = 75;
  v41 = (STACK[0x4360] + 434);
  STACK[0x4438] = v41;
  *v41 = -17;
  v42 = STACK[0x4360];
  STACK[0x4440] = STACK[0x4360] + 435;
  *(v42 + 435) = 3;
  v43 = STACK[0x4360];
  STACK[0x4448] = STACK[0x4360] + 436;
  *(v43 + 436) = 86;
  v44 = STACK[0x4360];
  STACK[0x4450] = STACK[0x4360] + 437;
  *(v44 + 437) = 100;
  v45 = (STACK[0x4360] + 438);
  STACK[0x4458] = v45;
  *v45 = -17;
  *(STACK[0x4360] + 439) = -5;
  *(STACK[0x4360] + 440) = -121;
  *(STACK[0x4360] + 441) = 121;
  v46 = (STACK[0x4360] + 442);
  STACK[0x4460] = v46;
  *v46 = -17;
  *(STACK[0x4360] + 443) = 73;
  *(STACK[0x4360] + 444) = 33;
  v47 = STACK[0x4360];
  STACK[0x4468] = STACK[0x4360] + 445;
  *(v47 + 445) = -103;
  *(STACK[0x4360] + 446) = 61;
  return (*(v16 + 8 * ((((LODWORD(STACK[0x435C]) - 1504534017) < 0xF8) * (LODWORD(STACK[0x4358]) ^ 0x700)) ^ LODWORD(STACK[0x4354]))))();
}

uint64_t sub_10000B980@<X0>(char a1@<W2>, int a2@<W5>, uint64_t a3@<X8>)
{
  v11 = (v5 + v8) % v3;
  *(v5 + a3 + v9) = *(STACK[0x4500] + v11) ^ *(STACK[0xCE8] + (v11 & 0xF)) ^ *((v11 & 0xF) + STACK[0xCE0] + 3) ^ ((v11 & 0xF) * a1) ^ *(STACK[0xCD8] + (v11 & 0xF)) ^ v6;
  return (*(v10 + 8 * (((v5 + 1 != v7 + 319) * a2) ^ v4)))();
}

uint64_t sub_10000B9F8@<X0>(char a1@<W4>, int a2@<W6>, uint64_t a3@<X8>)
{
  v12 = ((v4 + v9 + ((v5 - 1644) | v8)) * v10) >> 16;
  v13 = (v4 + v9 + ((v5 - 1644) | v8) - 319 * ((v12 + (((v4 + v9 + ((v5 - 1644) | v8) - v12) & 0xFFFE) >> 1)) >> 8));
  v14 = *(a3 + (v4 + v7 + 142) % 0x13Fu);
  HIDWORD(v16) = v14 ^ a2;
  LODWORD(v16) = (v14 ^ 0x20) << 24;
  v15 = v16 >> 29;
  v17 = *(a3 + (v4 + v7 + 98) % 0x13Fu);
  HIDWORD(v16) = v17 ^ 2;
  LODWORD(v16) = (v17 ^ 0x30) << 24;
  v18 = v16 >> 27;
  HIDWORD(v16) = *(a3 + (v4 + v7) % 0x13Fu);
  LODWORD(v16) = (HIDWORD(v16) ^ 0x33333333) << 24;
  v19 = ((v15 - (v6 & (2 * v15)) + 50) ^ *(a3 + v13)) + v18 - (v16 >> 25);
  *(a3 + v13) = v19 + (a1 | ~(2 * v19)) + 51;
  return (*(v11 + 8 * ((13505 * (v4 + 1 == v3 + 1276)) ^ v5)))();
}

uint64_t sub_10000BAF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  LODWORD(STACK[0x1900]) = 0;
  v12 = STACK[0x4360];
  v13 = *(STACK[0x4360] + 109) ^ v9;
  v14 = *(STACK[0x4360] + 21) ^ v9;
  LODWORD(STACK[0x17D0]) = v8 ^ 0x3220;
  v15 = (v14 | v13) & ((v8 ^ 0x3220) - 9239) | v14 & v13;
  v16 = (v15 ^ 0x76997FEF) - 1989771247 + ((v15 << (v8 ^ 0xAB)) & 0x1DE);
  v17 = v16 * v16 * v16;
  LODWORD(STACK[0x18F0]) = v17;
  v18 = -v17;
  v19 = STACK[0x4378];
  v20 = STACK[0x4378];
  LOBYTE(v16) = (*(STACK[0x4378] + (*(v12 + 40) & 0x3F ^ v9)) & 0x75 | *STACK[0x43F0] & 0x8A) ^ 0x36;
  v21 = *(v12 + 52);
  v22 = STACK[0x4370];
  LOBYTE(v14) = (*(v12 + 380) ^ 0x3A) & (*STACK[0x4400] ^ 0xC9) | (*(STACK[0x4370] + (v21 & 0x3F ^ v9)) ^ 0x36) & (*STACK[0x4400] ^ 0x36);
  LOBYTE(v16) = (*(v12 + 94) ^ v9) - ((v14 | v16) & 0x2B | v14 & v16);
  *(v12 + 94) = v16 - (v10 & (2 * v16)) + 50;
  v23 = STACK[0x4360];
  v24 = STACK[0x4368];
  LOBYTE(v14) = (*(STACK[0x4368] + (*(STACK[0x4360] + 85) & 0x3F ^ v9)) ^ 0x3A) & (*(STACK[0x4360] + 379) ^ a4) | (*(STACK[0x4360] + 139) ^ v9) & (*(STACK[0x4360] + 379) ^ 0x3A);
  LOBYTE(v16) = (v14 | v11) & (*(STACK[0x4360] + 356) ^ 0x3A) | v14 & v11;
  STACK[0x1860] = STACK[0x4360];
  *(v23 + 64) ^= v16;
  v25 = STACK[0x4360];
  LODWORD(STACK[0x18B0]) = -3 - (*(v19 + (*(STACK[0x4360] + 157) & 0x3F ^ v9)) ^ 0x36);
  LODWORD(STACK[0x18A0]) = *(v25 + 125) & 0xC9 | 2;
  v26 = *(v19 + (*(v25 + 104) & 0x3F ^ 0x32)) ^ 0x36;
  LODWORD(v19) = v26 * v26;
  LOBYTE(v25) = *(v25 + 451);
  v27 = v25 & 0xA1 ^ 0x20;
  v28 = v25 & 0x3E;
  v29 = STACK[0x4398];
  STACK[0x1840] = STACK[0x4398];
  *v29 = -54;
  LOBYTE(v26) = (*(STACK[0x4360] + 175) ^ 0x32) - (v21 ^ 0x32);
  *(STACK[0x4360] + 175) = v26 - (v10 & (2 * v26)) + 50;
  v30 = STACK[0x4360];
  STACK[0x1830] = STACK[0x4360];
  LODWORD(STACK[0x1880]) = *(v22 + (*(v30 + 44) & 0x3F ^ 0x32));
  *(v30 + 100) = (*(v30 + 100) ^ 0x32) - ((2 * (*(v30 + 100) ^ 0x32) + 122) & v10) + 47;
  v31 = STACK[0x4360];
  LOBYTE(v26) = (*(v31 + 450) ^ 0x36) + (*(v20 + (*(v31 + 17) & 0x3F ^ 0x32)) ^ 0x36);
  *(v31 + 450) = v26 - ((2 * v26) & 0x6C) + 54;
  v32 = STACK[0x4360];
  STACK[0x1850] = STACK[0x4360];
  LODWORD(v31) = (*(v32 + 101) ^ 0x32) - ((171 * ((*(v32 + 479) & 0x8C | *(v24 + (*(v32 + 57) & 0x3F ^ 0x32)) & 0x73) ^ 0x36u)) >> 9);
  *(v32 + 101) = v31 - (v10 & (2 * v31)) + 50;
  v33 = STACK[0x4360];
  v34 = STACK[0x4368];
  v35 = *(STACK[0x4368] + (*(STACK[0x4360] + 217) & 0x3F ^ 0x32));
  LODWORD(v31) = (v33[249] ^ 0x32) - ((v33[352] ^ 0x3A | v35 ^ 0x3A) & (v33[462] ^ 0x36) | (v33[352] ^ 0x3A) & (v35 ^ 0x3A) | (v33[7] >> 1) ^ 0x19);
  v33[249] = v31 - ((2 * v31) & 0x64) + 50;
  *(STACK[0x4360] + 30) ^= 0x58u;
  v36 = STACK[0x4360];
  LOBYTE(v31) = *(STACK[0x4360] + 373);
  v37 = STACK[0x4370];
  STACK[0x1820] = STACK[0x4370];
  v38 = STACK[0x4370];
  v39 = STACK[0x4378];
  LOBYTE(v31) = (*(STACK[0x4378] + (v36[241] & 0x3F ^ 0x32)) ^ 0x36) & (v31 ^ 0xC5) | (*v37 ^ 0x36) & (v31 ^ 0x3A);
  LOBYTE(v31) = (v31 ^ 0xF7) + ((2 * v31) & 0xEF) + 9;
  v36[215] = v31 * v31 * v31 - ((2 * v31 * v31 * v31) & 0x64) + 50;
  *(STACK[0x4360] + 510) = *(v39 + (v18 & 0x3F));
  v40 = STACK[0x4360];
  v41 = STACK[0x4378];
  v42 = (*(v40 + 336) & 0xD3 | *(STACK[0x4378] + (*(v40 + 13) & 0x3F ^ 0x32)) & 0x2C) ^ 0x36;
  LOBYTE(v40) = (*(v40 + 146) ^ 0xC9) + 5 + ((2 * (*(v40 + 146) ^ 0x32)) & 0xF7);
  LODWORD(v40) = (v42 << ((v40 * v40 * v40) & 7)) ^ (v42 >> (-(v40 * v40 * v40) & 7));
  v43 = STACK[0x4468];
  STACK[0x1810] = STACK[0x4468];
  *v43 = v40 + (~(2 * v40) | 0x93) + 55;
  v44 = STACK[0x4360];
  LODWORD(v40) = (v44[457] ^ 0x36 | v44[131] ^ 0x32) & (v44[464] ^ 0x36) | (v44[457] ^ 0x36) & (v44[131] ^ 0x32);
  LOBYTE(v42) = *(v38 + (v44[220] & 0x3F ^ 0x32)) ^ 6 | v44[344] ^ 2;
  LODWORD(v40) = (v40 << (-v42 & 7)) ^ (v40 >> (v42 & 7));
  v45 = STACK[0x43A8];
  *STACK[0x43A8] = v40 + (*STACK[0x43A8] ^ 0x36) - ((2 * (v40 + (*STACK[0x43A8] ^ 0x36))) & 0x6C) + 54;
  v46 = STACK[0x4360];
  LODWORD(v40) = (*(STACK[0x4360] + 10) >> 1) ^ 0x19;
  v47 = STACK[0x4370];
  LOBYTE(v32) = *(STACK[0x4370] + (*(STACK[0x4360] + 27) & 0x3F ^ 0x32)) ^ 0x36;
  LODWORD(v40) = (*(STACK[0x4360] + 67) ^ 0x32) - ((v40 >> ((v32 * v32) & 7)) ^ (v40 << (-(v32 * v32) & 7)));
  *(v46 + 67) = v40 + (~(2 * v40) | 0x9B) + 51;
  v48 = STACK[0x4360];
  LOBYTE(v32) = *(STACK[0x4360] + 195);
  LOBYTE(v40) = (v32 ^ 0x32) - (*(v34 + (*(STACK[0x4360] + 136) & 0x3F ^ 0x32)) & 0xAC ^ 0xC6);
  *(v48 + 195) = v40 - 2 * (v40 & 0x33 ^ v32 & 1) + 50;
  v49 = STACK[0x4360];
  LODWORD(v32) = *(v41 + (*(STACK[0x4360] + 182) & 0x3F ^ 0x32));
  v50 = STACK[0x4368];
  v51 = *(STACK[0x4368] + (*(STACK[0x4360] + 56) & 0x3F ^ 0x32));
  v52 = v27 | v28 ^ 8;
  LOBYTE(v27) = *(v47 + (*(STACK[0x4360] + 127) & 0x3F ^ 0x32));
  LODWORD(v19) = v52 & v19;
  LOBYTE(v52) = *(v41 + (*(STACK[0x4360] + 196) & 0x3F ^ 0x32));
  LOBYTE(v12) = *(v47 + (*(v12 + 21) & 0x3F ^ 0x32));
  LODWORD(STACK[0x18A0]) ^= LODWORD(STACK[0x18B0]) ^ 0xFFFFFFDA;
  LOBYTE(v12) = (v27 ^ 0x36) - ((v12 | v52) & 0x49 | (v12 ^ 0x36) & (v52 ^ 0x36)) + (*(v49 + 487) ^ 0x36);
  *(v49 + 487) = v12 - ((2 * v12) & 0x6C) + 54;
  v53 = STACK[0x4360];
  v54 = STACK[0x4370];
  LODWORD(v12) = ((v53[140] & 0x2E | v36[373] & 0xD1) ^ 0x32) & ((v53[329] & 0xFD | (2 * ((*(STACK[0x4370] + (v53[65] & 0x3F ^ 0x32)) >> 1) & 1))) ^ 0x3A);
  *STACK[0x4430] = v12 - ((2 * v12) & 0x6C) + 54;
  *(STACK[0x4360] + 151) = 50;
  LODWORD(v12) = 205 * (*(STACK[0x4360] + 134) & 0x89 | 0x74);
  v55 = STACK[0x4380];
  STACK[0x17F0] = STACK[0x4380];
  *v55 = (v12 >> 10) - ((v12 >> 9) & 0x6C) + 54;
  v56 = STACK[0x43B8];
  STACK[0x17E0] = STACK[0x43B8];
  LODWORD(v55) = ((171 * (*v56 ^ 0x36u)) >> 9) & 0x4D;
  v57 = STACK[0x4360];
  v58 = STACK[0x4378];
  LOBYTE(v37) = (((*(STACK[0x4378] + (*(STACK[0x4360] + 39) & 0x3F ^ 0x32)) ^ 0x36) + 50) & 0x32 | v55) + (*v45 ^ 0x36);
  *v45 = v37 - ((2 * v37) & 0x6C) + 54;
  v59 = STACK[0x4360];
  v60 = STACK[0x4388];
  STACK[0x1800] = STACK[0x4388];
  LODWORD(v37) = (0x37u >> (-(*v60 & 7 ^ 6) & 7)) ^ (55 << (*v60 & 7 ^ 6));
  v61 = (v32 ^ 0x36) + 13;
  LODWORD(STACK[0x1890]) = ((v37 | 0x2D) & (v59[465] ^ 0x36) | v37 & 0x2D) + (v19 ^ 0x4B);
  LOBYTE(v40) = (v59[237] ^ 0x32) + (*(v50 + (v59[201] & 0x3F ^ 0x32)) ^ 0xC5);
  v59[237] = v40 - ((2 * v40) & 0x64) + 50;
  v62 = STACK[0x4360];
  LODWORD(v60) = *(v54 + (*(STACK[0x4360] + 120) & 0x3F ^ 0x32)) ^ 0x36;
  LODWORD(v22) = *(STACK[0x4360] + 500);
  LODWORD(v37) = (v60 | v44[464] ^ 0x36) & (*(STACK[0x4360] + 456) ^ 0x36) | v60 & (v44[464] ^ 0x36);
  STACK[0x18B0] = v61;
  LODWORD(v59) = ((*(v62 + 208) ^ 0x32) + 43) & (*STACK[0x1840] ^ 0xFFFFFFC9) | ((*(v58 + (v61 & 0x3F)) >> 1) ^ 0x1B) & (*STACK[0x1840] ^ 0x36);
  *STACK[0x43B0] = v59 + (*STACK[0x43B0] ^ 0x36) - ((2 * (v59 + (*STACK[0x43B0] ^ 0x36))) & 0x6C) + 54;
  v63 = STACK[0x4370];
  LODWORD(v58) = *(STACK[0x4370] + (*(STACK[0x4360] + 162) & 0x3F ^ 0x32));
  LODWORD(v22) = v22 ^ 0x36;
  *(STACK[0x4360] + 458) ^= ((v58 | 0x7E) & (*STACK[0x4390] ^ 0x36) | v58 & 0x7E ^ 0x36) >> 1;
  v64 = STACK[0x4378];
  LOBYTE(v58) = *(STACK[0x4378] + (v53[65] & 0x3F ^ 0x32));
  LODWORD(STACK[0x1840]) = (v37 | v22) & 0x4F | v37 & v22;
  *STACK[0x4408] ^= ((v58 ^ 0x36) + 49) ^ ((171 * (v33[352] ^ 0x3Au)) >> 9);
  *(v62 + 500) = v22 - (*(STACK[0x4360] + 103) ^ 0x32) - ((2 * (v22 - (*(STACK[0x4360] + 103) ^ 0x32))) & 0x6C) + 54;
  v65 = STACK[0x4360];
  LOBYTE(v37) = (*(v65 + 227) ^ 0x32) - ((2 * *(v63 + (*(v65 + 173) & 0x3F ^ 0x32))) ^ 0x6C);
  *(v65 + 227) = v37 + (~(2 * v37) | 0x9B) + 51;
  v66 = STACK[0x4370];
  *STACK[0x1820] ^= *(STACK[0x4370] + (((171 * (v51 ^ 0xDCu)) >> 9) & 0x3F)) ^ 0x36;
  LOBYTE(v37) = (*STACK[0x43E8] ^ 0x36) - (*(STACK[0x4360] + 26) ^ 0x32) * (*(STACK[0x4360] + 26) ^ 0x32);
  *STACK[0x43E8] = v37 - ((2 * v37) & 0x6C) + 54;
  LODWORD(v64) = *(v64 + (*(v48 + 136) & 0x3F ^ 0x32)) ^ 0x36;
  LODWORD(v37) = (v64 | *(STACK[0x4360] + 449) ^ 0x36) & (*STACK[0x4460] ^ 0x36) | v64 & (*(STACK[0x4360] + 449) ^ 0x36);
  LODWORD(v37) = (v37 | 0x3D) & ((*STACK[0x4458] >> 1) ^ 0x1B) | v37 & 0xBD;
  *STACK[0x4418] = v37 + (~(2 * v37) | 0x93) + 55;
  v67 = STACK[0x4360];
  LODWORD(v64) = (v67[92] ^ 0x32) & (v67[486] ^ 0xFFFFFFC9) | (v67[486] ^ 2) & 0x8A;
  LODWORD(v58) = 205 * (*(STACK[0x4360] + 155) ^ 0x32);
  LODWORD(v64) = (*(STACK[0x4360] + 459) ^ 0x36) - ((v64 >> (-(v58 >> 10) & 7)) ^ (v64 << ((v58 >> 10) & 7)));
  v67[459] = v64 - ((2 * v64) & 0x6C) + 54;
  *STACK[0x43D0] ^= 0xFDu;
  LOBYTE(v67) = (*STACK[0x43C0] ^ 0x36) + (*STACK[0x4428] ^ 0x36) * (*STACK[0x4428] ^ 0x36) * a8;
  *STACK[0x43C0] = v67 - ((2 * v67) & 0x6C) + 54;
  v68 = STACK[0x4360];
  v69 = STACK[0x4378];
  *(v68 + 96) = (2 * *(v66 + (*(STACK[0x1860] + 85) & 0x3F ^ 0x32))) ^ 0xA1;
  LODWORD(v67) = v53[329];
  LODWORD(v63) = (((v67 ^ 0x3A) & (*(v57 + 39) ^ 0x32)) >> 1) + 102;
  *STACK[0x4450] ^= (*(v69 + (v63 & 0x3F)) ^ 0x36) & (*(STACK[0x4368] + (*(STACK[0x4360] + 33) & 0x3F ^ 0x32)) ^ 0x3A);
  v70 = STACK[0x4360];
  v71 = STACK[0x4370];
  LOBYTE(v50) = (*(STACK[0x4370] + (*(v70 + 105) & 0x3F ^ 0x32)) & 0x39 ^ 0x30) & (v67 ^ 0x38) | (*(STACK[0x4370] + (*(STACK[0x4360] + 239) & 0x3F ^ 0x32)) ^ 6 | *(v70 + 148) ^ 2) & 0xC6;
  v72 = STACK[0x43F8];
  LOBYTE(v67) = (*STACK[0x17E0] ^ 0x36) & (*STACK[0x43F8] ^ 0x49) | (*(STACK[0x4360] + 221) ^ 0x32) & (*STACK[0x43F8] ^ 0x36);
  *(v70 + 505) = (v67 & 0x7F) - ((2 * v67) & 0x6C) + ((*(v70 + 142) & ~*(v70 + 343) | *(v70 + 354) & *(v70 + 343)) & 0x80) + 54;
  v73 = STACK[0x4378];
  *(STACK[0x1830] + 44) ^= (*(STACK[0x4360] + 24) ^ 0x32) + ((205 * (*(STACK[0x4378] + (*(STACK[0x4360] + 171) & 0x3F ^ 0x32)) ^ 0x36u)) >> 10);
  *(v49 + 487) ^= ((*(STACK[0x4360] + 137) >> 1) ^ 0x19) & (*(STACK[0x4360] + 353) ^ 0xC5) | (*STACK[0x43A0] & 0x73 ^ 0xB6) & (*(STACK[0x4360] + 353) ^ 0x32);
  *STACK[0x43C8] ^= 3 * ((*(v46 + 67) & 0x90 ^ 0x7F) & (*(STACK[0x4360] + 330) ^ 0x3A) | *(v46 + 67) & 0x6F ^ 0x22);
  *STACK[0x4438] = -125;
  *(STACK[0x4360] + 483) ^= 0xBDu;
  v74 = STACK[0x4360];
  LOBYTE(v70) = ((*(v73 + (*(v74 + 37) & 0x3F ^ 0x32)) & 0x5E | v44[464] & 0xA1) ^ 0x38) + (*(v74 + 188) ^ 0x32);
  *(v74 + 188) = v70 - ((2 * v70) & 0x64) + 50;
  LOBYTE(v74) = *(STACK[0x4368] + (*(STACK[0x4360] + 193) & 0x3F ^ 0x32)) ^ 0x3A;
  LOBYTE(v74) = (v74 | *(STACK[0x4360] + 61) ^ 0x32) & (*(STACK[0x4360] + 467) ^ 0x36) | v74 & (*(STACK[0x4360] + 61) ^ 0x32);
  *STACK[0x4410] = (*STACK[0x4410] ^ 0x36) - v74 - ((2 * ((*STACK[0x4410] ^ 0x36) - v74)) & 0x6C) + 54;
  LOBYTE(v64) = (*(STACK[0x4378] + (*(STACK[0x4360] + 159) & 0x3F ^ 0x32)) ^ 0x36) & ~v50 | v50 & 0x62;
  *STACK[0x4440] ^= (v64 | 0x26) & (*(STACK[0x4360] + 367) ^ 0x3A) | v64 & 0x26;
  LODWORD(v74) = (*(STACK[0x4360] + 480) ^ 0x36 | *(v68 + 116) ^ 0x32) & (*STACK[0x43E0] ^ 0x36) | (*(STACK[0x4360] + 480) ^ 0x36) & (*(v68 + 116) ^ 0x32);
  LODWORD(v73) = (v74 | (v63 >> 1)) & (*STACK[0x17F0] ^ 0x36);
  *STACK[0x43D8] = (v73 | v74 & (v63 >> 1)) - ((2 * (v73 | v74 & (v63 >> 1))) & 0x6C) + 54;
  LODWORD(v64) = ((*(STACK[0x4360] + 494) ^ 0x36u) >> (-(*(STACK[0x4360] + 4) & 7 ^ 2) & 7)) ^ ((*(STACK[0x4360] + 494) ^ 0x36) << (*(STACK[0x4360] + 4) & 7 ^ 2));
  LOBYTE(v74) = *(v71 + (*(STACK[0x4360] + 41) & 0x3F ^ 0x32));
  v75 = STACK[0x1708];
  LOBYTE(v74) = (v74 ^ 0x36 | *(STACK[0x4360] + 247) ^ 0x32) & (*(STACK[0x1850] + 479) ^ 0x36) | (v74 ^ 0x36) & (*(STACK[0x4360] + 247) ^ 0x32);
  LOBYTE(v74) = ((v74 | v64) & (*STACK[0x1810] ^ 0x36) | v74 & v64) + (*v72 ^ 0x36);
  *v72 = v74 - ((2 * v74) & 0x6C) + 54;
  LOBYTE(v74) = (*STACK[0x4448] ^ 0x36) & (*(STACK[0x4360] + 506) ^ 0xC9) | (*(STACK[0x4360] + 506) ^ 0xFE) & 0x23;
  *STACK[0x43B8] = v74 * v74 - ((2 * v74 * v74) & 0x6C) + 54;
  LOBYTE(v74) = (*STACK[0x4420] ^ 0x36) + (*STACK[0x1800] ^ 0x36) - (*(STACK[0x4360] + 508) & 0x25 ^ 0x2E);
  v76 = LODWORD(STACK[0x1900]);
  *STACK[0x4420] = v74 - ((2 * v74) & 0x6C) + 54;
  return (*(v75 + 8 * ((31 * (LODWORD(STACK[0x2574]) != -1491478421)) ^ v8)))(STACK[0xCE0], v76);
}

uint64_t sub_10000CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 ^ 0xA719D86B;
  if ((a8 ^ 0xA719D86B) <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v12 = v9 < 8 || (v10 - 17) < 0xFFFFFFFFFFFFFFF0;
  return (*(v8 + 8 * ((((v12 ^ (LODWORD(STACK[0x17D0]) - 1)) & 1) * (515 * (LODWORD(STACK[0x17D0]) ^ 0x2480) - 5119)) ^ LODWORD(STACK[0x17D0]))))();
}

uint64_t sub_10000CD68(uint64_t a1, int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  LODWORD(STACK[0x1860]) = v11;
  LODWORD(STACK[0x1880]) = v10;
  LODWORD(STACK[0x1900]) = a2;
  return (*(v12 + 8 * v9))(a1, 5, -5147, a3, a4, a5, a6, a7, a8, a9, *&STACK[0x15C0]);
}

uint64_t sub_10000CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12)
{
  v21.val[0].i64[0] = v13 & 8;
  v21.val[0].i64[1] = v21.val[0].i64[0] | 1;
  v21.val[1].i64[0] = v21.val[0].i64[0] | 2;
  v21.val[1].i64[1] = (v12 - 2217) + v21.val[0].i64[0] + a3;
  v21.val[2].i64[0] = v21.val[0].i64[0] | 4;
  v21.val[2].i64[1] = v21.val[0].i64[0] | a2;
  v21.val[3].i64[0] = v21.val[0].i64[0] | 6;
  v21.val[3].i64[1] = v21.val[0].i64[0] | 7;
  *(STACK[0x4500] + v13) = veor_s8(veor_s8(veor_s8(veor_s8(*(a4 + v21.val[0].i64[0]), *(a1 + v21.val[0].i64[0] + 3)), *(v16 + v21.val[0].i64[0])), v19), vmul_s8(*&vqtbl4q_s8(v21, a12), v18));
  return (*(v17 + 8 * (((v14 != v13) * v15) ^ v12)))();
}

uint64_t sub_10000CEB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  v14 = SLODWORD(STACK[0x4274]);
  STACK[0x2A88] = *(v13 + 8 * v14);
  return (*(v13 + 8 * (LODWORD(STACK[0x4270]) + v14 - 895)))();
}

uint64_t sub_10000CF2C()
{
  v1 = STACK[0xC8C];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0xC8C]) ^ 0x222A)))(STACK[0x4130], 0, 0, 0, 0, 0, &STACK[0x2178], 0);
  v3 = STACK[0x1708];
  v4 = STACK[0x4108];
  STACK[0x40B8] = STACK[0x4100];
  STACK[0x40B0] = v4;
  STACK[0x40A8] = 32;
  STACK[0x40A0] = *(v3 + 8 * SLODWORD(STACK[0x444]));
  return (*(v3 + 8 * (v1 ^ 0x2166)))(v2);
}

uint64_t sub_10000CFA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  v14 = STACK[0x1B28];
  v15 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x4110] = v15;
  STACK[0x4118] = v15;
  STACK[0x1B28] = v14 + 64;
  STACK[0x2450] = 0;
  STACK[0xB10] = a1;
  STACK[0x4120] = *(a1 - 184566114);
  v16 = (*(v13 + 8 * (STACK[0x1700] + 4545)))();
  v17 = STACK[0x1708];
  STACK[0x4128] = v16;
  v18 = *(v17 + 8 * ((37 * (v16 == 0)) ^ LODWORD(STACK[0x40F4])));
  LODWORD(STACK[0x4138]) = STACK[0x40F8];
  return v18();
}

uint64_t sub_10000D0D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  v14 = (*(v13 + 8 * (STACK[0x1700] + 4487)))(STACK[0x4208], 0, 0, 0, 0, 0, &STACK[0x2700], 0);
  v15 = STACK[0x1708];
  LODWORD(STACK[0x315C]) = 1443455193;
  v16 = STACK[0x30AC];
  LODWORD(STACK[0x4210]) = STACK[0x30AC];
  return (*(v15 + 8 * (((v16 - 1443455193 < (LODWORD(STACK[0x4200]) ^ 0xFFFFE5D5)) * (LODWORD(STACK[0x4204]) ^ 0x1832)) | LODWORD(STACK[0x41FC]))))(v14);
}

uint64_t sub_10000D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = ((2 * (v8 + LODWORD(STACK[0x4210]) + 8)) & 0xBFDEE7BA) + ((v8 + LODWORD(STACK[0x4210]) + 8) ^ 0x5FEF73DD);
  LODWORD(STACK[0x315C]) = v10 + ((v7 - 5966) ^ 0xF619EE23);
  LODWORD(STACK[0x37B0]) = 68588956;
  v11 = v10 + (((v7 - 4527) | 0x1000) ^ 0xC1F906EC);
  v12 = LODWORD(STACK[0x30A8]) - 815766491;
  v13 = v11 < 0x21E8926F;
  v14 = v11 > v12;
  if (v12 < 0x21E8926F != v13)
  {
    v14 = v13;
  }

  return (*(v9 + 8 * (v7 | (2 * !v14))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10000D2E4()
{
  v1 = STACK[0x1B28];
  v2 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x4130] = v2;
  STACK[0x4108] = v2 + 32;
  STACK[0x1B28] = (LODWORD(STACK[0x40FC]) ^ 0x183ELL) + v1;
  LODWORD(STACK[0x2314]) = 1103264941;
  STACK[0x40B8] = STACK[0x4100];
  STACK[0x40B0] = v2;
  STACK[0x40A8] = 32;
  STACK[0x40A0] = *(v0 + 8 * SLODWORD(STACK[0x450]));
  return (*(v0 + 8 * (LODWORD(STACK[0xC8C]) ^ 0x2166)))();
}

uint64_t sub_10000D358(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  v14 = (*(v13 + 8 * (STACK[0x1700] + 4487)))(STACK[0x4160], 0, 0, 0, 0, 0, &STACK[0x232C], 0);
  v15 = STACK[0x1708];
  LODWORD(STACK[0x2D38]) = 1443455193;
  v16 = STACK[0x30AC];
  LODWORD(STACK[0x416C]) = STACK[0x30AC];
  return (*(v15 + 8 * ((30 * (v16 + (LODWORD(STACK[0x4158]) ^ 0xA9F68B98) < 0xFFFFFFFC)) ^ LODWORD(STACK[0x415C]))))(v14);
}

uint64_t sub_10000D420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = ((2 * (LODWORD(STACK[0x416C]) - 1443455189)) & 0xBCDBF3FE) + ((LODWORD(STACK[0x416C]) - 1443455189) ^ 0xDE6DF9FF);
  LODWORD(STACK[0x2D38]) = v10 + 2006673114;
  LODWORD(STACK[0x3618]) = 68588956;
  v10 -= 650708917;
  v11 = (((v7 - 1169) | 0x850) ^ 0x651CD9DC) + ((v7 - 43764929) & 0x29BBA5F) + LODWORD(STACK[0x30A8]);
  v12 = v10 < 0xB7A4F24A;
  v13 = v10 > v11;
  if (v12 != v11 < 0xB7A4F24A)
  {
    v13 = v12;
  }

  return (*(v9 + 8 * ((88 * v13) ^ v7)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v8);
}

uint64_t sub_10000D584(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  v14 = SLODWORD(STACK[0x41EC]);
  STACK[0x2A88] = *(v13 + 8 * v14);
  return (*(v13 + 8 * (v14 + (LODWORD(STACK[0x41E8]) ^ 0x79F))))();
}

uint64_t sub_10000D604(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  STACK[0x11B8] = v12;
  v14 = SLODWORD(STACK[0x42F4]);
  STACK[0x2A88] = *(v13 + 8 * v14);
  return (*(v13 + 8 * (v14 ^ (LODWORD(STACK[0x42F0]) + 109))))();
}

uint64_t sub_10000D680(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB10] = a1;
  STACK[0xAE0] = v5;
  STACK[0x1308] = v11;
  STACK[0x1310] = v10;
  STACK[0xD88] = v9;
  STACK[0x1318] = v8;
  STACK[0x11A8] = v7;
  STACK[0xAE8] = v6;
  STACK[0x11B0] = a5;
  LODWORD(STACK[0x4254]) = LODWORD(STACK[0x4214]) + LODWORD(STACK[0x4244]) - (((LODWORD(STACK[0x4218]) ^ 0x53ED22FE) + 2 * LODWORD(STACK[0x4244])) & 0xF9038AAC) - 1502067097;
  v13 = STACK[0x31C8];
  v14 = &STACK[0x71F0] + STACK[0x31C8];
  STACK[0x4258] = v14;
  STACK[0x4260] = (v14 + 16);
  STACK[0x4268] = v13 + 32;
  STACK[0x31C8] = v13 + 32;
  LODWORD(STACK[0x3314]) = 0;
  STACK[0x3340] = STACK[0x4228];
  STACK[0x3328] = STACK[0x4230] - 0x156D9811A5838C3ALL;
  return (*(v12 + 8 * ((73 * (STACK[0x4248] == 0)) ^ LODWORD(STACK[0x421C]))))(3579290125, 2906432874);
}

uint64_t sub_10000D814()
{
  v2 = STACK[0x4258];
  *STACK[0x4260] = -65;
  *(v2 + 17) = 0x97312E59D80C0516;
  *(STACK[0x4258] + 25) = -10649;
  *(STACK[0x4258] + 27) = 30406;
  *(STACK[0x4258] + 29) = 26832;
  v3 = STACK[0x4258];
  *(v3 + 31) = -55;
  *v3 = 0x312E59D80C0516BFLL;
  *(v3 + 8) = 0xC968D076C6D66797;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10000D970()
{
  v3 = (v0 ^ 0xA7A) - 243;
  LODWORD(STACK[0x1900]) = v3;
  return (*(v2 + 8 * (((v3 ^ v0 ^ 0x63B ^ 0xF53) * (v1 == 0x5DD485910439E9A4)) ^ v0 ^ 0xA7A)))();
}

uint64_t sub_10000D9C8()
{
  STACK[0x11B8] = v1;
  v4 = *(v0 - 0x5DD485910439E99DLL);
  v5 = STACK[0x1900];
  v6 = *(&off_1002DD400 + (LODWORD(STACK[0x1900]) ^ 0x1306)) - 120714783;
  v7 = v6[*(v0 - 0x5DD485910439E99ELL) ^ 0x8DLL];
  v8 = *(v0 - 0x5DD485910439E99BLL);
  v9 = *(v0 - 0x5DD485910439E998);
  v10 = v6[*(v0 - 0x5DD485910439E996) ^ 0x3CLL] ^ 0xEC;
  STACK[0x3318] = 0x750281D050A8BAE6;
  STACK[0x3330] = 0x791C95BE0100B682;
  v11 = *(&off_1002DD400 + v5 - 4390) - 1697982403;
  v12 = v11[(v4 ^ 0x5D ^ -(v4 ^ 0x5D) ^ (91 - (v4 ^ 6))) + 91];
  STACK[0x32F8] = 0;
  STACK[0x3348] = 0;
  LODWORD(STACK[0x18A0]) = v7 ^ 0xAD;
  STACK[0x3300] = 0x7AE60F840D03EC59;
  v13 = *(&off_1002DD400 + (v5 ^ 0x1339)) - 1440054918;
  v14 = v13[(((v9 ^ 0xD3) - (v9 ^ 0xAE)) ^ 0xFFFFFFFE) + (v9 ^ 0xD3)];
  STACK[0x3320] = 0;
  v15 = *(&off_1002DD400 + (v5 ^ 0x10D7)) - 1200462830;
  LODWORD(v8) = v15[v8 ^ 0xA];
  LODWORD(STACK[0x18B0]) = v12 ^ 0x7E;
  v16 = *(v0 - 0x5DD485910439E9A0);
  STACK[0x3338] = 0x3D0AC9BDCFC3F23DLL;
  LODWORD(STACK[0x3314]) = 11511577;
  LODWORD(v8) = ((v8 ^ 0x44) << 16) - (((v8 ^ 0x44) << 17) & 0xFC0000) - 2038543721;
  LODWORD(v16) = v13[v16 ^ 0xA5];
  v17 = (v10 << 8) | ((v14 ^ 0x47 ^ (((v14 >> 3) ^ (v14 >> 1) ^ 0x3B) - ((2 * ((v14 >> 3) ^ (v14 >> 1) ^ 0x3B)) & 0xFFFFFFEF) - 9)) << 24);
  v18 = ((v16 >> 2) ^ 0x1B) + (v16 ^ 0x6C) - 2 * (((v16 >> 2) ^ 0x1B) & (v16 ^ 0x6C));
  v19 = *(v0 - 0x5DD485910439E9A2);
  v20 = (v15[*(v0 - 0x5DD485910439E9A3) ^ 0x55] ^ 0xB5) << 16;
  v21 = *(v0 - 0x5DD485910439E995);
  LOBYTE(v18) = v16 ^ 0xDB ^ ((v18 >> 1) - (v18 & 0x86) + 67);
  LODWORD(v16) = v6[*(v0 - 0x5DD485910439E99ALL) ^ 0x37];
  LODWORD(STACK[0x1890]) = v18;
  v22 = *(v0 - 0x5DD485910439E997);
  v23 = *(v0 - 0x5DD485910439E99CLL);
  LODWORD(v16) = (((v16 ^ 7) << 8) - (((v16 ^ 7) << 9) & 0x55555555) + 1019324951) ^ 0x3CC1AA17;
  LODWORD(v21) = v11[v21 ^ 0xBC] ^ 0x29;
  v24 = (v16 - (v16 | v8 ^ 0x867E4A97)) ^ ((v8 ^ 0x7981B568) + 1);
  STACK[0x17A0] = v6;
  LODWORD(v8) = ((v24 - 2038543721 + (~(2 * v24) | 0xF3036AD1) + 1) ^ v8) + v16;
  LODWORD(v16) = v13[v23 ^ 0xC4];
  v25 = *(v0 - 0x5DD485910439E99FLL);
  LODWORD(v23) = ((v16 ^ 0x6C) >> 3) ^ ((v16 ^ 0x6C) >> 1);
  v26 = v20 | ((v6[v19 ^ 0xEA] ^ v2) << 8);
  v27 = v17 | ((v15[v22 ^ 1] ^ 0xBA) << 16) | v21;
  LODWORD(STACK[0x1830]) = v27 & 0xF8A52FF ^ v21 & 2;
  LODWORD(STACK[0x1820]) = v27 - 1886760195;
  LODWORD(v8) = v8 ^ ((v16 ^ 0x8C ^ (v23 - ((2 * v23) & 0xFFFFFFC3) + 97)) << 24);
  STACK[0x1770] = v15;
  LODWORD(v16) = v15[v25 ^ 0xF3];
  STACK[0x18F0] = v0 - 0x5DD485910439E9A4;
  v28 = *(v0 - 0x5DD485910439E9A4) ^ 0x7CLL;
  v29 = *(v0 - 0x5DD485910439E999);
  STACK[0x1780] = v13;
  LODWORD(v28) = v13[v28];
  LODWORD(STACK[0x1880]) = v16 ^ 0x6F;
  LODWORD(v16) = ((v28 ^ 0x6C) >> 3) ^ ((v28 ^ 0x6C) >> 1);
  v30 = v11[*(v0 - 0x5DD485910439E9A1) ^ 0x84] ^ 0x4D;
  STACK[0x1790] = v11;
  v31 = v26 | ((v28 ^ 0x73 ^ (v16 - ((2 * v16) & 0xFFFFFFC3) + 97)) << 24) | v30;
  v32 = ((2 * (v11[v29 ^ 0xA4] ^ 0x6E)) & 0xDE) + (v11[v29 ^ 0xA4] ^ 0x35DFE801);
  LODWORD(STACK[0x1750]) = v32;
  LODWORD(STACK[0x1840]) = v32 - 903866479;
  v33 = v8 ^ (v32 - 903866479);
  LODWORD(STACK[0x1860]) = v33 - 939292180;
  LODWORD(STACK[0x17B0]) = v31 ^ 0xB233A80B;
  v34 = STACK[0x3340];
  v35 = STACK[0x3328] - 0xB1A1832E0672A7ELL;
  v36 = LODWORD(STACK[0x4254]) ^ 0xFC81C556;
  LODWORD(STACK[0x1760]) = v36;
  if (v36 <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = *(v3 + 8 * v5);
  LODWORD(STACK[0x1850]) = (2 * v33) & 0x900713D8;
  return v38(v35, 4278255361, 1060360563, 291433832, v34, (v37 - 1), v5 ^ 0xA6Du, 533931165);
}

uint64_t sub_10000E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = (LODWORD(STACK[0x1890]) << 24);
  v9 = (LODWORD(STACK[0x1880]) << ((a7 + 117) & 0xBF ^ 0x2E));
  LODWORD(STACK[0x17D0]) = LODWORD(STACK[0x1860]) - LODWORD(STACK[0x1850]);
  return (*(v7 + 8 * a7))(a1, v9, a3, (a7 - 689560971) & 0x2919DFBF ^ 0x1CAFu, v8);
}

uint64_t sub_10000E54C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61)
{
  LODWORD(STACK[0x1900]) = v65 ^ 0xCFE;
  v67 = ((108127745 * v64 - 1632624397) >> (v65 ^ 0xCB)) + 1910898944 * v64 - 1340017920;
  v68 = ((-1391832064 * v61) | ((((v65 - 214488788) & 0xCC8D7E9 ^ 0x87EB577C) * v61 - 687708724) >> 22)) + 160903168;
  v69 = ((2 * v68) & 0xC767FBF2) + (v68 ^ 0xE3B3FDF9);
  v70 = ((108127745 * v64 - 1632624397) >> (v65 ^ 0xCB)) + 1910898944 * v64 - 865274617 + v69;
  v71 = ((-1781444608 * v63) | ((-1718002411 * v63 + 1749369628) >> 20)) + 1412546560;
  v72 = ((2 * v71) & 0xFD73D502) + (v71 ^ 0x7EB9EA81);
  v73 = ((713495720 * v62) | ((-984554859 * v62 - 88101771) >> 29)) - 704814168;
  v74 = ((2 * v73) & 0x74FFAF7E) + (v73 ^ 0x3A7FD7BF);
  v75 = v74 + v70 + v72 - 2 * (v70 & (v72 + 21370239)) + 1187397056;
  v76 = ((2 * ((-90708624 * v75) | ((-1884717481 * v75) >> 28))) & 0xE7C3AFAE) + (((-90708624 * v75) | ((-1884717481 * v75) >> 28)) ^ 0x73E1D7D7);
  v77 = ((-305461640 * v74) | ((1572430031 * v74 + 1974594703) >> 29)) - 1383111560;
  v78 = ((2 * v77) & 0xBF9EFF92) + (v77 ^ 0x5FCF7FC9);
  v79 = ((1761607680 * v69) | ((-717776279 * v69 - 1763308833) >> 8)) - v76 + 1390532567;
  v80 = ((-553893621 * v72 - 1535366283) >> 2) - (v72 << 30);
  v81 = v80 + 614624734 + ((2 * v80) & 0xC944DBBA ^ 0x7FFFFFFF);
  v82 = v78 - 1607434185 + ((v79 - ((2 * v79) & 0xC944DBBA) - 459117091) ^ v81);
  v83 = -948117163 * v78 - 1402017469;
  v84 = ((1308622848 * v76) | ((-1480475097 * v76 - 1068528577) >> 7)) + 2113929216 - 2 * ((((1308622848 * v76) | ((-1480475097 * v76 - 1068528577) >> 7)) + 2113929216) & 0x72C26CFC ^ ((-1480475097 * v76 - 1068528577) >> 7) & 8) + 1925344500;
  v85 = ((2 * (((-274978144 * v78) | (v83 >> 27)) - 1914886048)) & 0xE5EF9B7A) + ((((-274978144 * v78) | (v83 >> 27)) - 1914886048) ^ 0xF2F7CDBD);
  v86 = ((2 * ((1361217024 * v82) | ((-727150269 * v82) >> 23))) & 0xBFFAD7BE) + (((1361217024 * v82) | ((-727150269 * v82) >> 23)) ^ 0x5FFD6BDF);
  v87 = (1901666304 * v85) | ((-204958565 - 198473015 * v85) >> 19);
  v88 = (v84 ^ (((-2057197568 * (v81 ^ 0xE4A26DDD)) | ((-1368347595 * (v81 ^ 0xE4A26DDD)) >> 21)) - 2 * (((-2057197568 * (v81 ^ 0xE4A26DDD)) | ((-1368347595 * (v81 ^ 0xE4A26DDD)) >> 21)) & 0x72C26CF7 ^ ((-1368347595 * (v81 ^ 0xE4A26DDD)) >> 21) & 3) + 1925344500)) - v85 - v86 + 1391802780;
  v89 = (-805306368 * (v84 ^ 0x72C26CF4)) | ((-1816504563 * (v84 ^ 0x72C26CF4)) >> 4);
  v90 = ((771751936 * v86) | ((-1909740777 * v86 + 1220041207) >> 7)) - 301989888;
  v91 = ((2 * v90) & 0xFE5BEB1C) + (v90 ^ 0xFF2DF58E);
  v92 = ((2 * ((-1400064000 * v88) | ((892703127 * v88) >> 21))) & 0xFFFEE71E) + (((-1400064000 * v88) | ((892703127 * v88) >> 21)) ^ 0x7FFF738F);
  v93 = (v89 ^ (v87 + 311648256)) - v91 - v92 + 2133682461;
  v94 = (((v89 - v91 - 13765234) ^ 0xAD8EEB76) - v92 + 324278164) ^ v93;
  v95 = v94 - ((2 * v94 + 69907768) & 0x6BC9F60) + 2104732236;
  v96 = v95 ^ 0x835E4FB0;
  v97 = ((2 * (v92 - 2147447695 + v96)) & 0x9B3FE6DE) + ((v92 - 2147447695 + v96) ^ 0x4D9FF36F);
  v98 = ((2 * (v91 + 13765235 + (v95 ^ 0x7CA1B04F))) & 0x92E7D7FE) + ((v91 + 13765235 + (v95 ^ 0x7CA1B04F)) ^ 0x4973EBFF);
  LODWORD(STACK[0x18B0]) = v95;
  v99 = ((2 * (v95 ^ v93)) & 0x6D2DFFF2 ^ 0x42C9F60) + (v95 ^ v93 ^ 0xB5C8B049);
  v100 = v99 - 75779072;
  v101 = -1396169453 * v99 - 649854075;
  v102 = v99 + 1873508824;
  LODWORD(STACK[0x1860]) = v99 - 915865593;
  if (v99 - 915865593 >= 0x8BD03A28)
  {
    v103 = -1109201375;
  }

  else
  {
    v102 = v99 - 75779072;
    v103 = 840086521;
  }

  if (((a4 + v98 - 179) & 0x100000) != 0)
  {
    v104 = -1048576;
  }

  else
  {
    v104 = 0x100000;
  }

  LODWORD(STACK[0x1850]) = v104;
  if (v102 == 840086521)
  {
    v100 = v103;
  }

  LODWORD(STACK[0x1740]) = v100;
  v105 = -1683074279 * v98 + 1909999385;
  v106 = v105 & 0xC;
  v107 = (-89186709 - 864474821 * v97) >> (v105 & 0xC);
  LODWORD(STACK[0x1880]) = v98;
  v108 = ((1281622016 * v98) | (v105 >> 14)) + 476315648 - 2 * ((((1281622016 * v98) | (v105 >> 14)) + 476315648) & 0x161D71F ^ (v105 >> 14) & 1) - 2124294370;
  LODWORD(STACK[0x1810]) = v97;
  v109 = (v107 >> (v106 ^ 0xC)) | (-1817182208 * v97 - 424673280);
  v110 = ((2 * v109) & 0xFF5EE61C) + (v109 ^ 0x7FAF730E);
  v111 = v101 >> 3;
  v112 = (v101 >> 3) - ((v101 >> 2) & 0x3A0FCBEA) - 1123555851;
  v113 = v112 ^ 0xBD07E5F5 | (1610612736 * v99 - 1610612736);
  v114 = -127468265 * v110 - 1158425666;
  v115 = v110 + (v108 ^ (((715998640 * v96) | ((1923798107 * v96) >> 28)) - ((2 * ((715998640 * v96) | ((1923798107 * v96) >> 28))) & 0x2C3AE3C) - 2124294370)) - v113 + 2 * ((v108 ^ 0x161D71E) & ((715998640 * v96) | ((1923798107 * v96) >> 28))) - 2142204686;
  v116 = ((2 * ((-1983905792 * v115) | ((-431605209 * v115) >> 10))) & 0x9EAFFDC6) + (((-1983905792 * v115) | ((-431605209 * v115) >> 10)) ^ 0x4F57FEE3);
  v117 = ((-1562378240 * v110) | (v114 >> 11)) + 2009071616;
  v118 = (363810816 * v116) | ((1980848885 * v116 - 1843772735) >> 20);
  HIDWORD(v120) = v111;
  LODWORD(v120) = 1806412821 * v113;
  v119 = v120 >> 1;
  v121 = ((-1040351232 * (v108 ^ 0x8161D71E)) | ((-1282833413 * (v108 ^ 0x8161D71E)) >> 17)) + 1331166947 - v119 + v117 - v116;
  v122 = ((2 * (v118 - 1540616192)) & 0xF57FF5F8) + ((v118 - 1540616192) ^ a61);
  v123 = ((-1144728853 * v119) << (v112 & 0x1F ^ 0x15) << (v112 & 0x1F ^ 0xA)) | ((-1144728853 * v119) >> 1);
  v124 = v123 - ((2 * v123) & 0x7839BD24) + 1008524946;
  HIDWORD(v120) = v114 >> 11;
  LODWORD(v120) = 1366725145 * v117;
  v125 = ((2 * ((593257472 * v121) | ((-1312237799 * v121) >> 22))) & 0xEF9F9DBE) + (((593257472 * v121) | ((-1312237799 * v121) >> 22)) ^ 0xF7CFCEDF);
  v126 = (1490712661 * v122 + 1711508052) >> 26;
  v127 = (v120 >> 2) + v125 + v122 + 225457701;
  v128 = (v127 - ((2 * v127) & 0x7839BD24) + 1008524946) ^ v124;
  v124 ^= 0x3C1CDE92u;
  v129 = -1429576441 * v124;
  v130 = (916329792 * v122) | v126;
  v131 = 697572352 * v124;
  v132 = ((-869419848 * v128) | ((1501935255 * v128) >> 29)) - 2 * (((-869419848 * v128) & 0x36FE1FF8 | ((1501935255 * v128) >> 29) & 0x36FE1FFF) ^ (-869419848 * v128) & 8) + 922623991;
  v133 = ((-843626817 * v125 - 721769057) >> v83 >> (v83 & 0x1F ^ 0x1F)) | (-1687253634 * v125 - 1443538114);
  v134 = v133 - ((2 * v133) & 0x65739258) + 851036460;
  v135 = (v131 & 0xFFFFFC00 | (v129 >> 22)) - (v130 - 2132634368);
  v136 = v134 ^ (v135 + 851036460 + (~(2 * v135) | 0x9A8C6DA7) + 1) ^ v132;
  v137 = v134 ^ (v130 - 2132634368 - 2 * ((v130 - 2132634368) & 0x32B9C93C ^ v126 & 0x10) + 851036460);
  v138 = -1993810339 * v137;
  v139 = (v136 ^ 0x36FE1FF7) - 1749773593 + ((-1993810339 * v137 - ((307346618 * v137) & 0x6DFC3FEE) + 922623991) ^ v132 ^ 0xD422E020);
  v140 = v139 - ((2 * v139) & 0x341900F0) + 437026936;
  if ((v136 & 0x4000000) != 0)
  {
    v141 = 0x4000000;
  }

  else
  {
    v141 = -67108864;
  }

  v142 = (v141 + (v136 ^ 0x36FE1FF7)) ^ 0x84D40051;
  if ((v132 ^ v138) == 0x36FE1FF7)
  {
    v143 = 2133589934;
  }

  else
  {
    v143 = v142;
  }

  v144 = v136 ^ 0xA21A97F9 ^ v143;
  if (!v131)
  {
    v144 = v136 ^ 0xEB716D06;
  }

  LODWORD(STACK[0x17E0]) = v144;
  LODWORD(STACK[0x18A0]) = v140;
  v145 = ((2 * ((v132 ^ 0x36FE1FF7) - (v140 ^ 0x1A0C8078))) & 0xFEBB327E) + (((v132 ^ 0x36FE1FF7) - (v140 ^ 0x1A0C8078)) ^ 0xFF5D993F);
  v146 = ((784328868 * v145) | ((1269824041 * v145 + 2068442857) >> 30)) - 316163164;
  v147 = ((2 * v146) & 0xFFBEFF6E) + (v146 ^ 0xFFDF7FB7);
  v148 = -809762816 * v147 + 1016856576;
  LODWORD(STACK[0x17F0]) = v148;
  v149 = v67 == 0;
  v150 = ((((-834964497 * v147 + 114003751) >> 14) - (((-834964497 * v147 + 114003751) >> 13) & 0x20964) - 466549582) ^ 0xE43104B2 | v148) ^ 0x1BCC0000;
  if (v149)
  {
    v150 = ((-834964497 * v147 + 114003751) >> 14) - (((-834964497 * v147 + 114003751) >> 13) & 0x20964) - 466549582;
  }

  LODWORD(STACK[0x1800]) = v150;
  v151 = (*(v66 + 8 * (v65 + 5282)))(1032);
  v152 = STACK[0x1708];
  STACK[0x18F0] = 0;
  STACK[0x3308] = v151;
  return (*(v152 + 8 * ((466 * (v151 != 0)) ^ v65)))();
}

uint64_t sub_10000F13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x1830]) = LODWORD(STACK[0x1820]) - 2 * LODWORD(STACK[0x1830]);
  LODWORD(STACK[0x1430]) = LODWORD(STACK[0x1850]) + LODWORD(STACK[0x1880]) - 1232333823;
  LODWORD(STACK[0x1490]) = LODWORD(STACK[0x1810]) - 1302328175;
  v16 = STACK[0x18A0];
  v17 = (STACK[0x18A0] & 0xC9BFFAAE ^ (LODWORD(STACK[0x17E0]) ^ 0xDD8F72F1) & (v8 ^ 0xB6940500) ^ 0x80C8028) + ((LODWORD(STACK[0x18A0]) ^ v12) & 0x36400551 ^ v11);
  v18 = ((2 * (v15 + (v7 ^ 0x32B9C92C))) & 0x8DFF6CF6) + ((v15 + (v7 ^ 0x32B9C92C)) ^ 0xC6FFB67B);
  LODWORD(STACK[0x1440]) = v18 + 956320133;
  LODWORD(STACK[0x14A0]) = ((v18 + 956320133) ^ (v13 + 10643137) ^ v17) + v15 - 2 * (((v18 + 956320133) ^ (v13 + 10643137) ^ v17) & v15);
  LODWORD(STACK[0x1860]) = v17;
  v19 = ((-966000640 * v17) | ((1684730267 * v17) >> 14)) - 2 * (((-966000640 * v17) | ((1684730267 * v17) >> 14)) & 0x27211C3F ^ ((1684730267 * v17) >> 14) & 2) - 1491002307;
  v20 = ((-1659659056 * v18) | ((1238448589 * v18 - 1473348479) >> 28)) - 2098739184;
  v21 = ((2 * v20) & 0x7F6E9FFE) + (v20 ^ 0xBFB74FFF);
  v22 = (((v16 << 31) + (v15 << 27)) & 0xF8000000 | ((-128804399 * v15) >> 5)) + v21 - v14 + 1076375480;
  v23 = v19 ^ 0xA7211C3D;
  v24 = (v19 ^ 0xA7211C3D) & v22;
  v25 = ((v22 - ((2 * v22) & 0x4E42387A) - 1491002307) ^ v19) + 2 * v24;
  v26 = (709382671 * v25) >> (v24 & 0xC) >> (v24 & 0xC ^ 0xC);
  v27 = v26 | (552599552 * v25);
  v28 = 1807982409 * v27;
  v29 = v9 + 2 * ((LODWORD(STACK[0x1800]) ^ 0x64300000) & STACK[0x17F0]);
  v30 = ((-1194328064 * v23) | ((1699740557 * v23) >> 12)) - ((2 * ((-1194328064 * v23) | ((1699740557 * v23) >> 12))) & 0xB287CD3E) + 1497622175;
  v31 = v27 ^ ((((1519522053 * v21 - 810712827) >> 7) | (167772160 * v21)) + 167772160) ^ v29;
  v32 = (v31 - ((2 * v31) & 0xB287CD3E) + 1497622175) ^ v30;
  v33 = ((2 * (__PAIR64__(v26, v28) >> 1)) & 0xFEEEDFEE) + ((__PAIR64__(v26, v28) >> 1) ^ 0x7F776FF7);
  v34 = (-194651932 * v33) | ((2098820665 * v33 + 112015361) >> 30);
  v35 = ((-1245163488 * v32) | ((-844217727 * v32) >> 27)) - 2 * (((-1245163488 * v32) | ((-844217727 * v32) >> 27)) & 0x2F120EB5 ^ ((-844217727 * v32) >> 27) & 5) - 1357771088;
  v36 = (-1199570944 * (v30 ^ 0x5943E69F)) | ((-858375311 * (v30 ^ 0x5943E69F)) >> 9);
  v37 = ((2 * v36) & 0xFF7BFBF2) + (v36 ^ 0x7FBDFDF9);
  v38 = ((-1925185536 * v29) | ((630818357 * v29) >> 10)) - 2138533879 + v33;
  v39 = v37 + (v35 ^ (v38 - ((2 * v38) & 0x5E241D60) - 1357771088)) + 2 * ((v35 ^ 0x2F120EB0) & v38) - 2143157753;
  v40 = ((1646099715 * (v35 ^ 0xAF120EB0)) >> 7) | (100663296 * (v35 ^ 0xAF120EB0));
  v41 = ((2 * v40) & 0xFFBE9FD6) + (v40 ^ 0xFFDF4FEB);
  v42 = v41 + 2142229;
  v43 = v41 + 2142229 + v34 + 448061444;
  v44 = ((2 * ((1413480448 * v39) | ((178201937 * v39) >> 10))) & 0xB67FBB7E) + (((1413480448 * v39) | ((178201937 * v39) >> 10)) ^ 0xDB3FDDBF);
  v45 = (((1040237031 - 1457403615 * v37) >> 7) | (1107296256 * v37)) + v34 + 448061444 + v41 - v44 - 1453290028;
  v46 = v45 - ((2 * v45) & 0xEE69D7D8) + 1999956972;
  v44 += 616571457;
  v47 = (v44 + (v43 ^ 0xC27E5E1F) - 2 * ((v44 + (v43 ^ 0xC27E5E1F) + 2053173416) & 0x7734EBED ^ (v44 + (v43 ^ 0xC27E5E1F)) & 1) + 1905646740) ^ v46;
  v48 = v47 - ((2 * v47 - 755809278) & 0xBCCA1E22);
  v49 = v48 - 941706990;
  LODWORD(STACK[0x15B0]) = v46;
  v50 = ((2 * ((v49 ^ 0x5E650F11) + v42)) & 0x8FDEDBFE) + (((v49 ^ 0x5E650F11) + v42) ^ 0x47EF6DFF);
  v51 = 1850227603 * ((v48 - 941706990) ^ 0x5E650F11);
  v52 = ((2 * ((v49 ^ 0x5E650F11) + v44)) & 0xF6DF5EF6) + (((v49 ^ 0x5E650F11) + v44) ^ 0xFB6FAF7B);
  LODWORD(STACK[0x1400]) = (v48 - 941706990) ^ v46;
  LODWORD(STACK[0x1540]) = v50;
  v53 = HIBYTE(v51);
  LODWORD(STACK[0x1420]) = (v48 - 941706990) ^ 0x5E650F11;
  LODWORD(STACK[0x1530]) = v52;
  v54 = ((-341835776 * v52) | ((336430941 * v52 + 1034183505) >> 11)) + 1780482048;
  v55 = (1211863808 * ((v48 - 941706990) ^ 0x5E650F11)) | HIBYTE(v51);
  v56 = ((1797259264 * v50) | ((-418323623 * v50 - 1236687527) >> 11)) - 1423966208 - 2 * ((((1797259264 * v50) | ((-418323623 * v50 - 1236687527) >> 11)) - 1423966208) & 0x323520F9 ^ ((-418323623 * v50 - 1236687527) >> 11) & 0x10) + 842342633;
  v57 = v56 ^ 0x323520E9;
  v58 = 48393035 * (v56 ^ 0x323520E9);
  v59 = (960777600 * (v49 ^ v46 ^ 0x2951E4FD)) | ((-2005759845 * (v49 ^ v46 ^ 0x2951E4FD)) >> 25);
  v60 = ((2 * v59) & 0x96AFDEFA) + (v59 ^ 0x4B57EF7D);
  v61 = (((v54 ^ v55) - ((2 * (v54 ^ v55)) & 0x646A41D2) + 842342633) ^ v56) - v60 + 1264054141;
  v62 = ((2 * ((1241212928 * v61) | ((-1771487379 * v61) >> 21))) & 0xFFB7F56E) + (((1241212928 * v61) | ((-1771487379 * v61) >> 21)) ^ 0xFFDBFAB7);
  HIDWORD(v63) = (336430941 * v52 + 1034183505) >> 11;
  LODWORD(v63) = 1071869913 * v54;
  v64 = ((2 * (v63 >> 2)) & 0xCAF8F6FE) + ((v63 >> 2) ^ 0x657C7B7F);
  v65 = ((-127295488 * v60) | ((-2065710259 * v60 + 1228783719) >> 19)) - 1207115776;
  v66 = ((2 * v65) & 0xFFFB3EFE) + (v65 ^ 0xFFFD9F7F);
  v67 = (2056424016 * v62) | ((-408344411 * v62 + 339464205) >> 28);
  v68 = 2130805545 * v66 - 1757120599;
  v69 = (-1543503872 * v66) | (v68 >> 6);
  v70 = v64 + 1899341184 * v57 - v66 + (v58 >> 25) - v62 - 1705173321;
  v71 = ((2 * (v67 + 1136459984)) & 0x7FFFBAEE) + ((v67 + 1136459984) ^ 0x3FFFDD77);
  v72 = v69 - 1543503872 - 2 * ((v69 - 1543503872) & 0x1573120F ^ (v68 >> 6) & 4) + 359862795;
  v73 = 1294895675 * (v72 ^ 0x1573120B);
  v74 = ((-636294480 * v70) | ((-308203861 * v70) >> 28)) - 2 * (((-636294480 * v70) | ((-308203861 * v70) >> 28)) & 0x359DC3E7 ^ ((-308203861 * v70) >> 28) & 4) + 899531747;
  v75 = ((-1542455296 * v64) | ((-1509803455 * v64 - 1234444607) >> 12)) - v71 + 739237239;
  v76 = ((-156415904 * v71) | ((934636099 * v71 + 674415579) >> 27)) + 106462048;
  v77 = 343277568 * (v72 ^ 0x1573120B);
  v78 = (v75 - ((2 * v75) & 0x2AE62416) + 359862795) ^ v72;
  v79 = (v78 - ((2 * v78) & 0x6B3B87C6) + 899531747) ^ v74;
  HIDWORD(v63) = v74 ^ 0xFFFFFFE3;
  LODWORD(v63) = -153025535 * (v74 ^ 0x359DC3E3);
  v80 = ((2 * (v63 >> 10)) & 0xCFFFFE4E) + ((v63 >> 10) ^ 0xE7FFFF27);
  v81 = v76 - 402653401 - v80;
  v82 = ((2 * ((-801669120 * v79) | ((-664297361 * v79) >> 17))) & 0xDF77F7CE) + (((-801669120 * v79) | ((-664297361 * v79) >> 17)) ^ 0xEFBBFBE7);
  v83 = v80 + 402653401;
  v84 = (v76 ^ (v77 & 0xFFFE0000 | (v73 >> 15)) ^ (v80 + 402653401)) - v82 - 272892953;
  v85 = v84 - ((2 * v84) & 0x7C41AF96) - 1105143861;
  v86 = (v82 + 1504706039 * v81 + 272892953 - 2 * ((v82 + 1504706039 * v81 + 838294385) & 0x3E20D7CF ^ (v82 + 1504706039 * v81 + 272892953) & 4) - 539742429) ^ v85;
  v87 = v86 - 2 * ((v86 + 1677173168) & 0x698E1E3F ^ v86 & 6) + 1300611049;
  v88 = ((2 * (v82 + 272892953 + (v87 ^ 0x1671E1C6) + 1)) & 0x3BFFFE8C) + ((v82 + 272892953 + (v87 ^ 0x1671E1C6) + 1) ^ 0x9DFFFF46);
  v89 = ((2 * (v83 + (v87 ^ 0x1671E1C6) + 1)) & 0x97FE255E) + ((v83 + (v87 ^ 0x1671E1C6) + 1) ^ 0xCBFF12AF);
  LODWORD(STACK[0x1460]) = v89;
  v90 = (-1629159424 * v89) | ((-649290011 * v89 + 878200693) >> 16);
  LODWORD(STACK[0x1720]) = v87;
  LODWORD(STACK[0x1850]) = v87 ^ v85;
  v91 = ((-582359949 * (v87 ^ 0xE98E1E39)) >> (v53 & 2) >> (v53 & 2 ^ 2)) - (v86 << 30);
  v92 = ((2 * (v90 + 1198850048)) & 0xFFBFF7FE) + ((v90 + 1198850048) ^ 0x7FDFFBFF);
  v93 = ((-711557120 * v88) | ((-1038505171 * v88 + 1084645042) >> 17)) + 794361856;
  v94 = ((2 * v93) & 0xDED1B3EE) + (v93 ^ 0x6F68D9F7);
  v95 = ((2 * ((375554048 * (v87 ^ v85 ^ 0x57AEC9F2)) | ((606743749 * (v87 ^ v85 ^ 0x57AEC9F2u)) >> 17))) & 0xFE7E9F76) + (((375554048 * (v87 ^ v85 ^ 0x57AEC9F2)) | ((606743749 * (v87 ^ v85 ^ 0x57AEC9F2u)) >> 17)) ^ 0x7F3F4FBB);
  v96 = v95 - v94 - 265713092 + ((v92 - 2145385471) ^ v91);
  v97 = ((2 * ((225055296 * v96) | ((1949673545 * v96) >> 26))) & 0x77DD3F96) + (((225055296 * v96) | ((1949673545 * v96) >> 26)) ^ 0x3BEE9FCB);
  v98 = ((-1626275840 * v94) | ((991534865 * v94 + 1149902233) >> 16)) + 496566272 - 2 * ((((-1626275840 * v94) | ((991534865 * v94 + 1149902233) >> 16)) + 496566272) & 0x36CE86DA ^ ((991534865 * v94 + 1149902233) >> 16) & 0x10) - 1227979062;
  v99 = ((-803198068 * v95) | ((872942307 * v95 + 937885487) >> 30)) - 543425348;
  v100 = ((2 * v99) & 0xEF7FD47E) + (v99 ^ 0x77BFEA3F);
  LODWORD(v63) = __ROR4__((((602219712 * v92) | ((75277464 * v92 - 1978727272) >> 29) | (8 * ((9409683 * v92 + 1363271827) >> 29))) + 1350051008) ^ 0x6EF4179, 3);
  v101 = v100 - 2009066047 + (((v63 ^ 0x20DDE82F) - v97 + 1005494219 - ((2 * ((v63 ^ 0x20DDE82F) - v97 + 1005494219)) & 0x6D9D0D94) - 1227979062) ^ v98);
  v102 = ((502682719 * v97 - 370010197) >> 3) - (v97 << 29) + 1610612736;
  v103 = ((2 * v102) & 0x67F73D72) + (v102 ^ 0xB3FB9EB9);
  v104 = ((2 * ((-533387264 * v101) | ((1933313701 * v101) >> 21))) & 0xFDB677DA) + (((-533387264 * v101) | ((1933313701 * v101) >> 21)) ^ 0xFEDB3BED);
  v105 = -771751936 * v100 + ((1669751785 * v100 - 792498263) >> 7) + 1375731712;
  v106 = ((2 * v105) & 0xFF6BFADA) + (v105 ^ 0x7FB5FD6D);
  v107 = 521577112 * (v98 ^ 0xB6CE86CA) - v106 + ((1138938963 * (v98 ^ 0xB6CE86CA)) >> 29) - v103 + 886464569 + v104;
  v108 = ((-109051904 * v103) | ((-1173449229 * v103 - 1666668187) >> 9)) - 1300234240;
  v109 = ((127111168 * v104) | ((568359225 * v104 - 1518558405) >> 20)) - 902582272 - 2 * ((((127111168 * v104) | ((568359225 * v104 - 1518558405) >> 20)) - 902582272) & 0x517D0AFF ^ ((568359225 * v104 - 1518558405) >> 20) & 0x12) + 1367149293;
  v110 = v108 ^ (((-403422750 * v106) | ((311217251 - 201711375 * v106) >> 31)) + 622434502);
  v111 = ((-1225118336 * v107) | ((-1351748517 * v107) >> 25)) - 2 * (((-1225118336 * v107) | ((-1351748517 * v107) >> 25)) & 0x7DA6FDCE ^ ((-1351748517 * v107) >> 25) & 0xE) + 2108095936;
  v112 = v109 ^ (v110 - ((2 * v110) & 0xA2FA15DA) + 1367149293);
  v113 = (v112 - ((2 * v112) & 0xFB4DFB80) + 2108095936) ^ v111;
  LODWORD(STACK[0x14C0]) = v111;
  v114 = (v111 ^ 0x8259023F) + v108 + (v109 ^ 0xAE82F512) - ((2 * ((v111 ^ 0x8259023F) + v108 + (v109 ^ 0xAE82F512)) + 101097400) & 0x754BB4E) - 1767002749;
  v115 = (v113 - ((2 * v113) & 0x754BB4E) - 2085986905) ^ v114;
  v116 = v114 ^ (v112 - ((2 * v112) & 0x754BB4E) - 2085986905);
  v117 = ((2 * ((v109 ^ 0x517D0AED) - (v115 ^ 0x8E13EEB6))) & 0x7EFEFFFE) + (((v109 ^ 0x517D0AED) - (v115 ^ 0x8E13EEB6)) ^ 0x3F7F7FFF);
  LODWORD(STACK[0x1730]) = v114;
  LODWORD(STACK[0x14B0]) = v117;
  LODWORD(STACK[0x1480]) = v116;
  v118 = (1016111104 * (v114 ^ 0xDB9B311)) | ((89777285 * (v114 ^ 0xDB9B311)) >> 19);
  v119 = ((2 * v118) & 0xFC57FECA) + (v118 ^ 0xFE2BFF65);
  v120 = (-473358408 * (v116 ^ 0x8E13EEB6)) | ((1551442935 * (v116 ^ 0x8E13EEB6)) >> 29);
  v121 = ((2 * v120) & 0xF6AFFF52) + (v120 ^ 0xFB57FFA9);
  v122 = ((1085229056 * v117) | ((-456649239 * v117 - 1539533335) >> 21)) - 458274816;
  v123 = ((2 * v122) & 0xFEC0C5FE) + (v122 ^ 0xFF6062FF);
  LODWORD(STACK[0x1710]) = v115 ^ 0x8E13EEB6;
  v124 = ((-1087916032 * (v115 ^ 0x8E13EEB6)) | ((-1682447113 * (v115 ^ 0x8E13EEB6)) >> 21)) - v119 + v121;
  v125 = -1879048192 * v121 + ((1765168361 * v121 + 509532975) >> 4) - 0x10000000;
  v126 = ((2 * v125) & 0xBE7F7B3E) + (v125 ^ 0x5F3FBD9F);
  v127 = ((-2093709720 * v119) | ((-261713715 * v119 + 1155378207) >> 29)) + 653091064;
  v128 = ((2 * v127) & 0xF77BF7BA) + (v127 ^ 0xFBBDFBDD);
  v129 = (-375782144 * (v124 - v123 + 36987579)) | ((-454452731 * (v124 - v123 + 36987579)) >> 24);
  v130 = ((2 * v129) & 0x7FFEBFFE) + (v129 ^ 0x3FFF5FFF);
  v131 = 1150605312 * v123 - v128 - v126 + ((698913435 * v123 - 1713987173) >> 21) - v130 + 1342828923;
  v132 = 1249020099 * v130 + 535587011;
  v133 = ((-1490514896 * v130) | (v132 >> 28)) - 20542416;
  v134 = ((-2054673408 * v126) | ((-404659701 * v126 + 1609366571) >> 22)) - v133 - 1276072960;
  v135 = ((830197760 * v131) | ((1880299453 * v131) >> 20)) - ((2 * ((830197760 * v131) | ((1880299453 * v131) >> 20))) & 0x78EFF790) - 1132987448;
  v136 = (v134 - ((2 * v134) & 0x78EFF790) - 1132987448) ^ v135;
  HIDWORD(v63) = v132 >> 28;
  LODWORD(v63) = -258688835 * v133;
  v137 = v63 >> 1;
  v138 = ((-1923088384 * v128) | ((-565207957 * v128 - 1561719135) >> 11)) - 736100352 - 2 * ((((-1923088384 * v128) | ((-565207957 * v128 - 1561719135) >> 11)) - 736100352) & 0x631B008 ^ ((-565207957 * v128 - 1561719135) >> 11) & 8) + 103919616;
  v139 = (v136 - ((2 * v136) & 0xC636000) + 103919616) ^ v138;
  v140 = ((2 * ((1891079872 * v139) | ((1438834267 * v139) >> 26))) & 0x3FC7FF6E) + (((1891079872 * v139) | ((1438834267 * v139) >> 26)) ^ 0x9FE3FFB7);
  v141 = ((-1551884288 * (v135 ^ 0xBC77FBC8)) | ((-2056971263 * (v135 ^ 0xBC77FBC8)) >> 19)) - 2 * (((-1551884288 * (v135 ^ 0xBC77FBC8)) | ((-2056971263 * (v135 ^ 0xBC77FBC8)) >> 19)) & 0x5136DB1E ^ ((-2056971263 * (v135 ^ 0xBC77FBC8)) >> 19) & 0x10) + 1362549518;
  v142 = (v137 ^ ((993263616 * (v138 ^ 0x631B000)) | ((1359482573 * (v138 ^ 0x631B000)) >> 14))) - 1612447817 + (v141 ^ 0x5136DB0E) - v140;
  v140 += 1612447817;
  v143 = v142 ^ 0x28F9D91B ^ (v140 + 105106857 * (v141 ^ (v137 + 1362549518 + (~(2 * v137) | 0x5D9249E3) + 1)));
  v144 = v143 - 2 * ((v143 + 2009979636) & 0x6DF5CDC7 ^ v143 & 2) + 1707321529;
  v145 = (v144 ^ 0x6DF5CDC5) + v140 - ((2 * ((v144 ^ 0x6DF5CDC5) + v140)) & 0xF61AB1EE) + 2064472311;
  LODWORD(STACK[0x1820]) = LODWORD(STACK[0x1890]) ^ 0xCCB0FE1D;
  v146 = STACK[0x18B0];
  LODWORD(STACK[0x1410]) = v48 - 941706980;
  LODWORD(STACK[0x1880]) = (v144 ^ 0x6DF5CDC5) + v142 - ((2 * ((v144 ^ 0x6DF5CDC5) + v142)) & 0xB7CEDD1E) + 1541893775;
  LODWORD(STACK[0x1800]) = v144;
  LODWORD(STACK[0x1470]) = v144 ^ v141;
  LODWORD(STACK[0x17E0]) = (v48 - 941706990) ^ v146;
  LODWORD(STACK[0x1450]) = v88 + 1644167354;
  LODWORD(STACK[0x1600]) = v115 ^ 0xC17BF92;
  LODWORD(STACK[0x17F0]) = HIBYTE(v115) ^ 0x8E;
  v147 = *(a7 + 8 * v10);
  LODWORD(STACK[0x1810]) = v145;
  return v147(-1326265098, 3845);
}

uint64_t sub_100010710@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v15 = a8 ^ *(*(v11 + 8 * (v13 + a5)) + 4 * ((v8 ^ v14) ^ v12) + a1);
  *(a6 + 4 * v8) = v10 ^ (v15 + a3 - (((v13 - 2668) ^ (a4 + 2213)) & (2 * v15)));
  return (*(a7 + 8 * (((v9 == 0) * a2) ^ v13)))();
}

uint64_t sub_100010778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  STACK[0x18F0] = a6;
  v8 = (*(a7 + 8 * (v7 + 7672)))(1028);
  v9 = STACK[0x1708];
  STACK[0x32F8] = v8;
  LODWORD(STACK[0x1900]) = v7 + 3248;
  return (*(v9 + 8 * (((v8 == 0) * (((v7 + 2602) ^ 0xFFFFFD77) + v7 + 3248)) ^ v7)))();
}

uint64_t sub_1000108DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>)
{
  v18 = *(*(a1 + 8 * v12) + 4 * ((((v9 + 127 * v11) * a9) ^ v14) ^ 3u) + a3);
  v19 = (v18 + a5 - (a8 & (2 * v18))) ^ v15;
  *(v17 + 4 * ((v9 + 127 * v11) * a9)) = v13 ^ (v19 + a6 - (a4 & (2 * v19)));
  return (*(a7 + 8 * (((v10 == 0) * a2) ^ v16)))();
}

uint64_t sub_100010950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x13D0]) = v7;
  LODWORD(STACK[0x1900]) = v8 - 2320;
  v10 = *(a7 + 8 * (v8 + 2104));
  STACK[0x1850] = v9;
  v11 = v10(1032);
  v12 = STACK[0x1708];
  STACK[0x3338] = v11 + 0x3D0AC9BDCFC3F23DLL;
  STACK[0x1860] = v11;
  return (*(v12 + 8 * (((v11 == 0) * (((v8 - 4405) | 0xD4) - 4212)) ^ v8)))();
}

uint64_t sub_1000109C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x13E0]) = v9;
  LODWORD(STACK[0x13C0]) = v8;
  v10 = (LODWORD(STACK[0x1540]) - 1206873599);
  v11 = LODWORD(STACK[0x14B0]) - 1065320447;
  v12 = *(a7 + 8 * v7);
  LODWORD(STACK[0x1540]) = v7 + 4692;
  LODWORD(STACK[0x14B0]) = v11;
  return v12(LODWORD(STACK[0x14C0]), 2383670966, 4216191872, LODWORD(STACK[0x1730]), v10, LODWORD(STACK[0x17F0]));
}

uint64_t sub_100010AEC(int a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v22 = a5 ^ v16 ^ (*(*(&off_1002DD400 + v13 - 3790) + 4 * (a6 ^ a8 ^ v9 ^ v11) - 1240289267) + (a6 ^ a8 ^ v9 ^ 0xFFFFFF5F) - 1111963103);
  v23 = v12 ^ (v22 + v20 - (v15 & (2 * v22)));
  v24 = (v23 + v18 - (a3 & (2 * v23))) ^ a1;
  v25 = a4 ^ a2 ^ (v24 + v14 - (v19 & (2 * v24)));
  v26 = (v25 & 0x80 ^ 0x77FC5FFF) + 2 * (v25 & 0x80);
  v27 = ((v26 - 2013028351) & v21) == 0;
  v28 = v26 - 67895400;
  v29 = -336805994 - v26;
  if (v27)
  {
    v29 = v28;
  }

  *(v17 + 4 * v9) = v25 & 0xFFFFFF7F ^ 0xFDE959B8 ^ (v8 + v29);
  return (*(a7 + 8 * ((63 * (v10 == 0)) ^ v13)))();
}

uint64_t sub_100010BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x1530]) = a8;
  LODWORD(STACK[0x14C0]) = a5;
  v8 = STACK[0x1540];
  v9 = (LODWORD(STACK[0x1540]) - 2823) | 4;
  v10 = (*(a7 + 8 * (LODWORD(STACK[0x1540]) ^ 0xA45)))(1032);
  v11 = STACK[0x1708];
  STACK[0x3300] = v10 + 0x7AE60F840D03EC59;
  STACK[0x15B0] = v10;
  LODWORD(STACK[0x1900]) = v9;
  return (*(v11 + 8 * (((v10 == 0) * (v9 ^ 0x185F)) ^ v8)))();
}

uint64_t sub_100010DE0@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, int a7@<W7>, int a8@<W8>)
{
  v19 = v12 + v10 + (v9 & 0xFE);
  v20 = *(*(a1 + 8 * (a8 - 3373)) + 4 * (((((v19 ^ v18) - ((v19 ^ v18) ^ v14)) ^ 0xFFFFFFFC) + (v19 ^ v18)) ^ v17) + a3);
  v21 = v13 ^ (v20 - ((a4 + 2 * v20) & a5) + a7);
  *(v8 + 4 * v19) = v21 + v15 - (v16 & (2 * v21));
  return (*(a6 + 8 * (((v11 == 0) * a2) ^ a8)))();
}

uint64_t sub_100010E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x1900]) = v7 - 505;
  v8 = (*(a7 + 8 * (v7 ^ 0x3353u)))(1032);
  v9 = STACK[0x1708];
  STACK[0x3348] = v8;
  return (*(v9 + 8 * (((v8 == 0) * (((v7 - 6662) | 0x1400) - 5051)) ^ v7)))();
}

uint64_t sub_100010FDC(unsigned int a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v23 = a5 ^ a6 ^ v8;
  v24 = *(*(&off_1002DD400 + v10) + 4 * (v23 ^ a1) - 618234358) ^ v12;
  v25 = (v15 + 1019418315 + v24 - ((2 * v24) & 0x79862D96) - 2193) ^ a2;
  v26 = (v25 + v17 - (v20 & (2 * v25))) ^ a3;
  v27 = (v26 + 1541893775 - (v19 & (2 * v26))) ^ v11;
  v28 = a4 ^ v13 ^ v22 ^ (v27 + 1844825541 - ((2 * v27) & 0xDBEB9B8A));
  *(v16 + 4 * v8) = v18 ^ v23 ^ 0xE14C479 ^ (v28 + v21 - (a8 & (2 * v28)));
  return (*(a7 + 8 * ((28 * (v9 == 0)) | v14)))();
}

uint64_t sub_1000110D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 3 * (v7 ^ 0x9E);
  v9 = (*(a7 + 8 * (v7 ^ 0x21E4u)))(1028);
  v10 = STACK[0x1708];
  STACK[0x3320] = v9;
  LODWORD(STACK[0x1900]) = v8;
  return (*(v10 + 8 * ((((v8 ^ 0xFFFFF897) + 503 * (v7 ^ 0x881)) * (v9 == 0)) | v7)))();
}

uint64_t sub_100011308(uint64_t a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v19 = *(*(a1 + 8 * (v16 ^ 0x1FC0)) + 4 * (((v15 ^ v10 ^ a5) + v8 - (((v15 ^ v10 ^ a5) & v9) << v12)) ^ a2) + a6) ^ a8;
  *(v18 + 4 * v10) = v13 ^ ((a3 & (v19 >> 3) ^ v19) + v17 - (v14 & (2 * (a3 & (v19 >> 3) ^ v19))));
  return (*(a7 + 8 * (((v11 == 0) * a4) ^ v16)))();
}

uint64_t sub_100011380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + 1992870273) & 0x8937392F;
  v9 = (*(a7 + 8 * (v7 ^ 0x3C09u)))(1032);
  v10 = STACK[0x1708];
  STACK[0x3330] = v9 + 0x791C95BE0100B682;
  LODWORD(STACK[0x1900]) = v8;
  return (*(v10 + 8 * (((v9 == 0) * (v8 - 5956)) ^ v7)))();
}

uint64_t sub_1000115A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + 2009690276) & 0x88369BAD;
  v9 = *(a7 + 8 * (v7 ^ 0x22AE));
  STACK[0x1180] = a1;
  v10 = v9(1028);
  v11 = STACK[0x1708];
  STACK[0x3318] = v10 + 0x750281D050A8BAE6;
  STACK[0x1150] = v10;
  LODWORD(STACK[0x1900]) = v8;
  return (*(v11 + 8 * (((v10 != 0) * (v8 - 6145)) ^ v7)))();
}

uint64_t sub_10001161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1120] = v9;
  STACK[0x1130] = v8;
  return (*(a7 + 8 * ((v7 - 691) | 0x4C3)))();
}

uint64_t sub_10001175C@<X0>(uint64_t a1@<X3>, int a2@<W4>, int a3@<W5>, uint64_t a4@<X6>, int a5@<W7>, int a6@<W8>)
{
  v18 = (v8 ^ a6) & (7 * (v6 ^ a5) - 3014);
  v19 = v10 ^ (((v14 - (v18 ^ (v14 - 26))) ^ v18 ^ ((v18 ^ a2) + 1) ^ a3) + v14) ^ v17 ^ *(*(a1 + 8 * (v6 - 2775)) + 4 * (v18 ^ v11) + v16);
  *(v7 + 4 * v8) = v19 + v15 - (v13 & (2 * v19));
  return (*(a4 + 8 * (((v9 == 0) * v12) ^ v6)))();
}

uint64_t sub_1000117F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x10E0] = STACK[0x3328] - 0xB1A1832E0672A7ELL;
  v8 = *(a7 + 8 * v7);
  LODWORD(STACK[0x13D0]) = 137281;
  LODWORD(STACK[0x1110]) = 896533746;
  LODWORD(STACK[0x1100]) = 1278140221;
  return v8(3425623868, 136, a3, a4, a5, 173, 246);
}

uint64_t sub_100011880(int a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7)
{
  LODWORD(STACK[0x1730]) = v7;
  LODWORD(STACK[0x13F0]) = v7 ^ 0x298C;
  v12 = ((v7 ^ 0x298C) - 3282) & a1 ^ 0xCC2EDF3C;
  LODWORD(STACK[0x1890]) = v12;
  v14 = STACK[0x10E0];
  v15 = *(STACK[0x10E0] + v12) + v12 * v8;
  v16 = a1 & 0xFFFFFFF6 ^ 0xCC2EDF3D;
  LODWORD(STACK[0x1900]) = v16;
  v17 = *(v14 + v16);
  v18 = STACK[0x1780];
  v19 = *(STACK[0x1780] + ((v15 + 43) ^ 0xEELL));
  LODWORD(STACK[0x10F0]) = v7 - 6601;
  v20 = STACK[0x1770];
  v21 = *(STACK[0x1770] + ((((2 * (v17 + v16 * ((v7 + 55) ^ 0xF3))) & 0x56) + ((v17 + v16 * ((v7 + 55) ^ 0xF3)) ^ 0x2B)) ^ 0x19));
  v22 = a1 & 0xFFFFFFFA ^ 0xCC2EDF3D;
  LODWORD(STACK[0x1740]) = v22;
  v23 = (v19 ^ 0x5B ^ (((v19 >> 3) ^ (v19 >> 1) ^ 0x3B) - ((2 * ((v19 >> 3) ^ (v19 >> 1) ^ 0x3B)) & 0x2C) - 106)) << 24;
  v24 = a1 & 0xFFFFFFFE ^ 0xCC2EDF3D;
  v25 = (*(v14 + v22) + v22 * v8 + 43) ^ a2;
  LOBYTE(v22) = *(v14 + v24);
  v26 = a1 & 0xFE ^ 0x3D;
  LODWORD(STACK[0x1490]) = v24;
  LODWORD(v25) = *(v20 + v25);
  v27 = a1 & 0xFFFFFFF1 ^ 0xCC2EDF3E;
  LODWORD(STACK[0x1810]) = v27;
  v28 = *(v14 + v27);
  v29 = a1 & 0xFFFFFFF0 ^ 0xCC2EDF3F;
  LODWORD(STACK[0x1880]) = v29;
  v30 = a1 & 0xFFFFFFFB ^ 0xCC2EDF3C;
  v31 = STACK[0x17A0];
  v32 = v23 | ((*(STACK[0x17A0] + (((v28 ^ (115 * v27)) + 2 * (v28 & (115 * v27)) + 43) ^ 0x77)) ^ 0x5F) << 8);
  v33 = (*(v14 + v29) + 115 * v29 + 43);
  LODWORD(STACK[0x14C0]) = v30;
  v34 = *(v14 + v30);
  v35 = STACK[0x1790];
  v36 = *(v18 + ((v34 + 115 * (a1 & 0xFB ^ 0x3C) + 43) ^ 0xC6));
  v37 = v32 | *(STACK[0x1790] + (v33 ^ 0xB3)) ^ 0x7E;
  v38 = a1 & 0xFFFFFFF2 ^ 0xCC2EDF3D;
  LODWORD(STACK[0x1530]) = v38;
  v39 = *(v14 + v38) + 115 * v38 + 43;
  STACK[0x1460] = v39;
  v40 = a1 & 0xFFFFFFF5 ^ 0xCC2EDF3E;
  LODWORD(v33) = v36 ^ v10 ^ (((v36 >> 3) ^ (v36 >> 1) ^ 0x3B) - 2 * (((v36 >> 3) ^ (v36 >> 1) ^ 0x3B) & 0xE ^ ((v36 >> 3) ^ (v36 >> 1)) & 4) + 10);
  v41 = *(v20 + (v39 ^ 0xA8)) ^ 0x23;
  v42 = a1 & 0xFFFFFFF7 ^ 0xCC2EDF3C;
  LODWORD(STACK[0x1840]) = v40;
  v43 = v37 | (v41 << 16);
  LOBYTE(v37) = *(v14 + v40) + 115 * v40;
  LODWORD(STACK[0x17F0]) = v42;
  LOBYTE(v40) = ((2 * v37) & 0x56) + (v37 ^ 0x2B);
  v44 = *(v18 + ((*(v14 + v42) + 115 * v42 + 43) ^ 0x8DLL));
  LODWORD(v39) = a1;
  v45 = a1 & 0xFFFFFFF9 ^ 0xCC2EDF3E;
  v46 = (((v44 & 0x40 | (v44 >> 2)) ^ v44 & 0xFFFFFFBF) >> 1) ^ 0x3B;
  v47 = v39 & 0xFFFFFFFD ^ 0xCC2EDF3E;
  v48 = v46 - ((2 * v46) & 0xC6);
  v49 = v39 & 0xFFFFFFF8 ^ 0xCC2EDF3F;
  LOBYTE(v46) = v22 + 115 * v26 + 43;
  v50 = v44 ^ (v48 + 99);
  v51 = v39 & 0xFFFFFFF4 ^ 0xCC2EDF3F;
  LODWORD(STACK[0x1480]) = v51;
  v52 = ((*(v31 + (v40 ^ 0xBBLL)) ^ 0xD8) << 8) | ((v50 ^ 0xAAAAAAAA) << 24);
  v53 = *(v35 + ((*(v14 + v51) + 115 * v51 + 43) ^ 0x70)) ^ 0x7E;
  v54 = v52 | v53 | ((v21 ^ 0x18) << 16);
  v55 = v39 & 0xFFFFFFFC ^ 0xCC2EDF3F;
  LODWORD(STACK[0x14A0]) = v45;
  v56 = (v33 << 24) | ((*(v31 + ((*(v14 + v45) + 115 * v45 + 43) ^ 2)) ^ 0xA7) << 8);
  LODWORD(STACK[0x17E0]) = v49;
  LODWORD(v33) = (*(v20 + (v46 ^ a7)) ^ 5) << 16;
  v57 = *(v35 + ((*(v14 + v49) + 115 * v49 + 43) ^ 0xC2)) ^ 0x7E;
  LODWORD(v25) = v56 | v57 | ((v25 ^ 0x32) << 16);
  LODWORD(STACK[0x1540]) = v47;
  v58 = *(v31 + ((*(v14 + v47) + 115 * v47 + 43) ^ 6)) ^ 0xBD;
  LODWORD(STACK[0x1750]) = v39;
  LODWORD(STACK[0x14B0]) = v39 ^ 0xCC2EDF3C;
  v59 = v33 | (v58 << 8);
  LODWORD(v33) = *(v18 + ((*(v14 + (v39 ^ 0xCC2EDF3C)) + 115 * (v39 ^ 0x3C) + 43) ^ v11));
  LODWORD(v25) = (v25 - 860815843 - 2 * (v25 & 0x4CB0FE34 ^ v57 & 0x14) + 3) ^ LODWORD(STACK[0x1820]);
  v60 = (v33 >> 3) ^ (v33 >> 1) ^ v33 & 0xED ^ 0x6C ^ ((v33 & 0xED ^ 0x6C) + (v33 ^ 0xFFFFFF81)) ^ 0x3B;
  LODWORD(STACK[0x1470]) = v55;
  LODWORD(v33) = *(v35 + ((*(v14 + v55) + 115 * v55 + 43) ^ 0xA4)) ^ 0x7E;
  v61 = ((v59 | (v60 << 24) | v33) - 1305237498 - 2 * ((v59 | (v60 << 24) | v33) & 0x3233A80E ^ v33 & 8)) ^ LODWORD(STACK[0x17B0]);
  v62 = (v54 - 939292180 - 2 * (v54 & 0x480389FE ^ v53 & 0x12)) ^ LODWORD(STACK[0x17D0]);
  v63 = LODWORD(STACK[0x1710]) - (LODWORD(STACK[0x13E0]) ^ 0x8E13EE85 ^ v61);
  LODWORD(v25) = (v25 - 2113646300 - ((2 * v25) & 0x408A248)) ^ LODWORD(STACK[0x1600]);
  LODWORD(v25) = (v25 + 1583681297 - ((2 * v25) & 0xBCCA1E22)) ^ LODWORD(STACK[0x13C0]);
  v64 = v61 ^ 0xBBB3C7F6 ^ ((v63 ^ ((v61 ^ 0xFFFFFFCC) + 1)) - 1145845819 - ((2 * (v63 ^ ((v61 ^ 0xFFFFFFCC) + 1))) & 0x77678F8A));
  v65 = (v62 - 2113646300 - ((2 * v62) & 0x408A248)) ^ LODWORD(STACK[0x1600]);
  v66 = (v25 - 2090971216 - ((2 * v25) & 0x6BC9F60)) ^ LODWORD(STACK[0x18B0]);
  LODWORD(v25) = (v64 + LODWORD(STACK[0x1710]) + 1583681297 - ((2 * (v64 + LODWORD(STACK[0x1710]))) & 0xBCCA1E22)) ^ LODWORD(STACK[0x13C0]);
  v67 = (v65 + 1583681297 - ((2 * v65) & 0xBCCA1E22)) ^ LODWORD(STACK[0x13C0]);
  v68 = (v67 - 2090971216 - ((2 * v67) & 0x6BC9F60)) ^ LODWORD(STACK[0x18B0]);
  v69 = (v25 - 2090971216 - ((2 * v25) & 0x6BC9F60)) ^ LODWORD(STACK[0x18B0]);
  v70 = (v43 - 1886760195 - ((2 * v43) & 0x1F14A5FA)) ^ LODWORD(STACK[0x1830]);
  v71 = (v70 - 2113646300 - ((2 * v70) & 0x408A248)) ^ LODWORD(STACK[0x1600]);
  v72 = (v71 + 1583681297 - ((2 * v71) & 0xBCCA1E22)) ^ LODWORD(STACK[0x13C0]);
  v73 = (v68 & 0x879285FF ^ 0x786D7A33) & (v68 | 0x879285FF);
  v74 = STACK[0x15B0];
  v75 = STACK[0x1150];
  v76 = (v72 - 2090971216 - ((2 * v72) & 0x6BC9F60)) ^ LODWORD(STACK[0x18B0]);
  v77 = STACK[0x1180];
  v78 = STACK[0x1860];
  LODWORD(v33) = *(STACK[0x1150] + 4 * (BYTE2(v66) ^ 0xC6u)) ^ *(STACK[0x1860] + 4 * (v10 ^ HIBYTE(v69))) ^ 0xD4D4A6DC;
  v79 = *(STACK[0x15B0] + 4 * ((((v72 + 20400 - ((2 * v72) & 0x9F60)) ^ LOWORD(STACK[0x18B0])) >> 8) ^ a6));
  LODWORD(v25) = (v33 + v9 - ((2 * v33) & 0xF21683F2)) ^ *(STACK[0x15B0] + 4 * (BYTE1(v73) ^ 0x1Cu));
  LODWORD(v25) = (v25 - 992773659 - ((2 * v25) & 0x89A6F3CA)) ^ *(STACK[0x1180] + 4 * (((v72 - 80 - ((2 * v72) & 0x60)) ^ LOBYTE(STACK[0x18B0])) ^ 0x44u));
  v80 = *(STACK[0x1860] + 4 * (HIBYTE(v76) ^ 0x8F));
  LODWORD(v33) = *(STACK[0x1860] + 4 * (HIBYTE(v73) ^ 0x16)) ^ *(STACK[0x1150] + 4 * (BYTE2(v76) ^ 0xB6u)) ^ 0xD4D4A6DC;
  v81 = *(STACK[0x1180] + 4 * (v69 ^ 0x46u));
  v82 = *(STACK[0x1150] + 4 * (BYTE2(v73) ^ 0xBBu)) ^ *(STACK[0x1860] + 4 * (HIBYTE(v66) ^ 0x3A)) ^ 0xD4D4A6DC;
  v83 = (v82 + v9 - ((2 * v82) & 0xF21683F2)) ^ v79;
  v84 = *(STACK[0x1180] + 4 * (v66 ^ a6));
  v85 = *(STACK[0x1150] + 4 * (BYTE2(v69) ^ 6u));
  v86 = *(STACK[0x15B0] + 4 * (BYTE1(v66) ^ 0xAEu));
  v87 = (v33 + v9 - ((2 * v33) & 0xF21683F2)) ^ *(STACK[0x15B0] + 4 * (BYTE1(v69) ^ 0x68u));
  v88 = (v83 - 992773659 - ((2 * v83) & 0x89A6F3CA)) ^ v81;
  v89 = (v87 - 992773659 - ((2 * v87) & 0x89A6F3CA)) ^ v84;
  v90 = ((v85 ^ 0xD036BE9D ^ v86) - 35038792 - ((2 * (v85 ^ 0xD036BE9D ^ v86)) & 0xFBD2B370)) ^ v80;
  v91 = (v90 - 992773659 - ((2 * v90) & 0x89A6F3CA)) ^ *(STACK[0x1180] + 4 * (v68 ^ 0xABu));
  v92 = *(STACK[0x1150] + 4 * (BYTE2(v89) ^ 0x7Au));
  v93 = *(STACK[0x1860] + 4 * (HIBYTE(v88) ^ 0xDC));
  v94 = *(STACK[0x1150] + 4 * (BYTE2(v88) ^ 0x19u)) ^ *(STACK[0x1860] + 4 * (BYTE3(v25) ^ 0x9E)) ^ 0xD4D4A6DC;
  v95 = (v94 + v9 - ((2 * v94) & 0xF21683F2)) ^ *(STACK[0x15B0] + 4 * (BYTE1(v89) ^ 0x3Fu));
  v96 = (((((v93 ^ 0xFDE959B8) - (v92 ^ 0xD4D4A6DC ^ v93)) ^ ((v92 ^ 0xD6C2009B) + 1)) + 691928932 - ((2 * (((v93 ^ 0xFDE959B8) - (v92 ^ 0xD4D4A6DC ^ v93)) ^ ((v92 ^ 0xD6C2009B) + 1))) & 0x527BFEC8)) ^ v92) + (v93 ^ 0xFDE959B8);
  v97 = (v95 - 992773659 - ((2 * v95) & 0x89A6F3CA)) ^ *(STACK[0x1180] + 4 * (v91 ^ 0xEDu));
  v98 = *(STACK[0x1180] + 4 * (v89 ^ 0x69u));
  v99 = *(STACK[0x1860] + 4 * (HIBYTE(v89) ^ 0x3C)) ^ *(STACK[0x1150] + 4 * (BYTE2(v91) ^ 0xFDu)) ^ 0xD4D4A6DC;
  v100 = *(STACK[0x15B0] + 4 * (BYTE1(v88) ^ 0xECu));
  LODWORD(v33) = (v96 + v9 - ((2 * v96) & 0xF21683F2)) ^ *(STACK[0x15B0] + 4 * (BYTE1(v91) ^ 0xF3u));
  v101 = *(STACK[0x15B0] + 4 * (BYTE1(v25) ^ 0xAEu)) ^ (v99 + v9 - ((2 * v99) & 0xF21683F2));
  v102 = (v101 - 992773659 - ((2 * v101) & 0x89A6F3CA)) ^ *(STACK[0x1180] + 4 * (v88 ^ 0x46u));
  v103 = (v33 - 992773659 - ((2 * v33) & 0x89A6F3CA)) ^ *(STACK[0x1180] + 4 * (v25 ^ 0x84u));
  v104 = *(STACK[0x1860] + 4 * (HIBYTE(v91) ^ 0x4F)) ^ v100;
  v105 = ((v104 ^ 0x4E21841) + 691928932 - 2 * ((v104 ^ 0x4E21841) & 0x293DFF6E ^ v104 & 0xA)) ^ *(STACK[0x1150] + 4 * (BYTE2(v25) ^ 0xF4u));
  v106 = ((v105 - 992773659 - ((2 * v105) & 0x89A6F3CA)) ^ v98) & 0xACF9678B | ((v105 + 1154709989 - ((2 * v105) & 0x9A6F3CA)) ^ v98) & 0x53069874;
  LODWORD(v25) = *(STACK[0x1860] + 4 * (HIBYTE(v97) ^ 0xC9)) ^ *(STACK[0x1150] + 4 * (BYTE2(v103) ^ 0x4Fu));
  v107 = *(STACK[0x15B0] + 4 * (BYTE1(v102) ^ 0x82u));
  v108 = v25 ^ 0xD4D4A6DC;
  LODWORD(v25) = ((v25 ^ 0xD4D4A6DC) - (v25 ^ v107 ^ 0x2DDFE725)) ^ ((v107 ^ 0x6F4BE06) + 1);
  v109 = ((v25 + 2030780923 - ((2 * v25) & 0x721683F2) - 2) ^ v107) & 0x4DE85D20 | ((v25 + v9 - ((2 * v25) & 0xF21683F2)) ^ v107) & 0xB217A2DF;
  LODWORD(v25) = *(STACK[0x1150] + 4 * (BYTE2(v102) ^ 0x35u)) ^ 0xD4D4A6DC ^ *(STACK[0x1860] + 4 * (HIBYTE(v103) ^ 0x15));
  v110 = (v25 + v9 - ((2 * v25) & 0xF21683F2)) ^ *(STACK[0x15B0] + 4 * (BYTE1(v106) ^ 0x71u));
  v111 = v109 + v108;
  v112 = *(STACK[0x1150] + 4 * (BYTE2(v106) ^ 0xC8u)) ^ *(STACK[0x1860] + 4 * (HIBYTE(v102) ^ 0x29));
  v113 = v111 - 992773659 - ((2 * v111) & 0x89A6F3CA);
  v114 = v112 ^ 0xD4D4A6DC;
  v115 = v113 ^ *(STACK[0x1180] + 4 * (v106 ^ 0x33u));
  LODWORD(v33) = (v112 ^ 0xD4D4A6DC) & 0x790B41FB ^ v112 & 2;
  v116 = *(STACK[0x1180] + 4 * (v103 ^ 0xB7u));
  LODWORD(v33) = (v114 + v9 - 2 * v33) ^ *(STACK[0x15B0] + 4 * (BYTE1(v97) ^ 0x51u));
  v117 = *(STACK[0x1180] + 4 * (v102 ^ 0xDEu));
  v118 = (v110 - 992773659 - ((2 * v110) & 0x89A6F3CA)) ^ *(STACK[0x1180] + 4 * (v97 ^ 0xF1u));
  v119 = v33 & 0x80;
  v120 = *(STACK[0x15B0] + 4 * (BYTE1(v103) ^ 0xBDu)) ^ *(STACK[0x1860] + 4 * (HIBYTE(v106) ^ 0x66));
  v121 = *(STACK[0x1150] + 4 * (BYTE2(v97) ^ 0x56u));
  v122 = ((v120 ^ 0x4E21841) - 992773659 - 2 * ((v120 ^ 0x4E21841) & 0x44D379F5 ^ v120 & 0x10)) ^ v117;
  v123 = v33 & 0xFFFFFF7F;
  if ((v119 & (v116 ^ 0xC4D379E5)) != 0)
  {
    v124 = -935584598 - (v119 | 0x641E0E55);
  }

  else
  {
    v124 = v119 | 0x641E0E55;
  }

  v125 = (v122 + 691928932 - ((2 * v122) & 0x527BFEC8)) ^ v121;
  v126 = ((v116 ^ 0xC4D379E5) - 1679691349 + v124) ^ v123;
  v127 = *(v75 + 4 * (BYTE2(v126) ^ 0xF7u)) ^ 0xD036BE9D ^ *(v74 + 4 * (BYTE1(v125) ^ 0x7Au));
  v128 = *(v75 + 4 * (BYTE2(v118) ^ 0xC2u)) ^ *(v74 + 4 * (BYTE1(v126) ^ 0xBu)) ^ *(v78 + 4 * (HIBYTE(v115) ^ 0x4A));
  v129 = *(v77 + 4 * (v125 ^ 0x1Fu));
  v130 = (v129 & 0xBF1F38FF ^ 0x841338E5) + (v128 & 0xBF1F38FF ^ 0x2D1F2025) - 2 * ((v129 & 0xBF1F38FF ^ 0x841338E5) & (v128 ^ 0x2D1F2025));
  v131 = v129 ^ v128;
  v132 = HIBYTE(v125) ^ 0x10;
  v133 = v130 | v131 & 0x40E0C700 ^ 0x40008600;
  v134 = (v127 - 35038792 - ((2 * v127) & 0xFBD2B370)) ^ *(v78 + 4 * (HIBYTE(v118) ^ 0x5F));
  v135 = *(v75 + 4 * (BYTE2(v125) ^ 0x3Fu));
  v136 = (v134 - 992773659 - ((2 * v134) & 0x89A6F3CA)) ^ *(v77 + 4 * (v115 ^ 0x45u));
  if (STACK[0x1460] == 149)
  {
    v138 = 0;
  }

  else
  {
    v138 = *(v78 + 4 * (HIBYTE(v126) ^ 0x76)) ^ 0xFDE959B8;
  }

  v137 = *(v78 + 4 * (HIBYTE(v126) ^ 0x76)) ^ 0xFDE959B8;
  v139 = (((v135 ^ 0x293DFF64 ^ v138 | v137) ^ (v135 ^ 0x293DFF64) & v137) + v9 - ((2 * ((v135 ^ 0x293DFF64 ^ v138 | v137) ^ (v135 ^ 0x293DFF64) & v137)) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v115) ^ 0x34u));
  v140 = *(v74 + 4 * (BYTE1(v118) ^ 0x89u));
  v141 = (v139 - 992773659 - ((2 * v139) & 0x89A6F3CA)) ^ *(v77 + 4 * (v118 ^ 0xF2u));
  v142 = *(v75 + 4 * (BYTE2(v115) ^ 0x8Du));
  LODWORD(v144) = __ROR4__(v141, 16) ^ 0x7167D242;
  HIDWORD(v144) = v144;
  v143 = v144 >> 16;
  v145 = v142 ^ *(v78 + 4 * v132) ^ 0xD4D4A6DC;
  v146 = (v145 + v9 - ((2 * v145) & 0xF21683F2)) ^ v140;
  v147 = (v146 - 992773659 - ((2 * v146) & 0x89A6F3CA)) ^ *(v77 + 4 * (v126 ^ 0x2Cu));
  v148 = *(v75 + 4 * (BYTE2(v143) ^ 0x6Du)) ^ *(v78 + 4 * (HIBYTE(v136) ^ 0x5A)) ^ 0xD4D4A6DC;
  v149 = (v148 + v9 - ((2 * v148) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v147) ^ 0xC0u));
  v150 = *(v78 + 4 * (HIBYTE(v133) ^ 5)) ^ *(v75 + 4 * (BYTE2(v136) ^ 0xD8u)) ^ 0xD4D4A6DC;
  v151 = (v150 + v9 - ((2 * v150) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE3(v144) ^ 0xCBu));
  v152 = *(v78 + 4 * (HIBYTE(v147) ^ 0x3C));
  v153 = (v149 - 992773659 - ((2 * v149) & 0x89A6F3CA)) ^ *(v77 + 4 * (v130 ^ 0x91u));
  v154 = (v151 - 992773659 - ((2 * v151) & 0x89A6F3CA)) ^ *(v77 + 4 * (v147 ^ 0x50u));
  v155 = *(v78 + 4 * (HIBYTE(v143) ^ 0xFE));
  v156 = *(v77 + 4 * (BYTE2(v144) ^ 0x28u));
  v157 = *(v75 + 4 * (BYTE2(v147) ^ 0x10u)) ^ 0xD4D4A6DC;
  v158 = *(v74 + 4 * (BYTE1(v136) ^ 0xB1u));
  v159 = ((v157 ^ v155) + v9 - ((2 * (v157 ^ v155)) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v133) ^ 0x38u));
  v160 = (v159 - 992773659 - ((2 * v159) & 0x89A6F3CA)) ^ *(v77 + 4 * (v136 ^ 0x63u));
  v161 = 2 * (v152 ^ 0xBEA21973);
  HIDWORD(v144) = ((v152 ^ 0xBEA21973) - (v161 & 0x1683F2) + 737785) ^ v158;
  LODWORD(v144) = ((v152 ^ 0xBEA21973) + v9 - (v161 & 0xF21683F2)) ^ v158;
  HIDWORD(v144) = (v144 >> 23) ^ 0x25C93CEC;
  LODWORD(v144) = HIDWORD(v144);
  v162 = ((v144 >> 9) - 992773659 - ((2 * (v144 >> 9)) & 0x89A6F3CA)) ^ v156;
  v163 = (v162 + 691928932 - ((2 * v162) & 0x527BFEC8)) ^ *(v75 + 4 * (BYTE2(v133) ^ 0x1Au));
  v164 = *(v75 + 4 * (BYTE2(v153) ^ 0x74u)) ^ *(v78 + 4 * (HIBYTE(v154) ^ 9)) ^ 0xD4D4A6DC;
  v165 = (v164 + v9 - ((2 * v164) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v160) ^ 0x80u));
  v166 = *(v74 + 4 * (BYTE1(v163) ^ 0xE4u));
  v167 = *(v75 + 4 * (BYTE2(v160) ^ 0x5Bu)) ^ 0xD4D4A6DC ^ *(v78 + 4 * (HIBYTE(v153) ^ 0x53));
  v168 = *(v77 + 4 * (v163 ^ 0x9Eu));
  v169 = *(v75 + 4 * (BYTE2(v163) ^ 0x12u)) ^ *(v78 + 4 * (HIBYTE(v160) ^ 0x7F)) ^ 0xD4D4A6DC;
  v170 = *(v78 + 4 * (HIBYTE(v163) ^ 0x76)) ^ *(v75 + 4 * (BYTE2(v154) ^ 0xACu));
  v171 = v167 + v9 - ((2 * v167) & 0xF21683F2);
  v172 = *(v77 + 4 * (v154 ^ 0xB7u));
  v173 = *(v74 + 4 * (BYTE1(v154) ^ 0x8Bu));
  v174 = (v165 - 992773659 - ((2 * v165) & 0x89A6F3CA)) ^ v168;
  v175 = (v169 + v9 - ((2 * v169) & 0xF21683F2)) ^ v173;
  v176 = *(v77 + 4 * (v160 ^ 0x9Bu));
  v177 = ((v171 ^ v166) - 992773659 - ((2 * (v171 ^ v166)) & 0x89A6F3CA)) ^ v172;
  v178 = (v175 - 992773659 - ((2 * v175) & 0x89A6F3CA)) ^ *(v77 + 4 * (v153 ^ 0xD4u));
  v179 = *(v74 + 4 * (BYTE1(v153) ^ 0x3Au));
  LODWORD(STACK[0x1830]) = 1154709991;
  v180 = ((v170 ^ 0xD4D4A6DC) - 992773659 - 2 * ((v170 ^ 0xD4D4A6DC) & 0x44D379E7 ^ v170 & 2)) ^ v176;
  v181 = (v180 + v9 - ((2 * v180) & 0xF21683F2)) ^ v179;
  v182 = *(v75 + 4 * (BYTE2(v178) ^ 0x47u));
  v183 = *(v78 + 4 * (HIBYTE(v177) ^ 0x34));
  v184 = *(v78 + 4 * (HIBYTE(v174) ^ 0x67));
  LODWORD(STACK[0x1820]) = v184;
  v185 = v182 ^ v183 ^ 0xD4D4A6DC;
  v186 = *(v75 + 4 * (BYTE2(v177) ^ 0x1Cu));
  LODWORD(STACK[0x17D0]) = v186;
  v187 = *(v74 + 4 * (BYTE1(v178) ^ 0xA1u));
  v188 = ((v184 ^ 0xD4D4A6DC ^ v186) - 116702727 - ((2 * (v184 ^ 0xD4D4A6DC ^ v186)) & 0xF21683F2)) ^ v187;
  v189 = *(v74 + 4 * (BYTE1(v181) ^ 0xE1u)) ^ (v185 - 116702727 - ((2 * v185) & 0xF21683F2));
  v190 = v188 - 992773659 - ((2 * v188) & 0x89A6F3CA);
  v191 = *(v75 + 4 * (BYTE2(v181) ^ 0xCu)) ^ *(v78 + 4 * (HIBYTE(v178) ^ 0x4B));
  v192 = (v189 - 992773659 - ((2 * v189) & 0x89A6F3CA)) ^ *(v77 + 4 * (v174 ^ 0x7Fu));
  v193 = ((v191 ^ 0xD4D4A6DC) - 116702727 - 2 * ((v191 ^ 0xD4D4A6DC) & 0x790B41FB ^ v191 & 2)) ^ *(v74 + 4 * (BYTE1(v174) ^ 0x1Bu));
  v194 = *(v78 + 4 * (HIBYTE(v181) ^ 8));
  LODWORD(STACK[0x1460]) = v194;
  v195 = *(v74 + 4 * (BYTE1(v177) ^ 0x21u));
  LODWORD(STACK[0x1450]) = v195;
  HIDWORD(v144) = v195 ^ v194 ^ LODWORD(STACK[0x13D0]);
  LODWORD(v144) = v195 ^ v194 ^ 0x4E00000;
  v196 = v144 >> 21;
  v197 = *(v77 + 4 * (v177 ^ 0xABu));
  v198 = v197 & 0xEEC22759 | 0x1158A4;
  if ((v181 & 0xFF00) != 0xE100)
  {
    v198 = v197;
  }

  HIDWORD(v199) = v196 ^ LODWORD(STACK[0x1110]);
  LODWORD(v199) = HIDWORD(v199);
  v200 = v198 ^ 0xC4D379E5 | v197 & 0x113DD8A6 ^ 0x1158A4;
  v201 = (v199 >> 11) + 1645366795 - ((2 * (v199 >> 11)) & 0xC4249C16);
  v202 = (-1639535104 - (v201 ^ 0xFC54E00B)) ^ ((v201 ^ 0x9DEDB1F4) + 1);
  v203 = (v202 + 1645366795 - ((2 * v202) & 0xC4249C16)) ^ v201;
  v204 = *(v75 + 4 * (BYTE2(v174) ^ 0x68u));
  v205 = v204 & 0x4000000 | 0x11346F3E;
  if (((v203 + 105295360) & v204 & 0x4000000) != 0)
  {
    v205 = 577298044 - v205;
  }

  v206 = (v203 - 1928182956 + v205 - 1170) ^ v204 & 0xFBFFFFFF;
  v207 = (v206 ^ 0x293DFF64) - 992773659 - 2 * ((v206 ^ 0x293DFF64) & 0x44D379EF ^ v206 & 0xA);
  v208 = *(v77 + 4 * (v181 ^ 0xFBu));
  LODWORD(STACK[0x1440]) = v208;
  v209 = v190 ^ v208;
  v210 = v193 ^ v200;
  v211 = *(v74 + 4 * (((v193 ^ v200) >> 8) ^ 0x11u)) ^ *(v78 + 4 * (HIBYTE(v209) ^ 0xB9));
  v212 = *(v77 + 4 * (v178 ^ 0x30u));
  v213 = BYTE2(v207) ^ BYTE2(v212);
  v214 = ((v211 ^ 0x4E21841) - 992773659 - 2 * ((v211 ^ 0x4E21841) & 0x44D379F7 ^ v211 & 0x12)) ^ *(v77 + 4 * ((v207 ^ v212) ^ 0xFBu));
  v215 = v214 + 691928932 - ((2 * v214) & 0x527BFEC8);
  v216 = *(v74 + 4 * (((v207 ^ v212) >> 8) ^ 0xF0u)) ^ *(v75 + 4 * (BYTE2(v210) ^ 0xC2u)) ^ 0xD036BE9D;
  v217 = (v216 - 992773659 - ((2 * v216) & 0x89A6F3CA)) ^ *(v77 + 4 * (v209 ^ 0x9Bu));
  v218 = *(v78 + 4 * (((v207 ^ v212) >> 24) ^ 0xCE));
  v219 = v217 - 35038792 - ((2 * v217) & 0xFBD2B370);
  v220 = v218 ^ *(v75 + 4 * (BYTE2(v209) ^ 0x99u)) ^ 0xD4D4A6DC;
  v221 = *(v75 + 4 * (v213 ^ 0xCEu)) ^ *(v78 + 4 * (HIBYTE(v210) ^ 0xC6));
  HIDWORD(v222) = v221 ^ 0x6DC;
  LODWORD(v222) = v221 ^ 0xD4D4A000;
  v223 = *(v74 + 4 * (BYTE1(v192) ^ 0xB0u));
  LODWORD(STACK[0x1430]) = v223;
  HIDWORD(v222) = (v222 >> 11) ^ 0xAFACFF52;
  LODWORD(v222) = HIDWORD(v222);
  v224 = (v220 - 992773659 - ((2 * v220) & 0x89A6F3CA)) ^ v223 ^ *(v77 + 4 * v210);
  v225 = *(v77 + 4 * (v192 ^ 0x30u));
  v226 = ((*(v74 + 4 * (BYTE1(v209) ^ 0x91u)) ^ 0x67FA957D ^ ((v222 >> 21) - 116702727 - ((2 * (v222 >> 21)) & 0xF21683F2))) + (v225 & 0x80000000) + 0x80000000) ^ v225 & 0x7FFFFFFF;
  v227 = v224 ^ 0xD81D8F3A ^ (1486035249 - (v224 ^ 0xCE770B97) - ((1861784796 - 2 * (v224 ^ 0xCE770B97)) & 0x422D9D86));
  v228 = (((v227 & 0x8000) - (v224 ^ 0xF90B41F9)) ^ 0x7FD3DFFE) - 608178733 + ((2 * ((v227 & 0x8000) - (v224 ^ 0xF90B41F9))) & 0xFFA7BFFC);
  v229 = (v224 ^ 0x6F4BE06) + 1;
  v230 = (v227 & 0x8000 & v229) == 0;
  v231 = ((v229 - (v227 & 0x8000)) ^ 0xFFF7EFF6) + 1536942030 + ((2 * (v229 - (v227 & 0x8000))) & 0xFFEFDFEC);
  if (v230)
  {
    v231 = v228 + 499;
  }

  v232 = (v231 - 1536413636) ^ v227 & 0xFFFF7FFF;
  v233 = *(v75 + 4 * (BYTE2(v192) ^ 0x85u));
  v234 = *(v78 + 4 * (HIBYTE(v192) ^ 0x8D));
  v235 = v219 ^ v234;
  LODWORD(v237) = __ROR4__(v215 ^ v233, 3) ^ 0x41900D7F;
  HIDWORD(v237) = v237;
  v236 = v237 >> 29;
  v238 = *(v75 + 4 * (((v219 ^ v234) >> 16) ^ 0x70u)) ^ 0xD4D4A6DC ^ *(v78 + 4 * (HIBYTE(v236) ^ 0xBE));
  v239 = v232 - ((2 * v232 + 788042972) & 0x371D4756);
  v240 = (v238 - 116702727 - ((2 * v238) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v226) ^ 0xC3u));
  LODWORD(STACK[0x1420]) = v240 - 992773659 - ((2 * v240) & 0x89A6F3CA);
  LODWORD(STACK[0x1410]) = v226;
  v241 = *(v78 + 4 * (((v219 ^ v234) >> 24) ^ 0x3F)) ^ *(v75 + 4 * (BYTE2(v226) ^ 0x61u));
  v242 = v239 - 754258407;
  v243 = ((v241 ^ 0xD4D4A6DC) - 116702727 - 2 * ((v241 ^ 0xD4D4A6DC) & 0x790B41FB ^ v241 & 2)) ^ *(v74 + 4 * (((v239 - 4583) >> 8) ^ 0xA3u));
  LODWORD(STACK[0x17B0]) = v243 - 992773659 - ((2 * v243) & 0x89A6F3CA);
  v244 = *(v75 + 4 * (BYTE2(v236) ^ 0x75u)) ^ 0xD4D4A6DC ^ *(v78 + 4 * (HIBYTE(v242) ^ 0x9B));
  v245 = *(v78 + 4 * (HIBYTE(v226) ^ 0xBD)) ^ 0xD4D4A6DC ^ *(v75 + 4 * (BYTE2(v242) ^ 0x8Eu));
  v246 = (v244 - 116702727 - ((2 * v244) & 0xF21683F2)) ^ *(v74 + 4 * (((v219 ^ v234) >> 8) ^ 0xABu));
  v247 = (v245 - 116702727 - ((2 * v245) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v236) ^ 0x70u));
  v248 = v247 - 992773659 - ((2 * v247) & 0x89A6F3CA);
  LODWORD(STACK[0x1400]) = v246 - 992773659 - ((2 * v246) & 0x89A6F3CA);
  v249 = ((LODWORD(STACK[0x17D0]) ^ 0xD036BE9D ^ v187) - 35038792 - ((2 * (LODWORD(STACK[0x17D0]) ^ 0xD036BE9D ^ v187)) & 0xFBD2B370)) ^ LODWORD(STACK[0x1820]);
  v250 = (v249 - 992773659 - ((2 * v249) & 0x89A6F3CA)) ^ LODWORD(STACK[0x1440]);
  v251 = v193 ^ v197;
  v252 = ((v212 ^ v204 ^ 0xEDEE8681) - 35038792 - 2 * ((v212 ^ v204 ^ 0xEDEE8681) & 0x7DE959BA ^ (v212 ^ v204) & 2)) ^ LODWORD(STACK[0x1460]);
  v253 = (v252 - 116702727 - ((2 * v252) & 0xF21683F2)) ^ LODWORD(STACK[0x1450]);
  v254 = *(v74 + 4 * (BYTE1(v251) ^ 0x68u)) ^ *(v78 + 4 * (HIBYTE(v250) ^ 0xB9)) ^ 0x4E21841;
  v255 = (v254 - 992773659 - ((2 * v254) & 0x89A6F3CA)) ^ *(v77 + 4 * (v253 ^ 0xFBu));
  v256 = (v255 + 691928932 - ((2 * v255) & 0x527BFEC8)) ^ v233;
  v257 = *(v75 + 4 * (BYTE2(v253) ^ 0xCEu)) ^ *(v78 + 4 * ((v251 ^ 0x21168E5u) >> 24)) ^ 0xD4D4A6DC;
  v258 = *(v75 + 4 * ((v251 ^ 0x21168E5u) >> 16)) ^ 0xD036BE9D ^ *(v74 + 4 * (BYTE1(v253) ^ 0xF0u));
  v259 = (v257 - 116702727 - ((2 * v257) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v250) ^ 0x91u));
  v260 = (v259 - 992773659 - ((2 * v259) & 0x89A6F3CA)) ^ v225;
  v261 = (v258 - 992773659 - ((2 * v258) & 0x89A6F3CA)) ^ *(v77 + 4 * (v250 ^ 0x9Bu));
  v262 = (v261 - 35038792 - ((2 * v261) & 0xFBD2B370)) ^ v234;
  v263 = *(v75 + 4 * (BYTE2(v250) ^ 0x99u)) & 0x100 ^ 0x7FFFFD7D;
  v264 = *(v78 + 4 * (HIBYTE(v253) ^ 0xCE)) ^ 0xFDE959B8;
  v230 = ((v263 - 2147482749) & v264) == 0;
  v265 = v263 - 685903880;
  v266 = -685905678 - v263;
  if (v230)
  {
    v266 = v265;
  }

  v267 = *(v75 + 4 * (BYTE2(v250) ^ 0x99u)) & 0xFFFFFEFF ^ 0x293DFE64 ^ (v264 - 1461578869 + v266);
  v268 = *(v77 + 4 * (v251 ^ 0xE5u));
  v269 = (v267 - 116702727 - ((2 * v267) & 0xF21683F2)) ^ LODWORD(STACK[0x1430]);
  v270 = v269 + (v268 ^ 0xC4D379E5) - 2 * (v269 & (v268 ^ 0x44D379E5));
  v271 = *(v75 + 4 * (BYTE2(v262) ^ 0x70u)) ^ *(v78 + 4 * (HIBYTE(v256) ^ 0xB2)) ^ 0xD4D4A6DC;
  v272 = (v271 - 116702727 - ((2 * v271) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v260) ^ 0xBAu));
  v273 = v272 - 992773659 - ((2 * v272) & 0x89A6F3CA);
  v274 = *(v75 + 4 * (BYTE2(v260) ^ 0xB2u)) ^ 0xD4D4A6DC ^ *(v78 + 4 * (HIBYTE(v262) ^ 0x3F));
  v275 = (v274 - 116702727 - ((2 * v274) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v270) ^ 0x4Au));
  v276 = *(v78 + 4 * (HIBYTE(v260) ^ 0xF9)) ^ 0xD4D4A6DC ^ *(v75 + 4 * (BYTE2(v270) ^ 0x7Cu));
  v277 = (v276 - 116702727 - ((2 * v276) & 0xF21683F2)) ^ *(v74 + 4 * (BYTE1(v256) ^ 0x1Bu));
  v278 = *(v75 + 4 * (BYTE2(v256) ^ 0xF5u)) ^ *(v78 + 4 * (HIBYTE(v270) ^ 0x37));
  v279 = *(v77 + 4 * (v270 ^ 0x6Eu)) ^ 0xAA1711BB ^ v273;
  v280 = *(v77 + 4 * (LODWORD(STACK[0x1410]) ^ 0x70u)) ^ 0x5BA94AD5 ^ LODWORD(STACK[0x1400]);
  v281 = *(v77 + 4 * (v262 ^ 0x95u)) ^ 0x6CD500BB ^ v277 & 0xD6337AA8 ^ ((v277 & 0x29CC8557) - 992773659 - ((2 * v277) & 0x180028A));
  v282 = ((v278 ^ 0xD4D4A6DC) - 992773659 - 2 * ((v278 ^ 0xD4D4A6DC) & STACK[0x1830] ^ v278 & 2)) ^ *(v77 + 4 * (v260 ^ 0x95u));
  v283 = *(v74 + 4 * (BYTE1(v262) ^ 0xABu)) ^ 0x5BA94AD5 ^ (v282 - 116702727 - ((2 * v282) & 0xF21683F2));
  v284 = *(v77 + 4 * (v256 ^ 0xA5u)) ^ 0x9567BA2E ^ (v275 - 992773659 - ((2 * v275) & 0x89A6F3CA));
  v285 = ((*(v77 + 4 * (v235 ^ 0x95u)) ^ 0x6CD500BB ^ v248) - v281 - 1529247307) ^ 0xC3238844;
  v286 = -709072935 * (((*(v77 + 4 * (v236 ^ 0x5Fu)) ^ 0x9567BA2E ^ LODWORD(STACK[0x17B0])) - v284 - 1659358257) ^ 0x9AD2E296) - 765607223 * (((*(v77 + 4 * (v242 ^ 0xABu)) ^ LODWORD(STACK[0x1420]) ^ 0xAA1711BB) - v279 + 1637634729) ^ 0x56ED1DE8);
  v287 = -393604239 - 570503057 * v285 - ((-1141006114 * v285) & 0xD11426E2);
  v288 = 1399196492 - 891635831 * ((v280 - v283 - 2057976700) ^ 0x55DB555D) - ((-1783271662 * ((v280 - v283 - 2057976700) ^ 0x55DB555D)) & 0xA6CC1698);
  v289 = (v288 ^ 0x53660B4C) + v286;
  v290 = (v287 ^ 0xE88A1371) - 709072935 * (((*(v77 + 4 * (v236 ^ 0x5Fu)) ^ 0x9567BA2E ^ LODWORD(STACK[0x17B0])) - v284 - 1659358257) ^ 0x9AD2E296) + v289;
  v291 = (v287 ^ v288 ^ 0xBBEC183D) + 2 * ((v288 ^ 0x53660B4C) & (v287 ^ 0x688A1371));
  v292 = v286 - v291;
  v293 = v279 - (v292 + v290 + v289);
  v294 = v284 + v292 + v289;
  v295 = v292 ^ v291;
  v296 = v293 - 2 * ((v293 + 2035002880) & 0x5352F33F ^ v293 & 0x10) - 862019281;
  v297 = v295 ^ -(v292 + v289);
  v298 = v294 - ((2 * v294 + 1503285526) & 0x8D15A778) - 212337593;
  v299 = v281 - v297 - ((2 * (v281 - v297) - 1441652254) & 0xBAC4C55E) - 1301580896;
  v300 = v283 - (v297 ^ (v290 + v289)) - ((2 * (v283 - (v297 ^ (v290 + v289))) - 1656773202) & 0xC90591C2) + 857906104;
  v301 = *(STACK[0x1850] + 4 * (BYTE2(v298) ^ 0x8Au)) ^ 0xF82B8B3C ^ *(STACK[0x1130] + 4 * (HIBYTE(v296) ^ 0x53));
  v302 = (v301 - 802815121 + (~(2 * v301) | 0x5FB3F921) + 1) ^ *(STACK[0x18F0] + 4 * (BYTE1(v299) ^ 0x62u));
  v303 = *(STACK[0x18F0] + 4 * (BYTE1(v300) ^ 0xC8u)) ^ *(STACK[0x1850] + 4 * (BYTE2(v299) ^ 0x62u)) ^ 0x7346693B;
  v304 = (v303 - ((2 * v303) & 0xB697C2D0) + 1531699560) ^ *(STACK[0x1130] + 4 * (HIBYTE(v298) ^ 0xC6));
  v305 = *(STACK[0x1130] + 4 * (HIBYTE(v299) ^ 0x5D)) ^ 0xF82B8B3C ^ *(STACK[0x1850] + 4 * (BYTE2(v300) ^ 0x82u));
  v306 = (v305 & 0x200 ^ 0x6EC37FF6) + 2 * (v305 & 0x200);
  v307 = STACK[0x1120];
  v308 = *(STACK[0x1120] + 4 * (v300 ^ 0xE1u));
  v309 = HIBYTE(v300) ^ 0xE4;
  v310 = (v304 - 857740816 - ((2 * v304) & 0x99BFD3E0)) ^ *(STACK[0x1120] + 4 * v293);
  v311 = (v302 - 857740816 - ((2 * v302) & 0x99BFD3E0)) ^ v308;
  v312 = *(STACK[0x18F0] + 4 * (BYTE1(v296) ^ 0xF3u)) ^ 0xD026036F;
  v230 = ((v306 - 1858306038) & v312) == 0;
  v313 = v306 - 41959092;
  v314 = -620314312 - v306;
  if (v230)
  {
    v314 = v313;
  }

  v315 = *(v307 + 4 * (v298 ^ 0xBCu));
  v316 = *(STACK[0x1130] + 4 * v309) ^ *(STACK[0x18F0] + 4 * (BYTE1(v298) ^ 0xD3u)) ^ 0x8B6DE207;
  v317 = (v311 + 1844825541 - ((2 * v311) & 0xDBEB9B8A)) ^ LODWORD(STACK[0x1800]);
  v318 = (v310 + 1844825541 - ((2 * v310) & 0xDBEB9B8A)) ^ LODWORD(STACK[0x1800]);
  v319 = (((v312 - 1816346946 + v314) ^ v305 & 0xFFFFFDFF) - 857740816 - ((2 * ((v312 - 1816346946 + v314) ^ v305 & 0xFFFFFDFF)) & 0x99BFD3E0)) ^ v315;
  v320 = (v316 - 857740816 - ((2 * v316) & 0x99BFD3E0)) ^ *(v307 + 4 * (v299 ^ 0xAFu));
  v321 = (v319 + 1844825541 - ((2 * v319) & 0xDBEB9B8A)) ^ LODWORD(STACK[0x1800]);
  v322 = LODWORD(STACK[0x1720]) ^ LODWORD(STACK[0x18A0]) ^ (v318 - 376562119 - ((2 * v318) & 0xD31C3C72));
  v323 = LODWORD(STACK[0x1720]) ^ LODWORD(STACK[0x18A0]) ^ (v317 - 376562119 - ((2 * v317) & 0xD31C3C72));
  v324 = (v320 - ((2 * v320) & 0x46C0D4A8) - 1553962412) ^ *(STACK[0x1850] + 4 * (BYTE2(v296) ^ 0x52u));
  v325 = (v324 + 1844825541 - ((2 * v324) & 0xDBEB9B8A)) ^ LODWORD(STACK[0x1800]);
  v326 = LODWORD(STACK[0x1720]) ^ LODWORD(STACK[0x18A0]) ^ (v325 - 376562119 - ((2 * v325) & 0xD31C3C72));
  v327 = (((v321 - 376562119 - ((2 * v321) & 0xD31C3C72)) ^ LODWORD(STACK[0x1720])) & 0xED086E5A | ((v321 - ((2 * v321) & 0x131C3C72) + 160308793) ^ LODWORD(STACK[0x1720])) & 0x12F791A5) ^ LODWORD(STACK[0x18A0]);
  v328 = STACK[0x1730];
  v329 = *(&off_1002DD400 + LODWORD(STACK[0x1730]) - 9282) - 629613338;
  *(v14 + LODWORD(STACK[0x1490])) = v329[BYTE2(v323) ^ 0x55] ^ ((BYTE2(v323) ^ 0xF9) - ((2 * (BYTE2(v323) ^ 0xF9)) & 0xA4) + 82) ^ 0xDD;
  v330 = *(&off_1002DD400 + v328 - 8863) - 1308563159;
  *(v14 + LODWORD(STACK[0x1480])) = (v330[v327 ^ 0xDD] + 22) ^ 0x21;
  v331 = *(&off_1002DD400 + (v328 ^ 0x241D)) - 498121583;
  v332 = v331[HIBYTE(v322) ^ 0x9BLL];
  HIDWORD(v333) = v332 ^ 0x22;
  LODWORD(v333) = (v332 ^ 0x40) << 24;
  *(v14 + LODWORD(STACK[0x14C0])) = (v333 >> 30) ^ (4 * (v333 >> 30)) ^ 0xDE;
  *(v14 + LODWORD(STACK[0x1470])) = (v330[v323 ^ 0x95] + 22) ^ 0x32;
  *(v14 + LODWORD(STACK[0x1740])) = v329[((v322 ^ 0xF985DD31) >> 16) ^ 0x76] ^ (((v322 ^ 0xF985DD31) >> 16) - ((v322 >> 15) & 0xA4) + 82) ^ 0xA1;
  v334 = *(&off_1002DD400 + v328 - 9468) - 2034929302;
  v335 = v334[BYTE1(v322) ^ 0x45];
  HIDWORD(v333) = v335 ^ 0x17;
  LODWORD(v333) = (v335 ^ 0x80) << 24;
  v336 = (v333 >> 29) - ((2 * (v333 >> 29)) & 0xFFFFFFAC) - 42;
  v337 = (v336 >> 3) ^ (((v333 >> 29) - ((2 * (v333 >> 29)) & 0xAC) - 42) >> 1) ^ 0x71;
  *(v14 + LODWORD(STACK[0x14A0])) = v336 ^ 0x45 ^ (v337 - ((2 * v337) & 0xAC) - 42);
  *(v14 + LODWORD(STACK[0x1530])) = v329[((v326 ^ 0xECDF78A7) >> 16) ^ 0x90] ^ (((v326 ^ 0xECDF78A7) >> 16) - (((v326 ^ 0xECDF78A7) >> 15) & 0xA4) + 82) ^ 0x45;
  v338 = v331[HIBYTE(v323) ^ 0xE1];
  HIDWORD(v333) = v338 ^ 0x22;
  LODWORD(v333) = (v338 ^ 0x40) << 24;
  v339 = (v333 >> 30) + (~(2 * (v333 >> 30)) | 0xFFFFFF91) - 72;
  v340 = (107 - (v339 ^ 0xDC)) ^ ((v339 ^ 0x48) + 1);
  v341 = STACK[0x14B0];
  *(v14 + v341) = (((v340 - ((2 * v340) & 0x6E) - 73) ^ v339) + 107) ^ (4 * v339) ^ 0xDC;
  v342 = v334[(((v326 ^ 0x78A7) >> 8) - (((v326 ^ 0xECDF78A7) >> 7) & 0x1EC) + 246) ^ 0x76];
  HIDWORD(v333) = v342 ^ 0x17;
  LODWORD(v333) = (v342 ^ 0x80) << 24;
  v343 = (v333 >> 29) - ((2 * (v333 >> 29)) & 0x36) - 101;
  v344 = (v343 >> 3) ^ (((v333 >> 29) - ((2 * (v333 >> 29)) & 0x36) - 101) >> 1) ^ 0x5E;
  *(v14 + LODWORD(STACK[0x1810])) = v343 ^ 0x7A ^ (v344 - ((2 * v344) & 0x36) - 101);
  v345 = v331[HIBYTE(v326) ^ 0x37];
  HIDWORD(v333) = v345 ^ 0x22;
  LODWORD(v333) = (v345 ^ 0x40) << 24;
  v346 = (118 - ((v323 >> 8) & 0x76 ^ (BYTE1(v323) ^ 0x80 | 0x76) ^ 0x10)) ^ ((BYTE1(v323) ^ 0xFFFFFF6F) + 1);
  *(v14 + LODWORD(STACK[0x1890])) = (v333 >> 30) ^ (4 * (v333 >> 30)) ^ 0x62;
  v347 = v334[(BYTE1(v323) ^ 0xC42130F5 ^ (v346 - 1004457883 - ((2 * v346) & 0x884260CA))) + 118];
  HIDWORD(v333) = v347 ^ 0x17;
  LODWORD(v333) = (v347 ^ 0x80) << 24;
  v348 = (v333 >> 29) - ((2 * (v333 >> 29)) & 0xFFFFFF84) + 66;
  v349 = (v348 >> 3) ^ (((v333 >> 29) - ((2 * (v333 >> 29)) & 0x84) + 66) >> 1);
  *(v14 + LODWORD(STACK[0x1540])) = v348 ^ 0xBE ^ ((v349 ^ 0x29) + (~(2 * v349) | 0x7B) + 67);
  v350 = v331[HIBYTE(v327) ^ 0x35];
  HIDWORD(v333) = v350 ^ 0x22;
  LODWORD(v333) = (v350 ^ 0x40) << 24;
  *(v14 + LODWORD(STACK[0x17F0])) = (v333 >> 30) ^ (4 * (v333 >> 30)) ^ 0xB2;
  LODWORD(v334) = v334[BYTE1(v327) ^ 0x78];
  HIDWORD(v333) = v334 ^ 0x17;
  LODWORD(v333) = (v334 ^ 0x80) << 24;
  LODWORD(v334) = (v333 >> 29) - ((2 * (v333 >> 29)) & 0xFFFFFF88) - 60;
  v351 = (v334 >> 3) ^ (((v333 >> 29) - ((2 * (v333 >> 29)) & 0x88) - 60) >> 1) ^ 0x7A;
  *(v14 + LODWORD(STACK[0x1840])) = v334 ^ 0xCE ^ (v351 - ((2 * v351) & 0x88) - 60);
  *(v14 + LODWORD(STACK[0x1900])) = (((v327 ^ 0x3D9AF0DD) >> 16) - (((v327 ^ 0x3D9AF0DD) >> 15) & 0xA4) + 82) ^ 0xDC ^ v329[((v327 ^ 0x3D9AF0DD) >> 16) ^ 0x1BLL];
  *(v14 + LODWORD(STACK[0x17E0])) = (v330[v322 ^ 0x20] + 22) ^ 0x94;
  *(v14 + LODWORD(STACK[0x1880])) = ((v330[v326 ^ 0xBFLL] + ((v330[v326 ^ 0xBFLL] + 22) ^ 0xD0) + 23) ^ 0xFE) + v330[v326 ^ 0xBFLL] + 22;
  return (*(STACK[0x1708] + 8 * ((25 * (((v341 - 869343412 - 2 * ((v341 + 16) & STACK[0x1100] ^ STACK[0x1750] & 1)) ^ 0xCC2EDF3C) >= LODWORD(STACK[0x1760]))) ^ v328)))();
}

uint64_t sub_100014124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v10 = STACK[0x13F0];
  LODWORD(STACK[0x17B0]) = (((LODWORD(STACK[0x13F0]) - 1714019580) & 0x6629F57F) - 72319104) ^ a6;
  LODWORD(STACK[0x1830]) = v9 ^ 0x35599612;
  LODWORD(STACK[0x1820]) = v7 ^ 0xC505FDF1;
  LODWORD(STACK[0x17D0]) = v8 ^ 0x2390A9B9;
  return (*(a7 + 8 * v10))(a1, 136, a3, a4, a5, 173, 246);
}

uint64_t sub_1000141A8()
{
  v1 = STACK[0x4138];
  LODWORD(STACK[0x413C]) = STACK[0x4138];
  LODWORD(STACK[0x4140]) = (v1 ^ 0x19B6) + 5012;
  LODWORD(STACK[0x4144]) = 22 * (v1 ^ 0x19B6);
  v2 = STACK[0x4110] + 32;
  STACK[0x4148] = v2;
  STACK[0x40B8] = STACK[0x4108];
  STACK[0x40B0] = v2;
  STACK[0x40A8] = 32;
  STACK[0x40A0] = *(v0 + 8 * (v1 + 4261));
  return (*(v0 + 8 * (v1 + 4254)))();
}

uint64_t sub_100014358()
{
  v3 = (*(v0 + 8 * (v1 + 10450)))();
  v4 = v3 == (*(STACK[0x1708] + 8 * ((v1 + 3746) ^ 0x26FD)))(v2);
  return (*(STACK[0x1708] + 8 * ((v4 * (((v1 - 125) | 0x1854) + 5541)) ^ (v1 + 3746))))();
}

uint64_t sub_1000145C8()
{
  v3 = (*(v0 + 8 * (v2 ^ 0x31A7)))(STACK[0x4128]);
  v4 = STACK[0x1B28];
  if (v1 <= -482337331)
  {
    if (v1 <= -747656591)
    {
      v5 = STACK[0x1708];
      if (v1 > -966614986)
      {
        if (v1 > -902904721)
        {
          if (v1 == -902904720 || v1 == -874769319)
          {
            goto LABEL_72;
          }

          v6 = -771083234;
        }

        else
        {
          if (v1 == -966614985 || v1 == -937824311)
          {
            goto LABEL_72;
          }

          v6 = -922732923;
        }
      }

      else if (v1 > -1546965439)
      {
        if (v1 == -1546965438 || v1 == -1248076999)
        {
          goto LABEL_72;
        }

        v6 = -1158819627;
      }

      else
      {
        if (v1 == -2077031582 || v1 == -2012237500)
        {
          goto LABEL_72;
        }

        v6 = -1652746713;
      }
    }

    else
    {
      v5 = STACK[0x1708];
      if (v1 <= -599294064)
      {
        if (v1 > -639389044)
        {
          if (v1 == -639389043 || v1 == -629461996)
          {
            goto LABEL_72;
          }

          v6 = -611859960;
        }

        else
        {
          if (v1 == -747656590 || v1 == -658191142)
          {
            goto LABEL_72;
          }

          v6 = -651101054;
        }
      }

      else if (v1 <= -564676153)
      {
        if (v1 == -599294063 || v1 == -593259483)
        {
          goto LABEL_72;
        }

        v6 = -575323827;
      }

      else if (v1 > -501868422)
      {
        if (v1 == -501868421)
        {
          goto LABEL_72;
        }

        v6 = -494652261;
      }

      else
      {
        if (v1 == -564676152)
        {
          goto LABEL_72;
        }

        v6 = -547884177;
      }
    }

LABEL_71:
    if (v1 == v6)
    {
      goto LABEL_72;
    }

    goto LABEL_74;
  }

  if (v1 > 137458029)
  {
    v5 = STACK[0x1708];
    if (v1 <= 1070390223)
    {
      if (v1 > 319138271)
      {
        if (v1 == 319138272 || v1 == 458117958)
        {
          goto LABEL_72;
        }

        v6 = 621024042;
      }

      else
      {
        if (v1 == 137458030 || v1 == 220860703)
        {
          goto LABEL_72;
        }

        v6 = 279079766;
      }
    }

    else if (v1 <= 1193369383)
    {
      if (v1 == 1070390224 || v1 == 1128271898)
      {
        goto LABEL_72;
      }

      v6 = 1191049401;
    }

    else if (v1 > 1777874970)
    {
      if (v1 == 1777874971)
      {
        goto LABEL_72;
      }

      v6 = 1879783028;
    }

    else
    {
      if (v1 == 1193369384)
      {
        goto LABEL_72;
      }

      v6 = 1631047952;
    }

    goto LABEL_71;
  }

  v5 = STACK[0x1708];
  if (v1 <= -307125478)
  {
    if (v1 > -371146454)
    {
      if (v1 == -371146453 || v1 == -366055059)
      {
        goto LABEL_72;
      }

      v6 = -330939903;
    }

    else
    {
      if (v1 == -482337330 || v1 == -472258106)
      {
        goto LABEL_72;
      }

      v6 = -402254976;
    }

    goto LABEL_71;
  }

  if (v1 > -271666972)
  {
    if (v1 > -80901562)
    {
      if (v1 == -80901561)
      {
        v11 = STACK[0x1700];
        STACK[0x1B28] = v4 - 128;
        return (*(v5 + 8 * (v11 - 4429)))(v3);
      }

      v6 = 21124307;
      goto LABEL_71;
    }

    if (v1 != -271666971)
    {
      v6 = -221901691;
      goto LABEL_71;
    }

LABEL_72:
    v9 = STACK[0x1700] ^ 0x447;
    v10 = STACK[0x1700] - 802;
    STACK[0x1B28] = v4 - 128;
    LODWORD(STACK[0x279C]) = 1443455193;
    return (*(v5 + 8 * ((43 * (LODWORD(STACK[0x30AC]) - 1443455193 < (v9 - 7229))) ^ v10)))(v3);
  }

  if (v1 == -307125477 || v1 == -301434583)
  {
    goto LABEL_72;
  }

  if (v1 == -275202616)
  {
    v7 = STACK[0x1700];
    LODWORD(STACK[0x2314]) = 1103264942;
    return (*(v5 + 8 * (v7 + 2483)))(v3);
  }

LABEL_74:
  v12 = STACK[0x1700];
  STACK[0x1B28] = v4 - 128;
  return (*(v5 + 8 * (v12 - 349)))(v3);
}

uint64_t sub_100014E34(uint64_t a1, unsigned int a2, uint64_t a3, char *a4, char a5, char a6, char a7, int a8)
{
  v16 = STACK[0x4500];
  v17 = STACK[0x4500];
  *STACK[0x4500] = ((*STACK[0x4500] ^ 3) + 127) ^ 3;
  v18 = a8 == -1491478422;
  if (a8 == -1491478422)
  {
    v19 = v16;
  }

  else
  {
    v19 = (v16 + 1);
  }

  if (a8 == -1491478422)
  {
    v20 = a4;
  }

  else
  {
    v20 = a4 + 1;
  }

  v21 = *v20;
  if (a8 == -1491478422)
  {
    v22 = 3;
  }

  else
  {
    v22 = 4;
  }

  v23 = *(a1 + v22);
  if (a8 == -1491478422)
  {
    v24 = v10;
  }

  else
  {
    v24 = v10 + 1;
  }

  v25 = *v24;
  if (v18)
  {
    v26 = 0;
  }

  else
  {
    v26 = v11;
  }

  *v19 = v21 ^ v26 ^ v23 ^ v25 ^ ((v21 ^ v26 ^ v23 ^ v25 ^ *v19) - 20);
  v27 = 2 % a2;
  v28 = a4[v27] ^ (v27 * v11) ^ *(v27 + a1 + 3) ^ v10[v27];
  *(v16 + v27) = v28 ^ ((v28 ^ *(v16 + v27)) + 111);
  v29 = 3 % a2;
  v30 = *(&off_1002DD400 + v8 - 1035) - 297722470;
  v31 = *(&off_1002DD400 + (v8 ^ 0x70C)) - 2005848383;
  v32 = *(&off_1002DD400 + (v8 ^ 0x691)) - 2012171338;
  v33 = v30[v29] ^ (-59 * v29) ^ v31[v29 + 3] ^ v32[v29 + 1];
  *(v16 + v29) = v33 ^ ((v33 ^ *(v16 + v29)) + a5);
  v34 = 4 % a2;
  v35 = v30[v34] ^ (-59 * v34) ^ v31[v34 + 3] ^ v32[v34 + 1];
  *(v17 + v34) = v35 ^ ((v35 ^ *(v17 + v34)) - 3);
  LODWORD(v29) = STACK[0x2574];
  LODWORD(v34) = LODWORD(STACK[0x2574]) ^ 0xA719D86B;
  v36 = 5 % v34;
  v37 = STACK[0x4500];
  v38 = v30[v36] ^ (-59 * v36) ^ v31[v36 + 3] ^ v32[v36 + 1];
  *(STACK[0x4500] + v36) = v38 ^ ((v38 ^ *(STACK[0x4500] + v36)) + 17);
  v39 = 6 % v34;
  v40 = v30[v39] ^ (-59 * v39) ^ v31[v39 + 3] ^ v32[v39 + 1];
  *(v37 + v39) = v40 ^ ((v40 ^ *(v37 + v39)) + a7);
  v41 = 7 % v34;
  v42 = v30[v41] ^ (-59 * v41) ^ v31[v41 + 3] ^ v32[v41 + 1];
  v43 = STACK[0x4500];
  *(STACK[0x4500] + v41) = v42 ^ ((v42 ^ *(STACK[0x4500] + v41)) + 47);
  v44 = 8 % v34;
  v45 = v30[v44] ^ (-59 * v44) ^ v31[v44 + 3] ^ v32[v44 + 1];
  *(v43 + v44) = v45 ^ (a6 + (v45 ^ *(v43 + v44)));
  v46 = 9 % v34;
  v47 = STACK[0x4500];
  LOBYTE(v44) = v30[v46] ^ (-59 * v46) ^ v31[v46 + 3] ^ v32[v46 + 1];
  *(STACK[0x4500] + v46) = v44 ^ ((v44 ^ *(STACK[0x4500] + v46)) - 118);
  LODWORD(v44) = v29 ^ 0xA719D86B;
  v48 = 0xA % (v29 ^ 0xA719D86B);
  LOBYTE(v30) = v30[v48] ^ (-59 * v48) ^ v31[v48 + 3] ^ v32[v48 + 1];
  *(v47 + v48) = v30 ^ ((v30 ^ *(v47 + v48)) - LODWORD(STACK[0x18F0]));
  v49 = STACK[0x4500];
  v50 = *(&off_1002DD400 + (v8 ^ 0x4BC)) - 1091729039;
  v51 = *(&off_1002DD400 + v8 - 902) - 851503487;
  v52 = *(&off_1002DD400 + (v8 ^ 0x676)) - 1286438659;
  LOBYTE(v43) = v50[0xB % v44] ^ (55 * (0xB % v44)) ^ v51[0xB % v44] ^ v52[0xB % v44];
  *(STACK[0x4500] + 0xB % v44) = v43 ^ ((v43 ^ *(STACK[0x4500] + 0xB % v44)) - 44);
  LOBYTE(v47) = v50[0xC % v44] ^ (55 * (0xC % v44)) ^ v51[0xC % v44] ^ v52[0xC % v44];
  *(v49 + 0xC % v44) = v47 ^ ((v47 ^ *(v49 + 0xC % v44)) - LODWORD(STACK[0x1840]) + 96);
  v53 = 0xD % v44;
  v54 = STACK[0x4500];
  *(STACK[0x4500] + v53) = v50[v53] ^ (55 * v53) ^ v51[v53] ^ v52[v53] ^ (((v53 * v11) ^ *(STACK[0x4500] + v53) ^ a4[v53] ^ *(v53 + a1 + 3) ^ v10[v53]) + (v12 ^ 0x3A));
  LODWORD(v31) = STACK[0x2574];
  LODWORD(v53) = LODWORD(STACK[0x2574]) ^ 0xA719D86B;
  LOBYTE(v49) = v50[0xE % v53] ^ (55 * (0xE % v53)) ^ v51[0xE % v53] ^ v52[0xE % v53];
  *(v54 + 0xE % v53) = v49 ^ ((v49 ^ *(v54 + 0xE % v53)) + 42);
  v55 = STACK[0x4500];
  LOBYTE(v47) = v50[0xF % v53] ^ (55 * (0xF % v53)) ^ v51[0xF % v53] ^ v52[0xF % v53];
  *(STACK[0x4500] + 0xF % v53) = v47 ^ ((v47 ^ *(STACK[0x4500] + 0xF % v53)) - 75);
  v56 = 0x10 % v53;
  *(v55 + v56) = (55 * (v56 & 0xF)) ^ v50[v56 & 0xF] ^ v51[v56 & 0xF] ^ v52[v56 & 0xF] ^ (LODWORD(STACK[0x1890]) + (v51[v56 & 0xF] ^ v50[v56 & 0xF] ^ *(v55 + v56) ^ (55 * (v56 & 0xF)) ^ v52[v56 & 0xF]));
  v57 = 0x11 % v53;
  v58 = STACK[0x4500];
  *(STACK[0x4500] + v57) = (55 * (v57 & 0xF)) ^ v50[v57 & 0xF] ^ v51[v57 & 0xF] ^ v52[v57 & 0xF] ^ ((v51[v57 & 0xF] ^ v50[v57 & 0xF] ^ *(STACK[0x4500] + v57) ^ (55 * (v57 & 0xF)) ^ v52[v57 & 0xF]) + 35);
  v59 = 0x12 % v53;
  *(v58 + v59) = (55 * (v59 & 0xF)) ^ v50[v59 & 0xF] ^ v51[v59 & 0xF] ^ v52[v59 & 0xF] ^ ((v51[v59 & 0xF] ^ v50[v59 & 0xF] ^ *(v58 + v59) ^ (55 * (v59 & 0xF)) ^ v52[v59 & 0xF]) + v14);
  LODWORD(v57) = v31 ^ 0xA719D86B;
  v60 = 0x13 % (v31 ^ 0xA719D86B);
  v61 = STACK[0x4500];
  v62 = (v50[v60 & 0xF] ^ *(STACK[0x4500] + v60) ^ v51[v60 & 0xF] ^ (55 * (v60 & 0xF)) ^ v52[v60 & 0xF]) + v13;
  v63 = *(&off_1002DD400 + (v8 ^ 0x7AC)) - 1137878431;
  v64 = *(&off_1002DD400 + (v8 ^ 0x74A)) - 1537409727;
  v65 = *(&off_1002DD400 + v8 - 961) - 1816828250;
  *(STACK[0x4500] + v60) = v63[v60 & 0xF] ^ (-41 * (v60 & 0xF)) ^ v64[v60 & 0xF] ^ v65[v60 & 0xF] ^ v62;
  v66 = 0x14 % v57;
  *(v61 + v66) = (-41 * (v66 & 0xF)) ^ v63[v66 & 0xF] ^ v64[v66 & 0xF] ^ v65[v66 & 0xF] ^ ((v64[v66 & 0xF] ^ v63[v66 & 0xF] ^ *(v61 + v66) ^ (-41 * (v66 & 0xF)) ^ v65[v66 & 0xF]) - 64);
  v67 = 0x15 % v57;
  v68 = STACK[0x4500];
  *(STACK[0x4500] + v67) = (-41 * (v67 & 0xF)) ^ v63[v67 & 0xF] ^ v64[v67 & 0xF] ^ v65[v67 & 0xF] ^ ((v64[v67 & 0xF] ^ v63[v67 & 0xF] ^ *(STACK[0x4500] + v67) ^ (-41 * (v67 & 0xF)) ^ v65[v67 & 0xF]) - 26);
  v69 = 0x16 % v57;
  *(v68 + v69) = (-41 * (v69 & 0xF)) ^ v63[v69 & 0xF] ^ v64[v69 & 0xF] ^ v65[v69 & 0xF] ^ ((v64[v69 & 0xF] ^ v63[v69 & 0xF] ^ *(v68 + v69) ^ (-41 * (v69 & 0xF)) ^ v65[v69 & 0xF]) - 95);
  LODWORD(v69) = STACK[0x2574];
  LODWORD(v57) = LODWORD(STACK[0x2574]) ^ 0xA719D86B;
  v70 = 0x17 % v57;
  v71 = STACK[0x4500];
  *(STACK[0x4500] + v70) = (-41 * (v70 & 0xF)) ^ v63[v70 & 0xF] ^ v64[v70 & 0xF] ^ v65[v70 & 0xF] ^ ((v64[v70 & 0xF] ^ v63[v70 & 0xF] ^ *(STACK[0x4500] + v70) ^ (-41 * (v70 & 0xF)) ^ v65[v70 & 0xF]) + LODWORD(STACK[0x18A0]));
  v72 = 0x18 % v57;
  *(v71 + v72) = (-41 * (v72 & 0xF)) ^ v63[v72 & 0xF] ^ v64[v72 & 0xF] ^ v65[v72 & 0xF] ^ ((v64[v72 & 0xF] ^ v63[v72 & 0xF] ^ *(v71 + v72) ^ (-41 * (v72 & 0xF)) ^ v65[v72 & 0xF]) - 118);
  v73 = 0x19 % v57;
  v74 = STACK[0x4500];
  *(STACK[0x4500] + v73) = (-41 * (v73 & 0xF)) ^ v63[v73 & 0xF] ^ v64[v73 & 0xF] ^ v65[v73 & 0xF] ^ ((v64[v73 & 0xF] ^ v63[v73 & 0xF] ^ *(STACK[0x4500] + v73) ^ (-41 * (v73 & 0xF)) ^ v65[v73 & 0xF]) - 125);
  v75 = 0x1A % v57;
  *(v74 + v75) = (-41 * (v75 & 0xF)) ^ v63[v75 & 0xF] ^ v64[v75 & 0xF] ^ v65[v75 & 0xF] ^ ((v64[v75 & 0xF] ^ v63[v75 & 0xF] ^ *(v74 + v75) ^ (-41 * (v75 & 0xF)) ^ v65[v75 & 0xF]) + 118);
  v76 = 0x1B % v57;
  v77 = STACK[0x4500];
  LOBYTE(v64) = v63[v76 & 0xF] ^ *(STACK[0x4500] + v76) ^ v64[v76 & 0xF] ^ (-41 * (v76 & 0xF)) ^ v65[v76 & 0xF];
  v78 = *(&off_1002DD400 + (v8 ^ 0x770)) - 1891425099;
  LOBYTE(v58) = v64 + 55;
  v79 = *(&off_1002DD400 + (v8 ^ 0x6EF)) - 2046308282;
  v80 = *(&off_1002DD400 + (v8 ^ 0x477)) - 354617378;
  *(STACK[0x4500] + v76) = v78[v76 & 0xF] ^ (31 * (v76 & 0xF)) ^ v79[v76 & 0xF] ^ v80[(v76 & 0xF) + 1] ^ v58;
  LODWORD(v76) = v69 ^ 0xA719D86B;
  v81 = 0x1C % (v69 ^ 0xA719D86B);
  *(v77 + v81) = (31 * (v81 & 0xF)) ^ v78[v81 & 0xF] ^ v79[v81 & 0xF] ^ v80[(v81 & 0xF) + 1] ^ ((v79[v81 & 0xF] ^ v78[v81 & 0xF] ^ *(v77 + v81) ^ (31 * (v81 & 0xF)) ^ v80[(v81 & 0xF) + 1]) + 115);
  v82 = 0x1D % v76;
  v83 = STACK[0x4500];
  *(STACK[0x4500] + v82) = (31 * (v82 & 0xF)) ^ v78[v82 & 0xF] ^ v79[v82 & 0xF] ^ v80[(v82 & 0xF) + 1] ^ ((v79[v82 & 0xF] ^ v78[v82 & 0xF] ^ *(STACK[0x4500] + v82) ^ (31 * (v82 & 0xF)) ^ v80[(v82 & 0xF) + 1]) + STACK[0x18B0]);
  v84 = 0x1E % v76;
  *(v83 + v84) = (31 * (v84 & 0xF)) ^ v78[v84 & 0xF] ^ v79[v84 & 0xF] ^ v80[(v84 & 0xF) + 1] ^ ((v79[v84 & 0xF] ^ v78[v84 & 0xF] ^ *(v83 + v84) ^ (31 * (v84 & 0xF)) ^ v80[(v84 & 0xF) + 1]) + 81);
  v85 = 0x1F % v76;
  *(STACK[0x4500] + v85) = (31 * (v85 & 0xF)) ^ v78[v85 & 0xF] ^ v79[v85 & 0xF] ^ v80[(v85 & 0xF) + 1] ^ ((v79[v85 & 0xF] ^ v78[v85 & 0xF] ^ *(STACK[0x4500] + v85) ^ (31 * (v85 & 0xF)) ^ v80[(v85 & 0xF) + 1]) + v9);
  return (*(v15 + 8 * v8))(1352629100);
}

uint64_t sub_100015AC8()
{
  v10 = (v6 - 519047559) % v5;
  v11 = (v6 - 519047566) % v5;
  v12 = *(STACK[0x4500] + v11);
  v13 = v11 & 0xF;
  v14 = *(STACK[0x1680] + v13);
  v15 = *(v13 + STACK[0x16A8] + 1);
  v16 = *(v7 + v13) ^ v12;
  v17 = v16 ^ (39 * v13) ^ v14;
  LODWORD(v13) = v16 ^ (v13 * v8) ^ v14;
  v18 = (v6 - 519047596) % v5;
  v19 = v17 ^ v15;
  v20 = *(v7 + (v18 & 0xF)) ^ *(STACK[0x4500] + v18);
  v21 = *(STACK[0x1680] + (v18 & 0xF));
  LODWORD(v13) = v13 ^ v15;
  v22 = *((v18 & 0xF) + STACK[0x16A8] + 1);
  LODWORD(v18) = v20 ^ -v18 ^ v21 ^ v22;
  v23 = (v6 - 519047736) % v5;
  v24 = v20 ^ ((((v6 - 519047596) % v5) & 0xF) * v8) ^ v21 ^ v22;
  v25 = v23 & 0xF;
  v26 = *(v7 + v25) ^ *(STACK[0x4500] + v23);
  v27 = *(STACK[0x1680] + v25);
  HIDWORD(v28) = v19;
  LODWORD(v28) = v13 << 24;
  LODWORD(v13) = v28 >> 31;
  LODWORD(v23) = -v23 ^ v27;
  v29 = (v25 * v8) ^ v27;
  v30 = (((v2 - 1145274653) & 0x44437CEF) - 1182) & v10;
  LODWORD(v25) = *(v25 + STACK[0x16A8] + 1);
  HIDWORD(v28) = v26 ^ v23 ^ v25;
  LODWORD(v28) = (v26 ^ v29 ^ v25) << 24;
  LODWORD(v23) = v28 >> 27;
  HIDWORD(v28) = v18;
  LODWORD(v28) = v24 << 24;
  *(STACK[0x4500] + v10) ^= (31 * v30) ^ (v30 * v8) ^ *(v0 + v30) ^ *(v1 + v30) ^ *(v3 + v30 + 1) ^ v13 ^ (v28 >> 26) ^ *(v7 + v30) ^ *(STACK[0x1680] + v30) ^ *(STACK[0x16A8] + v30 + 1) ^ v23;
  return (*(v9 + 8 * ((43 * (v6 + 1 == v4 + 256)) ^ v2)))();
}

uint64_t sub_100015C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W8>)
{
  STACK[0x1B28] -= 512;
  STACK[0x2D18] = *(v7 + 8 * a7);
  return (*(v7 + 8 * ((a7 - 546) ^ a7)))(a1, a2, a3, a4, a5, 0x9782C6AD38D5FD24, a6, STACK[0x1700]);
}

uint64_t sub_100015CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x10F0];
  LODWORD(STACK[0x1900]) = 3 * (LODWORD(STACK[0x10F0]) ^ 0x38F);
  LODWORD(STACK[0x3314]) = 0;
  STACK[0x18F0] = STACK[0x3308];
  return (*(a7 + 8 * v7))();
}

uint64_t sub_100015D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x1900];
  v8 = LODWORD(STACK[0x1900]) + 4443;
  (*(a7 + 8 * v8))(STACK[0x3318] - 0x750281D050A8BAE6);
  (*(STACK[0x1708] + 8 * (v7 ^ 0x31A5)))(STACK[0x3338] - 0x3D0AC9BDCFC3F23DLL);
  (*(STACK[0x1708] + 8 * v8))(STACK[0x3348]);
  (*(STACK[0x1708] + 8 * (v7 ^ 0x31A5)))(STACK[0x3320]);
  (*(STACK[0x1708] + 8 * v8))(STACK[0x3300] - 0x7AE60F840D03EC59);
  (*(STACK[0x1708] + 8 * (v7 ^ 0x31A5)))(STACK[0x18F0]);
  (*(STACK[0x1708] + 8 * (v7 ^ 0x31A5)))(STACK[0x3330] - 0x791C95BE0100B682);
  (*(STACK[0x1708] + 8 * (v7 ^ 0x31A5)))(STACK[0x32F8]);
  return (*(STACK[0x1708] + 8 * v7))(3579290125, 2906432874);
}

uint64_t sub_100015E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x11B8] = v9;
  STACK[0x31C8] = v6 - 32;
  return (*(v10 + 8 * ((((LODWORD(STACK[0x4254]) ^ 0x237EDAA8) - 135928994 + ((2 * LODWORD(STACK[0x4254])) & 0xBFFE3FFC ^ 0xB9020AAC) != v7) * a6) ^ v8)))(a1, a2, 3622110044, 4294959994, 4056074688);
}

uint64_t sub_100015EFC(int a1, int a2, unsigned int a3, int a4, int a5, int a6, char a7, int a8)
{
  v16 = STACK[0x4238] + (v10 + a1);
  v17 = ((*(*v13 + (*v12 & a5)) ^ v16) & 0x7FFFFFFF) * (v8 ^ (a8 - 1569));
  *v16 ^= *(*(&off_1002DD400 + v11 + a4) + ((v10 + a1) & 0xF | (16 * (((v17 ^ HIWORD(v17)) * a8) >> 24))) + v14) ^ ((v17 ^ BYTE2(v17)) * a7);
  if (v9 < a3 != v10 + a2 < a3)
  {
    v18 = v9 < a3;
  }

  else
  {
    v18 = v10 + a2 < v9;
  }

  return (*(v15 + 8 * ((v18 * a6) ^ v11)))();
}

uint64_t sub_100016044()
{
  STACK[0x2CF8] = v0;
  v3 = (*(v2 + 8 * (v1 ^ 0x3253)))();
  v4 = STACK[0x1708];
  STACK[0x1B28] += (v1 + 1784307322) & 0x95A5AF6F ^ 0xFFFFFFFFFFFFD9C8;
  return (*(v4 + 8 * (((v0 == 0x56F780AC40F6473BLL) * (((v1 - 2049077697) & 0x7A227FFE) - 9859)) ^ (v1 + 3094))))(v3);
}

uint64_t sub_1000160F4()
{
  v4 = (*(v3 + 8 * (v1 ^ 0xFE9)))(((((v1 + 1903880854) & 0x8E84EFC5) - 1443448617) ^ ((v1 - 484) | 0x238)) + *(v0 + v2));
  v5 = STACK[0x1708];
  STACK[0x3C30] = v4;
  return (*(v5 + 8 * (((4 * (v4 == 0)) | (16 * (v4 == 0))) ^ v1)))();
}

uint64_t sub_1000161F4(uint64_t a1, uint64_t a2)
{
  STACK[0x17E0] = STACK[0x3AC8];
  LODWORD(STACK[0x17D0]) = STACK[0x3ABC];
  LODWORD(STACK[0x17B0]) = ((v3 - 1259819216) & 0x4B175F7F) + 68583268;
  STACK[0x1830] = STACK[0x2A70];
  v5 = STACK[0x1D24];
  v6 = *STACK[0x40D8];
  STACK[0x1770] = &STACK[0x202F6D26B0774E5E];
  STACK[0x17A0] = STACK[0x3810];
  LODWORD(STACK[0x1790]) = STACK[0x3804];
  LODWORD(STACK[0x1780]) = STACK[0x3830];
  v7 = STACK[0x1FC8];
  STACK[0x1760] = v6 + 0x6C23EEA6EBAF4D26;
  STACK[0x1810] = STACK[0x3AF0];
  LODWORD(STACK[0x1890]) = STACK[0x3AFC];
  STACK[0x1820] = STACK[0x3B00];
  STACK[0x18A0] = STACK[0x2630];
  STACK[0x18B0] = STACK[0x3B08];
  STACK[0x1860] = STACK[0x3B10];
  LODWORD(STACK[0x1880]) = STACK[0x1DA4];
  v8 = LODWORD(STACK[0x2E74]);
  v9 = LODWORD(STACK[0x3B1C]);
  v10 = STACK[0x3B20];
  LODWORD(STACK[0x18F0]) = STACK[0x3834];
  STACK[0x1900] = STACK[0x3838];
  v11 = STACK[0x3840];
  STACK[0x1850] = STACK[0x3848];
  STACK[0x1750] = v6 + 0x37F47E234F185752;
  LODWORD(STACK[0x1840]) = STACK[0x1A64];
  v12 = *(v4 + 8 * v3);
  LODWORD(STACK[0x1800]) = v5;
  STACK[0x1720] = v6 + 0x4C541F7FC0AA383CLL;
  STACK[0x1740] = (v5 - 1443455193);
  STACK[0x1710] = (v5 - 1443455189);
  STACK[0x1730] = v6 + 0x20DA6E71E73AF24CLL;
  STACK[0x1600] = v6 + v2;
  v13 = STACK[0x3858];
  LODWORD(STACK[0x17F0]) = v7;
  return v12(a1, a2, v11, v9, v10, v8, v13);
}

uint64_t sub_100016424@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(a1 + (a2 - 1716021963)) = *(v6 + (a2 - 1716021963));
  v8 = a2 - 522503218;
  v9 = (v3 > 0xB8DC5967) ^ (v8 < 0x4723A698);
  v10 = v8 < v4;
  if (v9)
  {
    v10 = v3 > 0xB8DC5967;
  }

  return (*(v7 + 8 * ((v10 * v5) ^ v2)))();
}

uint64_t sub_1000166E8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v9 = (v6 + v4);
  v10 = *(v7 + v9 - 15);
  v11 = *(v7 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((a2 == 0) * a4) ^ v5)))();
}

uint64_t sub_100016810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = LODWORD(STACK[0x1780]) == 68588956;
  *STACK[0x17A0] += LODWORD(STACK[0x1790]);
  STACK[0x1B28] += (a8 + 931743329) & 0xC876BDFA ^ 0xFFFFFFFFFFFFE32ALL;
  return (*(v8 + 8 * (((a8 ^ 0x1815) * v9) ^ (a8 - 4587))))();
}

uint64_t sub_100016970()
{
  v4 = v1 + 528962472;
  v5 = *v2 + 660740592;
  v6 = v4 < 0x7590B47D;
  v7 = v4 > v5;
  if (v6 != v5 < (v0 ^ 0x7590BC03u))
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((v7 * ((5011 * (v0 ^ 0x87C)) ^ 0x27DC)) ^ v0)))();
}

uint64_t sub_100016B14@<X0>(unsigned int a1@<W8>)
{
  v5 = (((((v1 + 1557862364) & 0xA324FD85 ^ 0x63A2D6E3) + 2 * v2) << (39 * (v1 ^ 0x26) - 66)) & 0xBD5FF7DC) + ((((v1 + 1557862364) & 0xA324FD85 ^ 0x63A2D6E3) + 2 * v2) ^ 0xDEAFFBEF);
  if (v3 > 0x46F169D8 != v5 - 631334344 < 0xB90E9627)
  {
    v6 = v5 - 631334344 < 0xB90E9627;
  }

  else
  {
    v6 = v5 - 631334344 > a1;
  }

  return (*(v4 + 8 * ((4562 * v6) ^ v1)))();
}

uint64_t sub_100016BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v9 = *(v8 + 8 * (v7 ^ 0x3584));
  LODWORD(STACK[0x1540]) = a6;
  STACK[0x1530] = a5;
  v10 = *(STACK[0x1708] + 8 * ((41 * (v9(v6 + ((v7 - 1043087111) & 0x3E2C3B7F) + ((v7 - 1060232328) & 0x3F31D2BEu) + 558881111) == 0)) ^ v7));
  return v10();
}

uint64_t sub_100016CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v12 + 8 * (v7 - 2559));
  STACK[0x1850] = v9;
  STACK[0x1900] = v11;
  LODWORD(STACK[0x18F0]) = v8;
  LODWORD(STACK[0x1840]) = v6;
  return v13(a1, a2, v10, a4, a5, a6, a1);
}

uint64_t sub_100016CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = v8 == LODWORD(STACK[0x17B0]);
  *STACK[0x17E0] += LODWORD(STACK[0x17D0]) - 1443455193;
  STACK[0x1B28] -= 16;
  return (*(v9 + 8 * (((a8 - 7657 + ((a8 - 623587967) & 0x252B1F6F)) * v10) | (a8 + 43))))();
}

uint64_t sub_100016D4C()
{
  v3 = STACK[0x1750] != 0x8EEBFECF900E9E8DLL;
  v4 = STACK[0x1830] == 0;
  STACK[0x1B28] = v1;
  v5 = !v4 && v3;
  return (*(v2 + 8 * ((25 * v5) ^ v0)))();
}

uint64_t sub_100016DC4()
{
  *(v1 - 0x202F6D26B07708EELL) = *v3;
  *(v1 - 0x202F6D26B07708EALL) = v2;
  *(v1 - 0x202F6D26B07708E6) = 1443455197;
  return (*(v4 + 8 * (((((349 * ((v0 - 2696) ^ 0x1482)) ^ 0xFFFFC1E3) + ((v0 - 2696) ^ 0x95C)) * (v1 == 0x202F6D26B07708EELL)) ^ (v0 - 2696))))();
}

uint64_t sub_100016EE0()
{
  LODWORD(STACK[0x15B0]) = v3;
  v5 = v1 + 1329956631;
  v6 = *v2 + 316776184 + ((v0 - 172) ^ 0x2324);
  v7 = v5 < 0x611062A0;
  v8 = v5 > v6;
  if (v7 != v6 < 0x611062A0)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((21 * v8) ^ v0)))();
}

uint64_t sub_1000170C8@<X0>(int a1@<W0>, unsigned int a2@<W2>, unsigned int a3@<W8>)
{
  v7 = ((2 * (a1 + 2 * v5 + ((v4 - 2264) | 0xA09) + 3879)) & 0xFF5D3DBC) + ((a1 + 2 * v5 + ((v4 - 2264) | 0xA09) + 3879) ^ 0xFFAE9EDF);
  if (a2 > v3 != v7 + 997066142 < 0x3B1CA47D)
  {
    v8 = v7 + 997066142 < 0x3B1CA47D;
  }

  else
  {
    v8 = v7 + 997066142 > a3;
  }

  return (*(v6 + 8 * ((6176 * v8) ^ v4)))();
}

uint64_t sub_100017174(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = *(v9 + 8 * (v8 + 3342));
  LODWORD(STACK[0x1540]) = a3;
  STACK[0x1530] = a7;
  v11 = *(STACK[0x1708] + 8 * ((241 * (v10((((v8 ^ 0x19B5) + 4792) ^ 0x51795Fu) + v7) != 0)) ^ v8));
  return v11();
}

uint64_t sub_100017208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v9 + 8 * ((v5 - 6095) ^ 0xED0));
  LODWORD(STACK[0x1880]) = v4;
  STACK[0x1860] = v6;
  STACK[0x18B0] = v7;
  STACK[0x1820] = v8;
  LODWORD(STACK[0x1890]) = STACK[0x1800];
  STACK[0x1810] = STACK[0x1830];
  return v10(a1, a2, a3, a4, a1);
}

uint64_t sub_1000172A8(unint64_t a1, unint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = v8;
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = a1;
  STACK[0x3B08] = a2;
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = v10;
  STACK[0x3838] = v13;
  STACK[0x3840] = v12;
  STACK[0x3848] = a3;
  LODWORD(STACK[0x227C]) = v11;
  LODWORD(STACK[0x3854]) = 68588956;
  STACK[0x3858] = a7;
  LODWORD(STACK[0x1A64]) = v9;
  return (*(v14 + 8 * (v7 - 519)))();
}

uint64_t sub_100017344(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1830];
  LODWORD(STACK[0x3AFC]) = STACK[0x1800];
  STACK[0x3B00] = v15;
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = v14;
  STACK[0x3B10] = v12;
  LODWORD(STACK[0x2E74]) = a3;
  LODWORD(STACK[0x3B1C]) = 68588956;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = v9;
  STACK[0x3838] = a4;
  STACK[0x3840] = v11;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v13;
  LODWORD(STACK[0x3854]) = v10;
  STACK[0x3858] = a7;
  LODWORD(STACK[0x1DA4]) = v8;
  return (*(v16 + 8 * v7))();
}

uint64_t sub_100017464()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xFB1)))();
  v3 = STACK[0x1708];
  STACK[0x1F68] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000174DC()
{
  v2 = (*(v1 + 8 * ((v0 ^ 0x2EA) + 5618)))();
  v3 = STACK[0x1708];
  STACK[0x2A70] = 0;
  return (*(v3 + 8 * (v0 ^ 0x2EA)))(v2);
}

uint64_t sub_100017518@<X0>(unint64_t a1@<X2>, int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, unint64_t a5@<X6>, int a6@<W8>)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a4;
  LODWORD(STACK[0x3B1C]) = a2;
  STACK[0x3B20] = a3;
  LODWORD(STACK[0x3834]) = v7;
  STACK[0x3838] = v6;
  STACK[0x3840] = a1;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a5;
  return (*(v10 + 8 * a6))();
}

uint64_t sub_100017598(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1830];
  LODWORD(STACK[0x3AFC]) = v11;
  STACK[0x3B00] = v13;
  STACK[0x2630] = v9;
  STACK[0x3B08] = v8;
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v12;
  LODWORD(STACK[0x3854]) = v10;
  STACK[0x3858] = a7;
  return (*(v14 + 8 * v7))();
}

uint64_t sub_100017618(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = v10;
  STACK[0x3838] = v14;
  STACK[0x3840] = v13;
  STACK[0x3848] = v11;
  LODWORD(STACK[0x1A64]) = v8;
  LODWORD(STACK[0x227C]) = v12;
  LODWORD(STACK[0x3854]) = v9;
  STACK[0x3858] = a7;
  return (*(v15 + 8 * v7))();
}

uint64_t sub_10001768C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1830];
  LODWORD(STACK[0x3AFC]) = STACK[0x1800];
  STACK[0x3B00] = v13;
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = v12;
  STACK[0x3B10] = v10;
  LODWORD(STACK[0x1DA4]) = v7;
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v11;
  LODWORD(STACK[0x3854]) = v9;
  STACK[0x3858] = a7;
  return (*(v14 + 8 * v8))();
}

uint64_t sub_100017704(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 - 919;
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x3BD8];
  v13 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3BD8] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3BF8];
  *STACK[0x3BE8] = STACK[0x1EAC];
  v15 = STACK[0x3BF4];
  LODWORD(STACK[0x3C00]) = STACK[0x3BF4];
  return (*(v14 + 8 * ((2746 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_100017800(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 - 349;
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x3B38];
  v13 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3B38] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3B58];
  *STACK[0x3B48] = STACK[0x1C4C];
  v15 = STACK[0x3B54];
  LODWORD(STACK[0x3B64]) = STACK[0x3B54];
  return (*(v14 + 8 * ((13068 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_1000178FC(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = STACK[0x1890];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  v12 = STACK[0x18B0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  *v12 += ((a8 + 1353) ^ 0xA9F682E0) + v11;
  return (*(v10 + 8 * (a8 - 3986)))();
}

uint64_t sub_1000179A8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 + 431;
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x3920];
  v13 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3920] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3940];
  *STACK[0x3930] = STACK[0x3124];
  v15 = STACK[0x393C];
  LODWORD(STACK[0x394C]) = STACK[0x393C];
  return (*(v14 + 8 * ((14852 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_100017AA4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = (a8 + 1353) ^ 0x17F8;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v12 = a8 - 3986;
  v13 = STACK[0x1820];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  v14 = STACK[0x1880];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v17 = (*(v10 + 8 * (a8 + 4269)))(*(v13 - 0x56F780AC40F6473BLL));
  v18 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = a5;
  *STACK[0x3B10] = v14;
  LODWORD(STACK[0x3B28]) = a4;
  return (*(v18 + 8 * ((865 * (a4 == (v11 ^ 0x4169FA3))) ^ v12)))(v17);
}

uint64_t sub_100017BC4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = a8 ^ 0x15E8;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v12 = (a8 - 2169) | 0xBA;
  STACK[0x3B00] = STACK[0x1820];
  v13 = a8 - 2864;
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  v14 = STACK[0x1900];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  v15 = STACK[0x1840];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v17 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(v14 - 0x56F780AC40F6473BLL));
  v18 = STACK[0x1708];
  *(v14 - 0x56F780AC40F6473BLL) = a7;
  *STACK[0x3848] = v15;
  LODWORD(STACK[0x3864]) = v8;
  return (*(v18 + 8 * ((((v12 + 1131) ^ v11) * (v8 == 68588956)) ^ v13)))(v17);
}

uint64_t sub_100017CDC(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v11 = (a8 - 1299514055) & 0x4D74EFFF;
  STACK[0x3B00] = STACK[0x1820];
  v12 = a8 - 4968;
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x3BA8];
  v14 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3BA8] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x3BC8];
  *STACK[0x3BB8] = STACK[0x1C24];
  return (*(v15 + 8 * (((LODWORD(STACK[0x3BC4]) == 68588956) * (v11 + 6570)) ^ v12)))(v14);
}

uint64_t sub_100017DF4()
{
  v3 = STACK[0x3BB0];
  v4 = STACK[0x3BA0];
  v5 = (((2 * (*v3 - 1443455193)) & 0x8FADEB3ELL) + ((*v3 - 1443455193) ^ 0xFBFFEDEE47D6F59FLL) + *(v1 - 0x56F780AC40F6473BLL));
  v5[(3135 * (v0 ^ 0x5B5u)) ^ 0x4001211B829121FLL] = HIBYTE(STACK[0x3BA0]) ^ 0xC3;
  v5 += 0x4001211B8290A62;
  *v5 = BYTE6(v4) ^ 0x12;
  v5[1] = BYTE5(v4) ^ 0xA2;
  v5[2] = BYTE4(v4) ^ 0x43;
  v5[3] = BYTE3(v4) ^ 0x3E;
  v5[4] = BYTE2(v4) ^ 0x47;
  v5[5] = BYTE1(v4) ^ 0xD2;
  v5[6] = v4 ^ 0x78;
  *v3 += 8;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_100017EFC(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  *STACK[0x39E0] += ((a8 + 1643677313) & 0x9E0773F7 ^ 0xA9F68DD0) + LODWORD(STACK[0x39D4]);
  return (*(v10 + 8 * (a8 - 558)))();
}

uint64_t sub_100017FC0(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  *STACK[0x3788] += (a8 ^ 0xA9F68759) + LODWORD(STACK[0x377C]);
  return (*(v10 + 8 * (a8 - 738)))();
}

uint64_t sub_100018074(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v11 = (a8 - 4899) | 0x24;
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  v12 = (a8 + 1743805941) & 0x980F9BEC;
  v13 = a8 - 3298;
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v14 = STACK[0x3740];
  v15 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3740] - 0x56F780AC40F6473BLL));
  v16 = STACK[0x1708];
  *(v14 - 0x56F780AC40F6473BLL) = STACK[0x3760];
  *STACK[0x3750] = STACK[0x2154];
  v17 = STACK[0x375C];
  LODWORD(STACK[0x376C]) = STACK[0x375C];
  return (*(v16 + 8 * (((v17 == 68588956) * ((v12 + 2840) ^ v11)) ^ v13)))(v15);
}

uint64_t sub_1000181B4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v11 = (a8 - 6250) | 0x12A1;
  v12 = a8 - 738;
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x3780];
  v14 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3780] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x37A0];
  *STACK[0x3790] = STACK[0x1D94];
  v16 = STACK[0x379C];
  LODWORD(STACK[0x37AC]) = STACK[0x379C];
  return (*(v15 + 8 * ((2609 * (v16 == (v11 ^ 0x4168729))) ^ v12)))(v14);
}

uint64_t sub_1000182C4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  LODWORD(STACK[0x2870]) = STACK[0x241C];
  return (*(v10 + 8 * (a8 - 1946)))();
}

uint64_t sub_10001835C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  STACK[0x3068] = STACK[0x1B18];
  LODWORD(STACK[0x2870]) = STACK[0x2C5C];
  return (*(v10 + 8 * (a8 - 4705)))();
}

uint64_t sub_10001841C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 - 2792;
  STACK[0x3AF0] = STACK[0x1810];
  v12 = a8 - 2864;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x37C8];
  v14 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x37C8] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x37E8];
  *STACK[0x37D8] = STACK[0x30DC];
  v16 = STACK[0x37E4];
  LODWORD(STACK[0x37F4]) = STACK[0x37E4];
  return (*(v15 + 8 * ((6873 * (v16 == v11 + 68585478)) ^ v12)))(v14);
}

uint64_t sub_100018520(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  v11 = 53 * (a8 ^ 0x1840);
  STACK[0x2630] = STACK[0x18A0];
  v12 = 2462 * (a8 ^ 0x187D);
  v13 = a8 - 466;
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v14 = STACK[0x3808];
  v15 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3808] - 0x56F780AC40F6473BLL));
  v16 = STACK[0x1708];
  *(v14 - 0x56F780AC40F6473BLL) = STACK[0x3828];
  *STACK[0x3818] = STACK[0x2528];
  v17 = STACK[0x3824];
  LODWORD(STACK[0x3830]) = STACK[0x3824];
  return (*(v16 + 8 * (((v17 == v11 + 68585670) * (v12 ^ 0x15BD)) ^ v13)))(v15);
}

uint64_t sub_1000186B4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 - 1707;
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x38B0];
  v13 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x38B0] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x38D0];
  *STACK[0x38C0] = STACK[0x265C];
  v15 = STACK[0x38CC];
  LODWORD(STACK[0x38DC]) = STACK[0x38CC];
  return (*(v14 + 8 * ((12489 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_1000187B0(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = a8 - 4669;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x3A10];
  v13 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3A10] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3A30];
  *STACK[0x3A20] = STACK[0x1C14];
  v15 = STACK[0x3A2C];
  LODWORD(STACK[0x3A38]) = STACK[0x3A2C];
  return (*(v14 + 8 * ((51 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_1000188B0(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = a8 - 558;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x39D8];
  v14 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x39D8] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x39F8];
  *STACK[0x39E8] = STACK[0x2B94];
  v16 = STACK[0x39F4];
  LODWORD(STACK[0x3A04]) = STACK[0x39F4];
  return (*(v15 + 8 * (((v16 == 68588956) * (a8 + 7758)) ^ v11)))(v14);
}

uint64_t sub_1000189B0(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = a8 - 4682;
  v12 = a8 - 1837;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x3998];
  v14 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3998] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x39B8];
  *STACK[0x39A8] = STACK[0x2120];
  v16 = STACK[0x39B4];
  LODWORD(STACK[0x39C4]) = STACK[0x39B4];
  return (*(v15 + 8 * ((2955 * (v16 == v11 + 68587368)) ^ v12)))(v14);
}

uint64_t sub_100018B10(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 - 2695;
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x3878];
  v13 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x3878] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3898];
  *STACK[0x3888] = STACK[0x1A1C];
  v15 = STACK[0x3894];
  LODWORD(STACK[0x38A4]) = STACK[0x3894];
  return (*(v14 + 8 * (((v15 == 68588956) | (8 * (v15 == 68588956))) ^ v11)))(v13);
}

uint64_t sub_100018C08(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = (a8 - 2166) | 0x131;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v12 = a8 - 4682;
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x3958];
  v14 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3958] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x3978];
  *STACK[0x3968] = STACK[0x2810];
  v16 = STACK[0x3974];
  LODWORD(STACK[0x3984]) = STACK[0x3974];
  return (*(v15 + 8 * (((v16 == 68588956) * (v11 ^ 0xD0E)) ^ v12)))(v14);
}

uint64_t sub_100018D14(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v11 = (a8 - 1758746848) & 0x68D448FF;
  v12 = a8 - 1431;
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x3AC0];
  v14 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3AC0] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x3AE0];
  *STACK[0x3AD0] = STACK[0x302C];
  v16 = STACK[0x3ADC];
  LODWORD(STACK[0x3AEC]) = STACK[0x3ADC];
  return (*(v15 + 8 * (((v16 == 68588956) * (v11 ^ 0x36F)) ^ v12)))(v14);
}

uint64_t sub_100018E90(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 - 1750;
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x38E8];
  v13 = (*(v10 + 8 * (a8 ^ 0x3155)))(*(STACK[0x38E8] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3908];
  *STACK[0x38F8] = STACK[0x2A84];
  v15 = STACK[0x3904];
  LODWORD(STACK[0x3914]) = STACK[0x3904];
  return (*(v14 + 8 * ((14633 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_100018F8C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  v11 = (a8 - 6141) | 0x2838;
  v12 = a8 - 4064;
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x3A80];
  v14 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3A80] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x3AA0];
  *STACK[0x3A90] = STACK[0x3144];
  v16 = STACK[0x3A9C];
  LODWORD(STACK[0x3AAC]) = STACK[0x3A9C];
  return (*(v15 + 8 * ((11985 * (v16 == v11 + 68578531)) ^ v12)))(v14);
}

uint64_t sub_10001909C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  v11 = a8 - 4968;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x3A40];
  v13 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3A40] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3A60];
  *STACK[0x3A50] = STACK[0x252C];
  v15 = STACK[0x3A5C];
  LODWORD(STACK[0x3A6C]) = STACK[0x3A5C];
  return (*(v14 + 8 * ((4001 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_1000191F4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 - 2830;
  STACK[0x3AF0] = STACK[0x1810];
  v12 = a8 - 4943;
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v13 = STACK[0x3C08];
  v14 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3C08] - 0x56F780AC40F6473BLL));
  v15 = STACK[0x1708];
  *(v13 - 0x56F780AC40F6473BLL) = STACK[0x3C28];
  *STACK[0x3C18] = STACK[0x2850];
  return (*(v15 + 8 * ((4669 * (LODWORD(STACK[0x3C24]) == v11 + 225115225)) ^ v12)))(v14);
}

uint64_t sub_100019324(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  v11 = a8 + 205;
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  v12 = STACK[0x3B70];
  v13 = (*(v10 + 8 * (a8 + 4269)))(*(STACK[0x3B70] - 0x56F780AC40F6473BLL));
  v14 = STACK[0x1708];
  *(v12 - 0x56F780AC40F6473BLL) = STACK[0x3B90];
  *STACK[0x3B80] = STACK[0x1FB4];
  v15 = STACK[0x3B8C];
  LODWORD(STACK[0x3B9C]) = STACK[0x3B8C];
  return (*(v14 + 8 * ((16284 * (v15 == 68588956)) ^ v11)))(v13);
}

uint64_t sub_100019420(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  return (*(v10 + 8 * v7))();
}

uint64_t sub_1000194B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = v9;
  STACK[0x3838] = v12;
  STACK[0x3840] = v11;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v10;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  LODWORD(STACK[0x3864]) = 68588956;
  return (*(v13 + 8 * v7))();
}

uint64_t sub_1000195A0(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7)
{
  STACK[0x3AF0] = STACK[0x1830];
  LODWORD(STACK[0x3AFC]) = v10;
  STACK[0x3B00] = v13;
  STACK[0x2630] = v8;
  STACK[0x3B08] = v12;
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v11;
  LODWORD(STACK[0x3854]) = v9;
  STACK[0x3858] = a7;
  LODWORD(STACK[0x3B28]) = 68588956;
  return (*(v14 + 8 * v7))();
}

uint64_t sub_100019678@<X0>(int a1@<W3>, unint64_t a2@<X4>, int a3@<W5>, unint64_t a4@<X6>, int a5@<W8>)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a3;
  LODWORD(STACK[0x3B1C]) = a1;
  STACK[0x3B20] = a2;
  LODWORD(STACK[0x3834]) = v6;
  STACK[0x3838] = v9;
  STACK[0x3840] = v8;
  STACK[0x3848] = v7;
  LODWORD(STACK[0x1A64]) = v5;
  LODWORD(STACK[0x227C]) = 0;
  STACK[0x3858] = a4;
  LODWORD(STACK[0x3854]) = 68543949;
  LODWORD(STACK[0x3864]) = 68543949;
  return (*(v10 + 8 * a5))();
}

uint64_t sub_100019700@<X0>(unint64_t a1@<X2>, unint64_t a2@<X4>, unint64_t a3@<X6>, int a4@<W8>)
{
  STACK[0x3AF0] = STACK[0x1830];
  LODWORD(STACK[0x3AFC]) = STACK[0x1800];
  STACK[0x3B00] = v9;
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = v8;
  STACK[0x3B10] = v6;
  LODWORD(STACK[0x1DA4]) = v4;
  LODWORD(STACK[0x2E74]) = 0;
  STACK[0x3B20] = a2;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a1;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v7;
  LODWORD(STACK[0x3854]) = v5;
  STACK[0x3858] = a3;
  LODWORD(STACK[0x3B1C]) = 68543949;
  LODWORD(STACK[0x3B28]) = 68543949;
  return (*(v10 + 8 * a4))();
}

uint64_t sub_10001979C@<X0>(int a1@<W8>)
{
  STACK[0x24B8] = STACK[0x3068];
  LODWORD(STACK[0x27FC]) = a1;
  return (*(v2 + 8 * (v1 - 2367)))();
}

uint64_t sub_1000197E4()
{
  LODWORD(STACK[0x373C]) = v1;
  v7 = *STACK[0x40D8];
  STACK[0x3740] = v7;
  return (*(v6 + 8 * (((v7 == v2) * ((((v0 + v4) | v5) + 1663) ^ v0 ^ v3)) ^ v0)))();
}

uint64_t sub_1000198A0()
{
  v4 = v1 + ((v0 - 6452) ^ 0x17EB) - 599490092;
  v5 = *(v2 - 0x56F780AC40F64733) - 467705891;
  v6 = v4 < 0x324DFA6A;
  v7 = v4 > v5;
  if (v5 < ((v0 - 6452) | 0x1854u) + 843964908 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((42 * v7) ^ v0)))();
}

uint64_t sub_10001993C@<X0>(int a1@<W8>)
{
  STACK[0x3750] = v3;
  LODWORD(STACK[0x2154]) = a1;
  return (*(v4 + 8 * ((((v1 - 1733573826) & 0x67543D7E ^ 0x17AB ^ (44 * (v1 ^ 0x179D))) * (v2 == 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_100019A78@<X0>(int a1@<W0>, int a2@<W8>)
{
  v5 = (((2 * a2 + 1671613158) << ((v3 - 61) & 0xF3 ^ 0x32)) & 0x9E7DB5D8) + ((2 * a2 + 1671613158) ^ a1);
  if (v2 < 0x8E403F80 != v5 - 1090427757 < 0x8E403F80)
  {
    v6 = v5 - 1090427757 < 0x8E403F80;
  }

  else
  {
    v6 = v5 - 1090427757 > v2;
  }

  return (*(v4 + 8 * ((331 * v6) ^ v3)))();
}

uint64_t sub_100019B18@<X0>(int a1@<W8>)
{
  v4 = v1 + 4517;
  LODWORD(STACK[0x2154]) = a1;
  v5 = (*(v3 + 8 * ((v1 + 4517) ^ 0x31A0)))((v2 + 817964307));
  v6 = STACK[0x1708];
  STACK[0x3760] = v5;
  return (*(v6 + 8 * (((v5 == 0) * (3 * (v4 ^ 0x1800) - 28)) ^ v4)))();
}

uint64_t sub_100019C88()
{
  LODWORD(STACK[0x375C]) = 68543949;
  LODWORD(STACK[0x376C]) = 68543949;
  return (*(v1 + 8 * (v0 + 2054)))();
}

uint64_t sub_100019D8C()
{
  STACK[0x3770] = STACK[0x24B8];
  LODWORD(STACK[0x377C]) = STACK[0x27FC];
  STACK[0x3780] = v1;
  STACK[0x1B28] += 16;
  return (*(v2 + 8 * ((((((v0 - 4485) ^ 0x12FB) - 3708) ^ ((v0 - 4485) | 0x45B)) * (v1 == 0x56F780AC40F6473BLL)) ^ v0)))();
}

uint64_t sub_100019E4C@<X0>(int a1@<W8>)
{
  v6 = (v3 + v2);
  STACK[0x3788] = v4 - 0x56F780AC40F6472FLL;
  v7 = *(v4 - 0x56F780AC40F6472FLL);
  *v6 = v7;
  v6[1] = a1;
  v6[2] = 1443455197;
  return (*(v5 + 8 * ((((a1 - 1443455193) + ((v1 - 444106559) & 0x1A7871BF) + (v7 - 1443455193) - 0x100001037 > 0xFFFFFFFEFFFFFFFFLL) * (((v1 - 8513) | 0x106) ^ 0x579)) ^ v1)))();
}

uint64_t sub_100019EFC()
{
  v4 = v1 - 628056233;
  v5 = *(v2 - 0x56F780AC40F64733) - 1939729151;
  v6 = v4 < 0xDA90AF8E;
  v7 = v4 > v5;
  if (v6 != v5 < 0xDA90AF8E)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((116 * ((v7 ^ (5 * (((v0 + 35) | 0x20) ^ 0xC0) + 1)) & 1)) ^ v0)))();
}

uint64_t sub_10001A01C()
{
  STACK[0x3790] = v3;
  LODWORD(STACK[0x1D94]) = v0;
  return (*(v4 + 8 * (((((v1 - 197354231) & 0xBC35B5A) - 6569) * (v2 != 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_10001A184@<X0>(unsigned int a1@<W8>)
{
  v5 = (((2 * v1 + 1671613158) << (((v2 + 57) ^ 0xCB) + v2 + 15)) & v3) + ((2 * v1 + 1671613158) ^ 0xCEFEBEDF) + 702665346;
  v6 = v5 < 0xF8E09161;
  v7 = v5 > a1;
  if (a1 < 0xF8E09161 != v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((120 * !v8) ^ v2)))();
}

uint64_t sub_10001A218()
{
  LODWORD(STACK[0x1D94]) = v0;
  v4 = (*(v3 + 8 * (v2 + 1289)))(v1 + ((v2 + 400397958) & 0xE8225D7F) + 822159523);
  v5 = STACK[0x1708];
  STACK[0x37A0] = v4;
  return (*(v5 + 8 * (((v4 == 0) * ((v2 - 1006770873) & 0x3C01F6D6 ^ 0x70)) ^ v2)))();
}

uint64_t sub_10001A334()
{
  LODWORD(STACK[0x379C]) = 68543949;
  LODWORD(STACK[0x37AC]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10001A430()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3AAF)))();
  v3 = STACK[0x1708];
  STACK[0x24B8] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_10001A470()
{
  LODWORD(STACK[0x3C04]) = v0;
  v4 = *STACK[0x40D8];
  STACK[0x3C08] = v4;
  return (*(v3 + 8 * ((5015 * (*(v4 - 0x56F780AC40F6472BLL) == v1 - 6270)) ^ (v1 + v2))))();
}

uint64_t sub_10001A57C@<X0>(int a1@<W8>)
{
  v4 = v1 - 1306484097;
  v5 = *(v2 - 0x56F780AC40F64733) - 1174705977;
  v6 = v4 < ((a1 - 3819) | 0x13u) + 136970005;
  v7 = v4 > v5;
  if (v6 != v5 < ((a1 - 29833310) & 0x1C737FEu) + 136966300)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((182 * v7) ^ (a1 - 1447))))();
}

uint64_t sub_10001A624()
{
  STACK[0x3C18] = v3;
  LODWORD(STACK[0x2850]) = v0;
  return (*(v4 + 8 * ((((v1 + 1817) ^ v1 ^ 0xAC6) * (v2 == 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_10001A770@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, unsigned int a5@<W8>)
{
  v10 = (((2 * v5 + 1671613158) << (((v6 - 91) ^ v7) + a1)) & a2) + ((2 * v5 + 1671613158) ^ v8) + a3;
  v11 = v10 < 0xB28043D1;
  v12 = v10 > a5;
  if (a5 < 0xB28043D1 != v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return (*(v9 + 8 * ((v13 * a4) ^ v6)))();
}

uint64_t sub_10001A7E0()
{
  LODWORD(STACK[0x2850]) = v0;
  v4 = (*(v3 + 8 * (v2 ^ 0x20DF)))((v1 + 272637969));
  v5 = STACK[0x1708];
  STACK[0x3C28] = v4;
  return (*(v5 + 8 * ((52 * (((((v2 ^ 0x1120) - 6196) ^ (v4 == 0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_10001A970@<X0>(int a1@<W8>)
{
  v5 = *(v4 + 8 * a1);
  v6 = *v3 - 1443455193;
  v7 = *v1;
  *(v7 + v6) = HIBYTE(v2) ^ 0x90;
  *(v7 + v6 + 1) = BYTE2(v2) ^ 0xF0;
  *(v7 + v6 + 2) = BYTE1(v2) ^ 0xBF;
  *(v7 + v6 + 3) = v2 ^ 0x3D;
  return v5();
}

uint64_t sub_10001AA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *STACK[0x3B08] + 4;
  *STACK[0x3B08] = v9;
  return (*(v8 + 8 * ((a8 - 6080) ^ 0x67C)))(*(STACK[0x3B00] - 0x56F780AC40F6473BLL) + (v9 - 1443455193));
}

uint64_t sub_10001AB08()
{
  v1 = STACK[0x708];
  v2 = 139 * (LODWORD(STACK[0x708]) ^ 0x524);
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * (((LODWORD(STACK[0x3A7C]) == (v2 ^ 0x416BD25)) * (((v1 + 1532) | 0x1010) ^ 0xAC)) ^ v1)))();
}

uint64_t sub_10001AB88()
{
  STACK[0x3AB0] = STACK[0x1F68];
  LODWORD(STACK[0x3ABC]) = STACK[0x1E98];
  STACK[0x3AC0] = v1;
  STACK[0x1B28] += 16;
  return (*(v2 + 8 * (((((107 * (v0 ^ 0x1B76)) ^ 0x279C) - 8710) * (v1 == 0x56F780AC40F6473BLL)) ^ v0)))();
}

uint64_t sub_10001AC48@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + a1);
  STACK[0x3AC8] = v4 - 0x56F780AC40F6472FLL;
  v7 = *(v4 - 0x56F780AC40F6472FLL);
  *v6 = v7;
  v6[1] = v1;
  v6[2] = 1443455197;
  return (*(v5 + 8 * ((182 * ((v1 - 1443455193) + ((v2 - 7743) | 0x842u) + (v7 - 1443455193) + 0x77AC3C842B420899 + (((v2 - 8869) | 0x521u) ^ 0x8853C37AD4BDEF1ALL) > 0xFFFFFFFEFFFFFFFFLL)) ^ (v2 + 318))))();
}

uint64_t sub_10001AD10()
{
  v4 = v1 + 1280293661;
  v5 = *(v2 - 0x56F780AC40F64733) + 694361501 + ((v0 - 1239883580) & 0x49E71EFF) + 3012;
  v6 = v4 < 0x7791D0A8;
  v7 = v4 > v5;
  if (v6 != v5 < 0x7791D0A8)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((466 * v7) ^ v0)))();
}

uint64_t sub_10001ADA4@<X0>(int a1@<W8>)
{
  STACK[0x3AD0] = v3;
  LODWORD(STACK[0x302C]) = a1;
  return (*(v4 + 8 * (((((v1 + 956) | 0x808) ^ 0x1824) * (v2 != 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_10001AE68()
{
  LODWORD(STACK[0x3ADC]) = 68543949;
  LODWORD(STACK[0x3AEC]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10001AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *STACK[0x39E0] + 4;
  *STACK[0x39E0] = v9;
  return (*(v8 + 8 * ((a8 - 6098) ^ 0x66E)))(*(STACK[0x39D8] - 0x56F780AC40F6473BLL) + (v9 - 1443455193));
}

uint64_t sub_10001AFDC()
{
  v1 = STACK[0x714];
  v2 = (LODWORD(STACK[0x714]) - 6481) | 0x1331;
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * ((12720 * (LODWORD(STACK[0x3A0C]) == (v2 ^ 0x41686AF))) ^ v1)))();
}

uint64_t sub_10001B050@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3A3C]) = STACK[0x2C8C];
  STACK[0x3A40] = v1;
  return (*(v2 + 8 * (((((a1 + 1359) | 0x20D) - 6789) * (v1 == 0x56F780AC40F6473BLL)) ^ a1)))();
}

uint64_t sub_10001B11C()
{
  v4 = v1 + 971059487;
  v5 = ((v0 - 2682) ^ 0x41BBEF19) + *(v2 - 0x56F780AC40F64733);
  v6 = v4 < 0x8FEA91F4;
  v7 = v4 > v5;
  if (v6 != v5 < 0x8FEA91F4)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((v7 * ((v0 ^ 0x3B14) - 6182)) ^ v0)))();
}

uint64_t sub_10001B1A4@<X0>(int a1@<W8>)
{
  STACK[0x3A50] = v3;
  LODWORD(STACK[0x252C]) = a1;
  return (*(v4 + 8 * (((((v2 == 0x56F780AC40F6473BLL) ^ (v1 + 1)) & 1) * (((v1 + 435566962) & 0xE609BFB3) - 4854)) ^ v1)))();
}

uint64_t sub_10001B32C@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, char a4@<W5>, char a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v12 = (v8 ^ a3) - 1076650022 + (((2 * a7 + 1671613158) << ((v8 + a4) & a5 ^ v9)) & a1) + ((2 * a7 + 1671613158) ^ a6) + 1139;
  v13 = v12 < v10;
  v14 = v12 > v7;
  if (v7 < v10 != v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  return (*(v11 + 8 * ((v15 * a2) ^ v8)))();
}

uint64_t sub_10001B3A8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x252C]) = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0x36B1)))(((32 * v2) ^ 0x3192C741u) + v1);
  v5 = STACK[0x1708];
  STACK[0x3A60] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((v2 - 7952) | 0x185E) ^ 0x1825)) ^ v2)))();
}

uint64_t sub_10001B580@<X0>(int a1@<W8>)
{
  STACK[0x3988] = STACK[0x29C8];
  LODWORD(STACK[0x3994]) = STACK[0x2A9C];
  STACK[0x3998] = v1;
  STACK[0x1B28] += (((a1 ^ 0xDB1) - 1381778959) & 0x525C3BBD) + (((a1 ^ 0xDB1u) - 3323) ^ 0xFFFFFFFFFFFFFD46);
  return (*(v2 + 8 * (a1 ^ 0xDB1 ^ ((v1 == 0x56F780AC40F6473BLL) | (32 * (v1 == 0x56F780AC40F6473BLL))))))();
}

uint64_t sub_10001B66C@<X0>(int a1@<W8>)
{
  v6 = (v3 + v1);
  STACK[0x39A0] = v4 - 0x56F780AC40F6472FLL;
  v7 = *(v4 - 0x56F780AC40F6472FLL);
  *v6 = v7;
  v6[1] = a1;
  v6[2] = 1443455197;
  return (*(v5 + 8 * ((250 * (((v2 ^ 0x7C9 ^ ((a1 - 1443455193) + (v2 - 1443462204 + v7 + 1774) - 4294967292u < 0xFFFFFFFF00000000)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_10001B718()
{
  v4 = v1 - 1310941319 + v0 + 2080266294;
  v5 = *(v2 - 0x56F780AC40F64733) - 542341802;
  v6 = v4 < ((3155 * (v0 ^ 0x283A)) ^ 0x2DDB0745u);
  v7 = v4 > v5;
  if (v5 < 0x2DDB1FE3 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * (v7 ^ v0)))();
}

uint64_t sub_10001B7BC()
{
  STACK[0x39A8] = v3;
  LODWORD(STACK[0x2120]) = v0;
  return (*(v4 + 8 * (((v2 != 0x56F780AC40F6473BLL) * (((v1 ^ 0x1826) + 6142) ^ 0x182F)) ^ v1)))();
}

uint64_t sub_10001B880()
{
  LODWORD(STACK[0x39B4]) = 68543949;
  LODWORD(STACK[0x39C4]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10001B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x4C0];
  *STACK[0x37D0] += 4;
  return (*(v8 + 8 * ((5574 * (LODWORD(STACK[0x37F4]) == ((v9 - 1364) | 0x50C) + 68585550)) ^ (a8 - 2864))))();
}

uint64_t sub_10001B978()
{
  STACK[0x37F8] = STACK[0x1D88];
  LODWORD(STACK[0x3804]) = STACK[0x2844];
  STACK[0x3808] = v1;
  STACK[0x1B28] = ((v0 - 1796411564) & 0x6B130D4F) + STACK[0x1B28] - 3390;
  return (*(v2 + 8 * ((127 * (((v1 == 0x56F780AC40F6473BLL) ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_10001BA5C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 + a1);
  STACK[0x3810] = v4 - 0x56F780AC40F6472FLL;
  v7 = *(v4 - 0x56F780AC40F6472FLL);
  v8 = (v1 ^ 0x57CD70FF) - 29626406 + (((v3 - 460057130) & 0x1B6BEFEE ^ 0xAF9AECB0) & (2 * v1));
  *v6 = v7;
  v6[1] = v8;
  v6[2] = 1443455197;
  v9 = (v7 - 1443455193) + ((v3 + 7335) ^ 0x3CBA31DC2C9CEB72) + (v8 - 1443455193) - 0x3CBA31DD2C9CCF3ELL > 0xFFFFFFFEFFFFFFFFLL;
  return (*(v5 + 8 * (((16 * v9) | (v9 << 6)) ^ v3)))();
}

uint64_t sub_10001BB4C()
{
  v4 = v1 - 1615411819;
  v5 = *(v2 - 0x56F780AC40F64733) + 2116352582;
  v6 = v4 < ((((v0 - 1549133106) & 0x5C55D97F) + 3898) ^ 0xCC53B36B);
  v7 = v4 > v5;
  if (v5 < 0xCC5394D3 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((113 * !v7) ^ v0)))();
}

uint64_t sub_10001BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *STACK[0x3AC8] + 4;
  *STACK[0x3AC8] = v9;
  return (*(v8 + 8 * ((a8 - 6097) ^ 0x66F)))(*(STACK[0x3AC0] - 0x56F780AC40F6473BLL) + (v9 - 1443455193));
}

uint64_t sub_10001BCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *STACK[0x3810] + 4;
  *STACK[0x3810] = v9;
  return (*(v8 + 8 * ((a8 - 6118) ^ 0x65A)))(*(STACK[0x3808] - 0x56F780AC40F6473BLL) + (v9 - 1443455193));
}

uint64_t sub_10001BDB4()
{
  v1 = STACK[0x368];
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10001BDFC()
{
  v1 = *STACK[0x3788];
  *STACK[0x3788] = (STACK[0x4C8] & 0x9536C7AB ^ 0x78C) + v1;
  return (*(v0 + 8 * SLODWORD(STACK[0x4C4])))(*(STACK[0x3780] - 0x56F780AC40F6473BLL) + (v1 - 1443455189));
}

uint64_t sub_10001BF0C()
{
  v1 = STACK[0x704];
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10001BFE4()
{
  v1 = STACK[0x718];
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10001C098()
{
  v1 = STACK[0x70C];
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10001C130()
{
  v1 = STACK[0x710];
  v2 = (LODWORD(STACK[0x710]) - 20) | 0x2045;
  v3 = LODWORD(STACK[0x710]) + 4968;
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * (((LODWORD(STACK[0x3B6C]) == 68588956) * ((v2 - 3396) ^ v3)) ^ v1)))();
}

uint64_t sub_10001C1A0()
{
  STACK[0x3BA0] = STACK[0x1D30];
  STACK[0x3BA8] = v1;
  return (*(v2 + 8 * ((25 * ((((v0 - 7702) ^ 0x1F4F ^ (v1 == 0x56F780AC40F6473BLL)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_10001C25C@<X0>(int a1@<W8>)
{
  v4 = v1 + 421617253;
  v5 = *(v2 - 0x56F780AC40F64733) + 553395369;
  v6 = v4 < 0x6F2ABF36;
  v7 = v4 > v5;
  if (v6 != v5 < ((7 * ((a1 + 4934) ^ 0x1AA6)) ^ 0x6F2ABA81u))
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((15964 * v7) ^ (a1 + 4934))))();
}

uint64_t sub_10001C2F0@<X0>(int a1@<W8>)
{
  STACK[0x3BB8] = v3;
  LODWORD(STACK[0x1C24]) = a1;
  return (*(v4 + 8 * (((v2 != 0x56F780AC40F6473BLL) * (570 * (v1 ^ 0x1A7C) - 6255)) ^ v1 ^ 0x3B33)))();
}

uint64_t sub_10001C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *STACK[0x39A0] + 4;
  *STACK[0x39A0] = v9;
  return (*(v8 + 8 * ((a8 - 5457) ^ 0x17E4)))(*(STACK[0x3998] - 0x56F780AC40F6473BLL) + (v9 - 1443455193));
}

uint64_t sub_10001C4DC()
{
  v1 = STACK[0x6FC];
  *(*STACK[0x40D8] - 0x56F780AC40F6472BLL) = 1;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10001C67C@<X0>(int a1@<W8>)
{
  STACK[0x3818] = v3;
  LODWORD(STACK[0x2528]) = a1;
  return (*(v4 + 8 * ((((2587 * (v1 ^ 0x27BB) - 1559) ^ (v1 - 1353976377) & 0x50B3FAFE) * (v2 == 0x56F780AC40F6473BLL)) | v1)))();
}

uint64_t sub_10001C734()
{
  LODWORD(STACK[0x3824]) = 68543949;
  LODWORD(STACK[0x3830]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10001C760()
{
  LODWORD(STACK[0x3A5C]) = 68543949;
  LODWORD(STACK[0x3A6C]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10001C84C@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, int a4@<W5>, unsigned int a5@<W7>, int a6@<W8>)
{
  v9 = (((v7 ^ a2) + a4) & (2 * (2 * a6 + 1671613158))) + ((2 * a6 + 1671613158) ^ a3);
  if (v6 < a5 != v9 + a1 < a5)
  {
    v10 = v9 + a1 < a5;
  }

  else
  {
    v10 = v9 + a1 > v6;
  }

  return (*(v8 + 8 * ((7863 * v10) ^ v7)))();
}

uint64_t sub_10001C8B8@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = v2 + 4505;
  LODWORD(STACK[0x1C24]) = a2;
  v6 = (*(v4 + 8 * (v5 ^ 0x381F)))(v3 + 8462192 + (v5 ^ 0x1191u) * a1);
  v7 = STACK[0x1708];
  STACK[0x3BC8] = v6;
  return (*(v7 + 8 * (((v6 == 0) * ((v5 ^ 0x1191) + 39)) ^ v5)))();
}

uint64_t sub_10001CAB8@<X0>(int a1@<W0>, int a2@<W8>)
{
  v6 = (((v2 - 946 + a1) & 0xE0369F77 ^ 0xDCFD7A0E) & (2 * (2 * a2 + 1671613158))) + ((2 * a2 + 1671613158) ^ 0x6E7EBEAD);
  if (v3 < 0x1E6EE6AD != v6 - 1343215616 < 0x1E6EE6AD)
  {
    v7 = v6 - 1343215616 < 0x1E6EE6AD;
  }

  else
  {
    v7 = v6 - 1343215616 > v3;
  }

  return (*(v5 + 8 * ((v7 * v4) ^ (v2 - 946))))();
}

uint64_t sub_10001CB58@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x302C]) = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0x2ED6)))(((v2 + 4391) ^ 0x9181592D) + v1);
  v5 = STACK[0x1708];
  STACK[0x3AE0] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((v2 - 1274459336) & 0x4BF6ADF5) - 89)) ^ v2)))();
}

uint64_t sub_10001CD1C(int a1, int a2, char a3, int a4, int a5, uint64_t a6, int a7)
{
  v13 = (((2 * v7 + 1671613158) << ((v11 ^ a3) - 69)) & ((v11 + a2) ^ a5)) + ((2 * v7 + 1671613158) ^ a4) + a7;
  v14 = v13 < v10;
  v15 = v13 > v8;
  if (v8 < v9 != v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return (*(v12 + 8 * ((v16 * a1) ^ v11)))();
}

uint64_t sub_10001CD88()
{
  LODWORD(STACK[0x2120]) = v0;
  v5 = (*(v4 + 8 * (v2 ^ 0x223F)))(v1 + ((v2 - 2906) | 0x181Au) + 813755301);
  v6 = STACK[0x1708];
  STACK[0x39B8] = v5;
  return (*(v6 + 8 * (((v5 != 0) * v3) ^ v2)))();
}

uint64_t sub_10001CF14@<X0>(int a1@<W0>, int a2@<W8>)
{
  v6 = ((((v3 - 5615) | 0x2000) - 835806361) ^ (2 * a2 + 1671613158)) + ((((v3 - 5623) | 0x602) - 1671597798) & (2 * (2 * a2 + 1671613158)));
  if (v2 < 0x5C451124 != (v6 + v4) < 0x5C451124)
  {
    v7 = (v6 + v4) < 0x5C451124;
  }

  else
  {
    v7 = v6 + v4 > v2;
  }

  return (*(v5 + 8 * ((v7 * a1) ^ v3)))();
}

uint64_t sub_10001CFB4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2528]) = a1;
  v4 = (*(v3 + 8 * (v2 + 2361)))((v1 + 835798097));
  v5 = STACK[0x1708];
  STACK[0x3828] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((v2 - 6180) | 0x105A) ^ 0x18B2)) ^ v2)))();
}

uint64_t sub_10001D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = v9 > v11;
  *(a1 + (v7 - 1401090193)) = *(v6 + (v7 - 1401090193)) ^ a6;
  v14 = ((v8 - 882) ^ 0x7957A7E6) + v7;
  v15 = v13 ^ (v14 < 0xCCDAB028);
  v16 = v14 < v10;
  if (!v15)
  {
    v13 = v16;
  }

  return (*(v12 + 8 * ((14908 * v13) ^ v8)))();
}

uint64_t sub_10001D4C0(uint64_t a1, __n128 a2, __n128 a3)
{
  v8.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v8.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  return (*(v7 + 8 * (v6 + 90)))(a1, (v4 + v5 + 673739543), (v3 & 0xFFFFFFE0) - 32, a2, a3, v8);
}

uint64_t sub_10001D4F8(uint64_t a1, int a2, int a3, double a4, double a5, int8x16_t a6, uint64_t a7, int a8)
{
  v12 = (a2 + v10);
  v13 = *(v8 + v12 - 15);
  v14 = *(v8 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = veorq_s8(v13, a6);
  *(v15 - 31) = veorq_s8(v14, a6);
  return (*(v11 + 8 * (((a3 == 0) * a8) ^ v9)))();
}

uint64_t sub_10001D5D8(uint64_t a1, int a2, __n128 a3, __n128 a4)
{
  a4.n128_u16[0] = 6939;
  a4.n128_u8[2] = 27;
  a4.n128_u8[3] = 27;
  a4.n128_u8[4] = 27;
  a4.n128_u8[5] = 27;
  a4.n128_u8[6] = 27;
  a4.n128_u8[7] = 27;
  return (*(v4 + 8 * a2))(a1, a1 - 7, a3, a4);
}

uint64_t sub_10001D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x3068] = STACK[0x22C0];
  LODWORD(STACK[0x2870]) = STACK[0x1A3C];
  return (*(v8 + 8 * (a8 - 2012)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10001D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x2E78] = STACK[0x1DF0];
  LODWORD(STACK[0x2104]) = STACK[0x2C34];
  return (*(v8 + 8 * (a8 - 823)))();
}

uint64_t sub_10001D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *STACK[0x39A0] += LODWORD(STACK[0x3994]) - 1443455193;
  v9 = STACK[0x39C4];
  STACK[0x1B28] = ((a8 - 1894) | 0x21u) + STACK[0x1B28] - 4425;
  return (*(v8 + 8 * ((3775 * (v9 == 68588956)) ^ (a8 - 1218))))();
}

uint64_t sub_10001D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x39C8] = STACK[0x1BE0];
  LODWORD(STACK[0x39D4]) = STACK[0x2440];
  v10 = *STACK[0x40D8];
  STACK[0x39D8] = v10;
  STACK[0x1B28] = v8;
  return (*(v9 + 8 * (((v10 != 0x56F780AC40F6473BLL) * (((a8 - 656587338) & 0x2722A7FF) - 1564)) ^ (a8 - 3445))))();
}

uint64_t sub_10001D8F8@<X0>(int a1@<W8>)
{
  v6 = (v2 + v1);
  STACK[0x39E0] = v4 - 0x56F780AC40F6472FLL;
  v7 = *(v4 - 0x56F780AC40F6472FLL);
  *v6 = v7;
  v6[1] = a1;
  v6[2] = 1443455197;
  return (*(v5 + 8 * ((504 * ((a1 - 1443455193) + 0x737B6F63898EFFA7 + (v7 - 1443455193) + ((((v3 - 3639) | 0x2020u) - 7852) ^ 0x8C84909B76710669) > 0xFFFFFFFEFFFFFFFFLL)) ^ v3)))();
}

uint64_t sub_10001D9B0()
{
  v4 = v1 + 271407690;
  v5 = *(v2 - 0x56F780AC40F64733) + 1267580768;
  v6 = v4 < 0x99BC59ED;
  v7 = v4 > v5;
  if (v6 != v5 < 0x99BC59ED)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((v7 * ((v0 - 3170) ^ 0x187C)) ^ v0)))();
}

uint64_t sub_10001DA2C()
{
  STACK[0x39E8] = v3;
  LODWORD(STACK[0x2B94]) = v0;
  return (*(v4 + 8 * (((v1 ^ 0x921 ^ ((v1 ^ 0x4DA) - 1062) ^ 0x923) * (v2 == 0x56F780AC40F6473BLL)) | v1 ^ 0x4DA)))();
}

uint64_t sub_10001DAF8()
{
  LODWORD(STACK[0x39F4]) = 68543949;
  LODWORD(STACK[0x3A04]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10001DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *STACK[0x2FD8] = STACK[0x1C88];
  *STACK[0x2B40] = STACK[0x22EC];
  return (*(v8 + 8 * (a8 + 554)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10001DB58()
{
  v1 = STACK[0x2D60];
  v2 = STACK[0x3D60];
  v3 = STACK[0x3D6C];
  v4 = STACK[0x970];
  v5 = *(v0 + 8 * (LODWORD(STACK[0x96C]) + LODWORD(STACK[0x970]) + 2272));
  STACK[0x2108] = *(v0 + 8 * SLODWORD(STACK[0x96C]));
  LODWORD(STACK[0x4304]) = v4;
  STACK[0x4308] = v1;
  STACK[0x4310] = v2;
  STACK[0x4318] = 0;
  LODWORD(STACK[0x4320]) = v3;
  return v5();
}

uint64_t sub_10001DBB4()
{
  v1 = STACK[0x4320];
  LODWORD(STACK[0x4324]) = STACK[0x4320];
  STACK[0x4328] = STACK[0x4318];
  v2 = STACK[0x4310];
  STACK[0x4330] = STACK[0x4310];
  v3 = STACK[0x4308];
  STACK[0x4338] = STACK[0x4308];
  v4 = STACK[0x4304];
  LODWORD(STACK[0x4344]) = STACK[0x4304];
  LODWORD(STACK[0x4348]) = v4 + 3663;
  v5 = (v4 + 4177) | 0x135u;
  LODWORD(STACK[0x434C]) = v5;
  STACK[0x1F40] = v2;
  LODWORD(STACK[0x26C0]) = v1;
  v6 = STACK[0x1B28];
  v7 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x29A8] = v7;
  STACK[0x1B28] = v6 - 7061 + v5;
  STACK[0x24D8] = v3;
  STACK[0x1950] = 0;
  STACK[0x2E00] = 0;
  STACK[0x1C90] = 0;
  LODWORD(STACK[0x1BB0]) = 1443455193;
  LODWORD(STACK[0x1F8C]) = 0;
  STACK[0x24A8] = 0x61CEF89FDDA89DF2;
  STACK[0x2390] = 0;
  LODWORD(STACK[0x1BB4]) = 1443455193;
  STACK[0x4188] = v7;
  LOBYTE(STACK[0x4187]) = 0;
  v8 = *(v0 + 8 * (v4 ^ 0x2321));
  STACK[0x4178] = 32;
  LODWORD(v7) = LODWORD(STACK[0x4344]) ^ 0x2337;
  STACK[0x4170] = v8;
  return (*(v0 + 8 * v7))();
}

uint64_t sub_10001DDD8@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = (v4 & (2 * ((v2 << (a2 + 98)) + 1671613158))) + (((v2 << (a2 + 98)) + 1671613158) ^ 0x6F3FFE9D) + 390564690;
  v7 = v6 < 0x868789EF;
  v8 = v6 > v3;
  if (v3 < 0x868789EF != v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(v5 + 8 * ((v9 * a1) ^ (a2 - 2166))))();
}

uint64_t sub_10001DE64()
{
  LODWORD(STACK[0x2B94]) = v0;
  v4 = (*(v3 + 8 * (v2 + 3333)))(((v2 - 7261) ^ 0x90C0017C) + v1);
  v5 = STACK[0x1708];
  STACK[0x39F8] = v4;
  return (*(v5 + 8 * ((248 * (v4 == 0)) ^ v2)))();
}

uint64_t sub_10001E084()
{
  v2 = (v0 - 6099) | 0x1410;
  v3 = v0 - 5237;
  STACK[0x1CF8] = *(v1 + 8 * v3);
  return (*(v1 + 8 * (v3 ^ 0x163E ^ v2)))();
}

uint64_t sub_10001E13C()
{
  v3 = *(v0 - 0xA78D87CF95EE190);
  STACK[0x2CB0] = v3;
  return (*(v2 + 8 * ((82 * (v3 != 0x1138F6A92264F486)) ^ v1)))();
}

uint64_t sub_10001E184()
{
  v2 = (v0 - 6329) | 0x48;
  STACK[0x23E8] = *(v1 + 8 * v2);
  return (*(v1 + 8 * ((v2 - 715) ^ v2)))();
}

uint64_t sub_10001E230()
{
  v1 = STACK[0x3A0];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x3A0]) ^ 0x2F4A)))();
  v3 = STACK[0x1708];
  STACK[0x27B8] = 0;
  return (*(v3 + 8 * v1))(v2);
}

uint64_t sub_10001E2B4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3D81)))();
  v3 = STACK[0x1708];
  STACK[0x1FA8] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_10001E2FC()
{
  v2 = STACK[0x2E38];
  STACK[0x1B28] = (v0 ^ 0x97Cu) + STACK[0x1B28] - 3856;
  return (*(v1 + 8 * ((12279 * (v2 == 68588956)) ^ v0)))();
}

uint64_t sub_10001E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = LODWORD(STACK[0x1F78]);
  v11 = LODWORD(STACK[0x2D28]);
  v12 = STACK[0x3A8];
  v13 = -LODWORD(STACK[0x3A8]);
  v14 = v8 - 240;
  *(v14 + 16) = LODWORD(STACK[0x3B4]) ^ STACK[0x3A8];
  *(v14 + 32) = LODWORD(STACK[0x3B8]) + v12;
  *(v14 + 36) = v13;
  *v14 = (a8 + 2105773206) ^ v12;
  *(v14 + 8) = v10 + v12;
  *(v14 + 40) = v12 ^ LODWORD(STACK[0x3A4]);
  *(v14 + 24) = v11 ^ v12;
  v15 = (*(v9 + 8 * SLODWORD(STACK[0x39C])))(v8 - 240);
  return (*(STACK[0x1708] + 8 * *(v8 - 196)))(v15);
}

uint64_t sub_10001E664()
{
  v1 = STACK[0x790];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x790]) ^ 0x3161)))((LODWORD(STACK[0x1EEC]) - 1443455193));
  v3 = STACK[0x1708];
  STACK[0x27E0] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (v1 - 7608 + ((v1 + 1697920517) & 0x9ACBB5FF))) | v1)))();
}

uint64_t sub_10001E6E0(uint64_t a1)
{
  v5 = STACK[0x1AD0];
  v6 = v3 - 240;
  v7 = 678427121 * (((((v3 - 240) | 0x27B6FA5A) ^ 0xFFFFFFFE) - (~(v3 - 240) | 0xD84905A5)) ^ 0x4A935FBF);
  *(v6 + 40) = STACK[0x2A0];
  *(v6 + 32) = v7 + v2 + 8229;
  *(v6 + 24) = v5;
  *(v6 + 8) = a1;
  *(v6 + 16) = (v1 - 4705281) ^ v7;
  v8 = (*(v4 + 8 * (v2 ^ 0x2DA8)))(v3 - 240);
  return (*(STACK[0x1708] + 8 * ((7448 * (*(v3 - 240) == ((v2 - 330212968) & 0x13AEADE3) + 68585787)) ^ v2)))(v8);
}

uint64_t sub_10001E7DC()
{
  v3 = STACK[0x21CC];
  LODWORD(STACK[0x26EC]) = STACK[0x21CC];
  return (*(v2 + 8 * (((v1 + 3101 + ((v1 - 98188802) & 0x5DA3DF8) + 2529) * (v3 == v0)) ^ v1)))();
}

uint64_t sub_10001E82C()
{
  STACK[0x2F10] = v2;
  STACK[0x2068] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x2374]) = 1443455193;
  STACK[0x2378] = 0;
  LODWORD(STACK[0x24A4]) = 0;
  LODWORD(STACK[0x29A4]) = 0;
  return (*(v3 + 8 * ((((v0 ^ 0x1426) - 6213) * (v1 == 1443455193)) ^ v0)))();
}

uint64_t sub_10001E894@<X0>(int a1@<W8>)
{
  v4 = v2 - 240;
  v5 = 301143701 * ((~(v2 - 240) & 0x54FC2236E1FE307ALL | (v2 - 240) & 0xAB03DDC91E01CF85) ^ 0x46AB90129A56AD08);
  LODWORD(STACK[0x1F2C]) = v1;
  *(v4 + 16) = (a1 + 2129048539) ^ v5;
  *v4 = (a1 + 2105773206) ^ v5;
  *(v4 + 8) = v5 + v1;
  *(v4 + 40) = (a1 + 2129047652) ^ v5;
  *(v4 + 24) = v5 ^ 0x416959C;
  *(v4 + 32) = a1 + 2129048510 + v5;
  *(v4 + 36) = -301143701 * ((~(v2 - 240) & 0xE1FE307A | (v2 - 240) & 0x1E01CF85) ^ 0x9A56AD08);
  v6 = (*(v3 + 8 * (a1 ^ 0x31DD)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * *(v2 - 196)))(v6);
}

uint64_t sub_10001EABC@<X0>(int a1@<W8>)
{
  STACK[0x1CA0] = 0;
  STACK[0x3060] = *(v1 + 8 * (a1 - 5767));
  return (*(v1 + 8 * (a1 - 5767 + ((a1 - 5767) ^ 0xA9F) - 1961)))();
}

uint64_t sub_10001EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a8 ^ 0x1B4D;
  v12 = a8 - 2637;
  v13 = (*(v10 + 8 * SLODWORD(STACK[0xBF4])))((LODWORD(STACK[0x2464]) - 1443455193));
  STACK[0x2340] = v13;
  if (v13)
  {
    v14 = v8;
  }

  else
  {
    v14 = 68543953;
  }

  LODWORD(STACK[0x3C3C]) = v14;
  v15 = STACK[0x2650];
  v16 = LODWORD(STACK[0x2464]) - 4705281;
  v17 = v9 - 240;
  v18 = 678427121 * ((((v9 - 240) | 0xDF0D0950) - ((v9 - 240) & 0xDF0D0950)) ^ 0x4DD7534A);
  *(v17 + 40) = STACK[0xC18];
  *(v17 + 32) = v18 + STACK[0x1700] + 3212;
  *(v17 + 16) = v16 ^ v18;
  *(v17 + 24) = v15;
  *(v17 + 8) = v13;
  v19 = (*(STACK[0x1708] + 8 * SLODWORD(STACK[0xC0C])))(v9 - 240);
  return (*(STACK[0x1708] + 8 * (((*(v9 - 240) == 68588956) * (v11 - 817)) ^ v12)))(v19);
}

uint64_t sub_10001EC40()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2AB2)))((LODWORD(STACK[0x25A4]) - 1443455193));
  v3 = STACK[0x1708];
  STACK[0x20B0] = v2 + 0x2B1A0449E8A6C928;
  return (*(v3 + 8 * (v0 ^ 0x9D4)))(3301869636, 2651430029, 0xDA182461BE0DA49ALL, 201, 1787, 7347, 2498276534, 54);
}

uint64_t sub_10001ED4C@<X0>(int a1@<W8>)
{
  STACK[0x3068] = STACK[0x2CC0];
  LODWORD(STACK[0x2870]) = STACK[0x2D04];
  return (*(v1 + 8 * a1))();
}

uint64_t sub_10001EE6C(unsigned int a1, int a2, uint64_t a3, char a4)
{
  v13 = v6 > a1;
  *(v4 + (v8 + a2)) = *(v10 + (v8 + a2)) + (a4 | ~(2 * *(v10 + (v8 + a2)))) + 28;
  if (v13 == (v8 + v9) < 0x3B3177BB)
  {
    v13 = v8 + v9 < v7;
  }

  return (*(v12 + 8 * ((!v13 * v11) ^ v5)))();
}

uint64_t sub_10001F028(int a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v6.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v7.n128_u64[0] = 0x3636363636363636;
  v7.n128_u64[1] = 0x3636363636363636;
  return (*(v5 + 8 * (a1 - 608)))((v4 & 0xFFFFFFE0) - 32, (a1 - 610), ((a1 + 2049487797) & 0x85D763ED) - 8747, a2, a3, a4, v6, v7);
}

uint64_t sub_10001F088(int a1, int a2, int a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  v12 = v10 + v9;
  v13 = *(v12 - 31);
  v14 = v8 + v9;
  *(v14 - 15) = vaddq_s8(vsubq_s8(*(v12 - 15), vandq_s8(vaddq_s8(*(v12 - 15), *(v12 - 15)), a8)), a7);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a8)), a7);
  return (*(v11 + 8 * (((a1 != 0) * a3) | a2)))((a1 - 32));
}

uint64_t sub_10001F188(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, int a6)
{
  a3.n128_u16[0] = 13878;
  a3.n128_u8[2] = 54;
  a3.n128_u8[3] = 54;
  a3.n128_u8[4] = 54;
  a3.n128_u8[5] = 54;
  a3.n128_u8[6] = 54;
  a3.n128_u8[7] = 54;
  a4.n128_u16[0] = 6939;
  a4.n128_u8[2] = 27;
  a4.n128_u8[3] = 27;
  a4.n128_u8[4] = 27;
  a4.n128_u8[5] = 27;
  a4.n128_u8[6] = 27;
  a4.n128_u8[7] = 27;
  return (*(v6 + 8 * a6))(a1, a2, a3, a4);
}

uint64_t sub_10001F2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x9D0];
  STACK[0x24C0] = *(v8 + 8 * SLODWORD(STACK[0x9D0]));
  return (*(v8 + 8 * (v9 ^ ((a8 - 1662) | 0x152) ^ 0x7F4)))();
}

uint64_t sub_10001F390()
{
  v1 = STACK[0xAA0];
  v2 = 19 * (LODWORD(STACK[0xAA0]) ^ 0x1E92);
  v3 = STACK[0x20B0];
  v4 = STACK[0x25A4];
  LODWORD(STACK[0x2500]) = STACK[0x25A4];
  STACK[0x2918] = v3;
  STACK[0x30F8] = 0;
  LODWORD(STACK[0x248C]) = 0;
  LODWORD(STACK[0x2E94]) = 0;
  STACK[0x2D20] = 0;
  LODWORD(STACK[0x21F8]) = 1443455193;
  v6 = v3 != 0x2B1A0449E8A6C928 && v4 != (v2 ^ 0x560962D8);
  return (*(v0 + 8 * ((21 * v6) ^ v1)))();
}

uint64_t sub_10001F428@<X0>(int a1@<W8>)
{
  STACK[0x1B10] = 0;
  STACK[0x3060] = *(v1 + 8 * a1);
  return (*(v1 + 11696))();
}

uint64_t sub_10001F45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(STACK[0x1B48] - 0x246608B69D9E9B73) = STACK[0x3E58];
  *STACK[0x2D90] = STACK[0x1A18];
  return (*(v8 + 8 * (a8 - 655)))();
}

uint64_t sub_10001F4F4()
{
  v2 = (*(v1 + 8 * (v0 + 7486)))();
  v3 = STACK[0x1708];
  STACK[0x3178] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_10001F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x1EC0];
  LODWORD(STACK[0x207C]) = STACK[0x1F4C];
  STACK[0x1E50] = v9;
  STACK[0x29B0] = 0;
  LODWORD(STACK[0x1BD4]) = 0;
  LODWORD(STACK[0x1C9C]) = 0;
  return (*(v8 + 8 * (((v9 == 0x2B1A0449E8A6C928) * LODWORD(STACK[0x9F4])) ^ (a8 - 562))))();
}

uint64_t sub_10001F5A4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2E60]) = v1;
  v4 = v2 - 240;
  v5 = 301143701 * ((((v2 - 240) | 0x9BFF9809CD57E098) - ((v2 - 240) & 0x9BFF9809CD57E098)) ^ 0x89A82A2DB6FF7DEALL);
  *(v4 + 32) = a1 + 847543945 + v5;
  *(v4 + 36) = -301143701 * ((((v2 - 240) | 0xCD57E098) - ((v2 - 240) & 0xCD57E098)) ^ 0xB6FF7DEA);
  *(v4 + 40) = v5 ^ (a1 + 847543945) ^ 0x4AA;
  *(v4 + 8) = v5 + v1;
  *(v4 + 16) = (a1 + 847544021) ^ v5;
  *v4 = (a1 + 2105773206) ^ v5;
  *(v4 + 24) = v5 ^ 0x416959C;
  v6 = (*(v3 + 8 * (a1 ^ 0x31DD)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * *(v2 - 196)))(v6);
}

uint64_t sub_10001F6F8()
{
  STACK[0x1B30] = 0;
  v1 = LODWORD(STACK[0x83C]) + 2428;
  STACK[0x3060] = *(v0 + 8 * SLODWORD(STACK[0x83C]));
  return (*(v0 + 8 * (LODWORD(STACK[0x838]) ^ v1)))();
}

uint64_t sub_10001F770@<X0>(int a1@<W8>)
{
  STACK[0x3D60] = v1;
  LODWORD(STACK[0x3D6C]) = v3;
  STACK[0x2D60] = 0;
  return (*(v4 + 8 * (((v1 == 0xA78D87CF95EE190) * ((((a1 + 2055480493) & 0x857BEFF9) - 4021) ^ ((a1 + 1278) | v2))) ^ a1)))();
}

uint64_t sub_10001F830()
{
  v3 = (*(v2 + 8 * (v0 + 8294)))((v1 - 1443455193));
  v4 = STACK[0x1708];
  STACK[0x2D60] = v3;
  return (*(v4 + 8 * ((44 * ((((19 * (v0 ^ 0x851) - 5438) ^ (v3 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_10001FB90@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2B08] = v1;
  STACK[0x26F0] = a1;
  return (*(v3 + 8 * (((a1 == 0x1138F6A92264F486) * ((v2 - 2647) ^ (v2 - 2688))) ^ v2)))();
}

uint64_t sub_10001FC7C()
{
  v1 = STACK[0xAC8];
  v2 = LODWORD(STACK[0xAC8]) + 9249;
  STACK[0x1DB8] = *(v0 + 8 * SLODWORD(STACK[0xAC8]));
  return (*(v0 + 8 * (v1 ^ 0x2BD9 ^ v2)))();
}

uint64_t sub_10001FFBC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2FB0]) = v2;
  STACK[0x2AC0] = v1;
  STACK[0x2728] = v3;
  v6 = v3 != 0x1138F6A92264F486 && v1 != 0x59E0C0980922C77FLL;
  return (*(v4 + 8 * ((v6 * ((351 * (a1 ^ 0x270B)) ^ 0x432)) ^ a1)))();
}

uint64_t sub_100020064@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2D68] = v1;
  STACK[0x2698] = 0x51CE20ABD81C933BLL;
  STACK[0x2F50] = 0x7436CD6D6A0F9DC1;
  v5 = a1 == 0x5A0411E37F4B9882 || v1 == 0x59E0C0980922C77FLL;
  return (*(v3 + 8 * ((v5 * (((v2 - 781) ^ 0x1E79) - 1536)) ^ v2)))();
}

uint64_t sub_100020108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8 == 68545953)
  {
    LODWORD(STACK[0x1F8C]) = 1917891169 * *(STACK[0x24E0] - 0x1138F6A92264F476) - 1356996924;
    return (*(v9 + 8 * SLODWORD(STACK[0x7AC])))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (v8 == 68588956)
  {
    return (*(v9 + 8 * (a8 - 4564)))(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return sub_100056024(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100020444@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x1138F6A92264F486);
  STACK[0x2EF8] = 0x51CE20ABD81C933BLL;
  STACK[0x1F98] = 0x7E14C97F8ADDBA5ELL;
  return (*(v2 + 8 * (((v3 == 0x5A0411E37F4B9882) * LODWORD(STACK[0x968])) ^ (a1 + 3116))))();
}

uint64_t sub_1000204C8@<X0>(int a1@<W7>, unint64_t a2@<X8>)
{
  STACK[0x2438] = a2;
  LODWORD(STACK[0x3028]) = 1395753632;
  STACK[0x1E80] = STACK[0x7B0];
  LODWORD(STACK[0x2A08]) = 4;
  return (*(v2 + 8 * (a1 ^ 0x1E79)))();
}

uint64_t sub_1000207B0()
{
  v7 = (v3 + v1 + 15);
  v8 = __ROR8__((v0 + v7) & ((v2 ^ 0x1413u) - 6278), 8) + 0x7695A575CC8A36DALL;
  v9 = __ROR8__(v8 ^ 0xD716ECD53D61FD7, 8);
  v8 ^= 0xB9DC45633787A904;
  v10 = (((2 * (v9 + v8)) | 0x214650BE159EC40ELL) - (v9 + v8) - 0x10A3285F0ACF6207) ^ 0x4E4D6C0CC0FAB8BDLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ v5;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14 - ((2 * (v13 + v14)) & 0x8080B3D906CC70D6) - 0x3FBFA6137C99C795) ^ 0x77EAFEFCA6A7C69;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xC4318A842864C03;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0x7A8F0ABFDFB7C82ALL) - (v19 + v18) - 0x3D47855FEFDBE415) ^ 0x7E278D4D0F78B466;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0x4EB980CCC4A8D04ELL - ((v22 + v21) ^ 0x9D07467A38DF90D3 | 0x4EB980CCC4A8D04ELL) + ((v22 + v21) ^ 0x9D07467A38DF90D3 | 0xB1467F333B572FB1)) ^ 0x99C0F93E3705DD5ELL;
  *(v0 + v7) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v21, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v0 + v3 + v1 + 15) & 7))) ^ *(v4 + v7);
  return (*(v6 + 8 * ((5136 * (v1 != 983284668)) ^ v2)))();
}

uint64_t sub_1000209E4()
{
  v8 = ((v3 + 973) | 0x844u) + v1 - v2 - 983290938;
  v9 = (v1 - v2 + v5);
  *&v10 = v0 + (v9 + 1);
  *(&v10 + 1) = v0 + v9;
  *&STACK[0x1900] = v10;
  *&v10 = v0 + (v9 + 3);
  *(&v10 + 1) = v0 + (v9 + 2);
  *&STACK[0x18F0] = v10;
  v11.i64[0] = v0 + (v9 + 9);
  v11.i64[1] = v0 + (v9 + 8);
  v12.i64[0] = v0 + (v9 + 11);
  v12.i64[1] = v0 + (v9 + 10);
  v13.i64[0] = v0 + (v9 + 13);
  v14.i64[0] = v0 + v8;
  v13.i64[1] = v0 + (v9 + 12);
  v14.i64[1] = v0 + (v9 + 14);
  v15 = vandq_s8(v14, *&STACK[0x1940]);
  v16 = vandq_s8(v13, *&STACK[0x1940]);
  v17 = vandq_s8(v12, *&STACK[0x1940]);
  v18 = vandq_s8(v11, *&STACK[0x1940]);
  v19 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v20 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v15, 0x38uLL), v15, 8uLL);
  v23 = vaddq_s64(v20, *&STACK[0x1870]);
  v24 = vaddq_s64(v19, *&STACK[0x1870]);
  v25 = *&STACK[0x1870];
  v26 = *&STACK[0x16D0];
  v27 = veorq_s8(v24, *&STACK[0x16D0]);
  v28 = veorq_s8(v23, *&STACK[0x16D0]);
  v29 = *&STACK[0x16E0];
  v30 = veorq_s8(v23, *&STACK[0x16E0]);
  v31 = veorq_s8(v24, *&STACK[0x16E0]);
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), v31);
  v33 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), v30);
  v34 = *&STACK[0x11F0];
  v35 = *&STACK[0x11E0];
  v36 = *&STACK[0x11D0];
  v37 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v33, v33), *&STACK[0x11F0]), v33), *&STACK[0x11E0]), *&STACK[0x11D0]);
  v38 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v32, v32), *&STACK[0x11F0]), v32), *&STACK[0x11E0]), *&STACK[0x11D0]);
  v39 = veorq_s8(v38, vsraq_n_u64(vshlq_n_s64(v31, 3uLL), v31, 0x3DuLL));
  v40 = veorq_s8(v37, vsraq_n_u64(vshlq_n_s64(v30, 3uLL), v30, 0x3DuLL));
  v41 = *&STACK[0x16B0];
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v39), *&STACK[0x16B0]);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v40), *&STACK[0x16B0]);
  v44 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v45 = veorq_s8(v42, vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL));
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45);
  v48 = vaddq_s64(v46, v44);
  v49 = *&STACK[0x1220];
  v50 = *&STACK[0x1210];
  v51 = *&STACK[0x1200];
  v52 = veorq_s8(vaddq_s64(vsubq_s64(v48, vandq_s8(vaddq_s64(v48, v48), *&STACK[0x1220])), *&STACK[0x1210]), *&STACK[0x1200]);
  v53 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(v47, vandq_s8(vaddq_s64(v47, v47), *&STACK[0x1220])), *&STACK[0x1210]), *&STACK[0x1200]);
  v56 = veorq_s8(v55, v54);
  v57 = veorq_s8(v52, v53);
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v57);
  v60 = *&STACK[0x1570];
  v61 = veorq_s8(vaddq_s64(v58, v56), *&STACK[0x1570]);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v59, *&STACK[0x1570]);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = veorq_s8(v61, v62);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v65);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64);
  v68 = *&STACK[0x1290];
  v69 = *&STACK[0x1280];
  v70 = *&STACK[0x1270];
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v67, v67), *&STACK[0x1290]), v67), *&STACK[0x1280]), *&STACK[0x1270]);
  v72 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v66, v66), *&STACK[0x1290]), v66), *&STACK[0x1280]), *&STACK[0x1270]);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v75 = veorq_s8(v71, v72);
  v76 = *&STACK[0x1260];
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74), *&STACK[0x1260]);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75), *&STACK[0x1260]);
  v79 = *&STACK[0x1250];
  v80 = *&STACK[0x1240];
  v81 = *&STACK[0x1230];
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, *&STACK[0x1250]), vorrq_s8(v77, *&STACK[0x1240])), *&STACK[0x1240]), *&STACK[0x1230]);
  v83 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, *&STACK[0x1250]), vorrq_s8(v78, *&STACK[0x1240])), *&STACK[0x1240]), *&STACK[0x1230]);
  v86.i64[0] = v0 + (v9 + 5);
  v86.i64[1] = v0 + (v9 + 4);
  *&STACK[0x1890] = v86;
  v87 = vaddq_s64(v21, v25);
  v88 = *&STACK[0x16C0];
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), veorq_s8(v85, v84)), *&STACK[0x16C0]);
  v90 = *&STACK[0x11C0];
  v197.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), veorq_s8(v82, v83)), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v11, 3uLL), *&STACK[0x11C0])));
  v197.val[2] = vshlq_u64(v89, vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), *&STACK[0x11C0])));
  v91 = veorq_s8(v87, v26);
  v92 = v29;
  v93 = veorq_s8(v87, v29);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v94, v94), v34), v94), v35), v36);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v41);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), v49)), v50), v51);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v60);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v68), v104), v69), v70);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v76);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, v79), vorrq_s8(v107, v80)), v80), v81);
  v29.i64[0] = v0 + (v9 + 7);
  v29.i64[1] = v0 + (v9 + 6);
  *&STACK[0x18B0] = v29;
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL)));
  v110 = vandq_s8(v29, *&STACK[0x1940]);
  v111 = vaddq_s64(v22, v25);
  v197.val[1] = vshlq_u64(veorq_s8(v109, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v90)));
  v112 = veorq_s8(v111, v26);
  v113 = veorq_s8(v111, v92);
  v114 = v92;
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), v34), v115), v35), v36);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v41);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(v120, vandq_s8(vaddq_s64(v120, v120), v49)), v50), v51);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v60);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), v68), v125), v69), v70);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v76);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v79), vorrq_s8(v128, v80)), v80), v81);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v132 = vandq_s8(v86, *&STACK[0x1940]);
  v133 = vaddq_s64(v131, v130);
  v134 = *&STACK[0x18F0];
  v135 = vandq_s8(*&STACK[0x18F0], *&STACK[0x1940]);
  v197.val[0] = vshlq_u64(veorq_s8(v133, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v90)));
  v136 = *&STACK[0x1900];
  v137 = vandq_s8(*&STACK[0x1900], *&STACK[0x1940]);
  v138 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  *&STACK[0x1880] = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v139 = v25;
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v25);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v25);
  *&STACK[0x18A0] = vqtbl4q_s8(v197, *&STACK[0x17C0]);
  v197.val[0] = veorq_s8(v141, v26);
  v197.val[1] = veorq_s8(v140, v26);
  v142 = v26;
  v143 = veorq_s8(v140, v92);
  v144 = veorq_s8(v141, v92);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v144);
  v197.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[1], 0x38uLL), v197.val[1], 8uLL), v143);
  v145 = v34;
  v197.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197.val[1], v197.val[1]), v34), v197.val[1]), v35), v36);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197.val[0], v197.val[0]), v34), v197.val[0]), v35), v36);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v146 = veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = veorq_s8(v197.val[1], v197.val[2]);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[1], 0x38uLL), v197.val[1], 8uLL), v147);
  v148 = v41;
  v197.val[1] = veorq_s8(vaddq_s64(v197.val[2], v146), v41);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v197.val[0] = veorq_s8(v197.val[0], v41);
  v149 = veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(v197.val[1], v197.val[2]);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[1], 0x38uLL), v197.val[1], 8uLL), v150);
  v197.val[1] = vaddq_s64(v197.val[2], v149);
  v197.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v197.val[1], vandq_s8(vaddq_s64(v197.val[1], v197.val[1]), v49)), v50), v51);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v197.val[0], vandq_s8(vaddq_s64(v197.val[0], v197.val[0]), v49)), v50), v51);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v151 = veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v152 = veorq_s8(v197.val[1], v197.val[2]);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[1], 0x38uLL), v197.val[1], 8uLL), v152);
  v197.val[1] = veorq_s8(vaddq_s64(v197.val[2], v151), v60);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v197.val[0] = veorq_s8(v197.val[0], v60);
  v153 = veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v154 = veorq_s8(v197.val[1], v197.val[2]);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[1], 0x38uLL), v197.val[1], 8uLL), v154);
  v197.val[1] = vaddq_s64(v197.val[2], v153);
  v197.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197.val[1], v197.val[1]), v68), v197.val[1]), v69), v70);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197.val[0], v197.val[0]), v68), v197.val[0]), v69), v70);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v155 = veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v156 = veorq_s8(v197.val[1], v197.val[2]);
  v197.val[2] = vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[1], 0x38uLL), v197.val[1], 8uLL), v156);
  v197.val[1] = veorq_s8(vaddq_s64(v197.val[2], v155), v76);
  v197.val[0] = veorq_s8(v197.val[0], v76);
  v197.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v197.val[1], v79), vorrq_s8(v197.val[1], v80)), v80), v81);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v197.val[0], v79), vorrq_s8(v197.val[0], v80)), v80), v81);
  v157 = vaddq_s64(v138, v139);
  v197.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[1], 0x38uLL), v197.val[1], 8uLL), veorq_s8(v197.val[1], vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v136, 3uLL), v90)));
  v197.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), v90)));
  v158 = veorq_s8(v157, v142);
  v159 = veorq_s8(v157, v114);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v145), v160), v35), v36);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v148);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(v165, vandq_s8(vaddq_s64(v165, v165), v49)), v50), v51);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v60);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v68), v170), v69), v70);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v76);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, v79), vorrq_s8(v173, v80)), v80), v81);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL)));
  v176 = vaddq_s64(*&STACK[0x1880], v139);
  v197.val[1] = vshlq_u64(veorq_s8(v175, v88), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1890], 3uLL), v90)));
  v177 = veorq_s8(v176, v142);
  v178 = veorq_s8(v176, v114);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v179, v179), v145), v179), v35), v36);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v148);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(v184, vandq_s8(vaddq_s64(v184, v184), v49)), v50), v51);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v60);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v189, v189), v68), v189), v69), v70);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191), v76);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v79), vorrq_s8(v192, v80)), v80), v81);
  v197.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x18B0], 3uLL), v90)));
  v194 = *&STACK[0x18A0];
  v194.i64[1] = vqtbl4q_s8(v197, *&STACK[0x17C0]).u64[0];
  v195 = vrev64q_s8(v194);
  *(v0 + v8 - 15) = veorq_s8(vextq_s8(v195, v195, 8uLL), *(v6 + v8));
  return (*(v7 + 8 * ((240 * (v2 + 16 != v4)) ^ v3)))();
}

uint64_t sub_100021588()
{
  *(v3 - 240) = (v2 + 1788) ^ (1949688233 * ((2 * ((v3 - 240) & 0x6E100578) - (v3 - 240) + 300939905) ^ 0xF6A8AC0A));
  v5 = (*(v4 + 8 * (v2 ^ 0x3F23)))(v3 - 240);
  v6 = STACK[0x1708];
  v7 = *(v3 - 232);
  v8 = (v1 + v0 - 1164543898);
  *v8 = v7 ^ 0x31;
  v8[1] = BYTE1(v7) ^ 0x8B;
  return (*(v6 + 8 * ((127 * (v0 != ((((v2 - 1621) | 0x396u) + 1151) ^ 0x45699FD6))) ^ v2)))(v5);
}

uint64_t sub_10002165C@<X0>(unint64_t a1@<X8>)
{
  v7 = v1 + v3 + v4;
  *(v7 + 2) = BYTE2(a1) ^ 0x32;
  *(v7 + 3) = (a1 >> (((v5 - 41) ^ 0xA8u) - 102)) ^ 0xAF;
  return (*(v6 + 8 * (v5 ^ (2019 * (v3 == v2 + 12)))))();
}

uint64_t sub_1000216BC@<X0>(uint64_t a1@<X8>)
{
  *(v6 + (((v1 - 9408) | 0x1801u) ^ (v3 + 925) ^ ((v1 - 4208) | 0x18u)) + v5) = BYTE4(a1) ^ 0xEB;
  *(v2 + 5) = BYTE5(a1) ^ 0x99;
  return (*(v7 + 8 * (v1 ^ (460 * (v5 != v4 + 10)))))();
}

uint64_t sub_100021728@<X0>(uint64_t a1@<X8>)
{
  *(v2 + v4 + v5 + 6) = BYTE6(a1) ^ 0xDB;
  *(v4 + (v1 + 1468) + ((v1 - 7105) | 0x1828u) + v5 - 1164558820) = HIBYTE(a1) ^ 0x1A;
  return (*(v6 + 8 * (v1 ^ (58 * (v4 + 8 != v3 + 16)))))();
}

uint64_t sub_100021A14()
{
  v1 = STACK[0x428];
  LODWORD(STACK[0x1E40]) = STACK[0x1BD4];
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100021A3C()
{
  LODWORD(STACK[0x1E78]) = v1;
  STACK[0x1CF8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1616 ^ (v0 + 4250))))();
}

uint64_t sub_100021A9C()
{
  v1 = *(v0 + 8 * (((*(STACK[0x2AD8] - 0x510808E226CB14F7) == ((LODWORD(STACK[0x560]) - 98) ^ 0xB1)) * (LODWORD(STACK[0x560]) + 4294)) ^ LODWORD(STACK[0x560])));
  LODWORD(STACK[0x4298]) = LODWORD(STACK[0x560]) + 5278;
  return v1();
}

uint64_t sub_100021AF8()
{
  v2 = LODWORD(STACK[0x560]) + 3958;
  v3 = STACK[0x1C58];
  v4 = v0 - 0x510808E226CB1488;
  STACK[0x2510] = v4;
  STACK[0x26A8] = v3;
  if (v4)
  {
    v5 = v3 == 0x1138F6A92264F486;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v1 + 8 * ((v6 * ((v2 ^ 0x1CF6) - 6302 + 165 * (v2 ^ 0x1CF6))) | v2)))();
}

uint64_t sub_100021B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a4 - 0x1138F6A92264F47ELL);
  STACK[0x3040] = v5;
  STACK[0x2F70] = 0x51CE20ABD81C933BLL;
  STACK[0x2820] = STACK[0x258];
  return (*(v6 + 8 * ((((((v4 + 3069) ^ (v7 == 0x5A0411E37F4B9882)) & 1) == 0) * ((v4 - 1658) ^ 0x61E)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_100021C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x2438] = a7;
  LODWORD(STACK[0x3028]) = 1317731269;
  STACK[0x1E80] = a65;
  LODWORD(STACK[0x2A08]) = 18;
  return (*(v66 + 8 * v65))(a1, a2, a3, a4, a3, a5, a6, STACK[0x1700]);
}

uint64_t sub_100021C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (LODWORD(STACK[0x21E4]) != 2046957825 && LODWORD(STACK[0x21E4]) != 73579552)
  {
    return sub_100043D0C();
  }

  v9 = STACK[0x2C48];
  LODWORD(STACK[0x2C88]) = STACK[0x2C48];
  v10 = STACK[0x2280];
  STACK[0x19D0] = STACK[0x2280];
  STACK[0x2708] = 0;
  if (v9 == -491714133)
  {
    STACK[0x1CB8] = 0;
    LODWORD(STACK[0x21FC]) = 1443455193;
    STACK[0x2028] = 0;
    LODWORD(STACK[0x2198]) = 1443455193;
    STACK[0x2CC0] = 0;
    LODWORD(STACK[0x2D04]) = 1443455193;
    return (*(v8 + 8 * ((((381 * (a8 ^ 0x186F)) ^ 0x1966) * (v10 == 0)) ^ (a8 + 2696))))();
  }

  else if (v9 == 716234865)
  {
    LODWORD(STACK[0x2144]) = 0;
    return (*(v8 + 8 * ((69 * (((v10 == 0) ^ STACK[0x228]) & 1)) ^ (a8 - 2142))))();
  }

  else
  {
    LOBYTE(STACK[0x208B]) = 35;
    return (*(v8 + 8 * ((a8 - 5764) ^ 0x960)))();
  }
}

uint64_t sub_100022B94@<X0>(uint64_t a1@<X8>)
{
  v5 = (*(v4 + 8 * (v2 ^ 0x300B)))(a1 - 0x39E0D2C0E09BDD67);
  v6 = STACK[0x1708];
  *v1 = v3;
  return (*(v6 + 8 * v2))(v5);
}

uint64_t sub_100022D28@<X0>(int a1@<W8>)
{
  v2 = a1 + 276;
  v3 = (*(v1 + 8 * (a1 + 4398)))();
  return (*(STACK[0x1708] + 8 * v2))(v3);
}

uint64_t sub_100022D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x15A0];
  v11 = STACK[0x15A0] + 16;
  v12 = (STACK[0x15A0] + 24);
  v13 = STACK[0x1700];
  switch(v7)
  {
    case 0:
      result = (*(v9 + 8 * (v13 + 1730)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 1:
      result = (*(v9 + 8 * (v13 + 25)))(0x8BAC8FC05ACDC85BLL, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 2:
      LODWORD(STACK[0x2C44]) = 1;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 3:
      result = (*(v9 + 8 * (v13 - 537)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 4:
      LODWORD(STACK[0x2C44]) = 3;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 5:
      result = (*(v9 + 8 * (((LODWORD(STACK[0x1DB4]) == 68588956) * (((v13 - 58129600) & 0x376F7FD) + ((v13 + 1091) ^ 0x39EA))) ^ (v13 + 1540))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 6:
      LODWORD(STACK[0x2C44]) = 5;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 7:
      result = (*(v9 + 8 * (v13 - 358)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 8:
      LODWORD(STACK[0x2C44]) = 7;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 9:
    case 34:
      result = (*(v9 + 8 * (v13 - 3402)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 10:
      LODWORD(STACK[0x2C44]) = 9;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 11:
      result = (*(v9 + 8 * ((116 * (((LODWORD(STACK[0x2DF4]) == 68588956) ^ (v13 - 1)) & 1)) ^ (v13 - 4291))))(0x8BAC8FC05ACDC85BLL, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 12:
      LODWORD(STACK[0x2C44]) = 11;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 13:
      v20 = STACK[0x29F8];
      LODWORD(STACK[0x2B30]) = STACK[0x29F8];
      result = (*(v9 + 8 * (((2 * (v20 == ((v13 + 215107329) & 0xF32DA6AF) + 68587373)) | (8 * (v20 == ((v13 + 215107329) & 0xF32DA6AF) + 68587373))) ^ (v13 - 4860))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 14:
      LODWORD(STACK[0x2C44]) = 13;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 15:
      v18 = STACK[0x2B30];
      LODWORD(STACK[0x29FC]) = STACK[0x2B30];
      result = (*(v9 + 8 * ((((v13 + 246503593) & 0xF14E8EFF ^ 0x53) * (v18 != 68588956)) ^ (v13 - 3536))))(0x8BAC8FC05ACDC85BLL, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 16:
      result = (*(v9 + 8 * ((9482 * (LODWORD(STACK[0x23D4]) == 91 * (v13 ^ 0x183D) + 68582859)) ^ (v13 - 4437))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 17:
      LODWORD(STACK[0x2C44]) = 16;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 18:
      STACK[0x28E0] = v11;
      result = (*(v9 + 8 * (((*(STACK[0x2E80] - 0x34F9377BC915C8F4) == 0x2087B04485EAB71CLL) * ((((v13 - 5723) | 0x408) + 2287) ^ 0xF0C)) ^ (v13 - 3599))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 19:
      result = (*(v9 + 8 * (v13 - 1916)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 20:
      LODWORD(STACK[0x2C44]) = 19;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 21:
      STACK[0x19A0] = v11;
      result = (*(v9 + 8 * (((*(STACK[0x2E80] - 0x34F9377BC915C8F4) == 0x2087B04485EAB71CLL) * (((v13 - 5235) | 0x220) + ((v13 + 744) ^ 0xFFFFE1FD))) ^ (v13 + 4039))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 22:
      result = (*(v9 + 8 * (v13 - 4437)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 23:
      LODWORD(STACK[0x2C44]) = 22;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 24:
      result = (*(v9 + 8 * (((v10[1] != ((v13 - 1532536449) & 0x5B58AEA7 ^ 0x5302EFAC)) * ((v13 - 4691) ^ 0x5E0)) ^ (v13 + 2406))))(662988644, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 25:
      LODWORD(STACK[0x2C44]) = 0;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 26:
      STACK[0x2400] = v11;
      v16 = *v12;
      STACK[0x2D58] = *v12;
      v17 = v16 == 0x2087B04485EAB71CLL;
      LOBYTE(STACK[0x3C3B]) = v17;
      result = (*(v9 + 8 * ((v17 * ((v13 ^ 0x3F2D) + v13 - 4691 - 11596)) ^ (v13 - 2527))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 27:
      result = (*(v9 + 8 * (((*v12 == 0x2087B04485EAB71CLL) * ((v13 - 3670) ^ 0xA2F)) ^ (v13 - 2427))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 28:
      result = (*(v9 + 8 * (((*v12 == 0x2087B04485EAB71CLL) * (((v13 + 1863983742) & 0x90E5DD2F) - 6178)) ^ (v13 - 1483))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 29:
      STACK[0x1C18] = 0x2087B04485EAB71CLL;
      result = (*(v9 + 8 * ((97 * (*v12 == 0x2087B04485EAB71CLL)) | (v13 + 1952))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 30:
      STACK[0x22A0] = 0x2087B04485EAB71CLL;
      result = (*(v9 + 8 * ((386 * (((9 * (v13 ^ 0xC3)) ^ (*v12 == 0x2087B04485EAB71CLL)) & 1)) ^ (v13 - 4585))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 31:
      v15 = STACK[0x2BC4];
      LODWORD(STACK[0x3A7C]) = STACK[0x2BC4];
      result = (*(v9 + 8 * (((v15 == 68588956) * (v13 ^ 0x180F)) ^ (v13 - 1627))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 32:
      LODWORD(STACK[0x2C44]) = 31;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 33:
      STACK[0x2338] = v11;
      result = (*(v9 + 8 * (((*v12 == 0x2087B04485EAB71CLL) * ((v13 + 1969) ^ 0x2067)) ^ (v13 - 761))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 35:
      LODWORD(STACK[0x2C44]) = 34;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 36:
      result = (*(v9 + 8 * (((*v10 == 1578880000) * ((v13 ^ 0x1E55) + 443)) ^ (v13 + 897))))();
      break;
    case 37:
      result = (*(v9 + 8 * (v13 + 1742 + v13 - 6014)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 38:
      result = (*(v9 + 8 * (v13 - 5017)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 39:
      LODWORD(STACK[0x2C44]) = 38;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 40:
      result = (*(v9 + 8 * (((*v10 == v13 + 1578873730) * (((v13 - 6268) | 0xC64) - 3085)) ^ (v13 - 1858))))();
      break;
    case 41:
      result = (*(v9 + 8 * ((7923 * (v10[1] - *v10 + 1996233584 == ((v13 + 808588673) & 0xCFCDF3FE) + 1810037883)) ^ (v13 - 3883))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 42:
      result = (*(v9 + 8 * (((((41 * (v13 ^ 0x1827) - 3605) | 0x2000) ^ 0x201E) * (*v10 == 1578880000)) ^ (v13 + 646))))(68543931);
      break;
    case 43:
      v19 = *(STACK[0x1708] + 8 * (((*(v9 + 8 * (v13 ^ 0x31CC)))(STACK[0x1170] - 1297817643, 16, a3, a4, 0xDA182461BE0DA49ALL) * (23 * (v13 ^ 0x183D) + 5885)) ^ (v13 - 4729)));
      result = v19();
      break;
    case 44:
      result = (*(v9 + 8 * (v13 - 3909)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 45:
      LODWORD(STACK[0x2C44]) = 44;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 46:
      LODWORD(STACK[0x1E2C]) = 68543874;
      v21 = v8 - 240;
      v22 = 301143701 * ((v8 - 0x22D5E99BE43197E2 - 2 * ((v8 - 240) & 0xDD2A16641BCE690ELL)) ^ 0xCF7DA4406066F47CLL);
      *(v21 + 24) = (STACK[0x2780] + 0x4CC7BFE03395B538) ^ v22;
      *(v21 + 8) = v22 + 0x77E1C42A1C3C7E60;
      *(v21 + 16) = (301143701 * ((v8 + 466511902 - 2 * ((v8 - 240) & 0x1BCE690E)) ^ 0x6066F47C)) ^ (v13 - 6270) ^ 0x8A41E29C;
      *v21 = (v13 + 2105773206) ^ (301143701 * ((v8 + 466511902 - 2 * ((v8 - 240) & 0x1BCE690E)) ^ 0x6066F47C));
      *(v21 + 32) = ((v13 - 6270) ^ 0x8A41E2CA) + 301143701 * ((v8 + 466511902 - 2 * ((v8 - 240) & 0x1BCE690E)) ^ 0x6066F47C);
      *(v21 + 36) = -301143701 * ((v8 + 466511902 - 2 * ((v8 - 240) & 0x1BCE690E)) ^ 0x6066F47C);
      *(v21 + 40) = (301143701 * ((v8 + 466511902 - 2 * ((v8 - 240) & 0x1BCE690E)) ^ 0x6066F47C)) ^ (v13 - 6270) ^ 0x8A41E603;
      v23 = (*(v9 + 8 * (v13 + 4389)))(v8 - 240, a2, a3, a4, 0xDA182461BE0DA49ALL);
      result = (*(STACK[0x1708] + 8 * *(v8 - 196)))(v23);
      break;
    case 47:
      LODWORD(STACK[0x2C44]) = 46;
      result = (*(v9 + 8 * (v13 - 2791)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 48:
      STACK[0x1D70] = *(v9 + 8 * (v13 - 5916));
      result = (*(v9 + 8 * (v13 - 2992)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 49:
      STACK[0x1D70] = *(v9 + 8 * (v13 - 5886));
      result = (*(v9 + 8 * ((v13 - 5886) ^ 0xD4E)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 50:
      STACK[0x1D70] = *(v9 + 8 * (v13 - 5939));
      result = (*(v9 + 8 * (v13 - 2992)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    default:
      result = sub_100022C5C(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, STACK[0x1700]);
      break;
  }

  return result;
}

uint64_t sub_100026240(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v9 = v7 < v5;
  if (*(a3 - 0x7453703FA53237A5) == v6)
  {
    v10 = a4;
  }

  else
  {
    v10 = v4;
  }

  if (v9 == a4 - 316708704 < v5)
  {
    v9 = a4 - 316708704 < v7;
  }

  v11 = !v9;
  if (v10 != v4)
  {
    v11 = 1;
  }

  return (*(v8 + 8 * ((39 * v11) ^ a2)))(2 * (a2 ^ 0x415u));
}

uint64_t sub_10002631C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(STACK[0x15A0] + 8) + 16 * (v3 + a3 + 3457);
  STACK[0x2DD0] = v6;
  return (*(v5 + 8 * (((*(v6 - 0x7453703FA532379DLL) != 0x34F9377BC915C8F4) * ((v4 - 1484) ^ 0x1A21)) ^ v4)))(0x8BAC8FC05ACDC85BLL);
}

uint64_t sub_10002657C()
{
  v3 = *(v0 - 0x7453703FA532379DLL);
  STACK[0x2880] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 == 0x34F9377BC915C8F4) * (((571 * (v1 ^ 0x55) + 1333) | 0x822) ^ 0x18AA)) ^ (v1 | 0xB02))))();
}

uint64_t sub_100026668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 0x2087B04485EAB684) = *STACK[0x1F80];
  STACK[0x2170] = *(v9 + 8 * v7);
  return (*(v9 + 8 * (v7 - 5506 + (v7 ^ 0x1C8D))))(a1, a2, a3, a4, a5, a6, a7, 58);
}

uint64_t sub_100026790(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v10 = v8 < v5;
  if (*(a4 - 0x7453703FA53237A5) == v7)
  {
    v11 = a3;
  }

  else
  {
    v11 = v4;
  }

  v12 = (((a2 ^ 0x1E60) + 7795) ^ (v6 + 339968)) + a3;
  v13 = v10 ^ (v12 < v5);
  v14 = v12 < v8;
  if (!v13)
  {
    v10 = v14;
  }

  if (v11 != v4)
  {
    v10 = 0;
  }

  return (*(v9 + 8 * ((v10 * ((10 * (a2 ^ 0x1E60)) ^ 0x304E)) ^ a2)))();
}

uint64_t sub_1000268BC()
{
  STACK[0x3480] = v1 - 0x2087B04485EAB70CLL;
  STACK[0x3488] = STACK[0x1A30];
  LODWORD(STACK[0x3494]) = STACK[0x2C6C];
  v3 = STACK[0x1B28];
  STACK[0x29D8] = STACK[0x40D0] + STACK[0x1B28] + 0x202F6D26B07708EELL;
  STACK[0x1B28] = v3 + 16;
  LODWORD(STACK[0x2748]) = 2059249624;
  STACK[0x3288] = *(v2 + 8 * (v0 - 6222));
  return (*(v2 + 8 * (v0 + 1419 + v0 - 6222 - 5503)))();
}

uint64_t sub_100026988()
{
  v2 = 148 * (v0 ^ 0x1869);
  v3 = v0 - 2179;
  v4 = STACK[0x1B28];
  v5 = STACK[0x40D0];
  STACK[0x1B28] += ((v0 - 3966) | 0x2A3u) ^ 0xBB3;
  v6 = (*(v1 + 8 * (v0 ^ 0x31A9)))(v5 + v4, 0);
  return (*(STACK[0x1708] + 8 * (((v6 >> 31) * (v2 + 4662)) ^ v3)))();
}

uint64_t sub_100026A9C@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (v1 ^ 0x22F7)))(((57 * (v1 ^ 0xB79) + 528444132) & 0xE08097EF ^ 0xA9F69964) + a1);
  v4 = STACK[0x1708];
  STACK[0x2130] = v3;
  return (*(v4 + 8 * ((213 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_100026B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 - 0x2087B04485EAB6C4);
  v10 = *(v6 - 0x2087B04485EAB698);
  v11 = *(v6 - 0x2087B04485EAB6BCLL);
  v12 = (STACK[0x2890] / ((v7 + 2068950064) & 0x84AE5B7F ^ 0xB19)) - ((2 * (STACK[0x2890] / ((v7 + 2068950064) & 0x84AE5B7F ^ 0xB19))) & 0x4F3A8B3A) - 1482865251;
  STACK[0x1998] = *(v8 + 8 * v7);
  return (*(v8 + 8 * (v7 + 2012)))(a1, &STACK[0x2B74], v10, v9, v12, a6, v11, STACK[0x1700]);
}

uint64_t sub_100026C14()
{
  v4 = (*(v3 + 8 * (v0 ^ 0x3494)))(160);
  v5 = STACK[0x1708];
  *(v1 + 8) = v4 + v2;
  return (*(v5 + 8 * (v0 | (2 * (((v4 == 0) ^ (v0 - 64)) & 1)))))();
}

uint64_t sub_100026C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *v9 = 1578880010;
  *(v9 + 4) = 1392693001;
  *(a8 - 0x7453703FA53237A5) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532379DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323795) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532378DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323785) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532377DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323775) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532376DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323765) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532375DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323755) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532374DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323745) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532373DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323735) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532372DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323725) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532371DLL) = 0x34F9377BC915C8F4;
  *(*(v9 + 8) - 0x7453703FA5323715) = 1443455193;
  *(*(v9 + 8) - 0x7453703FA532370DLL) = 0x34F9377BC915C8F4;
  return (*(v10 + 8 * (v8 - 6525)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_100026FC0(int a1)
{
  v7 = v3 < v2;
  if (*(v4 - 0x7453703FA53237A5) == 1443455193)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  if (v7 == v5 + 1662736033 < v2)
  {
    v7 = v5 + 1662736033 < v3;
  }

  v9 = !v7;
  if (v8 != v1)
  {
    v9 = 1;
  }

  return (*(v6 + 8 * ((v9 * (1381 * (((a1 - 6980) | 0x2530) ^ 0x273E) - 9646)) ^ a1)))();
}

uint64_t sub_100027170@<X0>(uint64_t a1@<X0>, int a2@<W7>, uint64_t a3@<X8>)
{
  v17 = (v8 - 1155931706);
  v18 = (((a3 + v17) ^ *(*v9 + (*v3 & v10))) & (((v4 - 4616) | 0x21C0) + v15)) * a2;
  v19 = (v18 ^ HIWORD(v18)) * a2;
  v20 = *(a3 + v17) ^ *(v13 + (v19 >> 24)) ^ *(v12 + (v19 >> 24)) ^ *((v19 >> 24) + v14 + 4) ^ v19 ^ (-43 * BYTE3(v19)) ^ 0x1B;
  v21 = v8 - 69274732 < v6;
  if (v5 > v7 != v8 - 69274732 < v11)
  {
    v21 = v5 > v7;
  }

  *(a1 + v17) = v20;
  return (*(v16 + 8 * ((12576 * v21) ^ v4)))();
}

uint64_t sub_100027244()
{
  v2 = STACK[0x1B28];
  v3 = STACK[0x40D0];
  STACK[0x1B28] += v0 ^ 0x23C2;
  v4 = (*(v1 + 8 * (v0 + 1541)))(v3 + v2, 0);
  return (*(STACK[0x1708] + 8 * (((v4 >> 31) * ((v0 - 3256) ^ 0x1721)) ^ v0)))();
}

uint64_t sub_1000272DC()
{
  STACK[0x2158] = *(v2 + v1);
  STACK[0x1B28] += ((v0 - 1546) | 0x80Au) ^ 0xFFFFFFFFFFFFE6EALL;
  v4 = (*(v3 + 8 * (v0 + 4711)))(40);
  v5 = STACK[0x1708];
  STACK[0x26B8] = v4;
  return (*(v5 + 8 * ((78 * (v4 == 0)) ^ v0)))();
}

uint64_t sub_100027428@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 ^ 0x22A7)))(a1 - 0x7453703FA53237A5);
  v4 = STACK[0x1708];
  *(STACK[0x15A0] + 8) = 0x7453703FA53237A5;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_100027494()
{
  *(v2 + v1) = 0x2087B04485EAB71CLL;
  STACK[0x2C38] = v2;
  return (*(v3 + 8 * (((v2 == 0x2087B04485EAB71CLL) * (((v0 - 2150) | 0x686) ^ 0x1684)) ^ (v0 + 2127))))();
}

uint64_t sub_1000275DC()
{
  STACK[0x2D58] = v1;
  LOBYTE(STACK[0x3C3B]) = 1;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_100027600()
{
  LODWORD(STACK[0x29D4]) = 68588956;
  v3 = *(STACK[0x15A0] + 8) + 16 * (v1 - 1857527832);
  STACK[0x2AE8] = v3;
  return (*(v2 + 8 * (((v3 == 0x7453703FA53237A5) * ((v0 + 741931687) & 0xD3C6FFFB ^ 0x62F)) ^ v0)))();
}

uint64_t sub_100027680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5 - 2890;
  v8 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x1B28] = STACK[0x1B28] - 8484 + (v7 + 8550);
  v9 = *(v6 + 8 * v7);
  STACK[0x1D48] = v8;
  STACK[0x1F08] = v9;
  return (*(v6 + 8 * (v7 + 2318)))(a1, STACK[0x1680], a3, a4, a5, 238, 4294960097, 58);
}

uint64_t sub_10002794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0x3210] = a1 - 1;
  *(a2 + a1 - 1) = (v3 ^ 0xBA) * (v3 + 17);
  return (*(v4 + 8 * ((2070 * (STACK[0x3210] == 0)) ^ v2)))();
}

uint64_t sub_100027A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 2880;
  v10 = STACK[0x2C38];
  v11 = (*(v8 + 8 * (a8 ^ 0x3155)))(*(STACK[0x2C38] - 0x2087B04485EAB6C4) - 0x2B1A0449E8A6C928);
  v12 = STACK[0x1708];
  *(v10 - 0x2087B04485EAB6C4) = 0x2B1A0449E8A6C928;
  return (*(v12 + 8 * v9))(v11);
}

uint64_t sub_100027AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 + 633;
  v10 = (*(v8 + 8 * (a8 ^ 0x3155)))(STACK[0x21C0] - 0x2087B04485EAB71CLL);
  return (*(STACK[0x1708] + 8 * v9))(v10);
}

uint64_t sub_100027B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 2034;
  v10 = (*(v8 + 8 * (a8 + 4269)))(STACK[0x2C38] - 0x2087B04485EAB71CLL);
  return (*(STACK[0x1708] + 8 * v9))(v10);
}

uint64_t sub_100027C1C@<X0>(int a1@<W8>)
{
  STACK[0x2C20] = v1;
  v3 = STACK[0x1B28];
  v4 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x2688] = v4;
  STACK[0x2B20] = v4 + 40;
  STACK[0x2530] = v4 + 56;
  STACK[0x2B68] = v4 + 72;
  STACK[0x1B28] = ((a1 - 1344841952) & 0x50288C7F) + v3 - 6279 + 30 * (a1 ^ 0x1C18u);
  STACK[0x3130] = 0;
  LODWORD(STACK[0x26E8]) = 431327566;
  LODWORD(STACK[0x1E6C]) = 1443455193;
  LODWORD(STACK[0x29EC]) = 1443455193;
  STACK[0x27D0] = 0;
  LODWORD(STACK[0x197C]) = 2143754100;
  LODWORD(STACK[0x31B4]) = 1443455193;
  LODWORD(STACK[0x1E9C]) = -2054847099;
  return (*(v2 + 8 * ((38 * (v1 == 0)) ^ a1)))();
}

uint64_t sub_100027CF0(uint64_t a1)
{
  STACK[0x1FE0] = v2;
  STACK[0x1F08] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 - 6337 + ((v1 + 8347) | 0xA0))))(a1, STACK[0x1680]);
}

uint64_t sub_100027D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 1159;
  v10 = STACK[0x2C38];
  v11 = (*(v8 + 8 * (a8 + 4269)))(*(STACK[0x2C38] - 0x2087B04485EAB68CLL) - 0x2B1A0449E8A6C928);
  v12 = STACK[0x1708];
  *(v10 - 0x2087B04485EAB68CLL) = 0x2B1A0449E8A6C928;
  return (*(v12 + 8 * v9))(v11, 0x29246FE350A0484ALL);
}

uint64_t sub_100027E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 + 1450;
  v10 = STACK[0x21C0];
  v11 = (*(v8 + 8 * (a8 ^ 0x3155)))(*(STACK[0x21C0] - 0x2087B04485EAB6C4) - 0x2B1A0449E8A6C928);
  v12 = STACK[0x1708];
  *(v10 - 0x2087B04485EAB6C4) = 0x2B1A0449E8A6C928;
  return (*(v12 + 8 * v9))(v11);
}

uint64_t sub_100027E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 4629;
  v10 = STACK[0x21C0];
  v11 = (*(v8 + 8 * (a8 ^ 0x3155)))(*(STACK[0x21C0] - 0x2087B04485EAB68CLL) - 0x2B1A0449E8A6C928);
  v12 = STACK[0x1708];
  *(v10 - 0x2087B04485EAB68CLL) = 0x2B1A0449E8A6C928;
  return (*(v12 + 8 * v9))(v11);
}

uint64_t sub_100027F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x3E60] = *(v9 + v8);
  v12 = *(v9 - 0x2087B04485EAB678);
  v13 = 1110906037 * ((~((v10 - 240) | 0x375A65F2EC9826A5) + ((v10 - 240) & 0x375A65F2EC9826A5)) ^ 0x4362B7A89A20B5EALL);
  v14 = v10 - 240;
  *v14 = v13;
  *(v14 + 40) = v13 + a8 - 1307158385 + 1137;
  *(v14 + 32) = v12 + v13;
  *(v14 + 16) = a8 - 1307158385 - v13 + 125;
  *(v14 + 20) = -590966595 - v13 + a8;
  *(v14 + 24) = (a8 - 1307158385) ^ v13;
  *(v14 + 8) = 1443455193 - v13;
  v15 = (*(v11 + 8 * (a8 + 4414)))(v10 - 240);
  return (*(STACK[0x1708] + 8 * *(v10 - 212)))(v15);
}

uint64_t sub_100028360()
{
  v4 = STACK[0x15A0];
  *(v4 + 16) = 646931922;
  *(v4 + 24) = v0;
  v5 = 301143701 * ((((v2 - 240) | 0xD413E5DA) - ((v2 - 240) & 0xD413E5DA)) ^ 0xAFBB78A8);
  v6 = v2 - 240;
  *(v6 + 1) = 21 - -107 * ((((v2 + 16) | 0xDA) - ((v2 + 16) & 0xDA)) ^ 0xA8);
  *(v6 + 8) = 875502210 - v5;
  *(v6 + 12) = v1 - v5 + 1349;
  *v6 = (-107 * ((((v2 + 16) | 0xDA) - ((v2 + 16) & 0xDA)) ^ 0xA8)) ^ 0x2D;
  v7 = (*(v3 + 8 * (v1 ^ 0x3003)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * v1))(v7);
}

uint64_t sub_100028450()
{
  STACK[0x3E40] = *(v3 + v1);
  STACK[0x21C0] = v3;
  return (*(v4 + 8 * ((((v0 ^ 0x3937) - 6208) * (v3 != v2)) ^ v0)))();
}

uint64_t sub_100028760@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x38E4]) = a1;
  v2 = *STACK[0x40D8];
  STACK[0x38E8] = v2;
  return (*(v1 + 8 * (((v2 != 0x56F780AC40F6473BLL) * LODWORD(STACK[0xBFC])) ^ LODWORD(STACK[0xBF8]))))();
}

uint64_t sub_10002882C()
{
  v4 = v1 + 2033472784;
  v5 = v0 - 2129718638 + *(v2 - 0x56F780AC40F64733);
  v6 = v4 < 0xCF3DB5E5;
  v7 = v4 > v5;
  if (v6 != v5 < 0xCF3DB5E5)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((v7 * (((v0 - 1453871699) & 0x56A84FDF) - 1607)) ^ v0)))();
}

uint64_t sub_1000288C0@<X0>(int a1@<W8>)
{
  v5 = ((v1 + 105386667) & STACK[0x610]) + 1469;
  STACK[0x38F8] = v3;
  LODWORD(STACK[0x2A84]) = a1;
  return (*(v4 + 8 * (((v5 ^ 0x1E0E) * (v2 != 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_100028974()
{
  LODWORD(STACK[0x3904]) = 68543949;
  LODWORD(STACK[0x3914]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100028AF0@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W8>)
{
  v11 = ((2 * a7 + 1671613158) ^ a5 ^ (v9 + a3) & a4) + (a6 & (2 * (2 * a7 + 1671613158)));
  if (v7 < v8 != v11 + a1 < a2)
  {
    v12 = v11 + a1 < a2;
  }

  else
  {
    v12 = v11 + a1 > v7;
  }

  return (*(v10 + 8 * ((472 * !v12) ^ v9)))();
}

uint64_t sub_100028B60@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2A84]) = a1;
  v4 = (*(v3 + 8 * (v2 + 506)))(v1 + (v2 ^ 0x3FF9) + v2 - 9960 - 2121249804);
  v5 = STACK[0x1708];
  STACK[0x3908] = v4;
  return (*(v5 + 8 * ((15 * (v4 != 0)) ^ v2)))();
}

uint64_t sub_100028D00()
{
  v1 = STACK[0xD48];
  LODWORD(STACK[0x1F88]) = 30;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100028ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(&off_1002DD400 + v8 - 6003);
  v12 = *(&off_1002DD400 + v8 - 5705);
  switch(v7)
  {
    case 0:
      v34 = *(v12 - 1257357742) == ((v9 - 1278) ^ 0x3A984CC8) && *(v11 - 1292128150) != 0;
      result = (*(v10 + 8 * ((v34 * ((v9 - 4508) ^ 0x6ED)) ^ (v9 - 1278))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 1:
      result = (*(v10 + 8 * ((((*(v12 - 1257357742) - 983064393) < 0x7FFFFFFF) * (((v9 - 5206) | 0x9D0) - 3358)) ^ (v9 + 1014))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 2:
      v32 = *(v12 - 1257357742) != ((v9 - 2108891288) & 0x7DB31B39 ^ 0x3A984C68) || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((157 * ((((881 * (v9 ^ 0x187C)) ^ v32) & 1) == 0)) | (v9 - 1374))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 3:
      LODWORD(STACK[0x1F88]) = 2;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 4:
      result = (*(v10 + 8 * ((v9 + 803) ^ (4 * (2 * ((v9 + 533436252) & 0xE0347335 ^ 0x2061) - 983064393 + *(v12 - 1257357742) - 1762 > 0x7FFFFFFE)))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 5:
      LODWORD(STACK[0x1F88]) = 6;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 6:
      v36 = *(v12 - 1257357742) != ((((v9 + 1022068605) & 0xC31466E6) + 5937) ^ 0x3A98415B) || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((v9 + 3242) ^ (16 * v36))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 7:
      result = (*(v10 + 8 * (((*(v12 - 1257357742) - 983064393 < ((v9 - 5180) | 0x2A0u) + 2147481885) * (((v9 - 110) | 0x587) - 6553)) ^ (v9 + 1293))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 8:
      v28 = *(v12 - 1257357742) == v9 + 983058122 && *(v11 - 1292128150) != 0;
      result = (*(v10 + 8 * ((v28 * (v9 - 6257)) ^ (v9 - 907))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 9:
      LODWORD(STACK[0x1F88]) = 8;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 10:
      result = (*(v10 + 8 * ((((*(v12 - 1257357742) - 983064393) > 0x7FFFFFFE) * ((v9 ^ 0x1692) - 3803)) ^ (v9 + 1903))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 11:
      v24 = *(v12 - 1257357742) != 983064392 || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((v24 * ((v9 - 4508) ^ 0x1970)) ^ (v9 - 2272))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 12:
      LODWORD(STACK[0x1F88]) = 11;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 13:
      result = (*(v10 + 8 * ((28 * (((v9 ^ (*(v12 - 1257357742) - 983064393 < ((118 * (v9 ^ 0x183A)) ^ 0x7FFFE0A7))) & 1) == 0)) ^ (v9 - 3600))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 14:
      v38 = *(v12 - 1257357742) == ((v9 + 1287781613) & 0xB33DFEDF ^ 0x3A984DE1 ^ ((v9 - 5118) | 0x262)) && *(v11 - 1292128150) != 0;
      result = (*(v10 + 8 * ((140 * v38) ^ (v9 - 1075))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 15:
      LODWORD(STACK[0x1F88]) = 14;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 16:
      result = (*(v10 + 8 * ((44 * (*(v12 - 1257357742) + ((881 * (v9 ^ 0x187C)) ^ 0x205C) - 983074311 > 0x7FFFFFFE)) | (v9 - 3389))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 17:
      v22 = *(v12 - 1257357742) == 983064392 && *(v11 - 1292128150) != 0;
      result = (*(v10 + 8 * ((v22 * (LODWORD(STACK[0x12EC]) ^ 0x3091)) ^ (v9 + 3637))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 18:
      LODWORD(STACK[0x1F88]) = 17;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 19:
      result = (*(v10 + 8 * ((3680 * (*(v12 - 1257357742) - 983064393 < ((((v9 - 6268) | 0x6E0) + 2147476061) ^ (v9 - 446)))) ^ (v9 + 3493))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 20:
      v44 = *(v12 - 1257357742) != 983064392 || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((108 * ((v44 ^ (v9 ^ (v9 + 1))) & 1)) ^ (v9 + 3759))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 21:
      LODWORD(STACK[0x1F88]) = 20;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 22:
      result = (*(v10 + 8 * (((((v9 + 1510065765) & 0xA5FE27FE) - 983064393 + *(v12 - 1257357742) - 1762 < 0x7FFFFFFF) * (((v9 - 1650) | 0x881) + 794)) ^ (v9 - 2587))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 23:
      v26 = *(v12 - 1257357742) != 983064392 || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((v26 * (((v9 ^ 0x1E9C) + 204) ^ 0x7F1)) ^ (v9 - 3964))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 24:
      LODWORD(STACK[0x1F88]) = 23;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 25:
      LODWORD(STACK[0x1F88]) = 27;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 26:
      result = (*(v10 + 8 * ((221 * (*(v12 - 1257357742) - 983064393 < (v9 ^ 0x1E9C) + 2147481885)) ^ (v9 - 1316))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 27:
      v46 = *(v12 - 1257357742) != 983064392 || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((v46 * (((v9 - 5180) | 0x2A0) - 1656)) ^ (v9 - 4176))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 28:
      result = (*(v10 + 8 * (((*(v12 - 1257357742) - 983064393 < ((v9 + 34924289) & 0xFDEB1FF9 ^ 0x7FFFE086)) * (v9 ^ 0x1848)) ^ (v9 + 474))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 29:
      result = (*(v10 + 8 * ((45 * (*(v12 - 1257357742) - 983064393 >= ((((v9 - 5118) | 0x262) + 8586) ^ 0x7FFFD793u))) ^ (v9 - 3961))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 30:
      LODWORD(STACK[0x1F88]) = 31;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 31:
      v20 = *(v12 - 1257357742) != 983064392 || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((v20 * ((v9 - 4508) ^ 0x981 ^ (v9 - 353581199) & 0x15132FB7)) ^ (v9 - 1536))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 32:
      result = (*(v10 + 8 * ((414 * ((((v9 ^ 0x877) - 2343) ^ 0xC567A655) + *(v12 - 1257357742) < 0x7FFFFFFF)) ^ (v9 - 4549))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 33:
      LODWORD(STACK[0x1F88]) = 34;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 34:
      v48 = *(v12 - 1257357742) != 983064392 || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((((v48 ^ (v9 - 1)) & 1) * ((v9 - 470886765) & 0x1C111DEF ^ 0xD73)) ^ (v9 - 1094))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 35:
      result = (*(v10 + 8 * ((2994 * (((v9 + 1686672989) & 0x9B77597E ^ 0xC567A8ED) + *(v12 - 1257357742) < ((v9 - 4508) ^ 0x7FFFF91Du))) ^ (v9 - 941))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 36:
      result = (*(v10 + 8 * (((2 * (((v9 - 2046) | 0x44D) ^ 0x1D8C) - 4684) * (*(*(&off_1002DD400 + v9 - 6224) - 1195406803) == 2140404106)) ^ (v9 + 1628))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 37:
      LODWORD(STACK[0x1F88]) = 38;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 38:
      v40 = *(v12 - 1257357742) == 983064392 && *(v11 - 1292128150) != 0;
      result = (*(v10 + 8 * ((v40 * ((v9 ^ 0x1E9C) + v9 - 8020)) | (v9 + 3202))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 39:
      v16 = *(v12 - 1257357742) - 983064393 < ((((v9 + 4112) | 0x10) + 2147471487) ^ (v9 - 4508));
      result = (*(v10 + 8 * ((2 * v16) | (v16 << 6) | (v9 + 266))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 40:
      LODWORD(STACK[0x1F88]) = 0;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 41:
      result = (*(v10 + 8 * ((30 * (*STACK[0x14F0] == 0)) ^ (v9 - 1045))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 42:
      result = (*(v10 + 8 * ((46 * ((((v9 - 5566) | 0x422) ^ 0xC567A655) + *(v12 - 1257357742) < ((v9 - 406) ^ 0x7FFFE917u))) ^ (v9 - 359))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 43:
      result = (*(v10 + 8 * ((127 * (((-73 * (v9 ^ 0x6F)) ^ (*(v12 - 1257357742) - 983064393 < ((v9 - 4638) | 0x82u) + 2147481885)) & 1)) ^ (v9 - 1389))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
    case 44:
      v15 = *(v12 - 1257357742) == v9 + 983047772 + ((v9 + 1903519225) & 0x8E8A9DEB) + 3083 && *(v11 - 1292128150) != 0;
      result = (*(v10 + 8 * ((19 * v15) ^ (v9 + 997))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 45:
      LODWORD(STACK[0x1F88]) = 44;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 46:
      LODWORD(STACK[0x1F88]) = 47;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 47:
      v18 = *(v12 - 1257357742) != 983064392 || *(v11 - 1292128150) == 0;
      result = (*(v10 + 8 * ((v18 * (((v9 - 6141) | 0xA68) - 2710)) ^ (v9 - 3524))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 48:
      v41 = STACK[0x1AA8];
      v42 = STACK[0x1CD8];
      *(v42 - 0x74B7A6D37B83F853) = *(STACK[0x1AA8] + 48);
      *(v42 - 0x74B7A6D37B83F84BLL) = (*(v41 + 56) ^ 0x7F9EF8BECFEE89F9) + ((v9 - 564) ^ 0xFBF3DFFBBCDBE112) + ((2 * *(v41 + 56)) & 0xFF3DF17D9FDD13F2);
      LODWORD(STACK[0x2C44]) = 43;
      result = (*(v10 + 8 * (v9 - 4508)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 49:
      LODWORD(STACK[0x1F88]) = 50;
      result = (*(v10 + 8 * (v9 - 3945)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    case 50:
      v30 = *(v12 - 1257357742) == 983064392 && *(v11 - 1292128150) != 0;
      result = (*(v10 + 8 * ((v30 * (((v9 - 4700) | 0xC0) ^ (v9 - 4583))) ^ (v9 - 1474))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
      break;
    default:
      result = sub_100028D8C(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
      break;
  }

  return result;
}

uint64_t sub_100032974()
{
  v4 = *(*STACK[0x13B0] + (*STACK[0x13B8] & 0x497D621C));
  STACK[0x4088] = v2;
  STACK[0x4080] = 0;
  v5 = 16777619 * ((1232953884 * v4 + 7) ^ (1232953884 * v4)) % 7;
  v6 = *(&STACK[0x4080] | v5);
  *(&STACK[0x4080] | v5) = STACK[0x4087];
  LOBYTE(STACK[0x4087]) = v6;
  v7 = 16777619 * ((1232953884 * v4 + 6) ^ (1232953884 * v4)) % 6;
  v8 = *(&STACK[0x4080] | v7);
  *(&STACK[0x4080] | v7) = STACK[0x4086];
  LOBYTE(STACK[0x4086]) = v8;
  v9 = 16777619 * ((1232953884 * v4 + 5) ^ (1232953884 * v4)) % 5;
  v10 = *(&STACK[0x4080] | v9);
  *(&STACK[0x4080] | v9) = STACK[0x4085];
  LOBYTE(STACK[0x4085]) = v10;
  v11 = STACK[0x4080];
  LOBYTE(STACK[0x4080]) = STACK[0x4084];
  LOBYTE(STACK[0x4084]) = v11;
  v12 = 16777619 * ((1232953884 * v4 + 3) ^ (1232953884 * v4)) % 3;
  v13 = *(&STACK[0x4080] | v12);
  *(&STACK[0x4080] | v12) = STACK[0x4083];
  LOBYTE(STACK[0x4083]) = v13;
  v14 = STACK[0x4081];
  LOBYTE(STACK[0x4082]) = STACK[0x4080];
  LOWORD(STACK[0x4080]) = v14;
  v15 = vdup_n_s32(1232953884 * v4);
  v16.i32[0] = v15.i32[0];
  v16.i32[1] = 1232953884 * v4 + 1;
  v17 = veor_s8(vmul_s32(v16, v15), v15);
  STACK[0x4080] = vmla_s32(v17, STACK[0x4080], vdup_n_s32(0x1000193u));
  STACK[0x4088] ^= STACK[0x4080];
  STACK[0x4088] = vmul_s32(vsub_s32(STACK[0x4088], v17), vdup_n_s32(0x359C449Bu));
  v18 = STACK[0x408A];
  LOWORD(STACK[0x4089]) = STACK[0x4088];
  LOBYTE(STACK[0x4088]) = v18;
  v19 = (&STACK[0x4088] | v12);
  LOBYTE(v14) = *v19;
  *v19 = STACK[0x408B];
  LOBYTE(STACK[0x408B]) = v14;
  LOBYTE(v19) = STACK[0x4088];
  LOBYTE(STACK[0x4088]) = STACK[0x408C];
  LOBYTE(STACK[0x408C]) = v19;
  v20 = (&STACK[0x4088] | v9);
  LOBYTE(v19) = *v20;
  *v20 = STACK[0x408D];
  LOBYTE(STACK[0x408D]) = v19;
  v21 = (&STACK[0x4088] | v7);
  LOBYTE(v20) = *v21;
  *v21 = STACK[0x408E];
  LOBYTE(STACK[0x408E]) = v20;
  v22 = (&STACK[0x4088] | v5);
  v23 = *v22;
  *v22 = STACK[0x408F];
  LOBYTE(STACK[0x408F]) = v23;
  v24 = STACK[0x4088];
  v25 = (1232953884 * STACK[0x4088]) ^ v4;
  for (i = 1; i != 5; ++i)
  {
    v27 = 16777619 * ((v25 + i) ^ v25) % i;
    v28 = *(v24 + 8 * v27) ^ *(v24 + 8 * i);
    *(v24 + 8 * i) = v28;
    v29 = *(v24 + 8 * v27) ^ v28;
    *(v24 + 8 * v27) = v29;
    *(v24 + 8 * i) ^= v29;
  }

  v30 = 0;
  v31 = xmmword_1002A9AD0;
  v32 = xmmword_1002A9AE0;
  v33 = xmmword_1002A9AF0;
  v34 = xmmword_1002A9B00;
  v35 = vdupq_n_s32(v25);
  do
  {
    v36 = *(v24 + v30);
    v37 = vmovl_high_u8(v36);
    v38 = vmovl_u8(*v36.i8);
    v39.i64[0] = 0x9B009B009B009BLL;
    v39.i64[1] = 0x9B009B009B009BLL;
    v49.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v33, v35), vsubq_s32(v33, v35)), v35), vmull_high_u16(v38, v39));
    v49.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v32, v35), vsubq_s32(v32, v35)), v35), vmull_u16(*v37.i8, 0x9B009B009B009BLL));
    v49.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v34, v35), vsubq_s32(v34, v35)), v35), vmull_u16(*v38.i8, 0x9B009B009B009BLL));
    v49.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v31, v35), vsubq_s32(v31, v35)), v35), vmull_high_u16(v37, v39));
    *(v24 + v30) = vqtbl4q_s8(v49, xmmword_1002A9B10);
    v30 += 16;
    v38.i64[0] = 0x1000000010;
    v38.i64[1] = 0x1000000010;
    v34 = vaddq_s32(v34, v38);
    v33 = vaddq_s32(v33, v38);
    v32 = vaddq_s32(v32, v38);
    v31 = vaddq_s32(v31, v38);
  }

  while (v30 != 32);
  v40 = 0;
  v41 = xmmword_1002A9B20;
  v42 = xmmword_1002A9B30;
  v43 = vdupq_n_s32(v25);
  v44 = v24 + 32;
  do
  {
    v45 = vmovl_u8(*(v44 + v40));
    v46.i64[0] = 0x9B009B009B009BLL;
    v46.i64[1] = 0x9B009B009B009BLL;
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v43), vsubq_s32(v41, v43)), v43), vmull_high_u16(v45, v46));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v43), vsubq_s32(v42, v43)), v43), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    *(v44 + v40) = vqtbl2q_s8(v48, xmmword_1002A9B40).u64[0];
    v45.i64[0] = 0x800000008;
    v45.i64[1] = 0x800000008;
    v42 = vaddq_s32(v42, v45);
    v41 = vaddq_s32(v41, v45);
    v40 += 8;
  }

  while (v40 != 8);
  *(v0 - 1292128150) = STACK[0x4088];
  return (*(v3 + 8 * v1))(v41, v42);
}

uint64_t sub_100032D64@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  *(a2 + a1) = ((v2 + 3944) ^ 0x164B) + v3;
  LODWORD(STACK[0x2C44]) = 41;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_100032E8C()
{
  v3 = v2 - 240;
  *v3 = &STACK[0x1B40];
  *(v3 + 8) = 635325630 - 586739509 * ((1752444729 - ((v2 - 240) | 0x68742F39) + ((v2 - 240) | 0x978BD0C6)) ^ 0x6101D6A3) + v1 + 3879;
  (*(v0 + 8 * (v1 + 8459)))(v2 - 240);
  v4 = (*(STACK[0x1708] + 8 * (v1 ^ 0x2101)))(STACK[0xD58] - 1514018299, STACK[0x1170] - 1297817643, 0, *(&off_1002DD400 + v1 - 1767) - 1703038430, &STACK[0x1B40], 2);
  return (*(STACK[0x1708] + 8 * v1))(v4);
}

uint64_t sub_100032F98()
{
  (*(v0 + 8 * (v2 + 4867)))(v1, STACK[0x2608], 60000000000, 0);
  v3 = (*(STACK[0x1708] + 8 * (v2 + 4861)))(*(STACK[0xB28] - 1605683619));
  return (*(STACK[0x1708] + 8 * v2))(v3);
}

uint64_t sub_100033070()
{
  v5 = v4 - 240;
  *v5 = &STACK[0x2430];
  *(v5 + 8) = 635325630 - 586739509 * ((2 * ((v4 - 240) & 0x63973898) - (v4 - 240) - 1670854809) ^ 0x6AE2C102) + v2 + 1410;
  (*(v0 + 8 * (v2 ^ 0x3BFA)))(v4 - 240);
  v6 = (*(STACK[0x1708] + 8 * (v2 + 5980)))(STACK[0xD58] - 1514018299, v1 + v3, 0, *(&off_1002DD400 + (v2 ^ 0x114C)) - 1017132190, &STACK[0x2430], 2);
  return (*(STACK[0x1708] + 8 * v2))(v6);
}

uint64_t sub_100033164()
{
  ++*(v1 + v4);
  v6 = (*(v0 + 8 * (v3 + 7958)))(v2 + v5, 0);
  return (*(STACK[0x1708] + 8 * ((v6 * (v3 - 2664)) ^ v3)))();
}

uint64_t sub_1000331B4()
{
  v6 = 678427121 * (((v4 - 240) & 0x56A28186 | ~((v4 - 240) | 0x56A28186)) ^ 0x3B872463);
  v7 = v4 - 240;
  *(v7 + 8) = v2 - 805026502 + v6 + 813;
  *(v7 + 12) = v6 + ((v2 - 1530) | 0x240) - 2140405867 + v3;
  *v7 = &STACK[0x4540];
  (*(v5 + 8 * (v2 ^ 0x2358)))(v4 - 240);
  v8 = (*(STACK[0x1708] + 8 * (v2 + 7951)))(STACK[0xD58] - 1514018299, v1 + v0, 0, *(&off_1002DD400 + (v2 ^ 0x8D8)) - 1594304639, &STACK[0x4540], 8);
  return (*(STACK[0x1708] + 8 * v2))(v8);
}

uint64_t sub_100033304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = (a8 - 87) | 0x80;
  v10 = a8 + 3079;
  STACK[0x2350] = 0x39E0D2C0E09BDD67;
  v11 = (*(v8 + 8 * (a8 + 4355)))(8) == 0;
  return (*(STACK[0x1708] + 8 * ((v11 * (v9 ^ 0x18AA)) ^ v10)))();
}

uint64_t sub_10003337C(uint64_t a1)
{
  *a1 = -2085252650;
  *(a1 + 4) = 18779;
  STACK[0x2350] = a1 + 0x39E0D2C0E09BDD67;
  return (*(v2 + 8 * (((((a1 == 0) ^ (v1 - 90)) & 1) * (((v1 - 4141) | 0x1004) ^ 0x186B)) ^ v1)))();
}

uint64_t sub_1000334CC@<X0>(int a1@<W8>)
{
  STACK[0x2778] = *(v3 + 8 * a1);
  STACK[0x2B50] = v1;
  STACK[0x1970] = 0;
  v4 = (*(v3 + 8 * (v2 + 3153)))(120);
  v5 = STACK[0x1708];
  STACK[0x2C28] = v4 + 0x510808E226CB14FCLL;
  return (*(v5 + 8 * ((82 * (((v2 + v2 - 85) ^ (v4 == 0)) & 1)) ^ v2)))();
}

uint64_t sub_100033628@<X0>(int a1@<W8>)
{
  *v2 = *(v1 - 0x39E0D2C0E09BDD67);
  *(v2 + 4) = *(v1 - 0x39E0D2C0E09BDD63);
  *(v2 + 5) = *(v1 - 0x39E0D2C0E09BDD62);
  return (*(v3 + 8 * a1))();
}

uint64_t sub_100033694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x2C28];
  memset((STACK[0x2C28] - 0x510808E226CB14F4), 27, 48);
  v6 = v3 - 4897;
  v7 = v3 - 5310;
  STACK[0x3200] = *(v4 + 8 * v7);
  return (*(v4 + 8 * ((v6 ^ 0xD07) + v7)))(a1, v5 - 0x510808E226CB14C4, a3, 0x69DE7D55A59849C0, 0x4B10C1552D33DB20, 0x44D17CEB6219CF1ELL, 0x6F4D4B6AAF66F045, 0x2C2D43784FC5A036);
}

uint64_t sub_100033894(uint64_t a1)
{
  *a1 = -2085252650;
  *(a1 + 4) = 18779;
  STACK[0x1970] = a1 + 0x39E0D2C0E09BDD67;
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((((((v1 - 2397) ^ v5) & 1) == 0) * (v1 - 2993)) ^ v1)))();
}

uint64_t sub_100033900()
{
  LODWORD(STACK[0x1A74]) = v0;
  STACK[0x1D80] = STACK[0x2C28];
  return (*(v2 + 8 * (v1 + (v1 ^ 0x1A0C) - 2774)))();
}

uint64_t sub_100033930(uint64_t a1)
{
  *v2 = -2085252650;
  *(v2 + 4) = *(a1 + 4);
  *(v2 + 5) = *(a1 + 5);
  return (*(v3 + 8 * (v1 - 7076 + ((v1 - 2999) | 0x1866))))();
}

uint64_t sub_10003399C()
{
  STACK[0x1540] = STACK[0x2AD8] - 0x510808E226CB14B4;
  STACK[0x15B0] = STACK[0x2CE8] - 0x510808E226CB14B4;
  STACK[0x1530] = STACK[0x2C28] - 0x510808E226CB14B4;
  STACK[0x1600] = STACK[0x3200];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100033A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x152C];
  STACK[0x1600] = *(a3 + 8 * SLODWORD(STACK[0x152C]));
  return (*(a3 + 8 * ((STACK[0x1700] - 1977) ^ v3)))(a1, STACK[0x1530]);
}

uint64_t sub_100033B00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v26.i64[0] = a1 + v12 + 6;
  v26.i64[1] = a1 + v12 + 7;
  v27.i64[0] = a1 + v12;
  v27.i64[1] = a1 + v12 + 1;
  v28 = vandq_s8(v27, *&STACK[0x1940]);
  v29 = vandq_s8(v26, *&STACK[0x1940]);
  v30 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), *&STACK[0x1870]);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), *&STACK[0x1870]);
  v32 = vdupq_n_s64(0x8811DEA623E6079ALL);
  *&STACK[0x1860] = v32;
  v33 = vorrq_s8(vaddq_s64(v30, v30), v32);
  v34 = vorrq_s8(vaddq_s64(v31, v31), v32);
  v35 = vdupq_n_s64(0x3BF710ACEE0CFC33uLL);
  *&STACK[0x17B0] = v35;
  v36 = vaddq_s64(vsubq_s64(v33, v30), v35);
  v37 = vaddq_s64(vsubq_s64(v34, v31), v35);
  v38 = vdupq_n_s64(v8);
  *&STACK[0x17A0] = v38;
  v39 = veorq_s8(v37, v38);
  v40 = veorq_s8(v36, v38);
  v41 = vdupq_n_s64(0x7DD4AA302674AAC9uLL);
  *&STACK[0x1850] = v41;
  v42 = veorq_s8(v36, v41);
  v43 = veorq_s8(v37, v41);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v43);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v42);
  v46 = vdupq_n_s64(v23);
  v47 = vdupq_n_s64(0x577CCDEA6969E167uLL);
  *&STACK[0x1840] = v47;
  v48 = vdupq_n_s64(0x99289B9A35C3BDDuLL);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v45, v45), v46), v45), v47), v48);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v44, v44), v46), v44), v47), v48);
  v51 = v48;
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v53 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v52);
  v56 = vdupq_n_s64(v21);
  *&STACK[0x1790] = v56;
  v57 = vorrq_s8(v55, v56);
  v58 = vorrq_s8(v54, v56);
  v59 = vdupq_n_s64(0x24256DF8E64636C3uLL);
  *&STACK[0x1830] = v59;
  v60 = vaddq_s64(vsubq_s64(v57, vorrq_s8(v55, v59)), v59);
  v61 = vaddq_s64(vsubq_s64(v58, vorrq_s8(v54, v59)), v59);
  v62 = vdupq_n_s64(v10);
  *&STACK[0x1900] = v62;
  v63 = veorq_s8(v61, v62);
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v66);
  v70 = vdupq_n_s64(v24);
  *&STACK[0x1800] = v70;
  v71 = vdupq_n_s64(v19);
  v72 = vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), v70)), v71);
  v73 = vaddq_s64(vsubq_s64(v69, vandq_s8(vaddq_s64(v69, v69), v70)), v71);
  v74 = vdupq_n_s64(v20);
  *&STACK[0x1820] = v74;
  v75 = veorq_s8(v72, v74);
  v76 = veorq_s8(v73, v74);
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = vdupq_n_s64(v9);
  *&STACK[0x1810] = v82;
  v83 = vdupq_n_s64(v22);
  v84 = vdupq_n_s64(v25);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(v81, vandq_s8(vaddq_s64(v81, v81), v82)), v84), v83);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(v80, vandq_s8(vaddq_s64(v80, v80), v82)), v84), v83);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v88 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v89 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v88);
  v91 = vaddq_s64(v89, v87);
  v92 = vdupq_n_s64(a8);
  v93 = vdupq_n_s64(a6);
  *&STACK[0x17F0] = v93;
  v94 = vaddq_s64(vsubq_s64(v90, vandq_s8(vaddq_s64(v90, v90), v92)), v93);
  v95 = vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), v92)), v93);
  v96 = vdupq_n_s64(a7);
  *&STACK[0x1780] = v96;
  v97 = veorq_s8(v95, v96);
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v101);
  v104 = vdupq_n_s64(v15);
  *&STACK[0x17E0] = v104;
  v105 = vdupq_n_s64(v16);
  *&STACK[0x18F0] = v105;
  v106 = veorq_s8(vaddq_s64(v102, v100), v104);
  v107 = veorq_s8(v103, v104);
  v108 = vdupq_n_s64(v18);
  v109 = vdupq_n_s64(v17);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v105), vorrq_s8(v106, v109)), v109), v108);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, v105), vorrq_s8(v107, v109)), v109), v108);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL)));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL)));
  v114 = vdupq_n_s64(a3);
  v115 = vdupq_n_s64(a4);
  v116 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), v114), v113), v115);
  v117 = vdupq_n_s64(a5);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), v114), v112), v115), v117);
  v119 = vdupq_n_s64(0x38uLL);
  *&STACK[0x18B0] = vshlq_u64(v118, vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v119)));
  *&STACK[0x18C0] = v116;
  *&STACK[0x18D0] = v118;
  *&STACK[0x18E0] = vshlq_u64(veorq_s8(v116, v117), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v119)));
  v26.i64[0] = a1 + v12 + 4;
  v26.i64[1] = a1 + v12 + 5;
  v120 = vandq_s8(v26, *&STACK[0x1940]);
  v121 = *&STACK[0x1870];
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), *&STACK[0x1870]);
  v123 = *&STACK[0x1860];
  v124 = *&STACK[0x17B0];
  v125 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), *&STACK[0x1860]), v122), *&STACK[0x17B0]);
  v126 = *&STACK[0x17A0];
  v127 = veorq_s8(v125, *&STACK[0x17A0]);
  v128 = *&STACK[0x1850];
  v129 = veorq_s8(v125, *&STACK[0x1850]);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v129);
  v131 = v46;
  v132 = *&STACK[0x1840];
  v133 = v51;
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v46), v130), *&STACK[0x1840]), v51);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = *&STACK[0x1790];
  v138 = *&STACK[0x1900];
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v136, *&STACK[0x1790]), vorrq_s8(v136, *&STACK[0x1830])), *&STACK[0x1830]), *&STACK[0x1900]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = *&STACK[0x1800];
  v143 = *&STACK[0x1820];
  v144 = veorq_s8(vaddq_s64(vsubq_s64(v141, vandq_s8(vaddq_s64(v141, v141), *&STACK[0x1800])), v71), *&STACK[0x1820]);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = *&STACK[0x1810];
  v148 = vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), *&STACK[0x1810]));
  *&STACK[0x17D0] = v84;
  v149 = veorq_s8(vaddq_s64(v148, v84), v83);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  *&STACK[0x1750] = v92;
  v152 = *&STACK[0x17F0];
  v153 = *&STACK[0x1780];
  v154 = veorq_s8(vaddq_s64(vsubq_s64(v151, vandq_s8(vaddq_s64(v151, v151), v92)), *&STACK[0x17F0]), *&STACK[0x1780]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v156 = *&STACK[0x17E0];
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), *&STACK[0x17E0]);
  v158 = vorrq_s8(v157, *&STACK[0x18F0]);
  *&STACK[0x1890] = v109;
  v159 = veorq_s8(vaddq_s64(vsubq_s64(v158, vorrq_s8(v157, v109)), v109), v108);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL)));
  v155.i64[0] = a1 + v12 + (v14 ^ 0x187C);
  v155.i64[1] = a1 + v12 + 3;
  v161 = v155;
  v162 = v114;
  v163 = vshlq_n_s64(v26, 3uLL);
  v164 = v119;
  *&STACK[0x1880] = v119;
  *&STACK[0x18A0] = v117;
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v114), v160), v115), v117);
  v166 = *&STACK[0x18C0];
  v167 = *&STACK[0x18E0];
  *&STACK[0x18B0] = *&STACK[0x18B0];
  *&STACK[0x18C0] = v166;
  *&STACK[0x18D0] = vshlq_u64(v165, vnegq_s64(vandq_s8(v163, v119)));
  *&STACK[0x18E0] = v167;
  v168 = vandq_s8(v161, *&STACK[0x1940]);
  v169 = v161;
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v121);
  v171 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v123), v170), v124);
  v172 = veorq_s8(v171, v126);
  v173 = veorq_s8(v171, v128);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), v131), v174), v132), v133);
  v177 = v133;
  v178 = veorq_s8(v176, v175);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v178);
  v180 = *&STACK[0x1830];
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v179, v137), vorrq_s8(v179, *&STACK[0x1830])), *&STACK[0x1830]), v138);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(v183, vandq_s8(vaddq_s64(v183, v183), v142)), v71), v143);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(v186, vandq_s8(vaddq_s64(v186, v186), v147)), v84), v83);
  v188 = v83;
  v189 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(v190, v190), v92)), v152), v153);
  v192 = v153;
  v193 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v193), v156);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v194, *&STACK[0x18F0]), vorrq_s8(v194, *&STACK[0x1890])), *&STACK[0x1890]), v108);
  v196 = v108;
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL)));
  v198 = v162;
  v199 = v115;
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197, v197), v162), v197), v115), v117);
  v274.val[0] = *&STACK[0x18B0];
  v274.val[2] = *&STACK[0x18D0];
  v274.val[3] = *&STACK[0x18E0];
  v274.val[1] = vshlq_u64(v200, vnegq_s64(vandq_s8(vshlq_n_s64(v169, 3uLL), v164)));
  v162.i64[0] = a1 + v12 + 12;
  v162.i64[1] = a1 + v12 + 13;
  *&STACK[0x18B0] = vqtbl4q_s8(v274, *&STACK[0x17C0]);
  v200.i64[0] = a1 + v12 + 14;
  v200.i64[1] = a1 + v12 + 15;
  v201 = vandq_s8(v162, *&STACK[0x1940]);
  v202 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v203 = vandq_s8(v200, *&STACK[0x1940]);
  v204 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v205 = vaddq_s64(v202, v121);
  v206 = vaddq_s64(v204, v121);
  v207 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v206, v206), v123), v206), v124);
  v208 = veorq_s8(v207, v126);
  v274.val[0] = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v209 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205, v205), v123), v205), v124);
  v210 = veorq_s8(v209, v126);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v211 = veorq_s8(v207, v128);
  v212 = vaddq_s64(v274.val[0], v211);
  *&STACK[0x1770] = v131;
  v213 = veorq_s8(v209, v128);
  v274.val[0] = vaddq_s64(v274.val[1], v213);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  *&STACK[0x1760] = v177;
  v215 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), v131), v274.val[0]), v132), v177);
  v216 = veorq_s8(v215, v214);
  v274.val[0] = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v212, v212), v131), v212), v132), v177);
  v218 = veorq_s8(v217, v274.val[1]);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v274.val[0] = vaddq_s64(v274.val[0], v216);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], v137), vorrq_s8(v274.val[0], v180)), v180), *&STACK[0x1900]);
  v222 = veorq_s8(v221, v220);
  v274.val[0] = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v223 = v180;
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, v137), vorrq_s8(v219, v180)), v180), *&STACK[0x1900]);
  v225 = veorq_s8(v224, v274.val[1]);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v226 = vaddq_s64(v274.val[0], v222);
  v274.val[0] = vaddq_s64(v274.val[1], v225);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), v142)), v71), v143);
  v229 = veorq_s8(v228, v227);
  v274.val[0] = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(v226, vandq_s8(vaddq_s64(v226, v226), v142)), v71), v143);
  v231 = veorq_s8(v230, v274.val[1]);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v232 = vaddq_s64(v274.val[0], v229);
  v274.val[0] = vaddq_s64(v274.val[1], v231);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), v147)), *&STACK[0x17D0]), v188);
  v235 = veorq_s8(v234, v233);
  v274.val[0] = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(v232, vandq_s8(vaddq_s64(v232, v232), v147)), *&STACK[0x17D0]), v188);
  *&STACK[0x1710] = v188;
  v237 = veorq_s8(v236, v274.val[1]);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v238 = vaddq_s64(v274.val[0], v235);
  v239 = *&STACK[0x1750];
  v274.val[0] = vaddq_s64(v274.val[1], v237);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v241 = *&STACK[0x17F0];
  v242 = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x1750])), *&STACK[0x17F0]), v192);
  v243 = veorq_s8(v242, v240);
  v274.val[0] = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(v238, vandq_s8(vaddq_s64(v238, v238), *&STACK[0x1750])), *&STACK[0x17F0]), v192);
  v245 = veorq_s8(v244, v274.val[1]);
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v246 = *&STACK[0x17E0];
  v247 = veorq_s8(vaddq_s64(v274.val[0], v243), *&STACK[0x17E0]);
  v248 = *&STACK[0x1890];
  v249 = vsubq_s64(vorrq_s8(v247, *&STACK[0x18F0]), vorrq_s8(v247, *&STACK[0x1890]));
  v274.val[0] = veorq_s8(vaddq_s64(v274.val[1], v245), *&STACK[0x17E0]);
  v250 = *&STACK[0x18F0];
  v274.val[1] = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v252 = vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], *&STACK[0x18F0]), vorrq_s8(v274.val[0], *&STACK[0x1890])), *&STACK[0x1890]);
  *&STACK[0x1740] = v196;
  v253 = veorq_s8(v252, v196);
  v254 = veorq_s8(vaddq_s64(v249, v248), v196);
  v255 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), veorq_s8(v254, v274.val[1]));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), veorq_s8(v253, v251));
  *&STACK[0x1730] = v198;
  *&STACK[0x1720] = v199;
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v256, v256), v198), v256), v199), *&STACK[0x18A0]);
  v273.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v255, v255), v198), v255), v199), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v200, 3uLL), *&STACK[0x1880])));
  v273.val[2] = vshlq_u64(v274.val[0], vnegq_s64(vandq_s8(vshlq_n_s64(v162, 3uLL), *&STACK[0x1880])));
  v162.i64[0] = a1 + v12 + 10;
  v162.i64[1] = a1 + v12 + 11;
  v274.val[0] = vandq_s8(v162, *&STACK[0x1940]);
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), *&STACK[0x1870]);
  v274.val[0] = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x1860]), v274.val[0]), v124);
  v274.val[1] = veorq_s8(v274.val[0], v126);
  v274.val[0] = veorq_s8(v274.val[0], *&STACK[0x1850]);
  v274.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[1], 0x38uLL), v274.val[1], 8uLL), v274.val[0]);
  v274.val[2] = vsraq_n_u64(vshlq_n_s64(v274.val[0], 3uLL), v274.val[0], 0x3DuLL);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v274.val[1], v274.val[1]), *&STACK[0x1770]), v274.val[1]), *&STACK[0x1840]), *&STACK[0x1760]);
  v274.val[1] = veorq_s8(v274.val[0], v274.val[2]);
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], v137), vorrq_s8(v274.val[0], v223)), v223), *&STACK[0x1900]);
  v274.val[1] = veorq_s8(v274.val[0], vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL));
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x1800])), v71), *&STACK[0x1820]);
  v274.val[1] = veorq_s8(v274.val[0], vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL));
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x1810])), *&STACK[0x17D0]), v188);
  v274.val[1] = veorq_s8(v274.val[0], vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL));
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), v239)), v241), v192);
  v274.val[1] = veorq_s8(v274.val[0], vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL));
  v274.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[1]), v246);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], v250), vorrq_s8(v274.val[0], v248)), v248), *&STACK[0x1740]);
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), veorq_s8(v274.val[0], vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL)));
  v273.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x1730]), v274.val[0]), *&STACK[0x1720]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v162, 3uLL), *&STACK[0x1880])));
  v162.i64[0] = a1 + v12 + 8;
  v162.i64[1] = a1 + v12 + 9;
  v274.val[0] = vandq_s8(v162, *&STACK[0x1940]);
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), *&STACK[0x1870]);
  v274.val[0] = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x1860]), v274.val[0]), v124);
  v274.val[1] = veorq_s8(v274.val[0], v126);
  v274.val[0] = veorq_s8(v274.val[0], *&STACK[0x1850]);
  v274.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[1], 0x38uLL), v274.val[1], 8uLL), v274.val[0]);
  v274.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v274.val[1], v274.val[1]), *&STACK[0x1770]), v274.val[1]), *&STACK[0x1840]), *&STACK[0x1760]);
  v274.val[0] = veorq_s8(v274.val[1], vsraq_n_u64(vshlq_n_s64(v274.val[0], 3uLL), v274.val[0], 0x3DuLL));
  v274.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[1], 0x38uLL), v274.val[1], 8uLL), v274.val[0]);
  v257 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[1], v137), vorrq_s8(v274.val[1], v223)), v223), *&STACK[0x1900]);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v274.val[0], 3uLL), v274.val[0], 0x3DuLL));
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258);
  v260 = veorq_s8(vaddq_s64(vsubq_s64(v259, vandq_s8(vaddq_s64(v259, v259), *&STACK[0x1800])), v71), *&STACK[0x1820]);
  v261 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v262 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v261);
  v263 = veorq_s8(vaddq_s64(vsubq_s64(v262, vandq_s8(vaddq_s64(v262, v262), *&STACK[0x1810])), *&STACK[0x17D0]), *&STACK[0x1710]);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL));
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(v265, vandq_s8(vaddq_s64(v265, v265), v239)), v241), v192);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267), v246);
  v269 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v268, v250), vorrq_s8(v268, *&STACK[0x1890])), *&STACK[0x1890]), *&STACK[0x1740]);
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL)));
  v273.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v270, v270), *&STACK[0x1730]), v270), *&STACK[0x1720]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v162, 3uLL), *&STACK[0x1880])));
  v271 = *&STACK[0x18B0];
  *(&v271 + 1) = vqtbl4q_s8(v273, *&STACK[0x17C0]).u64[0];
  *(a1 + v12) = v271;
  return (*(a2 + 8 * ((15 * (v13 == v12)) ^ v11)))();
}

uint64_t sub_1000349B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x1528];
  STACK[0x1600] = *(a3 + 8 * SLODWORD(STACK[0x1528]));
  return (*(a3 + 8 * (STACK[0x1700] - 4897 + v3 + 2586)))(a1, STACK[0x15B0]);
}

uint64_t sub_1000349E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x1524];
  STACK[0x1600] = *(a3 + 8 * SLODWORD(STACK[0x1524]));
  return (*(a3 + 8 * (STACK[0x1700] - 4897 + v3 + 2512)))(a1, STACK[0x1540]);
}

uint64_t sub_100034A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1700];
  v5 = STACK[0x2C28];
  *(v5 - 0x510808E226CB1490) = 0;
  *(v5 - 0x510808E226CB1488) = 1443455193;
  *(v5 - 0x510808E226CB148CLL) = 1443455193;
  STACK[0x3200] = v3;
  *(v5 - 0x510808E226CB1494) = 38;
  LODWORD(STACK[0x1A74]) = 68588956;
  return (*(a3 + 8 * (v4 + 1372)))();
}

uint64_t sub_100034ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1700];
  STACK[0x3200] = v3;
  return (*(a3 + 8 * (v4 - 553)))();
}

uint64_t sub_100034B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x3200] = v3;
  v4 = STACK[0x2CE8];
  *(v4 - 0x510808E226CB1488) = STACK[0x1F24];
  v5 = STACK[0x1700] - 5453;
  *(v4 - 0x510808E226CB1494) = 39;
  return (*(a3 + 8 * (v5 ^ 0xE73)))();
}

uint64_t sub_100034BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 833;
  v11 = (*(v8 + 8 * (a8 + 4355)))(16) == 0;
  return (*(STACK[0x1708] + 8 * (((((a8 ^ v11) & 1) == 0) * (v9 - 5310)) ^ v9)))();
}

uint64_t sub_100034C54(unint64_t a1)
{
  v4 = v1 + 1326;
  STACK[0x1900] = a1;
  v5 = v2 - 240;
  *(v5 + 4) = v4 + 199319723 * ((((2 * (v2 - 240)) | 0x57AAEF2A) - (v2 - 240) - 735410069) ^ 0x9E25995D) - 785;
  *(v5 + 8) = a1 + 0x93C9FB87E111F0DLL;
  v6 = (*(v3 + 8 * (v4 ^ 0x33A5)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * ((27 * (*(v2 - 240) == (((v4 ^ 0x11AD) + 3256) ^ 0x238385B5))) ^ v4)))(v6);
}

uint64_t sub_100034EE0()
{
  v1 = STACK[0x7F0];
  v2 = LODWORD(STACK[0x7F0]) + 4435;
  v3 = STACK[0x2CE8];
  STACK[0x2580] = STACK[0x2CE8];
  STACK[0x2330] = v3;
  return (*(v0 + 8 * (((v3 == 0) * (v2 ^ 0x1865)) ^ v1)))();
}

uint64_t sub_100034F28()
{
  STACK[0x3010] = v1;
  LODWORD(STACK[0x208C]) = 1089728820;
  return (*(v2 + 8 * (v0 ^ 0x161E)))();
}

uint64_t sub_100034FC8@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 & 0x82BC3D97;
  v7 = (627 * (v1 & 0x82BC3D97 ^ 0x1D8F) + 1575782113) & 0xA21372FC;
  v8 = *(v2 - 0x93C9FB87E111F05);
  v9 = (*(v2 - 0x93C9FB87E111F09) ^ 0x89BC746D) - 864288873 + ((2 * *(v2 - 0x93C9FB87E111F09)) & 0x6F7BE6FE ^ 0x6C030624);
  v10 = v4 - 240;
  v11 = 143055461 * ((v4 - 0x6E70F7DB30B3A3AALL - 2 * ((v4 - 240) & 0x918F0824CF4C5D46)) ^ 0x63D0D5D2B1DA09DBLL);
  *(v10 + 24) = (v6 - 5114) ^ v11;
  *(v10 + 40) = 0x9F995B1E09E39703 - v11 + a1 - ((v7 ^ 0xC65ADE541444739ELL) & (2 * a1 + 0x78D7D7E7FF82CC44));
  *(v10 + 32) = v9 ^ v11;
  v12 = STACK[0xC20];
  *(v10 + 8) = v8;
  *(v10 + 16) = v12;
  *v10 = v3;
  v13 = (*(v5 + 8 * (v6 ^ 0x3432)))(v4 - 240);
  v15 = v3 != 0x610AC05FEF33C0BFLL && *(v4 - 212) == 68588956;
  return (*(STACK[0x1708] + 8 * ((38 * v15) ^ v6)))(v13);
}

uint64_t sub_100035350()
{
  STACK[0x1CF0] = STACK[0x2DC0];
  STACK[0x1E30] = 0x510808E226CB14FCLL;
  LODWORD(STACK[0x1BEC]) = 1443455193;
  LODWORD(STACK[0x274C]) = 1443455193;
  STACK[0x2180] = 0;
  STACK[0x3060] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 - 330535530) & 0x13B39BEA) - 1945)))();
}

uint64_t sub_100035434()
{
  v2 = STACK[0x208C];
  LODWORD(STACK[0x208C]) += (v0 ^ 0x74) - 6269;
  return (*(v1 + 8 * ((4325 * (v2 - 1089728819 < (((v0 ^ 0x1DA4) + 548215248) & 0xDF52F8FF) - 5270)) ^ v0 ^ 0x1DA4)))();
}

uint64_t sub_1000354C4@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x3BC8;
  v4 = a1 - 5802;
  *(v1 - 240) = (a1 + 1340) ^ (1949688233 * (((((v1 - 240) | 0x23AA96AA) ^ 0xFFFFFFFE) - (~(v1 - 240) | 0xDC556955)) ^ 0x3B123FDE));
  v5 = (*(v2 + 8 * (a1 ^ 0x31E3)))(v1 - 240);
  v6 = STACK[0x1708];
  v7 = (*(v1 - 232) ^ 0xD0697ECC) - 693277988 + ((v3 - 21510076) & (2 * *(v1 - 232)) ^ 0x5E250262);
  LODWORD(STACK[0x1B94]) = v7;
  LOBYTE(STACK[0x1C3F]) = 35;
  STACK[0x2AA8] = (v7 | ((v7 < 0x560960D9) << 32)) + 0x4394140BAA353905;
  return (*(v6 + 8 * (v4 ^ 0x94E)))(v5);
}

uint64_t sub_100035768()
{
  v2 = STACK[0x2708];
  STACK[0x1980] = STACK[0x2708];
  if (STACK[0x19D0])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v1 + 8 * ((v4 * (570 * ((v0 - 1386135647) & 0x529E9F5D ^ 0x207) - 6203)) ^ v0)))();
}

uint64_t sub_1000357D0()
{
  v3 = STACK[0x1B28];
  STACK[0x1B28] += 128;
  STACK[0x1A68] = v1;
  LODWORD(STACK[0x314C]) = 1443455193;
  STACK[0x26A0] = 0;
  LODWORD(STACK[0x2C5C]) = 1443455193;
  STACK[0x1B18] = 0;
  STACK[0x19E0] = STACK[0x40D0] + v3;
  STACK[0x2128] = 0;
  STACK[0x3060] = *(v2 + 8 * v0);
  return (*(v2 + 8 * ((v0 + 1454) ^ v0)))();
}

uint64_t sub_100035890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = *(v9 + 8 * ((LODWORD(STACK[0xCC0]) * (v8 != 68588956)) ^ (a8 + 894)));
  LODWORD(STACK[0x4280]) = STACK[0xCD0];
  return v10();
}

uint64_t sub_100035940@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x1680;
  v5 = (*(v3 + 8 * ((a1 ^ 0x1680) + 6701)))(v1 - 0x510808E226CB14FCLL);
  v6 = STACK[0x1708];
  *v2 = 0x510808E226CB14FCLL;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_100035A1C()
{
  v1 = STACK[0xAC4];
  v2 = LODWORD(STACK[0xAC4]) ^ 0x39A;
  v3 = STACK[0x2788];
  STACK[0x2CE8] = STACK[0x2788];
  return (*(v0 + 8 * (((v3 == 0x510808E226CB14FCLL) * ((v2 - 3831) ^ LODWORD(STACK[0xC6C]))) ^ v1)))();
}

uint64_t sub_100035A98()
{
  v1 = STACK[0x4280];
  LODWORD(STACK[0x4284]) = STACK[0x4280];
  v2 = (v1 - 216) | 0xA48u;
  LODWORD(STACK[0x4288]) = v2;
  v3 = *STACK[0x14F0];
  v4 = STACK[0x1B28];
  v5 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x1A98] = v5 + 0x202F6D26B07708EELL;
  STACK[0x24F8] = v5;
  STACK[0x28E8] = v5 + 0x2B1A0449E8A6C948;
  STACK[0x19F0] = v5 + 0x2B1A0449E8A6C958;
  STACK[0x1B28] = v4 + v2 - 2792;
  STACK[0x1A58] = v3;
  STACK[0x4188] = v5;
  LOBYTE(STACK[0x4187]) = 0;
  STACK[0x4178] = 32;
  STACK[0x4170] = *(v0 + 8 * (v1 + 10092));
  return (*(v0 + 8 * (v1 + 10016)))();
}

uint64_t sub_100035B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xC6C];
  v8 = LODWORD(STACK[0xC6C]) + 7058;
  STACK[0x18F0] = STACK[0x28B0];
  STACK[0x31D8] = *(v6 + 8 * v7);
  return (*(v6 + 8 * (v7 ^ 0x174A ^ v8)))(a1, a2, a3, a4, a5, a6, 2696541784, 67);
}

uint64_t sub_100035C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 2350;
  v10 = (*(v8 + 8 * (a8 + 4269)))(STACK[0x2028]);
  v11 = STACK[0x1708];
  STACK[0x2028] = 0;
  LODWORD(STACK[0x2198]) = 1443455193;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_100035CF8()
{
  v2 = (*(v1 + 8 * (v0 + 9228)))();
  v3 = STACK[0x1708];
  STACK[0x2270] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_100035D60()
{
  v2 = v0 ^ 0x26;
  v3 = (*(v1 + 8 * (v2 ^ 0x2E46)))();
  v4 = STACK[0x1708];
  STACK[0x21A8] = 0;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_100035DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x30EC];
  STACK[0x1B28] -= 128;
  return (*(v9 + 8 * (((v10 != ((5 * (v7 ^ 0x1741)) ^ 0x416B18F)) * (((2 * v7) ^ 0x33D8) - 4905)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, v8);
}

uint64_t sub_100035FD0()
{
  v4 = v2 - 240;
  *v4 = v0;
  *(v4 + 8) = (v1 + 5425) ^ (199319723 * ((2 * (((v2 - 240) ^ 0xC42AE4C4) & 0x45012A88) - ((v2 - 240) ^ 0xC42AE4C4) - 1157704331) ^ 0xCB24DF79));
  v5 = (*(v3 + 8 * (v1 ^ 0x38D5)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * (((*(v2 - 228) == 68588956) * (((v1 - 609) | 0x81C) ^ 0x187B)) ^ v1)))(v5);
}

uint64_t sub_1000360C4@<X0>(int a1@<W8>)
{
  v6 = a1 - 1467;
  v7 = v4 - 240;
  v8 = 143055461 * ((~(v4 - 240) & 0x8F42C7868BFA9893 | (v4 - 240) & 0x70BD38797405676CLL) ^ 0x7D1D1A70F56CCC0ELL);
  v9 = STACK[0x488];
  *(v7 + 8) = *(v2 - 0x93C9FB87E111F05);
  *(v7 + 16) = v9;
  *(v7 + 32) = (((a1 - 1057332217) ^ v1) - 2059536513 + ((2 * v1) & 0xFDF7F72E ^ 0x7C030624)) ^ v8;
  *(v7 + 40) = 0x9F995B1E09E39703 - v8 + v3 - ((2 * v3 + 0x78D7D7E7FF82CC44) & 0xC65ADE54144461C2);
  *(v7 + 24) = (a1 - 3827) ^ v8;
  *v7 = 0x610AC05FEF33C0BFLL;
  v10 = (*(v5 + 8 * (a1 + 4409)))(v4 - 240);
  return (*(STACK[0x1708] + 8 * ((13215 * (*(v4 - 212) == 68588956)) ^ v6)))(v10);
}

uint64_t sub_10003622C()
{
  v7 = v5 - 240;
  v8 = 1110906037 * ((v4 & 0xA356464B85095F18 | (v5 - 240) & 0x5CA9B9B47AF6A0E7) ^ 0x28916BEE0C4E33A8);
  *(v7 + 24) = *(v1 - 0x93C9FB87E111F05) + 24 * (LODWORD(STACK[0x19B4]) - 1225770739);
  *(v7 + 32) = v0;
  *(v7 + 16) = v8 + v2 + ((v3 - 867440196) & 0x33B41BFE) + 0x1E13988290AC7C94;
  *(v7 + 8) = v8 ^ 0x70CC2057;
  *(v7 + 12) = (v3 - 2683) ^ v8;
  *v7 = v1;
  v9 = (*(v6 + 8 * (v3 + 5875)))(v5 - 240);
  return (*(STACK[0x1708] + 8 * v3))(v9);
}

uint64_t sub_1000363E0@<X0>(int a1@<W8>)
{
  v7 = *v5;
  STACK[0x2A58] = *(v6 + 8 * v1);
  STACK[0x2F98] = v2;
  LODWORD(STACK[0x25B4]) = v7;
  STACK[0x2FD8] = v4;
  STACK[0x2B40] = v3;
  STACK[0x1B28] += (((a1 - 2754) | 0x1828u) ^ 0xFFFFFFFFFFFFE69BLL) + ((a1 - 171084073) & 0xA327FFB);
  STACK[0x2498] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x22EC]) = 1443455193;
  if (v2)
  {
    v8 = v7 == 1443455193;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v6 + 8 * ((58 * v9) ^ a1)))();
}

uint64_t sub_100036490()
{
  STACK[0x2220] = STACK[0x40D0] + v1;
  STACK[0x1F50] = 0;
  STACK[0x3060] = *(v2 + 8 * v0);
  return (*(v2 + 8 * ((((v0 + 541301135) & 0x1FBC6FED) - 1803) ^ v0)))();
}

uint64_t sub_100036538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x1B94];
  LODWORD(STACK[0x1B6C]) = STACK[0x1B94];
  *(STACK[0x2CE8] - 0x510808E226CB1490) = ((((a8 - 2609) ^ 0x262) + 3151) ^ 0xA9F68759) + v9;
  return (*(v8 + 8 * ((29 * (STACK[0x19C0] == 0x1138F6A92264F486)) ^ (a8 - 2609))))();
}

uint64_t sub_10003669C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2092)))(32);
  v3 = STACK[0x1708];
  STACK[0x1C70] = v2 + 0x51CE20ABD81C933BLL;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 + 3834) ^ (v0 + 3947))) ^ v0)))();
}

uint64_t sub_10003675C()
{
  v3 = (*(v2 + 8 * (v1 + 3783)))();
  v4 = STACK[0x1708];
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_1000367A0(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(a1 + 16) = 1983515363;
  v4 = (*(v2 + 8 * (v1 + 8302)))(26);
  v5 = STACK[0x1708];
  *(a1 + 24) = v4;
  return (*(v5 + 8 * (((v4 == 0) * ((((v1 - 1643286037) & 0x61F29D7F) - 3416) ^ 0xB0A)) ^ (v1 + 4405))))();
}

uint64_t sub_100036964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a8 - 3350;
  STACK[0x23C8] = 0x510808E226CB14FCLL;
  v12 = STACK[0x1FA0];
  *v12 = v8;
  v12[1] = 0x800000000011FFFBLL;
  v12[2] = 0;
  v12[3] = 0;
  *(v9 - 240) = 251922329 * ((((2 * (v9 - 240)) | 0x560BB4FA) - (v9 - 240) - 721803901) ^ 0x26A67277) + 769888918 + a8;
  (*(v10 + 8 * SLODWORD(STACK[0xF78])))(v9 - 240);
  v14 = (*(STACK[0x1708] + 8 * SLODWORD(STACK[0xF70])))((v11 - 1439656043 + *(v9 - 236)), v12, 1, 0, 0, 0);
  v15 = STACK[0x1708];
  STACK[0x25C8] = 0;
  return (*(v15 + 8 * (a8 - 3977)))(v14);
}

uint64_t sub_100036BA8()
{
  STACK[0x2B88] = *STACK[0x14F0];
  STACK[0x1FF0] = 0x510808E226CB14FCLL;
  LODWORD(STACK[0x23B4]) = 1443455193;
  STACK[0x1CC8] = 0;
  return (*(v1 + 8 * (v0 + (v0 ^ 0x967) - 1154)))();
}

uint64_t sub_100036C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x1A58];
  STACK[0x2F90] = STACK[0x1A58];
  return (*(v8 + 8 * (((v9 != 0x510808E226CB14FCLL) * LODWORD(STACK[0x5AC])) ^ (a8 + 3632))))();
}

uint64_t sub_100036CC0()
{
  v1 = STACK[0x3E8] & 0x12112E2E;
  v2 = STACK[0x1A98];
  STACK[0x44E8] = STACK[0x1A98];
  STACK[0x44F0] = v2 - 0x202F6D26B077089ELL;
  return (*(v0 + 8 * (((STACK[0x24F8] != 0) * (v1 - 8572)) ^ LODWORD(STACK[0x3EC]))))();
}

uint64_t sub_100036D34()
{
  v3 = STACK[0x28E8];
  *(v3 - 0x2B1A0449E8A6C919) = v0[15] - ((2 * v0[15]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C91ALL) = v0[14] - ((2 * v0[14]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C91BLL) = v0[13] - ((((v1 ^ 0xA9) - 115) ^ 0x5A) & (2 * v0[13])) + 27;
  *(v3 - 0x2B1A0449E8A6C91CLL) = v0[12] - ((2 * v0[12]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C91DLL) = v0[11] - ((2 * v0[11]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C91ELL) = v0[10] - ((2 * v0[10]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C91FLL) = v0[9] - ((2 * v0[9]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C920) = v0[8] - ((2 * v0[8]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C921) = v0[7] - ((2 * v0[7]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C922) = v0[6] - ((2 * v0[6]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C923) = v0[5] - ((2 * v0[5]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C924) = v0[4] - ((2 * v0[4]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C925) = v0[3] - ((2 * v0[3]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C926) = v0[2] - ((2 * v0[2]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C927) = v0[1] - ((2 * v0[1]) & 0x36) + 27;
  *(v3 - 0x2B1A0449E8A6C928) = *v0 - ((2 * *v0) & 0x36) + 27;
  return (*(v2 + 8 * ((803 * (STACK[0x24F8] == 0)) ^ v1)))();
}

uint64_t sub_100036FC8(__n128 a1, __n128 a2, __n128 a3)
{
  v6.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v6.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v7.n128_u64[0] = 0x3636363636363636;
  v7.n128_u64[1] = 0x3636363636363636;
  return (*(v5 + 8 * (((v3 + 0x2B1A0449E8A6C928 - STACK[0x19F0] < 0x20) * (((2 * v4) ^ 0x2E8E) - 3476)) ^ v4)))(a1, a2, a3, v6, v7);
}

uint64_t sub_100037040@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(v2 + v3 + v5) = *(v6 + v3 + v5) - (((a2 ^ v4) + 101) & (2 * *(v6 + v3 + v5))) + 27;
  v8 = *(v7 + 8 * ((63 * (v3 - 1 != a1)) ^ a2));
  LODWORD(STACK[0x428C]) = a2 ^ v4;
  return v8();
}

uint64_t sub_1000370E8()
{
  *(v3 - 240) = (v1 + 5595) ^ (1949688233 * (((((v3 - 240) ^ 0xECEE1960) & 0x98624A9A) + ((v3 - 240) ^ 0x1311E69F) - (((v3 - 240) ^ 0x1311E69F) & 0x98624A9A)) ^ 0x6C34FA8E));
  v5 = (*(v4 + 8 * (v1 ^ 0x2E42)))(v3 - 240);
  v6 = STACK[0x1708];
  v7 = *(v3 - 232);
  v8 = (v0 + v2 - 1265191472);
  *v8 = v7 ^ 0x31;
  *(v0 + ((((v1 - 360828531) & 0x1581D6FFu) + 4767) ^ 0xFFFFFFFFB49696DALL) + v2) = BYTE1(v7) ^ 0x8B;
  v8[2] = BYTE2(v7) ^ 0x32;
  v8[3] = BYTE3(v7) ^ 0xAF;
  v8[4] = BYTE4(v7) ^ 0xEB;
  v8[5] = BYTE5(v7) ^ 0x99;
  v8[6] = BYTE6(v7) ^ 0xDB;
  v8[7] = HIBYTE(v7) ^ 0x1A;
  return (*(v6 + 8 * ((4059 * (v2 == 1265191496)) ^ v1)))(v5);
}

uint64_t sub_10003730C()
{
  *(v4 - 240) = (v2 - 1618) ^ (1949688233 * ((-1737065592 - ((v4 - 240) | 0x98767B88) + ((v4 - 240) | 0x67898477)) ^ 0x80CED2FC));
  v6 = (*(v5 + 8 * (v2 + 1425)))(v4 - 240);
  v7 = STACK[0x1708];
  v8 = *(v4 - 232);
  *(v0 + ((2 * v2) ^ 0x516E ^ (v2 - 2061889553) & 0x7AE5EEBEu ^ 0xFFFFFFFF9E2A090ELL) + v1) = v8 ^ 0x31;
  *(v1 - 1641404789 + v0 + 3128) = BYTE1(v8) ^ 0x8B;
  return (*(v7 + 8 * (((8 * (v1 != v3 + 14)) | (16 * (v1 != v3 + 14))) ^ v2)))(v6);
}

uint64_t sub_100037410@<X0>(unint64_t a1@<X8>)
{
  *(v1 + 3129) = BYTE2(a1) ^ 0x32;
  *(v1 + 3130) = (a1 >> ((v3 + 14) ^ 0xD0u)) ^ 0xAF;
  return (*(v5 + 8 * (v3 ^ (120 * (v2 != v4 + 12)))))();
}

uint64_t sub_100037474@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1641404789 + v2;
  *(v6 + 3131) = BYTE4(a1) ^ 0xEB;
  *(v6 + 3132) = (((v1 + 47) & 0x7E) + 35) ^ BYTE5(a1);
  return (*(v5 + 8 * (v1 ^ (57 * (v3 == v4 + 10)))))();
}

uint64_t sub_1000374E0@<X0>(unint64_t a1@<X8>)
{
  *(v1 + 3133) = (a1 >> (((v2 - 109) | 2) ^ 0x3Bu)) ^ 0xDB;
  *(v1 + 3134) = (a1 >> (v2 ^ 0x4Eu)) ^ 0x1A;
  return (*(v5 + 8 * ((v2 - 3383) ^ (117 * (v3 + 8 != v4 + 16)))))();
}

uint64_t sub_100037600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x598];
  STACK[0x24C0] = *(v8 + 8 * SLODWORD(STACK[0x598]));
  return (*(v8 + 8 * ((((a8 - 1900) | 0x240) + 343) ^ v9)))();
}

uint64_t sub_10003763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x1D60];
  STACK[0x2EE0] = STACK[0x1D60];
  return (*(v8 + 8 * ((2 * ((LODWORD(STACK[0x7DC]) ^ (v9 == 0x510808E226CB14FCLL)) & 1)) & 0xDF | (32 * ((LODWORD(STACK[0x7DC]) ^ (v9 == 0x510808E226CB14FCLL)) & 1)) | (a8 - 2349))))();
}

uint64_t sub_100037798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x41E8]) = a8 - 2753;
  LODWORD(STACK[0x41EC]) = STACK[0x5D4];
  v10 = STACK[0x19E0];
  STACK[0x41F0] = STACK[0x19E0];
  STACK[0x40B8] = v8;
  STACK[0x40B0] = v10;
  STACK[0x40A8] = 120;
  STACK[0x40A0] = *(v9 + 8 * SLODWORD(STACK[0x594]));
  return (*(v9 + 8 * SLODWORD(STACK[0x590])))();
}

uint64_t sub_100037800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = 5 * (STACK[0x7E0] ^ 0x5D9);
  STACK[0x2DE8] = 0x61CEF89FDDA89DF2;
  STACK[0x2DC0] = 0;
  LODWORD(STACK[0x2044]) = 0;
  LOBYTE(STACK[0x2B37]) = 35;
  return (*(v8 + 8 * (((STACK[0x2F80] == 0) * (v9 ^ 0x759)) ^ (a8 - 1615))))();
}

uint64_t sub_100037868()
{
  v1 = STACK[0x7E0];
  v2 = (STACK[0x7E0] + 414413571) & 0xE74CAA5F;
  STACK[0x19B8] = *(v0 + 8 * STACK[0x7E0]);
  return (*(v0 + 8 * (v1 - 7420 + v2)))();
}

uint64_t sub_1000378AC()
{
  STACK[0x2FA8] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x1A3C]) = 1443455193;
  v1 = STACK[0x3198];
  *v1 = 0x51EF018EDA04201;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1629856039;
  *(v1 + 28) = 0x800000002;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 2046957825;
  *(v1 + 56) = 0;
  *(v1 + 64) = 427487202;
  *(v1 + 68) = 0x400000001;
  *(v1 + 76) = 2;
  *(v1 + 80) = 0;
  *(v1 + 88) = 716234865;
  *(v1 + 96) = 0;
  *(v1 + 104) = -1928714988;
  *(v1 + 108) = 0x400000001;
  *(v1 + 116) = 2;
  *(v1 + 120) = 0;
  *(v1 + 128) = 3;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0x15DB012A0;
  *(v1 + 152) = 0x200000004;
  v2 = *(v0 + 8 * SLODWORD(STACK[0x5C0]));
  STACK[0x22C0] = 0;
  STACK[0x2A88] = v2;
  return (*(v0 + 8 * SLODWORD(STACK[0x5BC])))();
}

uint64_t sub_1000379CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x5CC];
  STACK[0x24C0] = *(v8 + 8 * SLODWORD(STACK[0x5CC]));
  return (*(v8 + 8 * (a8 - 1324 + v9 + 46)))();
}

uint64_t sub_100037A44()
{
  v1 = STACK[0x3F0];
  v2 = STACK[0x3F0] ^ 0x2353;
  v3 = STACK[0x3F0] - 3961;
  v4 = STACK[0x1CF0];
  STACK[0x1E30] = STACK[0x1CF0];
  return (*(v0 + 8 * (((v4 == 0x510808E226CB14FCLL) * (v2 + v3 - 3435)) ^ v1)))();
}

uint64_t sub_100037B94()
{
  v2 = STACK[0x2B88];
  STACK[0x1FF0] = STACK[0x2B88];
  return (*(v1 + 8 * (((v2 == 0x510808E226CB14FCLL) * (((v0 + 1288) | 4) ^ (v0 + 1327))) ^ v0)))();
}

uint64_t sub_100037C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x27B8] = 0;
  LODWORD(STACK[0x1B54]) = 1443455193;
  STACK[0x1FA8] = 0;
  LODWORD(STACK[0x2704]) = 1443455193;
  v9 = STACK[0x2640];
  STACK[0x2AD8] = STACK[0x2640];
  v11 = v9 == 0x510808E226CB14FCLL || STACK[0x19F8] == 0;
  return (*(v8 + 8 * ((v11 * ((STACK[0x5D8] ^ 0xFFFFFA85) + a8 - 4322)) ^ LODWORD(STACK[0x5C8]))))();
}

uint64_t sub_100037D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x2220];
  *v9 = 0x51EF018EDA04201;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1629856039;
  *(v9 + 28) = 0x800000002;
  *(v9 + 36) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 2046957825;
  *(v9 + 56) = 0;
  *(v9 + 64) = 427487202;
  *(v9 + 68) = 0x400000001;
  *(v9 + 76) = 2;
  *(v9 + 80) = 0;
  *(v9 + 88) = 1;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0x170BF3591;
  *(v9 + 112) = 0x200000004;
  *(v9 + 120) = 0;
  *(v9 + 128) = -491714133;
  *(v9 + 136) = 0;
  *(v9 + 144) = -1928714988;
  *(v9 + 148) = 0x400000001;
  *(v9 + 156) = 2;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 176) = STACK[0x2F98];
  *(v9 + 184) = 0x3351BDEA7;
  *(v9 + 192) = LODWORD(STACK[0x25B4]) - 1443455193;
  *(v9 + 196) = 2;
  v10 = (a8 - 2656) ^ LODWORD(STACK[0x5D0]);
  STACK[0x2A88] = *(v8 + 8 * SLODWORD(STACK[0x5D0]));
  return (*(v8 + 8 * v10))();
}

uint64_t sub_100037E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x5B8] & 0x8340369D;
  v10 = STACK[0x1E88];
  STACK[0x1960] = STACK[0x1E88];
  return (*(v8 + 8 * (((v10 == 0x510808E226CB14FCLL) * ((v9 + 600) ^ LODWORD(STACK[0x7D8]))) ^ (a8 + 2770))))();
}

uint64_t sub_100037F0C()
{
  LODWORD(STACK[0x3738]) = 68545945;
  STACK[0x1B28] += (v0 - 1137748511) & 0x43D0BC7F ^ 0xFFFFFFFFFFFFE7AELL;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100037FA0()
{
  v3 = (v0 + 1954667579) & 0x8B7E2B7F;
  v4 = STACK[0x2600];
  v5 = *(v2 + 8 * v0);
  v6 = *(v2 + 8 * ((v3 + 3510) ^ v0));
  STACK[0x2108] = v5;
  LODWORD(STACK[0x4304]) = v3;
  STACK[0x4308] = v1;
  STACK[0x4310] = STACK[0xF60];
  STACK[0x4318] = 0;
  LODWORD(STACK[0x4320]) = v4;
  return v6();
}

uint64_t sub_100038008()
{
  v3 = v1 + 2030;
  v4 = STACK[0x2E64];
  v5 = *(v2 + 8 * v1);
  v6 = *(v2 + 8 * (((v1 + 2030) ^ 0x197F) + v1));
  STACK[0x2108] = v5;
  LODWORD(STACK[0x4304]) = v3;
  STACK[0x4308] = v0;
  STACK[0x4310] = STACK[0xDA0];
  STACK[0x4318] = 0;
  LODWORD(STACK[0x4320]) = v4;
  return v6();
}

uint64_t sub_100038064(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v9 = *v6;
  *(v5 - 0x2B1A0449E8A6C918) = vaddq_s8(vsubq_s8(v6[1], vandq_s8(vaddq_s8(v6[1], v6[1]), a5)), a4);
  *(v5 - 0x2B1A0449E8A6C928) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), a5)), a4);
  v10 = *(v8 + 8 * (v7 ^ 0x1E3A));
  LODWORD(STACK[0x428C]) = ((v7 ^ 0x1E3A) - 2822) | 0x81;
  return v10();
}

uint64_t sub_1000380D8()
{
  v1 = STACK[0x428C];
  LODWORD(STACK[0x4290]) = STACK[0x428C];
  LODWORD(STACK[0x4294]) = (v1 + 476) | 0x810;
  STACK[0x4188] = STACK[0x44F0];
  LOBYTE(STACK[0x4187]) = 0;
  STACK[0x4178] = 24;
  STACK[0x4170] = *(v0 + 8 * (v1 + 9603));
  return (*(v0 + 8 * (v1 + 9543)))();
}

uint64_t sub_1000381FC()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x20D8)))(112);
  v3 = STACK[0x1708];
  STACK[0x1CE0] = v2 + 0x61CEF89FDDA89DF2;
  return (*(v3 + 8 * (((v2 != 0) * (5 * (v0 ^ 0xDBF) - 6056)) ^ v0)))();
}

uint64_t sub_100038288(uint64_t a1)
{
  *a1 = 1159094972;
  *(a1 + 4) = 408423770;
  *(a1 + 72) = 975819913;
  *(a1 + 76) = 975819913;
  *(a1 + 80) = 17769;
  memset((a1 + 8), 27, 64);
  v4 = STACK[0x1CE0];
  *(v4 - 0x61CEF89FDDA89D9ELL) = -2085252650;
  *(v4 - 0x61CEF89FDDA89D8ALL) = -1333586555;
  *(v4 - 0x61CEF89FDDA89D9ALL) = 0x1B1B1B1B1B1B1B1BLL;
  *(v4 - 0x61CEF89FDDA89D92) = 0x1B1B1B1B1B1B1B1BLL;
  *(v4 - 0x61CEF89FDDA89D86) = 34;
  *(v1 - 0x51251B1ADC66E155) = v4;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100038484@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 0x61CEF89FDDA89DA2) = 106;
  v3 = STACK[0x2DE8];
  v4 = STACK[0x2F80];
  v5 = STACK[0x241C];
  v6 = *(v2 + 8 * (((a1 ^ 0x8A8) + 3303) ^ a1));
  STACK[0x2108] = *(v2 + 8 * a1);
  LODWORD(STACK[0x4304]) = a1 ^ 0x8A8;
  STACK[0x4308] = v4;
  STACK[0x4310] = STACK[0x12C8];
  STACK[0x4318] = v3;
  LODWORD(STACK[0x4320]) = v5;
  return v6();
}

uint64_t sub_100038588()
{
  v3 = STACK[0x1960];
  *(v1 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  *(v1 - 0x61CEF89FDDA89D8BLL) = *(v3 - 0x510808E226CB14E5);
  *(v1 - 0x61CEF89FDDA89D8CLL) = *(v3 - 0x510808E226CB14E6);
  *(v1 - 0x61CEF89FDDA89D8DLL) = *(v3 - 0x510808E226CB14E7);
  *(v1 - 0x61CEF89FDDA89D8ELL) = *(v3 - 0x510808E226CB14E8);
  *(v1 - 0x61CEF89FDDA89D8FLL) = *(v3 - 0x510808E226CB14E9);
  *(v1 - 0x61CEF89FDDA89D90) = *(v3 - 0x510808E226CB14EALL);
  *(v1 - 0x61CEF89FDDA89D91) = *(v3 - 0x510808E226CB14EBLL);
  *(v1 - 0x61CEF89FDDA89D92) = *(v3 - 0x510808E226CB14ECLL);
  *(v1 - 0x61CEF89FDDA89D93) = *(v3 - 0x510808E226CB14EDLL);
  *(v1 - 0x61CEF89FDDA89D94) = *(v3 - 0x510808E226CB14EELL);
  *(v1 - 0x61CEF89FDDA89D95) = *(v3 - 0x510808E226CB14EFLL);
  *(v1 - 0x61CEF89FDDA89D96) = *(v3 - 0x510808E226CB14F0);
  *(v1 - 0x61CEF89FDDA89D97) = *(v3 - 0x510808E226CB14F1);
  *(v1 - 0x61CEF89FDDA89D98) = *(v3 - 0x510808E226CB14F2);
  *(v1 - 0x61CEF89FDDA89D99) = *(v3 - 0x510808E226CB14F3);
  *(v1 - 0x61CEF89FDDA89D9ALL) = *(v3 - 0x510808E226CB14F4);
  return (*(v2 + 8 * (((STACK[0x2980] == 0x61CEF89FDDA89DF2) * ((627 * (((v0 + 3319) | 0x10) ^ 0x241A)) ^ 0x1879)) ^ v0)))();
}

uint64_t sub_10003895C@<X0>(int a1@<W8>)
{
  *(v2 - 0x61CEF89FDDA89DAALL) = 975819945;
  *(v2 - 0x61CEF89FDDA89DCBLL) = *(v1 - 0x510808E226CB14C5);
  *(v2 - 0x61CEF89FDDA89DCCLL) = *(v1 - 0x510808E226CB14C6);
  *(v2 - 0x61CEF89FDDA89DCDLL) = *(v1 - 0x510808E226CB14C7);
  *(v2 - 0x61CEF89FDDA89DCELL) = *(v1 - 0x510808E226CB14C8);
  *(v2 - 0x61CEF89FDDA89DCFLL) = *(v1 - 0x510808E226CB14C9);
  *(v2 - 0x61CEF89FDDA89DD0) = *(v1 - 0x510808E226CB14CALL);
  *(v2 - 0x61CEF89FDDA89DD1) = *(v1 - 0x510808E226CB14CBLL);
  *(v2 - 0x61CEF89FDDA89DD2) = *(v1 - 0x510808E226CB14CCLL);
  *(v2 - 0x61CEF89FDDA89DD3) = *(v1 - 0x510808E226CB14CDLL);
  *(v2 - 0x61CEF89FDDA89DD4) = *(v1 - 0x510808E226CB14CELL);
  *(v2 - 0x61CEF89FDDA89DD5) = *(v1 - 0x510808E226CB14CFLL);
  *(v2 - 0x61CEF89FDDA89DD6) = *(v1 - 0x510808E226CB14D0);
  *(v2 - 0x61CEF89FDDA89DD7) = *(v1 - 0x510808E226CB14D1);
  *(v2 - 0x61CEF89FDDA89DD8) = *(v1 - 0x510808E226CB14D2);
  *(v2 - 0x61CEF89FDDA89DD9) = *(v1 - 0x510808E226CB14D3);
  *(v2 - 0x61CEF89FDDA89DDALL) = *(v1 - 0x510808E226CB14D4);
  *(v2 - 0x61CEF89FDDA89DDBLL) = *(v1 - 0x510808E226CB14D5);
  *(v2 - 0x61CEF89FDDA89DDCLL) = *(v1 - 0x510808E226CB14D6);
  *(v2 - 0x61CEF89FDDA89DDDLL) = *(v1 - 0x510808E226CB14D7);
  *(v2 - 0x61CEF89FDDA89DDELL) = *(v1 - 0x510808E226CB14D8);
  *(v2 - 0x61CEF89FDDA89DDFLL) = *(v1 - 0x510808E226CB14D9);
  *(v2 - 0x61CEF89FDDA89DE0) = *(v1 - 0x510808E226CB14DALL);
  *(v2 - 0x61CEF89FDDA89DE1) = *(v1 - 0x510808E226CB14DBLL);
  *(v2 - 0x61CEF89FDDA89DE2) = *(v1 - 0x510808E226CB14DCLL);
  *(v2 - 0x61CEF89FDDA89DE3) = *(v1 - 0x510808E226CB14DDLL);
  *(v2 - 0x61CEF89FDDA89DE4) = *(v1 - 0x510808E226CB14DELL);
  *(v2 - 0x61CEF89FDDA89DE5) = *(v1 - 0x510808E226CB14DFLL);
  *(v2 - 0x61CEF89FDDA89DE6) = *(v1 - 0x510808E226CB14E0);
  *(v2 - 0x61CEF89FDDA89DE7) = *(v1 - 0x510808E226CB14E1);
  *(v2 - 0x61CEF89FDDA89DE8) = *(v1 - 0x510808E226CB14E2);
  *(v2 - 0x61CEF89FDDA89DE9) = *(v1 - 0x510808E226CB14E3);
  *(v2 - 0x61CEF89FDDA89DEALL) = *(v1 - 0x510808E226CB14E4);
  return (*(v3 + 8 * a1))();
}

uint64_t sub_100039084()
{
  v3 = STACK[0x1E30];
  *(v1 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  *(v1 - 0x61CEF89FDDA89D8BLL) = *(v3 - 0x510808E226CB14E5);
  *(v1 - 0x61CEF89FDDA89D8CLL) = *(v3 - 0x510808E226CB14E6);
  *(v1 - 0x61CEF89FDDA89D8DLL) = *(v3 - 0x510808E226CB14E7);
  *(v1 - 0x61CEF89FDDA89D8ELL) = *(v3 - 0x510808E226CB14E8);
  *(v1 - 0x61CEF89FDDA89D8FLL) = *(v3 - 0x510808E226CB14E9);
  *(v1 - 0x61CEF89FDDA89D90) = *(v3 - 0x510808E226CB14EALL);
  *(v1 - 0x61CEF89FDDA89D91) = *(v3 - 0x510808E226CB14EBLL);
  *(v1 - 0x61CEF89FDDA89D92) = *(v3 - 0x510808E226CB14ECLL);
  *(v1 - 0x61CEF89FDDA89D93) = *(v3 - 0x510808E226CB14EDLL);
  *(v1 - 0x61CEF89FDDA89D94) = *(v3 - 0x510808E226CB14EELL);
  *(v1 - 0x61CEF89FDDA89D95) = *(v3 - 0x510808E226CB14EFLL);
  *(v1 - 0x61CEF89FDDA89D96) = *(v3 - 0x510808E226CB14F0);
  *(v1 - 0x61CEF89FDDA89D97) = *(v3 - 0x510808E226CB14F1);
  *(v1 - 0x61CEF89FDDA89D98) = *(v3 - 0x510808E226CB14F2);
  *(v1 - 0x61CEF89FDDA89D99) = *(v3 - 0x510808E226CB14F3);
  *(v1 - 0x61CEF89FDDA89D9ALL) = *(v3 - 0x510808E226CB14F4);
  return (*(v2 + 8 * ((4051 * (*(v3 - 0x510808E226CB14F8) == (((v0 + 8) ^ 0x45) - 70))) ^ v0)))();
}

uint64_t sub_1000393D4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 0x61CEF89FDDA89DAALL) = 975819945;
  *(v1 - 0x61CEF89FDDA89DCBLL) = *(a1 - 0x510808E226CB14C5);
  *(v1 - 0x61CEF89FDDA89DCCLL) = *(a1 - 0x510808E226CB14C6);
  *(v1 - 0x61CEF89FDDA89DCDLL) = *(a1 - 0x510808E226CB14C7);
  *(v1 - 0x61CEF89FDDA89DCELL) = *(a1 - 0x510808E226CB14C8);
  *(v1 - 0x61CEF89FDDA89DCFLL) = *(a1 - 0x510808E226CB14C9);
  *(v1 - 0x61CEF89FDDA89DD0) = *(a1 - 0x510808E226CB14CALL);
  *(v1 - 0x61CEF89FDDA89DD1) = *(a1 - 0x510808E226CB14CBLL);
  *(v1 - 0x61CEF89FDDA89DD2) = *(a1 - 0x510808E226CB14CCLL);
  *(v1 - 0x61CEF89FDDA89DD3) = *(a1 - 0x510808E226CB14CDLL);
  *(v1 - 0x61CEF89FDDA89DD4) = *(a1 - 0x510808E226CB14CELL);
  *(v1 - 0x61CEF89FDDA89DD5) = *(a1 - 0x510808E226CB14CFLL);
  *(v1 - 0x61CEF89FDDA89DD6) = *(a1 - 0x510808E226CB14D0);
  *(v1 - 0x61CEF89FDDA89DD7) = *(a1 - 0x510808E226CB14D1);
  *(v1 - 0x61CEF89FDDA89DD8) = *(a1 - 0x510808E226CB14D2);
  *(v1 - 0x61CEF89FDDA89DD9) = *(a1 - 0x510808E226CB14D3);
  *(v1 - 0x61CEF89FDDA89DDALL) = *(a1 - 0x510808E226CB14D4);
  *(v1 - 0x61CEF89FDDA89DDBLL) = *(a1 - 0x510808E226CB14D5);
  *(v1 - 0x61CEF89FDDA89DDCLL) = *(a1 - 0x510808E226CB14D6);
  *(v1 - 0x61CEF89FDDA89DDDLL) = *(a1 - 0x510808E226CB14D7);
  *(v1 - 0x61CEF89FDDA89DDELL) = *(a1 - 0x510808E226CB14D8);
  *(v1 - 0x61CEF89FDDA89DDFLL) = *(a1 - 0x510808E226CB14D9);
  *(v1 - 0x61CEF89FDDA89DE0) = *(a1 - 0x510808E226CB14DALL);
  *(v1 - 0x61CEF89FDDA89DE1) = *(a1 - 0x510808E226CB14DBLL);
  *(v1 - 0x61CEF89FDDA89DE2) = *(a1 - 0x510808E226CB14DCLL);
  *(v1 - 0x61CEF89FDDA89DE3) = *(a1 - 0x510808E226CB14DDLL);
  *(v1 - 0x61CEF89FDDA89DE4) = *(a1 - 0x510808E226CB14DELL);
  *(v1 - 0x61CEF89FDDA89DE5) = *(a1 - 0x510808E226CB14DFLL);
  *(v1 - 0x61CEF89FDDA89DE6) = *(a1 - 0x510808E226CB14E0);
  *(v1 - 0x61CEF89FDDA89DE7) = *(a1 - 0x510808E226CB14E1);
  *(v1 - 0x61CEF89FDDA89DE8) = *(a1 - 0x510808E226CB14E2);
  *(v1 - 0x61CEF89FDDA89DE9) = *(a1 - 0x510808E226CB14E3);
  *(v1 - 0x61CEF89FDDA89DEALL) = *(a1 - 0x510808E226CB14E4);
  return (*(v3 + 8 * (v2 ^ 0x388D)))();
}

uint64_t sub_100039A64@<X0>(int a1@<W8>)
{
  v3 = STACK[0x2EE0];
  *(v1 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  *(v1 - 0x61CEF89FDDA89D8BLL) = *(v3 - 0x510808E226CB14E5);
  *(v1 - 0x61CEF89FDDA89D8CLL) = *(v3 - 0x510808E226CB14E6);
  *(v1 - 0x61CEF89FDDA89D8DLL) = *(v3 - 0x510808E226CB14E7);
  *(v1 - 0x61CEF89FDDA89D8ELL) = *(v3 - 0x510808E226CB14E8);
  *(v1 - 0x61CEF89FDDA89D8FLL) = *(v3 - 0x510808E226CB14E9);
  *(v1 - 0x61CEF89FDDA89D90) = *(v3 - 0x510808E226CB14EALL);
  *(v1 - 0x61CEF89FDDA89D91) = *(v3 - 0x510808E226CB14EBLL);
  *(v1 - 0x61CEF89FDDA89D92) = *(v3 - 0x510808E226CB14ECLL);
  *(v1 - 0x61CEF89FDDA89D93) = *(v3 - 0x510808E226CB14EDLL);
  *(v1 - 0x61CEF89FDDA89D94) = *(v3 - 0x510808E226CB14EELL);
  *(v1 - 0x61CEF89FDDA89D95) = *(v3 - 0x510808E226CB14EFLL);
  *(v1 - 0x61CEF89FDDA89D96) = *(v3 - 0x510808E226CB14F0);
  *(v1 - 0x61CEF89FDDA89D97) = *(v3 - 0x510808E226CB14F1);
  *(v1 - 0x61CEF89FDDA89D98) = *(v3 - 0x510808E226CB14F2);
  *(v1 - 0x61CEF89FDDA89D99) = *(v3 - 0x510808E226CB14F3);
  *(v1 - 0x61CEF89FDDA89D9ALL) = *(v3 - 0x510808E226CB14F4);
  return (*(v2 + 8 * ((11 * (STACK[0x28A8] != 0x61CEF89FDDA89DF2)) ^ a1)))();
}

uint64_t sub_100039E24@<X0>(int a1@<W8>)
{
  *(v2 - 0x61CEF89FDDA89DAALL) = 975819945;
  *(v2 - 0x61CEF89FDDA89DCBLL) = *(v1 - 0x510808E226CB14C5);
  *(v2 - 0x61CEF89FDDA89DCCLL) = *(v1 - 0x510808E226CB14C6);
  *(v2 - 0x61CEF89FDDA89DCDLL) = *(v1 - 0x510808E226CB14C7);
  *(v2 - 0x61CEF89FDDA89DCELL) = *(v1 - 0x510808E226CB14C8);
  *(v2 - 0x61CEF89FDDA89DCFLL) = *(v1 - 0x510808E226CB14C9);
  *(v2 - 0x61CEF89FDDA89DD0) = *(v1 - 0x510808E226CB14CALL);
  *(v2 - 0x61CEF89FDDA89DD1) = *(v1 - 0x510808E226CB14CBLL);
  *(v2 - 0x61CEF89FDDA89DD2) = *(v1 - 0x510808E226CB14CCLL);
  *(v2 - 0x61CEF89FDDA89DD3) = *(v1 - 0x510808E226CB14CDLL);
  *(v2 - 0x61CEF89FDDA89DD4) = *(v1 - 0x510808E226CB14CELL);
  *(v2 - 0x61CEF89FDDA89DD5) = *(v1 - 0x510808E226CB14CFLL);
  *(v2 - 0x61CEF89FDDA89DD6) = *(v1 - 0x510808E226CB14D0);
  *(v2 - 0x61CEF89FDDA89DD7) = *(v1 - 0x510808E226CB14D1);
  *(v2 - 0x61CEF89FDDA89DD8) = *(v1 - 0x510808E226CB14D2);
  *(v2 - 0x61CEF89FDDA89DD9) = *(v1 - 0x510808E226CB14D3);
  *(v2 - 0x61CEF89FDDA89DDALL) = *(v1 - 0x510808E226CB14D4);
  *(v2 - 0x61CEF89FDDA89DDBLL) = *(v1 - 0x510808E226CB14D5);
  *(v2 - 0x61CEF89FDDA89DDCLL) = *(v1 - 0x510808E226CB14D6);
  *(v2 - 0x61CEF89FDDA89DDDLL) = *(v1 - 0x510808E226CB14D7);
  *(v2 - 0x61CEF89FDDA89DDELL) = *(v1 - 0x510808E226CB14D8);
  *(v2 - 0x61CEF89FDDA89DDFLL) = *(v1 - 0x510808E226CB14D9);
  *(v2 - 0x61CEF89FDDA89DE0) = *(v1 - 0x510808E226CB14DALL);
  *(v2 - 0x61CEF89FDDA89DE1) = *(v1 - 0x510808E226CB14DBLL);
  *(v2 - 0x61CEF89FDDA89DE2) = *(v1 - 0x510808E226CB14DCLL);
  *(v2 - 0x61CEF89FDDA89DE3) = *(v1 - 0x510808E226CB14DDLL);
  *(v2 - 0x61CEF89FDDA89DE4) = *(v1 - 0x510808E226CB14DELL);
  *(v2 - 0x61CEF89FDDA89DE5) = *(v1 - 0x510808E226CB14DFLL);
  *(v2 - 0x61CEF89FDDA89DE6) = *(v1 - 0x510808E226CB14E0);
  *(v2 - 0x61CEF89FDDA89DE7) = *(v1 - 0x510808E226CB14E1);
  *(v2 - 0x61CEF89FDDA89DE8) = *(v1 - 0x510808E226CB14E2);
  *(v2 - 0x61CEF89FDDA89DE9) = *(v1 - 0x510808E226CB14E3);
  *(v2 - 0x61CEF89FDDA89DEALL) = *(v1 - 0x510808E226CB14E4);
  return (*(v3 + 8 * a1))();
}

uint64_t sub_10003A360()
{
  v3 = STACK[0x3100];
  *(v3 - 0x202F6D26B07708EELL) = 0;
  *(v3 - 0x202F6D26B07708E6) = *(v0 - 0x510808E226CB1490);
  *(v3 - 0x202F6D26B07708DELL) = 0;
  *(v3 - 0x202F6D26B07708D6) = -92061422;
  *(v3 - 0x202F6D26B07708D2) = 0x400000001;
  *(v3 - 0x202F6D26B07708CALL) = 1;
  STACK[0x2A88] = *(v2 + 8 * v1);
  return (*(v2 + 8 * ((v1 + 2612) ^ v1)))();
}

uint64_t sub_10003A554()
{
  v3 = STACK[0x1FF0];
  *(v0 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  *(v0 - 0x61CEF89FDDA89D8BLL) = *(v3 - 0x510808E226CB14E5);
  *(v0 - 0x61CEF89FDDA89D8CLL) = *(v3 - 0x510808E226CB14E6);
  *(v0 - 0x61CEF89FDDA89D8DLL) = *(v3 - 0x510808E226CB14E7);
  *(v0 - 0x61CEF89FDDA89D8ELL) = *(v3 - 0x510808E226CB14E8);
  *(v0 - 0x61CEF89FDDA89D8FLL) = *(v3 - 0x510808E226CB14E9);
  *(v0 - 0x61CEF89FDDA89D90) = *(v3 - 0x510808E226CB14EALL);
  *(v0 - 0x61CEF89FDDA89D91) = *(v3 - 0x510808E226CB14EBLL);
  *(v0 - 0x61CEF89FDDA89D92) = *(v3 - 0x510808E226CB14ECLL);
  *(v0 - 0x61CEF89FDDA89D93) = *(v3 - 0x510808E226CB14EDLL);
  *(v0 - 0x61CEF89FDDA89D94) = *(v3 - 0x510808E226CB14EELL);
  *(v0 - 0x61CEF89FDDA89D95) = *(v3 - 0x510808E226CB14EFLL);
  *(v0 - 0x61CEF89FDDA89D96) = *(v3 - 0x510808E226CB14F0);
  *(v0 - 0x61CEF89FDDA89D97) = *(v3 - 0x510808E226CB14F1);
  *(v0 - 0x61CEF89FDDA89D98) = *(v3 - 0x510808E226CB14F2);
  *(v0 - 0x61CEF89FDDA89D99) = *(v3 - 0x510808E226CB14F3);
  *(v0 - 0x61CEF89FDDA89D9ALL) = *(v3 - 0x510808E226CB14F4);
  v4 = *(v3 - 0x510808E226CB14F8) == (v1 - 41);
  return (*(v2 + 8 * (((4 * (((v1 - 1) ^ v4) & 1)) & 0xF7 | (8 * (((v1 - 1) ^ v4) & 1))) ^ v1)))();
}

uint64_t sub_10003AAAC@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 0x61CEF89FDDA89DAALL) = 975819945;
  *(v1 - 0x61CEF89FDDA89DCBLL) = *(a1 - 0x510808E226CB14C5);
  *(v1 - 0x61CEF89FDDA89DCCLL) = *(a1 - 0x510808E226CB14C6);
  *(v1 - 0x61CEF89FDDA89DCDLL) = *(a1 - 0x510808E226CB14C7);
  *(v1 - 0x61CEF89FDDA89DCELL) = *(a1 - 0x510808E226CB14C8);
  *(v1 - 0x61CEF89FDDA89DCFLL) = *(a1 - 0x510808E226CB14C9);
  *(v1 - 0x61CEF89FDDA89DD0) = *(a1 - 0x510808E226CB14CALL);
  *(v1 - 0x61CEF89FDDA89DD1) = *(a1 - 0x510808E226CB14CBLL);
  *(v1 - 0x61CEF89FDDA89DD2) = *(a1 - 0x510808E226CB14CCLL);
  *(v1 - 0x61CEF89FDDA89DD3) = *(a1 - 0x510808E226CB14CDLL);
  *(v1 - 0x61CEF89FDDA89DD4) = *(a1 - 0x510808E226CB14CELL);
  *(v1 - 0x61CEF89FDDA89DD5) = *(a1 - 0x510808E226CB14CFLL);
  *(v1 - 0x61CEF89FDDA89DD6) = *(a1 - 0x510808E226CB14D0);
  *(v1 - 0x61CEF89FDDA89DD7) = *(a1 - 0x510808E226CB14D1);
  *(v1 - 0x61CEF89FDDA89DD8) = *(a1 - 0x510808E226CB14D2);
  *(v1 - 0x61CEF89FDDA89DD9) = *(a1 - 0x510808E226CB14D3);
  *(v1 - 0x61CEF89FDDA89DDALL) = *(a1 - 0x510808E226CB14D4);
  *(v1 - 0x61CEF89FDDA89DDBLL) = *(a1 - 0x510808E226CB14D5);
  *(v1 - 0x61CEF89FDDA89DDCLL) = *(a1 - 0x510808E226CB14D6);
  *(v1 - 0x61CEF89FDDA89DDDLL) = *(a1 - 0x510808E226CB14D7);
  *(v1 - 0x61CEF89FDDA89DDELL) = *(a1 - 0x510808E226CB14D8);
  *(v1 - 0x61CEF89FDDA89DDFLL) = *(a1 - 0x510808E226CB14D9);
  *(v1 - 0x61CEF89FDDA89DE0) = *(a1 - 0x510808E226CB14DALL);
  *(v1 - 0x61CEF89FDDA89DE1) = *(a1 - 0x510808E226CB14DBLL);
  *(v1 - 0x61CEF89FDDA89DE2) = *(a1 - 0x510808E226CB14DCLL);
  *(v1 - 0x61CEF89FDDA89DE3) = *(a1 - 0x510808E226CB14DDLL);
  *(v1 - 0x61CEF89FDDA89DE4) = *(a1 - 0x510808E226CB14DELL);
  *(v1 - 0x61CEF89FDDA89DE5) = *(a1 - 0x510808E226CB14DFLL);
  *(v1 - 0x61CEF89FDDA89DE6) = *(a1 - 0x510808E226CB14E0);
  *(v1 - 0x61CEF89FDDA89DE7) = *(a1 - 0x510808E226CB14E1);
  *(v1 - 0x61CEF89FDDA89DE8) = *(a1 - 0x510808E226CB14E2);
  *(v1 - 0x61CEF89FDDA89DE9) = *(a1 - 0x510808E226CB14E3);
  *(v1 - 0x61CEF89FDDA89DEALL) = *(a1 - 0x510808E226CB14E4);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_10003B048@<X0>(int a1@<W8>)
{
  v3 = (a1 - 2046760936) & 0x79FF1F7F;
  *(v1 - 0x61CEF89FDDA89D9ELL) = *(STACK[0x1FF0] - 0x510808E226CB14FCLL);
  v4 = STACK[0x23C0];
  v5 = STACK[0x2F10];
  v6 = STACK[0x26EC];
  v7 = *(v2 + 8 * ((v3 + 3287) ^ a1));
  STACK[0x2108] = *(v2 + 8 * a1);
  LODWORD(STACK[0x4304]) = v3;
  STACK[0x4308] = v5;
  STACK[0x4310] = STACK[0x12B8];
  STACK[0x4318] = v4;
  LODWORD(STACK[0x4320]) = v6;
  return v7();
}

uint64_t sub_10003B0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x4188] = STACK[0x44B8];
  LOBYTE(STACK[0x4187]) = 0;
  STACK[0x4178] = 32;
  STACK[0x4170] = *(v8 + 8 * SLODWORD(STACK[0x12C0]));
  return (*(v8 + 8 * (a8 ^ 0x3166)))();
}

uint64_t sub_10003B110()
{
  v1 = STACK[0x4188];
  v2 = *(v0 + 487);
  v3 = STACK[0x4178];
  v4 = -STACK[0x4188] & 7;
  if (v4 > STACK[0x4178])
  {
    LODWORD(v4) = STACK[0x4178];
  }

  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          goto LABEL_20;
        }

        *v1++ = v2;
      }

      *v1++ = v2;
    }

    else if (v4 == 4)
    {
LABEL_16:
      *v1++ = v2;
      goto LABEL_17;
    }

    *v1++ = v2;
    goto LABEL_16;
  }

  switch(v4)
  {
    case 1:
LABEL_19:
      *v1++ = v2;
      break;
    case 2:
LABEL_18:
      *v1++ = v2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *v1++ = v2;
      goto LABEL_18;
  }

LABEL_20:
  v5 = v3 - v4;
  if (v5 >= 8)
  {
    v6 = 0x101010101010101 * v2;
    v7 = ((v5 >> 3) + 7) >> 3;
    v8 = (v5 >> 3) & 7;
    if (v8 > 3)
    {
      if (((v5 >> 3) & 7) <= 5)
      {
        if (v8 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v8 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v5 >> 3) & 7) > 1)
    {
      if (v8 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v8)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *v1 = v6;
      v1 += 8;
      if (!--v7)
      {
        break;
      }

LABEL_32:
      *v1 = v6;
      v1 += 8;
LABEL_33:
      *v1 = v6;
      v1 += 8;
LABEL_34:
      *v1 = v6;
      v1 += 8;
LABEL_35:
      *v1 = v6;
      v1 += 8;
LABEL_36:
      *v1 = v6;
      v1 += 8;
LABEL_37:
      *v1 = v6;
      v1 += 8;
LABEL_38:
      *v1 = v6;
      v1 += 8;
    }
  }

  v9 = v5 & 7;
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 != 6)
      {
        *v1++ = v2;
      }

      *v1++ = v2;
    }

    else if (v9 == 4)
    {
      goto LABEL_53;
    }

    *v1++ = v2;
LABEL_53:
    *v1++ = v2;
LABEL_54:
    *v1++ = v2;
LABEL_55:
    *v1++ = v2;
    goto LABEL_56;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (!v9)
  {
    return (STACK[0x4170])();
  }

LABEL_56:
  *v1 = v2;
  return (STACK[0x4170])();
}

uint64_t sub_10003B29C()
{
  STACK[0x2DD8] = 0;
  if (STACK[0x41A8])
  {
    v1 = STACK[0x44D8] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = !v1 && STACK[0x41B0] != 0;
  return (*(v0 + 8 * ((218 * v3) ^ LODWORD(STACK[0x41A4]))))();
}

uint64_t sub_10003B2DC()
{
  v1 = STACK[0x41A0];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x41A0]) ^ 0x375F)))(32);
  v3 = STACK[0x1708];
  STACK[0x2668] = v2;
  return (*(v3 + 8 * (((v2 != 0) * ((((v1 + 1565368225) & 0xA2B259FE) - 2157) ^ 0x1027)) ^ v1)))();
}

uint64_t sub_10003B35C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3990)))(32);
  v3 = STACK[0x1708];
  STACK[0x2DD8] = v2;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 + 178015854) & 0xF563BFFD ^ ((v0 ^ 0x1086) + 7595))) ^ v0)))();
}

uint64_t sub_10003B404()
{
  STACK[0x2960] = 0;
  if (STACK[0x42D8])
  {
    v1 = STACK[0x42E0] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || STACK[0x42E8] == 0;
  return (*(v0 + 8 * ((v3 * (LODWORD(STACK[0x42D4]) - 3220)) | LODWORD(STACK[0x42CC]))))();
}

uint64_t sub_10003B44C()
{
  v1 = STACK[0x42D0];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x42D0]) + 7160)))(64);
  v3 = STACK[0x1708];
  STACK[0x2F58] = v2;
  return (*(v3 + 8 * ((((((57 * (v1 ^ 0xDE7)) ^ (v2 == 0)) & 1) == 0) * (v1 ^ 0xD8C)) ^ v1)))();
}

uint64_t sub_10003B4C8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2408)))(64);
  v3 = STACK[0x1708];
  STACK[0x2960] = v2;
  return (*(v3 + 8 * (((((4226 * (v0 ^ 0xD8B) - 8388) | 0x38) - 111) * (v2 == 0)) ^ v0 ^ 0x25F9)))();
}

uint64_t sub_10003B570()
{
  STACK[0x2EE8] = 0;
  if (STACK[0x42A8])
  {
    v1 = STACK[0x42B0] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || STACK[0x42B8] == 0;
  return (*(v0 + 8 * ((v3 * (LODWORD(STACK[0x42A4]) - 2062)) ^ LODWORD(STACK[0x429C]))))();
}

uint64_t sub_10003B5D8()
{
  v2 = (*(v1 + 8 * (v0 + 7547)))(32);
  v3 = STACK[0x1708];
  STACK[0x1FE8] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (((v0 ^ 0x1478) + 2415) ^ (v0 + 5557))) ^ v0)))();
}

uint64_t sub_10003B63C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x83A)))(32);
  v3 = STACK[0x1708];
  STACK[0x2EE8] = v2;
  return (*(v3 + 8 * (((2 * (((v2 == 0) ^ (((v0 - 82) | 0x10) + 70)) & 1)) & 0xFB | (4 * (((v2 == 0) ^ (((v0 - 82) | 0x10) + 70)) & 1))) ^ v0)))();
}

uint64_t sub_10003B6E0()
{
  STACK[0x2888] = 0;
  if (STACK[0x41D0])
  {
    v1 = STACK[0x41D8] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || STACK[0x41E0] == 0;
  return (*(v0 + 8 * ((v3 * (LODWORD(STACK[0x41CC]) - 6244)) ^ LODWORD(STACK[0x41C4]))))();
}

uint64_t sub_10003B7A4()
{
  v2 = (*(v1 + 8 * ((v0 + 1848) ^ 0xDB7)))(64);
  v3 = STACK[0x1708];
  STACK[0x2888] = v2;
  return (*(v3 + 8 * ((87 * (((v2 == 0) ^ (v0 - 65)) & 1)) ^ (v0 + 1848))))();
}

uint64_t sub_10003B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x15E8]) | 0x821;
  v7 = STACK[0x2FF8];
  STACK[0x3260] = *(v5 + 8 * SLODWORD(STACK[0x15E4]));
  return (*(v5 + 8 * (LODWORD(STACK[0x15E0]) ^ v6)))(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_10003BAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = (v2 - v7 - 1821838174);
  v11.i64[0] = a2 + v10;
  v11.i64[1] = a2 + (v2 - v7 - 1821838175);
  v12.i64[0] = a2 + (v2 - v7 - 1821838188);
  v12.i64[1] = a2 + (v2 - v7 - 1821838189);
  *&STACK[0x18F0] = v12;
  v12.i64[0] = a2 + (v2 - v7 - 1821838186);
  v12.i64[1] = a2 + (v2 - v7 - 1821838187);
  *&STACK[0x18B0] = v12;
  v12.i64[0] = a2 + (v2 - v7 - 1821838184);
  v12.i64[1] = a2 + (v2 - v7 - 1821838185);
  *&STACK[0x18A0] = v12;
  v12.i64[0] = a2 + (v2 - v7 - 1821838182);
  v12.i64[1] = a2 + (v2 - v7 - 1821838183);
  *&STACK[0x1900] = v12;
  v13.i64[0] = a2 + (v2 - v7 - 1821838180);
  v13.i64[1] = a2 + (v2 - v7 - 1821838181);
  v14.i64[0] = a2 + (v2 - v7 - 1821838178);
  v14.i64[1] = a2 + (v2 - v7 - 1821838179);
  *&STACK[0x1860] = v14;
  v12.i64[0] = a2 + (v2 - v7 - 1821838176);
  v12.i64[1] = a2 + (v2 - v7 - 1821838177);
  *&STACK[0x1880] = v12;
  v15 = *&STACK[0x1940];
  v16 = vandq_s8(v12, *&STACK[0x1940]);
  v17 = vandq_s8(v14, *&STACK[0x1940]);
  v18 = vandq_s8(v13, *&STACK[0x1940]);
  v19 = vandq_s8(v11, *&STACK[0x1940]);
  *&STACK[0x1890] = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v20 = *&STACK[0x1870];
  v21 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL), *&STACK[0x1870]);
  v22 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL), *&STACK[0x1870]);
  v23 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL), *&STACK[0x1870]);
  v24 = veorq_s8(v23, *&STACK[0x16D0]);
  v25 = veorq_s8(v22, *&STACK[0x16D0]);
  v26 = veorq_s8(v21, *&STACK[0x16D0]);
  v27 = veorq_s8(v21, *&STACK[0x16E0]);
  v28 = veorq_s8(v22, *&STACK[0x16E0]);
  v29 = veorq_s8(v23, *&STACK[0x16E0]);
  v30 = *&STACK[0x1690];
  v31 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL), v27), *&STACK[0x1690]);
  v32 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL), v29), *&STACK[0x1690]);
  v33 = vsraq_n_u64(vshlq_n_s64(v27, 3uLL), v27, 0x3DuLL);
  v34 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL), v28), *&STACK[0x1690]);
  v35 = vsraq_n_u64(vshlq_n_s64(v28, 3uLL), v28, 0x3DuLL);
  v36 = veorq_s8(v32, vsraq_n_u64(vshlq_n_s64(v29, 3uLL), v29, 0x3DuLL));
  v37 = veorq_s8(v34, v35);
  v38 = veorq_s8(v31, v33);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), v38);
  v42 = *&STACK[0x16B0];
  v43 = veorq_s8(vaddq_s64(v39, v36), *&STACK[0x16B0]);
  v44 = veorq_s8(vaddq_s64(v40, v37), *&STACK[0x16B0]);
  v45 = vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL);
  v48 = veorq_s8(v41, *&STACK[0x16B0]);
  v49 = veorq_s8(v48, v47);
  v50 = veorq_s8(v44, v46);
  v51 = veorq_s8(v43, v45);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), v9);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v51), v9);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v50), v9);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v57 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v58 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v57);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v56);
  v61 = vaddq_s64(v58, v55);
  v62 = vdupq_n_s64(0x1D68FA83111E2DBAuLL);
  v63 = vsubq_s64(vorrq_s8(vaddq_s64(v60, v60), v62), v60);
  v64 = vdupq_n_s64(0x714B82BE7770E923uLL);
  v65 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v59, v59), v62), v59), v64);
  v66 = vdupq_n_s64(0x82F765E9CA095ADELL);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v61, v61), v62), v61), v64), v66);
  v68 = veorq_s8(vaddq_s64(v63, v64), v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v72 = veorq_s8(v65, v66);
  v73 = veorq_s8(v72, v71);
  v74 = veorq_s8(v68, v70);
  v75 = veorq_s8(v67, v69);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v75);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v74);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v73);
  v79 = vdupq_n_s64(0xB346280DBD3134FCLL);
  *&STACK[0x1830] = v79;
  v80 = vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v79), v78);
  v81 = vdupq_n_s64(0xA65CEBF921676581);
  v82 = vdupq_n_s64(0xE53CE3EBC1C435F2);
  *&STACK[0x1840] = v81;
  v83 = veorq_s8(vaddq_s64(v80, v81), v82);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), v79), v76), v81), v82);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v79), v77), v81), v82);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v88 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v88);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v87);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v86);
  v92 = vdupq_n_s64(0xC0EA821723E6F9AuLL);
  v93 = vsubq_s64(vorrq_s8(vaddq_s64(v90, v90), v92), v90);
  v94 = vdupq_n_s64(0x79F8ABEF46E0C833uLL);
  v95 = vdupq_n_s64(0x338694678D9255F1uLL);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v91, v91), v92), v91), v94), v95);
  v97 = veorq_s8(vaddq_s64(v93, v94), v95);
  v98 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v89, v89), v92), v89), v94), v95);
  v102 = veorq_s8(v101, v100);
  v103 = veorq_s8(v96, v98);
  v187.val[1] = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), veorq_s8(v97, v99));
  v105 = vaddq_s64(v187.val[1], v102);
  v106 = *&STACK[0x16C0];
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v103), *&STACK[0x16C0]);
  v108 = vdupq_n_s64(0x38uLL);
  v187.val[0] = veorq_s8(v104, *&STACK[0x16C0]);
  v188.val[0] = vshlq_u64(v107, vnegq_s64(vandq_s8(vshlq_n_s64(v11, 3uLL), v108)));
  v188.val[3] = vshlq_u64(v187.val[0], vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v108)));
  v187.val[0].i64[0] = (v2 - v7 - 94) & 0xF;
  v187.val[0].i64[1] = (v2 - v7 - 95) & 0xF;
  v109 = vaddq_s64(*&STACK[0x1890], v20);
  v188.val[2] = vshlq_u64(veorq_s8(v105, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1860], 3uLL), v108)));
  v110 = *&STACK[0x16D0];
  v111 = veorq_s8(v109, *&STACK[0x16D0]);
  v112 = *&STACK[0x16E0];
  v113 = veorq_s8(v109, *&STACK[0x16E0]);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v113), v30);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v42);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), *&STACK[0x16F0]);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v62), v120), v64), v66);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v79), v123), v81), v82);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v126, v126), v92), v126), v94), v95);
  v187.val[1].i64[0] = (v2 - v7 - 96) & 0xF;
  v187.val[1].i64[1] = (v2 - v7 - 97) & 0xF;
  v187.val[2].i64[0] = (v2 - v7 - 98) & 0xF;
  v187.val[2].i64[1] = (v2 - v7 - 99) & 0xF;
  v187.val[3].i64[0] = (v2 - v7 - 100) & 0xF;
  v187.val[3].i64[1] = (v2 - v7 - 101) & 0xF;
  v188.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1880], 3uLL), v108)));
  v128 = vandq_s8(*&STACK[0x1900], v15);
  v129 = *&STACK[0x18A0];
  v130 = vandq_s8(*&STACK[0x18A0], v15);
  v131 = *&STACK[0x17C0];
  *&STACK[0x1890] = vqtbl4q_s8(v188, *&STACK[0x17C0]);
  v132 = *&STACK[0x18B0];
  v133 = vandq_s8(*&STACK[0x18B0], v15);
  v134 = *&STACK[0x18F0];
  v135 = vandq_s8(*&STACK[0x18F0], v15);
  *&STACK[0x1850] = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  *&STACK[0x1880] = vqtbl4q_s8(v187, v131);
  v187.val[0].i64[0] = (v2 - v7 - 102) & 0xF;
  v187.val[0].i64[1] = (v2 - v7 - 103) & 0xF;
  v187.val[1].i64[0] = (v2 - v7 - 104) & 0xF;
  v187.val[1].i64[1] = (v2 - v7 - 105) & 0xF;
  v187.val[2].i64[0] = (v2 - v7 - 106) & 0xF;
  v187.val[2].i64[1] = (v2 - v7 - 107) & 0xF;
  v187.val[3].i64[0] = (v2 - v7 - 108) & 0xF;
  v136 = STACK[0x1708];
  v187.val[3].i64[1] = (v2 - v7 - 109) & 0xF;
  v188.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v20);
  v188.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v20);
  v137 = v20;
  *&STACK[0x1860] = vqtbl4q_s8(v187, v131);
  v188.val[2] = veorq_s8(v188.val[0], v110);
  v188.val[3] = veorq_s8(v188.val[1], v110);
  v187.val[2] = v110;
  v188.val[1] = veorq_s8(v188.val[1], v112);
  v188.val[0] = veorq_s8(v188.val[0], v112);
  v188.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[3], 0x38uLL), v188.val[3], 8uLL), v188.val[1]), v30);
  v188.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[2], 0x38uLL), v188.val[2], 8uLL), v188.val[0]), v30);
  v188.val[0] = veorq_s8(v188.val[2], vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL));
  v188.val[1] = veorq_s8(v188.val[3], vsraq_n_u64(vshlq_n_s64(v188.val[1], 3uLL), v188.val[1], 0x3DuLL));
  v138 = vsraq_n_u64(vshlq_n_s64(v188.val[2], 0x38uLL), v188.val[2], 8uLL);
  v188.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[3], 0x38uLL), v188.val[3], 8uLL), v188.val[1]);
  v188.val[3] = veorq_s8(vaddq_s64(v138, v188.val[0]), v42);
  v188.val[2] = veorq_s8(v188.val[2], v42);
  v139 = vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL);
  v188.val[0] = veorq_s8(v188.val[2], vsraq_n_u64(vshlq_n_s64(v188.val[1], 3uLL), v188.val[1], 0x3DuLL));
  v188.val[1] = veorq_s8(v188.val[3], v139);
  v140 = vsraq_n_u64(vshlq_n_s64(v188.val[2], 0x38uLL), v188.val[2], 8uLL);
  v188.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[3], 0x38uLL), v188.val[3], 8uLL), v188.val[1]);
  v188.val[3] = veorq_s8(vaddq_s64(v140, v188.val[0]), *&STACK[0x16F0]);
  v141 = vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL);
  v188.val[2] = veorq_s8(v188.val[2], *&STACK[0x16F0]);
  v188.val[0] = veorq_s8(v188.val[2], vsraq_n_u64(vshlq_n_s64(v188.val[1], 3uLL), v188.val[1], 0x3DuLL));
  v188.val[1] = veorq_s8(v188.val[3], v141);
  v142 = vsraq_n_u64(vshlq_n_s64(v188.val[2], 0x38uLL), v188.val[2], 8uLL);
  v188.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[3], 0x38uLL), v188.val[3], 8uLL), v188.val[1]);
  v188.val[3] = vaddq_s64(v142, v188.val[0]);
  v188.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188.val[3], v188.val[3]), v62), v188.val[3]), v64), v66);
  v188.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188.val[2], v188.val[2]), v62), v188.val[2]), v64), v66);
  v143 = vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL);
  v188.val[0] = veorq_s8(v188.val[2], vsraq_n_u64(vshlq_n_s64(v188.val[1], 3uLL), v188.val[1], 0x3DuLL));
  v188.val[1] = veorq_s8(v188.val[3], v143);
  v144 = vsraq_n_u64(vshlq_n_s64(v188.val[2], 0x38uLL), v188.val[2], 8uLL);
  v188.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[3], 0x38uLL), v188.val[3], 8uLL), v188.val[1]);
  v188.val[3] = vaddq_s64(v144, v188.val[0]);
  v188.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188.val[3], v188.val[3]), *&STACK[0x1830]), v188.val[3]), *&STACK[0x1840]), v82);
  v188.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188.val[2], v188.val[2]), *&STACK[0x1830]), v188.val[2]), *&STACK[0x1840]), v82);
  v145 = vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL);
  v188.val[0] = veorq_s8(v188.val[2], vsraq_n_u64(vshlq_n_s64(v188.val[1], 3uLL), v188.val[1], 0x3DuLL));
  v188.val[1] = veorq_s8(v188.val[3], v145);
  v146 = vsraq_n_u64(vshlq_n_s64(v188.val[2], 0x38uLL), v188.val[2], 8uLL);
  v188.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[3], 0x38uLL), v188.val[3], 8uLL), v188.val[1]);
  v188.val[3] = vaddq_s64(v146, v188.val[0]);
  v188.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188.val[3], v188.val[3]), v92), v188.val[3]), v94), v95);
  v188.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188.val[2], v188.val[2]), v92), v188.val[2]), v94), v95);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v20);
  v188.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[3], 0x38uLL), v188.val[3], 8uLL), veorq_s8(v188.val[3], vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL))), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), v108)));
  v188.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[2], 0x38uLL), v188.val[2], 8uLL), veorq_s8(v188.val[2], vsraq_n_u64(vshlq_n_s64(v188.val[1], 3uLL), v188.val[1], 0x3DuLL))), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v132, 3uLL), v108)));
  v148 = veorq_s8(v147, v187.val[2]);
  v149 = veorq_s8(v147, v112);
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v30);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v42);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), *&STACK[0x16F0]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), v62), v156), v64), v66);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), *&STACK[0x1830]), v159), *&STACK[0x1840]), v82);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v92), v162), v94), v95);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL)));
  v165 = vaddq_s64(*&STACK[0x1850], v137);
  v188.val[1] = vshlq_u64(veorq_s8(v164, v106), vnegq_s64(vandq_s8(vshlq_n_s64(v129, 3uLL), v108)));
  v166 = veorq_s8(v165, v187.val[2]);
  v167 = veorq_s8(v165, v112);
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v30);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v42);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), *&STACK[0x16F0]);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v174, v174), v62), v174), v64), v66);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), *&STACK[0x1830]), v177), *&STACK[0x1840]), v82);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v180, v180), v92), v180), v94), v95);
  v188.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL))), v106), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1900], 3uLL), v108)));
  v182 = *&STACK[0x1890];
  v182.i64[1] = vqtbl4q_s8(v188, v131).u64[0];
  v183 = *&STACK[0x1880];
  v183.i64[1] = STACK[0x1860];
  v106.i64[0] = 0xA1A1A1A1A1A1A1A1;
  v106.i64[1] = 0xA1A1A1A1A1A1A1A1;
  v184 = vrev64q_s8(veorq_s8(veorq_s8(*(v5 + (v10 & 0xF) - 15), *(a2 + v10 - 15)), veorq_s8(*(v4 + (v10 & 0xF) - 15), *((v10 & 0xF) + v3 - 14))));
  v185 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v184, v184, 8uLL), vmulq_s8(v183, v106)), v182));
  *(a1 + v10) = vextq_s8(v185, v185, 8uLL);
  return (*(v136 + 8 * ((45 * (v7 + 16 == v6)) ^ v8)))();
}

uint64_t sub_10003C750@<X0>(uint64_t a1@<X3>, int a2@<W4>, uint64_t a3@<X5>, char a4@<W6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v23 = (v6 + v14);
  v24 = __ROR8__((a3 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (v24 + v8) ^ v7;
  v26 = (__ROR8__((v24 + v8) ^ v13, 8) + v25) ^ v9;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v12;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v22;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v21 | (2 * (v32 + v31))) - (v32 + v31) + 0x714B82BE7770E923) ^ 0x82F765E9CA095ADELL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__(((v17 & (2 * (v35 + v34))) - (v35 + v34) + v18) ^ v19, 8);
  v37 = ((v17 & (2 * (v35 + v34))) - (v35 + v34) + v18) ^ v19 ^ __ROR8__(v34, 61);
  v38 = ((v20 | (2 * (v36 + v37))) - (v36 + v37) + 0x79F8ABEF46E0C833) ^ 0x338694678D9255F1;
  *(a1 + v23) = *(v10 + (v23 & 0xF)) ^ *(a3 + v23) ^ *(a6 + (v23 & 0xF)) ^ *((v23 & 0xF) + a5 + 1) ^ ((v23 & 0xF) * a4) ^ (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((a3 + v6 + v14) & 7)));
  return (*(v16 + 8 * (((v6 - 1 == v15) * a2) ^ v11)))();
}

uint64_t sub_10003C8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x1700];
  v7 = STACK[0x2598];
  v8 = STACK[0x15FC];
  STACK[0x3260] = *(v5 + 8 * SLODWORD(STACK[0x15FC]));
  return (*(v5 + 8 * ((v6 - 3182) ^ v8)))(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_10003C964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x15F0]) | 0xC90;
  v7 = STACK[0x25A8];
  v8 = STACK[0x15EC];
  STACK[0x3260] = *(v5 + 8 * SLODWORD(STACK[0x15EC]));
  return (*(v5 + 8 * (v8 + v6 - 479)))(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_10003C9A0()
{
  v2 = STACK[0x1700];
  v3 = STACK[0x1700] - 2805;
  v4 = STACK[0x2F58];
  v5 = STACK[0x2960];
  v6 = STACK[0x3CE8];
  v7 = v0 - 240;
  v8 = 929149733 * ((((v0 - 240) | 0x497469CB) + (~(v0 - 240) | 0xB68B9634)) ^ 0x184B02A7);
  v9 = (STACK[0x1700] + 315) ^ v8;
  *(v7 + 20) = v8 - 2079983380;
  *(v7 + 8) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *v7 = v9;
  *(v7 + 4) = 2011392483 - v8;
  v10 = (*(v1 + 8 * (v2 ^ 0x31D8)))(v0 - 240);
  v11 = STACK[0x1708];
  v12 = *(v0 - 224);
  LODWORD(STACK[0x3534]) = v12;
  return (*(v11 + 8 * ((5039 * (v12 == LODWORD(STACK[0x12E4]) + 68588765)) ^ v3)))(v10);
}

uint64_t sub_10003CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x12E4];
  STACK[0x3270] = *(v7 + 8 * SLODWORD(STACK[0x12E4]));
  return (*(v7 + 8 * ((v8 + 2718) ^ v8)))(a1, a2, 0xF03E4241B0D5EBFELL, a4, a5, a6, a7, 0x1902058DF6C30B35);
}

uint64_t sub_10003CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xCA0];
  v9 = STACK[0xCA0] ^ 0x24A5;
  STACK[0x3270] = *(v7 + 8 * STACK[0xCA0]);
  return (*(v7 + 8 * (v8 - 6371 + v9)))(a1, a2, 0xF03E4241B0D5EBFELL, a4, a5, a6, a7, 0x1902058DF6C30B35);
}

uint64_t sub_10003CCB0()
{
  v2 = STACK[0x1700] - 253;
  v3 = STACK[0x2CD0];
  v4 = STACK[0x2888];
  v5 = STACK[0x3720];
  v6 = STACK[0x1700] + 315;
  v7 = v0 - 240;
  v8 = 929149733 * ((((2 * (v0 - 240)) | 0xF3DBCC3E) - (v0 - 240) - 2045634079) ^ 0x28D28D72);
  *(v7 + 20) = v8 - 2079983380;
  *(v7 + 8) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *v7 = v6 ^ v8;
  *(v7 + 4) = 2011392483 - v8;
  v9 = (*(v1 + 8 * SLODWORD(STACK[0xD9C])))(v0 - 240);
  v10 = STACK[0x1708];
  v11 = *(v0 - 224);
  LODWORD(STACK[0x327C]) = v11;
  v12 = v11 == STACK[0x12D8] + 68588775;
  return (*(v10 + 8 * (((2 * v12) | (16 * v12)) ^ v2)))(v9);
}