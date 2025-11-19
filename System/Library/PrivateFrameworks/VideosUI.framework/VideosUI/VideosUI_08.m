uint64_t sub_1E334F604(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v13 = a6 - 30;
  v14 = v12 + 345 * (a5 & 0xF) - 961 * ((4469269 * (v12 + 345 * (a5 & 0xF))) >> 32);
  v15 = STACK[0x94C];
  v16 = STACK[0x5A0];
  LOBYTE(STACK[0x94C]) = *(STACK[0x5A0] + v14);
  *(v16 + v14) = v15;
  v17 = (v12 + 345 * (v6 % 0xF) + 345) % (v13 ^ 0x1039u);
  v18 = STACK[0xAA5];
  LOBYTE(STACK[0xAA5]) = *(v16 + v17);
  *(v16 + v17) = v18;
  v19 = v12 + 345 * (a4 % 0xE) + 690 - 961 * ((4469269 * (v12 + 345 * (a4 % 0xE) + 690)) >> 32);
  v20 = a4 ^ a5;
  v21 = STACK[0x83D];
  v22 = a5 - 1659356021;
  LOBYTE(STACK[0x83D]) = *(v16 + v19);
  v23 = v6 + 1320393833;
  v24 = v22 - (v6 + 1320393833);
  v25 = v8 - v6;
  v26 = 345 * (v8 % 0xD) + 188025 - 961 * ((4469269 * (345 * (v8 % 0xD) + 188025)) >> 32);
  v27 = v25 - 1319245151;
  *(v16 + v19) = v21;
  LOBYTE(v25) = STACK[0x996];
  LOBYTE(STACK[0x996]) = *(v16 + v26);
  v28 = v20 + v22;
  *(v16 + v26) = v25;
  LOBYTE(v25) = STACK[0x72E];
  v29 = 345 * (v24 % 0xC) + 188370 - 961 * ((4469269 * (345 * (v24 % 0xC) + 188370)) >> 32);
  LOBYTE(STACK[0x72E]) = *(v16 + v29);
  *(v16 + v29) = v25;
  LOBYTE(v22) = STACK[0x887];
  v30 = 345 * ((v28 + v23) % 0xB) + 188715 - 961 * ((4469269 * (345 * ((v28 + v23) % 0xB) + 188715)) >> 32);
  LOBYTE(STACK[0x887]) = *(v16 + v30);
  *(v16 + v30) = v22;
  v31 = v27 % 9;
  v32 = 345 * (v28 % 0xA) + 189060 - 961 * ((4469269 * (345 * (v28 % 0xA) + 189060)) >> 32);
  v33 = STACK[0x9E0];
  v34 = (v28 + v23) ^ v24;
  LOBYTE(STACK[0x9E0]) = *(v16 + v32);
  *(v16 + v32) = v33;
  v35 = 345 * (v27 % 9) + 189405 - 961 * ((4469269 * (345 * (v27 % 9) + 189405)) >> 32);
  v36 = STACK[0x778];
  LOBYTE(STACK[0x778]) = *(v16 + v35);
  *(v16 + v35) = v36;
  v37 = v28 + v24;
  v38 = v28 + v23 + v37;
  v39 = ((v28 + v23) ^ v27) + v38;
  v40 = 345 * ((v34 - v39) & 7) + 189750 - 961 * ((4469269 * (345 * ((v34 - v39) & 7) + 189750)) >> 32);
  v41 = v38 ^ 0x28632A02;
  v42 = STACK[0x8D1];
  LOBYTE(STACK[0x8D1]) = *(v16 + v40);
  *(v16 + v40) = v42;
  v43 = 345 * ((v38 ^ 0x28632A02) % 7) + 190095 - 961 * ((4469269 * (345 * ((v38 ^ 0x28632A02) % 7) + 190095)) >> 32);
  v44 = STACK[0xA2A];
  LOBYTE(STACK[0xA2A]) = *(v16 + v43);
  *(v16 + v43) = v44;
  v45 = 345 * ((v34 ^ v37) % 6) + 190440 - 961 * ((4469269 * (345 * ((v34 ^ v37) % 6) + 190440)) >> 32);
  v46 = (v34 - v39) ^ v34 ^ v37;
  v47 = STACK[0x7C2];
  LOBYTE(STACK[0x7C2]) = *(v16 + v45);
  *(v16 + v45) = v47;
  LOBYTE(v40) = STACK[0x91B];
  v48 = 345 * (v39 % 5) + 190785 - 961 * ((4469269 * (345 * (v39 % 5) + 190785)) >> 32);
  LOBYTE(v39) = v46 + v39;
  LOBYTE(STACK[0x91B]) = *(v16 + v48);
  v49 = 345 * ((v39 + v46) & 3) + 191130;
  v50 = v49 - 961 * ((4469269 * v49) >> 32);
  *(v16 + v48) = v40;
  LOBYTE(v48) = STACK[0xA74];
  LOBYTE(STACK[0xA74]) = *(v16 + v50);
  *(v16 + v50) = v48;
  v51 = (v41 + 1224649944 + v46) % 3u + (((8 - v31) | (v31 + 7)) & 0xD);
  v52 = 345 * ((v51 | 0x21D) + (v51 & 0x1D)) + 345;
  LOBYTE(v48) = STACK[0x80C];
  LOBYTE(STACK[0x80C]) = *(v16 + (v52 - 961 * ((4469269 * v52) >> 32)));
  *(v16 + (v12 + 345 * v51 - 961 * ((4469269 * (v12 + 345 * v51)) >> 32))) = v48;
  v53 = STACK[0x965];
  v54 = ((v39 + (v34 ^ ~v37)) & 1) == 0;
  v55 = 645;
  if (!v54)
  {
    v55 = 990;
  }

  LOBYTE(STACK[0x965]) = *(&STACK[0x6E0] + v55);
  *(&STACK[0x6E0] + v55) = v53;
  *(v16 + (v11 + (v13 ^ 0x1CBC) + 345 * (*(v16 + v12 % 0x3C1) ^ v9) - 3908) % 0x3C1) = -13;
  return (*(v10 + 8 * (v7 ^ v13)))();
}

void YMQGEcsGvUj()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42F60) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF42F60) ^ 0xDF))] ^ 0x71]) - 118);
  v1 = -85 * ((dword_1ECF432C0 - *v0) ^ 0xDF);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v1 - 8) ^ 1u) - 8) ^ v1) + 14);
  v3 = (*v2 + *v0) ^ &v5;
  *v0 = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((-433405785 - (v6 | 0xE62AC0A7) + (v6 | 0x19D53F58)) ^ 0x2BCE64C8);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42F60) ^ 0xDF)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * ((dword_1ECF432C0 - dword_1ECF42F60) ^ 0xDF))] ^ 0x6D]) + 262) - 8;
  (*&v4[8 * (*(off_1F5DB1800 + (*(off_1F5DB19C8 + v2 - 12) ^ 0xB1u) - 12) ^ v2) + 76728])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E334FD4C()
{
  STACK[0x458] = 0;
  STACK[0x8A8] = 0;
  return (*(v1 + 8 * ((13558 * (LODWORD(STACK[0x614]) == ((v0 + 635) ^ 0xF80989))) ^ (v0 - 911))))();
}

uint64_t sub_1E334FDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, char a17, uint64_t a18, unsigned int a19)
{
  v22 = v19 ^ 0xA8;
  v23 = (a15 ^ 0xB6FBB7FF) + 1241275344 + ((v19 ^ 0x6DF76913) & (2 * a15));
  v24 = (v19 ^ 0xA8) + 6741;
  a18 = a12;
  a19 = v24 ^ (1824088897 * (((&a17 | 0x6A64F39A) - &a17 + (&a17 & 0x959B0C60)) ^ 0x320D20F8));
  (*(v20 + 8 * (v22 + 8007)))(&a17);
  a19 = v24 ^ (1824088897 * ((&a17 - 1274651082 - 2 * (&a17 & 0xB4065E36)) ^ 0xEC6F8D54));
  a18 = a13;
  v25 = (*(v20 + 8 * (v22 + 8007)))(&a17);
  return (*(v20 + 8 * ((23 * (v23 == v21 + v22 - 1605)) ^ v22)))(v25);
}

uint64_t sub_1E334FF00()
{
  v4 = (v0 - 1850) | 0x1000;
  v10 = (v0 + 6473) ^ ((((&v8 | 0x46B04682) - (&v8 & 0x46B04682)) ^ 0x1ED995E0) * v2);
  v9 = v7;
  (*(v1 + 8 * ((v0 - 697) ^ 0x2114)))(&v8);
  v10 = (v4 + 4227) ^ (((-904301319 - (&v8 | 0xCA1974F9) + (&v8 | 0x35E68B06)) ^ 0x6D8F5864) * v2);
  v9 = v6;
  (*(v1 + 8 * (v4 ^ 0x359B)))(&v8);
  return (v3 - 16257999);
}

void sub_1E334FF70(uint64_t a1)
{
  v1 = *(a1 + 24) - 956911519 * ((((2 * a1) | 0xF652AC30) - a1 - 2066306584) ^ 0x91B8261D);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_1E335010C()
{
  v4 = ((2 * v2) & 0xEF5FEFFA) + (v2 ^ 0xF7AFF7FD);
  if (v1)
  {
    v5 = v4 == -139462659;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || v0 == 0;
  return (*(v3 + 8 * ((2013 * v7) ^ 0x23D6)))();
}

uint64_t sub_1E335030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, __int16 a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, char *a24)
{
  v26 = (v24 + 592246602) & 0x10AFF;
  a23 = (v24 + 1689) ^ (1710126949 * ((((2 * &a19) | 0xB8578C56) - &a19 + 601110997) ^ 0xEE309DBB));
  a24 = &a16;
  a21 = a17;
  a22 = &a12;
  (*(v25 + 8 * (v24 ^ 0x2302u)))(&a19);
  a20 = (v26 + 997) ^ (33731311 * ((((&a19 | 0x23D9F47C) ^ 0xFFFFFFFE) - (~&a19 | 0xDC260B83)) ^ 0xE5D0C1A0));
  a21 = a17;
  a22 = &a14;
  (*(v25 + 8 * (v26 ^ 0x2DDEu)))(&a19);
  a21 = a17;
  LODWORD(a22) = v26 - 2008441969 * (&a19 ^ 0x4899540E) + 3430;
  v27 = (*(v25 + 8 * (v26 + 7396)))(&a19);
  return (*(v25 + 8 * ((124 * (a19 == ((v26 + 1546) ^ 0xF81D0E))) ^ v26)))(v27);
}

uint64_t sub_1E3350398@<X0>(int a1@<W8>)
{
  v1 = 2811 * (a1 ^ 0xBBF);
  STACK[0x730] = STACK[0x5B0];
  STACK[0x3A8] = 0;
  LODWORD(STACK[0x3F4]) = 16215976;
  v2 = STACK[0x330];
  STACK[0x670] = *(STACK[0x330] + 8 * (v1 - 5458));
  STACK[0x4C8] = &STACK[0x5C8];
  v3 = STACK[0x5C8];
  STACK[0x7B8] = STACK[0x5C8];
  return (*(v2 + 8 * (((((v3 == 0) ^ (-113 * (v1 ^ 0xE8) - 1)) & 1) * (((143 * (v1 ^ 0x15E8) - 4162) | 0x11E) + 38)) ^ (143 * (v1 ^ 0x15E8)))))();
}

uint64_t sub_1E33503C0()
{
  v3 = v0 - 2071;
  (*(v2 + 8 * (v0 + 3743)))();
  v4 = STACK[0x330];
  *(v1 + 24) = 0;
  v5 = (*(v4 + 8 * (v3 + 5814)))(v1);
  return (STACK[0x7B0])(v5);
}

uint64_t sub_1E33503FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  v21 = 956911519 * ((-2 - ((~v20 | 0xC2E4F5C8693C5ADDLL) + (v20 | 0x3D1B0A3796C3A522))) ^ 0x87D2801483AD2AD8);
  a14 = v21 ^ 0x3FE;
  a15 = v17 + v21 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34;
  a16 = a12;
  v22 = (*(v18 + 76792))(&a14);
  return (*(v18 + 8 * ((58 * (a17 == v19)) ^ 0x13DDu)))(v22);
}

uint64_t sub_1E33504F0@<X0>(int a1@<W8>)
{
  v4 = a1 | v1;
  v8 = v4 + 2592;
  v9 = v4 - 5877;
  v10 = *(v2 + 8);
  STACK[0x458] = *(v3 + 8 * v9);
  STACK[0x5E8] = &STACK[0x40C];
  STACK[0x6A0] = 0;
  STACK[0x720] = 0;
  if (v10)
  {
    v5 = &STACK[0x40C] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v3 + 8 * ((((v8 ^ v6) & 1) * (v8 ^ 0x21EF)) ^ v8)))();
}

uint64_t sub_1E33505B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v4 + (v2 + v3 + 2767) - 2800;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((7831 * (v6 == 0)) ^ (v2 + v3 + 2459))))();
}

uint64_t sub_1E33505F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v14 = 1358806181 * ((((v13 - 120) | 0xFB668D1C) - ((v13 - 120) & 0xFB668D1C)) ^ 0xC449E19F);
  *(v13 - 120) = v14 + 688207299;
  *(v13 - 116) = v14 + v11 - 740058305;
  *(v13 - 104) = &a10;
  v15 = (*(v10 + 8 * (v11 + 7861)))(v13 - 120);
  return (*(v10 + 8 * (((*(v13 - 112) == v12) * (((v11 - 1819) | 0x100A) ^ 0xC52)) ^ v11)))(v15);
}

uint64_t sub_1E3350768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15)
{
  a14 = 0;
  a15 = 0;
  v17 = (*(v16 + 8 * (v15 ^ 0x2537)))(0, &a14);
  return (*(v16 + 8 * ((57 * (((v17 << (((v15 - 116) | 0x60) + v15 - 51 + 54)) & 0x57E9AB9E) + (v17 ^ 0x2BF4D5CF) == 737465807)) ^ (v15 + 2316))))(v17, v18, v19, v20, v21);
}

uint64_t sub_1E3350888(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8)
{
  v23 = v15 ^ (16 * *(v11 + (a1 >> v13) * v18 + 220384 - (((((a1 >> v13) * v18 + 220384) * v12) >> 32) >> 9) * v21));
  v24 = (*(v11 + ((a1 & 0xF) * v18 + 220384 - ((((a1 & 0xF) * v18 + 220384) * a8) >> 32) * v21)) ^ v16 ^ (v23 - ((2 * v23) & 0x60) - 67)) * v17 + 89102;
  LOBYTE(v24) = *(*(&off_1F5DB1610 + a6) + (v24 - ((v24 * v20) >> 32) * v9) - 4);
  v25 = ((v24 * v14) ^ v10 ^ (v24 * v24 * v14 * v8)) * v18 + 478792;
  *(v11 + v19 + a1 * v18 - ((((v19 + a1 * v18) * v12) >> 32) >> 9) * v21) = *(v11 + (v25 - ((v25 * a8) >> 32) * v21));
  return (*(a3 + 8 * ((2 * (a1 != 255)) | (8 * (a1 != 255)) | a5)))();
}

uint64_t sub_1E33508C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = v4;
  return (*(v6 + 8 * ((((v5 + 6008) | 0x20) - 6584) ^ (16 * (((((v5 + 6008) | 0x20) + 543902687) & 0xDF949BEB ^ 0xF81824) == 16257999)))))(a1, a2, a3, 16257999);
}

uint64_t sub_1E335094C()
{
  *(v2 - 224) = (v0 - 2140796282) ^ (914963389 * ((v2 - 2090755233 - 2 * ((v2 - 232) & 0x83619C47)) ^ 0xAF9D2D3C));
  (*(v1 + 8 * (v0 + 9466)))(v2 - 232);
  v3 = *(STACK[0x618] + 8);
  STACK[0x530] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((((v0 - 1941393837) & 0x73B773FE) + 804579327) & 0xD00AF777 ^ 0x3B8) * (v3 == 0)) ^ (v0 - 1941393837) & 0x73B773FE)))();
}

uint64_t sub_1E3350A04@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v18 = v3 - 1;
  v19 = __ROR8__((v16 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v19 - 0x6AF7234D0CC131D5) ^ v12;
  v21 = (__ROR8__((v19 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v20) ^ 0xE49D77DF873DBF7ELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((((v23 + v22) << (a2 ^ 0x11u)) & v4) - (v23 + v22) + v14) ^ 0x9A4BC939D526EF5ELL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x45B996DFB575EE6) - (v26 + v25) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v28 = __ROR8__((a1 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = v27 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v27, 8);
  v31 = -2 - (((0x6AF7234D0CC131D4 - v28) | 0x2AB11F016CBDAD66) + ((v28 + 0x1508DCB2F33ECE2BLL) | 0xD54EE0FE93425299));
  v32 = __ROR8__(v31 ^ 0x63585D3A03AB4AB4, 8);
  v31 ^= 0xCB1EB8AD9A5D3BE8;
  v33 = (((2 * (v30 + v29)) & 0xE50EF93BD6C6A2AALL) - (v30 + v29) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v34 = v33 ^ __ROR8__(v29, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v11;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x1A2AEBE44253AF03;
  v38 = (((2 * (v32 + v31)) | 0xF382F877F675E8D6) - (v32 + v31) - 0x79C17C3BFB3AF46BLL) ^ 0x9D5C0BE47C074B15;
  v39 = v38 ^ __ROR8__(v31, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v15;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61));
  v43 = (__ROR8__(v40, 8) + v41) ^ 0x5963B6C555D97F1FLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v13;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v11;
  v48 = __ROR8__(v47, 8);
  v49 = v47 ^ __ROR8__(v46, 61);
  v50 = (a3 - ((v48 + v49) ^ v5 | a3) + ((v48 + v49) ^ v5 | v6)) ^ v7;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  *(a1 + v18) = ((((v8 & (2 * (v52 + v51))) - (v52 + v51) + v9) ^ v10) >> (8 * ((a1 + v18) & 7))) ^ *(v16 + v18) ^ (((((2 * v42) & 0x8D3B02A49A14CEA0) - v42 + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v16 + v18) & 7)));
  return (*(v17 + 8 * ((v18 == 0) ^ a2)))();
}

uint64_t sub_1E3350D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v14 = (*(v12 + 8 * (v13 ^ 0x374F)))(a1, 2044984181);
  *a12 = v14;
  return (*(v12 + 8 * (((v14 == 0) * (((v13 + 1706) ^ 0x892) - 3871)) ^ v13)))();
}

uint64_t sub_1E3350DD4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = v17 - 16;
  v30.i64[0] = a15 + v29 + 11;
  v30.i64[1] = a15 + v29 + 10;
  v31.i64[0] = a15 + v29 + 13;
  v31.i64[1] = a15 + v29 + 12;
  v32.i64[0] = a15 + v29 + 15;
  v32.i64[1] = a15 + v29 + 14;
  v33.i64[0] = a15 + v29 + 19;
  v33.i64[1] = a15 + v29 + 18;
  v34.i64[0] = a15 + v29 + 21;
  v34.i64[1] = a15 + v29 + 20;
  v35.i64[0] = a16 + v29 + 16;
  v35.i64[1] = a15 + v29 + 22;
  v36.i64[0] = a15 + v29 + 25;
  v36.i64[1] = a15 + v29 + 24;
  v37 = vandq_s8(v36, a1);
  v38 = vandq_s8(v35, a1);
  v39 = vandq_s8(v34, a1);
  v40 = vandq_s8(v33, a1);
  v41 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v45 = vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), a3), a4));
  v46 = vsubq_s64(v44, vandq_s8(vaddq_s64(vaddq_s64(v44, v44), a3), a4));
  v47 = vaddq_s64(vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4)), a5);
  v48 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4)), a5);
  v49 = veorq_s8(v48, a6);
  v50 = veorq_s8(v47, a6);
  v51 = veorq_s8(v47, a7);
  v52 = veorq_s8(v48, a7);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51), a8);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52), a8);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v56 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v57 = veorq_s8(v53, v55);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57);
  v60 = veorq_s8(vaddq_s64(v58, v56), v20);
  v61 = veorq_s8(v59, v20);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = veorq_s8(vaddq_s64(v65, v63), v21);
  v68 = veorq_s8(v66, v21);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), v22), v73), v23), v24);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v22), v72), v23), v24);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v77 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v25);
  v81 = veorq_s8(v79, v25);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v26);
  v88 = veorq_s8(v86, v26);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v83.i64[0] = a15 + v29 + 17;
  v83.i64[1] = a15 + v29 + 16;
  v90 = vaddq_s64(v45, a5);
  v192.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v89), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v192.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v91 = veorq_s8(v90, a6);
  v92 = veorq_s8(v90, a7);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), a8);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v20);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v21);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), v22), v99), v23), v24);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v25);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v26);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL)));
  v106 = vandq_s8(v83, a1);
  v107 = vaddq_s64(v46, a5);
  v192.val[1] = vshlq_u64(veorq_s8(v105, v28), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v108 = veorq_s8(v107, a6);
  v109 = veorq_s8(v107, a7);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), a8);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v20);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v21);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v22), v116), v23), v24);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v25);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v26);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v124 = vandq_s8(v32, a1);
  v125 = vaddq_s64(v123, v122);
  v126 = vandq_s8(v31, a1);
  v192.val[0] = vshlq_u64(veorq_s8(v125, v28), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v127 = vandq_s8(v30, a1);
  v128 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v132 = vsubq_s64(v130, vandq_s8(vaddq_s64(vaddq_s64(v130, v130), a3), a4));
  v133 = vaddq_s64(vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a3), a4)), a5);
  v134 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v129.i64[0] = vqtbl4q_s8(v192, v27).u64[0];
  v135 = veorq_s8(v134, a6);
  v192.val[0] = veorq_s8(v133, a6);
  v136 = veorq_s8(v133, a7);
  v137 = veorq_s8(v134, a7);
  v192.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v136), a8);
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v137), a8);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v140);
  v192.val[0] = veorq_s8(vaddq_s64(v192.val[1], v139), v20);
  v142 = veorq_s8(v141, v20);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v144 = veorq_s8(v192.val[0], v192.val[1]);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v144);
  v192.val[0] = veorq_s8(vaddq_s64(v192.val[1], v143), v21);
  v146 = veorq_s8(v145, v21);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = veorq_s8(v192.val[0], v192.val[1]);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v148);
  v192.val[0] = vaddq_s64(v192.val[1], v147);
  v192.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192.val[0], v192.val[0]), v22), v192.val[0]), v23), v24);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v149, v149), v22), v149), v23), v24);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(v192.val[0], v192.val[1]);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v152);
  v192.val[0] = veorq_s8(vaddq_s64(v192.val[1], v151), v25);
  v154 = veorq_s8(v153, v25);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(v192.val[0], v192.val[1]);
  v192.val[1] = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v156);
  v192.val[0] = veorq_s8(vaddq_s64(v192.val[1], v155), v26);
  v158 = veorq_s8(v157, v26);
  v159 = vaddq_s64(v132, a5);
  v192.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v192.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v160 = veorq_s8(v159, a6);
  v161 = veorq_s8(v159, a7);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), a8);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v20);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v21);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), v22), v168), v23), v24);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v25);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v26);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL)));
  v175 = vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(vaddq_s64(v131, v131), a3), a4)), a5);
  v192.val[1] = vshlq_u64(veorq_s8(v174, v28), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v176 = veorq_s8(v175, a6);
  v177 = veorq_s8(v175, a7);
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), a8);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v20);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v21);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v22), v184), v23), v24);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v25);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v26);
  v192.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), a2)));
  v129.i64[1] = vqtbl4q_s8(v192, v27).u64[0];
  v190 = vrev64q_s8(v129);
  *(a15 + v29 + 10) = veorq_s8(vextq_s8(v190, v190, 8uLL), *(v16 + v29));
  return (*(v19 + 8 * (((a14 == v29) * v18) ^ a12)))();
}

void G7b066W()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF43170) ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * ((dword_1ECF432C0 + dword_1ECF43170) ^ 0xDF))] ^ 0xEE]) - 12);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * (v1 ^ dword_1ECF432C0 ^ 0xDF)) - 12) ^ 0xD9u) - 12) ^ (-85 * (v1 ^ dword_1ECF432C0 ^ 0xDF))) - 29);
  v3 = (*v2 + v1) ^ &v5;
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 & 0xB3AEC7D8 | ~(v6 | 0xB3AEC7D8)) ^ 0x7E4A63B7);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF43170 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * (dword_1ECF43170 ^ 0xDF ^ dword_1ECF432C0))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (*(off_1F5DB1B20 + (*(off_1F5DB1A08 + v2 - 8) ^ 0xDDu)) ^ v2) + 75144])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3351414()
{
  v8 = v6;
  v9 = (v0 + 5322) ^ ((((&v7 | 0xB083B4A3) + (~&v7 | 0x4F7C4B5C)) ^ 0xE8EA67C0) * v2);
  (*(v1 + 8 * (v0 ^ 0x2E5C)))(&v7);
  v9 = (v0 + 5322) ^ ((&v7 ^ 0x5869D362) * v2);
  v8 = v5;
  (*(v1 + 8 * ((v0 + 4268) ^ 0x39F0)))(&v7);
  return (v3 - 16257999);
}

uint64_t sub_1E3351544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a16 = &a13;
  a18 = v19 + 1317436891 * (&a16 ^ 0xB0039876) + 5034;
  v20 = (*(v18 + 8 * (v19 + 6517)))(&a16);
  return (*(v18 + 8 * ((5218 * (a17 == ((v19 + 4717) ^ 0xF80D52))) ^ v19)))(v20);
}

uint64_t sub_1E33515CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = v16 ^ 0xB41DBEBE;
  v22 = (2 * v16) & 0x683B7D7C;
  v23 = v20 - 136;
  v24 = 1875091903 * ((-187191689 - ((v20 - 136) | 0xF4D7AE77) + ((v20 - 136) | 0xB285188)) ^ 0x3D5DD20B);
  *(v20 - 120) = a13;
  *(v20 - 132) = v22 + v21 + (((v17 ^ 0x93B) - 1099) ^ 0x6BFEFE4D) + v24;
  *(v20 - 128) = (v17 ^ 0x945) + 4250 + v24;
  (*(v18 + 8 * (v17 ^ 0x217A)))(v20 - 136);
  v25 = v15 - ((2 * v15) & 0x39AD4E2AD03EC198);
  v26 = 956911519 * ((v23 - 2 * (v23 & 0xC1374B42DF7D2E5) + 0xC1374B42DF7D2E5) ^ 0x49250168C766A2E0);
  v27 = (v17 ^ 0x945) - 2452;
  *(v20 - 128) = v25 - 0x632958EA97E09F34 + v26;
  *(v20 - 120) = a13;
  *(v20 - 136) = v27 ^ v26;
  (*(v18 + 8 * ((v17 ^ 0x945) + 6125)))(v20 - 136);
  v28 = 1875091903 * ((v23 & 0x1745D7E6 | ~(v23 | 0x1745D7E6)) ^ 0xDECFAB9A);
  *(v20 - 120) = a13;
  *(v20 - 132) = (v14 ^ 0xEBDFBFBB) + ((2 * v14) & 0xD7BF7F76) + 876410607 + v28;
  *(v20 - 128) = (v17 ^ 0x945) + 4250 + v28;
  (*(v18 + 8 * (v17 ^ 0x217A)))(v20 - 136);
  v29 = 956911519 * ((v23 - 2 * (v23 & 0xFBFA540FAAAEC5ECLL) - 0x405ABF055513A14) ^ 0xBECC21D3403FB5E9);
  *(v20 - 128) = v13 - ((2 * v13) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v29;
  *(v20 - 120) = a13;
  *(v20 - 136) = v27 ^ v29;
  (*(v18 + 8 * (v17 ^ 0x21A8)))(v20 - 136);
  if (v19)
  {
    v30 = 1631436545;
  }

  else
  {
    v30 = 1631436543;
  }

  v31 = ((v19 != 0) ^ 0xBEDEF7AB) + v30;
  v32 = 1875091903 * (v23 ^ 0x36758383);
  *(v20 - 120) = a13;
  *(v20 - 132) = v31 + v32;
  *(v20 - 128) = (v17 ^ 0x945) + 4250 + v32;
  v33 = (*(v18 + 8 * (v17 ^ 0x217A)))(v20 - 136);
  return (*(v18 + 8 * (v17 ^ 0x945 ^ (126 * (v19 == 0)))))(v33);
}

void sub_1E33518C4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32) ^ (31943069 * ((a1 + 1976447333 - 2 * (a1 & 0x75CE3165)) ^ 0x1667771D));
  v2 = *(a1 + 40);
  v5 = 0;
  v6 = v1 + 1903870346 + 869295389 * (((&v6 | 0x4493AC91) - &v6 + (&v6 & 0xBB6C5368)) ^ 0xF5C780C2);
  v7 = &v5;
  v3 = *(&off_1F5DB1610 + (v1 ^ 0x175E)) - 8;
  (*&v3[8 * v1 + 31416])(&v6);
  v4 = 0;
  v7 = &v4;
  v6 = v1 + 1903870346 + 869295389 * ((2 * ((&v6 ^ 0xB2D7C0AC) & 0x23CCF470) - (&v6 ^ 0xB2D7C0AC) - 600634484) ^ 0xDFB0E773);
  (*&v3[8 * (v1 ^ 0x33E9)])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3351A50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = *STACK[0x380] + 6;
  v77 = __ROR8__(v76 & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = ((0x6AF7234D0CC131D4 - v77) & 0x435B154A729201BFLL) + v77 - 0x6AF7234D0CC131D5 - ((v77 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v79 = __ROR8__(v78 ^ 0xAB257711D84E66DLL, 8);
  v78 ^= 0xA2F4B2E684729731;
  v80 = (((v79 + v78) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v79 + v78) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xF5A2F1B9B5D0B209;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a1;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ a8;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ a7;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8) + v89;
  v91 = __ROR8__((*STACK[0x380] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = (0x6AF7234D0CC131D4 - v91) & 0xC2A16714FA488FC8 | (v91 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v93 = __ROR8__(v92 ^ 0x8B48252F955E681ALL, 8);
  v94 = ((2 * v90) | 0x36A4398A31861B6ALL) - v90;
  v95 = v92 ^ 0x230EC0B80CA81946;
  v96 = (((2 * (v93 + (v92 ^ 0x230EC0B80CA81946))) & 0xAC7FF88AB7D467A0) - (v93 + (v92 ^ 0x230EC0B80CA81946)) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  LOBYTE(v96) = (((__ROR8__((v94 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((v94 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v89, 61))) ^ 0xAB3042D228875C41) >> (8 * (v76 & 7u))) ^ 0xDD;
  v99 = (v98 + v97 - ((2 * (v98 + v97)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = *(a67 + 8 * (a66 - 6048));
  *v76 = v96 ^ 0xDD;
  v102 = (__ROR8__(v99, 8) + v100) ^ a1;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ a8;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x63B77BB044F1F226) - (v106 + v105) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0x1A2AEBE44253AF03;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  *(v76 + 1) = ((v111 + v110 - ((2 * (v111 + v110)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v76 + 1) & 7));
  v112 = __ROR8__((v76 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v113 = ((2 * v112 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v112 + 0x6BC5C09CD998FDFLL;
  v114 = __ROR8__(v113 ^ v69, 8);
  v115 = v113 ^ v70;
  v116 = (v114 + v115) ^ 0xE49D77DF873DBF7ELL;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xF5A2F1B9B5D0B209;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ a1;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = ((v71 | (2 * (v122 + v121))) - (v122 + v121) + v72) ^ v73;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ a7;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x1A2AEBE44253AF03;
  *(v76 + 2) = ((__ROR8__(v127, 8) + (v127 ^ __ROR8__(v126, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v76 + 2) & 7));
  v128 = __ROR8__((v76 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = (0xAF7234D0CC131D4 - v128) & v74 | (v128 - 0x6AF7234D0CC131D5) & v75;
  v130 = v129 ^ v67;
  v131 = v129 ^ v68;
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xE49D77DF873DBF7ELL;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0xF5A2F1B9B5D0B209;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = __ROR8__(v134, 8);
  v137 = ((a3 | (2 * (v136 + v135))) - (v136 + v135) + a5) ^ a6;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ a8;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ a7;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0x1A2AEBE44253AF03;
  *(v76 + 3) = a4 ^ 0xB9 ^ (((__ROR8__(v143, 8) + (v143 ^ __ROR8__(v142, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v76 + 3) & 7)));
  return v101();
}

void t6uy9jukl3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42FA8) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF42FA8) ^ 0xDF))] ^ 0xE2]) + 100);
  v1 = -85 * ((dword_1ECF432C0 - *v0) ^ 0xDF);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v1 - 8) ^ 0x67u) - 8) ^ v1) + 143);
  v3 = (*v2 ^ *v0) - &v5;
  *v0 = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((-1786473908 - (v6 | 0x9584924C) + (v6 | 0x6A7B6DB3)) ^ 0x58603623);
  LOBYTE(v2) = -85 * ((*v2 - *v0) ^ 0xDF);
  v4 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42FA8) ^ 0xDF)) ^ byte_1E4307CA0[byte_1E42FD630[(-85 * ((dword_1ECF432C0 - dword_1ECF42FA8) ^ 0xDF))] ^ 0x80]) + 178) - 8;
  (*&v4[8 * (*(off_1F5DB1CB0 + (*(off_1F5DB1C08 + v2 - 4) ^ 0xADu) - 12) ^ v2) + 77072])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3351DA0()
{
  v6 = (v4 + v2 - 16);
  v7 = (v0 + v2 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * ((v3 + 1554713648) & 0xFD417FFE ^ 0x14D5)) ^ (v1 + v3 + 1727))))();
}

uint64_t sub_1E3351E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v21 = (((&a14 ^ 0x62353B8A | 0xC9B0DCFE) - (&a14 ^ 0x62353B8A) + ((&a14 ^ 0x62353B8A) & 0x364F2300)) ^ 0xF3EC3416) * v20;
  a18 = -654855621 - v21;
  a19 = v21 + a10 + 1674577674;
  a15 = v21 - 531072580;
  a16 = a11;
  a17 = &a12;
  v22 = (*(v19 + 8 * (a10 ^ 0x2028)))(&a14);
  return (*(v19 + 8 * ((6866 * (a14 == ((a10 - 559859113) & 0x215EC93F) + 16247809 + ((a10 - 794) | 0x1C11))) ^ a10)))(v22);
}

uint64_t sub_1E3351EF0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = (a1 - 96) | 0x43;
  v21 = 1875091903 * ((((2 * (v19 - 232)) | 0x5FF551EC) - (v19 - 232) + 1342527242) ^ 0x998F2B75);
  *(v19 - 216) = (a1 + 7039) ^ v21;
  *(v19 - 224) = v16;
  *(v19 - 232) = ((((v17 ^ 0x725516A1) - 1918178977) ^ ((v17 ^ 0x535079F2) - 1397783026) ^ ((v17 ^ 0x2AC0F600) - 717288960)) + 1410210631 + v20) ^ v21;
  *(v19 - 208) = a16;
  v22 = (*(v18 + 8 * (a1 ^ 0x2263u)))(v19 - 232);
  return (*(v18 + 8 * (((*(v19 - 228) == ((4 * v20) ^ 0x13D0) + 16257235) * (v20 + 4170)) ^ v20)))(v22, 197499219);
}

uint64_t sub_1E3351FEC()
{
  v2 = *(STACK[0x568] + 24);
  STACK[0x6F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 1972) ^ (v0 + 1957))) ^ v0)))();
}

void sub_1E335202C(int a1@<W8>)
{
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v1;
  LODWORD(STACK[0x804]) = 16215976;
  STACK[0x670] = *(v2 + 8 * (a1 ^ 0x2CC));
  JUMPOUT(0x1E349C8E4);
}

uint64_t sub_1E3352068()
{
  v3 = STACK[0x5D8];
  *(v1 + 104) = 16;
  *(v1 + 103) = *(v3 + 23);
  *(v1 + 102) = *(v3 + 22);
  *(v1 + 101) = *(v3 + 21);
  *(v1 + 100) = *(v3 + 20);
  *(v1 + 99) = *(v3 + 19);
  *(v1 + 98) = *(v3 + 18);
  *(v1 + 97) = *(v3 + 17);
  *(v1 + 96) = *(v3 + 16);
  *(v1 + 95) = *(v3 + 15);
  *(v1 + 94) = *(v3 + 14);
  *(v1 + 93) = *(v3 + 13);
  *(v1 + 92) = *(v3 + 12);
  *(v1 + 91) = *(v3 + 11);
  *(v1 + 90) = *(v3 + 10);
  *(v1 + 89) = *(v3 + 9);
  *(v1 + 88) = *(v3 + 8);
  *(v1 + 84) = *v3;
  return (*(v2 + 8 * ((5091 * (*(v3 + 4) == (v0 - 98))) ^ v0)))();
}

void sub_1E3352130(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (2048652491 * ((((2 * a1) | 0x3BA25F80) - a1 + 1647235136) ^ 0x2C60B8C5));
  v2 = *(&off_1F5DB1610 + v1 - 1006) - 8;
  (*&v2[8 * (v1 ^ 0x2085)])(v3, 0, 128);
  v4[0] = v1 - 1710126949 * ((((2 * (v4 ^ 0xBDF9778B)) | 0xD3F7B04C) - (v4 ^ 0xBDF9778B) + 369371098) ^ 0x6619F43D) + 476321797;
  (*&v2[8 * (v1 ^ 0x20A1)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3352274()
{
  STACK[0x430] = v0 + 8;
  v4 = STACK[0x428];
  LODWORD(STACK[0x484]) = STACK[0x844];
  STACK[0x7A8] = v4;
  STACK[0x660] = 0;
  LODWORD(STACK[0x8B4]) = v2;
  STACK[0x540] = 0x4789E5A74F535ADDLL;
  STACK[0x5C0] = 0;
  v5 = (*(v3 + 8 * (v1 ^ 0x10C)))(16, 0x20040A4A59CD2);
  STACK[0x8E0] = v5;
  return (*(v3 + 8 * (((v5 == 0) * (((v1 - 3307) ^ 0x1DDF) - 2494)) ^ v1)))();
}

uint64_t sub_1E3352308()
{
  *v2 = v7;
  v5 = (v4 + 1724534064) & 0x9935AFFB;
  v12 = (v4 + 5709) ^ ((((&v10 ^ 0x986F0748) & 0x1338421F | ~(&v10 ^ 0x986F0748 | 0x1338421F)) ^ 0x2CC169CA) * v3);
  v11 = v8;
  (*(v1 + 8 * ((v4 + 3068) ^ 0x33C5)))(&v10);
  v12 = (v5 + 6433) ^ ((((&v10 | 0x4D0FF1FB) - (&v10 & 0x4D0FF1FB)) ^ 0x15662299) * v3);
  v11 = v9;
  result = (*(v1 + 8 * (v5 ^ 0x22F5)))(&v10);
  *v0 = 16257999;
  return result;
}

uint64_t sub_1E335243C@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v68 = a1 + v57;
  v69 = a1 + v57 + 9;
  v70 = __ROR8__(v69 & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = v70 - ((2 * v70 + 0x2A11B965E67D9C56) & v58) + v59;
  v72 = v71 ^ v60;
  v73 = v71 ^ v66;
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xE49D77DF873DBF7ELL;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xF5A2F1B9B5D0B209;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ v64;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = ((v61 & (2 * (v80 + v79))) - (v80 + v79) + v62) ^ v63;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x64C31C027084DE6CLL;
  v84 = a1 - 1;
  v85 = v83 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v83, 8) + v85) ^ v65;
  *(v68 + 9) = (((__ROR8__(v86, 8) + (v86 ^ __ROR8__(v85, 61))) ^ 0xAB3042D228875C41) >> (8 * (v69 & 7u))) ^ *(a57 + v84);
  return (*(*(v67 - 256) + 8 * ((8076 * (v84 == 0)) ^ (a2 + 2645))))();
}

uint64_t sub_1E3352570(uint64_t a1)
{
  v5 = (((v3 + 1346) | 0x16u) ^ 0xFFFFFFFFFFFFED08) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((236 * (v5 != 0)) ^ (v3 - 44))))();
}

uint64_t sub_1E33525B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a12 = &a10;
  a14 = 1317436891 * ((2 * (&a12 & 0x476A2870) - &a12 + 949344137) ^ 0x88964FFF) + 8154;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * (((2 * (a13 != (v15 ^ 0xF0433FB5))) | (4 * (a13 != (v15 ^ 0xF0433FB5)))) ^ 0x155Au)))(v16);
}

uint64_t sub_1E33526A0@<X0>(int a1@<W8>)
{
  v2 = ((a1 ^ 0x24BEu) + 0x32B9C33CFFC0A9B5) ^ STACK[0xB40];
  v3 = *(STACK[0x988] + 24);
  v4 = __ROR8__((v3 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (v4 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v6 = (__ROR8__((v4 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v5) ^ 0xE49D77DF873DBF7ELL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xF5A2F1B9B5D0B209;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((v10 + v9 - ((2 * (v10 + v9)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL, 8);
  v12 = (v10 + v9 - ((2 * (v10 + v9)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL ^ __ROR8__(v9, 61);
  v13 = (v11 + v12) ^ 0x61459D2AF01F24F7;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = *(v1 + 8 * a1);
  v17 = (((v15 + v14) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v15 + v14) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v18 = v17 ^ __ROR8__(v14, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x1A2AEBE44253AF03;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v3[10] = (((((2 * (v21 + v20)) | 0xC38C36871CFCF294) - (v21 + v20) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v3 + 10) & 7u))) ^ HIBYTE(v2) ^ 0x75;
  v22 = __ROR8__((v3 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v22 - ((2 * v22 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v24 = v23 ^ 0xD3FC8BFDA5C15E5;
  v23 ^= 0xA5792D2843AA64B9;
  v25 = __ROR8__(v24, 8);
  v26 = (((2 * (v25 + v23)) & 0x172EA68DBB7EC94) - (v25 + v23) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v27 = v26 ^ __ROR8__(v23, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xD4F2B43A3958542) - (v28 + v27) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x5963B6C555D97F1FLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) | 0x3A57A17B6EDF06BLL) - ((v33 + v32) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (((v37 + v38) | 0x3F31863D75651161) - ((v37 + v38) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v40 = __ROR8__(v39, 8);
  v41 = __ROR8__(v38, 61);
  v3[11] = (((((2 * (v40 + (v39 ^ v41))) | 0xAB41BFF64D60CE6CLL) - (v40 + (v39 ^ v41)) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v3 + 11) & 7u))) ^ BYTE6(v2) ^ 0x30;
  v42 = (__ROR8__((v3 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v43 = __ROR8__(v42 ^ 0x4DE9423B6F16E7D2, 8);
  v42 ^= 0xE5AFA7ACF6E0968ELL;
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((v46 + v45) | 0x2D1013F9AFD52057) - ((v46 + v45) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x5963B6C555D97F1FLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x64C31C027084DE6CLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x1A2AEBE44253AF03;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v3[12] = (((((2 * (v58 + v57)) & 0xA6AF603E61524BD2) - (v58 + v57) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v3 + 12) & 7u))) ^ BYTE5(v2) ^ 0x26;
  v59 = __ROR8__((v3 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = ((2 * (v59 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v59 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v61 = v60 ^ 0x1780DE40BC839FA3;
  v60 ^= 0xBFC63BD72575EEFFLL;
  v62 = __ROR8__(v61, 8);
  v63 = (((v62 + v60) | 0x524D786A2DAA5236) - ((v62 + v60) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v64 = v63 ^ __ROR8__(v60, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0xC461725543BD74EALL) - (v65 + v64) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x5963B6C555D97F1FLL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x61459D2AF01F24F7;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((v72 + v71) | 0xD6A77E9273FF605BLL) - ((v72 + v71) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (v75 + v74 - ((2 * (v75 + v74)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v3[13] = (((__ROR8__(v76, 8) + (v76 ^ __ROR8__(v74, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 13) & 7u))) ^ BYTE4(v2) ^ 0x9B;
  v77 = __ROR8__((v3 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = v77 - ((2 * v77 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v79 = v78 ^ 0x59C38B8127975FAELL;
  v78 ^= 0xF1856E16BE612EF2;
  v80 = (__ROR8__(v79, 8) + v78) ^ 0xE49D77DF873DBF7ELL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xF5A2F1B9B5D0B209;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = __ROR8__((v86 + v85 - ((2 * (v86 + v85)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v88 = (v86 + v85 - ((2 * (v86 + v85)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v85, 61);
  v89 = (v87 + v88 - ((2 * (v87 + v88)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x1A2AEBE44253AF03;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v3[14] = (((((v93 + v92) | 0x6B6AF9C6B406ECE7) - ((v93 + v92) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v3 + 14) & 7u))) ^ BYTE3(v2) ^ 0xB0;
  v94 = __ROR8__((v3 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v95 = ((v94 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v94 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v94 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v96 = v95 ^ 0x8A84C36C7E52240;
  v95 ^= 0xA0EEA9A15E13531CLL;
  v97 = (__ROR8__(v96, 8) + v95) ^ 0xE49D77DF873DBF7ELL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xF5A2F1B9B5D0B209;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = __ROR8__(v99, 8);
  v102 = __ROR8__((((2 * (v101 + v100)) & 0x7EC0B560615BD22) - (v101 + v100) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v103 = (((2 * (v101 + v100)) & 0x7EC0B560615BD22) - (v101 + v100) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v100, 61);
  v104 = (((v102 + v103) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v102 + v103) ^ 0xFE51A922A5729599) - (((v102 + v103) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x81910D2EFE6F15ACLL) - (v106 + v105) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((v109 + v108) | 0x452FEAF2D8983268) - ((v109 + v108) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v3[15] = (((v112 + v111 - ((2 * (v112 + v111)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v3 + 15) & 7u))) ^ BYTE2(v2) ^ 0x93;
  v113 = __ROR8__((v3 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v114 = -2 - (((0x6AF7234D0CC131D4 - v113) | 0xB9373BCC9E95648DLL) + ((v113 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v115 = v114 ^ 0xF0DE79F7F183835FLL;
  v114 ^= 0x58989C606875F203uLL;
  v116 = (__ROR8__(v115, 8) + v114) ^ 0xE49D77DF873DBF7ELL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xF5A2F1B9B5D0B209;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x5963B6C555D97F1FLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) & 0x24C3B6EDA515D42ALL) - (v122 + v121) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((v125 + v124) | 0x3A521DF821A27A3ELL) - ((v125 + v124) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x1A2AEBE44253AF03;
  v129 = __ROR8__(v128, 8);
  v130 = __ROR8__(v127, 61);
  LOBYTE(v127) = (((((2 * (v129 + (v128 ^ v130))) | 0x4D724CAE0D8F11E6) - (v129 + (v128 ^ v130)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v3 + 16) & 7u))) ^ BYTE1(v2) ^ 0x97;
  v131 = __ROR8__((v3 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v3[16] = v127;
  v132 = ((2 * ((v131 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v131 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v133 = v132 ^ 0xDE90BDF0289CA71;
  v132 ^= 0xA5AFEE489B7FBB2DLL;
  v134 = __ROR8__(v133, 8);
  v135 = (((2 * (v134 + v132)) | 0x692CEF71A0CBBC0ELL) - (v134 + v132) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v136 = v135 ^ __ROR8__(v132, 61);
  v137 = __ROR8__(v135, 8);
  v138 = __ROR8__((((2 * (v137 + v136)) & 0xFD81E0C09A12569ALL) - (v137 + v136) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v139 = (((2 * (v137 + v136)) & 0xFD81E0C09A12569ALL) - (v137 + v136) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v136, 61);
  v140 = (v138 + v139) ^ 0x5963B6C555D97F1FLL;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x61459D2AF01F24F7;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (v147 + v146 - ((2 * (v147 + v146)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v3[17] = (((__ROR8__(v148, 8) + (v148 ^ __ROR8__(v146, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 17) & 7u))) ^ v2 ^ 8;
  return v16();
}

uint64_t sub_1E33536AC(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (914963389 * (((a1 | 0xCE82EC95) - (a1 & 0xCE82EC95)) ^ 0xE27E5DEE));
  v424 = *(&off_1F5DB1610 + (v1 ^ 0x80660B11));
  v2 = *v424;
  v423 = *(&off_1F5DB1610 + (v1 ^ 0x80660A75));
  v3 = *(v423 - 4);
  v421 = *(&off_1F5DB1610 + (v1 ^ 0x80660A17));
  v4 = (*v424)[1] + 46;
  v5 = v4 & 0x32 ^ 0xB7;
  v6 = 2 * ((v4 ^ (2 * ((v4 ^ 0x44) & (2 * ((v4 ^ 0x54) & (2 * ((v4 ^ 0x54) & (2 * ((v4 ^ 0x54) & (2 * ((v4 ^ 0x54) & (2 * ((v4 ^ 0x44) & 0x26 ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) & 0x9E);
  v7 = *(&off_1F5DB1610 + v1 + 2140796448);
  v8 = *(&off_1F5DB1610 + (v1 ^ 0x80660B64));
  v411 = v8 + 267;
  v9 = *(v8 + 267 + (v4 | ((v4 < 0x2Cu) << 8)) - (((v6 ^ 0x3A40FB1A) - 1569027376) ^ ((v6 ^ 0x978873DD) + 263324169) ^ ((v6 ^ 0xADC888E3) + 905115959)) - 1741000092);
  v407 = v8 + 803;
  v10 = *(v8 + 803 + (*(v7 + 16) ^ 0x8DLL)) - 1;
  v11 = v10 & 0xFFFFFFFD ^ 0xFFFFFF94;
  v12 = v10 ^ (2 * ((v10 ^ 0x54) & (2 * ((v10 ^ 0x54) & (2 * ((v10 ^ 0x54) & (2 * ((v10 ^ 0x54) & (2 * ((v10 ^ 0x54) & (2 * (v10 & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  v13 = ((((v9 >> 2) & 3) << 6) & 0x80 | 0x50DE5A08002501CLL) ^ v9 ^ (((((v9 >> 2) & 3) << 6) | 0xF58FEDF3A146F13DLL) ^ 0xA70120C5EB90E40) & ((((*v421 - ((2 * *v421) & 0x8A)) << 8) - 0x64CE8FF0DB2FBB00) ^ 0x6B9378585D04EC61);
  v14 = ((*(v7 + 5) - ((2 * *(v7 + 5)) & 0xDA)) << 24) + 0x1BFFA8BA6D000000;
  v406 = (v13 & 0x9396C25DCD90265BLL ^ 0xDFC1BDC23B353E6CLL ^ ((((v2[15] - ((2 * v2[15]) & 0x48)) << 16) - 0x766CDEF1DFDC0000) ^ 0xE5FA1CAC124BD9A4) & (v13 ^ 0xA50120806292049)) & (v14 ^ 0xE400574592FFFFFFLL);
  v405 = v14 & 0x19D1A88A3F000000;
  LODWORD(v13) = v12 ^ (v12 >> 5) ^ (v12 >> 2);
  v15 = ((v3[14] - ((2 * v3[14]) & 0xFF3F)) << 24) - 0x3988FD7261000000;
  v420 = *(&off_1F5DB1610 + v1 + 2140796444);
  v16 = *v420;
  v17 = (((v16 & 0x30 ^ 0x26) + 92) ^ ((v16 & 0x30 ^ 0x10) + 110) ^ ((v16 & 0x30 ^ 0x36) + 76)) - (((v16 & 0x30 ^ 0x2E) - 103) ^ ((v16 & 0x30) + 55) ^ ((v16 & 0x30 ^ 0x5E) - 23)) + 67;
  v18 = v17 & 0x34 ^ 0xBB;
  v19 = v17 ^ (2 * ((v17 ^ 0x46) & (2 * ((v17 ^ 0x46) & (2 * ((v17 ^ 0x46) & (2 * ((v17 ^ 0x46) & (2 * ((v17 ^ 0x46) & (2 * ((v17 ^ 0x46) & 0x32 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  v20 = v13 ^ ((v13 ^ 0xBF) - 113) ^ ((v13 ^ 0xB3) - 125) ^ 0xCE;
  v418 = *(&off_1F5DB1610 + v1 + 2140796352);
  LOBYTE(v12) = (((v16 & 0x30 ^ 0xB9) - 59) ^ ((v16 & 0x30 ^ 0x5C) + 34) ^ ((v16 & 0x30 ^ 0xE5) - 103)) + (((v19 ^ 0x84) + 84) ^ ((v19 ^ 0x7B) - 83) ^ ((v19 ^ 0x2B) - 3));
  v21 = ((v2[6] - ((2 * v2[6]) & 0x1E0u) + 1294045180) << 32) - 0xC00000000;
  LOBYTE(v12) = v12 - 89;
  v22 = v12 & 0xAB ^ 0xEA;
  LOBYTE(v12) = v12 ^ (2 * ((v12 ^ 0x56) & (2 * ((v12 ^ 0x56) & (2 * ((v12 ^ 0x56) & (2 * ((v12 ^ 0x56) & (2 * ((v12 ^ 0x56) & (2 * ((v12 ^ 0x56) & (2 * v12) & 0x2E ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xA2;
  v23 = ((v16 - ((2 * v16) & 0x66666666) - 0x739640A76BA02FCDLL) ^ 0x8C69BF58945FD033) << (v16 & 0x20) << (v16 & 0x10) << (v12 & 0x75 ^ 1u) << (v12 & 0x8A ^ 8u);
  LOBYTE(v12) = v20 - 21;
  LOBYTE(v16) = v20 + 107;
  v24 = (v20 + 107) & 0xC1 | 0xE;
  v25 = v24 ^ (v20 - 21) & 0x1C;
  LOBYTE(v12) = v12 ^ (2 * ((v12 ^ 0x40) & (2 * ((v12 ^ 0x40) & (2 * ((v12 ^ 0x40) & (2 * ((v12 ^ 0x40) & (2 * ((v12 ^ 0x40) & (2 * (v16 & (2 * v24) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25));
  v26 = (v12 ^ 0xFFFFFFFFFFFFFF22) & ((((v2[2] - ((2 * v2[2]) & 0x10C)) << 8) + 0x427C944F43048600) ^ 0x428597A45E7779EBLL) | v12 & 0x14;
  v27 = (v26 ^ 0xFF06FC14E28C0000) & ((((*v418 - ((2 * *v418) & 0xFFCF)) << 16) + 0x5BD3FDA2ADE70000) ^ 0xA489B8DFC4C88B32);
  v28 = v26 & 0xA5BA8296D074CDLL;
  v415 = *(&off_1F5DB1610 + (v1 ^ 0x80660B68));
  v412 = *(&off_1F5DB1610 + (v1 ^ 0x80660BA8));
  v29 = ((*v415 << 8) ^ 0x1A244F25E30A841) & (*v412 ^ 0x1DFFC5F37EB2FFEELL) | *v412 & 0xBE;
  LODWORD(v26) = *(v8 + (*(v7 + 6) ^ 0xF5));
  v30 = (v28 ^ 0xA58190ABE85572C3 ^ v27) & (v21 ^ 0xB2DE700FFFFFFFFFLL) ^ v21 & 0x50128AB00000000;
  v31 = (v30 ^ 0xA084200B6A154282) & (v15 & 0x2070207D8000000 ^ 0x590F1BC2E9B1B5D3 ^ ((((v3[6] - ((2 * v3[6]) & 0x2Au) + 16642885) << 40) - 0x300000000000) ^ 0x118B049827AE7A59) & (v15 ^ 0x3988FD72E0BFFADDLL));
  v32 = v30 & 0x488FF7A0A9E03075;
  v33 = v6 & 0x10;
  LOBYTE(v15) = v6 & 0x20;
  v34 = ((v2[5] - ((2 * v2[5]) & 0xB2) - 0x732802B57928DDA7) ^ 0x8CD7FD4A86D72259) << (v6 & 0x10) << (v6 & 0x20 ^ 0x20u);
  v35 = ((*(v7 + 9) - ((2 * *(v7 + 9)) & 0xA4)) << 16) + 0x250D771BE3730000;
  v409 = *(&off_1F5DB1610 + (v1 ^ 0x80660A0F));
  v36 = ((*v409 << 16) ^ 0xCCEDC7296D14209BLL) & (v29 ^ 0xEF5DBB1D23CFC72ELL) ^ v29 & 0x10200D21230DF64;
  v37 = ((v26 ^ 0x6A ^ (v26 >> 2) & 0x3E) >> 2) | ((v26 ^ 0x6A ^ (v26 >> 2) & 0x3E) << 6);
  v416 = *(&off_1F5DB1610 + v1 + 2140796309);
  v38 = ((*v416 - ((2 * *v416) & 0x96u) - 864015490) << 32) - 0x3300000000;
  v39 = (v36 & 0x84A7064163B41CABLL ^ 0xB55E7DDF97C4815ALL ^ (v36 ^ 0x32103804804AC204) & ((((v3[18] - ((2 * v3[18]) & 0x70)) << 24) + 0x717D281538000000) ^ 0x3825F9ABA44BE354)) & (v38 ^ 0x337FD4B4FFFFFFFFLL);
  v40 = v2[12] - ((2 * v2[12]) & 0x5A) - 0x46A2C04CA96948D3;
  v417 = *(&off_1F5DB1610 + (v1 ^ 0x80660BA4));
  v41 = v34 << (v33 ^ 0x10u) << v15;
  v419 = **v424;
  v42 = (v40 & 0x1001000003CFELL ^ 0xB164FD6CA5F01E42 ^ ((*v417 << 8) ^ 0x770C9F255A10D201) & (v40 ^ 0xCED2A00EACC0482ELL)) & ((v35 - 2162688) ^ 0xDAF288E41CADFFFFLL) ^ (v35 - 2162688) & 0x21041502001F0000;
  v43 = (v42 ^ 0x189288A400049290) & ((((v3[16] - ((2 * v3[16]) & 0x17A)) << 24) - 0x5CB48FCB43000000) ^ 0x90CC2264D114FBD1) ^ v42 & 0xCC78ADAF93EB042ELL;
  v44 = -16777216 * *(v7 + 7) + 0x47506A0FFF000000;
  v45 = ((v2[4] - ((2 * v2[4]) & 0xFFF7)) << 16) - 0x4ED963738F050000;
  v414 = *(&off_1F5DB1610 + (v1 ^ 0x80660BC1));
  v46 = v44 & 0x40000067E2000000 ^ 0xBA0FEB87707C669ELL ^ (v45 & 0x8102948410D10000 ^ 0x36818627E2C9B827 ^ (v45 ^ 0x4ED963738F04FF65) & ((((v2[3] - ((2 * v2[3]) & 0x16C)) << 8) + 0x18F91F677D1EB600) ^ 0x2805765C92301365)) & (v44 ^ 0xB8AF95F000FFFFFFLL);
  v47 = *v414 << 32;
  v48 = v46 & (v47 ^ 0xFFFFFF6EFFFFFFFFLL);
  v49 = (v43 ^ 0x810880000090000) & ((((*(v7 + 19) - ((2 * *(v7 + 19)) & 0x174u) + 12949477) << 40) - 0x2B0000000000) ^ 0x6AC124A7F6981B8);
  v50 = v43 & 0x3CC457B580967E47;
  v413 = *(&off_1F5DB1610 + (v1 ^ 0x80660BBF));
  v51 = *v413;
  v410 = *(&off_1F5DB1610 + (v1 ^ 0x80660A2D));
  v408 = *(&off_1F5DB1610 + (v1 ^ 0x80660B7E));
  v52 = (v419 - ((2 * v419) & 0x10) - 0x2F32B5A665F4BDF8) & 0x800040408800403ELL ^ (*v408 << 56) ^ (((v3[8] - 2 * (v3[8] & 7u) + 26949) << 48) - 0x3E000000000000) ^ 0x304BF1DD3028B30FLL ^ ((*v410 << 40) & 0x670000000000 ^ 0xBCD711AA154975BFLL ^ (v47 & 0xFFFFFFE7FFFFFFFFLL ^ 0x821708239818A9A2 ^ v48) & ((*v410 << 40) ^ 0xFFFF6EFFFFFFFFFFLL)) & ((v419 - ((2 * v419) & 0x10) - 0x2F32B5A665F4BDF8) ^ 0x2F32B5A665F4BDF7);
  v53 = *(&off_1F5DB1610 + (v1 ^ 0x80660B6C));
  v54 = (((v3[13] - ((2 * v3[13]) & 0xFFC3u) - 906268642) << 32) - 0x3D00000000) ^ (*v53 << 40) ^ v405 ^ (((v3[3] - ((2 * v3[3]) & 0x96u) + 17751) << 48) - 0xC000000000000) ^ (((v3[2] - ((2 * v3[2]) & 0xFFE3u) + 158) << 56) - 0x2D00000000000000) ^ v52 ^ v406;
  v55 = (((v2[8] - ((2 * v2[8]) & 0x58u) + 637640524) << 32) - 0x2000000000) ^ (((*v3 - ((2 * *v3) & 0xFFE7u) + 117) << 56) - 0x200000000000000) ^ v50 ^ v49 ^ (((v2[13] - ((2 * v2[13]) & 0x10Cu) + 30629) << 48) - 0x1F000000000000);
  v56 = (v51 - ((2 * v51) & 0x4EF3F79A) - 0x9DD3032D8860433) ^ (v37 << 56) ^ v23 ^ v32 ^ v31;
  v57 = (((v3[11] - ((2 * v3[11]) & 0x13Cu) + 14980556) << 40) - 0x2E0000000000) ^ (((v2[7] - 2 * (v2[7] & 0xFu) + 145) << 56) - 0x200000000000000) ^ v38 & 0x840015DF00000000 ^ v39 ^ v41;
  v58 = v52 ^ v55 ^ 0x4501E8A764A4DE4ALL;
  v59 = v57 ^ v56;
  v60 = (v57 ^ v56 ^ 0xBAD2CD6D4B626F33) & (v56 ^ 0x5D37A7FF8EDD4135);
  v61 = v54 & 0xD3904EEBEAB10D75 ^ v58 ^ (v56 ^ 0x715816EB9B93B3BFLL) & (v54 ^ 0x44F45AC792EF66);
  v62 = v56 & 0x40BE467BBF76E844 ^ v54 ^ v60;
  v63 = ((v58 & 0x8970275061FBB595 ^ 0x8800061000A33184 ^ (v54 ^ 0x76CB2CF55996A50CLL) & (v58 ^ 0x980C8E998EA779C4)) - 2 * ((v58 & 0x8970275061FBB595 ^ 0x8800061000A33184 ^ (v54 ^ 0x76CB2CF55996A50CLL) & (v58 ^ 0x980C8E998EA779C4)) & 0x107988D09B5B25BDLL ^ (v54 ^ 0x76CB2CF55996A50CLL) & (v58 ^ 0x980C8E998EA779C4) & 8) - 0x6F86772F64A4DA4BLL) ^ v55 ^ 0x4501E8A764A4DE4ALL;
  v64 = (v63 - ((2 * v63) & 0xB6D4B342096F63CELL) + 0x5B6A59A104B7B1E7) ^ 0x4225D106A34A3B6FLL;
  v65 = (v58 ^ 0x67F371667158863BLL) & (v55 ^ 0xD9A01EB1D96B11BFLL) ^ v58 & 0x372682AECAD21A4BLL ^ v59;
  v66 = v56 ^ 0xFAACE0CEAA850C3ELL ^ (((v59 ^ 0x59374E90BEB7888) & (v55 ^ 0x117963E0EC46F40BLL)) - ((2 * ((v59 ^ 0x59374E90BEB7888) & (v55 ^ 0x117963E0EC46F40BLL))) & 0xB0C9719DB74F65E8) + 0x5864B8CEDBA7B2F4);
  v67 = v66 - ((2 * v66) & 0x9B60699E22AAE726) + 0x4DB034CF11557393;
  *(&v68 + 1) = v62 ^ v61 ^ 0x2ADDE;
  *&v68 = v62 ^ v61 ^ 0xCF5C00FAAE900000;
  v69 = v62 ^ v61 ^ 0xF842DECB8B715824;
  v70 = ((v62 ^ v61) >> 28) ^ 0xCF5C00FAALL;
  v71 = v62 ^ v61 ^ 0x8F887C68CE22D739 ^ ((v68 >> 19) - ((2 * (v68 >> 19)) & 0x81A8F924C160F5CELL) + 0x40D47C9260B07AE7);
  v72 = v61 ^ 0x4A3AFD229542E9C4;
  v73 = __ROR8__(v65 ^ v64, 43) ^ 0x634321C267866AD5;
  v74 = v71 + v70 - 2 * (v71 & v70);
  v75 = ((v62 ^ 0x8BD24E599B682E37 ^ v67) >> 39) ^ (8 * (v62 ^ 0x8BD24E599B682E37 ^ v67)) ^ ((v62 ^ 0x8BD24E599B682E37 ^ v67) << 25) ^ __ROR8__((((v62 ^ 0x8BD24E599B682E37 ^ v67) >> 61 << 50) | 0x2AA0BEBA096FA276) ^ __ROR8__(v62 ^ 0x8BD24E599B682E37 ^ v67, 14), 50);
  *(&v68 + 1) = ~v65;
  *&v68 = v65 ^ 0xA96C7AA9CD0CE271;
  v76 = (v68 >> 1) ^ v65 ^ 0xA96C7AA9CD0CE271 ^ ((v65 ^ 0xA96C7AA9CD0CE271) >> 6) ^ ((v65 ^ 0xA96C7AA9CD0CE271) << 58);
  *&v68 = __ROR8__(v73, 21);
  v77 = v68 ^ 0xEDDA6B47D3C81216;
  v78 = (v68 >> 17) & 0x200000000;
  v79 = v68 ^ 0xEDDA6B47D3C81216 ^ __ROR8__(v68 ^ 0xEDDA6B47D3C81216, 10);
  if ((v79 & v78) != 0)
  {
    v78 = -v78;
  }

  v80 = v78 + v79;
  v81 = v72 ^ __ROR8__(v72, 7) ^ (v72 >> 41) ^ (v72 << 23);
  v82 = v80 ^ __ROR8__(v77, 17) & 0xFFFFFFFDFFFFFFFFLL;
  v83 = v81 ^ (v69 << 36) ^ 0x5E3F5FA000000000 ^ v74;
  v84 = (v75 ^ 0xD0517DA417627557) & v76;
  v85 = v75 ^ 0x2FAE825BE89D8AA8 ^ v76;
  v86 = v82 & ~v85 ^ v75 ^ 0x2FAE825BE89D8AA8;
  v87 = v82 ^ v81 ^ v75 ^ (v75 ^ 0x2FAE825BE89D8AA8) & v83;
  v88 = v84 ^ v83;
  v89 = __ROR8__(__ROR8__(v87 ^ 0x2FAE825BE89D8AA8, 30) ^ 0x2237B0C20F751F3DLL, 34);
  v90 = (v86 ^ -v86 ^ (v88 - (v86 ^ v88))) + v88;
  v91 = (v89 ^ 0x3AFDC9C85304DEE5) + v88 - 2 * ((v89 ^ 0x3AFDC9C85304DEE5) & v88);
  v92 = v85 ^ v81 & ~v82;
  v87 ^= 0x891ED049A274FCFDLL;
  v93 = v82 ^ v83 & ~(v82 ^ v81);
  LODWORD(v83) = *(v407 + (((((v90 >> 61) - ((v90 >> 61) ^ 0x8D)) ^ 0xFE) + (v90 >> 61)) & 0x9F)) - 44;
  v94 = (v83 >> 5) ^ ((*(v407 + (((((v90 >> 61) - ((v90 >> 61) ^ 0x8D)) ^ 0xFE) + (v90 >> 61)) & 0x9F)) - 44) >> 2) ^ v83 & 0xFFFFFFBF;
  v95 = v93 ^ 0xF15F74F258F9ED1 ^ v92;
  *(&v96 + 1) = v92;
  *&v96 = v92 ^ 0xDEDBE286AAB15F6ALL;
  v97 = (v96 >> 1) ^ v92 ^ 0xDEDBE286AAB15F6ALL ^ ((v92 ^ 0xDEDBE286AAB15F6ALL) >> 6) ^ ((v92 ^ 0xDEDBE286AAB15F6ALL) << 58);
  LOBYTE(v92) = ((2 * v94) & 0x40) + ((v94 | v83 & 0x40) ^ 0xA7);
  v98 = __ROR8__(__ROR8__(v87, 8) ^ (v87 >> 15) ^ (v87 << 49) & 0xB600000000000000 ^ ((v87 << 49) & 0x4901DBCE2CB79CB6 | 0xB6B62431D3486349), 56);
  v99 = v90 ^ 0xA02813FE5825BADLL ^ v92 ^ (8 * (v90 ^ 0xA02813FE5825BADLL)) ^ ((v90 ^ 0xA02813FE5825BADLL) >> 39) ^ ((v90 ^ 0xA02813FE5825BADLL) << 25);
  v100 = v95 ^ __ROR8__(v95, 10) ^ (v95 >> 17) ^ (v95 << 47);
  v101 = v98 & 0xDFB6D49AD7E2457ELL ^ __ROR8__(v87, 41) ^ (v98 & 0x20492B65281DBA81 ^ (v87 << 57) & 0x2000000000000000 | (v87 << 57) & 0xDFFFFFFFFFFFFFFFLL) ^ 0x6992E5499F810CC8;
  v102 = v91 ^ __ROR8__(v91, 19) ^ (v91 >> 28) ^ (v91 << 36) ^ v101;
  v103 = v101 ^ v100;
  v104 = (v102 ^ 0xDFB6D49AD7E2457ELL) & (v103 ^ 0x20492B65281DBA81);
  v105 = (v102 ^ 0xDFB6D49AD7E2457ELL) + (v97 & ~v99) - 2 * ((v102 ^ 0xDFB6D49AD7E2457ELL) & v97 & ~v99);
  v106 = (v102 ^ 0x20492B65281DBA81) & v99 ^ v103 ^ 0xDFB6D49AD7E2457ELL;
  v107 = v99 ^ v97;
  v108 = (v103 ^ 0xDFB6D49AD7E2457ELL) & ~v100 ^ v99 ^ v97;
  v109 = v108 ^ 0x61171F08F2F960A3;
  v110 = (v108 ^ 0x61171F08F2F960A3) << v97 << (v97 & 0x3F ^ 0x3F);
  v111 = v99 ^ v100 & ~v107 ^ 0x92F095738C504AF7 ^ v105;
  v112 = v106 ^ 0x9D2FB4127C41CCALL ^ v105;
  v113 = v100 ^ v104;
  v114 = v112 ^ __ROR8__(v112, 19) ^ (v112 >> 28);
  v115 = v114 & 0x80 | (v112 << 36);
  v116 = (v108 ^ 0x61171F08F2F960A3) >> 1;
  v117 = v108 & 0x8000000000000;
  if ((v116 & v108 & 0x8000000000000) != 0)
  {
    v117 = -v117;
  }

  *(&v118 + 1) = v116 ^ v109;
  *&v118 = (v117 + v116) ^ v109 & 0xFFF7FFFFFFFFFFFFLL;
  v119 = (8 * v111) & v111 ^ __ROR8__(v111, 39) ^ (v111 ^ (v111 >> 61) | (8 * v111));
  v120 = v113 ^ 0xD5C9D94976895B35 ^ v108;
  *&v118 = __ROR8__((v118 >> 8) ^ 0x43D27821553A7F4ALL, 56);
  v121 = (v110 ^ (v108 >> 6) ^ v118 ^ 0xD3FC7D2919B4AFC1) + (v109 << 58) - 2 * ((v110 ^ (v108 >> 6) ^ v118 ^ 0xD3FC7D2919B4AFC1) & (v109 << 58));
  v122 = v115 ^ v114 & 0xFFFFFFFFFFFFFF7FLL;
  v123 = __ROR8__(((v106 ^ 0x9BC7CB0371CE90DLL) >> 5) & 0x7FFFFF000000000 ^ __ROR8__(v106 ^ 0x9BC7CB0371CE90DLL ^ __ROR8__(v106 ^ 0x9BC7CB0371CE90DLL, 7), 28) ^ 0x4EDBC9C236BC5562, 36) ^ ((v106 ^ 0x9BC7CB0371CE90DLL) << 23);
  v124 = v120 ^ __ROR8__(v120, 10) ^ __ROR8__(v120, 17);
  v125 = v121 ^ v119;
  v126 = v121 & ~v119;
  v127 = v122 ^ v123;
  v128 = (v127 ^ 0xDC943AA9DB124363) & v119;
  v129 = v123 ^ v124;
  v130 = v125 ^ (v129 ^ 0x236BC55624EDBC9CLL) & ~v124;
  v131 = v124 & ~v125 ^ v119;
  v132 = v128 ^ v129;
  v133 = v126 ^ v127;
  v134 = (v127 ^ 0x236BC55624EDBC9CLL) & (v129 ^ 0xDC943AA9DB124363);
  v135 = v128 ^ v129 ^ 0xD44C8A5A383054BCLL ^ v133;
  v136 = v131 ^ v133;
  v137 = v134 ^ v124;
  v138 = v132 ^ 0x9817D1BEEF4629CCLL;
  *(&v118 + 1) = v136 ^ 0x30169A05A177D06DLL;
  *&v118 = v136 ^ 0x2000000000000000;
  v139 = (v135 >> 19) + v135 - 2 * ((v135 >> 19) & v135);
  v140 = (v118 >> 61) ^ v136 ^ 0x30169A05A177D06DLL ^ ((v136 ^ 0x30169A05A177D06DuLL) >> 39) ^ ((v136 ^ 0x30169A05A177D06DLL) << 25);
  v141 = v130 ^ 0x9168644D1B60DBD1 ^ __ROR8__(v130 ^ 0x9168644D1B60DBD1, 1) ^ ((v130 ^ 0x9168644D1B60DBD1) >> 6) ^ ((v130 ^ 0x9168644D1B60DBD1) << 58);
  v142 = v138 ^ (v138 << 57) ^ (v138 << 23) ^ (v138 >> 7) ^ (v138 >> 41);
  *(&v118 + 1) = v137 ^ v130;
  *&v118 = v137 ^ v130 ^ 0xB8C75C206030C3E3;
  v143 = (v118 >> 10) ^ v118 ^ (v118 >> 17) ^ (v118 << 47);
  v144 = v139 ^ (v135 << 45);
  v145 = __ROR8__(v135, 28);
  if ((v139 & v145 & 0x200000000) != 0)
  {
    v146 = -(v145 & 0x200000000);
  }

  else
  {
    v146 = v145 & 0x200000000;
  }

  v147 = v142 ^ v145 & 0xFFFFFFFDFFFFFFFFLL ^ (v146 + v144);
  v148 = v143 ^ 0xF8C0000000000000;
  v149 = (~(2 * v147) + v147) & v140;
  v150 = v140 ^ v141;
  v151 = v141 & ~v140;
  v152 = (v143 ^ 0xF8C0000000000000) & ~v150 ^ v140;
  v153 = v150 ^ (v143 ^ 0x73FFFFFFFFFFFFFLL) & v142;
  v154 = v147 ^ v151;
  v155 = ((v147 ^ v151 ^ v152) & 0x8244C3A8AE2D46BFLL | (v147 ^ v151) & 0x7DBB3C5751D2B940) ^ (v152 - ((2 * v152) & 0xFB7678AEA3A57280) + 0x7DBB3C5751D2B940 + (v152 | 0x7DBB3C5751D2B940) - 2 * (v152 - ((2 * v152) & 0xFB7678AEA3A57280) + 0x7DBB3C5751D2B940));
  v156 = v143 ^ 0xF8C0000000000000 ^ v142;
  v157 = v149 ^ v156;
  v158 = v147 & ~v156;
  v159 = v154 ^ 0x989E911977D0AE24 ^ v157;
  v160 = v143 & 0x80000000;
  v161 = (v158 & v160) == 0;
  v162 = v158 + v160;
  v163 = 2 * v160;
  if (v161)
  {
    v164 = 0;
  }

  else
  {
    v164 = -v163;
  }

  v165 = v153 ^ v148 & 0xFFFFFFFF7FFFFFFFLL ^ (v162 + v164);
  v166 = *(v411 + (((v155 >> 61) + 2) ^ 0x9E));
  v167 = (0xF7AD6319A4D1A253 - (v165 & 0x40)) ^ v165 & 0xFFFFFFFFFFFFFFBFLL;
  v168 = v153 ^ 0xE6AFD3A35688678BLL;
  v169 = (v168 ^ -v168 ^ ((v168 >> 1) - ((v168 >> 1) ^ v168))) + (v168 >> 1);
  v170 = v155 ^ 0x165EFA0E0AE8FC01;
  v171 = v157 ^ 0x32BF2066F5A25BB4;
  v172 = v170 ^ ((v166 ^ 0x89) + (v166 ^ 0x58 | 0x2E) + ((16 * (v166 ^ 0x58)) & 0xC0 ^ (v166 ^ 0x58) & 0xD1) + 1) ^ (8 * v170) ^ (v170 << 25) ^ (v170 >> 39);
  v173 = ((v168 >> 6) | (v168 << 63)) ^ (v168 << 58);
  v174 = ((v167 >> 17) | (v167 << 54)) ^ (v167 << (v51 & 0x2F) << (v51 & 0x2F ^ 0x2F)) ^ ((v167 >> 10) & 0x1DC44B414FEA4 ^ v167 & 0xAC81DC44B414FEA4 | (v167 >> 10) & 0x3E23BB4BEB015BLL ^ v167 & 0x537E23BB4BEB015BLL);
  v175 = (v171 >> ((v170 >> 39) & 0x29) >> ((v170 >> 39) & 0x29 ^ 0x29)) | (v171 << 57);
  v176 = (v175 + (v171 ^ (v171 >> 7)) - 2 * (v175 & (v171 ^ (v171 >> 7)))) ^ (v171 << 23);
  v177 = v173 ^ v169 ^ 0x94 ^ v172;
  v178 = ((v159 >> 28) | (v159 << 45)) ^ (v159 << 36) ^ ((v159 ^ -v159 ^ ((v159 >> 19) - v159 - ((v159 >> 19) ^ -(v159 >> 19) ^ (v159 - ((v159 >> 19) ^ v159))))) + (v159 >> 19)) ^ v176;
  v179 = v178 ^ ((v173 ^ ~v169) + 2 * (v173 ^ v169) + (v177 | v172 ^ 0xFFFFFFFFFFFFFF6BLL) + 2);
  v180 = v176 ^ v174;
  v181 = (v178 | v172 ^ 0xFFFFFFFFFFFFFF6BLL) ^ v176 ^ v174;
  v182 = v179 ^ v181 ^ 0xACE9F0B4139B32FELL ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) << 36) ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 19) ^ (((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 28) | ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) << 45));
  *v421 = (v179 ^ v181 ^ 0x32FE ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 19) ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 28)) >> 8;
  *(v7 + 5) = (v179 ^ v181 ^ 0x139B32FE ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 19) ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 28)) >> 24;
  v2[1] = ((v179 ^ v181 ^ 0xFE ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 19) ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 28)) - ((2 * (v179 ^ v181 ^ 0xFE ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 19) ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 28))) & 0xD8) - 20) ^ 0xEC;
  v2[15] = (((v179 ^ v181 ^ 0x139B32FE ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 19) ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 28)) >> 16) - ((2 * ((v179 ^ v181 ^ 0x139B32FE ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 19) ^ ((v179 ^ v181 ^ 0xACE9F0B4139B32FELL) >> 28)) >> 16)) & 0x26) + 19) ^ 0x13;
  LODWORD(v169) = *(v8 + (BYTE4(v182) ^ 0xF5));
  *v53 = BYTE5(v182) - ((2 * BYTE5(v182)) & 0x22) - 111;
  v183 = v174 & (~(2 * v177) + v177) ^ v172 ^ v179;
  v184 = v183 ^ 0x1DB3027CD73986B5;
  v185 = (8 * v184) & v184 ^ (v184 >> 39) ^ ((8 * (v183 ^ 0x1DB3027CD73986B5)) | v183 ^ 0x1DB3027CD73986B5 ^ (v183 >> 61));
  v186 = ((v184 << 25) ^ (-33554432 * v184) ^ (v185 - (v185 ^ (v184 << 25)))) + v185;
  LODWORD(v169) = ((v169 ^ 0xFFFFFF9A) >> 2) & 0x3E ^ v169 ^ 0xFFFFFF9A;
  v3[13] = ((v169 >> 2) | (v169 << 6)) ^ 9;
  LOBYTE(v169) = *(v411 + (BYTE6(v182) + 2) - ((2 * (HIWORD(v182) + 2)) & 0x13C) + 158);
  v2[2] = (BYTE1(v186) - ((2 * BYTE1(v186)) & 8) + 4) ^ 4;
  v3[6] = (BYTE5(v186) + (~(2 * BYTE5(v186)) | 0x29) - 20) ^ 0xEB;
  *v418 = BYTE2(v186);
  v187 = (v176 | v174) ^ v177;
  v188 = v187 ^ v174 ^ 0x58BF23BBF4A0D1FCLL ^ ((v187 ^ v174) >> 1) ^ ((v187 ^ v174 ^ 0x58BF23BBF4A0D1FCLL) << 58) ^ (((v187 ^ v174 ^ 0x58BF23BBF4A0D1FCLL) >> 6) | ((v187 ^ v174) << 63));
  *(v7 + 16) = v186;
  v3[14] = (BYTE3(v186) - ((2 * BYTE3(v186)) & 0xB4) - 38) ^ 0xDA;
  v3[3] = v169 ^ 0x4C ^ (16 * v169) & 0xC0;
  v3[2] = (HIBYTE(v182) - ((2 * HIBYTE(v182)) & 0x1C) + 14) ^ 0xE;
  v2[6] = (BYTE4(v186) - ((2 * BYTE4(v186)) & 0x46) - 93) ^ 0xA3;
  *v412 = v187 ^ v174 ^ 0xFC ^ ((v187 ^ v174) >> 1) ^ ((v187 ^ v174 ^ 0x58BF23BBF4A0D1FCLL) >> 6) ^ 0x6F;
  *(v7 + 6) = HIBYTE(v186);
  *v420 = BYTE6(v186);
  LOBYTE(v186) = *(v411 + (((((v187 ^ v174 ^ 0xD1FC ^ ((v187 ^ v174) >> 1) ^ ((v187 ^ v174 ^ 0x58BF23BBF4A0D1FCLL) >> 6)) >> 8) ^ 0x68) + 2) ^ 0x9ELL));
  *v415 = v186 ^ 0xE9 ^ ((16 * v186) | 0x34);
  LOBYTE(v182) = *(v8 + 537 + (((((v187 ^ v174 ^ 0xF4A0D1FC ^ ((v187 ^ v174) >> 1) ^ ((v187 ^ v174 ^ 0x58BF23BBF4A0D1FCLL) >> 6)) >> 16) ^ 0x50) + 71) ^ 0xFDLL));
  v3[18] = ((BYTE3(v188) ^ 0xFA) - 2 * ((BYTE3(v188) ^ 0xFA) & 0xEE ^ BYTE3(v188) & 4) + 106) ^ 0x6A;
  LOBYTE(v186) = 33 * ((((2 * v182 - 88) ^ (v182 + 58) ^ 0x21) - 115) ^ (((2 * v182 - 88) ^ (v182 + 58) ^ 0xA6) + 12) ^ (((2 * v182 - 88) ^ (v182 + 58) ^ 0x58) - 10)) + 61;
  LOBYTE(v182) = v186 & 0xAA ^ 0xFD;
  *v409 = v186 ^ (2 * ((v186 ^ 0x70) & (2 * ((v186 ^ 0x70) & (2 * ((v186 ^ 0x70) & (2 * ((v186 ^ 0x70) & (2 * ((v186 ^ 0x70) & (2 * (v182 ^ v186 & 0x1A)) ^ v182)) ^ v182)) ^ v182)) ^ v182)) ^ v182)) ^ 0x3B;
  v189 = v178 & ~v180 ^ 0x7F2224E1700603CFLL ^ v187;
  LOBYTE(v169) = *(v8 + 537 + (((BYTE4(v188) ^ 0xDD) + 71) ^ 0xFDLL));
  v2[5] = ((BYTE6(v188) ^ 0x5F) - ((2 * (BYTE6(v188) ^ 0x5F)) & 0x88) - 60) ^ 0xC4;
  v190 = v189 ^ __ROR8__(v189, 10) ^ (v189 >> 17);
  v191 = v190 ^ (v189 << 47);
  v3[11] = ((BYTE5(v188) ^ 0x91) - 2 * ((BYTE5(v188) ^ 0x91) & 0x53 ^ BYTE5(v188) & 2) + 81) ^ 0x51;
  *(v7 + 19) = BYTE5(v191);
  v2[7] = ((HIBYTE(v188) ^ 0x2C) - 2 * ((HIBYTE(v188) ^ 0x2C) & 0x5B ^ HIBYTE(v188) & 1) + 90) ^ 0x5A;
  *v3 = (HIBYTE(v191) - ((2 * HIBYTE(v191)) & 0x7C) - 66) ^ 0xBE;
  *v416 = 33 * ((v169 + 58) ^ (2 * v169 - 88) ^ 0xDF);
  v192 = v181 ^ 0xAF812EE573BF4048 ^ ((v181 ^ 0xAF812EE573BF4048) << 23) ^ (((v181 ^ 0xAF812EE573BF4048) >> 7) ^ (v181 >> 41) | ((v181 ^ 0xAF812EE573BF4048) << 57));
  LOBYTE(v169) = BYTE6(v191) - ((2 * BYTE6(v191)) & 0xB0);
  v193 = v191 >> (v191 & 0x18) >> (v191 & 0x18 ^ 0x18);
  v2[3] = (((v192 ^ 0xC097) >> 8) - ((2 * ((v192 ^ 0xC097) >> 8)) & 0xD8) - 20) ^ 0xEC;
  *(v7 + 9) = BYTE2(v190);
  v2[8] = (BYTE4(v190) - ((2 * BYTE4(v190)) & 0x52) - 87) ^ 0xA9;
  v2[13] = (v169 - 40) ^ 0xD8;
  v3[16] = (v193 - ((2 * v193) & 0xA2) + 81) ^ 0x51;
  *v417 = BYTE1(v190) ^ 0x91;
  *v2 = ((v192 ^ 0x97) - ((2 * (v192 ^ 0x97)) & 0xD6) + 107) ^ 0x6B;
  v2[12] = (v190 - ((2 * v190) & 0xF4) + 122) ^ 0x7A;
  LOBYTE(v170) = *(v8 + 537 + (((((v192 ^ 0x57C097) >> 15) & 0x8E) + (((v192 ^ 0x57C097) >> 16) ^ 0x47)) ^ 0xFDLL));
  *v408 = HIBYTE(v192) ^ 0x91;
  v194 = (v192 ^ 0x57C097) >> (v419 & 0x28) >> (v419 & 0x28 ^ 0x28);
  *(v7 + 7) = BYTE3(v192);
  *v410 = ((v194 ^ 0x80) - ((2 * v194) & 0x84) - 62) ^ 0xD3;
  *v414 = BYTE4(v192) ^ 0x91;
  v2[4] = 33 * ((v170 + 58) ^ (2 * v170 - 88) ^ 0xDF);
  v3[8] = (BYTE6(v192) + (~(2 * BYTE6(v192)) | 0xD9) - 108) ^ 0x93;
  *v413 = v51 + 1;
  v422 = *(&off_1F5DB1610 + (v1 ^ 0x80660B2D));
  LODWORD(v173) = (((*v422 ^ 0x13) - 19) ^ ((*v422 ^ 0xFFFFFF87) + 121) ^ ((*v422 ^ 5) - 5)) - 98;
  LODWORD(v175) = v173 & 0xFFFFFFCD ^ 0x15;
  LODWORD(v194) = v173 ^ (2 * ((v173 ^ 0x22) & (2 * ((v173 ^ 0x22) & (2 * ((v173 ^ 0x22) & (2 * ((v173 ^ 0x22) & (2 * ((v173 ^ 0x22) & (2 * ((((2 * v173) & 0x46 ^ 0x6E) & 0x22222222 | v175) ^ ((2 * v173) & 0x46 ^ 0x6E) & v173)) ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ v175));
  v195 = *(v423 - 4);
  LOBYTE(v173) = 107 * v195[5] + 82;
  LOBYTE(v175) = v173 & 0xB2 ^ 2;
  LOBYTE(v175) = v173 ^ (2 * ((v173 ^ 0x2C) & (2 * ((v173 ^ 0x2C) & (2 * ((v173 ^ 0x2C) & (2 * ((v173 ^ 0x2C) & (2 * ((v173 ^ 0x2C) & (2 * v175) ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ v175));
  v196 = *(&off_1F5DB1610 + v1 + 2140796428);
  LODWORD(v173) = (v195[4] >> 6) | (4 * v195[4]);
  LOBYTE(v179) = v173 - 62;
  v197 = v173 - 62 - ((2 * v173) & 0x74) - 8;
  v198 = (v173 - 62 - ((2 * v173) & 0x74) - 8) ^ 0x92;
  v199 = v196 + 254;
  LODWORD(v194) = v194 ^ *(v196 + 254 + (v194 ^ 0x2BLL));
  LODWORD(v192) = (((v194 ^ 0x30) + 116) ^ ((v194 ^ 0x71) + 51) ^ ((v194 ^ 0xFFFFFF8C) - 48)) - ((((2 * (v194 ^ 0xFFFFFFBC)) & 0xFFFFFFA0 ^ 0x7D) - 49) ^ (((2 * (v194 ^ 0xFFFFFFBC)) & 0xFFFFFFA0) - 76) ^ (((2 * (v194 ^ 0xFFFFFFBC)) & 0xFFFFFFA0 ^ 0xFFFFFFDD) + 111)) - 105;
  LODWORD(v180) = v192 & 0xFFFFFFE6 ^ 0x74;
  LODWORD(v180) = v192 ^ (2 * (v192 & (2 * ((v192 ^ 0x3C) & (2 * ((v192 ^ 0x3C) & (2 * ((v192 ^ 0x3C) & (2 * ((v192 ^ 0x3C) & (2 * v180) ^ v180)) ^ v180)) ^ v180)) ^ v180)) ^ v180));
  v200 = v196 - 4;
  v201 = *v424;
  LOBYTE(v192) = 107 * (*v424)[18] - 114;
  LOBYTE(v184) = v192 & 0x66 ^ 0x9A;
  v202 = v192 ^ (2 * ((v192 ^ 0x70) & (2 * ((v192 ^ 0x70) & (2 * ((v192 ^ 0x70) & (2 * ((v192 ^ 0x70) & (2 * ((v192 ^ 0x70) & (2 * v184) ^ v184)) ^ v184)) ^ v184)) ^ v184)) ^ v184));
  LODWORD(v180) = (((16 * (v194 ^ 0xFFFFFFBC)) ^ 0x59) & (~(v194 >> 4) | 0xFFFFFFF8) | (v194 >> 4) & 6) ^ ((v180 >> 4) & 8 | 0x66) ^ 0x1E;
  v203 = (v180 >> 3) | (32 * v180);
  v204 = (((*v424)[16] - ((2 * (*v424)[16]) & 0xFFDFu) + 1623960589) << 32) - 0x1E00000000;
  v205 = ((v195[15] - ((2 * v195[15]) & 0x1111)) << 16) - 0x7DBBB2716780000;
  v206 = (v203 ^ 0xFFFFFFFFFFFFFF56) & (((((v175 ^ *(v196 - 4 + (v175 ^ 0x82))) << 8) ^ 0x395D76CC4E3F9C85) & (v205 ^ 0x415932048737FF85) | v205 & 0xC0200010B1C00000) ^ 0x87B4E4B0B32221D6) ^ v203 & 0xAC;
  v207 = ((*(v7 + 4) - ((2 * *(v7 + 4)) & 0x130u) + 3729306) << 40) - 0x20000000000;
  v208 = (v206 ^ 0x81366D93A3623904) & (v207 & 0x284DA80000000000 ^ 0x89106AEC7C0C3AFDLL ^ (v204 & 0xA2A5E00000000 ^ 0x6659F8DE327EBBDBLL ^ (((((*v424)[11] - 2 * ((*v424)[11] & 0x7F)) << 24) - 0x3007781B81000000) ^ 0x3F190245B9359AF5) & (v204 ^ 0x9F345410FFFF9EF5)) & (v207 ^ 0xC71867FFFFFFFFFFLL));
  v209 = v206 & 0xC8184A2277B8E42CLL;
  v210 = (((*v424)[10] - ((2 * (*v424)[10]) & 0x14Au) - 68731209) << 32) - 0x1200000000;
  v211 = (((v197 ^ 0xFFFFFFFC) + 101) ^ ((v197 ^ 0xFFFFFFE1) + 122) ^ ((v197 ^ 0xFFFFFFF1) + 106)) + 33;
  if ((v179 & 2) == 0)
  {
    v211 = (((v197 ^ 0x54) - 109) ^ ((v197 ^ 0xFFFFFF9C) + 91) ^ ((v197 ^ 0x2E) - 23)) + ((((2 * v197) & 0x14 ^ 0x38) + 40) & 0x3C) + 95;
  }

  v212 = v211 & 0xFFFFFFC6 ^ 0x7F;
  v213 = v211 ^ (2 * ((v211 ^ 0x68) & (2 * ((v211 ^ 0x68) & (2 * ((v211 ^ 0x68) & (2 * ((v211 ^ 0x68) & (2 * ((v211 ^ 0x68) & (2 * ((v211 ^ 0x68) & 0x2E ^ v212)) ^ v212)) ^ v212)) ^ v212)) ^ v212)) ^ v212));
  v214 = ((v195[12] - ((2 * v195[12]) & 0xFF3F)) << 24) + 5278729712435200000;
  v215 = *(v196 + v198 + 772) + (((v213 ^ 0xFFFFFFD8) + 55) ^ ((v213 ^ 0x43) - 82) ^ ((v213 ^ 0x2D) - 60)) - 87;
  v216 = v215 & 0xFFFFFFA4 ^ 0x77;
  v217 = 2 * ((2 * (v216 ^ v215 & 0x5A)) ^ 0xFFFFFFB4 ^ v216 ^ ((2 * (v216 ^ v215 & 0x5A)) ^ 0xFFFFFFB4) & v215);
  v218 = 2 * ((2 * (v217 ^ v216 ^ v217 & v215)) ^ v216 ^ (2 * (v217 ^ v216 ^ v217 & v215)) & v215);
  v219 = v215 ^ (2 * ((2 * (v218 ^ v216 ^ v218 & v215)) ^ v216 ^ (2 * (v218 ^ v216 ^ v218 & v215)) & v215));
  v220 = (v202 ^ *(v200 + (v202 ^ 0x56))) << 48;
  v221 = (((v219 ^ 0x78) + 91) ^ ((v219 ^ 0xFFFFFF86) - 91) ^ ((v219 ^ 0xFFFFFFB0) - 109)) - 18;
  v222 = v221 & 0xFFFFFFF3 ^ 0x16;
  v223 = (v209 ^ 0x24CD468D5598CCF0 ^ v208) & (v220 ^ 0xFF50FFFFFFFFFFFFLL) ^ v220 & 0xDDDDDDDDDDDDDDDDLL ^ ((v221 ^ (2 * ((v221 ^ 0x56) & (2 * ((v221 ^ 0x56) & (2 * ((v221 ^ 0x56) & (2 * ((v221 ^ 0x56) & (2 * ((v221 ^ 0x56) & (2 * ((v221 ^ 6) & (2 * v221) & 0x2E ^ v222)) ^ v222)) ^ v222)) ^ v222)) ^ v222)) ^ v222))) << 56);
  LOBYTE(v220) = -63 * v195[20] + 105;
  v224 = v220 & 0x43 ^ 0x7E;
  v225 = ((((v195[1] - ((2 * v195[1]) & 0xA6)) << 16) - 0x9DBCD194BAD0000) ^ (v195[19] - ((2 * v195[19]) & 0x50) + 0x23D148CFEB8D2D28) ^ 0x3465865A8269AE7ALL ^ (((*(v7 + 14) - ((2 * *(v7 + 14)) & 0x1B0) + 0x5994F96E95C7D7D8) ^ 0x5994F96E95C7D7D8) << (v203 & 8 ^ 8u) << (v203 & 8))) & (v214 ^ 0xB6BE2F4B60FFFFFFLL) ^ v214 & 0x841008C22000000;
  v226 = *(v7 + 22) - ((2 * *(v7 + 22)) & 0x1E0) - 0x72D60BCA85C7D010;
  v227 = (v226 ^ 0x72D60BCA85C7D00ELL) & ((((v195[17] - ((2 * v195[17]) & 0x2A)) << 8) + 0x3F02AE97B3221500) ^ 0x5ED206642C3A166ELL) ^ v226 & 0x828400440203C91;
  v425 = v196 + 512;
  LODWORD(v220) = *(v196 + 512 + ((v220 ^ (2 * ((v220 ^ 0x16) & (2 * ((v220 ^ 0x16) & (2 * ((v220 ^ 0x16) & (2 * ((v220 ^ 0x16) & (2 * ((v220 ^ 0x16) & (2 * ((v220 ^ 0x16) & (2 * v220) & 0x2E ^ v224)) ^ v224)) ^ v224)) ^ v224)) ^ v224)) ^ v224))) ^ 0x5Fu));
  v228 = ((v220 >> 3) | (32 * v220)) - ((v220 >> 2) & 0x1E);
  v229 = (v225 & 0xE4A46423E9C458F6 ^ v210 & 0x2300000000 ^ 0x1B5B9BFD163BF7A9) & (v210 & 0xDC00000000 ^ 0x9ADBF42D4CA2D4A0 ^ v225 & 0x1B5B9BDC163BA709) | (v225 & 0xE4A46423E9C458F6 ^ v210 & 0x2300000000) & 0x64240002A1440856;
  v230 = (v227 ^ 0x9607170820C75001) & ((((v195[22] - ((2 * v195[22]) & 0x8E)) << 16) - 0x1774963923B90000) ^ 0x800F57640831724FLL);
  v231 = v227 & 0x977BC15D2B898DB0;
  v232 = ((v195[9] - ((2 * v195[9]) & 0x14Cu) + 1601692329) << 32) - 0x300000000;
  v233 = ((*(v7 + 11) - ((2 * *(v7 + 11)) & 0x9Au) + 1561395803) << 32) - 0xE00000000;
  v234 = ((*(v7 + 24) - ((2 * *(v7 + 24)) & 0x24)) << 16) - 0x41EB881C03EE0000;
  v235 = ((*(v7 + 23) - ((2 * *(v7 + 23)) & 0x1CA)) << 24) + 0x44EA10B5E5000000;
  v236 = (v235 ^ 0xBB15EF4A1AFFFFBBLL) & (v234 & 0x141006E325D00000 ^ 0x3B455CC31D16F74FLL ^ (v234 ^ 0x41EB881C03EDFFF4) & ((((v195[7] - ((2 * v195[7]) & 0x148)) << 8) - 0x38A7F75885725C00) ^ 0x6CB5F9B7A0A284F4));
  v237 = v235 & 0x4042108F1C000000;
  v238 = ((*(v7 + 15) - ((2 * *(v7 + 15)) & 0xDE)) << 24) + 0x4B80A63D6F000000;
  v239 = v201[17] - ((2 * v201[17]) & 0xD4) + 0x207FA225031B866ALL;
  v240 = (v237 ^ 0x975423C23947144CLL ^ v236) & (v239 ^ 0xDF805DDAFCE47995);
  v241 = (v228 + 15) ^ 0xFFFFFFFA ^ ((v228 + 15) >> 2) & 0x31;
  v242 = (v238 & 0x260DA8000000 ^ 0x10D6963B6ABF91BDLL ^ (v238 ^ 0xB47F59C290FFFFFFLL) & (v231 ^ 0x86717FC588F4F873 ^ v230)) & (v232 ^ 0xA0881D59FFFFFFFFLL);
  v243 = v232 & 0x24CEFB00000000;
  v244 = (v240 ^ (v239 & 0x200000100008 | 0x30A2DC28100EE9E3)) & (v233 ^ 0xA2EEFDB2FFFFFFFFLL);
  LODWORD(v230) = *(v7 - 2) + 24;
  LODWORD(v232) = v230 & 0x12 | 0x4D;
  LODWORD(v232) = v230 ^ (2 * ((v230 ^ 0x18) & (2 * ((v230 ^ 0x18) & (2 * ((v230 ^ 0x18) & (2 * ((v230 ^ 0x18) & (2 * ((v230 ^ 0x18) & (2 * (((2 * (v230 & 0x12)) | 0xA) & (v230 ^ 0x18) ^ v232)) ^ v232)) ^ v232)) ^ v232)) ^ v232)) ^ v232));
  LOBYTE(v238) = (((((v241 >> 5) | (8 * v241)) ^ 0xE1) - 55) ^ ((((v241 >> 5) | (8 * v241)) ^ 0x76) + 96) ^ ((((v241 >> 5) | (8 * v241)) ^ 0x1D) + 53)) - 99;
  LOBYTE(v241) = v238 & 0x39 ^ 0xC5;
  LOBYTE(v240) = v238 ^ (2 * ((v238 ^ 0x3E) & (2 * ((v238 ^ 0x3E) & (2 * ((v238 ^ 0x3E) & (2 * ((v238 ^ 0x3E) & (2 * ((v238 ^ 0x3E) & (2 * (((2 * v238) ^ 6) & (v238 ^ 0x3E) ^ v241)) ^ v241)) ^ v241)) ^ v241)) ^ v241)) ^ v241));
  LODWORD(v239) = *(v199 + (v232 ^ 0xF4));
  v245 = *v7;
  v246 = (((v201[9] - ((2 * v201[9]) & 0x1B0u) + 6577895) << 40) - 0xF0000000000) ^ (v245 - ((2 * v245) & 0xA3DA01B8) - 0x288A45C9AE12FF24) ^ (((v195[10] - ((2 * v195[10]) & 0xFF87u) + 3586) << 48) - 0x3F000000000000) ^ (((v195[21] - ((2 * v195[21]) & 0x46u) + 52) << 56) - 0x1100000000000000) ^ v229;
  v247 = ((*(v7 + 20) - ((2 * *(v7 + 20)) & 0x1E4u) + 15382) << 48) - 0x24000000000000;
  v248 = ((v232 ^ v239) >> 7) & 1 | (2 * (v232 ^ v239));
  v249 = v233 & 0x1C119BA000000000 ^ (((*(v7 + 10) - ((2 * *(v7 + 10)) & 0xFFBFu) + 9914113) << 40) - 0x220000000000) ^ (((*(v7 + 13) - ((2 * *(v7 + 13)) & 0xD6u) + 59541) << 48) - 0x2A000000000000) ^ (((*(v7 + 12) - ((2 * *(v7 + 12)) & 0xF8u) + 40) << 56) - 0x2C00000000000000) ^ v244;
  v250 = 0x6C97BAE9A39D2E2ELL - (((v247 ^ 0xEBDD44CE3372FE20) - 0x4513CBF070D8069) ^ ((v247 ^ 0x87CA042584EEFBCBLL) - 0x68467C54B0918582) ^ ((v247 ^ 0x57E540EBB79C05EBLL) + 0x4796C7657C1C845ELL));
  v251 = 0x30FBED42129F7760 - (((v247 ^ 0x160F9F79AA535EB8) + 0x8D93B5C39666979) ^ ((v247 ^ 0x86CDC8C8A99BAA95) - 0x67E49312C55162AALL) ^ ((v247 ^ 0x5987118E79F4D51CLL) + 0x4751B5ABEAC1E2DDLL));
  v252 = (v251 ^ 0x192E3A944A15DE8ALL) & (2 * (v251 & 0x994F3B1850A5C0C3)) ^ v251 & 0x994F3B1850A5C0C3;
  v253 = ((2 * (v251 ^ 0x9B058844A165E88)) ^ 0x21FEC73835673C96) & (v251 ^ 0x9B058844A165E88) ^ (2 * (v251 ^ 0x9B058844A165E88)) & 0x90FF639C1AB39E4ALL;
  v254 = ((4 * (v253 ^ 0x900120840A908249)) ^ 0x43FD8E706ACE792CLL) & (v253 ^ 0x900120840A908249) ^ (4 * (v253 ^ 0x900120840A908249)) & 0x90FF639C1AB39E48;
  v255 = (v254 ^ 0xFD02100A821800) & (16 * ((v253 ^ 0x7C400000230400) & (4 * v252) ^ v252)) ^ (v253 ^ 0x7C400000230400) & (4 * v252) ^ v252;
  v256 = ((16 * (v254 ^ 0x9002618C10318643)) ^ 0xFF639C1AB39E4B0) & (v254 ^ 0x9002618C10318643) ^ (16 * (v254 ^ 0x9002618C10318643)) & 0x90FF639C1AB39E40;
  v257 = (v256 ^ 0xF621800A318400) & (v255 << 8) ^ v255;
  v258 = (((v256 ^ 0x9009421C10821A4BLL) << 8) ^ 0xFF639C1AB39E4B00) & (v256 ^ 0x9009421C10821A4BLL) ^ ((v256 ^ 0x9009421C10821A4BLL) << 8) & 0x90FF639C1AB39E00;
  v259 = v257 ^ 0x90FF639C1AB39E4BLL ^ (v258 ^ 0x9063001812920000) & (v257 << 16);
  v260 = ((*(v7 - 3) - ((2 * *(v7 - 3)) & 0x1AEu) + 1142509292) << 32) - 0x1500000000;
  v261 = v250 ^ v247 ^ v251 ^ ((v250 ^ 0x38C67E55AD9B1AF1) - 0x79D04D0F7587B686) ^ ((v250 ^ 0x21A13ADED37E05E3) - 0x60B709840B62A994) ^ ((v250 ^ 0x27BF8A0E1984540BLL) - 0x66A9B954C198F87CLL) ^ ((v250 ^ 0x7FCEFDDFBF7DE76ELL) - 0x3ED8CE8567614B19) ^ (2 * ((v259 << 32) & 0x10FF639C00000000 ^ v259 ^ ((v259 << 32) ^ 0x1AB39E4B00000000) & (((v258 ^ 0x9C63840821944BLL) << 16) & 0x10FF639C00000000 ^ 0x1063610C00000000 ^ (((v258 ^ 0x9C63840821944BLL) << 16) ^ 0x639C1AB300000000) & (v258 ^ 0x9C63840821944BLL))));
  v262 = v248 ^ 0x2Au | (*(v7 + 8) << 8);
  v263 = v243 ^ (((*(v7 - 1) - ((2 * *(v7 - 1)) & 0x14u) + 1693759) << 40) - 0x350000000000) ^ (((v201[14] - ((2 * v201[14]) & 0xC0u) + 148) << 56) - 0x3400000000000000) ^ v242 ^ (v240 << 48);
  v264 = ((((v261 ^ 0x4317D7778CCBF210) - 0x2B8B11D2D0756967) ^ ((v261 ^ 0x6B780A60DAC51A4) - 0x6E2B46035112CAD3) ^ ((v261 ^ 0xA6939CBB3CB9F396) + 0x31F0A5E19FF8971FLL)) + 0x7E66540F5B9CEC86) ^ ((v260 & 0x4090F8600000000 ^ 0x45B97EFFE231FEC5 ^ (v260 ^ 0xBBE6B128FF31FEC5) & ((((*(v7 - 4) - ((2 * *(v7 - 4)) & 0x196)) << 24) - 0x372C89CF35000000) ^ 0x896306492931FEC5)) + (*(v7 + 17) << 40) + ((((((*(v7 + 18) - ((2 * *(v7 + 18)) & 0x146)) << 16) - 0x51963E43325D0000) ^ 0x857EF47A67720697) & ~v262 | v262 & 0xF968) ^ 0x2B1735C6AAD10697));
  v265 = (((*(v7 + 21) - ((2 * *(v7 + 21)) & 0xE0u) + 165) << 56) - 0x3500000000000000) ^ 0x18C154E2754765BFLL ^ (v264 - ((2 * v264) & 0xD182A9C4EA8ECB7ELL) + 0x68C154E2754765BFLL);
  v266 = v223 ^ (v265 - ((2 * v265) & 0x7BD05FAA9776F92CLL) + 0x3DE82FD54BBB7C96);
  v267 = (v266 ^ 0x8278B9D6BBC6719DLL) & (v246 ^ 0x4609C4BF4D5AF3EALL);
  v268 = (v265 - ((v265 - ((2 * v265) & 0x5A99D76FE4D95B04) + 0x2D4CEBB7F26CAD82) ^ v249 ^ 0xD17C52E83C1C879ELL)) ^ (0xD2B314480D93527ELL - (((v249 ^ 0xBF67E7CBE3406CCALL) - 0x6E1BB523DF5CEB54) ^ ((v249 ^ 0x317677494ADAE78ELL) + 0x1FF5DA5E89399FF0) ^ ((v249 ^ 0x722129DD67EAA158) + 0x5CA284CAA409D93ALL)));
  v269 = ((v268 - ((2 * v268) & 0x5A99D76FE4D95B04) + 0x2D4CEBB7F26CAD82) ^ v249 ^ 0xD17C52E83C1C879ELL) + v265;
  v270 = v263 ^ v246;
  v266 ^= 0x7D87462944398E62uLL;
  v271 = v269 ^ 0x9B369D1AC2DB2C1BLL;
  v272 = (v269 ^ 0x64C962E53D24D3E4) & v266;
  v273 = v266 ^ (v270 ^ 0x895C79947A44687ALL) & (v246 ^ 0xB9F63B40B2A50C15);
  v274 = v271 ^ v267;
  v275 = v271 & (~(2 * (v249 ^ 0x670624450CAB0607)) + (v249 ^ 0x670624450CAB0607)) ^ v270 ^ 0x895C79947A44687ALL;
  v276 = __ROR8__(v246 ^ (v270 ^ 0x76A3866B85BB9785) & (v249 ^ 0x670624450CAB0607) ^ 0x3FE6B3F7715EFED3 ^ v273, 3) ^ 0xF2A6A2C707300418;
  *(&v277 + 1) = __ROR8__(v276, 61);
  *&v277 = 8 * v276;
  v278 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v272 ^ v249 ^ 0x670624450CAB0607 ^ v275, 35) ^ 0xE8A56A7B9503D879, 41) ^ 0x41205A48495D34C4, 23) ^ 0xBA69888240B49092, 29) ^ 0x769203928FED52F6;
  *&v277 = __ROR8__((v277 >> 55) ^ 0xB1B9D80184CE9721, 9);
  *(&v277 + 1) = v277 ^ 0x5EDCAD43942478CLL;
  v279 = (v277 >> 61) ^ v277 ^ 0x5EDCAD43942478CLL ^ ((v277 ^ 0x5EDCAD43942478CLL) >> 39) ^ ((v277 ^ 0x5EDCAD43942478CLL) << 25);
  v280 = v278 ^ __ROR8__(v278, 10) ^ (v278 >> 17) ^ (v278 << 47);
  v281 = v274 ^ 0x2DC9C80E268A629BLL ^ __ROR8__(v274 ^ 0x2DC9C80E268A629BLL, 7) ^ ((v274 ^ 0x2DC9C80E268A629BLL) >> 41) ^ ((v274 ^ 0x2DC9C80E268A629BLL) << 23);
  *(&v277 + 1) = v275 ^ 0x7422F1997948670DLL;
  *&v277 = v275;
  v282 = (v277 >> 1) ^ v275 ^ 0x7422F1997948670DLL ^ ((v275 ^ 0x7422F1997948670DLL) >> 6) ^ ((v275 ^ 0x7422F1997948670DLL) << 58) ^ v279;
  v283 = v273 ^ 0x17223808AB63761CLL ^ v274 ^ __ROR8__(v273 ^ 0x17223808AB63761CLL ^ v274, 19) ^ ((v273 ^ 0x17223808AB63761CLL ^ v274) >> 28) ^ ((v273 ^ 0x17223808AB63761CLL ^ v274) << 36) ^ v281;
  v284 = v280 ^ v281;
  v285 = v281 & ~v280 ^ v282 ^ 0x3A1178CCBCA43386;
  v286 = (v282 ^ 0x3A1178CCBCA43386) & ~v279 ^ v283;
  v287 = v279 ^ v280 & (v282 ^ 0xC5EE8733435BCC79);
  v288 = v284 ^ v279 & ~v283;
  v289 = v283 & ~v284;
  v290 = v286 ^ v287;
  v291 = v288 ^ v286;
  v161 = ((v288 ^ v286) & 0x2000000000000000) == 0;
  v292 = 0x2000000000000000;
  if (!v161)
  {
    v292 = 0xE000000000000000;
  }

  v293 = (v292 + v291) ^ 0x99208E071B8932D5;
  v294 = (v285 & 0x80000000000 | 0xDEDBE286AAB15F6ALL) ^ v285 & 0xFFFFF7FFFFFFFFFFLL;
  v295 = v280 ^ v289 ^ 0xF15F74F258F9ED1;
  v296 = v288 ^ 0xA6B052124AE97655;
  v297 = (v290 >> 61) ^ v290 ^ 0xA02813FE5825BADLL ^ (8 * (v290 ^ 0xA02813FE5825BADLL)) ^ ((v290 ^ 0xA02813FE5825BADLL) >> 39) ^ ((v290 ^ 0xA02813FE5825BADLL) << 25);
  v298 = v295 ^ v285;
  v299 = v294 ^ (v294 >> 1);
  v300 = v299 + (v285 << 63);
  v301 = v299 & 0x200000000000;
  if ((v301 & (v294 >> 6)) != 0)
  {
    v301 = -v301;
  }

  v302 = v300 & 0xFFFFDFFFFFFFFFFFLL ^ (v294 << 58) ^ (v301 + (v294 >> 6));
  v303 = v298 ^ __ROR8__(v298, 10) ^ (v298 >> 17) ^ (v298 << 47);
  v304 = v296 ^ __ROR8__(v296, 7) ^ (v296 >> 41) ^ (v296 << 23);
  v305 = v304 ^ (v293 >> 19) ^ (v293 << 36) ^ (v293 << 45) & v293 ^ (v293 ^ (v293 >> 28) | (v293 << 45));
  v306 = v297 & ~v305 ^ v303 ^ v304;
  v307 = (v297 | ~v302) ^ v305;
  v308 = (__ROR8__(__ROR8__(v303 ^ v304, 8) ^ 0x27F3D7167F3DF05CLL, 56) ^ 0xC28E980C20FA3D8) & v305;
  v309 = v302 ^ v297;
  v310 = v309 ^ v304 & ~v303;
  v311 = v297 ^ v303 & ~v309 ^ v307 ^ 0x6D0F6A8C73AFB508;
  v312 = v306 ^ v307;
  v313 = 0x8000000000000;
  if ((v306 & 0x8000000000000) != 0)
  {
    v313 = 0xFFF8000000000000;
  }

  v314 = v311 ^ __ROR8__(v311, 39) ^ __ROR8__(v311, 61);
  v315 = v303 ^ v308 ^ v310 ^ 0xD5C9D94976895B35 ^ __ROR8__(v303 ^ v308 ^ v310 ^ 0xD5C9D94976895B35, 10) ^ ((v303 ^ v308 ^ v310 ^ 0xD5C9D94976895B35) >> 17) ^ ((v303 ^ v308 ^ v310 ^ 0xD5C9D94976895B35) << 47);
  v316 = v310 ^ 0x61171F08F2F960A3 ^ __ROR8__(v310 ^ 0x61171F08F2F960A3, 1) ^ ((v310 ^ 0x61171F08F2F960A3) >> 6) ^ ((v310 ^ 0x61171F08F2F960A3) << 58);
  v317 = (v313 + v306) ^ 0x9B47CB0371CE90DLL ^ __ROR8__((v313 + v306) ^ 0x9B47CB0371CE90DLL, 41) ^ (__ROR8__(__ROR8__(((v313 + v306) >> 7) ^ 0x30328F291DC751CLL, 37) ^ 0x5F8D926670188200, 27) + (((v313 + v306) ^ 0x9B47CB0371CE90DLL) << 57));
  *(&v318 + 1) = v306 ^ v307;
  *&v318 = v312 ^ 0xF62D04BED83BE335;
  v319 = ((v312 ^ 0xF62D04BED83BE335 ^ ((v312 ^ 0xF62D04BED83BE335) >> 19)) + ((v312 ^ 0xF62D04BED83BE335) << 45) - 2 * (((v312 ^ 0xF62D04BED83BE335) << 45) & (v312 ^ 0xF62D04BED83BE335))) ^ (v318 >> 28) ^ v317;
  v320 = v317 & ~v315 ^ v314 ^ v316;
  v321 = v315 & ~(v314 ^ v316) ^ v314;
  v322 = v317 ^ v315;
  v323 = v319 ^ 0x83BE335000000000 ^ v316 & ~v314;
  v324 = (v319 ^ 0x7C41CCAFFFFFFFFFLL) & v314 ^ v322;
  v325 = v323 ^ 0xD44C8A5A383054BCLL;
  v326 = v321 ^ v323;
  v327 = v320 ^ v315 ^ (v319 ^ 0x83BE335000000000) & ~v322;
  v329 = v325 ^ v324;
  v330 = ((v325 ^ v324) >> 19) + v329 - 2 * (((v325 ^ v324) >> 19) & v329);
  v331 = v324 ^ 0xBB7C14E8CBAB9550;
  v332 = v327 ^ 0xB8C75C206030C3E3;
  v333 = v327 & 0x800000000000;
  if (((v332 >> 10) & v333) != 0)
  {
    v333 = -v333;
  }

  v334 = ((v326 ^ 0x137D5F53859A6CF1) >> 39) ^ (8 * (v326 ^ 0x137D5F53859A6CF1)) ^ ((v326 ^ 0x137D5F53859A6CF1) << 25) ^ ((v326 >> 61) & 4 ^ (v326 ^ 0x137D5F53859A6CF1) & 0xB7320AA24EEE31E4 | (v326 >> 61) & 3 ^ (v326 ^ 0x137D5F53859A6CF1) & 0x48CDF55DB111CE1BLL);
  v328 = v320 ^ 0x9168644D1B60DBD1;
  v335 = ((v328 >> 6) | (v328 << 63)) ^ (v328 << 58) ^ ((v328 >> 1) + v328 - 2 * ((v328 >> 1) & v328));
  v336 = (((v333 + (v332 >> 10)) ^ v332 & 0xFFFF7FFFFFFFFFFFLL) + (v332 << 54) - 2 * (((v333 + (v332 >> 10)) ^ v332 & 0xFFFF7FFFFFFFFFFFLL) & (v332 << 54))) ^ __ROR8__(v332, 17);
  v337 = __ROR8__(v331, 7);
  v338 = (v331 ^ v337) & 0xFFFFFF7FFFFFFFFFLL ^ (v331 << 23) ^ ((v331 ^ v337) & 0x8000000000 | (v331 >> 41));
  v339 = __ROR8__(v329, 28) ^ (v329 << 45) ^ v330 ^ v338;
  v340 = v339 ^ v335 & ~v334;
  v341 = v339 & ~(v336 ^ v338);
  v342 = v336 ^ v338 ^ v334 & ~v339;
  v343 = v334 ^ v335;
  v344 = v340 ^ v334 ^ v336 & ~v343;
  v345 = v342 & 0x40000;
  if ((v342 & 0x40000 & v340) != 0)
  {
    v345 = -v345;
  }

  v346 = (v345 + v340) ^ v342 & 0xFFFFFFFFFFFBFFFFLL;
  v347 = (v338 & ~v336 ^ -(v338 & ~v336) ^ (v343 - (v338 & ~v336 ^ v343))) + v343;
  v348 = v347 ^ 0xF7AD6319A4D1A253 ^ ((v341 ^ -v341 ^ (v336 - (v341 ^ v336))) + v336);
  *(&v349 + 1) = v344 ^ 0x165EFA0E0AE8FC01;
  *&v349 = v344;
  v350 = ((v344 ^ 0x165EFA0E0AE8FC01 ^ -(v344 ^ 0x165EFA0E0AE8FC01) ^ (((v344 ^ 0x165EFA0E0AE8FC01) << 25) - (((v344 ^ 0x165EFA0E0AE8FC01) << 25) ^ v344 ^ 0x165EFA0E0AE8FC01))) + ((v344 ^ 0x165EFA0E0AE8FC01) << 25)) ^ (v349 >> 61);
  v351 = v342 ^ 0x32BF2066F5A25BB4;
  v352 = (v350 ^ -v350 ^ ((*(&v349 + 1) >> 39) - (v350 ^ (*(&v349 + 1) >> 39)))) + (*(&v349 + 1) >> 39);
  v353 = (v342 ^ 0x32BF2066F5A25BB4) >> 41;
  v354 = v342 ^ 0x32BF2066F5A25BB4 ^ __ROR8__(v342 ^ 0x32BF2066F5A25BB4, 7);
  *(&v349 + 1) = v347;
  *&v349 = v347 ^ 0xE6AFD3A35688678BLL;
  v355 = v347 ^ 0xE6AFD3A35688678BLL ^ __ROR8__(v347 ^ 0xE6AFD3A35688678BLL, 1) ^ (v349 >> 6);
  v356 = v354 + v353 - 2 * (v354 & v353);
  v357 = v351 << 23;
  v358 = (v357 - (v356 ^ v357)) ^ -v356;
  v359 = v358 & 0x40000;
  if ((v358 & 0x40000 & v356) != 0)
  {
    v359 = -v359;
  }

  v360 = v359 + v356;
  v361 = v348 ^ __ROR8__(v348, 10) ^ (v348 >> 17) ^ (v348 << 47);
  v362 = v358 & 0xFFFFFFFFFBFBFFFFLL;
  v363 = v358 & 0x4000000;
  if ((v360 & v363) != 0)
  {
    v363 = -v363;
  }

  *(&v364 + 1) = v346;
  *&v364 = v346 ^ 0x989E911977D0AE24;
  v365 = ((v363 + v360) ^ v362) + v357;
  v366 = v355 ^ v352;
  v367 = v346 ^ 0x989E911977D0AE24 ^ __ROR8__(v346 ^ 0x989E911977D0AE24, 19) ^ (v364 >> 28) ^ v365;
  v368 = v367 ^ (v355 ^ v352 ^ 0x2C00000000000000) & ~v352;
  v369 = v365 ^ v361;
  v370 = (v367 ^ 0x82F51DBFFFFFFFFFLL) & v352 ^ v365 ^ v361;
  v371 = v370 ^ v368;
  v372 = ((v370 ^ v368) >> 19) & 1;
  if ((v372 & (v370 ^ v368 ^ 0x31E7DCC12C6DEC25) ^ (v372 | 0x2002259001260908)) == 0x2002259001260908)
  {
    v373 = ((v370 ^ v368) >> 19) & 1;
  }

  else
  {
    v373 = -v372;
  }

  v374 = v371 ^ 0x557EAF25FF4E509FLL;
  *(&v375 + 1) = v374;
  *&v375 = v370 ^ v368;
  v376 = (v375 >> 19) & 0xFFFFFFFFFFFFFFFELL ^ 0x5CCF9A844A0 ^ (v373 + (v371 ^ 0x2E67CD4225076AF0));
  v377 = ((v376 & 0xF331131B79BFCFA0 ^ (v374 >> 28) & 0xB79BFCFA0 ^ 0xCCFEECF4C648F1DFLL) & (v376 & 0xCCEECE48640305FLL ^ 0xE5F4EC347658F1FDLL) | (v376 & 0xF331131B79BFCFA0 ^ (v374 >> 28) & 0xB79BFCFA0) & 0x1201130B09A70E00) ^ (v374 >> 28) & 0x48640305FLL;
  *v422 = v377 ^ 0x31;
  v378 = v369 & (__ROR8__(__ROR8__(v361, 26) ^ 0x5CCCA185F19C6AB6, 38) ^ 0xE8398E55268CCD79) ^ v366;
  *(&v375 + 1) = (((v366 ^ 0xD3FFFFFFFFFFFFFFLL) & v361 ^ v352) - ((2 * ((v366 ^ 0xD3FFFFFFFFFFFFFFLL) & v361 ^ v352)) & 0x99DA7D0258DBD84ALL) + 0x4CED3E812C6DEC25) ^ 0xF8991C9B57FC81C3 ^ v368;
  *&v375 = v290;
  *&v375 = __ROR8__(__ROR8__(*(&v375 + 1), 53) & 0xFFFC0000000007FFLL ^ __ROR8__(*(&v375 + 1) ^ (*(&v375 + 1) >> 61) ^ (v375 >> 61), 14) ^ 0xABBC92F1F3289639, 50);
  v379 = (v375 ^ 0x24BC7CCA258E6AEFLL) + (v290 >> 61) - 2 * ((v375 ^ 0x24BC7CCA258E6AEFLL) & (v290 >> 61));
  *&v375 = __ROR8__(v378 ^ 0x9A014E3F62F5C29BLL ^ ((v378 ^ 0x9A014E3F62F5C29BLL) >> 1), 37);
  v380 = (((v375 << 37) ^ ((v378 ^ 0x9A014E3F62F5C29BLL) << 63)) & 0xFFFFFFE000000000 | (v375 >> 27)) ^ __ROR8__(v378 ^ 0x9A014E3F62F5C29BLL, 6);
  v381 = v379 ^ (*(&v375 + 1) << 25);
  v382 = v377 ^ (v374 << 36);
  v201[16] = ((v382 ^ 0xFE65CCAE87524109) >> 32) ^ 0x6D;
  v195[5] = BYTE1(v377) ^ 0xD7;
  v195[15] = BYTE2(v377) ^ 0xDE;
  v195[19] = (v379 - ((2 * v379) & 0xDD) + 110) ^ 0x6E;
  v201[11] = ((((v376 & 0x79BFCFA0 ^ (v374 >> 28) & 0x79BFCFA0 ^ 0xC648F1DF) & (v376 & 0x8640305F ^ 0x7658F1FD) | (v376 & 0x79BFCFA0 ^ (v374 >> 28) & 0x79BFCFA0) & 0x9A70E00) ^ (v374 >> 28) & 0x8640305F) >> 24) ^ 0xF7;
  *(v7 + 4) = (((v382 ^ 0xFE65CCAE87524109) >> 32) >> 8) ^ 0x66;
  v201[18] = ((v382 ^ 0xFE65CCAE87524109) >> 48) ^ 0x4F;
  v195[4] = HIBYTE(v382) ^ 0x47;
  *(v7 + 14) = BYTE1(v379);
  v383 = v380 + 61;
  if (v380 >= 0xBBC4F8AD0C5AD6C3)
  {
    v384 = -61;
  }

  else
  {
    v383 = v380;
    v384 = 0;
  }

  v385 = *(v200 + ((107 * BYTE2(v381)) ^ 0x30));
  v201[10] = (BYTE4(v381) - ((2 * BYTE4(v381)) & 0x83) - 63) ^ 0xC1;
  v195[10] = (BYTE6(v381) - ((2 * BYTE6(v381)) & 0x94) + 74) ^ 0x4A;
  v201[9] = (BYTE5(v381) - ((2 * BYTE5(v381)) & 0xA2) + 81) ^ 0x51;
  v195[21] = (HIBYTE(v381) - 2 * (HIBYTE(v381) & 0xF) + 15) ^ 0xF;
  v195[12] = (BYTE3(v381) - ((2 * BYTE3(v381)) & 0xCA) + 101) ^ 0x65;
  v195[1] = v385 ^ (107 * BYTE2(v381)) ^ 0xC9;
  v195[17] = (BYTE1(v380) - ((2 * BYTE1(v380)) & 0xD2) + 105) ^ 0x69;
  *(v7 + 22) = v383 + v384;
  v195[22] = (BYTE2(v380) - ((2 * BYTE2(v380)) & 0x34) - 102) ^ 0x9A;
  v386 = *(v200 + ((107 * BYTE3(v380)) ^ 0x30));
  v195[9] = (BYTE4(v380) - ((2 * BYTE4(v380)) & 0xD2) - 23) ^ 0xE9;
  *(v7 - 1) = BYTE5(v380);
  *(v7 + 15) = v386 ^ (107 * BYTE3(v380)) ^ 0xC9;
  v387 = *(v425 + ((-63 * BYTE6(v380)) ^ 0x1CLL));
  v388 = (v387 >> 3) | (32 * v387);
  v389 = v361 ^ (v367 ^ 0x7D0AE24000000000) & ~v369 ^ v378 ^ 0x35D6341295E4AA7BLL;
  v201[14] = (HIBYTE(v380) - ((2 * HIBYTE(v380)) & 0x68) + 52) ^ 0x34;
  v390 = v370 ^ 0x27DC0C0D967AC3ACLL;
  v391 = (v388 ^ 0xA5) & 0xB2;
  v392 = ((v390 >> 41) ^ (v390 >> 7) | (v390 << 57)) ^ v390;
  v393 = v379 & 0x20;
  v394 = v389 ^ __ROR8__(v389, 10) ^ (v389 >> 17);
  v395 = v394 ^ (v389 << 47);
  v396 = v392 ^ (v390 << 23);
  v397 = v388 >> 2;
  v201[17] = (v394 + (~(2 * v394) | 0xA9) + 44) ^ 0x2B;
  *(v7 + 23) = BYTE3(v394);
  *(v7 + 21) = HIBYTE(v396);
  v195[7] = (BYTE1(v394) - ((2 * BYTE1(v394)) & 0xCF) - 25) ^ 0xE7;
  *(v7 + 13) = BYTE6(v395);
  *(v7 + 10) = BYTE5(v395);
  v398 = (v388 >> 2) & 0x10 | v391;
  v399 = v391 - ((v388 >> 2) & 0x10);
  v161 = ((v388 >> 2) & 0x10 & v388) == 0;
  v400 = v395 >> v393;
  result = v393 ^ 0x20;
  *(v7 + 24) = BYTE2(v394);
  *(v7 - 3) = BYTE4(v396);
  *(v7 + 11) = v400 >> result;
  v402 = ((v388 & 0xFC) >> 2) & 1 ^ (v388 ^ 0xFFFFFFA5) & 0x4D;
  if (v161)
  {
    v403 = v398;
  }

  else
  {
    v403 = v399;
  }

  *(v7 + 18) = BYTE2(v396);
  *(v7 + 12) = HIBYTE(v395);
  v404 = ((v403 ^ v397 & 0x20 | v402) >> 5) | (8 * (v403 ^ v397 & 0x20 | v402));
  *(v7 - 2) = v392;
  v195[20] = (v404 - ((2 * v404) & 0x56) - 85) ^ 0xAB;
  *(v7 + 20) = BYTE6(v396);
  *(v7 - 4) = BYTE3(v396);
  *(v7 + 8) = BYTE1(v392);
  *(v7 + 17) = BYTE5(v396);
  *v7 = v245 + 1;
  *a1 = v382 ^ 0x80C2C38037040AF3;
  return result;
}

void woqRTqq9PL5McfBs891()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF432E8) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF432E8) ^ 0xDF))] ^ 0xB1]) + 161);
  v1 = *(&off_1F5DB1610 + ((-85 * (*v0 ^ dword_1ECF432C0 ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * (*v0 ^ dword_1ECF432C0 ^ 0xDF))] ^ 0xEE]) + 85);
  v2 = &v4[*v1 ^ *v0];
  *v0 = 2054362027 * v2 + 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * (((v5 | 0xB0BB633A) - (v5 & 0xB0BB633A)) ^ 0x82A038AA);
  LOBYTE(v1) = -85 * (*v0 ^ 0xDF ^ *v1);
  v3 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF432E8 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * (dword_1ECF432E8 ^ 0xDF ^ dword_1ECF432C0))] ^ 0xE9]) + 135) - 8;
  (*&v3[8 * (*(off_1F5DB1E80 + (*(off_1F5DB1BE0 + v1) ^ 0x2Au) - 8) ^ v1) + 75712])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3357FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 + 2906)))(19);
  v44 = *(v42 + 8 * (v40 ^ 0x1A2B));
  *v44 = v43;
  (*(v41 + 8 * (v40 + 2936)))();
  v45 = (*(v41 + 8 * (v40 ^ 0x3F6A)))(23);
  v46 = *(v42 + 8 * (v40 - 6337));
  *(v46 - 4) = v45;
  (*(v41 + 8 * (v40 ^ 0x3F88)))();
  **(v42 + 8 * (v40 - 6523)) = 0;
  v47 = *(v42 + 8 * (v40 ^ 0x1B5A));
  *v47 = 0;
  v48 = *v44;
  **(v42 + 8 * (v40 ^ 0x1B46)) = -34;
  *(v47 + 16) = 80;
  **(v42 + 8 * (v40 - 6371)) = 51;
  v45[18] = 119;
  v48[6] = -122;
  v48[15] = 1;
  v45[13] = 39;
  **(v42 + 8 * (v40 ^ 0x1A56)) = -15;
  v45[2] = 68;
  *(v47 + 5) = 88;
  v48[2] = 26;
  **(v42 + 8 * (v40 - 6422)) = 73;
  **(v42 + 8 * (v40 ^ 0x1B35)) = -14;
  **(v42 + 8 * (v40 - 6465)) = 47;
  v48[7] = 17;
  **(v42 + 8 * (v40 - 6377)) = 93;
  *v45 = -80;
  *(v47 + 19) = 25;
  *(v47 + 9) = -109;
  v45[8] = 73;
  v45[11] = 83;
  **(v42 + 8 * (v40 - 6574)) = -63;
  **(v42 + 8 * (v40 ^ 0x1A44)) = -86;
  v48[1] = -22;
  v45[14] = 102;
  *(v47 + 7) = 3;
  **(v42 + 8 * (v40 - 6510)) = 69;
  v45[3] = 79;
  v48[12] = 54;
  v48[5] = -15;
  v48[8] = -11;
  v45[6] = -113;
  v48[13] = 23;
  **(v42 + 8 * (v40 ^ 0x1AFB)) = 77;
  *v48 = -59;
  *(v47 + 6) = -77;
  v48[4] = 34;
  v45[16] = -72;
  v48[3] = -5;
  **(v42 + 8 * (v40 ^ 0x1A9E)) = 22;
  v49 = *v44;
  v50 = *(v46 - 4);
  v50[19] = 45;
  v50[10] = 36;
  v50[1] = 15;
  v50[5] = -87;
  v50[15] = -39;
  v50[12] = 32;
  *(v47 + 4) = 31;
  v50[4] = -90;
  *(v47 + 14) = 52;
  v49[10] = 66;
  v49[18] = -16;
  *(v49 + 8) = -9871;
  v50[7] = -92;
  **(v42 + 8 * (v40 ^ 0x1A17)) = 58;
  *(v47 + 11) = 120;
  v50[17] = -98;
  v50[20] = -86;
  *(v47 + 12) = -17;
  v49[9] = 13;
  *(v47 + 22) = 77;
  v50[21] = -116;
  *(v47 - 3) = 79;
  *(v47 - 1) = -15;
  v49[11] = -14;
  v50[9] = -33;
  *(v47 + 23) = 105;
  *(v47 + 8) = 34;
  *(v47 + 15) = -72;
  v49[14] = -105;
  v50[22] = 69;
  *(v47 - 4) = 58;
  *(v47 + 20) = -3703;
  *(v47 + 13) = 32;
  *(v47 + 24) = -15;
  *(v47 + 10) = -121;
  *(v47 + 17) = -26807;
  *(v47 - 2) = 72;
  return (*(a40 + 8 * ((125 * (((172 * (v40 ^ 0x1A25) - 180952957) & 0xAC91B47) == 6655)) ^ (172 * (v40 ^ 0x1A25)))))(0, 4114014339, 180951879, 276, -6655);
}

uint64_t sub_1E3359304()
{
  v3 = (v0 + 768936503) & 0xD22AEF96;
  v9 = v6;
  v10 = (v0 + 3174) ^ ((((&v8 | 0x363676F2) - (&v8 & 0x363676F2)) ^ 0x6E5FA590) * v2);
  (*(v1 + 8 * ((v0 - 949) ^ 0x35F3)))(&v8);
  v10 = (v3 + 4760) ^ ((&v8 ^ 0x5869D362) * v2);
  v9 = v5;
  (*(v1 + 8 * (v3 + 6026)))(&v8);
  return (v7 ^ 0xF7FFDBCF) + 150484992 + ((v7 << ((v0 + 75) ^ 0x7E)) & 0xEFFFB79E) - 16257999;
}

uint64_t sub_1E3359344()
{
  v2 = STACK[0x7D8];
  STACK[0x5D0] = STACK[0x7D8];
  return (*(v1 + 8 * (((v2 != 0) * (((v0 ^ 0x1080) - 2057) ^ 0x4EF)) ^ v0)))();
}

uint64_t sub_1E335937C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 == (LODWORD(STACK[0x3D0]) ^ 0xEC6A086E);
  LOBYTE(STACK[0x74F]) = v6;
  return (*(a5 + 8 * ((47 * v6) ^ LODWORD(STACK[0x3A0]))))();
}

uint64_t sub_1E33593C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = (v12 ^ v9 ^ v10) + a6;
  v16 = __ROR8__((v8 + v15) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v17 = __ROR8__(v16 ^ 0x49E9423B6F16E7D2, 8);
  v16 ^= 0xE1AFA7ACF6E0968ELL;
  v18 = (v7 - ((v17 + v16) | v7) + ((v17 + v16) | a1)) ^ a2;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xF5A2F1B9B5D0B209;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (a7 - ((v22 + v21) | a7) + ((v22 + v21) | a3)) ^ a4;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x61459D2AF01F24F7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x64C31C027084DE6CLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v13;
  *(v11 + v15) = *(v8 + v15) ^ (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v8 + v15) & 7))) ^ 0x3C;
  return (*(v14 + 8 * (((v15 != 0) * a5) ^ v12)))();
}

uint64_t sub_1E3359514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  a17 = 476323082 - 1710126949 * ((2 * (&a17 & 0x5E248038) - &a17 + 568033220) ^ 0x13C02454);
  v20 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((12999 * (a18 == (v19 | 0xF80142))) ^ v19)))(v20);
}

uint64_t sub_1E3359664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, int a14, unsigned int a15)
{
  a13 = &a12;
  a15 = 1317436891 * ((&a13 + 2064409363 - 2 * (&a13 & 0x7B0C6313)) ^ 0xCB0FFB65) + 8154;
  v18 = (*(v15 + 77096))(&a13);
  return (*(v15 + 8 * ((7413 * (a14 == ((v17 - 2745) ^ 0x1AD9))) ^ v16)))(v18);
}

uint64_t sub_1E33597C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 + 8);
  STACK[0x900] = *(v5 + 8 * v3);
  STACK[0x800] = &STACK[0x9AC];
  STACK[0x470] = 0;
  STACK[0x968] = 0;
  return (*(v5 + 8 * (((v6 == 0) * ((((v3 - 619) | 0x1887) ^ 0xA97) - 3770 + 2 * (((v3 - 619) | 0x1887) ^ 0xA97) - 10083)) ^ ((v3 - 619) | 0x1887))))(a1, a2, a3, 16215976);
}

uint64_t sub_1E3359858@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X6>, int a3@<W8>)
{
  v7 = (v3 - 770) | 0x601;
  *v4 = a1;
  *a2 = a3;
  v8 = (v7 - 1810) | 0x1340;
  v14 = (v7 + 6535) ^ (1824088897 * ((-1475022752 - (&v12 | 0xA814F060) + (&v12 | 0x57EB0F9F)) ^ 0xF82DCFD));
  v13 = v11;
  (*(v5 + 8 * (v7 ^ 0x229F)))(&v12);
  v14 = (v8 + 3417) ^ (1824088897 * (((&v12 | 0xA0CD8504) - (&v12 & 0xA0CD8504)) ^ 0xF8A45666));
  v13 = v10;
  (*(v5 + 8 * (v8 ^ 0x36CD)))(&v12);
  return (v6 - 16257999);
}

uint64_t sub_1E335998C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v13 = vdupq_n_s64(0x38uLL);
  v14 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v15 = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  v16 = vdupq_n_s64(0x4DE9423B6F16E7D2uLL);
  v17 = vdupq_n_s64(0xE5AFA7ACF6E0968ELL);
  v18 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v19 = vdupq_n_s64(v3);
  v20 = vdupq_n_s64(v4);
  v21 = vdupq_n_s64(v5);
  v22 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v23 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v24 = vdupq_n_s64(v6);
  v25 = vdupq_n_s64(v7);
  v26 = vdupq_n_s64(v8);
  v27 = vdupq_n_s64(v9);
  v28 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x3E0] = xmmword_1E4316E10;
  v29 = vdupq_n_s64(0xAB3042D228875C41);
  v30.i64[0] = a1 + v10 - 15;
  v30.i64[1] = a1 + v10 - 16;
  v31.i64[0] = a1 + v10 - 13;
  v31.i64[1] = a1 + v10 - 14;
  v32.i64[0] = a1 + v10 - 5;
  v32.i64[1] = a1 + v10 - 6;
  v33.i64[0] = a1 + v10 - 3;
  v33.i64[1] = a1 + v10 - 4;
  v34.i64[0] = a1 + v10 - 1;
  v34.i64[1] = a1 + v10 - 2;
  v35.i64[0] = a1 + v10 + ((a2 - 3565) ^ 0xFFFFFFFFFFFFF9D3);
  v35.i64[1] = a1 + v10 - 8;
  v36 = vandq_s8(v35, v12);
  v37 = vandq_s8(v34, v12);
  v38 = vandq_s8(v33, v12);
  v39 = vandq_s8(v32, v12);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v14), v15);
  v43 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v14), v15);
  v44 = veorq_s8(v43, v16);
  v45 = veorq_s8(v42, v16);
  v46 = veorq_s8(v42, v17);
  v47 = veorq_s8(v43, v17);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), v18);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), v18);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v52 = veorq_s8(v48, v50);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = vaddq_s64(v53, v51);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(v55, vandq_s8(vaddq_s64(v55, v55), v19)), v20), v21);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(v54, vandq_s8(vaddq_s64(v54, v54), v19)), v20), v21);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v22);
  v63 = veorq_s8(v61, v22);
  v64 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v23);
  v70 = veorq_s8(v68, v23);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v24);
  v77 = veorq_s8(v75, v24);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), v25), v77), v26), v27);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), v25), v76), v26), v27);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80), v28);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), v28);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v84.i64[0] = a1 + v10 - 11;
  v84.i64[1] = a1 + v10 - 12;
  v87 = vandq_s8(vaddq_s64(v40, v14), v15);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v85), v29);
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v13)));
  v178.val[1] = vshlq_u64(v88, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v13)));
  v89 = veorq_s8(v87, v16);
  v90 = veorq_s8(v87, v17);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), v18);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(v93, vandq_s8(vaddq_s64(v93, v93), v19)), v20), v21);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v22);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v23);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v24);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), v25), v100), v26), v27);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v28);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v102.i64[0] = a1 + v10 - 9;
  v102.i64[1] = a1 + v10 - 10;
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = vandq_s8(v102, v12);
  v107 = vandq_s8(vaddq_s64(v41, v14), v15);
  v178.val[0] = vshlq_u64(veorq_s8(v105, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v13)));
  v108 = veorq_s8(v107, v16);
  v109 = veorq_s8(v107, v17);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v18);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), v19)), v20), v21);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v22);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v23);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v24);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), v25), v119), v26), v27);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v28);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v125 = vandq_s8(v84, v12);
  v126 = vaddq_s64(v124, v123);
  v127 = vandq_s8(v31, v12);
  v178.val[3] = vshlq_u64(veorq_s8(v126, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v13)));
  v128 = vandq_s8(v30, v12);
  v129 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v133 = vandq_s8(vaddq_s64(v129, v14), v15);
  v134 = vandq_s8(vaddq_s64(v130, v14), v15);
  v130.i64[0] = vqtbl4q_s8(v178, *&STACK[0x3E0]).u64[0];
  v178.val[0] = veorq_s8(v134, v16);
  v178.val[1] = veorq_s8(v133, v16);
  v178.val[2] = veorq_s8(v133, v17);
  v178.val[3] = veorq_s8(v134, v17);
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), v18);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), v18);
  v135 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v135);
  v136 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v136, v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[1], vandq_s8(vaddq_s64(v178.val[1], v178.val[1]), v19)), v20), v21);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[0], vandq_s8(vaddq_s64(v178.val[0], v178.val[0]), v19)), v20), v21);
  v137 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v137);
  v138 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v138, v178.val[2]), v22);
  v178.val[0] = veorq_s8(v178.val[0], v22);
  v139 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v139);
  v140 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v140, v178.val[2]), v23);
  v178.val[0] = veorq_s8(v178.val[0], v23);
  v141 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v141);
  v142 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v142, v178.val[2]), v24);
  v178.val[0] = veorq_s8(v178.val[0], v24);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[0], v178.val[0]), v25), v178.val[0]), v26), v27);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[1], v178.val[1]), v25), v178.val[1]), v26), v27);
  v178.val[2] = veorq_s8(v178.val[1], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), v28);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), v28);
  v143 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v144 = vandq_s8(vaddq_s64(v131, v14), v15);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), veorq_s8(v178.val[1], v143)), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v13)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[2]), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v13)));
  v145 = veorq_s8(v144, v16);
  v146 = veorq_s8(v144, v17);
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v18);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(v149, vandq_s8(vaddq_s64(v149, v149), v19)), v20), v21);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v22);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v23);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v24);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), v25), v156), v26), v27);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v28);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL)));
  v161 = vandq_s8(vaddq_s64(v132, v14), v15);
  v178.val[1] = vshlq_u64(veorq_s8(v160, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v13)));
  v162 = veorq_s8(v161, v16);
  v163 = veorq_s8(v161, v17);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v18);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v19)), v20), v21);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v22);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v23);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v24);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173, v173), v25), v173), v26), v27);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v28);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v102, 3uLL), v13)));
  v130.i64[1] = vqtbl4q_s8(v178, *&STACK[0x3E0]).u64[0];
  v178.val[0] = vrev64q_s8(*(v10 + a3 - 16));
  v178.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v178.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v178.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v178.val[0], v178.val[0], 8uLL), v178.val[1]), v130));
  *(a1 + v10 - 16) = vextq_s8(v178.val[0], v178.val[0], 8uLL);
  return (*(v11 + 8 * ((683 * ((v10 & 0xFFFFFFF0) == 16)) ^ a2)))();
}

uint64_t sub_1E335A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char a14, uint64_t a15, int a16, char a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, char *a24)
{
  v27 = 2 * &a19;
  a23 = (v24 + 728) ^ (1710126949 * (((v27 | 0x7EA48ADA) - &a19 - 1062356333) ^ 0xD491EFD));
  a21 = a12;
  a22 = &a17;
  a24 = &a11;
  (*(v25 + 8 * (v24 + 6977)))(&a19);
  a20 = (v24 + 622) ^ (33731311 * (((v27 | 0x994B7218) - &a19 + 861554420) ^ 0xF553732F));
  a21 = a12;
  a22 = &a14;
  (*(v25 + 8 * (v24 + 6971)))(&a19);
  LODWORD(a22) = v24 - 2008441969 * (((v27 | 0x7152A51C) - &a19 + 1196862834) ^ 0xF0300680) + 3055;
  a21 = a12;
  v28 = (*(v25 + 8 * (v24 ^ 0x2FB5)))(&a19);
  return (*(v25 + 8 * (((a19 == ((v24 - 1666903183) & 0x635AFA7E ^ (v26 - 2046))) * (((v24 + 1761031105) & 0x9708CBD7) + 5288)) ^ v24)))(v28);
}

uint64_t sub_1E335A590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = LOWORD(STACK[0x91E]);
  STACK[0x410] = STACK[0x920];
  return (*(v63 + 8 * ((10453 * (v64 == ((a63 ^ 0x1C10) + 11446))) ^ (a63 - 508))))();
}

uint64_t sub_1E335A5E4()
{
  v0 = 23 * (STACK[0x3F8] ^ 0x2547);
  v1 = STACK[0x3F8] - 7639;
  v2 = LOWORD(STACK[0xA26]);
  STACK[0x5E8] = STACK[0xA28];
  return (*(STACK[0x400] + 8 * (((v2 == 17168) * (v0 ^ 0x3F44)) ^ v1)))();
}

uint64_t sub_1E335A85C(double a1, int8x16_t a2, int64x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = v72 - 16;
  v77 = STACK[0x2F0] + v76;
  v78 = v77 + STACK[0x200];
  v79 = *(v77 - 16);
  v77 -= 16;
  v80.i64[0] = v77 + 11;
  v80.i64[1] = v78;
  v81.i64[0] = v77 + 15;
  v81.i64[1] = v77 + 14;
  *&STACK[0x3A0] = v81;
  v82.i64[0] = v77 + 13;
  v82.i64[1] = v77 + 12;
  v83 = v82;
  *&STACK[0x3C0] = v82;
  v82.i64[0] = v77 + 9;
  v82.i64[1] = v77 + 8;
  v84 = v82;
  *&STACK[0x3D0] = v82;
  *&STACK[0x3E0] = v79;
  v85.i64[0] = v77 + 7;
  v85.i64[1] = v77 + 6;
  v82.i64[0] = v77 + 5;
  v82.i64[1] = v77 + 4;
  v86.i64[0] = v77 + 3;
  v86.i64[1] = v77 + 2;
  v87.i64[0] = v77 + 1;
  v87.i64[1] = v77;
  v88 = vandq_s8(v87, a70);
  v89 = vandq_s8(v86, a70);
  v90 = vandq_s8(v82, a70);
  v91 = vandq_s8(v85, a70);
  v92 = vandq_s8(v84, a70);
  v93 = vandq_s8(v83, a70);
  v94 = vandq_s8(v81, a70);
  v95 = vandq_s8(v80, a70);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), a3);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), a3);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), a3);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), a3);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), a3);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), a3);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), a3);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), a3);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), *&STACK[0x390]), v96), *&STACK[0x380]);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), *&STACK[0x390]), v97), *&STACK[0x380]);
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), *&STACK[0x390]), v98), *&STACK[0x380]);
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), *&STACK[0x390]), v99), *&STACK[0x380]);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), *&STACK[0x390]), v100), *&STACK[0x380]);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x390]), v101), *&STACK[0x380]);
  v110 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), *&STACK[0x390]), v102), *&STACK[0x380]);
  v111 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x390]), v103), *&STACK[0x380]);
  v112 = veorq_s8(v111, *&STACK[0x360]);
  v113 = veorq_s8(v110, *&STACK[0x360]);
  v114 = veorq_s8(v109, *&STACK[0x360]);
  v115 = veorq_s8(v108, *&STACK[0x360]);
  v116 = veorq_s8(v107, *&STACK[0x360]);
  v117 = veorq_s8(v106, *&STACK[0x360]);
  v118 = veorq_s8(v105, *&STACK[0x360]);
  v119 = veorq_s8(v104, *&STACK[0x360]);
  v120 = veorq_s8(v104, *&STACK[0x350]);
  v121 = veorq_s8(v105, *&STACK[0x350]);
  v122 = veorq_s8(v106, *&STACK[0x350]);
  v123 = veorq_s8(v107, *&STACK[0x350]);
  v124 = veorq_s8(v108, *&STACK[0x350]);
  v125 = veorq_s8(v109, *&STACK[0x350]);
  v126 = veorq_s8(v110, *&STACK[0x350]);
  v127 = veorq_s8(v111, *&STACK[0x350]);
  v128 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v127);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v126);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v125);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v124);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v123);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v122);
  v135 = vaddq_s64(v128, v121);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), *&STACK[0x340]), v136), *&STACK[0x320]), *&STACK[0x300]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x340]), v135), *&STACK[0x320]), *&STACK[0x300]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x340]), v134), *&STACK[0x320]), *&STACK[0x300]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), *&STACK[0x340]), v133), *&STACK[0x320]), *&STACK[0x300]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), *&STACK[0x340]), v132), *&STACK[0x320]), *&STACK[0x300]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), *&STACK[0x340]), v131), *&STACK[0x320]), *&STACK[0x300]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x340]), v130), *&STACK[0x320]), *&STACK[0x300]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), *&STACK[0x340]), v129), *&STACK[0x320]), *&STACK[0x300]);
  v145 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v149 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v150 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v151 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v152 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v153 = veorq_s8(v140, v148);
  v154 = veorq_s8(v139, v147);
  v155 = veorq_s8(v138, v146);
  v156 = veorq_s8(v137, v145);
  v157 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v156);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v155);
  v165 = vaddq_s64(v162, v154);
  v166 = vaddq_s64(v161, v153);
  v167 = vaddq_s64(v160, v152);
  v168 = vaddq_s64(v159, v151);
  v169 = vaddq_s64(v158, v150);
  v170 = vaddq_s64(v157, v149);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x2E0]), v170), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), *&STACK[0x2E0]), v169), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), *&STACK[0x2E0]), v168), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0x2E0]), v167), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), *&STACK[0x2E0]), v166), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), *&STACK[0x2E0]), v165), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), *&STACK[0x2E0]), v164), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), *&STACK[0x2E0]), v163), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v180 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v181 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v182 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v183 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v184 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v185 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v186 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v187 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v186);
  v195 = veorq_s8(vaddq_s64(v187, v179), v73);
  v196 = veorq_s8(vaddq_s64(v188, v180), v73);
  v197 = veorq_s8(vaddq_s64(v189, v181), v73);
  v198 = veorq_s8(vaddq_s64(v190, v182), v73);
  v199 = veorq_s8(vaddq_s64(v191, v183), v73);
  v200 = veorq_s8(vaddq_s64(v192, v184), v73);
  v201 = veorq_s8(vaddq_s64(v193, v185), v73);
  v202 = veorq_s8(v194, v73);
  v203 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v210 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v211 = veorq_s8(v201, v209);
  v212 = veorq_s8(v200, v208);
  v213 = veorq_s8(v199, v207);
  v214 = veorq_s8(v198, v206);
  v215 = veorq_s8(v197, v205);
  v216 = veorq_s8(v196, v204);
  v217 = veorq_s8(v195, v203);
  v218 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v217);
  v226 = veorq_s8(vaddq_s64(v218, v210), v74);
  v227 = veorq_s8(vaddq_s64(v219, v211), v74);
  v228 = veorq_s8(vaddq_s64(v220, v212), v74);
  v229 = veorq_s8(vaddq_s64(v221, v213), v74);
  v230 = veorq_s8(vaddq_s64(v222, v214), v74);
  v231 = veorq_s8(vaddq_s64(v223, v215), v74);
  v232 = veorq_s8(vaddq_s64(v224, v216), v74);
  v233 = veorq_s8(v225, v74);
  v234 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v241 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v242 = veorq_s8(v232, v240);
  v243 = veorq_s8(v231, v239);
  v244 = veorq_s8(v230, v238);
  v245 = veorq_s8(v229, v237);
  v246 = veorq_s8(v228, v236);
  v247 = veorq_s8(v227, v235);
  v248 = veorq_s8(v226, v234);
  v249 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v248);
  v257 = veorq_s8(vaddq_s64(v249, v241), v75);
  v258 = veorq_s8(vaddq_s64(v250, v242), v75);
  v259 = veorq_s8(vaddq_s64(v251, v243), v75);
  v260 = veorq_s8(vaddq_s64(v252, v244), v75);
  v261 = veorq_s8(vaddq_s64(v253, v245), v75);
  v262 = veorq_s8(vaddq_s64(v254, v246), v75);
  v263 = veorq_s8(vaddq_s64(v255, v247), v75);
  v264 = veorq_s8(v256, v75);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v266 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v267 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v268 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v269 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v270 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v271 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v272 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v273 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v272);
  v281 = vaddq_s64(v279, v271);
  v282 = vaddq_s64(v278, v270);
  v283 = vaddq_s64(v277, v269);
  v284 = vaddq_s64(v276, v268);
  v285 = vaddq_s64(v275, v267);
  v286 = vaddq_s64(v274, v266);
  v287 = vaddq_s64(v273, v265);
  v288 = veorq_s8(vaddq_s64(vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v290 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(v282, vandq_s8(vaddq_s64(v282, v282), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(v281, vandq_s8(vaddq_s64(v281, v281), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v280, vandq_s8(vaddq_s64(v280, v280), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v296 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v297 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v298 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v299 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v300 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v301 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v302 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v303 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v304 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v305 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v300);
  v309 = vaddq_s64(v307, v299);
  v310 = STACK[0x310] + v76;
  v311 = vaddq_s64(v306, v298);
  v298.i64[0] = v310 + 5;
  v298.i64[1] = v310 + 4;
  v312 = vaddq_s64(v305, v297);
  v297.i64[0] = v310 + 9;
  v297.i64[1] = v310 + 8;
  v299.i64[0] = v310 + 7;
  v299.i64[1] = v310 + 6;
  v313 = *&STACK[0x280];
  *&STACK[0x3B0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v303), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a2)));
  v300.i64[0] = v310 + 3;
  v300.i64[1] = v310 + 2;
  v314 = veorq_s8(vaddq_s64(v304, v296), v313);
  v315 = veorq_s8(v312, v313);
  v316 = veorq_s8(v311, v313);
  v317 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v301), v313);
  v318 = vandq_s8(vshlq_n_s64(v87, 3uLL), a2);
  v319 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v302), v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), a2)));
  v320 = vshlq_u64(v317, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), a2)));
  v321 = vshlq_u64(veorq_s8(v308, v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), a2)));
  *&STACK[0x3C0] = vshlq_u64(v316, vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a2)));
  *&STACK[0x3D0] = vshlq_u64(veorq_s8(v309, v313), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a2)));
  v322 = vshlq_u64(v315, vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a2)));
  v323 = vshlq_u64(v314, vnegq_s64(v318));
  v324 = vandq_s8(v300, a70);
  v325 = vandq_s8(v299, a70);
  v326 = vandq_s8(v297, a70);
  v327 = vandq_s8(v298, a70);
  v328 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v329 = vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL);
  v330 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), a3);
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), a3);
  v332 = veorq_s8(v331, *&STACK[0x270]);
  v333 = veorq_s8(v330, *&STACK[0x270]);
  v334 = veorq_s8(v330, *&STACK[0x260]);
  v335 = veorq_s8(v331, *&STACK[0x260]);
  v336 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v334), *&STACK[0x250]);
  v337 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v335), *&STACK[0x250]);
  v338 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v339 = veorq_s8(v337, vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL));
  v340 = veorq_s8(v336, v338);
  v341 = vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL), v340);
  v343 = veorq_s8(vaddq_s64(v341, v339), *&STACK[0x240]);
  v344 = veorq_s8(v342, *&STACK[0x240]);
  v345 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v346 = veorq_s8(v344, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v347 = veorq_s8(v343, v345);
  v348 = vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL);
  v349 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL), v347);
  v350 = veorq_s8(vaddq_s64(v348, v346), v73);
  v351 = veorq_s8(v349, v73);
  v352 = vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL);
  v353 = veorq_s8(v351, vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL));
  v354 = veorq_s8(v350, v352);
  v355 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v356 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v354);
  v357 = veorq_s8(vaddq_s64(v355, v353), v74);
  v358 = veorq_s8(v356, v74);
  v359 = vsraq_n_u64(vshlq_n_s64(v353, 3uLL), v353, 0x3DuLL);
  v360 = veorq_s8(v358, vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL));
  v361 = veorq_s8(v357, v359);
  v362 = vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL);
  v363 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL), v361);
  v364 = veorq_s8(vaddq_s64(v362, v360), v75);
  v365 = veorq_s8(v363, v75);
  v366 = vsraq_n_u64(vshlq_n_s64(v360, 3uLL), v360, 0x3DuLL);
  v367 = veorq_s8(v365, vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL));
  v368 = veorq_s8(v364, v366);
  v369 = vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL);
  v370 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), v368);
  v371 = veorq_s8(vaddq_s64(v369, v367), *&STACK[0x230]);
  v372 = veorq_s8(v370, *&STACK[0x230]);
  v373 = veorq_s8(v372, vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL));
  v374 = veorq_s8(v371, vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL));
  v375 = vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL);
  v367.i64[0] = v310 + 1;
  v367.i64[1] = v310;
  v376 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL), v374);
  v374.i64[0] = v310 - 1;
  v374.i64[1] = v310 - 2;
  v377 = vaddq_s64(v375, v373);
  v378 = vsubq_s64(v376, vandq_s8(vaddq_s64(v376, v376), *&STACK[0x220]));
  v376.i64[0] = v310 - 3;
  v376.i64[1] = v310 - 4;
  v379 = vaddq_s64(v329, a3);
  v500.val[3] = veorq_s8(v321, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v377, vandq_s8(vaddq_s64(v377, v377), *&STACK[0x220])), *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v300, 3uLL), a2))));
  v500.val[1] = veorq_s8(v320, vshlq_u64(veorq_s8(vaddq_s64(v378, *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v299, 3uLL), a2))));
  v380 = veorq_s8(v379, *&STACK[0x270]);
  v381 = veorq_s8(v379, *&STACK[0x260]);
  v382 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v381), *&STACK[0x250]);
  v383 = veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL));
  v384 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), v383), *&STACK[0x240]);
  v385 = veorq_s8(v384, vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL));
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385), v73);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), v74);
  v389 = veorq_s8(v388, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v390 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389), v75);
  v391 = veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL));
  v392 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391), *&STACK[0x230]);
  v393 = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v394 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v392.i64[0] = v310 - 5;
  v392.i64[1] = v310 - 6;
  v395 = vaddq_s64(v394, v393);
  v396 = vaddq_s64(v328, a3);
  v500.val[0] = veorq_s8(v319, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v395, vandq_s8(vaddq_s64(v395, v395), *&STACK[0x220])), *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v297, 3uLL), a2))));
  v397 = veorq_s8(v396, *&STACK[0x270]);
  v398 = veorq_s8(v396, *&STACK[0x260]);
  v399 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL), v398), *&STACK[0x250]);
  v400 = veorq_s8(v399, vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL));
  v401 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL), v400), *&STACK[0x240]);
  v402 = veorq_s8(v401, vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL));
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), v73);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v405 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404), v74);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406), v75);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v409 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v408), *&STACK[0x230]);
  v410 = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v411 = vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL);
  v412 = vandq_s8(v392, a70);
  v413 = vaddq_s64(v411, v410);
  v414 = vandq_s8(v376, a70);
  v415 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v413, vandq_s8(vaddq_s64(v413, v413), *&STACK[0x220])), *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v298, 3uLL), a2)));
  v416 = vandq_s8(v374, a70);
  v500.val[2] = veorq_s8(*&STACK[0x3B0], v415);
  v417 = vandq_s8(v367, a70);
  v418 = vsraq_n_u64(vshlq_n_s64(v417, 0x38uLL), v417, 8uLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL);
  v420 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), a3);
  v421 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL), a3);
  v417.i64[0] = vqtbl4q_s8(v500, a72).u64[0];
  v422 = veorq_s8(v421, *&STACK[0x270]);
  v423 = veorq_s8(v420, *&STACK[0x270]);
  v424 = veorq_s8(v420, *&STACK[0x260]);
  v425 = veorq_s8(v421, *&STACK[0x260]);
  v426 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL), v424), *&STACK[0x250]);
  v427 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v425), *&STACK[0x250]);
  v428 = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v429 = veorq_s8(v427, vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL));
  v430 = veorq_s8(v426, v428);
  v431 = vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL);
  v432 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), v430);
  v433 = veorq_s8(vaddq_s64(v431, v429), *&STACK[0x240]);
  v434 = veorq_s8(v432, *&STACK[0x240]);
  v435 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v436 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL));
  v437 = veorq_s8(v433, v435);
  v438 = vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL);
  v439 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL), v437);
  v440 = veorq_s8(vaddq_s64(v438, v436), v73);
  v441 = veorq_s8(v439, v73);
  v442 = vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL);
  v443 = veorq_s8(v441, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v444 = veorq_s8(v440, v442);
  v445 = vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL);
  v446 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v444);
  v447 = veorq_s8(vaddq_s64(v445, v443), v74);
  v448 = veorq_s8(v446, v74);
  v449 = vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL);
  v450 = veorq_s8(v448, vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL));
  v451 = veorq_s8(v447, v449);
  v452 = vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL);
  v453 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL), v451);
  v454 = veorq_s8(vaddq_s64(v452, v450), v75);
  v455 = veorq_s8(v453, v75);
  v456 = vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL);
  v457 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v458 = veorq_s8(v454, v456);
  v459 = vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL);
  v460 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v458);
  v461 = veorq_s8(vaddq_s64(v459, v457), *&STACK[0x230]);
  v462 = veorq_s8(v460, *&STACK[0x230]);
  v463 = vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL);
  v464 = veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL));
  v465 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v461, 0x38uLL), v461, 8uLL), veorq_s8(v461, v463));
  v466 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), v464);
  v467 = vaddq_s64(v419, a3);
  v500.val[2] = veorq_s8(v323, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v466, vandq_s8(vaddq_s64(v466, v466), *&STACK[0x220])), *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v392, 3uLL), a2))));
  v500.val[1] = veorq_s8(v322, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v465, vandq_s8(vaddq_s64(v465, v465), *&STACK[0x220])), *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v376, 3uLL), a2))));
  v468 = veorq_s8(v467, *&STACK[0x270]);
  v469 = veorq_s8(v467, *&STACK[0x260]);
  v470 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), v469), *&STACK[0x250]);
  v471 = veorq_s8(v470, vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL));
  v472 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v470, 0x38uLL), v470, 8uLL), v471), *&STACK[0x240]);
  v473 = veorq_s8(v472, vsraq_n_u64(vshlq_n_s64(v471, 3uLL), v471, 0x3DuLL));
  v474 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL), v473), v73);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v74);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), v75);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479), *&STACK[0x230]);
  v481 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL)));
  v482 = vaddq_s64(v418, a3);
  v500.val[0] = veorq_s8(*&STACK[0x3C0], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v481, vandq_s8(vaddq_s64(v481, v481), *&STACK[0x220])), *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v374, 3uLL), a2))));
  v483 = veorq_s8(v482, *&STACK[0x270]);
  v484 = veorq_s8(v482, *&STACK[0x260]);
  v485 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484), *&STACK[0x250]);
  v486 = veorq_s8(v485, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL));
  v487 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v485, 0x38uLL), v485, 8uLL), v486), *&STACK[0x240]);
  v488 = veorq_s8(v487, vsraq_n_u64(vshlq_n_s64(v486, 3uLL), v486, 0x3DuLL));
  v489 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL), v488), v73);
  v490 = veorq_s8(v489, vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL));
  v491 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL), v490), v74);
  v492 = veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL));
  v493 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492), v75);
  v494 = veorq_s8(v493, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v495 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493, 0x38uLL), v493, 8uLL), v494), *&STACK[0x230]);
  v496 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), veorq_s8(v495, vsraq_n_u64(vshlq_n_s64(v494, 3uLL), v494, 0x3DuLL)));
  v497 = veorq_s8(*&STACK[0x3D0], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v496, vandq_s8(vaddq_s64(v496, v496), *&STACK[0x220])), *&STACK[0x210]), a71), vnegq_s64(vandq_s8(vshlq_n_s64(v367, 3uLL), a2))));
  v417.i64[1] = vqtbl4q_s8(v500, a72).u64[0];
  v498 = vrev64q_s8(v417);
  *(v310 - 6) = veorq_s8(vextq_s8(v498, v498, 8uLL), *&STACK[0x3E0]);
  return (*(STACK[0x400] + 8 * ((158 * (STACK[0x330] == v76)) ^ LODWORD(STACK[0x370]))))();
}

uint64_t sub_1E335A864(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = LODWORD(STACK[0x380]);
  if (v4 == 17168)
  {
    return (*(STACK[0x400] + 8 * ((STACK[0x3F8] - 8111) ^ (813 * (v3 == 197499223)))))();
  }

  if (v4 == 20706 || (v6 = STACK[0x3F8], v4 == 33980))
  {
    STACK[0x520] = a3;
    v6 = STACK[0x3F8];
  }

  v7 = *STACK[0x938];
  STACK[0x630] = 0;
  STACK[0x500] = 0;
  return (*(STACK[0x400] + 8 * (((v7 != 0) * (v6 - 1067)) ^ (v6 - 5153))))();
}

uint64_t sub_1E335A920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 4);
  *(a2 + 20) = v5;
  return (*(v4 + 8 * (((((v3 + 847743163) & 0xCD787FDF) - 375) * (v5 == 0)) ^ v3)))(a1, 197499219);
}

uint64_t sub_1E335AA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *a5 = a1;
  *a11 = a15;
  return (*(v16 + 8 * (((((a10 == 0) ^ (v15 + 97)) & 1) * ((v15 + 1059) ^ 0x9D5)) ^ (v15 + 97))))();
}

uint64_t sub_1E335ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, int a14, char a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  a18 = (v21 + 2153) ^ (33731311 * ((2 * ((&a17 ^ 0x98B695F9) & 0x5677C008) - (&a17 ^ 0x98B695F9) + 696795127) ^ 0x88C8602D));
  a19 = a13;
  a20 = &a12;
  (*(v20 + 8 * (v21 ^ 0x215A)))(&a17);
  a18 = (v21 + 2153) ^ (33731311 * ((&a17 + 1467068337 - 2 * (&a17 & 0x5771AFB1)) ^ 0x6E876592));
  a19 = a13;
  a20 = &a15;
  (*(v20 + 8 * (v21 ^ 0x215A)))(&a17);
  a18 = (v21 + 2153) ^ (33731311 * ((-1829620827 - (&a17 | 0x92F233A5) + (&a17 | 0x6D0DCC5A)) ^ 0x54FB0679));
  a19 = a13;
  a20 = &a10;
  (*(v20 + 8 * (v21 ^ 0x215A)))(&a17);
  a19 = a13;
  LODWORD(a20) = v21 - 2008441969 * ((((&a17 | 0x4CD6A510) ^ 0xFFFFFFFE) - (~&a17 | 0xB3295AEF)) ^ 0xFBB00EE1) + 4586;
  v22 = (*(v20 + 8 * (v21 + 8552)))(&a17);
  return (*(v20 + 8 * ((4645 * (a17 == v21 + 971215055 + ((v21 - 4719924) & 0xC75C7FCD))) ^ v21)))(v22);
}

void sub_1E335AF0C(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1E32FE3BCLL);
}

uint64_t sub_1E335AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *STACK[0x5F8];
  STACK[0x5D8] = 0;
  STACK[0x3F8] = 0;
  return (*(a4 + 8 * (((v5 == 0) * (((v4 - 933) ^ 0x17E1) - 5199)) ^ v4)))();
}

uint64_t sub_1E335B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * (&a16 ^ 0xB0039876) + 8154;
  a16 = &a14;
  v19 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((7247 * (a17 == 16257999)) ^ 0x6EB)))(v19);
}

uint64_t sub_1E335B100()
{
  v3 = (v1 - 2029);
  STACK[0x740] = (v3 ^ 0xFFFFFFFFFFFFFB65) + v0;
  return (*(v2 + 8 * ((913 * (v1 == -38789)) ^ v3)))();
}

uint64_t sub_1E335B1A8()
{
  v10 = ((v0 ^ 0xB4) + 5361) ^ (((81023735 - (&v8 | 0x4D452F7) + (&v8 | 0xFB2BAD08)) ^ 0xA3427E6A) * v2);
  v9 = v5;
  v3 = ((v0 ^ 0xB4) - 2887) | 0x404;
  (*(v1 + 8 * ((v0 ^ 0xB4) + 6627)))(&v8);
  v9 = v6;
  v10 = (v3 + 7220) ^ (((((2 * &v8) | 0xD393E04A) - &v8 + 372641755) ^ 0xB1A02347) * v2);
  (*(v1 + 8 * (v3 ^ 0x21EA)))(&v8);
  return (v7 ^ 0xB5FAFFCF) + 1258099712 + ((v7 << ((v0 ^ 0xB4) + 88)) & 0x6BF5FF9E) - 16257999;
}

uint64_t sub_1E335B1E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v56 = (a51 + v52 + a4 + v51);
  v57 = *(a3 + v51 - 16);
  *&v58 = a3 + v51 - 15;
  *(&v58 + 1) = a3 + v51 - 16;
  *&STACK[0x270] = v58;
  *&STACK[0x280] = v57;
  *&v58 = a3 + v51 - 13;
  *(&v58 + 1) = a3 + v51 - 14;
  *&STACK[0x260] = v58;
  v59.i64[0] = a3 + v51 + (a2 ^ 0xE1Eu) + 825 - 2815;
  v59.i64[1] = a3 + v51 - 6;
  v60.i64[0] = a3 + v51 - 7;
  v60.i64[1] = a3 + v51 - 8;
  v61.i64[0] = a3 + v51 - 3;
  v61.i64[1] = a3 + v51 - 4;
  v62.i64[0] = a3 + v51 - 1;
  v62.i64[1] = a3 + v51 - 2;
  v63 = *&STACK[0x3A0];
  v64 = vandq_s8(v62, *&STACK[0x3B0]);
  v65 = vandq_s8(v61, *&STACK[0x3B0]);
  v66 = vandq_s8(v60, *&STACK[0x3B0]);
  v67 = vandq_s8(v59, *&STACK[0x3B0]);
  v68 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v72 = vaddq_s64(v70, *&STACK[0x3A0]);
  v73 = vaddq_s64(v69, *&STACK[0x3A0]);
  v75 = *&STACK[0x380];
  v74 = *&STACK[0x390];
  v76 = *&STACK[0x370];
  *&STACK[0x250] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v71), *&STACK[0x370]), vorrq_s8(vaddq_s64(v71, *&STACK[0x3A0]), *&STACK[0x390]));
  v77 = vaddq_s64(vorrq_s8(vsubq_s64(v75, v70), v76), vorrq_s8(v72, v74));
  v78 = *&STACK[0x330];
  v79 = vsubq_s64(*&STACK[0x330], vaddq_s64(vorrq_s8(vsubq_s64(v75, v68), v76), vorrq_s8(vaddq_s64(v68, v63), v74)));
  v80 = vsubq_s64(*&STACK[0x330], vaddq_s64(vorrq_s8(vsubq_s64(v75, v69), v76), vorrq_s8(v73, v74)));
  v81 = veorq_s8(v80, *&STACK[0x320]);
  v82 = veorq_s8(v79, *&STACK[0x320]);
  v83 = *&STACK[0x320];
  v84 = *&STACK[0x300];
  v85 = veorq_s8(v79, *&STACK[0x310]);
  v86 = veorq_s8(v80, *&STACK[0x310]);
  v87 = *&STACK[0x310];
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85), *&STACK[0x300]);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v86), *&STACK[0x300]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v91 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = *&STACK[0x2E0];
  v96 = *&STACK[0x2F0];
  v97 = *&STACK[0x2C0];
  v98 = *&STACK[0x2D0];
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), *&STACK[0x2F0]), v94), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), *&STACK[0x2F0]), v93), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v102 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v103 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v102);
  v105 = veorq_s8(vaddq_s64(v103, v101), *&STACK[0x2C0]);
  v106 = veorq_s8(v104, *&STACK[0x2C0]);
  v107 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v108 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v109 = veorq_s8(v105, v107);
  v110 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v109);
  v112 = *&STACK[0x350];
  v113 = *&STACK[0x360];
  v114 = veorq_s8(vaddq_s64(v110, v108), *&STACK[0x360]);
  v115 = veorq_s8(v111, *&STACK[0x360]);
  v116 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v118 = veorq_s8(v114, v116);
  v119 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v118);
  v121 = vaddq_s64(v119, v117);
  v122 = veorq_s8(v121, *&STACK[0x350]);
  v123 = v54;
  v124 = *&STACK[0x340];
  v125 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v121, v54), *&STACK[0x340]), v122), vandq_s8(v122, v54));
  v126 = veorq_s8(v120, *&STACK[0x350]);
  v127 = *&STACK[0x2A0];
  v128 = *&STACK[0x2B0];
  v129 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v120, v54), *&STACK[0x340]), v126), vandq_s8(v126, v54)), *&STACK[0x2B0]);
  v130 = veorq_s8(v125, *&STACK[0x2B0]);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v132 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), *&STACK[0x2A0]);
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v132), *&STACK[0x2A0]);
  v135 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v136 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v137 = veorq_s8(v133, v135);
  v138 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v140.i64[0] = a3 + v51 - 11;
  v140.i64[1] = a3 + v51 - 12;
  *&STACK[0x240] = v140;
  v141 = vsubq_s64(v78, v77);
  v279.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v139, v137), v55), vnegq_s64(vandq_s8(vshlq_n_s64(v59, 3uLL), *&STACK[0x230])));
  v279.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v138, v136), v55), vnegq_s64(vandq_s8(vshlq_n_s64(v60, 3uLL), *&STACK[0x230])));
  v142 = veorq_s8(v141, v83);
  v143 = veorq_s8(v141, v87);
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v84);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v96), v146), v95), v98);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = v97;
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v97);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v113);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(v154, v112);
  v156 = v124;
  v157 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v154, v123), v124), v155), vandq_s8(v155, v123)), v128);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v127);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v159.i64[0] = a3 + v51 - 9;
  v159.i64[1] = a3 + v51 - 10;
  v162 = vaddq_s64(v161, v160);
  v163 = vandq_s8(v159, *&STACK[0x3B0]);
  v164 = vsubq_s64(v78, *&STACK[0x250]);
  v279.val[1] = vshlq_u64(veorq_s8(v162, v55), vnegq_s64(vandq_s8(vshlq_n_s64(v61, 3uLL), *&STACK[0x230])));
  v165 = veorq_s8(v164, v83);
  v166 = veorq_s8(v164, v87);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v84);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = v95;
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), v96), v169), v95), v98);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v149);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v113);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(v177, v112);
  v179 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v177, v123), v156), v178), vandq_s8(v178, v123)), v128);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v127);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v184 = vandq_s8(v140, *&STACK[0x3B0]);
  v185 = vaddq_s64(v183, v182);
  v186 = vandq_s8(*&STACK[0x260], *&STACK[0x3B0]);
  v279.val[0] = vshlq_u64(veorq_s8(v185, v55), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), *&STACK[0x230])));
  v187 = v123;
  v188 = vandq_s8(*&STACK[0x270], *&STACK[0x3B0]);
  v189 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v193 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v192), *&STACK[0x370]), vorrq_s8(vaddq_s64(v192, *&STACK[0x3A0]), *&STACK[0x390]));
  v194 = vsubq_s64(v78, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v189), *&STACK[0x370]), vorrq_s8(vaddq_s64(v189, *&STACK[0x3A0]), *&STACK[0x390])));
  v195 = vsubq_s64(v78, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v190), *&STACK[0x370]), vorrq_s8(vaddq_s64(v190, *&STACK[0x3A0]), *&STACK[0x390])));
  v196 = v78;
  v190.i64[0] = vqtbl4q_s8(v279, *&STACK[0x220]).u64[0];
  v197 = veorq_s8(v195, v83);
  v198 = veorq_s8(v194, v83);
  v199 = veorq_s8(v194, v87);
  v200 = veorq_s8(v195, v87);
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v84);
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v200), v84);
  v203 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v204 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v205 = veorq_s8(v201, v203);
  v206 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v205);
  v208 = vaddq_s64(v206, v204);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v208, v208), v96), v208), v170), v98);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207, v207), v96), v207), v170), v98);
  v211 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v212 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v213 = veorq_s8(v209, v211);
  v214 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v213);
  v216 = veorq_s8(vaddq_s64(v214, v212), v149);
  v217 = veorq_s8(v215, v149);
  v279.val[2] = v149;
  v218 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v219 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v220 = veorq_s8(v216, v218);
  v221 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v220);
  v223 = veorq_s8(vaddq_s64(v221, v219), *&STACK[0x360]);
  v224 = veorq_s8(v222, *&STACK[0x360]);
  v225 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v226 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v227 = veorq_s8(v223, v225);
  v228 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v227);
  v230 = vaddq_s64(v228, v226);
  v231 = veorq_s8(v230, *&STACK[0x350]);
  v232 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v230, v187), *&STACK[0x340]), v231), vandq_s8(v231, v187));
  v233 = veorq_s8(v229, *&STACK[0x350]);
  v234 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v229, v187), *&STACK[0x340]), v233), vandq_s8(v233, v187)), v128);
  v235 = veorq_s8(v232, v128);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v237 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v127);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v237), v127);
  v240 = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v241 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v242 = vsubq_s64(v78, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v191), *&STACK[0x370]), vorrq_s8(vaddq_s64(v191, *&STACK[0x3A0]), *&STACK[0x390])));
  v278.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), veorq_s8(v238, v240)), v55), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), *&STACK[0x230])));
  v278.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v241), v55), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), *&STACK[0x230])));
  v243 = veorq_s8(v242, v83);
  v244 = veorq_s8(v242, v87);
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244), v84);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v246);
  v248 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v247, v247), v96), v247), v170), v98);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249), v149);
  v251 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251), *&STACK[0x360]);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(v254, *&STACK[0x350]);
  v256 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v254, v187), *&STACK[0x340]), v255), vandq_s8(v255, v187)), v128);
  v257 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v258 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v257), v127);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL)));
  v260 = vsubq_s64(v196, v193);
  v278.val[1] = vshlq_u64(veorq_s8(v259, v55), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), *&STACK[0x230])));
  v261 = veorq_s8(v260, v83);
  v262 = veorq_s8(v260, v87);
  v263 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v262), v84);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL));
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v265, v265), v96), v265), v170), v98);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267), v279.val[2]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v270 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269), *&STACK[0x360]);
  v271 = veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v272 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v271);
  v273 = veorq_s8(v272, *&STACK[0x350]);
  v274 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v272, v187), *&STACK[0x340]), v273), vandq_s8(v273, v187)), v128);
  v275 = veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v276 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v275), v127);
  v278.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), veorq_s8(v276, vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL))), v55), vnegq_s64(vandq_s8(vshlq_n_s64(v159, 3uLL), *&STACK[0x230])));
  v190.i64[1] = vqtbl4q_s8(v278, *&STACK[0x220]).u64[0];
  v278.val[0] = vrev64q_s8(v190);
  *v56 = veorq_s8(vextq_s8(v278.val[0], v278.val[0], 8uLL), *&STACK[0x280]);
  return (*(v53 + 8 * ((126 * ((((a2 ^ 0xE1E) - 2001) & v51) != 16)) ^ ((a2 ^ 0xE1E) - 2))))(a1, (a2 ^ 0xE1Eu) - 2, a3, a4, v56, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1E335BD1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  STACK[0x490] = 0;
  STACK[0x6C8] = 0;
  return (*(STACK[0x330] + 8 * (((((v1 - 3285) | 0x11D4) ^ 0x14C4 ^ ((v1 - 4151) | 0xF)) * (v2 == 0)) ^ v1)))();
}

uint64_t sub_1E335BDBC()
{
  v4 = 1875091903 * ((v3 - 152) ^ 0x36758383);
  *(v3 - 136) = *v2;
  *(v3 - 148) = v4 + 538752683;
  *(v3 - 144) = v4 + v0 - 805 + 1669;
  v5 = (*(v1 + 8 * ((v0 - 805) ^ 0x320A)))(v3 - 152);
  return (*(v1 + 8 * (((*v2 == 0) * (((v0 - 5760) | 0x100) + ((v0 - 774859557) & 0x2E2F74F9) - 10721)) ^ (v0 - 805))))(v5);
}

void tTA34a4tbgsKsWljx9Ip(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || a1 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E335C024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a6 + 24);
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((v17 + v12) | 0x620C1E399F07C1E1) - ((v17 + v12) | v9) + v9;
  v19 = v18 ^ 0x2BE55C02F0112633;
  v18 ^= 0x83A3B99569E7576FLL;
  v20 = __ROR8__(v19, 8);
  v21 = (v13 - ((v20 + v18) | v13) + ((v20 + v18) | (((v8 - 5361) | 0x707u) + 4303) ^ 0xB8CB4116489458DDLL)) ^ 0x5C5636C9CFA9FFD5;
  v22 = v21 ^ __ROR8__(v18, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xF5A2F1B9B5D0B209;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0xE23443A9F31DA1F6) - 0xEE5DE2B06712F05) ^ 0xA8799711AC57AFE4;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v11;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xD3AC5102AF83FE00) - (v30 + v29) + 0x1629D77EA83E00FFLL) ^ 0x72EACB7CD8BADE93;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (a1 - ((v33 + v32) | a1) + ((v33 + v32) | 0x9F6FF890A4BD9A83)) ^ 0x85451374E6EE3580;
  v35 = __ROR8__((v16 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v32, 61))) ^ a2) >> (8 * (v16 & 7u))) ^ *v16;
  v37 = (0xAF7234D0CC131D4 - v35) & 0x1376FB96DEDB029ELL | (v35 + v12) & 0xE88904692124FD61;
  v38 = v37 ^ 0x5E9FB9ADB1CDE54CLL;
  v37 ^= 0xF6D95C3A283B9410;
  v39 = (__ROR8__(v38, 8) + v37) ^ v14;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xF5A2F1B9B5D0B209;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0xF97DE0A8B699E254) - (v43 + v42) + 0x3410FABA4B30ED5) ^ 0x5A22B96EF16A71CALL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0x619515DA41C001B4) - (v46 + v45) - 0x30CA8AED20E000DALL) ^ 0x518F17C7D0FF242DLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x64C31C027084DE6CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (a3 - ((v51 + v50) | a3) + ((v51 + v50) | 0xADF59582BEAF4709)) ^ 0xB7DF7E66FCFCE80ALL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  LODWORD(v53) = ((((((2 * (v54 + v53)) & 0xA59E74269BC385B2) - (v54 + v53) + 0x2D30C5ECB21E3D26) ^ 0x8600873E9A996167) >> (8 * ((v16 + 1) & 7))) ^ *(v16 + 1)) << 16;
  v55 = __ROR8__((v16 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = v53 | (v36 << 24);
  v57 = (v55 + v12) ^ a7;
  v58 = (__ROR8__((v55 + v12) ^ 0x49E9423B6F16E7D2, 8) + v57) ^ v14;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xF5A2F1B9B5D0B209;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ a8;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ v11;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v66 + v65 - ((2 * (v66 + v65)) & 0xC4D307BC96551EAELL) + 0x626983DE4B2A8F57) ^ 0x6AA9FDC3BAE513BLL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0xF9C792D90B62E070) + 0x7CE3C96C85B17038) ^ 0x66C92288C7E2DF3BLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = v56 | (((((((2 * (v72 + v71)) | 0x84D53DF2213B4FA4) - (v72 + v71) + 0x3D956106EF62582ELL) ^ 0x695ADC2B381AFB93) >> (8 * ((v16 + 2) & 7))) ^ *(v16 + 2)) << 8);
  v74 = *(v16 + 3);
  v16 += 3;
  v75 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = (v75 + v12) ^ a7;
  v77 = (__ROR8__((v75 + v12) ^ 0x49E9423B6F16E7D2, 8) + v76) ^ v14;
  v78 = __ROR8__(v77, 8);
  v79 = v77 ^ __ROR8__(v76, 61);
  v80 = (((2 * (v78 + v79)) & 0xCC6D33EEA00FE42) - (v78 + v79) - 0x663699F75007F22) ^ 0xC3E67D93F2F32D7;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ a8;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (((2 * (v84 + v83)) | 0x1D5EE00E4A8A2CA0) - (v84 + v83) - 0xEAF700725451650) ^ 0x6FEAED2DD55A32A7;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = __ROR8__((((2 * ((v87 + v86) ^ 0x3D2CC4E5C304AE09)) & 0x5D07E2954C9434CALL) - ((v87 + v86) ^ 0x3D2CC4E5C304AE09) - 0x2E83F14AA64A1A66) ^ 0x8893D652EA3595FFLL, 8);
  v89 = (((2 * ((v87 + v86) ^ 0x3D2CC4E5C304AE09)) & 0x5D07E2954C9434CALL) - ((v87 + v86) ^ 0x3D2CC4E5C304AE09) - 0x2E83F14AA64A1A66) ^ 0x8893D652EA3595FFLL ^ __ROR8__(v86, 61);
  LODWORD(v16) = (((__ROR8__((v88 + v89) ^ 0x1A2AEBE44253AF03, 8) + ((v88 + v89) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v89, 61))) ^ a2) >> (8 * (v16 & 7u))) ^ v74;
  LODWORD(v16) = (v73 | v16) + 197499219 - 2 * ((v73 | v16) & 0xBC59957 ^ v16 & 4);
  return (*(v15 + 8 * ((11 * ((((v16 ^ 0xDB983B32) + 610780366) ^ ((v16 ^ 0x9D234320) + 1658633440) ^ ((v16 ^ 0x4D7EE141) - 1300160833)) - (*(v10 + 16) ^ STACK[0x2B8]) != -1000368956)) ^ v8)))();
}

uint64_t sub_1E335C768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 ^ 0x34C3)))();
  *(v8 + 24) = 0;
  return sub_1E335C78C(v9);
}

void sub_1E335C7B8(uint64_t a1)
{
  v1 = *(a1 + 28) - 1875091903 * ((2 * (a1 & 0xDAE363A6) - a1 + 622632025) ^ 0x13691FDA);
  v2 = *(&off_1F5DB1610 + (v1 ^ 0x25B6)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 2056])(*(a1 + 24) + 1875091903 * ((2 * (a1 & 0xDAE363A6) - a1 + 622632025) ^ 0x13691FDA) - 1505074932, 0x100004077774924) == 0) * ((v1 - 554094035) & 0x2106BB79 ^ 0x1234)) ^ v1)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E335C8E0()
{
  v4 = (v2 - 637) | 0x414;
  v9 = v6;
  v10 = (v2 + 3261) ^ ((((&v8 | 0x7A36E346) - &v8 + (&v8 & 0x85C91CB8)) ^ 0x225F3024) * v1);
  (*(v0 + 8 * (v2 + 4527)))(&v8);
  v10 = (v4 + 2854) ^ (((((&v8 | 0xECE35C78) ^ 0xFFFFFFFE) - (~&v8 | 0x131CA387)) ^ 0x4B7570E5) * v1);
  v9 = v7;
  (*(v0 + 8 * (v4 ^ 0x30F8)))(&v8);
  return (v3 - 16257999);
}

uint64_t sub_1E335CA20@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = v12 - 1;
  v18 = (__ROR8__((v11 + v17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v19 = __ROR8__(v18 ^ v9, 8);
  v20 = v18 ^ a9;
  v21 = (v19 + v20) ^ 0xE49D77DF873DBF7ELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - (((v23 + v22) << (v13 + 2 + a1)) & a2) + a3) ^ a4;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v14;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__(((a6 | (2 * ((v30 + v29) ^ a5))) - ((v30 + v29) ^ a5) + a7) ^ a8, 8);
  v32 = ((a6 | (2 * ((v30 + v29) ^ a5))) - ((v30 + v29) ^ a5) + a7) ^ a8 ^ __ROR8__(v29, 61);
  *(v11 + v17) = *(v10 + v17) ^ (((__ROR8__((v31 + v32) ^ 0x1A2AEBE44253AF03, 8) + ((v31 + v32) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v32, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v11 + v17) & 7))) ^ 0x3C;
  return (*(v16 + 8 * (((v17 == 0) * v15) ^ v13)))();
}

uint64_t sub_1E335CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15)
{
  v18 = 1875091903 * ((2059065213 - (&a12 | 0x7ABAD77D) + (&a12 | 0x85452882)) ^ 0xB330AB01);
  a15 = a10;
  a13 = (v15 ^ 0xBA9CF6EE) + ((v17 ^ 0x7539E118) & (2 * v15)) + 1702870972 + v18;
  a14 = v18 + v17 + 4455;
  v19 = (*(v16 + 8 * (v17 ^ 0x2968)))(&a12);
  return (*(v16 + 8 * (((4 * (a12 == 16257999)) | (32 * (a12 == 16257999))) ^ v17)))(v19);
}

uint64_t sub_1E335CC38(uint64_t a1, int a2)
{
  LODWORD(STACK[0x588]) = 0;
  v6 = LODWORD(STACK[0x584]) - 281574161;
  LODWORD(STACK[0x584]) = 923;
  LODWORD(STACK[0x580]) = 910;
  LODWORD(STACK[0x57C]) = 2626;
  LODWORD(STACK[0x570]) = 1398672304;
  LODWORD(STACK[0x56C]) = 37401502;
  LODWORD(STACK[0x560]) = 29;
  LODWORD(STACK[0x55C]) = -28;
  LODWORD(STACK[0x550]) = 61620;
  LODWORD(STACK[0x54C]) = 61462;
  LODWORD(STACK[0x548]) = 61304;
  LODWORD(STACK[0x540]) = 61146;
  LODWORD(STACK[0x53C]) = 5372;
  LODWORD(STACK[0x538]) = 5214;
  LODWORD(STACK[0x534]) = 5056;
  LODWORD(STACK[0x528]) = 4898;
  LODWORD(STACK[0x524]) = 60988;
  LODWORD(STACK[0x520]) = 60830;
  LODWORD(STACK[0x518]) = 60672;
  LODWORD(STACK[0x510]) = 60514;
  LODWORD(STACK[0x508]) = 4740;
  LODWORD(STACK[0x504]) = 4266;
  LODWORD(STACK[0x500]) = 60198;
  LODWORD(STACK[0x4FC]) = 60356;
  LODWORD(STACK[0x4F8]) = 60040;
  LODWORD(STACK[0x4F4]) = 59882;
  LODWORD(STACK[0x4F0]) = 4108;
  LODWORD(STACK[0x4EC]) = 3950;
  LODWORD(STACK[0x4E8]) = 3792;
  LODWORD(STACK[0x4E0]) = 3634;
  LODWORD(STACK[0x4DC]) = 59408;
  LODWORD(STACK[0x4D0]) = 59250;
  LODWORD(STACK[0x4C8]) = 3476;
  LODWORD(STACK[0x4C4]) = 3318;
  LODWORD(STACK[0x4C0]) = 3160;
  LODWORD(STACK[0x4B8]) = -265244165;
  LODWORD(STACK[0x4B4]) = 19;
  v7 = STACK[0x5B0];
  LODWORD(STACK[0x428]) = v3;
  STACK[0x4A8] = 4;
  STACK[0x5B0] = 0;
  LODWORD(STACK[0x460]) = 1807;
  STACK[0x4A0] = 6;
  LODWORD(STACK[0x45C]) = 936;
  STACK[0x498] = 3;
  LODWORD(STACK[0x458]) = 2652;
  STACK[0x490] = 9;
  LODWORD(STACK[0x4B0]) = v3 + 1769;
  LODWORD(STACK[0x454]) = 1794;
  STACK[0x488] = 6;
  LODWORD(STACK[0x450]) = 2639;
  STACK[0x480] = 9;
  LODWORD(STACK[0x440]) = 1768;
  LODWORD(STACK[0x43C]) = 897;
  v8 = (2 * (v3 + 14)) & 0xDC ^ (v3 + 14);
  LODWORD(STACK[0x438]) = -1982196628;
  LODWORD(STACK[0x430]) = 59724;
  LODWORD(STACK[0x42C]) = 59566;
  v9 = ((2 * ((4 * v8) & 0xB4 ^ v8)) ^ 0x36) & 0xB;
  LODWORD(STACK[0x46C]) = 647682456;
  v10 = ((2 * (a2 ^ 8)) ^ 0x52) & (a2 ^ 8);
  v11 = v10 & (4 * (((2 * a2) & 0x42 ^ 0xA1) & a2)) ^ ((2 * a2) & 0x42 ^ 0xA1) & a2;
  v12 = a2 ^ (2 * (v10 & (4 * v10) & (16 * v11) ^ v11));
  v13 = (((v9 ^ 0x87E53FB7) + 1147730333) ^ ((v9 ^ 0x77E119C9) - 1267933213) ^ ((v9 ^ 0xF004267C) + 864673880)) - 1687623678;
  v14 = (v13 ^ 0x300D59CF) & (2 * (v13 & 0xA109520F)) ^ v13 & 0xA109520F;
  v15 = ((2 * (v13 ^ 0x701FDDD9)) ^ 0xA22D1FAC) & (v13 ^ 0x701FDDD9) ^ (2 * (v13 ^ 0x701FDDD9)) & 0x51168FD6;
  v16 = ((4 * (v15 ^ 0x51128052)) ^ 0x445A3F58) & (v15 ^ 0x51128052) ^ (4 * (v15 ^ 0x51128052)) & 0xD1168FD4;
  v17 = (v16 ^ 0x40120F50) & (16 * ((v15 ^ 0x80040804) & (4 * v14) ^ v14)) ^ (v15 ^ 0x80040804) & (4 * v14) ^ v14;
  v18 = ((16 * (v16 ^ 0x91048086)) ^ 0x1168FD60) & (v16 ^ 0x91048086) ^ (16 * (v16 ^ 0x91048086)) & 0xD1168FD0;
  v19 = v17 ^ 0xD1168FD6 ^ (v18 ^ 0x11008D00) & (v17 << 8);
  v20 = (v12 & 0xA5 ^ 0x662ADBF1) & (((95 - a2) ^ a2 ^ ((a2 ^ 0x68) + 201) ^ ((a2 ^ 0x61) + 194) ^ ((a2 ^ 0xA9) + 10)) & 0xA5 ^ 0x662ADB54) ^ (v12 & 0xA4 | 0x90840402) ^ v13 ^ (2 * ((v19 << 16) & 0x51160000 ^ v19 ^ ((v19 << 16) ^ 0xFD60000) & (((v18 ^ 0xC0160296) << 8) & 0x51160000 ^ 0x41100000 ^ (((v18 ^ 0xC0160296) << 8) ^ 0x168F0000) & (v18 ^ 0xC0160296))));
  v21 = LODWORD(STACK[0x4B8]) + LODWORD(STACK[0x4B4]) * ((((v20 ^ 0xD60BE492) + 820142680) ^ ((v20 ^ 0xF46836CF) + 310489099) ^ ((v20 ^ 0xD5C540A9) + 858572397)) + 1327630012);
  v22 = (v21 ^ 0xC74B4D5B) & (2 * (v21 & 0xE76A4E5B)) ^ v21 & 0xE76A4E5B;
  v23 = ((2 * (v21 ^ 0xC3CB51D9)) ^ 0x49423F04) & (v21 ^ 0xC3CB51D9) ^ (2 * (v21 ^ 0xC3CB51D9)) & 0x24A11F82;
  v24 = v23 ^ 0x24A10082;
  v25 = (v23 ^ 0x1F00) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x92847E08) & v24 ^ (4 * v24) & 0x24A11F80;
  v27 = (v26 ^ 0x801E00) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x24210182)) ^ 0x4A11F820) & (v26 ^ 0x24210182) ^ (16 * (v26 ^ 0x24210182)) & 0x24A11F80;
  v29 = v27 ^ 0x24A11F82 ^ (v28 ^ 0x11882) & (v27 << 8);
  v30 = v21 ^ (2 * ((v29 << 16) & 0x24A10000 ^ v29 ^ ((v29 << 16) ^ 0x1F820000) & (((v28 ^ 0x24A00782) << 8) & 0x24A10000 ^ 0x4A00000 ^ (((v28 ^ 0x24A00782) << 8) ^ 0x211F0000) & (v28 ^ 0x24A00782)))) ^ 0xA8FE75C6;
  v31 = 0x43A1F2CA5E947ALL * (((v30 ^ 0x93578BBF37FDC05BLL) + 0x6CA87440C8023FA5) ^ ((v30 ^ 0xB351ADC00FF42767) + 0x4CAE523FF00BD899) ^ ((v30 ^ 0x2006267F37DFE3A5) - 0x2006267F37DFE3A5)) + 0x68F067CB7CD721EDLL;
  v32 = (2 * (v31 & 0x68D3E33C33FD82FCLL)) & 0x4080002864AB00C0 ^ v31 & 0x68D3E33C33FD82FCLL ^ ((2 * (v31 & 0x68D3E33C33FD82FCLL)) | 2) & (v31 ^ 0xA13D296CF562838);
  v33 = (2 * (v31 ^ 0xA13D296CF562838)) & 0x62C031AAFCABAAC4 ^ 0x224010AA04A8AA45 ^ ((2 * (v31 ^ 0xA13D296CF562838)) ^ 0xC5806355F957558ALL) & (v31 ^ 0xA13D296CF562838);
  v34 = (4 * v32) & 0x62C031AAFCABAAC4 ^ v32 ^ ((4 * v32) | 4) & v33;
  v35 = (4 * v33) & 0x62C031AAFCABAAC4 ^ 0x60C031000C0100C1 ^ ((4 * v33) ^ 0x8B00C6ABF2AEAB14) & v33;
  v36 = (16 * v34) & 0x62C031AAFCABAAC0 ^ v34 ^ ((16 * v34) ^ 0x50) & v35;
  v37 = (16 * v35) & 0x62C031AAFCABAAC0 ^ 0x42C0210034010285 ^ ((16 * v35) ^ 0x2C031AAFCABAAC50) & v35;
  v38 = (v36 << 8) & 0x62C031AAFCABAA00 ^ v36 ^ ((v36 << 8) ^ 0x4500) & v37;
  v39 = (v37 << 8) & 0x62C031AAFCABAA00 ^ 0x22C0110254012AC5 ^ ((v37 << 8) ^ 0xC031AAFCABAAC500) & v37;
  v40 = v38 ^ (v38 << 16) & 0x62C031AAFCAB0000 ^ ((v38 << 16) ^ 0x450000) & v39 ^ 0x62C031AAFCAAAA80;
  v41 = v31 ^ (2 * ((v40 << 32) & 0x62C031AA00000000 ^ v40 ^ ((v40 << 32) ^ 0x7CABAAC500000000) & ((v39 << 16) & 0x62C031AA00000000 ^ 0x4240010000000000 ^ ((v39 << 16) ^ 0x31AAFCAB00000000) & v39)));
  v42 = ((v41 ^ 0x643CAF659E5F142ALL) + 0x6DBFAB8B431DC5F4) ^ ((v41 ^ 0x8694AD085BF0F1A6) - 0x70E85619794DDF80);
  LODWORD(v41) = __CFADD__(969 * (v42 ^ ((v41 ^ 0x8EFBC3040F0532FBLL) - 0x788738152DB81CDDLL)), 0x9CC453A682BEB399) + (((v42 ^ ((v41 ^ 0x8EFBC3040F0532FBLL) - 0x788738152DB81CDDLL)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v41 ^ 0x643CAF659E5F142ALL, 0x6DBFAB8B431DC5F4) - 1) ^ (__CFADD__(v41 ^ 0x8694AD085BF0F1A6, 0x8F17A9E686B22080) - 1) ^ (__CFADD__(v41 ^ 0x8EFBC3040F0532FBLL, 0x8778C7EAD247E323) - 1)) + 333875460;
  v43 = ((v41 ^ 0xBACB264B) + 1456627466) ^ v41 ^ ((v41 ^ 0xC64B18E) - 528627507) ^ ((v41 ^ 0xD2B2EE96) + 1051432917) ^ ((v41 ^ 0x77FBFFEE) - 1679653203);
  LOBYTE(v42) = (((v43 & 0x81 ^ 0xFE) - 77) ^ ((v43 & 0x81) + 109) ^ ((v43 & 0x81 ^ 0x6B) + 40)) + (((v43 & 0x81 ^ 0x2F) - 1) ^ ((v43 & 0x81 ^ 0x9F) + 79) ^ ((v43 & 0x81 ^ 0xB0) + 98)) + 58;
  LOBYTE(v24) = (v42 ^ 0x24) & (2 * (v42 & 0x26)) ^ v42 & 0x26;
  LOBYTE(v40) = ((2 * (v42 ^ 0x60)) ^ 0x8C) & (v42 ^ 0x60) ^ (2 * (v42 ^ 0x60)) & 0x46;
  LOBYTE(v14) = v40 ^ 0x42;
  LOBYTE(v40) = v40 & (4 * v24) ^ v24;
  LOBYTE(v24) = ((4 * v14) ^ 0x18) & v14 ^ (4 * v14) & 0x44;
  v44 = LODWORD(STACK[0x4DC]) / 0x3C9;
  v45 = LODWORD(STACK[0x4D0]) / 0x3C9;
  v46 = STACK[0x5A0];
  v47 = (*(STACK[0x5A0] + (v43 ^ 0x13E686BD)) ^ 0xE8u) << ((v42 ^ ~(2 * (v40 ^ 0x46 ^ v24 & (16 * v40)))) & 3) << ((v42 ^ (2 * (v40 ^ 0x46 ^ v24 & (16 * v40)))) & 0x80 | 0x18);
  v48 = (((*(STACK[0x5A0] + -969 * (LODWORD(STACK[0x4C0]) / 0x3C9) + 3160) << 16) ^ 0x6AB04B92) & ~v47 | v47 & 0x95000000) ^ (*(STACK[0x5A0] + -969 * (LODWORD(STACK[0x4C8]) / 0x3C9) + 3476) | (*(STACK[0x5A0] + -969 * (LODWORD(STACK[0x4C4]) / 0x3C9) + 3318) << 8));
  LODWORD(v42) = v48 ^ v2;
  v49 = STACK[0x5A8];
  *(STACK[0x5A8] + 348) = v48 ^ v2 ^ 0x516C1EFB;
  LODWORD(v47) = *(v46 + -969 * v45 + 59250) << 24;
  v50 = ((*(v46 + 615) & 0x8C | ((((*(v46 + 457) << 8) ^ 0xCEFFA474) & ((*(v46 + -969 * v44 + 59408) << 16) ^ 0xCE44B574) | (*(v46 + 457) << 8) & 0x4A00) ^ 0x76EE1F07) & (*(v46 + 615) ^ 0xFFFFFFEE)) ^ 0x55429E74) & (v47 ^ 0xE6FFFFFF) ^ ((v47 & 0x12000000 | 0x800A2) + 766);
  v51 = v7 ^ 0xCA0699E5 ^ v50;
  *(v49 + 592) = v51;
  LODWORD(v47) = (((v47 & 0x6F000000 ^ 0x93F898B4) + 1697514553) ^ ((v47 & 0x6F000000 ^ 0x7AF96961) - 1943013906) ^ ((v47 & 0x6F000000 ^ 0x8FC855A7) + 2032060716)) + (((v47 & 0x6F000000 ^ 0xC9FD4453) + 1932604373) ^ ((v47 & 0x6F000000 ^ 0x2FC2D541) - 1794202937) ^ ((v47 & 0x6F000000 ^ 0xEF3F9112) + 1442047638)) + 439046270;
  v52 = (v47 ^ 0x31E6FEFA) & (2 * (v47 & 0xA1E8FEFB)) ^ v47 & 0xA1E8FEFB;
  LODWORD(v40) = ((2 * (v47 ^ 0x70E7220E)) ^ 0xA21FB9EA) & (v47 ^ 0x70E7220E) ^ (2 * (v47 ^ 0x70E7220E)) & 0xD10FDCF4;
  v53 = v40 ^ 0x51004415;
  LODWORD(v40) = (v40 ^ 0x800798E0) & (4 * v52) ^ v52;
  v54 = ((4 * v53) ^ 0x443F73D4) & v53 ^ (4 * v53) & 0xD10FDCF4;
  LODWORD(v40) = (v54 ^ 0x400F50D0) & (16 * v40) ^ v40;
  v55 = ((16 * (v54 ^ 0x91008C21)) ^ 0x10FDCF50) & (v54 ^ 0x91008C21) ^ (16 * (v54 ^ 0x91008C21)) & 0xD10FDCF0;
  LODWORD(v40) = v40 ^ 0xD10FDCF5 ^ (v55 ^ 0x100DCC00) & (v40 << 8);
  LODWORD(v40) = v47 ^ (2 * ((v40 << 16) & 0x10040000 ^ v40 ^ ((v40 << 16) ^ 0x18E40000) & (((v55 ^ 0xC10210A5) << 8) & 0x510F0000 ^ (((v55 ^ 0xC10210A5) << 8) ^ 0xFDC0000) & (v55 ^ 0xC10210A5) ^ 0x10000000)));
  LODWORD(v40) = v6 - 697182381 + (((v40 & 0x75C98430 ^ 0x584B2704) + 1628352991) ^ ((v40 & 0x75C98430 ^ 0x836386B0) - 1171910549) ^ ((v40 & 0x75C98430 ^ 0xFAE1A5A4) - 1012649089));
  v56 = (v40 ^ 0xC01109D0) & (2 * (v40 & 0xD22529D4)) ^ v40 & 0xD22529D4;
  v57 = ((2 * (v40 ^ 0xE01158F8)) ^ 0x6468E258) & (v40 ^ 0xE01158F8) ^ (2 * (v40 ^ 0xE01158F8)) & 0x3234712C;
  v58 = v57 ^ 0x12141124;
  v59 = (v57 ^ 0x206000) & (4 * v56) ^ v56;
  v60 = ((4 * v58) ^ 0xC8D1C4B0) & v58 ^ (4 * v58) & 0x3234712C;
  v61 = (v60 ^ 0x10402C) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x3224310C)) ^ 0x234712C0) & (v60 ^ 0x3224310C) ^ (16 * (v60 ^ 0x3224310C)) & 0x32347120;
  v63 = v61 ^ 0x3234712C ^ (v62 ^ 0x2204102C) & (v61 << 8);
  LODWORD(STACK[0x44C]) = 1781;
  v64 = v40 ^ (2 * ((v63 << 16) & 0x32340000 ^ v63 ^ ((v63 << 16) ^ 0x712C0000) & (((v62 ^ 0x1030612C) << 8) & 0x32340000 ^ 0x2040000 ^ (((v62 ^ 0x1030612C) << 8) ^ 0x34710000) & (v62 ^ 0x1030612C)))) ^ v48;
  v65 = (((v50 ^ 0xCB56EB54) - 22049457) ^ ((v50 ^ 0x225E37E1) + 396841468) ^ ((v50 ^ 0x14F1E31A) + 554206465)) - (((v7 ^ 0xC0A0E9C) - 201985692) ^ ((v7 ^ 0x13FC580B) - 335304715) ^ ((v7 ^ 0x2C34410F) - 741622031)) + 1130325240;
  v66 = (v65 ^ 0x8CDD213A) & (2 * (v65 & 0xC0DE29BA)) ^ v65 & 0xC0DE29BA;
  LODWORD(v40) = ((2 * (v65 ^ 0xCF1705A)) ^ 0x985EB3C0) & (v65 ^ 0xCF1705A) ^ (2 * (v65 ^ 0xCF1705A)) & 0xCC2F59E0;
  v67 = v40 ^ 0x44214820;
  LODWORD(v40) = (v40 ^ 0x400801C0) & (4 * v66) ^ v66;
  v68 = ((4 * v67) ^ 0x30BD6780) & v67 ^ (4 * v67) & 0xCC2F59E0;
  LODWORD(v40) = (v68 ^ 0x2D4180) & (16 * v40) ^ v40;
  v69 = ((16 * (v68 ^ 0xCC021860)) ^ 0xC2F59E00) & (v68 ^ 0xCC021860) ^ (16 * (v68 ^ 0xCC021860)) & 0xCC2F59E0;
  LODWORD(v40) = v40 ^ 0xCC2F59E0 ^ (v69 ^ 0xC0251800) & (v40 << 8);
  v70 = LODWORD(STACK[0x580]) / 0x10E;
  v71 = (((v51 ^ v4 ^ 0x82A38281) + 2103213439) ^ ((v51 ^ v4 ^ 0xFC9FC4EA) + 56638230) ^ ((v51 ^ v4 ^ 0x204412C9) - 541332169)) - (((v4 ^ 0xBCD70B34) + 1126757580) ^ ((v4 ^ 0x98BFD703) + 1732258045) ^ ((v4 ^ 0x7E2D3947) - 2116892999)) + 1231626616;
  v72 = v64 ^ v51;
  v73 = ((v42 ^ 0x101BC9B0) + 600347039) ^ ((v42 ^ 0xA134D84C) - 1830322077) ^ ((v42 ^ 0xE369EA09) - 793071064);
  LODWORD(v42) = (((v72 ^ 0x1CB8EB3F) - 2113080579) ^ ((v72 ^ 0xB98792B1) + 657689459) ^ ((v72 ^ 0x1D5FA0AA) - 2081703574)) - (((v64 ^ 0x227EAD76) + 821784444) ^ ((v64 ^ 0xE9DE6091) - 77880675) ^ ((v64 ^ 0x77FDA511) + 1702389533)) - 10312306;
  LODWORD(v42) = v71 ^ v65 ^ ((v71 ^ 0xBDC3375A) + 118127332) ^ ((v71 ^ 0x1A1583C0) - 1596141958) ^ ((v71 ^ 0x5D1FF321) - 405356903) ^ ((v71 ^ 0xBFFFF5FD) + 87472197) ^ (2 * ((v40 << 16) & 0x4C2F0000 ^ v40 ^ ((v40 << 16) ^ 0x59E00000) & (((v69 ^ 0xC0A41E0) << 8) & 0x4C2F0000 ^ 0x40260000 ^ (((v69 ^ 0xC0A41E0) << 8) ^ 0x2F590000) & (v69 ^ 0xC0A41E0)))) ^ v42 ^ ((v42 ^ 0x99EFB102) + 290387336) ^ ((v42 ^ 0xE2B256AC) + 1779634730) ^ ((v42 ^ 0x73FCA30B) - 77731953) ^ ((v42 ^ 0x7FFFFFDF) - 144786597);
  v74 = ((v4 ^ 0x6640F471) - 1715532913) ^ ((v4 ^ 0x125DB9C7) - 308132295) ^ ((v4 ^ 0x2E58A8C6) - 777562310);
  v75 = ((v42 ^ 0x842E2EF5) - 685441029) ^ ((v42 ^ 0xC88BDD6D) - 1686041501) ^ ((v42 ^ 0xB60D60DE) - 452480558);
  LODWORD(v40) = v5 + 959222974 + v73;
  LODWORD(v42) = (v40 ^ 0xAFD44D7E) & (2 * (v40 & 0xAE188D7C)) ^ v40 & 0xAE188D7C;
  v76 = ((2 * (v40 ^ 0xA3D54DBE)) ^ 0x1B9B8184) & (v40 ^ 0xA3D54DBE) ^ (2 * (v40 ^ 0xA3D54DBE)) & 0xDCDC0C2;
  v77 = v76 ^ 0x4444042;
  v78 = (v76 ^ 0x8800080) & (4 * v42) ^ v42;
  LODWORD(v42) = ((4 * v77) ^ 0x37370308) & v77 ^ (4 * v77) & 0xDCDC0C0;
  v79 = (v42 ^ 0x5050000) & (16 * v78) ^ v78;
  v80 = LODWORD(STACK[0x57C]) / 0x10E;
  LODWORD(v42) = ((16 * (v42 ^ 0x8C8C0C2)) ^ 0xDCDC0C20) & (v42 ^ 0x8C8C0C2) ^ (16 * (v42 ^ 0x8C8C0C2)) & 0xDCDC0C0;
  v81 = v42 ^ 0x101C0C2;
  LODWORD(v42) = v79 ^ 0xDCDC0C2 ^ (v42 ^ 0xCCC0000) & (v79 << 8);
  v82 = ((v42 << 16) ^ 0x40C20000) & ((v81 << 8) & 0xDCD0000 ^ 0xD0000 ^ ((v81 << 8) ^ 0x4DC00000) & v81);
  STACK[0x470] = LODWORD(STACK[0x504]) / 0x3C9uLL;
  v83 = (v42 << 16) & 0xDCD0000 ^ v42;
  LODWORD(v42) = LODWORD(STACK[0x500]) / 0x3C9;
  LODWORD(v40) = v40 ^ (2 * (v83 ^ v82));
  v84 = LODWORD(STACK[0x4FC]) / 0x3C9;
  v85 = ((v7 ^ 0x580FFD81) - 1477442945) ^ ((v7 ^ 0x63321D96) - 1664228758) ^ ((v7 ^ 0x8FFF78F) - 150992783);
  v86 = (((v7 ^ 0x909AD00F) + 1868902385) ^ ((v7 ^ 0x1877DFF6) - 410509302) ^ ((v7 ^ 0xBB2F1861) + 1154541471)) + v74 - 1853437515;
  v87 = LODWORD(STACK[0x4F8]) / 0x3C9;
  v88 = ((v86 ^ 0xD20BCDAA) + 839740228) ^ v86 ^ ((v86 ^ 0x9A1D0909) + 2048634849) ^ ((v86 ^ 0xAE14224E) + 1309836456) ^ ((v86 ^ 0xF9FBBFFB) + 436017427);
  v89 = LODWORD(STACK[0x4F4]) / 0x3C9;
  LODWORD(v47) = (((v2 ^ 0x8133C887) + 2127312761) ^ ((v2 ^ 0x5A9C5FC2) - 1520197570) ^ ((v2 ^ 0xE3B1CFCA) + 474886198)) - v5;
  v90 = LODWORD(STACK[0x590]) - (v85 - a2) + 1337941943;
  v91 = LODWORD(STACK[0x58C]) - v47;
  *(v49 + 4 * (STACK[0x5B0] - 270 * v80 + 2626)) = v40 ^ 0xB03EBD2A;
  *(v49 + 4 * STACK[0x5B0]) = (v75 - a2 - 188740068) ^ (((v75 - a2 - 188740068) ^ 0x90CB02E9) - 1812674287) ^ (((v75 - a2 - 188740068) ^ 0x62E5FA09) + 1641689585) ^ (((v75 - a2 - 188740068) ^ 0x51113389) + 1378809969) ^ (((v75 - a2 - 188740068) ^ 0x5FFFFF6F) + 1556100247) ^ 0xF8FD85D4;
  v92 = (((v47 - v91 + 1655872351) ^ 0xD79D8527) + 133243554) ^ (v47 - v91 + 1655872351) ^ (((v47 - v91 + 1655872351) ^ 0x1E026C7B) - 831599618) ^ (((v47 - v91 + 1655872351) ^ 0x18F74EBA) - 929306307) ^ (((v47 - v91 + 1655872351) ^ 0xFEFBFF9F) + 781670426);
  LODWORD(v47) = LODWORD(STACK[0x47C]) - 1466079738 + (((v2 ^ 0x410EEA18) - 1091496472) ^ ((v2 ^ 0x9DD0D95F) + 1647257249) ^ ((v2 ^ 0xE4C06BC8) + 457151544));
  v93 = v85 - a2 - v90 + 1783449144;
  LODWORD(v40) = (v93 ^ 0xF0B0F4E5) & (2 * (v93 & 0xF0B2F6F6)) ^ v93 & 0xF0B2F6F6;
  v94 = ((2 * (v93 ^ 0xD1B4B4ED)) ^ 0x420C8436) & (v93 ^ 0xD1B4B4ED) ^ (2 * (v93 ^ 0xD1B4B4ED)) & 0x2106421A;
  v95 = v94 ^ 0x21024209;
  v96 = (v94 ^ 0x40010) & (4 * v40) ^ v40;
  LODWORD(v40) = ((4 * v95) ^ 0x8419086C) & v95 ^ (4 * v95) & 0x21064218;
  v97 = v40 & (16 * v96) ^ v96;
  LODWORD(v40) = ((16 * (v40 ^ 0x21064213)) ^ 0x106421B0) & (v40 ^ 0x21064213) ^ (16 * (v40 ^ 0x21064213)) & 0x21064210;
  v98 = v97 ^ 0x2106421B ^ (v40 ^ 0x40000) & (v97 << 8);
  v99 = v93 ^ (2 * ((v98 << 16) & 0x21060000 ^ v98 ^ ((v98 << 16) ^ 0x421B0000) & (((v40 ^ 0x2102420B) << 8) & 0x21060000 ^ 0x21040000 ^ (((v40 ^ 0x2102420B) << 8) ^ 0x6420000) & (v40 ^ 0x2102420B))));
  v100 = *(v46 + -969 * (LODWORD(STACK[0x4E8]) / 0x3C9) + 3792) << 16;
  LODWORD(v40) = (v100 | 0xFF07FFFF) & ((*(v46 + -969 * (LODWORD(STACK[0x4E0]) / 0x3C9) + 3634) << 24) ^ 0x2848F636);
  v101 = v5 - v91;
  v102 = a2 - v90 + 173335473;
  v103 = *(v46 + -969 * (LODWORD(STACK[0x4F0]) / 0x3C9) + 4108);
  v104 = ((v47 ^ 0x2C5ED86E) + 363809182) ^ v47 ^ ((v47 ^ 0xEC57B848) - 710530628) ^ ((v47 ^ 0x79F8F9C5) + 1074358327) ^ ((v47 ^ 0x7FFFF7EF) + 1175348765) ^ v103 & 0x18 ^ ((((v40 | v100 & 0xB70000) ^ 0x1A150900) & ((*(v46 + -969 * (LODWORD(STACK[0x4EC]) / 0x3C9) + 3950) << 8) ^ 0x1A5DCE16) | v40 & 0xE5A20020 | v100 & 0xA20000) ^ 0x2F1791D1) & (v103 ^ 0xFFFFFFE6);
  *(v49 + 4 * (STACK[0x5B0] - 270 * v70 + 910)) = v104 ^ 0x30CE3C0C;
  v105 = *(v46 + -969 * v87 + 60040) << 16;
  LODWORD(v40) = (((*(v46 + -969 * v89 + 59882) ^ 0x68) << 24) ^ 0x444D3657) & (v105 ^ 0xFF46BF57) | v105 & 0xB20000;
  LODWORD(v42) = *(v46 + (-969 * v42 + 60198)) << 8;
  v106 = *(v46 + -969 * v84 + 60356);
  LODWORD(v42) = ((v42 & 0xD300 | (v40 ^ 0x785D1A01) & (v42 ^ 0xFFFF2657)) ^ 0xCF85036) & (v106 ^ 0xFFFFFF6E) ^ v106 & 0xFFFFFF9F;
  v107 = v88 ^ 0x5A3C85BD ^ v42;
  v108 = (v47 ^ 0x3DE555E0) & (2 * (v47 & 0x39F191F4)) ^ v47 & 0x39F191F4;
  LODWORD(v40) = ((2 * (v47 ^ 0x3C647720)) ^ 0xB2BCDA8) & (v47 ^ 0x3C647720) ^ (2 * (v47 ^ 0x3C647720)) & 0x595E6D4;
  v109 = v40 ^ 0x4942254;
  LODWORD(v40) = (v40 ^ 0x100C480) & (4 * v108) ^ v108;
  v110 = ((4 * v109) ^ 0x16579B50) & v109 ^ (4 * v109) & 0x595E6D4;
  LODWORD(v40) = (v110 ^ 0x4158240) & (16 * v40) ^ v40;
  v111 = ((16 * (v110 ^ 0x1806484)) ^ 0x595E6D40) & (v110 ^ 0x1806484) ^ (16 * (v110 ^ 0x1806484)) & 0x595E6D0;
  LODWORD(v40) = v40 ^ 0x595E6D4 ^ (v111 ^ 0x1146400) & (v40 << 8);
  v112 = v47 ^ (2 * ((v40 << 16) & 0x5950000 ^ v40 ^ ((v40 << 16) ^ 0x66D40000) & (((v111 ^ 0x4818294) << 8) & 0x5950000 ^ 0x110000 ^ (((v111 ^ 0x4818294) << 8) ^ 0x15E60000) & (v111 ^ 0x4818294))));
  v113 = v104 ^ v92 ^ v112;
  LODWORD(v47) = (((v107 ^ v99 ^ 0x9B451699) - 408148457) ^ ((v107 ^ v99 ^ 0xA13F2CF2) - 573170562) ^ ((v107 ^ v99 ^ 0x8CFDF979) - 267073033)) - (((v99 ^ 0x645146A2) + 414742062) ^ ((v99 ^ 0xF8D12C5) + 1935942219) ^ ((v99 ^ 0xD96626A7) - 1517349335)) + 1968239677;
  v114 = ((v104 ^ 0x836ED88) - 1340655951) ^ ((v104 ^ 0xE9FC6E17) + 1373484336) ^ ((v104 ^ 0xD22E5A9D) + 1779401126);
  *(v49 + 4 * (STACK[0x5B0] + 161)) = v107;
  v115 = ((v112 ^ 0x3BD918B7) + 974830804) ^ ((v112 ^ 0xD5AC9DF4) - 730908271) ^ ((v112 ^ 0x1049DED8) + 294288061);
  v116 = (((v115 - 74598054) ^ 0x1AAA8DC4) + 67260338) ^ (v115 - 74598054) ^ (((v115 - 74598054) ^ 0x6FBF08C4) + 1897384626) ^ (((v115 - 74598054) ^ 0xE9B94735) - 149846719) ^ (((v115 - 74598054) ^ 0x7DFBFFBF) + 1666399691);
  v117 = (((v107 ^ v113 ^ 0x677A98E5) + 588376292) ^ ((v107 ^ v113 ^ 0x56F3C1F6) + 311996913) ^ ((v107 ^ v113 ^ 0x123135E6) + 1448756705)) - (((v113 ^ 0x54952DD4) + 583528039) ^ ((v113 ^ 0x9BBE3525) - 303237480) ^ ((v113 ^ 0xE8AEC5D6) - 1627650459));
  LODWORD(v40) = v101 - 1616486037 + v114;
  v118 = (v40 ^ 0x8A0C92D4) & (2 * (v40 & 0xAC2EDAE6)) ^ v40 & 0xAC2EDAE6;
  v119 = ((2 * (v40 ^ 0x9A51B2D0)) ^ 0x6CFED06C) & (v40 ^ 0x9A51B2D0) ^ (2 * (v40 ^ 0x9A51B2D0)) & 0x367F6836;
  v120 = v119 ^ 0x12012812;
  v121 = (v119 ^ 0x207E4020) & (4 * v118) ^ v118;
  v122 = ((4 * v120) ^ 0xD9FDA0D8) & v120 ^ (4 * v120) & 0x367F6834;
  v123 = (v122 ^ 0x107D2000) & (16 * v121) ^ v121;
  v124 = ((16 * (v122 ^ 0x26024826)) ^ 0x67F68360) & (v122 ^ 0x26024826) ^ (16 * (v122 ^ 0x26024826)) & 0x367F6830;
  v125 = v123 ^ 0x367F6836 ^ (v124 ^ 0x26760000) & (v123 << 8);
  LODWORD(v42) = (((v42 ^ 0x875B3EE3) + 1375170794) ^ ((v42 ^ 0x11527992) - 939640935) ^ ((v42 ^ 0xD7F12A08) + 22897667)) - (((v88 ^ 0x2E8E749F) + 975338777) ^ ((v88 ^ 0xAFB35622) - 1155571802) ^ ((v88 ^ 0x9EC47BAB) - 1972866515)) - 1763289038;
  LODWORD(v40) = v40 ^ (2 * ((v125 << 16) & 0x367F0000 ^ v125 ^ ((v125 << 16) ^ 0x68360000) & (((v124 ^ 0x10096816) << 8) & 0x367F0000 ^ 0x170000 ^ (((v124 ^ 0x10096816) << 8) ^ 0x7F680000) & (v124 ^ 0x10096816))));
  v117 -= 237369142;
  v126 = ((v42 ^ 0xA7F40198) + 2062472564) ^ v42 ^ ((v42 ^ 0x2673B6C9) - 76979677) ^ ((v42 ^ 0x5C9DF3BE) - 2121849002) ^ ((v42 ^ 0xFFFF6FFB) + 585480977) ^ v117 ^ v47 ^ ((v47 ^ 0xAE068272) + 546691079) ^ ((v47 ^ 0x73B22BBE) - 48139829) ^ ((v47 ^ 0x1325D3B8) - 1648981555) ^ ((v47 ^ 0xBFFDDFFF) + 829326732) ^ ((v117 ^ 0x414A56BF) - 1184649623) ^ ((v117 ^ 0x6A45EB7C) - 1838410836) ^ ((v117 ^ 0x57264517) - 1357922879) ^ ((v117 ^ 0x7BFFFFFC) - 2083125460);
  v127 = ((v99 ^ 0x4FA883E5) + 878753606) ^ ((v99 ^ 0x71E01F5C) + 170404861) ^ ((v99 ^ 0xBA7F57E6) - 1044946105);
  LODWORD(v42) = v90 - v127 + 1558166001;
  *(v49 + 4 * (STACK[0x5B0] - 270 * STACK[0x480] + 2639)) = v40 ^ 0x8481BB58;
  LODWORD(v40) = ((v126 ^ 0x111489A9) - 1227362044) ^ ((v126 ^ 0xFB3F7A2) - 1469018359) ^ ((v126 ^ 0x4AF8F7BC) - 314863849);
  v128 = ((v127 + 585903765) ^ 0x9D53C042) & (2 * ((v127 + 585903765) & 0xDD13D16B)) ^ (v127 + 585903765) & 0xDD13D16B;
  v129 = ((2 * ((v127 + 585903765) ^ 0xD56C040)) ^ 0xA08A2256) & ((v127 + 585903765) ^ 0xD56C040) ^ (2 * ((v127 + 585903765) ^ 0xD56C040)) & 0xD045112A;
  v130 = v129 ^ 0x50451129;
  v131 = v129 & (4 * v128) ^ v128;
  v132 = ((4 * v130) ^ 0x411444AC) & v130 ^ (4 * v130) & 0xD0451128;
  v133 = (v132 ^ 0x40040023) & (16 * v131) ^ v131;
  v134 = ((16 * (v132 ^ 0x90411103)) ^ 0x45112B0) & (v132 ^ 0x90411103) ^ (16 * (v132 ^ 0x90411103)) & 0xD0451120;
  v135 = v133 ^ 0xD045112B ^ (v134 ^ 0x411000) & (v133 << 8);
  v136 = ((v135 << 16) ^ 0x112B0000) & (((v134 ^ 0xD004010B) << 8) & 0x50450000 ^ 0x10440000 ^ (((v134 ^ 0xD004010B) << 8) ^ 0x45110000) & (v134 ^ 0xD004010B));
  v137 = v40 - v102;
  LODWORD(STACK[0x58C]) = v42 ^ (v127 + 585903765) ^ ((v42 ^ 0x36229DB0) - 1193326744) ^ ((v42 ^ 0xB11CFE7E) + 1071719594) ^ ((v42 ^ 0x8947ED91) + 129644359) ^ ((v42 ^ 0x7F7BAB77) - 242847327) ^ (2 * ((v135 << 16) & 0x50450000 ^ v135 ^ v136));
  LODWORD(v47) = v91 - (((v92 ^ 0x7134864E) + 1648302301) ^ ((v92 ^ 0x2898571E) + 999541133) ^ ((v92 ^ 0x40B230B6) + 1404677669)) - 494605542;
  LODWORD(v42) = (v47 ^ 0x21FD99C1) & (2 * (v47 & 0x89FDC1C1)) ^ v47 & 0x89FDC1C1;
  v138 = ((2 * (v47 ^ 0x214E99C1)) ^ 0x5166B000) & (v47 ^ 0x214E99C1) ^ (2 * (v47 ^ 0x214E99C1)) & 0xA8B35800;
  LODWORD(v40) = v138 ^ 0xA8914800;
  v139 = (v138 ^ 0x220000) & (4 * v42) ^ v42;
  LODWORD(v42) = ((4 * v40) ^ 0xA2CD6000) & v40 ^ (4 * v40) & 0xA8B35800;
  v140 = v139 ^ 0xA8B35800 ^ (v42 ^ 0xA0814000) & (16 * v139);
  LODWORD(v42) = (16 * (v42 ^ 0x8321800)) & 0xA8B35800 ^ 0x20825800 ^ ((16 * (v42 ^ 0x8321800)) ^ 0x8B358000) & (v42 ^ 0x8321800);
  v141 = (v140 << 8) & 0xA8B35800 ^ v140 ^ ((v140 << 8) ^ 0xB3580000) & v42;
  LODWORD(v47) = v92 ^ v47 ^ (2 * ((v141 << 16) & 0x28B30000 ^ v141 ^ ((v141 << 16) ^ 0x58000000) & ((v42 << 8) & 0x28B30000 ^ 0x8A30000 ^ ((v42 << 8) ^ 0xB3580000) & v42))) ^ 0xEF90E6B9;
  v142 = ((v88 ^ 0x106C4382) + 899998381) ^ ((v88 ^ 0x27DECF81) + 35024560) ^ ((v88 ^ 0xED85D2D2) - 934448131);
  v143 = v102 - v142;
  v142 -= 31063836;
  v144 = (v142 ^ 0xF21E69D4) & (2 * (v142 & 0xF81F0DD4)) ^ v142 & 0xF81F0DD4;
  v145 = ((2 * (v142 ^ 0x121662FC)) ^ 0xD412DE50) & (v142 ^ 0x121662FC) ^ (2 * (v142 ^ 0x121662FC)) & 0xEA096F28;
  v146 = v145 ^ 0x2A092128;
  v147 = (v145 ^ 0xC0004E00) & (4 * v144) ^ v144;
  v148 = ((4 * v146) ^ 0xA825BCA0) & v146 ^ (4 * v146) & 0xEA096F28;
  v149 = (v148 ^ 0xA8012C20) & (16 * v147) ^ v147;
  v150 = ((16 * (v148 ^ 0x42084308)) ^ 0xA096F280) & (v148 ^ 0x42084308) ^ (16 * (v148 ^ 0x42084308)) & 0xEA096F20;
  v151 = v149 ^ 0xEA096F28 ^ (v150 ^ 0xA0006200) & (v149 << 8);
  v152 = v142 ^ (2 * ((v151 << 16) & 0x6A090000 ^ v151 ^ ((v151 << 16) ^ 0x6F280000) & (((v150 ^ 0x4A090D28) << 8) & 0x6A090000 ^ 0x62000000 ^ (((v150 ^ 0x4A090D28) << 8) ^ 0x96F0000) & (v150 ^ 0x4A090D28))));
  v153 = STACK[0x5B0] + 13;
  LODWORD(STACK[0x590]) = v153;
  *(v49 + 4 * v153) = (v137 + 1786234014) ^ (((v137 + 1786234014) ^ 0x979F9EB) + 1105903787) ^ (((v137 + 1786234014) ^ 0xBDDC7D84) - 179354426) ^ (((v137 + 1786234014) ^ 0x5C26BF6E) + 347440688) ^ (((v137 + 1786234014) ^ 0x5FEFFDBF) + 394052863) ^ 0xB351776C;
  v154 = v49;
  v155 = (v47 & 0x79E11E32 ^ 0xD41A6E22) & (v47 & 0x861EE1CD ^ 0xFBEB1E37) | v47 & 0x20481CD;
  LODWORD(v40) = ((206297989 - v115) ^ 0xF4798E0A) & (2 * ((206297989 - v115) & 0xF97DA8AA)) ^ (206297989 - v115) & 0xF97DA8AA;
  LODWORD(v42) = ((2 * ((206297989 - v115) ^ 0x9683DE4E)) ^ 0xDFFCEDC8) & ((206297989 - v115) ^ 0x9683DE4E) ^ (2 * ((206297989 - v115) ^ 0x9683DE4E)) & 0x6FFE76E4;
  v156 = v42 ^ 0x20021224;
  LODWORD(v42) = (v42 ^ 0x4FFC64C0) & (4 * v40) ^ v40;
  LODWORD(v40) = ((4 * v156) ^ 0xBFF9DB90) & v156 ^ (4 * v156) & 0x6FFE76E4;
  LODWORD(v42) = (v40 ^ 0x2FF85280) & (16 * v42) ^ v42;
  LODWORD(v40) = ((16 * (v40 ^ 0x40062464)) ^ 0xFFE76E40) & (v40 ^ 0x40062464) ^ (16 * (v40 ^ 0x40062464)) & 0x6FFE76E0;
  LODWORD(v42) = v42 ^ 0x6FFE76E4 ^ (v40 ^ 0x6FE66600) & (v42 << 8);
  LODWORD(v42) = (v42 << 16) & 0xFFE0000 ^ v42 ^ ((v42 << 16) ^ 0x16E40000) & (((v40 ^ 0x1810A4) << 8) & 0x6FFE0000 ^ 0x1880000 ^ (((v40 ^ 0x1810A4) << 8) ^ 0x7E760000) & (v40 ^ 0x1810A4));
  v157 = ((v115 + 1890295493) ^ 0xAE076D3A) & (2 * ((v115 + 1890295493) & 0x8F54613B)) ^ (v115 + 1890295493) & 0x8F54613B;
  LODWORD(v40) = ((2 * ((v115 + 1890295493) ^ 0xB427ED6C)) ^ 0x76E718AE) & ((v115 + 1890295493) ^ 0xB427ED6C) ^ (2 * ((v115 + 1890295493) ^ 0xB427ED6C)) & 0x3B738C56;
  v158 = v40 ^ 0x9108451;
  LODWORD(v40) = v157 ^ 0x3B738C57 ^ (v40 ^ 0x32630804) & (4 * v157);
  v159 = (LODWORD(STACK[0x570]) + (LODWORD(STACK[0x588]) + 107) * (LODWORD(STACK[0x588]) - 1312177504) + LODWORD(STACK[0x55C]) * (LODWORD(STACK[0x588]) - 362689506)) % 0x3C9u;
  v160 = (((v115 + 1890295493) ^ (2 * ((16 * v40) & 0x50 ^ v40 ^ ((16 * v40) ^ 0x70) & (((4 * v158) ^ 0x6DCE3150) & v158 ^ (4 * v158) & 0x3B738C50)))) & 0xFFFFFFF1 ^ 0x58) & (v112 & 0xF1 ^ 0x9B) ^ v112 & 0x90 ^ ~*(v46 + -969 * STACK[0x470] + 4266);
  v161 = ((731461166 - v127) ^ 0x94D7BE11) & (2 * ((731461166 - v127) & 0xD897385A)) ^ (731461166 - v127) & 0xD897385A;
  LODWORD(v40) = ((2 * ((731461166 - v127) ^ 0xB5D5EEB1)) ^ 0xDA85ADD6) & ((731461166 - v127) ^ 0xB5D5EEB1) ^ (2 * ((731461166 - v127) ^ 0xB5D5EEB1)) & 0x6D42D6EA;
  v162 = v40 ^ 0x25425229;
  LODWORD(v40) = (v40 ^ 0x400080C0) & (4 * v161) ^ v161;
  v163 = ((4 * v162) ^ 0xB50B5BAC) & v162 ^ (4 * v162) & 0x6D42D6E8;
  LODWORD(v40) = (v163 ^ 0x250252A0) & (16 * v40) ^ v40;
  v164 = ((16 * (v163 ^ 0x48408443)) ^ 0xD42D6EB0) & (v163 ^ 0x48408443) ^ (16 * (v163 ^ 0x48408443)) & 0x6D42D6E0;
  LODWORD(v40) = v40 ^ 0x6D42D6EB ^ (v164 ^ 0x44004600) & (v40 << 8);
  v165 = (731461166 - v127) ^ (2 * ((v40 << 16) & 0x9020000 ^ v40 ^ ((v40 << 16) ^ 0x6EB0000) & (((v164 ^ 0x2942904B) << 8) & 0x6D420000 ^ 0xD000000 ^ (((v164 ^ 0x2942904B) << 8) ^ 0x42D60000) & (v164 ^ 0x2942904B))));
  v166 = ((v127 + 59806811) ^ 0xB93CF89D) & (2 * ((v127 + 59806811) & 0xB83EFD1C)) ^ (v127 + 59806811) & 0xB83EFD1C;
  LODWORD(v40) = ((2 * ((v127 + 59806811) ^ 0x89712A9D)) ^ 0x629FAF02) & ((v127 + 59806811) ^ 0x89712A9D) ^ (2 * ((v127 + 59806811) ^ 0x89712A9D)) & 0x314FD780;
  v167 = v40 ^ 0x11405081;
  LODWORD(v40) = (v40 ^ 0x200F8400) & (4 * v166) ^ v166;
  v168 = ((4 * v167) ^ 0xC53F5E04) & v167 ^ (4 * v167) & 0x314FD780;
  LODWORD(v40) = (v168 ^ 0x10F5600) & (16 * v40) ^ v40;
  v169 = ((16 * (v168 ^ 0x30408181)) ^ 0x14FD7810) & (v168 ^ 0x30408181) ^ (16 * (v168 ^ 0x30408181)) & 0x314FD780;
  v170 = LODWORD(STACK[0x584]) / 0x10E;
  LODWORD(v40) = ((v127 + 59806811) ^ (2 * (((v40 ^ 0x314FD781 ^ v169 & (v40 << 8)) << 16) & 0x1020000 ^ v40 ^ 0x314FD781 ^ v169 & (v40 << 8) ^ ((((v169 ^ 0x21028781) << 8) ^ 0x4FD70000) & (v169 ^ 0x21028781) ^ ((v169 ^ 0x21028781) << 8) & 0x314F0000) & (((v40 ^ 0x314FD781 ^ v169 & (v40 << 8)) << 16) ^ 0x7810000)))) & 0x1644098C;
  STACK[0x480] = LODWORD(STACK[0x550]) / 0x3C9uLL;
  v171 = v101 - v115;
  LODWORD(v47) = ((206297989 - v115) ^ (2 * v42) ^ 0x6440A08) & (v116 & 0x16440A2A ^ 0x16000220) ^ v116 & 0x12400000;
  v172 = v101 - v115 - 1074107244;
  v173 = *(v46 + v159) << 16;
  LODWORD(v47) = LODWORD(STACK[0x560]) * ((((v47 ^ 0xDE14160F) - 1219203993) ^ ((v47 ^ 0xC1D5DDA6) - 1466587184) ^ ((v47 ^ 0x1B85C183) + 1925561323)) - (((v165 & 0x1644098C ^ 0x1F2928CD) - 1933649105) ^ ((v165 & 0x1644098C ^ 0xF699C82) - 1661046942) ^ ((v165 & 0x1644098C ^ 0x1244B5C3) - 2116860383)) - (((v40 ^ 0x6CB50889) - 1045496835) ^ ((v40 ^ 0xBFEBF998) + 317721326) ^ ((v40 ^ 0xC35EF11D) + 1850016361)) + 822774256);
  LODWORD(v42) = *(v46 + LODWORD(STACK[0x56C]) + v47 - 969 * ((LODWORD(STACK[0x56C]) + v47) / 0x3C9u));
  LODWORD(v47) = *(v46 + -969 * (LODWORD(STACK[0x508]) / 0x3C9) + 4740);
  LODWORD(v42) = ((((v160 << 24) ^ 0xEDB7FBA8) & (v173 ^ 0xFF57FBF8) & 0x38930080 | v173 & 0x480000 | (((v160 << 24) ^ 0xEDB7FBA8) & (v173 ^ 0xFF57FBF8) ^ 0x85000457) & ((v42 << 8) ^ 0xC724375F)) ^ 0x134DDBA1) & (v47 ^ 0xFFFFFFE6);
  v174 = (v172 ^ 0x9EED4F22) & (2 * (v172 & 0xC0E98FB3)) ^ v172 & 0xC0E98FB3;
  LODWORD(v40) = ((2 * (v172 ^ 0x1E6C4362)) ^ 0xBD0B99A2) & (v172 ^ 0x1E6C4362) ^ (2 * (v172 ^ 0x1E6C4362)) & 0xDE85CCD0;
  v175 = v40 ^ 0x42844451;
  LODWORD(v40) = (v40 ^ 0x4000880) & (4 * v174) ^ v174;
  v176 = ((4 * v175) ^ 0x7A173344) & v175 ^ (4 * v175) & 0xDE85CCD0;
  LODWORD(v40) = (v176 ^ 0x5A050040) & (16 * v40) ^ v40;
  v177 = ((16 * (v176 ^ 0x8480CC91)) ^ 0xE85CCD10) & (v176 ^ 0x8480CC91) ^ (16 * (v176 ^ 0x8480CC91)) & 0xDE85CCD0;
  LODWORD(v40) = v40 ^ 0xDE85CCD1 ^ (v177 ^ 0xC804CC00) & (v40 << 8);
  v178 = LODWORD(STACK[0x524]) / 0x3C9;
  v179 = LODWORD(STACK[0x520]) / 0x3C9;
  LODWORD(v40) = (v40 << 16) & 0x5E850000 ^ v40 ^ ((v40 << 16) ^ 0x4CD10000) & (((v177 ^ 0x168100C1) << 8) & 0x5E850000 ^ 0x5A010000 ^ (((v177 ^ 0x168100C1) << 8) ^ 0x5CC0000) & (v177 ^ 0x168100C1));
  v180 = LODWORD(STACK[0x518]) / 0x3C9;
  LODWORD(v47) = v172 ^ v47 & 0xFFFFFF81 ^ (2 * v40);
  LODWORD(v40) = LODWORD(STACK[0x510]) / 0x3C9;
  LODWORD(v42) = v47 ^ v42;
  *(v49 + 4 * (STACK[0x5B0] - 270 * v170 + 923)) = v155 & 0x616400C ^ (v155 & 0x717542D ^ 0x57964F0D) & (v155 & 0x717542D ^ 0xFEBFDB6C) ^ 0x45EEBC9D ^ v42;
  LODWORD(v47) = *(v46 + (-969 * v40 + 60514));
  LODWORD(v40) = *(v46 + -969 * v180 + 60672) << 16;
  v181 = (v115 - 677622718) ^ (((v115 - 677622718) ^ 0x369B9F3B) + 674454863) ^ (((v115 - 677622718) ^ 0x1341105E) + 233427500) ^ (((v115 - 677622718) ^ 0xAA724D12) - 1260744856) ^ (((v115 - 677622718) ^ 0x6EFFFFFD) + 1884765577) ^ 0x5E95EAC9;
  v182 = *(v46 + -969 * v179 + 60830) << 8;
  v183 = (((((v47 ^ 0x4C) << 24) ^ 0x3ADE2880) & (v40 ^ 0xFFE62880) | v40 & 0x210000) ^ 0xCA916231) & (v182 ^ 0xFFFF42BD);
  LODWORD(v40) = *(v46 + -969 * v178 + 60988);
  LODWORD(v47) = (((v92 ^ 0xA98C714F) - 1165496354) ^ ((v92 ^ 0x95B9EE1A) - 2035126135) ^ ((v92 ^ 0x252B7EB3) + 908124194)) - 305179586;
  v184 = (((v143 + 1799768379) ^ 0x347C67D3) - 128540025) ^ (v143 + 1799768379) ^ (((v143 + 1799768379) ^ 0xBEECC086) + 1925580244) ^ (((v143 + 1799768379) ^ 0xC4B26600) + 144221014) ^ (((v143 + 1799768379) ^ 0x7DF7FBFF) - 1310900565) ^ v40 & 0xFFFFFFEF ^ ((v182 & 0xB500 | v183) ^ 0x32805EA1) & (v40 ^ 0xFFFFFFA6);
  LODWORD(v40) = v171 + (((v184 ^ 0x126D9235) + 1303700396) ^ ((v184 ^ 0x1CBCEDD8) + 1130732615) ^ ((v184 ^ 0xAACA405E) - 183291455)) - 1278033704;
  v185 = ((v40 ^ 0xB07177BE) + 1631558399) ^ v40 ^ ((v40 ^ 0x137C021D) - 1036849314) ^ ((v40 ^ 0x70470863) - 1593187036) ^ ((v40 ^ 0xFDFB6F7F) + 750092864);
  v186 = (v47 ^ 0xEBC8BDF3) & (2 * (v47 & 0xC3EABDC4)) ^ v47 & 0xC3EABDC4;
  LODWORD(v40) = ((2 * (v47 ^ 0x6E5DA67B)) ^ 0x5B6E377E) & (v47 ^ 0x6E5DA67B) ^ (2 * (v47 ^ 0x6E5DA67B)) & 0xADB71BBE;
  v187 = v40 ^ 0xA4910881;
  LODWORD(v40) = (v40 ^ 0x9261330) & (4 * v186) ^ v186;
  v188 = ((4 * v187) ^ 0xB6DC6EFC) & v187 ^ (4 * v187) & 0xADB71BBC;
  LODWORD(v40) = (v188 ^ 0xA4940AA0) & (16 * v40) ^ v40;
  v189 = ((16 * (v188 ^ 0x9231103)) ^ 0xDB71BBF0) & (v188 ^ 0x9231103) ^ (16 * (v188 ^ 0x9231103)) & 0xADB71BB0;
  LODWORD(v40) = v40 ^ 0xADB71BBF ^ (v189 ^ 0x89311B0F) & (v40 << 8);
  v190 = LODWORD(STACK[0x54C]) / 0x3C9;
  v184 ^= 0xA0268E61;
  LODWORD(v40) = v181 ^ v47 ^ (2 * ((v40 << 16) & 0x2DB70000 ^ v40 ^ ((v40 << 16) ^ 0x1BBF0000) & (((v189 ^ 0x2486000F) << 8) & 0x2DB70000 ^ 0x8A40000 ^ (((v189 ^ 0x2486000F) << 8) ^ 0x371B0000) & (v189 ^ 0x2486000F)))) ^ v184;
  v191 = ((v155 ^ v181 ^ 0x6699582E) - 611310412) ^ ((v155 ^ v181 ^ 0x612418A) - 1155842792) ^ ((v155 ^ v181 ^ 0x7176B65B) - 864040249);
  v192 = 2 * ((v42 ^ 0x1052129F) & (v152 ^ 0x7D742617) ^ v42 & 0x569F593);
  *(v49 + 4 * (STACK[0x5B0] - 270 * STACK[0x488] + 1794)) = v184;
  v193 = (((v127 + 59806811) ^ 0xD402897C) + 1815901288) ^ (v127 + 59806811) ^ (((v127 + 59806811) ^ 0xDF61E6F7) + 1734286317) ^ (((v127 + 59806811) ^ 0x735B9280) - 882544740) ^ (((v127 + 59806811) ^ 0x3FF9FFEF) - 2017000715) ^ v42 ^ 0x2FFC4D53;
  v194 = (((v42 ^ 0x2FFC4D53 ^ v40 ^ 0xE96E3307) + 949729698) ^ ((v42 ^ 0x2FFC4D53 ^ v40 ^ 0x582EE4AC) - 1982108149) ^ ((v42 ^ 0x2FFC4D53 ^ v40 ^ 0xBEFB644C) + 1863249643)) - (((v40 ^ 0xB3E4F437) + 1645313682) ^ ((v40 ^ 0x3FAC1820) - 296119673) ^ ((v40 ^ 0xBC5D003C) + 1839762075)) + 71299983;
  v195 = (v194 ^ 0xFF0B35BC) & (2 * (v194 & 0xFF5239BD)) ^ v194 & 0xFF5239BD;
  LODWORD(v40) = ((2 * (v194 ^ 0xA1AF14C6)) ^ 0xBDFA5AF6) & (v194 ^ 0xA1AF14C6) ^ (2 * (v194 ^ 0xA1AF14C6)) & 0x5EFD2D7A;
  v196 = v40 ^ 0x42052509;
  LODWORD(v40) = (v40 ^ 0x1CD80870) & (4 * v195) ^ v195;
  v197 = ((4 * v196) ^ 0x7BF4B5EC) & v196 ^ (4 * v196) & 0x5EFD2D78;
  LODWORD(v40) = (v197 ^ 0x5AF42560) & (16 * v40) ^ v40;
  v198 = ((16 * (v197 ^ 0x4090813)) ^ 0xEFD2D7B0) & (v197 ^ 0x4090813) ^ (16 * (v197 ^ 0x4090813)) & 0x5EFD2D70;
  LODWORD(v40) = v40 ^ 0x5EFD2D7B ^ (v198 ^ 0x4ED00500) & (v40 << 8);
  v199 = (v40 << 16) & 0x5EFD0000 ^ v40 ^ ((v40 << 16) ^ 0x2D7B0000) & (((v198 ^ 0x102D284B) << 8) & 0x5EFD0000 ^ 0x2D00000 ^ (((v198 ^ 0x102D284B) << 8) ^ 0xFD2D0000) & (v198 ^ 0x102D284B));
  v200 = (((v42 ^ 0x3A97985E) - 359388429) ^ ((v42 ^ 0xE4266A90) + 874895421) ^ ((v42 ^ 0xCEE3E051) + 518017790)) - (((v192 ^ 0x608AACEE) + 819606642) ^ ((v192 ^ 0xF52830F0) - 1518819216) ^ ((v192 ^ 0x9522BD38) - 982375000)) - 543686733;
  LODWORD(v40) = (v200 ^ 0x24E7958B) & (2 * (v200 & 0xB0E719D3)) ^ v200 & 0xB0E719D3;
  LODWORD(v42) = ((2 * (v200 ^ 0x4E3A5A9)) ^ 0x680978F4) & (v200 ^ 0x4E3A5A9) ^ (2 * (v200 ^ 0x4E3A5A9)) & 0xB404BC7A;
  v201 = v42 ^ 0x9404840A;
  LODWORD(v42) = (v42 ^ 0x2850) & (4 * v40) ^ v40;
  LODWORD(v40) = ((4 * v201) ^ 0xD012F1E8) & v201 ^ (4 * v201) & 0xB404BC78;
  LODWORD(v42) = (v40 ^ 0x9000B060) & (16 * v42) ^ v42;
  LODWORD(v40) = ((16 * (v40 ^ 0x24040C12)) ^ 0x404BC7A0) & (v40 ^ 0x24040C12) ^ (16 * (v40 ^ 0x24040C12)) & 0xB404BC70;
  LODWORD(v42) = v42 ^ 0xB404BC7A ^ (v40 ^ 0x8400) & (v42 << 8);
  v202 = LODWORD(STACK[0x548]) / 0x3C9;
  v203 = (((v193 ^ 0x66F9B0B5) - 1502735284) ^ ((v193 ^ 0x3C5ECA0B) - 53907722) ^ ((v193 ^ 0x22C82796) - 497056919)) - v127 - 1397964440;
  LODWORD(v40) = (v42 << 16) & 0x34040000 ^ v42 ^ ((v42 << 16) ^ 0x3C7A0000) & (((v40 ^ 0xB404385A) << 8) & 0xB4040000 ^ (((v40 ^ 0xB404385A) << 8) ^ 0x4BC0000) & (v40 ^ 0xB404385A) ^ 0x30000000);
  v204 = LODWORD(STACK[0x53C]) / 0x3C9;
  LODWORD(v42) = v143 - 66091286;
  LODWORD(v40) = v194 ^ v203 ^ ((v203 ^ 0x24655755) - 84941795) ^ ((v203 ^ 0xABB132F3) + 1966834107) ^ ((v203 ^ 0xD51EB6AF) + 194250215) ^ ((v203 ^ 0x7BBF9FBF) - 1523241737) ^ v200 ^ (2 * (v199 ^ v40));
  v205 = ((v155 ^ 0x6C237817) - 785775477) ^ ((v155 ^ 0x4B258675) - 164824343) ^ ((v155 ^ 0x893986DE) + 875625028);
  v206 = v172 - v47;
  v207 = (((v40 ^ 0x3A44627E) - 422703421) ^ ((v40 ^ 0xED74B1BC) + 838786305) ^ ((v40 ^ 0x1CF19D18) - 1065619035)) - v42;
  LODWORD(v47) = (((v185 ^ 0x998DB779) - 402341719) ^ ((v185 ^ 0xBB7C9D6C) - 889853250) ^ ((v185 ^ 0xC4038AA) + 2110345084)) + 1895883940;
  v208 = (v47 ^ 0x3C4D47CD) & (2 * (v47 & 0xBE4D17EE)) ^ v47 & 0xBE4D17EE;
  LODWORD(v40) = ((2 * (v47 ^ 0x1C5F6581)) ^ 0x4424E4DE) & (v47 ^ 0x1C5F6581) ^ (2 * (v47 ^ 0x1C5F6581)) & 0xA212726E;
  v209 = v40 ^ 0xA2121221;
  LODWORD(v40) = (v40 ^ 0x26049) & (4 * v208) ^ v208;
  v210 = ((4 * v209) ^ 0x8849C9BC) & v209 ^ (4 * v209) & 0xA212726C;
  LODWORD(v40) = (v210 ^ 0x80004020) & (16 * v40) ^ v40;
  v211 = ((16 * (v210 ^ 0x22123243)) ^ 0x212726F0) & (v210 ^ 0x22123243) ^ (16 * (v210 ^ 0x22123243)) & 0xA2127260;
  LODWORD(v40) = v40 ^ 0xA212726F ^ (v211 ^ 0x20022200) & (v40 << 8);
  LODWORD(v47) = v47 ^ (2 * ((v40 << 16) & 0x22120000 ^ v40 ^ ((v40 << 16) ^ 0x726F0000) & (((v211 ^ 0x8210500F) << 8) & 0x22120000 ^ (((v211 ^ 0x8210500F) << 8) ^ 0x12720000) & (v211 ^ 0x8210500F) ^ 0x20000000)));
  LODWORD(v40) = v207 + 98975755;
  v212 = (v207 + 98975755) ^ 0x8FA02F90;
  v213 = ((v207 + 98975755) ^ 0xDA1EBB0) & (2 * ((v207 + 98975755) & 0x4DB5F3BA)) ^ (v207 + 98975755) & 0x4DB5F3BA;
  v214 = ((2 * v212) ^ 0x842BB854) & v212 ^ (2 * v212) & 0xC215DC2A;
  v215 = v214 ^ 0x4214442A;
  v216 = (v214 ^ 0x19802) & (4 * v213) ^ v213;
  v217 = ((4 * v215) ^ 0x85770A8) & v215 ^ (4 * v215) & 0xC215DC28;
  v218 = (v217 ^ 0x155020) & (16 * v216) ^ v216;
  v219 = ((16 * (v217 ^ 0xC2008C02)) ^ 0x215DC2A0) & (v217 ^ 0xC2008C02) ^ (16 * (v217 ^ 0xC2008C02)) & 0xC215DC20;
  v220 = v218 ^ 0xC215DC2A ^ (v219 ^ 0x15C00A) & (v218 << 8);
  v221 = LODWORD(STACK[0x538]) / 0x3C9;
  v222 = LODWORD(STACK[0x534]) / 0x3C9;
  LODWORD(v40) = v40 ^ (2 * ((v220 << 16) & 0x42150000 ^ v220 ^ ((v220 << 16) ^ 0x5C2A0000) & (((v219 ^ 0xC2001C0A) << 8) & 0x42150000 ^ 0x42010000 ^ (((v219 ^ 0xC2001C0A) << 8) ^ 0x15DC0000) & (v219 ^ 0xC2001C0A))));
  v223 = ((LODWORD(STACK[0x58C]) ^ 0xF53776E1) - 431703753) ^ ((LODWORD(STACK[0x58C]) ^ 0xCF647686) - 602425006) ^ ((LODWORD(STACK[0x58C]) ^ 0x16CAD672) + 96016806);
  v224 = LODWORD(STACK[0x528]) / 0x3C9;
  v225 = LODWORD(STACK[0x58C]) ^ v152;
  *(v49 + 4 * (STACK[0x5B0] - 270 * STACK[0x490] + 2652)) = v40 ^ 0x4DA3FA3C;
  LODWORD(v49) = ((v92 ^ 0x6F074FB2) + 2081214753) ^ ((v92 ^ 0xCDC9018E) - 557670627) ^ ((v92 ^ 0xBBD0AFDA) - 1462030007);
  v226 = ((v225 ^ 0xB5CDF28A) - 11119854) ^ ((v225 ^ 0xEFCF6876) - 1521169938) ^ ((v225 ^ 0x8E869F6D) - 1004716297);
  *(v154 + 4 * (LODWORD(STACK[0x590]) + 13)) = v47 ^ 0xBA5042E2;
  LODWORD(v40) = *(v46 + -969 * v224 + 4898);
  LODWORD(v47) = ((*(v46 + -969 * v222 + 5056) << 16) ^ 0x5B3ADFC3) & (((v40 ^ 0x82) << 24) ^ 0xB1FFDFC3) | ((v40 ^ 0x82) << 24) & 0xA4000000;
  LODWORD(v40) = *(v46 + -969 * v221 + 5214) << 8;
  v227 = (v47 ^ 0x587B3D73) & (v40 ^ 0xFFFF1EF3);
  LODWORD(v47) = *(v46 + -969 * v204 + 5372);
  LODWORD(v40) = ((v40 & 0x1D00 | v227) ^ 0xFAEA37C8) & (v47 ^ 0xFFFFFFE2);
  v228 = ((v205 + 33791558) ^ 0xE50F65AA) & (2 * ((v205 + 33791558) & 0xF128602B)) ^ (v205 + 33791558) & 0xF128602B;
  v229 = ((2 * ((v205 + 33791558) ^ 0x270F25B8)) ^ 0xAC4E8B26) & ((v205 + 33791558) ^ 0x270F25B8) ^ (2 * ((v205 + 33791558) ^ 0x270F25B8)) & 0xD6274592;
  v230 = v229 ^ 0x52214491;
  v231 = (v229 ^ 0x84020100) & (4 * v228) ^ v228;
  v232 = ((4 * v230) ^ 0x589D164C) & v230 ^ (4 * v230) & 0xD6274590;
  v233 = (v232 ^ 0x50050400) & (16 * v231) ^ v231;
  v234 = ((16 * (v232 ^ 0x86224193)) ^ 0x62745930) & (v232 ^ 0x86224193) ^ (16 * (v232 ^ 0x86224193)) & 0xD6274590;
  v235 = v233 ^ 0xD6274593 ^ (v234 ^ 0x42244100) & (v233 << 8);
  v236 = ((v235 << 16) ^ 0x45930000) & (((v234 ^ 0x94030483) << 8) & 0x56270000 ^ 0x50220000 ^ (((v234 ^ 0x94030483) << 8) ^ 0x27450000) & (v234 ^ 0x94030483));
  v237 = LODWORD(STACK[0x540]) / 0x3C9;
  v238 = v42 - v127;
  v239 = v127 - (v42 - v127);
  v240 = v49 - 1960626952 - v206;
  LODWORD(v42) = v40 ^ v47 & 0xFFFFFF87 ^ (v205 + 33791558) ^ (2 * ((v235 << 16) & 0x56270000 ^ v235 ^ v236));
  *(v154 + 4 * (STACK[0x5B0] - 270 * STACK[0x498] + 936)) = v185 & 0x3154420 ^ (v185 & 0x717542D ^ 0xD504F49F) & (v185 & 0x717542D ^ 0xD96EE4D2) ^ 0xDE0D3719 ^ v42;
  v241 = *(v46 + -969 * v237 + 61146) << 24;
  v242 = ((*(v46 + -969 * v202 + 61304) << 16) ^ 0x1BFB1E9D) & (v241 ^ 0x66FF7E9F) | v241 & 0xE4000000;
  v243 = *(v46 + -969 * STACK[0x480] + 61620);
  LODWORD(v40) = ((v223 - 391686224) ^ 0x9996D008) & (2 * ((v223 - 391686224) & 0xDDD09120)) ^ (v223 - 391686224) & 0xDDD09120;
  v244 = ((2 * ((v223 - 391686224) ^ 0x23B6F008)) ^ 0xFCCCC250) & ((v223 - 391686224) ^ 0x23B6F008) ^ (2 * ((v223 - 391686224) ^ 0x23B6F008)) & 0xFE666128;
  v245 = v244 ^ 0x2222128;
  v246 = (v244 ^ 0xFC444000) & (4 * v40) ^ v40;
  LODWORD(v40) = ((4 * v245) ^ 0xF99984A0) & v245 ^ (4 * v245) & 0xFE666128;
  v247 = (v40 ^ 0xF8000028) & (16 * v246) ^ v246;
  LODWORD(v40) = ((16 * (v40 ^ 0x6666108)) ^ 0xE6661280) & (v40 ^ 0x6666108) ^ (16 * (v40 ^ 0x6666108)) & 0xFE666120;
  v248 = v247 ^ 0xFE666128 ^ (v40 ^ 0xE6660000) & (v247 << 8);
  v249 = ((((*(v46 + -969 * v190 + 61462) << 8) ^ 0x84F13FE6) & (v243 ^ 0x84F1FFFE) | v243 & 0x19) ^ 0x27A15A01) & (v242 ^ 0xFC15E162) ^ v242 & 0x5CAF0201 ^ (v223 - 391686224) ^ (2 * ((v248 << 16) & 0x7E660000 ^ v248 ^ ((v248 << 16) ^ 0x61280000) & (((v40 ^ 0x18006128) << 8) & 0x7E660000 ^ 0x18060000 ^ (((v40 ^ 0x18006128) << 8) ^ 0x66610000) & (v40 ^ 0x18006128))));
  v250 = ((2 * (v240 & 0xC56EDDAB)) & 0x2010000 | v240 & 0xC56EDDAB) ^ (2 * (v240 & 0xC56EDDAB)) & (v240 ^ 0xF24FD92A);
  v251 = ((2 * (v240 ^ 0xF24FD92A)) ^ 0x6E420902) & (v240 ^ 0xF24FD92A) ^ (2 * (v240 ^ 0xF24FD92A)) & 0x37210480;
  LODWORD(v40) = v251 ^ 0x11210481;
  v252 = v250 ^ 0x37210481 ^ (v251 ^ 0x26000001) & (4 * v250);
  v253 = (4 * v40) & 0x37210480 ^ 0x23210481 ^ ((4 * v40) ^ 0xDC841204) & v40;
  v254 = (16 * v252) & 0x37210480 ^ v252 ^ ((16 * v252) ^ 0x72104810) & v253;
  v255 = (16 * v253) & 0x37210480 ^ 0x5210481 ^ ((16 * v253) ^ 0x72104810) & v253;
  v256 = (v254 << 8) & 0x37210400 ^ v254 ^ ((v254 << 8) ^ 0x21048100) & v255;
  v257 = ((v239 - 270876100) ^ 0xC635AB9A) & (2 * ((v239 - 270876100) & 0xE839AB9B)) ^ (v239 - 270876100) & 0xE839AB9B;
  LODWORD(v40) = ((2 * ((v239 - 270876100) ^ 0xD636FFB8)) ^ 0x7C1EA846) & ((v239 - 270876100) ^ 0xD636FFB8) ^ (2 * ((v239 - 270876100) ^ 0xD636FFB8)) & 0x3E0F5422;
  v258 = v40 ^ 0x2015421;
  LODWORD(v40) = (v40 ^ 0x200E0000) & (4 * v257) ^ v257;
  v259 = ((4 * v258) ^ 0xF83D508C) & v258 ^ (4 * v258) & 0x3E0F5420;
  LODWORD(v40) = v40 ^ 0x3E0F5423 ^ (v259 ^ 0x380D5000) & (16 * v40);
  v260 = (16 * (v259 ^ 0x6020423)) & 0x3E0F5420 ^ 0x1E0A1403 ^ ((16 * (v259 ^ 0x6020423)) ^ 0xE0F54230) & (v259 ^ 0x6020423);
  LODWORD(v40) = (v40 << 8) & 0x3E0F5400 ^ v40 ^ ((v40 << 8) ^ 0xF542300) & v260;
  *(v154 + 4 * (STACK[0x5B0] - 270 * STACK[0x4A0] + 1807)) = v249 ^ 0x5E939C5D;
  v261 = v154;
  LODWORD(v40) = (v40 << 16) & 0x3E0F0000 ^ v40 ^ ((v40 << 16) ^ 0x54230000) & ((v260 << 8) & 0x3E0F0000 ^ 0x300B0000 ^ ((v260 << 8) ^ 0xF540000) & v260);
  v262 = ((v191 - 410446525) ^ 0x834AEB50) & (2 * ((v191 - 410446525) & 0xD3400B1A)) ^ (v191 - 410446525) & 0xD3400B1A;
  v263 = ((2 * ((v191 - 410446525) ^ 0x7CAF974)) ^ 0xA915E4DC) & ((v191 - 410446525) ^ 0x7CAF974) ^ (2 * ((v191 - 410446525) ^ 0x7CAF974)) & 0xD48AF26E;
  v264 = v263 ^ 0x548A1222;
  v265 = (v263 ^ 0x80006048) & (4 * v262) ^ v262;
  v266 = ((4 * v264) ^ 0x522BC9B8) & v264 ^ (4 * v264) & 0xD48AF26C;
  v267 = (v266 ^ 0x500AC020) & (16 * v265) ^ v265;
  v268 = ((16 * (v266 ^ 0x84803246)) ^ 0x48AF26E0) & (v266 ^ 0x84803246) ^ (16 * (v266 ^ 0x84803246)) & 0xD48AF260;
  v269 = v267 ^ 0xD48AF26E ^ (v268 ^ 0x408A2200) & (v267 << 8);
  v270 = v269 << 16;
  v271 = (v256 << 16) & 0x37210000 ^ v256 ^ ((v256 << 16) ^ 0x4810000) & ((v255 << 8) & 0x37210000 ^ 0x16210000 ^ ((v255 << 8) ^ 0x21040000) & v255) ^ v269 ^ (v269 << 16) & 0x548A0000;
  v272 = v206 - v191;
  LODWORD(v42) = v42 ^ 0x15E95F20;
  LODWORD(v47) = (v191 - 410446525) ^ v240 ^ (2 * (v271 ^ (v270 ^ 0x726E0000) & (((v268 ^ 0x9400D00E) << 8) & 0x548A0000 ^ 0x54080000 ^ (((v268 ^ 0x9400D00E) << 8) ^ 0xAF20000) & (v268 ^ 0x9400D00E)))) ^ v249 ^ 0x5E939C5D;
  LODWORD(v47) = (((v47 ^ v42 ^ 0x252018E4) + 843372076) ^ ((v47 ^ v42 ^ 0x1E2D857E) + 155798450) ^ ((v47 ^ v42 ^ 0x79957E82) + 1861333070)) - (((v47 ^ 0xD7CFD568) + 1190894666) ^ ((v47 ^ 0x9415A5D0) + 86109426) ^ ((v47 ^ 0x1888FA05) - 1984122075));
  v273 = ((((v239 - 270876100) ^ (2 * v40) ^ v42 ^ 0x99F2A1A9) + 590653297) ^ (((v239 - 270876100) ^ (2 * v40) ^ v42 ^ 0x16A9762B) - 1401982733) ^ (((v239 - 270876100) ^ (2 * v40) ^ v42 ^ 0x36B8BDFA) - 1937851612)) - v239 - 1868680225;
  v274 = (v273 ^ 0x1317E500) & (2 * (v273 & 0x9427F1A8)) ^ v273 & 0x9427F1A8;
  v275 = ((2 * (v273 ^ 0x1B170610)) ^ 0x1E61EF70) & (v273 ^ 0x1B170610) ^ (2 * (v273 ^ 0x1B170610)) & 0x8F30F7B8;
  v276 = v275 ^ 0x81101088;
  v277 = (v275 ^ 0x20C720) & (4 * v274) ^ v274;
  v278 = ((4 * v276) ^ 0x3CC3DEE0) & v276 ^ (4 * v276) & 0x8F30F7B8;
  v279 = (v278 ^ 0xC00D6A0) & (16 * v277) ^ v277;
  v280 = ((16 * (v278 ^ 0x83302118)) ^ 0xF30F7B80) & (v278 ^ 0x83302118) ^ (16 * (v278 ^ 0x83302118)) & 0x8F30F7B0;
  v281 = v279 ^ 0x8F30F7B8 ^ (v280 ^ 0x83007300) & (v279 << 8);
  v282 = (v281 << 16) & 0xF300000 ^ v281 ^ ((v281 << 16) ^ 0x77B80000) & (((v280 ^ 0xC308438) << 8) & 0x8F300000 ^ (((v280 ^ 0xC308438) << 8) ^ 0x30F70000) & (v280 ^ 0xC308438) ^ 0xF000000);
  v283 = ((v226 + 551202589) ^ 0xA83B499) & (2 * ((v226 + 551202589) & 0xA8C3A098)) ^ (v226 + 551202589) & 0xA8C3A098;
  v284 = ((2 * ((v226 + 551202589) ^ 0x5A82B4A9)) ^ 0xE4822862) & ((v226 + 551202589) ^ 0x5A82B4A9) ^ (2 * ((v226 + 551202589) ^ 0x5A82B4A9)) & 0xF2411430;
  v285 = v284 ^ 0x12411411;
  v286 = (v284 ^ 0xE000003F) & (4 * v283) ^ v283;
  v287 = ((4 * v285) ^ 0xC90450C4) & v285 ^ (4 * v285) & 0xF2411430;
  v288 = (v287 ^ 0xC0001000) & (16 * v286) ^ v286;
  v289 = ((16 * (v287 ^ 0x32410431)) ^ 0x24114310) & (v287 ^ 0x32410431) ^ (16 * (v287 ^ 0x32410431)) & 0xF2411430;
  v290 = v288 ^ 0xF2411431 ^ (v289 ^ 0x20010021) & (v288 << 8);
  v291 = v42 ^ (v226 + 551202589) ^ (2 * ((v290 << 16) & 0x72410000 ^ v290 ^ ((v290 << 16) ^ 0x14310000) & (((v289 ^ 0xD2401421) << 8) & 0x72410000 ^ 0x32410000 ^ (((v289 ^ 0xD2401421) << 8) ^ 0x41140000) & (v289 ^ 0xD2401421))));
  v292 = (((v291 ^ 0xF02A109C) + 213797851) ^ ((v291 ^ 0x9E08FBF2) + 1654431925) ^ ((v291 ^ 0x1BAB0A31) - 415280776)) - v226 + 614400767;
  LODWORD(v42) = (v292 ^ 0x62A4F330) & (2 * (v292 & 0x88A4F332)) ^ v292 & 0x88A4F332;
  v293 = ((2 * (v292 ^ 0x73ED7110)) ^ 0xF6930444) & (v292 ^ 0x73ED7110) ^ (2 * (v292 ^ 0x73ED7110)) & 0xFB498222;
  v294 = v293 ^ 0x9488222;
  v295 = (v293 ^ 0x62010000) & (4 * v42) ^ v42;
  LODWORD(v42) = ((4 * v294) ^ 0xED260888) & v294 ^ (4 * v294) & 0xFB498220;
  v296 = ((16 * (v42 ^ 0x12498222)) ^ 0xB4982220) & (v42 ^ 0x12498222) ^ (16 * (v42 ^ 0x12498222)) & 0xFB498220;
  v297 = v296 ^ 0x4B418002;
  v298 = (v42 ^ 0xE9000000) & (16 * v295) ^ v295 ^ 0xFB498222 ^ (v296 ^ 0xB0080200) & (((v42 ^ 0xE9000000) & (16 * v295) ^ v295) << 8);
  LODWORD(v47) = v292 ^ v273 ^ (v47 - 1435467046) ^ (((v47 - 1435467046) ^ 0xB71DC0E9) + 2129121796) ^ (((v47 - 1435467046) ^ 0xB4CDE045) + 2100818608) ^ (((v47 - 1435467046) ^ 0xCA2A3646) + 63972525) ^ (((v47 - 1435467046) ^ 0xFFFFFBFF) + 906357014) ^ (2 * (v282 ^ (v298 << 16) & 0x7B490000 ^ v298 ^ ((v298 << 16) ^ 0x2220000) & ((v297 << 8) & 0xFB490000 ^ 0x32490000 ^ ((v297 << 8) ^ 0x49820000) & v297)));
  v299 = (((v47 ^ 0xF09A8B4A) + 317548124) ^ ((v47 ^ 0xF82AB53C) + 442325038) ^ ((v47 ^ 0xC0A43ACD) + 584308701)) - (v238 - v226 + 1254850265) + 1035392960;
  v300 = v299 & 0xD305F4C6 ^ 0x9FFF1A80 ^ (v299 ^ 0xCAF1E6C6) & (2 * (v299 & 0xD305F4C6));
  LODWORD(v47) = ((2 * (v299 ^ 0x4CFAEE46)) ^ 0x3FFE3500) & (v299 ^ 0x4CFAEE46) ^ (2 * (v299 ^ 0x4CFAEE46)) & 0x9FFF1A80;
  v301 = v47 & 0x61202118 ^ v300 ^ ((4 * v300) ^ 0x1EDC4B18) & (v47 ^ 0x1FFE1000);
  LODWORD(v47) = ((4 * v47) ^ 0x1ED86118) & (v47 ^ 0x1FFE1000) ^ v47 & 0x61202118;
  v302 = v47 & 0x61202118 ^ v301 ^ ((16 * v301) ^ 0x8CD18918) & (v47 ^ 0x1200000);
  LODWORD(v47) = ((16 * v47) ^ 0x73202118) & (v47 ^ 0x1200000) ^ v47 & 0x61202118;
  v303 = v302 ^ v47 & 0x61202118 ^ ((v302 << 8) ^ 0x9E3AA118) & (v47 ^ 0x1200080);
  LODWORD(v47) = ((v47 << 8) ^ 0x41202118) & (v47 ^ 0x1200080) ^ v47 & 0x61202118;
  v304 = v299 ^ (2 * (v303 ^ v47 & 0x61202118 ^ ((v303 << 16) ^ 0x7BA02119) & (v47 ^ 0x1EDF0000) ^ ((v303 << 16) ^ 0x7BA02119) & 0x1FFF0000));
  LODWORD(v154) = STACK[0x5B0] + 406510236;
  v305 = (v154 ^ 0xD7D10FED) & (2 * (v154 & 0xE7C52FCD)) ^ v154 & 0xE7C52FCD;
  v306 = ((2 * (v154 ^ 0xD6D35A65)) ^ 0x622CEB50) & (v154 ^ 0xD6D35A65) ^ (2 * (v154 ^ 0xD6D35A65)) & 0x311675A8;
  v307 = v306 ^ 0x111214A8;
  v308 = (v306 ^ 0x20066180) & (4 * v305) ^ v305;
  v309 = ((4 * v307) ^ 0xC459D6A0) & v307 ^ (4 * v307) & 0x311675A8;
  v310 = (v309 ^ 0x1054A0) & (16 * v308) ^ v308;
  v311 = ((16 * (v309 ^ 0x31062108)) ^ 0x11675A80) & (v309 ^ 0x31062108) ^ (16 * (v309 ^ 0x31062108)) & 0x311675A0;
  v312 = v310 ^ 0x311675A8 ^ (v311 ^ 0x11065000) & (v310 << 8);
  v313 = v154 ^ (2 * ((v312 << 16) & 0x31160000 ^ v312 ^ ((v312 << 16) ^ 0x75A80000) & (((v311 ^ 0x20102528) << 8) & 0x31160000 ^ 0x21020000 ^ (((v311 ^ 0x20102528) << 8) ^ 0x16750000) & (v311 ^ 0x20102528)))) ^ 0x8A661911;
  v314 = 0x2A598768FLL * (((v313 ^ 0x1CAF212B7DD24602) - 0x1CAF212B7DD24602) ^ ((v313 ^ 0x5A752E43AF097A16) - 0x5A752E43AF097A16) ^ ((v313 ^ 0x46DA0F68BF54E198) - 0x46DA0F68BF54E198)) + 0x6F86AFB3F03C6BLL;
  v315 = v314 ^ ((v314 ^ 0x447024688350742ELL) + 0x65FF0A3415FB78E7) ^ ((v314 ^ 0x183547D40430E308) + 0x39BA6988929BEFC1) ^ ((v314 ^ 0x75CA6BE5904ACBEELL) + 0x544545B906E1C727) ^ ((v314 ^ 0xF7FFD9FA7E7EAFFFLL) - 0x298F0859172A5CC8);
  v316 = ((v315 ^ 0x71D50A8AC610EBDBLL) + 0x52D6FC75353815FFLL) ^ ((v315 ^ 0xD7090E36A1BE43CFLL) - 0xBF50736AD694215);
  v317 = v272 - 1770908725 + (((v249 ^ 0xFA66C8EE) + 1527425869) ^ ((v249 ^ 0x321AB3A) - 1571960679) ^ ((v249 ^ 0xA3E94E5B) + 42282490));
  v318 = STACK[0x4A8];
  *(v261 + 4 * ((__CFADD__(1622666520 * (v316 ^ ((v315 ^ 0x78ACD51F0EFA5B23) + 0x5BAF23E0FDD2A507)), 0xC4A2A0B833AF2F38) + (((v316 ^ ((v315 ^ 0x78ACD51F0EFA5B23) + 0x5BAF23E0FDD2A507)) * 0x60B7ED18uLL) >> 64) + 1622666520 * ((__CFADD__(v315 ^ 0x71D50A8AC610EBDBLL, 0x52D6FC75353815FFLL) - 1) ^ (__CFADD__(v315 ^ 0xD7090E36A1BE43CFLL, 0xF40AF8C95296BDEBLL) - 1) ^ (__CFADD__(v315 ^ 0x78ACD51F0EFA5B23, 0x5BAF23E0FDD2A507) - 1)) + 16164424) % 0x10E)) = v304 ^ 0xE8C67014;
  *(v261 + 4 * (LODWORD(STACK[0x590]) + 26)) = v317 ^ ((v317 ^ 0xC5FE736B) - 75906317) ^ ((v317 ^ 0xBC4543C0) - 2101153190) ^ ((v317 ^ 0x4BACA13A) + 1965756580) ^ ((v317 ^ 0xF36FDFF7) - 840405393) ^ 0xC545FFB4;
  return (*(STACK[0x598] + 8 * ((1988 * (v318 > 0xF)) ^ (LODWORD(STACK[0x428]) - 1598))))();
}

uint64_t sub_1E33639E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a10;
  a18 = &a13;
  a16 = (v18 - 1893) ^ (33731311 * ((&a15 & 0x1B703B27 | ~(&a15 | 0x1B703B27)) ^ 0xDD790EFB));
  (*(v19 + 8 * (v18 + 4456)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * (((&a15 | 0x14380DEB) + (~&a15 | 0xEBC7F214)) ^ 0x5CA159E4) + 540;
  a17 = a10;
  v20 = (*(v19 + 8 * (v18 ^ 0x319A)))(&a15);
  v21 = a15 != v18 + 16249227 + 3 * (v18 ^ 0x10C0);
  return (*(v19 + 8 * ((2 * v21) | (8 * v21) | v18)))(v20);
}

uint64_t sub_1E3363B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v17 = v16 - 136;
  v18 = 1875091903 * ((1711365665 - ((v16 - 136) | 0x66015E21) + ((v16 - 136) | 0x99FEA1DE)) ^ 0xAF8B225D);
  STACK[0x2E8] = *a10;
  *(v16 - 132) = v18 + v13 + (((v15 - 1610083241) | 0x48974DA0) ^ 0xC0F3D317);
  *(v16 - 128) = v15 + 4713 + v18;
  (*(v14 + 8 * (v15 ^ 0x2E6E)))(v16 - 136);
  v19 = *a10;
  v20 = 956911519 * ((((2 * v17) | 0x942D5A078A860FFCLL) - v17 + 0x35E952FC3ABCF802) ^ 0x8F20D8DF2FD277FBLL);
  *(v16 - 136) = (v15 - 1989) ^ v20;
  STACK[0x2E0] = v12 - ((2 * v12) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v20;
  STACK[0x2E8] = v19;
  (*(v14 + 8 * (v15 ^ 0x2EBC)))(v16 - 136);
  v21 = *a10;
  v22 = 1875091903 * (((v17 | 0xBCE8E8E6) - (v17 & 0xBCE8E8E6)) ^ 0x8A9D6B65);
  *(v16 - 132) = (v11 ^ 0xAF1CBEAE) + ((2 * v11) & 0x5E397D5C) + 1895823356 + v22;
  *(v16 - 128) = v15 + 4713 + v22;
  STACK[0x2E8] = v21;
  (*(v14 + 8 * (v15 ^ 0x2E6E)))(v16 - 136);
  v23 = *a10;
  v24 = 956911519 * ((v16 - 136) ^ 0x453675DCEA917005);
  *(v16 - 136) = (v15 - 1989) ^ v24;
  STACK[0x2E8] = v23;
  STACK[0x2E0] = v10 - ((2 * v10) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  (*(v14 + 8 * (v15 + 6588)))(v16 - 136);
  v25 = 1875091903 * ((v16 - 1864042229 - 2 * ((v16 - 136) & 0x90E4F993)) ^ 0xA6917A10);
  STACK[0x2E8] = *a10;
  *(v16 - 132) = v25 + 538752682;
  *(v16 - 128) = v15 + 4713 + v25;
  v26 = (*(v14 + 8 * (v15 + 6634)))(v16 - 136);
  return (*(v14 + 8 * ((1382 * (*(v16 - 136) == 16257999)) ^ v15)))(v26);
}

uint64_t sub_1E3363E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v25 = 1875091903 * ((((&a15 ^ 0x4400604) & 0x4452174C) + (&a15 ^ 0x503A397A) - ((&a15 ^ 0x503A397A) & 0x4452174C)) ^ 0x221DADB5);
  a18 = a11;
  a16 = (v22 ^ 0x63FDBEBF) + ((2 * v22) & 0xC7FB7D7E) - 1138821141 + v25;
  a17 = v25 + 7724;
  (*(v23 + 77160))(&a15);
  v26 = 1824088897 * (&a15 ^ 0x5869D362);
  a18 = v20;
  a19 = a11;
  a15 = v26 + 3757;
  a17 = ((2 * v21) & 0xBD7BFD7C) - v26 + (v21 ^ 0xDEBDFEBE) + 1877404620;
  (*(v23 + 77048))(&a15);
  v27 = 1824088897 * ((((2 * (&a15 ^ 0x6973CDC7)) | 0xF0883970) - (&a15 ^ 0x6973CDC7) + 129753928) ^ 0xC95E021D);
  a17 = (v19 ^ 0xFEAEEAFA) + ((2 * v19) & 0xFD5DD5F4) - v27 + 1341521808;
  a15 = v27 + 3757;
  a18 = v24;
  a19 = a11;
  v28 = (*(v23 + 77048))(&a15);
  return (*(v23 + 8 * ((2319 * (a16 == 16257999)) ^ 0x1598u)))(v28);
}

uint64_t sub_1E3364004@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v3 = a1;
  *v2 = a2;
  v10 = v7;
  v11 = ((v4 ^ 0x1A76) + 7043) ^ (1824088897 * (&v9 ^ 0x5869D362));
  (*(v5 + 8 * (v4 ^ 0x3AED)))(&v9);
  v10 = v8;
  v11 = ((v4 ^ 0x1A76) + 7043) ^ (1824088897 * ((2 * (&v9 & 0x45726780) - &v9 - 1165125505) ^ 0xE2E44B1D));
  (*(v5 + 8 * (((v4 ^ 0x1A76) + 4281) ^ 0x305C)))(&v9);
  return 0;
}

uint64_t sub_1E3364010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  *(v12 - 116) = v10 - 1875091903 * ((2 * (((v12 - 120) ^ 0x6C6A9205) & 0x6600E049) - ((v12 - 120) ^ 0x6C6A9205) - 1711333452) ^ 0xC3E00E32) + 960663195;
  (*(v11 + 8 * (v10 + 5080)))(v12 - 120);
  v13 = 1875091903 * ((v12 - 120) ^ 0x36758383);
  *(v12 - 120) = (v10 - 119671298) ^ v13;
  *(v12 - 116) = v13 ^ 0x5D845C70;
  v14 = (*(v11 + 8 * (v10 ^ 0x342B)))(v12 - 120);
  return (*(v11 + 8 * ((((a10 >> 7) ^ 1) * (((v10 - 3558) | 0x101) - 283)) ^ v10)))(v14);
}

uint64_t sub_1E3364120(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  (*(v27 + 8 * (a2 ^ 0xB686BAFF)))(a16 + 0x41800086C4868211, 0x100004077774924);
  v28 = (*(v27 + 8 * (v25 - 1232691438)))();
  *v26 = v28;
  v29 = 1812433253 * ((v28 + 766048468 - ((v28 << a13) & 0x5B51F1A8)) ^ ((v28 >> 30) | 0x2DA8F8D4)) + 1;
  v26[1] = v29;
  return (*(v27 + 8 * (a15 ^ 0x77)))(v29, 766048468, 1532096936, 119, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1E336424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x350] = STACK[0x6F0];
  v72 = *(a72 + 8 * ((119 * ((a71 ^ (((a71 - 671479286) & 0x2805FF77 ^ 0xFFFFFFFFFFFFDEAALL) + 16 < 0xFFFFFFFFFFFFFFF0)) & 1)) ^ (a71 + 1780)));
  STACK[0x940] = *(a72 + 8 * (a71 - 6072));
  return v72();
}

uint64_t sub_1E3364358()
{
  v1 = *(STACK[0x9B0] + 24);
  STACK[0x710] = v1;
  return (*(STACK[0x400] + 8 * (((v1 != 0) * (v0 ^ 0xA04 ^ v0 ^ 0x2A55 ^ 0x2052)) ^ v0)))();
}

uint64_t sub_1E3364450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, __int16 a12, char a13, __int16 a14, char a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a22 = (v23 + 1595) ^ (1710126949 * ((&a18 + 835810171 - 2 * (&a18 & 0x31D1737B)) ^ 0x3CA28EB));
  a23 = &a15;
  a20 = a16;
  a21 = &a11;
  (*(v25 + 8 * (v23 + 7844)))(&a18);
  a19 = (v23 + 1489) ^ (33731311 * ((&a18 - 1269957526 - 2 * (&a18 & 0xB44DFC6A)) ^ 0x8DBB3649));
  a20 = a16;
  a21 = &a13;
  (*(v25 + 8 * (v23 + 7838)))(&a18);
  LODWORD(a21) = v23 - 2008441969 * (((&a18 | 0xD218441F) - (&a18 & 0xD218441F)) ^ 0x9A811011) + 3922;
  a20 = a16;
  v26 = (*(v25 + 8 * (v23 ^ 0x2350)))(&a18);
  return (*(v25 + 8 * (((a18 == v24) * (v23 + 5146)) ^ v23)))(v26);
}

uint64_t sub_1E33645AC@<X0>(unint64_t a1@<X8>)
{
  v7 = LOWORD(STACK[0x95E]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 != 33980)
  {
    if (v7 != 20706)
    {
LABEL_6:
      LODWORD(STACK[0x41C]) = v5;
      STACK[0x750] = STACK[0x830];
      STACK[0x8B8] = *(v4 + 8 * (v6 - 5517));
      JUMPOUT(0x1E32EC6C0);
    }

LABEL_4:
    STACK[0x658] = a1;
    v5 = 16215638;
    goto LABEL_6;
  }

  v8 = STACK[0x828];
  STACK[0x658] = a1;
  STACK[0x738] = v8 + v2;
  return (*(v4 + 8 * (((((v6 + 960182320) & 0xC6C4BFDF) - 3680) * (v1 == v3 - 16)) ^ (v6 - 3481))))();
}

uint64_t sub_1E3364874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = (v38 + 688450782) & 0xD6F71FFE;
  (*(v39 + 8 * (v38 ^ 0x349D)))();
  return (*(v39 + 8 * ((966 * (((a38 == 0) ^ (v40 - 21)) & 1)) ^ v40)))();
}

uint64_t sub_1E3364928(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v6 = LODWORD(STACK[0x330]);
  if (v6 != 17168)
  {
    if (v6 == 20706 || (v8 = STACK[0x3F8], v6 == 33980))
    {
      STACK[0x898] = a3;
      a4 = v5 - 338;
      v8 = STACK[0x3F8];
    }

    LODWORD(STACK[0x9A8]) = a4;
    STACK[0x610] = *(STACK[0x400] + 8 * (v8 - 8476));
    JUMPOUT(0x1E33DADC0);
  }

  return (*(STACK[0x400] + 8 * ((STACK[0x3F8] - 5153) ^ (4290 * (v4 == 197499223)))))();
}

uint64_t sub_1E3364A48@<X0>(int a1@<W8>)
{
  v2 = (((LODWORD(STACK[0x8F4]) ^ 0x79F65EA1D751D1D2) - 0x79F65EA1D751D1D2) ^ ((LODWORD(STACK[0x8F4]) ^ 0x9DB22BC91C795545) + 0x624DD436E386AABBLL) ^ (((a1 + 907) | 0xCu) + (LODWORD(STACK[0x8F4]) ^ 0xE4447568C0ED1DC4) + 0x1BBB8A973F12D62ELL)) + ((7 * (a1 ^ 0xCBEu)) ^ 0xBC5B82CLL);
  STACK[0xA18] = v2;
  return (*(v1 + 8 * ((15 * (v2 == 0)) ^ a1)))();
}

uint64_t sub_1E3364C28()
{
  v2 = (*(v1 + 8 * (v0 + 878)))(32, 0x100004077774924);
  STACK[0x3F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 4596) | 0xA32) - 1942) ^ 0x12D2)) ^ v0)))();
}

uint64_t sub_1E3364D00@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, int a3@<W4>, int a4@<W6>, uint64_t a5@<X8>)
{
  v12 = v6 + 177211 + (*(a5 + ((v5 ^ 6) * a2 - (((((v5 ^ 6) * a2) * a3) >> 16) >> 8) * v10)) ^ a4) * v8 + 3299;
  *(a1 + v5 * v8 + 178365 - ((((v5 * v8 + 178365) * v9) >> 32) >> 9) * v7) = *(a1 + v12 - (((v12 * v9) >> 32) >> 9) * v7);
  return (*(v11 + 8 * ((v5 == 15) | (2 * (v5 == 15)) | v6)))();
}

uint64_t sub_1E3364D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = ((v11 ^ 0x1E62) + 1427020206) & 0xAAF176FF;
  (*(a7 + 8 * ((v11 ^ 0x1E62) + 8131)))();
  v15 = *(v13 - 256);
  *(v9 + 24) = 0;
  v16 = (*(v15 + 8 * (v14 ^ v8)))(v9);
  return (*(*(v13 - 256) + 8 * (((((v14 - 1612) | v12) + v10) * (v7 == 0)) ^ v14)))(v16);
}

uint64_t sub_1E3364DC0(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  *(v5 - 1) = *(a2 - 1);
  *v5 = v7;
  return (*(v6 + 8 * (((v4 == 0) * v3) ^ v2)))(a1, a2 - 2);
}

uint64_t sub_1E3364E50@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x718] + 24);
  STACK[0x498] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((a1 + 1768456730) & 0x969777C7) - 5078)) ^ a1)))();
}

uint64_t sub_1E3364ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v6;
  if (v4)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(a4 + 8 * ((v8 * ((((v5 ^ 0x5F5) + 1482) | 0x81) ^ (((v5 ^ 0x5F5) - 1017) | 0x1420) ^ 0x1E9C)) ^ v5 ^ 0x5F5)))();
}

uint64_t sub_1E3364F54()
{
  v2 = STACK[0x8A8];
  v3 = STACK[0x740];
  v4 = &STACK[0xB60] + STACK[0x740];
  STACK[0x6B8] = v4;
  v5 = v4 + 16;
  STACK[0x930] = (v4 + 16);
  STACK[0x4E8] = (v4 + 48);
  STACK[0x740] = v3 + 80;
  (*(v1 + 8 * (v0 + 7533)))();
  v6 = (*(v1 + 8 * (v0 + 7533)))(v5, 0, 32);
  STACK[0x508] = 0;
  STACK[0x6E0] = 0;
  LODWORD(STACK[0x574]) = 197499219;
  STACK[0x628] = 0;
  LODWORD(STACK[0x8B4]) = 197499219;
  STACK[0x800] = v2;
  return (*(v1 + 8 * (((((v0 + 2552) | 0x5C0) ^ 0x1752) * (v2 == 0)) ^ v0)))(v6);
}

uint64_t sub_1E3365074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (v26)
  {
    v27 = a4 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  return (*(a2 + 8 * ((((((v25 - 9008) | 0x400) + 4882) ^ ((v25 - 5026) | 0x788)) * v28) | v25)))(a1, a2, a3, a4, a5, (v25 - 9008) | 0x400u, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1E33650C8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x22B8)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x400];
  STACK[0x4F0] = v2;
  return (*(v3 + 8 * (((v2 != 0) * ((v0 + 7430) ^ (v0 + 6735) ^ 0x5D6)) ^ v0)))();
}

uint64_t sub_1E336513C(uint64_t a1)
{
  v4 = v1 - 4387;
  *v7 = a1;
  v5 = (v1 - 4387) ^ 0xF99;
  v11 = v9;
  v12 = (v4 + 7268) ^ (1824088897 * ((98929308 - (&v10 ^ 0x6E5CF84A | 0x5E58A9C) + (&v10 ^ 0x6E5CF84A | 0xFA1A7563)) ^ 0xCC2F5E4B));
  (*(v2 + 8 * (v4 + 8534)))(&v10);
  v12 = (v5 + 5355) ^ (1824088897 * (((&v10 | 0x838C4D41) - &v10 + (&v10 & 0x7C73B2B8)) ^ 0xDBE59E23));
  v11 = v8;
  (*(v2 + 8 * (v5 + 6621)))(&v10);
  return (v3 - 16257999);
}

uint64_t sub_1E3365370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a11;
  a17 = 1317436891 * ((&a15 & 0x2E08AAD0 | ~(&a15 | 0x2E08AAD0)) ^ 0x61F4CD59) + 8154;
  v19 = (*(v18 + 77096))(&a15);
  return (*(v18 + 8 * ((9598 * (a16 == (v17 ^ 0x41390FD4) - 1077999373)) ^ v17)))(v19);
}

uint64_t sub_1E3365420()
{
  LODWORD(STACK[0x614]) = v1;
  STACK[0x948] = STACK[0x458];
  STACK[0x8E0] = *(v2 + 8 * (v0 - 1207));
  STACK[0x538] = &STACK[0x948];
  v3 = STACK[0x948];
  STACK[0x818] = STACK[0x948];
  return (*(v2 + 8 * ((21 * (v3 != 0)) ^ (v0 - 1480985172) & 0x584627FB)))();
}

uint64_t sub_1E3365464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, void *a8)
{
  v11 = (v8 - 3985) | 0x48C;
  *a8 = a1;
  *a6 = v16;
  v12 = (v11 - 3514) | 0x621;
  v19 = (v11 + 4620) ^ ((((&v17 | 0x8BB676A0) - (&v17 & 0x8BB676A0)) ^ 0xD3DFA5C2) * v9);
  v18 = v14;
  (*(v10 + 8 * (v11 + 5886)))(&v17);
  v19 = (v12 + 6565) ^ ((((&v17 | 0xF1CFA8B2) - &v17 + (&v17 & 0xE305748)) ^ 0xA9A67BD0) * v9);
  v18 = v15;
  (*(v10 + 8 * (v12 + 7831)))(&v17);
  return 0;
}

uint64_t sub_1E336559C(int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v47 = ((2 * a4) & 0x16CCFEFAELL) + (a4 ^ 0x61EB9B7EB667F7D7);
  v48 = a38 - 0x61EB9B7EB667F7D7 + v47;
  *v48 = 0;
  *(v48 + 2) = 0;
  *(a46 + v47 + ((a1 - 5189) ^ 0x9E14648149980358)) = 0;
  *(a46 + ((2 * (a4 + 4)) & 0x1F7BCFF7ELL) + ((a4 + 4) ^ 0x777D9FF7FBDE7FBFLL) - 0x777D9FF7FBDE7FBFLL) = -9392;
  v49 = ((a20 ^ 0xF8CFD6E0) + 291880894) ^ a20 ^ ((a20 ^ 0xB82EA848) + 1367654678) ^ ((a20 ^ 0x884B1776) + 1642167852) ^ ((a20 ^ 0xDEFFFF7C) + 928355874);
  v50 = (a38 + ((2 * (a4 + 6)) & 0x1EBFF7F54) + ((a4 + 6) ^ 0xFC71EDFAF5FFBFAALL) + 0x38E12050A004056);
  *v50 = HIBYTE(v49) ^ 0x16;
  v50[1] = BYTE2(v49) ^ 0x55;
  v50[2] = ((((a20 ^ 0xD6E0) - 16450) ^ a20 ^ ((a20 ^ 0xA848) - 16106) ^ ((a20 ^ 0x1776) + 32300) ^ ((a20 ^ 0xFF7C) - 27102)) >> 8) ^ 0x96;
  v50[3] = ((a20 ^ 0xE0) - 66) ^ a20 ^ ((a20 ^ 0x48) + 22) ^ ((a20 ^ 0x76) + 44) ^ ((a20 ^ 0x7C) + 34) ^ 0xA2;
  return (*(v46 + 8 * (a1 ^ (100 * ((840616331 - a21) - 840616315 > 7)))))();
}

uint64_t sub_1E33657A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, _DWORD *a10)
{
  *a9 = a1;
  *a10 = v10;
  return sub_1E33013E8();
}

uint64_t sub_1E33657CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x992]) = v72;
  LODWORD(STACK[0x340]) = v72;
  return (*(a72 + 8 * (v73 - 5294)))();
}

uint64_t sub_1E33657EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v21 = 1875091903 * ((-2027394461 - (&a12 ^ 0xD334B17A | 0x87286A63) + (&a12 ^ 0xD334B17A | 0x78D7959C)) ^ 0x9D96A765);
  a15 = a9;
  a13 = (v18 ^ 0xB6FEB6EA) + ((2 * v18) & 0x6DFD6DD4) + 1763573696 + v21;
  a14 = v21 + 7724;
  (*(v19 + 77160))(&a12);
  v22 = 1824088897 * (((&a12 | 0x5C8F8C8B) + (~&a12 | 0xA3707374)) ^ 0x4E65FE8);
  a15 = v16;
  a16 = a9;
  a12 = v22 + 3757;
  a14 = (v17 ^ 0x4FE4EB8E) + ((2 * v17) & 0x9FC9D71C) - v22 - 20971780;
  v23 = (*(v19 + 77048))(&a12);
  return (*(v19 + 8 * ((12639 * (a13 == v20)) ^ 0x1088u)))(v23);
}

uint64_t sub_1E336597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x976]);
  STACK[0x548] = STACK[0x978];
  return (*(v71 + 8 * (((v72 == 17168) * ((a71 ^ 0x1F02) + 5606)) ^ (a71 - 5092))))();
}

uint64_t sub_1E3365FA8()
{
  v10 = (v2 + v3) ^ ((&v8 ^ 0x5869D362) * v1);
  v9 = v6;
  (*(v4 + 8 * (v2 - 1127924114)))(&v8);
  v10 = (v2 + v3) ^ ((((&v8 | 0xED7F1A75) - &v8 + (&v8 & 0x1280E588)) ^ 0xB516C917) * v1);
  v9 = v7;
  (*(v4 + 8 * (v2 ^ 0x433AC292)))(&v8);
  return (v0 - 16257999);
}

uint64_t sub_1E3366098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = v18 || *a1 == 0;
  return (*(a2 + 8 * ((v20 * ((v17 - 1083802150) & 0x409972FD ^ 0x12DF)) ^ v17)))(a1, a2, a3, a4, a5, a6, a7, a8, a1);
}

uint64_t sub_1E3366134(uint64_t a1)
{
  v5 = 4 * (((v1 - 565) | 0x1084) ^ 0x1A52);
  *v3 = a1;
  *v2 = v7;
  v11 = v8;
  v12 = (v5 + 4418) ^ (1824088897 * ((-1820576897 - (&v10 | 0x937C337F) + (&v10 | 0x6C83CC80)) ^ 0x34EA1FE2));
  (*(v4 + 8 * (v5 + 5684)))(&v10);
  v11 = v9;
  v12 = (v5 + 4418) ^ (1824088897 * ((&v10 + 1675866904 - 2 * (&v10 & 0x63E3B318)) ^ 0x3B8A607A));
  (*(v4 + 8 * ((v5 - 915) ^ 0x2E49)))(&v10);
  return 0;
}

uint64_t sub_1E33661D4@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 5529 + (v4 ^ (v1 + 2560));
  *(v6 + v7) = *(a1 + v7);
  return (*(v5 + 8 * ((8139 * (v7 == 0)) ^ (v2 + v4 + 4050))))();
}

void sub_1E336628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x5E0] = 0;
  STACK[0x500] = *(a72 + 8 * (v72 - 6077));
  JUMPOUT(0x1E33B61C8);
}

uint64_t sub_1E33673D8(uint64_t a1)
{
  v5 = v4 | 0x1046;
  v6 = *(v3 + 352);
  v7 = (*(a1 + 8) ^ v1) - 1432801748;
  v8 = ((v5 + 2106769932) & 0x826D3F7F ^ 0xC97B14E) + v6 > v7;
  if (v6 > 0xF36858B3 != v7 < 0xC97A74C)
  {
    v8 = v6 > 0xF36858B3;
  }

  return (*(v2 + 8 * ((11 * !v8) ^ v5)))();
}

uint64_t sub_1E3367470(unint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x2B0] = a1;
  *(a1 + 16) = (((v2 ^ 0xDFD34EE0) + 539799840) ^ ((v2 ^ 0x7672D74B) - 1987237707) ^ ((v2 ^ 0xA26400F8) + 1570504456)) + 197499229;
  v4 = (*(v3 + 8 * (v1 ^ 0x3330)))();
  *(STACK[0x2B0] + 24) = v4;
  return (*(v3 + 8 * ((90 * (v4 != 0)) ^ v1)))();
}

uint64_t sub_1E336754C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v19 = v11 - 1;
  v20 = __ROR8__((v8 + v19) & (((v10 + a8) & v14) + v15), 8) - 0x6AF7234D0CC131D5;
  v21 = __ROR8__(v20 ^ 0x49E9423B6F16E7D2, 8);
  v20 ^= 0xE1AFA7ACF6E0968ELL;
  v22 = (0x34CC4CF581555827 - ((v21 + v20) | 0x34CC4CF581555827) + ((v21 + v20) | a1)) ^ a3;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xF5A2F1B9B5D0B209;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v13 - ((v26 + v25) | v13) + ((v26 + v25) | a4)) ^ a5;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v12;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x64C31C027084DE6CLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1A2AEBE44253AF03;
  *(v9 + v19) = *(v8 + v19) ^ (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ v17) >> (8 * ((v8 + v19) & 7))) ^ 0x3C;
  return (*(v16 + 8 * (((v19 == 0) * v18) ^ v10)))();
}

uint64_t sub_1E33676A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = 476323082 - 1710126949 * (((&a14 | 0x841CA92F) - &a14 + (&a14 & 0x7BE356D0)) ^ 0xB607F2BF);
  v16 = (*(v15 + 77088))(&a14);
  return (*(v15 + 8 * ((88 * (a15 != 16257999)) ^ 0x17A8u)))(v16);
}

void sub_1E3367754()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12) + 1358806181 * ((-2 - ((~v0 | 0x376CDA2D) + (v0 | 0xC89325D2))) ^ 0x843B6AE);
  v2 = *v0;
  v4[0] = ~(-96 - 32 * (~v4 + 2 * v4)) & 0x40;
  v4[12] = 0;
  v5 = 197499219;
  v4[22] = 0;
  v3 = *(&off_1F5DB1610 + v1 - 5804) - 8;
  (*&v3[8 * v1 + 28136])(v6, 0, 4097);
  v4[20] = 0;
  v4[26] = 0;
  v4[76] = 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E33678E4()
{
  result = (*(v2 + 8 * (v0 + 6945)))(v1);
  *v3 = v4;
  return result;
}

void sub_1E3367958()
{
  if (v0 == 917034830)
  {
    v2 = 16257999;
  }

  else
  {
    v2 = 16215975;
  }

  *v1 = v2;
}

uint64_t sub_1E33679B8()
{
  v5 = (v3 + 1745900893) | 0x808F0C9A;
  *(v0 + 704) = v2;
  *(v4 - 136) = v5 - 956911519 * (((v4 - 136) & 0x1BC1EED0 | ~((v4 - 136) | 0x1BC1EED0)) ^ 0xEAF612A) - 109161566;
  (*(v1 + 8 * (v5 + 392214541)))(v4 - 136);
  return ((2 * v7) & 0xF5F6679E) + 100458496 + ((v5 + 308004373) ^ v7) - 16257999;
}

uint64_t sub_1E3367AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x270] = (v7 ^ 0xEABBB53DCE51D4CLL) + (((v9 ^ 0x4A9CC7152C3A0799) - 0x4A9CC7152C3A0799) ^ ((v9 ^ 0xBDF2498B391EBF33) + 0x420DB674C6E140CDLL) ^ ((v9 ^ 0xF76E8E9E1EE121F9) + 0x8917161E11EDE07));
  LODWORD(STACK[0x290]) = v10 >> (((v8 - 21) ^ 0x36) - 67);
  LODWORD(STACK[0x280]) = 197499223;
  v12 = *(v11 - 256);
  v13 = *(a7 + 24);
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((0x6AF7234D0CC131D4 - v14) & 0x435B154A729201BFLL) + v14 - 0x6AF7234D0CC131D5 - ((v14 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v16 = __ROR8__(v15 ^ 0xAB257711D84E66DLL, 8);
  v15 ^= 0xA2F4B2E684729731;
  v17 = (((v16 + v15) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v16 + v15) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF5A2F1B9B5D0B209;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5963B6C555D97F1FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x61459D2AF01F24F7;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x64C31C027084DE6CLL;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = __ROR8__((v13 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (0x6AF7234D0CC131D4 - v28) & 0xC2A16714FA488FC8 | (v28 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v30 = __ROR8__(v29 ^ 0x8B48252F955E681ALL, 8);
  v29 ^= 0x230EC0B80CA81946uLL;
  v31 = (((2 * (v30 + v29)) & 0xAC7FF88AB7D467A0) - (v30 + v29) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = *(STACK[0x2A8] + 8 * (v8 - 5653));
  v35 = (v33 + v32 - ((2 * (v33 + v32)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v36 = v35 ^ __ROR8__(v32, 61);
  *v13 = (((__ROR8__((((2 * (v26 + v27)) | 0x36A4398A31861B6ALL) - (v26 + v27) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((((2 * (v26 + v27)) | 0x36A4398A31861B6ALL) - (v26 + v27) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v27, 61))) ^ 0xAB3042D228875C41) >> (8 * (v13 & 7u))) ^ HIBYTE(v12) ^ 0xB;
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x5963B6C555D97F1FLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x61459D2AF01F24F7;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0x63B77BB044F1F226) - (v41 + v40) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x1A2AEBE44253AF03;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  *(v13 + 1) = (((v46 + v45 - ((2 * (v46 + v45)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v13 + 1) & 7))) ^ BYTE2(v12) ^ 0xC5;
  v47 = __ROR8__((v13 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = ((2 * v47 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v47 + 0x6BC5C09CD998FDFLL;
  v49 = v48 ^ 0xD22C7A87AFCEB9D8;
  v48 ^= 0x7A6A9F103638C884uLL;
  v50 = (__ROR8__(v49, 8) + v48) ^ 0xE49D77DF873DBF7ELL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xF5A2F1B9B5D0B209;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x5963B6C555D97F1FLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((((2 * (v56 + v55)) | 0x316A40512FDE1242) - (v56 + v55) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6, 8);
  v58 = (((2 * (v56 + v55)) | 0x316A40512FDE1242) - (v56 + v55) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6 ^ __ROR8__(v55, 61);
  v59 = (v57 + v58) ^ 0x64C31C027084DE6CLL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x1A2AEBE44253AF03;
  *(v13 + 2) = (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v13 + 2) & 7))) ^ BYTE1(v12) ^ 0x99;
  v62 = __ROR8__((v13 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = (0xAF7234D0CC131D4 - v62) & 0x126AA61F6F56C0D8 | (v62 - 0x6AF7234D0CC131D5) & 0xE99559E090A93F27;
  v64 = __ROR8__(v63 ^ 0x5F83E4240040270ALL, 8);
  v63 ^= 0xF7C501B399B65656;
  v65 = (v64 + v63) ^ 0xE49D77DF873DBF7ELL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xF5A2F1B9B5D0B209;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = __ROR8__((((2 * (v69 + v68)) | 0x2A5638492DD55EAELL) - (v69 + v68) - 0x152B1C2496EAAF57) ^ 0x4C48AAE1C333D048, 8);
  v71 = (((2 * (v69 + v68)) | 0x2A5638492DD55EAELL) - (v69 + v68) - 0x152B1C2496EAAF57) ^ 0x4C48AAE1C333D048 ^ __ROR8__(v68, 61);
  v72 = (v70 + v71) ^ 0x61459D2AF01F24F7;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x64C31C027084DE6CLL;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x1A2AEBE44253AF03;
  *(v13 + 3) = v12 ^ 0x53 ^ (((__ROR8__(v76, 8) + (v76 ^ __ROR8__(v75, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v13 + 3) & 7)));
  return v34();
}

uint64_t sub_1E3367E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v25 = ((((&a15 | 0x873825B0) ^ 0xFFFFFFFE) - (~&a15 | 0x78C7DA4F)) ^ 0x20AE092D) * v22;
  a15 = v25 + 3757;
  a17 = ((2 * v20) & 0x9FD9F57E) - v25 + (v20 ^ 0x4FECFABF) - 21499957;
  a18 = v19;
  a19 = a12;
  v26 = (*(v23 + 77048))(&a15);
  return (*(v23 + 8 * ((574 * (a16 == v24)) ^ v21)))(v26);
}

uint64_t sub_1E3367F84()
{
  v9 = (v3 + 4158) ^ (((((2 * &v7) | 0xA7613A94) - &v7 - 1404083530) ^ 0xBD94E28) * v1);
  v8 = v6;
  (*(v0 + 8 * (v3 + 5424)))(&v7);
  v9 = ((v3 ^ 0x1E52) + 4748) ^ (((&v7 + 834432774 - 2 * (&v7 & 0x31BC6F06)) ^ 0x69D5BC64) * v1);
  v8 = v5;
  (*(v0 + 8 * ((v3 ^ 0x1E52) + 6014)))(&v7);
  return (v2 - 16257999);
}

uint64_t sub_1E336808C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v9 = v3 - 16;
  v10 = STACK[0x260] + v9;
  v11 = v10 + (v5 ^ a2);
  v12 = *(v10 - 16);
  v10 -= 16;
  *&v13 = v10 + 1;
  *(&v13 + 1) = v10;
  *&STACK[0x2A0] = v13;
  *&STACK[0x2B0] = v12;
  *&v13 = v10 + 3;
  *(&v13 + 1) = v10 + 2;
  *&STACK[0x290] = v13;
  v14.i64[0] = v10 + 9;
  v14.i64[1] = v10 + 8;
  v15.i64[0] = v10 + 11;
  v15.i64[1] = v10 + 10;
  v16.i64[0] = v10 + 15;
  v16.i64[1] = v10 + 14;
  v17.i64[0] = v11;
  v17.i64[1] = v10 + 12;
  v18 = *&STACK[0x3D0];
  v19 = vandq_s8(v17, *&STACK[0x3E0]);
  v20 = vandq_s8(v16, *&STACK[0x3E0]);
  v21 = vandq_s8(v15, *&STACK[0x3E0]);
  v22 = vandq_s8(v14, *&STACK[0x3E0]);
  v23 = vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL);
  v24 = vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL);
  v25 = vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL);
  v26 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v27 = vaddq_s64(v25, *&STACK[0x3D0]);
  v28 = vaddq_s64(v24, *&STACK[0x3D0]);
  v30 = *&STACK[0x3B0];
  v29 = *&STACK[0x3C0];
  v31 = *&STACK[0x3A0];
  *&STACK[0x280] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v26), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v26, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v32 = vaddq_s64(vorrq_s8(vsubq_s64(v30, v25), v31), vorrq_s8(v27, v29));
  v33 = *&STACK[0x370];
  v34 = vsubq_s64(*&STACK[0x370], vaddq_s64(vorrq_s8(vsubq_s64(v30, v23), v31), vorrq_s8(vaddq_s64(v23, v18), v29)));
  v35 = vsubq_s64(*&STACK[0x370], vaddq_s64(vorrq_s8(vsubq_s64(v30, v24), v31), vorrq_s8(v28, v29)));
  v36 = veorq_s8(v35, *&STACK[0x360]);
  v37 = veorq_s8(v34, *&STACK[0x360]);
  v38 = *&STACK[0x360];
  v39 = *&STACK[0x340];
  v40 = veorq_s8(v34, *&STACK[0x350]);
  v41 = veorq_s8(v35, *&STACK[0x350]);
  v42 = *&STACK[0x350];
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v40), *&STACK[0x340]);
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v41), *&STACK[0x340]);
  v45 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v46 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v47 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46);
  v49 = vaddq_s64(v47, v45);
  v50 = *&STACK[0x320];
  v51 = *&STACK[0x330];
  v53 = *&STACK[0x300];
  v52 = *&STACK[0x310];
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v49, v49), *&STACK[0x330]), v49), *&STACK[0x320]), *&STACK[0x310]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v48, v48), *&STACK[0x330]), v48), *&STACK[0x320]), *&STACK[0x310]);
  v56 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v57 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v60 = veorq_s8(vaddq_s64(v58, v56), *&STACK[0x300]);
  v61 = veorq_s8(v59, *&STACK[0x300]);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = *&STACK[0x2F0];
  v68 = veorq_s8(vaddq_s64(v65, v63), *&STACK[0x2F0]);
  v69 = veorq_s8(v66, *&STACK[0x2F0]);
  v70 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v77 = *&STACK[0x380];
  v76 = *&STACK[0x390];
  v78 = veorq_s8(v75, *&STACK[0x390]);
  v79 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v75, v7), *&STACK[0x380]), v78), vandq_s8(v78, v7));
  v80 = veorq_s8(v74, *&STACK[0x390]);
  v81 = *&STACK[0x2D0];
  v82 = *&STACK[0x2E0];
  v83 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v74, v7), *&STACK[0x380]), v80), vandq_s8(v80, v7)), *&STACK[0x2E0]);
  v84 = veorq_s8(v79, *&STACK[0x2E0]);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v86 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), *&STACK[0x2D0]);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86), *&STACK[0x2D0]);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v18.i64[0] = v10 + 5;
  v18.i64[1] = v10 + 4;
  *&STACK[0x270] = v18;
  v94 = vsubq_s64(v33, v32);
  v95 = *&STACK[0x240];
  v244.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v93, v91), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), *&STACK[0x240])));
  v244.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v92, v90), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), *&STACK[0x240])));
  v96 = veorq_s8(v94, v38);
  v97 = veorq_s8(v94, v42);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v39);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), v51), v100), v50), v52);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v53);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = v67;
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v67);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = v76;
  v110 = veorq_s8(v108, v76);
  v111 = v77;
  v112 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v108, v7), v77), v110), vandq_s8(v110, v7)), v82);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v81);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v114.i64[0] = v10 + 7;
  v114.i64[1] = v10 + 6;
  v117 = vaddq_s64(v116, v115);
  v118 = vandq_s8(v114, *&STACK[0x3E0]);
  v119 = vsubq_s64(v33, *&STACK[0x280]);
  v244.val[0] = vshlq_u64(veorq_s8(v117, v8), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), *&STACK[0x240])));
  v120 = veorq_s8(v119, v38);
  v121 = v38;
  v122 = veorq_s8(v119, v42);
  v123 = v42;
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v122), v39);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = v50;
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v51), v126), v50), v52);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v53);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v105);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(v134, v109);
  v136 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v134, v7), v111), v135), vandq_s8(v135, v7)), v82);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v81);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v141 = vandq_s8(v18, *&STACK[0x3E0]);
  v142 = vaddq_s64(v140, v139);
  v144 = *&STACK[0x290];
  v143 = *&STACK[0x2A0];
  v145 = vandq_s8(*&STACK[0x290], *&STACK[0x3E0]);
  v244.val[1] = vshlq_u64(veorq_s8(v142, v8), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), *&STACK[0x240])));
  v146 = vandq_s8(*&STACK[0x2A0], *&STACK[0x3E0]);
  v147 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v151 = *&STACK[0x3C0];
  v152 = *&STACK[0x3D0];
  v154 = *&STACK[0x3A0];
  v153 = *&STACK[0x3B0];
  *&STACK[0x280] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v150), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v150, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v155 = vaddq_s64(vorrq_s8(vsubq_s64(v153, v149), v154), vorrq_s8(vaddq_s64(v149, v152), v151));
  v156 = vaddq_s64(vorrq_s8(vsubq_s64(v153, v148), v154), vorrq_s8(vaddq_s64(v148, v152), v151));
  v157 = vsubq_s64(v33, vaddq_s64(vorrq_s8(vsubq_s64(v153, v147), v154), vorrq_s8(vaddq_s64(v147, v152), v151)));
  v158 = vsubq_s64(v33, v156);
  v159 = v33;
  v148.i64[0] = vqtbl4q_s8(v244, *&STACK[0x230]).u64[0];
  v160 = veorq_s8(v158, v121);
  v161 = veorq_s8(v157, v121);
  v244.val[1] = v121;
  v162 = veorq_s8(v157, v123);
  v163 = veorq_s8(v158, v123);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v39);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v163), v39);
  v166 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v167 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v168 = veorq_s8(v164, v166);
  v169 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v168);
  v171 = vaddq_s64(v169, v167);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), v51), v171), v127), v52);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v51), v170), v127), v52);
  v174 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v175 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v176 = veorq_s8(v172, v174);
  v177 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176);
  v179 = veorq_s8(vaddq_s64(v177, v175), v53);
  v180 = veorq_s8(v178, v53);
  v181 = v53;
  v182 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v183 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v184 = veorq_s8(v179, v182);
  v185 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v184);
  v187 = veorq_s8(vaddq_s64(v185, v183), v105);
  v188 = veorq_s8(v186, v105);
  v189 = v105;
  v190 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v191 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v192 = veorq_s8(v187, v190);
  v193 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v192);
  v195 = vaddq_s64(v193, v191);
  v196 = veorq_s8(v195, *&STACK[0x390]);
  v197 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v195, v7), *&STACK[0x380]), v196), vandq_s8(v196, v7));
  v198 = veorq_s8(v194, *&STACK[0x390]);
  v199 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v194, v7), *&STACK[0x380]), v198), vandq_s8(v198, v7)), v82);
  v200 = veorq_s8(v197, v82);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v202 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v81);
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v202), v81);
  v205 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v206 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v207 = vsubq_s64(v33, v155);
  v243.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), veorq_s8(v203, v205)), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v143, 3uLL), v95)));
  v243.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v206), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v144, 3uLL), v95)));
  v208 = veorq_s8(v207, v121);
  v209 = veorq_s8(v207, v123);
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), v39);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211);
  v213 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v212, v212), v51), v212), v127), v52);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v181);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), v105);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(v219, *&STACK[0x390]);
  v221 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v219, v7), *&STACK[0x380]), v220), vandq_s8(v220, v7)), v82);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), v81);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL)));
  v225 = vsubq_s64(v159, *&STACK[0x280]);
  v243.val[1] = vshlq_u64(veorq_s8(v224, v8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v95)));
  v226 = veorq_s8(v225, v244.val[1]);
  v227 = veorq_s8(v225, v123);
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), v39);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v230, v230), v51), v230), v127), v52);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), v181);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234), v189);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236);
  v238 = veorq_s8(v237, *&STACK[0x390]);
  v239 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v237, v7), *&STACK[0x380]), v238), vandq_s8(v238, v7)), v82);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v81);
  v243.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL))), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v114, 3uLL), v95)));
  v148.i64[1] = vqtbl4q_s8(v243, *&STACK[0x230]).u64[0];
  v243.val[0] = vrev64q_s8(v148);
  *(STACK[0x250] + v9) = veorq_s8(vextq_s8(v243.val[0], v243.val[0], 8uLL), *&STACK[0x2B0]);
  return (*(v6 + 8 * (((a1 == v9) * v2) ^ v4)))();
}

void sub_1E3368104(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x8A0] = 0;
  STACK[0x540] = *(v4 + 8 * a4);
  JUMPOUT(0x1E34111D4);
}

uint64_t sub_1E3368154()
{
  *(v2 - 232) = (v1 - 876) ^ (956911519 * ((((v2 - 232) | 0xB3154031) - ((v2 - 232) & 0xB3154031)) ^ 0x59843034));
  v4 = (*(v3 + 8 * (v1 ^ 0x262A)))(v2 - 232);
  return (*(STACK[0x400] + 8 * ((2036 * (*(v2 - 228) == (v0 ^ 0xF81464) + v1 + 3457)) ^ v1)))(v4);
}

uint64_t sub_1E33681F0(uint64_t a1)
{
  v3 = STACK[0x3F8];
  v4 = STACK[0x3F8] - 8456;
  v5 = STACK[0x3F8] - 927;
  LODWORD(STACK[0x84C]) = v1;
  return (*(v2 + 8 * ((((v3 - 8458) ^ v4) * (a1 == 0)) | v5)))();
}

uint64_t sub_1E336823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a38)
  {
    v40 = *(v39 + 48) == 0;
  }

  else
  {
    v40 = 1;
  }

  v42 = v40 || *(v39 + 24) == 0;
  v43 = *(a3 + 8 * ((v42 * ((19 * (v38 ^ 0x1E6B)) ^ 0x852)) ^ v38));
  return v43(v43, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

void sub_1E3368294(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v15 = __ROR8__((a5 + a6 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = v15 - (((v15 << (v7 + a2 + a3)) + 0x2A11B965E67D9C56) & v8) + v9;
  v17 = v16 ^ v10;
  v18 = v16 ^ v11;
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE49D77DF873DBF7ELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xF5A2F1B9B5D0B209;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x5963B6C555D97F1FLL;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = ((v12 & (2 * (v24 + v25))) - (v24 + v25) + v13) ^ a1;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x64C31C027084DE6CLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x1A2AEBE44253AF03;
  *(a5 + a6 + 9) = (((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v29, 61))) ^ 0xAB3042D228875C41) >> (8 * ((a5 + a6 + 9) & 7))) ^ *(v6 + a5 - 1);
  __asm { BRAA            X3, X17 }
}

uint64_t sub_1E3368540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = ((v4 + 2085822429 + (*(v5 + 16) ^ (v4 - 490687668))) ^ ((*(v5 + 16) ^ 0x3FF2D40F) - 1587459840) ^ ((*(v5 + 16) ^ 0x22CD93CB) - 1134686404)) - 1312934502;
  v9 = v3 + 321558698 > v8;
  v10 = (v3 > 0xECD56755) ^ (v8 < 0x132A98AA);
  v11 = v9;
  if (v10)
  {
    v12 = v3 > 0xECD56755;
  }

  else
  {
    v12 = v11;
  }

  return (*(v7 + 8 * ((30 * !v12) ^ v4)))(a1, a2, a3, (v6 + 5));
}

uint64_t sub_1E3368604@<X0>(int a1@<W8>)
{
  v7 = v5 - 2499;
  v8 = 1875091903 * ((2 * ((v6 - 232) & 0x20F1A5E8) - (v6 - 232) + 1594776083) ^ 0x697BD990);
  *(v6 - 224) = v2;
  *(v6 - 216) = (v5 + 4277) ^ v8;
  *(v6 - 232) = ((v4 ^ 0x485BE67F) - 1269824 + (((v5 - 2499) ^ 0x90B7C991) & a1)) ^ v8;
  *(v6 - 208) = v3;
  v9 = *(v1 + 8 * (v5 ^ 0x2939u));
  v10 = v1;
  v11 = v9(v6 - 232);
  return (*(v10 + 8 * (((*(v6 - 228) == ((v7 + 3294) ^ 0xF80182)) * (((v7 + 2741) | 0x619) - 1155)) ^ v7)))(v11);
}

uint64_t sub_1E33686B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v26 = 956911519 * ((2 * (v20 & 0x605A1316A99705C0) - v20 + 0x1FA5ECE95668FA39) ^ 0x5A939935BCF98A3CLL);
  a16 = (v25 - 2068) ^ v26;
  a18 = v23 + v26 - ((v23 << ((v25 + 16) ^ 0x23)) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34;
  a19 = a11;
  (*(v24 + 8 * (v25 ^ 0x296D)))(&a16);
  v27 = 1824088897 * ((((2 * v20) | 0x5126360) - v20 + 2104938064) ^ 0xDAE0E2D2);
  v28 = (*v22 ^ 0xEFFEFBBB) - v27 + ((2 * *v22) & 0xDFFDF776) + 1587932879;
  a19 = *(v22 + 8);
  a20 = a11;
  LODWORD(a18) = v28;
  a16 = v25 + 667 + v27;
  (*(v24 + 8 * (v25 + 6541)))(&a16);
  v29 = *(v22 + 24);
  v30 = *(v22 + 16);
  v31 = 1824088897 * ((((2 * v20) | 0x195822E6) - v20 + 1934880397) ^ 0xD4C5C211);
  a16 = v25 + 667 + v31;
  LODWORD(a18) = (v30 ^ (477 * (v25 ^ 0xC1E) + 1858069906)) - v31 + ((2 * v30) & 0xDD7FF7DC) - 538644836;
  a19 = v29;
  a20 = a11;
  (*(v24 + 8 * (v25 ^ 0x298D)))(&a16);
  v32 = 1824088897 * ((v20 + 942870353 - 2 * (v20 & 0x38330F51)) ^ 0x605ADC33);
  LODWORD(a18) = (v21 ^ 0xEFE5FEFF) + ((2 * v21) & 0xDFCBFDFE) - v32 + 1589570443;
  a16 = v25 + 667 + v32;
  a20 = a11;
  a19 = a10;
  v33 = (*(v24 + 8 * (v25 + 6541)))(&a16);
  return (*(v24 + 8 * (((16 * (a17 != 16257999)) | (32 * (a17 != 16257999))) ^ v25)))(v33);
}

uint64_t sub_1E33689A8()
{
  v2 = LODWORD(STACK[0x4C4]) + 1465593781;
  v3 = v2 < 0x55462E74;
  if (v2 >= 0x55462E74)
  {
    v3 = v2 > 0x55462E75;
  }

  return (*(v1 + 8 * ((2 * !v3) | (4 * !v3) | (v0 + 4944))))();
}

uint64_t sub_1E3368BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char a15, int a16, char a17, __int16 a18, char a19, uint64_t a20, char a21, int a22, int a23, unsigned int a24, char *a25, char *a26, char *a27, char *a28)
{
  a28 = &a21;
  a25 = a14;
  a26 = &a19;
  LODWORD(a27) = (v28 + 253) ^ (1710126949 * ((&a23 & 0x68C66AE7 | ~(&a23 | 0x68C66AE7)) ^ 0xA522CE88));
  (*(v29 + 8 * (v28 ^ 0x2966)))(&a23);
  a27 = a14;
  a25 = &a15;
  LODWORD(a26) = v28 + 956911519 * (((&a23 | 0xA0E19CA5) - (&a23 & 0xA0E19CA5)) ^ 0x4A70ECA0) + 6207;
  (*(v29 + 8 * (v28 ^ 0x299F)))(&a23);
  a24 = (v28 + 147) ^ (33731311 * ((&a23 + 1208957598 - 2 * (&a23 & 0x480F3A9E)) ^ 0x71F9F0BD));
  a25 = a14;
  a26 = &a17;
  (*(v29 + 8 * (v28 ^ 0x2960)))(&a23);
  a25 = a14;
  LODWORD(a26) = v28 - 2008441969 * (&a23 ^ 0x4899540E) + 2580;
  v30 = (*(v29 + 8 * (v28 ^ 0x2992)))(&a23);
  v31 = a23 == ((v28 + 1967422298) & 0x8ABB7FFE) + 16256109;
  return (*(v29 + 8 * ((v31 | (4 * v31)) ^ v28)))(v30);
}

uint64_t sub_1E3368D90@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a1 + v16;
  v21 = a1 + v16 + 9;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v22 - ((((a2 - 2704) ^ 0x2A11B965E67D931DLL) + 2 * v22) & v9) + v10;
  v24 = v23 ^ v19;
  v25 = v23 ^ v11;
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xE49D77DF873DBF7ELL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF5A2F1B9B5D0B209;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v15;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v12 & (2 * (v32 + v31))) - (v32 + v31) + v13) ^ v14;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = a1 - 1;
  v36 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v17;
  *(v20 + 9) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ v18) >> (8 * (v21 & 7u))) ^ *(a9 + v35);
  return (*(STACK[0x2A8] + 8 * ((1647 * (v35 == 0)) ^ a2)))();
}

uint64_t sub_1E3368F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((~&a14 & 0x5176166A) - (~&a14 | 0x5176166B)) ^ 0x91FC509) * v20;
  a15 = v22 + 1499959713;
  a16 = a11;
  a17 = &a12;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674573711;
  v23 = (*(v19 + 8 * (v21 + 4205)))(&a14);
  return (*(v19 + 8 * (((a14 == v21 + 16252596) * (((v21 - 3643) | 0x104) + 1012)) ^ v21)))(v23);
}

uint64_t sub_1E3369064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((3917 * (v6 == 0)) ^ (v2 + v3 + 1573))))();
}

uint64_t sub_1E3369094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = 476323082 - 1710126949 * ((&a14 & 0x3850C3AC | ~(&a14 | 0x3850C3AC)) ^ 0xF5B467C3);
  v16 = (*(v15 + 77088))(&a14);
  return (*(v15 + 8 * (2 * (a15 == 16257999) + 3797)))(v16);
}

uint64_t sub_1E3369128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, char *a17, int a18, int a19)
{
  v23 = ((&a14 - 1186737784 - 2 * (&a14 & 0xB943D188)) ^ 0xE12A02EA) * v21;
  a16 = a12;
  a17 = &a11;
  a15 = v23 - 1674205107;
  a18 = -654855621 - v23;
  a19 = v23 + 1674576303 + v22;
  v24 = (*(v19 + 8 * (v22 + 6797)))(&a14);
  return (*(v19 + 8 * ((502 * (a14 == (((v22 - 2226) | 0x804) ^ (v20 + 1459)))) ^ v22)))(v24);
}

uint64_t sub_1E336B2AC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((14248 * (v7 == (v5 ^ a2 ^ 0x1747))) ^ (v3 + v5 + 3126))))();
}

uint64_t sub_1E336B590()
{
  v7 = ((v5 & 0xFB0315B2 | ~(v5 | 0xFB0315B2)) ^ 0x36E7B1DD) * v4;
  *(v6 - 112) = (v1 + 940079093) ^ v7;
  *(v6 - 108) = -1362341929 - v7;
  *(v6 - 120) = v3;
  (*(v0 + 8 * (v1 ^ 0x20B8)))(v6 - 120);
  v8 = 31943069 * (((v5 | 0x9412FDEA7F0514E1) - (v5 & 0x9412FDEA7F0514E1)) ^ 0xC700CC711CAC5299);
  *(v6 - 104) = v1 - v8 + 584255416;
  *(v6 - 120) = v3;
  *(v6 - 112) = (v8 + 0x605222BC435F6A18) | 1;
  v9 = (*(v0 + 8 * (v1 ^ 0x20C0)))(v6 - 120);
  return (*(v0 + 8 * ((3425 * (*(v6 - 100) == v2)) ^ v1)))(v9);
}

uint64_t sub_1E336B6A0(unsigned int a1)
{
  v5 = (((*(v2 + 16) ^ 0x7EB32C2D) + 895847405) ^ (((16 * v3) ^ 0x1F6B0) - 2144900215 + (*(v2 + 16) ^ 0xCBF1DBB9)) ^ (((v3 + 1697029991) & 0x9AD94A7D ^ 0x4ABD0022 ^ *(v2 + 16)) + 23834539)) - 1360670879;
  v6 = (v1 > 0x9CF0D85F) ^ (v5 < a1);
  v7 = v1 + a1 > v5;
  if (v6)
  {
    v7 = v1 > 0x9CF0D85F;
  }

  return (*(v4 + 8 * ((200 * !v7) ^ v3)))();
}

uint64_t sub_1E336B7BC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = 0;
  v5 = v1 != (v3 ^ 0xFFFFFFFFCDE53DF0) + v2;
  return (*(v4 + 8 * (((16 * v5) | (32 * v5)) ^ v3 ^ 0x30)))();
}

uint64_t sub_1E336B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, int a21, int a22, char a23, uint64_t a24, int a25, unsigned int a26, uint64_t a27, char *a28, unsigned int a29, char *a30)
{
  a29 = (v30 - 712) ^ (1710126949 * ((&a25 - 348782828 - 2 * (&a25 & 0xEB35FF14)) ^ 0xD92EA484));
  a30 = &a20;
  a27 = a24;
  a28 = &a18;
  (*(v31 + 8 * (v30 ^ 0x2AA1)))(&a25);
  a30 = &a15;
  a27 = a24;
  a28 = &a23;
  a29 = (v30 - 712) ^ (1710126949 * (&a25 ^ 0x321B5B90));
  (*(v31 + 8 * (v30 + 5537)))(&a25);
  a26 = (v30 - 818) ^ (33731311 * ((((2 * &a25) | 0x621E3718) - &a25 - 823073676) ^ 0x8F9D1AF));
  a27 = a24;
  a28 = &a13;
  (*(v31 + 8 * (v30 ^ 0x2AA7)))(&a25);
  a27 = a24;
  LODWORD(a28) = v30 - 2008441969 * ((210132032 - (&a25 | 0xC865C40) + (&a25 | 0xF379A3BF)) ^ 0xBBE0F7B1) + 1615;
  v32 = (*(v31 + 8 * (v30 ^ 0x2A55)))(&a25);
  return (*(v31 + 8 * ((12049 * (a25 == ((v30 + 2097458705) & 0x82FB4FB4 ^ 0xF81E5B))) ^ v30)))(v32);
}

uint64_t sub_1E336B9D8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = v2 ^ 0xA5E;
  v7 = (*(v5 + 8 * ((v2 ^ 0xA5E) + 4257)))(a1, -1922780625 * (*(v3 + 4) ^ a2) - 34075913);
  **(v4 + 8 * (v6 ^ 0x158B)) = v7;
  return (*(v5 + 8 * (((((v6 + 1) ^ (v7 == 0)) & 1) * (v6 ^ 0x160F)) ^ v6)))();
}

uint64_t sub_1E336BA58()
{
  v4 = (((v2 ^ 0x3D5314B1AB5941DCLL) - 0x3D5314B1AB5941DCLL) ^ ((v2 ^ 0xB4DCBE5EFC35110FLL) + 0x4B2341A103CAEEF1) ^ (((456 * (v0 ^ 0x878u) - 0x167B5E7FF137566ALL) ^ v2) + 0x167B5E7FF1374F4ALL)) + 0x600B0B6F8ECD7098;
  v5 = (((v1 ^ 0x2CBFFEDAEFE971E3) - 0x2CBFFEDAEFE971E3) ^ ((v1 ^ 0x41CBECBBFB25EBCFLL) - 0x41CBECBBFB25EBCFLL) ^ ((v1 ^ 0xD7F190E4D687A49) - 0xD7F190E4D687A49)) + 0x600B0B6F8ECD7098;
  v6 = v5 < 0x35289033;
  v7 = v4 < v5;
  if (v6 != v4 < 0x35289033)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((5951 * v7) ^ v0)))();
}

uint64_t sub_1E336BC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((&a16 & 0xFCC8AB82 | ~(&a16 | 0xFCC8AB82)) ^ 0x5B5E871F) * v22;
  a17 = v24 - 81629588;
  a18 = a15;
  a19 = &a14;
  a20 = -654855621 - v24;
  a21 = v24 + v21 + 1674574885;
  v25 = (*(v23 + 8 * (v21 ^ 0x350D)))(&a16);
  return (*(v23 + 8 * ((12682 * (a16 == ((v21 + 760) ^ 0x43C2E7AC ^ (v21 - 683942055) & 0x433AF73F))) ^ v21)))(v25);
}

uint64_t sub_1E336BD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = *(v18 + 8 * v13);
  v22 = *v15;
  v23 = v14 + a5;
  *(*v15 + v23) = (HIBYTE(a9) ^ v20) - 2 * ((HIBYTE(a9) ^ v20) & 0x3E ^ HIBYTE(a9) & 2) + 60;
  *(v22 + v23 + 1) = (v19 ^ BYTE2(a9)) - ((2 * (v19 ^ BYTE2(a9))) & 0x78) + 60;
  *(v22 + v23 + 2) = (v17 ^ BYTE1(a9)) - ((2 * (v17 ^ BYTE1(a9))) & 0x78) + 60;
  *(v22 + v23 + 3) = a9 ^ v16;
  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
}

uint64_t sub_1E336BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (&a14 ^ 0x5869D362) * v19;
  a16 = a12;
  a17 = &a11;
  a15 = v22 - 422472598;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674571804;
  v23 = (*(v20 + 8 * (v21 ^ 0x3906)))(&a14);
  return (*(v20 + 8 * ((15527 * (a14 == ((v21 + 1045625777) & 0xF7DB) + 16253876)) ^ v21)))(v23);
}

uint64_t sub_1E336BE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a23 = &a14;
  a22 = (v23 + 1043) ^ (((2 * (&a18 & 0x5A6F4918) - &a18 + 630240994) ^ 0x178BED72) * v26);
  a20 = a16;
  a21 = &a12;
  (*(v24 + 8 * (v23 + 7292)))(&a18);
  a20 = a16;
  a21 = &a10;
  a19 = (v23 + 937) ^ (33731311 * ((2 * (&a18 & 0x59A1D788) - &a18 + 643704944) ^ 0x1FA8E253));
  (*(v24 + 8 * (v23 ^ 0x2D9Au)))(&a18);
  a20 = a16;
  LODWORD(a21) = v23 - 2008441969 * ((429941438 - (&a18 | 0x19A062BE) + (&a18 | 0xE65F9D41)) ^ 0xAEC6C94F) + 3370;
  v27 = (*(v24 + 8 * (v23 ^ 0x2D68u)))(&a18);
  return (*(v24 + 8 * (((a18 == v25 + ((v23 + 130569796) & 0x27DB) - 1811) * (((v23 - 1251) | 4) + 3244)) ^ v23)))(v27);
}

uint64_t sub_1E336BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, char *a26)
{
  a25 = (v27 + 823) ^ (((-1394755022 - (&a21 | 0xACDDBA32) + (&a21 | 0x532245CD)) ^ 0x61391E5D) * v30);
  a26 = &a12;
  a23 = a20;
  a24 = &a15;
  (*(v28 + 8 * (v27 + 7072)))(&a21);
  a23 = a20;
  a24 = &a19;
  a22 = (v27 + 717) ^ (33731311 * (&a21 ^ 0x39F6CA23));
  (*(v28 + 8 * (v27 ^ 0x2CA6)))(&a21);
  a22 = (v27 + 717) ^ (33731311 * ((-1527712188 - (&a21 | 0xA4F0F644) + (&a21 | 0x5B0F09BB)) ^ 0x62F9C398));
  a23 = a20;
  a24 = &a17;
  (*(v28 + 8 * (v27 + 7066)))(&a21);
  a23 = a20;
  LODWORD(a24) = v27 - 2008441969 * ((&a21 & 0x54463A41 | ~(&a21 | 0x54463A41)) ^ 0xE32091B0) + 3150;
  v31 = (*(v28 + 8 * (v27 ^ 0x2C54)))(&a21);
  return (*(v28 + 8 * ((7008 * (a21 == ((v29 + (v27 ^ 0xFC2) + 208) ^ v27 ^ v26))) ^ v27)))(v31);
}

uint64_t sub_1E336C16C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * (((&a15 | 0xF0FE8E33) - (&a15 & 0xF0FE8E33)) ^ 0xC2E5D5A3);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((13373 * (a16 == 16257999)) ^ 0x15D0u)))(v17);
}

uint64_t sub_1E336C25C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unsigned __int8 *a48, uint64_t a49, uint64_t a50)
{
  v84 = v59;
  v62 = v60;
  v63 = a48[17] ^ a1;
  LODWORD(a15) = 102 * (a33 ^ 0x2C5EF476);
  LODWORD(a14) = 9 * (a33 ^ 0x2C5EF580);
  v64 = ((a14 - v52 + 68) ^ (a48[16] - (a48[16] ^ v52)) ^ 0x6A ^ (v52 + (~(v52 << (a15 + 69)) | 0x2B) + 107)) + a48[16];
  v65 = a48[18] ^ a5;
  v66 = a48[19] ^ v50;
  v85 = a48[20] ^ v55;
  v67 = a48[22] ^ v54;
  v68 = a48[23] ^ a6;
  v69 = a48[21] ^ v53;
  v70 = a48[24] ^ v58;
  v71 = a48[26] ^ v51;
  v72 = a48[25] ^ a7;
  v73 = a48[29] ^ v56;
  v74 = *(v60 + 12) ^ a48[28];
  v75 = *(v60 + 14) ^ a48[30];
  v76 = a48[27] ^ v57;
  v77 = *(v62 + 15) ^ a48[31];
  v78 = *(&off_1F5DB1610 + a33 - 744420119) - 4;
  v79 = *&v78[8 * (v67 ^ 0x81)] ^ ((v67 ^ 0xDA) - 62);
  LODWORD(v62) = (v79 & 0x4D ^ 0xFFFFFF87) & (v79 & 0xB2 ^ 0xDF) | v79 & 0x30;
  v80 = v65 ^ v63 ^ v66 ^ ((v65 ^ 0xFFFFFFDE) - 62) ^ v76 ^ ((v66 ^ 0xFFFFFFDF) - 62) ^ v72 ^ ((v76 ^ 0xFFFFFFDF) - 62) ^ v69 ^ ((v72 ^ 0xFFFFFFDD) - 62) ^ v71 ^ v64 ^ ((v69 ^ 0xFFFFFFD9) - 62) ^ ((v64 ^ 0xFFFFFFDC) - 62);
  v81 = v67 ^ ((v71 ^ 0xFFFFFFDE) - 62) ^ v68 ^ v85 ^ ((v68 ^ 0xFFFFFFDB) - 62) ^ v73 ^ ((v85 ^ 0xFFFFFFD8) - 62) ^ ((v73 ^ 0xFFFFFFD9) - 62) ^ v70 ^ ((v70 ^ 0xFFFFFFDC) - 62);
  v82 = v80 ^ v81 ^ v75 ^ ((v75 ^ 0xFFFFFFDA) - 62) ^ v77 ^ ((v74 ^ 0xFFFFFFD8) - 62) ^ ((v77 ^ 0xFFFFFFDB) - 62) ^ *&v78[8 * (v65 ^ 0x185)] ^ *&v78[8 * (v64 ^ 0x87)] ^ *&v78[8 * (v63 ^ 0x86)] ^ ((v63 ^ 0xFFFFFFDD) + 194) ^ *&v78[8 * (v66 ^ 0x84)] ^ *&v78[8 * (v85 ^ 0x83)] ^ *&v78[8 * (v69 ^ 0x82)] ^ *&v78[8 * (v68 ^ 0x180)] ^ *&v78[8 * (v70 ^ 0x187)] ^ *&v78[8 * (v72 ^ 0x186)] ^ *&v78[8 * (v71 ^ 0x185)] ^ *&v78[8 * ((a48[27] ^ v57) ^ 0x84)] ^ v62 ^ *&v78[8 * (v74 ^ 0x183)] ^ *&v78[8 * (v73 ^ 0x182)] ^ *&v78[8 * (v75 ^ 0x181)] ^ *&v78[8 * (v77 ^ 0x80)];
  return (*(a50 + 8 * ((a33 - 744415768) ^ 0x2B)))(v69, a2, v63, 132, v82 ^ v74 ^ 0xFFFFFF87, 4294967256, v75, 4294967260, a9, a10, a11, a12, a13, a14, a15, v84, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v85, a29, a30, a31, a32, *(*(&off_1F5DB1610 + (a33 ^ 0x2C5EF42E)) + ((v82 ^ v74) ^ 0xE0) - 8), v65, v67, v68, v76, v72, v73, v70);
}

uint64_t sub_1E336C288()
{
  v13 = v9;
  v14 = &v10;
  v12[1] = (v0 - 3414) ^ (33731311 * ((v12 - 3148397 - 2 * (v12 & 0xFFCFF593)) ^ 0xC6393FB0));
  (*(v1 + 8 * (v0 ^ 0x3C9B)))(v12);
  v13 = v9;
  LODWORD(v14) = v0 - 2008441969 * (((v12 | 0x700165A9) - v12 + (v12 & 0x8FFE9A50)) ^ 0x389831A7) - 981;
  (*(v1 + 8 * (v0 + 2985)))(v12);
  if (v12[0] == v3)
  {
    v4 = -2080663553;
  }

  else
  {
    v4 = -1778756641;
  }

  if (v12[0] == v3)
  {
    v5 = 133640190;
  }

  else
  {
    v5 = 737454014;
  }

  if (v12[0] == v3)
  {
    v6 = 2096921552;
  }

  else
  {
    v6 = 1795014640;
  }

  v7 = (v4 ^ v10) + v6 + ((v10 << (v0 + 15)) & v5);
  LODWORD(v14) = (v0 + 1704) ^ (((v12 + 1187778915 - 2 * (v12 & 0x46CC1163)) ^ 0x1EA5C201) * v2);
  v13 = v9;
  (*(v1 + 8 * (v0 + 2970)))(v12);
  LODWORD(v14) = (v0 + 1704) ^ ((((v12 | 0x4ED91A9F) - (v12 & 0x4ED91A9F)) ^ 0x16B0C9FD) * v2);
  v13 = v11;
  (*(v1 + 8 * ((v0 - 5635) ^ 0x2663)))(v12);
  return (v7 - 16257999);
}

uint64_t sub_1E336C4EC@<X0>(int a1@<W8>)
{
  *v1 = v7;
  v4 = (a1 + 1476) ^ 0x1475;
  v11 = (a1 + 2949) ^ (((((&v9 | 0xF18A0EFE) ^ 0xFFFFFFFE) - (~&v9 | 0xE75F101)) ^ 0x561C2263) * v3);
  v10 = v6;
  (*(v2 + 8 * (a1 + 4215)))(&v9);
  v10 = v8;
  v11 = (v4 + 4590) ^ (((&v9 + 621754446 - 2 * (&v9 & 0x250F384E)) ^ 0x7D66EB2C) * v3);
  (*(v2 + 8 * (v4 + 5856)))(&v9);
  return 0;
}

uint64_t sub_1E336C608(uint64_t a1)
{
  v3 = STACK[0x3F8] - 1966;
  v4 = STACK[0x3F8] - 1189;
  LODWORD(STACK[0x84C]) = v1;
  return (*(v2 + 8 * ((199 * (((v3 ^ (a1 == 0)) & 1) == 0)) ^ v4)))();
}

uint64_t sub_1E336C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = v20 + 1317436891 * (((&a17 | 0x703B6A4B) - &a17 + (&a17 & 0x8FC495B0)) ^ 0xC038F23D) + 6373;
  a17 = &a14;
  v21 = (*(v19 + 8 * (v20 ^ 0x2350u)))(&a17);
  return (*(v19 + 8 * (((a18 == 16257999) * ((v20 + 1825) ^ 0xF8DF44EC ^ (v20 - 102803447) & 0xF8DF7BF7)) ^ v20)))(v21);
}

uint64_t sub_1E336C710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int8x16_t a30, int8x16_t a31, int8x16_t a32, int64x2_t a33, int8x16_t a34, int8x16_t a35, int8x16_t a36, int8x16_t a37, int8x16_t a38, uint64_t a39, uint64_t a40, int64x2_t a41, int8x16_t a42, int64x2_t a43, int8x16_t a44, int8x16_t a45, int8x16_t a46, int64x2_t a47, int8x16_t a48, int8x16_t a49)
{
  v59 = v57 - 16;
  *&STACK[0x360] = *(a1 + v59 - 16);
  v60.i64[0] = a1 + v59 - 5;
  v60.i64[1] = a1 + v59 + a2;
  v61.i64[0] = a1 + v59 - 1;
  v61.i64[1] = a1 + v59 - 2;
  v62.i64[0] = a1 + v59 - 3;
  v62.i64[1] = a1 + v59 - 4;
  v63.i64[0] = a1 + v59 - 7;
  v63.i64[1] = a1 + v59 - 8;
  v64.i64[0] = a1 + v59 - 9;
  v64.i64[1] = a1 + v59 - 10;
  v65.i64[0] = a1 + v59 - 11;
  v65.i64[1] = a1 + v59 - 12;
  v66.i64[0] = a1 + v59 - 13;
  v66.i64[1] = a1 + v59 - 14;
  v67.i64[0] = a1 + v59 - 15;
  v67.i64[1] = a1 + v59 - 16;
  v68.i64[0] = v56 + v59 - 15;
  v68.i64[1] = v56 + v59 - 16;
  *&STACK[0x310] = v68;
  v69 = vandq_s8(v67, a36);
  v70 = vandq_s8(v66, a36);
  v71 = vandq_s8(v65, a36);
  v72 = vandq_s8(v64, a36);
  v73 = vandq_s8(v63, a36);
  v74 = vandq_s8(v62, a36);
  v75 = vandq_s8(v61, a36);
  v76 = vandq_s8(v60, a36);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), *&STACK[0x280]);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), *&STACK[0x280]);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), *&STACK[0x280]);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), *&STACK[0x280]);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), *&STACK[0x280]);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), *&STACK[0x280]);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), *&STACK[0x280]);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), *&STACK[0x280]);
  v85 = veorq_s8(v84, *&STACK[0x270]);
  v86 = veorq_s8(v83, *&STACK[0x270]);
  v87 = veorq_s8(v82, *&STACK[0x270]);
  v88 = veorq_s8(v81, *&STACK[0x270]);
  v89 = veorq_s8(v80, *&STACK[0x270]);
  v90 = veorq_s8(v79, *&STACK[0x270]);
  v91 = veorq_s8(v78, *&STACK[0x270]);
  v92 = veorq_s8(v77, *&STACK[0x270]);
  v93 = veorq_s8(v77, *&STACK[0x260]);
  v94 = veorq_s8(v78, *&STACK[0x260]);
  v95 = veorq_s8(v79, *&STACK[0x260]);
  v96 = veorq_s8(v80, *&STACK[0x260]);
  v97 = veorq_s8(v81, *&STACK[0x260]);
  v98 = veorq_s8(v82, *&STACK[0x260]);
  v99 = veorq_s8(v83, *&STACK[0x260]);
  v100 = veorq_s8(v84, *&STACK[0x260]);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), *&STACK[0x250]);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v94), *&STACK[0x250]);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v95), *&STACK[0x250]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v96), *&STACK[0x250]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v97), *&STACK[0x250]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v98), *&STACK[0x250]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v99), *&STACK[0x250]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v100), *&STACK[0x250]);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v110 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v111 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v112 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v113 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v114 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v115 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v116 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v117 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v116);
  v125 = vaddq_s64(v123, v115);
  v126 = vaddq_s64(v122, v114);
  v127 = vaddq_s64(v121, v113);
  v128 = vaddq_s64(v120, v112);
  v129 = vaddq_s64(v119, v111);
  v130 = vaddq_s64(v118, v110);
  v131 = vaddq_s64(v117, v109);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), *&STACK[0x240]), v131), *&STACK[0x230]), *&STACK[0x220]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), *&STACK[0x240]), v130), *&STACK[0x230]), *&STACK[0x220]);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), *&STACK[0x240]), v129), *&STACK[0x230]), *&STACK[0x220]);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), *&STACK[0x240]), v128), *&STACK[0x230]), *&STACK[0x220]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x240]), v127), *&STACK[0x230]), *&STACK[0x220]);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), *&STACK[0x240]), v126), *&STACK[0x230]), *&STACK[0x220]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), *&STACK[0x240]), v125), *&STACK[0x230]), *&STACK[0x220]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), *&STACK[0x240]), v124), *&STACK[0x230]), *&STACK[0x220]);
  v140 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v144 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v145 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v146 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v147 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v148 = veorq_s8(v135, v143);
  v149 = veorq_s8(v134, v142);
  v150 = veorq_s8(v133, v141);
  v151 = veorq_s8(v132, v140);
  v152 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v151);
  v160 = vaddq_s64(v158, v150);
  v161 = vaddq_s64(v157, v149);
  v162 = vaddq_s64(v156, v148);
  v163 = vaddq_s64(v155, v147);
  v164 = vaddq_s64(v154, v146);
  v165 = vaddq_s64(v153, v145);
  v166 = vaddq_s64(v152, v144);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), *&STACK[0x210]), v166), *&STACK[0x200]), a49);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), *&STACK[0x210]), v165), *&STACK[0x200]), a49);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), *&STACK[0x210]), v164), *&STACK[0x200]), a49);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), *&STACK[0x210]), v163), *&STACK[0x200]), a49);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), *&STACK[0x210]), v162), *&STACK[0x200]), a49);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), *&STACK[0x210]), v161), *&STACK[0x200]), a49);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), *&STACK[0x210]), v160), *&STACK[0x200]), a49);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), *&STACK[0x210]), v159), *&STACK[0x200]), a49);
  v175 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v179 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v180 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v181 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v182 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v183 = veorq_s8(v170, v178);
  v184 = veorq_s8(v169, v177);
  v185 = veorq_s8(v168, v176);
  v186 = veorq_s8(v167, v175);
  v187 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v186);
  v195 = vaddq_s64(v193, v185);
  v196 = vaddq_s64(v192, v184);
  v197 = vaddq_s64(v191, v183);
  v198 = vaddq_s64(v190, v182);
  v199 = vaddq_s64(v189, v181);
  v200 = vaddq_s64(v188, v180);
  v201 = vaddq_s64(v187, v179);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v201, v201), a48), v201), a47), a46);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v200, v200), a48), v200), a47), a46);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199, v199), a48), v199), a47), a46);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), a48), v198), a47), a46);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), a48), v197), a47), a46);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), a48), v196), a47), a46);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), a48), v195), a47), a46);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v194, v194), a48), v194), a47), a46);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v211 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v212 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v213 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v214 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v215 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v216 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v217 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v218 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v217);
  v226 = veorq_s8(vaddq_s64(v218, v210), *&STACK[0x370]);
  v227 = veorq_s8(vaddq_s64(v219, v211), *&STACK[0x370]);
  v228 = veorq_s8(vaddq_s64(v220, v212), *&STACK[0x370]);
  v229 = veorq_s8(vaddq_s64(v221, v213), *&STACK[0x370]);
  v230 = veorq_s8(vaddq_s64(v222, v214), *&STACK[0x370]);
  v231 = veorq_s8(vaddq_s64(v223, v215), *&STACK[0x370]);
  v232 = veorq_s8(vaddq_s64(v224, v216), *&STACK[0x370]);
  v233 = veorq_s8(v225, *&STACK[0x370]);
  v234 = *&STACK[0x370];
  v235 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v242 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v243 = veorq_s8(v232, v241);
  v244 = veorq_s8(v231, v240);
  v245 = veorq_s8(v230, v239);
  v246 = veorq_s8(v229, v238);
  v247 = veorq_s8(v228, v237);
  v248 = veorq_s8(v227, v236);
  v249 = veorq_s8(v226, v235);
  v250 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v249);
  v258 = veorq_s8(vaddq_s64(v250, v242), a45);
  v259 = veorq_s8(vaddq_s64(v251, v243), a45);
  v260 = veorq_s8(vaddq_s64(v252, v244), a45);
  v261 = veorq_s8(vaddq_s64(v253, v245), a45);
  v262 = veorq_s8(vaddq_s64(v254, v246), a45);
  v263 = veorq_s8(vaddq_s64(v255, v247), a45);
  v264 = veorq_s8(vaddq_s64(v256, v248), a45);
  v265 = veorq_s8(v257, a45);
  v266 = vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL);
  v267 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v268 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v269 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v270 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v271 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v272 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v273 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v274 = veorq_s8(v261, v269);
  v275 = veorq_s8(v260, v268);
  v276 = veorq_s8(v259, v267);
  v277 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v280 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v281 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v247.i64[0] = v56 + v59 - 7;
  v247.i64[1] = v56 + v59 - 8;
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), veorq_s8(v258, v266));
  v246.i64[0] = v56 + v59 - 3;
  v246.i64[1] = v56 + v59 - 4;
  v285 = vaddq_s64(v283, v276);
  v68.i64[0] = v56 + v59 - 1;
  v68.i64[1] = v56 + v59 - 2;
  *&STACK[0x2C0] = v68;
  v286 = vaddq_s64(v282, v275);
  v287.i64[0] = v56 + v59 - 5;
  v287.i64[1] = v56 + v59 + a2;
  *&STACK[0x2E0] = v287;
  v288 = vaddq_s64(v281, v274);
  v289 = vaddq_s64(v280, v273);
  v290 = vaddq_s64(v279, v272);
  v291 = vaddq_s64(v278, v271);
  v292 = vaddq_s64(v277, v270);
  v293 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v286, v286), a44), v286), a43);
  v294 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v290, v290), a44), v290), a43);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v291, v291), a44), v291), a43), a42);
  v296 = vandq_s8(vshlq_n_s64(v64, 3uLL), a35);
  *&STACK[0x2F0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v284, v284), a44), v284), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v60, 3uLL), a35)));
  *&STACK[0x300] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v285, v285), a44), v285), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v61, 3uLL), a35)));
  v297 = vshlq_u64(veorq_s8(v293, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), a35)));
  v298 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), a44), v288), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), a35)));
  *&STACK[0x340] = vshlq_u64(veorq_s8(v294, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), a35)));
  *&STACK[0x350] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v289, v289), a44), v289), a43), a42), vnegq_s64(v296));
  *&STACK[0x320] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v292, v292), a44), v292), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), a35)));
  *&STACK[0x330] = vshlq_u64(v295, vnegq_s64(vandq_s8(vshlq_n_s64(v66, 3uLL), a35)));
  v299 = vandq_s8(v287, a36);
  v300 = vandq_s8(v68, a36);
  v301 = vandq_s8(v246, a36);
  v302 = vandq_s8(v247, a36);
  v303 = vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL);
  v304 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v305 = vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v307 = vorrq_s8(vaddq_s64(v303, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v308 = vorrq_s8(vaddq_s64(v304, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v309 = vorrq_s8(vaddq_s64(v305, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v310 = vorrq_s8(vsubq_s64(*&STACK[0x390], v303), *&STACK[0x380]);
  v311 = vorrq_s8(vsubq_s64(*&STACK[0x390], v304), *&STACK[0x380]);
  v312 = vorrq_s8(vsubq_s64(*&STACK[0x390], v305), *&STACK[0x380]);
  *&STACK[0x2D0] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v306), *&STACK[0x380]), vorrq_s8(vaddq_s64(v306, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v313 = vaddq_s64(v312, v309);
  v314 = vsubq_s64(a41, vaddq_s64(v310, v307));
  v315 = vsubq_s64(a41, vaddq_s64(v311, v308));
  v316 = vsubq_s64(a41, v313);
  v317 = veorq_s8(v315, a38);
  v318 = veorq_s8(v314, a38);
  v319 = veorq_s8(v314, a37);
  v320 = veorq_s8(v315, a37);
  v321 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL), v320);
  v322 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319);
  v323 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v322, v322), a34), v322), a33), a32);
  v324 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v321, v321), a34), v321), a33), a32);
  v325 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v320, 3uLL), v320, 0x3DuLL));
  v326 = veorq_s8(v323, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v327 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325), a31);
  v328 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v326), a31);
  v329 = veorq_s8(v328, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL));
  v330 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v331 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v330);
  v333 = vdupq_n_s64(a4);
  v334 = veorq_s8(vaddq_s64(v331, v329), v333);
  v335 = veorq_s8(v332, v333);
  v336 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v330, 3uLL), v330, 0x3DuLL));
  v337 = veorq_s8(v334, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL));
  v338 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v339 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v337);
  v340 = vaddq_s64(v338, v336);
  v341 = vdupq_n_s64(a3);
  v342 = veorq_s8(v340, v341);
  v343 = veorq_s8(v339, v341);
  v344 = vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL);
  v345 = veorq_s8(v343, vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL));
  v346 = veorq_s8(v342, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v348 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL), v346);
  v349 = v234;
  v350 = veorq_s8(vaddq_s64(v347, v345), v234);
  v351 = veorq_s8(v348, v234);
  v352 = veorq_s8(v351, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v353 = veorq_s8(v350, vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL));
  v354 = vdupq_n_s64(a5);
  v355 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v352), v354);
  v356 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v353), v354);
  v357 = v354;
  v358 = vdupq_n_s64(v49);
  v359 = vdupq_n_s64(0x401A42DCA8550D2EuLL);
  v360 = vdupq_n_s64(v50);
  v361 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v355, v358), vorrq_s8(v355, v359)), v359), v360);
  v362 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v356, v358), vorrq_s8(v356, v359)), v359), v360);
  v363 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), veorq_s8(v361, vsraq_n_u64(vshlq_n_s64(v352, 3uLL), v352, 0x3DuLL)));
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v362, 0x38uLL), v362, 8uLL), veorq_s8(v362, vsraq_n_u64(vshlq_n_s64(v353, 3uLL), v353, 0x3DuLL)));
  v365 = vdupq_n_s64(v51);
  v366 = vsubq_s64(vandq_s8(vaddq_s64(v364, v364), v365), v364);
  v367 = vsubq_s64(vandq_s8(vaddq_s64(v363, v363), v365), v363);
  v368 = vdupq_n_s64(v52);
  v369 = vaddq_s64(v367, v368);
  v370 = vdupq_n_s64(v53);
  v463.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v366, v368), v370), vnegq_s64(vandq_s8(vshlq_n_s64(v247, 3uLL), a35))), v298);
  v463.val[1] = veorq_s8(vshlq_u64(veorq_s8(v369, v370), vnegq_s64(vandq_s8(vshlq_n_s64(v246, 3uLL), a35))), v297);
  v371 = veorq_s8(v316, a38);
  v372 = veorq_s8(v316, a37);
  v373 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL), v372);
  v374 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v373, v373), a34), v373), a33), a32);
  v375 = veorq_s8(v374, vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  v376 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL), v375), a31);
  v377 = veorq_s8(v376, vsraq_n_u64(vshlq_n_s64(v375, 3uLL), v375, 0x3DuLL));
  *&STACK[0x290] = v333;
  *&STACK[0x2A0] = v341;
  v378 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL), v377), v333);
  v379 = veorq_s8(v378, vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL));
  v380 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL), v379), v341);
  v381 = veorq_s8(v380, vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL));
  v382 = v349;
  v383 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v381), v349);
  v384 = veorq_s8(v383, vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL));
  *&STACK[0x2B0] = v357;
  v385 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL), v384), v357);
  v386 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v385, v358), vorrq_s8(v385, v359)), v359), v360);
  v298.i64[0] = v56 + v59 - 13;
  v298.i64[1] = v56 + v59 - 14;
  v387 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL)));
  v355.i64[0] = v56 + v59 - 11;
  v355.i64[1] = v56 + v59 - 12;
  v388 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v387, v387), v365), v387), v368), v370), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a35)));
  v387.i64[0] = v56 + v59 - 9;
  v387.i64[1] = v56 + v59 - 10;
  *&STACK[0x2C0] = v387;
  v389 = vsubq_s64(a41, *&STACK[0x2D0]);
  v463.val[0] = veorq_s8(v388, *&STACK[0x300]);
  v390 = veorq_s8(v389, a38);
  v391 = veorq_s8(v389, a37);
  v392 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391);
  v393 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v392, v392), a34), v392), a33), a32);
  v394 = veorq_s8(v393, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v395 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), v394), a31);
  v396 = veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL));
  v397 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), v396), v333);
  v398 = veorq_s8(v397, vsraq_n_u64(vshlq_n_s64(v396, 3uLL), v396, 0x3DuLL));
  v399 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL), v398), v341);
  v400 = veorq_s8(v399, vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL));
  v401 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL), v400), v382);
  v402 = veorq_s8(v401, vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL));
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), v357);
  v404 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v403, v358), vorrq_s8(v403, v359)), v359), v360);
  v405 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v406 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v407 = vandq_s8(v387, a36);
  v408 = vaddq_s64(v406, v405);
  v409 = vandq_s8(v355, a36);
  v410 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v408, v408), v365), v408), v368), v370), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2E0], 3uLL), a35)));
  v411 = vandq_s8(v298, a36);
  v463.val[2] = veorq_s8(v410, *&STACK[0x2F0]);
  v412 = vandq_s8(*&STACK[0x310], a36);
  v413 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v414 = vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL);
  v415 = vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL);
  v416 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v417 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v413), *&STACK[0x380]), vorrq_s8(vaddq_s64(v413, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v418 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v414), *&STACK[0x380]), vorrq_s8(vaddq_s64(v414, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v414.i64[0] = vqtbl4q_s8(v463, a30).u64[0];
  v463.val[0] = veorq_s8(v418, a38);
  v463.val[1] = veorq_s8(v417, a38);
  v419 = veorq_s8(v417, a37);
  v463.val[2] = veorq_s8(v418, a37);
  v463.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[0], 0x38uLL), v463.val[0], 8uLL), v463.val[2]);
  v463.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[1], 0x38uLL), v463.val[1], 8uLL), v419);
  v463.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v463.val[1], v463.val[1]), a34), v463.val[1]), a33), a32);
  v463.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v463.val[0], v463.val[0]), a34), v463.val[0]), a33), a32);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL);
  v420 = veorq_s8(v463.val[0], vsraq_n_u64(vshlq_n_s64(v463.val[2], 3uLL), v463.val[2], 0x3DuLL));
  v463.val[2] = veorq_s8(v463.val[1], v463.val[3]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v463.val[0], 0x38uLL), v463.val[0], 8uLL);
  v463.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[1], 0x38uLL), v463.val[1], 8uLL), v463.val[2]);
  v463.val[1] = veorq_s8(vaddq_s64(v463.val[3], v420), a31);
  v463.val[0] = veorq_s8(v463.val[0], a31);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL);
  v421 = veorq_s8(v463.val[0], vsraq_n_u64(vshlq_n_s64(v463.val[2], 3uLL), v463.val[2], 0x3DuLL));
  v463.val[2] = veorq_s8(v463.val[1], v463.val[3]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v463.val[0], 0x38uLL), v463.val[0], 8uLL);
  v463.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[1], 0x38uLL), v463.val[1], 8uLL), v463.val[2]);
  v463.val[1] = veorq_s8(vaddq_s64(v463.val[3], v421), *&STACK[0x290]);
  v463.val[0] = veorq_s8(v463.val[0], *&STACK[0x290]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v421, 3uLL), v421, 0x3DuLL);
  v422 = veorq_s8(v463.val[0], vsraq_n_u64(vshlq_n_s64(v463.val[2], 3uLL), v463.val[2], 0x3DuLL));
  v463.val[2] = veorq_s8(v463.val[1], v463.val[3]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v463.val[0], 0x38uLL), v463.val[0], 8uLL);
  v463.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[1], 0x38uLL), v463.val[1], 8uLL), v463.val[2]);
  v463.val[1] = veorq_s8(vaddq_s64(v463.val[3], v422), *&STACK[0x2A0]);
  v463.val[0] = veorq_s8(v463.val[0], *&STACK[0x2A0]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v423 = veorq_s8(v463.val[0], vsraq_n_u64(vshlq_n_s64(v463.val[2], 3uLL), v463.val[2], 0x3DuLL));
  v463.val[2] = veorq_s8(v463.val[1], v463.val[3]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v463.val[0], 0x38uLL), v463.val[0], 8uLL);
  v463.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[1], 0x38uLL), v463.val[1], 8uLL), v463.val[2]);
  v463.val[1] = veorq_s8(vaddq_s64(v463.val[3], v423), *&STACK[0x370]);
  v463.val[0] = veorq_s8(v463.val[0], *&STACK[0x370]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v424 = veorq_s8(v463.val[0], vsraq_n_u64(vshlq_n_s64(v463.val[2], 3uLL), v463.val[2], 0x3DuLL));
  v463.val[2] = veorq_s8(v463.val[1], v463.val[3]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v463.val[0], 0x38uLL), v463.val[0], 8uLL);
  v463.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[1], 0x38uLL), v463.val[1], 8uLL), v463.val[2]);
  v463.val[1] = veorq_s8(vaddq_s64(v463.val[3], v424), *&STACK[0x2B0]);
  v463.val[0] = veorq_s8(v463.val[0], *&STACK[0x2B0]);
  v463.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v463.val[1], v358), vorrq_s8(v463.val[1], v359)), v359), v360);
  v463.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v463.val[0], v358), vorrq_s8(v463.val[0], v359)), v359), v360);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v425 = veorq_s8(v463.val[0], vsraq_n_u64(vshlq_n_s64(v463.val[2], 3uLL), v463.val[2], 0x3DuLL));
  v463.val[2] = veorq_s8(v463.val[1], v463.val[3]);
  v463.val[3] = vsraq_n_u64(vshlq_n_s64(v463.val[0], 0x38uLL), v463.val[0], 8uLL);
  v463.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463.val[1], 0x38uLL), v463.val[1], 8uLL), v463.val[2]);
  v426 = vaddq_s64(v463.val[3], v425);
  v427 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v415), *&STACK[0x380]), vorrq_s8(vaddq_s64(v415, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v463.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v426, v426), v365), v426), v368), v370), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), a35))), *&STACK[0x320]);
  v463.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v463.val[0], v463.val[0]), v365), v463.val[0]), v368), v370), vnegq_s64(vandq_s8(vshlq_n_s64(v298, 3uLL), a35))), *&STACK[0x330]);
  v428 = veorq_s8(v427, a38);
  v429 = veorq_s8(v427, a37);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v429);
  v431 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v430, v430), a34), v430), a33), a32);
  v432 = veorq_s8(v431, vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL));
  v433 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL), v432), a31);
  v434 = veorq_s8(v433, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v435 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL), v434), *&STACK[0x290]);
  v436 = veorq_s8(v435, vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL));
  v437 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v436), *&STACK[0x2A0]);
  v438 = veorq_s8(v437, vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL));
  v439 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL), v438), *&STACK[0x370]);
  v440 = veorq_s8(v439, vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL));
  v441 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v439, 0x38uLL), v439, 8uLL), v440), *&STACK[0x2B0]);
  v442 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v441, v358), vorrq_s8(v441, v359)), v359), v360);
  v443 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL)));
  v444 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v416), *&STACK[0x380]), vorrq_s8(vaddq_s64(v416, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v463.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v443, v443), v365), v443), v368), v370), vnegq_s64(vandq_s8(vshlq_n_s64(v355, 3uLL), a35))), *&STACK[0x340]);
  v445 = veorq_s8(v444, a38);
  v446 = veorq_s8(v444, a37);
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446);
  v448 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v447, v447), a34), v447), a33), a32);
  v449 = veorq_s8(v448, vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL));
  v450 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL), v449), a31);
  v451 = veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451), *&STACK[0x290]);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453), *&STACK[0x2A0]);
  v455 = veorq_s8(v454, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v456 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v455), *&STACK[0x370]);
  v457 = veorq_s8(v456, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v458 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v457), *&STACK[0x2B0]);
  v459 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v458, v358), vorrq_s8(v458, v359)), v359), v360);
  v460 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL)));
  v463.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v460, v460), v365), v460), v368), v370), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a35))), *&STACK[0x350]);
  v414.i64[1] = vqtbl4q_s8(v463, a30).u64[0];
  v461 = vrev64q_s8(v414);
  *(v56 + v59 - 16) = veorq_s8(vextq_s8(v461, v461, 8uLL), *&STACK[0x360]);
  return (*(v58 + 8 * ((6358 * (v55 == v59)) ^ v54)))();
}

uint64_t sub_1E336C718()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3AA3)))();
  STACK[0x618] = 0;
  return sub_1E336C73C(v2);
}

uint64_t sub_1E336C780(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x310] = v66;
  STACK[0x300] = v72 & 0xFFFFFFF8;
  v74 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v75 = vdupq_n_s64(0x38uLL);
  v76 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v77 = vdupq_n_s64(a2);
  v78 = vdupq_n_s64(v69);
  v79 = v62 + v65 + a61 - v67 + v63;
  v80 = vdupq_n_s64(v61);
  v81 = vdupq_n_s64(v70);
  v82 = vdupq_n_s64(v73);
  v83 = vdupq_n_s64(v71);
  v84 = vdupq_n_s64(v64);
  v85 = vdupq_n_s64(0xFEE3F116FE675A82);
  v86 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v87 = vdupq_n_s64(0xF2620266DFD8DE82);
  v88 = vdupq_n_s64(a3);
  v89 = vdupq_n_s64(a4);
  v90 = vdupq_n_s64(a5);
  v91 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v92 = vdupq_n_s64(a6);
  v93 = vdupq_n_s64(a7);
  v94 = vdupq_n_s64(a8);
  v95.i64[0] = v79 + 13 + v72;
  v95.i64[1] = v63 + v65 + a61 - 0x166FF3AC397BB1D1 - v67 + v72 + (((v68 - 4208) | 0x80u) ^ 0x98B8142E3F2C0676);
  v96.i64[0] = v79 + 15 + v72;
  v96.i64[1] = v79 + 14 + v72;
  v97.i64[0] = v79 + 11 + v72;
  v97.i64[1] = v79 + 10 + v72;
  v98.i64[0] = v79 + 9 + v72;
  v98.i64[1] = v79 + 8 + v72;
  v99 = vandq_s8(v98, v74);
  v100 = vandq_s8(v97, v74);
  v101 = vandq_s8(v96, v74);
  v102 = vandq_s8(v95, v74);
  v103 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v76);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v76);
  v107 = veorq_s8(v106, v77);
  v108 = veorq_s8(v105, v77);
  v109 = veorq_s8(v105, v78);
  v110 = veorq_s8(v106, v78);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v80), v112), v81), v82);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v80), v111), v81), v82);
  v115 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v116 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v117 = veorq_s8(v113, v115);
  v118 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v117);
  v120 = vaddq_s64(v118, v116);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v83), vorrq_s8(v119, v84)), v84), v85);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, v83), vorrq_s8(v120, v84)), v84), v85);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v124 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v86);
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v124), v86);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v128 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v129 = veorq_s8(v125, v127);
  v130 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v129);
  v132 = veorq_s8(vaddq_s64(v130, v128), v87);
  v133 = veorq_s8(v131, v87);
  v134 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v135 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v136 = veorq_s8(v132, v134);
  v137 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v136);
  v139 = vaddq_s64(v137, v135);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), v88)), v89), v90);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v138, vandq_s8(vaddq_s64(v138, v138), v88)), v89), v90);
  v142 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v143 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v144 = veorq_s8(v140, v142);
  v145 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v144);
  v147 = veorq_s8(vaddq_s64(v145, v143), v91);
  v148 = veorq_s8(v146, v91);
  v149 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v150 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v151 = veorq_s8(v147, v149);
  v152 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v154 = vaddq_s64(v104, v76);
  v155 = vaddq_s64(v153, v151);
  v156 = vaddq_s64(v152, v150);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v92), v156), v93), v94);
  v194.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v155, v155), v92), v155), v93), v94), vnegq_s64(vandq_s8(vshlq_n_s64(v98, 3uLL), v75)));
  v194.val[2] = vshlq_u64(v157, vnegq_s64(vandq_s8(vshlq_n_s64(v97, 3uLL), v75)));
  v158 = veorq_s8(v154, v77);
  v159 = veorq_s8(v154, v78);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v160, v160), v80), v160), v81), v82);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, v83), vorrq_s8(v163, v84)), v84), v85);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v86);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v87);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(v170, vandq_s8(vaddq_s64(v170, v170), v88)), v89), v90);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v91);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL)));
  v175 = vaddq_s64(v103, v76);
  v194.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), v92), v174), v93), v94), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v75)));
  v176 = veorq_s8(v175, v77);
  v177 = veorq_s8(v175, v78);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v80), v178), v81), v82);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, v83), vorrq_s8(v181, v84)), v84), v85);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v86);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v87);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(v188, vandq_s8(vaddq_s64(v188, v188), v88)), v89), v90);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v91);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL)));
  v194.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), v92), v192), v93), v94), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), v75)));
  *(v79 + 8 + v72) = vrev64_s8(*&vqtbl4q_s8(v194, xmmword_1E4316DF0));
  return (*(STACK[0x330] + 8 * ((14274 * (v67 - (v72 & 0xFFFFFFF8) == -8)) ^ v68)))();
}

uint64_t sub_1E336CDB8(unint64_t a1)
{
  v4 = *(v3 + 8 * ((((1401 * (((v2 - 4287) | 0x15CA) ^ 0x17C9)) ^ 0xAD2) * (*v1 == 0)) | v2));
  STACK[0x3A0] = a1;
  return v4();
}

uint64_t sub_1E336CE4C()
{
  v2 = (*(v1 + 8 * (v0 + 7643)))();
  STACK[0x7F8] = 0;
  return (*(v1 + 8 * ((((v0 - 6426558) & 0x621FDF) + 1873) ^ (v0 - 1535))))(v2);
}

uint64_t sub_1E336CEB0@<X0>(int a1@<W8>)
{
  STACK[0x680] = STACK[0x418];
  v2 = STACK[0x8B0];
  LODWORD(STACK[0x7EC]) = 16257999;
  return (*(v1 + 8 * ((439 * (a1 ^ 0x3D7) - 1956) ^ ((439 * (a1 ^ 0x3D7) - 512) | 0x200) ^ (33 * ((439 * (a1 ^ 0x3D7) - 1956) ^ 0x205)) ^ 0x913 ^ (511 * (v2 == 0)))))();
}

uint64_t sub_1E336CED4@<X0>(int a1@<W8>)
{
  v3 = a1 - 3184;
  v4 = (*(v1 + 8 * (a1 + 3999)))();
  return (*(v1 + 8 * (((((v3 - 1141) ^ 0xFFFFF313) + (v3 ^ 0x44)) * (v2 == 0)) ^ v3)))(v4);
}

uint64_t sub_1E336CFEC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((a2 + v4 + 2859) ^ 0xEF9)) ^ (v4 + 185197456))))();
}

uint64_t sub_1E336D02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((1388550388 - (&a16 | 0x52C398F4) + (&a16 | 0xAD3C670B)) ^ 0xF555B469) * v22;
  a17 = v24 + 431803411;
  a20 = -654855621 - v24;
  a21 = v24 + v23 + 1674576008;
  a18 = a11;
  a19 = &a14;
  v25 = (*(v21 + 8 * (v23 + 6502)))(&a16);
  return (*(v21 + 8 * (((a16 == ((v23 + 332009386) & 0x34FB) + 16253703) * ((v23 + 332009386) ^ 0x13CA0EAC)) ^ v23)))(v25);
}

uint64_t sub_1E336D16C(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  v3 = STACK[0x568];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v2;
  *(v3 + 96) = v2;
  *(v3 + 108) = 0;
  *v1 = v3;
  return (STACK[0x7D0])();
}

uint64_t sub_1E336D280(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB18] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0xF8150B1C) + 132838628) ^ ((v1 ^ 0xDDBE1EC2) + 574742846) ^ (((((v2 + 663) | 0x20) + 778987629) ^ v1) - 778996877)) + 197499229;
  v5 = (*(v3 + 8 * (v2 + 1081)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((21 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1E336D350()
{
  v3 = (*(v2 + 8 * (v0 + 8060)))();
  STACK[0x668] = 0;
  return v1(v3);
}

uint64_t sub_1E336D3F8(uint64_t a1, int a2)
{
  v6 = v4 + a2 + 1819;
  v7 = ((a2 + 414471093) & 0x499EF7E) - 9085;
  v8 = *(v3 + v7 + v2 - 31);
  v9 = a1 + v7 + v2;
  *(v9 - 15) = *(v3 + v7 + v2 - 15);
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((2843 * ((v2 & 0xFFFFFFE0) == 32)) ^ v6)))();
}

uint64_t sub_1E336D46C()
{
  v4 = 1358806181 * ((-1247837173 - ((v3 - 120) | 0xB59F840B) + ((v3 - 120) | 0x4A607BF4)) ^ 0x754F1777);
  *(v3 - 104) = v2;
  *(v3 - 120) = v4 + 59253767;
  *(v3 - 116) = v4 - 740057766 + v1;
  v5 = (*(v0 + 8 * (v1 | 0x20D0)))(v3 - 120);
  return (*(v0 + 8 * ((869 * (*(v3 - 112) == ((2293 * (v1 ^ 0x507)) ^ 0xF80225))) ^ v1)))(v5);
}

uint64_t sub_1E336D52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a2 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((11 * ((v4 ^ 0x79 ^ ((v3 & 0xFFFFFFE0) == 32)) & 1)) ^ (v2 + v4 + 2723))))();
}

uint64_t sub_1E336D588@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v19 = *(v18 - 160);
  v20 = v19[1];
  a17[1] = v20;
  *a17 = *v19;
  return (*(v17 + 8 * ((((((a1 - 179) ^ (v20 == 0)) & 1) == 0) * ((a1 - 5515) ^ 0x7ED)) ^ a1)))();
}

uint64_t sub_1E336D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v21 = ((2 * (&a13 & 0x71BA8420) - &a13 + 239434718) ^ 0x562CA8BC) * v19;
  a15 = a9;
  a16 = &a11;
  a14 = v21 + 384714963;
  a17 = -654855621 - v21;
  a18 = v21 + v20 + 1674577460;
  v22 = (*(v18 + 8 * (v20 ^ 0x23FE)))(&a13);
  return (*(v18 + 8 * ((4723 * (a13 == ((v20 - 628079862) | 0x24243014) + 37984827)) ^ v20)))(v22);
}

uint64_t sub_1E336D6B8@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x5C8] = *a1;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 1652903011) & 0x9D7ABE7B ^ 0x1CF6) - 431)) ^ (v1 + 1652903011) & 0x9D7ABE7B)))();
}

uint64_t sub_1E336D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x310];
  v73 = *STACK[0x3A0] + 6;
  v74 = __ROR8__(v73 & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((0x6AF7234D0CC131D4 - v74) & a1) + v74 + v67 - ((v74 + v67) & a1);
  v76 = __ROR8__(v75 ^ 0xAB257711D84E66DLL, 8);
  v75 ^= 0xA2F4B2E684729731;
  v77 = (((v76 + v75) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v76 + v75) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v71;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x5963B6C555D97F1FLL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x61459D2AF01F24F7;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x64C31C027084DE6CLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8) + v86;
  v88 = __ROR8__((*STACK[0x3A0] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v89 = (0x6AF7234D0CC131D4 - v88) & 0xC2A16714FA488FC8 | (v88 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v90 = __ROR8__(v89 ^ 0x8B48252F955E681ALL, 8);
  v89 ^= 0x230EC0B80CA81946uLL;
  v91 = (((2 * v87) | 0x36A4398A31861B6ALL) - v87 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v92 = (((2 * (v90 + v89)) & 0xAC7FF88AB7D467A0) - (v90 + v89) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v93 = v92 ^ __ROR8__(v89, 61);
  v94 = __ROR8__(v92, 8);
  LOBYTE(v91) = (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v86, 61))) ^ 0xAB3042D228875C41) >> (8 * (v73 & 7u))) ^ HIBYTE(LODWORD(STACK[0x310]));
  v95 = (v94 + v93 - ((2 * (v94 + v93)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = *(a66 + 8 * (a65 - 5214));
  *v73 = v91 ^ 0xDD;
  v98 = (__ROR8__(v95, 8) + v96) ^ 0x5963B6C555D97F1FLL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x61459D2AF01F24F7;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) | 0x63B77BB044F1F226) - (v102 + v101) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x1A2AEBE44253AF03;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  *(v73 + 1) = (((v107 + v106 - ((2 * (v107 + v106)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v73 + 1) & 7))) ^ BYTE2(v72) ^ 0x60;
  v108 = __ROR8__((v73 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v109 = ((2 * v108 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v108 + 0x6BC5C09CD998FDFLL;
  v110 = __ROR8__(v109 ^ 0xD22C7A87AFCEB9D8, 8);
  v109 ^= 0x7A6A9F103638C884uLL;
  v111 = (v110 + v109) ^ 0xE49D77DF873DBF7ELL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ v71;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x5963B6C555D97F1FLL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (((2 * (v117 + v116)) | 0x316A40512FDE1242) - (v117 + v116) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x64C31C027084DE6CLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x1A2AEBE44253AF03;
  *(v73 + 2) = (((__ROR8__(v122, 8) + (v122 ^ __ROR8__(v121, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v73 + 2) & 7))) ^ BYTE1(v72) ^ 0xF8;
  v123 = __ROR8__((v73 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v124 = (0xAF7234D0CC131D4 - v123) & 0x126AA61F6F56C0D8 | (v123 + v67) & v68;
  v125 = v124 ^ a2;
  v126 = v124 ^ v69;
  v127 = (__ROR8__(v125, 8) + v126) ^ 0xE49D77DF873DBF7ELL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ v71;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = ((a3 | (2 * (v131 + v130))) - (v131 + v130) + v70) ^ v66;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0x61459D2AF01F24F7;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x64C31C027084DE6CLL;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x1A2AEBE44253AF03;
  *(v73 + 3) = v72 ^ a4 ^ (((__ROR8__(v138, 8) + (v138 ^ __ROR8__(v137, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v73 + 3) & 7)));
  return v97();
}

uint64_t sub_1E336DCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, char *a16, char a17, uint64_t a18, int a19, char a20, uint64_t a21, int a22, unsigned int a23, char *a24, char *a25, char *a26, char *a27)
{
  a27 = &a17;
  LODWORD(a26) = (v27 - 4275) ^ (((((2 * &a22) | 0x947974C4) - &a22 + 901989790) ^ 0xF827E1F2) * v29);
  a24 = a16;
  a25 = &a13;
  (*(v28 + 8 * (v27 ^ 0x38D6u)))(&a22);
  a24 = &a15;
  a26 = a16;
  LODWORD(a25) = v27 + 956911519 * ((2 * (&a22 & 0xA6A3DE0) - &a22 - 174734820) ^ 0x1F04B219) + 1679;
  (*(v28 + 8 * (v27 ^ 0x382Fu)))(&a22);
  a23 = (v27 - 4381) ^ (33731311 * (((&a22 ^ 0xAD140F34) - 1497830255 - 2 * ((&a22 ^ 0xAD140F34) & 0xA6B8EC91)) ^ 0x325A2986));
  a24 = a16;
  a25 = &a20;
  (*(v28 + 8 * (v27 + 1968)))(&a22);
  a24 = a16;
  LODWORD(a25) = v27 - 2008441969 * ((2 * (&a22 & 0x1BBD12B0) - &a22 + 1682107725) ^ 0x2CDBB943) - 1948;
  v30 = (*(v28 + 8 * (v27 + 2018)))(&a22);
  return (*(v28 + 8 * (((a22 == 16257999) * (((v27 - 6584) | 0xBC0) + 12115)) ^ v27)))(v30);
}

uint64_t sub_1E336DED4@<X0>(int a1@<W8>)
{
  v7 = a1 ^ 0x1506;
  v8 = *(v4 + 120);
  v9 = (*(v4 + 100) ^ 0x29B7AF39) - 152504608 + (((a1 ^ 0x1506) + 1399805209) & (2 * *(v4 + 100)));
  v10 = 914963389 * ((v5 - 14561658 - 2 * ((v5 - 232) & 0xFF21CF6E)) ^ 0xD3DD7E15);
  *(v5 - 184) = v1;
  *(v5 - 176) = v10 + a1 - 2690;
  *(v5 - 200) = v2;
  *(v5 - 232) = 1491323843 - v10;
  *(v5 - 168) = v4 + 104;
  *(v5 - 224) = v1;
  *(v5 - 216) = (((v3 ^ 0x369E2235) - 916333109) ^ ((v3 ^ 0xF90BD288) + 116665720) ^ ((v3 ^ 0xC45069EE) + 1001362962)) - v10 + 1996137537;
  *(v5 - 208) = v10 + (v8 ^ 0xDEFB39FB) + ((2 * v8) & 0xBDF673F6) + 732823344;
  *(v5 - 192) = v9 ^ v10;
  v11 = (*(v6 + 8 * (a1 + 2407)))(v5 - 232);
  return (*(v6 + 8 * ((((((v7 - 1593) | 0x1C10) + 8276) ^ v7 ^ 0x2D79) * (*(v5 - 212) == 16257999)) ^ v7)))(v11);
}

uint64_t sub_1E336E07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  (*(v32 + 8 * (v30 + 1232700997)))(a25 + a26, 0x100004077774924);
  v33 = (*(v32 + 76968))();
  *v31 = v33;
  return sub_1E336E124(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1E336E160()
{
  v3 = v0 - 2297;
  STACK[0x848] = *(v2 + 8 * (v0 - 7958));
  v4 = (v0 - 1288363988) & 0x4CCAD5F6;
  v5 = (*(v2 + 8 * (v0 + 1487)))(112, v1);
  v6 = STACK[0x330];
  STACK[0x3C0] = v5;
  return (*(v6 + 8 * (((((v3 + 1) ^ (v5 == 0)) & 1) * (v4 - 5562)) ^ v3)))();
}

uint64_t sub_1E336E184(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8B0] = a1;
  *a1 = 5;
  *(a1 + 4) = 0;
  v66 = (*(v65 + 8 * (v64 ^ 0x2673)))(120, 0x1000040F604211FLL);
  STACK[0x4F0] = v66;
  return (*(a64 + 8 * (((v66 != 0) * ((v64 + 1657) ^ 0x833 ^ (v64 + 2080273452) & 0x84018A72)) ^ v64)))();
}

uint64_t sub_1E336E210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  a21 = &a16;
  a23 = 1317436891 * (((&a21 | 0xE7B17E53) + (~&a21 | 0x184E81AC)) ^ 0x57B2E624) + 8154;
  v25 = (*(v24 + 77096))(&a21);
  return (*(v24 + 8 * ((1426 * (a22 == 16257999)) ^ v23)))(v25);
}

void sub_1E336E2B0()
{
  LODWORD(STACK[0xB14]) = 16215976;
  STACK[0x740] = v0;
  LODWORD(STACK[0x524]) = 16215976;
  STACK[0x8E0] = *(v2 + 16 * (v1 ^ 0x4FF));
  JUMPOUT(0x1E338E634);
}

uint64_t sub_1E336E328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, unsigned int a22, unsigned int a23, uint64_t a24, uint64_t a25)
{
  v31 = 1875091903 * (((&a21 | 0x807C2A2F) + (~&a21 | 0x7F83D5D0)) ^ 0xB609A9AD);
  a24 = a16;
  a22 = (v29 ^ 0xB8FFBFAA) + ((2 * v29) & 0x71FF7F54) + 1729951488 + v31;
  a23 = v31 + 7724;
  (*(v30 + 77160))(&a21);
  v32 = 1824088897 * (&a21 ^ 0x5869D362);
  a24 = v27;
  a25 = a16;
  a23 = (v28 ^ 0x4EB7FEDB) + ((2 * v28) & 0x9D6FFDB6) - v32 - 1250385;
  a21 = v32 + 3757;
  (*(v30 + 77048))(&a21);
  v33 = 1875091903 * (((&a21 | 0xF946327B) - &a21 + (&a21 & 0x6B9CD80)) ^ 0xCF33B1F8);
  a24 = a16;
  a22 = (v26 ^ 0xE5FEFFAE) + ((2 * v26) & 0xCBFDFF5C) + 975025916 + v33;
  a23 = v33 + 7724;
  v34 = (*(v30 + 77160))(&a21);
  return (*(v30 + 8 * ((4436 * (a21 == v25)) ^ 0x436u)))(v34);
}

uint64_t sub_1E336E52C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 2912;
  v4 = a2 - 4891;
  v5 = v4 ^ 0x50;
  v6 = v4 | 0x10;
  v7 = (*(v2 + 8 * (v3 ^ 0x31CB)))(a1, 990205657) == 0;
  return (*(v2 + 8 * ((v7 * (v5 ^ v6 ^ 0x46)) ^ v3)))();
}

uint64_t sub_1E336E58C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x16_t a7, int8x8_t a8)
{
  v13 = a3 - 8;
  v15.val[0].i64[0] = (v11 + v13 - 1) & a6;
  v15.val[0].i64[1] = (v11 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + v13) & 0xF ^ 8;
  *(a4 - 8 + v11) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a5 - 8 + v11)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v10 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v12 + 8 * (((a2 == v13) | (4 * (a2 == v13))) ^ a1)))();
}

uint64_t sub_1E336E59C@<X0>(uint64_t a1@<X0>, char a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((53 * (((v7 == 0) ^ (3 * (v5 ^ (a2 - 75)) + 1)) & 1)) ^ (v3 + v5 + 39))))();
}

uint64_t sub_1E336E690(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, char a5, char a6, uint64_t a7)
{
  v21 = LODWORD(STACK[0x3E4]) - 4763;
  *a3 = a5;
  *a4 = a6;
  v22 = a7 + v15 - 0x7E3601B1CFF728CALL;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v23 - ((2 * v23 + 0xD1FA1F3BF05E3C6) & 0x1522CB6B6EA8E362) - 0x1EDEC95069289C6CLL;
  v25 = __ROR8__(v24 ^ 0xBBCEBE4B0E0361EFLL, 8);
  v24 ^= 0xFB03985F214EEF5uLL;
  v26 = __ROR8__((v25 + v24) ^ v10, 8);
  v27 = *(STACK[0x3E8] + 8 * v21);
  v28 = (v25 + v24) ^ v10 ^ __ROR8__(v24, 61);
  v29 = (v26 + v28) ^ a2;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x92A42596A0926910) + 0x495212CB50493488) ^ 0x1E82601493ECC2DFLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v14;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v9;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x6E1E19DDB33CB23ALL;
  *v22 = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ v13) >> (8 * (v22 & 7u))) ^ HIBYTE(v11) ^ 0x82;
  v39 = __ROR8__((v22 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (0x29702F06207D0E1CLL - v39) & 0x79175E2C12C0C2DDLL | (v39 + v12) & 0x84E8A1D3ED3F3D22;
  v41 = __ROR8__(v40 ^ 0x4A4885D2AB97D283, 8);
  v40 ^= 0xFE36021C57805D99;
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0xE50EC2BE45B2CC5ELL) - 0xD789EA0DD2699D1) ^ 0x73F3511043EE721CLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0xC127DFD94147335ELL) - (v44 + v43) - 0x6093EFECA0A399AFLL) ^ 0x284DD6A8B2F99BFBLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__((((2 * (v47 + v46)) | 0x6287D6B764F85500) - (v47 + v46) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7, 8);
  v49 = (((2 * (v47 + v46)) | 0x6287D6B764F85500) - (v47 + v46) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7 ^ __ROR8__(v46, 61);
  v50 = (v48 + v49) ^ v14;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v9;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  *(v22 + 1) = (((__ROR8__((((2 * (v54 + v53)) | 0x360AC320C760007CLL) - (v54 + v53) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204, 8) + ((((2 * (v54 + v53)) | 0x360AC320C760007CLL) - (v54 + v53) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204 ^ __ROR8__(v53, 61))) ^ v13) >> (8 * ((v22 + 1) & 7))) ^ BYTE2(v11) ^ 0xD1;
  v55 = __ROR8__((v22 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = -2 - (((0x29702F06207D0E1CLL - v55) | 0xC0963AD6F9C849DALL) + ((v55 + v12) | 0x3F69C5290637B625));
  v57 = v56 ^ 0xF1C9E128409F5984;
  v56 ^= 0x45B766E6BC88D69EuLL;
  v58 = (__ROR8__(v57, 8) + v56) ^ v10;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ a2;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) & 0x3491A382ECB7AD6) - (v62 + v61) - 0x1A48D1C1765BD6CLL) ^ 0xA98B003C2B3FB4C3;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0xBC926A3ADA0D4D3ALL) - (v65 + v64) - 0x5E49351D6D06A69DLL) ^ 0xAC2B377BB2DE781FLL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0xC0B992F3FD58C89ALL) - (v68 + v67) - 0x605CC979FEAC644ELL) ^ 0x261DC64B870EBA4FLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((2 * (v71 + v70)) | 0x526500C12C79ADD0) - (v71 + v70) - 0x29328060963CD6E8) ^ 0x472C99BD250064D2;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  *(v22 + 2) = (((((2 * (v74 + v73)) & 0x243286079BD1E962) - (v74 + v73) + 0x6DE6BCFC32170B4ELL) ^ 0x58D4716CCF4C1D6CuLL) >> (8 * ((v22 + 2) & 7))) ^ BYTE1(v11) ^ 0x17;
  v75 = __ROR8__((v22 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = v75 - ((2 * v75 - 0x52E05E0C40FA1C3ALL) & 0xDABB7CACD8D286FCLL) + 0x43ED8F504BEC3561;
  v77 = v76 ^ 0xDC0265A8D53E5320;
  v76 ^= 0x687CE2662929DC3AuLL;
  v78 = __ROR8__(v77, 8);
  v79 = (((2 * (v78 + v76)) | 0xC1B61E594159C0E2) - (v78 + v76) - 0x60DB0F2CA0ACE071) ^ 0xE1AF3F63C19BF442;
  v80 = v79 ^ __ROR8__(v76, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a2;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x57D072DFC3A5F657;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = ((v16 & (2 * (v85 + v84))) - (v85 + v84) + v17) ^ v18;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v9;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x6E1E19DDB33CB23ALL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  *(v22 + 3) = v11 ^ v8 ^ (((v92 + v91 - (v19 & (2 * (v92 + v91))) + v20) ^ v7) >> (8 * ((a7 + v15 + 54 + 3) & 7)));
  return v27();
}

uint64_t sub_1E336E754@<X0>(int a1@<W8>)
{
  v3 = a1 + 1406;
  (*(v2 + 8 * (a1 ^ 0x2070)))();
  *(v1 + 368) = 0;
  return (*(v2 + 8 * (((*(v1 + 384) != 0) * (((v3 - 389) ^ 0x1507) - 7223)) ^ v3)))();
}

void sub_1E336E7A4()
{
  v6 = *(v0 + 24);
  v7 = __ROR8__((v6 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = (v7 + v5) ^ 0xE1AFA7ACF6E0968ELL;
  v9 = __ROR8__((v7 + v5) ^ 0x49E9423B6F16E7D2, 8);
  v10 = __ROR8__((0xE13B7065743737B0 - ((v9 + v8) | 0xE13B7065743737B0) + ((v9 + v8) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731, 8);
  v11 = (0xE13B7065743737B0 - ((v9 + v8) | 0xE13B7065743737B0) + ((v9 + v8) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731 ^ __ROR8__(v8, 61);
  v12 = (0xEA42215FB09D0055 - ((v10 + v11) | 0xEA42215FB09D0055) + ((v10 + v11) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ v2;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0xFBC8962DEA5A1818 - ((v16 + v15) | 0xFBC8962DEA5A1818) + ((v16 + v15) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0x95D159776768EC9ALL) - (v19 + v18) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0xD800CF627F7DCE02) - (v22 + v21) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  *(v6 + 4) = LODWORD(STACK[0x290]) ^ (((((2 * (v25 + v24)) & 0x4CC31BBC7D14A244) - (v25 + v24) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v6 + 4) & 7))) ^ 0x3E;
  v26 = __ROR8__((v6 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((2 * (v26 + v5)) | 0x3E48AF211110F5F6) - (v26 + v5) - 0x1F24579088887AFBLL;
  v28 = v27 ^ 0x56CD15ABE79E9D29;
  v27 ^= 0xFE8BF03C7E68EC75;
  v29 = __ROR8__(v28, 8);
  v30 = (((2 * (v29 + v27)) & 0x42379E9795A534D6) - (v29 + v27) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v31 = v30 ^ __ROR8__(v27, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) | 0xF087926224A8E20ALL) - (v32 + v31) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v2;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v4;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0x8BD1FBA0C354CF8ELL) - (v39 + v38) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v3;
  v43 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61));
  *(v6 + 5) = v1 ^ (((0xE4BAC51C5A42204CLL - (v43 | 0xE4BAC51C5A42204CLL) + (v43 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v6 + 5) & 7)));
  JUMPOUT(0x1E336EBC0);
}

uint64_t sub_1E336F570@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a3 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((v4 - 645251434) ^ 0x11FF)) ^ (v4 + a2))))();
}

uint64_t sub_1E336F60C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  *a5 = a8;
  if (a3)
  {
    v12 = a10 == 3 * (a1 ^ 0x297C) - 8997;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || v11 == 0;
  return (*(v10 + 8 * ((v14 * (((a1 + 1151571116) & 0xBB5C4FEA) - 1397)) ^ a1)))();
}

uint64_t sub_1E336F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v17 = (v15 - 7435396) & 0x7B7B7FFE;
  *(v13 + 8) = v14;
  *(v16 - 136) = v17 - (((((v16 - 136) | 0x6AEA11DC) ^ 0xFFFFFFFE) - (~(v16 - 136) | 0x9515EE23)) ^ 0x7F849E26) * v11 + 1729338848;
  v18 = (*(v12 + 8 * (v17 ^ 0x7B0A06BB)))(v16 - 136);
  return (*(v12 + 8 * ((((v17 - 2064257234) ^ 0x122E) * (v10 + 32 < a10)) ^ (v17 - 2064259957))))(v18);
}

void sub_1E336F860(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1E330CFB4);
}

uint64_t sub_1E336F878()
{
  v6 = *(v4 + (158 * v2 - 6286 - 969 * (((158 * v2 - 6286) & 0xFFFEu) / 0x3C9)));
  v7 = *(v5 + (353 * (v6 ^ 0x1E) + 298638 - 944 * (((353 * (v6 ^ 0x1Eu) + 298638) * v0) >> 32)));
  *(v4 + (158 * v2) % (v1 - 4999)) = v6 ^ 0x8D ^ (v7 - ((2 * v7) & 0x33) + 25);
  return (*(v3 + 8 * ((3649 * (v2 == 15)) ^ v1)))();
}

uint64_t sub_1E33703BC()
{
  v3 = 14 * (v1 ^ 0x241B);
  v4 = *(v0 + 8);
  STACK[0x4D0] = *(v2 + 8 * v3);
  return (*(v2 + 8 * (((v4 != 0) * ((v3 + 8422) ^ 0x246E)) ^ (v3 + 3202))))();
}

uint64_t sub_1E337042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, uint64_t a17)
{
  v20 = 1875091903 * ((&a14 - 48771246 - 2 * (&a14 & 0xFD17CF52)) ^ 0xCB624CD1);
  a17 = a11;
  a15 = (v17 ^ 0xE71CF6BF) + ((2 * v17) & 0xCE39ED7E) + 956284907 + v20;
  a16 = v20 + 7724;
  v21 = (*(v18 + 77160))(&a14);
  return (*(v18 + 8 * ((14114 * (a14 == v19)) ^ 0x151Bu)))(v21);
}

uint64_t sub_1E3370538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v63 = (a6 + 4772);
  v64 = (v62 ^ 0xFF8EBFFDF8FFF139) + ((2 * v62) & 0xFF1D7FFBF1FFE272) + v63 + 0x627FFFBBFFFBEB1DLL;
  v65 = v63 ^ 0x86;
  v66 = STACK[0x930];
  v67 = STACK[0x930] + 4;
  STACK[0x3D0] = STACK[0x6E0];
  STACK[0x2E0] = (v67 ^ 0xE76B6AF3B37FAF7FLL) + 0x7ED7D77DFCFFF497 + ((2 * v67) & 0xCED6D5E766FF5EFELL);
  v68 = v66 + (v65 ^ 0x146F);
  STACK[0x2D0] = STACK[0x928];
  v69 = STACK[0x920];
  STACK[0x2C0] = ((STACK[0x920] + 4) ^ 0x6EE3F2F1B2FFB75FLL) - 0x8A0B08002801349 + ((2 * (STACK[0x920] + 4)) & 0xDDC7E5E365FF6EBELL);
  STACK[0x2B0] = ((STACK[0x910] + 4) ^ 0x7EE3E77BFCFFADB7) - 0x18A0A50A4C8009A1 + ((2 * (STACK[0x910] + 4)) & 0xFDC7CEF7F9FF5B6ELL);
  STACK[0x2A0] = ((STACK[0x960] + 4) ^ 0xEFCB6279B07FFFFFLL) + 0x7677DFF7FFFFA417 + ((2 * (STACK[0x960] + 4)) & 0xDF96C4F360FFFFFELL);
  STACK[0x290] = ((STACK[0x980] + 4) ^ 0x7F63E379F7FFFDFFLL) - 0x1920A108478059E9 + ((2 * (STACK[0x980] + 4)) & 0xFEC7C6F3EFFFFBFELL);
  STACK[0x280] = ((STACK[0x900] + 4) ^ 0x7F5F77F1FAFFFC77) - 0x191C35804A805861 + ((2 * (STACK[0x900] + 4)) & 0xFEBEEFE3F5FFF8EELL);
  v70 = STACK[0x9A0];
  STACK[0x270] = ((STACK[0x9A0] + 4) ^ 0xFE576B7FF4FFEC1ELL) + 0x67EBD6F1BB7FB7F8 + ((2 * (STACK[0x9A0] + 4)) & 0xFCAED6FFE9FFD83CLL);
  v71 = STACK[0x9B0];
  STACK[0x250] = ((STACK[0x9B0] + 4) ^ 0x7E776BFDB1FFA6FELL) - 0x1834298C018002E8 + ((2 * (STACK[0x9B0] + 4)) & 0xFCEED7FB63FF4DFCLL);
  v72 = STACK[0x8F0];
  STACK[0x230] = ((STACK[0x8F0] + 4) ^ 0xFEDB56F1B47FFC9FLL) + 0x6767EB7FFBFFA777 + ((2 * (STACK[0x8F0] + 4)) & 0xFDB6ADE368FFF93ELL);
  v73 = STACK[0x9E8];
  STACK[0x220] = ((STACK[0x9E8] + 4) ^ 0xEFF34A79B07FBF36) + 0x764FF7F7FFFFE4E0 + ((2 * (STACK[0x9E8] + 4)) & 0xDFE694F360FF7E6CLL);
  STACK[0x210] = ((v66 + 6) ^ 0xFB5EBFFBFFFFF3FFLL) + 0x66AFFFBDF8FBFD3ALL + ((2 * (v66 + 6)) & 0xF6BD7FF7FFFFE7FELL);
  STACK[0x200] = ((v69 + 6) ^ 0x6AEFFFBDFAFBF53BLL) - 0x8E1400402000402 + ((2 * (v69 + 6)) & 0xD5DFFF7BF5F7EA76);
  STACK[0x2F0] = v68;
  STACK[0x260] = v70 + 10;
  STACK[0x240] = v71 + 10;
  STACK[0x350] = STACK[0x7A0];
  STACK[0x340] = STACK[0x668];
  STACK[0x310] = STACK[0x740];
  STACK[0x300] = STACK[0x7E8];
  STACK[0x330] = STACK[0x7A8];
  STACK[0x3C0] = STACK[0x478];
  v147 = STACK[0x998];
  STACK[0x3B0] = STACK[0x4F8];
  v146 = STACK[0x9A8];
  STACK[0x320] = STACK[0x520];
  STACK[0x3A0] = STACK[0x790];
  v145 = STACK[0x9E0];
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x8DA]);
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x8BE]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x8AE]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x88E]);
  v74 = a3 + v64 - 0x620EBFB9F8FBF139;
  v75 = __ROR8__(v74 & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = ((v75 - 0x6AF7234D0CC131D5) | 0x620C1E399F07C1E1) - ((v75 - 0x6AF7234D0CC131D5) | 0x9DF3E1C660F83E1ELL) - 0x620C1E399F07C1E2;
  v77 = __ROR8__(v76 ^ 0x2BE55C02F0112633, 8);
  v76 ^= 0x83A3B99569E7576FLL;
  v78 = (0x4734BEE9B76BBF54 - ((v77 + v76) | 0x4734BEE9B76BBF54) + ((v77 + v76) | 0xB8CB4116489440ABLL)) ^ 0x5C5636C9CFA9FFD5;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xF5A2F1B9B5D0B209;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (v82 + v81 - ((2 * (v82 + v81)) & 0xE23443A9F31DA1F6) - 0xEE5DE2B06712F05) ^ 0xA8799711AC57AFE4;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x61459D2AF01F24F7;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) & 0xD3AC5102AF83FE00) - (v87 + v86) + 0x1629D77EA83E00FFLL) ^ 0x72EACB7CD8BADE93;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (0x6090076F5B42657CLL - ((v90 + v89) | 0x6090076F5B42657CLL) + ((v90 + v89) | 0x9F6FF890A4BD9A83)) ^ 0x85451374E6EE3580;
  LODWORD(v89) = (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v89, 61))) ^ 0xAB3042D228875C41) >> (8 * (v74 & 7u))) ^ *v74;
  v92 = __ROR8__((v74 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v93 = (0xAF7234D0CC131D4 - v92) & 0x1376FB96DEDB029ELL | (v92 - 0x6AF7234D0CC131D5) & 0xE88904692124FD61;
  v94 = __ROR8__(v93 ^ 0x5E9FB9ADB1CDE54CLL, 8);
  v93 ^= 0xF6D95C3A283B9410;
  v95 = (v94 + v93) ^ 0xE49D77DF873DBF7ELL;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0xF5A2F1B9B5D0B209;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = __ROR8__((((2 * (v99 + v98)) & 0xF97DE0A8B699E254) - (v99 + v98) + 0x3410FABA4B30ED5) ^ 0x5A22B96EF16A71CALL, 8);
  v101 = (((2 * (v99 + v98)) & 0xF97DE0A8B699E254) - (v99 + v98) + 0x3410FABA4B30ED5) ^ 0x5A22B96EF16A71CALL ^ __ROR8__(v98, 61);
  v102 = (((2 * (v100 + v101)) | 0x619515DA41C001B4) - (v100 + v101) - 0x30CA8AED20E000DALL) ^ 0x518F17C7D0FF242DLL;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x64C31C027084DE6CLL;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (0x520A6A7D4150B8F6 - ((v106 + v105) | 0x520A6A7D4150B8F6) + ((v106 + v105) | 0xADF59582BEAF4709)) ^ 0xB7DF7E66FCFCE80ALL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  LODWORD(v91) = (((((2 * (v109 + v108)) & 0xA59E74269BC385B2) - (v109 + v108) + 0x2D30C5ECB21E3D26) ^ 0x8600873E9A996167) >> (8 * ((v74 + 1) & 7))) ^ *(v74 + 1);
  v110 = __ROR8__((v74 + 2) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v111 = __ROR8__(v110 ^ 0x49E9423B6F16E7D2, 8);
  v110 ^= 0xE1AFA7ACF6E0968ELL;
  v112 = (v111 + v110) ^ 0xE49D77DF873DBF7ELL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0xF5A2F1B9B5D0B209;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0x5963B6C555D97F1FLL;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x61459D2AF01F24F7;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (v120 + v119 - ((2 * (v120 + v119)) & 0xC4D307BC96551EAELL) + 0x626983DE4B2A8F57) ^ 0x6AA9FDC3BAE513BLL;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (v123 + v122 - ((2 * (v123 + v122)) & 0xF9C792D90B62E070) + 0x7CE3C96C85B17038) ^ 0x66C92288C7E2DF3BLL;
  v125 = __ROR8__(v124, 8);
  v126 = __ROR8__(v122, 61);
  LODWORD(v108) = (((((2 * (v125 + (v124 ^ v126))) | 0x84D53DF2213B4FA4) - (v125 + (v124 ^ v126)) + 0x3D956106EF62582ELL) ^ 0x695ADC2B381AFB93) >> (8 * ((v74 + 2) & 7))) ^ *(v74 + 2);
  v127 = *(v74 + 3);
  v74 += 3;
  v128 = __ROR8__(v74 & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = (v128 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v130 = (__ROR8__((v128 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v129) ^ 0xE49D77DF873DBF7ELL;
  v131 = __ROR8__(v130, 8);
  v132 = v130 ^ __ROR8__(v129, 61);
  v133 = (((2 * (v131 + v132)) & 0xCC6D33EEA00FE42) - (v131 + v132) - 0x663699F75007F22) ^ 0xC3E67D93F2F32D7;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0x5963B6C555D97F1FLL;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (((2 * (v137 + v136)) | 0x1D5EE00E4A8A2CA0) - (v137 + v136) - 0xEAF700725451650) ^ 0x6FEAED2DD55A32A7;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = __ROR8__(v138, 8);
  v141 = __ROR8__((((2 * ((v140 + v139) ^ 0x3D2CC4E5C304AE09)) & 0x5D07E2954C9434CALL) - ((v140 + v139) ^ 0x3D2CC4E5C304AE09) - 0x2E83F14AA64A1A66) ^ 0x8893D652EA3595FFLL, 8);
  v142 = (((2 * ((v140 + v139) ^ 0x3D2CC4E5C304AE09)) & 0x5D07E2954C9434CALL) - ((v140 + v139) ^ 0x3D2CC4E5C304AE09) - 0x2E83F14AA64A1A66) ^ 0x8893D652EA3595FFLL ^ __ROR8__(v139, 61);
  LODWORD(v74) = (((__ROR8__((v141 + v142) ^ 0x1A2AEBE44253AF03, 8) + ((v141 + v142) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v142, 61))) ^ 0xAB3042D228875C41) >> (8 * (v74 & 7u))) ^ v127;
  LODWORD(v89) = (v91 << 16) | (v89 << 24) | (v108 << 8) | v74;
  v143 = *(STACK[0x3E8] + 8 * a6);
  return v143(0xCC6D33EEA00FE42, 0x84D53DF2213B4FA4, v89 + 197499219 - 2 * (v89 & 0xBC59957 ^ v74 & 4), 0xF99C96608AFF80DELL, 0x3D956106EF62582ELL, v143, 0xC3E67D93F2F32D7, 0x1D5EE00E4A8A2CA0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, ((v73 + 10) ^ 0xEBCEFFBDFEFBF13DLL) + 0x763FBFFBF9FFFFFCLL + ((2 * (v73 + 10)) & 0xD79DFF7BFDF7E27ALL), a42, ((v71 + 10) ^ 0xFF5EBFBDFAFFF37FLL) + 0x62AFFFFBFDFBFDBALL + ((2 * (v71 + 10)) & 0xFEBD7F7BF5FFE6FELL), a44, ((v70 + 10) ^ 0xFBDFBFBDF9FFF77FLL) + 0x662EFFFBFEFBF9BALL + ((2 * (v70 + 10)) & 0xF7BF7F7BF3FFEEFELL), a46, (v68 ^ 0xE65FFFB9F8FBF1F9) + 0x7BAEBFFFFFFFFF40 + ((2 * v68) & 0xCCBFFF73F1F7E3F2), a48, v145, a50, v146, a52, v147, a54, v73 + 10, a56, ((v73 + 6) ^ 0xE21EFFFBF8FFF7FBLL) + 0x7FEFBFBDFFFBF93ELL + ((2 * (v73 + 6)) & 0xC43DFFF7F1FFEFF6), a58, ((v72 + 6) ^ 0x6ABEFFFFFEFBF7BFLL) - 0x8B0404606000686 + ((2 * (v72 + 6)) & 0xD57DFFFFFDF7EF7ELL), a60, ((v71 + 6) ^ 0x73EFBFBFF9FBF9FBLL) - 0x11E10006010008C2 + ((2 * (v71 + 6)) & 0xE7DF7F7FF3F7F3F6), a62, ((v70 + 6) ^ 0x761EFFBBFAFFFD7BLL) - 0x1410400202040C42 + ((2 * (v70 + 6)) & 0xEC3DFF77F5FFFAF6));
}

uint64_t sub_1E3370670(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(v5 + 8 * (v4 + 4001)))(LODWORD(STACK[0x8F4]) ^ 0xBC59396 ^ (((v4 + 2559) | 0x420u) - 6491), 0x100004077774924);
  v8 = STACK[0x400];
  STACK[0xAE8] = v7;
  if (v7)
  {
    v9 = 16257999;
  }

  else
  {
    v9 = a4;
  }

  LODWORD(STACK[0xAF4]) = v9;
  return (*(v8 + 8 * ((89 * (v7 == 0)) ^ v4)))();
}

void sub_1E337087C()
{
  v4 = v0[13];
  *(v2 - 116) = v3;
  v5 = *(&off_1F5DB1610 + v1 - 2321) - 12;
  v6 = v5[v4 ^ 0xE5];
  LODWORD(v4) = v5[(v1 - 38) & 0xFD ^ v0[1] ^ 0xF3];
  v7 = *(&off_1F5DB1610 + (v1 ^ 0xB2D));
  v8 = *(v7 + (v0[11] ^ 0xBFLL));
  v9 = *(v7 + (v0[7] ^ 0xC7));
  v10 = *(&off_1F5DB1610 + (v1 ^ 0xB32)) - 4;
  v11 = *(&off_1F5DB1610 + (v1 ^ 0xA95)) - 12;
  v12 = (v11[v0[8] ^ 0xBLL] ^ v0[8]) << 24;
  v13 = (v12 ^ 0x7438FFFF) & ((v8 - ((2 * v8) & 0xD6) + 1103528811) & 0xEDC3 ^ 0xB318CBAF ^ ((v10[v0[10] ^ 0xA3] << 8) ^ 0xDF30AD3C) & ((v8 - ((2 * v8) & 0xD6) + 1103528811) ^ 0xBE387C54));
  v14 = v12 & 0x93000000;
  v15 = v10[v0[2] ^ 0x95] << 8;
  v16 = (((v11[v0[4] ^ 0x81] ^ v0[4]) << 24) ^ 0x3AC7AE75) & (v9 ^ 0xFFEFAF67) | v9 & 0x8A;
  v17 = *(v7 + (v0[3] ^ 9));
  v18 = (v17 - ((2 * v17) & 0x112) + 1399904649) & 0x101007D1 ^ 0x8AF4974 ^ ((v17 - ((2 * v17) & 0x112) + 1399904649) ^ 0xAC8F2676) & ((v15 & 0xAD00 | (((((v11[*v0 ^ 0x70] ^ *v0) << 24) ^ 0x95FE4D02) & ((v4 << 16) ^ 0xFFCC4D02) & 0xFFFEFFFF | ((v4 & 1) << 16)) ^ 0x43631F81) & (v15 ^ 0xFFFF57DF)) ^ 0x9775BEAD);
  v19 = v5[v0[9] ^ 0x24] << 16;
  v20 = (v19 & 0x410000 | 0x2118F41A) ^ (v19 ^ 0xFF8FFFFF) & (v14 ^ 0x7396B856 ^ v13);
  v21 = *(v7 + (v0[15] ^ 0x53));
  v22 = ((v10[v0[6] ^ 0xBELL] << 8) ^ 0xF6A22AD7) & (v16 ^ 0x896D5100) ^ v16 & 0x9000828;
  LODWORD(v5) = v5[v0[5] ^ 0xA1];
  v23 = v11[v0[12] ^ 0x1ELL] ^ v0[12];
  v24 = v10[v0[14] ^ 0xE8];
  LODWORD(v5) = ((v5 << 16) ^ 0xDF37BB56) & (v22 ^ 0x295D95A9);
  LODWORD(v10) = v22 & 0x200244A9;
  v25 = ((((v24 << 8) ^ 0xFFF00FFF) & ((v23 << 24) ^ 0x6A105197) | (v24 << 8) & 0xAE00) ^ 0x1506A3AD) & (((v21 ^ 0xFFFFFE1F) & ((v6 << 16) ^ 0x8E372268) | v21 & 0x97) ^ 0x7158DDD4) ^ ((v21 ^ 0xFFFFFE1F) & ((v6 << 16) ^ 0x8E372268) & 0x6E902C5 | v21 & 0x85);
  v26 = *(&off_1F5DB1610 + (v1 ^ 0xA60)) - 12;
  v27 = *&v26[4 * (v21 ^ 0x63)];
  *(v2 - 120) = v25;
  v28 = *(&off_1F5DB1610 + v1 - 2506) - 8;
  LODWORD(v21) = *&v28[4 * (BYTE1(v25) ^ 0x2E)];
  v29 = v23 ^ 0x99u;
  v30 = *(&off_1F5DB1610 + v1 - 2443) - 12;
  v31 = *&v30[4 * v29];
  v32 = *(&off_1F5DB1610 + (v1 ^ 0xAB1)) - 12;
  LODWORD(v6) = *&v32[4 * (v6 ^ 0x59)];
  LODWORD(v5) = v10 ^ 0x26F3474B ^ v5;
  *(v2 - 152) = v20;
  *(v2 - 148) = v18;
  v33 = v27 ^ v18 ^ v31 ^ v6 ^ v21;
  *(v2 - 160) = v33 ^ 0x345F0CD1;
  *(v2 - 156) = v5;
  LODWORD(v6) = v33 ^ 0x345F0CD1 ^ v5 ^ v20;
  v34 = v33 ^ 0x345F0CD1 ^ v5;
  LODWORD(v21) = v6 ^ v25;
  v35 = v6 ^ 0xA1184015;
  v36 = *&v32[4 * (((v21 ^ 0x2F971083) >> 16) ^ 0x94)] ^ *&v28[4 * (((v21 ^ 0x1083) >> 8) ^ 0x28)] ^ v33 ^ *&v26[4 * (v21 ^ 0xF4)] ^ *&v30[4 * (BYTE3(v21) ^ 0x6C)];
  *(v2 - 124) = v36;
  v37 = v36 ^ 0x1E020754;
  v38 = v36 ^ 0x1E020754 ^ v34;
  *(v2 - 128) = v38;
  LODWORD(v6) = v38 ^ 0x3395A5C9 ^ v6 ^ 0xA1184015;
  *(v2 - 172) = v6;
  *(v2 - 168) = v21 ^ 0x57141457;
  v54 = v6 ^ v21 ^ 0x57141457;
  v53 = *&v32[4 * (BYTE2(v54) ^ 0xC9)] ^ *&v28[4 * (BYTE1(v54) ^ 0x98)] ^ *&v30[4 * (HIBYTE(v54) ^ 0x2B)] ^ v37 ^ *&v26[4 * (v54 ^ 0xBE)];
  *(v2 - 164) = v35;
  v39 = v53 ^ 0x345F0CD1 ^ v35;
  *(v2 - 176) = v39;
  v40 = v39 ^ 0x8EC4782F ^ v54;
  LODWORD(v21) = *&v30[4 * (HIBYTE(v40) ^ 0x5C)] ^ *&v32[4 * (BYTE2(v40) ^ 0xA7)] ^ v53 ^ 0x345F0CD1;
  v41 = ((v21 ^ 0x59CAC331) - 197884131) ^ ((v21 ^ 0xE382C69B) + 1316782775) ^ ((v21 ^ 0xE849BE78) + 1169685078);
  v42 = *&v28[4 * (BYTE1(v40) ^ 0x95)];
  LODWORD(v10) = v42 ^ 0x9D47A7D4;
  LODWORD(v21) = v41 - (((v21 ^ v42 ^ 0x9D47A7D4 ^ 0x28A6F7CF) - 34345125) ^ ((v21 ^ v42 ^ 0x9D47A7D4 ^ 0xB389AAD4) + 1725739586) ^ ((v21 ^ v42 ^ 0x9D47A7D4 ^ 0x4A1FC4A1) - 1622483915)) + 1021507547;
  v43 = ((2 * (v21 & 0xC7828955)) & 0x3FFFE | v21 & 0xC7828955) ^ (2 * (v21 & 0xC7828955)) & (v21 ^ 0xC76B1FFE);
  v44 = ((2 * (v21 ^ 0xC76B1FFE)) ^ 0x1D32D56) & (v21 ^ 0xC76B1FFE) ^ (2 * (v21 ^ 0xC76B1FFE)) & 0xE996AA;
  v45 = (v44 ^ 0x209401) & (4 * v43) ^ v43;
  v46 = ((4 * (v44 ^ 0x2892A9)) ^ 0x3A65AAC) & (v44 ^ 0x2892A9) ^ (4 * (v44 ^ 0x2892A9)) & 0xE996A8;
  v47 = (v46 ^ 0xA012A0) & (16 * v45) ^ v45;
  v48 = ((16 * (v46 ^ 0x498403)) ^ 0xE996AB0) & (v46 ^ 0x498403) ^ (16 * (v46 ^ 0x498403)) & 0xE996A0;
  v49 = v47 ^ 0xE996AB ^ (v48 ^ 0x890200) & (v47 << 8);
  v50 = -1901871719 - (((v42 ^ 0xDED8C925) - 1134522097) ^ ((v42 ^ 0x8C2613EC) - 291615800) ^ ((v42 ^ 0x4C885F75) + 774899551));
  LODWORD(v10) = v50 ^ v10 ^ ((v50 ^ 0x9E60541F) + 1883982818) ^ ((v50 ^ 0x63E04D4) - 401269973) ^ ((v50 ^ 0xF6354777) + 404641930) ^ ((v50 ^ 0x7FBFF7BD) - 1852512188) ^ v21 ^ (2 * ((v49 << 16) & 0xE90000 ^ v49 ^ ((v49 << 16) ^ 0x16AB0000) & (((v48 ^ 0x60940B) << 8) & 0xE90000 ^ 0x690000 ^ (((v48 ^ 0x60940B) << 8) ^ 0x69960000) & (v48 ^ 0x60940B))));
  v51 = v41 + 252037886 + (((v10 ^ 0x635CE2AE) + 642101989) ^ ((v10 ^ 0xD4D33D8B) - 1849004606) ^ ((v10 ^ 0xE269B94F) - 1485772538));
  v52 = *&v26[4 * (v40 ^ 0xB1)] ^ v51 ^ ((v51 ^ 0x974802A3) + 1219689540) ^ ((v51 ^ 0x7E486CE2) - 1582132733) ^ ((v51 ^ 0x36FE90A1) - 385585598) ^ ((v51 ^ 0xFFFBFFFF) + 536936736) ^ 0x8EE91953;
  *(v2 - 188) = v52 ^ v53 ^ 0x345F0CD1 ^ v38 ^ 0x3395A5C9;
  *(v2 - 180) = v40;
  *(v2 - 184) = v52;
  JUMPOUT(0x1E3371E74);
}

uint64_t sub_1E3373534@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = v2 ^ 0x27B9;
  v4 = STACK[0x558];
  *v4 = 0x431A33AA2E6D965FLL;
  *(v4 + 8) = *(a2 + 108) + 197499219 - ((*(a2 + 108) << (v3 - 68)) & (v3 + 394989153));
  *(v4 + 16) = 0;
  *(v4 + 24) = 0x1F146D841;
  *(v4 + 32) = 197499223;
  *(v4 + 36) = 997767531;
  STACK[0x460] = v4;
  LODWORD(STACK[0x50C]) = 0;
  STACK[0x7C0] = 0;
  v5 = (*(a1 + 8 * (v3 ^ 0x1E7)))(128, 0x10800400FED9166);
  v6 = STACK[0x3E8];
  STACK[0x6C0] = v5;
  return (*(v6 + 8 * ((25 * (v5 != 0)) ^ v3)))();
}

uint64_t sub_1E3373608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = 956911519 * (((v22 | 0x9D1F90898DD6F5CELL) - (v22 & 0x9D1F90898DD6F5CELL)) ^ 0xD829E555674785CBLL);
  a12 = v23 ^ 0x3FE;
  a14 = v20 - ((2 * v20) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v23;
  a15 = a9;
  (*(v21 + 76792))(&a12);
  v24 = 1824088897 * ((2 * (v22 & 0x5167E848) - v22 - 1365764173) ^ 0xF6F1C4D1);
  a15 = v18;
  a16 = a9;
  a12 = v24 + 3757;
  LODWORD(a14) = (v19 ^ 0x7EECEBCF) + ((2 * v19) & 0xFDD9D79E) - v24 - 810025285;
  (*(v21 + 77048))(&a12);
  v25 = 1824088897 * (((v22 | 0xA8715903) - (v22 & 0xA8715903)) ^ 0xF0188A61);
  a15 = v16;
  a16 = a9;
  LODWORD(a14) = (v17 ^ 0x7EE5FFCE) + ((2 * v17) & 0xFDCBFF9C) - v25 - 809571652;
  a12 = v25 + 3757;
  v26 = (*(v21 + 77048))(&a12);
  return (*(v21 + 8 * ((3245 * (a13 == 16257999)) ^ 0x62Du)))(v26);
}

uint64_t sub_1E33737F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * (((&a15 | 0x43D5A2F7) + (~&a15 | 0xBC2A5D08)) ^ 0x71CEF966);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((4757 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_1E33738AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  *a26 = 0;
  a26[1] = 0;
  *(v30 - 176) = a26;
  *(v30 - 256) = 2140014779;
  v31 = *(v29 + 8 * ((3884 * (((((((((v26 - 134) | 0x400) - 231328585) & 0xDC9DD6F) - 1379) ^ 0x536A8196) - 1487866823) ^ 0xE81E07Au) + 197499219 < 0xFFFFFFF6)) ^ ((v26 - 134) | 0x400)));
  LODWORD(STACK[0x260]) = v28 - 5;
  return v31(0, 2140014779, a3, a4, a5, v27);
}

uint64_t sub_1E3373A18(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  *(a1 + 56) = v1;
  *(a1 + 64) = v1;
  *(a1 + 72) = 0;
  v3 = STACK[0x7D8];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v1;
  *(v3 + 96) = v1;
  *(v3 + 108) = 0;
  *v2 = v3;
  return (STACK[0x830])();
}

uint64_t sub_1E33751F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = v4;
  v7 = STACK[0x538];
  STACK[0x850] = STACK[0x538];
  return (*(v6 + 8 * (((((v7 == 0) ^ (v5 + 21)) & 1) * (((v5 - 6710) | 0x98) - 109)) ^ (v5 - 2375))))(a1, a2, a3, 16215976);
}

uint64_t sub_1E3375204(uint64_t a1)
{
  v5 = v3 + 425242022;
  v6 = v5 < 0x39C001C0;
  v7 = v4 + 968884672 < v5;
  if (v6 != v4 > v2 - 968885974)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * (v2 | (32 * ((((v2 - 229) ^ v7) & 1) == 0)))))(a1, 925652384);
}

uint64_t sub_1E337540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v21 = (&a13 ^ 0x5869D362) * v18;
  a14 = v21 + 712766328;
  a15 = a9;
  a16 = &a11;
  a17 = -654855621 - v21;
  a18 = v21 + v20 + 1674577533;
  v22 = (*(v19 + 8 * (v20 ^ 0x23A5)))(&a13);
  return (*(v19 + 8 * (((a13 == ((v20 + 1778719150) & 0x24F4 ^ 0xF8171F)) * (2 * (v20 ^ 0x574) + 3255)) ^ v20)))(v22);
}

uint64_t sub_1E33754CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = LODWORD(STACK[0x3E4]);
  LODWORD(STACK[0x8DC]) = a3;
  v6 = (a3 ^ 0xBC59953) + STACK[0x2F0];
  STACK[0x8E0] = v6;
  return (*(STACK[0x3E8] + 8 * ((v5 + 3023) ^ (116 * (v6 <= STACK[0x2D0])))))(a1, a2, a3, a4, a5, v5);
}

uint64_t sub_1E3375558()
{
  STACK[0xA18] = v1;
  v3 = STACK[0x730];
  STACK[0xA20] = STACK[0x730];
  return (*(v2 + 8 * ((1885 * (v1 - v3 > ((v0 - 3639) ^ 0x1624u) - 6082)) ^ (v0 + 4570))))();
}

uint64_t sub_1E33755B4(uint64_t a1)
{
  v4 = STACK[0x6E0];
  LODWORD(STACK[0x4E4]) = v2;
  *STACK[0x6F8] = v4;
  LODWORD(STACK[0x65C]) = 16257999;
  return (*(v3 + 8 * ((2413 * (((((((((v1 - 743062270) & 0x2C4A2BBB) - 811) | 0x242) - 468804403) & 0x1BF15BFB) + 2452) ^ (v2 + 2969)) == 16257999)) ^ (((((v1 - 743062270) & 0x2C4A2BBB) - 811) | 0x242) + 3100))))(a1, 16215976);
}

uint64_t sub_1E33755EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = v70 + a13 + v69;
  v72 = a1 + v71 - a12;
  STACK[0x360] = v72 - 0x67EBC7BE9E6FE604;
  STACK[0x350] = v72 + v64;
  STACK[0x340] = v72 - 0x67EBC7BE9E6FE602;
  v73 = STACK[0x300];
  v74 = (LODWORD(STACK[0x300]) + 1434);
  STACK[0x330] = a1 + v71 + v74 - a12 - 0x67EBC7BE9E6FF77ELL;
  STACK[0x2F0] = v74;
  STACK[0x320] = v66 - 4482 + v69 + v74 - a12;
  STACK[0x310] = v72 - 0x67EBC7BE9E6FE600;
  STACK[0x2E0] = v69 & 0xFFFFFFF8;
  v75 = v66 + v69 - a12;
  v76.i64[0] = v75 - 7;
  v76.i64[1] = v75 - 8;
  v77.i64[0] = STACK[0x320];
  v77.i64[1] = v75 - 6;
  v78.i64[0] = v75 - 3;
  v78.i64[1] = v75 - 4;
  v79.i64[0] = v75 - 1;
  v79.i64[1] = v75 - 2;
  v80.i64[0] = STACK[0x350];
  v80.i64[1] = STACK[0x360];
  v81.i64[0] = STACK[0x330];
  v81.i64[1] = STACK[0x340];
  v82.i64[0] = v72 - 0x67EBC7BE9E6FE5FFLL;
  v82.i64[1] = STACK[0x310];
  v83.i64[0] = v72 + v65;
  v83.i64[1] = v72 - 0x67EBC7BE9E6FE5FELL;
  v84 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v85 = vandq_s8(v79, v84);
  v86 = vandq_s8(v78, v84);
  v87 = vandq_s8(v77, v84);
  v88 = vandq_s8(v76, v84);
  v89 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v93 = vdupq_n_s64(0x38uLL);
  v94 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v95 = vaddq_s64(v92, v94);
  v96 = vaddq_s64(v91, v94);
  v97 = vaddq_s64(v90, v94);
  v98 = vaddq_s64(v89, v94);
  v99 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v100 = veorq_s8(v98, v99);
  v101 = veorq_s8(v97, v99);
  v102 = veorq_s8(v96, v99);
  v103 = veorq_s8(v95, v99);
  v104 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v105 = veorq_s8(v95, v104);
  v106 = veorq_s8(v96, v104);
  v107 = veorq_s8(v97, v104);
  v108 = veorq_s8(v98, v104);
  v109 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v111 = vaddq_s64(v109, v105);
  v112 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v113 = veorq_s8(v111, v112);
  v114 = veorq_s8(v110, v112);
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v107), v112);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v108), v112);
  v117 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v121 = veorq_s8(v115, v119);
  v122 = veorq_s8(v114, v118);
  v123 = veorq_s8(v113, v117);
  v124 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v123);
  v128 = vaddq_s64(v126, v122);
  v129 = vaddq_s64(v125, v121);
  v130 = vaddq_s64(v124, v120);
  v131 = vdupq_n_s64(0x444F902103838ADEuLL);
  v132 = vdupq_n_s64(0x5DD837EF7E3E3A91uLL);
  v133 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), v131), v127), v132);
  v134 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), v131), v128), v132);
  v135 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), v131), v129), v132);
  v136 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v131), v130), v132);
  v137 = vdupq_n_s64(0x578539A934117766uLL);
  v138 = veorq_s8(v136, v137);
  v139 = veorq_s8(v135, v137);
  v140 = veorq_s8(v134, v137);
  v141 = veorq_s8(v133, v137);
  v142 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v145 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v146 = veorq_s8(v140, v144);
  v147 = veorq_s8(v139, v143);
  v148 = veorq_s8(v138, v142);
  v149 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v148);
  v153 = vaddq_s64(v149, v145);
  v154 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v155 = veorq_s8(v153, v154);
  v156 = veorq_s8(vaddq_s64(v150, v146), v154);
  v157 = veorq_s8(vaddq_s64(v151, v147), v154);
  v158 = veorq_s8(v152, v154);
  v159 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v162 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v163 = veorq_s8(v157, v161);
  v164 = veorq_s8(v156, v160);
  v165 = veorq_s8(v155, v159);
  v166 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v165);
  v170 = vaddq_s64(v166, v162);
  v171 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v172 = veorq_s8(v170, v171);
  v173 = veorq_s8(vaddq_s64(v167, v163), v171);
  v174 = veorq_s8(vaddq_s64(v168, v164), v171);
  v175 = veorq_s8(v169, v171);
  v176 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v179 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v180 = veorq_s8(v174, v178);
  v181 = veorq_s8(v173, v177);
  v182 = veorq_s8(v172, v176);
  v183 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v182);
  v187 = vaddq_s64(v185, v181);
  v188 = vaddq_s64(v184, v180);
  v189 = vaddq_s64(v183, v179);
  v190 = vdupq_n_s64(0x953D53DE148E1D56);
  v191 = vdupq_n_s64(a4);
  v192 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v186, v186), v190), v186), v191);
  v193 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187, v187), v190), v187), v191);
  v194 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), v190), v188), v191);
  v195 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v189, v189), v190), v189), v191);
  v196 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v197 = veorq_s8(v195, v196);
  v198 = veorq_s8(v194, v196);
  v199 = veorq_s8(v193, v196);
  v200 = veorq_s8(v192, v196);
  v201 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v204 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v205 = veorq_s8(v199, v203);
  v206 = veorq_s8(v198, v202);
  v207 = veorq_s8(v197, v201);
  v208 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v207);
  v212 = vaddq_s64(v208, v204);
  v213 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v214 = veorq_s8(v212, v213);
  v215 = veorq_s8(vaddq_s64(v209, v205), v213);
  v216 = veorq_s8(vaddq_s64(v210, v206), v213);
  v217 = veorq_s8(v211, v213);
  v218 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v221 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, v218));
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), veorq_s8(v215, v219));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), veorq_s8(v216, v220));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v221);
  v226 = vdupq_n_s64(0x4AC0565324D70174uLL);
  v227 = vdupq_n_s64(v67);
  v228 = vaddq_s64(vsubq_s64(vorrq_s8(v225, v226), vorrq_s8(v225, v227)), v227);
  v229 = vaddq_s64(vsubq_s64(vorrq_s8(v224, v226), vorrq_s8(v224, v227)), v227);
  v230 = vaddq_s64(vsubq_s64(vorrq_s8(v223, v226), vorrq_s8(v223, v227)), v227);
  v231 = vaddq_s64(vsubq_s64(vorrq_s8(v222, v226), vorrq_s8(v222, v227)), v227);
  v232 = vdupq_n_s64(0xE1F014810C505D35);
  v233 = veorq_s8(v231, v232);
  v234 = veorq_s8(v230, v232);
  v235 = veorq_s8(v229, v232);
  v236 = veorq_s8(v228, v232);
  v237 = vandq_s8(vshlq_n_s64(v76, 3uLL), v93);
  v238 = vandq_s8(vshlq_n_s64(v77, 3uLL), v93);
  v239 = vshlq_u64(v236, vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), v93)));
  v240 = vshlq_u64(v235, vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), v93)));
  v241 = vshlq_u64(v234, vnegq_s64(v238));
  v242 = vshlq_u64(v233, vnegq_s64(v237));
  v243 = vandq_s8(v83, v84);
  v244 = vandq_s8(v82, v84);
  v245 = vandq_s8(v81, v84);
  v246 = vandq_s8(v80, v84);
  v247 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v249 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v251 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v252 = vaddq_s64(vaddq_s64(v247, v247), v251);
  v253 = vaddq_s64(vaddq_s64(v248, v248), v251);
  v254 = vaddq_s64(vaddq_s64(v249, v249), v251);
  v255 = vaddq_s64(vaddq_s64(v250, v250), v251);
  v256 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v257 = vsubq_s64(v250, vandq_s8(v255, v256));
  v258 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v259 = vaddq_s64(v257, v258);
  v260 = vaddq_s64(vsubq_s64(v249, vandq_s8(v254, v256)), v258);
  v261 = vaddq_s64(vsubq_s64(v248, vandq_s8(v253, v256)), v258);
  v262 = vaddq_s64(vsubq_s64(v247, vandq_s8(v252, v256)), v258);
  v263 = vdupq_n_s64(0xCF99C25E83E78D67);
  v264 = veorq_s8(v262, v263);
  v265 = veorq_s8(v261, v263);
  v266 = veorq_s8(v260, v263);
  v267 = veorq_s8(v259, v263);
  v268 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v269 = veorq_s8(v259, v268);
  v270 = veorq_s8(v260, v268);
  v271 = veorq_s8(v261, v268);
  v272 = veorq_s8(v262, v268);
  v273 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v270);
  v275 = vaddq_s64(v273, v269);
  v276 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v277 = veorq_s8(v275, v276);
  v278 = veorq_s8(v274, v276);
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v271), v276);
  v280 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v272), v276);
  v281 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v284 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v285 = veorq_s8(v279, v283);
  v286 = veorq_s8(v278, v282);
  v287 = veorq_s8(v277, v281);
  v288 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v289 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v290 = vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL);
  v291 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v287);
  v292 = vaddq_s64(v290, v286);
  v293 = vaddq_s64(v289, v285);
  v294 = vaddq_s64(v288, v284);
  v295 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v296 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v297 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v291, v291), v295), v291), v296);
  v298 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v292, v292), v295), v292), v296);
  v299 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v293, v293), v295), v293), v296);
  v300 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v294, v294), v295), v294), v296);
  v301 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v302 = veorq_s8(v300, v301);
  v303 = veorq_s8(v299, v301);
  v304 = veorq_s8(v298, v301);
  v305 = veorq_s8(v297, v301);
  v306 = vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v309 = veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v310 = veorq_s8(v304, v308);
  v311 = veorq_s8(v303, v307);
  v312 = veorq_s8(v302, v306);
  v313 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v314 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v315 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v316 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL), v312);
  v317 = vaddq_s64(v315, v311);
  v318 = vaddq_s64(v314, v310);
  v319 = vaddq_s64(v313, v309);
  v320 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  v321 = vdupq_n_s64(v68);
  v322 = vaddq_s64(vsubq_s64(vorrq_s8(v319, v320), vorrq_s8(v319, v321)), v321);
  v323 = vaddq_s64(vsubq_s64(vorrq_s8(v318, v320), vorrq_s8(v318, v321)), v321);
  v324 = vaddq_s64(vsubq_s64(vorrq_s8(v317, v320), vorrq_s8(v317, v321)), v321);
  v325 = vaddq_s64(vsubq_s64(vorrq_s8(v316, v320), vorrq_s8(v316, v321)), v321);
  v326 = vdupq_n_s64(0x5C9047B9C167908FuLL);
  v327 = veorq_s8(v325, v326);
  v328 = veorq_s8(v324, v326);
  v329 = veorq_s8(v323, v326);
  v330 = veorq_s8(v322, v326);
  v331 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v333 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v334 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL));
  v335 = veorq_s8(v328, v332);
  v336 = veorq_s8(v327, v331);
  v337 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v339 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v336);
  v340 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), v335);
  v341 = vaddq_s64(v338, v334);
  v342 = vaddq_s64(v337, v333);
  v343 = vdupq_n_s64(0x2FB8FA78C5363E4uLL);
  v344 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v345 = vaddq_s64(vsubq_s64(v339, vandq_s8(vaddq_s64(v339, v339), v343)), v344);
  v346 = vaddq_s64(vsubq_s64(v340, vandq_s8(vaddq_s64(v340, v340), v343)), v344);
  v347 = vaddq_s64(vsubq_s64(v341, vandq_s8(vaddq_s64(v341, v341), v343)), v344);
  v348 = vaddq_s64(vsubq_s64(v342, vandq_s8(vaddq_s64(v342, v342), v343)), v344);
  v349 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  v350 = veorq_s8(v348, v349);
  v351 = veorq_s8(v347, v349);
  v352 = veorq_s8(v346, v349);
  v353 = veorq_s8(v345, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v357 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v358 = veorq_s8(v352, v356);
  v359 = veorq_s8(v351, v355);
  v360 = veorq_s8(v350, v354);
  v361 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v362 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v363 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v360);
  v365 = vaddq_s64(v363, v359);
  v366 = vaddq_s64(v362, v358);
  v367 = vaddq_s64(v361, v357);
  v368 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  v369 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v370 = vaddq_s64(vsubq_s64(v364, vandq_s8(vaddq_s64(v364, v364), v368)), v369);
  v371 = vaddq_s64(vsubq_s64(v365, vandq_s8(vaddq_s64(v365, v365), v368)), v369);
  v372 = vaddq_s64(vsubq_s64(v366, vandq_s8(vaddq_s64(v366, v366), v368)), v369);
  v373 = vaddq_s64(vsubq_s64(v367, vandq_s8(vaddq_s64(v367, v367), v368)), v369);
  v374 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v375 = veorq_s8(v373, v374);
  v376 = veorq_s8(v372, v374);
  v377 = veorq_s8(v371, v374);
  v378 = veorq_s8(v370, v374);
  v379 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v380 = vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL);
  v381 = vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL);
  v382 = veorq_s8(v378, vsraq_n_u64(vshlq_n_s64(v360, 3uLL), v360, 0x3DuLL));
  v383 = veorq_s8(v377, v381);
  v384 = veorq_s8(v376, v380);
  v385 = veorq_s8(v375, v379);
  v386 = vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL);
  v387 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v388 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v389 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v385);
  v390 = vaddq_s64(v386, v382);
  v391 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v392 = veorq_s8(v390, v391);
  v393 = veorq_s8(vaddq_s64(v387, v383), v391);
  v394 = veorq_s8(vaddq_s64(v388, v384), v391);
  v395 = veorq_s8(v389, v391);
  v396 = vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL);
  v397 = vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL);
  v398 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), veorq_s8(v394, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL)));
  v399 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  v400 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), veorq_s8(v393, v397)), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v93)));
  v402.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL))), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), v93))), v242);
  v402.val[2] = veorq_s8(vshlq_u64(veorq_s8(v398, v399), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v93))), v241);
  v402.val[1] = veorq_s8(v400, v240);
  v402.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL), veorq_s8(v392, v396)), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v93))), v239);
  *STACK[0x360] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v402, xmmword_1E4316DF0)), *(v75 - 8));
  return (*(a64 + 8 * ((23 * (a12 - (v69 & 0xFFFFFFF8) == -8)) ^ v73)))();
}

uint64_t sub_1E3376384()
{
  v2 = *(STACK[0x540] + 24);
  STACK[0x398] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (((v0 + 122350236) & 0xF8B51FF7) - 5613)) ^ v0)))();
}

uint64_t sub_1E3376468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a15 = 1317436891 * ((2 * (&a13 & 0xC4F5578) - &a13 - 206525820) ^ 0x43B332F2) + 8154;
  a13 = &a10;
  v18 = (*(v15 + 77096))(&a13);
  return (*(v15 + 8 * ((11645 * (a14 == v17)) ^ v16)))(v18);
}

uint64_t sub_1E3376558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, unsigned int a51)
{
  *v51 = v52;
  v51[1] = v52;
  *(v54 - 240) = a21;
  return (*(v53 + 8 * ((((a6 - 5722) | 0x410) + 3303) ^ 0x1359 ^ ((a6 - 5722) | 0x410))))(a1, a2, a3, a4, a5, a51);
}

uint64_t sub_1E3376570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a7 = 0;
  *a6 = 0;
  a17 = 476323082 - 1710126949 * (((&a17 | 0x2102E6FF) + (~&a17 | 0xDEFD1900)) ^ 0x1319BD6E);
  v20 = (*(v19 + 77088))(&a17);
  return (*(v19 + 8 * ((7039 * (a18 == 16257999)) ^ v18)))(v20);
}

uint64_t sub_1E337661C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((((2 * &a15) | 0xDC47D314) - &a15 - 1847847306) ^ 0x5C38B21A);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((2459 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_1E3376738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, int a4, int a5)
{
  v8 = (((v6 - 2756) | 0x1424u) ^ 0xFFFFFFFFFFFFEB0ALL) + v5;
  v9 = *(a2 + v8 - 15);
  v10 = *(a2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * ((13694 * ((v5 & 0xFFFFFFE0) == 32)) ^ (v6 - a5 + 1463293681))))();
}

uint64_t sub_1E33767B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int32x4_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v14 = v11 + 4 * v8;
  a4.i32[0] = *(v14 + 4);
  a4.i32[1] = *(v11 + 4 * (a2 + v8) + a1);
  a4.i32[2] = *(v14 + 12);
  v15 = vextq_s8(a3, a4, 0xCuLL);
  v16 = a4;
  v16.i32[3] = *(v11 + 4 * (v8 + 4));
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a8), vandq_s8(v15, a6)), 1uLL), *(v14 + 1588));
  v15.i32[0] = *(v10 + 4 * (*(v14 + 4) & 1));
  v15.i32[1] = *(v10 + 4 * (*(v11 + 4 * (a2 + v8) + a1) & 1));
  v15.i32[2] = *(v10 + 4 * (*(v14 + 12) & 1));
  v15.i32[3] = *(v10 + 4 * (v16.i8[12] & 1));
  *v14 = veorq_s8(vaddq_s32(vaddq_s32(v17, a5), vmvnq_s8(vandq_s8(vaddq_s32(v17, v17), a7))), v15);
  return (*(v13 + 8 * ((v12 + v9 + 1270) ^ (16 * (v8 == 220)))))();
}

uint64_t sub_1E3376818()
{
  v0 = STACK[0x3F8] - 8544;
  LODWORD(STACK[0x370]) = 17168;
  return (*(STACK[0x400] + 8 * v0))();
}

uint64_t sub_1E3376838(double a1, double a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v25 = STACK[0x370];
  v26 = v15 + STACK[0x370];
  *&v27 = v26 - 15;
  *(&v27 + 1) = v26 - 16;
  *&STACK[0x380] = v27;
  *&v27 = v26 - 13;
  *(&v27 + 1) = v26 - 14;
  *&STACK[0x390] = v27;
  v28.i64[0] = v26 - 7;
  v28.i64[1] = v26 - 8;
  v29.i64[0] = v26 - 5;
  v29.i64[1] = v26 - 6;
  v30.i64[0] = v26 - 3;
  v30.i64[1] = v26 - 4;
  v31.i64[0] = v25 + v15 - 1;
  v31.i64[1] = v26 + (a15 ^ 0xFFFFFFFFFFFFFAF5);
  v32 = vandq_s8(v31, *&STACK[0x330]);
  v33 = vandq_s8(v30, *&STACK[0x330]);
  v34 = vandq_s8(v29, *&STACK[0x330]);
  v35 = vandq_s8(v28, *&STACK[0x330]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x3B0]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x3B0]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x3B0]);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x3B0]);
  v40 = vaddq_s64(vsubq_s64(vorrq_s8(v39, *&STACK[0x310]), vorrq_s8(v39, v23)), v23);
  v41 = vaddq_s64(vsubq_s64(vorrq_s8(v38, *&STACK[0x310]), vorrq_s8(v38, v23)), v23);
  v42 = veorq_s8(v41, *&STACK[0x300]);
  v43 = veorq_s8(v40, *&STACK[0x300]);
  v44 = veorq_s8(v40, *&STACK[0x2F0]);
  v45 = veorq_s8(v41, *&STACK[0x2F0]);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v44), *&STACK[0x360]);
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45), *&STACK[0x360]);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v49 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v50 = veorq_s8(v46, v48);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = vaddq_s64(v51, v49);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v19), v53), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), v19), v52), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v56 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v20), v61), v21), v22);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), v20), v60), v21), v22);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = veorq_s8(vaddq_s64(v66, v64), a5);
  v69 = veorq_s8(v67, a5);
  v70 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), a3);
  v76 = veorq_s8(v74, a3);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = vaddq_s64(v80, v78);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, v24), vorrq_s8(v81, *&STACK[0x230])), *&STACK[0x230]), a4);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, v24), vorrq_s8(v82, *&STACK[0x230])), *&STACK[0x230]), a4);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v78.i64[0] = v26 - 11;
  v78.i64[1] = v26 - 12;
  v87 = vaddq_s64(vsubq_s64(vorrq_s8(v37, *&STACK[0x310]), vorrq_s8(v37, v23)), v23);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), veorq_s8(v83, v85)), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v18)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v86), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v18)));
  v88 = veorq_s8(v87, *&STACK[0x300]);
  v89 = veorq_s8(v87, *&STACK[0x2F0]);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), *&STACK[0x360]);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), v19), v92), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), v20), v95), v21), v22);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), a5);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), a3);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v24), vorrq_s8(v102, *&STACK[0x230])), *&STACK[0x230]), a4);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v103.i64[0] = v26 - 9;
  v103.i64[1] = v26 - 10;
  v106 = vaddq_s64(v105, v104);
  v107 = vandq_s8(v103, *&STACK[0x330]);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(v36, *&STACK[0x310]), vorrq_s8(v36, v23)), v23);
  v191.val[1] = vshlq_u64(veorq_s8(v106, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v18)));
  v109 = veorq_s8(v108, *&STACK[0x300]);
  v110 = veorq_s8(v108, *&STACK[0x2F0]);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), *&STACK[0x360]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), v19), v113), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v20), v116), v21), v22);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), a5);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), a3);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v24), vorrq_s8(v123, *&STACK[0x230])), *&STACK[0x230]), a4);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v127 = vandq_s8(v78, *&STACK[0x330]);
  v128 = vaddq_s64(v126, v125);
  v129 = vandq_s8(*&STACK[0x390], *&STACK[0x330]);
  v191.val[0] = vshlq_u64(veorq_s8(v128, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v18)));
  v130 = vandq_s8(*&STACK[0x380], *&STACK[0x330]);
  v131 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), *&STACK[0x3B0]);
  v135 = vaddq_s64(v133, *&STACK[0x3B0]);
  v136 = vaddq_s64(v132, *&STACK[0x3B0]);
  v137 = vaddq_s64(v131, *&STACK[0x3B0]);
  v138 = vsubq_s64(vorrq_s8(v135, *&STACK[0x310]), vorrq_s8(v135, v23));
  v139 = vaddq_s64(vsubq_s64(vorrq_s8(v137, *&STACK[0x310]), vorrq_s8(v137, v23)), v23);
  v140 = vaddq_s64(vsubq_s64(vorrq_s8(v136, *&STACK[0x310]), vorrq_s8(v136, v23)), v23);
  v136.i64[0] = vqtbl4q_s8(v191, *&STACK[0x3A0]).u64[0];
  v191.val[0] = veorq_s8(v140, *&STACK[0x300]);
  v191.val[1] = veorq_s8(v139, *&STACK[0x300]);
  v141 = veorq_s8(v139, *&STACK[0x2F0]);
  v142 = veorq_s8(v140, *&STACK[0x2F0]);
  v191.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v141), *&STACK[0x360]);
  v191.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v142), *&STACK[0x360]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v143 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v144 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v144);
  v191.val[1] = vaddq_s64(v191.val[2], v143);
  v191.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191.val[1], v191.val[1]), v19), v191.val[1]), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191.val[0], v191.val[0]), v19), v191.val[0]), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v145 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v146 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v146);
  v191.val[1] = vaddq_s64(v191.val[2], v145);
  v191.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[1], v191.val[1]), v20), v191.val[1]), v21), v22);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[0], v191.val[0]), v20), v191.val[0]), v21), v22);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v147 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v148 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v148);
  v191.val[1] = veorq_s8(vaddq_s64(v191.val[2], v147), a5);
  v191.val[0] = veorq_s8(v191.val[0], a5);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v149 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v150 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v150);
  v191.val[1] = veorq_s8(vaddq_s64(v191.val[2], v149), a3);
  v191.val[0] = veorq_s8(v191.val[0], a3);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v151 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v152 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v152);
  v191.val[1] = vaddq_s64(v191.val[2], v151);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v191.val[0], v24), vorrq_s8(v191.val[0], *&STACK[0x230])), *&STACK[0x230]), a4);
  v191.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v191.val[1], v24), vorrq_s8(v191.val[1], *&STACK[0x230])), *&STACK[0x230]), a4);
  v153 = vaddq_s64(v138, v23);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v18)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), veorq_s8(v191.val[1], vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v18)));
  v154 = veorq_s8(v153, *&STACK[0x300]);
  v155 = veorq_s8(v153, *&STACK[0x2F0]);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), *&STACK[0x360]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), v19), v158), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), v20), v161), v21), v22);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a5);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), a3);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v168, v24), vorrq_s8(v168, *&STACK[0x230])), *&STACK[0x230]), a4);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL)));
  v171 = vaddq_s64(vsubq_s64(vorrq_s8(v134, *&STACK[0x310]), vorrq_s8(v134, v23)), v23);
  v191.val[1] = vshlq_u64(veorq_s8(v170, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), v18)));
  v172 = veorq_s8(v171, *&STACK[0x300]);
  v173 = veorq_s8(v171, *&STACK[0x2F0]);
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), *&STACK[0x360]);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), v19), v176), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v20), v179), v21), v22);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), a5);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), a3);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v24), vorrq_s8(v186, *&STACK[0x230])), *&STACK[0x230]), a4);
  v191.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v103, 3uLL), v18)));
  v136.i64[1] = vqtbl4q_s8(v191, *&STACK[0x3A0]).u64[0];
  v188 = vrev64q_s8(*(v25 + v15 - 1 - 15));
  v189 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v188, v188, 8uLL), *&STACK[0x250]), v136));
  *(v17 - 15 + v15 - 1) = vextq_s8(v189, v189, 8uLL);
  return (*(v16 + 8 * ((10195 * (v15 == 16)) ^ a15)))();
}

void sub_1E33773F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = v18 - 136;
  *(v19 + 8) = a14;
  *(v19 + 16) = v17;
  *(v18 - 132) = (v14 - 1532) ^ (((2 * ((v18 - 136) & 0x196741F8) - (v18 - 136) + 1721286144) ^ 0x5F6E7423) * v15);
  (*(v16 + 8 * (v14 ^ 0x37F1)))(v18 - 136);
  JUMPOUT(0x1E330066CLL);
}

uint64_t sub_1E33775F8@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x3AFC)))(a1);
  *(STACK[0x7F8] + 24) = 0;
  return sub_1E336CE4C();
}

uint64_t sub_1E3377690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((((2 * &a14) | 0x1B70EA94) - &a14 + 1917291190) ^ 0x3DBBED3C) + 8154;
  a14 = &a12;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((2343 * (a15 == v17)) ^ 0x1574u)))(v18);
}

uint64_t sub_1E3377718(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, char a27, char a28, char a29)
{
  v102 = a6 - 3787;
  v29 = *(a7 + 24) + v95 - 0x5EA5347A8335DC62;
  v30 = __ROR8__(v29 & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = ((0x6AF7234D0CC131D4 - v30) & v98) + v30 - 0x6AF7234D0CC131D5 - ((v30 - 0x6AF7234D0CC131D5) & v98);
  v32 = __ROR8__(v31 ^ 0xAB257711D84E66DLL, 8);
  v31 ^= 0xA2F4B2E684729731;
  v33 = (((v32 + v31) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v32 + v31) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xF5A2F1B9B5D0B209;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x5963B6C555D97F1FLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v101;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v99;
  v42 = __ROR8__(v41, 8);
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = __ROR8__((v29 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = (0x6AF7234D0CC131D4 - v44) & 0xC2A16714FA488FC8 | (v44 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v46 = __ROR8__(v45 ^ 0x8B48252F955E681ALL, 8);
  v45 ^= 0x230EC0B80CA81946uLL;
  v47 = (((2 * (v46 + v45)) & 0xAC7FF88AB7D467A0) - (v46 + v45) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = *(STACK[0x2A8] + 8 * v102);
  v51 = (v49 + v48 - ((2 * (v49 + v48)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v52 = v51 ^ __ROR8__(v48, 61);
  *v29 = (((__ROR8__((((2 * (v42 + v43)) | 0x36A4398A31861B6ALL) - (v42 + v43) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((((2 * (v42 + v43)) | 0x36A4398A31861B6ALL) - (v42 + v43) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v43, 61))) ^ v100) >> (8 * (v29 & 7u))) ^ a29 ^ 0xB;
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x5963B6C555D97F1FLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v101;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x63B77BB044F1F226) - (v57 + v56) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x1A2AEBE44253AF03;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  *(v29 + 1) = (((v62 + v61 - ((2 * (v62 + v61)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v29 + 1) & 7))) ^ a28 ^ 0xC5;
  v63 = __ROR8__((v29 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = ((2 * v63 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v63 + 0x6BC5C09CD998FDFLL;
  v65 = v64 ^ 0xD22C7A87AFCEB9D8;
  v64 ^= 0x7A6A9F103638C884uLL;
  v66 = (__ROR8__(v65, 8) + v64) ^ 0xE49D77DF873DBF7ELL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xF5A2F1B9B5D0B209;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x5963B6C555D97F1FLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = __ROR8__((((2 * (v72 + v71)) | 0x316A40512FDE1242) - (v72 + v71) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6, 8);
  v74 = (((2 * (v72 + v71)) | 0x316A40512FDE1242) - (v72 + v71) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6 ^ __ROR8__(v71, 61);
  v75 = (v73 + v74) ^ v99;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x1A2AEBE44253AF03;
  *(v29 + 2) = (((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v76, 61))) ^ v100) >> (8 * ((v29 + 2) & 7))) ^ a27 ^ 0x99;
  v78 = __ROR8__((v29 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v79 = (0xAF7234D0CC131D4 - v78) & 0x126AA61F6F56C0D8 | (v78 - 0x6AF7234D0CC131D5) & 0xE99559E090A93F27;
  v80 = __ROR8__(v79 ^ v96, 8);
  v81 = v79 ^ a1;
  v82 = (v80 + v81) ^ 0xE49D77DF873DBF7ELL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xF5A2F1B9B5D0B209;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = __ROR8__(((v97 | (2 * (v86 + v85))) - (v86 + v85) + a2) ^ a3, 8);
  v88 = ((v97 | (2 * (v86 + v85))) - (v86 + v85) + a2) ^ a3 ^ __ROR8__(v85, 61);
  v89 = (v87 + v88) ^ v101;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ v99;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0x1A2AEBE44253AF03;
  *(v29 + 3) = a26 ^ a4 ^ (((__ROR8__(v93, 8) + (v93 ^ __ROR8__(v92, 61))) ^ v100) >> (8 * ((v29 + 3) & 7)));
  return v50();
}

uint64_t sub_1E3377794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 2220) ^ 0xFFFFFFFFFFFFF031) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((5842 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1E33777C8@<X0>(unsigned int a1@<W8>)
{
  v3 = 16 - ((((6 - a1) ^ a1 ^ (((a1 + 96) ^ 4) + 14)) ^ ((((a1 + 96) ^ 1) + 9) ^ ((a1 ^ 0xC) + ((v1 + 37) | 0x8A) - 77 - 120))) & 0xF ^ 6u);
  LODWORD(STACK[0x514]) = v3;
  return (*(v2 + 8 * ((15994 * ((a1 ^ 0x7C7DE7F5DC5DDEEDLL) + ((2 * a1) & 0x1B8BBBDDALL) + ((2 * v3) & 0xFFFFFFFFFFFFFFEFLL) + (v3 ^ 0xBFDF3FE7A8BFBFF7) - 0x3C5D27DD851D9EE4 < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1E3377914(int32x4_t a1, double a2, double a3, int32x4_t a4, double a5, int32x4_t a6, int32x4_t a7)
{
  v9 = 34 * (v7 ^ 0x139F);
  v10 = ((34 * (v7 ^ 0x9F)) | vaddvq_s32(vaddq_s32(vaddq_s32(a1, a6), vaddq_s32(a4, a7))) & 1) + 71;
  v11 = (v10 & 0xA | 0xA5) ^ v10 & 0x6E;
  v12 = v10 ^ (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0xD8;
  v13 = STACK[0x5F8];
  *(v13 + 48) = v12;
  STACK[0x4A8] = v13;
  v14 = (v9 - 8982) | 0x205;
  v15 = v9 - 9032;
  v16 = v9 - 3748;
  LODWORD(STACK[0x6A4]) = STACK[0x4A4];
  v17 = (*(v8 + 8 * (v9 | 0x182)))(16, 0x20040A4A59CD2) == 0;
  return (*(STACK[0x400] + 8 * (((((v15 ^ v17) & 1) == 0) * (v14 ^ 0x3F9)) ^ v16)))();
}

void sub_1E3377A8C()
{
  v0 = 16 * (LOBYTE(STACK[0x7BF]) ^ 0x19);
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x4B0]) - 4350;
  LODWORD(STACK[0x540]) = v0 ^ 0x19;
  JUMPOUT(0x1E3377AC4);
}

uint64_t sub_1E337948C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W5>, uint64_t a4@<X8>)
{
  v12 = ((a3 - 3555) ^ 0xFFFFFFFFFFFFE9C2) + a2;
  v13 = (__ROR8__((a1 + v12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v14 = __ROR8__(v13 ^ 0x4DE9423B6F16E7D2, 8);
  v13 ^= 0xE5AFA7ACF6E0968ELL;
  v15 = (v14 + v13) ^ 0xE49D77DF873DBF7ELL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - (v4 & (2 * (v17 + v16))) + v5) ^ v6;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5963B6C555D97F1FLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x61459D2AF01F24F7;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = ((v8 | (2 * ((v24 + v23) ^ v7))) - ((v24 + v23) ^ v7) + v9) ^ v10;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x1A2AEBE44253AF03;
  *(a1 + v12) = *(a4 + v12) ^ (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v26, 61))) ^ 0xAB3042D228875C41) >> (8 * ((a1 + v12) & 7))) ^ 0x3C;
  return (*(v11 + 8 * ((15434 * (v12 == 0)) ^ (a3 - 1128))))();
}

uint64_t sub_1E33795F8()
{
  v1 = STACK[0x524];
  v2 = STACK[0x520];
  v3 = STACK[0x518];
  v4 = STACK[0x504];
  v5 = STACK[0x510];
  v6 = STACK[0x508];
  v7 = STACK[0x570];
  v8 = STACK[0x500];
  v9 = STACK[0x4FC];
  STACK[0x570] = STACK[0x570];
  LODWORD(STACK[0x588]) = 0;
  LODWORD(STACK[0x5B0]) = 0;
  v10 = (v7 - 1155) | 0xA80;
  LODWORD(STACK[0x590]) = v10;
  v11 = STACK[0x5A0];
  v12 = (((*(STACK[0x5A0] + (v10 ^ 0x2D0E8) - 961 * ((((v10 ^ 0x2D0E8u) * v0) >> 32) >> 9)) ^ 0x34) << 24) | ((*(STACK[0x5A0] + 187335 - 961 * (((187335 * v0) >> 32) >> 9)) ^ 0x34) << 16) | ((*(STACK[0x5A0] + 187680 - 961 * (((187680 * v0) >> 32) >> 9)) ^ 0x34) << 8) | *(STACK[0x5A0] + 188025 - 961 * (((188025 * v0) >> 32) >> 9)) ^ 0xF3) ^ (v9 + 7642611);
  v13 = STACK[0x5A8];
  *(STACK[0x5A8] + 704) = v12 ^ 0x2909BE42;
  v14 = (v11[218730 - 961 * (((218730 * v0) >> 32) >> 9)] ^ 0xFFFFFFF3) << 24;
  LODWORD(STACK[0x58C]) = 219075;
  v15 = (v14 | ((v11[219075 - 961 * (((219075 * v0) >> 32) >> 9)] ^ 0xF3) << 16) | ((v11[219420 - 961 * (((219420 * v0) >> 32) >> 9)] ^ 0xF3) << 8) | v11[657] ^ 0xF3) ^ v6;
  v16 = (((v9 + 7642611) ^ (-7642611 - v9) ^ (v15 - (v15 ^ (v9 + 7642611)))) + v15) ^ (v8 - 101452214);
  v17 = (v9 + 7642611) ^ v4;
  *v13 = v15;
  v18 = v8 + 1497736180;
  v19 = v17 ^ 0x59309F6B;
  v13[74] = -1842066783 - v2 + (((v12 ^ 0xC7 ^ v1) - v1) ^ ((v12 ^ 0xC7 ^ v6) - v6) ^ ((v12 ^ 0xC7 ^ v16) - v16));
  v20 = v6 ^ v5 ^ 0x59309F6B;
  v21 = v3 - 641653098 + v17;
  v22 = v3 - 1005679639 + v15;
  v23 = v19 ^ (v8 + 1497736180);
  v24 = v2 - 641653098 + (v6 ^ v5);
  v13[102] = v22;
  v25 = ((v11[14] ^ 0x34) << 24) | ((v11[359] ^ 0x34) << 16) | ((v11[704] ^ 0x34) << 8) | v11[88] ^ 0xF3;
  v26 = v25 ^ v23;
  v13[241] = v25 ^ v23 ^ 0x2909BE42;
  v27 = v4;
  v28 = v20 ^ (v1 + 1599188394);
  v29 = ((v11[41] ^ 0xFFFFFFF3) << 24) | ((v11[386] ^ 0xF3) << 16) | ((v11[731] ^ 0xF3) << 8) | v11[115] ^ 0xF3;
  v13[65] = v29 ^ v28;
  v30 = (v25 ^ v19 ^ 0xC7 ^ v29 ^ v28) - (v25 ^ v19 ^ 0xC7);
  v31 = (v29 ^ (v1 + 1599188394)) - v20;
  v32 = v31 & 0x10000000;
  v33 = v29 - v28;
  v34 = v31 & 0xEFFFFFFF;
  if ((v32 & v30) != 0)
  {
    v32 = -v32;
  }

  v35 = v32 + v30;
  v36 = v26 ^ 0xC7;
  v37 = v34 ^ v33 ^ v35;
  v38 = v18 + v27 + 184437589;
  v39 = v5 + v1 + 1783625983;
  v40 = v19 - v38;
  v41 = v21 ^ 0x6C786727;
  v42 = ((2 * v23) & 0xC18136C ^ 0x8180300) + (v23 ^ 0xF323483E);
  v43 = (v21 ^ 0x6C786727) + 337440783;
  v44 = v20 - v39;
  v45 = v38 - v42;
  LODWORD(STACK[0x57C]) = v39 - (v28 ^ 0xF52F4188);
  v13[139] = -1842066783 - v24 + v37;
  v13[167] = v21 - 1005679639 + v36;
  LODWORD(STACK[0x584]) = v40 ^ 0x8D22F893;
  v46 = (v24 ^ 0x6C786727) + 337440783;
  LODWORD(STACK[0x580]) = v46;
  v47 = (v11[507] ^ 0xF3 | ((v11[778] ^ 0x34) << 16) | ((v11[433] ^ 0x34) << 24) | ((v11[162] ^ 0x34) << 8)) ^ v43;
  v13[28] = v47 ^ 0x2909BE42;
  v48 = (v11[534] ^ 0xF3 | ((v11[189] ^ 0xF3) << 8) | ((v11[460] ^ 0xFFFFFFF3) << 24) | ((v11[805] ^ 0xF3) << 16)) ^ v46;
  v49 = v40 ^ 0xD9B4D033 ^ (v42 - 101452214);
  v13[130] = v48;
  v50 = (v20 - v39) ^ 0x8D22F854 ^ v47;
  v51 = v28 ^ 0xA1B96928;
  v44 ^= 0x8D22F893;
  v52 = ((v28 ^ 0xA1B969EF ^ v47) - (v28 ^ 0xA1B96928)) ^ (v50 - v44) ^ ((v47 ^ v48 ^ v49 ^ 0xC7) - (v48 ^ v49));
  v53 = v43 - (v45 + 101452214);
  v54 = v53 ^ (v45 - 604103994);
  v55 = v41 - 1504626000 + v48;
  LOWORD(v48) = LODWORD(STACK[0x5B0]) + 72;
  v13[204] = v55;
  v13[((((v54 ^ v49) & 0x41 ^ 0x41) + ((v54 ^ v49) & 0x41)) * v48) % 0x116u] = v52 - (v24 ^ 0x6C786727) - 1343120422;
  v56 = STACK[0x57C];
  v57 = LODWORD(STACK[0x57C]) ^ v44;
  v58 = LODWORD(STACK[0x588]) + 13;
  v59 = (((v11[852] ^ 0x34) << 24) | ((v11[236] ^ 0x34) << 16) | ((v11[581] ^ 0x34) << 8) | v11[926] ^ 0xF3) ^ v54;
  v13[93] = v59 ^ 0x2909BE42;
  v60 = 345 * (2 * (v58 & 1) + (v58 ^ 1));
  v61 = LODWORD(STACK[0x580]) - v56;
  v62 = (v56 - 705556208) ^ v61;
  v63 = ((v11[879] ^ 0xFFFFFFF3) << 24) | ((v11[263] ^ 0xF3) << 16) | ((v11[(v60 + 218730) % (((v57 - 942815998) & 0x3C1 ^ 0x3C1) + ((v57 - 942815998) & 0x3C1u))] ^ 0xF3) << 8) | v11[(v60 + LODWORD(STACK[0x58C])) % 0x3C1u] ^ 0xF3;
  v13[195] = v63 ^ v62;
  v13[269] = (v54 ^ v49) + v53 - 1842066783 + (v59 ^ 0xC7);
  v13[19] = -1005679639 - ((v62 ^ v51 ^ v44) + v61) + (((v59 ^ 0xC7 ^ v54 ^ v49 ^ (((v45 + 101452214) ^ LODWORD(STACK[0x584])) - 942815998) ^ v63 ^ v62) - (v59 ^ 0xC7 ^ v54 ^ v49 ^ (((v45 + 101452214) ^ LODWORD(STACK[0x584])) - 942815998))) ^ ((v63 ^ v51 ^ v44) - (v62 ^ v51 ^ v44)) ^ ((v63 ^ v62 ^ (v57 - 942815998)) - (v57 - 942815998)));
  return (*(STACK[0x598] + 8 * ((27 * (LODWORD(STACK[0x5B0]) > 0xB)) ^ STACK[0x570])))();
}

uint64_t sub_1E337A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, int a16, unsigned int a17)
{
  a17 = 1317436891 * (((&a15 | 0x92E344ED) - (&a15 & 0x92E344ED)) ^ 0x22E0DC9B) + 8154;
  a15 = &a14;
  v19 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((2 * (a16 == 16257999)) | (32 * (a16 == 16257999)) | v18)))(v19);
}

uint64_t sub_1E337A1EC@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v1 + v7) - ((*(v1 + v7) << v3) & 0x78) + 60;
  return (*(v6 + 8 * (((v7 != 0) * v5) ^ v2)))();
}

uint64_t sub_1E337A258@<X0>(unint64_t a1@<X5>, unint64_t a2@<X6>, unint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x360] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(v12);
  *&STACK[0x390] = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  *&STACK[0x330] = vdupq_n_s64(a3);
  *&STACK[0x340] = vdupq_n_s64(a1);
  *&STACK[0x310] = vdupq_n_s64(v9);
  *&STACK[0x320] = vdupq_n_s64(a2);
  v16 = v15 + v8 + v7;
  *&STACK[0x2F0] = vdupq_n_s64(v11);
  *&STACK[0x300] = vdupq_n_s64(v10);
  *&STACK[0x2D0] = vdupq_n_s64(0x365717C7E4CB1A76uLL);
  *&STACK[0x2E0] = vdupq_n_s64(v13);
  *&STACK[0x2B0] = vdupq_n_s64(0x1323CE1A44C5F46EuLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8BD86B3AFACC8D6DLL);
  v17 = vdupq_n_s64(v6);
  *&STACK[0x290] = vdupq_n_s64(0xAC7DA0564C1838BuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0xEEA89D249DAFB75ALL);
  *&STACK[0x270] = vdupq_n_s64(0xEAD3CF27A2EF22E5);
  *&STACK[0x280] = vdupq_n_s64(0x2A5861B0BA21BA34uLL);
  *&STACK[0x250] = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  *&STACK[0x260] = vdupq_n_s64(0x8B436845DC92299CLL);
  *&STACK[0x240] = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  *&STACK[0x230] = xmmword_1E4316E10;
  v18 = *&STACK[0x330];
  v19 = *&STACK[0x340];
  v20 = *&STACK[0x310];
  v21 = *&STACK[0x320];
  v22 = *&STACK[0x300];
  v23 = *&STACK[0x2E0];
  v24 = *&STACK[0x2C0];
  v26 = *&STACK[0x290];
  v25 = *&STACK[0x2A0];
  v28 = *&STACK[0x270];
  v27 = *&STACK[0x280];
  v30 = *&STACK[0x250];
  v29 = *&STACK[0x260];
  v31 = *&STACK[0x350];
  v32.i64[0] = v5 + a4 + v16 + ((v4 - 2474) | 0x110u) - 3876;
  v32.i64[1] = v5 + a4 + v16 + 12;
  v33.i64[0] = v5 + a4 + v16 + 15;
  v33.i64[1] = v5 + a4 + v16 + 14;
  v34.i64[0] = v5 + a4 + v16 + 11;
  v34.i64[1] = v5 + a4 + v16 + 10;
  v35.i64[0] = v5 + a4 + v16 + 9;
  v35.i64[1] = v5 + a4 + v16 + 8;
  *&v36 = v5 + a4 + v16 + 7;
  *(&v36 + 1) = v5 + a4 + v16 + 6;
  *&STACK[0x3B0] = v36;
  *&v36 = v5 + a4 + v16 + 5;
  *(&v36 + 1) = v5 + a4 + v16 + 4;
  *&STACK[0x3A0] = v36;
  v37 = *&STACK[0x360];
  v38 = vandq_s8(v35, *&STACK[0x360]);
  v39 = vandq_s8(v34, *&STACK[0x360]);
  v40 = vandq_s8(v33, *&STACK[0x360]);
  v41 = vandq_s8(v32, *&STACK[0x360]);
  v42 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v45 = *&STACK[0x380];
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x390]);
  v47 = vaddq_s64(v44, *&STACK[0x390]);
  v48 = vaddq_s64(v43, *&STACK[0x390]);
  v49 = vaddq_s64(v42, *&STACK[0x390]);
  *&STACK[0x370] = vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), *&STACK[0x380]), v49);
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), v45), v46), v19);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), v45), v47), v19);
  v52 = veorq_s8(v51, v18);
  v53 = veorq_s8(v50, v18);
  v54 = veorq_s8(v50, v21);
  v55 = veorq_s8(v51, v21);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), v20), v57), v22), *&STACK[0x2F0]);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v56, v56), v20), v56), v22), *&STACK[0x2F0]);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v61);
  v65 = *&STACK[0x2D0];
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), v23), v64), *&STACK[0x2D0]), v24);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v23), v63), *&STACK[0x2D0]), v24);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = *&STACK[0x2B0];
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0x2B0]), vorrq_s8(v71, v17)), v17), v25);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, *&STACK[0x2B0]), vorrq_s8(v72, v17)), v17), v25);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v76), v26);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77), v26);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v84, v84), v27), v84), v28), v29);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), v27), v83), v28), v29);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v89 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v88);
  v91 = veorq_s8(vaddq_s64(v89, v87), v30);
  v92 = veorq_s8(v90, v30);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v42.i64[0] = v5 + a4 + v16 + 3;
  v42.i64[1] = v5 + a4 + v16 + 2;
  v98 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), v45), v48), v19);
  v99 = *&STACK[0x240];
  v202.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v97, v95), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v31)));
  v202.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v96, v94), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v31)));
  v100 = veorq_s8(v98, v18);
  v101 = veorq_s8(v98, v21);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v20), v102), v22), *&STACK[0x2F0]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), v23), v105), *&STACK[0x2D0]), v24);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, *&STACK[0x2B0]), vorrq_s8(v108, v17)), v17), v25);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v26);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v27), v113), v28), v29);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v30);
  v34.i64[0] = v5 + a4 + v16 + 1;
  v34.i64[1] = v5 + a4 + v16;
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL)));
  v118 = vandq_s8(v34, v37);
  v119 = vaddq_s64(*&STACK[0x370], v19);
  v202.val[0] = vshlq_u64(veorq_s8(v117, *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v31)));
  v120 = veorq_s8(v119, v18);
  v121 = veorq_s8(v119, v21);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v20), v122), v22), *&STACK[0x2F0]);
  v124 = *&STACK[0x2F0];
  v125 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v23), v126), *&STACK[0x2D0]), v24);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x2B0]), vorrq_s8(v129, v17)), v17), v25);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v26);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), v27), v134), v28), v29);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v30);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vandq_s8(v42, v37);
  v141 = vaddq_s64(v139, v138);
  v142 = vandq_s8(*&STACK[0x3A0], v37);
  v202.val[1] = vshlq_u64(veorq_s8(v141, *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v31)));
  v143 = vandq_s8(*&STACK[0x3B0], v37);
  v144 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), *&STACK[0x390]);
  v148 = vaddq_s64(v146, *&STACK[0x390]);
  v149 = vaddq_s64(v145, *&STACK[0x390]);
  v150 = vaddq_s64(v144, *&STACK[0x390]);
  v151 = *&STACK[0x380];
  *&STACK[0x370] = vsubq_s64(vorrq_s8(vaddq_s64(v150, v150), *&STACK[0x380]), v150);
  v152 = vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), v151), v149);
  v153 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v147, v147), v151), v147), v19);
  v154 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v148, v148), v151), v148), v19);
  v150.i64[0] = vqtbl4q_s8(v202, *&STACK[0x230]).u64[0];
  v202.val[0] = veorq_s8(v154, v18);
  v202.val[1] = veorq_s8(v153, v18);
  v202.val[2] = veorq_s8(v153, v21);
  v202.val[3] = veorq_s8(v154, v21);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[1], v202.val[1]), v20), v202.val[1]), v22), v124);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[0], v202.val[0]), v20), v202.val[0]), v22), v124);
  v155 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v155);
  v156 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(v156, v202.val[2]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[1], v202.val[1]), v23), v202.val[1]), v65), v24);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[0], v202.val[0]), v23), v202.val[0]), v65), v24);
  v157 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v157);
  v158 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(v158, v202.val[2]);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[0], v73), vorrq_s8(v202.val[0], v17)), v17), v25);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[1], v73), vorrq_s8(v202.val[1], v17)), v17), v25);
  v202.val[2] = veorq_s8(v202.val[1], vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]), v26);
  v202.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]), v26);
  v159 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v159);
  v160 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(v160, v202.val[2]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[1], v202.val[1]), v27), v202.val[1]), v28), v29);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[0], v202.val[0]), v27), v202.val[0]), v28), v29);
  v161 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v161);
  v162 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = veorq_s8(vaddq_s64(v162, v202.val[2]), v30);
  v202.val[0] = veorq_s8(v202.val[0], v30);
  v163 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v164 = vaddq_s64(v152, v19);
  v202.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), veorq_s8(v202.val[1], v163)), v99), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v31)));
  v202.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[2]), v99), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v31)));
  v165 = veorq_s8(v164, v18);
  v166 = veorq_s8(v164, v21);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v20), v167), v22), v124);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v23), v170), v65), v24);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, v73), vorrq_s8(v173, v17)), v17), v25);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v26);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v27), v178), v28), v29);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v30);
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL)));
  v183 = vaddq_s64(*&STACK[0x370], v19);
  v202.val[1] = vshlq_u64(veorq_s8(v182, v99), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v31)));
  v184 = veorq_s8(v183, v18);
  v185 = veorq_s8(v183, v21);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v186, v186), v20), v186), v22), v124);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189, v189), v23), v189), v65), v24);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v73), vorrq_s8(v192, v17)), v17), v25);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v26);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), v27), v197), v28), v29);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v30);
  v202.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL))), v99), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v31)));
  v150.i64[1] = vqtbl4q_s8(v202, *&STACK[0x230]).u64[0];
  v202.val[0] = vrev64q_s8(v150);
  *v34.i64[1] = vextq_s8(v202.val[0], v202.val[0], 8uLL);
  return (*(v14 + 8 * (((((v15 & 0xFFFFFFF0) == 16) << 12) | (((v15 & 0xFFFFFFF0) == 16) << 13)) ^ (v4 - 653))))();
}

uint64_t sub_1E337AE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = (((&a17 ^ 0xCE503427 | 0x5757D249) - ((&a17 ^ 0xCE503427) & 0x5757D249)) ^ 0xC16E350C) * v23;
  a18 = v25 - 813528954;
  a19 = a15;
  a20 = &a14;
  a21 = 1032869496 - v25;
  a22 = v25 + v22 + 1674578095;
  v26 = (*(v24 + 8 * (v22 ^ 0x2673)))(&a17);
  return (*(v24 + 8 * ((2001 * (a17 == ((v22 - 1049539644) & 0xDC8) + 16254535)) ^ v22)))(v26);
}

uint64_t sub_1E337B044@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, char a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W8>)
{
  LODWORD(STACK[0x590]) = LODWORD(STACK[0x424]) + LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x53C]) = LODWORD(STACK[0x430]) + LODWORD(STACK[0x570]);
  LODWORD(STACK[0x580]) = LODWORD(STACK[0x3F0]) + v7;
  v20 = 2 * (LODWORD(STACK[0x3EC]) ^ 0x8FD);
  LODWORD(STACK[0x524]) = v20;
  LODWORD(STACK[0x538]) = ((v15 ^ 0xE0390032) - 1229423917) ^ ((v15 ^ 0x858F75E9) - 754053366) ^ (((v20 + 1706453979) ^ v15) + 859246396);
  v21 = a3 ^ a1 ^ v17;
  v22 = v18 ^ v17 ^ 0x44117E1D ^ (v10 - 2 * (a3 & 0x44117E1F ^ a4 & 2) + 633636018);
  v23 = v9 - 988537710 + (((v18 ^ v17 ^ 0x75BEA924) - 833607481) ^ ((v18 ^ v17 ^ 0xCAF625C0) + 1897440291) ^ ((v18 ^ v17 ^ 0xBF488CE4) + 77991175));
  LODWORD(STACK[0x56C]) = (((v8 ^ (v16 - 93) ^ v14) - v14) ^ ((v8 ^ (v16 - 93) ^ a5) - a5) ^ ((((a2 ^ v21 ^ 0x42C71BBC) - 1260154767) ^ ((a2 ^ v21 ^ 0x9EFF6912) + 1759240927) ^ ((a2 ^ v21 ^ 0xD2CA7C5E) + 619640723)) - (((v21 ^ 0x969C6EE1) + 1622730030) ^ ((v21 ^ 0x3AA218D5) - 863595750) ^ ((v21 ^ 0x540F32B) - 211519256)) + 1719896471)) - v12;
  v24 = a5 ^ v11;
  v25 = (v13 ^ a5) + v12;
  v26 = v13 + v25;
  v27 = v25 - (a3 & 0xCD0F5C0C) - ((508361066 - v10) & 0xCD0F5C0C);
  v28 = (((v18 ^ v17 ^ 0x3BFC127B) - 2146266214) ^ ((v18 ^ v17 ^ 0x7BFD09A1) - 1072461756) ^ ((v18 ^ v17 ^ 0x40011BDA) - 68183495)) + v22;
  v29 = (v22 + 1739736449) ^ LODWORD(STACK[0x548]) ^ (v28 - 1413233762);
  v30 = STACK[0x540];
  v31 = (LODWORD(STACK[0x540]) ^ 0xEF20EF0 ^ v29) - (v29 ^ 0xA78C8BEF);
  v32 = v24 + 1739736449;
  HIDWORD(v33) = (v24 + 1739736449) ^ ~LODWORD(STACK[0x540]);
  LODWORD(v33) = (v24 + 1739736449) ^ LODWORD(STACK[0x540]) ^ 0xA97E851C;
  LODWORD(STACK[0x548]) = ((LODWORD(STACK[0x548]) ^ 0xBB56525E) + 1151970722) ^ ((LODWORD(STACK[0x548]) ^ 0x7110C18F) - 1896923535) ^ ((LODWORD(STACK[0x548]) ^ 0x6DCA183E) - 1841961022);
  v34 = v24 + 1739736449 + (v13 ^ a5);
  v35 = ((__ROR4__((v33 >> 2) ^ 0xB5A8F196, 30) ^ 0xD6A3C65A) - v32) ^ ((v30 ^ 0xA97E851F ^ v34) - v34) ^ v31;
  v36 = v28 + v22;
  v37 = (((v18 ^ 0xE6395489) - 1502455134) ^ ((v18 ^ 0xC5E248C9) - 2052503838) ^ ((v18 ^ 0x23DB1C40) + 1670386281)) + v23 - v28;
  v38 = v36 + v23 + 1815665972;
  v39 = v28 - v23 - v38 + 413376427;
  v40 = (v36 + v23 + 157779235) ^ (v36 + 326502687);
  v41 = STACK[0x5A8];
  v42 = v40 ^ LODWORD(STACK[0x5A8]) ^ (v39 - 1451326177 - ((2 * v39) & 0x52FD0A3E));
  v43 = STACK[0x588];
  v44 = (((v42 ^ LODWORD(STACK[0x588]) ^ 0xD188A490) - 4882766) ^ ((v42 ^ LODWORD(STACK[0x588]) ^ 0x24716D49) + 172799849) ^ ((v42 ^ LODWORD(STACK[0x588]) ^ 0x52754236) + 2085132312)) - (((v42 ^ 0xF6F46456) - 657867144) ^ ((v42 ^ 0xDE14D71B) - 265745093) ^ ((v42 ^ 0x28E0B34D) + 115173741));
  v45 = v26 - v34;
  v46 = v34 + v32;
  LODWORD(STACK[0x570]) = v35 - v27;
  v47 = v34 - v27;
  v48 = v27 + v46;
  v49 = (v27 + v46) ^ v46;
  v50 = (((v49 ^ v43 ^ 0x664AFDFA) - 1601831867) ^ ((v49 ^ v43 ^ 0x48DC8481) - 1911323328) ^ ((v49 ^ v43 ^ 0x891AF294) + 1339421483)) - (((v49 ^ 0x6BD26964) - 1390581541) ^ ((v49 ^ 0xFE86CD3F) + 944360578) ^ ((v49 ^ 0x9554A45B) + 1402709478));
  v51 = (((63200 - v36) ^ (v36 + 326502687)) & 0x9084) + v38;
  LODWORD(STACK[0x540]) = v51;
  LODWORD(STACK[0x588]) = ((v41 ^ 0x85533149) + 2058145463) ^ ((v41 ^ 0x7F7FF8EF) - 2139093231) ^ ((v41 ^ 0x53524CB9) - 1397902521);
  v52 = v47 - v48;
  v53 = (v50 + 1703638893) ^ ((LODWORD(STACK[0x43C]) ^ v52) - v52) ^ (v44 - 1534293933);
  v54 = v37 - 1459985471;
  v55 = v40 - v39;
  v37 = 46751709 - v37;
  v56 = v39 ^ v37;
  v57 = ((v39 ^ v37) - (((v52 & 0xDB ^ 0xDB) + (v52 & 0xDB)) ^ 0xDB)) ^ v37;
  v58 = v54 + v51 - (v39 ^ v37) - 1031993679;
  v59 = v55 - v58;
  v60 = STACK[0x58C];
  v61 = v56 ^ LODWORD(STACK[0x58C]) ^ (v55 - v58);
  v62 = STACK[0x57C];
  v63 = (((v61 ^ LODWORD(STACK[0x57C]) ^ 0xB9315BBB) + 662979263) ^ ((v61 ^ LODWORD(STACK[0x57C]) ^ 0xCF22FBAD) + 1368908457) ^ ((v61 ^ LODWORD(STACK[0x57C]) ^ 0x14E172E0) - 1974178842)) - (((v61 ^ 0x3A68A2FE) - 1528972292) ^ ((v61 ^ 0xA160DC29) + 1070974253) ^ ((v61 ^ 0x5E7627CE) - 1060946228));
  LODWORD(STACK[0x534]) = v53 - (v48 - 787303708);
  v64 = v45 + v48 - 787303708;
  v65 = -642030042 - v45;
  v66 = v52 ^ (-642030042 - v45);
  v67 = v64 - v66 + 642030042;
  v68 = v49 - v52 - v67;
  v69 = ((LODWORD(STACK[0x440]) ^ v68) - v68) ^ ((v62 ^ 0xCB8C57E9 ^ v66) - (v66 ^ 0x6C00DC06)) ^ (v63 + 1602450473);
  LODWORD(STACK[0x57C]) = ((v57 ^ 0x7A4652B6) + 504506197) ^ ((v57 ^ 0x353CC2AC) + 1365817167) ^ ((v57 ^ 0x4F7A901A) + 724493817);
  v70 = ((v60 ^ 0x43F6E313) - 1140253459) ^ ((v60 ^ 0x553C8992) - 1430030738) ^ ((v60 ^ 0xBFB4EF9E) + 1078661218);
  v71 = v56 ^ 0xF2370EC9;
  v72 = ((v66 ^ 0x8E6839C6) - 2086614799) ^ ((v66 ^ 0x5A26854) + 141203811) ^ ((v66 ^ 0x79FD5F5B) + 1949675118);
  LODWORD(STACK[0x528]) = ((v69 ^ 0x66A41C8A) - 635608839) ^ ((v69 ^ 0x4C5597A5) - 252908584) ^ ((v69 ^ 0x2AF18B2F) - 1773602978);
  v73 = ((v65 ^ 0x7C446081) + 1779436668) ^ ((v65 ^ 0xFDE6495C) - 340646489) ^ ((v65 ^ 0x73952714) + 1707166703);
  v74 = (v57 ^ 0x9BAB8A1D ^ ((v56 ^ 0xF2370EC9) - 1683256803 - 2 * ((v56 ^ 0xF2370EC9) & 0x1BAB8A1F ^ v56 & 2))) - (v56 ^ 0xF2370EC9);
  v75 = (v74 ^ 0x2A9FDFFF) - 713738866 + ((2 * v74) & 0x553FBFFE);
  v67 ^= 0x6105729Fu;
  v76 = (v68 ^ v67) - v72;
  v77 = v73 - v72;
  v78 = v76 ^ (v67 + 955164584);
  v79 = v78 + v72;
  LODWORD(v33) = __ROR4__(__ROR4__(v58, 19) ^ 0x9D2A8461, 13);
  v80 = (v33 ^ 0x42099BCB ^ v59) - v71;
  v81 = v80 ^ ((v33 ^ 0x42099BCB) + 955164584);
  v82 = v81 + v71;
  v83 = v80 ^ LODWORD(STACK[0x584]) ^ v82;
  v84 = ((v79 ^ 0xBDE74B18 ^ v19) - v79) ^ ((v76 ^ 0xBDE74B18 ^ v19) - v76) ^ ((((a6 ^ v83 ^ 0xE2BD2C9C) + 1943290264) ^ ((a6 ^ v83 ^ 0x28247843) - 1186130615) ^ ((a6 ^ v83 ^ 0x238C6E9F) - 1293614187)) - (((v83 ^ 0xF4AC41DA) + 1707420882) ^ ((v83 ^ 0x53DA3ED0) - 1028434980) ^ ((v83 ^ 0xEF1E006F) + 2121756005)) + 1619311395);
  v85 = ((v84 ^ 0x4626E7AF) + 249495273) ^ ((v84 ^ 0x516A49F4) + 429019316) ^ ((v84 ^ 0x174CAE5B) + 1605678877);
  v86 = ((a7 ^ 0xAD555EF2) + 448978537) ^ ((a7 ^ 0x923BA8A) - 1095484911) ^ ((a7 ^ 0xA476E478) + 333538531);
  v82 += 390028652;
  v87 = v78 + v76;
  v88 = v76 ^ 0x5060AD5B;
  v89 = (v76 ^ 0x5060AD5B) + 262002321;
  v90 = (v79 + 390028652) ^ v89;
  v91 = v81 + v80;
  v92 = (v80 ^ 0x5060AD5B) + 262002321;
  v93 = v82 ^ v92 ^ 0x462237D8 ^ (v91 - ((2 * v91 + 2073293244) & 0x8C446FB0) + 65810614);
  v94 = (v80 ^ 0x5060AD5B) - 1128504958 + v75 + 576160838 + (((v82 ^ v92 ^ 0x290A75EA) - 1864909362) ^ ((v82 ^ v92 ^ 0xD9FF5E40) + 1612879464) ^ ((v82 ^ v92 ^ 0xF0F52BAA) + 1227416462));
  v95 = v88 + v77 - 1561412958 + (((v90 ^ 0x8B610AE9) - 1697272752) ^ ((v90 ^ 0x28593214) + 971871411) ^ ((v90 ^ 0xA33838FD) - 1299407268));
  v96 = (v87 - ((2 * v87 + 2073293244) & 0xDC96B2B2) - 1407888841) ^ v90 ^ 0xEE4B5959;
  v97 = v95 ^ v89;
  v98 = (LODWORD(STACK[0x454]) ^ ((v95 ^ v89) - 748238208)) - ((v95 ^ v89) - 748238208);
  v99 = v91 - 1267289393;
  v100 = v94 ^ v92;
  v101 = v94 - v99;
  v102 = v93 - (v94 ^ v92 ^ v99);
  v103 = (v94 ^ v92) - 748238208;
  v104 = v103 ^ LODWORD(STACK[0x560]) ^ v102;
  v105 = (((v104 ^ LODWORD(STACK[0x550]) ^ 0x841E255C) - 1832720476) ^ ((v104 ^ LODWORD(STACK[0x550]) ^ 0x9B2A829D) - 1913241501) ^ ((v104 ^ LODWORD(STACK[0x550]) ^ 0xF6219D81) - 520265857)) - (((v104 ^ 0x67C30906) + 1897909242) ^ ((v104 ^ 0xCFE90792) - 650787474) ^ ((v104 ^ 0xE04271F1) - 157371633));
  v87 -= 1267289393;
  v106 = v95 - v87;
  v107 = v97 ^ v87;
  v108 = ((LODWORD(STACK[0x454]) ^ (v96 - v107)) - (v96 - v107)) ^ v98 ^ (v105 + 1592444123);
  LODWORD(STACK[0x5A8]) = v97 - 916054050 + v107 - v106;
  v109 = ((748238207 - v100) & 0xDEE425C2) + (v103 & 0xDEE425C2);
  v110 = LODWORD(STACK[0x534]) + LODWORD(STACK[0x40C]);
  v111 = LODWORD(STACK[0x410]) + v70 + 1160384316 + LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x414]) += LODWORD(STACK[0x588]) + 398413678 + LODWORD(STACK[0x540]);
  v112 = LODWORD(STACK[0x418]) - v77 - 1687467796 + v85;
  v113 = LODWORD(STACK[0x590]) - 1540715893;
  v114 = (v96 - v107) ^ 0xF7E19BE5;
  LODWORD(STACK[0x590]) = v114 - 833339902;
  v115 = v108 - v106 + LODWORD(STACK[0x42C]);
  v116 = LODWORD(STACK[0x41C]) + v86 + 1213426136 + v75;
  v117 = LODWORD(STACK[0x53C]) - 1561029434;
  v118 = LODWORD(STACK[0x428]) - v52 + 1128694669 + LODWORD(STACK[0x528]);
  v119 = *(STACK[0x598] + 8 * (LODWORD(STACK[0x3EC]) ^ (1019 * (((LODWORD(STACK[0x3E0]) + 128) <= LODWORD(STACK[0x408])) & ~LODWORD(STACK[0x420])))));
  LODWORD(STACK[0x424]) = v113;
  LODWORD(STACK[0x430]) = v117;
  LODWORD(STACK[0x42C]) = v115;
  LODWORD(STACK[0x41C]) = v116;
  LODWORD(STACK[0x418]) = v112;
  LODWORD(STACK[0x428]) = v118;
  LODWORD(STACK[0x410]) = v111;
  LODWORD(STACK[0x40C]) = v110;
  LODWORD(STACK[0x588]) = (v109 ^ v106) + v114;
  LODWORD(STACK[0x58C]) = (v102 ^ 0xF7E19BE5) + (v101 ^ 0xDEE425C2);
  return v119();
}

uint64_t sub_1E337C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  *STACK[0x4D8] = v16;
  *a16 = STACK[0x5D4];
  return (STACK[0x808])(a1, a2, a3, 16257999);
}

uint64_t sub_1E337C428()
{
  v3 = *(v0 + 16) - 278262361 + 3 * (v1 ^ 0xE1C);
  v4 = *(v0 + 12) + 657515010;
  v5 = v4 < ((v1 + 98913916) & 0xFA1ABE7C ^ 0x415C1CE4);
  v6 = v5 ^ (v3 < 0x415C0AD8);
  v7 = v3 < v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(v2 + 8 * ((53 * v5) ^ v1)))();
}

uint64_t sub_1E337C4C4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = a1 - 2742;
  v23 = (a1 - 4737) | 0xE41;
  v24 = (*(v21 + 8 * (a1 + 4623)))(16, 0x20040A4A59CD2);
  return (*(v21 + 8 * (((v24 != 0) * (v23 - 3454)) ^ v22)))(v24, v25, v26, v27, v28, v29, v30, v31, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1E337C528@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *v16 = 0;
  v18 = a1 + 1463295012;
  a15 = a1 - 1710126949 * ((&a15 & 0xE88F31C0 | ~(&a15 | 0xE88F31C0)) ^ 0x256B95AF) + 1939613488;
  v19 = (*(v17 + 8 * (a1 ^ 0xA8C7D07E)))(&a15);
  return (*(v17 + 8 * ((2475 * (a16 == (v18 ^ 0xF80231))) ^ v18)))(v19);
}

uint64_t sub_1E337C5F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = (((a5 - 3293) | 0x1440) + 1851032275) ^ a2;
  v8 = ((a5 - 3005) ^ 0x49C6A1CB) + v6;
  v9 = v8 < 0x9BB88F7D;
  v10 = v8 > v7 - 1682403459;
  if (v9 != v7 > 0x64477082)
  {
    v10 = v9;
  }

  return (*(v5 + 8 * ((243 * v10) ^ a5)))();
}

uint64_t sub_1E337C6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0xB60] = v4;
  v7 = STACK[0x4B8];
  STACK[0xB68] = STACK[0x4B8];
  return (*(v6 + 8 * (((v4 - v7 > (a4 + 6280) - 9239) * ((4 * a4) ^ 0x37D9)) ^ a4)))(a1, a2, a3, (v5 + 5));
}

uint64_t sub_1E337C7C8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + *(a1 + 16) + 1883891381;
  v4 = *(a1 + 12) - 1475299386;
  v5 = v3 < 0xC23BE09C;
  v6 = v3 > v4;
  if (v5 != v4 < 0xC23BE09C)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((45 * ((v2 ^ v6) & 1)) ^ v2)))();
}

uint64_t sub_1E337C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 869) ^ (33731311 * (((&a15 | 0x255569A6) - (&a15 & 0x255569A6)) ^ 0x1CA3A385));
  a17 = a12;
  a18 = &a14;
  (*(v19 + 8 * (v18 + 7218)))(&a15);
  a17 = a12;
  LODWORD(a18) = v18 - 2008441969 * ((&a15 & 0x337D5672 | ~(&a15 | 0x337D5672)) ^ 0x841BFD83) + 3302;
  v21 = (*(v19 + 8 * (v18 ^ 0x2CAC)))(&a15);
  return (*(v19 + 8 * ((127 * (a15 != v20 + ((v18 - 919) ^ 0xCE8) - 2376)) ^ v18)))(v21);
}

uint64_t sub_1E337C9CC()
{
  v3 = *(v2 + 8 * v0);
  v4 = *(v2 + 8 * (((v1 + 32 - STACK[0x858] < 0x10) * (v0 - 613)) ^ (v0 + 2867)));
  STACK[0x978] = v3;
  return v4(0x6A785729F20EEA42, 0xDBB8563E21D61BA0, 0x38403E00000281, 0x2047A9C1DE29E45FLL, 0x44520400020E41ELL, 0x499422456F36014CLL, 0xE1D2C7D2F6C07010, 0x6D6EFEEB143C2D7CLL);
}

uint64_t sub_1E337C9E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = LODWORD(STACK[0x340]);
  if (v6 == 17168)
  {
    return (*(STACK[0x400] + 8 * ((v5 - 7345) ^ (3975 * (v4 == 197499223)))))();
  }

  if (v6 != 20706)
  {
    if (v6 == 33980)
    {
      STACK[0x780] = STACK[0x5E0] + STACK[0x2B0];
      JUMPOUT(0x1E331F254);
    }

    LODWORD(STACK[0x944]) = a4;
    STACK[0x498] = STACK[0x880];
    STACK[0x8E8] = *(STACK[0x400] + 8 * (v5 - 9069));
    JUMPOUT(0x1E3417F58);
  }

  return (*(STACK[0x400] + 8 * ((((v5 - 5438) ^ 0x8AE) * (v4 == 197499227)) ^ (v5 - 4763))))();
}

uint64_t sub_1E337CAEC()
{
  v0 = STACK[0x3F8] - 7627;
  v1 = STACK[0x3F8];
  v2 = *(STACK[0x8F8] + 24);
  STACK[0x8C0] = v2;
  return (*(STACK[0x400] + 8 * (v0 | ((((v2 == 0) ^ (v1 ^ v0)) & 1) << 7))))();
}

uint64_t sub_1E337CB38()
{
  HIDWORD(v7) = v2 - 869295389 * ((((2 * (&v6 ^ 0x4D832DE3)) | 0x199B13A0) - (&v6 ^ 0x4D832DE3) + 1932686896) ^ 0x701A8860) - 656013715;
  v6 = v0;
  (*(v1 + 8 * (v2 + 8495)))(&v6);
  v4 = v7;
  v7 = *v3;
  LODWORD(v6) = v2 + 1358806181 * ((-1713602282 - (&v6 | 0x99DC8116) + (&v6 | 0x66237EE9)) ^ 0x590C126A) + 2144;
  (*(v1 + 8 * (v2 + 8441)))(&v6);
  return (v4 - 16257999);
}

uint64_t sub_1E337CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = v5 ^ *(a2 + v7);
  return (*(v6 + 8 * (((v7 != 0) * v2) ^ v3)))();
}

uint64_t sub_1E337CCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, int a16, int a17)
{
  a17 = v17 + 1317436891 * ((&a15 + 687068870 - 2 * (&a15 & 0x28F3D6C6)) ^ 0x98F04EB0) + 3495;
  a15 = &a14;
  v20 = (*(v18 + 8 * (v17 + 4978)))(&a15);
  return (*(v18 + 8 * (((a16 == 16257999) * ((v17 - 377) ^ (v19 + 710) ^ (v17 - 369656437) & 0xD77F7D7B)) | v17)))(v20);
}

void sub_1E337CDA0(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1E332F694);
}

uint64_t sub_1E337CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((&a15 & 0x480266E1 | ~(&a15 | 0x480266E1)) ^ 0xEF944A7C) * v20;
  a17 = a11;
  a18 = &a13;
  a19 = -654855621 - v23;
  a20 = v23 + v22 + 1674574418;
  a16 = v23 - 1866244760;
  v24 = (*(v21 + 8 * (v22 ^ 0x37D0)))(&a15);
  return (*(v21 + 8 * ((7 * (a15 != ((v22 - 1584) | 0x102) + 16254629)) | v22)))(v24);
}

void sub_1E337CEC0()
{
  LODWORD(STACK[0x58C]) = v1;
  LODWORD(STACK[0x590]) = v2;
  LODWORD(STACK[0x588]) += 16;
  LODWORD(STACK[0x47C]) = v0 + 1507042188;
  LODWORD(STACK[0x584]) += 52;
  LODWORD(STACK[0x580]) += 52;
  LODWORD(STACK[0x57C]) += 52;
  LODWORD(STACK[0x570]) -= 1988059952;
  LODWORD(STACK[0x56C]) += 168737632;
  LODWORD(STACK[0x560]) += 16;
  LODWORD(STACK[0x55C]) -= 16;
  LODWORD(STACK[0x550]) += 2528;
  LODWORD(STACK[0x54C]) += 2528;
  LODWORD(STACK[0x548]) += 2528;
  LODWORD(STACK[0x540]) += 2528;
  LODWORD(STACK[0x53C]) += 2528;
  LODWORD(STACK[0x538]) += 2528;
  LODWORD(STACK[0x534]) += 2528;
  LODWORD(STACK[0x528]) += 2528;
  LODWORD(STACK[0x524]) += 2528;
  LODWORD(STACK[0x520]) += 2528;
  LODWORD(STACK[0x518]) += 2528;
  LODWORD(STACK[0x510]) += 2528;
  LODWORD(STACK[0x508]) += 2528;
  LODWORD(STACK[0x504]) += 2528;
  LODWORD(STACK[0x500]) += 2528;
  LODWORD(STACK[0x4FC]) += 2528;
  LODWORD(STACK[0x4F8]) += 2528;
  LODWORD(STACK[0x4F4]) += 2528;
  LODWORD(STACK[0x4F0]) += 2528;
  LODWORD(STACK[0x4EC]) += 2528;
  LODWORD(STACK[0x4E8]) += 2528;
  LODWORD(STACK[0x4E0]) += 2528;
  LODWORD(STACK[0x4DC]) += 2528;
  LODWORD(STACK[0x4D0]) += 2528;
  LODWORD(STACK[0x4C8]) += 2528;
  LODWORD(STACK[0x4C4]) += 2528;
  LODWORD(STACK[0x4C0]) += 2528;
  LODWORD(STACK[0x4B8]) -= 118599392;
  LODWORD(STACK[0x4B4]) += 16;
  JUMPOUT(0x1E335CDC8);
}

uint64_t sub_1E337D11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (((v3 - 4292) | 0x1080u) ^ 0xFFFFFFFFFFFFEE37) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((3837 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1E337D1C0(uint64_t a1)
{
  v4 = *v2;
  STACK[0x450] = 0;
  LODWORD(STACK[0x564]) = 0;
  return (*(v3 + 8 * (((v4 != 0) * (((v1 - 386) | 0x14A2) ^ 0x1679)) ^ (v1 + 8051))))(a1, *(v3 + 8 * v1));
}

uint64_t sub_1E337D1E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v13 = a5 - 7642611;
  v14 = v6 + 1;
  LODWORD(STACK[0x5B0]) = v14;
  v15 = 65 * v14;
  v16 = STACK[0x5A8];
  v17 = *(STACK[0x5A8] + 4 * ((65 * v14 + 12545) % 0x116u)) ^ 0x2909BE85;
  LODWORD(STACK[0x56C]) = v5 - 1030;
  v18 = v14 * ((v5 - 1030) ^ 0x6C1);
  v19 = *(v16 + 4 * ((v18 - 975) % 0x116u));
  v20 = (v17 >> 3) ^ __ROR4__(v17, 7) ^ __ROR4__(v17, 18);
  v21 = *(v16 + 4 * ((65 * v14 + 13390) % 0x116u)) ^ 0x2909BE85;
  v22 = v18 - 130;
  v24 = __PAIR64__(v21, __ROR4__(v19, 18));
  v23 = (v19 >> 3) ^ __ROR4__(v19, 7) ^ v24;
  LODWORD(v24) = v21;
  v25 = *(v16 + 4 * (v22 % 0x116));
  v26 = (v24 >> 17) ^ (v21 >> 10);
  v27 = v25 >> 19;
  HIDWORD(v24) = v25;
  LODWORD(v24) = v25;
  v28 = a5 ^ v8 ^ v20;
  v29 = v26 ^ __ROR4__(v21, 19);
  v30 = (v24 >> 17) ^ (v25 >> 10) ^ __ROR4__(v25, 19);
  v31 = v8 + a5 + v10 - v9;
  v32 = v7 + v11;
  v33 = ((v23 ^ v12) - v12) ^ ((v23 ^ v7) - v7) ^ ((v28 ^ v23) - v28);
  LODWORD(STACK[0x580]) = v31 - 1456079327;
  v34 = v9 - v31;
  LODWORD(STACK[0x588]) = a5 + 269467664;
  v35 = v7 + 269467664;
  v36 = v9 - v31 + a5 + v10 - v31;
  v37 = v12 + v7 + v11 - a4;
  LODWORD(STACK[0x58C]) = v35;
  v38 = v32 - v37;
  v39 = v37 - 1456079327;
  v40 = a4 - v37;
  LODWORD(STACK[0x584]) = v40;
  v41 = v16;
  v42 = *(v16 + 4 * ((65 * v14 + 7930) % 0x116u)) - a4 + *(v16 + 4 * ((65 * v14 + 8515) % 0x116u)) + v33 - 610833730 + (((v30 ^ v39) - v39) ^ ((v30 ^ v35) - v35) ^ (((v31 - 1456079327) ^ (v13 + 277110275) ^ v29 ^ v30) - ((v31 - 1456079327) ^ (v13 + 277110275) ^ v29))) - v40;
  *(v16 + 4 * ((65 * v14 + 8970) % 0x116u)) = v42 - 1842066783;
  v43 = v40 + v38;
  v44 = v36 + 1129709733 + v42;
  v45 = v9 + 1005679639 + v9 - v31 + v20 + v29 + *(v16 + 4 * ((65 * v14 + 3510) % 0x116u)) + *(v16 + 4 * ((65 * v14 + 4095) % 0x116u));
  *(v16 + 4 * ((v15 + 4550) % 0x116u)) = v45;
  v46 = STACK[0x5A0];
  v47 = v45 - v43 - 124030094;
  v48 = ((((*(STACK[0x5A0] + (345 * (HIBYTE(v44) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v44) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * (v44 >> 28) + 178365 - 961 * ((4469269 * (345 * (v44 >> 28) + 178365)) >> 32))) ^ 0xF3) << 12) | *(STACK[0x5A0] + (345 * (HIWORD(v44) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v44) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * ((v44 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v44 >> 20) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 12);
  v49 = v48 | *(STACK[0x5A0] + (345 * ((v44 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v44 >> 8) & 0xF) + 178365)) >> 32))) ^ 0xF3;
  v50 = (v49 << 8) ^ ((*(STACK[0x5A0] + (345 * (v44 >> 12) + 178365 - 961 * ((4469269 * (345 * (v44 >> 12) + 178365)) >> 32))) ^ 0xF3) << 12);
  v51 = *(STACK[0x5A0] + (345 * (v44 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v44 & 0xF) + 178365)) >> 32))) ^ 0xF3;
  v52 = (v50 | v51) ^ (16 * (*(STACK[0x5A0] + (345 * (v44 >> 4) + 178365 - 961 * ((4469269 * (345 * (v44 >> 4) + 178365)) >> 32))) ^ 0xF3));
  v53 = ((*(STACK[0x5A0] + (345 * (HIBYTE(v47) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v47) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * (v47 >> 28) + 178365 - 961 * ((4469269 * (345 * (v47 >> 28) + 178365)) >> 32))) ^ 0xF3) << 12);
  v54 = 345 * ((BYTE1(v47) >> ((89 * (BYTE2(v47) & 0xF) - 67 - -63 * ((4469269 * (345 * (HIWORD(v47) & 0xF) + 178365)) >> 32)) & 4)) >> (~(89 * (BYTE2(v47) & 0xF) - 67 - -63 * ((4469269 * (345 * (HIWORD(v47) & 0xF) + 178365)) >> 32)) & 4)) + 178365;
  v55 = *(STACK[0x5A0] + (v54 - 961 * ((4469269 * v54) >> 32))) ^ 0xF3;
  v56 = ((v53 | *(STACK[0x5A0] + (345 * (HIWORD(v47) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v47) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * ((v47 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v47 >> 20) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 12);
  v57 = v51 & 0xF;
  v58 = (*(STACK[0x5A0] + (345 * (v47 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v47 & 0xF) + 178365)) >> 32))) ^ 0xF3 | ((*(STACK[0x5A0] + (345 * ((v47 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v47 >> 8) & 0xF) + 178365)) >> 32))) ^ 0xF3 ^ v56 ^ (16 * v55)) << 8)) ^ ((*(STACK[0x5A0] + (345 * (v47 >> 4) + 178365 - 961 * ((4469269 * (345 * (v47 >> 4) + 178365)) >> 32))) ^ 0xF3) << ((v27 & 4 ^ 4) + (v27 & 4)));
  v59 = 345 * (v57 & 0xFFFFFF0F | (16 * (v58 & 0xF)));
  v60 = *(STACK[0x5A0] + (v59 + 88665 - 961 * ((4469269 * (v59 + 88665)) >> 32))) ^ LODWORD(STACK[0x57C]);
  v61 = ~*(STACK[0x5A0] + (345 * v60 - 961 * ((4469269 * (345 * v60)) >> 32)));
  v62 = ((v61 >> 4) - ((v61 >> 3) & 6) - 13) ^ *(STACK[0x5A0] + (v59 - 961 * ((4469269 * v59) >> 32)));
  v63 = 345 * (v58 & 0xF0 | (v52 >> 4));
  v64 = *(STACK[0x5A0] + (v63 - 961 * ((4469269 * v63) >> 32)));
  v65 = 345 * (*(STACK[0x5A0] + (v63 + 88665 - 961 * ((4469269 * (v63 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (345 * v62 + 88665 - 961 * ((4469269 * (345 * v62 + 88665)) >> 32))) ^ 0xF3)) ^ 0xF3);
  v66 = v65 + 88665 - 961 * ((4469269 * (v65 + 88665)) >> 32);
  v67 = ~*(STACK[0x5A0] + (v65 - 961 * ((4469269 * v65) >> 32)));
  v68 = ((v67 >> 4) - ((v67 >> 3) & 6) - 13) ^ v64;
  v69 = 345 * ((v58 >> 4) & 0xF0 | (v52 >> 8) & 0xF);
  v70 = *(STACK[0x5A0] + (v69 - 961 * ((4469269 * v69) >> 32)));
  v71 = 345 * (*(STACK[0x5A0] + (v69 + 88665 - 961 * ((4469269 * (v69 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (345 * v68 + 88665 - 961 * ((4469269 * (345 * v68 + 88665)) >> 32))) ^ 0xF3)) ^ 0xF3);
  v72 = v71 + 88665 - 961 * ((4469269 * (v71 + 88665)) >> 32);
  v73 = ~*(STACK[0x5A0] + (v71 - 961 * ((4469269 * v71) >> 32)));
  v74 = 345 * (((v73 >> 4) - ((v73 >> 3) & 6) - 13) ^ v70) + 88665;
  v75 = 345 * ((v58 >> 8) & 0xF0 | (v50 >> 12));
  v76 = 345 * (*(STACK[0x5A0] + (v75 + 88665 - 961 * ((4469269 * (v75 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v74 - 961 * ((4469269 * v74) >> 32))) ^ 0xF3)) ^ 0xF3);
  v77 = v76 + 88665 - 961 * ((4469269 * (v76 + 88665)) >> 32);
  v78 = ~*(STACK[0x5A0] + (v76 - 961 * ((4469269 * v76) >> 32)));
  v79 = 345 * (((v78 >> 4) - ((v78 >> 3) & 6) - 13) ^ *(STACK[0x5A0] + (v75 - 961 * ((4469269 * v75) >> 32)))) + 88665;
  v80 = 345 * ((v58 >> 12) & 0xF0 | HIWORD(v50) & 0xF);
  v81 = *(STACK[0x5A0] + (v80 - 961 * ((4469269 * v80) >> 32)));
  v82 = 345 * (*(STACK[0x5A0] + (v80 + 88665 - 961 * ((4469269 * (v80 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v79 - 961 * ((4469269 * v79) >> 32))) ^ 0xF3)) ^ 0xF3);
  v83 = v82 + 88665 - 961 * ((4469269 * (v82 + 88665)) >> 32);
  v84 = ~*(STACK[0x5A0] + (v82 - 961 * ((4469269 * v82) >> 32)));
  v85 = 345 * (((v84 >> 4) - ((v84 >> 3) & 6) - 13) ^ v81) + 88665;
  v86 = 345 * ((v56 >> 8) & 0xF0 | (v48 >> 12));
  v87 = 345 * (*(STACK[0x5A0] + (v86 + 88665 - 961 * ((4469269 * (v86 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v85 - 961 * ((4469269 * v85) >> 32))) ^ 0xF3)) ^ 0xF3);
  v88 = v87 + 88665 - 961 * ((4469269 * (v87 + 88665)) >> 32);
  v89 = *(STACK[0x5A0] + (v87 - 961 * ((4469269 * v87) >> 32))) ^ 0xFF;
  v90 = 345 * (((~(v89 >> 3) | 0xF9) + (v89 >> 4) - 12) ^ *(STACK[0x5A0] + (v86 - 961 * ((4469269 * v86) >> 32)))) + 88665;
  v91 = 345 * ((v56 >> 12) & 0xF0 | HIWORD(v48) & 0xF);
  v92 = 345 * (*(STACK[0x5A0] + (v91 + 88665 - 961 * ((4469269 * (v91 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v90 - 961 * ((4469269 * v90) >> 32))) ^ 0xF3)) ^ 0xF3);
  v93 = v92 + 88665 - 961 * ((4469269 * (v92 + 88665)) >> 32);
  v94 = ~*(STACK[0x5A0] + (v92 - 961 * ((4469269 * v92) >> 32)));
  v95 = 345 * (((v94 >> 4) - ((v94 >> 3) & 6) - 13) ^ *(STACK[0x5A0] + (v91 - 961 * ((4469269 * v91) >> 32)))) + 88665;
  v96 = 345 * ((v53 >> 8) & 0xF0 | (v49 >> 20) & 0xF) + 88665;
  LOBYTE(v66) = *(STACK[0x5A0] + v66) ^ 0xF3;
  LOBYTE(v60) = *(STACK[0x5A0] + (345 * v60 + 88665 - 961 * ((4469269 * (345 * v60 + 88665)) >> 32))) ^ 0xF3;
  v97 = 345 * (*(STACK[0x5A0] + (v96 - 961 * ((4469269 * v96) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v95 - 961 * ((4469269 * v95) >> 32))) ^ 0xF3)) ^ 0xF3) + 88665;
  v98 = v97 - 961 * ((4469269 * v97) >> 32);
  v99 = 345 * (v57 & 0xFFFFFF0F | (16 * (v60 & 0xF))) + 242190;
  v100 = v99 - 961 * ((4469269 * v99) >> 32);
  v101 = 345 * ((v60 ^ (16 * v66)) & 0xF0 | (v52 >> 4)) + 242190;
  v102 = v101 - 961 * ((4469269 * v101) >> 32);
  LOBYTE(v101) = *(STACK[0x5A0] + v72) ^ 0xF3;
  LOBYTE(v96) = *(STACK[0x5A0] + v77) ^ 0xF3;
  v103 = 345 * ((v66 ^ (16 * v101)) & 0xF0 | (v52 >> 8) & 0xF) + 242190;
  v104 = 345 * ((v101 ^ (16 * v96)) & 0xF0 | (v50 >> 12)) + 242190;
  LOBYTE(v52) = *(STACK[0x5A0] + v83) ^ 0xF3;
  v105 = (v96 ^ (16 * v52)) & 0xF0 | HIWORD(v50) & 0xF;
  LOBYTE(v66) = *(STACK[0x5A0] + v88) ^ 0xF3;
  v106 = ((*(STACK[0x5A0] + (v104 - 961 * ((4469269 * v104) >> 32))) ^ 0xF3) << 12) ^ ((*(STACK[0x5A0] + (v103 - 961 * ((4469269 * v103) >> 32))) ^ 0xF3) << 8);
  v107 = 345 * ((v52 ^ (16 * v66)) & 0xF0 | (v48 >> 12)) + 242190;
  v108 = v107 - 961 * ((4469269 * v107) >> 32);
  v109 = v34 ^ 0xACF76D58;
  LOBYTE(v52) = *(STACK[0x5A0] + v93) ^ 0xF3;
  v110 = (v66 ^ (16 * v52)) & 0xF0 | HIWORD(v48) & 0xF;
  LOWORD(v103) = (v34 ^ 0x6D58) + 11899;
  v111 = *(STACK[0x5A0] + v100);
  v112 = v111 ^ (16 * (*(STACK[0x5A0] + v102) ^ 0xF3)) ^ 0xF3;
  LOBYTE(v102) = v52 ^ (16 * (*(STACK[0x5A0] + v98) ^ 3));
  v113 = v106 ^ v112 ^ ((*(STACK[0x5A0] + (345 * v105 + 242190 - 961 * ((4469269 * (345 * v105 + 242190)) >> 32))) ^ 0xF3) << 16);
  v114 = ((*(STACK[0x5A0] + (345 * v110 + 242190 - 961 * ((4469269 * (345 * v110 + 242190)) >> 32))) ^ 0xFFFFFFF3) << 24) ^ ((*(STACK[0x5A0] + v108) ^ 0xF3) << 20) ^ v113;
  v115 = 345 * ((v114 ^ ((*(STACK[0x5A0] + (345 * (v102 & 0xF0 | (v49 >> 20) & 0xF) + 242190 - 961 * ((4469269 * (345 * (v102 & 0xF0 | (v49 >> 20) & 0xF) + 242190)) >> 32))) ^ 3) << 28)) >> 28) + 209760;
  *(v41 + 4 * ((v15 + 13520) % 0x116u)) = (LODWORD(STACK[0x580]) - v36) ^ 0xAA271283 ^ v44;
  v116 = 345 * (((v103 & 0x260) + ((388 - v109) & 0x260)) & 0xFFFFFFF0 | (v106 >> 12));
  v117 = 345 * (((v106 ^ v112) >> 8) & 0xF) + 209760;
  v118 = (((((*(v46 + (345 * (HIBYTE(v114) & 0xF) + 209760 - 961 * ((4469269 * (345 * (HIBYTE(v114) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 16) ^ ((*(v46 + (v115 - 961 * ((4469269 * v115) >> 32))) ^ 0xF3) << 20) | ((*(v46 + (345 * (HIWORD(v113) & 0xF) + 209760 - 961 * ((4469269 * (345 * (HIWORD(v113) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 8)) ^ ((*(v46 + (345 * ((v114 >> 20) & 0xF) + 209760 - 961 * ((4469269 * (345 * ((v114 >> 20) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 12) | *(v46 + (v117 - 961 * ((4469269 * v117) >> 32))) ^ 0xF3) << 8) ^ ((*(v46 + (v116 - 961 * ((4469269 * v116) >> 32))) ^ 0xF3) << 12) | *(v46 + (345 * (v111 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v111 & 0xF ^ 3u) + 209760)) >> 32))) ^ 0xF3;
  *(v41 + 4 * (v15 % 0x116u)) = (v39 - v43) ^ 0x832EAC06 ^ (16 * (*(v46 + (345 * (v112 >> 4) + 209760 - 961 * ((4469269 * (345 * (v112 >> 4) + 209760)) >> 32))) ^ 0xF3)) ^ v118;
  return (*(STACK[0x598] + 8 * ((5063 * (LODWORD(STACK[0x5B0]) == 63)) ^ LODWORD(STACK[0x590]))))();
}

uint64_t sub_1E337D200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v4 - 5 + v3 - 5561) & (((v4 + 2090588338) & 0x836435A5) - 9233);
  LODWORD(STACK[0x654]) = 546879948 - v7;
  return (*(v6 + 8 * ((2153 * (16 - v7 + v3 < 0xFFFFFFF6)) ^ v4)))(a1, a2, a3, (v5 + 5));
}

uint64_t sub_1E337D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 - 1172) ^ (33731311 * ((2 * (&a13 & 0x664B7170) - &a13 + 431263370) ^ 0x204244A9));
  a15 = a9;
  a16 = &a11;
  (*(v18 + 8 * (v16 + 5177)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * ((&a13 & 0x9C3F250B | ~(&a13 | 0x9C3F250B)) ^ 0x2B598EFA) + 1261;
  a15 = a9;
  v19 = (*(v18 + 8 * (v16 ^ 0x34AB)))(&a13);
  return (*(v18 + 8 * ((13693 * (a13 == v17 + (v16 ^ 0x1674) - 1860)) ^ v16)))(v19);
}

uint64_t sub_1E337DA4C@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W8>)
{
  v7 = (v5 ^ (a3 + 2996) ^ 0xFFFFFFFFFFFFE30BLL) + v4;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((11781 * (v7 == 0)) ^ (a2 + v5 + 2963))))();
}

uint64_t sub_1E337DB10@<X0>(int a1@<W8>)
{
  *v7 = v1;
  v5 = (a1 + 1828048273) & 0x930A2EFF;
  v11 = v9;
  v12 = (a1 + 5212) ^ (((((2 * &v10) | 0x7B9F8E8) - &v10 + 2082669452) ^ 0xDBB52F16) * v4);
  (*(v2 + 8 * ((a1 + 1223) ^ 0x3489)))(&v10);
  v12 = (v5 + 6091) ^ ((((&v10 | 0xDBD45510) - (&v10 & 0xDBD45510)) ^ 0x83BD8672) * v4);
  v11 = v8;
  (*(v2 + 8 * (v5 + 7357)))(&v10);
  return (v3 - 16257999);
}

uint64_t sub_1E337DB64(int a1, int a2, int a3, int a4)
{
  v13 = (v4 + 1575923865) & 0xA2114FFA;
  v14 = v8 + v9;
  v15 = v7 + a2;
  v16 = v5 - v8;
  v17 = v7 + a3;
  v18 = a4 - v7 + a3 - v15;
  v19 = v18 ^ v17;
  v20 = a4 - v7 + 1447631107;
  v21 = a1 - v14 + v16;
  v22 = v21 ^ (v8 + a1);
  v23 = ((v13 ^ 0xFB7) + v6) ^ 0xE3;
  v24 = v7 ^ 0xEEF86D44;
  LODWORD(STACK[0x3E8]) = 0;
  v25 = 110 * (v13 ^ 0xFBF);
  LODWORD(STACK[0x40C]) = v25 - v20 + 896451101;
  LODWORD(STACK[0x414]) = -242190562 - v19;
  LODWORD(STACK[0x418]) = -868230543 - (v14 ^ 0xE3F7DFEF);
  LODWORD(STACK[0x420]) = v18 + 231787510;
  LODWORD(STACK[0x41C]) = -391305861 - v21;
  v26 = (v16 + 1447631107) ^ v14 ^ 0xE3F7DFEF;
  LODWORD(STACK[0x3F8]) = v22 + 1503534820;
  LODWORD(STACK[0x3FC]) = (v15 ^ 0xE3F7DFEF) - 837372023;
  v19 ^= 0xEC9FF1B3;
  v27 = v20 ^ v15 ^ 0xE3F7DFEF;
  LODWORD(STACK[0x374]) = v18;
  v22 ^= 0xEC9FF1B3;
  v28 = v22 - 772712788 - v21;
  LODWORD(STACK[0x3E4]) = v16 - 1711412314;
  v29 = v26 + v28;
  v30 = v27 - 772712788 + v19 - v18;
  v31 = v26 + v22;
  LODWORD(STACK[0x3F4]) = v31 - 2071803981;
  LODWORD(STACK[0x410]) = 1230713598 - v30;
  LODWORD(STACK[0x3F0]) = v19 - v18 - 1218240864;
  v32 = v28 + v16 - 260074285;
  LODWORD(STACK[0x404]) = -1923445558 - v28;
  v28 -= 962995022;
  LODWORD(STACK[0x370]) = v16 - 260074285;
  LODWORD(STACK[0x400]) = -1104479762 - v16;
  LODWORD(STACK[0x3EC]) = v29 + 1779084284;
  v33 = v19 - v18 - 1735707810;
  v34 = v19 + v27;
  LODWORD(STACK[0x424]) = v20 + 1565808638;
  v35 = v32 - 1901414044;
  v36 = (v32 + LODWORD(STACK[0x36C])) ^ v28;
  LODWORD(STACK[0x408]) = 1443065823 - v34;
  v37 = v20 - 938419022 + v33;
  v38 = v20 + 484643938 + v30;
  v39 = ((2 * (v29 + v16 + 1447631107)) & 0x39C628C4) + ((v29 + v16 + 1447631107) ^ 0x1CE31462);
  v40 = v38 ^ (v33 + v34);
  v41 = v39 ^ (v31 + v28);
  LODWORD(STACK[0x3A8]) = 1;
  v42 = v24 ^ ((v37 ^ v33) - 285708805 - ((2 * (v37 ^ v33)) & 0xDDF0DBF6));
  LOBYTE(STACK[0x77F]) = v23 ^ v36 ^ 0xE8;
  v43 = v23 ^ v36 ^ (v35 + 48);
  LOBYTE(STACK[0x7AD]) = v42 - ((v25 ^ 0x40) & (2 * v42)) + 25;
  v44 = v42 ^ v37;
  LOBYTE(STACK[0x84B]) = v44 - ((2 * v44) & 0x33) + 25;
  LOBYTE(STACK[0x81D]) = v43 ^ 0xE8;
  v45 = v44 ^ v40;
  v46 = v35;
  v47 = STACK[0x5A0];
  *(v47 + (((((-1 - v36) & 0x1F7C181B) + (v36 & 0x1F7C181B)) ^ (((-1 - v36) & 0x286C1984) + (v36 & 0x286C1984))) & 0x408C3B9B)) = v43 ^ v41 ^ 0xE8;
  LOBYTE(STACK[0x8E9]) = v45 - ((2 * v45) & 0x33) + 25;
  v48 = v39 - v46 + 1770172907;
  v49 = v45 ^ v38;
  v50 = v41 + 1703976147 - v48;
  LOBYTE(STACK[0x987]) = v49 - ((2 * v49) & 0x33) + 25;
  LOBYTE(STACK[0x959]) = v43 ^ v41 ^ v39 ^ 0xE8;
  v51 = v36 + 749967392 - v41 - v48 + 1841023757;
  v52 = v43 ^ v41 ^ v39 ^ v51;
  v53 = v39 - v46 - 174258665;
  v54 = v50 + v46;
  v55 = v50 + v46 + 21;
  v56 = v38 - (v37 + 817088997);
  v57 = v40 + 1703976147 - v56;
  v58 = (v37 ^ v33) - v40 - v56 - 1703976147;
  v59 = v57 + v37 + 817088997;
  v56 -= 1944431572;
  v60 = v49 ^ v58;
  LOBYTE(STACK[0xA25]) = v60 - ((2 * v60) & 0x33) + 25;
  LOBYTE(STACK[0x9F7]) = v52 ^ 0xE8;
  v61 = v60 ^ v59;
  LOBYTE(STACK[0xAC3]) = v61 + (~(2 * v61) | 0xCD) + 26;
  v62 = v52 ^ v55;
  v63 = v61 ^ v57;
  LOBYTE(STACK[0x798]) = v63 - ((2 * v63) & 0x33) + 25;
  v64 = v62 ^ v50;
  v65 = v54 - 1390950988;
  v66 = v41 - 240455425;
  v67 = v63 ^ v56;
  LOBYTE(STACK[0xA95]) = v62 ^ 0xE8;
  LOBYTE(STACK[0x836]) = (v63 ^ v56) - ((2 * (v63 ^ v56)) & 0x33) + 25;
  v68 = v64 ^ v53;
  v59 += 379221919;
  v69 = v66 ^ 0x70B46C2F ^ v51;
  v70 = v66 ^ 0x19A65007;
  v71 = v65 - (v66 ^ 0x19A65007);
  LOBYTE(STACK[0x76A]) = v64 ^ 0xE8;
  v72 = (v65 ^ v53) + v65;
  LOBYTE(STACK[0x808]) = v64 ^ v53 ^ 0xE8;
  v73 = (v40 - 240455425) ^ 0x19A65007;
  v74 = (v59 ^ v56) + v59;
  v75 = v68 ^ v69;
  v76 = (v40 - 240455425) ^ 0x70B46C2F ^ v58;
  v77 = v59 - v73;
  LOBYTE(v58) = v75 ^ v71;
  LOBYTE(STACK[0x8D4]) = (v67 ^ v76) - ((2 * (v67 ^ v76)) & 0x33) + 25;
  LOBYTE(STACK[0x8A6]) = v75 ^ 0xE8;
  v78 = v75 ^ v71 ^ v70;
  v79 = v67 ^ v76 ^ v77;
  LOBYTE(STACK[0x972]) = v79 - ((2 * v79) & 0x33) + 25;
  LOBYTE(v55) = v58 ^ 0xE8;
  v80 = v79 ^ v73;
  LOBYTE(STACK[0xA10]) = (v79 ^ v73) - ((2 * (v79 ^ v73)) & 0x33) + 25;
  v81 = v71 - 1595501018;
  v82 = (v71 - 1595501018) ^ v69;
  LOBYTE(v69) = v78 ^ v72;
  LOBYTE(STACK[0x944]) = v55;
  v83 = v80 ^ v74;
  LOBYTE(v80) = (v80 ^ v74) - ((2 * (v80 ^ v74)) & 0x33) + 25;
  v84 = v74 - v77;
  v77 -= 1595501018;
  LOBYTE(STACK[0xAAE]) = v80;
  v85 = v78 ^ v72 ^ (v82 + 21);
  v86 = v76 ^ v77;
  LOBYTE(STACK[0x9E2]) = v78 ^ 0xE8;
  v87 = v86 + v84;
  v88 = (v77 ^ v73) - 1131177730;
  v89 = v86 + v77;
  LOWORD(v77) = v86 + 789;
  v90 = v71 + 991760886 + v82;
  v91 = v83 ^ (v86 - 1018297579);
  v92 = v72 - v71 + v82;
  LOBYTE(STACK[0x783]) = v91 + (~(2 * v91) | 0xCD) + 26;
  v93 = v91 ^ v89;
  LOBYTE(STACK[0xA80]) = v69 ^ 0xE8;
  LOBYTE(STACK[0x821]) = v93 - ((2 * v93) & 0x33) + 25;
  v94 = v85 ^ (((2 * v90) & 0x60) + (v90 ^ 0x30));
  v95 = v93 ^ v88;
  LOWORD(v69) = 234 - v86;
  v86 += 1909929223;
  v96 = (v81 ^ v70) - 1131177730;
  LOBYTE(STACK[0x8BF]) = v95 - ((2 * v95) & 0x33) + 25;
  v82 += 1909929223;
  LOBYTE(STACK[0x755]) = v85 ^ 0xE8;
  v97 = v94 ^ v96 ^ v92;
  v98 = v87 + v88;
  v99 = v92 + v96;
  LOBYTE(STACK[0x7F3]) = v94 ^ 0xE8;
  LOBYTE(STACK[0x891]) = v94 ^ v96 ^ 0xE8;
  v100 = v82 ^ v96 ^ (v90 + 1707705392);
  v82 ^= 0xDEAD222u;
  LOBYTE(STACK[0x92F]) = v97 ^ 0xE8;
  v101 = v86 ^ v88 ^ v89;
  v102 = v95 ^ v87;
  *(v47 + ((v77 ^ v69) & 0x23D)) = v102 - ((2 * v102) & 0x33) + 25;
  v103 = v90 - v100 + 2077298357;
  LOBYTE(v77) = v97 ^ v82;
  v86 ^= 0xDEAD222u;
  v104 = v102 ^ v86;
  v105 = v89 - v101 + 369592965;
  LOBYTE(STACK[0x9FB]) = v104 - ((2 * v104) & 0x33) + 25;
  v106 = v104 ^ v105;
  v107 = v97 ^ v82 ^ v103;
  LOBYTE(STACK[0x9CD]) = v77 ^ 0xE8;
  LOBYTE(STACK[0xA99]) = v106 - ((2 * v106) & 0x33) + 25;
  v108 = v103 ^ v99;
  v109 = v107 ^ v100;
  LOBYTE(STACK[0xA6B]) = v107 ^ 0xE8;
  v110 = v100 - v108;
  v111 = v103 + v82;
  v112 = v106 ^ v101;
  v113 = v109 ^ v108;
  LOBYTE(STACK[0x76E]) = v112 - ((2 * v112) & 0x33) + 25;
  v114 = v108 + v82;
  v115 = v101 - (v105 ^ v98);
  v116 = v103 - v114;
  v117 = v112 ^ v105 ^ v98;
  v118 = (v105 ^ v98) + v86;
  LOBYTE(STACK[0x740]) = v109 ^ 0xE8;
  v119 = v114 ^ v111;
  LOBYTE(STACK[0x80C]) = v117 - ((2 * v117) & 0x33) + 25;
  v120 = v105 + v86;
  LOBYTE(STACK[0x7DE]) = v113 ^ 0xE8;
  v121 = v119 ^ v116;
  v122 = v110 + v111;
  v123 = v110 - v121;
  v124 = v113 ^ (v110 + v111);
  v125 = v118 ^ v120;
  LOBYTE(STACK[0x87C]) = v124 ^ 0xE8;
  v126 = v124 ^ v121;
  v127 = (v115 ^ v120) + 2 * (v115 & v120);
  v128 = v117 ^ v127;
  LOBYTE(STACK[0x91A]) = v126 ^ 0xE8;
  LOBYTE(STACK[0x8AA]) = v128 - ((2 * v128) & 0x33) + 25;
  v122 -= 1453154451;
  v129 = (v118 + v105 - 2 * v118) ^ v125;
  v130 = v127 - 1453154451;
  v131 = v128 ^ v129;
  LOBYTE(STACK[0x9B8]) = v126 ^ v123 ^ 0xE8;
  v132 = v115 - v129;
  v133 = v126 ^ v123 ^ v119;
  LOBYTE(STACK[0x948]) = v131 + (~(2 * v131) | 0xCD) + 26;
  v121 ^= 0xBF18D0F4;
  v119 -= 341023681;
  LOBYTE(STACK[0x9E6]) = (v131 ^ v132) - ((2 * (v131 ^ v132)) & 0x33) + 25;
  v134 = v131 ^ v132 ^ v125;
  v135 = v119 ^ v122;
  LOBYTE(STACK[0xA84]) = v134 - ((2 * v134) & 0x33) + 25;
  v136 = v121 + v119;
  LOBYTE(STACK[0xA56]) = v133 ^ 0xE8;
  v137 = v122 ^ 0xF521640D ^ v123;
  v138 = v133 ^ v135;
  v139 = v125 - 341023681;
  v140 = v137 + v121;
  v141 = v138 ^ (v137 + v121);
  v142 = v130 ^ (v125 - 341023681);
  v143 = v134 ^ v142;
  LOBYTE(STACK[0x72B]) = v138 ^ 0xE8;
  v129 ^= 0xBF18D0F4;
  v144 = v129 + v139;
  LOBYTE(v90) = v141 ^ v137;
  v145 = v130 ^ 0xF521640D ^ v132;
  v146 = v145 + v129;
  LOBYTE(STACK[0x759]) = v143 - ((2 * v143) & 0x33) + 25;
  v147 = v141 ^ v137 ^ v136;
  v148 = v143 ^ (v145 + v129);
  LOBYTE(STACK[0x905]) = v141 ^ v137 ^ v136 ^ 0xE8;
  LOBYTE(STACK[0x7F7]) = v148 - ((2 * v148) & 0x33) + 25;
  v149 = v148 ^ v145;
  LOBYTE(STACK[0x895]) = (v148 ^ v145) - ((2 * (v148 ^ v145)) & 0x33) + 25;
  v150 = v140 ^ v135;
  LOBYTE(STACK[0x7C9]) = v141 ^ 0xE8;
  v151 = v135 - 932540651;
  v152 = v145 - v144;
  v153 = v149 ^ v144;
  v154 = v139 - v145;
  LOBYTE(STACK[0x933]) = v153 + (~(2 * v153) | 0xCD) + 26;
  v155 = v146 ^ v142;
  v156 = v150 ^ (v137 - v136);
  v157 = v156 + v151;
  LOBYTE(STACK[0x867]) = (v90 - ((2 * v90) & 0x28) - 108) ^ 0x7C;
  v158 = (v146 ^ v142) + v152;
  v142 -= 932540651;
  v159 = v154 + v142;
  v160 = v136 - v140 + v151;
  v161 = v158 - 2 * (v155 & v152);
  v162 = v161 + v142;
  LOBYTE(v152) = v147 ^ v157;
  v163 = v153 ^ (v161 + v142);
  LOBYTE(STACK[0x9D1]) = v163 ^ 0x19;
  v164 = v147 ^ v157 ^ (v150 + 250);
  v165 = v163 ^ (v155 - 15361286);
  LOBYTE(STACK[0xA6F]) = v165 ^ 0x19;
  LOBYTE(v142) = v164 ^ v156;
  LOBYTE(STACK[0xA41]) = (v164 - ((2 * v164) & 0x3C) - 98) ^ 0x76;
  v166 = v165 ^ v161;
  LOBYTE(STACK[0x744]) = v166 ^ 0x19;
  LOBYTE(STACK[0x9A3]) = (v152 - ((2 * v152) & 0xA4) - 46) ^ 0x3A;
  v167 = v164 ^ v156 ^ v160;
  v168 = v156 ^ 0xCB5059B6 ^ v157;
  LOBYTE(STACK[0x7E2]) = v166 ^ v159 ^ 0x19;
  LOBYTE(STACK[0x7B4]) = (v167 - ((2 * v167) & 0x8C) - 58) ^ 0x2E;
  v169 = v161 ^ 0xCB5059B6 ^ v162;
  LOBYTE(STACK[0xADF]) = (~(2 * v142) + v142) ^ 0x17;
  v170 = v166 ^ v159 ^ v169;
  v171 = v156 - 569577978;
  LOBYTE(STACK[0x880]) = v170 ^ 0x19;
  v172 = v168 ^ (v160 - v156);
  LOBYTE(STACK[0x852]) = ((v167 ^ v168) - ((2 * (v167 ^ v168)) & 0xEF) - 9) ^ 0x1F;
  v173 = v155 + 497571525 + v161;
  v174 = v169 ^ (v159 - v161);
  v175 = v170 ^ v173;
  LOBYTE(STACK[0x91E]) = v175 ^ 0x19;
  v176 = v150 + 497571525 + v156;
  v177 = v167 ^ v168 ^ v176;
  LOBYTE(v166) = v177 ^ v171;
  v178 = v175 ^ (v161 - 569577978);
  v179 = v168 ^ v176;
  LOBYTE(STACK[0x9BC]) = v178 ^ 0x19;
  v180 = v178 ^ v174;
  v181 = v177 ^ v171 ^ v172;
  LOBYTE(STACK[0x8F0]) = (v177 - ((2 * v177) & 0x4C) + 38) ^ 0xCE;
  v182 = v172 + 669101055;
  LOBYTE(STACK[0xA2C]) = ((v166 ^ v172) - ((2 * (v166 ^ v172)) & 0xFB) + 125) ^ 0x95;
  v183 = (v172 + 669101055) ^ v171;
  LOBYTE(STACK[0xA5A]) = v180 ^ 0x19;
  v184 = (v161 - 569577978) ^ v173;
  v185 = v169 ^ v173;
  v186 = v182 & v171;
  v187 = (v176 ^ v171) - v179;
  v188 = v161 + 99523077 + v174;
  v189 = v184 - v185;
  LOBYTE(STACK[0x98E]) = (v166 - ((2 * v166) & 0x6E) + 55) ^ 0xDF;
  v190 = v183 + 2 * v186;
  v191 = v190 + v179;
  v192 = v188 + v185;
  v193 = v182 - v190;
  v194 = v181 ^ (v190 + v179);
  v195 = v180 ^ v192;
  v188 += 1478074036;
  LOBYTE(STACK[0x79F]) = ((v194 ^ v187) - ((2 * (v194 ^ v187)) & 0xDD) - 18) ^ 6;
  v190 += 1478074036;
  LOBYTE(STACK[0x72F]) = v195 ^ 0x19;
  v196 = v194 ^ v187 ^ v190;
  v197 = v196 ^ v193;
  v198 = v195 ^ v189;
  LOBYTE(STACK[0xACA]) = (v194 - ((2 * v194) & 0x60) - 80) ^ 0x58;
  LOBYTE(STACK[0x7CD]) = v198 ^ 0x19;
  v193 += 491597188;
  v199 = v198 ^ v188;
  v200 = v187 - v190;
  LOBYTE(STACK[0x86B]) = v199 ^ 0x19;
  v201 = v199 ^ (569577978 - v161);
  LOBYTE(STACK[0x8DB]) = (v197 - (v11 & (2 * v197)) + 92) ^ 0xB4;
  LOBYTE(STACK[0x83D]) = (v196 - ((2 * v196) & 0xBF) - 33) ^ 0x37;
  LOBYTE(STACK[0x909]) = v201 ^ 0x19;
  v202 = v191 - v193;
  v203 = v202 + v190;
  v204 = v203 ^ v202;
  v203 -= 1466572217;
  v205 = 1061175166 - v161;
  v206 = v189 - v188;
  v207 = v200 ^ v193;
  v208 = v204 ^ v200;
  v209 = v192 - v205;
  v210 = v209 + v188;
  v211 = v210 ^ v209;
  v212 = v197 ^ v200;
  v210 -= 1466572217;
  LOBYTE(STACK[0x979]) = ((v197 ^ v204) - ((2 * (v197 ^ v204)) & 0xE0) + 112) ^ 0x98;
  LOBYTE(STACK[0x9A7]) = v201 ^ 0x19 ^ v211;
  v213 = v211 ^ v206;
  v214 = v201 ^ v206;
  v215 = v212 ^ v203 ^ v207;
  LOBYTE(STACK[0xA45]) = v214 ^ 0x19;
  v216 = v214 ^ v210;
  v217 = v207 - v204;
  v218 = v208 ^ v217;
  v219 = __ROR4__(__ROR4__(v206 ^ v205, 20) ^ 0x27FD9069, 12);
  LOBYTE(STACK[0xAE3]) = v216 ^ 0x19;
  v220 = v216 ^ v219 ^ 0x6927FD9;
  v221 = (v219 ^ 0x6927FD9) - v211;
  LOBYTE(STACK[0x7B8]) = v220 ^ 0x19;
  LOBYTE(STACK[0xA17]) = (v212 - ((2 * v212) & 0xE0) - 16) ^ 0x18;
  LOBYTE(STACK[0xAB5]) = ((v212 ^ v203) - ((2 * (v212 ^ v203)) & 0x30) + 24) ^ 0xF0;
  v222 = v203 - v218;
  v223 = v213 ^ v221;
  v224 = v217 - v222;
  LOBYTE(STACK[0x78A]) = (v215 - ((2 * v215) & 0x48) - 92) ^ 0x4C;
  v225 = v224 + v218;
  v226 = v222 ^ v218;
  v227 = v215 ^ (v207 + 212) ^ (v224 + v218);
  v228 = v210 - (v213 ^ v221);
  v229 = v220 ^ ((v219 ^ 0x6927FD9) + 1409564116);
  LOBYTE(STACK[0x856]) = v220 ^ ((v219 ^ 0xD9) - 44) ^ 0x19;
  v230 = v221 - v228;
  v231 = v228 ^ v223;
  LOBYTE(STACK[0x828]) = ((v215 ^ (v207 - 44)) - ((2 * (v215 ^ (v207 - 44))) & 0xD4) - 22) ^ 2;
  v232 = v207 - 588461541;
  v233 = v230 + v223;
  v234 = v227 ^ v226 ^ v224;
  v235 = v229 ^ v233;
  v236 = (v219 ^ 0x6927FD9) - 588461541;
  LOBYTE(STACK[0x8F4]) = v235 ^ 0x19;
  v237 = v235 ^ v231;
  LOBYTE(STACK[0x992]) = v237 ^ 0x19;
  LOBYTE(STACK[0x8C6]) = (v227 - ((2 * v227) & 0xE8) - 12) ^ 0x1C;
  v238 = v237 ^ v230;
  v239 = v224 - v226;
  v240 = v230 - v231;
  LOBYTE(STACK[0xA30]) = v238 ^ 0x19;
  LOBYTE(STACK[0x964]) = ((v227 ^ v226) - ((2 * (v227 ^ v226)) & 0xCA) + 101) ^ 0x8D;
  v241 = (v225 - v226) ^ (v224 - v226);
  v232 ^= 0x60CA532Fu;
  v242 = v239 - 2100902933;
  LOBYTE(STACK[0xA02]) = (v234 - ((2 * v234) & 0xC4) - 30) ^ 0xA;
  v243 = (v233 - v231) ^ (v230 - v231);
  v244 = v236 ^ 0x60CA532F;
  v245 = v238 ^ v236 ^ 0x60CA532F;
  v246 = v240 - 2100902933;
  v247 = v234 ^ v232;
  v248 = (v236 ^ 0x60CA532F) & 0xF080561;
  v249 = (v236 ^ 0x60CA532F) - 972004047 + v231;
  v250 = v232 - 972004047 + v226;
  LOBYTE(STACK[0xACE]) = v245 ^ 0x19;
  LOBYTE(v239) = v247 + (~(2 * v247) | 0xB3);
  v251 = v247 ^ v241;
  LOBYTE(STACK[0xAA0]) = (v239 - 89) ^ 0x4E;
  v252 = v245 ^ v243;
  LOBYTE(STACK[0x775]) = (v251 - ((2 * v251) & 0x5A) + 45) ^ 0xC5;
  v253 = v251 ^ v250;
  LOBYTE(STACK[0x7A3]) = v252 ^ 0x19;
  v254 = v236 & 0xF080561 ^ 0xF000440;
  v255 = v250 ^ 0x44353AE7;
  LOBYTE(STACK[0x813]) = (v253 - ((2 * v253) & 0xDF) - 17) ^ 7;
  v256 = v232 - (v250 ^ 0x44353AE7);
  v257 = v252 ^ v249;
  v258 = v253 ^ v242;
  *(v47 + (((v250 & 0x10C799B1 ^ 0x10C799B1) + (v250 & 0x10C799B1)) & (v248 + v254) | 0x101)) = v257 ^ 0x19;
  v259 = v241 ^ v242;
  v260 = v257 ^ v246;
  LOBYTE(STACK[0x8DF]) = v257 ^ v246 ^ 0x19;
  v261 = v242 - v256;
  v262 = v255 - v256;
  LOBYTE(STACK[0x8B1]) = (v258 - ((2 * v258) & 0xAA) + 85) ^ 0xBD;
  v249 ^= 0x44353AE7u;
  v263 = v244 - v249;
  v264 = v261 ^ v256;
  v265 = v243 ^ v246;
  v266 = v246 - v263;
  v267 = v258 ^ v261 ^ v256;
  v268 = v266 ^ v263;
  v269 = v260 ^ v266 ^ v263;
  LOBYTE(STACK[0x94F]) = (v267 - ((2 * v267) & 0x8A) + 69) ^ 0xAD;
  v270 = v267 ^ (v259 + v256);
  v271 = v270 ^ (v255 - v256);
  LOBYTE(STACK[0xA8B]) = ((v270 ^ v262) - ((2 * (v270 ^ v262)) & 0xEA) + 117) ^ 0x9D;
  LOBYTE(STACK[0x97D]) = v269 ^ 0x19;
  v272 = v269 ^ (v265 + v263);
  LOBYTE(STACK[0xA1B]) = v272 ^ 0x19;
  v273 = v259 + v255;
  v274 = LODWORD(STACK[0x384]) != v10;
  v275 = v249 - v263;
  v276 = v262 + v261;
  v277 = v266 + v275;
  LOBYTE(v261) = (v270 + (~(2 * v270) | 0xDF) + 17) ^ 0xF8;
  v278 = v271 ^ v276;
  LOBYTE(STACK[0x9ED]) = v261;
  v279 = v276 + 395291306;
  LOBYTE(STACK[0xAB9]) = v272 ^ v275 ^ 0x19;
  v280 = v265 + v249;
  v281 = v272 ^ v275 ^ v277;
  LOBYTE(STACK[0x78E]) = v281 ^ 0x19;
  v282 = (v276 ^ v264) - v273;
  LOBYTE(STACK[0x760]) = (v278 + (~(2 * v278) | 0x69) + 76) ^ 0xA3;
  v283 = (v277 ^ v268) - v280;
  v284 = v278 ^ v282;
  v285 = (v275 - 1124528355) ^ v280;
  v262 -= 1124528355;
  v286 = v262 ^ v273;
  v287 = v281 ^ v283;
  v288 = v279 + v262 - 2 * v279;
  v289 = v282 + v279;
  LOBYTE(STACK[0x82C]) = v281 ^ v283 ^ 0x19;
  v277 += 395291306;
  LOBYTE(v281) = (v284 - ((2 * v284) & 0x18) + 12) ^ 0xE4;
  v290 = v284 ^ v286;
  v291 = v287 ^ v285;
  v292 = v275 - 1124528355 - v277;
  LOBYTE(STACK[0x7FE]) = v281;
  LOBYTE(v281) = v290 - ((2 * v290) & 0xFC);
  v293 = v290 ^ v288;
  v294 = v288 ^ v282;
  LOBYTE(v288) = (v281 + 126) ^ 0x96;
  LOBYTE(STACK[0x8CA]) = v291 ^ 0x19;
  v295 = v283 + v277;
  LOBYTE(STACK[0x89C]) = v288;
  v296 = v291 ^ v292;
  v297 = v289 ^ v286;
  LOBYTE(v288) = v293 - ((2 * v293) & 0xAE);
  v298 = v293 ^ v289;
  LOBYTE(STACK[0x93A]) = (v288 + 87) ^ 0xBF;
  v299 = v292 ^ v283;
  v300 = v289 - v294;
  LOBYTE(STACK[0x968]) = v296 ^ 0x19;
  v301 = (v283 + v277) ^ v285;
  v302 = v296 ^ v295;
  LOBYTE(STACK[0xA06]) = v302 ^ 0x19;
  v282 -= 1847554120;
  LOBYTE(STACK[0x9D8]) = (v298 + (~(2 * v298) | 0xC5) - 98) ^ 0x75;
  v303 = v294 + v282;
  v304 = v302 ^ (v283 - 1847554120);
  LOBYTE(STACK[0xA76]) = ((v298 ^ v282) + (~(2 * (v298 ^ v282)) | 0xA9) - 84) ^ 0x43;
  v305 = v298 ^ v282 ^ ((v289 ^ v286) + v282);
  v306 = v300 ^ v297;
  LOBYTE(STACK[0xAA4]) = v304 ^ 0x19;
  v307 = v305 ^ (v294 + v282);
  v308 = (v295 - v299) ^ v301;
  v309 = v304 ^ (v301 + v283 - 1847554120);
  LOBYTE(STACK[0x74B]) = (v305 - ((2 * v305) & 0x77) - 69) ^ 0x53;
  LOBYTE(STACK[0x779]) = v309 ^ 0x19;
  v310 = v307 ^ v306;
  v311 = v309 ^ (v299 + v283 - 1847554120);
  LOBYTE(STACK[0x7E9]) = (v307 - 2 * (v307 & 7) + 7) ^ 0xEF;
  LOBYTE(STACK[0x817]) = v311 ^ 0x19;
  v312 = v297 + v282 - v303;
  v313 = v311 ^ v308;
  LODWORD(STACK[0x3A4]) = v310;
  v314 = v282 + v306;
  v315 = v306 - v312;
  LOBYTE(STACK[0x887]) = (v310 + (~(2 * v310) | 0xDB) + 19) ^ 0xFA;
  v316 = ((v315 ^ v312 ^ 0xC1EF2A4A) + 674515109) ^ ((v315 ^ v312 ^ 0x15F607B2) - 64133795) ^ ((v315 ^ v312 ^ 0xD4192DF8) + 1036144407);
  LOBYTE(STACK[0x8B5]) = v313 ^ 0x19;
  LODWORD(STACK[0x590]) = ((v299 - v301 - (v283 - 1847554120)) ^ 0xFF9F4FEF) + 2020785721 + ((2 * (v299 - v301 - (v283 - 1847554120))) & 0xFF3E9FDE);
  LODWORD(STACK[0x3A0]) = v313 ^ 0xEEF86DFB;
  LODWORD(STACK[0x58C]) = ((v315 - v314) ^ 0xD29776FD) + 805027824 + ((2 * (v315 - v314)) & 0xA52EEDFA);
  LODWORD(STACK[0x584]) = v316;
  LODWORD(STACK[0x47C]) = v316 + 1329164605;
  LODWORD(STACK[0x5B0]) = (v308 + v283 - 1847554120) ^ 0x4545817C;
  return (*(v12 + 8 * (v25 ^ (7 * v274))))();
}

uint64_t sub_1E337F034()
{
  STACK[0xAE8] = v1;
  v3 = STACK[0x4E0];
  STACK[0xAF0] = STACK[0x4E0];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 + 1307186519) & 0xB215DFFF) + 1129)) ^ (v0 - 6443))))();
}

uint64_t sub_1E337F084()
{
  v2 = STACK[0x8A8];
  STACK[0x5B8] = *(v1 + 8 * (v0 - 5198));
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 1565123252) & 0xA2B605AB) - 31)) ^ (v0 - 4628))))();
}

uint64_t sub_1E337F098@<X0>(uint64_t a1@<X1>, int a2@<W2>, char a3@<W7>, uint64_t a4@<X8>)
{
  v13 = *(a1 + v12 + (v5 >> 4) * v8 - ((((v12 + (v5 >> 4) * v8) * v9) >> 32) >> 9) * v7);
  v14 = (*(a1 + (v12 + (v5 & 0xF) * v8 - ((4469269 * (v12 + (v5 & 0xF) * v8)) >> 32) * v7)) ^ 0xBF ^ (((32 * v13) ^ 0x9F) + ((16 * v13) ^ 0x30) - 12)) * a2 + 527956;
  LOBYTE(v14) = *(a4 + (v14 - ((4628198 * v14) >> 32) * v10));
  v15 = ((((2 * v14) & 0xD4) + (v14 ^ 0x6A)) ^ a3) * v8 + 186990;
  *(a1 + v5 * v8 + 242190 - ((((v5 * v8 + 242190) * v9) >> 32) >> 9) * v7) = *(a1 + (v15 - ((4469269 * v15) >> 32) * v7));
  return (*(v11 + 8 * (((v5 != 255) * v6) ^ v4)))();
}

uint64_t sub_1E337F198@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, int a4@<W8>)
{
  STACK[0x398] = v7;
  STACK[0x2B8] = v6;
  LODWORD(STACK[0x5B0]) = 910040778;
  LODWORD(STACK[0x58C]) = v4;
  STACK[0x598] = v5;
  return (*(v5 + 8 * (((((a4 + 1395) ^ 0x1A2D) - 4134) * (v4 == v8)) ^ a4)))(1711764829, a1, a2, 2563765506, 910040778, a3, 3404387979);
}

uint64_t sub_1E337F2B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X7>, unint64_t a8@<X8>)
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  v22 = vdupq_n_s64(a8);
  *&STACK[0x320] = vdupq_n_s64(v13);
  *&STACK[0x330] = vdupq_n_s64(a7);
  *&STACK[0x310] = vdupq_n_s64(v14);
  v23 = v17 + v19 + a6;
  v24 = v16;
  v25 = 5 * ((v8 - 6023) ^ 0x2C3u);
  *&STACK[0x2F0] = vdupq_n_s64(a2);
  *&STACK[0x300] = vdupq_n_s64(v24);
  *&STACK[0x2D0] = vdupq_n_s64(a3);
  *&STACK[0x2E0] = vdupq_n_s64(v18);
  *&STACK[0x2B0] = vdupq_n_s64(a5);
  *&STACK[0x2C0] = vdupq_n_s64(a4);
  *&STACK[0x290] = vdupq_n_s64(v15);
  *&STACK[0x2A0] = vdupq_n_s64(v9);
  *&STACK[0x270] = vdupq_n_s64(v21);
  *&STACK[0x280] = vdupq_n_s64(v12);
  *&STACK[0x250] = vdupq_n_s64(v10);
  *&STACK[0x260] = vdupq_n_s64(v11);
  *&STACK[0x240] = vdupq_n_s64(0xE831AF248D427C36);
  *&STACK[0x360] = xmmword_1E4316E10;
  v27 = *&STACK[0x340];
  v26 = *&STACK[0x350];
  v29 = *&STACK[0x2F0];
  v28 = *&STACK[0x300];
  v30 = *&STACK[0x2E0];
  v32 = *&STACK[0x2B0];
  v31 = *&STACK[0x2C0];
  v34 = *&STACK[0x290];
  v33 = *&STACK[0x2A0];
  v36 = *&STACK[0x270];
  v35 = *&STACK[0x280];
  v38 = *&STACK[0x250];
  v37 = *&STACK[0x260];
  *&v39 = v23 - 5;
  *(&v39 + 1) = v23 - 6;
  *&STACK[0x3A0] = v39;
  *&v39 = v23 - 3;
  *(&v39 + 1) = v23 - 4;
  *&STACK[0x390] = v39;
  *&v39 = v23 - 1;
  *(&v39 + 1) = v23 - 2;
  *&STACK[0x380] = v39;
  v40.i64[0] = v23 + 3;
  v40.i64[1] = v23 + 2;
  v41.i64[0] = v23 + 5;
  v41.i64[1] = v23 + 4;
  v42.i64[0] = v23 + 7;
  v42.i64[1] = v23 + 6;
  v43.i64[0] = v23 - 7016 + v25;
  v43.i64[1] = v23 + 8;
  v44 = vandq_s8(v43, *&STACK[0x3B0]);
  v45 = vandq_s8(v42, *&STACK[0x3B0]);
  v46 = vandq_s8(v41, *&STACK[0x3B0]);
  v47 = vandq_s8(v40, *&STACK[0x3B0]);
  v48 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v52 = vaddq_s64(v51, v27);
  v53 = vaddq_s64(v50, v27);
  v54 = vaddq_s64(v49, v27);
  v55 = *&STACK[0x330];
  v56 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v51), v22), v52), vandq_s8(v52, v22));
  v57 = vaddq_s64(v48, v27);
  v58 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v48), v22), v57);
  v59 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v49), v22), v54);
  v60 = vandq_s8(v57, v22);
  v61 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v50), v22), v53), vandq_s8(v53, v22));
  v62 = vsubq_s64(v59, vandq_s8(v54, v22));
  v63 = vsubq_s64(v58, v60);
  v64 = *&STACK[0x320];
  v65 = veorq_s8(v63, *&STACK[0x320]);
  v66 = veorq_s8(v62, *&STACK[0x320]);
  v67 = veorq_s8(v62, *&STACK[0x310]);
  v68 = veorq_s8(v63, *&STACK[0x310]);
  v69 = *&STACK[0x310];
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67), v28);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68), v28);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72);
  v76 = *&STACK[0x2D0];
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), v29), v75), v30), *&STACK[0x2D0]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), v29), v74), v30), *&STACK[0x2D0]);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v80);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(v83, vandq_s8(vaddq_s64(v83, v83), v31)), v32), v33);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(v82, vandq_s8(vaddq_s64(v82, v82), v31)), v32), v33);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v34);
  v91 = veorq_s8(v89, v34);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), v35);
  v98 = veorq_s8(v96, v35);
  v99 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v101);
  v104 = veorq_s8(vaddq_s64(v102, v100), v36);
  v105 = veorq_s8(v103, v36);
  v106 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v107 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v108 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v109.i64[0] = v23 + 1;
  v109.i64[1] = v23;
  *&STACK[0x370] = v109;
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, v106));
  v111 = vaddq_s64(v108, v107);
  v211.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v37), v110), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v26)));
  v211.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v37), v111), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v26)));
  v112 = veorq_s8(v61, v64);
  v113 = veorq_s8(v61, v69);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v28);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), v29), v116), v30), v76);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(v119, vandq_s8(vaddq_s64(v119, v119), v31)), v32), v33);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v34);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v35);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v36);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL)));
  v128 = vandq_s8(v109, *&STACK[0x3B0]);
  v211.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v37), v127), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v26)));
  v129 = veorq_s8(v56, v64);
  v130 = veorq_s8(v56, v69);
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v28);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), v29), v133), v30), v76);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v31)), v32), v33);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v34);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v35);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v36);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = vandq_s8(*&STACK[0x380], *&STACK[0x3B0]);
  v147 = vaddq_s64(v145, v144);
  v148 = vandq_s8(*&STACK[0x390], *&STACK[0x3B0]);
  v211.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v37), v147), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v26)));
  v149 = vandq_s8(*&STACK[0x3A0], *&STACK[0x3B0]);
  v150 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v154 = vaddq_s64(v153, v27);
  v155 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v153), v22), v154), vandq_s8(v154, v22));
  v156 = vaddq_s64(v152, v27);
  v157 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v152), v22), v156), vandq_s8(v156, v22));
  v158 = vaddq_s64(v151, v27);
  v159 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v151), v22), v158), vandq_s8(v158, v22));
  v160 = vaddq_s64(v150, v27);
  v161 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v150), v22), v160), vandq_s8(v160, v22));
  v150.i64[0] = vqtbl4q_s8(v211, *&STACK[0x360]).u64[0];
  v211.val[0] = veorq_s8(v161, v64);
  v211.val[1] = veorq_s8(v159, v64);
  v162 = veorq_s8(v159, v69);
  v163 = veorq_s8(v161, v69);
  v211.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v162), v28);
  v211.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL), v163), v28);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v164 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v165 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v165);
  v211.val[1] = vaddq_s64(v211.val[2], v164);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v211.val[1], v211.val[1]), v29), v211.val[1]), v30), v76);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v211.val[0], v211.val[0]), v29), v211.val[0]), v30), v76);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v166 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v167 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v167);
  v211.val[1] = vaddq_s64(v211.val[2], v166);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[1], vandq_s8(vaddq_s64(v211.val[1], v211.val[1]), v31)), v32), v33);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[0], vandq_s8(vaddq_s64(v211.val[0], v211.val[0]), v31)), v32), v33);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v168 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v169 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v169);
  v211.val[1] = veorq_s8(vaddq_s64(v211.val[2], v168), v34);
  v211.val[0] = veorq_s8(v211.val[0], v34);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v170 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v171 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v171);
  v211.val[1] = veorq_s8(vaddq_s64(v211.val[2], v170), v35);
  v211.val[0] = veorq_s8(v211.val[0], v35);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v172 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v173 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v173);
  v211.val[1] = veorq_s8(vaddq_s64(v211.val[2], v172), v36);
  v211.val[0] = veorq_s8(v211.val[0], v36);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v174 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), veorq_s8(v211.val[1], v211.val[2]));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL), v174);
  v211.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v37), v175), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v26)));
  v211.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v176, v176), v37), v176), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v26)));
  v177 = veorq_s8(v157, v64);
  v178 = veorq_s8(v157, v69);
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v28);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v29), v181), v30), v76);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(v184, vandq_s8(vaddq_s64(v184, v184), v31)), v32), v33);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v34);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v35);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v36);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL)));
  v211.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), v37), v192), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v26)));
  v193 = veorq_s8(v155, v64);
  v194 = veorq_s8(v155, v69);
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v28);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197, v197), v29), v197), v30), v76);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v200, vandq_s8(vaddq_s64(v200, v200), v31)), v32), v33);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), v34);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), v35);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), v36);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL)));
  v211.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v208, v208), v37), v208), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v26)));
  v150.i64[1] = vqtbl4q_s8(v211, *&STACK[0x360]).u64[0];
  v209 = vrev64q_s8(v150);
  *(a6 + a1 - 7041 + v25) = veorq_s8(vextq_s8(v209, v209, 8uLL), *(v23 - 7031 + v25));
  return (*(v20 + 8 * ((7220 * (-(a6 & 0xFFFFFFF0) == -16)) ^ (v8 - 6023))))();
}

uint64_t sub_1E337FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x4F8];
  STACK[0x5E0] = STACK[0x4F8];
  return (*(v4 + 8 * (((((v5 == 0) ^ v3) & 1) * ((v3 ^ 0x234F) - 9017)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1E337FE90()
{
  LODWORD(STACK[0x528]) = -2104072441;
  LODWORD(STACK[0x52C]) = 463394776;
  v4 = *v1;
  v5 = 1824088897 * ((v3 + 0x1DE7F8D8CD174060 - 2 * ((v3 - 152) & 0x1DE7F8D8CD1740F8)) ^ 0x706095D3957E939ALL);
  *(v3 - 112) = (v0 - 1067440736) ^ (1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A));
  *(v3 - 152) = 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A);
  *(v3 - 144) = 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A) - 1607385763 + v0;
  *(v3 - 140) = 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A) + v0 - 1067440736 - 107;
  v6 = v3 - 152;
  *(v6 + 16) = v4 ^ v5;
  *(v3 - 128) = ((v0 - 1067440736) ^ 0x3AD) - 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A);
  *(v6 + 32) = v5;
  v7 = (*(v2 + 8 * (v0 + 1232701030)))(v3 - 152);
  return (*(v2 + 8 * *(v3 - 148)))(v7);
}

uint64_t sub_1E338005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, char a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  a20 = v24 + 8 * v23;
  a22 = a18;
  a21 = v22 + ((v25 - (&a19 | v25) + (&a19 | 0x9D8253C9)) ^ 0x771323CC) * v26 + 1572;
  v28 = (*(v27 + 8 * (v22 ^ 0x3BB2)))(&a19);
  return (*(v27 + 8 * (((a17 <= (v23 + 1)) * (v22 - 7618)) ^ v22)))(v28);
}

uint64_t sub_1E33800E4(uint64_t a1)
{
  v6 = *(v1 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(v1 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((7952 * (((v4 - 2904 + v2) | 0x815u) - 2581 == (v3 & 0xFFFFFFE0))) ^ (v4 - 2904 + v2 + 3187))))();
}

uint64_t sub_1E3380148()
{
  *(v2 - 224) = (v0 - 2140796166) ^ (914963389 * ((v2 - 1885987690 - 2 * ((v2 - 232) & 0x8F961D7E)) ^ 0xA36AAC05));
  (*(v1 + 8 * (v0 + 9582)))(v2 - 232);
  v3 = *(STACK[0x458] + 8);
  STACK[0x470] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v3 != 0) * ((((v0 ^ 0x1126) + 1709) ^ 0xFFFFE9A4) + (v0 ^ 0x1126) - 3941)) ^ v0 ^ 0x1126)))();
}

uint64_t sub_1E338029C@<X0>(int a1@<W8>)
{
  STACK[0x428] = v1;
  LODWORD(STACK[0x468]) = v2;
  STACK[0x890] = &STACK[0x688];
  STACK[0x418] = 0;
  LODWORD(STACK[0x694]) = 197499219;
  LODWORD(STACK[0x514]) = 197499219;
  STACK[0x680] = 0;
  STACK[0x810] = 0;
  return (*(v3 + 8 * ((((((a1 - 2017422823) & 0x783F7FB9) - 5649) ^ 0xE18) * (v1 == 0)) ^ a1)))();
}

uint64_t sub_1E338031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = STACK[0x3F8] - 4652;
  v40 = (v37 ^ v38) + a37;
  STACK[0x9C0] = v40;
  return (*(STACK[0x400] + 8 * (v39 ^ (1019 * (v40 > a31)))))();
}

uint64_t sub_1E338042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, char a14, char *a15, char *a16, uint64_t a17, unsigned int a18, int a19)
{
  v22 = 1317436891 * ((2 * (&a14 & 0x5B07B918) - &a14 - 1527232797) ^ 0x14FBDE95);
  a18 = 1602299020 - v22;
  a19 = (v21 + 283) ^ v22;
  a16 = &a10;
  a17 = v19;
  a15 = &a12;
  v23 = (*(v20 + 8 * (v21 + 7536)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == v21 + 16255838) * (86 * (v21 ^ 0x81D) - 1784)) ^ v21)))(v23);
}

uint64_t sub_1E33805E4@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v4 = (((*(v2 + 16) ^ 0xCA2E26E3) + ((9 * (v3 ^ 0xDD4)) ^ 0xED96B986)) ^ ((*(v2 + 16) ^ 0x1221FA99) + 899245435) ^ ((*(v2 + 16) ^ 0x27F02385) + ((361 * (v3 ^ 0xDC8)) ^ 0x48A6AC))) - 1584818712;
  v5 = (a2 > 0x862F09FA) ^ (v4 < 0x79D0F605);
  v6 = a2 + 2043737605 > v4;
  if (v5)
  {
    v6 = a2 > 0x862F09FA;
  }

  return (*(a1 + 8 * ((58 * v6) ^ v3)))();
}

uint64_t sub_1E33806C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *STACK[0x518] = a4;
  *STACK[0x200] = STACK[0x848];
  return (STACK[0x760])(a1, a2, a3, 16257999);
}

uint64_t sub_1E3380784()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 1) ^ (-31 * (v7 & 0xF)) ^ *(v2 + (v7 & 0xF)) ^ 0x3C;
  return (*(v5 + 8 * ((103 * (v7 != 0)) ^ (v4 - 2857))))();
}

uint64_t sub_1E33807DC@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a3 - a4 + v9 + 8) = *(v6 + a3);
  v11 = a3 + a1 < v7;
  if (v4 < v8 != a3 + 1 > a2)
  {
    v11 = v4 < v8;
  }

  return (*(v10 + 8 * ((v5 + 1133) ^ (2 * v11))))();
}

uint64_t sub_1E33807E4@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  LODWORD(STACK[0x590]) = 0;
  v10 = v5 + v8 - 2115667646 + (v8 ^ 0xF680D89D);
  v11 = (LODWORD(STACK[0x584]) - a1 - 1006131028) ^ v10;
  LODWORD(STACK[0x588]) = a5 ^ 0x359C3BFA;
  LODWORD(STACK[0x4A0]) = v10;
  v12 = v10 + 405830819;
  v13 = (v10 - 1873246736 + v11) ^ (v10 + 405830819);
  LODWORD(STACK[0x584]) = v13;
  LODWORD(STACK[0x55C]) = v6;
  v14 = (a5 ^ 0x359C3BFA) - v11 - 1336561906;
  LODWORD(STACK[0x58C]) = v14;
  v15 = (a5 ^ 0x158D0BA ^ (v5 + v8 - ((2 * (v5 + v8 - 2115667646)) & 0x6989D680) - 1230347134)) - v14;
  v16 = v7;
  v17 = v15 - v13;
  v18 = LODWORD(STACK[0x428]) - 2046741864 + v15 - v13;
  v19 = v18;
  LODWORD(STACK[0x56C]) = a2;
  v20 = v16 - 2115667646 + a2;
  v21 = (a2 ^ 0xF680D89D) + v20;
  LODWORD(STACK[0x3A8]) = v21;
  v22 = v21 ^ (a4 - a2);
  LODWORD(STACK[0x548]) = a3;
  v23 = a3 ^ 0x359C3BFA;
  LODWORD(STACK[0x57C]) = v23 - v22;
  v24 = v21 + 405830819;
  v25 = (v21 - 1873246736 + v22) ^ (v21 + 405830819);
  LODWORD(STACK[0x550]) = v25;
  v26 = (v20 ^ v23) - v21 - (v23 - v22);
  LODWORD(STACK[0x570]) = v26;
  v26 += 930731087;
  LODWORD(STACK[0x520]) = v26;
  v27 = v26 + v24 - v25;
  v28 = LODWORD(STACK[0x410]) - v27;
  LODWORD(STACK[0x54C]) = v18;
  v29 = STACK[0x5B0];
  v30 = v28 + 1505105975;
  v31 = *(STACK[0x5B0] + (776 * (v19 >> 12) + 531560 - 969 * ((4432371 * (776 * (v19 >> 12) + 531560)) >> 32)));
  v32 = *(STACK[0x5B0] + (776 * ((v19 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v19 >> 8) & 0xF) + 531560)) >> 32)));
  v33 = ((((*(STACK[0x5B0] + (776 * (HIBYTE(v18) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v18) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(STACK[0x5B0] + (776 * (v18 >> 28) + 531560 - 969 * ((4432371 * (776 * (v18 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(STACK[0x5B0] + (776 * (HIWORD(v19) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v19) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(STACK[0x5B0] + (776 * ((v19 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v19 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x518]) = v33;
  v34 = v33 | v32 ^ v9;
  LODWORD(STACK[0x524]) = v34 << 8;
  LODWORD(STACK[0x4E8]) = v34;
  v35 = (v34 << 8) ^ ((v31 ^ v9) << 12);
  LODWORD(STACK[0x504]) = v35;
  v36 = *(v29 + (776 * (v19 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v19 & 0xF) + 531560)) >> 32))) ^ v9;
  v37 = (v35 | v36) ^ (16 * (*(v29 + (776 * (v19 >> 4) + 531560 - 969 * ((4432371 * (776 * (v19 >> 4) + 531560)) >> 32))) ^ v9));
  v38 = 776 * (((v28 + 1505105975) >> 20) & 0xF) + 531560;
  v39 = ((*(v29 + (776 * (HIBYTE(v30) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v30) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v30 >> 28) + 531560 - 969 * ((4432371 * (776 * (v30 >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v40 = 776 * (((v28 + 1505105975) >> 16) & 0xF) + 531560;
  v41 = ((v39 | *(v29 + (v40 - 969 * ((4432371 * v40) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v38 - 969 * ((4432371 * v38) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x508]) = v41;
  v42 = 776 * ((v28 + 6199) >> 12) + 531560;
  v43 = 776 * (((v28 + 1505105975) >> 8) & 0xF) + 531560;
  v44 = 776 * ((v28 + 55) >> 4) + 531560;
  v45 = 776 * ((v28 + 1505105975) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v28 + 1505105975) & 0xFu) + 531560)) >> 32);
  v46 = ((v41 | *(v29 + (v43 - 969 * ((4432371 * v43) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v42 - 969 * ((4432371 * v42) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x500]) = v46;
  v47 = *(v29 + v45) ^ v9;
  v48 = (v46 | v47) ^ (16 * (*(v29 + (v44 - 969 * ((4432371 * v44) >> 32))) ^ v9));
  v49 = v36 & 0xF;
  LODWORD(STACK[0x510]) = v49;
  v50 = v49 & 0xFFFFFF0F | (16 * (v47 & 0xF));
  v51 = 776 * ((v45 & 0x160 ^ 0x160) + (v45 & 0x160) + v50);
  v52 = *(v29 + (v51 - 969 * ((4432371 * v51) >> 32)));
  v53 = LOBYTE(STACK[0xDF4]);
  LODWORD(STACK[0x440]) = v53 ^ v9;
  v54 = (16 * (v53 ^ v9)) ^ v9;
  LODWORD(STACK[0x458]) = v54;
  v55 = 776 * (v52 ^ v54);
  v56 = v55 + 273152 - 969 * ((4432371 * (v55 + 273152)) >> 32);
  v57 = (*(v29 + (v55 - 969 * ((4432371 * v55) >> 32))) >> 4) ^ 0xB;
  v58 = 776 * ((v57 - ((2 * v57) & 0xFB) - 67) ^ *(v29 + (776 * v50 - 969 * ((4432371 * (776 * v50)) >> 32)))) + 273152;
  LODWORD(STACK[0x45C]) = v12;
  v59 = LODWORD(STACK[0x58C]) ^ v12;
  LODWORD(STACK[0x540]) = v59;
  v60 = (v15 - v12) ^ v59;
  v61 = *(v29 + v56);
  v62 = 776 * (((v61 & 0x62 ^ 0x42 | v61 & 0x62 ^ 0x20) ^ ((v60 + 120) ^ (7 - v60)) & 0x6D) & (v37 >> 4) ^ v48 & 0xF0);
  v63 = 776 * (*(v29 + (v62 + 273152 - 969 * ((4432371 * (v62 + 273152)) >> 32))) ^ (16 * (*(v29 + (v58 - 969 * ((4432371 * v58) >> 32))) ^ v9)) ^ v9);
  v64 = v63 + 273152 - 969 * ((4432371 * (v63 + 273152)) >> 32);
  v65 = (*(v29 + (v63 - 969 * ((4432371 * v63) >> 32))) >> 4) ^ 0xB;
  v66 = 776 * ((v65 - ((2 * v65) & 0xFB) - 67) ^ *(v29 + (v62 - 969 * ((4432371 * v62) >> 32)))) + 273152;
  v67 = *(v29 + v64);
  LODWORD(STACK[0x4C0]) = v37;
  v68 = 776 * ((v48 >> 4) & 0xF0 | (v37 >> 8) & 0xF);
  LODWORD(STACK[0x4EC]) = v68;
  v69 = 776 * (*(v29 + (v68 + 273152 - 969 * ((4432371 * (v68 + 273152)) >> 32))) ^ (16 * (*(v29 + (v66 - 969 * ((4432371 * v66) >> 32))) ^ v9)) ^ v9);
  LODWORD(STACK[0x4E0]) = v69;
  v70 = ((*(v29 + (v69 + 273152 - 969 * ((4432371 * (v69 + 273152)) >> 32))) ^ v9) << 8) ^ (16 * (v67 ^ v9));
  LODWORD(STACK[0x4C4]) = v70;
  v71 = 776 * ((v39 >> 8) & 0xF0 | (v34 >> 20) & 0xF) + 273152;
  v72 = *(v29 + (v71 - 969 * ((4432371 * v71) >> 32)));
  LODWORD(STACK[0x4B4]) = v72;
  LODWORD(STACK[0x4B8]) = v61 ^ v9;
  v73 = v70 ^ v61 ^ v9;
  LODWORD(STACK[0x4B0]) = v73;
  v74 = 776 * ((v73 >> 4 << ((v72 & 4 ^ 4) + (v72 & 4))) ^ (v37 >> 4));
  LODWORD(STACK[0x4DC]) = (v74 + 550184) % (((727 - v74) & 0x3C9) + ((v74 + 550184) & 0x3C8u));
  v75 = (v15 - v12 - v17 + 1634197903) ^ v60;
  v76 = v60;
  LODWORD(STACK[0x528]) = v60;
  v77 = v75 ^ (v17 + 544295324);
  v78 = LODWORD(STACK[0x418]) - 827745395 + (((v77 ^ 0xC854EBF7) + 867950240) ^ ((v77 ^ 0x1BDCDD45) - 533469138) ^ ((v77 ^ 0x2626AA5B) - 573989068));
  LODWORD(STACK[0x560]) = v78;
  v79 = LODWORD(STACK[0x57C]) - 1336561906;
  LODWORD(STACK[0x454]) = v79;
  v80 = v79 ^ v24;
  LODWORD(STACK[0x53C]) = v80;
  v81 = v80 ^ LODWORD(STACK[0x520]);
  v82 = (LODWORD(STACK[0x570]) - v27 - 1730038306) ^ v81;
  LODWORD(STACK[0x384]) = v81;
  LODWORD(STACK[0x520]) = v82;
  v83 = v82 ^ (v27 + 544295324);
  v84 = LODWORD(STACK[0x41C]) - (((v83 ^ 0xDD2212A5) - 514874209) ^ ((v83 ^ 0xF99C8029) - 974047725) ^ ((v83 ^ 0xD1100E65) - 310527905)) + 1272730527;
  LODWORD(STACK[0x46C]) = v84;
  v85 = *(v29 + (776 * (v78 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v78 & 0xF) + 531560)) >> 32))) ^ v9;
  LODWORD(STACK[0x470]) = v85;
  v86 = *(v29 + (776 * (v84 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v84 & 0xF) + 531560)) >> 32))) ^ v9;
  LODWORD(STACK[0x490]) = v86;
  LODWORD(STACK[0x4F8]) = v85 & 0xF;
  v87 = 776 * (v85 & 0xF | (16 * (v86 & 0xF)));
  LODWORD(STACK[0x488]) = v87;
  v88 = *(v29 + (v87 + 273152 - 969 * ((4432371 * (v87 + 273152)) >> 32)));
  LODWORD(STACK[0x480]) = (776 * ((v84 >> 8) & 0xF) + 531560) % (((-531562 - 776 * ((v84 >> 8) & 0xF)) & 0x8045624A | (776 * ((v84 >> 8) & 0xF) + 531560) & 0x86248) ^ 0x804D6183);
  v89 = 776 * (v88 ^ v54);
  LODWORD(STACK[0x47C]) = v89;
  LODWORD(STACK[0x4F0]) = (v89 + 273152) % ((255 - v89) & 0x3C9 ^ (v89 + 273152) & 0x3C8u);
  LODWORD(STACK[0x534]) = v75;
  LODWORD(STACK[0x538]) = v77;
  v90 = ((v77 ^ 0x680D3C3C) + 989959088) ^ ((v77 ^ 0x5AF1A021) + 167579571) ^ ((v77 ^ 0x9E0FCC71) - 855415837);
  LODWORD(STACK[0x570]) = v90;
  v91 = v76 ^ (v17 + 544295324) ^ ((v75 & 0x12CA4A88 ^ 0x10084808 | v75 & 0x12CA4A88 ^ 0x2C20280) + 1192514780 + (((v75 ^ 0x4F41CC4) + 1993900403) ^ ((v75 ^ 0xE1734F55) - 1822436636) ^ ((v75 ^ 0x318AAEBC) + 1134965515)));
  v92 = ((v91 ^ 0xC8210E83) + 14061393) ^ ((v91 ^ 0x4BA9129C) - 2090953904) ^ ((v91 ^ 0xB4806233) + 2088231905);
  LODWORD(STACK[0x4FC]) = v92;
  LODWORD(STACK[0x4F4]) = v90 - v92;
  v93 = v90 - v92 + 1387982876;
  LODWORD(STACK[0x4C8]) = v93;
  v94 = v93 + LODWORD(STACK[0x404]);
  v95 = 776 * (((v94 - 1885340339) >> 24) & 0xF) + 531560;
  v96 = v95 - 969 * ((4432371 * v95) >> 32);
  v97 = 776 * (((v94 - 1885340339) >> 20) & 0xF) + 531560;
  v98 = v97 - 969 * ((4432371 * v97) >> 32);
  v99 = 776 * (((v94 - 1885340339) >> 16) & 0xF) + 531560;
  LODWORD(STACK[0x57C]) = v8;
  v100 = v99 - 969 * ((4432371 * v99) >> 32);
  v101 = 776 * ((v94 - 691) >> 12) + 531560;
  v102 = v101 - 969 * ((4432371 * v101) >> 32);
  v103 = 776 * (((v94 - 1885340339) >> 8) & 0xF) + 531560;
  v104 = v103 - 969 * ((4432371 * v103) >> 32);
  v105 = 776 * ((v94 + 77) >> 4) + 531560;
  v106 = ((v83 ^ 0xAF01303C) - 66216016) ^ ((v83 ^ 0x20FA82DF) + 1945513293) ^ ((v83 ^ 0x2308E28F) + 1879330077);
  LODWORD(STACK[0x394]) = v106;
  LODWORD(STACK[0x498]) = v83 ^ 0x6AF451CC;
  v107 = ((v83 ^ 0x6AF451CC ^ v81 ^ 0xC1D8CB77) - 1708245139) ^ ((v83 ^ 0x6AF451CC ^ v81 ^ 0xC47C816C) - 1618315912) ^ ((v83 ^ 0x6AF451CC ^ v81 ^ 0x8C5598D6) - 677155634);
  LODWORD(STACK[0x4D0]) = v107;
  LODWORD(STACK[0x4A8]) = v106 - v107;
  v108 = LODWORD(STACK[0x42C]) - (v106 - v107) + 152329802;
  v109 = ((((*(v29 + v96) ^ v9) << 8) ^ ((*(v29 + (776 * ((v94 - 1885340339) >> 28) + 531560 - 969 * ((4432371 * (776 * ((v94 - 1885340339) >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + v100) ^ v9) << 8) ^ ((*(v29 + v98) ^ v9) << 12);
  LODWORD(STACK[0x450]) = v109;
  v110 = 776 * (v108 >> 12) + 531560 - 969 * ((4432371 * (776 * (v108 >> 12) + 531560)) >> 32);
  LODWORD(STACK[0x3BC]) = v94 - 1885340339;
  v111 = 776 * (((((1885340338 - v94) & 0x191351AB) + ((v94 - 1885340339) & 0x191351AB) + (v110 & 0x144) + (v110 & 0x144 ^ 0x2CF544)) & 0x30ABAD) + ((v108 >> 8) & 0xF)) % 0x3C9;
  v112 = 776 * (v108 >> ((114 * ((v111 & 0x63 ^ 0x63) + (v111 & 0x63)) - 18) & 0xFE)) + 531560;
  v113 = v112 - 969 * ((4432371 * v112) >> 32);
  v114 = *(v29 + v102) ^ v9;
  v115 = v109 | *(v29 + v104) ^ v9;
  LODWORD(STACK[0x460]) = v115;
  v116 = (v115 << 8) ^ (v114 << 12);
  LODWORD(STACK[0x43C]) = v116;
  v117 = *(v29 + (776 * ((v94 - 1885340339) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v94 - 1885340339) & 0xFu) + 531560)) >> 32))) ^ v9;
  v118 = *(v29 + (776 * (v108 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v108 & 0xF) + 531560)) >> 32))) ^ v9;
  v119 = 776 * (v117 & 0xF | (16 * (v118 & 0xF)));
  v120 = ((*(v29 + (776 * (HIBYTE(v108) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v108) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v108 >> 28) + 531560 - 969 * ((4432371 * (776 * (v108 >> 28) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x44C]) = v120;
  v121 = 776 * (*(v29 + (v119 + 273152 - 969 * ((4432371 * (v119 + 273152)) >> 32))) ^ (LODWORD(STACK[0x440]) << ((v53 & 4 ^ 4) + (v53 & 4))) ^ v9);
  v122 = (v121 + 273152) % 0x3C9;
  v123 = *(v29 + v121 % 0x3C9) >> 4;
  v124 = 776 * (((v123 ^ 0xB) + ((2 * ((v123 ^ 0xB | 0x7D) ^ v123)) ^ 0x13) - 66) ^ *(v29 + (v119 - 969 * ((4432371 * v119) >> 32)))) + 273152;
  v125 = (v116 | v117) ^ (16 * (*(v29 + (v105 - 969 * ((4432371 * v105) >> 32))) ^ v9));
  v126 = ((v120 | *(v29 + (776 * (HIWORD(v108) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v108) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v108 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v108 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x440]) = v126;
  v127 = ((v126 | *(v29 + v111) ^ v9) << 8) ^ ((*(v29 + v110) ^ v9) << 12);
  LODWORD(STACK[0x3EC]) = v127;
  v128 = *(v29 + v113) ^ ((v127 | v118) >> 4) ^ v9;
  LODWORD(STACK[0x3D4]) = v128;
  LODWORD(STACK[0x398]) = v125;
  v129 = 776 * ((v125 >> 4) | (16 * (v128 & 0xF)));
  LODWORD(STACK[0x3C0]) = v129;
  v130 = *(v29 + (v129 + 273152 - 969 * ((4432371 * (v129 + 273152)) >> 32))) ^ (16 * (*(v29 + (v124 - 969 * ((4432371 * v124) >> 32))) ^ v9));
  LODWORD(STACK[0x3AC]) = v130 ^ v9;
  v131 = *(v29 + v122) ^ v9;
  v132 = 776 * (v117 & 0xF | (16 * (v131 & 0xF))) + 550184;
  v133 = *(v29 + 776 * (((2 * (v130 ^ v9)) & 0x2C0) + (v130 ^ 0x1DD)) % 0x3C9);
  v134 = v132 - 969 * ((4432371 * v132) >> 32);
  v135 = v131 ^ (16 * (v133 ^ v9));
  LODWORD(STACK[0x3A4]) = v135;
  v136 = 776 * (v135 & 0xF0 | (v125 >> 4)) + 550184;
  v137 = *(v29 + v134);
  LODWORD(STACK[0x3B0]) = v137;
  v138 = v137 ^ (16 * (*(v29 + (v136 - 969 * ((4432371 * v136) >> 32))) ^ v9)) ^ v9;
  LODWORD(STACK[0x3A0]) = v138;
  LODWORD(STACK[0x3C8]) = (776 * (v138 >> 4) + 204088) % (((v94 - 1885340339) & 0x3C9) + ((1885340338 - v94) & 0x3C9u));
  v139 = LODWORD(STACK[0x3FC]) + 2142114685;
  v140 = LODWORD(STACK[0x57C]) + LODWORD(STACK[0x3F0]);
  v141 = v139 - LODWORD(STACK[0x56C]);
  v142 = ((((*(v29 + (776 * (HIBYTE(v140) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v140) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + 776 * (((-754675805 * ((v139 | (5368962 - LODWORD(STACK[0x3FC]))) & 0x65BE9BA)) ^ 0x18FCB5C3) + (v140 >> 28)) % 0x3C9) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v140) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v140) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v140 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v140 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x57C]) = v140;
  v143 = v142 | *(v29 + (776 * ((v140 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v140 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v144 = (v143 << 8) ^ ((*(v29 + (776 * (v140 >> 12) + 531560 - 969 * ((4432371 * (776 * (v140 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v145 = *(v29 + (776 * (v140 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v140 & 0xF) + 531560)) >> 32))) ^ v9;
  v146 = (v144 | v145) ^ (16 * (*(v29 + (776 * (v140 >> 4) + 531560 - 969 * ((4432371 * (776 * (v140 >> 4) + 531560)) >> 32))) ^ v9));
  v147 = ((((*(v29 + (776 * (HIBYTE(v141) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v141) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v141 >> 28) + 531560 - 969 * ((4432371 * (776 * (v141 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v141) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v141) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v141 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v141 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LOBYTE(v27) = *(v29 + (776 * (v141 >> 4) + 531560 - 969 * ((4432371 * (776 * (v141 >> 4) + 531560)) >> 32)));
  v148 = v147 | *(v29 + (776 * ((v141 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v141 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v149 = (v148 << 8) ^ ((*(v29 + (776 * (v141 >> 12) + 531560 - 969 * ((4432371 * (776 * (v141 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v150 = *(v29 + (776 * (v141 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v141 & 0xF) + 531560)) >> 32))) ^ v9;
  LOBYTE(v110) = v27 ^ ((v149 | v150) >> 4);
  v151 = v145 & 0xF;
  v152 = 776 * (v151 | (16 * (v150 & 0xF)));
  v153 = STACK[0x458];
  v154 = 776 * (*(v29 + (v152 + 273152 - 969 * ((4432371 * (v152 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]));
  v155 = (*(v29 + (v154 - 969 * ((4432371 * v154) >> 32))) >> 4) ^ 0xB;
  v156 = v154 + 273152 - 969 * ((4432371 * (v154 + 273152)) >> 32);
  v157 = 776 * ((v155 - ((2 * v155) & 0xFB) - 67) ^ *(v29 + (v152 - 969 * ((4432371 * v152) >> 32)))) + 273152;
  LOBYTE(v110) = v110 ^ v9;
  v158 = 776 * ((v146 >> 4) | (16 * (v110 & 0xF)));
  v159 = *(v29 + (v158 + 273152 - 969 * ((4432371 * (v158 + 273152)) >> 32))) ^ (16 * (*(v29 + (v157 - 969 * ((4432371 * v157) >> 32))) ^ v9)) ^ v9;
  v160 = (v159 + 352) * (((v146 >> 4) & 8 ^ 0x308) + ((v146 >> 4) & 8));
  v161 = (*(v29 + (776 * v159 - 969 * ((4432371 * (776 * v159)) >> 32))) >> 4) ^ 0xB;
  v162 = 776 * ((v161 - ((2 * v161) & 0xFB) - 67) ^ *(v29 + (v158 - 969 * ((4432371 * v158) >> 32)))) + 273152;
  v163 = 776 * (v110 & 0xF0 | (v146 >> 8) & 0xF);
  v164 = v163 - 969 * ((4432371 * v163) >> 32);
  v165 = 776 * (*(v29 + (v163 + 273152 - 969 * ((4432371 * (v163 + 273152)) >> 32))) ^ (16 * (*(v29 + (v162 - 969 * ((4432371 * v162) >> 32))) ^ v9)) ^ v9);
  v166 = v165 + 273152 - 969 * ((4432371 * (v165 + 273152)) >> 32);
  v167 = *(v29 + (v165 - 969 * ((4432371 * v165) >> 32))) >> 4;
  v168 = 776 * (((v167 ^ 0xB) + ((2 * ((v167 ^ 0xB | 0x7D) ^ v167)) ^ 0x13) - 66) ^ *(v29 + v164)) + 273152;
  v169 = 776 * ((v149 >> 8) & 0xF0 | (v144 >> 12));
  v170 = v169 - 969 * ((4432371 * v169) >> 32);
  v171 = 776 * (*(v29 + (v169 + 273152 - 969 * ((4432371 * (v169 + 273152)) >> 32))) ^ (16 * (*(v29 + (v168 - 969 * ((4432371 * v168) >> 32))) ^ v9)) ^ v9);
  v172 = v171 + 273152 - 969 * ((4432371 * (v171 + 273152)) >> 32);
  v173 = (*(v29 + (v171 - 969 * ((4432371 * v171) >> 32))) >> 4) ^ 0xB;
  v174 = 776 * ((v173 - ((2 * v173) & 0xFB) - 67) ^ *(v29 + v170)) + 273152;
  v175 = 776 * ((v149 >> 12) & 0xF0 | HIWORD(v144) & 0xF);
  v176 = v175 - 969 * ((4432371 * v175) >> 32);
  v177 = 776 * (*(v29 + (v175 + 273152 - 969 * ((4432371 * (v175 + 273152)) >> 32))) ^ (16 * (*(v29 + (v174 - 969 * ((4432371 * v174) >> 32))) ^ v9)) ^ v9);
  v178 = v177 + 273152 - 969 * ((4432371 * (v177 + 273152)) >> 32);
  v179 = *(v29 + (v177 - 969 * ((4432371 * v177) >> 32))) >> 4;
  v180 = 776 * (((v179 ^ 0xB) + ((2 * ((v179 ^ 0xB | 0x7D) ^ v179)) ^ 0x13) - 66) ^ *(v29 + v176)) + 273152;
  v181 = 776 * ((v147 >> 8) & 0xF0 | (v142 >> 12));
  v182 = 776 * (*(v29 + (v181 + 273152 - 969 * ((4432371 * (v181 + 273152)) >> 32))) ^ (16 * (*(v29 + (v180 - 969 * ((4432371 * v180) >> 32))) ^ v9)) ^ v9);
  v183 = *(v29 + (v182 - 969 * ((4432371 * v182) >> 32))) >> 4;
  v184 = 776 * (((v183 ^ 0xB) + ((2 * ((v183 ^ 0xB | 0x7D) ^ v183)) ^ 0x13) - 66) ^ *(v29 + (v181 - 969 * ((4432371 * v181) >> 32)))) + 273152;
  v185 = 16 * (*(v29 + (v160 - 969 * ((4432371 * v160) >> 32))) ^ v9);
  v186 = v185 ^ ((*(v29 + v166) ^ v9) << 8);
  v187 = (((*(v29 + v172) ^ v9) << 12) | ((*(v29 + (v182 + 273152 - 969 * ((4432371 * (v182 + 273152)) >> 32))) ^ v9) << 20)) ^ (v186 | ((*(v29 + v178) ^ v9) << 16));
  v188 = *(v29 + (v184 - 969 * ((4432371 * v184) >> 32)));
  v189 = BYTE2(v148);
  v190 = 776 * (HIWORD(v142) & 0xF | (16 * (((v188 & 0xF ^ 2) + (v188 & 0xF ^ 0xD)) & v189)));
  v191 = 776 * (*(v29 + (v190 + 273152 - 969 * ((4432371 * (v190 + 273152)) >> 32))) ^ (16 * (v188 ^ v9)) ^ v9);
  v192 = v191 + 273152 - 969 * ((4432371 * (v191 + 273152)) >> 32);
  v193 = *(v29 + (v191 - 969 * ((4432371 * v191) >> 32))) >> 4;
  v194 = 776 * (((v193 ^ 0xB) + ((2 * ((v193 ^ 0xB | 0x7D) ^ v193)) ^ 0x13) - 66) ^ *(v29 + (v190 - 969 * ((4432371 * v190) >> 32)))) + 273152;
  v195 = 776 * (v189 & 0xF0 | (v143 >> 20) & 0xF) + 273152;
  v196 = 776 * (*(v29 + (v195 - 969 * ((4432371 * v195) >> 32))) ^ (16 * (*(v29 + (v194 - 969 * ((4432371 * v194) >> 32))) ^ v9)) ^ v9) + 273152;
  LOBYTE(v152) = *(v29 + v156) ^ v9;
  v197 = 776 * (v151 & 0xFFFFFF0F | (16 * (v152 & 0xF))) + 549215;
  v198 = (v185 ^ v152) & 0xF0 | (v146 >> 4);
  v199 = (v186 >> 4) & 0xF0 | (v146 >> 8) & 0xF;
  v200 = *(v29 + v197 % 0x3C9) ^ (16 * (*(v29 + (776 * v198 + 550184 - 969 * ((4432371 * (776 * v198 + 550184)) >> 32))) ^ v9)) ^ ((*(v29 + (776 * v199 + 550184 - 969 * ((4432371 * (776 * v199 + 550184)) >> 32))) ^ v9) << 8);
  v201 = (v187 >> 8) & 0xF0 | (v144 >> 12);
  v202 = 776 * (((2 * v201) & 0x18A) + (v201 ^ 0x2C5));
  v203 = 776 * ((v187 >> 12) & 0xF0 | HIWORD(v144) & 0xF) + 550184;
  v204 = v187 ^ ((*(v29 + v192) ^ v9) << 24);
  v205 = 776 * (HIWORD(v187) & 0xF0 | (v142 >> 12)) + 550184;
  v206 = 776 * ((v204 >> 20) & 0xF0 | HIWORD(v142) & 0xF) + 550184;
  v207 = 776 * (((v204 ^ ((*(v29 + (v196 - 969 * ((4432371 * v196) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (v143 >> 20) & 0xF) + 550184;
  v208 = v200 ^ ((*(v29 + (v202 - 969 * ((4432371 * v202) >> 32))) ^ v9) << 12);
  v209 = v208 ^ ((*(v29 + (v203 - 969 * ((4432371 * v203) >> 32))) ^ v9) << 16);
  v210 = *(v29 + (v205 - 969 * ((4432371 * v205) >> 32))) ^ v9;
  v211 = *(v29 + (v206 - 969 * ((4432371 * v206) >> 32))) ^ v9;
  LODWORD(STACK[0x56C]) = v209 ^ v9;
  v212 = v209 ^ v9 ^ (v210 << 20);
  v213 = v212 ^ (v211 << 24);
  v214 = 776 * ((v213 ^ ((*(v29 + (v207 - 969 * ((4432371 * v207) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  LODWORD(STACK[0x388]) = ((((((*(v29 + (776 * (HIBYTE(v213) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v213) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v214 - 969 * ((4432371 * v214) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v209) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v209) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v212 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v212 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v200 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v200 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v208 >> 12) + 204088 - 969 * ((4432371 * (776 * (v208 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v215 = (LODWORD(STACK[0x3F8]) ^ 0xF2D3FFA8) & (2 * (STACK[0x3F8] & 0xF49BFF21)) ^ STACK[0x3F8] & 0xF49BFF21;
  v216 = ((2 * (LODWORD(STACK[0x3F8]) ^ 0x3BF21FEA)) ^ 0x9ED3C196) & (LODWORD(STACK[0x3F8]) ^ 0x3BF21FEA) ^ (2 * (LODWORD(STACK[0x3F8]) ^ 0x3BF21FEA)) & 0xCF69E0CA;
  v217 = (v216 ^ 0x8641C080) & (4 * v215) ^ v215;
  v218 = ((4 * (v216 ^ LODWORD(STACK[0x354]))) ^ 0x3DA7832C) & (v216 ^ LODWORD(STACK[0x354])) ^ (4 * (v216 ^ LODWORD(STACK[0x354]))) & 0xCF69E0C8;
  v219 = (v218 ^ 0xD218000) & (16 * v217) ^ v217;
  v220 = ((16 * (v218 ^ 0xC24860C3)) ^ 0xF69E0CB0) & (v218 ^ 0xC24860C3) ^ (16 * (v218 ^ 0xC24860C3)) & 0xCF69E0C0;
  v221 = v219 ^ 0xCF69E0CB ^ (v220 ^ 0xC6080000) & (v219 << 8);
  v222 = (v221 << 16) & 0x4F690000 ^ v221 ^ ((v221 << 16) ^ 0x60CB0000) & (((v220 ^ 0x961E04B) << 8) & 0x4F690000 ^ 0x6090000 ^ (((v220 ^ 0x961E04B) << 8) ^ 0x69E00000) & (v220 ^ 0x961E04B));
  v223 = ((LODWORD(STACK[0x3F8]) ^ 0xC77831F9) + 870567642) ^ LODWORD(STACK[0x3F8]) ^ ((LODWORD(STACK[0x3F8]) ^ 0xA1B97F77) + 1428324440) ^ ((LODWORD(STACK[0x3F8]) ^ 0x965EF1AE) + 1657081487) ^ ((LODWORD(STACK[0x3F8]) ^ 0xFBFBBFFF) + 257966304) ^ LODWORD(STACK[0x4A0]);
  v224 = 2 * (STACK[0x4A0] & (LODWORD(STACK[0x3F8]) ^ (2 * v222) ^ 0x6ADA3EB7));
  v225 = (((v223 ^ 0xF0EC50FE) + 991248713) ^ ((v223 ^ 0xA68C4555) + 1836405988) ^ ((v223 ^ 0x5D041574) - 1761803069)) - 1555871247 + (((v224 ^ 0x5BF04D0D) - 940578390) ^ ((v224 ^ 0xDDE6BBAA) + 1106845455) ^ ((v224 ^ 0x8616F6A7) + 436818436));
  v226 = ((((*(v29 + (776 * (HIBYTE(v225) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v225) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v225 >> 28) + 531560 - 969 * ((4432371 * (776 * (v225 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v225) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v225) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v225 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v225 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x4A0]) = v225;
  v227 = v226 | *(v29 + (-1998446088 * (((((v225 >> 8) & 0xF) - 2 * (((v225 >> 8) & 0xF) + 685) + 44) | (((v225 >> 8) & 0xF) + 685)) & 0x5F) + 873818112) * (((v225 >> 8) & 0xF) + 685) % 0x3C9) ^ v9;
  v228 = (v227 << 8) ^ ((*(v29 + (776 * (v225 >> 12) + 531560 - 969 * ((4432371 * (776 * (v225 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v229 = LODWORD(STACK[0x3E8]) - 1668384471;
  LODWORD(STACK[0x36C]) = v229;
  v230 = STACK[0x3A8];
  v231 = v229 - LODWORD(STACK[0x3A8]);
  v232 = *(v29 + (776 * (v225 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v225 & 0xF) + 531560)) >> 32))) ^ v9;
  v233 = (v228 | v232) ^ (16 * (*(v29 + (776 * (v225 >> 4) + 531560 - 969 * ((4432371 * (776 * (v225 >> 4) + 531560)) >> 32))) ^ v9));
  v234 = ((*(v29 + (776 * (HIBYTE(v231) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v231) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v231 >> 28) + 531560 - 969 * ((4432371 * (776 * (v231 >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v235 = ((((v231 >> 12) + 685) | (338 - (v231 >> 12))) & 0x308) * ((v231 >> 12) + 685);
  v236 = ((v234 | *(v29 + (776 * (HIWORD(v231) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v231) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v231 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v231 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v237 = 776 * (v231 >> 4) + 531560 - 969 * ((4432371 * (776 * (v231 >> 4) + 531560)) >> 32);
  v238 = ((v236 | *(v29 + (776 * ((v231 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v231 >> 8) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v235 - 969 * ((4432371 * v235) >> 32))) ^ v9) << 12);
  v239 = *(v29 + (776 * (v231 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v231 & 0xF) + 531560)) >> 32))) ^ v9;
  LOBYTE(v235) = *(v29 + v237) ^ ((v238 | v239) >> 4);
  v240 = v232 & 0xF;
  v241 = 776 * (v240 | (16 * (v239 & 0xF)));
  v242 = v241 - 969 * ((4432371 * v241) >> 32);
  v243 = 776 * (*(v29 + (v241 + 273152 - 969 * ((4432371 * (v241 + 273152)) >> 32))) ^ v153);
  v244 = v243 + 273152 - 969 * ((4432371 * (v243 + 273152)) >> 32);
  v245 = *(v29 + (v243 - 969 * ((4432371 * v243) >> 32))) >> 4;
  v246 = 776 * (((v245 ^ 0xB) + ((2 * ((v245 ^ 0xB | 0x7D) ^ v245)) ^ 0x13) - 66) ^ *(v29 + v242)) + 273152;
  LOBYTE(v235) = v235 ^ v9;
  v247 = 776 * ((v233 >> 4) | (16 * (v235 & 0xF)));
  v248 = v247 - 969 * ((4432371 * v247) >> 32);
  v249 = 776 * (*(v29 + (v247 + 273152 - 969 * ((4432371 * (v247 + 273152)) >> 32))) ^ (16 * (*(v29 + (v246 - 969 * ((4432371 * v246) >> 32))) ^ v9)) ^ v9);
  v250 = v249 + 273152 - 969 * ((4432371 * (v249 + 273152)) >> 32);
  v251 = *(v29 + (v249 - 969 * ((4432371 * v249) >> 32))) >> 4;
  v252 = 776 * (((v251 ^ 0xB) + ((2 * ((v251 ^ 0xB | 0x7D) ^ v251)) ^ 0x13) - 66) ^ *(v29 + v248)) + 273152;
  v253 = 776 * (v235 & 0xF0 | (v233 >> 8) & 0xF);
  v254 = v253 - 969 * ((4432371 * v253) >> 32);
  v255 = 776 * (*(v29 + (v253 + 273152 - 969 * ((4432371 * (v253 + 273152)) >> 32))) ^ (16 * (*(v29 + (v252 - 969 * ((4432371 * v252) >> 32))) ^ v9)) ^ v9);
  v256 = v255 + 273152 - 969 * ((4432371 * (v255 + 273152)) >> 32);
  v257 = *(v29 + (v255 - 969 * ((4432371 * v255) >> 32))) >> 4;
  v258 = 776 * (((v257 ^ 0xB) + ((2 * ((v257 ^ 0xB | 0x7D) ^ v257)) ^ 0x13) - 66) ^ *(v29 + v254)) + 273152;
  v259 = 776 * ((v238 >> 8) & 0xF0 | (v228 >> 12));
  v260 = *(v29 + (v259 + 273152 - 969 * ((4432371 * (v259 + 273152)) >> 32)));
  v261 = 776 * (__ROR4__(((v260 >> 3) ^ 0x17 | ((v260 ^ 0xFFFFFFFD) << 29)) ^ (2 * (*(v29 + (v258 - 969 * ((4432371 * v258) >> 32))) ^ v9)) ^ 0x213E7AA6, 29) ^ 0x9F3D531);
  v262 = (v261 + 273152) % 0x3C9;
  v263 = *(v29 + v261 % 0x3C9) >> 4;
  v264 = 776 * (((v263 ^ 0xB) + ((2 * ((v263 ^ 0xB | 0x7D) ^ v263)) ^ 0x13) - 66) ^ *(v29 + (v259 - 969 * ((4432371 * v259) >> 32)))) + 273152;
  v265 = 776 * ((v238 >> 12) & 0xF0 | HIWORD(v228) & 0xF);
  v266 = v265 - 969 * ((4432371 * v265) >> 32);
  v267 = 776 * (*(v29 + (v265 + 273152 - 969 * ((4432371 * (v265 + 273152)) >> 32))) ^ (16 * (*(v29 + (v264 - 969 * ((4432371 * v264) >> 32))) ^ v9)) ^ v9);
  v268 = v267 + 273152 - 969 * ((4432371 * (v267 + 273152)) >> 32);
  v269 = *(v29 + (v267 - 969 * ((4432371 * v267) >> 32))) >> 4;
  v270 = 776 * (((v269 ^ 0xB) + ((2 * ((v269 ^ 0xB | 0x7D) ^ v269)) ^ 0x13) - 66) ^ *(v29 + v266)) + 273152;
  v271 = 776 * ((v236 >> 8) & 0xF0 | (v226 >> 12));
  v272 = v271 - 969 * ((4432371 * v271) >> 32);
  v273 = 776 * (*(v29 + (v271 + 273152 - 969 * ((4432371 * (v271 + 273152)) >> 32))) ^ (16 * (*(v29 + (v270 - 969 * ((4432371 * v270) >> 32))) ^ v9)) ^ v9);
  v274 = v273 + 273152 - 969 * ((4432371 * (v273 + 273152)) >> 32);
  v275 = (*(v29 + (v273 - 969 * ((4432371 * v273) >> 32))) >> 4) ^ 0xB;
  v276 = 776 * ((v275 - ((2 * v275) & 0xFB) - 67) ^ *(v29 + v272)) + 273152;
  v277 = (v236 >> 12) & 0xF0 | HIWORD(v226) & 0xF;
  v278 = (((671 - v277) ^ (v277 + 352)) & 0x308) * (v277 + 352);
  v279 = 776 * (*(v29 + (v278 - 969 * ((4432371 * v278) >> 32))) ^ (16 * (*(v29 + (v276 - 969 * ((4432371 * v276) >> 32))) ^ v9)) ^ v9);
  v280 = v279 + 273152 - 969 * ((4432371 * (v279 + 273152)) >> 32);
  v281 = *(v29 + (v279 - 969 * ((4432371 * v279) >> 32))) >> 4;
  v282 = 776 * (((v281 ^ 0xB) + ((2 * ((v281 ^ 0xB | 0x7D) ^ v281)) ^ 0x13) - 66) ^ *(v29 + (776 * v277 - 969 * ((4432371 * (776 * v277)) >> 32)))) + 273152;
  v283 = 776 * ((v234 >> 8) & 0xF0 | (v227 >> 20) & 0xF) + 273152;
  v284 = 776 * (*(v29 + (v283 - 969 * ((4432371 * v283) >> 32))) ^ (16 * (*(v29 + (v282 - 969 * ((4432371 * v282) >> 32))) ^ v9)) ^ v9) + 273152;
  v285 = *(v29 + v262) ^ v9;
  v286 = ((*(v29 + v268) ^ v9) << 16) ^ (v285 << 12);
  LOBYTE(v281) = *(v29 + v244);
  v287 = 776 * (v240 & 0xFFFFFF0F | (16 * ((v281 ^ v9) & 0xF))) + 550184;
  LOBYTE(v240) = *(v29 + v250) ^ v9;
  LOBYTE(v256) = *(v29 + v256) ^ v9;
  v288 = ((v281 ^ v9) ^ (16 * v240)) & 0xF0;
  v289 = (v240 ^ (16 * v256)) & 0xF0 | (v233 >> 8) & 0xF;
  v290 = 776 * (v288 & 0xFFFFFFF0 | (v233 >> 4)) + 550184;
  v291 = 776 * v289 + 550184 - 969 * ((4432371 * (776 * v289 + 550184)) >> 32);
  v292 = 776 * (((v291 & 0xF ^ 0xF) + (v291 & 0xF)) & (v228 >> 12) ^ (v256 ^ (16 * v285)) & 0xF0) + 550184;
  v293 = 776 * ((v286 >> 12) & 0xF0 | HIWORD(v228) & 0xF) + 550184;
  v294 = (v286 ^ ((*(v29 + v274) ^ v9) << 20) ^ ((*(v29 + v280) ^ v9) << 24) ^ ((*(v29 + (v284 - 969 * ((4432371 * v284) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 16 >> ((v281 & 4 ^ 4) + (v281 & 4));
  v295 = 776 * ((v226 >> 12) & 0xFFFFFF0F | (16 * (v294 & 0xF))) + 550184;
  v296 = 776 * (v294 & 0xF0 | HIWORD(v226) & 0xF) + 550184;
  v297 = 776 * ((v294 >> 4) & 0xF0 | (v227 >> 20) & 0xF) + 550184;
  v298 = *(v29 + (v287 - 969 * ((4432371 * v287) >> 32)));
  LODWORD(STACK[0x37C]) = v298;
  v299 = *(v29 + v291);
  v300 = v298 ^ (16 * (*(v29 + (v290 - 969 * ((4432371 * v290) >> 32))) ^ v9)) ^ v9;
  LODWORD(STACK[0x380]) = v300;
  v301 = v300 ^ ((v299 ^ v9) << 8);
  v302 = v301 ^ ((*(v29 + v292 % 0x3C9) ^ v9) << 12);
  v303 = v302 ^ ((*(v29 + (v293 - 969 * ((4432371 * v293) >> 32))) ^ v9) << 16);
  v304 = v303 ^ ((*(v29 + (v295 - 969 * ((4432371 * v295) >> 32))) ^ v9) << 20);
  v305 = v304 ^ ((*(v29 + (v296 - 969 * ((4432371 * v296) >> 32))) ^ v9) << 24);
  v306 = 776 * ((v305 ^ ((*(v29 + (v297 - 969 * ((4432371 * v297) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  LODWORD(STACK[0x378]) = ((((((*(v29 + (776 * (HIBYTE(v305) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v305) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v306 - 969 * ((4432371 * v306) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v303) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v303) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v304 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v304 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v301 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v301 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v302 >> 12) + 204088 - 969 * ((4432371 * (776 * (v302 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v307 = LODWORD(STACK[0x40C]) + 1955212092 + LODWORD(STACK[0x45C]);
  v308 = v307;
  LODWORD(STACK[0x45C]) = v307;
  v309 = *(v29 + (388 * ((v307 >> 27) & 0x1E) + 531560 - 969 * ((4432371 * (388 * ((v307 >> 27) & 0x1E) + 531560)) >> 32)));
  HIDWORD(v310) = (((*(v29 + (776 * (HIWORD(v308) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v308) & 0xF) + 531560)) >> 32))) ^ v9 ^ ((*(v29 + (776 * (HIBYTE(v307) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v307) & 0xF) + 531560)) >> 32))) ^ (16 * (v309 ^ v9)) ^ v9) << ((v309 & 8 ^ 8) + (v309 & 8)))) << 8) ^ ((*(v29 + (776 * ((v308 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v308 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v308 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v308 >> 8) & 0xF) + 531560)) >> 32))) ^ v9) ^ (16 * (*(v29 + (776 * (v308 >> 12) + 531560 - 969 * ((4432371 * (776 * (v308 >> 12) + 531560)) >> 32))) ^ v9));
  LODWORD(v310) = HIDWORD(v310);
  v311 = LODWORD(STACK[0x414]) - v230 - 1914476809;
  v312 = ((((*(v29 + (776 * (HIBYTE(v311) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v311) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v311 >> 28) + 531560 - 969 * ((4432371 * (776 * (v311 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v311) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v311) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v311 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v311 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v313 = 776 * ((LOWORD(STACK[0x414]) - v230 + 26359) >> 12) + 531560;
  LOBYTE(v295) = *(v29 + (776 * (v311 >> 4) + 531560 - 969 * ((4432371 * (776 * (v311 >> 4) + 531560)) >> 32)));
  v314 = v312 | *(v29 + (776 * ((v311 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v311 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v315 = (v314 << 8) ^ ((*(v29 + (v313 - 969 * ((4432371 * v313) >> 32))) ^ v9) << 12);
  v316 = *(v29 + (776 * (v311 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v311 & 0xF) + 531560)) >> 32))) ^ v9;
  LOBYTE(v295) = v295 ^ ((v315 | v316) >> 4);
  HIDWORD(v310) = ((v310 >> 5) & 0xF807FFFF | ((*(v29 + (776 * (v308 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v308 & 0xF) + 531560)) >> 32))) ^ v9) << 19)) ^ 0x6E7A83B6;
  LODWORD(v310) = HIDWORD(v310);
  v317 = v310 >> 19;
  v318 = v317 ^ (16 * (*(v29 + (776 * (v308 >> 4) + 531560 - 969 * ((4432371 * (776 * (v308 >> 4) + 531560)) >> 32))) ^ v9));
  v319 = v318 ^ 0x5076CDCF;
  v320 = (v318 ^ 0x5076CDCF) & 0xF;
  v321 = 776 * (v320 | (16 * (v316 & 0xF)));
  v322 = *(v29 + (v321 + 273152 - 969 * ((4432371 * (v321 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]);
  v323 = (((((v318 ^ 0x5076CDCF) & 0x16) + (v318 & 0x16 ^ 0x10)) & 0x28) + 776) * (v322 + 352);
  v324 = *(v29 + (776 * v322 - 969 * ((4432371 * (776 * v322)) >> 32))) >> 4;
  v325 = 776 * (((v324 ^ 0xB) + ((2 * ((v324 ^ 0xB | 0x7D) ^ v324)) ^ 0x13) - 66) ^ *(v29 + (v321 - 969 * ((4432371 * v321) >> 32)))) + 273152;
  LOBYTE(v324) = v295 ^ v9;
  v326 = 776 * ((v319 >> 4) | (16 * ((v295 ^ v9) & 0xF)));
  v327 = 776 * (*(v29 + (v326 + 273152 - 969 * ((4432371 * (v326 + 273152)) >> 32))) ^ (16 * (*(v29 + (v325 - 969 * ((4432371 * v325) >> 32))) ^ v9)) ^ v9);
  v328 = v327 + 273152 - 969 * ((4432371 * (v327 + 273152)) >> 32);
  v329 = (*(v29 + (v327 - 969 * ((4432371 * v327) >> 32))) >> 4) ^ 0xB;
  v330 = 776 * ((v329 - ((2 * v329) & 0xFB) - 67) ^ *(v29 + (v326 - 969 * ((4432371 * v326) >> 32)))) + 273152;
  v331 = 776 * (v324 & 0xF0 | (v319 >> 8) & 0xF);
  v332 = v331 - 969 * ((4432371 * v331) >> 32);
  v333 = 776 * (*(v29 + (v331 + 273152 - 969 * ((4432371 * (v331 + 273152)) >> 32))) ^ (16 * (*(v29 + (v330 - 969 * ((4432371 * v330) >> 32))) ^ v9)) ^ v9);
  v334 = v333 + 273152 - 969 * ((4432371 * (v333 + 273152)) >> 32);
  v335 = (*(v29 + (v333 - 969 * ((4432371 * v333) >> 32))) >> 4) ^ 0xB;
  v336 = 776 * ((v335 - ((2 * v335) & 0xFB) - 67) ^ *(v29 + v332)) + 273152;
  v337 = 776 * ((v315 >> 8) & 0xF0 | (v319 >> 12));
  v338 = 776 * (*(v29 + (v337 + 273152 - 969 * ((4432371 * (v337 + 273152)) >> 32))) ^ (16 * (*(v29 + (v336 - 969 * ((4432371 * v336) >> 32))) ^ v9)) ^ v9);
  v339 = v338 + 273152 - 969 * ((4432371 * (v338 + 273152)) >> 32);
  v340 = *(v29 + (v338 - 969 * ((4432371 * v338) >> 32))) >> 4;
  v341 = 776 * (((v340 ^ 0xB) + ((2 * ((v340 ^ 0xB | 0x7D) ^ v340)) ^ 0x13) - 66) ^ *(v29 + (v337 - 969 * ((4432371 * v337) >> 32)))) + 273152;
  v342 = (v315 >> 12) & 0xF0 | HIWORD(v319) & 0xF;
  v343 = *(v29 + (776 * v342 + 273152 - 969 * ((4432371 * (776 * v342 + 273152)) >> 32)));
  v344 = ((((v343 ^ 0xB0) + (~v343 & 0xD) + (v343 & 0xF2 ^ 0x4F) + 1) ^ 5) & 0x3FF | 0x308) * v342;
  v345 = 776 * (v343 ^ (16 * (*(v29 + (v341 - 969 * ((4432371 * v341) >> 32))) ^ v9)) ^ v9);
  v346 = v345 + 273152 - 969 * ((4432371 * (v345 + 273152)) >> 32);
  v347 = (*(v29 + (v345 - 969 * ((4432371 * v345) >> 32))) >> 4) ^ 0xB;
  v348 = 776 * ((v347 - ((2 * v347) & 0xFB) - 67) ^ *(v29 + (v344 - 969 * ((4432371 * v344) >> 32)))) + 273152;
  v349 = 776 * ((v312 >> 8) & 0xF0 | (v319 >> 20) & 0xF);
  v350 = v349 - 969 * ((4432371 * v349) >> 32);
  v351 = *(v29 + (v349 + 273152 - 969 * ((4432371 * (v349 + 273152)) >> 32))) ^ (16 * (*(v29 + (v348 - 969 * ((4432371 * v348) >> 32))) ^ v9)) ^ v9;
  v352 = 776 * v351 - 969 * ((4432371 * (776 * v351)) >> 32);
  v353 = 776 * ((v351 ^ ((v350 & 0x160 ^ 0x160) + (v350 & 0x160))) + 2 * (v351 & ((v350 & 0x160 ^ 0x160) + (v350 & 0x160))));
  v354 = *(v29 + v352) >> 4;
  v355 = ((((v354 ^ 0xB) + ((2 * ((v354 ^ 0xB | 0x7D) ^ v354)) ^ 0x13) - 66) ^ *(v29 + v350)) + 352) * (((169 - LODWORD(STACK[0x584])) ^ (LODWORD(STACK[0x584]) + 854)) & 0x308);
  v356 = *(v29 + (v355 - 969 * ((4432371 * v355) >> 32)));
  v357 = 776 * (((((v314 << 8) >> 24) & 0xF) << (4 - ((!(v356 & 1) + (v356 & 1)) & 2))) ^ HIBYTE(v317) & 0xF);
  v358 = v357 - 969 * ((4432371 * v357) >> 32);
  v359 = 776 * (*(v29 + (v357 + 273152 - 969 * ((4432371 * (v357 + 273152)) >> 32))) ^ (16 * (v356 ^ v9)) ^ v9);
  v360 = v359 + 273152 - 969 * ((4432371 * (v359 + 273152)) >> 32);
  v361 = (*(v29 + (v359 - 969 * ((4432371 * v359) >> 32))) >> 4) ^ 0xB;
  v362 = 776 * ((v361 - ((2 * v361) & 0xFB) - 67) ^ *(v29 + v358)) + 273152;
  v363 = 776 * (BYTE2(v314) & 0xF0 | (v319 >> 28)) + 273152;
  v364 = 776 * (*(v29 + (v363 - 969 * ((4432371 * v363) >> 32))) ^ (16 * (*(v29 + (v362 - 969 * ((4432371 * v362) >> 32))) ^ v9)) ^ v9) + 273152;
  LOBYTE(v362) = *(v29 + (v323 - 969 * ((4432371 * v323) >> 32))) ^ v9;
  v365 = 776 * (v320 & 0xFFFFFF0F | (16 * (v362 & 0xF))) + 550184;
  LOBYTE(v320) = *(v29 + v328) ^ v9;
  LOBYTE(v326) = *(v29 + v334);
  v366 = 776 * ((v362 ^ (16 * v320)) & 0xF0 | (v319 >> 4)) + 550184;
  LOBYTE(v326) = v326 ^ v9;
  v367 = 776 * ((v320 ^ (16 * v326)) & 0xF0 | (v319 >> 8) & 0xF) + 550184;
  LOBYTE(v339) = *(v29 + v339) ^ v9;
  v368 = 776 * ((v326 ^ (16 * v339)) & 0xF0 | (v319 >> 12)) + 550184;
  LOBYTE(v346) = *(v29 + v346) ^ v9;
  v369 = 776 * ((v339 ^ (16 * v346)) & 0xF0 | HIWORD(v319) & 0xF) + 550184;
  LOBYTE(v353) = *(v29 + v353 % 0x3C9) ^ v9;
  v370 = (((v346 ^ (16 * v353)) & 0xF0 | (v319 >> 20) & 0xF) + 709) * ((HIWORD(v319) & 0x308 ^ 0x308) + (HIWORD(v319) & 0x308));
  LOBYTE(v360) = *(v29 + v360) ^ v9;
  v371 = (v360 ^ (16 * (*(v29 + (v364 - 969 * ((4432371 * v364) >> 32))) ^ 0xFD))) & 0xF0 | (v319 >> 28);
  v372 = *(v29 + (v365 - 969 * ((4432371 * v365) >> 32)));
  LODWORD(STACK[0x3A8]) = v372;
  v373 = 776 * ((v353 ^ (16 * v360)) & 0xF0 | HIBYTE(v317) & 0xF) + 550184;
  v374 = 776 * v371 + 550184 - 969 * ((4432371 * (776 * v371 + 550184)) >> 32);
  v375 = v372 ^ (16 * (*(v29 + (v366 - 969 * ((4432371 * v366) >> 32))) ^ v9)) ^ v9;
  v376 = v375 ^ ((*(v29 + (v367 - 969 * ((4432371 * v367) >> 32))) ^ v9) << 8);
  v377 = v376 ^ ((*(v29 + (v368 - 969 * ((4432371 * v368) >> 32))) ^ v9) << 12);
  v378 = v377 ^ ((*(v29 + (v369 - 969 * ((4432371 * v369) >> 32))) ^ v9) << 16);
  v379 = v378 ^ ((*(v29 + (v370 - 969 * ((4432371 * v370) >> 32))) ^ v9) << 20);
  v380 = v379 ^ ((*(v29 + (v373 - 969 * ((4432371 * v373) >> 32))) ^ v9) << 24);
  v381 = 776 * ((v380 ^ ((*(v29 + v374) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  v382 = *(v29 + (776 * (v375 >> 4) + 204088 - 969 * ((4432371 * (776 * (v375 >> 4) + 204088)) >> 32)));
  LODWORD(STACK[0x374]) = ((((((*(v29 + (776 * (HIBYTE(v380) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v380) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v381 - 969 * ((4432371 * v381) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v378) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v378) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v379 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v379 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v376 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v376 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v377 >> 12) + 204088 - 969 * ((4432371 * (776 * (v377 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x454]) ^= 0xA97E851F ^ (16 * (v382 ^ v9));
  v383 = (*(v29 + (LODWORD(STACK[0x4E0]) - 969 * ((4432371 * LODWORD(STACK[0x4E0])) >> 32))) >> 4) ^ 0xB;
  v384 = 776 * ((v383 - ((2 * v383) & 0xFB) - 67) ^ *(v29 + (LODWORD(STACK[0x4EC]) - 969 * ((4432371 * LODWORD(STACK[0x4EC])) >> 32)))) + 273152;
  v385 = 776 * ((LODWORD(STACK[0x500]) >> 8) & 0xF0 | (LODWORD(STACK[0x504]) >> 12));
  v386 = *(v29 + (v385 + 273152 - 969 * ((4432371 * (v385 + 273152)) >> 32))) ^ (16 * (*(v29 + (v384 - 969 * ((4432371 * v384) >> 32))) ^ v9)) ^ v9;
  v387 = *(v29 + (776 * v386 - 969 * ((4432371 * (776 * v386)) >> 32))) >> 4;
  v388 = 776 * (((v387 ^ 0xB) + ((2 * ((v387 ^ 0xB | 0x7D) ^ v387)) ^ 0x13) - 66) ^ *(v29 + (v385 - 969 * ((4432371 * v385) >> 32)))) + 273152;
  v389 = 776 * ((LODWORD(STACK[0x500]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x504])) & 0xF);
  v390 = 776 * (*(v29 + (v389 + 273152 - 969 * ((4432371 * (v389 + 273152)) >> 32))) ^ (16 * (*(v29 + (v388 - 969 * ((4432371 * v388) >> 32))) ^ v9)) ^ v9);
  v391 = v390 - 969 * ((4432371 * v390) >> 32);
  v392 = ((*(v29 + (v390 + 273152 - 969 * ((4432371 * (v390 + 273152)) >> 32))) ^ v9) << 16) ^ ((*(v29 + (776 * v386 + 273152 - 969 * ((4432371 * (776 * v386 + 273152)) >> 32))) ^ v9) << 12);
  v393 = (*(v29 + v391) >> 4) ^ 0xB;
  v394 = 776 * ((v386 & 0x160 ^ 0x160) + (v386 & 0x160) + ((v393 - ((2 * v393) & 0xFB) - 67) ^ *(v29 + (v389 - 969 * ((4432371 * v389) >> 32)))));
  v395 = 776 * ((LODWORD(STACK[0x508]) >> 8) & 0xF0 | (LODWORD(STACK[0x518]) >> 12));
  v396 = 776 * (*(v29 + (v395 + 273152 - 969 * ((4432371 * (v395 + 273152)) >> 32))) ^ (16 * (*(v29 + (v394 - 969 * ((4432371 * v394) >> 32))) ^ v9)) ^ v9);
  v397 = v396 + 273152 - 969 * ((4432371 * (v396 + 273152)) >> 32);
  v398 = *(v29 + (v396 - 969 * ((4432371 * v396) >> 32))) >> 4;
  v399 = ((v398 ^ 0xB) + ((2 * ((v398 ^ 0xB | 0x7D) ^ v398)) ^ 0x13) - 66) ^ *(v29 + (v395 - 969 * ((4432371 * v395) >> 32)));
  v400 = 776 * ((LODWORD(STACK[0x508]) >> 12) & 0xF0 | HIBYTE(LODWORD(STACK[0x524])) & 0xF);
  v401 = *(v29 + (v400 + 273152 - 969 * ((4432371 * (v400 + 273152)) >> 32))) ^ (16 * (*(v29 + (776 * v399 + 273152 - 969 * ((4432371 * (776 * v399 + 273152)) >> 32))) ^ v9)) ^ v9;
  v402 = (((v401 + 352) | (671 - v401)) & 0x308) * (v401 + 352);
  v403 = (*(v29 + (776 * v401 - 969 * ((4432371 * (776 * v401)) >> 32))) >> 4) ^ 0xB;
  v404 = 776 * ((v403 - ((2 * v403) & 0xFB) - 67) ^ *(v29 + (v400 - 969 * ((4432371 * v400) >> 32)))) + 273152;
  v405 = 776 * (LODWORD(STACK[0x4B4]) ^ (16 * (*(v29 + (v404 - 969 * ((4432371 * v404) >> 32))) ^ v9)) ^ v9) + 273152;
  v406 = v405 - 969 * ((4432371 * v405) >> 32);
  v407 = 776 * (STACK[0x510] & 0xFFFFFF0F | (16 * (STACK[0x4B8] & 0xF))) + 550184;
  v408 = 776 * ((LODWORD(STACK[0x4C4]) >> 4) & 0xF0 | (LODWORD(STACK[0x4C0]) >> 8) & 0xF) + 550184;
  v409 = (LODWORD(STACK[0x4B0]) | ((*(v29 + v397) ^ v9) << 20)) ^ v392;
  v410 = 776 * ((v409 >> 8) & 0xF0 | (LODWORD(STACK[0x504]) >> 12)) + 550184;
  v411 = 776 * ((v392 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x504])) & 0xF) + 550184;
  v412 = v411 - 969 * ((4432371 * v411) >> 32);
  v413 = v409 ^ ((*(v29 + (v402 - 969 * ((4432371 * v402) >> 32))) ^ v9) << 24);
  v414 = 776 * (HIWORD(v409) & 0xF0 | (LODWORD(STACK[0x518]) >> 12)) + 550184;
  v415 = *(v29 + (v414 - 969 * ((4432371 * v414) >> 32)));
  v416 = v413 ^ ((*(v29 + v406) ^ 0xFFFFFFFD) << 28);
  v417 = 776 * ((v415 & 0xF ^ 2 | v415 & 0xF ^ 0xD) & BYTE2(LODWORD(STACK[0x4E8])) | (v413 >> 20) & 0xF0) + 550184;
  v418 = v417 - 969 * ((4432371 * v417) >> 32);
  v419 = 776 * (HIBYTE(v416) & 0xF0 | (LODWORD(STACK[0x4E8]) >> 20) & 0xF) + 550184;
  v420 = v419 - 969 * ((4432371 * v419) >> 32);
  v421 = *(v29 + LODWORD(STACK[0x4DC])) ^ v9;
  v422 = (16 * v421) ^ ((*(v29 + (v408 - 969 * ((4432371 * v408) >> 32))) ^ v9) << 8);
  v423 = v422 ^ ((*(v29 + (v410 - 969 * ((4432371 * v410) >> 32))) ^ v9) << 12);
  v424 = v423 ^ ((*(v29 + v412) ^ v9) << 16);
  v425 = v424 ^ ((v415 ^ v9) << 20);
  v426 = v425 ^ ((*(v29 + v418) ^ v9) << 24);
  v427 = 776 * ((v426 ^ ((*(v29 + v420) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  v428 = 776 * (HIWORD(v424) & 0xF) + 204088;
  v429 = ((((*(v29 + (776 * (HIBYTE(v426) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v426) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v427 - 969 * ((4432371 * v427) >> 32))) ^ v9) << 12) | *(v29 + (v428 - 969 * ((4432371 * v428) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v425 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v425 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12);
  v430 = ((((((v422 >> 8) & 0xF) + 263) & 0x108) + ((760 - ((v422 >> 8) & 0xF)) & 0x288)) & 0xFFFFFF7F) * (((v422 >> 8) & 0xF) + 263);
  v431 = *(v29 + (776 * (v423 >> 12) + 204088 - 969 * ((4432371 * (776 * (v423 >> 12) + 204088)) >> 32)));
  v432 = (16 * v421 - 32 * (v421 & 3) - 67) ^ *(v29 + (v407 - 969 * ((4432371 * v407) >> 32)));
  LODWORD(STACK[0x510]) = v432;
  v433 = *(v29 + (v430 - 969 * ((4432371 * v430) >> 32)));
  LODWORD(STACK[0x524]) = ((v429 | v433 ^ v9) << 8) ^ ((v431 ^ v9) << 12);
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x384]) ^ 0xA78C8BEF ^ (16 * (*(v29 + (776 * (v432 >> 4) + 204088 - 969 * ((4432371 * (776 * (v432 >> 4) + 204088)) >> 32))) ^ v9));
  v434 = STACK[0x560];
  v435 = v433 ^ 0xB5;
  if (776 * (HIBYTE(v434) & 0xF) + 531560 == 969 * ((4432371 * (776 * (HIBYTE(v434) & 0xF) + 531560)) >> 32))
  {
    v435 = 8;
  }

  v436 = ((*(v29 + (776 * (HIWORD(v434) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v434) & 0xF) + 531560)) >> 32))) ^ v9 ^ ((*(v29 + (776 * (HIBYTE(v434) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v434) & 0xF) + 531560)) >> 32))) ^ (16 * (*(v29 + (776 * (v434 >> 28) + 531560 - 969 * ((4432371 * (776 * (v434 >> 28) + 531560)) >> 32))) ^ v9)) ^ v9) << (v435 & (v433 ^ 0x42) ^ (v433 ^ v9) & 8))) << 8) ^ ((*(v29 + (776 * ((v434 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v434 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v437 = v436 | *(v29 + (776 * ((v434 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v434 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v438 = (v437 << 8) ^ ((*(v29 + (776 * (v434 >> 12) + 531560 - 969 * ((4432371 * (776 * (v434 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v439 = (v438 | LODWORD(STACK[0x470])) ^ (16 * (*(v29 + (776 * (v434 >> 4) + 531560 - 969 * ((4432371 * (776 * (v434 >> 4) + 531560)) >> 32))) ^ v9));
  v440 = 776 * (HIBYTE(LODWORD(STACK[0x46C])) & 0xF) + 531560;
  v441 = 776 * ((LODWORD(STACK[0x46C]) >> 20) & 0xF) + 531560;
  v442 = 776 * (HIWORD(LODWORD(STACK[0x46C])) & 0xF) + 531560;
  v443 = ((*(v29 + (v440 - 969 * ((4432371 * v440) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (LODWORD(STACK[0x46C]) >> 28) + 531560 - 969 * ((4432371 * (776 * (LODWORD(STACK[0x46C]) >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v444 = 776 * (LODWORD(STACK[0x46C]) >> 12) + 531560;
  v445 = ((v443 | *(v29 + (v442 - 969 * ((4432371 * v442) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v441 - 969 * ((4432371 * v441) >> 32))) ^ v9) << 12);
  v446 = 776 * (LODWORD(STACK[0x46C]) >> 4) + 531560;
  v447 = ((v445 | *(v29 + LODWORD(STACK[0x480])) ^ v9) << 8) ^ ((*(v29 + (v444 - 969 * ((4432371 * v444) >> 32))) ^ v9) << 12);
  v448 = (*(v29 + (LODWORD(STACK[0x47C]) - 969 * ((4432371 * LODWORD(STACK[0x47C])) >> 32))) >> 4) ^ 0xB;
  v449 = 776 * ((v448 - ((2 * v448) & 0xFB) - 67) ^ *(v29 + (LODWORD(STACK[0x488]) - 969 * ((4432371 * LODWORD(STACK[0x488])) >> 32)))) + 273152;
  LOBYTE(v448) = *(v29 + (v446 - 969 * ((4432371 * v446) >> 32))) ^ ((v447 | LODWORD(STACK[0x490])) >> 4) ^ v9;
  v450 = 776 * ((v439 >> 4) | (16 * (v448 & 0xF)));
  v451 = v450 - 969 * ((4432371 * v450) >> 32);
  v452 = 776 * (*(v29 + (v450 + 273152 - 969 * ((4432371 * (v450 + 273152)) >> 32))) ^ (16 * (*(v29 + (v449 - 969 * ((4432371 * v449) >> 32))) ^ v9)) ^ v9);
  v453 = v452 + 273152 - 969 * ((4432371 * (v452 + 273152)) >> 32);
  v454 = (*(v29 + (v452 - 969 * ((4432371 * v452) >> 32))) >> 4) ^ 0xB;
  v455 = 776 * ((v454 - ((2 * v454) & 0xFB) - 67) ^ *(v29 + v451)) + 273152;
  v456 = 776 * (v448 & 0xF0 | (v439 >> 8) & 0xF);
  v457 = 776 * (*(v29 + (v456 + 272183) % 0x3C9) ^ (16 * (*(v29 + (v455 - 969 * ((4432371 * v455) >> 32))) ^ v9)) ^ v9);
  v458 = v457 + 273152 - 969 * ((4432371 * (v457 + 273152)) >> 32);
  v459 = (*(v29 + (v457 - 969 * ((4432371 * v457) >> 32))) >> 4) ^ 0xB;
  v460 = 776 * ((v459 - ((2 * v459) & 0xFB) - 67) ^ *(v29 + (v456 - 969 * ((4432371 * v456) >> 32)))) + 273152;
  v461 = 776 * ((v447 >> 8) & 0xF0 | (v438 >> 12));
  v462 = 776 * (*(v29 + (v461 + 273152 - 969 * ((4432371 * (v461 + 273152)) >> 32))) ^ (16 * (*(v29 + (v460 - 969 * ((4432371 * v460) >> 32))) ^ v9)) ^ v9);
  v463 = v462 + 273152 - 969 * ((4432371 * (v462 + 273152)) >> 32);
  v464 = (*(v29 + (v462 - 969 * ((4432371 * v462) >> 32))) >> 4) ^ 0xB;
  v465 = 776 * ((v464 - ((2 * v464) & 0xFB) - 67) ^ *(v29 + (v461 - 969 * ((4432371 * v461) >> 32)))) + 273152;
  v466 = v465 - 969 * ((4432371 * v465) >> 32);
  v467 = ((*(v29 + v463) ^ v9) << 12) ^ ((*(v29 + v458) ^ v9) << 8);
  v468 = 776 * ((v447 >> 12) & 0xF0 | HIWORD(v438) & 0xF);
  v469 = *(v29 + (v468 + 273152 - 969 * ((4432371 * (v468 + 273152)) >> 32))) ^ (16 * (*(v29 + v466) ^ v9));
  v470 = v468 - 969 * ((4432371 * v468) >> 32);
  v471 = v469 ^ v9;
  v472 = 776 * v471 + 273152 - 969 * ((4432371 * (776 * v471 + 273152)) >> 32);
  if (v471 >= 2)
  {
    v473 = (776 * v471 - 969) % 0x3C9;
  }

  else
  {
    v473 = 776 * v471;
  }

  v474 = (*(v29 + v473) >> 4) ^ 0xB;
  v475 = 776 * ((v474 - ((2 * v474) & 0xFB) - 67) ^ *(v29 + v470)) + 273152;
  v476 = 776 * ((v445 >> 8) & 0xF0 | (v436 >> 12));
  v477 = *(v29 + (v476 + 273152 - 969 * ((4432371 * (v476 + 273152)) >> 32))) ^ (16 * (*(v29 + (v475 - 969 * ((4432371 * v475) >> 32))) ^ v9));
  v478 = *(v29 + (776 * (v477 ^ v9) - 969 * ((4432371 * (776 * (v477 ^ v9))) >> 32))) >> 4;
  v479 = ((*(v29 + 776 * (((2 * (v477 ^ v9)) & 0x2C0) + (v477 ^ 0x1DD)) % 0x3C9) ^ v9) << 20) ^ ((*(v29 + v472) ^ v9) << 16);
  v480 = 776 * (((v478 ^ 0xB) + ((2 * ((v478 ^ 0xB | 0x7D) ^ v478)) ^ 0x13) - 66) ^ *(v29 + (v476 - 969 * ((4432371 * v476) >> 32)))) + 273152;
  v481 = 776 * ((v445 >> 12) & 0xF0 | HIWORD(v436) & 0xF);
  v482 = v481 - 969 * ((4432371 * v481) >> 32);
  v483 = 776 * (*(v29 + (v481 + 273152 - 969 * ((4432371 * (v481 + 273152)) >> 32))) ^ (16 * (*(v29 + (v480 - 969 * ((4432371 * v480) >> 32))) ^ v9)) ^ v9);
  v484 = v483 + 273152 - 969 * ((4432371 * (v483 + 273152)) >> 32);
  v485 = (*(v29 + (v483 - 969 * ((4432371 * v483) >> 32))) >> 4) ^ 0xB;
  v486 = 776 * ((v485 - ((2 * v485) & 0xFB) - 67) ^ *(v29 + v482)) + 273152;
  v487 = 776 * ((v443 >> 8) & 0xF0 | (v437 >> 20) & 0xF) + 273152;
  v488 = 776 * (*(v29 + (v487 - 969 * ((4432371 * v487) >> 32))) ^ (16 * (*(v29 + (v486 - 969 * ((4432371 * v486) >> 32))) ^ v9)) ^ v9) + 273152;
  v489 = v488 - 969 * ((4432371 * v488) >> 32);
  v490 = *(v29 + LODWORD(STACK[0x4F0]));
  LOBYTE(v482) = (v490 & 4 ^ 4) + (v490 & 4);
  v491 = v490 ^ v9;
  v492 = v491 ^ (16 * (*(v29 + v453) ^ v9));
  v493 = 776 * (((v491 & 0xF) << v482) ^ LODWORD(STACK[0x4F8])) + 550184;
  v494 = 776 * (v492 & 0xF0 | (v439 >> 4)) + 550184;
  v495 = v494 - 969 * ((4432371 * v494) >> 32);
  v496 = v467 ^ v492;
  v497 = 776 * ((v495 & 0x2C5) + ((v439 >> 8) & 0xF) + (v495 & 0x2C5 ^ 0x2C5) + (((v467 ^ v492) >> 4) & 0xF0));
  v498 = 776 * ((v467 >> 8) & 0xF0 | (v438 >> 12)) + 550184;
  v499 = v479 ^ v496;
  v500 = v499 ^ ((*(v29 + v484) ^ v9) << 24);
  v501 = 776 * ((v499 >> 12) & 0xF0 | HIWORD(v438) & 0xF) + 550184;
  v502 = 776 * (HIWORD(v479) & 0xF0 | (v436 >> 12)) + 550184;
  v503 = v500 ^ ((*(v29 + v489) ^ 0xFFFFFFFD) << 28);
  v504 = (v500 >> 20) & 0xF0 | HIWORD(v436) & 0xF;
  v505 = ((*(v29 + (v502 - 969 * ((4432371 * v502) >> 32))) ^ v9) << 20) ^ ((*(v29 + (v501 - 969 * ((4432371 * v501) >> 32))) ^ v9) << 16);
  v506 = ((*(v29 + (v498 - 969 * ((4432371 * v498) >> 32))) ^ v9) << 12) ^ ((*(v29 + (v497 - 969 * ((4432371 * v497) >> 32))) ^ v9) << 8);
  v507 = 776 * (HIBYTE(v503) & 0xF0 | (v437 >> 20) & 0xF) + 550184;
  v508 = *(v29 + v493 % 0x3C9);
  LODWORD(STACK[0x504]) = v508;
  v509 = v508 ^ (16 * (*(v29 + v495) ^ v9)) ^ v9;
  v510 = v506 ^ v509;
  v511 = v505 ^ v506 ^ v509;
  v512 = v511 ^ ((*(v29 + (776 * v504 + 550184 - 969 * ((4432371 * (776 * v504 + 550184)) >> 32))) ^ v9) << 24);
  v513 = 776 * ((v512 ^ ((*(v29 + (v507 - 969 * ((4432371 * v507) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  LODWORD(STACK[0x500]) = ((((((*(v29 + (776 * (HIBYTE(v512) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v512) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v513 - 969 * ((4432371 * v513) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v511) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v511) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v505 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v505 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v510 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v510 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v506 >> 12) + 204088 - 969 * ((4432371 * (776 * (v506 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v514 = LODWORD(STACK[0x3F4]) - 1004323403 + LODWORD(STACK[0x570]);
  v515 = STACK[0x520];
  v516 = ((LODWORD(STACK[0x520]) ^ 0x29FA50F2) + 568561360) ^ ((LODWORD(STACK[0x520]) ^ 0xC74296D7) - 816101141);
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x520]) ^ (16 * (*(v29 + (776 * (v509 >> 4) + 204088 - 969 * ((4432371 * (776 * (v509 >> 4) + 204088)) >> 32))) ^ v9));
  v517 = v516 ^ ((v515 ^ 0x3AB53B08) + 850191670);
  v518 = 776 * (v514 >> 12) + 531560 - 969 * ((4432371 * (776 * (v514 >> 12) + 531560)) >> 32);
  v519 = v514;
  v520 = 776 * ((v514 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v514 >> 8) & 0xF) + 531560)) >> 32);
  v521 = ((((*(v29 + (776 * (HIBYTE(v514) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v514) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v514 >> 28) + 531560 - 969 * ((4432371 * (776 * (v514 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v514) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v514) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v514 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v514 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v522 = v521 | *(v29 + v520) ^ v9;
  v523 = (v522 << 8) ^ ((*(v29 + v518) ^ v9) << 12);
  v524 = v519;
  LODWORD(STACK[0x4F0]) = v519;
  v525 = *(v29 + (776 * (v519 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v519 & 0xF) + 531560)) >> 32))) ^ v9;
  v526 = (v523 | v525) ^ (16 * (*(v29 + (776 * (v519 >> 4) + 531560 - 969 * ((4432371 * (776 * (v519 >> 4) + 531560)) >> 32))) ^ v9));
  v527 = STACK[0x394];
  LODWORD(STACK[0x520]) = v517 - LODWORD(STACK[0x394]);
  v528 = LODWORD(STACK[0x400]) - v527;
  v529 = 776 * (((v528 - 1287926694) >> 24) & 0xF) + 531560;
  v530 = ((*(v29 + (v529 - 969 * ((4432371 * v529) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v528 - 1287926694) >> 28) + 531560 - 969 * ((4432371 * (776 * ((v528 - 1287926694) >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v531 = ((((((v528 - 1287926694) >> 20) & 0xF) + 685) | (338 - (((v528 - 1287926694) >> 20) & 0xF))) & 0x308) * ((((v528 - 1287926694) >> 20) & 0xF) + 685);
  v532 = 776 * (((v528 - 1287926694) >> 16) & 0xF) + 531560;
  v533 = 776 * ((v528 - 13222) >> 12) + 531560;
  v534 = ((v530 | *(v29 + (v532 - 969 * ((4432371 * v532) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v531 - 969 * ((4432371 * v531) >> 32))) ^ v9) << 12);
  v535 = (((338 - (((v528 - 1287926694) >> 8) & 0xF)) & 0x108) + (((((v528 - 1287926694) >> 8) & 0xF) + 685) & 0x208)) * ((((v528 - 1287926694) >> 8) & 0xF) + 685);
  v536 = 776 * ((v528 + 90) >> 4) + 531560;
  v537 = 776 * ((v528 - 38) & 0xF) + 531560;
  v538 = *(v29 + (v537 - 969 * ((4432371 * v537) >> 32)));
  v539 = ((v534 | *(v29 + (v535 - 969 * ((4432371 * v535) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v533 - 969 * ((4432371 * v533) >> 32))) ^ v9) << 12);
  v540 = 776 * (v525 & 0xF | (16 * ((v538 ^ v9) & 0xF)));
  v541 = 776 * (*(v29 + (v540 + 273152 - 969 * ((4432371 * (v540 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]));
  v542 = v541 + 273152 - 969 * ((4432371 * (v541 + 273152)) >> 32);
  v543 = *(v29 + (v541 - 969 * ((4432371 * v541) >> 32))) >> 4;
  v544 = v29;
  v545 = 776 * (((v543 ^ 0xB) + ((2 * ((v543 ^ 0xB | 0x7D) ^ v543)) ^ 0x13) - 66) ^ *(v29 + (v540 - 969 * ((4432371 * v540) >> 32)))) + 273152;
  LOBYTE(v536) = *(v29 + (v536 - 969 * ((4432371 * v536) >> 32))) ^ ((v539 | v538 ^ v9) >> 4) ^ v9;
  v546 = (v526 >> 4) | (16 * (v536 & 0xF));
  v547 = (v546 + 352) * ((v524 & 0x308 ^ 0x308) + (v524 & 0x308));
  v548 = 776 * (*(v29 + (v547 - 969 * ((4432371 * v547) >> 32))) ^ (16 * (*(v29 + (v545 - 969 * ((4432371 * v545) >> 32))) ^ v9)) ^ v9);
  v549 = v548 + 273152 - 969 * ((4432371 * (v548 + 273152)) >> 32);
  v550 = v548 - 969 * ((4432371 * v548) >> 32);
  v551 = (*(v29 + v550) >> 4) ^ 0xB;
  v552 = 776 * ((v550 & 0x160 ^ 0x160) + (v550 & 0x160) + ((v551 - ((2 * v551) & 0xFB) - 67) ^ *(v29 + (776 * v546 - 969 * ((4432371 * (776 * v546)) >> 32)))));
  v553 = 776 * (v536 & 0xF0 | (v526 >> 8) & 0xF);
  v554 = *(v544 + (v553 + 273152 - 969 * ((4432371 * (v553 + 273152)) >> 32))) ^ (16 * (*(v544 + (v552 - 969 * ((4432371 * v552) >> 32))) ^ v9));
  v555 = v553 - 1938 * ((2216186 * v553) >> 32);
  v556 = 776 * (v554 ^ v9);
  v557 = v556 + 273152 - 969 * ((4432371 * (v556 + 273152)) >> 32);
  if (v555 >= 0x3C9)
  {
    v555 -= 969;
  }

  v558 = *(v29 + v555);
  v559 = (*(v29 + (v556 - 969 * ((4432371 * v556) >> 32))) >> 4) ^ 0xB;
  v560 = 776 * ((v559 - ((2 * v559) & 0xFB) - 67) ^ v558) + 273152;
  v561 = 776 * ((v539 >> 8) & 0xF0 | (v523 >> 12));
  v562 = 776 * (*(v29 + (v561 + 273152 - 969 * ((4432371 * (v561 + 273152)) >> 32))) ^ (16 * (*(v29 + (v560 - 969 * ((4432371 * v560) >> 32))) ^ v9)) ^ v9);
  v563 = v562 + 273152 - 969 * ((4432371 * (v562 + 273152)) >> 32);
  v564 = *(v29 + (v562 - 969 * ((4432371 * v562) >> 32))) >> 4;
  v565 = 776 * (((v564 ^ 0xB) + ((2 * ((v564 ^ 0xB | 0x7D) ^ v564)) ^ 0x13) - 66) ^ *(v29 + (v561 - 969 * ((4432371 * v561) >> 32)))) + 273152;
  v566 = 776 * ((v539 >> 12) & 0xF0 | HIWORD(v523) & 0xF);
  v567 = v566 - 969 * ((4432371 * v566) >> 32);
  v568 = 776 * (*(v29 + (v566 + 273152 - 969 * ((4432371 * (v566 + 273152)) >> 32))) ^ (16 * (*(v29 + (v565 - 969 * ((4432371 * v565) >> 32))) ^ v9)) ^ v9);
  v569 = v568 + 273152 - 969 * ((4432371 * (v568 + 273152)) >> 32);
  v570 = (*(v29 + (v568 - 969 * ((4432371 * v568) >> 32))) >> 4) ^ 0xB;
  v571 = 776 * ((v570 - ((2 * v570) & 0xFB) - 67) ^ *(v29 + v567)) + 273152;
  v572 = 776 * ((v534 >> 8) & 0xF0 | (v521 >> 12));
  v573 = 776 * (*(v29 + (v572 + 273152 - 969 * ((4432371 * (v572 + 273152)) >> 32))) ^ (16 * (*(v29 + (v571 - 969 * ((4432371 * v571) >> 32))) ^ v9)) ^ v9);
  v574 = *(v544 + v573 % 0x3C9) >> 4;
  v575 = 776 * (((v574 ^ 0xB) + ((2 * ((v574 ^ 0xB | 0x7D) ^ v574)) ^ 0x13) - 66) ^ *(v544 + (v572 - 969 * ((4432371 * v572) >> 32)))) + 273152;
  v576 = 776 * ((v534 >> 12) & 0xF0 | HIWORD(v521) & 0xF);
  v577 = 776 * (*(v544 + (v576 + 273152 - 969 * ((4432371 * (v576 + 273152)) >> 32))) ^ (16 * (*(v544 + (v575 - 969 * ((4432371 * v575) >> 32))) ^ v9)) ^ v9);
  v578 = *(v544 + (v577 - 969 * ((4432371 * v577) >> 32))) >> 4;
  v579 = STACK[0x590];
  v580 = 776 * (((v578 ^ 0xB) + ((2 * ((v578 ^ 0xB | 0x7D) ^ v578)) ^ 0x13) - 66) ^ *(v544 + (v576 - 969 * ((4432371 * v576) >> 32)))) + 273152;
  v581 = 776 * ((v530 >> 8) & 0xF0 | (v522 >> 20) & 0xF) + 273152;
  v582 = *(v544 + (v581 - 969 * ((4432371 * v581) >> 32))) ^ (16 * (*(v544 + (v580 - 969 * ((4432371 * v580) >> 32))) ^ v9));
  v583 = (v573 + 273152) % 0x3C9;
  v584 = 776 * (v582 ^ v9) + 273152 - 969 * ((4432371 * (776 * (v582 ^ v9) + 273152)) >> 32);
  LOBYTE(v582) = *(v544 + v542) ^ v9;
  v585 = *(v544 + v549) ^ v9;
  v586 = v525 & 0xF | (16 * (v582 & 0xF));
  v587 = *(v544 + v557) ^ v9;
  v588 = (v582 ^ (16 * v585)) & 0xF0 | (v526 >> 4);
  LOBYTE(v563) = *(v544 + v563) ^ v9;
  v589 = 776 * ((v585 ^ (16 * v587)) & 0xF0 | (v526 >> 8) & 0xF) + 550184;
  LOBYTE(v569) = *(v544 + v569) ^ v9;
  v590 = ((*(v544 + (776 * (((v563 & 0xF ^ (v587 >> 4)) << ((v558 & 4 ^ 4) + (v558 & 4))) ^ (v523 >> 12)) + 550184) % 0x3C9) ^ v9) << 12) ^ ((*(v544 + (v589 - 969 * ((4432371 * v589) >> 32))) ^ v9) << 8);
  v591 = 776 * ((v563 ^ (16 * v569)) & 0xF0 | HIWORD(v523) & 0xF) + 550184;
  LOBYTE(v563) = *(v544 + v583) ^ v9;
  v592 = 776 * ((v569 ^ (16 * v563)) & 0xF0 | (v521 >> 12)) + 550184;
  v593 = ((*(v544 + (v592 - 969 * ((4432371 * v592) >> 32))) ^ v9) << 20) ^ ((*(v544 + (v591 - 969 * ((4432371 * v591) >> 32))) ^ v9) << 16);
  LOBYTE(v591) = *(v544 + (v577 + 273152 - 969 * ((4432371 * (v577 + 273152)) >> 32))) ^ v9;
  v594 = (v563 ^ (16 * v591)) & 0xF0 | HIWORD(v521) & 0xF;
  v595 = *(v544 + (776 * v586 + 550184 - 969 * ((4432371 * (776 * v586 + 550184)) >> 32)));
  v596 = 776 * ((v591 ^ (16 * (*(v544 + v584) ^ 0xFD))) & 0xF0 | (v522 >> 20) & 0xF) + 550184;
  v597 = v595 ^ (16 * (*(v544 + (776 * v588 + 550184 - 969 * ((4432371 * (776 * v588 + 550184)) >> 32))) ^ v9)) ^ v9;
  v598 = v593 ^ v590 ^ v597;
  v599 = ((*(v544 + (v596 - 969 * ((4432371 * v596) >> 32))) ^ 0xFFFFFFFD) << 28) ^ ((*(v544 + (776 * v594 + 550184 - 969 * ((4432371 * (776 * v594 + 550184)) >> 32))) ^ v9) << 24) ^ v598;
  v600 = ((((*(v544 + (776 * (HIBYTE(v599) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v599) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * (v599 >> 28) + 204088 - 969 * ((4432371 * (776 * (v599 >> 28) + 204088)) >> 32))) ^ v9) << 12) | *(v544 + (776 * (HIWORD(v598) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v598) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * ((v593 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v593 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12);
  v601 = 776 * (((v590 ^ v597) >> 8) & 0xF) + 204088;
  v602 = ((v600 | *(v544 + (v601 - 969 * ((4432371 * v601) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * (v590 >> 12) + 204088 - 969 * ((4432371 * (776 * (v590 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v603 = STACK[0x520];
  v604 = (LODWORD(STACK[0x520]) + 602660079) ^ 0x48687F65 ^ (16 * (*(v544 + (776 * (v597 >> 4) + 204088 - 969 * ((4432371 * (776 * (v597 >> 4) + 204088)) >> 32))) ^ v9));
  v605 = (*(v544 + (776 * LODWORD(STACK[0x3AC]) - 969 * ((4432371 * (776 * LODWORD(STACK[0x3AC]))) >> 32))) >> 4) ^ 0xB;
  v606 = 776 * ((v605 - ((2 * v605) & 0xFB) - 67) ^ *(v544 + (LODWORD(STACK[0x3C0]) - 969 * ((4432371 * LODWORD(STACK[0x3C0])) >> 32)))) + 273152;
  v607 = 776 * (STACK[0x3D4] & 0xF0 | (LODWORD(STACK[0x398]) >> 8) & 0xF);
  v608 = 776 * (*(v544 + (v607 + 273152 - 969 * ((4432371 * (v607 + 273152)) >> 32))) ^ (16 * (*(v544 + (v606 - 969 * ((4432371 * v606) >> 32))) ^ v9)) ^ v9);
  v609 = (*(v544 + (v608 - 969 * ((4432371 * v608) >> 32))) >> 4) ^ 0xB;
  v610 = 776 * ((v609 - ((2 * v609) & 0xFB) - 67) ^ *(v544 + (v607 - 969 * ((4432371 * v607) >> 32)))) + 273152;
  v611 = 776 * ((LODWORD(STACK[0x3EC]) >> 8) & 0xF0 | (LODWORD(STACK[0x43C]) >> 12));
  v612 = 776 * (*(v544 + (v611 + 273152 - 969 * ((4432371 * (v611 + 273152)) >> 32))) ^ (16 * (*(v544 + (v610 - 969 * ((4432371 * v610) >> 32))) ^ v9)) ^ v9);
  v613 = *(v544 + (v612 - 969 * ((4432371 * v612) >> 32))) >> 4;
  v614 = ((*(v544 + (v612 + 273152 - 969 * ((4432371 * (v612 + 273152)) >> 32))) ^ v9) << 12) ^ ((*(v544 + (v608 + 273152 - 969 * ((4432371 * (v608 + 273152)) >> 32))) ^ v9) << 8);
  v615 = 776 * (((v613 ^ 0xB) + ((2 * ((v613 ^ 0xB | 0x7D) ^ v613)) ^ 0x13) - 66) ^ *(v544 + (v611 - 969 * ((4432371 * v611) >> 32)))) + 273152;
  v616 = 776 * ((LODWORD(STACK[0x3EC]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x43C])) & 0xF);
  v617 = 776 * (*(v544 + (v616 + 273152 - 969 * ((4432371 * (v616 + 273152)) >> 32))) ^ (16 * (*(v544 + (v615 - 969 * ((4432371 * v615) >> 32))) ^ v9)) ^ v9);
  v618 = (*(v544 + (v617 - 969 * ((4432371 * v617) >> 32))) >> 4) ^ 0xB;
  v619 = 776 * ((v618 - ((2 * v618) & 0xFB) - 67) ^ *(v544 + (v616 - 969 * ((4432371 * v616) >> 32)))) + 273152;
  v620 = 776 * ((LODWORD(STACK[0x440]) >> 8) & 0xF0 | (LODWORD(STACK[0x450]) >> 12));
  v621 = 776 * (*(v544 + (v620 + 273152 - 969 * ((4432371 * (v620 + 273152)) >> 32))) ^ (16 * (*(v544 + (v619 - 969 * ((4432371 * v619) >> 32))) ^ v9)) ^ v9);
  v622 = (*(v544 + (v621 - 969 * ((4432371 * v621) >> 32))) >> 4) ^ 0xB;
  v623 = 776 * ((v622 - ((2 * v622) & 0xFB) - 67) ^ *(v544 + (v620 - 969 * ((4432371 * v620) >> 32)))) + 273152;
  v624 = 776 * ((LODWORD(STACK[0x440]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x450])) & 0xF);
  v625 = 776 * (*(v544 + (v624 + 273152 - 969 * ((4432371 * (v624 + 273152)) >> 32))) ^ (16 * (*(v544 + (v623 - 969 * ((4432371 * v623) >> 32))) ^ v9)) ^ v9);
  v626 = *(v544 + (v625 - 969 * ((4432371 * v625) >> 32))) >> 4;
  v627 = 776 * (((v626 ^ 0xB) + ((2 * ((v626 ^ 0xB | 0x7D) ^ v626)) ^ 0x13) - 66) ^ *(v544 + (v624 - 969 * ((4432371 * v624) >> 32)))) + 273152;
  v628 = 776 * ((LODWORD(STACK[0x44C]) >> 8) & 0xF0 | (LODWORD(STACK[0x460]) >> 20) & 0xF) + 273152;
  v629 = *(v544 + (v628 - 969 * ((4432371 * v628) >> 32))) ^ (16 * (*(v544 + (v627 - 969 * ((4432371 * v627) >> 32))) ^ v9));
  v630 = v614 ^ LODWORD(STACK[0x3A4]);
  v631 = v630 ^ ((*(v544 + (v617 + 273152 - 969 * ((4432371 * (v617 + 273152)) >> 32))) ^ v9) << 16);
  v632 = v631 ^ ((*(v544 + (v621 + 273152 - 969 * ((4432371 * (v621 + 273152)) >> 32))) ^ v9) << 20);
  v633 = (v614 >> 8) & 0xF0 | (LODWORD(STACK[0x43C]) >> 12);
  v634 = 776 * ((v630 >> 4) & 0xF0 | (LODWORD(STACK[0x398]) >> 8) & 0xF) + 550184;
  v635 = LODWORD(STACK[0x3A0]) ^ ((*(v544 + (v634 - 969 * ((4432371 * v634) >> 32))) ^ v9) << 8);
  v636 = v632 ^ ((*(v544 + (v625 + 273152 - 969 * ((4432371 * (v625 + 273152)) >> 32))) ^ v9) << 24);
  v637 = ((v636 ^ ((*(v544 + (776 * (v629 ^ v9) + 273152 - 969 * ((4432371 * (776 * (v629 ^ v9) + 273152)) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0x460]) >> 20) & 0xF;
  v638 = 776 * v633 + 550184 - 969 * ((4432371 * (776 * v633 + 550184)) >> 32);
  v639 = 776 * ((v631 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x43C])) & 0xF) + 550184;
  v640 = v639 - 969 * ((4432371 * v639) >> 32);
  v641 = 776 * (HIWORD(v632) & 0xF0 | (LODWORD(STACK[0x450]) >> 12)) + 550184;
  v642 = v641 - 969 * ((4432371 * v641) >> 32);
  v643 = 776 * ((v636 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x450])) & 0xF) + 550184;
  v644 = v643 - 969 * ((4432371 * v643) >> 32);
  v645 = v635 ^ ((*(v544 + v638) ^ v9) << 12);
  v646 = v645 ^ ((*(v544 + v640) ^ v9) << 16);
  v647 = v646 ^ ((*(v544 + v642) ^ v9) << 20);
  v648 = v647 ^ ((*(v544 + v644) ^ v9) << 24);
  v649 = 776 * ((v648 ^ ((*(v544 + (776 * v637 + 550184 - 969 * ((4432371 * (776 * v637 + 550184)) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  v650 = ((*(v544 + (776 * (HIBYTE(v648) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v648) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (v649 - 969 * ((4432371 * v649) >> 32))) ^ v9) << 12);
  v651 = STACK[0x56C];
  v652 = LODWORD(STACK[0x388]) | *(v544 + (776 * (STACK[0x56C] & 0xF) + 204088 - 969 * ((4432371 * (776 * (STACK[0x56C] & 0xF) + 204088)) >> 32))) ^ v9;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x57C]) ^ 0xA78C8BEF ^ LODWORD(STACK[0x55C]);
  v653 = 776 * (STACK[0x37C] & 0xF ^ 0xD) + 204088;
  v654 = LODWORD(STACK[0x378]) | *(v544 + (v653 - 969 * ((4432371 * v653) >> 32))) ^ v9;
  LODWORD(STACK[0x588]) ^= 0xA78C8BEF ^ LODWORD(STACK[0x4A0]);
  LODWORD(STACK[0x4C4]) = LODWORD(STACK[0x45C]) ^ 0xA78C8BEF ^ LODWORD(STACK[0x58C]);
  v655 = 776 * (STACK[0x3A8] & 0xF ^ 0xD) + 204088;
  LODWORD(STACK[0x58C]) = LODWORD(STACK[0x454]) ^ (LODWORD(STACK[0x374]) | *(v544 + (v655 - 969 * ((4432371 * v655) >> 32))) ^ v9);
  v656 = LODWORD(STACK[0x53C]) + LODWORD(STACK[0x550]);
  LODWORD(STACK[0x57C]) = LODWORD(STACK[0x518]) ^ (LODWORD(STACK[0x524]) | *(v544 + (776 * (STACK[0x510] & 0xF) + 204088 - 969 * ((4432371 * (776 * (STACK[0x510] & 0xF) + 204088)) >> 32))) ^ v9);
  LODWORD(STACK[0x524]) = LODWORD(STACK[0x528]) ^ 0xA97E851F ^ LODWORD(STACK[0x54C]);
  v657 = STACK[0x534];
  v658 = LODWORD(STACK[0x534]) ^ 0x54D3D9CC ^ LODWORD(STACK[0x560]);
  v659 = 776 * (STACK[0x504] & 0xF ^ 0xD) + 204088;
  v660 = LODWORD(STACK[0x538]) ^ (LODWORD(STACK[0x584]) - 2025679488 + LODWORD(STACK[0x540]));
  LODWORD(STACK[0x584]) = LODWORD(STACK[0x4F8]) ^ 0xBDC6E38C ^ (LODWORD(STACK[0x500]) | *(v544 + (v659 - 969 * ((4432371 * v659) >> 32))) ^ v9);
  v661 = (((v657 ^ 0x29721628) + 1532922783) ^ ((v657 ^ 0xE6472909) - 1804880704) ^ ((v657 ^ 0x1B38C20C) + 1762942907)) - LODWORD(STACK[0x570]);
  v662 = v604 ^ (v602 | *(v544 + (776 * (v595 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v595 & 0xF ^ 0xDu) + 204088)) >> 32))) ^ v9);
  v663 = LODWORD(STACK[0x4F0]) ^ 0xA17D4525 ^ (v661 + 1507762020);
  v664 = ((((v650 | *(v544 + (776 * (HIWORD(v646) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v646) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (388 * ((v647 >> 19) & 0x1E) + 204088 - 969 * ((4432371 * (388 * ((v647 >> 19) & 0x1E) + 204088)) >> 32))) ^ v9) << 12) | *(v544 + (776 * ((v635 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v635 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * (v645 >> 12) + 204088 - 969 * ((4432371 * (776 * (v645 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v665 = v661 - LODWORD(STACK[0x4C8]) + 1908007376;
  v666 = (((v660 ^ 0x8318C569) + 1258024662) ^ ((v660 ^ 0x9550E1CD) + 1555286642) ^ ((v660 ^ 0x2E350C13) - 405395536)) + 1313022731 + v665;
  v667 = v665 ^ 0x48687F65 ^ LODWORD(STACK[0x3BC]);
  v668 = (((8 - (STACK[0x3B0] & 0xF ^ 0xD)) ^ ((STACK[0x3B0] & 0xF ^ 0xD) + 7)) & 8 | 0x300) * ((STACK[0x3B0] & 0xF ^ 0xD) + 263);
  v669 = *(v544 + (v668 - 969 * ((4432371 * v668) >> 32))) ^ v9;
  v670 = ((v656 - ((2 * v656 + 243608320) & 0xA512F2F6) - 640938245) ^ LODWORD(STACK[0x498])) + 1071719594;
  v671 = (v664 | v669) + 619057399 + ~(2 * ((v664 | v669) & 0x24E610FF ^ v669 & 9));
  v672 = STACK[0x4A8];
  v673 = v603 - LODWORD(STACK[0x4A8]) + 386205800;
  v674 = v670 + v673;
  v675 = v673 ^ (16 * (*(v544 + LODWORD(STACK[0x3C8])) ^ v9)) ^ 0x859B55D3 ^ v671;
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x430]) - 100579545;
  v676 = LODWORD(STACK[0x5A8]) ^ (16 * (*(v544 + (776 * (v651 >> 4) + 204088 - 969 * ((4432371 * (776 * (v651 >> 4) + 204088)) >> 32))) ^ v9)) ^ v652;
  v677 = LODWORD(STACK[0x4F4]) + 2044486647 + (((v666 ^ 0x721CFA71) + 706631832) ^ ((v666 ^ 0xBB7CDD63) - 478249082) ^ ((v666 ^ 0x3FDF98EE) + 1742551561));
  v678 = 776 * (LODWORD(STACK[0x380]) >> 4) + 204088;
  v679 = (v674 + 365) ^ 0xF6BFBFFC;
  v680 = v603 + v679;
  v681 = v661 + (((v666 ^ 0x70619127) + 677589954) ^ ((v666 ^ 0x8FE1BEAD) - 672981940) ^ ((v666 ^ 0x93F9076) + 1362965137));
  v682 = (v603 + v679 + 296071249) ^ v679;
  v683 = LODWORD(STACK[0x4FC]) - 1057189199;
  v684 = v681 - 2129152358;
  v685 = v666 ^ 0xA7FD5D19 ^ (v681 - 1006069962 - ((2 * (v681 - 1006069962) - 1448772374) & 0xA285C5CA) + 638951770);
  v686 = v680 + 212622280;
  v687 = LODWORD(STACK[0x4D0]) - 1910247144;
  v688 = (v680 + 212622280) ^ (v672 - 90134551 + v679);
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x548]) ^ (16 * (*(v544 + (v678 - 969 * ((4432371 * v678) >> 32))) ^ v9)) ^ 0x9CE2BEE5 ^ v654;
  v689 = (v681 - 1813905118) ^ v677;
  LODWORD(STACK[0x518]) = v676;
  LODWORD(STACK[0x4B4]) = v676 ^ 0xA97E851F;
  v690 = (LODWORD(STACK[0x580]) - 524401959) & 0x1F41BDFF;
  LODWORD(STACK[0x3EC]) = v690;
  LODWORD(STACK[0x44C]) = v690 - 900930189;
  LODWORD(STACK[0x56C]) = STACK[0x424];
  LODWORD(STACK[0x590]) = v579;
  v691 = v675 ^ 0x2C80E3DB;
  v692 = v675 ^ 0xA17D4525;
  v693 = v675;
  LODWORD(STACK[0x528]) = v675;
  v694 = v658;
  LODWORD(STACK[0x534]) = v667;
  v695 = v662;
  v696 = STACK[0x584];
  v697 = (v695 ^ 0x48687F65) & (LODWORD(STACK[0x584]) ^ 0x6150D831);
  v698 = v692 & (v694 ^ 0x8E1C5838);
  v699 = LODWORD(STACK[0x44C]) ^ LODWORD(STACK[0x584]);
  v700 = v695 & 0xEADE0961 ^ STACK[0x584] & 0x8DFDA6FE ^ (v694 ^ 0x4BA34C44) & (v695 ^ 0x48687F65) ^ v663 & 0x82248C15;
  LODWORD(STACK[0x550]) = v663;
  LODWORD(STACK[0x454]) = v663 ^ 0xA17D4525;
  LODWORD(STACK[0x450]) = v696 ^ 0x48687F65;
  LODWORD(STACK[0x538]) = v667 ^ 0x48687F65;
  v701 = v700 ^ v667 & 0x92032839 ^ (v663 ^ 0xA17D4525) & v699 ^ (v667 ^ 0x48687F65) & (v694 ^ 0xCC8192E3) ^ v691 & (v696 ^ 0x48687F65);
  LODWORD(STACK[0x560]) = v695;
  v702 = v697 ^ v695 & 0x2938A754 ^ v694 & 0xFA22BEFA ^ (v663 ^ 0x5B5FFBDF) & (v694 ^ 0xA17D4525) ^ v667 & 0x6BDFC20B ^ (v667 ^ 0x48687F65) & (v696 ^ 0x23B7BD6E) ^ v693 & 0xD09EE2E2 ^ v698;
  HIDWORD(v703) = v696;
  LODWORD(v703) = v696;
  v704 = (v703 >> 11) ^ __ROR4__(v696, 6);
  LODWORD(STACK[0x55C]) = v696;
  v706 = __PAIR64__(v694, __ROR4__(v696, 25));
  v705 = v704 ^ v706;
  v707 = v705 ^ v685 ^ (v684 - 2 * ((v684 + 315247240) & 0x43FC727E ^ v684 & 6) - 691618560) ^ 0x8E4B6C2E;
  LODWORD(v706) = v694;
  v708 = (v706 >> 11) ^ __ROR4__(v694, 6);
  LODWORD(STACK[0x54C]) = v694;
  LODWORD(v706) = __ROR4__(v694, 25);
  v709 = ((v705 ^ 0x57904433) - 578725847) ^ ((v705 ^ 0x2F0DB670) - 1524848020) ^ ((v705 ^ 0x352AEC15) - 1086590961);
  v710 = ((v708 ^ v706 ^ 0xFB9E10F4 ^ (v707 + 1997363352 - ((2 * v707) & 0xEE1AB130))) - v707) ^ ((v708 ^ v706 ^ 0xFB9E10F4 ^ (v686 + 1997363352 - ((2 * v686) & 0xEE1AB130))) - v686) ^ (((v682 + 1997363352 - ((2 * v682) & 0xEE1AB130)) ^ v708 ^ v706 ^ 0xFB9E10F4) - v682);
  v711 = (v683 ^ 0x5E8EB5BE) & (2 * (v683 & 0x9F2E853E)) ^ v683 & 0x9F2E853E;
  v712 = ((2 * (v683 ^ 0x5A8AB58E)) ^ 0x8B486160) & (v683 ^ 0x5A8AB58E) ^ (2 * (v683 ^ 0x5A8AB58E)) & 0xC5A430B0;
  v713 = v711 ^ 0xC5A430B0 ^ (v712 ^ 0x81002020) & (4 * v711);
  v714 = (4 * (v712 ^ 0x44A41090)) & 0xC5A430B0 ^ 0xC1243030 ^ ((4 * (v712 ^ 0x44A41090)) ^ 0x1690C2C0) & (v712 ^ 0x44A41090);
  v715 = (16 * v713) & 0xC5A430B0 ^ v713 ^ ((16 * v713) ^ 0x5A430B00) & v714;
  v716 = (16 * v714) & 0xC5A430B0 ^ 0x85A430B0 ^ ((16 * v714) ^ 0x5A430B00) & v714;
  v717 = v715 ^ (v715 << 8) & 0xC5A43000 ^ ((v715 << 8) ^ 0xA430B000) & v716;
  v718 = v683 ^ (v684 + 315247240) ^ (2 * (((v717 ^ 0xC4203000) << 16) & 0x45A40000 ^ v717 ^ 0xC4203000 ^ (((v717 ^ 0xC4203000) << 16) ^ 0x30B00000) & ((v716 << 8) & 0xC5A40000 ^ 0x41840000 ^ ((v716 << 8) ^ 0xA4300000) & v716)));
  v719 = ((v718 ^ 0x5B1ACE2E) - 306483516) ^ ((v718 ^ 0xF8DD9CB4) + 1316764762) ^ ((v718 ^ 0xE1069EEE) + 1470578180);
  v720 = v689 - (v684 + 315247240);
  v721 = v720 + v685 - v719;
  v722 = (v721 - 641277029) ^ v701 ^ (v719 + 641277029 + ((v684 + 315247240) ^ 0x57E7282A) - 1395619386 + (~(2 * (v719 + 641277029 + ((v684 + 315247240) ^ 0x57E7282A))) | 0xA65EEC75));
  v723 = v688 - v686;
  v686 ^= 0x57E7282Au;
  v724 = v687 ^ v686;
  v725 = v723 + v682 - (v687 ^ v686);
  v726 = v719 + 641277029 + (v701 ^ 0xC0040321);
  v727 = v686 + 446269695 + (v687 ^ v686);
  v728 = ((v702 ^ 0x605C2145 ^ v727) - v727) ^ ((v702 ^ 0x605C2145 ^ (v725 - 446269695)) - (v725 - 446269695)) ^ ((((v722 ^ v702 ^ 0x1A92180B) + 550897328) ^ ((v722 ^ v702 ^ 0x638D6E3B) + 1506373792) ^ ((v722 ^ v702 ^ 0x7597DD91) + 1339278134)) - (((v722 ^ 0x560EE0C3) + 977445235) ^ ((v722 ^ 0xC53AB742) - 1451821324) ^ ((v722 ^ 0xFFE0DD65) - 1817404203)) - 909371824);
  v729 = ((((v684 + 315247240) ^ 0xE08EB6CD) + 1200361633) ^ (((v684 + 315247240) ^ 0xEC1C3AC7) + 1260297387) ^ (((v684 + 315247240) ^ 0x5B75A420) - 59309490)) - v720;
  v730 = (v721 - 73795782) ^ (v729 + 1940498929);
  LODWORD(STACK[0x540]) = v730;
  v731 = (v687 ^ v686) + v723;
  v732 = v725 + 121211552;
  v733 = v727 - v731;
  v734 = v732 & 0x100;
  if (((v733 + 1240837946) & v734) != 0)
  {
    v734 = -v734;
  }

  v735 = (v734 + v733 + 1240837946) ^ v732 & 0xFFFFFEFF;
  v736 = LODWORD(STACK[0x570]) - v687;
  v737 = STACK[0x5A0];
  v738 = *(STACK[0x5A0] + 4 * ((137 * v579 + 18769) % 0x116u));
  LODWORD(STACK[0x548]) = v724;
  v739 = *(&off_1F5DB1610 + LODWORD(STACK[0x580]) - 3248) - 8;
  v740 = v736 - v724 + v710 + v738 + (*&v739[4 * ((107 * (v579 ^ 0x24) + 8132) % 0xC0u)] ^ 0x6463B87D) + 880957275 + v728;
  v741 = *&v739[4 * ((107 * (LODWORD(STACK[0x590]) ^ 0x3E)) % 0xC0u)];
  LODWORD(v739) = ((v741 ^ 0x60D419BD) - 1745964235) ^ ((v741 ^ 0x682F1EBB) - 1625967565) ^ ((v741 ^ 0xB0883846) + 1202885328);
  v742 = v729 + v719;
  v743 = v709 + v683 + LODWORD(STACK[0x56C]);
  v744 = v724 + 2122020687;
  v745 = v720 + 722347838 + v719;
  v746 = v719;
  LODWORD(STACK[0x4C0]) = v719;
  v747 = v733 - 824479058;
  v748 = v743 + *(v737 + 4 * ((137 * v579 + 9453) % 0x116u)) + v739;
  v749 = v729 - 124818075;
  v750 = v745 ^ (v729 - 124818075);
  v751 = v747 + v744 + v744;
  LODWORD(STACK[0x4A8]) = v751;
  v752 = v747 + v744 + 1628074226 - ((2 * (v747 + v744)) & 0xC214E1E4);
  v753 = v742 + v746;
  v742 -= 2102757350;
  LODWORD(STACK[0x4B8]) = v742;
  LODWORD(v737) = (v730 - v750) ^ 0x52A7E809;
  v754 = ((v730 - v750) ^ v750) + 2008837996;
  v755 = v737 ^ v742;
  LODWORD(STACK[0x4FC]) = v737;
  LODWORD(STACK[0x56C]) = v755 - 574789040;
  v756 = v754 ^ (v753 - 112250457);
  LODWORD(STACK[0x570]) = v756;
  v757 = ((v756 ^ (v755 - 574789040) ^ 0xD4F99481) - 1508778302) ^ ((v756 ^ (v755 - 574789040) ^ 0x392D9F15) + 1271256406) ^ ((v756 ^ (v755 - 574789040) ^ 0xEDD40B94) - 1623440939);
  LODWORD(v739) = ((((v754 ^ 0x7546746) - 1038091277) ^ (v753 - 112250457) ^ 0x578DC476) - 1764669837) ^ ((((v754 ^ 0x7546746) - 1038091277) ^ (v753 - 112250457) ^ 0xBFCE9A84) + 2123503745) ^ ((((v754 ^ 0x7546746) - 1038091277) ^ (v753 - 112250457) ^ 0xEF1739B4) + 776715185);
  v758 = v737 + v755 - v757;
  v759 = v758 + 1353036945;
  v760 = v758 - ((2 * (v758 + 1353036945)) & 0x52FD0A3E);
  v761 = v757 - v739;
  v762 = v757 - v739 + 1394645762;
  LODWORD(STACK[0x4B0]) = v762;
  v763 = STACK[0x524];
  v764 = v762 ^ LODWORD(STACK[0x524]) ^ (v760 - 98289232);
  v765 = STACK[0x57C];
  v766 = (((v764 ^ LODWORD(STACK[0x57C]) ^ 0x29191380) + 1057290565) ^ ((v764 ^ LODWORD(STACK[0x57C]) ^ 0x8C27FC21) - 1707469082) ^ ((v764 ^ LODWORD(STACK[0x57C]) ^ 0x2B2644E) + 347049611)) - (((v764 ^ 0xDD86C3F1) - 879023818) ^ ((v764 ^ 0xFE065450) - 400834923) ^ ((v764 ^ 0x238097A1) + 899513702));
  v767 = v747 ^ (v731 + 527340504);
  v768 = v735 - v767;
  v769 = (v735 - v767) ^ v767;
  v770 = (v735 - v767) ^ 0x33AD98FB;
  LODWORD(STACK[0x4A0]) = v770;
  LODWORD(STACK[0x4F4]) = v768;
  LODWORD(STACK[0x498]) = v770 ^ v752;
  v771 = (v769 + 2008837996) ^ (v751 - 326521128);
  LODWORD(STACK[0x504]) = v771;
  v772 = (v751 - 326521128) ^ 0x7546746;
  v773 = (((v769 + 2008837996) ^ 0x7546746) - 1038091277) ^ v772;
  LODWORD(STACK[0x490]) = v768 ^ 0x52A7E809;
  LODWORD(STACK[0x500]) = (v770 ^ v752) - 574789040;
  v774 = ((v770 ^ v752) - 574789040) ^ v771;
  v775 = (v770 ^ v752) - 574789040 + (v768 ^ 0x52A7E809) - v774;
  v776 = v774 - v773;
  LODWORD(STACK[0x4F8]) = v774 - v773;
  v777 = ((v765 ^ 0xA78C8BEF ^ (v774 - v773)) - (v774 - v773)) ^ ((v765 ^ 0xA78C8BEF ^ v775) - v775) ^ (v766 + 1686931865);
  v778 = v739 - v761;
  v779 = (v740 ^ 0x87A065CC) + 2019531316 + ((2 * v740) & 0xF40CB98);
  LODWORD(STACK[0x488]) = v779;
  v780 = v748 + 594346392 + v726;
  LODWORD(STACK[0x57C]) = v780;
  v781 = v773 - v776;
  LODWORD(STACK[0x4F0]) = v781;
  v782 = v772 + 2129298254 - (v775 ^ 0x45845DE1);
  LODWORD(STACK[0x53C]) = v782;
  v783 = v781 + v782;
  v784 = v780 - (v781 + v782 + v772) - 2129298254 + v777;
  LODWORD(STACK[0x4E0]) = v784;
  v785 = (v753 - 112250457) ^ 0x7546746;
  LODWORD(STACK[0x584]) = v785;
  v785 += 2129298254;
  LODWORD(STACK[0x520]) = v785;
  v786 = v785 - (v759 ^ 0x45845DE1);
  LODWORD(STACK[0x524]) = v786;
  LODWORD(STACK[0x480]) = v778 - 422150213;
  v787 = v786 + v778 - 422150213;
  LODWORD(STACK[0x47C]) = v787;
  v788 = v785 + (v763 ^ 0xA97E851F) + v787 + v779;
  LODWORD(STACK[0x4D0]) = v788;
  v789 = 776 * ((15 - (((v684 & 0x52 ^ 0x52) + (v684 & 0x52)) & 0x84)) & v788) + 531560;
  v790 = STACK[0x5B0];
  v791 = *(STACK[0x5B0] + (v789 - 969 * ((4432371 * v789) >> 32))) ^ v9;
  LODWORD(STACK[0x4C8]) = v791;
  LODWORD(v737) = *(v790 + (776 * (v784 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v784 & 0xF) + 531560)) >> 32))) ^ v9;
  LODWORD(STACK[0x4E8]) = v737;
  LODWORD(STACK[0x510]) = v791 & 0xF;
  v792 = 776 * (v791 & 0xF | (16 * (v737 & 0xF)));
  LODWORD(STACK[0x4DC]) = v792;
  LODWORD(STACK[0x4EC]) = (v792 + 273152) % (((v772 + 2129298254) ^ (177 - v772)) & 0x3C9u);
  v793 = STACK[0x508];
  v794 = LODWORD(STACK[0x508]) ^ 0xA78C8BEF;
  STACK[0x470] = v794;
  v795 = (v794 << ((v726 & 0x1E ^ 0x1E) + (v726 & 0x1E))) + ((v793 >> 2) ^ 0x29E322FB);
  v796 = (v795 - ((2 * v795) & 0x77767DE8) - 1145356556) ^ __ROR4__(v793, 13);
  v797 = (v796 ^ 0xE4C60290) - 2 * ((v796 ^ 0xE4C60290) & 0x3055E81F ^ v796 & 4);
  v798 = STACK[0x518];
  v799 = LODWORD(STACK[0x518]) ^ 0x40DF7D41;
  LODWORD(v739) = STACK[0x588];
  LODWORD(v794) = LODWORD(STACK[0x588]) ^ 0xA78C8BEF;
  LODWORD(STACK[0x43C]) = v794;
  v800 = STACK[0x5A8];
  v801 = v739 & 0x40DF7D41 ^ v799 & v794 ^ STACK[0x5A8] & 0xB551B64D;
  LODWORD(v794) = LODWORD(STACK[0x5A8]) ^ 0xA97E851F;
  LODWORD(STACK[0x46C]) = v794;
  v802 = STACK[0x58C];
  v803 = LODWORD(STACK[0x58C]) ^ 0xA97E851F;
  v804 = STACK[0x58C] & 0x1EC80FB3 ^ v803 & (v793 ^ 0xB944845C) ^ 0x2BCE6B27 ^ ((v801 ^ v794 & (v793 ^ 0x12DD3DA2) ^ 0xA1DC8D4C) - ((2 * (v801 ^ v794 & (v793 ^ 0x12DD3DA2) ^ 0xA1DC8D4C)) & 0x470CDC68) + 596012596);
  HIDWORD(v806) = STACK[0x4B4];
  LODWORD(v806) = STACK[0x4B4];
  v805 = v806 >> 2;
  LODWORD(v806) = __ROR4__(STACK[0x4B4], 13);
  LODWORD(v794) = STACK[0x4C4];
  v807 = STACK[0x4B4] & 0x2E1DC8AB ^ v798 & (LODWORD(STACK[0x4C4]) ^ 0x89914344) ^ 0x4D6A1B4B ^ (v804 - ((2 * v804) & 0xCAED3680) + 1702271808);
  v808 = v803 & (v739 ^ 0x7E9A9A5A) ^ STACK[0x58C] & 0xD91611B5 ^ (v807 - ((2 * v807) & 0x6FF1D72A) - 1208423531);
  v809 = LODWORD(STACK[0x4C4]) ^ 0xA78C8BEF;
  v810 = STACK[0x4C4] & 0x92230D11 ^ (v800 ^ 0x3B5D880E) & v809 ^ 0x4EFBF440 ^ ((v808 ^ 0x3EEEEA80) - 2 * ((v808 ^ 0x3EEEEA80) & 0x4CFBFD55 ^ v808 & 0x14) - 855900863);
  v811 = LODWORD(STACK[0x540]) ^ v749;
  LODWORD(STACK[0x540]) = STACK[0x4B4];
  v812 = ((v805 ^ v806 ^ 0xC2A2EAB3) - ((2 * (v805 ^ v806 ^ 0xC2A2EAB3)) & 0x2120AC20) + 277894672) ^ __ROR4__(HIDWORD(v806), 22) ^ 0xEA8428B5;
  v813 = (v797 - 1336547301) ^ __ROR4__(v793, 22) ^ 0x827A5685;
  LODWORD(STACK[0x4C4]) = v772 - 2006023225;
  v814 = (v783 + 1002412859) ^ (v772 - 2006023225);
  LODWORD(STACK[0x508]) = v814;
  v815 = v753 - 22477460 - (v814 + LODWORD(STACK[0x548])) + v810 + LODWORD(STACK[0x57C]) + 948079481 + (((v735 ^ v812) - v735) ^ ((v747 ^ v812) - v747) ^ ((v811 ^ v813 ^ v812) + (v811 ^ v813) - 2 * (v811 ^ v813)));
  v816 = v800 & 0x1A588313 ^ 0x8588113 ^ STACK[0x46C] & (v798 ^ 0x1A588313);
  v817 = v793 & 0x90E77F84 ^ (v739 ^ 0x376BF46B) & STACK[0x470] ^ 0x92168CD7 ^ (v816 - ((2 * v816) & 0x25250EA6) + 311592787);
  v818 = v802 & 0xC9B14AB0 ^ 0x89300010 ^ (v800 ^ 0x60CFCFAF) & v803;
  LODWORD(STACK[0x548]) = v793;
  v819 = v794 & 0x6FBD8BB2 ^ v809 & (v793 ^ 0xC831005D) ^ 0xBE40BFDB ^ (v817 - ((2 * v817) & 0x339868F2) - 1714670471);
  LODWORD(STACK[0x57C]) = v794;
  LODWORD(STACK[0x440]) = v809;
  v820 = v794 & 0xD9437BD7 ^ v802 & 0x8F759F2E ^ (v739 ^ 0x7ECFF038) & v809 ^ (v798 ^ 0x8F759F2E) & v803 ^ (v818 - ((2 * v818) & 0x2FD5F132) - 1746208615) ^ 0x2ED468E7 ^ (v819 - ((2 * v819) & 0x62943D6E) - 1320542537);
  v821 = STACK[0x4A0];
  v822 = LODWORD(STACK[0x4C0]) - LODWORD(STACK[0x4A8]) + ((((v820 + 1628074226 - ((2 * v820) & 0xC214E1E4)) ^ LODWORD(STACK[0x4A0])) - LODWORD(STACK[0x490])) ^ ((v820 ^ LODWORD(STACK[0x498])) - LODWORD(STACK[0x498])) ^ ((v810 ^ LODWORD(STACK[0x4B8]) ^ v820) - (v810 ^ LODWORD(STACK[0x4B8])))) - 516324016 + v813;
  v823 = (LODWORD(STACK[0x4B0]) ^ 0x9EDAC291) + LODWORD(STACK[0x480]);
  LODWORD(STACK[0x480]) = v823;
  v824 = (LODWORD(STACK[0x47C]) + 1002412859) ^ (LODWORD(STACK[0x584]) - 2006023225);
  LODWORD(STACK[0x518]) = v824;
  v825 = v822 + v824 + LODWORD(STACK[0x488]);
  v826 = ((((*(v790 + (776 * (HIBYTE(v825) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v825) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(v790 + (776 * (v825 >> 28) + 531560 - 969 * ((4432371 * (776 * (v825 >> 28) + 531560)) >> 32))) ^ 0xBD) << 12) | *(v790 + (776 * (HIWORD(v825) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v825) & 0xF) + 531560)) >> 32))) ^ 0xBD) ^ (16 * (*(v790 + (776 * ((v825 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v825 >> 20) & 0xF) + 531560)) >> 32))) ^ 0xBDu))) << ((v815 & 0xB8) + 80 + (v815 & 0xB8 ^ 0xB8));
  v827 = *(v790 + (776 * ((v825 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v825 >> 8) & 0xF) + 531560)) >> 32))) ^ (16 * (*(v790 + (776 * (v825 >> 12) + 531560 - 969 * ((4432371 * (776 * (v825 >> 12) + 531560)) >> 32))) ^ 0xBD)) ^ v826;
  LOWORD(v798) = v826;
  STACK[0x470] = v826;
  v828 = *(v790 + (776 * (v825 >> 4) + 531560 - 969 * ((4432371 * (776 * (v825 >> 4) + 531560)) >> 32))) ^ 0xBD;
  LOBYTE(v824) = *(v790 + (776 * (v825 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v825 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x4A8]) = v827;
  LODWORD(STACK[0x498]) = v827 ^ 0xBD;
  LODWORD(v739) = (v824 | ((v827 ^ 0xBD) << 8)) ^ (16 * v828);
  LODWORD(v826) = ((*(v790 + (776 * (HIBYTE(v815) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v815) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(v790 + (776 * (v815 >> 28) + 531560) % (((919 - 776 * (v815 >> 28)) & 0x3C9) + ((776 * (v815 >> 28) + 531560) & 0x3C8))) ^ 0xBD) << 12);
  LODWORD(STACK[0x4C0]) = v826;
  v829 = ((v826 | *(v790 + (776 * (HIWORD(v815) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v815) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(v790 + (776 * ((v815 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v815 >> 20) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 12);
  v830 = *(v790 + (776 * (v815 >> 12) + 531560 - 969 * ((4432371 * (776 * (v815 >> 12) + 531560)) >> 32))) ^ 0xBD;
  LOBYTE(v828) = *(v790 + (776 * (v815 >> 4) + 531560 - 969 * ((4432371 * (776 * (v815 >> 4) + 531560)) >> 32)));
  LODWORD(v794) = v829 | *(v790 + (776 * ((v815 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v815 >> 8) & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x46C]) = v829;
  v831 = *(v790 + (776 * (v815 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v815 & 0xF) + 531560)) >> 32)));
  v832 = (v794 << 8) ^ (v830 << 12);
  v833 = v824 & 0xF;
  LODWORD(STACK[0x4B8]) = v833;
  v834 = 776 * (v833 & 0xFFFFFF0F | (16 * ((v831 ^ 0xBD) & 0xF)));
  LODWORD(v794) = v834 - 969 * ((4432371 * v834) >> 32);
  v835 = 776 * (*(v790 + (v834 + 273152 - 969 * ((4432371 * (v834 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]));
  v836 = v835 + 273152 - 969 * ((4432371 * (v835 + 273152)) >> 32);
  v837 = v835 - 969 * ((4432371 * v835) >> 32);
  v838 = 776 * ((v837 & 0x160 ^ 0x160) + (v837 & 0x160) + ((((*(v790 + v837) >> 4) ^ 0xB) + ((2 * (((*(v790 + v837) >> 4) ^ 0xB | 0x7D) ^ (*(v790 + v837) >> 4))) ^ 0x13) - 66) ^ *(v790 + v794)));
  LOBYTE(v828) = v828 ^ ((v832 | v831 ^ 0xBD) >> 4) ^ 0xBD;
  LODWORD(STACK[0x4B0]) = v739;
  LODWORD(v794) = 776 * ((v739 >> 4) | (16 * (v828 & 0xF)));
  v839 = 776 * (*(v790 + (v794 + 273152 - 969 * ((4432371 * (v794 + 273152)) >> 32))) ^ (16 * (*(v790 + (v838 - 969 * ((4432371 * v838) >> 32))) ^ 0xBD)) ^ 0xBD);
  v840 = v839 + 273152 - 969 * ((4432371 * (v839 + 273152)) >> 32);
  v841 = *(v790 + (v839 - 969 * ((4432371 * v839) >> 32))) >> 4;
  v842 = 776 * (((v841 ^ 0xB) + ((2 * ((v841 ^ 0xB | 0x7D) ^ v841)) ^ 0x13) - 66) ^ *(v790 + (v794 - 969 * ((4432371 * v794) >> 32)))) + 273152;
  LODWORD(v794) = 776 * (v828 & 0xF0 | (v739 >> 8) & 0xF);
  v843 = 776 * (*(v790 + (v794 + 273152 - 969 * ((4432371 * (v794 + 273152)) >> 32))) ^ (16 * (*(v790 + (v842 - 969 * ((4432371 * v842) >> 32))) ^ 0xBD)) ^ 0xBD);
  v844 = *(v790 + v836) ^ (16 * (*(v790 + v840) ^ 0xBD)) ^ ((*(v790 + (v843 + 273152 - 969 * ((4432371 * (v843 + 273152)) >> 32))) ^ 0xBD) << 8);
  v845 = *(v790 + (v843 - 969 * ((4432371 * v843) >> 32))) >> 4;
  v846 = 776 * (((v845 ^ 0xB) + ((2 * ((v845 ^ 0xB | 0x7D) ^ v845)) ^ 0x13) - 66) ^ *(v790 + (v794 - 969 * ((4432371 * v794) >> 32)))) + 273152;
  v847 = 776 * ((v832 >> 8) & 0xF0 | ((v827 ^ 0xBD) >> 4));
  LODWORD(v794) = 776 * (*(v790 + (v847 + 273152 - 969 * ((4432371 * (v847 + 273152)) >> 32))) ^ (16 * (*(v790 + (v846 - 969 * ((4432371 * v846) >> 32))) ^ 0xBD)) ^ 0xBD);
  v848 = *(v790 + (v794 + 273152 - 969 * ((4432371 * (v794 + 273152)) >> 32)));
  LODWORD(STACK[0x4B4]) = v823 ^ 0xA368CF8F;
  LODWORD(STACK[0x47C]) = (v823 ^ 0xA368CF8F) - 315247240;
  v849 = v844 ^ ((v848 ^ 0xBD) << ((((v823 ^ 0x8F) + 120) ^ (7 - (v823 ^ 0x8F))) & 0xC));
  LODWORD(STACK[0x488]) = v849;
  v850 = v847 - 969 * ((4432371 * v847) >> 32);
  v851 = (*(v790 + (v794 - 969 * ((4432371 * v794) >> 32))) >> 4) ^ 0xB;
  v852 = (v851 - ((2 * v851) & 0xFB) - 67) ^ *(v790 + v850);
  v853 = 776 * (((2 * v852) & 0xC0) + (v852 ^ 0x160));
  v854 = 776 * ((v832 >> 12) & 0xF0 | (v827 >> 8) & 0xF);
  v855 = 776 * (*(v790 + (v854 + 273152 - 969 * ((4432371 * (v854 + 273152)) >> 32))) ^ (16 * (*(v790 + (v853 - 969 * ((4432371 * v853) >> 32))) ^ 0xBD)) ^ 0xBD);
  LODWORD(STACK[0x460]) = v855;
  v856 = (*(v790 + (v855 - 969 * ((4432371 * v855) >> 32))) >> 4) ^ 0xB;
  v857 = 776 * ((v856 - ((2 * v856) & 0xFB) - 67) ^ *(v790 + (v854 - 969 * ((4432371 * v854) >> 32)))) + 273152;
  v858 = 776 * ((v829 >> 8) & 0xF0 | (v798 >> 12));
  LODWORD(STACK[0x45C]) = v858;
  LODWORD(STACK[0x490]) = (776 * (*(v790 + (v858 + 273152 - 969 * ((4432371 * (v858 + 273152)) >> 32))) ^ (16 * (*(v790 + (v857 - 969 * ((4432371 * v857) >> 32))) ^ 0xBD)) ^ 0xBDu) + 273152) % (((v849 ^ 0xBD) & 0x3C9 ^ 0x3C9) + ((v849 ^ 0xBD) & 0x3C9u));
  v859 = LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x56C]);
  v860 = (((v859 ^ LODWORD(STACK[0x534]) ^ 0xDF7659D7) - 87499568) ^ ((v859 ^ LODWORD(STACK[0x534]) ^ 0x2183FF61) + 71137914) ^ ((v859 ^ LODWORD(STACK[0x534]) ^ 0x17E09CF6) + 845027823)) - (((v859 ^ 0xCFB259DF) - 368255800) ^ ((v859 ^ 0x99CD23A6) - 1133271361) ^ ((v859 ^ 0xF7023F5C) - 759383483));
  v861 = (((v821 ^ LODWORD(STACK[0x534]) ^ 0x267EA4DE) - 645833950) ^ ((v821 ^ LODWORD(STACK[0x534]) ^ 0x556EFA2D) - 1433336365) ^ ((v821 ^ LODWORD(STACK[0x534]) ^ 0x5A725164) - 1517441380)) - (((LODWORD(STACK[0x4F4]) ^ 0x708713CB) - 1126861616) ^ ((LODWORD(STACK[0x4F4]) ^ 0xECCD4220) + 547300645) ^ ((LODWORD(STACK[0x4F4]) ^ 0xCEEDB9E2) + 46128871));
  LODWORD(STACK[0x56C]) = (((LODWORD(STACK[0x528]) ^ 0x61D2A846) - 1641195590) ^ ((LODWORD(STACK[0x528]) ^ 0x422EBB67) - 1110358887) ^ ((LODWORD(STACK[0x528]) ^ 0x82815604) + 2105453052)) - 1972735911 + (((LODWORD(STACK[0x570]) ^ 0xE6DF1523) - 1808310428) ^ ((LODWORD(STACK[0x570]) ^ 0x3C9B2E0F) + 1316185168) ^ ((LODWORD(STACK[0x570]) ^ 0xDA443B2C) - 1465093779));
  LODWORD(STACK[0x570]) = ((v861 - 933781851) ^ ((LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x500])) - LODWORD(STACK[0x500])) ^ (v860 - 1206386459)) - LODWORD(STACK[0x504]) + (v822 & 0x5D0B6B3A) + (v822 & 0x5D0B6B3A ^ 0x5D0B6B3A);
  v862 = STACK[0x590];
  LODWORD(STACK[0x584]) = LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x480]) ^ 0x48687F65;
  return (*(STACK[0x598] + 8 * ((6699 * (v862 == 63)) ^ LODWORD(STACK[0x580]))))();
}