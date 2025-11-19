uint64_t sub_1D48EF910@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = STACK[0x200];
  v60 = LODWORD(STACK[0x314]) ^ 0xE4CBAFF7;
  v61 = (2 * LODWORD(STACK[0x314])) & 0xC9975FEE;
  v62 = 675097751 * ((((v57 - 192) ^ 0xC205FF56) & 0x6CFAFCA4 | ~((v57 - 192) ^ 0xC205FF56 | 0x6CFAFCA4)) ^ 0x1240D99B);
  *(v57 - 144) = (v55 ^ 0x77E7EBFF) - v62 + 2 * v55 + ((v56 - 937580450) & 0x37E255F2 ^ 0xBEDAFFF6);
  *(v57 - 140) = v56 - v62 - 1776823762;
  *(v57 - 176) = v60 - v62 + v61 + 1606285824;
  *(v57 - 192) = a29;
  *(v57 - 184) = v59;
  *(v57 - 152) = a28;
  *(v57 - 168) = a1;
  v63 = (*(v58 + 8 * (v56 + 3295)))(v57 - 192);
  v64 = *(v57 - 160);
  LODWORD(STACK[0x2FC]) = v64;
  return (*(a55 + 8 * ((608 * (v64 == 671454635)) ^ v56)))(v63);
}

uint64_t sub_1D48EFB20@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W6>, uint64_t a5@<X8>)
{
  v9 = *(a5 + v6 + 72);
  v10 = ((v6 << (v5 - 90)) & a2) + (v6 ^ a4) + a1;
  *(v7 + v10) = v9 ^ 0xB;
  *(v7 + v10 + 1) = (BYTE1(v9) ^ 0x48) - ((v9 >> 7) & 4) - 126;
  *(v7 + v10 + 2) = (BYTE2(v9) ^ 0x2C) - ((v9 >> 15) & 4) - 126;
  *(v7 + v10 + 3) = (HIBYTE(v9) ^ 0x46) - ((2 * (HIBYTE(v9) ^ 0x46)) & 4) - 126;
  return (*(v8 + 8 * (((v6 + 4 >= *(a5 + 92)) * a3) ^ v5)))();
}

void sub_1D48EFBDC(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) + 843532609 * ((a1 - 935319884 - 2 * (a1 & 0xC84026B4)) ^ 0x940D7231);
  if (*(*a1 + 4) - 1673015719 >= 0)
  {
    v2 = *(*a1 + 4) - 1673015719;
  }

  else
  {
    v2 = 1673015719 - *(*a1 + 4);
  }

  if (*(*(a1 + 24) + 4) - 1673015719 >= 0)
  {
    v3 = *(*(a1 + 24) + 4) - 1673015719;
  }

  else
  {
    v3 = 1673015719 - *(*(a1 + 24) + 4);
  }

  v7 = *a1;
  v6 = v1 - 1564307779 * ((&v6 + 1897275586 - 2 * (&v6 & 0x711620C2)) ^ 0xE61BECD1) + 1626;
  v4 = *(&off_1F5033D40 + v1 - 270);
  (*(v4 + 8 * (v1 + 3502)))(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_1D48EFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v27 = 1564307779 * ((&a16 + 1112003226 - 2 * (&a16 & 0x4247D29A)) ^ 0xD54A1E89);
  a20 = v23 - ((2 * v23) & 0xFBF408DA) - v27 + 2113537133;
  a16 = (v26 - 1085) ^ v27;
  a18 = a11;
  (*(v24 + 8 * (v26 ^ 0x6F2)))(&a16);
  v28 = 742307843 * ((((2 * &a16) | 0x8DADDA) - &a16 - 4642541) ^ 0x1E645BB8);
  a21 = a11;
  a16 = (v26 - 992) ^ v28;
  a19 = ((v22 ^ 0xF75CFA7E) + 415192576 + ((v22 << ((v26 + 14) & 0xF0 ^ v26)) & 0xEEB9F4FC)) ^ v28;
  a18 = v21;
  v29 = (*(v24 + 8 * (v26 + 1534)))(&a16);
  return (*(v24 + 8 * ((1235 * (a17 == v25)) ^ v26)))(v29);
}

uint64_t sub_1D48EFFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if (a11)
  {
    v15 = a12 == ((((v12 - 2957) | 0x802) - 148) ^ 0x73E6596D);
  }

  else
  {
    v15 = 1;
  }

  v17 = !v15 && v14 != 0;
  return (*(v13 + 8 * ((254 * v17) ^ v12)))();
}

uint64_t sub_1D48F0034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16, char *a17, int a18, int a19)
{
  v22 = 1504884919 * (&a14 ^ 0xFBC3B71B);
  a15 = v19;
  a16 = &a12;
  a14 = v22 + 1640778916;
  a17 = &a10;
  a19 = (v21 - 1742) ^ v22;
  v23 = (*(v20 + 8 * (v21 ^ 0x408)))(&a14);
  return (*(v20 + 8 * ((1950 * (*(v19 + 24) == ((v21 + 375) ^ 0x84) + 671451378)) ^ v21)))(v23);
}

uint64_t sub_1D48F00D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * ((((2 * &a14) | 0xCFEEBDFA) - &a14 - 1744264957) ^ 0x24B77B6B);
  a19 = &a13;
  a14 = a11;
  a18 = v22 ^ 0xA33F4F7D;
  a15 = (v21 + 1421510650) ^ v22;
  a16 = v22 ^ 0x2400C6B3;
  v23 = (*(v19 + 8 * (v21 ^ 0x91Cu)))(&a14);
  return (*(v19 + 8 * (((a17 == v20) * ((((v21 - 119889240) & 0x788A867E) - 2022341211) ^ 0x639)) ^ v21)))(v23);
}

void sub_1D48F0348(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = 1037613739 * ((a1 & 0x6F83AE5B | ~(a1 | 0x6F83AE5B)) ^ 0x417E7CDB);
  v2 = *(a1 + 32) - v1;
  v3 = *(a1 + 36) - v1;
  v4 = *(a1 + 24);
  v5 = 1564307779 * (((&v10 ^ 0x4D61B33D | 0x5753A006) - ((&v10 ^ 0x4D61B33D) & 0x5753A006)) ^ 0x8D3FDF28);
  v6 = -1592376545 * (*(a1 + 40) ^ v1) - v5;
  v11 = v2 - v5 + 1801;
  v10 = v4;
  v13 = v3 + v5 - 847597510;
  v14 = v6 - 2104004206;
  v15 = &v9;
  v16 = &v8;
  v7 = *(&off_1F5033D40 + (v2 ^ 0x290));
  (*(v7 + 8 * (v2 + 3093)))(&v10);
  __asm { BRAA            X9, X17 }
}

void MpmZulZW()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2188) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 + dword_1EC7E2188) ^ 0x82))] ^ 0x8C]) - 32);
  v1 = -35 * ((qword_1EC7E2160 - *v0) ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + v1 - 4) ^ 3u) - 12) ^ v1) - 176);
  v3 = &v5[*v0 + *v2];
  *v0 = (1228258013 * v3) ^ 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((((2 * v6) | 0x4EE45BB4) - v6 - 661794266) ^ 0xF67000A5)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * (*v0 ^ 0x82 ^ *v2);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2188) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 + dword_1EC7E2188) ^ 0x82))] ^ 0x30]) - 55);
  (*(v4 + 8 * ((*(off_1F50343C8 + (*(off_1F50340C8 + v2 - 8) ^ 0x6Cu) - 8) ^ v2) + 3462)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F0718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, unsigned int a15)
{
  v18 = 1564307779 * ((((2 * (&a12 ^ 0xEDF134A9)) | 0x3BF60CB6) - (&a12 ^ 0xEDF134A9) - 502990427) ^ 0x6707FEE1);
  a15 = v15 - ((2 * v15) & 0xFBF408DA) - v18 + 2113537133;
  a12 = v18 ^ 0x434;
  a13 = a10;
  v19 = (*(v16 + 29720))(&a12);
  return (*(v16 + 8 * ((1384 * (a14 == v17)) | 0x806u)))(v19);
}

uint64_t sub_1D48F07E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, char a13, __int16 a14, char a15, uint64_t a16, _BYTE *a17, _BYTE *a18, char *a19, char *a20, _BYTE *a21, char *a22)
{
  a19 = &a11;
  a21 = a17;
  a22 = &a15;
  LODWORD(a20) = v22 + 1037613739 * ((&a18 & 0xCCB5E926 | ~(&a18 | 0xCCB5E926)) ^ 0xE2483BA6) + 2336;
  (*(v23 + 8 * (v22 ^ 0xA28)))(&a18);
  LODWORD(a21) = (v22 + 912) ^ (843532609 * ((((2 * &a18) | 0xD212C502) - &a18 + 385260927) ^ 0xB5443604));
  a20 = &a13;
  a18 = a17;
  (*(v23 + 8 * (v22 ^ 0xAF1)))(&a18);
  LODWORD(a18) = (v22 + 659) ^ (1504884919 * (&a18 ^ 0xFBC3B71B));
  a19 = a17;
  v24 = (*(v23 + 8 * (v22 + 2585)))(&a18);
  return (*(v23 + 8 * ((2401 * (HIDWORD(a18) == ((v22 - 812) | 0x408) + 671453279)) ^ v22)))(v24);
}

uint64_t sub_1D48F0934()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E1FD0) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 - dword_1EC7E1FD0) ^ 0x82))] ^ 0x60]) + 220);
  v1 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - *v0) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 - *v0) ^ 0x82))] ^ 0x60]) + 34);
  v2 = *v0 ^ &v11 ^ *v1;
  v3 = (1228258013 * v2) ^ 0xC891BCBEBCEAD82;
  v4 = 1228258013 * (v2 ^ 0xC891BCBEBCEAD82);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v4) = -35 * ((v4 + *v0) ^ 0x82);
  v12 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v4 - 4) ^ 0xBu)) ^ v4) - 1) - 4;
  v13 = 1092 - 1785193651 * (((&v12 | 0x2080FD33) - &v12 + (&v12 & 0xDF7F02C8)) ^ 0xD6A1591F);
  v5 = off_1F5033F78 - 4;
  v6 = off_1F5034348 - 12;
  v7 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E1FD0) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 - dword_1EC7E1FD0) ^ 0x82))] ^ 0x8E]) - 127);
  (*(v7 + 8 * ((*(off_1F5034348 + (*(off_1F5033F78 + (-35 * ((*v1 - *v0) ^ 0x82)) - 4) ^ 0xBu) - 12) ^ (-35 * ((*v1 - *v0) ^ 0x82))) + 3582)))(&v12);
  v13 = 1092 - 1785193651 * (((&v12 | 0xAA050023) - (&v12 & 0xAA050023)) ^ 0x5C24A40F);
  v8 = -35 * (*v0 ^ 0x82 ^ *v1);
  v12 = *(&off_1F5033D40 + (*(off_1F50342D8 + (*(off_1F5033F18 + v8 - 12) ^ 0x8Cu) - 12) ^ v8) + 23) - 4;
  (*(v7 + 8 * (((-35 * ((*v1 + *v0) ^ 0x82)) ^ v6[v5[(-35 * ((*v1 + *v0) ^ 0x82))] ^ 3]) + 3516)))(&v12);
  v9 = 843532609 * (((&v12 | 0x3CE67343) - (&v12 | 0xC3198CBC) - 1021735748) ^ 0x60AB27C6);
  BYTE4(v12) = v9 + 24;
  LODWORD(v12) = 3171 - v9;
  LOBYTE(v9) = -35 * ((*v1 + *v0) ^ 0x82);
  return (*(v7 + 8 * ((*(off_1F50343C8 + (*(off_1F50340C8 + v9 - 8) ^ 0x60u) - 8) ^ v9) + 3594)))(&v12);
}

uint64_t sub_1D48F0CD8(uint64_t a1, int a2)
{
  v9 = v6 - 1;
  *(v7 + v9) = *(v3 + (v9 & 0xF)) ^ *(v2 + v9) ^ *(v5 + (v9 & 0xF)) ^ (117 * (v9 & 0xF)) ^ *(v4 + (v9 & 0xF));
  return (*(v8 + 8 * ((103 * (v9 != (a2 + 2426) - 3126)) ^ (a2 + 483))))();
}

uint64_t sub_1D48F0FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = v5 + 32;
  v12 = (v11 ^ v7 ^ v4) + v2;
  v13 = *(a2 + v12 - 15);
  v14 = *(a2 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v6 == v11) * v8) ^ (v9 + v3 + 1634))))();
}

uint64_t sub_1D48F1034()
{
  if ((v2 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((22 * (v1 ^ 0xCDE) - 1882115556) & 0x702ECA3E ^ 0xFFFFFDE0) - v0 >= v2 - 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((61 * v5) ^ v1)))();
}

uint64_t sub_1D48F1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (&a12 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v15 = (*(v13 + 29168))(&a12);
  return (*(v13 + 8 * ((70 * (a12 == 671454635)) ^ v14)))(v15);
}

uint64_t sub_1D48F1400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, char *a17, int a18, char a19, __int16 a20, char a21, int a22, char a23, int a24, int a25, char a26, char *a27, char *a28, char *a29, char *a30, char *a31)
{
  a30 = &a23;
  a27 = &a26;
  a28 = a17;
  LODWORD(a31) = v31 - 1037613739 * ((2 * (&a27 & 0x4999A720) - &a27 - 1234806562) ^ 0x676475A1) + 68671097;
  (*(v32 + 8 * (v31 ^ 0xDE5)))(&a27);
  a28 = &a21;
  a30 = a17;
  a31 = &a19;
  LODWORD(a29) = v31 + 1037613739 * (((&a27 | 0xDF552645) - &a27 + (&a27 & 0x20AAD9B8)) ^ 0xE570B3A) + 2636;
  (*(v32 + 8 * (v31 + 2836)))(&a27);
  LODWORD(a30) = (v31 + 1212) ^ (843532609 * ((&a27 & 0x96BEE36A | ~(&a27 | 0x96BEE36A)) ^ 0x350C4810));
  a27 = a17;
  a29 = &a16;
  (*(v32 + 8 * (v31 ^ 0xDC5)))(&a27);
  a28 = a17;
  LODWORD(a27) = (v31 + 959) ^ (1504884919 * ((((&a27 | 0x421F3C60) ^ 0xFFFFFFFE) - (~&a27 | 0xBDE0C39F)) ^ 0x46237484));
  v33 = (*(v32 + 8 * (v31 ^ 0xDCD)))(&a27);
  return (*(v32 + 8 * ((2169 * (HIDWORD(a27) == (v31 ^ 0x280595F6 ^ (v31 - 43)))) ^ v31)))(v33);
}

uint64_t sub_1D48F17D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = 1564307779 * (((&a14 | 0x6F88998E) - (&a14 & 0x6F88998E)) ^ 0xF885559D);
  a17 = a10 - ((2 * a10) & 0xFBF408DA) - v20 + 2113537133;
  a15 = a12;
  a14 = v20 ^ 0x434;
  v21 = (*(v18 + 29720))(&a14);
  return (*(v18 + 8 * ((1237 * (a16 == v19)) ^ v17)))(v21);
}

uint64_t sub_1D48F18E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22, uint64_t a23)
{
  v28 = (&a19 ^ 0x1E228D55) * v26;
  a23 = a17;
  a21 = a9;
  a22 = v28 ^ ((v24 ^ 0x11FFD6FE) - 31688320 + ((2 * v24) & 0x23FFADFC));
  a19 = v25 ^ v28;
  v29 = (*(v27 + 8 * (v23 ^ 0xD85)))(&a19);
  return (*(v27 + 8 * ((1834 * (a20 == ((v23 - 993) | 0xD0) + ((v23 - 553) ^ 0x28059513))) ^ v23)))(v29);
}

uint64_t sub_1D48F19A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v8 + 8;
  *(a4 + (v12 ^ a6 ^ a3) + v7) = *(v9 + (v12 ^ a6 ^ a3) + v7);
  return (*(v11 + 8 * (((a5 == v12) * a7) ^ v10)))();
}

uint64_t sub_1D48F1A2C@<X0>(int a1@<W5>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v12 = a1 + a2 + 3;
  v13 = (((a3 + 1296324229) & v12) << ((a3 ^ 0x54) + 108)) & (v12 ^ 0x68564247) ^ (a3 + 1296324229) & v12;
  v14 = ((2 * (v12 ^ 0xF8DEC4CF)) ^ 0x6B354F12) & (v12 ^ 0xF8DEC4CF) ^ (2 * (v12 ^ 0xF8DEC4CF)) & 0xB59AA788;
  v15 = v14 ^ 0x948AA089;
  v16 = (v14 ^ 0xA1982781) & (4 * v13) ^ v13;
  v17 = ((4 * v15) ^ 0xD66A9E24) & v15 ^ (4 * v15) & 0xB59AA788;
  v18 = (v17 ^ 0x940A8609) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x21902189)) ^ 0x59AA7890) & (v17 ^ 0x21902189) ^ (16 * (v17 ^ 0x21902189)) & 0xB59AA780;
  v20 = v18 ^ 0xB59AA789 ^ (v19 ^ 0x118A2009) & (v18 << 8);
  return (*(v11 + 8 * ((54 * (((v12 ^ (2 * ((v20 << 16) & 0x359A0000 ^ v20 ^ ((v20 << 16) ^ 0x27890000) & (((v19 ^ 0xA4108709) << 8) & 0x359A0000 ^ 0x25180000 ^ (((v19 ^ 0xA4108709) << 8) ^ 0x1AA70000) & (v19 ^ 0xA4108709))))) & 0xFFFFFFFC ^ 0x6D612C54) - a11 != -1499319902)) | a3)))();
}

uint64_t sub_1D48F1F24(uint64_t a1)
{
  v7 = v3 + (v4 ^ (v5 + 2808)) - 2763;
  *(a1 + v7) = *(v1 + v7);
  return (*(v6 + 8 * ((26 * (v7 == 0)) ^ (v2 + v4 + 312))))();
}

void sub_1D48F1F60(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) - 1468302162;
  v3 = *(*(a1 + 16) + 4) - 1468302162;
  v4 = (v2 < -1942770091) ^ (v3 < -1942770091);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < -1942770091;
  }

  else
  {
    v6 = v5;
  }

  v1 = *(a1 + 24) ^ (1361651671 * ((-2 - ((a1 | 0x23BD150A) + (~a1 | 0xDC42EAF5))) ^ 0x9729268B));
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1D48F218C(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5)
{
  v9 = (v8 - 32);
  v10 = *v9;
  v11 = (v6 - 32 + ((a3 + 2691) ^ a4));
  *(v11 - 1) = *(v9 - 1);
  *v11 = v10;
  return (*(v5 + 8 * (((v7 == 32) * a5) ^ (a3 + 549))))();
}

void sub_1D48F219C(_DWORD *a1)
{
  v1 = 1564307779 * ((2 * (a1 & 0x56089587) - a1 - 1443403144) ^ 0x3EFAA66B);
  v2 = a1[2] + v1;
  v3 = *a1 - v1;
  v4 = a1[3] + v1;
  v5 = a1[1] - v1;
  v6 = a1[4] + v1;
  v7 = *(&off_1F5033D40 + (v2 - 76));
  *v7 = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F2268@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, signed int a50)
{
  v54 = *(v51 + a1 * v52 + 36);
  LODWORD(STACK[0x248]) = v54;
  v55 = v54 - 1280074017;
  v57 = v55 > (((v50 + 73) | 0x4C0) ^ 0x95BD539C) && v55 < a50;
  return (*(v53 + 8 * ((v57 * ((19 * (v50 ^ 0xFB)) ^ 0x33E)) ^ v50)))();
}

void g9eargdzvoj3()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E1FF0) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 + dword_1EC7E1FF0) ^ 0x82))] ^ 0xB]) + 139);
  v1 = *(&off_1F5033D40 + (*(off_1F5034198 + (*(off_1F5034218 + (-35 * ((qword_1EC7E2160 + *v0) ^ 0x82))) ^ 0xB5u) - 8) ^ (-35 * ((qword_1EC7E2160 + *v0) ^ 0x82))) + 21);
  v2 = (*v1 ^ *v0) - &v4;
  *v0 = 1228258013 * v2 - 0xC891BCBEBCEAD82;
  *v1 = 1228258013 * (v2 ^ 0xC891BCBEBCEAD82);
  v5[1] = (1037613739 * (v5 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  LOBYTE(v1) = -35 * ((*v1 - *v0) ^ 0x82);
  v3 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E1FF0) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 + dword_1EC7E1FF0) ^ 0x82))] ^ 3]) - 206);
  (*(v3 + 8 * ((*(off_1F50340B8 + (*(off_1F5033FC0 + v1 - 8) ^ 0x8Eu) - 4) ^ v1) + 3508)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F24EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v36 = *(&a19 + v31 + 72);
  v37 = ((2 * v31) & 0xD8FD7F78) + ((v35 + v32 - 1139) ^ v31 ^ 0x87172E38) + v33;
  *(a1 + v37) = (HIBYTE(v36) ^ 0x46) - 2 * ((HIBYTE(v36) ^ 0x46) & 3 ^ HIBYTE(v36) & 1) - 126;
  *(a1 + v37 + 1) = (BYTE2(v36) ^ 0x2C) - ((v36 >> 15) & 4) - 126;
  *(a1 + v37 + 2) = (BYTE1(v36) ^ 0x48) - ((v36 >> 7) & 4) - 126;
  *(a1 + v37 + 3) = v36 ^ 0xB;
  return (*(v34 + 8 * ((255 * (v31 + 4 >= a31)) ^ v32)))();
}

uint64_t sub_1D48F25C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 4) - 126;
  return (*(v4 + 8 * ((992 * (((v1 + 59) ^ (v5 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_1D48F268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = a13;
  *(v18 - 120) = &a15;
  *(v18 - 128) = (v17 + 1583) ^ (1504884919 * ((((2 * (v18 - 136)) | 0xD0FF90BE) - (v18 - 136) - 1753204831) ^ 0x93BC7F44));
  v19 = (*(v15 + 8 * (v17 + 2094)))(v18 - 136);
  return (*(v15 + 8 * (((v16 == ((v17 - 93653959) & 0x59507BF ^ 0x291)) * (((v17 - 1671) | 0x280) + 3171)) ^ v17)))(v19);
}

uint64_t sub_1D48F274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, unsigned int a16, uint64_t a17)
{
  v21 = (v20 - 74962) & 0xFC9BA6FF;
  *v18 = a13;
  *v17 = a15;
  a16 = v21 + 56985061 - 143681137 * (&a16 ^ 0xE6A8AC10);
  a17 = a11;
  v22 = (*(v19 + 8 * (v21 + 56986513)))(&a16);
  return sub_1D48F27C0(v22);
}

uint64_t sub_1D48F27C0()
{
  v8 = v6;
  v7 = v1 - ((((2 * &v7) | 0xC48A9EBE) - &v7 - 1648709471) ^ 0x84EDE34F) * v2 + v3;
  (*(v0 + 8 * (v3 ^ 0xFC9A8CAF)))(&v7);
  return (v4 - 671454635);
}

void sub_1D48F2864(uint64_t a1)
{
  v1 = *(a1 + 28) ^ (1564307779 * ((((2 * a1) | 0xCF99E5FC) - a1 + 405998850) ^ 0x70C13EED));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F2978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + v2 - 1) = *(a2 + v2 - 1) ^ 0x82;
  v5 = v2 - 1 != (((v3 ^ 3u) + 13) ^ 0x821);
  return (*(v4 + 8 * ((v5 | (2 * v5)) ^ v3 ^ 3)))();
}

uint64_t sub_1D48F2C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = 143681137 * ((-1093203173 - ((v20 - 128) ^ 0xAC4AFFD | 0xBED70B1B) + ((v20 - 128) ^ 0xAC4AFFD | 0x4128F4E4)) ^ 0xAD44F709);
  *(v20 - 120) = &a17;
  *(v20 - 112) = (v17 ^ 0xDF8FE9FE) - v21 + ((v19 ^ 0xBF1FD6DA) & (2 * v17)) + 871751678;
  *(v20 - 128) = v19 - v21 + 630;
  v22 = (*(v18 + 8 * (v19 ^ 0xB9C)))(v20 - 128);
  return sub_1D48F2CCC(v22);
}

uint64_t sub_1D48F2CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 104) = (v17 - 25) ^ (((~((v20 - 128) | 0x1056FFB7) + ((v20 - 128) & 0x1056FFB7)) ^ 0xA4C2CC36) * v18);
  *(v20 - 120) = &a15;
  *(v20 - 112) = v15;
  v21 = (*(v16 + 8 * (v17 + 3199)))(v20 - 128);
  return (*(v16 + 8 * (((*(v20 - 128) <= v19) * (((v17 - 266) | 0x223) ^ (v17 + 1824728553) & 0x933CDCEB ^ 0x7FD)) ^ v17)))(v21);
}

uint64_t sub_1D48F2D7C@<X0>(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6, uint64_t *a7)
{
  v12 = ((-1748755482 - (&a3 | 0x97C41BE6) + (&a3 | 0x683BE419)) ^ 0x23502867) * a1;
  a5 = v7;
  a3 = v9 + v12 + ((7 * (v11 ^ 0x16A)) ^ 0x488C7BB9);
  a4 = (v11 + 668) ^ v12;
  a7 = &a2;
  a6 = v12 ^ 0xEA234B82;
  v13 = (*(v8 + 8 * (v11 + 3301)))(&a3);
  return (*(v8 + 8 * ((706 * (*(v7 + 24) == v10 + 1137)) ^ v11)))(v13);
}

void sub_1D48F2E74()
{
  (*(v2 + 8 * (((v0 - 464471271) & 0x1BAF3EFF) + 2649)))(*v3, *v1, *(v1 + 8) + 2 * ((v0 - 464471271) & 0x1BAF3EFF ^ 0x6CFu) - 1442768821);
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  JUMPOUT(0x1D48F2EC8);
}

uint64_t sub_1D48F2EE0@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 4) - 126;
  return (*(v1 + 8 * (((v6 == 0) * v4) ^ v5)))(0);
}

uint64_t sub_1D48F2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, int a19, int a20)
{
  v25 = 1564307779 * (((&a17 | 0x41808EBA) - (&a17 & 0x41808EBA)) ^ 0xD68D42A9);
  a20 = v22 - v25 + 2113537133 - ((((v24 - 867316087) & 0x13AF) - 67893713) & (2 * v22));
  a17 = (v24 + 962) ^ v25;
  a18 = a12;
  (*(v23 + 8 * (v24 + 3601)))(&a17);
  v26 = 1564307779 * ((2 * (&a17 & 0x4AF0A1C0) - &a17 + 890199611) ^ 0xA2029228);
  a20 = HIDWORD(v21) - ((2 * HIDWORD(v21)) & 0xFBF408DA) + 2113537133 - v26;
  a18 = a12;
  a17 = (v24 + 962) ^ v26;
  (*(v23 + 8 * (v24 + 3601)))(&a17);
  v27 = 1564307779 * ((&a17 - 1542030258 - 2 * (&a17 & 0xA4167C4E)) ^ 0x331BB05D);
  a20 = v21 - ((2 * v21) & 0xFBF408DA) + 2113537133 - v27;
  a18 = a12;
  a17 = (v24 + 962) ^ v27;
  (*(v23 + 8 * (v24 ^ 0xEF1)))(&a17);
  v28 = 1564307779 * ((((&a17 | 0x51B60734) ^ 0xFFFFFFFE) - (~&a17 | 0xAE49F8CB)) ^ 0x394434D8);
  a20 = v20 - ((2 * v20) & 0xFBF408DA) + 2113537133 - v28;
  a18 = a12;
  a17 = (v24 + 962) ^ v28;
  (*(v23 + 8 * (v24 ^ 0xEF1)))(&a17);
  v29 = 1564307779 * ((-824863214 - (&a17 | 0xCED59612) + (&a17 | 0x312A69ED)) ^ 0xA627A5FE);
  a20 = 2113537133 - v29;
  a18 = a12;
  a17 = (v24 + 962) ^ v29;
  v30 = (*(v23 + 8 * (v24 + 3601)))(&a17);
  return (*(v23 + 8 * ((2823 * (a19 == 671454635)) ^ v24)))(v30);
}

uint64_t sub_1D48F329C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v18 = (a7 - 691) | 0x2A4;
  v19 = ((v12 + v18 - 743) ^ a4) * (**(v16 + 8) ^ v12) + (*(&a12 + v14) ^ v12);
  *(&a12 + v14) = v19 + v12 - ((v18 - 332 + v15) & (2 * v19));
  return (*(v17 + 8 * (((v13 != 1) | (16 * (v13 != 1))) ^ v18)))();
}

uint64_t sub_1D48F3320(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v14 = a6 - 8;
  v16.val[0].i64[0] = (v11 + v14 - 1) & a8;
  v16.val[0].i64[1] = (v11 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v14) & 0xFLL ^ 8;
  *(a7 + v14) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a7 + v14)), veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v13 + 8 * (v12 | ((a5 == v14) << 10))))();
}

uint64_t sub_1D48F339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v5 ^ v4;
  v7 = v3 - (**(a2 + 8) == ((v5 ^ v4) + 86));
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1673015719;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v8 = *(a1 + 96) + 528;
  v9 = 1361651671 * (((&v14 | 0x615251CF) + (~&v14 | 0x9EADAE30)) ^ 0x2A399DB0);
  v14 = *(a2 + 8) + (*(a2 + 4) - v7);
  v16 = (v6 - 726) ^ v9;
  v17 = v8;
  v18 = v7 - v9 + ((v6 - 1153696952) & 0xF7DF7CFF) - 24323546;
  (*(a3 + 8 * (v6 + 2584)))(&v14);
  v12 = v15;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v7);
  return (-850421975 * v12 - 2018107352);
}

uint64_t sub_1D48F34F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v42 = a2 ^ (v40 - 1123);
  (*(a1 + 8 * (v39 + a2 + 3104)))(a14 + a15);
  v43 = (*(a38 + 8 * ((v40 + 71) ^ 0x8FB50128)))();
  *v41 = v43;
  v41[1] = 1812433253 * ((v43 >> v42) ^ v43) + 1;
  return (*(a38 + 8 * (v42 ^ 0x23)))(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, v38, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D48F359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  a20 = (1037613739 * ((2 * (&a19 & 0x4FD938F0) - &a19 + 807847692) ^ 0xE124EA73)) ^ 0x86F54BA0;
  v21 = (*(v20 + 29168))(&a19);
  return (*(v20 + 8 * ((2650 * (a19 == 671454635)) ^ 0xD2)))(v21);
}

uint64_t sub_1D48F3694@<X0>(unsigned int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *(a3 + v5 + 16);
  v10 = (v7 + v5 + v3);
  *v10 = *(a3 + v5);
  v10[1] = v9;
  return (*(v8 + 8 * ((25 * ((((v6 - 2338) | a1) ^ a2) + v5 == v4)) ^ v6)))();
}

uint64_t sub_1D48F36E0()
{
  v8 = v6;
  v7 = v0 + 961 - ((2 * (&v7 & 0x642008C0) - &v7 - 1679820999) ^ 0x7D775B29) * v1 + 1072;
  (*(v2 + 8 * (v0 + 3485)))(&v7);
  v7 = v0 + 1534 - (((&v7 | 0x53DEB56A) - (&v7 & 0x53DEB56A)) ^ 0xB576197A) * v1 + 499;
  v8 = v5;
  (*(v2 + 8 * (v0 + 3485)))(&v7);
  return ((v0 + 961) ^ 0x39ADF32B ^ v4) - 296247812 + ((2 * v4) & 0x735BEF5Eu) - 671454635;
}

uint64_t sub_1D48F3718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, int *a20, unsigned int a21)
{
  a16 = 0;
  a21 = (v21 - 685) ^ (843532609 * ((((2 * &a18) | 0xE51E7A90) - &a18 + 225493688) ^ 0xAEC269CD));
  a20 = &a16;
  a18 = a14;
  (*(v22 + 8 * (v21 + 980)))(&a18);
  a21 = (v21 - 685) ^ (843532609 * ((-191051816 - (&a18 | 0xF49CC7D8) + (&a18 | 0xB633827)) ^ 0x572E6CA2));
  a20 = &a13;
  a18 = a14;
  (*(v22 + 8 * (v21 + 980)))(&a18);
  a19 = a14;
  LODWORD(a18) = (v21 - 938) ^ (1504884919 * ((&a18 - 193107481 - 2 * (&a18 & 0xF47D69E7)) ^ 0xFBEDEFC));
  v24 = (*(v22 + 8 * (v21 ^ 0x424)))(&a18);
  return (*(v22 + 8 * ((120 * (HIDWORD(a18) != ((47 * (v21 ^ 0xA96)) ^ (v23 + 2177)) + (v21 ^ 0xA1F))) ^ v21)))(v24);
}

uint64_t sub_1D48F3908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v17 = *v15;
  v18 = 1564307779 * ((-721296435 - (v12 | 0xD501E3CD) + (v12 | 0x2AFE1C32)) ^ 0xBDF3D021);
  *(v16 - 116) = a10 - v18;
  *(v16 - 136) = (v11 - 1024) ^ v18;
  v19 = (v16 - 136);
  *(v16 - 128) = v17;
  (*(v13 + 8 * (v11 + 1615)))(v16 - 136);
  v20 = *v10;
  v21 = (2 * *v10) & 0xFBF408DA;
  v22 = 1564307779 * ((((2 * v12) | 0x4EAB43C0) - v12 - 659923424) ^ 0xB0586DF3);
  *(v16 - 128) = *v15;
  *(v16 - 136) = (v11 - 1024) ^ v22;
  *(v16 - 116) = v20 - v22 - v21 + 2113537133;
  (*(v13 + 8 * (v11 ^ 0x6B7)))(v16 - 136);
  v23 = *v15;
  v24 = *(v10 + 1) - 0x1CCD35AFBEB40A1ELL - ((*(v10 + 1) << (v11 ^ (v14 + 98) ^ 0x45)) & 0xC66594A08297EBC4);
  v25 = 1785193651 * (((v12 | 0x1E1D9BBAEAAAD9E4) - v12 + (v12 & 0xE1E2644515552618)) ^ 0x418526821C8B7DC8);
  *(v16 - 116) = v11 + 1513 - v25;
  *v19 = v23;
  *(v16 - 128) = v24 ^ v25;
  (*(v13 + 8 * (v11 ^ 0x651)))(v16 - 136);
  v26 = *v15;
  v27 = *(v10 + 2) - 0x1CCD35AFBEB40A1ELL - ((2 * *(v10 + 2)) & 0xC66594A08297EBC4);
  v28 = 1785193651 * ((0xB53E983C271E5DA3 - (v12 | 0xB53E983C271E5DA3) + (v12 | 0x4AC167C3D8E1A25CLL)) ^ 0x1559DAFB2EC00670);
  *(v16 - 116) = v11 + 1513 - v28;
  *v19 = v26;
  *(v16 - 128) = v27 ^ v28;
  (*(v13 + 8 * (v11 + 1585)))(v16 - 136);
  v29 = *v15;
  v30 = *(v10 + 3) - 0x1CCD35AFBEB40A1ELL - ((2 * *(v10 + 3)) & 0xC66594A08297EBC4);
  v31 = 1785193651 * (((v12 | 0xA8FA72F5CB964BECLL) - (v12 & 0xA8FA72F5CB964BECLL)) ^ 0xF762CFCD3DB7EFC0);
  *(v16 - 116) = v11 + 1513 - v31;
  *v19 = v29;
  *(v16 - 128) = v30 ^ v31;
  v32 = (*(v13 + 8 * (v11 + 1585)))(v16 - 136);
  return (*(v13 + 8 * (((*(v16 - 120) == 671454635) | (2 * (*(v16 - 120) == 671454635))) ^ v11)))(v32);
}

uint64_t sub_1D48F3C2C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (1785193651 * (a1 ^ 0xF621A42C));
  v2 = *(a1 + 8);
  v6 = v2[1];
  v5 = v1 - 1212453340 - 143681137 * ((1553546677 - (&v5 ^ 0xA13E5415 | 0x5C993DB5) + (&v5 ^ 0xA13E5415 | 0xA366C24A)) ^ 0xE4F03A4F);
  v3 = *(&off_1F5033D40 + v1 - 1212455557);
  (*(v3 + 8 * (v1 - 1212451888)))(&v5);
  v6 = *v2;
  v5 = v1 - 1212453340 - 143681137 * ((2 * (&v5 & 0x35095C18) - &v5 + 1257677799) ^ 0xAC5E0FF7);
  return (*(v3 + 8 * (v1 ^ 0x484494F0)))(&v5);
}

void Fc3vhtJDvr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F3F88()
{
  v8 = v4 - v0;
  *(v8 + 91) = ((v0 + v2) ^ v3) * (v0 + v2 + 17);
  *(v8 + 90) = ((v0 + v2) ^ 0xBB) * (v0 + v2 + 18);
  return (*(v7 + 8 * (((v5 + v0 != 92) * v6) ^ v1)))();
}

uint64_t sub_1D48F3FD0()
{
  v3 = 64 - ((v1 ^ 0x330ECB48u) + v0);
  v4 = -856605480 - v0;
  if (HIDWORD(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= v3;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((v6 * (v1 - 1961)) ^ v1)))();
}

uint64_t sub_1D48F4030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  v61 = (v58 ^ 0x5D47ED5C) & (2 * (v58 & 0x9C47CE59)) ^ v58 & 0x9C47CE59;
  v62 = ((2 * (v58 ^ 0x45C3F16C)) ^ 0xB3087E6A) & (v58 ^ 0x45C3F16C) ^ (2 * (v58 ^ 0x45C3F16C)) & 0xD9843F34;
  v63 = (743 * (v59 ^ 0x119) + 1216609095) ^ v62;
  v64 = (v62 ^ 0x99803A30) & (4 * v61) ^ v61;
  v65 = ((4 * v63) ^ 0x6610FCD4) & v63 ^ (4 * v63) & 0xD9843F34;
  v66 = v65 ^ 0x99840321;
  v67 = (v65 ^ 0x40003C10) & (16 * v64) ^ v64;
  v68 = ((16 * v66) ^ a46) & v66 ^ (16 * v66) & 0xD9843F30;
  v69 = v67 ^ 0xD9843F35 ^ (v68 ^ 0x98003300) & (v67 << 8);
  return (*(v60 + 8 * ((2216 * ((a58 ^ (4 * v58) ^ (8 * ((v69 << 16) & 0x19840000 ^ v69 ^ ((v69 << 16) ^ 0x1F350000) & (((v68 ^ 0x41840C25) << 8) & 0x19840000 ^ 0x19800000 ^ (((v68 ^ 0x41840C25) << 8) ^ 0x43F0000) & (v68 ^ 0x41840C25))))) == 1964949708)) ^ v59)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1D48F41B8@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x218] + a1 + 72);
  v6 = ((2 * a1) & 0x7AFDCAC8) + v1 + (((v2 ^ 0x25C) + 1031726379) ^ a1);
  *(v3 + v6) = v5 ^ 0xB;
  *(v3 + v6 + 1) = (BYTE1(v5) ^ 0x48) - ((v5 >> 7) & 4) - 126;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0x2C) - ((v5 >> 15) & 4) - 126;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0x46) - ((2 * (HIBYTE(v5) ^ 0x46)) & 4) - 126;
  return (*(v4 + 8 * ((2761 * (a1 + 4 < LODWORD(STACK[0x274]))) ^ v2)))();
}

uint64_t sub_1D48F4284@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, uint64_t a12)
{
  a10 = (v12 + 1659) ^ (1504884919 * (((&a10 | 0x56AE86CF) - &a10 + (&a10 & 0xA9517930)) ^ 0xAD6D31D4));
  a12 = a1;
  v15 = (*(v14 + 8 * (v12 + 3585)))(&a10);
  return (*(v14 + 8 * (((a11 == v13) * (((v12 - 886634125) & 0x34D8FFDE) + 948)) ^ v12)))(v15);
}

uint64_t sub_1D48F4328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a18 = &a14;
  a17 = (50899313 * (((&a17 ^ 0xBC28E3A8 | 0x63948322) - (&a17 ^ 0xBC28E3A8) + ((&a17 ^ 0xBC28E3A8) & 0x9C6B7CD8)) ^ 0xF5774AF0)) ^ 0x72E;
  v21 = (*(v19 + 29464))(&a17);
  return (*(v19 + 8 * ((1656 * (a19 == 671454635)) ^ v20)))(v21);
}

uint64_t sub_1D48F43C0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, uint64_t a17, int a18, int a19, unint64_t a20, uint64_t a21, int a22, int a23)
{
  *a15 = a1;
  LODWORD(STACK[0x22C]) = a19;
  STACK[0x230] = a20;
  LODWORD(STACK[0x238]) = a23 - v23 + 1111656522;
  STACK[0x240] = v27 + (((v24 + 414) | 0x2A1) ^ 0xD1475A30) + v23;
  v29 = (*(v28 + 48 * v26 + 8))(a7);
  return (*(v25 + 8 * ((3768 * ((v29 ^ 0xA8CFDFBF) + 2134226412 + ((v24 ^ 0x519FBCD8) & (2 * v29)) == 671454635)) ^ v24)))();
}

uint64_t sub_1D48F44BC()
{
  v3 = (v0 - 1271963049) & 0x1EB6;
  v8 = v3 - ((((2 * &v8) | 0x6A8C96A8) - &v8 + 1253684396) ^ 0x53EEE744) * v2 + 1662;
  v9 = v6;
  (*(v1 + 8 * (v3 ^ 0xC56u)))(&v8);
  v8 = (v3 ^ 0x83) - ((2 * ((&v8 ^ 0xB5821208) & 0x4EB6EAA8) - (&v8 ^ 0xB5821208) - 1320610478) ^ 0xE263AB4A) * v2 + 1535;
  v9 = v5;
  (*(v1 + 8 * ((v3 ^ 0x83u) + 2987)))(&v8);
  return ((2 * v7) & 0x505F6F7E) + (v7 ^ 0xA82FB589 ^ v3) + 1473267777;
}

void sub_1D48F4630()
{
  v4 = *(v0 + 8) ^ v2;
  *v5 = (HIBYTE(v4) ^ 0xE3) - (((HIBYTE(v4) ^ 0xE3) & 6 ^ HIBYTE(v4) & 4) << (v3 - 18)) - 126;
  v5[1] = (BYTE6(v4) ^ 0x32) - 2 * ((BYTE6(v4) ^ 0x32) & 7 ^ BYTE6(v4) & 5) - 126;
  v5[2] = (BYTE5(v4) ^ 0xCA) - 2 * ((BYTE5(v4) ^ 0xCA) & 7 ^ BYTE5(v4) & 5) - 126;
  v5[3] = (BYTE4(v4) ^ 0x50) + (~(2 * BYTE4(v4)) | 0xFB) - 125;
  v5[4] = (BYTE3(v4) ^ 0x41) - ((2 * BYTE3(v4)) & 4) - 126;
  v5[5] = (BYTE2(v4) ^ 0x4B) - ((2 * (BYTE2(v4) ^ 0x4B)) & 4) - 126;
  v5[6] = (BYTE1(v4) ^ 0xF5) - ((2 * BYTE1(v4)) & 4) - 126;
  v5[7] = v4 ^ 0x60;
  *(v0 + 16) = *(v1 + 24);
}

void woqRTqq9PL5McfBs891()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2078) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 + dword_1EC7E2078) ^ 0x82))] ^ 0x8E]) + 59);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5033D40 + (*(off_1F50342D8 + (*(off_1F5033F18 + (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82)) - 12) ^ 0x30u) - 12) ^ (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82))) - 25);
  v3 = &v5[v1 + *v2];
  *(v0 - 4) = 1228258013 * v3 + 0x5804E9A2B9663D3ALL;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((2 * (v6 & 0x53CAE4F8) - v6 - 1405805824) ^ 0x7D37367F)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 + *(v0 - 4)) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2078 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * (dword_1EC7E2078 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x30]) - 55);
  (*(v4 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v2 - 4) ^ 0xF5u)) ^ v2) + 3534)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v15 = (v13 - 599338726) & 0x81C15FBF;
  v16 = v11 != (v15 ^ (v12 + 2266));
  if (a11 != v15 - 4553 + ((v15 - 283) | 0x88))
  {
    v16 = 0;
  }

  return (*(v14 + 8 * ((92 * v16) ^ v15)))();
}

uint64_t sub_1D48F4E50@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) - 1436286212;
  v5 = (v2 - 1436286212 < -1910754141) ^ (v4 < ((a1 - 687) | 0x222) - 1910754895);
  v6 = v2 - 1436286212 > v4;
  if (v5)
  {
    v7 = v2 - 1436286212 < -1910754141;
  }

  else
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((1204 * v7) ^ a1)))();
}

uint64_t sub_1D48F4EBC@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W4>, int a4@<W5>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int32x4_t a11@<Q7>)
{
  v15 = v14 + 4 * a5;
  a7.i64[0] = *(v15 + 4);
  a7.i32[2] = *(v15 + 12);
  v16 = vextq_s8(a6, a7, 0xCuLL);
  v17 = a7;
  v17.i32[3] = *(v14 + 4 * (a5 + 4));
  v18 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v17, a10), vandq_s8(v16, a8)), 1uLL), *(v15 + 1588));
  v16.i32[0] = *(v13 + 4 * (*(v15 + 4) & 1));
  v16.i32[1] = *(v13 + 4 * (*(v15 + 8) & ((4 * (v11 ^ (a2 + 25))) ^ a3)));
  v16.i32[2] = *(v13 + 4 * (*(v15 + 12) & 1));
  v16.i32[3] = *(v13 + 4 * (v17.i8[12] & 1));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v18, vandq_s8(vaddq_s32(v18, v18), a9)), a11), v16);
  return (*(a1 + 8 * (((a5 == 220) * a4) ^ (v12 + v11 - 247))))();
}

uint64_t sub_1D48F4EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, int a17)
{
  a16 = &a11;
  a15 = (50899313 * ((&a15 + 1492518641 - 2 * (&a15 & 0x58F606F1)) ^ 0x723D2C8B)) ^ 0x72E;
  v18 = (*(v17 + 29464))(&a15);
  return (*(v17 + 8 * ((153 * (a17 != 671454635)) ^ 0x23Du)))(v18);
}

uint64_t sub_1D48F5014(uint64_t a1, int8x16_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (v7 - 32);
  v11 = (a1 - 32);
  v12 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a2)), a3);
  v10[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a2)), a3);
  *v10 = v12;
  return (*(v9 + 8 * (((v8 == 32) * a6) ^ v6)))();
}

uint64_t sub_1D48F5088(uint64_t a1)
{
  v1 = 1785193651 * ((((2 * (a1 ^ 0xB7DB8D41)) | 0x797DA884) - (a1 ^ 0xB7DB8D41) + 1128344510) ^ 0xFD44FD2F);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 4) ^ v1;
  v4 = *(*(a1 + 24) + 4);
  v6 = v4 - 1673015719;
  v5 = v4 - 1673015719 < 0;
  v7 = 1673015719 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F5033D40 + (v2 ^ 0x838)) + ((13 * ((v3 - 355322188) >= (4 * v7))) ^ v2)))();
}

uint64_t sub_1D48F51E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, int a21, unsigned int a22, char *a23)
{
  v26 = 675097751 * ((2 * (&a18 & 0x4F8A1058) - &a18 + 813035424) ^ 0x7335CA36);
  a23 = &a15;
  a18 = a14;
  a22 = v26 ^ 0xA33F4F7D;
  a19 = (v25 + 1421510994) ^ v26;
  a20 = v26 ^ 0xC8DD738C;
  v27 = (*(v23 + 8 * (v25 + 2156)))(&a18);
  return (*(v23 + 8 * ((3034 * (a21 == ((v24 + ((v25 - 987) | 0x540) - 2845) ^ (v25 + 1996398814) & 0x1D7B))) ^ v25)))(v27);
}

uint64_t sub_1D48F5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  a18 = (1037613739 * (((&a17 | 0x57A3E20B) - &a17 + (&a17 & 0xA85C1DF0)) ^ 0x86A1CF74)) ^ 0x86F54BA0;
  v19 = (*(v18 + 29168))(&a17);
  return (*(v18 + 8 * ((3862 * (a17 == 671454635)) ^ 0x557u)))(v19);
}

uint64_t sub_1D48F53B0@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5, unsigned int a6, uint64_t *a7)
{
  v11 = (&a3 ^ 0x4B6BCC7E) * a1;
  a6 = v11 ^ 0xCA234B82;
  a3 = v11 + 1487458226;
  a4 = (v10 + 668) ^ v11;
  a5 = v7;
  a7 = &a2;
  v12 = (*(v8 + 8 * (v10 + 3301)))(&a3);
  return (*(v8 + 8 * ((1976 * (*(v7 + 24) == ((7 * (v10 ^ 0x16A)) ^ v9))) ^ v10)))(v12);
}

uint64_t sub_1D48F5448(uint64_t a1)
{
  v6 = *(v3 + v1 - 16);
  v7 = (v3 + a1 - 16);
  *(v7 - 1) = *(v3 + v1 - 32);
  *v7 = v6;
  return (*(v5 + 8 * ((500 * ((v4 + v2) - (v3 & 0xFFFFFFE0) != 3492)) ^ (v4 + v2 - 3296))))();
}

uint64_t sub_1D48F54A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v8 - 1;
  *(a1 + v11) = *(v6 + v11);
  return (*(v10 + 8 * (((v11 == 0) * (v9 ^ (a6 + 2284) ^ 0x77A)) ^ (v7 + v9 + 610))))();
}

uint64_t sub_1D48F552C(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = 675097751 * (((a1 | 0xC62D19F9) - a1 + (a1 & 0x39D2E606)) ^ 0x856D3C6F);
  v2 = *(a1 + 52) + v1;
  v3 = *(a1 + 48) + v1;
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = *(a1 + 16) + v1;
  v7 = *(&off_1F5033D40 + (v2 & 0x60402BDB));
  if (v3 == 918744010 || v3 == 918744007)
  {
    __asm { BRAA            X21, X17 }
  }

  v9 = *(a1 + 40);
  v10 = 1037613739 * (&v13 ^ 0xD1022D7F);
  v19 = *(a1 + 8);
  v17 = (v2 + 1776826004) ^ v10;
  v15 = v5;
  v16 = v4;
  v13 = v10 + 715258468 + v6;
  v14 = v9;
  result = (*(v7 + 8 * (v2 + 1776827076)))(&v13);
  *(a1 + 32) = v18;
  return result;
}

uint64_t sub_1D48F5814@<X0>(int a1@<W0>, uint64_t a2@<X6>, int a3@<W8>)
{
  v12 = (*(a2 + 4 * a3) ^ v3) + (v5 ^ HIDWORD(v7));
  v13 = v12 + ((v11 - 1422425506) & 0x54C877FE ^ 0xD9C864C06ABA05E2) - ((2 * v12) & 0xD57407F4);
  *(a2 + 4 * a1) = v13 ^ v8;
  *(a2 + 4 * a3) = HIDWORD(v13) ^ v9;
  return (*(v6 + 8 * (v11 ^ ((v4 + 1 != a3) * v10))))();
}

uint64_t sub_1D48F5898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, uint64_t a21)
{
  a21 = a18;
  a19 = (v21 + 1346) ^ (1504884919 * ((2 * (&a19 & 0x3B6C5FA0) - &a19 + 1150525529) ^ 0xBF501742));
  v23 = (*(v22 + 8 * (v21 ^ 0xF48)))(&a19);
  return (*(v22 + 8 * (((a20 == 671454635) * (((v21 - 1570068950) & 0x5D955BFE) + 673)) ^ v21)))(v23);
}

uint64_t sub_1D48F5944@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = v3 < v2;
  v6 = a2 + 1;
  if (v5 == v6 > 0xFFFFFFFFCE107AA1)
  {
    LOBYTE(v5) = v6 + v2 < v3;
  }

  return (*(v4 + 8 * ((11 * ((v5 ^ ((a1 + 10) ^ (a1 - 13))) & 1)) ^ a1)))();
}

uint64_t sub_1D48F59B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, uint64_t a12, unsigned int a13, uint64_t *a14)
{
  v17 = v14 - 2826;
  v18 = v14;
  v19 = v14 - 2484;
  v20 = 1361651671 * ((2 * (&a10 & 0x6FD4EB00) - &a10 - 1876224775) ^ 0xDB40D887);
  a14 = &a9;
  a13 = v20 ^ 0xEA879252;
  a10 = v20 + 1487458222;
  a11 = v19 ^ v20;
  a12 = v15;
  v21 = (*(v16 + 8 * (v17 + 2975)))(&a10);
  return (*(v16 + 8 * ((51 * (*(v15 + 24) == (v18 ^ 0x28059BB6))) ^ v17)))(v21);
}

uint64_t sub_1D48F5A70(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 44;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_1D48F5A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, int a18, unsigned int a19, char *a20)
{
  v23 = 675097751 * (((&a15 | 0xD543FA47) - (&a15 & 0xD543FA47)) ^ 0x9603DFD1);
  a20 = &a13;
  a19 = v23 ^ 0xA33F4F7D;
  a15 = a11;
  a16 = (v22 + 1421509568) ^ v23;
  a17 = v23 ^ 0xF4537865;
  v24 = (*(v20 + 8 * (v22 + 730)))(&a15);
  return (*(v20 + 8 * ((1913 * (a18 == ((v22 - 2581) ^ 0x3C8 ^ (v21 + 356)))) ^ v22)))(v24);
}

void jfkdDAjba3jd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2068) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 + dword_1EC7E2068) ^ 0x82))] ^ 0x9E]) - 162);
  v7 = -35 * ((qword_1EC7E2160 + *v6) ^ 0x82);
  v8 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v7 - 4) ^ 0xC4u)) ^ v7) - 5);
  v9 = 1228258013 * ((*v8 + *v6) ^ &v11 ^ 0xC891BCBEBCEAD82);
  *v6 = v9;
  *v8 = v9;
  *a5 = 0;
  *a6 = 0;
  v12[1] = (1037613739 * (((v12 | 0xB518C169) - (v12 & 0xB518C169)) ^ 0x641AEC16)) ^ 0x86F54BA0;
  LOBYTE(v8) = -35 * (*v6 ^ 0x82 ^ *v8);
  v10 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2068) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 + dword_1EC7E2068) ^ 0x82))] ^ 0x8E]) - 127);
  (*(v10 + 8 * ((*(off_1F5034348 + (*(off_1F5033F78 + v8 - 4) ^ 0xF4u) - 12) ^ v8) + 3613)))(v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F5F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) + 1599451059;
  v5 = v4 < 0xB8B37E10;
  v6 = v4 > 0xB8B37E11;
  if (v5)
  {
    v6 = v5;
  }

  return (*(a3 + 8 * ((59 * !v6) ^ 0x318u)))();
}

uint64_t sub_1D48F6058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17)
{
  v19 = v18 - 863113200 > a17;
  if (a17 < a16 != v18 - 863113200 < (((a8 ^ (a8 + 1362)) - 449) ^ 0xCC8DE461))
  {
    v19 = v18 - 863113200 < (((a8 ^ (a8 + 1362)) - 449) ^ 0xCC8DE461);
  }

  return (*(v17 + 8 * ((1019 * !v19) ^ (a5 + a8 + 992))))(a1, a2, 78);
}

uint64_t sub_1D48F60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v22 - 112) = &a17;
  *(v22 - 120) = &a15;
  *(v22 - 104) = (v17 - 750) ^ (((~((v22 - 128) | v19) + ((v22 - 128) & v19)) ^ 0x514614EE) * v20);
  v23 = (*(v18 + 8 * (v17 ^ 0xA6E)))(v22 - 128);
  return (*(v18 + 8 * ((450 * (((((v17 + 62) ^ 7) + 1) ^ (*(v22 - 128) > v21)) & 1)) ^ v17)))(v23);
}

uint64_t sub_1D48F6254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, __int16 a16, char a17, uint64_t a18, uint64_t a19, char *a20, unsigned int a21)
{
  a21 = (v22 + 1887) ^ (843532609 * (((&a18 | 0xD8E6EC39) - &a18 + (&a18 & 0x271913C0)) ^ 0x84ABB8BC));
  a18 = a11;
  a20 = &a13;
  (*(v21 + 8 * (v22 + 3552)))(&a18);
  a21 = (v22 + 1887) ^ (843532609 * (&a18 ^ 0x5C4D5485));
  a18 = a11;
  a20 = &a17;
  (*(v21 + 8 * (v22 ^ 0xE20)))(&a18);
  a18 = a11;
  a20 = &a15;
  a21 = (v22 + 1887) ^ (843532609 * (((&a18 | 0x76945DBD) - (&a18 & 0x76945DBD)) ^ 0x2AD90938));
  (*(v21 + 8 * (v22 ^ 0xE20)))(&a18);
  LODWORD(a18) = (v22 + 1634) ^ (1504884919 * ((2 * (&a18 & 0xB3FCCF0) - &a18 + 1958753033) ^ 0x8F038412));
  a19 = a11;
  v24 = (*(v21 + 8 * (v22 + 3560)))(&a18);
  return (*(v21 + 8 * ((2466 * (HIDWORD(a18) == ((v22 + 1485963107) | 0xA40882CB) + v23)) ^ v22)))(v24);
}

uint64_t sub_1D48F649C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, unsigned int *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = LODWORD(STACK[0x2E8])++;
  *a44 = v58 + 1;
  v59 = *a45;
  v60 = ((v57 - 0x6FE45D7A5B945E3BLL - 2 * ((v57 - 192) & 0x901BA285A46BA285)) ^ 0x2310D5638EA088FFLL) * v56;
  v61 = a2 + 2078902363 + v60;
  *(v57 - 152) = ((a2 + 2078902363) ^ 0x61) - v60;
  *(v57 - 168) = v60 ^ 0x13FF;
  *(v57 - 160) = v60 + v59;
  *(v57 - 192) = 1 - v60;
  *(v57 - 188) = v61 - 36;
  *(v57 - 184) = (a2 + 55968452) ^ v60;
  *(v57 - 180) = v61;
  v62 = (*(a1 + 8 * (a2 ^ 0xBBF)))(v57 - 192);
  return (*(a56 + 8 * *(v57 - 176)))(v62);
}

uint64_t sub_1D48F6574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char *a22, unsigned int a23)
{
  a23 = (v23 + 1599) ^ (843532609 * ((&a20 & 0x3624E1F0 | ~(&a20 | 0x3624E1F0)) ^ 0x95964A8A));
  a20 = a19;
  a22 = &a17;
  v26 = (*(v25 + 8 * (v23 ^ 0xF40)))(&a20);
  return (*(v25 + 8 * ((2625 * (a21 == v24 + 671453633)) ^ v23)))(v26);
}

void sub_1D48F6704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v9 + 32);
  **(v9 + 8) = v8;
  *v11 = a8;
  *v9 = *(v10 + 24);
}

uint64_t sub_1D48F6750@<X0>(int a1@<W8>)
{
  v6 = ((v1 + 814) ^ 0x63B83F81) - v4;
  if (v5 > v6)
  {
    v6 = v5;
  }

  *(*(v2 + 8) + 4 * (a1 - 1 + v6)) = *(*(v2 + 8) + 4 * v6 - 4);
  return (*(v3 + 8 * (((v6 > 1) ^ (3 * ((v1 + 46) ^ 0x89))) & 1 ^ (v1 + 814))))();
}

uint64_t sub_1D48F67B4()
{
  v6 = 1504884919 * ((v5 - 136) ^ 0xFBC3B71B);
  *(v0 + 8) = v4;
  *(v5 - 136) = v1 - v6 + 1578;
  *(v5 - 120) = -38210748 - v6;
  *(v5 - 116) = v6 + 734561478;
  v7 = (*(v2 + 8 * (v1 + 1701)))(v5 - 136);
  return (*(v2 + 8 * (((*(v5 - 112) == 671454635) * ((v1 + 280825872) ^ (v3 + 2719))) ^ v1)))(v7);
}

void zxcm2Qme0x(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E1FD8) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E1FD8) ^ 0x82))] ^ 0xCD]) - 157);
  v4 = *(v3 - 4);
  v5 = *(&off_1F5033D40 + (*(off_1F5034198 + (*(off_1F5034218 + (-35 * (v4 ^ qword_1EC7E2160 ^ 0x82))) ^ 0xB5u) - 8) ^ (-35 * (v4 ^ qword_1EC7E2160 ^ 0x82))) + 21);
  v6 = v4 ^ &v12 ^ *v5;
  *(v3 - 4) = (1228258013 * v6) ^ 0xC891BCBEBCEAD82;
  *v5 = 1228258013 * (v6 ^ 0xC891BCBEBCEAD82);
  v10 = 0;
  v14 = &v10;
  v15 = -1224077185 - 1785193651 * ((v13 - 161856967 - 2 * (v13 & 0xF65A4239)) ^ 0x7BE615);
  LOBYTE(v6) = -35 * ((*v5 + *(v3 - 4)) ^ 0x82);
  v7 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E1FD8) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 + dword_1EC7E1FD8) ^ 0x82))] ^ 0x8C]) - 114);
  (*(v7 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v6 - 4) ^ 0xF5u)) ^ v6) + 3593)))(v13);
  v11 = 0;
  v14 = &v11;
  v15 = -1224077185 - 1785193651 * ((730603192 - (v13 | 0x2B8C1EB8) + (v13 | 0xD473E147)) ^ 0x2252456B);
  v8 = -35 * (*(v3 - 4) ^ 0x82 ^ *v5);
  (*(v7 + 8 * ((*(off_1F50342D8 + (*(off_1F5033F18 + v8 - 12) ^ 0x8Cu) - 12) ^ v8) + 3580)))(v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F6B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q3>)
{
  v8 = (v7 + (a2 + v5));
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + a2);
  *v11 = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), a4)), a3);
  v11[1] = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), a4)), a3);
  return (*(v6 + 8 * ((87 * (a2 + 32 == (v4 - 405) - 10)) ^ (v4 + 2372))))();
}

uint64_t sub_1D48F6CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, int a18, unsigned int a19, char *a20)
{
  v23 = 675097751 * (((&a15 | 0xABA9755) - &a15 + (&a15 & 0xF54568A8)) ^ 0x49FAB2C3);
  a15 = a12;
  a19 = v23 ^ 0xA33F4F7D;
  a20 = &a10;
  a16 = (v22 + 1421511630) ^ v23;
  a17 = v23 ^ 0xCBB87538;
  v24 = (*(v20 + 8 * (v22 ^ 0xD28)))(&a15);
  return (*(v20 + 8 * ((1952 * (a18 == ((v22 + 1101314940) ^ 0x41A4B501 ^ (v21 + 934)) + ((v22 + 1101314940) & 0x3FC))) ^ v22)))(v24);
}

uint64_t sub_1D48F6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, int a18, unsigned int a19, char *a20)
{
  v23 = 675097751 * ((-1485455531 - (&a15 | 0xA775BF55) + (&a15 | 0x588A40AA)) ^ 0x1BCA653C);
  a20 = &a13;
  a15 = a10;
  a19 = v23 ^ 0xA33F4F7D;
  a16 = (v22 + 1421511774) ^ v23;
  a17 = v23 ^ 0xD2660574;
  v24 = (*(v20 + 8 * (v22 + 2936)))(&a15);
  return (*(v20 + 8 * (((a18 == ((v22 - 1339318277) & 0x1F2B ^ (v21 + 502))) * (((v22 + 1960249305) & 0x56F) + 1528)) ^ v22)))(v24);
}

void Mib5yocT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = !v8 && a6 != 0 && a7 != 0 && a8 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48F6FEC(uint64_t a1, uint64_t a2)
{
  v6 = *(&STACK[0x27C] + v2 + 72);
  v7 = (((v4 - 794713) & 0x89DEDBEC ^ 0xDC0CBDF4) & (2 * v2)) + (v2 ^ 0x2AEF3FC8) + v3;
  *(a2 + v7) = (HIBYTE(v6) ^ 0x46) - 2 * ((HIBYTE(v6) ^ 0x46) & 3 ^ HIBYTE(v6) & 1) - 126;
  *(a2 + v7 + 1) = (BYTE2(v6) ^ 0x2C) - ((v6 >> 15) & 4) - 126;
  *(a2 + v7 + 2) = (BYTE1(v6) ^ 0x48) - ((v6 >> 7) & 4) - 126;
  *(a2 + v7 + 3) = v6 ^ 0xB;
  return (*(v5 + 8 * ((4073 * (v2 + 4 < LODWORD(STACK[0x2D8]))) ^ v4)))();
}

uint64_t sub_1D48F70D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, uint64_t *a17)
{
  v20 = 675097751 * ((689940573 - (&a12 | 0x291FA85D) + (&a12 | 0xD6E057A2)) ^ 0x95A07234);
  a17 = &a9;
  a13 = (v19 + 1421510051) ^ v20;
  a14 = v20 ^ 0x3EEA4999;
  a16 = v20 ^ 0xA33F4F7D;
  a12 = a10;
  v21 = (*(v17 + 8 * (v19 + 1213)))(&a12);
  return (*(v17 + 8 * ((811 * (a15 == (((v19 ^ 0x8CB) + 2211) ^ (v18 + 1028)) + 4 * (v19 ^ 0x8CB))) ^ v19)))(v21);
}

void sub_1D48F71A8()
{
  *v7 = *v2;
  *v6 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x55FEE1C555FEE1C5;
  v3 = 1234 * (v0 ^ 0x392) - 2467;
  v4 = *(v2 + 24);
  v5 = *(v2 + 20) | v3;
  *(v2 + 16) = 1438290795;
  *(v2 + 20) = v5;
  *(v8 + 12) = v4;
}

uint64_t sub_1D48F7420@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, unsigned int *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *a14 = a27 + 1;
  v29 = *a15;
  *(v28 - 116) = ((a1 - 340974493) ^ 0xCF) - a12;
  v30 = v28 - 152;
  *(v30 + 8) = v29 ^ a12;
  *(v30 + 16) = a11;
  *(v28 - 152) = a12;
  *(v28 - 120) = a1 - 340974493 - a12;
  *(v28 - 128) = -2124587433 - a12 + a1;
  *(v28 - 124) = ((a1 - 340974493) ^ 0x44) + a12;
  v31 = (*(v27 + 8 * (a1 | 0x812)))(v28 - 152);
  return (*(v27 + 8 * *(v28 - 148)))(v31);
}

uint64_t sub_1D48F7508@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, unsigned int *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v72 + 8 * (a1 + 470)))(*v65, v66, a21 ^ 0xCDE570AF, v65[13] + ((a1 - 1828) ^ (v70 + 1346)), &STACK[0x17B0], v67, v69, &STACK[0x1778]);
  v75 = v73;
  if (v73 == 268435459)
  {
    return (*(a57 + 8 * (((((v68 < 3) ^ (a56 + 19)) & 1) * ((a56 - 2024822248) & 0x78B051DF ^ 0x135)) ^ (a56 + 1193))))(v73, v74);
  }

  if (v73)
  {
    v76 = 5 * (a56 ^ 0x5C4);
    v77 = 210068311 * (((v71 - 192) & 0xAA46FF37 | ~((v71 - 192) | 0xAA46FF37)) ^ 0x2D69A1F);
    *(v71 - 192) = &STACK[0x2FC];
    *(v71 - 184) = (((2 * v73) & 0xD98F3F56) + (v73 ^ v76 ^ 0x6CC79F99) - 1153567232) ^ v77;
    *(v71 - 180) = a56 - v77 - 550;
    v78 = (*(a57 + 8 * (a56 + 2255)))(v71 - 192);
    LODWORD(STACK[0x3DC]) = v68;
    LODWORD(STACK[0x280]) = v75;
    return (*(a57 + 8 * ((2216 * (LODWORD(STACK[0x2FC]) == v76 + 671456137 + ((v76 + 945035164) & 0xC7ABEDFF) - 3038)) ^ v76)))(v78);
  }

  else
  {
    (*(a57 + 8 * (a56 ^ 0xB5E)))(*a23, v67, v69);
    STACK[0x200] = 0;
    LODWORD(STACK[0x288]) = 0;
    v79 = *(a27 + 52);
    v80 = STACK[0x2C8];
    v81 = 742307843 * (((v71 - 192) & 0x536D669 | ~((v71 - 192) | 0x536D669)) ^ 0xE4EBA4C3);
    *(v71 - 184) = &STACK[0x1778];
    *(v71 - 176) = (a56 ^ 0x28C4601D) * (((a21 & 0x7FFFFFFF ^ 0xBCC6A26F) - 1661131253) ^ ((a21 & 0x7FFFFFFF ^ 0x909801B9) - 1331460643) ^ ((a21 & 0x7FFFFFFF ^ 0xE1BBD379) - 1048553699)) - v81 - 546835197;
    *(v71 - 172) = v81 + 683959763 * v79 - 1649510554;
    *(v71 - 192) = (a65 ^ 0x97F377FF) - v81 + ((2 * a65) & 0x2FE6EFFE) + 1759509984;
    *(v71 - 188) = a56 - v81 - 1434;
    *(v71 - 168) = a28;
    *(v71 - 152) = v80;
    v82 = (*(a57 + 8 * (a56 ^ 0xB35)))(v71 - 192);
    v83 = *(v71 - 160);
    LODWORD(STACK[0x2FC]) = v83;
    return (*(a57 + 8 * ((3901 * (v83 == 671454635)) ^ (a56 - 157))))(v82);
  }
}

uint64_t sub_1D48F7850@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v40 = *(&a25 + a2 + 72);
  v41 = ((2 * a2) & 0xF7FD7F98) + (a2 ^ 0xFBFEBFCD) + v37;
  *(a1 + v41) = (HIBYTE(v40) ^ 0x46) - 2 * ((HIBYTE(v40) ^ 0x46) & 3 ^ HIBYTE(v40) & (((v38 - 43) | 0x20) ^ 0x35)) - 126;
  *(a1 + v41 + 1) = (BYTE2(v40) ^ 0x2C) - ((v40 >> 15) & 4) - 126;
  *(a1 + v41 + 2) = (BYTE1(v40) ^ 0x48) - ((v40 >> 7) & 4) - 126;
  *(a1 + v41 + 3) = v40 ^ 0xB;
  return (*(v39 + 8 * ((71 * (a2 + 4 >= a37)) ^ v38)))();
}

uint64_t sub_1D48F7928@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 4) = 671412448;
  return result;
}

uint64_t sub_1D48F793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, int a22, unsigned int a23)
{
  v26 = 1564307779 * (&a20 ^ 0x970DCC13);
  a20 = (v25 + 310) ^ v26;
  a23 = a13 - ((2 * a13) & 0xFBF408DA) + 2113537133 - v26;
  a21 = a18;
  (*(v24 + 8 * (v25 + 2949)))(&a20);
  v27 = 1564307779 * ((&a20 + 133585877 - 2 * (&a20 & 0x7F65BD5)) ^ 0x90FB97C6);
  a20 = (v25 + 310) ^ v27;
  a21 = a18;
  a23 = a14 - ((2 * a14) & 0xFBF408DA) + 2113537133 - v27;
  (*(v24 + 8 * (v25 + 2949)))(&a20);
  v28 = 1564307779 * (((&a20 | 0x18E62A1F) - (&a20 & 0x18E62A1F)) ^ 0x8FEBE60C);
  a21 = a18;
  a20 = (v25 + 310) ^ v28;
  a23 = v23 - v28 + 2113537133 - (((4 * v25) ^ 0xFBF40322) & (2 * v23));
  v29 = (*(v24 + 8 * (v25 + 2949)))(&a20);
  return (*(v24 + 8 * (v25 ^ (4020 * (v23 == 0)))))(v29);
}

void sub_1D48F7CB0(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  STACK[0x2F0] = a21;
  STACK[0x240] = a1;
  JUMPOUT(0x1D4927474);
}

uint64_t sub_1D48F7CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a16 = &a13;
  a15 = (50899313 * (((&a15 ^ 0x8160000 | 0xC7A830FF) + (&a15 ^ 0x40A81027 | 0x3857CF00)) ^ 0x62753A5C)) ^ 0x72E;
  v18 = (*(v17 + 29464))(&a15);
  return (*(v17 + 8 * ((461 * (a17 == 671454635)) ^ 0x6A8u)))(v18);
}

uint64_t sub_1D48F7DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = (v62 - 1859) | 0xCA8;
  v65 = (*(v63 + 8 * (v64 + 419)))(1576);
  return (*(a62 + 8 * (((v65 != 0) * (((v64 - 1171) | 0x22) ^ 0x99E)) ^ v64)))(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

void sub_1D48F7E34(uint64_t a1)
{
  v2 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2000) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2000) ^ 0x82))] ^ 0x9E]) - 30);
  v3 = -35 * ((qword_1EC7E2160 - *v2) ^ 0x82);
  v4 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v3 - 4) ^ 0xC4u)) ^ v3) - 5);
  v5 = (*v4 - *v2) ^ &v9;
  v6 = 1228258013 * v5 + 0x5804E9A2B9663D3ALL;
  v7 = 1228258013 * (v5 ^ 0xC891BCBEBCEAD82);
  *v2 = v6;
  *v4 = v7;
  LOBYTE(v4) = -35 * ((v7 - *v2) ^ 0x82);
  LODWORD(v4) = (*(off_1F50343C8 + (*(off_1F50340C8 + v4 - 8) ^ 0x6Cu) - 8) ^ v4);
  v8 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2000 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * (dword_1EC7E2000 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x60]) - 68);
  (*(v8 + 8 * (v4 + 3554)))(*(&off_1F5033D40 + v4 - 101) - 12, sub_1D4933538);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48F7FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v23 = 675097751 * (&a14 ^ 0x43402596);
  a14 = a11;
  a15 = (v21 + 1421510005) ^ v23;
  a16 = v23 ^ 0x42EE745;
  a19 = &a13;
  a18 = v23 ^ 0xA33F4F7D;
  v24 = (*(v20 + 8 * (v21 + 1167)))(&a14);
  return (*(v20 + 8 * (((a17 == ((v21 - 1548) ^ (v22 + 192))) * ((v21 - v19 - 1548) ^ 0x54597B6B)) ^ v21)))(v24);
}

void sub_1D48F8324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *v34 = (((v32 + 170983680) | 0x85840028) - 263520552 + (((a17 - v32) | (v32 - a17)) >= 0)) ^ (v32 + 1);
  (*(v33 + 8 * (v32 + 3699)))(a32);
  vld1q_dup_f32(v34);
  JUMPOUT(0x1D492CABCLL);
}

void sub_1D48F83A4(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1361651671 * ((-2 - ((~a1 | 0xAB931B87) + (a1 | 0x546CE478))) ^ 0xE0F8D7F9));
  v2 = *(*(a1 + 8) + 24) == 671454635;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48F8474@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 3601));

  return v3(v1);
}

uint64_t sub_1D48F8500(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1D48F8560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19)
{
  v24 = 1564307779 * ((2 * (&a14 & 0x1711AD28) - &a14 - 387034415) ^ 0x7FE39EC2);
  a16 = a11;
  a18 = v21 - ((2 * v21) & 0xFBF408DA) - v24 + 2113537133;
  a14 = v24 ^ 0x434;
  (*(v22 + 29720))(&a14);
  v25 = 742307843 * ((2 * (&a14 & 0x3D52B258) - &a14 + 1118653856) ^ 0x5C8FC0F5);
  a17 = v25 ^ ((v20 ^ 0xFB7DFCFE) + 345920384 + ((2 * v20) & 0xF6FBF9FC));
  a14 = v25 ^ 0x491;
  a19 = a11;
  a16 = v19;
  v26 = (*(v22 + 29560))(&a14);
  return (*(v22 + 8 * ((2790 * (a15 == ((v23 - 443) ^ 0x65B))) ^ 0x3E6u)))(v26);
}

uint64_t sub_1D48F86FC()
{
  if (v0 == -156558184 || v0 == 1147407567 || v0 == -38210748)
  {
    JUMPOUT(0x1D48F87D4);
  }

  return (*(v3 + 8 * ((v2 - 3637) ^ (2828 * ((v1 & 8) == 0)))))();
}

uint64_t sub_1D48F88F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, int a25, uint64_t a26)
{
  v31 = 742307843 * ((2 * (&a22 & 0x38567748) - &a22 - 945190731) ^ 0xD98B05E0);
  a25 = (((2 * v28) & 0x3DFBB4FC) - 249661952 + ((((v26 - 531783220) & 0x1FB25FFF) + 519951025) ^ v28)) ^ v31;
  a26 = a20;
  a22 = (v26 - 368) ^ v31;
  a24 = v27;
  v32 = (*(v30 + 8 * (v26 + 2158)))(&a22);
  return (*(v30 + 8 * ((3175 * (a23 == v29)) ^ v26)))(v32);
}

uint64_t sub_1D48F8EC4(int a1, unsigned int a2, int a3, int a4)
{
  v11 = *(v7 + 4 * (a1 + v6 - 14));
  HIDWORD(v12) = *(v7 + 4 * (a1 + v6 - 8)) ^ *(v7 + 4 * (a1 + v6 - 3)) ^ v11 ^ *(v7 + 4 * (a1 + v6 - 16)) ^ v9;
  LODWORD(v12) = *(v7 + 4 * (a1 + v6 - 8)) ^ *(v7 + 4 * (a1 + v6 - 3)) ^ v11 ^ *(v7 + 4 * (a1 + v6 - 16));
  *(v7 + 4 * (v5 + v8 + (v4 ^ a2))) = (v12 >> 31) ^ a3;
  return (*(v10 + 8 * ((((v5 + 1 + a1) > 0x4F) * a4) ^ v4)))();
}

uint64_t sub_1D48F8F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = a12 - 404044329;
  if ((a12 - 404044329) < 0x2A2D4E21 != v12 > 0xD5D2B1DE)
  {
    v16 = v15 < 0x2A2D4E21;
  }

  else
  {
    v16 = ((v14 - 1311003284) & 0x4E244F27) + v12 + 707612187 < v15;
  }

  return (*(v13 + 8 * ((142 * v16) ^ v14)))();
}

void sub_1D48F8FB8(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

void sub_1D48F9100(uint64_t a1@<X8>, unsigned int a2, int a3, uint64_t a4)
{
  v7 = 1785193651 * ((2 * (&a2 & 0x7B0E6BF0) - &a2 - 2064542711) ^ 0x72D03025);
  a4 = v4;
  a2 = ((v6 + 1123500097) & 0xBD08BFBE) - (((655070200 - 2 * v5) & 0x9BCCD55E) + v5 + v7) + 1634479375;
  a3 = v6 - 92 - v7 - 558;
  (*(a1 + 8 * (v6 + 1787)))(&a2);
  JUMPOUT(0x1D48F91ACLL);
}

uint64_t sub_1D48F9260@<X0>(int a1@<W8>)
{
  if (v1 + 1 == v2)
  {
    v11 = 0;
  }

  else
  {
    v10 = (*(v7 + v1) ^ v6) - (*(v5 + v1) ^ v6);
    v11 = v10 + v8 - (v3 & (2 * v10)) == v8;
  }

  v12 = !v11;
  return (*(v9 + 8 * ((v12 * v4) ^ a1)))();
}

uint64_t sub_1D48F93B8()
{
  v3 = 64 - (((142 * (v1 ^ 0x5DA)) ^ 0xAFDA702u) + v0);
  v4 = -184395433 - v0;
  if (HIDWORD(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= v3;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((v6 * (v1 ^ 0x5F3)) ^ v1)))();
}

uint64_t sub_1D48F9474@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 843532609 * ((((&v5 | 0x5D3A686E) ^ 0xFFFFFFFE) - (~&v5 | 0xA2C59791)) ^ 0xFE88C314) - 495;
  v5 = v3;
  v6 = v3;
  v8 = a1;
  return (*(v1 + 8 * (v2 + 2963)))(&v5);
}

uint64_t sub_1D48F94D8()
{
  v4 = (v3 - 129674171) & 0x7BAADEF;
  v8 = v3 - ((((2 * &v8) | 0xDEA54A22) - &v8 + 279796463) ^ 0x9FA0901) * v1 + 1275;
  v9 = v7;
  (*(v0 + 8 * (v3 + 2727)))(&v8);
  v9 = v6;
  v8 = v4 - ((2 * (&v8 & 0x45BA3FB0) - &v8 + 977649739) ^ 0xDCED6C5B) * v1 + 710;
  (*(v0 + 8 * (v4 ^ 0xB8Eu)))(&v8);
  return (v2 - 671454635);
}

uint64_t sub_1D48F95E4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 | 0x6A4u));

  return v3(v1);
}

uint64_t sub_1D48F9618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = (*(v65 + 8 * (v62 ^ 0xBBD)))();
  STACK[0x2F0] -= 16;
  return (*(a62 + 8 * (((((v62 - 556713999) & 0x212EC2EF) + 2698) * (v64 == v63)) ^ (v62 - 1311))))(v66);
}

uint64_t sub_1D48F9680(int8x16_t a1, int8x16_t a2)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 == 32) * v6) ^ (v2 + 50))))();
}

uint64_t sub_1D48F996C()
{
  if (v0)
  {
    v3 = (v1 ^ 0xDE4B17F7) + 1878456830 + ((2 * v1) & 0xBC962FEE) == 1312952821;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((61 * v4) ^ 0xDC7u)))();
}

uint64_t sub_1D48F9B64()
{
  *(v3 + 4) = v0;
  *(v5 - 144) = v1 + 1320 - (((v5 - 144) & 0x97C577CD | ~((v5 - 144) | 0x97C577CD)) ^ 0x5089264) * v2 - 1569;
  *(v5 - 136) = v3;
  *(v5 - 128) = &v7;
  return (*(v4 + 8 * ((v1 + 1320) ^ 0x3C2)))(v5 - 144);
}

uint64_t sub_1D48F9C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v36 - 136) = v35;
  *(v36 - 128) = v35;
  *(v36 - 144) = (v31 + 3113) ^ ((((v36 - 144) & 0xD215B06B | ~((v36 - 144) | 0xD215B06B)) ^ 0xBAE78387) * v34);
  *(v36 - 120) = &a31;
  *(v36 - 112) = a15;
  *(v36 - 104) = v33;
  v37 = (*(v32 + 8 * (v31 ^ 0xE16)))(v36 - 144);
  return (*(v32 + 8 * (((a13 - 265678217 < (((v31 ^ 0xD7E) + 587705834) & 0xDCF84CED ^ 0x7FFFF757)) * (((v31 ^ 0xD7E) - 3362) ^ 0x28)) ^ ((v31 ^ 0xD7E) - 3235))))(v37);
}

void Mt76Vq80ux(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48F9D84@<X0>(int a1@<W8>)
{
  if ((a1 + 1884712538) <= 0x18 && ((1 << (a1 + 90)) & 0x1094001) != 0)
  {
    return sub_1D48F9E0C();
  }

  else
  {
    return sub_1D48F9DC0();
  }
}

uint64_t sub_1D48F9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *v43 = v43[623] + 623 + (((((v40 - 624) ^ (v42 - 623)) - 1) & (623 - v40)) >> 63) - 622;
  v45 = 50899313 * ((~((v44 - 144) | 0x26ADC8F1C1275B38) + ((v44 - 144) & 0x26ADC8F1C1275B38)) ^ 0x6A5940E814138EBDLL);
  *(v44 - 144) = 1 - v45;
  *(v44 - 140) = v45 - 1034421584;
  *(v44 - 104) = -1034421553 - v45;
  *(v44 - 136) = v45 ^ 0x3560892;
  *(v44 - 132) = v45 - 1034421665;
  *(v44 - 120) = v45 ^ 3;
  *(v44 - 112) = (v41 + 1) + v45;
  v46 = (*(v38 + 8 * (v39 ^ 0x8FB50128)))(v44 - 144);
  return (*(a38 + 8 * *(v44 - 128)))(v46);
}

uint64_t sub_1D48F9FFC()
{
  v8 = v5 ^ ((v5 ^ 0xFFB123ED) + 678676849) ^ ((v5 ^ 0x1219D423) - 975487297) ^ ((v5 ^ 0x1BEA1C53) - 869730609) ^ 0x55C7110F ^ ((v5 ^ 0x22F44E35 ^ (v6 - 38798536) & 0xFEDBB4CB) + 163386467);
  v9 = v7 - 136;
  v10 = 1564307779 * (((((v7 - 136) | 0x3EC26900) ^ 0xFFFFFFFE) - (~(v7 - 136) | 0xC13D96FF)) ^ 0x56305AEC);
  v11 = (v7 - 136);
  *(v7 - 128) = *v3;
  *(v7 - 116) = v8 - v10;
  *(v7 - 136) = (v6 + 878) ^ v10;
  (*(v4 + 8 * (v6 + 3517)))(v7 - 136);
  v12 = *v3;
  v13 = 1785193651 * (((~v9 | 0x40768F135E045478) + (v9 | 0xBF8970ECA1FBAB87)) ^ 0xE011CDD457DA0FAALL);
  *(v7 - 116) = v6 + 3415 - v13;
  *v11 = v12;
  *(v7 - 128) = v13 ^ (v2 - ((2 * v2) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  (*(v4 + 8 * (v6 ^ 0xEA3)))(v7 - 136);
  v14 = *v3;
  v15 = 1564307779 * ((v7 - 754439715 - 2 * ((v7 - 136) & 0xD3082A65)) ^ 0x4405E676);
  *(v7 - 136) = (v6 + 878) ^ v15;
  *(v7 - 116) = v1 + 2113537133 + (~(2 * v1) | 0x40BF725) - v15 + 1;
  *(v7 - 128) = v14;
  (*(v4 + 8 * (v6 + 3517)))(v7 - 136);
  v16 = *v3;
  v17 = 1785193651 * ((2 * (v9 & 0x4A8E2AE63E2260F8) - v9 - 0x4A8E2AE63E2260FELL) ^ 0xEAE9682137FC3B2ELL);
  *(v7 - 116) = v6 + 3415 - v17;
  *v11 = v16;
  *(v7 - 128) = v17 ^ (v0 - ((2 * v0) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  (*(v4 + 8 * (v6 ^ 0xEA3)))(v7 - 136);
  v18 = 1564307779 * ((v7 + 1337509242 - 2 * ((v7 - 136) & 0x4FB8C602)) ^ 0xD8B50A11);
  *(v7 - 128) = *v3;
  *(v7 - 136) = (v6 + 878) ^ v18;
  *(v7 - 116) = 2113537133 - v18;
  v19 = (*(v4 + 8 * (v6 ^ 0xE45)))(v7 - 136);
  return (*(v4 + 8 * (((4 * (*(v7 - 120) == 671454635)) | (8 * (*(v7 - 120) == 671454635))) ^ v6)))(v19);
}

void sub_1D48FA3C8(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  a3 = v7 - 435584651 * (((&a3 | 0xA4356864) - &a3 + (&a3 & 0x5BCA9798)) ^ 0xC9077232) + 1336;
  a4 = v6;
  a5 = v5;
  (*(a1 + 8 * (v7 ^ 0xC65)))(&a3);
  JUMPOUT(0x1D48E04F0);
}

uint64_t sub_1D48FA42C(uint64_t a1)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (v2 + v4 + 3040)) ^ (v2 + v4 + 120))))();
}

uint64_t sub_1D48FA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int32x4_t a30, int32x4_t a31, int32x4_t a32, int32x4_t a33)
{
  v120 = vdupq_n_s32(0x73E6502Fu);
  v121.i64[0] = 0x8282828282828282;
  v121.i64[1] = 0x8282828282828282;
  v122 = vdupq_n_s32(0x73E6502Bu);
  a24 = 89 * (a5 ^ (a5 - 4));
  a23 = v34 + ((a24 - 324) | 0x518u) - 1272;
  a25 = v34 - 16;
  v123 = (a5 - 222075752) & 0x8369DF5B;
  v124 = v123 ^ 0x703;
  a22 = v124 + 366385873;
  a21 = v123 ^ 0x6E3;
  v125 = *(v36 + 8 * (v38 + v33 + 46));
  v39 = LODWORD(STACK[0x2C4]);
  v40 = STACK[0x2CC];
  v41 = LODWORD(STACK[0x2D0]);
  v42 = (LOBYTE(STACK[0x2DC]) - ((2 * LOBYTE(STACK[0x2DC])) & 0x77) - 63);
  if (v42 == 191)
  {
    v127 = vld4q_s8(&STACK[0x27C]);
    v65 = veorq_s8(v127.val[0], v121);
    v66 = vmovl_high_u8(v65);
    v67 = vmovl_u8(*v65.i8);
    v68 = veorq_s8(v127.val[1], v121);
    _Q21 = vmovl_high_u8(v68);
    _Q20 = vmovl_u8(*v68.i8);
    v71 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v72 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v73 = veorq_s8(v127.val[2], v121);
    v74 = vmovl_u8(*v73.i8);
    v75 = vmovl_high_u8(v73);
    v127.val[0] = veorq_s8(v127.val[3], v121);
    v127.val[1] = vmovl_u8(*v127.val[0].i8);
    v127.val[2] = vmovl_u16(*v127.val[1].i8);
    v127.val[1] = vmovl_high_u16(v127.val[1]);
    v127.val[0] = vmovl_high_u8(v127.val[0]);
    v127.val[3] = vmovl_u16(*v127.val[0].i8);
    v127.val[0] = vmovl_high_u16(v127.val[0]);
    v76 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v75, 8uLL)), vshlq_n_s32(vmovl_high_u16(v66), 0x18uLL)), v127.val[0]);
    v77 = vorrq_s8(vorrq_s8(vorrq_s8(v72, vshll_n_u16(*v75.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v66.i8), 0x18uLL)), v127.val[3]);
    v78 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v74, 8uLL)), vshlq_n_s32(vmovl_high_u16(v67), 0x18uLL)), v127.val[1]);
    v79 = vorrq_s8(vorrq_s8(vorrq_s8(v71, vshll_n_u16(*v74.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v67.i8), 0x18uLL)), v127.val[2]);
    v127.val[0] = veorq_s8(vandq_s8(v76, v120), (*v127.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v127.val[3] = veorq_s8(vandq_s8(v77, v120), (*&v127.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v127.val[1] = veorq_s8(vandq_s8(v78, v120), (*&v127.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v127.val[2] = veorq_s8(vandq_s8(v79, v120), (*&v127.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    a30 = vaddq_s32(vsubq_s32(v79, vaddq_s32(v127.val[2], v127.val[2])), v122);
    a31 = vaddq_s32(vsubq_s32(v78, vaddq_s32(v127.val[1], v127.val[1])), v122);
    a32 = vaddq_s32(vsubq_s32(v77, vaddq_s32(v127.val[3], v127.val[3])), v122);
    a33 = vaddq_s32(vsubq_s32(v76, vaddq_s32(v127.val[0], v127.val[0])), v122);
    v80 = &a30 + v37 + 686411500;
    *v80 = v35 ^ __ROR4__(*(v80 - 8) ^ *(v80 - 3) ^ *(v80 - 14) ^ *(v80 - 16), 31);
    return (*(v36 + 8 * ((1116 * (a23 == 686411501)) ^ a24)))(v39);
  }

  else
  {
    if (v42 == 192)
    {
      v126 = vld4q_s8(&STACK[0x27C]);
      v43 = veorq_s8(v126.val[0], v121);
      v44 = vmovl_u8(*v43.i8);
      v45 = vmovl_u16(*v44.i8);
      v46 = vmovl_high_u8(v43);
      v47 = vmovl_u16(*v46.i8);
      v48 = veorq_s8(v126.val[1], v121);
      v49 = vmovl_high_u8(v48);
      v50 = vmovl_u8(*v48.i8);
      v51 = vorrq_s8(vshll_high_n_u16(v49, 8uLL), vmovl_high_u16(v46));
      v52 = vorrq_s8(vshll_n_u16(*v49.i8, 8uLL), v47);
      v53 = vorrq_s8(vshll_high_n_u16(v50, 8uLL), vmovl_high_u16(v44));
      v54 = vorrq_s8(vshll_n_u16(*v50.i8, 8uLL), v45);
      v55 = veorq_s8(v126.val[2], v121);
      _Q21 = vmovl_u8(*v55.i8);
      _Q20 = vmovl_high_u8(v55);
      __asm
      {
        SHLL2           V22.4S, V20.8H, #0x10
        SHLL2           V23.4S, V21.8H, #0x10
      }

      v126.val[0] = veorq_s8(v126.val[3], v121);
      v126.val[1] = vmovl_high_u8(v126.val[0]);
      v126.val[0] = vmovl_u8(*v126.val[0].i8);
      v126.val[2] = vorrq_s8(vorrq_s8(v51, _Q22), vshlq_n_s32(vmovl_high_u16(v126.val[1]), 0x18uLL));
      v126.val[1] = vorrq_s8(vorrq_s8(v52, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v126.val[1].i8), 0x18uLL));
      v126.val[3] = vorrq_s8(vorrq_s8(v53, _Q23), vshlq_n_s32(vmovl_high_u16(v126.val[0]), 0x18uLL));
      v126.val[0] = vorrq_s8(vorrq_s8(v54, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v126.val[0].i8), 0x18uLL));
      v64 = vdupq_n_s32(0xE7CCA056);
      a30 = vaddq_s32(vsubq_s32(v126.val[0], vandq_s8(vaddq_s32(v126.val[0], v126.val[0]), v64)), v122);
      a31 = vaddq_s32(vsubq_s32(v126.val[3], vandq_s8(vaddq_s32(v126.val[3], v126.val[3]), v64)), v122);
      a32 = vaddq_s32(vsubq_s32(v126.val[1], vandq_s8(vaddq_s32(v126.val[1], v126.val[1]), v64)), v122);
      a33 = vaddq_s32(vsubq_s32(v126.val[2], vandq_s8(vaddq_s32(v126.val[2], v126.val[2]), v64)), v122);
      JUMPOUT(0x1D49256ACLL);
    }

    v82 = (((v39 ^ 0xDC928706) + 594376954) ^ ((v39 ^ 0x44FDC368) - 1157481320) ^ ((v39 ^ 0xDE430CE7) + 566031129)) + (((LODWORD(STACK[0x2C4]) ^ 0xDADB62E6) + 623156506) ^ ((LODWORD(STACK[0x2C4]) ^ 0x3E7EDD10) - 1048501520) ^ ((LODWORD(STACK[0x2C4]) ^ 0xA289F77F) + 1568016513)) - 195577584;
    v83 = (v82 ^ 0x1402D21A) & (2 * (v82 & 0x9800D802)) ^ v82 & 0x9800D802;
    v84 = ((2 * (v82 ^ 0x402521E)) ^ 0x38051438) & (v82 ^ 0x402521E) ^ (2 * (v82 ^ 0x402521E)) & 0x9C028A1C;
    v85 = v84 ^ 0x84028A04;
    v86 = (v84 ^ 0x18) & (4 * v83) ^ v83;
    v87 = ((4 * v85) ^ 0x700A2870) & v85 ^ (4 * v85) & 0x9C028A1C;
    v88 = (v87 ^ 0x10020800) & (16 * v86) ^ v86;
    v89 = ((16 * (v87 ^ 0x8C00820C)) ^ 0xC028A1C0) & (v87 ^ 0x8C00820C) ^ (16 * (v87 ^ 0x8C00820C)) & 0x9C028A10;
    v90 = v88 ^ 0x9C028A1C ^ (v89 ^ 0x80008000) & (v88 << 8);
    v91 = v82 ^ (2 * ((v90 << 16) & 0x1C020000 ^ v90 ^ ((v90 << 16) ^ 0xA1C0000) & (((v89 ^ 0x1C020A1C) << 8) & 0x1C020000 ^ (((v89 ^ 0x1C020A1C) << 8) ^ 0x28A0000) & (v89 ^ 0x1C020A1C) ^ 0x1C000000)));
    v92 = (((LODWORD(STACK[0x2C8]) ^ 0x64856EBF) - 1686466239) ^ ((LODWORD(STACK[0x2C8]) ^ 0x685ADEE6) - 1750785766) ^ ((LODWORD(STACK[0x2C8]) ^ 0x4AF3F8D0) - 1257502928)) + (((LODWORD(STACK[0x2C8]) ^ 0x7A2615DC) - 2049316316) ^ ((LODWORD(STACK[0x2C8]) ^ 0x7340915F) - 1933611359) ^ ((LODWORD(STACK[0x2C8]) ^ 0x4F4ACC0A) - 1330301962)) - 1432748801;
    v93 = (v92 ^ 0xD5BEC4DA) & (2 * (v92 & 0xE1BE9413)) ^ v92 & 0xE1BE9413;
    v94 = ((2 * (v92 ^ 0x95C3ECD8)) ^ 0xE8FAF196) & (v92 ^ 0x95C3ECD8) ^ (2 * (v92 ^ 0x95C3ECD8)) & 0x747D78CA;
    v95 = v94 ^ 0x14050849;
    v96 = (v94 ^ 0x787080) & (4 * v93) ^ v93;
    v97 = ((4 * v95) ^ 0xD1F5E32C) & v95 ^ (4 * v95) & 0x747D78C8;
    v98 = (v97 ^ 0x50756000) & (16 * v96) ^ v96;
    v99 = ((16 * (v97 ^ 0x240818C3)) ^ 0x47D78CB0) & (v97 ^ 0x240818C3) ^ (16 * (v97 ^ 0x240818C3)) & 0x747D78C0;
    v100 = v98 ^ 0x747D78CB ^ (v99 ^ 0x44550800) & (v98 << 8);
    LODWORD(STACK[0x2C4]) = v91 ^ 0xF62984B3;
    LODWORD(STACK[0x2C8]) = v92 ^ (2 * ((v100 << 16) & 0x747D0000 ^ v100 ^ ((v100 << 16) ^ 0x78CB0000) & (((v99 ^ 0x3028704B) << 8) & 0x747D0000 ^ 0x50000 ^ (((v99 ^ 0x3028704B) << 8) ^ 0x7D780000) & (v99 ^ 0x3028704B)))) ^ 0xAFFA2D0C;
    v101 = (((v40 ^ 0xE2A08211) + 492797423) ^ ((v40 ^ 0x21088D66) - 554208614) ^ ((v40 ^ 0x858447FE) + 2054928386)) + (((LODWORD(STACK[0x2CC]) ^ 0xC0F4CF7D) + 1057697923) ^ ((LODWORD(STACK[0x2CC]) ^ 0xAF0036A1) + 1358940511) ^ ((LODWORD(STACK[0x2CC]) ^ 0x29D8B155) - 702067029)) - 618483108;
    v102 = (v101 ^ 0xBDA1DC26) & (2 * (v101 & 0xB135DEB6)) ^ v101 & 0xB135DEB6;
    v103 = ((2 * (v101 ^ 0xDDA97466)) ^ 0xD93955A0) & (v101 ^ 0xDDA97466) ^ (2 * (v101 ^ 0xDDA97466)) & 0x6C9CAAD0;
    v104 = v103 ^ 0x2484AA50;
    v105 = (v103 ^ 0x48180080) & (4 * v102) ^ v102;
    v106 = ((4 * v104) ^ 0xB272AB40) & v104 ^ (4 * v104) & 0x6C9CAAD0;
    v107 = (v106 ^ 0x2010AA40) & (16 * v105) ^ v105;
    v108 = ((16 * (v106 ^ 0x4C8C0090)) ^ 0xC9CAAD00) & (v106 ^ 0x4C8C0090) ^ (16 * (v106 ^ 0x4C8C0090)) & 0x6C9CAAD0;
    v109 = v107 ^ 0x6C9CAAD0 ^ (v108 ^ 0x4888A800) & (v107 << 8);
    v110 = v101 ^ (2 * ((v109 << 16) & 0x6C9C0000 ^ v109 ^ ((v109 << 16) ^ 0x2AD00000) & (((v108 ^ 0x241402D0) << 8) & 0x6C9C0000 ^ 0x60140000 ^ (((v108 ^ 0x241402D0) << 8) ^ 0x1CAA0000) & (v108 ^ 0x241402D0))));
    v111 = (((v41 ^ 0xC58B0E83) + 980742525) ^ ((v41 ^ 0x19A06113) - 429941011) ^ ((v41 ^ 0x9A072719) + 1710807271)) + (((LODWORD(STACK[0x2D0]) ^ 0x2E507224) - 777024036) ^ ((LODWORD(STACK[0x2D0]) ^ 0xD9AB7527) + 643074777) ^ ((LODWORD(STACK[0x2D0]) ^ 0xB1D74F8A) + 1311289462)) - 1083023789;
    v112 = (v111 ^ 0xEAC7A0BF) & (2 * (v111 & 0xCCE632BF)) ^ v111 & 0xCCE632BF;
    v113 = ((2 * (v111 ^ 0xF203E0FB)) ^ 0x7DCBA488) & (v111 ^ 0xF203E0FB) ^ (2 * (v111 ^ 0xF203E0FB)) & 0x3EE5D244;
    v114 = v113 ^ 0x2245244;
    v115 = (v113 ^ 0x34818000) & (4 * v112) ^ v112;
    v116 = ((4 * v114) ^ 0xFB974910) & v114 ^ (4 * v114) & 0x3EE5D244;
    v117 = (v116 ^ 0x3A854000) & (16 * v115) ^ v115;
    v118 = ((16 * (v116 ^ 0x4609244)) ^ 0xEE5D2440) & (v116 ^ 0x4609244) ^ (16 * (v116 ^ 0x4609244)) & 0x3EE5D240;
    v119 = v117 ^ 0x3EE5D244 ^ (v118 ^ 0x2E450000) & (v117 << 8);
    LODWORD(STACK[0x2CC]) = v110 ^ 0x7F00C39F;
    LODWORD(STACK[0x2D0]) = v111 ^ (2 * ((v119 << 16) & 0x3EE50000 ^ v119 ^ ((v119 << 16) ^ 0x52440000) & (((v118 ^ 0x10A0D204) << 8) & 0x3EE50000 ^ 0x1A250000 ^ (((v118 ^ 0x10A0D204) << 8) ^ 0x65D20000) & (v118 ^ 0x10A0D204)))) ^ 0xD389DEBE;
    return v125(1954349056, 469893120, v41, 98, a5, &STACK[0x27C], v123, v124, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1D48FA46C(char a1)
{
  v6 = *(&STACK[0x27C] + v1 + 72);
  v7 = ((2 * v1) & 0xCEEB8E28) + (v1 ^ 0xE775C715) + v2;
  *(v4 + v7) = v3 ^ a1 ^ 0x6F ^ v6;
  *(v4 + v7 + 1) = (BYTE1(v6) ^ 0x48) - ((v6 >> 7) & 4) - 126;
  *(v4 + v7 + 2) = (BYTE2(v6) ^ 0x2C) - ((v6 >> 15) & 4) - 126;
  *(v4 + v7 + 3) = (HIBYTE(v6) ^ 0x46) - ((2 * (HIBYTE(v6) ^ 0x46)) & 4) - 126;
  return (*(v5 + 8 * (v3 | (8 * (v1 + 4 < LODWORD(STACK[0x2D8]))))))();
}

void sub_1D48FA6F8(uint64_t a1)
{
  v1 = *(a1 + 16) - 1037613739 * ((-2 - ((a1 | 0x8BAD1AB) + (~a1 | 0xF7452E54))) ^ 0x2647032B);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48FA8B4()
{
  v3 = ((v0 + 1350) ^ 0xFFFFFFFFFFFFF55CLL) + v1;
  v5 = v3 < 0x10 && ((v1 - 1) & 0xFu) >= (v3 & 0xF);
  return (*(v2 + 8 * (v0 ^ (2 * v5))))(v1);
}

void jmoibFLZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48FA960@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, char a9, __int16 a10, char a11, __int16 a12, char a13, __int16 a14, char a15)
{
  v17 = a2 + 314;
  v18 = a2 + 1719;
  v19 = 435584651 * ((((v16 - 160) | 0xFF3FEFEB) + (~(v16 - 160) | 0xC01014)) ^ 0x920DF5BC);
  STACK[0x248] = &a13;
  STACK[0x220] = &a11;
  STACK[0x250] = &a15;
  STACK[0x230] = a7;
  STACK[0x238] = &a9;
  *(v16 - 148) = v19 + a2 + 314 + 1600;
  *(v16 - 128) = (((a2 - 570458127) & 0xFEBFFCAF ^ 0x4BEA20F) + a1) ^ v19;
  v20 = (*(v15 + 8 * (a2 + 3734)))(v16 - 160);
  return (*(v15 + 8 * ((1257 * (*(v16 - 152) == v18 + 671452916)) ^ v17)))(v20);
}

uint64_t sub_1D48FAB68()
{
  v4 = (v0 + 1335378933) & 0x27BE7F;
  v8 = v0 - ((((&v8 | 0xA4B9B90E) ^ 0xFFFFFFFE) - (~&v8 | 0x5B4646F1)) ^ 0xBDEEEAE1) * v2 + 1230;
  v9 = v7;
  (*(v1 + 8 * (v0 + 2682)))(&v8);
  v9 = v6;
  v8 = v4 - ((((2 * &v8) | 0x4F6FE602) - &v8 - 666366721) ^ 0xC11F5F11) * v2 + 601;
  (*(v1 + 8 * (v4 ^ 0x83B)))(&v8);
  return (v3 - 671454635);
}

uint64_t sub_1D48FAD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v22 - 120) = (v19 + 1398) ^ (1504884919 * ((~((v22 - 128) | 0x7395A33) + ((v22 - 128) & 0x7395A33)) ^ 0x30512D7));
  *(v22 - 112) = &a17;
  *(v22 - 128) = &a19;
  v23 = (*(v20 + 8 * (v19 + 1909)))(v22 - 128);
  return (*(v20 + 8 * ((((v19 + 1789874351) & 0x9550A937 ^ 0xCFC) * (v21 == 1)) ^ v19)))(v23);
}

uint64_t sub_1D48FADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15, unsigned int a16, char *a17, int a18)
{
  v20 = 1361651671 * (((&a15 ^ 0x5D5B1462) & 0xD8870F9B | ~(&a15 ^ 0x5D5B1462 | 0xD8870F9B)) ^ 0x31482878);
  HIDWORD(a17) = 1118497179 - v20;
  a18 = v20 ^ 0x1274EF3A;
  a15 = v20 + 690;
  a16 = 980532352 - v20;
  (*(v18 + 29072))(&a15);
  a17 = &a13;
  a15 = (50899313 * ((((2 * &a15) | 0xA47D2114) - &a15 + 767651702) ^ 0xF8F5BAF0)) ^ 0x72E;
  v21 = (*(v18 + 29464))(&a15);
  return (*(v18 + 8 * ((1828 * (a18 == v19)) ^ 0xCBu)))(v21);
}

uint64_t sub_1D48FAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 143681137 * ((2 * ((v18 - 136) & 0x49C749D0) - (v18 - 136) + 909686315) ^ 0xD0901A3B);
  *(v18 - 128) = &a15;
  *(v18 - 120) = ((v15 - 122) ^ v17 ^ 0xF7F7D9EB) - v19 + ((2 * v17) & 0xEFEFB7FA) + 462286335;
  *(v18 - 136) = v15 - v19 + 1292;
  (*(v16 + 8 * (v15 | 0xC2A)))(v18 - 136);
  *(v18 - 112) = (v15 - 155) ^ (1361651671 * ((~((v18 - 136) ^ 0x1DAC6442 | 0xE09BA6D6) + (((v18 - 136) ^ 0x1DAC6442) & 0xE09BA6D6)) ^ 0x49A3F115));
  *(v18 - 128) = a13;
  *(v18 - 120) = a14;
  v20 = (*(v16 + 8 * ((v15 - 122) ^ 0xC9B)))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 136) <= ((7 * ((v15 - 122) ^ 0x2E7)) ^ 0x29ADED11u)) * (386 * ((v15 - 122) ^ 0x214) - 763)) ^ (v15 - 122))))(v20);
}

uint64_t sub_1D48FB0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (843532609 * (((&a15 | 0x6D9E08EE) - &a15 + (&a15 & 0x9261F710)) ^ 0x31D35C6B)) ^ 0x800;
  a17 = &a11;
  a15 = a12;
  (*(v18 + 29704))(&a15);
  LODWORD(a15) = (1504884919 * (((&a15 | 0x8C7035F9) - (&a15 & 0x8C7035F9)) ^ 0x77B382E2)) ^ 0x703;
  a16 = a12;
  v20 = (*(v18 + 29768))(&a15);
  return (*(v18 + 8 * ((91 * (((HIDWORD(a15) == v19) ^ 0x47) & 1)) ^ 0x11Cu)))(v20);
}

uint64_t sub_1D48FB1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v49 = &STACK[0x4B0] + v47;
  *v49 = 1111656522;
  *(v49 + 1) = 0;
  *(v49 + 4) = 496604842;
  *(v49 + 6) = 1499319901;
  *(v49 + 4) = 0;
  *(&STACK[0x4B0] + v47 + 40) = 1499319901;
  STACK[0x440] = &STACK[0x4B0] + v47 + 40;
  *(&STACK[0x4B0] + v47 + 48) = 0;
  STACK[0x270] = &STACK[0x4B0] + v47 + 48;
  STACK[0x2C0] = &STACK[0x4B0] + v47 + 0x47343AC76F4638AFLL;
  *(v49 + 14) = 1499319901;
  *(&STACK[0x4B0] + v47 + 64) = 0;
  *(&STACK[0x4B0] + v47 + 72) = 1499319901;
  STACK[0x238] = &STACK[0x4B0] + v47 + 64;
  STACK[0x380] = &STACK[0x4B0] + v47 + 72;
  *(&STACK[0x4B0] + v47 + 80) = 0;
  STACK[0x340] = &STACK[0x4B0] + v47 + 80;
  v49[88] = 44;
  v46->n128_u32[0] = 1111656522;
  memset(&v46->n128_u8[4], 130, 20);
  v46[1].n128_u32[2] = 1499319901;
  v46[1].n128_u32[3] = 0;
  v46[14].n128_u32[2] = 0;
  memset(&v46[27].n128_u8[4], 130, 40);
  memset(&v46[70].n128_i8[8], 130, 40);
  v46[73] = a9;
  v46[74] = a9;
  return (*(v48 + 8 * v45))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

void sub_1D48FB300(uint64_t a1)
{
  v1 = *(a1 + 8) + 1785193651 * ((-170978615 - (a1 | 0xF5CF12C9) + (a1 | 0xA30ED36)) ^ 0xFC11491A);
  __asm { BRAA            X8, X17 }
}

void sub_1D48FB3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = (LOBYTE(STACK[0x2DC]) - 2 * (STACK[0x2DC] & 0x1F) - 94);
  if (v6 == 161)
  {
    v10 = STACK[0x2C0];
    v11 = STACK[0x2BC];
    LOBYTE(STACK[0x2B4]) = (-8 * LOBYTE(STACK[0x2C0]) - 8) ^ 0x7A;
    LOBYTE(STACK[0x2B5]) = (v10 >> 5) ^ 0x82;
    LOBYTE(STACK[0x2B6]) = (v10 >> 13) ^ 0x82;
    LOBYTE(STACK[0x2B7]) = (v10 >> 21) ^ 0x82;
    LOBYTE(STACK[0x2B8]) = ((__PAIR64__(v11, v10) >> 29) - ((2 * (__PAIR64__(v11, v10) >> 29)) & 0xEA) + 117) ^ 0xF7;
    LOBYTE(STACK[0x2B9]) = (v11 >> 5) ^ 0x82;
    LOBYTE(STACK[0x2BA]) = (v11 >> 13) ^ 0x82;
    v9 = (v11 >> 21) ^ 0xFFFFFF82;
  }

  else
  {
    if (v6 != 160)
    {
      goto LABEL_6;
    }

    v7 = STACK[0x2BC];
    v8 = STACK[0x2C0];
    LOBYTE(STACK[0x2B4]) = (LODWORD(STACK[0x2BC]) >> 21) ^ 0x82;
    LOBYTE(STACK[0x2B5]) = (v7 >> 13) ^ 0x82;
    LOBYTE(STACK[0x2B6]) = (v7 >> 5) ^ 0x82;
    LOBYTE(STACK[0x2B7]) = ((__PAIR64__(v7, v8) >> 29) + ((v5 + a5 - 103) ^ 0x47) - ((2 * (__PAIR64__(v7, v8) >> 29)) & 0xB6) - 3) ^ 0x59;
    LOBYTE(STACK[0x2B8]) = (v8 >> 21) ^ 0x82;
    LOBYTE(STACK[0x2B9]) = (v8 >> 13) ^ 0x82;
    LOBYTE(STACK[0x2BA]) = (v8 >> 5) ^ 0x82;
    LOBYTE(v9) = (8 * (v8 - ((2 * v8) & 0x18)) + 96) ^ 0xE2;
  }

  LOBYTE(STACK[0x2BB]) = v9;
LABEL_6:
  JUMPOUT(0x1D4925560);
}

void sub_1D48FB504(uint64_t a1)
{
  v1 = 843532609 * (((a1 | 0x20F8A4B6) - a1 + (a1 & 0xDF075B49)) ^ 0x7CB5F033);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D48FB5B8(uint64_t a1)
{
  v7 = ((1297 * (v3 ^ (v4 + 2))) ^ 0xFFFFFFFFFFFFF5DDLL) + v2;
  *(a1 + v7) = *(v1 + v7);
  return (*(v6 + 8 * ((3824 * (v7 == 0)) ^ (v5 + v3 + 855))))();
}

uint64_t sub_1D48FB600@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D2>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2).u64[0];
  *a1 = vuzp1_s8(vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0x4000400040004)), 0x82008200820082), 0x4000400040004).u32[0];
  return (*(v4 + 8 * ((2866 * (((v3 - 1370) ^ 0x195) == 20)) ^ v3)))();
}

void gLg1CWr7p()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2010 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * (dword_1EC7E2010 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xB]) - 62);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5033D40 + (*(off_1F50343C8 + (*(off_1F50340C8 + (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82)) - 8) ^ 0x9Eu) - 8) ^ (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82))) - 130);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 1228258013 * v3 + 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((137860727 - (v6 | 0x8379677) + (v6 | 0xF7C86988)) ^ 0x26CA44F7)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 - *(v0 - 4)) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2010) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2010) ^ 0x82))] ^ 0xB]) - 81);
  (*(v4 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v2 - 4) ^ 0x85u)) ^ v2) + 3416)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48FB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, int a11, char a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, _BYTE *a18, char *a19, char *a20, _BYTE *a21, char *a22)
{
  a19 = &a17;
  a21 = a10;
  a22 = &a12;
  LODWORD(a20) = v22 + 1037613739 * ((&a18 & 0xFEAD57EC | ~(&a18 | 0xFEAD57EC)) ^ 0xD050856C) + 2724;
  (*(v23 + 8 * (v22 ^ 0xCB4)))(&a18);
  a18 = a10;
  a20 = &a15;
  LODWORD(a21) = (v22 + 1300) ^ (843532609 * ((((2 * &a18) | 0x4DD612C6) - &a18 - 652937571) ^ 0x7AA65DE6));
  (*(v23 + 8 * (v22 ^ 0xC6D)))(&a18);
  a19 = a10;
  LODWORD(a18) = (v22 + 1047) ^ (1504884919 * (((&a18 | 0xE5CD1C6C) - (&a18 & 0xE5CD1C6C)) ^ 0x1E0EAB77));
  v25 = (*(v23 + 8 * (v22 ^ 0xC65)))(&a18);
  return (*(v23 + 8 * (((HIDWORD(a18) == v24) * ((v22 + 183237049) & 0x77B ^ 0x43D)) ^ v22)))(v25);
}

uint64_t sub_1D48FBB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v19 = v14 ^ 0xE34;
  v20 = 2 * (v18 - 136);
  *(v18 - 136) = v19 - 435584651 * (((v20 | 0xB1808F12) - (v18 - 136) - 1488996233) ^ 0x35F25DDF) + 499;
  *(v18 - 128) = &a14;
  *(v18 - 120) = a13;
  (*(v15 + 8 * (v19 ^ 0xBAE)))(v18 - 136);
  *(v18 - 128) = v16;
  *(v18 - 120) = a13;
  *(v18 - 112) = (v19 - 967) ^ ((((v20 | 0x2402CEF6) - (v18 - 136) - 302081915) ^ 0x596AAB05) * v17);
  v21 = (*(v15 + 8 * (v19 + 2257)))(v18 - 136);
  return (*(v15 + 8 * ((((v19 ^ 0xD ^ (*(v18 - 136) > 0x29ADEB86u)) & 1) * (v19 - 1348)) ^ v19)))(v21);
}

uint64_t sub_1D48FBD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  *a11 = a1;
  v23 = (*(v22 + 8 * (v18 ^ 0x4A8)))((v18 - 988) ^ 0xEF9 ^ a18 ^ 0x73E65899u);
  return (*(v22 + 8 * ((14 * ((a18 ^ v21) + v20 - (v19 & (2 * (a18 ^ v21))) != v20)) ^ v18)))(v23);
}

uint64_t sub_1D48FBD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v64 = STACK[0x3A8];
  STACK[0x230] = *(v63 + 8 * (a62 - 1410));
  STACK[0x488] = v64;
  LODWORD(STACK[0x494]) = 1920750827;
  STACK[0x350] = a46;
  return (*(v63 + 8 * ((((*(v64 + 68) & (((a62 ^ 0x30E) + 846) ^ 0xA31u)) - 44 < 0xFFFFFFC0) * (a62 ^ 0xA66)) ^ a62 ^ 0x30E)))();
}

uint64_t sub_1D48FBDC4()
{
  LODWORD(STACK[0x248]) = v0;
  STACK[0x2F0] -= 432;
  return (STACK[0x3C0])();
}

uint64_t sub_1D48FBE00@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = (a2 - 1784);
  **(a1 + 16) = v5 + v6 + (v7 ^ 0x257);
  return (*(v3 + 8 * ((509 * (*(a3 + 24) == ((a2 + 1147273895) & 0xBB9DF7F9 ^ (v4 + 635)))) ^ v7)))();
}

uint64_t sub_1D48FBE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((((2 * &a14) | 0x163D638C) - &a14 + 1960922682) ^ 0xA1D59BBC)) ^ 0x72E;
  a15 = &a11;
  v19 = (*(v17 + 29464))(&a14);
  if (a16 == v16)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v18;
  }

  return (*(v17 + 8 * v20))(v19);
}

uint64_t sub_1D48FBED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (1037613739 * ((((&a14 | 0xE177D9C8) ^ 0xFFFFFFFE) - (~&a14 | 0x1E882637)) ^ 0xCF8A0B48)) ^ 0x86F54BA0;
  v16 = (*(v15 + 29168))(&a14);
  return (*(v15 + 8 * ((62 * (a14 == 671454635)) ^ 0x397u)))(v16);
}

uint64_t sub_1D48FBF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 128) = (v17 + 3052) ^ (1504884919 * ((-2066049010 - ((v18 - 136) | 0x84DA980E) + ((v18 - 136) | 0x7B2567F1)) ^ 0x80E6D0EA));
  *(v18 - 136) = v16;
  *(v18 - 120) = &a14;
  v19 = (*(v15 + 8 * (v17 + 3563)))(v18 - 136);
  return (*(v15 + 8 * ((((((v17 + 221928675) & 0xF2C5A346) + 2970) ^ v17 ^ 0x1DE) * (v14 == 1)) ^ v17)))(v19);
}

uint64_t sub_1D48FCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  v50 = v45 ^ (v48 - 966);
  *(&a43 + v46) ^= a31 ^ (v47 + v45 - 620) ^ (((v47 + v45 - 620 - v46) & ((v50 - v44 - 2749) ^ (v47 + v45 - 620)) | v46 & ~(v47 + v45 - 620)) >= 0) ^ 2;
  v51 = v49 - 1 != ((v50 - 1883965843) ^ 0xFFFFFFF0) + (v50 ^ 0x8FB50B93);
  return (*(v43 + 8 * (((4 * v51) | (v51 << 6)) ^ v50)))();
}

uint64_t sub_1D48FD0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, unsigned int a23, unsigned int a24, uint64_t a25)
{
  v30 = 1564307779 * ((1779554172 - (&a21 ^ 0x5F77C060 | 0x6A11D77C) + (&a21 ^ 0x5F77C060 | 0x95EE2883)) ^ 0x5D9424F0);
  a21 = v30 ^ 0x434;
  a22 = a16;
  a24 = v28 - v30 + 2113537133 - ((2 * v28) & 0xFBF408DA);
  (*(v29 + 29720))(&a21);
  v31 = 742307843 * (&a21 ^ 0x1E228D55);
  a23 = v31 ^ ((v27 ^ 0x7E9FD4FE) - 1854112896 + ((2 * v27) & 0xFD3FA9FC));
  a25 = a16;
  a22 = v26;
  a21 = v31 ^ 0x491;
  (*(v29 + 29560))(&a21);
  v32 = 1564307779 * (((&a21 | 0xED7E7E6B) + (~&a21 | 0x12818194)) ^ 0x7A73B279);
  a22 = a16;
  a21 = v32 ^ 0x434;
  a24 = v25 - ((2 * v25) & 0xFBF408DA) + 2113537133 - v32;
  v33 = (*(v29 + 29720))(&a21);
  return (*(v29 + 8 * ((470 * (a23 == 671454635)) ^ 0x886u)))(v33);
}

uint64_t sub_1D48FD2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v15 = 1785193651 * ((((v14 - 176) | 0xF4CA044B) - ((v14 - 176) & 0xF4CA044B)) ^ 0x2EBA067);
  *(v14 - 168) = v15 + v13 + 2540;
  *(v14 - 164) = a12 - v15;
  *(v14 - 176) = a6;
  v16 = (*(v12 + 8 * (v13 ^ 0xE9A)))(v14 - 176);
  v17 = ((STACK[0x25C] & 0x3F ^ 0x4BAD88EE) - 2023967691) ^ ((STACK[0x25C] & 0x3F ^ (v13 + 823266691)) - 35442323) ^ ((STACK[0x25C] & 0x3F ^ 0x7ABF8558) + (v13 ^ 0xB64EB9B0));
  *(&STACK[0x218] + v17 + 856605477) = 2;
  return (*(v12 + 8 * ((2044 * (v17 + 856605421 < 0xFFFFFFC8)) ^ v13)))(v16);
}

uint64_t sub_1D48FD414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (&a12 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v14 = (*(v13 + 29168))(&a12);
  return (*(v13 + 8 * ((508 * (a12 != 671454635)) ^ 0x6F4u)))(v14);
}

uint64_t sub_1D48FD4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *v14 = a13;
  if (a11)
  {
    v17 = a12 == ((((v13 - 2957) | 0x802) - 148) ^ 0x73E6596D);
  }

  else
  {
    v17 = 1;
  }

  v19 = !v17 && v16 != 0;
  return (*(v15 + 8 * ((254 * v19) ^ v13)))();
}

uint64_t sub_1D48FD580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a15 = (50899313 * (&a15 ^ 0x2ACB2A7A)) ^ 0x72E;
  a16 = &a12;
  v20 = (*(v17 + 29464))(&a15);
  return (*(v17 + 8 * ((29 * (a17 == v19)) ^ v18)))(v20);
}

uint64_t sub_1D48FD5E4()
{
  v7 = 154 * (v0 ^ 0x54C);
  v8 = v6 + v4;
  v9 = (v4 - 1) & 0xF;
  v10 = v9 - v4 + (((v7 ^ 0x99u) - 1283) ^ 0x5A1);
  v11 = v2 + v10;
  v12 = v2 + v9 + 1;
  v13 = v3 + v10;
  v14 = v3 + v9 + 1;
  v15 = v9 + v1 + 2;
  v17 = v12 > v6 && v11 < v8;
  v19 = v14 > v6 && v13 < v8 || v17;
  if (v15 <= v6 || v15 - v4 >= v8)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 8 * ((122 * (v21 ^ 1)) ^ v7)))(v4);
}

uint64_t sub_1D48FD7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  v20 = 89 * (v18 ^ 0xAD7);
  a18 = a14;
  a17 = v20 + 2050 - 143681137 * (((&a17 | 0x4F817415) - &a17 + (&a17 & 0xB07E8BE8)) ^ 0xA929D805);
  (*(v19 + 8 * (v20 + 3502)))(&a17);
  a18 = a11;
  a17 = v20 + 2050 - 143681137 * (((&a17 | 0x7B683B45) + (~&a17 | 0x8497C4BA)) ^ 0x9DC09754);
  v21 = (*(v19 + 8 * (v20 ^ 0xED2u)))(&a17);
  return (*(v19 + 8 * ((93 * ((a13 ^ 0xED2597EB) + 987758016 + ((v20 - 632606940) & (2 * a13)) == ((v20 + 1850497799) & 0x7BFBF77E ^ 0x424DC693))) ^ v20)))(v21);
}

void sub_1D48FD918()
{
  *(v4 - 192) = v5;
  v6 = v2 + 8;
  v7 = v0[5] ^ 0xE2;
  *(v4 - 164) = v1;
  v8 = *(&off_1F5033D40 + (v2 ^ 0x1F1));
  v9 = v2;
  v10 = *(&off_1F5033D40 + (v2 ^ 0x16A)) - 8;
  v11 = v10[v0[15] ^ 0x92];
  v12 = v6 & 0x6F;
  v13 = ((((v0[7] & 0x3F) << 26) ^ 0x22E091119B30A002) & ((v0[7] >> 6) ^ 0xAEF89395FF3BE892) | 0x4100284800C40260) ^ ((v0[7] >> 6) ^ 0xAEF89395FF3BE892) & 0x8C180284640B4891;
  LODWORD(v13) = v10[(v13 >> 26) & 0x2B9A00A435 ^ 0x7FB7F17FB9E5BFC6 ^ ((v13 << 6) & 0x464800C0 ^ 0x7FB7F15465AD1BCALL) & ((v13 >> 26) ^ 0x7FB7FB4611D38C9ALL)];
  v14 = *(&off_1F5033D40 + (v9 ^ 0x1E9)) - 12;
  LODWORD(v7) = (v13 ^ 0xFFFFFFFE) & ((*(v8 + v7) << 16) ^ 0x851E110B) | v13 & 0xF4;
  LODWORD(v13) = -87 * v14[v0[4] ^ 0x57] + 62;
  v15 = v13 & 0xFFFFFF8C ^ 0x66;
  v16 = ((((v13 ^ 0x40) & (2 * ((v13 ^ 0x40) & (2 * ((v13 ^ 0x40) & (2 * ((v13 ^ 0x40) & (2 * ((v13 ^ 0x40) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15) << 25) ^ (v13 << 24) ^ 0x60DD69B0) & (v7 ^ 0x7AD9EC47) | v7 & 0x22104F;
  LODWORD(v7) = -87 * v14[v0[12] ^ 0x68];
  LODWORD(v13) = v7 - 74;
  LODWORD(v7) = ((73 - v7) & 0x48 | 5) ^ (v7 - 74) & 0xFFFFFF8A;
  LODWORD(v13) = v13 ^ (2 * ((v13 ^ 0x48) & (2 * ((v13 ^ 0x48) & (2 * ((v13 ^ 0x48) & (2 * ((v13 ^ 0x48) & (2 * (v13 & (2 * (v13 & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7));
  LODWORD(v7) = -87 * v14[v0[8] ^ 0xB9] + 106;
  v17 = v7 & 0x72 ^ 0xFFFFFFF7;
  v18 = v7 ^ (2 * ((v7 ^ 0x14) & (2 * ((v7 ^ 0x14) & (2 * ((v7 ^ 0x14) & (2 * ((v7 ^ 0x14) & (2 * ((v7 ^ 0x14) & 0x26 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  v19 = *(&off_1F5033D40 + (v9 ^ 0x1DA)) - 4;
  LODWORD(v7) = v19[v0[14] ^ 0xD6] - 60;
  v20 = v7 & 0x1A ^ 0x4A;
  v21 = (v20 & 0xFFFFFFFB | (4 * ((v20 >> 1) & 1))) ^ v7 & (2 * v20);
  v22 = (v20 & 0xFFFFFFFB | (4 * ((v21 >> 1) & 1))) ^ v7 & (2 * v21);
  v23 = (v20 & 0xFFFFFFFB | (4 * ((v22 >> 1) & 1))) ^ v7 & (2 * v22);
  v24 = (v20 & 0xFFFFFFFB | (4 * ((v23 >> 1) & 1))) ^ v7 & (2 * v23);
  LOBYTE(v20) = v7 ^ (2 * ((v20 & 0xFB | (4 * ((v24 & 2) != 0))) ^ v7 & (2 * v24)));
  v25 = ((((v20 << 8) ^ 0xFFFFC7FF) & ((v13 << 24) ^ 0x22E5EA84) | (v20 << 8) & 0x1500) ^ 0xD0948C14) & ((((*(v8 + (v0[13] ^ 0xB9)) << (v12 ^ 0x58)) ^ 0x9B42A407) & (v11 ^ 0x9FFFA571) | v11 & 0xF8) ^ 0x64DB5B25) ^ (((*(v8 + (v0[13] ^ 0xB9)) << (v12 ^ 0x58)) ^ 0x9B42A407) & (v11 ^ 0x9FFFA571) & 0x138E046F | v11 & 0x68);
  LOBYTE(v7) = v19[v0[6] ^ 0x87] - 60;
  LOBYTE(v24) = v7 & 0x78 ^ 0x79;
  LODWORD(v7) = (v7 ^ (2 * ((v7 ^ 6) & (2 * ((v7 ^ 6) & (2 * ((v7 ^ 6) & (2 * ((v7 ^ 6) & (2 * ((v7 ^ 6) & (2 * ((v7 ^ 6) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) << 8;
  v26 = v7 & 0xEA00 ^ 0x7F401ADA ^ (v7 ^ 0xFFFF35FF) & (v16 ^ 0x9B976CA1);
  LODWORD(v7) = -87 * v14[*v0 ^ 0xE1] - 51;
  v27 = v10[v0[3] ^ 0x29];
  v28 = (v27 ^ 0xFFFFFFF8) & ((*(v8 + (v0[1] ^ 8)) << 16) ^ 0x912B5089) | v27 & 0x76;
  LODWORD(v10) = v10[v0[11] ^ 0x62];
  LODWORD(v8) = (((((v18 ^ 0x59) << 24) ^ 0xC3FFFFFF) & ((*(v8 + (v0[9] ^ 0x3BLL)) << 16) ^ 0x4460D05C) | ((v18 ^ 0x59) << 24) & 0xBBBBBBBB) ^ 0xB6FE0272) & (v10 ^ 0xFFFFFFB8) | v10 & 0xD1;
  LODWORD(v10) = v7 & 0xD ^ 0xFFFFFFAE;
  LODWORD(v7) = (((v7 ^ 0x30) & (2 * ((v7 ^ 0x30) & (2 * ((v7 ^ 0x30) & (2 * ((v7 ^ 0x30) & (2 * ((v7 ^ 0x30) & (2 * ((v7 ^ 0x30) & (2 * v7) & 0x62 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10) << 25) ^ (v7 << 24);
  LODWORD(v14) = (v7 | 0xFFFFFF) & (v28 ^ 0xC12CCB8D);
  LOBYTE(v28) = v19[v0[2] ^ 0x8FLL];
  LOBYTE(v27) = (v28 - 60) & 0x86;
  v29 = v19[v0[10] ^ 0xB7] - 60;
  LOBYTE(v19) = v29 & 0xEE ^ 0x34;
  LODWORD(v7) = v7 & 0xAF000000 ^ 0x349E693C ^ v14;
  LODWORD(v14) = ((v28 + 68) ^ (2 * (((v28 - 60) ^ 4) & (2 * (((v28 - 60) ^ 4) & (2 * (((v28 - 60) ^ 4) & (2 * (((v28 - 60) ^ 4) & (2 * (((v28 - 60) ^ 4) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ (v27 | 0x40)))) << 8;
  LODWORD(v14) = v14 & 0xD00 ^ 0xBE339A48 ^ v7 & (v14 ^ 0xFFFFA5FF);
  v30 = v8 & 0x6876CAB6 ^ 0x22BF936A ^ (((v29 ^ (2 * ((v29 ^ 4) & (2 * ((v29 ^ 4) & (2 * ((v29 ^ 4) & (2 * ((v29 ^ 4) & (2 * ((v29 ^ 4) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) << 8) ^ 0x97893C49) & (v8 ^ 0x96482D73);
  v31 = v20 ^ 0x64u;
  v32 = v9;
  v33 = *(&off_1F5033D40 + (v9 ^ 0x186));
  v34 = *(&off_1F5033D40 + v9 - 340) - 8;
  v35 = *(&off_1F5033D40 + (v32 & 0x469F5EEC));
  LODWORD(v31) = *(v33 + 4 * v31) ^ *&v34[4 * (v13 ^ 0x4A)] ^ *(v35 + 4 * (v11 ^ 0xDB));
  v36 = v32;
  v37 = *(&off_1F5033D40 + (v32 ^ 0x196));
  LODWORD(v7) = *(v37 + 4 * (BYTE2(v25) ^ 0x9Cu));
  *(v4 - 204) = v30;
  *(v4 - 200) = v14;
  v38 = v31 ^ v14 ^ v7;
  LODWORD(v31) = v38 ^ v26 ^ v30;
  LODWORD(v7) = v31 ^ v25 ^ 0xB2C8325B;
  v39 = v31;
  LODWORD(v31) = *(v35 + 4 * ((v31 ^ v25 ^ 0x5B) ^ 0x21u));
  *(v4 - 256) = BYTE1(v7);
  LODWORD(v31) = *(v33 + 4 * (BYTE1(v7) ^ 0x5Cu)) ^ v31;
  LODWORD(v11) = *&v34[4 * (BYTE3(v7) ^ 0x71)];
  *(v4 - 212) = BYTE2(v7);
  *(v4 - 208) = v25 ^ 0xB2C8325B;
  LODWORD(v7) = v31 ^ v11 ^ *(v37 + 4 * (BYTE2(v7) ^ 0xEFu));
  *(v4 - 196) = v26;
  *(v4 - 128) = v26 ^ v7;
  LODWORD(v31) = v26 ^ v7 ^ 0xE6ADFEE7;
  LODWORD(v11) = v25 ^ 0xB2C8325B ^ v31;
  *(v4 - 216) = BYTE3(v11);
  v89 = BYTE2(v11);
  v87 = BYTE1(v11);
  v91 = v25 ^ 0x5B ^ v31;
  LODWORD(v13) = *(v37 + 4 * (BYTE2(v11) ^ 0x2Cu)) ^ *&v34[4 * (BYTE3(v11) ^ 0xCC)] ^ *(v33 + 4 * (BYTE1(v11) ^ 0xCCu)) ^ *(v35 + 4 * (v91 ^ 0xB7u));
  *(v4 - 124) = v38 ^ v7;
  *(v4 - 120) = v13 ^ v38 ^ v7;
  LODWORD(v13) = v13 ^ v38 ^ v7 ^ 0x2EAA4F60;
  LODWORD(v11) = v13 ^ v11 ^ v39 ^ 0x3C8DA11A;
  LODWORD(v19) = v13;
  LODWORD(v13) = v11 ^ 0x49BD519D;
  *(v4 - 240) = BYTE2(v11);
  v40 = *(v37 + 4 * (BYTE2(v11) ^ 0x9Eu));
  *(v4 - 172) = BYTE1(v11);
  LODWORD(v14) = *(v33 + 4 * (BYTE1(v11) ^ 0x39u));
  *(v4 - 224) = BYTE3(v11);
  *(v4 - 168) = v11;
  LODWORD(v11) = v14 ^ v40 ^ *(v35 + 4 * (v11 ^ 0x3Cu)) ^ *&v34[4 * (BYTE3(v11) ^ 0x8F)];
  LODWORD(v7) = v39 ^ 0x3C8DA11A ^ v31;
  *(v4 - 132) = v7;
  *(v4 - 252) = v19;
  v86 = v7 ^ v11 ^ v19;
  LODWORD(v10) = v86 ^ 0xCB5CA1BC ^ v13;
  LODWORD(v7) = v10 ^ 0xC90337C1;
  v41 = *&v34[4 * ((v10 >> 24) ^ 0x1A)] ^ *(v35 + 4 * (v86 ^ 0xBC ^ v13 ^ 0x16u)) ^ *(v37 + 4 * (BYTE2(v10) ^ 0xDAu)) ^ *(v33 + 4 * (BYTE1(v10) ^ 0xA7u));
  *(v4 - 248) = v19 ^ v31;
  LODWORD(v31) = v19 ^ v31 ^ 0xBD883103 ^ v41 ^ 0x43F73A51;
  v85 = v11 ^ v19;
  LODWORD(v10) = *(v37 + 4 * (((v31 ^ v13) >> 16) ^ 0xCFu));
  LODWORD(v14) = ((v31 ^ v13) >> 8);
  *(v4 - 232) = v14;
  LODWORD(v10) = v10 ^ *(v33 + 4 * (v14 ^ 0xEC));
  v42 = v31 ^ v86 ^ 0xCB5CA1BC;
  *(v4 - 144) = v42;
  LODWORD(v13) = v10 ^ *(v35 + 4 * ((v31 ^ v86 ^ 0xBC ^ v7) ^ 0x83u)) ^ v85 ^ v41 ^ *&v34[4 * (((v31 ^ v13 ^ 0xE47572A9) >> (v85 & 0x10) >> (v85 & 8) >> ((v85 ^ 0xDD) & 8) >> ((v85 ^ 0xDD) & 0x10)) ^ 0x86)];
  *(v4 - 136) = v13;
  LODWORD(v10) = v13 ^ 0xB0DABC74;
  LODWORD(v13) = v13 ^ 0xB0DABC74 ^ v31;
  *(v4 - 152) = v13;
  LODWORD(v31) = v13 ^ 0x7621E039 ^ v7;
  v43 = *(v37 + 4 * (BYTE2(v31) ^ 0x25u));
  *(v4 - 116) = 0;
  v83 = *(v35 + 4 * (v13 ^ 0x39 ^ v7 ^ 0xFEu)) ^ v43 ^ *&v34[4 * (BYTE3(v31) ^ 0xD6)] ^ *(v33 + 4 * (BYTE1(v31) ^ 0x17u)) ^ v10;
  v44 = v13 ^ 0x7621E039 ^ v42;
  LODWORD(v13) = v83 ^ 0xD2A1891F ^ v13;
  *(v4 - 160) = v13;
  LODWORD(v13) = v13 ^ 0x64D6EECA;
  v45 = v44 ^ 0x16D68CD0 ^ v13;
  *(v4 - 156) = v45;
  LODWORD(v11) = v45 ^ 0x83E5D7E0;
  v46 = v45 ^ 0x83E5D7E0 ^ v31;
  v78 = *(v33 + 4 * (BYTE1(v46) ^ 0x28u)) ^ *&v34[4 * (HIBYTE(v46) ^ 0x8A)] ^ *(v37 + 4 * (BYTE2(v46) ^ 0xBu)) ^ *(v35 + 4 * (v46 ^ 0x33u)) ^ v83 ^ 0xD2A1891F;
  LODWORD(v10) = v13 ^ v78 ^ 0x840B57B5;
  LODWORD(v14) = v10 ^ v31 ^ 0x75F01CCC;
  LODWORD(v7) = *(v33 + 4 * (BYTE1(v14) ^ 0x9Eu)) ^ *&v34[4 * ((v14 >> 24) ^ 0x86)];
  v47 = ((v7 ^ 0xA55E3C11) - 2 * ((v7 ^ 0xA55E3C11) & 0x30EC8DA7 ^ v7 & 6) + 820809121) ^ *(v37 + 4 * (BYTE2(v14) ^ 0xBAu));
  LODWORD(v13) = (v47 - ((2 * v47) & 0xFC8F8840) - 28851168) ^ *(v35 + 4 * ((v10 ^ v31) ^ 0x27u));
  v82 = (v13 - ((2 * v13) & 0x9014A994) - 938847030) ^ v78;
  LODWORD(v13) = ((v82 ^ 0x7B68C86) - 2 * ((v82 ^ 0x7B68C86) & 0x61732FF7 ^ v82 & 1) - 512544778) ^ v10;
  *(v4 - 140) = v13;
  v81 = (v13 - ((2 * v13) & 0xD81C23B4) - 334622246) ^ v11 ^ v10;
  v48 = *(&off_1F5033D40 + (v36 ^ 0x1EC));
  *(v4 - 184) = v3;
  v49 = v48 - 12;
  LODWORD(v7) = (BYTE2(v39) ^ 0xFD84E255) - 1742864122 + *(v48 - 12 + 4 * (BYTE2(v39) ^ 0xC5u));
  LODWORD(v19) = v39;
  v50 = *(&off_1F5033D40 + (v36 ^ 0x1B1)) - 12;
  v84 = v36;
  v51 = *(&off_1F5033D40 + v36 - 299) - 4;
  LODWORD(v48) = (v7 - ((2 * v7) & 0xECF894CE) + 1987856999) ^ *&v51[4 * (v39 ^ 0x4D)];
  v52 = *(&off_1F5033D40 + (v36 ^ 0x148)) - 12;
  *(v4 - 212) = *&v52[4 * (BYTE1(v19) ^ 0xD6)] ^ (-1974868763 * *&v50[4 * ((v19 >> 24) ^ 0xC4)] - 919267130) ^ (v48 - 295860445 + (~(2 * v48) | 0x2344F1BB));
  v53 = (v89 ^ 0xFD84E28F) - 1742864122 + *(v49 + 4 * (v89 ^ 0x1Fu));
  LODWORD(v48) = (v53 - ((2 * v53) & 0xDCBB0E44) - 295860446) ^ *&v52[4 * (v87 ^ 0xC1)];
  v88 = v48 - ((2 * v48) & 0xECF894CE);
  v54 = *(v4 - 132);
  LODWORD(v48) = *&v50[4 * (HIBYTE(v54) ^ 0x21)];
  LODWORD(v48) = ((BYTE2(v54) ^ 0xFD84E242) - 1742864122 + *(v49 + 4 * (BYTE2(v54) ^ 0xD2u))) ^ *&v52[4 * (BYTE1(v54) ^ 0x5D)] ^ (((-345229770 * v48 + 1838534259) | 0x2344F1BB) - 1974868763 * v48 - 1215127575);
  v80 = v48 - ((2 * v48) & 0xECF894CE);
  v55 = *&v50[4 * (HIBYTE(v78) ^ 0x37)];
  v56 = (-1974868763 * v55 - ((345229770 * v55 - 1838534260) & 0xDCBB0E44) - 1215127576) ^ *&v52[4 * ((v78 ^ 0xF21E) >> 8)];
  v79 = v56 - ((2 * v56) & 0xECF894CE);
  v90 = (((v78 ^ 0x15ADF21E) >> 16) ^ 0xFD84E2A5) - 1742864122 + *(v49 + 4 * (((v78 ^ 0x15ADF21E) >> 16) ^ 0x35u));
  v57 = *(v4 - 160);
  LODWORD(v48) = (BYTE2(v57) ^ 0xFD84E212) - 1742864122 + *(v49 + 4 * (BYTE2(v57) ^ 0x82u));
  LODWORD(v31) = (v48 - ((2 * v48) & 0xDCBB0E44) - 295860446) ^ *&v52[4 * (BYTE1(v57) ^ 0x5D)];
  *(v4 - 256) = (BYTE2(v81) ^ 0xFD84E2C1) - 1742864122 + *(v49 + 4 * (BYTE2(v81) ^ 0x51u));
  LODWORD(v48) = *(v4 - 252) ^ v19;
  LODWORD(v7) = (*(v4 - 240) ^ 0xFD84E262) - 1742864122 + *(v49 + 4 * (*(v4 - 240) ^ 0xF2u));
  *(v4 - 240) = v7 - ((2 * v7) & 0xDCBB0E44);
  v58 = *(v4 - 248);
  LODWORD(v7) = (BYTE2(v58) ^ 0xFD84E244) - 1742864122 + *(v49 + 4 * (BYTE2(v58) ^ 0xD4u));
  LODWORD(v7) = (v7 - ((2 * v7) & 0xECF894CE) + 1987856999) ^ *&v51[4 * (v58 ^ 0x4F)];
  *(v4 - 252) = v7 - ((2 * v7) & 0xDCBB0E44);
  v59 = *&v50[4 * (HIBYTE(*(v4 - 128)) ^ 0x5C)];
  v60 = *&v50[4 * (*(v4 - 216) ^ 0x78)];
  v61 = *(v4 - 160);
  LODWORD(v10) = *&v50[4 * (HIBYTE(v61) ^ 0x4F)];
  *(v4 - 216) = -1974868763 * *&v50[4 * (HIBYTE(v86) ^ 0x8D)] - 919267130;
  *(v4 - 144) = -1974868763 * v59 - 919267130;
  v62 = -1974868763 * v60 - 919267130;
  *(v4 - 152) = *&v52[4 * (BYTE1(v86) ^ 0x30)];
  *(v4 - 172) = *&v52[4 * (BYTE1(v58) ^ 7)];
  LODWORD(v14) = *&v51[4 * (v91 ^ 0x13)];
  v63 = *&v51[4 * (v78 ^ 0xD6)];
  v64 = *&v51[4 * (v61 ^ 0x50)];
  *(v4 - 156) = (BYTE2(v48) ^ 0xFD84E25B) - 1742864122 + *(v49 + 4 * (BYTE2(v48) ^ 0xCBu));
  *(v4 - 160) = *&v51[4 * (*(v4 - 168) ^ 0x25)];
  *(v4 - 168) = v80 + 1987856999;
  v65 = v31 - ((2 * v31) & 0xECF894CE) + 1987856999;
  v66 = v14 ^ v62 ^ 0xADE18B96 ^ (v88 + 1987856999);
  v67 = *(&off_1F5033D40 + (v84 ^ 0x1C4)) - 12;
  v68 = *(&off_1F5033D40 + (v84 ^ 0x17F));
  v69 = (((v67[*(v4 - 111) ^ 0xD5] + 29) ^ 0xED) << 16) | ((*(v68 + (*(v4 - 112) ^ 1)) ^ 0xFA) << 24);
  v70 = *(&off_1F5033D40 + (v84 ^ 0x1D0)) - 12;
  LODWORD(v48) = ((v70[*(v4 - 102) ^ 0x49] ^ 0xE9) << 8) & 0xFF00FFFF | (((v67[*(v4 - 103) ^ 0xB3] + 29) ^ 0x59) << 16);
  LODWORD(v50) = (((v67[*(v4 - 99) ^ 0xDLL] + 29) ^ 0xA9) << 16) | ((*(v68 + (*(v4 - 100) ^ 0xCALL)) ^ 0x68) << 24);
  v71 = *(v4 - 107) ^ 0x45;
  LODWORD(v31) = ((v70[*(v4 - 106) ^ 0xD5] ^ 0xCA) << 8) | ((*(v68 + (*(v4 - 108) ^ 0xC2)) ^ 0x30) << 24);
  *(v4 - 224) = v67;
  LODWORD(v31) = v31 & 0xFF00FFFF | (((v67[v71] + 29) ^ 0x16) << 16);
  v72 = *(v4 - 110) ^ 0xE7;
  v73 = v50 | ((v70[*(v4 - 98) ^ 0xC6] ^ 0xB4) << 8);
  *(v4 - 240) = v70;
  LODWORD(v14) = v69 | ((v70[v72] ^ 0x50) << 8);
  v74 = *(&off_1F5033D40 + (v84 & 0xBF3A083)) - 12;
  v75 = v73 & 0xFFFFFF00 | (53 * v74[*(v4 - 97) ^ 0xCBLL]) ^ 0x79;
  LODWORD(v14) = v14 & 0xFFFFFF00 | (53 * v74[*(v4 - 109) ^ 0x8ALL]) ^ 0xC9;
  LODWORD(v31) = v31 & 0xFFFFFF00 | (53 * v74[*(v4 - 105) ^ 0xB9]) ^ 0x3C;
  v76 = *(v4 - 104) ^ 0x8ALL;
  v77 = *(v4 - 101) ^ 6;
  *(v4 - 248) = v74;
  LOBYTE(v77) = 53 * v74[v77];
  *(v4 - 232) = v68;
  LODWORD(v48) = v48 & 0xFFFFFF00 | v77 ^ 0x87 | ((*(v68 + v76) ^ 0x17) << 24);
  *(v4 - 132) = v14 ^ 0x37373737;
  *(v4 - 128) = v75 ^ 0x37373737;
  *(v4 - 124) = v31 ^ 0x37373737;
  *(v4 - 136) = v48 ^ 0x37373737;
  *(v4 - 252) = (v79 + 1987856999) ^ v63 ^ v90;
  *(v4 - 256) = v65 ^ v64 ^ (-1974868763 * v10 - 919267130);
  *(v4 - 120) = (((*(v4 - 164) ^ 0xA15DF2FA) - 1394492622) ^ ((*(v4 - 164) ^ 0x451B605B) + 1218914705) ^ ((*(v4 - 164) ^ 0x596CC017) + 1422952925)) + 461355814;
  *(v4 - 216) = v66;
  JUMPOUT(0x1D490010CLL);
}

uint64_t sub_1D49012B8(uint64_t a1, int a2)
{
  if (a2 + 474467929 >= 0)
  {
    a2 = (v3 ^ 0x620) - a2 - 948936362;
  }

  return (*(v2 + 8 * ((((((947 * (v3 ^ 0x7DB)) ^ 0x9C47C541) + a2) >= 0) * ((3 * (v3 ^ 0x77F)) ^ 0x90B)) ^ v3 ^ 0x620)))();
}

uint64_t sub_1D4901538@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, unsigned int a62)
{
  v64 = a2 - 1566;
  v65 = (*(v63 + 8 * (a2 ^ 0x67A)))(*a23, a1, a62);
  return (*(a56 + 8 * (((LODWORD(STACK[0x38C]) == v62) * (((2 * v64) ^ 0x56) + 2541)) ^ v64)))(v65);
}

uint64_t sub_1D4901590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23)
{
  a23 = (1037613739 * ((2 * (&a22 & 0x342343E0) - &a22 - 874726371) ^ 0x1ADE9162)) ^ 0x86F54BA0;
  v24 = (*(v23 + 29168))(&a22);
  return (*(v23 + 8 * ((3813 * (a22 == 671454635)) ^ 0x7CDu)))(v24);
}

uint64_t sub_1D4901634@<X0>(uint64_t a1@<X8>)
{
  v5 = (v4 - 220 + a1);
  *v5 = 0x8282828282828282;
  v5[1] = 0x8282828282828282;
  return (*(v3 + 8 * ((2259 * (((109 * (v1 ^ 0x578u)) ^ 0x9DBLL) == (v2 & 0xFFFFFFFFFFFFFFF0))) ^ v1)))();
}

uint64_t sub_1D4901690@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, unsigned int a4@<W8>)
{
  HIDWORD(v14) = a1 ^ 0x62C4889;
  LODWORD(v14) = a1 ^ 0x40000000;
  v15 = (a2 ^ 0xB9D3B776) & (v4 ^ 0x79BE9F70) ^ a2 & 0xC06D2806;
  v16 = (a3 ^ v12) + (v14 >> 27) + (*(v6 + 4 * (v11 + v10)) ^ v8) + (v15 & 0xB5630F57 ^ 0x35220F51 ^ (v15 ^ 0x7FBEDFF9) & (v5 ^ 0xF34F47DE) | a2 & 0x3BB05F8E ^ 0x2204888 ^ (a2 ^ v12) & (v4 ^ 0x7D9C1707)) - 286619411;
  return (*(v9 + 8 * ((61 * (v11 + 1 != v7 + 44)) ^ a4)))(v16 ^ ((v16 ^ 0xF897D937) + 1487334106) ^ ((v16 ^ 0xAC958133) + 212120286) ^ ((v16 ^ 0x640363EA) - 1003335675) ^ ((v16 ^ 0x6FCFF7FF) - 805387246) ^ 0x19E28498);
}

uint64_t sub_1D4901820(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v18 = 657 * (a3 ^ 0x198);
  *(&a12 + a5) = v12 + v18 + HIDWORD(a2) - ((v16 + 411) & (2 * HIDWORD(a2))) - 1971;
  return (*(v17 + 8 * ((115 * (((v18 + v14) & 0x89CD15ED) + v15 + ((v18 + v14) ^ (v14 + 2584) ^ 0xFFFFFFFFFFFFF803) == v13)) ^ v18)))();
}

void lCUad()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2110) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 + dword_1EC7E2110) ^ 0x82))] ^ 0xB]) + 57);
  v1 = *(&off_1F5033D40 + ((-35 * (*v0 ^ qword_1EC7E2160 ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * (*v0 ^ qword_1EC7E2160 ^ 0x82))] ^ 0x60]) + 34);
  v2 = (*v1 - *v0) ^ &v4;
  *v0 = (1228258013 * v2) ^ 0xC891BCBEBCEAD82;
  *v1 = 1228258013 * (v2 ^ 0xC891BCBEBCEAD82);
  v5[1] = (1037613739 * ((2 * (v5 & 0x558787C0) - v5 + 712538168) ^ 0xFB7A5547)) ^ 0x86F54BA0;
  LOBYTE(v1) = -35 * ((*v1 + *v0) ^ 0x82);
  v3 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2110) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 - dword_1EC7E2110) ^ 0x82))] ^ 0xF4]) - 22);
  (*(v3 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v1 - 4) ^ 0x85u)) ^ v1) + 3416)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4901B38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a3 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(a3 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((28 * (((v4 - 2067598943) & 0x831A9EFF ^ 0xADBLL) != (v3 & 0xFFFFFFE0))) ^ (a2 + v4 + 1260))))();
}

void jr3lMuU8uaAR()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2178 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * (dword_1EC7E2178 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x30]) - 28);
  v1 = -35 * (*v0 ^ qword_1EC7E2160 ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + v1 - 4) ^ 0xF4u) - 12) ^ v1) + 8);
  v3 = *v2 - *v0 - &v5;
  *v0 = 1228258013 * v3 - 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((v6 - 891644607 - 2 * (v6 & 0xCADA9541)) ^ 0x1BD8B83E)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * (*v0 ^ 0x82 ^ *v2);
  v4 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2178 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * (dword_1EC7E2178 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x8C]) - 114);
  (*(v4 + 8 * ((*(off_1F50343C8 + (*(off_1F50340C8 + v2 - 8) ^ 0x6Cu) - 8) ^ v2) + 3462)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4901DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a15 = &a11;
  a14 = (50899313 * ((427508886 - (&a14 | 0x197B4496) + (&a14 | 0xE684BB69)) ^ 0xCC4F9113)) ^ 0x72E;
  v18 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((1089 * (a16 == v17)) ^ 0x17Fu)))(v18);
}

uint64_t sub_1D4901ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unsigned int a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  (*(v65 + 8 * (v64 ^ 0xBBD)))();
  LODWORD(STACK[0x38C]) = v62;
  return (*(a62 + 8 * ((106 * ((v63 ^ (v64 + 1)) & 1)) ^ (v64 - 808))))(a58);
}

uint64_t sub_1D4902204@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = ((v4 - 145) ^ (a2 + 2358) ^ 0xFFFFFFFFFFFFF675) + v3;
  v8 = *(v2 + v7 - 15);
  v9 = *(v2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((487 * ((v3 & 0xFFFFFFE0) == 32)) ^ (v5 + v4 - 145 + 214))))();
}

uint64_t sub_1D49022D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 104) = (v19 - 817) ^ (((353659347 - ((v21 - 128) ^ 0xC4B7E629 | 0x151469D3) + ((v21 - 128) ^ 0xC4B7E629 | 0xEAEB962C)) ^ 0x6537BC7B) * v20);
  *(v21 - 120) = &a17;
  *(v21 - 112) = v17;
  v22 = (*(v18 + 8 * (v19 ^ 0xBAB)))(v21 - 128);
  return (*(v18 + 8 * ((((*(v21 - 128) - 699263880) < 0xDA25712E) * (((2 * v19) ^ 0x842) + 1523)) ^ v19)))(v22);
}

void Hbz0lOyjnO0()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2020) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 - dword_1EC7E2020) ^ 0x82))] ^ 3]) - 166);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * ((qword_1EC7E2160 - v1) ^ 0x82)) - 4) ^ 0xC4u)) ^ (-35 * ((qword_1EC7E2160 - v1) ^ 0x82))) - 5);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 1228258013 * v3 + 0x5804E9A2B9663D3ALL;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * (v6 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 - *(v0 - 4)) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2020) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 - dword_1EC7E2020) ^ 0x82))] ^ 0x8C]) - 114);
  (*(v4 + 8 * ((*(off_1F50342D8 + (*(off_1F5033F18 + v2 - 12) ^ 0x8Cu) - 12) ^ v2) + 3521)))(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1D4902938(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 1564307779 * ((-1427679021 - (a1 | 0xAAE758D3) + (a1 | 0x5518A72C)) ^ 0xC2156B3F);
  v2 = *(a1 + 8);
  v4[0] = v1 + 843532609 * ((v4 - 349551628 - 2 * (v4 & 0xEB2A43F4)) ^ 0xB7671771) + 604;
  v5 = v2;
  v3 = *(&off_1F5033D40 + v1 - 1896);
  (*(v3 + 8 * (v1 ^ 0x9D3)))(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4902A50@<X0>(uint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, unsigned int *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *a22 = 1;
  v35 = *a23;
  v36 = 50899313 * ((((2 * (v34 - 144)) | 0x3CC8FE6FE448264ELL) - (v34 - 144) + 0x619B80C80DDBECD9) ^ 0x2D6F08D1D8EF395DLL);
  v37 = a2 - 1549655536 + v36;
  *(v34 - 104) = a2 - 1549655536 - v36 + 111;
  *(v34 - 120) = v36 ^ 0x13FF;
  *(v34 - 112) = v35 + v36;
  *(v34 - 144) = 1 - v36;
  *(v34 - 140) = v37 + 151;
  *(v34 - 136) = (a2 + v32) ^ v36;
  *(v34 - 132) = v37;
  v38 = (*(a1 + 8 * (v33 + a2 + 3074)))(v34 - 144);
  return (*(a32 + 8 * *(v34 - 128)))(v38);
}

void zLTj()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E1FE0) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E1FE0) ^ 0x82))] ^ 0xB]) - 85);
  v1 = -35 * ((qword_1EC7E2160 + *v0) ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v1 - 4) ^ 0xBu)) ^ v1) - 51);
  v3 = 1228258013 * (&v5[*v0 + *v2] ^ 0xC891BCBEBCEAD82);
  *v0 = v3;
  *v2 = v3;
  v6[1] = (1037613739 * ((-1295048272 - (v6 | 0xB2CF21B0) + (v6 | 0x4D30DE4F)) ^ 0x9C32F330)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 - *v0) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E1FE0) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 + dword_1EC7E1FE0) ^ 0x82))] ^ 0xB]) - 81);
  (*(v4 + 8 * ((*(off_1F50340B8 + (*(off_1F5033FC0 + v2 - 8) ^ 0x8Eu) - 4) ^ v2) + 3508)))(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1D4902CC0(uint64_t a1@<X8>, unsigned int a2, int a3, uint64_t a4)
{
  v7 = 1785193651 * ((((2 * &a2) | 0x408A4C16) - &a2 - 541402635) ^ 0xD6648227);
  a2 = (v5 ^ ((v5 ^ 0x25576AC4) - 1604356730) ^ ((v5 ^ 0x5334615A) - 700678628) ^ ((v5 ^ 0x735A34DF) - 162387041) ^ ((v5 ^ v6 ^ 0x7FCEDD69) - 87637825) ^ 0x37118A11) - v7;
  a3 = v6 - v7 + 636;
  a4 = a1;
  (*(v4 + 8 * (v6 | 0xC01)))(&a2);
  JUMPOUT(0x1D48CF174);
}

uint64_t sub_1D4902DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0xFF5u) - 864) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * (((2 * ((v2 & 0xFFFFFFF8) - 8 == v3)) | (4 * ((v2 & 0xFFFFFFF8) - 8 == v3))) ^ v4)))();
}

uint64_t sub_1D4902F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v5[(v3 + 209) ^ 0x7F3];
  v5[227] = *(a3 + 4 * (v6 & 1)) ^ *v5 ^ ((v6 & 0x7FFFFFFE | v5[227] & 0x80000000) >> 1);
  return (*(v4 + 8 * v3))();
}

void sub_1D4902FC8(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D490323C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = vdupq_n_s32(0x8052E343);
  *&STACK[0x268] = v5;
  *&STACK[0x278] = v5;
  return (*(v4 + 8 * ((((v3 & 0xFFFFFFF8) == 8) * (a3 ^ 0x728)) ^ (a3 - 1404))))();
}

uint64_t sub_1D4903294@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a3 + 1;
  *(v8 + 4 * v9 + 908) = *(a2 + 4 * (*(v8 + 4 * v9 + 912) & 1)) ^ *(v8 + 4 * v9) ^ ((*(v8 + 4 * v9 + 912) & 0x7FFFFFFE | (v4 ^ (v7 + 2187)) & v5) >> 1);
  return (*(v6 + 8 * (((v9 == 395) * a1) ^ (v3 - 746))))();
}

uint64_t sub_1D49032A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v20 - 128) = v18;
  *(v20 - 120) = a14;
  *(v20 - 112) = (v19 - 91) ^ (((~(v17 | 0x511A0A0) + (v17 & 0x511A0A0)) ^ 0xB1859321) * v16);
  v21 = (*(v15 + 8 * (v19 ^ 0xCDD)))(v20 - 136);
  return (*(v15 + 8 * (v19 | (2 * (((v19 ^ (v19 + 123)) ^ (*(v20 - 136) > (v14 + 1))) & 1)))))(v21);
}

uint64_t sub_1D4903390@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(v5 - 220 + a2 + 72);
  v7 = v3 + (a2 ^ 0xF8FFF78E) + ((2 * a2) & 0xF1FFEF18);
  *(a1 + v7 + 1650) = (HIBYTE(v6) ^ 0x46) - 2 * ((HIBYTE(v6) ^ 0x46) & (((v2 - 1) & 0xDF) + 102) ^ HIBYTE(v6) & 1) - 126;
  *(a1 + v7 + 1651) = (BYTE2(v6) ^ 0x2C) - ((v6 >> 15) & 4) - 126;
  *(a1 + v7 + 1652) = (BYTE1(v6) ^ 0x48) - ((v6 >> 7) & 4) - 126;
  *(a1 + v7 + 1653) = v6 ^ 0xB;
  return (*(v4 + 8 * ((3276 * (a2 + 4 < *(v5 - 128))) ^ v2)))();
}

uint64_t sub_1D4903538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = (*(v63 + 8 * (v62 ^ 0x6F4)))(1576);
  STACK[0x3B0] = v64;
  return (*(a62 + 8 * ((186 * (((v64 == 0) ^ ((v62 + 17) ^ (-119 * (v62 ^ 0x78)))) & 1)) ^ v62)))(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15);
}

void sub_1D49036EC(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x3F0]) = v3;
  LODWORD(STACK[0x290]) = v4;
  LODWORD(STACK[0x3A4]) = v2;
  v5 = (((v2 ^ 0x7143D55C) - 1900270940) ^ ((v2 ^ 0x6C87908E) - 1820823694) ^ ((v2 ^ 0x5BE80D5B) - 1541934427)) + 132206785 + (((*(STACK[0x498] + 88) ^ 0x1CF7CA6) - 30375078) ^ (((a1 - 512) | 0x4E) + 1555807677 + (*(STACK[0x498] + 88) ^ 0xA3443C75)) ^ ((*(STACK[0x498] + 88) ^ 0xE4A7085A) + 458815398));
  v6 = (2 * (v5 & 0x84774051)) & (v5 ^ 0x67EE3B75) ^ v5 & 0x84774051 ^ ((2 * (v5 & 0x84774051)) & 0x880020 | 0x82005200);
  v7 = (2 * (v5 ^ 0x67EE3B75)) & 0xE3997B24 ^ 0x20890924 ^ ((2 * (v5 ^ 0x67EE3B75)) ^ 0xC732F648) & (v5 ^ 0x67EE3B75);
  v8 = (4 * v6) & 0xE3997B24 ^ v6 ^ ((4 * v6) ^ 0x8014800) & v7;
  v9 = (4 * v7) & 0xE3997B24 ^ 0x61981324 ^ ((4 * v7) ^ 0x8E65EC90) & v7;
  v10 = (16 * v8) & 0xE3997B20 ^ v8 ^ ((16 * v8) ^ 0x2011A000) & v9;
  v11 = (16 * v9) & 0xE3997B20 ^ 0xC2084924 ^ ((16 * v9) ^ 0x3997B240) & v9;
  v12 = v10 ^ (v10 << 8) & 0xE3997B00 ^ ((v10 << 8) ^ 0x103A0000) & v11 ^ 0x41914124;
  *(STACK[0x498] + 88) = v5 ^ (2 * ((v12 << 16) & 0x63990000 ^ v12 ^ ((v12 << 16) ^ 0x7B240000) & ((v11 << 8) & 0x63990000 ^ 0x62800000 ^ ((v11 << 8) ^ 0x197B0000) & v11))) ^ 0xC369FE90;
  LODWORD(STACK[0x264]) = a2;
  JUMPOUT(0x1D490396CLL);
}

uint64_t sub_1D49040AC()
{
  v5 = *(v3 + 4 * (v2 - 1));
  *(v3 + 4 * v2) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v3 + 4 * v2)) - v2;
  v6 = v4 - 152;
  v7 = 1504884919 * ((((v4 - 152) | 0x6D8991FE222E921ALL) - ((v4 - 152) & 0x6D8991FE222E921ALL)) ^ 0x41D9CB44D9ED2501);
  *(v4 - 116) = ((v0 + 1370140949) ^ 0x1C) - v7;
  *(v6 + 8) = (v2 + 1) ^ v7;
  *(v6 + 16) = v7 ^ 0x26F;
  *(v4 - 152) = v7;
  *(v4 - 128) = -2124587433 - v7 + v0;
  *(v4 - 124) = v7 + v0 + 1370140949 + 93;
  *(v4 - 120) = v0 + 1370140949 - v7;
  v8 = (*(v1 + 8 * (v0 + 2066)))(v4 - 152);
  return (*(v1 + 8 * *(v4 - 148)))(v8);
}

uint64_t sub_1D490418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, unsigned int a18, char *a19, int a20)
{
  a19 = &a16;
  a18 = (v21 - 728) ^ (50899313 * ((((&a18 | 0x1F3F24EA) ^ 0xFFFFFFFE) - (~&a18 | 0xE0C0DB15)) ^ 0xCA0BF16F));
  v22 = (*(v20 + 8 * (v21 + 1117)))(&a18);
  return (*(v20 + 8 * ((37 * (a20 == ((((v21 - 2490) | 0x220) + 266512049) ^ (v21 - 1476447568) & 0x7FE7FFFF))) ^ v21)))(v22);
}

uint64_t sub_1D49043AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, int a18, unsigned int a19, char *a20)
{
  v22 = 675097751 * ((((2 * &a15) | 0xB7A62F02) - &a15 + 606922879) ^ 0x98933217);
  a19 = v22 ^ 0xA33F4F7D;
  a20 = &a14;
  a15 = a13;
  a16 = (v21 + 1421511157) ^ v22;
  a17 = v22 ^ 0xA60FE5D8;
  v23 = (*(v20 + 8 * (v21 ^ 0xB17)))(&a15);
  return (*(v20 + 8 * ((2470 * (a18 == (v21 ^ 0x13C) + 671453499)) ^ v21)))(v23);
}

uint64_t sub_1D490447C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v11 = v8 + 8;
  v12 = (a7 + 4 * v11);
  *v12 = a1;
  v12[1] = a1;
  return (*(v10 + 8 * (((v9 == v11) * a8) ^ a6)))();
}

void sub_1D4904AD8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 20) ^ (143681137 * ((~a1 & 0x5E88A740 | a1 & 0xA17758BF) ^ 0xB8200B50));
  v2 = 843532609 * ((&v5 & 0xD3E79BEA | ~(&v5 | 0xD3E79BEA)) ^ 0x70553090);
  v5 = v4;
  v6 = 276443307 - v2;
  v7 = v1 + v2 - 875954146;
  v3 = *(&off_1F5033D40 + v1 - 47);
  (*(v3 + 8 * (v1 + 3616)))(&v5);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1D4904D18(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return (v2 - 671454635);
}

_DWORD *sub_1D4904DD4()
{
  v6 = 1564307779 * (((v5 - 144) & 0x972D2B6 | ~((v5 - 144) | 0x972D2B6)) ^ 0x6180E15A);
  *v2 = v8;
  *(v5 - 136) = v6 + v3 + 1822;
  *(v5 - 120) = (((19 * (v3 ^ 0x5F8)) ^ 0x1BF7A3BF) + v0) ^ v6;
  v2[2] = v4;
  (*(v1 + 8 * (v3 ^ 0xB71)))(v5 - 144);
  result = v11;
  *v10 = v9;
  *v11 = 671454635;
  return result;
}

void sub_1D490508C()
{
  v4 = *(v0 + 20) + v2;
  *v5 = ((v4 >> ((v3 + 1) & 0xFE ^ 0x2C)) ^ 0x7D) - ((2 * (v4 >> ((v3 + 1) & 0xFE ^ 0x2C))) & 4) - 126;
  v5[1] = (BYTE2(v4) ^ 0xFA) - 2 * ((BYTE2(v4) ^ 0xFA) & 7 ^ BYTE2(v4) & 5) - 126;
  v5[2] = (BYTE1(v4) ^ 4) - ((v4 >> 7) & 4) - 126;
  v5[3] = v4 ^ 0xEF;
  *(v0 + 16) = *(v1 + 24);
}

uint64_t sub_1D49051C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a18 = &a13;
  a17 = (50899313 * (&a17 ^ 0x2ACB2A7A)) ^ 0x72E;
  v22 = (*(v20 + 29464))(&a17);
  return (*(v20 + 8 * ((262 * (a19 == v21)) ^ v19)))(v22);
}

uint64_t sub_1D490522C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v5 + 4 * (a3 + v7));
  *v9 = ((v3 + 102) | 1) ^ (v4 + 1601) ^ __ROR4__(*(v9 - 8) ^ *(v9 - 3) ^ *(v9 - 14) ^ *(v9 - 16), 31);
  return (*(v6 + 8 * ((3141 * (a3 + 1 == v8 + 80)) ^ v3)))();
}

void sub_1D4905298(int a1@<W8>)
{
  v6 = ((v2 - 2114) ^ 0xBFFFFB96) & v1;
  v7 = *v3;
  v8 = *(v3 + 4) + a1;
  *(*v3 + v8) = (HIBYTE(v6) ^ 0xEA) - 2 * ((HIBYTE(v6) ^ 0xEA) & 3 ^ HIBYTE(v6) & 1) - 126;
  *(v7 + v8 + 1) = (BYTE2(v6) ^ 0x7C) - ((v6 >> 15) & 4) - 126;
  *(v7 + v8 + 2) = (BYTE1(v6) ^ 0x8B) - 2 * ((BYTE1(v6) ^ 0x8B) & 6 ^ BYTE1(v6) & 4) - 126;
  *(v7 + v8 + 3) = v6 ^ 0x88;
  v9 = *v3;
  v10 = ((v5 ^ 0x4E7821A7) - 382791169) ^ v5 ^ ((v5 ^ 0xA59066A4) + 46618366) ^ ((v5 ^ 0x4CFF777A) - 341293276) ^ ((v5 ^ 0xFFBFFFDF) + 1491652487);
  v11 = ((2 * (a1 + *(v3 + 4) + 4)) & 0xF3DCEFF4) + ((a1 + *(v3 + 4) + 4) ^ 0x79EE77FA) - 2045671418;
  *(*v3 + v11) = (HIBYTE(v10) ^ 0x58) - ((v10 >> 23) & 4) - 126;
  *(v9 + v11 + 1) = (BYTE2(v10) ^ 0xA8) - ((v10 >> 15) & 4) - 126;
  *(v9 + v11 + 2) = (BYTE1(v10) ^ 0xCF) - ((2 * (BYTE1(v10) ^ 0xCF)) & 4) - 126;
  *(v9 + v11 + 3) = ((v5 ^ 0xA7) - 1) ^ v5 ^ ((v5 ^ 0xA4) - 2) ^ ((v5 ^ 0x7A) + 36) ^ ((v5 ^ 0xDF) - 121) ^ 0x24;
  *(v3 + 4) = v4;
}

uint64_t sub_1D49052B0()
{
  v6 = (v1 - 32);
  v7 = (v2 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v0 == 32) * (((v3 + 809) | v4) - 2941)) ^ (v3 + 1799))))();
}

uint64_t sub_1D4905340()
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ 0x7FAD1CBC) + v2;
  *(*(v0 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((2351 * (v8 > (v1 + ((v3 + 1457) | 0x3C) - 3195))) ^ (v3 + 126))))();
}

uint64_t sub_1D4905408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v20 = a17 + v18;
  if (a17 + v18 < 0)
  {
    v20 = -v20;
  }

  return (*(v17 + 8 * ((2525 * (((v20 ^ 0xFFFD73AF) + ((v20 << (v19 - 99)) & 0xFFFAE75E) + 166992) > ((v19 + 1) ^ 0x519) - 1661)) ^ (v19 + 1))))(2152915779);
}

uint64_t sub_1D4905498(uint64_t a1, uint64_t a2, int a3)
{
  v11 = v7 >= 0x10;
  v10 = (v6 - 1) & 0xF;
  v11 = v11 && (1 - v9 + v4 - v6 + v10) >= 0x10;
  v12 = v11 && 1 - v9 + v3 - v6 + v10 >= ((a3 ^ 0xDA9u) - 274) - 2433;
  v13 = -v9 - v6 + v5 + v10 + 3;
  v15 = !v12 || v13 < 0x10;
  return (*(v8 + 8 * ((45 * v15) ^ a3)))();
}

uint64_t sub_1D49055DC@<X0>(int a1@<W8>)
{
  v3 = (a1 - 780223947) & 0x2E8144FB;
  *v5 = (v3 + 60764598) ^ (v1 >> 5);
  v8 = v3 - 143681137 * ((((&v8 | 0x1D66B866) ^ 0xFFFFFFFE) - (~&v8 | 0xE2994799)) ^ 0x431EB89) + 2025;
  v9 = v6;
  (*(v2 + 8 * (v3 + 3477)))(&v8);
  v9 = v7;
  v8 = v3 + 3314 - 143681137 * ((((2 * &v8) | 0xB3152CA4) - &v8 - 1502254674) ^ 0xBF223A42) - 1289;
  (*(v2 + 8 * ((v3 + 3314) ^ 0x3DD)))(&v8);
  return 0;
}

uint64_t sub_1D49055E4()
{
  *(v3 - 180) = (v1 + 1752) ^ (1037613739 * ((((v3 - 192) | 0x4BEACDA3) - (v3 - 192) + ((v3 - 192) & 0xB4153258)) ^ 0x9AE8E0DC));
  *(v3 - 168) = &STACK[0x284];
  LOBYTE(STACK[0x1860]) = -85 * ((((v3 + 64) | 0xA3) - (v3 + 64) + ((v3 + 64) & 0x58)) ^ 0xDC) + 125;
  *(v3 - 192) = &STACK[0x374];
  v7 = v0;
  v4 = (*(v0 + 8 * (v1 + 3629)))(v3 - 192);
  v5 = *(v3 - 184);
  LODWORD(STACK[0x2FC]) = v5;
  return (*(v7 + 8 * (((v5 == v2) * (((v1 + 1204) | 0x88) ^ 0x627)) ^ v1)))(v4);
}

uint64_t sub_1D4905978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, _BYTE *a14, char a15, __int16 a16, char a17, uint64_t a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22, char *a23)
{
  a20 = &a12;
  LODWORD(a21) = v23 + ((((2 * &a19) | 0x3827C124) - &a19 + 1676418926) ^ 0x4D11CDED) * v25 + 2173;
  a22 = a14;
  a23 = &a15;
  (*(v24 + 8 * (v23 + 2373)))(&a19);
  a21 = &a17;
  a19 = a14;
  LODWORD(a22) = (v23 + 749) ^ (843532609 * ((((&a19 | 0xFA38ED7E) ^ 0xFFFFFFFE) - (~&a19 | 0x5C71281)) ^ 0x598A4604));
  (*(v24 + 8 * (v23 ^ 0xB92)))(&a19);
  a20 = a14;
  LODWORD(a19) = (v23 + 496) ^ (1504884919 * (&a19 ^ 0xFBC3B71B));
  v27 = (*(v24 + 8 * (v23 ^ 0xB9A)))(&a19);
  return (*(v24 + 8 * ((3358 * (HIDWORD(a19) == (((v23 - 1043) | 0x241) ^ (v26 + 319)))) ^ v23)))(v27);
}

uint64_t sub_1D4905AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  *(v31 - 144) = &a28;
  *(v31 - 136) = a14;
  *(v31 - 128) = &a28;
  *(v31 - 120) = a13;
  *(v31 - 112) = v28 + 1564307779 * ((v31 - 1871796930 - 2 * ((v31 - 144) & 0x906EA5CE)) ^ 0x76369DD) + 1807;
  (*(v30 + 8 * (v28 ^ 0xE12)))(v31 - 144);
  *(v31 - 136) = &a28;
  *(v31 - 128) = &a28;
  *(v31 - 112) = a14;
  *(v31 - 104) = a13;
  *(v31 - 144) = (v28 + 3113) ^ (1564307779 * ((v31 - 144) ^ 0x970DCC13));
  *(v31 - 120) = &a26;
  v32 = (*(v30 + 8 * (v28 ^ 0xE16)))(v31 - 144);
  return (*(v30 + 8 * (((((34 * (v28 ^ 0xC6)) ^ 0xFFFFF22E) + v29 - 265678217 < ((34 * (v28 ^ 0xC6) + 587705834) & 0xDCF84CED ^ 0x7FFFF757)) * ((34 * (v28 ^ 0xC6) - 3362) ^ 0x28)) ^ (34 * (v28 ^ 0xC6) - 3235))))(v32);
}

uint64_t sub_1D4905C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v4 = **(a3 + 8);
  v7 = (((v5 - 1604) | 0x224u) ^ 0x235) == v3;
  return (*(v6 + 8 * (((8 * v7) | (32 * v7)) ^ v5)))(565);
}

uint64_t sub_1D4905CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *(v5 - 120) = (a3 - 631) | 0x120;
  *(v5 - 112) = veorq_s8(*v7, xmmword_1D4B4B510);
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  v11 = *(v4 + 8 * ((73 * v10) ^ a3));
  *(v5 - 124) = -42900;
  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D4905D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned int a17)
{
  a16 = &a10;
  a14 = a13;
  a17 = (v17 + 1707) ^ (843532609 * (((&a14 | 0x33D7E4B1) - &a14 + (&a14 & 0xCC281B48)) ^ 0x6F9AB034));
  (*(v18 + 8 * (v17 + 3372)))(&a14);
  a14 = a13;
  a16 = &a12;
  a17 = (v17 + 1707) ^ (843532609 * (((&a14 | 0x8DBFD5A5) - &a14 + (&a14 & 0x72402A58)) ^ 0xD1F28120));
  (*(v18 + 8 * (v17 + 3372)))(&a14);
  LODWORD(a14) = (v17 + 1454) ^ (1504884919 * ((&a14 & 0xC30DA99E | ~(&a14 | 0xC30DA99E)) ^ 0xC731E17A));
  a15 = a13;
  v21 = (*(v18 + 8 * (v17 + 3380)))(&a14);
  return (*(v18 + 8 * ((1799 * (HIDWORD(a14) == (v17 ^ (v19 + 3488)) + v20)) ^ v17)))(v21);
}

uint64_t sub_1D4905E84@<X0>(int a1@<W1>, char a2@<W8>)
{
  v8 = (v5 - 32);
  v9 = (v6 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((((v3 ^ (a2 + 50)) ^ (v4 == 32)) & 1) * a1) ^ (v2 + v3 + 2804))))();
}

uint64_t sub_1D4905F20(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = 4 * a2 - 0x18EE0C6A0;
  v11 = (((*(*(v4 + 8) + v10) ^ 0x97902B22) + 1752159454) ^ ((*(*(v4 + 8) + v10) ^ 0x51A00E55) - 1369443925) ^ ((((v9 ^ 0xCC1) + 1180876380) ^ *(*(v4 + 8) + v10)) - 1180878388)) + v8;
  v12 = (((*(*(v5 + 8) + v10) ^ 0xA8E954F2) + 1461103374) ^ ((*(*(v5 + 8) + v10) ^ 0x5299EE8D) - 1385819789) ^ ((*(*(v5 + 8) + v10) ^ 0x7A22593C) - 2049071420)) + v8;
  v13 = v11 < v7;
  v14 = v11 > v12;
  if (v13 != v12 < v7)
  {
    v14 = v13;
  }

  return (*(v6 + 8 * ((v14 * a4) ^ v9)))();
}

uint64_t sub_1D4906078()
{
  *(v6 - 112) = (v5 - 326) ^ (((((v3 | 0x3F2895CE) ^ 0xFFFFFFFE) - (~v3 | 0xC0D76A31)) ^ 0x8BBCA64F) * v2);
  *(v6 - 128) = v0;
  *(v6 - 120) = v4;
  v7 = (*(v1 + 8 * (v5 + 2898)))(v6 - 136);
  return (*(v1 + 8 * ((107 * ((v5 - 699264706 + *(v6 - 136)) < 0xE854ABED)) ^ v5)))(v7);
}

uint64_t sub_1D4906124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (a9 - 441970868) & 0x1A57F3BF;
  v66 = v65 + 1792;
  v67 = *STACK[0x270];
  v68 = *STACK[0x440];
  STACK[0x3C0] = *(v64 + 8 * a9);
  v69 = v65 + 355;
  STACK[0x2F0] = v63 + 432;
  LODWORD(a44) = v68;
  STACK[0x358] = v67;
  LODWORD(STACK[0x2D4]) = -1884712534;
  LODWORD(STACK[0x27C]) = 1499319901;
  STACK[0x3F8] = 0;
  LODWORD(STACK[0x248]) = 1644803956;
  *(&STACK[0x4B0] + v63) = 566983245;
  LODWORD(a59) = v66 - 971680689;
  LODWORD(a60) = -1935286402;
  LODWORD(a61) = 1422141796;
  LODWORD(a57) = -1572286404;
  LODWORD(a58) = 364729943;
  v70 = ((v66 - 1437 + a4) & a5) + 1644803042;
  v72 = *(&STACK[0x4B0] + v63) != 566983245 || LODWORD(STACK[0x248]) != v70;
  return (*(v64 + 8 * ((v72 * a6) ^ v69)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a53, a57, a58, a59, a60, a61, a62, a63, &STACK[0x4B0] + v63);
}

uint64_t sub_1D49061B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, unsigned int a22, unsigned int a23, uint64_t a24)
{
  v30 = 1564307779 * (((&a19 | 0xEEEF82A7) + (~&a19 | 0x11107D58)) ^ 0x79E24EB5);
  a19 = v30 ^ 0x434;
  a23 = v27 - v30 + 2113537133 - ((2 * v27) & 0xFBF408DA);
  a21 = a16;
  (*(v29 + 29720))(&a19);
  v31 = 1564307779 * ((&a19 & 0xF6BC0C54 | ~(&a19 | 0xF6BC0C54)) ^ 0x9E4E3FB8);
  a21 = a16;
  a23 = v26 - ((2 * v26) & 0xFBF408DA) + 2113537133 - v31;
  a19 = v31 ^ 0x434;
  (*(v29 + 29720))(&a19);
  v32 = 742307843 * ((&a19 + 21433846 - 2 * (&a19 & 0x1470DF6)) ^ 0x1F6580A3);
  a21 = a14;
  a24 = a16;
  a19 = v32 ^ 0x491;
  a22 = v32 ^ ((v25 ^ 0x78DE747E) - 1757553664 + ((2 * v25) & 0xF1BCE8FC));
  (*(v29 + 29560))(&a19);
  v33 = 742307843 * (((&a19 ^ 0x3D6CC1E7) & 0xB9EBFDFE | ~(&a19 ^ 0x3D6CC1E7 | 0xB9EBFDFE)) ^ 0x655A4EB3);
  a24 = a16;
  a19 = v33 ^ 0x491;
  a21 = v28;
  a22 = v33 ^ ((a15 ^ 0xDE7D7FFE) + 832491648 + ((2 * a15) & 0xBCFAFFFC));
  (*(v29 + 29560))(&a19);
  v34 = 742307843 * (((&a19 | 0x9E0AFA85) - (&a19 & 0x9E0AFA85)) ^ 0x802877D0);
  a21 = v24;
  a22 = v34 ^ ((a13 ^ 0x9D9CD4FF) + 1920957311 + ((2 * a13) & 0x3B39A9FE));
  a24 = a16;
  a19 = v34 ^ 0x491;
  v35 = (*(v29 + 29560))(&a19);
  return (*(v29 + 8 * ((2315 * (a20 == 671454635)) ^ 0x484u)))(v35);
}

uint64_t sub_1D49064B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, _BYTE *a15, char a16, uint64_t a17, char a18, __int16 a19, char a20, char *a21, char *a22, char *a23, _BYTE *a24, char *a25)
{
  LODWORD(a23) = v25 + 1037613739 * (((&a21 | 0x9587BBAB) + (~&a21 | 0x6A784454)) ^ 0x448596D5) + 2999;
  a24 = a15;
  a25 = &a20;
  a22 = &a14;
  (*(v26 + 8 * (v25 + 3199)))(&a21);
  a23 = a15;
  a21 = &a16;
  LODWORD(a22) = (v25 + 1419) ^ (143681137 * ((-1016769153 - (&a21 | 0xC365557F) + (&a21 | 0x3C9AAA80)) ^ 0xDA320690));
  (*(v26 + 8 * (v25 + 3263)))(&a21);
  LODWORD(a24) = (v25 + 1575) ^ (843532609 * ((2086106970 - (&a21 | 0x7C57775A) + (&a21 | 0x83A888A5)) ^ 0xDFE5DC20));
  a21 = a15;
  a23 = &a18;
  (*(v26 + 8 * (v25 ^ 0xF58)))(&a21);
  a22 = a15;
  LODWORD(a21) = (v25 + 1322) ^ (1504884919 * (((&a21 | 0x4391E667) - &a21 + (&a21 & 0xBC6E1998)) ^ 0xB852517C));
  v27 = (*(v26 + 8 * (v25 + 3248)))(&a21);
  return (*(v26 + 8 * ((2618 * (HIDWORD(a21) == v25 + 671454162)) ^ v25)))(v27);
}

uint64_t sub_1D4906700()
{
  result = (*(v1 + 8 * (v4 + 786)))(**(v2 + 8 * ((v4 - 2275) ^ 0x2D0)), v7, v6);
  *(v0 + 8) = v3;
  return result;
}

uint64_t sub_1D490676C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = v7 + 32;
  v12 = (v11 ^ a2 ^ v8) + v5;
  v13 = *(a4 + v12 - 15);
  v14 = *(a4 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v9 != v11) * a3) ^ (v4 + v6 + 634))))();
}

uint64_t sub_1D490679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19)
{
  v24 = 1564307779 * ((((&a14 ^ 0x151A51) & 0x12B57A51) + (&a14 ^ 0x13A86406) - ((&a14 ^ 0x13A86406) & 0x12B57A51)) ^ 0x9610D244);
  a16 = a11;
  a14 = v24 ^ 0x434;
  a18 = v21 - ((2 * v21) & 0xFBF408DA) - v24 + 2113537133;
  (*(v22 + 29720))(&a14);
  v25 = 742307843 * ((-935949680 - (&a14 | 0xC8368A90) + (&a14 | 0x37C9756F)) ^ 0x29EBF83A);
  a16 = v19;
  a19 = a11;
  a14 = v25 ^ 0x491;
  a17 = ((v20 ^ 0x15BDD8FE) - 94472320 + ((2 * v20) & 0x2B7BB1FC)) ^ v25;
  v26 = (*(v22 + 29560))(&a14);
  return (*(v22 + 8 * ((1984 * (a15 == v23)) ^ 0x9CCu)))(v26);
}

uint64_t sub_1D49069A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v33 = (v28 + 467) | 0x410;
  *(v32 - 112) = v33 - 1619 + ((~((v32 - 144) | 0xC61781CF) + ((v32 - 144) & 0xC61781CF)) ^ 0xAEE5B223) * v31;
  *(v32 - 144) = &a28;
  *(v32 - 136) = a14;
  *(v32 - 128) = &a28;
  *(v32 - 120) = a13;
  (*(v30 + 8 * (v33 + 172)))(v32 - 144);
  *(v32 - 144) = &a28;
  *(v32 - 136) = a14;
  *(v32 - 112) = v33 - 1619 + 1564307779 * ((((v32 - 144) | 0x9612EE75) + (~(v32 - 144) | 0x69ED118A)) ^ 0x11F2267);
  *(v32 - 128) = &a28;
  *(v32 - 120) = a13;
  (*(v30 + 8 * (v33 + 172)))(v32 - 144);
  v34 = 1564307779 * ((v32 + 454371791 - 2 * ((v32 - 144) & 0x1B152A5F)) ^ 0x8C18E64C);
  *(v32 - 128) = ((((v33 + 2086527983) & 0x83A20EAE) + 36955781) * v29 - 1444802585) ^ v34;
  *(v32 - 124) = v33 - v34 - 2450;
  *(v32 - 136) = a15;
  v35 = (*(v30 + 8 * ((v28 + 467) | 0x499)))(v32 - 144);
  return (*(v30 + 8 * ((70 * (*(v32 - 144) == 1641169738)) ^ v33)))(v35);
}

uint64_t sub_1D4906E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, uint64_t a19)
{
  a19 = a13;
  a17 = (v19 + 1544) ^ (((((2 * (&a17 ^ 0xC7947041)) | 0xFE0F32E8) - (&a17 ^ 0xC7947041) + 16279180) ^ 0xC3505E2E) * v20);
  v22 = (*(v21 + 8 * ((v19 - 115) | 0xE01)))(&a17);
  return (*(v21 + 8 * ((v19 - 115) ^ (32 * (a18 == ((v19 + 1732102399) & 0x98C23FDF) + ((v19 - 115) ^ 0x28058B59))))))(v22);
}

void sub_1D4906F48(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a3 = a1;
  a6 = v8;
  a4 = (v7 ^ 0xE68) - 1361651671 * ((2 * (&a3 & 0x6C3505C0) - &a3 + 332069438) ^ 0x58A13640) + 767;
  (*(v6 + 8 * ((v7 ^ 0xE68) + 2953)))(&a3);
  JUMPOUT(0x1D4906FB0);
}

uint64_t sub_1D4906FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, unsigned int a18, unsigned int a19, uint64_t a20)
{
  v26 = 1564307779 * (&a15 ^ 0x970DCC13);
  a17 = a13;
  a15 = v26 ^ 0x434;
  a19 = v22 - ((2 * v22) & 0xFBF408DA) - v26 + 2113537133;
  (*(v23 + 29720))(&a15);
  v27 = 742307843 * ((2 * (&a15 & 0x2E7324F8) - &a15 + 1368185600) ^ 0x4FAE5655);
  a20 = a13;
  a15 = v27 ^ 0x491;
  a18 = ((v21 ^ 0x94BC79FE) + 2069878400 + ((2 * v21) & 0x2978F3FC)) ^ v27;
  a17 = v20;
  v28 = (*(v23 + 29560))(&a15);
  return (*(v23 + 8 * ((1526 * (a16 == v25)) ^ v24)))(v28);
}

uint64_t sub_1D490807C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *a4 = 0;
  *a5 = 0;
  a18 = (1037613739 * (((&a17 | 0xB763E3F8) - (&a17 & 0xB763E3F8)) ^ 0x6661CE87)) ^ 0x86F54BA0;
  v20 = (*(v18 + 29168))(&a17);
  return (*(v18 + 8 * ((3799 * (a17 == 671454635)) ^ v19)))(v20);
}

uint64_t sub_1D490811C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v19 = v15 & 0xFCFF7EBB;
  v20 = v19 - v18;
  v21 = v17 + v19 + 710;
  v22 = a15 + 623504545 < (a2 - 91963281);
  if ((a2 - 91963281) < 0x53E28ECC != a15 + 623504545 < ((v20 + 162357246) & 0xF652ACEF) + 1407353310)
  {
    v22 = (a2 - 91963281) < 0x53E28ECC;
  }

  return (*(v16 + 8 * ((55 * v22) ^ v21)))();
}

uint64_t sub_1D4908138@<X0>(int a1@<W8>)
{
  *v1 = STACK[0x21C];
  v1[85] = STACK[0x364];
  v1[86] = STACK[0x434];
  v1[87] = STACK[0x410];
  v1[88] = STACK[0x45C];
  return (*(v2 + 8 * ((((((a1 - 637) | 0x500) ^ 0x5C0) + 702 + 163 * (((a1 - 637) | 0x500) ^ 0x5C0) - 2940) * (STACK[0x2B0] == 0)) ^ (((a1 - 637) | 0x500) + 1676))))();
}

uint64_t sub_1D4908240@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W8>)
{
  v12 = a1 < a2;
  *(a6 + a7) = *(a5 + v7) - ((2 * *(a5 + v7)) & 4) - 126;
  if (v12 == v7 + 1 > v9)
  {
    v12 = v10 + v7 + 52 < a1;
  }

  return (*(v11 + 8 * ((v12 * (((v8 + a3) & a4) - 35)) ^ v8)))();
}

uint64_t sub_1D49082AC(uint64_t result)
{
  v1 = 1504884919 * (((result | 0x7E4CC78B0061B904) - (result | 0x81B33874FF9E46FBLL) - 0x7E4CC78B0061B905) ^ 0x521C9D31FBA20E1FLL);
  v2 = *(result + 8) ^ v1;
  v3 = *(result + 16) ^ v1;
  v4 = v3 < v2;
  v5 = v3 < v2;
  v6 = v4;
  if ((*result - v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 36;
  if (!v7)
  {
    v8 = 32;
  }

  *(result + 4) = (*(result + v8) + v1) ^ (*(result + 28) - v1);
  return result;
}

void sub_1D4908350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  a22 = (v24 + v22 + 1338) ^ (1564307779 * (((&a18 | 0x9D651406) - &a18 + (&a18 & 0x629AEBF8)) ^ 0xA68D815));
  a19 = a15;
  a20 = 0;
  (*(v23 + 8 * (v22 ^ (v25 + 189))))(&a18);
  JUMPOUT(0x1D48E8E38);
}

uint64_t sub_1D4908400@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = (a1 - 3137) | 0x10F;
  *(v11 - 128) = &a8;
  *(v11 - 132) = v12 + 435584651 * ((-1105986770 - ((v11 - 136) | 0xBE13FB2E) + ((v11 - 136) | 0x41EC04D1)) ^ 0x2CDE1E87) + 1844;
  v13 = (*(v9 + 8 * (v12 ^ 0xF67)))(v11 - 136);
  return (*(v9 + 8 * (((*(v11 - 136) == v10) * (v8 + ((v12 + 136871782) | 0x64444018) + 215 * (v12 ^ 0x110) + 2606)) ^ v12)))(v13);
}

uint64_t sub_1D4908560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  a19 = (1037613739 * (((&a18 | 0x1A2F40B3) - (&a18 & 0x1A2F40B3)) ^ 0xCB2D6DCC)) ^ 0x86F54BA0;
  v20 = (*(v19 + 29168))(&a18);
  return (*(v19 + 8 * ((3348 * (a18 == 671454635)) ^ 0x449)))(v20);
}

uint64_t sub_1D4908618(uint64_t a1)
{
  v1 = 210068311 * (a1 ^ 0x576F9AD7);
  v2 = *(a1 + 12) + v1;
  return (*(*(&off_1F5033D40 + (v2 ^ 0x3A3)) + ((((*(a1 + 8) ^ v1) - 671454636 < 0x63) * ((((v2 + 176) | 0x287) ^ 0xFFFFFFE6) + ((v2 - 354) | 0x499))) ^ v2)))();
}

uint64_t sub_1D4908700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *a4 = 0;
  *a5 = 0;
  a18 = (1037613739 * ((2 * (&a17 & 0x5B882460) - &a17 - 1535648871) ^ 0x7575F6E6)) ^ 0x86F54BA0;
  v20 = (*(v18 + 29168))(&a17);
  return (*(v18 + 8 * ((1847 * (a17 == 671454635)) ^ v19)))(v20);
}

void TBGzuU3p5n1n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4908894@<X0>(unsigned int a1@<W0>, int a2@<W8>)
{
  v9 = v3 < v5;
  *(v8 - 220 + v2) = *(v7 + v4) - ((2 * *(v7 + v4)) & 4) - 126;
  if (v9 == v4 + 1 > a1)
  {
    v9 = v5 + v4 + 9 * (a2 ^ 0xD7B) - 80 < v3;
  }

  return (*(v6 + 8 * ((241 * !v9) ^ a2)))();
}

uint64_t sub_1D49089FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  v27 = 742307843 * (((&a18 | 0x1F7AF643) + (~&a18 | 0xE08509BC)) ^ 0x1587B17);
  a21 = ((v22 ^ 0xD25FFAFE) + 1035752832 + ((v22 << (((v26 + 26) | 0x40) ^ 0x48)) & 0xA4BFF5FC)) ^ v27;
  a20 = v24;
  a22 = a14;
  a18 = (v26 - 350) ^ v27;
  v28 = (*(v23 + 8 * (v26 ^ 0xB80)))(&a18);
  return (*(v23 + 8 * ((2337 * (a19 == v25)) ^ v26)))(v28);
}

uint64_t sub_1D4908B04(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37)
{
  v42 = (a11 + (v38 + v37));
  v43 = *v42;
  v44 = v42[1];
  v45 = (&a37 + v38);
  *v45 = vaddq_s8(vsubq_s8(v43, vandq_s8(vaddq_s8(v43, v43), a5)), a6);
  v45[1] = vaddq_s8(vsubq_s8(v44, vandq_s8(vaddq_s8(v44, v44), a5)), a6);
  return (*(v41 + 8 * (((v38 != 32) * (9 * v40 - 36)) ^ v39)))();
}

uint64_t sub_1D4908B64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 ^ 0xFF0;
  v4 = (*(v2 + 8 * (v3 + 909)))(a1 << (v3 + 1)) != 0;
  return (*(v2 + 8 * ((v4 * (v3 - 2812)) ^ v3)))();
}

uint64_t sub_1D4908C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, unsigned int a12, uint64_t a13, uint64_t *a14, char *a15, int a16, int a17)
{
  v20 = 1504884919 * ((2 * (&a12 & 0x65522230) - &a12 + 447602125) ^ 0xE16E6AD6);
  a17 = (v19 - 876) ^ v20;
  a13 = v17;
  a14 = &a9;
  a15 = &a11;
  a12 = v20 + 1648258744;
  v21 = (*(v18 + 8 * (v19 ^ 0x9AA)))(&a12);
  return (*(v18 + 8 * ((3492 * (*(v17 + 24) == ((v19 - 765655974) & 0x2DA2FC4F) + 671452573)) ^ v19)))(v21);
}

uint64_t sub_1D4908D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, int a19, int a20, uint64_t a21)
{
  v28 = (v21 - 395) | 0x958;
  v29 = 1785193651 * ((2 * (v22 & 0xA46F1E033695B30) - v22 - 0xA46F1E033695B35) ^ 0xAA21B3273AB700E7);
  a20 = v28 - v29 + 1091;
  a17 = a16;
  a18 = v29 ^ (v25 - ((2 * v25) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  (*(v26 + 8 * (v28 + 1163)))(&a17);
  v30 = 742307843 * (((v22 ^ 0x9A7929DE | 0x1DD09789) - (v22 ^ 0x9A7929DE) + ((v22 ^ 0x9A7929DE) & 0xE22F6876)) ^ 0x998B3302);
  a21 = a16;
  LODWORD(a17) = (v28 - 1353) ^ v30;
  a18 = v23;
  a19 = (((2 * v24) & 0x2B3FA2FC) - 92504320 + (((v28 ^ 0xBFE) + 362794842) ^ v24)) ^ v30;
  v31 = (*(v26 + 8 * (v28 ^ 0x7B5)))(&a17);
  return (*(v26 + 8 * ((1999 * (HIDWORD(a17) == v27)) ^ v28)))(v31);
}

uint64_t sub_1D4908F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unsigned int a17, int a18, uint64_t a19)
{
  a18 = 3613 - 1785193651 * (((v23 | 0x878B3530) - (v23 | 0x7874CACF) + 2020920015) ^ 0x71AA911C);
  a15 = a12;
  a16 = (1785193651 * (((v23 | 0x7C2B5E3A878B3530) - (v23 | 0x83D4A1C57874CACFLL) - 0x7C2B5E3A878B3531) ^ 0x23B3E30271AA911CLL)) ^ (v21 - ((2 * v21) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  (*(v22 + 29480))(&a15);
  v24 = 742307843 * ((-197976494 - (v23 | 0xF4331E52) + (v23 | 0xBCCE1AD)) ^ 0x15EE6CF8);
  a19 = a12;
  a17 = ((v20 ^ 0xD87E787F) + ((2 * v20) & 0xB0FCF0FE) + 933091327) ^ v24;
  LODWORD(a15) = v24 ^ 0x491;
  a16 = v19;
  v25 = (*(v22 + 29560))(&a15);
  return (*(v22 + 8 * ((3609 * (HIDWORD(a15) == 671454635)) ^ 0x373u)))(v25);
}

uint64_t sub_1D49090E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v9 - 1;
  *(a6 + v12) = *(v8 + v12);
  return (*(v11 + 8 * (((v12 == 0) * (v10 - a7 - 847)) ^ (v7 + v10 + 2651))))();
}

uint64_t sub_1D490911C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = v17 - 435584651 * ((v18 + 704808278 - 2 * ((v18 - 136) & 0x2A0285DE)) ^ 0x47309F88) + 1433;
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  (*(v16 + 8 * (v17 ^ 0xC04)))(v18 - 136);
  v19 = 143681137 * ((2 * ((v18 - 136) & 0xB06B880) - (v18 - 136) - 184989829) ^ 0x1251EB6B);
  *(v18 - 120) = 327535101 - v19;
  *(v18 - 136) = v17 - v19 + 1414;
  *(v18 - 128) = v15;
  (*(v16 + 8 * (v17 ^ 0xCAC)))(v18 - 136);
  *(v18 - 112) = (v17 - 33) ^ (1361651671 * ((((v18 - 136) | 0x599C4133) - (v18 - 136) + ((v18 - 136) & 0xA663BEC8)) ^ 0x12F78D4D));
  *(v18 - 128) = v15;
  *(v18 - 120) = a14;
  v20 = (*(v16 + 8 * (v17 ^ 0xC9B)))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 136) <= 0x29ADEB86u) * ((v17 + 238) ^ 0x30D)) | v17)))(v20);
}

void sub_1D49092CC()
{
  v0 = MEMORY[0x1EEE9AC00]();
  if (*v0)
  {
    v2 = *(v0 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 28) + 1504884919 * ((-2 - ((~v0 | 0x32E75928) + (v0 | 0xCD18A6D7))) ^ 0xC924EE33);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4909404@<X0>(int a1@<W8>)
{
  v5 = ((-2 - ((v7 ^ 0x10012120 | 0xABCED65B) + (v7 ^ 0xA24AC208 | 0x543129A4))) ^ 0x6DFD0A9) * a1;
  v10 = 0;
  v8 = v3;
  v9 = v5 ^ 0xEA234B82;
  v7[0] = v5 + 1487458214;
  v7[1] = (v1 - 40) ^ v5;
  result = (*(v4 + 8 * (v1 ^ 0xA23u)))(v7);
  *(v2 + 4) = *(v3 + 24);
  return result;
}

uint64_t sub_1D49094E0@<X0>(int a1@<W8>)
{
  v6 = (v1 ^ 0x834) + v2 - 1008;
  *(*v3 + (v5 - 1844318663 + v6)) = *(*v3 + (v2 - 1438290796));
  return (*(v4 + 8 * ((43 * (v6 == a1)) ^ v1)))();
}

void sub_1D490953C(int a1@<W8>)
{
  if (a1 == (v2 ^ (v3 + 3051) ^ 0xFEF))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  JUMPOUT(0x1D490955CLL);
}

uint64_t sub_1D4909598(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v19 = v16 ^ 0x8F0;
  v20 = (v16 ^ 0xF0) + 68 - v18;
  v22 = v15 == 330545680 || a15 - a2 != -715467826;
  return (*(v17 + 8 * ((124 * ((v22 ^ (v20 + 1)) & 1)) ^ v19)))();
}

uint64_t sub_1D4909690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((2031 * (v6 == ((v3 - 248135133) & 0x48AAAF77 ^ 0xA27))) ^ (v4 + v3 + 2531))))();
}

uint64_t sub_1D49096E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(a2 + v7) ^ v4;
  return (*(v6 + 8 * (((v7 != (v5 ^ 0x821)) | (2 * (v7 != (v5 ^ 0x821)))) ^ v2)))();
}

uint64_t sub_1D49097C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a11 + 16) = -v16;
  v21 = 1037613739 * ((v20 - 136) ^ 0xD1022D7F);
  *(v20 - 128) = v18;
  *(v20 - 136) = (v19 - 85) ^ v21;
  *(v20 - 132) = v21 ^ 0x306A01A;
  (*(v17 + 8 * (v19 ^ 0x5DB)))(v20 - 136);
  v22 = 143681137 * ((((v20 - 136) | 0x8B0BE94A) - (v20 - 136) + ((v20 - 136) & 0x74F416B0)) ^ 0x6DA3455A);
  *(v20 - 136) = v19 - v22 - 880;
  *(v20 - 120) = ((32 * a13) ^ 0xBFEFE9FD) - v22 + 1402331135 + ((a13 << ((v19 - 126) ^ (v19 + 52) ^ 0xC8)) & 0x7FDFD3C0);
  *(v20 - 128) = v18;
  (*(v17 + 8 * (v19 ^ 0x5B6)))(v20 - 136);
  *(v20 - 128) = &a16;
  *(v20 - 120) = a15;
  *(v20 - 136) = v19 - 435584651 * ((v20 - 1662629600 - 2 * ((v20 - 136) & 0x9CE649A8)) ^ 0xF1D453FE) - 861;
  (*(v17 + 8 * (v19 + 774)))(v20 - 136);
  *(v20 - 128) = v18;
  *(v20 - 120) = a15;
  *(v20 - 112) = (v19 - 2327) ^ (1361651671 * (((v20 - 136) & 0xBA2BFE61 | ~((v20 - 136) | 0xBA2BFE61)) ^ 0xEBFCDE0));
  v23 = (*(v17 + 8 * (v19 ^ 0x581)))(v20 - 136);
  return (*(v17 + 8 * ((123 * (*(v20 - 136) > 0x29ADEB86u)) ^ v19)))(v23);
}

uint64_t sub_1D49099C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  v16 = (v13 + 908) | 0x980;
  a12 = 0;
  a13 = 4;
  v17 = (*(v14 + 8 * (v16 ^ 0x370)))(*(v15 + 4), 23, 0, 0, &a11, &a13);
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = a13 == ((v16 - 1852926977) & 0x6E715FF6 ^ ((v16 - 3082) + 4));
  }

  v22 = v21;
  return (*(v14 + 8 * ((62 * v22) ^ v16)))(v17, v18, v19, v20);
}

uint64_t sub_1D4909A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, int a23, int a24, char *a25)
{
  if (a11 < 0x1029A6C0)
  {
    v27 = -1556131971;
  }

  else
  {
    v27 = -1556131970;
  }

  v28 = 675097751 * ((&a20 + 1951040864 - 2 * (&a20 & 0x744A8560)) ^ 0x370AA0F6);
  a24 = v27 ^ v28;
  a25 = &a14;
  a21 = (v26 + 1421511438) ^ v28;
  a22 = v28 ^ 0xA1F923D6;
  a20 = a16;
  v29 = (*(v25 + 8 * (v26 ^ 0xA68)))(&a20);
  return (*(v25 + 8 * ((784 * (a23 == ((190 * (v26 ^ 0x436)) ^ 0x2805961D))) ^ v26)))(v29);
}

uint64_t sub_1D4909B44()
{
  *v0 = v8;
  v0[1] = v7;
  v0[2] = v6;
  v0[3] = v10;
  v13 = v11;
  v12 = v3 - 143681137 * (((&v12 | 0x6B915C7D) - &v12 + (&v12 & 0x946EA380)) ^ 0x8D39F06D) + v2 + v1;
  (*(v4 + 8 * ((v2 + v1) ^ 0x788A8E0E)))(&v12);
  v13 = v9;
  v12 = v3 - 143681137 * ((((&v12 | 0xBFC8F42E) ^ 0xFFFFFFFE) - (~&v12 | 0x40370BD1)) ^ 0xA69FA7C1) + v2 + v1;
  (*(v4 + 8 * ((v2 + v1) ^ 0x788A8E0E)))(&v12);
  return 0;
}

uint64_t sub_1D4909C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((1762 * (v7 == ((13 * (v5 ^ (v2 + 1656))) ^ 0x485))) ^ (v3 + v5 + 3194))))();
}

uint64_t sub_1D4909CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, char *a21, int a22)
{
  v24 = 1361651671 * (((&a19 | 0xC85480C9) - (&a19 & 0xC85480C9)) ^ 0x833F4CB7);
  a19 = v24 + 690;
  a20 = 980532356 - v24;
  HIDWORD(a21) = 1118497177 - v24;
  a22 = v24 ^ 0x1274EF34;
  (*(v22 + 29072))(&a19);
  a21 = &a16;
  a19 = (50899313 * ((((2 * &a19) | 0x4B7530FC) - &a19 - 632985726) ^ 0xF71B204)) ^ 0x72E;
  v25 = (*(v22 + 29464))(&a19);
  return (*(v22 + 8 * ((52 * (a22 != v23)) ^ 0x611u)))(v25);
}

uint64_t sub_1D4909E0C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  a7 = v10 - ((&a7 - 1410123751 - 2 * (&a7 & 0xABF33819)) ^ 0x4D5B9409) * v8 + v11 + 284;
  a8 = a1;
  v13 = (*(v9 + 8 * (v11 ^ 0x2B90CECEu)))(&a7);
  return (*(v9 + 8 * (((a5 == 0) * (v11 - v12 - 1912)) ^ (v11 + v10))))(v13);
}

uint64_t sub_1D490A018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  a20 = (1037613739 * (((&a19 | 0x54EF3281) - &a19 + (&a19 & 0xAB10CD78)) ^ 0x85ED1FFE)) ^ 0x86F54BA0;
  v21 = (*(v20 + 29168))(&a19);
  return (*(v20 + 8 * ((2178 * (a19 == 671454635)) ^ 0xD9u)))(v21);
}

uint64_t sub_1D490A0C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = v4 + ((a3 - 1633566946) & 0x615E38AF) - 34;
  v9 = v3 + v4 + 2289 < v5;
  if (v5 < v6 != v8 > (a3 + 120) - 2563978498u)
  {
    v9 = v5 < v6;
  }

  return (*(v7 + 8 * ((63 * v9) ^ a3)))();
}

uint64_t sub_1D490A138@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  v10 = v1 < v3;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  if (v10 == v9 + v5 < v3)
  {
    v10 = v9 + v5 < v1;
  }

  return (*(v8 + 8 * ((v10 * v6) | v4)))();
}

uint64_t sub_1D490A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = ((((v13 + 1441453152) & 0xAA152A6F) + a6 + *(v14 + v10) - ((2 * *(v14 + v10)) & 0x94)) ^ (a6 + 2155)) << (((8 * v10) ^ 0x18) & 0x30 ^ 0x10) << (((v13 - 14) & 0xF7 ^ 0x88) & ((8 * v10) ^ 0x18) ^ 8);
  v18 = (((a4 ^ 0x302A78C8A8E73837) - 0x302A78C8A8E73837) ^ ((a4 ^ 0x42AC463349690D95) - 0x42AC463349690D95) ^ ((a4 ^ 0xB0E084FB87F2A967) + 0x4F1F7B04780D5699)) + (((v17 ^ 0x9E49601B5536841ALL) + 0x34A47F44A591182ALL) ^ ((v17 ^ 0x20CAFB634CA76FB8) - 0x75D81BC343FF0C74) ^ ((v17 ^ 0xBE839B781991EBA2) + 0x146E8427E9367792)) - ((((2 * (v17 & (a4 ^ 0x4266BA00667C9CC5))) ^ 0xEF8C9FA192DE6CDELL) + 0x7F04443A244AD144) ^ (((2 * (v17 & (a4 ^ 0x4266BA00667C9CC5))) ^ 0xE652F6EF9082EAD4) + 0x76DA2D742616574ALL) ^ (((2 * (v17 & (a4 ^ 0x4266BA00667C9CC5))) ^ 0x9DE694E025C860ALL) - 0x66A94D2A4B37C468)) + 0x2626E28FA5046E1CLL;
  return (*(a5 + 8 * (((v10 < 8) * v15) ^ v13)))(a1, 0xE79976D0228FE5A5, a3, ((v18 ^ 0xE79976D0228FE5A5) + a8) ^ v18 ^ ((v18 ^ v11) + v8) ^ ((v18 ^ a3) + v12) ^ ((v18 ^ v9) + v16));
}

uint64_t sub_1D490A4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = (v15 + 1873) ^ (1504884919 * ((-467405254 - ((v19 - 136) | 0xE423F63A) + ((v19 - 136) | 0x1BDC09C5)) ^ 0xE01FBEDE));
  *(v19 - 120) = &a15;
  *(v19 - 136) = v17;
  v20 = (*(v16 + 8 * (v15 ^ 0xBB0)))(v19 - 136);
  return (*(v16 + 8 * ((251 * (v18 != ((v15 + 1239) ^ 0xA4D))) ^ v15)))(v20);
}

uint64_t sub_1D490A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, char a17, _BYTE *a18, char a19, __int16 a20, char a21, char *a22, char *a23, char *a24, _BYTE *a25, char *a26)
{
  a23 = &a17;
  LODWORD(a24) = v26 + 1037613739 * ((1562027764 - (&a22 | 0x5D1AA6F4) + (&a22 | 0xA2E5590B)) ^ 0x73E77474) + 2969;
  a25 = a18;
  a26 = &a19;
  (*(v27 + 8 * (v26 ^ 0xFAF)))(&a22);
  a22 = &a15;
  a24 = a18;
  LODWORD(a23) = (v26 + 1389) ^ (((((&a22 | 0x63088898) ^ 0xFFFFFFFE) - (~&a22 | 0x9CF77767)) ^ 0x7A5FDB77) * v28);
  (*(v27 + 8 * (v26 ^ 0xF6F)))(&a22);
  LODWORD(a25) = (v26 + 1545) ^ (843532609 * (((&a22 | 0x1E35BF3A) - &a22 + (&a22 & 0xE1CA40C0)) ^ 0x4278EBBF));
  a24 = &a21;
  a22 = a18;
  (*(v27 + 8 * (v26 + 3210)))(&a22);
  LODWORD(a22) = (v26 + 1292) ^ (1504884919 * ((2 * (&a22 & 0x2FC64870) - &a22 - 801523827) ^ 0x2BFA0096));
  a23 = a18;
  v29 = (*(v27 + 8 * (v26 + 3218)))(&a22);
  return (*(v27 + 8 * (((HIDWORD(a22) != 671454635) * ((((v26 - 299533474) & 0x11DA83BF) + 347) ^ 0x1F7)) ^ v26)))(v29);
}

uint64_t sub_1D490A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 144) = (v31 + 882) ^ (((2 * ((v32 - 144) & 0xCBBB6A8) - (v32 - 144) + 1933855060) ^ 0xE4498547) * v30);
  *(v32 - 136) = &a28;
  *(v32 - 128) = &a28;
  *(v32 - 120) = &a22;
  *(v32 - 112) = a14;
  *(v32 - 104) = a13;
  v33 = (*(v29 + 8 * (v31 + 1363)))(v32 - 144);
  return (*(v29 + 8 * (((v28 - 265678217 < ((v31 + 587706965) & 0xDCF84CED ^ 0x7FFFF757)) * ((v31 - 2231) ^ 0x28)) ^ (v31 - 2104))))(v33);
}

uint64_t sub_1D490AA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((((v20 - 144) | 0xF16770E1) - (v20 - 144) + ((v20 - 144) & 0xE988F18)) ^ 0x666ABCF2) * v18;
  *(v20 - 136) = a15;
  *(v20 - 128) = (36955955 * v15 - 1444802585) ^ v21;
  *(v20 - 124) = v19 - v21 - 2371;
  v22 = (*(v16 + 8 * (v19 + 216)))(v20 - 144);
  return (*(v16 + 8 * (((*(v20 - 144) != (((v19 - 3477) | 0x82) ^ (v17 + 154))) * (((v19 - 3477) ^ 0x82) - 161)) ^ v19)))(v22);
}

uint64_t sub_1D490AB20(uint64_t a1, int a2, int a3)
{
  v7 = *(v6 + 48 * v5 + 36);
  v9 = v7 != a2 && (v3 ^ 0xF8A ^ (a3 + 1383)) + v7 < (((v3 + 156383484) | 0x80808060) ^ 0x9D2C267);
  return (*(v4 + 8 * ((52 * v9) | v3)))();
}

uint64_t sub_1D490AC08(void *a1)
{
  v3 = v1 - 87;
  if (a1[7])
  {
    v4 = (a1[5] | *a1) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v2 + 8 * ((v5 * (((11 * (v3 ^ 0xBCB)) ^ 0xFFFFF176) + 3 * (v3 ^ 0x9A1))) | v3)))();
}

uint64_t sub_1D490AC8C@<X0>(int a1@<W0>, unint64_t a2@<X6>, uint64_t a3@<X7>, unsigned int a4@<W8>)
{
  v17 = (v15 + 4 * v8);
  v18 = (a2 >> ((v16 & v7) ^ v9)) + v4 * (*(v14 + 4 * v8) ^ a4) + (*v17 ^ a4) + HIDWORD(v6) + v13 * (*(a3 + 4 * v8) ^ a4);
  *(v17 - 1) = v18 + a4 - (a1 & (2 * v18));
  return (*(v10 + 8 * (((v8 + 1 == v5) * v12) ^ v11)))();
}

uint64_t sub_1D490AD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = (((a8 ^ 0xA3CD1836) + 1546840010) ^ ((a8 ^ 0x6A9B361) - 111784801) ^ (((v21 - 110640029) & 0x69835FF ^ a8 ^ (((v21 - 110640029) ^ 0xF967CC14) - 696058520)) + 696059012)) + 244147866;
  v23 = (v22 ^ 0x4054E500) & (2 * (v22 & 0x6558E991)) ^ v22 & 0x6558E991;
  v24 = ((2 * (v22 ^ 0x8AE5E420)) ^ 0xDF7A1B62) & (v22 ^ 0x8AE5E420) ^ (2 * (v22 ^ 0x8AE5E420)) & 0xEFBD0DB0;
  v25 = v24 ^ 0x20850491;
  v26 = (v24 ^ 0x8F200800) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0xBEF436C4) & v25 ^ (4 * v25) & 0xEFBD0DB0;
  v28 = (v27 ^ 0xAEB40480) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x41090931)) ^ 0xFBD0DB10) & (v27 ^ 0x41090931) ^ (16 * (v27 ^ 0x41090931)) & 0xEFBD0DB0;
  return (*(v20 + 8 * ((84 * ((v22 ^ (2 * ((((v29 ^ 0x42D04A1) << 8) & 0xEFBD0D00 ^ 0x2D0D0000 ^ (((v29 ^ 0x42D04A1) << 8) ^ 0xBD0D0000) & (v29 ^ 0x42D04A1)) & (((v29 ^ 0xEB900900) & (v28 << 8) ^ v28) << 16) ^ (v29 ^ 0xEB900900) & (v28 << 8) ^ v28))) != 1700325777)) ^ (v21 - 1259))))(a1, a2, a3, a4, a8, a6, a7, a20);
}

uint64_t sub_1D490AF58@<X0>(int a1@<W8>)
{
  v7 = *(v10 + 24);
  if ((v5 + a1 - 1) >= 0x7FFFFFFF)
  {
    v8 = -v2;
  }

  else
  {
    v8 = v1;
  }

  v11[1] = v8;
  *(v6 - 136) = v3 - 435584651 * ((((2 * (v6 - 136)) | 0xA671ED0A) - (v6 - 136) + 751241595) ^ 0xBE0AECD3) + 307;
  *(v6 - 128) = v7;
  *(v6 - 120) = v11;
  return (*(v4 + 8 * (v3 + 1942)))(v6 - 136);
}

uint64_t sub_1D490B3F4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int32x4_t a11@<Q7>)
{
  v15 = v11 + 4;
  v16 = (a5 + 428) | a2;
  a7.i32[0] = v12->i32[1];
  a7.i32[1] = *(v14 + 4 * (v15 + (v16 ^ a3)));
  a7.i32[2] = v12->i32[3];
  v17 = vextq_s8(a6, a7, 0xCuLL);
  v18 = a7;
  v18.i32[3] = v12[1].i32[0];
  v19 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v18, a10), vandq_s8(v17, a8)), 1uLL), *(v12 - 908));
  v17.i32[0] = *(v13 + 4 * (v12->i32[1] & 1));
  v17.i32[1] = *(v13 + 4 * (*(v14 + 4 * (v15 + (v16 ^ a3))) & 1));
  v17.i32[2] = *(v13 + 4 * (v12->i32[3] & 1));
  v17.i32[3] = *(v13 + 4 * (v18.i8[12] & 1));
  *v12 = veorq_s8(vaddq_s32(vsubq_s32(v19, vandq_s8(vaddq_s32(v19, v19), a9)), a11), v17);
  return (*(a1 + 8 * (((v15 == 392) * a4) ^ a5)))();
}

uint64_t sub_1D490B58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v29 = 1564307779 * ((-579328287 - (&a19 | 0xDD7826E1) + (&a19 | 0x2287D91E)) ^ 0xB58A150D);
  a20 = a15;
  HIDWORD(a21) = v26 - ((2 * v26) & 0xFBF408DA) + 2113537133 - v29;
  LODWORD(a19) = (v28 + 1) ^ v29;
  (*(v27 + 8 * (v28 ^ 0xAB0)))(&a19);
  LODWORD(a22) = (v28 + 780) ^ (435584651 * (((&a19 | 0xF1DFE154) - (&a19 & 0xF1DFE154)) ^ 0x9CEDFB02));
  a21 = a15;
  a19 = v25;
  (*(v27 + 8 * (v28 ^ 0xAAC)))(&a19);
  v30 = 1564307779 * ((2 * (&a19 & 0x19520F40) - &a19 - 424808264) ^ 0x71A03CAB);
  LODWORD(a19) = (v28 + 1) ^ v30;
  HIDWORD(a21) = v24 - ((2 * v24) & 0xFBF408DA) + 2113537133 - v30;
  a20 = a15;
  (*(v27 + 8 * (v28 + 2640)))(&a19);
  v31 = 742307843 * ((-815416563 - (&a19 | 0xCF65BB0D) + (&a19 | 0x309A44F2)) ^ 0x2EB8C9A7);
  a22 = a15;
  a20 = v22;
  LODWORD(a21) = ((v23 ^ 0xD39E5B7F) + 1014887679 + ((v23 << ((v28 ^ 0x5B) - 103)) & 0xA73CB6FE)) ^ v31;
  LODWORD(a19) = (v28 + 94) ^ v31;
  v32 = (*(v27 + 8 * (v28 + 2620)))(&a19);
  return (*(v27 + 8 * (((8 * (HIDWORD(a19) == 671454635)) | ((HIDWORD(a19) == 671454635) << 6)) ^ v28)))(v32);
}

uint64_t sub_1D490B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, unsigned int a20, char *a21)
{
  v24 = 675097751 * (&a16 ^ 0x43402596);
  a16 = a11;
  a20 = v24 ^ 0xA33F4F7D;
  a17 = (v23 + 1421510353) ^ v24;
  a18 = v24 ^ 0xC57A5C7;
  a21 = &a13;
  v25 = (*(v21 + 8 * (v23 ^ 0x62B)))(&a16);
  return (*(v21 + 8 * (((v23 - 119) ^ (a19 == (((v23 + 21) | 0x228) ^ (v22 + 2395)))) & 1 ^ v23)))(v25);
}

uint64_t sub_1D490B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, int a19)
{
  a18 = &a12;
  a17 = (50899313 * ((&a17 - 1933731984 - 2 * (&a17 & 0x8CBD9770)) ^ 0xA676BD0A)) ^ 0x72E;
  v20 = (*(v19 + 29464))(&a17);
  return (*(v19 + 8 * ((273 * (a19 == 671454635)) ^ 0x2ABu)))(v20);
}

uint64_t sub_1D490B984()
{
  v6 = *v4;
  v7 = v2 - (&v6 ^ 0x576F9AD7) * v5 - 500;
  result = (*(v3 + 8 * (v2 ^ 0xB95)))(&v6);
  *(v1 + 4) = 671412035;
  return result;
}

uint64_t sub_1D490BA8C@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t sub_1D490BAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, unsigned int a19, int a20, uint64_t a21)
{
  v28 = (v21 - 67893650) & (2 * v26);
  v29 = 1564307779 * ((&a17 & 0xD3C783C0 | ~(&a17 | 0xD3C783C0)) ^ 0xBB35B02C);
  v30 = v26 - v29;
  v31 = v21 + 456;
  a18 = a16;
  a17 = (v21 + 456) ^ v29;
  a20 = v30 + 2113537133 - v28;
  (*(v27 + 8 * (v21 + 3095)))(&a17);
  v32 = 742307843 * (((&a17 | 0x521F95A) - (&a17 & 0x521F95A)) ^ 0x1B03740F);
  a21 = a16;
  a17 = (v21 + 549) ^ v32;
  a19 = v32 ^ ((v25 ^ 0x375EF8FF) - 658679937 + ((2 * v25) & 0x6EBDF1FE));
  a18 = v24;
  (*(v27 + 8 * (v21 ^ 0xC03)))(&a17);
  v33 = 742307843 * (((&a17 | 0xDA050881) + (~&a17 | 0x25FAF77E)) ^ 0xC42785D5);
  a18 = a11;
  a19 = v33 ^ ((v23 ^ 0xFE9DF67F) + 293493247 + ((2 * v23) & 0xFD3BECFE));
  a17 = (v21 + 549) ^ v33;
  a21 = a16;
  (*(v27 + 8 * (v21 ^ 0xC03)))(&a17);
  if (a12)
  {
    v34 = 2113537132;
  }

  else
  {
    v34 = 2113537133;
  }

  v35 = 1564307779 * (((&a17 | 0xE84B4A11) - &a17 + (&a17 & 0x17B4B5E8)) ^ 0x7F468602);
  a20 = v34 - v35;
  a17 = v31 ^ v35;
  a18 = a16;
  (*(v27 + 8 * (v21 + 3095)))(&a17);
  if (v22)
  {
    v36 = 2113537132;
  }

  else
  {
    v36 = 2113537133;
  }

  v37 = 1564307779 * ((-39709518 - (&a17 | 0xFDA214B2) + (&a17 | 0x25DEB4D)) ^ 0x9550275E);
  a20 = v36 - v37;
  a18 = a16;
  a17 = v31 ^ v37;
  v38 = (*(v27 + 8 * (v21 ^ 0xCEF)))(&a17);
  return (*(v27 + 8 * ((2640 * (a19 == 671454635)) ^ v21)))(v38);
}

uint64_t sub_1D490BD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((29 * (v5 == ((71 * (v3 ^ 0x563u)) ^ 0x1F1))) ^ v3)))();
}

uint64_t sub_1D490BDBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q5>)
{
  v6 = (a1 + v4);
  *v6 = a3;
  v6[1] = a3;
  return (*(v5 + 8 * ((322 * (((v3 + 869) ^ 0xDA6) == (a2 & 0xFFFFFFFFFFFFFFE0))) | v3)))();
}

uint64_t sub_1D490BE98@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v6 = v2 - v3 - 8;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * (v4 ^ 0x634)) ^ v4)))(a2 + v6 - 8, v4 ^ 0x634u, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1D490BEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x645u) - 971) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((54 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1D490BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, char *a22, int a23)
{
  a21 = (50899313 * ((&a21 - 130972671 - 2 * (&a21 & 0xF8318401)) ^ 0xD2FAAE7B)) ^ 0x72E;
  a22 = &a14;
  v24 = (*(v23 + 29464))(&a21);
  return (*(v23 + 8 * ((1410 * (a23 == 671454635)) ^ 0x38Cu)))(v24);
}

uint64_t sub_1D490C06C(uint64_t a1, int a2)
{
  v5 = a2 - 233419339 + (v4 ^ 0x504) + 1507;
  v6 = v3 - 233417331;
  v7 = v6 < -707885260;
  v8 = v5 < v6;
  if (v7 != v5 < -707885260)
  {
    v8 = v7;
  }

  return (*(v2 + 8 * (v4 | (8 * v8))))();
}

uint64_t sub_1D490C1B4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 31 * (v3 ^ 0x829u) - 1334;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((456 * (v5 == 0)) ^ (v3 + 599))))();
}

uint64_t sub_1D490C24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 + 76) - 1690) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((2150 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1D490C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 - 21) ^ (843532609 * ((((2 * &a15) | 0xA1E7772C) - &a15 + 789333098) ^ 0x8CBEEF13));
  a17 = &a11;
  a15 = a13;
  (*(v20 + 8 * (v18 ^ 0x694u)))(&a15);
  LODWORD(a15) = (v18 - 274) ^ (1504884919 * (&a15 ^ 0xFBC3B71B));
  a16 = a13;
  v21 = (*(v20 + 8 * (v18 ^ 0x69Cu)))(&a15);
  return (*(v20 + 8 * (((HIDWORD(a15) == v19) * ((v18 - 1116) ^ 0x25B)) ^ v18)))(v21);
}

uint64_t sub_1D490C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v38 = v37[1];
  v39 = v37[398] ^ ((v37[2] & (((v34 + 1706860671) & 0x9A435BEF) + v36) | v38 & 0x80000000) >> 1) ^ *(&a34 + (v37[2] & 1));
  *v37 = v37[397] ^ ((v38 & 0x7FFFFFFE | *v37 & 0x80000000) >> 1) ^ *(&a34 + (v38 & 1));
  v37[1] = v39;
  return (*(v35 + 8 * (v34 - 985)))();
}

uint64_t sub_1D490C534(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a2 = 0;
  *a3 = 0;
  a16 = (1037613739 * ((&a15 - 246207505 - 2 * (&a15 & 0xF1532BEF)) ^ 0x20510690)) ^ 0x86F54BA0;
  v17 = (*(v16 + 29168))(&a15);
  return (*(v16 + 8 * ((53 * (a15 != 671454635)) ^ 0x291u)))(v17);
}

uint64_t sub_1D490C65C(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = v8 + 2;
  v16 = v10 + 2;
  v17 = vaddq_s8(vsubq_s8(*v15, vandq_s8(vaddq_s8(*v15, *v15), a1)), a2);
  v16[-1] = vaddq_s8(vsubq_s8(v15[-1], vandq_s8(vaddq_s8(v15[-1], v15[-1]), a1)), a2);
  *v16 = v17;
  return (*(v13 + 8 * (((v9 == 32) * (((v7 ^ (a7 + 2)) * v11) ^ v12)) ^ (v14 + v7 + 443))))();
}

uint64_t sub_1D490C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, unsigned int a22, unsigned int a23, uint64_t a24)
{
  v30 = 1564307779 * ((-1640394577 - (&a19 | 0x9E3990AF) + (&a19 | 0x61C66F50)) ^ 0xF6CBA343);
  a19 = v30 ^ 0x434;
  a21 = a16;
  a23 = v24 - v30 - ((2 * v24) & 0xFBF408DA) + 2113537133;
  (*(v29 + 29720))(&a19);
  v31 = 742307843 * (&a19 ^ 0x1E228D55);
  a19 = v31 ^ 0x491;
  a24 = a16;
  a21 = v26;
  a22 = ((v27 ^ 0x579E7FFF) - 1199714177 + ((2 * v27) & 0xAF3CFFFE)) ^ v31;
  (*(v29 + 29560))(&a19);
  v32 = 742307843 * ((&a19 & 0x785AAB1B | ~(&a19 | 0x785AAB1B)) ^ 0x9987D9B1);
  a22 = v32 ^ ((v28 ^ 0x345D517E) - 608239872 + ((2 * v28) & 0x68BAA2FC));
  a24 = a16;
  a21 = v25;
  a19 = v32 ^ 0x491;
  v33 = (*(v29 + 29560))(&a19);
  return (*(v29 + 8 * ((1016 * (a20 != 671454635)) ^ 0x5EDu)))(v33);
}

uint64_t sub_1D490CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t *a13, int a14)
{
  a13 = &a9;
  a12 = (50899313 * (((&a12 | 0x4175445) + (~&a12 | 0xFBE8ABBA)) ^ 0x2EDC7E3E)) ^ 0x72E;
  v15 = (*(v14 + 29464))(&a12);
  return (*(v14 + 8 * ((1860 * (a14 == 671454635)) ^ 0x944u)))(v15);
}

uint64_t sub_1D490CAE4()
{
  v4 = v3 - 434017641;
  v5 = v4 < ((v1 - 1387943348) & 0x52BA52F3u) + 684478792;
  v6 = v2 + 684479482 < v4;
  if (v2 > 0xD733AC05 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v0 + 8 * (v7 ^ v1 ^ 1)))();
}

void sub_1D490CBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  *v9 = 0;
  *a9 = 0;
  JUMPOUT(0x1D49035D0);
}

uint64_t sub_1D490CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, unsigned int a27)
{
  *v30 = v29 + 1;
  v33 = ((v28 ^ (v28 >> 11)) << 7) & 0x9D2C5680 ^ v28 ^ (v28 >> 11);
  *(*v32 + a27) ^= (v33 << (a25 ^ 0x71)) & 0xEFC60000 ^ v33 ^ (((v33 << (a25 ^ 0x71)) & 0xEFC60000 ^ v33) >> 18);
  return (*(v27 + 8 * ((52 * (a27 + v31 - 1883963719 + 4 < 0x200)) ^ (v31 - 1883961523))))();
}

uint64_t sub_1D490CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, char *a18, unsigned int a19)
{
  a19 = (v20 + 1416) ^ (843532609 * ((-1991704173 - (&a16 | 0x89490193) + (&a16 | 0x76B6FE6C)) ^ 0x2AFBAAE9));
  a16 = a13;
  a18 = &a12;
  (*(v19 + 8 * (v20 + 3081)))(&a16);
  a16 = a13;
  a18 = &a15;
  a19 = (v20 + 1416) ^ (843532609 * (&a16 ^ 0x5C4D5485));
  (*(v19 + 8 * (v20 + 3081)))(&a16);
  LODWORD(a16) = (v20 + 1163) ^ (1504884919 * ((((2 * &a16) | 0x5453C2FA) - &a16 - 707387773) ^ 0xD1EA5666));
  a17 = a13;
  v21 = (*(v19 + 8 * ((v20 + 2116) ^ 0x435)))(&a16);
  return (*(v19 + 8 * ((126 * (((((v20 + 68) ^ 0x2D) + 50) ^ (HIDWORD(a16) == 671454635)) & 1)) ^ (v20 + 2116))))(v21);
}

uint64_t sub_1D490CE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((56 * (v6 != (v4 ^ 0x214))) ^ v2)))();
}

uint64_t sub_1D490CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (a1 + v7 - 16);
  v11 = (v6 + v7 - 16);
  v12.i64[0] = 0x8282828282828282;
  v12.i64[1] = 0x8282828282828282;
  v13 = veorq_s8(*v11, v12);
  v10[-1] = veorq_s8(v11[-1], v12);
  *v10 = v13;
  return (*(v9 + 8 * ((((v7 & 0xFFFFFFE0) == 32) * ((v8 - 281157864) & 0xCC2CBEF8 ^ 0x11D)) ^ (a6 + v8 + 195))))();
}

uint64_t sub_1D490CFE4()
{
  v6[1] = v2 + 8;
  v7 = v1 - 1785193651 * (((v6 | 0x982AA52C) - (v6 & 0x982AA52C)) ^ 0x6E0B0100) - 1224079316;
  result = (*(v3 + 8 * (v1 ^ 0x62A)))(v6);
  *v0 = v4;
  return result;
}

uint64_t sub_1D490D084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17)
{
  v20 = *v17;
  v21 = v17[1];
  v22 = v17[2];
  a17 = (v19 + 1223) ^ (435584651 * (((&a14 | 0x42E6B777) - &a14 + (&a14 & 0xBD194888)) ^ 0x2FD4AD21));
  a14 = v22;
  a16 = a10;
  (*(v18 + 8 * (v19 ^ 0xCE7)))(&a14);
  a17 = (v19 + 1223) ^ (435584651 * ((554671530 - (&a14 | 0x210F9DAA) + (&a14 | 0xDEF06255)) ^ 0xB3C27803));
  a16 = a10;
  a14 = v21;
  (*(v18 + 8 * (v19 + 3111)))(&a14);
  a17 = v19 - 210068311 * ((&a14 - 206957877 - 2 * (&a14 & 0xF3AA12CB)) ^ 0xA4C5881C) + 1209;
  a14 = v20;
  a16 = a10;
  v23 = (*(v18 + 8 * (v19 + 3182)))(&a14);
  return (*(v18 + 8 * (((a15 == 671454635) * ((1111 * (v19 ^ 0x27A)) ^ 0x69F)) ^ v19)))(v23);
}

uint64_t sub_1D490D1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  (*(v25 + 8 * SHIDWORD(a12)))(a13 + a14);
  v27 = (*(v25 + 8 * a12))();
  *v26 = v27;
  v28 = (v27 ^ (v27 >> 30)) * (((v24 - 576049435) & 0x2255CBBF) + 1812432960) + 1;
  v26[1] = v28;
  return (*(v25 + 8 * (v24 - 343)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D490D298(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = v5 + 8;
  *(v9 + (v11 ^ a3 ^ v8) + v4) = *(v6 + (v11 ^ a3 ^ v8) + v4);
  return (*(v10 + 8 * (((a1 == v11) * a4) ^ v7)))();
}

uint64_t sub_1D490D3C4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 | 0x443));

  return v3(v1);
}

uint64_t sub_1D490D438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a17 = (50899313 * (((&a17 | 0x3CF60A9B) - &a17 + (&a17 & 0xC309F560)) ^ 0x163D20E1)) ^ 0x72E;
  a18 = &a12;
  v21 = (*(v19 + 29464))(&a17);
  return (*(v19 + 8 * ((3400 * (a19 == ((v20 + 131) ^ 0x385))) ^ 0x6F0u)))(v21);
}

void sub_1D490D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v12 = *(v10 + 56);
  **v10 = v11;
  *v12 = a10;
  JUMPOUT(0x1D4906730);
}

uint64_t sub_1D490D5C8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x218] + (a2 >> (v3 ^ 0x63)) + 18);
  v6 = ((2 * a2) & 0xF2DEEF90) + (a2 ^ 0xF96F77CA) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0x46) - 2 * ((HIBYTE(v5) ^ 0x46) & 3 ^ HIBYTE(v5) & 1) - 126;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x2C) - ((v5 >> 15) & 4) - 126;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0x48) - ((v5 >> 7) & 4) - 126;
  *(a1 + v6 + 3) = v5 ^ 0xB;
  return (*(v4 + 8 * ((7 * (a2 + 4 >= LODWORD(STACK[0x274]))) ^ v3)))();
}

uint64_t sub_1D490D788@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X6>, int a3@<W8>)
{
  v6 = (v3 - 170259522) & 0xA25F78D;
  *v8 = a1;
  *a2 = a3;
  v11 = v6 - 143681137 * (((&v11 | 0x3EFDDDAD) - &v11 + (&v11 & 0xC1022250)) ^ 0xD85571BD) + 551;
  v12 = v10;
  (*(v4 + 8 * (v6 ^ 0x8ED)))(&v11);
  v11 = v6 + 912 - 143681137 * (((&v11 | 0x7F83829D) + (~&v11 | 0x807C7D62)) ^ 0x992B2E8C) - 361;
  v12 = v9;
  (*(v4 + 8 * (v6 + 2003)))(&v11);
  return (v5 - 671454635);
}

uint64_t sub_1D490D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *a6 = 0;
  *a7 = 0;
  a18 = (1037613739 * (&a17 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v19 = (*(v18 + 29168))(&a17);
  return (*(v18 + 8 * ((12 * (a17 == 671454635)) ^ 0x255u)))(v19);
}

uint64_t sub_1D490DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, unsigned int a13, uint64_t *a14)
{
  v18 = 1361651671 * ((&a10 + 839404203 - 2 * (&a10 & 0x32084AAB)) ^ 0x796386D5);
  a14 = &a9;
  a12 = v14;
  a10 = v18 + ((2 * v17) & 0x1E) - 121700361 + (v17 ^ 0x5FE9C890 ^ (35 * (v16 ^ 0x1C3)));
  a11 = (v16 + 627) ^ v18;
  a13 = v18 ^ 0xEAF47C4E;
  v19 = (*(v15 + 8 * (v16 + 3260)))(&a10);
  return (*(v15 + 8 * ((630 * (*(v14 + 24) == 671454635)) ^ v16)))(v19);
}

void sub_1D490DAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  *a11 = a1;
  *v12 = v11;
  JUMPOUT(0x1D4921348);
}

uint64_t sub_1D490DAF4(uint64_t a1)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((46 * (v6 != ((v4 - 1704493381) & 0xA399AF7E) - 628)) ^ (v1 + v4 + 820))))();
}

void sub_1D490DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a6 = a1;
  *a5 = a16 ^ (v17 + 1393) ^ ((v16 - 2191) | 0x424);
  JUMPOUT(0x1D490DB70);
}

uint64_t sub_1D490DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char *a17, int a18)
{
  a17 = &a11;
  a16 = (50899313 * ((&a16 + 803900442 - 2 * (&a16 & 0x2FEA8C1A)) ^ 0x521A660)) ^ 0x72E;
  v21 = (*(v18 + 29464))(&a16);
  return (*(v18 + 8 * ((3433 * (a18 == (((v20 ^ 0x6A48538A) - 1783122631) ^ (v19 + 2095)))) ^ v20)))(v21);
}

uint64_t sub_1D490DDD8()
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  v5 = (((v3 - 701) | 0xC17) ^ (v0 - 3019)) + v1;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v4 + 8 * ((2520 * (v2 > v6)) ^ v3)))();
}

uint64_t sub_1D490DE1C@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  *a6 = a1;
  *a5 = a2;
  return (*(v16 + 8 * (((a14 == v15) * ((v14 + 539461338) & 0xDFD86FFD ^ 0x77E)) ^ v14)))();
}

uint64_t sub_1D490DE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v17 - 112) = v11 + ((v17 - 144) ^ 0x970DCC13) * v16 - 175;
  *(v17 - 128) = &a11;
  *(v17 - 120) = v12;
  *(v17 - 144) = &a11;
  *(v17 - 136) = v13;
  (*(v14 + 8 * (v11 ^ 0x6D0)))(v17 - 144);
  v18 = ((~((v17 - 144) | 0x8FEBDD44) + ((v17 - 144) & 0x8FEBDD44)) ^ 0xE719EEA8) * v16;
  *(v17 - 136) = a10;
  *(v17 - 128) = (36955955 * (v11 + 553 + v15 - 2710) - 1370890675) ^ v18;
  *(v17 - 124) = v11 - v18 - 1006;
  v19 = (*(v14 + 8 * (v11 ^ 0x6F5)))(v17 - 144);
  return (*(v14 + 8 * ((235 * (*(v17 - 144) != 1641169738)) ^ v11)))(v19);
}

uint64_t sub_1D490DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, char *a20, int a21)
{
  a19 = (v21 + 14) ^ (50899313 * ((-1544871983 - (&a19 ^ 0x13A63A58 | 0xA3EB1FD1) + (&a19 ^ 0x13A63A58 | 0x5C14E02E)) ^ 0x6579F00C));
  a20 = &a14;
  v23 = (*(v22 + 8 * (v21 + 1859)))(&a19);
  return (*(v22 + 8 * ((2320 * (a21 == ((v21 - 19667761) & 0x1DEEF73B ^ 0x34C77680))) ^ v21)))(v23);
}

uint64_t sub_1D490E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, unsigned int a24)
{
  a24 = (v25 + 1098) ^ (((&a21 + 1046759605 - 2 * (&a21 & 0x3E6448B5)) ^ 0x62291C30) * v24);
  a23 = &a20 + 4;
  a21 = a13;
  v27 = (*(v26 + 8 * (v25 ^ 0xD37u)))(&a21);
  return sub_1D48CD1A4(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D490E154()
{
  v4 = ((58 * (v1 ^ 0x9FFu)) ^ 0xDD8) - v2;
  v5 = 1854295987 - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = !v6;
  return (*(v3 + 8 * (v1 | (4 * (((v1 + 44) ^ v7) & 1)))))();
}

uint64_t sub_1D490E2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = ((((v6 ^ 0x65) + 72) ^ v6 ^ ((v6 ^ 0xEF) + 78)) ^ (((v6 ^ 0x5E) + (a5 ^ 0x76) + 3) ^ ((v6 ^ 9) + a5 + 32 + 0x80))) & 0x7F;
  v9 = v7 == 93 || (v7 ^ 0x5Du) > 4;
  return (*(v5 + 8 * ((70 * v9) ^ a5)))();
}

uint64_t sub_1D490E3B8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = v7 + 2;
  v10[-1] = a1;
  *v10 = a1;
  return (*(v9 + 8 * (((v6 == 32) * v8) ^ (a5 + v5 + 2722))))();
}

uint64_t sub_1D490E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a18 = &a13;
  a17 = (50899313 * (&a17 ^ 0x2ACB2A7A)) ^ 0x72E;
  v20 = (*(v19 + 29464))(&a17);
  return (*(v19 + 8 * ((20 * (a19 != 671454635)) | 0x543)))(v20);
}

uint64_t sub_1D490E4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((1132 * ((v3 ^ 0x9E6) == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_1D490E7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v4 - 290548943) & 0x1F6D85AF) - 1429)) | (v2 + v4 + 65))))();
}

uint64_t sub_1D490E81C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v43 = 1785193651 * ((v42 - 168) ^ 0xF621A42C);
  *(v42 - 160) = v43 + v41 + 2525;
  *(v42 - 156) = a17 - v43;
  STACK[0x308] = a2;
  v44 = (*(v40 + 8 * (v41 ^ 0xEEB)))(v42 - 168);
  v45 = ((a40 & 0x3F ^ 0xF194AA0E) - 925382015) ^ (((v41 - 14) ^ 0x7AC23353 ^ a40 & 0x3F) + 1132549098) ^ (((v41 - 1651595335) & 0x62715FBF ^ a40 & 0x3F ^ 0x8B569ED2) - 1307182616);
  *(&a31 + v45 - 960716943) = 2;
  return (*(v40 + 8 * ((2715 * (v45 - 960716999 < 0xFFFFFFC8)) ^ v41)))(v44);
}

uint64_t sub_1D490EC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57)
{
  LODWORD(a27) = 0;
  v61 = ((&a39 ^ 0xFBFBBBF7FD1B59DBLL) + 0x404440802E4A625 + ((2 * &a39) & 0xF7F777EFFA36B3B0)) % 0x25;
  v73 = (2 * v61) & 0x6E;
  v72 = (v61 ^ 0xE79B1FF79FB6D377) + 0x1864E00860492C99;
  LODWORD(a36) = -1189817957;
  LODWORD(a30) = -1522385571;
  v62.i64[0] = 0x100000001;
  v62.i64[1] = 0x100000001;
  v75 = vnegq_f32(v62);
  v76 = vdupq_n_s32(0x12F937DAu);
  v74 = vdupq_n_s32(0x97C9BEDu);
  LODWORD(a25) = 1568966270;
  a56 = 159161325;
  a57 = -1871434958;
  v77 = off_1F5034078;
  LODWORD(a39) = *off_1F5034078;
  v78 = off_1F5034190;
  v63 = *off_1F5034190;
  v64 = 675097751 * ((v60 + 0x4859853D0532D18BLL - 2 * ((v60 - 144) & 0x4859853D0532D21BLL)) ^ 0xC9B12F964672F78DLL);
  *(v60 - 120) = v64;
  *(v60 - 132) = v64 ^ 0x50798517;
  *(v60 - 128) = 1350141250 - v64;
  *(v60 - 144) = -675097751 * ((v60 + 87216523 - 2 * ((v60 - 144) & 0x532D21B)) ^ 0x4672F78D);
  *(v60 - 140) = 1699922583 - v64;
  *(v60 - 104) = v63 ^ v64;
  *(v60 - 112) = v64 + 1350141310;
  HIDWORD(a26) = -1883959469;
  (*(v57 + 29656))(v60 - 144);
  return (*(v57 + 8 * *(v60 - 136)))(v57, 2411004200, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, v59, v72, v73, v58, a17, (v60 - 144) ^ 0x95C68C42349343E8, v74.i64[0], v74.i64[1], v75.i64[0], v75.i64[1], v76.i64[0], v76.i64[1], a25, a26, a27, v77, v78, a30, a31, a32, (50899313 * ((v60 - 144) ^ 0xB30B77E62ACB2A7ALL)) ^ 0x26F, 50899313 * ((((2 * (v60 - 144)) | 0x561348DE13D70168) - (v60 - 144) + 0x54F65B90F6147F4CLL) ^ 0x1802D3892320AACELL), 50899313 * ((((2 * (v60 - 144)) | 0xE9E4C1D4A3382642) - (v60 - 144) + 0xB0D9F15AE63ECDFLL) ^ 0x47F9170C7B57395BLL), a36, 50899313 * ((v60 - 144) ^ 0xB30B77E62ACB2A7ALL), v57, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D490EF6C(int a1)
{
  v12 = v2 + a1 + (*(*(v10 + 8) + 4 * v3) ^ v7);
  *(*(v1 + 8) + 4 * v3) = v7 + (v4 & v6) + v12 - (v9 & (2 * v12)) - 1805;
  return (*(v8 + 8 * ((2 * (v3 + 1 == v11)) | (4 * (v3 + 1 == v11)) | v5)))();
}

uint64_t sub_1D490EFC8(uint64_t a1)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((3117 * (v6 == ((v4 + v2) | 0x122u) - 423)) ^ (v4 + v2 + 72))))();
}

uint64_t sub_1D490F058()
{
  v3 = (v1 + 2094644601) & 0x83263BEC;
  v4 = v0 < (((v3 - 76) | 0x88) ^ ((v3 - 640) | 0x41E) ^ 0x6AAuLL);
  return (*(v2 + 8 * ((4 * v4) | (8 * v4) | v3)))();
}

uint64_t sub_1D490F0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v61 = v60[396] ^ ((*v60 & 0x7FFFFFFE | ((v58 ^ 0x8FB508A6) - 263520552) & v60[623]) >> 1);
  v60[623] = (v61 + v59 - ((v61 << ((v58 - 31) & 0xB8 ^ (a5 + 1))) & a7)) ^ *(&a58 + (*v60 & 1));
  return (*(a4 + 8 * ((37 * (a40 > 0x26F)) ^ v58)))();
}

uint64_t sub_1D490F154@<X0>(uint64_t a1@<X1>, char a2@<W2>, int a3@<W3>, int a4@<W8>)
{
  v8 = (v7 + 4 * v5);
  v9 = v5 + 1;
  *v8 = *(a1 + 4 * (*(v7 + 4 * v9) & 1)) ^ v8[397] ^ ((*(v7 + 4 * v9) & 0x7FFFFFFE | v4 & 0x80000000) >> ((a4 - 111) ^ a2));
  return (*(v6 + 8 * (((v9 == 227) * a3) ^ a4)))();
}

uint64_t sub_1D490F1B4@<X0>(uint64_t a1@<X8>)
{
  v6.i64[0] = 0x404040404040404;
  v6.i64[1] = 0x404040404040404;
  v7.i64[0] = 0x8282828282828282;
  v7.i64[1] = 0x8282828282828282;
  v8 = ((27 * (v5 ^ (v4 + 1555))) ^ 0xFFFFFFFFFFFFF414) + v3;
  v9 = *(v2 + v8 - 15);
  v10 = *(v2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v6)), v7);
  *(v11 - 31) = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), v6)), v7);
  return (*(v1 + 8 * ((3011 * ((v3 & 0xFFFFFFE0) == 32)) ^ (v5 - 1079706471))))();
}

uint64_t sub_1D490F2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  v62 = (v61 + 4 * v58);
  v63 = v59 & 0x80000000;
  v64 = v58 + 1;
  v65 = *(v61 + 4 * v64);
  v66 = v62[397] ^ ((v65 & ((v57 + 1625) ^ a6) | v63) >> 1);
  *v62 = (v66 + v60 - (a7 & (2 * v66))) ^ *(&a57 + (v65 & 1));
  return (*(a4 + 8 * ((11 * (v64 != 227)) ^ v57)))();
}

uint64_t sub_1D490F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (&a12 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v14 = (*(v13 + 29168))(&a12);
  return (*(v13 + 8 * ((2365 * (a12 == 671454635)) ^ 0x22Au)))(v14);
}

uint64_t sub_1D490F638()
{
  v4 = (v3 ^ 0x37A) + 1407;
  v5 = v2 > 1327564573;
  if (v5 == v0 - 853096645 < -1327564574)
  {
    v5 = v0 - 853096645 < v2 + 819917275 + v4;
  }

  return (*(v1 + 8 * ((2372 * v5) ^ v4)))();
}

uint64_t sub_1D490F744@<X0>(unsigned int a1@<W0>, int a2@<W1>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v21 = a3 < v14;
  *(&a14 + v16) = *(v20 + v17) - ((v19 - 110) & (2 * *(v20 + v17))) - 126;
  if (v21 == v17 + 1 > a1)
  {
    v21 = a2 + v17 + 7 < a3;
  }

  return (*(v18 + 8 * ((v21 * v15) ^ v19)))();
}

uint64_t sub_1D490F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v18 - 120) = v16;
  *(v18 - 136) = a13;
  *(v18 - 128) = (v17 + 2443) ^ (1504884919 * (((v15 | 0x5AE9268C) - v15 + (v15 & 0xA516D970)) ^ 0xA12A9197));
  v19 = (*(v14 + 8 * (v17 ^ 0xDFE)))(v18 - 136);
  return (*(v14 + 8 * (((((v17 - 62079817) & 0x3B3425D) + ((v17 - 249) | 0x10) - 950) * (v13 == 1)) ^ v17)))(v19);
}

uint64_t sub_1D490FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = (a11 + 758) | 0x18;
  v23 = ((v21 - 136) ^ 0x970DCC13) * v16;
  *(v21 - 116) = v17 - v23 + *v20 - ((v22 ^ 0xFBF40CC2) & (2 * *v20));
  *(v21 - 136) = (a11 + 810) ^ v23;
  *(v18 + 8) = a16;
  v24 = (*(v19 + 8 * (a11 ^ 0xF89)))(v21 - 136);
  return (*(v19 + 8 * ((3665 * (*(v21 - 120) == v22 + 671453587)) ^ v22)))(v24);
}

void sub_1D490FB40()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1D490FB5CLL);
}

uint64_t sub_1D490FC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (1037613739 * (((&a14 | 0xBCE61206) - &a14 + (&a14 & 0x4319EDF8)) ^ 0x6DE43F79)) ^ 0x86F54BA0;
  v17 = (*(v15 + 29168))(&a14);
  return (*(v15 + 8 * ((3579 * (a14 == 671454635)) ^ v16)))(v17);
}

uint64_t sub_1D490FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, int a14)
{
  v16 = 1361651671 * ((-624040477 - (&a10 | 0xDACDE5E3) + (&a10 | 0x25321A1C)) ^ 0x6E59D662);
  a12 = v16 ^ 0x50DBE8EE;
  a10 = 1910104772 - v16;
  a13 = v16 + 632362978;
  a14 = v16 + v14 + 908;
  v17 = (*(v15 + 8 * (v14 + 3631)))(&a10);
  return (*(v15 + 8 * ((219 * (a11 > 0x687B505B)) ^ v14)))(v17);
}

uint64_t sub_1D4910090@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = *(v1 + v5);
  v7 = ((((31 * (v4 ^ 0x112u)) ^ 0x534) + v5) ^ v3) != v2;
  return (*(v6 + 8 * (((32 * v7) | (v7 << 6)) ^ v4)))();
}

uint64_t sub_1D4910110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = (*(v26 + 8 * (v24 + 1193)))(v27 + 16, 0);
  v29 = *(v27 + 16);
  *(v27 + 4) = *(v27 + 24);
  *(v27 + 8) = v29;
  *(v27 + 12) = (*(v26 + 8 * (v24 + 1195)))(v28);
  v30 = (*(v26 + 8 * (v24 ^ 0x755)))();
  *v27 = v30;
  return sub_1D4910180(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, v25, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4910180()
{
  v7 = *(v4 + 4 * (v5 - 1));
  *(v4 + 4 * v5) = *(v3 + 4 * v0) + v0 + ((1664525 * (v7 ^ (v7 >> 30))) ^ *(v4 + 4 * v5));
  v8 = 50899313 * ((((v6 - 168) | 0xDA2C762239EF5C02) - ((v6 - 168) & 0xDA2C762239EF5C02)) ^ 0x692701C413247678);
  *(v6 - 128) = ((v2 + 1158355234) ^ 0x50) - v8;
  v9 = v2 + 1158355234 + v8;
  *(v6 - 144) = v8 ^ 0x26F;
  *(v6 - 136) = v5 + 1 + v8;
  *(v6 - 160) = (v2 + 55966260) ^ v8;
  *(v6 - 156) = v9;
  *(v6 - 168) = 1 - v8;
  *(v6 - 164) = v9 + 45;
  v10 = (*(v1 + 8 * (v2 ^ 0x2F)))(v6 - 168);
  return (*(v1 + 8 * *(v6 - 152)))(v10);
}

uint64_t sub_1D4910270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int a16, int a17)
{
  v21 = 1785193651 * (v20 ^ 0x5F98BD38F621A42CLL);
  a17 = 3613 - v21;
  a14 = a11;
  a15 = v21 ^ (v17 - ((2 * v17) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  v22 = (*(v18 + 29480))(&a14);
  return (*(v18 + 8 * (((((a16 == v19) ^ 0xF5) & 1) << 6) ^ 0x3B5u)))(v22);
}

uint64_t sub_1D4910338(uint64_t a1)
{
  v7 = v4 + 119 * (v5 ^ (v1 + 1507)) - 834;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((3330 * (v7 == 0)) ^ (v3 + v5 + 1575))))();
}

uint64_t sub_1D4910464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 - 1291) ^ (843532609 * ((2 * (&a15 & 0x5A6F57A0) - &a15 + 630237276) ^ 0x79DDFCD9));
  a15 = a13;
  a17 = &a11;
  (*(v19 + 8 * (v18 + 374)))(&a15);
  LODWORD(a15) = (v18 - 1544) ^ (1504884919 * (((&a15 | 0x57A5F4E) - &a15 + (&a15 & 0xFA85A0B0)) ^ 0xFEB9E855));
  a16 = a13;
  v21 = (*(v19 + 8 * (v18 ^ 0x382)))(&a15);
  return (*(v19 + 8 * ((198 * (HIDWORD(a15) == (v18 ^ 0xEED ^ (v20 + 162)))) ^ v18)))(v21);
}

uint64_t sub_1D49105A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v26 = 1564307779 * ((&a17 & 0xE0DAEA83 | ~(&a17 | 0xE0DAEA83)) ^ 0x8828D96F);
  LODWORD(a17) = v26 ^ 0x434;
  a18 = a14;
  HIDWORD(a19) = v24 + 2113537133 - ((2 * v24) & 0xFBF408DA) - v26;
  (*(v25 + 29720))(&a17);
  v27 = 1564307779 * ((&a17 & 0xDF3A8D12 | ~(&a17 | 0xDF3A8D12)) ^ 0xB7C8BEFE);
  HIDWORD(a19) = HIDWORD(v23) - v27 + 2113537133 - ((2 * HIDWORD(v23)) & 0xFBF408DA);
  a18 = a14;
  LODWORD(a17) = v27 ^ 0x434;
  (*(v25 + 29720))(&a17);
  v28 = 1564307779 * ((2 * (&a17 & 0x64318D78) - &a17 + 466514561) ^ 0x8CC3BE92);
  LODWORD(a17) = v28 ^ 0x434;
  a18 = a14;
  HIDWORD(a19) = v23 - ((2 * v23) & 0xFBF408DA) + 2113537133 - v28;
  (*(v25 + 29720))(&a17);
  a20 = (435584651 * ((2 * (&a17 & 0x6564BDD8) - &a17 + 446382624) ^ 0x77A95876)) ^ 0x73F;
  a17 = v22;
  a19 = a14;
  (*(v25 + 29944))(&a17);
  v29 = 1564307779 * ((((2 * &a17) | 0x9B3ED8CC) - &a17 + 845190042) ^ 0x5A92A075);
  LODWORD(a17) = v29 ^ 0x434;
  a18 = a14;
  HIDWORD(a19) = v21 - ((2 * v21) & 0xFBF408DA) + 2113537133 - v29;
  (*(v25 + 29720))(&a17);
  v30 = 1564307779 * ((2 * (&a17 & 0xF33E550) - &a17 + 1892424364) ^ 0xE7C1D6BF);
  a18 = a14;
  HIDWORD(a19) = v20 - ((2 * v20) & 0x8DA) + 2113537133 - v30;
  LODWORD(a17) = v30 ^ 0x434;
  v31 = (*(v25 + 29720))(&a17);
  return (*(v25 + 8 * ((484 * (a19 == 671454635)) ^ 0x8F2u)))(v31);
}

uint64_t sub_1D49108C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, unsigned int a21, char *a22)
{
  v25 = 675097751 * ((&a17 & 0xA5744110 | ~(&a17 | 0xA5744110)) ^ 0x19CB9B79);
  a17 = a12;
  a21 = v25 ^ 0xA33F4F7D;
  a22 = &a13;
  a18 = (v23 + 1421512399) ^ v25;
  a19 = v25 ^ 0x539826E1;
  v26 = (*(v22 + 8 * (v23 + 3561)))(&a17);
  return (*(v22 + 8 * ((1712 * (a20 == ((((v23 + 147) | 0x410) - 618) ^ (v24 + 341)))) ^ v23)))(v26);
}

uint64_t sub_1D4910A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *(v25 + 48);
  *(v27 - 112) = veorq_s8(**v25, xmmword_1D4B4B500);
  if (v26)
  {
    v30 = v29 == 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v30;
  v32 = *(v28 + 8 * ((93 * v31) ^ a1));
  *(v27 - 172) = -42900;
  return v32(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1D4910A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = 143681137 * ((v19 - 1964398174 - 2 * (v19 & 0x8AE9A9A2)) ^ 0x6C4105B2);
  *(v21 - 120) = 327535101 - v22;
  *(v21 - 128) = v15;
  *(v21 - 136) = v14 - v22 + 977;
  (*(v16 + 8 * (v14 ^ 0xD71)))(v21 - 136);
  *(v21 - 136) = v14 - 435584651 * ((v19 - 176158220 - 2 * (v19 & 0xF58009F4)) ^ 0x98B213A2) + 996;
  *(v21 - 128) = v20;
  *(v21 - 120) = a14;
  (*(v16 + 8 * (v14 ^ 0xDD9)))(v21 - 136);
  *(v21 - 112) = (v14 - 470) ^ ((((v19 | 0xB370639E) - (v19 & 0xB370639E)) ^ 0xF81BAFE0) * v18);
  *(v21 - 128) = v15;
  *(v21 - 120) = a14;
  v23 = (*(v16 + 8 * (v14 ^ 0xD46)))(v21 - 136);
  return (*(v16 + 8 * (((*(v21 - 136) > ((v14 + 1078498352) & 0xBFB76B3F ^ (v17 - 713))) * ((v14 - 603673693) & 0x23FB5395 ^ 0xD0C)) ^ v14)))(v23);
}

uint64_t sub_1D4910C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unsigned int a17, unsigned int a18, char *a19, int a20)
{
  v22 = 1361651671 * ((-1581721696 - (&a17 | 0xA1B8D7A0) + (&a17 | 0x5E47285F)) ^ 0x152CE421);
  HIDWORD(a19) = 1118497177 - v22;
  a20 = v22 ^ 0x1274EF34;
  a17 = v22 + 690;
  a18 = 980532356 - v22;
  (*(v20 + 29072))(&a17);
  a19 = &a15;
  a17 = (50899313 * ((((&a17 | 0x7023B1EE) ^ 0xFFFFFFFE) - (~&a17 | 0x8FDC4E11)) ^ 0xA517646B)) ^ 0x72E;
  v23 = (*(v20 + 29464))(&a17);
  return (*(v20 + 8 * ((106 * (a20 != v21)) ^ 0x4BEu)))(v23);
}

uint64_t sub_1D4910DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30, uint64_t a31, int a32, int a33)
{
  *(v37 - 160) = (a33 + 55966260) ^ v36;
  *(v37 - 156) = a30 + v36;
  *(v37 - 128) = a28 - v36;
  *(v37 - 168) = 1 - v36;
  *(v37 - 164) = (a30 ^ 0x18) + v36;
  *(v37 - 144) = v36 ^ 3;
  *(v37 - 136) = ((~((v33 | ~(a33 - 3055)) & (a33 - 3055 - v33) | v33 & ~(a33 - 3055)) >> 31) + v34 + 1 + a29) + v36;
  v38 = (*(v35 + 8 * (a33 ^ 0x2F)))(v37 - 168);
  return (*(v35 + 8 * *(v37 - 152)))(v38);
}

uint64_t sub_1D4910E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24, int a25, unsigned int a26, char *a27)
{
  v30 = 675097751 * (((&a22 | 0xEB835D26) - &a22 + (&a22 & 0x147CA2D8)) ^ 0xA8C378B0);
  a22 = a20;
  a27 = &a18;
  a23 = (v27 + 1421510976) ^ v30;
  a24 = v30 ^ 0xCAC04773;
  a26 = v30 ^ 0xA33F4F7E;
  v31 = (*(v29 + 8 * (v27 | 0x85A)))(&a22);
  return (*(v29 + 8 * (((a25 == (v27 ^ 0x2B3 ^ (v28 - 1170))) * ((v27 + 460) ^ 0x8C6)) ^ v27)))(v31);
}

uint64_t sub_1D4910F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = 143681137 * ((v19 - 136) ^ 0xE6A8AC10);
  *(v19 - 120) = (v17 ^ 0x37E7E9FC) - v20 - 610410496 + ((v17 << (v15 - 75)) & 0x6FCFD3F8);
  *(v19 - 136) = v15 - v20 - 688;
  *(v19 - 128) = &a15;
  (*(v16 + 8 * (v15 ^ 0x4F6)))(v19 - 136);
  *(v19 - 112) = (v15 - 2135) ^ (1361651671 * ((~((v19 - 136) | 0xC9174EC2) + ((v19 - 136) & 0xC9174EC2)) ^ 0x7D837D43));
  *(v19 - 128) = v18;
  *(v19 - 120) = a14;
  v21 = (*(v16 + 8 * ((v15 + 192) ^ 0x581)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 136) > ((v15 + 192) ^ 0xE82u) + 699262456) * ((v15 - 1292) ^ 0x53B)) ^ (v15 + 192))))(v21);
}

uint64_t sub_1D4911098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v43 = *(v41 + 4 * (v40 - 1));
  *(v41 + 4 * v40) = ((1566083941 * (v43 ^ (v43 >> 30))) ^ *(v41 + 4 * v40)) - v40;
  v44 = 50899313 * ((((2 * (v42 - 144)) | 0x9F3D25B8F41D7F3ALL) - (v42 - 144) + 0x30616D2385F14063) ^ 0x7C95E53A50C595E7);
  *(v42 - 144) = 1 - 50899313 * ((((2 * (v42 - 144)) | 0xF41D7F3A) - (v42 - 144) - 2047786909) ^ 0x50C595E7);
  *(v42 - 140) = ((v38 - 923785645) ^ 1) + 50899313 * ((((2 * (v42 - 144)) | 0xF41D7F3A) - (v42 - 144) - 2047786909) ^ 0x50C595E7);
  *(v42 - 104) = ((v38 - 923785645) ^ 0x79) - 50899313 * ((((2 * (v42 - 144)) | 0xF41D7F3A) - (v42 - 144) - 2047786909) ^ 0x50C595E7);
  *(v42 - 136) = (v38 + 1939933034) ^ (50899313 * ((((2 * (v42 - 144)) | 0xF41D7F3A) - (v42 - 144) - 2047786909) ^ 0x50C595E7));
  *(v42 - 132) = v38 - 923785645 + 50899313 * ((((2 * (v42 - 144)) | 0xF41D7F3A) - (v42 - 144) - 2047786909) ^ 0x50C595E7);
  *(v42 - 120) = v44 ^ 0x26F;
  *(v42 - 112) = v40 + 1 + v44;
  v45 = (*(a2 + 8 * (v38 ^ v39)))(v42 - 144);
  return (*(a38 + 8 * *(v42 - 128)))(v45);
}

uint64_t sub_1D49111A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, unint64_t a20, int a21, int a22)
{
  v27 = 1564307779 * ((-1319495702 - (v22 | 0xB15A17EA) + (v22 | 0x4EA5E815)) ^ 0xD9A82406);
  a20 = a13;
  LODWORD(a19) = v27 ^ 0x434;
  a22 = v25 - ((2 * v25) & 0xFBF408DA) + 2113537133 - v27;
  (*(v26 + 29720))(&a19);
  a19 = a13;
  a20 = (v24 - ((2 * v24) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL) ^ (1785193651 * ((((2 * v22) | 0x16B0B506B907B7FCLL) - v22 + 0x74A7A57CA37C2402) ^ 0xD4C0E7BBAAA27FD2));
  a22 = 3613 - 1785193651 * ((((2 * v22) | 0xB907B7FC) - v22 - 1552145406) ^ 0xAAA27FD2);
  (*(v26 + 29480))(&a19);
  v28 = 1564307779 * (((v22 | 0x85496AE5) + (~v22 | 0x7AB6951A)) ^ 0x1244A6F7);
  a22 = v23 - ((2 * v23) & 0xFBF408DA) + 2113537133 - v28;
  a20 = a13;
  LODWORD(a19) = v28 ^ 0x434;
  v29 = (*(v26 + 29720))(&a19);
  return (*(v26 + 8 * ((3909 * (a21 == 671454635)) ^ 0x2A3u)))(v29);
}

uint64_t sub_1D4911390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, int a21, unsigned int a22)
{
  v24 = 1564307779 * ((((&a19 | 0x38134108) ^ 0xFFFFFFFE) - (~&a19 | 0xC7ECBEF7)) ^ 0x50E172E4);
  a19 = v24 ^ 0x434;
  a20 = a17;
  a22 = v22 - ((2 * v22) & 0xFBF408DA) - v24 + 2113537133;
  v25 = (*(v23 + 29720))(&a19);
  return (*(v23 + 8 * ((3899 * (a21 == 671454635)) ^ 0x3EAu)))(v25);
}

void sub_1D4911458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 128) = v16 - 435584651 * ((2 * ((v17 - 128) & 0x78C6EDA0) - (v17 - 128) + 121180767) ^ 0x6A0B0809) + 1160;
  *(v17 - 112) = &a15;
  *(v17 - 120) = a11;
  (*(v15 + 8 * (v16 ^ 0xD35)))(v17 - 128);
  JUMPOUT(0x1D49114C4);
}

uint64_t sub_1D49115DC()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v1 + v5) ^ ((v3 + 66) | 6) ^ 0x44;
  return (*(v4 + 8 * ((2381 * (v5 == 0)) ^ v3)))();
}

void sub_1D4911618(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned int a19, int a20)
{
  v21 = 210068311 * ((2 * (&a18 & 0x32957F28) - &a18 + 1298825430) ^ 0x1A051A01);
  a18 = &a10;
  a19 = (((2 * a1) & 0xDFFFFBDE) + (a1 ^ ((v20 - 1340) | 0x402) ^ 0xEFFFF8E9) + 939890620) ^ v21;
  a20 = v20 - v21 - 664;
  JUMPOUT(0x1D48C8144);
}

uint64_t sub_1D49116B0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v4 ^ 0xD959CD5E) - 1043)) ^ (a2 + v4 + 2771))))();
}

uint64_t sub_1D49116EC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = (&a11 + 4 * v12 + 16);
  v15 = vdupq_n_s32(0x8052E343);
  v14[-1] = v15;
  *v14 = v15;
  return (*(v13 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) * (v11 + 1974)) ^ (v11 - 856))))();
}

uint64_t sub_1D4911790()
{
  v4 = (v0 + 735052804) & 0xD42FFBFB;
  v5 = (*(v1 + 8 * (v0 + 911)))(*v3);
  return (*(v1 + 8 * (((*v2 == ((453 * (v4 ^ 0xB3C)) ^ 0xC63)) * ((v4 - 1918) ^ 0x3E6)) ^ v4)))(v5);
}

uint64_t sub_1D49118C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, unsigned int a21, char *a22)
{
  v25 = 675097751 * ((&a17 & 0xC87C687B | ~(&a17 | 0xC87C687B)) ^ 0x74C3B212);
  a22 = &a13;
  a17 = a16;
  a21 = v25 ^ 0xA33F4F7D;
  a18 = (v24 + 1421509991) ^ v25;
  a19 = v25 ^ 0x2E1D24A7;
  v26 = (*(v23 + 8 * (v24 + 1153)))(&a17);
  return (*(v23 + 8 * (((a20 == v22) * (((v24 - 2490) | 0x204) - 2)) ^ v24)))(v26);
}

uint64_t sub_1D49119D8(__n128 a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v8 = (a6 + 4 * a7);
  *v8 = a1;
  v8[1] = a1;
  return (*(v7 + 8 * (((a3 == a7) * a4) ^ a5)))();
}

uint64_t sub_1D4911C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, unint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, int a16, unsigned int a17, char *a18)
{
  v23 = 1564307779 * (((v22 | 0x4532AE57) - (v22 & 0x4532AE57)) ^ 0xD23F6244);
  a17 = v19 - v23 - ((2 * v19) & 0xFBF408DA) + 2113537133;
  a15 = a12;
  LODWORD(a14) = v23 ^ 0x434;
  (*(v21 + 29720))(&a14);
  v24 = 1785193651 * (((v22 | 0x86586722F3C088F8) - v22 + (v22 & 0x79A798DD0C3F7700)) ^ 0xD9C0DA1A05E12CD4);
  a14 = a12;
  a15 = (v18 - ((2 * v18) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL) ^ v24;
  a17 = 3613 - v24;
  (*(v21 + 29480))(&a14);
  v25 = 675097751 * ((-708085232 - (v22 | 0xD5CB7A10) + (v22 | 0x2A3485EF)) ^ 0x6974A079);
  a17 = v25 ^ 0xA33F4F7E;
  a14 = a12;
  a18 = &a11;
  LODWORD(a15) = v25 ^ 0x54BA8F41;
  HIDWORD(a15) = v25 ^ 0xEC5B8C1F;
  v26 = (*(v21 + 29400))(&a14);
  return (*(v21 + 8 * ((2664 * (a16 == v20)) ^ 0xC4u)))(v26);
}

uint64_t sub_1D4911E3C@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - (((11 * (v2 ^ 0xEC)) ^ 0x84) & (2 * *(v1 + v5))) - 126;
  return (*(v4 + 8 * ((3008 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1D4911E90@<X0>(_DWORD *a1@<X4>, int a2@<W8>)
{
  *a1 = a2;
  v5 = ((v2 ^ 0x709) - 932) | 0x441;
  v10 = v8;
  v9 = (v2 ^ 0x709) - ((((2 * &v9) | 0xD33632C6) - &v9 + 375711389) ^ 0xF33B573) * v3 + 1018;
  (*(v4 + 8 * ((v2 ^ 0x709) + 2470)))(&v9);
  v9 = v5 - ((&v9 & 0x2871097A | ~(&v9 | 0x2871097A)) ^ 0x31265A95) * v3 + 861;
  v10 = v7;
  (*(v4 + 8 * (v5 + 2313)))(&v9);
  return 0;
}

uint64_t sub_1D4912074@<X0>(int a1@<W8>, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v11 = (((a10 ^ 0xB655CFC2) + 1235890238) ^ ((a10 ^ 0x40FA7BFC) - 1090157564) ^ ((a10 ^ 0x8549E415) + ((a1 + 511) ^ 0x7AB61DFE))) + 124863472;
  v12 = v11 < 0x938AF3C5;
  v13 = v11 > (a1 ^ 0x938AF7D3) + a4;
  if (a4 > 0x6C750C3A != v12)
  {
    v13 = v12;
  }

  return (*(v10 + 8 * ((57 * v13) ^ a1)))();
}

uint64_t sub_1D49121D0(uint64_t result)
{
  v1 = 675097751 * ((-2 - ((~result | 0xE43E85949F31A000) + (result | 0x1BC17A6B60CE5FFFLL))) ^ 0x65D62F3FDC718596);
  v2 = *(result + 32) - v1;
  v3 = *(result + 16) + v1;
  v4 = *result + v1;
  v5 = *(result + 12) ^ v1;
  v6 = *(result + 24);
  v7 = *(result + 40);
  v8 = (v7 ^ v1) > (v6 ^ v1);
  v9 = v7 == v6;
  if ((v4 & 1) == 0)
  {
    v8 = v9;
  }

  if (v8)
  {
    v10 = v3;
  }

  else
  {
    v10 = v2;
  }

  *(result + 8) = v5 ^ v10;
  return result;
}

uint64_t sub_1D491227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  v67 = (a62 + 754) | 0x319;
  LODWORD(STACK[0x33C]) = a66 + 64;
  v68 = LODWORD(STACK[0x494]) + 406696349;
  v69 = a66 - 1967520076 > v68;
  if (a66 - 1967520076 < ((v67 - 3025) ^ 0x8AB9FFBC) + v67 - 1305 != v68 < 0x8ABA0674)
  {
    v69 = a66 - 1967520076 < ((v67 - 3025) ^ 0x8AB9FFBC) + v67 - 1305;
  }

  return (*(v66 + 8 * (v67 ^ (32 * !v69))))();
}

uint64_t sub_1D491246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, uint64_t a47, unint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v65 = STACK[0x3A8];
  STACK[0x230] = *(v64 + 8 * (a63 - 1454));
  STACK[0x488] = v65;
  LODWORD(STACK[0x494]) = 1920750827;
  STACK[0x350] = a48;
  return (*(v64 + 8 * ((((*(v65 + 68) & ((a46 + 846) ^ 0xA31u)) - 44 < 0xFFFFFFC0) * (a46 ^ 0x968)) ^ a46)))();
}

uint64_t sub_1D491262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = LODWORD(STACK[0x2AC]) ^ 0xFD58EFF7;
  v67 = (((v63 + 1334291153) & 0xB078537F) - 89006148) & (2 * LODWORD(STACK[0x2AC]));
  v68 = 1564307779 * ((v64 + 1404081170 - 2 * ((v64 - 192) & 0x53B094D2)) ^ 0xC4BD58C1);
  *(v64 - 192) = a30;
  *(v64 - 172) = a33 - v68 - 654624718;
  *(v64 - 184) = v63 - v68 + 1987;
  *(v64 - 176) = v68 + v66 + v67 + 934788413;
  *(v64 - 168) = &STACK[0x2B8];
  *(v64 - 160) = &STACK[0x314];
  v69 = (*(v65 + 8 * (v63 ^ 0xF51)))(v64 - 192);
  v70 = *(v64 - 180);
  LODWORD(STACK[0x2FC]) = v70;
  return (*(a63 + 8 * ((4009 * (v70 == 671454635)) ^ v63)))(v69);
}

uint64_t sub_1D491273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, unsigned int a23, char *a24)
{
  v26 = 675097751 * (&a19 ^ 0x43402596);
  a23 = v26 ^ 0xA33F4F7D;
  a24 = &a15;
  a19 = a13;
  a20 = (v25 + 1421511838) ^ v26;
  a21 = v26 ^ 0x43D86F51;
  v27 = (*(v24 + 8 * (v25 + 3000)))(&a19);
  return (*(v24 + 8 * (((a22 == ((v25 + 2072134732) & 0xF5B) + 671453024) * (v25 + 954)) ^ v25)))(v27);
}

void sub_1D4912C0C()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2198) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 + dword_1EC7E2198) ^ 0x82))] ^ 0xC4]) - 44);
  v1 = -35 * ((qword_1EC7E2160 + *v0) ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + v1 - 4) ^ 0xBu) - 12) ^ v1) - 110);
  v3 = *v2 - *v0 - &v10;
  v4 = 1228258013 * v3 + 0xC891BCBEBCEAD82;
  v5 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v5) = -35 * ((v5 - *v0) ^ 0x82);
  v6 = off_1F5034390 - 4;
  v7 = off_1F5034330;
  **(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v5 - 4) ^ 0xCDu)) ^ v5) + 31) = 671454635;
  LOBYTE(v5) = -35 * ((*v2 + *v0) ^ 0x82);
  v8 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2198) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 + dword_1EC7E2198) ^ 0x82))] ^ 0x8C]) - 114);
  v9 = (*(v8 + 8 * ((*(off_1F50340B8 + (*(off_1F5033FC0 + v5 - 8) ^ 0x8Eu) - 4) ^ v5) + 3589)))(512);
  *(*(&off_1F5033D40 + ((-35 * (*v0 ^ 0x82 ^ *v2)) ^ v7[v6[(-35 * (*v0 ^ 0x82 ^ *v2))] ^ 0xCD]) - 144) - 4) = v9;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4912E58()
{
  *v0 = v6;
  v0[1] = v9;
  v0[2] = v8;
  v0[3] = v5;
  v12 = v10;
  v11 = v1 - 143681137 * ((((&v11 | 0x7422CD44) ^ 0xFFFFFFFE) - (~&v11 | 0x8BDD32BB)) ^ 0x6D759EAB) + v3 + 1268;
  (*(v2 + 8 * (v1 + v3 + 2720)))(&v11);
  v11 = v1 - 143681137 * (((&v11 | 0x2C8E9115) - &v11 + (&v11 & 0xD3716EE8)) ^ 0xCA263D05) + v3 + 1268;
  v12 = v7;
  (*(v2 + 8 * (v1 + v3 + 2720)))(&v11);
  return 0;
}

uint64_t sub_1D4912F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 120) = &a20;
  *(v32 - 112) = a14;
  *(v32 - 104) = a13;
  *(v32 - 144) = (v28 - 249) ^ (((v32 - 1954141574 - 2 * ((v32 - 144) & 0x8B862B0A)) ^ 0x1C8BE719) * v31);
  *(v32 - 136) = &a28;
  *(v32 - 128) = &a28;
  v33 = (*(v30 + 8 * (v28 ^ 0x368)))(v32 - 144);
  return (*(v30 + 8 * (((v29 - 265678217 < ((v28 + 587705834) & 0xDCF84CED ^ 0x7FFFF757)) * ((v28 - 3362) ^ 0x28)) ^ (v28 - 3235))))(v33);
}

uint64_t sub_1D49130F8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 + ((a2 + v4 + 1927) | 0x219u) - 2874;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((52 * (v6 != 0)) ^ (a2 + v4 + 1092))))();
}

uint64_t sub_1D4913178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v46 = ((v43 + 1499319904) ^ 0x49335245) & (2 * ((((v44 - 730007715) & 0x2B8305DB) + 1296326317) & (v43 + 1499319904))) ^ (((v44 - 730007715) & 0x2B8305DB) + 1296326317) & (v43 + 1499319904);
  v47 = ((2 * ((v43 + 1499319904) ^ 0xC33310C9)) ^ 0x1CEEE71E) & ((v43 + 1499319904) ^ 0xC33310C9) ^ (2 * ((v43 + 1499319904) ^ 0xC33310C9)) & 0x8E77738E;
  v48 = v47 ^ 0x82111081;
  v49 = (v47 ^ 0x8C220389) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0x39DDCE3C) & v48 ^ (4 * v48) & 0x8E77738C;
  v51 = (v50 ^ 0x8554203) & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0x86223183)) ^ 0xE77738F0) & (v50 ^ 0x86223183) ^ (16 * (v50 ^ 0x86223183)) & 0x8E777380;
  v53 = v51 ^ 0x8E77738F ^ (v52 ^ 0x8677300F) & (v51 << 8);
  return (*(v45 + 8 * ((244 * ((((v43 + 1499319904) ^ (2 * ((v53 << 16) & 0xE770000 ^ v53 ^ ((v53 << 16) ^ 0x738F0000) & (((v52 ^ 0x800430F) << 8) & 0xE770000 ^ 0x8040000 ^ (((v52 ^ 0x800430F) << 8) ^ 0x77730000) & (v52 ^ 0x800430F))))) & 0xFFFFFFFC ^ 0x55A48458) - a43 == -1499319901)) ^ v44)))();
}

uint64_t sub_1D4913320@<X0>(unsigned int a1@<W8>)
{
  v6 = *(v5 - 220 + a1 + 72);
  v7 = ((((v2 - 143743457) & 0x854CA6BF) - 424872605) & (2 * a1)) + (a1 ^ 0xB5FCCD01) + v1;
  *(v3 + v7) = v6 ^ 0xB;
  *(v3 + v7 + 1) = (BYTE1(v6) ^ 0x48) - ((v6 >> 7) & 4) - 126;
  *(v3 + v7 + 2) = (BYTE2(v6) ^ 0x2C) - ((v6 >> 15) & 4) - 126;
  *(v3 + v7 + 3) = (HIBYTE(v6) ^ 0x46) - ((2 * (HIBYTE(v6) ^ 0x46)) & 4) - 126;
  return (*(v4 + 8 * ((a1 + 4 < *(v5 - 128)) ^ v2)))();
}

uint64_t sub_1D49134C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(v6 + v7 - 1 - 31);
  v12 = a6 + v7 - 1;
  *(v12 - 15) = *(v6 + v7 - 1 - 15);
  *(v12 - 31) = v11;
  return (*(v10 + 8 * ((2733 * (((29 * (v8 ^ (v9 + 1289))) ^ 0xC3FLL) == (v7 & 0xFFFFFFE0))) ^ (a5 + v8 + 1786))))();
}

uint64_t sub_1D4913990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, char *a18)
{
  v21 = 1564307779 * ((((2 * &a14) | 0xC73ADB12) - &a14 + 476222071) ^ 0x7490A19A);
  a17 = v18 - v21 + 2113537133 - ((2 * v18) & 0xFBF408DA);
  a15 = a11;
  LODWORD(a14) = v21 ^ 0x434;
  (*(v19 + 29720))(&a14);
  v22 = 675097751 * ((&a14 & 0x3471F4E6 | ~(&a14 | 0x3471F4E6)) ^ 0x88CE2E8F);
  a17 = v22 ^ 0xA33F4F7D;
  a14 = a11;
  LODWORD(a15) = v22 ^ 0x54BA8F41;
  HIDWORD(a15) = v22 ^ 0xEC5B8C1F;
  a18 = &a12;
  v23 = (*(v19 + 29400))(&a14);
  return (*(v19 + 8 * ((3482 * (a16 == ((v20 + 323) ^ 0x345))) ^ 0xD1u)))(v23);
}

uint64_t sub_1D4913AF0(int a1)
{
  v1 = *(v8 + 8 * (v9 - 2466));
  v2 = *v6;
  v3 = v5 + 4 + v11;
  *(*v6 + v3) = (v12 ^ HIBYTE(a1)) - ((2 * (v12 ^ HIBYTE(a1))) & 4) - 126;
  *(v2 + v3 + 1) = (v7 ^ BYTE2(a1)) - ((2 * (v7 ^ BYTE2(a1))) & 4) - 126;
  *(v2 + v3 + 2) = (v10 ^ BYTE1(a1)) - ((2 * (v10 ^ BYTE1(a1))) & 4) - 126;
  *(v2 + v3 + 3) = a1 ^ 0x9F;
  return v1();
}

uint64_t sub_1D4913B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, char *a21)
{
  v24 = 1564307779 * ((&a17 & 0x2E94FAA0 | ~(&a17 | 0x2E94FAA0)) ^ 0x4666C94C);
  a18 = a15;
  LODWORD(a17) = v24 ^ 0x434;
  a20 = v21 - v24 - ((2 * v21) & 0xFBF408DA) + 2113537133;
  (*(v22 + 29720))(&a17);
  v25 = 675097751 * ((2142164357 - (&a17 | 0x7FAED585) + (&a17 | 0x80512A7A)) ^ 0xC3110FEC);
  a21 = &a12;
  a20 = v25 ^ 0xA33F4F7D;
  LODWORD(a18) = v25 ^ 0x54BA8F41;
  HIDWORD(a18) = v25 ^ 0x2EC4DCDA;
  a17 = a15;
  v26 = (*(v22 + 29400))(&a17);
  return (*(v22 + 8 * ((286 * (a19 == v23)) ^ 0xCB7u)))(v26);
}

uint64_t sub_1D4913D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, int a19, int a20, unsigned int a21, char *a22)
{
  v23 = 675097751 * ((((&a17 | 0x9011F4C6) ^ 0xFFFFFFFE) - (~&a17 | 0x6FEE0B39)) ^ 0x2CAE2EAF);
  a17 = a14;
  a18 = (a10 + 1421510360) ^ v23;
  a19 = v23 ^ 0x2B486C80;
  a21 = v23 ^ 0xA33F4F7D;
  a22 = &a16;
  v24 = (*(v22 + 8 * (a10 ^ 0x632)))(&a17);
  return (*(v22 + 8 * ((155 * (((a10 + 4) ^ (a20 == (((a10 + 7) | 0x202) ^ 0x28059FD9))) & 1)) ^ a10)))(v24);
}

uint64_t sub_1D4913E10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  v25.i64[0] = 0x404040404040404;
  v25.i64[1] = 0x404040404040404;
  v26.i64[0] = 0x8282828282828282;
  v26.i64[1] = 0x8282828282828282;
  v27 = vaddq_s8(vsubq_s8(v23[1], vandq_s8(vaddq_s8(v23[1], v23[1]), v25)), v26);
  *(&a19 + v20) = vaddq_s8(vsubq_s8(*v23, vandq_s8(vaddq_s8(*v23, *v23), v25)), v26);
  *(&a19 + v20 + 16) = v27;
  return (*(v22 + 8 * ((995 * (((v19 - v24 - 13) ^ ((v21 & 0x60) == 32)) & 1)) ^ (a4 + v19 + 3213))))();
}

uint64_t sub_1D4913ED0@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  v6 = (v4 + v2);
  v6[73] = a2;
  v6[74] = a2;
  return (*(v5 + 8 * (((v2 == 224) * a1) ^ v3)))();
}

uint64_t sub_1D4913FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 - 553086882) & 0x20F76F77 ^ 0xFFFFFFFFFFFFF6C8) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((226 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D4914060@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 698;
  if (v4 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = -v4;
  }

  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((711 * (v6 == (v5 ^ 0x68Du) - 1967)) ^ v5)))();
}

uint64_t sub_1D491448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, int a24, unsigned int a25, char *a26)
{
  v28 = 675097751 * (((&a21 | 0x385939F4) - (&a21 & 0x385939F4)) ^ 0x7B191C62);
  a21 = a14;
  a25 = v28 ^ 0xA33F4F7E;
  a22 = (v26 + 1421511134) ^ v28;
  a23 = v28 ^ 0xB0013C8D;
  a26 = &a16;
  v29 = (*(v27 + 8 * (v26 ^ 0xB38u)))(&a21);
  return (*(v27 + 8 * (((a24 == 671454635) * ((v26 + 13793) & 0x7FF ^ (v26 - 416))) ^ v26)))(v29);
}

uint64_t sub_1D4914594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, int a12, int a13, char a14, uint64_t a15, int a16)
{
  v23 = *(v16 + 32) + v21;
  v24 = 210068311 * (&a11 ^ 0x576F9AD7);
  a15 = v20;
  a12 = (((v19 - 2122548704) & 0x7E838D6C ^ 0x5D84037E) + v22) ^ v24;
  a11 = &a10;
  a16 = v19 - v24 + 244;
  a14 = 71 * v23 - 87 * (&a11 ^ 0xD7) + 113;
  v25 = (*(v18 + 8 * (v19 ^ 0xB3E)))(&a11);
  return (*(v18 + 8 * ((2376 * (a13 == v17)) ^ v19)))(v25);
}

uint64_t sub_1D4914650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20)
{
  a20 = v22 - 1170 + v20 + 624804096;
  *(v23 - 120) = &a17;
  *(v23 - 112) = a16;
  *(v23 - 128) = v22 - 435584651 * ((((v23 - 128) | 0xB24F45D1) - ((v23 - 128) & 0xB24F45D1)) ^ 0xDF7D5F87) - 240;
  (*(v21 + 8 * (v22 ^ 0x68D)))(v23 - 128);
  *(v23 - 104) = (v22 - 1706) ^ (1361651671 * (((v23 - 128) & 0xB50A2E50 | ~((v23 - 128) | 0xB50A2E50)) ^ 0x19E1DD1));
  *(v23 - 120) = &a19;
  *(v23 - 112) = a16;
  v24 = (*(v21 + 8 * (v22 ^ 0x612)))(v23 - 128);
  return (*(v21 + 8 * ((78 * (*(v23 - 128) + ((v22 - 335) ^ 0xD6521329) >= 0xE8675D91)) ^ v22)))(v24);
}

uint64_t sub_1D4914784@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2FC]) = 671412451;
  LODWORD(STACK[0x3DC]) = v2;
  LODWORD(STACK[0x280]) = v1;
  return (*(v3 + 8 * ((2216 * (LODWORD(STACK[0x2FC]) == (a1 ^ 0x1D3) + 671456137 + (((a1 ^ 0x1D3) + 945035164) & 0xC7ABEDFF) - 3038)) ^ a1 ^ 0x1D3)))();
}

uint64_t sub_1D49147A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, char *a20, int a21)
{
  a19 = (v21 + 1500) ^ (50899313 * ((&a19 - 2093140647 - 2 * (&a19 & 0x833D3559)) ^ 0xA9F61F23));
  a20 = &a17;
  v25 = (*(v24 + 8 * (v21 + 3345)))(&a19);
  return (*(v24 + 8 * (((a21 == ((v21 + 615472813) & 0xDB50A2FE ^ 0x28059755)) * (v23 + (v21 ^ v22) + 585)) ^ v21)))(v25);
}

uint64_t sub_1D4914858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, unsigned int a22, char *a23, int a24)
{
  a23 = &a20;
  a22 = (50899313 * ((&a22 & 0x89FA736 | ~(&a22 | 0x89FA736)) ^ 0xDDAB72B3)) ^ 0x72E;
  v25 = (*(v24 + 29464))(&a22);
  return (*(v24 + 8 * ((111 * (a24 != 671454635)) ^ 0x7A2)))(v25);
}

uint64_t sub_1D4914978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, int a20, unsigned int a21, int a22, unsigned int a23, char *a24)
{
  v26 = 675097751 * (((&a19 | 0x6AE34117) - (&a19 & 0x6AE34117)) ^ 0x29A36481);
  a23 = v26 ^ 0xA33F4F7E;
  a20 = (v24 + 1421512064) ^ v26;
  a21 = v26 ^ 0xDB1D3D51;
  a24 = &a18;
  a19 = a17;
  v27 = (*(v25 + 8 * (v24 + 3226)))(&a19);
  return (*(v25 + 8 * ((761 * (a22 == ((v24 - 863759811) & 0x337BEFEB) + 671453633)) ^ v24)))(v27);
}

uint64_t sub_1D4914A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v63 = STACK[0x3A8];
  STACK[0x330] = *(v62 + 8 * (a62 - 1425));
  STACK[0x2E0] = v63;
  STACK[0x3C8] = a58;
  v64 = ((*(v63 + 68) & 0x3F ^ 0x57EDD718) - 381712408) ^ ((*(v63 + 68) & 0x3F ^ 0x34667356) - 1967905878) ^ (((((a62 - 1448) ^ 0x5E8) + 58) ^ 0x638BA246 ^ *(v63 + 68) & 0x3F) - 581307214);
  *(v63 + (v64 + 1093512960)) = 2;
  return (*(v62 + 8 * ((2955 * ((v64 + 1093512904) < 0xFFFFFFC8)) ^ (a62 - 1448))))(4294966211, 3259, a3, a4, a5, a6, a44);
}

uint64_t sub_1D4914C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13)
{
  v16 = (v15 - 193) | 0x4D6;
  a13 = 4;
  v17 = (*(v13 + 8 * (v16 + 174)))(*(v14 + 4), 22, 0, 0, &a12, &a13);
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = a13 == ((v16 - 3374) ^ 0xD4);
  }

  v22 = v21;
  return (*(v13 + 8 * ((v22 * (4 * (v16 ^ 0xE89) - 2573)) ^ v16)))(v17, v18, v19, v20);
}

uint64_t sub_1D4914CA0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((*(v3 + v5) << (((v2 + 84) ^ 0x80) & 0xEF)) & 4) - 126;
  return (*(v4 + 8 * ((3601 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1D4914CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22, int a23)
{
  *a12 = a1;
  *a11 = (v23 + 2583) ^ 0x73E65DFE ^ a23;
  return (*(v25 + 8 * (((a20 == v24) * ((v23 + 539463921) & 0xDFD86FFD ^ 0x77E)) ^ (v23 + 2583))))();
}

uint64_t sub_1D4914D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x1788] = 0x9908B0DF00000000;
  LODWORD(STACK[0x2E8]) = **(v63 + 8 * (v62 - 1383));
  *(v64 - 152) = **(v63 + 8 * (v62 & 0xE860B29B)) ^ a48;
  *(v64 - 180) = a48 ^ (v62 + 1678501869) ^ 0x46;
  *(v64 - 176) = v62 + 1678501869 - a48;
  *(v64 - 168) = a48;
  *(v64 - 160) = a48 + v62 + 1678501869 - 92;
  *(v64 - 192) = -a48;
  *(v64 - 188) = 1699921097 - a48 + v62;
  v66 = (*(v65 + 8 * (v62 + 2221)))(v64 - 192);
  return (*(a62 + 8 * *(v64 - 184)))(v66);
}

uint64_t sub_1D4914F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v9 = ~v5 + a3;
  v10 = *(v8 + v9 - 15);
  v11 = *(v8 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(a2 + 8 * (((v5 + v3 - 2422 == v4) * v7) ^ v6)))();
}

uint64_t sub_1D4914F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 519);
  *(a1 + v2 + v5 - 1612) = *(a2 + v2 + v5 - 1612);
  return (*(v4 + 8 * ((31 * (v2 + v5 != 1612)) ^ (v3 - 5))))();
}

uint64_t sub_1D4914FA8@<X0>(int a1@<W8>)
{
  v9 = v3 + v6 - 1008;
  *(*v7 + (v2 + v9)) = *(*v7 + (v6 + v4));
  return (*(v8 + 8 * (((v9 == a1) * v5) ^ v1)))();
}

uint64_t sub_1D4914FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  v21 = a18 < 0xA249D7B0;
  if (v21 == v18 > 0x5DB6284F)
  {
    v21 = v18 - 1572218960 < a18;
  }

  return (*(v20 + 8 * ((!v21 * (((v19 - 1866) | 0x40) ^ 0x68)) ^ v19)))(a18, a2, 42, 2367617798, 1927347695, 1, a5, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1D4915108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, int a22, unsigned int a23, char *a24)
{
  v27 = 675097751 * ((674987302 - (&a19 | 0x283B7D26) + (&a19 | 0xD7C482D9)) ^ 0x9484A74F);
  a24 = &a17;
  a20 = (v25 + 1421512362) ^ v27;
  a21 = v27 ^ 0xC0F5404B;
  a19 = a14;
  a23 = v27 ^ 0xA33F4F7F;
  v28 = (*(v26 + 8 * (v25 + 3524)))(&a19);
  return (*(v26 + 8 * ((386 * (((v25 ^ (v24 + 20)) ^ (a22 == ((v25 + 352) ^ 0x2805945C))) & 1)) ^ v25)))(v28);
}

uint64_t sub_1D491562C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((476 * (v6 == (a2 + v4 + 556) - 279)) ^ (a2 + v4 + 498))))();
}

uint64_t sub_1D4915E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, _BYTE *a18, int a19, char a20, uint64_t a21, _BYTE *a22, char *a23, char *a24, _BYTE *a25, char *a26)
{
  a23 = &a16;
  LODWORD(a24) = v26 + 1037613739 * (((&a22 | 0xAE6DE65F) - (&a22 & 0xAE6DE65F)) ^ 0x7F6FCB20) + 2533;
  a25 = a18;
  a26 = &a20;
  (*(v27 + 8 * (v26 + 2733)))(&a22);
  LODWORD(a25) = (v26 + 1109) ^ (843532609 * (((&a22 | 0x85BD4B6B) - (&a22 & 0x85BD4B6B)) ^ 0xD9F01FEE));
  a22 = a18;
  a24 = &a14;
  (*(v27 + 8 * (v26 ^ 0xD2A)))(&a22);
  LODWORD(a22) = (v26 + 856) ^ (1504884919 * ((&a22 & 0xA5C255FA | ~(&a22 | 0xA5C255FA)) ^ 0xA1FE1D1E));
  a23 = a18;
  v28 = (*(v27 + 8 * (v26 + 2782)))(&a22);
  return (*(v27 + 8 * (((HIDWORD(a22) == ((v26 + 615) | 0xA0) + 671452921) * ((v26 + 1002) ^ 0xFA0)) ^ v26)))(v28);
}

uint64_t sub_1D4915FF4()
{
  v4 = ((((v1 ^ 0x2D8) - 348) | 0x222) ^ 0x705445D4) + v3;
  v5 = v4 < 0xAAC603A2;
  v6 = (((v1 ^ 0x2D8) - 900553461) & 0x35AD5D7D ^ 0xAAC607D7) + v2 < v4;
  if (v2 > 0x5539FC5D != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v0 + 8 * ((1002 * !v7) ^ v1 ^ 0x2D8)))();
}

void sub_1D49160D8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) + 1361651671 * ((-2 - ((a1 | 0xE7EC222D) + (~a1 | 0x1813DDD2))) ^ 0x537811AC);
  v2 = *(a1 + 16);
  if (*(v2 + 4) - 1673015719 >= 0)
  {
    v3 = *(v2 + 4) - 1673015719;
  }

  else
  {
    v3 = 1673015719 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 1673015719 >= 0)
  {
    v4 = *(*a1 + 4) - 1673015719;
  }

  else
  {
    v4 = 1673015719 - *(*a1 + 4);
  }

  v7 = v1 - 1564307779 * ((((&v7 | 0x80C8AF66) ^ 0xFFFFFFFE) - (~&v7 | 0x7F375099)) ^ 0xE83A9C8A) + 364;
  v8 = v2;
  v5 = *(&off_1F5033D40 + (v1 ^ 0x60C));
  (*(v5 + 8 * (v1 + 2240)))(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_1D49162B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = (v11 + 278722572) | 0x201804;
  *(v10 + 8) = v14;
  *(v15 - 136) = (v16 + 931627596) ^ (1785193651 * ((v15 + 1711595078 - 2 * ((v15 - 136) & 0x6604DECE)) ^ 0x90257AE2));
  v17 = (*(v12 + 8 * (v16 ^ (v13 + 1578))))(v15 - 136);
  return sub_1D48CDD1C(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D49163F4(__n128 a1, uint64_t a2, char a3)
{
  v4.n128_u64[0] = (v3 + 13) & 0xF;
  v4.n128_u64[1] = (v3 + 12) & 0xF;
  v5.n128_u64[0] = (v3 + 11) & 0xF;
  v5.n128_u64[1] = (v3 + 10) & 0xF;
  v6.n128_u64[0] = (v3 + 9) & 0xF;
  v6.n128_u64[1] = a3 & 0xF ^ 4;
  v10.val[0].i64[0] = (v3 + 7) & 0xF;
  v10.val[0].i64[1] = (v3 + 6) & 0xF;
  v10.val[1].i64[0] = (v3 + 5) & 0xF;
  v10.val[1].i64[1] = (v3 + 4) & 0xF;
  v10.val[2].i64[0] = (v3 + 3) & 0xF;
  v10.val[2].i64[1] = (v3 + 2) & 0xF;
  v10.val[3].i64[0] = (v3 + 1) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF;
  v7.n128_u64[0] = 0xEFEFEFEFEFEFEFEFLL;
  v7.n128_u64[1] = 0xEFEFEFEFEFEFEFEFLL;
  v8.n128_u64[0] = 0x8282828282828282;
  v8.n128_u64[1] = 0x8282828282828282;
  return sub_1D49164F0(a1, v4, v5, v6, xmmword_1D4B4B4E0, vqtbl4q_s8(v10, xmmword_1D4B4B4E0), v7, v8);
}

uint64_t sub_1D49164F0@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>, __n128 a5@<Q1>, int8x16_t a6@<Q4>, uint64_t a7@<D5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v19 = ~a4 + v16;
  v20 = v19 & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a5 - 1), a6).u64[0];
  v22.i64[1] = a7;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*(a2 + v19), *(v14 + v20 - 15)), veorq_s8(*(v13 + v20 - 15), *(v20 + v15 - 13))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a9), vmulq_s8(v22, a8)));
  *(a3 + v19) = vextq_s8(v24, v24, 8uLL);
  return (*(v18 + 8 * ((7 * (v12 + a4 != v17)) ^ a1)))();
}

uint64_t sub_1D49169D8(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFEB6 ^ v4 ^ 0x63u) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((2925 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

void sub_1D4916AE4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a5 = a1;
  a4 = v6 - 143681137 * ((((2 * &a4) | 0xB97EF174) - &a4 + 591431494) ^ 0x3A17D4AA) + 801;
  (*(v5 + 8 * (v6 + 2253)))(&a4);
  JUMPOUT(0x1D4916B3CLL);
}

uint64_t sub_1D4916B7C@<X0>(int a1@<W8>)
{
  *v3 = a1 ^ v2;
  v5 = (a1 ^ v2) - 1979604656 - ((2 * (a1 ^ v2)) & 0x14035F20) + 3648 != (((v1 ^ 0x657) - 380) ^ 0x8A01A6DA);
  return (*(v4 + 8 * (((16 * v5) | (32 * v5)) ^ v1)))();
}

uint64_t sub_1D4916BDC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  HIDWORD(v15) = a1;
  LODWORD(v15) = a1;
  v16 = (v9 ^ v14) + (*(v8 + 4 * (a6 + v13)) ^ v11) + ((((v15 >> 27) ^ (((v7 - 1324471572) & 0x4EF1CE5E) - 936416927)) - 1317889732) ^ (((v15 >> 27) ^ 0x1A29CCB5) + 1668560948) ^ (((v15 >> 27) ^ 0x178FB020) + 1859273895)) + (((a2 ^ v6) + v14 - ((2 * (a2 ^ v6)) & 0x8C589112)) ^ a3) - 206723564;
  v17 = (v16 ^ 0x3E061FDD) & (2 * (v16 & 0xBE575FDE)) ^ v16 & 0xBE575FDE;
  v18 = ((2 * (v16 ^ 0x3EA6AB5D)) ^ 0x1E3E906) & (v16 ^ 0x3EA6AB5D) ^ (2 * (v16 ^ 0x3EA6AB5D)) & 0x80F1F482;
  v19 = v18 ^ 0x80101481;
  v20 = (v18 ^ 0xE1E000) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0x3C7D20C) & v19 ^ (4 * v19) & 0x80F1F480;
  v22 = (v21 ^ 0xC1D000) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x80302483)) ^ 0xF1F4830) & (v21 ^ 0x80302483) ^ (16 * (v21 ^ 0x80302483)) & 0x80F1F480;
  v24 = v22 ^ 0x80F1F483 ^ (v23 ^ 0x114000) & (v22 << 8);
  return (*(v12 + 8 * ((1599 * (a6 + 1 == v10 + 24)) ^ v7)))(v16 ^ (2 * ((v24 << 16) & 0xF10000 ^ v24 ^ ((v24 << 16) ^ 0x74830000) & (((v23 ^ 0x80E0B483) << 8) & 0xF10000 ^ (((v23 ^ 0x80E0B483) << 8) ^ 0x71F40000) & (v23 ^ 0x80E0B483) ^ 0x10000))) ^ 0xF89AFE51, a1);
}

uint64_t sub_1D4916EC8(double a1, double a2, double a3, double a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = (a12 + (v13 + v12));
  v20 = *v19;
  v21 = v19[1];
  v22 = (&STACK[0x218] + v13);
  *v22 = vaddq_s8(vsubq_s8(v20, vandq_s8(vaddq_s8(v20, v20), a5)), a7);
  v22[1] = vaddq_s8(vsubq_s8(v21, vandq_s8(vaddq_s8(v21, v21), a5)), a7);
  return (*(v18 + 8 * (((v13 + 32 == (v15 & a9 ^ v16)) * v17) ^ v14)))();
}

uint64_t sub_1D4916F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, unsigned int a22, unsigned int a23, uint64_t a24)
{
  v29 = 1564307779 * (((&a19 | 0x3D902FFF) - (&a19 & 0x3D902FFF)) ^ 0xAA9DE3EC);
  a19 = v29 ^ 0x434;
  a23 = v26 - ((2 * v26) & 0xFBF408DA) - v29 + 2113537133;
  a21 = a16;
  (*(v27 + 29720))(&a19);
  v30 = 742307843 * ((2 * (&a19 & 0x2CA087A8) - &a19 - 748717993) ^ 0xCD7DF502);
  a22 = (((2 * v25) & 0xBB38BCFE) + 847245823 + (v25 ^ 0xDD9C5E7F)) ^ v30;
  a19 = v30 ^ 0x491;
  a24 = a16;
  a21 = v24;
  v31 = (*(v27 + 29560))(&a19);
  return (*(v27 + 8 * ((2679 * (a20 == v28)) ^ 0x135u)))(v31);
}

void NjiEJ7prRY3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2128 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * (dword_1EC7E2128 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xCD]) - 57);
  v1 = *(v0 - 4);
  v2 = off_1F5034390 - 4;
  v3 = off_1F5034330;
  v4 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82)) - 4) ^ 0xCDu)) ^ (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82))) - 156);
  v5 = &v7[*v4 ^ v1];
  *(v0 - 4) = (1228258013 * v5) ^ 0xC891BCBEBCEAD82;
  *v4 = 1228258013 * (v5 ^ 0xC891BCBEBCEAD82);
  v8[1] = (1037613739 * (((v8 | 0x1A34F90E) - (v8 & 0x1A34F90E)) ^ 0xCB36D471)) ^ 0x86F54BA0;
  LODWORD(v4) = 1228258013 * ((*v4 + *(v0 - 4)) ^ 0xEBCEAD82);
  v6 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2128) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 + dword_1EC7E2128) ^ 0x82))] ^ 0x60]) - 68);
  (*(v6 + 8 * ((v4 ^ v3[v2[v4] ^ 0xCD]) + 3449)))(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D49172A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v38 - 144) = (v33 + 3113) ^ (((((2 * (v38 - 144)) | 0xCC6DD110) - (v38 - 144) - 1714874504) ^ 0xF13B249B) * v36);
  *(v38 - 112) = a15;
  *(v38 - 104) = v35;
  *(v38 - 128) = v37;
  *(v38 - 120) = &a33;
  *(v38 - 136) = v37;
  v39 = (*(v34 + 8 * (v33 + 3594)))(v38 - 144);
  return (*(v34 + 8 * (((a13 - 265678217 < ((v33 + 587709196) & 0xDCF84CED ^ 0x7FFFF757)) * (v33 ^ 0x28)) ^ (v33 + 127))))(v39);
}

uint64_t sub_1D49173CC()
{
  v4 = v3 - 1958331870 > (v0 - 2002833600);
  if ((v0 - 2002833600) < 0xB9FEDC4B != (v3 - 1958331870) < 0xB9FEDC4B)
  {
    v4 = (v3 - 1958331870) < 0xB9FEDC4B;
  }

  return (*(v1 + 8 * (v2 | (32 * ((v4 ^ (v2 - 1)) & 1)))))();
}

uint64_t sub_1D4917430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v22 = 742307843 * (((&a14 | 0x6EFFE24F) + (~&a14 | 0x91001DB0)) ^ 0x70DD6F1B);
  a15 = v19;
  a18 = a10;
  a14 = v22 ^ 0x491;
  a16 = v22 ^ ((v20 ^ 0xB65C5A7F) + 1505752575 + ((2 * v20) & 0x6CB8B4FE));
  (*(v21 + 29560))(&a14);
  v23 = 1564307779 * ((2 * (&a14 & 0x6A935678) - &a14 + 359442822) ^ 0x82616595);
  a15 = a10;
  a14 = v23 ^ 0x434;
  a17 = v18 - ((2 * v18) & 0xFBF408DA) - v23 + 2113537133;
  v24 = (*(v21 + 29720))(&a14);
  return (*(v21 + 8 * ((1436 * (a16 == 671454635)) ^ 0x8B3u)))(v24);
}

uint64_t sub_1D49175D4@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6, uint64_t *a7)
{
  v12 = (v8 ^ 0x70ADB38C) == -1;
  v13 = ((((&a3 | 0xC1FE076C) ^ 0xFFFFFFFE) - (~&a3 | 0x3E01F893)) ^ 0x756A34ED) * v7;
  a6 = v13 ^ a1;
  a7 = &a2;
  a5 = v9;
  a3 = v13 + (((v8 ^ 0x70ADB38C) + 1) ^ 0x7AFFFFFE) + ((2 * ((v8 ^ 0x70ADB38C) + 1)) & 0xF5FFFFFC) + ((725 * (v11 ^ 0x5A4) + 357787921) & 0xEAAC976F) - 576140931;
  a4 = (v11 - 317) ^ v13;
  v14 = (*(v10 + 8 * (v11 ^ 0xB14)))(&a3);
  v15 = *(v9 + 24) != 671454635 || v12;
  return (*(v10 + 8 * ((15 * v15) ^ v11)))(v14);
}

uint64_t sub_1D49176D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v31 = a29 - 1516147113 < (a7 + 2063352357);
  if (a29 - 1516147113 < (a8 + 2157) != a7 + 2063352357 < ((v29 + 345) | 0x26u) + 1223 + a8)
  {
    v31 = a7 + 2063352357 < ((v29 + 345) | 0x26u) + 1223 + a8;
  }

  return (*(v30 + 8 * ((451 * v31) ^ (v29 + 2236))))();
}

uint64_t sub_1D49176E8(__n128 a1)
{
  a1.n128_u16[0] = -32126;
  a1.n128_u8[2] = -126;
  a1.n128_u8[3] = -126;
  a1.n128_u8[4] = -126;
  a1.n128_u8[5] = -126;
  a1.n128_u8[6] = -126;
  a1.n128_u8[7] = -126;
  return sub_1D4917718(21, a1);
}

uint64_t sub_1D4917718@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v9 = (v6 + v3 + a2);
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((v7 + v3 == v5) * a1) ^ v4)))();
}

uint64_t sub_1D49177B4@<X0>(uint64_t a1@<X8>)
{
  v7 = 789 * ((v4 - 2862) ^ 0x2DE);
  *(*(v1 + 8) + 4 * (v2 + v5 + v7 - 1578)) = v6 ^ (v3 + 1574);
  *(v1 + 4) = v5 + 1;
  v8 = v5 + 1 + v2;
  if (v8 < 0)
  {
    v8 = -v8;
  }

  return (*(a1 + 8 * ((((v7 ^ 0xE7FCF5D5 ^ v8) + ((2 * v8) & 0xCFF9E7FE) + 402852864) <= (((v7 ^ 0x7AE) - 1427399600) & 0x551463FF ^ 0xFFFFFE2B)) | v7 ^ 0x7AE)))();
}

uint64_t sub_1D4917B14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char *a12, int *a13, uint64_t a14, char *a15)
{
  LODWORD(a13) = v15 + 1037613739 * ((((2 * &a11) | 0x644EF870) - &a11 + 1306035144) ^ 0x63255147) + 2206;
  a12 = &a9;
  a14 = a1;
  a15 = &a5;
  (*(v17 + 8 * (v15 + 2406)))(&a11);
  a13 = &a6;
  a11 = a7;
  LODWORD(a14) = (v15 + 782) ^ (((((&a11 | 0x5971F46C) ^ 0xFFFFFFFE) - (~&a11 | 0xA68E0B93)) ^ 0xFAC35F16) * v16);
  v18 = (*(v17 + 8 * (v15 ^ 0xA73)))(&a11);
  return (*(v17 + 8 * ((499 * (((v15 + v15 - 40 + 1) ^ (a6 == 0)) & 1)) ^ v15)))(v18);
}

uint64_t sub_1D4917C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v16 = (a3 - 2105) | 0x85D;
  v17 = (a14 + 22428704) ^ 0xBB19F550;
  v18 = ((a14 + 22428704) ^ 0xAF7DDF50) & (2 * ((v16 - 1887562072) & (a14 + 22428704))) ^ (v16 - 1887562072) & (a14 + 22428704);
  v19 = v17 << (*(v15 - 120) ^ 0x63);
  v20 = (v19 ^ 0x68CFD5AA) & v17 ^ v19 & 0x3467EAD4;
  v21 = v20 ^ 0x14202A55;
  v22 = (v20 ^ 0x2040C041) & (4 * v18) ^ v18;
  v23 = ((4 * v21) ^ 0xD19FAB54) & v21 ^ (4 * v21) & 0x3467EAD4;
  v24 = (v23 ^ 0x1007AA50) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x24604081)) ^ 0x467EAD50) & (v23 ^ 0x24604081) ^ (16 * (v23 ^ 0x24604081)) & 0x3467EAD0;
  v26 = v24 ^ 0x3467EAD5 ^ (v25 ^ 0x466A800) & (v24 << 8);
  v27 = (v16 - 2058219751) & 0x7AADEF6B;
  *(v15 - 120) = v27;
  v28 = v27 - 1875;
  v30 = ((a14 + 22428704) ^ (2 * ((v26 << 16) & 0x34670000 ^ v26 ^ ((v26 << 16) ^ 0x6AD50000) & (((v25 ^ 0x30014285) << 8) & 0x34670000 ^ 0x10050000 ^ (((v25 ^ 0x30014285) << 8) ^ 0x67EA0000) & (v25 ^ 0x30014285))))) == (((v16 - 2109) | 0x444) ^ 0xA73BCECB) || (((a14 + 32) ^ (2 * v26)) & 0xF) != v28;
  v31 = *(v14 + 8 * ((39 * v30) ^ v16));
  *(v15 - 124) = -42899;
  return v31();
}

uint64_t sub_1D4917E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 120) = (v18 + 1957) ^ (1504884919 * ((v20 - 128) ^ 0xFBC3B71B));
  *(v20 - 112) = &a17;
  *(v20 - 128) = &a15;
  v21 = (*(v17 + 8 * (v18 + 2468)))(v20 - 128);
  return (*(v17 + 8 * (((((2 * v18) ^ 0xF64) - 1289) * (v19 == 1)) ^ v18)))(v21);
}

uint64_t sub_1D4918190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  *a5 = 0;
  *a6 = 0;
  a22 = (1037613739 * (&a21 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v23 = (*(v22 + 29168))(&a21);
  return (*(v22 + 8 * ((250 * (a21 != 671454635)) ^ 0x376u)))(v23);
}

void CjHbHx(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4918478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, char *a20, int a21)
{
  a19 = (50899313 * ((&a19 - 1871174187 - 2 * (&a19 & 0x907825D5)) ^ 0xBAB30FAF)) ^ 0x72E;
  a20 = &a17;
  v23 = (*(v22 + 29464))(&a19);
  return (*(v22 + 8 * ((2372 * (a21 == 671454635)) ^ v21)))(v23);
}

void iA9rX60D0o2A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = !v7 && a6 != 0 && a7 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D49185B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * ((2 * (&a14 & 0x63E67AA0) - &a14 + 471434590) ^ 0x5F59A0C8);
  a15 = (v21 + 1421511429) ^ v22;
  a16 = v22 ^ 0x7E7E4AF2;
  a19 = &a11;
  a14 = a10;
  a18 = v22 ^ 0xA33F4F7D;
  v23 = (*(v19 + 8 * (v21 + 2591)))(&a14);
  return (*(v19 + 8 * (((a17 == v20 + ((v21 - 388072714) & 0x86FF) - 1586) * ((v21 - 388072714) ^ 0xE8DE7EFB)) ^ v21)))(v23);
}

uint64_t sub_1D49186E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v21 = 1564307779 * ((2 * ((&a14 ^ 0xACF4BC1E) & 0x65CF37D4) - (&a14 ^ 0xACF4BC1E) - 1708079061) ^ 0xA1C9B826);
  a15 = a11;
  a14 = v21 ^ 0x434;
  a17 = v19 - ((2 * v19) & 0xFBF408DA) + 2113537133 - v21;
  (*(v20 + 29720))(&a14);
  v22 = 1564307779 * (((&a14 | 0xF4355F83) - (&a14 & 0xF4355F83)) ^ 0x63389390);
  a15 = a11;
  a17 = HIDWORD(v18) - ((2 * HIDWORD(v18)) & 0xFBF408DA) + 2113537133 - v22;
  a14 = v22 ^ 0x434;
  (*(v20 + 29720))(&a14);
  v23 = 1564307779 * ((&a14 & 0x3E45CA46 | ~(&a14 | 0x3E45CA46)) ^ 0x56B7F9AA);
  a15 = a11;
  a17 = v18 + (~(2 * v18) | 0x40BF725) - v23 + 2113537134;
  a14 = v23 ^ 0x434;
  (*(v20 + 29720))(&a14);
  v24 = 1564307779 * (((&a14 | 0x7D8407C8) - (&a14 & 0x7D8407C8)) ^ 0xEA89CBDB);
  a14 = v24 ^ 0x434;
  a15 = a11;
  a17 = HIDWORD(v17) - ((2 * HIDWORD(v17)) & 0xFBF408DA) + 2113537133 - v24;
  (*(v20 + 29720))(&a14);
  v25 = 1564307779 * (((&a14 | 0xC331BA2F) + (~&a14 | 0x3CCE45D0)) ^ 0x543C763D);
  a17 = v17 - ((2 * v17) & 0xFBF408DA) + 2113537133 - v25;
  a15 = a11;
  a14 = v25 ^ 0x434;
  v26 = (*(v20 + 29720))(&a14);
  return (*(v20 + 8 * ((3763 * (a16 == 671454635)) ^ 0x747u)))(v26);
}

uint64_t sub_1D4918984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v20 - 112) = (v18 + 324) ^ (((-1258408198 - ((v20 - 136) | 0xB4FE36FA) + ((v20 - 136) | 0x4B01C905)) ^ 0x6A057B) * v19);
  *(v20 - 128) = &a16;
  *(v20 - 120) = &a14;
  v21 = (*(v17 + 8 * (v18 + 3548)))(v20 - 136);
  return (*(v17 + 8 * ((107 * ((((v18 + 41) ^ (*(v20 - 136) > ((v18 - 1594651026) & 0x5F0C71E4 ^ (v16 + 559)))) & 1) == 0)) ^ v18)))(v21);
}

uint64_t sub_1D4918A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17)
{
  a14 = v17;
  a16 = a11;
  a17 = 1841 - 210068311 * ((((2 * &a14) | 0x214E5A44) - &a14 + 1868092126) ^ 0xC7C8B7F5);
  v20 = (*(v19 + 30512))(&a14);
  return (*(v19 + 8 * ((175 * (a15 == v18)) ^ 0x528)))(v20);
}

uint64_t sub_1D4918AEC()
{
  if (v0 >= v2)
  {
    v4 = 671412617;
  }

  else
  {
    v4 = 671454635;
  }

  return (*(v3 + 8 * (((v4 == 671454635) * (((2 * (v1 ^ 0x3E9) + 923) | 0xA4) + 393)) ^ (2 * (v1 ^ 0x3E9)))))();
}

uint64_t sub_1D4918B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, unsigned int a19, char *a20, int a21)
{
  a20 = &a16;
  a19 = (v22 + 1049) ^ (50899313 * (&a19 ^ 0x2ACB2A7A));
  v23 = (*(v21 + 8 * (v22 ^ 0xD76)))(&a19);
  return (*(v21 + 8 * ((3878 * (a21 == v22 + 671454635 + ((v22 - 533) | 0x44) - 1113)) ^ v22)))(v23);
}

void sub_1D4918D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = v62;
  v66 = STACK[0x450] + 128;
  STACK[0x3A8] = v66;
  v67 = 843532609 * (((~(v63 - 192) & 0x87E91D64) - (~(v63 - 192) | 0x87E91D65)) ^ 0xDBA449E0);
  *(v63 - 180) = 276443307 - v67;
  *(v63 - 176) = v67 + v62 - 875954136;
  *(v63 - 192) = v66;
  (*(v64 + 8 * (v62 ^ 0xE6A)))(v63 - 192);
  STACK[0x230] = *(a62 + 8 * v65);
  JUMPOUT(0x1D48D03A4);
}

void sub_1D4918E3C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 4) - 1673015719;
  if (v2 < 0)
  {
    v2 = 1673015719 - *(*(a1 + 32) + 4);
  }

  v1 = *a1 ^ (143681137 * ((a1 & 0x248E1D02 | ~(a1 | 0x248E1D02)) ^ 0x3DD94EED));
  __asm { BRAA            X13, X17 }
}

void sub_1D4918F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a16 = -1783122631 - 143681137 * ((&a16 & 0xFDE68FC7 | ~(&a16 | 0xFDE68FC7)) ^ 0xE4B1DC28) + v18 + 67;
  a17 = a11;
  (*(v17 + 8 * (v18 - 1783121112)))(&a16);
  JUMPOUT(0x1D4918FB4);
}

uint64_t sub_1D49193C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char *a15, int a16)
{
  a15 = &a10;
  a14 = (50899313 * ((&a14 + 1825519627 - 2 * (&a14 & 0x6CCF380B)) ^ 0x46041271)) ^ 0x72E;
  v18 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((1174 * (a16 == (v17 ^ 0xFEA760E4) + 694039386)) ^ v17)))(v18);
}

uint64_t sub_1D4919484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20, unsigned int a21, char *a22)
{
  v25 = 675097751 * (((&a17 | 0xB6A98F3) + (~&a17 | 0xF495670C)) ^ 0x482ABD64);
  a18 = (v22 + 1421511893) ^ v25;
  a19 = v25 ^ 0xA7A01B43;
  a21 = v25 ^ 0xA33F4F7D;
  a22 = &a14;
  a17 = a16;
  v26 = (*(v24 + 8 * (v22 + 3055)))(&a17);
  return (*(v24 + 8 * (((a20 == v23 + v22 + 2771 - 3391) * ((v22 ^ 0x86A) - 542)) ^ v22)))(v26);
}

uint64_t sub_1D491958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * (&a14 ^ 0x2ACB2A7A)) ^ 0x72E;
  a15 = &a12;
  v18 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((840 * (a16 == v17)) ^ 0x147u)))(v18);
}

uint64_t sub_1D49195F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, unsigned int a15)
{
  a15 = (v18 + 19) ^ (435584651 * ((2 * (&a12 & 0x3BAE29F8) - &a12 + 1146213892) ^ 0x2963CC52));
  a14 = a9;
  a12 = v15;
  v19 = (*(v16 + 8 * (v18 ^ 0x9B3)))(&a12);
  return (*(v16 + 8 * ((3240 * (a13 == ((v18 + 1610602449) & 0xEBEEEDF7 ^ v17))) ^ v18)))(v19);
}

uint64_t sub_1D4919704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v17 = STACK[0x2D8];
  STACK[0x460] -= 32;
  *(v17 + 335) = *(a14 + 335) ^ (a16 + 56) & 0xB3 ^ 0xE1 ^ *(*(v16 + 8 * (a16 ^ 0x311)) + 15) ^ *(*(v16 + 8 * (a16 - 839)) + 9) ^ *(*(v16 + 8 * (a16 ^ 0x3C5)) + 10) ^ 0x11;
  return (*(a3 + 8 * a16))();
}

uint64_t sub_1D4919AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v20 + 1538) ^ (843532609 * (((&a15 ^ 0x21FC3E6E) + 572007324 - 2 * ((&a15 ^ 0x21FC3E6E) & 0x2218239C)) ^ 0x5FA94977));
  a17 = &a11;
  a15 = a12;
  (*(v19 + 8 * (v20 + 3203)))(&a15);
  LODWORD(a15) = (v20 + 1285) ^ (1504884919 * ((2 * (&a15 & 0x23AA9CC8) - &a15 + 1549099830) ^ 0xA796D42D));
  a16 = a12;
  v21 = (*(v19 + 8 * (v20 + 3211)))(&a15);
  return (*(v19 + 8 * (((HIDWORD(a15) == v18) * ((v20 - 314) ^ 0x859)) ^ v20)))(v21);
}

uint64_t sub_1D4919E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a17 = (50899313 * ((&a17 & 0x82EC5EE3 | ~(&a17 | 0x82EC5EE3)) ^ 0x57D88B66)) ^ 0x72E;
  a18 = &a12;
  v22 = (*(v21 + 29464))(&a17);
  return (*(v21 + 8 * ((3630 * (a19 == v19)) ^ v20)))(v22);
}

uint64_t sub_1D4919E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v33 = ((v28 ^ 0x9B6) + 146) | 0xC90;
  *(v32 - 136) = &a28;
  *(v32 - 128) = &a28;
  *(v32 - 144) = ((v28 ^ 0x9B6) + 3113) ^ ((((((v32 - 144) | 0xD92265C8) ^ 0xFFFFFFFE) - (~(v32 - 144) | 0x26DD9A37)) ^ 0xB1D05624) * v31);
  *(v32 - 120) = &a16;
  *(v32 - 112) = a14;
  *(v32 - 104) = a13;
  v34 = (*(v30 + 8 * (v28 ^ 0x7A0)))(v32 - 144);
  return (*(v30 + 8 * (((v29 - 265678217 < ((v33 + 587705834) & 0xDCF84CED ^ 0x7FFFF757)) * ((v33 - 3362) ^ 0x28)) ^ (v33 - 3235))))(v34);
}

uint64_t sub_1D4919F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16, char *a17, int a18, int a19)
{
  v22 = 1504884919 * (((&a14 | 0xF7A0049) - (&a14 & 0xF7A0049)) ^ 0xF4B9B752);
  a19 = (v21 + 437) ^ v22;
  a14 = v22 + 1638077928;
  a15 = v19;
  a16 = &a12;
  a17 = &a10;
  v23 = (*(v20 + 8 * (v21 ^ 0xC8D)))(&a14);
  return (*(v20 + 8 * ((31 * (*(v19 + 24) == (v21 ^ 0xFD3) + 671451163)) ^ v21)))(v23);
}

void sub_1D491A224(uint64_t a1)
{
  v1 = (*(a1 + 16) - 50899313 * ((2 * (a1 & 0x1953A744) - a1 - 424912709) ^ 0xCC6772C1)) ^ 0x1CB;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D491A484@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 == (a1 ^ 0x618 ^ (v5 + 2032)))
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  return (*(v6 + 8 * ((v8 * (((a1 - 3557) | 0x88) ^ 0xD0)) ^ a1)))();
}

uint64_t sub_1D491A528@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33)
{
  *a22 = a33 + 1;
  v37 = *v34;
  v38 = 50899313 * ((~(a12 | 0xDCB996876EE4A5DFLL) + (a12 & 0xDCB996876EE4A5DFLL)) ^ 0x58B92DC8F4333B2);
  *(v36 - 120) = v38 ^ 0x13FF;
  *(v36 - 112) = v38 + v37;
  *(v36 - 104) = ((a2 - 2123060353) ^ 0x77) - v38;
  *(v36 - 136) = (a2 + v33) ^ v38;
  *(v36 - 132) = a2 - 2123060353 + v38;
  *(v36 - 144) = 1 - v38;
  *(v36 - 140) = ((a2 - 2123060353) & 0x3339BFBE) + v38;
  v39 = (*(a1 + 8 * (v35 + a2 + 3074)))(v36 - 144);
  return (*(a32 + 8 * *(v36 - 128)))(v39);
}

uint64_t sub_1D491A60C()
{
  *v0 = v6;
  v8 = v3 + v1 - 1273936033 - 143681137 * (((&v8 | 0xA3C85B90) - (&v8 & 0xA3C85B90)) ^ 0x4560F780);
  v9 = v7;
  (*(v2 + 8 * (v3 + v1 - 1273934581)))(&v8);
  v8 = v3 + v1 - 1273936033 - 143681137 * ((&v8 - 1266213086 - 2 * (&v8 & 0xB4871F22)) ^ 0x522FB332);
  v9 = v5;
  (*(v2 + 8 * (v3 + v1 - 1273934581)))(&v8);
  return 0;
}

uint64_t sub_1D491A72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v27 = a21;
  v28 = (v26 - 136);
  v28[2] = &a12;
  *(v26 - 112) = (v22 - 52) ^ (843532609 * (((v21 | 0x22E0DE24) - (v21 & 0x22E0DE24)) ^ 0x7EAD8AA1));
  *v28 = v27;
  (*(v24 + 8 * (v22 ^ 0x6B5)))(v26 - 136);
  *(v21 + 8) = a21;
  *(v26 - 136) = (v22 - 305) ^ (1504884919 * (v21 ^ v23));
  v29 = (*(v24 + 8 * (v22 + 1621)))(v26 - 136);
  return (*(v24 + 8 * ((1460 * (*(v26 - 132) == (v25 ^ 0x38B88DEF))) ^ v22)))(v29);
}

uint64_t sub_1D491A9FC@<X0>(unsigned int a1@<W8>)
{
  v8 = v2 + 2;
  v9 = (v3 - 2);
  *v9 = (v5 ^ v8) * (v8 + 17);
  *(v9 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v7 + 8 * (((v4 == 2) * v6) ^ a1)))();
}

uint64_t sub_1D491AAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(const char *, uint64_t, void, uint64_t, __n128, __n128, __n128, __n128), int a18, unsigned int a19, unsigned int a20, unsigned int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v28 = (*(v27 - 124) - ((2 * *(v27 - 124)) & 0xEF) - 7);
  if (v28 == 248)
  {
    v33 = *(v27 - 156);
    v32 = *(v27 - 152);
    *(v27 - 164) = (8 * (v32 - ((2 * v32) & 0xFB)) + 104) ^ 0xEA;
    *(v27 - 163) = (v32 >> 5) ^ 0x82;
    *(v27 - 162) = (v32 >> 13) ^ 0x82;
    *(v27 - 161) = (v32 >> 21) ^ 0x82;
    *(v27 - 160) = ((__PAIR64__(v33, v32) >> 29) - ((2 * (__PAIR64__(v33, v32) >> 29)) & 0xDF) - 17) ^ 0x6D;
    *(v27 - 159) = (v33 >> 5) ^ 0x82;
    *(v27 - 158) = (v33 >> 13) ^ 0x82;
    v31 = (v33 >> 21) ^ 0xFFFFFF82;
    goto LABEL_5;
  }

  if (v28 == 247)
  {
    v29 = *(v27 - 156);
    v30 = *(v27 - 152);
    *(v27 - 164) = (v29 >> 21) ^ 0x82;
    *(v27 - 163) = (v29 >> 13) ^ 0x82;
    *(v27 - 162) = (v29 >> 5) ^ 0x82;
    *(v27 - 161) = (a8 + a5 + (__PAIR64__(v29, v30) >> 29) - ((2 * (__PAIR64__(v29, v30) >> 29)) & 0xA2) + 114) ^ 0xD3;
    *(v27 - 160) = (v30 >> 21) ^ 0x82;
    *(v27 - 159) = (v30 >> 13) ^ 0x82;
    *(v27 - 158) = (v30 >> 5) ^ 0x82;
    LOBYTE(v31) = (8 * (v30 - ((2 * v30) & 0x1C)) - 16) ^ 0x72;
LABEL_5:
    *(v27 - 157) = v31;
  }

  return sub_1D48CA1FC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1D491ACF0@<X0>(int a1@<W8>)
{
  v8 = v5 - v1;
  *(v8 + 91) = (v1 + v3 + 123 + v2 + 17) * ((v1 + v3) ^ v4);
  *(v8 + 90) = ((v1 + v3) ^ 0xBB) * (v1 + v3 + 18);
  return (*(v7 + 8 * (((v1 != 90) * v6) ^ a1)))(0);
}

uint64_t sub_1D491AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = 50899313 * ((v62 & 0x2D22D12B | ~(v62 | 0x2D22D12B)) ^ 0xF81604AE);
  *(v64 - 160) = 0;
  *(v64 - 168) = v66 + v63 + 1397;
  *(v64 - 184) = v66 - 543127215;
  *(v64 - 192) = &STACK[0x3EC];
  *(v64 - 176) = &STACK[0x250];
  v67 = (*(v65 + 8 * (v63 ^ 0xC4C)))(v64 - 192);
  return (*(a62 + 8 * (((*(v64 - 152) == (v63 ^ 0x28059726)) * (((v63 - 1895412622) & 0x70F9B30C) + 752)) ^ v63)))(v67);
}

uint64_t sub_1D491AF50@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 + 1185) ^ 0xFFFFFFFFFFFFF590) + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((3872 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 - 181))))();
}

uint64_t sub_1D491B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x364]) = 996218174;
  LODWORD(STACK[0x2EC]) = 128;
  v74 = STACK[0x378] + 528;
  v75 = STACK[0x378] + 800;
  v76 = 675097751 * ((~((v72 - 192) ^ 0xDC476119 | 0x3E5422FF) + (((v72 - 192) ^ 0xDC476119) & 0x3E5422FF)) ^ 0x5EAC998F);
  *(v72 - 188) = v70 - v76 + 679;
  *(v72 - 136) = 765798858 - v76;
  *(v72 - 128) = v75;
  *(v72 - 184) = v74;
  *(v72 - 176) = 0;
  *(v72 - 168) = 0;
  *(v72 - 160) = &STACK[0x2EC];
  *(v72 - 152) = a70;
  *(v72 - 144) = a68;
  v77 = (*(v73 + 8 * (v70 ^ 0xD2C)))(v72 - 192);
  return (*(a62 + 8 * (((*(v72 - 192) != (v70 ^ 0x69C ^ (v71 - 1350))) * ((v70 + 570) ^ 0x58A)) ^ v70)))(v77);
}

uint64_t sub_1D491B0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v64 = STACK[0x3A8];
  STACK[0x230] = *(v63 + 8 * (a62 - 1417));
  STACK[0x488] = v64;
  LODWORD(STACK[0x494]) = 1920750827;
  STACK[0x350] = a51;
  return (*(v63 + 8 * ((((*(v64 + 68) & ((a40 + 846) ^ 0xA31u)) - 44 < 0xFFFFFFC0) * (a40 ^ 0x968)) ^ a40)))();
}

uint64_t sub_1D491B11C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1D491B214(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v70 = (v65 ^ *(v62 + (v63 + a7))) ^ 0xF0 | ((*(v62 + (v63 + a7 + 1)) ^ v67) << 8) | ((*(v62 + (v63 + a7 + 2)) ^ v67) << 16) | ((*(v62 + (v63 + a7 + 3)) ^ v67) << 24);
  v71 = (v63 ^ (a7 - 1)) & (2 * (v63 & 0x62F7DF5C)) ^ v63 & 0x62F7DF5C;
  v72 = ((2 * (v63 ^ 0x62B6DB63)) ^ a5) & (v63 ^ 0x62B6DB63) ^ (2 * (v63 ^ 0x62B6DB63)) & (v66 + 1086);
  v73 = v72 ^ (v66 + 1025);
  v74 = (v72 ^ 0x30) & (4 * v71) ^ v71;
  v75 = ((4 * v73) ^ 0x10410FC) & v73 ^ (4 * v73) & (v66 + 1084);
  v76 = v75 & (16 * v74) ^ v74;
  v77 = ((16 * (v75 ^ (v66 + 1027))) ^ 0x41043F0) & (v75 ^ (v66 + 1027)) ^ (16 * (v75 ^ (v66 + 1027))) & (v66 + 1072);
  v78 = v76 ^ (v66 + 1087) ^ v77 & (v76 << 8);
  *(v64 + 4 * (((v63 ^ (2 * ((v78 << 16) & 0x410000 ^ v78 ^ (((v77 ^ (v66 + 1039)) << 8) & v66 ^ 0x410000 ^ (((v77 ^ (v66 + 1039)) << 8) ^ 0x41040000) & (v77 ^ (v66 + 1039))) & ((v78 << 16) ^ 0x43F0000u)))) >> 2) ^ 0x389DF5C8)) = v70 + v68 - (a4 & (2 * v70));
  return (*(v69 + 8 * ((1929 * ((v63 + 4 + a7) < 0x40)) ^ (a62 - 1116))))();
}

void TsbHVdUOnzCHizuzrAdwYFpb()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2088 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * (dword_1EC7E2088 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x85]) - 174);
  v1 = *(v0 - 4);
  v2 = off_1F5034390 - 4;
  v3 = off_1F5034330;
  v4 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82)) - 4) ^ 0xC4u)) ^ (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82))) - 5);
  v5 = (*v4 ^ v1) - &v7;
  *(v0 - 4) = 1228258013 * (v5 - 0xC891BCBEBCEAD82);
  *v4 = 1228258013 * (v5 ^ 0xC891BCBEBCEAD82);
  v8[1] = (1037613739 * (((v8 | 0x844E91EB) - (v8 & 0x844E91EB)) ^ 0x554CBC94)) ^ 0x86F54BA0;
  LODWORD(v4) = 1228258013 * (*(v0 - 4) ^ 0xEBCEAD82 ^ *v4);
  v6 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2088 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * (dword_1EC7E2088 ^ 0x82 ^ qword_1EC7E2160))] ^ 3]) - 206);
  (*(v6 + 8 * ((v4 ^ v3[v2[v4] ^ 0x85]) + 3416)))(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D491B6D8@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v5 = v2 - 702466269;
  v6 = v5 < 3 * (v4 ^ 0x3AAu) - 392813659;
  v7 = v3 - 392812969 < v5;
  if (v3 > 0x1769D9A8 != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2 + 1;
  }

  *(result + 8) = v8;
  return result;
}

uint64_t sub_1D491B75C()
{
  *(v3 - 192) = 0x9908B0DF00000000;
  v4 = **(v2 + 8 * (v0 - 3540));
  v5 = 675097751 * ((~((v3 - 168) | 0x1E5F047CBCB889BALL) + ((v3 - 168) & 0x1E5F047CBCB889BALL)) ^ 0x60485128000753D3);
  *(v3 - 144) = v5;
  *(v3 - 136) = ((v0 + 787570404) ^ 0xA) + v5;
  *(v3 - 156) = (v0 + 787570392) ^ v5;
  *(v3 - 152) = v0 + 787570404 - v5;
  *(v3 - 128) = v4 ^ v5;
  *(v3 - 168) = -675097751 * ((~((v3 - 168) | 0xBCB889BA) + ((v3 - 168) & 0xBCB889BA)) ^ 0x753D3);
  *(v3 - 164) = v0 - v5 + 1699918905;
  v6 = (*(v1 + 8 * (v0 ^ 0x25)))(v3 - 168);
  return (*(v1 + 8 * *(v3 - 160)))(v6);
}

uint64_t sub_1D491B8A0(uint64_t result)
{
  **(result + 8) = 0;
  *result = 477502322;
  return result;
}

uint64_t sub_1D491B9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int *a20, unsigned int a21)
{
  a20 = &a15;
  a18 = a13;
  a21 = (v22 - 474) ^ (843532609 * ((((&a18 | 0x9EE5CADC) ^ 0xFFFFFFFE) - (~&a18 | 0x611A3523)) ^ 0x3D5761A6));
  v23 = (*(v21 + 8 * (v22 + 1191)))(&a18);
  return (*(v21 + 8 * (((a15 == 0) * ((((v22 + 370770977) & 0xE9E676F6) - 1130) ^ 0xFA)) ^ (v22 + 716))))(v23);
}

void sub_1D491BAA8(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 1785193651 * (a1 ^ 0xF621A42C);
  v2 = *(a1 + 8);
  v4[0] = v1 + 843532609 * ((((2 * v4) | 0xEB50568) - v4 + 2024111436) ^ 0xDB17D631) + 1213;
  v5 = v2;
  v3 = *(&off_1F5033D40 + (v1 ^ 0x519));
  (*(v3 + 8 * (v1 + 2446)))(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D491BCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  LODWORD(STACK[0x370]) = 2;
  STACK[0x2B0] = 0;
  LODWORD(STACK[0x21C]) = 0;
  return (*(v61 + 8 * ((61 * (((((v59 + 1201638351) ^ 0x479F9211) + ((v59 + 1201638351) & 0xB8606DEE) - 2970) & v60) == 0)) ^ v59)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

void sub_1D491BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v33 = 1037613739 * ((2 * ((v32 - 144) & 0x28C6D08) - (v32 - 144) + 2104726258) ^ 0xAC71BF8D);
  *(v32 - 144) = (v31 + 527) ^ v33;
  *(v32 - 140) = v33 ^ 0x306A01A;
  *(v32 - 136) = &a18;
  (*(v28 + 8 * (v31 + 1583)))(v32 - 144);
  *(v32 - 144) = (v31 + 1071) ^ (((2 * ((v32 - 144) & 0x49054510) - (v32 - 144) - 1225082135) ^ 0x21F776FA) * v29);
  *(v32 - 112) = a14;
  *(v32 - 104) = v30;
  *(v32 - 128) = &a28;
  *(v32 - 120) = &a18;
  *(v32 - 136) = &a28;
  (*(v28 + 8 * (v31 + 1552)))(v32 - 144);
  JUMPOUT(0x1D491BFA0);
}

void sub_1D491C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, uint64_t a34, uint64_t a35, _BYTE *a36, int a37)
{
  v41 = a2 ^ 0xC892FA313CE0A452;
  v42 = ((a2 ^ 0xC892FA313CE0A452) - 0x28971548DA47C9C4 - 2 * (((v39 - 1883964131) + 0x5768EAB696033515) & (a2 ^ 0xC892FA313CE0A452) ^ a2 & 1)) ^ v38;
  v43 = v42 ^ 0x68040451F630332FLL;
  v44 = a2 ^ 0xC892FA313CE0A452 ^ a6 ^ 0x81D1DCA246B5169;
  v46 = (((a31 - 0x3800000000) ^ 0x234880A6F634C125) & ~a7 | a7 & 0x9CB3EDA) ^ 0x8E9AE56EF634C125;
  v47 = a3 ^ (v46 - ((2 * v46) & 0x6A1B1EEB658C7012) - 0x4AF2708A4D39C7F7);
  v48 = ((v47 ^ 0x61764447BFE55C68) - ((2 * (v47 ^ 0x61764447BFE55C68)) & 0x87A815F485554EECLL) - 0x3C2BF505BD55588ALL) ^ v37;
  if (((a2 ^ 0xC892FA313CE0A452) & 0x82EE1687ACCADB62) == 0)
  {
    v41 = a2 ^ 0xC892FA313CE0A452 ^ a6 ^ 0x81D1DCA246B5169;
  }

  v49 = v41 & (a6 ^ 0xF7E2E235DB94AE96);
  v50 = v48 ^ 0xE4C1C31231B4037DLL ^ v49;
  v51 = v50 + 2 * ((v48 ^ 0xE4C1C31231B4037DLL) & v49);
  if (v42 == 0x68040451F630332FLL)
  {
    v52 = v48 ^ 0xE4C1C31231B4037DLL;
  }

  else
  {
    v52 = ~v50;
  }

  v53 = v51 - 2 * (v52 & v49);
  v45 = a6 ^ 0xB982FFFE0FFE36BELL ^ (v42 ^ 0x68040451F630332FLL) & ~v44;
  v54 = (v53 ^ -v53 ^ (v45 - (v53 ^ v45))) + v45;
  v55 = v54 ^ __ROR8__(v54, 17) ^ (v54 << 54) ^ (v54 >> 10);
  v56 = (v42 ^ 0x97FBFBAE09CFCCD0) & (v47 ^ 0x61764447BFE55C68) ^ v44;
  v57 = __ROR8__(__ROR8__(v56, 48) ^ 0x1EE88D2BD2A5654BLL, 16);
  v58 = v57 ^ 0xD272391FDD641257 ^ ((v57 ^ 0xD272391FDD641257) << 23) ^ (((v57 ^ 0xD272391FDD641257) >> 41) ^ ((v57 ^ 0xD272391FDD641257) >> 7) | ((v57 ^ 0xD272391FDD641257) << 57));
  v59 = v43 ^ (v48 ^ 0xE4C1C31231B4037DLL) & (v47 ^ 0x9E89BBB8401AA397);
  v60 = v47 ^ (v48 ^ 0x1B3E3CEDCE4BFC82) & (a6 ^ 0x81D1DCA246B5169);
  v61 = v59 ^ 0xF38BFF733C051F6 ^ v56 ^ __ROR8__(v59 ^ 0xF38BFF733C051F6 ^ v56, 28) ^ ((v59 ^ 0xF38BFF733C051F6 ^ v56) << 45) ^ ((v59 ^ 0xF38BFF733C051F6 ^ v56) >> 19) ^ v58;
  v62 = v60 ^ v59 ^ 0xEBC8BC3B37ED90DDLL ^ __ROR8__(v60 ^ v59 ^ 0xEBC8BC3B37ED90DDLL, 61) ^ ((v60 ^ v59 ^ 0xEBC8BC3B37ED90DDLL) << 25) ^ ((v60 ^ v59 ^ 0xEBC8BC3B37ED90DDLL) >> 39);
  v63 = v55 ^ v57 ^ 0x57 ^ ((v57 ^ 0xD272391FDD641257) >> 41) ^ ((v57 ^ 0xD272391FDD641257) >> 7);
  v64 = __ROR8__(__ROR8__(v53 ^ 0x92CFC162FD513143 ^ ((v53 ^ 0x92CFC162FD513143) >> 1) ^ ((v53 ^ 0x92CFC162FD513143) << 58) ^ ((v53 ^ 0x92CFC162FD513143) << 63) ^ ((v53 ^ 0x92CFC162FD513143) >> 6) ^ v62, 31) ^ 0xD75B6CEAE3384985, 33);
  v65 = v64 ^ 0x719C24C2EBADB675 ^ v58 & ~v55;
  *(&v66 + 1) = v61 & ~(v55 ^ v58) ^ v55 ^ v65 ^ 0x28FA59BDD48D0B6;
  *&v66 = v61 & ~(v55 ^ v58) ^ v55 ^ v65;
  v67 = *(&v66 + 1) ^ __ROR8__(*(&v66 + 1), 10) ^ (v66 >> 17);
  v68 = v55 ^ v58 ^ v62 & ~v61;
  v69 = v68 ^ 0x9A383CF881807545 ^ __ROR8__(v68 ^ 0x9A383CF881807545, 7) ^ __ROR8__(v68 ^ 0x9A383CF881807545, 41);
  v70 = (v64 ^ 0x719C24C2EBADB675) & ~v62 ^ v61;
  v71 = v68 ^ 0xAC7C0FF4012565E3 ^ v70 ^ ((v68 ^ 0xAC7C0FF4012565E3 ^ v70) >> 19) ^ ((v68 ^ 0xAC7C0FF4012565E3 ^ v70) >> 28) ^ ((v68 ^ 0xAC7C0FF4012565E3 ^ v70) << 36) ^ ((v68 ^ 0xAC7C0FF4012565E3 ^ v70) << 45);
  v72 = (v64 ^ 0x8E63DB3D1452498ALL) & v55 ^ __ROR8__(__ROR8__(v70 ^ v62, 54) ^ 0xC111A6A7B78B6E45, 10);
  v73 = v72 ^ 0xC637853F4EB84C0DLL;
  LODWORD(v72) = *(v40 + ((v72 >> 61) ^ 0x51));
  v74 = (v72 ^ 0xFFFFFFC3 ^ -(v72 ^ 0xFFFFFFC3) ^ -(v72 ^ 0xFFFFFFC3 ^ -(v72 ^ 0xFFFFFFC3) ^ (57 - (v72 ^ 0xFFFFFFFA)))) - 62;
  v75 = v73 ^ ((v72 ^ 0xC3 ^ -(v72 ^ 0xC3) ^ -(v72 ^ 0xC3 ^ -(v72 ^ 0xC3) ^ (57 - (v72 ^ 0xFA)))) - 62) ^ (v73 >> 39) ^ (8 * v73) ^ (v73 << 25);
  v76 = v67 ^ 0x147D2CDEEA4;
  v77 = v71 ^ v69;
  v78 = v67 ^ 0x147D2CDEEA4 ^ v69;
  v79 = v75 & (~(2 * (v71 ^ v69)) + (v71 ^ v69)) ^ v78;
  v80 = ((v79 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v79 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v79 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v79 ^ 0x26974B18501E2B14) - (((v79 ^ 0x26974B18501E2B14) << 58) & (2 * (v79 ^ 0x26974B18501E2B14))));
  v81 = v71 ^ v67 ^ 0x147D2CDEEA4;
  if (!v74)
  {
    v81 = v77;
  }

  v82 = v81 & ~v78;
  v83 = (v65 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v84 = v65 ^ 0x6F45779FA95FC03ALL ^ ((v65 ^ 0x6F45779FA95FC03ALL) << 58);
  v85 = v83 & 0x100000000000;
  if ((v83 & 0x100000000000 & v84) != 0)
  {
    v85 = -v85;
  }

  v86 = (((v65 ^ 0x6F45779FA95FC03AuLL) >> 6) | (v65 << 63)) ^ v83 & 0xFFFFEFFFFFFFFFFFLL ^ (v85 + v84);
  v87 = v75 ^ v86 ^ (v67 ^ 0xFFFFFEB82D32115BLL) & v69;
  v88 = v67 ^ v82 ^ 0x7370AD2F82FD2592 ^ v87;
  v89 = __ROR8__(v88, 10);
  v90 = (v88 ^ v89 ^ (v88 >> 17)) + (v88 << 47) - 2 * ((v88 ^ v89 ^ (v88 >> 17)) & (v88 << 47));
  v91 = (v87 ^ 0x7955EAEC4D48B80CLL) << 58;
  v92 = (v77 ^ -v77 ^ ((v86 & ~v75) - (v86 & ~v75 ^ v77))) + (v86 & ~v75);
  v93 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v92 ^ v75 ^ 0x3278F838FE43D2BCLL ^ v76 & ~(v75 ^ v86), 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v94 = v93 ^ 0x93DD7BE3C3310A2CLL ^ ((v93 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v93 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v93 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v93 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v95 = (((((2 * (0x34CDB152F4A04500 - v91)) & 0x9000000000000200) + ((0x34CDB152F4A04500 - v91) ^ 0xCB324EAD0B5FBB00)) ^ v91 ^ ((v87 ^ 0x7955EAEC4D48B80CLL) - ((v91 & 0xF800000000000000 ^ (v87 ^ 0x7955EAEC4D48B80CLL) & 0xF9BFE541A2368FBELL | (v87 ^ 0x7955EAEC4D48B80CLL) & 0x6401ABE5DC97041) ^ v91 & 0x400000000000000))) + (v87 ^ 0x7955EAEC4D48B80CLL)) ^ (v87 << 63) ^ __ROR8__(((v87 ^ 0x7955EAEC4D48B80CLL) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v94, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v96 = v95 & 0xA8F512753D8F931ELL ^ ((v87 ^ 0x7955EAEC4D48B80CLL) >> 1) & 0x28F512753D8F931ELL | (v95 ^ ((v87 ^ 0x7955EAEC4D48B80CLL) >> 1)) & 0x570AED8AC2706CE1;
  v97 = v96 ^ v80 & ~v90;
  *(&v98 + 1) = v97;
  *&v98 = v97 ^ 0xD3DA1E3360BF843ALL;
  v99 = (v98 >> 9) & 0xE07FFFFFFFFFFFFFLL;
  *(&v98 + 1) = v97;
  *&v98 = v97 ^ 0xD3DA1E3360BF843ALL;
  v100 = v80 ^ v79 ^ 0x6E04C15915AB860ALL ^ v92 ^ __ROR8__(v79 ^ 0x6E04C15915AB860ALL ^ v92, 19) ^ ((v79 ^ 0x6E04C15915AB860ALL ^ v92) << 36) ^ ((v79 ^ 0x6E04C15915AB860ALL ^ v92) >> 28);
  v101 = ((v96 ^ v94) + (v96 | ~v94) + 1) ^ v100;
  v102 = v94 ^ v90 & ~v96 ^ 0x425764BB5877DA25 ^ v101;
  v103 = v102 ^ (v102 >> 61) ^ (v102 >> 39) ^ (8 * v102) ^ (v102 << 25);
  v104 = __ROR8__(v99 ^ __ROR8__(v103 ^ (((v98 >> 1) ^ v97 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v97 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v98 >> 1) ^ v97 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v97 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000), 3) ^ 0x55413C453664FDCDLL, 61);
  v105 = v104 ^ 0xAA09E229B327EE6ALL;
  v106 = v90 ^ v80;
  v107 = v94 & ~v100 ^ v90 ^ v80;
  v108 = v107 ^ 0xFD;
  v109 = v107 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v107 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v107 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v107 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v110 = v107 ^ 0x97F6A7E5F6E8F58ALL ^ v101 ^ __ROR8__(v107 ^ 0x97F6A7E5F6E8F58ALL ^ v101, 19) ^ ((v107 ^ 0x97F6A7E5F6E8F58ALL ^ v101) << 36) ^ ((v107 ^ 0x97F6A7E5F6E8F58ALL ^ v101) >> 28);
  v111 = ((v110 | v109) ^ v109 & v110) & 0x2D23D578E308995FLL | (v110 ^ v109) & 0xD2DC2A871CF766A0;
  v112 = (v104 ^ 0xAA09E229B327EE6ALL) & ~v103 ^ v111;
  v113 = v90 ^ 0x44C9D571A5C4A51CLL ^ v100 & ~v106 ^ v97;
  v114 = v113 ^ (v113 >> 10) ^ (v113 << 47) ^ (v113 << 54) ^ (v113 >> 17);
  v115 = ((v112 ^ v103) + ((v104 ^ 0x55F61DD64CD81195) & v114) - 2 * ((v112 ^ v103) & (v104 ^ 0x55F61DD64CD81195) & v114)) ^ 0x6005BE354A5BB0B2;
  v116 = v115 >> (v55 & 0x3D) >> (v55 & 0x3D ^ 0x3D);
  v117 = (8 * v115) ^ (v115 >> 39) ^ ((v115 ^ (v115 << 25)) & 0xF21553F3FD140018 ^ v116 & 0x18 | (v115 ^ (v115 << 25)) & 0xDEAAC0C02EBFFE7 ^ v116 & 0xE7);
  v118 = v103 & ~v111 ^ v114 ^ v109;
  v119 = v118 ^ 0x2DB5B6AF87F64351 ^ ((v118 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v118 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v118 ^ 0x2DB5B6AF87F64351) >> 41) | ((v118 ^ 0x2DB5B6AF87F64351) << 57));
  v120 = v118 ^ 0x93C23431B76D41FLL ^ v112;
  v121 = v120 << 36;
  v122 = (v120 ^ (v120 >> 28)) + (v120 >> 19) - 2 * ((v120 ^ (v120 >> 28)) & (v120 >> 19));
  v123 = v122 ^ (v120 << 45);
  v124 = v123 ^ (v120 << 36);
  v125 = v124 ^ v119;
  v126 = v105 ^ v109 & ~v114;
  v127 = v114 ^ 0xF374A001D380BDC2 ^ v111 & ~(v114 ^ v109) ^ v126;
  v128 = v127 ^ (v127 >> 10) ^ (v127 << 47) ^ (v127 << 54) ^ (v127 >> 17);
  v129 = v128 ^ v119;
  v130 = v117 & ~(v124 ^ v119) ^ v128 ^ v119;
  *(&v98 + 1) = v126;
  *&v98 = v126 ^ 0x6DC4FB0BD4FFFF44;
  v131 = (v98 >> 1) ^ v126 ^ 0x6DC4FB0BD4FFFF44 ^ ((v126 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v117;
  v132 = (v126 ^ 0x6DC4FB0BD4FFFF44) >> 6;
  if (v121 == v123)
  {
    v133 = (v126 ^ 0x6DC4FB0BD4FFFF44) >> 6;
  }

  else
  {
    v133 = ~(v132 ^ v131);
  }

  v134 = v131 + v132 - 2 * (v133 & v131);
  v135 = v134 ^ (((~v128 | 0xFFFFFFFFEFFFFFFFLL) - (v128 & 0x4000000000)) ^ v128 & 0xFFFFFFBFEFFFFFFFLL) & v129;
  if (v129 == -1)
  {
    v136 = 0;
  }

  else
  {
    v136 = v124 ^ v128;
  }

  v137 = v128 ^ v136 & v125 ^ 0x29E1AB0124FF49E7 ^ v135;
  v138 = __ROR8__(v137, 10);
  v139 = (v137 ^ v138 ^ (v137 << 47)) + (v137 >> 17) - 2 * ((v137 ^ v138 ^ (v137 << 47)) & (v137 >> 17));
  v140 = v139 - ((2 * v139) & 0x9C69B501F661C510) - 0x31CB257F04CF1D78;
  v141 = v135 - ((2 * v135) & 0x5A47EBDAAC1EB792);
  v142 = v141 + 0x2D23F5ED560F5BC9;
  v143 = v141 - 0x5BDA183C59819C5ELL;
  v144 = 0x88FE0E29AF90F827;
  if (v142 < 0x88FE0E29AF90F827)
  {
    v143 = v142;
    v144 = 0;
  }

  if (v143)
  {
    v145 = v142;
  }

  else
  {
    v145 = v144;
  }

  *(&v146 + 1) = v145;
  *&v146 = v142;
  v147 = (v146 >> 1) ^ v142 ^ (v145 << 58) ^ (v145 >> 6);
  *&v146 = __ROR8__(((v125 << (v122 & 0x2B) << (v122 & 0x2B ^ 0x2B)) + (v125 >> 21)) ^ __ROR8__(v134 & ~v117, 21) ^ 0x6D12C2B6EED373A6, 43);
  v148 = v128 & ~v134 ^ v117 ^ v146;
  v149 = v148 ^ 0xE013161F571CC4C5 ^ ((v148 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v148 ^ 0xE013161F571CC4C5));
  v150 = v149 ^ (((v148 ^ 0xE013161F571CC4C5) >> 61) | (v148 << 25));
  v151 = v130 ^ 0x5035F38BF1002A3ALL ^ v146;
  v152 = v151 << 36;
  v153 = (v151 << 36) & 0x78E1346000000000;
  v154 = v151 ^ (v151 >> 19);
  v155 = v154 & 0xD99EEE0927173347 ^ (v151 << 45) & 0xD99EE00000000000 | v154 & 0x266111F6D8E8CCB8 ^ (v151 << 45) & 0x2661000000000000;
  v156 = (((v151 << 45) ^ (0xFFFFE00000000000 * v151) ^ (v155 + v154 - 2 * v155)) + v154) ^ (v151 >> 28);
  v157 = v156 & 0x78E134634F73AA70 ^ v153 | v156 & 0x871ECB9CB08C558FLL ^ v152 & 0x871ECB9000000000;
  v158 = v157 - 0x28971548DA47C9C4 - 2 * (v157 & 0x5768EAB725B8363FLL ^ v156 & 3);
  a36[65] = ((v158 & 0x19 ^ 0x72) & (v158 & 0xE6 ^ 0xDB) | v158 & 0x84) ^ 0x6E;
  v159 = *(a35 + ((69 * ((v158 ^ 0xD768EAB725B8363CLL) >> (v156 & 8) >> (v156 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  v160 = (((v159 ^ 0x57) + v159 - 2 * (v159 ^ 0x57)) ^ 0xFE) + v159;
  v161 = v130 ^ 0x4734313A1F2B2857;
  v162 = v130 ^ __ROR8__(v130 ^ 0x4734313A1F2B2857, 41) ^ ((v130 ^ 0x4734313A1F2B2857) >> 7);
  v163 = v162 ^ (v161 << 57);
  a36[54] = ((BYTE3(v150) ^ 0x8A) - 2 * ((BYTE3(v150) ^ 0x8A) & 0x46 ^ BYTE3(v150) & 4) - 62) ^ 0xC2;
  a36[28] = ((BYTE2(v158) ^ 0xB8) + (~(2 * (BYTE2(v158) ^ 0xB8)) | 0xC7) - 99) ^ 0x9C;
  a36[41] = (((v160 >> 2) | (v160 << 6)) + (~(2 * ((v160 >> 2) | (v160 << 6))) | 0xAD) + 42) ^ 0x29;
  a36[35] = (BYTE1(v149) - ((2 * BYTE1(v149)) & 0x33) + 25) ^ 0x19;
  a36[21] = (BYTE2(v149) - ((2 * BYTE2(v149)) & 0xF0) + 120) ^ 0x78;
  a36[58] = (((v158 ^ 0xD768EAB725B8363CLL) >> (v108 & 0x20) >> (v108 & 0x20 ^ 0x20u)) - ((2 * ((v158 ^ 0xD768EAB725B8363CLL) >> (v108 & 0x20) >> (v108 & 0x20 ^ 0x20u))) & 0x64) + 50) ^ 0x32;
  a36[17] = ((BYTE4(v150) ^ 0x89) + (~(2 * BYTE4(v150)) | 0x7B) + 67) ^ 0x42;
  a36[6] = (v150 - ((2 * v150) & 0x68) + 52) ^ 0x34;
  a36[5] = ((BYTE3(v158) ^ 0x25) - ((2 * (BYTE3(v158) ^ 0x25)) & 0xC4) + 98) ^ 0x62;
  a36[47] = ((BYTE5(v158) ^ 0xEA) - ((2 * (BYTE5(v158) ^ 0xEA)) & 0x1C) - 114) ^ 0x8E;
  a36[14] = ((HIBYTE(v158) ^ 0xD7) - ((2 * (HIBYTE(v158) ^ 0xD7)) & 0xCC) - 26) ^ 0xE6;
  a36[48] = ((BYTE6(v158) ^ 0x68) - ((2 * (BYTE6(v158) ^ 0x68)) & 0x92) - 55) ^ 0xC9;
  a36[16] = (((v150 ^ 0x3EAE39898A000000) >> (v148 & 0x28) >> (v148 & 0x28 ^ 0x28)) - ((2 * ((v150 ^ 0x3EAE39898A000000) >> (v148 & 0x28) >> (v148 & 0x28 ^ 0x28))) & 0xC) - 122) ^ 0x86;
  LOBYTE(v149) = *(v40 + (BYTE6(v150) ^ 0xF9)) ^ 0xFA;
  a36[10] = (BYTE1(v147) - ((2 * BYTE1(v147)) & 8) - 124) ^ 0x84;
  a36[18] = (BYTE4(v147) - ((2 * BYTE4(v147)) & 0x96) - 53) ^ 0xCB;
  a36[25] = (BYTE2(v147) - ((2 * BYTE2(v147)) & 0x60) - 80) ^ 0xB0;
  a36[42] = ((HIBYTE(v150) ^ 0x3E) - ((2 * (HIBYTE(v150) ^ 0x3E)) & 0x3A) + 29) ^ 0x1D;
  a36[12] = (BYTE5(v147) + (~(2 * BYTE5(v147)) | 0xD9) - 108) ^ 0x93;
  a36[44] = v147;
  a36[23] = (BYTE6(v147) - ((2 * BYTE6(v147)) & 0x66) + 51) ^ 0x33;
  a36[24] = BYTE3(v147);
  a36[30] = v149 - 119;
  a36[62] = (HIBYTE(v147) - ((2 * HIBYTE(v147)) & 0x9A) - 51) ^ 0xCD;
  a36[19] = v140 ^ 0x88;
  LOBYTE(v147) = *(a32 + (BYTE1(v140) ^ 0xC5) + 279) ^ BYTE1(v140) ^ 0xCF ^ ((BYTE1(v140) ^ 0xCF) + 72) ^ 0x41;
  a36[8] = ((BYTE3(v140) ^ 0xFB) - 2 * ((BYTE3(v140) ^ 0xFB) & 0x57 ^ BYTE3(v140) & 4) + 83) ^ 0x53;
  a36[33] = ((BYTE2(v140) ^ 0x30) + ((2 * BYTE2(v140)) & 0xFB ^ 0x9F) - 2) ^ 0xFD;
  a36[4] = v147 + 15;
  v164 = *(a34 + (((v140 >> 28) & 0xF0 | (v140 >> 36) & 0xF) ^ 0x54));
  a36[46] = ((HIBYTE(v140) ^ 0xCE) - 2 * (HIBYTE(v140) ^ 0xCE ^ HIBYTE(v140) & 1) + 126) ^ 0x7E;
  a36[43] = ((BYTE6(v140) ^ 0x34) - ((2 * (BYTE6(v140) ^ 0x34)) & 0x60) - 80) ^ 0xB0;
  a36[38] = ((BYTE5(v140) ^ 0xDA) - ((2 * (BYTE5(v140) ^ 0xDA)) & 0x4C) + 38) ^ 0x26;
  a36[31] = ((v164 >> 5) | (8 * v164)) ^ 0xC1;
  LOBYTE(v148) = *(v40 + ((((((4 * v162) | (v162 >> 6)) ^ 0xA) >> 2) | ((((4 * v162) | (v162 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  a36[55] = ((BYTE4(v162) ^ 0x3A) - ((2 * BYTE4(v162)) & 0x88) - 60) ^ 0xC4;
  a36[34] = ((BYTE3(v162) ^ 0x1F) - ((2 * (BYTE3(v162) ^ 0x1F)) & 0x28) - 108) ^ 0x94;
  a36[32] = ((BYTE1(v162) ^ 0x28) - 2 * ((BYTE1(v162) ^ 0x28) & 0x1F ^ BYTE1(v162) & 2) + 29) ^ 0x1D;
  a36[15] = (v148 ^ 0xFA) - 119;
  a36[7] = (((v163 ^ 0x4734313A1F2B2857) >> (~v63 & 0x10) >> (v63 & 0x10)) - ((2 * ((v163 ^ 0x4734313A1F2B2857) >> (~v63 & 0x10) >> (v63 & 0x10))) & 0x5C) - 82) ^ 0xAE;
  a36[61] = ((BYTE5(v162) ^ 0x31) - 2 * ((BYTE5(v162) ^ 0x31) & 0x4D ^ BYTE5(v162) & 8) + 69) ^ 0x45;
  a36[56] = (*(v40 + (BYTE6(v162) ^ 0x63)) ^ 0xFA) - 119;
  a36[51] = ((HIBYTE(v163) ^ 0x47) - ((2 * (HIBYTE(v163) ^ 0x47)) & 0xC7) - 29) ^ 0xE3;
  *a33 = a37 + 1;
  JUMPOUT(0x1D491D384);
}

uint64_t sub_1D491D688@<X0>(int a1@<W7>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, uint64_t a47, void *a48, int *a49)
{
  v55 = (v52 + (a46 - 1));
  v56 = -2039581373 * ((*(*a48 + (*a49 & v51)) ^ v55) & 0x7FFFFFFF);
  v57 = ((v56 >> (v50 ^ 0x6F)) ^ v56) * (20 * (v50 ^ a1) - 2039582593);
  v58 = *(*(v53 + 8 * (v50 - 1773)) + (v57 >> 24) - 1);
  v59 = *(*(v53 + 8 * (v50 ^ 0x7D6)) + (v57 >> 24) - 12);
  v60 = 97 * BYTE3(v57);
  v61 = *(*(v53 + 8 * (v50 & 0x18D110D1)) + (v57 >> 24) - 4) ^ (v49 >> a2) ^ v58 ^ v59 ^ v57;
  LODWORD(v57) = (*(*(v53 + 8 * (v50 & 0x18D110D1)) + (v57 >> 24) - 4) ^ (v49 >> a2) ^ v58 ^ v59 ^ v57);
  *v55 = v60 ^ v61;
  return (*(v54 + 8 * ((253 * (a46 == (v57 != v60))) ^ v50)))();
}

uint64_t sub_1D491D860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v29 = a1[4];
  v35 = *a1;
  v30 = a1[2];
  v31 = v30[1];
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * ((((v28 - 144) | 0xB37D10CE) - ((v28 - 144) & 0xB37D10CE)) ^ 0x2470DCDD));
  *(v28 - 136) = v31;
  *(v28 - 128) = &a12;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 120) = a2;
  (*(v26 + 8 * (v27 + 3467)))(v28 - 144);
  *(v28 - 112) = v27 + 1564307779 * ((((v28 - 144) | 0x3C325968) - ((v28 - 144) & 0x3C325968)) ^ 0xAB3F957B) + 1680;
  *(v28 - 128) = &a12;
  *(v28 - 120) = v29;
  *(v28 - 144) = &a16;
  *(v28 - 136) = v30;
  (*(v26 + 8 * (v27 + 3471)))(v28 - 144);
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * ((((v28 - 144) | 0xD968622F) - (v28 - 144) + ((v28 - 144) & 0x26979DD0)) ^ 0x4E65AE3C));
  *(v28 - 136) = &a12;
  *(v28 - 128) = &a20;
  *(v28 - 120) = &a16;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 ^ 0xF95)))(v28 - 144);
  *(v28 - 120) = &a16;
  *(v28 - 112) = v30;
  *(v28 - 128) = &a26;
  *(v28 - 136) = &a20;
  *(v28 - 104) = v29;
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * (((((v28 - 144) | 0x9990C9F2) ^ 0xFFFFFFFE) - (~(v28 - 144) | 0x666F360D)) ^ 0xF162FA1E));
  (*(v26 + 8 * (v27 ^ 0xF95)))(v28 - 144);
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 136) = &a26;
  *(v28 - 128) = &a24;
  *(v28 - 120) = &a16;
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * (((((v28 - 144) | 0x1921CC0A) ^ 0xFFFFFFFE) - (~(v28 - 144) | 0xE6DE33F5)) ^ 0x71D3FFE6));
  (*(v26 + 8 * (v27 + 3467)))(v28 - 144);
  *(v28 - 120) = &a16;
  *(v28 - 112) = v30;
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * ((2 * ((v28 - 144) & 0x77B47258) - (v28 - 144) + 139169189) ^ 0x9F4641B6));
  *(v28 - 104) = v29;
  *(v28 - 136) = &a24;
  *(v28 - 128) = &a18;
  (*(v26 + 8 * (v27 ^ 0xF95)))(v28 - 144);
  *(v28 - 128) = &a10;
  *(v28 - 136) = &a18;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * (((((v28 - 144) | 0xDA82D07E) ^ 0xFFFFFFFE) - (~(v28 - 144) | 0x257D2F81)) ^ 0xB270E392));
  *(v28 - 120) = &a16;
  (*(v26 + 8 * (v27 + 3467)))(v28 - 144);
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * ((((2 * (v28 - 144)) | 0x15750C54) - (v28 - 144) + 1967487446) ^ 0x1DB74A39));
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 136) = &a10;
  *(v28 - 128) = &a14;
  *(v28 - 120) = &a16;
  (*(v26 + 8 * (v27 ^ 0xF95)))(v28 - 144);
  *(v28 - 120) = &a16;
  *(v28 - 112) = v30;
  *(v28 - 144) = (v27 + 2986) ^ (1564307779 * ((((v28 - 144) | 0xB352E12E) - (v28 - 144) + ((v28 - 144) & 0x4CAD1ED0)) ^ 0x245F2D3D));
  *(v28 - 136) = &a14;
  *(v28 - 128) = &a16;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 ^ 0xF95)))(v28 - 144);
  v32 = *v30;
  *(v28 - 136) = &a22;
  *(v28 - 128) = v32;
  *(v28 - 144) = v27 - 435584651 * ((((v28 - 144) ^ 0x57E5DE8E | 0xEDB31C5D) - (((v28 - 144) ^ 0x57E5DE8E) & 0xEDB31C5D)) ^ 0xD764D885) + 1666;
  (*(v26 + 8 * (v27 + 3301)))(v28 - 144);
  *(v28 - 136) = v35;
  *(v28 - 144) = (v27 + 2953) ^ (1785193651 * ((2 * ((v28 - 144) & 0x58973090) - (v28 - 144) - 1486303384) ^ 0x51496B44));
  v33 = (*(v26 + 8 * (v27 + 3413)))(v28 - 144);
  return (*(v26 + 8 * ((((*(v28 - 140) - 265678217) < 0x7FFFFFFF) * ((v27 + 1793) ^ (v27 + 1915))) ^ v27)))(v33);
}

void sub_1D491DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = (*(a2 + 8 * (v38 + 3385)))(3);
  v41 = *(v39 + 8 * (v38 & 0x81F19216));
  *v41 = v40;
  (*(a38 + 8 * (v38 ^ 0xFE1)))();
  v42 = (*(a38 + 8 * (v38 + 3385)))(66);
  v43 = *(v39 + 8 * (v38 - 216));
  *v43 = v42;
  (*(a38 + 8 * (v38 ^ 0xFE1)))();
  v44 = (*(a38 + 8 * (v38 ^ 0xFD9)))(2);
  v45 = *(v39 + 8 * (v38 - 287));
  *(v45 - 4) = v44;
  *v44 = 7196;
  **v43 = 0;
  **(v39 + 8 * (v38 - 181)) = 0;
  v46 = *(v45 - 4);
  v47 = *v43;
  v48 = *v41;
  v47[64] = 1;
  **(v39 + 8 * (v38 ^ 0x14B)) = 51;
  v47[9] = -15;
  v46[1] = 79;
  **(v39 + 8 * (v38 ^ 0x168)) = 80;
  **(v39 + 8 * (v38 - 138)) = -77;
  *v46 = -22;
  v47[11] = 73;
  *v48 = 68;
  v47[20] = -44;
  **(v39 + 8 * (v38 ^ 0x12F)) = -121;
  v47[36] = -11;
  v47[45] = -113;
  v47[49] = 25;
  *(v48 + 1) = 6695;
  **(v39 + 8 * (v38 - 235)) = -122;
  **(v39 + 8 * (v38 ^ 0x1F8)) = 88;
  v47[26] = -34;
  v47[60] = -5;
  **(v39 + 8 * (v38 - 110)) = 96;
  **(v39 + 8 * (v38 - 128)) = 80;
  **(v39 + 8 * (v38 - 142)) = 17;
  **(v39 + 8 * (v38 ^ 0x141)) = 119;
  v47[52] = 47;
  v47[50] = 102;
  v47[59] = -59;
  v47[22] = -36;
  v47[29] = 59;
  v47[27] = 34;
  v47[40] = -80;
  v47[13] = 23;
  **(v39 + 8 * (v38 - 284)) = 99;
  v47[53] = 3;
  **(v39 + 8 * (v38 ^ 0x11E)) = -109;
  v47[39] = 54;
  v47[57] = 73;
  **(v39 + 8 * (v38 ^ 0x15B)) = 83;
  v47[37] = -52;
  v47[63] = -72;
  v49 = *v43;
  *(v49 + 65) = -85;
  *(v49 + 5) = -14;
  *(v49 + 54) = 32;
  *(v49 + 58) = 113;
  *(v49 + 8) = 16909;
  *(v49 + 47) = -4065;
  *(v49 + 21) = 15;
  *(v49 + 41) = -29527;
  *(v49 + 38) = -121;
  *(v49 + 31) = 8824;
  *(v49 + 10) = -98;
  *(v49 + 25) = 69;
  *(v49 + 7) = 27031;
  *(v49 + 23) = -86;
  *(v49 + 14) = -90;
  *(v49 + 62) = -105;
  *(v49 + 33) = 15089;
  *(v49 + 55) = -30385;
  *(v49 + 46) = -17;
  *(v49 + 4) = -92;
  *(v49 + 51) = -15;
  *(v49 + 12) = -15;
  *(v49 + 9) = -9761;
  *(v49 + 43) = 19744;
  *(v49 + 6) = 45;
  *(v49 + 30) = 36;
  *(v49 + 28) = -39;
  *(v49 + 35) = 52;
  *(v49 + 15) = 72;
  *(v49 + 61) = 73;
  *(v49 + 24) = -72;
  JUMPOUT(0x1D49201ECLL);
}

void sub_1D4920200(uint64_t a1)
{
  v1 = *(a1 + 8) + 1037613739 * ((((2 * (a1 ^ 0x34E45020)) | 0x1E1886FC) - (a1 ^ 0x34E45020) - 252461950) ^ 0xEAEA3E21);
  __asm { BRAA            X13, X17 }
}

void sub_1D492038C()
{
  if (v0 == 1987438400)
  {
    v2 = 671454635;
  }

  else
  {
    v2 = 671412611;
  }

  *(v1 + 8) = v2;
}

void sub_1D49203EC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) ^ (1361651671 * ((a1 - 661917999 - 2 * (a1 & 0xD88BEED1)) ^ 0x93E022AF));
  v2 = *(a1 + 32);
  v4 = 0;
  v7 = &v4;
  v8 = v1 - 1224079378 - 1785193651 * ((2 * (v6 & 0xD929718) - v6 + 1919772902) ^ 0x844CCCCA);
  v3 = *(&off_1F5033D40 + v1 - 2182);
  (*(v3 + 8 * (v1 ^ 0x6E8)))(v6);
  v5 = 0;
  v8 = v1 - 1224079378 - 1785193651 * ((((2 * v6) | 0x29060D48) - v6 + 1803352412) ^ 0x62A2A288);
  v7 = &v5;
  (*(v3 + 8 * (v1 + 1512)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D49206B0()
{
  v4 = 960716940 - v0;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = v5;
  return (*(v3 + 8 * (((((v1 - 1568053527) & 0x5D769FF9) - 3046) * v6) ^ v1)))();
}

uint64_t sub_1D492070C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = v4 + 1;
  if (v6)
  {
    v9 = v8 == ((v5 + 121) ^ a4);
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(v7 + 8 * ((v10 * (v5 - 691)) ^ v5)))();
}

uint64_t sub_1D492076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * (((&a14 | 0x9C5AB73D) - (&a14 & 0x9C5AB73D)) ^ 0xDF1A92AB);
  a18 = v22 ^ 0xA33F4F7D;
  a15 = (v21 + 1421511881) ^ v22;
  a16 = v22 ^ 0xC3B767F8;
  a19 = &a12;
  a14 = a10;
  v23 = (*(v19 + 8 * (v21 ^ 0xC23)))(&a14);
  return (*(v19 + 8 * ((1686 * (a17 == ((v21 + 2081577271) & 0x83EDACFE ^ (v20 + 1882)))) ^ v21)))(v23);
}

uint64_t sub_1D4920840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  STACK[0x2F0] = v34 + (v33 - 757) - 3310;
  LODWORD(STACK[0x38C]) = 671454635;
  return (*(v35 + 8 * ((1329 * (*(a33 + 360) > 1u)) ^ v33)))();
}

uint64_t sub_1D4920884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, int a21, int a22, char *a23)
{
  v27 = v25 - 858;
  v28 = (v25 - 1028) | 0x404;
  if (a11 < v24 + 271164840)
  {
    v29 = -1556131971;
  }

  else
  {
    v29 = -1556131970;
  }

  v30 = 675097751 * ((&a18 + 1915550531 - 2 * (&a18 & 0x722CFB43)) ^ 0x316CDED5);
  a19 = (v27 + 1421512135) ^ v30;
  a20 = v30 ^ 0xFCF0422B;
  a23 = &a14;
  a18 = a16;
  a22 = v29 ^ v30;
  v31 = (*(v23 + 8 * (v27 ^ 0xF21)))(&a18);
  return (*(v23 + 8 * (((a21 == (v28 ^ (v26 + 40960))) * (v27 + 1841)) ^ v27)))(v31);
}

void sub_1D4920990(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 1673015719 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1673015719;
  }

  else
  {
    v2 = 1673015719 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 16) - 210068311 * (((a1 | 0xC2DBDF86) - (a1 | 0x3D242079) + 1025777785) ^ 0x95B44551);
  __asm { BRAA            X14, X17 }
}

void sub_1D4920B94(uint64_t a1)
{
  v1 = 1361651671 * ((-2 - ((a1 | 0x4B1A21BC) + (~a1 | 0xB4E5DE43))) ^ 0xFF8E123D);
  __asm { BRAA            X13, X17 }
}

void sub_1D4920D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v65 = (a62 ^ 0x5CF ^ (a62 - 863) ^ 0xFFFFFFFFFFFFFFFELL) + v62;
  *v63 = ((-(v65 ^ (v64 - (a62 - 863))) | v65) >> 63) + v63[623];
  JUMPOUT(0x1D491D42CLL);
}

uint64_t sub_1D4920DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v70 = (*(v68 + 96) + (~(2 * *(v68 + 96)) | 0x29) + 108);
  if (v70 == 106)
  {
    v76 = *(v68 + 64);
    v75 = *(v68 + 68);
    v72 = a62 ^ 0x734;
    *(v68 + 56) = a62 ^ 0x34 ^ (8 * (v75 - 2 * (v75 & 7)) - 72) ^ 0xC0;
    *(v68 + 57) = v67 ^ (v75 >> 5);
    *(v68 + 58) = v67 ^ (v75 >> 13);
    *(v68 + 59) = v67 ^ (v75 >> 21);
    *(v68 + 60) = ((__PAIR64__(v76, v75) >> 29) - ((2 * (__PAIR64__(v76, v75) >> 29)) & 0xB2) - 39) ^ 0x5B;
    *(v68 + 61) = v67 ^ (v76 >> 5);
    *(v68 + 62) = v67 ^ (v76 >> 13);
    v74 = (v76 >> 21) ^ 0xFFFFFF82;
  }

  else
  {
    v71 = a62;
    if (v70 != 105)
    {
      goto LABEL_6;
    }

    v72 = a62 - 724;
    v74 = *(v68 + 64);
    v73 = *(v68 + 68);
    *(v68 + 56) = v67 ^ (v74 >> 21);
    *(v68 + 57) = (a62 + 44) ^ (v74 >> 13) ^ 0x78;
    *(v68 + 58) = v67 ^ (v74 >> 5);
    *(v68 + 59) = ((__PAIR64__(v74, v73) >> 29) - ((2 * (__PAIR64__(v74, v73) >> 29)) & 0x1C) + 14) ^ 0x8C;
    *(v68 + 60) = v67 ^ (v73 >> 21);
    *(v68 + 61) = v67 ^ (v73 >> 13);
    *(v68 + 62) = v67 ^ (v73 >> 5);
    LOBYTE(v74) = (8 * (v73 - ((2 * v73) & 0xC)) + 48) ^ 0xB2;
  }

  v71 = v72 + 724;
  *(v68 + 63) = v74;
LABEL_6:
  STACK[0x308] = *(v69 + 8 * (v71 - 1469));
  STACK[0x498] = v68;
  STACK[0x4A0] = v68;
  v62 = STACK[0x2F0];
  STACK[0x4A8] = &STACK[0x4B0] + STACK[0x2F0];
  STACK[0x2F0] = v62 + 320;
  LODWORD(STACK[0x264]) = *(v68 + 72);
  v63 = *(v68 + 80);
  LODWORD(STACK[0x3F0]) = v63;
  v64 = *(v68 + 84);
  LODWORD(STACK[0x290]) = v64;
  v65 = (*(v68 + 96) + (~(2 * *(v68 + 96)) | 0x51) + 88);
  if (v65 == 85)
  {
    JUMPOUT(0x1D491B3ACLL);
  }

  if (v65 != 86)
  {
    JUMPOUT(0x1D491B3DCLL);
  }

  return sub_1D491B214(v64, v63, a3, -406020010, 8521854, 3807893611, -487071908, 3117660022, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1D4921140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, int *a12, int a13, int a14)
{
  *a11 = a1;
  *a12 = ((v14 ^ 0x48C) + v15) ^ a13;
  return (*(v16 + 8 * (((a14 == (v14 ^ 0x6D8 ^ (v15 + 1364))) * (((v14 ^ 0x48C) + 2814) ^ 0xCC3)) ^ v14 ^ 0x48C)))();
}

void sub_1D492119C(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (675097751 * (((a1 | 0x83FE93BA) - (a1 | 0x7C016C45) + 2080468037) ^ 0xC0BEB62C));
  v3[1] = (1037613739 * (v3 ^ 0xD1022D7F)) ^ (v1 - 2030745981);
  v2 = *(&off_1F5033D40 + (v1 ^ 0x516));
  (*(v2 + 8 * (v1 + 2337)))(v3);
  __asm { BRAA            X8, X17 }
}

void pwqRYgp9824hrj2Enl()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2180) ^ 0x82)) ^ byte_1D4B46D70[byte_1D4B43D80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2180) ^ 0x82))] ^ 0xB5]) + 70);
  v1 = off_1F5033F78 - 4;
  v2 = off_1F5034348 - 12;
  v3 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + (-35 * ((qword_1EC7E2160 + *v0) ^ 0x82)) - 4) ^ 0xBu) - 12) ^ (-35 * ((qword_1EC7E2160 + *v0) ^ 0x82))) - 110);
  v4 = *v3 - *v0 - &v6;
  *v0 = 1228258013 * v4 + 0xC891BCBEBCEAD82;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v7[1] = (1037613739 * ((2 * (v7 & 0x16DC1B60) - v7 + 1763959960) ^ 0xB821C9E7)) ^ 0x86F54BA0;
  LOBYTE(v3) = -35 * ((*v3 + *v0) ^ 0x82);
  v5 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2180) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2180) ^ 0x82))] ^ 0xF5]) - 101);
  (*(v5 + 8 * ((v3 ^ v2[v1[v3] ^ 0xB]) + 3495)))(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4921674(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_1D4921750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  *a6 = 0;
  *a7 = 0;
  a20 = (1037613739 * ((&a19 + 1477601791 - 2 * (&a19 & 0x581269FF)) ^ 0x89104480)) ^ 0x86F54BA0;
  v21 = (*(v20 + 29168))(&a19);
  return (*(v20 + 8 * ((4039 * (a19 == 671454635)) ^ 0x268u)))(v21);
}

void sub_1D4921878(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v26 = 1361651671 * ((v25 - 78242738 - 2 * ((v25 - 144) & 0xFB561CDE)) ^ 0xB03DD0A0);
  *v23 = v24;
  *(v25 - 120) = v21 - v26 - 580849132 + 7 * (a1 ^ 0xBD7);
  *(v25 - 132) = (a1 - 2258) ^ v26;
  v23[2] = &a21;
  (*(v22 + 8 * (a1 ^ 0x464)))(v25 - 144);
  JUMPOUT(0x1D48E3968);
}

uint64_t sub_1D492190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, int a21, int a22)
{
  v26 = 1785193651 * (((v22 | 0x16C90CC86CE6973FLL) - (v22 & 0x16C90CC86CE6973FLL)) ^ 0x4951B1F09AC73313);
  a22 = v23 - v26 + 2611;
  a19 = a17;
  a20 = (v24 - (((7 * (v23 ^ 0x3F5)) ^ 0xC66594A08297EB1CLL) & (2 * v24)) - 0x1CCD35AFBEB40A1ELL) ^ v26;
  v27 = (*(v25 + 8 * (v23 ^ 0xD8F)))(&a19);
  return (*(v25 + 8 * ((2996 * (a21 == 671454635)) ^ v23)))(v27);
}

uint64_t sub_1D49219E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, unsigned int a12, uint64_t a13, uint64_t *a14, char *a15, int a16, int a17)
{
  v20 = 1504884919 * (((&a12 | 0x9C389AE8) - (&a12 & 0x9C389AE8)) ^ 0x67FB2DF3);
  a15 = &a11;
  a13 = v17;
  a14 = &a9;
  a17 = (v19 - 318) ^ v20;
  a12 = v20 + 1648258744;
  v21 = (*(v18 + 8 * (v19 + 2456)))(&a12);
  return (*(v18 + 8 * (((*(v17 + 24) == 671454635) * ((v19 + 428094498) & 0xE67BCEA7 ^ 0x24 ^ ((v19 - 233) | 0xB0))) ^ v19)))(v21);
}

uint64_t sub_1D4921AC8()
{
  v7 = (v5 + v3 + v0);
  *&v8 = 0x8282828282828282;
  *(&v8 + 1) = 0x8282828282828282;
  *v7 = v8;
  v7[1] = v8;
  return (*(v6 + 8 * ((22 * (v3 + ((v1 + 146) | v4) - 1512 == v2)) ^ v1)))();
}

uint64_t sub_1D4921B44()
{
  v6 = 143681137 * ((((2 * v2) | 0xCB825CE4) - v2 - 1707159154) ^ 0x83698262);
  *(v5 - 128) = v3;
  *(v5 - 120) = (v4 ^ 0xB78FFBFD) - v6 + ((v1 + 1864365480) & (2 * v4)) + 1542835711;
  *(v5 - 136) = v1 - v6 + 1354;
  v7 = (*(v0 + 8 * (v1 ^ 0xCE8)))(v5 - 136);
  return sub_1D4921BDC(v7);
}

uint64_t sub_1D4921BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 112) = (v14 - 470) ^ (1361651671 * (((v16 | 0xEDE1EFDA) - v16 + (v16 & 0x121E1020)) ^ 0xA68A23A4));
  *(v17 - 128) = a13;
  *(v17 - 120) = a14;
  v18 = (*(v15 + 8 * (v14 + 2754)))(v17 - 136);
  return (*(v15 + 8 * ((3592 * (*(v17 - 136) > ((v14 - 199) ^ 0x3Fu) + 699263051)) ^ v14)))(v18);
}

uint64_t sub_1D4921E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (a65 ^ 0xEAF7DF19) & (2 * (a65 & 0xE2F7DF5C)) ^ a65 & 0xE2F7DF5C;
  v69 = ((2 * (a55 ^ a65)) ^ 0x90DE41FA) & (a55 ^ a65) ^ (2 * (a55 ^ a65)) & 0xC86F20FC;
  v70 = v69 ^ 0x48212005;
  v71 = (v69 ^ 0xC04E00F4) & (4 * v68) ^ v68;
  v72 = ((4 * v70) ^ 0x21BC83F4) & v70 ^ (4 * v70) & 0xC86F20FC;
  v73 = (v72 ^ 0x2C00E0) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0xC8432009)) ^ 0x86F20FD0) & (v72 ^ 0xC8432009) ^ (16 * (v72 ^ 0xC8432009)) & a54;
  v75 = v73 ^ 0xC86F20FD ^ (v74 ^ 0x80620000) & (v73 << 8);
  *(STACK[0x4A8] + 4 * (((a65 ^ (2 * ((v75 << 16) & 0x486F0000 ^ v75 ^ ((v75 << 16) ^ 0x20FD0000) & (((v74 ^ 0x480D202D) << 8) & 0x486F0000 ^ 0x4F0000 ^ (((v74 ^ 0x480D202D) << 8) ^ 0x6F200000) & (v74 ^ 0x480D202D))))) >> 2) ^ 0x1CBCE7A9)) = v66;
  return (*(v67 + 8 * ((122 * (a65 - 487071904 < (((a56 ^ 0x3B0) + 108) ^ (5 * (a56 ^ 0x3B0))))) ^ a56)))(3807895388, a2, 4290691385, 90, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1D4922248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a15 = &a11;
  a14 = (50899313 * (&a14 ^ 0x2ACB2A7A)) ^ 0x72E;
  v18 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((35 * (a16 != v17)) ^ 0x2DEu)))(v18);
}

uint64_t sub_1D49222B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * (((&a14 | 0x6CC9A4E5) + (~&a14 | 0x93365B1A)) ^ 0x2F898172);
  a14 = a10;
  a19 = &a12;
  a18 = v22 ^ 0xA33F4F7D;
  a15 = (v21 + 1421511883) ^ v22;
  a16 = v22 ^ 0x679158DC;
  v23 = (*(v19 + 8 * (v21 + 3045)))(&a14);
  return (*(v19 + 8 * ((2023 * (a17 == v20 + ((v21 - 556) | 0x390) - 278 - 708)) ^ v21)))(v23);
}

uint64_t sub_1D492241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, int a17, int a18, char a19, uint64_t a20, _BYTE *a21, char *a22, char *a23, _BYTE *a24, char *a25)
{
  LODWORD(a23) = v28 + ((-1008118719 - (&a21 | 0xC3E95441) + (&a21 | 0x3C16ABBE)) ^ 0xED1486C1) * v27 + 3049;
  a24 = a11;
  a25 = &a19;
  a22 = &a16;
  (*(v25 + 8 * (v28 + 3249)))(&a21);
  a23 = &a14;
  a21 = a11;
  LODWORD(a24) = (v28 + 1625) ^ (843532609 * ((2 * (&a21 & 0x75E9BB48) - &a21 - 1978252112) ^ 0xD65B1035));
  (*(v25 + 8 * (v28 + 3290)))(&a21);
  a22 = a11;
  LODWORD(a21) = (v28 + 1372) ^ (1504884919 * ((-1974294614 - (&a21 | 0x8A52A7AA) + (&a21 | 0x75AD5855)) ^ 0x8E6EEF4E));
  v29 = (*(v25 + 8 * (v28 ^ 0xF2E)))(&a21);
  return (*(v25 + 8 * ((2149 * (HIDWORD(a21) == ((53 * (v28 ^ 0x1B6)) ^ (v26 + 131)))) ^ v28)))(v29);
}

uint64_t sub_1D49225A8@<X0>(int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X3>, unsigned int a4@<W4>, uint64_t a5@<X5>, int a6@<W6>, unsigned int a7@<W8>)
{
  v15 = (a5 + 4 * a3);
  v16 = (*v15 ^ (a7 + (v14 ^ a4) - 3330)) + (v10 ^ HIDWORD(v11)) + a2 * (*(v13 + 4 * a3) ^ a7);
  *(v15 - 1) = (v16 + v8 - (v9 & (2 * v16))) ^ a6;
  return (*(v12 + 8 * (((a3 + 1 == v7) * a1) ^ v14)))();
}

uint64_t sub_1D492263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, void *a54, _DWORD *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v65 = (a60 + 4 * v63);
  v66 = *v65;
  LODWORD(v65) = ((*(*a54 + (*a55 & 0x16613C3C)) ^ v65) & 0x7FFFFFFF) * ((v61 + 759) ^ 0x866E7D86);
  LODWORD(v65) = v65 ^ (v65 >> 16);
  v67 = -2039581373 * v65;
  *(v64 + 4 * v63) = v66 ^ 0x2181DE4D ^ (v61 + 562157696 + *(v64 + 4 * v63) - (v60 - (v61 - 1483) >= ~(v61 - 1483)) - ((2 * *(v64 + 4 * v63)) & 0x4303BC9A)) ^ *(*(&off_1F5033D40 + v61 - 1343) + HIBYTE(v67) - 2) ^ *(*(&off_1F5033D40 + a53) + HIBYTE(v67) - 2) ^ *(*(&off_1F5033D40 + v61 - 1363) + HIBYTE(v67) + 1) ^ (1967325184 * v65) ^ v67 ^ (89997399 * HIBYTE(v67));
  v68 = ((v61 + 1531490816) & 0xA4B74DFF ^ 0xFFFFFA31) + v62 != ((v61 - 627897840) & 0x256CF5EF ^ 0x5CE);
  return (*(a4 + 8 * (((2 * v68) | (8 * v68)) ^ (v61 + 759))))();
}

uint64_t sub_1D4922894(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v2)))();
}

uint64_t sub_1D4922A20@<X0>(uint64_t a1@<X3>, unint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, _BYTE *a9, uint64_t a10, _BYTE *a11, _BYTE *a12, _BYTE *a13, _BYTE *a14, uint64_t a15, _BYTE *a16, uint64_t a17, uint64_t a18, uint64_t a19, _BYTE *a20, uint64_t a21, _BYTE *a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37)
{
  *a7 = (a1 - ((2 * a1) & 0xAA) - 43) ^ 0xD5;
  *a12 = BYTE3(a1);
  a7[1] = ((BYTE6(a1) ^ 0xE2) - ((2 * (BYTE6(a1) ^ 0xE2)) & 0x9A) - 51) ^ 0xCD;
  a6[1] = (BYTE4(a1) - ((2 * BYTE4(a1)) & 0xC7) + 99) ^ 0x53;
  a11[20] = v39 ^ 0x22;
  *a13 = BYTE5(a1) ^ 0xF9;
  a11[64] = (BYTE2(a1) - ((2 * BYTE2(a1)) & 0x10) + 8) ^ 8;
  a11[50] = (BYTE3(v40) - ((2 * BYTE3(v40)) & 0x7C) - 66) ^ 0xBE;
  *a16 = BYTE1(a1);
  v41 = v37 - 408;
  v42 = (v37 + 946579339) & 0xC7945DFD;
  *a14 = v40;
  a11[26] = (BYTE6(v40) + (~(2 * BYTE6(v40)) | 5) - 2) ^ 0xFD;
  *a22 = v40 >> (((v37 - 117) & 0xFDu) + 35);
  a6[2] = BYTE1(a3);
  a11[45] = (BYTE5(v40) - ((2 * BYTE5(v40)) & 0x14) - 118) ^ 0x8A;
  *a24 = HIBYTE(v40);
  a11[11] = (BYTE2(a3) - ((2 * BYTE2(a3)) & 0xEF) + 119) ^ 0x77;
  *a26 = BYTE1(v39) ^ 0x69;
  *a6 = HIBYTE(a1) ^ 0xCA;
  *a8 = BYTE2(v39) ^ 1;
  a11[52] = BYTE4(v39) ^ 0x61;
  *a23 = BYTE3(v39) ^ 0xA7;
  v43 = *(a4 + 526 + (((v39 >> 33) & 0x80 | (v39 >> 41) & 0x7F) ^ 0x26));
  a11[9] = BYTE6(v39) ^ 0xE;
  *a9 = (((v43 >> 4) | (16 * v43)) ^ 0xB ^ (((v43 >> 4) | (16 * v43)) >> 1) & 0x55) + 95;
  v44 = *(a5 + (((v39 >> 51) & 0xE0 | (v39 >> 59)) ^ 0x93));
  a11[39] = v38 ^ 0x53;
  *a25 = (v44 ^ 0xBC) + 74;
  v45 = *(a5 + (((v38 >> 3) & 0xE0 | (v38 >> 11)) ^ 0xEF));
  a11[49] = BYTE5(v38) ^ 0xBB;
  a11[63] = BYTE3(v38) ^ 0xC1;
  v46 = (a2 >> 38) ^ 0xB0;
  a11[13] = BYTE6(v38) ^ 0x15;
  *a20 = BYTE2(v38) ^ 0x1D;
  v47 = v46 & 0xFC | (a2 >> 46) & 3;
  *a27 = (v45 ^ 0xBC) + 74;
  a11[36] = BYTE4(v38) ^ 0xF2;
  a11[60] = BYTE1(a2) ^ 0x54;
  a11[27] = BYTE2(a2) ^ 0x11;
  v48 = (v38 ^ 0x4F15BBF2C11DE053) >> (a3 & 0x38) >> (a3 & 0x38 ^ 0x38u);
  a11[40] = (v48 - ((2 * v48) & 0x4E) - 89) ^ 0xA7;
  a11[53] = BYTE3(a2) ^ 5;
  a11[59] = a2 ^ 0x4C;
  a11[22] = BYTE4(a2) ^ 0x2D;
  v49 = ((v46 & 0xFC | (a2 >> 46) & 3) ^ 0x86) - ((2 * v46) & 0xD0) + (*(a10 + (v47 ^ 0x97)) ^ 0xB2) + ((2 * *(a10 + (v47 ^ 0x97))) & 0x64) + 79;
  a11[37] = -35 * (((v49 ^ 0x3A) - 41) ^ ((v49 ^ 0xF) - 28) ^ ((v49 ^ 0xB0) + 93)) + 126;
  v50 = *(a4 + 526 + (((a2 >> 41) & 0x80 | (a2 >> 49) & 0x7F) ^ 0x56));
  a11[29] = HIBYTE(a2) ^ 0x30;
  v51 = ((((v50 >> 4) | (16 * v50)) >> 1) & 0x55) + (((v50 >> 4) | (16 * v50)) ^ 0xB) - 2 * ((((v50 >> 4) | (16 * v50)) >> 1) & 0x55 & (((v50 >> 4) | (16 * v50)) ^ 0xB));
  a11[57] = (v51 ^ 0xFC) + ((2 * v51) & 0xF8) + 99;
  **a18 = HIDWORD(a21) + 1;
  v52 = *a18;
  v53 = __ROR8__(*(*a18 + 54), 5);
  v54 = ((v52[6] - ((2 * v52[6]) & 0x9999u) + 64733670) << 35) - 0xD000000000;
  v55 = ((((v52[35] - ((2 * v52[35]) & 0x60u) + 1299811) << 43) - 0x1980000000000) ^ 0x7BA3EE403DB7D185) & (v54 ^ 0xE121F11A3DB7F3D5) ^ v54 & 0x1AD591B800000000;
  v56 = (((v52[30] - ((2 * v52[30]) & 0x90u) + 5240) << 48) - 0x30000000000000) ^ (((v52[16] - ((2 * v52[16]) & 0xA0u) + 13744245) << 40) - 0x250000000000) ^ (((v52[17] - ((2 * v52[17]) & 0x138u) + 2102615242) << 32) - 0x2E00000000) ^ (((v52[42] - ((2 * v52[42]) & 0xD2u) + 156) << 56) - 0x3300000000000000) ^ __ROR8__(((v55 & 0xA60626025B05181 ^ 0x35C577ADD66B25E4 ^ (v55 ^ 0x2191994040266ALL) & ((((v52[21] - ((2 * v52[21]) & 0x104u) + 7849) << 51) - 0x138000000000000) ^ 0x18F9D995847A66ELL)) & ~v53 | v53 & 0x3000000000000004) ^ 0x25170B019126A03CLL, 35) ^ 0xC3F9CDAF4F278863;
  LOBYTE(v51) = 69 * *(*a18 + 55) + 38;
  v57 = v51 & 0x32 ^ 0x3C;
  LOBYTE(v50) = v51 ^ (2 * ((v51 ^ 0x58) & (2 * ((v51 ^ 0x58) & (2 * ((v51 ^ 0x58) & (2 * ((v51 ^ 0x58) & (2 * ((v51 ^ 0x58) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  v58 = (v51 | (((69 * *(*a18 + 55)) > 0xD9u) << 8)) + 1980968761 - (((v50 ^ 0x711EFD6A) - 1897856290) ^ ((v50 ^ 0xAE2A608F) + 1372954425) ^ ((v50 ^ 0xDF349D3F) + 550199945)) - 786605493;
  v59 = ((v58 ^ 0xF5ED2F93) + 1294096977) ^ v58 ^ ((v58 ^ 0x75433E96) - 846443690) ^ ((v58 ^ 0xD86166C6) + 1622020870) ^ ((v58 ^ 0x1FFFFDFF) - 1489991619);
  v60 = (v51 | (((69 * *(*a18 + 55)) > 0xD9u) << 8)) + 294958876 + (((v59 ^ 0xE9829E7A) + 1439684526) ^ ((v59 ^ 0x214C69) - 1133771329) ^ ((v59 ^ 0x516CA7DF) - 316543479));
  v61 = ((2 * (v60 ^ 0xACE1CB0C)) ^ 0x8A118F5C) & (v60 ^ 0xACE1CB0C) ^ (2 * (v60 ^ 0xACE1CB0C)) & 0x4508C7AE;
  v62 = ((4 * (v61 ^ 0x450840A2)) ^ 0x14231EB8) & (v61 ^ 0x450840A2) ^ (4 * (v61 ^ 0x450840A2)) & 0x4508C7AC;
  v63 = ((16 * (v62 ^ 0x4108C106)) ^ 0x508C7AE0) & (v62 ^ 0x4108C106) ^ (16 * (v62 ^ 0x4108C106)) & 0x4508C7A0;
  v64 = (v60 ^ 0xEDE1CA08) & (2 * (v60 & 0xE9E90CA2)) ^ v60 & 0xE9E90CA2;
  v65 = (v62 ^ 0x40006A0) & (16 * ((v61 ^ 0x708) & (4 * v64) ^ v64)) ^ (v61 ^ 0x708) & (4 * v64) ^ v64;
  v66 = v65 ^ 0x4508C7AE ^ (v63 ^ 0x40084200) & (v65 << 8);
  v67 = v60 ^ (2 * ((v66 << 16) & 0x45080000 ^ v66 ^ ((v66 << 16) ^ 0x47AE0000) & (((v63 ^ 0x500850E) << 8) & 0x45080000 ^ 0x45080000 ^ (((v63 ^ 0x500850E) << 8) ^ 0x8C70000) & (v63 ^ 0x500850E)))) ^ 0xE9E8832B;
  v68 = *(&off_1F5033D40 + (v41 ^ 0x6C6));
  v69 = *(v68 + 6 + v67);
  v70 = (v69 + 64) & 0x5A ^ 0xFFFFFFDE;
  HIDWORD(v53) = v69;
  LODWORD(v53) = ((((v69 + 64) ^ 0x2C) & (2 * (((v69 + 64) ^ 0x2C) & (2 * (((v69 + 64) ^ 0x2C) & (2 * (((v69 + 64) ^ 0x2C) & (2 * (((v69 + 64) ^ 0x2C) & (2 * v70) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70) << 25) ^ ((v69 + 64) << 24);
  v71 = ((((v53 >> 26) ^ 0x1A) - 104) ^ (((v53 >> 26) ^ 0x48) - 58) ^ (((v53 >> 26) ^ 0x11) - 99)) + 92;
  LOBYTE(v66) = v71 & 0x69 ^ 0xCA;
  v72 = (v71 ^ (2 * ((v71 ^ 0x54) & (2 * ((v71 ^ 0x54) & (2 * ((v71 ^ 0x54) & (2 * ((v71 ^ 0x54) & (2 * ((v71 ^ 0x54) & (2 * (v71 & (2 * v71) & 0x2A ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) << 32;
  v73 = 0xAAD2301E756B1F49 - (((v72 ^ 0x20032B4B881F7757) - 0x4E28DDB40221EBAALL) ^ ((v72 ^ 0xB057EF808BDD0667) + 0x2183E680FE1C6566) ^ ((v72 ^ 0x9054C4A203C27130) + 0x180CDA276031233));
  v74 = ((2 * (v73 ^ 0x5B4D5886D22D9F90)) ^ 0x7899039BA4F7B854) & (v73 ^ 0x5B4D5886D22D9F90) ^ (2 * (v73 ^ 0x5B4D5886D22D9F90)) & 0x3C4C81CDD27BDC2ALL;
  v75 = ((4 * (v74 ^ 0x44480445208442ALL)) ^ 0xF132073749EF70A8) & (v74 ^ 0x44480445208442ALL) ^ (4 * (v74 ^ 0x44480445208442ALL)) & 0xBC4C81CDD27BDC28;
  v76 = ((16 * (v75 ^ 0xC4C80C892108C02)) ^ 0xC4C81CDD27BDC2A0) & (v75 ^ 0xC4C80C892108C02) ^ (16 * (v75 ^ 0xC4C80C892108C02)) & 0xBC4C81CDD27BDC20;
  v77 = (((v76 ^ 0x38048100D0421C0ALL) << 8) ^ 0x4C81CDD27BDC2A00) & (v76 ^ 0x38048100D0421C0ALL) ^ ((v76 ^ 0x38048100D0421C0ALL) << 8) & 0xBC4C81CDD27BDC00;
  v78 = (v73 ^ 0x574DD802D2051BB0) & (2 * (v73 & 0x2701D94B00000002)) ^ v73 & 0x2701D94B00000002;
  v79 = (v75 ^ 0xB0000105406B5020) & (16 * ((v74 ^ 0xB808010800000000) & (4 * v78) ^ v78)) ^ (v74 ^ 0xB808010800000000) & (4 * v78) ^ v78;
  v80 = (v76 ^ 0x844800CD0239C000) & (v79 << 8) ^ v79 ^ 0xBC4C81CDD27BDC2ALL ^ (v77 ^ 0xC0081C052580000) & (((v76 ^ 0x844800CD0239C000) & (v79 << 8) ^ v79) << 16);
  v81 = ((v80 << 32) ^ 0x527BDC2A00000000) & (((v77 ^ 0xB04C000D8023D42ALL) << 16) & 0xBC4C81CD00000000 ^ 0x3C00018400000000 ^ (((v77 ^ 0xB04C000D8023D42ALL) << 16) ^ 0x81CDD27B00000000) & (v77 ^ 0xB04C000D8023D42ALL));
  v82 = ((v52[61] - ((2 * v52[61]) & 0xFAu) + 1282464) << 40) - 0x230000000000;
  v83 = ((v52[34] - ((2 * v52[34]) & 0x1C)) << 24) + 0x7F40E0DD0E000000;
  v84 = ((v52[7] - ((2 * v52[7]) & 0x96)) << 16) - 0xC1957A7F3B50000;
  v85 = v52[15] - ((2 * v52[15]) & 0x1B4) - 0x485214AC2B163D26;
  v86 = (v83 & 0x402045DE000000 ^ 0x558D966C6EE77866 ^ (v84 & 0xD1400000089D0000 ^ 0x47974441EF27539 ^ (v85 & 0x884010000390 ^ 0x849335240D807696 ^ ((((v52[32] - ((2 * v52[32]) & 0x66)) << 8) - 0x4F520F7461AACD00) ^ 0x1E99E631B4B7FF6FLL) & (v85 ^ 0x485214AC2B163DB5)) & (v84 ^ 0xC1957A7F3B4FFFFLL)) & (v83 ^ 0x80BF1F22F1FFFFFFLL)) & (v82 ^ 0xEC6E82FFFFFFFFFFLL) ^ v82 & 0x11AC960000000000;
  v72 ^= 0x6E2BF6FF8A3E9CFDuLL;
  v87 = (((v86 ^ 0xFFF1B4C86F547417) - 0x6601A303790CA43BLL) ^ ((v86 ^ 0x135D7F9DE158BA47) + 0x755297A908FF9595) ^ ((v86 ^ 0x577FB6E6CF727B66) + 0x31705ED226D554B6)) - (((v72 ^ v86 ^ 0x7601D4C6101148E7) + 0x100E3CF2F9B66735) ^ ((v72 ^ v86 ^ 0x955BA0D3D7F7D903) - 0xCABB718C1AF092FLL) ^ ((v72 ^ v86 ^ 0x36A2FF300CA6B82FLL) + 0x50AD1704E50197FDLL)) - 0x1776AD4C4BBFF8E9;
  v88 = ((2 * (v87 ^ 0xFEB6BDCFA0B90E22)) ^ 0x264F8E34CAE8D47CLL) & (v87 ^ 0xFEB6BDCFA0B90E22) ^ (2 * (v87 ^ 0xFEB6BDCFA0B90E22)) & 0x1327C71A65746A3ELL;
  v89 = ((4 * (v88 ^ 0x1120410A25142A02)) ^ 0x4C9F1C6995D1A8F8) & (v88 ^ 0x1120410A25142A02) ^ (4 * (v88 ^ 0x1120410A25142A02)) & 0x1327C71A65746A3CLL;
  v90 = ((16 * (v89 ^ 0x1320C31260244206)) ^ 0x327C71A65746A3E0) & (v89 ^ 0x1320C31260244206) ^ (16 * (v89 ^ 0x1320C31260244206)) & 0x1327C71A65746A30;
  v91 = (((v90 ^ 0x10386182030481ELL) << 8) ^ 0x27C71A65746A3E00) & (v90 ^ 0x10386182030481ELL) ^ ((v90 ^ 0x10386182030481ELL) << 8) & 0x1327C71A65746A00;
  v92 = (v87 ^ 0xED9478C5A1A9461ALL) & (2 * (v87 & 0xED917AD5C5CD641CLL)) ^ v87 & 0xED917AD5C5CD641CLL;
  v93 = (v89 ^ 0x7040805502820) & (16 * ((v88 ^ 0x207861000600030) & (4 * v92) ^ v92)) ^ (v88 ^ 0x207861000600030) & (4 * v92) ^ v92;
  v94 = (v90 ^ 0x1224410245442200) & (v93 << 8) ^ v93 ^ 0x1327C71A65746A3ELL ^ (v91 ^ 0x307020064600000) & (((v90 ^ 0x1224410245442200) & (v93 << 8) ^ v93) << 16);
  v95 = v73 ^ v72 ^ v87 ^ (2 * ((v80 << 32) & 0x3C4C81CD00000000 ^ v80 ^ v81 ^ v94 ^ (v94 << 32) & 0x1327C71A00000000 ^ ((v94 << 32) ^ 0x65746A3E00000000) & (((v91 ^ 0x1020C51A0114403ELL) << 16) & 0x1327C71A00000000 ^ 0x1025820A00000000 ^ (((v91 ^ 0x1020C51A0114403ELL) << 16) ^ 0x471A657400000000) & (v91 ^ 0x1020C51A0114403ELL))));
  v96 = (((v86 ^ 0x56241E18E7F5E7DELL) + 0x302BF62C0E52C80ELL) ^ ((v86 ^ 0xCCB34BFF8C07035CLL) - 0x55435C349A5FD370) ^ ((v86 ^ 0x214428542A8C51B4) + 0x474BC060C32B7E68)) + 0x3289A7FEB4CC4FE6 + (((v95 ^ 0x8497BC3836190ADBLL) + 0x6D3EFEDCFE11ABD0) ^ ((v95 ^ 0xA5667C162610B727) + 0x4CCF3EF2EE181634) ^ ((v95 ^ 0x39459CAD31B36A8FLL) - 0x2F1321B606443464));
  v97 = (((v52[51] - ((2 * v52[51]) & 0x4Eu) + 201) << 56) - 0x2200000000000000) ^ (((v52[56] - 2 * (v52[56] & 0x1Fu) + 46173) << 48) - 0x3E000000000000) ^ v96 ^ ((v96 ^ 0x460456412C306517) - 0x47870DAF6B680423) ^ ((v96 ^ 0xA84DAA874B2C22ALL) - 0xB07814633EAA31ELL) ^ ((v96 ^ 0x13D42A78E12C93E6) - 0x12577196A674F2D2) ^ ((v96 ^ 0x5ED7FD7FFEF655EFLL) - 0x5F54A691B9AE34DBLL) ^ 0x819E6555F41057A7;
  v99 = ((v52[8] - ((2 * v52[8]) & 0x1D2)) << 24) - 0x4C2AA3717000000;
  v100 = ((v52[33] - ((2 * v52[33]) & 0xE0)) << 16) + 0x24A5960609700000;
  v101 = v52[19] - ((2 * v52[19]) & 0x1A8) - 0x13D8940694A15F2CLL;
  v102 = (((v52[4] >> 4) | (16 * v52[4])) - ((v52[4] >> 3) & 0xC) - 122) ^ 0xDALL;
  LODWORD(v102) = (*(v68 + 537 + v102) >> 5) | (8 * *(v68 + 537 + v102));
  v103 = (v100 & 0x1205DFE10000 ^ 0xA693B45CDBF4FE1FLL ^ (v101 & 0x80002000200035DDLL ^ 0x4D50C86A828850FFLL ^ (((v102 - ((2 * v102) & 0x8C) + 70) << 8) ^ 0x28AF45A882964D22) & (v101 ^ 0x56D89C5299E85F27)) & (v100 ^ 0xDB5A69F9F68FFFFFLL)) & (v99 ^ 0x4C2AA3716FFFFFFLL) ^ v99 & 0xB81154650D000000;
  LOBYTE(v99) = 69 * *(*a18 + 31) + 70;
  LOBYTE(v101) = v99 & 0xE8 ^ 0x3B;
  LOBYTE(v99) = *(v68 + 6 + ((v99 ^ (2 * ((v99 ^ 0x3A) & (2 * ((v99 ^ 0x3A) & (2 * ((v99 ^ 0x3A) & (2 * ((v99 ^ 0x3A) & (2 * (((2 * (v101 ^ v99 & 0x52)) ^ 0x24) & (v99 ^ 0x3A) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101))) ^ 0xD5u)) - 7;
  LOBYTE(v102) = v99 & 0xC9 ^ 0x2A;
  LOBYTE(v99) = v99 ^ (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * v99) & 0x6A ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102));
  LOBYTE(v99) = (((((v99 >> 2) | (v99 << 6)) ^ 0xB0) + 26) ^ ((((v99 >> 2) | (v99 << 6)) ^ 0xED) + 69) ^ ((((v99 >> 2) | (v99 << 6)) ^ 0xFA) + 84)) + 111;
  v105 = *(a33 + 8 * (v42 ^ 0x3EC));
  LOBYTE(v76) = (v99 & 0x82 | 0x34) ^ v99 & 0x68;
  v104 = (((v52[43] - ((2 * v52[43]) & 0xFF87u) + 8682) << 48) - 0x27000000000000) ^ (((v52[38] - ((2 * v52[38]) & 0x32u) + 2095391) << 40) - 0x60000000000) ^ v103 & 0x3E9A055393BC5F8 ^ (((v99 ^ (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76))) << 32) ^ 0xFC165F40C6C43A07) & (v103 ^ 0x46A8025246FFF01);
  v98 = ((v52[46] - 2 * (v52[46] & 0xFu) + 168) << 56) - 0x1900000000000000;
  return v105(v105, v97, v56, 217, 0, ((v104 & 0x4AF54021979D7FCDLL ^ v98 & 0x4A00000000000000 ^ 0xB53ABFDF687380BALL) & (v98 & 0xB500000000000000 ^ 0x2235F23D94F79AB9 ^ v104 & 0xB50ABFDE68628032) | (v104 & 0x4AF54021979D7FCDLL ^ v98 & 0x4A00000000000000) & 0x48C0000003086544) ^ 0xA0412E67048D1C27, a37, 0x406DA5AB0F3687EBLL, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

void sub_1D4925344(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (435584651 * (((a1 | 0xB8ACEBF1) - a1 + (a1 & 0x4753140E)) ^ 0xD59EF1A7));
  __asm { BRAA            X8, X17 }
}

void sub_1D4925B3C()
{
  v3 = (((v0 ^ 0x7654927E) - 1985254014) ^ ((v0 ^ 0x8EC4B5DC) + 1899711012) ^ ((v0 ^ 0xBEBC6F2B) + 1094947029)) - 1612575761 + (((LODWORD(STACK[0x2D4]) ^ 0x122FC49D) + ((v1 - v2 - 1059) ^ 0x6402F907)) ^ ((LODWORD(STACK[0x2D4]) ^ 0x10BBEE56) - 280751702) ^ ((LODWORD(STACK[0x2D4]) ^ 0x44B86242) - 1152934466));
  LODWORD(STACK[0x2D4]) = v3 ^ ((v3 ^ 0xAF3D911) - 427467724) ^ ((v3 ^ 0xEB1F20A6) + 124364165) ^ ((v3 ^ 0x8F9A7CD1) + 1676474868) ^ ((v3 ^ 0x7DFFFFBB) - 1853261158) ^ 0x55A53254;
  JUMPOUT(0x1D4925C88);
}

uint64_t sub_1D4926534@<X0>(uint64_t a1@<X8>)
{
  v4 = ((v2 ^ 0x2CA) + 1404) | 0x442;
  v7 = v3;
  v8 = a1;
  v6 = (v2 ^ 0x2CA) - 435584651 * (((&v6 | 0x31283F4) - (&v6 & 0x31283F4)) ^ 0x6E2099A2) + 1191;
  result = (*(v1 + 8 * ((v2 ^ 0x2CA) + 2826)))(&v6);
  *(v3 + 4) = v4 - *(v3 + 4) - 948939128;
  return result;
}

uint64_t sub_1D492667C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *(v10 + 8);
  v13 = ((2 * (v9 ^ (v4 + 122) ^ *(v12 + ((a2 + ((a1 + a4) << 32)) >> 30)))) << ~v7) | ((*(v12 + 4 * (a1 + a4)) ^ v4) >> v7);
  *(v12 + 4 * a1) = v13 + v4 - (v5 & (2 * v13));
  return (*(v11 + 8 * (((a1 + 1 == v6) * a3) ^ v8)))();
}

uint64_t sub_1D492672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19)
{
  v24 = 1564307779 * (&a14 ^ 0x970DCC13);
  a16 = a10;
  a18 = v21 - v24 - ((2 * v21) & 0xFBF408DA) + 2113537133;
  a14 = v24 ^ 0x434;
  (*(v22 + 29720))(&a14);
  v25 = 742307843 * (&a14 ^ 0x1E228D55);
  a16 = v19;
  a17 = (((2 * v20) & 0x2DFDB3FC) + (v20 ^ 0x16FED9FE) - 115509632) ^ v25;
  a19 = a10;
  a14 = v25 ^ 0x491;
  v26 = (*(v22 + 29560))(&a14);
  return (*(v22 + 8 * ((21 * (a15 != v23)) ^ 0x263u)))(v26);
}

void sub_1D49268D0(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = a1 - 1;
  *v26 = ((((a13 - v27) | (v27 - a13)) >> 31) ^ 0x7FFFFFFF) + ((((v27 + 640) | 0x400) - 1663) ^ v27);
  (*(v25 + 8 * (v27 + 3699)))(a25);
  JUMPOUT(0x1D4926948);
}

uint64_t sub_1D49269F4@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>)
{
  HIDWORD(v12) = a1;
  LODWORD(v12) = a1;
  v13 = (v7 ^ 0xB9D3B776) & (a2 ^ 0xF555B763) ^ v7 & 0xB379FFEA;
  v14 = (v13 ^ 0x4EAE489D) & (v3 & 0x77584AEE ^ 0x694971D7 ^ (v7 ^ 0x31740267) & (v3 ^ v11)) ^ v13 & 0xD0BEC6A0;
  v15 = (((a3 ^ 0xD13C80AB) + 784564053) ^ ((a3 ^ 0x20D96833) - 551118899) ^ ((a3 ^ 0xB7C9A011) + 1211523055)) + ((((v12 >> 27) ^ 0xBF541E15) + 911736292) ^ (((v12 >> 27) ^ 0x27A9EC71) + ((v5 + 1497) ^ 0xAEAA0499)) ^ (((v12 >> 27) ^ 0x5D74E34C) - 730398533)) + (((*(v6 + 4 * (v4 + v10)) ^ 0x9FFE72C0) + 1610714432) ^ ((*(v6 + 4 * (v4 + v10)) ^ 0xE33FBD2F) + 482362065) ^ ((*(v6 + 4 * (v4 + v10)) ^ 0xF279FC4) - 254255044)) + (((v14 ^ 0x1FCD04DE) + 1921687847) ^ ((v14 ^ 0xB1549043) - 602720836) ^ ((v14 ^ 0x11C82BE2) + 2089782811)) + 1886097910;
  v16 = (v15 ^ 0xC1456AE7) & (2 * (v15 & 0x858872F0)) ^ v15 & 0x858872F0;
  v17 = ((2 * (v15 ^ 0xC355AB87)) ^ 0x8DBBB2EE) & (v15 ^ 0xC355AB87) ^ (2 * (v15 ^ 0xC355AB87)) & 0x46DDD976;
  v18 = v17 ^ 0x42444911;
  v19 = (v17 ^ 0x4019040) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0x1B7765DC) & v18 ^ (4 * v18) & 0x46DDD974;
  v21 = (v20 ^ 0x2554140) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x44889823)) ^ 0x6DDD9770) & (v20 ^ 0x44889823) ^ (16 * (v20 ^ 0x44889823)) & 0x46DDD970;
  v23 = v21 ^ 0x46DDD977 ^ (v22 ^ 0x44DD9100) & (v21 << 8);
  return (*(v9 + 8 * ((3625 * (v4 + 1 == v8 + 4)) ^ v5)))(v15 ^ (2 * ((v23 << 16) & 0x46DD0000 ^ v23 ^ ((v23 << 16) ^ 0x59770000) & (((v22 ^ 0x2004807) << 8) & 0x46DD0000 ^ 0x2040000 ^ (((v22 ^ 0x2004807) << 8) ^ 0x5DD90000) & (v22 ^ 0x2004807)))) ^ 0xCEB58897);
}

uint64_t sub_1D4926D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20, unsigned int a21, char *a22)
{
  v25 = 675097751 * (((&a17 | 0xEF39565E) - &a17 + (&a17 & 0x10C6A9A0)) ^ 0xAC7973C8);
  a21 = v25 ^ 0xA33F4F7D;
  a17 = a13;
  a18 = (v22 + 1421510836) ^ v25;
  a19 = v25 ^ 0xC162BF22;
  a22 = &a14;
  v26 = (*(v23 + 8 * (v22 + 1998)))(&a17);
  return (*(v23 + 8 * ((2591 * (a20 == ((3 * (v22 ^ 0x5D2)) ^ (v24 + 1242)) + (v22 ^ 0x39E))) ^ v22)))(v26);
}

uint64_t sub_1D4926E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  *(*(v61 + 8 * (v60 + v59 - 588)) - 8) = 19;
  v63 = (*(v58 + 8 * (v60 + v59 + 3144)))(&a58, 0, 1024);
  *(v62 - 152) = &a58;
  return (*(a38 + 8 * ((((v60 + v59 + 1489) | 6) - 1883965214) ^ 0x8FB5031A ^ (((v60 + v59 + 1489) | 6) + 240544439) & 0xF1A98FFB ^ ((v60 + v59 + 1489) | 6))))(v63);
}

uint64_t sub_1D4926FC8@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v6 = (v2 - 121325279) & 0x73B3FFE;
  *v10 = a1;
  *a2 = (v3 + v2 - 2313 - 3) ^ v11;
  v15 = v13;
  v14 = v6 - 143681137 * ((&v14 - 1006674324 - 2 * (&v14 & 0xC3FF5E6C)) ^ 0x2557F27C) + 1226;
  v7 = v6 + 2678;
  v8 = 7 * (v6 ^ 0x3F5);
  (*(v4 + 8 * v7))(&v14);
  v15 = v12;
  v14 = v8 - 143681137 * ((2 * (&v14 & 0x2A6E6B40) - &v14 + 1435604157) ^ 0xB33938AD) + 2011;
  (*(v4 + 8 * (v8 ^ 0xEB9)))(&v14);
  return (v5 - 671454635);
}

uint64_t sub_1D49271D0(uint64_t a1, uint64_t a2)
{
  *(a2 + v5 + v2) = ((v3 + 1) ^ v6) * (v3 + 18);
  v8 = *(v7 + 8 * ((30 * (v5 + v2 != 0)) ^ v4));
  return v8(v8);
}

uint64_t sub_1D49271D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, char *a21)
{
  v25 = 1564307779 * ((&a17 & 0x25CE36F7 | ~(&a17 | 0x25CE36F7)) ^ 0x4D3C051B);
  LODWORD(a17) = (v21 + 175) ^ v25;
  a20 = v22 - v25 + ((v21 - 862) | 0x180) - ((((v21 - 862) ^ 0x6D7) - 67894806) & (2 * v22)) + 2113536710;
  a18 = a12;
  (*(v23 + 8 * (v21 ^ 0xD06)))(&a17);
  v26 = 675097751 * (((&a17 | 0x7B1D1B32) - &a17 + (&a17 & 0x84E2E4C8)) ^ 0x385D3EA4);
  a20 = v26 ^ 0xA33F4F7E;
  a21 = &a11;
  a17 = a12;
  LODWORD(a18) = (v21 + 1421511612) ^ v26;
  HIDWORD(a18) = v26 ^ 0x2EC4DCDA;
  v27 = (*(v23 + 8 * (v21 + 2774)))(&a17);
  return (*(v23 + 8 * ((3764 * (a19 == v24)) ^ v21)))(v27);
}

void sub_1D4927360(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x55FEE1C555FEE1C5;
  *(a1 + 16) = 0x5D46ADFA55BA936BLL;
  *(a1 + 24) = 671454635;
  *v2 = a1;
  JUMPOUT(0x1D48EFAE8);
}

void sub_1D492739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  *(a23 + 1560) = *STACK[0x340];
  *(a23 + 1552) = *STACK[0x380];
  v49 = STACK[0x210];
  *(*STACK[0x210] + 488) = *(a49 + 8);
  *(*v49 + 480) = *a49;
  JUMPOUT(0x1D4927418);
}

uint64_t sub_1D49274BC@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) ^ 0x82;
  return (*(v6 + 8 * ((92 * (v7 == (v5 ^ (a3 + 94)) - 2821)) ^ (a2 + v5 + 235))))();
}

uint64_t sub_1D4927584@<X0>(int a1@<W8>)
{
  result = (*(v2 + 8 * (a1 + 2829)))(*v4);
  *v3 = 0;
  *v1 = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 56) = 1171254160;
  return result;
}

uint64_t sub_1D492777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 112) = (v17 - 155) ^ (((2 * ((v19 - 136) & 0xA24ED80) - (v19 - 136) - 170192259) ^ 0xBEB0DE03) * v18);
  *(v19 - 128) = &a15;
  *(v19 - 120) = a14;
  v20 = (*(v16 + 8 * (v17 ^ 0xC1D)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 136) > (v15 + 1)) * (v17 ^ 0xC2A)) ^ v17)))(v20);
}

uint64_t sub_1D4927858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 31) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 30) = (&a10 + ((v12 + 69) ^ 0xA6)) * (&a10 ^ 0xBB);
  return (*(v11 + 8 * v12))();
}

uint64_t sub_1D49279D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = 675097751 * ((((v64 - 192) | 0x8CDAA006) - (v64 - 192) + ((v64 - 192) & 0x73255FF8)) ^ 0xCF9A8590);
  *(v64 - 136) = &STACK[0x310];
  *(v64 - 160) = a19;
  *(v64 - 152) = 0;
  *(v64 - 144) = v66 + 556152022;
  *(v64 - 140) = v66 + v62 + 1486;
  *(v64 - 176) = a23;
  *(v64 - 168) = 0;
  *(v64 - 192) = a59;
  v67 = (*(v65 + 8 * (v62 + 3551)))(v64 - 192);
  v68 = *(v64 - 184);
  LODWORD(STACK[0x484]) = v68;
  return (*(a62 + 8 * (((v68 == v63) * ((743 * (v62 ^ 0xAD)) ^ 0x10)) ^ v62)))(v67);
}

void XpqjnD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = a6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = !v8 && a7 != 0 && a8 != 0;
  __asm { BRAA            X9, X17 }
}

void sub_1D4927B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v21 - 128) = v20 - 435584651 * ((v21 - 128) ^ 0x6D321A56) + 930;
  *(v21 - 112) = &a19;
  *(v21 - 120) = a12;
  (*(v19 + 8 * (v20 ^ 0xA1F)))(v21 - 128);
  JUMPOUT(0x1D4927B70);
}

uint64_t sub_1D4927C10@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v25 = 843532609 * ((v24 - 128) ^ 0x5C4D5485);
  *(v24 - 116) = a1 - v25 - 2 * (a1 & 1) + 276443305;
  *(v24 - 112) = v25 - 875954331 + v23;
  *(v24 - 128) = &a12;
  v26 = (*(v21 + 8 * (v23 + 3431)))(v24 - 128);
  return (*(v21 + 8 * ((947 * (*v22 - 1111656586 + (a21 & 0x3Fu) < ((v23 + 109) | 0x212u) - 946)) ^ v23)))(v26);
}

uint64_t sub_1D4927D14()
{
  v5 = **(v1 + 8 * (v0 - 1526));
  v6 = v4 - 152;
  v7 = 675097751 * ((v4 - 152 + v2 - 2 * ((v4 - 152) & v2)) ^ 0xB5B19B2CD79CD8E6);
  *(v4 - 120) = ((v0 - 1776625230) ^ 5) + v7;
  *(v6 + 40) = v5 ^ v7;
  *(v6 + 24) = v7;
  *(v4 - 152) = -675097751 * ((v4 - 152 + v2 - 2 * ((v4 - 152) & v2)) ^ 0xD79CD8E6);
  *(v4 - 148) = v0 - v7 + 1699920919;
  *(v4 - 140) = (v0 - 1776625104) ^ v7;
  *(v4 - 136) = v0 - 1776625230 - v7;
  v8 = (*(v3 + 8 * (v0 ^ 0x8FB)))(v4 - 152);
  return (*(v3 + 8 * *(v4 - 144)))(v8);
}

void sub_1D4927E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v29 = 1361651671 * ((((v28 - 144) | 0x32AE357C) - (v28 - 144) + ((v28 - 144) & 0xCD51CA80)) ^ 0x79C5F902);
  *(v28 - 128) = &a24;
  *(v28 - 120) = v26 - v29 - 371201644 + v25 + 257;
  *(v28 - 144) = v24;
  *(v28 - 132) = (v25 - 1206) ^ v29;
  (*(v27 + 8 * (v25 ^ 0x848)))(v28 - 144);
  JUMPOUT(0x1D48C8ED0);
}

uint64_t sub_1D4927F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *(v66 - 192) = v64 + ((((v66 - 192) ^ 0x3F2D5AC2 | 0x56414FD2) - ((v66 - 192) ^ 0x3F2D5AC2) + (((v66 - 192) ^ 0x3F2D5AC2) & 0xA9BEB028)) ^ 0x774E9845) * v65 + 1610488143;
  (*(v67 + 8 * (v64 ^ 0x2804FF2Du)))(v66 - 192);
  *(v66 - 192) = &STACK[0x374];
  *(v66 - 180) = (v62 + v64 + 1897) ^ (1037613739 * ((v66 - 192) ^ 0xD1022D7F));
  *(v66 - 168) = &STACK[0x284];
  LOBYTE(STACK[0x1860]) = -85 * ((v66 + 64) ^ 0x7F) + ((v64 + 106) & 0xDE) + (((v63 - v64) | (v64 - v63)) < 0) - 80;
  v68 = (*(a62 + 8 * (v62 + v64 + 3774)))(v66 - 192);
  return (*(a62 + 8 * ((((STACK[0x200] == 0) ^ (((v64 + 106) & 0xDE) - 1)) & 1 | ((((STACK[0x200] == 0) ^ (((v64 + 106) & 0xDE) - 1)) & 1) << 6)) ^ (((v64 + 13294698) & 0xD73037DE) + 1589))))(v68);
}

uint64_t sub_1D492806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  (*(v21 + 8 * a13))(a14 + 16);
  v23 = (*(v21 + 8 * SHIDWORD(a12)))();
  *v22 = v23;
  return sub_1D49280C4(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void sub_1D49282D0(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v65 = *(a59 + 1428);
  if (v65 <= 0x20 && ((1 << v65) & 0x100110000) != 0)
  {
    (*(v64 + 8 * ((2611 * (*(a60 + 476) == a63 - 1485)) ^ (a63 - 1203))))();
  }

  else
  {
    v66 = (a3 ^ 0x1C401F42) & 0x962037C6 ^ 0x8401942;
    v67 = ((16 * v66) ^ 0x70D0F5E6) & (v66 ^ a5);
    v68 = (a3 ^ 0x1C401F42) & 0x69D3F9D6 ^ 0xFBFEF7AD ^ v66 & 0x69D079C6 ^ ((16 * ((a3 ^ 0x1C401F42) & 0x69D3F9D6 ^ 0xFBFEF7AD)) ^ 0x4B301B56) & (v66 ^ a5) ^ (v67 ^ v66 & 0x69D079C6) & 0x3E0EEB00;
    v69 = ((2 * (v68 ^ (v67 & 0x6080000 | 0x61B008C2))) ^ 0x40417C7C) & (v63 & 0x9FB58876 ^ (v63 ^ 0xD7D3AB37) & (a57 ^ 0x8693CC38) ^ 0xB18C17DC) ^ ((2 * (v68 ^ (v67 & 0x6080000 | 0x61B008C2))) ^ 0x2804F184) & 0x261D9FEA;
    v70 = (v69 >> 4) & 0x6F627E3 ^ 0xFDFFFF3D ^ ((v69 >> 4) ^ 0x20058DE) & (v69 ^ 0x46F3AA0B);
    if (((v70 | (v70 >> 2)) & 3) != 0)
    {
      v71 = 671412614;
    }

    else
    {
      v71 = 671454635;
    }

    if (a55 == a1)
    {
      (*(v64 + 8 * (((v71 != (a48 & 0x66F24FDD ^ 0x28059E66)) * (a50 - 491)) ^ (a63 + 719))))();
    }

    else
    {
      if (a55 != 1780078589)
      {
        JUMPOUT(0x1D49282A0);
      }

      sub_1D4927458();
    }
  }
}

uint64_t sub_1D4928694(__n128 *a1, uint64_t a2, __n128 a3)
{
  a1[-1] = a3;
  *a1 = a3;
  return (*(v5 + 8 * (((a2 == 0) * v4) ^ v3)))(a1 + 2, a2 - 8);
}

uint64_t sub_1D49286C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (v17 - 384) ^ (50899313 * ((-1630319474 - (&a14 | 0x9ED34C8E) + (&a14 | 0x612CB371)) ^ 0x4BE7990B));
  a15 = &a10;
  v19 = (*(v16 + 8 * (v17 ^ 0x6CD)))(&a14);
  return (*(v16 + 8 * (((a16 == v18 + v17 - 1590 - 632) * (((v17 + 754640455) & 0xD305199B) - 1863)) ^ v17)))(v19);
}

uint64_t sub_1D49287F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v47 = (*(v45 + 8 * (v46 + 903)))(&a45, 0);
  (*(a38 + 8 * (v46 ^ 0x477)))(v47);
  v48 = (*(a38 + 8 * (v46 + 905)))();
  LODWORD(a31) = a32 + 1;
  return sub_1D49288E4(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1D49288E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v47 = *(v45 + 4 * (v40 - 1));
  *(v45 + 4 * v40) = (*(v43 + 4 * v41) ^ 0xBEE046A8) + v41 + ((1664525 * (v47 ^ (v47 >> 30))) ^ *(v45 + 4 * v40));
  v48 = v44 - 931744410 + a37;
  *(v46 - 104) = ((v44 - 931744410) ^ 0x89) - a37;
  *(v46 - 120) = a33;
  *(v46 - 112) = v40 + 1 + a37;
  *(v46 - 136) = (v44 + v42) ^ a37;
  *(v46 - 132) = v48;
  *(v46 - 144) = 1 - a37;
  *(v46 - 140) = v48 - 5;
  v49 = (*(v38 + 8 * (v44 ^ v39)))(v46 - 144);
  return (*(a38 + 8 * *(v46 - 128)))(v49);
}

uint64_t sub_1D4928A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  *a5 = 0;
  *a6 = 0;
  a20 = (1037613739 * ((((2 * &a19) | 0x12DB00A4) - &a19 - 158171218) ^ 0xD86FAD2D)) ^ 0x86F54BA0;
  v21 = (*(v20 + 29168))(&a19);
  return (*(v20 + 8 * ((997 * (a19 != 671454635)) ^ 0x1E4u)))(v21);
}

uint64_t sub_1D4928AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = (((a7 - 851) | 0x142) ^ (v7 + 1354)) - v9;
  if (v8 > v11)
  {
    v11 = v8;
  }

  return (*(v10 + 8 * ((((v11 + 1) < 0x24) * ((19 * (a7 ^ 0x9CA)) ^ 0xC30)) ^ a7)))();
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

void df35957c4e0()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2108) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 + dword_1EC7E2108) ^ 0x82))] ^ 0xF4]) + 10);
  v1 = *(v0 - 4);
  v2 = off_1F50340C8 - 8;
  v3 = off_1F50343C8 - 8;
  v4 = *(&off_1F5033D40 + (*(off_1F50343C8 + (*(off_1F50340C8 + (-35 * ((qword_1EC7E2160 + v1) ^ 0x82)) - 8) ^ 0x60u) - 8) ^ (-35 * ((qword_1EC7E2160 + v1) ^ 0x82))) - 38);
  v5 = *v4 - v1 - &v12;
  *(v0 - 4) = 1228258013 * (v5 - 0xC891BCBEBCEAD82);
  *v4 = 1228258013 * (v5 ^ 0xC891BCBEBCEAD82);
  v11 = 0;
  v14 = &v11;
  v15 = -1224077185 - 1785193651 * ((((v13 | 0x19AA01CA) ^ 0xFFFFFFFE) - (~v13 | 0xE655FE35)) ^ 0x10745A19);
  v6 = off_1F5033F18 - 12;
  v7 = off_1F50342D8 - 12;
  v8 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2108) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 + dword_1EC7E2108) ^ 0x82))] ^ 3]) - 206);
  (*(v8 + 8 * ((*(off_1F50342D8 + (*(off_1F5033F18 + (-35 * ((*v4 - *(v0 - 4)) ^ 0x82)) - 12) ^ 0x30u) - 12) ^ (-35 * ((*v4 - *(v0 - 4)) ^ 0x82))) + 3639)))(v13);
  v10 = 0;
  v15 = -1224077185 - 1785193651 * (((v13 | 0x5A5FD4B1) + (~v13 | 0xA5A02B4E)) ^ 0xAC7E709C);
  v14 = &v10;
  (*(v8 + 8 * (((-35 * ((*v4 + *(v0 - 4)) ^ 0x82)) ^ v3[v2[(-35 * ((*v4 + *(v0 - 4)) ^ 0x82))] ^ 0x9E]) + 3534)))(v13);
  v13[1] = (1037613739 * ((2 * (v13 & 0x32CAFF30) - v13 + 1295319244) ^ 0x9C372DB3)) ^ 0x86F54BA0;
  v9 = -35 * ((*v4 - *(v0 - 4)) ^ 0x82);
  (*(v8 + 8 * ((v9 ^ v7[v6[v9] ^ 0x30]) + 3580)))(v13);
  __asm { BRAA            X8, X17 }
}

void sub_1D492927C(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + 474467929 >= (v1 ^ 0x906) - 2697)
  {
    a1 = -a1;
  }

  *(v2 + 4) = a1 + v3;
}

uint64_t sub_1D49292A8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 32) + 1037613739 * ((((2 * a1) | 0x128F474A) - a1 + 1991793755) ^ 0x58458EDA) - 68671922;
  v6 = 1504884919 * ((&v8 & 0xA8C82ABE | ~(&v8 | 0xA8C82ABE)) ^ 0xACF4625A);
  v13 = v6 ^ (*(a1 + 32) + 1037613739 * ((((2 * a1) | 0x128F474A) - a1 + 1991793755) ^ 0x58458EDA) - 68670917);
  v8 = v6 + 1638077928;
  v10 = v2;
  v11 = v4;
  v9 = v3;
  result = (*(*(&off_1F5033D40 + v5) + v5 + 3779))(&v8);
  *(a1 + 16) = v12;
  return result;
}

void sub_1D4929428(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = 675097751 * ((a1 & 0x6D9F8479 | ~(a1 | 0x6D9F8479)) ^ 0xD1205E10);
  v2 = *(a1 + 4) + v1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56) + v1;
  v17 = 0x63B831A700000040;
  v18 = &v21;
  v9 = 0x63B831A700000082;
  v10 = &v22;
  v13 = 0x63B831A700000001;
  v14 = &v8;
  v11 = 0x63B831A700000082;
  v12 = &v19;
  v15 = 0x63B831A700000082;
  v16 = &v20;
  if (v3 | v4)
  {
    v6 = v5 == 765798730;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4929578@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7) - (v5 & (2 * *(v2 + v7))) - 126;
  return (*(v1 + 8 * (((v7 != 0) * v6) ^ v3)))(0);
}

uint64_t sub_1D4929B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * ((((2 * &a14) | 0x9BCAD0CE) - &a14 - 1306880103) ^ 0xEA54DF1);
  a15 = (v21 + 1421511947) ^ v22;
  a16 = v22 ^ 0xBBEAF7C9;
  a19 = &a11;
  a18 = v22 ^ 0xA33F4F7D;
  a14 = a10;
  v23 = (*(v20 + 8 * (v21 ^ 0xC6D)))(&a14);
  return (*(v20 + 8 * (((a17 == v19) * ((v21 + 136484164) & 0x9AD ^ (v21 + 4223) & 0x7FF ^ 0x7C0)) ^ v21)))(v23);
}

uint64_t sub_1D4929BE8(uint64_t a1, int a2, int a3)
{
  v7 = (v4 - 32);
  v8 = (v5 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * (((v3 == 32) * a3) ^ (a2 + 1531))))();
}

uint64_t sub_1D4929D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = 1785193651 * ((v31 - 128) ^ 0xF621A42C);
  *(v31 - 128) = &a20;
  *(v31 - 120) = v32 + v30 + 2585;
  *(v31 - 116) = a12 - v32 - 993557420;
  v33 = (*(v29 + 8 * (v30 ^ 0xEAF)))(v31 - 128);
  v34 = (((v30 - 8391809) & 0xEBE99DFF) + 1748558463 + (a29 & 0x3F ^ 0x3D243BB6)) ^ ((a29 & 0x3F ^ 0x6D1C6FCB) + 60432511) ^ ((a29 & 0x3F ^ 0x5038547D) + 1052646345);
  *(&a20 + v34 - 1854295990) = 2;
  return (*(v29 + 8 * ((1209 * (v34 - 1854296046 < 0xFFFFFFC8)) | v30)))(v33, v34 - 1854295989);
}

uint64_t sub_1D4929F8C()
{
  if (v1)
  {
    v4 = ((2 * v2) & 0xDCFB2BD6) + (v2 ^ 0xEE7D95EB) == -293759509;
  }

  else
  {
    v4 = 1;
  }

  v6 = !v4 && v0 != 0;
  return (*(v3 + 8 * ((8 * v6) | 0x297u)))();
}

uint64_t sub_1D4929FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t *a13, int a14)
{
  a13 = &a9;
  a12 = (v16 + 432) ^ (50899313 * ((((2 * &a12) | 0x79B07314) - &a12 - 1020803466) ^ 0x161313F0));
  v17 = (*(v14 + 8 * (v16 + 2277)))(&a12);
  return (*(v14 + 8 * (((a14 == v15) * ((((v16 - 1398) | 0x515) ^ 0x440) + ((v16 - 1985873719) & 0x765E09FB))) ^ v16)))(v17);
}

uint64_t sub_1D492A0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25)
{
  v27 = a19 + 770299589 + a23 - 3394;
  v28 = v27 < 0x2DE9D6C5;
  v29 = v27 > a16;
  if (a16 < 0x2DE9D6C5 != v28)
  {
    v29 = v28;
  }

  return (*(v25 + 8 * ((v29 | (16 * v29)) ^ (v26 + 847))))(a1, a2, a3, a4, a25);
}

uint64_t sub_1D492A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v21 = 675097751 * ((&a14 & 0x5224D796 | ~(&a14 | 0x5224D796)) ^ 0xEE9B0DFF);
  a14 = a10;
  a19 = &a13;
  a18 = v21 ^ 0xA33F4F7D;
  a15 = (v20 + 1421510312) ^ v21;
  a16 = v21 ^ 0xAD7AD96F;
  v22 = (*(v19 + 8 * (v20 ^ 0x6C2)))(&a14);
  return (*(v19 + 8 * ((42 * (a17 != (v20 ^ 0x2805824E) + v20 + 571)) ^ v20)))(v22);
}

uint64_t sub_1D492A208@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a56 + 392) = v65;
  *(a56 + 396) = STACK[0x27C];
  *(a56 + 400) = STACK[0x3F8];
  *(a56 + 408) = 1111656522 - v70 + a65 + v69 + 2080 - 2277;
  *(a56 + 416) = v68 + (v70 - 783852075);
  v71 = (*(v66 + a1 * v67 + 8))(a48, a56 + 392);
  return (*(a55 + 8 * ((335 * ((v71 ^ 0x7F9F95AF) - 1469710340 + ((2 * v71) & 0xFF3F2B5E) == v69 + 671454438)) ^ v69)))(0);
}

void sub_1D492A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1564307779 * ((v22 - 144) ^ 0x970DCC13);
  *(v22 - 120) = (v20 + a17 + 678860901) ^ v23;
  *(v22 - 144) = a19;
  *(v22 - 136) = v23 + v20 + 2760;
  *(v22 - 128) = v21;
  (*(v19 + 8 * (v20 ^ 0xF2F)))(v22 - 144);
  JUMPOUT(0x1D48CCA4CLL);
}

uint64_t sub_1D492AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * (((&a14 | 0xA459EEFE) - &a14 + (&a14 & 0x5BA61100)) ^ 0x8E92C484)) ^ 0x72E;
  a15 = &a10;
  v19 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * (((a16 == ((v17 - 1044) ^ 0x43C)) * ((v18 ^ 0x6C325B27) - 1815238396)) ^ v18)))(v19);
}

uint64_t sub_1D492AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  (*(v65 + 8 * (v62 ^ 0x9BF)))(*a29, v63, 2048);
  v66 = *(a62 + 8 * ((((*(a62 + 8 * (v62 ^ 0x9F7)))(*a29, &STACK[0x328], (LODWORD(STACK[0x458]) + v64), 1) == 0) * ((((v62 + 1562883776) & 0xA2D847DE) - 1257) ^ 0x57)) ^ v62));
  return v66();
}

uint64_t sub_1D492ABB4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v6 = a1;
  *v7 = v2;
  v4 = 169 * ((a2 - 209) ^ 0x10A);
  v10 = a2 - 209 - 143681137 * (((&v10 | 0xFE401387) - (&v10 & 0xFE401387)) ^ 0x18E8BF97) + 1964;
  v11 = v8;
  (*(v3 + 8 * (a2 + 3207)))(&v10);
  v11 = v9;
  v10 = v4 - 143681137 * (&v10 ^ 0xE6A8AC10) + 1890;
  (*(v3 + 8 * (v4 + 3342)))(&v10);
  return 0;
}

uint64_t sub_1D492AC3C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  a7 = (v10 + 1326) ^ ((((&a4 | 0x5A9EFE03) - &a4 + (&a4 & 0xA56101F8)) ^ 0x6D3AA86) * v8);
  a4 = a3;
  a6 = a1;
  v11 = (*(v9 + 8 * (v10 + 2991)))(&a4);
  return (*(v9 + 8 * (((a5 == v7) * (2 * (v10 + 705) - 2816)) ^ v10)))(v11);
}

uint64_t sub_1D492ACD0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v4 - 1472139878) & 0x251CAE57 ^ 0x756)) ^ (v2 + v4 + 993))))();
}

uint64_t sub_1D492AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v67 = a9 - 1;
  v70 = &v67[6 * (a9 - 566983246)];
  v71 = v70[2];
  STACK[0x358] = *(v70 + 2);
  v72 = *(v65 + (v71 - 1644803956) * v66 + 36);
  LODWORD(STACK[0x248]) = v72;
  return (*(v69 + 8 * ((2292 * (v72 == v68 + ((v64 - 1650801587) & 0x62653FE5) - 810 - 1178)) ^ v64)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

void sub_1D492AFBC(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = a1 - 1;
  *v23 = ((((a12 - v24) | (v24 - a12)) >> 31) ^ 0x7FFFFFFF) + ((((v24 + 2638) | 0x410) - 3677) ^ v24);
  (*(v22 + 8 * (v24 ^ 0xE73)))(a22);
  JUMPOUT(0x1D492B034);
}

uint64_t sub_1D492B054(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v9 = (v8 + 4 * v4);
  v10 = v4 + 2;
  v11 = v9[1];
  v12 = v5 & 0x80000000;
  v13 = *(v8 + 4 * v10);
  v14 = v13 & 0x7FFFFFFE | v11 & 0x80000000;
  v15 = v9[397] ^ ((v11 & (a2 + v6 - 1665 + 332) | v12) >> 1) ^ *(a3 + 4 * (v11 & 1));
  v16 = v9[398] ^ (v14 >> 1) ^ *(a3 + 4 * (v13 & 1));
  *v9 = v15;
  v9[1] = v16;
  return (*(v7 + 8 * (((v10 == 226) * a4) ^ (v6 - 2069))))();
}

uint64_t sub_1D492B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v9 - 5;
  v12 = (((v11 - 1071) - 942) ^ v8) + v7;
  *(a6 - 7 + v12) = *(v6 - 7 + v12);
  return (*(v10 + 8 * ((61 * ((v7 & 0xFFFFFFF8) - 8 != v8)) ^ v11)))();
}

uint64_t sub_1D492B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7, int a8)
{
  v14 = (v9 ^ 0x8052E343) + v11;
  *(v12 + 4 * v13) = v14 + v9 - ((v14 << (((a8 + 90) ^ a5) - 126)) & v10);
  return (*(v8 + 8 * (((HIDWORD(v14) != 0) * a6) ^ a8)))();
}

uint64_t sub_1D492B334(uint64_t a1)
{
  v7 = *(v3 + v1 - 16);
  v8 = (v3 + a1 - 16);
  *(v8 - 1) = *(v3 + v1 - 32);
  *v8 = v7;
  return (*(v6 + 8 * ((2544 * ((v5 + 804) - (v3 & 0xFFFFFFE0) == 2249)) ^ (v2 + v4 + 1150))))();
}

uint64_t sub_1D492B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 + 462) ^ (843532609 * (((&a15 | 0x4C3744CB) - (&a15 & 0x4C3744CB)) ^ 0x107A104E));
  a17 = &a13;
  a15 = a11;
  (*(v19 + 8 * (v18 + 2127)))(&a15);
  LODWORD(a15) = (v18 + 209) ^ (1504884919 * ((&a15 & 0x8F35A592 | ~(&a15 | 0x8F35A592)) ^ 0x8B09ED76));
  a16 = a11;
  v21 = (*(v19 + 8 * (v18 + 2135)))(&a15);
  return (*(v19 + 8 * (((HIDWORD(a15) == v20) * ((v18 - 502) ^ 0x45B)) ^ v18)))(v21);
}

uint64_t sub_1D492B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, uint64_t a19)
{
  v22 = v19 & 0xF132BCBD;
  a17 = (v22 + 1659) ^ (1504884919 * (&a17 ^ 0xFBC3B71B));
  a19 = a13;
  v23 = (*(v21 + 8 * (v22 | 0xE01)))(&a17);
  return (*(v21 + 8 * (((a18 == v20 + ((v22 + 24) | 8) - 168) * ((v22 + 2386) ^ 0xD51)) ^ v22)))(v23);
}

uint64_t sub_1D492B520(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, unsigned int a11, int a12)
{
  v17 = *a1 - v15 + *(v12 + 16) - 1487458206;
  v18 = 742307843 * ((((2 * &a9) | 0x4EA6E986) - &a9 + 1487702845) ^ 0xB971F996);
  a10 = v12;
  a9 = v16 - v18 - 122;
  a11 = 406027868 - v18;
  a12 = (((v16 - 1065) | 0xA11) ^ 0xA528363) + v18 + v17;
  v19 = (*(v14 + 8 * (v16 + 2558)))(&a9);
  return (*(v14 + 8 * ((955 * (*(v12 + 24) == v13)) ^ v16)))(v19);
}

void sub_1D492B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = 1785193651 * ((v16 - 144) ^ 0xF621A42C);
  *(v13 + 24) = v15;
  *(v13 + 8) = a11;
  *(v16 - 144) = (v14 + 655) ^ v17;
  *(v16 - 140) = (((v14 + 304) ^ 0xE788A6D6) + v11) ^ v17;
  (*(v12 + 8 * (v14 + 2280)))(v16 - 144);
  JUMPOUT(0x1D4904E64);
}

uint64_t sub_1D492B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((&a14 & 0xD9BA761C | ~(&a14 | 0xD9BA761C)) ^ 0xC8EA399)) ^ 0x72E;
  a15 = &a11;
  v18 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((1691 * (a16 == v17)) ^ 0x6Cu)))(v18);
}

void sub_1D492B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v13 = ((v10 & (v11 + 526)) << ((-89 * (v12 ^ 0xCA)) ^ 0x90)) & (v10 ^ 0xCFE30F10) ^ v10 & (v11 + 526);
  v14 = ((2 * (v10 ^ 0x57A60014)) ^ 0x708B5F2C) & (v10 ^ 0x57A60014) ^ (2 * (v10 ^ 0x57A60014)) & 0xB845AF96;
  v15 = (v14 ^ 0x30410E82) & (4 * v13) ^ v13;
  v16 = ((4 * (v14 ^ 0x8844A092)) ^ 0xE116BE58) & (v14 ^ 0x8844A092) ^ (4 * (v14 ^ 0x8844A092)) & 0xB845AF94;
  v17 = (v16 ^ 0xA004AE06) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x18410186)) ^ 0x845AF960) & (v16 ^ 0x18410186) ^ (16 * (v16 ^ 0x18410186)) & 0xB845AF90;
  v19 = v17 ^ 0xB845AF96 ^ (v18 ^ 0x8040A996) & (v17 << 8);
  v20 = v10 ^ (2 * ((v19 << 16) & 0x38450000 ^ v19 ^ ((v19 << 16) ^ 0x2F960000) & (((v18 ^ 0x38050696) << 8) & 0x38450000 ^ 0x38400000 ^ (((v18 ^ 0x38050696) << 8) ^ 0x45AF0000) & (v18 ^ 0x38050696))));
  *a9 = (HIBYTE(v20) ^ 0xCF) - ((2 * (HIBYTE(v20) ^ 0xCF)) & 4) - 126;
  a9[1] = (BYTE2(v20) ^ 0x60) - ((v20 >> 15) & 4) - 126;
  a9[2] = (BYTE1(v20) ^ 0xF0) - ((v20 >> 7) & 4) - 126;
  a9[3] = v20 ^ 0x2C;
  v21 = v9 - ((2 * v9) & 0xB971B94BDE8C6CD6) - 0x2347235A10B9C995;
  a9[4] = (HIBYTE(v21) ^ 0xDC) - ((2 * HIBYTE(v21)) & 4) - 126;
  a9[5] = (BYTE6(v21) ^ 0xB8) - ((2 * BYTE6(v21)) & 4) - 126;
  a9[6] = (BYTE5(v21) ^ 0xDC) - ((2 * BYTE5(v21)) & 4) - 126;
  a9[7] = (BYTE4(v21) ^ 0xA5) + (~(2 * BYTE4(v21)) | 0xFB) - 125;
  a9[8] = (((v9 - ((2 * v9) & 0xDE8C6CD6) - 280611221) >> 24) ^ 0xEF) - ((2 * (((v9 - ((2 * v9) & 0xDE8C6CD6) - 280611221) >> 24) ^ 0xEF)) & 4) - 126;
  a9[9] = (BYTE2(v21) ^ 0x46) - 2 * ((BYTE2(v21) ^ 0x46) & 0xA ^ BYTE2(v21) & 8) - 126;
  a9[10] = (BYTE1(v21) ^ 0x36) - 2 * ((BYTE1(v21) ^ 0x36) & 0xA ^ BYTE1(v21) & 8) - 126;
  a9[11] = (v9 - ((2 * v9) & 0xD6) + 107) ^ 0xE9;
  JUMPOUT(0x1D490949CLL);
}

void sub_1D492BA54()
{
  *(v0 + 52) = *(v0 + 52) + 743 * (v1 ^ 0x2CE) - 1485;
  LODWORD(STACK[0x2AC]) = *(v0 + 360);
  JUMPOUT(0x1D492BA84);
}

void sub_1D492BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = STACK[0x3A8];
  v66 = 843532609 * ((v63 + 1700998727 - 2 * ((v63 - 192) & 0x65632F07)) ^ 0x392E7B82);
  *(v63 - 180) = 276443307 - v66;
  *(v63 - 176) = v62 - 875954136 + v66 + 28;
  *(v63 - 192) = v65;
  (*(v64 + 8 * (v62 + 3654)))(v63 - 192);
  STACK[0x230] = *(a62 + 8 * v62);
  JUMPOUT(0x1D4936054);
}

uint64_t sub_1D492BBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, unsigned int a23, char *a24)
{
  v26 = 675097751 * ((&a19 - 1539687304 - 2 * (&a19 & 0xA43A3C78)) ^ 0xE77A19EE);
  a23 = v26 ^ 0xA33F4F7D;
  a19 = a15;
  a24 = &a16;
  a20 = (v24 + 1421510572) ^ v26;
  a21 = v26 ^ 0x1A34400;
  v27 = (*(v25 + 8 * (v24 ^ 0x9CE)))(&a19);
  return (*(v25 + 8 * (((a22 == ((v24 - 1002) ^ 0x28059600)) * ((201 * (v24 ^ 0x797)) ^ 0xA99)) ^ v24)))(v27);
}

uint64_t sub_1D492C098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v63 = STACK[0x2E0];
  v64 = *(STACK[0x2E0] + 96);
  if (v64 == 2)
  {
    return (*(v62 + 8 * ((122 * (*(v63 + 92) != a62 - 1486)) ^ (a62 + 1496))))(a1, a36, 1435615281, 3246, 3638287854, 173, a7, 99);
  }

  if (v64 == 1)
  {
    return (*(v62 + 8 * ((77 * (((*(v63 + 92) == 0) ^ (a62 - 115)) & 1)) ^ (a62 + 709))))(2787883, a36, 4289391528, 193, 3638287854, 173, 4292179413, 99);
  }

  STACK[0x298] = 91;
  *(v63 + 91) = (&STACK[0x298] ^ 0xBA) * (&STACK[0x298] + 17);
  return (*(v62 + 8 * ((3920 * (STACK[0x298] == 0)) ^ (a62 - 47))))(2787883, a36, 4289391528, 193, 3638287854, 173, 4292179413, 99);
}

uint64_t sub_1D492C37C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, unsigned int a36, uint64_t a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50)
{
  v58 = (*(v56 - 116) + 836) | 0xD2;
  v59 = v50 + 16;
  v60 = (v58 + 506107653) & 0xE1D56762;
  *(v56 - 124) = 0;
  *(v56 - 120) = v60;
  v61 = v60 ^ 0x76F | v59;
  v62 = (v57 + v59);
  v63 = v62[9] ^ 0xD2;
  v64 = *(a16 + (*(v57 + v61) ^ 0x90)) ^ 0xE5;
  *(v56 - 116) = (v58 + 830292978) & 0xCE82B7F7;
  LODWORD(v63) = (*(a37 + (v62[11] ^ 9)) ^ 7 | ((*(a16 + v63) ^ 0x73) << 16) | ((v62[10] ^ 0xC2 ^ *(a15 + (v62[10] ^ 0xA9))) << 8) | (((*(a14 + (v62[8] ^ 2)) + 27) ^ 0xE2) << 24)) ^ v55 ^ 0xD76B5593;
  v65 = (((v62[6] ^ 0x19 ^ *(a15 + (v62[6] ^ 8))) << 8) | (((*(a14 + (v62[4] ^ 0xC5)) + 27) ^ 0xFFFFFFFB) << 24) | *(a37 + (v62[7] ^ 0xFDLL)) | ((*(a16 + (v62[5] ^ 0xF5)) ^ 0x51) << 16)) ^ v51 ^ v58 ^ 0xADD39FFB;
  v66 = (*(a37 + (v62[15] ^ 8)) + (v64 << ((v58 - 14) & 0xF7 ^ 0xF4)) + (((*(a14 + (v62[12] ^ 0x80)) + 27) ^ 0x31) << 24) + ((v62[14] ^ 0x99 ^ *(a15 + (v62[14] ^ 5))) << 8)) ^ v52 ^ 0x41A20ECF;
  v67 = (*(a37 + (v62[3] ^ 0x75)) ^ 0xAD | (((*(a14 + (*v62 ^ 0xB0)) + 27) ^ 0x16) << 24) | ((*(a16 + (v62[1] ^ 0x93)) ^ 0x9B) << 16) | ((v62[2] ^ 0x5D ^ *(a15 + (v62[2] ^ 0x1CLL))) << 8)) ^ a4 ^ 0x425E7458;
  v68 = a35 ^ (v65 - ((2 * v65) & 0x13E3BC2A) + 166845973);
  v69 = a34 ^ (v67 - ((2 * v67) & 0x74A1A188) - 1169108796);
  v70 = a33 ^ (v66 - ((2 * v66) & 0x13A2AFA2) - 1982769199);
  LODWORD(v63) = a32 ^ (v63 - ((2 * v63) & 0x6DBC6998) - 1226951476);
  v71 = *(a6 + 8 * (v58 - 2193)) - 4;
  v72 = *(v71 + 4 * ((a35 ^ (v65 - ((2 * v65) & 0xBC2A) - 8683)) >> 8));
  v73 = *(a6 + 8 * (v58 - 2180)) - 12;
  v74 = *(a6 + 8 * (v58 ^ 0x885)) - 8;
  v75 = v72 ^ *(v73 + 4 * BYTE2(v69));
  v76 = *(&off_1F5033D40 + v58 - 2136) - 4;
  v77 = *&v76[4 * v70] + v54;
  v78 = *(v74 + 4 * HIBYTE(v70)) ^ v75 ^ (*&v76[4 * v63] + v54);
  v79 = *(v71 + 4 * BYTE1(v69)) ^ *(v74 + 4 * BYTE3(v63)) ^ (*&v76[4 * v68] + v54) ^ *(v73 + 4 * BYTE2(v70));
  v80 = *(v74 + 4 * HIBYTE(v68)) ^ *(v73 + 4 * BYTE2(v63)) ^ (*&v76[4 * v69] + v54) ^ *(v71 + 4 * BYTE1(v70));
  LODWORD(v63) = *(v73 + 4 * BYTE2(v68)) ^ *(v74 + 4 * HIBYTE(v69)) ^ *(v71 + 4 * BYTE1(v63)) ^ v77;
  v81 = (v63 - ((2 * v63) & 0x703822EE) + 941363575) ^ *(v56 - 148);
  v82 = (v79 - ((2 * v79) & 0xE67F75C) - 2026636370) ^ *(v56 - 156);
  v83 = (v80 - ((2 * v80) & 0x63DB9EC4) + 837668706) ^ *(v56 - 152);
  v84 = v83 ^ 0xBF80DD5E;
  LODWORD(v63) = a31 ^ (v78 - ((2 * v78) & 0x31570056) - 1733590997);
  v85 = (*&v76[4 * (v83 ^ 0x48)] + v54) ^ *(v74 + 4 * ((v82 ^ 0x16B10DD4u) >> 24)) ^ *(v71 + 4 * ((v81 ^ 0x4CCB) >> 8)) ^ *(v73 + 4 * BYTE2(v63));
  v86 = *(v73 + 4 * ((v81 ^ 0xD7674CCB) >> 16)) ^ *(v74 + 4 * BYTE3(v63)) ^ *(v71 + 4 * BYTE1(v84));
  LODWORD(v63) = (*&v76[4 * (v81 ^ 0xDD)] + v54) ^ *(v71 + 4 * BYTE1(v63)) ^ *(v74 + 4 * HIBYTE(v84)) ^ *(v73 + 4 * ((v82 ^ 0x16B10DD4u) >> 16));
  v87 = v86 ^ (*&v76[4 * (((v79 - ((2 * v79) & 0x5C) - 82) ^ *(v56 - 156)) ^ 0xC2)] + v54);
  v88 = (v85 + 2108261559 + (~(2 * v85) | 0x4ACF693)) ^ *(v56 - 160);
  LODWORD(v89) = __ROR4__((*&v76[4 * (a31 ^ (v78 - ((2 * v78) & 0x56) + 43))] + v54) ^ *(v71 + 4 * ((v82 ^ 0xDD4) >> 8)) ^ *(v74 + 4 * ((v81 ^ 0xD7674CCB) >> 24)) ^ *(v73 + 4 * BYTE2(v84)) ^ 0xB9AB301, 5) ^ 0x50D2ECF9;
  HIDWORD(v89) = v89;
  v90 = ((v89 >> 27) - ((2 * (v89 >> 27)) & 0x96EF60F4) - 881348486) ^ *(v56 - 168);
  v91 = (v87 - ((2 * v87) & 0x83101E4) - 2078768910) ^ *(v56 - 164);
  LODWORD(v63) = a30 ^ (v63 - ((2 * v63) & 0xF534FE30) - 90538216);
  v92 = (v90 ^ 0x6EDAF696u) >> 24;
  v93 = (*&v76[4 * (v88 ^ 0x37)] + v54) ^ *(v71 + 4 * BYTE1(v63));
  v94 = (v88 ^ 0xD62C0A37) >> 24;
  v95 = *(v71 + 4 * ((v88 ^ 0xA37) >> 8)) ^ *(v73 + 4 * BYTE2(v63));
  v96 = *(v73 + 4 * (BYTE2(v88) ^ 0xB3u)) ^ *(v74 + 4 * BYTE3(v63));
  v97 = *(v71 + 4 * ((v90 ^ 0xF696) >> 8));
  v98 = v93 ^ *(v74 + 4 * ((v91 ^ 0xFC47C039) >> 24)) ^ *(v73 + 4 * (BYTE2(v90) ^ 0x45u));
  LODWORD(v63) = *(v74 + 4 * v94) ^ *(v73 + 4 * ((v91 ^ 0xFC47C039) >> 16)) ^ (*&v76[4 * v63] + v54) ^ v97;
  v99 = v95 ^ (*&v76[4 * (v91 ^ 0x39)] + v54) ^ *(v74 + 4 * v92);
  v100 = (v63 - ((2 * v63) & 0x48AB66A) + 38099765) ^ *(v56 - 180);
  v101 = a29 ^ (v98 - ((2 * v98) & 0xCBBB78E) - 2040669241);
  LODWORD(v63) = (v99 - ((2 * v99) & 0xCC2396FC) + 1712442238) ^ *(v56 - 172);
  v102 = v96 ^ *(v71 + 4 * (BYTE1(v91) ^ 0x87u)) ^ (*&v76[4 * ((((v89 >> 27) - ((2 * (v89 >> 27)) & 0xF4) + 122) ^ *(v56 - 168)) ^ 0x96)] + v54);
  v103 = (v102 - ((2 * v102) & 0x391768CC) - 1668565914) ^ *(v56 - 176);
  BYTE2(v98) = BYTE2(v103) ^ 0x65;
  v104 = (*&v76[4 * (v103 ^ 0x28)] + v54) ^ *(v74 + 4 * ((v100 ^ 0x7F82DAABu) >> 24)) ^ *(v71 + 4 * ((((v99 - ((2 * v99) & 0x96FC) - 13442) ^ *(v56 - 172) ^ 0x35DF) >> 8) ^ 0x79u)) ^ *(v73 + 4 * BYTE2(v101));
  v105 = *(v71 + 4 * BYTE1(v101)) ^ *(v73 + 4 * ((v100 ^ 0x7F82DAABu) >> 16)) ^ *(v74 + 4 * ((v103 ^ 0x7D650C28u) >> 24)) ^ (*&v76[4 * (v63 ^ 0xDD)] + v54);
  v106 = *(v73 + 4 * (((v63 ^ 0x13FC35DF) >> 16) ^ 0x9Bu)) ^ *(v71 + 4 * (BYTE1(v103) ^ 0x4Bu)) ^ *(v74 + 4 * HIBYTE(v101)) ^ (*&v76[4 * (v100 ^ 0xBD)] + v54);
  v107 = (v105 - ((2 * v105) & 0x1E34E49A) - 1894092211) ^ *(v56 - 184);
  LODWORD(v63) = *(v74 + 4 * (BYTE3(v63) ^ 0xBD)) ^ (*&v76[4 * v101] + v54) ^ *(v73 + 4 * BYTE2(v98)) ^ *(v71 + 4 * ((v100 ^ 0xDAAB) >> 8));
  v108 = (v104 - ((2 * v104) & 0x675670AA) + 866859093) ^ *(v56 - 188);
  v109 = (v106 - ((2 * v106) & 0x3DE62E2E) + 519247639) ^ *(v56 - 192);
  LOBYTE(v100) = v109 ^ 0x71;
  v110 = a28 ^ (v63 - ((2 * v63) & 0x23D85342) - 1846793823);
  LODWORD(v63) = HIBYTE(v110);
  v111 = *(v74 + 4 * ((v109 ^ 0xC1386071) >> 24));
  v112 = (*&v76[4 * v110] + v54) ^ *(v71 + 4 * ((v109 ^ 0x6071) >> 8)) ^ *(v74 + 4 * ((v107 ^ 0x66654B3Eu) >> 24));
  v113 = *(v73 + 4 * ((v107 ^ 0x66654B3Eu) >> 16));
  v114 = *(v71 + 4 * BYTE1(v110)) ^ *(v73 + 4 * (BYTE2(v109) ^ 0xA7u)) ^ (*&v76[4 * (v107 ^ 0x28)] + v54);
  v115 = v111 ^ *(v71 + 4 * ((v107 ^ 0x4B3E) >> 8)) ^ 0xCB7D59C5;
  v116 = *(v73 + 4 * BYTE2(v110)) ^ 0xC0E7EAC4;
  v117 = v114 ^ *(v74 + 4 * ((v108 ^ 0xA480DD5E) >> 24));
  v118 = (v116 + v115 - 2 * (v116 & v115)) ^ (*&v76[4 * (v108 ^ 0x48)] + v54);
  LODWORD(v63) = (*&v76[4 * v100] + v54) ^ v113 ^ *(v74 + 4 * v63) ^ *(v71 + 4 * ((v108 ^ 0xDD5E) >> 8));
  v119 = v112 ^ *(v73 + 4 * ((v108 ^ 0xA480DD5E) >> 16));
  v120 = (v118 - ((2 * v118) & 0x8AEEEDF2) + 1165457145) ^ a50;
  v121 = (v117 - ((2 * v117) & 0x3A8DCF90) - 1656297528) ^ a48;
  v122 = (v63 - ((2 * v63) & 0xDCEF5086) + 1853335619) ^ *(v56 - 196);
  v123 = a27 ^ (v119 - ((2 * v119) & 0xBF339646) + 1603914531);
  LODWORD(v63) = HIBYTE(v122) ^ 0x5F;
  v124 = *(v73 + 4 * (BYTE2(v122) ^ 0x67u)) ^ (*&v76[4 * (v121 ^ 0x6E)] + v54);
  v125 = (*&v76[4 * (v122 ^ 0xDD)] + v54) ^ *(v74 + 4 * HIBYTE(v123)) ^ *(v73 + 4 * (((v121 ^ 0xD0C9FB6E) >> 16) ^ 0x9Fu));
  v126 = *(v73 + 4 * (BYTE2(v120) ^ 0xEEu));
  v127 = *(v74 + 4 * ((v121 ^ 0xD0C9FB6E) >> 24)) ^ (*&v76[4 * (a27 ^ (v119 - ((2 * v119) & 0x46) + 35))] + v54) ^ *(v71 + 4 * (BYTE1(v122) ^ 0x4Cu));
  v128 = v125 ^ *(v71 + 4 * (BYTE1(v120) ^ 0xC3u));
  LODWORD(v63) = *(v73 + 4 * BYTE2(v123)) ^ *(v74 + 4 * v63) ^ *(v71 + 4 * (BYTE1(v121) ^ 0xBCu)) ^ (*&v76[4 * (v120 ^ 0x7E)] + v54);
  v129 = v124 ^ *(v71 + 4 * ((a27 ^ (v119 - ((2 * v119) & 0x9646) - 13533)) >> 8)) ^ *(v74 + 4 * (HIBYTE(v120) ^ 0x30));
  v130 = ((v126 ^ v127) - ((2 * (v126 ^ v127)) & 0x8A87942A) - 985413099) ^ a47;
  v131 = (v129 - ((2 * v129) & 0xEAFE8E18) + 1971275532) ^ a46;
  LODWORD(v63) = (v63 - ((2 * v63) & 0x46E1CC40) + 594601504) ^ a49;
  v132 = a26 ^ (v128 - ((2 * v128) & 0xE93B586) + 122280643);
  v133 = *(v71 + 4 * ((v63 ^ 0xDAAB) >> 8)) ^ (*&v76[4 * v132] + v54) ^ *(v73 + 4 * ((v131 ^ 0xBFC6B6DB) >> 16)) ^ *(v74 + 4 * (HIBYTE(v130) ^ 0xA6));
  v134 = *(v71 + 4 * (BYTE1(v130) ^ 0x2Au));
  v135 = *(v71 + 4 * BYTE1(v132)) ^ *(v74 + 4 * ((v131 ^ 0xBFC6B6DB) >> 24)) ^ (*&v76[4 * (v130 ^ 0xE)] + v54);
  v136 = *(v74 + 4 * HIBYTE(v132)) ^ *(v71 + 4 * ((v131 ^ 0xB6DB) >> 8)) ^ *(v73 + 4 * (BYTE2(v130) ^ 0xB3u));
  v137 = v135 ^ *(v73 + 4 * ((v63 ^ 0x2982DAAB) >> 16));
  v138 = *(v74 + 4 * ((v63 ^ 0x2982DAAB) >> 24)) ^ v134 ^ *(v73 + 4 * BYTE2(v132)) ^ (*&v76[4 * (v131 ^ 0xCD)] + v54);
  v139 = v136 ^ (*&v76[4 * (v63 ^ 0xBD)] + v54);
  v140 = (v137 - ((2 * v137) & 0x40D55752) + 543861673) ^ a45;
  LODWORD(v63) = a25 ^ (v138 - ((2 * v138) & 0x6BE6E262) + 905146673);
  v141 = a23 ^ (v133 - ((2 * v133) & 0x3B8B08E4) - 1647999886);
  v142 = BYTE3(v63);
  v143 = a24 ^ (v139 - ((2 * v139) & 0x5B9B6B0E) - 1379027577);
  v144 = (*&v76[4 * (a23 ^ (v133 - ((2 * v133) & 0xE4) + 114))] + v54) ^ *(v73 + 4 * BYTE2(v63)) ^ *(v71 + 4 * BYTE1(v143)) ^ *(v74 + 4 * ((v140 ^ 0x44E9778Au) >> 24));
  v145 = *(v74 + 4 * HIBYTE(v143)) ^ *(v73 + 4 * BYTE2(v141)) ^ *(v71 + 4 * ((v140 ^ 0x778A) >> 8)) ^ (*&v76[4 * v63] + v54);
  LODWORD(v63) = *(v71 + 4 * BYTE1(v63)) ^ *(v74 + 4 * HIBYTE(v141)) ^ *(v73 + 4 * (BYTE2(v140) ^ 0x76u)) ^ (*&v76[4 * (v143 ^ 0x16)] + v54);
  LODWORD(v63) = a22 ^ (v63 - ((2 * v63) & 0x91271D78) - 929853764);
  v146 = *(v74 + 4 * v142) ^ *(v73 + 4 * BYTE2(v143)) ^ *(v71 + 4 * BYTE1(v141)) ^ (*&v76[4 * (v140 ^ 0x8A)] + v54);
  v147 = (v145 - 1894667655 - ((2 * v145) & 0x1E2354F2)) ^ a44;
  v148 = (v144 - ((2 * v144) & 0x657D0B44) + 851346850) ^ a43;
  v149 = a21 ^ (v146 - ((2 * v146) & 0x45B83FFC) + 584851454);
  LODWORD(v63) = a17 ^ (v63 - 1894667655 - ((2 * v63) & 0x1E2354F2));
  v150 = *(v74 + 4 * ((v148 ^ 0x4BE2758u) >> 24));
  v151 = *(v56 - 136);
  v152 = *(v71 + 4 * (((v144 - ((2 * v144) & 0xB44) - 31326) ^ a43 ^ 0x2758) >> 8)) ^ (*&v76[4 * v149] + v54) ^ *(v74 + 4 * (HIBYTE(v147) ^ 0xEF)) ^ *(v73 + 4 * BYTE2(v63));
  v153 = (*&v76[4 * (((v144 - ((2 * v144) & 0x44) - 94) ^ a43) ^ 0x58)] + v54) ^ *(v74 + 4 * HIBYTE(v149));
  v154 = *(v73 + 4 * (BYTE2(v148) ^ 0x21u)) ^ (*&v76[4 * (v147 ^ 0x49)] + v54) ^ *(v71 + 4 * BYTE1(v149)) ^ *(v74 + 4 * BYTE3(v63));
  v155 = *(v71 + 4 * (BYTE1(v147) ^ 0xEBu)) ^ v150 ^ *(v73 + 4 * BYTE2(v149)) ^ (*&v76[4 * v63] + v54);
  LODWORD(v74) = (v155 - 780025079 - ((2 * v155) & 0xA3038612)) ^ a40;
  v156 = v153 ^ *(v73 + 4 * (BYTE2(v147) ^ 3u)) ^ *(v71 + 4 * BYTE1(v63));
  LODWORD(v63) = (v154 - ((2 * v154) & 0x5ECE2072) - 1352200135) ^ a41;
  LODWORD(v71) = (v156 - ((2 * v156) & 0x6E5C34B2) + 925768281) ^ a42;
  v157 = (v152 - ((2 * v152) & 0xDC760F56) - 298121301) ^ a20;
  v158 = v157 ^ 0xEB9A8B8D;
  v159 = *(&off_1F5033D40 + v58 - 2219) - 8;
  v160 = *(&off_1F5033D40 + (v58 ^ 0x86F)) - 4;
  v161 = *&v159[4 * (((v152 - ((2 * v152) & 0x56) - 85) ^ a20) ^ 0x8C)] + v53;
  v162 = *(&off_1F5033D40 + v58 - 2176) - 12;
  v163 = *(&off_1F5033D40 + v58 - 2246) - 4;
  v164 = (1909043885 * *&v162[4 * (BYTE3(v71) ^ 0xDF)]) ^ __ROR4__(*&v163[4 * (((v154 - ((2 * v154) & 0x2072) + 4153) ^ a41 ^ 0xFAB5) >> 8)], 28);
  v165 = *&v159[4 * (v63 ^ 0xB5)] + v53;
  v166 = (1909043885 * *&v162[4 * (HIBYTE(v157) ^ 0x84)]) ^ *&v160[4 * ((v63 ^ 0x422CFAB5) >> 16)] ^ __ROR4__(*&v163[4 * ((v74 ^ 0xF016) >> 8)], 28);
  LODWORD(v63) = *&v160[4 * ((v74 ^ 0xF6BCF016) >> 16)] ^ v161 ^ (1909043885 * *&v162[4 * (BYTE3(v63) ^ 0x2D)]);
  LODWORD(v71) = v71 ^ 0xB0693C07;
  v167 = v164 ^ (*&v159[4 * (v74 ^ 0x16)] + v53) ^ *&v160[4 * BYTE2(v158)];
  v168 = v166 ^ (*&v159[4 * v71] + v53);
  LODWORD(v89) = __ROR4__(*&v163[4 * BYTE1(v71)], 28);
  v169 = v165 ^ __ROR4__(*&v163[4 * BYTE1(v158)], 28) ^ *&v160[4 * (BYTE2(v71) ^ 0xF7)] ^ (1909043885 * *&v162[4 * (BYTE3(v74) ^ 0x99)]);
  LODWORD(v71) = (v167 - ((2 * v167) & 0x4C9ABE14) + 642604810) ^ a39;
  LODWORD(v74) = (v168 - ((2 * v168) & 0x8AD0E1D0) - 983011096) ^ a19;
  LODWORD(v163) = ((v63 ^ v89) - 834108814 - ((2 * (v63 ^ v89)) & 0x9C9104E4)) ^ a18;
  v170 = (v169 - 834108814 - ((2 * v169) & 0x9C9104E4)) ^ a18;
  v171 = *(&off_1F5033D40 + v58 - 2280);
  LODWORD(v162) = (v170 - 780025079 - ((2 * v170) & 0xA3038612)) ^ a40;
  v62[10] = *(v171 + (BYTE1(v163) ^ 0x79)) ^ 0x7D;
  v172 = *(&off_1F5033D40 + (v58 ^ 0x831)) - 4;
  *(v151 + v61) = v172[BYTE2(v162) ^ 0xF0] ^ 0x63;
  v173 = *(&off_1F5033D40 + (v58 ^ 0x897)) - 12;
  v62[15] = (v173[((v170 + 9 - ((2 * v170) & 0x12)) ^ a40) ^ 0x45] - 30) ^ 0x8F;
  v62[6] = *(v171 + (BYTE1(v74) ^ 0x1BLL)) ^ 0x81;
  v62[1] = v172[BYTE2(v71) ^ 0x3ELL] ^ 5;
  v174 = *(&off_1F5033D40 + (v58 ^ 0x82E)) - 12;
  v62[12] = v174[(v162 >> 24) ^ 0x41] ^ 0x1F;
  v62[8] = v174[(v163 >> 24) ^ 0xB6] ^ 0xD9;
  v62[3] = (v173[((v167 - ((2 * v167) & 0x14) + 10) ^ a39) ^ 0xDFLL] - 30) ^ 0x17;
  v62[14] = *(v171 + (BYTE1(v162) ^ 0x5ELL)) ^ 0xC0;
  v62[11] = (v173[(((v63 ^ v89) + 114 - ((2 * (v63 ^ v89)) & 0xE4)) ^ a18) ^ 0x54] - 30) ^ 0x67;
  v62[2] = *(v171 + (BYTE1(v71) ^ 0x13)) ^ 0x8D;
  v62[7] = (v173[v74 ^ 0xDELL] - 30) ^ 0x84;
  v62[5] = v172[BYTE2(v74) ^ 0x7ALL] ^ 0xC2;
  *v62 = v174[BYTE3(v71) ^ 0xB5] ^ 0x39;
  v62[9] = v172[BYTE2(v163) ^ 0x6FLL] ^ 0xB0;
  v62[4] = v174[BYTE3(v74) ^ 0x49] ^ 0x4D;
  v175 = v59 + 857589596 < a36;
  if (a36 < 0x331DC74C != v59 + 857589596 < 0x331DC74C)
  {
    v175 = a36 < 0x331DC74C;
  }

  return (*(*(v56 - 144) + 8 * ((940 * v175) ^ v58)))();
}

uint64_t sub_1D492C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, unsigned int a18, char *a19, int a20)
{
  a19 = &a15;
  a18 = (50899313 * ((((&a18 | 0x1B44A358) ^ 0xFFFFFFFE) - (~&a18 | 0xE4BB5CA7)) ^ 0xCE7076DD)) ^ 0x72E;
  v22 = (*(v21 + 29464))(&a18);
  return (*(v21 + 8 * ((33 * (a20 == v20)) ^ 0x6C1)))(v22);
}

uint64_t sub_1D492C780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, char a17, __int16 a18, char a19, char *a20, int a21, int a22, uint64_t a23, int *a24, int a25, char *a26, char *a27)
{
  a16 = 783852075;
  v29 = *(a2 + 8);
  v30 = *(a2 + 4) + ((v27 - 301) ^ 0xD801DF2F);
  v31 = 435584651 * ((((&a20 | 0xD68DC05E) ^ 0xFFFFFFFE) - (~&a20 | 0x29723FA1)) ^ 0x444025F7);
  a22 = v31 + v27 + 1228;
  a25 = v30 ^ v31;
  a20 = &a17;
  a23 = v29;
  a24 = &a16;
  a26 = &a15;
  a27 = &a19;
  v33 = (*(v28 + 8 * (v27 ^ 0xC38)))(&a20);
  return (*(v28 + 8 * ((a21 == 671454635) | (16 * (a21 == 671454635)) | v27)))(v33, a2);
}

uint64_t sub_1D492C870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, _BYTE *a16, char a17, uint64_t a18, int a19, char a20, uint64_t a21, char *a22, char *a23, char *a24, _BYTE *a25, char *a26)
{
  a23 = &a17;
  LODWORD(a24) = v26 + ((((2 * &a22) | 0x5D8FBD38) - &a22 - 784850588) ^ 0xFFC5F3E3) * v30 + 2127;
  a25 = a16;
  a26 = &a13;
  (*(v28 + 8 * (v26 ^ 0xB19)))(&a22);
  LODWORD(a23) = (v26 + 547) ^ ((((&a22 | 0x9C4C1987) - (&a22 & 0x9C4C1987)) ^ 0x7AE4B597) * v27);
  a24 = a16;
  a22 = &a15;
  (*(v28 + 8 * (v26 ^ 0xBD9)))(&a22);
  LODWORD(a25) = (v26 + 703) ^ (843532609 * ((&a22 & 0x5EC7C1E2 | ~(&a22 | 0x5EC7C1E2)) ^ 0xFD756A98));
  a24 = &a20;
  a22 = a16;
  (*(v28 + 8 * (v26 + 2368)))(&a22);
  LODWORD(a22) = (v26 + 450) ^ (1504884919 * ((((&a22 | 0x68758B62) ^ 0xFFFFFFFE) - (~&a22 | 0x978A749D)) ^ 0x6C49C386));
  a23 = a16;
  v31 = (*(v28 + 8 * (v26 ^ 0xBC8)))(&a22);
  return (*(v28 + 8 * (((HIDWORD(a22) == v29) * ((3 * (v26 ^ 0x526)) ^ 0xD5F)) ^ v26)))(v31);
}

uint64_t sub_1D492CA30@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5) - ((2 * *(a2 + v5)) & 4) - 126;
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 914) | 0xA80) - 119)) ^ v3)))();
}

uint64_t sub_1D492CC08(uint64_t a1)
{
  v5 = (v1 - 506107453) & 0x1E2A9CAE;
  *v7 = a1;
  v10 = v5 - ((((2 * &v10) | 0x6B65F1F8) - &v10 - 900921596) ^ 0xD31A54EC) * v2 + 46;
  v11 = v8;
  (*(v3 + 8 * (v5 ^ 0x6E6)))(&v10);
  v10 = (v5 ^ 0xE37) - ((1341280682 - (&v10 | 0x4FF251AA) + (&v10 | 0xB00DAE55)) ^ 0x56A50245) * v2 + 515;
  v11 = v9;
  (*(v3 + 8 * ((v5 ^ 0xE37) + 1967)))(&v10);
  return (v4 - 671454635);
}

uint64_t sub_1D492CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, int a22, unsigned int a23, char *a24)
{
  v26 = 675097751 * ((-166465255 - (&a19 | 0xF613F119) + (&a19 | 0x9EC0EE6)) ^ 0x4AAC2B70);
  a20 = (v24 + 1421512249) ^ v26;
  a21 = v26 ^ 0xC0F5404B;
  a23 = v26 ^ 0xA33F4F7E;
  a19 = a17;
  a24 = &a15;
  v27 = (*(v25 + 8 * (v24 + 3411)))(&a19);
  return (*(v25 + 8 * (((a22 == 671454635) * (((v24 - 120) | 0x149) ^ 0x1C7)) ^ v24)))(v27);
}

uint64_t sub_1D492CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, unsigned int a23, unsigned int a24, uint64_t a25)
{
  v29 = 1564307779 * (((&a20 | 0x1A58D519) - (&a20 & 0x1A58D519)) ^ 0x8D55190A);
  a20 = (v25 - 865) ^ v29;
  a22 = a16;
  a24 = v27 - v29 + 2113537133 - ((v27 << ((v25 + 61) & 0xBF ^ 0x93)) & 0xFBF408DA);
  (*(v28 + 8 * (v25 ^ 0x916)))(&a20);
  v30 = 1564307779 * (((&a20 | 0xA634DD2A) - &a20 + (&a20 & 0x59CB22D0)) ^ 0x31391139);
  a22 = a16;
  a24 = v26 - ((2 * v26) & 0xFBF408DA) + 2113537133 - v30;
  a20 = (v25 - 865) ^ v30;
  (*(v28 + 8 * (v25 ^ 0x916)))(&a20);
  v31 = 742307843 * ((&a20 & 0x665413E2 | ~(&a20 | 0x665413E2)) ^ 0x87896148);
  a22 = a13;
  a25 = a16;
  a23 = v31 ^ ((a12 ^ 0xDABCFE7F) + 895439359 + ((2 * a12) & 0xB579FCFE));
  a20 = (v25 - 772) ^ v31;
  v32 = (*(v28 + 8 * (v25 + 1754)))(&a20);
  return (*(v28 + 8 * ((67 * (a21 == 671454635)) ^ v25)))(v32);
}

uint64_t sub_1D492D140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = (*(a3 + 8 * (v62 ^ 0x75E)))();
  LODWORD(STACK[0x480]) = v63;
  return (*(a62 + 8 * (((v63 == v62 + 671452286) * ((743 * (v62 ^ 0x92F)) ^ 0x3B)) ^ v62)))(v64);
}

uint64_t sub_1D492D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = 143681137 * ((((2 * (v17 - 136)) | 0x7AC57B22) - (v17 - 136) + 1117602415) ^ 0x5BCA1181);
  *(v17 - 136) = v15 - v18 + 1688;
  *(v17 - 120) = (v16 ^ 0xDFB5EDFD) - v18 + ((v16 << (v15 - 3)) & 0xBF6BDBFA) + 869260287;
  *(v17 - 128) = &a14;
  v19 = (*(v14 + 8 * (v15 ^ 0xFBE)))(v17 - 136);
  return sub_1D492D248(v19);
}

uint64_t sub_1D492D248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v20 - 112) = (v16 - 967) ^ (((v20 - 136) ^ 0x4B6BCC7E) * v19);
  *(v20 - 128) = &a16;
  *(v20 - 120) = a13;
  v21 = (*(v18 + 8 * (v16 ^ 0xB31)))(v20 - 136);
  return (*(v18 + 8 * ((120 * (*(v20 - 136) <= ((v16 - 600) ^ v17 ^ v16 ^ 0x50Du))) ^ v16)))(v21);
}

uint64_t sub_1D492D430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v23 - 120) = &a19;
  *(v23 - 112) = &a17;
  *(v23 - 104) = (v19 - 1371) ^ (((((2 * (v23 - 128)) | 0x9ACF333A) - (v23 - 128) - 1298635165) ^ 0x60C55E3) * v21);
  v24 = (*(v20 + 8 * (v19 + 1853)))(v23 - 128);
  return (*(v20 + 8 * ((*(v23 - 128) + v22 < (v19 - 377395016)) ^ v19)))(v24);
}

uint64_t sub_1D492D550@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v11 = v8 + 777;
  v12 = (((&a3 | 0x7242F4EA) - &a3 + (&a3 & 0x8DBD0B10)) ^ 0x39293894) * v7;
  a5 = v9;
  a6 = v12 ^ a1;
  a7 = 0;
  a3 = v12 + 1487458214;
  a4 = (v11 - 320) ^ v12;
  v13 = (*(v10 + 8 * (v11 ^ 0xB1B)))(&a3);
  return sub_1D49197B8(v13);
}

uint64_t sub_1D492DB6C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1D492DD34()
{
  v9 = v2 - 2;
  v10 = v3 + 2;
  *(v9 + 91) = (v10 ^ v6) * (v10 + 17);
  *(v9 + v5) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v4 == 2) * v7) ^ v1)))();
}

uint64_t sub_1D492DD84(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v18 = (((a3 ^ 0x9BDB5A7B) + 1680123269) ^ ((a3 ^ 0x797FED61) + a6) ^ (((v10 - 1504) ^ a7) + (a3 ^ v11))) + v9;
  v19 = (((a5 ^ v16) + v17) ^ ((a5 ^ v14) + v15) ^ ((((v10 - 2008) | 0x1F8) ^ v13) + (a5 ^ v12))) + v9;
  v20 = (v18 < v8) ^ (v19 < v8);
  v21 = v18 < v19;
  if (v20)
  {
    v21 = v19 < v8;
  }

  return (*(v7 + 8 * ((56 * v21) ^ v10)))();
}

void sub_1D492DE98(int a1)
{
  *(v2 + 1424) = 0;
  memset((v2 + 1432), 130, 104);
  *(v3 + 96) = v2;
  STACK[0x210] = v3 + 96;
  *(v2 + 476) = a1;
  STACK[0x3C0] = *(v4 + 8 * v1);
  JUMPOUT(0x1D492DF28);
}

uint64_t sub_1D492E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, int a21, unsigned int a22)
{
  v24 = 1564307779 * ((1579895782 - (&a19 | 0x5E2B4BE6) + (&a19 | 0xA1D4B419)) ^ 0x36D9780A);
  a22 = v22 - ((2 * v22) & 0xFBF408DA) + 2113536916 - v24 + 217;
  a19 = v24 ^ 0x434;
  a20 = a17;
  v25 = (*(v23 + 29720))(&a19);
  return (*(v23 + 8 * ((1209 * (a21 == 671454635)) ^ 0x3EAu)))(v25);
}

uint64_t sub_1D492E20C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, char a4, int a5, int a6, char a7, _BYTE *a8, int a9, char a10, uint64_t a11, int a12, char a13, _BYTE *a14, char *a15, char *a16, _BYTE *a17, char *a18)
{
  v20 = (a1 - 1960) | 0x284;
  LODWORD(a17) = (a1 - 170) ^ (((760722660 - (&a14 | 0x2D57B4E4) + (&a14 | 0xD2A84B1B)) ^ 0x8EE51F9E) * v18);
  a14 = a8;
  a16 = &a7;
  (*(v19 + 8 * (a1 + 1495)))(&a14);
  LODWORD(a16) = v20 + 1037613739 * (((&a14 | 0x67E3D6CC) - &a14 + (&a14 & 0x981C2930)) ^ 0xB6E1FBB3) + 2570;
  a15 = &a4;
  a17 = a8;
  a18 = &a10;
  (*(v19 + 8 * (v20 + 2770)))(&a14);
  a14 = a8;
  a16 = &a13;
  LODWORD(a17) = (v20 + 1146) ^ (((&a14 + 1913278215 - 2 * (&a14 & 0x720A4F07)) ^ 0x2E471B82) * v18);
  (*(v19 + 8 * (v20 + 2811)))(&a14);
  a15 = a8;
  LODWORD(a14) = (v20 + 893) ^ (1504884919 * (((&a14 | 0xC77EDF29) - &a14 + (&a14 & 0x388120D0)) ^ 0x3CBD6832));
  v21 = (*(v19 + 8 * (v20 ^ 0xD0F)))(&a14);
  return (*(v19 + 8 * ((2293 * (HIDWORD(a14) == v20 + 671453733)) ^ v20)))(v21);
}

uint64_t sub_1D492E4D4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(STACK[0x2E8]) = a1;
  v58 = (*(v55 + 8 * (v56 ^ 0x649)))(v57 + 16, 0);
  v59 = *(v57 + 16);
  *(v57 + 4) = *(v57 + 24);
  *(v57 + 8) = v59;
  v60 = v56 + 1465;
  *(v57 + 12) = (*(a55 + 8 * v60))(v58);
  *v57 = (*(a55 + 8 * v60))();
  return sub_1D492E540();
}

uint64_t sub_1D492E540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v69 = *(v64 + 4 * (v65 - 1));
  *(v64 + 4 * v65) = *(v67 + 4 * v63) + v63 + ((1664525 * (v69 ^ (v69 >> 30))) ^ *(v64 + 4 * v65));
  *(v68 - 184) = (v65 + 1) ^ v62;
  *(v68 - 176) = a56;
  *(v68 - 192) = v62;
  *(v68 - 168) = -2124587255 - v62 + v66;
  *(v68 - 164) = v62 + v66 + 1978988997 + 100;
  *(v68 - 160) = v66 + 1978988997 - v62;
  *(v68 - 156) = ((v66 + 1978988997) ^ 7) - v62;
  v70 = (*(a4 + 8 * (v66 + 2244)))(v68 - 192);
  return (*(a62 + 8 * *(v68 - 188)))(v70);
}

void nXJ7Amk1zyK93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D492E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, __int16 a27, char a28, uint64_t a29, char a30, __int16 a31, char a32)
{
  v36 = 435584651 * ((v35 - 160) ^ 0x6D321A56);
  STACK[0x2F8] = &a32;
  STACK[0x2F0] = v34;
  *(v35 - 128) = (a7 - 670966098) ^ v36;
  *(v35 - 148) = v36 + v33 + 980;
  STACK[0x308] = &a26;
  STACK[0x310] = &a28;
  STACK[0x2E0] = &a30;
  v37 = (*(v32 + 8 * (v33 ^ 0xD30)))(v35 - 160);
  return (*(v32 + 8 * (((*(v35 - 152) == 671454635) * (((v33 - 214082472) & 0xCC2A93D) + 1527)) ^ v33)))(v37, 1192594034, 954887592);
}

void sub_1D492E818()
{
  LODWORD(STACK[0x24C]) = 0;
  LODWORD(STACK[0x364]) = -188467962;
  STACK[0x3D0] = 0;
  STACK[0x220] = v0;
  v2 = &STACK[0x4B0] + v1;
  STACK[0x378] = &STACK[0x4B0] + v1 + 128;
  STACK[0x2F0] = v1 + 1712;
  *v2 = 0x6370646600;
  v2[8] = 1;
  JUMPOUT(0x1D48E5404);
}

uint64_t sub_1D492EA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3 + 38 * (v4 ^ (v5 + 1297)) - 1331;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((3630 * (v7 == 0)) ^ (v2 + v4 + 1927))))();
}

uint64_t sub_1D492EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v25 = (v22 + ((v23 - 338786107) & 0x14317FDD) - 3157) ^ a22;
  v26 = v25 == ((((v23 + 1912405027) & 0x8E030DFF) - 289532235) & (2 * v25));
  return (*(v24 + 8 * (((4 * v26) | (8 * v26)) ^ v23)))();
}

uint64_t sub_1D492EE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31)
{
  v37 = (a24 + 24 * v33);
  *v37 = v34;
  v37[1] = a7;
  *(&a31 + 3 * v33 + 2) = v36;
  v37[4] = a30;
  a31 = ((a9 - 364) ^ 0x23B) + v32;
  return (*(v35 + 8 * ((2274 * (a3 + v31 + 2021 < ((a9 - 687913895) & 0x2900BFE5u) + 2147481630)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1D492F010(uint64_t a1)
{
  v6 = ((((v4 - 526865454) & 0x1F674CB9) - 1169) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * (v4 ^ (2 * ((v2 & 0xFFFFFFF8) - 8 == v3)))))();
}

uint64_t sub_1D492F06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, unsigned int a22, unsigned int a23, uint64_t a24)
{
  v29 = 1564307779 * ((2 * (&a19 & 0x6D4F4780) - &a19 + 313571448) ^ 0x85BD746B);
  a21 = a17;
  a19 = (v24 + 195) ^ v29;
  a23 = v27 - ((2 * v27) & 0xFBF408DA) - v29 + 2113537133;
  (*(v28 + 8 * (v24 + 2834)))(&a19);
  v30 = 742307843 * ((((&a19 | 0x8FF772A2) ^ 0xFFFFFFFE) - (~&a19 | 0x70088D5D)) ^ 0x6E2A0008);
  a21 = v25;
  a22 = ((v26 ^ 0x9A1F547F) + 1979513855 + ((v26 << ((9 * (v24 ^ 0xA8)) ^ 0xA0)) & 0x343EA8FE)) ^ v30;
  a19 = (v24 + 288) ^ v30;
  a24 = a17;
  v31 = (*(v28 + 8 * (v24 + 2814)))(&a19);
  return (*(v28 + 8 * ((3666 * (a20 == 671454635)) ^ v24)))(v31);
}

void sub_1D492F23C(uint64_t a1)
{
  v2 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2120) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2120) ^ 0x82))] ^ 0xCD]) + 24);
  v3 = -35 * ((qword_1EC7E2160 - *v2) ^ 0x82);
  v4 = *(&off_1F5033D40 + (*(off_1F50343C8 + (*(off_1F50340C8 + v3 - 8) ^ 0x6Cu) - 8) ^ v3) - 143);
  v5 = &v9[*v2 + *v4];
  v6 = (1228258013 * v5) ^ 0xC891BCBEBCEAD82;
  v7 = 1228258013 * (v5 ^ 0xC891BCBEBCEAD82);
  *v2 = v6;
  *v4 = v7;
  v8 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2120 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * (dword_1EC7E2120 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xB]) - 81);
  (*(v8 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + (-35 * (*v2 ^ 0x82 ^ v7)) - 4) ^ 0xBu)) ^ (-35 * (*v2 ^ 0x82 ^ v7))) + 3646)))(*(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + (-35 * (*v2 ^ 0x82 ^ v7)) - 4) ^ 0xBu) - 12) ^ (-35 * (*v2 ^ 0x82 ^ v7))) - 68) - 12, sub_1D4933538);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D492F410()
{
  v8 = v5;
  v7 = v0 - (((&v7 | 0x522CFB63) + (~&v7 | 0xADD3049C)) ^ 0xB4845772) * v1 + 671;
  (*(v2 + 8 * (v0 + 2123)))(&v7);
  v8 = v6;
  v7 = (v0 ^ 0x30) - (((&v7 | 0x75FF67AD) - &v7 + (&v7 & 0x8A009850)) ^ 0x9357CBBD) * v1 + 655;
  (*(v2 + 8 * ((v0 ^ 0x30) + 2107)))(&v7);
  return (v3 - 671454635);
}

uint64_t sub_1D492F508(unint64_t a1)
{
  STACK[0x2F0] = v3 - 176;
  STACK[0x2D8] = a1;
  return (*(v4 + 8 * ((26 * (v1 <= a1)) ^ v2)))();
}

uint64_t sub_1D492F588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v8 + 4 * (a3 + v6));
  *v9 = v4 ^ __ROR4__(*(v9 - 8) ^ *(v9 - 3) ^ *(v9 - 14) ^ *(v9 - 16), 31);
  return (*(v5 + 8 * ((200 * (a3 + 1 != v7 + 80)) ^ v3)))();
}

uint64_t sub_1D492F658@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if (*(v2 + 16) == 445887751)
  {
    v3 = a2 - 1;
  }

  else
  {
    v3 = a2;
  }

  *(result + 4) = v3;
  return result;
}

void sub_1D492F718(uint64_t a1)
{
  v1 = 742307843 * ((2 * (a1 & 0x4FBE55C) - a1 - 83617117) ^ 0xE52697F6);
  v2 = *(*(a1 + 8) + 12) + 1111240858;
  v3 = *(a1 + 20) - v1 + 942536130;
  v4 = (v3 < 0x983B125F) ^ (v2 < 0x983B125F);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0x983B125F;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1D492F80C(uint64_t a1)
{
  v4 = (v1 - 1064) | 0x80;
  *v6 = a1;
  v10 = v8;
  v9 = v4 - 143681137 * ((((2 * &v9) | 0x1D9CCB34) - &v9 + 1899076198) ^ 0x6866C98A) + 1553;
  (*(v2 + 8 * (v4 ^ 0xCC3)))(&v9);
  v10 = v7;
  v9 = v4 - 465 - 143681137 * ((2 * (&v9 & 0x37AC79B8) - &v9 + 1213433412) ^ 0xAEFB2A54) + 2018;
  (*(v2 + 8 * ((v4 - 465) ^ 0xEB2)))(&v9);
  return (v3 - 671454635);
}

uint64_t sub_1D492F930@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  v30 = a1 + 269;
  v31 = (((v30 ^ 0xBE2B8300) & (a27 - 921019811)) << (v27 ^ 0xEA)) & ((a27 - 921019811) ^ 0x3FAB6A27) ^ (v30 ^ 0xBE2B8300) & (a27 - 921019811);
  v32 = ((2 * ((a27 - 921019811) ^ 0x7FBA6A37)) ^ 0x8323D0FE) & ((a27 - 921019811) ^ 0x7FBA6A37) ^ (2 * ((a27 - 921019811) ^ 0x7FBA6A37)) & 0xC191E87E;
  v33 = v32 ^ 0x40902801;
  v34 = (v32 ^ 0x81002061) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x647A1FC) & v33 ^ (4 * v33) & 0xC191E87C;
  v36 = (v35 ^ 0x1A063) & (16 * v34) ^ v34;
  v37 = ((16 * (v35 ^ 0xC1904803)) ^ 0x191E87F0) & (v35 ^ 0xC1904803) ^ (16 * (v35 ^ 0xC1904803)) & 0xC191E870;
  v38 = v36 ^ 0xC191E87F ^ (v37 ^ 0x110800F) & (v36 << 8);
  v39 = (a27 - 921019811) ^ (2 * ((v38 << 16) & 0x41910000 ^ v38 ^ ((v38 << 16) ^ 0x687F0000) & (((v37 ^ 0xC081680F) << 8) & 0x41910000 ^ 0x40110000 ^ (((v37 ^ 0xC081680F) << 8) ^ 0x11E80000) & (v37 ^ 0xC081680F))));
  v41 = v39 != -1121299786 && (v39 & 0xF) == 6;
  v42 = *(v29 + 8 * ((((((v30 - 31) | 0x2C2) - 539) ^ 0x1D7) * v41) ^ v30));
  *(v28 - 172) = -42899;
  return v42();
}

uint64_t sub_1D492FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, int a24, unsigned int a25, char *a26)
{
  v29 = 675097751 * ((((2 * &a21) | 0xFD6E7058) - &a21 - 2125936684) ^ 0x3DF71DBA);
  a21 = a16;
  a26 = &a14;
  a25 = v29 ^ 0xA33F4F7D;
  a22 = (v27 + 1421510331) ^ v29;
  a23 = v29 ^ 0xFD934A35;
  v30 = (*(v28 + 8 * (v27 + 1493)))(&a21);
  return (*(v28 + 8 * (((a24 == ((v27 - 1650) ^ (v26 + 532))) * (v27 ^ 0xB18)) ^ v27)))(v30);
}

uint64_t sub_1D492FC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = 1564307779 * ((-1471070698 - (&a14 | 0xA8513E16) + (&a14 | 0x57AEC1E9)) ^ 0xC0A30DFA);
  a17 = v17 - ((2 * v17) & 0xFBF408DA) - v20 + 2113537133;
  a15 = a10;
  a14 = v20 ^ 0x434;
  v21 = (*(v19 + 29720))(&a14);
  return (*(v19 + 8 * ((2977 * (a16 == v18)) ^ 0x236u)))(v21);
}

uint64_t sub_1D492FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * (v11 - 1097)) ^ v11)))();
}

uint64_t sub_1D492FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v24 = 675097751 * (&a14 ^ 0x43402596);
  a14 = a11;
  a19 = &a12;
  a18 = v24 ^ 0xA33F4F7E;
  a15 = (v23 + 1421511193) ^ v24;
  a16 = v24 ^ 0x647EC077;
  v25 = (*(v20 + 8 * (v23 + 2355)))(&a14);
  return (*(v20 + 8 * (((a17 == v19) * (v22 + v21 + ((v23 + 654) | 1) - 1367 + 1118)) ^ v23)))(v25);
}

uint64_t sub_1D492FFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, unsigned int a20)
{
  a19 = &a12;
  a17 = a16;
  a20 = (v20 + 493) ^ (843532609 * ((386176872 - (&a17 | 0x17049768) + (&a17 | 0xE8FB6897)) ^ 0xB4B63C12));
  (*(v21 + 8 * (v20 ^ 0x892)))(&a17);
  a20 = (v20 + 493) ^ (843532609 * ((-44822456 - (&a17 | 0xFD541048) + (&a17 | 0x2ABEFB7)) ^ 0x5EE6BB32));
  a17 = a16;
  a19 = &a10;
  (*(v21 + 8 * (v20 ^ 0x892)))(&a17);
  a19 = &a9 + 4;
  a17 = a16;
  a20 = (v20 + 493) ^ (843532609 * ((&a17 - 180449164 - 2 * (&a17 & 0xF53E9074)) ^ 0xA973C4F1));
  (*(v21 + 8 * (v20 ^ 0x892)))(&a17);
  a19 = &a15;
  a17 = a16;
  a20 = (v20 + 493) ^ (843532609 * ((((&a17 | 0x49EAEC7E) ^ 0xFFFFFFFE) - (~&a17 | 0xB6151381)) ^ 0xEA584704));
  (*(v21 + 8 * (v20 ^ 0x892)))(&a17);
  a19 = &a9;
  a17 = a16;
  a20 = (v20 + 493) ^ (843532609 * (((&a17 | 0xAD6580D9) - &a17 + (&a17 & 0x529A7F20)) ^ 0xF128D45C));
  (*(v21 + 8 * (v20 + 2158)))(&a17);
  a18 = a16;
  LODWORD(a17) = (v20 + 240) ^ (1504884919 * (((&a17 | 0x458B0681) + (~&a17 | 0xBA74F97E)) ^ 0xBE48B19B));
  v22 = (*(v21 + 8 * (v20 + 2166)))(&a17);
  return (*(v21 + 8 * (((8 * (HIDWORD(a17) == v20 + 671453080)) | (32 * (HIDWORD(a17) == v20 + 671453080))) ^ v20)))(v22);
}

uint64_t sub_1D4930754()
{
  v7 = v5 ^ (v0 + 1371);
  v8 = 1504884919 * ((v6 + 228390735 - 2 * ((v6 - 136) & 0xD9CF7D7)) ^ 0xF65F40CC);
  *(v1 + 8) = v2;
  *(v6 - 120) = -156558184 - v8;
  *(v6 - 116) = v8 + 734561479;
  *(v6 - 136) = v5 - v8 + 3480;
  v9 = (*(v4 + 8 * (v5 + 3603)))(v6 - 136);
  return (*(v4 + 8 * (((*(v6 - 112) == v3) * (v7 ^ 0xFC8BB8DA)) | v5)))(v9);
}

uint64_t sub_1D49309B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, int a17, unsigned int a18)
{
  v22 = 1564307779 * ((((&a15 | 0x931813FC) ^ 0xFFFFFFFE) - (~&a15 | 0x6CE7EC03)) ^ 0xFBEA2010);
  a18 = v18 - ((2 * v18) & 0xFBF408DA) - v22 + 2113537133;
  a15 = (v20 + 503) ^ v22;
  a16 = a11;
  v23 = (*(v19 + 8 * ((v20 + 2372) ^ 0x502u)))(&a15);
  return (*(v19 + 8 * (((a17 == v21) * ((338 * ((v20 + 2372) ^ 0xB83)) ^ 0x2ED)) ^ (v20 + 2372))))(v23);
}

uint64_t sub_1D4930AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 + v4 - 1612;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((31 * (v6 != 0)) ^ v2)))();
}

void sub_1D4930D6C(uint64_t a1)
{
  v1 = 50899313 * (a1 ^ 0x2ACB2A7A);
  v2 = *(a1 + 24) - v1;
  v3 = *(a1 + 8) - v1;
  v5 = (~v3 & 0x30000000) != 0 && (v3 & 0x3F000000) != 520093696;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1D4930E24@<X0>(int a1@<W8>)
{
  v6 = a1 - ((((2 * &v6) | 0xED4F8AE2) - &v6 - 1990706545) ^ 0x900F6961) * v2 + 263;
  v7 = v1;
  (*(v3 + 8 * (a1 ^ 0x9CD)))(&v6);
  return (v4 - 671454635);
}

void sub_1D4930EC0()
{
  *v1 = 0;
  *v0 = 0;
  JUMPOUT(0x1D4930F00);
}

uint64_t sub_1D4931030(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = (v13 + (v9 + v11));
  v15 = *v14;
  v16 = v14[1];
  v17 = (v10 + v9);
  *v17 = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a4)), a1);
  v17[1] = vaddq_s8(vsubq_s8(v16, vandq_s8(vaddq_s8(v16, v16), a4)), a1);
  return (*(v12 + 8 * (((2 * (v9 == 32)) | (32 * (v9 == 32))) ^ (a8 + v8 + 2349))))();
}

uint64_t sub_1D4931094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 128) = a14;
  *(v17 - 120) = v16;
  *(v17 - 136) = v14 - 435584651 * ((2 * ((v17 - 136) & 0x402B1038) - (v17 - 136) - 1076564031) ^ 0xD2E6F597) + 623;
  v18 = (*(v15 + 8 * (v14 + 2258)))(v17 - 136);
  return (*(v15 + 8 * ((124 * (a11 < 1)) ^ (v14 + 2170))))(v18);
}

uint64_t sub_1D4931200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  (*(a2 + 8 * SHIDWORD(a45)))(a46 + 16);
  v63 = (*(a62 + 8 * a45))();
  *v62 = v63;
  return sub_1D4931254(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

void sub_1D4931294(uint64_t a1)
{
  v1 = *(a1 + 20) + 1785193651 * (((a1 | 0xB588AC7F) - a1 + (a1 & 0x4A775380)) ^ 0x43A90853);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D49313A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, unint64_t a23, int a24, unsigned int a25)
{
  v31 = v25 - 417;
  v32 = 1564307779 * (((v26 | 0xC4F481E9) - (v26 & 0xC4F481E9)) ^ 0x53F94DFA);
  a23 = a20;
  LODWORD(a22) = (v31 - 461) ^ v32;
  a25 = v29 - ((2 * v29) & 0xFBF408DA) + 2113537133 - v32;
  (*(v30 + 8 * (v31 | 0x882)))(&a22);
  v33 = 1785193651 * ((v26 - 2 * (v26 & 0xCE50746AA950476ALL) - 0x31AF8B9556AFB896) ^ 0x91C8C9525F71E346);
  a22 = a20;
  a23 = v33 ^ (v28 - ((2 * v28) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  a25 = v31 - v33 + 2076;
  (*(v30 + 8 * (v31 + 2148)))(&a22);
  v34 = 1564307779 * ((((v26 | 0xF45B6E16) ^ 0xFFFFFFFE) - (~v26 | 0xBA491E9)) ^ 0x9CA95DFA);
  a25 = v27 - v34 + 2113537133 - ((v27 << (((v31 - 125) | 0x49) + 52)) & 0xFBF408DA);
  a23 = a20;
  LODWORD(a22) = (v31 - 461) ^ v34;
  v35 = (*(v30 + 8 * (v31 + 2178)))(&a22);
  return (*(v30 + 8 * ((2655 * (a24 == 671454635)) ^ v31)))(v35);
}

void sub_1D4931588(uint64_t a1)
{
  v1 = *(a1 + 52) - 675097751 * (((a1 ^ 0xCFEBF15F | 0x507A8C23) - ((a1 ^ 0xCFEBF15F) & 0x507A8C23)) ^ 0xDCD158EA);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4931964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unint64_t a22, int a23, int a24)
{
  v31 = 1564307779 * ((1927761074 - (v30 | 0x72E74CB2) + (v30 | 0x8D18B34D)) ^ 0x1A157F5E);
  a22 = a14;
  a24 = v28 - ((2 * v28) & 0xFBF408DA) + 2113537133 - v31;
  LODWORD(a21) = (v24 - 303) ^ v31;
  (*(v29 + 8 * (v24 ^ 0xBE0)))(&a21);
  v32 = 1564307779 * ((2 * (v30 & 0x1E97B250) - v30 - 513258070) ^ 0x766581B9);
  a24 = v27 - ((2 * v27) & 0xFBF408DA) + 2113537133 - v32;
  LODWORD(a21) = (v24 - 303) ^ v32;
  a22 = a14;
  (*(v29 + 8 * (v24 ^ 0xBE0)))(&a21);
  v33 = 1785193651 * ((v30 - 2 * (v30 & 0xA54F7AA0D3C915EFLL) - 0x5AB0855F2C36EA11) ^ 0xFAD7C79825E8B1C3);
  a24 = v24 + 2234 - v33;
  a21 = a14;
  a22 = (v26 - ((v26 << ((-29 * (v24 ^ 0x67)) ^ 0x8D)) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL) ^ v33;
  (*(v29 + 8 * (v24 ^ 0xB06)))(&a21);
  v34 = 1785193651 * (((v30 | 0x952697E9C4F241ECLL) - (v30 & 0x952697E9C4F241ECLL)) ^ 0xCABE2AD132D3E5C0);
  a21 = a14;
  a22 = v34 ^ (v25 - ((2 * v25) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  a24 = v24 + 2234 - v34;
  v35 = (*(v29 + 8 * (v24 + 2306)))(&a21);
  return (*(v29 + 8 * ((2101 * (a23 == 671454635)) ^ v24)))(v35);
}

uint64_t sub_1D4931BC0(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 675097751 * ((a1 & 0x317C6A22 | ~(a1 | 0x317C6A22)) ^ 0x8DC3B04B);
  v3 = a1[8] + v2;
  v4 = a1[1] + v2;
  v9[1] = v3 + 143681137 * ((v9 & 0xF8E02329 | ~(v9 | 0xF8E02329)) ^ 0xE1B770C6) - 1746450168;
  v5 = *(&off_1F5033D40 + (v3 + 562358863));
  result = (*(v5 + 8 * (v3 + 562362676)))(v9);
  if (v4 > 1248679658)
  {
    if (v4 == 1533892330)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1248679659)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *(v5 + 8 * ((88 * (((v3 - 63) ^ ((*(v5 + 8 * (v3 ^ 0xDE7B1B33)))((*(*(&off_1F5033D40 + (v3 + 562358928)) + 6 * v7 + 4) - 1499319901)) == 0)) & 1)) ^ (v3 + 562361434)));
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1248679655)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1248679658)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  *a1 = 671412583;
  return result;
}

uint64_t sub_1D49324BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  *(a33 + 360) = v70;
  v77 = (*(v76 + 8 * (v69 + 2307)))(a1, 2, &STACK[0x370], v73, (v74 + v71), v72, &STACK[0x2B0], &a69);
  LODWORD(STACK[0x24C]) = v77;
  if (v77 == 268435459)
  {
    LODWORD(STACK[0x38C]) = 671412451;
    return (*(a63 + 8 * ((((a62 ^ 0x5C0) + 702 + 163 * (a62 ^ 0x5C0) - 2940) * (STACK[0x2B0] == 0)) ^ (a62 + 1676))))(v77, STACK[0x2B0], v78, v79);
  }

  else
  {
    if (!v77)
    {
      JUMPOUT(0x1D492E828);
    }

    v81 = 210068311 * ((((v75 - 192) | 0x6D340) - (v75 - 192) + ((v75 - 192) & 0xFFF92CB8)) ^ 0x57694997);
    *(v75 - 192) = &STACK[0x38C];
    *(v75 - 184) = ((v77 ^ 0xAA1DFDBB) + 2112329712 + ((2 * v77) & 0x543BFB76)) ^ v81;
    *(v75 - 180) = a62 - v81 - 550;
    v82 = (*(a63 + 8 * (a62 + 2255)))(v75 - 192);
    return (*(a63 + 8 * ((((a62 ^ 0x5C0) + 702 + 163 * (a62 ^ 0x5C0) - 2940) * (STACK[0x2B0] == 0)) ^ (a62 + 1676))))(v82);
  }
}

void sub_1D49326D8(int a1@<W8>)
{
  v3 = *(v2 + 4);
  v4 = ((118 * (((v1 - 3310) | 0xC06) ^ 0xD55)) ^ 0x512) - a1;
  if (v3 + 474467929 >= 0)
  {
    v4 = a1;
  }

  *(v2 + 4) = v4 + v3;
  JUMPOUT(0x1D4932744);
}

uint64_t sub_1D4932C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v19 = a17;
  *(v22 - 112) = (v21 + 649) ^ (((v22 - 837919737 - 2 * ((v22 - 136) & 0xCE0E5C8F)) ^ 0x9243080A) * v18);
  v19[2] = v17;
  v23 = (*(v20 + 8 * (v21 ^ 0xBF6)))(v22 - 136);
  return sub_1D48E42A8(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1D4932C74(uint64_t result)
{
  v1 = 50899313 * (result ^ 0xB30B77E62ACB2A7ALL);
  v2 = *(result + 24) ^ v1;
  v3 = *(result + 32) - v1;
  v4 = v3 > v2;
  v5 = v3 == v2;
  v6 = v4;
  if ((*result + v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 4;
  if (!v7)
  {
    v8 = 12;
  }

  *(result + 16) = (*(result + v8) - v1) ^ (*(result + 40) + v1);
  return result;
}

void sub_1D4932CE8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a4 = v8 - 1361651671 * (((&a3 | 0x6D61633F) - (&a3 & 0x6D61633F)) ^ 0x260AAF41) + 912;
  a5 = v7;
  a6 = v7;
  a3 = v6;
  (*(a1 + 8 * (v8 ^ 0xCE6)))(&a3);
  JUMPOUT(0x1D48E04F0);
}

uint64_t sub_1D4932D4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  *a4 = 0;
  *a5 = 0;
  a16 = (1037613739 * ((((&a15 | 0xCE60E8F0) ^ 0xFFFFFFFE) - (~&a15 | 0x319F170F)) ^ 0xE09D3A70)) ^ 0x86F54BA0;
  v17 = (*(v16 + 29168))(&a15);
  return (*(v16 + 8 * ((2622 * (a15 == 671454635)) ^ 0x26Fu)))(v17);
}

void sub_1D4932DF4(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((a1 + 1653781142 - 2 * (a1 & 0x6292B296)) ^ 0x35FD2841);
  v2 = *(&off_1F5033D40 + (v1 ^ 0x319));
  v3 = *a1;
  (*(v2 + 8 * (v1 + 2952)))(*(&off_1F5033D40 + (v1 ^ 0x341)) - 12, sub_1D4933538);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4932F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v21 = 675097751 * ((&a14 & 0x19FBC572 | ~(&a14 | 0x19FBC572)) ^ 0xA5441F1B);
  a19 = &a11;
  a15 = (v20 + 1421511570) ^ v21;
  a16 = v21 ^ 0xBE3360D4;
  a18 = v21 ^ 0xA33F4F7D;
  a14 = a10;
  v22 = (*(v19 + 8 * (v20 ^ 0xDF4)))(&a14);
  return (*(v19 + 8 * ((107 * (a17 != ((23 * (v20 ^ 0x3A8) + 940605870) | 0xC48A0080) + 728437468)) ^ v20)))(v22);
}

void QgPp5PNq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D49330FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, char *a20, int a21)
{
  a19 = (50899313 * ((&a19 + 1170910273 - 2 * (&a19 & 0x45CAAC41)) ^ 0x6F01863B)) ^ 0x72E;
  a20 = &a17;
  v22 = (*(v21 + 29464))(&a19);
  return (*(v21 + 8 * ((3756 * (a21 == 671454635)) ^ 0x7A1u)))(v22);
}

uint64_t sub_1D49333B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, unsigned int a14, int a15, unsigned int a16, char *a17)
{
  v21 = 675097751 * (((&a12 | 0xF844B44E) - (&a12 & 0xF844B44E)) ^ 0xBB0491D8);
  a17 = &a11;
  a12 = a10;
  a16 = v21 ^ 0xA33F4F7D;
  a13 = (v20 + 1421510459) ^ v21;
  a14 = v21 ^ 0x97DF7B75;
  v22 = (*(v17 + 8 * (v20 + 1621)))(&a12);
  return (*(v17 + 8 * ((979 * (a15 == v18 + (v20 ^ 0x92F) + v19 - 851)) ^ v20)))(v22);
}

uint64_t sub_1D4933538()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E1FE8 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46D70[byte_1D4B43D80[(-35 * (dword_1EC7E1FE8 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xB5]) + 134);
  v1 = -35 * ((qword_1EC7E2160 - *v0) ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + v1 - 4) ^ 0xBu) - 12) ^ v1) - 110);
  v3 = 1228258013 * ((*v2 + *v0) ^ &v5 ^ 0xC891BCBEBCEAD82);
  *v0 = v3;
  *v2 = v3;
  LOBYTE(v3) = -35 * ((v3 + *v0) ^ 0x82);
  v6 = *(&off_1F5033D40 + (*(off_1F50343C8 + (*(off_1F50340C8 + v3 - 8) ^ 0x9Eu) - 8) ^ v3) - 102);
  v7 = 1092 - 1785193651 * ((-641793106 - (&v6 | 0xD9BF03AE) + (&v6 | 0x2640FC51)) ^ 0xD061587D);
  LOBYTE(v0) = -35 * ((*v2 + *v0) ^ 0x82);
  return (*(*(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E1FE8) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 + dword_1EC7E1FE8) ^ 0x82))] ^ 0xF5]) - 101) + (*(off_1F5034330 + (*(off_1F5034390 + v0 - 4) ^ 0xC4u)) ^ v0) + 3687))(&v6);
}

void sub_1D4933800(uint64_t a1@<X8>)
{
  v3 = v2 != ((9 * ((v1 + 264) ^ 0x22D)) ^ (v1 + 184953656));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1D493386C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v4 = a1;
  *v3 = a2;
  v7 = (v2 + 1494116233) & 0xA6F197CE;
  v12 = v9;
  v11 = v2 + 2627 - 143681137 * ((892152046 - (&v11 | 0x352D28EE) + (&v11 | 0xCAD2D711)) ^ 0x2C7A7B01) - 1027;
  (*(v5 + 8 * (v2 + 3052)))(&v11);
  v11 = v7 - 143681137 * ((((2 * &v11) | 0xA56DBEC8) - &v11 - 1387716452) ^ 0xB41E7374) + 1768;
  v12 = v10;
  (*(v5 + 8 * (v7 + 3220)))(&v11);
  return (v6 - 671454635);
}

uint64_t sub_1D4933A08@<X0>(_DWORD *a1@<X0>, int a2@<W3>, void *a3@<X8>)
{
  v6 = *(*a3 + (v4 - 1438290792)) ^ 0x82;
  v7 = ((*(*a3 + (v4 - 1438290795)) ^ 0x82) << 24) | ((*(*a3 + (v4 - 1438290794)) ^ 0x82) << 16) | ((*(*a3 + (v4 - 1438290793)) ^ (((a2 - 67) & 0xBF) - 20)) << 8) | v6;
  return (*(v3 + 8 * ((56 * (v5 - *a1 + ((v7 - 2 * (v7 & 0x73E6502F ^ v6 & 4) + 1944473643) & 0xFFFFFF ^ 0xE6502B) != -1631802720)) ^ a2)))();
}

uint64_t sub_1D4933AF8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v10 = ~v7 + v4;
  v11 = *(v3 + v10 - 15);
  v12 = *(v3 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v8 + v7 == v5) * a2) ^ (v6 + a3))))();
}

uint64_t sub_1D4933B7C(uint64_t a1, int a2, int a3, int a4)
{
  v7 = (((a2 - 906) | 0x458) ^ 0x4DDD98F0u) + a4 + v6 > v4 + 478016127;
  if ((v4 + 478016127) < 0x4DDD9F8A != (a4 + v6) > 0xB2226075)
  {
    v7 = (a4 + v6) > 0xB2226075;
  }

  return (*(v5 + 8 * ((v7 * a3) ^ a2)))();
}

uint64_t sub_1D4933CDC(_DWORD *a1)
{
  v1 = 1785193651 * (((a1 ^ 0x78389F31 | 0x2F9E7F6F) - ((a1 ^ 0x78389F31) & 0x2F9E7F6F)) ^ 0xA1874472);
  v2 = a1[2] - v1;
  v3 = a1[3] + v1;
  v4 = v3 + *(*a1 + 68) - 118099102;
  *(*a1 + 68) = v4;
  v3 += 982923083;
  v5 = v3 < 0x41A043E9;
  v6 = v4 + 1101022185 < v3;
  if (v5 != v4 > 0xBE5FBC16)
  {
    v6 = v5;
  }

  return (*(*(&off_1F5033D40 + (v2 ^ 0xA14)) + ((1110 * v6) ^ v2)))();
}

uint64_t sub_1D4933DE8(uint64_t a1, uint64_t a2)
{
  v2 = &v7[qword_1EC7E2160 ^ qword_1EC7E2028];
  qword_1EC7E2028 = 1228258013 * (v2 - 0xC891BCBEBCEAD82);
  qword_1EC7E2160 = 1228258013 * (v2 ^ 0xC891BCBEBCEAD82);
  v3 = *(a2 + 4);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - 35 * (v2 + 126)) ^ 0x82)) ^ byte_1D4B46D70[byte_1D4B43D80[(-35 * ((qword_1EC7E2160 - 35 * (v2 + 126)) ^ 0x82))] ^ 0xB5]) - 9);
  if (v3 == 1499319904)
  {
    __asm { BRAA            X15, X17 }
  }

  if (v3 == 1499319911)
  {
    v5 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_1D4934128@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v3 + 14 * (v2 ^ 0x356u) - 2591;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((900 * (v5 == 0)) | (v2 + 1116))))();
}

uint64_t sub_1D49341FC@<X0>(int a1@<W2>, uint64_t a2@<X7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, int *a21)
{
  v28 = (a2 + (a1 - 1));
  v29 = ((*(*a20 + (*a21 & v23)) ^ v28) & 0x7FFFFFFF) * ((v22 - 533) ^ 0x866E710B);
  v30 = -2039581373 * ((v29 >> (((v22 - 87) | 0x20) - 22)) ^ v29);
  LOBYTE(v30) = *(*(v25 + 8 * (v22 - 1422)) + (v30 >> 24) - 1) ^ *(*(v25 + 8 * (v22 - 1497)) + (v30 >> 24) - 12) ^ *(*(v25 + 8 * (v22 - 1487)) + (v30 >> 24) - 12) ^ v30 ^ (BYTE3(v30) * v26);
  *v28 = v30 ^ (a3 >> v21);
  return (*(v24 + 8 * (((a1 == (v30 != (a3 >> v21))) * v27) ^ v22)))();
}

uint64_t sub_1D49343B8@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v10 + 8) + 4 * v3) ^ v6) + v1 + (*(*(v8 + 8) + 4 * v3) ^ v6);
  *(*(a1 + 8) + 4 * v3) = v11 + v6 - (v7 & (2 * v11));
  return (*(v9 + 8 * (v4 | (2 * (v3 + ((v4 - 1099) | v5) - 516 != v2)))))();
}

uint64_t sub_1D49345F0()
{
  v4 = 5 * (v3 ^ 0xD0A);
  v15 = &v10;
  v13 = v11;
  v16 = (v3 - 1221) ^ (843532609 * (((&v13 | 0xE1E29C50) - (&v13 & 0xE1E29C50)) ^ 0xBDAFC8D5));
  (*(v0 + 8 * (v3 ^ 0x244u)))(&v13);
  v14 = v11;
  LODWORD(v13) = (v3 - 1474) ^ (1504884919 * (&v13 ^ 0xFBC3B71B));
  (*(v0 + 8 * (v3 + 452)))(&v13);
  if (HIDWORD(v13) == v1)
  {
    v5 = 952612331;
  }

  else
  {
    v5 = 693108219;
  }

  if (HIDWORD(v13) == v1)
  {
    v6 = 1905224662;
  }

  else
  {
    v6 = 1386216438;
  }

  if (HIDWORD(v13) == v1)
  {
    v7 = -281157696;
  }

  else
  {
    v7 = -21653584;
  }

  v8 = (v5 ^ v10) + v7 + ((v10 << (v4 ^ 0xA)) & v6);
  v14 = v11;
  LODWORD(v13) = v3 - ((2 * (&v13 & 0x1561FF90) - &v13 - 358743954) ^ 0xC36AC7E) * v2 - 1041;
  (*(v0 + 8 * (v3 ^ 0x2A5u)))(&v13);
  v14 = v12;
  LODWORD(v13) = v4 - ((&v13 & 0x4B6EB3DA | ~(&v13 | 0x4B6EB3DA)) ^ 0x5239E035) * v2 - 87;
  (*(v0 + 8 * (v4 ^ 0x76Bu)))(&v13);
  return (v8 - 671454635);
}

uint64_t sub_1D4934804(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v22 = (a5 + a2 + 1290302571) & 0x2944CD9F;
  v18 = 1785193651 * ((367746923 - ((v17 - 160) ^ 0x5166C079 | 0x15EB5F6B) + ((v17 - 160) ^ 0x5166C079 | 0xEA14A094)) ^ 0x4D53C4C1);
  STACK[0x2E0] = &STACK[0x27C];
  *(v17 - 152) = v18 + a2 + 2545;
  *(v17 - 148) = a16 - v18 - 1381220800;
  v19 = (*(v16 + 8 * (a2 + 3707)))(v17 - 160);
  v20 = ((STACK[0x2C0] & 0x3F ^ 0xD150F0A9) + 1900025902) ^ (v22 + 1695248446 + (STACK[0x2C0] & 0x3F ^ 0xC51B9C5E)) ^ ((STACK[0x2C0] & 0x3F ^ 0x144B6CF7) - 1269070732);
  *(&STACK[0x27C] + v20 + 1609504635) = 2;
  return (*(v16 + 8 * ((1112 * (v20 + 1609504579 < 0xFFFFFFC8)) ^ a2)))(v19);
}

uint64_t sub_1D4934A74@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (a2 + 1681365245) & 0x9BC8647F;
  *v8 = a1;
  *v9 = v2;
  v6 = 44 * (v5 ^ 0x43D);
  v12 = v5 - ((&v12 - 1279506538 - 2 * (&v12 & 0xB3BC4796)) ^ 0x5514EB86) * v3 + 1153;
  v13 = v10;
  (*(v4 + 8 * (v5 ^ 0xA53)))(&v12);
  v13 = v11;
  v12 = v6 - ((1293652291 - (&v12 | 0x4D1B9143) + (&v12 | 0xB2E46EBC)) ^ 0x544CC2AC) * v3 + 1612;
  (*(v4 + 8 * (v6 ^ 0xC08)))(&v12);
  return 0;
}

uint64_t sub_1D4934BB4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = 675097751 * ((a1 & 0x4FD7CBBA | ~(a1 | 0x4FD7CBBA)) ^ 0xF36811D3);
  v3 = *(a1 + 12);
  v4 = *(a1 + 8) ^ v2;
  v5 = *(a1 + 24);
  v6 = ((*(a1 + 20) ^ v2 ^ 0x423BBDA0) - 1111211424) ^ ((*(a1 + 20) ^ v2 ^ 0xC7629DA2) + 949838430) ^ ((*(a1 + 20) ^ v2 ^ 0x26666F7E) - 644247422);
  v7 = 1504884919 * (((&v9 | 0x236A904) - (&v9 & 0x236A904)) ^ 0xF9F51E1F);
  v9 = *a1;
  v12 = v5;
  v10 = v2 ^ v3 ^ v7 ^ 0x2AEBEB8F;
  v11 = v7 - 795132228 + v6;
  v14 = v4 - v7 - 1421511027;
  result = (*(*(&off_1F5033D40 + (v4 ^ 0x54BA8F4A)) + (v4 ^ 0x54BA81E3)))(&v9);
  *(a1 + 16) = v13;
  return result;
}

uint64_t sub_1D4934D58(uint64_t a1)
{
  v1 = 1564307779 * ((-2 - ((a1 | 0x5169949C) + (~a1 | 0xAE966B63))) ^ 0x399BA770);
  v2 = *(a1 + 20) + v1;
  v3 = -1130468357 * (*(a1 + 16) ^ v1);
  v5 = v3 + 1850535417;
  v4 = v3 + 1850535417 < 0;
  v6 = -1850535417 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 1673015719;
  v4 = v7 - 1673015719 < 0;
  v9 = 1673015719 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_1F5033D40 + v2 - 1139) + ((3267 * ((v6 >> 5) < v9)) ^ v2)))();
}

uint64_t sub_1D4934E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20, char a21, char *a22, unsigned int a23, uint64_t a24, char *a25)
{
  a22 = &a17;
  a23 = v26 + 1037613739 * ((((2 * &a21) | 0xD50661AE) - &a21 - 1786982615) ^ 0xBB811DA8) + 2522;
  a24 = a14;
  a25 = &a19;
  v28 = (*(v27 + 8 * (v26 + 2722)))(&a21);
  return (*(v27 + 8 * (((v26 - 830) * (a11 < v25)) ^ v26)))(v28);
}

void sub_1D4934EC0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 742307843 * (a1 ^ 0x1E228D55);
  v2 = 843532609 * ((&v6 + 214701387 - 2 * (&v6 & 0xCCC154B)) ^ 0x508141CE);
  v6 = &v4;
  v7 = 276443307 - v2;
  v8 = v1 - 875954140 + v2;
  v3 = *(&off_1F5033D40 + (v1 ^ 0x3F));
  (*(v3 + 8 * (v1 + 3622)))(&v6);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1D493511C@<X0>(int a1@<W8>)
{
  *v4 = a1 ^ 0xA72 ^ v7 ^ 0x73E65247;
  v5 = a1 ^ 0x218;
  v10 = (a1 ^ 0xA72) - (&v10 ^ 0xE6A8AC10) * v2 + 1608;
  v11 = v8;
  (*(v3 + 8 * (a1 ^ 0x67E)))(&v10);
  v10 = v5 - ((2 * (&v10 & 0x54BBC9D0) - &v10 + 725890607) ^ 0xCDEC9A3F) * v2 - 338;
  v11 = v9;
  (*(v3 + 8 * (v5 + 1114)))(&v10);
  return (v1 - 671454635);
}

uint64_t sub_1D4935224@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X6>, int a3@<W8>)
{
  *v8 = a1;
  *a2 = a3;
  v6 = 3 * ((v3 + 538) ^ 0x1FA);
  v12 = v9;
  v11 = v3 + 538 - 143681137 * ((((2 * &v11) | 0x41C5D424) - &v11 + 1595741678) ^ 0x464A4602) + 1347;
  (*(v5 + 8 * (v3 + 3337)))(&v11);
  v12 = v10;
  v11 = v6 - 143681137 * ((2 * (&v11 & 0x5BDC8410) - &v11 + 606305260) ^ 0xC28BD7FC) + 275;
  (*(v5 + 8 * (v6 ^ 0x9C1)))(&v11);
  return (v4 - 671454635);
}

uint64_t sub_1D4935340@<X0>(int a1@<W8>)
{
  *v3 = v8;
  v5 = (a1 ^ 0x253) + 29;
  v11 = v9;
  v10 = (a1 ^ 0x253) - ((2 * ((&v10 ^ 0x7F6F2DC6) & 0x65430630) - (&v10 ^ 0x7F6F2DC6) + 448592334) ^ 0x837B7818) * v4 + 35;
  (*(v2 + 8 * ((a1 ^ 0x253) + 1487)))(&v10);
  v11 = v7;
  v10 = v5 - (((&v10 | 0x71196772) - (&v10 & 0x71196772)) ^ 0x97B1CB62) * v4 + 6;
  result = (*(v2 + 8 * (v5 + 1458)))(&v10);
  *(v1 + 28) = 671454635;
  return result;
}

uint64_t sub_1D493554C(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = v9 > a1;
  v12 = ((a7 + 2726) ^ a3) + v7;
  v13 = v11 ^ (v12 < a4);
  v14 = v12 < v10;
  if (!v13)
  {
    v11 = v14;
  }

  return (*(v8 + 8 * (((2 * v11) | (4 * v11)) ^ a7)))();
}

uint64_t sub_1D4935624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * (&a14 ^ 0x2ACB2A7A)) ^ 0x72E;
  a15 = &a11;
  v19 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((226 * (a16 == v17)) ^ v18)))(v19);
}

uint64_t sub_1D49357D0()
{
  if (v2)
  {
    v3 = v0 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(v1 + 8 * (v4 | (8 * v4) | 0xD76u)))();
}

uint64_t sub_1D4935808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, int a33)
{
  *(v37 + 16) = v36;
  *(v37 + 20) = v33 ^ 0x8C3C470B;
  *(v37 + 24) = a12 ^ v38;
  *(v37 + 560) = a33;
  if (v36 == 8 || v36 == 5)
  {
    *(v37 + 43) = *(v40 - 193) ^ 0x82;
    *(v37 + 42) = *(v40 - 194) ^ 0x82;
    *(v37 + 41) = *(v40 - 195) ^ 0x82;
    *(v37 + 40) = *(v40 - 196) ^ 0x82;
    *(v37 + 39) = *(v40 - 197) ^ 0x82;
    *(v37 + 38) = *(v40 - 198) ^ 0x82;
    *(v37 + 37) = *(v40 - 199) ^ 0x82;
    *(v37 + 36) = *(v40 - 200) ^ 0x82;
    *(v37 + 35) = *(v40 - 201) ^ 0x82;
    *(v37 + 34) = *(v40 - 202) ^ 0x82;
    *(v37 + 33) = *(v40 - 203) ^ 0x82;
    *(v37 + 32) = *(v40 - 204) ^ 0x82;
    *(v37 + 31) = *(v40 - 205) ^ 0x82;
    *(v37 + 30) = *(v40 - 206) ^ 0x82;
    *(v37 + 29) = *(v40 - 207) ^ 0x82;
    *(v37 + 28) = *(v40 - 208) ^ 0x82;
  }

  *(v40 - 168) = a31 - ((((v40 - 168) | 0xF1A1EEE3) - (v40 - 168) + ((v40 - 168) & 0xE5E1118)) ^ 0xA6259F8) * v39 - 2392;
  v41 = (*(v35 + 8 * (a31 ^ 0x84)))(v40 - 168);
  return (*(v35 + 8 * (((*(v40 - 164) == v34) * ((a31 - 1574355730) & 0x5DD6B4B7 ^ 0x648)) ^ (a31 - 3674))))(v41);
}

uint64_t sub_1D4935A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v26 = 143681137 * ((((v25 - 128) | 0xA4D8BBE5) + (~(v25 - 128) | 0x5B27441A)) ^ 0x427017F4);
  *(v25 - 112) = (v19 ^ 0x1FDFE9FC) - v26 + ((v24 + 1069535937) & (2 * v19)) - 207233024;
  *(v25 - 120) = &a17;
  *(v25 - 128) = v24 - v26 + 1637;
  (*(v20 + 8 * (v24 + 3459)))(v25 - 128);
  *(v25 - 120) = &a19;
  *(v25 - 112) = a16;
  *(v25 - 104) = (v24 + 190) ^ (((~((v25 - 128) | v21) + ((v25 - 128) & v21)) ^ 0x5206D737) * v22);
  v27 = (*(v20 + 8 * ((v24 + 1896) ^ 0x612)))(v25 - 128);
  return (*(v20 + 8 * ((((((v24 + 1561) ^ ((*(v25 - 128) + v23) < 0xE8675D91)) & 1) == 0) * (((v24 + 722) | 4) - 959)) ^ (v24 + 1896))))(v27);
}

void sub_1D4935FA8()
{
  v2 = STACK[0x3A8];
  v3 = 843532609 * ((2 * ((v1 - 192) & 0x5F3C4FE0) - (v1 - 192) - 1597788133) ^ 0xFC8EE49E);
  *(v1 - 180) = 276443307 - v3;
  *(v1 - 176) = v0 - 875954136 + v3 + 20;
  *(v1 - 192) = v2;
  JUMPOUT(0x1D493601CLL);
}

uint64_t sub_1D49362B4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5) - ((2 * *(v1 + v5)) & 4) - 126;
  v6 = v5 == ((v3 - 2015485198) & 0x7821D73F ^ 0x73FLL);
  return (*(v4 + 8 * ((2 * v6) | (16 * v6) | v3)))();
}

uint64_t sub_1D493667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  if (v73 == 5 || v73 == 8)
  {
    v76 = a62 + 836;
    *(v74 + 55) = *(v74 + 15) - ((2 * *(v74 + 15)) & 4) - 126;
    *(v74 + 54) = *(v74 + 14) - ((*(v74 + 14) << ((a62 + 68) ^ 0x13)) & 4) - 126;
    *(v74 + 53) = *(v74 + 13) - ((2 * *(v74 + 13)) & 4) - 126;
    *(v74 + 52) = *(v74 + 12) - ((2 * *(v74 + 12)) & 4) - 126;
    *(v74 + 51) = *(v74 + 11) - ((2 * *(v74 + 11)) & 4) - 126;
    *(v74 + 50) = *(v74 + 10) - ((2 * *(v74 + 10)) & 4) - 126;
    *(v74 + 49) = *(v74 + 9) - ((2 * *(v74 + 9)) & 4) - 126;
    *(v74 + 48) = *(v74 + 8) - ((2 * *(v74 + 8)) & 4) - 126;
    *(v74 + 47) = *(v74 + 7) - ((2 * *(v74 + 7)) & 4) - 126;
    *(v74 + 46) = *(v74 + 6) - ((2 * *(v74 + 6)) & 4) - 126;
    *(v74 + 45) = *(v74 + 5) - ((2 * *(v74 + 5)) & 4) - 126;
    *(v74 + 44) = *(v74 + 4) - ((2 * *(v74 + 4)) & 4) - 126;
    *(v74 + 43) = *(v74 + 3) - ((2 * *(v74 + 3)) & 4) - 126;
    *(v74 + 42) = *(v74 + 2) - ((2 * *(v74 + 2)) & 4) - 126;
    *(v74 + 41) = *(v74 + 1) - ((2 * *(v74 + 1)) & 4) - 126;
    *(v74 + 40) = *v74 - ((2 * *v74) & 4) - 126;
    v73 = STACK[0x2AC];
    v72 = 2 * LODWORD(STACK[0x2AC]);
  }

  else
  {
    v76 = (a62 - 1468) | 0x900;
    *(v74 + 55) = *(v74 + 87);
    *(v74 + 51) = *(v74 + 83);
    *(v74 + 43) = *(v74 + 75);
    *(v74 + 41) = *(v74 + 73);
    *(v74 + 40) = *(v74 + 72);
  }

  v77 = STACK[0x2C8];
  v78 = 675097751 * ((v75 - 192) ^ 0x43402596);
  *(v75 - 192) = a31;
  *(v75 - 152) = &STACK[0x1790];
  *(v75 - 184) = ((v73 ^ 0xFFD7E37F) + ((((v76 + 1449280586) & 0xA99DBFFF) - 3274) ^ 0x76ADBF64) + (v72 & 0xFFAFC6FE)) ^ v78;
  *(v75 - 136) = &STACK[0x17A0];
  *(v75 - 140) = -675097751 * ((v75 - 192) ^ 0x43402596) + 1194216987 * a71 + 786410973;
  *(v75 - 176) = &STACK[0x28C];
  *(v75 - 168) = v77;
  *(v74 + 248) = -69 - -105 * ((v75 + 64) ^ 0x96);
  *(v75 - 156) = v78 + v76 - 895;
  v79 = (*(v71 + 8 * (v76 + 1436)))(v75 - 192);
  v80 = *(v75 - 144);
  LODWORD(STACK[0x2FC]) = v80;
  return (*(a63 + 8 * ((54 * (v80 != 671454635)) ^ v76)))(v79);
}

uint64_t sub_1D4936988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v16 + 1751) ^ (843532609 * ((2 * (&a13 & 0x2814AA50) - &a13 + 1475040687) ^ 0xBA6012A));
  a13 = a12;
  a15 = &a10;
  (*(v17 + 8 * (v16 ^ 0xFA8)))(&a13);
  a14 = a12;
  LODWORD(a13) = (v16 + 1498) ^ (1504884919 * (&a13 ^ 0xFBC3B71B));
  v19 = (*(v17 + 8 * (v16 + 3424)))(&a13);
  return (*(v17 + 8 * (((HIDWORD(a13) == v18) * (((v16 + 1751) | 6) ^ 0x456)) | v16)))(v19);
}

void sub_1D4936D4C(uint64_t a1@<X5>, int a2@<W8>)
{
  v5 = *(a1 + 8 * (v3 - 1142)) - 4;
  v6 = *(v5 + (v2[3] ^ 0xDELL)) ^ v2[3];
  v7 = v2[4];
  v8 = v3;
  *(v4 - 116) = a2;
  v9 = *(a1 + 8 * (v3 ^ 0x4A7)) - 12;
  LODWORD(v7) = *(v9 + (v7 ^ 0xF7)) - 80;
  v10 = (3 * (v3 ^ 0x61A)) & v7 | ~v7 & 0x6C;
  LODWORD(v7) = (((v7 ^ 0x5C) & (2 * ((v7 ^ 0x5C) & (2 * ((v7 ^ 0x5C) & (2 * ((v7 ^ 0x5C) & (2 * ((v7 ^ 0x5C) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10) << 25) ^ (v7 << 24);
  v11 = *(a1 + 8 * (v8 ^ 0x4F8)) - 12;
  v12 = *(v11 + (v2[14] ^ 0x82));
  v13 = *(&off_1F5033D40 + (v8 ^ 0x462));
  v14 = *(v13 + (v2[5] ^ 0x6DLL)) << 16;
  v15 = (((v7 ^ 0xFFFFFF8) & ((*(v11 + v2[6]) << 8) ^ 0xB92585A8) | v7 & 0x46000000) ^ 0xAD858F28) & (v14 ^ 0xFFF1FFB8);
  LOBYTE(v10) = *(v5 + (v2[15] ^ 0xFDLL)) ^ v2[15];
  LODWORD(v7) = *(v9 + (v2[8] ^ 0x70)) - 78;
  v16 = v7 & 0xFFFFFFEC ^ 0xFFFFFF88;
  LODWORD(v7) = (((v7 ^ 0x5C) & (2 * ((v7 ^ 0x5C) & (2 * ((v7 ^ 0x5C) & (2 * ((v7 ^ 0x5C) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16) << 25) ^ (v7 << 24);
  v17 = *(v13 + (v2[13] ^ 0xC7));
  v18 = *(v5 + (v2[11] ^ 0xD3)) ^ v2[11];
  v19 = (((v7 | 0xFFFFFF) & ((*(v11 + (v2[10] ^ 0x48)) << 8) ^ 0x1046AB9) | v7 & 0xFE000000) ^ 0x40B8D8EB) & (v18 ^ 0xFFFFFF8E);
  v20 = ((*(v13 + (v2[1] ^ 0x40)) << 16) ^ 0xD455CAB5) & (v6 ^ 0xFCFFCA18) | v6 & 0x4A;
  LODWORD(v7) = *(v9 + (v2[12] ^ 0xBDLL));
  v21 = v7 - 113;
  v22 = v7 + 15;
  v23 = (v7 + 15) ^ 0x40;
  LODWORD(v7) = 2 * ((112 - v7) & (2 * (v7 + 15)) ^ v23);
  LODWORD(v7) = 2 * ((2 * (v7 ^ v23 ^ v7 & v21)) ^ v23 ^ (2 * (v7 ^ v23 ^ v7 & v21)) & v21);
  LODWORD(v7) = 2 * ((2 * (v7 ^ v23 ^ v7 & v21)) ^ v23 ^ (2 * (v7 ^ v23 ^ v7 & v21)) & v21);
  v24 = v22 ^ (2 * (v7 ^ v23 ^ v7 & v21));
  LODWORD(v7) = ((*(v11 + (v2[2] ^ 0x87)) << 8) ^ 0x143F722C) & (v20 ^ 0xA86935C9);
  LODWORD(v9) = *(v9 + (*v2 ^ 9)) - 27;
  v25 = v9 & 0xFFFFFFA7 ^ 0xFFFFFF8F;
  LODWORD(v13) = *(v13 + (v2[9] ^ 0x7CLL)) << 16;
  v26 = ((v18 & 0xAD | v19) ^ 0xB8C19D9) & (v13 ^ 0xFF30FFFF) ^ v13 & 0xFFCFFFFF;
  v27 = v2[7];
  LODWORD(v9) = (((v9 ^ 0x28) & (2 * ((v9 ^ 0x28) & (2 * ((v9 ^ 0x28) & (2 * ((v9 ^ 0x28) & (2 * (((2 * (((2 * v9) & 0x52 | 0x29) & v9)) ^ 0xE) & (v9 ^ 0x28) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25) << 25) ^ (v9 << 24);
  LODWORD(v5) = *(v5 + (v27 ^ 0x2F));
  v28 = (v9 ^ 0xD4FFFFFF) & (v20 & 0x40C080D3 ^ 0xD2E00643 ^ v7) ^ v9 & 0x79000000;
  *(v4 - 120) = v28;
  v29 = ((((v24 << 24) ^ 0x3FFFFFE) & ((v17 << 16) ^ 0xC372EBE6) & 0xC3FFFFFF | (((v24 >> 2) & 0xF) << 26)) ^ 0x1DDB6B8) & (((v10 | 0xFFFFFF0F) & ((v12 << 8) ^ 0x960536B0) | v10 & 0x4F) ^ 0x69FA3E25) ^ ((v10 | 0xFFFFFF0F) & ((v12 << 8) ^ 0x960536B0) & 0x1001A2A1 | v10 & 1);
  v30 = (v14 & 0x5F0000 ^ 0xB5BC87D8 ^ v15) & ~(v5 ^ v27) | (v5 ^ v27) & 0xA7;
  *(v4 - 124) = v30;
  v31 = *(&off_1F5033D40 + (v8 ^ 0x4D6)) - 12;
  HIDWORD(v32) = *&v31[4 * (v17 ^ 0xA1)];
  LODWORD(v32) = HIDWORD(v32);
  v33 = *(&off_1F5033D40 + v8 - 1084) - 12;
  LODWORD(v5) = -219980569 * *&v33[4 * (v24 ^ 0x50)] + 752147925;
  v34 = *(&off_1F5033D40 + (v8 ^ 0x4BD));
  LODWORD(v11) = 690312999 * *(v34 + 4 * (v10 ^ 0x78u)) + 1548508155;
  v35 = *(&off_1F5033D40 + v8 - 1075);
  LODWORD(v12) = -36060539 * *(v35 + 4 * (v12 ^ 0xC9)) - 769797583;
  LODWORD(v7) = ((2 * (v12 & 0x2DE22DCF)) & 0x50041200 | v12 & 0x2DE22DCF) ^ (2 * (v12 & 0x2DE22DCF)) & (v12 ^ 0xDDE73F8F);
  v36 = ((2 * (v12 ^ 0xDDE73F8F)) ^ 0xE00A2480) & (v12 ^ 0xDDE73F8F) ^ (2 * (v12 ^ 0xDDE73F8F)) & 0xF0051240;
  LODWORD(v7) = (v36 ^ 0xE0040000) & (4 * v7) ^ v7;
  v37 = ((4 * (v36 ^ 0x10051240)) ^ 0xC0144900) & (v36 ^ 0x10051240) ^ (4 * (v36 ^ 0x10051240)) & 0xF0051240;
  LODWORD(v7) = v7 ^ 0xF0051240 ^ (v37 ^ 0xC0040000) & (16 * v7);
  v38 = (16 * (v37 ^ 0x30011240)) & 0xF0051240 ^ 0xF0041240 ^ ((16 * (v37 ^ 0x30011240)) ^ 0x512400) & (v37 ^ 0x30011240);
  LODWORD(v7) = (v7 << 8) & 0xF0051200 ^ v7 ^ ((v7 << 8) ^ 0x5124000) & v38;
  LODWORD(v27) = v30 ^ 0xA8E3131F;
  v39 = ((v32 >> 27) - ((2 * (v32 >> 27)) & 0x3E8C9BA) - 2114689827) ^ v5 ^ ((v5 ^ 0x523FB43D) - 2129357288) ^ ((v5 ^ 0x52A2C345) - 2121670288) ^ ((v5 ^ 0x51B651D2) - 2103610375) ^ ((v5 ^ 0x7DFFFB7F) - 1361782442) ^ v11 ^ ((v11 ^ 0x5CAA3B4F) - 15098036) ^ ((v11 ^ 0x772C2AA3) - 727740760) ^ ((v11 ^ 0x8037B5E2) + 595857895) ^ ((v11 ^ 0xF7FDFFF5) + 1414421490) ^ v12 ^ v28 ^ (2 * ((v7 << 16) & 0x70050000 ^ v7 ^ ((v7 << 16) ^ 0x12400000) & ((v38 << 8) & 0x70050000 ^ 0x70050000 ^ ((v38 << 8) ^ 0x5120000) & v38))) ^ 0x8287722D;
  LODWORD(v12) = v39 ^ v30 ^ 0xA8E3131F;
  *(v4 - 152) = v12;
  v40 = v26 ^ 0x821694F ^ v12;
  LODWORD(v12) = v40 ^ v29 ^ 0x1E07FD67;
  HIDWORD(v32) = *&v31[4 * (BYTE2(v12) ^ 0x89)];
  LODWORD(v32) = HIDWORD(v32);
  LODWORD(v7) = 690312999 * *(v34 + 4 * ((v40 ^ v29) ^ 0x59u)) - 527282842;
  LODWORD(v12) = -36060539 * *(v35 + 4 * (BYTE1(v12) ^ 3u)) - 1620999254;
  v41 = -1273066766 - 219980569 * *&v33[4 * (((v40 ^ v29) >> 24) ^ 0x31)];
  LODWORD(v5) = v7 ^ v12 ^ ((v32 >> 27) - ((2 * (v32 >> 27)) & 0x3A31FA18) - 1659306740) ^ ((v7 ^ 0xBF2BEBD2) - 1606002356) ^ ((v7 ^ 0x3C3D2CA1) + 592485945) ^ ((v7 ^ 0x9C7B75EB) - 2095659149) ^ ((v7 ^ 0xFFFFFFFE) - 527282840) ^ v41 ^ ((v12 ^ 0x8E0AB529) - 292238979) ^ ((v12 ^ 0x849236BE) - 468956436) ^ ((v12 ^ 0xE846FF42) - 1999076584) ^ ((v12 ^ 0x7DBFFF7F) + 488735531) ^ ((v41 ^ 0x66578B56) + 766967388) ^ ((v41 ^ 0xDF1A8CA9) - 1795425883) ^ ((v41 ^ 0x7A8C76F2) + 829228032) ^ ((v41 ^ 0x77DFFBFF) + 1010732787) ^ 0xA59E183F;
  LODWORD(v12) = v40 ^ v29 ^ 0x7CFC37B8;
  LODWORD(v7) = v5 ^ v27;
  *(v4 - 156) = v40;
  LODWORD(v27) = v40 ^ v5 ^ v27;
  v42 = v7;
  *(v4 - 160) = v27;
  LODWORD(v27) = v27 ^ 0xA0CCC570;
  LODWORD(v9) = -219980569 * *&v33[4 * (((v12 ^ v27) >> 24) ^ 0xA4)] - 994558407;
  LODWORD(v7) = (v9 ^ 0xB327ADB6) & (2 * (v9 & 0x3B47C1C7)) ^ v9 & 0x3B47C1C7;
  v43 = ((2 * (v9 ^ 0xE3222FB0)) ^ 0xB0CBDCEE) & (v9 ^ 0xE3222FB0) ^ (2 * (v9 ^ 0xE3222FB0)) & 0xD865EE76;
  LODWORD(v7) = (v43 ^ 0x90010C24) & (4 * v7) ^ v7;
  v44 = ((4 * (v43 ^ 0x48242211)) ^ 0x6197B9DC) & (v43 ^ 0x48242211) ^ (4 * (v43 ^ 0x48242211)) & 0xD865EE74;
  LODWORD(v7) = (v44 ^ 0x4005A850) & (16 * v7) ^ v7;
  v45 = ((16 * (v44 ^ 0x98604623)) ^ 0x865EE770) & (v44 ^ 0x98604623) ^ (16 * (v44 ^ 0x98604623)) & 0xD865EE70;
  LODWORD(v7) = v7 ^ 0xD865EE77 ^ (v45 ^ 0x8044E600) & (v7 << 8);
  v46 = (v7 << 16) & 0x58650000 ^ v7 ^ ((v7 << 16) ^ 0x6E770000) & (((v45 ^ 0x58210807) << 8) & 0x58650000 ^ 0x18010000 ^ (((v45 ^ 0x58210807) << 8) ^ 0x65EE0000) & (v45 ^ 0x58210807));
  LODWORD(v7) = 690312999 * *(v34 + 4 * ((v12 ^ v27) ^ 0x59u)) + 1024940139;
  v47 = -2013255466 - 36060539 * *(v35 + 4 * (((v12 ^ v27) >> 8) ^ 0x69u));
  *(v4 - 164) = v12 ^ v27;
  HIDWORD(v32) = *&v31[4 * (((v12 ^ v27) >> 16) ^ 0xA7)];
  LODWORD(v32) = HIDWORD(v32);
  *(v4 - 148) = v39;
  v48 = v39 ^ v5;
  *(v4 - 168) = v48;
  v49 = v9 ^ v7 ^ v47 ^ ((v7 ^ 0xEFF958B3) + 756154152) ^ ((v7 ^ 0x1ED96EB) - 1023069824) ^ ((v7 ^ 0xAC9E69CE) + 1853279835) ^ ((v7 ^ 0x7F9DFFFD) - 1116383126) ^ ((v47 ^ 0x7705E6AA) + 16396676) ^ ((v47 ^ 0x7BE52E0F) + 203094311) ^ ((v47 ^ 0xFB363F8C) - 1932924762) ^ ((v47 ^ 0x7FD6DFFF) + 136906967) ^ ((v32 >> 27) - ((2 * (v32 >> 27)) & 0xFA92CCEA) + 2101962357) ^ (2 * v46) ^ v48 ^ 0x7E7E70E5;
  *(v4 - 176) = v49 ^ v42;
  v50 = v49 ^ v42 ^ 0x75FCDE7E;
  v51 = v50 ^ v12;
  LODWORD(v12) = 690312999 * *(v34 + 4 * ((v50 ^ v12) ^ 0x98u)) - 843019579;
  v52 = -36060539 * *(v35 + 4 * (BYTE1(v51) ^ 3u)) - 1973514000;
  LODWORD(v5) = v51;
  HIDWORD(v32) = *&v31[4 * (BYTE2(v51) ^ 0x63)];
  LODWORD(v32) = HIDWORD(v32);
  v53 = -219980569 * *&v33[4 * (HIBYTE(v51) ^ 0x3B)] + 35638813;
  LODWORD(v7) = (v53 ^ 0xF9E52DF2) & (2 * (v53 & 0xFDE031E3)) ^ v53 & 0xFDE031E3;
  v54 = ((2 * (v53 ^ 0xEA254D74)) ^ 0x2F8AF92E) & (v53 ^ 0xEA254D74) ^ (2 * (v53 ^ 0xEA254D74)) & 0x17C57C96;
  LODWORD(v7) = (v54 ^ 0x7804804) & (4 * v7) ^ v7;
  v55 = ((4 * (v54 ^ 0x10450491)) ^ 0x5F15F25C) & (v54 ^ 0x10450491) ^ (4 * (v54 ^ 0x10450491)) & 0x17C57C94;
  LODWORD(v7) = (v55 ^ 0x17057010) & (16 * v7) ^ v7;
  v56 = ((16 * (v55 ^ 0xC00C83)) ^ 0x7C57C970) & (v55 ^ 0xC00C83) ^ (16 * (v55 ^ 0xC00C83)) & 0x17C57C90;
  LODWORD(v7) = v7 ^ 0x17C57C97 ^ (v56 ^ 0x14454800) & (v7 << 8);
  *(v4 - 172) = v49;
  v70 = v52 ^ v12 ^ ((v12 ^ 0x34332AEE) + 101474261) ^ ((v12 ^ 0xED85AC38) - 541402877) ^ ((v12 ^ 0xB89D7CC) + 968270583) ^ ((v12 ^ 0x1FFFDBDF) + 767602406) ^ ((v52 ^ 0xF696304C) - 2093523132) ^ ((v52 ^ 0xE9949457) - 1674183847) ^ ((v52 ^ 0x6BA3C904) + 503490060) ^ ((v52 ^ 0xFEFFFDEF) - 1956736287) ^ v53 ^ ((v32 >> 27) - ((2 * (v32 >> 27)) & 0xEBF8345E) + 1979456047) ^ v49 ^ (2 * ((v7 << 16) & 0x17C50000 ^ v7 ^ ((v7 << 16) ^ 0x7C970000) & (((v56 ^ 0x3803487) << 8) & 0x17C50000 ^ 0x12810000 ^ (((v56 ^ 0x3803487) << 8) ^ 0x457C0000) & (v56 ^ 0x3803487))));
  v57 = v70 ^ 0x3EFF2A08 ^ v50;
  *(v4 - 184) = v57;
  *(v4 - 180) = v50 ^ v27;
  v58 = v57 ^ 0xE190B6B9 ^ v50 ^ v27;
  *(v4 - 188) = v58;
  v59 = v58 ^ 0x4DE71438 ^ v5;
  HIDWORD(v32) = *&v31[4 * (BYTE2(v59) ^ 0xAC)];
  LODWORD(v32) = HIDWORD(v32);
  LODWORD(v11) = -36060539 * *(v35 + 4 * (BYTE1(v59) ^ 0x19u)) + 516788747;
  LODWORD(v7) = (v11 ^ 0xE0B16DE4) & (2 * (v11 & 0xE1326DF5)) ^ v11 & 0xE1326DF5;
  LODWORD(v27) = ((2 * (v11 ^ 0x22D5BC84)) ^ 0x87CFA2E2) & (v11 ^ 0x22D5BC84) ^ (2 * (v11 ^ 0x22D5BC84)) & 0xC3E7D170;
  LODWORD(v7) = (v27 ^ 0x81C38060) & (4 * v7) ^ v7;
  LODWORD(v27) = ((4 * (v27 ^ 0x40205111)) ^ 0xF9F45C4) & (v27 ^ 0x40205111) ^ (4 * (v27 ^ 0x40205111)) & 0xC3E7D170;
  LODWORD(v7) = (v27 ^ 0x3874140) & (16 * v7) ^ v7;
  LODWORD(v27) = ((16 * (v27 ^ 0xC0609031)) ^ 0x3E7D1710) & (v27 ^ 0xC0609031) ^ (16 * (v27 ^ 0xC0609031)) & 0xC3E7D170;
  LODWORD(v7) = v7 ^ 0xC3E7D171 ^ (v27 ^ 0x2651100) & (v7 << 8);
  v60 = (v7 << 16) & 0x43E70000 ^ v7 ^ ((v7 << 16) ^ 0x51710000) & (((v27 ^ 0xC182C061) << 8) & 0xC3E70000 ^ 0x260000 ^ (((v27 ^ 0xC182C061) << 8) ^ 0xE7D10000) & (v27 ^ 0xC182C061));
  v61 = 690312999 * *(v34 + 4 * (v59 ^ 0xF4u)) + 1163052402;
  LODWORD(v7) = (v61 ^ 0x3288B0EF) & (2 * (v61 & 0xBAAD3A8E)) ^ v61 & 0xBAAD3A8E;
  v62 = ((2 * (v61 ^ 0x468A84E7)) ^ 0xF84F7CD2) & (v61 ^ 0x468A84E7) ^ (2 * (v61 ^ 0x468A84E7)) & 0xFC27BE68;
  LODWORD(v7) = (v62 ^ 0xF8053C40) & (4 * v7) ^ v7;
  v63 = ((4 * (v62 ^ 0x4208229)) ^ 0xF09EF9A4) & (v62 ^ 0x4208229) ^ (4 * (v62 ^ 0x4208229)) & 0xFC27BE68;
  LODWORD(v7) = (v63 ^ 0xF006B820) & (16 * v7) ^ v7;
  v64 = ((16 * (v63 ^ 0xC210649)) ^ 0xC27BE690) & (v63 ^ 0xC210649) ^ (16 * (v63 ^ 0xC210649)) & 0xFC27BE60;
  LODWORD(v7) = v7 ^ 0xFC27BE69 ^ (v64 ^ 0xC023A600) & (v7 << 8);
  *(v4 - 192) = v59;
  v65 = (v7 << 16) & 0x7C270000 ^ v7 ^ ((v7 << 16) ^ 0x3E690000) & (((v64 ^ 0x3C041869) << 8) & 0xFC270000 ^ 0x58010000 ^ (((v64 ^ 0x3C041869) << 8) ^ 0x27BE0000) & (v64 ^ 0x3C041869));
  v66 = 54083842 - 219980569 * *&v33[4 * (HIBYTE(v59) ^ 3)];
  LODWORD(v7) = (v66 ^ 0xFCF43EFF) & (2 * (v66 & 0xFCC6BEFE)) ^ v66 & 0xFCC6BEFE;
  v67 = ((2 * (v66 ^ 0x64F15F5F)) ^ 0x306FC342) & (v66 ^ 0x64F15F5F) ^ (2 * (v66 ^ 0x64F15F5F)) & 0x9837E1A0;
  LODWORD(v7) = (v67 ^ 0x1027C100) & (4 * v7) ^ v7;
  v68 = ((4 * (v67 ^ 0x881020A1)) ^ 0x60DF8684) & (v67 ^ 0x881020A1) ^ (4 * (v67 ^ 0x881020A1)) & 0x9837E1A0;
  LODWORD(v7) = (v68 ^ 0x178080) & (16 * v7) ^ v7;
  v69 = ((16 * (v68 ^ 0x98206121)) ^ 0x837E1A10) & (v68 ^ 0x98206121) ^ (16 * (v68 ^ 0x98206121)) & 0x9837E1A0;
  LODWORD(v7) = v7 ^ 0x9837E1A1 ^ (v69 ^ 0x80360000) & (v7 << 8);
  *(v4 - 196) = v11 ^ v61 ^ v66 ^ ((v32 >> 27) - ((2 * (v32 >> 27)) & 0xCDD4536E) - 420861513) ^ (2 * (v60 ^ v65 ^ (v7 << 16) & 0x18370000 ^ v7 ^ ((v7 << 16) ^ 0x61A10000) & (((v69 ^ 0x1801E1A1) << 8) & 0x98370000 ^ 0x8160000 ^ (((v69 ^ 0x1801E1A1) << 8) ^ 0x37E10000) & (v69 ^ 0x1801E1A1)))) ^ v70 ^ 0x35FA76AA;
  JUMPOUT(0x1D49396C0);
}

uint64_t sub_1D493ABD8@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = *(a3 + v3 + 72);
  v8 = ((2 * v3) & 0x54DC7F98) + (v3 ^ 0xAA6E3FCF) + a1;
  *(v5 + v8) = (HIBYTE(v7) ^ 0x46) - 2 * ((HIBYTE(v7) ^ 0x46) & ((v4 + 52) ^ 0x4D) ^ HIBYTE(v7) & 1) - 126;
  *(v5 + v8 + 1) = (BYTE2(v7) ^ 0x2C) - ((v7 >> 15) & 4) - 126;
  *(v5 + v8 + 2) = (BYTE1(v7) ^ 0x48) - ((v7 >> 7) & 4) - 126;
  *(v5 + v8 + 3) = v7 ^ 0xB;
  return (*(v6 + 8 * (((v3 + 4 < *(a3 + 92)) * a2) ^ v4)))();
}

uint64_t sub_1D493AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = *(v63 + 4 * (v64 - 1));
  *(v63 + 4 * v64) = ((1566083941 * (v66 ^ (v66 >> 30))) ^ *(v63 + 4 * v64)) - v64;
  v67 = 1504884919 * ((~((v65 - 192) | 0x4CE0F52802DA3DC4) + ((v65 - 192) & 0x4CE0F52802DA3DC4)) ^ 0x9F4F506D06E67520);
  *(v65 - 184) = (v64 + 1) ^ v67;
  *(v65 - 176) = v67 ^ 0x26F;
  *(v65 - 192) = v67;
  *(v65 - 160) = v62 + 877067788 - v67;
  *(v65 - 156) = ((v62 + 877067788) ^ 0xF) - v67;
  *(v65 - 168) = -2124587255 - v67 + v62;
  *(v65 - 164) = v67 + v62 + 877067788 - 142;
  v68 = (*(a4 + 8 * (v62 ^ 0xB5C)))(v65 - 192);
  return (*(a62 + 8 * *(v65 - 188)))(v68);
}

uint64_t sub_1D493AE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a17 = &a13;
  a15 = a10;
  a18 = (v18 + 1490) ^ (843532609 * (((&a15 | 0xDB7D613F) - &a15 + (&a15 & 0x24829EC0)) ^ 0x873035BA));
  (*(v19 + 8 * (v18 ^ 0xCAF)))(&a15);
  a16 = a10;
  LODWORD(a15) = (v18 + 1237) ^ (1504884919 * ((((2 * &a15) | 0x1B9C08D0) - &a15 - 231605352) ^ 0xF60DB373));
  v21 = (*(v19 + 8 * (v18 + 3163)))(&a15);
  return (*(v19 + 8 * ((2155 * (HIDWORD(a15) == v20 + v18 + 455 - 1013)) ^ v18)))(v21);
}

uint64_t sub_1D493B44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (((v3 - 2501) | 0x183u) ^ 0xFFFFFFFFFFFFFE60) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (v3 | (4 * (v5 == 0)))))();
}

uint64_t sub_1D493B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, unsigned int a22, uint64_t a23)
{
  v30 = ((2 * (&a19 & 0x167276A0) - &a19 + 1770883420) ^ 0x77AF0409) * v27;
  a23 = a17;
  a22 = (((2 * v24) & 0xE4BCB0FE) + (v24 ^ 0xF25E587F) + ((31 * (v23 ^ 0x34E)) ^ 0x1DBDF05E)) ^ v30;
  a19 = v26 ^ v30;
  a21 = a12;
  v31 = (*(v28 + 8 * v25))(&a19);
  return (*(v28 + 8 * ((1803 * (a20 == v29)) ^ v23)))(v31);
}