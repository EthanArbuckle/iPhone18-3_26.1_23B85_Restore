uint64_t sub_1C21F8788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, char *a15, uint64_t a16, unsigned int a17, int a18)
{
  v22 = 1785193651 * (&a14 ^ 0x13DCEC20);
  a17 = 398562071 - v22;
  a18 = v21 - v22 - 164;
  a14 = &a11;
  a15 = &a13;
  a16 = v18;
  v23 = (*(v19 + 8 * (v21 ^ 0x85D)))(&a14);
  return (*(v19 + 8 * ((124 * (*(v18 + 24) == ((v21 + 598) ^ 0x5FE ^ v20))) ^ v21)))(v23);
}

uint64_t sub_1C21F8948@<X0>(int a1@<W8>)
{
  v4 = v1 + a1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * ((((283 * (v2 ^ 0x881) - 312) ^ (19 * (v2 ^ 0x89E))) * (v5 < 131)) | v2)))();
}

uint64_t sub_1C21F8B80()
{
  v3 = STACK[0x2D0];
  v4 = STACK[0x2D0] - 881;
  v5 = 1380333833 * ((v2 + 0x6BA2BBC0FB451896 - 2 * ((v2 - 192) & 0x6BA2BBC0FB451956)) ^ 0x6047CAEC4517B2DCLL);
  *(v2 - 172) = STACK[0x2D0] - 1316525009 + 1380333833 * ((v2 - 79357802 - 2 * ((v2 - 192) & 0xFB451956)) ^ 0x4517B2DC) + 51;
  *(v2 - 168) = (v3 + 1212454686) ^ (1380333833 * ((v2 - 79357802 - 2 * ((v2 - 192) & 0xFB451956)) ^ 0x4517B2DC));
  *(v2 - 192) = 3 - v5;
  *(v2 - 160) = (v1 + 1) - v5;
  *(v2 - 184) = 1 - 1380333833 * ((v2 - 79357802 - 2 * ((v2 - 192) & 0xFB451956)) ^ 0x4517B2DC);
  *(v2 - 180) = (v4 | 0xB1876FA0) ^ (1380333833 * ((v2 - 79357802 - 2 * ((v2 - 192) & 0xFB451956)) ^ 0x4517B2DC));
  *(v2 - 176) = (v4 ^ 0xB1876FEE) + 1380333833 * ((v2 - 79357802 - 2 * ((v2 - 192) & 0xFB451956)) ^ 0x4517B2DC);
  v6 = (*(v0 + 8 * SLODWORD(STACK[0x2C4])))(v2 - 192);
  return (*(STACK[0x2D8] + 8 * *(v2 - 152)))(v6);
}

uint64_t sub_1C21F8CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  *(v24 - 104) = &a20;
  *(v24 - 112) = &a18;
  *(v24 - 120) = (v21 + 504) ^ (((v24 - 1211569863 - 2 * ((v24 - 120) & 0xB7C8E9B1)) ^ 0x9D03C3CB) * v22);
  v25 = (*(v20 + 8 * (v21 ^ 0xBD0)))(v24 - 120);
  return (*(v20 + 8 * ((14 * (*(v24 - 116) <= v23 + 4 * (((v21 + 450) | 0x92) ^ 0x405u) - 588)) ^ v21)))(v25);
}

uint64_t sub_1C21F8DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = ~v5 + a3;
  v9 = *(v7 + v8 - 15);
  v10 = *(v7 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(a2 + 8 * ((368 * (((v4 - 132) ^ v6) + v5 == v3)) ^ (v4 + 355))))();
}

uint64_t sub_1C21F8E0C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) | v0)))();
}

uint64_t sub_1C21F8E70()
{
  LODWORD(STACK[0x450]) = v0;
  STACK[0x430] -= 432;
  return (STACK[0x3E0])();
}

void sub_1C21F8EA0(uint64_t a1)
{
  v1 = 50899313 * ((-1310607877 - (a1 | 0xB1E1B5FB) + (a1 | 0x4E1E4A04)) ^ 0x64D5607E);
  v2 = *(a1 + 32) + v1;
  v3 = *(a1 + 36) + v1;
  v5 = (v3 & 0x30000000) == 0x10000000 || (v3 & 0x3F000000) == 805306368;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1C21F904C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x314]) = a1;
  v4 = (*(v1 + 8 * (v2 ^ 0xD01)))(v3 + 4, 0);
  v5 = v3[4] - 230117527 - ((2 * v3[4]) & 0xE4915ED2);
  v3[1] = v3[6] - 230117527 - ((v3[6] << (((v2 - 16) & 0xF2) - 113)) & 0xE4915ED2);
  v3[2] = v5;
  v6 = (*(STACK[0x2D8] + 8 * (v2 + 1285)))(v4);
  v3[3] = v6 - 230117527 - ((2 * v6) & 0xE4915ED2);
  v7 = (*(STACK[0x2D8] + 8 * (v2 ^ 0xD1B)))();
  *v3 = v7 - 230117527 - ((2 * v7) & 0xE4915ED2);
  STACK[0x298] = STACK[0x2A0] + 3194537429u;
  return sub_1C21F913C();
}

uint64_t sub_1C21F913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v7 + 4 * (v4 - 1));
  v11 = (1664525 * (v10 ^ (v10 >> 30))) ^ *(v7 + 4 * v4);
  *(v7 + 4 * v4) = v8 + (((*(v6 + 4 * v8) ^ 0x74718CC) - 122099916) ^ ((*(v6 + 4 * v8) ^ 0x4D0BA7C7) - 1292609479) ^ ((*(v6 + 4 * v8) ^ 0xB8041062) + 1207693214)) + 786062566 + (((v11 ^ 0x48088890) - 1956193773) ^ ((v11 ^ 0xFDCD5043) + 1050870466) ^ ((v11 ^ 0xB5C5D8D3) + 1990953554));
  v12 = STACK[0x2C8];
  *(v9 - 184) = STACK[0x2C8] + v5 + 55969056;
  *(v9 - 176) = STACK[0x2B8];
  *(v9 - 168) = v12;
  *(v9 - 160) = ((v5 + 1554362994) ^ 0x61) + v12;
  *(v9 - 152) = v4 + 1 + v12;
  *(v9 - 192) = ((v5 + 1554362994) ^ 0x38) - v12;
  *(v9 - 188) = (v5 + 1554362994) ^ v12;
  v13 = (*(a4 + 8 * (v5 + 1588)))(v9 - 192);
  return (*(STACK[0x2D8] + 8 * *(v9 - 164)))(v13);
}

uint64_t sub_1C21F93A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33)
{
  v36 = (((a33 - 674777710) & 0xF0AE9D33) << (*(v35 - 184) ^ 0xC2)) & ((a33 - 674777710) ^ 0xEC0EDC22) ^ (a33 - 674777710) & 0xF0AE9D33;
  v37 = ((2 * ((a33 - 674777710) ^ 0xED03D424)) ^ 0x3B5A922E) & ((a33 - 674777710) ^ 0xED03D424) ^ (2 * ((a33 - 674777710) ^ 0xED03D424)) & 0x1DAD4916;
  v38 = v37 ^ 0x4A54911;
  v39 = (v37 ^ 0x1090005) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ 0x76B5245C) & v38 ^ (4 * v38) & 0x1DAD4914;
  v41 = (v40 ^ 0x14A50013) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x9084903)) ^ 0xDAD49170) & (v40 ^ 0x9084903) ^ (16 * (v40 ^ 0x9084903)) & 0x1DAD4910;
  v43 = v41 ^ 0x1DAD4917 ^ (v42 ^ 0x18840107) & (v41 << 8);
  v45 = ((a33 - 674777710) ^ (2 * ((v43 << 16) & 0x1DAD0000 ^ v43 ^ ((v43 << 16) ^ 0x49170000) & (((v42 ^ 0x5294807) << 8) & 0x1DAD0000 ^ 0x10A40000 ^ (((v42 ^ 0x5294807) << 8) ^ 0x2D490000) & (v42 ^ 0x5294807))))) == v33 - 637661674 || (((a33 - 110) ^ (2 * v43)) & 0xF) != ((224 * (v33 ^ 0x105)) ^ 0x1CD);
  v46 = *(v34 + 8 * ((35 * v45) ^ v33));
  *(v35 - 188) = -42899;
  return v46();
}

uint64_t sub_1C21F9578@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0xD4) + 106;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((3864 * v4) ^ 0x773u)))(0);
}

uint64_t sub_1C21F9674@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W8>)
{
  v13 = *(v11 + 8);
  v14 = ((2 * (*(v13 + ((((a1 + a6) << 32) + a4) >> 30)) ^ v6)) << ~v10) | ((*(v13 + 4 * (((a1 + a6) << 32) >> ((a2 | a3) - 53))) ^ v6) >> v10);
  *(v13 + 4 * a1) = v14 + v6 - (v7 & (2 * v14));
  return (*(v12 + 8 * (((a1 + 1 == v8) * a5) ^ v9)))();
}

void sub_1C21F96E8(uint64_t a1)
{
  v1 = 1556366573 * ((a1 - 1459571285 - 2 * (a1 & 0xA900B5AB)) ^ 0xCDE49641);
  v2 = **(a1 + 24) - 1539609215;
  v3 = *a1 + v1 + 1889138654;
  v4 = v2 < 0xB7841C73;
  v5 = v2 > v3;
  if (v3 < 0xB7841C73 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

void sub_1C21F981C(uint64_t a1)
{
  v2 = *v1;
  *a1 = 0;
  *(a1 + 8) = 0x1B524F1C1B524F1CLL;
  *(a1 + 16) = 0xAB7705DD517A9D6CLL;
  *(a1 + 24) = -955998424;
  *v2 = a1;
  JUMPOUT(0x1C21F9854);
}

uint64_t sub_1C21F98E4()
{
  v2 = STACK[0x2D0] - 618;
  v3 = STACK[0x3A0];
  STACK[0x348] = *(v1 + 8 * (STACK[0x2D0] - 789));
  v4 = STACK[0x288];
  STACK[0x540] = v3;
  LODWORD(STACK[0x54C]) = 1357394763;
  STACK[0x410] = v4;
  return (*(v1 + 8 * ((108 * (v2 + 726 + (*(v3 + 68) & 0x3Fu) + 1357394763 - 1357395797 < v2 - 328)) ^ v2)))();
}

uint64_t sub_1C21F9904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char *a17, int a18, uint64_t a19, unsigned int a20)
{
  v23 = 1380333833 * ((&a15 & 0xE3376BE | ~(&a15 | 0xE3376BE)) ^ 0x4F9E22CB);
  a20 = v23 + 1603508753;
  a19 = a13;
  a17 = &a11;
  a15 = (v22 - 2013066939) ^ v23;
  a16 = v23 ^ 0x13DF48F4;
  v24 = (*(v21 + 8 * (v22 + 2032)))(&a15);
  return (*(v21 + 8 * (((a18 == v20) * ((v22 ^ 0x1E0) + 466 + 7 * (v22 ^ 0x1E0) + 1194)) ^ v22)))(v24);
}

void sub_1C21F99D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v34 - 104) = a14;
  *(v34 - 112) = (v32 + 1990) ^ (((((v34 - 144) | 0x6B8057DD) + (~(v34 - 144) | 0x947FA822)) ^ 0x785CBBFC) * v33);
  *(v34 - 128) = &a22;
  *(v34 - 120) = &a32;
  *(v34 - 144) = &a22;
  *(v34 - 136) = a13;
  JUMPOUT(0x1C21F9A34);
}

void sub_1C21F9A80()
{
  *(v2 - 152) = v3;
  v4 = *(&off_1F41B25C0 + (v0 ^ 0x401)) - 12;
  v5 = v4[v1[3] ^ 0xDELL] ^ v1[3];
  v6 = *(&off_1F41B25C0 + v0 - 1039) - 4;
  v7 = *(&off_1F41B25C0 + (v0 ^ 0x410));
  v8 = *(v7 + (v1[14] ^ 0x82));
  v9 = *(&off_1F41B25C0 + v0 - 1164) - 8;
  v10 = (v0 ^ 0x3DC ^ (v6[v1[4] ^ 0xF7] + 70)) << 24;
  v11 = v9[v1[5] ^ 0x6DLL] << 16;
  v12 = ((((*(v7 + v1[6]) << 8) ^ 0x413752D5) & (v10 ^ 0x3E77FFD5) | v10 & 0xBE000000) ^ 0x3F52DF51) & (v11 ^ 0xFF16FFDD);
  v13 = v11 & 0x9A0000;
  v14 = (v1[15] + (~(2 * v1[15]) | 0x6D) + 74) ^ v4[v1[15] ^ 0xFDLL];
  v15 = ((v6[v1[8] ^ 0x70] + 70) ^ 0xDDDDDDDD) << 24;
  v16 = (v15 ^ 0x1309FF97) & ((*(v7 + (v1[10] ^ 0x48)) << 8) ^ 0xD7098E97) | v15 & 0x28000000;
  v17 = v9[v1[13] ^ 0xC7];
  v18 = v4[v1[11] ^ 0xD3] ^ v1[11];
  v19 = (v16 ^ 0x51E824BF) & (v18 ^ 0xFFFFFFFA);
  v20 = ((v9[v1[1] ^ 0x40] << 16) ^ 0x5BF7EBCE) & (v5 ^ 0x5BFFFF20) | v5 & 0x31;
  v21 = (v6[v1[12] ^ 0xBDLL] + 70) ^ 0x1B;
  v22 = ((v6[v1[12] ^ 0xBDLL] + 70) ^ 0x1B) << 24;
  v23 = ((((v17 << 16) ^ 0x10497808) & ~v22 | v22 & 0xEFFFFFFF) ^ 0xEB7087F7) & (((v14 ^ 0x213BFF04) & ((v8 << 8) ^ 0x213B68DF) | v14 & 0x20) ^ 0xFB4D538A);
  v24 = ((v17 << 16) ^ 0x10497808) & ~v22 & 0x25890008 | v22 & 0x25890008;
  LODWORD(v9) = (v9[v1[9] ^ 0x7CLL] ^ 0x20) << 16;
  v25 = (v9 & 0x420000 | 0x1005003) ^ ((v18 & 0xD7 | v19) ^ 0x405C7AC5) & ~v9;
  v26 = ((((*(v7 + (v1[2] ^ 0x87)) << 8) ^ 0xE3D0AE83) & (v20 ^ 0xB04D1471) | v20 & 0x182F007C) ^ 0xFBDB53EF) + (((v6[*v1 ^ 9] + 70) ^ 0x85) << 24);
  v27 = (v1[7] - ((2 * v1[7]) & 0x92) + 73) ^ v4[v1[7] ^ 0x2FLL];
  v28 = v23 ^ v24;
  v29 = v27 & 0x62 | (v13 ^ 0x6593F019 ^ v12) & ~v27;
  v30 = *(&off_1F41B25C0 + v0 - 1151);
  v31 = *(v30 + 4 * (v17 ^ 0x4E));
  HIDWORD(v32) = v31 ^ 0x755B2C;
  LODWORD(v32) = v31 ^ 0xEFFFFFFF;
  v33 = *(&off_1F41B25C0 + v0 - 1062) - 12;
  v34 = -219980569 * *&v33[4 * (v21 ^ 0xB4)] + 1360815118;
  v35 = *(&off_1F41B25C0 + (v0 ^ 0x4A0)) - 12;
  v36 = *(&off_1F41B25C0 + v0 - 1054);
  LODWORD(v8) = *(v36 + 4 * (v8 ^ 0x48));
  v37 = 690312999 * *&v35[4 * (v14 ^ 0x78)] - 1113058876;
  *(v2 - 160) = v26;
  *(v2 - 156) = v25;
  *(v2 - 168) = v29;
  *(v2 - 164) = v28;
  v38 = v26 ^ (v32 >> 27) ^ v37 ^ v34 ^ (-36060539 * v8 + 1050623392) ^ 0x1A;
  v39 = v38 ^ v29 ^ 0x3176BCCF;
  *(v2 - 176) = v39;
  v40 = v25 ^ 0xC7BDF7FF ^ v39;
  v41 = *(v30 + 4 * (((v40 ^ v28 ^ 0xBBAE3A34) >> 16) ^ 0x6Bu));
  HIDWORD(v32) = v41 ^ 0x755B2C;
  LODWORD(v32) = v41 ^ 0xEFFFFFFF;
  v42 = (690312999 * *&v35[4 * ((v40 ^ v28) ^ 0x75)] - 1113058876) ^ (v32 >> 27) ^ (-36060539 * *(v36 + 4 * (((v40 ^ v28 ^ 0x3A34) >> 8) ^ 0xAFu)) + 1050623392) ^ (-219980569 * *&v33[4 * (((v40 ^ v28) >> 24) ^ 0x9A)] + 1360815118);
  *(v2 - 184) = v40 ^ v28;
  *(v2 - 180) = v40;
  *(v2 - 172) = v38;
  *(v2 - 188) = v42 ^ v29 ^ 0x3176BCCF;
  JUMPOUT(0x1C21FA694);
}

uint64_t sub_1C21FBEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = v40 + 762494164;
  (*(a3 + 8 * (v43 + 1831)))(a21 + a22, 0x100004077774924);
  v44 = (*(a40 + 8 * (v43 + 1829)))();
  *v41 = v44;
  v45 = 1812433253 * (((((v44 >> 30) | 0xC492A288) ^ v44 ^ 0xCF68AFCF) + 815222833) ^ ((((v44 >> 30) | 0xC492A288) ^ v44 ^ 0x1C86E7B2) - 478603186) ^ ((((v44 >> 30) | 0xC492A288) ^ v44 ^ 0x177CEAF5) - 394062581));
  v41[1] = v42 + 1 + v45;
  return (*(a40 + 6960))(v45, 1, *(a40 + 6960), a40, 1812433253, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_1C21FC158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v6 = ((((STACK[0x270] - v4) | (v4 - STACK[0x270])) >> 31) ^ 0x7FFFFFFF) + ((v5 - 881) ^ v4);
  (*(a4 + 8 * (v4 + 2429)))(STACK[0x2A0]);
  JUMPOUT(0x1C21FC1C0);
}

uint64_t sub_1C21FC270(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = a3 + v41;
  (*(a2 + 8 * (a3 + v41 + 1831)))(a20 + a21, 0x100004077774924);
  v43 = (*(a40 + 8 * (v42 + 1829)))();
  *v40 = v43;
  return sub_1C21FC308(v43, 978275095, 2011353604, 2235024498, 4074051186, 3212349287, 1745051063, 88, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1C21FC3F4@<X0>(uint64_t a1@<X2>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v44 = (v43 + 4 * a3);
  v45 = v41 & 0x80000000;
  v46 = a3 + 1;
  v47 = *(v43 + 4 * v46);
  v48 = v44[397] ^ ((v47 & (((v40 + 83139653) & 0xFB0B60FB) + 2147483396) | v45) >> 1);
  *v44 = (v48 + v42 - (a2 & (2 * v48))) ^ *(&a40 + (v47 & 1));
  return (*(a1 + 8 * ((94 * (v46 == 227)) ^ v40)))();
}

uint64_t sub_1C21FC478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = (((((v21 - 136) | 0x3130BBE) ^ 0xFFFFFFFE) - (~(v21 - 136) | 0xFCECF441)) ^ 0xD627DE3B) * v19;
  *(v21 - 128) = v22 + (v18 ^ 0x3BCBADFD) + (((v17 + 584992581) & 0xDD21B93E ^ 0x77975AD6) & (2 * v18)) - 167911776;
  *(v21 - 124) = v17 - v22 + 1646;
  *(v21 - 136) = &a17;
  v23 = (*(v20 + 8 * (v17 + 2290)))(v21 - 136);
  return sub_1C21FC520(v23);
}

uint64_t sub_1C21FC520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 136) = (v18 + 782) ^ (((((v19 - 136) | 0x9C044419) - (v19 - 136) + ((v19 - 136) & 0x63FBBBE0)) ^ 0xB6CF6E63) * v16);
  *(v19 - 128) = a16;
  *(v19 - 120) = a14;
  v20 = (*(v17 + 8 * (v18 ^ 0x8BE)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 132) > 0xEAB5317u) * ((37 * ((v18 - 760959789) & 0x2D5B5735 ^ 0x532)) ^ 0x163)) ^ v18)))(v20);
}

uint64_t sub_1C21FC6A8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  STACK[0x448] = v5;
  v19 = (&STACK[0x570] + v3 + (a1 ^ 0xFFFFFFFFFFFFFA77));
  *v19 = 0x9595959595959595;
  v19[1] = 0x6A6A6A6A6C6A6A78;
  v8 = 1504884919 * ((v6 - 1971246024 - 2 * ((v6 - 192) & 0x8A812CF8)) ^ 0x71429BE3);
  *(v6 - 188) = v8 + 1334789904;
  *(v6 - 184) = v4 - v8 + 1986157273;
  (*(v7 + 8 * (v4 ^ 0xA4E)))(v6 - 192);
  LODWORD(STACK[0x484]) = 1308995137;
  v9 = (*(STACK[0x2D8] + 8 * (v4 + 1451)))(336, 0x100004077774924);
  v10 = STACK[0x2D8];
  STACK[0x3C8] = v9;
  return (*(v10 + 8 * ((((((v4 - 923) ^ (v9 == 0)) & 1) == 0) * (v4 ^ 0x431)) ^ v4)))(v9, v11, v12, v13, v14, v15, v16, v17, a2, a3);
}

void sub_1C21FC96C()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1C21FC980);
}

uint64_t sub_1C21FCA60@<X0>(unsigned int a1@<W0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v11 = a1 < v8;
  *(a5 + a6) = *(a4 + v6) + (a3 | ~(2 * *(a4 + v6))) + 107;
  if (v11 == v6 + 1 > v9)
  {
    v11 = ((5 * (v7 ^ a2)) ^ (v8 + 16)) + v6 < a1;
  }

  return (*(v10 + 8 * (((16 * !v11) | (32 * !v11)) ^ v7)))();
}

uint64_t sub_1C21FCB60()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1C21FCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40)
{
  v46 = v45 ^ (v45 - 779);
  if (((((~(v45 - 762494161) + v43) ^ (v41 - (v45 - 762494161))) - 1) & ((v45 - 762494161) - v43)) <= (v46 ^ 0xFFFFFFFFFFFFFAE2))
  {
    v47 = v42;
  }

  else
  {
    v47 = v42 + 1;
  }

  *a40 ^= 0xCC330801 ^ (a29 - (a31 << v47));
  return (*(a4 + 8 * (((((v46 + 607171363) | 0x9420494) ^ 0x2D72BC9E) * (v44 == 1)) ^ v46)))();
}

uint64_t sub_1C21FD030()
{
  v3 = *(v0 + 16) - 1585805994;
  v4 = *(v0 + 12) - 677194842;
  v5 = (v3 < 2 * (v1 ^ 0x178) - 218817424) ^ (v4 < 0xF2F522C2);
  v6 = v3 < v4;
  if (v5)
  {
    v7 = v4 < 0xF2F522C2;
  }

  else
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((1245 * v7) ^ v1)))();
}

void sub_1C21FD0D0(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3 = (v8 + 498) ^ (1388665877 * ((((&a3 | 0x11A02C2) ^ 0xFFFFFFFE) - (~&a3 | 0xFEE5FD3D)) ^ 0x73489FD1));
  a4 = a1;
  a5 = v7;
  a6 = v7;
  (*(v6 + 8 * (v8 + 1124)))(&a3);
  JUMPOUT(0x1C21FD138);
}

uint64_t sub_1C21FD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, char a16, int *a17, unsigned int a18, uint64_t a19)
{
  a17 = &a14;
  a19 = a12;
  a18 = (v19 + 564) ^ (143681137 * ((&a16 & 0xB5CF5D7B | ~(&a16 | 0xB5CF5D7B)) ^ 0x2B0A15CC));
  v21 = (*(v20 + 8 * (v19 ^ 0xF93)))(&a16);
  return (*(v20 + 8 * (((a14 == -955998424) * (v19 - 2124587470 + ((v19 + 18618731) | 0x804144C7) - 45795476)) ^ v19)))(v21);
}

uint64_t sub_1C21FD23C@<X0>(int a1@<W8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(v1 + v7);
  return (*(v6 + 8 * ((3568 * (v7 == ((v4 - v2 - 1490) ^ 0x120))) ^ (a1 + v4 + 1320))))();
}

uint64_t sub_1C21FD2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14)
{
  a14 = (1388665877 * (&a13 ^ 0x8DAD62EC)) ^ 0xDFABAF92;
  v17 = (*(v15 + 19728))(&a13);
  return (*(v15 + 8 * ((1985 * (a13 == ((v14 - 1678) ^ v16))) ^ 0x153u)))(v17);
}

uint64_t sub_1C21FD3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x21C]) = 0;
  LODWORD(STACK[0x220]) = 0;
  v6 = ((&STACK[0x314] ^ 0x7A75DDDFF0FFB77FLL) - 0x7A75DDDFF0FFB77FLL + ((2 * &STACK[0x314]) & 0xF4EBBBBFE1FF6EF8)) % 0x25;
  STACK[0x208] = v6 ^ 0xFAB857E9FEB9F5F7 ^ (v4 - 1597522056) & 0x5F383E5F;
  STACK[0x200] = ((2 * v6) & 0x5E) + 0x547A81601460821;
  v7 = STACK[0x2D0];
  LODWORD(STACK[0x244]) = STACK[0x2D0] - 1607230952;
  LODWORD(STACK[0x240]) = v7 ^ 0x2E1;
  STACK[0x250] = v5 ^ 0x307B8B2714AB9678;
  v8 = 1388665877 * ((((2 * v5) | 0x3E7D9CEFAE120A26) - v5 + 0x60C1318828F6FAEDLL) ^ 0xAA445E385AA467FFLL);
  LODWORD(STACK[0x2C4]) = v7 ^ 0xA2A;
  LODWORD(STACK[0x294]) = v7 ^ 0x3F5;
  STACK[0x2C8] = v8;
  STACK[0x2B8] = 623 - v8;
  return sub_1C21FD8F0(a1, 0, a3, a4, 956024049);
}

uint64_t sub_1C21FD8F0@<X0>(int a1@<W5>, int a2@<W8>)
{
  STACK[0x430] += 2432;
  LODWORD(STACK[0x4BC]) = a1;
  v4 = *(v2 + 8 * (a2 - 476));
  v5 = *(v4 - 8);
  v4 -= 8;
  v6 = *(v3 + 8 * (((v5 == ((a2 - 845117993) & 0x325F7EBE) - 1710) * (a2 + 1129)) ^ a2));
  STACK[0x258] = v4 + 36;
  STACK[0x268] = v4 + 20;
  STACK[0x260] = v4 + 4;
  STACK[0x238] = *(v2 + 8 * (a2 ^ 0x213));
  return v6();
}

uint64_t sub_1C21FDA94@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x2A4] + a2 + 72);
  v6 = ((2 * a2) & 0xBEEDDFF8) + (a2 ^ 0x5F76EFFE) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0x3E) - 2 * ((HIBYTE(v5) ^ 0x3E) & (((v3 + 26) & 0x7E) + 69) ^ HIBYTE(v5) & 1) + 106;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x7A) - 2 * ((BYTE2(v5) ^ 0x7A) & 0xEE ^ BYTE2(v5) & 4) + 106;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0xF9) - ((2 * (BYTE1(v5) ^ 0xF9)) & 0xD4) + 106;
  *(a1 + v6 + 3) = v5 ^ 0x31;
  return (*(v4 + 8 * ((3570 * (a2 + 4 < LODWORD(STACK[0x300]))) ^ v3)))();
}

uint64_t sub_1C21FDBB4@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 == 0) | (16 * (v5 == 0))) ^ (v2 - 710))))();
}

uint64_t sub_1C21FDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, _BYTE *a11, uint64_t a12, int a13, char a14, int a15, unsigned int a16, char *a17, unsigned int a18, _BYTE *a19)
{
  a17 = &a10;
  a19 = a11;
  a18 = (v19 + 315) ^ (143681137 * (((&a15 | 0x39F26DD0) - (&a15 & 0x39F26DD0)) ^ 0x58C8DA98));
  (*(v20 + 8 * (v19 + 408)))(&a15);
  a17 = &a14;
  a19 = a11;
  a18 = (v19 + 315) ^ (143681137 * (&a15 ^ 0x613AB748));
  (*(v20 + 8 * (v19 ^ 0xEA8)))(&a15);
  a17 = a11;
  a16 = v19 - 1037613739 * ((&a15 + 2110073153 - 2 * (&a15 & 0x7DC52941)) ^ 0xACC7043E) - 332;
  v22 = (*(v20 + 8 * (v19 + 428)))(&a15);
  return (*(v20 + 8 * ((a15 == ((v19 - v21 + 77) ^ 0x2693D72F)) | v19)))(v22);
}

uint64_t sub_1C21FE0AC@<X0>(int a1@<W8>)
{
  v4 = 1388665877 * ((v3 - 168) ^ 0x357A904F8DAD62ECLL);
  *(v3 - 128) = ((a1 + 336830173) ^ 0x33) - v4;
  *(v3 - 136) = v4 + v1;
  *(v3 - 144) = v4;
  *(v3 - 140) = (a1 + 336830244) ^ v4;
  *(v3 - 148) = a1 + 336830173 + v4;
  *(v3 - 160) = v4 ^ 0x1C4285AD;
  *(v3 - 168) = a1 - v4 + 1699922545;
  v5 = (*(v2 + 8 * (a1 + 2366)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 152)))(v5);
}

uint64_t sub_1C21FE164()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

void sub_1C21FE234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20)
{
  v24 = 143681137 * ((((v23 - 144) | 0xB80523E3) - ((v23 - 144) & 0xB80523E3)) ^ 0xD93F94AB);
  *(v23 - 144) = v21;
  *(v23 - 128) = a20;
  *(v23 - 136) = v20 - v24 + 1201;
  *(v23 - 132) = (((v20 + 975754486) & 0xC5D728FF ^ 0xA2BDA651) + a18) ^ v24;
  (*(v22 + 8 * (v20 ^ 0xBF6)))(v23 - 144);
  JUMPOUT(0x1C21FE2CCLL);
}

uint64_t sub_1C21FE320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, char *a15, int a16, uint64_t a17, unsigned int a18)
{
  v21 = 1380333833 * ((2 * (&a13 & 0x6C7242E0) - &a13 - 1819427560) ^ 0x2DDF1692);
  a18 = v21 + 1603508753;
  a17 = a12;
  a15 = &a10;
  a13 = (v20 - 2013066769) ^ v21;
  a14 = v21 ^ 0xC4499BFC;
  v22 = (*(v18 + 8 * (v20 ^ 0x99A)))(&a13);
  return (*(v18 + 8 * (((a16 == v19) * (v20 + 1484)) ^ v20)))(v22);
}

void sub_1C21FE46C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, uint64_t a63)
{
  STACK[0x2A8] += 16;
  v71 = LODWORD(STACK[0x210]) ^ 0x75A;
  v72 = (LODWORD(STACK[0x2A0]) << 24) | (a62 << 8) | (a60 << 16) | a71;
  LODWORD(STACK[0x278]) = a58 ^ 0x618A362B;
  LODWORD(STACK[0x270]) = a3 ^ v71 ^ 0x8D297704;
  LODWORD(STACK[0x230]) = a56 ^ 0xAEFF8C91;
  LODWORD(STACK[0x248]) = __ROR4__(__ROR4__(v72 ^ 0xC35F9D00, 22) ^ 0xA2EBB8AD, 10) ^ 0x4F669259;
  STACK[0x288] = a2 + 16;
  JUMPOUT(0x1C21F2638);
}

uint64_t sub_1C21FE534@<X0>(int a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  a3.n128_u16[0] = -11052;
  a3.n128_u8[2] = -44;
  a3.n128_u8[3] = -44;
  a3.n128_u8[4] = -44;
  a3.n128_u8[5] = -44;
  a3.n128_u8[6] = -44;
  a3.n128_u8[7] = -44;
  a4.n128_u16[0] = 27242;
  a4.n128_u8[2] = 106;
  a4.n128_u8[3] = 106;
  a4.n128_u8[4] = 106;
  a4.n128_u8[5] = 106;
  a4.n128_u8[6] = 106;
  a4.n128_u8[7] = 106;
  return sub_1C21FE578(v4 - 7, ((a1 + 568260752) & 0xDE21073D) - 406, a2 - 7, (((a1 + 568260752) & 0xDE21073D) - 406) ^ 0x1AELL, 82, a3, a4);
}

uint64_t sub_1C21FE6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v11 - 578) | 0x444) - 1228)) | v11)))();
}

void sub_1C21FE8C0(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_1C21FEA1C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v4 - 1104351873) & 0xBBF36FFD ^ 0x287)) ^ (a2 + v4 + 771))))();
}

void sub_1C21FEA68()
{
  *v6 = *v2;
  *v5 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x1B524F1C1B524F1CLL;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) & (((v0 - 1813) | 0x88A) - 2268);
  *(v2 + 16) = 1366990188;
  *(v2 + 20) = v4;
  *(v7 + 40) = v3;
}

uint64_t sub_1C21FEB44()
{
  v4 = v1 < 0xCE65C9DA;
  v5 = v0 + 1;
  if (v4 == v5 > ((37 * (v2 ^ 0x12Eu) - 3462777373) ^ (v2 - 114)))
  {
    v4 = v5 + 3462777306u < v1;
  }

  return (*(v3 + 8 * ((26 * v4) ^ v2)))();
}

uint64_t sub_1C21FEBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14)
{
  a14 = (1388665877 * (((&a13 | 0xDB556954) - (&a13 & 0xDB556954)) ^ 0x56F80BB8)) ^ 0xDFABAF92;
  v16 = (*(v15 + 19728))(&a13);
  return (*(v15 + 8 * ((1217 * (a13 == v14)) ^ 0x36Bu)))(v16);
}

uint64_t sub_1C21FEC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char *a17, int a18, uint64_t a19, unsigned int a20)
{
  v24 = 1380333833 * (((&a15 | 0x7EC039D5) - (&a15 & 0x7EC039D5)) ^ 0xC092925F);
  a15 = (v21 - 2013066862) ^ v24;
  a16 = v24 ^ 0x26E24887;
  a20 = v24 + (v23 ^ 0xDF9B9B7E) + (((v21 + 12947) & 0x7FF ^ 0x3D0) & (2 * v23)) + 2146958994;
  a17 = &a11;
  a19 = a13;
  v25 = (*(v22 + 8 * (v21 | 0x83Du)))(&a15);
  return (*(v22 + 8 * (((a18 == v20) * (((v21 - 241) | 0x82) ^ 0xDC)) ^ v21)))(v25);
}

uint64_t sub_1C21FED84(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  a3.n128_u16[0] = -11052;
  a3.n128_u8[2] = -44;
  a3.n128_u8[3] = -44;
  a3.n128_u8[4] = -44;
  a3.n128_u8[5] = -44;
  a3.n128_u8[6] = -44;
  a3.n128_u8[7] = -44;
  a4.n128_u16[0] = 27242;
  a4.n128_u8[2] = 106;
  a4.n128_u8[3] = 106;
  a4.n128_u8[4] = 106;
  a4.n128_u8[5] = 106;
  a4.n128_u8[6] = 106;
  a4.n128_u8[7] = 106;
  return sub_1C21FEDA4(a1, a2, 135, a6, 1500, a3, a4);
}

void sub_1C21FEEF8()
{
  v0 = STACK[0x270];
  *(v0 + 1560) = *STACK[0x328];
  *(v0 + 1552) = *(STACK[0x308] - 0x6121A80D7407ED76);
  v1 = STACK[0x248];
  v2 = STACK[0x3F8];
  *(*STACK[0x3F8] + 488) = *(STACK[0x248] + 8);
  *(*v2 + 480) = *v1;
  JUMPOUT(0x1C21FEFA4);
}

uint64_t sub_1C21FEFE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v29 = v26 | 0x180;
  v30 = a1[5];
  v37 = a1[4];
  v31 = a1[2];
  v32 = v31[1];
  v33 = (v26 | 0x180) + 1824;
  *(v28 - 112) = v33 ^ (1785193651 * ((((v28 - 144) | 0xC58F93C9) - ((v28 - 144) & 0xC58F93C9)) ^ 0xD6537FE9));
  *(v28 - 104) = v31;
  *(v28 - 144) = v32;
  *(v28 - 136) = v30;
  *(v28 - 128) = &a24;
  *(v28 - 120) = a2;
  (*(v27 + 8 * ((v26 | 0x180) + 1956)))(v28 - 144);
  *(v28 - 144) = v29 - 1504884919 * ((v28 - 144) ^ 0xFBC3B71B) + 369;
  *(v28 - 136) = &a12;
  *(v28 - 128) = v31;
  *(v28 - 120) = &a24;
  *(v28 - 112) = v30;
  (*(v27 + 8 * (v29 + 1973)))(v28 - 144);
  *(v28 - 112) = v33 ^ (1785193651 * ((((v28 - 144) | 0xE9F67934) - ((v28 - 144) & 0xE9F67934)) ^ 0xFA2A9514));
  *(v28 - 104) = v31;
  *(v28 - 144) = &a24;
  *(v28 - 136) = v30;
  *(v28 - 128) = &a10;
  *(v28 - 120) = &a12;
  (*(v27 + 8 * (v29 + 1956)))(v28 - 144);
  *(v28 - 104) = v31;
  *(v28 - 144) = &a10;
  *(v28 - 136) = v30;
  *(v28 - 112) = v33 ^ (1785193651 * ((((v28 - 144) | 0xCD100AD6) - (v28 - 144) + ((v28 - 144) & 0x32EFF528)) ^ 0xDECCE6F6));
  *(v28 - 128) = &a18;
  *(v28 - 120) = &a12;
  (*(v27 + 8 * (v29 ^ 0x864)))(v28 - 144);
  *(v28 - 112) = v33 ^ (1785193651 * ((-1528289165 - ((v28 - 144) | 0xA4E82873) + ((v28 - 144) | 0x5B17D78C)) ^ 0x48CB3BAC));
  *(v28 - 104) = v31;
  *(v28 - 144) = &a18;
  *(v28 - 136) = v30;
  *(v28 - 128) = &a20;
  *(v28 - 120) = &a12;
  (*(v27 + 8 * (v29 + 1956)))(v28 - 144);
  *(v28 - 144) = &a20;
  *(v28 - 136) = v30;
  *(v28 - 104) = v31;
  *(v28 - 128) = &a14;
  *(v28 - 120) = &a12;
  *(v28 - 112) = v33 ^ (1785193651 * ((v28 - 1075359130 - 2 * ((v28 - 144) & 0xBFE752F6)) ^ 0xAC3BBED6));
  (*(v27 + 8 * (v29 + 1956)))(v28 - 144);
  *(v28 - 144) = &a14;
  *(v28 - 136) = v30;
  *(v28 - 104) = v31;
  *(v28 - 112) = v33 ^ (1785193651 * ((2 * ((v28 - 144) & 0x27F97488) - (v28 - 144) + 1476823923) ^ 0x4BDA6753));
  *(v28 - 128) = &a26;
  *(v28 - 120) = &a12;
  (*(v27 + 8 * (v29 + 1956)))(v28 - 144);
  *(v28 - 112) = v33 ^ (1785193651 * ((((v28 - 144) ^ 0x96CC74B4) & 0xCFDB54D4 | ~((v28 - 144) ^ 0x96CC74B4 | 0xCFDB54D4)) ^ 0xB53433BF));
  *(v28 - 136) = v30;
  *(v28 - 128) = &a22;
  *(v28 - 120) = &a12;
  *(v28 - 144) = &a26;
  *(v28 - 104) = v31;
  (*(v27 + 8 * (v29 ^ 0x864)))(v28 - 144);
  *(v28 - 144) = &a22;
  *(v28 - 136) = v30;
  *(v28 - 104) = v31;
  *(v28 - 128) = &a12;
  *(v28 - 120) = &a12;
  *(v28 - 112) = v33 ^ (1785193651 * ((((v28 - 144) | 0xA8D87DF8) - ((v28 - 144) & 0xA8D87DF8)) ^ 0xBB0491D8));
  (*(v27 + 8 * (v29 + 1956)))(v28 - 144);
  v34 = *v31;
  *(v28 - 128) = v29 + 210068311 * ((v28 - 696618219 - 2 * ((v28 - 144) & 0xD67A73A5)) ^ 0x44AC4C01) + 1197;
  *(v28 - 144) = v34;
  *(v28 - 136) = &a16;
  (*(v27 + 8 * (v29 ^ 0x893)))(v28 - 144);
  *(v28 - 144) = (v29 + 1040) ^ (1556366573 * ((((v28 - 144) | 0x6AD39A82) - (v28 - 144) + ((v28 - 144) & 0x952C6578)) ^ 0xE37B968));
  *(v28 - 136) = v37;
  v35 = (*(v27 + 8 * (v29 ^ 0x843)))(v28 - 144);
  return (*(v27 + 8 * ((999 * (*(v28 - 140) + ((v29 - 133) ^ 0xF95610D4) > 0x7FFFFFFE)) ^ v29)))(v35);
}

uint64_t sub_1C21FF4B0(uint64_t a1, int a2)
{
  v5 = v4 - 869603647;
  v6 = v5 < -1544895278;
  v7 = a2 - 869603647 < v5;
  if (v6 != a2 - 869603647 < ((v3 - 1024725223) & 0x3D140CFF ^ 0xA3EAC07C))
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((49 * ((((v3 + 1) ^ v7) & 1) == 0)) ^ v3)))();
}

uint64_t sub_1C21FF700@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7)
{
  v11 = (&a3 ^ 0xD1022D7F) * a1;
  a6 = (v10 + 89) ^ v11;
  a7 = v11 + 744791722;
  a5 = -652246338 - v11;
  a3 = &a2;
  a4 = v7;
  v12 = (*(v8 + 8 * (v10 ^ 0x821)))(&a3);
  return (*(v8 + 8 * ((1087 * (*(v7 + 24) == ((v10 + 1346) ^ (v9 + 292)))) ^ v10)))(v12);
}

uint64_t sub_1C21FF81C(uint64_t a1, uint64_t a2)
{
  v2 = &v8 ^ qword_1EBF39C30 ^ qword_1EBF39C20;
  qword_1EBF39C30 = 410816321 * v2 + 0x758B56274E326B3BLL;
  qword_1EBF39C20 = 410816321 * (v2 ^ 0x265DD2AD758AD77BLL);
  v3 = *(a2 + 4);
  v4 = 65 * ((65 * v2 + 59) ^ 0x7B ^ qword_1EBF39C20);
  v5 = *(&off_1F41B25C0 + (v4 ^ byte_1C2349510[byte_1C23445D0[v4] ^ 0x2E]) - 111) - 8;
  if (v3 == 1308994804)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 1308994811)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_1C21FFB78(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1C21FFCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = (1388665877 * (((&a15 | 0xA71E15DB) - &a15 + (&a15 & 0x58E1EA20)) ^ 0x2AB37737)) ^ 0xDFABAF92;
  v18 = (*(v17 + 19728))(&a15);
  return (*(v17 + 8 * ((3522 * (a15 == -955998424)) ^ v16)))(v18);
}

uint64_t sub_1C21FFE48@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v3 = vmovl_u8(a2).u64[0];
  return sub_1C21FFE70(770, COERCE_DOUBLE(vuzp1_s8(v3, v3)));
}

uint64_t sub_1C21FFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, unsigned int a49)
{
  v50 = STACK[0x2F0];
  v51 = *(STACK[0x2F0] + 96);
  if (v51 == 2)
  {
    return (*(v49 + 8 * (((*(v50 + 92) != 0) * (a48 - 512)) ^ (a5 + 826))))(a1, a2, a3, 876);
  }

  if (v51 == 1)
  {
    return (*(v49 + 8 * ((11 * (((a5 ^ (*(v50 + 92) == 0)) & 1) == 0)) ^ (a5 - 480))))(1510, a49, 3455047039, 876);
  }

  STACK[0x350] = 91;
  *(v50 + 91) = (&STACK[0x350] ^ 0xBA) * (&STACK[0x350] + 17);
  return (*(v49 + 8 * ((42 * (STACK[0x350] == 0)) ^ (a5 + 301))))(1510, a49, 3455047039, 876);
}

uint64_t sub_1C21FFFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a15 = v17 + 210068311 * ((&a13 & 0x787D58E | ~(&a13 | 0x787D58E)) ^ 0x6AAE15D5) - 1047;
  a13 = &a11;
  v18 = (*(v16 + 8 * (v17 + 442)))(&a13);
  return (*(v16 + 8 * (((a14 == ((v17 - 1160) ^ (v15 - 806))) * (v17 + 2069)) ^ v17)))(v18);
}

uint64_t sub_1C2200214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  *(v6 - 128) = v3 - 300;
  *(v6 - 112) = veorq_s8(*v8, xmmword_1C2349920);
  *(v6 - 144) = v5;
  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v12 = *(v7 + 8 * ((19 * v11) ^ v3));
  *(v6 - 132) = -42900;
  return v12(a1, a2, a3);
}

void sub_1C2200268(uint64_t a1)
{
  v1 = *(a1 + 16) + 1556366573 * (((a1 | 0xEB1EF657) - (a1 & 0xEB1EF657)) ^ 0x8FFAD5BD);
  __asm { BRAA            X9, X17 }
}

void sub_1C220033C(uint64_t a1)
{
  v2 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39A30) ^ 0x7B)) ^ byte_1C2349510[byte_1C23445D0[(65 * ((qword_1EBF39C20 + dword_1EBF39A30) ^ 0x7B))] ^ 0x2E]) - 133);
  v3 = 65 * ((qword_1EBF39C20 - *v2) ^ 0x7B);
  v4 = *(&off_1F41B25C0 + (*(off_1F41B2A78 + (*(off_1F41B2770 + v3 - 8) ^ 0xB1u) - 4) ^ v3) - 132);
  v5 = 410816321 * ((*v4 - *v2) ^ &v7 ^ 0x265DD2AD758AD77BLL);
  *v2 = v5;
  *v4 = v5;
  LODWORD(v4) = *v2;
  v6 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39A30) ^ 0x7B)) ^ byte_1C23446D0[byte_1C2340A30[(65 * ((qword_1EBF39C20 + dword_1EBF39A30) ^ 0x7B))] ^ 0x42]) - 105) - 8;
  (*&v6[8 * (*(off_1F41B2830 + (*(off_1F41B2968 + (65 * ((v5 - v4) ^ 0x7B)) - 8) ^ 0x32u) - 4) ^ (65 * ((v5 - v4) ^ 0x7B))) + 17784])(*(&off_1F41B25C0 + (*(off_1F41B2A10 + (*(off_1F41B2BA0 + (65 * ((v5 + v4) ^ 0x7B)) - 8) ^ 0xB9u) - 8) ^ (65 * ((v5 + v4) ^ 0x7B))) + 1), sub_1C21D5590);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1C220052C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, int a18, int a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27)
{
  v28.n128_u64[0] = 0xD4D4D4D4D4D4D4D4;
  v28.n128_u64[1] = 0xD4D4D4D4D4D4D4D4;
  v29.n128_u64[0] = 0x6B6B6B6B6B6B6B6BLL;
  v29.n128_u64[1] = 0x6B6B6B6B6B6B6B6BLL;
  return (*(v27 + 8 * (((((a19 - 1763378999) & 0x691B0FDF) - 1747) * (a16 < 0xFFFFFFFE)) ^ a19)))(2298125881, 1534365540, a22, a27, a8, 3407958421, 4046724885, 2760601760, a1, a2, a3, v28, v29);
}

uint64_t sub_1C2200614()
{
  v0.n128_u64[0] = 0xD4D4D4D4D4D4D4D4;
  v0.n128_u64[1] = 0xD4D4D4D4D4D4D4D4;
  v1.n128_u64[0] = 0x6B6B6B6B6B6B6B6BLL;
  v1.n128_u64[1] = 0x6B6B6B6B6B6B6B6BLL;
  return sub_1C2200628(v0, v1);
}

uint64_t sub_1C2200628@<X0>(int a1@<W2>, int a2@<W5>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v11 = (v8 + v7 + a3);
  v12 = vaddq_s8(vaddq_s8(*(v10 + v7 + 16), a5), vmvnq_s8(vandq_s8(vaddq_s8(*(v10 + v7 + 16), *(v10 + v7 + 16)), a4)));
  *v11 = vaddq_s8(vaddq_s8(*(v10 + v7), a5), vmvnq_s8(vandq_s8(vaddq_s8(*(v10 + v7), *(v10 + v7)), a4)));
  v11[1] = v12;
  return (*(v9 + 8 * ((56 * (v7 + (v6 ^ (a1 + 1747)) - 1741 != v5)) ^ (a2 + v6 + 800))))();
}

_BYTE *sub_1C22006CC(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

Class initICUserIdentity()
{
  if (iTunesCloudLibrary_sOnce != -1)
  {
    initICUserIdentity_cold_1();
  }

  result = objc_getClass("ICUserIdentity");
  classICUserIdentity = result;
  getICUserIdentityClass = ICUserIdentityFunction;
  return result;
}

void *__iTunesCloudLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/iTunesCloud.framework/iTunesCloud", 2);
  iTunesCloudLibrary_sLib = result;
  return result;
}

Class initICMusicSubscriptionStatusMonitor()
{
  if (iTunesCloudLibrary_sOnce != -1)
  {
    initICUserIdentity_cold_1();
  }

  result = objc_getClass("ICMusicSubscriptionStatusMonitor");
  classICMusicSubscriptionStatusMonitor = result;
  getICMusicSubscriptionStatusMonitorClass = ICMusicSubscriptionStatusMonitorFunction;
  return result;
}

void sub_1C2200CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2200DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SUSetStatusBarStyleWithBarStyle(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 statusBarStyle];
  v6 = 1;
  if (a1 != 2)
  {
    v6 = v5;
  }

  if (a1 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return [v4 setStatusBarStyle:v7 animated:a2];
}

void sub_1C2208298(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C2208C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C2209890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C220AC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v12 + 40));
  objc_destroyWeak((v13 - 152));
  _Unwind_Resume(a1);
}

void sub_1C220D0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C220F7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2210C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  objc_destroyWeak((v34 - 160));
  objc_destroyWeak((v34 - 152));
  _Unwind_Resume(a1);
}

void sub_1C2212268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22123DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2212900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2212B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2213060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22132B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C221347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2213678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2214208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2214364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22146A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C221480C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2215538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C2215870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initFACircleContext()
{
  if (FamilyCircleUILibrary_sOnce != -1)
  {
    initFACircleContext_cold_1();
  }

  result = objc_getClass("FACircleContext");
  classFACircleContext = result;
  getFACircleContextClass = FACircleContextFunction;
  return result;
}

void *__FamilyCircleUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FamilyCircleUI.framework/FamilyCircleUI", 2);
  FamilyCircleUILibrary_sLib = result;
  return result;
}

id initValFACircleEventTypeInitiate()
{
  if (softLinkOnceFACircleEventTypeInitiate != -1)
  {
    initValFACircleEventTypeInitiate_cold_1();
  }

  v1 = constantValFACircleEventTypeInitiate;

  return v1;
}

void __initValFACircleEventTypeInitiate_block_invoke()
{
  if (FamilyCircleUILibrary_sOnce != -1)
  {
    initFACircleContext_cold_1();
  }

  v0 = dlsym(FamilyCircleUILibrary_sLib, "FACircleEventTypeInitiate");
  if (v0)
  {
    objc_storeStrong(&constantValFACircleEventTypeInitiate, *v0);
  }

  getFACircleEventTypeInitiate = FACircleEventTypeInitiateFunction;
}

Class initFACircleStateController()
{
  if (FamilyCircleUILibrary_sOnce != -1)
  {
    initFACircleContext_cold_1();
  }

  result = objc_getClass("FACircleStateController");
  classFACircleStateController = result;
  getFACircleStateControllerClass = FACircleStateControllerFunction;
  return result;
}

Class initAMSUICardMetadata()
{
  if (AppleMediaServicesUILibrary_sOnce != -1)
  {
    initAMSUICardMetadata_cold_1();
  }

  result = objc_getClass("AMSUICardMetadata");
  classAMSUICardMetadata = result;
  getAMSUICardMetadataClass = AMSUICardMetadataFunction;
  return result;
}

void *__AppleMediaServicesUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework/AppleMediaServicesUI", 2);
  AppleMediaServicesUILibrary_sLib = result;
  return result;
}

void sub_1C2219ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__CreateLabel(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 stringForLabelAtIndex:a2];
  if (![v6 length])
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x1E69DCC10]);
  [a1 frameForLabelAtIndex:a2];
  v8 = [v7 initWithFrame:?];
  [v8 setAdjustsFontSizeToFitWidth:0];
  [v8 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
  [v8 setFont:{objc_msgSend(a1, "fontForLabelAtIndex:", a2)}];
  [v8 setHighlightedTextColor:{objc_msgSend(a1, "colorForLabelAtIndex:withModifiers:", a2, 1)}];
  [v8 setNumberOfLines:0];
  [v8 setTag:a2 + 50000];
  [v8 setText:v6];
  [v8 setTextColor:{objc_msgSend(a1, "colorForLabelAtIndex:withModifiers:", a2, a3)}];
  [v8 setUserInteractionEnabled:0];
  v11 = 0;
  v10 = *MEMORY[0x1E695F060];
  if ([a1 getShadowColor:&v11 offset:&v10 forLabelAtIndex:a2 withModifiers:a3])
  {
    [v8 setShadowColor:v11];
    [v8 setShadowOffset:v10];
  }

  return v8;
}

void sub_1C22311F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SUCreateHTMLForPlainText(__CFString *a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<html>"];
  v5 = v4;
  if (a2)
  {
    [(__CFString *)v4 appendFormat:@"<head><style type=text/css>%@</style></head>", a2];
  }

  [(__CFString *)v5 appendString:@"<body>"];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *buffer = 0u;
  v39 = 0u;
  v6 = [(__CFString *)a1 length];
  v46 = a1;
  v49 = 0;
  v50 = v6;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v47 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v48 = CStringPtr;
  v51 = 0;
  v52 = 0;
  v36 = [objc_msgSend(MEMORY[0x1E6999A98] urlMatchesForString:a1 includingTel:{0), "objectEnumerator"}];
  v9 = [v36 nextObject];
  if (v6 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0x1E696A000uLL;
    v35 = v6;
    do
    {
      v15 = objc_alloc_init(*(v14 + 2760));
      if (v11 < 0 || (v16 = v50, v50 <= v11))
      {
        v17 = 0;
      }

      else if (v47)
      {
        v17 = v47[v49 + v11];
      }

      else if (v48)
      {
        v17 = v48[v49 + v11];
      }

      else
      {
        if (v52 <= v11 || (v32 = v51, v51 > v11))
        {
          v33 = v11 - 4;
          if (v11 < 4)
          {
            v33 = 0;
          }

          if (v33 + 64 < v50)
          {
            v16 = v33 + 64;
          }

          v51 = v33;
          v52 = v16;
          v53.length = v16 - v33;
          v53.location = v49 + v33;
          CFStringGetCharacters(v46, v53, buffer);
          v32 = v51;
        }

        v17 = buffer[v11 - v32];
      }

      chars = v17;
      if (v10)
      {
        if (v11 == [v10 range])
        {
          v18 = v5;
          v19 = [v10 url];
          v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<a href=%@>", v19];
          v21 = [v19 length];
          if (v21)
          {
            v22 = v21;
            v23 = 0;
            v24 = 18 - v12;
            v25 = v21;
            do
            {
              if (v25 >= v24)
              {
                v26 = v24;
              }

              else
              {
                v26 = v25;
              }

              [v20 appendFormat:@"%@&#8203;", objc_msgSend(v19, "substringWithRange:", v23, v26)];
              v23 += 18;
              v25 -= 18;
              v24 = 18;
            }

            while (v23 < v22);
            v12 = 0;
          }

          [v20 appendString:@"</a>"];
          v5 = v18;
          [(__CFString *)v18 appendString:v20];
          [v10 range];
          v11 = v11 + v27 - 1;

          v10 = [v36 nextObject];
          v6 = v35;
          v14 = 0x1E696A000;
          goto LABEL_42;
        }

        v17 = chars;
      }

      if (v17 <= 0x25u)
      {
        if (v17 == 10)
        {
          if (v13 != 13)
          {
LABEL_39:
            v30 = v5;
            v31 = @"<br>";
            goto LABEL_40;
          }

LABEL_41:
          v12 = 0;
          goto LABEL_42;
        }

        if (v17 == 13)
        {
          goto LABEL_39;
        }
      }

      else
      {
        switch(v17)
        {
          case '&':
            v28 = v5;
            v29 = @"&amp;";
            goto LABEL_37;
          case '<':
            v28 = v5;
            v29 = @"&lt;";
            goto LABEL_37;
          case '>':
            v28 = v5;
            v29 = @"&gt;";
LABEL_37:
            [(__CFString *)v28 appendString:v29];
            goto LABEL_42;
        }
      }

      CFStringAppendCharacters(v5, &chars, 1);
      if (chars == 32)
      {
        goto LABEL_41;
      }

      if (v12 > 17)
      {
        v30 = v5;
        v31 = @"&#8203;";
LABEL_40:
        [(__CFString *)v30 appendString:v31];
        goto LABEL_41;
      }

      ++v12;
LABEL_42:
      v13 = chars;

      ++v11;
    }

    while (v11 < v6);
  }

  [(__CFString *)v5 appendString:@"</body></html>"];
  return v5;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL SUApplicationIsPlayable(void *a1)
{
  v1 = [a1 valueForProperty:*MEMORY[0x1E69D4D40]];
  if (v1)
  {
    v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v1];
    v3 = [v2 bundleURL];
    v4 = [v3 path];

    v5 = [v2 bundleExecutable];
    v6 = [v5 stringByAppendingPathExtension:@"sinf"];

    if (v4)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v4, @"SC_Info", v6, 0}];
      v10 = [MEMORY[0x1E696AEC0] pathWithComponents:v9];
      v11 = v10;
      if (v10)
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v10];
        v13 = v12;
        if (v12)
        {
          v16[0] = [v12 length];
          v16[1] = [v13 bytes];
          v16[2] = 0;
          v16[3] = 0;
          v17 = 0;
          if (__GetFairPlayContext_sOnce != -1)
          {
            SUApplicationIsPlayable_cold_1();
          }

          XtCqEf5X(0, &__GetFairPlayContext_sHardwareInfo, [__GetFairPlayContext_sFolderPath UTF8String], &v17);
          HN0R(v17, v16);
          v8 = v14 == 0;
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id SUCopyLibraryIdentifierForURL(void *a1)
{
  v1 = [a1 copyQueryStringDictionaryWithUnescapedValues:1];
  v2 = [v1 objectForKey:@"libraryid"];

  return v2;
}

CGColor *SUColorGetRGBA(CGColor *result, double *a2, double *a3, double *a4, double *a5)
{
  v9 = 1.0;
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = CGColorGetColorSpace(result);
  if (!result)
  {
    goto LABEL_12;
  }

  v11 = result;
  Components = CGColorGetComponents(v10);
  NumberOfComponents = CGColorGetNumberOfComponents(v10);
  result = CGColorSpaceGetModel(v11);
  if (result)
  {
    if (result == 1 && NumberOfComponents >= 3)
    {
      v15 = *Components;
      v14 = Components[1];
      v16 = Components[2];
      if (NumberOfComponents != 3)
      {
        v17 = 3;
        goto LABEL_23;
      }

LABEL_13:
      if (!a2)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_12:
    v16 = 1.0;
    v14 = 1.0;
    v15 = 1.0;
    goto LABEL_13;
  }

  if (!NumberOfComponents)
  {
    goto LABEL_12;
  }

  v16 = *Components;
  if (NumberOfComponents == 1)
  {
    v14 = *Components;
    v15 = *Components;
    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_14:
    *a2 = v15;
    goto LABEL_15;
  }

  v17 = 1;
  v14 = *Components;
  v15 = *Components;
LABEL_23:
  v9 = Components[v17];
  if (a2)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t SUCopyProgressStringForSeconds(uint64_t a1, int a2)
{
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  v5 = v4 % 0x3C;
  v6 = v4 / 0x3C - 60 * (((v4 / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
  v7 = v4 - v4 % 0x3C - 60 * v6;
  v8 = v7 / 3600;
  v9 = v7 + 3599;
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (a1 < 0)
  {
    if (a2)
    {
      if (v9 < 0x1C1F)
      {
        v12 = @"NEGATIVE_FULL_WIDTH_MINUTES_SECONDS";
        return [v10 initWithFormat:objc_msgSend(v11, "localizedStringForKey:value:table:", v12, &stru_1F41B3660, 0), v6, v5, v15];
      }

      v14 = @"NEGATIVE_FULL_WIDTH_HOURS_MINUTES_SECONDS";
    }

    else
    {
      if (v9 < 0x1C1F)
      {
        v12 = @"NEGATIVE_MINUTES_SECONDS";
        return [v10 initWithFormat:objc_msgSend(v11, "localizedStringForKey:value:table:", v12, &stru_1F41B3660, 0), v6, v5, v15];
      }

      v14 = @"NEGATIVE_HOURS_MINUTES_SECONDS";
    }
  }

  else if (a2)
  {
    if (v9 < 0x1C1F)
    {
      v12 = @"FULL_WIDTH_MINUTES_SECONDS";
      return [v10 initWithFormat:objc_msgSend(v11, "localizedStringForKey:value:table:", v12, &stru_1F41B3660, 0), v6, v5, v15];
    }

    v14 = @"FULL_WIDTH_HOURS_MINUTES_SECONDS";
  }

  else
  {
    if (v9 < 0x1C1F)
    {
      v12 = @"MINUTES_SECONDS";
      return [v10 initWithFormat:objc_msgSend(v11, "localizedStringForKey:value:table:", v12, &stru_1F41B3660, 0), v6, v5, v15];
    }

    v14 = @"HOURS_MINUTES_SECONDS";
  }

  return [v10 initWithFormat:objc_msgSend(v11, "localizedStringForKey:value:table:", v14, &stru_1F41B3660, 0), v8, v6, v5];
}

const __CFDate *SUCopyDateStringForDate(const __CFDate *a1, CFDateFormatterStyle a2)
{
  StringWithDate = a1;
  if (a1)
  {
    v4 = CFLocaleCopyCurrent();
    if (v4)
    {
      v5 = v4;
      v6 = CFDateFormatterCreate(0, v4, a2, kCFDateFormatterNoStyle);
      if (v6)
      {
        v7 = v6;
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v6, StringWithDate);
        CFRelease(v7);
      }

      else
      {
        StringWithDate = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return StringWithDate;
}

id SUCopyLocalizedReviewsStringForCount(uint64_t a1, int a2)
{
  if (a1 == 1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (a2)
    {
      v5 = @"ONE_REVIEW_CAPS";
    }

    else
    {
      v5 = @"ONE_REVIEW";
    }

LABEL_13:
    v10 = [v4 localizedStringForKey:v5 value:&stru_1F41B3660 table:0];

    return v10;
  }

  if (!a1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (a2)
    {
      v5 = @"NO_REVIEWS_IN_LISTING_CAPS";
    }

    else
    {
      v5 = @"NO_REVIEWS_IN_LISTING";
    }

    goto LABEL_13;
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (a2)
  {
    v8 = @"REVIEW_COUNT_FORMAT_CAPS";
  }

  else
  {
    v8 = @"REVIEW_COUNT_FORMAT";
  }

  return [v6 initWithFormat:objc_msgSend(v7, "localizedStringForKey:value:table:", v8, &stru_1F41B3660, 0), a1];
}

id SUGetDataForDataURL(uint64_t a1, void *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:a1];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v4 = [MEMORY[0x1E695AC78] sharedSession];
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __SUGetDataForDataURL_block_invoke;
  v9[3] = &unk_1E8164E60;
  v9[5] = &v10;
  v9[6] = &v16;
  v9[4] = v5;
  v6 = [v4 dataTaskWithRequest:v3 completionHandler:v9];
  if (v6)
  {
    [v6 resume];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a2 && v11[5])
  {
    *a2 = [v17[5] MIMEType];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v7;
}

void sub_1C2245C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

intptr_t __SUGetDataForDataURL_block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

uint64_t SUGetFormattedDecimalStringForNumber(uint64_t a1)
{
  v2 = SUGetFormattedDecimalStringForNumber_sFormatter;
  if (!SUGetFormattedDecimalStringForNumber_sFormatter)
  {
    SUGetFormattedDecimalStringForNumber_sFormatter = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [SUGetFormattedDecimalStringForNumber_sFormatter setNumberStyle:1];
    v2 = SUGetFormattedDecimalStringForNumber_sFormatter;
  }

  return [v2 stringFromNumber:a1];
}

CFStringRef SUCopyUTIForFilePath(void *a1, int a2)
{
  v4 = [a1 pathExtension];
  v5 = v4;
  if (a2 && ![(__CFString *)v4 caseInsensitiveCompare:@"zip"])
  {
    v8 = [objc_msgSend(a1 "stringByDeletingPathExtension")];
    if (v8)
    {
      v5 = v8;
    }

    if (v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

LABEL_4:
  v6 = *MEMORY[0x1E6963710];

  return UTTypeCreatePreferredIdentifierForTag(v6, v5, 0);
}

uint64_t SUOpenExternalURL(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [v4 URLOverrideForURL:a1];
  v6 = [a2 delegate];
  if (objc_opt_respondsToSelector())
  {
    if (([v6 clientInterface:a2 isAllowedToOpenExternalURL:v5] & 1) == 0)
    {
      return 0;
    }
  }

  else if (![v5 isSafeExternalURL])
  {
    return 0;
  }

  return [v4 openSensitiveURL:v5 withOptions:0];
}

uint64_t SUOpenURLInClient(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v7 = [objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69E47F0]) initWithDictionary:0 context:v6];
  }

  v8 = [v7 URLForURL:a1 clientIdentifier:a2];

  return SUOpenExternalURL(v8, a3);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C2247DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 80));
  _Unwind_Resume(a1);
}

Class initAMSBiometrics()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSBiometrics_cold_1();
  }

  result = objc_getClass("AMSBiometrics");
  classAMSBiometrics = result;
  getAMSBiometricsClass = AMSBiometricsFunction;
  return result;
}

void *__AppleMediaServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServices.framework/AppleMediaServices", 2);
  AppleMediaServicesLibrary_sLib = result;
  return result;
}

Class initAMSUIPasswordSettingsViewController()
{
  if (AppleMediaServicesUILibrary_sOnce_0 != -1)
  {
    initAMSUIPasswordSettingsViewController_cold_1();
  }

  result = objc_getClass("AMSUIPasswordSettingsViewController");
  classAMSUIPasswordSettingsViewController = result;
  getAMSUIPasswordSettingsViewControllerClass = AMSUIPasswordSettingsViewControllerFunction;
  return result;
}

void *__AppleMediaServicesUILibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework/AppleMediaServicesUI", 2);
  AppleMediaServicesUILibrary_sLib_0 = result;
  return result;
}

void sub_1C224A4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2250738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22510E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C2253420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SUPurchaseBatchAddModifiedError(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = a1;
  if (a2 >= 2)
  {
    v4 = [a3[1] mergedErrorForError:a1 withCount:a2];
  }

  v5 = *a3;

  return [v5 addObject:v4];
}

void sub_1C22550EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2255218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2255398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2255A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2255B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2255EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SUURLValidator(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a1];
  v3 = v2 != 0;

  return v3;
}

void SUJSObjectSetBooleanProperty(const OpaqueJSContext *a1, OpaqueJSValue *a2, CFStringRef string)
{
  v5 = JSStringCreateWithCFString(string);
  if (v5)
  {
    v6 = v5;
    Boolean = JSValueMakeBoolean(a1, 1);
    JSObjectSetProperty(a1, a2, v6, Boolean, 0, 0);

    JSStringRelease(v6);
  }
}

uint64_t SUScriptPropertyListFromString(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [a1 dataUsingEncoding:4];
  v11 = 0;
  v2 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:0 error:&v11];
  if (v11)
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 2;
    }

    if (v6)
    {
      v12 = 138412290;
      v13 = v11;
      LODWORD(v10) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v12, v10}];
        free(v8);
        SSFileLog();
      }
    }
  }

  return v2;
}

uint64_t SUWebScriptAddPropertyKeysToArray(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v13 = v6;
    v14 = v5;
    v15 = v4;
    v16 = v3;
    v17 = v7;
    v18 = v8;
    v9 = a3;
    v10 = result;
    v11 = (a2 + 8);
    do
    {
      v12 = *v11;
      v11 += 2;
      result = [v10 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v12, v13, v14, v15, v16, v17, v18)}];
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t SUWebScriptNameForKey(char *__s2, uint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  for (i = (a2 + 8); strcmp(*i, __s2); i += 2)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return *(i - 1);
}

uint64_t SUWebScriptNameForSelector(const char *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  for (i = a2 + 8; ; i += 16)
  {
    v6 = NSSelectorFromString(*(i - 8));
    if (sel_isEqual(a1, v6))
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return *i;
}

uint64_t SUWebScriptNameForSelector2(SEL lhs, uint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  for (i = a2 + 8; !sel_isEqual(lhs, *(i - 8)); i += 16)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return *i;
}

void sub_1C2258BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2258CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2258DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2258F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22594B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SUScriptObjectDispatchEventForName(void *a1, uint64_t *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = *a2;
    v6 = a2[1];

    return [a1 dispatchEvent:v5 forName:v6];
  }

  return result;
}

Class initAKAppleIDAuthenticationInAppContext()
{
  if (AuthKitUILibrary_sOnce != -1)
  {
    initAKAppleIDAuthenticationInAppContext_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationInAppContext");
  classAKAppleIDAuthenticationInAppContext = result;
  getAKAppleIDAuthenticationInAppContextClass = AKAppleIDAuthenticationInAppContextFunction;
  return result;
}

void *__AuthKitUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKitUI.framework/AuthKitUI", 2);
  AuthKitUILibrary_sLib = result;
  return result;
}

Class initAKAppleIDAuthenticationController()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKAppleIDAuthenticationController_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationController");
  classAKAppleIDAuthenticationController = result;
  getAKAppleIDAuthenticationControllerClass = AKAppleIDAuthenticationControllerFunction;
  return result;
}

void *__AuthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib = result;
  return result;
}

void sub_1C225E4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C225F554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1C225FEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C2260FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22610E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2261214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2261364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22614A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22615D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SUAutocapitalizationTypeForString(void *a1)
{
  if (!a1)
  {
    return 2;
  }

  if ([a1 isEqualToString:@"sentences"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"none"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"words"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"all"])
  {
    return 3;
  }

  return -1;
}

uint64_t __SUAutocorrectionTypeForString(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result isEqualToString:@"default"])
    {
      return 0;
    }

    else if ([v1 isEqualToString:@"no"])
    {
      return 1;
    }

    else if ([v1 isEqualToString:@"yes"])
    {
      return 2;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t __SUKeyboardTypeForString(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result isEqualToString:@"default"])
    {
      return 0;
    }

    else if ([v1 isEqualToString:@"email"])
    {
      return 7;
    }

    else if ([v1 isEqualToString:@"number"])
    {
      return 2;
    }

    else if ([v1 isEqualToString:@"tel"])
    {
      return 5;
    }

    else if ([v1 isEqualToString:@"url"])
    {
      return 3;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void sub_1C2262270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22623C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22624C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22639C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C22649B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C226652C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

void sub_1C2266D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2266EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2267088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2267EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2268014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C226814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2268244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2268378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __SUButtonValidator(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [a1 title];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    v2 = [a1 title];
  }

  if ([v2 length])
  {
    return 1;
  }

  [a1 image];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) == 0 && [a1 image] != 0;
}

void sub_1C226BC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C22715A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __SUOrientationValidator(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return SUOrientationStringIsValid(a1);
}

void sub_1C2272744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2273F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22740D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2274254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2274398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22751C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22752FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2275458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22755A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22756F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2278664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22797B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2279F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227A0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227AD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227AF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227B3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227B524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227C9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227D374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227D5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227D70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227D838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227D994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227DABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227DC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227DD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C227DF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227E104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227E2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227FE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C227FF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22800C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22801EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22804AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2280630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22807E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2280958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2281CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2281DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2282058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22821A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22832A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22835C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22840C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22842E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22847D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2284D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C228E668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228E7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228E970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228F64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228F784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228F900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228FBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C228FE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2291958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2291ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2291BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2291F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22923B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGColorRef SUCreateColorFromStyleString(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if ([a1 hasPrefix:@"#"])
  {
    v2 = [a1 substringFromIndex:1];
    v3 = [v2 length];
    v4 = v3;
    if (v3 == 6 || v3 == 3)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = [v2 characterAtIndex:v5];
        if ((v7 - 48) >= 0xAu && ((v7 | 0x20) - 97) > 5u)
        {
          break;
        }

        if (v7 >= 65)
        {
          v9 = (v7 + 9) & 0xF;
        }

        else
        {
          v9 = (v7 - 48);
        }

        v6 = v9 | (16 * v6);
        if (v4 == ++v5)
        {
          if (v4 == 3)
          {
            v10 = ((v6 & 0xF00) << 12) & 0xFFFFFFFFFFF00FF0 | ((v6 >> 4) << 12) | (16 * (v6 & 0xF0 | (v9 & 0xF))) | v9 & 0xF;
          }

          else
          {
            v10 = v6;
          }

          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v12.i64[0] = 255;
          v12.i64[1] = 255;
          v29 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(v10), xmmword_1C233A0F0), v12))), vdup_n_s32(0x437F0000u)));
          v30 = (v10 / 255.0);
          v31 = 0x3FF0000000000000;
          v13 = CGColorCreate(DeviceRGB, v29.f64);
          CGColorSpaceRelease(DeviceRGB);
          return v13;
        }
      }
    }

    return 0;
  }

  if ([a1 hasPrefix:{@"rgb(", "hasSuffix:", @")"}])
  {
    v14 = [a1 length] - 5;
    v15 = a1;
    v16 = 4;
LABEL_23:
    v17 = [v15 substringWithRange:{v16, v14}];

    return __SUCreateColorFromRGBAString(v17);
  }

  if ([a1 hasPrefix:{@"rgba(", "hasSuffix:", @")"}])
  {
    v14 = [a1 length] - 6;
    v15 = a1;
    v16 = 5;
    goto LABEL_23;
  }

  if (![a1 hasPrefix:{@"hsl(", "hasSuffix:", @")"}])
  {
    if (([a1 hasPrefix:@"hsla("] != 0 && objc_msgSend(a1, "hasSuffix:", @"")))
    {
      v19 = [a1 length] - 6;
      v20 = a1;
      v21 = 5;
      goto LABEL_33;
    }

    v23 = &qword_1E8165B18;
    v24 = 17;
    while (![*(v23 - 1) isEqualToString:a1])
    {
      v23 += 2;
      if (!--v24)
      {
        goto LABEL_41;
      }
    }

    v25 = *v23;
    v26 = CGColorSpaceCreateDeviceRGB();
    v27.i64[0] = 255;
    v27.i64[1] = 255;
    v29 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(v25), xmmword_1C233A0F0), v27))), vdup_n_s32(0x437F0000u)));
    v30 = (v25 / 255.0);
    v31 = 0x3FF0000000000000;
    v13 = CGColorCreate(v26, v29.f64);
    CGColorSpaceRelease(v26);
    if (v13)
    {
      return v13;
    }

LABEL_41:
    if ([a1 isEqualToString:@"x-apple-ios-pinstripe"])
    {
      v28 = _UIPinStripeImageColorRef();
    }

    else if ([a1 isEqualToString:@"x-apple-ios-scrollview-texture"])
    {
      v28 = [MEMORY[0x1E69DC888] scrollViewTexturedBackgroundColor];
    }

    else
    {
      if (![a1 isEqualToString:@"x-apple-ios-underpage-background"])
      {
        v13 = 0;
        goto LABEL_48;
      }

      v28 = [MEMORY[0x1E69DC888] underPageBackgroundColor];
    }

    v13 = [v28 CGColor];
LABEL_48:
    CGColorRetain(v13);
    return v13;
  }

  v19 = [a1 length] - 5;
  v20 = a1;
  v21 = 4;
LABEL_33:
  v22 = [v20 substringWithRange:{v21, v19}];

  return __SUCreateColorFromHSLAString(v22);
}

CGColorRef __SUCreateColorFromRGBAString(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsSeparatedByString:{@", "}];
  v2 = [v1 count];
  if ((v2 - 3) > 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = 0;
  v10 = xmmword_1C233A108;
  v11 = unk_1C233A118;
  do
  {
    v6 = fmax(__SUFloatValueFromCSSString([objc_msgSend(v1 objectAtIndex:{v5, v10, v11), "stringByTrimmingCharactersInSet:", v4}]), 0.0);
    if (v6 > 1.0)
    {
      v6 = 1.0;
    }

    *(&v10 + v5++) = v6;
  }

  while (v3 != v5);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = CGColorCreate(DeviceRGB, &v10);
  CGColorSpaceRelease(DeviceRGB);
  return v8;
}

CGColorRef __SUCreateColorFromHSLAString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  v2 = [v1 count];
  if ((v2 - 3) > 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [objc_msgSend(objc_msgSend(v1 objectAtIndex:{0), "stringByTrimmingCharactersInSet:", v4), "intValue"}] % 360;
  if (v5 > 0xFFFFFE97)
  {
    v5 += 360;
  }

  v6 = (v5 / 360.0);
  v7 = __SUFloatValueFromCSSString([objc_msgSend(v1 objectAtIndex:{1), "stringByTrimmingCharactersInSet:", v4}]);
  v8 = __SUFloatValueFromCSSString([objc_msgSend(v1 objectAtIndex:{2), "stringByTrimmingCharactersInSet:", v4}]);
  v9 = 1.0;
  if (v3 == 4)
  {
    v9 = __SUFloatValueFromCSSString([objc_msgSend(v1 objectAtIndex:{3), "stringByTrimmingCharactersInSet:", v4}]);
  }

  v10 = [objc_alloc(MEMORY[0x1E69DC888]) initWithHue:v6 saturation:v7 brightness:v8 alpha:v9];
  v11 = CGColorRetain([v10 CGColor]);

  return v11;
}

double __SUFloatValueFromCSSString(void *a1)
{
  if ([a1 hasSuffix:@"%"])
  {
    v2 = [objc_msgSend(a1 substringToIndex:{objc_msgSend(a1, "length") - 1), "intValue"}];
    v3 = 100.0;
    return (v2 / v3);
  }

  v4 = [a1 rangeOfString:@"."];
  [a1 floatValue];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 255.0;
    return (v2 / v3);
  }

  return v2;
}

void sub_1C22975A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C2297724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22978B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2297A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2297CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2297E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2297FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2298168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2298310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2298CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2298E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SUScriptNavigationItemIsFlagged(void *a1)
{
  v1 = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.SUScriptNavigationItem.flagged");
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SUScriptNavigationItemSetFlagged(void *a1, uint64_t a2)
{
  object = a1;
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a2];
  if (object)
  {
    objc_setAssociatedObject(object, "com.apple.iTunesStoreUI.SUScriptNavigationItem.flagged", v3, 1);
  }
}

void sub_1C229AB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229B588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229BB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229C0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229E1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229E634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229E91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229EC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229F034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229FD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C229FE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A02DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A0978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A0B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A0C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A1364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A16E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A1960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A1AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A1BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A2E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A2F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A32E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A3470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A5448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22A5598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CallPurchaseCallback(uint64_t a1, int a2, SUScriptError *a3)
{
  v3 = a3;
  v9[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [[SUScriptError alloc] initWithError:a3];
  }

  v6 = [[SUScriptFunction alloc] initWithScriptObject:a1];
  -[SUScriptFunction setThisObject:](v6, "setThisObject:", [MEMORY[0x1E69E2FB0] undefined]);
  v7 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v9[0] = *v7;
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E69E2FB0] undefined];
  }

  v9[1] = v8;
  -[SUScriptFunction callWithArguments:](v6, "callWithArguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2]);
}

void sub_1C22A9B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AB8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22ABAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22ABBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22ABFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AC0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AC200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AC834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C22ADD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22ADF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AE084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AE18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AE288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AE3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AE4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AE63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AE744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AF39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AF4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AF5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22AF6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22B10A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22B4E6C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1C22B4E38);
  }

  _Unwind_Resume(a1);
}

void sub_1C22B4FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22B5644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initAKAppleIDServerResourceLoadDelegate()
{
  if (AuthKitLibrary_sOnce_0 != -1)
  {
    initAKAppleIDServerResourceLoadDelegate_cold_1();
  }

  result = objc_getClass("AKAppleIDServerResourceLoadDelegate");
  classAKAppleIDServerResourceLoadDelegate = result;
  getAKAppleIDServerResourceLoadDelegateClass = AKAppleIDServerResourceLoadDelegateFunction;
  return result;
}

void *__AuthKitLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib_0 = result;
  return result;
}

uint64_t SUInterfaceOrientationForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"landscape-left"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"landscape-right"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"portrait-upside-down"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

__CFString *SUOrientationStringForDeviceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E81662E0[a1 - 1];
  }
}

uint64_t SUOrientationStringIsValid(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"landscape-left"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"landscape-right") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"portrait"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"portrait-upside-down"];
  }

  return v2;
}

void sub_1C22B6A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22B6C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22BC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22BCCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22BE054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __InterpolateGradient(void *a1, double *a2, uint64_t a3)
{
  if (![a1 count])
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  v6 = [a1 objectAtIndex:0];
  result = [a1 lastObject];
  v8 = *a2;
  if (*a2 <= 0.0 || v8 <= *(v6 + 40))
  {
    *a3 = *(v6 + 8);
    *(a3 + 8) = *(v6 + 16);
    *(a3 + 16) = *(v6 + 24);
    v14 = *(v6 + 32);
  }

  else if (v8 >= 1.0 || v8 >= *(result + 40))
  {
    *a3 = *(result + 8);
    *(a3 + 8) = *(result + 16);
    *(a3 + 16) = *(result + 24);
    v14 = *(result + 32);
  }

  else
  {
    v9 = [a1 count];
    if (v9 < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = v9;
      v12 = 0;
      while (1)
      {
        v13 = [a1 objectAtIndex:v12];
        v10 = *a2;
        if (*a2 < *(v13 + 40))
        {
          break;
        }

        if (v11 == ++v12)
        {
          v12 = v11;
          break;
        }
      }
    }

    v15 = [a1 objectAtIndex:{v12 - 1, v10}];
    result = [a1 objectAtIndex:v12];
    v16 = (*a2 - v15[5]) / (*(result + 40) - v15[5]);
    *a3 = v15[1] + (*(result + 8) - v15[1]) * v16;
    *(a3 + 8) = v15[2] + (*(result + 16) - v15[2]) * v16;
    *(a3 + 16) = v15[3] + (*(result + 24) - v15[3]) * v16;
    v14 = v15[4] + (*(result + 32) - v15[4]) * v16;
  }

  *(a3 + 24) = v14;
  return result;
}

uint64_t SUGradientColorIsPatternColor(void *a1, void *a2)
{
  AssociatedObject = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.SUGradient.iscolor");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [AssociatedObject BOOLValue];
  if (a2 && result)
  {
    v6 = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.SUGradient.size");
    if (v6)
    {
      [v6 CGSizeValue];
      *a2 = v7;
      a2[1] = v8;
    }

    else
    {
      *a2 = *MEMORY[0x1E695F060];
    }

    return 1;
  }

  return result;
}

void sub_1C22C0570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1C22C1A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SUBarButtonItemApplyStyling(uint64_t a1)
{
  v2 = +[SUUIAppearance defaultAppearance];

  return [v2 styleBarButtonItem:a1];
}

uint64_t SUNavigationBarApplyStyling(uint64_t a1)
{
  v2 = +[SUUIAppearance defaultAppearance];

  return [v2 styleNavigationBar:a1];
}

uint64_t SUNavigationBarRemoveStyling(void *a1)
{
  [a1 _setBackButtonBackgroundImage:0 mini:0 forStates:0];
  [a1 _setBackButtonBackgroundImage:0 mini:0 forStates:1];
  [a1 setBackgroundImage:0 forBarMetrics:0];
  [a1 setBackgroundImage:0 forBarMetrics:1];
  [a1 setTitleTextAttributes:0];
  [a1 _setButtonItemTextColor:0 shadowColor:0];
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);

  return [a1 _setButtonTextShadowOffset:{v2, v3}];
}

void SUNavigationItemRemoveButton(void *a1, uint64_t a2)
{
  v4 = [a1 leftBarButtonItems];
  if (v4 && (v5 = v4, v6 = [v4 indexOfObjectIdenticalTo:a2], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = v6;
    v12 = [v5 mutableCopy];
    [v12 removeObjectAtIndex:v10];
    [a1 setLeftBarButtonItems:v12];
  }

  else
  {
    v7 = [a1 rightBarButtonItems];
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = [v7 indexOfObjectIdenticalTo:a2];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v11 = v9;
    v12 = [v8 mutableCopy];
    [v12 removeObjectAtIndex:v11];
    [a1 setRightBarButtonItems:v12];
  }
}

void sub_1C22C5768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SUBackgroundTaskOperation *SUMakeBackgroundTask(uint64_t a1, uint64_t a2)
{
  v2 = [[SUBackgroundTaskOperation alloc] initWithOperation:a1 identifier:a2];

  return v2;
}

uint64_t SUTableCellGetMediaIcon(uint64_t a1, int a2)
{
  if (!a2)
  {
    if (a1 == 1)
    {
      v2 = @"MediaTypeRingtone.png";
      goto LABEL_11;
    }

    if (a1 == 2)
    {
      v2 = @"MediaTypeVideo.png";
      goto LABEL_11;
    }

    return 0;
  }

  if (a1 == 1)
  {
    v2 = @"MediaTypeRingtoneSelected.png";
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    return 0;
  }

  v2 = @"MediaTypeVideoSelected.png";
LABEL_11:
  v4 = MEMORY[0x1E69DCAB8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return [v4 imageNamed:v2 inBundle:v5];
}

SUImageDataProvider *SUTableCellCopyImageProviderForSizeWithStrokedEdges(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_alloc_init(SUImageDataProvider);
  -[SUImageDataProvider setFillColor:](v12, "setFillColor:", [MEMORY[0x1E69DC888] whiteColor]);
  [(SUImageDataProvider *)v12 setFinalSize:a1, a2];
  v13 = objc_alloc_init(SUStrokeEdgesImageModifier);
  [(SUStrokeEdgesImageModifier *)v13 setEdgeInsets:a3, a4, a5, a6];
  -[SUStrokeEdgesImageModifier setStrokeColor:](v13, "setStrokeColor:", [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.150000006]);
  v14 = objc_alloc_init(SUFrameAdjustmentImageModifier);
  [(SUFrameAdjustmentImageModifier *)v14 setShouldSizeDownToFit:1];
  [(SUFrameAdjustmentImageModifier *)v14 setSizingMask:45];
  v15 = objc_alloc_init(SUArrayImageModifier);
  -[SUArrayImageModifier setModifiers:](v15, "setModifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v14, v13, 0}]);
  [(SUImageDataProvider *)v12 setModifier:v15];

  return v12;
}

Class initICStoreRequestContext()
{
  if (iTunesCloudLibrary_sOnce_0 != -1)
  {
    initICStoreRequestContext_cold_1();
  }

  result = objc_getClass("ICStoreRequestContext");
  classICStoreRequestContext = result;
  getICStoreRequestContextClass = ICStoreRequestContextFunction;
  return result;
}

void *__iTunesCloudLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/iTunesCloud.framework/iTunesCloud", 2);
  iTunesCloudLibrary_sLib_0 = result;
  return result;
}

Class initICUserIdentity_0()
{
  if (iTunesCloudLibrary_sOnce_0 != -1)
  {
    initICStoreRequestContext_cold_1();
  }

  result = objc_getClass("ICUserIdentity");
  classICUserIdentity_0 = result;
  getICUserIdentityClass_0 = ICUserIdentityFunction_0;
  return result;
}

Class initICUserIdentityStore()
{
  if (iTunesCloudLibrary_sOnce_0 != -1)
  {
    initICStoreRequestContext_cold_1();
  }

  result = objc_getClass("ICUserIdentityStore");
  classICUserIdentityStore = result;
  getICUserIdentityStoreClass = ICUserIdentityStoreFunction;
  return result;
}

Class initICURLResponseAuthenticationProvider()
{
  if (iTunesCloudLibrary_sOnce_0 != -1)
  {
    initICStoreRequestContext_cold_1();
  }

  result = objc_getClass("ICURLResponseAuthenticationProvider");
  classICURLResponseAuthenticationProvider = result;
  getICURLResponseAuthenticationProviderClass = ICURLResponseAuthenticationProviderFunction;
  return result;
}

Class initICMusicSubscriptionStatusRequest()
{
  if (iTunesCloudLibrary_sOnce_0 != -1)
  {
    initICStoreRequestContext_cold_1();
  }

  result = objc_getClass("ICMusicSubscriptionStatusRequest");
  classICMusicSubscriptionStatusRequest = result;
  getICMusicSubscriptionStatusRequestClass = ICMusicSubscriptionStatusRequestFunction;
  return result;
}

Class initICMusicSubscriptionStatusController()
{
  if (iTunesCloudLibrary_sOnce_0 != -1)
  {
    initICStoreRequestContext_cold_1();
  }

  result = objc_getClass("ICMusicSubscriptionStatusController");
  classICMusicSubscriptionStatusController = result;
  getICMusicSubscriptionStatusControllerClass = ICMusicSubscriptionStatusControllerFunction;
  return result;
}

Class initICMusicSubscriptionStatusMonitor_0()
{
  if (iTunesCloudLibrary_sOnce_0 != -1)
  {
    initICStoreRequestContext_cold_1();
  }

  result = objc_getClass("ICMusicSubscriptionStatusMonitor");
  classICMusicSubscriptionStatusMonitor_0 = result;
  getICMusicSubscriptionStatusMonitorClass_0 = ICMusicSubscriptionStatusMonitorFunction_0;
  return result;
}

SUDelayedQuitController *_create_shared_instance()
{
  result = objc_alloc_init(SUDelayedQuitController);
  __SharedInstance_4 = result;
  return result;
}

void sub_1C22D8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22D8EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22D8FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22D99C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22DA42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C22DA5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22DA810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22DA93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E2500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E4914(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C22E4D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C22E59E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E62C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E64EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E6704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E69D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E6B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E6C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E6DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E6EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E7390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E7510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22E7638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUCreatePreviewHistoryOperation(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  v3 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v3 setURLBagKey:@"updatePreviewHistoryBaseUrl"];
  [v3 setValue:@"add" forRequestParameter:@"action"];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AEC0] forRequestParameter:{"stringWithFormat:", @"%lld", a1), @"ids"}];
  [v2 setRequestProperties:v3];

  return v2;
}

void sub_1C22F0020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22F4268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22F43A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22F801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22F833C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22F855C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FAD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C22FAFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initICUserIdentity_1()
{
  if (iTunesCloudLibrary_sOnce_1 != -1)
  {
    initICUserIdentity_cold_1_0();
  }

  result = objc_getClass("ICUserIdentity");
  classICUserIdentity_1 = result;
  getICUserIdentityClass_1 = ICUserIdentityFunction_1;
  return result;
}

void *__iTunesCloudLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/iTunesCloud.framework/iTunesCloud", 2);
  iTunesCloudLibrary_sLib_1 = result;
  return result;
}

Class initICMusicSubscriptionStatusMonitor_1()
{
  if (iTunesCloudLibrary_sOnce_1 != -1)
  {
    initICUserIdentity_cold_1_0();
  }

  result = objc_getClass("ICMusicSubscriptionStatusMonitor");
  classICMusicSubscriptionStatusMonitor_1 = result;
  getICMusicSubscriptionStatusMonitorClass_1 = ICMusicSubscriptionStatusMonitorFunction_1;
  return result;
}

uint64_t ISUIMobileStoreUIFramework()
{
  if (ISUIMobileStoreUIFramework_sOnce != -1)
  {
    ISUIMobileStoreUIFramework_cold_1();
  }

  return ISUIMobileStoreUIFramework_sHandle;
}

void *__ISUIMobileStoreUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileStoreUI.framework/MobileStoreUI", 1);
  ISUIMobileStoreUIFramework_sHandle = result;
  return result;
}

id ISUIWeakLinkedClassForString(NSString *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = NSClassFromString(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id *ISUIVWeakLinkedStringConstantForString(char *__symbol, void *__handle)
{
  if (__handle)
  {
    v2 = dlsym(__handle, __symbol);
    if (v2)
    {
      v2 = *v2;
    }
  }

  else
  {
    NSLog(&cfstr_CouldNotLoadLi.isa, 0);
    v2 = 0;
  }

  return v2;
}

void sub_1C22FC130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FC258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FC380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FC568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FC6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FD0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FED44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FF0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FF1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C22FF328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2300668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUPreviewOverlayForViewController(void *a1)
{
  if (![a1 isDescendantOfViewController:{objc_msgSend(objc_msgSend(MEMORY[0x1E69DD2E8], "keyWindow"), "rootViewController")}])
  {
    return 0;
  }

  result = +[SUClientDispatch previewOverlayViewController];
  if (!result)
  {
    v2 = +[SUClientDispatch clientInterface];

    return [v2 previewOverlay];
  }

  return result;
}

void *SUViewFirstUIScrollView(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  v2 = [v1 count];
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = v2;
    v4 = 0;
    for (i = 0; i < v3; ++i)
    {
      v6 = [v1 objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v6;
      }

      else
      {
        v7 = [v6 subviews];
        if (v7)
        {
          [v1 addObjectsFromArray:v7];
          v3 = [v1 count];
        }
      }
    }
  }

  return v4;
}

double SUPreviewOverlayScrollViewIsPreviewAdjusted(void *a1)
{
  AssociatedObject = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.previewAdjusted");
  if (!AssociatedObject)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  [AssociatedObject UIEdgeInsetsValue];
  return result;
}

void SUPreviewOverlayScrollViewSetPreviewAdjusted(void *a1, double a2, double a3, double a4, double a5)
{
  AssociatedObject = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.previewAdjusted");
  if (AssociatedObject)
  {
    [AssociatedObject UIEdgeInsetsValue];
  }

  else
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (v12 != a3 || v11 != a2 || v14 != a5 || v13 != a4)
  {
    v18 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{a2, a3, a4, a5}];

    objc_setAssociatedObject(a1, "com.apple.iTunesStoreUI.previewAdjusted", v18, 1);
  }
}

double SUUIScrollViewGetDefaultContentInset(void *a1)
{
  AssociatedObject = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.defaultContentInset");
  if (!AssociatedObject)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  [AssociatedObject UIEdgeInsetsValue];
  return result;
}

void SUUIScrollViewSetDefaultContentInset(void *a1, double a2, double a3, double a4, double a5)
{
  AssociatedObject = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.defaultContentInset");
  if (AssociatedObject)
  {
    [AssociatedObject UIEdgeInsetsValue];
  }

  else
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (v12 != a3 || v11 != a2 || v14 != a5 || v13 != a4)
  {
    [a1 setContentInset:{a2, a3, a4, a5}];
    v18 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{a2, a3, a4, a5}];

    objc_setAssociatedObject(a1, "com.apple.iTunesStoreUI.defaultContentInset", v18, 1);
  }
}

SUButtonAction *SUButtonActionAttachToBarButtonItem(void *a1)
{
  v2 = objc_alloc_init(SUButtonAction);
  [a1 setAction:sel__buttonAction_];
  [a1 setTarget:v2];
  objc_setAssociatedObject(a1, "com.apple.iTunesStoreUI.buttonAction", v2, 1);

  return v2;
}

uint64_t SUButtonActionDeactivateNavigationItem(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1 leftBarButtonItems];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_getAssociatedObject(*(*(&v16 + 1) + 8 * v6++) "com.apple.iTunesStoreUI.buttonAction")];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v7 = [a1 rightBarButtonItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [objc_getAssociatedObject(*(*(&v12 + 1) + 8 * v11++) "com.apple.iTunesStoreUI.buttonAction")];
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

id SUButtonActionPopFromBarButtonItem(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.buttonAction");
  if ([a1 target] == v2)
  {
    [a1 setAction:0];
    [a1 setTarget:0];
  }

  objc_setAssociatedObject(a1, "com.apple.iTunesStoreUI.buttonAction", 0, 1);

  return v2;
}

void _callTwoArgumentFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [[SUScriptFunction alloc] initWithScriptObject:a1];
  [(SUScriptFunction *)v10 setThisObject:a2];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3)
  {
    v8 = [[SUScriptFacebookLikeStatus alloc] initWithLikeStatusDictionary:a3];
    [v7 addObject:v8];

    if (a4)
    {
LABEL_3:
      v9 = [[SUScriptError alloc] initWithError:a4];
      [v7 addObject:v9];

      goto LABEL_6;
    }
  }

  else
  {
    [v7 addObject:{objc_msgSend(MEMORY[0x1E69E2FB0], "undefined")}];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [v7 addObject:{objc_msgSend(MEMORY[0x1E69E2FB0], "undefined")}];
LABEL_6:
  [(SUScriptFunction *)v10 callWithArguments:v7];

  [(SUScriptFunction *)v10 setThisObject:0];
}

void _callOneArgumentFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [[SUScriptFunction alloc] initWithScriptObject:a1];
  [(SUScriptFunction *)v7 setThisObject:a2];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3)
  {
    v6 = [[SUScriptError alloc] initWithError:a3];
    [v5 addObject:v6];
  }

  else
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E69E2FB0], "undefined")}];
  }

  [(SUScriptFunction *)v7 callWithArguments:v5];

  [(SUScriptFunction *)v7 setThisObject:0];
}

void sub_1C230B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C230B468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C230C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C230C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C230CAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C230CE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1C230E150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C230E3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initAMSUIWebViewController()
{
  if (AppleMediaServicesUILibrary_sOnce_1 != -1)
  {
    initAMSUIWebViewController_cold_1();
  }

  result = objc_getClass("AMSUIWebViewController");
  classAMSUIWebViewController = result;
  getAMSUIWebViewControllerClass = AMSUIWebViewControllerFunction;
  return result;
}

void *__AppleMediaServicesUILibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework/AppleMediaServicesUI", 2);
  AppleMediaServicesUILibrary_sLib_1 = result;
  return result;
}

void sub_1C2310B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C2310ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 436) = a7;
  *(v7 + 328) = a5;
  *(v7 + 336) = a6;
  *(v7 + 320) = a4;
  sub_1C2313028();
  *(v7 + 344) = swift_task_alloc();
  v8 = sub_1C23130C8();
  *(v7 + 352) = v8;
  *(v7 + 360) = *(v8 - 8);
  *(v7 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2310FCC, 0, 0);
}

uint64_t sub_1C2310FCC()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 436);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  sub_1C23130B8();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF399A0);
  v7 = *(sub_1C2313058() - 8);
  *(v0 + 384) = *(v7 + 72);
  *(v0 + 432) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1C233A300;
  sub_1C2313048();
  sub_1C23130A8();

  v8 = *(v2 + 8);
  *(v0 + 392) = v8;
  *(v0 + 400) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF399A8);
  v9 = swift_allocObject();
  *(v0 + 408) = v9;
  *(v9 + 16) = xmmword_1C233A300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF399B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C233A310;
  *(v0 + 280) = 7107189;
  *(v0 + 288) = 0xE300000000000000;
  v11 = MEMORY[0x1E69E6158];
  sub_1C2313148();
  *(inited + 96) = v11;
  *(inited + 72) = v6;
  *(inited + 80) = v5;
  *(v0 + 296) = 0x79636167654C7369;
  *(v0 + 304) = 0xEF6465776F6C6C41;

  sub_1C2313148();
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = v4;
  v12 = sub_1C2312480(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF399B8);
  swift_arrayDestroy();
  *(v9 + 32) = v12;
  v13 = swift_task_alloc();
  *(v0 + 416) = v13;
  *v13 = v0;
  v13[1] = sub_1C23112C0;
  v14.n128_u64[0] = 0;

  return MEMORY[0x1EEDEDE80](v9, 0, 0, v14);
}

uint64_t sub_1C23112C0(uint64_t a1)
{
  *(*v2 + 424) = a1;

  if (v1)
  {
    v3 = sub_1C2311574;
  }

  else
  {
    v3 = sub_1C23113F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C23113F4()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[44];
  sub_1C23130B8();
  *(swift_allocObject() + 16) = xmmword_1C233A300;
  sub_1C2313018();
  sub_1C2313008();
  v0[31] = sub_1C2313088();
  v0[28] = v1;
  v5 = v1;
  sub_1C2312FF8();
  sub_1C2312674((v0 + 28), &qword_1EBF399C8);
  sub_1C2313008();
  sub_1C2313038();
  sub_1C23130A8();

  v2(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C2311574()
{
  v1 = v0[53];
  v12 = v0[49];
  v2 = v0[46];
  v3 = v0[44];
  sub_1C23125BC();
  v4 = swift_allocError();
  *v5 = v1;
  v6 = v4;
  sub_1C23130B8();
  *(swift_allocObject() + 16) = xmmword_1C233A300;
  sub_1C2313018();
  sub_1C2313008();
  swift_getErrorValue();
  v7 = v0[32];
  v8 = v0[33];
  v0[27] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 24);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1C2312FF8();
  sub_1C2312674((v0 + 24), &qword_1EBF399C8);
  sub_1C2313008();
  sub_1C2313038();
  sub_1C23130A8();

  v12(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1C231175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF39998);
  MEMORY[0x1EEE9AC00]();
  v10 = v24 - v9;
  sub_1C23126D4(a3, v24 - v9, &qword_1EBF39998);
  v11 = sub_1C2313118();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C2312674(v10, &qword_1EBF39998);
  }

  else
  {
    sub_1C2313108();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C23130F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C23130E8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1C2312674(a3, &qword_1EBF39998);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C2312674(a3, &qword_1EBF39998);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id BugCapture.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BugCapture.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BugCapture();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BugCapture.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BugCapture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2311B80(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C2311C78;

  return v6(a1);
}

uint64_t sub_1C2311C78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1C2311D70(uint64_t a1)
{
  v2 = sub_1C2313128();

  return sub_1C2311DB4(a1, v2);
}

unint64_t sub_1C2311DB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C231274C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C69155C0](v9, a1);
      sub_1C23127A8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C2311E7C(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF39998);
  MEMORY[0x1EEE9AC00]();
  v7 = &v15 - v6;
  result = SSIsInternalBuild();
  if (result)
  {
    v9 = [objc_opt_self() currentProcess];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      sub_1C23130D8();
    }

    v11 = objc_allocWithZone(sub_1C2313098());
    v12 = sub_1C2313068();
    v13 = sub_1C2313118();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v12;
    *(v14 + 40) = a1;
    *(v14 + 48) = a2;
    *(v14 + 56) = a3 & 1;

    sub_1C231175C(0, 0, v7, &unk_1C233A360, v14);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C231216C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C231221C;

  return sub_1C2310ED8(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_1C231221C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C2312310(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C23127FC;

  return sub_1C2311B80(a1, v4);
}

uint64_t sub_1C23123C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C231221C;

  return sub_1C2311B80(a1, v4);
}

unint64_t sub_1C2312480(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF399D0);
    v3 = sub_1C2313158();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C23126D4(v4, v13, &qword_1EBF399B8);
      result = sub_1C2311D70(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C231273C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C23125BC()
{
  result = qword_1EBF399C0;
  if (!qword_1EBF399C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF399C0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C2312674(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C23126D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1C231273C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x1EEE4DB28](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}