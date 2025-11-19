void sub_10011BB34()
{
  v1 = v0 ^ (LODWORD(STACK[0x4C8]) + 4340) ^ 0x9B5B9149;
  LODWORD(STACK[0x4D8]) = LODWORD(STACK[0x388]) ^ 0xB862DA63;
  LODWORD(STACK[0x4D4]) = LODWORD(STACK[0x3A0]) ^ 0xE687236A;
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x390]) ^ 0x5AB09FE9;
  LODWORD(STACK[0x4CC]) = LODWORD(STACK[0x39C]) ^ 0x4C299BDD;
  v2 = STACK[0x59C];
  v3 = STACK[0x3B4];
  v4 = STACK[0x3B0];
  if (STACK[0x59C])
  {
    v5 = STACK[0x3B0];
  }

  else
  {
    v5 = STACK[0x3B4];
  }

  v6 = STACK[0x3AC];
  v7 = STACK[0x384];
  if (v2)
  {
    v8 = STACK[0x384];
  }

  else
  {
    v8 = STACK[0x3AC];
  }

  if (v2)
  {
    v4 = STACK[0x3AC];
  }

  else
  {
    v3 = STACK[0x384];
  }

  if ((v2 & 2) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  LODWORD(STACK[0x3B4]) = v9;
  if ((v2 & 2) == 0)
  {
    v5 = v8;
  }

  LODWORD(STACK[0x3AC]) = v5;
  if ((v2 & 2) != 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  LODWORD(STACK[0x3B0]) = v10;
  JUMPOUT(0x1001191F0);
}

void sub_10011BBEC()
{
  v0 = (LODWORD(STACK[0x4C8]) - 236);
  v1 = STACK[0x790];
  v2 = STACK[0x730];
  JUMPOUT(0x10011BC04);
}

uint64_t sub_10011BE64@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, unsigned int a3@<W8>)
{
  v8 = v5 < a2;
  *(v4 + v3) = 0;
  if (v8 == (a3 ^ 0x3FAuLL) + v3 > a1)
  {
    v8 = a2 + v3 + 1 < v5;
  }

  return (*(v7 + 8 * ((v8 * v6) ^ a3)))();
}

uint64_t sub_10011BEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  STACK[0x730] = v11 + 2080;
  STACK[0x7C0] = v12;
  STACK[0x7C8] = &STACK[0x25B844A564FE8A23];
  STACK[0x7B0] = &STACK[0x7F0];
  STACK[0x7D0] = v12 + 0x7D6AAFE17312C34DLL;
  return (*(v10 + 8 * (v9 ^ (62 * (&a9 != -2048)))))();
}

uint64_t sub_10011BF30()
{
  v3 = (v0 - 9614) | 0x220;
  v4 = (v1 ^ 0x7BF7BF67) - 721453412 + ((2 * v1) & 0xF7EF7ECE);
  v5 = ((v4 & 0xAF08C1FD) << (v3 - 41)) & (v4 ^ 0x8E26B1FD) ^ v4 & 0xAF08C1FD;
  v6 = ((2 * (v4 ^ 0xC6363357)) ^ 0xD27DE554) & (v4 ^ 0xC6363357) ^ (2 * (v4 ^ 0xC6363357)) & 0x693EF2AA;
  v7 = v6 ^ 0x290212AA;
  v8 = (v6 ^ 0x41241002) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xA4FBCAA8) & v7 ^ (4 * v7) & 0x693EF2A8;
  v10 = (v9 ^ 0x203AC2A2) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x49043002)) ^ 0x93EF2AA0) & (v9 ^ 0x49043002) ^ (16 * (v9 ^ 0x49043002)) & 0x693EF2A0;
  v12 = v10 ^ 0x693EF2AA ^ (v11 ^ 0x12E220A) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x693E0000 ^ v12 ^ ((v12 << 16) ^ 0x72AA0000) & (((v11 ^ 0x6810D00A) << 8) & 0x693E0000 ^ 0x410C0000 ^ (((v11 ^ 0x6810D00A) << 8) ^ 0x3EF20000) & (v11 ^ 0x6810D00A))));
  v14 = ((((v3 - 2083717739) & 0x7C331BEE) - 4536) ^ 0xD3F769AD) + (((v13 ^ 0x4D7BFE00) - 598588106) ^ ((v13 ^ 0x3E20DBA3) - 1358339945) ^ ((v13 ^ 0xCE7A010A) + 1599322688)) < 0xFFFFFFF8;
  return (*(v2 + 8 * ((v14 | (4 * v14)) ^ v3)))();
}

uint64_t sub_10011C148@<X0>(int a1@<W1>, unsigned __int16 a2@<W8>)
{
  STACK[0x370] = v4;
  v6 = -1802333311 * a2;
  v7 = (-127 * a2);
  STACK[0x7B8] = 0;
  v8 = *(v5 + 8 * (a1 ^ 0x1AE2u)) - 12;
  STACK[0x558] = v8;
  v9 = *(v8 + (v7 ^ 0x85));
  STACK[0x218] = BYTE1(v6);
  v10 = *(v5 + 8 * (a1 ^ 0x1A42u));
  LODWORD(STACK[0x570]) = v2;
  LOBYTE(v8) = *(v10 - 8 + (BYTE1(v6) ^ 0xADLL)) - 29;
  STACK[0x228] = BYTE2(v6);
  v11 = HIBYTE(v6);
  v12 = *(v5 + 8 * (a1 ^ 0x1A1Au)) - 12;
  STACK[0x400] = v12;
  LODWORD(v12) = *(v12 + (BYTE2(v6) ^ 0xE7));
  STACK[0x238] = v11;
  STACK[0x408] = v10 - 8;
  LODWORD(v11) = *(v10 - 8 + (v11 ^ 0x6D)) - 29;
  v13 = LOBYTE(STACK[0x7FC]);
  LODWORD(STACK[0x244]) = v6;
  STACK[0x220] = v7;
  v14 = v9 ^ ((v6 ^ 0xDE) + 65) ^ v7;
  v15 = ((v8 << 8) ^ 0xD011B38D) & (v14 ^ 0xD41BFF8C) ^ (v14 & 0x72 | 0x40A1000);
  v16 = v13 ^ 0x77;
  LODWORD(v8) = (((v12 ^ (v12 >> 2) ^ (v12 >> 1)) << 16) ^ 0x6E6998E8) & (v15 ^ 0x2AE4E326);
  LODWORD(v12) = ~v11 << 24;
  v17 = LOBYTE(STACK[0x7F8]) ^ 0xD7;
  v18 = *(v5 + 8 * (a1 ^ 0x187Bu));
  STACK[0x278] = v18;
  v19 = (v15 & 0x90136717 ^ 0x64F08B63 ^ v8) & (v12 ^ 0x12FFFFFF) ^ v12 & 0x65000000;
  v20 = LOBYTE(STACK[0x7F1]) ^ 8;
  v21 = *(v5 + 8 * (a1 - 6731));
  LODWORD(v17) = ((*(v18 + v17) >> 5) | (8 * *(v18 + v17))) ^ 0x9D;
  LODWORD(STACK[0x710]) = a1;
  v22 = v21 - 8;
  v23 = (*(v21 - 8 + v20) >> 3) | (32 * *(v21 - 8 + v20));
  v24 = *(v5 + 8 * (a1 - 6977)) - 12;
  LODWORD(v20) = ((LOBYTE(STACK[0x7F4]) ^ 0x2B) + 61) ^ *(v24 + (LOBYTE(STACK[0x7F4]) ^ 0xA9));
  LODWORD(v17) = (v20 ^ 0xFFFFFE7F) & ((v17 << 24) ^ 0xBCC932CF);
  v25 = v20 & 0x30;
  v26 = *(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x1AB4u));
  v27 = STACK[0x7B0];
  v28 = *(STACK[0x7B0] + 11);
  v29 = *(v26 + (LOBYTE(STACK[0x7F0]) ^ 0xFALL)) << 16;
  LODWORD(v17) = ((v17 | v25) ^ 0x931D7C67) & (v29 ^ 0xFF83FFFF);
  v30 = *(v24 + (v28 ^ 0xA9));
  v31 = *(STACK[0x7B0] + 5) ^ 0xDELL;
  v32 = *(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x1F94u)) - 4;
  STACK[0x258] = v32;
  v33 = *(v5 + 8 * (LODWORD(STACK[0x710]) - 7058)) - 12;
  v34 = ((*(v32 + v31) << 24) ^ 0x698DA2CD) & (((v28 ^ 0x2B) + 61) ^ v30 ^ 0xFFEFA724) | (((v28 ^ 0x2B) + 61) ^ v30) & 0x32;
  LOBYTE(v31) = *(v33 + (v27[7] ^ 0xD8)) - 7;
  v35 = v27[13] ^ 0xFALL;
  v36 = (v31 & 0x38 ^ 0xFFFFFF1F) & ((v23 << 8) | 0xC72C0038) | v31 & 0xC7;
  STACK[0x230] = v26;
  v37 = *(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x1B89u)) - 12;
  v38 = ((*(v26 + v35) << 16) ^ 0xEDA50284) & (v34 ^ 0x8472AD19) | v34 & 0x1200007B;
  v414 = *(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x1F81u)) - 4;
  LODWORD(v16) = ((((*(v37 + (v27[15] ^ 0x59)) ^ v27[15]) << 8) ^ 0x288F7A21) & ((*(v414 + v16) << 16) ^ 0x7BDEFF63) & 0xFF8FFFFF | (((*(v414 + v16) >> 4) & 7) << 20)) ^ 0x4851E8C0;
  v39 = v27[14] ^ 0xD8;
  STACK[0x208] = v33;
  LODWORD(v16) = v16 & ((*(v33 + v39) - 7) ^ 0x7FFFFF4E) | (*(v33 + v39) - 7) & 0x1E;
  v40 = v27[6] ^ 0x57;
  v41 = v27[2] ^ 8;
  STACK[0x210] = v22;
  LOBYTE(v28) = *(*(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x18D5u)) - 12 + v40) ^ 0x5B;
  LODWORD(v40) = ((*(v22 + v41) >> 3) | (32 * *(v22 + v41))) << 8;
  LOBYTE(v41) = v28 ^ (16 * v28) ^ (4 * v28);
  v42 = v27[3] ^ 0xF5;
  v43 = *(v5 + 8 * (LODWORD(STACK[0x710]) - 5953)) - 8;
  STACK[0x200] = v43;
  v44 = ((v41 << 16) ^ 0x65D5EB4B) & (v36 ^ 0x38D318C4) ^ v36 & 0x822014B4;
  v45 = v19 ^ v44 & 0x451A36B8 ^ (v44 ^ 0x18810004) & ((((*(v43 + v42) + 42) ^ 3) << 24) ^ 0x1E5C947) ^ 0xA77F6315;
  v413 = *(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x1FBCu)) - 8;
  LODWORD(v16) = v19 ^ v16 & 0x6A4D65D6 ^ (((*(v413 + (v27[9] ^ 0x55)) ^ 0x4F ^ (*(v413 + (v27[9] ^ 0x55)) >> 3) ^ (((*(v413 + (v27[9] ^ 0x55)) ^ 0x4Fu) >> 6) | 0x28) ^ 0xFFFFFFF7) << 24) ^ 0x15B29A29) & (v16 ^ 0x9F41701C) ^ 0xA6F01B6F;
  v46 = v27[10];
  STACK[0x248] = v37;
  LODWORD(v46) = (*(v37 + (v46 ^ 0x59)) ^ v46) << 8;
  LODWORD(v37) = v19 ^ 0x255726F2;
  LODWORD(STACK[0x708]) = v19 ^ 0x255726F2;
  v47 = v46 & 0xDC00 ^ v19 ^ (v46 ^ 0xFFFF87FF) & ((v29 & 0x2B0000 | v17) ^ 0x70226DDC);
  LODWORD(v46) = v40 & 0x9B00 ^ (v40 ^ 0xFFFF04FF) & (v38 ^ 0x90A5662E) ^ v37 ^ v47;
  v48 = v46 ^ v45;
  LODWORD(v17) = v46 ^ v45 ^ v45 ^ v16;
  v49 = v47 ^ 0x36B2AC4A ^ v17 ^ 0x7D0E41D8;
  LODWORD(v46) = v49 ^ v16;
  v50 = *(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x19BBu)) - 8;
  v51 = *(v50 + 4 * (((v49 ^ v16) >> 24) ^ 0xDB)) ^ 0x4B2B2678;
  v52 = *(v5 + 8 * (LODWORD(STACK[0x710]) - 6459)) - 8;
  LODWORD(v16) = *(v52 + 4 * (((v17 ^ 0x41D8) >> 8) ^ 0x6Bu)) ^ 0x4A99C006;
  v53 = *(v5 + 8 * (LODWORD(STACK[0x710]) ^ 0x18ADu)) - 8;
  LODWORD(v31) = *(v53 + 4 * (v48 ^ 0x1Au ^ v49));
  LODWORD(v42) = v48 ^ 0xC7362D1A ^ v49;
  v54 = *(v53 + 4 * BYTE3(v42));
  v55 = v48 ^ 0x784DEE6F;
  v56 = *(v53 + 4 * (BYTE1(v48) ^ 0x4Bu));
  v57 = BYTE2(v17) ^ 9;
  v58 = *(v52 + 4 * (v17 ^ 0xF2u));
  v59 = *(v52 + 4 * (BYTE3(v17) ^ 0x90));
  LODWORD(v17) = *(v50 + 4 * (BYTE2(v46) ^ 0x56u)) ^ __ROR4__(v54 ^ (v54 >> 6) ^ (v54 >> 4) ^ 0x9B51C29C, 24) ^ __ROR4__(v56 ^ (v56 >> 6) ^ (v56 >> 4) ^ 0x3C908ED1, 8) ^ __ROR4__((((v58 ^ 0x4DB154CC) - (v58 ^ 0x9377498F)) ^ 0xFFFFFFFE) + (v58 ^ 0x4DB154CC), 16);
  v60 = v59 ^ 0xE367FA74;
  v61 = *(v53 + 4 * v55);
  v62 = *(v50 + 4 * (BYTE1(v46) ^ 0xAFu)) ^ 0xB03E660;
  v63 = *(v50 + 4 * v57) ^ __ROR4__(*(v52 + 4 * HIBYTE(v55)) ^ 0xD47F35B9, 24);
  v64 = *(v5 + 8 * (LODWORD(STACK[0x710]) - 6202)) - 8;
  LODWORD(STACK[0x700]) = v42;
  v65 = v46 ^ 0x89;
  LODWORD(v46) = (*(v64 + 4 * BYTE2(v55)) + 1493488804) ^ __ROR4__(v51, 24) ^ __ROR4__(v16, 8) ^ __ROR4__(v31 ^ (v31 >> 6) ^ (v31 >> 4) ^ 0x4C23D9BF, 16) ^ 0x7B2F6B93;
  v66 = v63 ^ __ROR4__((*(v64 + 4 * BYTE1(v42)) + 1493488804) ^ 0xF3D59707, 8) ^ __ROR4__(*(v52 + 4 * v65) ^ 0x65C23249, 16);
  v67 = (*(v64 + 4 * (BYTE2(v42) ^ 0x15u)) + 1493488804) ^ __ROR4__(v60, 24) ^ __ROR4__(v62, 8) ^ __ROR4__(v61 ^ (v61 >> 6) ^ (v61 >> 4) ^ 0x144D06A2, 16) ^ 0x17FA493A;
  LODWORD(v16) = *(v53 + 4 * BYTE3(v46));
  LODWORD(v31) = v16 ^ (v16 >> 6) ^ (v16 >> 4) ^ 0x285D13C1;
  BYTE2(v16) = BYTE2(v17) ^ 0x65;
  v68 = *(v52 + 4 * (v17 ^ 0xE3u)) ^ 0x43D0A8A5;
  v69 = (*(v64 + 4 * ((v17 ^ 0x75657528) >> 24)) + 1493488804) ^ 0xB19C898B;
  v70 = BYTE2(v66) ^ 8;
  v71 = (*(v64 + 4 * ((v66 ^ 0xCE5F) >> 8)) + 1493488804) ^ 0xDC64A029;
  v72 = *(v50 + 4 * v67) ^ 0x660D6C71;
  v73 = v5;
  v74 = *(v52 + 4 * HIBYTE(v67)) ^ 0xC9EB99BF;
  v75 = *(v50 + 4 * BYTE1(v46)) ^ 0x42FD0C51;
  v76 = *(v53 + 4 * (v66 ^ 0x5Fu));
  v77 = *(v53 + 4 * (HIBYTE(v66) ^ 0xC2));
  v78 = *(v50 + 4 * (BYTE1(v17) ^ 0x2Bu)) ^ 0x846BE019;
  LODWORD(v17) = *(v53 + 4 * v46);
  v79 = v17 ^ ((((v17 ^ 0x2A74D46C) >> 2) + (v17 ^ 0x2A74D46C) - 2 * (((v17 ^ 0x2A74D46C) >> 2) & (v17 ^ 0x2A74D46C))) >> 4) ^ 0xDBE3F86C;
  LODWORD(v17) = *(v53 + 4 * v70) ^ (*(v53 + 4 * v70) >> 6) ^ (*(v53 + 4 * v70) >> 4) ^ __ROR4__(*(v50 + 4 * BYTE1(v67)) ^ 0x6B163ED, 8) ^ __ROR4__(v31, 24) ^ __ROR4__(v68, 16) ^ 0x13AAB47D;
  v80 = *(v53 + 4 * BYTE2(v67)) ^ (*(v53 + 4 * BYTE2(v67)) >> 6) ^ (*(v53 + 4 * BYTE2(v67)) >> 4) ^ __ROR4__(v78, 8) ^ __ROR4__(v77 ^ (v77 >> 6) ^ (v77 >> 4) ^ 0x984C7075, 24) ^ __ROR4__(v79, 16);
  LODWORD(v46) = (*(v64 + 4 * BYTE2(v46)) + 1493488804) ^ __ROR4__(v69, 24) ^ __ROR4__(v71, 8) ^ __ROR4__(v72, 16) ^ 0x84B359B4;
  LODWORD(v16) = (*(v64 + 4 * BYTE2(v16)) + 1493488804) ^ __ROR4__(v74, 24) ^ __ROR4__(v75, 8) ^ __ROR4__(v76 ^ (v76 >> 6) ^ (v76 >> 4) ^ 0xE5DB2382, 16) ^ 0xD94078C9;
  LODWORD(v31) = *(v53 + 4 * BYTE3(v46));
  v81 = v31 ^ (v31 >> 6) ^ (v31 >> 4) ^ 0x7973AAD8;
  v82 = *(v53 + 4 * ((v80 ^ 0x44FC) >> 8));
  LODWORD(v31) = *(v50 + 4 * (BYTE2(v80) ^ 0x6Bu)) ^ __ROR4__(*(v50 + 4 * BYTE3(v17)) ^ 0x5FF45544, 24) ^ __ROR4__((*(v64 + 4 * BYTE1(v16)) + 1493488804) ^ 0xCD2E991, 8) ^ __ROR4__(*(v53 + 4 * v46) ^ (*(v53 + 4 * v46) >> 6) ^ (*(v53 + 4 * v46) >> 4) ^ 0x3116F466, 16);
  LODWORD(v37) = *(v53 + 4 * v16);
  v83 = *(v53 + 4 * BYTE2(v17)) ^ (*(v53 + 4 * BYTE2(v17)) >> 6) ^ (*(v53 + 4 * BYTE2(v17)) >> 4) ^ __ROR4__(v81, 24) ^ __ROR4__(v82 ^ (v82 >> 6) ^ (v82 >> 4) ^ 0xC82AAB5, 8) ^ __ROR4__(v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ 0x24133DEA, 16);
  v84 = *(v53 + 4 * BYTE2(v46)) ^ (*(v53 + 4 * BYTE2(v46)) >> 6) ^ (*(v53 + 4 * BYTE2(v46)) >> 4) ^ __ROR4__(*(v52 + 4 * BYTE3(v16)) ^ 0x9D5420D0, 24) ^ __ROR4__((*(v64 + 4 * BYTE1(v17)) + 1493488804) ^ 0x49B7918E, 8) ^ __ROR4__(*(v50 + 4 * (v80 ^ 0xFCu)) ^ 0x24DDEA59, 16);
  LODWORD(v46) = *(v52 + 4 * BYTE2(v16)) ^ __ROR4__(*(v52 + 4 * (HIBYTE(v80) ^ 0x88)) ^ 0x53D21A53, 24) ^ __ROR4__((*(v64 + 4 * BYTE1(v46)) + 1493488804) ^ 0x1534CE0E, 8) ^ __ROR4__(*(v50 + 4 * v17) ^ 0xDCD11C4B, 16);
  LODWORD(v16) = v31 ^ 0x61FC6022;
  LODWORD(v17) = (*(v64 + 4 * (BYTE3(v31) ^ 0x74)) + 1493488804) ^ 0x66A502A1;
  LODWORD(v37) = *(v53 + 4 * (BYTE1(v84) ^ 0x52u));
  LODWORD(v31) = v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ 0x7C4E8DDF;
  v85 = (*(v64 + 4 * ((v83 ^ 0x7ABA9B00u) >> 16)) + 1493488804) ^ __ROR4__(*(v50 + 4 * (HIBYTE(v84) ^ 0xFB)) ^ 0x91CAF671, 24) ^ __ROR4__((*(v64 + 4 * BYTE1(v16)) + 1493488804) ^ 0x745755F0, 8) ^ __ROR4__(*(v50 + 4 * (v46 ^ 0xCCu)) ^ 0xA8B5546A, 16);
  LODWORD(v37) = *(v52 + 4 * ((v46 ^ 0x4E3F50CC) >> 24)) ^ 0x1A89A45B;
  LODWORD(v17) = *(v52 + 4 * (BYTE2(v46) ^ 0x3Fu)) ^ __ROR4__(v17, 24) ^ __ROR4__((*(v64 + 4 * v83) + 1493488804) ^ 0xBD9D73A9, 16) ^ __ROR4__(v31, 8) ^ 0x1942D7C;
  LODWORD(v46) = __ROR4__(__ROR4__(*(v53 + 4 * BYTE2(v16)) ^ (*(v53 + 4 * BYTE2(v16)) >> 6) ^ (*(v53 + 4 * BYTE2(v16)) >> 4) ^ __ROR4__(*(v52 + 4 * ((v83 ^ 0x7ABA9B00u) >> 24)) ^ 0xF8A5507E, 24) ^ __ROR4__(*(v50 + 4 * ((v46 ^ 0x50CC) >> 8)) ^ 0xA19F49AA, 8) ^ __ROR4__(*(v52 + 4 * (v84 ^ 0xEu)) ^ 0x98F7B92D, 16) ^ 0xE217204A, 10) ^ 0xEE9797F4, 22) ^ 0x8B8032AA;
  v86 = (*(v64 + 4 * ((v84 ^ 0xA5F9740E) >> 16)) + 1493488804) ^ __ROR4__(v37, 24) ^ __ROR4__(*(v52 + 4 * (BYTE1(v83) ^ 0x55u)) ^ 0x4A0C28C8, 8) ^ __ROR4__(*(v52 + 4 * v16) ^ 0x32ED903B, 16) ^ 0x1C3642CF;
  BYTE2(v16) = BYTE2(v85) ^ 0x6A;
  v87 = (*(v64 + 4 * ((v85 ^ 0x6A91) >> 8)) + 1493488804) ^ 0xE1396183;
  LODWORD(v37) = *(v53 + 4 * (v85 ^ 0x91u));
  v88 = *(v53 + 4 * (HIBYTE(v85) ^ 0xC));
  v89 = (*(v64 + 4 * BYTE2(v17)) + 1493488804) ^ __ROR4__((*(v64 + 4 * BYTE3(v46)) + 1493488804) ^ 0x3C74F4AC, 24) ^ __ROR4__((*(v64 + 4 * BYTE1(v86)) + 1493488804) ^ 0xF7A5DA77, 8) ^ __ROR4__(v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ 0x920D1C82, 16);
  LODWORD(v37) = v88 ^ (v88 >> 6) ^ (v88 >> 4) ^ 0x4837A631;
  v90 = *(v50 + 4 * BYTE1(v17)) ^ 0xAEAFC5EF;
  v91 = *(v53 + 4 * HIBYTE(v86));
  v92 = *(v52 + 4 * v17) ^ 0x955E4647;
  LODWORD(v17) = *(v52 + 4 * BYTE2(v86)) ^ __ROR4__((*(v64 + 4 * BYTE3(v17)) + 1493488804) ^ 0x5B4372D8, 24) ^ __ROR4__(v87, 8) ^ __ROR4__(*(v53 + 4 * v46) ^ (*(v53 + 4 * v46) >> 6) ^ (*(v53 + 4 * v46) >> 4) ^ 0xA6E3AB14, 16) ^ 0x9B57A50F;
  v93 = *(v50 + 4 * BYTE2(v16)) ^ __ROR4__(v91 ^ (v91 >> 6) ^ (v91 >> 4) ^ 0xCD351354, 24) ^ __ROR4__(v92, 16) ^ __ROR4__(*(v53 + 4 * BYTE1(v46)) ^ (*(v53 + 4 * BYTE1(v46)) >> 6) ^ (*(v53 + 4 * BYTE1(v46)) >> 4) ^ 0xFAE6ED1B, 8) ^ 0x3A646BAE;
  v94 = *(v52 + 4 * BYTE2(v46)) ^ __ROR4__(v90, 8) ^ __ROR4__(v37, 24) ^ __ROR4__(*(v50 + 4 * v86) ^ 0x85CE86E8, 16) ^ 0xB0AF1973;
  LODWORD(v37) = *(v53 + 4 * (v89 ^ 0xF3u));
  LODWORD(v31) = *(v50 + 4 * (HIBYTE(v89) ^ 0x1B)) ^ 0xAFBE4DD3;
  v95 = *(v52 + 4 * (BYTE2(v89) ^ 0x37u)) ^ __ROR4__((*(v64 + 4 * HIBYTE(v94)) + 1493488804) ^ 0x27DFB04D, 24) ^ __ROR4__(*(v50 + 4 * BYTE1(v17)) ^ 0x3816AC07, 8) ^ __ROR4__(*(v50 + 4 * v93) ^ 0x67C6ECC7, 16);
  v96 = *(v53 + 4 * (BYTE1(v89) ^ 0x36u));
  LODWORD(v46) = *(v50 + 4 * BYTE2(v93)) ^ __ROR4__((*(v64 + 4 * BYTE3(v17)) + 1493488804) ^ 0x51376B93, 24) ^ __ROR4__(*(v53 + 4 * BYTE1(v94)) ^ (*(v53 + 4 * BYTE1(v94)) >> 6) ^ (*(v53 + 4 * BYTE1(v94)) >> 4) ^ 0x19618C3B, 8) ^ __ROR4__(v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ 0xC0A74755, 16) ^ 0x5A2CA721;
  v97 = *(v52 + 4 * BYTE2(v94)) ^ __ROR4__(*(v50 + 4 * HIBYTE(v93)) ^ 0x3780C754, 24) ^ __ROR4__(v96 ^ (v96 >> 6) ^ (v96 >> 4) ^ 0x94C00C47, 8) ^ __ROR4__(*(v53 + 4 * v17) ^ (*(v53 + 4 * v17) >> 6) ^ (*(v53 + 4 * v17) >> 4) ^ 0x44263FC6, 16);
  LODWORD(v17) = *(v52 + 4 * BYTE2(v17)) ^ __ROR4__(v31, 24) ^ __ROR4__(*(v52 + 4 * BYTE1(v93)) ^ 0x9BD40373, 8) ^ __ROR4__(*(v52 + 4 * v94) ^ 0x72715223, 16) ^ 0x3C0D2AA5;
  LODWORD(v37) = *(v53 + 4 * BYTE3(v46));
  LODWORD(v31) = v97 ^ 0x136522C2;
  v98 = *(v53 + 4 * (BYTE2(v97) ^ 0x43u));
  v99 = v98 ^ (v98 >> 6) ^ (v98 >> 4) ^ __ROR4__(*(v50 + 4 * (BYTE1(v95) ^ 0xAu)) ^ 0xDBF28C4F, 8) ^ __ROR4__(v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ 0xF64B5681, 24) ^ __ROR4__(*(v53 + 4 * v17) ^ (*(v53 + 4 * v17) >> 6) ^ (*(v53 + 4 * v17) >> 4) ^ 0x4B39A451, 16);
  LODWORD(v37) = *(v53 + 4 * ((BYTE1(v31) | 0x26) ^ (v31 >> 8) & 0x26));
  LODWORD(v16) = *(v53 + 4 * (v95 ^ 0x56u));
  v100 = v16 ^ (v16 >> 6) ^ (v16 >> 4);
  LODWORD(v16) = *(v50 + 4 * BYTE2(v17)) ^ __ROR4__((*(v64 + 4 * ((v95 ^ 0xF7D08F56) >> 24)) + 1493488804) ^ 0x3C155A5C, 24) ^ __ROR4__((*(v64 + 4 * BYTE1(v46)) + 1493488804) ^ 0x1FD0F0CD, 8) ^ __ROR4__(*(v53 + 4 * v31) ^ (*(v53 + 4 * v31) >> 6) ^ (*(v53 + 4 * v31) >> 4) ^ 0xB1208F0B, 16);
  LODWORD(v37) = *(v52 + 4 * BYTE2(v46)) ^ __ROR4__(*(v50 + 4 * BYTE3(v17)) ^ 0xC69F1E83, 24) ^ __ROR4__(v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ 0xFE9E81A, 8) ^ __ROR4__(v100 ^ 0xB314651D, 16);
  LODWORD(v31) = *(v52 + 4 * ((v95 ^ 0xF7D08F56) >> 16)) ^ __ROR4__((*(v64 + 4 * BYTE3(v31)) + 1493488804) ^ 0x892AA541, 24) ^ __ROR4__((*(v64 + 4 * BYTE1(v17)) + 1493488804) ^ 0xE905686C, 8) ^ __ROR4__(*(v52 + 4 * v46) ^ 0xDF3B63F2, 16) ^ 0x9BA2574;
  v101 = *(v53 + 4 * ((v16 ^ 0x7EC4) >> 8));
  v102 = v37 ^ 0xD4C1C6A1;
  LODWORD(v46) = *(v52 + 4 * BYTE2(v31)) ^ __ROR4__((*(v64 + 4 * ((v99 ^ 0x461D698Fu) >> 24)) + 1493488804) ^ 0x894F44B9, 24) ^ __ROR4__(*(v50 + 4 * (v37 ^ 0xA1u)) ^ 0x1754002F, 16) ^ __ROR4__(v101 ^ (v101 >> 6) ^ (v101 >> 4) ^ 0x50F6FCB9, 8);
  LODWORD(v37) = *(v53 + 4 * ((v37 ^ 0xD4C1C6A1) >> 24));
  v103 = *(v53 + 4 * (BYTE1(v99) ^ 0x4Fu));
  v104 = *(v52 + 4 * BYTE2(v102)) ^ __ROR4__((*(v64 + 4 * (BYTE3(v16) ^ 0x4B)) + 1493488804) ^ 0x82C0237C, 24) ^ __ROR4__(*(v52 + 4 * v31) ^ 0x209A8AD6, 16) ^ __ROR4__(v103 ^ (v103 >> 6) ^ (v103 >> 4) ^ 0xB59E6DBA, 8);
  LODWORD(v17) = (*(v64 + 4 * ((v99 ^ 0x461D698Fu) >> 16)) + 1493488804) ^ __ROR4__(*(v50 + 4 * BYTE1(v31)) ^ 0xC47E9F71, 8) ^ __ROR4__(v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ 0x19567C41, 24) ^ __ROR4__(*(v52 + 4 * (v16 ^ 0xC4u)) ^ 0xED1C4671, 16);
  v105 = *(v50 + 4 * ((v16 ^ 0x5E6D7EC4) >> 16)) ^ __ROR4__((*(v64 + 4 * BYTE3(v31)) + 1493488804) ^ 0xE6B05A80, 24) ^ __ROR4__(*(v50 + 4 * (v99 ^ 0xD1u)) ^ 0x85777771, 16) ^ __ROR4__(*(v53 + 4 * BYTE1(v102)) ^ (*(v53 + 4 * BYTE1(v102)) >> 6) ^ (*(v53 + 4 * BYTE1(v102)) >> 4) ^ 0xD7867884, 8);
  LODWORD(v37) = *(v53 + 4 * (BYTE2(v105) ^ 0xA6u));
  LODWORD(v31) = v17 ^ 0x31F154CA;
  LODWORD(v17) = v37 ^ (v37 >> 6) ^ (v37 >> 4) ^ __ROR4__(*(v50 + 4 * (BYTE3(v46) ^ 0x47)) ^ 0x6C4873A1, 24) ^ __ROR4__(*(v52 + 4 * ((v104 ^ 0xE1BD) >> 8)) ^ 0xBACE934A, 8) ^ __ROR4__(*(v50 + 4 * (v17 ^ 0xCAu)) ^ 0x594D6CB7, 16);
  LODWORD(v41) = v105 ^ 0xA033BEF;
  v106 = *(v53 + 4 * ((v105 ^ 0x3BEF) >> 8));
  LODWORD(v46) = v46 ^ 0x19685797;
  LODWORD(v16) = *(v53 + 4 * BYTE2(v46)) ^ (*(v53 + 4 * BYTE2(v46)) >> 6) ^ (*(v53 + 4 * BYTE2(v46)) >> 4) ^ __ROR4__(*(v50 + 4 * BYTE3(v31)) ^ 0xDE62E618, 24) ^ __ROR4__(*(v50 + 4 * (v104 ^ 0xBDu)) ^ 0x75FEBB25, 16) ^ __ROR4__(v106 ^ (v106 >> 6) ^ (v106 >> 4) ^ 0x7D69266F, 8);
  v107 = *(v53 + 4 * BYTE2(v31)) ^ (*(v53 + 4 * BYTE2(v31)) >> 6) ^ (*(v53 + 4 * BYTE2(v31)) >> 4);
  STACK[0x298] = v50;
  v108 = v107 ^ __ROR4__(*(v50 + 4 * (HIBYTE(v104) ^ 0x91)) ^ 0xEA2E8C2B, 24) ^ __ROR4__(*(v52 + 4 * BYTE1(v46)) ^ 0x897DABB7, 8) ^ __ROR4__((*(v64 + 4 * v41) + 1493488804) ^ 0x520CE166, 16);
  STACK[0x2A0] = v52;
  LODWORD(v37) = *(v52 + 4 * BYTE3(v41));
  STACK[0x290] = v53;
  LODWORD(v37) = *(v53 + 4 * ((v104 ^ 0x1408E1BD) >> 16)) ^ __ROR4__(v37, 24) ^ (*(v53 + 4 * ((v104 ^ 0x1408E1BD) >> 16)) >> 4) ^ (*(v53 + 4 * ((v104 ^ 0x1408E1BD) >> 16)) >> 6);
  v109 = (*(v64 + 4 * BYTE1(v31)) + 1493488804) ^ 0xD0A14962;
  STACK[0x288] = v64;
  LODWORD(v37) = v37 ^ __ROR4__(v109, 8);
  v110 = __ROR4__((*(v64 + 4 * v46) + 1493488804) ^ 0x9B16E5FA, 16);
  BYTE1(v31) = BYTE1(v37) ^ BYTE1(v110);
  v111 = *(v73 + 8 * (LODWORD(STACK[0x710]) - 7081)) - 4;
  v112 = *(v111 + 2 * (v16 ^ 0x4Cu));
  LODWORD(v41) = *(v111 + 2 * (v108 ^ 0x50u)) ^ ((v108 ^ 0xE0 ^ -(v108 ^ 0xE0) ^ (61409 - (v108 ^ 0xEF01))) - 4127);
  LODWORD(v64) = *(v111 + 2 * ((v37 ^ v110) ^ 0x6Du));
  v113 = ((v37 ^ v110 ^ 0x2B ^ v64) << 24) ^ 0x9452F9E4;
  v114 = *(v73 + 8 * (LODWORD(STACK[0x710]) ^ 0x1B69u));
  v115 = ((*(v111 + 2 * (BYTE1(v108) ^ 0x4Bu)) ^ BYTE1(v108)) | ((BYTE3(v17) ^ 0xD62D ^ *(v114 + 2 * (BYTE3(v17) ^ 0xE5))) << 16)) ^ ((((v37 ^ v110) >> 16) ^ *(v114 + 2 * (((v37 ^ v110) >> 16) ^ 0xAEu))) << 8);
  v116 = *(v73 + 8 * (LODWORD(STACK[0x710]) - 6639)) - 8;
  v117 = *(v116 + 2 * (v17 ^ 0x5Au)) - 14208;
  v118 = *(v73 + 8 * (LODWORD(STACK[0x710]) ^ 0x1B8Bu)) - 8;
  v119 = ((*(v111 + 2 * (BYTE2(v108) ^ 0x50u)) ^ BYTE2(v108)) << 8) ^ (((*(v118 + 2 * (((v37 ^ v110) >> 24) ^ 0x9A)) + 12637) ^ 0xDCB9) << 16);
  LODWORD(v37) = (*(v118 + 2 * (BYTE3(v16) ^ 0x69)) + 12637) ^ 0x862E;
  STACK[0x280] = v111;
  v120 = ((*(v111 + 2 * (BYTE2(v17) ^ 0xF4u)) ^ BYTE2(v17)) << 8) ^ (v37 << 16);
  LODWORD(v37) = ((HIBYTE(v108) ^ 0x7539 ^ *(v114 + 2 * (HIBYTE(v108) ^ 0x25))) << 16) ^ ((*(v114 + 2 * (BYTE2(v16) ^ 6u)) ^ BYTE2(v16)) << 8);
  STACK[0x250] = v118;
  LOWORD(v31) = *(v118 + 2 * (BYTE1(v31) ^ 0x80u)) + 12637;
  STACK[0x270] = v114;
  LOWORD(v17) = *(v114 + 2 * (BYTE1(v17) ^ 0x1Bu)) ^ BYTE1(v17);
  v121 = v115 ^ ((((v16 ^ 0x12 ^ v112) << 24) ^ 0x72451D65) & ((v112 >> 8) ^ 0xFFC5FFEE) | (v112 >> 8) & 0x9A);
  STACK[0x268] = v116;
  LODWORD(v16) = v119 ^ (*(v116 + 2 * (BYTE1(v16) ^ 0xD4u)) - 14208) ^ ((((v117 ^ 0xE4) << 24) ^ 0xFAEFA362) & (BYTE1(v117) ^ 0xFFEFF7D1) | BYTE1(v117) & 0x9D);
  LODWORD(v111) = v120 ^ v31 ^ v121 ^ 0x890904FA ^ ((((v41 ^ 0x4B) << 24) ^ 0x37FF1C05) & (BYTE1(v41) ^ 0xFFFFFE79) | BYTE1(v41) & 0xFA) ^ v16 ^ 0x6DED5208;
  LODWORD(v37) = v37 ^ v17 ^ (v113 & ((v64 >> 8) ^ 0xFF76FD65) | (v64 >> 8) & 0x1B) ^ 0x4AA9B59A ^ v111;
  LODWORD(v17) = v16 ^ 0x76AB7B78 ^ v37;
  LODWORD(v37) = v121 ^ 0x4B919AD2 ^ v37;
  v122 = v17 ^ v121 ^ 0x890904FA;
  HIDWORD(v123) = v37;
  LODWORD(v123) = v37;
  LODWORD(v64) = (v123 >> 13) ^ (v122 << 19) ^ 0x24840EF3 ^ (((((v122 ^ 0xA817A7D2) >> (HIWORD(LODWORD(STACK[0x700])) & 0xD)) - ((2 * ((v122 ^ 0xA817A7D2) >> (HIWORD(LODWORD(STACK[0x700])) & 0xD))) & 0xA0D59064) + 1349175346) ^ 0x506AC832) >> ((HIWORD(LODWORD(STACK[0x700])) & 0xD ^ 0xC) & 8) >> ((HIWORD(LODWORD(STACK[0x700])) & 0xD ^ 0xC) & 7 ^ 1));
  LODWORD(v118) = STACK[0x708];
  v124 = v17 ^ LODWORD(STACK[0x708]);
  LODWORD(STACK[0x6F8]) = v124;
  v125 = v111 ^ v118;
  LODWORD(STACK[0x6E0]) = v111 ^ v118;
  LODWORD(v16) = v37 ^ v118;
  LODWORD(v31) = v118 ^ __ROR4__(v64, 19);
  LODWORD(STACK[0x6D0]) = v31;
  LODWORD(v118) = (v111 ^ v118) >> 24;
  LODWORD(STACK[0x680]) = v118;
  v126 = *(v73 + 8 * (LODWORD(STACK[0x710]) - 5925)) - 4;
  LODWORD(v37) = *(v126 + 4 * (v118 ^ 0x7B)) ^ 0x519E8594;
  v127 = *(v73 + 8 * (LODWORD(STACK[0x710]) - 6939)) - 12;
  LODWORD(v118) = *(v127 + 4 * (BYTE1(v125) ^ 0xABu));
  LODWORD(STACK[0x660]) = v118;
  LODWORD(STACK[0x658]) = BYTE2(v125);
  LODWORD(v111) = *(v126 + 4 * (BYTE2(v125) ^ 0x9Bu)) ^ 0xDFEFC5BC;
  HIDWORD(v123) = v37;
  LODWORD(v123) = v37;
  LODWORD(STACK[0x654]) = v125;
  v128 = *(v73 + 8 * (LODWORD(STACK[0x710]) - 6856)) - 12;
  LODWORD(v37) = (v123 >> 8) ^ __ROR4__(v118 ^ 0x61167371, 24) ^ *(v128 + 4 * (v125 ^ 0x6Du));
  LODWORD(STACK[0x650]) = v125 ^ 0xBDBB62D7;
  LODWORD(v118) = v37 ^ __ROR4__(v111, 16) ^ v31;
  LODWORD(STACK[0x6B8]) = v118;
  LODWORD(v111) = v118 ^ 0xEC649011;
  LODWORD(v118) = v118 ^ 0xEC649011 ^ v124;
  LODWORD(STACK[0x688]) = v118;
  LODWORD(v37) = v118 ^ 0x3DD4C030;
  LODWORD(v118) = v16;
  LODWORD(STACK[0x6B0]) = v16;
  LODWORD(STACK[0x6F0]) = v37 ^ v16;
  LODWORD(v16) = v37 ^ v16 ^ v125 ^ 0xBDBB62D7;
  LODWORD(v17) = *(v126 + 4 * (v16 ^ 0x2Du)) ^ __ROR4__(*(v126 + 4 * (BYTE3(v16) ^ 0x1F)) ^ 0xE124A409, 8) ^ __ROR4__(*(v128 + 4 * (BYTE2(v16) ^ 0x6Cu)) ^ 0x2E8816C7, 16);
  LODWORD(STACK[0x6E8]) = v16;
  v129 = v17 ^ __ROR4__(*(v126 + 4 * (BYTE1(v16) ^ 0x1Fu)) ^ 0x4C538F35, 24) ^ v111;
  v130 = v129 ^ 0xB6F2BE00 ^ v118;
  LODWORD(STACK[0x574]) = v130;
  v131 = v16 ^ v130 ^ 0xABBD82F6;
  LODWORD(STACK[0x608]) = v130 ^ 0xABBD82F6;
  v132 = *(v73 + 8 * (STACK[0x710] & 0xA57673F));
  LODWORD(v17) = *(v132 + 4 * (BYTE2(v131) ^ 0xCEu)) ^ 0x667AB386;
  LODWORD(v64) = *(v132 + 4 * (HIBYTE(v131) ^ 0x96));
  v133 = v132;
  LODWORD(STACK[0x6A8]) = v131;
  v134 = v127;
  LODWORD(v17) = *(v127 + 4 * ((v16 ^ v130 ^ 0xF6) ^ 0x8Au)) ^ __ROR4__(v17, 16) ^ __ROR4__(v64 ^ 0x4E964520, 8);
  LODWORD(v123) = __ROR4__(*(v127 + 4 * (BYTE1(v131) ^ 0x15u)) ^ 0x91B04906, 24);
  LODWORD(v64) = v37 ^ v129 ^ 0xB6F2BE00;
  LODWORD(STACK[0x6C8]) = v64;
  LODWORD(v132) = v17 ^ v123 ^ v129 ^ 0x5A073884;
  LODWORD(v111) = v131 ^ 0x4A8C170B;
  LODWORD(v37) = v64 ^ v132;
  LODWORD(STACK[0x670]) = v132;
  LODWORD(v114) = v64 ^ v132 ^ v130 ^ 0xABBD82F6;
  LODWORD(v17) = v131 ^ 0x4A8C170B ^ v114;
  LOWORD(v64) = v17 ^ 0xA9E;
  v135 = v17 ^ 0x8EED547B;
  LODWORD(STACK[0x634]) = v17 ^ 0x8EED547B;
  LODWORD(v16) = *(v133 + 4 * (((v17 ^ 0xD06C0A9E) >> 16) ^ 0x55u)) ^ 0x427EBC0D;
  LODWORD(v17) = *(v128 + 4 * (BYTE3(v17) ^ 0xDA)) ^ 0x353A7450;
  LODWORD(v31) = *(v128 + 4 * (BYTE1(v64) ^ 0x55u)) ^ 0xE99A3FDF;
  LODWORD(STACK[0x5EC]) = v37 ^ 0x57873508;
  HIDWORD(v123) = v16;
  LODWORD(v123) = v16;
  LODWORD(v132) = (v123 >> 16) ^ __ROR4__(v17, 8) ^ *(v126 + 4 * (v64 ^ 0xBEu)) ^ __ROR4__(v31, 24) ^ v132 ^ 0xDE248753;
  LODWORD(STACK[0x678]) = v37 ^ 0x57873508 ^ v132;
  LODWORD(v127) = v132;
  LODWORD(STACK[0x600]) = v132;
  LODWORD(v37) = v37 ^ 0x57873508 ^ v132 ^ 0x2541EF37;
  LODWORD(v132) = v114 ^ 0x7979F00D ^ v37;
  LODWORD(v17) = v135 ^ v132;
  v136 = v132;
  LODWORD(STACK[0x630]) = v132;
  LODWORD(v31) = *(v128 + 4 * (BYTE3(v17) ^ 0x62));
  LODWORD(v16) = *(v128 + 4 * (BYTE1(v17) ^ 0x43u)) ^ 0xB18C57A0;
  HIDWORD(v123) = *(v128 + 4 * (BYTE2(v17) ^ 0xACu)) ^ 0x57A971B3;
  LODWORD(v123) = HIDWORD(v123);
  LODWORD(STACK[0x5FC]) = v17 ^ 0xDBA6F321;
  LODWORD(v132) = (v123 >> 16) ^ (v31 >> 8) ^ (v31 << 24) ^ *(v134 + 4 * (v17 ^ 0x50u)) ^ __ROR4__(v16, 24) ^ v127;
  LODWORD(v37) = v37 ^ v132;
  LODWORD(STACK[0x698]) = v37;
  LODWORD(v16) = v132;
  LODWORD(STACK[0x5F0]) = v132;
  LODWORD(v132) = v37 ^ 0xBB7203FB;
  LODWORD(v37) = v37 ^ 0xBB7203FB ^ v136;
  v137 = v37 ^ v17 ^ 0xDBA6F321;
  v138 = v37;
  LODWORD(v37) = *(v128 + 4 * ((v37 ^ v17 ^ 0x21) ^ 5u)) ^ __ROR4__(*(v133 + 4 * (BYTE2(v137) ^ 0xF6u)) ^ 0x4781E707, 16);
  v139 = *(v134 + 4 * (BYTE1(v137) ^ 0x25u)) ^ 0xF85A668;
  LODWORD(v64) = v137;
  LODWORD(STACK[0x5E0]) = v137;
  LODWORD(v16) = v37 ^ __ROR4__(v139, 24) ^ __ROR4__(*(v128 + 4 * (HIBYTE(v137) ^ 0xE9)) ^ 0x8BD4B804, 8) ^ v16;
  v140 = v132 ^ v16 ^ 0x7BA3D30A;
  LODWORD(v31) = v140 ^ 0x26A43B18 ^ v138;
  v141 = v138;
  LODWORD(STACK[0x590]) = v138;
  LODWORD(v127) = v31 ^ 0xAFC0A9F6 ^ v64;
  LODWORD(STACK[0x614]) = v127;
  v142 = *(v128 + 4 * (v127 ^ 0x19u)) ^ __ROR4__(*(v128 + 4 * (BYTE3(v127) ^ 0x44)) ^ 0x7AE9F71D, 8) ^ __ROR4__(*(v134 + 4 * (((v127 ^ 0x8E37) >> 8) ^ 0xC8u)) ^ 0x6A79B624, 24) ^ v16 ^ 0x7BA3D30A ^ __ROR4__(*(v126 + 4 * (((v127 ^ 0xB7668E37) >> 16) ^ 0x99u)) ^ 0xDAD2AF9E, 16);
  LODWORD(v73) = v127 ^ 0xF523AE3B;
  LODWORD(v132) = v142 ^ 0x9637A0C7 ^ v140 ^ 0x26A43B18;
  LODWORD(STACK[0x5D8]) = v132;
  v143 = v132 ^ 0x6FE222DA;
  LODWORD(v37) = v132 ^ 0x6FE222DA ^ v31 ^ 0xAFC0A9F6;
  LODWORD(STACK[0x610]) = v132 ^ 0x6FE222DA;
  v144 = v127 ^ 0xF523AE3B ^ v37;
  LODWORD(v132) = *(v126 + 4 * (HIBYTE(v144) ^ 0xB3));
  STACK[0x6D8] = &STACK[0xCF0] + v3 - 16;
  HIDWORD(v123) = v132 ^ 0xF07DE88C;
  LODWORD(v123) = v132 ^ 0xF07DE88C;
  LODWORD(v132) = (v123 >> 8) ^ __ROR4__(*(v126 + 4 * (BYTE2(v144) ^ 0xDDu)) ^ 0x48285354, 16) ^ *(v128 + 4 * (v127 ^ 0x3B ^ v37 ^ 0x70u)) ^ __ROR4__(*(v133 + 4 * (BYTE1(v144) ^ 0x87u)) ^ 0x25322006, 24) ^ v142 ^ 0xEE9E07D2;
  LODWORD(v17) = v132 ^ v143;
  v145 = v132;
  LODWORD(STACK[0x5D4]) = v132;
  v146 = v132 ^ v143 ^ 0x727AD47E;
  LODWORD(v132) = *(v128 + 4 * (((v146 ^ v127 ^ 0xAE3B) >> 8) ^ 0xC6u)) ^ 0xB068CA39;
  v147 = *(v133 + 4 * ((v146 ^ v127 ^ 0x3B) ^ 0x9Du));
  STACK[0x640] = v133;
  v148 = *(v134 + 4 * (((v146 ^ v127 ^ 0xF523AE3B) >> 24) ^ 0xAF)) ^ 0xF0BC70E6;
  LODWORD(v123) = __ROR4__(v132, 24);
  LODWORD(v132) = ((v147 ^ v123 ^ v145 ^ 0x86BE1EAF) & 0xE84FF4AE ^ 0x3B6D230) & ((v147 ^ v123 ^ v145 ^ 0x86BE1EAF) & 0x17B00B51 ^ 0xE84FF5AF) | (v147 ^ v123 ^ v145 ^ 0x86BE1EAF) & 0x14000941;
  STACK[0x648] = v134;
  HIDWORD(v123) = *(v134 + 4 * (((v146 ^ v127 ^ 0xF523AE3B) >> 16) ^ 0x70u)) ^ 0x6F2CC33A;
  LODWORD(v123) = HIDWORD(v123);
  LODWORD(v116) = (v123 >> 16) ^ __ROR4__(v148, 8) ^ v132;
  LODWORD(STACK[0x5C4]) = v116;
  v149 = v37 ^ 0x2A7CFE41 ^ v146;
  LODWORD(STACK[0x5B4]) = v149;
  v150 = v146 ^ v127 ^ 0xF523AE3B ^ 0xEB3E60A2;
  LODWORD(STACK[0x5A0]) = v150;
  LODWORD(v116) = v116 ^ 0xB6F77CB3;
  LODWORD(v64) = v116 ^ v146;
  v151 = v116;
  LODWORD(STACK[0x580]) = v116;
  LODWORD(v116) = v116 ^ v146 ^ v149;
  LODWORD(STACK[0x5CC]) = v116;
  LODWORD(v116) = v116 ^ 0x196FC588;
  LODWORD(STACK[0x5D0]) = v116;
  v152 = *(v126 + 4 * ((v116 ^ v150) ^ 0x4Au)) ^ __ROR4__(*(v134 + 4 * (((v116 ^ v150) >> 8) ^ 0xE3u)) ^ 0x160D6001, 24) ^ __ROR4__(*(v128 + 4 * (((v116 ^ v150) >> 16) ^ 0xC7u)) ^ 0x20B5A6C6, 16);
  LODWORD(STACK[0x578]) = v116 ^ v150;
  LODWORD(v123) = __ROR4__(*(v133 + 4 * (((v116 ^ v150) >> 24) ^ 0x5D)) ^ 0x1DAEAFA5, 8);
  LODWORD(STACK[0x588]) = v152 ^ v123;
  v153 = v142 ^ 0x9637A0C7 ^ v111;
  v154 = v146 ^ v127 ^ 0xF523AE3B ^ 0x36CBEEE6;
  LODWORD(v111) = v17 ^ 0x569543AC;
  LODWORD(v17) = v152 ^ v123 ^ v146;
  LODWORD(v132) = v17 ^ 0x6771CA03;
  LODWORD(STACK[0x540]) = v17 ^ 0x6771CA03;
  LODWORD(STACK[0x638]) = v17 ^ 0xFCC831AE;
  v155 = (v129 ^ 0x36A2AA7E) - 251295541 + (v37 ^ 0x75098CFE);
  LODWORD(STACK[0x620]) = (v141 ^ 0x9EB7D05E) + (v140 ^ 0x2C6EE69);
  LODWORD(STACK[0x690]) = (v144 ^ 0x1737660F) + (v16 ^ 0x1FE1312D);
  LODWORD(v127) = (v31 ^ 0x749B91D4) - (v142 ^ 0x73E5E3B0);
  v156 = v114 ^ 0xCA305298;
  LODWORD(STACK[0x5A8]) = v114 ^ 0xCA305298;
  LODWORD(v17) = (LODWORD(STACK[0x6E8]) ^ 0x61B9E2DB) - (LODWORD(STACK[0x6F0]) ^ 0x457B29B2);
  LODWORD(v114) = v130 ^ 0x44C13855 ^ v116 ^ v150;
  v157 = v114 - 527248389;
  v158 = v129 ^ 0xDA065DC2 ^ v151;
  v159 = -1415286303 - v158;
  v160 = v129 ^ (-1415286303 - v158) ^ 0x1BC07D9A ^ (v114 - ((2 * (v114 - 527248389)) & 0x5AC5AFC8) + 234204127);
  LODWORD(v114) = LODWORD(STACK[0x698]) ^ 0x13B89B4E;
  v161 = v114 - (v129 ^ 0x36A2AA7E);
  LODWORD(STACK[0x618]) = v161;
  LODWORD(v114) = v114 + v156;
  v162 = -1944715934 - v114;
  LODWORD(STACK[0x5E8]) = v140 ^ (-717761782 - v114 - ((2 * (-1944715934 - v114)) & 0x9243AB50)) ^ 0x4BE73BC1;
  v163 = (v64 ^ 0x23E80806) + v111;
  LODWORD(v114) = 2 * (v163 + 42022374);
  v164 = v163 + 42022374;
  LODWORD(STACK[0x6C0]) = v163 + 42022374;
  LODWORD(STACK[0x5B8]) = v16 ^ v162 ^ 0xCAA974C2 ^ (v163 - (v114 & 0xAA908BDE) - 674661419);
  v165 = v142 ^ (1251241962 - v158 - ((2 * (-1415286303 - v158)) & 0x3DDFFC12)) ^ 0xED0A1DB9;
  LODWORD(STACK[0x5C8]) = v162 ^ v31 ^ 0x4FAF24A ^ (v163 - (v114 & 0xE0C2C73C) + 1927453060);
  LODWORD(v133) = STACK[0x688];
  v166 = v154 ^ v132;
  LODWORD(v16) = v166 + (LODWORD(STACK[0x688]) ^ 0x16C4C767);
  v167 = v16 + 375603506;
  LODWORD(STACK[0x59C]) = v37 ^ v159 ^ 0xF1723F81 ^ (v16 - ((2 * (v16 + 375603506)) & 0x8F766FE) - 1696664399);
  v168 = v144 ^ v159 ^ 0xFDD60540 ^ (v16 - ((2 * (v16 + 375603506)) & 0xD5C2C69E) + 21275777);
  v169 = v17 + 1312182225;
  LODWORD(STACK[0x700]) = (v17 - ((2 * (v17 + 1312182225)) & 0x6764D82) - 781093230) ^ v153 ^ 0x116931D8 ^ v111;
  v170 = LODWORD(STACK[0x638]) + 878865114 + v166;
  LODWORD(STACK[0x6A0]) = v155;
  LODWORD(STACK[0x56C]) = v155 ^ v64 ^ 0x1538F280 ^ (v170 - ((2 * v170) & 0x6DA1F50C) + 919665286);
  LODWORD(v111) = LODWORD(STACK[0x6B8]) ^ 0xDEE55B72;
  LODWORD(STACK[0x554]) = v164 ^ v155;
  LODWORD(STACK[0x51C]) = v164 ^ v155 ^ v153 ^ 0x6CB20B6A ^ v166;
  v171 = *(&off_1006B4E30 + (LODWORD(STACK[0x710]) ^ 0x1FA2u)) - 4;
  STACK[0x638] = v171;
  v172 = (v171 + 1393661693) ^ 0xACEE6902;
  v173 = LODWORD(STACK[0x5E0]) ^ 0x13F7BE8C;
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x614]) ^ 0xE17B1FF4;
  LODWORD(STACK[0x688]) = v73 ^ LODWORD(STACK[0x610]);
  v174 = STACK[0x590];
  LODWORD(STACK[0x614]) = v73 ^ LODWORD(STACK[0x590]);
  LODWORD(v171) = v73 ^ v174 ^ v161;
  LODWORD(STACK[0x610]) = v171;
  v175 = v171 ^ 0x2291627A;
  v176 = v133 ^ 0xEC1894BB ^ v171 ^ 0x2291627A;
  v177 = v111 ^ v171 ^ 0x2291627A;
  v178 = v177 + v176 + v172;
  v179 = LODWORD(STACK[0x574]) ^ 0xEE3B3A9B;
  v180 = STACK[0x5EC];
  LODWORD(v31) = LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x574]);
  LODWORD(STACK[0x4B8]) = v31 ^ 0x4A9C9840;
  LODWORD(v64) = LODWORD(STACK[0x6E0]) ^ v31 ^ 0x4A9C9840;
  LODWORD(STACK[0x4C4]) = v127 ^ 0xB9712598;
  v181 = v64 ^ v127 ^ 0xB9712598 ^ 0x24962171;
  v182 = v180;
  v183 = LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x608]) ^ v180 ^ 0x3B26E839;
  LODWORD(STACK[0x4D4]) = v127;
  v184 = v183 ^ v170 ^ v127;
  LODWORD(STACK[0x4A8]) = v31;
  v185 = v170 ^ v127 ^ v31;
  v186 = v185 ^ LODWORD(STACK[0x6B0]) ^ 0x20691BF2;
  v187 = v185 ^ LODWORD(STACK[0x6D0]) ^ 0x23D659EE;
  v188 = LODWORD(STACK[0x6E8]) ^ 0x9B65B107;
  v189 = v165 ^ v167;
  v190 = v178 + (v165 ^ v167) + 1;
  v191 = v181 ^ v170;
  if (v190)
  {
    v192 = v186;
  }

  else
  {
    v192 = v184;
  }

  LODWORD(STACK[0x6E0]) = v192;
  if (v190)
  {
    v193 = v181 ^ v170;
  }

  else
  {
    v193 = v186;
  }

  LODWORD(STACK[0x6E8]) = v193;
  if (v190)
  {
    v191 = v187;
  }

  else
  {
    v184 = v187;
  }

  LODWORD(STACK[0x6B8]) = v191;
  v194 = v188 ^ v175;
  v195 = LODWORD(STACK[0x6F0]) ^ 0xBFA77A6E ^ v175;
  v196 = LODWORD(STACK[0x6A8]) ^ 0xB83945A2;
  v197 = LODWORD(STACK[0x6C8]) ^ 0x37460C3D;
  LODWORD(STACK[0x4CC]) = v157;
  v198 = v179 ^ v157 ^ v159;
  v199 = v196 ^ v157 ^ v159;
  v200 = v197 ^ v157 ^ v159;
  if (v190)
  {
    v201 = v160;
  }

  else
  {
    v201 = v199;
  }

  LODWORD(STACK[0x6F0]) = v201;
  if (v190)
  {
    v202 = v199;
  }

  else
  {
    v202 = v198;
  }

  if (v190)
  {
    v203 = v200;
  }

  else
  {
    v203 = v160;
  }

  if (v190)
  {
    v204 = v198;
  }

  else
  {
    v204 = v200;
  }

  LODWORD(STACK[0x6C8]) = v204;
  LODWORD(STACK[0x538]) = v182 ^ 0x18C7AFB9;
  LODWORD(STACK[0x670]) ^= 0x8027C4A6;
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x5A8]) ^ 0xB4417B09;
  LODWORD(STACK[0x520]) = LODWORD(STACK[0x634]) ^ 0x769E240E;
  v205 = LODWORD(STACK[0x600]) ^ 0xE53F2E6B;
  v206 = v153 ^ 0x3FB3AFD2;
  v207 = v162;
  v208 = LODWORD(STACK[0x678]) ^ 0x9276E31D ^ v153 ^ 0x3FB3AFD2 ^ v162;
  v209 = LODWORD(STACK[0x5FC]) ^ 0x91915BFE ^ v153 ^ 0x3FB3AFD2 ^ v162;
  v210 = LODWORD(STACK[0x630]) ^ 0x5327EE1E;
  LODWORD(STACK[0x62C]) = v162;
  LODWORD(STACK[0x6A8]) = v153;
  v211 = v162 ^ 0xA1A131AA ^ v153;
  v212 = v205 ^ v211;
  v213 = v210 ^ v211;
  v214 = STACK[0x6C0];
  v215 = LODWORD(STACK[0x6C0]) ^ LODWORD(STACK[0x620]);
  v216 = v173 ^ v215;
  v217 = v174 ^ 0x792EDDFF ^ v215;
  v218 = LODWORD(STACK[0x5F0]) ^ 0xB85EA248 ^ v215;
  v219 = LODWORD(STACK[0x698]) ^ 0xF42196EF ^ v215;
  if (v190)
  {
    v220 = v216;
  }

  else
  {
    v220 = v217;
  }

  LODWORD(STACK[0x678]) = v220;
  if (v190)
  {
    v216 = v218;
  }

  LODWORD(STACK[0x5EC]) = v216;
  if (v190)
  {
    v221 = v217;
  }

  else
  {
    v221 = v219;
  }

  LODWORD(STACK[0x5E0]) = v221;
  if (v190)
  {
    v222 = v219;
  }

  else
  {
    v222 = v218;
  }

  LODWORD(STACK[0x608]) = v222;
  v223 = LODWORD(STACK[0x5E8]) ^ v214;
  v224 = v214 ^ v207;
  LODWORD(STACK[0x518]) = v224;
  v225 = LODWORD(STACK[0x560]) ^ v224;
  v226 = STACK[0x5C8];
  if (v190)
  {
    v227 = LODWORD(STACK[0x560]) ^ v224;
  }

  else
  {
    v227 = STACK[0x5C8];
  }

  LODWORD(STACK[0x5E8]) = v227;
  if (v190)
  {
    v228 = v226;
  }

  else
  {
    v228 = v223;
  }

  LODWORD(STACK[0x5FC]) = v228;
  v229 = STACK[0x5B8];
  if (v190)
  {
    v230 = v223;
  }

  else
  {
    v230 = STACK[0x5B8];
  }

  LODWORD(STACK[0x5C8]) = v230;
  if (v190)
  {
    v231 = v229;
  }

  else
  {
    v231 = v225;
  }

  LODWORD(STACK[0x5F0]) = v231;
  v232 = LODWORD(STACK[0x5D8]) ^ 0xB7D6CD38;
  LODWORD(STACK[0x4C8]) = v159;
  LODWORD(STACK[0x4C0]) = v167;
  LODWORD(STACK[0x488]) = v167 ^ v159;
  v233 = v232 ^ v167 ^ v159;
  if (v190)
  {
    v234 = v189;
  }

  else
  {
    v234 = v168;
  }

  LODWORD(STACK[0x5B8]) = v234;
  if (v190)
  {
    v235 = v233;
  }

  else
  {
    v235 = v189;
  }

  LODWORD(STACK[0x5A8]) = v235;
  v236 = STACK[0x59C];
  if (v190)
  {
    v237 = v168;
  }

  else
  {
    v237 = STACK[0x59C];
  }

  LODWORD(STACK[0x590]) = v237;
  if (v190)
  {
    v238 = v236;
  }

  else
  {
    v238 = v233;
  }

  LODWORD(STACK[0x59C]) = v238;
  LODWORD(STACK[0x4D0]) = v169;
  LODWORD(STACK[0x504]) = v206 ^ v169;
  v239 = v206 ^ v169 ^ 0x65482329 ^ LODWORD(STACK[0x5D4]);
  v240 = v206 ^ v169 ^ 0xEA54A ^ LODWORD(STACK[0x5A0]);
  v241 = v206 ^ v169 ^ 0x90736A0A ^ LODWORD(STACK[0x5B4]);
  v242 = LODWORD(STACK[0x578]) ^ 0xAAFA02CE;
  v243 = LODWORD(STACK[0x5C4]) ^ 0x5A538B0F;
  v244 = LODWORD(STACK[0x5CC]) ^ 0xF5D9B2AF;
  LODWORD(STACK[0x4B0]) = v170;
  v245 = v170 ^ LODWORD(STACK[0x6A0]);
  LODWORD(STACK[0x600]) = v245;
  v246 = v242 ^ v245;
  v247 = v243 ^ v245;
  v248 = v244 ^ v245;
  if (v190)
  {
    v249 = v247;
  }

  else
  {
    v249 = v246;
  }

  LODWORD(STACK[0x560]) = v249;
  v250 = STACK[0x56C];
  if (v190)
  {
    v251 = STACK[0x56C];
  }

  else
  {
    v251 = v247;
  }

  LODWORD(STACK[0x574]) = v251;
  if (v190)
  {
    v252 = v248;
  }

  else
  {
    v252 = v250;
  }

  LODWORD(STACK[0x548]) = v252;
  if (v190)
  {
    v253 = v246;
  }

  else
  {
    v253 = v248;
  }

  LODWORD(STACK[0x56C]) = v253;
  v254 = LODWORD(STACK[0x5D0]) ^ 0x5E0CB54;
  LODWORD(STACK[0x634]) = v206;
  v255 = LODWORD(STACK[0x554]) ^ v206;
  LODWORD(STACK[0x554]) = v255;
  v256 = v255 ^ LODWORD(STACK[0x540]);
  v257 = v256 ^ 0xC8B85F15;
  v258 = v254 ^ v256;
  v259 = v255 ^ LODWORD(STACK[0x580]) ^ 0xADCF7E76 ^ LODWORD(STACK[0x588]);
  LODWORD(STACK[0x510]) = v177;
  if (v190)
  {
    v260 = v177;
  }

  else
  {
    v260 = v194;
  }

  LODWORD(STACK[0x534]) = v260;
  if (v190)
  {
    v261 = v194;
  }

  else
  {
    v261 = v195;
  }

  LODWORD(STACK[0x588]) = v261;
  LODWORD(STACK[0x540]) = v176;
  if (v190)
  {
    v262 = v195;
  }

  else
  {
    v262 = v176;
  }

  LODWORD(STACK[0x524]) = v262;
  v263 = LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x688]);
  v264 = v263 ^ 0x8C965967;
  LODWORD(STACK[0x5D0]) = v263 ^ 0x8C965967;
  v265 = LODWORD(STACK[0x538]) ^ v263 ^ 0x8C965967;
  v266 = LODWORD(STACK[0x670]) ^ v263 ^ 0x8C965967;
  LODWORD(STACK[0x418]) = v263;
  v267 = LODWORD(STACK[0x528]) ^ v263;
  v268 = LODWORD(STACK[0x520]) ^ v264;
  LODWORD(STACK[0x434]) = v266;
  if (v190)
  {
    v266 = v265;
  }

  LODWORD(STACK[0x538]) = v266;
  if (v190)
  {
    v269 = v267;
  }

  else
  {
    v269 = v265;
  }

  LODWORD(STACK[0x450]) = v269;
  LODWORD(STACK[0x42C]) = v268;
  if (v190)
  {
    v270 = v268;
  }

  else
  {
    v270 = v267;
  }

  LODWORD(STACK[0x528]) = v270;
  LODWORD(STACK[0x4E8]) = v208;
  if (v190)
  {
    v271 = v208;
  }

  else
  {
    v271 = v212;
  }

  if (v190)
  {
    v272 = v212;
  }

  else
  {
    v272 = v209;
  }

  LODWORD(STACK[0x580]) = v272;
  LODWORD(STACK[0x490]) = v213;
  if (v190)
  {
    v273 = v209;
  }

  else
  {
    v273 = v213;
  }

  LODWORD(STACK[0x440]) = v257;
  if (v190)
  {
    v274 = v258;
  }

  else
  {
    v274 = v257;
  }

  LODWORD(STACK[0x520]) = v274;
  v275 = STACK[0x51C];
  if (v190)
  {
    v258 = STACK[0x51C];
  }

  LODWORD(STACK[0x578]) = v258;
  LODWORD(STACK[0x438]) = v259;
  if (v190)
  {
    v276 = v259;
  }

  else
  {
    v276 = v275;
  }

  LODWORD(STACK[0x51C]) = v276;
  LODWORD(STACK[0x468]) = v239;
  v277 = STACK[0x700];
  if ((v190 & 1) == 0)
  {
    v277 = v239;
  }

  LODWORD(STACK[0x5D4]) = v277;
  LODWORD(STACK[0x460]) = v240;
  LODWORD(STACK[0x458]) = v241;
  if (v190)
  {
    v278 = v240;
  }

  else
  {
    v278 = v241;
  }

  LODWORD(STACK[0x5A0]) = v278;
  LODWORD(STACK[0x698]) = v190;
  v279 = (v190 & 2) == 0;
  v280 = STACK[0x6E8];
  if ((v190 & 2) != 0)
  {
    v281 = v184;
  }

  else
  {
    v281 = STACK[0x6E8];
  }

  LODWORD(STACK[0x5C4]) = v281;
  if ((v190 & 2) != 0)
  {
    v282 = v280;
  }

  else
  {
    v282 = v184;
  }

  LODWORD(STACK[0x630]) = v282;
  if ((v190 & 2) != 0)
  {
    v283 = v202;
  }

  else
  {
    v283 = v203;
  }

  LODWORD(STACK[0x6E8]) = v283;
  if ((v190 & 2) != 0)
  {
    v284 = v203;
  }

  else
  {
    v284 = v202;
  }

  LODWORD(STACK[0x5CC]) = v284;
  if ((v190 & 2) != 0)
  {
    v285 = v273;
  }

  else
  {
    v285 = v271;
  }

  LODWORD(STACK[0x5D8]) = v285;
  if ((v190 & 2) != 0)
  {
    v273 = v271;
  }

  LODWORD(STACK[0x670]) = v273;
  v286 = STACK[0x640];
  v287 = LODWORD(STACK[0x6D0]) ^ __ROR4__(*(STACK[0x640] + 4 * (LODWORD(STACK[0x658]) ^ 0xAFu)) ^ 0xE9BD8658, 16) ^ __ROR4__(*(v128 + 4 * (LODWORD(STACK[0x680]) ^ 0x4Au)) ^ 0xC3118CAB, 8) ^ *(v126 + 4 * (LODWORD(STACK[0x654]) ^ 0x5Cu)) ^ __ROR4__(LODWORD(STACK[0x660]) ^ 0x9FE76BF3, 24) ^ 0x73E7F9EF;
  v288 = STACK[0x6F8];
  v289 = v287 ^ LODWORD(STACK[0x6F8]);
  LODWORD(STACK[0x6D0]) = v289;
  v290 = v289 ^ LODWORD(STACK[0x6B0]);
  v291 = v290 ^ LODWORD(STACK[0x650]);
  v292 = STACK[0x648];
  v293 = *(STACK[0x648] + 4 * ((v290 ^ LOBYTE(STACK[0x650])) ^ 6u)) ^ __ROR4__(*(v128 + 4 * (BYTE1(v291) ^ 0x5Fu)) ^ 0x6776B339, 24) ^ __ROR4__(*(v128 + 4 * (HIBYTE(v291) ^ 0x52)) ^ 0xBE4F36D5, 8) ^ __ROR4__(*(v128 + 4 * (BYTE2(v291) ^ 0x35u)) ^ 0x9EB471A9, 16) ^ 0x5D9ED95;
  v294 = v288 ^ 0xE42B04F8 ^ v290 ^ v293;
  v295 = v287 ^ *(v128 + 4 * ((v294 ^ v291) ^ 0x7Eu)) ^ __ROR4__(*(v128 + 4 * (((v294 ^ v291) >> 16) ^ 0xD6u)) ^ 0x6366DABA, 16) ^ __ROR4__(*(STACK[0x648] + 4 * (((v294 ^ v291) >> 8) ^ 0xD3u)) ^ 0xE21C3B02, 24) ^ __ROR4__(*(v128 + 4 * (((v294 ^ v291) >> 24) ^ 0x1B)) ^ 0xE29D2DA0, 8);
  v296 = v295 ^ v288;
  v297 = v293 ^ 0x183563F ^ v295;
  v298 = v295 ^ v288 ^ 0x2ADB790E;
  v299 = v298 ^ v291;
  v300 = v299 ^ 0x34D373FD;
  HIDWORD(v301) = *(STACK[0x648] + 4 * (HIBYTE(v299) ^ 0x15)) ^ 0x31009E84;
  LODWORD(v301) = HIDWORD(v301);
  v302 = (v301 >> 8) ^ __ROR4__(*(v286 + 4 * (BYTE1(v299) ^ 0x22u)) ^ 0x985DA17B, 24) ^ *(v126 + 4 * (v299 ^ 0xB2u)) ^ __ROR4__(*(v286 + 4 * (BYTE2(v299) ^ 0x83u)) ^ 0x66539B88, 16) ^ v297 ^ 0x35A709CC;
  LODWORD(STACK[0x6F8]) = v298;
  v303 = v298 ^ v294;
  v304 = v296 ^ 0x8E942A2D ^ v302;
  LODWORD(STACK[0x3F8]) = v303;
  v305 = v304 ^ v303;
  HIDWORD(v301) = *(v126 + 4 * (((v304 ^ v303 ^ v300) >> 8) ^ 0x62u)) ^ 0x50B85E0A;
  LODWORD(v301) = HIDWORD(v301);
  v306 = (v301 >> 24) ^ __ROR4__(*(v286 + 4 * (((v304 ^ v303 ^ v300) >> 24) ^ 0xF7)) ^ 0xBEA25DDC, 8) ^ *(v286 + 4 * ((v304 ^ v303 ^ v300) ^ 0xD8u)) ^ __ROR4__(*(v126 + 4 * (((v304 ^ v303 ^ v300) >> 16) ^ 0x3Au)) ^ 0xAAEFE634, 16) ^ v302;
  LODWORD(STACK[0x6B0]) = v306;
  v307 = v306 ^ 0x7A0AD220 ^ v304;
  LODWORD(STACK[0x414]) = v300;
  v308 = v307 ^ 0x9D24A73C ^ v300;
  v309 = *(v292 + 4 * (v307 ^ 0x3C ^ v300 ^ 0x55u)) ^ __ROR4__(*(v128 + 4 * (HIBYTE(v308) ^ 0xF1)) ^ 0xEFECAE7A, 8) ^ __ROR4__(*(v126 + 4 * (BYTE2(v308) ^ 0x61u)) ^ 0x1C42A5D1, 16) ^ v306 ^ 0x7A0AD220;
  LODWORD(v301) = __ROR4__(*(v292 + 4 * (BYTE1(v308) ^ 0x68u)) ^ 0xDF464528, 24);
  LODWORD(STACK[0x660]) = v309 ^ v301;
  v310 = v309 ^ v301 ^ 0x7DA8A5D1;
  LODWORD(STACK[0x658]) = v310 ^ v305;
  v311 = v310 ^ v305 ^ 0x94AD7ED7;
  v312 = v311 ^ v308 ^ 0x3AB3942B;
  v313 = *(v126 + 4 * (((v311 ^ v308) >> 24) ^ 0xD8));
  v314 = *(v286 + 4 * ((v311 ^ v307 ^ 0x3C ^ v300) ^ 0xFDu)) ^ __ROR4__(*(v128 + 4 * (((v311 ^ v307 ^ 0xA73C ^ v300 ^ 0x3DC5) >> 8) ^ 0x7Au)) ^ 0x560CEC13, 24) ^ (v313 << 24) ^ (v313 >> 8) ^ __ROR4__(*(v128 + 4 * (((v311 ^ v308 ^ 0xE6653DC5) >> 16) ^ 5u)) ^ 0xF72F0215, 16);
  v315 = v314 ^ v307 ^ 0x9D24A73C;
  v316 = v315 ^ 0xD48B6B71 ^ v311;
  v317 = (v316 ^ v312 ^ 0xED496140) - ((2 * (v316 ^ v312 ^ 0xED496140)) & 0xA000000) - 2063597568;
  v318 = *(v292 + 4 * ((v314 ^ v307 ^ 0x3C) ^ 0x71 ^ v311 ^ v312 ^ 0x42u)) ^ __ROR4__(*(v292 + 4 * (((v314 ^ v307 ^ 0xA73C ^ 0x6B71 ^ v311 ^ v312) >> 8) ^ 0x63u)) ^ 0xE6CBA2B2, 24) ^ __ROR4__(*(v126 + 4 * (HIBYTE(v317) ^ 0xE2)) ^ 0x5E581925, 8);
  v319 = v314 ^ v310;
  v320 = v318 ^ v314 ^ v310 ^ __ROR4__(*(v126 + 4 * (((v316 ^ v312) >> 16) ^ 0xABu)) ^ 0x8A5441F0, 16) ^ 0xA74C5EF6;
  v321 = v315 ^ 0x13111F1F ^ v320;
  LODWORD(STACK[0x654]) = v321;
  v322 = v316 ^ 0x7A29121E ^ v321;
  v323 = *(v292 + 4 * (((v317 ^ v322) >> 24) ^ 0xAE)) ^ 0x587F44F6;
  v324 = *(v128 + 4 * (((v316 ^ v312 ^ 0x6140 ^ v316 ^ 0x121E ^ v321) >> 8) ^ 0x48u)) ^ 0xD9A1CC99;
  v325 = v317 ^ v322 ^ 0xA6F84223;
  STACK[0x708] = v126;
  v326 = *(v292 + 4 * ((v316 ^ v312) ^ 0x40 ^ v322 ^ 0x9Cu)) ^ __ROR4__(v324, 24) ^ __ROR4__(v323, 8) ^ __ROR4__(*(v126 + 4 * (((v317 ^ v322) >> 16) ^ 0xC4u)) ^ 0x12AEDFDD, 16) ^ 0xA46D076E;
  v327 = v326 ^ v315 ^ 0xD48B6B71;
  v328 = v327 ^ 0x22620D6E ^ v322;
  v329 = v328 ^ v325;
  STACK[0x4E0] = v128;
  v330 = *(v286 + 4 * (((v328 ^ v325) >> 24) ^ 0x9E));
  LODWORD(STACK[0x650]) = *(v292 + 4 * ((v326 ^ v315 ^ 0x71) ^ 0x6E ^ v322 ^ (v316 ^ v312) ^ 0x40 ^ v322 ^ 0x23 ^ 0x63u)) ^ (v330 << 24) ^ (v330 >> 8) ^ __ROR4__(*(v128 + 4 * (((v328 ^ v325) >> 16) ^ 0x14u)) ^ 0xF57DCA4E, 16) ^ __ROR4__(*(v286 + 4 * (((v328 ^ v325) >> 8) ^ 0xFBu)) ^ 0x2BF6EB87, 24);
  v331 = STACK[0x62C];
  v332 = -v312 ^ (v331 - (v312 ^ v331)) ^ 0x5DAB21E6 ^ (v312 - ((2 * v312) & 0xBB5643CC) + 1571496422);
  v333 = LODWORD(STACK[0x610]) ^ v287 ^ 0x519D18E2;
  v334 = LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x6D0]) ^ 0xD56238D3;
  v335 = LODWORD(STACK[0x614]) ^ 0x5A667FE9;
  LODWORD(STACK[0x498]) = v335;
  v336 = (v334 ^ v335) + v333;
  v337 = STACK[0x638];
  LODWORD(v286) = v336 - ((STACK[0x638] - 2 * (STACK[0x638] & 0x70A2D341) + 1889719114) ^ 0x70A2D34A);
  HIDWORD(v301) = v286;
  LODWORD(v301) = v286;
  LODWORD(STACK[0x3E4]) = (v301 >> 1) ^ __ROR4__(v286 ^ 0xB9FC2197 ^ LODWORD(STACK[0x5CC]), 1) ^ 0x850D3B1B;
  LODWORD(STACK[0x6D0]) = v336 - ((v337 - ((2 * v337) & 0x685C6EE0) + 875444091) ^ 0x342E377B);
  LODWORD(STACK[0x4A0]) = (v336 - ((v337 - ((2 * v337) & 0x37FC8320) + 469647770) ^ 0x1BFE419A)) ^ 0x60E0E657;
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x5D0]) ^ v297 ^ 0xE3DDBB93;
  v338 = v307 ^ 0x9D24A73C ^ v310 ^ 0x37FC7946;
  v339 = STACK[0x488];
  v340 = LODWORD(STACK[0x488]) ^ v319 ^ 0x6D3CA913;
  v341 = v340 + (v286 ^ 0x9F1F19A8);
  v342 = v215 ^ v307 ^ 0xC0E472CB;
  v343 = v215 ^ v305 ^ v307 ^ 0x9D24A73C ^ 0x5F9ED254;
  v344 = STACK[0x6E0];
  if (!v279)
  {
    v344 = STACK[0x6B8];
  }

  LODWORD(STACK[0x3DC]) = v344;
  v345 = STACK[0x534];
  if (v279)
  {
    v345 = STACK[0x524];
  }

  LODWORD(STACK[0x4F8]) = v345;
  v346 = STACK[0x538];
  if (!v279)
  {
    v346 = STACK[0x528];
  }

  LODWORD(STACK[0x508]) = v346;
  v347 = STACK[0x6F0];
  if (!v279)
  {
    v347 = STACK[0x6C8];
  }

  LODWORD(STACK[0x5B4]) = v347;
  v348 = STACK[0x678];
  if (!v279)
  {
    v348 = STACK[0x608];
  }

  LODWORD(STACK[0x5CC]) = v348;
  v349 = STACK[0x5EC];
  if (v279)
  {
    v349 = STACK[0x5E0];
  }

  LODWORD(STACK[0x4F0]) = v349;
  v350 = STACK[0x5E8];
  if (v279)
  {
    v350 = STACK[0x5C8];
  }

  LODWORD(STACK[0x5D0]) = v350;
  if (v279)
  {
    v351 = STACK[0x5FC];
  }

  else
  {
    v351 = STACK[0x5F0];
  }

  if (v279)
  {
    v352 = STACK[0x59C];
  }

  else
  {
    v352 = STACK[0x5B8];
  }

  v353 = STACK[0x5A8];
  if (v279)
  {
    v353 = STACK[0x590];
  }

  LODWORD(STACK[0x500]) = v353;
  v354 = STACK[0x5D4];
  if (!v279)
  {
    v354 = STACK[0x5A0];
  }

  LODWORD(STACK[0x4FC]) = v354;
  v355 = STACK[0x574];
  if (!v279)
  {
    v355 = STACK[0x56C];
  }

  LODWORD(STACK[0x680]) = v355;
  if (v279)
  {
    v356 = STACK[0x560];
  }

  else
  {
    v356 = STACK[0x548];
  }

  v357 = STACK[0x520];
  if (v279)
  {
    v357 = STACK[0x51C];
  }

  LODWORD(STACK[0x4D8]) = v357;
  if (v341)
  {
    v358 = v343;
  }

  else
  {
    v358 = v342;
  }

  v359 = v215 ^ v308 ^ 0x7E46525A;
  if (v341)
  {
    v360 = v215 ^ LODWORD(STACK[0x6B0]) ^ 0x67E082B5;
  }

  else
  {
    v360 = v359;
  }

  v361 = (v332 + v331) ^ 0xB83A13B4;
  v362 = LODWORD(STACK[0x518]) ^ v338;
  v363 = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x658]) ^ 0x34A7931F;
  v364 = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x660]) ^ 0x4B51316D;
  v365 = v339 ^ v315 ^ 0xE2FAC3E1;
  v366 = v339 ^ v317 ^ 0x460837AC;
  v367 = v339 ^ v316 ^ 0x2E4156EC;
  v368 = LODWORD(STACK[0x504]) ^ 0xD8E8B65C ^ LODWORD(STACK[0x654]);
  v369 = v326 ^ v320;
  v370 = LODWORD(STACK[0x504]) ^ 0x6F0B5D0E ^ v320;
  v371 = LODWORD(STACK[0x504]) ^ 0x6C708721 ^ v325;
  v372 = LODWORD(STACK[0x650]) ^ v369;
  v373 = LODWORD(STACK[0x600]) ^ v328 ^ 0xD717BC44;
  v374 = LODWORD(STACK[0x600]) ^ v329 ^ 0xDDC965F9;
  v375 = LODWORD(STACK[0x600]) ^ v327 ^ 0x59532AB4;
  v376 = LODWORD(STACK[0x600]) ^ v369 ^ 0x208FB61A;
  v377 = LODWORD(STACK[0x504]) ^ 0xCA88C502 ^ v322;
  v378 = v372 ^ 0xAEC830F7 ^ v322 ^ LODWORD(STACK[0x554]);
  v379 = LODWORD(STACK[0x554]) ^ v327 ^ 0x22620D6E ^ 0x25106402 ^ v372 ^ 0xAEC830F7;
  v380 = v372 ^ LODWORD(STACK[0x554]) ^ 0x65E73BB7;
  v381 = v378 ^ 0x670990DE;
  v382 = v378 ^ v329 ^ 0x2FCEBDBF;
  if (v341)
  {
    v383 = v381;
  }

  else
  {
    v383 = v379;
  }

  if (v341)
  {
    v384 = v380;
  }

  else
  {
    v379 = v380;
    v384 = v382;
  }

  if (v341)
  {
    v385 = v382;
  }

  else
  {
    v385 = v381;
  }

  v386 = LODWORD(STACK[0x6C0]) ^ v361;
  LODWORD(STACK[0x3AC]) = v363;
  if (v341)
  {
    v387 = v363;
  }

  else
  {
    v387 = v362;
  }

  if (v341)
  {
    v388 = v362;
  }

  else
  {
    v388 = v364;
  }

  LODWORD(STACK[0x554]) = v388;
  LODWORD(STACK[0x31C]) = v386;
  if (v341)
  {
    v389 = v364;
  }

  else
  {
    v389 = v386;
  }

  LODWORD(STACK[0x334]) = v373;
  if (v341)
  {
    v390 = v373;
  }

  else
  {
    v390 = v375;
  }

  if (v341)
  {
    v391 = v375;
  }

  else
  {
    v391 = v376;
  }

  LODWORD(STACK[0x518]) = v391;
  LODWORD(STACK[0x328]) = v374;
  if (v341)
  {
    v392 = v376;
  }

  else
  {
    v392 = v374;
  }

  LODWORD(STACK[0x610]) = v340;
  LODWORD(STACK[0x380]) = v366;
  if (v341)
  {
    v393 = v340;
  }

  else
  {
    v393 = v366;
  }

  LODWORD(STACK[0x3CC]) = v365;
  LODWORD(STACK[0x348]) = v367;
  if (v341)
  {
    v394 = v367;
  }

  else
  {
    v394 = v365;
  }

  LODWORD(STACK[0x340]) = v368;
  LODWORD(STACK[0x320]) = v377;
  if (v341)
  {
    v395 = v377;
  }

  else
  {
    v395 = v368;
  }

  LODWORD(STACK[0x33C]) = v370;
  LODWORD(STACK[0x338]) = v371;
  if (v341)
  {
    v396 = v370;
  }

  else
  {
    v396 = v371;
  }

  LODWORD(STACK[0x6B0]) = v341;
  if ((v341 & 2) != 0)
  {
    v397 = v358;
  }

  else
  {
    v397 = v360;
  }

  LODWORD(STACK[0x3F0]) = v397;
  if ((v341 & 2) != 0)
  {
    v398 = v395;
  }

  else
  {
    v398 = v396;
  }

  LODWORD(STACK[0x448]) = v398;
  if ((v341 & 2) != 0)
  {
    v399 = v396;
  }

  else
  {
    v399 = v395;
  }

  LODWORD(STACK[0x43C]) = v399;
  LODWORD(STACK[0x3B8]) = v387;
  LODWORD(STACK[0x368]) = v389;
  if ((v341 & 2) != 0)
  {
    v400 = v387;
  }

  else
  {
    v400 = v389;
  }

  LODWORD(STACK[0x420]) = v400;
  LODWORD(STACK[0x354]) = v393;
  LODWORD(STACK[0x350]) = v394;
  if ((v341 & 2) != 0)
  {
    v401 = v393;
  }

  else
  {
    v401 = v394;
  }

  LODWORD(STACK[0x430]) = v401;
  LODWORD(STACK[0x39C]) = v390;
  LODWORD(STACK[0x360]) = v392;
  if ((v341 & 2) != 0)
  {
    v402 = v390;
  }

  else
  {
    v402 = v392;
  }

  LODWORD(STACK[0x470]) = v402;
  LODWORD(STACK[0x3E0]) = v379;
  LODWORD(STACK[0x3C0]) = v385;
  if ((v341 & 2) != 0)
  {
    v403 = v379;
  }

  else
  {
    v403 = v385;
  }

  LODWORD(STACK[0x478]) = v403;
  LODWORD(STACK[0x324]) = v384;
  if ((v341 & 2) != 0)
  {
    v404 = v383;
  }

  else
  {
    v404 = v384;
  }

  LODWORD(STACK[0x480]) = v404;
  v405 = LODWORD(STACK[0x6E8]) + 689477892;
  v406 = v356 & 0x40;
  if ((v405 & v356 & 0x40) != 0)
  {
    v406 = -v406;
  }

  LODWORD(STACK[0x600]) = v356;
  STACK[0x7D8] = 0;
  v407 = LODWORD(STACK[0x688]) ^ 0xFED4880F;
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x6D0]) ^ 0x9F1F19A8;
  v408 = STACK[0x710];
  v409 = STACK[0x670];
  v410 = ((((LODWORD(STACK[0x630]) + LODWORD(STACK[0x5C4]) + 1237347944) ^ 0x3B9DF5A3u) + LODWORD(STACK[0x670])) >> 1) + 905658271;
  LODWORD(STACK[0x504]) = v352;
  LODWORD(STACK[0x3F4]) = v351;
  LODWORD(STACK[0x660]) = (((v352 - v409 + 424303844) ^ 0xDF89F07B) - v409) >> 1;
  LODWORD(STACK[0x654]) = v410;
  LODWORD(STACK[0x658]) = (((v356 & 0xFFFFFFBF ^ 0x2949DBCF ^ (v406 + v405)) + v351) >> 1) + 1247306206;
  STACK[0x6D0] = STACK[0x6D8] + 1056;
  LODWORD(STACK[0x650]) = LODWORD(STACK[0x570]) >> 3;
  LODWORD(STACK[0x488]) = v407;
  v411 = LODWORD(STACK[0x690]) ^ v407;
  return (*(STACK[0x668] + 8 * v408))(1615667850, 1615667851);
}

uint64_t sub_10011FA7C@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W8>)
{
  v6 = LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x6F8]);
  v7 = STACK[0x698];
  if (STACK[0x698])
  {
    v8 = STACK[0x540];
  }

  else
  {
    v8 = STACK[0x510];
  }

  v9 = STACK[0x434];
  if (v7)
  {
    v10 = STACK[0x490];
  }

  else
  {
    v9 = STACK[0x42C];
    v10 = STACK[0x4E8];
  }

  if (v7)
  {
    v11 = STACK[0x468];
  }

  else
  {
    v11 = STACK[0x460];
  }

  if (v7)
  {
    v12 = STACK[0x458];
  }

  else
  {
    v12 = STACK[0x700];
  }

  if (v7)
  {
    v13 = STACK[0x440];
  }

  else
  {
    v13 = STACK[0x438];
  }

  LODWORD(STACK[0x540]) = a3 ^ 0xFDD509D6;
  v14 = (a3 ^ 0xFDD509D6) & 7;
  LODWORD(STACK[0x700]) = v14 ^ 2;
  v15 = -(v14 ^ 2) & 7;
  LODWORD(STACK[0x384]) = v14;
  v16 = v14 == 2;
  if (v14 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = 255;
  }

  LODWORD(STACK[0x6F8]) = v15;
  v18 = v17 << v15;
  v19 = v18;
  v20 = (33686018 * v18) & 0xF0775368;
  v21 = v18 ^ 0x378CE146;
  if (v16)
  {
    v21 = -931979591;
  }

  v22 = 2130706432 * v18;
  v23 = STACK[0x6E0];
  if ((v7 & 2) == 0)
  {
    v23 = STACK[0x6B8];
  }

  LODWORD(STACK[0x3BC]) = v23;
  v24 = STACK[0x534];
  if ((v7 & 2) != 0)
  {
    v24 = STACK[0x524];
  }

  LODWORD(STACK[0x3B4]) = v24;
  v25 = STACK[0x450];
  if ((v7 & 2) != 0)
  {
    v26 = v9;
  }

  else
  {
    v26 = STACK[0x450];
  }

  LODWORD(STACK[0x3B0]) = v26;
  if ((v7 & 2) != 0)
  {
    v9 = v25;
  }

  LODWORD(STACK[0x710]) = v9;
  v27 = STACK[0x5E8];
  if ((v7 & 2) != 0)
  {
    v27 = STACK[0x5C8];
  }

  LODWORD(STACK[0x358]) = v27;
  v28 = STACK[0x5A8];
  if ((v7 & 2) != 0)
  {
    v28 = STACK[0x590];
  }

  LODWORD(STACK[0x5C8]) = v28;
  v29 = STACK[0x560];
  if ((v7 & 2) == 0)
  {
    v29 = STACK[0x548];
  }

  LODWORD(STACK[0x534]) = v29;
  v30 = STACK[0x520];
  if ((v7 & 2) != 0)
  {
    v30 = STACK[0x51C];
  }

  LODWORD(STACK[0x460]) = v30;
  v31 = STACK[0x538];
  if ((v7 & 2) == 0)
  {
    v31 = STACK[0x528];
  }

  LODWORD(STACK[0x440]) = v31;
  v32 = STACK[0x678];
  if ((v7 & 2) == 0)
  {
    v32 = STACK[0x608];
  }

  LODWORD(STACK[0x5A8]) = v32;
  v33 = STACK[0x5FC];
  if ((v7 & 2) == 0)
  {
    v33 = STACK[0x5F0];
  }

  LODWORD(STACK[0x390]) = v33;
  if ((v7 & 2) != 0)
  {
    v34 = v11;
  }

  else
  {
    v34 = v12;
  }

  LODWORD(STACK[0x51C]) = v34;
  if ((v7 & 2) != 0)
  {
    v35 = v12;
  }

  else
  {
    v35 = v11;
  }

  LODWORD(STACK[0x5E8]) = v35;
  v36 = STACK[0x574];
  if ((v7 & 2) == 0)
  {
    v36 = STACK[0x56C];
  }

  LODWORD(STACK[0x388]) = v36;
  v37 = STACK[0x580];
  LODWORD(STACK[0x510]) = v10;
  if ((v7 & 2) != 0)
  {
    v37 = v10;
  }

  LODWORD(STACK[0x524]) = v37;
  v38 = STACK[0x578];
  LODWORD(STACK[0x3C8]) = v13;
  if ((v7 & 2) != 0)
  {
    v38 = v13;
  }

  LODWORD(STACK[0x468]) = v38;
  v39 = STACK[0x588];
  LODWORD(STACK[0x3EC]) = v8;
  if ((v7 & 2) != 0)
  {
    v39 = v8;
  }

  LODWORD(STACK[0x3A0]) = v39;
  v40 = STACK[0x6B0];
  v41 = STACK[0x3AC];
  if (STACK[0x6B0])
  {
    v41 = STACK[0x31C];
  }

  LODWORD(STACK[0x538]) = v41;
  if (v40)
  {
    v42 = STACK[0x380];
  }

  else
  {
    v42 = STACK[0x348];
  }

  v43 = STACK[0x340];
  if ((v40 & 1) == 0)
  {
    v43 = STACK[0x33C];
  }

  LODWORD(STACK[0x574]) = v43;
  if (v40)
  {
    v44 = STACK[0x338];
  }

  else
  {
    v44 = STACK[0x320];
  }

  if (v40)
  {
    v45 = STACK[0x328];
  }

  else
  {
    v45 = STACK[0x334];
  }

  v46 = STACK[0x3E8];
  if ((v40 & 1) == 0)
  {
    v46 = v4 ^ LODWORD(STACK[0x414]) ^ 0x71EA40F;
  }

  v47 = v6 ^ 0x4CFFD3F9;
  if (v40)
  {
    v48 = v4 ^ LODWORD(STACK[0x3F8]) ^ 0xFBC8065F;
  }

  else
  {
    v48 = v47;
  }

  v49 = STACK[0x610];
  if (v40)
  {
    v50 = STACK[0x3CC];
  }

  else
  {
    v50 = STACK[0x610];
  }

  v51 = STACK[0x324];
  if ((v40 & 2) == 0)
  {
    v51 = v5;
  }

  LODWORD(STACK[0x458]) = v51;
  v52 = 16843009 * v19;
  LODWORD(STACK[0x380]) = v52 - v20 + 2017175988;
  v53 = v3 ^ 0x3FE0D2F3;
  v54 = v3 ^ 0xF3 ^ ((v3 ^ 0xD2F3) >> 8) ^ ((v3 ^ 0x3FE0D2F3) >> 16) ^ HIBYTE(v3) ^ 0x1D;
  LODWORD(STACK[0x3CC]) = a2 ^ 0xC3D6E8E1;
  v55 = a2 ^ 0xE1 ^ ((a2 ^ 0xE8E1) >> 8) ^ ((a2 ^ 0xC3D6E8E1) >> 16) ^ ((a2 ^ 0xC3D6E8E1) >> 24) ^ 0x44;
  if ((v40 & 2) != 0)
  {
    v46 = v48;
  }

  LODWORD(STACK[0x3AC]) = v46;
  v56 = STACK[0x3B8];
  if ((v40 & 2) != 0)
  {
    v56 = STACK[0x368];
  }

  LODWORD(STACK[0x3E8]) = v56;
  v57 = STACK[0x354];
  if ((v40 & 2) != 0)
  {
    v57 = STACK[0x350];
  }

  LODWORD(STACK[0x414]) = v57;
  v58 = STACK[0x39C];
  if ((v40 & 2) != 0)
  {
    v58 = STACK[0x360];
  }

  LODWORD(STACK[0x434]) = v58;
  v59 = STACK[0x3E0];
  if ((v40 & 2) != 0)
  {
    v59 = STACK[0x3C0];
  }

  LODWORD(STACK[0x450]) = v59;
  v60 = v53 & 0x7F ^ 0x12;
  LODWORD(STACK[0x368]) = (v22 & 0x3C000000 | 0x691CC1) ^ v22 & (a2 ^ 0x79D6E8E1);
  LODWORD(STACK[0x6B8]) = v21 & 0x66 ^ (v21 ^ 0xB9) & (v3 ^ 0xF5) ^ v52;
  LODWORD(STACK[0x348]) = a3 ^ 0x992BA44C;
  LODWORD(STACK[0x490]) = v49 + LODWORD(STACK[0x37C]);
  LODWORD(STACK[0x3B8]) = LODWORD(STACK[0x660]) ^ 0x94045E83;
  v61 = 16843009 * v54;
  v62 = 16843009 * v55;
  LODWORD(STACK[0x5FC]) = (16843009 * v55) ^ 0x312DD4E1;
  LODWORD(STACK[0x5F0]) = (16843009 * v54) ^ 0x8ED76A54;
  v63 = LODWORD(STACK[0x654]) ^ 0xF9D1F74B;
  v64 = LODWORD(STACK[0x658]) ^ 0xDACFC988;
  HIDWORD(v65) = STACK[0x3E4];
  LODWORD(v65) = STACK[0x3E4];
  LODWORD(STACK[0x560]) = v65 >> 31;
  LODWORD(STACK[0x37C]) = v3 ^ 0xA30422AA;
  v66 = STACK[0x554];
  if ((v40 & 2) != 0)
  {
    v66 = STACK[0x538];
  }

  LODWORD(STACK[0x3E0]) = v66;
  LODWORD(STACK[0x590]) = v42;
  LODWORD(STACK[0x520]) = v50;
  if ((v40 & 2) != 0)
  {
    v67 = v50;
  }

  else
  {
    v67 = v42;
  }

  LODWORD(STACK[0x3F8]) = v67;
  LODWORD(STACK[0x3C0]) = v44;
  v68 = STACK[0x574];
  if ((v40 & 2) == 0)
  {
    v68 = v44;
  }

  LODWORD(STACK[0x42C]) = v68;
  v69 = STACK[0x518];
  LODWORD(STACK[0x56C]) = v45;
  if ((v40 & 2) == 0)
  {
    v69 = v45;
  }

  LODWORD(STACK[0x438]) = v69;
  LODWORD(STACK[0x528]) = v53;
  LODWORD(STACK[0x33C]) = v53 & 0xFFFFFF80;
  LODWORD(STACK[0x678]) = v61;
  LODWORD(STACK[0x548]) = v62;
  LODWORD(STACK[0x338]) = v62 ^ v61;
  LODWORD(STACK[0x608]) = v60;
  LODWORD(STACK[0x6E0]) = 16843009 * v60;
  return (*(STACK[0x668] + 8 * a1))();
}

uint64_t sub_1001200AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (STACK[0x698] & 2) == 0;
  v11 = STACK[0x6F0];
  if ((STACK[0x698] & 2) == 0)
  {
    v11 = STACK[0x6C8];
  }

  LODWORD(STACK[0x39C]) = v11;
  v12 = STACK[0x5EC];
  if (!v10)
  {
    v12 = STACK[0x5E0];
  }

  LODWORD(STACK[0x360]) = v12;
  v13 = STACK[0x5D4];
  if (v10)
  {
    v13 = STACK[0x5A0];
  }

  LODWORD(STACK[0x354]) = v13;
  v14 = (STACK[0x6B0] & 2) == 0;
  v15 = STACK[0x590];
  if ((STACK[0x6B0] & 2) == 0)
  {
    v15 = STACK[0x520];
  }

  LODWORD(STACK[0x3E4]) = v15;
  v16 = STACK[0x518];
  if (!v14)
  {
    v16 = STACK[0x56C];
  }

  LODWORD(STACK[0x418]) = v16;
  LODWORD(STACK[0x520]) = v8 ^ 0x89FFC69;
  v17 = (v8 ^ 0x89FFC69) & 0x7F ^ 0x4B;
  v18 = (v8 ^ 0x7D41CF61) & 0xFFFFFF80 ^ 0xE2D30E80;
  v19 = a3 ^ 3;
  v20 = ((a3 ^ 3) - 1009328064) ^ v7;
  LODWORD(STACK[0x6C8]) = v20;
  v21 = (((a3 ^ 3) + 64) ^ v7 ^ ((((a3 ^ 3) - 8128) ^ v7) >> 8) ^ BYTE2(v20) ^ HIBYTE(v20)) ^ 0xB6;
  LODWORD(STACK[0x350]) = v8 ^ 0x7D41CF61;
  v22 = STACK[0x338];
  v23 = LODWORD(STACK[0x338]) ^ 0x98989898;
  v24 = *(&off_1006B4E30 + (a3 ^ 0xC12u));
  STACK[0x4E8] = v24;
  LODWORD(STACK[0x340]) = __ROR4__(*(v24 + 4 * (v23 % 0x101)), 9) ^ 0x6AE8336A;
  v25 = STACK[0x384];
  v26 = v9 ^ 0x8A53A069;
  v27 = ~LODWORD(STACK[0x630]);
  LODWORD(v24) = (v9 ^ 0x8A53A069) & 7;
  v28 = v24 == 0;
  v29 = STACK[0x630] & 0xF7FFFFFF ^ LODWORD(STACK[0x384]) ^ 0x2A4A0A1E ^ v24;
  LODWORD(STACK[0x6F0]) = v24;
  LODWORD(STACK[0x334]) = v29 & (v27 | 0xF7FFFFFF);
  LODWORD(STACK[0x590]) = (1137778425 * LODWORD(STACK[0x608])) ^ LODWORD(STACK[0x358]) ^ (1137778425 * v17);
  LODWORD(v24) = 16843009 * v21;
  v30 = 16843009 * (v8 ^ 0x61 ^ ((v8 ^ 0xCF61) >> 8) ^ ((v8 ^ 0x7D41CF61u) >> 16) ^ ((v8 ^ 0x7D41CF61u) >> 24) ^ 0x35);
  LODWORD(STACK[0x5EC]) = v30;
  LODWORD(STACK[0x5E0]) = v24;
  v31 = v24 ^ v30;
  v32 = v31 ^ v22;
  v31 ^= 0x91919191;
  LODWORD(STACK[0x5D4]) = v31 % 0x101;
  LODWORD(v24) = v31 ^ v23;
  v33 = STACK[0x6E0];
  v34 = (~LOBYTE(STACK[0x6E0]) | 0xFFFFFF00) & (LODWORD(STACK[0x33C]) ^ 0x1AD7A96F) | STACK[0x6E0] & 0x10;
  v35 = STACK[0x540];
  v36 = STACK[0x540] & 0xFFFFFFF8;
  LODWORD(STACK[0x518]) = ((v36 ^ 0xD6FFAB3) & (v25 ^ 0xFFFFFFFD) | STACK[0x540] & 4) ^ LODWORD(STACK[0x534]);
  LODWORD(STACK[0x328]) = v9 ^ 0xFDD509D6;
  v37 = v8 ^ 0x9F92C1A2;
  LODWORD(STACK[0x630]) = v17;
  v38 = 16843009 * v17;
  LODWORD(STACK[0x33C]) = v17 + v18;
  LODWORD(STACK[0x338]) = v17 ^ v18;
  v39 = v17 | v18;
  v40 = (v9 ^ 0x1D5E9DA1u) % 0x202;
  LODWORD(STACK[0x384]) = (v9 ^ 0x1D5E9DA1) + ((((v9 ^ 0xFDD509D6) & 0xFFFFFFF8 ^ 0x37750B31) & ~((v9 ^ 0x8A53A069) & 7) | v9 & 6) ^ 0x280160BE);
  LODWORD(STACK[0x2E8]) = (v9 ^ 0x1D5E9DA1u) % 0x101;
  v41 = STACK[0x348];
  v42 = LODWORD(STACK[0x700]) + LODWORD(STACK[0x6E8]) + 1989351335 * (LODWORD(STACK[0x348]) + (((v36 ^ 0x79D28D0C) & ~v25 & 0xFFFFFFFC | v35 & 3) ^ 0xE2D3DF69));
  v43 = LODWORD(STACK[0x3F4]) ^ v37 ^ v39;
  LODWORD(STACK[0x5A0]) = v24 ^ LODWORD(STACK[0x504]) ^ (v32 >> 5);
  LODWORD(STACK[0x56C]) = v24 ^ v43 ^ (4 * v32);
  v44 = -v26 & 7;
  if (v28)
  {
    v45 = 0;
  }

  else
  {
    v45 = 255;
  }

  v46 = v45 << v44;
  if (v28)
  {
    v47 = 0;
  }

  else
  {
    v47 = ~v46;
  }

  v48 = v40 - 257;
  if (v40 < 0x101)
  {
    v48 = v40;
  }

  LODWORD(STACK[0x504]) = v34 ^ 0x9D293DEF ^ v6 ^ 0xB81E4661 ^ ((v34 ^ LODWORD(STACK[0x528])) << 6) ^ LODWORD(STACK[0x334]) ^ __ROR4__(*(STACK[0x4E8] + 4 * ((v34 ^ 0x9D293DEF) % 0x101)), 9) ^ __ROR4__(*(STACK[0x4E8] + 4 * ((v6 ^ 0xB81E4661) % 0x101)), 9);
  LODWORD(STACK[0x534]) = v41 ^ LODWORD(STACK[0x4F0]) ^ ((v36 ^ 0x6EFF4B62) & (v25 ^ 0xFFFFFFFD) | v35 & 5);
  v49 = STACK[0x520];
  LODWORD(STACK[0x334]) = 948445083 * ((v6 ^ 0xD0EC8455) + LODWORD(STACK[0x520])) + 948445083;
  LODWORD(STACK[0x310]) = a6 ^ LODWORD(STACK[0x6C8]) ^ 0x4ADF3431;
  LODWORD(STACK[0x358]) = LODWORD(STACK[0x51C]) - 1478459475;
  v50 = v35 ^ LODWORD(STACK[0x710]) ^ LODWORD(STACK[0x328]);
  LODWORD(STACK[0x320]) = v7 ^ 0xCCD6E8E1;
  LODWORD(STACK[0x328]) = v46;
  v51 = 16843009 * v46;
  LODWORD(STACK[0x324]) = v51;
  LODWORD(STACK[0x710]) = (v49 & v47) ^ v51;
  v52 = v33 ^ LODWORD(STACK[0x524]) ^ (v33 >> 8) ^ v38;
  v53 = *(&off_1006B4E30 + a3 - 1031);
  LODWORD(STACK[0x6C8]) = v38;
  LODWORD(STACK[0x524]) = v52 ^ (v38 >> 8);
  v54 = v53 - 12;
  v55 = *(&off_1006B4E30 + (a3 ^ 0xA14u)) - 8;
  v56 = *(&off_1006B4E30 + a3 - 2094) - 8;
  LODWORD(STACK[0x2FC]) = *&v55[4 * LODWORD(STACK[0x5D4])] ^ 0xB95BB696;
  LODWORD(STACK[0x6E8]) = v44;
  LODWORD(v53) = *(v53 - 12 + 4 * v44);
  LODWORD(STACK[0x304]) = v53;
  LODWORD(STACK[0x308]) = v53 ^ 0x6520DAED;
  LODWORD(STACK[0x300]) = 147752235 * ((v34 ^ 0x9D293DEF) - (v6 ^ 0xB81E4661));
  LODWORD(v53) = LODWORD(STACK[0x518]) ^ v41;
  LODWORD(STACK[0x31C]) = v53;
  LODWORD(STACK[0x348]) = v53 ^ 0x5D2F93D1;
  v57 = LODWORD(STACK[0x338]) - v37;
  LODWORD(STACK[0x2F0]) = 32 * v37;
  LODWORD(STACK[0x2E4]) = 416202473 * v57;
  LODWORD(STACK[0x2F8]) = 1323839525 * LODWORD(STACK[0x384]) + 1323839525;
  LODWORD(STACK[0x2D8]) = *&v56[4 * LODWORD(STACK[0x2E8])];
  LODWORD(STACK[0x338]) = v42 + 1989351335;
  LODWORD(STACK[0x2E8]) = *&v56[4 * v48] ^ 0x7BA79AA6;
  v58 = LODWORD(STACK[0x654]) ^ 0xFFF55186;
  LODWORD(STACK[0x5D4]) = LODWORD(STACK[0x5EC]) ^ 0x96BBF7EB;
  v59 = LODWORD(STACK[0x660]) ^ 0xE0A04498;
  v60 = LODWORD(STACK[0x658]) ^ 0x5BB1A039;
  LODWORD(STACK[0x384]) = v50;
  LODWORD(STACK[0x51C]) = v50 ^ 0xD9FD3BB;
  STACK[0x2A8] = v56;
  v61 = *&v56[4 * LODWORD(STACK[0x6F8])];
  STACK[0x2B8] = v54;
  LODWORD(STACK[0x2C4]) = *(v54 + 4 * LODWORD(STACK[0x6F0]));
  LODWORD(STACK[0x2C8]) = v61;
  LODWORD(STACK[0x2D0]) = v61 ^ 0x84586559;
  STACK[0x2B0] = v55;
  LODWORD(STACK[0x2C0]) = *&v55[4 * LODWORD(STACK[0x700])];
  return (*(STACK[0x668] + 8 * (v19 ^ 3u)))();
}

uint64_t sub_1001208E0(uint64_t a1, unsigned int a2)
{
  v9 = (STACK[0x698] & 2) == 0;
  v10 = STACK[0x580];
  if ((STACK[0x698] & 2) == 0)
  {
    v10 = STACK[0x510];
  }

  LODWORD(STACK[0x510]) = v10;
  v11 = STACK[0x578];
  if (v9)
  {
    v11 = STACK[0x3C8];
  }

  LODWORD(STACK[0x3F4]) = v11;
  v12 = STACK[0x5B8];
  if (!v9)
  {
    v12 = STACK[0x59C];
  }

  LODWORD(STACK[0x578]) = v12;
  if (v9)
  {
    v13 = STACK[0x3EC];
  }

  else
  {
    v13 = STACK[0x588];
  }

  v14 = LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x380]);
  v15 = LODWORD(STACK[0x354]) + LODWORD(STACK[0x2FC]) + LODWORD(STACK[0x340]);
  v16 = LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x2C4]);
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x2E4]) + LODWORD(STACK[0x3B0]);
  v17 = LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x2F0]);
  v18 = LODWORD(STACK[0x2D8]) ^ 0x84586559;
  v19 = LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x2C8]);
  v20 = LODWORD(STACK[0x4F8]) + LODWORD(STACK[0x300]) + LODWORD(STACK[0x308]) + LODWORD(STACK[0x2D0]);
  LODWORD(STACK[0x5B8]) = LODWORD(STACK[0x2F8]) + LODWORD(STACK[0x388]);
  v21 = LODWORD(STACK[0x390]) + v18 + LODWORD(STACK[0x2E8]);
  v22 = LODWORD(STACK[0x520]) ^ v4;
  v23 = STACK[0x658];
  v24 = LODWORD(STACK[0x658]) ^ 0xAF470FFF;
  if ((v24 & 0x800) != 0)
  {
    v25 = -2048;
  }

  else
  {
    v25 = 2048;
  }

  v26 = (v25 + v24) ^ 0xF6A4C39;
  if ((v26 & 0x800) != 0)
  {
    v27 = -2048;
  }

  else
  {
    v27 = 2048;
  }

  v28 = (v27 + v26) ^ 0xD5ABBC63;
  if ((v28 & 0x800) != 0)
  {
    v29 = -2048;
  }

  else
  {
    v29 = 2048;
  }

  v30 = v29 + v28;
  if ((v30 & 0x800) != 0)
  {
    v31 = -2048;
  }

  else
  {
    v31 = 2048;
  }

  v32 = (STACK[0x6B0] & 2) == 0;
  v33 = STACK[0x3C0];
  if ((STACK[0x6B0] & 2) == 0)
  {
    v33 = STACK[0x574];
  }

  LODWORD(STACK[0x3C0]) = v33;
  v34 = v16 ^ (v15 + 1);
  LODWORD(STACK[0x59C]) = -106311189 * LODWORD(STACK[0x310]);
  v35 = v17 ^ LODWORD(STACK[0x33C]) ^ (32 * LODWORD(STACK[0x33C])) ^ 0x1C3312B0;
  LODWORD(STACK[0x698]) = (452984832 * LODWORD(STACK[0x328])) & STACK[0x320] ^ LODWORD(STACK[0x324]);
  LODWORD(STACK[0x3EC]) = v35 + LODWORD(STACK[0x334]);
  v36 = STACK[0x654];
  LODWORD(STACK[0x574]) = v7 & ((LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x654])) >> 2) ^ LODWORD(STACK[0x37C]) ^ (LODWORD(STACK[0x6F8]) + LODWORD(STACK[0x4FC]) - LODWORD(STACK[0x6E8])) ^ v6;
  v37 = STACK[0x348];
  v38 = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x348]) ^ v7 & (LODWORD(STACK[0x31C]) >> 2) ^ v7 & ((LODWORD(STACK[0x518]) ^ v23) >> 2) ^ v5;
  v39 = STACK[0x560];
  v40 = v7 & (LODWORD(STACK[0x560]) >> 2) ^ LODWORD(STACK[0x440]);
  v41 = STACK[0x3B8];
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x560]) ^ 0x179D709C;
  v42 = v40 ^ a2 ^ v7 & ((v39 ^ 0x179D709C ^ v41 ^ a2) >> 2) ^ v3;
  v43 = v31 + (v30 ^ 0x9360566D);
  v44 = STACK[0x554];
  if (v32)
  {
    v44 = STACK[0x538];
  }

  LODWORD(STACK[0x37C]) = v44;
  v45 = v41 ^ LODWORD(STACK[0x3CC]) ^ 0xAAA92D6A;
  LODWORD(STACK[0x500]) = (LODWORD(STACK[0x680]) >> 2) & 0x1BA4B67D ^ LODWORD(STACK[0x508]) ^ v36 ^ LODWORD(STACK[0x528]) ^ ((v36 ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x528])) >> 2) & 0x1BA4B67D;
  v46 = LODWORD(STACK[0x600]) ^ v23 ^ LODWORD(STACK[0x540]) ^ 0x97CA51D0;
  v47 = v13 ^ v45;
  v48 = ((LODWORD(STACK[0x600]) ^ v13 ^ v47 ^ v46) >> 2) & 0x1BA4B67D;
  v49 = LODWORD(STACK[0x660]) ^ v41;
  LODWORD(STACK[0x354]) = LODWORD(STACK[0x338]) - LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0x554]) = v13;
  LODWORD(STACK[0x538]) = LODWORD(STACK[0x5A0]) ^ 0xDE89B8CB;
  LODWORD(STACK[0x660]) = LODWORD(STACK[0x504]) ^ 0x8F0EF2A1;
  LODWORD(STACK[0x3CC]) = v34;
  LODWORD(STACK[0x580]) = v34 ^ 0x7BC54FF7;
  LODWORD(STACK[0x654]) = v13 ^ 0x239CEE04 ^ v49 ^ v23 ^ v47 ^ v46 ^ v48 ^ v37 ^ v43;
  v50 = LODWORD(STACK[0x678]) ^ ((LODWORD(STACK[0x548]) ^ 0x2D) - ((2 * (LODWORD(STACK[0x548]) ^ 0x2D)) & 0x38) - 100) ^ 0x29;
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x5E0]) ^ 0x2996D08;
  LODWORD(STACK[0x3B0]) = v20 + 1;
  LODWORD(STACK[0x528]) = v21 + 1;
  LODWORD(STACK[0x368]) = v19;
  LODWORD(STACK[0x518]) = v19 ^ 0xA4F6263D;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x534]) ^ 0x33A01A33;
  LODWORD(STACK[0x360]) = v42;
  LODWORD(STACK[0x4FC]) = v42 ^ 0x8E7C37E6;
  LODWORD(STACK[0x520]) = LODWORD(STACK[0x56C]) ^ 0x63975D45;
  LODWORD(STACK[0x390]) = v38;
  LODWORD(STACK[0x540]) = v38 ^ 0x3E24069D;
  LODWORD(STACK[0x4D8]) = v8 + 6233;
  LODWORD(STACK[0x350]) = LODWORD(STACK[0x710]) ^ 0x7D4C4F50;
  v51 = LODWORD(STACK[0x6B8]) ^ 0x20u;
  LODWORD(STACK[0x6C8]);
  LODWORD(STACK[0x700]);
  v52 = *(*(&off_1006B4E30 + (v8 - 4095)) + 205);
  LODWORD(STACK[0x6E8]);
  v53 = (v52 << (v8 - 16)) & 0x8EC01CB4 ^ v52 ^ (2 * (((v52 << (v8 - 16)) & 0x8EC01CB4 ^ v52 ^ 0x518C4201) & STACK[0x6E0]));
  v54 = (v53 ^ 0x8F68C640) & (v14 ^ 0x87AD4A8A);
  v55 = ((v53 ^ 0x518C4201) & STACK[0x710]) >> LODWORD(STACK[0x6F8]);
  v56 = 4 * v50;
  *(STACK[0x6D0] + v56) = v22 ^ (v55 - ((2 * v55) & 0x1F27A4CC) + 261345894) ^ (((v14 & 0xDEE48441 ^ 0x86A40000 ^ v54) << LODWORD(STACK[0x6F0])) - ((2 * ((v14 & 0xDEE48441 ^ 0x86A40000 ^ v54) << LODWORD(STACK[0x6F0]))) & 0xE0EDEE3C) - 260638946) ^ 0x2C960162;
  *(STACK[0x6D8] + v56) = v2 ^ a2 ^ 0xA688BB1E ^ *(STACK[0x708] + 904);
  return (*(STACK[0x668] + 8 * v8))();
}

uint64_t sub_100120EE0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = LODWORD(STACK[0x358]) + LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x388]) = v49;
  v301 = v47 == v46;
  v50 = STACK[0x554];
  v51 = LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x5CC]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x670]);
  v52 = LODWORD(STACK[0x500]) ^ 0xB64C9887;
  LODWORD(STACK[0x348]) = v52;
  v53 = STACK[0x39C];
  v54 = STACK[0x660];
  v55 = v51 ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x5B4]) ^ v52 ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x660]);
  v56 = STACK[0x5C4];
  v57 = STACK[0x3DC];
  v58 = STACK[0x3A0];
  v59 = STACK[0x3BC];
  v60 = STACK[0x3B4];
  v61 = LODWORD(STACK[0x5C4]) ^ LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x654]);
  v62 = LODWORD(STACK[0x524]) ^ 0x2470573F;
  LODWORD(STACK[0x358]) = v62;
  v63 = STACK[0x354];
  v64 = STACK[0x3B0];
  v65 = v61 ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x588]) ^ v62 ^ v49 ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x3B0]);
  v66 = LODWORD(STACK[0x574]) ^ 0xC13F3C2C;
  LODWORD(STACK[0x380]) = v66;
  v67 = v65 ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x520]) ^ v66 ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x540]);
  v68 = STACK[0x6C8];
  v69 = STACK[0x6B8];
  v70 = STACK[0x698];
  v71 = STACK[0x698];
  v72 = STACK[0x700];
  v73 = STACK[0x6F8];
  LODWORD(STACK[0x440]) = ((((v55 ^ (2 * ((v55 ^ 0x48D228C) & STACK[0x6C8])) ^ 0x59E6B5BB) & ~LODWORD(STACK[0x698]) | STACK[0x698] & 0xDD6B9737) ^ 0xDD6B9737) << LODWORD(STACK[0x700])) + (((v55 ^ (2 * ((v55 ^ 0x48D228C) & STACK[0x6C8]))) & 0x9589002C ^ 0x8489000C ^ (v55 ^ (2 * ((v55 ^ 0x48D228C) & STACK[0x6C8])) ^ 0x848D228C) & (LODWORD(STACK[0x6B8]) ^ 0x9589000C)) >> LODWORD(STACK[0x6F8]));
  v74 = STACK[0x6E0];
  v75 = v67 ^ (2 * ((v67 ^ 0x4F61CF22) & STACK[0x6E0]));
  v76 = (v47 & 0xEA81DA15 ^ 0x82814A00 ^ (v75 ^ 0xA5E01537) & v48) << LODWORD(STACK[0x6F0]);
  v77 = STACK[0x6F0];
  v78 = STACK[0x710];
  v79 = v75 & 0xFFA6CF6D ^ 0x4F20CF20 ^ (v75 ^ 0x4F61CF22) & (LODWORD(STACK[0x710]) ^ 0xFFA6CF6D);
  v80 = STACK[0x6E8];
  v81 = v54 ^ (2 * ((LODWORD(STACK[0x504]) ^ 0x1FA0555C) & v68));
  LODWORD(STACK[0x660]) = (v76 - ((2 * v76) & 0x563C82C2) - 1424080543) & 0xF8B496C6 ^ 0x93257564 ^ (((v79 >> LODWORD(STACK[0x6E8])) - ((2 * (v79 >> LODWORD(STACK[0x6E8]))) & 0xFAF85550) + 2105289384) ^ 0x7A374391) & ((v76 - ((2 * v76) & 0x563C82C2) - 1424080543) ^ 0x54E1BE9E);
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x678]) ^ (((((v81 ^ 0x7DA25F85) & ~v70 | v70 & 0x6D0CF878) ^ 0x6D0CF878) << v77) + (((v81 ^ 0x10AEA7FD) & v78) >> v73));
  LODWORD(STACK[0x3DC]) = ((v78 & (v57 ^ (2 * (v68 & v57)))) >> v80) + ((v47 & 0x1447ABFF ^ 0x4050A8A ^ (v57 ^ (2 * (v68 & v57)) ^ 0x1447ABFF) & v48) << v77);
  v82 = v56 ^ (2 * (v68 & v56));
  v83 = (v47 & 0x64358BFA ^ 0x4250A8A ^ (v82 ^ 0x64358BFA) & v48) << v72;
  v85 = LODWORD(STACK[0x5FC]) ^ LODWORD(STACK[0x5F0]);
  LODWORD(STACK[0x504]) = v85;
  LODWORD(STACK[0x3C8]) = v85 ^ (((v82 & a3) >> v73) - ((2 * ((v82 & a3) >> v73)) & 0xFE566000) - 13946880) ^ (v83 - ((2 * v83) & 0x84791FE) + 69454079);
  v86 = v59 ^ (2 * (v74 & v59));
  v87 = ((v71 & 0x35C2451E | (v86 ^ 0x35C2451E) & ~v71) ^ 0x35C2451E) << v72;
  v88 = ((a3 & v86) >> v73) - ((2 * ((a3 & v86) >> v73)) & 0x8B54E0E6) + 1168797811;
  v89 = v50 ^ (2 * (v74 & v50));
  v90 = ((v78 & v89) >> v73) - ((2 * ((v78 & v89) >> v73)) & 0x45995B9A) + 583839181;
  v91 = (v47 & 0x4B1BE2F7 ^ 0x3094282 ^ v48 & (v89 ^ 0x4B1BE2F7)) << v72;
  LODWORD(STACK[0x3B8]) = v90 ^ (v91 - ((2 * v91) & 0xBCD55308) - 563435132);
  LODWORD(STACK[0x3BC]) = LODWORD(STACK[0x5D4]) ^ v88 & 0xDD3BFD93 ^ LODWORD(STACK[0x658]) ^ ((v87 - ((2 * v87) & 0xAD65DDB0) + 1454567128) ^ 0x7476ECB4) & (v88 ^ 0xBA558F8C);
  v92 = v64 ^ (2 * (v64 & v74));
  v93 = (((v92 ^ 0x3141EFF7) & ~v71 | v71 & 0x3141EFF7) ^ 0x3141EFF7) << v77;
  LODWORD(STACK[0x3B0]) = ((v93 - ((2 * v93) & 0x3A0E0704) - 1660484734) ^ 0x62F8FC7D) & ((((v92 & v78) >> v80) - ((2 * ((v92 & v78) >> v80)) & 0x8FC9239C) - 941321778) ^ 0x616F0E64) ^ (v93 - ((2 * v93) & 0x3A0E0704) - 1660484734) & 0x59746055;
  v94 = v58 ^ (2 * (v68 & v58));
  v95 = ((v71 & 0x59B12E8E | (v94 ^ 0x59B12E8E) & ~v71) ^ 0x59B12E8E) << v72;
  v96 = ((v94 ^ 0x6985F211) & a3 ^ v69 & 0x6985F211) >> v80;
  v97 = v60 ^ (2 * (v74 & v60));
  LODWORD(STACK[0x3B4]) = (v96 - ((2 * v96) & 0xA2D02168) + 1365774516) & 0xBD26EEF7 ^ 0x53F911BC ^ ((v95 - ((2 * v95) & 0x3A32C2C6) - 1659281053) ^ 0xDFC0706B) & ((v96 - ((2 * v96) & 0xA2D02168) + 1365774516) ^ 0xAE97EF4B);
  v98 = ((v71 & 0xE7066F6F | (v97 ^ 0xE7066F6F) & ~v71) ^ 0xE7066F6F) << v72;
  LODWORD(STACK[0x3A0]) = (((a3 & v97) >> v80) - ((2 * ((a3 & v97) >> v80)) & 0x67B6F5DE) - 1277461777) ^ 0x297C3A6D ^ (v98 - ((2 * v98) & 0x354E8104) - 1700315006);
  v99 = v74;
  v100 = v63 ^ (2 * (v63 & v74));
  v101 = v53 ^ (2 * (v74 & v53));
  v102 = v101 ^ v78 ^ 0x82B3B0AF;
  if (v301)
  {
    v102 = STACK[0x350];
  }

  v103 = v47;
  v104 = v47 & 0xC65F2C6 ^ 0x4254282 ^ v48 & (v101 ^ 0xC65F2C6);
  v105 = (v47 & 0xEE1B8103 ^ 0x86090002 ^ (v100 ^ 0xEE1B8103) & v48) << v77;
  v106 = LODWORD(STACK[0x4F8]) ^ (2 * (v68 & (LODWORD(STACK[0x560]) ^ 0x33E657A0)));
  LODWORD(STACK[0x4F8]) = ((v102 & 0x792FA56D ^ 0x790C0540 ^ (v102 ^ 0x7D4C4F50) & (v101 ^ 0x792FA56D)) >> v80) + (v104 << v77);
  LODWORD(STACK[0x554]) = (v105 - ((2 * v105) & 0xBD34667A) + 1587163965) & 0x805FFE1A ^ 0x7FBA33FD ^ ((v105 - ((2 * v105) & 0xBD34667A) + 1587163965) ^ 0xA165CCC2) & ((((v78 & v100) >> v73) - ((2 * ((v78 & v100) >> v73)) & 0x83F3F71E) - 1040581745) ^ 0xBE59FA6A);
  v107 = (v106 & 0xBB43E79B ^ 0xA0432718 ^ (v78 ^ 0xBB43E79B) & (v106 ^ 0xA47B273C)) >> v80;
  v108 = (v103 & 0xB57839CB ^ 0x8528088A ^ (v106 ^ 0x11031EF7) & v48) << v77;
  v109 = v107 - 775502057 - ((2 * v107) & 0xA38DA308) + 2669;
  LODWORD(STACK[0x39C]) = v109 & 0xDDE9C4CF ^ 0xF3D6FBB4 ^ (v109 ^ 0x2E392E7B) & ((v108 - ((2 * v108) & 0x1B8F4254) - 1916296918) ^ 0xAFD19A1A);
  v110 = LODWORD(STACK[0x5B4]) ^ (2 * (v68 & STACK[0x5B4]));
  v111 = LODWORD(STACK[0x348]) ^ (2 * (v68 & (LODWORD(STACK[0x500]) ^ 0x3B0E2C2C)));
  LODWORD(STACK[0x5C4]) = (((v71 & 0xEA013387 | (v110 ^ 0xEA013387) & ~v71) ^ 0xEA013387) << v72) + ((v78 & v110) >> v73);
  v112 = (v103 & 0xD0E82E91 ^ 0x80A80A80 ^ (v111 ^ 0x5DAA9A3A) & v48) << v77;
  LODWORD(STACK[0x548]) = (v112 - ((2 * v112) & 0x42E86E4) + 35079026) ^ (((v78 & (v111 ^ 0x8D42B4AB)) >> v80) - ((2 * ((v78 & (v111 ^ 0x8D42B4AB)) >> v80)) & 0xD603B4D6) + 1795283563) ^ 0x69169919;
  v113 = LODWORD(STACK[0x588]) ^ (2 * (STACK[0x588] & v74));
  v114 = LODWORD(STACK[0x4FC]) ^ (2 * ((LODWORD(STACK[0x360]) ^ 0x10AAB719) & v74));
  LODWORD(STACK[0x5B4]) = ((((v113 ^ 0x46DD0DEE) & ~v71 | v71 & 0x46DD0DEE) ^ 0x46DD0DEE) << v77) + ((v113 & v78) >> v73);
  v115 = (v114 ^ 0x1ED680FF) & (v78 ^ 0x94CF4D80);
  v116 = v114 ^ 0x93D25A04;
  v117 = v114 & 0x94CF4D80;
  v118 = LODWORD(STACK[0x384]) ^ 0x47539ED;
  v119 = ((v117 ^ 0x14C60080 ^ v115) >> v80) - ((2 * ((v117 ^ 0x14C60080 ^ v115) >> v80)) & 0x52F55D8E) - 1451577657;
  v120 = (v103 & 0x8D04DAFB ^ 0x85044A8A ^ v116 & v48) << v72;
  LODWORD(STACK[0x384]) = v119 & 0x66A224D3 ^ 0xB97FFFEF ^ ((v120 - ((2 * v120) & 0x548E3FE8) - 1438179340) ^ 0x331AC4D8) & (v119 ^ 0x56855138);
  LODWORD(STACK[0x588]) = (((v71 & 0xFA3698C9 | (LODWORD(STACK[0x51C]) ^ (2 * (v118 & v74)) ^ 0x73DC729F) & ~v71) ^ 0xFA3698C9) << v77) + (((LODWORD(STACK[0x51C]) ^ (2 * (v118 & v74))) & 0x73DCEDB1 ^ 0x1C8E810 ^ (LODWORD(STACK[0x51C]) ^ (2 * (v118 & v74)) ^ 0x89EAEA56) & (v69 ^ 0x73DCED91)) >> v73);
  v121 = LODWORD(STACK[0x3AC]) ^ (2 * (v68 & (LODWORD(STACK[0x3AC]) ^ 0x27460E7D)));
  LODWORD(STACK[0x500]) = v121 ^ 0xA7460E7D;
  LODWORD(STACK[0x4FC]) = v103 & 0xCC338C5E ^ 0x8421080A ^ (v121 ^ 0x6B758223) & v48;
  v122 = LODWORD(STACK[0x5D8]) ^ (2 * (v74 & STACK[0x5D8]));
  v123 = (v69 & 0x2504B335 ^ a3 & (v122 ^ 0x2504B335) ^ 0x20) >> v80;
  v124 = LODWORD(STACK[0x510]) ^ (2 * (v68 & STACK[0x510]));
  v125 = ((v71 & 0xBA377787 | (v122 ^ 0xBA377787) & ~v71) ^ 0xBA377787) << v77;
  LODWORD(STACK[0x5D8]) = (v123 - ((2 * v123) & 0x99BC3944) + 1289624738) ^ (v125 - ((2 * v125) & 0x87737C1A) + 1136246285) ^ 0xF67A2AF;
  v126 = (v103 & 0x5C04A6B2 ^ 0x4040282 ^ (v124 ^ 0x5C04A6B2) & v48) << v77;
  v127 = ((v124 & a3) >> v73) - ((2 * ((v124 & a3) >> v73)) & 0x901ADF82) + 1208840129;
  v128 = LODWORD(STACK[0x670]) ^ (2 * (v68 & STACK[0x670]));
  LODWORD(STACK[0x560]) = v127 & 0x3723C4DF ^ 0xC8DD7FE1 ^ ((v126 - ((2 * v126) & 0x797A6616) + 1019032331) ^ 0xF461082B) & (v127 ^ 0xB7F2903E);
  v129 = (v103 & 0x523EA1DB ^ 0x22C008A ^ (v128 ^ 0x523EA1DB) & v48) << v72;
  v130 = v129 - ((2 * v129) & 0x32F5E886) - 1719995325;
  v131 = 2 * (STACK[0x524] & v74);
  v132 = v131 ^ LODWORD(STACK[0x358]);
  v133 = (v132 ^ 0x918A51B4) & ~v71 | v71 & 0xB5FA068B;
  v134 = ((v133 ^ 0xB5FA068B) << v72) - ((2 * ((v133 ^ 0xB5FA068B) << v72)) & 0xC5BC97C) + 103670974;
  v135 = ((v131 ^ LODWORD(STACK[0x524])) & (v78 ^ 0xC732BB64) ^ v132 & 0xC732BB64 ^ 0x4301324) >> v80;
  LODWORD(STACK[0x670]) = v134 & 0xFC38F6ED ^ 0x7EFEDBE ^ (v134 ^ 0xF9D21B41) & ((v135 - ((2 * v135) & 0x4DB41B9A) - 1495659059) ^ 0xA51D04DF);
  v136 = LODWORD(STACK[0x5A8]) ^ (2 * (v74 & (LODWORD(STACK[0x5A8]) ^ 0x6EEED8A2)));
  v137 = (v103 & 0x65988109 ^ 0x5880008 ^ v48 & (v136 ^ 0x8B7659AB)) << v77;
  LODWORD(STACK[0x524]) = (((v78 & v128) >> v73) + 113128784 - ((2 * ((v78 & v128) >> v73)) & 0xD7C6DFA) + 429) ^ 0x9FC4C2BE ^ v130;
  v138 = LODWORD(STACK[0x534]) ^ 0x64EF3E58;
  LODWORD(STACK[0x51C]) = (v137 - ((2 * v137) & 0xF8C4F124) - 60655470) ^ (((v78 & (v136 ^ 0xEEEED8A2)) >> v80) - ((2 * ((v78 & (v136 ^ 0xEEEED8A2)) >> v80)) & 0xC3B6B922) - 505717615) ^ 0x1DB92403;
  v139 = LODWORD(STACK[0x508]) ^ (2 * (v138 & v74));
  v140 = (v78 ^ 0x84D81A1E) & (v139 ^ 0xD74F246B);
  v141 = v139 & 0x84D81A1E;
  v142 = (v103 & 0x695DFA56 ^ 0x10D4A02 ^ (v139 ^ 0xBE12DE3D) & v48) << v77;
  LODWORD(STACK[0x534]) = (v142 - ((2 * v142) & 0x3161EC2A) - 1733233131) ^ (((v141 ^ 0x8448000A ^ v140) >> v73) - ((2 * ((v141 ^ 0x8448000A ^ v140) >> v73)) & 0xFD61A4A) - 2014638811) ^ 0x1F5BFB30;
  v143 = LODWORD(STACK[0x5CC]) ^ (2 * (v74 & (LODWORD(STACK[0x5CC]) ^ 0x6EEED8A2)));
  v144 = v143 ^ 0xDC885352;
  v145 = LODWORD(STACK[0x368]) ^ 0x706998E9;
  v146 = (a3 & (v143 ^ 0x61BBF173) ^ v69 & 0x8F5529D1) >> v73;
  v147 = v146 - ((2 * v146) & 0x9B05321E) - 847079153;
  v148 = LODWORD(STACK[0x3F0]) ^ (2 * (v68 & (LODWORD(STACK[0x3F0]) ^ 0x1BFC79F5)));
  v149 = (v103 & 0x32668BF0 ^ 0x2240A80 ^ v48 & v144) << v72;
  LODWORD(STACK[0x3AC]) = v147 ^ (v149 - ((2 * v149) & 0xA743B314) + 1403115914);
  v150 = LODWORD(STACK[0x518]) ^ (2 * (v145 & v74));
  v151 = v150 ^ 0x4866B3F5;
  v152 = (v150 & 0x18FFB53F ^ 0x109FB414 ^ (v150 ^ 0x549FBED4) & (v78 ^ 0x18FFB53F)) >> v80;
  v153 = (v103 & 0x1CF90D21 ^ 0x4A90800 ^ v151 & v48) << v77;
  LODWORD(STACK[0x5CC]) = (v153 - ((2 * v153) & 0xBA6402A2) + 1563558225) ^ (v152 - ((2 * v152) & 0x919490B2) + 1221216345) ^ 0x15F84908;
  v154 = (v148 ^ 0x9BFC79F5) & (v69 ^ 0x5AA3BEB7);
  v155 = v148 & 0x5AA3BE97;
  v156 = ((v71 & 0x9A304D70 | (v148 ^ 0x1CC3485) & ~v71) ^ 0x9A304D70) << v72;
  LODWORD(STACK[0x510]) = (((v155 ^ 0x1AA03895 ^ v154) >> v73) - ((2 * ((v155 ^ 0x1AA03895 ^ v154) >> v73)) & 0x6C82B8E) + 56890823) ^ 0x9256485 ^ (v156 - ((2 * v156) & 0xEB7D1D7A) - 172060995);
  v157 = LODWORD(STACK[0x5D0]) ^ (2 * (v68 & STACK[0x5D0]));
  v158 = ((v71 & 0x8CC65FEC | (v157 ^ 0x8CC65FEC) & ~v71) ^ 0x8CC65FEC) << v72;
  v159 = ((v78 & v157) >> v80) - ((2 * ((v78 & v157) >> v80)) & 0x5945FECE) + 748879719;
  LODWORD(STACK[0x5D0]) = v159 & 0x8D6CC199 ^ 0x7EB3FF67 ^ ((v158 - ((2 * v158) & 0xA4C8B026) + 1382307859) ^ 0x20F76675) & (v159 ^ 0xD35D0098);
  v160 = LODWORD(STACK[0x3E0]) ^ (2 * (v74 & (LODWORD(STACK[0x3E0]) ^ 0x4E5C488A)));
  v161 = (v103 & 0x221DB48A ^ 0x20D008A ^ v48 & (v160 ^ 0xEC41FC00)) << v77;
  v162 = (v160 & 0xB073A4D2 ^ 0x80500082 ^ (v69 ^ 0xB073A4F2) & (v160 ^ 0xCE5C488A)) >> v73;
  v163 = LODWORD(STACK[0x56C]) ^ 0x24242424;
  LODWORD(STACK[0x508]) = (v162 - ((2 * v162) & 0xCFC563BA) - 404573731) & 0xC647AA88 ^ 0xFFFAF5FF ^ ((v161 - ((2 * v161) & 0x66265FD4) - 1290588182) ^ 0x8AAB7A9D) & ((v162 - ((2 * v162) & 0xCFC563BA) - 404573731) ^ 0x181D4E22);
  LODWORD(STACK[0x5A8]) = ((((LODWORD(STACK[0x520]) ^ (2 * (v163 & v68)) ^ 0x25263483) & ~v71 | v71 & 0x62954DE2) ^ 0x62954DE2) << v77) + (((LODWORD(STACK[0x520]) ^ (2 * (v163 & v68)) ^ 0x47B37961) & v78) >> v80);
  v164 = LODWORD(STACK[0x3E8]) ^ (2 * (v74 & (LODWORD(STACK[0x3E8]) ^ 0x4E5C488A)));
  v165 = v164 ^ 0x8A32E845;
  v166 = (v164 & 0xD2A1AB11 ^ 0xC2000800 ^ (v69 ^ 0xD2A1AB31) & (v164 ^ 0xCE5C488A)) >> v73;
  v167 = (v103 & 0x446EA0CF ^ 0x42C008A ^ v48 & v165) << v72;
  LODWORD(STACK[0x3F0]) = (v167 - ((2 * v167) & 0x1F2ADF48) + 261451684) & 0xA3B88C47 ^ 0x5FD77FBC ^ ((v166 - ((2 * v166) & 0xBD2ABE36) + 1586847515) ^ 0x2D22CA3) & ((v167 - ((2 * v167) & 0x1F2ADF48) + 261451684) ^ 0xF06A905B);
  v168 = LODWORD(STACK[0x590]) ^ (2 * (STACK[0x590] & v74));
  v169 = v71 & 0x52758C1D | (v168 ^ 0x52758C1D) & ~v71;
  v170 = ((v78 & v168) >> v80) - ((2 * ((v78 & v168) >> v80)) & 0x2A87C8E0) + 356770928;
  LODWORD(STACK[0x590]) = v170 & 0x5E710AC9 ^ 0xB5CFF576 ^ ((((v169 ^ 0x52758C1D) << v72) - ((2 * ((v169 ^ 0x52758C1D) << v72)) & 0xFE864B92) + 2135107017) ^ 0xDECDD0FF) & (v170 ^ 0xEABC1B8F);
  v171 = LODWORD(STACK[0x37C]) ^ (2 * (v68 & (LODWORD(STACK[0x37C]) ^ 0x4E5C488A)));
  v172 = (v103 & 0xFDAB27A3 ^ 0x85A90282 ^ (v171 ^ 0x33F76F29) & v48) << v77;
  v173 = ((v171 ^ 0x3A876B19) & a3 ^ v69 & 0xF4DB2393) >> v73;
  LODWORD(STACK[0x3E8]) = (v172 - ((2 * v172) & 0x219F085C) + 282035246) ^ (v173 - ((2 * v173) & 0xEFF9BD7C) + 2013060798) ^ 0x67335A90;
  v174 = LODWORD(STACK[0x528]) ^ (2 * (STACK[0x528] & v74));
  v175 = (v103 & 0xCA66F41A ^ 0x8224400A ^ (v174 ^ 0xCA66F41A) & v48) << v77;
  v176 = LODWORD(STACK[0x420]) ^ (2 * (v68 & (LODWORD(STACK[0x420]) ^ 0x4E5C488A)));
  LODWORD(STACK[0x56C]) = (((v174 & a3) >> v80) - ((2 * ((v174 & a3) >> v80)) & 0xB18F124E) - 658011865) ^ 0x3A008657 ^ (v175 - 490274816 - ((2 * v175) & 0xC58E1EE0) + 3952);
  LODWORD(STACK[0x420]) = (((v71 & 0x37C98F9C | (v176 ^ 0xF995C716) & ~v71) ^ 0x37C98F9C) << v72) + ((v176 & 0xCF08CC6A ^ 0xCE08480A ^ (v78 ^ 0xCF08CC6A) & (v176 ^ 0xCE5C488A)) >> v73);
  v177 = LODWORD(STACK[0x5C8]) ^ (2 * (v74 & STACK[0x5C8]));
  LODWORD(STACK[0x528]) = ((v78 & v177) >> v80) + ((v103 & 0x1AB6D2D8 ^ 0x2A44288 ^ v48 & (v177 ^ 0x1AB6D2D8)) << v72);
  v178 = LODWORD(STACK[0x3E4]) ^ (2 * (v68 & STACK[0x3E4]));
  LODWORD(STACK[0x3E4]) = (((v71 & 0x6CE741D4 | (v178 ^ 0x6CE741D4) & ~v71) ^ 0x6CE741D4) << v77) + (((v178 ^ 0xD73DC87) & a3 ^ v69 & 0xD73DC87) >> v73);
  v179 = LODWORD(STACK[0x538]) ^ (2 * ((LODWORD(STACK[0x5A0]) ^ 0x484848) & v68));
  LODWORD(STACK[0x5C8]) = ((((v179 ^ 0x5BCA9977) & ~v71 | v71 & 0x850B69F4) ^ 0x850B69F4) << v77) + ((v179 & 0x94AEEF59 ^ 0x9480E001 ^ (v179 ^ 0xDEC1F083) & (v78 ^ 0x94AEEF59)) >> v73);
  v180 = LODWORD(STACK[0x430]) ^ (2 * (v74 & STACK[0x430]));
  v181 = LODWORD(STACK[0x390]) ^ 0x6D79DD69;
  v182 = a3 & (v180 ^ 0x64A3FC1A) ^ v69 & 0x64A3FC1A;
  v183 = (v103 & 0x960B3BAB ^ 0x86090A8A ^ v48 & (v180 ^ 0x960B3BAB)) << v72;
  v184 = (v182 >> v80) - ((2 * (v182 >> v80)) & 0x41EB9B80) + 552979904;
  LODWORD(STACK[0x430]) = v184 & 0x39471D07 ^ 0xE6FDEFF8 ^ (v184 ^ 0xDF0A323F) & ((v183 - ((2 * v183) & 0xCB7A620E) - 440585977) ^ 0x2305D3FF);
  v185 = LODWORD(STACK[0x540]) ^ (2 * (v181 & v74));
  v186 = ((v185 & 0xBD38296A ^ 0x91180960 ^ (v185 ^ 0xD35DDBF4) & (v69 ^ 0xBD38294A)) >> v73) - ((2 * ((v185 & 0xBD38296A ^ 0x91180960 ^ (v185 ^ 0xD35DDBF4) & (v69 ^ 0xBD38294A)) >> v73)) & 0x65994244) - 1295212254;
  v187 = (v103 & 0x321D1909 ^ 0x20D0808 ^ (v185 ^ 0xE140C2FD) & v48) << v77;
  LODWORD(STACK[0x5A0]) = v186 & 0xD0BF8905 ^ 0xBFCCF7FA ^ ((v187 - ((2 * v187) & 0x88B9105C) - 1000568786) ^ 0xEB1CFED4) & (v186 ^ 0x4D335EDD);
  v188 = LODWORD(STACK[0x3F8]) ^ (2 * (v68 & STACK[0x3F8]));
  LODWORD(STACK[0x3F8]) = (((v71 & 0x25A6F81E | (v188 ^ 0x25A6F81E) & ~v71) ^ 0x25A6F81E) << v72) + ((v78 & v188) >> v80);
  v189 = LODWORD(STACK[0x578]) ^ (2 * (v68 & STACK[0x578]));
  v190 = (v103 & 0xB6EF4508 ^ 0x86AD4008 ^ (v189 ^ 0xB6EF4508) & v48) << v77;
  v191 = LODWORD(STACK[0x414]) ^ (2 * (v74 & STACK[0x414]));
  LODWORD(STACK[0x540]) = (v190 - ((2 * v190) & 0xDB216B20) - 309283440) & 0x3BE7F74F ^ 0xED98BDB0 ^ ((((v78 & v189) >> v80) - ((2 * ((v78 & v189) >> v80)) & 0xE462857C) + 1915830974) ^ 0xB6294A0E) & ((v190 - ((2 * v190) & 0xDB216B20) - 309283440) ^ 0x126F4A6F);
  v192 = ((v71 & 0x65A2BCE | (v191 ^ 0x65A2BCE) & ~v71) ^ 0x65A2BCE) << v72;
  v193 = a3 & (v191 ^ 0x2B1BBA93) ^ v69 & 0x2B1BBA93;
  v194 = LODWORD(STACK[0x574]) ^ 0x5B134E5C;
  v195 = (v193 >> v73) - ((2 * (v193 >> v73)) & 0x14082C70) + 168039992;
  LODWORD(STACK[0x414]) = v195 & 0xC612FB68 ^ 0x3BED16BF ^ ((v192 - ((2 * v192) & 0x82150776) - 1056275525) ^ 0xF8E7872C) & (v195 ^ 0xF5FBE9C7);
  v196 = LODWORD(STACK[0x380]) ^ (2 * (v194 & v68));
  v197 = (v103 & 0x35CB9013 ^ 0x5890002 ^ (v196 ^ 0xAFE7E263) & v48) << v72;
  v198 = (((v196 ^ 0x9A2C7270) & v78) >> v73) - ((2 * (((v196 ^ 0x9A2C7270) & v78) >> v73)) & 0x4627E6BA) + 588510045;
  LODWORD(STACK[0x578]) = v198 & 0xC906675D ^ 0x37FBFBFF ^ ((v197 - ((2 * v197) & 0x65221D4) - 2094460694) ^ 0xB5D08848) & (v198 ^ 0xDCEC0CA2);
  v199 = LODWORD(STACK[0x3C0]) ^ (2 * (v74 & (LODWORD(STACK[0x3C0]) ^ 0x20EC8E3F)));
  v200 = v71 & 0x31EAD7C4 | (v199 ^ 0x110659FB) & ~v71;
  v201 = (a3 & (v199 ^ 0x105BAF5) ^ v69 & 0x21E934CA) >> v80;
  LODWORD(STACK[0x3E0]) = (v201 - ((2 * v201) & 0x90C72718) - 932998260) & 0xFCE3FA33 ^ 0xCB7F97CC ^ ((((v200 ^ 0x31EAD7C4) << v77) - ((2 * ((v200 ^ 0x31EAD7C4) << v77)) & 0x3B94D5F8) + 499804924) ^ 0x1ED66F30) & ((v201 - ((2 * v201) & 0x90C72718) - 932998260) ^ 0x379C6C73);
  v202 = LODWORD(STACK[0x388]) ^ (2 * (STACK[0x388] & v68));
  v203 = LODWORD(STACK[0x3CC]) ^ 0x23849384;
  v204 = (((v202 ^ 0x33243E02) & ~v71 | v71 & 0x33243E02) ^ 0x33243E02) << v72;
  v205 = ((v202 & v78) >> v73) - ((2 * ((v202 & v78) >> v73)) & 0xC2C67F82) + 1633894337;
  LODWORD(STACK[0x574]) = v205 & 0x9D00A4FC ^ 0x63FF7FC3 ^ ((v204 - ((2 * v204) & 0x5873844C) + 741982758) ^ 0x4EC69925) & (v205 ^ 0x9E9CC03E);
  v206 = LODWORD(STACK[0x43C]) ^ (2 * (v74 & (LODWORD(STACK[0x43C]) ^ 0x20EC8E3F)));
  LODWORD(STACK[0x43C]) = ((v206 & 0x4F5BB4EC ^ 0x48842C ^ (v69 ^ 0x4F5BB4CC) & (v206 ^ 0x20EC8E3Fu)) >> v80) + ((v103 & 0xA12B78CC ^ 0x81294888 ^ v48 & (v206 ^ 0x81C7F6F3)) << v77);
  v207 = LODWORD(STACK[0x580]) ^ (2 * (v203 & v68));
  v208 = (((v207 ^ 0x54636BBE) & ~v71 | v71 & 0xC22B7CD) ^ 0xC22B7CD) << v72;
  v209 = LODWORD(STACK[0x42C]) ^ (2 * (v74 & (LODWORD(STACK[0x42C]) ^ 0x20EC8E3F)));
  v210 = (v207 & 0x5B3479D2 ^ 0x58005852 ^ (v207 ^ 0x5841DC73) & (v78 ^ 0x5B3479D2)) >> v80;
  LODWORD(STACK[0x580]) = (v210 - ((2 * v210) & 0x634153D0) - 1314870808) & 0x8ED90A64 ^ 0xF1A6FDFB ^ ((v208 - ((2 * v208) & 0x4A7BF63C) - 1522664674) ^ 0xD41B0E85) & ((v210 - ((2 * v210) & 0x634153D0) - 1314870808) ^ 0x4E5F5617);
  v211 = LODWORD(STACK[0x5E8]) ^ (2 * (v74 & STACK[0x5E8]));
  LODWORD(STACK[0x5E8]) = ((v103 & 0x1CEBE4E ^ 0x18C0A0A ^ v48 & (v209 ^ 0x21223071)) << v77) + ((v209 & 0x410B427A ^ 0x8023A ^ (v69 ^ 0x410B425A) & (v209 ^ 0x20EC8E3Fu)) >> v73);
  v212 = (((v71 & 0x36D49C2C | (v211 ^ 0x36D49C2C) & ~v71) ^ 0x36D49C2C) << v77) + ((a3 & v211) >> v73);
  v213 = LODWORD(STACK[0x448]) ^ (2 * (v68 & (LODWORD(STACK[0x448]) ^ 0x20EC8E3F)));
  v214 = (v78 ^ 0x25CBD99A) & (v213 ^ 0x20EC8E3F);
  v215 = v213 & 0x25CBD99A;
  v216 = (v103 & 0x412C1745 ^ 0x12C0200 ^ (v213 ^ 0x61C0997A) & v48) << v72;
  LODWORD(STACK[0x448]) = (v216 - ((2 * v216) & 0x90B78D16) - 933509493) ^ (((v215 ^ 0x20C8881A ^ v214) >> v80) - ((2 * ((v215 ^ 0x20C8881A ^ v214) >> v80)) & 0x8F29022C) + 1200914710) ^ 0x8FCF479D;
  v217 = LODWORD(STACK[0x680]) ^ (2 * (v99 & STACK[0x680]));
  v218 = ((v78 & v217) >> v80) - ((2 * ((v78 & v217) >> v80)) & 0x2172C728) + 280585108;
  v219 = (v103 & 0x95093D04 ^ 0x85090800 ^ v48 & (v217 ^ 0x95093D04)) << v72;
  v220 = (v219 - ((2 * v219) & 0x84FB1B38) + 1115524508) ^ v218 ^ 0x52C4EE08;
  LODWORD(STACK[0x3C0]) = v220;
  v221 = LODWORD(STACK[0x418]) ^ (2 * (v68 & (LODWORD(STACK[0x418]) ^ 0x34E0ABFE)));
  v222 = ((v71 & 0xF744079F | (v221 ^ 0x43A4AC61) & ~v71) ^ 0xF744079F) << v77;
  v223 = v69;
  v224 = ((v221 ^ 0x32E1F52C) & a3 ^ v69 & 0x86015ED2) >> v73;
  LODWORD(STACK[0x42C]) = (v224 - ((2 * v224) & 0x1990AA6A) - 1933028043) ^ 0x399B3FD6 ^ (v222 - ((2 * v222) & 0x6AA6D5C6) - 1252824349);
  v225 = STACK[0x600];
  v226 = LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x600]) ^ (2 * ((LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x600]) ^ 0x4AA582F8) & v99));
  v227 = (v226 & 0x1E65A26E ^ 0xA258268 ^ (v226 ^ 0x4AA582F8) & (v69 ^ 0x1E65A24Eu)) >> v80;
  v228 = v227 - ((2 * v227) & 0x130A5ACA) + 159722853;
  v229 = (v103 & 0x80D4F859 ^ 0x80844808 ^ (v226 ^ 0xCA717AA1) & v48) << v72;
  v230 = LODWORD(STACK[0x434]) ^ (2 * (v68 & (LODWORD(STACK[0x434]) ^ 0x34E0ABFE)));
  v231 = ((v71 & 0xC90DDE6 | (v230 ^ 0xB8707618) & ~v71) ^ 0xC90DDE6) << v77;
  v232 = (v229 - ((2 * v229) & 0x9C24CF62) + 1309829041) ^ v228 ^ 0x47974AD4;
  LODWORD(STACK[0x418]) = v232;
  v233 = (v230 & 0xA328B420 ^ 0xA020A020 ^ (v78 ^ 0xA328B420) & (v230 ^ 0xB4E0ABFE)) >> v73;
  LODWORD(STACK[0x434]) = (v233 - ((2 * v233) & 0x645A9C18) + 841829900) & 0x6910CCC5 ^ 0xB6EF7F3E ^ ((v231 - ((2 * v231) & 0x47473D10) + 597925512) ^ 0xB54CADB2) & ((v233 - ((2 * v233) & 0x645A9C18) + 841829900) ^ 0xCDD2B1F3);
  v234 = LODWORD(STACK[0x5B8]) ^ (2 * (STACK[0x5B8] & v99));
  v235 = v71;
  v236 = (((v234 ^ 0xBFBD086) & ~v71 | v71 & 0xBFBD086) ^ 0xBFBD086) << v72;
  v237 = (((v234 & v78) >> v80) - ((2 * ((v234 & v78) >> v80)) & 0xF29551D6) - 112547605) ^ 0xDEEA85E5 ^ (v236 - ((2 * v236) & 0x4F405A1C) + 664808718);
  LODWORD(STACK[0x380]) = v237;
  v238 = LODWORD(STACK[0x438]) ^ (2 * (v68 & (LODWORD(STACK[0x438]) ^ 0x34E0ABFE)));
  v239 = (v103 & 0x43621875 ^ 0x3200800 ^ (v238 ^ 0xF782B38B) & v48) << v77;
  v240 = ((v238 ^ 0xC819DC24) & a3 ^ v69 & 0x7CF977DA) >> v73;
  LODWORD(STACK[0x5B8]) = (v239 - ((2 * v239) & 0x8BA04CAA) + 1171269205) ^ (v240 - ((2 * v240) & 0xA0D3784) + 84319170) ^ 0x40D6BD97;
  v241 = (((v71 & 0x10758CCB | (v225 ^ (2 * (v68 & v225)) ^ 0x10758CCB) & ~v71) ^ 0x10758CCB) << v77) + ((v78 & (v225 ^ (2 * (v68 & v225)))) >> v73);
  LODWORD(STACK[0x438]) = v241;
  v242 = LODWORD(STACK[0x470]) ^ (2 * (v99 & (LODWORD(STACK[0x470]) ^ 0x34E0ABFE)));
  v243 = v242 ^ 0x4A61AB06;
  v244 = (v242 & 0x4E0584C ^ 0x4E0084C ^ (v69 ^ 0x4E0586C) & (v242 ^ 0xB4E0ABFE)) >> v80;
  v245 = v103;
  v246 = (v103 & 0xFE8100F8 ^ 0x86810088 ^ v48 & v243) << v72;
  LODWORD(STACK[0x600]) = (v246 - ((2 * v246) & 0xA8A554FE) + 1414703743) ^ (v244 - ((2 * v244) & 0x53994CAC) + 701277782) ^ 0x7D9E0C29;
  v247 = STACK[0x3C8];
  LODWORD(STACK[0x388]) = LODWORD(STACK[0x3C8]) ^ 0xDC6ADED2;
  v248 = STACK[0x3B8];
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x3B8]) ^ 0xFCA60449;
  v249 = v248 ^ v247;
  v250 = STACK[0x5EC];
  v251 = STACK[0x5E0];
  v252 = LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x5E0]);
  LODWORD(STACK[0x3B8]) = v252;
  v253 = STACK[0x3BC];
  LODWORD(STACK[0x3DC]) = LODWORD(STACK[0x3BC]) ^ 0x625D790D;
  v254 = v249 ^ v252 ^ v253;
  v255 = STACK[0x3B0];
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x3B0]) ^ 0xBF8F9FAA;
  v256 = ((v254 ^ v255 ^ LODWORD(STACK[0x59C]) ^ 0xE689CB0F) & 0x2794DCD8 ^ 0xE17A68BA) & ((v254 ^ v255 ^ LODWORD(STACK[0x59C]) ^ 0xE689CB0F) & 0xD86B2327 ^ 0xFFF4DDDC) | (v254 ^ v255 ^ LODWORD(STACK[0x59C]) ^ 0xE689CB0F) & 0x18010305;
  v257 = STACK[0x678];
  v258 = STACK[0x5FC];
  LODWORD(STACK[0x470]) = LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x5FC]) ^ 0x5755500A;
  LODWORD(STACK[0x3CC]) = v212;
  v259 = STACK[0x3AC];
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x3AC]) ^ 0x9E234085;
  v260 = STACK[0x4F8];
  v261 = STACK[0x3A0];
  v262 = v259 ^ LODWORD(STACK[0x528]) ^ v232 ^ LODWORD(STACK[0x5C4]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x51C]) ^ v220 ^ v241 ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x554]) ^ (v212 - ((2 * v212) & 0xCF7BD20C) - 406984442) ^ LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x3A0]);
  v263 = STACK[0x39C];
  v264 = STACK[0x3B4];
  v265 = STACK[0x384];
  LODWORD(STACK[0x654]) = v262 ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x670]) ^ v237 ^ LODWORD(STACK[0x5CC]) ^ LODWORD(STACK[0x574]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x580]) ^ v256 ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x5A0]) ^ 0x8A701F21;
  v266 = LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x5F0]) ^ 0x9662235F;
  v267 = (LODWORD(STACK[0x3EC]) - ((2 * LODWORD(STACK[0x3EC])) & 0xA8F26A52) + 1417229609) ^ LODWORD(STACK[0x5D4]);
  LODWORD(STACK[0x5F0]) = LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x5D4]) ^ v251 ^ 0xF9CA7A09;
  LODWORD(STACK[0x5E0]) = LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x468]) ^ 0xD9823A5E;
  v268 = LODWORD(STACK[0x478]) ^ v257 ^ 0x18B5490B;
  v269 = LODWORD(STACK[0x480]) ^ v250;
  v270 = LODWORD(STACK[0x458]) ^ v250 ^ 0x6FC23E7C;
  v271 = LODWORD(STACK[0x688]) ^ 0x379F033E;
  LODWORD(STACK[0x5EC]) = (v266 - ((2 * v266) & 0x3801F398) + 469825996) ^ v258;
  LODWORD(STACK[0x5FC]) = (v268 - ((2 * v268) & 0x3801F398) + 469825996) ^ v258;
  v272 = 2 * (v99 & (LODWORD(STACK[0x6A8]) ^ 0x12521719)) - ((4 * (v99 & (LODWORD(STACK[0x6A8]) ^ 0x12521719))) & 0x5BC37194);
  v273 = (2 * (v68 & v271) - ((4 * (v68 & v271)) & 0x92971660) - 917796047) ^ LODWORD(STACK[0x488]);
  v274 = STACK[0x658];
  v275 = LODWORD(STACK[0x658]) ^ (v267 - ((2 * v267) & 0xA3947CB6) + 1372208731);
  LODWORD(STACK[0x5D4]) = LODWORD(STACK[0x658]) ^ (v270 - ((2 * v270) & 0xA3947CB6) + 1372208731);
  v276 = v274 ^ ((v269 ^ 0x6FC23E7C) - ((2 * (v269 ^ 0x6FC23E7C)) & 0xA3947CB6) + 1372208731);
  LODWORD(STACK[0x678]) = ((v48 & ((v272 - 1377716021) ^ LODWORD(STACK[0x634]))) << v72) | ((a3 & ((v272 - 1377716021) ^ LODWORD(STACK[0x634]))) >> v73);
  LODWORD(STACK[0x488]) = ((v273 & ~v235) << v77) | ((v78 & v273) >> v80);
  v277 = LODWORD(STACK[0x4C0]) ^ (2 * (v68 & STACK[0x4C0]));
  LODWORD(STACK[0x520]) = ((v277 & v48) << v77) | ((v277 & a3) >> v73);
  v278 = LODWORD(STACK[0x4B0]) ^ (2 * (v99 & STACK[0x4B0]));
  v279 = LODWORD(STACK[0x614]) ^ 0x65CAEEF0;
  LODWORD(STACK[0x680]) = ((v278 & ~v235) << v72) + ((v78 & v278) >> v80);
  LODWORD(STACK[0x458]) = (2 * (v99 & v279) - ((4 * (v99 & v279)) & 0x7F592230) - 1079209703) ^ LODWORD(STACK[0x498]);
  v280 = LODWORD(STACK[0x4CC]) ^ (2 * (v68 & STACK[0x4CC]));
  v281 = LODWORD(STACK[0x6C0]) ^ (2 * (v68 & STACK[0x6C0]));
  LODWORD(STACK[0x4CC]) = v78 & v281;
  LODWORD(STACK[0x504]) = v281 & v48;
  LODWORD(STACK[0x4C0]) = ((v78 & v281) >> v73) ^ ((v281 & v48) << v72);
  v282 = LODWORD(STACK[0x4C8]) ^ (2 * (v99 & STACK[0x4C8]));
  LODWORD(STACK[0x480]) = ((v78 & v280) >> v73) + ((v280 & v48) << v72);
  v283 = LODWORD(STACK[0x4A8]) ^ 0xA7AC80B;
  LODWORD(STACK[0x688]) = ((v282 & ~v235) << v77) + ((a3 & v282) >> v80);
  v284 = (2 * (v99 & v283) - ((4 * (v99 & v283)) & 0x81CCA094) + 1088835659) ^ LODWORD(STACK[0x4B8]);
  LODWORD(STACK[0x3EC]) = ((v284 & ~v235) << v72) + ((a3 & v284) >> v73);
  v285 = LODWORD(STACK[0x6A0]) ^ (2 * (v68 & STACK[0x6A0]));
  LODWORD(STACK[0x538]) = ((v78 & v285) >> v80) + ((v285 & v48) << v77);
  v286 = (2 * (v99 & (LODWORD(STACK[0x690]) ^ 0x3DE7837)) - ((4 * (v99 & (LODWORD(STACK[0x690]) ^ 0x3DE7837))) & 0x5A6FBF84) - 1388847166) ^ LODWORD(STACK[0x690]);
  LODWORD(STACK[0x4F0]) = v245;
  v287 = (2 * (v68 & (LODWORD(STACK[0x4D4]) ^ 0xE3D2541)) - ((4 * (v68 & (LODWORD(STACK[0x4D4]) ^ 0xE3D2541))) & 0x6E9801B0) - 1219755815) ^ LODWORD(STACK[0x4C4]);
  LODWORD(STACK[0x4B8]) = ((v286 & 0xF8091536 ^ 0x28090534 ^ (v78 ^ 0xF8091536) & (v286 ^ 0x2EE9A7F5)) >> v73) + ((v286 & 0xFBFC049E ^ 0x2AE80494 ^ (v245 ^ 0x7C514E14) & (v286 ^ 0x2EE9A7F5)) << v77);
  LODWORD(STACK[0x340]) = a3;
  LODWORD(STACK[0x3B0]) = ((v287 & ~v235) << v72) + ((v287 & a3) >> v80);
  v288 = (2 * (v68 & (LODWORD(STACK[0x620]) ^ 0x977D503)) - ((4 * (v68 & (LODWORD(STACK[0x620]) ^ 0x977D503))) & 0x42CB0B2C) + 560301463) ^ LODWORD(STACK[0x620]);
  LODWORD(STACK[0x4D4]) = ((v288 & 0x6692AD2 ^ 0x90 ^ (v235 ^ 0xF996D52D) & (v288 ^ 0x28125094)) << v72) + ((v288 & 0xD733123 ^ 0x8121000 ^ (v288 ^ 0x28125094) & (v223 ^ 0xD733103u)) >> v80);
  v289 = (2 * (v99 & (LODWORD(STACK[0x618]) ^ 0x3D87DF56)) - ((4 * (v99 & (LODWORD(STACK[0x618]) ^ 0x3D87DF56))) & 0x4831DB5C) + 605613487) ^ LODWORD(STACK[0x618]);
  v290 = LODWORD(STACK[0x4D0]) ^ (2 * (v99 & STACK[0x4D0]));
  LODWORD(STACK[0x3BC]) = ((v289 & 0x73461BFA ^ 0x110612F8 ^ (v78 ^ 0x73461BFA) & (v289 ^ 0x199F32F9)) >> v73) | ((v289 & 0xADCFC40B ^ 0x98F0009 ^ (v245 ^ 0x2A628E81) & (v289 ^ 0x199F32F9)) << v77);
  LODWORD(STACK[0x518]) = ((v290 & ~v235) << v72) ^ ((a3 & v290) >> v80);
  v291 = LODWORD(STACK[0x62C]) ^ (2 * (v68 & STACK[0x62C]));
  LODWORD(STACK[0x690]) = ((v78 & v291) >> v73) + ((v291 & v48) << v77);
  v292 = 739098045 * ((LODWORD(STACK[0x4FC]) << v72) + ((v78 & STACK[0x500]) >> v80) + LODWORD(STACK[0x510])) + 739098045;
  v293 = 2120131217 * (v292 ^ HIWORD(v292) ^ ((v292 ^ HIWORD(v292)) >> 8));
  v294 = -807951563 * (v293 ^ HIWORD(v293) ^ ((v293 ^ HIWORD(v293)) >> 8));
  v295 = -207255859 * (v294 - HIWORD(v294) + ((v294 - HIWORD(v294)) >> 8));
  v296 = ((v295 + 629147127 + (v295 & 0x258005F7) - 2 * (v295 & 0x258005F7)) & v295) + v260 - v295;
  v297 = LODWORD(STACK[0x59C]) ^ 0x98989898;
  v298 = LODWORD(STACK[0x3B8]) ^ 0x91919191;
  v299 = STACK[0x6D0];
  v300 = (v295 - HIWORD(v295) - ((v295 - HIWORD(v295)) >> 8)) ^ STACK[0x6D0];
  LODWORD(STACK[0x658]) = v300;
  v301 = (v300 & 1) == 0;
  if (v300)
  {
    v302 = v298;
  }

  else
  {
    v302 = v297;
  }

  LODWORD(STACK[0x620]) = v302;
  v303 = STACK[0x388];
  if (v301)
  {
    v304 = v298;
  }

  else
  {
    v304 = STACK[0x388];
  }

  LODWORD(STACK[0x4B0]) = v304;
  v305 = STACK[0x3DC];
  if (!v301)
  {
    v303 = STACK[0x3DC];
  }

  LODWORD(STACK[0x4F8]) = v303;
  if (v301)
  {
    v306 = v305;
  }

  else
  {
    v306 = v297;
  }

  v307 = STACK[0x3C8];
  if (v301)
  {
    v308 = STACK[0x3C8];
  }

  else
  {
    v308 = v264;
  }

  LODWORD(STACK[0x4D0]) = v308;
  v309 = STACK[0x390];
  if (v301)
  {
    v307 = STACK[0x390];
  }

  LODWORD(STACK[0x510]) = v307;
  if (v301)
  {
    v309 = v261;
  }

  LODWORD(STACK[0x478]) = v309;
  if (v301)
  {
    v310 = v264;
  }

  else
  {
    v310 = v261;
  }

  LODWORD(STACK[0x4C8]) = v310;
  if (v301)
  {
    v311 = v296;
  }

  else
  {
    v311 = v263;
  }

  LODWORD(STACK[0x4FC]) = v311;
  v312 = STACK[0x5C4];
  if (v301)
  {
    v313 = v263;
  }

  else
  {
    v313 = STACK[0x5C4];
  }

  LODWORD(STACK[0x500]) = v313;
  v314 = STACK[0x554];
  if (!v301)
  {
    v312 = STACK[0x554];
  }

  LODWORD(STACK[0x498]) = v312;
  if (!v301)
  {
    v314 = v296;
  }

  LODWORD(STACK[0x4C4]) = v314;
  v315 = STACK[0x5B4];
  if (v301)
  {
    v316 = STACK[0x5B4];
  }

  else
  {
    v316 = v265;
  }

  LODWORD(STACK[0x554]) = v316;
  v317 = STACK[0x548];
  if (v301)
  {
    v315 = STACK[0x548];
  }

  LODWORD(STACK[0x5B4]) = v315;
  v318 = STACK[0x588];
  if (v301)
  {
    v319 = STACK[0x588];
  }

  else
  {
    v319 = v317;
  }

  if (v301)
  {
    v320 = v265;
  }

  else
  {
    v320 = STACK[0x588];
  }

  LODWORD(STACK[0x4A8]) = v320;
  v321 = STACK[0x560];
  v322 = STACK[0x524];
  if (v301)
  {
    v323 = STACK[0x560];
  }

  else
  {
    v323 = STACK[0x524];
  }

  LODWORD(STACK[0x614]) = v323;
  v324 = STACK[0x5D8];
  if (v301)
  {
    v321 = STACK[0x5D8];
  }

  LODWORD(STACK[0x548]) = v321;
  v325 = STACK[0x670];
  if (v301)
  {
    v326 = v322;
  }

  else
  {
    v326 = STACK[0x670];
  }

  if (v301)
  {
    v324 = STACK[0x670];
  }

  LODWORD(STACK[0x524]) = v324;
  v327 = STACK[0x5CC];
  v328 = STACK[0x3F4];
  if (v301)
  {
    v329 = STACK[0x3F4];
  }

  else
  {
    v329 = STACK[0x5CC];
  }

  LODWORD(STACK[0x670]) = v329;
  v330 = STACK[0x534];
  if (v301)
  {
    v328 = STACK[0x534];
  }

  LODWORD(STACK[0x5C4]) = v328;
  v331 = STACK[0x51C];
  if (!v301)
  {
    v327 = STACK[0x51C];
  }

  LODWORD(STACK[0x5CC]) = v327;
  if (v301)
  {
    v332 = v331;
  }

  else
  {
    v332 = v330;
  }

  v333 = STACK[0x5D0];
  v334 = STACK[0x56C];
  if (v301)
  {
    v335 = STACK[0x56C];
  }

  else
  {
    v335 = STACK[0x5D0];
  }

  LODWORD(STACK[0x6C8]) = v335;
  v336 = STACK[0x590];
  if (v301)
  {
    v334 = STACK[0x590];
  }

  LODWORD(STACK[0x618]) = v334;
  v337 = STACK[0x5A8];
  if (v301)
  {
    v336 = STACK[0x5A8];
  }

  LODWORD(STACK[0x62C]) = v336;
  if (!v301)
  {
    v333 = v337;
  }

  LODWORD(STACK[0x51C]) = v333;
  v338 = STACK[0x3F0];
  v339 = STACK[0x3E8];
  if (v301)
  {
    v340 = STACK[0x3F0];
  }

  else
  {
    v340 = STACK[0x3E8];
  }

  LODWORD(STACK[0x560]) = v340;
  v341 = STACK[0x508];
  if (v301)
  {
    v342 = STACK[0x508];
  }

  else
  {
    v342 = v338;
  }

  v343 = STACK[0x420];
  if (v301)
  {
    v344 = STACK[0x420];
  }

  else
  {
    v344 = STACK[0x508];
  }

  if (v301)
  {
    v343 = v339;
  }

  v345 = STACK[0x528];
  v346 = STACK[0x540];
  if (v301)
  {
    v347 = STACK[0x540];
  }

  else
  {
    v347 = STACK[0x528];
  }

  LODWORD(STACK[0x534]) = v347;
  v348 = STACK[0x5A0];
  if (v301)
  {
    v346 = STACK[0x5A0];
  }

  LODWORD(STACK[0x5D0]) = v346;
  v349 = STACK[0x5C8];
  if (v301)
  {
    v350 = STACK[0x5C8];
  }

  else
  {
    v350 = v348;
  }

  if (v301)
  {
    v351 = v345;
  }

  else
  {
    v351 = STACK[0x5C8];
  }

  v352 = STACK[0x430];
  v353 = STACK[0x3F8];
  if (v301)
  {
    v354 = STACK[0x430];
  }

  else
  {
    v354 = STACK[0x3F8];
  }

  LODWORD(STACK[0x5C8]) = v354;
  v355 = STACK[0x414];
  if (!v301)
  {
    v353 = STACK[0x414];
  }

  LODWORD(STACK[0x540]) = v353;
  v356 = STACK[0x3E4];
  if (!v301)
  {
    v355 = STACK[0x3E4];
  }

  LODWORD(STACK[0x56C]) = v355;
  if (v301)
  {
    v357 = v356;
  }

  else
  {
    v357 = v352;
  }

  v358 = STACK[0x578];
  v359 = STACK[0x574];
  if (v301)
  {
    v360 = STACK[0x578];
  }

  else
  {
    v360 = STACK[0x574];
  }

  LODWORD(STACK[0x5D8]) = v360;
  v361 = STACK[0x580];
  if (!v301)
  {
    v359 = STACK[0x580];
  }

  LODWORD(STACK[0x574]) = v359;
  v362 = STACK[0x3CC];
  if (!v301)
  {
    v361 = STACK[0x3CC];
  }

  LODWORD(STACK[0x588]) = v361;
  if (v301)
  {
    v363 = v362;
  }

  else
  {
    v363 = v358;
  }

  v364 = STACK[0x43C];
  v365 = STACK[0x5E8];
  if (v301)
  {
    v366 = STACK[0x43C];
  }

  else
  {
    v366 = STACK[0x5E8];
  }

  LODWORD(STACK[0x59C]) = v366;
  v367 = STACK[0x3E0];
  if (v301)
  {
    v368 = STACK[0x3E0];
  }

  else
  {
    v368 = v364;
  }

  v369 = STACK[0x448];
  if (v301)
  {
    v367 = STACK[0x448];
  }

  LODWORD(STACK[0x578]) = v367;
  if (v301)
  {
    v370 = v365;
  }

  else
  {
    v370 = v369;
  }

  v371 = STACK[0x3C0];
  v372 = STACK[0x418];
  if (v301)
  {
    v373 = STACK[0x3C0];
  }

  else
  {
    v373 = STACK[0x418];
  }

  LODWORD(STACK[0x3F0]) = v373;
  v374 = STACK[0x438];
  if (v301)
  {
    v371 = STACK[0x438];
  }

  LODWORD(STACK[0x590]) = v371;
  v375 = STACK[0x380];
  if (v301)
  {
    v376 = STACK[0x380];
  }

  else
  {
    v376 = v374;
  }

  if (v301)
  {
    v377 = v372;
  }

  else
  {
    v377 = STACK[0x380];
  }

  v378 = STACK[0x5B8];
  v379 = STACK[0x600];
  if (v301)
  {
    v380 = STACK[0x5B8];
  }

  else
  {
    v380 = STACK[0x600];
  }

  v381 = STACK[0x434];
  if (v301)
  {
    v378 = STACK[0x434];
  }

  LODWORD(STACK[0x580]) = v378;
  v382 = STACK[0x42C];
  if (v301)
  {
    v383 = STACK[0x42C];
  }

  else
  {
    v383 = v381;
  }

  if (v301)
  {
    v384 = v379;
  }

  else
  {
    v384 = STACK[0x42C];
  }

  v385 = STACK[0x470];
  v386 = STACK[0x5F0];
  if (v301)
  {
    v387 = STACK[0x470];
  }

  else
  {
    v387 = STACK[0x5F0];
  }

  if (v301)
  {
    v388 = v275;
  }

  else
  {
    v388 = STACK[0x470];
  }

  v389 = STACK[0x5E0];
  if (v301)
  {
    v275 = STACK[0x5E0];
    v390 = STACK[0x5F0];
  }

  else
  {
    v390 = STACK[0x5E0];
  }

  v391 = STACK[0x5FC];
  if (v301)
  {
    v392 = STACK[0x5FC];
  }

  else
  {
    v392 = v276;
  }

  v393 = STACK[0x5D4];
  if (v301)
  {
    v394 = STACK[0x5D4];
  }

  else
  {
    v394 = STACK[0x5FC];
  }

  v395 = STACK[0x5EC];
  if (v301)
  {
    v396 = STACK[0x5EC];
  }

  else
  {
    v396 = STACK[0x5D4];
  }

  if (v301)
  {
    v395 = v276;
  }

  v397 = (STACK[0x658] & 2) == 0;
  v398 = STACK[0x4B0];
  if ((STACK[0x658] & 2) != 0)
  {
    v399 = STACK[0x4B0];
  }

  else
  {
    v399 = v306;
  }

  LODWORD(STACK[0x3F8]) = v399;
  if (v397)
  {
    v400 = v398;
  }

  else
  {
    v400 = v306;
  }

  LODWORD(STACK[0x3F4]) = v400;
  v401 = STACK[0x620];
  v402 = STACK[0x4F8];
  if (v397)
  {
    v403 = STACK[0x620];
  }

  else
  {
    v403 = STACK[0x4F8];
  }

  LODWORD(STACK[0x418]) = v403;
  if (v397)
  {
    v404 = v402;
  }

  else
  {
    v404 = v401;
  }

  LODWORD(STACK[0x414]) = v404;
  v405 = STACK[0x4D0];
  v406 = STACK[0x478];
  if (v397)
  {
    v407 = STACK[0x478];
  }

  else
  {
    v407 = STACK[0x4D0];
  }

  LODWORD(STACK[0x434]) = v407;
  if (v397)
  {
    v408 = v405;
  }

  else
  {
    v408 = v406;
  }

  LODWORD(STACK[0x430]) = v408;
  v409 = STACK[0x510];
  v410 = STACK[0x4C8];
  if (v397)
  {
    v411 = STACK[0x4C8];
  }

  else
  {
    v411 = STACK[0x510];
  }

  LODWORD(STACK[0x42C]) = v411;
  if (v397)
  {
    v412 = v409;
  }

  else
  {
    v412 = v410;
  }

  LODWORD(STACK[0x420]) = v412;
  v413 = STACK[0x4FC];
  v414 = STACK[0x498];
  if (v397)
  {
    v415 = STACK[0x4FC];
  }

  else
  {
    v415 = STACK[0x498];
  }

  LODWORD(STACK[0x43C]) = v415;
  if (v397)
  {
    v416 = v414;
  }

  else
  {
    v416 = v413;
  }

  LODWORD(STACK[0x448]) = v416;
  v417 = STACK[0x500];
  v418 = STACK[0x4C4];
  if (v397)
  {
    v419 = STACK[0x4C4];
  }

  else
  {
    v419 = STACK[0x500];
  }

  LODWORD(STACK[0x438]) = v419;
  if (v397)
  {
    v420 = v417;
  }

  else
  {
    v420 = v418;
  }

  LODWORD(STACK[0x450]) = v420;
  v421 = STACK[0x554];
  if (v397)
  {
    v422 = v319;
  }

  else
  {
    v422 = STACK[0x554];
  }

  LODWORD(STACK[0x468]) = v422;
  if (v397)
  {
    v423 = v421;
  }

  else
  {
    v423 = v319;
  }

  LODWORD(STACK[0x478]) = v423;
  v424 = STACK[0x5B4];
  v425 = STACK[0x4A8];
  if (v397)
  {
    v426 = STACK[0x5B4];
  }

  else
  {
    v426 = STACK[0x4A8];
  }

  LODWORD(STACK[0x460]) = v426;
  if (v397)
  {
    v427 = v425;
  }

  else
  {
    v427 = v424;
  }

  LODWORD(STACK[0x470]) = v427;
  v428 = STACK[0x548];
  if (v397)
  {
    v429 = STACK[0x548];
  }

  else
  {
    v429 = v326;
  }

  LODWORD(STACK[0x498]) = v429;
  if (v397)
  {
    v430 = v326;
  }

  else
  {
    v430 = v428;
  }

  LODWORD(STACK[0x4B0]) = v430;
  v431 = STACK[0x614];
  v432 = STACK[0x524];
  if (v397)
  {
    v433 = STACK[0x524];
  }

  else
  {
    v433 = STACK[0x614];
  }

  LODWORD(STACK[0x4A8]) = v433;
  if (v397)
  {
    v434 = v431;
  }

  else
  {
    v434 = v432;
  }

  LODWORD(STACK[0x4C4]) = v434;
  v435 = STACK[0x670];
  if (v397)
  {
    v436 = STACK[0x670];
  }

  else
  {
    v436 = v332;
  }

  LODWORD(STACK[0x4D0]) = v436;
  if (v397)
  {
    v437 = v332;
  }

  else
  {
    v437 = v435;
  }

  LODWORD(STACK[0x670]) = v437;
  v438 = STACK[0x5C4];
  v439 = STACK[0x5CC];
  if (v397)
  {
    v440 = STACK[0x5CC];
  }

  else
  {
    v440 = STACK[0x5C4];
  }

  LODWORD(STACK[0x4C8]) = v440;
  if (v397)
  {
    v441 = v438;
  }

  else
  {
    v441 = v439;
  }

  LODWORD(STACK[0x4F8]) = v441;
  if (v397)
  {
    v442 = v342;
  }

  else
  {
    v442 = v343;
  }

  LODWORD(STACK[0x5B8]) = v442;
  if (!v397)
  {
    v343 = v342;
  }

  LODWORD(STACK[0x5A8]) = v343;
  v443 = STACK[0x618];
  v444 = STACK[0x51C];
  if (v397)
  {
    v445 = STACK[0x51C];
  }

  else
  {
    v445 = STACK[0x618];
  }

  LODWORD(STACK[0x500]) = v445;
  if (v397)
  {
    v446 = v443;
  }

  else
  {
    v446 = v444;
  }

  LODWORD(STACK[0x508]) = v446;
  v447 = STACK[0x560];
  if (v397)
  {
    v448 = v344;
  }

  else
  {
    v448 = STACK[0x560];
  }

  LODWORD(STACK[0x5B4]) = v448;
  if (v397)
  {
    v449 = v447;
  }

  else
  {
    v449 = v344;
  }

  LODWORD(STACK[0x5A0]) = v449;
  v450 = STACK[0x6C8];
  v451 = STACK[0x62C];
  if (v397)
  {
    v452 = STACK[0x6C8];
  }

  else
  {
    v452 = STACK[0x62C];
  }

  LODWORD(STACK[0x510]) = v452;
  if (v397)
  {
    v453 = v451;
  }

  else
  {
    v453 = v450;
  }

  LODWORD(STACK[0x4FC]) = v453;
  v454 = STACK[0x534];
  if (v397)
  {
    v455 = STACK[0x534];
  }

  else
  {
    v455 = v350;
  }

  LODWORD(STACK[0x524]) = v455;
  if (v397)
  {
    v456 = v350;
  }

  else
  {
    v456 = v454;
  }

  LODWORD(STACK[0x528]) = v456;
  v457 = STACK[0x5D0];
  if (v397)
  {
    v458 = v351;
  }

  else
  {
    v458 = STACK[0x5D0];
  }

  LODWORD(STACK[0x51C]) = v458;
  if (v397)
  {
    v459 = v457;
  }

  else
  {
    v459 = v351;
  }

  LODWORD(STACK[0x534]) = v459;
  v460 = STACK[0x540];
  if (v397)
  {
    v461 = v357;
  }

  else
  {
    v461 = STACK[0x540];
  }

  LODWORD(STACK[0x5C4]) = v461;
  if (v397)
  {
    v462 = v460;
  }

  else
  {
    v462 = v357;
  }

  LODWORD(STACK[0x5CC]) = v462;
  v463 = STACK[0x5C8];
  v464 = STACK[0x56C];
  if (v397)
  {
    v465 = STACK[0x5C8];
  }

  else
  {
    v465 = STACK[0x56C];
  }

  LODWORD(STACK[0x5D0]) = v465;
  if (v397)
  {
    v466 = v464;
  }

  else
  {
    v466 = v463;
  }

  LODWORD(STACK[0x5C8]) = v466;
  v467 = STACK[0x574];
  if (v397)
  {
    v468 = v363;
  }

  else
  {
    v468 = STACK[0x574];
  }

  LODWORD(STACK[0x554]) = v468;
  if (v397)
  {
    v469 = v467;
  }

  else
  {
    v469 = v363;
  }

  LODWORD(STACK[0x6C8]) = v469;
  v470 = STACK[0x5D8];
  v471 = STACK[0x588];
  if (v397)
  {
    v472 = STACK[0x588];
  }

  else
  {
    v472 = STACK[0x5D8];
  }

  LODWORD(STACK[0x540]) = v472;
  if (v397)
  {
    v473 = v470;
  }

  else
  {
    v473 = v471;
  }

  LODWORD(STACK[0x548]) = v473;
  if (v397)
  {
    v474 = v368;
  }

  else
  {
    v474 = v370;
  }

  LODWORD(STACK[0x5E8]) = v474;
  if (v397)
  {
    v475 = v370;
  }

  else
  {
    v475 = v368;
  }

  LODWORD(STACK[0x5E0]) = v475;
  v476 = STACK[0x59C];
  v477 = STACK[0x578];
  if (v397)
  {
    v478 = STACK[0x59C];
  }

  else
  {
    v478 = STACK[0x578];
  }

  LODWORD(STACK[0x5D8]) = v478;
  if (v397)
  {
    v479 = v477;
  }

  else
  {
    v479 = v476;
  }

  LODWORD(STACK[0x5D4]) = v479;
  v480 = STACK[0x3F0];
  if (v397)
  {
    v481 = STACK[0x3F0];
  }

  else
  {
    v481 = v376;
  }

  LODWORD(STACK[0x574]) = v481;
  if (v397)
  {
    v482 = v376;
  }

  else
  {
    v482 = v480;
  }

  LODWORD(STACK[0x56C]) = v482;
  if (v397)
  {
    v483 = v380;
  }

  else
  {
    v483 = v383;
  }

  LODWORD(STACK[0x600]) = v483;
  if (v397)
  {
    v484 = v383;
  }

  else
  {
    v484 = v380;
  }

  LODWORD(STACK[0x5FC]) = v484;
  v485 = STACK[0x590];
  if (v397)
  {
    v486 = v377;
  }

  else
  {
    v486 = STACK[0x590];
  }

  LODWORD(STACK[0x560]) = v486;
  if (v397)
  {
    v487 = v485;
  }

  else
  {
    v487 = v377;
  }

  LODWORD(STACK[0x578]) = v487;
  if (v397)
  {
    v488 = v388;
  }

  else
  {
    v488 = v390;
  }

  LODWORD(STACK[0x59C]) = v488;
  if (v397)
  {
    v489 = v390;
  }

  else
  {
    v489 = v388;
  }

  LODWORD(STACK[0x588]) = v489;
  v490 = STACK[0x580];
  if (v397)
  {
    v491 = STACK[0x580];
  }

  else
  {
    v491 = v384;
  }

  LODWORD(STACK[0x5EC]) = v491;
  if (v397)
  {
    v492 = v384;
  }

  else
  {
    v492 = v490;
  }

  LODWORD(STACK[0x5F0]) = v492;
  if (v397)
  {
    v493 = v387;
  }

  else
  {
    v493 = v275;
  }

  LODWORD(STACK[0x580]) = v493;
  if (v397)
  {
    v494 = v275;
  }

  else
  {
    v494 = v387;
  }

  LODWORD(STACK[0x590]) = v494;
  if (v397)
  {
    v495 = v396;
  }

  else
  {
    v495 = v392;
  }

  LODWORD(STACK[0x614]) = v495;
  if (v397)
  {
    v496 = v392;
  }

  else
  {
    v496 = v396;
  }

  LODWORD(STACK[0x620]) = v496;
  if (v397)
  {
    v497 = v394;
  }

  else
  {
    v497 = v395;
  }

  LODWORD(STACK[0x618]) = v497;
  if (v397)
  {
    v498 = v395;
  }

  else
  {
    v498 = v394;
  }

  LODWORD(STACK[0x62C]) = v498;
  v499 = 33686018 * LODWORD(STACK[0x630]);
  v500 = STACK[0x4F0];
  v501 = v499 & 0x948BB0BA ^ 0x4A45D85D;
  v502 = v499 & 0x800A908A ^ 0x804D00C ^ v501 & (LODWORD(STACK[0x4F0]) ^ 0xE839804);
  v503 = STACK[0x6B8];
  v504 = v499 & 0x940A30A0 ^ 0x441845 ^ v501 & (LODWORD(STACK[0x6B8]) ^ 0x944E38C5);
  v505 = 33686018 * LODWORD(STACK[0x608]);
  v506 = STACK[0x698];
  v507 = v505 & 0x948BB0BA ^ 0x4A45D85D;
  v508 = (LODWORD(STACK[0x698]) ^ 0x1E8FF85D) & v507 ^ (v505 & 0x800000A2 | 0x40400000);
  v509 = STACK[0x700];
  v510 = v502 << LODWORD(STACK[0x700]);
  v511 = LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x680]) ^ ((v504 >> LODWORD(STACK[0x6E8])) | v510) ^ LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x3F4]);
  v512 = STACK[0x710];
  v513 = v505 & 0x8401B08A ^ 0x48459008 ^ (LODWORD(STACK[0x710]) ^ 0xCC45B08A) & v507;
  v514 = LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x3EC]);
  v515 = STACK[0x6F0];
  v516 = v508 << LODWORD(STACK[0x6F0]);
  v517 = STACK[0x6F8];
  v518 = v514 ^ (v516 | (v513 >> LODWORD(STACK[0x6F8]))) ^ LODWORD(STACK[0x3F8]);
  v519 = STACK[0x6E8];
  v520 = v514 ^ (v513 >> LODWORD(STACK[0x6E8])) ^ v516 ^ LODWORD(STACK[0x414]);
  v521 = v514 ^ (v510 | (v504 >> LODWORD(STACK[0x6F8]))) ^ LODWORD(STACK[0x418]);
  HIDWORD(v522) = *(v299 + 4 * BYTE1(v511));
  LODWORD(v522) = HIDWORD(v522);
  v523 = (v522 >> 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v518)), 24) ^ __ROR4__(*(v299 + 4 * (v514 ^ (v513 >> LODWORD(STACK[0x6E8])) ^ v516 ^ LOBYTE(STACK[0x414]))), 16) ^ *(v299 + 4 * BYTE2(v521));
  v524 = *(v299 + 4 * BYTE2(v520)) ^ __ROR4__(*(v299 + 4 * v521), 16) ^ __ROR4__(*(v299 + 4 * BYTE1(v518)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v511)), 24);
  v525 = STACK[0x658];
  v526 = LODWORD(STACK[0x658]) + LODWORD(STACK[0x6B0]);
  v527 = LODWORD(STACK[0x490]) + LODWORD(STACK[0x658]);
  LODWORD(STACK[0x6B0]) = v527;
  v528 = v526;
  LODWORD(STACK[0x608]) = v526;
  v529 = v523 + v526 - v527;
  v530 = v505 & 0x380C3E28 ^ 0x9C061F14;
  v531 = v505 & 0x20043020 ^ 0x41100 ^ (v512 ^ 0x20043120) & v530;
  v532 = STACK[0x458] & ~v506;
  v533 = v515;
  LOBYTE(v512) = v519;
  v534 = (STACK[0x340] & LODWORD(STACK[0x458])) >> v519;
  v535 = (v532 << v515) ^ v534;
  v536 = v531 >> v517;
  v537 = STACK[0x3BC];
  v538 = ((v505 & 0x10003A08 ^ (v500 ^ 0x100E3104) & v530 ^ 0x94021B04 ^ v532) << v515) ^ v534 ^ v536 ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x420]) ^ __ROR4__(*(v299 + 4 * BYTE1(v520)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v521)), 24) ^ __ROR4__(*(v299 + 4 * v518), 16) ^ *(v299 + 4 * BYTE2(v511));
  v539 = v499 & 0x380C3E28 ^ 0x9C061F14;
  v540 = (v499 & 0x10002428 ^ 0x94020504 ^ v539 & (v503 ^ 0x9402250C)) >> v512;
  v541 = LODWORD(STACK[0x3BC]) ^ v535;
  v542 = v541 ^ (((v499 & 0x20083028 ^ 0x84021010 ^ (v506 ^ 0x18040F04) & v539) << v509) + v540) ^ LODWORD(STACK[0x42C]) ^ __ROR4__(*(v299 + 4 * v511), 16) ^ *(v299 + 4 * BYTE2(v518)) ^ __ROR4__(*(v299 + 4 * HIBYTE(v520)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v521)), 8);
  LOBYTE(v520) = v509;
  v543 = v541 ^ ((v499 & 0x8080E20 ^ 0x8020F04 ^ v539 & (v500 ^ 0x8C06052C)) << v509) ^ v540 ^ LODWORD(STACK[0x430]);
  v544 = LODWORD(STACK[0x4A0]) - LODWORD(STACK[0x610]) - v525 + v528 + 1;
  LODWORD(STACK[0x658]) = v544;
  v545 = v543 ^ (v524 + v544);
  v546 = (((v505 & 0x8003200 ^ 0x8C001304 ^ (v506 ^ 0x300E0C38) & v530) << v533) + v536) ^ v535 ^ LODWORD(STACK[0x434]) ^ ((v537 ^ -v537 ^ (v529 - (v529 ^ v537))) + v529);
  v547 = v505 & 0xF042A454 ^ 0xF821522A;
  v548 = v499 & 0xF042A454 ^ 0xF821522A;
  v549 = STACK[0x710];
  v550 = (v499 & 0xE0420004 ^ 0xE0011208 ^ (LODWORD(STACK[0x710]) ^ 0xE043120C) & v548) >> v512;
  v551 = LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x480]);
  v552 = v551 ^ ((v499 & 0xF0420040 ^ 0xF8200208 ^ v548 & (v500 ^ 0x78434042)) << v533) ^ v550 ^ LODWORD(STACK[0x438]) ^ *(v299 + 4 * BYTE2(v545)) ^ __ROR4__(*(v299 + 4 * BYTE1(v542)), 8) ^ __ROR4__(*(v299 + 4 * v546), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v538)), 24);
  v553 = v551 ^ (((v505 & 0xC040A054 ^ 0xC8015002 ^ (v506 ^ 0x30220628) & v547) << v509) | ((v505 & 0xD0420454 ^ 0xD8010208 ^ (v503 ^ 0xD843067C) & v547) >> v517)) ^ LODWORD(STACK[0x43C]) ^ *(v299 + 4 * BYTE2(v542)) ^ __ROR4__(*(v299 + 4 * BYTE1(v546)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v545)), 24) ^ __ROR4__(*(v299 + 4 * v538), 16);
  v554 = v551 ^ (((v499 & 0x4042A044 ^ 0x48204220 ^ (v506 ^ 0xB001141A) & v548) << v533) | v550) ^ LODWORD(STACK[0x448]) ^ *(v299 + 4 * BYTE2(v538)) ^ __ROR4__(*(v299 + 4 * BYTE1(v545)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v546)), 24) ^ __ROR4__(*(v299 + 4 * v542), 16);
  v555 = v551 ^ (((v505 & 0xB0028044 ^ 0xB8014202 ^ (v503 ^ 0xB803C266) & v547) >> v517) + ((v505 & 0x40008404 ^ 0x40205228 ^ (v500 ^ 0xC0019426) & v547) << v520)) ^ LODWORD(STACK[0x450]) ^ __ROR4__(*(v299 + 4 * HIBYTE(v542)), 24) ^ __ROR4__(*(v299 + 4 * v545), 16) ^ *(v299 + 4 * BYTE2(v546)) ^ __ROR4__(*(v299 + 4 * BYTE1(v538)), 8);
  v556 = v499 & 0x9297BDB2 ^ 0xC94BDED9;
  v557 = v499 & 0x12873D00 ^ 0x1431E09 ^ (v506 ^ 0xC818C0F2) & v556;
  v558 = LODWORD(STACK[0x460]) ^ ((v557 << v533) | ((v499 & 0x12112520 ^ 0x48410409 ^ v556 & (v503 ^ 0x5A512509)) >> v517)) ^ __ROR4__(*(v299 + 4 * v554), 16) ^ *(v299 + 4 * BYTE2(v553)) ^ __ROR4__(*(v299 + 4 * BYTE1(v555)), 8);
  LODWORD(v522) = __ROR4__(*(v299 + 4 * HIBYTE(v552)), 24);
  v559 = LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x488]);
  v560 = v559 ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x654]) ^ ((v558 ^ v522) - ((2 * (v558 ^ v522)) & 0x78F4383A) + 1014635549);
  v561 = v505 & 0x9297BDB2 ^ 0xC94BDED9;
  v562 = v505 & 0x9293A530 ^ 0x8843C618 ^ (v500 ^ 0x195EADB2) & v561;
  v563 = v559 ^ (v562 << v520) ^ ((v505 & 0x1091B120 ^ 0x9499049 ^ (LODWORD(STACK[0x710]) ^ 0x19D9B169) & v561) >> v512) ^ LODWORD(STACK[0x468]) ^ *(v299 + 4 * BYTE2(v552)) ^ __ROR4__(*(v299 + 4 * v555), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v554)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v553)), 8);
  v564 = v512;
  v565 = v559 ^ ((v557 << v520) | ((v499 & 0x92960000 ^ 0x80024048 ^ (LODWORD(STACK[0x710]) ^ 0x92964048) & v556) >> v512)) ^ LODWORD(STACK[0x470]) ^ *(v299 + 4 * BYTE2(v554)) ^ __ROR4__(*(v299 + 4 * HIBYTE(v555)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v552)), 8) ^ __ROR4__(*(v299 + 4 * v553), 16);
  v566 = v559 ^ ((v562 << v533) | ((v505 & 0x92171980 ^ 0xC90B5888 ^ (v503 ^ 0xDB1F59A8) & v561) >> v517)) ^ LODWORD(STACK[0x478]) ^ __ROR4__(*(v299 + 4 * HIBYTE(v553)), 24) ^ *(v299 + 4 * BYTE2(v555)) ^ __ROR4__(*(v299 + 4 * BYTE1(v554)), 8) ^ __ROR4__(*(v299 + 4 * v552), 16);
  v567 = v499 & 0xAD53008C ^ 0x56A98046;
  v568 = (v499 & 0xA5000084 ^ 0x4200044 ^ (LODWORD(STACK[0x710]) ^ 0xA52000C4) & v567) >> v564;
  v569 = LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x678]);
  v570 = v569 ^ (((v499 & 0x2103008C ^ 0x2290044 ^ (v506 ^ 0xDCD08002) & v567) << v533) | v568) ^ LODWORD(STACK[0x498]) ^ __ROR4__(*(v299 + 4 * v563), 16) ^ __ROR4__(*(v299 + 4 * BYTE1(v565)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v560)), 24) ^ *(v299 + 4 * BYTE2(v566));
  v571 = v505 & 0xAD53008C ^ 0x56A98046;
  v572 = (v505 & 0x110000 ^ 0x12810040 ^ (v503 ^ 0x12910040) & v571) >> v517;
  v573 = v520;
  v574 = v569 ^ ((v505 & 0x2C10008C ^ 0x46A88044 ^ (v500 ^ 0xE9118046) & v571) << v520) ^ v572 ^ LODWORD(STACK[0x4A8]) ^ __ROR4__(*(v299 + 4 * v565), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v563)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v566)), 8) ^ *(v299 + 4 * BYTE2(v560));
  v575 = v569 ^ (((v505 & 0x2C000080 ^ 0x56000040 ^ (v506 ^ 0x81FB800E) & v571) << v520) + v572) ^ LODWORD(STACK[0x4B0]) ^ __ROR4__(*(v299 + 4 * BYTE1(v560)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v565)), 24) ^ __ROR4__(*(v299 + 4 * v566), 16) ^ *(v299 + 4 * BYTE2(v563));
  v576 = v569 ^ (v568 | ((v499 & 0x84100080 ^ 0x54800042 ^ v567 & (v500 ^ 0x53390048)) << v533)) ^ LODWORD(STACK[0x4C4]) ^ __ROR4__(*(v299 + 4 * BYTE1(v563)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v566)), 24) ^ __ROR4__(*(v299 + 4 * v560), 16) ^ *(v299 + 4 * BYTE2(v565));
  v577 = v505 & 0x9C9D29F6 ^ 0xCE4E94FB;
  v578 = v505 & 0x4810894 ^ 0x46408099 ^ (v500 ^ 0xC04C8017) & v577;
  v579 = STACK[0x4C0];
  v580 = LODWORD(STACK[0x4D4]) ^ LODWORD(STACK[0x4C0]);
  v581 = v580 ^ (((v505 & 0x88152952 ^ 0x8A061453 ^ (LODWORD(STACK[0x710]) ^ 0x8A173D53) & v577) >> v564) | (v578 << v520)) ^ LODWORD(STACK[0x4C8]) ^ *(v299 + 4 * BYTE2(v570)) ^ __ROR4__(*(v299 + 4 * BYTE1(v576)), 8) ^ __ROR4__(*(v299 + 4 * v575), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v574)), 24);
  v582 = v499 & 0x9C9D29F6 ^ 0xCE4E94FB;
  v583 = v499 & 0x40D2942 ^ 0x64C8443 ^ (v506 ^ 0xD89210BC) & v582;
  v584 = (v583 << v533) | ((v499 & 0x94800056 ^ 0xC642905A ^ v582 & (v503 ^ 0xD6C2907E)) >> v517);
  v585 = LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x4D0]) ^ __ROR4__(*(v299 + 4 * v576), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v575)), 24);
  LODWORD(v522) = __ROR4__(*(v299 + 4 * BYTE1(v570)), 8);
  v586 = ((LODWORD(STACK[0x504]) ^ v583) << v520) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x654]) ^ ((v499 & 0x901001F2 ^ LODWORD(STACK[0x4CC]) ^ 0x824204FA ^ (LODWORD(STACK[0x710]) ^ 0x925205FA) & v582) >> v517) ^ LODWORD(STACK[0x4D4]) ^ ((v585 ^ v522 ^ *(v299 + 4 * BYTE2(v574))) - ((2 * (v585 ^ v522 ^ *(v299 + 4 * BYTE2(v574)))) & 0x78F4383A) + 1014635549);
  v587 = v580 ^ (v578 << v533) ^ ((v505 & 0xC980096 ^ 0xC0A0492 ^ (v503 ^ 0xC9A04B6) & v577) >> v564) ^ LODWORD(STACK[0x670]) ^ __ROR4__(*(v299 + 4 * BYTE1(v575)), 8) ^ __ROR4__(*(v299 + 4 * v574), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v570)), 24) ^ *(v299 + 4 * BYTE2(v576));
  v588 = v580 ^ v584 ^ LODWORD(STACK[0x4F8]) ^ *(v299 + 4 * BYTE2(v575)) ^ __ROR4__(*(v299 + 4 * HIBYTE(v576)), 24) ^ __ROR4__(*(v299 + 4 * v570), 16) ^ __ROR4__(*(v299 + 4 * BYTE1(v574)), 8);
  HIDWORD(v522) = *(v299 + 4 * BYTE1(v586));
  LODWORD(v522) = HIDWORD(v522);
  v589 = (v522 >> 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v587)), 24);
  HIDWORD(v522) = *(v299 + 4 * HIBYTE(v588));
  LODWORD(v522) = HIDWORD(v522);
  v590 = (v522 >> 24) ^ __ROR4__(*(v299 + 4 * v587), 16);
  HIDWORD(v522) = *(v299 + 4 * v586);
  LODWORD(v522) = HIDWORD(v522);
  v591 = (v522 >> 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v581)), 24);
  v592 = v589 ^ *(v299 + 4 * BYTE2(v588)) ^ __ROR4__(*(v299 + 4 * v581), 16);
  LODWORD(STACK[0x4CC]) = v592;
  v593 = v591 ^ __ROR4__(*(v299 + 4 * BYTE1(v588)), 8) ^ *(v299 + 4 * BYTE2(v587));
  LODWORD(STACK[0x4D0]) = v593;
  LODWORD(STACK[0x670]) = v590 ^ __ROR4__(*(v299 + 4 * BYTE1(v581)), 8) ^ *(v299 + 4 * BYTE2(v586));
  v594 = (LODWORD(STACK[0x6B0]) ^ LODWORD(STACK[0x608]) ^ __ROR4__(*(v299 + 4 * HIBYTE(v586)), 24) ^ __ROR4__(*(v299 + 4 * v588), 16) ^ *(v299 + 4 * BYTE2(v581)) ^ __ROR4__(*(v299 + 4 * BYTE1(v587)), 8)) + LODWORD(STACK[0x658]);
  v595 = v499 & 0xECCCB67C ^ 0x76665B3E;
  v596 = v499 & 0x60401004 ^ 0x70625806 ^ v595 & (v503 ^ 0x70625826);
  LODWORD(STACK[0x4F8]) = v595;
  v597 = v499 & 0x6CC8B248 ^ 0x6660120A ^ v595 & (v500 ^ 0xE844F840);
  LODWORD(STACK[0x660]) = v597;
  v598 = (v597 << v573) ^ (v596 >> v517) ^ LODWORD(STACK[0x4FC]);
  if (v594 >= 0xA27D22B6)
  {
    v599 = v594 + 1568857418;
  }

  else
  {
    v599 = v594;
  }

  if (v594 >= 0xA27D22B6)
  {
    v600 = -1568857418;
  }

  else
  {
    v600 = 0;
  }

  v301 = v599 == 0;
  v601 = STACK[0x6E0] & 0x76665B3E;
  LODWORD(STACK[0x610]) = v601;
  v602 = 2 * v601;
  v603 = (2 * v601) ^ 0x76665B3E;
  v604 = 2 * v601;
  v605 = v602 & 0xA44C0244 ^ 0x26464B04 ^ (v549 ^ 0xA64E4B44) & (v602 ^ 0x76665B3E);
  LODWORD(STACK[0x658]) = v605;
  v606 = v579 ^ LODWORD(STACK[0x690]);
  v607 = v606 ^ (((v602 & 0x68C4965C ^ 0x70445B1E ^ (v506 ^ 0x862A2020) & (v602 ^ 0x76665B3E)) << v533) + (v605 >> v564)) ^ LODWORD(STACK[0x500]);
  LODWORD(STACK[0x654]) = v604;
  LODWORD(STACK[0x608]) = v603;
  LODWORD(STACK[0x4FC]) = v606;
  v608 = v606 ^ (((v604 & 0xCC81058 ^ 0x1442501A ^ (v549 ^ 0x1CCA505A) & v603) >> v517) + ((v604 & 0x68840078 ^ 0x72044038 ^ (v500 ^ 0xFC280A72) & v603) << v573)) ^ LODWORD(STACK[0x508]);
  if (!v301)
  {
    v600 = v594;
  }

  LODWORD(STACK[0x500]) = v600;
  v609 = v608 ^ v594;
  v610 = v499 & 0x68CC103C ^ 0x7244103E ^ (v506 ^ 0x8422EF40) & (v499 & 0xECCCB67C ^ 0x76665B3E);
  LODWORD(STACK[0x504]) = v610;
  LODWORD(STACK[0x508]) = v596 >> v564;
  v611 = v606 ^ ((v610 << v533) | (v596 >> v564)) ^ LODWORD(STACK[0x510]);
  v612 = v505 & 0x8C106F58 ^ 0x460837AC;
  LODWORD(STACK[0x690]) = v612;
  v613 = v505 & 0x80006A40 ^ 0x83280 ^ (v549 ^ 0x80087AC0) & v612;
  v614 = v506;
  v615 = v505 & 0x80000A58 ^ 0x2080288 ^ (v506 ^ 0x4C107524) & v612;
  LODWORD(STACK[0x6E0]) = v615;
  v616 = LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x520]);
  LOBYTE(v610) = v564;
  v617 = v615 << v533;
  v618 = v616 ^ ((v615 << v533) | (v613 >> v564)) ^ LODWORD(STACK[0x51C]) ^ __ROR4__(*(v299 + 4 * BYTE1(v609)), 8);
  v619 = v611 ^ v593;
  v620 = __ROR4__(*(v299 + 4 * v619), 16);
  v621 = LODWORD(STACK[0x670]) ^ v606;
  LODWORD(STACK[0x4D4]) = v621;
  v622 = v621 ^ v598;
  v623 = v607 ^ v592;
  v624 = v618 ^ v620 ^ *(v299 + 4 * ((v621 ^ v598) >> 16)) ^ __ROR4__(*(v299 + 4 * HIBYTE(v623)), 24);
  v625 = v500;
  v626 = v499 & 0x8C106F58 ^ 0x460837AC;
  LODWORD(STACK[0x51C]) = v626;
  v627 = v499 & 0x4006B18 ^ 0x46083388 ^ v626 & (v500 ^ 0xC0003110);
  LODWORD(STACK[0x688]) = v627;
  v628 = STACK[0x6B8];
  v629 = v499 & 0x8C104410 ^ 0x460014A0 ^ v626 & (LODWORD(STACK[0x6B8]) ^ 0xCE105490);
  v630 = v517;
  v631 = v616 ^ ((v627 << v573) + (v629 >> v517)) ^ LODWORD(STACK[0x524]) ^ __ROR4__(*(v299 + 4 * HIBYTE(v619)), 24) ^ __ROR4__(*(v299 + 4 * v609), 16) ^ *(v299 + 4 * BYTE2(v623)) ^ __ROR4__(*(v299 + 4 * BYTE1(v622)), 8);
  v632 = v616 ^ (v617 + (v613 >> v517)) ^ LODWORD(STACK[0x528]) ^ __ROR4__(*(v299 + 4 * v623), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v622)), 24) ^ *(v299 + 4 * BYTE2(v609)) ^ __ROR4__(*(v299 + 4 * BYTE1(v619)), 8);
  v633 = v616 ^ (v629 >> v564) ^ (v627 << v573) ^ LODWORD(STACK[0x534]) ^ __ROR4__(*(v299 + 4 * v622), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v609)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v623)), 8) ^ *(v299 + 4 * BYTE2(v619));
  v634 = v505 & 0xD746D0D0 ^ 0xEBA36868;
  LODWORD(STACK[0x534]) = v634;
  v635 = v505 & 0x140080C0 ^ 0x8212848 ^ (v614 ^ 0xE3C65030) & v634;
  v636 = v505 & 0x114490C0 ^ 0x1A02068 ^ (v628 ^ 0x11E4B0C8) & v634;
  LODWORD(STACK[0x528]) = v636;
  v637 = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x678]);
  v638 = v533;
  v639 = v636 >> v630;
  LODWORD(STACK[0x524]) = v636 >> v630;
  v640 = v637 ^ ((v635 << v533) | (v636 >> v630)) ^ LODWORD(STACK[0x540]) ^ __ROR4__(*(v299 + 4 * HIBYTE(v633)), 24) ^ __ROR4__(*(v299 + 4 * v632), 16) ^ *(v299 + 4 * BYTE2(v631)) ^ __ROR4__(*(v299 + 4 * BYTE1(v624)), 8);
  v641 = v625;
  LODWORD(STACK[0x678]) = v499 & 0xD746D0D0;
  v642 = v499 & 0xD746D0D0 ^ 0xEBA36868;
  LODWORD(STACK[0x518]) = v642;
  v643 = v499 & 0x3405010 ^ 0x2B016028 ^ v642 & (v625 ^ 0xACE438B0);
  v644 = STACK[0x710];
  v645 = v499 & 0x42408000 ^ 0x6AA02008 ^ (LODWORD(STACK[0x710]) ^ 0x6AE0A008) & v642;
  LODWORD(STACK[0x510]) = v645;
  v646 = *(v299 + 4 * HIBYTE(v632));
  v647 = v645 >> v610;
  LODWORD(STACK[0x520]) = v647;
  v648 = v637 ^ (v647 + (v643 << v573)) ^ LODWORD(STACK[0x6C8]) ^ __ROR4__(v646, 24) ^ *(v299 + 4 * BYTE2(v633)) ^ __ROR4__(*(v299 + 4 * v624), 16) ^ __ROR4__(*(v299 + 4 * BYTE1(v631)), 8);
  LODWORD(STACK[0x540]) = v635 << v573;
  v649 = v573;
  v650 = v637 ^ v639 ^ (v635 << v573) ^ LODWORD(STACK[0x548]) ^ *(v299 + 4 * BYTE2(v632)) ^ __ROR4__(*(v299 + 4 * BYTE1(v633)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v624)), 24) ^ __ROR4__(*(v299 + 4 * v631), 16);
  v651 = v637 ^ (v647 | (v643 << v638)) ^ LODWORD(STACK[0x554]) ^ __ROR4__(*(v299 + 4 * HIBYTE(v631)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v632)), 8) ^ *(v299 + 4 * BYTE2(v624)) ^ __ROR4__(*(v299 + 4 * v633), 16);
  v652 = v499 & 0x43DDC6CC ^ 0x21EEE366;
  v653 = LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x538]);
  v654 = v653 ^ (((v499 & 0x42C44640 ^ 0xC66360 ^ (v614 ^ 0x2139808E) & v652) << v638) | ((v499 & 0x1414208 ^ 0x21606220 ^ (v644 ^ 0x21616228) & v652) >> v630)) ^ LODWORD(STACK[0x560]) ^ __ROR4__(*(v299 + 4 * v650), 16) ^ *(v299 + 4 * BYTE2(v640)) ^ __ROR4__(*(v299 + 4 * BYTE1(v651)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v648)), 24);
  v655 = v628;
  v656 = v505 & 0x43DDC6CC ^ 0x21EEE366;
  v657 = v653 ^ (((v505 & 0x214460C ^ 0x266206 ^ (v628 ^ 0x236662E) & v656) >> v610) | ((v505 & 0x4300464C ^ 0x1024346 ^ (v641 ^ 0x40AF05C4) & v656) << v649)) ^ LODWORD(STACK[0x56C]) ^ *(v299 + 4 * BYTE2(v651)) ^ __ROR4__(*(v299 + 4 * BYTE1(v650)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v640)), 24) ^ __ROR4__(*(v299 + 4 * v648), 16);
  v658 = v499 & 0x30C4604 ^ 0x210E4326 ^ v652 & (v641 ^ 0x20A305AC);
  LODWORD(STACK[0x554]) = v658;
  v659 = v655;
  v660 = v499 & 0x3154684 ^ 0x21064324 ^ v652 & (v655 ^ 0x23174784);
  LODWORD(STACK[0x560]) = v660;
  v661 = v505 & 0x290844C ^ 0x828046 ^ (v614 ^ 0x616D63A0) & v656;
  LODWORD(STACK[0x538]) = v661;
  v662 = v505 & 0x9D4208 ^ 0x208E6320 ^ (v644 ^ 0x209F6328) & v656;
  LODWORD(STACK[0x4C8]) = v662;
  v663 = *(v299 + 4 * BYTE2(v648));
  LODWORD(STACK[0x56C]) = v660 >> v630;
  LODWORD(STACK[0x680]) = v658 << v649;
  v664 = v653 ^ (v658 << v649) ^ (v660 >> v630) ^ LODWORD(STACK[0x574]) ^ v663 ^ __ROR4__(*(v299 + 4 * v651), 16) ^ __ROR4__(*(v299 + 4 * BYTE1(v640)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v650)), 24);
  LODWORD(STACK[0x548]) = v661 << v638;
  LODWORD(STACK[0x574]) = v662 >> v610;
  v665 = STACK[0x6D8];
  HIDWORD(v667) = *(STACK[0x6D8] + 4 * HIBYTE(v657));
  LODWORD(v667) = HIDWORD(v667);
  v666 = v667 >> 16;
  v668 = v653 ^ (v662 >> v610) ^ (v661 << v638) ^ LODWORD(STACK[0x578]) ^ __ROR4__(*(v299 + 4 * BYTE1(v648)), 8) ^ *(v299 + 4 * BYTE2(v650)) ^ __ROR4__(*(v299 + 4 * HIBYTE(v651)), 24) ^ __ROR4__(*(v299 + 4 * v640), 16);
  HIDWORD(v667) = *(STACK[0x6D8] + 4 * v654);
  LODWORD(v667) = HIDWORD(v667);
  v669 = ((v667 >> 8) ^ -(v667 >> 8) ^ (v666 - ((v667 >> 8) ^ v666))) + v666;
  v670 = STACK[0x6A0];
  v671 = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x6A0]) ^ *(STACK[0x6D8] + 4 * BYTE1(v657)) ^ __ROR4__(*(STACK[0x6D8] + 4 * v668), 8) ^ __ROR4__(*(STACK[0x6D8] + 4 * HIBYTE(v664)), 16);
  LODWORD(v667) = __ROR4__(*(STACK[0x6D8] + 4 * BYTE2(v654)), 24);
  v672 = *(STACK[0x6D8] + 4 * HIBYTE(v654));
  LODWORD(STACK[0x580]) = (v671 ^ v667) - ((2 * (v671 ^ v667)) & 0x5BC37196);
  v673 = *(v665 + 4 * v664);
  v674 = STACK[0x6C0];
  v675 = LODWORD(STACK[0x6C0]) ^ v670;
  LODWORD(STACK[0x578]) = v675;
  v676 = v675 ^ LODWORD(STACK[0x588]) ^ __ROR4__(v672, 16) ^ __ROR4__(v673, 8) ^ *(v665 + 4 * BYTE1(v668)) ^ __ROR4__(*(v665 + 4 * BYTE2(v657)), 24);
  v677 = LODWORD(STACK[0x590]) ^ v670 ^ *(v665 + 4 * BYTE1(v664)) ^ v669 ^ __ROR4__(*(v665 + 4 * BYTE2(v668)), 24);
  LODWORD(STACK[0x590]) = v677 - ((2 * v677) & 0x5BC37196);
  v678 = LODWORD(STACK[0x59C]) ^ v670 ^ __ROR4__(*(v665 + 4 * BYTE2(v664)), 24) ^ *(v665 + 4 * BYTE1(v654)) ^ __ROR4__(*(v665 + 4 * v657), 8);
  LODWORD(v667) = __ROR4__(*(v665 + 4 * HIBYTE(v668)), 16);
  v679 = LODWORD(STACK[0x6A8]) ^ 0x86C7340E ^ (v676 - ((2 * v676) & 0x5BC37196) - 1377716021);
  LODWORD(STACK[0x6C0]) = v674 ^ LODWORD(STACK[0x634]);
  LODWORD(STACK[0x634]) = (v678 ^ v667) - ((2 * (v678 ^ v667)) & 0x5BC37196);
  LODWORD(v667) = __ROR4__(STACK[0x610], 2) ^ 0xDFF7C18B;
  HIDWORD(v667) = v667;
  v680 = v610;
  v681 = LODWORD(STACK[0x4D4]) ^ ((((v667 >> 29) & 0x78C00E2C ^ 0x8E04620 ^ (LODWORD(STACK[0x698]) ^ 0x860EB152) & ((v667 >> 29) ^ 0x89D85760)) << v649) + (((v667 >> 29) & 0xCCE1A18 ^ 0x1AC81302 ^ (v659 ^ 0x1ECE1B3A) & ((v667 >> 29) ^ 0x89D85760)) >> v610)) ^ LODWORD(STACK[0x5A0]);
  v682 = v638;
  v683 = (LODWORD(STACK[0x4CC]) ^ LODWORD(STACK[0x670]) ^ 0xDCD7CDFB) - LODWORD(STACK[0x4D0]) - 442715220 + LODWORD(STACK[0x500]);
  v684 = LODWORD(STACK[0x4FC]) ^ (((v499 & 0xA8083078 ^ 0x30025938 ^ (v644 ^ 0xB80A7978) & STACK[0x4F8]) >> v630) + (LODWORD(STACK[0x660]) << v638)) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x500]);
  v685 = STACK[0x4F0];
  v686 = v630;
  v687 = LODWORD(STACK[0x4FC]) ^ ((LODWORD(STACK[0x658]) >> v630) | ((STACK[0x654] & 0xA80C2224 ^ 0x22060326 ^ (LODWORD(STACK[0x4F0]) ^ 0x2CA2692C) & STACK[0x608]) << v638)) ^ LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x4D0]);
  v688 = LODWORD(STACK[0x4FC]) ^ ((LODWORD(STACK[0x504]) << v649) + LODWORD(STACK[0x508])) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x4CC]);
  v689 = (v499 & 0x80002F48 ^ 0x2002708 ^ (v644 ^ 0x82002F48) & STACK[0x51C]) >> v610;
  v690 = v616 ^ (((v499 & 0x84106B08 ^ 0x46002328 ^ (LODWORD(STACK[0x698]) ^ 0x80814D4) & STACK[0x51C]) << v649) + v689) ^ LODWORD(STACK[0x5C4]) ^ __ROR4__(*(v299 + 4 * v687), 16) ^ *(v299 + 4 * BYTE2(v681)) ^ __ROR4__(*(v299 + 4 * HIBYTE(v688)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v684)), 8);
  v691 = (v505 & 0x8000B48 ^ 0x20803AC ^ (v659 ^ 0xA080BCCu) & STACK[0x690]) >> v686;
  if (LODWORD(STACK[0x6C8]))
  {
    v692 = (v505 & 0x8C100950 ^ 0x4000184 ^ (LODWORD(STACK[0x4F0]) ^ 0xA18435C) & STACK[0x690]) << v682;
  }

  else
  {
    v692 = 0;
  }

  v693 = v616 ^ LODWORD(STACK[0x5C8]) ^ (v692 ^ v691 | ((v505 & 0x8C100950 ^ 0x4000184 ^ (LODWORD(STACK[0x4F0]) ^ 0xA18435C) & STACK[0x690]) << v682)) ^ __ROR4__(*(v299 + 4 * BYTE1(v681)), 8) ^ *(v299 + 4 * BYTE2(v688)) ^ __ROR4__(*(v299 + 4 * v684), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v687)), 24);
  v694 = v616 ^ v691 ^ (LODWORD(STACK[0x6E0]) << v649) ^ LODWORD(STACK[0x5CC]) ^ *(v299 + 4 * BYTE2(v687)) ^ __ROR4__(*(v299 + 4 * BYTE1(v688)), 8) ^ __ROR4__(*(v299 + 4 * v681), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v684)), 24);
  v695 = v616 ^ (LODWORD(STACK[0x688]) << v682) ^ v689 ^ LODWORD(STACK[0x5D0]) ^ __ROR4__(*(v299 + 4 * (LOBYTE(STACK[0x4FC]) ^ ((LOBYTE(STACK[0x504]) << v649) + LOBYTE(STACK[0x508])) ^ LOBYTE(STACK[0x5B8]) ^ LOBYTE(STACK[0x4CC]))), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v681)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v687)), 8) ^ *(v299 + 4 * BYTE2(v684));
  v696 = v637 ^ (LODWORD(STACK[0x510]) >> v686) ^ ((v499 & 0xD54640C0 ^ 0xE1A26848 ^ (LODWORD(STACK[0x698]) ^ 0xA019030) & STACK[0x518]) << v682) ^ LODWORD(STACK[0x5D4]) ^ *(v299 + 4 * BYTE2(v690)) ^ __ROR4__(*(v299 + 4 * v694), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v693)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v695)), 8);
  v697 = v637 ^ ((v505 & 0x82009010 ^ 0x82A02020 ^ (v685 ^ 0x505F8B8) & STACK[0x534]) << v649) ^ (LODWORD(STACK[0x528]) >> v680) ^ LODWORD(STACK[0x5D8]) ^ __ROR4__(*(v299 + 4 * v690), 16) ^ __ROR4__(*(v299 + 4 * BYTE1(v693)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v695)), 24) ^ *(v299 + 4 * BYTE2(v694));
  v698 = v637 ^ (LODWORD(STACK[0x520]) | (((v685 ^ 0x43E3A018 ^ (LODWORD(STACK[0x678]) - ((67372036 * LODWORD(STACK[0x630])) & 0xA004A000) - 805144061)) & STACK[0x518]) << v682)) ^ LODWORD(STACK[0x5E0]) ^ *(v299 + 4 * BYTE2(v693)) ^ __ROR4__(*(v299 + 4 * v695), 16) ^ __ROR4__(*(v299 + 4 * BYTE1(v690)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v694)), 24);
  v699 = v637 ^ (LODWORD(STACK[0x540]) | LODWORD(STACK[0x524])) ^ LODWORD(STACK[0x5E8]) ^ __ROR4__(*(v299 + 4 * HIBYTE(v690)), 24) ^ __ROR4__(*(v299 + 4 * BYTE1(v694)), 8) ^ *(v299 + 4 * BYTE2(v695)) ^ __ROR4__(*(v299 + 4 * v693), 16);
  v700 = *(v299 + 4 * HIBYTE(v698));
  v701 = v653 ^ ((LODWORD(STACK[0x560]) >> v680) | (LODWORD(STACK[0x554]) << v682)) ^ LODWORD(STACK[0x5EC]) ^ __ROR4__(*(v299 + 4 * BYTE1(v696)), 8) ^ __ROR4__(*(v299 + 4 * v699), 16) ^ __ROR4__(*(v299 + 4 * HIBYTE(v697)), 24) ^ *(v299 + 4 * BYTE2(v698));
  v702 = v653 ^ ((LODWORD(STACK[0x538]) << v649) + (LODWORD(STACK[0x4C8]) >> v686)) ^ LODWORD(STACK[0x5FC]) ^ *(v299 + 4 * BYTE2(v697)) ^ __ROR4__(*(v299 + 4 * BYTE1(v698)), 8) ^ __ROR4__(*(v299 + 4 * HIBYTE(v699)), 24) ^ __ROR4__(*(v299 + 4 * v696), 16);
  v703 = v653 ^ (LODWORD(STACK[0x548]) + LODWORD(STACK[0x574])) ^ LODWORD(STACK[0x5F0]) ^ __ROR4__(*(v299 + 4 * BYTE1(v697)), 8) ^ __ROR4__(*(v299 + 4 * v698), 16) ^ *(v299 + 4 * BYTE2(v699)) ^ __ROR4__(*(v299 + 4 * HIBYTE(v696)), 24);
  v704 = v653 ^ (LODWORD(STACK[0x680]) + LODWORD(STACK[0x56C])) ^ LODWORD(STACK[0x600]) ^ __ROR4__(v700, 24) ^ __ROR4__(*(v299 + 4 * v697), 16) ^ *(v299 + 4 * BYTE2(v696)) ^ __ROR4__(*(v299 + 4 * BYTE1(v699)), 8);
  v705 = *(v665 + 4 * BYTE1(v703));
  v706 = *(v665 + 4 * HIBYTE(v701));
  v707 = *(v665 + 4 * BYTE2(v703));
  v708 = *(v665 + 4 * HIBYTE(v703));
  v709 = *(v665 + 4 * BYTE2(v702));
  v710 = *(v665 + 4 * v701);
  v711 = *(v665 + 4 * BYTE1(v701));
  v712 = v683 ^ v670 ^ LODWORD(STACK[0x614]) ^ *(v665 + 4 * BYTE1(v704)) ^ __ROR4__(*(v665 + 4 * v703), 8) ^ __ROR4__(*(v665 + 4 * HIBYTE(v702)), 16);
  v713 = __ROR4__(*(v665 + 4 * BYTE2(v701)), 24);
  v714 = (v712 ^ v713) - ((2 * (v712 ^ v713)) & 0x5BC37196);
  v715 = v683 ^ v670 ^ LODWORD(STACK[0x618]) ^ v705 ^ __ROR4__(v706, 16) ^ __ROR4__(*(v665 + 4 * BYTE2(v704)), 24) ^ __ROR4__(*(v665 + 4 * v702), 8);
  v716 = LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x620]) ^ v683 ^ __ROR4__(*(v665 + 4 * HIBYTE(v704)), 16) ^ __ROR4__(v707, 24) ^ __ROR4__(v710, 8) ^ *(v665 + 4 * BYTE1(v702));
  v717 = v716 - ((2 * v716) & 0x5BC37196);
  v718 = v683 ^ v670 ^ LODWORD(STACK[0x62C]) ^ __ROR4__(v708, 16) ^ __ROR4__(v709, 24) ^ v711;
  v719 = __ROR4__(*(v665 + 4 * v704), 8);
  v720 = (v718 ^ v719) - ((2 * (v718 ^ v719)) & 0x5BC37196);
  v721 = v715 - ((2 * v715) & 0x5BC37196);
  v722 = STACK[0x6C0];
  v723 = LODWORD(STACK[0x6C0]) ^ 0xB9749BDC;
  v724 = v723 ^ (LODWORD(STACK[0x580]) - 1377716021);
  v725 = v723 ^ (LODWORD(STACK[0x634]) - 1377716021);
  v726 = v723 ^ (LODWORD(STACK[0x590]) - 1377716021);
  v727 = STACK[0x6B0];
  if (STACK[0x6B0])
  {
    v728 = v723 ^ (LODWORD(STACK[0x580]) - 1377716021);
  }

  else
  {
    v728 = v679;
  }

  if (v727)
  {
    v724 = v725;
    v729 = v679;
  }

  else
  {
    v729 = v726;
  }

  if ((v727 & 1) == 0)
  {
    v726 = v725;
  }

  v730 = v722 ^ 0xAFEED74A ^ (v714 - 1377716021);
  v731 = v722 ^ 0xAFEED74A ^ (v721 - 1377716021);
  v732 = v722 ^ 0xAFEED74A ^ (v720 - 1377716021);
  v733 = LODWORD(STACK[0x6A8]) ^ 0x905D7898 ^ (v717 - 1377716021);
  if (v727)
  {
    v734 = v730;
  }

  else
  {
    v734 = v731;
  }

  if ((v727 & 1) == 0)
  {
    v731 = v733;
    v733 = v732;
    v732 = v730;
  }

  v301 = (STACK[0x6B0] & 2) == 0;
  if ((v727 & 2) != 0)
  {
    v735 = v728;
  }

  else
  {
    v735 = v726;
  }

  if ((v727 & 2) != 0)
  {
    v736 = v733;
  }

  else
  {
    v726 = v728;
    v736 = v734;
  }

  v737 = __ROR4__(v736 ^ 0xE3C5310C, 27) ^ 0x78A6219C;
  if ((v727 & 2) != 0)
  {
    v733 = v734;
  }

  v738 = v735 ^ __ROR4__(v737, 5);
  if ((v727 & 2) != 0)
  {
    v739 = v729;
  }

  else
  {
    v739 = v724;
  }

  v740 = v726 ^ v739;
  if ((v727 & 2) != 0)
  {
    v741 = v731;
  }

  else
  {
    v741 = v732;
  }

  v742 = v738 ^ v740 ^ v741;
  v743 = v733 ^ v683;
  v744 = v726 + 2071642053 * ((v742 ^ 0x169A4C96) - (v733 ^ v683));
  if ((STACK[0x6B0] & 2) == 0)
  {
    v724 = v729;
    v732 = v731;
  }

  v745 = v733 ^ v724;
  v746 = v745 ^ v683 ^ v742;
  v747 = v683 ^ 0x169A4C96;
  v748 = (-1611698673 * v746) ^ (-1611698673 * (v732 ^ v683)) ^ (v744 + 785039791 * ((v732 ^ 0x169A4C96 ^ v746) - (v683 ^ 0x169A4C96)));
  v749 = v738 ^ v745;
  v750 = v738 ^ v740 ^ v683;
  v751 = v749 ^ v748;
  v752 = -232303197 * (v751 ^ v732);
  v753 = v748 ^ v740;
  v754 = v750 ^ v748 ^ v740;
  v755 = v748 ^ (-232303197 * v747) ^ v752;
  v756 = v754 ^ v743 ^ v751;
  STACK[0x700] = BYTE2(v756) ^ 0x2DLL;
  v757 = v754 ^ 0xC69A4C95;
  LODWORD(STACK[0x6F8]) = v754;
  v758 = STACK[0x4D8];
  v759 = *(&off_1006B4E30 + (LODWORD(STACK[0x4D8]) ^ 0x298F)) - 4;
  v760 = v759[((v754 ^ 0x4C95) >> 8) ^ 0x61];
  STACK[0x6D8] = BYTE1(v753) ^ 0x19;
  LODWORD(STACK[0x710]) = v760 + (((v754 ^ 0xC69A4C95) >> 8) ^ 0xFFFFFF9E);
  STACK[0x6E8] = BYTE1(v756) ^ 0x98;
  STACK[0x6F0] = v756 ^ 0xE1;
  v761 = v753 ^ 0x3EF5EE3F;
  v762 = v759[((v753 ^ 0x3EF5EE3Fu) >> 24) ^ 0xCLL] + (((v753 ^ 0x3EF5EE3Fu) >> 24) ^ 0xFFFFFFF3);
  LODWORD(STACK[0x6C8]) = v759[((v755 ^ 0xF5968F79) >> 24) ^ 0x64] + (((v755 ^ 0xF5968F79) >> 24) ^ 0xFFFFFF9B);
  STACK[0x6D0] = BYTE1(v755) ^ 0x8DLL;
  STACK[0x6E0] = HIBYTE(v754) ^ 0xABLL;
  v763 = v759[v753 ^ 0x37] + (v753 ^ 0xFFFFFFC8);
  LODWORD(STACK[0x6B8]) = v759[((v755 ^ 0xF5968F79) >> 16) ^ 0x4CLL] + (((v755 ^ 0xF5968F79) >> 16) ^ 0xFFFFFFB3);
  v764 = v759[((v753 ^ 0x3EF5EE3Fu) >> 16) ^ 6] + (((v753 ^ 0x3EF5EE3Fu) >> 16) ^ 0xFFFFFFF9);
  LOBYTE(v748) = v761 - v761 / 0x101;
  v765 = v761 % 0x107;
  v766 = v761 % 0x10D;
  LOBYTE(v747) = v761 % 0x10F;
  v767 = (v755 ^ 0xF5968F79) % 0x10D;
  v768 = (v755 ^ 0xF5968F79) % 0x10F;
  LODWORD(STACK[0x6C0]) = ((v754 ^ 0xC69A4C95) - 257) % 0x101;
  v769 = v762 - 23;
  v770 = v764 - 23;
  LODWORD(STACK[0x658]) = v748 & 0x3F;
  HIDWORD(v772) = (v762 - 23) ^ v748 & 0x3F;
  LODWORD(v772) = (v764 - 23) << 24;
  v771 = v772 >> 31;
  LODWORD(v759) = (v756 ^ 0x7BEC0202) % 0x101;
  v773 = (v756 ^ 0x7BEC0202) % 0x10D;
  v774 = (v756 ^ 0x7BEC0202) % 0x107;
  v775 = (v756 ^ 0x7BEC0202) % 0x10F;
  v776 = *(&off_1006B4E30 + (v758 ^ 0x2922)) - 4;
  v777 = v757 % 0x107;
  v778 = (v776[STACK[0x6D8]] - 36) ^ 0xFFFFFFED;
  LODWORD(STACK[0x620]) = v765 & 0x3F;
  HIDWORD(v772) = v770 ^ v765 & 0x3F;
  LODWORD(v772) = v778 << 24;
  v779 = (v772 >> 31);
  LODWORD(STACK[0x618]) = v766 & 0x3F;
  v780 = (v763 - 23) ^ 0xFFFFFFFC;
  HIDWORD(v772) = v778 ^ v766 & 0x3F;
  LODWORD(v772) = v780 << 24;
  v781 = (v772 >> 31);
  v782 = LODWORD(STACK[0x6C8]) - 23;
  v783 = v747 & 0x3F;
  LODWORD(STACK[0x5E0]) = v783;
  HIDWORD(v772) = v780 ^ v783;
  LODWORD(v772) = v782 << 24;
  v784 = (v772 >> 31);
  v785 = LODWORD(STACK[0x6B8]) - 23;
  v786 = ((v755 ^ 0xF5968F79) % 0x107) & 0x3F;
  v787 = ((v755 ^ 0x79) - ((v755 ^ 0xF5968F79) / 0x101)) & 0x3F;
  LODWORD(STACK[0x654]) = v787;
  LODWORD(STACK[0x610]) = v786;
  v788 = v786 ^ v785 ^ 0xFFFFFFC1;
  HIDWORD(v772) = v782 ^ v787;
  LODWORD(v772) = v788 << 24;
  v789 = (v772 >> 31);
  v790 = (v776[STACK[0x6D0]] - 36) ^ 0xFFFFFFF1;
  HIDWORD(v772) = v788;
  LODWORD(v772) = v790 << 24;
  v791 = (v772 >> 31);
  v792 = v755 ^ 0x7CLL;
  v793 = *(&off_1006B4E30 + (v758 ^ 0x2BCA)) - 8;
  LODWORD(v792) = v793[v792];
  LODWORD(STACK[0x634]) = v768 & 0x3F;
  v794 = ((v768 & 0x3F) - ((2 * v768) & 0x1C) + 14) ^ v792;
  LODWORD(STACK[0x630]) = v767 & 0x3F;
  HIDWORD(v772) = v790 ^ v767 & 0x3F;
  LODWORD(v772) = v792 << 24;
  v795 = v772 >> 31;
  v796 = v776[HIBYTE(v756) ^ 0x1ELL] - 36;
  HIDWORD(v772) = v794;
  LODWORD(v772) = v796 << 24;
  v797 = (v772 >> 31);
  v798 = v793[STACK[0x700]];
  v799 = *(&off_1006B4E30 + (v758 ^ 0x2B2D)) - 12;
  v800 = v799[STACK[0x6E8]] ^ 0xFFFFFFDD;
  LODWORD(STACK[0x5F0]) = v773 & 0x3F;
  v801 = v800 ^ ((v773 & 0x3F) - ((2 * v773) & 0x2A) + 21);
  LODWORD(STACK[0x62C]) = v774 & 0x3F;
  HIDWORD(v772) = ((v774 & 0x3F) - ((2 * v774) & 0x1C) + 14) ^ v798;
  LODWORD(v772) = v801 << 24;
  v802 = (v772 >> 31);
  v803 = v776[STACK[0x6F0]] - 36;
  HIDWORD(v772) = v801;
  LODWORD(v772) = v803 << 24;
  v804 = v772 >> 31;
  v805 = v793[STACK[0x6E0]];
  LODWORD(STACK[0x614]) = v759 & 0x3F;
  v806 = (~((((v798 ^ 0xFFFFFFDF) + 33) ^ ((v798 ^ 0xFFFFFFEE) + 18) ^ ((v798 ^ 0x3F) - 63)) + 14) >> 7) & 1 | (2 * (v759 & 0x3F ^ v796));
  if (v757 <= 0x100)
  {
    v807 = v757;
  }

  else
  {
    v807 = STACK[0x6C0];
  }

  LODWORD(STACK[0x5E8]) = v807 & 0x3F;
  v808 = ((v807 & 0x3F) - ((2 * v807) & 0x1C) + 14) ^ v805;
  LODWORD(STACK[0x5EC]) = v775 & 0x3F;
  HIDWORD(v810) = v775 & 0x3F ^ v803;
  LODWORD(v810) = v805 << 24;
  v809 = (v810 >> 31);
  v811 = v793[BYTE2(v757)] ^ 0xFFFFFFCA;
  v812 = v777 & 0x3F;
  STACK[0x608] = v812;
  v813 = v811 ^ (v812 - ((2 * v777) & 0x1C) + 14);
  HIDWORD(v810) = v808;
  LODWORD(v810) = v813 << 24;
  v814 = v810 >> 31;
  v815 = LODWORD(STACK[0x710]) - 23;
  v816 = (v757 % 0x10D) & 0x3F;
  STACK[0x600] = v816;
  v817 = v816 ^ 0xFFFFFFA2 ^ v815;
  HIDWORD(v810) = v813;
  LODWORD(v810) = v817 << 24;
  v818 = v810 >> 31;
  v819 = v799[LODWORD(STACK[0x6F8]) ^ 0x76];
  LODWORD(STACK[0x5FC]) = (v757 % 0x10F) & 0x3F;
  v820 = v819 ^ (((v757 % 0x10F) & 0x3F) - ((2 * (v757 % 0x10F)) & 0x2A) + 21) ^ 0xFFFFFFE3;
  HIDWORD(v810) = v817;
  LODWORD(v810) = v820 << 24;
  v821 = v810 >> 31;
  STACK[0x660] = v806;
  HIDWORD(v810) = v806 ^ 0x3C;
  LODWORD(v810) = v802 << 24;
  v822 = v810 >> 31;
  STACK[0x680] = v779;
  HIDWORD(v810) = v771 ^ 0x2A;
  LODWORD(v810) = (v779 ^ 0xFFFFFF9A) << 24;
  v823 = v810 >> 31;
  STACK[0x678] = v802;
  HIDWORD(v810) = v802 ^ 0x62;
  LODWORD(v810) = v804 << 24;
  v824 = v810 >> 31;
  HIDWORD(v810) = v779 ^ 0xFFFFFF9A;
  LODWORD(v810) = v781 << 24;
  v825 = v810 >> 31;
  v826 = (v769 >> 7) & 0xFFFFFF87 ^ (2 * v820);
  HIDWORD(v810) = v797 ^ 0x52;
  LODWORD(v810) = v796 << 25;
  v827 = v810 >> 31;
  v828 = *(&off_1006B4E30 + v758 - 10152);
  v829 = STACK[0x570] & 0xF;
  LODWORD(v828) = *(v828 + (v829 ^ 5) - 4);
  HIDWORD(v810) = v828 ^ 6;
  LODWORD(v810) = (v828 ^ 0xC0) << 24;
  v830 = v810 >> 28;
  HIDWORD(v810) = v821;
  LODWORD(v810) = v826 << 24;
  v831 = (v810 >> 31) ^ 0xFFFFFFC9;
  v832 = v824 ^ 0xFFFFFFC4;
  STACK[0x698] = v789;
  HIDWORD(v810) = v789 ^ 0xFFFFFF82;
  LODWORD(v810) = v791 << 24;
  STACK[0x6D8] = (v810 >> 31) ^ 0xFFFFFFA7;
  v833 = v827 ^ 0xFFFFFF90;
  STACK[0x688] = v791;
  HIDWORD(v810) = v791;
  LODWORD(v810) = v795 << 24;
  v834 = (v810 >> 31) ^ 0x74;
  STACK[0x6A0] = v797;
  HIDWORD(v810) = v795;
  LODWORD(v810) = v797 << 24;
  v835 = v810 >> 31;
  STACK[0x6A8] = v781;
  HIDWORD(v810) = v781;
  LODWORD(v810) = v784 << 24;
  STACK[0x6F0] = v835 ^ 0xFFFFFF9D;
  v836 = (v810 >> 31) ^ 0x25;
  STACK[0x690] = v784;
  HIDWORD(v810) = v784;
  LODWORD(v810) = (v789 ^ 0xFFFFFF82) << 24;
  STACK[0x6C8] = (v810 >> 31) ^ 0x62;
  STACK[0x6F8] = v822 ^ 0x49u;
  STACK[0x670] = v809;
  HIDWORD(v810) = v814 ^ 0xFFFFFFFA;
  LODWORD(v810) = v818 << 24;
  v837 = v810 >> 31;
  HIDWORD(v810) = v809 ^ 0xFFFFFFC8;
  LODWORD(v810) = (v814 ^ 0xFFFFFFFA) << 24;
  STACK[0x6C0] = (v810 >> 31) ^ 0xFFFFFFDE;
  v838 = v771;
  if ((v771 & 0x80u) == 0)
  {
    v839 = -78;
  }

  else
  {
    v839 = 53;
  }

  HIDWORD(v840) = v818;
  LODWORD(v840) = v821 << 24;
  STACK[0x6D0] = (v840 >> 31) ^ 0x2E;
  HIDWORD(v840) = v804;
  LODWORD(v840) = (v809 ^ 0xFFFFFFC8) << 24;
  STACK[0x6E0] = v837 ^ 0x1Eu;
  v841 = (v840 >> 31) ^ 0xFFFFFFC1;
  STACK[0x700] = v823 ^ 0xFFFFFFF1;
  v842 = v825 ^ 0xC0;
  STACK[0x6E8] = v839 ^ (2 * v826);
  STACK[0x710] = v829;
  LODWORD(v843) = v834;
  switch(v830 ^ 0x78)
  {
    case 0:
      v843 = STACK[0x700];
      break;
    case 1:
      LODWORD(v843) = v832;
      break;
    case 2:
      v843 = STACK[0x6D8];
      break;
    case 3:
      v843 = STACK[0x6C0];
      break;
    case 4:
      break;
    case 5:
      LODWORD(v843) = v836;
      break;
    case 7:
      v843 = STACK[0x6E0];
      break;
    case 8:
      v843 = STACK[0x6D0];
      break;
    case 9:
      v843 = STACK[0x6F8];
      break;
    case 0xA:
      LODWORD(v843) = v825 ^ 0xFFFFFFC0;
      break;
    case 0xB:
      LODWORD(v843) = v833;
      break;
    case 0xC:
      v843 = STACK[0x6C8];
      break;
    case 0xD:
      v843 = STACK[0x6E8];
      break;
    case 0xE:
      LODWORD(v843) = v831;
      break;
    case 0xF:
      LODWORD(v843) = v841;
      break;
    default:
      v843 = STACK[0x6F0];
      break;
  }

  STACK[0x6B0] = v833;
  STACK[0x6B8] = v831;
  v844 = STACK[0x710];
  v845 = (((((STACK[0x710] ^ 0xB1) - 3) ^ ((STACK[0x710] ^ 0x74) + 58) ^ ((STACK[0x710] ^ 0xCC) - 126)) - (((STACK[0x710] ^ 0x62) + 127) ^ ((STACK[0x710] ^ 0xBF) - 92) ^ ((STACK[0x710] ^ 0xF3) - 16)) + 126) ^ 0xE1) + 15;
  v846 = ((((STACK[0x710] ^ 0xB1) - 3) ^ ((STACK[0x710] ^ 0x74) + 58) ^ ((STACK[0x710] ^ 0xCC) - 126)) - (((STACK[0x710] ^ 0x62) + 127) ^ ((STACK[0x710] ^ 0xBF) - 92) ^ ((STACK[0x710] ^ 0xF3) - 16)) + 126) ^ (18 - ((((STACK[0x710] ^ 0xB1) - 3) ^ ((STACK[0x710] ^ 0x74) + 58) ^ ((STACK[0x710] ^ 0xCC) - 126)) - (((STACK[0x710] ^ 0x62) + 127) ^ ((STACK[0x710] ^ 0xBF) - 92) ^ ((STACK[0x710] ^ 0xF3) - 16)))) ^ ((((((STACK[0x710] ^ 0xB1) - 3) ^ ((STACK[0x710] ^ 0x74) + 58) ^ ((STACK[0x710] ^ 0xCC) - 126)) - (((STACK[0x710] ^ 0x62) + 127) ^ ((STACK[0x710] ^ 0xBF) - 92) ^ ((STACK[0x710] ^ 0xF3) - 16)) + 126) ^ 5) - 21) ^ ((((((STACK[0x710] ^ 0xB1) - 3) ^ ((STACK[0x710] ^ 0x74) + 58) ^ ((STACK[0x710] ^ 0xCC) - 126)) - (((STACK[0x710] ^ 0x62) + 127) ^ ((STACK[0x710] ^ 0xBF) - 92) ^ ((STACK[0x710] ^ 0xF3) - 16)) + 126) ^ 0xB) + 37) ^ v845;
  v847 = v846 & 0x3F ^ *(*(&off_1006B4E30 + (LODWORD(STACK[0x3D0]) ^ 0x2EBE)) + (v829 ^ 0xE)) ^ 0xBF;
  if (STACK[0x710] == 9)
  {
    v848 = 57;
  }

  else
  {
    v848 = -71;
  }

  v849 = *(*(&off_1006B4E30 + LODWORD(STACK[0x3D0]) - 9718) + (v844 ^ 4) - 12) ^ 0x56;
  v850 = v844 ^ v848 ^ *(*(&off_1006B4E30 + (LODWORD(STACK[0x3D0]) ^ 0x29A4)) + (STACK[0x710] ^ 1) - 4) ^ v849 ^ (120 * v849) ^ 0xFFFFFFA7;
  v851 = v850 ^ v843;
  switch(v847)
  {
    case 0:
      STACK[0x700] = v851;
      goto LABEL_441;
    case 1:
      goto LABEL_442;
    case 2:
      STACK[0x6D8] = v851;
      goto LABEL_441;
    case 3:
      STACK[0x6C0] = v851;
      goto LABEL_441;
    case 4:
      LOBYTE(v834) = v850 ^ v843;
      goto LABEL_441;
    case 5:
      LOBYTE(v836) = v850 ^ v843;
      goto LABEL_441;
    case 6:
      STACK[0x6F0] = v851;
      goto LABEL_441;
    case 7:
      STACK[0x6E0] = v851;
      goto LABEL_441;
    case 8:
      STACK[0x6D0] = v851;
      goto LABEL_441;
    case 9:
      STACK[0x6F8] = v851;
      goto LABEL_441;
    case 10:
      v842 = v850 ^ v843;
      goto LABEL_441;
    case 11:
      STACK[0x6B0] = v851;
      goto LABEL_441;
    case 13:
      STACK[0x6E8] = v851;
      goto LABEL_441;
    case 14:
      STACK[0x6B8] = v851;
      goto LABEL_441;
    case 15:
      LOBYTE(v841) = v850 ^ v843;
      goto LABEL_441;
    default:
      STACK[0x6C8] = v851;
LABEL_441:
      LOBYTE(v851) = v832;
LABEL_442:
      v852 = STACK[0x558];
      v853 = STACK[0x680] ^ ((STACK[0x680] ^ 0x63) - ((2 * (STACK[0x680] ^ 0x63) + 2) & 0x3E) - 32) ^ *(STACK[0x558] + (STACK[0x680] ^ 0x38));
      v854 = STACK[0x400];
      v855 = *(STACK[0x400] + (v804 ^ 0xEALL));
      v856 = v855 ^ ((v855 ^ 0x74) >> 2) ^ ((v855 ^ 0x74) >> 1) ^ 0x47;
      v857 = *(STACK[0x400] + (v821 ^ 0xA8));
      v858 = ((v857 ^ 0x74) >> 2) ^ ((v857 ^ 0x74) >> 1);
      LOBYTE(v858) = v857 ^ 0x41 ^ (v858 + (~(2 * v858) | 0xCB) - 101);
      v859 = *(STACK[0x400] + (STACK[0x688] ^ 0x4BLL));
      v860 = *(STACK[0x400] + (STACK[0x690] ^ 0x30));
      v861 = v860 ^ ((v860 ^ 0x74) >> 2) ^ ((v860 ^ 0x74) >> 1);
      v862 = *(STACK[0x400] + (v826 ^ 0xD3)) ^ 0x74 ^ ((*(STACK[0x400] + (v826 ^ 0xD3)) ^ 0x74) >> 2) ^ ((*(STACK[0x400] + (v826 ^ 0xD3)) ^ 0x74) >> 1);
      v863 = STACK[0x3D0];
      v864 = *(&off_1006B4E30 + (LODWORD(STACK[0x3D0]) ^ 0x288E)) - 4;
      v865 = v864[STACK[0x678] ^ 0xE7];
      v866 = STACK[0x408];
      v867 = (v856 << 8) | ((v865 ^ (v865 >> 3) ^ ((~v865 & 0x80) >> 7) ^ 0xC8) << 16);
      v868 = (*(STACK[0x408] + (v814 ^ 0x35)) - 29) ^ 0xB6;
      v869 = v864[STACK[0x660] ^ 0x28];
      v870 = (((v859 ^ ((v859 ^ 0x74) >> 2) ^ ((v859 ^ 0x74) >> 1)) ^ 0xDE) << 16) | (((v795 ^ ((v795 ^ 0xD3) - ((2 * (v795 ^ 0xD3) + 2) & 0x3E) - 32) ^ *(STACK[0x558] + (v795 ^ 0x88))) ^ 0xF) << 8);
      v871 = v867 | ((v869 ^ (v869 >> 3) ^ ((~v869 & 0x80) >> 7) ^ 0x30) << 24);
      LODWORD(STACK[0x690]) = v871 - ((2 * v871) & 0x8CF00800);
      v872 = *(v854 + (STACK[0x698] ^ 0x25));
      v873 = *(v854 + (v838 ^ 0x53));
      v874 = v870 | ((v872 ^ ((v872 ^ 0x74) >> 2) ^ ((v872 ^ 0x74) >> 1) ^ 0x84) << 24);
      v875 = ((2 * v873) & 0xFFFFFFDC ^ 0xFFFFFFEB) + (((v873 ^ 0xFFFFFFB0) + 80) ^ ((v873 ^ 0xFFFFFFD7) + 41) ^ ((v873 ^ 0xFFFFFFFD) + 3)) - 119;
      v876 = (((2 * v873) & 0xDC ^ 0xEB) + (((v873 ^ 0xB0) + 80) ^ ((v873 ^ 0xD7) + 41) ^ ((v873 ^ 0xFD) + 3)) - 119);
      v877 = v875 ^ (v876 >> 2) ^ (v876 >> 1);
      v878 = v864[STACK[0x6A0] ^ 0xC5];
      LOBYTE(v878) = v878 ^ 0xF5 ^ ((~v878 & 0x80u) >> 7) ^ (((v878 ^ 0xF5) & 0xF8) >> 3);
      LODWORD(STACK[0x6A0]) = (v874 & 0xFFFFFF00 | v878) - 2 * ((v874 & 0x6DBEE300 | v878 & 0x57) ^ v878 & 1);
      v879 = ((v853 ^ 0x48) << 16) | ((v877 ^ 0xB1) << 24);
      LODWORD(STACK[0x698]) = (v879 & 0xFFFFFF00 | v861 ^ 0x1F) + 272171102 - 2 * ((v879 & 0x10390000 | (v861 ^ 0x1F) & 0x5E) ^ (v861 ^ 0x1F) & 0x1C);
      v880 = v864[v818 ^ 0x79];
      v881 = STACK[0x670] ^ ((STACK[0x670] ^ 0x3E) - ((2 * (STACK[0x670] ^ 0x3E) + 2) & 0x3E) - 32) ^ *(v852 + (STACK[0x670] ^ 0x65)) ^ 0x4A;
      v882 = ((((v880 ^ 0xFFFFFFF5) & 0x31 ^ ((~v880 & 0x80u) >> 7) ^ ((v880 ^ 0xF5) >> 3) & 0xF1 | ((v880 ^ 0xF5) >> 3) & 0xE ^ (v880 ^ 0xFFFFFFF5) & 0xCE) ^ 0xEE) << 16) | (v868 << 24) | v862 | (v858 << 8);
      LODWORD(STACK[0x688]) = v882 - 2 * (v882 & 0x22E1453B ^ v862 & 8);
      LODWORD(STACK[0x680]) = v881 - ((2 * v881) & 0xF2);
      LOBYTE(v882) = v836 ^ ((v836 ^ 0x10) - ((2 * (v836 ^ 0x10) + 2) & 0x3E) - 32) ^ *(v852 + (v836 ^ 0x4BLL));
      LOBYTE(v878) = *(v854 + (STACK[0x6C8] ^ 0xF5));
      LOBYTE(v881) = v834 ^ ((v834 ^ 0x71) + ((60 - 2 * (v834 ^ 0x71)) | 0xC1) - 31) ^ *(v852 + (v834 ^ 0x2ALL)) ^ 0x97;
      v883 = v878 ^ ((v878 ^ 0x74) >> 2) ^ ((v878 ^ 0x74) >> 1);
      LOBYTE(v878) = *(v854 + (STACK[0x6C0] ^ 0x15));
      LOBYTE(v878) = v878 ^ ((v878 ^ 0x74) >> 2) ^ ((v878 ^ 0x74) >> 1) ^ 0xF6;
      v884 = STACK[0x6B0] ^ 0xF9;
      v885 = v864[v851 ^ 0xA0];
      LODWORD(STACK[0x6C8]) = ((((v841 ^ ((v841 ^ 0xDE) - ((2 * (v841 ^ 0xDE) + 2) & 0x3E) - 32) ^ *(v852 + (v841 ^ 0x85))) ^ 0xAE) << 8) | ((v885 ^ (v885 >> 3) ^ ((~v885 & 0x80) >> 7) ^ 0xB7) << 16) | v878) - 2 * ((((((v841 ^ ((v841 ^ 0xDE) - ((2 * (v841 ^ 0xDE) + 2) & 0x3E) - 32) ^ *(v852 + (v841 ^ 0x85))) ^ 0xAE) << 8) | ((v885 ^ (v885 >> 3) ^ ((~v885 & 0x80) >> 7) ^ 0xB7) << 16)) & 0xA23E1F | v878 & 0x1F) ^ v878 & 1);
      STACK[0x3F8] = v864;
      v886 = v864[v884] ^ (v864[v884] >> 3) ^ ((~v864[v884] & 0x80u) >> 7) ^ 0x92;
      v887 = (v881 << 16) | (((*(v866 + (STACK[0x6D8] ^ 0x22)) - 29) ^ 0x51) << 24) | v886;
      LODWORD(STACK[0x6D8]) = v887 - 2 * (v887 & 0x6786005E ^ v886 & 0x14);
      v888 = STACK[0x6D0] ^ 0xBDLL;
      v883 ^= 0xE5u;
      v889 = ((v882 ^ 0x97) << 8) | (((v842 ^ ((v842 ^ 0xD1) - ((2 * (v842 ^ 0xD1) + 2) & 0x3E) - 32) ^ *(v852 + (v842 ^ 0x8ALL))) ^ 0xB9) << 16) | v883;
      LODWORD(STACK[0x6C0]) = v889 - 2 * (v889 & 0x8D715F ^ v883 & 7);
      v890 = *(v854 + v888);
      LODWORD(STACK[0x6B0]) = v890;
      v891 = ((v890 ^ 0x74) >> 2) ^ ((v890 ^ 0x74) >> 1);
      v892 = STACK[0x700];
      v893 = STACK[0x700] ^ 0x9ALL;
      v894 = (~(2 * STACK[0x700]) & 0xFFFFFF82) + STACK[0x700] - 128;
      LOBYTE(v887) = *(v866 + (STACK[0x6A8] ^ 0x22));
      LODWORD(STACK[0x6D0]) = v863 - 10025;
      v895 = v887 - 29;
      v896 = *(v854 + (STACK[0x6B8] ^ 6));
      v897 = *(v866 + (STACK[0x6E0] ^ 0x36)) - 29;
      v898 = v891 - ((2 * v891) & 0x34) - 102;
      v899 = *(v854 + (STACK[0x6E8] ^ 0x73));
      v900 = *(v866 + (STACK[0x6F0] ^ 0x16)) - 29;
      LODWORD(STACK[0x6F0]) = *(v852 + v893);
      v901 = STACK[0x6F8] ^ 0x55;
      LODWORD(STACK[0x6F8]) = v894 - 2 * (v894 & 0x1F) - 97;
      v902 = *(v854 + v901);
      v903 = STACK[0x668];
      v904 = (*(STACK[0x668] + 8 * (v863 ^ 0x1A93)))(1032);
      v905 = STACK[0x710] == 9;
      v906 = 1;
      if (STACK[0x710] != 9)
      {
        v906 = 2;
      }

      STACK[0x710] = v906;
      v907 = LODWORD(STACK[0x6A0]) - 306257066;
      v908 = LODWORD(STACK[0x688]) + 585188659;
      v909 = (LODWORD(STACK[0x680]) + 1022332793) & 0x840B003 ^ 0xC59D10B6 ^ ((LODWORD(STACK[0x680]) + 1022332793) ^ 0xC3107086) & ((LODWORD(STACK[0x690]) - 965213061) ^ 0xF2E34B87);
      v910 = (((LODWORD(STACK[0x698]) + 2788) ^ 0x6BA8359D) & ~((v895 ^ 0xAB) << 8) | ((v895 ^ 0xAB) << 8) & 0xC1FF) ^ 0x8B035A6E;
      v911 = LODWORD(STACK[0x6C8]) + 1436696094;
      v912 = (((v896 ^ ((v896 ^ 0x74) >> 2) ^ ((v896 ^ 0x74) >> 1)) ^ 0xEF) << 8) | ((v897 ^ 0xAAAAAAAA) << 24) | (((LODWORD(STACK[0x6B0]) ^ v898) ^ 0x66) << 16) | v899 ^ 0x74;
      v913 = (LODWORD(STACK[0x6D8]) + 1736885578) & 0xA8B286A8 ^ 0x8078C5A7 ^ ((LODWORD(STACK[0x6D8]) + 1736885578) ^ 0x10493A15) & (((v900 ^ 0x49) << 8) ^ 0x574D5157);
      v914 = (v892 ^ LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x6F0]) ^ 0x18) << 24;
      v915 = v914 & 0xDC000000 ^ 0xD39A023A ^ ((LODWORD(STACK[0x6C0]) - 1165135528) ^ 0x998517D3) & (v914 ^ 0x7FFFFFFF);
      STACK[0x7B8] = v904;
      v916 = v911 & 0x17A379F1 ^ 0x84B86155 ^ (((v902 ^ ((v902 ^ 0x74) >> 2) ^ ((v902 ^ 0x74) >> 1) ^ 0x8B) << 24) ^ 0x685C860E) & (v911 ^ 0xAA5DF951);
      v917 = v907 ^ 0x1A09F360;
      v918 = v908 ^ 0xA8909433;
      if (!v905)
      {
        v917 = v913;
      }

      LODWORD(STACK[0x3F4]) = v917;
      if (v905)
      {
        v919 = v909;
      }

      else
      {
        v919 = v916;
      }

      LODWORD(STACK[0x3F0]) = v919;
      v920 = ((v899 ^ 0x74u) >> 2) ^ ((v899 ^ 0x74u) >> 1) ^ 0x8A71D1ED ^ v912;
      if (v905)
      {
        v920 = v918;
      }

      LODWORD(STACK[0x3EC]) = v920;
      if (v905)
      {
        v921 = v910;
      }

      else
      {
        v921 = v915;
      }

      LODWORD(STACK[0x3E8]) = v921;
      v922 = (*(v903 + 8 * (v863 ^ 0x1A93)))(1028);
      STACK[0x7D8] = v922;
      if (v922)
      {
        v930 = STACK[0x7B8] == 0;
      }

      else
      {
        v930 = 1;
      }

      v931 = !v930;
      return (*(v903 + 8 * ((2531 * v931) ^ LODWORD(STACK[0x6D0]))))(v922, v923, v924, v925, v926, v927, v928, v929, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
  }
}

uint64_t sub_100127AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x6F8] = LODWORD(STACK[0x5E0]) ^ 0x35u;
  v73 = (LODWORD(STACK[0x3D0]) - 9799) | 0x41;
  LODWORD(STACK[0x548]) = v73 + 5122;
  v74 = STACK[0x7B0];
  v75 = *(STACK[0x400] + (STACK[0x238] ^ 0x1A));
  v76 = (((*(STACK[0x408] + (STACK[0x218] ^ 0x78)) - 29) ^ 0xDB) << ((v73 + 2) ^ 0x6F)) + (*(STACK[0x558] + (STACK[0x220] ^ 0x80)) ^ ((STACK[0x220] ^ 0xDB) + 65) ^ STACK[0x220] ^ 0xDB ^ 0x9F) + ((BYTE2(LODWORD(STACK[0x244])) ^ 0xC6 ^ ((HIWORD(LODWORD(STACK[0x244])) ^ 0xC6) - ((2 * (HIWORD(LODWORD(STACK[0x244])) ^ 0xC6) + 2) & 0x3E) - 32) ^ *(STACK[0x558] + (STACK[0x228] ^ 0x9D)) ^ 0x15) << 16) + ((v75 ^ ((v75 ^ v72) >> 2) ^ ((v75 ^ v72) >> 1) ^ 0xE8) << 24);
  v77 = *(a70 + (*(STACK[0x7B0] + 8) ^ 0x55));
  v78 = *(STACK[0x210] + (*(STACK[0x7B0] + 1) ^ 8));
  HIDWORD(v79) = v78 ^ 4;
  LODWORD(v79) = (v78 ^ 0x38) << 24;
  v80 = *(a72 + (*STACK[0x7B0] ^ 0x57));
  v81 = *(&off_1006B4E30 + (v73 ^ 0x46));
  v82 = (*(v81 + (*(STACK[0x7B0] + 4) ^ 0xB1)) ^ 0xA0) & 0xFF00FFFF | ((v77 ^ ((v77 ^ 0xEA) >> 6) ^ ((v77 ^ 0xEA) >> 3) ^ 0xF) << 24) | ((v80 ^ (16 * (v80 ^ 0x6C)) ^ (4 * (v80 ^ 0x6C)) ^ v72) << 16);
  v83 = (*(v81 + (*(STACK[0x7B0] + 7) ^ 0xB1)) ^ 0xA0) & 0xFFFF00FF | (((v79 >> 27) ^ v72) << 8);
  v84 = (*(STACK[0x208] + (*(STACK[0x7B0] + 11) ^ 0xD8)) - 7) | (((*(STACK[0x200] + (*(STACK[0x7B0] + 5) ^ 0xF5)) + 42) ^ 0xB0) << 24) | ((*(STACK[0x230] + (*(STACK[0x7B0] + 13) ^ 0xFALL)) ^ 0x7C) << 16);
  LODWORD(v81) = *(*(&off_1006B4E30 + v73 - 203) + (*(STACK[0x7B0] + 14) ^ 0x9ELL) - 12) ^ (*(STACK[0x7B0] + 14) - ((2 * *(STACK[0x7B0] + 14)) & 0x1A) - 115) ^ 0xE2 | ((*(a71 + (*(STACK[0x7B0] + 12) ^ 0x77)) ^ 0x21) << 16) | ((*(*(&off_1006B4E30 + v73 - 413) + (*(STACK[0x7B0] + 15) ^ 0x56) - 12) ^ 0x6B) << 8);
  v85 = *(STACK[0x7B0] + 2) ^ 0xAALL;
  LODWORD(STACK[0x700]) = v73;
  LODWORD(v85) = *(*(&off_1006B4E30 + (v73 ^ 0x452)) + v85 - 8);
  v86 = v84 & 0xFFFF00FF | ((v85 ^ 0xA0 ^ (~v85 >> 2) & 0x24) << 8);
  v87 = *(STACK[0x278] + (v74[3] ^ 0xD7));
  LODWORD(v85) = v83 | ((*(*(&off_1006B4E30 + (v73 ^ 0x551)) + (v74[6] ^ 0x89) - 8) ^ (v74[6] - 2 * (v74[6] & 1) - 127) ^ 0x99) << 16);
  HIDWORD(v79) = v87 ^ 9;
  LODWORD(v79) = (v87 ^ 0x80) << 24;
  v88 = *(STACK[0x258] + (v74[9] ^ 0xDELL));
  LODWORD(v85) = v85 | (((v79 >> 29) ^ 0x98) << 24);
  LODWORD(v74) = v82 | ((*(STACK[0x248] + (v74[10] ^ 0x59)) ^ (v74[10] - ((2 * v74[10]) & 0xDD) + 110) ^ 0x16) << 8);
  LODWORD(v81) = (v81 | ((v88 ^ 2) << 24)) ^ v76;
  LODWORD(STACK[0x6F0]) = v76;
  v89 = v86 ^ v76 ^ v85 ^ v74;
  v90 = v74 ^ v81 ^ v85;
  LODWORD(v74) = v81 ^ v74 ^ 0x7EFCE7F8;
  LODWORD(v81) = v81 ^ v85 ^ 0xA3 ^ v89;
  v91 = v74 ^ v81;
  v92 = v81 ^ v76 ^ 0x1BDA5E33;
  v93 = (*(STACK[0x288] + 4 * ((v89 ^ 0x22FF6608u) >> 16)) + 1493488804) ^ __ROR4__(*(STACK[0x2A0] + 4 * ((v74 ^ v81) >> 24)) ^ 0x9377498F, 24) ^ __ROR4__(*(STACK[0x298] + 4 * BYTE1(v92)) ^ 0x686A4A2F, 8) ^ __ROR4__(*(STACK[0x298] + 4 * (v90 ^ 0x62u)) ^ 0x686A4A2F, 16);
  LODWORD(v74) = *(STACK[0x290] + 4 * HIBYTE(v92));
  HIDWORD(v79) = v74 ^ ((v74 ^ 0x2A74D46C) >> 6) ^ ((v74 ^ 0x2A74D46C) >> 4) ^ 0xDC6B03C7;
  LODWORD(v79) = HIDWORD(v79);
  v94 = *(STACK[0x290] + 4 * v91);
  v95 = (*(STACK[0x288] + 4 * ((BYTE2(v81) ^ BYTE2(v76)) ^ 0xCFu)) + 1493488804) ^ __ROR4__((*(STACK[0x288] + 4 * ((v89 ^ 0x22FF6608u) >> 24)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__(*(STACK[0x298] + 4 * (BYTE1(v90) ^ 0x44u)) ^ 0x686A4A2F, 8);
  v96 = v94 ^ ((v94 ^ 0x2A74D46Cu) >> 6) ^ ((v94 ^ 0x2A74D46Cu) >> 4);
  v97 = *(STACK[0x298] + 4 * (BYTE2(v90) ^ 0xFAu));
  v98 = (*(STACK[0x288] + 4 * BYTE2(v91)) + 1493488804) ^ __ROR4__(*(STACK[0x2A0] + 4 * (HIBYTE(v90) ^ 0xD)) ^ 0x9377498F, 24) ^ __ROR4__(*(STACK[0x2A0] + 4 * ((v89 ^ 0x6608) >> 8)) ^ 0x9377498F, 8) ^ __ROR4__((*(STACK[0x288] + 4 * ((v81 ^ v76) ^ 0x33u)) + 1493488804) ^ 0xACD34B3E, 16) ^ 0x3DB3D81D;
  v99 = v97 ^ __ROR4__(*(STACK[0x298] + 4 * BYTE1(v91)) ^ 0x686A4A2F, 8) ^ __ROR4__((*(STACK[0x288] + 4 * (v89 ^ 8u)) + 1493488804) ^ 0xACD34B3E, 16) ^ 0x912228DB ^ ((v79 >> 24) - ((2 * (v79 >> 24)) & 0x7FC631EC) + 1071847670);
  v100 = v93 ^ 0x57270B14;
  v101 = HIBYTE(v93) ^ 0x9C;
  v102 = v96 ^ 0xDC6B03C7;
  v103 = *(STACK[0x2A0] + 4 * v101);
  v104 = v95 ^ __ROR4__(v102, 16);
  HIDWORD(v79) = v103 ^ 0x9377498F;
  LODWORD(v79) = v103 ^ 0x9377498F;
  v105 = (v79 >> 24) - ((2 * (v79 >> 24)) & 0x7FC631EC);
  v106 = *(STACK[0x290] + 4 * BYTE1(v99));
  v107 = *(STACK[0x290] + 4 * BYTE2(v98)) ^ 0x2A74D46C;
  v108 = v104 ^ 0x9E74FB1E;
  v109 = *(STACK[0x298] + 4 * ((v104 ^ 0x9E74FB1E) >> 16));
  v110 = v107 ^ (v107 >> 6) ^ (v107 >> 4) ^ __ROR4__((*(STACK[0x288] + 4 * HIBYTE(v99)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__(*(STACK[0x2A0] + 4 * BYTE1(v100)) ^ 0x9377498F, 8) ^ __ROR4__(*(STACK[0x298] + 4 * (v104 ^ 0x40u)) ^ 0x686A4A2F, 16);
  HIDWORD(v79) = (*(STACK[0x288] + 4 * HIBYTE(v108)) + 1493488804) ^ 0xACD34B3E;
  LODWORD(v79) = HIDWORD(v79);
  v111 = v109 ^ (v105 + 1071847670) ^ __ROR4__((*(STACK[0x288] + 4 * v98) + 1493488804) ^ 0xACD34B3E, 16) ^ __ROR4__(v106 ^ ((v106 ^ 0x2A74D46Cu) >> 6) ^ ((v106 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 8) ^ 0xA18C932C;
  v112 = *(STACK[0x290] + 4 * BYTE2(v100)) ^ 0x2A74D46C;
  v113 = v112 ^ __ROR4__(*(STACK[0x2A0] + 4 * HIBYTE(v98)) ^ 0x9377498F, 24) ^ (v112 >> 4) ^ (v112 >> 6) ^ __ROR4__(*(STACK[0x298] + 4 * BYTE1(v108)) ^ 0x686A4A2F, 8);
  v114 = *(STACK[0x298] + 4 * BYTE2(v99));
  v115 = v113 ^ __ROR4__((*(STACK[0x288] + 4 * v99) + 1493488804) ^ 0xACD34B3E, 16) ^ 0xCB413B90;
  v116 = v114 ^ __ROR4__(*(STACK[0x2A0] + 4 * BYTE1(v98)) ^ 0x9377498F, 8) ^ __ROR4__(*(STACK[0x2A0] + 4 * v100) ^ 0x9377498F, 16) ^ ((v79 >> 24) - ((2 * (v79 >> 24)) & 0x7FC631EC) + 1071847670) ^ 0x5C2D08B1;
  v117 = *(STACK[0x290] + 4 * HIBYTE(v111));
  v118 = *(STACK[0x290] + 4 * (BYTE1(v110) ^ 0xAAu));
  v119 = v117 ^ ((v117 ^ 0x2A74D46Cu) >> 6) ^ ((v117 ^ 0x2A74D46Cu) >> 4);
  v120 = *(STACK[0x298] + 4 * BYTE2(v116)) ^ __ROR4__(*(STACK[0x298] + 4 * v115) ^ 0x686A4A2F, 16) ^ __ROR4__(v118 ^ ((v118 ^ 0x2A74D46Cu) >> 6) ^ ((v118 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 8);
  v121 = *(STACK[0x290] + 4 * BYTE2(v111)) ^ 0x2A74D46C;
  v122 = v121 ^ __ROR4__(*(STACK[0x2A0] + 4 * HIBYTE(v115)) ^ 0x9377498F, 24) ^ (v121 >> 4) ^ (v121 >> 6) ^ __ROR4__(*(STACK[0x298] + 4 * BYTE1(v116)) ^ 0x686A4A2F, 8) ^ __ROR4__(*(STACK[0x298] + 4 * (v110 ^ 0xDEu)) ^ 0x686A4A2F, 16);
  v123 = *(STACK[0x290] + 4 * v116);
  v124 = (*(STACK[0x288] + 4 * BYTE2(v115)) + 1493488804) ^ __ROR4__(*(STACK[0x298] + 4 * (HIBYTE(v110) ^ 0x94)) ^ 0x686A4A2F, 24) ^ __ROR4__(*(STACK[0x298] + 4 * BYTE1(v111)) ^ 0x686A4A2F, 8) ^ __ROR4__(v123 ^ ((v123 ^ 0x2A74D46Cu) >> 6) ^ ((v123 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 16);
  v125 = *(STACK[0x290] + 4 * v111);
  v126 = (*(STACK[0x288] + 4 * (BYTE2(v110) ^ 0x9Du)) + 1493488804) ^ __ROR4__((*(STACK[0x288] + 4 * HIBYTE(v116)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__(*(STACK[0x298] + 4 * BYTE1(v115)) ^ 0x686A4A2F, 8) ^ __ROR4__(v125 ^ ((v125 ^ 0x2A74D46Cu) >> 6) ^ ((v125 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 16);
  HIDWORD(v79) = v119 ^ 0xDC6B03C7;
  LODWORD(v79) = v119 ^ 0xDC6B03C7;
  v127 = *(STACK[0x290] + 4 * ((v122 ^ 0xEA1F6188) >> 24));
  v128 = ((v127 ^ 0x2A74D46Cu) >> 6) ^ ((v127 ^ 0x2A74D46Cu) >> 4);
  v129 = v120 ^ ((v79 >> 24) - ((2 * (v79 >> 24)) & 0x7FC631EC) + 1071847670);
  v130 = (*(STACK[0x288] + 4 * (BYTE2(v129) ^ 0xC4u)) + 1493488804) ^ __ROR4__(*(STACK[0x2A0] + 4 * (BYTE1(v126) ^ 0x96u)) ^ 0x9377498F, 8) ^ __ROR4__(*(STACK[0x298] + 4 * (v124 ^ 0xC8u)) ^ 0x686A4A2F, 16) ^ __ROR4__(v127 ^ 0xD4E5E2F5 ^ (v128 - ((2 * v128) & 0x111DC264) + 143581490), 24);
  v131 = v129 ^ 0x13B3FD8B;
  v132 = (*(STACK[0x288] + 4 * ((v122 ^ 0xEA1F6188) >> 16)) + 1493488804) ^ __ROR4__(*(STACK[0x298] + 4 * ((v124 ^ 0xBA4198C8) >> 24)) ^ 0x686A4A2F, 24) ^ __ROR4__((*(STACK[0x288] + 4 * ((v129 ^ 0xFD8B) >> 8)) + 1493488804) ^ 0xACD34B3E, 8) ^ __ROR4__(*(STACK[0x298] + 4 * (v126 ^ 0x83u)) ^ 0x686A4A2F, 16);
  v126 ^= 0xB5E5DDDu;
  v133 = *(STACK[0x290] + 4 * ((v122 ^ 0x6188) >> 8));
  HIDWORD(v79) = (*(STACK[0x288] + 4 * HIBYTE(v131)) + 1493488804) ^ 0xACD34B3E;
  LODWORD(v79) = HIDWORD(v79);
  v134 = *(STACK[0x298] + 4 * BYTE2(v126)) ^ __ROR4__(*(STACK[0x2A0] + 4 * ((v124 ^ 0x98C8) >> 8)) ^ 0x9377498F, 8) ^ ((v79 >> 24) - ((2 * (v79 >> 24)) & 0x7FC631EC) + 1071847670) ^ __ROR4__((*(STACK[0x288] + 4 * (v122 ^ 0x9Du)) + 1493488804) ^ 0xACD34B3E, 16);
  v135 = *(STACK[0x290] + 4 * (BYTE2(v124) ^ 0x67u)) ^ 0x2A74D46C;
  v136 = v135 ^ (v135 >> 6) ^ (v135 >> 4) ^ __ROR4__((*(STACK[0x288] + 4 * HIBYTE(v126)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__((*(STACK[0x288] + 4 * v131) + 1493488804) ^ 0xACD34B3E, 16) ^ __ROR4__(v133 ^ ((v133 ^ 0x2A74D46Cu) >> 6) ^ ((v133 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 8);
  v137 = v134 ^ 0x5616B3BE;
  v138 = *(STACK[0x290] + 4 * ((v134 ^ 0x5616B3BEu) >> 24));
  v139 = (*(STACK[0x288] + 4 * (BYTE2(v136) ^ 0xC3u)) + 1493488804) ^ __ROR4__((*(STACK[0x288] + 4 * (BYTE1(v132) ^ 0x70u)) + 1493488804) ^ 0xACD34B3E, 8) ^ __ROR4__(*(STACK[0x2A0] + 4 * (v130 ^ 0x37u)) ^ 0x9377498F, 16) ^ __ROR4__(v138 ^ ((v138 ^ 0x2A74D46Cu) >> 6) ^ ((v138 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 24);
  v140 = (*(STACK[0x288] + 4 * BYTE2(v137)) + 1493488804) ^ __ROR4__(*(STACK[0x298] + 4 * (HIBYTE(v130) ^ 0x10)) ^ 0x686A4A2F, 24) ^ __ROR4__(*(STACK[0x298] + 4 * (BYTE1(v136) ^ 0x22u)) ^ 0x686A4A2F, 8) ^ __ROR4__((*(STACK[0x288] + 4 * (v132 ^ 0x7Bu)) + 1493488804) ^ 0xACD34B3E, 16);
  v141 = *(STACK[0x290] + 4 * BYTE1(v137));
  v142 = ((v141 ^ 0x2A74D46Cu) >> 6) ^ ((v141 ^ 0x2A74D46Cu) >> 4);
  v143 = HIBYTE(v136) ^ 0xF4;
  v144 = (*(STACK[0x288] + 4 * (BYTE2(v130) ^ 0xB5u)) + 1493488804) ^ __ROR4__((*(STACK[0x288] + 4 * ((v132 ^ 0xAE00657B) >> 24)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__((*(STACK[0x288] + 4 * (v136 ^ 0xDAu)) + 1493488804) ^ 0xACD34B3E, 16) ^ __ROR4__(v141 ^ 0xD4E5E2F5 ^ (v142 - ((2 * v142) & 0x111DC264) + 143581490), 8);
  HIDWORD(v79) = (*(STACK[0x288] + 4 * v143) + 1493488804) ^ 0xACD34B3E;
  LODWORD(v79) = HIDWORD(v79);
  v145 = *(STACK[0x2A0] + 4 * BYTE2(v132)) ^ __ROR4__(*(STACK[0x2A0] + 4 * (BYTE1(v130) ^ 0x73u)) ^ 0x9377498F, 8) ^ __ROR4__(*(STACK[0x2A0] + 4 * v137) ^ 0x9377498F, 16) ^ ((v79 >> 24) + 1303467212 - ((2 * (v79 >> 24)) & 0x9B62A998)) ^ 0xEAE1567A;
  v146 = *(STACK[0x290] + 4 * BYTE1(v145));
  v147 = v146 ^ ((v146 ^ 0x2A74D46Cu) >> 6) ^ ((v146 ^ 0x2A74D46Cu) >> 4);
  v148 = *(STACK[0x290] + 4 * (v144 ^ 0x14u));
  v149 = v148 ^ ((v148 ^ 0x2A74D46Cu) >> 6) ^ ((v148 ^ 0x2A74D46Cu) >> 4);
  v150 = *(STACK[0x290] + 4 * ((v139 ^ 0xF3C5) >> 8));
  v151 = ((v150 ^ 0x2A74D46Cu) >> 6) ^ ((v150 ^ 0x2A74D46Cu) >> 4);
  v152 = (*(STACK[0x288] + 4 * ((v140 ^ 0x9338BE48) >> 16)) + 1493488804) ^ __ROR4__(*(STACK[0x298] + 4 * (HIBYTE(v144) ^ 0x23)) ^ 0x686A4A2F, 24) ^ __ROR4__((*(STACK[0x288] + 4 * v145) + 1493488804) ^ 0xACD34B3E, 16) ^ __ROR4__(v150 ^ 0xD4E5E2F5 ^ (v151 - ((2 * v151) & 0x111DC264) + 143581490), 8);
  HIDWORD(v79) = (*(STACK[0x288] + 4 * ((v139 ^ 0xBF0EF3C5) >> 24)) + 1493488804) ^ 0xACD34B3E;
  LODWORD(v79) = HIDWORD(v79);
  v153 = *(STACK[0x2A0] + 4 * BYTE2(v145)) ^ __ROR4__(*(STACK[0x298] + 4 * (BYTE1(v144) ^ 0xF2u)) ^ 0x686A4A2F, 8) ^ ((v79 >> 24) + 1303467212 - ((2 * (v79 >> 24)) & 0x9B62A998)) ^ __ROR4__((*(STACK[0x288] + 4 * (v140 ^ 0x48u)) + 1493488804) ^ 0xACD34B3E, 16);
  v154 = *(STACK[0x290] + 4 * (BYTE2(v144) ^ 0x5Au)) ^ 0x2A74D46C;
  v155 = v154 ^ (v154 >> 6) ^ (v154 >> 4) ^ __ROR4__((*(STACK[0x288] + 4 * HIBYTE(v145)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__(*(STACK[0x298] + 4 * ((v140 ^ 0xBE48) >> 8)) ^ 0x686A4A2F, 8) ^ __ROR4__(*(STACK[0x298] + 4 * (v139 ^ 0xC5u)) ^ 0x686A4A2F, 16);
  v156 = *(STACK[0x290] + 4 * (BYTE2(v139) ^ 0x28u));
  v157 = v156 ^ ((v156 ^ 0x2A74D46Cu) >> 6) ^ ((v156 ^ 0x2A74D46Cu) >> 4) ^ __ROR4__((*(STACK[0x288] + 4 * (HIBYTE(v140) ^ 0x86)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__(v147 ^ 0xDC6B03C7, 8) ^ __ROR4__(v149 ^ 0xDC6B03C7, 16) ^ 0xB2B20C66;
  v158 = *(STACK[0x290] + 4 * v157);
  LOWORD(v147) = v153 ^ 0xFE08;
  HIDWORD(v79) = (*(STACK[0x288] + 4 * ((v153 ^ 0xEB5BFE08) >> 24)) + 1493488804) ^ 0xACD34B3E;
  LODWORD(v79) = HIDWORD(v79);
  v159 = *(STACK[0x2A0] + 4 * ((v155 ^ 0x7B91B500u) >> 16)) ^ __ROR4__((*(STACK[0x288] + 4 * (BYTE1(v152) ^ 0xFAu)) + 1493488804) ^ 0xACD34B3E, 8) ^ ((v79 >> 24) + 1303467212 - ((2 * (v79 >> 24)) & 0x9B62A998)) ^ __ROR4__(v158 ^ ((v158 ^ 0x2A74D46Cu) >> 6) ^ ((v158 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 16);
  v160 = *(STACK[0x290] + 4 * (HIBYTE(v152) ^ 0x98));
  v161 = (*(STACK[0x288] + 4 * ((v153 ^ 0xEB5BFE08) >> 16)) + 1493488804) ^ __ROR4__((*(STACK[0x288] + 4 * HIBYTE(v157)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__(*(STACK[0x2A0] + 4 * ((v155 ^ 0xB500) >> 8)) ^ 0x9377498F, 8) ^ __ROR4__(*(STACK[0x2A0] + 4 * (v152 ^ 0x4Du)) ^ 0x9377498F, 16);
  v162 = *(STACK[0x290] + 4 * ((v155 ^ 0x7B91B500u) >> 24));
  v163 = v160 ^ ((v160 ^ 0x2A74D46Cu) >> 6) ^ ((v160 ^ 0x2A74D46Cu) >> 4);
  v164 = *(STACK[0x290] + 4 * BYTE1(v157));
  v165 = ((v162 ^ 0x2A74D46Cu) >> 6) ^ ((v162 ^ 0x2A74D46Cu) >> 4);
  v166 = *(STACK[0x290] + 4 * v147);
  v167 = *(STACK[0x290] + 4 * (BYTE2(v152) ^ 0x5Cu)) ^ 0x2A74D46C;
  v168 = v167 ^ (v167 >> 6) ^ (v167 >> 4) ^ __ROR4__(v162 ^ 0xD4E5E2F5 ^ (v165 - ((2 * v165) & 0x111DC264) + 143581490), 24) ^ __ROR4__(v164 ^ ((v164 ^ 0x2A74D46Cu) >> 6) ^ ((v164 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 8) ^ __ROR4__(v166 ^ ((v166 ^ 0x2A74D46Cu) >> 6) ^ ((v166 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 16);
  HIDWORD(v79) = v163 ^ 0xDC6B03C7;
  LODWORD(v79) = v163 ^ 0xDC6B03C7;
  LODWORD(v81) = *(STACK[0x298] + 4 * BYTE2(v157)) ^ __ROR4__(*(STACK[0x2A0] + 4 * BYTE1(v147)) ^ 0x9377498F, 8) ^ __ROR4__(*(STACK[0x2A0] + 4 * v155) ^ 0x9377498F, 16) ^ 0x81BCBAE5 ^ ((v79 >> 24) - ((2 * (v79 >> 24)) & 0x7FC631EC) + 1071847670);
  v169 = v159 ^ 0x3195EDD0;
  v170 = (*(STACK[0x288] + 4 * ((v168 ^ 0x54BD5E0Fu) >> 16)) + 1493488804) ^ __ROR4__((*(STACK[0x288] + 4 * ((v159 ^ 0x3195EDD0u) >> 24)) + 1493488804) ^ 0xACD34B3E, 24) ^ __ROR4__((*(STACK[0x288] + 4 * BYTE1(v81)) + 1493488804) ^ 0xACD34B3E, 8) ^ __ROR4__((*(STACK[0x288] + 4 * (v161 ^ 0x48u)) + 1493488804) ^ 0xACD34B3E, 16);
  v171 = *(STACK[0x290] + 4 * BYTE3(v81));
  v172 = ((v171 ^ 0x2A74D46Cu) >> 6) ^ ((v171 ^ 0x2A74D46Cu) >> 4);
  v173 = *(STACK[0x290] + 4 * (BYTE2(v161) ^ 0x46u)) ^ 0x2A74D46C;
  v174 = v173 ^ (v173 >> 6) ^ (v173 >> 4) ^ __ROR4__(*(STACK[0x298] + 4 * (BYTE1(v159) ^ 0xB3u)) ^ 0x686A4A2F, 8) ^ __ROR4__(*(STACK[0x298] + 4 * (v168 ^ 0x51u)) ^ 0x686A4A2F, 16) ^ __ROR4__(v171 ^ 0xD4E5E2F5 ^ (v172 - ((2 * v172) & 0x111DC264) + 143581490), 24);
  v175 = *(STACK[0x290] + 4 * v169);
  v176 = *(STACK[0x290] + 4 * BYTE2(v169)) ^ 0x2A74D46C;
  v177 = v176 ^ __ROR4__(*(STACK[0x298] + 4 * (HIBYTE(v161) ^ 0xC)) ^ 0x686A4A2F, 24) ^ (v176 >> 4) ^ (v176 >> 6) ^ __ROR4__(*(STACK[0x298] + 4 * ((v168 ^ 0x5E0F) >> 8)) ^ 0x686A4A2F, 8) ^ __ROR4__((*(STACK[0x288] + 4 * v81) + 1493488804) ^ 0xACD34B3E, 16);
  HIDWORD(v79) = *(STACK[0x2A0] + 4 * ((v168 ^ 0x54BD5E0Fu) >> 24)) ^ 0x9377498F;
  LODWORD(v79) = HIDWORD(v79);
  LODWORD(v81) = *(STACK[0x2A0] + 4 * BYTE2(v81)) ^ __ROR4__(*(STACK[0x298] + 4 * (BYTE1(v161) ^ 0xA9u)) ^ 0x686A4A2F, 8) ^ ((v79 >> 24) + 1303467212 - ((2 * (v79 >> 24)) & 0x9B62A998)) ^ __ROR4__(v175 ^ ((v175 ^ 0x2A74D46Cu) >> 6) ^ ((v175 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 16);
  v178 = v177 ^ 0x428EE106;
  v179 = *(STACK[0x290] + 4 * (v177 ^ 6u));
  v180 = ((v179 ^ 0x2A74D46Cu) >> 6) ^ ((v179 ^ 0x2A74D46Cu) >> 4);
  v181 = (*(STACK[0x288] + 4 * ((v81 ^ 0xA39E0EE3) >> 16)) + 1493488804) ^ __ROR4__(*(STACK[0x298] + 4 * (HIBYTE(v170) ^ 0xC7)) ^ 0x686A4A2F, 24) ^ __ROR4__(*(STACK[0x298] + 4 * (BYTE1(v174) ^ 0x3Eu)) ^ 0x686A4A2F, 8) ^ __ROR4__(v179 ^ 0xD4E5E2F5 ^ (v180 - ((2 * v180) & 0x111DC264) + 143581490), 16);
  HIDWORD(v79) = *(STACK[0x2A0] + 4 * HIBYTE(v178)) ^ 0x9377498F;
  LODWORD(v79) = HIDWORD(v79);
  v174 ^= 0x551608Au;
  v182 = *(STACK[0x290] + 4 * v174);
  LODWORD(v74) = ((v79 >> 24) + 1303467212 - ((2 * (v79 >> 24)) & 0x9B62A998)) ^ *(STACK[0x2A0] + 4 * (BYTE2(v170) ^ 0x26u)) ^ __ROR4__((*(STACK[0x288] + 4 * ((v81 ^ 0xEE3) >> 8)) + 1493488804) ^ 0xACD34B3E, 8) ^ __ROR4__(v182 ^ ((v182 ^ 0x2A74D46Cu) >> 6) ^ ((v182 ^ 0x2A74D46Cu) >> 4) ^ 0xDC6B03C7, 16);
  v183 = *(STACK[0x290] + 4 * (v81 ^ 0xE3u));
  v184 = ((v183 ^ 0x2A74D46Cu) >> 6) ^ ((v183 ^ 0x2A74D46Cu) >> 4);
  LODWORD(v85) = *(STACK[0x290] + 4 * BYTE1(v178));
  v185 = ((v85 ^ 0x2A74D46C) >> 6) ^ ((v85 ^ 0x2A74D46C) >> 4);
  HIDWORD(v79) = *(STACK[0x298] + 4 * (BYTE3(v81) ^ 0xFD)) ^ 0x686A4A2F;
  LODWORD(v79) = HIDWORD(v79);
  LODWORD(v85) = ((v79 >> 24) + 1303467212 - ((2 * (v79 >> 24)) & 0x9B62A998)) ^ *(STACK[0x2A0] + 4 * BYTE2(v174)) ^ __ROR4__(*(STACK[0x2A0] + 4 * (v170 ^ 0xE5u)) ^ 0x9377498F, 16) ^ __ROR4__(v85 ^ 0xD4E5E2F5 ^ (v185 - ((2 * v185) & 0x111DC264) + 143581490), 8);
  v186 = *(STACK[0x290] + 4 * BYTE2(v178)) ^ 0x2A74D46C;
  v187 = v186 ^ __ROR4__(*(STACK[0x2A0] + 4 * HIBYTE(v174)) ^ 0x9377498F, 24) ^ (v186 >> 4) ^ (v186 >> 6) ^ __ROR4__(*(STACK[0x2A0] + 4 * (BYTE1(v170) ^ 0x3Eu)) ^ 0x9377498F, 8) ^ __ROR4__(v183 ^ 0xD4E5E2F5 ^ (v184 - ((2 * v184) & 0x111DC264) + 143581490), 16);
  HIDWORD(v79) = (v74 - ((2 * v74) & 0x198) - 12852) ^ 0xFFFFFE74 ^ *(STACK[0x270] + 2 * (v74 ^ 0xB1u));
  LODWORD(v79) = WORD2(v79) & 0xFF00;
  v188 = v187 ^ 0x65E7B8DD;
  LODWORD(v81) = v85 ^ 0xE65E339F;
  v189 = STACK[0x268];
  v190 = (v79 >> 8) ^ ((*(STACK[0x250] + 2 * ((v187 ^ 0xB8DD) >> 8)) + 12637) | (((*(STACK[0x268] + 2 * (HIBYTE(v181) ^ 0xAE)) - 14208) ^ 0xAB05) << 16)) ^ ((*(STACK[0x270] + 2 * (((v85 ^ 0xE65E339F) >> 16) ^ 0xA2u)) ^ (((v85 ^ 0xE65E339F) >> 16) - (((v85 ^ 0xE65E339F) >> 15) & 0x198) - 12852) ^ 0xFE67) << 8);
  HIDWORD(v79) = (*(STACK[0x250] + 2 * v188) + 12637) ^ 0x214D;
  LODWORD(v79) = WORD2(v79) & 0xFF00;
  v191 = v79 >> 8;
  HIDWORD(v79) = (*(STACK[0x268] + 2 * (v85 ^ 0xA5u)) - 14208) ^ 0xFFFFAB05;
  LODWORD(v79) = WORD2(v79) & 0xFF00;
  LODWORD(v85) = v79 >> 8;
  HIDWORD(v79) = (*(STACK[0x268] + 2 * (v181 ^ 0x4Du)) - 14208) ^ 0xFFFFAB05;
  LODWORD(v79) = WORD2(v79) & 0xFF00;
  LOWORD(v184) = (v74 >> 15) & 0x198;
  LODWORD(v74) = v74 ^ 0xD602341F;
  v192 = ((*(STACK[0x250] + 2 * BYTE1(v74)) + 12637) | ((*(STACK[0x280] + 2 * (BYTE3(v81) ^ 0xB0)) ^ (BYTE3(v81) - ((v81 >> 23) & 0x176) + 187) ^ 0x81A3) << 16)) ^ (((*(STACK[0x250] + 2 * BYTE2(v188)) + 12637) ^ 0x214D) << 8);
  v193 = (((*(STACK[0x268] + 2 * (BYTE2(v181) ^ 0xC5u)) - 14208) ^ 0xAB05) << 8) ^ ((((v74 >> 24) - ((v74 >> 23) & 0x176) + 187) ^ 0x81A3 ^ *(STACK[0x280] + 2 * ((v74 >> 24) ^ 0xB0))) << 16);
  v194 = (*(STACK[0x250] + 2 * HIBYTE(v188)) + 12637) ^ 0x214D;
  v195 = (BYTE2(v74) - v184 - 12852) ^ 0xFE67 ^ *(STACK[0x270] + 2 * (BYTE2(v74) ^ 0xA2u));
  LODWORD(v74) = v192 ^ (v79 >> 8);
  v196 = LODWORD(STACK[0x6F0]) ^ (v195 << 8);
  v197 = v193 ^ (BYTE1(v81) - ((v81 >> 7) & 0x176) + 187) ^ *(STACK[0x280] + 2 * (BYTE1(v81) ^ 0xB0u)) ^ v191 ^ v190 ^ v74;
  v198 = STACK[0x6F0];
  LODWORD(v81) = v197 ^ LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0x6E0]) = BYTE3(v81);
  v199 = STACK[0x648];
  HIDWORD(v79) = *(STACK[0x648] + 4 * BYTE3(v81)) ^ 0x206DA9EB;
  LODWORD(v79) = HIDWORD(v79);
  LODWORD(STACK[0x6D0]) = BYTE1(v81);
  v200 = v81;
  v201 = STACK[0x4E0];
  v202 = (v79 >> 8) ^ __ROR4__(*(STACK[0x4E0] + 4 * (BYTE1(v81) ^ 0x55u)) ^ 0xF7C941D3, 24);
  LODWORD(v81) = BYTE2(v81);
  LODWORD(STACK[0x6C0]) = v81;
  LODWORD(v79) = __ROR4__(*(v199 + 4 * (v81 ^ 0x37)) ^ 0x206DA9EB, 16);
  v203 = v196 ^ (v194 << 16) ^ (*(v189 + 2 * (BYTE1(v181) ^ 0x33u)) - 14208) ^ v85 ^ 0xA7 ^ v197;
  v204 = v203 ^ v190;
  LODWORD(STACK[0x6C8]) = v204;
  LODWORD(STACK[0x6B0]) = v74 ^ v198;
  v205 = v203 ^ v74;
  LODWORD(STACK[0x6B8]) = v203 ^ v74;
  LODWORD(STACK[0x6A8]) = v204 ^ 0x556ADF8B;
  LODWORD(STACK[0x6A0]) = v200;
  v206 = STACK[0x708];
  v207 = v74 ^ v198 ^ *(STACK[0x708] + 4 * (v200 ^ 0xE5u));
  LODWORD(STACK[0x660]) = v207;
  v208 = v207 ^ ((v202 ^ v79) - ((2 * (v202 ^ v79)) & 0xA7595FE0) - 743657488);
  LODWORD(STACK[0x6D8]) = v205 ^ 0x1C7B17CE;
  v209 = v205 ^ 0x1C7B17CE ^ v208;
  v210 = v209 ^ v204 ^ 0x556ADF8B;
  LODWORD(STACK[0x690]) = v209;
  LODWORD(STACK[0x6F0]) = v210;
  LODWORD(v74) = v210 ^ 0xA1DC3E8B;
  v211 = v200 ^ 0x2358607;
  v212 = v210 ^ 0xA1DC3E8B ^ v200 ^ 0x2358607;
  LODWORD(STACK[0x670]) = v200 ^ 0x2358607;
  v213 = v210 ^ 0x8B ^ v200 ^ 7 ^ 0x17;
  v214 = STACK[0x640];
  v215 = *(v206 + 4 * v213) ^ __ROR4__(*(STACK[0x640] + 4 * (BYTE2(v212) ^ 0x86u)) ^ 0xC98521B3, 16) ^ __ROR4__(*(v199 + 4 * (BYTE1(v212) ^ 0x8Du)) ^ 0x206DA9EB, 24);
  LODWORD(STACK[0x6E8]) = v208 ^ 0x556A3B81;
  HIDWORD(v79) = *(v201 + 4 * (HIBYTE(v212) ^ 0x70)) ^ 0xF7C941D3;
  LODWORD(v79) = HIDWORD(v79);
  v216 = v215 ^ v208 ^ 0x556A3B81 ^ ((v79 >> 8) - ((2 * (v79 >> 8)) & 0xA7595FE0) - 743657488);
  v217 = v216 ^ v205 ^ 0x1C7B17CE ^ v208 ^ 0x5A7CC1C6;
  LODWORD(STACK[0x580]) = v216;
  LODWORD(STACK[0x588]) = v217 ^ v74;
  LODWORD(STACK[0x688]) = v217 ^ v74 ^ 0xE0CD7DAE;
  v218 = v217 ^ v74 ^ 0xE0CD7DAE ^ v212;
  v219 = HIBYTE(v218) ^ 0x33;
  v218 ^= 0xA3508FF5;
  v220 = v201;
  v221 = *(v201 + 4 * (v218 ^ 0x88u)) ^ __ROR4__(*(v201 + 4 * v219) ^ 0xF7C941D3, 8) ^ v216 ^ __ROR4__(*(v199 + 4 * (BYTE1(v218) ^ 0xF0u)) ^ 0x206DA9EB, 24);
  v222 = *(v201 + 4 * (BYTE2(v218) ^ 0x4Eu));
  HIDWORD(v79) = (((2 * v222) & 0x25FD4ACE ^ 0xFFBAB53F) - 685665440 + (((v222 ^ 0x1F6C8F26) - 527208230) ^ ((v222 ^ 0x8BA9674B) + 1951832245) ^ ((v222 ^ 0xD0E70595) + 790166123))) ^ 0x2115094C;
  LODWORD(v79) = HIDWORD(v79);
  v223 = v221 ^ ((v79 >> 16) - ((2 * (v79 >> 16)) & 0x8845DBF0) + 1143139832);
  LODWORD(STACK[0x678]) = v217;
  v224 = v223 ^ v217 ^ 0x56AD0589;
  LODWORD(STACK[0x5D0]) = v223 ^ v217;
  LODWORD(STACK[0x680]) = v224;
  LODWORD(STACK[0x5C4]) = v217 ^ v211;
  v225 = v224 ^ v217 ^ v74;
  v226 = v225 ^ v217 ^ v211;
  LODWORD(v201) = v225;
  LODWORD(STACK[0x5A0]) = v225;
  HIDWORD(v79) = *(v220 + 4 * (HIBYTE(v226) ^ 0x28)) ^ 0xF7C941D3;
  LODWORD(v79) = HIDWORD(v79);
  LODWORD(v74) = (v79 >> 8) ^ __ROR4__(*(v220 + 4 * (BYTE2(v226) ^ 0x83u)) ^ 0xF7C941D3, 16);
  LODWORD(v79) = __ROR4__(*(v214 + 4 * (BYTE1(v226) ^ 5u)) ^ 0xC98521B3, 24);
  LODWORD(STACK[0x698]) = v223 ^ 0xAA41B98C;
  v227 = v226 ^ 0xFB50D36E;
  LODWORD(STACK[0x5E0]) = v226 ^ 0xFB50D36E;
  v228 = *(v199 + 4 * (v226 ^ 0x6Cu)) ^ v223 ^ 0xAA41B98C ^ 0x8933A7ED ^ ((v74 ^ v79) - ((2 * (v74 ^ v79)) & 0xC541EFF4) + 1654716410);
  LODWORD(v74) = v223 ^ v217 ^ 0x1ABF4070 ^ v228;
  v229 = v228;
  LODWORD(STACK[0x5D8]) = v228;
  v230 = v201 ^ 0x2388A78C ^ v74;
  LODWORD(v201) = v74;
  LODWORD(STACK[0x5B8]) = v74;
  LODWORD(STACK[0x5B4]) = v230;
  HIDWORD(v79) = *(v199 + 4 * (((v230 ^ v227) >> 24) ^ 0xDA)) ^ 0x206DA9EB;
  LODWORD(v79) = HIDWORD(v79);
  v231 = (v79 >> 8) ^ __ROR4__(*(v199 + 4 * (((v230 ^ v227) >> 16) ^ 0xDAu)) ^ 0x206DA9EB, 16);
  LODWORD(v79) = __ROR4__(*(v199 + 4 * (((v230 ^ v227) >> 8) ^ 0x76u)) ^ 0x206DA9EB, 24);
  LODWORD(v74) = v230 ^ v227 ^ 0xD8D874E2;
  LODWORD(STACK[0x5D4]) = v74;
  v232 = v229 ^ *(v199 + 4 * ((v230 ^ v227) ^ 0xE0u)) ^ ((v231 ^ v79) - ((2 * (v231 ^ v79)) & 0xC541EFF4) + 1654716410);
  v233 = v232 ^ v201;
  v234 = v232;
  LODWORD(STACK[0x5C8]) = v232;
  v235 = v232 ^ v201 ^ v230;
  LODWORD(STACK[0x56C]) = v235;
  v235 ^= 0xFE0DE03B;
  v236 = v235 ^ v74;
  LODWORD(v201) = v235;
  HIDWORD(v79) = *(v199 + 4 * (((v235 ^ v74) >> 8) ^ 0xD1u)) ^ 0x206DA9EB;
  LODWORD(v79) = HIDWORD(v79);
  LODWORD(v74) = (v79 >> 24) ^ __ROR4__(*(v220 + 4 * (((v235 ^ v74) >> 16) ^ 0xD9u)) ^ 0xF7C941D3, 16);
  v237 = *(v199 + 4 * (v236 ^ 0xA8u)) ^ __ROR4__(*(v199 + 4 * (HIBYTE(v236) ^ 0xE5)) ^ 0x206DA9EB, 8);
  LODWORD(STACK[0x5CC]) = v236 ^ 0xE70AD3AA;
  v238 = v237 ^ v234 ^ (v74 - ((2 * v74) & 0xC541EFF4) + 1654716410);
  v239 = v233 ^ 0x56DF4773;
  v240 = v238 ^ v233 ^ 0x56DF4773;
  v241 = v240 ^ 0x14121962 ^ v201;
  LODWORD(STACK[0x574]) = v201;
  v242 = v220;
  LODWORD(v74) = *(v220 + 4 * ((v237 ^ v234 ^ (v74 - ((2 * v74) & 0xF4) - 6) ^ v233 ^ 0x73) ^ 0x62 ^ v201 ^ v236 ^ 0xAA ^ 0x79u)) ^ __ROR4__(*(v220 + 4 * ((v237 ^ v234 ^ (v74 - ((2 * v74) & 0xEFF4) - 2054) ^ v233 ^ 0x4773 ^ 0x1962 ^ v201 ^ v236 ^ 0xD3AA) >> 8)) ^ 0xF7C941D3, 24) ^ __ROR4__(*(v214 + 4 * (((v241 ^ v236 ^ 0xE70AD3AA) >> 16) ^ 0xDCu)) ^ 0xC98521B3, 16);
  HIDWORD(v79) = *(v199 + 4 * (((v241 ^ v236 ^ 0xE70AD3AA) >> 24) ^ 0x13)) ^ 0x206DA9EB;
  LODWORD(v79) = HIDWORD(v79);
  v243 = v241 ^ v236 ^ 0xE70AD3AA ^ 0x110AD3AA;
  LODWORD(STACK[0x578]) = v243;
  v244 = v74 ^ v238 ^ ((v79 >> 8) - ((2 * (v79 >> 8)) & 0x8845DBF0) + 1143139832);
  v245 = v244 ^ v201;
  v246 = v243 ^ v244 ^ v201;
  HIDWORD(v79) = *(v242 + 4 * (((v246 ^ 0xAFF366E3) >> 16) ^ 0xD3u)) ^ 0xF7C941D3;
  LODWORD(v79) = HIDWORD(v79);
  v247 = (v79 >> 16) ^ __ROR4__(*(v199 + 4 * (HIBYTE(v246) ^ 0xC5)) ^ 0x206DA9EB, 8) ^ __ROR4__(*(v206 + 4 * (((v243 ^ v244 ^ v201 ^ 0x66E3) >> 8) ^ 0xE2u)) ^ 0x19F8430C, 24);
  v248 = v214;
  v249 = v244 ^ *(v214 + 4 * ((v243 ^ v244 ^ v201) ^ 0x35u)) ^ (v247 - ((2 * v247) & 0xDF9678F8) + 1875590268);
  v250 = v244 ^ v240 ^ 0x14121962;
  LODWORD(STACK[0x5A8]) = v250;
  LODWORD(STACK[0x59C]) = v250 ^ 0x41F9B549;
  v251 = v249 & 2;
  if ((v249 & 2 & v250) != 0)
  {
    v251 = -v251;
  }

  v252 = (v251 + (v250 ^ 0x41F9B549)) ^ v249 & 0xFFFFFFFD;
  v253 = v252 ^ 0x68BD7B2C ^ v245;
  v254 = v253 ^ v246 ^ 0xC7F366E3;
  LODWORD(STACK[0x560]) = v254;
  v255 = *(v248 + 4 * (v254 ^ 0x9Fu)) ^ __ROR4__(*(v199 + 4 * (HIBYTE(v254) ^ 0x94)) ^ 0x206DA9EB, 8);
  HIDWORD(v256) = *(v199 + 4 * (((v254 ^ 0x6FAF) >> 8) ^ 0xD8u)) ^ 0x206DA9EB;
  LODWORD(v256) = HIDWORD(v256);
  v257 = (v256 >> 24) - ((2 * (v256 >> 24)) & 0xDF9678F8) + 1875590268;
  LODWORD(v256) = __ROR4__(*(v206 + 4 * (((v254 ^ 0x61E66FAF) >> 16) ^ 0xFDu)) ^ 0x19F8430C, 16);
  LODWORD(STACK[0x590]) = v249 ^ 0xAFA87260;
  v258 = v255 ^ v257 ^ v256 ^ v249 ^ 0xAFA87260;
  v259 = v252 ^ 0x68BD7B2C ^ v258;
  LODWORD(STACK[0x540]) = v258;
  v260 = v259 ^ v246 ^ 0xC7F366E3;
  HIDWORD(v256) = *(v242 + 4 * (((v260 ^ 0xF50AA8A9) >> 16) ^ 0x82u)) ^ 0xF7C941D3;
  LODWORD(v256) = HIDWORD(v256);
  v261 = (v256 >> 16) ^ __ROR4__(*(v199 + 4 * (((v260 ^ 0xA8A9) >> 8) ^ 0xBEu)) ^ 0x206DA9EB, 24);
  v262 = *(v206 + 4 * (v260 ^ 0x61u)) ^ __ROR4__(*(v199 + 4 * (HIBYTE(v260) ^ 0x25)) ^ 0x206DA9EB, 8);
  v263 = (LODWORD(STACK[0x700]) - 1097) ^ LODWORD(STACK[0x620]);
  v264 = LODWORD(STACK[0x618]) ^ 0x2Eu;
  v265 = LODWORD(STACK[0x610]) ^ 0x1Au;
  v266 = LODWORD(STACK[0x5E8]) ^ 0x11u;
  v267 = LODWORD(STACK[0x5F0]) ^ 0x36u;
  v268 = LODWORD(STACK[0x5EC]) ^ 0x36u;
  LODWORD(STACK[0x620]) = v253 ^ 0x96F9B549;
  v269 = v262 ^ (v261 - ((2 * v261) & 0xA7595FE0) - 743657488);
  LODWORD(STACK[0x528]) = v269;
  LODWORD(STACK[0x610]) = v252 ^ 0x4897DFA6;
  v270 = LODWORD(STACK[0x690]) ^ 0x623C2BEB;
  v271 = STACK[0x588];
  v272 = v260 ^ 0x275B1483;
  LODWORD(STACK[0x700]) = v259 ^ v253 ^ 0xB1A2A1CA;
  v273 = v259 ^ 0x6B5F7E5;
  LODWORD(STACK[0x538]) = v259 ^ 0x6B5F7E5;
  LODWORD(STACK[0x524]) = v260 ^ 0x275B1483;
  LODWORD(STACK[0x4F0]) = (v271 ^ 0x7A9F3EB9 ^ v260 ^ 0x275B1483) - 527248389;
  v274 = v252 ^ 0xD214C0EE;
  LODWORD(STACK[0x534]) = v252 ^ 0xD214C0EE;
  v275 = LODWORD(STACK[0x580]) ^ 0x5C67A713;
  v276 = -1415286303 - (LODWORD(STACK[0x580]) ^ 0xBD8835C ^ v258);
  v277 = v241 ^ 0x676C8894;
  LODWORD(STACK[0x580]) = v241 ^ 0x676C8894;
  v278 = v245 ^ 0x81FB514F;
  LODWORD(STACK[0x520]) = v245 ^ 0x81FB514F;
  LODWORD(STACK[0x5E8]) = v246 ^ 0x81FB514F;
  v279 = v238 ^ 0x374425C;
  LODWORD(STACK[0x618]) = LODWORD(STACK[0x56C]) ^ 0xD749A76A;
  LODWORD(STACK[0x588]) = v240 ^ 0x9474425C;
  LODWORD(STACK[0x5F0]) = v212 ^ 0x3F5690E1;
  v280 = LODWORD(STACK[0x6F0]) ^ 0x9E8AAE6A;
  LODWORD(STACK[0x5EC]) = v280;
  if ((v239 & 0x80000) != 0)
  {
    v281 = -524288;
  }

  else
  {
    v281 = 0x80000;
  }

  v282 = (v281 + v239) ^ 0x594694FB;
  v283 = LODWORD(STACK[0x5A0]) ^ 0x321B0DB7;
  LODWORD(STACK[0x5A0]) = v283;
  v284 = (v212 ^ 0x3F5690E1) - v280 + 1312182225;
  v285 = STACK[0x710];
  STACK[0x478] = v263 << STACK[0x710];
  STACK[0x488] = (LODWORD(STACK[0x658]) ^ 0x3Fu) << v285;
  STACK[0x4A0] = v264 << v285;
  STACK[0x460] = STACK[0x6F8] << v285;
  STACK[0x498] = v265 << v285;
  STACK[0x490] = (LODWORD(STACK[0x630]) ^ 0x1Eu) << v285;
  STACK[0x448] = (LODWORD(STACK[0x654]) ^ 0x1Cu) << v285;
  STACK[0x4B0] = (LODWORD(STACK[0x634]) ^ 0x3Eu) << v285;
  STACK[0x450] = (LODWORD(STACK[0x614]) ^ 8u) << v285;
  STACK[0x480] = (LODWORD(STACK[0x62C]) ^ 0x18u) << v285;
  STACK[0x4B8] = v267 << v285;
  STACK[0x440] = v266 << v285;
  STACK[0x468] = STACK[0x600] << v285;
  STACK[0x458] = v268 << v285;
  v286 = LODWORD(STACK[0x5FC]) ^ 0x3Cu;
  STACK[0x4A8] = STACK[0x608] << v285;
  STACK[0x470] = v286 << v285;
  v287 = v282;
  LODWORD(STACK[0x56C]) = v282;
  v288 = -1944715934 - (v282 + v283);
  LODWORD(STACK[0x658]) = v288 ^ (v282 + v283 + 1944715934) ^ (v279 - (v288 ^ v279));
  v289 = v244 ^ 0x66F182E5;
  v290 = STACK[0x5C4];
  LODWORD(STACK[0x3CC]) = v244 ^ LODWORD(STACK[0x5C4]);
  v291 = v244 ^ v290 ^ 0x1BE5D608;
  v292 = v291 ^ LODWORD(STACK[0x5B8]);
  v293 = v292 & 0x20000000;
  if ((v292 & 0x20000000 & v288) != 0)
  {
    v293 = -v293;
  }

  LODWORD(STACK[0x6F8]) = v292 & 0xDFFFFFFF ^ 0x56A98046 ^ (v293 + v288);
  v294 = LODWORD(STACK[0x6E8]) ^ 0x881406D1;
  v295 = LODWORD(STACK[0x5B4]) ^ 0x8E71F4A4;
  v296 = LODWORD(STACK[0x698]) ^ 0x6DA73E47;
  v297 = STACK[0x578];
  v298 = LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x574]);
  LODWORD(STACK[0x3C8]) = v298;
  v299 = v275;
  LODWORD(STACK[0x3BC]) = v287 - v275;
  v300 = (v287 - v275) ^ 0x3D87DF56;
  LODWORD(STACK[0x3B4]) = v300;
  LODWORD(STACK[0x39C]) = v298 ^ 0x3007930E;
  v301 = v298 ^ 0x3007930E ^ v300;
  LODWORD(STACK[0x6E8]) = v301;
  v302 = v301 ^ v270;
  v303 = v294 ^ v301;
  v304 = ((v301 ^ v270) - STACK[0x638] + (v294 ^ v301)) ^ 0x9F1F19A8;
  v305 = LODWORD(STACK[0x610]) ^ v269;
  v306 = v274 + 42022374 + v273;
  v307 = v299;
  v308 = v299 - 251295541 + v278;
  v309 = v306 ^ v308 ^ v291;
  LODWORD(STACK[0x710]) = v309;
  LODWORD(STACK[0x698]) = ((v304 | 0xBA40016D) ^ v304) - (v304 | 0xBA40016D) + v304 + (v309 ^ v305);
  LODWORD(STACK[0x43C]) = v284;
  LODWORD(STACK[0x6F0]) = v291 ^ v284;
  LODWORD(STACK[0x690]) = v291 ^ v284 ^ 0x7D5ADD21 ^ LODWORD(STACK[0x560]);
  v310 = STACK[0x688];
  v311 = LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x688]);
  LODWORD(STACK[0x3B0]) = v277 - v289;
  v312 = (v277 - v289) ^ 0xE3D2541;
  LODWORD(STACK[0x3AC]) = v312;
  LODWORD(STACK[0x3A0]) = v311;
  v313 = v311 ^ v312 ^ 0xB80B58FD;
  v314 = LODWORD(STACK[0x6A8]) ^ 0xB6F35DDC;
  v315 = LODWORD(STACK[0x6B0]) ^ 0x866916E5;
  v316 = LODWORD(STACK[0x6D8]) ^ 0xF507CEE6;
  v317 = v305 + 878865114;
  v318 = v305 ^ LODWORD(STACK[0x700]);
  LODWORD(STACK[0x6D8]) = v318;
  v319 = v318 ^ v272;
  v320 = v317 + (v318 ^ v272);
  v321 = v313 ^ v320;
  v322 = v321 ^ v314;
  v323 = v321 ^ v315;
  v324 = v321 ^ LODWORD(STACK[0x670]) ^ 0x4A45D85D;
  v325 = v321 ^ v316;
  v326 = v270 + 375603506 + v319;
  LODWORD(STACK[0x37C]) = v326;
  v327 = v326 ^ v276;
  v328 = v326 ^ v276 ^ v289;
  v329 = v328 + v304;
  if ((v328 + v304))
  {
    v330 = v322;
  }

  else
  {
    v330 = v325;
  }

  LODWORD(STACK[0x654]) = v330;
  if (v329)
  {
    v331 = v324;
  }

  else
  {
    v331 = v322;
  }

  if (v329)
  {
    v324 = v323;
  }

  LODWORD(STACK[0x614]) = v324;
  if (v329)
  {
    v332 = v325;
  }

  else
  {
    v332 = v323;
  }

  LODWORD(STACK[0x3C0]) = v276;
  v333 = LODWORD(STACK[0x4F0]) ^ v276;
  v334 = v333 ^ 0xF821522A ^ LODWORD(STACK[0x678]);
  v335 = v333 ^ 0xF821522A ^ v290;
  v336 = v310 ^ 0xBBBCA071;
  v337 = v333 ^ v307;
  v338 = v336 ^ v333;
  v339 = LODWORD(STACK[0x680]) ^ 0x914B8242;
  v340 = v297 ^ LODWORD(STACK[0x5A8]);
  v341 = LODWORD(STACK[0x658]) + v279;
  v342 = STACK[0x5E8];
  LODWORD(STACK[0x368]) = v340;
  v340 ^= 0x1D6484C8u;
  LODWORD(STACK[0x360]) = v340;
  LODWORD(STACK[0x390]) = v342 + v279;
  v343 = v340 ^ 0x83DE7837 ^ (v342 + v279);
  v344 = v343 ^ LODWORD(STACK[0x5A0]);
  v345 = v296 ^ v343;
  v346 = v339 ^ v343;
  v347 = LODWORD(STACK[0x5E0]) ^ 0xC94BDED9 ^ v343;
  if (v329)
  {
    v348 = v344;
  }

  else
  {
    v348 = v346;
  }

  LODWORD(STACK[0x610]) = v348;
  if (v329)
  {
    v344 = v347;
  }

  LODWORD(STACK[0x688]) = v344;
  if (v329)
  {
    v347 = v345;
  }

  LODWORD(STACK[0x608]) = v347;
  if ((v329 & 1) == 0)
  {
    v346 = v345;
  }

  LODWORD(STACK[0x680]) = v346;
  v349 = LODWORD(STACK[0x5D8]) ^ 0x42BB9924;
  LODWORD(STACK[0x3E4]) = v291;
  v350 = v295 ^ v288 ^ v291;
  v351 = v349 ^ v288 ^ v291;
  v352 = LODWORD(STACK[0x5D4]) ^ 0x56A98046 ^ v288 ^ v291;
  v353 = STACK[0x6F8];
  if (v329)
  {
    v354 = v295 ^ v288 ^ v291;
  }

  else
  {
    v354 = STACK[0x6F8];
  }

  LODWORD(STACK[0x678]) = v354;
  if (v329)
  {
    v350 = v352;
  }

  LODWORD(STACK[0x5C4]) = v350;
  if (v329)
  {
    v355 = v353;
  }

  else
  {
    v355 = v351;
  }

  LODWORD(STACK[0x5B8]) = v355;
  if ((v329 & 1) == 0)
  {
    v351 = v352;
  }

  LODWORD(STACK[0x670]) = v351;
  v356 = LODWORD(STACK[0x5C8]) ^ 0xF91D388;
  v357 = STACK[0x588];
  v358 = STACK[0x618];
  v359 = LODWORD(STACK[0x588]) + LODWORD(STACK[0x618]);
  LODWORD(STACK[0x388]) = v359;
  LODWORD(STACK[0x384]) = v359 ^ 0x977D503;
  v360 = v306 ^ v359 ^ 0x977D503;
  LODWORD(STACK[0x5A0]) = v360;
  v361 = v360 ^ LODWORD(STACK[0x56C]);
  v362 = v356 ^ v360;
  if (v329)
  {
    v363 = v360 ^ LODWORD(STACK[0x56C]);
  }

  else
  {
    v363 = v362;
  }

  LODWORD(STACK[0x634]) = v363;
  if (v329)
  {
    v361 = v360 ^ v358;
  }

  LODWORD(STACK[0x5B4]) = v361;
  LODWORD(STACK[0x618]) = v360 ^ 0xCE4E94FB;
  v364 = v360 ^ 0xCE4E94FB ^ LODWORD(STACK[0x5CC]);
  if ((v329 & 1) == 0)
  {
    v362 = v360 ^ 0xCE4E94FB ^ LODWORD(STACK[0x5CC]);
  }

  LODWORD(STACK[0x5A8]) = v362;
  if (v329)
  {
    v365 = v364;
  }

  else
  {
    v365 = v360 ^ v358;
  }

  LODWORD(STACK[0x630]) = v365;
  v366 = LODWORD(STACK[0x59C]) ^ 0xD10837AC;
  LODWORD(STACK[0x554]) = v327;
  v367 = v327 ^ LODWORD(STACK[0x520]);
  v368 = v327 ^ v342;
  v369 = v366 ^ v327;
  if (v329)
  {
    v370 = v328;
  }

  else
  {
    v370 = v327 ^ v342;
  }

  LODWORD(STACK[0x600]) = v370;
  if ((v329 & 1) == 0)
  {
    v368 = v367;
  }

  LODWORD(STACK[0x658]) = v368;
  if ((v329 & 1) == 0)
  {
    v367 = v369;
  }

  LODWORD(STACK[0x5FC]) = v367;
  if ((v329 & 1) == 0)
  {
    v369 = v328;
  }

  LODWORD(STACK[0x5E8]) = v369;
  v371 = STACK[0x6F0];
  v372 = LODWORD(STACK[0x6F0]) ^ 0xEABCB28E ^ LODWORD(STACK[0x590]);
  v373 = STACK[0x710];
  v374 = LODWORD(STACK[0x710]) ^ LODWORD(STACK[0x540]) ^ 0x771B009 ^ LODWORD(STACK[0x528]);
  v375 = LODWORD(STACK[0x540]) ^ 0x57BF244F;
  v376 = LODWORD(STACK[0x6E8]) ^ LODWORD(STACK[0x5EC]);
  v377 = LODWORD(STACK[0x6E8]) ^ LODWORD(STACK[0x5F0]);
  v378 = v306 ^ v341;
  LODWORD(STACK[0x3E0]) = v306;
  LODWORD(STACK[0x414]) = v288;
  v379 = v306 ^ v288;
  v380 = v306 ^ v288 ^ v357;
  v381 = v306 ^ v288 ^ LODWORD(STACK[0x580]);
  LODWORD(STACK[0x574]) = v379;
  v382 = LODWORD(STACK[0x534]) ^ v371;
  LODWORD(STACK[0x3DC]) = v308;
  LODWORD(STACK[0x380]) = v320;
  v383 = v320 ^ v308;
  LODWORD(STACK[0x590]) = v320 ^ v308;
  v384 = v320 ^ v308 ^ LODWORD(STACK[0x538]);
  v385 = v319 ^ v373;
  if (v329)
  {
    v386 = v337;
  }

  else
  {
    v386 = v335;
  }

  LODWORD(STACK[0x5E0]) = v386;
  LODWORD(STACK[0x4D0]) = v338;
  if (v329)
  {
    v338 = v335;
  }

  LODWORD(STACK[0x4D8]) = v334;
  if (v329)
  {
    v387 = v334;
  }

  else
  {
    v387 = v337;
  }

  v388 = v379 ^ 0x76665B3E;
  LODWORD(STACK[0x56C]) = v388;
  v389 = v388 ^ v297;
  LODWORD(STACK[0x560]) = v371 ^ 0xEBA36868;
  v390 = v371 ^ 0xEBA36868 ^ LODWORD(STACK[0x620]);
  LODWORD(STACK[0x5C8]) = v383 ^ 0x21EEE366;
  v391 = v383 ^ 0x21EEE366 ^ LODWORD(STACK[0x524]);
  v392 = v383 ^ 0x21EEE366 ^ LODWORD(STACK[0x700]);
  v393 = v375 ^ v383;
  LODWORD(STACK[0x338]) = v391;
  if (v329)
  {
    v394 = v393;
  }

  else
  {
    v394 = v391;
  }

  if (v329)
  {
    v395 = v384;
  }

  else
  {
    v395 = v393;
  }

  LODWORD(STACK[0x5D8]) = v395;
  LODWORD(STACK[0x334]) = v392;
  if (v329)
  {
    v396 = v392;
  }

  else
  {
    v396 = v384;
  }

  v397 = LODWORD(STACK[0x6D8]) ^ v373;
  v398 = STACK[0x698];
  if ((v329 & 1) == 0)
  {
    v398 = v374;
  }

  LODWORD(STACK[0x5F0]) = v398;
  if (v329)
  {
    v399 = v374;
  }

  else
  {
    v399 = v385;
  }

  LODWORD(STACK[0x5D4]) = v399;
  LODWORD(STACK[0x328]) = v397;
  if (v329)
  {
    v400 = v385;
  }

  else
  {
    v400 = v397;
  }

  LODWORD(STACK[0x5EC]) = v400;
  LODWORD(STACK[0x540]) = v302;
  LODWORD(STACK[0x4C4]) = v376;
  if (v329)
  {
    v401 = v376;
  }

  else
  {
    v401 = v302;
  }

  LODWORD(STACK[0x700]) = v401;
  LODWORD(STACK[0x500]) = v303;
  LODWORD(STACK[0x434]) = v377;
  if (v329)
  {
    v402 = v303;
  }

  else
  {
    v402 = v377;
  }

  LODWORD(STACK[0x62C]) = v402;
  LODWORD(STACK[0x438]) = v380;
  LODWORD(STACK[0x42C]) = v381;
  if (v329)
  {
    v403 = v381;
  }

  else
  {
    v403 = v380;
  }

  LODWORD(STACK[0x4C8]) = v378;
  LODWORD(STACK[0x418]) = v389;
  if (v329)
  {
    v404 = v378;
  }

  else
  {
    v404 = v389;
  }

  LODWORD(STACK[0x3B8]) = v390;
  v405 = STACK[0x690];
  if ((v329 & 1) == 0)
  {
    v405 = v390;
  }

  LODWORD(STACK[0x5D0]) = v405;
  LODWORD(STACK[0x4CC]) = v372;
  LODWORD(STACK[0x430]) = v382;
  if (v329)
  {
    v406 = v382;
  }

  else
  {
    v406 = v372;
  }

  LODWORD(STACK[0x5CC]) = v406;
  LODWORD(STACK[0x6F8]) = v329;
  v407 = (v329 & 2) == 0;
  if ((v329 & 2) != 0)
  {
    v408 = v332;
  }

  else
  {
    v408 = v331;
  }

  LODWORD(STACK[0x6D8]) = v408;
  if ((v329 & 2) != 0)
  {
    v409 = v331;
  }

  else
  {
    v409 = v332;
  }

  LODWORD(STACK[0x620]) = v409;
  if ((v329 & 2) != 0)
  {
    v410 = v338;
  }

  else
  {
    v410 = v387;
  }

  LODWORD(STACK[0x6B0]) = v410;
  if ((v329 & 2) == 0)
  {
    v387 = v338;
  }

  LODWORD(STACK[0x520]) = v387;
  if ((v329 & 2) != 0)
  {
    v411 = v403;
  }

  else
  {
    v411 = v404;
  }

  LODWORD(STACK[0x538]) = v411;
  if ((v329 & 2) != 0)
  {
    v403 = v404;
  }

  LODWORD(STACK[0x6A8]) = v403;
  v412 = STACK[0x708];
  HIDWORD(v413) = *(STACK[0x708] + 4 * (LODWORD(STACK[0x6E0]) ^ 0xE0u)) ^ 0x19F8430C;
  LODWORD(v413) = HIDWORD(v413);
  v414 = STACK[0x640];
  v415 = (v413 >> 8) ^ __ROR4__(*(STACK[0x708] + 4 * (LODWORD(STACK[0x6C0]) ^ 0xD7u)) ^ 0x19F8430C, 16);
  LODWORD(v413) = __ROR4__(*(STACK[0x640] + 4 * (LODWORD(STACK[0x6D0]) ^ 0x50u)) ^ 0xC98521B3, 24);
  v416 = LODWORD(STACK[0x660]) ^ 0x4C12B63 ^ ((v415 ^ v413) - ((2 * (v415 ^ v413)) & 0xA7595FE0) - 743657488);
  v417 = LODWORD(STACK[0x6C8]) ^ 0x16F70C9D;
  v418 = v416 ^ LODWORD(STACK[0x6B8]);
  v419 = v416;
  LODWORD(STACK[0x59C]) = v416;
  LODWORD(STACK[0x6E0]) = v418 ^ 0xE6800852;
  v420 = v417 ^ v418 ^ 0xE6800852;
  v421 = v420 ^ LODWORD(STACK[0x6A0]);
  v422 = v420;
  LODWORD(STACK[0x6C8]) = v420;
  v423 = v421 ^ 0xBD1ED090;
  LODWORD(STACK[0x6D0]) = v421 ^ 0xBD1ED090;
  HIDWORD(v413) = *(v414 + 4 * ((((v421 ^ 0xD090) >> 8) ^ 0x76 ^ -(((v421 ^ 0xD090) >> 8) ^ 0x76) ^ (160 - (((v421 ^ 0xD090) >> 8) ^ 0xD6u))) + 160)) ^ 0xC98521B3;
  LODWORD(v413) = HIDWORD(v413);
  v424 = STACK[0x4E0];
  v425 = STACK[0x648];
  v426 = *(STACK[0x4E0] + 4 * (v421 ^ 0x43u)) ^ __ROR4__(*(STACK[0x648] + 4 * (HIBYTE(v421) ^ 0xBF)) ^ 0x206DA9EB, 8) ^ __ROR4__(*(STACK[0x648] + 4 * (BYTE2(v421) ^ 0x1Cu)) ^ 0x206DA9EB, 16) ^ v419 ^ ((v413 >> 24) - ((2 * (v413 >> 24)) & 0x8845DBF0) + 1143139832);
  v427 = v426 ^ v418 ^ v422;
  v428 = v427 ^ v421 ^ 0xBD1ED090 ^ 0xD10AD9BC;
  HIDWORD(v413) = *(STACK[0x4E0] + 4 * (BYTE2(v428) ^ 0x20u)) ^ 0xF7C941D3;
  LODWORD(v413) = HIDWORD(v413);
  v429 = *(STACK[0x4E0] + 4 * ((v427 ^ v423) ^ 0x1Au)) ^ __ROR4__(*(STACK[0x4E0] + 4 * (BYTE1(v428) ^ 0xF1u)) ^ 0xF7C941D3, 24) ^ __ROR4__(*(v412 + 4 * (((v427 ^ v423) >> 24) ^ 0x37)) ^ 0x19F8430C, 8) ^ ((v413 >> 16) - ((2 * (v413 >> 16)) & 0x8845DBF0) + 1143139832);
  v430 = v429 ^ v418;
  v431 = v427 ^ 0x9D617DC5 ^ v430;
  HIDWORD(v413) = *(v412 + 4 * (((v431 ^ v428) >> 8) ^ 0xE2u)) ^ 0x19F8430C;
  LODWORD(v413) = HIDWORD(v413);
  v432 = (v413 >> 24) ^ __ROR4__(*(STACK[0x648] + 4 * (((v431 ^ v428) >> 24) ^ 2)) ^ 0x206DA9EB, 8);
  LODWORD(v413) = __ROR4__(*(STACK[0x648] + 4 * (((v431 ^ v428) >> 16) ^ 2u)) ^ 0x206DA9EB, 16);
  v433 = v426 ^ v429 ^ *(v412 + 4 * ((v431 ^ v428) ^ 0xE2u)) ^ 0x38BF1C4C ^ ((v432 ^ v413) - 743657488 + (~(2 * (v432 ^ v413)) | 0x58A6A01F) + 1);
  v434 = v430 ^ 0xF82C0839 ^ v433;
  v435 = v434 ^ v431;
  v436 = v434 ^ v428;
  HIDWORD(v413) = *(v412 + 4 * (BYTE1(v436) ^ 0x95u)) ^ 0x19F8430C;
  LODWORD(v413) = HIDWORD(v413);
  v437 = v413 >> 24;
  LODWORD(v413) = __ROR4__(*(STACK[0x4E0] + 4 * (HIBYTE(v436) ^ 0xCC)) ^ 0xF7C941D3, 8);
  v438 = *(STACK[0x4E0] + 4 * (v436 ^ 0x71u)) ^ __ROR4__(*(v412 + 4 * (BYTE2(v436) ^ 4u)) ^ 0x19F8430C, 16) ^ ((v437 ^ v413) - ((2 * (v437 ^ v413)) & 0x8845DBF0) + 1143139832);
  v439 = v433 ^ 0x3FFEF9FC ^ v438;
  v440 = v438 ^ v430;
  LODWORD(STACK[0x6C0]) = v440 ^ 0x68800852;
  v441 = v435 ^ v440 ^ 0x68800852;
  v442 = v441 ^ 0x5FE62B39;
  v443 = v441 ^ v436;
  LODWORD(STACK[0x6B8]) = v441 ^ v436;
  v444 = v441 ^ 0x5FE62B39 ^ v436;
  LOWORD(v441) = v444 ^ 0x77A2;
  v445 = v414;
  HIDWORD(v413) = *(v414 + 4 * (((v444 ^ 0x1FE677A2) >> 16) ^ 0xD6u)) ^ 0xC98521B3;
  LODWORD(v413) = HIDWORD(v413);
  v446 = (v413 >> 16) ^ __ROR4__(*(v414 + 4 * (HIBYTE(v444) ^ 0x89)) ^ 0xC98521B3, 8);
  v447 = *(v412 + 4 * (v441 ^ 0x79u)) ^ __ROR4__(*(v424 + 4 * (BYTE1(v441) ^ 0x8Fu)) ^ 0xF7C941D3, 24) ^ v439 ^ (v446 - ((2 * v446) & 0xA7595FE0) - 743657488);
  v448 = v440 ^ 0x76861D39 ^ v447;
  LODWORD(STACK[0x524]) = v448;
  v449 = v448 ^ v442;
  v450 = v449 ^ v443;
  v451 = *(v425 + 4 * ((v449 ^ v443) ^ 0x4Eu));
  if (v407)
  {
    v452 = v396;
  }

  else
  {
    v452 = v394;
  }

  LODWORD(STACK[0x4D4]) = v452;
  if (v407)
  {
    v453 = v394;
  }

  else
  {
    v453 = v396;
  }

  LODWORD(STACK[0x660]) = v453;
  HIDWORD(v454) = *(v424 + 4 * (BYTE1(v450) ^ 0xDAu)) ^ 0xF7C941D3;
  LODWORD(v454) = HIDWORD(v454);
  v455 = v451 ^ __ROR4__(*(v424 + 4 * (HIBYTE(v450) ^ 5)) ^ 0xF7C941D3, 8);
  v456 = v450 ^ 0xD615094C;
  LODWORD(STACK[0x510]) = v450 ^ 0xD615094C;
  v457 = v455 ^ __ROR4__(*(v445 + 4 * (BYTE2(v450) ^ 0xC3u)) ^ 0xC98521B3, 16) ^ ((v454 >> 24) - ((2 * (v454 >> 24)) & 0xC541EFF4) + 1654716410);
  v458 = v447 ^ 0xAD284F7 ^ v457;
  v459 = v457 ^ v440;
  v460 = v449 ^ 0x7B000000;
  v461 = v459 ^ 0xCC4D5643;
  v462 = v459 ^ 0xCC4D5643 ^ v449 ^ 0x7B000000 ^ v456;
  HIDWORD(v454) = *(v445 + 4 * (((v459 ^ 0x5643 ^ v449 ^ v456) >> 8) ^ 0xDFu)) ^ 0xC98521B3;
  LODWORD(v454) = HIDWORD(v454);
  v463 = v462 ^ 0xAD15094C;
  v464 = *(v412 + 4 * (v459 ^ 0x43 ^ v449 ^ v456 ^ 0xAEu)) ^ __ROR4__(*(v424 + 4 * (HIBYTE(v462) ^ 0x7E)) ^ 0xF7C941D3, 8) ^ v458 ^ ((v454 >> 24) - ((2 * (v454 >> 24)) & 0xA7595FE0) - 743657488) ^ __ROR4__(*(v412 + 4 * (BYTE2(v462) ^ 0xF7u)) ^ 0x19F8430C, 16);
  v465 = v459 ^ 0xCC4D5643 ^ v449 ^ 0x7B000000 ^ 0x601555D7;
  v466 = v464 ^ 0x380A8F31;
  v467 = v459 ^ 0x780AFA03 ^ v464 ^ 0x380A8F31;
  v468 = v467 ^ v465 ^ v462 ^ 0xAD15094C;
  HIDWORD(v454) = *(v425 + 4 * (HIBYTE(v468) ^ 0x87)) ^ 0x206DA9EB;
  LODWORD(v454) = HIDWORD(v454);
  v469 = (v454 >> 8) ^ __ROR4__(*(v424 + 4 * (BYTE1(v468) ^ 0xDAu)) ^ 0xF7C941D3, 24);
  v470 = v468 ^ 0x8515094C;
  v471 = *(v424 + 4 * (v459 ^ 3 ^ v464 ^ 0x31 ^ v459 ^ 0x43 ^ v460 ^ 0xD7 ^ v462 ^ 0x4C ^ 0x9Fu)) ^ __ROR4__(*(v445 + 4 * (BYTE2(v468) ^ 0xC3u)) ^ 0xC98521B3, 16) ^ (v469 - ((2 * v469) & 0x8845DBF0) + 1143139832);
  v472 = v467 ^ v465 ^ 0xCD005C9B;
  v473 = v471 ^ v459 ^ 0xCC4D5643;
  v474 = v473 ^ v472 ^ v470;
  v475 = v464 ^ 0xB8B5CFE6 ^ v471;
  v476 = v474 ^ 0x2AFEF9FC;
  HIDWORD(v454) = *(v425 + 4 * (HIBYTE(v474) ^ 0x28)) ^ 0x206DA9EB;
  LODWORD(v454) = HIDWORD(v454);
  v477 = *(v425 + 4 * (v474 ^ 0xFEu)) ^ __ROR4__(*(v445 + 4 * (BYTE2(v474) ^ 0x28u)) ^ 0xC98521B3, 16) ^ __ROR4__(*(v412 + 4 * (BYTE1(v474) ^ 0x1Bu)) ^ 0x19F8430C, 24) ^ v475 ^ 0x14D4919C ^ ((v454 >> 8) - ((2 * (v454 >> 8)) & 0xC541EFF4) + 1654716410);
  v478 = v473 ^ v472 ^ 0xB6B955BC;
  v479 = LODWORD(STACK[0x6E8]) ^ LODWORD(STACK[0x59C]) ^ 0xD9BF1633;
  v480 = LODWORD(STACK[0x6E8]) ^ 0x9C061F14;
  v481 = v480 ^ LODWORD(STACK[0x6E0]);
  v482 = (v479 - STACK[0x638] + v481) ^ 0x9F1F19A8;
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x6E8]) ^ LODWORD(STACK[0x6C8]) ^ 0x232D4983;
  v483 = v480 ^ LODWORD(STACK[0x6D0]);
  v484 = LODWORD(STACK[0x5A0]) ^ v442 ^ 0x8E4EC860;
  v485 = LODWORD(STACK[0x5A0]) ^ v439 ^ 0x7A0938BB;
  v486 = LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x6B8]);
  v487 = LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x6C0]);
  v488 = STACK[0x554];
  v489 = LODWORD(STACK[0x554]) ^ v458 ^ 0x6004ADF6;
  v490 = v489 + v482;
  v491 = STACK[0x654];
  if (v407)
  {
    v491 = STACK[0x614];
  }

  LODWORD(STACK[0x534]) = v491;
  v492 = STACK[0x700];
  if (v407)
  {
    v492 = STACK[0x62C];
  }

  LODWORD(STACK[0x528]) = v492;
  v493 = STACK[0x610];
  if (v407)
  {
    v493 = STACK[0x608];
  }

  LODWORD(STACK[0x6D0]) = v493;
  v494 = STACK[0x5B8];
  if (v407)
  {
    v494 = STACK[0x5C4];
  }

  v495 = STACK[0x688];
  if (v407)
  {
    v495 = STACK[0x680];
  }

  LODWORD(STACK[0x6A0]) = v495;
  v496 = STACK[0x678];
  if (v407)
  {
    v496 = STACK[0x670];
  }

  LODWORD(STACK[0x3D0]) = v496;
  v497 = STACK[0x5B4];
  if (!v407)
  {
    v497 = STACK[0x5A8];
  }

  LODWORD(STACK[0x4E0]) = v497;
  v498 = STACK[0x634];
  if (!v407)
  {
    v498 = STACK[0x630];
  }

  LODWORD(STACK[0x6B8]) = v498;
  v499 = STACK[0x658];
  if (v407)
  {
    v499 = STACK[0x5E8];
  }

  LODWORD(STACK[0x518]) = v499;
  if (v407)
  {
    v500 = STACK[0x5FC];
  }

  else
  {
    v500 = STACK[0x600];
  }

  v501 = STACK[0x5D0];
  if (!v407)
  {
    v501 = STACK[0x5CC];
  }

  LODWORD(STACK[0x4C0]) = v501;
  v502 = STACK[0x5F0];
  if (!v407)
  {
    v502 = STACK[0x5EC];
  }

  LODWORD(STACK[0x51C]) = v502;
  if (v490)
  {
    v503 = v486;
  }

  else
  {
    v503 = v484;
  }

  LODWORD(STACK[0x5A0]) = v503;
  if (v490)
  {
    v504 = v485;
  }

  else
  {
    v504 = v486;
  }

  LODWORD(STACK[0x580]) = v504;
  if (v490)
  {
    v505 = v487;
  }

  else
  {
    v505 = v485;
  }

  LODWORD(STACK[0x59C]) = v505;
  if ((v490 & 1) == 0)
  {
    v484 = v487;
  }

  LODWORD(STACK[0x578]) = v484;
  v506 = LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x510]);
  v507 = LODWORD(STACK[0x574]) ^ v460 ^ 0xDB735272;
  v508 = LODWORD(STACK[0x574]) ^ v447 ^ 0xFE751B82;
  v509 = LODWORD(STACK[0x574]) ^ LODWORD(STACK[0x524]) ^ 0xE0730EE9;
  if (v490)
  {
    v510 = LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x510]);
  }

  else
  {
    v510 = LODWORD(STACK[0x574]) ^ v460 ^ 0xDB735272;
  }

  LODWORD(STACK[0x574]) = v510;
  if (v490)
  {
    v506 = v508;
  }

  LODWORD(STACK[0x638]) = v506;
  if (v490)
  {
    v511 = v509;
  }

  else
  {
    v511 = v508;
  }

  LODWORD(STACK[0x56C]) = v511;
  if (v490)
  {
    v512 = v507;
  }

  else
  {
    v512 = v509;
  }

  LODWORD(STACK[0x618]) = v512;
  v513 = v488 ^ v465 ^ 0x8B086B37;
  v514 = v488 ^ 0x460837AC ^ v461;
  v515 = v488 ^ 0x460837AC ^ v463;
  v516 = LODWORD(STACK[0x560]) ^ v470;
  v517 = LODWORD(STACK[0x6F0]) ^ 0x17F191FF ^ v466;
  v518 = LODWORD(STACK[0x6F0]) ^ 0xA3B63DBF ^ v472;
  v519 = LODWORD(STACK[0x6F0]) ^ 0xA3B63DBF ^ v467;
  if (v490)
  {
    v520 = v516;
  }

  else
  {
    v520 = v518;
  }

  LODWORD(STACK[0x648]) = v520;
  if (v490)
  {
    v516 = v517;
  }

  LODWORD(STACK[0x560]) = v516;
  if (v490)
  {
    v521 = v518;
  }

  else
  {
    v521 = v519;
  }

  LODWORD(STACK[0x554]) = v521;
  if (v490)
  {
    v522 = v519;
  }

  else
  {
    v522 = v517;
  }

  LODWORD(STACK[0x640]) = v522;
  v523 = v473 ^ 0xDAEBF0B0;
  v524 = LODWORD(STACK[0x590]) ^ v473 ^ 0x43054F4D;
  v525 = LODWORD(STACK[0x590]) ^ v475 ^ 0x3FE8F60D;
  v526 = v476;
  v527 = LODWORD(STACK[0x5C8]) ^ v476;
  if (v490)
  {
    v528 = v524;
  }

  else
  {
    v528 = v525;
  }

  if (v490)
  {
    v529 = v525;
  }

  else
  {
    v529 = v527;
  }

  if (v490)
  {
    v530 = v527;
  }

  else
  {
    v530 = LODWORD(STACK[0x590]) ^ v478 ^ 0xBDA94F26;
  }

  if (v490)
  {
    v531 = LODWORD(STACK[0x590]) ^ v478 ^ 0xBDA94F26;
  }

  else
  {
    v531 = v524;
  }

  v532 = v523 ^ v477;
  v533 = LODWORD(STACK[0x710]) ^ 0x4B6B1DA1 ^ v532;
  v534 = LODWORD(STACK[0x710]) ^ 0xD72CB1E1 ^ v532 ^ v478;
  v535 = LODWORD(STACK[0x710]) ^ 0xF36B413A ^ v477;
  v536 = (LODWORD(STACK[0x620]) + 1237347944 + LODWORD(STACK[0x6D8])) ^ 0x3B9DF5A3;
  LODWORD(STACK[0x510]) = v500;
  v537 = (v500 + 424303844 - v494) ^ 0xDF89F07B;
  v538 = LODWORD(STACK[0x650]) ^ 0x17A42495u;
  v539 = (STACK[0x7D0] - 0x7D6AAFE17312C34DLL);
  v540 = ((v536 + v494) >> 1) + 905658271;
  v541 = (((LODWORD(STACK[0x660]) ^ 0x2949DBCF ^ (LODWORD(STACK[0x6B0]) + 689477892)) + LODWORD(STACK[0x6A8])) >> 1) + 1247306206;
  v542 = v539[(v539[(v539[(v539[0xD966D016 % v538] + 4200687757) % v538] + 942817551) % v538] + 1030555960) % v538] + 2638015632;
  STACK[0x6C8] = v538;
  LODWORD(v542) = v542 % v538 - ((2 * (v542 % v538)) & 0x248B3562) + 843422385;
  v543 = (((v542 ^ 0x3DE49E07) - 873430243) ^ ((v542 ^ 0x8D24575A) + 2066762306) ^ ((v542 ^ 0x828553EC) + 1955679992)) + 63465071;
  LODWORD(STACK[0x324]) = v481;
  if (v490)
  {
    v544 = v481;
  }

  else
  {
    v544 = v479;
  }

  if (v490)
  {
    v545 = v479;
  }

  else
  {
    v545 = v483;
  }

  LODWORD(STACK[0x5C8]) = v545;
  if (v490)
  {
    v546 = v483;
  }

  else
  {
    v546 = STACK[0x588];
  }

  LODWORD(STACK[0x31C]) = v514;
  if (v490)
  {
    v547 = v514;
  }

  else
  {
    v547 = v489;
  }

  if (v490)
  {
    v548 = v489;
  }

  else
  {
    v548 = v515;
  }

  LODWORD(STACK[0x590]) = v548;
  LODWORD(STACK[0x320]) = v513;
  if (v490)
  {
    v549 = v515;
  }

  else
  {
    v549 = v513;
  }

  LODWORD(STACK[0x310]) = v533;
  LODWORD(STACK[0x2FC]) = v534;
  if (v490)
  {
    v533 = v534;
  }

  LODWORD(STACK[0x2F8]) = v535;
  LODWORD(STACK[0x2C4]) = v534 ^ v526;
  if (v490)
  {
    v550 = v535;
  }

  else
  {
    v550 = v534 ^ v526;
  }

  LODWORD(STACK[0x710]) = v490;
  LODWORD(STACK[0x6C0]) = v494;
  LODWORD(STACK[0x6E8]) = v540;
  LODWORD(STACK[0x6F0]) = v541;
  LODWORD(STACK[0x6E0]) = (v537 - v494) >> 1;
  v551 = STACK[0x548];
  LODWORD(STACK[0x2F0]) = v544;
  LODWORD(STACK[0x2D0]) = v546;
  if ((v490 & 2) != 0)
  {
    v552 = v546;
  }

  else
  {
    v552 = v544;
  }

  LODWORD(STACK[0x524]) = v552;
  v553 = STACK[0x5A0];
  if ((v490 & 2) != 0)
  {
    v553 = STACK[0x59C];
  }

  LODWORD(STACK[0x420]) = v553;
  v554 = STACK[0x580];
  if ((v490 & 2) == 0)
  {
    v554 = STACK[0x578];
  }

  LODWORD(STACK[0x4FC]) = v554;
  v555 = STACK[0x574];
  if ((v490 & 2) != 0)
  {
    v555 = STACK[0x56C];
  }

  LODWORD(STACK[0x340]) = v555;
  v556 = STACK[0x638];
  if ((v490 & 2) == 0)
  {
    v556 = STACK[0x618];
  }

  LODWORD(STACK[0x33C]) = v556;
  LODWORD(STACK[0x2E8]) = v547;
  LODWORD(STACK[0x2C8]) = v549;
  if ((v490 & 2) != 0)
  {
    v557 = v547;
  }

  else
  {
    v557 = v549;
  }

  LODWORD(STACK[0x348]) = v557;
  v558 = STACK[0x560];
  if ((v490 & 2) != 0)
  {
    v558 = STACK[0x554];
  }

  LODWORD(STACK[0x350]) = v558;
  LODWORD(STACK[0x508]) = v528;
  LODWORD(STACK[0x504]) = v530;
  if ((v490 & 2) != 0)
  {
    v559 = v530;
  }

  else
  {
    v559 = v528;
  }

  LODWORD(STACK[0x354]) = v559;
  LODWORD(STACK[0x308]) = v529;
  LODWORD(STACK[0x304]) = v531;
  if ((v490 & 2) != 0)
  {
    v560 = v529;
  }

  else
  {
    v560 = v531;
  }

  LODWORD(STACK[0x4F8]) = v560;
  LODWORD(STACK[0x2E4]) = v533;
  LODWORD(STACK[0x2D8]) = v550;
  if ((v490 & 2) != 0)
  {
    v561 = v533;
  }

  else
  {
    v561 = v550;
  }

  LODWORD(STACK[0x358]) = v561;
  v562 = v543 < 0xC819EE1A;
  v563 = *v539 * (((v551 - 5919) | 2u) + 0x374915CB7F835FF3) - 0x4C53FD3B47498B6ELL;
  if (v543 >= 0xC819EE1A)
  {
    v562 = v543 > 0xC819EE1B;
  }

  return (*(STACK[0x668] + 8 * ((234 * !v562) ^ v551)))();
}

uint64_t sub_10012B7E8()
{
  v0 = LODWORD(STACK[0x3D0]) - 10305;
  v1 = STACK[0x668];
  (*(STACK[0x668] + 8 * (LODWORD(STACK[0x3D0]) + 1642)))();
  (*(v1 + 8 * (v0 ^ 0x32FF)))(STACK[0x7B8]);
  v2 = STACK[0x370];
  return sub_100136494(STACK[0x260]);
}

uint64_t sub_10012B7FC()
{
  v2 = (v0 - 192) | 0x2640;
  v3 = STACK[0x6F8];
  if (STACK[0x6F8])
  {
    v4 = STACK[0x434];
  }

  else
  {
    v4 = STACK[0x4C4];
  }

  if (v3)
  {
    v5 = STACK[0x540];
  }

  else
  {
    v5 = STACK[0x500];
  }

  if (v3)
  {
    v6 = STACK[0x4D0];
  }

  else
  {
    v6 = STACK[0x4D8];
  }

  if (v3)
  {
    v7 = STACK[0x418];
  }

  else
  {
    v7 = STACK[0x42C];
  }

  if (v3)
  {
    v8 = STACK[0x438];
  }

  else
  {
    v8 = STACK[0x4C8];
  }

  v9 = STACK[0x430];
  if (v3)
  {
    v9 = STACK[0x3B8];
  }

  v10 = STACK[0x690];
  if (v3)
  {
    v10 = STACK[0x4CC];
    v11 = STACK[0x338];
  }

  else
  {
    v11 = STACK[0x334];
  }

  v12 = STACK[0x328];
  if ((v3 & 1) == 0)
  {
    v12 = STACK[0x698];
  }

  v13 = (STACK[0x6F8] & 2) == 0;
  v14 = STACK[0x688];
  if ((STACK[0x6F8] & 2) != 0)
  {
    v14 = STACK[0x680];
  }

  LODWORD(STACK[0x688]) = v14;
  v15 = STACK[0x5C4];
  if (v13)
  {
    v15 = STACK[0x5B8];
  }

  LODWORD(STACK[0x690]) = v15;
  v16 = STACK[0x5B4];
  if (v13)
  {
    v16 = STACK[0x5A8];
  }

  LODWORD(STACK[0x300]) = v16;
  LODWORD(STACK[0x4CC]) = v4;
  LODWORD(STACK[0x438]) = v5;
  if (v13)
  {
    v17 = v5;
  }

  else
  {
    v17 = v4;
  }

  LODWORD(STACK[0x3B8]) = v17;
  v18 = STACK[0x5E0];
  LODWORD(STACK[0x4C8]) = v6;
  if (v13)
  {
    v18 = v6;
  }

  LODWORD(STACK[0x500]) = v18;
  LODWORD(STACK[0x548]) = v7;
  LODWORD(STACK[0x4D0]) = v8;
  if (v13)
  {
    v19 = v8;
  }

  else
  {
    v19 = v7;
  }

  LODWORD(STACK[0x698]) = v19;
  LODWORD(STACK[0x540]) = v9;
  LODWORD(STACK[0x4C4]) = v10;
  if (v13)
  {
    v20 = v10;
  }

  else
  {
    v20 = v9;
  }

  LODWORD(STACK[0x680]) = v20;
  v21 = STACK[0x5D8];
  LODWORD(STACK[0x5B4]) = v11;
  if (v13)
  {
    v21 = v11;
  }

  LODWORD(STACK[0x4D8]) = v21;
  v22 = STACK[0x5D4];
  LODWORD(STACK[0x5A8]) = v12;
  if (!v13)
  {
    v22 = v12;
  }

  LODWORD(STACK[0x328]) = v22;
  v23 = STACK[0x710];
  v24 = STACK[0x324];
  if (STACK[0x710])
  {
    v24 = STACK[0x588];
  }

  LODWORD(STACK[0x5C4]) = v24;
  if (v23)
  {
    v25 = STACK[0x320];
  }

  else
  {
    v25 = STACK[0x31C];
  }

  if (v23)
  {
    v26 = STACK[0x2C4];
  }

  else
  {
    v26 = STACK[0x2FC];
  }

  if (v23)
  {
    v27 = STACK[0x310];
  }

  else
  {
    v27 = STACK[0x2F8];
  }

  v28 = (v23 & 2) == 0;
  v29 = STACK[0x2F0];
  if (v28)
  {
    v29 = STACK[0x2D0];
  }

  LODWORD(STACK[0x434]) = v29;
  v30 = STACK[0x580];
  if (!v28)
  {
    v30 = STACK[0x578];
  }

  LODWORD(STACK[0x418]) = v30;
  v31 = STACK[0x574];
  if (v28)
  {
    v31 = STACK[0x56C];
  }

  LODWORD(STACK[0x310]) = v31;
  v32 = STACK[0x2E8];
  if (!v28)
  {
    v32 = STACK[0x2C8];
  }

  LODWORD(STACK[0x31C]) = v32;
  v33 = STACK[0x560];
  if (v28)
  {
    v33 = STACK[0x554];
  }

  LODWORD(STACK[0x324]) = v33;
  v34 = STACK[0x308];
  if (!v28)
  {
    v34 = STACK[0x304];
  }

  LODWORD(STACK[0x5B8]) = v34;
  v35 = STACK[0x2E4];
  if (!v28)
  {
    v35 = STACK[0x2D8];
  }

  LODWORD(STACK[0x338]) = v35;
  v36 = (v2 ^ 0xA8EBE7F1) + (((LODWORD(STACK[0x650]) ^ 0x3F7AFDBD) + 78832134) ^ ((LODWORD(STACK[0x650]) ^ 0x7795F262) + 1281224155) ^ ((LODWORD(STACK[0x650]) ^ 0x5F4B2B4A) + 1686320371));
  v37 = STACK[0x7D0] - 0x7D6AAFE17312C34DLL;
  v38 = STACK[0x590];
  LODWORD(STACK[0x580]) = v25;
  if (!v28)
  {
    v38 = v25;
  }

  LODWORD(STACK[0x320]) = v38;
  LODWORD(STACK[0x588]) = v26;
  LODWORD(STACK[0x574]) = v27;
  if (v28)
  {
    v39 = v26;
  }

  else
  {
    v39 = v27;
  }

  LODWORD(STACK[0x334]) = v39;
  v40 = v36 < 0xD557FC69;
  v41 = 0x374915CB7F83613DLL * *(v37 + 8 * ((v1 | ((v1 < 0x6247A839) << 32)) + 0x764FF033CD8FC54CLL) + 0x4D807E5E814493D8) + 0x4D6E39BE90F1B6A9;
  if (v40 == v1 + 1930449969 < 0xD557FC69)
  {
    v40 = v1 + 1930449969 < v36;
  }

  return (*(STACK[0x668] + 8 * ((46 * !v40) ^ v2)))();
}

uint64_t sub_10012C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (STACK[0x6F8] & 2) == 0;
  v12 = STACK[0x4CC];
  if ((STACK[0x6F8] & 2) != 0)
  {
    v12 = STACK[0x438];
  }

  LODWORD(STACK[0x430]) = v12;
  v13 = STACK[0x5E0];
  if (!v11)
  {
    v13 = STACK[0x4C8];
  }

  LODWORD(STACK[0x578]) = v13;
  v14 = STACK[0x678];
  if (!v11)
  {
    v14 = STACK[0x670];
  }

  LODWORD(STACK[0x42C]) = v14;
  v15 = STACK[0x548];
  if (!v11)
  {
    v15 = STACK[0x4D0];
  }

  LODWORD(STACK[0x5E0]) = v15;
  v16 = STACK[0x658];
  if (!v11)
  {
    v16 = STACK[0x5E8];
  }

  LODWORD(STACK[0x658]) = v16;
  v17 = STACK[0x5D0];
  if (v11)
  {
    v17 = STACK[0x5CC];
  }

  v18 = 33 * (v8 ^ 0x292);
  v19 = STACK[0x5D8];
  if (!v11)
  {
    v19 = STACK[0x5B4];
  }

  LODWORD(STACK[0x678]) = v19;
  v20 = STACK[0x5D4];
  if (v11)
  {
    v20 = STACK[0x5A8];
  }

  LODWORD(STACK[0x304]) = v20;
  v21 = (STACK[0x710] & 2) == 0;
  v22 = STACK[0x5A0];
  if ((STACK[0x710] & 2) == 0)
  {
    v22 = STACK[0x59C];
  }

  LODWORD(STACK[0x5D0]) = v22;
  v23 = STACK[0x590];
  if (v21)
  {
    v23 = STACK[0x580];
  }

  LODWORD(STACK[0x5D8]) = v23;
  v24 = STACK[0x588];
  if (v21)
  {
    v24 = STACK[0x574];
  }

  LODWORD(STACK[0x308]) = v24;
  v25 = (v9 ^ 0x415C7C6C7BDCFC21) + ((v9 ^ 0x415C7C6C7BDCFC21uLL) >> 24) + (((v9 ^ 0x415C7C6C7BDCFC21) + ((v9 ^ 0x415C7C6C7BDCFC21uLL) >> 24)) >> 10);
  v26 = v25 - (v25 >> 4);
  v27 = (v26 ^ 0x1B929EEC8F9CCA6ELL) + ((v26 ^ 0x1B929EEC8F9CCA6ELL) >> 25) + (((v26 ^ 0x1B929EEC8F9CCA6ELL) + ((v26 ^ 0x1B929EEC8F9CCA6ELL) >> 25)) >> 15);
  v28 = v27 - (v27 >> (v18 + 34));
  v29 = v28 - 0x662BDCE55C23A43 - ((v28 - 0x662BDCE55C23A43) >> 24) - ((v28 - 0x662BDCE55C23A43 - ((v28 - 0x662BDCE55C23A43) >> 24)) >> 8);
  v30 = v29 - (v29 >> 4);
  v31 = v30 - 0x5CFB59FF495FD206 + ((v30 - 0x5CFB59FF495FD206) >> 28) - ((v30 - 0x5CFB59FF495FD206 + ((v30 - 0x5CFB59FF495FD206) >> 28)) >> 14);
  v32 = v31 + (v31 >> 7);
  v33 = (v32 ^ 0x86E0C920760D31A9) - ((v32 ^ 0x86E0C920760D31A9) >> 24) - (((v32 ^ 0x86E0C920760D31A9) - ((v32 ^ 0x86E0C920760D31A9) >> 24)) >> 14);
  LODWORD(v26) = v32 ^ v26;
  v34 = v33 - (v33 >> 5);
  LODWORD(v28) = v34 ^ v28;
  v35 = v34 + 0x58584140EC49D62ALL - ((v34 + 0x58584140EC49D62ALL) >> 24) - ((v34 + 0x58584140EC49D62ALL - ((v34 + 0x58584140EC49D62ALL) >> 24)) >> 11);
  v36 = v35 - (v35 >> 8);
  v37 = (v36 ^ 0x31F0479488F2B970) + ((v36 ^ 0x31F0479488F2B970) >> 26) + (((v36 ^ 0x31F0479488F2B970) + ((v36 ^ 0x31F0479488F2B970) >> 26)) >> 11);
  v38 = v37 + (v37 >> 1);
  v39 = v38 - 0x604449626C8A4B29 - ((v38 - 0x604449626C8A4B29) >> 26) + ((v38 - 0x604449626C8A4B29 - ((v38 - 0x604449626C8A4B29) >> 26)) >> 13);
  v40 = v39 - (v39 >> 2);
  v41 = v26 ^ v10 ^ v38;
  v42 = v28 ^ a7 ^ v40;
  v43 = v40 - 0x1EAA4D99CF7892B5 - ((v40 - 0x1EAA4D99CF7892B5) >> 29) - ((v40 - 0x1EAA4D99CF7892B5 - ((v40 - 0x1EAA4D99CF7892B5) >> 29)) >> 15);
  v44 = v36 ^ v30 ^ a8 ^ ((v43 >> 2) + v43 - 2 * (v43 >> 2));
  LODWORD(v43) = v41 & 0x7F ^ 0x72;
  LODWORD(STACK[0x4C8]) = v43;
  v45 = 16843009 * v43 + 628070073;
  LODWORD(STACK[0x4CC]) = (v45 ^ 0x314B261D) - 337948836;
  LODWORD(STACK[0x2FC]) = (v45 ^ 0xCF81CD8C) + 353477835;
  LODWORD(STACK[0x2F8]) = (v45 ^ 0x203A8817) - 89464494;
  v46 = STACK[0x5C8];
  if (v21)
  {
    v46 = STACK[0x5C4];
  }

  LODWORD(STACK[0x5CC]) = v46;
  v47 = STACK[0x648];
  if (v21)
  {
    v47 = STACK[0x640];
  }

  LODWORD(STACK[0x5D4]) = v47;
  v48 = v44 & 7 ^ 2;
  LODWORD(STACK[0x554]) = v48;
  v49 = -v48 & 7;
  if ((v44 & 7) == 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = 255;
  }

  LODWORD(STACK[0x548]) = v49;
  v51 = v50 << v49;
  v52 = 2130706432 * v51;
  v53 = v51;
  if ((v44 & 7) == 2)
  {
    v54 = 0;
  }

  else
  {
    v54 = ~v51;
  }

  LODWORD(STACK[0x580]) = v51;
  v55 = 16843009 * v51;
  v56 = (16843009 * v53) ^ ~v17;
  v57 = ~(16843009 * v53) & 0x10000000;
  if ((v56 & v57) != 0)
  {
    v57 = -v57;
  }

  LODWORD(STACK[0x5E8]) = v57 + v56;
  v58 = STACK[0x7D0] - 0x7D6AAFE17312C34DLL;
  v59 = (*(v58 + 8 * ((*(v58 + 8 * ((*(v58 + 8 * ((*(v58 + 8 * (0xA2FEEFE5 % STACK[0x6C8])) + 2327646354) % STACK[0x6C8])) + 3200579394) % STACK[0x6C8])) + 306649669) % STACK[0x6C8])) + 1254755077) % STACK[0x6C8];
  v60 = ((((v59 - ((2 * v59) & 0xF134DD0) - 410409240) ^ 0x1806CF8E) + 198167961) ^ (((v59 - ((2 * v59) & 0xF134DD0) - 410409240) ^ 0xA3D63664) - 1340132237) ^ (((v59 - ((2 * v59) & 0xF134DD0) - 410409240) ^ 0x5C595F02) + 1334861077)) - 1587239848;
  v61 = (v18 - 780336015) & 0x2E82F5BE;
  LODWORD(STACK[0x560]) = v45;
  LODWORD(STACK[0x2D8]) = v45 ^ 0xFB9FF53F;
  LODWORD(STACK[0x5A8]) = v42;
  LODWORD(STACK[0x4D0]) = v52 & v42 ^ v55;
  LODWORD(STACK[0x670]) = v55 ^ v41 & v54;
  LODWORD(STACK[0x2F0]) = ~v55;
  v62 = 16843009 * (v41 ^ 0xAA ^ ((v41 ^ 0x2BAA) >> 8) ^ ((v41 ^ 0x10F62BAA) >> 16) ^ HIBYTE(v41) ^ 0xA5);
  v63 = 16843009 * (v42 ^ 0xCC ^ ((v42 ^ 0x9CC) >> 8) ^ ((v42 ^ 0xF57A09CC) >> 16) ^ HIBYTE(v42) ^ 0xD8);
  v64 = LODWORD(STACK[0x6E0]) ^ 0xF680C42;
  LODWORD(STACK[0x2E8]) = v62;
  LODWORD(STACK[0x590]) = v62 ^ 0xB5B5B5B5;
  LODWORD(STACK[0x2E4]) = v63;
  LODWORD(STACK[0x588]) = v63 ^ 0x2D2D2D2D;
  v65 = LODWORD(STACK[0x6F0]) ^ 0x832B7013;
  v66 = LODWORD(STACK[0x6E8]) ^ 0xB0DDC952;
  LODWORD(STACK[0x56C]) = v61;
  LODWORD(STACK[0x59C]) = v41;
  LODWORD(STACK[0x574]) = v41 & 0xFFFFFF80;
  LODWORD(STACK[0x5B4]) = v44;
  LODWORD(STACK[0x5A0]) = v44 & 0xFFFFFFF8;
  v67 = v60 < 0x95A54957;
  v68 = 0x374915CB7F83613DLL * *(v58 + 8 * (((((v61 ^ 0xFF58FF5u) > 0xFF5AFE3) << 32) | 0xFF5AFE3) + 0x7A26560D3E2F1AACLL) + 0x2ECD4F958ED9AB88) + 0x7F8F2A0A86F7A55CLL;
  if (v60 >= 0x95A54957)
  {
    v67 = v60 > 0x95A54958;
  }

  return (*(STACK[0x668] + 8 * ((1003 * v67) ^ v18)))(0x2FF6C60A61AA0200, 2242877813, v60 > 0x95A54958);
}

uint64_t sub_10012D108()
{
  v1 = (LODWORD(STACK[0x56C]) - 2119099415) & 0x7E4EE773;
  v2 = (STACK[0x6F8] & 2) == 0;
  v3 = STACK[0x654];
  if ((STACK[0x6F8] & 2) != 0)
  {
    v3 = STACK[0x614];
  }

  LODWORD(STACK[0x438]) = v3;
  v4 = STACK[0x610];
  if (!v2)
  {
    v4 = STACK[0x608];
  }

  LODWORD(STACK[0x608]) = v4;
  v5 = STACK[0x600];
  if (!v2)
  {
    v5 = STACK[0x5FC];
  }

  LODWORD(STACK[0x654]) = v5;
  v6 = STACK[0x5F0];
  if (v2)
  {
    v6 = STACK[0x5EC];
  }

  LODWORD(STACK[0x56C]) = v6;
  v7 = (STACK[0x710] & 2) == 0;
  v8 = STACK[0x5C8];
  if ((STACK[0x710] & 2) != 0)
  {
    v8 = STACK[0x5C4];
  }

  LODWORD(STACK[0x5C4]) = v8;
  v9 = STACK[0x648];
  if (!v7)
  {
    v9 = STACK[0x640];
  }

  LODWORD(STACK[0x5C8]) = v9;
  LODWORD(STACK[0x648]) = LODWORD(STACK[0x6E0]) ^ 0x1925416D;
  LODWORD(STACK[0x4CC]) ^= LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x2F8]) ^ (LODWORD(STACK[0x2D8]) + 554671226);
  LODWORD(STACK[0x640]) = v1 ^ 0x2022171;
  LODWORD(STACK[0x5FC]) = STACK[0x2F0] & 0xEFFFFFFF;
  LODWORD(STACK[0x600]) = LODWORD(STACK[0x2E8]) ^ 0x98989898 ^ LODWORD(STACK[0x2E4]);
  LODWORD(STACK[0x614]) = LODWORD(STACK[0x5B4]) ^ 0x6FA6B4F2;
  v10 = ((LODWORD(STACK[0x650]) ^ 0x98738E4F) - 1547988488) ^ ((LODWORD(STACK[0x650]) ^ 0x5CE18536) + 1730779791) ^ ((LODWORD(STACK[0x650]) ^ 0xD3362FEC) - 385994667);
  v11 = v10 < 0x2C6C3B2E;
  v12 = 0x374915CB7F83613DLL * *(STACK[0x7D0] - 0x7D6AAFE17312C34DLL + 8 * ((v0 | ((v0 < 0xFF5AFE3) << 32)) + 0x58D65DEF3FE81B73) + 0x394D10858111A550) - 0xD34C3EE3B0BE8D8;
  if (v11 == v0 + 1301556822 < 0x5D89DE38)
  {
    v11 = v0 + 1301556822 < v10 + 824025866;
  }

  return (*(STACK[0x668] + 8 * (((4 * !v11) | (8 * !v11)) ^ v1)))();
}

uint64_t sub_10012DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x620]) += (LODWORD(STACK[0x640]) - 33686018) * LODWORD(STACK[0x580]);
  v11 = 446 * (v9 ^ 0x150B);
  LODWORD(STACK[0x2F0]) = v11;
  v12 = (STACK[0x6F8] & 2) == 0;
  if ((STACK[0x6F8] & 2) != 0)
  {
    v13 = STACK[0x62C];
  }

  else
  {
    v13 = STACK[0x700];
  }

  v14 = (a4 ^ 0x415C7C6C7BDCFC21) + ((a4 ^ 0x415C7C6C7BDCFC21uLL) >> 24) + (((a4 ^ 0x415C7C6C7BDCFC21) + ((a4 ^ 0x415C7C6C7BDCFC21uLL) >> 24)) >> 10);
  v15 = v14 - (v14 >> 4);
  v16 = (v15 ^ 0x1B929EEC8F9CCA6ELL) + ((v15 ^ 0x1B929EEC8F9CCA6ELL) >> 25) + (((v15 ^ 0x1B929EEC8F9CCA6ELL) + ((v15 ^ 0x1B929EEC8F9CCA6ELL) >> 25)) >> 15);
  v17 = v16 - (v16 >> 8);
  v18 = v17 - 0x662BDCE55C23A43 - ((v17 - 0x662BDCE55C23A43) >> 24) - ((v17 - 0x662BDCE55C23A43 - ((v17 - 0x662BDCE55C23A43) >> 24)) >> 8);
  v19 = v18 - (v18 >> 4);
  v20 = v19 - 0x5CFB59FF495FD206 + ((v19 - 0x5CFB59FF495FD206) >> 28) - ((v19 - 0x5CFB59FF495FD206 + ((v19 - 0x5CFB59FF495FD206) >> 28)) >> 14);
  v21 = v20 + (v20 >> 7);
  v22 = (v21 ^ 0x86E0C920760D31A9) - ((v21 ^ 0x86E0C920760D31A9) >> 24) - (((v21 ^ 0x86E0C920760D31A9) - ((v21 ^ 0x86E0C920760D31A9) >> 24)) >> 14);
  v23 = v22 - (v22 >> 5);
  v24 = v23 + 0x58584140EC49D62ALL - ((v23 + 0x58584140EC49D62ALL) >> 24) - ((v23 + 0x58584140EC49D62ALL - ((v23 + 0x58584140EC49D62ALL) >> 24)) >> 11);
  v25 = v24 - (v24 >> 8);
  v26 = (v25 ^ 0x31F0479488F2B970) + ((v25 ^ 0x31F0479488F2B970) >> 26) + (((v25 ^ 0x31F0479488F2B970) + ((v25 ^ 0x31F0479488F2B970) >> 26)) >> 11);
  v27 = v26 + (v26 >> 1);
  v28 = v27 - 0x604449626C8A4B29 - ((v27 - 0x604449626C8A4B29) >> 26) + ((v27 - 0x604449626C8A4B29 - ((v27 - 0x604449626C8A4B29) >> 26)) >> 13);
  v29 = v28 - (v28 >> 2);
  v30 = v29 - 0x1EAA4D99CF7892B5 - ((v29 - 0x1EAA4D99CF7892B5) >> 29) - ((v29 - 0x1EAA4D99CF7892B5 - ((v29 - 0x1EAA4D99CF7892B5) >> 29)) >> 15);
  v31 = v25 ^ v19 ^ v8 ^ (v30 - (v30 >> 2));
  v32 = STACK[0x4CC];
  v33 = LODWORD(STACK[0x574]) ^ v11 ^ 0x6FA6A068 | LODWORD(STACK[0x4CC]) ^ 0xB9;
  v34 = v31 ^ 3;
  v35 = -(v31 ^ 3) & 7;
  v36 = STACK[0x2A8];
  v37 = *(STACK[0x2A8] + 4 * v35);
  v38 = LODWORD(STACK[0x59C]) ^ 0x6FA6B4F2;
  v39 = v13 + (v37 ^ 0x7BA79AA6) + 147752235 * (v33 - v38);
  v40 = LODWORD(STACK[0x5A0]) ^ 0x6FA6B4F0;
  LODWORD(STACK[0x5F0]) = v40;
  v41 = STACK[0x554];
  v42 = v40 | LODWORD(STACK[0x554]);
  v43 = STACK[0x614];
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x554]) + LODWORD(STACK[0x6B0]) + 1989351335 * (LODWORD(STACK[0x614]) - v42);
  v44 = STACK[0x540];
  if (!v12)
  {
    v44 = STACK[0x4C4];
  }

  LODWORD(STACK[0x640]) = v44;
  v45 = STACK[0x638];
  if ((STACK[0x710] & 2) != 0)
  {
    v45 = STACK[0x618];
  }

  LODWORD(STACK[0x2FC]) = v45;
  v46 = v21 ^ v15 ^ v10 ^ v27;
  v47 = v23 ^ v17 ^ a8 ^ v29;
  v48 = v46 & 0x7F ^ 0x4B;
  v49 = v46 & 0xFFFFFF80 ^ 0x970D3D80;
  LODWORD(STACK[0x4C4]) = v48;
  v50 = (((16843009 * v48 - 1168620121) ^ 0x6DB72BDE) + 672174471) ^ (16843009 * v48 - 1168620121) ^ (((16843009 * v48 - 1168620121) ^ 0x21763F0E) + 1691452759) ^ (((16843009 * v48 - 1168620121) ^ 0x8156AED8) - 990833535) ^ (((16843009 * v48 - 1168620121) ^ 0x77CFFFAF) + 845694456);
  v51 = (v31 | 0x29F54247) & v34;
  v52 = v34 & 7;
  if ((v34 & 7) != 0)
  {
    v53 = 255;
  }

  else
  {
    v53 = 0;
  }

  LODWORD(STACK[0x700]) = v35;
  v54 = v53 << v35;
  v55 = (v53 << v35);
  LODWORD(STACK[0x6B0]) = 452984832 * v55;
  v56 = 16843009 * v55;
  v57 = 16843009 * (v46 ^ 0xAA ^ ((v46 ^ 0x10F62BAA) >> 16) ^ ((v46 ^ 0x2BAA) >> 8) ^ HIBYTE(v46) ^ 0xD2);
  v58 = 16843009 * (v47 ^ 0xCC ^ ((v47 ^ 0x9CC) >> 8) ^ ((v47 ^ 0xF57A09CC) >> 16) ^ HIBYTE(v47) ^ 0xA6);
  LODWORD(STACK[0x560]) = v50 ^ v32 ^ ((LODWORD(STACK[0x3D0]) ^ ((v50 ^ v32) >> 8) ^ 0x9F37D3) - 2 * ((LODWORD(STACK[0x3D0]) ^ ((v50 ^ v32) >> 8) ^ 0x9F37D3) & 0x202F476F ^ (LODWORD(STACK[0x3D0]) ^ ((v50 ^ v32) >> 8)) & 4) + 539969387);
  v59 = (LODWORD(STACK[0x300]) - ((2 * LODWORD(STACK[0x300])) & 0x5F9B675E) - 1345473617) ^ 0x2B95D6F6 ^ v37;
  v60 = STACK[0x2B0];
  v61 = STACK[0x548];
  v62 = *(STACK[0x2B0] + 4 * LODWORD(STACK[0x548])) ^ 0xDB48C3E3;
  if (v52)
  {
    v63 = ~v54;
  }

  else
  {
    v63 = 0;
  }

  v64 = v59 & 0x1000000;
  if ((v59 & 0x1000000 & v62) != 0)
  {
    v64 = -v64;
  }

  LODWORD(STACK[0x638]) = (v64 + v62) ^ v59 & 0xFEFFFFFF;
  LODWORD(STACK[0x290]) = v57;
  LODWORD(STACK[0x2F8]) = v58;
  v65 = v57 ^ 0x91919191 ^ v58;
  v66 = STACK[0x600];
  v67 = STACK[0x4E8];
  v68 = *(STACK[0x4E8] + 4 * v61);
  HIDWORD(v69) = v68 ^ 0x1A2;
  LODWORD(v69) = v68 ^ 0xBE38000;
  v70 = __ROR4__(__ROR4__(v69 >> 9, 29) ^ 0xB9EFCC39, 3) ^ 0x732FC4D2;
  v71 = LODWORD(STACK[0x4C0]) + (*(v36 + 4 * (LODWORD(STACK[0x600]) % 0x101)) ^ 0x7BA79AA6) + (*(v60 + 4 * (v65 % 0x101)) ^ 0xB95BB696) + 1;
  v72 = *(STACK[0x4E8] + 4 * v41);
  HIDWORD(v69) = v72 ^ 0x1A2;
  LODWORD(v69) = v72 ^ 0xBE38000;
  LODWORD(STACK[0x610]) = (v71 - ((2 * v71) & 0x48FCC80E) + 612262919) ^ *(v60 + 4 * v52) ^ (v69 >> 9);
  v73 = v50 ^ 0xA7;
  v74 = v39 + v70;
  LODWORD(STACK[0x580]) = v46 ^ 0x970D3DCB;
  LODWORD(STACK[0x2C0]) = 416202473 * ((v73 ^ v49) - (v46 ^ 0x970D3DCB));
  v75 = v51 ^ 0x970D3DCB;
  v76 = v51 ^ 0x970D3DC8;
  LODWORD(STACK[0x300]) = v75;
  LODWORD(STACK[0x540]) = v52;
  v77 = v75 & 0xFFFFFFF8 | v52;
  LODWORD(STACK[0x2A0]) = 1323839525 * (v76 - v77);
  v78 = v76 ^ LODWORD(STACK[0x578]) ^ (32 * v76);
  LODWORD(STACK[0x578]) = v73 + v49;
  LODWORD(STACK[0x2D8]) = v73 | v49;
  LODWORD(STACK[0x62C]) = v78 ^ v77 ^ (32 * v77);
  v79 = *(v36 + 4 * (v76 % 0x101));
  LODWORD(STACK[0x2C8]) = *(v60 + 4 * (v77 % 0x101)) ^ 0xB95BB696;
  LODWORD(STACK[0x2C4]) = v79 ^ 0x7BA79AA6;
  LODWORD(STACK[0x2A8]) = *(STACK[0x2B8] + 4 * (v33 % 0x101));
  v80 = *(v67 + 4 * (v38 % 0x101));
  LODWORD(STACK[0x2B8]) = v33;
  LODWORD(STACK[0x2B0]) = v38;
  LODWORD(STACK[0x298]) = (LODWORD(STACK[0x620]) ^ ((v33 ^ v38) << 6)) - 2 * ((LODWORD(STACK[0x620]) ^ ((v33 ^ v38) << 6)) & 0x71D3909F ^ STACK[0x620] & 4) - 237793125;
  v81 = STACK[0x6C8];
  v82 = STACK[0x7D0] - 0x7D6AAFE17312C34DLL;
  v83 = (*(v82 + 8 * ((*(v82 + 8 * ((*(v82 + 8 * (0xE2F4BDB6 % STACK[0x6C8])) + 3121270211) % STACK[0x6C8])) + 1772873213) % STACK[0x6C8])) + 1035455456) % STACK[0x6C8];
  v84 = LODWORD(STACK[0x5F0]) ^ v43;
  v85 = STACK[0x4E0];
  LODWORD(STACK[0x4C0]) = v42;
  v86 = v42 ^ v85 ^ (v84 >> 5);
  LODWORD(v83) = (*(v82 + 8 * v83) + 3098306977) % v81;
  v87 = ((((v83 - ((2 * v83) & 0x2F8CE212) - 1748602615) ^ 0x7F36C3F4) - 536279408) ^ (((v83 - ((2 * v83) & 0x2F8CE212) - 1748602615) ^ 0x8B05BF80) + 339376892) ^ (((v83 - ((2 * v83) & 0x2F8CE212) - 1748602615) ^ 0x63F50D7D) - 53819385)) - 1772340710;
  LODWORD(STACK[0x4E8]) = v50;
  v88 = v50 ^ 0xBA5845A7;
  LODWORD(STACK[0x270]) = v88 + LODWORD(STACK[0x4D4]);
  LODWORD(STACK[0x620]) = v47;
  v89 = STACK[0x6B0] & v47;
  LODWORD(STACK[0x5F0]) = v56;
  LODWORD(STACK[0x4E0]) = v89 ^ v56;
  LODWORD(STACK[0x5A0]) = v46;
  LODWORD(STACK[0x2D0]) = v46 & v63;
  LODWORD(STACK[0x2E4]) = v74 + 1;
  LODWORD(STACK[0x4D4]) = v80;
  LODWORD(STACK[0x280]) = v80 ^ 0xBE38000;
  LODWORD(STACK[0x278]) = LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x3B8]);
  v90 = LODWORD(STACK[0x6E8]) ^ 0x2B64A44A;
  v91 = LODWORD(STACK[0x6E0]) ^ 0xD1D069F0;
  v92 = LODWORD(STACK[0x6F0]) ^ 0x5D932F89;
  v93 = STACK[0x2F0];
  STACK[0x3D0] = v88;
  STACK[0x288] = v88 | 0x2B6E6C61;
  STACK[0x258] = (v88 | 0x2B6E6C61) ^ v88;
  LODWORD(STACK[0x5EC]) = v65;
  LODWORD(STACK[0x268]) = v65 ^ v66;
  LODWORD(STACK[0x3B8]) = 4 * (v65 ^ v66);
  v94 = STACK[0x5B4];
  LODWORD(STACK[0x618]) = v86;
  LODWORD(STACK[0x6B0]) = v86 ^ v94;
  v95 = 0x374915CB7F83613DLL * *(v82 + 8 * (((v93 - 4111) ^ 0x196219500B442498) + 186218151) + 0x34EF357F4D1348C0) - 0x2F094B2AB2E2010CLL;
  v96 = v87 < 0x9F55EE8D || v87 > 0x9F55EE8E;
  return (*(STACK[0x668] + 8 * ((495 * v96) ^ v93)))();
}

uint64_t sub_10012EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = v7 + 9969;
  v9 = STACK[0x634];
  if ((STACK[0x6F8] & 2) == 0)
  {
    v9 = STACK[0x630];
  }

  LODWORD(STACK[0x634]) = v9;
  v10 = STACK[0x508];
  if ((STACK[0x710] & 2) == 0)
  {
    v10 = STACK[0x504];
  }

  LODWORD(STACK[0x2E8]) = v10;
  v11 = LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x5FC]);
  v12 = LODWORD(STACK[0x270]) + STACK[0x258] - STACK[0x288];
  LODWORD(STACK[0x508]) = ~LODWORD(STACK[0x4E0]);
  LODWORD(STACK[0x5FC]) = 1137778425 * LODWORD(STACK[0x4C4]);
  LODWORD(STACK[0x5E8]) = v11 + LODWORD(STACK[0x548]);
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x268]) >> 5;
  LODWORD(STACK[0x2F0]) = 32 * LODWORD(STACK[0x578]);
  LODWORD(STACK[0x630]) = LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x614]) ^ v12;
  LODWORD(STACK[0x614]) = LODWORD(STACK[0x2C0]) + LODWORD(STACK[0x608]);
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0x574]) - LODWORD(STACK[0x540]);
  HIDWORD(v13) = LODWORD(STACK[0x4D4]) ^ 0x1A2;
  LODWORD(v13) = STACK[0x280];
  LODWORD(STACK[0x4D4]) = v13 >> 9;
  LODWORD(STACK[0x608]) = LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x620]);
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x290]) ^ 0xC2C2C2C2;
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x2F8]) ^ 0x53535353;
  v14 = ((LODWORD(STACK[0x650]) ^ 0x519A1B12) + 1783760043) ^ ((LODWORD(STACK[0x650]) ^ 0x18DDE29) + 977650066) ^ (((v7 + 1202969813) ^ LODWORD(STACK[0x650])) + 2088500759);
  v15 = v14 < 0x2C6C3B2E;
  v16 = *(STACK[0x7D0] - 0x7D6AAFE17312C34DLL + 8 * ((a7 | ((a7 < 0xB1976A7) << 32)) + 0x21CB261871D78C76) - 0xE5930C3E78818E8) * ((8 * v8) ^ 0x374915CB7F823F6DLL) + 0x467EE901750329D3;
  v17 = a7 + 1410879195;
  if (v15 == v17 < 0x5F31C581)
  {
    v15 = v17 < v14 + 851806803;
  }

  return (*(STACK[0x668] + 8 * ((51 * v15) ^ v8)))(1597097345);
}

uint64_t sub_10012F528@<X0>(int a1@<W7>, int a2@<W8>)
{
  LODWORD(STACK[0x2F8]) = a2;
  v5 = (v3 ^ 0x415C7C6C7BDCFC21) + ((v3 ^ 0x415C7C6C7BDCFC21uLL) >> 24) + (((v3 ^ 0x415C7C6C7BDCFC21) + ((v3 ^ 0x415C7C6C7BDCFC21uLL) >> 24)) >> 10);
  v6 = v5 - (v5 >> 4);
  v7 = (v6 ^ 0x1B929EEC8F9CCA6ELL) + ((v6 ^ 0x1B929EEC8F9CCA6ELL) >> 25) + (((v6 ^ 0x1B929EEC8F9CCA6ELL) + ((v6 ^ 0x1B929EEC8F9CCA6ELL) >> 25)) >> 15);
  v8 = v7 - (v7 >> 8);
  STACK[0x280] = v8;
  LODWORD(STACK[0x278]) = (2 * v8) & 0xD513BEAA;
  v9 = ((v8 - 0x662BDCE55C23A43) >> 24) + v8 - 0x662BDCE55C23A43 - 2 * ((v8 - 0x662BDCE55C23A43) >> 24);
  v10 = v9 - (v9 >> 8) - ((v9 - (v9 >> 8)) >> 4);
  v11 = v10 - 0x5CFB59FF495FD206 + ((v10 - 0x5CFB59FF495FD206) >> 28) - ((v10 - 0x5CFB59FF495FD206 + ((v10 - 0x5CFB59FF495FD206) >> 28)) >> 14);
  v12 = v11 + (v11 >> 7);
  v13 = (v12 ^ 0x86E0C920760D31A9) - ((v12 ^ 0x86E0C920760D31A9) >> 24) - (((v12 ^ 0x86E0C920760D31A9) - ((v12 ^ 0x86E0C920760D31A9) >> 24)) >> 14);
  v14 = v13 - (v13 >> 5);
  v15 = v14 + 0x58584140EC49D62ALL - ((v14 + 0x58584140EC49D62ALL) >> 24) - ((v14 + 0x58584140EC49D62ALL - ((v14 + 0x58584140EC49D62ALL) >> 24)) >> 11);
  v16 = v15 - (v15 >> 8);
  v17 = (v16 ^ 0x31F0479488F2B970) + ((v16 ^ 0x31F0479488F2B970) >> 26) + (((v16 ^ 0x31F0479488F2B970) + ((v16 ^ 0x31F0479488F2B970) >> 26)) >> 11);
  v18 = v17 + (v17 >> 1);
  v19 = v18 - 0x604449626C8A4B29 - ((v18 - 0x604449626C8A4B29) >> 26) + ((v18 - 0x604449626C8A4B29 - ((v18 - 0x604449626C8A4B29) >> 26)) >> 13);
  v20 = v19 - (v19 >> 2);
  v21 = STACK[0x6C8];
  v22 = STACK[0x7D0] - 0x7D6AAFE17312C34DLL;
  v23 = (*(v22 + 8 * ((*(v22 + 8 * ((*(v22 + 8 * (0x1EC53BAE % STACK[0x6C8])) + 3116000022) % STACK[0x6C8])) + 3753214784) % STACK[0x6C8])) + 489830678) % STACK[0x6C8];
  STACK[0x6F8] = v22;
  LODWORD(v23) = (*(v22 + 8 * v23) + 3682375544) % v21;
  v24 = v20 - 0x1EAA4D99CF7892B5 - ((v20 - 0x1EAA4D99CF7892B5) >> 29) - ((v20 - 0x1EAA4D99CF7892B5 - ((v20 - 0x1EAA4D99CF7892B5) >> 29)) >> 15);
  v25 = (v2 - 6150) | 0x2324;
  LODWORD(STACK[0x504]) = LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x5F0]);
  v26 = STACK[0x600];
  v27 = STACK[0x5EC];
  v28 = LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x288]);
  LODWORD(v10) = v16 ^ v10;
  LODWORD(v16) = v24 - (v24 >> 2);
  LODWORD(v19) = STACK[0x62C];
  LODWORD(v24) = LODWORD(STACK[0x62C]) ^ 0xBF1F92D;
  LODWORD(v21) = LODWORD(STACK[0x5A8]) - ((2 * LODWORD(STACK[0x5A8])) & 0x17E3F25A) + 200407341;
  LODWORD(v22) = STACK[0x648];
  LODWORD(STACK[0x6C8]) = v24;
  LODWORD(STACK[0x270]) = v21;
  LODWORD(STACK[0x268]) = (2 * (v21 ^ v22 ^ v24)) & 0xD513BEAA;
  v29 = v26 ^ LODWORD(STACK[0x6A8]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x2D8]) ^ v27;
  LODWORD(v22) = STACK[0x5B4];
  v30 = (2 * (LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x6F0]) ^ v28)) & 0xD513BEAA;
  LODWORD(STACK[0x5F0]) = v29 ^ LODWORD(STACK[0x3B8]);
  LODWORD(STACK[0x600]) = v28;
  STACK[0x510] = v4 & (2 * v12) ^ v12;
  LODWORD(STACK[0x258]) = v4 & (2 * v14) ^ v14;
  LODWORD(v8) = v10 ^ v16 ^ v4 & (2 * (v10 ^ v16));
  LODWORD(v16) = (v25 + 1137766291) * LODWORD(STACK[0x4C8]);
  LODWORD(v10) = v22 ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x5FC]) ^ (2 * v28) & 0xD513BEAA;
  LODWORD(STACK[0x6A8]) = LODWORD(STACK[0x6B0]) ^ 0xAE22670A;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x608]) ^ 0xCB3ECEE;
  LODWORD(v22) = STACK[0x6D0];
  LODWORD(STACK[0x244]) = 2 * (LODWORD(STACK[0x6E8]) ^ LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x59C]));
  LODWORD(STACK[0x248]) = ((2 * v19) & 0xD513BEAA) - ((4 * v19) & 0x2237050) + 200407341;
  LODWORD(STACK[0x5FC]) = v10 ^ v30 ^ a1 ^ v16 ^ v8;
  v31 = LODWORD(STACK[0x6E0]) ^ 0x77E38D85;
  v32 = ((((v23 - ((2 * v23) & 0x346B5BBC) + 1513467358) ^ 0x6B910A7E) - 1174038123) ^ (((v23 - ((2 * v23) & 0x346B5BBC) + 1513467358) ^ 0xF05C00EA) + 566792961) ^ (((v23 - ((2 * v23) & 0x346B5BBC) + 1513467358) ^ 0xC1F8A74A) + 275526817)) - 259424324;
  LODWORD(STACK[0x3B8]) = ~LODWORD(STACK[0x4D0]);
  STACK[0x2D8] = v6;
  LODWORD(STACK[0x238]) = 2 * v6;
  STACK[0x2D0] = v18;
  LODWORD(STACK[0x6E0]) = 2 * v18;
  STACK[0x5E0] = v20;
  LODWORD(STACK[0x230]) = 2 * v20;
  LODWORD(STACK[0x288]) = 2 * v22;
  v33 = v32 < 0x7C2ABDF1;
  v34 = 0x374915CB7F83613DLL * *STACK[0x6F8] - 0xE27DA539350F2F8;
  if (v32 >= 0x7C2ABDF1)
  {
    v33 = v32 > 0x7C2ABDF2;
  }

  return (*(STACK[0x668] + 8 * (v33 ^ v25 ^ 1)))(v25 ^ 0x2C90u, 0x3CDFCE9B87A1CC88, 0x3CDFCE9B00000000);
}

uint64_t sub_1001303E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x5EC]) = LODWORD(STACK[0x5E8]) - LODWORD(STACK[0x700]);
  LODWORD(STACK[0x5E8]) = LODWORD(STACK[0x2A0]) + LODWORD(STACK[0x4D8]);
  v6 = LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x4D4]);
  LODWORD(STACK[0x250]) = v6;
  LODWORD(STACK[0x6F8]) = v6 ^ 0x485C19A0;
  LODWORD(STACK[0x4D8]) = STACK[0x238] & 0xD513BEAA;
  v7 = STACK[0x230] & 0xD513BEAA;
  LODWORD(STACK[0x2B8]) = STACK[0x244] & 0xD513BEAA;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x268]) ^ a5 ^ STACK[0x280] ^ LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x258]) ^ STACK[0x5E0] ^ v7;
  v8 = ((LODWORD(STACK[0x650]) ^ 0x3CB95EEE) + 124862807) ^ ((LODWORD(STACK[0x650]) ^ 0xE51B911E) - 556560729) ^ ((LODWORD(STACK[0x650]) ^ 0xCE06EB65) - 170986274);
  v9 = v8 < 0x2C6C3B2E;
  v10 = 0x374915CB7F83613DLL * *(STACK[0x7D0] - 0x7D6AAFE17312C34DLL + 8 * (((v5 + 1) | (((v5 + 1) < 0x2773533A) << 32)) + 0x345127BC5B2EC054 + ((a1 + 1484989961) & 0xA77CFFDF ^ 0xBAED8437D5DC5ADLL))) + 0x4C0D804D256527AALL;
  if (v9 == (v5 + 845217622) < 0x59D4528E)
  {
    v9 = v5 + 845217622 < v8 + 761796448;
  }

  return (*(STACK[0x668] + 8 * ((1953 * !v9) ^ a1)))();
}

uint64_t sub_100130EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = STACK[0x560];
  v13 = (v8 ^ 0x415C7C6C7BDCFC21) + ((v8 ^ 0x415C7C6C7BDCFC21uLL) >> 24) + (((v8 ^ 0x415C7C6C7BDCFC21) + ((v8 ^ 0x415C7C6C7BDCFC21uLL) >> 24)) >> 10);
  v14 = v13 - (v13 >> 4);
  v15 = v10 & (v14 >> 2) ^ v14;
  v16 = (v14 ^ 0x1B929EEC8F9CCA6ELL) + ((v14 ^ 0x1B929EEC8F9CCA6ELL) >> 25) + (((v14 ^ 0x1B929EEC8F9CCA6ELL) + ((v14 ^ 0x1B929EEC8F9CCA6ELL) >> 25)) >> 15);
  v17 = v16 - (v16 >> 8);
  v18 = v17 - 0x662BDCE55C23A43 - ((v17 - 0x662BDCE55C23A43) >> 24) - ((v17 - 0x662BDCE55C23A43 - ((v17 - 0x662BDCE55C23A43) >> 24)) >> 8);
  v19 = v18 - (v18 >> 4);
  v20 = v19 - 0x5CFB59FF495FD206 + ((v19 - 0x5CFB59FF495FD206) >> 28) - ((v19 - 0x5CFB59FF495FD206 + ((v19 - 0x5CFB59FF495FD206) >> 28)) >> 14);
  v21 = v20 + (v20 >> 7);
  v22 = (v21 ^ 0x86E0C920760D31A9) - ((v21 ^ 0x86E0C920760D31A9) >> 24) - (((v21 ^ 0x86E0C920760D31A9) - ((v21 ^ 0x86E0C920760D31A9) >> 24)) >> 14);
  v23 = v22 - (v22 >> 5);
  v24 = v23 + 0x58584140EC49D62ALL;
  v25 = v23 ^ v17;
  v26 = LODWORD(STACK[0x59C]) - ((2 * LODWORD(STACK[0x59C])) & 0x7FB1F922) + 1071185041;
  v27 = STACK[0x6E8];
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x560]) ^ 0x80C068E4;
  v28 = v12 ^ 0x80C068E4 ^ v27;
  v29 = v24 - (v24 >> 24) - ((v24 - (v24 >> 24)) >> 11);
  v30 = v29 - (v29 >> 8);
  v31 = (v30 ^ 0x31F0479488F2B970) + ((v30 ^ 0x31F0479488F2B970) >> 26) + (((v30 ^ 0x31F0479488F2B970) + ((v30 ^ 0x31F0479488F2B970) >> 26)) >> 11);
  v32 = v31 + (v31 >> 1);
  v33 = v32 - 0x604449626C8A4B29 - ((v32 - 0x604449626C8A4B29) >> 26) + ((v32 - 0x604449626C8A4B29 - ((v32 - 0x604449626C8A4B29) >> 26)) >> 13);
  v34 = v33 - (v33 >> 2);
  v35 = v34 - 0x1EAA4D99CF7892B5 - ((v34 - 0x1EAA4D99CF7892B5) >> 29) - ((v34 - 0x1EAA4D99CF7892B5 - ((v34 - 0x1EAA4D99CF7892B5) >> 29)) >> 15);
  v36 = v35 - (v35 >> 2);
  v37 = v28 ^ v26 ^ LODWORD(STACK[0x518]) ^ (v12 >> 2) & 0x1FBBFEA7 ^ ((v28 ^ v26) >> 2) & 0x1FBBFEA7 ^ v11 ^ v15 ^ v21 ^ (v21 >> 2) & 0x1FBBFEA7 ^ v32 ^ (v32 >> 2) & 0x1FBBFEA7;
  v38 = (v37 ^ 0xF822405) - 2 * ((v37 ^ 0xF822405) & 0x3FD8FC99 ^ v37 & 8);
  v39 = v10 & (v30 >> 2) ^ v30;
  v40 = (v36 >> 2) & 0x200000;
  if ((v40 & v36) != 0)
  {
    LODWORD(v40) = -v40;
  }

  v41 = (2 * (LODWORD(STACK[0x6A8]) ^ ((LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x6F0])) >> 2) & 0x1FBBFEA7 ^ (((LODWORD(STACK[0x6B0]) >> 2) & 0x1FBBFEA7 ^ 0x1BA9AC24) - ((2 * ((LODWORD(STACK[0x6B0]) >> 2) & 0x1FBBFEA7 ^ 0x1BA9AC24)) & 0x301A540) - 1048259592) ^ a8 ^ v19 ^ (v19 >> 2) & 0x1FBBFEA7 ^ v39 ^ 0x1BA9AC24 ^ (v40 + v36) ^ (v36 >> 2) & (v10 - 0x200000))) & 0x7FB1F922;
  v42 = STACK[0x5A0];
  v43 = (2 * LODWORD(STACK[0x5A0])) & 0xA7595FE0;
  LODWORD(STACK[0x5E0]) = LODWORD(STACK[0x538]) + LODWORD(STACK[0x2C8]) + LODWORD(STACK[0x2C4]) + 1;
  v44 = STACK[0x288] & 0xD513BEAA;
  STACK[0x2A8] = v25 ^ v10 & (v25 >> 2) ^ v34;
  STACK[0x6F0] = v34 >> 2;
  LODWORD(STACK[0x650]) = v28 ^ (v38 + 1071185041);
  v45 = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x6D8]) ^ LODWORD(STACK[0x5A8]);
  LODWORD(STACK[0x6E8]) = LODWORD(STACK[0x6D8]) >> 2;
  LODWORD(STACK[0x538]) = v45 >> 2;
  v46 = LODWORD(STACK[0x4E8]) ^ 0xA7u;
  v47 = STACK[0x7D8];
  v48 = (v42 - 743657488 - v43) ^ LODWORD(STACK[0x620]) ^ 0xD5FA50DC;
  v49 = *(*(&off_1006B4E30 + v9 - 10147) + ((v9 - 5811) ^ 0x1330u) - 3);
  v50 = (2 * ((v49 ^ 0x6246813) & (LODWORD(STACK[0x4CC]) ^ 0x256F96B9) ^ STACK[0x4CC] & 0x4FFEC5B)) ^ 0x8DF0832;
  v51 = v49 ^ 0x6A046EEB ^ (v50 - ((2 * v50) & 0xD1BFD544) + 1759505059);
  LODWORD(STACK[0x504]);
  LODWORD(STACK[0x548]);
  LODWORD(STACK[0x554]);
  v52 = 4 * (LOBYTE(STACK[0x4C0]) ^ LOBYTE(STACK[0x574]));
  *(STACK[0x7B8] + v52) = LODWORD(STACK[0x59C]) ^ LODWORD(STACK[0x5A8]) ^ ((v51 & STACK[0x670]) >> LODWORD(STACK[0x700])) ^ ((v51 & STACK[0x508]) << LODWORD(STACK[0x540])) ^ 0x44C44EE3;
  *(v47 + v52) = v48 ^ *(STACK[0x708] + 904);
  return (*(STACK[0x668] + 8 * v9))(v41);
}

uint64_t sub_100131338@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W8>)
{
  LODWORD(STACK[0x2C8]) = v4;
  v7 = LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x618]) ^ (a3 - a1);
  LODWORD(STACK[0x648]) = v7;
  LODWORD(STACK[0x258]) = LODWORD(STACK[0x51C]) ^ 0x970D3DC8;
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x56C]) ^ a2;
  LODWORD(STACK[0x298]) = LODWORD(STACK[0x4D8]) ^ STACK[0x510];
  LODWORD(STACK[0x4D4]) = 0;
  LODWORD(STACK[0x56C]) = 0;
  LODWORD(STACK[0x4D8]) = 0;
  LODWORD(STACK[0x560]) = 0;
  v8 = (v4 - 1149168494) & 0x447EFAF7;
  LODWORD(STACK[0x510]) = v8;
  LODWORD(STACK[0x270]) = (v8 - 720135180) & STACK[0x6E0];
  LODWORD(STACK[0x280]) = STACK[0x6F0] & v5;
  LODWORD(STACK[0x268]) = STACK[0x6E8] & v5;
  LODWORD(STACK[0x278]) = STACK[0x538] & v5;
  v9 = STACK[0x534];
  v10 = STACK[0x438];
  v11 = LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x5F0]);
  v12 = STACK[0x290];
  v13 = (v11 - ((2 * v11) & 0xE830CBAE) - 199727657) ^ LODWORD(STACK[0x290]);
  v14 = LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x6A0]) ^ 0xF43F0C09 ^ v7;
  v15 = STACK[0x6D8];
  v16 = STACK[0x430];
  v17 = STACK[0x528];
  v18 = STACK[0x2C0];
  v19 = STACK[0x6F8];
  v20 = LODWORD(STACK[0x6D8]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x634]) ^ LODWORD(STACK[0x6B8]) ^ LODWORD(STACK[0x614]) ^ LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x5FC]) ^ 0xF31264A3 ^ (v14 - ((2 * v14) & 0xCE8522F8) + 1732415868);
  v21 = LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x6A8]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x650]) ^ (v20 - 1048259592 - ((2 * v20) & 0x8309A7F0));
  v22 = v21 ^ 0x9B99B8FB ^ (2 * ((v21 ^ 0x9AE9132) & (LODWORD(STACK[0x4E8]) ^ 0x75D271B6) ^ (v21 ^ 0x9B99B8FB) & 0x4F8A3411)) ^ 0x963369CB;
  v23 = STACK[0x3B8];
  v24 = STACK[0x554];
  v25 = STACK[0x504];
  v26 = STACK[0x700];
  LODWORD(STACK[0x2C4]) = ((v22 & STACK[0x504]) >> LODWORD(STACK[0x700])) | ((v22 & STACK[0x3B8]) << LODWORD(STACK[0x554]));
  v27 = STACK[0x520];
  v28 = STACK[0x42C];
  v29 = STACK[0x2E4];
  v30 = STACK[0x2A0];
  v31 = LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x6C0]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x6C8]) ^ (v13 + 200407341 - ((2 * v13) & 0x17E3F25A)) ^ LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x2A0]);
  v32 = v31 ^ 0x4836FE12;
  v33 = STACK[0x4CC];
  v34 = 2 * ((v31 ^ 0x5A01D7DB) & (LODWORD(STACK[0x4CC]) ^ 0x5612223A) ^ (v31 ^ 0x4836FE12) & 0x737DB483);
  v35 = v32 ^ 0xA776C3BA ^ ((v34 ^ 0x246A4102) - 2 * ((v34 ^ 0x246A4102) & 0x3541EA7A ^ v34 & 8) + 893512307);
  v36 = STACK[0x670];
  v37 = STACK[0x508];
  v38 = STACK[0x540];
  v39 = STACK[0x548];
  LODWORD(STACK[0x2B0]) = ((v35 & STACK[0x508]) << LODWORD(STACK[0x540])) ^ ((v35 & STACK[0x670]) >> LODWORD(STACK[0x548]));
  v40 = (2 * ((LODWORD(STACK[0x250]) ^ 0x2F1E88DC) & (v33 ^ 0x4B98DC0B) ^ STACK[0x250] & 0x6EF74AB2)) ^ 0x5C2C1120;
  v41 = (v40 - ((2 * v40) & 0xCE8522F8) + 1732415868) ^ v19;
  LODWORD(STACK[0x238]) = ((v41 & v36) >> v39) | ((v41 & v37) << v24);
  v42 = STACK[0x3D0];
  v43 = v10 ^ (2 * (STACK[0x3D0] & v10));
  v44 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x590]);
  LODWORD(STACK[0x250]) = v44;
  v45 = __ROR8__(v44 ^ (((v37 & v43) << v38) + ((v43 & v36) >> v39)), 26);
  LODWORD(STACK[0x244]) = ((v45 ^ 0x15A525C3FF360928uLL) >> 38) | ((v45 ^ 0xFF360928) << 26);
  LODWORD(STACK[0x230]) = ((v37 & (v15 ^ (2 * (a4 & v15)))) << v38) + ((v36 & (v15 ^ (2 * (a4 & v15)))) >> v39);
  LODWORD(STACK[0x248]) = ((v25 & (v9 ^ (2 * (a4 & v9)))) >> v39) | ((v23 & (v9 ^ (2 * (a4 & v9)))) << v38);
  v47 = 2 * ((LODWORD(STACK[0x608]) ^ 0x14216F4) & a4 ^ v33 & 0x79E99FCD);
  v48 = ((v47 ^ 0x42D32D12) - 2 * ((v47 ^ 0x42D32D12) & 0x741865DE ^ v47 & 8) - 199727657) ^ v12;
  LODWORD(STACK[0x538]) = ((v48 & v36) >> v39) ^ ((v48 & v23) << v24);
  v49 = LODWORD(STACK[0x524]) ^ (2 * (v42 & LODWORD(STACK[0x524])));
  LODWORD(STACK[0x500]) = ((v37 & v49) << v38) | ((v25 & v49) >> v26);
  LODWORD(STACK[0x708]) = (((v29 ^ (2 * (v29 & a4))) & v25) >> v26) + (((v29 ^ (2 * (v29 & a4))) & v37) << v24);
  v50 = LODWORD(STACK[0x5CC]) ^ (2 * (v42 & LODWORD(STACK[0x5CC])));
  LODWORD(STACK[0x438]) = ((v50 & v23) << v38) | ((v50 & v36) >> v39);
  v51 = LODWORD(STACK[0x434]) ^ (2 * (a4 & STACK[0x434]));
  LODWORD(STACK[0x534]) = (((v16 ^ (2 * (v42 & v16))) & v36) >> v26) + (((v16 ^ (2 * (v42 & v16))) & v23) << v24);
  LODWORD(STACK[0x434]) = ((v37 & v51) << v38) ^ ((v25 & v51) >> v39);
  LODWORD(STACK[0x6F8]) = ((v25 & (v17 ^ (2 * (a4 & v17)))) >> v26) | ((v23 & (v17 ^ (2 * (a4 & v17)))) << v38);
  v52 = LODWORD(STACK[0x5C4]) ^ (2 * (v42 & LODWORD(STACK[0x5C4])));
  LODWORD(STACK[0x430]) = ((v37 & v52) << v24) + ((v52 & v36) >> v39);
  v53 = STACK[0x4E8];
  LODWORD(STACK[0x528]) = (((v18 ^ (2 * (v18 & v42))) & v23) << v38) | (((v18 ^ (2 * (v18 & v42))) & v36) >> v26);
  v54 = v30 ^ (2 * ((v30 ^ 0x731264A3) & (v53 ^ 0x531C852C) ^ v30 & 0x6944C08B)) ^ 0x3112E5A5;
  LODWORD(STACK[0x524]) = ((v54 & v36) >> v39) ^ ((v54 & v23) << v38);
  LODWORD(STACK[0x6F0]) = ((v37 & (v27 ^ (2 * (v42 & v27)))) << v38) ^ ((v25 & (v27 ^ (2 * (v42 & v27)))) >> v26);
  v55 = (2 * (STACK[0x62C] & a4) + 200407341 - ((4 * (STACK[0x62C] & a4)) & 0x17E3F258)) ^ LODWORD(STACK[0x6C8]);
  LODWORD(STACK[0x6E8]) = ((v55 & v23) << v38) ^ ((v55 & v25) >> v39);
  v56 = LODWORD(STACK[0x6A0]) ^ (2 * (v42 & LODWORD(STACK[0x6A0])));
  v57 = ((v56 & v36) >> v26) + ((v56 & v23) << v38);
  v58 = LODWORD(STACK[0x614]) ^ (2 * (STACK[0x614] & a4));
  LODWORD(STACK[0x6E0]) = ((v58 & v36) >> v26) | ((v58 & v23) << v38);
  v59 = LODWORD(STACK[0x688]) ^ (2 * (v42 & LODWORD(STACK[0x688])));
  LODWORD(STACK[0x520]) = ((v37 & v59) << v38) | ((v25 & v59) >> v26);
  v60 = LODWORD(STACK[0x6D0]) ^ (2 * (v42 & LODWORD(STACK[0x6D0])));
  LODWORD(STACK[0x6D8]) = ((v37 & v60) << v38) | ((v60 & v36) >> v26);
  v61 = LODWORD(STACK[0x690]) ^ (2 * (a4 & STACK[0x690]));
  LODWORD(STACK[0x6D0]) = ((v23 & v61) << v24) + ((v36 & v61) >> v39);
  LODWORD(STACK[0x6C8]) = ((v25 & (v28 ^ (2 * (v42 & v28)))) >> v39) ^ (((v28 ^ (2 * (v42 & v28))) & v23) << v24);
  v62 = LODWORD(STACK[0x6C0]) ^ (2 * (v42 & LODWORD(STACK[0x6C0])));
  LODWORD(STACK[0x6C0]) = ((v37 & v62) << v38) ^ ((v62 & v36) >> v39);
  v63 = LODWORD(STACK[0x648]) ^ (2 * ((LODWORD(STACK[0x648]) ^ 0x743F0C09) & (v53 ^ 0xAE087A1) ^ STACK[0x648] & 0x30B8C206)) ^ 0x944F0C09;
  LODWORD(STACK[0x51C]) = ((v63 & v37) << v24) | ((v63 & v36) >> v26);
  v64 = LODWORD(STACK[0x6B8]) ^ (2 * (a4 & STACK[0x6B8]));
  v65 = LODWORD(STACK[0x5D0]) ^ (2 * (v42 & LODWORD(STACK[0x5D0])));
  LODWORD(STACK[0x6B8]) = ((v37 & v64) << v24) + ((v25 & v64) >> v39);
  LODWORD(STACK[0x42C]) = ((v65 & v36) >> v26) + ((v65 & v23) << v38);
  v66 = (2 * ((LODWORD(STACK[0x6B0]) ^ 0x6FA6B4F2) & (v33 ^ 0x50BE5AC6) ^ STACK[0x6B0] & 0x75D1CC7F)) ^ 0xCB0108E4;
  v67 = (v66 - 1048259592 - ((2 * v66) & 0x8309A7F0)) ^ LODWORD(STACK[0x6A8]);
  LODWORD(STACK[0x518]) = ((v37 & v67) << v24) + ((v25 & v67) >> v39);
  v68 = LODWORD(STACK[0x4FC]) ^ (2 * (v42 & LODWORD(STACK[0x4FC])));
  LODWORD(STACK[0x4FC]) = ((v68 & v23) << v38) | ((v68 & v36) >> v26);
  v69 = LODWORD(STACK[0x634]) ^ (2 * (a4 & STACK[0x634]));
  v70 = LODWORD(STACK[0x420]) ^ (2 * (v42 & LODWORD(STACK[0x420])));
  v71 = ((v23 & v69) << v24) + ((v36 & v69) >> v39);
  v72 = v33;
  v73 = STACK[0x638];
  v74 = (LODWORD(STACK[0x638]) ^ 0x62137575) & (v33 ^ 0x5E371DDC) ^ STACK[0x638] & 0x7B588B65;
  LODWORD(STACK[0x420]) = ((v37 & v70) << v38) | ((v25 & v70) >> v26);
  v75 = LODWORD(STACK[0x418]) ^ (2 * (v42 & LODWORD(STACK[0x418])));
  v76 = (((v73 ^ (2 * v74) ^ 0xA63377BF) & v25) >> v39) + (((v73 ^ (2 * v74) ^ 0xA63377BF) & v23) << v38);
  LODWORD(STACK[0x418]) = ((v37 & v75) << v24) ^ ((v75 & v36) >> v26);
  v77 = LODWORD(STACK[0x698]) ^ (2 * (a4 & STACK[0x698]));
  v78 = LODWORD(STACK[0x310]) ^ (2 * (v42 & LODWORD(STACK[0x310])));
  v79 = ((v37 & v77) << v38) + ((v25 & v77) >> v26);
  LODWORD(STACK[0x648]) = ((v78 & v36) >> v39) ^ ((v78 & v23) << v24);
  v80 = LODWORD(STACK[0x5F0]) ^ (2 * (STACK[0x5F0] & a4));
  v81 = v80 ^ LODWORD(STACK[0x4E0]);
  if ((STACK[0x5F0] & a4) == 0)
  {
    v81 = v37;
  }

  v82 = ((v81 & v80) << v24) ^ ((v80 & v36) >> v39);
  v83 = LODWORD(STACK[0x33C]) ^ (2 * (v42 & LODWORD(STACK[0x33C])));
  v84 = STACK[0x5FC];
  v85 = (LODWORD(STACK[0x5FC]) ^ 0x731264A3) & (v53 ^ 0x6156129F) ^ STACK[0x5FC] & 0x5B0E5738;
  LODWORD(STACK[0x638]) = ((v25 & v83) >> v26) | ((v83 & v23) << v38);
  LODWORD(STACK[0x6B0]) = (((v84 ^ (2 * v85) ^ 0x5516ECE3) & v36) >> v39) | (((v84 ^ (2 * v85) ^ 0x5516ECE3) & v23) << v24);
  v86 = LODWORD(STACK[0x340]) ^ (2 * (a4 & STACK[0x340]));
  LODWORD(STACK[0x634]) = ((v37 & v86) << v38) | ((v25 & v86) >> v26);
  v87 = LODWORD(STACK[0x5E0]) ^ (2 * (LODWORD(STACK[0x5E0]) & v42));
  v88 = STACK[0x650];
  v89 = (LODWORD(STACK[0x650]) ^ 0x1B99B8FB) & (v53 ^ 0x500F90A6) ^ STACK[0x650] & 0x6A57D501;
  v90 = LODWORD(STACK[0x2FC]) ^ (2 * (a4 & STACK[0x2FC]));
  v91 = (v87 & v25) >> v39;
  v92 = (v87 & v37) << v24;
  v93 = v92 ^ v91;
  if (v92 == v91)
  {
    v94 = v36;
  }

  else
  {
    v94 = ~(v90 ^ v36);
  }

  LODWORD(STACK[0x62C]) = ((v94 & v90) >> v26) ^ ((v23 & v90) << v38);
  LODWORD(STACK[0x6A8]) = (((v88 ^ (2 * v89) ^ 0x8FBA98F9) & v25) >> v26) | (((v88 ^ (2 * v89) ^ 0x8FBA98F9) & v23) << v38);
  v95 = LODWORD(STACK[0x31C]) ^ (2 * (a4 & STACK[0x31C]));
  v96 = LODWORD(STACK[0x600]) ^ (2 * (STACK[0x600] & a4));
  v97 = v24;
  LODWORD(STACK[0x620]) = ((v37 & v95) << v24) ^ ((v36 & v95) >> v39);
  LODWORD(STACK[0x6A0]) = ((v96 & v23) << v24) | ((v96 & v36) >> v26);
  v98 = LODWORD(STACK[0x5D8]) ^ (2 * (v42 & LODWORD(STACK[0x5D8])));
  LODWORD(STACK[0x618]) = ((v37 & v98) << v38) + ((v25 & v98) >> v39);
  v99 = LODWORD(STACK[0x658]) ^ (2 * (v42 & LODWORD(STACK[0x658])));
  LODWORD(STACK[0x698]) = ((v99 & v36) >> v26) ^ ((v99 & v23) << v24);
  v100 = LODWORD(STACK[0x348]) ^ (2 * (a4 & STACK[0x348]));
  LODWORD(STACK[0x614]) = ((((v37 & v100) << v38) & 0x3F76FAD ^ -(((v37 & v100) << v38) & 0x3F76FAD) ^ ((((v37 & v100) << v38) & 0xFC089052) - ((v37 & v100) << v38))) + (((v37 & v100) << v38) & 0xFC089052)) | ((v25 & v100) >> v39);
  v101 = LODWORD(STACK[0x654]) ^ (2 * (v42 & LODWORD(STACK[0x654])));
  v102 = ((v37 & v101) << v38) | ((v25 & v101) >> v39);
  v103 = LODWORD(STACK[0x320]) ^ (2 * (a4 & STACK[0x320]));
  LODWORD(STACK[0x608]) = ((v36 & v103) >> v26) ^ ((v23 & v103) << v24);
  v104 = LODWORD(STACK[0x5EC]) ^ (2 * (LODWORD(STACK[0x5EC]) & v42));
  LODWORD(STACK[0x690]) = ((v37 & v104) << v38) + ((v25 & v104) >> v26);
  v105 = LODWORD(STACK[0x5D4]) ^ (2 * (a4 & STACK[0x5D4]));
  LODWORD(STACK[0x600]) = ((v23 & v105) << v24) + ((v36 & v105) >> v39);
  v106 = LODWORD(STACK[0x640]) ^ (2 * (a4 & STACK[0x640]));
  LODWORD(STACK[0x688]) = ((v37 & v106) << v38) | ((v25 & v106) >> v26);
  v107 = LODWORD(STACK[0x324]) ^ (2 * (v42 & LODWORD(STACK[0x324])));
  LODWORD(STACK[0x5FC]) = ((v107 & v36) >> v39) ^ ((v107 & v23) << v24);
  v108 = LODWORD(STACK[0x610]) ^ (2 * ((LODWORD(STACK[0x610]) ^ 0x5937EFC4) & (v33 ^ 0x7D78B648) ^ STACK[0x610] & 0x581720F1)) ^ 0x6919AE44;
  v109 = ((v108 & v25) >> v39) + ((v108 & v23) << v24);
  v110 = LODWORD(STACK[0x5C8]) ^ (2 * (v42 & LODWORD(STACK[0x5C8])));
  LODWORD(STACK[0x5EC]) = ((v37 & v110) << v38) | ((v110 & v36) >> v26);
  v111 = LODWORD(STACK[0x680]) ^ (2 * (a4 & STACK[0x680]));
  v112 = ((v37 & v111) << v38) ^ ((v25 & v111) >> v26);
  v113 = v42;
  v114 = LODWORD(STACK[0x350]) ^ (2 * (v42 & LODWORD(STACK[0x350])));
  v115 = LODWORD(STACK[0x678]) ^ (2 * (v42 & LODWORD(STACK[0x678])));
  v116 = v23;
  LODWORD(STACK[0x5E0]) = ((v114 & v36) >> v39) ^ ((v114 & v23) << v97);
  LODWORD(STACK[0x680]) = ((v25 & v115) >> v39) + ((v115 & v23) << v38);
  v117 = LODWORD(STACK[0x354]) ^ (2 * (a4 & STACK[0x354]));
  LODWORD(STACK[0x5D8]) = ((v37 & v117) << v97) ^ ((v36 & v117) >> v26);
  v118 = LODWORD(STACK[0x630]) ^ (2 * (LODWORD(STACK[0x630]) & v42));
  v119 = LODWORD(STACK[0x4F8]) ^ (2 * (a4 & STACK[0x4F8]));
  v120 = ((v37 & v118) << v97) | ((v118 & v25) >> v26);
  v121 = LODWORD(STACK[0x5E8]) ^ (2 * (LODWORD(STACK[0x5E8]) & v42));
  LODWORD(STACK[0x5D0]) = ((v23 & v119) << v38) | ((v36 & v119) >> v39);
  LODWORD(STACK[0x678]) = ((v121 & v36) >> v39) + ((v121 & v23) << v38);
  v122 = LODWORD(STACK[0x2E8]) ^ (2 * (a4 & STACK[0x2E8]));
  LODWORD(STACK[0x5CC]) = ((v37 & v122) << v97) + ((v25 & v122) >> v26);
  v123 = LODWORD(STACK[0x660]) ^ (2 * (v42 & LODWORD(STACK[0x660])));
  v124 = ((v123 & v23) << v38) ^ ((v123 & v36) >> v26);
  v125 = LODWORD(STACK[0x5B8]) ^ (2 * (a4 & STACK[0x5B8]));
  LODWORD(STACK[0x5C4]) = ((v37 & v125) << v97) | ((v25 & v125) >> v39);
  LODWORD(STACK[0x658]) = v71;
  LODWORD(STACK[0x5C8]) = v124;
  LODWORD(STACK[0x660]) = v57;
  v126 = v124 ^ v71 ^ LODWORD(STACK[0x534]) ^ v57;
  v127 = STACK[0x574];
  v128 = STACK[0x4C0];
  v129 = LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x574]);
  v130 = v129 ^ LODWORD(STACK[0x230]);
  v131 = v126 ^ LODWORD(STACK[0x6E0]) ^ LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x6C8]) ^ LODWORD(STACK[0x6F0]) ^ LODWORD(STACK[0x6C0]);
  LODWORD(STACK[0x650]) = v79;
  LODWORD(STACK[0x5E8]) = v112;
  v132 = v131 ^ v79 ^ v112 ^ LODWORD(STACK[0x538]);
  v133 = LODWORD(STACK[0x6D8]) ^ LODWORD(STACK[0x520]);
  LODWORD(STACK[0x610]) = v102;
  LODWORD(STACK[0x5D4]) = v120;
  LODWORD(STACK[0x4F8]) = v130;
  LODWORD(STACK[0x640]) = v82;
  v134 = v133 ^ v102 ^ v120 ^ v130 ^ v82 ^ LODWORD(STACK[0x6E8]);
  LODWORD(STACK[0x654]) = v76;
  LODWORD(STACK[0x630]) = v93;
  v135 = v134 ^ v76 ^ v93 ^ LODWORD(STACK[0x708]);
  LODWORD(STACK[0x5F0]) = v109;
  v136 = v129 ^ LODWORD(STACK[0x238]);
  LODWORD(STACK[0x5B8]) = v136;
  v137 = __ROR4__(v132 ^ v135 ^ v109 ^ v136 ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x51C]), 12);
  v138 = STACK[0x59C];
  v139 = STACK[0x590];
  v140 = STACK[0x588];
  LODWORD(STACK[0x5B4]) ^= LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x59C]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x300]);
  v141 = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x328]) ^ (32 * LODWORD(STACK[0x580])) ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x2F0]) ^ v128;
  v142 = LODWORD(STACK[0x244]) ^ 0xA0569497;
  v143 = STACK[0x3CC];
  v144 = (v53 ^ 0x7A791990) & STACK[0x3E4] ^ STACK[0x3CC] & 0x40215C37;
  LODWORD(STACK[0x5A0]) = v141 + v127 - 2 * (v141 & v127);
  v952 = v143 ^ (2 * v144) ^ 0x1BA77E08;
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x288]) ^ v138 ^ LODWORD(STACK[0x2B8]) ^ v139 ^ v140 ^ LODWORD(STACK[0x2F8]) ^ STACK[0x2D8] ^ LODWORD(STACK[0x298]) ^ STACK[0x2D0] ^ LODWORD(STACK[0x270]) ^ 0xF31264A3;
  LODWORD(STACK[0x590]) = LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x268]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x278]) ^ v127 ^ v128 ^ v6 ^ STACK[0x2A8] ^ LODWORD(STACK[0x280]) ^ 0x9B99B8FB;
  v145 = v129 ^ LODWORD(STACK[0x248]);
  LODWORD(STACK[0x588]) = v129 ^ LODWORD(STACK[0x358]);
  LODWORD(STACK[0x580]) = v129 ^ LODWORD(STACK[0x308]);
  v146 = STACK[0x250];
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x334]);
  LODWORD(STACK[0x578]) = v146 ^ LODWORD(STACK[0x338]);
  v147 = LODWORD(STACK[0x368]) ^ (2 * ((v72 ^ 0x4DEC397) & STACK[0x360] ^ STACK[0x368] & 0x21B1552E)) ^ 0x1F248CD8;
  v148 = LODWORD(STACK[0x37C]) ^ (2 * (a4 & STACK[0x37C]));
  LODWORD(STACK[0x3CC]) = ((v37 & v148) << v38) | ((v25 & v148) >> v26);
  LODWORD(STACK[0x4C0]) = ((v37 & v147) << v38) | ((v25 & v147) >> v26);
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x380]) ^ (2 * (v113 & STACK[0x380]));
  v149 = LODWORD(STACK[0x3C8]) ^ (2 * ((v53 ^ 0x76ABCF82) & STACK[0x39C] ^ STACK[0x3C8] & 0x4CF38A25)) ^ 0x30009706;
  v150 = LODWORD(STACK[0x3E0]) ^ (2 * (a4 & STACK[0x3E0]));
  LODWORD(STACK[0x3C8]) = ((v25 & v150) >> v26) | ((v116 & v150) << v38);
  v151 = STACK[0x4F0];
  v152 = a4 & STACK[0x4F0];
  v927 = a4;
  LODWORD(STACK[0x2D0]) = ((v37 & v149) << v97) + ((v149 & v36) >> v39);
  LODWORD(STACK[0x2A8]) = ((v37 & (v151 ^ (2 * v152))) << v38) + ((v25 & (v151 ^ (2 * v152))) >> v39);
  v153 = v113;
  LODWORD(STACK[0x2B8]) = LODWORD(STACK[0x3C0]) ^ (2 * (v113 & STACK[0x3C0]));
  v154 = LODWORD(STACK[0x3A0]) ^ (2 * ((v72 ^ 0x2610853C) & (LODWORD(STACK[0x3A0]) ^ 0x380B58FD) ^ STACK[0x3A0] & 0x37F1385)) ^ 0xB81D79F7;
  LODWORD(STACK[0x2F0]) = ((v25 & v154) >> v26) | ((v116 & v154) << v38);
  v155 = STACK[0x3B0];
  v156 = (v72 ^ 0x4498D95F) & STACK[0x3AC] ^ STACK[0x3B0] & 0x61F74FE6;
  v157 = LODWORD(STACK[0x390]) ^ (2 * ((v53 ^ 0x172DF425) & (LODWORD(STACK[0x390]) ^ 0x3DE7837) ^ STACK[0x390] & 0x2D75B182)) ^ 0x81761833;
  v158 = LODWORD(STACK[0x3DC]) ^ (2 * (v153 & STACK[0x3DC]));
  LODWORD(STACK[0x3C0]) = ((v37 & v158) << v97) | ((v158 & v36) >> v39);
  LODWORD(STACK[0x288]) = ((v25 & v157) >> v39) + ((v157 & v116) << v38);
  v159 = LODWORD(STACK[0x388]) ^ (2 * ((v72 ^ 0x517AA950) & STACK[0x384] ^ STACK[0x388] & 0x74153FE9)) ^ 0x95DFF01;
  v160 = ((v37 & (v155 ^ (2 * v156) ^ 0xE572FC1)) << v97) ^ ((v36 & (v155 ^ (2 * v156) ^ 0xE572FC1u)) >> v26);
  LODWORD(STACK[0x258]) = ((v37 & v159) << v38) + ((v36 & v159) >> v26);
  v161 = LODWORD(STACK[0x3BC]) ^ (2 * ((v53 ^ 0x42B78B5E) & STACK[0x3B4] ^ STACK[0x3BC] & 0x78EFCEF9)) ^ 0x4C8843F6;
  LOBYTE(v112) = v97;
  LODWORD(STACK[0x2C0]) = ((v25 & v161) >> v39) | ((v161 & v116) << v97);
  v162 = LODWORD(STACK[0x43C]) ^ (2 * (a4 & STACK[0x43C]));
  LODWORD(STACK[0x3B4]) = ((v37 & v162) << v97) | ((v36 & v162) >> v39);
  v163 = LODWORD(STACK[0x414]) ^ (2 * (v153 & STACK[0x414]));
  LODWORD(STACK[0x3B0]) = ((v25 & v163) >> v26) ^ ((v163 & v116) << v38);
  v164 = *(STACK[0x400] + (STACK[0x448] & 0xFE ^ 0x45));
  v165 = *(STACK[0x3F8] + (STACK[0x460] & 0xFE ^ 0x56));
  v166 = v165 ^ (v165 >> 3) ^ ((~v165 & 0x80) >> 7) ^ 0xAC;
  v167 = *(STACK[0x400] + (STACK[0x450] & 0xFE ^ 0x8A));
  LOBYTE(v165) = *(STACK[0x400] + (STACK[0x468] & 0xFE ^ 0x4C));
  v168 = (((*(STACK[0x408] + (STACK[0x440] & 0xFE ^ 0x75)) - 29) ^ 0xFE) << 24) | (((v165 ^ ((v165 ^ 0x74) >> 2) ^ ((v165 ^ 0x74) >> 1)) ^ 0xFA) << 8) | (*(STACK[0x408] + (STACK[0x470] & 0xFE ^ 0x88)) - 29) ^ 0x74;
  v169 = v168 - 2 * (v168 & 0x6D008CDD ^ ((*(STACK[0x408] + (STACK[0x470] & 0xFE ^ 0x88)) - 29) ^ 0x74) & 9) - 312374060;
  v170 = *(STACK[0x3F8] + (STACK[0x478] & 0xFE ^ 0xB8));
  v171 = (((*(STACK[0x408] + (STACK[0x488] & 0xFE ^ 0xE)) - 29) ^ 0x3F) << 24) | ((v170 ^ (v170 >> 3) ^ ((~v170 & 0x80) >> 7) ^ 0x8C) << 16) | v166;
  v172 = v171 - 2 * (v171 & 0x45B2004D ^ v166 & 1) - 978189236;
  v173 = *(STACK[0x3F8] + (STACK[0x480] & 0xFE ^ 0x5D));
  LOBYTE(v171) = ((~v173 & 0x80) != 0) ^ (v173 >> 3);
  LOBYTE(v173) = v173 ^ 0x35 ^ ((v171 ^ 0x18) - 2 * (v171 & 7) - 57);
  v174 = ((v164 ^ ((v164 ^ 0x74) >> 2) ^ ((v164 ^ 0x74) >> 1) ^ 0xC6) << 24) | (((*(STACK[0x408] + (STACK[0x490] & 0xFE ^ 0x8F)) - 29) ^ 0x50) << 8) | (((*(STACK[0x408] + (STACK[0x498] & 0xFE ^ 0xDB)) - 29) ^ 0x38) << 16);
  v175 = (STACK[0x4A0] ^ 0x9C ^ ((STACK[0x4A0] ^ 0x9C) - ((2 * (STACK[0x4A0] ^ 0x9C)) & 0x3C) - 34) ^ *(STACK[0x558] + (STACK[0x4A0] & 0xFE ^ 0xC7)) ^ 0x65) << 8;
  v176 = (v172 ^ 0x68621A2C) & ~v175 | v175 & 0xFFFFE1FF;
  v177 = (v169 ^ 0x9E4329) & (((STACK[0x4A8] ^ 0xC4 ^ ((STACK[0x4A8] ^ 0xC4) - ((2 * (STACK[0x4A8] ^ 0xC4)) & 0x3C) - 34) ^ *(STACK[0x558] + (STACK[0x4A8] & 0xFE ^ 0x9F)) ^ 0x6F) << 16) ^ 0x537CFFD) ^ v169 & 0xFAC83002;
  v178 = (v173 << 16) | (((*(STACK[0x408] + (STACK[0x4B8] & 0xFE ^ 0x96)) - 29) ^ 0xFB) << 8) | (*(STACK[0x408] + (STACK[0x458] & 0xFE ^ 0x46)) - 29) | ((v167 ^ ((v167 ^ 0x74) >> 2) ^ ((v167 ^ 0x74) >> 1) ^ 0x57) << 24);
  v179 = v178 - 2 * (v178 & 0x2452D55D ^ (*(STACK[0x408] + (STACK[0x458] & 0xFE ^ 0x46)) - 29) & 0x15) - 1538075320;
  LOBYTE(v178) = (*(STACK[0x408] + (STACK[0x4B0] & 0xFE ^ 0x48)) - 29) ^ 0xBA;
  LODWORD(STACK[0x3AC]) = v176 ^ 0x5D427AD1;
  v180 = v176 ^ 0x5D427AD1 ^ (2 * ((v176 ^ 0x2DD01E60) & (v72 ^ 0x22425E47) ^ v176 & 0x72DC8FE));
  v181 = STACK[0x4D0];
  v182 = v178 - 2 * (v178 & 0x3F) - 86136001;
  v183 = (v182 ^ 0x52254C0) & ((v174 - ((2 * v174) & 0xCAB2D600) - 447124587) ^ 0x4D429119) ^ v182 & 0x2800573;
  LODWORD(STACK[0x39C]) = ((((v180 ^ 0x7A257B6A) & v116 | STACK[0x4D0] & 0x80B70F1B) ^ 0x80B70F1B) << v38) + (((v180 ^ 0xFA927471) & v25) >> v39);
  LODWORD(STACK[0x3A0]) = v183 ^ 0x5D2CEB47;
  v184 = v183 ^ 0x5D2CEB47 ^ (2 * ((v183 ^ 0x2A9BFBBF) & (v53 ^ 0x46152387) ^ v183 & 0x7C4D6620));
  v185 = STACK[0x4E0];
  LODWORD(STACK[0x388]) = ((((v184 ^ 0xA02C504D) & v37 | STACK[0x4E0] & 0x78984F5) ^ 0x78984F5) << v112) | (((v184 ^ 0xA7A5D4B8) & v36) >> v26);
  LODWORD(STACK[0x390]) = v179 ^ 0x5D140AA1;
  v186 = v179 ^ 0x5D140AA1 ^ (2 * ((v179 ^ 0x2452D5EA) & (v53 ^ 0xC6125FC) ^ v179 & 0x3639605B));
  LODWORD(STACK[0x380]) = ((((v186 ^ 0xB238AFA3) & v116 | v181 & 0x35EF07C) ^ 0x35EF07C) << v38) | (((v186 ^ 0xB1665FDF) & v36) >> v26);
  LODWORD(STACK[0x384]) = v177 ^ 0x67061E93;
  v187 = v177 ^ 0x67061E93 ^ (2 * ((v177 ^ 0x6D77CFFD) & (v72 ^ 0x31B15493) ^ v177 & 0x14DEC22A));
  v188 = LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x6B8]);
  LODWORD(STACK[0x4F0]) = v145;
  v189 = v188 ^ v145 ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x6B0]);
  LODWORD(STACK[0x5A8]) = v142;
  v190 = v189 ^ v142 ^ LODWORD(STACK[0x6A8]) ^ __ROR4__(v137 ^ 0x6997E629, 20) ^ 0x7E629699;
  v191 = STACK[0x570];
  LODWORD(STACK[0x37C]) = (((LODWORD(STACK[0x570]) ^ 0x4A87AD5F) - 609347989) ^ ((LODWORD(STACK[0x570]) ^ 0xFD2C730B) + 1812318271) ^ ((LODWORD(STACK[0x570]) ^ 0xA8AFAFD) - 1683799607)) + 1688637356;
  LODWORD(STACK[0x368]) = v72 ^ 0x45B98BED;
  LODWORD(STACK[0x360]) = v72 & 0x6464CD72;
  LODWORD(STACK[0x358]) = v72 & 0x66BDD095;
  LODWORD(STACK[0x354]) = v53 ^ 0x3A5845A7;
  LODWORD(STACK[0x350]) = v53 & 0x3E73990C;
  LODWORD(STACK[0x348]) = v53 ^ 0x79234D7F;
  LODWORD(STACK[0x340]) = ((((v187 ^ 0x75B7CD8F) & v37 | v185 & 0xF76B98B1) ^ 0xF76B98B1) << v112) ^ (((v187 ^ 0x82DC553E) & v25) >> v39);
  v192 = 33686018 * LODWORD(STACK[0x4C8]);
  v193 = 33686018 * LODWORD(STACK[0x4C4]);
  v194 = v192 & 0x948BB0BA ^ 0x4A45D85D;
  v195 = v193 & 0x948BB0BA ^ 0x4A45D85D;
  v196 = v37 & v195;
  v197 = v195 & v36;
  v198 = v196 << v112;
  LODWORD(STACK[0x558]) = v198 + (v197 >> v39);
  LODWORD(STACK[0x4CC]) = v198 | (v197 >> v26);
  v199 = v25 & v194;
  v200 = (v116 & v194) << v38;
  LODWORD(STACK[0x4B0]) = (v199 >> v26) | v200;
  LODWORD(STACK[0x4C4]) = (v199 >> v39) | v200;
  v201 = v192 & 0x380C3E28 ^ 0x9C061F14;
  v202 = v193 & 0x380C3E28 ^ 0x9C061F14;
  LODWORD(STACK[0x4C8]) = ((v37 & v202) << v112) + ((v202 & v36) >> v39);
  LODWORD(STACK[0x4B8]) = ((v37 & v201) << v112) + ((v36 & v201) >> v39);
  LODWORD(STACK[0x4A8]) = ((v25 & v202) >> v26) | ((v202 & v116) << v38);
  v203 = v192 & 0xF042A454 ^ 0xF821522A;
  v204 = v193 & 0xF042A454 ^ 0xF821522A;
  v205 = STACK[0x2C4];
  v206 = STACK[0x2B0];
  v207 = STACK[0x2C8];
  v208 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x2C8]) ^ 0x11D3)) + (LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x2B0])) % 0x101u - 2);
  HIDWORD(v209) = v208 ^ 0x1B5E68;
  LODWORD(v209) = v208 ^ 0x3A800000;
  v210 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x2C8]) ^ 0x10D2)) + v190 % 0x101) - 532247517;
  LODWORD(STACK[0x4A0]) = (v209 >> 23) ^ 0xC06EBFE5;
  LODWORD(STACK[0x498]) = v210 ^ 0x66A00B06;
  v211 = v192 & 0x9297BDB2 ^ 0xC94BDED9;
  LODWORD(STACK[0x490]) = ((v25 & v211) >> v26) + ((v116 & v211) << v38);
  v212 = v193 & 0x9297BDB2 ^ 0xC94BDED9;
  LODWORD(STACK[0x488]) = ((v37 & v212) << v112) | ((v212 & v36) >> v39);
  LODWORD(STACK[0x480]) = ((v25 & v212) >> v26) | ((v212 & v116) << v38);
  LODWORD(STACK[0x478]) = ((v37 & v211) << v112) + ((v36 & v211) >> v39);
  v213 = v193 & 0xAD53008C ^ 0x56A98046;
  LODWORD(STACK[0x33C]) = ((v213 ^ v185 & v213) << v112) | ((v213 & v36) >> v26);
  LODWORD(STACK[0x3BC]) = v192 & 0xAD53008C ^ 0x56A98046;
  LODWORD(STACK[0x338]) = v192 & 0xAD53008C ^ v36 ^ 0xA9567FB9;
  LODWORD(STACK[0x334]) = ((v37 & v213) << v112) | ((v25 & v213) >> v39);
  LODWORD(STACK[0x470]) = *(*(&off_1006B4E30 + v207 - 4525) + v205 % 0x101 - 1) ^ 0xE3AAF0B9;
  v214 = ((v190 ^ v206) % 0x101 - ((2 * ((v190 ^ v206) % 0x101)) & 0x12E) - 1266999657) ^ 0x4C89B1FD ^ *(*(&off_1006B4E30 + (v207 ^ 0x1754)) + (v190 ^ v206) % 0x101);
  v215 = v193 & 0x9C9D29F6 ^ 0xCE4E94FB;
  LODWORD(STACK[0x468]) = ((v25 & v215) >> v39) + ((v215 & v116) << v112);
  v216 = v192 & 0x9C9D29F6 ^ 0xCE4E94FB;
  LODWORD(STACK[0x460]) = ((v37 & v215) << v38) | ((v215 & v36) >> v39);
  v217 = v193 & 0xECCCB67C;
  v218 = v193 & 0xECCCB67C ^ 0x76665B3E;
  LODWORD(STACK[0x328]) = ((v25 & v218) >> v39) + ((v218 & v116) << v38);
  v219 = v192 & 0xECCCB67C ^ 0x76665B3E;
  v220 = v193 & 0x8C106F58 ^ 0x460837AC;
  v221 = v192 & 0x8C106F58 ^ 0x460837AC;
  v222 = v193 & 0xD746D0D0 ^ 0xEBA36868;
  v223 = v192 & 0xD746D0D0 ^ 0xEBA36868;
  v224 = v192 & 0x43DDC6CC ^ 0x21EEE366;
  v225 = v193 & 0x43DDC6CC ^ 0x21EEE366;
  v226 = (v218 & v116) << v112;
  LODWORD(STACK[0x324]) = ((v218 & v36) >> v26) + v226;
  LODWORD(STACK[0x320]) = ((v25 & v218) >> v26) | v226;
  LOBYTE(v192) = v112;
  LODWORD(STACK[0x31C]) = ((v37 & (((v217 - v218) ^ 0xFFFFFFFC) + v217)) << v112) + ((v25 & (((v217 - v218) ^ 0xFFFFFFFC) + v217)) >> v26);
  v227 = (v220 & v36) >> v39;
  LODWORD(STACK[0x310]) = ((v37 & v220) << v38) + v227;
  LODWORD(STACK[0x308]) = ((v37 & v220) << v112) + v227;
  v228 = (v25 & v225) >> v26;
  LODWORD(STACK[0x304]) = ((v37 & v225) << v38) + v228;
  v229 = (v37 & v225) << v112;
  v230 = v225 & v36;
  LODWORD(STACK[0x300]) = v229 | ((v225 & v36) >> v39);
  LODWORD(STACK[0x2FC]) = v229 + v228;
  LODWORD(STACK[0x4E8]) = (((v191 ^ 0xE478DE8) - 1620166946) ^ ((v191 ^ 0x27440A99) - 1234325075) ^ ((v191 ^ 0x9422A3D8) + 84613358)) - 1485416856;
  v231 = LODWORD(STACK[0x4B0]) ^ v160;
  v232 = LODWORD(STACK[0x558]) ^ v160;
  v233 = LODWORD(STACK[0x4CC]) ^ v160;
  v234 = LODWORD(STACK[0x4C4]) ^ v160;
  v235 = v116;
  v236 = (STACK[0x2F8] & v116) << v192;
  v237 = STACK[0x2F8] & v36;
  v238 = (v237 >> v39) ^ v236;
  LODWORD(STACK[0x2F8]) = v238;
  v239 = LODWORD(STACK[0x2F0]) ^ v238;
  LODWORD(STACK[0x2F0]) = v239 ^ v231;
  LODWORD(STACK[0x2E8]) = v239 ^ v232;
  LODWORD(STACK[0x2E4]) = v239 ^ v233;
  LODWORD(STACK[0x2D8]) = v239 ^ v234;
  v240 = LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2C0]);
  v241 = v235;
  LODWORD(STACK[0x2D0]) = v240 ^ ((v235 & v201) << v38) ^ ((v25 & v201) >> v26);
  LODWORD(STACK[0x2C8]) = v240 ^ LODWORD(STACK[0x4C8]);
  LODWORD(STACK[0x2C4]) = v240 ^ LODWORD(STACK[0x4B8]);
  LODWORD(STACK[0x2C0]) = v240 ^ LODWORD(STACK[0x4A8]);
  v242 = (v37 & v203) << v192;
  v243 = v242 + ((v25 & v203) >> v39);
  v244 = ((v36 & v203) >> v39) ^ v242;
  v245 = STACK[0x2B8] & v241;
  v246 = (STACK[0x2B8] & v36) >> v26;
  v247 = v246 ^ (v245 << v192);
  LODWORD(STACK[0x2B8]) = v247;
  v248 = LODWORD(STACK[0x2A8]) ^ v247;
  LODWORD(STACK[0x2B0]) = v248 ^ v244;
  v249 = v248 ^ ((v204 & v241) << v38);
  LODWORD(STACK[0x2A8]) = v248 ^ v243;
  LODWORD(STACK[0x2A0]) = v249 ^ ((v25 & v204) >> v26);
  v250 = v241;
  LODWORD(STACK[0x298]) = v249 ^ ((v204 & v36) >> v26);
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x4A0]) + 1 + LODWORD(STACK[0x498]);
  v251 = LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x288]);
  LODWORD(STACK[0x288]) = v251 ^ LODWORD(STACK[0x490]);
  LODWORD(STACK[0x280]) = v251 ^ LODWORD(STACK[0x488]);
  LODWORD(STACK[0x278]) = v251 ^ LODWORD(STACK[0x480]);
  LODWORD(STACK[0x270]) = v251 ^ LODWORD(STACK[0x478]);
  LODWORD(STACK[0x268]) = v214 + LODWORD(STACK[0x470]);
  v252 = LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x3C8]);
  LODWORD(STACK[0x258]) = v252 ^ LODWORD(STACK[0x468]);
  v253 = v192;
  LODWORD(STACK[0x250]) = v252 ^ ((v36 & v216) >> v26) ^ ((v37 & v216) << v38);
  LODWORD(STACK[0x248]) = v252 ^ LODWORD(STACK[0x460]);
  LODWORD(STACK[0x244]) = v252 ^ ((v241 & v216) << v192) ^ ((v25 & v216) >> v26);
  LODWORD(STACK[0x238]) = ((v36 & v219) >> v26) ^ ((v37 & v219) << v192);
  v254 = (v37 & v219) << v38;
  v255 = (v36 & v219) >> v39;
  LODWORD(STACK[0x230]) = ((v241 & v219) << v38) + v255;
  LODWORD(STACK[0x228]) = v254 | v255;
  v256 = STACK[0x510];
  LODWORD(STACK[0x220]) = ((v25 & v219) >> v39) ^ v254;
  v257 = v220 & v241;
  v258 = v25 & v220;
  v259 = v257 << v38;
  LODWORD(STACK[0x218]) = (v258 >> v39) | v259;
  LODWORD(STACK[0x210]) = v259 ^ (v258 >> v26);
  v260 = (v25 & v221) >> v26;
  LODWORD(STACK[0x208]) = v260 | ((v241 & v221) << v38);
  LODWORD(STACK[0x200]) = v246 ^ ((v245 ^ v241 & v221) << v192) ^ v260 ^ LODWORD(STACK[0x3CC]);
  v261 = v952 & v241;
  v262 = (v952 & v36) >> v39;
  v953 = ((v952 & v241) << v192) ^ v262;
  v951 = v262 ^ ((v261 ^ v222 & v241) << v192);
  v263 = v25 & v224;
  v264 = v25 & v224 ^ v237;
  v265 = v36;
  v266 = v39;
  v950 = ((v37 & v224) << v38) ^ v236 ^ (v264 >> v39) ^ LODWORD(STACK[0x3C0]);
  v267 = v230 >> v26;
  v268 = v25;
  v269 = v26;
  v270 = STACK[0x4FC];
  v949 = ((v225 & v241) << v192) ^ v267;
  v271 = (v37 & v221) << v192;
  v948 = v271 + ((v265 & v221) >> v266);
  v947 = ((v265 & v221) >> v269) ^ v271;
  v946 = STACK[0x4D0] & 0xA1AA9BCE;
  v945 = STACK[0x4D0] & 0x8ABF1FBD;
  v272 = STACK[0x500];
  v944 = STACK[0x4E0] & 0x9BA16FEE;
  v943 = STACK[0x4E0] & 0xC9B9B5BB;
  v942 = (v241 & STACK[0x3BC]) << v38;
  v941 = ((v25 & STACK[0x3BC]) >> v266) | v942;
  v940 = (v222 & v241) << v38;
  v939 = (v25 & v222) >> v269;
  v938 = (v265 & v223) >> v266;
  v937 = ((v37 & v223) << v253) + v938;
  v936 = (v37 & v223) << v38;
  v935 = (v265 & v224) >> v266;
  v934 = (v37 & v222) << v38;
  v933 = v934 + ((v222 & v265) >> v269);
  v273 = (v25 & v223) >> v266;
  v274 = STACK[0x3D0];
  v932 = (v241 & v223) << v253;
  v931 = v273 + v932;
  v930 = (v241 & v224) << v253;
  v929 = (v241 & v224) << v38;
  v928 = v929 ^ (v263 >> v269);
  v275 = STACK[0x710];
  LODWORD(STACK[0x570]) = STACK[0x710];
  LODWORD(STACK[0x4E0]) = v275;
  LODWORD(STACK[0x510]) = v256;
  v276 = STACK[0x7C0];
  v277 = STACK[0x3F8];
  v278 = *(STACK[0x3F8] + (*(STACK[0x7C0] + (((v256 - 60326729) ^ 0x398609D) & 0x6F50D0B7 ^ 0x6F50D0BFu)) ^ 0x7CLL));
  v279 = (v256 - 60326729) & 0x39873BE;
  LODWORD(STACK[0x414]) = v279;
  v280 = *(v277 + (v276[5] ^ 0x5FLL));
  LOBYTE(v263) = v278 ^ 0xF5 ^ ((~v278 & 0x80u) >> 7) ^ (((v278 ^ 0xF5) & 0xF8) >> 3);
  v281 = (*(STACK[0x408] + (v276[v279 ^ 0x1327] ^ 0xB7)) - 29) ^ 0x4A | (((*(STACK[0x408] + (v276[8] ^ 0xF4)) - 29) ^ 0x91) << 24);
  LOBYTE(v279) = ((~v280 & 0x80) != 0) ^ (v280 >> 3);
  v282 = *(v277 + (v276[4] ^ 0x3DLL));
  v283 = (~v282 >> 7) & 1 ^ (v282 >> 3);
  v284 = ((v280 ^ 0x4F ^ ((v279 ^ 0x18) - 2 * (v279 & 7) - 57)) << 16) | ((v282 ^ 0x25 ^ ((v283 ^ 0x18) - 2 * (v283 & 7) - 57)) << 24);
  v285 = *(v277 + (v276[1] ^ 0x98));
  LOBYTE(v283) = *(STACK[0x400] + (v276[14] ^ 0xCLL));
  LOBYTE(v280) = *(STACK[0x400] + (v276[3] ^ 0x82));
  v286 = (v280 ^ ((v280 ^ 0x74) >> 2) ^ ((v280 ^ 0x74) >> 1)) ^ 0x2C | ((v285 ^ (v285 >> 3) ^ ((~v285 & 0x80) >> 7) ^ 0x7A) << 16);
  v287 = *(v277 + (*v276 ^ 0xC3));
  v288 = v263 | (((v283 ^ ((v283 ^ 0x74) >> 2) ^ ((v283 ^ 0x74) >> 1)) ^ 0x1C) << 8) | (((*(STACK[0x408] + (v276[12] ^ 0x1ELL)) - 29) ^ 0xA8) << 24);
  v289 = *(v277 + (v276[13] ^ 0x88));
  v290 = v288 | ((v289 ^ (v289 >> 3) ^ ((~v289 & 0x80) >> 7) ^ 0xED) << 16);
  LOBYTE(v289) = *(STACK[0x400] + (v276[10] ^ 0x7BLL));
  v291 = v286 & 0xFFFF00FF | ((v287 ^ (v287 >> 3) ^ ((~v287 & 0x80) >> 7) ^ 0x4D) << 24) | (((*(STACK[0x408] + (v276[2] ^ 4)) - 29) ^ 0x3E) << 8);
  v292 = v291 ^ (2 * (v291 & v927));
  v293 = v284 & 0xFFFF0000 | (((*(STACK[0x408] + (v276[6] ^ 0x50)) - 29) ^ 0x56) << 8) | (*(STACK[0x408] + (v276[7] ^ 0xD1)) - 29) ^ 0x39;
  v294 = v293 ^ (2 * (v293 & v274));
  v295 = *(v277 + (v276[9] ^ 0xB6));
  LODWORD(v276) = (~v295 >> 7) & 1 ^ (v295 >> 3);
  v296 = v281 & 0xFF0000FF | (((v289 ^ ((v289 ^ 0x74) >> 2) ^ ((v289 ^ 0x74) >> 1)) ^ 0xBF) << 8) | ((v295 ^ 0x4B ^ ((v276 ^ 0x18) + (~(2 * v276) | 0xF1) - 56)) << 16);
  v297 = v296 ^ (2 * (v296 & v274));
  v298 = v290 ^ (2 * ((v290 ^ 0xB0) & STACK[0x368] ^ v290 & 0x60D61D54));
  LODWORD(STACK[0x4CC]) = 1867567287;
  v299 = LODWORD(STACK[0x37C]) + 1867567287;
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x4E8]) < 0xD37EF605;
  v300 = v299 >= 0x11;
  v301 = STACK[0x3E8];
  if (v300)
  {
    v301 = STACK[0x3AC];
  }

  v302 = v301 ^ (2 * ((v301 ^ 0x14F6A9C3) & v927 ^ LODWORD(STACK[0x360])));
  v303 = STACK[0x3F4];
  if (v300)
  {
    v303 = STACK[0x3A0];
  }

  v304 = v303 ^ (2 * ((v303 ^ 0x49C489F4) & STACK[0x354] ^ LODWORD(STACK[0x350])));
  v305 = STACK[0x3F0];
  if (v300)
  {
    v305 = STACK[0x390];
  }

  v306 = v305 ^ (2 * ((v305 ^ 0x1FFB0FDE) & v927 ^ LODWORD(STACK[0x358])));
  v307 = STACK[0x3EC];
  if (v300)
  {
    v307 = STACK[0x384];
  }

  v308 = v307 ^ (2 * ((v307 ^ 0xA71D16E) & STACK[0x348] ^ v307 & 0x437B08D8));
  v309 = LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x39C]) ^ (((v302 ^ 0xB85B6CD1) & v265) >> v269) ^ ((((v302 ^ 0x23FA033F) & v37 | v944) ^ 0x9BA16FEE) << v253) ^ (((v292 & v268) >> v269) | ((v292 & v37) << v38));
  v310 = LODWORD(STACK[0x4D4]) ^ LODWORD(STACK[0x388]) ^ (((((v304 ^ 0x22BD893E) & v250 | v946) ^ 0xA1AA9BCE) << v38) + (((v304 ^ 0x831712F0) & v268) >> v266)) ^ (((v294 & v265) >> v266) | ((v294 & v250) << v253));
  LODWORD(STACK[0x500]) = v272;
  LODWORD(STACK[0x4FC]) = v270;
  v311 = v309;
  LODWORD(STACK[0x4D8]) = v309;
  v312 = -286622991 * (v270 - v272 - v309) + ((-286622991 * (v270 - v272 - v309)) >> 16);
  v313 = v310;
  LODWORD(STACK[0x4D4]) = v310;
  v314 = LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x560]) ^ (((((v308 ^ 0x472A6445) & v37 | v943) ^ 0xC9B9B5BB) << v253) | (((v308 ^ 0x8E93D1FE) & v268) >> v269)) ^ (((v298 ^ 0x90) & v268) >> v269) ^ (((v298 ^ 0x90) & v37) << v253);
  v315 = -595545307 * (v312 ^ v310 ^ (v312 >> 8)) - ((-595545307 * (v312 ^ v310 ^ (v312 >> 8))) >> 16);
  v316 = v314;
  LODWORD(STACK[0x4C8]) = v314;
  v317 = v315 + v314 + (v315 >> 8);
  v318 = LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x380]) ^ (((((v306 ^ 0x3BA2E1D4) & v250 | v945) ^ 0x8ABF1FBD) << v38) + (((v306 ^ 0xB11DFE69) & v265) >> v266)) ^ (((v297 & v250) << v38) + ((v297 & v265) >> v266));
  LODWORD(STACK[0x4C4]) = v318;
  v319 = STACK[0x538];
  v320 = STACK[0x518];
  v321 = -286622991 * (v320 - v319 - v311) + ((-286622991 * (v320 - v319 - v311)) >> 16);
  v322 = -595545307 * (v321 ^ v313 ^ (v321 >> 8)) - ((-595545307 * (v321 ^ v313 ^ (v321 >> 8))) >> 16);
  v323 = 816022785 * (v322 + v316 + (v322 >> 8)) - ((816022785 * (v322 + v316 + (v322 >> 8))) >> 16);
  v324 = -793328525 * (v323 + v318 - (v323 >> 8)) + ((-793328525 * (v323 + v318 - (v323 >> 8))) >> 16) - ((-793328525 * (v323 + v318 - (v323 >> 8)) + ((-793328525 * (v323 + v318 - (v323 >> 8))) >> 16)) >> 8);
  v325 = ((LODWORD(STACK[0x524]) - v324) ^ v324) + 2 * ((LODWORD(STACK[0x524]) - v324) & v324);
  v326 = -793328525 * (816022785 * v317 - ((816022785 * v317) >> 16) + v318 - ((816022785 * v317 - ((816022785 * v317) >> 16)) >> 8));
  v327 = v326 + HIWORD(v326);
  LODWORD(STACK[0x560]) = v327;
  v328 = STACK[0x7B8];
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x570]) - STACK[0x7B8] + v327 - (v327 >> 8);
  LODWORD(STACK[0x56C]) = (v327 >> 8) + v328;
  v329 = v327 - ((v327 >> 8) + v328);
  LODWORD(STACK[0x558]) = v329;
  v330 = STACK[0x4F8];
  v331 = STACK[0x5A8];
  if (v329)
  {
    v332 = STACK[0x4F8];
  }

  else
  {
    v332 = STACK[0x5A8];
  }

  LODWORD(STACK[0x43C]) = v332;
  v333 = STACK[0x5B8];
  if ((v329 & 1) == 0)
  {
    v331 = STACK[0x5B8];
  }

  LODWORD(STACK[0x458]) = v331;
  v334 = STACK[0x4F0];
  if (v329)
  {
    v330 = STACK[0x4F0];
  }

  LODWORD(STACK[0x448]) = v330;
  if (v329)
  {
    v335 = v333;
  }

  else
  {
    v335 = v334;
  }

  v336 = STACK[0x534];
  v337 = STACK[0x6F8];
  if (v329)
  {
    v338 = STACK[0x6F8];
  }

  else
  {
    v338 = STACK[0x534];
  }

  LODWORD(STACK[0x4A8]) = v338;
  if (v329)
  {
    v339 = v319;
  }

  else
  {
    v339 = v337;
  }

  v340 = STACK[0x708];
  if (v329)
  {
    v341 = v336;
  }

  else
  {
    v341 = STACK[0x708];
  }

  if (v329)
  {
    v342 = STACK[0x708];
  }

  else
  {
    v342 = v319;
  }

  v343 = STACK[0x6F0];
  if (v329)
  {
    v344 = STACK[0x6F0];
  }

  else
  {
    v344 = v325;
  }

  LODWORD(STACK[0x4C0]) = v344;
  v345 = STACK[0x528];
  if (v329)
  {
    v346 = v325;
  }

  else
  {
    v346 = STACK[0x528];
  }

  v347 = STACK[0x6E8];
  if (v329)
  {
    v348 = STACK[0x528];
  }

  else
  {
    v348 = STACK[0x6E8];
  }

  LODWORD(STACK[0x440]) = v348;
  if (v329)
  {
    v349 = v347;
  }

  else
  {
    v349 = v343;
  }

  v350 = STACK[0x660];
  v351 = STACK[0x6E0];
  if (v329)
  {
    v352 = STACK[0x6E0];
  }

  else
  {
    v352 = STACK[0x660];
  }

  LODWORD(STACK[0x4F8]) = v352;
  v353 = STACK[0x6D8];
  if (v329)
  {
    v354 = v350;
  }

  else
  {
    v354 = STACK[0x6D8];
  }

  v355 = STACK[0x520];
  if (v329)
  {
    v356 = STACK[0x6D8];
  }

  else
  {
    v356 = STACK[0x520];
  }

  LODWORD(STACK[0x660]) = v356;
  if (v329)
  {
    v357 = v355;
  }

  else
  {
    v357 = v351;
  }

  v358 = STACK[0x6D0];
  v359 = STACK[0x51C];
  if (v329)
  {
    v360 = STACK[0x6D0];
  }

  else
  {
    v360 = STACK[0x51C];
  }

  LODWORD(STACK[0x520]) = v360;
  v361 = STACK[0x6C0];
  if (v329)
  {
    v362 = v359;
  }

  else
  {
    v362 = STACK[0x6C0];
  }

  v363 = STACK[0x6C8];
  if (v329)
  {
    v364 = STACK[0x6C0];
  }

  else
  {
    v364 = STACK[0x6C8];
  }

  if (v329)
  {
    v358 = STACK[0x6C8];
  }

  v365 = STACK[0x658];
  v366 = STACK[0x654];
  if (v329)
  {
    v367 = STACK[0x654];
  }

  else
  {
    v367 = STACK[0x658];
  }

  LODWORD(STACK[0x4B8]) = v367;
  v368 = STACK[0x6B8];
  if (v329)
  {
    v369 = STACK[0x6B8];
  }

  else
  {
    v369 = v366;
  }

  if (v329)
  {
    v370 = v320;
  }

  else
  {
    v370 = STACK[0x6B8];
  }

  LODWORD(STACK[0x6B8]) = v370;
  if (v329)
  {
    v320 = v365;
  }

  v371 = STACK[0x640];
  v372 = STACK[0x6B0];
  if (v329)
  {
    v373 = STACK[0x6B0];
  }

  else
  {
    v373 = STACK[0x640];
  }

  LODWORD(STACK[0x51C]) = v373;
  v374 = STACK[0x650];
  if (v329)
  {
    v375 = v371;
  }

  else
  {
    v375 = STACK[0x650];
  }

  LODWORD(STACK[0x640]) = v375;
  v376 = STACK[0x630];
  if (v329)
  {
    v377 = STACK[0x630];
  }

  else
  {
    v377 = v372;
  }

  if (v329)
  {
    v378 = v374;
  }

  else
  {
    v378 = STACK[0x630];
  }

  LODWORD(STACK[0x630]) = v378;
  v379 = STACK[0x648];
  v380 = STACK[0x62C];
  if (v329)
  {
    v381 = STACK[0x648];
  }

  else
  {
    v381 = STACK[0x62C];
  }

  LODWORD(STACK[0x478]) = v381;
  v382 = STACK[0x634];
  if (v329)
  {
    v383 = v380;
  }

  else
  {
    v383 = STACK[0x634];
  }

  LODWORD(STACK[0x518]) = v383;
  v384 = STACK[0x638];
  if (v329)
  {
    v385 = STACK[0x638];
  }

  else
  {
    v385 = v379;
  }

  LODWORD(STACK[0x648]) = v385;
  if (v329)
  {
    v386 = v382;
  }

  else
  {
    v386 = v384;
  }

  v387 = STACK[0x6A8];
  v388 = STACK[0x6A0];
  if (v329)
  {
    v389 = STACK[0x6A0];
  }

  else
  {
    v389 = STACK[0x6A8];
  }

  LODWORD(STACK[0x4B0]) = v389;
  v390 = STACK[0x610];
  if (v329)
  {
    v391 = v387;
  }

  else
  {
    v391 = STACK[0x610];
  }

  LODWORD(STACK[0x534]) = v391;
  v392 = STACK[0x698];
  if (v329)
  {
    v393 = v390;
  }

  else
  {
    v393 = STACK[0x698];
  }

  LODWORD(STACK[0x6A8]) = v393;
  if (v329)
  {
    v394 = v392;
  }

  else
  {
    v394 = v388;
  }

  LODWORD(STACK[0x6A0]) = v394;
  v395 = STACK[0x614];
  v396 = STACK[0x608];
  if (v329)
  {
    v397 = STACK[0x608];
  }

  else
  {
    v397 = STACK[0x614];
  }

  LODWORD(STACK[0x4A0]) = v397;
  v398 = STACK[0x618];
  if (v329)
  {
    v399 = v395;
  }

  else
  {
    v399 = STACK[0x618];
  }

  LODWORD(STACK[0x498]) = v399;
  v400 = STACK[0x620];
  if (v329)
  {
    v401 = v398;
  }

  else
  {
    v401 = STACK[0x620];
  }

  if (v329)
  {
    v402 = STACK[0x620];
  }

  else
  {
    v402 = v396;
  }

  LODWORD(STACK[0x608]) = v402;
  v403 = STACK[0x688];
  v404 = STACK[0x5F0];
  if (v329)
  {
    v405 = STACK[0x5F0];
  }

  else
  {
    v405 = STACK[0x688];
  }

  LODWORD(STACK[0x460]) = v405;
  v406 = STACK[0x690];
  if (v329)
  {
    v407 = v403;
  }

  else
  {
    v407 = STACK[0x690];
  }

  LODWORD(STACK[0x490]) = v407;
  v408 = STACK[0x5E8];
  if (v329)
  {
    v409 = STACK[0x5E8];
  }

  else
  {
    v409 = v404;
  }

  LODWORD(STACK[0x468]) = v409;
  if (v329)
  {
    v410 = v406;
  }

  else
  {
    v410 = v408;
  }

  v411 = STACK[0x5FC];
  v412 = STACK[0x5EC];
  if (v329)
  {
    v413 = STACK[0x5EC];
  }

  else
  {
    v413 = STACK[0x5FC];
  }

  LODWORD(STACK[0x4F0]) = v413;
  v414 = STACK[0x5E0];
  if (v329)
  {
    v415 = STACK[0x5E0];
  }

  else
  {
    v415 = v412;
  }

  v416 = STACK[0x600];
  if (v329)
  {
    v417 = STACK[0x600];
  }

  else
  {
    v411 = STACK[0x600];
    v417 = STACK[0x5E0];
  }

  v418 = STACK[0x680];
  v419 = STACK[0x5C8];
  if (v329)
  {
    v420 = STACK[0x680];
  }

  else
  {
    v420 = STACK[0x5C8];
  }

  LODWORD(STACK[0x524]) = v420;
  v421 = STACK[0x5D4];
  if (v329)
  {
    v422 = STACK[0x5D4];
  }

  else
  {
    v422 = v418;
  }

  LODWORD(STACK[0x680]) = v422;
  v423 = STACK[0x678];
  if (v329)
  {
    v424 = STACK[0x678];
  }

  else
  {
    v424 = v421;
  }

  LODWORD(STACK[0x470]) = v424;
  if (v329)
  {
    v423 = v419;
  }

  v425 = STACK[0x5D0];
  v426 = STACK[0x5CC];
  if (v329)
  {
    v427 = STACK[0x5CC];
  }

  else
  {
    v427 = STACK[0x5D0];
  }

  LODWORD(STACK[0x488]) = v427;
  v428 = STACK[0x5D8];
  if (v329)
  {
    v429 = v425;
  }

  else
  {
    v429 = STACK[0x5D8];
  }

  LODWORD(STACK[0x480]) = v429;
  v430 = STACK[0x5C4];
  if (v329)
  {
    v426 = STACK[0x5C4];
  }

  else
  {
    v428 = STACK[0x5C4];
  }

  v431 = STACK[0x5B4];
  v432 = STACK[0x590];
  if (v329)
  {
    v433 = STACK[0x590];
  }

  else
  {
    v433 = STACK[0x5B4];
  }

  LODWORD(STACK[0x528]) = v433;
  v434 = STACK[0x59C];
  if (v329)
  {
    v435 = STACK[0x59C];
  }

  else
  {
    v435 = v432;
  }

  LODWORD(STACK[0x450]) = v435;
  v436 = STACK[0x5A0];
  if (v329)
  {
    v434 = STACK[0x5A0];
  }

  LODWORD(STACK[0x59C]) = v434;
  if ((v329 & 1) == 0)
  {
    v431 = v436;
  }

  v437 = STACK[0x588];
  v438 = STACK[0x574];
  if (v329)
  {
    v439 = STACK[0x588];
  }

  else
  {
    v439 = STACK[0x574];
  }

  LODWORD(STACK[0x538]) = v439;
  v440 = STACK[0x580];
  if (v329)
  {
    v437 = STACK[0x580];
  }

  LODWORD(STACK[0x588]) = v437;
  v441 = STACK[0x578];
  if (v329)
  {
    v440 = STACK[0x578];
  }

  LODWORD(STACK[0x580]) = v440;
  if (v329)
  {
    v442 = v438;
  }

  else
  {
    v442 = v441;
  }

  v443 = (v329 & 2) == 0;
  v444 = STACK[0x43C];
  if ((v329 & 2) != 0)
  {
    v445 = v335;
  }

  else
  {
    v445 = STACK[0x43C];
  }

  LODWORD(STACK[0x5A8]) = v445;
  if ((v329 & 2) != 0)
  {
    v446 = v444;
  }

  else
  {
    v446 = v335;
  }

  v447 = STACK[0x458];
  v448 = STACK[0x448];
  if (v443)
  {
    v449 = STACK[0x458];
  }

  else
  {
    v449 = STACK[0x448];
  }

  LODWORD(STACK[0x5B8]) = v449;
  if (v443)
  {
    v450 = v339;
  }

  else
  {
    v448 = v447;
    v450 = v341;
  }

  LODWORD(STACK[0x6F8]) = v450;
  if (v443)
  {
    v451 = v341;
  }

  else
  {
    v451 = v339;
  }

  LODWORD(STACK[0x708]) = v451;
  v452 = STACK[0x4A8];
  if (v443)
  {
    v453 = v342;
  }

  else
  {
    v453 = STACK[0x4A8];
  }

  if (v443)
  {
    v454 = STACK[0x4A8];
  }

  else
  {
    v454 = v342;
  }

  if (v443)
  {
    v455 = v349;
  }

  else
  {
    v455 = v346;
  }

  LODWORD(STACK[0x6F0]) = v455;
  if (v443)
  {
    v456 = v346;
  }

  else
  {
    v456 = v349;
  }

  v457 = STACK[0x4C0];
  v458 = STACK[0x440];
  if (v443)
  {
    v459 = STACK[0x440];
  }

  else
  {
    v459 = STACK[0x4C0];
  }

  LODWORD(STACK[0x6E8]) = v459;
  if (v443)
  {
    v460 = v457;
  }

  else
  {
    v460 = v458;
  }

  if (v443)
  {
    v461 = v357;
  }

  else
  {
    v461 = v354;
  }

  LODWORD(STACK[0x6E0]) = v461;
  if (v443)
  {
    v462 = v354;
  }

  else
  {
    v462 = v357;
  }

  LODWORD(STACK[0x6D8]) = v462;
  v463 = STACK[0x4F8];
  v464 = STACK[0x660];
  if (v443)
  {
    v465 = STACK[0x660];
  }

  else
  {
    v465 = STACK[0x4F8];
  }

  if (!v443)
  {
    v463 = STACK[0x660];
  }

  LODWORD(STACK[0x660]) = v463;
  if (v443)
  {
    v466 = v362;
  }

  else
  {
    v466 = v358;
  }

  LODWORD(STACK[0x6C0]) = v466;
  if (v443)
  {
    v467 = v358;
  }

  else
  {
    v467 = v362;
  }

  LODWORD(STACK[0x6D0]) = v467;
  v468 = STACK[0x520];
  if (v443)
  {
    v469 = v364;
  }

  else
  {
    v469 = STACK[0x520];
  }

  LODWORD(STACK[0x6C8]) = v469;
  if (v443)
  {
    v364 = v468;
    v470 = v369;
  }

  else
  {
    v470 = v320;
  }

  LODWORD(STACK[0x654]) = v470;
  if (v443)
  {
    v369 = v320;
  }

  v471 = STACK[0x4B8];
  v472 = STACK[0x6B8];
  if (v443)
  {
    v473 = STACK[0x4B8];
  }

  else
  {
    v473 = STACK[0x6B8];
  }

  LODWORD(STACK[0x658]) = v473;
  if (v443)
  {
    v474 = v472;
  }

  else
  {
    v474 = v471;
  }

  LODWORD(STACK[0x6B8]) = v474;
  v475 = STACK[0x640];
  if (v443)
  {
    v476 = v377;
  }

  else
  {
    v476 = STACK[0x640];
  }

  LODWORD(STACK[0x6B0]) = v476;
  if (v443)
  {
    v477 = v475;
  }

  else
  {
    v477 = v377;
  }

  LODWORD(STACK[0x650]) = v477;
  v478 = STACK[0x51C];
  v479 = STACK[0x630];
  if (v443)
  {
    v480 = STACK[0x51C];
  }

  else
  {
    v480 = STACK[0x630];
  }

  LODWORD(STACK[0x640]) = v480;
  if (v443)
  {
    v481 = v479;
  }

  else
  {
    v481 = v478;
  }

  LODWORD(STACK[0x630]) = v481;
  v482 = STACK[0x478];
  if (v443)
  {
    v483 = v386;
  }

  else
  {
    v483 = STACK[0x478];
  }

  LODWORD(STACK[0x638]) = v483;
  if (v443)
  {
    v484 = v482;
  }

  else
  {
    v484 = v386;
  }

  LODWORD(STACK[0x62C]) = v484;
  v485 = STACK[0x518];
  v486 = STACK[0x648];
  if (v443)
  {
    v487 = STACK[0x518];
  }

  else
  {
    v487 = STACK[0x648];
  }

  LODWORD(STACK[0x634]) = v487;
  if (v443)
  {
    v488 = v486;
  }

  else
  {
    v488 = v485;
  }

  LODWORD(STACK[0x648]) = v488;
  v489 = STACK[0x4B0];
  v490 = STACK[0x6A8];
  if (v443)
  {
    v491 = STACK[0x6A8];
  }

  else
  {
    v491 = STACK[0x4B0];
  }

  LODWORD(STACK[0x698]) = v491;
  if (v443)
  {
    v492 = v489;
  }

  else
  {
    v492 = v490;
  }

  LODWORD(STACK[0x6A8]) = v492;
  v493 = STACK[0x534];
  v494 = STACK[0x6A0];
  if (v443)
  {
    v495 = STACK[0x534];
  }

  else
  {
    v495 = STACK[0x6A0];
  }

  LODWORD(STACK[0x610]) = v495;
  if (v443)
  {
    v496 = v494;
  }

  else
  {
    v496 = v493;
  }

  LODWORD(STACK[0x6A0]) = v496;
  v497 = STACK[0x4A0];
  if (v443)
  {
    v498 = STACK[0x4A0];
  }

  else
  {
    v498 = v401;
  }

  LODWORD(STACK[0x614]) = v498;
  if (v443)
  {
    v499 = v401;
  }

  else
  {
    v499 = v497;
  }

  LODWORD(STACK[0x620]) = v499;
  v500 = STACK[0x498];
  v501 = STACK[0x608];
  if (v443)
  {
    v502 = STACK[0x498];
  }

  else
  {
    v502 = STACK[0x608];
  }

  LODWORD(STACK[0x618]) = v502;
  if (v443)
  {
    v503 = v501;
  }

  else
  {
    v503 = v500;
  }

  LODWORD(STACK[0x608]) = v503;
  v504 = STACK[0x460];
  if (v443)
  {
    v505 = STACK[0x460];
  }

  else
  {
    v505 = v410;
  }

  LODWORD(STACK[0x688]) = v505;
  if (v443)
  {
    v506 = v410;
  }

  else
  {
    v506 = v504;
  }

  LODWORD(STACK[0x5E8]) = v506;
  v507 = STACK[0x490];
  v508 = STACK[0x468];
  if (v443)
  {
    v509 = STACK[0x468];
  }

  else
  {
    v509 = STACK[0x490];
  }

  LODWORD(STACK[0x5F0]) = v509;
  if (v443)
  {
    v510 = v507;
  }

  else
  {
    v510 = v508;
  }

  LODWORD(STACK[0x690]) = v510;
  if (v443)
  {
    v511 = v415;
  }

  else
  {
    v511 = v411;
  }

  LODWORD(STACK[0x5EC]) = v511;
  if (v443)
  {
    v512 = v411;
  }

  else
  {
    v512 = v415;
  }

  LODWORD(STACK[0x600]) = v512;
  v513 = STACK[0x4F0];
  if (v443)
  {
    v514 = v417;
  }

  else
  {
    v514 = STACK[0x4F0];
  }

  LODWORD(STACK[0x5E0]) = v514;
  if (v443)
  {
    v515 = v513;
  }

  else
  {
    v515 = v417;
  }

  LODWORD(STACK[0x5FC]) = v515;
  v516 = STACK[0x680];
  if (v443)
  {
    v517 = v423;
  }

  else
  {
    v517 = STACK[0x680];
  }

  LODWORD(STACK[0x678]) = v517;
  if (v443)
  {
    v518 = v516;
  }

  else
  {
    v518 = v423;
  }

  LODWORD(STACK[0x680]) = v518;
  v519 = STACK[0x524];
  v520 = STACK[0x470];
  if (v443)
  {
    v521 = STACK[0x470];
  }

  else
  {
    v521 = STACK[0x524];
  }

  LODWORD(STACK[0x5D4]) = v521;
  if (v443)
  {
    v522 = v519;
  }

  else
  {
    v522 = v520;
  }

  LODWORD(STACK[0x5C8]) = v522;
  v523 = STACK[0x488];
  if (v443)
  {
    v524 = v428;
  }

  else
  {
    v524 = STACK[0x488];
  }

  LODWORD(STACK[0x5C4]) = v524;
  if (v443)
  {
    v525 = v523;
  }

  else
  {
    v525 = v428;
  }

  LODWORD(STACK[0x5D0]) = v525;
  v526 = STACK[0x480];
  if (v443)
  {
    v527 = v426;
  }

  else
  {
    v527 = STACK[0x480];
  }

  LODWORD(STACK[0x5CC]) = v527;
  if (v443)
  {
    v528 = v526;
  }

  else
  {
    v528 = v426;
  }

  LODWORD(STACK[0x5D8]) = v528;
  v529 = STACK[0x450];
  if (v443)
  {
    v530 = STACK[0x450];
  }

  else
  {
    v530 = v431;
  }

  LODWORD(STACK[0x590]) = v530;
  if (v443)
  {
    v531 = v431;
  }

  else
  {
    v531 = v529;
  }

  LODWORD(STACK[0x5A0]) = v531;
  v532 = STACK[0x528];
  v533 = STACK[0x59C];
  if (v443)
  {
    v534 = STACK[0x528];
  }

  else
  {
    v534 = STACK[0x59C];
  }

  LODWORD(STACK[0x5B4]) = v534;
  if (v443)
  {
    v535 = v533;
  }

  else
  {
    v535 = v532;
  }

  LODWORD(STACK[0x59C]) = v535;
  v536 = STACK[0x588];
  if (v443)
  {
    v537 = v442;
  }

  else
  {
    v537 = STACK[0x588];
  }

  LODWORD(STACK[0x578]) = v537;
  if (v443)
  {
    v538 = v536;
  }

  else
  {
    v538 = v442;
  }

  LODWORD(STACK[0x588]) = v538;
  v539 = STACK[0x538];
  v540 = STACK[0x580];
  if (v443)
  {
    v541 = STACK[0x538];
  }

  else
  {
    v541 = STACK[0x580];
  }

  LODWORD(STACK[0x574]) = v541;
  if (v443)
  {
    v542 = v540;
  }

  else
  {
    v542 = v539;
  }

  LODWORD(STACK[0x580]) = v542;
  v543 = STACK[0x570];
  v544 = STACK[0x4D8];
  v545 = STACK[0x4C8];
  if (STACK[0x570])
  {
    v546 = STACK[0x4D8];
  }

  else
  {
    v546 = STACK[0x4C8];
  }

  v547 = STACK[0x4C4];
  if ((v543 & 1) == 0)
  {
    v545 = STACK[0x4C4];
  }

  v548 = STACK[0x4D4];
  if (v543)
  {
    v544 = STACK[0x4D4];
  }

  else
  {
    v547 = STACK[0x4D4];
  }

  if ((v543 & 2) != 0)
  {
    v549 = v544;
  }

  else
  {
    v549 = v545;
  }

  if ((v543 & 2) != 0)
  {
    v550 = v546;
  }

  else
  {
    v545 = v544;
    v550 = v547;
  }

  if ((v543 & 2) != 0)
  {
    v546 = v547;
  }

  v551 = LODWORD(STACK[0x2E4]) ^ v546;
  LODWORD(STACK[0x4F0]) = v446;
  v552 = v551 ^ v446;
  STACK[0x7B8] = v328 + 4 * BYTE2(v552);
  v553 = *(v328 + 4 * BYTE2(v552));
  v554 = LODWORD(STACK[0x2E8]) ^ v545 ^ LODWORD(STACK[0x5B8]);
  STACK[0x7B8] = v328;
  v555 = *(v328 + 4 * v554);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v552);
  v556 = *(v328 + 4 * HIBYTE(v552));
  STACK[0x7B8] = v328 + 4 * BYTE1(v552);
  v557 = *(v328 + 4 * BYTE1(v552));
  v558 = LODWORD(STACK[0x2F0]) ^ v549;
  LODWORD(STACK[0x4F8]) = v448;
  v559 = v558 ^ v448;
  v560 = ((v558 ^ v448) >> 8);
  STACK[0x7B8] = v328 + 4 * v560;
  v561 = *(v328 + 4 * v560);
  STACK[0x7B8] = v328 + 4 * BYTE2(v559);
  v562 = *(v328 + 4 * BYTE2(v559));
  v563 = LODWORD(STACK[0x2D8]) ^ v550 ^ LODWORD(STACK[0x5A8]);
  STACK[0x7B8] = v328 + 4 * BYTE2(v563);
  v564 = *(v328 + 4 * BYTE2(v563));
  STACK[0x7B8] = v328 + 4 * BYTE1(v563);
  HIDWORD(v565) = *(v328 + 4 * BYTE1(v563));
  LODWORD(v565) = HIDWORD(v565);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v554);
  v566 = *(v328 + 4 * HIBYTE(v554));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v559);
  v567 = v553 ^ __ROR4__(*(v328 + 4 * HIBYTE(v559)), 24);
  STACK[0x7B8] = v328 + 4 * BYTE1(v554);
  v568 = v567 ^ __ROR4__(*(v328 + 4 * BYTE1(v554)), 8);
  STACK[0x7B8] = v328 + 4 * v563;
  v569 = *(v328 + 4 * v563);
  STACK[0x7B8] = v328 + 4 * v552;
  v570 = *(v328 + 4 * v552);
  v571 = BYTE2(v554);
  STACK[0x7B8] = v328 + 4 * v571;
  v563 >>= 24;
  v572 = *(v328 + 4 * v571);
  STACK[0x7B8] = v328 + 4 * v563;
  v573 = *(v328 + 4 * v563);
  v574 = v568 ^ __ROR4__(v569, 16);
  STACK[0x7B8] = v328 + 4 * v559;
  v575 = (v565 >> 8) ^ __ROR4__(v556, 24) ^ v572 ^ __ROR4__(*(v328 + 4 * v559), 16);
  v576 = LODWORD(STACK[0x2C8]) ^ __ROR4__(v555, 16) ^ __ROR4__(v557, 8) ^ v562 ^ __ROR4__(v573, 24);
  v577 = LODWORD(STACK[0x2C0]) ^ __ROR4__(v561, 8) ^ v564 ^ __ROR4__(v566, 24) ^ __ROR4__(v570, 16);
  v578 = LODWORD(STACK[0x560]) + LODWORD(STACK[0x4E0]) - LODWORD(STACK[0x56C]);
  v579 = LODWORD(STACK[0x558]) + LODWORD(STACK[0x710]);
  LODWORD(STACK[0x710]) = v579;
  v580 = v543 - v579;
  v581 = LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x6F8]) ^ (v575 + v543 - v579);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v581);
  v582 = *(v328 + 4 * HIBYTE(v581));
  LODWORD(STACK[0x538]) = v453;
  v583 = v577 ^ v453;
  v584 = ((v577 ^ v453) >> 8);
  STACK[0x7B8] = v328 + 4 * v584;
  v585 = *(v328 + 4 * v584);
  STACK[0x7B8] = v328 + 4 * BYTE1(v581);
  v586 = *(v328 + 4 * BYTE1(v581));
  v587 = v576 ^ LODWORD(STACK[0x708]);
  v588 = (v576 ^ LOBYTE(STACK[0x708]));
  STACK[0x7B8] = v328 + 4 * (v576 ^ LOBYTE(STACK[0x708]));
  v589 = *(v328 + 4 * v588);
  LODWORD(STACK[0x534]) = v454;
  v590 = LODWORD(STACK[0x2C4]) ^ v454 ^ (v543 + v574 - v578);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v590);
  v591 = *(v328 + 4 * HIBYTE(v590));
  STACK[0x7B8] = v328 + 4 * v583;
  v592 = *(v328 + 4 * v583);
  STACK[0x7B8] = v328 + 4 * BYTE2(v587);
  v593 = *(v328 + 4 * BYTE2(v587));
  STACK[0x7B8] = v328;
  v594 = *(v328 + 4 * BYTE2(v581));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v583);
  LODWORD(STACK[0x528]) = v456;
  v595 = LODWORD(STACK[0x2B0]) ^ v456 ^ v593 ^ __ROR4__(*(v328 + 4 * HIBYTE(v583)), 24);
  STACK[0x7B8] = v328 + 4 * BYTE1(v590);
  v596 = v595 ^ __ROR4__(*(v328 + 4 * BYTE1(v590)), 8);
  STACK[0x7B8] = v328 + 4 * v581;
  v597 = v596 ^ __ROR4__(*(v328 + 4 * v581), 16);
  v598 = LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x6F0]) ^ __ROR4__(v585, 8) ^ (v589 << 16) ^ HIWORD(v589) ^ __ROR4__(v591, 24);
  v599 = BYTE2(v583);
  STACK[0x7B8] = v328 + 4 * v599;
  v600 = *(v328 + 4 * v599);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v587);
  v601 = *(v328 + 4 * HIBYTE(v587));
  v602 = BYTE1(v587);
  STACK[0x7B8] = v328 + 4 * v602;
  v603 = LODWORD(STACK[0x2A8]) ^ __ROR4__(v582, 24) ^ LODWORD(STACK[0x6E8]) ^ v600 ^ __ROR4__(*(v328 + 4 * v602), 8);
  LODWORD(STACK[0x524]) = v460;
  v604 = LODWORD(STACK[0x298]) ^ v460 ^ __ROR4__(v586, 8) ^ __ROR4__(v592, 16) ^ __ROR4__(v601, 24);
  STACK[0x7B8] = v328 + 4 * v590;
  v605 = *(v328 + 4 * v590);
  STACK[0x7B8] = v328 + 4 * BYTE2(v590);
  v606 = v598 ^ v594;
  v607 = *(v328 + 4 * BYTE2(v590));
  STACK[0x7B8] = v328 + 4 * BYTE2(v606);
  v608 = *(v328 + 4 * BYTE2(v606));
  STACK[0x7B8] = v328;
  v609 = *(v328 + 4 * BYTE1(v606));
  v610 = v604 ^ v607;
  v611 = (v604 ^ v607);
  STACK[0x7B8] = v328 + 4 * v611;
  v612 = *(v328 + 4 * v611);
  LODWORD(v565) = __ROR4__(v605, 16);
  v613 = v603 ^ v565;
  STACK[0x7B8] = v328 + 4 * BYTE2(v610);
  v614 = *(v328 + 4 * BYTE2(v610));
  STACK[0x7B8] = v328 + 4 * (v603 ^ v565);
  v615 = *(v328 + 4 * (v603 ^ v565));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v597);
  v616 = *(v328 + 4 * HIBYTE(v597));
  STACK[0x7B8] = v328 + 4 * BYTE2(v613);
  v617 = *(v328 + 4 * BYTE2(v613));
  STACK[0x7B8] = v328 + 4 * BYTE2(v597);
  v618 = *(v328 + 4 * BYTE2(v597));
  STACK[0x7B8] = v328;
  v619 = *(v328 + 4 * HIBYTE(v610));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v606);
  v620 = *(v328 + 4 * HIBYTE(v606));
  STACK[0x7B8] = v328 + 4 * v606;
  v621 = *(v328 + 4 * v606);
  STACK[0x7B8] = v328 + 4 * v597;
  v622 = *(v328 + 4 * v597);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v613);
  v623 = v618 ^ __ROR4__(v621, 16) ^ __ROR4__(*(v328 + 4 * HIBYTE(v613)), 24);
  v624 = BYTE1(v613);
  STACK[0x7B8] = v328 + 4 * v624;
  v625 = *(v328 + 4 * v624);
  v626 = BYTE1(v597);
  STACK[0x7B8] = v328 + 4 * v626;
  v627 = *(v328 + 4 * v626);
  STACK[0x7B8] = v328 + 4 * BYTE1(v610);
  v628 = v623 ^ __ROR4__(*(v328 + 4 * BYTE1(v610)), 8);
  v629 = LODWORD(STACK[0x288]) ^ LODWORD(STACK[0x6E0]) ^ v608 ^ __ROR4__(v619, 24) ^ __ROR4__(v622, 16) ^ __ROR4__(v625, 8);
  LODWORD(STACK[0x520]) = v465;
  v630 = LODWORD(STACK[0x280]) ^ v465 ^ __ROR4__(v612, 16) ^ v617 ^ __ROR4__(v620, 24) ^ __ROR4__(v627, 8);
  v631 = LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x660]) ^ __ROR4__(v609, 8) ^ v614 ^ __ROR4__(v615, 16);
  STACK[0x7B8] = v328 + 4 * v629;
  v632 = *(v328 + 4 * v629);
  v633 = v631 ^ __ROR4__(v616, 24);
  STACK[0x7B8] = v328 + 4 * BYTE2(v630);
  v634 = *(v328 + 4 * BYTE2(v630));
  STACK[0x7B8] = v328;
  v635 = *(v328 + ((v630 >> 22) & 0x3FC));
  STACK[0x7B8] = v328 + 4 * BYTE2(v629);
  v636 = *(v328 + 4 * BYTE2(v629));
  v637 = LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x6D8]) ^ (LODWORD(STACK[0x290]) + v628);
  STACK[0x7B8] = v328;
  v638 = *(v328 + 4 * BYTE2(v637));
  STACK[0x7B8] = v328 + 4 * v633;
  v639 = *(v328 + 4 * v633);
  STACK[0x7B8] = v328 + 4 * BYTE2(v633);
  v640 = *(v328 + 4 * BYTE2(v633));
  STACK[0x7B8] = v328;
  v641 = *(v328 + 4 * BYTE1(v630));
  STACK[0x7B8] = v328 + 4 * BYTE1(v629);
  v642 = *(v328 + 4 * BYTE1(v629));
  STACK[0x7B8] = v328 + 4 * BYTE1(v633);
  v643 = *(v328 + 4 * BYTE1(v633));
  STACK[0x7B8] = v328 + 4 * v630;
  LODWORD(v630) = *(v328 + 4 * v630);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v637);
  v644 = *(v328 + 4 * HIBYTE(v637));
  STACK[0x7B8] = v328 + 4 * BYTE1(v637);
  v645 = *(v328 + 4 * BYTE1(v637));
  STACK[0x7B8] = v328 + 4 * v637;
  v633 >>= 24;
  v646 = *(v328 + 4 * v637);
  STACK[0x7B8] = v328 + 4 * v633;
  v647 = HIBYTE(v629);
  v648 = *(v328 + 4 * v633);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v629);
  v649 = STACK[0x3B0];
  v650 = LODWORD(STACK[0x3B0]) ^ v953;
  LODWORD(STACK[0x51C]) = v364;
  v651 = v650 ^ v941 ^ v364 ^ v640 ^ __ROR4__(v642, 8) ^ __ROR4__(v630, 16) ^ __ROR4__(v644, 24);
  v652 = LODWORD(STACK[0x6C0]) ^ __ROR4__(v632, 16) ^ __ROR4__(v635, 24) ^ v638 ^ __ROR4__(v643, 8);
  v653 = v650 ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x6C8]) ^ v634 ^ __ROR4__(v639, 16) ^ __ROR4__(v645, 8) ^ __ROR4__(*(v328 + 4 * v647), 24);
  v654 = STACK[0x3BC];
  if (v652 != v953)
  {
    v654 = STACK[0x338];
  }

  v655 = v650 ^ v652 ^ (((v654 & STACK[0x670]) >> LODWORD(STACK[0x700])) | v942);
  v656 = v650 ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x6D0]) ^ v636 ^ __ROR4__(v641, 8) ^ __ROR4__(v646, 16) ^ __ROR4__(v648, 24);
  STACK[0x7B8] = v328 + 4 * BYTE1(v651);
  v657 = *(v328 + 4 * BYTE1(v651));
  STACK[0x7B8] = v328 + 4 * v656;
  v658 = *(v328 + 4 * v656);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v653);
  v659 = *(v328 + 4 * HIBYTE(v653));
  STACK[0x7B8] = v328 + 4 * BYTE2(v651);
  v660 = *(v328 + 4 * BYTE2(v651));
  STACK[0x7B8] = v328;
  v661 = *(v328 + 4 * BYTE2(v656));
  STACK[0x7B8] = v328 + 4 * BYTE1(v655);
  v662 = *(v328 + 4 * BYTE1(v655));
  STACK[0x7B8] = v328 + 4 * v655;
  v663 = *(v328 + 4 * v655);
  STACK[0x7B8] = v328 + 4 * BYTE2(v653);
  v664 = *(v328 + 4 * BYTE2(v653));
  STACK[0x7B8] = v328 + 4 * BYTE2(v655);
  v665 = *(v328 + 4 * BYTE2(v655));
  STACK[0x7B8] = v328 + 4 * v653;
  v655 >>= 24;
  v666 = *(v328 + 4 * v653);
  STACK[0x7B8] = v328 + 4 * v655;
  v667 = *(v328 + 4 * v655);
  STACK[0x7B8] = v328 + 4 * v651;
  v668 = *(v328 + 4 * v651);
  v669 = BYTE1(v653);
  STACK[0x7B8] = v328 + 4 * v669;
  v670 = *(v328 + 4 * v669);
  v671 = v661 ^ __ROR4__(v663, 16);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v656);
  v672 = *(v328 + 4 * HIBYTE(v656));
  v673 = BYTE1(v656);
  STACK[0x7B8] = v328 + 4 * v673;
  v674 = *(v328 + 4 * v673);
  v675 = HIBYTE(v651);
  STACK[0x7B8] = v328 + 4 * v675;
  v676 = LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x654]) ^ (LODWORD(STACK[0x268]) + (v671 ^ __ROR4__(v670, 8) ^ __ROR4__(*(v328 + 4 * v675), 24)) + 1);
  LODWORD(STACK[0x518]) = v369;
  v677 = LODWORD(STACK[0x250]) ^ v369 ^ __ROR4__(v657, 8) ^ __ROR4__(v658, 16) ^ HIBYTE(v659) ^ (v659 << 8) ^ v665;
  v678 = LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x6B8]) ^ __ROR4__(v662, 8) ^ v664 ^ __ROR4__(v668, 16) ^ __ROR4__(v672, 24);
  v679 = LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x658]) ^ v660 ^ __ROR4__(v666, 16) ^ __ROR4__(v667, 24);
  STACK[0x7B8] = v328 + 4 * BYTE1(v678);
  v680 = *(v328 + 4 * BYTE1(v678));
  v681 = v679 ^ __ROR4__(v674, 8);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v676);
  v682 = *(v328 + 4 * HIBYTE(v676));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v681);
  v683 = *(v328 + 4 * HIBYTE(v681));
  STACK[0x7B8] = v328 + 4 * BYTE2(v676);
  HIDWORD(v684) = v683;
  LODWORD(v684) = v683;
  v685 = *(v328 + 4 * BYTE2(v676));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v678);
  v686 = *(v328 + 4 * HIBYTE(v678));
  v687 = (v684 >> 24) ^ __ROR4__(v680, 8) ^ v685;
  STACK[0x7B8] = v328 + 4 * v678;
  v688 = *(v328 + 4 * v678);
  STACK[0x7B8] = v328 + 4 * BYTE2(v681);
  v689 = *(v328 + 4 * BYTE2(v681));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v677);
  v690 = v689 ^ __ROR4__(v688, 16) ^ __ROR4__(*(v328 + 4 * HIBYTE(v677)), 24);
  STACK[0x7B8] = v328 + 4 * v681;
  v691 = *(v328 + 4 * v681);
  STACK[0x7B8] = v328 + 4 * BYTE1(v677);
  HIDWORD(v684) = v691;
  LODWORD(v684) = v691;
  v692 = *(v328 + 4 * BYTE1(v677));
  STACK[0x7B8] = v328 + 4 * v677;
  v693 = *(v328 + 4 * v677);
  v694 = (v684 >> 16) ^ __ROR4__(v682, 24) ^ __ROR4__(v692, 8);
  STACK[0x7B8] = v328 + 4 * BYTE1(v676);
  v695 = *(v328 + 4 * BYTE1(v676));
  v696 = v687 ^ __ROR4__(v693, 16);
  v697 = BYTE2(v678);
  STACK[0x7B8] = v328 + 4 * v697;
  v698 = *(v328 + 4 * v697);
  v699 = v690 ^ __ROR4__(v695, 8);
  STACK[0x7B8] = v328 + 4 * v676;
  v700 = *(v328 + 4 * v676);
  LODWORD(STACK[0x56C]) = v694 ^ v698;
  v701 = BYTE2(v677);
  STACK[0x7B8] = v328 + 4 * v701;
  v702 = *(v328 + 4 * v701);
  v703 = BYTE1(v681);
  STACK[0x7B8] = v328 + 4 * v703;
  LODWORD(STACK[0x4E0]) = v578;
  v704 = v578 ^ v543 ^ __ROR4__(v686, 24) ^ __ROR4__(v700, 16) ^ v702;
  LODWORD(v684) = __ROR4__(*(v328 + 4 * v703), 8);
  LODWORD(STACK[0x560]) = v704 ^ v684;
  LODWORD(STACK[0x4D4]) = v696 + v580;
  v705 = LODWORD(STACK[0x3C8]) ^ v649;
  v706 = v705 ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x6B0]) ^ (v696 + v580);
  STACK[0x7B8] = v328 + 4 * BYTE2(v706);
  v707 = v705 ^ LODWORD(STACK[0x220]) ^ LODWORD(STACK[0x630]) ^ v694 ^ v698;
  v708 = v705 ^ LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x650]) ^ v704 ^ v684;
  v709 = *(v328 + 4 * BYTE2(v706));
  STACK[0x7B8] = v328;
  v710 = *(v328 + 4 * BYTE1(v707));
  STACK[0x7B8] = v328 + 4 * BYTE2(v708);
  v711 = v705 ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x640]) ^ v699;
  LODWORD(STACK[0x4B0]) = v699;
  v712 = *(v328 + 4 * BYTE2(v708));
  STACK[0x7B8] = v328;
  v713 = *(v328 + 4 * v707);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v711);
  v714 = *(v328 + 4 * HIBYTE(v711));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v708);
  v715 = *(v328 + 4 * HIBYTE(v708));
  v716 = BYTE2(v707);
  STACK[0x7B8] = v328 + 4 * BYTE2(v707);
  v707 >>= 24;
  v717 = *(v328 + 4 * v716);
  STACK[0x7B8] = v328;
  v718 = *(v328 + 4 * v711);
  STACK[0x7B8] = v328 + 4 * v707;
  v719 = *(v328 + 4 * v707);
  STACK[0x7B8] = v328 + 4 * BYTE1(v708);
  v720 = *(v328 + 4 * BYTE1(v708));
  STACK[0x7B8] = v328 + 4 * BYTE1(v711);
  v721 = *(v328 + 4 * BYTE1(v711));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v706);
  v722 = *(v328 + 4 * HIBYTE(v706));
  STACK[0x7B8] = v328 + 4 * v708;
  v723 = *(v328 + 4 * v708);
  v724 = BYTE2(v711);
  STACK[0x7B8] = v328 + 4 * v724;
  v725 = *(v328 + 4 * v724);
  STACK[0x7B8] = v328 + 4 * v706;
  v726 = *(v328 + 4 * v706);
  v727 = BYTE1(v706);
  STACK[0x7B8] = v328 + 4 * BYTE1(v706);
  v728 = LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x2B8]);
  v729 = v728 ^ LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x610]) ^ v712 ^ __ROR4__(v719, 24) ^ __ROR4__(v721, 8) ^ __ROR4__(v726, 16);
  v730 = v728 ^ v948 ^ LODWORD(STACK[0x6A8]) ^ __ROR4__(v713, 16) ^ __ROR4__(v715, 24) ^ v725;
  v731 = v728 ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x698]) ^ v717 ^ __ROR4__(v718, 16) ^ __ROR4__(v720, 8);
  v732 = LODWORD(STACK[0x200]) ^ LODWORD(STACK[0x6A0]) ^ v709 ^ __ROR4__(v710, 8) ^ __ROR4__(v714, 24);
  v733 = *(v328 + 4 * v727);
  v734 = v732 ^ __ROR4__(v723, 16);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v734);
  v735 = *(v328 + 4 * HIBYTE(v734));
  LODWORD(v684) = __ROR4__(v722, 24);
  v736 = v731 ^ v684;
  STACK[0x7B8] = v328 + 4 * (v731 ^ v684);
  v737 = *(v328 + 4 * (v731 ^ v684));
  v738 = v730 ^ __ROR4__(v733, 8);
  STACK[0x7B8] = v328 + 4 * BYTE2(v738);
  v739 = *(v328 + 4 * BYTE2(v738));
  STACK[0x7B8] = v328 + 4 * BYTE1(v729);
  v740 = *(v328 + 4 * BYTE1(v729));
  STACK[0x7B8] = v328 + 4 * BYTE2(v736);
  v741 = *(v328 + 4 * BYTE2(v736));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v729);
  v742 = *(v328 + 4 * HIBYTE(v729));
  STACK[0x7B8] = v328 + 4 * BYTE1(v738);
  v743 = *(v328 + 4 * BYTE1(v738));
  v744 = v738;
  STACK[0x7B8] = v328 + 4 * v738;
  v738 >>= 24;
  v745 = *(v328 + 4 * v744);
  STACK[0x7B8] = v328 + 4 * v738;
  v746 = *(v328 + 4 * v738);
  STACK[0x7B8] = v328 + 4 * BYTE1(v734);
  v747 = *(v328 + 4 * BYTE1(v734));
  STACK[0x7B8] = v328 + 4 * BYTE2(v734);
  v748 = *(v328 + 4 * BYTE2(v734));
  STACK[0x7B8] = v328 + 4 * v729;
  v749 = *(v328 + 4 * v729);
  STACK[0x7B8] = v328 + 4 * v734;
  v750 = *(v328 + 4 * v734);
  v751 = BYTE2(v729);
  STACK[0x7B8] = v328 + 4 * v751;
  v752 = *(v328 + 4 * v751);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v736);
  v753 = *(v328 + 4 * HIBYTE(v736));
  v754 = BYTE1(v736);
  STACK[0x7B8] = v328 + 4 * BYTE1(v736);
  v755 = LODWORD(STACK[0x3B4]) ^ v953;
  v756 = v755 ^ v939 ^ v940 ^ LODWORD(STACK[0x5E8]) ^ __ROR4__(v737, 16) ^ v739 ^ __ROR4__(v742, 24) ^ __ROR4__(v747, 8);
  v757 = v755 ^ v937 ^ LODWORD(STACK[0x690]) ^ __ROR4__(v746, 24) ^ v748 ^ __ROR4__(v749, 16) ^ __ROR4__(*(v328 + 4 * v754), 8);
  v758 = v755 ^ v938 ^ v936 ^ LODWORD(STACK[0x5F0]) ^ __ROR4__(v743, 8);
  v759 = LODWORD(STACK[0x3B4]) ^ v939 ^ v951 ^ LODWORD(STACK[0x688]) ^ __ROR4__(v735, 24) ^ __ROR4__(v740, 8) ^ v741 ^ __ROR4__(v745, 16);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v756);
  v760 = *(v328 + 4 * HIBYTE(v756));
  STACK[0x7B8] = v328 + 4 * HIBYTE(v759);
  v761 = *(v328 + 4 * HIBYTE(v759));
  STACK[0x7B8] = v328 + 4 * BYTE2(v756);
  v762 = *(v328 + 4 * BYTE2(v756));
  STACK[0x7B8] = v328;
  v763 = *(v328 + 4 * v757);
  v764 = v758 ^ __ROR4__(v750, 16);
  STACK[0x7B8] = v328 + 4 * BYTE1(v759);
  v765 = *(v328 + 4 * BYTE1(v759));
  v766 = v764 ^ v752;
  STACK[0x7B8] = v328 + 4 * v756;
  v767 = *(v328 + 4 * v756);
  LODWORD(v684) = __ROR4__(v753, 24);
  v768 = v766 ^ v684;
  v769 = (v766 ^ v684);
  STACK[0x7B8] = v328 + 4 * v769;
  v770 = *(v328 + 4 * v769);
  STACK[0x7B8] = v328 + 4 * HIBYTE(v757);
  v771 = *(v328 + 4 * HIBYTE(v757));
  v772 = BYTE1(v756);
  STACK[0x7B8] = v328 + 4 * v772;
  v773 = *(v328 + 4 * v772);
  STACK[0x7B8] = v328 + 4 * BYTE1(v768);
  v774 = *(v328 + 4 * BYTE1(v768));
  STACK[0x7B8] = v328 + 4 * BYTE2(v757);
  v775 = *(v328 + 4 * BYTE2(v757));
  v776 = BYTE1(v757);
  STACK[0x7B8] = v328 + 4 * v776;
  v777 = *(v328 + 4 * v776);
  STACK[0x7B8] = v328 + 4 * BYTE2(v768);
  v778 = *(v328 + 4 * BYTE2(v768));
  STACK[0x7B8] = v328 + 4 * v759;
  v779 = *(v328 + 4 * v759);
  v780 = BYTE2(v759);
  STACK[0x7B8] = v328 + 4 * v780;
  v768 >>= 24;
  v781 = *(v328 + 4 * v780);
  STACK[0x7B8] = v328 + 4 * v768;
  v782 = *(v328 + 4 * v768);
  STACK[0x7B8] = v328;
  v783 = v950 ^ LODWORD(STACK[0x5C8]) ^ __ROR4__(v760, 24) ^ __ROR4__(v765, 8) ^ __ROR4__(v770, 16) ^ v775;
  v784 = LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x2F8]);
  v785 = v784 ^ v949 ^ LODWORD(STACK[0x5D4]) ^ __ROR4__(v761, 24) ^ __ROR4__(v763, 16) ^ __ROR4__(v773, 8) ^ v778;
  LODWORD(STACK[0x4D8]) = v784 ^ v935;
  v786 = v784 ^ v935 ^ v930 ^ LODWORD(STACK[0x678]) ^ v762 ^ __ROR4__(v777, 8) ^ __ROR4__(v779, 16) ^ __ROR4__(v782, 24);
  v787 = v784 ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x680]) ^ __ROR4__(v767, 16) ^ __ROR4__(v771, 24);
  LODWORD(v684) = __ROR4__(v774, 8);
  v788 = v787 ^ v684 ^ v781;
  v789 = STACK[0x7D8];
  v790 = *(STACK[0x7D8] + 4 * BYTE1(v783)) ^ __ROR4__(*(STACK[0x7D8] + 4 * (v787 ^ v684 ^ v781)), 8);
  HIDWORD(v684) = *(STACK[0x7D8] + 4 * BYTE2(v783));
  LODWORD(v684) = HIDWORD(v684);
  v791 = v684 >> 24;
  HIDWORD(v684) = *(STACK[0x7D8] + 4 * HIBYTE(v786));
  LODWORD(v684) = HIDWORD(v684);
  STACK[0x7D8] += 4 * HIBYTE(v783);
  v792 = *(v789 + 4 * HIBYTE(v783));
  v793 = ((v684 >> 16) ^ -(v684 >> 16) ^ (v791 - ((v684 >> 16) ^ v791))) + v791;
  STACK[0x7D8] = v789 + 4 * BYTE2(v786);
  v794 = *(v789 + 4 * BYTE2(v786));
  STACK[0x7D8] = v789 + 4 * BYTE1(v785);
  v795 = *(v789 + 4 * BYTE1(v785));
  STACK[0x7D8] = v789 + 4 * v785;
  v796 = *(v789 + 4 * v785);
  STACK[0x7D8] = v789 + 4 * HIBYTE(v788);
  v797 = *(v789 + 4 * HIBYTE(v788));
  v798 = v790 ^ __ROR4__(*(v789 + 4 * HIBYTE(v785)), 16);
  STACK[0x7D8] = v789 + 4 * BYTE2(v785);
  v799 = *(v789 + 4 * BYTE2(v785));
  STACK[0x7D8] = v789 + 4 * BYTE2(v788);
  v800 = *(v789 + 4 * BYTE2(v788));
  STACK[0x7D8] = v789 + 4 * v783;
  v801 = *(v789 + 4 * v783);
  STACK[0x7D8] = v789 + 4 * BYTE1(v788);
  LODWORD(STACK[0x4C8]) = *(v789 + 4 * BYTE1(v788));
  v802 = BYTE1(v786);
  STACK[0x7D8] = v789 + 4 * BYTE1(v786);
  v803 = *(v789 + 4 * v786);
  LODWORD(STACK[0x4C4]) = *(v789 + 4 * v802);
  STACK[0x7D8] = v789;
  v804 = LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x3E0]);
  LODWORD(STACK[0x4C0]) = v804 ^ 0xB9749BDC ^ LODWORD(STACK[0x5A0]) ^ __ROR4__(v803, 8) ^ __ROR4__(v792, 16) ^ v795 ^ __ROR4__(v800, 24);
  LODWORD(STACK[0x4B8]) = v804 ^ LODWORD(STACK[0x590]) ^ __ROR4__(v794, 24) ^ __ROR4__(__ROR4__(v798, 19) ^ 0x91A172EE, 13);
  LODWORD(v789) = v705 ^ LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x638]) ^ v699;
  v805 = STACK[0x7B8];
  STACK[0x7B8] += 4 * BYTE3(v789);
  v806 = v705 ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x560]);
  v807 = *(v805 + 4 * BYTE3(v789));
  STACK[0x7B8] = v805 + 4 * BYTE2(v806);
  v808 = v705 ^ LODWORD(STACK[0x228]) ^ LODWORD(STACK[0x62C]) ^ LODWORD(STACK[0x56C]);
  v809 = *(v805 + 4 * BYTE2(v806));
  STACK[0x7B8] = v805;
  v810 = *(v805 + 4 * BYTE1(v789));
  STACK[0x7B8] = v805 + 4 * BYTE1(v808);
  v811 = *(v805 + 4 * BYTE1(v808));
  v812 = v804 ^ 0xB9749BDC ^ LODWORD(STACK[0x5B4]) ^ __ROR4__(v797, 16);
  STACK[0x7B8] = v805 + 4 * v808;
  v813 = *(v805 + 4 * v808);
  STACK[0x7B8] = v805 + 4 * BYTE2(v808);
  v814 = STACK[0x4D4];
  v815 = v705 ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x634]) ^ LODWORD(STACK[0x4D4]);
  v816 = *(v805 + 4 * BYTE2(v808));
  STACK[0x7B8] = v805;
  v817 = *(v805 + 4 * BYTE1(v815));
  STACK[0x7B8] = v805 + 4 * BYTE2(v789);
  v818 = *(v805 + 4 * BYTE2(v789));
  v819 = v812 ^ __ROR4__(v799, 24) ^ __ROR4__(v801, 8);
  STACK[0x7B8] = v805 + 4 * HIBYTE(v815);
  v820 = *(v805 + 4 * HIBYTE(v815));
  STACK[0x7B8] = v805 + 4 * BYTE2(v815);
  v821 = *(v805 + 4 * BYTE2(v815));
  v822 = v804 ^ 0xB9749BDC ^ LODWORD(STACK[0x59C]) ^ v793;
  STACK[0x7B8] = v805 + 4 * BYTE1(v806);
  v823 = *(v805 + 4 * BYTE1(v806));
  STACK[0x7B8] = v805 + 4 * HIBYTE(v806);
  v824 = *(v805 + 4 * HIBYTE(v806));
  STACK[0x7B8] = v805 + 4 * v815;
  v825 = *(v805 + 4 * v815);
  STACK[0x7B8] = v805 + 4 * v806;
  v808 >>= 24;
  v826 = *(v805 + 4 * v806);
  STACK[0x7B8] = v805 + 4 * v808;
  v827 = *(v805 + 4 * v808);
  v828 = v789;
  STACK[0x7B8] = v805 + 4 * v789;
  v829 = v728 ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x608]) ^ v809;
  LODWORD(v789) = v728 ^ LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x620]) ^ __ROR4__(v813, 16) ^ __ROR4__(v817, 8) ^ v818 ^ __ROR4__(v824, 24);
  v830 = v728 ^ v947 ^ LODWORD(STACK[0x618]) ^ __ROR4__(v807, 24);
  v831 = *(v805 + 4 * v828);
  v832 = v728 ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x614]) ^ v816 ^ __ROR4__(v820, 24) ^ __ROR4__(v823, 8) ^ HIWORD(v831);
  STACK[0x7B8] = v805 + 4 * BYTE1(v832);
  v833 = *(v805 + 4 * BYTE1(v832));
  v834 = v832 ^ (v831 << 16);
  STACK[0x7B8] = v805 + 4 * v834;
  v835 = *(v805 + 4 * v834);
  STACK[0x7B8] = v805 + 4 * BYTE2(v789);
  v836 = *(v805 + 4 * BYTE2(v789));
  STACK[0x7B8] = v805 + 4 * BYTE3(v789);
  v837 = *(v805 + 4 * BYTE3(v789));
  v838 = v830 ^ __ROR4__(v811, 8) ^ v821 ^ __ROR4__(v826, 16);
  STACK[0x7B8] = v805 + 4 * v838;
  v839 = *(v805 + 4 * v838);
  STACK[0x7B8] = v805 + 4 * HIBYTE(v838);
  v840 = *(v805 + 4 * HIBYTE(v838));
  v841 = v829 ^ __ROR4__(v810, 8) ^ __ROR4__(v825, 16);
  STACK[0x7B8] = v805 + 4 * v789;
  v842 = *(v805 + 4 * v789);
  v843 = v841 ^ __ROR4__(v827, 24);
  STACK[0x7B8] = v805 + 4 * BYTE2(v843);
  v844 = *(v805 + 4 * BYTE2(v843));
  v845 = v822 ^ __ROR4__(v796, 8);
  STACK[0x7B8] = v805 + 4 * HIBYTE(v834);
  v846 = *(v805 + 4 * HIBYTE(v834));
  v847 = BYTE2(v834);
  STACK[0x7B8] = v805 + 4 * v847;
  v848 = *(v805 + 4 * v847);
  STACK[0x7B8] = v805 + 4 * v843;
  v849 = *(v805 + 4 * v843);
  LODWORD(v789) = BYTE1(v789);
  STACK[0x7B8] = v805 + 4 * v789;
  LODWORD(v789) = *(v805 + 4 * v789);
  STACK[0x7B8] = v805 + 4 * BYTE1(v838);
  v850 = *(v805 + 4 * BYTE1(v838));
  v851 = BYTE1(v843);
  STACK[0x7B8] = v805 + 4 * BYTE1(v843);
  v843 >>= 24;
  v852 = *(v805 + 4 * v851);
  STACK[0x7B8] = v805 + 4 * v843;
  v853 = *(v805 + 4 * v843);
  v854 = BYTE2(v838);
  STACK[0x7B8] = v805 + 4 * v854;
  v855 = v755 ^ v933 ^ LODWORD(STACK[0x5E0]) ^ __ROR4__(v835, 16) ^ v836 ^ __ROR4__(v850, 8) ^ __ROR4__(v853, 24);
  v856 = v755 ^ v931 ^ LODWORD(STACK[0x5FC]) ^ __ROR4__(v840, 24) ^ __ROR4__(v842, 16) ^ v848 ^ __ROR4__(v852, 8);
  v857 = v755 ^ v938 ^ v932 ^ LODWORD(STACK[0x5EC]) ^ __ROR4__(v839, 16) ^ v844 ^ __ROR4__(v846, 24) ^ __ROR4__(v789, 8);
  v858 = *(v805 + 4 * v854);
  STACK[0x7B8] = v805 + 4 * HIBYTE(v855);
  v859 = *(v805 + 4 * HIBYTE(v855));
  LODWORD(v789) = v755 ^ v939 ^ v934 ^ LODWORD(STACK[0x600]) ^ __ROR4__(v833, 8);
  STACK[0x7B8] = v805 + 4 * BYTE1(v855);
  v860 = *(v805 + 4 * BYTE1(v855));
  STACK[0x7B8] = v805 + 4 * v857;
  v861 = *(v805 + 4 * v857);
  STACK[0x7B8] = v805 + 4 * BYTE1(v856);
  v862 = *(v805 + 4 * BYTE1(v856));
  v863 = v789 ^ __ROR4__(v837, 24) ^ __ROR4__(v849, 16) ^ v858;
  STACK[0x7B8] = v805 + 4 * HIBYTE(v857);
  LODWORD(v789) = *(v805 + 4 * HIBYTE(v857));
  STACK[0x7B8] = v805 + 4 * BYTE2(v855);
  v864 = *(v805 + 4 * BYTE2(v855));
  STACK[0x7B8] = v805 + 4 * BYTE2(v857);
  v865 = *(v805 + 4 * BYTE2(v857));
  STACK[0x7B8] = v805 + 4 * HIBYTE(v863);
  v866 = v784 ^ v928 ^ LODWORD(STACK[0x5D8]) ^ __ROR4__(*(v805 + 4 * HIBYTE(v863)), 24);
  STACK[0x7B8] = v805 + 4 * BYTE2(v863);
  v867 = *(v805 + 4 * BYTE2(v863));
  STACK[0x7B8] = v805 + 4 * HIBYTE(v856);
  v868 = *(v805 + 4 * HIBYTE(v856));
  STACK[0x7B8] = v805 + 4 * v863;
  v869 = *(v805 + 4 * v863);
  STACK[0x7B8] = v805 + 4 * BYTE2(v856);
  v870 = *(v805 + 4 * BYTE2(v856));
  STACK[0x7B8] = v805 + 4 * v856;
  v871 = *(v805 + 4 * v856);
  STACK[0x7B8] = v805 + 4 * v855;
  v872 = v866 ^ v870 ^ __ROR4__(*(v805 + 4 * v855), 16);
  v873 = v784 ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x5CC]) ^ __ROR4__(v789, 24) ^ v864 ^ __ROR4__(v871, 16);
  STACK[0x7B8] = v805 + 4 * BYTE1(v857);
  v874 = *(v805 + 4 * BYTE1(v857));
  STACK[0x7B8] = v805 + 4 * BYTE1(v863);
  v875 = v873 ^ __ROR4__(*(v805 + 4 * BYTE1(v863)), 8);
  v876 = v784 ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x5C4]) ^ __ROR4__(v859, 24) ^ __ROR4__(v861, 16) ^ __ROR4__(v862, 8);
  v877 = LODWORD(STACK[0x4D8]) ^ v929 ^ LODWORD(STACK[0x5D0]) ^ __ROR4__(v860, 8) ^ v865 ^ __ROR4__(v868, 24);
  v878 = v819 ^ LODWORD(STACK[0x4C4]);
  v879 = ((1366141904 - LODWORD(STACK[0x560])) ^ LODWORD(STACK[0x4B0])) - v814;
  v880 = v845 ^ LODWORD(STACK[0x4C8]);
  v881 = LODWORD(STACK[0x4B8]) ^ 0x2E0016D7;
  v882 = STACK[0x710];
  v883 = STACK[0x4C0];
  if (STACK[0x710])
  {
    v884 = STACK[0x4C0];
  }

  if (v882)
  {
    v886 = LODWORD(STACK[0x4B8]) ^ 0x2E0016D7;
  }

  else
  {
    v885 = LODWORD(STACK[0x4B8]) ^ 0x2E0016D7;
    v886 = v845 ^ LODWORD(STACK[0x4C8]);
  }

  if ((v882 & 1) == 0)
  {
    v887 = STACK[0x4C0];
  }

  v888 = v876 ^ v867;
  STACK[0x7B8] = v805;
  v889 = v877 ^ __ROR4__(v869, 16);
  v890 = STACK[0x7D8];
  STACK[0x7D8] += 4 * HIBYTE(v889);
  v891 = *(v890 + 4 * HIBYTE(v889));
  STACK[0x7D8] = v890 + 4 * BYTE2(v888);
  v892 = *(v890 + 4 * BYTE2(v888));
  STACK[0x7D8] = v890 + 4 * v875;
  v893 = *(v890 + 4 * v875);
  v894 = LODWORD(STACK[0x56C]) ^ 0xD61B357F ^ (v879 + 1413488376);
  STACK[0x7D8] = v890 + 4 * BYTE1(v889);
  v895 = *(v890 + 4 * BYTE1(v889));
  STACK[0x7D8] = v890 + 4 * BYTE2(v875);
  v896 = *(v890 + 4 * BYTE2(v875));
  STACK[0x7D8] = v890 + 4 * BYTE1(v875);
  v897 = v872 ^ __ROR4__(v874, 8);
  v898 = *(v890 + 4 * BYTE1(v875));
  STACK[0x7D8] = v890 + 4 * HIBYTE(v897);
  v899 = *(v890 + 4 * HIBYTE(v897));
  STACK[0x7D8] = v890 + 4 * BYTE1(v888);
  v900 = *(v890 + 4 * BYTE1(v888));
  STACK[0x7D8] = v890 + 4 * BYTE2(v897);
  v901 = *(v890 + 4 * BYTE2(v897));
  STACK[0x7D8] = v890 + 4 * HIBYTE(v888);
  v902 = v894 + 1748382426;
  v903 = v804 ^ 0x8E1C6926;
  v904 = v903 ^ LODWORD(STACK[0x580]) ^ v902 ^ __ROR4__(*(v890 + 4 * BYTE2(v889)), 24);
  v905 = v903 ^ LODWORD(STACK[0x574]) ^ v902 ^ __ROR4__(*(v890 + 4 * v889), 8) ^ *(v890 + 4 * BYTE1(v897));
  v906 = v903 ^ LODWORD(STACK[0x578]) ^ v902 ^ __ROR4__(*(v890 + 4 * v897), 8) ^ __ROR4__(v891, 16) ^ __ROR4__(v896, 24) ^ v900;
  v907 = v904 ^ __ROR4__(*(v890 + 4 * v888), 8) ^ v898 ^ __ROR4__(v899, 16);
  v908 = v903 ^ LODWORD(STACK[0x588]) ^ v902 ^ __ROR4__(v893, 8) ^ v895 ^ __ROR4__(v901, 24) ^ __ROR4__(*(v890 + 4 * HIBYTE(v888)), 16);
  v909 = v905 ^ __ROR4__(*(v890 + 4 * HIBYTE(v875)), 16) ^ __ROR4__(v892, 24);
  if (v882)
  {
    v910 = v908;
  }

  else
  {
    v910 = v907;
  }

  if ((v882 & 1) == 0)
  {
    v906 = v909;
  }

  STACK[0x7D8] = v890;
  if ((v882 & 2) != 0)
  {
    v911 = v910;
  }

  else
  {
    v911 = v906;
  }

  v912 = v911 ^ v902;
  v913 = (((LODWORD(STACK[0x4CC]) ^ 0x8473B422) + 2072792030) ^ ((LODWORD(STACK[0x4CC]) ^ 0x7B6C56CD) - 2070697677) ^ ((LODWORD(STACK[0x4CC]) ^ 0x904F3258) + 1873857960)) - 956806179;
  v914 = (v913 ^ 0xA85CF2E0) & (2 * (v913 & 0xA85884EA)) ^ v913 & 0xA85884EA;
  v915 = ((2 * (v913 ^ 0xA84CFAE0)) ^ 0x28FC14) & (v913 ^ 0xA84CFAE0) ^ (2 * (v913 ^ 0xA84CFAE0)) & 0x147E0A;
  v916 = (v915 ^ 0x1FC00) & (4 * v914) ^ v914;
  v917 = ((4 * (v915 ^ 0x14020A)) ^ 0x51F828) & (v915 ^ 0x14020A) ^ (4 * (v915 ^ 0x14020A)) & 0x147E08;
  v918 = (v917 ^ 0x107800) & (16 * v916) ^ v916;
  v919 = ((16 * (v917 ^ 0x40602)) ^ 0x147E0A0) & (v917 ^ 0x40602) ^ (16 * (v917 ^ 0x40602)) & 0x147E00;
  v920 = v918 ^ 0x147E0A ^ (v919 ^ 0x4600A) & (v918 << 8);
  v921 = v913 ^ (2 * (((v920 << 16) ^ 0x7E0A0000) & ((((v919 ^ 0x101E0A) << 8) ^ 0x147E0000) & (v919 ^ 0x101E0A) ^ ((v919 ^ 0x101E0A) << 8) & 0x140000) ^ v920 ^ ((v920 << 16) & 0x140000 | 0x5E02)));
  v922 = (((v921 ^ 0x34D70F77) + 201909446) ^ ((v921 ^ 0x26566D6E) + 512329437) ^ ((v921 ^ 0xBAF1A6E3) - 2110894766)) + 1120913084;
  v300 = v922 >= LODWORD(STACK[0x4E8]);
  v923 = LODWORD(STACK[0x4D0]) ^ (v922 < 0xD37EF605);
  v924 = !v300;
  if (v923)
  {
    v925 = STACK[0x4D0];
  }

  else
  {
    v925 = v924;
  }

  return (*(STACK[0x668] + 8 * ((112 * (v925 ^ 1)) ^ LODWORD(STACK[0x510]))))(v912);
}