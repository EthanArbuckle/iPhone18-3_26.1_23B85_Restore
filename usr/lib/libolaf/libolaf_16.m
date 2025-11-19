void GNSS_HL_Data_Bases_Clear()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v65 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 48);
  *(v1 + 96) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  bzero(*(v0 + 32), 0xD38uLL);
  bzero(__src, 0x18D8uLL);
  v2 = 0;
  *(&__src[3] + 4) = 0x500000002;
  do
  {
    v3 = &__src[v2];
    *(v3 + 15) = 0;
    *(v3 + 64) = 0;
    *(v3 + 68) = 0uLL;
    *(v3 + 84) = 0uLL;
    v2 += 3;
    *(v3 + 97) = 0;
  }

  while (v2 != 246);
  *(&__src[397] + 1) = 0;
  bzero(&__src[249] + 12, 0x85DuLL);
  *(&__src[387] + 5) = 0u;
  *(&__src[385] + 12) = 0u;
  *(&__src[386] + 12) = 0u;
  *(&__src[383] + 12) = 0u;
  *(&__src[384] + 12) = 0u;
  *(&__src[388] + 8) = 0u;
  *(&__src[389] + 8) = 0u;
  *(&__src[390] + 8) = 0u;
  *(&__src[391] + 8) = 0u;
  *(&__src[392] + 8) = 0u;
  *(&__src[393] + 8) = 0u;
  *(&__src[394] + 8) = 0u;
  *(&__src[395] + 8) = 0u;
  *(&__src[396] + 7) = 0u;
  v4 = *(v0 + 40);
  *v4 = __src[0];
  *(v4 + 48) = __src[3];
  *(v4 + 32) = __src[2];
  *(v4 + 16) = __src[1];
  *(v4 + 52) = *(&__src[3] + 4);
  memcpy((v4 + 60), &__src[3] + 12, 0x18A4uLL);
  bzero(*(v0 + 64), 0x260uLL);
  memset(__src, 0, 357);
  memset(v64, 0, sizeof(v64));
  memset(v63, 0, sizeof(v63));
  v5 = *(v0 + 72);
  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v5 + 52) = 0x500000002;
  *(v5 + 60) = 0;
  *(v5 + 66) = 0;
  memcpy((v5 + 74), __src, 0x165uLL);
  *(v5 + 431) = 0u;
  *(v5 + 447) = 0u;
  *(v5 + 463) = 0u;
  *(v5 + 479) = 0u;
  *(v5 + 495) = 0u;
  *(v5 + 511) = 0u;
  *(v5 + 527) = 0u;
  *(v5 + 543) = 0u;
  *(v5 + 559) = 0u;
  *(v5 + 575) = 0u;
  *(v5 + 591) = 0u;
  *(v5 + 607) = 0u;
  *(v5 + 623) = 0u;
  *(v5 + 639) = 0u;
  *(v5 + 654) = 0;
  v6 = *&v64[16];
  *(v5 + 658) = *v64;
  *(v5 + 674) = v6;
  v7 = *&v64[32];
  v8 = *&v64[48];
  v9 = *&v64[80];
  *(v5 + 722) = *&v64[64];
  *(v5 + 738) = v9;
  *(v5 + 690) = v7;
  *(v5 + 706) = v8;
  v10 = *&v64[96];
  v11 = *&v64[112];
  v12 = *&v64[144];
  *(v5 + 786) = *&v64[128];
  *(v5 + 802) = v12;
  *(v5 + 754) = v10;
  *(v5 + 770) = v11;
  v13 = *&v64[160];
  v14 = *&v64[176];
  v15 = *&v64[192];
  v16 = *&v64[208];
  *(v5 + 882) = *&v64[224];
  *(v5 + 850) = v15;
  *(v5 + 866) = v16;
  *(v5 + 818) = v13;
  *(v5 + 834) = v14;
  v17 = *&v63[112];
  *(v5 + 986) = *&v63[96];
  *(v5 + 1002) = v17;
  *(v5 + 1015) = *&v63[125];
  v18 = *&v63[48];
  *(v5 + 922) = *&v63[32];
  *(v5 + 938) = v18;
  v19 = *&v63[80];
  *(v5 + 954) = *&v63[64];
  *(v5 + 970) = v19;
  v20 = *&v63[16];
  *(v5 + 890) = *v63;
  *(v5 + 906) = v20;
  *(v5 + 1116) = 0u;
  *(v5 + 1087) = 0u;
  *(v5 + 1103) = 0u;
  *(v5 + 1055) = 0u;
  *(v5 + 1071) = 0u;
  *(v5 + 1023) = 0u;
  *(v5 + 1039) = 0u;
  *(v5 + 1132) = 1;
  *(v5 + 1134) = 1;
  *(v5 + 1135) = 0u;
  *(v5 + 1151) = 0u;
  *(v5 + 1167) = 0u;
  *(v5 + 1183) = 0u;
  *(v5 + 1199) = 0u;
  *(v5 + 1215) = 0u;
  *(v5 + 1231) = 0u;
  *(v5 + 1247) = 0u;
  *(v5 + 1263) = 0u;
  *(v5 + 1279) = 0u;
  *(v5 + 1295) = 0u;
  *(v5 + 1311) = 0u;
  *(v5 + 1327) = 0u;
  *(v5 + 1343) = 0u;
  *(v5 + 1359) = 0u;
  *(v5 + 1375) = 0u;
  *(v5 + 1391) = 0u;
  *(v5 + 1407) = 0u;
  *(v5 + 1423) = 0u;
  *(v5 + 1439) = 0u;
  *(v5 + 1455) = 0u;
  *(v5 + 1471) = 0u;
  *(v5 + 1487) = 0u;
  *(v5 + 1503) = 0u;
  *(v5 + 1519) = 0u;
  *(v5 + 1535) = 0u;
  *(v5 + 1551) = 0u;
  *(v5 + 1564) = 0u;
  v21 = 28608;
  v22 = __src;
  bzero(__src, 0x6FC0uLL);
  do
  {
    *(v22 + 46) = 0;
    *v22 = 0uLL;
    v22[1] = 0uLL;
    v22[2] = 0uLL;
    v22[3] = 0uLL;
    v22[4] = 0uLL;
    v22[5] = 0uLL;
    v22[6] = 0uLL;
    v22[7] = 0uLL;
    v22[8] = 0uLL;
    v22[9] = 0uLL;
    v22[10] = 0uLL;
    *(v22 + 173) = 0;
    v22 += 12;
    v21 -= 192;
  }

  while (v21);
  memset(&__src[1788], 0, 24);
  memcpy(*(v0 + 96), __src, 0x6FD8uLL);
  bzero(__src, 0x1D28uLL);
  for (i = 0; i != 2688; i += 56)
  {
    v24 = __src + i;
    *(v24 + 4) = 0;
    *(v24 + 20) = 0;
    *(v24 + 44) = 0;
    *(v24 + 26) = 0;
    *(v24 + 10) = 0;
    *(v24 + 7) = 0;
    *(v24 + 8) = 0;
    *(v24 + 36) = 0;
  }

  for (j = 2720; j != 4448; j += 36)
  {
    v26 = __src + j;
    v26[32] = 0;
    *v26 = 0uLL;
    *(v26 + 1) = 0uLL;
  }

  v27 = -960;
  do
  {
    v28 = __src + v27;
    *(v28 + 2712) = 0;
    *(v28 + 338) = 0uLL;
    v27 += 20;
  }

  while (v27);
  v29 = 0xFFFFFFFFFFFFF80;
  do
  {
    *&__src[v29 + 466] = 0;
    *(&__src[v29 + 466] + 6) = 0;
    ++v29;
  }

  while (v29 * 16);
  LOWORD(__src[466]) = 0;
  DWORD1(__src[466]) = 0;
  memcpy(*(v0 + 16), __src, 0x1D28uLL);
  bzero(__src, 0xA80uLL);
  for (k = 0; k != 2688; k += 56)
  {
    v31 = __src + k;
    *v31 = 0;
    v31[52] = 0;
  }

  memset(&__src[168], 0, 24);
  memcpy(*(v0 + 24), __src, 0xA98uLL);
  bzero(__src, 0x9A30uLL);
  v32 = 0xFFFFFFFFFFFFFA0;
  do
  {
    v33 = (&__src[v32 + 797] + 8);
    *(v33 + 46) = 0uLL;
    v33[1] = 0uLL;
    v33[2] = 0uLL;
    *v33 = 0uLL;
    v32 += 4;
  }

  while (v32 * 16);
  bzero(&__src[797] + 8, 0xA20uLL);
  v34 = (&__src[960] + 4);
  v35 = 864;
  do
  {
    *(v34 - 12) = 0;
    *(v34 - 2) = 0;
    v34[1] = 0;
    v34[2] = 0;
    *v34 = 0;
    v34 = (v34 + 36);
    v35 -= 36;
  }

  while (v35);
  *(&__src[1013] + 1) = 0;
  LOWORD(__src[1014]) = 0;
  DWORD1(__src[1014]) = 0;
  BYTE8(__src[1014]) = 0;
  HIDWORD(__src[1014]) = 0;
  LOBYTE(__src[1015]) = 0;
  *(&__src[1015] + 8) = 0u;
  *(&__src[1016] + 8) = 0u;
  *(&__src[1017] + 8) = 0u;
  BYTE8(__src[1018]) = 0;
  memset(&__src[1019], 0, 432);
  v36 = -3168;
  do
  {
    v37 = (__src + v36);
    v37[1248] = 0uLL;
    v37[1247] = 0uLL;
    v37[1246] = 0uLL;
    v37[1245] = 0uLL;
    v37[1244] = 0uLL;
    *(&__src[1248] + v36 + 15) = 0;
    v36 += 88;
  }

  while (v36);
  v38 = -3168;
  do
  {
    v39 = (__src + v38);
    v39[1446] = 0uLL;
    v39[1445] = 0uLL;
    v39[1444] = 0uLL;
    v39[1443] = 0uLL;
    v39[1442] = 0uLL;
    *(&__src[1446] + v38 + 15) = 0;
    v38 += 88;
  }

  while (v38);
  v40 = -1296;
  do
  {
    v41 = __src + v40;
    *(v41 + 1524) = 0uLL;
    *(v41 + 1523) = 0uLL;
    *(&__src[1524] + v40 + 15) = 0;
    v40 += 36;
  }

  while (v40);
  *(&__src[1523] + 6) = 0;
  *&__src[1523] = 0;
  memset(&__src[1524], 0, 30);
  memset(&__src[1526], 0, 104);
  v42 = &__src[1532] + 8;
  v43 = 3700;
  do
  {
    *(v42 + 24) = 0;
    *v42 = 0;
    *(v42 + 1) = 0;
    *(v42 + 15) = 0;
    *(v42 + 24) = 0uLL;
    *(v42 + 40) = 0uLL;
    *(v42 + 56) = 0uLL;
    *(v42 + 72) = 0uLL;
    *(v42 + 86) = 0;
    v42 += 100;
    v43 -= 100;
  }

  while (v43);
  v44 = &__src[1763] + 12;
  v45 = 3700;
  do
  {
    *(v44 + 24) = 0;
    *v44 = 0;
    *(v44 + 1) = 0;
    *(v44 + 15) = 0;
    *(v44 + 24) = 0uLL;
    *(v44 + 40) = 0uLL;
    *(v44 + 56) = 0uLL;
    *(v44 + 72) = 0uLL;
    *(v44 + 86) = 0;
    v44 += 100;
    v45 -= 100;
  }

  while (v45);
  *(&__src[2466] + 1) = 0;
  bzero(&__src[1995], 0x747uLL);
  bzero(&__src[2111] + 8, 0x1629uLL);
  memcpy(*(v0 + 56), __src, 0x9A30uLL);
  *v64 = 0;
  v64[25] = 0;
  memset(__src, 0, 51);
  memset(v63, 0, 24);
  memset(v61, 0, sizeof(v61));
  *&v64[4] = 0;
  *&v64[17] = 0;
  *&v64[12] = 0;
  *(&__src[3] + 12) = 0u;
  *(&__src[3] + 3) = 0u;
  v46 = *(v0 + 80);
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *(v46 + 20) = 0x500000002;
  *(v46 + 32) = *&v64[4];
  *(v46 + 46) = *&v64[18];
  *(v46 + 70) = 0u;
  *(v46 + 86) = 0u;
  *(v46 + 102) = 0u;
  *(v46 + 118) = 0u;
  *(v46 + 134) = 0u;
  *(v46 + 150) = 0u;
  *(v46 + 166) = 0u;
  *(v46 + 182) = 0u;
  *(v46 + 198) = 0u;
  *(v46 + 214) = 0u;
  *(v46 + 230) = 0u;
  *(v46 + 246) = 0u;
  *(v46 + 54) = 0u;
  *(v46 + 262) = 0u;
  *(v46 + 278) = 0u;
  *(v46 + 294) = 0u;
  *(v46 + 310) = 0u;
  *(v46 + 326) = 0u;
  *(v46 + 342) = 0u;
  *(v46 + 358) = 0u;
  *(v46 + 373) = 0u;
  v47 = __src[3];
  *(v46 + 421) = __src[2];
  *(v46 + 437) = v47;
  *(v46 + 449) = *(&__src[3] + 12);
  v48 = __src[1];
  *(v46 + 389) = __src[0];
  *(v46 + 405) = v48;
  bzero((v46 + 465), 0x5F9uLL);
  *(v46 + 1994) = *v63;
  *(v46 + 2010) = *&v63[16];
  *(v46 + 2018) = *v61;
  *(v46 + 2034) = *&v61[16];
  *v64 = 0;
  v64[25] = 0;
  memset(__src, 0, 76);
  memset(v63, 0, 24);
  *&v64[4] = 0;
  *&v64[17] = 0;
  *&v64[12] = 0;
  v49 = *(v0 + 88);
  *v49 = 0;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0;
  *(v49 + 20) = 0x500000002;
  *(v49 + 32) = *&v64[4];
  *(v49 + 46) = *&v64[18];
  *(v49 + 70) = 0u;
  *(v49 + 86) = 0u;
  *(v49 + 102) = 0u;
  *(v49 + 118) = 0u;
  *(v49 + 134) = 0u;
  *(v49 + 150) = 0u;
  *(v49 + 166) = 0u;
  *(v49 + 182) = 0u;
  *(v49 + 198) = 0u;
  *(v49 + 214) = 0u;
  *(v49 + 230) = 0u;
  *(v49 + 246) = 0u;
  *(v49 + 54) = 0u;
  *(v49 + 262) = 0u;
  *(v49 + 278) = 0u;
  *(v49 + 294) = 0u;
  *(v49 + 310) = 0u;
  *(v49 + 326) = 0u;
  *(v49 + 342) = 0u;
  *(v49 + 358) = 0u;
  *(v49 + 373) = 0u;
  v50 = __src[3];
  *(v49 + 421) = __src[2];
  *(v49 + 437) = v50;
  *(v49 + 449) = *(&__src[3] + 12);
  v51 = __src[1];
  *(v49 + 389) = __src[0];
  *(v49 + 405) = v51;
  bzero((v49 + 465), 0x5F9uLL);
  *(v49 + 1994) = *v63;
  *(v49 + 2010) = *&v63[16];
  *(v49 + 2018) = 0u;
  *(v49 + 2034) = 0;
  memset(v64, 0, 35);
  LODWORD(__src[0]) = 0;
  WORD2(__src[0]) = 0;
  bzero(__src + 6, 0x48CuLL);
  v52 = *(v0 + 104);
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  v53 = *&v64[16];
  *(v52 + 18) = *v64;
  *(v52 + 34) = v53;
  *(v52 + 49) = *&v64[31];
  *(v52 + 53) = 0;
  *(v52 + 54) = 0;
  memcpy((v52 + 58), __src, 0x492uLL);
  bzero((v52 + 1228), 0x754uLL);
  bzero(*(v0 + 112), 0xD820uLL);
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v54))
  {
    v55 = *(v0 + 128);
    *(v55 + 288) = 0;
    *(v55 + 256) = 0u;
    *(v55 + 272) = 0u;
    *(v55 + 224) = 0u;
    *(v55 + 240) = 0u;
    *(v55 + 192) = 0u;
    *(v55 + 208) = 0u;
    *(v55 + 160) = 0u;
    *(v55 + 176) = 0u;
    *(v55 + 128) = 0u;
    *(v55 + 144) = 0u;
    *(v55 + 96) = 0u;
    *(v55 + 112) = 0u;
    *(v55 + 64) = 0u;
    *(v55 + 80) = 0u;
    *(v55 + 32) = 0u;
    *(v55 + 48) = 0u;
    *v55 = 0u;
    *(v55 + 16) = 0u;
    bzero(__src, 0x2068uLL);
    v56 = &__src[75] + 8;
    v57 = 6912;
    do
    {
      *v56 = 0;
      v56[4] = 0;
      *(v56 + 8) = 0uLL;
      *(v56 + 24) = 0uLL;
      *(v56 + 40) = 0uLL;
      *(v56 + 56) = 0uLL;
      *(v56 + 72) = 0uLL;
      *(v56 + 88) = 0uLL;
      *(v56 + 97) = 0uLL;
      *(v56 + 15) = 0;
      *(v56 + 16) = 0;
      *(v56 + 135) = 0;
      v56 += 144;
      v57 -= 144;
    }

    while (v57);
    *(&__src[517] + 4) = 0u;
    *(&__src[515] + 8) = 0u;
    *(&__src[516] + 8) = 0u;
    *(&__src[513] + 8) = 0u;
    *(&__src[514] + 8) = 0u;
    *(&__src[511] + 8) = 0u;
    *(&__src[512] + 8) = 0u;
    *(&__src[509] + 8) = 0u;
    *(&__src[510] + 8) = 0u;
    *(&__src[507] + 8) = 0u;
    *(&__src[508] + 8) = 0u;
    memcpy(*(v0 + 120), __src, 0x2064uLL);
    v58 = *(v0 + 136);
    *(v58 + 91) = 0u;
    v58[4] = 0u;
    v58[5] = 0u;
    v58[2] = 0u;
    v58[3] = 0u;
    *v58 = 0u;
    v58[1] = 0u;
    bzero(*(v0 + 144), 0x3F8uLL);
    bzero(*(v0 + 152), 0x2804uLL);
  }

  bzero(*(v0 + 304), 0x18C8uLL);
  v59 = *(v0 + 312);
  v60 = *MEMORY[0x29EDCA608];

  bzero(v59, 0x30A8uLL);
}

void *GNSS_HL_Data_Bases_Init()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v17 = *MEMORY[0x29EDCA608];
  *(*(v0 + 8) + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess(*(v0 + 56));
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  v3 = *v1;
  LODWORD(v1) = v1[4];
  *v2 = 0;
  *(v2 + 4) = 0;
  *(v2 + 8) = v3;
  *(v2 + 12) = v1;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = -1;
  *(v2 + 52) = -1;
  *(v2 + 66) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 92) = 0;
  *(v2 + 54) = 0;
  *(v2 + 61) = 0;
  *(v2 + 96) = 0;
  *(v2 + 100) = v3;
  v4 = *(v0 + 32);
  *(v4 + 176) = -25187;
  *&v5 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v5 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  *(v4 + 144) = v5;
  *(v4 + 160) = v5;
  *(v4 + 112) = v5;
  *(v4 + 128) = v5;
  *(v4 + 80) = v5;
  *(v4 + 96) = v5;
  *(v4 + 48) = v5;
  *(v4 + 64) = v5;
  *(v4 + 16) = v5;
  *(v4 + 32) = v5;
  *v4 = v5;
  memset_pattern16((v4 + 178), &memset_pattern, 0x164uLL);
  *(v4 + 534) = 0;
  Init_DB_Sys_Status(*(v0 + 72));
  Init_DB_Nav_Soln(*(v0 + 48), *(v0 + 72), *(v0 + 88));
  memcpy(*(v0 + 80), *(v0 + 88), 0x800uLL);
  Init_DB_Acq_Aid_Table(*(v0 + 88), *(v0 + 56), *(v0 + 40));
  inited = Init_DB_Sensor(*(v0 + 112));
  result = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(inited);
  if (result)
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 136);
    *v9 = *(v8 + 948);
    *(v9 + 6) = *(v8 + 43);
    *(v9 + 4) = g_Enable_LCD_Debug;
    GN_GPS_Get_LibVersion((v9 + 7));
    v10 = *(v0 + 120);
    bzero(v15, 0x2068uLL);
    v11 = &v15[75] + 8;
    v12 = 6912;
    do
    {
      *v11 = 0;
      v11[4] = 0;
      *(v11 + 8) = 0uLL;
      *(v11 + 24) = 0uLL;
      *(v11 + 40) = 0uLL;
      *(v11 + 56) = 0uLL;
      *(v11 + 72) = 0uLL;
      *(v11 + 88) = 0uLL;
      *(v11 + 97) = 0uLL;
      *(v11 + 15) = 0;
      *(v11 + 16) = 0;
      *(v11 + 135) = 0;
      v11 += 144;
      v12 -= 144;
    }

    while (v12);
    *(&v15[517] + 4) = 0u;
    *(&v15[515] + 8) = 0u;
    *(&v15[516] + 8) = 0u;
    *(&v15[513] + 8) = 0u;
    *(&v15[514] + 8) = 0u;
    *(&v15[511] + 8) = 0u;
    *(&v15[512] + 8) = 0u;
    *(&v15[509] + 8) = 0u;
    *(&v15[510] + 8) = 0u;
    *(&v15[507] + 8) = 0u;
    *(&v15[508] + 8) = 0u;
    memcpy(v10, v15, 0x2064uLL);
    Init_DB_SA_Assistance(*(v0 + 328), *(v0 + 128));
    v13 = *(v0 + 144);
    memset(v16, 0, sizeof(v16));
    memset(v15, 0, 410);
    memset(&v15[519], 0, 48);
    memcpy(v13, v16, 0x138uLL);
    *(v13 + 312) = 0u;
    *(v13 + 328) = 0u;
    *(v13 + 344) = 0u;
    *(v13 + 360) = 0u;
    *(v13 + 376) = 0u;
    *(v13 + 392) = 0u;
    *(v13 + 408) = 0u;
    *(v13 + 424) = 0u;
    *(v13 + 440) = 0u;
    *(v13 + 456) = 0u;
    *(v13 + 472) = 0u;
    *(v13 + 488) = 0u;
    *(v13 + 504) = 0u;
    *(v13 + 520) = 0u;
    *(v13 + 536) = 0u;
    result = memcpy((v13 + 552), v15, 0x19AuLL);
    *(v13 + 962) = *(&v15[520] + 8);
    *(v13 + 978) = *(&v15[521] + 1);
    *(v13 + 986) = v15[519];
    *(v13 + 1002) = *&v15[520];
    *(v13 + 1010) = 0;
    *(v13 + 1014) = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_HL_Data_Bases_Init_NV()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v14 = *MEMORY[0x29EDCA608];
  *(*(v0 + 8) + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess_NV(*(v0 + 56));
  Init_DB_Time_Sync_NV(*(v0 + 8), *(v0 + 48), *(v0 + 16));
  v1 = *(v0 + 32);
  *(v1 + 176) = -25187;
  *&v2 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v2 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  *(v1 + 144) = v2;
  *(v1 + 160) = v2;
  *(v1 + 112) = v2;
  *(v1 + 128) = v2;
  *(v1 + 80) = v2;
  *(v1 + 96) = v2;
  *(v1 + 48) = v2;
  *(v1 + 64) = v2;
  *(v1 + 16) = v2;
  *(v1 + 32) = v2;
  *v1 = v2;
  memset_pattern16((v1 + 178), &memset_pattern, 0x164uLL);
  *(v1 + 534) = 0;
  Init_DB_Sys_Status_NV(*(v0 + 48), *(v0 + 72));
  Init_DB_Nav_Soln(*(v0 + 48), *(v0 + 72), *(v0 + 88));
  memcpy(*(v0 + 80), *(v0 + 88), 0x800uLL);
  Init_DB_Acq_Aid_Table(*(v0 + 88), *(v0 + 56), *(v0 + 40));
  inited = Init_DB_Sensor(*(v0 + 112));
  result = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(inited);
  if (result)
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 136);
    *v6 = *(v5 + 948);
    *(v6 + 6) = *(v5 + 43);
    *(v6 + 4) = g_Enable_LCD_Debug;
    GN_GPS_Get_LibVersion((v6 + 7));
    v7 = *(v0 + 120);
    bzero(v12, 0x2068uLL);
    v8 = &v12[75] + 8;
    v9 = 6912;
    do
    {
      *v8 = 0;
      v8[4] = 0;
      *(v8 + 8) = 0uLL;
      *(v8 + 24) = 0uLL;
      *(v8 + 40) = 0uLL;
      *(v8 + 56) = 0uLL;
      *(v8 + 72) = 0uLL;
      *(v8 + 88) = 0uLL;
      *(v8 + 97) = 0uLL;
      *(v8 + 15) = 0;
      *(v8 + 16) = 0;
      *(v8 + 135) = 0;
      v8 += 144;
      v9 -= 144;
    }

    while (v9);
    *(&v12[517] + 4) = 0u;
    *(&v12[515] + 8) = 0u;
    *(&v12[516] + 8) = 0u;
    *(&v12[513] + 8) = 0u;
    *(&v12[514] + 8) = 0u;
    *(&v12[511] + 8) = 0u;
    *(&v12[512] + 8) = 0u;
    *(&v12[509] + 8) = 0u;
    *(&v12[510] + 8) = 0u;
    *(&v12[507] + 8) = 0u;
    *(&v12[508] + 8) = 0u;
    memcpy(v7, v12, 0x2064uLL);
    Init_DB_SA_Assistance(*(v0 + 328), *(v0 + 128));
    v10 = *(v0 + 144);
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, 410);
    memset(&v12[519], 0, 48);
    memcpy(v10, v13, 0x138uLL);
    *(v10 + 312) = 0u;
    *(v10 + 328) = 0u;
    *(v10 + 344) = 0u;
    *(v10 + 360) = 0u;
    *(v10 + 376) = 0u;
    *(v10 + 392) = 0u;
    *(v10 + 408) = 0u;
    *(v10 + 424) = 0u;
    *(v10 + 440) = 0u;
    *(v10 + 456) = 0u;
    *(v10 + 472) = 0u;
    *(v10 + 488) = 0u;
    *(v10 + 504) = 0u;
    *(v10 + 520) = 0u;
    *(v10 + 536) = 0u;
    result = memcpy((v10 + 552), v12, 0x19AuLL);
    *(v10 + 962) = *(&v12[520] + 8);
    *(v10 + 978) = *(&v12[521] + 1);
    *(v10 + 986) = v12[519];
    *(v10 + 1002) = *&v12[520];
    *(v10 + 1010) = 0;
    *(v10 + 1014) = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

char *GNSS_HL_Data_Bases_TimeSynch(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  v4 = a1[1];
  v6 = a1[10];
  v5 = a1[11];
  if (*(v3 + 8))
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts TTick not 0");
  }

  if (!*(v3 + 12))
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts OS_Time_ms = 0");
  }

  if (!*v4)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt TTick = 0");
  }

  v7 = v4[4];
  if (!v7)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt OS_Time_ms = 0");
    v7 = v4[4];
  }

  v8 = *(v3 + 12);
  if (v7 < v8)
  {
    EvLog_nd("GNSS_HL_Data_Bases_TimeSynch: WARNING - DBtt behind DBts", 2, a3, v7, v8);
    LODWORD(v8) = *(v3 + 12);
  }

  v9 = *(v3 + 8);
  v10 = *v3;
  if (*v3 < 1)
  {
    v12 = *v4;
    v11 = v4[4];
    v13 = *v4;
  }

  else
  {
    v11 = v4[4];
    v12 = *v4;
    v13 = v8 - v11 + *v4;
  }

  *(v3 + 8) = v13;
  *(v3 + 12) = v11;
  result = EvLog_v("GNSS_HL_Data_Bases_TimeSynch: ts %d %g %u %u orig %u %u  ns %u %u tt %u %u %u", v10, *(v3 + 24), v13, v11, v9, v8, *(v6 + 32), *(v6 + 36), v12, v11, v4[3]);
  if (!*(v6 + 32))
  {
    *(v6 + 32) = *(v3 + 8);
  }

  if (!*(v5 + 32))
  {
    *(v5 + 32) = *(v3 + 8);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void GM_Set_MSec_TOT_SSS(uint64_t a1, double a2, double a3, double a4)
{
  v5 = *MEMORY[0x29EDCA608];
  Comp_Sig_TOT(*a1, *(a1 + 4), *(a1 + 8), a4, a3);
  v4 = *MEMORY[0x29EDCA608];
}

void GM_Set_MSec_TOW_NSSS(uint64_t a1, uint64_t a2, double *a3, int *a4, double a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a2 + 4) == 1)
  {
    v9 = *(a1 + 16);
    *v20 = *a1;
    v21 = v9;
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    GM_Aid_NSSS_Meas(a2, 0, v20);
    v10 = *a3;
    v11 = vcvtd_n_f64_u32(*(a2 + 16), 1uLL) + Comp_Sig_TOT(*v20, *&v20[2], v20[4], *a3, a5) * 1000.0;
    v12 = -0.5;
    if (v11 <= 0.0)
    {
      v13 = -0.5;
    }

    else
    {
      v13 = 0.5;
    }

    v14 = v11 + v13;
    if (v14 <= 2147483650.0)
    {
      if (v14 >= -2147483650.0)
      {
        v15 = v14 * 0.001;
      }

      else
      {
        v15 = -2147483.65;
      }
    }

    else
    {
      v15 = 2147483.65;
    }

    v16 = (v15 - v10) * 1000.0;
    if (v16 > 0.0)
    {
      v12 = 0.5;
    }

    v17 = v16 + v12;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x80000000;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    *a4 = v18;
    *a3 = v15;
  }

  v19 = *MEMORY[0x29EDCA608];
}

uint64_t SV_Data_Decode_Update_Wrapper(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper: Entry");
  SV_Data_Decode(*(a1 + 184), *(a1 + 240), *(a1 + 24), *(a1 + 72), *(a1 + 32), *(a1 + 48), *(a1 + 56));
  v2 = *MEMORY[0x29EDCA608];

  return GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper:  Exit");
}

_BYTE *GM_Cross_Check_Meas_Aiding(_BYTE *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 1732;
  v35 = *MEMORY[0x29EDCA608];
  v5 = 6796;
  v6 = 4428;
  v7 = 4438;
  do
  {
    if (v1[v6] == 1 && *&v1[v5] >= 10)
    {
      v8 = v1[v7];
      if (v8 >= 2)
      {
        if (v8 == 2)
        {
          v9 = 5;
        }

        else
        {
          v9 = 3;
        }

        if ((*&v1[v2 + 8] & 0x300) != 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x7FFFLL;
        }

        v11 = (*&v1[v2 + 8] & 0x100) == 0 && (*&v1[v2 + 8] & 0x300) != 0;
        v12 = &v1[v3];
        v13 = *&v1[v4 - 4] - *&v1[v3 + 4452];
        if (v13 < 28800)
        {
          if (v13 <= -28801)
          {
            v13 += 57600 * ((28800 - v13) / 0xE100u);
          }
        }

        else
        {
          v13 = (v13 + 28800) % 0xE100u - 28800;
        }

        v14 = v1[v2 + 2];
        v15 = &v1[v3];
        result = *(v12 + 1114);
        v16 = *(v12 + 2225);
        v17 = *&v1[v4];
        v18 = v17 - result + 1534500 * v13;
        if (v18 < 0)
        {
          v19 = -511;
        }

        else
        {
          v19 = 511;
        }

        v20 = (v19 + v18) / 1023;
        if (!v11)
        {
          v20 %= 20;
        }

        v21 = v18 % 1023;
        v22 = v21 + 1023;
        if (v21 >= -510)
        {
          v22 = v21;
        }

        if (v21 <= 511)
        {
          v23 = v22;
        }

        else
        {
          v23 = (v21 - 1023);
        }

        v24 = v20 + 20;
        if (v20 >= -9)
        {
          v24 = v20;
        }

        if (v20 <= 10)
        {
          v25 = v24;
        }

        else
        {
          v25 = (v20 - 20);
        }

        if (v23 >= 0)
        {
          v26 = v23;
        }

        else
        {
          v26 = -v23;
        }

        v27 = g_Enable_Event_Log;
        if (v26 > v16 && g_Enable_Event_Log >= 3u)
        {
          v32 = *&v1[v4];
          v33 = result;
          v34 = v11;
          EvLog_nd("GMCCMA: PR MAX chips ", 6, v15, (*(v1 + 1692) - *(v15 + 4424)), v14, v17, result, v23, v16);
          v15 = &v1[v3];
          v17 = v32;
          result = v33;
          v11 = v34;
          v27 = g_Enable_Event_Log;
        }

        if (v25 >= 0)
        {
          v29 = v25;
        }

        else
        {
          v29 = -v25;
        }

        if (v29 > v10 && v27 >= 3)
        {
          result = EvLog_nd("GMCCMA: PR MAX ms ", 7, v15, (*(v1 + 1692) - *(v15 + 4424)), v14, v17, result, v25, v10, v11);
        }
      }
    }

    v3 += 48;
    v4 += 56;
    v5 += 4;
    v7 += 48;
    v6 += 48;
    v2 += 36;
  }

  while (v3 != 2304);
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLON_Calc_State_Table_Eph(__int16 a1, __int16 a2, int a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v33 = *MEMORY[0x29EDCA608];
  v9 = *(a4 + 12) / 900;
  if (*(a5 + 184) == 1 && *(a5 + 166) == v9)
  {
    v10 = *(a5 + 168);
  }

  else
  {
    *(a5 + 172) = 0u;
    *(a5 + 144) = 0u;
    *(a5 + 160) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    *a5 = *(a4 + 24);
    *(a5 + 8) = *(a4 + 48);
    *(a5 + 16) = *(a4 + 72);
    *(a5 + 24) = *(a4 + 32);
    *(a5 + 32) = *(a4 + 56);
    *(a5 + 40) = *(a4 + 80);
    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    *(a5 + 72) = 0;
    v10 = *(a4 + 12);
    *(a5 + 168) = v10;
    *(a5 + 172) = *(a4 + 126);
    *(a5 + 166) = v9;
    *(a5 + 184) = 1;
    *(a5 + 176) = 2;
    *(a5 + 180) = *(a4 + 20);
    *(a5 + 112) = gloURA_table[*(a4 + 125)];
  }

  v11 = 0;
  *v28 = 0;
  v29 = 0.0;
  v30[0] = a5;
  v30[1] = (a5 + 24);
  v31 = (a5 + 48);
  v32 = v10;
  v27 = 0.0;
  do
  {
    v12 = a3 - v32 + 86400;
    if (a3 - v32 >= -43200)
    {
      v12 = a3 - v32;
    }

    if (a3 - v32 <= 43199)
    {
      v13 = v12;
    }

    else
    {
      v13 = a3 - v32 - 86400;
    }

    if (v13 <= -120)
    {
      v14 = -120;
    }

    else
    {
      v14 = v13;
    }

    if (v14 >= 120)
    {
      v15 = 120;
    }

    else
    {
      v15 = v14;
    }

    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    if (v13)
    {
      GLON_RungeKutta4(v30, v15);
      ++v11;
    }

    else
    {
      GLON_RK_CalcAccel(v30, v31);
    }

    if (v15 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }
  }

  while (v16 > 0x3C);
  *a6 += v11;
  *(a5 + 168) = a3;
  *(a5 + 172) = a2;
  *(a5 + 174) = a1;
  API_Get_UTC_Cor(1, &v29);
  result = Glon_To_GPS_Time(*(a5 + 174), *(a5 + 172), *(a5 + 168), v29, &v28[1], v28, &v27);
  *(a5 + 160) = v27;
  *(a5 + 164) = LOWORD(v28[0]) + (LOWORD(v28[1]) << 10);
  v18 = a3 - *(a4 + 12);
  v19 = v18 + 86400;
  if (v18 >= -43200)
  {
    v19 = a3 - *(a4 + 12);
  }

  if (v18 <= 43199)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18 - 86400;
  }

  v21 = *(a4 + 104);
  *(a5 + 96) = -(*(a4 + 96) + v21 * v20);
  if ((v20 & 0x80000000) != 0)
  {
    v20 = -v20;
  }

  if (v20 >= 0x385)
  {
    v22 = v20 * 0.000277777778 * (v20 * 0.000277777778 * (v20 * 0.000277777778)) * 7.33333333 + v20 * 0.000277777778 * (v20 * 0.000277777778) * -2.0;
    *(a5 + 112) = gloURA_table[*(a4 + 125)] + v22 * v22;
  }

  *(a5 + 104) = v21;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Set_TOW_Status(uint64_t result, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a2 + 22776) != 1 || (v2 = *(a2 + 22816), v2 > 900.0) || *(result + 11048) || *(a2 + 2811) || *(result + 128) != 1)
  {
    v7 = *(a2 + 24224);
    if (v7 >= *(a2 + 24232))
    {
      v7 = *(a2 + 24232);
    }

    v8 = *(a2 + 24240);
    if (v7 < v8)
    {
      v8 = v7;
    }

    v9 = *(result + 11048);
    if (v9 || (v10 = 0.0, *(a2 + 12) >= 9))
    {
      v10 = v8 * 1.11265006e-17;
    }

    if ((*(a2 + 16) & 1) == 0)
    {
      v10 = v10 + *(a2 + 24256) * 0.000001;
    }

    v11 = sqrt(v10);
    if (v11 <= 200.0)
    {
      v14 = v11 * 1000000.0;
      v15 = -0.5;
      if (v14 > 0.0)
      {
        v15 = 0.5;
      }

      v16 = v14 + v15;
      if (v16 <= 2147483650.0)
      {
        if (v16 >= -2147483650.0)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0x80000000;
        }
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      v17 = 11;
      while (g_TOW_Stat_Upgrade_us_Sigma_Table[v17] < v13)
      {
        if (--v17 <= 1u)
        {
          v12 = 1;
          goto LABEL_33;
        }
      }

      v12 = v17;
    }

    else
    {
      v12 = 0;
      v13 = 0x7FFFFFFF;
    }

LABEL_33:
    v18 = *(a2 + 12);
    if (v18 < v12)
    {
      v19 = *(a2 + 22848) == 1 && *(a2 + 22888) < 900000000.0;
      if (v12 == 11)
      {
        if ((*(result + 128) & 1) != 0 || *(a2 + 24752) > 30000.0 && !v19)
        {
          v12 = 9;
        }

        else
        {
          v12 = 11;
        }
      }

      *(a2 + 12) = v12;
      v18 = v12;
    }

    if (v9 && (*(result + 128) & 1) == 0)
    {
      v20 = 1;
      while (g_TOW_Stat_Degrade_us_Sigma_Table[v20] >= v13)
      {
        if (++v20 == 12)
        {
          LODWORD(v20) = 0;
          break;
        }
      }

      if (v18 != 11 || v13 <= 1700)
      {
        v22 = 11;
      }

      else
      {
        v22 = 10;
      }

      if (v13 < 3001)
      {
        LODWORD(v20) = v22;
      }

      if (v18 > v20)
      {
        *(a2 + 12) = v20;
        v18 = v20;
      }
    }
  }

  else
  {
    *(a2 + 646) = *(a2 + 22758);
    v3 = *(a2 + 22760);
    v4 = -0.5;
    if (v3 * 1000.0 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 * 1000.0 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5 * 0.001;
      }

      else
      {
        v6 = -2147483.65;
      }
    }

    else
    {
      v6 = 2147483.65;
    }

    *(a2 + 632) = v6;
    if (*(a2 + 22848) == 1)
    {
      *(a2 + 736) = v6 - v3;
      *(a2 + 24696) = fmin(sqrt(*(a2 + 22888)), 9999000.0);
    }

    *(a2 + 24704) = fmin(sqrt(v2) * 299792.458, 9999000.0);
    if (v2 <= 0.0225)
    {
      v18 = 11;
    }

    else if (v2 <= 0.5625)
    {
      v18 = 10;
    }

    else if (v2 <= 9.0)
    {
      v18 = 9;
    }

    else if (v2 <= 100.0)
    {
      v18 = 8;
    }

    else
    {
      v18 = 7;
    }

    *(a2 + 12) = v18;
  }

  *(a2 + 640) = v18;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL SuplInitRecdVer2::GetRequestedGNSSList(SuplInitRecdVer2 *this)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(*(*this + 16) + 246))
  {
    SuplUtils::GetInstance(this);
    result = *(*(*this + 16) + 552) != 0;
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

char *NK_Bit_Sync_Check(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 233) & 1) == 0 && *(a3 + 12) == 11 && *(a3 + 24752) < 149896.229)
  {
    v6 = 0;
    v7 = result + 316;
    v8 = a2 + 6696;
    v9 = a4 + 416;
    v10 = (result + 78);
    do
    {
      if (*(a3 + v6 + 2960) == 1 && (~*&v7[2 * v6] & 0x300) == 0)
      {
        v11 = a3 + 2960 + 8 * v6;
        if (fabs(*(v11 + 1872)) > 149896.229 && *(a3 + v6 + 49) == 1)
        {
          *(a3 + v6 + 2960) = 0;
          *(a3 + 4 * v6 + 3056) = 12;
          --*(a3 + 2811);
          ++*(a3 + 2812);
          *(v8 + v6) = 0;
          *(a4 + v6 + 365) |= 1u;
          *(v9 + 4 * v6) = *a3;
          v12 = *(v11 + 1872);
          if (v12 <= 0.0)
          {
            v13 = -0.5;
          }

          else
          {
            v13 = 0.5;
          }

          v14 = v12 + v13;
          if (v14 <= 2147483650.0)
          {
            if (v14 >= -2147483650.0)
            {
              v15 = v14;
            }

            else
            {
              v15 = 0x80000000;
            }
          }

          else
          {
            v15 = 0x7FFFFFFF;
          }

          result = EvCrt_v("ChanReset %d : NKBSC %d %d   %d", v6, *v10, *(v10 - 2), v15);
        }
      }

      ++v6;
      v10 += 4;
    }

    while (v6 != 48);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm26_03SendXRestoreFixedMeCalib(const void *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v4, "XmM", sizeof(v4));
  memcpy(__s, a1, sizeof(__s));
  result = Gnm07_06EncodeNSend(v4, __s, "Restore NV,m");
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm26_04SendXRestoreVariableMeNv(const void *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v4, "XvM", sizeof(v4));
  memcpy(__s, a1, sizeof(__s));
  result = Gnm07_06EncodeNSend(v4, __s, "Restore NV,v");
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm26_12SendXBkupMeAck(_DWORD *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v4, "XeM", sizeof(v4));
  __s[0] = *a1;
  result = Gnm07_06EncodeNSend(v4, __s, "Backup NV Ack,e");
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *Gnm26_21HandleXMessages(unsigned __int8 *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 1);
  if (v4 <= 0x50)
  {
    if (v4 == 69)
    {
      if ((Gnm29_04BackupMeNv(a1) & 1) == 0)
      {
        *&__str[2] = 0;
        __str[0] = 71;
        __str[1] = *a1;
        Gnm26_12SendXBkupMeAck(__str);
      }

      goto LABEL_14;
    }

    if (v4 == 77)
    {
      v5 = *MEMORY[0x29EDCA608];

      return Gnm27_22HandleFixedMeRestoreAck(a1);
    }

    goto LABEL_10;
  }

  if (v4 != 86)
  {
    if (v4 == 81)
    {
      Gnm25_15HandleReqRestoreNv(*a1);
LABEL_14:
      v9 = *MEMORY[0x29EDCA608];
      return 0;
    }

LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MID,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm26_21HandleXMessages", 778, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }

    goto LABEL_14;
  }

  v10 = *MEMORY[0x29EDCA608];

  return Gnm29_02HandleMeNvRestoreAck(a1);
}

uint64_t Gnm54_01HandleSetPowerRpt(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_POWER_REPORT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm54_01HandleSetPowerRpt");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a1 + 12))
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%c\n", v4, "GNM", 73, "Gnm54_01HandleSetPowerRpt", v5);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
    }

    Hal_SetPowerReportStatus(*(a1 + 12), Gnm54_02PowerRpt);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm54_01HandleSetPowerRpt", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

void Gnm54_02PowerRpt(int a1, char *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_12;
  }

  if (a1 != 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CBType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm54_02PowerRpt", 1028, a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }

    goto LABEL_12;
  }

  v3 = *a2;
  v4 = gnssOsa_Calloc("Gnm54_02PowerRpt", 62, 1, 0x10uLL);
  if (!v4)
  {
LABEL_12:
    v9 = *MEMORY[0x29EDCA608];
    return;
  }

  if ((v3 & 2) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 11;
  }

  v4[12] = v5;
  v4[13] = v3 & 1;
  v6 = *MEMORY[0x29EDCA608];

  AgpsSendFsmMsg(128, 128, 8406784, v4);
}

uint64_t Gnm54_03HandleSetPowerRptRsp(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_POWER_REPORT_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm54_03HandleSetPowerRptRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    g_PowerRepEnbStatus = *(a1 + 13);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (g_PowerRepEnbStatus)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PowerReportEnabled,%c\n", v4, "GNM", 73, "Gnm54_03HandleSetPowerRptRsp", v5);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
    }

    Gnm11_00ApiStatusCB(*(a1 + 12), 0, 0, 15);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm54_03HandleSetPowerRptRsp", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm54_04HandlePowRepData(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_POW_REP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm54_04HandlePowRepData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if ((g_PowerRepEnbStatus & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerRep ReqDisabled\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm54_04HandlePowRepData", 1028);
    v10 = 2;
LABEL_15:
    LbsOsaTrace_WriteLog(0xBu, __str, v9, v10, 1);
    goto LABEL_16;
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm54_04HandlePowRepData", 517);
    v10 = 0;
    goto LABEL_15;
  }

  v4 = qword_2A19268D8;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (!v4)
  {
    if (!IsLoggingAllowed)
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerReport\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm54_04HandlePowRepData", 258);
    v10 = 4;
    goto LABEL_15;
  }

  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BBtick,%u,MeasIntvl,%ums,ActiveIntvl,%ums,Power,%fmW\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm54_04HandlePowRepData", *(a1 + 12), *(a1 + 16), *(a1 + 20), *(a1 + 24));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  *__str = *(a1 + 12);
  v16 = *(a1 + 20);
  v17 = *(a1 + 24);
  qword_2A19268D8(0, __str);
LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t pos_protocol_PpduCallback(int a1, size_t a2, const void *a3)
{
  v99 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%d or msg\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 69, "pos_protocol_PpduCallback", 513, a2);
      result = LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
    }

    goto LABEL_133;
  }

  memset_s(&v88 + 8, 0x60uLL, 0, 0x60uLL);
  memset_s(&v88 + 8, 0x60uLL, 0, 0x60uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%d\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 73, "pos_protocol_PpduCallback", a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 4, 1);
  }

  if (a1 > 4)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU msg\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 69, "pos_protocol_PpduCallback", 770);
      result = LbsOsaTrace_WriteLog(0x13u, __str, v20, 0, 1);
    }

    goto LABEL_133;
  }

  *&v88 = __PAIR64__(a2, a1);
  memcpy_s("pos_protocol_PpduCallback", 62, &v88 + 8, a2, a3, a2);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "Process_PPDU_Request");
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (v89)
        {
          v22 = 84;
        }

        else
        {
          v22 = 70;
        }

        if (BYTE1(v89))
        {
          v23 = 84;
        }

        else
        {
          v23 = 70;
        }

        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Active Session PDUSize,%u,TypeOfPayload,%u,Handle,%u,isEmergency,%c,isLogsDisabled,%c,sessionType,%u\n", v21, "PSP", 77, "TracePPDUContents", LOWORD(v93[0]), __src, DWORD2(v88), v23, v22, HIDWORD(v88));
        LbsOsaTrace_WriteLog(0x13u, __str, v24, 3, 1);
      }

      PPDU_TraceBuffer(v93[1], LOWORD(v93[0]));
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v33 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (BYTE9(v88))
      {
        v34 = 84;
      }

      else
      {
        v34 = 70;
      }

      if (BYTE8(v88))
      {
        v35 = 84;
      }

      else
      {
        v35 = 70;
      }

      if (BYTE10(v88))
      {
        v36 = 84;
      }

      else
      {
        v36 = 70;
      }

      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS,Autonomous,%c,Assisted,%c,Based,%c\n", v33, "PSP", 77, "TracePPDUContents", v36, v35, v34);
      LbsOsaTrace_WriteLog(0x13u, __str, v37, 3, 1);
    }
  }

  else if (a1 == 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (v89)
      {
        v26 = 84;
      }

      else
      {
        v26 = 70;
      }

      if (BYTE1(v89))
      {
        v27 = 84;
      }

      else
      {
        v27 = 70;
      }

      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Request Capabilities payloadType,%u,Handle,%u,isEmergency,%c,isLogsDisabled,%c,sessionType,%u\n", v25, "PSP", 77, "TracePPDUContents", HIDWORD(v92), DWORD2(v88), v27, v26, HIDWORD(v88));
      LbsOsaTrace_WriteLog(0x13u, __str, v28, 3, 1);
    }
  }

  else if (a1 == 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (v89)
      {
        v30 = 84;
      }

      else
      {
        v30 = 70;
      }

      if (BYTE1(v89))
      {
        v31 = 84;
      }

      else
      {
        v31 = 70;
      }

      v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Assistance Data payloadType,%u,Handle,%u,isEmergency,%c,isLogsDisabled,%c,sessionType,%u\n", v29, "PSP", 77, "TracePPDUContents", HIDWORD(v92), DWORD2(v88), v31, v30, HIDWORD(v88));
      LbsOsaTrace_WriteLog(0x13u, __str, v32, 3, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (v89)
      {
        v11 = 84;
      }

      else
      {
        v11 = 70;
      }

      if (BYTE1(v89))
      {
        v12 = 84;
      }

      else
      {
        v12 = 70;
      }

      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,isEmergency,%c,isLoggingDisabled,%c,sessionType,%u,sessionCode,%u\n", v10, "PSP", 77, "TracePPDUContents", DWORD2(v88), v12, v11, HIDWORD(v88), DWORD1(v89));
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%u,long,%d,Alt,%u,status,%u,fixType,%u,shape,%u\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 73, "TracePPDUContents", HIDWORD(v90), v91, WORD2(v91), HIDWORD(v89), v90, DWORD1(v90));
      LbsOsaTrace_WriteLog(0x13u, __str, v15, 4, 1);
    }
  }

  v97 = -1;
  v95 = 1793;
  v38 = operator new(0x68uLL, MEMORY[0x29EDC9418]);
  if (!v38)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v45 = mach_continuous_time();
      v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Msg\n", (*&g_MacClockTicksToMsRelation * v45), "PSP", 69, "Process_PPDU_Request", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v46, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (result)
    {
      goto LABEL_141;
    }

    goto LABEL_133;
  }

  v39 = v38;
  *v38 = 4;
  v40 = (v38 + 1);
  memset_s(v38 + 1, 0x60uLL, 0, 0x60uLL);
  v41 = v91;
  v42 = *v93;
  *(v39 + 4) = v92;
  *(v39 + 5) = v42;
  v43 = v89;
  v44 = v90;
  *v39 = v88;
  *(v39 + 1) = v43;
  v96 = v39;
  v39[12] = __src;
  *(v39 + 2) = v44;
  *(v39 + 3) = v41;
  if (v88 <= 1)
  {
    if (!a1)
    {
      goto LABEL_87;
    }

    if (a1 == 1)
    {
      v97 = *(v39 + 2);
      v47 = *(v39 + 40);
      if (v47 < 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v64 = mach_continuous_time();
          v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU\n", (*&g_MacClockTicksToMsRelation * v64), "PSP", 69, "Process_PPDU_Request", 770);
          LbsOsaTrace_WriteLog(0x13u, __str, v65, 0, 1);
        }

        MEMORY[0x29C29EB20](v39, 0x1032C4083C19586);
        result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
        if (result)
        {
          goto LABEL_141;
        }

        goto LABEL_133;
      }

      v48 = gnssOsa_Calloc("Process_PPDU_Request", 116, 1, *(v39 + 40));
      if (!v48)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v68 = mach_continuous_time();
          v69 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Active session PDU\n", (*&g_MacClockTicksToMsRelation * v68), "PSP", 69, "Process_PPDU_Request", 1537);
          LbsOsaTrace_WriteLog(0x13u, __str, v69, 0, 1);
        }

        MEMORY[0x29C29EB20](v39, 0x1032C4083C19586);
        result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
        if (result)
        {
          goto LABEL_141;
        }

        goto LABEL_133;
      }

      memcpy_s("Process_PPDU_Request", 126, v48, v47, v39[11], v47);
      v39[11] = v48;
      goto LABEL_87;
    }

LABEL_102:
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v62 = mach_continuous_time();
      v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msg type\n", (*&g_MacClockTicksToMsRelation * v62), "PSP", 69, "Process_PPDU_Request", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v63, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (result)
    {
      goto LABEL_141;
    }

    goto LABEL_133;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v97 = *v40;
      if (v93[0])
      {
        v49 = gnssOsa_Calloc("Process_PPDU_Request", 144, 1, 0x38uLL);
        v39[10] = v49;
        if (!v49)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v66 = mach_continuous_time();
            v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gen Asst Data\n", (*&g_MacClockTicksToMsRelation * v66), "PSP", 69, "Process_PPDU_Request", 1537);
            LbsOsaTrace_WriteLog(0x13u, __str, v67, 0, 1);
          }

          MEMORY[0x29C29EB20](v39, 0x1032C4083C19586);
          result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
          if (result)
          {
            goto LABEL_141;
          }

          goto LABEL_133;
        }

        *(v39[10] + 8) = gnssOsa_Calloc("Process_PPDU_Request", 149, 1, 8uLL);
        v50 = *(v93[0] + 1);
        if (!v50)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v70 = mach_continuous_time();
            v71 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Generic Asst Req\n", (*&g_MacClockTicksToMsRelation * v70), "PSP", 69, "Process_PPDU_Request", 1537);
            LbsOsaTrace_WriteLog(0x13u, __str, v71, 0, 1);
          }

          v72 = v39[10];
          if (v72)
          {
            free(v72);
          }

          v39[10] = 0;
          MEMORY[0x29C29EB20](v39, 0x1032C4083C19586);
          result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
          if (result)
          {
            goto LABEL_141;
          }

          goto LABEL_133;
        }

        memcpy_s("Process_PPDU_Request", 154, *(v39[10] + 8), 8u, v50, 8uLL);
        if (*(v93[0] + 2))
        {
          if (*(*(v93[0] + 1) + 3) == 1)
          {
            *(v39[10] + 16) = gnssOsa_Calloc("Process_PPDU_Request", 168, 1, 0xD8uLL);
            v51 = *(v39[10] + 16);
            if (!v51)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v81 = mach_continuous_time();
                v82 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Asst Req\n", (*&g_MacClockTicksToMsRelation * v81), "PSP", 69, "Process_PPDU_Request", 1537);
                LbsOsaTrace_WriteLog(0x13u, __str, v82, 0, 1);
              }

              v83 = v39[10];
              v84 = *(v83 + 8);
              if (v84)
              {
                free(v84);
                v83 = v39[10];
              }

              *(v83 + 8) = 0;
              v85 = v39[10];
              if (v85)
              {
                free(v85);
              }

              v39[10] = 0;
              MEMORY[0x29C29EB20](v39, 0x1032C4083C19586);
              result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
              if (result)
              {
                goto LABEL_141;
              }

              goto LABEL_133;
            }

            memcpy_s("Process_PPDU_Request", 173, v51, 0xD8u, *(v93[0] + 2), 0xD8uLL);
          }
        }
      }

      if (__src)
      {
        v52 = gnssOsa_Calloc("Process_PPDU_Request", 197, 1, 0x14uLL);
        v39[12] = v52;
        if (!v52)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v73 = mach_continuous_time();
            v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Location ID\n", (*&g_MacClockTicksToMsRelation * v73), "PSP", 69, "Process_PPDU_Request", 1537);
            LbsOsaTrace_WriteLog(0x13u, __str, v74, 0, 1);
          }

          v75 = v39[10];
          v76 = *(v75 + 16);
          if (v76)
          {
            free(v76);
            v75 = v39[10];
          }

          *(v75 + 16) = 0;
          v77 = v39[10];
          v78 = *(v77 + 8);
          if (v78)
          {
            free(v78);
            v77 = v39[10];
          }

          *(v77 + 8) = 0;
          v79 = v39[10];
          if (v79)
          {
            free(v79);
          }

          v39[10] = 0;
          result = MEMORY[0x29C29EB20](v39, 0x1032C4083C19586);
          goto LABEL_133;
        }

        memcpy_s("Process_PPDU_Request", 202, v52, 0x14u, __src, 0x14uLL);
      }

      goto LABEL_87;
    }

    if (a1 != 4)
    {
      goto LABEL_102;
    }
  }

  v97 = *v40;
LABEL_87:
  if (SuplPospPostMessage(&v95) && v88 == 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v53 = mach_continuous_time();
      v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Request Assistance Data\n", (*&g_MacClockTicksToMsRelation * v53), "PSP", 69, "Process_PPDU_Request", 1548);
      LbsOsaTrace_WriteLog(0x13u, __str, v54, 0, 1);
    }

    v55 = v96;
    v56 = v96[12];
    if (v56)
    {
      free(v56);
      v55 = v96;
    }

    v55[12] = 0;
    v57 = v55[10];
    v58 = *(v57 + 16);
    if (v58)
    {
      free(v58);
      v55 = v96;
      v57 = v96[10];
    }

    *(v57 + 16) = 0;
    v59 = v55[10];
    v60 = *(v59 + 8);
    if (v60)
    {
      free(v60);
      v55 = v96;
      v59 = v96[10];
    }

    *(v59 + 8) = 0;
    v61 = v55[10];
    if (v61)
    {
      free(v61);
      v55 = v96;
    }

    v55[10] = 0;
    MEMORY[0x29C29EB20](v39, 0x1032C4083C19586);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
LABEL_141:
    bzero(__str, 0x410uLL);
    v86 = mach_continuous_time();
    v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v86), "PSP", 68, "Process_PPDU_Request");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v87, 5, 1);
  }

LABEL_133:
  v80 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GNS_WlInitialize(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "GNS_WlInitialize");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v13 = -1;
  v11 = 1027;
  v12 = a1;
  v4 = SuplPospPostMessage(&v11);
  if (v4 && LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 69, "GNS_WlInitialize", 1548, v11);
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "GNS_WlInitialize");
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  result = v4 == 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_WlCapabilities(uint64_t a1, char a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "GNS_WlCapabilities");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  v22 = -1;
  v20 = 1283;
  v6 = operator new(0xCuLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN Cap Msg\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "GNS_WlCapabilities", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "PSP", 68, "GNS_WlCapabilities");
    goto LABEL_13;
  }

  v7 = v6;
  v21 = v6;
  *v6 = a1;
  v6[8] = a2 & 1;
  if (SuplPospPostMessage(&v20))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "GNS_WlCapabilities", 1548, v20);
      LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
    }

    MEMORY[0x29C29EB20](v7, 0x1000C4005A209FELL);
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "PSP", 68, "GNS_WlCapabilities");
LABEL_13:
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
LABEL_14:
    v15 = 14;
    goto LABEL_15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 68, "GNS_WlCapabilities");
    v15 = 1;
    LbsOsaTrace_WriteLog(0x13u, __str, v19, 5, 1);
  }

  else
  {
    v15 = 1;
  }

LABEL_15:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

BOOL NK_Comp_ith_PR_Res(_BOOL8 result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, _BYTE *a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v47[1] = *MEMORY[0x29EDCA608];
  v21 = result;
  v22 = *(a5 + 4 * result + 76);
  v23 = 736;
  if (v22 == 4)
  {
    v23 = 752;
  }

  v24 = v22 == 2;
  v25 = 744;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = a7 + 19584;
  *&a7[8 * result + 19584] = a8 + (*&a7[v25] - *(a3 + 56)) * 299792458.0;
  v27 = a7 + 4448;
  *&a7[8 * result + 4448] = *(a3 + 72);
  v28 = 0.0;
  if (a7[2809])
  {
    v29 = 0.01;
  }

  else if (a6[187] <= 0.0)
  {
    result = Trop_Elev_MapF(a4);
    v29 = v37 * 2.3;
  }

  else
  {
    v32 = a6[188];
    Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF((a6 + 203), *(a4 + 32), a9, a10, a2);
    v34 = v32 * v33;
    v35 = a6[189];
    Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF((a6 + 203), *(a4 + 32), a10, a2);
    v28 = v34 + v35 * v36;
    v47[0] = 0.0;
    result = R8_EQ((a4 + 16), v47);
    if (result)
    {
      v29 = 0.12;
    }

    else
    {
      v29 = 1.001 / sqrt(*(a4 + 8) * *(a4 + 8) + 0.002001) * 0.12;
    }

    *&v26[8 * v21] = v28 + *&v26[8 * v21];
  }

  v38 = *&v27[8 * v21] + v29 * v29;
  *&v27[8 * v21] = v38;
  a7[v21 + 2912] = 1;
  ++a7[2810];
  if (a7[v21 + 2864] == 1)
  {
    v39 = *&v26[8 * v21] - *(a5 + 8 * v21 + 1232);
    *&a7[8 * v21 + 4832] = v39;
    v40 = *&a7[24 * v21 + 3296] + *&a7[24 * v21 + 3304];
    v41 = &a7[8 * v21];
    if (a7[v21 + 1176] == 1)
    {
      v42 = v39 - v41[159];
      v43 = v40 + v41[207];
    }

    else
    {
      v44 = v38 + a12;
      *&v27[8 * v21] = v44;
      v43 = v44 + v40;
      v42 = v39 + a11;
    }

    *&a7[8 * v21 + 4832] = v42;
    *&a7[8 * v21 + 6848] = v43;
    if (*(a3 + 120) == 1)
    {
      a7[v21 + 26208] = 1;
      v45 = -(a11 - *(a3 + 56) * 299792458.0);
      v41[3768] = v45;
      if (a6[187] > 0.0)
      {
        v45 = v45 - v28;
      }

      v41[3768] = v45 + a13;
    }

    if (fabs(v42) < 600000000.0 && v43 < 600000000.0)
    {
      a7[v21 + 2960] = 1;
      ++a7[2811];
    }

    v41[700] = v42;
    v41[652] = v42;
  }

  v46 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_GPS_AS_SV_Config_Subframe(uint64_t result, unsigned __int8 *a2)
{
  v2 = 0;
  v6 = *MEMORY[0x29EDCA608];
  *a2 = *(result + 8) >> 12;
  a2[1] = *(result + 9) & 0xF;
  a2[2] = *(result + 8) >> 4;
  a2[3] = *(result + 8) & 0xF;
  v3 = result + 12;
  v4 = a2 + 9;
  do
  {
    *(v4 - 5) = (*(v3 + v2) >> 20) & 0xF;
    *(v4 - 4) = *(v3 + v2 + 2) & 0xF;
    *(v4 - 3) = *(v3 + v2) >> 12;
    *(v4 - 2) = *(v3 + v2 + 1) & 0xF;
    *(v4 - 1) = *(v3 + v2) >> 4;
    *v4 = *(v3 + v2) & 0xF;
    v4 += 6;
    v2 += 4;
  }

  while (v2 != 16);
  a2[28] = (*(result + 28) >> 20) & 0xF;
  a2[29] = *(result + 30) & 0xF;
  a2[30] = *(result + 28) >> 12;
  a2[31] = *(result + 29) & 0xF;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsUtils::GetInstance(LcsUtils *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LcsUtils::GetInstance(void)::pred_lcsUtils != -1)
  {
    dispatch_once(&LcsUtils::GetInstance(void)::pred_lcsUtils, &__block_literal_global_2);
  }

  result = LcsUtils::m_lcs_utils;
  if (!LcsUtils::m_lcs_utils)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "LcsUtils.cpp", 63, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN8LcsUtils11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(1uLL, MEMORY[0x29EDC9418]);
  LcsUtils::m_lcs_utils = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void LcsUtils::TraceBuffer(LcsUtils *this, const unsigned __int8 *a2, unsigned int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = v5 - v4;
      if (v5 - v4 > 0x13)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 3, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 77, "TraceBuffer", a2[v4], a2[v4 + 1], a2[v4 + 2], a2[v4 + 3], a2[v4 + 4], a2[v4 + 5], a2[v4 + 6], a2[v4 + 7], a2[v4 + 8], a2[v4 + 9], a2[v4 + 10], a2[v4 + 11], a2[v4 + 12], a2[v4 + 13], a2[v4 + 14], a2[v4 + 15], a2[v4 + 16], a2[v4 + 17], a2[v4 + 18], a2[v4 + 19]);
          LbsOsaTrace_WriteLog(0x12u, __str, v12, 3, 1);
        }

        v7 = v4;
      }

      else
      {
        v7 = v5;
        if (v5 > v4)
        {
          v8 = &a2[v4];
          do
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 3, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v9 = mach_continuous_time();
              v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 77, "TraceBuffer", *v8);
              LbsOsaTrace_WriteLog(0x12u, __str, v10, 3, 1);
            }

            ++v8;
            --v6;
          }

          while (v6);
          v7 = v5;
        }
      }

      v4 = v7 + 20;
    }

    while (v7 + 20 < v5);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t LcsUtils::IsItDuplicateSession(LcsUtils *this, char *a2, unsigned int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  __p = 0;
  v12 = 0;
  v13 = 0;
  v3 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a2, &a2[a3], a3);
  Instance = SuplUtils::GetInstance(v3);
  IsItDuplicateSUPLINIT = SuplUtils::IsItDuplicateSUPLINIT(Instance, &__p);
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (IsItDuplicateSUPLINIT)
    {
      v7 = 84;
    }

    else
    {
      v7 = 70;
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Is the SUPL INIT duplicate result,%c\n", v6, "SPL", 73, "IsItDuplicateSession", v7);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 4, 1);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x29EDCA608];
  return IsItDuplicateSUPLINIT;
}

void sub_2995F56CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GN_AGLON_Set_Eph(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph"))
  {
    goto LABEL_4;
  }

  if ((a1 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Eph: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v7 = *(p_api + 48);
  if (*(v7 + 5) == 1 && *v7 >= 3)
  {
    v8 = *(v7 + 24) + 604800 * *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = p_NA;
  v10 = (a1 - 1);
  v11 = p_NA + (v10 << 6);
  *(v11 + 15212) = v8;
  if (*(a2 + 56))
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  *(v11 + 15216) = v12;
  v13 = *(a2 + 4);
  if ((*(a2 + 4) - 7) < 0xF2u)
  {
    v13 = 2139062143;
  }

  *(v11 + 15220) = v13;
  v14 = *(a2 + 40);
  v15 = *(a2 + 24);
  *(v11 + 15224) = *(a2 + 8);
  *(v11 + 15240) = v15;
  *(v11 + 15256) = v14;
  *(v11 + 15272) = 4095;
  if (*(a2 + 56))
  {
    v16 = 5;
  }

  else
  {
    v16 = 3;
  }

  *(v11 + 15216) = v16;
  v4 = 1;
  *(v9 + v10 + 99) = 1;
  Debug_Log_GLO_Eph(1, a1, v11 + 15212);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGLON_Set_Eph: ", 2, v17, a1, *(p_NA + (v10 << 6) + 15212));
  }

LABEL_5:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_AGLON_Set_Alm(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Alm"))
  {
    goto LABEL_4;
  }

  if ((a1 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Alm: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v7 = *(p_api + 48);
  if (*(v7 + 5) == 1 && *v7 >= 3)
  {
    v8 = *(v7 + 24) + 604800 * *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = p_NA;
  v10 = (a1 - 1);
  v11 = p_NA + 36 * v10;
  v12 = (v11 + 16748);
  *(v11 + 16756) = *(a2 + 4);
  if (*(a2 + 32))
  {
    v13 = 5;
  }

  else
  {
    v13 = 3;
  }

  *v12 = v8;
  *(v11 + 16752) = v13;
  v14 = *(a2 + 24);
  *(v11 + 16760) = *(a2 + 8);
  *(v11 + 16776) = v14;
  v4 = 1;
  *(v9 + v10 + 123) = 1;
  Debug_Log_GLO_Alm(1, a1, v12);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGLON_Set_Alm: ", 2, v15, a1, *(p_NA + 36 * v10 + 16748));
  }

LABEL_5:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_AGLON_Set_Chan_Num(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Chan_Num"))
  {
    goto LABEL_6;
  }

  if ((a1 - 25) <= 0xE7u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: SV = %d <%d or >%d, Out of range!");
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  if ((a2 - 7) <= 0xF1u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: gloChanNum = %d <-7 or >+6, Out of range!");
    goto LABEL_6;
  }

  *(*(p_api + 56) + 4 * (a1 - 1) + 16336) = a2;
  v7 = p_NA;
  v8 = (a1 - 1);
  *(p_NA + (v8 << 6) + 15220) = a2;
  if ((*(v7 + 148) & 1) == 0)
  {
    *(v7 + 17656) = 0x7F7F7F7F7F7F7F7FLL;
    *(v7 + 17648) = 0x7F7F7F7F7F7F7F7FLL;
    *(v7 + 17640) = 0x7F7F7F7F7F7F7F7FLL;
  }

  v4 = 1;
  *(v7 + 148) = 1;
  *(v7 + v8 + 17640) = a2;
  Debug_Log_AGLON_ChanNum(a1, a2);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGLON_Set_Chan_Num: ", 2, v9, a1, a2);
  }

LABEL_7:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_AGLON_Set_Clk1(unsigned __int16 *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Clk1"))
  {
    goto LABEL_12;
  }

  v3 = *a1;
  if ((v3 - 1462) <= 0xFFFFFA4A)
  {
    v17 = *a1;
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloNA = %d <1 or >%d, Out of range!");
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v4 = *(a1 + 1);
  if ((v4 - 4296) <= 0xFFFFDE70)
  {
    v18 = *(a1 + 1);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauC = %d <-4295 or >4295, Unrealistic value!");
    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (v5 >= 0x20)
  {
    v19 = *(a1 + 8);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloN4 = %d >31, Out of range!");
    goto LABEL_12;
  }

  v6 = *(a1 + 3);
  if ((v6 - 0x200000) >> 22 != 1023)
  {
    v20 = *(a1 + 3);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-2^21 or >2^21, Out of range!");
    goto LABEL_12;
  }

  if ((v6 - 1075) <= 0xFFFFF79A)
  {
    v21 = *(a1 + 3);
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-1074 or >1074, Unrealistic value!");
    goto LABEL_12;
  }

  v10 = *(p_api + 48);
  if (*(v10 + 5) == 1 && *v10 >= 3)
  {
    v11 = *(v10 + 24) + 604800 * *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = p_NA;
  v13 = p_NA + 0x4000;
  *(p_NA + 17612) = v11;
  *(v13 + 1236) = v3;
  *(v13 + 1240) = v4;
  *(v13 + 1244) = v5;
  *(v13 + 1248) = v6;
  v14 = *(a1 + 16);
  *(v13 + 1252) = v14;
  v15 = *(a1 + 17);
  if (*(a1 + 17))
  {
    v16 = 5;
  }

  else
  {
    v16 = 3;
  }

  *(v13 + 1232) = v16;
  v7 = 1;
  *(v12 + 147) = 1;
  EvLog_nd("GN_AGLON_Set_Clk1: ", 6, v2, v3, v4, v5, v6, v14, v15);
LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

void *NK_SV_Meas_IVar(void *result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double a6)
{
  v27 = a3;
  v9 = result;
  v10 = 0;
  v28[12] = *MEMORY[0x29EDCA608];
  v11 = a5 + 152;
  v12 = a5 + 200;
  v13 = a5 + 4040;
  v14 = a5 + 4424;
  v15 = a4 - 1;
  do
  {
    if (*(v11 + v10) == 1)
    {
      result = NK_Obs_Equ_SV(v9, *(v12 + v10), *(a2 + 4 * v10), v27 + 56 * v10, v28, a6);
      v16 = *(v13 + 8 * v10) + *a4 * v28[0] * v28[0];
      v17 = 1;
      v18 = 2;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = v28[v19 - 1];
        v22 = v28;
        v23 = v18;
        v24 = v17;
        do
        {
          v25 = *v22++;
          v21 = v21 + v25 * v15[v23++];
          --v24;
        }

        while (v24);
        v20 += v19;
        v16 = v16 + v21 * v21 * v15[v20];
        v18 += v19;
        ++v17;
        ++v19;
      }

      while (v19 != 12);
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      *(v14 + 8 * v10) = v16;
    }

    ++v10;
  }

  while (v10 != 48);
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf_1u(void *a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v4 = *MEMORY[0x29EDCA608];

    return sprintf_10u(a1, a2);
  }

  else
  {
    result = sprintf1da(a1, a2, v5, 0, 0);
    v3 = *MEMORY[0x29EDCA608];
  }

  return result;
}

char **sprintf_1X(char **a1, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = HIDWORD(a2);
  if (v4)
  {
    sprintf_1x(a1, v4);
    v8 = *MEMORY[0x29EDCA608];

    return sprintf_08x(a1, a2);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return sprintf_1x(a1, a2);
  }
}

void *sprintf_sp1d(void *a1, int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  result = sprintf1da(a1, v3, v6, 0, a2 >> 31);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf_sp1u(void *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if ((a2 & 0x80000000) != 0)
  {
    v5 = *MEMORY[0x29EDCA608];

    return sprintf_10u(a1, a2);
  }

  else
  {
    result = sprintf1da(a1, a2, v6, 0, 0);
    v4 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void *sprintf_cm1d(void *a1, int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  result = sprintf1da(a1, v3, v6, 0, a2 >> 31);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_11f9(void *a1, double a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 1.0)
  {
    v7 = dbl_29975C3B0[a2 < 0.0] + a2;
    v8 = v7;
    v9 = v7 - v7;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (v8 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = -v8;
    }

    sprintf1da(a1, v11, v18, 0, v8 >> 31);
    v12 = (*a1)++;
    *v12 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v13 = v10 * 1000000000.0;
    if (v10 * 1000000000.0 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x80000000;
      }
    }

    else
    {
      v14 = 0x7FFFFFFF;
    }

    v17 = *MEMORY[0x29EDCA608];

    return sprintf_09d(a1, v14);
  }

  else
  {
    v3 = a2 * 1000000000.0;
    v4 = -0.5;
    if (v3 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x80000000;
      }
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }

    v15 = *MEMORY[0x29EDCA608];

    return sprintf_10f9(a1, v6);
  }
}

uint64_t sprintf_12f3(char **a1, double a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_29975C3C0[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v10;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_8d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    v19 = *MEMORY[0x29EDCA608];

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_55[++v3];
    }

    while (v3 != 2);
    v6 = a2 * 1000.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    v17 = *MEMORY[0x29EDCA608];

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_13f3(char **a1, double a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_29975C3C0[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v10;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_9d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    v19 = *MEMORY[0x29EDCA608];

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = *a1;
    v4 = 32;
    v5 = 1u;
    do
    {
      *a1 = v3 + 1;
      *v3 = v4;
      v3 = *a1;
      if (*a1 >= a1[3])
      {
        v3 = a1[2];
        *a1 = v3;
      }

      v4 = str_1_46[v5++];
    }

    while (v5 != 4);
    v6 = a2 * 1000.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    v17 = *MEMORY[0x29EDCA608];

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_14f3(char **a1, double a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_29975C3C0[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v10;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_10d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    v19 = *MEMORY[0x29EDCA608];

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_2_30[++v3];
    }

    while (v3 != 4);
    v6 = a2 * 1000.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    v17 = *MEMORY[0x29EDCA608];

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_p(uint64_t result, unint64_t a2)
{
  v2 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v3 = *result;
  v4 = 48;
  do
  {
    *result = v3 + 1;
    *v3 = v4;
    v3 = *result;
    if (*result >= *(result + 24))
    {
      v3 = *(result + 16);
      *result = v3;
    }

    v4 = str_6_21[++v2];
  }

  while (v2 != 2);
  for (i = 15; i != -1; --i)
  {
    v11[i - 1] = __const__Z9sprintf_pP10Cyc_bufferPKv_dec2HexChar[a2 & 0xF];
    a2 >>= 4;
  }

  v11[15] = 0;
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    do
    {
      *result = v3 + 1;
      *v3 = v6;
      v3 = *result;
      if (*result >= *(result + 24))
      {
        v3 = *(result + 16);
        *result = v3;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

double Horiz_Diff_Sqd(double *a1, const double *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = __sincos_stret(*a1);
  v6 = 1.0 / sqrt(v5.__sinval * v5.__sinval * -0.00669437999 + 1.0);
  v7 = a1[2];
  v8 = v5.__cosval * (v7 + v6 * 6378137.0);
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  v9 = *MEMORY[0x29EDCA608];
  v10 = (v4 - *a2) * (v7 + v6 * (v6 * v6) * 6335439.33);
  return (a1[1] - a2[1]) * v8 * ((a1[1] - a2[1]) * v8) + v10 * v10;
}

void SuplEndRecd::SuplEndRecd(SuplEndRecd *this)
{
  v5 = *MEMORY[0x29EDCA608];
  SuplState::SuplState(this);
  *v2 = &unk_2A1F88858;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 360) = -1;
  *(v2 + 364) = 0;
  *(v2 + 370) = 0;
  *(v2 + 378) = -1;
  *(v2 + 387) = 0;
  *(v2 + 384) = 0;
  *(v2 + 16) = 7;
  *(v2 + 32) = 6;
  v3 = operator new(0x1D0uLL, MEMORY[0x29EDC9418]);
  if (v3)
  {
    *v3 = 0;
    v3[2] = 0;
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = 0;
    *(v3 + 44) = 0;
    *(v3 + 13) = 0;
    v3[56] = -1;
    *(v3 + 29) = 0;
    v3[60] = 0;
    *(v3 + 10) = -16777216;
    *(v3 + 8) = 255;
    v3[8] = 0;
    *(v3 + 55) = 0;
    *(v3 + 56) = 0;
    *(v3 + 57) = 0;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 136) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 264) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 417) = 0u;
  }

  *(this + 5) = v3;
  v4 = *MEMORY[0x29EDCA608];
}

void SuplEndRecd::~SuplEndRecd(SuplEndRecd *this)
{
  v6 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88858;
  if (*(this + 16) == 6)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = v2[55];
      if (v3)
      {
        v2[56] = v3;
        operator delete(v3);
      }

      ASN1T_Velocity::U::~U((v2 + 9));
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      MEMORY[0x29C29EB20](v2, 0x1010C402AA3C6D1);
    }

    *(this + 5) = 0;
  }

  v5 = *MEMORY[0x29EDCA608];

  SuplState::~SuplState(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  SuplEndRecd::~SuplEndRecd(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  SuplEndRecd::~SuplEndRecd(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t SuplEndRecd::Init(SuplEndRecd *this)
{
  result = *(this + 17);
  v2 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return result;
}

SuplSession *SuplEndRecd::SetHash(SuplEndRecd *this)
{
  v7 = *MEMORY[0x29EDCA608];
  result = *(this + 1);
  if (result && (result = SuplSession::GetSuplInitRecd(result)) != 0 && (result = SuplInitRecd::FillHash(result, *(this + 5) + 440, *(*(this + 1) + 376), *(*(this + 1) + 532)), result))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "SetHash", 515);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }
  }

  else
  {
    *(*(this + 5) + 2) = 1;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplEndRecd::ProcessSuplMessage(uint64_t a1, uint64_t *a2)
{
  v39 = *MEMORY[0x29EDCA608];
  if (*(a1 + 8))
  {
    v3 = SuplState::ProcessSuplMessage(a1, a2);
    v26 = 0;
    v4 = *(a1 + 40);
    if (*(v4 + 1))
    {
      Instance = SuplUtils::GetInstance(v3);
      v4 = *(a1 + 40);
      SuplUtils::ConvertSuplEndStatusToGNSupl(Instance, *(v4 + 432), &v26);
    }

    if (!*v4)
    {
      v18 = LcsSuplGlueLayer::GetInstance(v3);
      LcsSuplGlueLayer::SendSuplMsgStatus(v18, *(*(a1 + 8) + 376), 6, 0, v26, 0);
      *(a1 + 361) = -1;
LABEL_31:
      SuplEndRecd::TerminateSession(a1, 0, 4);
      v17 = 0;
      goto LABEL_32;
    }

    v6 = *(v4 + 42);
    if (*(v4 + 41))
    {
      if (*(v4 + 42))
      {
        *(a1 + 360) = 1;
        v7 = *(v4 + 44);
        *(a1 + 368) = v7;
        v8 = *(v4 + 43) == 1;
        *(a1 + 362) = v8;
        v9 = *(v4 + 48);
        *(a1 + 372) = v9;
        v10 = *(v4 + 58);
        *(a1 + 376) = v10;
        v11 = *(v4 + 56) == 1;
        *(a1 + 363) = v11;
        v12 = *(v4 + 60);
        *(a1 + 381) = v12;
        *(a1 + 382) = *(v4 + 55);
        if (!*(v4 + 40))
        {
          v13 = *(a1 + 378);
          v14 = *(a1 + 379);
LABEL_23:
          *__str = 0x100000000;
          v28 = 0;
          v35 = 0;
          v37 = -1;
          v38 = 0;
          if (v8)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          v29 = v20;
          v30 = v7;
          v31 = v9;
          v32 = v10;
          if (v11)
          {
            v21 = 2;
          }

          else
          {
            v21 = 1;
          }

          v36 = v21;
          v33 = v13;
          v34 = v14;
          LOBYTE(v37) = v12;
          v22 = LcsSuplGlueLayer::GetInstance(v3);
          LcsSuplGlueLayer::SendSuplMsgStatus(v22, *(*(a1 + 8) + 376), 6, 0, v26, __str);
          v23 = *(*(a1 + 40) + 16);
          if (*(*(a1 + 40) + 24) - v23 == 13)
          {
            *(a1 + 384) = v23[1] + 10 * *v23 + 1472;
            *(a1 + 386) = v23[3] + 10 * v23[2] - 16;
            *(a1 + 387) = v23[5] + 10 * v23[4] - 16;
            *(a1 + 388) = v23[7] + 10 * v23[6] - 16;
            *(a1 + 389) = v23[9] + 10 * v23[8] - 16;
            *(a1 + 390) = v23[11] + 10 * v23[10] - 16;
          }

          goto LABEL_31;
        }

LABEL_21:
        v13 = *(v4 + 52);
        *(a1 + 378) = v13;
        v14 = *(v4 + 53);
        *(a1 + 379) = v14;
        *(a1 + 380) = *(v4 + 54);
        goto LABEL_23;
      }

      if (*(v4 + 40))
      {
        v12 = 0;
        v11 = 0;
        v10 = 0;
        *(a1 + 360) = 1;
        v7 = *(v4 + 44);
        *(a1 + 368) = v7;
        v8 = *(v4 + 43) == 1;
        *(a1 + 362) = v8;
        v9 = *(v4 + 48);
        *(a1 + 372) = v9;
        *(a1 + 376) = 0;
        *(a1 + 363) = 0;
        *(a1 + 381) = 0;
        *(a1 + 382) = *(v4 + 55);
        goto LABEL_21;
      }
    }

    else if (*(v4 + 42))
    {
      v12 = *(v4 + 40);
      if (!v12)
      {
        v14 = 0;
        v13 = 0;
        *(a1 + 360) = 1;
        v7 = *(v4 + 44);
        *(a1 + 368) = v7;
        v8 = *(v4 + 43) == 1;
        *(a1 + 362) = v8;
        v9 = *(v4 + 48);
        *(a1 + 372) = v9;
        v10 = *(v4 + 58);
        *(a1 + 376) = v10;
        v19 = *(v4 + 56) == 1;
        *(a1 + 378) = 0;
        v11 = v19;
        *(a1 + 363) = v11;
        *(a1 + 382) = 0;
        goto LABEL_23;
      }
    }

    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    *(a1 + 360) = 1;
    v7 = *(v4 + 44);
    *(a1 + 368) = v7;
    v8 = *(v4 + 43) == 1;
    *(a1 + 362) = v8;
    v9 = *(v4 + 48);
    *(a1 + 376) = 0;
    *(a1 + 379) = 0;
    *(a1 + 372) = v9;
    *(a1 + 363) = 0;
    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "ProcessSuplMessage", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
  }

  v17 = -1;
LABEL_32:
  v24 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t SuplEndRecd::TerminateSession(uint64_t result, __int16 a2, uint64_t a3)
{
  v4 = result;
  v22 = *MEMORY[0x29EDCA608];
  v5 = *(result + 8);
  if (v5)
  {
    v6 = *(v5 + 380) == 1;
  }

  else
  {
    v6 = 1;
  }

  v21 = -1;
  v20 = a2;
  v7 = *(result + 40);
  if (v7[1])
  {
    v8 = v7[432];
    if (v8 != 24)
    {
      v20 = -16;
      if ((v8 - 20) <= 0xFFFFFFFD)
      {
        v21 = v8;
      }
    }
  }

  if (*v7)
  {
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(result + 361) = -1;
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  v9 = *(v5 + 376);
  if (v6)
  {
    v20 = -16;
    v21 = 15;
  }

  Instance = SuplProvider::GetInstance(result);
  v11 = LcsSuplGlueLayer::GetInstance(Instance);
  v12 = (**v11)(v11, &v20, v4 + 360, v9);
  *(Instance + 6) = *(Instance + 5);
  if (a3 == 4)
  {
    v13 = *(v4 + 40);
    if (*(v13 + 1) && (*(v13 + 1) != 1 || *(v13 + 432)))
    {
      a3 = 4;
    }

    else
    {
      a3 = 2;
    }
  }

  v14 = SuplPosPayloadHandler::GetInstance(v12);
  v15 = *(*(v4 + 8) + 376);
  v16 = LcsSuplGlueLayer::GetInstance(v14);
  (*(*v16 + 8))(v16, v15, a3, v4 + 360);
  v17 = SuplPosPayloadHandler::ResetLppParams(v14);
  v18 = SuplProvider::GetInstance(v17);
  result = SuplProvider::Disconnect(v18, *(*(v4 + 8) + 376));
LABEL_21:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplEndRecd::SendSuplMessage(SuplProvider *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if (v4)
  {
    ASN1T_SessionID::operator=(a1 + 48, v4 + 64);
  }

  v14[0] = a2;
  v14[1] = a1 + 24;
  v5 = SuplMessage::Encode(v14);
  if (v5)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "SendSuplMessage", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
      result = 0;
    }
  }

  else
  {
    *__str = 0;
    if (*(*(a1 + 5) + 1))
    {
      Instance = SuplUtils::GetInstance(v5);
      SuplUtils::ConvertSuplEndStatusToGNSupl(Instance, *(*(a1 + 5) + 432), __str);
      v11 = *__str;
    }

    else
    {
      v11 = 0;
    }

    v12 = LcsSuplGlueLayer::GetInstance(v5);
    LcsSuplGlueLayer::SendSuplMsgStatus(v12, *(*(a1 + 1) + 376), 7, 0, v11, 0);
    SuplState::SendSuplMessage(a1, a2);
    result = 1;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ASN1T_SessionID::operator=(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  ASN1T_SETId::U::operator=(a1 + 24, a2 + 24);
  if (a1 == a2)
  {
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 200), *(a2 + 200), *(a2 + 208), *(a2 + 208) - *(a2 + 200));
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 240), *(a2 + 240), *(a2 + 248), *(a2 + 248) - *(a2 + 240));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 264), *(a2 + 264), *(a2 + 272), *(a2 + 272) - *(a2 + 264));
    std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((a1 + 288), *(a2 + 288), *(a2 + 296), *(a2 + 296) - *(a2 + 288));
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

void SuplEndRecd::SetSessionIdPresent(SuplEndRecd *this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(this + 48) == 1 || (*(this + 48) = 1, (v2 = *(this + 1)) == 0))
  {
    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    *(this + 28) = *(v2 + 376);
    v3 = *(v2 + 532);
    Instance = SuplUtils::GetInstance(this);
    v5 = *MEMORY[0x29EDCA608];

    SuplUtils::FillSetId(Instance, this + 64, v3);
  }
}

void ASN1T_Velocity::U::~U(ASN1T_Velocity::U *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v5 = *(this + 33);
  if (v5)
  {
    *(this + 34) = v5;
    operator delete(v5);
  }

  v6 = *(this + 30);
  if (v6)
  {
    *(this + 31) = v6;
    operator delete(v6);
  }

  v7 = *(this + 27);
  if (v7)
  {
    *(this + 28) = v7;
    operator delete(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    *(this + 25) = v8;
    operator delete(v8);
  }

  v9 = *(this + 21);
  if (v9)
  {
    *(this + 22) = v9;
    operator delete(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    *(this + 19) = v10;
    operator delete(v10);
  }

  v11 = *(this + 15);
  if (v11)
  {
    *(this + 16) = v11;
    operator delete(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    *(this + 13) = v12;
    operator delete(v12);
  }

  v13 = *(this + 9);
  if (v13)
  {
    *(this + 10) = v13;
    operator delete(v13);
  }

  v14 = *(this + 6);
  if (v14)
  {
    *(this + 7) = v14;
    operator delete(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    *(this + 4) = v15;
    operator delete(v15);
  }

  v16 = *this;
  if (*this)
  {
    *(this + 1) = v16;
    operator delete(v16);
  }

  v17 = *MEMORY[0x29EDCA608];
}

uint64_t ASN1T_SETId::U::operator=(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 == a2)
  {
    *(a1 + 120) = *(a2 + 120);
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 24), *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 72), *(a2 + 72), *(a2 + 80), *(a2 + 80) - *(a2 + 72));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 96), *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
    *(a1 + 120) = *(a2 + 120);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 128), *(a2 + 128), *(a2 + 136), *(a2 + 136) - *(a2 + 128));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 152), *(a2 + 152), *(a2 + 160), *(a2 + 160) - *(a2 + 152));
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

void SuplPosRecd::SuplPosRecd(SuplPosRecd *this)
{
  v8 = *MEMORY[0x29EDCA608];
  SuplState::SuplState(this);
  *v2 = &unk_2A1F888B0;
  *(v2 + 360) = 1;
  *(v2 + 16) = 5;
  *(v2 + 32) = 5;
  v3 = operator new(0x200uLL, MEMORY[0x29EDC9418]);
  if (v3)
  {
    *(v3 + 136) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 8) = 0u;
    v3[144] = -1;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0u;
    *(v3 + 63) = 0;
    *(v3 + 152) = 0u;
    *(v3 + 264) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 472) = 0u;
    *(v3 + 488) = 0u;
    *v3 = 0;
    *(this + 5) = v3;
    *(this + 17) = 0;
    *(this + 361) = 0;
  }

  else
  {
    *(this + 5) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "SuplPosRecd", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void SuplPosRecd::~SuplPosRecd(SuplPosRecd *this)
{
  v7[1] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F888B0;
  if (*(this + 16) == 5)
  {
    v2 = *(this + 5);
    if (v2)
    {
      ASN1T_Velocity::U::~U((v2 + 152));
      v7[0] = (v2 + 120);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v7);
      v7[0] = (v2 + 96);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v7);
      v3 = *(v2 + 64);
      if (v3)
      {
        *(v2 + 72) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        *(v2 + 48) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        *(v2 + 24) = v5;
        operator delete(v5);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C40C2B5F699);
    }

    *(this + 5) = 0;
  }

  SuplState::~SuplState(this);
  v6 = *MEMORY[0x29EDCA608];
}

{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  SuplPosRecd::~SuplPosRecd(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  SuplPosRecd::~SuplPosRecd(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

void SuplPosRecd::SendSuplEnd(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *(a1 + 17) = 1;
  (*(*a1 + 16))(a1);
  SuplStateObject = SuplSession::GetSuplStateObject(*(a1 + 8));
  *(SuplStateObject[5] + 432) = a2;
  *(SuplStateObject[5] + 1) = 1;
  std::vector<unsigned char>::vector[abi:ne200100](__p, 3000);
  v8[0] = __p;
  v8[1] = 0;
  v9 = 0;
  (*(*SuplStateObject + 32))(SuplStateObject, v8);
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  SuplEndRecd::TerminateSession(SuplStateObject, -1, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_2995F8028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplPosRecd::UpdateState(uint64_t this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(this + 361))
  {
    v1 = 6;
  }

  else
  {
    if (!*(this + 17))
    {
      v5 = *MEMORY[0x29EDCA608];
      v6 = *MEMORY[0x29EDCA608];
      return this;
    }

    v1 = 7;
  }

  v2 = *(this + 8);
  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];

  return SuplState::UpdateState(this, v1, v2);
}

void SuplPosRecd::PrepareSuplMessage(void *a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  *(a1 + 360) = 0;
  if (!a2)
  {
    std::vector<unsigned char>::vector[abi:ne200100](__p, 3000);
    v14[0] = __p;
    v14[1] = 0;
    v15 = 0;
    v4 = a1[1];
    if (v4)
    {
      ASN1T_SessionID::operator=((a1 + 6), v4 + 64);
      v12[0] = v14;
      v12[1] = a1 + 3;
      v5 = SuplMessage::Encode(v12);
      if (v5)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v6 = mach_continuous_time();
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "PrepareSuplMessage", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
        }
      }

      else
      {
        Instance = LcsSuplGlueLayer::GetInstance(v5);
        LcsSuplGlueLayer::SendSuplMsgStatus(Instance, *(a1[1] + 376), 5, 0, 0, 0);
        if (SuplState::SendSuplMessage(a1, v14) == 1 && *(a1[1] + 408) == 1)
        {
          *(a1 + 361) = 1;
          (*(*a1 + 16))(a1);
        }
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "PrepareSuplMessage", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_17;
  }

  if (*(a1[1] + 408) != 1)
  {
LABEL_17:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v3 = *MEMORY[0x29EDCA608];

  SuplPosRecd::SendSuplEnd(a1, 4);
}

void sub_2995F8388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplPosRecd::Init(SuplPosRecd *this)
{
  v1 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t SuplPosRecd::ProcessSuplMessage(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = SuplState::ProcessSuplMessage(a1, a2);
  Instance = SuplUtils::GetInstance(v4);
  IsLoggingAllowed = SuplUtils::ValidateSetSessionId(Instance, *(*(a1 + 8) + 72), *(a1 + 56));
  v7 = IsLoggingAllowed;
  if (!IsLoggingAllowed)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "ProcessSuplPos", 515);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }
  }

  v10 = *(a1 + 8);
  v11 = SuplUtils::GetInstance(IsLoggingAllowed);
  v12 = SuplUtils::ValidateSlpSessionId(v11, a1 + 248, v10 + 264);
  if (!v12)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "ProcessSuplPos", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    }

    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    ASN1T_SessionID::operator=(*(a1 + 8) + 64, a1 + 48);
    v17 = a1;
    v18 = 12;
LABEL_12:
    SuplPosRecd::SendSuplEnd(v17, v18);
    goto LABEL_13;
  }

  v13 = *(a1 + 32);
  if (v13 == 5)
  {
    v21 = LcsSuplGlueLayer::GetInstance(v12);
    v22 = LcsSuplGlueLayer::SendSuplMsgStatus(v21, *(*(a1 + 8) + 376), 4, 0, 0, 0);
    v23 = SuplPosPayloadHandler::GetInstance(v22);
    v24 = SuplPosPayloadHandler::ProcessPosPayload(v23, *(a1 + 40), *(a1 + 8));
    if (!v24)
    {
      goto LABEL_13;
    }

    v25 = v24;
    v17 = a1;
    if (v25 == 65529)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_12;
  }

  if (v13 != 6)
  {
    v17 = a1;
    v18 = 2;
    goto LABEL_12;
  }

  *(a1 + 17) = 1;
  (*(*a1 + 16))(a1);
  SuplStateObject = SuplSession::GetSuplStateObject(*(a1 + 8));
  (*(*SuplStateObject + 40))(SuplStateObject, a2);
LABEL_13:
  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

void SuplPosRecd::SetPayLoadPosResponses(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "SetPayLoadPosResponses", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }

    goto LABEL_9;
  }

  v2 = *(a1 + 40);
  if (!v2 || (*(v2 + 8) = 4, *(*(a1 + 40) + 88) = 1, v3 = (*(a1 + 40) + 96), v3 == (a2 + 8)))
  {
LABEL_9:
    v10 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = *(a2 + 16);
  v5 = *MEMORY[0x29EDCA608];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *(a2 + 8)) >> 3);
  v7 = *(a2 + 8);

  std::vector<ASN1T_PosPayLoad_lpppayload>::__assign_with_size[abi:ne200100]<ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(v3, v7, v4, v6);
}

void std::vector<ASN1T_PosPayLoad_lpppayload>::__assign_with_size[abi:ne200100]<ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>>(a1, v12);
      }
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *>(a2, a3, v9);
    v15 = a1[1];
    if (v15 != v14)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 3);
        v16 -= 3;
        v17 = v18;
        if (v18)
        {
          *(v15 - 2) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *>(a2, (a2 + v13), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(a1, (a2 + v13), a3, a1[1]);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v13 = *MEMORY[0x29EDCA608];
  v9 = a4;
  v10 = a4;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v10 + 3;
      v10 += 3;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_2995F8AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::__copy_impl::operator()[abi:ne200100]<ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *>(char **a1, char **a2, char **a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  v6 = *MEMORY[0x29EDCA608];
  return a3;
}

void NK_Comp_Sol_Acc(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x29EDCA608];
  ECEF2FSD_RotM((a2 + 832), *(a1 + 11192) * 0.0174532925, v79);
  v73 = 0;
  v4 = (a2 + 24312);
  memset_pattern16((a2 + 24136), &unk_29975C410, 0x58uLL);
  memset_pattern16((a2 + 24224), &unk_29975C410, 0x58uLL);
  memset_pattern16((a2 + 24312), &unk_29975C400, 0x58uLL);
  *(a2 + 24400) = 0;
  if ((*(a1 + 128) & 1) == 0)
  {
    if (*(a2 + 20016) <= 1.05)
    {
      v5 = *(a2 + 20024);
      if (v5 <= 1.05)
      {
        goto LABEL_8;
      }

      *(a1 + 144) = 0;
    }

    else
    {
      *(a1 + 144) = 0;
      *(a1 + 172) = 1;
      v5 = *(a2 + 20024);
    }

    if (v5 > 1.05)
    {
      *(a1 + 173) = 1;
    }

LABEL_8:
    ud2var(a1 + 872, 0xBu, 1, 1u, (a2 + 24136));
    *&v80 = 0;
    if (R8_EQ((a2 + 736), &v80) && *(a2 + 24136) > 1.0e18)
    {
      *(a2 + 24136) = 0x43ABC16D674EC800;
    }

    v6 = *(a2 + 20016);
    if (v6 > 1.05)
    {
      *&v80 = 0;
      if (!R8_EQ((a2 + 736), &v80) && *(a2 + 968) != 1)
      {
        v7 = (v6 + -1.0) * 0.25 * *(a2 + 24136);
        Apply_Q_Boost(v7, 0, 1u, (a1 + 872), &v73, &v80);
        *(a2 + 24136) = v7 + *(a2 + 24136);
        *(a1 + 208) = v7;
        EvLog_v("Q-Boost 3 ClkBias %g  post_QB[0] %g", sqrt(v7), *(a2 + 20016));
      }
    }

    *(a2 + 24224) = *(a2 + 24136) + *(a1 + 7248);
    ud2var(a1 + 872, 0xBu, 2, 1u, (a2 + 24144));
    *v77 = 0;
    if (R8_EQ((a2 + 744), v77) && *(a2 + 24144) > 1.0e18)
    {
      *(a2 + 24144) = 0x43ABC16D674EC800;
    }

    v8 = *(a2 + 20016);
    if (v8 > 1.05)
    {
      *v77 = 0;
      if (!R8_EQ((a2 + 744), v77) && *(a2 + 968) != 1)
      {
        v9 = (v8 + -1.0) * 0.25 * *(a2 + 24144);
        Apply_Q_Boost(v9, 1u, 1u, (a1 + 872), &v73, &v80);
        *(a2 + 24144) = v9 + *(a2 + 24144);
        if (*(a1 + 208) < v9)
        {
          *(a1 + 208) = v9;
        }

        EvLog_v("Q-Boost 3 ClkGLON %g  post_QB[0] %g", sqrt(v9), *(a2 + 20016));
      }
    }

    *(a2 + 24232) = *(a2 + 24144) + *(a1 + 7248);
    ud2var(a1 + 872, 0xBu, 3, 1u, (a2 + 24152));
    *v77 = 0;
    if (R8_EQ((a2 + 752), v77) && *(a2 + 24152) > 1.0e18)
    {
      *(a2 + 24152) = 0x43ABC16D674EC800;
    }

    v10 = *(a2 + 20016);
    if (v10 > 1.05)
    {
      *v77 = 0;
      if (!R8_EQ((a2 + 752), v77) && *(a2 + 968) != 1)
      {
        v11 = (v10 + -1.0) * 0.25 * *(a2 + 24152);
        Apply_Q_Boost(v11, 2u, 1u, (a1 + 872), &v73, &v80);
        *(a2 + 24152) = v11 + *(a2 + 24152);
        if (*(a1 + 208) < v11)
        {
          *(a1 + 208) = v11;
        }

        EvLog_v("Q-Boost 3 ClkBDS %g  post_QB[0] %g", sqrt(v11), *(a2 + 20016));
      }
    }

    *(a2 + 24240) = *(a2 + 24152) + *(a1 + 7248);
    ud2var(a1 + 872, 0xBu, 4, 1u, (a2 + 24160));
    v12 = *(a2 + 20024);
    if (v12 > 1.05 && *(a2 + 968) != 1)
    {
      v13 = (v12 + -1.0) * 0.25 * *(a2 + 24160);
      Apply_Q_Boost(v13, 3u, 1u, (a1 + 872), &v73, &v80);
      *(a2 + 24160) = v13 + *(a2 + 24160);
      *(a1 + 216) = v13;
      EvLog_v("Q-Boost 4 ClkD %g  post_QB[1] %g", sqrt(v13), *(a2 + 20024));
    }

    v14 = 0.01;
    *(a2 + 24248) = *(a2 + 24160) + *(a2 + 656) * 0.01;
    ud2var(a1 + 872, 0xBu, 5, 1u, (a2 + 24168));
    v15 = *(a2 + 24168);
    *(a2 + 24256) = v15;
    v16 = *(a2 + 20016);
    if (v16 > 1.05 && *(a2 + 12) <= 10 && *(a2 + 968) != 1)
    {
      v17 = v15 * (v16 + -1.0 + v16 + -1.0);
      Apply_Q_Boost(v17, 4u, 1u, (a1 + 872), &v73, &v80);
      *(a2 + 24168) = v17 + *(a2 + 24168);
      *(a1 + 208) = v17 + *(a1 + 208);
      EvLog_v("Q-Boost 3 dT_Sync %g  post_QB[0] %g", sqrt(v17), *(a2 + 20016));
      v16 = *(a2 + 20016);
    }

    if (v16 > 1.05 && *(a2 + 968) != 1)
    {
      Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), (a2 + 24176));
      v18 = 0;
      v19 = 3022;
      v20 = v73;
      do
      {
        v21 = (*(a2 + 20016) + -1.0) * *(a2 + 8 * v19);
        if (v18 == 48)
        {
          v21 = v21 * *(a1 + 120);
        }

        v82[0] = 0;
        v81 = 0u;
        v80 = 0u;
        *&v82[1] = *(a2 + v18 + 832);
        v82[3] = *(a2 + v18 + 848);
        v77[0] = 0;
        if (v21 > 0.0)
        {
          rnk1_core((a1 + 872), 8u, v21, &v80, v77);
          if (v77[0])
          {
            ++v20;
          }
        }

        *(a1 + 208) = v21 + *(a1 + 208);
        EvLog_v("Q-Boost 3 Pos%d %g  post_QB[0] %g", v19 - 3022, sqrt(v21), *(a2 + 20016));
        v18 += 24;
        ++v19;
      }

      while (v18 != 72);
      v73 = v20;
    }

    v22 = (a2 + 22848);
    if ((*(a1 + 29) & 1) == 0)
    {
      if (*(a2 + 22992) == 1 && *(a2 + 23064) <= 400000000.0 || *(a2 + 24778) >= 3u)
      {
        *(a1 + 29) = 1;
      }

      else
      {
        v23 = *(a2 + 24136);
        if (v23 < 40000.0 && (*v22 & 1) == 0)
        {
          v24 = 40000.0 - v23;
          Apply_Q_Boost(40000.0 - v23, 0, 1u, (a1 + 872), &v73, &v80);
          *(a2 + 24136) = v24;
          *(a2 + 24224) = v24 + *(a1 + 7248);
          DbgLog_v(1, "NK_Comp_Sol_Acc: GPS Clock Bias var boosted %g", v24);
        }

        v25 = *(a2 + 24144);
        if (v25 < 40000.0 && (*v22 & 1) == 0)
        {
          v26 = 40000.0 - v25;
          Apply_Q_Boost(40000.0 - v25, 1u, 1u, (a1 + 872), &v73, &v80);
          *(a2 + 24144) = v26;
          *(a2 + 24232) = v26 + *(a1 + 7248);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Glonass Clock Bias var boosted %g", v26);
        }

        v27 = *(a2 + 24152);
        if (v27 < 40000.0 && (*v22 & 1) == 0)
        {
          v28 = 40000.0 - v27;
          Apply_Q_Boost(40000.0 - v27, 2u, 1u, (a1 + 872), &v73, &v80);
          *(a2 + 24152) = v28;
          *(a2 + 24240) = v28 + *(a1 + 7248);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Beidou Clock Bias var boosted %g", v28);
        }

        for (i = 0; i != 3; ++i)
        {
          *v77 = 0;
          ud2var(a1 + 872, 0xBu, i + 6, 1u, v77);
          if (*v77 < 40000.0)
          {
            v30 = 40000.0 - *v77;
            Apply_Q_Boost(40000.0 - *v77, i + 5, 1u, (a1 + 872), &v73, &v80);
            DbgLog_v(1, "NK_Comp_Sol_Acc: Pos var boosted %d %g", i, v30);
          }
        }
      }
    }

    Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), (a2 + 24176));
    *(a2 + 24400) = v31;
    Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, v79, (a2 + 24448));
    *(a2 + 24448) = vsqrtq_f64(*(a2 + 24448));
    *(a2 + 24464) = sqrt(*(a2 + 24464));
    Comp_NEDvar_UDU(a1 + 872, 0xBu, 8, v79, (a2 + 24472));
    *(a2 + 24472) = vsqrtq_f64(*(a2 + 24472));
    *(a2 + 24488) = sqrt(*(a2 + 24488));
    *(a2 + 24400) = *(a2 + 24400) + *(a1 + 7280);
    v32 = (a1 + 7256);
    v33 = (a2 + 24264);
    v34 = 3;
    do
    {
      v35 = *v32++;
      *v33 = *(v33 - 11) + v35;
      ++v33;
      --v34;
    }

    while (v34);
    if (*(a2 + 20024) > 1.05 && *(a2 + 968) != 1)
    {
      Comp_NEDvar_UDU(a1 + 872, 0xBu, 8, (a2 + 832), (a2 + 24200));
      v36 = 0;
      v37 = 3025;
      v38 = v73;
      do
      {
        v39 = (*(a2 + 20024) + -1.0) * *(a2 + 8 * v37);
        if (v36 == 48)
        {
          v39 = v39 * *(a1 + 120);
        }

        v81 = 0u;
        memset(v82, 0, sizeof(v82));
        v80 = 0u;
        v83 = *(a2 + v36 + 832);
        v84 = *(a2 + v36 + 848);
        v77[0] = 0;
        if (v39 > 0.0)
        {
          rnk1_core((a1 + 872), 0xBu, v39, &v80, v77);
          if (v77[0])
          {
            ++v38;
          }
        }

        *(a1 + 216) = v39 + *(a1 + 216);
        EvLog_v("Q-Boost 4 Vel%d %g  post_QB[1] %g", v37 - 3025, sqrt(v39), *(a2 + 20024));
        v36 += 24;
        ++v37;
      }

      while (v36 != 72);
      v73 = v38;
    }

    Comp_NEDvar_UDU(a1 + 872, 0xBu, 8, (a2 + 832), (a2 + 24200));
    memset(v77, 0, sizeof(v77));
    v78 = 0.0;
    if (*(a1 + 11028) >= 4u)
    {
      v40 = *(a2 + 656);
      if (v40 > 0.0)
      {
        v41 = 0;
        v74 = 0.0;
        v75 = 0.0;
        v76 = 0.0;
        do
        {
          *(&v74 + v41) = -*(a2 + 25248 + v41) / v40;
          v41 += 8;
        }

        while (v41 != 24);
        v42 = 0;
        v43 = v74;
        v44 = v75;
        v45 = (a2 + 848);
        v46 = v76;
        do
        {
          v47 = *(v45 - 1) * v44 + *(v45 - 2) * v43;
          v48 = *v45;
          v45 += 3;
          *&v77[v42] = v47 + v48 * v46;
          v42 += 2;
        }

        while (v42 != 6);
LABEL_109:
        for (j = 0; j != 6; j += 2)
        {
          v64 = a2 + j * 4;
          v65 = *(a2 + j * 4 + 24200) + v40 * (*&v77[j] * 0.5) * (v40 * (*&v77[j] * 0.5));
          *(v64 + 24200) = v65;
          *(v64 + 24288) = v65 + v40 * 0.0001;
        }

        if (v73)
        {
          *(a1 + 128) = 1;
          *(a1 + 132) = 23;
          memset_pattern16((a2 + 24136), &unk_29975C410, 0x58uLL);
          memset_pattern16((a2 + 24224), &unk_29975C410, 0x58uLL);
          *(a2 + 24400) = 0;
        }

        goto LABEL_113;
      }
    }

    v49 = *(a1 + 20);
    if (v49 <= 4)
    {
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          __asm { FMOV            V0.2D, #2.0 }

          *v77 = _Q0;
          v56 = 4.0;
        }

        else
        {
          __asm { FMOV            V0.2D, #3.0 }

          *v77 = _Q0;
          v56 = 9.0;
          v14 = 0.00694444444;
        }

        goto LABEL_108;
      }

      v50 = 0.0;
      if (v49 < 2)
      {
LABEL_105:
        *v77 = sqrt(v50);
        *&v77[2] = *v77;
        v56 = 1000000.0;
        if (v49 < 2)
        {
          v56 = 0.0;
        }

        v14 = 1.0;
        goto LABEL_108;
      }

      if (v49 == 2)
      {
        __asm { FMOV            V0.2D, #0.5 }

        *v77 = _Q0;
        v56 = 0.25;
        v14 = 0.0204081633;
LABEL_108:
        v78 = sqrt(v56 * v14);
        v40 = *(a2 + 656);
        goto LABEL_109;
      }

LABEL_104:
      v50 = 1000000.0;
      goto LABEL_105;
    }

    if (v49 > 6)
    {
      if (v49 != 7)
      {
        if (v49 == 8)
        {
          *v77 = vdupq_n_s64(0x408F400000000000uLL);
          v14 = 1.0;
          v56 = 1000000.0;
          goto LABEL_108;
        }

        goto LABEL_104;
      }

      __asm { FMOV            V0.2D, #20.0 }

      *v77 = _Q0;
      v14 = 1.0;
      *&v58 = 400.0;
    }

    else
    {
      if (v49 == 5)
      {
        __asm { FMOV            V0.2D, #5.0 }

        *v77 = _Q0;
        v56 = 25.0;
        v14 = 0.0625;
        goto LABEL_108;
      }

      __asm { FMOV            V0.2D, #10.0 }

      *v77 = _Q0;
      v14 = 0.25;
      *&v58 = 100.0;
    }

    v56 = *&v58;
    goto LABEL_108;
  }

LABEL_113:
  v66 = 11;
  while (*(v4 - 22) > 0.0)
  {
    *v4 = sqrt(*(v4 - 11));
    ++v4;
    if (!--v66)
    {
      goto LABEL_124;
    }
  }

  *(a1 + 128) = 1;
  *(a1 + 132) = 91;
  memset_pattern16((a2 + 24136), &unk_29975C410, 0x58uLL);
  memset_pattern16((a2 + 24224), &unk_29975C410, 0x58uLL);
  v67 = (a2 + 24320);
  v68 = xmmword_299728F20;
  v69 = 12;
  v70 = vdupq_n_s64(0xBuLL);
  v71 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v70, v68)).u8[0])
    {
      *(v67 - 1) = 0x41634325C0000000;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v68)).i32[1])
    {
      *v67 = 0x41634325C0000000;
    }

    v68 = vaddq_s64(v68, v71);
    v67 += 2;
    v69 -= 2;
  }

  while (v69);
  *(a2 + 24400) = 0;
LABEL_124:
  v72 = *MEMORY[0x29EDCA608];
}

uint64_t SuplLppProvider::GetInstance(SuplLppProvider *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (SuplLppProvider::GetInstance(void)::pred_suplLppProvider != -1)
  {
    dispatch_once(&SuplLppProvider::GetInstance(void)::pred_suplLppProvider, &__block_literal_global_3);
  }

  result = SuplLppProvider::m_supl_lpp_provider;
  if (!SuplLppProvider::m_supl_lpp_provider)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplLppProvider.cpp", 42, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN15SuplLppProvider11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(0x18uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  SuplLppProvider::m_supl_lpp_provider = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplLppProvider::SetLppAdPayload(SuplProvider *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
LABEL_6:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, a2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SetLppAdPayload", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    goto LABEL_14;
  }

  v2 = a2;
  v3 = *(SuplProvider::GetInstance(a1) + 32);
  if (!v3)
  {
LABEL_5:
    LODWORD(a2) = 0;
    goto LABEL_6;
  }

  while (*v3 != *v2)
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if ((*(v2 + 32) || *(v2 + 8) == *(v2 + 16)) && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SetLppAdPayload", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
  }

  result = SuplSessionVer2::SetLPPAdPayLoad((v3 + 16), v2);
  v9 = *(v3 + 520);
  if (v9)
  {
    result = SuplSession::ConnectInd((v3 - 8), v9);
  }

LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void *SuplLppProvider::SetLppCapPayload(void *result, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_4;
  }

  v2 = a2;
  if (*(a2 + 4) || (v6 = *(a2 + 8), v7 = *(v2 + 16), v8 = (v2 + 8), v6 == v7))
  {
    LODWORD(a2) = 0;
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, a2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "SetLppCapPayload", 515);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }

    goto LABEL_6;
  }

  if (v8 == result)
  {
LABEL_6:
    v5 = *MEMORY[0x29EDCA608];
    return result;
  }

  v9 = *MEMORY[0x29EDCA608];

  return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(result, v6, v7, v7 - v6);
}

void NK_Add_Nominal_PN(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double *a5, uint64_t a6, double *a7)
{
  v92 = *MEMORY[0x29EDCA608];
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  ECEF2FSD_RotM((a2 + 208), *(a1 + 11192) * 0.0174532925, v82);
  __asm { FMOV            V0.2D, #1.0 }

  v84 = _Q0;
  v18 = *(a2 + 32);
  if (v18 < 0.0)
  {
    goto LABEL_97;
  }

  v77 = a7;
  v19 = v18 * v18;
  *&v85 = 0x3FF0000000000000;
  v20 = *(a4 + 24);
  v21 = v18 * (CP_Noise_dT_Sync[*(a2 + 16)] + *(a4 + 32) + v18 * v18 * v20 * 0.0833333333);
  v22 = v21;
  if (a3)
  {
    v22 = v21 + *(a4 + 16);
  }

  v23 = 0;
  v81 = 0;
  v80 = v18;
  if (v22 > 0.0)
  {
    rnk1_core(a5, 1u, v22, &v85, &v81);
    v18 = v80;
    v20 = *(a4 + 24);
    v21 = v80 * (CP_Noise_dT_Sync[*(a2 + 16)] + *(a4 + 32) + v19 * v20 * 0.0833333333);
    v23 = v81 != 0;
  }

  *&v85 = 0;
  *(&v85 + 1) = 0x3FF0000000000000;
  v24 = v21;
  if (a3)
  {
    v24 = v21 + *(a4 + 16);
  }

  v81 = 0;
  if (v24 > 0.0)
  {
    rnk1_core(a5, 2u, v24, &v85, &v81);
    v18 = v80;
    v20 = *(a4 + 24);
    v21 = v80 * (CP_Noise_dT_Sync[*(a2 + 16)] + *(a4 + 32) + v19 * v20 * 0.0833333333);
    v25 = v23 ? 2 : 1;
    if (v81)
    {
      v23 = v25;
    }
  }

  v85 = 0uLL;
  *&v86 = 0x3FF0000000000000;
  if (a3)
  {
    v21 = v21 + *(a4 + 16);
  }

  v26 = 0;
  v81 = 0;
  v27 = sqrt(v18);
  if (v21 > 0.0)
  {
    rnk1_core(a5, 3u, v21, &v85, &v81);
    v18 = v80;
    v20 = *(a4 + 24);
    v26 = v81 != 0;
  }

  v28 = 0;
  *&v85 = v18 * v27 * 0.5;
  *(&v85 + 1) = *&v85;
  *&v86 = *&v85;
  *(&v86 + 1) = v27;
  v81 = 0;
  if (v20 > 0.0)
  {
    rnk1_core(a5, 4u, v20, &v85, &v81);
    v18 = v80;
    v28 = v81 != 0;
  }

  v79 = v19 * 0.5;
  v29 = (a2 + 104);
  v30 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v32 = *v29--;
    v30 = v30 + v32 * v32;
  }

  v33 = sqrt(v30);
  *a4 = v33;
  v34 = *(a4 + 72);
  if (v33 > v34)
  {
    _NF = 1;
  }

  else
  {
    v34 = v33;
    _NF = v33 < 1.0;
  }

  if (_NF)
  {
    if (v34 >= 1.0)
    {
      v33 = v34;
    }

    else
    {
      v33 = 1.0;
    }

    *a4 = v33;
  }

  v36 = 0;
  v37 = v23 + v26 + v28;
  v38 = v33 * *(a4 + 8);
  *&v85 = v19 * 0.5;
  *(&v85 + 1) = v19 * 0.5;
  *&v86 = v19 * 0.5;
  *(&v86 + 1) = v18;
  v81 = 0;
  if (v38 > 0.0)
  {
    rnk1_core(a5, 4u, v38, &v85, &v81);
    v18 = v80;
    v36 = v81 != 0;
  }

  v39 = v37 + v36;
  v40 = *(a1 + 20);
  v41 = *(a1 + 24);
  if (v40 == v41)
  {
    goto LABEL_65;
  }

  if (v40 <= 2)
  {
    if (v40)
    {
      if (v40 == 1)
      {
        if (!v41)
        {
          goto LABEL_65;
        }
      }

      else if (v40 != 2 || v41 <= 1)
      {
        goto LABEL_65;
      }
    }
  }

  else if (v40 > 4)
  {
    if (v40 == 5)
    {
      if ((v41 & 0xFFFFFFFE) != 6)
      {
        goto LABEL_65;
      }
    }

    else if (v40 != 6 || v41 != 7)
    {
      goto LABEL_65;
    }
  }

  else if (v40 == 3)
  {
    if (v41 <= 2)
    {
      goto LABEL_65;
    }
  }

  else if (v41 - 5 >= 3)
  {
    goto LABEL_65;
  }

  if (*(a1 + 11632))
  {
    v42 = *(a1 + 140);
    if (v42 >= *(a1 + 144))
    {
      v42 = *(a1 + 144);
    }

    if (v42)
    {
      if (v40 < 2)
      {
        goto LABEL_65;
      }

      v43 = *(a1 + 11032);
      if (v43 <= 0x78 && ((v40 - 3) > 5 || v43 <= 0x1E && ((v40 - 4) > 4 || v43 < 0xB)))
      {
        goto LABEL_65;
      }
    }

    v44 = 0;
LABEL_64:
    *(a1 + 11632) = v44;
    goto LABEL_65;
  }

  v45 = *(a1 + 140);
  if (v45 >= *(a1 + 144))
  {
    v45 = *(a1 + 144);
  }

  if (*(a1 + 11480) <= (5 * v45))
  {
    v44 = 1;
    goto LABEL_64;
  }

LABEL_65:
  if (*(a1 + 11632) != 1 || (v46 = *(a2 + 320), v46 > 4.0) || *(a1 + 11161) == 1)
  {
    v47 = *(a4 + 40);
    if (*(a1 + 11161) == 1)
    {
      v47 = vaddq_f64(v47, *(a4 + 56));
    }

    v48 = 0;
    v49 = v47.f64[1];
    v50 = &v84;
    v51 = 0uLL;
    v78 = v47.f64[0];
    do
    {
      v87 = 0;
      v85 = v51;
      v86 = v51;
      v88 = *(a2 + v48 + 208);
      v89 = *(a2 + v48 + 224);
      v52 = v49;
      if (v48 != 48)
      {
        v52 = v47.f64[0] * *v50;
      }

      v53 = 0;
      v54 = v18 * (v52 + CP_Noise_dT_Sync[*(a2 + 16)]);
      v81 = 0;
      if (v54 > 0.0)
      {
        rnk1_core(a5, 8u, v54, &v85, &v81);
        v51 = 0uLL;
        v47.f64[0] = v78;
        v18 = v80;
        v53 = v81 != 0;
      }

      v39 += v53;
      ++v50;
      v48 += 24;
    }

    while (v48 != 72);
    v46 = *(a2 + 320);
  }

  if (v46 > 16.0)
  {
    v55 = fabs(*(a1 + 11200));
    if (v55 > 2.0)
    {
      v56 = v18 * v46;
      v57 = __sincos_stret(v55 * 0.0174532925);
      v58 = v56 * v57.__sinval;
      v59 = 1.0;
      if (v46 < 23.0)
      {
        v59 = (v46 + -16.0) / 7.0;
      }

      v18 = v80;
      v60 = v56 * (1.0 - v57.__cosval) * v59 * (v56 * (1.0 - v57.__cosval) * v59);
      v61 = v58 * v59 * (v58 * v59);
      v62 = v82;
      v63 = 1;
      v64 = 0uLL;
      do
      {
        v65 = 0;
        v66 = v63;
        v87 = 0;
        v85 = v64;
        v86 = v64;
        v88 = *v62;
        v89 = v62[2];
        if (v63)
        {
          v67 = v60;
        }

        else
        {
          v67 = v61;
        }

        v81 = 0;
        if (v67 > 0.0)
        {
          rnk1_core((a1 + 344), 8u, v67, &v85, &v81);
          v64 = 0uLL;
          v18 = v80;
          v65 = v81 != 0;
        }

        v63 = 0;
        v39 += v65;
        v62 = &v82[1] + 1;
      }

      while ((v66 & 1) != 0);
    }
  }

  v68 = 0;
  v69 = &v84;
  v70 = 0uLL;
  do
  {
    v87 = 0;
    v85 = v70;
    v86 = v70;
    v71 = *(a2 + v68 + 208);
    v88 = vmulq_n_f64(v71, v79);
    v72 = *(a2 + v68 + 224);
    v89 = v79 * v72;
    v90 = vmulq_n_f64(v71, v18);
    v91 = v18 * v72;
    if (v68 == 48)
    {
      v73 = *(a4 + 80);
    }

    else
    {
      v73 = *(a4 + 72) * *v69;
    }

    v74 = 0;
    v81 = 0;
    if (v73 > 0.0)
    {
      rnk1_core(a5, 0xBu, v73, &v85, &v81);
      v70 = 0uLL;
      v18 = v80;
      v74 = v81 != 0;
    }

    v39 += v74;
    ++v69;
    v68 += 24;
  }

  while (v68 != 72);
  if (v39)
  {
    gn_report_assertion_failure("Rank 1 update fail");
    *(a6 + 4) = 21;
    *a6 = 1;
LABEL_97:
    v75 = *MEMORY[0x29EDCA608];
    return;
  }

  ud2var(a5, 0xBu, 1, 0xBu, v77);
  Comp_NEDvar_UDU(a5, 0xBu, 5, (a2 + 208), v77 + 5);
  v76 = *MEMORY[0x29EDCA608];

  Comp_NEDvar_UDU(a5, 0xBu, 8, (a2 + 208), v77 + 8);
}

void CUCFCheckINTEGERConstraint(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 24) & 0x20) != 0 && *(a2 + 32) > *a3 || (*(a2 + 24) & 8) != 0 && *(a2 + 40) < *a3)
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];

    EPErrorHandler(a1, 18);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];
  }
}

void CUCFCheckStringConstraint(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a2 + 32) > a3 || *(a2 + 24) < 0 && *(a2 + 40) < a3)
  {
    EPErrorHandler(a1, 19);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void CUCFCheckCHARACTER_STRINGConstraint(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v7 = a3 + 1;
  v6 = a3[1];
  if (v6 < *(a2 + 48) || *(a2 + 40) < 0 && *(a2 + 56) < v6)
  {
    EPErrorHandler(a1, 19);
  }

  v8 = *(a2 + 32);
  if (v8 && *v7)
  {
    v9 = 0;
    v10 = *(a2 + 24);
    while (1)
    {
      if (v8)
      {
        v11 = *(*a3 + v9);
        if (v11 != *v10)
        {
          break;
        }
      }

      v12 = 0;
LABEL_11:
      if (v12 == v8)
      {
        goto LABEL_18;
      }

      if (++v9 == *v7)
      {
        goto LABEL_19;
      }
    }

    v12 = 0;
    while (v8 - 1 != v12)
    {
      v13 = v10[++v12];
      if (v11 == v13)
      {
        goto LABEL_11;
      }
    }

LABEL_18:
    EPErrorHandler(a1, 20);
  }

LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
}

void CUCFCheckStructOfConstraint(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a2 + 40) > a3 || *(a2 + 32) < 0 && *(a2 + 48) < a3)
  {
    EPErrorHandler(a1, 19);
  }

  v3 = *MEMORY[0x29EDCA608];
}

uint64_t NK_Init_Cov_Mat(int a1, unsigned int *a2, int a3, _BYTE *a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, double a9, int64x2_t *a10, uint64_t a11)
{
  v30 = *MEMORY[0x29EDCA608];
  v12 = a1 ^ 1 | *a6;
  if (v12 == 1)
  {
    if (*a6)
    {
      v19 = vdupq_n_s64(0x4163125300000000uLL);
      *a10 = v19;
      a10[1] = v19;
      a10[2] = v19;
      a10[3].i64[0] = 0x4163125300000000;
    }

    *a7 = -1;
    v20 = vdupq_n_s64(0x416312D000000000uLL);
    *(a7 + 40) = v20;
    *(a7 + 56) = v20;
    *(a7 + 88) = -1;
    *a8 = -1;
    *(a8 + 40) = v20;
    *(a8 + 56) = v20;
    *(a8 + 88) = -1;
    bzero((a5 + 8), 0x208uLL);
    v21 = ClkBiasOrigVar[a3];
    *a11 = v21;
    *a5 = v21;
    *(a11 + 8) = *a11;
    *(a5 + 16) = *a5;
    *(a11 + 16) = *a11;
    *(a5 + 40) = *a5;
    v22 = DT_SyncOrigVar[a3];
    *(a11 + 32) = v22;
    *(a5 + 112) = v22;
    v23 = a9 * 99930819.3 * (a9 * 99930819.3);
    *(a11 + 24) = v23;
    *(a5 + 72) = v23;
    if (a1)
    {
      v24 = 0x4222A05F20000000;
      if (*a4)
      {
        v24 = 0x4341C37937E08000;
      }
    }

    else
    {
      v24 = 0x4341C37937E08000;
    }

    *(a11 + 48) = v24;
    *(a11 + 56) = v24;
    *(a11 + 40) = v24;
    *(a5 + 280) = v24;
    *(a5 + 216) = v24;
    *(a5 + 160) = v24;
    v25 = *a2;
    if (v25 > 8)
    {
      v26 = 0x4197D78400000000;
    }

    else
    {
      v26 = qword_29975C550[v25];
    }

    *(a11 + 72) = v26;
    *(a11 + 80) = v26;
    *(a11 + 64) = v26;
    *(a5 + 520) = v26;
    *(a5 + 432) = v26;
    *(a5 + 352) = v26;
    *a6 = 0;
    v27 = *(a6 + 2) + 1;
    *(a6 + 3) = 0;
    *(a6 + 4) = 0;
    *(a6 + 2) = v27;
    *(a6 + 6) = -1;
  }

  else
  {
    ++*(a6 + 3);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v12;
}

void SV_Data_Decode(char *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = *MEMORY[0x29EDCA608];
  v13 = *(a6 + 8);
  if (*(a6 + 5) == 1 && *a6 >= 3)
  {
    v14 = *(a6 + 24) + 604800 * *(a6 + 16);
    v50 = v14;
    v15 = a3[672] - v13;
    if (v15 > 0 || (v15 = a3[673] - v13, v15 > 0) || (v15 = a3[674] - v13, v15 > 0) || (v15 = a3[675] - v13, v15 >= 1))
    {
      v14 += v15 / 0x3E8u;
      v50 = v14;
    }
  }

  else
  {
    v14 = 0;
    v50 = 0;
  }

  if (*(a6 + 60) < 1)
  {
    v20 = 0;
  }

  else
  {
    v16 = a3[673] - v13;
    if (v16 < 1)
    {
      v16 = 1000;
    }

    v17 = *(a6 + 72) + v16 * 0.001;
    v18 = -0.5;
    if (v17 > 0.0)
    {
      v18 = 0.5;
    }

    v19 = v17 + v18;
    if (v19 <= 2147483650.0)
    {
      if (v19 >= -2147483650.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0x80000000;
      }
    }

    else
    {
      v20 = 0x7FFFFFFF;
    }
  }

  *(a2 + 60) = v20;
  DD_Delete_Bad_GPS_Data(a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Inhib_GPS_Data(*(a4 + 432), a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Bad_QZSS_Data((a1 + 3584), (a1 + 3654), (a1 + 3644), a7);
  DD_Delete_Inhib_QZSS_Data(*(a4 + 448), (a1 + 3584), (a1 + 3654), (a1 + 3644), a7);
  DD_Delete_Bad_GLON_Data(a1, a7);
  DD_Delete_Inhib_GLON_Data(*(a4 + 440), a1, a7);
  DD_Delete_Bad_BDS_Data((a1 + 6508), (a1 + 6456), a7);
  DD_Delete_Inhib_BDS_Data(*(a4 + 464), (a1 + 6508), (a1 + 6456), a7);
  DD_Delete_Bad_GAL_Data(a1, a7);
  DD_Delete_Inhib_GAL_Data(*(a4 + 472), a1, a7);
  if (*(a4 + 1133) == 1 && v14 >= 1)
  {
    v21 = *(a4 + 1040);
    if (v21 >= 1 && v14 - v21 <= 604799)
    {
      for (i = 13; i != 685; i += 14)
      {
        LOBYTE(a3[i]) = 0;
      }
    }
  }

  v23 = 0;
  *(a2 + 9) = 0;
  do
  {
    v24 = v23;
    v25 = &a3[14 * v23];
    if (*(v25 + 52) != 1)
    {
      goto LABEL_64;
    }

    v26 = *v25;
    *(a2 + 4) = *v25;
    if (v26 > 3u)
    {
      switch(v26)
      {
        case 4u:
          v35 = &a3[14 * v24];
          v36 = *(v35 + 4);
          v30 = v35 + 1;
          if (v36 != 1)
          {
            goto LABEL_64;
          }

          if ((*(*(a4 + 464) + BYTE2(v26) - 1) & 1) == 0 && *(v30 + 2) <= 5u && *(v30 + 2))
          {
            *(a2 + 48) = 0;
            *(a2 + 16) = 0u;
            *(a2 + 32) = 0u;
            v37 = *(v30 + 2);
            v38 = *(v30 + 6);
            *(a2 + 48) = *(v30 + 5);
            *(a2 + 16) = v37;
            *(a2 + 32) = v38;
            *(a2 + 56) = *(v30 + 2);
            *(a2 + 8) = BYTE2(v26) - 1;
            DD_Proc_BDS_Data(a1, a2, a6, &v50, a7);
          }

          break;
        case 6u:
          EvLog("SV_Data_Decode: SBAS Data decoding is NOT Supported.");
          goto LABEL_64;
        case 5u:
LABEL_40:
          v29 = &a3[14 * v24];
          v31 = *(v29 + 4);
          v30 = v29 + 1;
          if (v31 != 1)
          {
            goto LABEL_64;
          }

          if (*(v30 + 2) <= 5u && *(v30 + 2))
          {
            v32 = *(v30 + 2);
            v33 = *(v30 + 6);
            *(a2 + 48) = *(v30 + 5);
            *(a2 + 16) = v32;
            *(a2 + 32) = v33;
            *(a2 + 56) = *(v30 + 2);
            if (v26 == 5)
            {
              v44 = BYTE2(v26) - 193;
              if ((*(*(a4 + 448) + v44) & 1) == 0)
              {
                *(a2 + 8) = v44;
                DD_Proc_QZSS_Data(a1, a2, a4, a6, &v50, a7);
              }
            }

            else if (v26 == 1)
            {
              v34 = BYTE2(v26) - 1;
              if ((*(*(a4 + 432) + v34) & 1) == 0)
              {
                *(a2 + 8) = v34;
                DD_Proc_GPS_Data(a1, a2, a4, a6, &v50, a7);
              }
            }
          }

          break;
        default:
          goto LABEL_64;
      }

LABEL_63:
      *v30 = 0;
      goto LABEL_64;
    }

    switch(v26)
    {
      case 1u:
        goto LABEL_40;
      case 2u:
        v39 = &a3[14 * v24];
        v40 = *(v39 + 4);
        v30 = v39 + 1;
        if (v40 != 1)
        {
          break;
        }

        if (*(v30 + 2) == 1 && ((v41 = *(v30 + 1), v42 = *(a7 + 16432 + 4 * (v41 + 7)), v42 == 2139062143) || (*(*(a4 + 440) + v42 - 1) & 1) == 0))
        {
          *(a2 + 58) = v41;
          *(a2 + 16) = 0u;
          *(a2 + 32) = 0u;
          *(a2 + 48) = 0;
          v43 = *(v30 + 1);
          *(a2 + 24) = v30[3];
          *(a2 + 16) = v43;
          *(a2 + 15) = *(v30 + 3);
          if ((v41 + 7) <= 0xDu)
          {
            DD_Proc_GLON_Data(a1, a2, a4, a6, &v50, a7);
          }
        }

        else if (g_Enable_Event_Log >= 2u)
        {
          EvLog_v("SV_Data_Decode:  Glonass String Parity Fail %d  %x %x %x", v24, *(a2 + 16), *(a2 + 20), *(a2 + 24));
        }

        goto LABEL_63;
      case 3u:
        v27 = *(v25 + 1);
        v28 = BYTE2(v26) - 1;
        *(a2 + 8) = BYTE2(v26) - 1;
        if (*(v25 + 4) == 1)
        {
          if ((*(*(a4 + 472) + BYTE2(v26) - 1) & 1) == 0 && *(v25 + 6) == 1)
          {
            if (*(v25 + 7))
            {
              EvLog("SV_Data_Decode: Galileo I/NAV Alert Page decoding is not supported yet.");
            }

            else
            {
              v45 = *(v25 + 22);
              *(a2 + 70) = *(v25 + 7);
              *(a2 + 64) = v45;
              *(a2 + 78) = *(v25 + 4);
              DD_Proc_GAL_INAV_Data((a2 + 64), v28, v27, &v50, a1, a6, a7);
            }
          }

          *(v25 + 4) = 0;
        }

        break;
    }

LABEL_64:
    v23 = *(a2 + 9) + 1;
    *(a2 + 9) = v23;
  }

  while (v23 < 0x30u);
  DD_Save_New_GPS_Eph(v50, (a1 + 288), (a1 + 3552), (a1 + 192), a7);
  DD_Save_New_QZSS_Eph(v50, (a1 + 3676), (a1 + 4696), (a1 + 3644), a7);
  DD_Save_New_GLON_Eph(v50, *(a6 + 60), *(a2 + 60), a7, a1);
  DD_Save_New_GLON_Alm(v50, a7, a1);
  DD_Save_New_BDS_D1_Eph(v50, a7, a1);
  DD_Save_New_GAL_INAV_Eph(v50, a1, a7);
  if (!*(a7 + 39452))
  {
    v49 = 0;
    API_Get_Next_Leap_Second((a7 + 39452), (a7 + 39456), &v49);
    if ((v49 - 1) <= 0x7FFFFFFD)
    {
      API_Get_UTC_Cor(0, (a7 + 39464));
    }
  }

  DD_Check_Age_GPS_Data(v50, v13, a1, (a1 + 224), (a1 + 192), a7);
  DD_Check_Age_QZSS_Data(v50, v13, (a1 + 3584), (a1 + 3654), (a1 + 3644), a7);
  DD_Check_Age_GLON_Data(a6, a7, v46);
  DD_Check_GLON_Strings(*(a6 + 60), *(a2 + 60), a1, a7);
  DD_LS_Delete_EphAlm_Str(*(a7 + 39452), a6, a1);
  DD_Check_Age_BDS_Data(v50, v13, (a1 + 6508), (a1 + 6456), a7);
  if (DD_Check_Age_GAL_Data(v50, v13, a7))
  {
    DD_Delete_Bad_GAL_Data(a1, a7);
  }

  if (*(a4 + 31) == 1)
  {
    DD_Assist_GPS_Data(a1, v50, a5, a7, a4);
  }

  if (*(a4 + 33) == 1)
  {
    DD_Assist_QZSS_Data(a1, v50, a5, a7, a4);
  }

  if (*(a4 + 32) == 1)
  {
    DD_Assist_GLON_Data(v50, a5, a7, a4);
  }

  if (*(a4 + 35) == 1)
  {
    DD_Assist_BDS_Data(a1, v50, a5, a7, a4);
  }

  if (*(a4 + 36) == 1)
  {
    DD_Assist_GAL_Data(a1, v50, a5, a7, a4);
  }

  v47 = *MEMORY[0x29EDCA608];
}

void GncP16_01StopStateHndlrTimer(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (qword_2A1939E78 == 1)
  {
    if (AgpsFsmStopTimer(8789766))
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v0 = mach_continuous_time();
        v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP16_01StopStateHndlrTimer", 1545);
        v2 = 2;
LABEL_7:
        LbsOsaTrace_WriteLog(8u, __str, v1, v2, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,TimerStarted,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP16_01StopStateHndlrTimer", g_GncPStateInfo, HIDWORD(qword_2A1939E78));
      v2 = 5;
      goto LABEL_7;
    }

    LOBYTE(qword_2A1939E78) = 0;
    HIDWORD(qword_2A1939E78) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t GncP16_02StartStateHndlrTimer(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  GncP16_01StopStateHndlrTimer();
  if (AgpsFsmStartTimer(0x861F06u, a1))
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP16_02StartStateHndlrTimer", 1544, a1);
      result = LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }

    LOBYTE(qword_2A1939E78) = 0;
  }

  else
  {
    LOBYTE(qword_2A1939E78) = 1;
    HIDWORD(qword_2A1939E78) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP16_02StartStateHndlrTimer", g_GncPStateInfo, a1);
      result = LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP16_11StartME(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  GncP02_13ClearMEBuf();
  LOBYTE(g_GncPStateInfo) = 6;
  v2 = gnssOsa_Calloc("GncP16_09SendWakeMEReqtoGnm", 245, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ =>GNM LtlTable,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_09SendWakeMEReqtoGnm", a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8785920, v3);
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = 1;
  do
  {
    while (1)
    {
      v10 = v9;
      v11 = &g_GncPCntxtInfo + 36 * v6;
      if (v11[8] != 1 || v11[4] != 1)
      {
        break;
      }

      v9 = 0;
      if (*(v11 + 6) < v8)
      {
        v8 = *(v11 + 6);
      }

      v6 = 1;
      v7 = 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v9 = 0;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v8 <= 0x3E7)
  {
    GncP05_23SetFixInterval(v8);
    goto LABEL_18;
  }

LABEL_17:
  GncP05_23SetFixInterval(0x1F4u);
  BYTE5(g_GncPStateInfo) = 1;
LABEL_18:
  GN_GPS_WakeUp();
  dword_2A1939E74 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  byte_2A1939E70 = 1;
  byte_2A1939E68 = 0;
  GncP16_01StopStateHndlrTimer();
  v12 = *MEMORY[0x29EDCA608];
}

void GncP16_13CheckStopME(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = mach_continuous_time();
  if (BYTE2(g_GncPStateInfo) && (BYTE3(g_GncPStateInfo) & 1) == 0)
  {
    LOBYTE(g_GncPStateInfo) = 9;
  }

  v3 = byte_2A1939E68 | BYTE1(g_GncPStateInfo);
  if (BYTE6(g_GncPStateInfo) == 1)
  {
    v3 |= ((*&g_MacClockTicksToMsRelation * v2) - HIDWORD(g_GncPStateInfo)) >> 3 < 0x271;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,MEOn,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_13CheckStopME", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A1939E6C, v3 & 1);
    LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
  }

  if ((v3 & 1) == 0)
  {
    GncP16_10StopME(0, a1);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void GncP16_10StopME(int a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  __p = 0;
  __n = 0;
  v25 = 0;
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = word_2A1920800;
  }

  if (BYTE2(g_GncPCntxtInfo))
  {
    v4 = 0;
  }

  else
  {
    v4 = byte_2A1920802;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartMode,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_05GetResetType", v4);
    LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
  }

  if (v4 <= 2u)
  {
    switch(v4)
    {
      case 0u:
        goto LABEL_35;
      case 1u:
        v8 = "FACT";
        goto LABEL_27;
      case 2u:
        v8 = "COLD";
        goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (v4 > 4u)
  {
    if (v4 == 5)
    {
      v8 = "VHOT";
      goto LABEL_27;
    }

    if (v4 == 6)
    {
      MEMORY[0x29C29E950](&__p, "VHOT");
LABEL_23:
      v11 = 0;
      goto LABEL_28;
    }

LABEL_21:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartMode,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP16_05GetResetType", 770, v4);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    goto LABEL_23;
  }

  if (v4 == 3)
  {
    v8 = "WARM";
    goto LABEL_27;
  }

  if (v4 != 4)
  {
    goto LABEL_21;
  }

  v8 = "HOST";
LABEL_27:
  MEMORY[0x29C29E950](&__p, v8);
  v11 = 1;
LABEL_28:
  if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  bzero(__str, 0x410uLL);
  v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  p_p = &__p;
  if (v25 < 0)
  {
    p_p = __p;
  }

  v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearReq DeleteReq,%s,MERstReq,%u\n", v12, "GNC", 73, "GncP16_05GetResetType", p_p, v11);
  LbsOsaTrace_WriteLog(8u, __str, v14, 4, 1);
  if (v11)
  {
LABEL_34:
    v3 = 0;
  }

LABEL_35:
  GN_GPS_Sleep(v3, a2, v5);
  if (g_GncPStateInfo == 9)
  {
    GncP16_01StopStateHndlrTimer();
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,PE Sleep not ME\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncP16_10StopME", g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v16, 4, 1);
    }
  }

  else
  {
    if (GncP05_25ChkDeRegGnssServReqd())
    {
      GncP03_14SendDeRegGnssReq(v3, a2);
    }

    if (v3)
    {
      v17 = 1;
    }

    else
    {
      v17 = 3;
    }

    LOBYTE(g_GncPStateInfo) = v17;
    GncP16_02StartStateHndlrTimer(0x258u);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME to Sleep,%u,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 77, "GncP16_10StopME", v3, a2);
      LbsOsaTrace_WriteLog(8u, __str, v19, 3, 1);
    }

    dword_2A1939E6C = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    byte_2A1939E68 = 1;
    byte_2A1939E70 = 0;
  }

  v20 = SHIBYTE(v25);
  if ((SHIBYTE(v25) & 0x8000000000000000) != 0)
  {
    v20 = __n;
    if (!__n)
    {
LABEL_52:
      operator delete(__p);
      goto LABEL_53;
    }

    v21 = __p;
  }

  else
  {
    if (!HIBYTE(v25))
    {
      goto LABEL_53;
    }

    v21 = &__p;
  }

  GncP16_06ClearNVStore(v21, v20);
  if (SHIBYTE(v25) < 0)
  {
    goto LABEL_52;
  }

LABEL_53:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_2995FBDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP16_15CheckStopMEClearReq(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG,%u,FA,%u,SA,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncP16_15CheckStopMEClearReq", BYTE3(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo));
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  v2 = 0;
  if ((BYTE1(g_GncPStateInfo) & 1) == 0 && !BYTE2(g_GncPStateInfo))
  {
    if (BYTE3(g_GncPStateInfo))
    {
      v2 = 0;
    }

    else
    {
      v2 = 1;
      GncP16_10StopME(1, 0);
      LOBYTE(g_GncPStateInfo) = 11;
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void GncP16_16NewSessUpdtMEFixInt(void)
{
  v0 = 0;
  v1 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v2 = -1;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = &g_GncPCntxtInfo + 36 * v0;
      if (v5[8] != 1 || v5[4] != 1)
      {
        break;
      }

      v3 = 0;
      if (*(v5 + 6) < v2)
      {
        v2 = *(v5 + 6);
      }

      v0 = 1;
      v1 = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = 0;
    v0 = 1;
  }

  while ((v4 & 1) != 0);
  if ((v1 & 1) == 0)
  {
LABEL_12:
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_11:
  if (v2 > 0x3E7)
  {
    goto LABEL_12;
  }

  if (BYTE5(g_GncPStateInfo) == 1)
  {
    if (v2 < g_GncPConfig)
    {
      GncP05_23SetFixInterval(v2);
      BYTE5(g_GncPStateInfo) = 0;
    }

    goto LABEL_12;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];

  GncP05_23SetFixInterval(v2);
}

void GncP16_17HandleInvalidState(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu,FA,%u,SA,%u,FG,%u,BG,%u,QFI,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 69, "GncP16_17HandleInvalidState", 260, g_GncPStateInfo, BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE5(g_GncPStateInfo));
    LbsOsaTrace_WriteLog(8u, __str, v1, 0, 1);
  }

  snprintf(v4, 0x64uLL, "ASSERT: GNCState %d", g_GncPStateInfo);
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GncP16_17HandleInvalidState", v4);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  gnssOsa_FlushLog();
  __assert_rtn("GncP16_17HandleInvalidState", "gncpe16StateHndlr.cpp", 527, "false && Invalid State");
}

void GncP16_19ChkQualUpdtMEFixInt(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (BYTE5(g_GncPStateInfo) == 1 && GncP04_18ChkAnyFGSessQualMet())
  {
    BYTE5(g_GncPStateInfo) = 0;
    GncP16_18ReConfigMEFixInt();
    v0 = *MEMORY[0x29EDCA608];

    GncP16_04RestartMEWdt(1);
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
  }
}

void GncP16_18ReConfigMEFixInt(void)
{
  v0 = 0;
  v1 = 0;
  v2 = -1;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = &g_GncPCntxtInfo + 36 * v0;
      if (v5[8] != 1 || v5[4] != 1)
      {
        break;
      }

      v3 = 0;
      if (*(v5 + 6) < v2)
      {
        v2 = *(v5 + 6);
      }

      v0 = 1;
      v1 = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = 0;
    v0 = 1;
  }

  while ((v4 & 1) != 0);
  if ((v1 & 1) == 0)
  {
    v6 = 1000;
    goto LABEL_15;
  }

LABEL_11:
  if (v2 >= 0x3E8)
  {
    v6 = 1000;
  }

  else
  {
    v6 = v2;
  }

LABEL_15:
  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];

  GncP05_23SetFixInterval(v6);
}

void GncP16_04RestartMEWdt(char a1)
{
  v5 = *MEMORY[0x29EDCA608];
  GncP16_01StopStateHndlrTimer();
  if (qword_2A1939E78)
  {
    v2 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = (g_GncPConfig << a1);

    GncP16_02StartStateHndlrTimer(v4);
  }
}

void GncP16_21ChkFWActRspPend(char a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (BYTE7(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(a1, 1);
    BYTE7(g_GncPStateInfo) = 0;
  }

  if (BYTE8(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(a1, 3);
    BYTE8(g_GncPStateInfo) = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
}

void GncP16_22UpdateStateAssistDataRcvd(unsigned int *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = g_GncPStateInfo;
  if (a1 && (BYTE3(g_GncPStateInfo) & 1) == 0)
  {
    HIDWORD(g_GncPStateInfo) = *a1;
    BYTE6(g_GncPStateInfo) = 1;
  }

  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_19;
  }

  if (((1 << g_GncPStateInfo) & 0x1CFE0) != 0)
  {
    goto LABEL_6;
  }

  if (((1 << g_GncPStateInfo) & 0x15) != 0)
  {
    GncP16_11StartME(0);
    if (v1 == g_GncPStateInfo)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (((1 << g_GncPStateInfo) & 0xA) == 0)
  {
LABEL_19:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP16_22UpdateStateAssistDataRcvd", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  LOBYTE(g_GncPStateInfo) = 5;
LABEL_12:
  if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,AssistDataRcvd,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 77, "GncP16_22UpdateStateAssistDataRcvd", 261, v1, g_GncPStateInfo, HIDWORD(g_GncPStateInfo));
    LbsOsaTrace_WriteLog(8u, __str, v4, 3, 1);
  }

LABEL_6:
  v2 = *MEMORY[0x29EDCA608];
}

void GncP16_23UpdateStateFGSession(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = g_GncPStateInfo;
  BYTE3(g_GncPStateInfo) = a1;
  if (a1)
  {
    BYTE6(g_GncPStateInfo) = 0;
  }

  if (g_GncPStateInfo <= 6u)
  {
    if (g_GncPStateInfo <= 2u)
    {
      if (g_GncPStateInfo != 1)
      {
LABEL_17:
        if (a1)
        {
          GncP16_11StartME(0);
        }

        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (g_GncPStateInfo - 5 < 2)
    {
      goto LABEL_24;
    }

    if (g_GncPStateInfo == 3)
    {
LABEL_19:
      if (a1)
      {
        LOBYTE(g_GncPStateInfo) = 5;
      }

      goto LABEL_24;
    }

    if (g_GncPStateInfo == 4)
    {
      goto LABEL_17;
    }

LABEL_30:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_23UpdateStateFGSession", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_11:
    if (g_GncPStateInfo == 7)
    {
      if (GncP16_12IsAwakeFGStateReq())
      {
        GncP16_16NewSessUpdtMEFixInt();
      }

      else
      {
        GncP16_13CheckStopME(0);
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (((1 << g_GncPStateInfo) & 0x1CC00) != 0)
  {
    goto LABEL_24;
  }

  if (g_GncPStateInfo != 8)
  {
    if (g_GncPStateInfo == 9)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    LOBYTE(g_GncPStateInfo) = 7;
    GncP16_16NewSessUpdtMEFixInt();
    GncP16_04RestartMEWdt(0);
  }

LABEL_24:
  if (v1 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = 78;
    if (BYTE3(g_GncPStateInfo))
    {
      v3 = 89;
    }

    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FGSessActive,%c\n", v2, "GNC", 77, "GncP16_23UpdateStateFGSession", 261, v1, g_GncPStateInfo, v3);
    LbsOsaTrace_WriteLog(8u, __str, v4, 3, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
}

BOOL GncP16_12IsAwakeFGStateReq(void)
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = 1;
  if ((BYTE3(g_GncPStateInfo) & 1) == 0 && (BYTE1(g_GncPStateInfo) & 1) == 0)
  {
    if (BYTE6(g_GncPStateInfo) != 1 || (v5 = HIDWORD(g_GncPStateInfo), (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v5 > 0x1388))
    {
      v0 = 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,Ret,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP16_12IsAwakeFGStateReq", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A1939E6C, v0);
    LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return v0;
}

void GncP16_25UpdateStateTimerExpiry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = g_GncPStateInfo;
  LOBYTE(qword_2A1939E78) = 0;
  switch(g_GncPStateInfo)
  {
    case 0:
      GncP16_13CheckStopME(0);
      break;
    case 1:
    case 3:
    case 5:
    case 11:
    case 16:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NoAck State,%hhu\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 1298, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      }

      GncP04_21SendClearGnssAck(0);
      GncP04_19SendPosEvntResp(4);
      GncP16_21ChkFWActRspPend(0);
      dword_2A1939E6C = 0;
      byte_2A1939E68 = 0;
      GncP08_03HandleHardReset();
      break;
    case 2:
      LOBYTE(g_GncPStateInfo) = 4;
      dword_2A1939E6C = 0;
      byte_2A1939E68 = 0;
      break;
    case 4:
    case 6:
    case 9:
    case 10:
    case 15:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerExp NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP16_25UpdateStateTimerExpiry", g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v10, 4, 1);
      }

      break;
    case 7:
    case 8:
    case 14:
      GncP01_32ExecutePE(a1, a2, a3, a4, a5, a6);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NO ME data WdtStrt,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 1301, HIDWORD(qword_2A1939E78));
        LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
      }

      GncP16_04RestartMEWdt(0);
      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 262, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
      }

      GncP16_17HandleInvalidState();
  }

  if (v6 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 77, "GncP16_25UpdateStateTimerExpiry", 261, v6, g_GncPStateInfo);
    LbsOsaTrace_WriteLog(8u, __str, v14, 3, 1);
  }

  v15 = *MEMORY[0x29EDCA608];
}

void GncP16_26UpdateStateMEDataRcvd(void)
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  v1 = g_GncPStateInfo;
  if (BYTE5(g_GncPStateInfo) == 1)
  {
    if (byte_2A1939E70 == 1)
    {
      v2 = dword_2A1939E74;
      if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v2 >= 0xBB9)
      {
        BYTE5(g_GncPStateInfo) = 0;
        GncP16_18ReConfigMEFixInt();
      }
    }

    v1 = g_GncPStateInfo;
  }

  if (v1 <= 7)
  {
    if (v1 <= 3)
    {
      if (v1 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_40;
    }

    if (v1 <= 5)
    {
      if (v1 != 4)
      {
LABEL_16:
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v4 = mach_continuous_time();
          v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEData NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", g_GncPStateInfo);
          LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
        }

        goto LABEL_41;
      }

LABEL_40:
      GncP16_13CheckStopME(0);
      goto LABEL_41;
    }

    if (v1 == 6)
    {
      LOBYTE(g_GncPStateInfo) = 7;
      GncP04_19SendPosEvntResp(8);
    }

    else if (!GncP16_12IsAwakeFGStateReq())
    {
      GncP16_13CheckStopME(0);
    }

LABEL_38:
    GncP16_04RestartMEWdt(1);
    goto LABEL_41;
  }

  if (v1 > 10)
  {
    if ((v1 - 14) >= 3 && v1 != 11)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", 262, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      GncP16_17HandleInvalidState();
    }

    goto LABEL_16;
  }

  if (v1 == 8)
  {
    GncP05_23SetFixInterval(0x3E8u);
    if (GncP16_12IsAwakeFGStateReq())
    {
      LOBYTE(g_GncPStateInfo) = 7;
    }

    else if ((BYTE4(g_GncPStateInfo) & 1) == 0)
    {
      GncP16_01StopStateHndlrTimer();
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (v1 == 9)
  {
    if (BYTE2(g_GncPStateInfo))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (xmmword_2A1926A30)
  {
    if (*xmmword_2A1926A30)
    {
      if (byte_2A1939E68 != 1 || (v6 = dword_2A1939E6C, (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v6 >= 0xC9))
      {
        GncP16_01StopStateHndlrTimer();
        GncP16_10StopME(1, 0);
        if ((BYTE3(g_GncPStateInfo) & 1) != 0 || (BYTE4(g_GncPStateInfo) & 1) != 0 || BYTE2(g_GncPStateInfo))
        {
          LOBYTE(g_GncPStateInfo) = 11;
        }
      }
    }
  }

LABEL_41:
  if (v0 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 77, "GncP16_26UpdateStateMEDataRcvd", 261, v0, g_GncPStateInfo);
    LbsOsaTrace_WriteLog(8u, __str, v8, 3, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void GncP16_27UpdateStateClearNVReqRcvd(const char *a1, size_t a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = g_GncPStateInfo;
  if (g_GncPStateInfo > 2u)
  {
    if (g_GncPStateInfo > 0x10u)
    {
      goto LABEL_22;
    }

    if (((1 << g_GncPStateInfo) & 0xC640) == 0)
    {
      if (((1 << g_GncPStateInfo) & 0x10838) != 0)
      {
LABEL_5:
        GncP16_06ClearNVStore(a1, a2);
        goto LABEL_14;
      }

      if (((1 << g_GncPStateInfo) & 0x180) != 0)
      {
        if (GncP16_15CheckStopMEClearReq())
        {
          goto LABEL_5;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          goto LABEL_14;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearNV NotHandled GPS running State,%hhu\n");
LABEL_13:
        LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
        goto LABEL_14;
      }

LABEL_22:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_27UpdateStateClearNVReqRcvd", 262, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
      }

      GncP16_17HandleInvalidState();
    }

LABEL_11:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearNV NotHandled in State,%hhu\n");
    goto LABEL_13;
  }

  if (!g_GncPStateInfo)
  {
    goto LABEL_11;
  }

  if (g_GncPStateInfo == 1)
  {
    goto LABEL_5;
  }

  if (g_GncPStateInfo != 2)
  {
    goto LABEL_22;
  }

  GncP16_06ClearNVStore(a1, a2);
  if (a3)
  {
    GncP16_11StartME(0);
    LOBYTE(g_GncPStateInfo) = 10;
  }

LABEL_14:
  if (v5 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Reset,%s\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 77, "GncP16_27UpdateStateClearNVReqRcvd", 261, v5, g_GncPStateInfo, a1);
    LbsOsaTrace_WriteLog(8u, __str, v9, 3, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

const char *GncP16_06ClearNVStore(const char *__src, size_t __n)
{
  v6 = *MEMORY[0x29EDCA608];
  if (__n <= 0xF)
  {
    v2 = xmmword_2A1926A40;
    if (xmmword_2A1926A40)
    {
      *v4 = 0;
      v5 = 0;
      strncpy_s(v4, 0x10u, __src, __n);
      GN_GPS_Clear_NV_Data(v2, v4);
      __src = GncP01_05ClearGncPosData();
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return __src;
}

void GncP16_28UpdateStateResetStatus(int a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = g_GncPStateInfo;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_28UpdateStateResetStatus", g_GncPStateInfo, a1);
    LbsOsaTrace_WriteLog(8u, __str, v4, 4, 1);
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          if (g_GncPStateInfo == 14)
          {
            LOBYTE(g_GncPStateInfo) = 15;
          }

          goto LABEL_28;
        }

        goto LABEL_19;
      }

      if (g_GncPStateInfo != 14)
      {
        goto LABEL_28;
      }

LABEL_22:
      GncP16_11StartME(0);
      goto LABEL_28;
    }

    v7 = 14;
LABEL_18:
    LOBYTE(g_GncPStateInfo) = v7;
    GncP04_19SendPosEvntResp(5);
    goto LABEL_28;
  }

  if (a1 == 3)
  {
    v7 = 15;
    goto LABEL_18;
  }

  if (a1 == 4)
  {
    if (g_GncPStateInfo != 15 || !LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_28;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HW Error\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP16_28UpdateStateResetStatus", 1308);
    v10 = 0;
LABEL_26:
    LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
    goto LABEL_28;
  }

  if (a1 != 5)
  {
LABEL_19:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_28;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_28UpdateStateResetStatus", 770, a1);
    v10 = 2;
    goto LABEL_26;
  }

  if (!g_GncPStateInfo)
  {
    GncP16_02StartStateHndlrTimer(0x3E8u);
    goto LABEL_28;
  }

  if (g_GncPStateInfo == 15)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HW Ready\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP16_28UpdateStateResetStatus", 1307);
      LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
    }

    goto LABEL_22;
  }

LABEL_28:
  if (v2 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 77, "GncP16_28UpdateStateResetStatus", 261, v2, g_GncPStateInfo, a1);
    LbsOsaTrace_WriteLog(8u, __str, v13, 3, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void GncP16_31UpdateStateMEPowerState(unsigned int a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = g_GncPStateInfo;
  g_DeRegGnssCount = 0;
  if (g_GncPStateInfo <= 2u)
  {
    if (!g_GncPStateInfo)
    {
      goto LABEL_4;
    }

    if (g_GncPStateInfo == 1)
    {
      if ((a1 & 0xFFFFFFFB) == 3)
      {
        LOBYTE(g_GncPStateInfo) = 2;
        dword_2A1939E6C = 0;
        byte_2A1939E68 = 0;
        GncP16_01StopStateHndlrTimer();
        if (word_2A1920800)
        {
          GncP16_02StartStateHndlrTimer(1000 * word_2A1920800);
        }

        goto LABEL_34;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Expected,SLEEP,MEResp,%hhu\n", v13);
LABEL_33:
      v4 = v7;
      v5 = 2;
LABEL_6:
      LbsOsaTrace_WriteLog(8u, __str, v4, v5, 1);
      goto LABEL_34;
    }

    if (g_GncPStateInfo == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_23:
    if (g_GncPStateInfo == 3)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB0) != 0)
      {
        LOBYTE(g_GncPStateInfo) = 4;
        dword_2A1939E6C = 0;
        byte_2A1939E68 = 0;
        GncP16_01StopStateHndlrTimer();
        goto LABEL_34;
      }

      goto LABEL_29;
    }

LABEL_41:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_31UpdateStateMEPowerState", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (((1 << g_GncPStateInfo) & 0xC7D0) != 0)
  {
LABEL_4:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      goto LABEL_34;
    }

    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEPowerState,%hhu NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP16_31UpdateStateMEPowerState", a1, g_GncPStateInfo);
    v5 = 4;
    goto LABEL_6;
  }

  if (((1 << g_GncPStateInfo) & 0x820) == 0)
  {
    if (g_GncPStateInfo == 16)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
      {
        GncP04_19SendPosEvntResp(3);
        GncP16_21ChkFWActRspPend(1);
        GncP04_21SendClearGnssAck(1);
        dword_2A1939E6C = 0;
        byte_2A1939E68 = 0;
        v6 = 1;
        goto LABEL_22;
      }

LABEL_29:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Expected,COMA,MEResp,%hhu\n", v14);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
  {
    GncP04_19SendPosEvntResp(3);
    GncP16_21ChkFWActRspPend(1);
    GncP04_21SendClearGnssAck(1);
    dword_2A1939E6C = 0;
    byte_2A1939E68 = 0;
    v6 = 0;
LABEL_22:
    GncP16_11StartME(v6);
    goto LABEL_34;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Expected,SLEEP COMA,MEResp,%hhu\n", v15);
    goto LABEL_33;
  }

LABEL_34:
  if (v2 != g_GncPStateInfo)
  {
    if (g_GncPStateInfo == 4 || g_GncPStateInfo == 2)
    {
      GncP04_21SendClearGnssAck(1);
      GncP16_21ChkFWActRspPend(1);
      GncP19_10SndMEInActiveInd();
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,MEPowerState,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 77, "GncP16_31UpdateStateMEPowerState", 261, v2, g_GncPStateInfo, a1);
      LbsOsaTrace_WriteLog(8u, __str, v9, 3, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void GncP16_33HandleFwActiveReq(int a1, int a2)
{
  v3 = a1;
  v15 = *MEMORY[0x29EDCA608];
  v4 = g_GncPStateInfo;
  switch(a2)
  {
    case 3:
      if (a1)
      {
        v5 = BYTE2(g_GncPStateInfo) | 4;
      }

      else
      {
        v5 = BYTE2(g_GncPStateInfo) & 0xFB;
      }

      goto LABEL_15;
    case 2:
      if (a1)
      {
        v5 = BYTE2(g_GncPStateInfo) | 2;
      }

      else
      {
        v5 = BYTE2(g_GncPStateInfo) & 0xFD;
      }

      goto LABEL_15;
    case 1:
      if (a1)
      {
        v5 = BYTE2(g_GncPStateInfo) | 1;
      }

      else
      {
        v5 = BYTE2(g_GncPStateInfo) & 0xFE;
      }

LABEL_15:
      BYTE2(g_GncPStateInfo) = v5;
      goto LABEL_16;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_33HandleFwActiveReq", 770);
    LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
  }

LABEL_16:
  if (g_GncPStateInfo > 6u)
  {
    if (g_GncPStateInfo <= 0x10u)
    {
      if (((1 << g_GncPStateInfo) & 0x1CC00) != 0)
      {
        goto LABEL_45;
      }

      if (g_GncPStateInfo == 8)
      {
        if (BYTE2(g_GncPStateInfo))
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (g_GncPStateInfo == 9)
      {
        if (BYTE2(g_GncPStateInfo))
        {
          goto LABEL_45;
        }

        if ((a2 & 0xFFFFFFFD) == 1)
        {
          LOBYTE(g_GncPStateInfo) = 7;
        }

        goto LABEL_44;
      }
    }

    if (g_GncPStateInfo == 7)
    {
      if (BYTE2(g_GncPStateInfo) || GncP16_12IsAwakeFGStateReq())
      {
        goto LABEL_45;
      }

LABEL_44:
      GncP16_13CheckStopME(0);
      goto LABEL_45;
    }

LABEL_56:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP16_33HandleFwActiveReq", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_GncPStateInfo > 2u)
  {
    if (g_GncPStateInfo - 5 < 2)
    {
      goto LABEL_45;
    }

    if (g_GncPStateInfo == 3)
    {
      goto LABEL_33;
    }

    if (g_GncPStateInfo == 4)
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

  if (!g_GncPStateInfo)
  {
    if (!BYTE2(g_GncPStateInfo))
    {
      goto LABEL_45;
    }

    LOBYTE(g_GncPStateInfo) = 9;
    if (a2 != 2)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (g_GncPStateInfo != 1)
  {
LABEL_31:
    if (BYTE2(g_GncPStateInfo))
    {
      v8 = 9;
LABEL_35:
      LOBYTE(g_GncPStateInfo) = v8;
      goto LABEL_45;
    }

    goto LABEL_45;
  }

LABEL_33:
  if (BYTE2(g_GncPStateInfo))
  {
    v8 = 5;
    goto LABEL_35;
  }

LABEL_45:
  if (v4 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FWAct,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 77, "GncP16_33HandleFwActiveReq", 261, v4, g_GncPStateInfo, BYTE2(g_GncPStateInfo));
    LbsOsaTrace_WriteLog(8u, __str, v10, 3, 1);
  }

  if ((v3 & 1) == 0)
  {
    if ((g_GncPStateInfo & 0xFD) != 1)
    {
      goto LABEL_53;
    }

    if (a2 == 3)
    {
      BYTE8(g_GncPStateInfo) = 1;
      goto LABEL_54;
    }

    if (a2 == 1)
    {
      BYTE7(g_GncPStateInfo) = 1;
    }

    else
    {
LABEL_53:
      GncP03_13SendStopFWActResp(1, a2);
    }
  }

LABEL_54:
  v11 = *MEMORY[0x29EDCA608];
}

BOOL GncP16_34HandleRestartAcq(void)
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_15;
  }

  if (((1 << g_GncPStateInfo) & 0xCE7F) == 0)
  {
    if (((1 << g_GncPStateInfo) & 0x180) != 0)
    {
      GncP16_10StopME(1, 0);
      LOBYTE(g_GncPStateInfo) = 16;
      goto LABEL_8;
    }

    if (g_GncPStateInfo == 16)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        goto LABEL_8;
      }

      bzero(__str, 0x410uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", v9);
      goto LABEL_5;
    }

LABEL_15:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP16_34HandleRestartAcq", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NotHandled State,%hhu\n");
LABEL_5:
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

LABEL_8:
  v2 = g_GncPStateInfo;
  if (v0 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 77, "GncP16_34HandleRestartAcq", 261, v0, g_GncPStateInfo);
    LbsOsaTrace_WriteLog(8u, __str, v4, 3, 1);
  }

  result = v0 != v2;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP16_51MEPowerStateInd(char a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP16_51MEPowerStateInd", 1463, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND =>GNCP Stat,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_51MEPowerStateInd", v3[12]);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 134, 8788483, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t GncP16_52HandleMEPowerStateInd(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_52HandleMEPowerStateInd", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    GncP16_31UpdateStateMEPowerState(*(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_52HandleMEPowerStateInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP16_54HandleMEWakeResp(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_RSP Resp,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_54HandleMEWakeResp", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if (*(a1 + 12))
    {
      if (g_GncPStateInfo == 6)
      {
        LOBYTE(g_GncPStateInfo) = 7;
        GncP04_19SendPosEvntResp(8);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v4 = mach_continuous_time();
          v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 77, "GncP16_54HandleMEWakeResp", 261, 6, g_GncPStateInfo);
          LbsOsaTrace_WriteLog(8u, __str, v5, 3, 1);
        }

        GncP16_04RestartMEWdt(1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEWake Error,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_54HandleMEWakeResp", *(a1 + 12));
        LbsOsaTrace_WriteLog(8u, __str, v9, 2, 1);
      }

      GncP04_19SendPosEvntResp(9);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP16_54HandleMEWakeResp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP16_55HandleStartFwActiveInd(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_FW_ACTIVE_IND Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_55HandleStartFwActiveInd", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    GncP16_33HandleFwActiveReq(1, *(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_55HandleStartFwActiveInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP16_56HandleStopFwActiveReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_REQ Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_56HandleStopFwActiveReq", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    GncP16_33HandleFwActiveReq(0, *(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_56HandleStopFwActiveReq", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP16_99DeInitStateHndlr(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (g_GncPStateInfo - 7 <= 1)
  {
    GncP16_10StopME(1, 0);
  }

  if (qword_2A1939E78 == 1)
  {
    v0 = *MEMORY[0x29EDCA608];

    AgpsFsmStopTimer(8789766);
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
  }
}

uint64_t NK_Tunnel_Assist(uint64_t a1, double *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0u;
  *v21 = 0u;
  v4 = (a2 + 2874);
  v18 = 0u;
  v19 = 0u;
  if (Core_Get_ExtA_TunnelEP(30000, &v18))
  {
    *(v4 + 2060) = 1;
    v5 = v18;
    v4[518] = *(a2 + 1) - v18;
    if ((*(a1 + 11162) & 1) == 0)
    {
      result = 0;
      v7 = 37;
      goto LABEL_7;
    }

    if (v5 == *(a1 + 11112))
    {
      result = 0;
      v7 = 38;
LABEL_7:
      v4[516] = v7;
      goto LABEL_8;
    }

    if (*(a2 + 2811) < 3u)
    {
      result = 0;
      v7 = 39;
      goto LABEL_7;
    }

    LOWORD(v9) = WORD4(v20);
    v11 = *(&v19 + 1);
    v10 = *&v20;
    if (!WORD4(v20))
    {
      if (vabdd_f64(*(&v19 + 1), *&v20) >= 1.0)
      {
        LOWORD(v9) = 0;
      }

      else
      {
        v11 = *(&v19 + 1) + *(&v19 + 1);
        v10 = *&v20 * 0.5;
        v9 = *(a1 + 11240);
        if (v9 > 179)
        {
          LOWORD(v9) = v9 - 180;
        }
      }
    }

    v12 = *(&v18 + 1);
    v13 = *&v19;
    v14 = v9;
    v15 = BYTE10(v20);
    v16 = *v21;
    EvLog_v("NK_Tunnel_Assist: Applying %d LL %g %g %d %d %d H %d %f %d", v5, *(&v18 + 1), *&v19, v11, v10, v9, BYTE10(v20), v21[0], v21[1]);
    *v4 = 1;
    *(v4 + 1) = 0x300000001;
    v4[3] = 0;
    *(v4 + 16) = 0;
    v17 = *a2;
    v4[5] = *a2;
    a2[2877] = v12 * 0.0174532925;
    a2[2878] = v13 * 0.0174532925;
    a2[2880] = v11 * v11;
    a2[2881] = v10 * v10;
    a2[2882] = v14 * 0.0174532925;
    a2[2883] = v11 * v11;
    a2[2884] = v10 * v10;
    a2[2887] = 25.0;
    if (v15 == 1)
    {
      *(v4 + 128) = 1;
      *(v4 + 33) = 0x200000001;
      v4[35] = 0;
      *(v4 + 144) = 0;
      v4[37] = v17;
      *(a2 + 2893) = v16;
      a2[2894] = *(&v16 + 1) * *(&v16 + 1);
      a2[2895] = *(&v16 + 1) * *(&v16 + 1);
      a2[2897] = 25.0;
    }

    *(a1 + 11112) = v5;
    result = 1;
  }

  else
  {
    result = 0;
    *(v4 + 2060) = 0;
  }

LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *plc02_01EncHeader(_BYTE *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *MEMORY[0x29EDCA608];
  __src = a2;
  if (a2 < 0x7F8)
  {
    *a3 = 30842;
    *(a3 + 2) = *result;
    *(a3 + 3) = result[1];
    *(a3 + 4) = result[2];
    v6 = 2;
    result = memcpy_s("plc02_01EncHeader", 84, (a3 + 5), a4 - 5, &__src, 2uLL);
    v7 = 0;
    do
    {
      v7 += *(a3 + v6++);
    }

    while (v6 != 7);
    *(a3 + 7) = v7;
  }

  else
  {
    *a5 = 7;
    if (*(a5 + 144) == 1)
    {
      result = snprintf((a5 + 16), 0x80uLL, "E HDR PL %d > %d", a2, 2039);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void *plc02_02GetUInt32(uint64_t *a1, int *a2, unsigned int *a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  v8 = *(a1 + 4);
  *(a4 + 6) = v8;
  v9 = *a1;
  __dst = 0;
  result = memcpy_s("plc02_02GetUInt32", 124, &__dst, 4u, (v9 + v8), 4uLL);
  *(a1 + 4) += 4;
  v11 = __dst;
  v12 = *a2;
  if (__dst >= *a2 && __dst <= a2[1])
  {
    *a4 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *a4 = 24;
  if (*(a4 + 144) == 1)
  {
    result = snprintf((a4 + 16), 0x80uLL, "G INT B 4 [%d %d] V %d", v12, a2[1], v11);
  }

  if (a3)
  {
LABEL_6:
    *a3 = __dst;
  }

LABEL_7:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

double GLON_RK_CalcAccel(double **a1, double *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[2] * (*a1)[2];
  v6 = 1.0 / sqrt(v4 * v4 + (*a1)[1] * (*a1)[1] + v5);
  v7 = v6 * v6;
  v8 = v6 * (v6 * v6) * -3.9860044e14;
  v9 = v7 * 6.60628282e10;
  v10 = 1.0 - (v7 + v7 * 4.0) * v5;
  v11 = v10 + 2.0;
  v12 = v8 * (v9 * v10 + 1.0) + 0.00000000531749412;
  v13 = a1[2];
  *a2 = *v13 + v3[1] * 0.0001458423 + v4 * v12;
  a2[1] = v13[1] + *v3 * -0.0001458423 + v2[1] * v12;
  result = v13[2] + v2[2] * (v8 * (v9 * v11 + 1.0));
  a2[2] = result;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_RungeKutta4(double **a1, signed int a2)
{
  v58 = *MEMORY[0x29EDCA608];
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  *&v38[16] = 0u;
  v39 = 0u;
  v37 = 0u;
  *v38 = 0u;
  v5 = *a1;
  v4 = a1[1];
  v6 = **a1;
  *v38 = (*a1)[2];
  v37 = v6;
  v7 = *(v4 + 2);
  *&v38[8] = *v4;
  *&v38[24] = v7;
  v8 = a1[2];
  v9 = *v8;
  v40 = *(v8 + 2);
  v39 = v9;
  v10 = *(v8 + 2);
  v54 = *v8;
  v49 = v9;
  v57 = 0;
  v31[0] = &v51;
  v31[1] = &v52 + 1;
  v31[2] = &v54;
  v29[0] = &v46;
  v29[1] = &v47 + 1;
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v26 = 0;
  v29[2] = &v49;
  v27[0] = &v41;
  v27[1] = &v42 + 1;
  v27[2] = &v44;
  v25[0] = &v37;
  v25[1] = &v38[8];
  v25[2] = &v39;
  v55 = v10;
  v50 = v40;
  v44 = v9;
  v45 = v40;
  *(a1 + 6) += a2;
  GLON_RK_CalcAccel(v25, v36);
  *(&v56[1] + 8) = *&v38[8];
  *(&v56[2] + 1) = *&v38[24];
  v11 = a2;
  v12 = vcvtd_n_f64_s32(a2, 1uLL);
  for (i = 5; i != 2; --i)
  {
    v14 = (&v51 + i * 8);
    *(v14 - 3) = v36[i] + v12 * *(v56 + i * 8);
    *v14 = *&v38[i * 8 - 16] + v12 * v35[i];
  }

  GLON_RK_CalcAccel(v31, v35);
  for (j = 5; j != 2; --j)
  {
    v16 = (&v46 + j * 8);
    *(v16 - 3) = v36[j] + v12 * *(&v51 + j * 8);
    *v16 = *&v38[j * 8 - 16] + v12 * v34[j];
  }

  GLON_RK_CalcAccel(v29, v34);
  for (k = 5; k != 2; --k)
  {
    v18 = (&v41 + k * 8);
    *(v18 - 3) = v36[k] + v11 * *(&v46 + k * 8);
    *v18 = *&v38[k * 8 - 16] + v11 * v33[k];
  }

  GLON_RK_CalcAccel(v27, v33);
  v19 = *&v56[2];
  *v5 = *&v37 + v11 * 0.166666667 * (*(&v42 + 1) + *(&v56[1] + 1) + (*(&v52 + 1) + *(&v47 + 1)) * 2.0);
  v5[1] = *(&v37 + 1) + v11 * 0.166666667 * (*&v43 + v19 + (*&v53 + *&v48) * 2.0);
  v5[2] = *v38 + v11 * 0.166666667 * (*(&v43 + 1) + *(&v56[2] + 1) + (*(&v53 + 1) + *(&v48 + 1)) * 2.0);
  v20 = v35[1];
  v21 = v34[1];
  v22 = v36[1];
  v23 = v33[1];
  *v4 = *&v38[8] + v11 * 0.166666667 * (v33[0] + v36[0] + (v35[0] + v34[0]) * 2.0);
  v4[1] = *&v38[16] + v11 * 0.166666667 * (v23 + v22 + (v20 + v21) * 2.0);
  v4[2] = *&v38[24] + v11 * 0.166666667 * (v33[2] + v36[2] + (v35[2] + v34[2]) * 2.0);
  GLON_RK_CalcAccel(a1, v8);
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t LCD_SA_Debug_Ctl(uint64_t result)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!g_Enable_LCD_Debug)
  {
    goto LABEL_14;
  }

  v1 = result;
  v3 = *result;
  v2 = *(result + 8);
  v4 = *result;
  if (v2 > *result)
  {
    v4 = *(result + 24);
  }

  v5 = v4 - v2;
  if (v4 == v2)
  {
    if (v2 >= *(result + 24))
    {
      v2 = *(result + 16);
      *(result + 8) = v2;
LABEL_10:
      v6 = v3 - v2;
      if (v6)
      {
        result = GN_GPS_Write_LCD_Debug(v6, v2);
        v2 = &v1[1][result];
        v1[1] = v2;
      }
    }
  }

  else
  {
    result = GN_GPS_Write_LCD_Debug((v4 - v2), v2);
    v2 = &v1[1][result];
    v1[1] = v2;
    if (v2 >= v1[3])
    {
      v2 = v1[2];
      v1[1] = v2;
      if (result == v5)
      {
        v3 = *v1;
        goto LABEL_10;
      }
    }
  }

  if (v2 == *v1)
  {
    v7 = v1[2];
    *v1 = v7;
    v1[1] = v7;
  }

LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LCD_SA_Debug_Flush_Check(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(result + 8) - *result;
  if (v1 <= 0)
  {
    v1 += *(result + 24) - *(result + 16);
  }

  if (v1 > 0x2FF)
  {
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    return LCD_SA_Debug_Ctl(result);
  }

  return result;
}

void SuplIdle::~SuplIdle(SuplIdle *this)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  SuplState::~SuplState(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  SuplState::~SuplState(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t SuplIdle::Init(SuplIdle *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(this + 1))
  {
    Instance = SuplProvider::GetInstance(this);
    v3 = *(*(this + 1) + 376);
    v4 = *MEMORY[0x29EDCA608];

    return SuplProvider::Connect(Instance, v3);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "Init", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
    }

    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

void SuplIdle::UpdateState(SuplIdle *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = *(this + 1);
  if (!v1)
  {
LABEL_14:
    v12 = *MEMORY[0x29EDCA608];
    return;
  }

  *(v1 + 64) = 1;
  *(v1 + 72) = *(v1 + 376);
  Instance = SuplUtils::GetInstance(this);
  SuplUtils::FillSetId(Instance, *(this + 1) + 80, *(*(this + 1) + 532));
  SuplInitRecd = SuplSession::GetSuplInitRecd(*(this + 1));
  v5 = *(this + 1);
  if (SuplInitRecd)
  {
    v6 = SuplInitRecd;
    if (v5 + 264 == SuplInitRecd + 384)
    {
      *(v5 + 288) = *(SuplInitRecd + 408);
      *(v5 + 296) = *(SuplInitRecd + 416);
    }

    else
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 264), *(SuplInitRecd + 384), *(SuplInitRecd + 392), *(SuplInitRecd + 392) - *(SuplInitRecd + 384));
      *(v5 + 288) = *(v6 + 408);
      *(v5 + 296) = *(v6 + 416);
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 304), *(v6 + 424), *(v6 + 432), *(v6 + 432) - *(v6 + 424));
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 328), *(v6 + 448), *(v6 + 456), *(v6 + 456) - *(v6 + 448));
      std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v5 + 352), *(v6 + 472), *(v6 + 480), *(v6 + 480) - *(v6 + 472));
      v5 = *(this + 1);
    }

    *(v5 + 65) = 1;
    if (*(v6 + 17) == 1)
    {
      v7 = *(v6 + 18);
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "UpdateState", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
      }

      if (v7 == 12)
      {
        ASN1T_SessionID::operator=(*(this + 1) + 64, v6 + 48);
      }

      SuplState::UpdateState(this, 7, *(this + 1));
      SuplStateObject = SuplSession::GetSuplStateObject(*(this + 1));
      v11 = SuplStateObject;
      if (SuplStateObject)
      {
        *(*(SuplStateObject + 5) + 432) = v7;
        *(*(SuplStateObject + 5) + 1) = 1;
        SuplEndRecd::SetHash(SuplStateObject);
        std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
        v14[0] = __str;
        v14[1] = 0;
        v15 = 0;
        SuplEndRecd::SetSessionIdPresent(v11);
        (*(*v11 + 32))(v11, v14);
        SuplEndRecd::TerminateSession(v11, -1, 3);
        if (*__str)
        {
          v17 = *__str;
          operator delete(*__str);
        }
      }

      goto LABEL_14;
    }
  }

  v13 = *MEMORY[0x29EDCA608];

  SuplState::UpdateState(this, 2, v5);
}

void sub_2995FFF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NK_Heading(uint64_t a1, int *a2, unsigned int a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = a1 + 0x2000;
  v5 = *(a1 + 11162);
  if (*(a1 + 11162))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = *(a2 + 119);
  *(a2 + 3927) = v7;
  if (*(a1 + 11032) <= *(a1 + 16) && a2[242] == 1)
  {
    v9 = *(a1 + 140);
    if (v9 >= *(a1 + 144))
    {
      v9 = *(a1 + 144);
    }

    if (v9 >= *(a1 + 148))
    {
      v9 = *(a1 + 148);
    }

    if (v9 >= 0xB)
    {
      *(a1 + 11200) = 0;
      if (*(a1 + 11116) == 3)
      {
        a2[7858] = 2;
        v10 = *(a1 + 11188);
        *(a1 + 11216) = *(a2 + 100);
        *(a1 + 11224) = *(a2 + 101);
        *(a1 + 11232) = 1;
        if (!v10)
        {
          *(a1 + 11188) = 1;
        }

        goto LABEL_58;
      }

      v16 = (a2 + 6195);
      v17 = *(a2 + 115) * *(a2 + 115);
      v18 = *(a2 + 114) * *(a2 + 114);
      if (v17 < 0.000001 && v18 < 0.000001)
      {
        v18 = 0.000001;
        v17 = 0.000001;
      }

      v19 = fmin(sqrt(57.2957795 / (v18 + v17) * ((*(a2 + 3036) * v17 + *(a2 + 3037) * v18) * (57.2957795 / (v18 + v17)))), 180.0);
      *(a2 + 3926) = v19;
      Comp_Track8(a2 + 114);
      v21 = v20;
      *(a2 + 3925) = v20;
      v22 = 4.0;
      if (v5 && v19 < 30.0)
      {
        if (a3 >= 8)
        {
          EvCrt_Illegal_Default("NK_Heading", 0x9Bu);
        }

        else
        {
          v22 = dbl_29975C5E0[a3];
        }
      }

      v23 = v21 - v7;
      if (v21 - v7 >= 180.0)
      {
        v24 = -360.0;
      }

      else
      {
        if (v23 >= -180.0)
        {
          goto LABEL_30;
        }

        v24 = 360.0;
      }

      v23 = v23 + v24;
LABEL_30:
      v25 = *(a2 + 118);
      if (*(a2 + 24996) == 1)
      {
        v26 = *(a2 + 2977);
        v27 = v21 - v26;
        if (v21 - v26 >= 180.0)
        {
          v28 = -360.0;
        }

        else
        {
          if (v27 >= -180.0)
          {
LABEL_44:
            if (v25 >= v22)
            {
              v31 = fabs(v27);
              v38 = v31 <= 45.0;
              v30 = 15.0 / v31;
              if (v38)
              {
                v30 = 0.0;
              }
            }

            else
            {
              v30 = v25 * 0.1;
            }

            v21 = v26 + v30 * v27;
            *(a1 + 11192) = v21;
            *(a2 + 3928) = v30;
            v29 = 7;
LABEL_49:
            a2[7858] = v29;
            *(a1 + 11188) = 3;
            v32 = *a2;
            *(a1 + 11208) = *a2;
            if (v19 < 10.0 && *(a2 + 24781) >= 6u)
            {
              *(a1 + 11240) = v21;
              *(a1 + 11248) = v32;
            }

            v33 = v21 - v7;
            *(a1 + 11200) = v21 - v7;
            if (v21 - v7 >= 180.0)
            {
              v34 = -360.0;
            }

            else
            {
              if (v33 >= -180.0)
              {
LABEL_57:
                *(a1 + 11216) = *(a2 + 100);
                *(a1 + 11224) = *(a2 + 101);
                *(v4 + 3040) = 1;
LABEL_58:
                *(a2 + 119) = *(a1 + 11192);
                goto LABEL_17;
              }

              v34 = 360.0;
            }

            *(a1 + 11200) = v33 + v34;
            goto LABEL_57;
          }

          v28 = 360.0;
        }

        v27 = v27 + v28;
        goto LABEL_44;
      }

      if (v25 > v22 && v19 < 60.0)
      {
        *(a1 + 11192) = v21;
        v29 = 3;
        goto LABEL_49;
      }

      if (*(v4 + 2970) == 1 && *(a1 + 11116) == 2 && fabs(v23) > 90.0 && v19 > 45.0)
      {
        *(a1 + 11192) = v7;
        *(a2 + 3928) = 0;
        v29 = 6;
        v21 = v7;
        goto LABEL_49;
      }

      if (v25 > 4.0 && v19 >= 60.0)
      {
        v35 = 1.0 / (v19 / 60.0 * (v19 / 60.0));
        *(a2 + 3928) = v35;
        v21 = v7 + v35 * v23;
        *(a1 + 11192) = v21;
        v36 = 360.0;
        if (v21 >= 360.0)
        {
          v36 = -360.0;
        }

        else if (v21 >= 0.0)
        {
          goto LABEL_77;
        }

        v21 = v21 + v36;
        *(a1 + 11192) = v21;
LABEL_77:
        v29 = 4;
        goto LABEL_49;
      }

      if (v25 > v6)
      {
        v37 = 1.0;
        if (v19 > 10.0)
        {
          v38 = v19 > 40.0 || v25 <= 1.0;
          if (v38)
          {
            v37 = fmin(0.93 / fmax(fabs(v23), 2.22044605e-16) + 0.07, 0.25);
          }

          else
          {
            v37 = 0.25 / (v19 / 40.0);
          }
        }

        *(a2 + 3928) = v37;
        v21 = v7 + v37 * v23;
        *(a1 + 11192) = v21;
        v42 = 360.0;
        if (v21 >= 360.0)
        {
          v42 = -360.0;
        }

        else if (v21 >= 0.0)
        {
          goto LABEL_95;
        }

        v21 = v21 + v42;
        *(a1 + 11192) = v21;
LABEL_95:
        v29 = 5;
        goto LABEL_49;
      }

      v39 = v21 - *(a2 + 3227);
      if (v39 >= 180.0)
      {
        v40 = -360.0;
      }

      else
      {
        if (v39 >= -180.0)
        {
          goto LABEL_80;
        }

        v40 = 360.0;
      }

      v39 = v39 + v40;
LABEL_80:
      if (a3 >= 5)
      {
        if (a3 - 5 < 3)
        {
          goto LABEL_88;
        }

        EvCrt_Illegal_Default("NK_Heading", 0xFCu);
      }

      if (*v16 >= 8u && v19 < 10.0 && *(a2 + 26104) == 1 && fabs(v39) < 10.0 && *(a2 + 3205) < 0.1)
      {
        v29 = 3;
        v41 = 1.0;
LABEL_89:
        *(a1 + 11192) = v21;
        *(a2 + 3928) = v41;
        goto LABEL_49;
      }

LABEL_88:
      v29 = 6;
      v41 = 0.0;
      v21 = v7;
      goto LABEL_89;
    }
  }

  Comp_Track8(a2 + 114);
  *(a2 + 119) = v11;
  *(a2 + 3925) = v11;
  v12 = *(a2 + 115) * *(a2 + 115);
  v13 = *(a2 + 114) * *(a2 + 114);
  if (v12 < 0.000001 && v13 < 0.000001)
  {
    v13 = 0.000001;
    v12 = 0.000001;
  }

  *(a2 + 3926) = fmin(sqrt(57.2957795 / (v13 + v12) * ((*(a2 + 3036) * v12 + *(a2 + 3037) * v13) * (57.2957795 / (v13 + v12)))), 180.0);
  a2[7858] = 1;
LABEL_17:
  v14 = *MEMORY[0x29EDCA608];
}

uint64_t Kep_Check_Almanac(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 16);
  if (a1 - 255 > v2)
  {
    do
    {
      v2 += 256;
    }

    while (a1 - 255 > v2);
    *(a2 + 16) = v2;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  if (v3 != 6 && (v3 == 4 ? (v5 = v4 > 5) : (v5 = 1), v5))
  {
    v6 = 4800.0;
  }

  else
  {
    v6 = 6300.0;
  }

  v7 = *(a2 + 20);
  if (v3 == 5)
  {
    v8 = *(a2 + 72);
    v9 = *(a2 + 40);
    v10 = 0.000000314159265;
    v11 = 7000.0;
    v12 = 0.1;
    goto LABEL_42;
  }

  v13 = v3 == 4;
  v14 = v4 > 5 && v3 == 4;
  if (v14)
  {
    v8 = *(a2 + 72);
    v12 = 0.1;
    v11 = 7000.0;
  }

  else
  {
    v16 = v4 < 6 && v3 == 4 || v3 == 6;
    v11 = 6700.0;
    if (!v16)
    {
      v11 = 5800.0;
    }

    v8 = *(a2 + 72);
    if (v3 == 3)
    {
      v13 = 0;
      v12 = 0.03;
      if (((v4 - 14) & 0xFB) == 0)
      {
        v12 = 0.25;
      }

      v9 = *(a2 + 40);
      goto LABEL_34;
    }

    v12 = 0.03;
  }

  v9 = *(a2 + 40);
  if (v14)
  {
    v10 = 0.000000314159265;
    goto LABEL_42;
  }

LABEL_34:
  v17 = v4 < 6 && v13;
  v18 = v3 == 6 || v17;
  v10 = 0.000000314159265;
  if (!v18)
  {
    v10 = 0.0;
  }

LABEL_42:
  if (v7 <= 604799)
  {
    v19 = v7 >> 31;
  }

  else
  {
    v19 = 2;
  }

  if (v8 < v6)
  {
    v19 |= 4u;
  }

  if (v8 > v11)
  {
    v19 |= 8u;
  }

  if (v9 < 0.0)
  {
    v19 |= 0x10u;
  }

  if (v9 > v12)
  {
    v19 |= 0x20u;
  }

  v20 = *(a2 + 56);
  if (v20 < -0.00000198862815)
  {
    v19 |= 0x40u;
  }

  if (v20 <= v10)
  {
    result = v19;
  }

  else
  {
    result = v19 | 0x80;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_Alm_Calc_Corrns(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  v32 = *MEMORY[0x29EDCA608];
  v9 = a2[5] + 43200.0;
  v10 = a2[7];
  v11 = __sincos_stret(a2[8]);
  v31 = v10 * v11.__sinval;
  v29 = v10 * v11.__cosval;
  v12 = a2[4] + 1.09955743;
  v13 = __sincos_stret(a4);
  v14 = __sincos_stret(a4 + a4);
  v15 = __sincos_stret(a4 * 3.0);
  v16 = __sincos_stret(a4 * 4.0);
  v17 = __sincos_stret(v12);
  v18 = v17.__sinval * v17.__sinval * -1.5 + 1.0;
  v19.f64[0] = 6378.136 / a3 * (6378.136 / a3);
  v20 = v19.f64[0] * 0.00162393863 * v18;
  v21 = v19.f64[0] * -0.000405984656 * (v17.__sinval * v17.__sinval);
  v22.f64[0] = v13.__sinval * (v29 * 3.5) + 6.28318531 / v9 * a5 + v31 * -2.5 * v13.__cosval + v14.__sinval * -0.5;
  v22.f64[1] = v14.__cosval + v13.__sinval * v31 - v29 * v13.__cosval;
  v23 = vmlaq_f64(vmlaq_f64(v22, v15, vmulq_n_f64(xmmword_29975C680, v29)), vextq_s8(v15, v15, 8uLL), vmulq_n_f64(xmmword_29975C690, v31));
  v24 = v19.f64[0] * 0.00324787725 * v18;
  v25 = v19.f64[0] * 0.00162393863 * (v17.__cosval * v17.__cosval);
  *a1 = (v19.f64[0] * 0.00162393863 * (v17.__sinval * v17.__sinval) * (v14.__cosval + v13.__cosval * (v29 * -0.5) + v31 * 0.5 * v13.__sinval + v29 * 3.5 * v15.__cosval + v31 * 3.5 * v15.__sinval) + v24 * (v13.__sinval * v31 + v29 * v13.__cosval)) * a3;
  *(a1 + 8) = v21 * (v13.__sinval + v15.__sinval * -2.33333333 + v29 * 5.0 * v14.__sinval + v29 * -8.5 * v16.__sinval + v31 * 8.5 * v16.__cosval + v31 * v14.__cosval) + v20 * (v13.__sinval + 6.28318531 / v9 * v29 * a5 + v29 * 1.5 * v14.__sinval - v31 * 1.5 * v14.__cosval) + v25 * (v14.__sinval * (v29 * -0.5) + 6.28318531 / v9 * v29 * a5);
  v19.f64[1] = v19.f64[0] * 0.000811969313;
  v26 = &unk_29975C658;
  *&v27.f64[0] = *&vld1q_dup_f64(v26);
  *(a1 + 16) = v21 * (v31 * -5.0 * v14.__sinval - (v13.__cosval - v15.__cosval * -2.33333333) + v29 * -8.5 * v16.__cosval - v31 * 8.5 * v16.__sinval + v29 * v14.__cosval) + v20 * (v13.__cosval + -(v31 * (6.28318531 / v9)) * a5 + v29 * 1.5 * v14.__cosval + v31 * 1.5 * v14.__sinval) + v25 * (v14.__sinval * (v31 * 0.5) + -(v31 * (6.28318531 / v9)) * a5);
  v27.f64[1] = v17.__sinval;
  *(a1 + 24) = vmulq_f64(vmulq_n_f64(vmulq_f64(v19, v27), v17.__cosval), v23);
  *(a1 + 40) = v19.f64[0] * 0.00487181588 * (v17.__sinval * v17.__sinval) * (v13.__sinval * (v29 * -0.291666667) + v31 * -0.291666667 * v13.__cosval + v31 * -0.680555556 * v15.__cosval + v29 * 0.680555556 * v15.__sinval + v14.__sinval * 0.25) + v24 * (v13.__sinval * (v29 * 1.75) + 6.28318531 / v9 * a5 + v31 * -1.75 * v13.__cosval) + v25 * v23.f64[0];
  v28 = *MEMORY[0x29EDCA608];
}

uint64_t Pre_Positioning_Update_Wrapper()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v1 = 0;
  v17 = *MEMORY[0x29EDCA608];
  *(v15 + 6) = 0;
  v13 = 0;
  memset(v6, 0, sizeof(v6));
  v12 = 0;
  v7 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v14 = 0x500000002;
  v15[2] = 0;
  v15[0] = 0;
  do
  {
    v2 = &v6[v1 / 2];
    *(v2 + 76) = 0;
    *(v2 + 308) = 0;
    v3 = &v15[v1 + 4];
    *v3 = 0uLL;
    *(v3 + 1) = 0uLL;
    *(v3 + 29) = 0;
    v1 += 6;
  }

  while (v1 != 492);
  bzero(v16, 0x2F2uLL);
  *&v16[760] = 0u;
  GNSS_Validate_p_list(v0, "Pre_Positioning_Update_Wrapper: Entry");
  *(v0 + 256) = v6;
  Pre_Positioning(*(v0 + 200), v6, *(v0 + 72), *(v0 + 80), *(v0 + 64), *(v0 + 56), *(v0 + 96), *(v0 + 104), *(v0 + 16), *(v0 + 40), *(v0 + 32));
  *(v0 + 256) = 0;
  result = GNSS_Validate_p_list(v0, "Pre_Positioning_Update_Wrapper:  Exit");
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *NK_Set_Aid_Data(_DWORD *result, int *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a2 + 960) != 1)
  {
    v3 = result[5] < 5u;
    v4 = &unk_299728600;
    goto LABEL_6;
  }

  if (!result[2762] || a2[3] < 8)
  {
    v3 = result[5] < 5u;
    v4 = &unk_29975C6B0;
LABEL_6:
    *(a3 + 8) = v4[v3];
    *(a3 + 32) = 0x4163125300000000;
    v5 = 9999000.0;
    goto LABEL_7;
  }

  if (result[2757] && a2[6147] >= 5 && *(a2 + 3084) < 400.0 && *(a2 + 3085) < 400.0)
  {
    *a3 = *(a2 + 102);
    *(a3 + 16) = *a2;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 3085);
  *(a3 + 8) = v8;
  v9 = result[5];
  v10 = dbl_29975C6A0[v9 > 4];
  if (v8 > v10)
  {
    *(a3 + 8) = v10;
  }

  if (v7 && a2[6148] >= 4 && ((v11 = *(a2 + 3091), v9 > 8) ? (v12 = 500000.0) : (v12 = dbl_29975C6C8[v9]), v11 < v12))
  {
    v13 = *(a2 + 117);
    v14 = *a2;
    *(a3 + 40) = *a2;
    *(a3 + 24) = v13;
    *(a3 + 32) = v11;
    v5 = *(a2 + 3092);
    if (v5 < 5.0 && a2[6215] != 2 && v9 <= 4 && a2[6216] != 2 && *(a2 + 118) > 0.3)
    {
      *(a3 + 48) = *(a2 + 119);
      *(a3 + 64) = v14;
    }
  }

  else
  {
    *(a3 + 32) = *(a2 + 3091);
    v5 = *(a2 + 3092);
  }

LABEL_7:
  *(a3 + 56) = v5;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm06_01HandleTmZXData(unsigned __int8 *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = off_2A19268F0;
  if (off_2A19268F0)
  {
    v3 = *MEMORY[0x29EDCA608];

    return v2(0, a1, a2);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm06_01HandleTmZXData", 258);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
    }

    v7 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void Gnm06_04SendTruthPos(unsigned __int8 *a1, unsigned int a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v28 = 0;
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  v31 = 0;
  v32 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v26 = 0;
  v27 = 0;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  PlcGnssHw = Gnm03_64GetPlcGnssHw();
  plc00_03DecodeMsg(2, a1, a2, __s, &v28, &v31, &v26, PlcGnssHw);
  if (v31)
  {
    if (IsLoggingAllowed == 1 && plc00_15GetExtErrAsString(&v31, v30, 0x104uLL) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Err,%s\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm06_04SendTruthPos", 776, v26, HIBYTE(v26), v30);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v24 = a1[6];
      v25 = a1[7];
      v22 = a1[4];
      v23 = a1[5];
      v20 = a1[2];
      v21 = a1[3];
      v18 = *a1;
      v19 = a1[1];
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ZXHeader %X%X%X%X%X%X%X%X\n", v7, "GNM", 87, "Gnm06_04SendTruthPos");
LABEL_17:
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }
  }

  else if (__s[3] == 116)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TruthPos,Lat,%d,Long,%d,Alt,%d\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm06_04SendTruthPos", v43, v44, v45);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    v11 = gnssOsa_Calloc("Gnm06_04SendTruthPos", 129, 1, 0x28uLL);
    if (v11)
    {
      v12 = v11;
      v13.i64[0] = v43;
      v13.i64[1] = v44;
      v11[1] = vmulq_f64(vcvtq_f64_s64(v13), xmmword_29975C710);
      v11[2].f64[0] = v45 * 0.1;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_VAL_TRUTH_POS_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm06_04SendTruthPos");
        LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
      }

      AgpsSendFsmMsg(128, 134, 8394752, v12);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Command,%u\n", v17);
    goto LABEL_17;
  }

  v16 = *MEMORY[0x29EDCA608];
}

void padMessage(char **a1, unsigned int *a2, char **a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (((v8 + 9) & 0x3F) != 0)
  {
    v9 = ((v8 + 9) >> 6) + 1;
  }

  else
  {
    v9 = (v8 + 9) >> 6;
  }

  *a2 = v9;
  if (a3 != a1)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v6, v7, v8);
    v9 = *a2;
  }

  v10 = v9 << 6;
  v11 = *a3;
  v12 = a3[1] - *a3;
  if (v10 <= v12)
  {
    if (v10 < v12)
    {
      a3[1] = &v11[v10];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a3, v10 - v12);
    v11 = *a3;
  }

  v11[*(a1 + 2) - *a1] = 0x80;
  v13 = 8 * (a1[1] - *a1);
  if (v13)
  {
    v14 = *a2 << 6;
    if (v14)
    {
      v15 = v14 - 1;
      do
      {
        (*a3)[v15] = v13;
        v17 = v15-- != 0;
        if (v13 < 0x100)
        {
          break;
        }

        v13 >>= 8;
      }

      while (v17);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

uint64_t *Get8BitSeqenceFrom32bitSequence(uint64_t *result, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + 4 * v4);
      if (v6)
      {
        v7 = (4 * v5) | 3;
        do
        {
          *(*a2 + v7) = v6;
          v9 = v7-- != 0;
          if (v6 < 0x100)
          {
            break;
          }

          v6 >>= 8;
        }

        while (v9);
        v3 = *result;
        v2 = result[1];
      }

      v4 = ++v5;
    }

    while (v5 < ((v2 - v3) >> 2));
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void SUPL_SHA_1::calculateSha()
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = xmmword_29975C730;
  LODWORD(v4) = -1009589776;
  v1 = 0;
  v2 = 0;
  v0 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>();
}

void SUPL_SHA_256::calculateSha()
{
  v5 = *MEMORY[0x29EDCA608];
  *__p = xmmword_29975C844;
  v4 = unk_29975C854;
  v1 = 0;
  v2 = 0;
  v0 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>();
}

uint64_t calculateHmac<SUPL_SHA_1>(uint64_t **__src, char **a2)
{
  v3 = __src;
  v20 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = *(__src + 23);
  if ((v4 & 0x80) != 0)
  {
    v4 = __src[1];
    if (v4 - 1 < 0x100)
    {
      if (v4 <= 0x40)
      {
        v3 = *__src;
        goto LABEL_16;
      }

LABEL_7:
      std::vector<unsigned char>::vector[abi:ne200100](&v18, 20);
      v19 = 20;
      v5 = *(v3 + 23);
      if (v5 >= 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = *v3;
      }

      if (v5 >= 0)
      {
        v7 = *(v3 + 23);
      }

      else
      {
        v7 = v3[1];
      }

      memset(v17, 0, sizeof(v17));
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(v17, v6, v6 + v7, v7);
      SUPL_SHA_1::calculateSha();
    }
  }

  else if (*(__src + 23))
  {
    if (v4 < 0x41)
    {
LABEL_16:
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&v14, v3, v3 + v4, v4);
      v8 = v15 - v14;
      if ((v15 - v14) > 0x3F)
      {
        if (v8 != 64)
        {
          v15 = v14 + 64;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&v14, 64 - v8);
      }

      std::vector<unsigned char>::vector[abi:ne200100](v13, 64);
      for (i = 0; i != 64; ++i)
      {
        *(v13[0] + i) = *(v14 + i) ^ 0x36;
      }

      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v13, v13[1], *a2, a2[1], a2[1] - *a2);
      std::vector<unsigned char>::vector[abi:ne200100](&v18, 20);
      v19 = 20;
      std::vector<unsigned char>::vector[abi:ne200100](&v12, 20);
      SUPL_SHA_1::calculateSha();
    }

    goto LABEL_7;
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_2996020A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  v25 = *(v22 - 72);
  if (v25)
  {
    *(v22 - 64) = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}