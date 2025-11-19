uint64_t sub_1000D9528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = STACK[0x13E0];
  v12 = LODWORD(STACK[0x13E0]) + 1403;
  v13 = ((v6 ^ v8 ^ 0x56407B3F) + v7 - ((v12 ^ (a6 - 3485)) & (2 * (v6 ^ v8 ^ 0x56407B3F)))) ^ LODWORD(STACK[0x1600]);
  v14 = v13 + (v9 ^ v10) - 2 * (v13 & (v9 ^ v10));
  v15 = v14 - ((2 * v14) & 0x98EEF12E) - 864585577;
  LODWORD(STACK[0x17E0]) = HIWORD(v15);
  v16 = STACK[0x18A0];
  STACK[0x1840] = STACK[0x18A0] + 10000;
  LODWORD(STACK[0x1850]) = v15;
  STACK[0x1880] = v16 + 272;
  v17 = *(STACK[0x1708] + 8 * v11);
  LODWORD(STACK[0x1860]) = (v11 - 3016) | 0x849;
  LODWORD(STACK[0x17F0]) = v12 ^ 0x156C;
  LODWORD(STACK[0x1800]) = v12 ^ 0x1628;
  LODWORD(STACK[0x1820]) = v12 ^ 0x14D6;
  LODWORD(STACK[0x1830]) = v12 ^ 0x16A6;
  return v17(STACK[0x1810], STACK[0x18F0], HIBYTE(v15) ^ 0xFFFFFFCC, 79, 20);
}

uint64_t sub_1000D9684(unsigned __int8 *a1, uint64_t a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v22 = (v19 ^ (v9 + 792) ^ LODWORD(STACK[0x1860])) - ((2 * (v19 ^ (v9 + 792) ^ LODWORD(STACK[0x1860])) - 886969668) & 0xF62C1FE6) + 1621558609;
  v23 = *(*(&off_1002DD400 + SLODWORD(STACK[0x17F0])) + 4 * (v22 ^ v13) - 857192978) + (v22 ^ v13) * (v22 ^ v13);
  v24 = 758242427 * v23 - 1620723512 + (~(442743030 * v23) | 0xC1348E6F) + 1;
  v25 = (((v24 >> 3) ^ (v24 >> 2) ^ 0x3435D92B) - 1620723512 - 2 * (((v24 >> 3) ^ (v24 >> 2) ^ 0x3435D92B) & 0x1F65B8DC ^ ((v24 >> 3) ^ (v24 >> 2)) & a5)) ^ v24;
  v27 = (v22 ^ 0xF3FF7A92A4E8F9F8) + 0xC00856D200109F5 + ((2 * (v22 ^ 0x7B160FF3)) & 0x1BFFDEC16);
  *(a7 + 4 * ((*(STACK[0x18F0] + v27) - 39) ^ a3)) = v8 ^ ((((a8[BYTE2(v25) ^ 0x34] - 28) << 16) | (*(a2 + (HIBYTE(v25) ^ 0x28)) << 24) | *(v11 + (v25 ^ 0x5CLL)) ^ a4 | ((a1[BYTE1(v25) ^ 0x2FLL] ^ a4) << 8)) + v10) ^ 0x7C75C570;
  v28 = (*(*(&off_1002DD400 + SLODWORD(STACK[0x1800])) + 4 * (v22 ^ 0x7B160FAE) - 1703671894) - (v22 ^ 0x7B160FAE | 0x7F)) ^ ((v22 ^ 0x7B160FD5) - 1599237378);
  v29 = ((*(v11 + (v28 ^ 0x59)) ^ a4 | ((a1[BYTE1(v28) ^ 0xFDLL] ^ a4) << 8)) & 0xFF00FFFF | ((a8[BYTE2(v28) ^ 0xFALL] - 28) << 16) | (*(STACK[0x18F0] + (HIBYTE(v28) ^ 0x51)) << 24)) + v10;
  v30 = HIWORD(LODWORD(STACK[0x1850])) ^ 0x77;
  *(v17 + 4 * (v30 ^ (a8[v27] - 28))) = v29 + v12 - 2 * (v29 & v12) - 675965487 - ((2 * (v29 + v12 - 2 * (v29 & v12))) & 0xAF6B2BA2);
  HIDWORD(v31) = *(*(&off_1002DD400 + SLODWORD(STACK[0x1820])) + 4 * (v22 ^ 0x7B160FC4) - 982995246) + (v22 ^ 0x7B160FC4) * (v22 ^ 0x7B160FC4);
  LODWORD(v31) = HIDWORD(v31);
  v32 = (v31 >> 7) - 1248659588 - ((2 * (v31 >> 7)) & 0x6B25EEF8);
  v33 = (((v32 >> 5) ^ (v32 >> 2) ^ 0x28C82A64) - 1248659588 - 2 * (((v32 >> 5) ^ (v32 >> 2) ^ 0x28C82A64) & 0x3592F77E ^ ((v32 >> 5) ^ (v32 >> 2)) & 2)) ^ v32;
  *(STACK[0x1840] + 4 * (a1[v27] ^ v15)) = v21 ^ (((*(v11 + (v33 ^ 0x2DLL)) ^ 0x4F | ((a1[BYTE1(v33) ^ 0xD9] ^ 0x4F) << 8)) & 0xFF00FFFF | ((a8[BYTE2(v33) ^ 0x84] - 28) << 16) | (*(STACK[0x18F0] + (HIBYTE(v33) ^ 0xFELL)) << 24)) + v10) ^ 0xEDE7C3DC;
  v34 = (*(*(&off_1002DD400 + (v18 ^ 0x142B)) + 4 * (v22 ^ 0x7B160FE1) - 109335803) + (v22 ^ 0x7B160FE1) * (v22 ^ 0x7B160FE1)) ^ v22;
  *(STACK[0x1880] + 4 * (*(v11 + v27) ^ v14)) = v16 ^ ((*(v11 + (((*(*(&off_1002DD400 + (v18 ^ 0x142B)) + 4 * (v22 ^ 0x7B160FE1) - 109335803) + (v22 ^ 0xE1) * (v22 ^ 0xE1)) ^ v22) ^ 0x22)) ^ 0x4F | ((((a8[BYTE2(v34) ^ 0xE0] - 28) << 8) | (*(STACK[0x18F0] + (HIBYTE(v34) ^ 0xE2)) << 16) | a1[BYTE1(v34) ^ 0xD6] ^ 0x4F) << 8)) + v10) ^ 0x77785A02;
  HIDWORD(v31) = *(*(&off_1002DD400 + SLODWORD(STACK[0x1830])) + 4 * (v22 ^ 0x7B160FDD) - 435537182) + (v22 ^ 0x7B160FDD) * (v22 ^ 0x7B160FDD);
  LODWORD(v31) = HIDWORD(v31);
  v35 = ((v31 >> 5) >> 2) & 0x3C5E37B6 ^ (v31 >> 5);
  v36 = HIBYTE(v35) ^ 0x49;
  v37 = a1[BYTE1(v35) ^ 0x58];
  v38 = a8[BYTE2(v35) ^ 0xA6];
  v39 = *(v11 + (((v31 >> 5) >> 2) & 0xB6 ^ (v31 >> 5) ^ 0xADLL)) ^ 0x4F;
  LODWORD(v36) = (((v38 - 28) << 16) | (*(STACK[0x18F0] + v36) << 24) | v39 | ((v37 ^ 0x4F) << 8)) + v10;
  *(STACK[0x1720] + 4 * ((*(STACK[0x18F0] + v27) - 39) ^ a3)) = v36 - 383526655 - 2 * (v36 & 0x6923D917 ^ v39 & 0x16);
  v40 = (*(*(&off_1002DD400 + (v18 ^ 0x153C)) + 4 * (v22 ^ 0x7B160FAF) - 1222587330) - (v22 ^ 0x7B160FAF | 0xE9)) ^ 0x67A5B57A;
  v41 = v40 - ((2 * v40) & 0x54E84B18) - 1435228788;
  v42 = *(v11 + (v41 ^ 0x8CLL));
  LODWORD(v36) = (((a8[BYTE2(v41) ^ 0x74] - 28) << 16) | (*(STACK[0x18F0] + (HIBYTE(v41) ^ 0xAALL)) << 24)) + v10;
  v43 = (v42 ^ 0x4F) + v20 - ((2 * v42) & 0x140);
  v44 = ((v43 ^ 0xEAF1CC5F) + 1) ^ -(v43 ^ v20);
  v45 = STACK[0x18F0];
  *(STACK[0x1730] + 4 * (v30 ^ (a8[v27] - 28))) = ((a1[BYTE1(v41) ^ 0x25] ^ 0x4F) << 8) ^ 0xFDE7376E ^ (((v20 + v44 + (~(2 * v44) | 0xD5E398BF) + 1) ^ v43) + ((v36 - 1302158460 - ((2 * v36) & 0x64C40000)) ^ 0xB262A384));
  v46 = (*(*(&off_1002DD400 + (v18 ^ 0x16C2)) + 4 * (v22 ^ 0x7B160F28) - 915354818) - (v22 ^ 0x7B160F28 | 0xEF)) ^ 0xD41A328;
  v47 = v46 - ((2 * v46) & 0xB934A424) - 593866222;
  v48 = (*(v11 + (v47 ^ 0x12)) ^ 0x4F | ((((a8[BYTE2(v47) ^ 0x9ALL] - 28) << 8) | (v45[HIBYTE(v47) ^ 0xDCLL] << 16) | a1[BYTE1(v47) ^ 0x52] ^ 0x4F) << 8)) + v10;
  *(STACK[0x1740] + 4 * (a1[v27] ^ v15)) = v48 + 799168378 - ((2 * v48) & 0x5F44AEF4);
  v49 = *(v11 + (v22 ^ 0xEAu ^ (*(*(&off_1002DD400 + (v18 ^ 0x171B)) + (v22 ^ 0x7B160F21) - 18303947) - (v22 ^ 0x21 | 0x94)))) ^ 0x4F;
  v50 = (((*a8 - 28) << 16) | (*v45 << 24) | ((*a1 ^ 0x4F) << 8) | v49) + v10;
  *(STACK[0x1710] + 4 * (*(v11 + v27) ^ v14)) = v50 - 1686157816 - 2 * (v50 & 0x1B7F461C ^ v49 & 0x14);
  v51 = (~(2 * v19) & 2) + (v19 ^ 0xB953473E);
  return (*(STACK[0x1708] + 8 * ((195 * (((v51 - 1185724610 - ((2 * v51) & 0x72A68E7E) + 1) ^ 0xB953473E) > 0x1A6F0BA1)) ^ v18)))();
}

uint64_t sub_1000D9F0C()
{
  v0 = STACK[0x18A0];
  LODWORD(STACK[0x1800]) = *(STACK[0x18A0] + 3752);
  v1 = v0[936];
  v2 = v0[949];
  HIDWORD(v3) = v1 ^ 0x23DA;
  LODWORD(v3) = v1 ^ 0x5C440000;
  v4 = v0[932];
  LODWORD(STACK[0x1820]) = v0[943];
  HIDWORD(v3) = v3 >> 18;
  LODWORD(v3) = HIDWORD(v3);
  v5 = v0[946];
  v6 = v0[940];
  v7 = v0[944];
  v8 = v0[941];
  v9 = v0[945];
  LODWORD(STACK[0x1830]) = v0[958];
  v10 = v0[939];
  v11 = v0[933];
  v12 = v0[942];
  v13 = v0[935];
  v14 = v0[959];
  v15 = v0[952];
  v16 = v0[953];
  v17 = v0[947];
  v18 = v0[956];
  v19 = v0[948];
  LODWORD(STACK[0x1780]) = LODWORD(STACK[0x17E0]) ^ 0x77;
  v20 = v0[962];
  v21 = v0[967];
  LODWORD(STACK[0x1770]) = (v3 >> 14) + 2075191717 - ((2 * (v3 >> 14)) & 0xF761D34A);
  v22 = v0[954];
  LODWORD(STACK[0x1600]) = (v21 ^ 0xA3BBDC25) + 1;
  v23 = STACK[0x1860];
  STACK[0xFE0] = *(&off_1002DD400 + (LODWORD(STACK[0x1860]) ^ 0xDE9)) - 1892058563;
  STACK[0x1790] = *(&off_1002DD400 + (v23 ^ 0xF8D)) - 177609695;
  v24 = v0[961];
  v25 = STACK[0x1850];
  LODWORD(STACK[0x15B0]) = v11 ^ LODWORD(STACK[0x1850]);
  LODWORD(STACK[0x1540]) = v13 ^ v25;
  v26 = v0[957];
  LODWORD(STACK[0x1530]) = v4 ^ v25;
  LODWORD(STACK[0x14C0]) = LODWORD(STACK[0x1800]) ^ 0x27F4CA7F;
  LODWORD(STACK[0x14B0]) = v10 ^ 0x27F4CA7F;
  LODWORD(STACK[0x14A0]) = v6 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1490]) = v8 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1480]) = v12 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1470]) = LODWORD(STACK[0x1820]) ^ 0x27F4CA7F;
  LODWORD(STACK[0x1460]) = v7 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1450]) = v9 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1440]) = v5 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1430]) = v17 ^ 0x27F4CA7F;
  LODWORD(STACK[0x13E0]) = v19 ^ 0x27F4CA7F;
  LODWORD(STACK[0x13D0]) = v2 ^ 0x27F4CA7F;
  LODWORD(STACK[0x13C0]) = v15 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1180]) = v16 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1150]) = v22 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1130]) = v18 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1120]) = v26 ^ 0x27F4CA7F;
  LODWORD(STACK[0x1110]) = LODWORD(STACK[0x1830]) ^ 0x27F4CA7F;
  LODWORD(STACK[0x1100]) = v14 ^ 0x27F4CA7F;
  LODWORD(STACK[0x10F0]) = v24 ^ 0x8BF1B60B;
  LODWORD(STACK[0x10E0]) = v20 ^ 0x27F4CA7F;
  LODWORD(STACK[0x10D0]) = v0[963] ^ 0x27F4CA7F;
  LODWORD(STACK[0x10C0]) = v0[964] ^ 0x27F4CA7F;
  LODWORD(STACK[0x10B0]) = v0[966] ^ 0x27F4CA7F;
  LODWORD(STACK[0x10A0]) = v0[937];
  LODWORD(STACK[0x1090]) = v0[934];
  LODWORD(STACK[0x1080]) = v0[950];
  LODWORD(STACK[0x1070]) = v0[955];
  LODWORD(STACK[0x1060]) = v0[960];
  LODWORD(STACK[0x1058]) = v0[951];
  LODWORD(STACK[0x1050]) = v0[968];
  LODWORD(STACK[0x1048]) = v0[965];
  LODWORD(STACK[0x1040]) = v0[969];
  v27 = v0[971];
  LODWORD(STACK[0x1030]) = v0[975];
  LODWORD(STACK[0xFE8]) = v21;
  LODWORD(STACK[0x1028]) = v21 ^ 0x5C4423DA;
  v28 = v0[974];
  LODWORD(STACK[0x1020]) = v28;
  LODWORD(STACK[0x1018]) = v28 ^ 0x5C4423DA;
  STACK[0x1010] = (v23 + 795781962);
  LODWORD(STACK[0x1008]) = v0[973];
  LODWORD(STACK[0x1038]) = v27;
  LODWORD(STACK[0x1000]) = v27 ^ 0xB460D15F;
  LODWORD(STACK[0xFF8]) = v0[970];
  LODWORD(STACK[0xFF0]) = v0[972];
  return (*(STACK[0x1708] + 8 * v23))();
}

uint64_t sub_1000DA224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x1800]) = v10;
  LODWORD(STACK[0x1820]) = v9;
  LODWORD(STACK[0x1830]) = v8;
  STACK[0x1880] = v13;
  v15 = STACK[0x1010] + v13 - (v8 & 0x5EDD7160);
  v16 = STACK[0x1760];
  v17 = *(STACK[0x1760] + (v15 ^ 0x2F6EB8B3u));
  v18 = (v17 ^ 0x4F) + ((2 * v17) | 0x6B) - 53;
  v19 = ((v17 ^ 0x4F) + ((2 * v17) | 0x6B) - 53);
  v20 = *(STACK[0x13F0] + v19);
  v21 = STACK[0x1860];
  v22 = *(STACK[0x1760] + (v15 ^ 0x2F6EB8B2u));
  v23 = *(&off_1002DD400 + LODWORD(STACK[0x1860]) - 2752) - 1142934458;
  v24 = v18 * v18;
  LOBYTE(v18) = v18 * v18 + v23[v19];
  v25 = STACK[0x1880] - 10;
  v26 = *(STACK[0x1760] + ((STACK[0x1880] + 2) & 0xFFFFFFFE));
  v27 = *(&off_1002DD400 + LODWORD(STACK[0x1860]) - 3367) - 213013567;
  STACK[0x17E0] = v27;
  v28 = STACK[0x18F0];
  v29 = *(STACK[0x18F0] + (v18 ^ 0x42)) - 39;
  v30 = STACK[0xFE0];
  LOBYTE(v26) = (*(STACK[0xFE0] + (v26 ^ 0x1A)) + (v26 ^ 0x1A) * (v26 ^ 0x1A)) ^ 0xCE;
  LOBYTE(v26) = v26 - ((2 * v26) & 0x9A) + 77;
  v31 = STACK[0x1750];
  v32 = (v26 >> 5) ^ (v26 >> 3) ^ v14;
  v33 = *(v16 + (v25 + 13)) ^ 0xE3;
  v34 = *(&off_1002DD400 + v21 - 3013) - 863515935;
  v35 = v34[v33];
  v36 = STACK[0x1880] + 5;
  v37 = *(v16 + ((v25 + 14) & 0xFFFFFFFC)) ^ 0x40;
  LOBYTE(v26) = v26 ^ 0x49 ^ (v32 - ((2 * v32) & 0x1A) + 77);
  v38 = *(STACK[0x1790] + (v24 + v20)) + (v24 + v20) * (v24 + v20);
  v39 = ((v29 << 24) - 297250879 - ((v29 << 25) & 0xDDDDDDDD)) ^ v12 ^ ((*(STACK[0x1750] + ((v22 ^ (v27[v22 ^ 0x63] - (v22 ^ 0x63 | 0xC5))) ^ 6u)) - 28) << 16);
  v40 = v38 - 1367751863 - ((2 * v38) & 0x92);
  v41 = v23;
  v42 = (v23[v37] + v37 * v37) ^ 0xDBLL;
  LODWORD(STACK[0x17A0]) = STACK[0x1880] - 1367751858;
  v43 = *(v28 + v42) - 39;
  v44 = STACK[0x1810];
  LODWORD(v42) = *(STACK[0x1810] + v26);
  v45 = STACK[0x1900];
  v46 = *(STACK[0x1900] + ((v35 + v33 * v33) ^ 0x36));
  LODWORD(STACK[0x17F0]) = ((v43 << 24) - 153711516 - ((v43 << 25) & 0xEC000000)) ^ v11;
  LODWORD(v23) = 2 * ((v40 ^ 0x2E79C349) & v36);
  v47 = *(v16 + ((v25 + 16) & 0xFFFFFFFE)) ^ 0xC6;
  v48 = v46 ^ 0x4F;
  v49 = v36 + (v40 ^ 0xAE79C349) - v23;
  LOBYTE(v47) = (*(v30 + v47) + v47 * v47) ^ 0xCE;
  LOBYTE(v47) = v47 - ((2 * v47) & 0x44) + 34;
  v50 = (v47 >> 5) ^ (v47 >> 3);
  LODWORD(v42) = v39 ^ ((v42 ^ 0x4F) << 8);
  v51 = STACK[0x1880] + 4294967286u;
  v52 = *(v16 + (v25 + 17)) ^ 0x1ELL;
  v53 = *(v16 + ((v25 + 18) & 0xFFFFFFFC)) ^ 0xB6;
  v54 = v41[v53];
  v55 = *(v16 + ((STACK[0x1880] + 0x100000009) & 0xFFFFFFFD));
  LODWORD(v47) = *(v44 + ((v47 ^ ((v50 ^ 5) - ((2 * v50) & 4) + 34)) ^ 6u));
  LODWORD(STACK[0x17D0]) = *(v45 + ((v34[v52] + v52 * v52) ^ 0x4ELL)) ^ 0x4F;
  v56 = (v40 ^ 0xAE79C349) - ((2 * v49) & 0x5CF38692) - v23;
  v57 = STACK[0x17E0];
  LOBYTE(v23) = *(STACK[0x17E0] + (v55 ^ 0xAF));
  LODWORD(v52) = *(v28 + ((v54 + v53 * v53) ^ 0x88));
  LODWORD(STACK[0x17B0]) = v47 ^ 0x4F;
  v58 = v48 ^ v42;
  v59 = *(v16 + ((v25 + 20) & 0xFFFFFFFE)) ^ 0x44;
  LOBYTE(v59) = (*(v30 + v59) + v59 * v59) ^ 0xCE;
  v60 = *(v16 + ((LODWORD(STACK[0x17A0]) + v56) ^ v40));
  LOBYTE(v59) = v59 - ((2 * v59) & 0x1A) + 13;
  LOBYTE(v48) = *(v57 + (v60 ^ 0x14));
  v61 = *(v16 + (v25 + 21)) ^ 0x8BLL;
  LOBYTE(v37) = v48 ^ v60;
  LODWORD(v55) = (((v52 - 39) << 24) + 1348077558 - (((v52 - 39) << 25) & 0xA0000000)) ^ LODWORD(STACK[0x1800]) ^ ((*(v31 + ((v55 ^ (v23 - (v55 ^ 0xAF | 0xC5))) ^ 0xEu)) - 28) << 16);
  LODWORD(v52) = *(v45 + ((v34[v61] + v61 * v61) ^ 0x5ELL));
  LOBYTE(v47) = ((v48 - (v60 ^ 0x14 | 0xC5)) ^ v60) & 0xFE;
  v62 = *(v16 + ((v51 + 23) & 0xFFFFFFFD));
  v63 = *(v16 + ((v25 + 22) & 0xFFFFFFFC)) ^ 0x30;
  LODWORD(v59) = v52 ^ 0x4F ^ v55 ^ ((*(v44 + (v59 ^ 0x16u ^ (((v59 >> 3) ^ (v59 >> 5) ^ 1) - 2 * (((v59 >> 3) ^ (v59 >> 5) ^ 1) & 0xF ^ ((v59 >> 3) ^ (v59 >> 5)) & 2) + 13))) ^ 0x4F) << 8);
  LODWORD(v55) = *(v28 + ((v41[v63] + v63 * v63) ^ 0xB7)) - 39;
  LOBYTE(v52) = ((4 * (v47 ^ 0xE0)) | ((v47 ^ 0xE0) >> 6)) & 0xFB | (4 * (v37 & 1));
  LODWORD(v47) = (*(v31 + (v62 ^ 0x12u ^ (*(v57 + (v62 ^ 0xD4)) - (v62 ^ 0xD4 | 0xC5)))) - 28);
  v64 = *(v16 + ((v25 + 24) & 0xFFFFFFFE)) ^ 0x3ALL;
  v65 = *(v16 + (v25 + 25));
  v66 = STACK[0x1400];
  LODWORD(v59) = (v59 + 1547969498 - ((2 * v59) & 0xB88847B4)) ^ LODWORD(STACK[0x1090]);
  LODWORD(v55) = *(v45 + ((v34[v65 ^ 0xB4] + (v65 ^ 0xB4) * (v65 ^ 0xB4)) ^ 0xBFLL)) ^ 0x4F ^ ((v55 << 24) + 124747469 - ((v55 & 7) << 25)) ^ LODWORD(STACK[0x1820]) ^ (v47 << 16) ^ ((*(v44 + (((*(v30 + v64) + v64 * v64) ^ (((*(v30 + v64) + v64 * v64) ^ 0xCE) >> 5) ^ (((*(v30 + v64) + v64 * v64) ^ 0xCE) >> 3)) ^ 0xC4u)) ^ 0x4F) << 8);
  LODWORD(v64) = LODWORD(STACK[0x17D0]) ^ LODWORD(STACK[0x17F0]) ^ ((*(v31 + ((((v52 ^ 0x33) >> 2) | ((v52 ^ 0x33) << 6)) ^ 0xCCLL)) - 28) << 16) ^ (LODWORD(STACK[0x17B0]) << 8);
  LODWORD(v28) = LODWORD(STACK[0x1540]) ^ (v55 + 1547969498 - ((2 * v55) & 0xB88847B4));
  v67 = *(a8 + 4 * ((LOBYTE(STACK[0x1540]) ^ (v55 - 38 - ((2 * v55) & 0xB4))) ^ 0x86u));
  LODWORD(v64) = LODWORD(STACK[0x15B0]) ^ (v64 + 1547969498 - ((2 * v64) & 0xB88847B4));
  LODWORD(v55) = WORD1(v59) ^ 0x5FD5;
  LODWORD(v63) = LODWORD(STACK[0x1530]) ^ (v58 + 1547969498 - ((2 * v58) & 0xB88847B4));
  v68 = STACK[0x1840];
  LODWORD(v59) = v59 ^ LODWORD(STACK[0x1850]);
  LODWORD(v52) = *(a7 + 4 * (BYTE3(v63) ^ 9)) ^ LODWORD(STACK[0x1770]);
  LODWORD(v52) = (v52 - 675965487 - ((2 * v52) & 0xAF6B2BA2)) ^ *(STACK[0x1400] + 4 * (BYTE2(v64) ^ 0x31u));
  LODWORD(v55) = *(STACK[0x1840] + 4 * (BYTE1(v28) ^ 0x2Fu)) ^ 0xE496B8D ^ *(STACK[0x1400] + 4 * (v55 + LODWORD(STACK[0x1780]) - 2 * (v55 & LODWORD(STACK[0x1780]))));
  LODWORD(v52) = (v52 - 637731236 - ((2 * v52) & 0xB3F9FCB8)) ^ *(STACK[0x1840] + 4 * (BYTE1(v59) ^ 0x9Eu));
  LODWORD(v55) = (v55 + 2075191717 - ((2 * v55) & 0xF761D34A)) ^ *(a7 + 4 * (BYTE3(v64) ^ 0x68));
  LODWORD(v55) = (v55 + 1547969498 - ((2 * v55) & 0xB88847B4)) ^ LODWORD(STACK[0x10A0]);
  LODWORD(v65) = LODWORD(STACK[0x14C0]) ^ *(a7 + 4 * (BYTE3(v59) ^ 0x93));
  LODWORD(v52) = (v52 + 1891464919 - ((2 * v52) & 0xE17AEDAE)) ^ v67;
  LODWORD(v44) = *(STACK[0x1840] + 4 * (BYTE1(v64) ^ 0x43u));
  v69 = (v55 + 1891464919 - ((2 * v55) & 0xE17AEDAE)) ^ *(a8 + 4 * ((LOBYTE(STACK[0x1530]) ^ (v58 - 38 - ((2 * v58) & 0xB4))) ^ 0x86u));
  v70 = *(STACK[0x1400] + 4 * (BYTE2(v28) ^ 0x8Au)) ^ *(STACK[0x1840] + 4 * (BYTE1(v63) ^ 0x3Du)) ^ (v65 - 675965487 - ((2 * v65) & 0xAF6B2BA2)) ^ *(a8 + 4 * (v64 ^ 0x88u));
  LODWORD(v47) = LODWORD(STACK[0x14B0]) ^ *(a7 + 4 * (BYTE3(v28) ^ 0x48));
  LODWORD(v72) = __ROR4__(v52, 25) ^ 0x41CBE4D3;
  HIDWORD(v72) = v72;
  v71 = v72 >> 7;
  LODWORD(v55) = v44 ^ *(a8 + 4 * (v59 ^ 0xA0u)) ^ *(STACK[0x1400] + 4 * (BYTE2(v63) ^ 0x87u)) ^ (v47 - 675965487 - ((2 * v47) & 0xAF6B2BA2));
  v73 = BYTE3(v55) ^ 0x16;
  LODWORD(v31) = LODWORD(STACK[0x14A0]) ^ *(a7 + 4 * (HIBYTE(v71) ^ 0x5E));
  v74 = *(STACK[0x1840] + 4 * (BYTE1(v55) ^ 0xA1u));
  v75 = *(a8 + 4 * (v55 ^ 0x88u));
  LODWORD(v52) = LODWORD(STACK[0x1490]) ^ *(a7 + 4 * (HIBYTE(v69) ^ 0x3B));
  LODWORD(v52) = (v52 - 675965487 - ((2 * v52) & 0xAF6B2BA2)) ^ *(STACK[0x1400] + 4 * (BYTE2(v70) ^ 0xABu));
  LODWORD(v47) = LODWORD(STACK[0x1480]) ^ *(a7 + 4 * (HIBYTE(v70) ^ 0x64));
  LODWORD(v65) = (v31 - 675965487 - ((2 * v31) & 0xAF6B2BA2)) ^ *(STACK[0x1400] + 4 * (BYTE2(v69) ^ 0x52u));
  v76 = (v47 - 675965487 - ((2 * v47) & 0xAF6B2BA2)) ^ *(STACK[0x1400] + 4 * (BYTE2(v55) ^ 0x4Cu));
  v77 = (v52 - 637731236 - ((2 * v52) & 0xB3F9FCB8)) ^ v74;
  v78 = *(a8 + 4 * ((v72 >> 7) ^ 0xCDu));
  v79 = (2 * v65) & 0xB3F9FCB8;
  LODWORD(v31) = (2 * (v78 & 0x40000)) ^ 0x80000 | v78 & 0x40000;
  v80 = v31 + 1335116937;
  v81 = v31 - 0x40000;
  v82 = v65 - 637731236;
  v83 = v31 ^ 0x4F9C4489;
  if ((v81 & v77) == 0)
  {
    v83 = v80;
  }

  v84 = v82 - v79;
  v85 = *(v66 + 4 * (BYTE2(v71) ^ 0x38u));
  v86 = LODWORD(STACK[0x1470]) ^ *(a7 + 4 * v73);
  v87 = v84 ^ *(STACK[0x1840] + 4 * (BYTE1(v70) ^ 0xC9u));
  v88 = (v76 - 637731236 - ((2 * v76) & 0xB3F9FCB8)) ^ *(STACK[0x1840] + 4 * (BYTE1(v71) ^ 0x43u));
  v89 = (v77 - 1335379081 + v83) ^ v78 & 0xFFFBFFFF;
  v90 = (v88 + 1891464919 - ((2 * v88) & 0xE17AEDAE)) ^ *(a8 + 4 * (v69 ^ 0x5Au));
  v91 = 719980908 - (v85 & 0x4000 | 0x157504B6);
  if ((v86 & v85 & 0x4000) == 0)
  {
    v91 = v85 & 0x4000 | 0x157504B6;
  }

  v92 = v87 + 1891464919 - ((2 * v87) & 0xE17AEDAE);
  v93 = v70 ^ 0x8F;
  v94 = v92 ^ v75;
  v95 = (((v86 - 359990454 + v91) ^ v85 & 0xFFFFBFFF ^ 0xD7B595D1) - 637731236 - 2 * (((v86 - 359990454 + v91) ^ v85 & 0xFFFFBFFF ^ 0xD7B595D1) & 0x59FCFE5E ^ ((v86 - 359990454 + v91) ^ v85 & 0xFFFFBFFF) & 2)) ^ *(v68 + 4 * (BYTE1(v69) ^ 0xFAu));
  v96 = (v95 + 1891464919 - ((2 * v95) & 0xE17AEDAE)) ^ *(a8 + 4 * v93);
  v97 = LODWORD(STACK[0x1460]) ^ *(a7 + 4 * (((v92 ^ v75) >> 24) ^ 0x95));
  v98 = LODWORD(STACK[0x1450]) ^ *(a7 + 4 * (HIBYTE(v89) ^ 0x36));
  v99 = (v98 - 675965487 - ((2 * v98) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v90) ^ 0x16u));
  v100 = (v97 - 675965487 - ((2 * v97) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v89) ^ 0x76u));
  v101 = *(v68 + 4 * (BYTE1(v89) ^ 0x11u));
  v102 = (v100 - 637731236 - ((2 * v100) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v90) ^ 0xBDu));
  v103 = (v99 - 637731236 - ((2 * v99) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v96) ^ 0x5Cu));
  v104 = LODWORD(STACK[0x1440]) ^ *(a7 + 4 * (HIBYTE(v90) ^ 0x9D));
  v105 = *(a8 + 4 * (v90 ^ 0x16u));
  v106 = *(a8 + 4 * (v89 ^ 0x9Eu));
  v107 = (v103 + 1891464919 - ((2 * v103) & 0xE17AEDAE)) ^ *(a8 + 4 * (v94 ^ 0xB5u));
  v108 = *(v66 + 4 * (BYTE2(v94) ^ 0xC6u));
  v109 = (v102 + 1891464919 - ((2 * v102) & 0xE17AEDAE)) ^ *(a8 + 4 * (v96 ^ 0x19u));
  v110 = *(v68 + 4 * (BYTE1(v94) ^ 0xECu)) ^ v106 ^ (v104 - 675965487 - ((2 * v104) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v96) ^ 0x26u));
  v111 = LODWORD(STACK[0x1430]) ^ *(a7 + 4 * (HIBYTE(v96) ^ 0xD1));
  v112 = v108 ^ (v111 - 675965487 - ((2 * v111) & 0xAF6B2BA2));
  v113 = (v112 - 637731236 - ((2 * v112) & 0xB3F9FCB8)) ^ v101;
  v114 = (v113 + 1891464919 - ((2 * v113) & 0xE17AEDAE)) ^ v105;
  v115 = HIBYTE(v114) ^ 0xBE;
  v116 = *(v66 + 4 * (BYTE2(v110) ^ 0x5Eu));
  v117 = LODWORD(STACK[0x13E0]) ^ *(a7 + 4 * (HIBYTE(v109) ^ 0xD1));
  v118 = *(a8 + 4 * (v114 ^ 0x20u));
  v119 = (v117 - 675965487 - ((2 * v117) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v107) ^ 0x87u));
  v120 = (2 * v119) & 0xB3F9FCB8;
  v121 = v119 - 637731236;
  v122 = *(a8 + 4 * (v109 ^ 0xCu));
  v123 = (v121 - v120) ^ *(v68 + 4 * (BYTE1(v110) ^ 0x45u));
  v124 = LODWORD(STACK[0x13D0]) ^ *(a7 + 4 * (HIBYTE(v107) ^ 0x46));
  v125 = (v124 - 637731236 - ((2 * v124) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v114) ^ 0x48u));
  v126 = *(v68 + 4 * (BYTE1(v109) ^ 0x3Fu));
  v127 = *(a7 + 4 * (HIBYTE(v110) ^ 0xAB)) ^ *(v66 + 4 * (BYTE2(v114) ^ 0xE3u));
  v128 = *(a8 + 4 * (v107 ^ 0x54u));
  LODWORD(STACK[0x1820]) = 1547969499;
  v129 = (v125 - 675965487 - ((2 * v125) & 0xAF6B2BA2)) ^ v116;
  v130 = *(a8 + 4 * (v110 ^ 0xC5u));
  v131 = (v123 + 1891464919 - ((2 * v123) & 0xE17AEDAE)) ^ v118;
  v132 = *(v66 + 4 * (BYTE2(v109) ^ 0x58u));
  v133 = *(v68 + 4 * (BYTE1(v107) ^ 0x49u));
  v134 = ((v127 ^ 0xAC057C74) + 1547969499 + ~(2 * ((v127 ^ 0xAC057C74) & 0x5C4423DB ^ v127 & 1))) ^ LODWORD(STACK[0x1080]);
  v135 = *(a7 + 4 * v115) ^ LODWORD(STACK[0x1058]);
  v136 = v132 ^ 0xF0415FAE ^ v135;
  v135 ^= 0x27F4CA7Fu;
  v137 = (v135 - v136) ^ ((v132 ^ 0x284A6A2E) + 1);
  v138 = (v129 + 1891464919 - ((2 * v129) & 0xE17AEDAE)) ^ v122;
  v139 = (v134 - 637731236 - ((2 * v134) & 0xB3F9FCB8)) ^ v126;
  v140 = ((v137 - 675965487 - ((2 * v137) & 0xAF6B2BA2)) ^ v132) + v135;
  v141 = (v139 + 1891464919 - ((2 * v139) & 0xE17AEDAE)) ^ v128;
  v142 = (v140 - 637731236 - ((2 * v140) & 0xB3F9FCB8)) ^ v133;
  v143 = (v142 + 1891464919 - ((2 * v142) & 0xE17AEDAE)) ^ v130;
  v144 = *(a8 + 4 * (v138 ^ 0xF3u));
  v145 = LODWORD(STACK[0x13C0]) ^ *(a7 + 4 * (HIBYTE(v131) ^ 0x42));
  v146 = (v145 - 675965487 - ((2 * v145) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v138) ^ 0xAEu));
  v147 = *(v66 + 4 * (BYTE2(v131) ^ 0x42u));
  v148 = LODWORD(STACK[0x1180]) ^ *(a7 + 4 * (HIBYTE(v138) ^ 0xBD));
  v149 = (v148 - 675965487 - ((2 * v148) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v141) ^ 0xBFu));
  v150 = *(v68 + 4 * (BYTE1(v138) ^ 0x94u));
  v151 = *(a7 + 4 * (HIBYTE(v143) ^ 0xCE));
  v152 = (v146 - 637731236 - ((2 * v146) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v141) ^ 0xF4u));
  v153 = (v149 - 637731236 - ((2 * v149) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v143) ^ 0x2Cu));
  v154 = (v152 + 1891464919 - ((2 * v152) & 0xE17AEDAE)) ^ *(a8 + 4 * (v143 ^ 0xA9u));
  v155 = LODWORD(STACK[0x1150]) ^ *(a7 + 4 * (HIBYTE(v141) ^ 0x81));
  v156 = ((v147 ^ 0xAC057C74 ^ v151) + 1547969498 - ((2 * (v147 ^ 0xAC057C74 ^ v151)) & 0xB88847B4)) ^ LODWORD(STACK[0x1070]);
  v157 = (v155 - 675965487 - ((2 * v155) & 0xAF6B2BA2)) ^ *(v66 + 4 * BYTE2(v143));
  v158 = (v153 + 1891464919 - ((2 * v153) & 0xE17AEDAE)) ^ *(a8 + 4 * (v131 ^ 0xD6u));
  v159 = (v157 - 637731236 - ((2 * v157) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v131) ^ 0x9Bu));
  v160 = (v159 + 1891464919 - ((2 * v159) & 0xE17AEDAE)) ^ v144;
  v161 = (v156 - 637731236 - ((2 * v156) & 0xB3F9FCB8)) ^ v150;
  v162 = (v161 + 1891464919 - ((2 * v161) & 0xE17AEDAE)) ^ *(a8 + 4 * (v141 ^ 0x12u));
  v163 = LODWORD(STACK[0x1130]) ^ *(a7 + 4 * (HIBYTE(v154) ^ 0x40));
  v164 = *(a8 + 4 * (((v161 - 41 - ((2 * v161) & 0xAE)) ^ *(a8 + 4 * (v141 ^ 0x12u))) ^ 0x17u));
  v165 = *(v68 + 4 * (BYTE1(v154) ^ 0xD4u));
  v166 = (v163 - 675965487 - ((2 * v163) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v158) ^ 0xE5u));
  v167 = LODWORD(STACK[0x1120]) ^ *(a7 + 4 * (HIBYTE(v158) ^ 0x88));
  v168 = (v167 - 675965487 - ((2 * v167) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v160) ^ 0x78u));
  v169 = (v166 - 637731236 - ((2 * v166) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v160) ^ 0xFEu));
  v170 = (v168 - 637731236 - ((2 * v168) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v162) ^ 0xDAu));
  v171 = (v169 + 1891464919 - ((2 * v169) & 0xE17AEDAE)) ^ v164;
  v172 = LODWORD(STACK[0x1110]) ^ *(a7 + 4 * (HIBYTE(v160) ^ 7));
  v173 = (v172 - 675965487 - ((2 * v172) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v162) ^ 0x91u));
  v174 = LODWORD(STACK[0x1100]) ^ *(a7 + 4 * (HIBYTE(v162) ^ 0x4F));
  v175 = *(a8 + 4 * (v160 ^ 0x12u));
  v176 = (v170 + 1891464919 - ((2 * v170) & 0xE17AEDAE)) ^ *(a8 + 4 * (v154 ^ 0xF6u));
  v177 = v174 - 675965487 - ((2 * v174) & 0xAF6B2BA2);
  v178 = *(v68 + 4 * (BYTE1(v158) ^ 0x2Fu));
  v179 = (v173 + 1891464919 - ((2 * v173) & 0xE17AEDAE)) ^ *(a8 + 4 * (v158 ^ 0x93u));
  v180 = v177 ^ *(v66 + 4 * (BYTE2(v154) ^ 0xBBu));
  LODWORD(STACK[0x1800]) = -637731235;
  v181 = (v180 - 637731235 + ~((2 * v180) & 0xB3F9FCB8)) ^ v178;
  v182 = (v179 - 637731236 - ((2 * v179) & 0xB3F9FCB8)) ^ v165;
  v183 = (v181 + 1891464919 - ((2 * v181) & 0xE17AEDAE)) ^ v175;
  v184 = HIBYTE(v183) ^ 0x19;
  v185 = *(a8 + 4 * (v171 ^ 0xF3u));
  v186 = *(v68 + 4 * (BYTE1(v183) ^ 0xB2u));
  v187 = LODWORD(STACK[0x1060]) ^ *(v66 + 4 * (BYTE2(v176) ^ 0x2Fu)) ^ *(a7 + 4 * (HIBYTE(v171) ^ 0x3D)) ^ 0x29BDA1F2 ^ *(v68 + 4 * (BYTE1(v182) ^ 0x3Cu));
  v188 = LODWORD(STACK[0x10F0]) ^ *(v66 + 4 * (BYTE2(v182) ^ 0xCDu));
  v189 = (v187 + 1891464919 - ((2 * v187) & 0xE17AEDAE)) ^ *(a8 + 4 * (v183 ^ 0x65u));
  v190 = (v188 + 2075191717 - ((2 * v188) & 0xF761D34A)) ^ *(a7 + 4 * (HIBYTE(v176) ^ 0x99));
  v191 = LODWORD(STACK[0x10E0]) ^ *(a7 + 4 * (HIBYTE(v182) ^ 0xA4));
  v192 = (v191 - 675965487 - ((2 * v191) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v183) ^ 0x62u));
  v193 = v190 - 637731236 - ((2 * v190) & 0xB3F9FCB8);
  v194 = LODWORD(STACK[0x10D0]) ^ *(a7 + 4 * v184);
  v195 = (v192 - 637731236 - ((2 * v192) & 0xB3F9FCB8)) ^ *(v68 + 4 * (BYTE1(v171) ^ 0x8Eu));
  v196 = *(v66 + 4 * (BYTE2(v171) ^ 0x44u));
  v197 = *(v68 + 4 * (BYTE1(v176) ^ 0x1Au));
  v198 = (v195 + 1891464919 - ((2 * v195) & 0xE17AEDAE)) ^ *(a8 + 4 * (v176 ^ 0x59u));
  v199 = (v194 - 675965487 - ((2 * v194) & 0xAF6B2BA2)) ^ v196;
  v200 = ((v193 ^ v186) + 1891464919 - ((2 * (v193 ^ v186)) & 0xE17AEDAE)) ^ v185;
  v201 = (v199 - 637731235 + ~((2 * v199) & 0xB3F9FCB8)) ^ v197;
  v202 = (v201 + 1891464919 - ((2 * v201) & 0xE17AEDAE)) ^ *(a8 + 4 * (v182 ^ 0x6Cu));
  v203 = *(v66 + 4 * (BYTE2(v200) ^ 0x28u));
  v204 = v198 - ((2 * v198) & 0x639C6252) - 1311887063 - ((2 * (v198 - ((2 * v198) & 0x639C6252) - 1311887063)) & 0x75B1CF10) - 1160190072;
  v205 = LODWORD(STACK[0x10C0]) ^ *(a7 + 4 * (HIBYTE(v189) ^ 0x24));
  v206 = (v205 - 675965487 - ((2 * v205) & 0xAF6B2BA2)) ^ v203;
  v207 = *(v68 + 4 * (BYTE1(v204) ^ 0xE7u));
  v208 = *(v66 + 4 * (BYTE2(v204) ^ 0xD8u));
  v209 = *(a7 + 4 * (HIBYTE(v204) ^ 0xBA));
  v210 = *(a7 + 4 * (HIBYTE(v200) ^ 4));
  LODWORD(STACK[0x17F0]) = v210;
  v211 = *(v66 + 4 * (BYTE2(v202) ^ 0xA1u));
  v212 = *(a7 + 4 * (HIBYTE(v202) ^ 0x22));
  v213 = (v206 - 637731236 - ((2 * v206) & 0xB3F9FCB8)) ^ v207;
  v214 = STACK[0xFE8];
  v215 = STACK[0x1048];
  v216 = ((v210 ^ v208 ^ 0xAC057C74) + 1547969498 - 2 * ((v210 ^ v208 ^ 0xAC057C74) & STACK[0x1820] ^ (v210 ^ v208) & 1)) ^ LODWORD(STACK[0x1048]);
  v217 = v213 + 1891464919 - ((2 * v213) & 0xE17AEDAE);
  v218 = ((v212 ^ 0x7BB0E9A5) - (LODWORD(STACK[0xFE8]) ^ 0x27F4CA7F ^ v212)) ^ LODWORD(STACK[0x1600]);
  v219 = ((v212 ^ 0x844F165A) + 1 + LODWORD(STACK[0x1028]) - ((v218 + 1547969498 - ((2 * v218) & 0xB88847B4)) ^ LODWORD(STACK[0xFE8]))) ^ ((v212 ^ 0x844F165A) + 1);
  v220 = LODWORD(STACK[0x10B0]) ^ v209;
  v221 = (v220 - 675965487 - ((2 * v220) & 0xAF6B2BA2)) ^ v211;
  v222 = ((v219 + 2075191717 - ((2 * v219) & 0xF761D34A)) ^ v212) + LODWORD(STACK[0x1028]);
  LODWORD(STACK[0x17E0]) = v222 - 675965487 - ((2 * v222) & 0xAF6B2BA2);
  v223 = v221 - 637731236 - ((2 * v221) & 0xB3F9FCB8);
  v224 = v205 - 637731236 - ((2 * v205) & 0xB3F9FCB8);
  v225 = *(a8 + 4 * (v202 ^ 0xBFu));
  v226 = *(v68 + 4 * (BYTE1(v189) ^ 0xBAu));
  v227 = v217 ^ v225;
  v228 = ((v224 ^ v207) - 675965487 - ((2 * (v224 ^ v207)) & 0xAF6B2BA2)) ^ v203;
  v225 ^= 0x70BD76D7u;
  v229 = v228 & v225;
  v230 = v228 + v225;
  v231 = *(v68 + 4 * (BYTE1(v202) ^ 0x3Du));
  v232 = ((v208 ^ v215 ^ 0x8BF1B60B) + 2075191717 - 2 * ((v208 ^ v215 ^ 0x8BF1B60B) & 0x7BB0E9B5 ^ (v208 ^ v215) & 0x10)) ^ LODWORD(STACK[0x17F0]);
  v233 = (v216 - 637731236 - ((2 * v216) & 0xB3F9FCB8)) ^ v231;
  v234 = (v232 - 637731236 - ((2 * v232) & 0xB3F9FCB8)) ^ v231;
  LODWORD(STACK[0x1820]) = v230 - 2 * v229;
  v235 = BYTE2(v189);
  v236 = *(a8 + 4 * (v189 ^ 0x60u));
  v237 = *(a8 + 4 * (v200 ^ 0xEEu));
  v238 = *(v66 + 4 * (v235 ^ 0x49u));
  v239 = *(v68 + 4 * (BYTE1(v200) ^ 0x81u));
  v240 = *(a8 + 4 * (v204 ^ 0x88u));
  v241 = (v220 + LODWORD(STACK[0x1800]) + ~((2 * v220) & 0xB3F9FCB8)) ^ v226;
  v242 = (v233 + 1891464919 - ((2 * v233) & 0xE17AEDAE)) ^ v236;
  v243 = ((v223 ^ v226) + 1891464919 - ((2 * (v223 ^ v226)) & 0xE17AEDAE)) ^ v237;
  LOWORD(v223) = (v241 - 27183 - ((2 * v241) & 0x2BA2)) ^ v211;
  v244 = (v234 + 1891464919 - ((2 * v234) & 0xE17AEDAE)) ^ v236;
  v245 = (v223 + 30423 - ((2 * v223) & 0xEDAE)) ^ v237;
  LOBYTE(v223) = ((v214 ^ 0xB ^ v238) + 92 - ((2 * (v214 ^ 0xB ^ v238)) & 0xB8)) ^ v239;
  v246 = ((LODWORD(STACK[0x17E0]) ^ v238) - 637731236 - ((2 * (LODWORD(STACK[0x17E0]) ^ v238)) & 0xB3F9FCB8)) ^ v239;
  LOBYTE(v223) = (v223 - 91 - ((2 * v223) & 0x4A)) ^ v212;
  LOBYTE(v238) = (v223 - 41 - ((2 * v223) & 0xAE)) ^ v240;
  v247 = (v246 + 1891464919 - ((2 * v246) & 0xE17AEDAE)) ^ v240;
  v248 = *(v66 + 4 * (BYTE2(v243) ^ 0xD3u)) ^ *(STACK[0x1890] + 4 * (HIBYTE(v242) ^ 0x9D));
  v249 = *(STACK[0x1890] + 4 * (HIBYTE(v227) ^ 0x57)) ^ *(v68 + 4 * (BYTE1(v243) ^ 0x9Cu));
  v250 = *(v66 + 4 * (BYTE2(v242) ^ 0x28u)) ^ ((v249 ^ 0xA24C17F9) - 675965487 - 2 * ((v249 ^ 0xA24C17F9) & 0x57B595D5 ^ v249 & 4));
  v251 = v242 ^ 0x63;
  v252 = *(v68 + 4 * (BYTE1(v227) ^ 0x7Au)) ^ 0xA24C17F9 ^ *(STACK[0x1890] + 4 * (HIBYTE(v243) ^ 6));
  v253 = ((v248 ^ 0xAC057C74) - 637731236 - 2 * ((v248 ^ 0xAC057C74) & 0x59FCFE5E ^ v248 & 2)) ^ *(v68 + 4 * (BYTE1(v247) ^ 0xBu));
  v254 = (v252 - 675965487 - ((2 * v252) & 0xAF6B2BA2)) ^ *(v66 + 4 * (BYTE2(v247) ^ 0x3Cu));
  v255 = *(STACK[0x1890] + 4 * (HIBYTE(v247) ^ 0x42));
  v256 = (v250 + 1891464919 - ((2 * v250) & 0xE17AEDAE)) ^ *(a8 + 4 * (v247 ^ 1u));
  v257 = *(v68 + 4 * (BYTE1(v242) ^ 0x75u));
  v258 = *(v66 + 4 * (BYTE2(v227) ^ 0x7Au)) ^ 0xA708E306 ^ *(a8 + 4 * (v243 ^ 0x71u));
  v259 = (v258 - 637731236 - ((2 * v258) & 0xB3F9FCB8)) ^ v257;
  v260 = ((v259 + 2075191717 - ((2 * v259) & 0xF761D34A)) ^ v255) + 1547969498 - ((2 * ((v259 + 2075191717 - ((2 * v259) & 0xF761D34A)) ^ v255)) & 0xB88847B4);
  v261 = (v253 + 1891464919 - ((2 * v253) & 0xE17AEDAE)) ^ *(a8 + 4 * (v227 ^ 0x8Cu));
  v262 = *(v66 + 4 * (BYTE2(v244) ^ 0x28u)) ^ *(STACK[0x1890] + 4 * (HIBYTE(LODWORD(STACK[0x1820])) ^ 0x57u)) ^ 0xAC057C74;
  v263 = (v262 + 1891464919 - ((2 * v262) & 0xE17AEDAE)) ^ *(a8 + 4 * (v238 ^ 1u));
  v264 = (v254 + 1891464919 - ((2 * v254) & 0xE17AEDAE)) ^ *(a8 + 4 * v251);
  v265 = (v263 - 637731236 - ((2 * v263) & 0xB3F9FCB8)) ^ *(v68 + 4 * (HIBYTE(v245) ^ 0x9Cu));
  v266 = (v256 + 1547969498 - ((2 * v256) & 0xB88847B4)) ^ LODWORD(STACK[0x1050]);
  LODWORD(STACK[0x1800]) = (v265 + 1547969498 - ((2 * v265) & 0xB88847B4)) ^ LODWORD(STACK[0x1050]);
  v267 = (v261 + 1547969498 - ((2 * v261) & 0xB88847B4)) ^ LODWORD(STACK[0x1040]);
  v268 = (v264 + 1547969498 - ((2 * v264) & 0xB88847B4)) ^ LODWORD(STACK[0xFF8]);
  v269 = STACK[0x1720];
  v270 = *(STACK[0x1720] + 4 * (HIBYTE(v266) ^ 0xBD));
  v271 = STACK[0x1730];
  v272 = STACK[0x1740];
  v273 = v260 ^ LODWORD(STACK[0x1000]);
  v274 = *(STACK[0x1730] + 4 * (BYTE2(v267) ^ 0x74u)) ^ 0xD2456014 ^ *(STACK[0x1740] + 4 * (BYTE1(v268) ^ 0x50u));
  v275 = STACK[0x1710];
  LODWORD(STACK[0x17F0]) = *(STACK[0x1730] + 4 * BYTE2(v273));
  v276 = (v274 - 383526655 - ((2 * v274) & 0xD247B202)) ^ v270;
  v277 = *(v272 + 4 * (BYTE1(v267) ^ 0xEu)) ^ *(v271 + 4 * (BYTE2(v266) ^ 0x54u)) ^ 0xD2456014;
  v278 = (v277 - 383526655 - ((2 * v277) & 0xD247B202)) ^ *(v269 + 4 * HIBYTE(v273));
  v279 = *(v275 + 4 * (v268 ^ 0x81u));
  LODWORD(STACK[0x1820]) = v276 - 1686157816 - ((2 * v276) & 0x36FE8C10);
  LODWORD(STACK[0x17F0]) = ((v278 - 1686157816 - ((2 * v278) & 0x36FE8C10)) ^ v279) + 1547969498 - ((2 * ((v278 - 1686157816 - ((2 * v278) & 0x36FE8C10)) ^ v279)) & 0xB88847B4);
  return (*(STACK[0x1708] + 8 * ((194 * (STACK[0x1880] + 1428184363 >= 0x55205D7B)) ^ LODWORD(STACK[0x1860]))))();
}

uint64_t sub_1000DC56C(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v8 = LODWORD(STACK[0x1860]) + 576;
  v9 = STACK[0x18B0];
  v10 = *(STACK[0x18B0] + ((((LODWORD(STACK[0x1860]) - 1380) | 0x302) ^ 0xBF8) & a6 ^ 0xE5)) ^ 0x6BLL;
  v11 = *(&off_1002DD400 + LODWORD(STACK[0x1860]) - 2688) - 1005753210;
  v12 = STACK[0x3090];
  v13 = STACK[0x3090];
  v12[3] = (v11[v10] + v10 * v10) ^ 0x6C ^ (26 * ((v11[v10] + v10 * v10) ^ 0x77));
  v14 = STACK[0x1410];
  v15 = *(STACK[0x1410] + (BYTE1(a6) ^ 0x98)) ^ 0x19;
  v16 = STACK[0x1790];
  v12[2] = ((((*(STACK[0x1790] + v15) + v15 * v15) & 0x80) != 0) | (2 * (*(STACK[0x1790] + v15) + v15 * v15))) ^ 0xC8;
  v17 = STACK[0x18A0];
  v18 = *(STACK[0x18A0] + (BYTE2(a6) ^ 0x1FLL)) ^ 0x25;
  v19 = *(&off_1002DD400 + (v8 ^ 0xEDB)) - 1172015375;
  v12[1] = (v19[v18] + v18 * v18 + 101) ^ 0xCB;
  v20 = STACK[0x1420];
  v21 = *(STACK[0x1420] + (HIBYTE(a6) ^ 0x86));
  v22 = *(&off_1002DD400 + v8 - 3887) - 898286343;
  *v12 = v21 ^ (v22[v21 ^ 0x19] + (v21 ^ 0x19) * (v21 ^ 0x19)) ^ 0xFE;
  v23 = *(v9 + (a4 ^ 0x27)) ^ 0x1DLL;
  v12[7] = (v11[v23] + v23 * v23) ^ (26 * ((v11[v23] + v23 * v23) ^ 0x77)) ^ 0xF;
  v24 = *(v14 + (BYTE1(a4) ^ 0xE1)) ^ 0x2ELL;
  v12[6] = ((((*(v16 + v24) + v24 * v24) & 0x80) != 0) | (2 * (*(v16 + v24) + v24 * v24))) ^ 0xC2;
  v25 = *(v17 + (BYTE2(a4) ^ 0xCBLL)) ^ v7;
  v12[5] = (v19[v25] + v25 * v25 + 101) ^ 0x28;
  v26 = *(v20 + (HIBYTE(a4) ^ 0xB1));
  v13[4] = v26 ^ 0xBA ^ (v22[v26 ^ 0xBC] + (v26 ^ 0xBC) * (v26 ^ 0xBC));
  v27 = *(v9 + (a2 ^ 0xF5)) ^ 0x7BLL;
  v13[11] = (v11[v27] + v27 * v27) ^ (26 * ((v11[v27] + v27 * v27) ^ 0x77)) ^ 0xF9;
  v28 = *(v14 + (BYTE1(a2) ^ 0x68)) ^ 0xF5;
  v13[10] = ((((*(v16 + v28) + v28 * v28) & 0x80) != 0) | (2 * (*(v16 + v28) + v28 * v28))) ^ 0x3F;
  v29 = *(v17 + (BYTE2(a2) ^ 0xF6)) ^ 0xF5;
  v13[9] = (v19[v29] + v29 * v29 + 101) ^ 0x21;
  v30 = *(v20 + (HIBYTE(a2) ^ 0x2FLL));
  v13[8] = v30 ^ 0x68 ^ (v22[v30 ^ 0x31] + (v30 ^ 0x31) * (v30 ^ 0x31));
  v31 = *(v9 + (v6 ^ 0xB0)) ^ 0xAALL;
  v13[15] = (v11[v31] + v31 * v31) ^ 0xD1 ^ (26 * ((v11[v31] + v31 * v31) ^ 0x77));
  v32 = *(v14 + (BYTE1(v6) ^ 0xALL)) ^ 0xF6;
  v33 = STACK[0x3090];
  v33[14] = ((((*(v16 + v32) + v32 * v32) & 0x80) != 0) | (2 * (*(v16 + v32) + v32 * v32))) ^ 0x37;
  v34 = *(v17 + (BYTE2(v6) ^ 0x8BLL)) ^ 0x6CLL;
  v33[13] = (v19[v34] + v34 * v34 + 101) ^ 0x53;
  v35 = *(v20 + (HIBYTE(v6) ^ 0x39));
  v33[12] = v35 ^ 0xEA ^ (v22[v35 ^ 0xA1] + (v35 ^ 0xA1) * (v35 ^ 0xA1));
  return (*(STACK[0x1708] + 8 * v8))();
}

uint64_t sub_1000DCC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, __n128 a9, __n128 a10, __n128 a11)
{
  v15 = v11 < v13 + 256 && v13 < v11 + 64;
  v16.n128_u64[0] = 0xDDDDDDDDDDDDDDDDLL;
  v16.n128_u64[1] = 0xDDDDDDDDDDDDDDDDLL;
  return (*(v12 + 8 * (((((STACK[0x1700] - 2078) | 0x580) ^ ((STACK[0x1700] - 1758) | 0x440) ^ 0x370F) * v15) ^ (STACK[0x1700] - 658))))(a1, a2, a3, a4, a5, a6, a7, 221, vdupq_n_s32(0xCABD1478), a9, a10, a11, v16);
}

uint64_t sub_1000DCD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v12 + v9 - 33) = a8;
  *(v14 + 4 * (v9 - 33)) = -893578120;
  return (*(v13 + 8 * (((v9 + 1 != 80 * (v8 ^ v11) - 2943) * v10) ^ v8)))();
}

uint64_t sub_1000DCD48@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q4>)
{
  v7 = (v4 + a1);
  *v7 = a3;
  v7[1] = a3;
  v8 = (v6 + 4 * a1);
  v8[2] = a2;
  v8[3] = a2;
  *v8 = a2;
  v8[1] = a2;
  v8[6] = a2;
  v8[7] = a2;
  v8[4] = a2;
  v8[5] = a2;
  return (*(v5 + 8 * ((4 * ((((v3 - 2560) ^ (a1 == 32)) & 1) == 0)) & 0xF7 | (8 * ((v3 ^ ~(a1 == 32)) & 1)) | v3)))();
}

uint64_t sub_1000DCD9C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = STACK[0x13F0];
  LODWORD(STACK[0x17D0]) = 8 * LODWORD(STACK[0x13F0]) - (((v9 ^ 0x23CC) + 1244251332) & (16 * LODWORD(STACK[0x13F0]) + 527037040)) - 188092496;
  v12 = *(v10 + 8 * v9);
  LODWORD(STACK[0x17B0]) = -1371985256;
  LODWORD(STACK[0x1900]) = 20957214;
  LODWORD(STACK[0x18F0]) = 755964425;
  LODWORD(STACK[0x18A0]) = -1804286311;
  LODWORD(STACK[0x1890]) = -1592555582;
  LODWORD(STACK[0x18B0]) = 545681954;
  LODWORD(STACK[0x1840]) = v11;
  LODWORD(STACK[0x1850]) = -1629713034;
  LODWORD(STACK[0x1860]) = 609994329;
  LODWORD(STACK[0x1880]) = 927942510;
  a4.n128_u16[0] = -8739;
  a4.n128_u8[2] = -35;
  a4.n128_u8[3] = -35;
  a4.n128_u8[4] = -35;
  a4.n128_u8[5] = -35;
  a4.n128_u8[6] = -35;
  a4.n128_u8[7] = -35;
  return v12(5436, 982880785, 2147073722, a8, a9, 7063, -617435730, a1, a2, a3, a4);
}

uint64_t sub_1000DCF50(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x17E0]) = a3;
  LODWORD(STACK[0x17F0]) = v3;
  return (*(v5 + 8 * (v4 - 3735)))();
}

uint64_t sub_1000DCFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = (v8 + v6);
  v18 = ((v17 ^ *(*v10 + (*v11 & v16))) & ((v5 + 3366) ^ v9)) * v7;
  v19 = (v18 ^ HIWORD(v18)) * v7;
  *(a4 + a5) = *v17 ^ *(v12 + (v19 >> 24)) ^ *((v19 >> 24) + v13 + 1) ^ *((v19 >> 24) + v14 + 2) ^ v19 ^ (-33 * BYTE3(v19)) ^ 0xDD;
  return (*(STACK[0x1708] + 8 * (((a1 == 0) * v15) ^ v5)))(a1 - 1);
}

uint64_t sub_1000DD088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  LODWORD(STACK[0x1840]) -= 64;
  v8 = *(STACK[0x1708] + 8 * (v7 - 3735));
  LODWORD(STACK[0x17E0]) = -a7;
  return v8(a1, a2, a3, a4, a5, a6, STACK[0x1830]);
}

uint64_t sub_1000DD13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, char a4@<W5>, int a5@<W7>, uint64_t a6@<X8>)
{
  v16 = (a3 << ((v10 ^ a4) * v13 + v7)) - (v6 & v12) + v11;
  v17 = *(a2 + (v16 & 0xFFFFFFFC ^ v8)) ^ a5 | ((((*(a2 + (v16 ^ v8)) ^ a5) << 8) | ((*(a2 + (v16 ^ (v8 - 1))) ^ 0xDDDDDDDD) << 16) | *(a2 + (v16 ^ (v8 - 3))) ^ a5) << 8);
  *(a1 + 4 * a6) = v17 + v15 - (v9 & (2 * v17));
  return (*(v14 + 8 * (((4 * (a6 != 15)) | (16 * (a6 != 15))) ^ v10)))();
}

uint64_t sub_1000DD21C@<X0>(int a1@<W3>, _DWORD *a2@<X8>)
{
  HIDWORD(v13) = *a2 ^ a1;
  LODWORD(v13) = *a2 ^ v4;
  v14 = v8 - 3972 + (v13 >> 18);
  v15 = a2[13];
  HIDWORD(v13) = *a2 ^ 0x78;
  LODWORD(v13) = *a2 ^ (v12 - 120);
  v16 = v13 >> 7;
  HIDWORD(v13) = v15 ^ a1;
  LODWORD(v13) = v15 ^ v4;
  v17 = v13 >> 17;
  HIDWORD(v13) = v15 ^ v9;
  LODWORD(v13) = v15 ^ (v4 - 0x40000);
  v18 = (v10 ^ (v15 >> 10) ^ (v17 + (v13 >> 19)) ^ (v14 + v16 + (v5 ^ (*a2 >> 3)) - 3352)) - (a2[8] ^ v12);
  a2[15] = ((v18 + v12 - (v6 & (2 * v18))) ^ v12) - (v7 ^ v12) + v12 - (v6 & (2 * (((v18 + v12 - (v6 & (2 * v18))) ^ v12) - (v7 ^ v12))));
  return (*(v11 + 8 * (((v2 == 0) * v3) ^ v8)))();
}

uint64_t sub_1000DD2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x1800]) = v6;
  LODWORD(STACK[0x1810]) = a5;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADFELL) = 695684584;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADF2) = -67844965;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADB6) = 1202658565;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADBALL) = 1867806397;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADF6) = -1722107743;
  *(STACK[0x1C00] - 0x1D8AB8FD230AE06) = -1044645555;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADA2) = -288941484;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADFALL) = 670509228;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADC2) = -1840885481;
  *(STACK[0x1C00] - 0x1D8AB8FD230AE02) = -120128644;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADDALL) = -1884603960;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADCALL) = -138121466;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADE2) = 1891004568;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADE6) = -91047559;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADB2) = 386533234;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADDELL) = 1415368922;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADD6) = -1500989614;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADEALL) = 835043515;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADA6) = 1341674494;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADD2) = 1653864191;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADC6) = 1258964712;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD8ELL) = -2039467840;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADAELL) = 2137335793;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADEELL) = -168938734;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD82) = -591838143;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADBELL) = -1412535463;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD92) = 495762951;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD9ALL) = 1876438991;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADAALL) = 832773589;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD9ELL) = -526149875;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD7ALL) = 1278381475;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADCELL) = 1635170396;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD76) = -1410325895;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD52) = 2136686839;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD1ALL) = 907769670;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD96) = -491704683;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD6ELL) = 1870981146;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD66) = 412714284;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD5ALL) = -2034248649;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD4ALL) = 637945352;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD62) = 1567362478;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD4ELL) = 1204468285;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD72) = -1886504416;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD7ELL) = -1670082443;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD46) = 1790645746;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD8ALL) = 197148267;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD86) = 890792941;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD3ELL) = 1599239585;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD56) = 1553353326;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD16) = 1863714607;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD12) = 577099913;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD6ALL) = 1182524045;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD5ELL) = -2088843851;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD42) = -1269145608;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD22) = -444050143;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD1ELL) = -1886105410;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD0ELL) = -1280704790;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD2ALL) = 1766645685;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD36) = -1075181537;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD32) = -1928182956;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD26) = -2011758012;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD3ALL) = -1175123170;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD0ALL) = 236872527;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD2ELL) = 296720246;
  STACK[0x1830] = STACK[0x2BB0];
  return (*(v7 + 8 * v5))(a1, a2, LODWORD(STACK[0x18F0]), a4, 304336, LODWORD(STACK[0x18A0]), LODWORD(STACK[0x1890]));
}

uint64_t sub_1000DDCF4(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x1820]) = a4;
  v14 = v12 ^ LODWORD(STACK[0x18A0]);
  LODWORD(STACK[0x18A0]) = v14 ^ v10;
  v15 = a2 ^ LODWORD(STACK[0x1860]);
  LODWORD(STACK[0x1860]) = v15 ^ v10;
  v16 = v13 ^ LODWORD(STACK[0x18B0]);
  LODWORD(STACK[0x18B0]) = v16 ^ v10;
  LODWORD(STACK[0x1900]) = a1 + (LODWORD(STACK[0x1900]) ^ v10) + v10 - (v8 & (2 * (a1 + (LODWORD(STACK[0x1900]) ^ v10))));
  v17 = v9 ^ LODWORD(STACK[0x1890]);
  LODWORD(STACK[0x1890]) = v17 ^ v10;
  LODWORD(STACK[0x18F0]) = (a3 ^ v10) + (LODWORD(STACK[0x18F0]) ^ v10) + v10 - (v8 & (2 * ((a3 ^ v10) + (LODWORD(STACK[0x18F0]) ^ v10))));
  v18 = v11 ^ LODWORD(STACK[0x1850]);
  LODWORD(STACK[0x1850]) = v18 ^ v10;
  v19 = a8 ^ LODWORD(STACK[0x1880]);
  LODWORD(STACK[0x1880]) = v19 ^ v10;
  v20 = LODWORD(STACK[0x17F0]);
  if (v20 == 43)
  {
    v22 = STACK[0x17D0];
    v23 = STACK[0xAC0];
    v24 = STACK[0x1EC8];
    *(v24 - 0x10AC49A2DA621034) = LODWORD(STACK[0x17D0]) ^ 0xA5;
    v25 = STACK[0x1700] - 1491;
    *(v24 - 0x10AC49A2DA621036) = (BYTE2(v22) ^ 0x14) - ((2 * (BYTE2(v22) ^ 0x14)) & 0xBB) - 35;
    *(v24 - 0x10AC49A2DA621035) = ((v22 >> (v23 ^ 0x53)) ^ 0xF6) - ((2 * ((v22 >> (v23 ^ 0x53)) ^ 0xF6)) & 0xBB) - 35;
    *(v24 - 0x10AC49A2DA621037) = HIBYTE(v22) ^ 0x78;
    return (*(STACK[0x1708] + 8 * v25))(-6269, 12901, 4167797155, 127171711, a5, a6, a7, 221);
  }

  else if (v20 == 42)
  {
    v26 = STACK[0x2D30];
    *(v26 - 0x2A510ED33EFDCD92) = STACK[0x1850];
    LODWORD(STACK[0x1770]) = HIWORD(v15);
    v27 = HIWORD(v15) + 42;
    LODWORD(STACK[0x17A0]) = v27;
    *(v26 - 0x2A510ED33EFDCD8ALL) = STACK[0x1860];
    LODWORD(STACK[0x1850]) = HIWORD(v14);
    v28 = 2 * HIWORD(v14) + 84;
    LODWORD(STACK[0x1860]) = v28;
    v29 = HIWORD(v14) - (v28 & 0x12F32) + 1450088387;
    v30 = HIWORD(v15) - 616839823 + ~(2 * (v27 & 0x1C547 ^ HIWORD(v15) & 1));
    v31 = STACK[0x18F0];
    v32 = 2 * (v16 >> 8);
    v33 = (v16 >> 8) - ((v32 + 84) & 0x1C8EB40) - 1058769462;
    v34 = STACK[0x1900];
    *(v26 - 0x2A510ED33EFDCD8ELL) = STACK[0x1900];
    v35 = ((HIWORD(v31) ^ 4) - ((v31 >> 15) & 0x32) + 153) ^ v29;
    *(v26 - 0x2A510ED33EFDCD86) = STACK[0x1890];
    v36 = v35 - ((2 * v35) & 0xFFFFFFBA);
    *(v26 - 0x2A510ED33EFDCD82) = v31;
    *(v26 - 0x2A510ED33EFDCD7ALL) = STACK[0x1880];
    LODWORD(STACK[0x14C0]) = v30;
    v37 = STACK[0x18B0];
    *(v26 - 0x2A510ED33EFDCD7ELL) = STACK[0x18B0];
    LODWORD(STACK[0x1730]) = v17 >> 8;
    *(v26 - 0x2A510ED33EFDCD76) = STACK[0x18A0];
    v38 = (v17 >> 8) - ((2 * (v17 >> 8) + 84) & 0x31865E4) + 1032598300;
    LODWORD(STACK[0x1490]) = v38;
    v39 = STACK[0x27F0];
    v40 = STACK[0x27F0];
    *(v39 - 0x412CFFFF183EF39BLL) = (v34 ^ 0x96 ^ v30) - ((2 * (v34 ^ 0x96 ^ v30)) & 0xBB) - 35;
    v41 = v38 ^ (HIBYTE(v17) - ((v17 >> 23) & 0xE4) + 242);
    LODWORD(STACK[0x18A0]) = v34 >> 8;
    v42 = v41 - ((2 * v41) & 0xFFFFFFBA);
    v43 = ((v34 >> 8) ^ 0x5804A4) - ((2 * ((v34 >> 8) ^ 0x5804A4) + 84) & 0x2B8E122) + 2103210171;
    v44 = (HIBYTE(v18) - ((v18 >> 23) & 0x22222222) + 145) ^ v43;
    v45 = HIWORD(v19) - ((2 * HIWORD(v19) + 84) & 0x28BAA) - 874560001;
    v46 = v44 - ((2 * v44) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1890]) = v46;
    v47 = v33 ^ ((v16 >> 8) - (v32 & 0x40) + 160);
    v48 = v47 - ((2 * v47) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1880]) = v48;
    *(v39 - 0x412CFFFF183EF396) = v46;
    *(v39 - 0x412CFFFF183EF398) = v48;
    LODWORD(STACK[0x1840]) = v42 - 35;
    v49 = (v45 ^ v19 ^ 0xFFFFFFD5) - 2 * ((v45 ^ v19 ^ 0xFFFFFFD5) & 0x5F ^ (v45 ^ v19) & 2) - 35;
    LODWORD(STACK[0x17F0]) = v49;
    *(v40 - 0x412CFFFF183EF39ALL) = v42 - 35;
    v50 = STACK[0x27F0];
    *(STACK[0x27F0] - 0x412CFFFF183EF397) = v49;
    v51 = 2 * (v14 >> 8);
    v52 = (v14 >> 8) - ((v51 + 84) & 0x3B0AAB0) + 2077775234;
    LODWORD(v39) = ((v15 >> 8) - ((v15 >> 7) & 0xB0) + 88) ^ v52;
    v53 = v39 - ((2 * v39) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1830]) = v53;
    *(v50 - 0x412CFFFF183EF394) = v53;
    v54 = (v30 ^ v17 ^ 0x46) - ((2 * (v30 ^ v17 ^ 0x46)) & 0xFFFFFFBA);
    LODWORD(v39) = v34 >> (((10 * LOBYTE(STACK[0x280])) ^ 0x34) + 118);
    LODWORD(v39) = ((v39 ^ 4) - ((2 * v39) & 0x32) + 153) ^ v29;
    LOBYTE(v53) = v36 - 35;
    LODWORD(STACK[0x17D0]) = v36 - 35;
    v55 = v39 - ((2 * v39) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x17E0]) = v55;
    v56 = STACK[0x27F0];
    v57 = STACK[0x27F0];
    *(v56 - 0x412CFFFF183EF395) = v55;
    *(v56 - 0x412CFFFF183EF399) = v53;
    v58 = (HIWORD(v19) - ((2 * BYTE2(v19)) & 0x32) + 153) ^ v29;
    LOBYTE(v30) = v29;
    LODWORD(STACK[0x17B0]) = v54 - 35;
    *(v57 - 0x412CFFFF183EF393) = v54 - 35;
    v59 = v43 ^ ((v14 >> 8) - (v51 & 0x22) + 145);
    LODWORD(STACK[0x1790]) = v59;
    LODWORD(v50) = (2 * v59) & 0xFFFFFFBA;
    LODWORD(STACK[0x1780]) = v50;
    LOBYTE(v59) = v59 - v50 - 35;
    v60 = STACK[0x27F0];
    v61 = STACK[0x27F0];
    *(v60 - 0x412CFFFF183EF390) = v59;
    v62 = v58 - ((2 * v58) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1750]) = v62;
    *(v60 - 0x412CFFFF183EF391) = v62;
    v63 = v29 ^ (HIWORD(v17) - ((v17 >> 15) & 0x32) + 153);
    v64 = (v18 ^ v45 ^ 0xFFFFFFD5) - ((2 * (v18 ^ v45 ^ 0xFFFFFFD5)) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1740]) = v64;
    *(v61 - 0x412CFFFF183EF38FLL) = v64;
    v65 = v63 - ((2 * v63) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1760]) = v65;
    *(v61 - 0x412CFFFF183EF38DLL) = v65;
    v66 = (HIBYTE(v16) - ((v16 >> 23) & 0xB0) + 88) ^ v52;
    v67 = v33;
    LODWORD(v60) = v33 ^ (HIBYTE(v15) - ((v15 >> 23) & 0x40) + 160);
    LODWORD(v61) = v66 - ((2 * v66) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1710]) = v61;
    v68 = v60 - ((2 * v60) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1600]) = v68;
    v69 = STACK[0x27F0];
    v70 = STACK[0x27F0];
    *(v69 - 0x412CFFFF183EF38ELL) = v68;
    *(v69 - 0x412CFFFF183EF392) = v61;
    v71 = STACK[0x1490];
    LODWORD(v69) = (((v31 >> 8) ^ 0x5804A4) - ((2 * ((v31 >> 8) ^ 0x5804A4)) & 0xE4) + 242) ^ LODWORD(STACK[0x1490]);
    v72 = (HIWORD(v18) - ((v18 >> 15) & 0x32) + 153) ^ v29;
    LODWORD(v61) = v72 - ((2 * v72) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x1720]) = v61;
    *(v70 - 0x412CFFFF183EF389) = v61;
    v73 = STACK[0x1770];
    LODWORD(v70) = LODWORD(STACK[0x1770]) - ((2 * LODWORD(STACK[0x17A0])) & 0xA0) + 250;
    LODWORD(STACK[0x1460]) = v70;
    LOBYTE(v70) = (v70 ^ v37) - ((2 * (v70 ^ v37)) & 0xBB);
    LODWORD(v61) = v69 - ((2 * v69) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x17A0]) = v61;
    v74 = STACK[0x27F0];
    *(STACK[0x27F0] - 0x412CFFFF183EF38CLL) = v61;
    v75 = STACK[0x1730];
    LODWORD(STACK[0x18B0]) = LODWORD(STACK[0x1730]) + 42;
    v76 = LODWORD(STACK[0x18A0]) ^ v67;
    LODWORD(v57) = (v45 ^ v15 ^ 0xFFFFFFD5) - 2 * ((v45 ^ v15 ^ 0xFFFFFFD5) & 0x5F ^ (v45 ^ v15) & 2);
    *(v74 - 0x412CFFFF183EF38BLL) = v70 - 35;
    LODWORD(v70) = ((v75 + 42) ^ HIBYTE(v14)) - ((2 * ((v75 + 42) ^ HIBYTE(v14))) & 0x3FFFFBA) - 35;
    LODWORD(STACK[0x14B0]) = v70;
    *(v74 - 0x412CFFFF183EF38ALL) = v70;
    v77 = HIBYTE(v31) ^ 0x58;
    LODWORD(v69) = (v77 - 2 * (v77 & 0x15 ^ HIBYTE(v31) & 4) + 145) ^ v43;
    v78 = STACK[0x27F0];
    v79 = STACK[0x27F0];
    *(v78 - 0x412CFFFF183EF386) = v69 - ((2 * v69) & 0xBB) - 35;
    v80 = (v76 ^ 4) - 2 * ((v76 ^ 4) & 0x5F ^ v76 & 2) - 35;
    LODWORD(STACK[0x1480]) = v80;
    LODWORD(STACK[0x1470]) = v57 - 35;
    *(v78 - 0x412CFFFF183EF388) = v80;
    *(v78 - 0x412CFFFF183EF387) = v57 - 35;
    LODWORD(v69) = ((v19 >> 8) - ((v19 >> 7) & 0xB0) + 88) ^ v52;
    LODWORD(v78) = v69 - ((2 * v69) & 0xFFFFFFBA) - 35;
    LODWORD(STACK[0x14A0]) = v78;
    *(v79 - 0x412CFFFF183EF384) = v78;
    v81 = STACK[0x14C0];
    LOBYTE(v79) = ((BYTE2(v16) - ((v16 >> 15) & 0x32) - 103) ^ v30) + (~(2 * ((BYTE2(v16) - ((v16 >> 15) & 0x32) - 103) ^ v30)) | 0x45) - 34;
    v82 = (v81 ^ v14 ^ 0x46) + (~(2 * (v81 ^ v14 ^ 0x46)) | 0x45) - 34;
    v83 = STACK[0x27F0];
    v84 = STACK[0x27F0];
    *(v83 - 0x412CFFFF183EF385) = v79;
    *(v83 - 0x412CFFFF183EF383) = v82;
    LODWORD(v83) = ((HIBYTE(v34) ^ 0x58) - 2 * ((HIBYTE(v34) ^ 0x58) & 0x5D ^ HIBYTE(v34) & 5) + 88) ^ v52;
    LOBYTE(v80) = (v43 ^ v75 ^ 0x91) - ((2 * (v43 ^ v75 ^ 0x91)) & 0xBA) - 35;
    *(v84 - 0x412CFFFF183EF380) = v80;
    v85 = STACK[0x27F0];
    v86 = STACK[0x27F0];
    *(v85 - 0x412CFFFF183EF381) = (v30 ^ v73 ^ 0x99) - 2 * ((v30 ^ v73 ^ 0x99) & 0xDF ^ (v30 ^ v73) & 2) - 35;
    LOBYTE(v52) = v83 - ((2 * v83) & 0xBA) - 35;
    LOBYTE(v51) = (v31 ^ v45 ^ 5) - 2 * ((v31 ^ v45 ^ 5) & 0x5F ^ (v31 ^ v45) & 2) - 35;
    *(v85 - 0x412CFFFF183EF382) = v52;
    *(v85 - 0x412CFFFF183EF37FLL) = v51;
    LODWORD(v83) = (HIBYTE(v19) - ((v19 >> 23) & 0x40) + 160) ^ v67;
    v87 = v83 - ((2 * v83) & 0xBA) - 35;
    *(v86 - 0x412CFFFF183EF37ELL) = v87;
    v88 = STACK[0x27F0];
    v89 = STACK[0x27F0];
    *(v88 - 0x412CFFFF183EF37BLL) = (v34 ^ LOBYTE(STACK[0x1460])) + (~(2 * (v34 ^ LOBYTE(STACK[0x1460]))) | 0x45) - 34;
    *(v88 - 0x412CFFFF183EF377) = STACK[0x17F0];
    v90 = STACK[0x1850];
    LOBYTE(v84) = (v30 ^ v90 ^ 0x99) + (~(2 * (v30 ^ v90 ^ 0x99)) | 0x45) - 34;
    *(v88 - 0x412CFFFF183EF37DLL) = v84;
    LODWORD(v88) = ((v18 >> 8) - ((v18 >> 7) & 0xE4) + 242) ^ v71;
    *(v89 - 0x412CFFFF183EF37CLL) = v88 - ((2 * v88) & 0xBB) - 35;
    *(v89 - 0x412CFFFF183EF37ALL) = STACK[0x1840];
    *(v89 - 0x412CFFFF183EF378) = STACK[0x1880];
    v91 = STACK[0x27F0];
    v92 = STACK[0x27F0];
    *(v91 - 0x412CFFFF183EF379) = STACK[0x17D0];
    *(v91 - 0x412CFFFF183EF376) = STACK[0x1890];
    *(v91 - 0x412CFFFF183EF373) = STACK[0x17B0];
    *(v92 - 0x412CFFFF183EF375) = STACK[0x17E0];
    *(v92 - 0x412CFFFF183EF36ELL) = STACK[0x1600];
    *(v92 - 0x412CFFFF183EF374) = STACK[0x1830];
    LOBYTE(v91) = LODWORD(STACK[0x1790]) + ~LODWORD(STACK[0x1780]);
    v93 = STACK[0x27F0];
    v94 = STACK[0x27F0];
    *(v93 - 0x412CFFFF183EF372) = STACK[0x1710];
    *(v93 - 0x412CFFFF183EF371) = STACK[0x1750];
    *(v93 - 0x412CFFFF183EF370) = v91 - 34;
    *(v94 - 0x412CFFFF183EF36FLL) = STACK[0x1740];
    LOBYTE(v91) = v81 ^ v16 ^ 0x46;
    v95 = STACK[0x27F0];
    v96 = STACK[0x27F0];
    *(v95 - 0x412CFFFF183EF36DLL) = STACK[0x1760];
    *(v95 - 0x412CFFFF183EF36ALL) = STACK[0x14B0];
    *(v95 - 0x412CFFFF183EF36BLL) = v91 - ((2 * v91) & 0xBB) - 35;
    *(v96 - 0x412CFFFF183EF367) = STACK[0x1470];
    *(v96 - 0x412CFFFF183EF368) = STACK[0x1480];
    v97 = STACK[0x27F0];
    v98 = STACK[0x27F0];
    *(v97 - 0x412CFFFF183EF369) = STACK[0x1720];
    *(v97 - 0x412CFFFF183EF36CLL) = STACK[0x17A0];
    *(v97 - 0x412CFFFF183EF365) = v79;
    LODWORD(v79) = v77 ^ ((LODWORD(STACK[0x18A0]) ^ 0xA4) + 42);
    *(v98 - 0x412CFFFF183EF363) = v82;
    *(v98 - 0x412CFFFF183EF366) = v79 - ((2 * v79) & 0xBB) - 35;
    *(v98 - 0x412CFFFF183EF364) = STACK[0x14A0];
    v99 = STACK[0x27F0];
    *(STACK[0x27F0] - 0x412CFFFF183EF362) = v52;
    v100 = STACK[0x1700] - 3300;
    *(v99 - 0x412CFFFF183EF361) = ((v90 - (STACK[0x1860] & 0xA2) + 123) ^ v73 ^ 0x51) - ((2 * ((v90 - (STACK[0x1860] & 0xA2) + 123) ^ v73 ^ 0x51)) & 0xBB) - 35;
    *(v99 - 0x412CFFFF183EF35DLL) = v84;
    *(v99 - 0x412CFFFF183EF360) = v80;
    LODWORD(v83) = (v18 >> 8) ^ LODWORD(STACK[0x18B0]);
    v101 = STACK[0x27F0];
    *(v101 - 0x412CFFFF183EF35FLL) = v51;
    *(v101 - 0x412CFFFF183EF35CLL) = v83 - ((2 * v83) & 0xBB) - 35;
    *(v101 - 0x412CFFFF183EF35ELL) = v87;
    v102 = STACK[0x1EC8] - 0x10AC49A2DA621073;
    v103 = STACK[0x2BB0];
    v104 = STACK[0x2BB0] - 0x6A0DF074BE1C7272;
    v105 = STACK[0x1EC8] - 0x10AC49A2DA621033;
    STACK[0x1830] = STACK[0x2BB0];
    v107 = v102 >= v103 - 0x6A0DF074BE1C7172 || v104 >= v105;
    return (*(STACK[0x1708] + 8 * ((52 * v107) ^ v100)))(11146);
  }

  else
  {
    return (*(STACK[0x1708] + 8 * (STACK[0x1700] - 3230)))(5436, 982880785, LODWORD(STACK[0x17E0]));
  }
}

uint64_t sub_1000DF44C@<X0>(int a1@<W0>, int a2@<W5>, uint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q4>)
{
  v8 = (a3 + v6);
  *v8 = a5;
  v8[1] = a5;
  v9 = (v5 + 4 * v6);
  v9[2] = a4;
  v9[3] = a4;
  *v9 = a4;
  v9[1] = a4;
  v9[6] = a4;
  v9[7] = a4;
  v9[4] = a4;
  v9[5] = a4;
  return (*(v7 + 8 * (((v6 + 32 == ((a2 + 3280) ^ 0x183ELL)) * a1) ^ a2)))();
}

uint64_t sub_1000DF494@<X0>(uint64_t a1@<X2>, char a2@<W3>, int a3@<W6>, uint64_t a4@<X8>)
{
  *(a4 + v5 - 64) = a2;
  *(v4 + 4 * (v5 - 64)) = v10;
  return (*(v9 + 8 * (((v5 + a1 + ((a3 + v6) & v7) == 128) * v8) ^ a3)))();
}

uint64_t sub_1000DF4CC(uint64_t a1, int a2)
{
  v3 = *(v2 + 8 * (a2 - 1010));
  LODWORD(STACK[0x17D0]) = -283606837;
  LODWORD(STACK[0x17E0]) = 1830293804;
  LODWORD(STACK[0x1890]) = 927942510;
  LODWORD(STACK[0x1900]) = 20957214;
  LODWORD(STACK[0x1880]) = 609994329;
  LODWORD(STACK[0x18F0]) = 545681954;
  LODWORD(STACK[0x1860]) = -1629713034;
  LODWORD(STACK[0x18A0]) = -1592555582;
  LODWORD(STACK[0x1850]) = 755964425;
  LODWORD(STACK[0x18B0]) = -1804286311;
  return v3();
}

uint64_t sub_1000DF704()
{
  v3 = *(v2 + 8 * (v0 - 2258));
  LODWORD(STACK[0x17E0]) = -v1;
  return v3();
}

uint64_t sub_1000DF7A0@<X0>(int a1@<W0>, unsigned int a2@<W4>, int a3@<W7>, int a4@<W8>)
{
  v14 = v9 - 2 * (a1 & a3 ^ v8 & 4);
  v15 = *(v6 + (v14 ^ (a2 + 1)));
  v16 = v14 ^ (a2 + 2);
  v17 = *(v6 + (v14 ^ a2)) ^ 0xDDDDDDDD;
  v18 = *(v6 + (v14 ^ (a2 + 3))) ^ v7;
  v19 = v18 | ((((v15 ^ v7) << 8) | (v17 << 16) | *(v6 + v16) ^ v7) << 8);
  *(v5 + 4 * v4) = v19 + v13 - 2 * (v19 & v12 ^ v18 & 2);
  return (*(v10 + 8 * (((v4 == 15) * v11) ^ a4)))((a1 + 4));
}

uint64_t sub_1000DF894@<X0>(unsigned int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W6>, int a6@<W7>, _DWORD *a7@<X8>)
{
  v16 = a7[13];
  HIDWORD(v18) = *a7 ^ (v14 - 3159);
  LODWORD(v18) = *a7 ^ v11;
  v17 = v18 >> 7;
  HIDWORD(v18) = *a7 ^ a5;
  LODWORD(v18) = *a7 ^ a2;
  v19 = v18 >> 18;
  HIDWORD(v18) = v16 ^ a5;
  LODWORD(v18) = v16 ^ a2;
  v20 = v18 >> 17;
  HIDWORD(v18) = v16 ^ v10;
  LODWORD(v18) = v16 ^ a6;
  v21 = (a3 ^ (v16 >> 10) ^ (v20 + (v18 >> 19)) ^ (v19 + v17 + (a4 ^ (*a7 >> 3)) + 1)) - (a7[8] ^ v15);
  v22 = ((v21 + v15 - (v9 & (2 * v21))) ^ v15) - (v8 ^ v15);
  a7[15] = v22 + v15 - (v9 & (2 * v22));
  return (*(v12 + 8 * (((v7 == 0) * v13) ^ a1)))();
}

uint64_t sub_1000DF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(STACK[0x1C00] - 0x1D8AB8FD230AE06) = -1044645555;
  *(STACK[0x1C00] - 0x1D8AB8FD230AE02) = -120128644;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADDALL) = -1884603960;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADFALL) = 670509228;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADF2) = -67844965;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADD2) = 1653864191;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADA6) = 1341674494;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADEALL) = 835043515;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADCALL) = -138121466;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADE6) = -91047559;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADCELL) = 1635170396;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADBALL) = 1867806397;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADD6) = -1500989614;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD8ALL) = 1021481977;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADE2) = 1891004568;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADFELL) = 695684584;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADBELL) = -1412535463;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADDELL) = 1415368922;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADF6) = -1722107743;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADC6) = 1258964712;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADA2) = -288941484;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADB2) = 386533234;
  *(STACK[0x1C00] + 4 * (*(STACK[0x1C00] - 0x1D8AB8FD230AD8ALL) + 38) - 0x1D8AB8FD230AE06) = 197148267;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD6ELL) = 1870981146;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADEELL) = -168938734;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADAALL) = 832773589;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD92) = 495762951;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD82) = -591838143;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD62) = 1567362478;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADB6) = 1202658565;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD72) = -1886504416;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADC2) = -1840885481;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD96) = -491704683;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD5ALL) = -2034248649;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD76) = -1410325895;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD4ALL) = 637945352;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD36) = -1075181537;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD8ELL) = -2039467840;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD9ALL) = 1876438991;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADAELL) = 2137335793;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD7ELL) = -1670082443;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD3ALL) = -1175123170;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD86) = 890792941;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD9ELL) = -526149875;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD5ELL) = -2088843851;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD46) = 1790645746;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD66) = 412714284;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD52) = 2136686839;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD56) = 1553353326;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD2ELL) = 296720246;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD3ELL) = 1599239585;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD6ALL) = 1182524045;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD0ALL) = 236872527;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD26) = -2011758012;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD4ELL) = 1204468285;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD42) = -1269145608;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD0ELL) = -1280704790;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD22) = -444050143;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD7ALL) = 1278381475;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD1ALL) = 907769670;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD16) = 1863714607;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD32) = -1928182956;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD12) = 577099913;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD1ELL) = -1886105410;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD2ALL) = 1766645685;
  v8 = *(v6 + 8 * v7);
  STACK[0x1830] = STACK[0x2BB0];
  return v8(LODWORD(STACK[0x18A0]), 2953398688, 1476395008, LODWORD(STACK[0x1820]), 304336, a6, LODWORD(STACK[0x1860]));
}

uint64_t sub_1000E035C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x17B0]) = v11;
  LODWORD(STACK[0x18B0]) ^= v10 ^ v9;
  LODWORD(STACK[0x1850]) = (v13 ^ v10) + (LODWORD(STACK[0x1850]) ^ v10) + v10 - (a2 & (2 * ((v13 ^ v10) + (LODWORD(STACK[0x1850]) ^ v10))));
  LODWORD(STACK[0x1900]) = v7 + (LODWORD(STACK[0x1900]) ^ v10) + v10 - (a2 & (2 * (v7 + (LODWORD(STACK[0x1900]) ^ v10))));
  LODWORD(STACK[0x1860]) ^= v10 ^ a6;
  LODWORD(STACK[0x1890]) ^= v10 ^ a5;
  LODWORD(STACK[0x18A0]) ^= v10 ^ a7;
  LODWORD(STACK[0x1880]) ^= v10 ^ v8;
  LODWORD(STACK[0x18F0]) ^= v10 ^ v12;
  if (LODWORD(STACK[0x17F0]) == 128)
  {
    v17 = STACK[0x1700];
    v18 = STACK[0x17D0];
    v19 = STACK[0x1EC8];
    *(v19 - 0x10AC49A2DA621035) = (BYTE1(LODWORD(STACK[0x17D0])) ^ 0x82) - ((LODWORD(STACK[0x17D0]) >> 7) & 0xBA) - 35;
    *(v19 - 0x10AC49A2DA621037) = -8739;
    *(v19 - 0x10AC49A2DA621034) = (v17 - 104) ^ v18;
    return (*(STACK[0x1708] + 8 * (v17 - 682)))();
  }

  else
  {
    v14 = STACK[0x1708];
    v15 = STACK[0x1700];
    if (LODWORD(STACK[0x17F0]) == 127)
    {
      v20 = STACK[0x2D30];
      *(v20 - 0x2A510ED33EFDCD6ALL) = STACK[0x1880];
      *(v20 - 0x2A510ED33EFDCD5ALL) = STACK[0x1890];
      *(v20 - 0x2A510ED33EFDCD72) = STACK[0x1860];
      *(v20 - 0x2A510ED33EFDCD62) = STACK[0x1850];
      v21 = STACK[0x1530];
      v22 = LODWORD(STACK[0x1530]) ^ 0xA79D459D;
      *(v20 - 0x2A510ED33EFDCD66) = STACK[0x18A0];
      *(v20 - 0x2A510ED33EFDCD5ELL) = STACK[0x18F0];
      v23 = v22 - ((2 * v22 - 30514) & 0x8B3A) - 30204;
      if (v22 < 0x9672BB99)
      {
        v23 = v21;
      }

      *(v20 - 0x2A510ED33EFDCD56) = STACK[0x18B0];
      *(v20 - 0x2A510ED33EFDCD6ELL) = STACK[0x1900];
      v24 = STACK[0x2938];
      *(v24 - 0x8D481BEF58C9354) = v23 ^ 0x40;
      *(v24 - 0x8D481BEF58C9356) = v22 % 0x3B9ACF71 - ((2 * (v22 % 0x3B9ACF71)) & 0xBB) - 35;
      *(v24 - 0x8D481BEF58C934FLL) = -35;
      *(v24 - 0x8D481BEF58C9357) = ((v22 % 0x3B9ACF71) >> 8) - (((v22 % 0x3B9ACF71) >> 8 << ((STACK[0x284] & 0xAD) - 44)) & 0xBA) - 35;
      *(v24 - 0x8D481BEF58C934ALL) = -8739;
      v25 = STACK[0x2938];
      *(STACK[0x2938] - 0x8D481BEF58C9355) = (HIBYTE(v23) ^ 0x45) - ((2 * (HIBYTE(v23) ^ 0x45)) & 0xBB) - 35;
      *(v25 - 0x8D481BEF58C933CLL) = -35;
      *(v25 - 0x8D481BEF58C934DLL) = -8739;
      v26 = STACK[0x2938];
      v27 = STACK[0x2938];
      v28 = v22 % 0x4251CD7;
      *(v26 - 0x8D481BEF58C9352) = v22 % 0x4251CD7 - ((2 * (v22 % 0x4251CD7)) & 0xBB) - 35;
      *(v26 - 0x8D481BEF58C9345) = -35;
      v29 = v22 % 0x345D3DA7;
      *(v26 - 0x8D481BEF58C9351) = BYTE1(v29) - ((v29 >> 7) & 0xBA) - 35;
      *(v27 - 0x8D481BEF58C933BLL) = -35;
      *(v27 - 0x8D481BEF58C934BLL) = -35;
      v30 = STACK[0x2938];
      v31 = STACK[0x2938];
      *(v30 - 0x8D481BEF58C9347) = -8739;
      *(v30 - 0x8D481BEF58C933ELL) = -35;
      *(v31 - 0x8D481BEF58C9339) = -8739;
      *(v31 - 0x8D481BEF58C9353) = BYTE1(v28) - ((v28 >> 7) & 0xBA) - 35;
      v32 = STACK[0x2938];
      v33 = STACK[0x2938];
      *(v32 - 0x8D481BEF58C934ELL) = -35;
      *(v32 - 0x8D481BEF58C9348) = -35;
      v34 = STACK[0x2938];
      v35 = STACK[0x2938];
      v36 = STACK[0x2938];
      v37 = STACK[0x2938];
      *(v33 - 0x8D481BEF58C9350) = v29 - ((2 * v29) & 0xBB) - 35;
      *(v33 - 0x8D481BEF58C9342) = -8739;
      *(v34 - 0x8D481BEF58C9335) = -35;
      *(v34 - 0x8D481BEF58C9330) = -35;
      *(v34 - 0x8D481BEF58C933DLL) = -35;
      *(v35 - 0x8D481BEF58C9340) = -35;
      *(v35 - 0x8D481BEF58C9343) = -35;
      *(v35 - 0x8D481BEF58C932ELL) = -35;
      *(v36 - 0x8D481BEF58C9331) = -35;
      *(v36 - 0x8D481BEF58C932ALL) = -35;
      *(v36 - 0x8D481BEF58C9344) = -35;
      v38 = STACK[0x2938];
      v39 = STACK[0x2938];
      *(v37 - 0x8D481BEF58C9324) = -35;
      *(v37 - 0x8D481BEF58C9334) = -35;
      v40 = STACK[0x2938];
      v41 = STACK[0x2938];
      *(v37 - 0x8D481BEF58C933FLL) = -35;
      *(v38 - 0x8D481BEF58C9337) = -35;
      *(v38 - 0x8D481BEF58C933ALL) = -35;
      *(v38 - 0x8D481BEF58C9332) = -35;
      *(v39 - 0x8D481BEF58C932FLL) = -35;
      *(v39 - 0x8D481BEF58C9336) = -35;
      *(v39 - 0x8D481BEF58C9322) = -35;
      *(v40 - 0x8D481BEF58C932DLL) = -35;
      *(v40 - 0x8D481BEF58C9333) = -35;
      *(v40 - 0x8D481BEF58C9327) = -35;
      v42 = STACK[0x2938];
      v43 = STACK[0x2938];
      *(v41 - 0x8D481BEF58C9326) = -35;
      *(v41 - 0x8D481BEF58C9321) = -35;
      *(v41 - 0x8D481BEF58C9323) = -35;
      *(v42 - 0x8D481BEF58C9328) = -35;
      *(v42 - 0x8D481BEF58C932CLL) = -8739;
      *(v43 - 0x8D481BEF58C9325) = -35;
      *(v43 - 0x8D481BEF58C9329) = -35;
      return (*(v14 + 8 * (v15 - 1237)))();
    }

    else
    {
      return (*(v14 + 8 * (v15 - 1010)))(a1, STACK[0x1700], a3, 221, a4, 6201, 2013);
    }
  }
}

uint64_t sub_1000E12AC@<X0>(uint64_t a1@<X8>)
{
  v10 = (v4 + (2 * v6 + 43148805) % v3);
  v11 = 2016189265 * ((*(*STACK[0x13B0] + (*STACK[0x13B8] & 0xF1C2C9C0)) ^ v10) & 0x7FFFFFFF);
  v12 = 2016189265 * (v11 ^ HIWORD(v11));
  v13 = (v6 - 2125914272 + 7 * (v2 ^ 0x13E2u)) % 0x37;
  LODWORD(v12) = ((*(*(v9 + 8 * (v2 ^ 0x10C1)) - 2051364311 + (v12 >> 24)) ^ *v10 ^ *((v12 >> 24) + *(v9 + 8 * (v2 - 3638)) - 1177071402 + 4) ^ *(*(v9 + 8 * (v2 ^ 0x1048)) - 1166325886 + (v12 >> 24)) ^ v12 ^ (125 * (v12 >> 24))) + (v1 ^ 0x27)) ^ *(a1 + v13);
  v14 = v6 + v7 < v5;
  *(a1 + v13) = v12;
  if (v5 < 0x28CE8570 != (v6 + v7) < 0x28CE8570)
  {
    v14 = v5 < 0x28CE8570;
  }

  return (*(v8 + 8 * ((75 * !v14) ^ v2)))();
}

uint64_t sub_1000E1450(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x13C0] = a8;
  STACK[0x13E0] = a4;
  v11 = STACK[0x1EC8] - 0x10AC49A2DA621073 < STACK[0x2BB0] - 0x6A0DF074BE1C7172 && STACK[0x2BB0] - 0x6A0DF074BE1C7272 < STACK[0x1EC8] - 0x10AC49A2DA621033;
  return (*(v9 + 8 * ((v11 * ((v8 ^ 0x127) - 1409)) ^ v8 ^ 0x127)))(58, a2, 920999397);
}

uint64_t sub_1000E1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  *(v8 + a1 - 58) = a5;
  *(v9 + 4 * (a1 - 58)) = -893578120;
  return (*(v11 + 8 * ((30 * ((((v10 - 4128) | 0x2000u) ^ a8) + a1 != 122)) ^ v10)))();
}

uint64_t sub_1000E1548(__n128 a1, double a2, double a3, double a4, __n128 a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v17 = (v13 + v12);
  *v17 = a5;
  v17[1] = a5;
  v18 = (v14 + 4 * v12);
  v18[2] = a1;
  v18[3] = a1;
  *v18 = a1;
  v18[1] = a1;
  v18[6] = a1;
  v18[7] = a1;
  v18[4] = a1;
  v18[5] = a1;
  return (*(v16 + 8 * (((v12 == 32) * (((v15 + a8) & a11) + a12)) ^ v15)))();
}

uint64_t sub_1000E1634@<X0>(uint64_t a1@<X1>, char a2@<W4>, uint64_t a3@<X8>)
{
  *(v4 - 0x68FAC1643CBCE861) = -572662435;
  *(v4 - 0x68FAC1643CBCE85DLL) = a2;
  *(v4 - 0x68FAC1643CBCE85CLL) = 1708973533;
  return (*(v6 + 8 * ((((((v3 + 1968390261) ^ ((a3 - v4 + 0x584E77C1625AD825) < 0x20)) & 1) == 0) * v5) ^ v3)))(85, a1, 5555);
}

uint64_t sub_1000E16E8()
{
  v5 = *(v0 + v2 + 16);
  v6 = (v1 + v2);
  *v6 = *(v0 + v2);
  v6[1] = v5;
  return (*(v4 + 8 * (((v2 == 32) * (v3 + 3910)) ^ v3)))();
}

uint64_t sub_1000E17A0@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>)
{
  v12 = a2 - (v7 & a1);
  v13 = *(v4 + (v12 ^ (v6 - 1)));
  v14 = *(v4 + (v12 ^ (v6 + 2)));
  v15 = (*(v4 + (v12 ^ v6)) ^ 0xDDDDDDDD) << 16;
  v16 = *(v4 + (v12 & 0xFFFFFFFC ^ (v6 + 2))) ^ v8;
  v17 = v16 | ((v15 | ((v13 ^ v8) << 8) | v14 ^ v8) << 8);
  *(v5 + 4 * v3) = v17 + v10 - 2 * (v17 & (v11 + 2) ^ v16 & 4);
  return (*(v9 + 8 * ((15 * (v3 != 15)) ^ (a3 - 2237))))();
}

uint64_t sub_1000E18B0@<X0>(int a1@<W1>, int a2@<W3>, int a3@<W4>, int a4@<W7>, _DWORD *a5@<X8>)
{
  HIDWORD(v16) = v7 ^ *a5 ^ 0x22222222;
  LODWORD(v16) = *a5 ^ v14;
  v15 = v16 >> 7;
  v17 = a5[13];
  HIDWORD(v16) = *a5 ^ v10;
  LODWORD(v16) = *a5 ^ a1;
  v18 = v16 >> 18;
  HIDWORD(v16) = v17 ^ v10;
  LODWORD(v16) = v17 ^ a1;
  v19 = v16 >> 17;
  HIDWORD(v16) = v17 ^ v9;
  LODWORD(v16) = v17 ^ v12;
  v20 = (a2 ^ (v17 >> 10) ^ ((v16 >> 19) + v19) ^ (v18 + v15 + (a3 ^ (*a5 >> 3)) + 1)) - (a5[8] ^ v13);
  v21 = ((v20 + v13 - (v8 & (2 * v20))) ^ v13) - (v6 ^ v13);
  a5[15] = v21 + v13 - (v8 & (2 * v21));
  return (*(v11 + 8 * (((v5 == 0) * a4) ^ v7)))();
}

uint64_t sub_1000E1968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(STACK[0x1C00] - 0x1D8AB8FD230ADFALL) = 670509228;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADF6) = -1722107743;
  *(STACK[0x1C00] - 0x1D8AB8FD230AE02) = -120128644;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADD6) = -1500989614;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADE2) = 1891004568;
  *(STACK[0x1C00] - 0x1D8AB8FD230AE06) = -1044645555;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADC2) = -1840885481;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADBALL) = 1867806397;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD8ALL) = 197148267;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADDELL) = 1415368922;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADEELL) = -168938734;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADFELL) = 695684584;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADAELL) = 2137335793;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADCELL) = 1635170396;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADB6) = 1202658565;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADD2) = 1653864191;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADF2) = -67844965;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD7ELL) = -1670082443;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADEALL) = 835043515;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADC6) = 1258964712;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADA6) = 1341674494;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD9ALL) = 1876438991;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADA2) = -288941484;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADDALL) = -1884603960;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADAALL) = 832773589;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADE6) = -91047559;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADB2) = 386533234;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD9ELL) = -526149875;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD6ELL) = 1870981146;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD92) = 495762951;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD8ELL) = -2039467840;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD62) = 1567362478;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD82) = -591838143;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD66) = 412714284;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD6ALL) = 1182524045;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADBELL) = -1412535463;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD52) = 2136686839;
  *(STACK[0x1C00] - 0x1D8AB8FD230ADCALL) = -138121466;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD4ALL) = 637945352;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD46) = 1790645746;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD86) = 890792941;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD72) = -1886504416;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD32) = -1928182956;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD4ELL) = 1204468285;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD76) = -1410325895;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD56) = 1553353326;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD1ELL) = -1886105410;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD96) = -491704683;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD5ALL) = -2034248649;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD2ALL) = 1766645685;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD7ALL) = 1278381475;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD3ELL) = 1599239585;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD5ELL) = -2088843851;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD3ALL) = -1175123170;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD36) = -1075181537;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD2ELL) = 296720246;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD12) = 577099913;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD42) = -1269145608;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD0ALL) = 236872527;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD1ALL) = 907769670;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD16) = 1863714607;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD26) = -2011758012;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD0ELL) = -1280704790;
  *(STACK[0x1C00] - 0x1D8AB8FD230AD22) = -444050143;
  STACK[0x1900] = STACK[0x1C00] - 0x1D8AB8FD230AE06;
  return (*(v6 + 8 * v5))(2490680985, v5, a3, 2665254262, a5, 755964425, 545681954, 20957214);
}

uint64_t sub_1000E2360@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W5>, unsigned int a4@<W8>)
{
  v14 = a1 - 2 * ((((a4 - 2443) | 0x83) - 3730) & v6 ^ (a1 + 1497066702) & (v7 + 1));
  v15 = STACK[0x2D30];
  *(v15 - 0x2A510ED33EFDCD4ALL) = v4 ^ 0x7C5F6289;
  *(v15 - 0x2A510ED33EFDCD3ALL) = v10 ^ 0x6F4BE3BE;
  *(v15 - 0x2A510ED33EFDCD36) = v12 ^ 0xCC706249;
  *(v15 - 0x2A510ED33EFDCD4ELL) = v14 - 1321201250;
  *(v15 - 0x2A510ED33EFDCD42) = (a3 ^ v7) - ((2 * (a3 ^ v7) - 367559246) & v9) - 854563927;
  *(v15 - 0x2A510ED33EFDCD3ELL) = v5 ^ 0x7882D6F2;
  *(v15 - 0x2A510ED33EFDCD52) = a2 ^ 0xC6D829A6;
  *(v15 - 0x2A510ED33EFDCD46) = v11 ^ 0xF9172312;
  STACK[0x1420] = STACK[0x1540] - 0x2B1A0449E8A6C928;
  v16 = *(v8 + 8 * a4);
  LODWORD(STACK[0x1410]) = LODWORD(STACK[0x15B0]) - 1443455193;
  LODWORD(STACK[0x18F0]) = -1451309218;
  LODWORD(STACK[0x18A0]) = 1606487969;
  LODWORD(STACK[0x1900]) = -1632509465;
  LODWORD(STACK[0x18B0]) = 192822224;
  return v16();
}

uint64_t sub_1000E2538(int a1)
{
  v6 = 773 * (a1 ^ 0xE96);
  LODWORD(STACK[0x1730]) = a1 + 2312;
  v7 = v1 & ((a1 + 2312) ^ 0xFFFFE867) ^ 0xD8836D5F;
  STACK[0x1830] = v7;
  LODWORD(STACK[0x1400]) = v6;
  v8 = v1 & (v6 ^ 0xFFFFF0EC) ^ 0xD8836D5E;
  STACK[0x1890] = v8;
  v9 = STACK[0x1420];
  v10 = *(STACK[0x1420] + v8);
  v11 = v1 & 0xFFFFFFF4 ^ 0xD8836D5F;
  STACK[0x1880] = v11;
  v12 = *(v9 + v7);
  v13 = v1 & 0xFFFFFFF9 ^ 0xD8836D5E;
  STACK[0x1850] = v13;
  v14 = *(v4 + 8 * (a1 - 3278)) - 2034295838;
  v16 = (*(v14 + (*(v9 + v11) ^ 0x70)) + (*(v9 + v11) ^ 0x70) * (*(v9 + v11) ^ 0x70)) ^ *(v9 + v11);
  v17 = *(v9 + v13);
  v18 = *(v4 + 8 * (a1 - 3367)) - 178243159;
  v19 = *(v18 + (v17 ^ 0x81));
  v20 = (*(v14 + (v12 ^ 0x97)) + (v12 ^ 0x97) * (v12 ^ 0x97)) ^ v12;
  LOBYTE(v13) = *(v18 + (v10 ^ 0xCD));
  v21 = v1 & 0xFFFFFFF2 ^ 0xD8836D5D;
  STACK[0x17F0] = v21;
  LOBYTE(v12) = ((v10 ^ 0xFC) - (v10 ^ 0x1C)) ^ 0x12 ^ (v13 - (v10 ^ 0xCD | v2));
  v22 = v1 & 0xFFFFFFFD ^ 0xD8836D5E;
  STACK[0x1860] = v22;
  LODWORD(STACK[0x1750]) = ((v17 ^ 0xB0) - (v17 ^ 0x50)) ^ (v19 - (v17 ^ 0x81 | v2));
  v23 = *(v9 + v22);
  v24 = v1 & 0xFFFFFFF0 ^ 0xD8836D5F;
  STACK[0x1840] = v24;
  LOBYTE(v23) = ((v23 ^ 0x8F) - (v23 ^ 0x6F)) ^ 0x35 ^ (*(v18 + (v23 ^ 0xBE)) - (v23 ^ 0xBE | v2));
  v25 = *(v9 + v24);
  v26 = *(v4 + 8 * (a1 - 2903)) - 1868033671;
  LOBYTE(v13) = *(v26 + (*(v9 + v21) ^ 0x14)) + (*(v9 + v21) ^ 0x14) * (*(v9 + v21) ^ 0x14);
  v27 = v1 & 0xFFFFFFF6 ^ 0xD8836D5D;
  STACK[0x1800] = v27;
  v28 = (*(v14 + (v25 ^ 0x84)) + (v25 ^ 0x84) * (v25 ^ 0x84)) ^ v25;
  v29 = *(v26 + (*(v9 + v27) ^ 0x6BLL)) + (*(v9 + v27) ^ 0x6B) * (*(v9 + v27) ^ 0x6B);
  LOBYTE(v25) = (v13 + 64) ^ 0x2D ^ (16 * v13 + 48);
  v30 = v1 & 0xFFFFFFF8 ^ 0xD8836D5F;
  STACK[0x1790] = v30;
  LODWORD(STACK[0x1740]) = (v29 + 64) ^ 0x43 ^ (16 * v29 + 48);
  v31 = v1 & 0xFFFFFFFA ^ 0xD8836D5D;
  STACK[0x1780] = v31;
  v32 = *(v9 + v30);
  v33 = v1 & 0xFFFFFFFE ^ 0xD8836D5D;
  STACK[0x1770] = v33;
  v34 = (*(v14 + (v32 ^ 0xAB)) + (v32 ^ 0xAB) * (v32 ^ 0xAB)) ^ v32;
  v35 = v1 & 0xFFFFFFF3 ^ 0xD8836D5C;
  STACK[0x17E0] = v35;
  v36 = *(v4 + 8 * (a1 ^ 0xF5C)) - 1543099218;
  LOBYTE(v14) = ((*(v9 + v35) ^ 0x11) + 48) ^ 0xCE ^ (*(v36 + (*(v9 + v35) ^ 0xD6)) - (*(v9 + v35) ^ 0xD6 | 0x52));
  STACK[0x17D0] = v1 & 0xFFFFFFF1 ^ 0xD8836D5E;
  v37 = *(v26 + (*(v9 + v31) ^ 0x63)) + (*(v9 + v31) ^ 0x63) * (*(v9 + v31) ^ 0x63);
  v38 = ((v37 ^ v3) + 64) ^ (16 * v37 + 48);
  LOBYTE(v35) = *(v26 + (*(v9 + v33) ^ 0x4FLL)) + (*(v9 + v33) ^ 0x4F) * (*(v9 + v33) ^ 0x4F);
  HIDWORD(v39) = v1 & 0xFFFFFFF1 ^ 0xD8836D5E;
  LODWORD(v39) = v1 ^ 0xD8820000;
  LOBYTE(v26) = (v35 + 64) ^ (16 * v35 + 48);
  HIDWORD(v39) = v39 >> 17;
  LODWORD(v39) = HIDWORD(v39);
  v40 = *(v9 + (v39 >> 15));
  LOBYTE(v18) = *(v18 + (v40 ^ 0xD2)) - (v40 ^ 0xD2 | v2);
  v41 = v1 & 0xFFFFFFF7 ^ 0xD8836D5C;
  STACK[0x17A0] = v41;
  v42 = *(v9 + v41);
  LOBYTE(v13) = ((v40 ^ 0xE3) - (v40 ^ 3)) ^ 0x3A ^ v18;
  LOBYTE(v18) = *(v36 + (v42 ^ 0xBA)) - (v42 ^ 0xBA | 0x52);
  v43 = v1 ^ 0xD8836D5C;
  STACK[0x1810] = v43;
  LODWORD(STACK[0x1820]) = v1;
  LOBYTE(v33) = ((v42 ^ 0x7D) + 48) ^ 0x6B ^ v18;
  LOBYTE(v42) = ((*(v9 + v43) ^ v5) + 48) ^ 0x92 ^ (*(v36 + (*(v9 + v43) ^ 0xDELL)) - (*(v9 + v43) ^ 0xDE | 0x52));
  v44 = v1 & 0xFFFFFFFB ^ 0xD8836D5C;
  STACK[0x17B0] = v44;
  v45 = *(v9 + v44);
  LOBYTE(v36) = *(v36 + (v45 ^ 0x62)) - (v45 ^ 0x62 | 0x52);
  v46 = v12;
  LODWORD(v40) = a1;
  v47 = *(v4 + 8 * (a1 - 3573)) - 418468707;
  LODWORD(STACK[0x1540]) = v12;
  LOBYTE(v12) = ((v45 ^ 0xA5) + 48) ^ 0xB3 ^ v36;
  LODWORD(v36) = *(v47 + 4 * (v46 ^ 0x63u)) + (v46 ^ 0x63) * (v46 ^ 0x63);
  LODWORD(STACK[0x1760]) = v40;
  v48 = *(v4 + 8 * (v40 - 3378)) - 503811074;
  LODWORD(STACK[0x1530]) = v42;
  LODWORD(v42) = (*(v48 + 4 * (v42 ^ 0xDCu)) + (v42 ^ 0xDC) * (v42 ^ 0xDC)) ^ 0x6E277929;
  LODWORD(v30) = v42 - 529561752 - ((2 * v42) & 0xC0DF0ED0);
  LODWORD(v9) = v25;
  v49 = *(v4 + 8 * (v40 ^ 0xF46)) - 389387790;
  LODWORD(STACK[0x14C0]) = v9;
  LODWORD(v42) = (((2 * v30) ^ 0xC0DF0ED0) * (v30 ^ 0x606F8768)) ^ (*(v49 + 4 * (v9 ^ 0xA5)) - (v9 ^ 0xA5 | 0x6E));
  LODWORD(v9) = v42 - 529561752 - ((2 * v42) & 0xC0DF0ED0);
  v50 = *(v4 + 8 * (v40 - 3667)) - 2029239811;
  LODWORD(STACK[0x15B0]) = v34;
  v51 = (v34 ^ 0x95) * (v34 ^ 0x95) - 1876621019 + *(v50 + 4 * (v34 ^ 0x95u));
  LODWORD(STACK[0x14B0]) = v12;
  LODWORD(v12) = (*(v48 + 4 * (v12 ^ 0x1Au)) + (v12 ^ 0x1A) * (v12 ^ 0x1A)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 824104175 - ((2 * v12) & 0x9DC25622);
  v52 = (-518995150 * (v36 ^ 0x9AD64DB2)) ^ v36 ^ 0x9AD64DB2 ^ v51 ^ v30 ^ v9;
  LODWORD(STACK[0x1490]) = v26 ^ 0xF0;
  LODWORD(v36) = *(v49 + 4 * (v26 ^ 0x45u)) - (v26 ^ 0x45 | 0x6E);
  LODWORD(STACK[0x14A0]) = v13;
  LODWORD(v26) = *(v47 + 4 * (v13 ^ 0x6Bu)) + (v13 ^ 0x6B) * (v13 ^ 0x6B);
  LODWORD(STACK[0x1720]) = v16;
  LODWORD(v13) = (v16 ^ 5) * (v16 ^ 5) - 1876621019 + *(v50 + 4 * (v16 ^ 5u));
  LODWORD(STACK[0x1480]) = v33;
  LODWORD(v33) = (*(v48 + 4 * (v33 ^ 0xDFu)) + (v33 ^ 0xDF) * (v33 ^ 0xDF)) ^ 0x6E277929;
  LODWORD(v33) = v33 - 10600376 - ((2 * v33) & 0xFEBC8090);
  LODWORD(v26) = v26 ^ 0x9AD64DB2;
  LODWORD(v36) = (-518995150 * v26) ^ v36 ^ v13 ^ (((2 * v12) ^ 0x9DC25622) * (v12 ^ 0x4EE12B11));
  v53 = v12 ^ v26 ^ (v36 - 824104175 - ((2 * v36) & 0x9DC25622));
  LODWORD(STACK[0x1470]) = v23;
  LODWORD(v23) = *(v47 + 4 * (v23 ^ 0xA6u)) + (v23 ^ 0xA6) * (v23 ^ 0xA6);
  LODWORD(v12) = *(v49 + 4 * (v38 ^ 4u));
  LODWORD(STACK[0x1450]) = v38;
  LODWORD(STACK[0x1460]) = v14;
  LODWORD(v36) = (*(v48 + 4 * (v14 ^ 0x64u)) + (v14 ^ 0x64) * (v14 ^ 0x64)) ^ 0x6E277929;
  LODWORD(v36) = v36 - 574877379 - ((2 * v36) & 0xBB78227A);
  LODWORD(STACK[0x1600]) = v28;
  LODWORD(v23) = v23 ^ 0x9AD64DB2;
  LODWORD(v12) = (-518995150 * v23) ^ (v12 - (v38 | 0x6E)) ^ ((v28 ^ 0xBA) * (v28 ^ 0xBA) - 1876621019 + *(v50 + 4 * (v28 ^ 0xBAu))) ^ (((2 * v33) ^ 0xFEBC8090) * (v33 ^ 0x7F5E4048));
  v54 = v33 ^ v23 ^ (v12 - 10600376 - ((2 * v12) & 0xFEBC8090));
  LODWORD(v23) = LODWORD(STACK[0x1740]);
  LODWORD(STACK[0x1440]) = v23;
  LODWORD(v26) = *(v49 + 4 * (v23 ^ 0xAD)) - (v23 ^ 0xAD | 0x6E);
  v55 = LODWORD(STACK[0x1750]) ^ 0xC0;
  LODWORD(STACK[0x1430]) = v55;
  LODWORD(v13) = *(v47 + 4 * (v55 ^ 0xF1u)) + (v55 ^ 0xF1) * (v55 ^ 0xF1);
  LODWORD(STACK[0x1710]) = v20;
  LODWORD(v13) = v13 ^ 0x9AD64DB2;
  LODWORD(v12) = ((v20 ^ 0x14) * (v20 ^ 0x14) - 1876621019 + *(v50 + 4 * (v20 ^ 0x14u))) ^ v26 ^ (-518995150 * v13) ^ (((2 * v36) ^ 0xBB78227A) * (v36 ^ 0x5DBC113D));
  LODWORD(v30) = v13 ^ v36 ^ (v12 - 574877379 - ((2 * v12) & 0xBB78227A));
  LODWORD(v12) = *(v48 + 4 * (HIBYTE(v52) ^ 0xD4)) + (HIBYTE(v52) ^ 0xD4) * (HIBYTE(v52) ^ 0xD4);
  LODWORD(v12) = (v12 ^ 0x6E277929) - 705128277 - 2 * ((v12 ^ 0x6E277929) & 0x55F898BB ^ v12 & 0x10);
  LODWORD(v9) = (*(v48 + 4 * (HIBYTE(v53) ^ 0xED)) + (HIBYTE(v53) ^ 0xED) * (HIBYTE(v53) ^ 0xED)) ^ 0x6E277929;
  v56 = v9 + 1127538391 - ((2 * v9) & 0x8669BDAE);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v54) ^ 0x12u)) + (BYTE1(v54) ^ 0x12) * (BYTE1(v54) ^ 0x12)) ^ 0x9AD64DB2;
  LODWORD(v36) = v26 ^ ((v53 ^ 0xD0) * (v53 ^ 0xD0) - 1876621019 + *(v50 + 4 * (v53 ^ 0xD0u))) ^ (-518995150 * v26) ^ (*(v49 + 4 * (BYTE2(v30) ^ 0xC1u)) - (BYTE2(v30) ^ 0xC1 | 0x6E)) ^ (((2 * v12) ^ 0xABF13156) * (v12 ^ 0x55F898AB));
  LODWORD(v9) = (v36 - 705128277 - ((2 * v36) & 0xABF13156)) ^ v12;
  LOWORD(v36) = v52 ^ 0xB35B;
  LODWORD(v12) = ((v52 ^ 0x7D46B35B) >> 16) ^ 0xAD;
  LODWORD(v13) = *(v49 + 4 * v12) - (v12 | 0x6E);
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v54) ^ 0x45)) + (HIBYTE(v54) ^ 0x45) * (HIBYTE(v54) ^ 0x45)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 1610347078 - ((2 * v12) & 0x40081B74);
  LODWORD(v33) = (*(v47 + 4 * (BYTE1(v30) ^ 0x6Bu)) + (BYTE1(v30) ^ 0x6B) * (BYTE1(v30) ^ 0x6B)) ^ 0x9AD64DB2;
  LODWORD(v26) = (*(v50 + 4 * (v54 ^ 0xF0u)) - 1876621019 + (v54 ^ 0xF0) * (v54 ^ 0xF0)) ^ v13 ^ v33 ^ (-518995150 * v33) ^ (((2 * v56) ^ 0x8669BDAE) * (v56 ^ 0x4334DED7));
  v57 = (v26 + 1127538391 - ((2 * v26) & 0x8669BDAE)) ^ v56;
  LODWORD(v33) = (*(v48 + 4 * (BYTE3(v30) ^ 0xFC)) + (BYTE3(v30) ^ 0xFC) * (BYTE3(v30) ^ 0xFC)) ^ 0x6E277929;
  LODWORD(v33) = v33 + 1766412182 - ((2 * v33) & 0xD2929F2C);
  v58 = *(v49 + 4 * (BYTE2(v54) ^ 0x11u)) - (BYTE2(v54) ^ 0x11 | 0x6E);
  v59 = *(v47 + 4 * (BYTE1(v53) ^ 0xC6u)) + (BYTE1(v53) ^ 0xC6) * (BYTE1(v53) ^ 0xC6);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v36) ^ 0xABu)) + (BYTE1(v36) ^ 0xAB) * (BYTE1(v36) ^ 0xAB)) ^ 0x9AD64DB2;
  LODWORD(v26) = v26 ^ (*(v49 + 4 * (BYTE2(v53) ^ 0xE4u)) - (BYTE2(v53) ^ 0xE4 | 0x6E)) ^ (*(v50 + 4 * (v30 ^ 0x2Du)) - 1876621019 + (v30 ^ 0x2D) * (v30 ^ 0x2D)) ^ (-518995150 * v26) ^ (((2 * v12) ^ 0x40081B74) * (v12 ^ 0x20040DBA));
  v60 = (v26 - 1610347078 - ((2 * v26) & 0x40081B74)) ^ v12;
  LODWORD(v12) = ((v36 ^ 0xB5) * (v36 ^ 0xB5) - 1876621019 + *(v50 + 4 * (v36 ^ 0xB5u))) ^ v58 ^ v59 ^ 0x9AD64DB2 ^ (-518995150 * (v59 ^ 0x9AD64DB2)) ^ (((2 * v33) ^ 0xD2929F2C) * (v33 ^ 0x69494F96));
  LODWORD(v30) = (v12 + 1766412182 - ((2 * v12) & 0xD2929F2C)) ^ v33;
  LODWORD(v12) = (*(v48 + 4 * (BYTE3(v9) ^ 0x1B)) + (BYTE3(v9) ^ 0x1B) * (BYTE3(v9) ^ 0x1B)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 350132975 - ((2 * v12) & 0xD642CA22);
  LODWORD(v36) = *(v47 + 4 * (BYTE1(v60) ^ 0xDDu)) + (BYTE1(v60) ^ 0xDD) * (BYTE1(v60) ^ 0xDD);
  LODWORD(v26) = (-518995150 * (v36 ^ 0x1AD64DB2)) ^ (*(v50 + 4 * (v57 ^ 0xA0u)) - 1876621019 + (v57 ^ 0xA0) * (v57 ^ 0xA0)) ^ (*(v49 + 4 * (BYTE2(v30) ^ 0xC4u)) - (BYTE2(v30) ^ 0xC4 | 0x6E)) ^ (((2 * v12) ^ 0xD642CA22) * (v12 ^ 0x6B216511));
  v61 = v12 ^ v36 ^ (v26 - 350132975 - ((2 * v26) & 0xD642CA22));
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v57) ^ 0x2E)) + (HIBYTE(v57) ^ 0x2E) * (HIBYTE(v57) ^ 0x2E)) ^ 0x6E277929;
  LODWORD(v12) = v12 + 1746983712 - ((2 * v12) & 0xD041B640);
  LODWORD(v33) = *(v48 + 4 * (HIBYTE(v60) ^ 0xBF)) + (HIBYTE(v60) ^ 0xBF) * (HIBYTE(v60) ^ 0xBF);
  LODWORD(v33) = (v33 ^ 0x6E277929) + 2078736888 - 2 * ((v33 ^ 0x6E277929) & 0x7BE701FA ^ v33 & 2);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v30) ^ 0x70u)) + (BYTE1(v30) ^ 0x70) * (BYTE1(v30) ^ 0x70)) ^ 0x9AD64DB2;
  LODWORD(v36) = (*(v50 + 4 * (v60 ^ 0xBEu)) - 1876621019 + (v60 ^ 0xBE) * (v60 ^ 0xBE)) ^ (*(v49 + 4 * (BYTE2(v9) ^ 3u)) - (BYTE2(v9) ^ 3 | 0x6E)) ^ (-518995150 * v26) ^ (((2 * v12) ^ 0xD041B640) * (v12 ^ 0x6820DB20));
  v62 = v26 ^ v12 ^ (v36 + 1746983712 - ((2 * v36) & 0xD041B640));
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v9) ^ 0xC6u)) + (BYTE1(v9) ^ 0xC6) * (BYTE1(v9) ^ 0xC6)) ^ 0x9AD64DB2;
  LODWORD(v12) = v13 ^ (*(v49 + 4 * (BYTE2(v57) ^ 0x1Bu)) - (BYTE2(v57) ^ 0x1B | 0x6E)) ^ (*(v50 + 4 * (v30 ^ 0x43u)) - 1876621019 + (v30 ^ 0x43) * (v30 ^ 0x43)) ^ (-518995150 * v13) ^ (((2 * v33) ^ 0xF7CE03F0) * (v33 ^ 0x7BE701F8));
  v63 = (v12 + 2078736888 - ((2 * v12) & 0xF7CE03F0)) ^ v33;
  LODWORD(v12) = (*(v48 + 4 * (BYTE3(v30) ^ 0xAE)) + (BYTE3(v30) ^ 0xAE) * (BYTE3(v30) ^ 0xAE)) ^ 0x6E277929;
  LODWORD(v12) = v12 + 1517351376 - ((2 * v12) & 0xB4E1E3A0);
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v57) ^ 0xD7u)) + (BYTE1(v57) ^ 0xD7) * (BYTE1(v57) ^ 0xD7)) ^ 0x9AD64DB2;
  LODWORD(v36) = (-518995150 * v13) ^ (*(v49 + 4 * (BYTE2(v60) ^ 0xE1u)) - (BYTE2(v60) ^ 0xE1 | 0x6E)) ^ ((v9 ^ 0xD9) * (v9 ^ 0xD9) - 1876621019 + *(v50 + 4 * (v9 ^ 0xD9u))) ^ (((2 * v12) ^ 0xB4E1E3A0) * (v12 ^ 0x5A70F1D0));
  LODWORD(v36) = v12 ^ v13 ^ (v36 + 1517351376 - ((2 * v36) & 0xB4E1E3A0));
  LODWORD(v12) = *(v48 + 4 * (HIBYTE(v61) ^ 0x66)) + (HIBYTE(v61) ^ 0x66) * (HIBYTE(v61) ^ 0x66);
  LODWORD(v12) = (v12 ^ 0x6E277929) + 2019377295 - 2 * ((v12 ^ 0x6E277929) & 0x785D409F ^ v12 & 0x10);
  LODWORD(v9) = *(v48 + 4 * (HIBYTE(v62) ^ 0x22)) + (HIBYTE(v62) ^ 0x22) * (HIBYTE(v62) ^ 0x22);
  v64 = (v9 ^ 0x6E277929) + 1660970109 - 2 * ((v9 ^ 0x6E277929) & 0x6300647F ^ v9 & 2);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v63) ^ 3u)) + (BYTE1(v63) ^ 3) * (BYTE1(v63) ^ 3)) ^ 0x9AD64DB2;
  v65 = v26 ^ (*(v50 + 4 * (v62 ^ 0xE7u)) - 1876621019 + (v62 ^ 0xE7) * (v62 ^ 0xE7)) ^ v12 ^ (-518995150 * v26) ^ (*(v49 + 4 * (BYTE2(v36) ^ 0x31u)) - (BYTE2(v36) ^ 0x31 | 0x6E)) ^ (((2 * v12) ^ 0xF0BA811E) * (v12 ^ 0x785D408F));
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v36) ^ 0xA4u)) + (BYTE1(v36) ^ 0xA4) * (BYTE1(v36) ^ 0xA4)) ^ 0x9AD64DB2;
  LODWORD(v12) = (*(v50 + 4 * (v63 ^ 0x80u)) - 1876621019 + (v63 ^ 0x80) * (v63 ^ 0x80)) ^ (*(v49 + 4 * (BYTE2(v61) ^ 0x1Du)) - (BYTE2(v61) ^ 0x1D | 0x6E)) ^ v13 ^ (-518995150 * v13) ^ (((2 * v64) ^ 0xC600C8FA) * (v64 ^ 0x6300647D));
  v66 = (v12 + 1660970109 - ((2 * v12) & 0xC600C8FA)) ^ v64;
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v63) ^ 0x86)) + (HIBYTE(v63) ^ 0x86) * (HIBYTE(v63) ^ 0x86)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 1355226709 - ((2 * v12) & 0x5E71C356);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v61) ^ 0x92u)) + (BYTE1(v61) ^ 0x92) * (BYTE1(v61) ^ 0x92)) ^ 0x9AD64DB2;
  LODWORD(v26) = v26 ^ (*(v49 + 4 * (BYTE2(v62) ^ 0xCu)) - (BYTE2(v62) | 0x6E)) ^ (*(v50 + 4 * (v36 ^ 0x63u)) - 1876621019 + (v36 ^ 0x63) * (v36 ^ 0x63)) ^ (-518995150 * v26) ^ (((2 * v12) ^ 0x5E71C356) * (v12 ^ 0x2F38E1AB));
  v67 = (v26 - 1355226709 - ((2 * v26) & 0x5E71C356)) ^ v12;
  LODWORD(v12) = (*(v48 + 4 * (BYTE3(v36) ^ 6)) + (BYTE3(v36) ^ 6) * (BYTE3(v36) ^ 6)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 2046466040 - ((2 * v12) & 0xC0AD010);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v62) ^ 0x18u)) + (BYTE1(v62) ^ 0x18) * (BYTE1(v62) ^ 0x18)) ^ 0x9AD64DB2;
  LODWORD(v36) = ((v61 ^ 0x6C) * (v61 ^ 0x6C) - 1876621019 + *(v50 + 4 * (v61 ^ 0x6Cu))) ^ (*(v49 + 4 * (BYTE2(v63) ^ 0xEEu)) - (BYTE2(v63) ^ 0xEE | 0x6E)) ^ (-518995150 * v26) ^ (((2 * v12) ^ 0xC0AD010) * (v12 ^ 0x6056808));
  LODWORD(v36) = v12 ^ v26 ^ (v36 - 2046466040 - ((2 * v36) & 0xC0AD010));
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v65) ^ 0x1D)) + (HIBYTE(v65) ^ 0x1D) * (HIBYTE(v65) ^ 0x1D)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 2040813859 - ((2 * v12) & 0xCB74DBA);
  v68 = (*(v48 + 4 * (HIBYTE(v66) ^ 0xC9)) + (HIBYTE(v66) ^ 0xC9) * (HIBYTE(v66) ^ 0xC9)) ^ 0x6E277929;
  v69 = v68 + 1721030967 - ((2 * v68) & 0xCD29B26E);
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v67) ^ 0x12u)) + (BYTE1(v67) ^ 0x12) * (BYTE1(v67) ^ 0x12)) ^ 0x9AD64DB2;
  LODWORD(v26) = (((2 * v12) ^ 0xCB74DBA) * (v12 ^ 0x65BA6DD)) ^ (*(v50 + 4 * (v66 ^ 0xA7u)) - 1876621019 + (v66 ^ 0xA7) * (v66 ^ 0xA7)) ^ v13 ^ (-518995150 * v13) ^ (*(v49 + 4 * (BYTE2(v36) ^ 0xCBu)) - (BYTE2(v36) ^ 0xCB | 0x6E));
  v70 = (v26 - 2040813859 - ((2 * v26) & 0xCB74DBA)) ^ v12;
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v36) ^ 0xAEu)) + (BYTE1(v36) ^ 0xAE) * (BYTE1(v36) ^ 0xAE)) ^ 0x9AD64DB2;
  LODWORD(v12) = (*(v50 + 4 * (v67 ^ 0xF9u)) - 1876621019 + (v67 ^ 0xF9) * (v67 ^ 0xF9)) ^ (*(v49 + 4 * ((v65 ^ 0xD75C335B) >> 16)) - (((v65 ^ 0xD75C335B) >> 16) | 0x6E)) ^ (-518995150 * v26) ^ (((2 * v69) ^ 0xCD29B26E) * (v69 ^ 0x6694D937));
  v71 = v26 ^ v69 ^ (v12 + 1721030967 - ((2 * v12) & 0xCD29B26E));
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v67) ^ 0xB3)) + (HIBYTE(v67) ^ 0xB3) * (HIBYTE(v67) ^ 0xB3)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 1075473482 - ((2 * v12) & 0x7FCB276C);
  LODWORD(v30) = *(v48 + 4 * (BYTE3(v36) ^ 0x97)) + (BYTE3(v36) ^ 0x97) * (BYTE3(v36) ^ 0x97);
  LODWORD(v30) = (v30 ^ 0x6E277929) - 1741916857 - 2 * ((v30 ^ 0x6E277929) & 0x182C7557 ^ v30 & 0x10);
  LODWORD(v26) = (*(v47 + 4 * ((v65 ^ 0x335B) >> 8)) + ((v65 ^ 0x335B) >> 8) * ((v65 ^ 0x335B) >> 8)) ^ 0x9AD64DB2;
  LODWORD(v36) = (*(v49 + 4 * (BYTE2(v66) ^ 0xD3u)) - (BYTE2(v66) ^ 0xD3 | 0x6E)) ^ (*(v50 + 4 * (v36 ^ 0x7Du)) - 1876621019 + (v36 ^ 0x7D) * (v36 ^ 0x7D)) ^ (-518995150 * v26) ^ (((2 * v12) ^ 0x7FCB276C) * (v12 ^ 0x3FE593B6));
  v72 = v12 ^ v26 ^ (v36 - 1075473482 - ((2 * v36) & 0x7FCB276C));
  LODWORD(v36) = (*(v47 + 4 * (BYTE1(v66) ^ 0xCEu)) + (BYTE1(v66) ^ 0xCE) * (BYTE1(v66) ^ 0xCE)) ^ 0x9AD64DB2;
  LODWORD(v12) = ((v65 ^ 0x5D) * (v65 ^ 0x5D) - 1876621019 + *(v50 + 4 * (v65 ^ 0x5Du))) ^ (*(v49 + 4 * (BYTE2(v67) ^ 0xF6u)) - (BYTE2(v67) ^ 0xF6 | 0x6E)) ^ v36 ^ (-518995150 * v36) ^ (((2 * v30) ^ 0x3058EA8E) * (v30 ^ 0x182C7547));
  LODWORD(v36) = (v12 - 1741916857 - ((2 * v12) & 0x3058EA8E)) ^ v30;
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v70) ^ 0x47)) + (HIBYTE(v70) ^ 0x47) * (HIBYTE(v70) ^ 0x47)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 33358383 - ((2 * v12) & 0xFC05FBA2);
  LODWORD(v13) = (*(v48 + 4 * (HIBYTE(v71) ^ 0xBB)) + (HIBYTE(v71) ^ 0xBB) * (HIBYTE(v71) ^ 0xBB)) ^ 0x6E277929;
  LODWORD(v13) = v13 - 2094950176 - ((2 * v13) & 0x64331C0);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v72) ^ 0xD5u)) + (BYTE1(v72) ^ 0xD5) * (BYTE1(v72) ^ 0xD5)) ^ 0x9AD64DB2;
  LODWORD(v9) = v26 ^ (*(v50 + 4 * (v71 ^ 0xEBu)) - 1876621019 + (v71 ^ 0xEB) * (v71 ^ 0xEB)) ^ (*(v49 + 4 * (BYTE2(v36) ^ 0x29u)) - (BYTE2(v36) ^ 0x29 | 0x6E)) ^ (-518995150 * v26) ^ (2 * (v12 ^ 0x7E02FDD1) * (v12 ^ 0x7E02FDD1) - 33358383 - ((4 * (v12 ^ 0x7E02FDD1) * (v12 ^ 0x7E02FDD1)) & 0xFC05FBA0)) ^ v12;
  LODWORD(v12) = (*(v47 + 4 * (BYTE1(v36) ^ 0xB5u)) + (BYTE1(v36) ^ 0xB5) * (BYTE1(v36) ^ 0xB5)) ^ 0x9AD64DB2;
  LODWORD(v12) = (*(v50 + 4 * (v72 ^ 0xC0u)) - 1876621019 + (v72 ^ 0xC0) * (v72 ^ 0xC0)) ^ (*(v49 + 4 * (BYTE2(v70) ^ 0x19u)) - (BYTE2(v70) ^ 0x19 | 0x6E)) ^ v12 ^ (-518995150 * v12) ^ (((2 * v13) ^ 0x64331C0) * (v13 ^ 0x32198E0));
  v73 = (v12 - 2094950176 - ((2 * v12) & 0x64331C0)) ^ v13;
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v72) ^ 0x6D)) + (HIBYTE(v72) ^ 0x6D) * (HIBYTE(v72) ^ 0x6D)) ^ 0x6E277929;
  LODWORD(v12) = v12 + 1286008741 - ((2 * v12) & 0x994DDF4A);
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v70) ^ 0x92u)) + (BYTE1(v70) ^ 0x92) * (BYTE1(v70) ^ 0x92)) ^ 0x9AD64DB2;
  LODWORD(v26) = (*(v49 + 4 * (BYTE2(v71) ^ 0xC6u)) - (BYTE2(v71) ^ 0xC6 | 0x6E)) ^ (*(v50 + 4 * (v36 ^ 0x1Au)) - 1876621019 + (v36 ^ 0x1A) * (v36 ^ 0x1A)) ^ (-518995150 * v13) ^ (((2 * v12) ^ 0x994DDF4A) * (v12 ^ 0x4CA6EFA5));
  v74 = v12 ^ v13 ^ (v26 + 1286008741 - ((2 * v26) & 0x994DDF4A));
  LODWORD(v12) = *(v48 + 4 * (BYTE3(v36) ^ 0x33)) + (BYTE3(v36) ^ 0x33) * (BYTE3(v36) ^ 0x33);
  LODWORD(v12) = (v12 ^ 0x6E277929) - 743579070 - 2 * ((v12 ^ 0x6E277929) & 0x53ADE252 ^ v12 & 0x10);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v71) ^ 0xB4u)) + (BYTE1(v71) ^ 0xB4) * (BYTE1(v71) ^ 0xB4)) ^ 0x9AD64DB2;
  LODWORD(v36) = ((v70 ^ 6) * (v70 ^ 6) - 1876621019 + *(v50 + 4 * (v70 ^ 6u))) ^ (*(v49 + 4 * (BYTE2(v72) ^ 0x31u)) - (BYTE2(v72) ^ 0x31 | 0x6E)) ^ (-518995150 * v26) ^ (((2 * v12) ^ 0xA75BC484) * (v12 ^ 0x53ADE242));
  LODWORD(v36) = v12 ^ v26 ^ (v36 - 743579070 - ((2 * v36) & 0xA75BC484));
  LODWORD(v12) = (*(v48 + 4 * (BYTE3(v9) ^ 0x2E)) + (BYTE3(v9) ^ 0x2E) * (BYTE3(v9) ^ 0x2E)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 1310521654 - ((2 * v12) & 0x63C60D94);
  LODWORD(v26) = (*(v47 + 4 * (BYTE1(v74) ^ 0x68u)) + (BYTE1(v74) ^ 0x68) * (BYTE1(v74) ^ 0x68)) ^ 0x9AD64DB2;
  LODWORD(v13) = (-518995150 * v26) ^ (*(v50 + 4 * (v73 ^ 0x73u)) - 1876621019 + (v73 ^ 0x73) * (v73 ^ 0x73)) ^ (*(v49 + 4 * (BYTE2(v36) ^ 0xCu)) - (BYTE2(v36) | 0x6E)) ^ (((2 * v12) ^ 0x63C60D94) * (v12 ^ 0x31E306CA));
  v75 = v12 ^ v26 ^ (v13 - 1310521654 - ((2 * v13) & 0x63C60D94));
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v73) ^ 0xEB)) + (HIBYTE(v73) ^ 0xEB) * (HIBYTE(v73) ^ 0xEB)) ^ 0x6E277929;
  LODWORD(v12) = v12 - ((2 * v12) & 0xCC8AD04A) - 431658971;
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v36) ^ 0x69u)) + (BYTE1(v36) ^ 0x69) * (BYTE1(v36) ^ 0x69)) ^ 0x9AD64DB2;
  v76 = (*(v50 + 4 * (v74 ^ 0xB5u)) - 1876621019 + (v74 ^ 0xB5) * (v74 ^ 0xB5)) ^ (*(v49 + 4 * (BYTE2(v9) ^ 0xC6u)) - (BYTE2(v9) ^ 0xC6 | 0x6E)) ^ v13 ^ v12 ^ (-518995150 * v13) ^ (((2 * v12) ^ 0xCC8AD04A) * (v12 ^ 0x66456825));
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v74) ^ 0xC1)) + (HIBYTE(v74) ^ 0xC1) * (HIBYTE(v74) ^ 0xC1)) ^ 0x6E277929;
  LODWORD(v12) = v12 + 205117399 - ((2 * v12) & 0x1873AFAE);
  LODWORD(v30) = *(v50 + 4 * (v36 ^ 0x44u)) - 1876621019 + (v36 ^ 0x44) * (v36 ^ 0x44);
  LODWORD(v36) = (*(v48 + 4 * (BYTE3(v36) ^ 0x49)) + (BYTE3(v36) ^ 0x49) * (BYTE3(v36) ^ 0x49)) ^ 0x6E277929;
  LODWORD(v36) = v36 - 1963922925 - ((2 * v36) & 0x15E1D426);
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v9) ^ 0x1Eu)) + (BYTE1(v9) ^ 0x1E) * (BYTE1(v9) ^ 0x1E)) ^ 0x9AD64DB2;
  LODWORD(v26) = (-518995150 * v13) ^ v13 ^ (*(v49 + 4 * (BYTE2(v73) ^ 0xCBu)) - (BYTE2(v73) ^ 0xCB | 0x6E)) ^ v30 ^ (((2 * v12) ^ 0x1873AFAE) * (v12 ^ 0xC39D7D7));
  v77 = (v26 + 205117399 - ((2 * v26) & 0x1873AFAE)) ^ v12;
  LODWORD(v12) = (*(v47 + 4 * (BYTE1(v73) ^ 0x2Fu)) + (BYTE1(v73) ^ 0x2F) * (BYTE1(v73) ^ 0x2F)) ^ 0x9AD64DB2;
  LODWORD(v12) = ((v9 ^ 0xF4) * (v9 ^ 0xF4) - 1876621019 + *(v50 + 4 * (v9 ^ 0xF4u))) ^ (*(v49 + 4 * (BYTE2(v74) ^ 0xE3u)) - (BYTE2(v74) ^ 0xE3 | 0x6E)) ^ v12 ^ (-518995150 * v12) ^ (((2 * v36) ^ 0x15E1D426) * (v36 ^ 0xAF0EA13));
  LODWORD(v36) = (v12 - 1963922925 - ((2 * v12) & 0x15E1D426)) ^ v36;
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v75) ^ 0x56)) + (HIBYTE(v75) ^ 0x56) * (HIBYTE(v75) ^ 0x56)) ^ 0x6E277929;
  LODWORD(v12) = v12 + 1226635062 - ((2 * v12) & 0x9239EE6C);
  LODWORD(v13) = *(v47 + 4 * (BYTE1(v77) ^ 0x4Eu)) + (BYTE1(v77) ^ 0x4E) * (BYTE1(v77) ^ 0x4E);
  LODWORD(v9) = *(v48 + 4 * (HIBYTE(v76) ^ 0x34)) + (HIBYTE(v76) ^ 0x34) * (HIBYTE(v76) ^ 0x34);
  v78 = (v9 ^ 0x6E277929) + 167399833 - 2 * ((v9 ^ 0x6E277929) & 0x9FA519F ^ v9 & 6);
  LODWORD(v26) = (-518995150 * (v13 ^ 0x9AD64DB2)) ^ (*(v50 + 4 * (v76 ^ 0x3Cu)) + (v76 ^ 0x3C) * (v76 ^ 0x3C) - 1876621019) ^ (*(v49 + 4 * (BYTE2(v36) ^ 0xFBu)) - (BYTE2(v36) ^ 0xFB | 0x6E)) ^ (((2 * v12) ^ 0x9239EE6C) * (v12 ^ 0x491CF736));
  LODWORD(v9) = v12 ^ v13 ^ (v26 + 1226635062 - ((2 * v26) & 0x9239EE6C));
  LODWORD(v12) = (*(v47 + 4 * (BYTE1(v36) ^ 8u)) + (BYTE1(v36) ^ 8) * (BYTE1(v36) ^ 8)) ^ 0x9AD64DB2;
  LODWORD(v12) = (*(v49 + 4 * (BYTE2(v75) ^ 0x47u)) - (BYTE2(v75) ^ 0x47 | 0x6E)) ^ (*(v50 + 4 * (v77 ^ 0x58u)) - 1876621019 + (v77 ^ 0x58) * (v77 ^ 0x58)) ^ v12 ^ (-518995150 * v12) ^ (((2 * v78) ^ 0x13F4A332) * (v78 ^ 0x9FA5199));
  v79 = (v12 + 167399833 - ((2 * v12) & 0x13F4A332)) ^ v78;
  LODWORD(v12) = (*(v48 + 4 * (HIBYTE(v77) ^ 0x3D)) + (HIBYTE(v77) ^ 0x3D) * (HIBYTE(v77) ^ 0x3D)) ^ 0x6E277929;
  LODWORD(v12) = v12 - 428739488 - ((2 * v12) & 0xCCE3E8C0);
  v80 = (*(v48 + 4 * (BYTE3(v36) ^ 0x9F)) + (BYTE3(v36) ^ 0x9F) * (BYTE3(v36) ^ 0x9F)) ^ 0x6E277929;
  v81 = v80 - 1228124822 - ((2 * v80) & 0x6D989AD4);
  LODWORD(v13) = (*(v47 + 4 * (BYTE1(v75) ^ 0x4Cu)) + (BYTE1(v75) ^ 0x4C) * (BYTE1(v75) ^ 0x4C)) ^ 0x9AD64DB2;
  LODWORD(v36) = (-518995150 * v13) ^ (*(v49 + 4 * ((v76 ^ 0xFE5C503A) >> 16)) - (((v76 ^ 0xFE5C503A) >> 16) | 0x6E)) ^ (*(v50 + 4 * (v36 ^ 0x6Fu)) - 1876621019 + (v36 ^ 0x6F) * (v36 ^ 0x6F)) ^ (((2 * v12) ^ 0xCCE3E8C0) * (v12 ^ 0x6671F460));
  v82 = v12 ^ v13 ^ (v36 - 428739488 - ((2 * v36) & 0xCCE3E8C0));
  LODWORD(v12) = *(v47 + 4 * ((v76 ^ 0x503A) >> 8)) + ((v76 ^ 0x503A) >> 8) * ((v76 ^ 0x503A) >> 8);
  LODWORD(v36) = (*(v49 + 4 * (BYTE2(v77) ^ 0x3Cu)) - (BYTE2(v77) ^ 0x3C | 0x6E)) ^ (*(v50 + 4 * (v75 ^ 0xEEu)) - 1876621019 + (v75 ^ 0xEE) * (v75 ^ 0xEE)) ^ (-518995150 * (v12 ^ 0x9AD64DB2)) ^ (((2 * v81) ^ 0x6D989AD4) * (v81 ^ 0x36CC4D6A));
  LODWORD(v36) = v81 ^ v12 ^ (v36 - 1228124822 - ((2 * v36) & 0x6D989AD4));
  LODWORD(v26) = *(v48 + 4 * ((v9 ^ 0x598241DA) >> 24)) + ((v9 ^ 0x598241DA) >> 24) * ((v9 ^ 0x598241DA) >> 24);
  LODWORD(v26) = (v26 ^ 0x6E277929) + 1937123240 - 2 * ((v26 ^ 0x6E277929) & 0x737627AE ^ v26 & 6);
  v83 = (*(v47 + 4 * (BYTE1(v82) ^ 0x7Fu)) + (BYTE1(v82) ^ 0x7F) * (BYTE1(v82) ^ 0x7F)) ^ 0x9AD64DB2;
  LODWORD(v13) = (-518995150 * v83) ^ (*(v50 + 4 * (v79 ^ 0x69u)) - 1876621019 + (v79 ^ 0x69) * (v79 ^ 0x69)) ^ (*(v49 + 4 * (BYTE2(v36) ^ 5u)) - (BYTE2(v36) ^ 5 | 0x6E)) ^ (((2 * v26) ^ 0xE6EC4F50) * (v26 ^ 0x737627A8));
  v84 = v26 ^ v83 ^ (v13 + 1937123240 - ((2 * v13) & 0xE6EC4F50));
  LODWORD(v26) = (*(v48 + 4 * (HIBYTE(v79) ^ 0x93)) + (HIBYTE(v79) ^ 0x93) * (HIBYTE(v79) ^ 0x93)) ^ 0x6E277929;
  LODWORD(v26) = v26 - 1227902568 - ((2 * v26) & 0x6D9F6330);
  v85 = (*(v48 + 4 * (HIBYTE(v82) ^ 0xF8)) + (HIBYTE(v82) ^ 0xF8) * (HIBYTE(v82) ^ 0xF8)) ^ 0x6E277929;
  v86 = v85 - 939601743 - ((2 * v85) & 0x8FFDA162);
  LODWORD(v33) = (*(v47 + 4 * (BYTE1(v36) ^ 2u)) + (BYTE1(v36) ^ 2) * (BYTE1(v36) ^ 2)) ^ 0x9AD64DB2;
  LODWORD(v12) = (*(v49 + 4 * ((v9 ^ 0x598241DA) >> 16)) - (((v9 ^ 0x598241DA) >> 16) | 0x6E)) ^ (*(v50 + 4 * (v82 ^ 0xDFu)) - 1876621019 + (v82 ^ 0xDF) * (v82 ^ 0xDF)) ^ v33 ^ (-518995150 * v33) ^ (((2 * v26) ^ 0x6D9F6330) * (v26 ^ 0x36CFB198));
  v87 = (v12 - 1227902568 - ((2 * v12) & 0x6D9F6330)) ^ v26;
  LODWORD(v13) = *(v47 + 4 * (BYTE1(v9) ^ 0xA4u)) + (BYTE1(v9) ^ 0xA4) * (BYTE1(v9) ^ 0xA4);
  LODWORD(v33) = (((v36 ^ 0xE59CE71D) >> 24) & 0xF | (16 * ((v36 >> 28) & 8 | ((v36 ^ 0xE59CE71D) >> 28) & 7))) ^ 0x4A;
  LODWORD(v33) = *(v48 + 4 * v33) + v33 * v33;
  LODWORD(v33) = (v33 ^ 0x6E277929) - 1227942595 - 2 * ((v33 ^ 0x6E277929) & 0x36CF153F ^ v33 & 2);
  LODWORD(v12) = (-518995150 * (v13 ^ 0x9AD64DB2)) ^ (*(v49 + 4 * (BYTE2(v79) ^ 0x4Au)) - (BYTE2(v79) | 0x6E)) ^ (*(v50 + 4 * (v36 ^ 0x1Bu)) - 1876621019 + (v36 ^ 0x1B) * (v36 ^ 0x1B)) ^ (((2 * v86) ^ 0x8FFDA162) * (v86 ^ 0x47FED0B1));
  LODWORD(v48) = v86 ^ v13 ^ (v12 - 939601743 - ((2 * v12) & 0x8FFDA162));
  LODWORD(v36) = *(v47 + 4 * (BYTE1(v79) ^ 0x7Du)) + (BYTE1(v79) ^ 0x7D) * (BYTE1(v79) ^ 0x7D);
  LODWORD(v12) = (*(v49 + 4 * (BYTE2(v82) ^ 0x31u)) - (BYTE2(v82) ^ 0x31 | 0x6E)) ^ (*(v50 + 4 * (v9 ^ 0xDCu)) - 1876621019 + (v9 ^ 0xDC) * (v9 ^ 0xDC)) ^ (-518995150 * (v36 ^ 0x9AD64DB2)) ^ (((2 * v33) ^ 0x6D9E2A7A) * (v33 ^ 0x36CF153D));
  LODWORD(v50) = v33 ^ v36 ^ (v12 - 1227942595 - ((2 * v12) & 0x6D9E2A7A));
  LODWORD(v33) = STACK[0x1760];
  v88 = *(&off_1002DD400 + LODWORD(STACK[0x1760]) - 3688) - 698520694;
  LODWORD(v36) = *&v88[4 * (BYTE2(v50) ^ 0xE7)] - 45020206 + (BYTE2(v50) ^ 0xE7) * (BYTE2(v50) ^ 0xE7);
  v89 = *(&off_1002DD400 + (LODWORD(STACK[0x1760]) ^ 0xE41)) - 441226671;
  v90 = *(&off_1002DD400 + LODWORD(STACK[0x1760]) - 3133) - 280653995;
  v91 = *(&off_1002DD400 + LODWORD(STACK[0x1760]) - 3427) - 977939219;
  LODWORD(v12) = (*&v90[4 * (v87 ^ 0xCE)] - (v87 ^ 0xCE | 0x3D)) ^ 0x34B32222;
  LODWORD(v13) = (*&v89[4 * (HIBYTE(v84) ^ 0x26)] + (HIBYTE(v84) ^ 0x26) * (HIBYTE(v84) ^ 0x26)) ^ LODWORD(STACK[0x18A0]) ^ v12 ^ (v12 >> 1) & 0x6E941F0B ^ (*&v91[4 * (BYTE1(v48) ^ 0x42)] + (BYTE1(v48) ^ 0x42) * (BYTE1(v48) ^ 0x42)) ^ v36 ^ (810201040 * v36);
  v92 = *(&off_1002DD400 + LODWORD(STACK[0x1760]) - 3254) - 1714417414;
  LOBYTE(v14) = v92[BYTE2(v13) ^ 0xBELL] - (BYTE2(v13) ^ 0xBE | 0xFB);
  v93 = STACK[0x2738] + STACK[0x1770];
  v94 = BYTE2(v84) ^ 0x1A;
  LODWORD(v12) = v50 ^ 0x57EF290D;
  LODWORD(v50) = BYTE1(v50) ^ 0x70;
  v95 = v48 ^ 0xCD;
  v96 = BYTE2(v87) ^ 0xCD;
  v97 = BYTE3(v12);
  v98 = v12;
  LOBYTE(v36) = v84;
  v99 = BYTE1(v84) ^ 0x14;
  LODWORD(v27) = HIBYTE(v87) ^ 0xD0;
  BYTE1(v26) = BYTE1(v87);
  LODWORD(v44) = *&v89[4 * v27];
  v100 = BYTE3(v48) ^ 0x71;
  LODWORD(STACK[0x1750]) = *&v89[4 * v100];
  LODWORD(v89) = *&v89[4 * BYTE3(v12)];
  LODWORD(v48) = BYTE2(v48) ^ 0x7E;
  v101 = *&v88[4 * v94];
  LODWORD(STACK[0x1740]) = *&v88[4 * v96];
  v102 = *&v88[4 * v48];
  LODWORD(v12) = v36 ^ 0x55;
  LODWORD(v88) = *&v90[4 * v95];
  LODWORD(STACK[0x1770]) = *&v90[4 * v98];
  LODWORD(v90) = *&v90[4 * v12];
  LODWORD(v26) = BYTE1(v26) ^ 0x99;
  LODWORD(v23) = *&v91[4 * v50];
  LODWORD(STACK[0x18A0]) = *&v91[4 * v99];
  LODWORD(v91) = *&v91[4 * v26];
  *(v93 - 0xD56D201C0FCD078) = (v14 + 25) ^ 0x67;
  v103 = v101 - 45020206 + v94 * v94;
  LODWORD(v27) = v44 + v27 * v27;
  LODWORD(v44) = (v88 - (v95 | 0x3D)) ^ 0x34B32222;
  LODWORD(v27) = v44 ^ LODWORD(STACK[0x18B0]) ^ v103 ^ v27;
  LODWORD(v88) = v27 ^ (v44 >> 1) & 0x6E941F0B ^ (810201040 * v103) ^ (v23 + v50 * v50);
  v104 = (v27 ^ (v44 >> 1) & 0xB ^ (-48 * v103) ^ (v23 + v50 * v50)) ^ 0xE1;
  v105 = *(&off_1002DD400 + (v33 ^ 0xF08)) - 1520341254;
  *(STACK[0x2738] + STACK[0x1790] - 0xD56D201C0FCD078) = (v105[v104] + v104 * v104) ^ (68 * ((v105[v104] + v104 * v104) ^ 0x27)) ^ 0x77;
  LOBYTE(v104) = v105[v13 ^ 0xEBLL] + (v13 ^ 0xEB) * (v13 ^ 0xEB);
  *(STACK[0x2738] + STACK[0x1830] - 0xD56D201C0FCD078) = v104 ^ (68 * (v104 ^ 0x27)) ^ 0xEF;
  *(STACK[0x2738] + STACK[0x1780] - 0xD56D201C0FCD078) = (v92[BYTE2(v88) ^ 0xEELL] - (BYTE2(v88) ^ 0xEE | 0xFB) + 25) ^ 0x89;
  LODWORD(v90) = (v90 - (v12 | 0x3D)) ^ LODWORD(STACK[0x18F0]) ^ (v102 - 45020206 + v48 * v48) ^ ((v90 - (v12 | 0x3D)) >> 1) & 0x6E941F0B ^ (v91 + v26 * v26) ^ (810201040 * (v102 - 45020206 + v48 * v48)) ^ (v89 + v97 * v97);
  *(STACK[0x2738] + STACK[0x17F0] - 0xD56D201C0FCD078) = (v92[BYTE2(v90) ^ 0xE4] - (BYTE2(v90) ^ 0xE4 | 0xFB) + 25) ^ 0x5E;
  v106 = *(&off_1002DD400 + v33 - 3310) - 1029144638;
  *(STACK[0x2738] + STACK[0x1850] - 0xD56D201C0FCD078) = (v106[BYTE1(v88) ^ 0x9DLL] + (BYTE1(v88) ^ 0x9D) * (BYTE1(v88) ^ 0x9D) - 78) ^ 0x25;
  LODWORD(v30) = (LODWORD(STACK[0x1750]) + v100 * v100) ^ LODWORD(STACK[0x1900]) ^ (LODWORD(STACK[0x18A0]) + v99 * v99) ^ (LODWORD(STACK[0x1740]) - 45020206 + v96 * v96) ^ (810201040 * (LODWORD(STACK[0x1740]) - 45020206 + v96 * v96)) ^ (LODWORD(STACK[0x1770]) - (v98 | 0x3D)) ^ 0x34B32222 ^ (((LODWORD(STACK[0x1770]) - (v98 | 0x3D)) ^ 0x34B32222u) >> 1) & 0x6E941F0B;
  *(STACK[0x2738] + STACK[0x1800] - 0xD56D201C0FCD078) = (v92[BYTE2(v30) ^ 0x99] - (BYTE2(v30) | 0xFB) + 25) ^ 0x77;
  LOBYTE(v104) = v105[v90 ^ 0xA0] + (v90 ^ 0xA0) * (v90 ^ 0xA0);
  *(STACK[0x2738] + STACK[0x1840] - 0xD56D201C0FCD078) = v104 ^ (68 * (v104 ^ 0x27)) ^ 0xA9;
  v107 = *(&off_1002DD400 + v33 - 3517) - 1103741483;
  LODWORD(v104) = v107[(v90 >> 24) ^ 0xEFLL] + ((v90 >> 24) ^ 0xEF) * ((v90 >> 24) ^ 0xEF);
  *(STACK[0x2738] + STACK[0x17E0] - 0xD56D201C0FCD078) = (v104 + 46) ^ 0x53 ^ (8 * v104 - 32);
  LODWORD(v104) = v107[BYTE3(v30) ^ 0x89] + (BYTE3(v30) ^ 0x89) * (BYTE3(v30) ^ 0x89);
  *(STACK[0x2738] + STACK[0x17A0] - 0xD56D201C0FCD078) = (v104 + 46) ^ 0x19 ^ (8 * v104 - 32);
  *(STACK[0x2738] + STACK[0x17D0] - 0xD56D201C0FCD078) = (v106[BYTE1(v90) ^ 0x2ELL] + (BYTE1(v90) ^ 0x2E) * (BYTE1(v90) ^ 0x2E) - 78) ^ 0x23;
  LOBYTE(v104) = v105[v30 ^ 0xD8] + (v30 ^ 0xD8) * (v30 ^ 0xD8);
  *(STACK[0x2738] + STACK[0x1880] - 0xD56D201C0FCD078) = v104 ^ (68 * (v104 ^ 0x27)) ^ 0x9D;
  *(STACK[0x2738] + STACK[0x1890] - 0xD56D201C0FCD078) = (v106[BYTE1(v30) ^ 0x13] + (BYTE1(v30) ^ 0x13) * (BYTE1(v30) ^ 0x13) - 78) ^ 0xA4;
  *(STACK[0x2738] + STACK[0x1860] - 0xD56D201C0FCD078) = (v106[BYTE1(v13) ^ 0xC8] + (BYTE1(v13) ^ 0xC8) * (BYTE1(v13) ^ 0xC8) - 78) ^ 0x24;
  LODWORD(v104) = v107[(v88 >> 24) ^ 0x8CLL] + ((v88 >> 24) ^ 0x8C) * ((v88 >> 24) ^ 0x8C);
  *(STACK[0x2738] + STACK[0x17B0] - 0xD56D201C0FCD078) = (v104 + 46) ^ (8 * v104 - 32) ^ 0x3F;
  LODWORD(v104) = v107[BYTE3(v13) ^ 0x98] + (BYTE3(v13) ^ 0x98) * (BYTE3(v13) ^ 0x98);
  v108 = STACK[0x1810];
  *(STACK[0x2738] + STACK[0x1810] - 0xD56D201C0FCD078) = (v104 + 46) ^ 0x2E ^ (8 * v104 - 32);
  return (*(STACK[0x1708] + 8 * ((49 * (((v108 - 662475412 - 2 * ((v108 + 16) & 0x58836D5E ^ STACK[0x1820] & 2)) ^ LODWORD(STACK[0x1410])) == -662475428)) ^ v33)))();
}

uint64_t sub_1000E49D4()
{
  v1 = STACK[0x1730];
  v2 = (LODWORD(STACK[0x1450]) << 16) | (LODWORD(STACK[0x14B0]) << 24) | LODWORD(STACK[0x15B0]) ^ 0x1B | (LODWORD(STACK[0x1430]) << 8);
  v3 = (LODWORD(STACK[0x1490]) << 16) | (LODWORD(STACK[0x1530]) << 24) | LODWORD(STACK[0x1710]) ^ 0x1B | (LODWORD(STACK[0x1470]) << 8);
  v4 = (LODWORD(STACK[0x1600]) ^ (21 * (LODWORD(STACK[0x1730]) ^ 0x9C))) ^ 0x88 | (LODWORD(STACK[0x14C0]) << 16) | (LODWORD(STACK[0x1460]) << 24) | (LODWORD(STACK[0x14A0]) << 8);
  LODWORD(STACK[0x1900]) = (LODWORD(STACK[0x1720]) ^ 0x1B | (LODWORD(STACK[0x1540]) << 8) | (LODWORD(STACK[0x1480]) << 24) | (LODWORD(STACK[0x1440]) << 16)) ^ 0xC0;
  LODWORD(STACK[0x18F0]) = v4 ^ 0x9E;
  LODWORD(STACK[0x18A0]) = v3 ^ 0x28;
  LODWORD(STACK[0x18B0]) = v2 ^ 0xF9;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_1000E4ACC()
{
  v1 = STACK[0x1400];
  v2 = (LODWORD(STACK[0x1400]) - 1816) | 0x710;
  LODWORD(STACK[0x18F0]) = *(*STACK[0x13B0] + (*STACK[0x13B8] & 0xF1C2C9C0));
  v3 = (LODWORD(STACK[0x13F0]) + v2 - 2140026072);
  v4 = *(v0 + 8 * v1);
  STACK[0x18B0] = STACK[0x2CD8];
  LODWORD(STACK[0x1900]) = v2 + 5411;
  return v4(4123901753, v3, 851157798, 3598400275, 1554802047, 3027625444);
}

uint64_t sub_1000E4BC0(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v6 = a2 < v5;
  if (v6 == a4 < v5)
  {
    v6 = a4 < a2;
  }

  return (*(STACK[0x1708] + 8 * (v4 ^ (8 * v6))))();
}

uint64_t sub_1000E4E5C()
{
  LODWORD(STACK[0x1830]) = v4;
  LODWORD(STACK[0x1810]) = v3;
  LODWORD(STACK[0x1860]) = v2;
  LODWORD(STACK[0x1880]) = v1;
  LODWORD(STACK[0x1890]) = v5;
  STACK[0x18F0] = 0;
  v6 = STACK[0x2738];
  v7 = (*(v6 - 0xD56D201C0FCD00DLL) ^ 0xFFFFFF8D) + (*(v6 - 0xD56D201C0FCCFABLL) ^ 0xFFFFFF8D) + (*(v6 - 0xD56D201C0FCCFDFLL) ^ 0xFFFFFF8D) + (*(STACK[0x2738] - 0xD56D201C0FCCFF8) ^ 0xFFFFFF8D);
  v8 = v7 + (~(2 * v7) | 0xFFFFFF95) - 74;
  v9 = v8 ^ 0xFFFFFFB5;
  v10 = (*(STACK[0x2738] - 0xD56D201C0FCCFEELL) ^ 0x8D) - (v8 ^ 0xB5);
  *(v6 - 0xD56D201C0FCCFEELL) = v10 - ((2 * v10) & 0x1A) - 115;
  v11 = v8 & 5;
  if (v11 != 1)
  {
    v9 = 0;
  }

  v12 = v9 + (*(STACK[0x2738] - 0xD56D201C0FCCFB2) ^ 0xFFFFFF8D);
  if (v11 == 4)
  {
    v13 = (v8 ^ 0x4A) + 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 + v13;
  if (v11 == 5)
  {
    v15 = v8 ^ 0x38;
  }

  else
  {
    v15 = -115;
  }

  v16 = v14 ^ v15;
  *(STACK[0x2738] - 0xD56D201C0FCCFB2) = v16;
  v17 = (v16 ^ v8 ^ 0x38) - ((2 * (v16 ^ v8) + 4) & 0xA) + 31;
  v18 = v17 & 5;
  v19 = v17 ^ 0xFFFFFF85;
  if (v18 != 1)
  {
    v19 = 0;
  }

  v20 = v19 + (*(STACK[0x2738] - 0xD56D201C0FCCFCBLL) ^ 0xFFFFFF8D);
  if (v18 == 4)
  {
    v21 = (v17 ^ 0x7A) + 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 + v21;
  v23 = v17 ^ 8;
  if (v18 == 5)
  {
    v24 = v23;
  }

  else
  {
    v24 = -115;
  }

  v25 = v22 ^ v24;
  *(STACK[0x2738] - 0xD56D201C0FCCFCBLL) = v25;
  v26 = *(STACK[0x2738] - 0xD56D201C0FCCFC2);
  HIDWORD(v27) = v26 ^ 0xD;
  LODWORD(v27) = (v26 ^ 0x80) << 24;
  v28 = v23 ^ v25;
  v29 = ((v27 >> 30) >> 2) | ((v27 >> 30) << 6);
  v30 = v28 + ((-54 - 2 * v28) | 0x25) + 8;
  v31 = v30 & 5;
  v32 = v30 ^ 0x6D;
  if (v31 != 1)
  {
    v32 = 0;
  }

  v33 = v32 + v29;
  if (v31 == 4)
  {
    v34 = (v30 ^ 0xFFFFFF92) + 1;
  }

  else
  {
    v34 = 0;
  }

  v35 = v33 + v34;
  v36 = v30 ^ 0xFFFFFFE0;
  if (v31 == 5)
  {
    v37 = v36;
  }

  else
  {
    v37 = -115;
  }

  v38 = v35 ^ v37;
  *(STACK[0x2738] - 0xD56D201C0FCCFC2) = v38;
  v39 = (v36 ^ v38) - ((2 * (v36 ^ v38) + 52) & 0x5E) - 55;
  v40 = v39 & 5;
  v41 = v39 ^ 0x2F;
  if (v40 != 1)
  {
    v41 = 0;
  }

  v42 = v41 + (*(STACK[0x2738] - 0xD56D201C0FCD010) ^ 0xFFFFFF8D);
  if (v40 == 4)
  {
    v43 = (v39 ^ 0xFFFFFFD0) + 1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v42 + v43;
  v45 = v39 ^ 0xFFFFFFA2;
  if (v40 == 5)
  {
    v46 = v45;
  }

  else
  {
    v46 = -115;
  }

  v47 = v44 ^ v46;
  v48 = v45 ^ v47;
  v49 = (2 * v48 + 20) & 0x18;
  v48 += 38;
  v50 = v48 - v49;
  *(STACK[0x2738] - 0xD56D201C0FCD010) = v47;
  v51 = v50 ^ 0xFFFFFF8C;
  v52 = v48 & 5;
  if (v52)
  {
    v51 = 0;
  }

  v53 = v51 + (*(STACK[0x2738] - 0xD56D201C0FCD055) ^ 0xFFFFFF8D);
  if (v52 == 5)
  {
    v54 = (v50 ^ 0x73) + 1;
  }

  else
  {
    v54 = 0;
  }

  v55 = v53 + v54;
  v56 = v50 ^ 1;
  if (v52 == 4)
  {
    v57 = v56;
  }

  else
  {
    v57 = -115;
  }

  v58 = v55 ^ v57;
  v59 = (v56 ^ v58) - ((2 * (v56 ^ v58) + 52) & 0x6E) - 47;
  *(STACK[0x2738] - 0xD56D201C0FCD055) = v58;
  v60 = v59 & 5;
  v61 = v59 ^ 0x37;
  if (v60 != 1)
  {
    v61 = 0;
  }

  v62 = v61 + (*(STACK[0x2738] - 0xD56D201C0FCCFC9) ^ 0xFFFFFF8D);
  if (v60 == 4)
  {
    v63 = (v59 ^ 0xFFFFFFC8) + 1;
  }

  else
  {
    v63 = 0;
  }

  v64 = v62 + v63;
  v65 = v59 ^ 0xFFFFFFBA;
  if (v60 == 5)
  {
    v66 = v65;
  }

  else
  {
    v66 = -115;
  }

  v67 = v64 ^ v66;
  v68 = (v65 ^ v67) - ((2 * (v65 ^ v67) + 52) & 0xFFFFFFEC) + 16;
  *(STACK[0x2738] - 0xD56D201C0FCCFC9) = v67;
  v69 = v68 ^ 0x76;
  v70 = v68 & 5;
  if ((v68 & 5) != 0)
  {
    v69 = 0;
  }

  v71 = v69 + (*(STACK[0x2738] - 0xD56D201C0FCD056) ^ 0xFFFFFF8D);
  if (v70 == 5)
  {
    v72 = (v68 ^ 0xFFFFFF89) + 1;
  }

  else
  {
    v72 = 0;
  }

  v73 = v71 + v72;
  v74 = v68 ^ 0xFFFFFFFB;
  if (v70 == 4)
  {
    v75 = v74;
  }

  else
  {
    v75 = -115;
  }

  v76 = v73 ^ v75;
  *(STACK[0x2738] - 0xD56D201C0FCD056) = v76;
  v77 = (v74 ^ v76) - ((2 * (v74 ^ v76) + 52) & 0x52) + 67;
  v78 = v77 ^ 0xFFFFFFA9;
  v79 = v77 & 5;
  if ((v77 & 5) != 0)
  {
    v80 = 0;
  }

  else
  {
    v80 = (v77 ^ 0x56) + 1;
  }

  if (v79 != 5)
  {
    v78 = 0;
  }

  v81 = v78 + (*(STACK[0x2738] - 0xD56D201C0FCCFCALL) ^ 0xFFFFFF8D) + v80;
  v82 = v77 ^ 0x24;
  if (v79 == 1)
  {
    v83 = v82;
  }

  else
  {
    v83 = -115;
  }

  v84 = v81 ^ v83;
  *(STACK[0x2738] - 0xD56D201C0FCCFCALL) = v84;
  v85 = (v82 ^ v84) - ((2 * (v82 ^ v84) + 52) & 0x2E) + 49;
  v86 = v85 & 5;
  v87 = v85 ^ 0xFFFFFF97;
  if (v86 != 1)
  {
    v87 = 0;
  }

  v88 = v87 + (*(STACK[0x2738] - 0xD56D201C0FCD03DLL) ^ 0xFFFFFF8D);
  if (v86 == 4)
  {
    v89 = (v85 ^ 0x68) + 1;
  }

  else
  {
    v89 = 0;
  }

  v90 = v88 + v89;
  v91 = v85 ^ 0x1A;
  if (v86 == 5)
  {
    v92 = v91;
  }

  else
  {
    v92 = -115;
  }

  v93 = v90 ^ v92;
  *(STACK[0x2738] - 0xD56D201C0FCD03DLL) = v93;
  v94 = (v91 ^ v93) - ((2 * (v91 ^ v93) + 52) & 0xFFFFFFB4) + 116;
  v95 = v94 ^ 0xFFFFFFDA;
  v96 = v94 ^ 0x57;
  v97 = v94 & 5;
  if ((v94 & 5) != 0)
  {
    v98 = -115;
  }

  else
  {
    v98 = v94 ^ 0x57;
  }

  if (v97 != 4)
  {
    v95 = 0;
  }

  v99 = v94 ^ 0x25;
  if (v97 == 1)
  {
    v100 = v99 + 1;
  }

  else
  {
    v100 = 0;
  }

  v101 = (v95 + (*(STACK[0x2738] - 0xD56D201C0FCD03BLL) ^ 0xFFFFFF8D) + v100) ^ v98;
  v102 = (v96 ^ v101) - 2 * (((v96 ^ v101) + 10) & 0xB ^ (v96 ^ v101) & 1) - 92;
  *(STACK[0x2738] - 0xD56D201C0FCD03BLL) = v101;
  v103 = v102 ^ 0xA;
  v104 = v102 ^ 0xFFFFFF87;
  v105 = v102 & 5;
  if ((v102 & 5) != 0)
  {
    v106 = -115;
  }

  else
  {
    v106 = v102 ^ 0xFFFFFF87;
  }

  if (v105 != 4)
  {
    v103 = 0;
  }

  v107 = v102 ^ 0xFFFFFFF5;
  if (v105 == 1)
  {
    v108 = v107 + 1;
  }

  else
  {
    v108 = 0;
  }

  v109 = (v103 + (*(STACK[0x2738] - 0xD56D201C0FCCFE9) ^ 0xFFFFFF8D) + v108) ^ v106;
  *(STACK[0x2738] - 0xD56D201C0FCCFE9) = v109;
  v110 = (2 * (v104 ^ v109) + 52) & 0xFFFFFF88;
  v111 = (v104 ^ v109) + 94;
  v112 = v111 - v110;
  v113 = v112 ^ 0xFFFFFFC4;
  v114 = v111 & 5;
  if (v114)
  {
    v113 = 0;
  }

  v115 = v113 + (*(STACK[0x2738] - 0xD56D201C0FCCFB1) ^ 0xFFFFFF8D);
  if (v114 == 5)
  {
    v116 = (v112 ^ 0x3B) + 1;
  }

  else
  {
    v116 = 0;
  }

  v117 = v115 + v116;
  v118 = v112 ^ 0x49;
  if (v114 == 4)
  {
    v119 = v118;
  }

  else
  {
    v119 = -115;
  }

  v120 = v117 ^ v119;
  *(STACK[0x2738] - 0xD56D201C0FCCFB1) = v120;
  v121 = (v118 ^ v120) + ~(2 * (((v118 ^ v120) + 26) & 0x35 ^ (v118 ^ v120) & 1)) - 49;
  v122 = v121 ^ 0x34;
  v123 = v121 & 5;
  if ((v121 & 5) != 0)
  {
    v122 = 0;
  }

  v124 = v122 + (*(STACK[0x2738] - 0xD56D201C0FCD060) ^ 0xFFFFFF8D);
  if (v123 == 5)
  {
    v125 = (v121 ^ 0xFFFFFFCB) + 1;
  }

  else
  {
    v125 = 0;
  }

  v126 = v124 + v125;
  v127 = v121 ^ 0xFFFFFFB9;
  if (v123 == 4)
  {
    v128 = v127;
  }

  else
  {
    v128 = -115;
  }

  v129 = v126 ^ v128;
  *(STACK[0x2738] - 0xD56D201C0FCD060) = v129;
  v130 = (v127 ^ v129) - ((2 * (v127 ^ v129) + 52) & 0xFFFFFF83) + 91;
  v131 = v130 ^ 0xFFFFFFC1;
  v132 = v130 & 5;
  if ((v130 & 5) != 0)
  {
    v133 = 0;
  }

  else
  {
    v133 = (v130 ^ 0x3E) + 1;
  }

  if (v132 != 5)
  {
    v131 = 0;
  }

  v134 = v131 + (*(STACK[0x2738] - 0xD56D201C0FCCFECLL) ^ 0xFFFFFF8D) + v133;
  v135 = v130 ^ 0x4C;
  if (v132 == 1)
  {
    v136 = v135;
  }

  else
  {
    v136 = -115;
  }

  v137 = v134 ^ v136;
  *(STACK[0x2738] - 0xD56D201C0FCCFECLL) = v137;
  v138 = v135 ^ v137;
  v139 = v138 - 50;
  v140 = v138 - 50 - ((2 * v138 + 52) & 0x58) - 8;
  v141 = v140 ^ 0x2C;
  v142 = v139 & 5;
  if (v142)
  {
    v141 = 0;
  }

  v143 = v141 + (*(STACK[0x2738] - 0xD56D201C0FCCFC1) ^ 0xFFFFFF8D);
  if (v142 == 5)
  {
    v144 = (v140 ^ 0xFFFFFFD3) + 1;
  }

  else
  {
    v144 = 0;
  }

  v145 = v143 + v144;
  v146 = v140 ^ 0xFFFFFFA1;
  if (v142 == 4)
  {
    v147 = v146;
  }

  else
  {
    v147 = -115;
  }

  v148 = v145 ^ v147;
  v149 = v146 ^ v148;
  v150 = (2 * v149 + 52) & 0xFFFFFFB8;
  v149 -= 10;
  *(STACK[0x2738] - 0xD56D201C0FCCFC1) = v148;
  v151 = v149 - v150;
  v152 = (v149 - v150) ^ 0x5C;
  v153 = v149 & 5;
  if (v153)
  {
    v152 = 0;
  }

  v154 = v152 + (*(STACK[0x2738] - 0xD56D201C0FCD068) ^ 0xFFFFFF8D);
  if (v153 == 5)
  {
    v155 = (v151 ^ 0xFFFFFFA3) + 1;
  }

  else
  {
    v155 = 0;
  }

  v156 = v154 + v155;
  v157 = v151 ^ 0xFFFFFFD1;
  if (v153 == 4)
  {
    v158 = v157;
  }

  else
  {
    v158 = -115;
  }

  v159 = v156 ^ v158;
  v160 = (v157 ^ v159) - ((2 * (v157 ^ v159) + 52) & 0xFFFFFFD2);
  v161 = v160 - 117;
  v162 = v160 - 125;
  *(STACK[0x2738] - 0xD56D201C0FCD068) = v159;
  v163 = v162 ^ 0xFFFFFFE9;
  v164 = v161 & 5;
  if (v164)
  {
    v165 = 0;
  }

  else
  {
    v165 = (v162 ^ 0x16) + 1;
  }

  if (v164 != 5)
  {
    v163 = 0;
  }

  v166 = v162 ^ 0x64;
  if (v164 == 1)
  {
    v167 = v166;
  }

  else
  {
    v167 = -115;
  }

  v168 = (v163 + (*(STACK[0x2738] - 0xD56D201C0FCD023) ^ 0xFFFFFF8D) + v165) ^ v167;
  v169 = v166 ^ v168;
  v170 = (2 * v169 + 52) & 0x38;
  v169 += 54;
  v171 = v169 - v170;
  *(STACK[0x2738] - 0xD56D201C0FCD023) = v168;
  v172 = v171 ^ 0xFFFFFF9C;
  v173 = v169 & 5;
  if (v173)
  {
    v172 = 0;
  }

  v174 = v172 + (*(STACK[0x2738] - 0xD56D201C0FCCFEBLL) ^ 0xFFFFFF8D);
  if (v173 == 5)
  {
    v175 = (v171 ^ 0x63) + 1;
  }

  else
  {
    v175 = 0;
  }

  v176 = v174 + v175;
  v177 = v171 ^ 0x11;
  if (v173 == 4)
  {
    v178 = v177;
  }

  else
  {
    v178 = -115;
  }

  v179 = v176 ^ v178;
  v180 = (v177 ^ v179) - ((2 * (v177 ^ v179) + 52) & 0xFFFFFFD4) - 124;
  *(STACK[0x2738] - 0xD56D201C0FCCFEBLL) = v179;
  v181 = v180 ^ 0xFFFFFFEA;
  v182 = v180 ^ 0x67;
  v183 = v180 & 5;
  if ((v180 & 5) != 0)
  {
    v184 = -115;
  }

  else
  {
    v184 = v180 ^ 0x67;
  }

  if (v183 != 4)
  {
    v181 = 0;
  }

  v185 = v180 ^ 0x15;
  if (v183 == 1)
  {
    v186 = v185 + 1;
  }

  else
  {
    v186 = 0;
  }

  v187 = (v181 + (*(STACK[0x2738] - 0xD56D201C0FCD003) ^ 0xFFFFFF8D) + v186) ^ v184;
  *(STACK[0x2738] - 0xD56D201C0FCD003) = v187;
  v188 = (v182 ^ v187) - ((2 * (v182 ^ v187) + 52) & 0xFFFFFFF7) + 21;
  v189 = v188 ^ 0x7B;
  v190 = v188 & 5;
  if ((v188 & 5) != 0)
  {
    v191 = 0;
  }

  else
  {
    v191 = (v188 ^ 0xFFFFFF84) + 1;
  }

  if (v190 != 5)
  {
    v189 = 0;
  }

  v192 = v189 + (*(STACK[0x2738] - 0xD56D201C0FCD043) ^ 0xFFFFFF8D) + v191;
  v193 = v188 ^ 0xFFFFFFF6;
  if (v190 == 1)
  {
    v194 = v193;
  }

  else
  {
    v194 = -115;
  }

  v195 = v192 ^ v194;
  v196 = (v193 ^ v195) - ((2 * (v193 ^ v195) + 52) & 0x4A);
  v197 = v196 - 65;
  *(STACK[0x2738] - 0xD56D201C0FCD043) = v195;
  v198 = (v196 - 65) ^ 0x25;
  v199 = (v196 - 65) ^ 0xFFFFFFA8;
  v200 = (64 - v196) & 5;
  if (v200)
  {
    v201 = -115;
  }

  else
  {
    v201 = v199;
  }

  if (v200 != 4)
  {
    v198 = 0;
  }

  v202 = v197 ^ 0xFFFFFFDA;
  if (v200 == 1)
  {
    v203 = v202 + 1;
  }

  else
  {
    v203 = 0;
  }

  v204 = (v198 + (*(STACK[0x2738] - 0xD56D201C0FCD007) ^ 0xFFFFFF8D) + v203) ^ v201;
  *(STACK[0x2738] - 0xD56D201C0FCD007) = v204;
  v205 = (v199 ^ v204) + 66;
  v206 = (v199 ^ v204) + 66 - ((2 * (v199 ^ v204) + 52) & 0x50);
  v207 = v206 ^ 0xFFFFFFA8;
  v208 = v206 ^ 0x25;
  v209 = v205 & 5;
  if (v209)
  {
    v210 = -115;
  }

  else
  {
    v210 = v206 ^ 0x25;
  }

  if (v209 != 4)
  {
    v207 = 0;
  }

  v211 = v206 ^ 0x57;
  if (v209 == 1)
  {
    v212 = v211 + 1;
  }

  else
  {
    v212 = 0;
  }

  v213 = (v207 + (*(STACK[0x2738] - 0xD56D201C0FCD06ALL) ^ 0xFFFFFF8D) + v212) ^ v210;
  *(STACK[0x2738] - 0xD56D201C0FCD06ALL) = v213;
  v214 = (v208 ^ v213) - ((2 * (v208 ^ v213) + 52) & 0xFFFFFFDA) + 7;
  v215 = v214 & 5;
  v216 = v214 ^ 0x6D;
  if (v215 != 1)
  {
    v216 = 0;
  }

  v217 = v216 + (*(STACK[0x2738] - 0xD56D201C0FCCFB4) ^ 0xFFFFFF8D);
  if (v215 == 4)
  {
    v218 = (v214 ^ 0xFFFFFF92) + 1;
  }

  else
  {
    v218 = 0;
  }

  v219 = v217 + v218;
  v220 = v214 ^ 0xFFFFFFE0;
  if (v215 == 5)
  {
    v221 = v220;
  }

  else
  {
    v221 = -115;
  }

  v222 = v219 ^ v221;
  v223 = v220 ^ v222;
  *(STACK[0x2738] - 0xD56D201C0FCCFB4) = v222;
  v224 = (2 * v223 + 52) & 0x50;
  v223 += 66;
  v225 = v223 - v224;
  v226 = v225 ^ 0xFFFFFFA8;
  v227 = v225 ^ 0x25;
  v228 = v223 & 5;
  if (v228)
  {
    v229 = -115;
  }

  else
  {
    v229 = v225 ^ 0x25;
  }

  if (v228 != 4)
  {
    v226 = 0;
  }

  v230 = v225 ^ 0x57;
  if (v228 == 1)
  {
    v231 = v230 + 1;
  }

  else
  {
    v231 = 0;
  }

  v232 = (v226 + (*(STACK[0x2738] - 0xD56D201C0FCD04CLL) ^ 0xFFFFFF8D) + v231) ^ v229;
  *(STACK[0x2738] - 0xD56D201C0FCD04CLL) = v232;
  v233 = (v227 ^ v232) - 66;
  v234 = v233 - ((2 * (v227 ^ v232) + 52) & 0x48);
  v235 = v234 ^ 0x24;
  v236 = v233 & 5;
  if (v236)
  {
    v235 = 0;
  }

  v237 = v235 + (*(STACK[0x2738] - 0xD56D201C0FCCFFALL) ^ 0xFFFFFF8D);
  if (v236 == 5)
  {
    v238 = (v234 ^ 0xFFFFFFDB) + 1;
  }

  else
  {
    v238 = 0;
  }

  v239 = v237 + v238;
  v240 = v234 ^ 0xFFFFFFA9;
  if (v236 == 4)
  {
    v241 = v240;
  }

  else
  {
    v241 = -115;
  }

  v242 = v239 ^ v241;
  v243 = v240 ^ v242;
  *(STACK[0x2738] - 0xD56D201C0FCCFFALL) = v242;
  v244 = (2 * v243 + 52) & 0xFFFFFFF0;
  v243 += 18;
  v245 = v243 - v244;
  v246 = v245 ^ 0x78;
  v247 = v245 ^ 0xFFFFFFF5;
  v248 = v243 & 5;
  if (v248)
  {
    v249 = -115;
  }

  else
  {
    v249 = v245 ^ 0xFFFFFFF5;
  }

  if (v248 != 4)
  {
    v246 = 0;
  }

  v250 = v245 ^ 0xFFFFFF87;
  if (v248 == 1)
  {
    v251 = v250 + 1;
  }

  else
  {
    v251 = 0;
  }

  v252 = (v246 + (*(STACK[0x2738] - 0xD56D201C0FCD017) ^ 0xFFFFFF8D) + v251) ^ v249;
  *(STACK[0x2738] - 0xD56D201C0FCD017) = v252;
  v253 = (v247 ^ v252) - ((2 * (v247 ^ v252) + 52) & 0xFFFFFF9F) + 105;
  v254 = v253 & 5;
  v255 = v253 ^ 0xFFFFFFCF;
  if (v254 != 1)
  {
    v255 = 0;
  }

  v256 = v255 + (*(STACK[0x2738] - 0xD56D201C0FCCFBCLL) ^ 0xFFFFFF8D);
  if (v254 == 4)
  {
    v257 = (v253 ^ 0x30) + 1;
  }

  else
  {
    v257 = 0;
  }

  v258 = v256 + v257;
  if (v254 == 5)
  {
    v259 = v253 ^ 0x42;
  }

  else
  {
    v259 = -115;
  }

  v260 = v258 ^ v259;
  *(STACK[0x2738] - 0xD56D201C0FCCFBCLL) = v260;
  v261 = (v260 ^ v253 ^ 0x42) + ~(2 * (((v260 ^ v253 ^ 0x42) + 26) & 0x5F ^ (v260 ^ v253) & 1)) + 121;
  v262 = v261 ^ 0xFFFFFFDE;
  v263 = v261 & 5;
  if ((v261 & 5) != 0)
  {
    v262 = 0;
  }

  v264 = v262 + (*(STACK[0x2738] - 0xD56D201C0FCCFE4) ^ 0xFFFFFF8D);
  if (v263 == 5)
  {
    v265 = (v261 ^ 0x21) + 1;
  }

  else
  {
    v265 = 0;
  }

  v266 = v264 + v265;
  v267 = v261 ^ 0x53;
  if (v263 == 4)
  {
    v268 = v267;
  }

  else
  {
    v268 = -115;
  }

  v269 = v266 ^ v268;
  v270 = (v267 ^ v269) - ((2 * (v267 ^ v269) + 52) & 0x6A);
  v271 = v270 - 1;
  v272 = v270 - 49;
  *(STACK[0x2738] - 0xD56D201C0FCCFE4) = v269;
  v273 = v271 & 5;
  v274 = v272 ^ 0x35;
  if (v273 != 1)
  {
    v274 = 0;
  }

  v275 = v274 + (*(STACK[0x2738] - 0xD56D201C0FCCFA9) ^ 0xFFFFFF8D);
  if (v273 == 4)
  {
    v276 = (v272 ^ 0xFFFFFFCA) + 1;
  }

  else
  {
    v276 = 0;
  }

  v277 = v275 + v276;
  v278 = v272 ^ 0xFFFFFFB8;
  if (v273 == 5)
  {
    v279 = v278;
  }

  else
  {
    v279 = -115;
  }

  v280 = v277 ^ v279;
  *(STACK[0x2738] - 0xD56D201C0FCCFA9) = v280;
  v281 = (v278 ^ v280) - ((2 * (v278 ^ v280) + 52) & 0xFFFFFF84) - 36;
  v282 = v281 ^ 0x42;
  v283 = v281 ^ 0xFFFFFFCF;
  v284 = v281 & 5;
  if ((v281 & 5) != 0)
  {
    v285 = -115;
  }

  else
  {
    v285 = v281 ^ 0xFFFFFFCF;
  }

  if (v284 != 4)
  {
    v282 = 0;
  }

  v286 = v281 ^ 0xFFFFFFBD;
  if (v284 == 1)
  {
    v287 = v286 + 1;
  }

  else
  {
    v287 = 0;
  }

  v288 = (v282 + (*(STACK[0x2738] - 0xD56D201C0FCCFCFLL) ^ 0xFFFFFF8D) + v287) ^ v285;
  *(STACK[0x2738] - 0xD56D201C0FCCFCFLL) = v288;
  v289 = (v283 ^ v288) - ((2 * (v283 ^ v288) + 52) & 0x3E) + 57;
  v290 = v289 & 5;
  v291 = v289 ^ 0xFFFFFF9F;
  if (v290 != 1)
  {
    v291 = 0;
  }

  v292 = v291 + (*(STACK[0x2738] - 0xD56D201C0FCD064) ^ 0xFFFFFF8D);
  if (v290 == 4)
  {
    v293 = (v289 ^ 0x60) + 1;
  }

  else
  {
    v293 = 0;
  }

  v294 = v292 + v293;
  v295 = v289 ^ 0x12;
  if (v290 == 5)
  {
    v296 = v295;
  }

  else
  {
    v296 = -115;
  }

  v297 = v294 ^ v296;
  v298 = (v295 ^ v297) - ((2 * (v295 ^ v297) + 52) & 0xFFFFFF8F) - 31;
  v299 = v298 & 5;
  *(STACK[0x2738] - 0xD56D201C0FCD064) = v297;
  v300 = v298 ^ 0x47;
  if (v299 != 1)
  {
    v300 = 0;
  }

  v301 = v300 + (*(STACK[0x2738] - 0xD56D201C0FCD006) ^ 0xFFFFFF8D);
  if (v299 == 4)
  {
    v302 = (v298 ^ 0xFFFFFFB8) + 1;
  }

  else
  {
    v302 = 0;
  }

  v303 = v301 + v302;
  v304 = v298 ^ 0xFFFFFFCA;
  if (v299 == 5)
  {
    v305 = v304;
  }

  else
  {
    v305 = -115;
  }

  v306 = v303 ^ v305;
  *(STACK[0x2738] - 0xD56D201C0FCD006) = v306;
  v307 = (v304 ^ v306) - ((2 * (v304 ^ v306) + 52) & 0x44) + 60;
  v308 = v307 ^ 0xFFFFFFA2;
  v309 = v307 ^ 0x2F;
  v310 = v307 & 5;
  if ((v307 & 5) != 0)
  {
    v311 = -115;
  }

  else
  {
    v311 = v307 ^ 0x2F;
  }

  if (v310 != 4)
  {
    v308 = 0;
  }

  v312 = v307 ^ 0x5D;
  if (v310 == 1)
  {
    v313 = v312 + 1;
  }

  else
  {
    v313 = 0;
  }

  v314 = (v308 + (*(STACK[0x2738] - 0xD56D201C0FCD013) ^ 0xFFFFFF8D) + v313) ^ v311;
  *(STACK[0x2738] - 0xD56D201C0FCD013) = v314;
  v315 = (v309 ^ v314) + ((10 - 2 * (v309 ^ v314)) | 0xFFFFFFE3) + 41;
  v316 = v315 ^ 0xFFFFFF8E;
  v317 = v315 & 5;
  if ((v315 & 5) != 0)
  {
    v316 = 0;
  }

  v318 = v316 + (*(STACK[0x2738] - 0xD56D201C0FCCFE5) ^ 0xFFFFFF8D);
  if (v317 == 5)
  {
    v319 = (v315 ^ 0x71) + 1;
  }

  else
  {
    v319 = 0;
  }

  v320 = v318 + v319;
  v321 = v315 ^ 3;
  if (v317 != 4)
  {
    v321 = -115;
  }

  v322 = v320 ^ v321;
  v323 = (v322 ^ v315 ^ 0xFFFFFF83) - ((((2 * (v322 ^ v315)) ^ 4) + 52) & 0xFFFFFFC0) - 6;
  *(STACK[0x2738] - 0xD56D201C0FCCFE5) = v322;
  v324 = *(STACK[0x2738] - 0xD56D201C0FCD00ELL);
  v325 = v323 ^ 0xFFFFFFE0;
  v326 = v323 ^ 0x6D;
  v327 = v323 & 5;
  if ((v323 & 5) != 0)
  {
    v328 = -115;
  }

  else
  {
    v328 = v323 ^ 0x6D;
  }

  if (v327 != 4)
  {
    v325 = 0;
  }

  v329 = v325 + (v324 ^ 0xFFFFFF8D);
  v330 = v323 ^ 0x1F;
  if (v327 == 1)
  {
    v331 = v330 + 1;
  }

  else
  {
    v331 = 0;
  }

  v332 = (v329 + v331) ^ v328;
  *(STACK[0x2738] - 0xD56D201C0FCD00ELL) = v332;
  v333 = (v326 ^ v332) - ((2 * (v326 ^ v332) + 52) & 0x62) - 53;
  v334 = v333 ^ 0x31;
  v335 = v333 & 5;
  if ((v333 & 5) != 0)
  {
    v336 = 0;
  }

  else
  {
    v336 = (v333 ^ 0xFFFFFFCE) + 1;
  }

  if (v335 != 5)
  {
    v334 = 0;
  }

  v337 = v334 + (*(STACK[0x2738] - 0xD56D201C0FCD030) ^ 0xFFFFFF8D) + v336;
  v338 = v333 ^ 0xFFFFFFBC;
  if (v335 == 1)
  {
    v339 = v338;
  }

  else
  {
    v339 = -115;
  }

  v340 = v337 ^ v339;
  *(STACK[0x2738] - 0xD56D201C0FCD030) = v340;
  v341 = v338 ^ v340;
  v342 = (2 * v341 + 52) & 0xFFFFFFF8;
  v341 += 22;
  v343 = v341 - v342;
  v344 = v343 ^ 0x7C;
  v345 = v341 & 5;
  if (v345)
  {
    v344 = 0;
  }

  v346 = v344 + (*(STACK[0x2738] - 0xD56D201C0FCCFD1) ^ 0xFFFFFF8D);
  if (v345 == 5)
  {
    v347 = (v343 ^ 0xFFFFFF83) + 1;
  }

  else
  {
    v347 = 0;
  }

  v348 = v346 + v347;
  v349 = v343 ^ 0xFFFFFFF1;
  if (v345 == 4)
  {
    v350 = v349;
  }

  else
  {
    v350 = -115;
  }

  v351 = v348 ^ v350;
  *(STACK[0x2738] - 0xD56D201C0FCCFD1) = v351;
  v352 = (v349 ^ v351) - ((2 * (v349 ^ v351) + 52) & 0x56) - 59;
  v353 = v352 ^ 0x2B;
  v354 = v352 & 5;
  if ((v352 & 5) != 0)
  {
    v355 = 0;
  }

  else
  {
    v355 = (v352 ^ 0xFFFFFFD4) + 1;
  }

  if (v354 != 5)
  {
    v353 = 0;
  }

  v356 = v353 + (*(STACK[0x2738] - 0xD56D201C0FCD02ELL) ^ 0xFFFFFF8D) + v355;
  v357 = v352 ^ 0xFFFFFFA6;
  if (v354 == 1)
  {
    v358 = v357;
  }

  else
  {
    v358 = -115;
  }

  v359 = v356 ^ v358;
  *(STACK[0x2738] - 0xD56D201C0FCD02ELL) = v359;
  v360 = (v357 ^ v359) - ((2 * (v357 ^ v359) + 52) & 0xFFFFFF9C) - 24;
  v361 = v360 ^ 0x4E;
  v362 = v360 & 5;
  if ((v360 & 5) != 0)
  {
    v361 = 0;
  }

  v363 = v361 + (*(STACK[0x2738] - 0xD56D201C0FCCFAFLL) ^ 0xFFFFFF8D);
  if (v362 == 5)
  {
    v364 = (v360 ^ 0xFFFFFFB1) + 1;
  }

  else
  {
    v364 = 0;
  }

  v365 = v363 + v364;
  if (v362 == 4)
  {
    v366 = v360;
  }

  else
  {
    v366 = 78;
  }

  v367 = (v365 - ((2 * v365) & 0xFFFFFF9C) + 78) ^ v366;
  v368 = (v367 - ((2 * v367) & 0xFFFFFF9C) + 78) ^ v360;
  *(STACK[0x2738] - 0xD56D201C0FCCFAFLL) = v324;
  *(STACK[0x2738] - 0xD56D201C0FCCFAFLL) ^= v324 ^ (v367 - ((2 * v367) & 0x1A) - 115);
  v369 = v368 - 4 * (v368 >> 1) + 100;
  v370 = v369 ^ 0xFFFFFFFE;
  v371 = v369 & 5;
  if ((v369 & 5) != 0)
  {
    v370 = 0;
  }

  v372 = v370 + (*(STACK[0x2738] - 0xD56D201C0FCCFD8) ^ 0xFFFFFF8D);
  if (v371 == 5)
  {
    v373 = (v369 ^ 1) + 1;
  }

  else
  {
    v373 = 0;
  }

  v374 = v372 + v373;
  v375 = v369 ^ 0x73;
  if (v371 != 4)
  {
    v375 = -115;
  }

  v376 = v374 ^ v375;
  v377 = v369 ^ 0xFFFFFF8C ^ v376;
  *(STACK[0x2738] - 0xD56D201C0FCCFD8) = v376;
  v378 = v377 + 102;
  v379 = (v377 + 102) & 5;
  v380 = -103 - v377;
  if (v379 == 1)
  {
    v381 = -103 - v377;
  }

  else
  {
    v381 = 0;
  }

  v382 = v377 + 103;
  if (v379 != 4)
  {
    v382 = 0;
  }

  v383 = v381 + (*(STACK[0x2738] - 0xD56D201C0FCCFD5) ^ 0xFFFFFF8D) + v382;
  v384 = v378 ^ 0x72;
  if (v379 != 5)
  {
    v384 = -115;
  }

  v385 = v383 ^ v384;
  v386 = (v380 ^ 0xFFFFFF8D ^ v385) - ((2 * (v380 ^ 0xFFFFFF8D ^ v385) + 52) & 0xFFFFFFAE) + 113;
  *(STACK[0x2738] - 0xD56D201C0FCCFD5) = v385;
  v387 = v386 & 5;
  v388 = v386 ^ 0xFFFFFFD7;
  if (v387 != 1)
  {
    v388 = 0;
  }

  v389 = v388 + (*(STACK[0x2738] - 0xD56D201C0FCD01ELL) ^ 0xFFFFFF8D);
  if (v387 == 4)
  {
    v390 = (v386 ^ 0x28) + 1;
  }

  else
  {
    v390 = 0;
  }

  v391 = v389 + v390;
  v392 = v386 ^ 0x5A;
  if (v387 == 5)
  {
    v393 = v392;
  }

  else
  {
    v393 = -115;
  }

  v394 = v391 ^ v393;
  *(STACK[0x2738] - 0xD56D201C0FCD01ELL) = v394;
  v395 = (v392 ^ v394) - ((2 * (v392 ^ v394) + 52) & 0x24) - 84;
  v396 = v395 ^ 0x12;
  v397 = v395 ^ 0xFFFFFF9F;
  v398 = v395 & 5;
  if ((v395 & 5) != 0)
  {
    v399 = -115;
  }

  else
  {
    v399 = v395 ^ 0xFFFFFF9F;
  }

  if (v398 != 4)
  {
    v396 = 0;
  }

  v400 = v395 ^ 0xFFFFFFED;
  if (v398 == 1)
  {
    v401 = v400 + 1;
  }

  else
  {
    v401 = 0;
  }

  v402 = (v396 + (*(STACK[0x2738] - 0xD56D201C0FCCFD6) ^ 0xFFFFFF8D) + v401) ^ v399;
  v403 = (v397 ^ v402) - ((2 * (v397 ^ v402) + 20) & 0x1E) + 41;
  v404 = v403 & 5;
  *(STACK[0x2738] - 0xD56D201C0FCCFD6) = v402;
  v405 = v403 ^ 0xFFFFFF8F;
  if (v404 != 1)
  {
    v405 = 0;
  }

  v406 = v405 + (*(STACK[0x2738] - 0xD56D201C0FCCFCDLL) ^ 0xFFFFFF8D);
  if (v404 == 4)
  {
    v407 = (v403 ^ 0x70) + 1;
  }

  else
  {
    v407 = 0;
  }

  v408 = v406 + v407;
  if (v404 == 5)
  {
    v409 = v403 ^ 2;
  }

  else
  {
    v409 = -115;
  }

  v410 = v408 ^ v409;
  *(STACK[0x2738] - 0xD56D201C0FCCFCDLL) = v410;
  v411 = (v410 ^ v403 ^ 0xFFFFFF82) - ((((2 * (v410 ^ v403)) ^ 4) + 52) & 0xFFFFFFCC);
  v412 = v411 ^ 0xFFFFFFE6;
  v413 = v411 & 5;
  if ((v411 & 5) != 0)
  {
    v412 = 0;
  }

  v414 = v412 + (*(STACK[0x2738] - 0xD56D201C0FCD073) ^ 0xFFFFFF8D);
  if (v413 == 5)
  {
    v415 = (v411 ^ 0x19) + 1;
  }

  else
  {
    v415 = 0;
  }

  v416 = v414 + v415;
  v417 = v411 ^ 0x6B;
  if (v413 == 4)
  {
    v418 = v417;
  }

  else
  {
    v418 = -115;
  }

  v419 = v416 ^ v418;
  *(STACK[0x2738] - 0xD56D201C0FCD073) = v419;
  v420 = (v417 ^ v419) - ((2 * (v417 ^ v419) + 52) & 0xFFFFFFC3) + 123;
  v421 = v420 ^ 0xFFFFFFE1;
  v422 = v420 & 5;
  if ((v420 & 5) != 0)
  {
    v423 = 0;
  }

  else
  {
    v423 = (v420 ^ 0x1E) + 1;
  }

  if (v422 != 5)
  {
    v421 = 0;
  }

  v424 = v421 + (*(STACK[0x2738] - 0xD56D201C0FCD069) ^ 0xFFFFFF8D) + v423;
  v425 = v420 ^ 0x6C;
  if (v422 == 1)
  {
    v426 = v425;
  }

  else
  {
    v426 = -115;
  }

  v427 = v424 ^ v426;
  v428 = (v425 ^ v427) - ((2 * (v425 ^ v427) + 52) & 0xFFFFFFD4) - 124;
  *(STACK[0x2738] - 0xD56D201C0FCD069) = v427;
  v429 = v428 ^ 0xFFFFFFEA;
  v430 = v428 ^ 0x67;
  v431 = v428 & 5;
  if ((v428 & 5) != 0)
  {
    v432 = -115;
  }

  else
  {
    v432 = v428 ^ 0x67;
  }

  if (v431 != 4)
  {
    v429 = 0;
  }

  v433 = v428 ^ 0x15;
  if (v431 == 1)
  {
    v434 = v433 + 1;
  }

  else
  {
    v434 = 0;
  }

  v435 = (v429 + (*(STACK[0x2738] - 0xD56D201C0FCD028) ^ 0xFFFFFF8D) + v434) ^ v432;
  *(STACK[0x2738] - 0xD56D201C0FCD028) = v435;
  v436 = (v430 ^ v435) - ((2 * (v430 ^ v435) + 4) & 0xC) - 96;
  v437 = v436 ^ 6;
  v438 = v436 & 5;
  if ((v436 & 5) != 0)
  {
    v437 = 0;
  }

  v439 = v437 + (*(STACK[0x2738] - 0xD56D201C0FCD01FLL) ^ 0xFFFFFF8D);
  if (v438 == 5)
  {
    v440 = (v436 ^ 0xFFFFFFF9) + 1;
  }

  else
  {
    v440 = 0;
  }

  v441 = v439 + v440;
  v442 = v436 ^ 0xFFFFFF8B;
  if (v438 == 4)
  {
    v443 = v442;
  }

  else
  {
    v443 = -115;
  }

  v444 = v441 ^ v443;
  *(STACK[0x2738] - 0xD56D201C0FCD01FLL) = v444;
  v445 = (v442 ^ v444) - ((2 * (v442 ^ v444) + 52) & 0xFFFFFFEA) + 15;
  v446 = v445 & 5;
  v447 = v445 ^ 0x75;
  if (v446 != 1)
  {
    v447 = 0;
  }

  v448 = v447 + (*(STACK[0x2738] - 0xD56D201C0FCCFB5) ^ 0xFFFFFF8D);
  if (v446 == 4)
  {
    v449 = (v445 ^ 0xFFFFFF8A) + 1;
  }

  else
  {
    v449 = 0;
  }

  v450 = v448 + v449;
  v451 = v445 ^ 0xFFFFFFF8;
  if (v446 == 5)
  {
    v452 = v451;
  }

  else
  {
    v452 = -115;
  }

  v453 = v450 ^ v452;
  *(STACK[0x2738] - 0xD56D201C0FCCFB5) = v453;
  v454 = (v451 ^ v453) - ((2 * (v451 ^ v453) + 52) & 0xFFFFFFAE) + 113;
  v455 = v454 & 5;
  v456 = v454 ^ 0xFFFFFFD7;
  if (v455 != 1)
  {
    v456 = 0;
  }

  v457 = v456 + (*(STACK[0x2738] - 0xD56D201C0FCD072) ^ 0xFFFFFF8D);
  if (v455 == 4)
  {
    v458 = (v454 ^ 0x28) + 1;
  }

  else
  {
    v458 = 0;
  }

  v459 = v457 + v458;
  v460 = v454 ^ 0x5A;
  if (v455 == 5)
  {
    v461 = v460;
  }

  else
  {
    v461 = -115;
  }

  v462 = v459 ^ v461;
  *(STACK[0x2738] - 0xD56D201C0FCD072) = v462;
  v463 = (v460 ^ v462) - ((2 * (v460 ^ v462) + 52) & 0xFFFFFFB4) - 12;
  v464 = v463 ^ 0x5A;
  v465 = v463 ^ 0xFFFFFFD7;
  v466 = v463 & 5;
  if ((v463 & 5) != 0)
  {
    v467 = -115;
  }

  else
  {
    v467 = v463 ^ 0xFFFFFFD7;
  }

  if (v466 != 4)
  {
    v464 = 0;
  }

  v468 = v463 ^ 0xFFFFFFA5;
  if (v466 == 1)
  {
    v469 = v468 + 1;
  }

  else
  {
    v469 = 0;
  }

  v470 = (v464 + (*(STACK[0x2738] - 0xD56D201C0FCD034) ^ 0xFFFFFF8D) + v469) ^ v467;
  *(STACK[0x2738] - 0xD56D201C0FCD034) = v470;
  v471 = v465 ^ v470;
  v472 = (2 * v471 + 20) & 0x10;
  v471 += 34;
  v473 = v471 - v472;
  v474 = v473 ^ 0xFFFFFF88;
  v475 = v473 ^ 5;
  v476 = v471 & 5;
  if (v476)
  {
    v477 = -115;
  }

  else
  {
    v477 = v473 ^ 5;
  }

  if (v476 != 4)
  {
    v474 = 0;
  }

  v478 = v473 ^ 0x77;
  if (v476 == 1)
  {
    v479 = v478 + 1;
  }

  else
  {
    v479 = 0;
  }

  v480 = (v474 + (*(STACK[0x2738] - 0xD56D201C0FCCFFBLL) ^ 0xFFFFFF8D) + v479) ^ v477;
  *(STACK[0x2738] - 0xD56D201C0FCCFFBLL) = v480;
  v481 = (v475 ^ v480) - ((2 * (v475 ^ v480) + 52) & 0xFFFFFFE3);
  v482 = v481 - 109;
  v483 = v481 - 117;
  v484 = v483 ^ 0xFFFFFFF1;
  v485 = v482 & 5;
  if (v485)
  {
    v486 = 0;
  }

  else
  {
    v486 = (v483 ^ 0xE) + 1;
  }

  if (v485 != 5)
  {
    v484 = 0;
  }

  v487 = v483 ^ 0x7C;
  if (v485 == 1)
  {
    v488 = v487;
  }

  else
  {
    v488 = -115;
  }

  v489 = (v484 + (*(STACK[0x2738] - 0xD56D201C0FCD059) ^ 0xFFFFFF8D) + v486) ^ v488;
  v490 = v487 ^ v489;
  *(STACK[0x2738] - 0xD56D201C0FCD059) = v489;
  v491 = (2 * v490 + 52) & 0xFFFFFFB0;
  v490 -= 14;
  v492 = v490 - v491;
  v493 = v492 ^ 0x58;
  v494 = v492 ^ 0xFFFFFFD5;
  v495 = v490 & 5;
  if (v495)
  {
    v496 = -115;
  }

  else
  {
    v496 = v492 ^ 0xFFFFFFD5;
  }

  if (v495 != 4)
  {
    v493 = 0;
  }

  v497 = v492 ^ 0xFFFFFFA7;
  if (v495 == 1)
  {
    v498 = v497 + 1;
  }

  else
  {
    v498 = 0;
  }

  v499 = (v493 + (*(STACK[0x2738] - 0xD56D201C0FCD035) ^ 0xFFFFFF8D) + v498) ^ v496;
  *(STACK[0x2738] - 0xD56D201C0FCD035) = v499;
  v500 = (v494 ^ v499) - ((2 * (v494 ^ v499) + 52) & 0xFFFFFFEF) - 111;
  v501 = v500 & 5;
  v502 = v500 ^ 0xFFFFFFF7;
  if (v501 != 1)
  {
    v502 = 0;
  }

  v503 = v502 + (*(STACK[0x2738] - 0xD56D201C0FCCFCELL) ^ 0xFFFFFF8D);
  if (v501 == 4)
  {
    v504 = (v500 ^ 8) + 1;
  }

  else
  {
    v504 = 0;
  }

  v505 = v503 + v504;
  v506 = v500 ^ 0x7A;
  if (v501 == 5)
  {
    v507 = v506;
  }

  else
  {
    v507 = -115;
  }

  v508 = v505 ^ v507;
  *(STACK[0x2738] - 0xD56D201C0FCCFCELL) = v508;
  v509 = (v506 ^ v508) - ((2 * (v506 ^ v508) + 52) & 0x36) + 53;
  v510 = v509 ^ 0xFFFFFF9B;
  v511 = v509 & 5;
  if ((v509 & 5) != 0)
  {
    v512 = 0;
  }

  else
  {
    v512 = (v509 ^ 0x64) + 1;
  }

  if (v511 != 5)
  {
    v510 = 0;
  }

  v513 = v510 + (*(STACK[0x2738] - 0xD56D201C0FCCFBALL) ^ 0xFFFFFF8D) + v512;
  v514 = v509 ^ 0x16;
  if (v511 == 1)
  {
    v515 = v514;
  }

  else
  {
    v515 = -115;
  }

  v516 = v513 ^ v515;
  v517 = (v514 ^ v516) - ((2 * (v514 ^ v516) + 52) & 0xFFFFFF9A) - 25;
  v518 = v517 & 5;
  *(STACK[0x2738] - 0xD56D201C0FCCFBALL) = v516;
  v519 = v517 ^ 0x4D;
  if (v518 != 1)
  {
    v519 = 0;
  }

  v520 = v519 + (*(STACK[0x2738] - 0xD56D201C0FCD04DLL) ^ 0xFFFFFF8D);
  if (v518 == 4)
  {
    v521 = (v517 ^ 0xFFFFFFB2) + 1;
  }

  else
  {
    v521 = 0;
  }

  v522 = v520 + v521;
  v523 = v517 ^ 0xFFFFFFC0;
  if (v518 == 5)
  {
    v524 = v523;
  }

  else
  {
    v524 = -115;
  }

  v525 = v522 ^ v524;
  *(STACK[0x2738] - 0xD56D201C0FCD04DLL) = v525;
  v526 = (v523 ^ v525) + ((-54 - 2 * (v523 ^ v525)) | 0x3D) + 124;
  v527 = v526 ^ 0xFFFFFFE1;
  v528 = v526 & 5;
  if ((v526 & 5) != 0)
  {
    v529 = 0;
  }

  else
  {
    v529 = (v526 ^ 0x1E) + 1;
  }

  if (v528 != 5)
  {
    v527 = 0;
  }

  v530 = v527 + (*(STACK[0x2738] - 0xD56D201C0FCD04BLL) ^ 0xFFFFFF8D) + v529;
  v531 = v526 ^ 0x6C;
  if (v528 == 1)
  {
    v532 = v531;
  }

  else
  {
    v532 = -115;
  }

  v533 = v530 ^ v532;
  v534 = (v531 ^ v533) - ((2 * (v531 ^ v533) + 52) & 0xFFFFFF9F) + 105;
  v535 = v534 | 0xFFFFFFFA;
  *(STACK[0x2738] - 0xD56D201C0FCD04BLL) = v533;
  v536 = v534 ^ 0xFFFFFFCF;
  if ((v534 | 0xFFFFFFFA) != 0xFFFFFFFB)
  {
    v536 = 0;
  }

  v537 = v536 + (*(STACK[0x2738] - 0xD56D201C0FCCFBDLL) ^ 0xFFFFFF8D);
  if (v535 == -2)
  {
    v538 = (v534 ^ 0x30) + 1;
  }

  else
  {
    v538 = 0;
  }

  v539 = v537 + v538;
  v540 = v534 ^ 0x42;
  if (v535 == -1)
  {
    v541 = v540;
  }

  else
  {
    v541 = -115;
  }

  v542 = v539 ^ v541;
  *(STACK[0x2738] - 0xD56D201C0FCCFBDLL) = v542;
  v543 = v540 ^ v542;
  v544 = (2 * v543 + 52) & 0x30;
  v543 += 50;
  v545 = v543 - v544;
  v546 = v545 ^ 0xFFFFFF98;
  v547 = v545 ^ 0x15;
  v548 = v543 & 5;
  if (v548)
  {
    v549 = -115;
  }

  else
  {
    v549 = v545 ^ 0x15;
  }

  if (v548 != 4)
  {
    v546 = 0;
  }

  v550 = v545 ^ 0x67;
  if (v548 == 1)
  {
    v551 = v550 + 1;
  }

  else
  {
    v551 = 0;
  }

  v552 = (v546 + (*(STACK[0x2738] - 0xD56D201C0FCD050) ^ 0xFFFFFF8D) + v551) ^ v549;
  *(STACK[0x2738] - 0xD56D201C0FCD050) = v552;
  v553 = (v547 ^ v552) - ((2 * (v547 ^ v552) + 20) & 0x16) - 91;
  v554 = v553 ^ 0xB;
  v555 = v553 & 5;
  if ((v553 & 5) != 0)
  {
    v556 = 0;
  }

  else
  {
    v556 = (v553 ^ 0xFFFFFFF4) + 1;
  }

  if (v555 != 5)
  {
    v554 = 0;
  }

  v557 = v554 + (*(STACK[0x2738] - 0xD56D201C0FCD077) ^ 0xFFFFFF8D) + v556;
  v558 = v553 ^ 0xFFFFFF86;
  if (v555 == 1)
  {
    v559 = v558;
  }

  else
  {
    v559 = -115;
  }

  v560 = v557 ^ v559;
  *(STACK[0x2738] - 0xD56D201C0FCD077) = v560;
  v561 = (v558 ^ v560) - ((2 * (v558 ^ v560) + 52) & 0xFFFFFFC3) - 5;
  v562 = v561 ^ 0x61;
  v563 = v561 & 5;
  if ((v561 & 5) != 0)
  {
    v564 = 0;
  }

  else
  {
    v564 = (v561 ^ 0xFFFFFF9E) + 1;
  }

  if (v563 != 5)
  {
    v562 = 0;
  }

  v565 = v562 + (*(STACK[0x2738] - 0xD56D201C0FCCFE7) ^ 0xFFFFFF8D) + v564;
  v566 = v561 ^ 0xFFFFFFEC;
  if (v563 == 1)
  {
    v567 = v566;
  }

  else
  {
    v567 = -115;
  }

  v568 = v565 ^ v567;
  v569 = (v566 ^ v568) - ((2 * (v566 ^ v568) + 52) & 0xFFFFFF8F) + 97;
  *(STACK[0x2738] - 0xD56D201C0FCCFE7) = v568;
  v570 = v569 & 5;
  v571 = v569 ^ 0xFFFFFFC7;
  if (v570 != 1)
  {
    v571 = 0;
  }

  v572 = v571 + (*(STACK[0x2738] - 0xD56D201C0FCCFDBLL) ^ 0xFFFFFF8D);
  if (v570 == 4)
  {
    v573 = (v569 ^ 0x38) + 1;
  }

  else
  {
    v573 = 0;
  }

  v574 = v572 + v573;
  if (v570 == 5)
  {
    v575 = v569 ^ 0x4A;
  }

  else
  {
    v575 = -115;
  }

  v576 = v574 ^ v575;
  *(STACK[0x2738] - 0xD56D201C0FCCFDBLL) = v576;
  v577 = (v576 ^ v569 ^ 0x4A) - 2 * (((v576 ^ v569 ^ 0x4A) + 26) & 0x71 ^ (v576 ^ v569) & 1) + 10;
  v578 = v577 ^ 0x70;
  v579 = v577 ^ 0xFFFFFFFD;
  v580 = v577 & 5;
  if ((v577 & 5) != 0)
  {
    v581 = -115;
  }

  else
  {
    v581 = v577 ^ 0xFFFFFFFD;
  }

  if (v580 != 4)
  {
    v578 = 0;
  }

  v582 = v577 ^ 0xFFFFFF8F;
  if (v580 == 1)
  {
    v583 = v582 + 1;
  }

  else
  {
    v583 = 0;
  }

  v584 = (v578 + (*(STACK[0x2738] - 0xD56D201C0FCCFB8) ^ 0xFFFFFF8D) + v583) ^ v581;
  v585 = (v579 ^ v584) - ((2 * (v579 ^ v584) + 52) & 0xFFFFFFB6) + 117;
  *(STACK[0x2738] - 0xD56D201C0FCCFB8) = v584;
  v586 = v585 ^ 0xFFFFFFDB;
  v587 = v585 & 5;
  if ((v585 & 5) != 0)
  {
    v588 = 0;
  }

  else
  {
    v588 = (v585 ^ 0x24) + 1;
  }

  if (v587 != 5)
  {
    v586 = 0;
  }

  v589 = v586 + (*(STACK[0x2738] - 0xD56D201C0FCCFCCLL) ^ 0xFFFFFF8D) + v588;
  v590 = v585 ^ 0x56;
  if (v587 == 1)
  {
    v591 = v590;
  }

  else
  {
    v591 = -115;
  }

  v592 = v589 ^ v591;
  *(STACK[0x2738] - 0xD56D201C0FCCFCCLL) = v592;
  v593 = (v590 ^ v592) + 50;
  v594 = v593 - ((2 * (v590 ^ v592) + 52) & 0x30);
  v595 = v594 ^ 0xFFFFFF98;
  v596 = v594 ^ 0x15;
  v597 = v593 & 5;
  if (v597)
  {
    v598 = -115;
  }

  else
  {
    v598 = v594 ^ 0x15;
  }

  if (v597 != 4)
  {
    v595 = 0;
  }

  v599 = v594 ^ 0x67;
  if (v597 == 1)
  {
    v600 = v599 + 1;
  }

  else
  {
    v600 = 0;
  }

  v601 = (v595 + (*(STACK[0x2738] - 0xD56D201C0FCCFD4) ^ 0xFFFFFF8D) + v600) ^ v598;
  *(STACK[0x2738] - 0xD56D201C0FCCFD4) = v601;
  v602 = (v596 ^ v601) - 58;
  v603 = v602 - ((2 * (v596 ^ v601) + 52) & 0x58);
  v604 = v603 ^ 0x2C;
  v605 = v602 & 5;
  if (v605)
  {
    v604 = 0;
  }

  v606 = v604 + (*(STACK[0x2738] - 0xD56D201C0FCD039) ^ 0xFFFFFF8D);
  if (v605 == 5)
  {
    v607 = (v603 ^ 0xFFFFFFD3) + 1;
  }

  else
  {
    v607 = 0;
  }

  v608 = v606 + v607;
  v609 = v603 ^ 0xFFFFFFA1;
  if (v605 == 4)
  {
    v610 = v609;
  }

  else
  {
    v610 = -115;
  }

  v611 = v608 ^ v610;
  *(STACK[0x2738] - 0xD56D201C0FCD039) = v611;
  v612 = (v609 ^ v611) + ((-54 - 2 * (v609 ^ v611)) | 0x2D) + 4;
  v613 = v612 ^ 0x69;
  v614 = v612 & 5;
  if ((v612 & 5) != 0)
  {
    v615 = 0;
  }

  else
  {
    v615 = (v612 ^ 0xFFFFFF96) + 1;
  }

  if (v614 != 5)
  {
    v613 = 0;
  }

  v616 = v613 + (*(STACK[0x2738] - 0xD56D201C0FCD070) ^ 0xFFFFFF8D) + v615;
  v617 = v612 ^ 0xFFFFFFE4;
  if (v614 == 1)
  {
    v618 = v617;
  }

  else
  {
    v618 = -115;
  }

  v619 = v616 ^ v618;
  v620 = (v617 ^ v619) - ((2 * (v617 ^ v619) + 52) & 0x56);
  v621 = v620 + 77;
  v622 = v620 + 69;
  *(STACK[0x2738] - 0xD56D201C0FCD070) = v619;
  v623 = v622 ^ 0xFFFFFFAB;
  v624 = v621 & 5;
  if (v624)
  {
    v625 = 0;
  }

  else
  {
    v625 = (v622 ^ 0x54) + 1;
  }

  if (v624 != 5)
  {
    v623 = 0;
  }

  v626 = v622 ^ 0x26;
  if (v624 == 1)
  {
    v627 = v626;
  }

  else
  {
    v627 = -115;
  }

  v628 = (v623 + (*(STACK[0x2738] - 0xD56D201C0FCCFC4) ^ 0xFFFFFF8D) + v625) ^ v627;
  v629 = (v626 ^ v628) - ((2 * (v626 ^ v628) + 52) & 0xFFFFFFE7) - 115;
  *(STACK[0x2738] - 0xD56D201C0FCCFC4) = v628;
  v630 = v629 ^ 0xFFFFFFF3;
  v631 = v629 & 5;
  if ((v629 & 5) != 0)
  {
    v632 = 0;
  }

  else
  {
    v632 = (v629 ^ 0xC) + 1;
  }

  if (v631 != 5)
  {
    v630 = 0;
  }

  v633 = v630 + (*(STACK[0x2738] - 0xD56D201C0FCCFE0) ^ 0xFFFFFF8D) + v632;
  v634 = v629 ^ 0x7E;
  if (v631 == 1)
  {
    v635 = v634;
  }

  else
  {
    v635 = -115;
  }

  v636 = v633 ^ v635;
  v637 = v634 ^ v636;
  v638 = (2 * v637 + 52) & 0xFFFFFF80;
  v637 -= 38;
  v639 = v638 + v637;
  *(STACK[0x2738] - 0xD56D201C0FCCFE0) = v636;
  v640 = v639 ^ 0x40;
  v641 = v639 ^ 0xFFFFFFCD;
  v642 = v637 & 5;
  if (v642)
  {
    v643 = -115;
  }

  else
  {
    v643 = v639 ^ 0xFFFFFFCD;
  }

  if (v642 != 4)
  {
    v640 = 0;
  }

  v644 = v639 ^ 0xFFFFFFBF;
  if (v642 == 1)
  {
    v645 = v644 + 1;
  }

  else
  {
    v645 = 0;
  }

  v646 = (v640 + (*(STACK[0x2738] - 0xD56D201C0FCD02BLL) ^ 0xFFFFFF8D) + v645) ^ v643;
  *(STACK[0x2738] - 0xD56D201C0FCD02BLL) = v646;
  v647 = (v641 ^ v646) - ((2 * (v641 ^ v646) + 52) & 0xFFFFFFB6) + 117;
  v648 = v647 ^ 0xFFFFFFDB;
  v649 = v647 & 5;
  if ((v647 & 5) != 0)
  {
    v650 = 0;
  }

  else
  {
    v650 = (v647 ^ 0x24) + 1;
  }

  if (v649 != 5)
  {
    v648 = 0;
  }

  v651 = v648 + (*(STACK[0x2738] - 0xD56D201C0FCD018) ^ 0xFFFFFF8D) + v650;
  v652 = v647 ^ 0x56;
  if (v649 != 1)
  {
    v652 = -115;
  }

  v653 = v651 ^ v652;
  v654 = (v653 ^ v647 ^ 0x56) - 2 * (((v653 ^ v647 ^ 0x56) + 26) & 0x15 ^ (v653 ^ v647) & 1) - 82;
  *(STACK[0x2738] - 0xD56D201C0FCD018) = v653;
  v655 = v654 ^ 0x14;
  v656 = v654 & 5;
  if ((v654 & 5) != 0)
  {
    v655 = 0;
  }

  v657 = v655 + (*(STACK[0x2738] - 0xD56D201C0FCCFF4) ^ 0xFFFFFF8D);
  if (v656 == 5)
  {
    v658 = (v654 ^ 0xFFFFFFEB) + 1;
  }

  else
  {
    v658 = 0;
  }

  v659 = v657 + v658;
  v660 = v654 ^ 0xFFFFFF99;
  if (v656 == 4)
  {
    v661 = v660;
  }

  else
  {
    v661 = -115;
  }

  v662 = v659 ^ v661;
  v663 = v660 ^ v662;
  *(STACK[0x2738] - 0xD56D201C0FCCFF4) = v662;
  v664 = (2 * v663 + 52) & 0x70;
  v663 += 82;
  v665 = v663 - v664;
  v666 = v665 ^ 0xFFFFFFB8;
  v667 = v665 ^ 0x35;
  v668 = v663 & 5;
  if (v668)
  {
    v669 = -115;
  }

  else
  {
    v669 = v665 ^ 0x35;
  }

  if (v668 != 4)
  {
    v666 = 0;
  }

  v670 = v665 ^ 0x47;
  if (v668 == 1)
  {
    v671 = v670 + 1;
  }

  else
  {
    v671 = 0;
  }

  v672 = (v666 + (*(STACK[0x2738] - 0xD56D201C0FCD009) ^ 0xFFFFFF8D) + v671) ^ v669;
  v673 = (v667 ^ v672) - ((2 * (v667 ^ v672) + 52) & 0xFFFFFFD2) + 3;
  *(STACK[0x2738] - 0xD56D201C0FCD009) = v672;
  v674 = v673 ^ 0x69;
  v675 = v673 & 5;
  if ((v673 & 5) != 0)
  {
    v676 = 0;
  }

  else
  {
    v676 = (v673 ^ 0xFFFFFF96) + 1;
  }

  if (v675 != 5)
  {
    v674 = 0;
  }

  v677 = v674 + (*(STACK[0x2738] - 0xD56D201C0FCD045) ^ 0xFFFFFF8D) + v676;
  v678 = v673 ^ 0xFFFFFFE4;
  if (v675 != 1)
  {
    v678 = -115;
  }

  v679 = v677 ^ v678;
  *(STACK[0x2738] - 0xD56D201C0FCD045) = v679;
  v680 = (v679 ^ v673 ^ 0xFFFFFFE4) - 2 * (((v679 ^ v673 ^ 0xFFFFFFE4) + 26) & 0x5B ^ (v679 ^ v673) & 1) - 12;
  v681 = v680 ^ 0x5A;
  v682 = v680 ^ 0xFFFFFFD7;
  v683 = v680 & 5;
  if ((v680 & 5) != 0)
  {
    v684 = -115;
  }

  else
  {
    v684 = v680 ^ 0xFFFFFFD7;
  }

  if (v683 != 4)
  {
    v681 = 0;
  }

  v685 = v680 ^ 0xFFFFFFA5;
  if (v683 == 1)
  {
    v686 = v685 + 1;
  }

  else
  {
    v686 = 0;
  }

  v687 = (v681 + (*(STACK[0x2738] - 0xD56D201C0FCD05FLL) ^ 0xFFFFFF8D) + v686) ^ v684;
  *(STACK[0x2738] - 0xD56D201C0FCD05FLL) = v687;
  v688 = (v682 ^ v687) - ((2 * (v682 ^ v687) + 20) & 0x1E) - 87;
  v689 = v688 & 5;
  v690 = v688 ^ 0xF;
  if (v689 != 1)
  {
    v690 = 0;
  }

  v691 = v690 + (*(STACK[0x2738] - 0xD56D201C0FCD06CLL) ^ 0xFFFFFF8D);
  if (v689 == 4)
  {
    v692 = (v688 ^ 0xFFFFFFF0) + 1;
  }

  else
  {
    v692 = 0;
  }

  v693 = v691 + v692;
  v694 = v688 ^ 0xFFFFFF82;
  if (v689 == 5)
  {
    v695 = v694;
  }

  else
  {
    v695 = -115;
  }

  v696 = v693 ^ v695;
  *(STACK[0x2738] - 0xD56D201C0FCD06CLL) = v696;
  v697 = *(STACK[0x2738] - 0xD56D201C0FCCFF5);
  v698 = (v694 ^ v696) - ((2 * (v694 ^ v696) + 52) & 0xFFFFFF9A) + 103;
  v699 = v698 & 5;
  if (v699 == 1)
  {
    v697 = (v698 ^ 0xFFFFFFCD) + (v697 ^ 0xFFFFFF8D) - ((2 * ((v698 ^ 0xFFFFFFCD) + (v697 ^ 0xFFFFFF8D))) & 0x1A) - 115;
  }

  v700 = v697 ^ 0xFFFFFF8D;
  if (v699 == 4)
  {
    v701 = v698 ^ 0xFFFFFFCD;
  }

  else
  {
    v701 = 0;
  }

  v702 = v700 - v701;
  v703 = v698 ^ 0x40;
  if (v699 == 5)
  {
    v704 = v703;
  }

  else
  {
    v704 = -115;
  }

  v705 = v702 ^ v704;
  *(STACK[0x2738] - 0xD56D201C0FCCFF5) = v705;
  v706 = (v703 ^ v705) - ((2 * (v703 ^ v705) + 52) & 0xFFFFFF8C) - 32;
  v707 = *(STACK[0x2738] - 0xD56D201C0FCD01BLL);
  v708 = v706 ^ 0x46;
  v709 = v706 ^ 0xFFFFFFCB;
  v710 = (v706 ^ 0xFFFFFFCB ^ v707) + 2 * ((v706 ^ 0x46) & (v707 ^ 0xD));
  v711 = v710 - ((2 * v710) & 0x1A) - 115;
  v712 = v706 & 5;
  if (!v712)
  {
    v707 = v711;
  }

  v713 = v707 ^ 0xFFFFFF8D;
  if (v712 == 5)
  {
    v714 = v708;
  }

  else
  {
    v714 = 0;
  }

  v715 = v713 - v714;
  if (v712 == 4)
  {
    v716 = v709;
  }

  else
  {
    v716 = -115;
  }

  v717 = v715 ^ v716;
  *(STACK[0x2738] - 0xD56D201C0FCD01BLL) = v717;
  v718 = (v709 ^ v717) - ((2 * (v709 ^ v717) + 52) & 0x62) - 53;
  v719 = v718 ^ 0x31;
  v720 = v718 & 5;
  if ((v718 & 5) != 0)
  {
    v721 = 0;
  }

  else
  {
    v721 = (v718 ^ 0xFFFFFFCE) + 1;
  }

  if (v720 != 5)
  {
    v719 = 0;
  }

  v722 = v719 + (*(STACK[0x2738] - 0xD56D201C0FCD063) ^ 0xFFFFFF8D) + v721;
  v723 = v718 ^ 0xFFFFFFBC;
  if (v720 == 1)
  {
    v724 = v723;
  }

  else
  {
    v724 = -115;
  }

  v725 = v722 ^ v724;
  *(STACK[0x2738] - 0xD56D201C0FCD063) = v725;
  v726 = (v723 ^ v725) - ((2 * (v723 ^ v725) + 52) & 0x54) - 60;
  v727 = v726 ^ 0x2A;
  v728 = v726 ^ 0xFFFFFFA7;
  v729 = v726 & 5;
  if ((v726 & 5) != 0)
  {
    v730 = -115;
  }

  else
  {
    v730 = v726 ^ 0xFFFFFFA7;
  }

  if (v729 != 4)
  {
    v727 = 0;
  }

  v731 = v726 ^ 0xFFFFFFD5;
  if (v729 == 1)
  {
    v732 = v731 + 1;
  }

  else
  {
    v732 = 0;
  }

  v733 = (v727 + (*(STACK[0x2738] - 0xD56D201C0FCD019) ^ 0xFFFFFF8D) + v732) ^ v730;
  v734 = (v728 ^ v733) + ((74 - 2 * (v728 ^ v733)) | 0xFFFFFFA7) + 71;
  *(STACK[0x2738] - 0xD56D201C0FCD019) = v733;
  v735 = v734 ^ 0xFFFFFFAC;
  v736 = v734 & 5;
  if ((v734 & 5) != 0)
  {
    v735 = 0;
  }

  v737 = v735 + (*(STACK[0x2738] - 0xD56D201C0FCD05DLL) ^ 0xFFFFFF8D);
  if (v736 == 5)
  {
    v738 = (v734 ^ 0x53) + 1;
  }

  else
  {
    v738 = 0;
  }

  v739 = v737 + v738;
  v740 = v734 ^ 0x21;
  if (v736 == 4)
  {
    v741 = v740;
  }

  else
  {
    v741 = -115;
  }

  v742 = v739 ^ v741;
  *(STACK[0x2738] - 0xD56D201C0FCD05DLL) = v742;
  v743 = (v740 ^ v742) - 2 * (((v740 ^ v742) + 26) & 0x4B ^ (v740 ^ v742) & 1);
  LOBYTE(v742) = v743 + 108;
  v744 = v743 + 100;
  v745 = v744 ^ 0xFFFFFFCA;
  v746 = v744 ^ 0x47;
  v747 = v742 & 5;
  if (v747)
  {
    v748 = -115;
  }

  else
  {
    v748 = v744 ^ 0x47;
  }

  if (v747 != 4)
  {
    v745 = 0;
  }

  v749 = v744 ^ 0x35;
  if (v747 == 1)
  {
    v750 = v749 + 1;
  }

  else
  {
    v750 = 0;
  }

  v751 = (v745 + (*(STACK[0x2738] - 0xD56D201C0FCD05ALL) ^ 0xFFFFFF8D) + v750) ^ v748;
  *(STACK[0x2738] - 0xD56D201C0FCD05ALL) = v751;
  v752 = (v746 ^ v751) - ((2 * (v746 ^ v751) + 52) & 0xFFFFFFCF) + 1;
  v753 = v752 & 5;
  v754 = v752 ^ 0x67;
  if (v753 != 1)
  {
    v754 = 0;
  }

  v755 = v754 + (*(STACK[0x2738] - 0xD56D201C0FCD076) ^ 0xFFFFFF8D);
  if (v753 == 4)
  {
    v756 = (v752 ^ 0xFFFFFF98) + 1;
  }

  else
  {
    v756 = 0;
  }

  v757 = v755 + v756;
  v758 = v752 ^ 0xFFFFFFEA;
  if (v753 == 5)
  {
    v759 = v758;
  }

  else
  {
    v759 = -115;
  }

  v760 = v757 ^ v759;
  *(STACK[0x2738] - 0xD56D201C0FCD076) = v760;
  v761 = v758 ^ v760;
  v762 = (2 * v761 + 20) & 0x18;
  v761 -= 90;
  v763 = v761 - v762;
  v764 = v763 ^ 0xC;
  v765 = v761 & 5;
  if (v765)
  {
    v764 = 0;
  }

  v766 = v764 + (*(STACK[0x2738] - 0xD56D201C0FCCFF2) ^ 0xFFFFFF8D);
  if (v765 == 5)
  {
    v767 = (v763 ^ 0xFFFFFFF3) + 1;
  }

  else
  {
    v767 = 0;
  }

  v768 = v766 + v767;
  v769 = v763 ^ 0xFFFFFF81;
  if (v765 == 4)
  {
    v770 = v769;
  }

  else
  {
    v770 = -115;
  }

  v771 = v768 ^ v770;
  *(STACK[0x2738] - 0xD56D201C0FCCFF2) = v771;
  v772 = (v769 ^ v771) + ((74 - 2 * (v769 ^ v771)) | 0xFFFFFF9D) + 76;
  v773 = v772 ^ 0xFFFFFFB1;
  v774 = v772 & 5;
  if ((v772 & 5) != 0)
  {
    v775 = 0;
  }

  else
  {
    v775 = (v772 ^ 0x4E) + 1;
  }

  if (v774 != 5)
  {
    v773 = 0;
  }

  v776 = v773 + (*(STACK[0x2738] - 0xD56D201C0FCD02CLL) ^ 0xFFFFFF8D) + v775;
  v777 = v772 ^ 0x3C;
  if (v774 == 1)
  {
    v778 = v777;
  }

  else
  {
    v778 = -115;
  }

  v779 = v776 ^ v778;
  v780 = (v777 ^ v779) - ((2 * (v777 ^ v779) + 52) & 0xFFFFFFB6) + 117;
  *(STACK[0x2738] - 0xD56D201C0FCD02CLL) = v779;
  v781 = v780 ^ 0xFFFFFFDB;
  v782 = v780 & 5;
  if ((v780 & 5) != 0)
  {
    v783 = 0;
  }

  else
  {
    v783 = (v780 ^ 0x24) + 1;
  }

  if (v782 != 5)
  {
    v781 = 0;
  }

  v784 = v781 + (*(STACK[0x2738] - 0xD56D201C0FCCFFCLL) ^ 0xFFFFFF8D) + v783;
  v785 = v780 ^ 0x56;
  if (v782 == 1)
  {
    v786 = v785;
  }

  else
  {
    v786 = -115;
  }

  v787 = v784 ^ v786;
  v788 = (v785 ^ v787) + ((10 - 2 * (v785 ^ v787)) | 0xFFFFFFDB) + 45;
  *(STACK[0x2738] - 0xD56D201C0FCCFFCLL) = v787;
  v789 = v788 ^ 0xFFFFFF92;
  v790 = v788 ^ 0x1F;
  v791 = v788 & 5;
  if ((v788 & 5) != 0)
  {
    v792 = -115;
  }

  else
  {
    v792 = v788 ^ 0x1F;
  }

  if (v791 != 4)
  {
    v789 = 0;
  }

  v793 = v788 ^ 0x6D;
  if (v791 == 1)
  {
    v794 = v793 + 1;
  }

  else
  {
    v794 = 0;
  }

  v795 = (v789 + (*(STACK[0x2738] - 0xD56D201C0FCCFB0) ^ 0xFFFFFF8D) + v794) ^ v792;
  *(STACK[0x2738] - 0xD56D201C0FCCFB0) = v795;
  v796 = (v790 ^ v795) - 2 * (((v790 ^ v795) + 26) & 0x23 ^ (v790 ^ v795) & 1) + 60;
  v797 = v796 ^ 0xFFFFFFA2;
  v798 = v796 ^ 0x2F;
  v799 = v796 & 5;
  if ((v796 & 5) != 0)
  {
    v800 = -115;
  }

  else
  {
    v800 = v796 ^ 0x2F;
  }

  if (v799 != 4)
  {
    v797 = 0;
  }

  v801 = v796 ^ 0x5D;
  if (v799 == 1)
  {
    v802 = v801 + 1;
  }

  else
  {
    v802 = 0;
  }

  v803 = (v797 + (*(STACK[0x2738] - 0xD56D201C0FCD029) ^ 0xFFFFFF8D) + v802) ^ v800;
  v804 = (v798 ^ v803) - 42;
  v805 = v804 - ((2 * (v798 ^ v803) + 52) & 0x78);
  *(STACK[0x2738] - 0xD56D201C0FCD029) = v803;
  v806 = v805 ^ 0x3C;
  v807 = v804 & 5;
  if (v807)
  {
    v806 = 0;
  }

  v808 = v806 + (*(STACK[0x2738] - 0xD56D201C0FCD046) ^ 0xFFFFFF8D);
  if (v807 == 5)
  {
    v809 = (v805 ^ 0xFFFFFFC3) + 1;
  }

  else
  {
    v809 = 0;
  }

  v810 = v808 + v809;
  v811 = v805 ^ 0xFFFFFFB1;
  if (v807 == 4)
  {
    v812 = v811;
  }

  else
  {
    v812 = -115;
  }

  v813 = v810 ^ v812;
  *(STACK[0x2738] - 0xD56D201C0FCD046) = v813;
  v814 = (2 * (v811 ^ v813) + 52) & 0x58;
  v815 = (v811 ^ v813) + 70;
  v816 = v815 - v814;
  v817 = v816 ^ 0xFFFFFFAC;
  v818 = v815 & 5;
  if (v818)
  {
    v817 = 0;
  }

  v819 = v817 + (*(STACK[0x2738] - 0xD56D201C0FCD037) ^ 0xFFFFFF8D);
  if (v818 == 5)
  {
    v820 = (v816 ^ 0x53) + 1;
  }

  else
  {
    v820 = 0;
  }

  v821 = v819 + v820;
  v822 = v816 ^ 0x21;
  if (v818 == 4)
  {
    v823 = v822;
  }

  else
  {
    v823 = -115;
  }

  v824 = v821 ^ v823;
  *(STACK[0x2738] - 0xD56D201C0FCD037) = v824;
  v825 = (v822 ^ v824) - ((2 * (v822 ^ v824) + 52) & 0xFFFFFFC3) + 123;
  v826 = v825 ^ 0xFFFFFFE1;
  v827 = v825 & 5;
  if ((v825 & 5) != 0)
  {
    v828 = 0;
  }

  else
  {
    v828 = (v825 ^ 0x1E) + 1;
  }

  if (v827 != 5)
  {
    v826 = 0;
  }

  v829 = v826 + (*(STACK[0x2738] - 0xD56D201C0FCCFC0) ^ 0xFFFFFF8D) + v828;
  v830 = v825 ^ 0x6C;
  if (v827 == 1)
  {
    v831 = v830;
  }

  else
  {
    v831 = -115;
  }

  v832 = v829 ^ v831;
  *(STACK[0x2738] - 0xD56D201C0FCCFC0) = v832;
  v833 = (v830 ^ v832) + ((74 - 2 * (v830 ^ v832)) | 0xFFFFFFA7) - 57;
  v834 = v833 ^ 0x2C;
  v835 = v833 & 5;
  if ((v833 & 5) != 0)
  {
    v834 = 0;
  }

  v836 = v834 + (*(STACK[0x2738] - 0xD56D201C0FCCFC8) ^ 0xFFFFFF8D);
  if (v835 == 5)
  {
    v837 = (v833 ^ 0xFFFFFFD3) + 1;
  }

  else
  {
    v837 = 0;
  }

  v838 = v836 + v837;
  v839 = v833 ^ 0xFFFFFFA1;
  if (v835 == 4)
  {
    v840 = v839;
  }

  else
  {
    v840 = -115;
  }

  v841 = v838 ^ v840;
  *(STACK[0x2738] - 0xD56D201C0FCCFC8) = v841;
  v842 = (v839 ^ v841) + ((-54 - 2 * (v839 ^ v841)) | 0x5D) + 108;
  v843 = v842 ^ 0xFFFFFFD1;
  v844 = v842 & 5;
  if ((v842 & 5) != 0)
  {
    v845 = 0;
  }

  else
  {
    v845 = (v842 ^ 0x2E) + 1;
  }

  if (v844 != 5)
  {
    v843 = 0;
  }

  v846 = v843 + (*(STACK[0x2738] - 0xD56D201C0FCD047) ^ 0xFFFFFF8D) + v845;
  v847 = v842 ^ 0x5C;
  if (v844 != 1)
  {
    v847 = -115;
  }

  v848 = v846 ^ v847;
  *(STACK[0x2738] - 0xD56D201C0FCD047) = v848;
  v849 = (v848 ^ v842 ^ 0x5C) - 2 * (((v848 ^ v842 ^ 0x5C) + 26) & 0x3B ^ (v848 ^ v842) & 1) - 44;
  v850 = v849 ^ 0x3A;
  v851 = v849 ^ 0xFFFFFFB7;
  v852 = v849 & 5;
  if ((v849 & 5) != 0)
  {
    v853 = -115;
  }

  else
  {
    v853 = v849 ^ 0xFFFFFFB7;
  }

  if (v852 != 4)
  {
    v850 = 0;
  }

  v854 = v849 ^ 0xFFFFFFC5;
  if (v852 == 1)
  {
    v855 = v854 + 1;
  }

  else
  {
    v855 = 0;
  }

  v856 = (v850 + (*(STACK[0x2738] - 0xD56D201C0FCD06DLL) ^ 0xFFFFFF8D) + v855) ^ v853;
  *(STACK[0x2738] - 0xD56D201C0FCD06DLL) = v856;
  v857 = (v851 ^ v856) - 2 * (((v851 ^ v856) + 26) & 0x19 ^ (v851 ^ v856) & 1) - 78;
  v858 = v857 ^ 0x18;
  v859 = v857 ^ 0xFFFFFF95;
  v860 = v857 & 5;
  if ((v857 & 5) != 0)
  {
    v861 = -115;
  }

  else
  {
    v861 = v857 ^ 0xFFFFFF95;
  }

  if (v860 != 4)
  {
    v858 = 0;
  }

  v862 = v857 ^ 0xFFFFFFE7;
  if (v860 == 1)
  {
    v863 = v862 + 1;
  }

  else
  {
    v863 = 0;
  }

  v864 = (v858 + (*(STACK[0x2738] - 0xD56D201C0FCD025) ^ 0xFFFFFF8D) + v863) ^ v861;
  v865 = (v859 ^ v864) - ((2 * (v859 ^ v864) + 52) & 0xFFFFFFEF) + 17;
  *(STACK[0x2738] - 0xD56D201C0FCD025) = v864;
  v866 = v865 & 5;
  v867 = v865 ^ 0x77;
  if (v866 != 1)
  {
    v867 = 0;
  }

  v868 = v867 + (*(STACK[0x2738] - 0xD56D201C0FCCFD2) ^ 0xFFFFFF8D);
  if (v866 == 4)
  {
    v869 = (v865 ^ 0xFFFFFF88) + 1;
  }

  else
  {
    v869 = 0;
  }

  v870 = v868 + v869;
  v871 = v865 ^ 0xFFFFFFFA;
  if (v866 == 5)
  {
    v872 = v871;
  }

  else
  {
    v872 = -115;
  }

  v873 = v870 ^ v872;
  *(STACK[0x2738] - 0xD56D201C0FCCFD2) = v873;
  v874 = (v871 ^ v873) + ((-54 - 2 * (v871 ^ v873)) | 0x41) - 6;
  v875 = v874 & 5;
  v876 = v874 ^ 0x5F;
  if (v875 != 1)
  {
    v876 = 0;
  }

  v877 = v876 + (*(STACK[0x2738] - 0xD56D201C0FCD032) ^ 0xFFFFFF8D);
  if (v875 == 4)
  {
    v878 = (v874 ^ 0xFFFFFFA0) + 1;
  }

  else
  {
    v878 = 0;
  }

  v879 = v877 + v878;
  v880 = v874 ^ 0xFFFFFFD2;
  if (v875 == 5)
  {
    v881 = v880;
  }

  else
  {
    v881 = -115;
  }

  v882 = v879 ^ v881;
  *(STACK[0x2738] - 0xD56D201C0FCD032) = v882;
  v883 = (v880 ^ v882) + ((-54 - 2 * (v880 ^ v882)) | 0x5D) + 108;
  v884 = v883 ^ 0xFFFFFFD1;
  v885 = v883 & 5;
  if ((v883 & 5) != 0)
  {
    v886 = 0;
  }

  else
  {
    v886 = (v883 ^ 0x2E) + 1;
  }

  if (v885 != 5)
  {
    v884 = 0;
  }

  v887 = v884 + (*(STACK[0x2738] - 0xD56D201C0FCCFB6) ^ 0xFFFFFF8D) + v886;
  v888 = v883 ^ 0x5C;
  if (v885 == 1)
  {
    v889 = v888;
  }

  else
  {
    v889 = -115;
  }

  v890 = v887 ^ v889;
  *(STACK[0x2738] - 0xD56D201C0FCCFB6) = v890;
  v891 = (v888 ^ v890) - ((2 * (v888 ^ v890) + 52) & 0xFFFFFF9A);
  v892 = v891 - 1;
  v893 = v891 + 103;
  v894 = v892 & 5;
  v895 = v893 ^ 0xFFFFFFCD;
  if (v894 != 1)
  {
    v895 = 0;
  }

  v896 = v895 + (*(STACK[0x2738] - 0xD56D201C0FCD011) ^ 0xFFFFFF8D);
  if (v894 == 4)
  {
    v897 = (v893 ^ 0x32) + 1;
  }

  else
  {
    v897 = 0;
  }

  v898 = v896 + v897;
  v899 = v893 ^ 0x40;
  if (v894 == 5)
  {
    v900 = v899;
  }

  else
  {
    v900 = -115;
  }

  v901 = v898 ^ v900;
  *(STACK[0x2738] - 0xD56D201C0FCD011) = v901;
  v902 = (v899 ^ v901) - ((2 * (v899 ^ v901) + 52) & 0xFFFFFFA6);
  v903 = v902 - 11;
  v904 = v902 - 19;
  v905 = v904 ^ 0x53;
  v906 = v903 & 5;
  if (v906)
  {
    v907 = 0;
  }

  else
  {
    v907 = (v904 ^ 0xFFFFFFAC) + 1;
  }

  if (v906 != 5)
  {
    v905 = 0;
  }

  v908 = v904 ^ 0xFFFFFFDE;
  if (v906 == 1)
  {
    v909 = v908;
  }

  else
  {
    v909 = -115;
  }

  v910 = (v905 + (*(STACK[0x2738] - 0xD56D201C0FCD03CLL) ^ 0xFFFFFF8D) + v907) ^ v909;
  v911 = v908 ^ v910;
  *(STACK[0x2738] - 0xD56D201C0FCD03CLL) = v910;
  v912 = (2 * v911 + 52) & 0xFFFFFF98;
  v911 -= 26;
  v913 = v911 - v912;
  v914 = v913 ^ 0x4C;
  v915 = v911 & 5;
  if (v915)
  {
    v914 = 0;
  }

  v916 = v914 + (*(STACK[0x2738] - 0xD56D201C0FCD00ALL) ^ 0xFFFFFF8D);
  if (v915 == 5)
  {
    v917 = (v913 ^ 0xFFFFFFB3) + 1;
  }

  else
  {
    v917 = 0;
  }

  v918 = v916 + v917;
  if (v915 == 4)
  {
    v919 = v913 ^ 0xFFFFFFC1;
  }

  else
  {
    v919 = -115;
  }

  v920 = v918 ^ v919;
  v921 = (v920 ^ v913 ^ 0xFFFFFFC1) - ((2 * (v920 ^ v913) + 52) & 0x74) + 84;
  *(STACK[0x2738] - 0xD56D201C0FCD00ALL) = v920;
  v922 = v921 ^ 0xFFFFFFBA;
  v923 = v921 ^ 0x37;
  v924 = v921 & 5;
  if ((v921 & 5) != 0)
  {
    v923 = -115;
  }

  if (v924 != 4)
  {
    v922 = 0;
  }

  v925 = v922 + (*(STACK[0x2738] - 0xD56D201C0FCD065) ^ 0xFFFFFF8D);
  if (v924 == 1)
  {
    v926 = (v921 ^ 0x45) + 1;
  }

  else
  {
    v926 = 0;
  }

  v927 = (v925 + v926) ^ v923;
  *(STACK[0x2738] - 0xD56D201C0FCD065) = v927;
  v928 = (v927 ^ v921 ^ 0x37) - ((2 * (v927 ^ v921)) & 4) - 100;
  v929 = v928 ^ 2;
  v930 = v928 ^ 0xFFFFFF8F;
  v931 = v928 & 5;
  if ((v928 & 5) != 0)
  {
    v932 = -115;
  }

  else
  {
    v932 = v928 ^ 0xFFFFFF8F;
  }

  if (v931 != 4)
  {
    v929 = 0;
  }

  v933 = v928 ^ 0xFFFFFFFD;
  if (v931 == 1)
  {
    v934 = v933 + 1;
  }

  else
  {
    v934 = 0;
  }

  v935 = (v929 + (*(STACK[0x2738] - 0xD56D201C0FCD04FLL) ^ 0xFFFFFF8D) + v934) ^ v932;
  v936 = (v930 ^ v935) - ((2 * (v930 ^ v935) + 52) & 0xFFFFFF9F) + 105;
  *(STACK[0x2738] - 0xD56D201C0FCD04FLL) = v935;
  v937 = v936 & 5;
  v938 = v936 ^ 0xFFFFFFCF;
  if (v937 != 1)
  {
    v938 = 0;
  }

  v939 = v938 + (*(STACK[0x2738] - 0xD56D201C0FCD02ALL) ^ 0xFFFFFF8D);
  if (v937 == 4)
  {
    v940 = (v936 ^ 0x30) + 1;
  }

  else
  {
    v940 = 0;
  }

  v941 = v939 + v940;
  v942 = v936 ^ 0x42;
  if (v937 == 5)
  {
    v943 = v942;
  }

  else
  {
    v943 = -115;
  }

  v944 = v941 ^ v943;
  v945 = v942 ^ v944;
  v946 = (2 * v945 + 52) & 0xFFFFFF80;
  v945 += 90;
  *(STACK[0x2738] - 0xD56D201C0FCD02ALL) = v944;
  v947 = v946 + v945;
  v948 = v947 ^ 0xFFFFFFC0;
  v949 = v947 ^ 0x4D;
  v950 = v945 & 5;
  if (v950)
  {
    v951 = -115;
  }

  else
  {
    v951 = v947 ^ 0x4D;
  }

  if (v950 != 4)
  {
    v948 = 0;
  }

  v952 = v947 ^ 0x3F;
  if (v950 == 1)
  {
    v953 = v952 + 1;
  }

  else
  {
    v953 = 0;
  }

  v954 = (v948 + (*(STACK[0x2738] - 0xD56D201C0FCCFD9) ^ 0xFFFFFF8D) + v953) ^ v951;
  *(STACK[0x2738] - 0xD56D201C0FCCFD9) = v954;
  v955 = (v949 ^ v954) - 2 * (((v949 ^ v954) + 26) & 0x23 ^ (v949 ^ v954) & 1) - 68;
  v956 = v955 ^ 0x22;
  v957 = v955 ^ 0xFFFFFFAF;
  v958 = v955 & 5;
  if ((v955 & 5) != 0)
  {
    v959 = -115;
  }

  else
  {
    v959 = v955 ^ 0xFFFFFFAF;
  }

  if (v958 != 4)
  {
    v956 = 0;
  }

  v960 = v955 ^ 0xFFFFFFDD;
  if (v958 == 1)
  {
    v961 = v960 + 1;
  }

  else
  {
    v961 = 0;
  }

  v962 = (v956 + (*(STACK[0x2738] - 0xD56D201C0FCD002) ^ 0xFFFFFF8D) + v961) ^ v959;
  *(STACK[0x2738] - 0xD56D201C0FCD002) = v962;
  v963 = (v957 ^ v962) - ((2 * (v957 ^ v962) + 20) & 0x14);
  LOBYTE(v962) = v963 + 44;
  v964 = v963 + 36;
  v965 = v964 ^ 0xFFFFFF8A;
  v966 = v964 ^ 7;
  v967 = v962 & 5;
  if (v967)
  {
    v968 = -115;
  }

  else
  {
    v968 = v964 ^ 7;
  }

  if (v967 != 4)
  {
    v965 = 0;
  }

  v969 = v964 ^ 0x75;
  if (v967 == 1)
  {
    v970 = v969 + 1;
  }

  else
  {
    v970 = 0;
  }

  v971 = (v965 + (*(STACK[0x2738] - 0xD56D201C0FCD049) ^ 0xFFFFFF8D) + v970) ^ v968;
  v972 = (v966 ^ v971) + ((74 - 2 * (v966 ^ v971)) | 0xFFFFFF9F) + 75;
  *(STACK[0x2738] - 0xD56D201C0FCD049) = v971;
  v973 = v972 ^ 0xFFFFFFB0;
  v974 = v972 ^ 0x3D;
  v975 = v972 & 5;
  if ((v972 & 5) != 0)
  {
    v976 = -115;
  }

  else
  {
    v976 = v972 ^ 0x3D;
  }

  if (v975 != 4)
  {
    v973 = 0;
  }

  v977 = v972 ^ 0x4F;
  if (v975 == 1)
  {
    v978 = v977 + 1;
  }

  else
  {
    v978 = 0;
  }

  v979 = (v973 + (*(STACK[0x2738] - 0xD56D201C0FCD03FLL) ^ 0xFFFFFF8D) + v978) ^ v976;
  *(STACK[0x2738] - 0xD56D201C0FCD03FLL) = v979;
  v980 = (v974 ^ v979) - ((2 * (v974 ^ v979) + 52) & 0xFFFFFFD2) + 3;
  v981 = v980 ^ 0x69;
  v982 = v980 & 5;
  if ((v980 & 5) != 0)
  {
    v983 = 0;
  }

  else
  {
    v983 = (v980 ^ 0xFFFFFF96) + 1;
  }

  if (v982 != 5)
  {
    v981 = 0;
  }

  v984 = v981 + (*(STACK[0x2738] - 0xD56D201C0FCD012) ^ 0xFFFFFF8D) + v983;
  v985 = v980 ^ 0xFFFFFFE4;
  if (v982 == 1)
  {
    v986 = v985;
  }

  else
  {
    v986 = -115;
  }

  v987 = v984 ^ v986;
  *(STACK[0x2738] - 0xD56D201C0FCD012) = v987;
  v988 = (v985 ^ v987) + ((10 - 2 * (v985 ^ v987)) | 0xFFFFFFE7) - 89;
  v989 = v988 ^ 0xC;
  v990 = v988 & 5;
  if ((v988 & 5) != 0)
  {
    v989 = 0;
  }

  v991 = v989 + (*(STACK[0x2738] - 0xD56D201C0FCD01DLL) ^ 0xFFFFFF8D);
  if (v990 == 5)
  {
    v992 = (v988 ^ 0xFFFFFFF3) + 1;
  }

  else
  {
    v992 = 0;
  }

  v993 = v991 + v992;
  v994 = v988 ^ 0xFFFFFF81;
  if (v990 != 4)
  {
    v994 = -115;
  }

  v995 = v993 ^ v994;
  v996 = v995 ^ v988;
  v997 = (v996 ^ 0xFFFFFF81) - 46;
  v998 = v997 - ((2 * v996 + 52) & 0x70);
  *(STACK[0x2738] - 0xD56D201C0FCD01DLL) = v995;
  v999 = v998 ^ 0x38;
  v1000 = v998 ^ 0xFFFFFFB5;
  v1001 = v997 & 5;
  if (v1001)
  {
    v1002 = -115;
  }

  else
  {
    v1002 = v998 ^ 0xFFFFFFB5;
  }

  if (v1001 != 4)
  {
    v999 = 0;
  }

  v1003 = v998 ^ 0xFFFFFFC7;
  if (v1001 == 1)
  {
    v1004 = v1003 + 1;
  }

  else
  {
    v1004 = 0;
  }

  v1005 = (v999 + (*(STACK[0x2738] - 0xD56D201C0FCCFE1) ^ 0xFFFFFF8D) + v1004) ^ v1002;
  v1006 = (v1000 ^ v1005) + 34;
  v1007 = v1006 - ((2 * (v1000 ^ v1005) + 20) & 0x10);
  *(STACK[0x2738] - 0xD56D201C0FCCFE1) = v1005;
  v1008 = v1007 ^ 0xFFFFFF88;
  v1009 = v1007 ^ 5;
  v1010 = v1006 & 5;
  if (v1010)
  {
    v1011 = -115;
  }

  else
  {
    v1011 = v1007 ^ 5;
  }

  if (v1010 != 4)
  {
    v1008 = 0;
  }

  v1012 = v1007 ^ 0x77;
  if (v1010 == 1)
  {
    v1013 = v1012 + 1;
  }

  else
  {
    v1013 = 0;
  }

  v1014 = (v1008 + (*(STACK[0x2738] - 0xD56D201C0FCCFEALL) ^ 0xFFFFFF8D) + v1013) ^ v1011;
  v1015 = (v1009 ^ v1014) + 62;
  v1016 = v1015 - ((2 * (v1009 ^ v1014) + 52) & 0x48);
  *(STACK[0x2738] - 0xD56D201C0FCCFEALL) = v1014;
  v1017 = v1016 ^ 0xFFFFFFA4;
  v1018 = v1015 & 5;
  if (v1018)
  {
    v1017 = 0;
  }

  v1019 = v1017 + (*(STACK[0x2738] - 0xD56D201C0FCD021) ^ 0xFFFFFF8D);
  if (v1018 == 5)
  {
    v1020 = (v1016 ^ 0x5B) + 1;
  }

  else
  {
    v1020 = 0;
  }

  v1021 = v1019 + v1020;
  v1022 = v1016 ^ 0x29;
  if (v1018 == 4)
  {
    v1023 = v1022;
  }

  else
  {
    v1023 = -115;
  }

  v1024 = v1021 ^ v1023;
  v1025 = (v1022 ^ v1024) - ((2 * (v1022 ^ v1024) + 52) & 0x4C) - 64;
  *(STACK[0x2738] - 0xD56D201C0FCD021) = v1024;
  v1026 = v1025 ^ 0x26;
  v1027 = v1025 & 5;
  if ((v1025 & 5) != 0)
  {
    v1026 = 0;
  }

  v1028 = v1026 + (*(STACK[0x2738] - 0xD56D201C0FCD074) ^ 0xFFFFFF8D);
  if (v1027 == 5)
  {
    v1029 = (v1025 ^ 0xFFFFFFD9) + 1;
  }

  else
  {
    v1029 = 0;
  }

  v1030 = v1028 + v1029;
  v1031 = v1025 ^ 0xFFFFFFAB;
  if (v1027 == 4)
  {
    v1032 = v1031;
  }

  else
  {
    v1032 = -115;
  }

  v1033 = v1030 ^ v1032;
  *(STACK[0x2738] - 0xD56D201C0FCD074) = v1033;
  v1034 = (v1031 ^ v1033) - ((2 * (v1031 ^ v1033) + 52) & 0xFFFFFFE7) - 115;
  v1035 = v1034 ^ 0xFFFFFFF3;
  v1036 = v1034 & 5;
  if ((v1034 & 5) != 0)
  {
    v1037 = 0;
  }

  else
  {
    v1037 = (v1034 ^ 0xC) + 1;
  }

  if (v1036 != 5)
  {
    v1035 = 0;
  }

  v1038 = v1035 + (*(STACK[0x2738] - 0xD56D201C0FCD048) ^ 0xFFFFFF8D) + v1037;
  v1039 = v1034 ^ 0x7E;
  if (v1036 == 1)
  {
    v1040 = v1039;
  }

  else
  {
    v1040 = -115;
  }

  v1041 = v1038 ^ v1040;
  *(STACK[0x2738] - 0xD56D201C0FCD048) = v1041;
  v1042 = (v1039 ^ v1041) - ((2 * (v1039 ^ v1041) + 52) & 0x3E) + 57;
  v1043 = v1042 & 5;
  v1044 = v1042 ^ 0xFFFFFF9F;
  if (v1043 != 1)
  {
    v1044 = 0;
  }

  v1045 = v1044 + (*(STACK[0x2738] - 0xD56D201C0FCD03ALL) ^ 0xFFFFFF8D);
  if (v1043 == 4)
  {
    v1046 = (v1042 ^ 0x60) + 1;
  }

  else
  {
    v1046 = 0;
  }

  v1047 = v1045 + v1046;
  v1048 = v1042 ^ 0x12;
  if (v1043 == 5)
  {
    v1049 = v1048;
  }

  else
  {
    v1049 = -115;
  }

  v1050 = v1047 ^ v1049;
  v1051 = (v1048 ^ v1050) - ((2 * (v1048 ^ v1050) + 52) & 0xFFFFFFDA) + 7;
  *(STACK[0x2738] - 0xD56D201C0FCD03ALL) = v1050;
  v1052 = v1051 & 5;
  v1053 = v1051 ^ 0x6D;
  if (v1052 != 1)
  {
    v1053 = 0;
  }

  v1054 = v1053 + (*(STACK[0x2738] - 0xD56D201C0FCCFC6) ^ 0xFFFFFF8D);
  if (v1052 == 4)
  {
    v1055 = (v1051 ^ 0xFFFFFF92) + 1;
  }

  else
  {
    v1055 = 0;
  }

  v1056 = v1054 + v1055;
  v1057 = v1051 ^ 0xFFFFFFE0;
  if (v1052 == 5)
  {
    v1058 = v1057;
  }

  else
  {
    v1058 = -115;
  }

  v1059 = v1056 ^ v1058;
  *(STACK[0x2738] - 0xD56D201C0FCCFC6) = v1059;
  v1060 = (v1057 ^ v1059) - ((2 * (v1057 ^ v1059) + 52) & 0x7E) + 89;
  v1061 = v1060 & 5;
  v1062 = v1060 ^ 0xFFFFFFBF;
  if (v1061 != 1)
  {
    v1062 = 0;
  }

  v1063 = v1062 + (*(STACK[0x2738] - 0xD56D201C0FCCFFFLL) ^ 0xFFFFFF8D);
  if (v1061 == 4)
  {
    v1064 = (v1060 ^ 0x40) + 1;
  }

  else
  {
    v1064 = 0;
  }

  v1065 = v1063 + v1064;
  v1066 = v1060 ^ 0x32;
  if (v1061 == 5)
  {
    v1067 = v1066;
  }

  else
  {
    v1067 = -115;
  }

  v1068 = v1065 ^ v1067;
  v1069 = (v1066 ^ v1068) - ((2 * (v1066 ^ v1068) + 52) & 0xFFFFFFB2) + 115;
  *(STACK[0x2738] - 0xD56D201C0FCCFFFLL) = v1068;
  v1070 = v1069 ^ 0xFFFFFFD9;
  v1071 = v1069 & 5;
  if ((v1069 & 5) != 0)
  {
    v1072 = 0;
  }

  else
  {
    v1072 = (v1069 ^ 0x26) + 1;
  }

  if (v1071 != 5)
  {
    v1070 = 0;
  }

  v1073 = v1070 + (*(STACK[0x2738] - 0xD56D201C0FCD044) ^ 0xFFFFFF8D) + v1072;
  v1074 = v1069 ^ 0x54;
  if (v1071 != 1)
  {
    v1074 = -115;
  }

  v1075 = v1073 ^ v1074;
  v1076 = v1075 ^ v1069;
  *(STACK[0x2738] - 0xD56D201C0FCD044) = v1075;
  v1077 = STACK[0x2738];
  v1078 = *(STACK[0x2738] - 0xD56D201C0FCD04ELL);
  LODWORD(STACK[0x18B0]) = -1;
  v1079 = (v1076 ^ 0x54) + ~(2 * (((v1076 ^ 0x54) + 26) & 0x7D ^ v1076 & 1)) - 105;
  v1080 = v1079 ^ 0xFFFFFFFC;
  v1081 = v1078 ^ 0xFFFFFF8D;
  v1082 = v1079 & 5;
  if ((v1079 & 5) != 0)
  {
    v1080 = 0;
  }

  v1083 = v1080 + v1081;
  if (v1082 == 5)
  {
    v1084 = (v1079 ^ 3) + 1;
  }

  else
  {
    v1084 = 0;
  }

  v1085 = v1083 + v1084;
  v1086 = v1079 ^ 0x71;
  if (v1082 == 4)
  {
    v1087 = v1086;
  }

  else
  {
    v1087 = -115;
  }

  v1088 = v1085 ^ v1087;
  *(v1077 - 0xD56D201C0FCD04ELL) = v1088;
  v1089 = (v1086 ^ v1088) - 2 * (((v1086 ^ v1088) + 26) & 0x1F ^ (v1086 ^ v1088) & 1);
  v1090 = v1089 - 64;
  v1091 = v1089 - 72;
  v1092 = v1091 ^ 0x1E;
  v1093 = v1090 & 5;
  if (v1093)
  {
    v1092 = 0;
  }

  v1094 = v1092 + (*(STACK[0x2738] - 0xD56D201C0FCCFD3) ^ 0xFFFFFF8D);
  if (v1093 == 5)
  {
    v1095 = (v1091 ^ 0xFFFFFFE1) + 1;
  }

  else
  {
    v1095 = 0;
  }

  v1096 = v1094 + v1095;
  v1097 = v1091 ^ 0xFFFFFF93;
  if (v1093 == 4)
  {
    v1098 = v1097;
  }

  else
  {
    v1098 = -115;
  }

  v1099 = v1096 ^ v1098;
  *(STACK[0x2738] - 0xD56D201C0FCCFD3) = v1099;
  v1100 = (v1097 ^ v1099) - ((2 * (v1097 ^ v1099) + 52) & 0xFFFFFFBA) - 9;
  v1101 = v1100 & 5;
  v1102 = v1100 ^ 0x5D;
  if (v1101 != 1)
  {
    v1102 = 0;
  }

  v1103 = v1102 + (*(STACK[0x2738] - 0xD56D201C0FCD06ELL) ^ 0xFFFFFF8D);
  if (v1101 == 4)
  {
    v1104 = (v1100 ^ 0xFFFFFFA2) + 1;
  }

  else
  {
    v1104 = 0;
  }

  v1105 = v1103 + v1104;
  v1106 = v1100 ^ 0xFFFFFFD0;
  if (v1101 == 5)
  {
    v1107 = v1106;
  }

  else
  {
    v1107 = -115;
  }

  v1108 = v1105 ^ v1107;
  v1109 = v1106 ^ v1108;
  *(STACK[0x2738] - 0xD56D201C0FCD06ELL) = v1108;
  v1110 = (2 * v1109 + 52) & 0xFFFFFFA8;
  v1109 += 110;
  v1111 = v1109 - v1110;
  v1112 = v1111 ^ 0xFFFFFFD4;
  v1113 = v1109 & 5;
  if (v1113)
  {
    v1112 = 0;
  }

  v1114 = v1112 + (*(STACK[0x2738] - 0xD56D201C0FCCFADLL) ^ 0xFFFFFF8D);
  if (v1113 == 5)
  {
    v1115 = (v1111 ^ 0x2B) + 1;
  }

  else
  {
    v1115 = 0;
  }

  v1116 = v1114 + v1115;
  v1117 = v1111 ^ 0x59;
  if (v1113 == 4)
  {
    v1118 = v1117;
  }

  else
  {
    v1118 = -115;
  }

  v1119 = v1116 ^ v1118;
  *(STACK[0x2738] - 0xD56D201C0FCCFADLL) = v1119;
  v1120 = (v1117 ^ v1119) + ((-54 - 2 * (v1117 ^ v1119)) | 0x63) + 105;
  v1121 = v1120 ^ 0xFFFFFFCE;
  v1122 = v1120 & 5;
  if ((v1120 & 5) != 0)
  {
    v1121 = 0;
  }

  v1123 = v1121 + (*(STACK[0x2738] - 0xD56D201C0FCD061) ^ 0xFFFFFF8D);
  if (v1122 == 5)
  {
    v1124 = (v1120 ^ 0x31) + 1;
  }

  else
  {
    v1124 = 0;
  }

  v1125 = v1123 + v1124;
  v1126 = v1120 ^ 0x43;
  if (v1122 == 4)
  {
    v1127 = v1126;
  }

  else
  {
    v1127 = -115;
  }

  v1128 = v1125 ^ v1127;
  *(STACK[0x2738] - 0xD56D201C0FCD061) = v1128;
  v1129 = (v1126 ^ v1128) - ((2 * (v1126 ^ v1128) + 52) & 0x3E) + 57;
  v1130 = v1129 & 5;
  v1131 = v1129 ^ 0xFFFFFF9F;
  if (v1130 != 1)
  {
    v1131 = 0;
  }

  v1132 = v1131 + (*(STACK[0x2738] - 0xD56D201C0FCD01CLL) ^ 0xFFFFFF8D);
  if (v1130 == 4)
  {
    v1133 = (v1129 ^ 0x60) + 1;
  }

  else
  {
    v1133 = 0;
  }

  v1134 = v1132 + v1133;
  if (v1130 == 5)
  {
    v1135 = v1129 ^ 0x12;
  }

  else
  {
    v1135 = -115;
  }

  v1136 = v1134 ^ v1135;
  *(STACK[0x2738] - 0xD56D201C0FCD01CLL) = v1136;
  v1137 = (v1136 ^ v1129 ^ 0x12) - 2 * (((v1136 ^ v1129 ^ 0x12) + 2) & 5 ^ (v1136 ^ v1129) & 1) - 98;
  v1138 = v1137 ^ 4;
  v1139 = v1137 & 5;
  if ((v1137 & 5) != 0)
  {
    v1138 = 0;
  }

  v1140 = v1138 + (*(STACK[0x2738] - 0xD56D201C0FCD00FLL) ^ 0xFFFFFF8D);
  if (v1139 == 5)
  {
    v1141 = (v1137 ^ 0xFFFFFFFB) + 1;
  }

  else
  {
    v1141 = 0;
  }

  v1142 = v1140 + v1141;
  v1143 = v1137 ^ 0xFFFFFF89;
  if (v1139 == 4)
  {
    v1144 = v1143;
  }

  else
  {
    v1144 = -115;
  }

  v1145 = v1142 ^ v1144;
  v1146 = (v1143 ^ v1145) - ((2 * (v1143 ^ v1145) + 4) & 0xE) + 33;
  *(STACK[0x2738] - 0xD56D201C0FCD00FLL) = v1145;
  v1147 = v1146 & 5;
  v1148 = v1146 ^ 0xFFFFFF87;
  if (v1147 == 1)
  {
    v1149 = v1146 ^ 0xFFFFFF87;
  }

  else
  {
    v1149 = 0;
  }

  if (v1147 != 4)
  {
    v1148 = 0;
  }

  if (v1147 == 5)
  {
    v1150 = v1146 ^ 0xA;
  }

  else
  {
    v1150 = -115;
  }

  v1151 = (v1149 + (*(STACK[0x2738] - 0xD56D201C0FCCFF9) ^ 0xFFFFFF8D) - v1148) ^ v1150;
  v1152 = (v1151 ^ v1146 ^ 0xA) - 2 * (((v1151 ^ v1146 ^ 0xA) + 26) & 0x57 ^ (v1151 ^ v1146) & 1) - 16;
  *(STACK[0x2738] - 0xD56D201C0FCCFF9) = v1151;
  v1153 = v1152 ^ 0x56;
  v1154 = v1152 & 5;
  if ((v1152 & 5) != 0)
  {
    v1153 = 0;
  }

  v1155 = v1153 + (*(STACK[0x2738] - 0xD56D201C0FCD071) ^ 0xFFFFFF8D);
  if (v1154 == 5)
  {
    v1156 = (v1152 ^ 0xFFFFFFA9) + 1;
  }

  else
  {
    v1156 = 0;
  }

  v1157 = v1155 + v1156;
  v1158 = v1152 ^ 0xFFFFFFDB;
  if (v1154 == 4)
  {
    v1159 = v1158;
  }

  else
  {
    v1159 = -115;
  }

  v1160 = v1157 ^ v1159;
  v1161 = (v1158 ^ v1160) + ((74 - 2 * (v1158 ^ v1160)) | 0xFFFFFFA9) - 58;
  *(STACK[0x2738] - 0xD56D201C0FCD071) = v1160;
  v1162 = v1161 ^ 0x2B;
  v1163 = v1161 & 5;
  if ((v1161 & 5) != 0)
  {
    v1164 = 0;
  }

  else
  {
    v1164 = (v1161 ^ 0xFFFFFFD4) + 1;
  }

  if (v1163 != 5)
  {
    v1162 = 0;
  }

  v1165 = v1162 + (*(STACK[0x2738] - 0xD56D201C0FCD00BLL) ^ 0xFFFFFF8D) + v1164;
  v1166 = v1161 ^ 0xFFFFFFA6;
  if (v1163 == 1)
  {
    v1167 = v1166;
  }

  else
  {
    v1167 = -115;
  }

  v1168 = v1165 ^ v1167;
  *(STACK[0x2738] - 0xD56D201C0FCD00BLL) = v1168;
  v1169 = (v1166 ^ v1168) + ((-54 - 2 * (v1166 ^ v1168)) | 0x3B) + 125;
  v1170 = v1169 ^ 0xFFFFFFE2;
  v1171 = v1169 ^ 0x6F;
  v1172 = v1169 & 5;
  if ((v1169 & 5) != 0)
  {
    v1173 = -115;
  }

  else
  {
    v1173 = v1169 ^ 0x6F;
  }

  if (v1172 != 4)
  {
    v1170 = 0;
  }

  v1174 = v1169 ^ 0x1D;
  if (v1172 == 1)
  {
    v1175 = v1174 + 1;
  }

  else
  {
    v1175 = 0;
  }

  v1176 = (v1170 + (*(STACK[0x2738] - 0xD56D201C0FCD016) ^ 0xFFFFFF8D) + v1175) ^ v1173;
  *(STACK[0x2738] - 0xD56D201C0FCD016) = v1176;
  v1177 = (v1171 ^ v1176) - 2 * (((v1171 ^ v1176) + 26) & 0x4F ^ (v1171 ^ v1176) & 1) + 104;
  v1178 = v1177 ^ 0xFFFFFFCE;
  v1179 = v1177 & 5;
  if ((v1177 & 5) != 0)
  {
    v1178 = 0;
  }

  v1180 = v1178 + (*(STACK[0x2738] - 0xD56D201C0FCD067) ^ 0xFFFFFF8D);
  if (v1179 == 5)
  {
    v1181 = (v1177 ^ 0x31) + 1;
  }

  else
  {
    v1181 = 0;
  }

  v1182 = v1180 + v1181;
  v1183 = v1177 ^ 0x43;
  if (v1179 == 4)
  {
    v1184 = v1183;
  }

  else
  {
    v1184 = -115;
  }

  v1185 = v1182 ^ v1184;
  *(STACK[0x2738] - 0xD56D201C0FCD067) = v1185;
  v1186 = (v1183 ^ v1185) - ((2 * (v1183 ^ v1185) + 52) & 0x66);
  v1187 = v1186 - 43;
  v1188 = v1186 - 51;
  v1189 = v1188 ^ 0x33;
  v1190 = v1187 & 5;
  if (v1190)
  {
    v1191 = 0;
  }

  else
  {
    v1191 = (v1188 ^ 0xFFFFFFCC) + 1;
  }

  if (v1190 != 5)
  {
    v1189 = 0;
  }

  v1192 = v1188 ^ 0xFFFFFFBE;
  if (v1190 == 1)
  {
    v1193 = v1192;
  }

  else
  {
    v1193 = -115;
  }

  v1194 = (v1189 + (*(STACK[0x2738] - 0xD56D201C0FCCFE3) ^ 0xFFFFFF8D) + v1191) ^ v1193;
  v1195 = (v1192 ^ v1194) - ((2 * (v1192 ^ v1194) + 52) & 0xFFFFFFB2) - 13;
  *(STACK[0x2738] - 0xD56D201C0FCCFE3) = v1194;
  v1196 = v1195 ^ 0x59;
  v1197 = v1195 & 5;
  if ((v1195 & 5) != 0)
  {
    v1198 = 0;
  }

  else
  {
    v1198 = (v1195 ^ 0xFFFFFFA6) + 1;
  }

  if (v1197 != 5)
  {
    v1196 = 0;
  }

  v1199 = v1196 + (*(STACK[0x2738] - 0xD56D201C0FCD00CLL) ^ 0xFFFFFF8D) + v1198;
  v1200 = v1195 ^ 0xFFFFFFD4;
  if (v1197 == 1)
  {
    v1201 = v1200;
  }

  else
  {
    v1201 = -115;
  }

  v1202 = v1199 ^ v1201;
  v1203 = (v1200 ^ v1202) - ((2 * (v1200 ^ v1202) + 52) & 0xFFFFFFB4) - 12;
  *(STACK[0x2738] - 0xD56D201C0FCD00CLL) = v1202;
  v1204 = v1203 ^ 0x5A;
  v1205 = v1203 ^ 0xFFFFFFD7;
  v1206 = v1203 & 5;
  if ((v1203 & 5) != 0)
  {
    v1207 = -115;
  }

  else
  {
    v1207 = v1203 ^ 0xFFFFFFD7;
  }

  if (v1206 != 4)
  {
    v1204 = 0;
  }

  v1208 = v1203 ^ 0xFFFFFFA5;
  if (v1206 == 1)
  {
    v1209 = v1208 + 1;
  }

  else
  {
    v1209 = 0;
  }

  v1210 = (v1204 + (*(STACK[0x2738] - 0xD56D201C0FCCFC3) ^ 0xFFFFFF8D) + v1209) ^ v1207;
  *(STACK[0x2738] - 0xD56D201C0FCCFC3) = v1210;
  v1211 = (v1205 ^ v1210) - 2 * (((v1205 ^ v1210) + 26) & 0x27 ^ (v1205 ^ v1210) & 1);
  v1212 = v1211 - 56;
  v1213 = v1211 - 64;
  v1214 = v1213 ^ 0x26;
  v1215 = v1212 & 5;
  if (v1215)
  {
    v1214 = 0;
  }

  v1216 = v1214 + (*(STACK[0x2738] - 0xD56D201C0FCD022) ^ 0xFFFFFF8D);
  if (v1215 == 5)
  {
    v1217 = (v1213 ^ 0xFFFFFFD9) + 1;
  }

  else
  {
    v1217 = 0;
  }

  v1218 = v1216 + v1217;
  v1219 = v1213 ^ 0xFFFFFFAB;
  if (v1215 == 4)
  {
    v1220 = v1219;
  }

  else
  {
    v1220 = -115;
  }

  v1221 = v1218 ^ v1220;
  v1222 = (v1219 ^ v1221) - ((2 * (v1219 ^ v1221) + 52) & 0x66) + 77;
  *(STACK[0x2738] - 0xD56D201C0FCD022) = v1221;
  v1223 = v1222 ^ 0xFFFFFFB3;
  v1224 = v1222 & 5;
  if ((v1222 & 5) != 0)
  {
    v1225 = 0;
  }

  else
  {
    v1225 = (v1222 ^ 0x4C) + 1;
  }

  if (v1224 != 5)
  {
    v1223 = 0;
  }

  v1226 = v1223 + (*(STACK[0x2738] - 0xD56D201C0FCCFC7) ^ 0xFFFFFF8D) + v1225;
  v1227 = v1222 ^ 0x3E;
  if (v1224 == 1)
  {
    v1228 = v1227;
  }

  else
  {
    v1228 = -115;
  }

  v1229 = v1226 ^ v1228;
  *(STACK[0x2738] - 0xD56D201C0FCCFC7) = v1229;
  v1230 = (v1227 ^ v1229) - ((2 * (v1227 ^ v1229) + 52) & 0x4A) - 65;
  v1231 = v1230 & 5;
  v1232 = v1230 ^ 0x25;
  if (v1231 != 1)
  {
    v1232 = 0;
  }

  v1233 = v1232 + (*(STACK[0x2738] - 0xD56D201C0FCCFEDLL) ^ 0xFFFFFF8D);
  if (v1231 == 4)
  {
    v1234 = (v1230 ^ 0xFFFFFFDA) + 1;
  }

  else
  {
    v1234 = 0;
  }

  v1235 = v1233 + v1234;
  if (v1231 == 5)
  {
    v1236 = v1230 ^ 0xFFFFFFA8;
  }

  else
  {
    v1236 = -115;
  }

  v1237 = v1235 ^ v1236;
  v1238 = (v1237 ^ v1230 ^ 0xFFFFFFA8) - 2 * ((((v1237 ^ v1230) ^ 0xA8) + 26) & 0x3F ^ (v1237 ^ v1230) & 1) - 40;
  *(STACK[0x2738] - 0xD56D201C0FCCFEDLL) = v1237;
  v1239 = v1238 ^ 0x3E;
  v1240 = v1238 & 5;
  if ((v1238 & 5) != 0)
  {
    v1239 = 0;
  }

  v1241 = v1239 + (*(STACK[0x2738] - 0xD56D201C0FCCFF3) ^ 0xFFFFFF8D);
  if (v1240 == 5)
  {
    v1242 = (v1238 ^ 0xFFFFFFC1) + 1;
  }

  else
  {
    v1242 = 0;
  }

  v1243 = v1241 + v1242;
  v1244 = v1238 ^ 0xFFFFFFB3;
  if (v1240 == 4)
  {
    v1245 = v1244;
  }

  else
  {
    v1245 = -115;
  }

  v1246 = v1243 ^ v1245;
  v1247 = (v1244 ^ v1246) + ((-54 - 2 * (v1244 ^ v1246)) | 0x77) - 33;
  *(STACK[0x2738] - 0xD56D201C0FCCFF3) = v1246;
  v1248 = v1247 ^ 0x44;
  v1249 = v1247 & 5;
  if ((v1247 & 5) != 0)
  {
    v1248 = 0;
  }

  v1250 = v1248 + (*(STACK[0x2738] - 0xD56D201C0FCCFBBLL) ^ 0xFFFFFF8D);
  if (v1249 == 5)
  {
    v1251 = (v1247 ^ 0xFFFFFFBB) + 1;
  }

  else
  {
    v1251 = 0;
  }

  v1252 = v1250 + v1251;
  v1253 = v1247 ^ 0xFFFFFFC9;
  if (v1249 == 4)
  {
    v1254 = v1253;
  }

  else
  {
    v1254 = -115;
  }

  v1255 = v1252 ^ v1254;
  *(STACK[0x2738] - 0xD56D201C0FCCFBBLL) = v1255;
  v1256 = (v1253 ^ v1255) - ((2 * (v1253 ^ v1255) + 52) & 0x3A) + 55;
  v1257 = v1256 & 5;
  v1258 = v1256 ^ 0xFFFFFF9D;
  if (v1257 != 1)
  {
    v1258 = 0;
  }

  v1259 = v1258 + (*(STACK[0x2738] - 0xD56D201C0FCCFB3) ^ 0xFFFFFF8D);
  if (v1257 == 4)
  {
    v1260 = (v1256 ^ 0x62) + 1;
  }

  else
  {
    v1260 = 0;
  }

  v1261 = v1259 + v1260;
  v1262 = v1256 ^ 0x10;
  if (v1257 == 5)
  {
    v1263 = v1262;
  }

  else
  {
    v1263 = -115;
  }

  v1264 = v1261 ^ v1263;
  *(STACK[0x2738] - 0xD56D201C0FCCFB3) = v1264;
  v1265 = (v1262 ^ v1264) - ((2 * (v1262 ^ v1264) + 52) & 0xFFFFFF96) - 27;
  v1266 = v1265 ^ 0x4B;
  v1267 = v1265 & 5;
  if ((v1265 & 5) != 0)
  {
    v1268 = 0;
  }

  else
  {
    v1268 = (v1265 ^ 0xFFFFFFB4) + 1;
  }

  if (v1267 != 5)
  {
    v1266 = 0;
  }

  v1269 = v1266 + (*(STACK[0x2738] - 0xD56D201C0FCD000) ^ 0xFFFFFF8D) + v1268;
  v1270 = v1265 ^ 0xFFFFFFC6;
  if (v1267 == 1)
  {
    v1271 = v1270;
  }

  else
  {
    v1271 = -115;
  }

  v1272 = v1269 ^ v1271;
  *(STACK[0x2738] - 0xD56D201C0FCD000) = v1272;
  v1273 = (v1270 ^ v1272) - ((2 * (v1270 ^ v1272) + 52) & 0xFFFFFF8F) + 97;
  v1274 = v1273 & 5;
  v1275 = v1273 ^ 0xFFFFFFC7;
  if (v1274 != 1)
  {
    v1275 = 0;
  }

  v1276 = v1275 + (*(STACK[0x2738] - 0xD56D201C0FCD027) ^ 0xFFFFFF8D);
  if (v1274 == 4)
  {
    v1277 = (v1273 ^ 0x38) + 1;
  }

  else
  {
    v1277 = 0;
  }

  v1278 = v1276 + v1277;
  v1279 = v1273 ^ 0x4A;
  if (v1274 == 5)
  {
    v1280 = v1279;
  }

  else
  {
    v1280 = -115;
  }

  v1281 = v1278 ^ v1280;
  *(STACK[0x2738] - 0xD56D201C0FCD027) = v1281;
  v1282 = (v1279 ^ v1281) - ((2 * (v1279 ^ v1281) + 52) & 0xFFFFFFEF) - 111;
  v1283 = v1282 & 5;
  v1284 = v1282 ^ 0xFFFFFFF7;
  if (v1283 != 1)
  {
    v1284 = 0;
  }

  v1285 = v1284 + (*(STACK[0x2738] - 0xD56D201C0FCCFD0) ^ 0xFFFFFF8D);
  if (v1283 == 4)
  {
    v1286 = (v1282 ^ 8) + 1;
  }

  else
  {
    v1286 = 0;
  }

  v1287 = v1285 + v1286;
  v1288 = v1282 ^ 0x7A;
  if (v1283 == 5)
  {
    v1289 = v1288;
  }

  else
  {
    v1289 = -115;
  }

  v1290 = v1287 ^ v1289;
  v1291 = (v1288 ^ v1290) - ((2 * (v1288 ^ v1290) + 52) & 0x66) - 51;
  *(STACK[0x2738] - 0xD56D201C0FCCFD0) = v1290;
  v1292 = v1291 ^ 0x33;
  v1293 = v1291 & 5;
  if ((v1291 & 5) != 0)
  {
    v1294 = 0;
  }

  else
  {
    v1294 = (v1291 ^ 0xFFFFFFCC) + 1;
  }

  if (v1293 != 5)
  {
    v1292 = 0;
  }

  v1295 = v1292 + (*(STACK[0x2738] - 0xD56D201C0FCD026) ^ 0xFFFFFF8D) + v1294;
  v1296 = v1291 ^ 0xFFFFFFBE;
  if (v1293 == 1)
  {
    v1297 = v1296;
  }

  else
  {
    v1297 = -115;
  }

  v1298 = v1295 ^ v1297;
  *(STACK[0x2738] - 0xD56D201C0FCD026) = v1298;
  v1299 = (v1296 ^ v1298) + ((10 - 2 * (v1296 ^ v1298)) | 0xFFFFFFE9) - 90;
  v1300 = v1299 ^ 0xB;
  v1301 = v1299 & 5;
  if ((v1299 & 5) != 0)
  {
    v1302 = 0;
  }

  else
  {
    v1302 = (v1299 ^ 0xFFFFFFF4) + 1;
  }

  if (v1301 != 5)
  {
    v1300 = 0;
  }

  v1303 = v1300 + (*(STACK[0x2738] - 0xD56D201C0FCD004) ^ 0xFFFFFF8D) + v1302;
  v1304 = v1299 ^ 0xFFFFFF86;
  if (v1301 == 1)
  {
    v1305 = v1304;
  }

  else
  {
    v1305 = -115;
  }

  v1306 = v1303 ^ v1305;
  *(STACK[0x2738] - 0xD56D201C0FCD004) = v1306;
  v1307 = (v1304 ^ v1306) + ((74 - 2 * (v1304 ^ v1306)) | 0xFFFFFFAD) - 60;
  v1308 = v1307 ^ 0x29;
  v1309 = v1307 & 5;
  if ((v1307 & 5) != 0)
  {
    v1310 = 0;
  }

  else
  {
    v1310 = (v1307 ^ 0xFFFFFFD6) + 1;
  }

  if (v1309 != 5)
  {
    v1308 = 0;
  }

  v1311 = v1308 + (*(STACK[0x2738] - 0xD56D201C0FCD03ELL) ^ 0xFFFFFF8D) + v1310;
  v1312 = v1307 ^ 0xFFFFFFA4;
  if (v1309 == 1)
  {
    v1313 = v1312;
  }

  else
  {
    v1313 = -115;
  }

  v1314 = v1311 ^ v1313;
  *(STACK[0x2738] - 0xD56D201C0FCD03ELL) = v1314;
  v1315 = (v1312 ^ v1314) - ((2 * (v1312 ^ v1314) + 52) & 0x5C) + 72;
  v1316 = v1315 ^ 0xFFFFFFAE;
  v1317 = v1315 & 5;
  if ((v1315 & 5) != 0)
  {
    v1316 = 0;
  }

  v1318 = v1316 + (*(STACK[0x2738] - 0xD56D201C0FCCFE6) ^ 0xFFFFFF8D);
  if (v1317 == 5)
  {
    v1319 = (v1315 ^ 0x51) + 1;
  }

  else
  {
    v1319 = 0;
  }

  v1320 = v1318 + v1319;
  v1321 = v1315 ^ 0x23;
  if (v1317 == 4)
  {
    v1322 = v1321;
  }

  else
  {
    v1322 = -115;
  }

  v1323 = v1320 ^ v1322;
  *(STACK[0x2738] - 0xD56D201C0FCCFE6) = v1323;
  v1324 = (v1321 ^ v1323) - ((2 * (v1321 ^ v1323) + 52) & 0xFFFFFFA4) - 20;
  v1325 = v1324 ^ 0x52;
  v1326 = v1324 ^ 0xFFFFFFDF;
  v1327 = v1324 & 5;
  if ((v1324 & 5) != 0)
  {
    v1328 = -115;
  }

  else
  {
    v1328 = v1324 ^ 0xFFFFFFDF;
  }

  if (v1327 != 4)
  {
    v1325 = 0;
  }

  v1329 = v1324 ^ 0xFFFFFFAD;
  if (v1327 == 1)
  {
    v1330 = v1329 + 1;
  }

  else
  {
    v1330 = 0;
  }

  v1331 = (v1325 + (*(STACK[0x2738] - 0xD56D201C0FCD05BLL) ^ 0xFFFFFF8D) + v1330) ^ v1328;
  v1332 = (v1326 ^ v1331) + ((-54 - 2 * (v1326 ^ v1331)) | 0x6D) - 28;
  *(STACK[0x2738] - 0xD56D201C0FCD05BLL) = v1331;
  v1333 = v1332 ^ 0x49;
  v1334 = v1332 & 5;
  if ((v1332 & 5) != 0)
  {
    v1335 = 0;
  }

  else
  {
    v1335 = (v1332 ^ 0xFFFFFFB6) + 1;
  }

  if (v1334 != 5)
  {
    v1333 = 0;
  }

  v1336 = v1333 + (*(STACK[0x2738] - 0xD56D201C0FCD054) ^ 0xFFFFFF8D) + v1335;
  v1337 = v1332 ^ 0xFFFFFFC4;
  if (v1334 == 1)
  {
    v1338 = v1337;
  }

  else
  {
    v1338 = -115;
  }

  v1339 = v1336 ^ v1338;
  *(STACK[0x2738] - 0xD56D201C0FCD054) = v1339;
  v1340 = (v1337 ^ v1339) + ((-54 - 2 * (v1337 ^ v1339)) | 0x5D) + 108;
  v1341 = v1340 ^ 0xFFFFFFD1;
  v1342 = v1340 & 5;
  if ((v1340 & 5) != 0)
  {
    v1343 = 0;
  }

  else
  {
    v1343 = (v1340 ^ 0x2E) + 1;
  }

  if (v1342 != 5)
  {
    v1341 = 0;
  }

  v1344 = v1341 + (*(STACK[0x2738] - 0xD56D201C0FCD06FLL) ^ 0xFFFFFF8D) + v1343;
  v1345 = v1340 ^ 0x5C;
  if (v1342 == 1)
  {
    v1346 = v1345;
  }

  else
  {
    v1346 = -115;
  }

  v1347 = v1344 ^ v1346;
  *(STACK[0x2738] - 0xD56D201C0FCD06FLL) = v1347;
  v1348 = v1345 ^ v1347;
  v1349 = (2 * v1348 + 52) & 0x30;
  v1348 -= 78;
  v1350 = v1348 - v1349;
  v1351 = v1350 ^ 0x18;
  v1352 = v1350 ^ 0xFFFFFF95;
  v1353 = v1348 & 5;
  if (v1353)
  {
    v1354 = -115;
  }

  else
  {
    v1354 = v1350 ^ 0xFFFFFF95;
  }

  if (v1353 != 4)
  {
    v1351 = 0;
  }

  v1355 = v1350 ^ 0xFFFFFFE7;
  if (v1353 == 1)
  {
    v1356 = v1355 + 1;
  }

  else
  {
    v1356 = 0;
  }

  v1357 = (v1351 + (*(STACK[0x2738] - 0xD56D201C0FCD015) ^ 0xFFFFFF8D) + v1356) ^ v1354;
  *(STACK[0x2738] - 0xD56D201C0FCD015) = v1357;
  v1358 = v1352 ^ v1357;
  v1359 = (2 * v1358 + 52) & 0xFFFFFFE0;
  v1358 += 10;
  v1360 = v1358 - v1359;
  v1361 = v1360 ^ 0x70;
  v1362 = v1360 ^ 0xFFFFFFFD;
  v1363 = v1358 & 5;
  if (v1363)
  {
    v1364 = -115;
  }

  else
  {
    v1364 = v1360 ^ 0xFFFFFFFD;
  }

  if (v1363 != 4)
  {
    v1361 = 0;
  }

  v1365 = v1360 ^ 0xFFFFFF8F;
  if (v1363 == 1)
  {
    v1366 = v1365 + 1;
  }

  else
  {
    v1366 = 0;
  }

  v1367 = (v1361 + (*(STACK[0x2738] - 0xD56D201C0FCCFB7) ^ 0xFFFFFF8D) + v1366) ^ v1364;
  v1368 = (v1362 ^ v1367) + ((74 - 2 * (v1362 ^ v1367)) | 0xFFFFFFA1) - 54;
  *(STACK[0x2738] - 0xD56D201C0FCCFB7) = v1367;
  v1369 = v1368 & 5;
  v1370 = v1368 ^ 0x2F;
  if (v1369 != 1)
  {
    v1370 = 0;
  }

  v1371 = v1370 + (*(STACK[0x2738] - 0xD56D201C0FCD06BLL) ^ 0xFFFFFF8D);
  if (v1369 == 4)
  {
    v1372 = (v1368 ^ 0xFFFFFFD0) + 1;
  }

  else
  {
    v1372 = 0;
  }

  v1373 = v1371 + v1372;
  v1374 = v1368 ^ 0xFFFFFFA2;
  if (v1369 == 5)
  {
    v1375 = v1374;
  }

  else
  {
    v1375 = -115;
  }

  v1376 = v1373 ^ v1375;
  *(STACK[0x2738] - 0xD56D201C0FCD06BLL) = v1376;
  v1377 = (v1374 ^ v1376) - ((2 * (v1374 ^ v1376) + 52) & 0xFFFFFF94) + 100;
  v1378 = v1377 ^ 0xFFFFFFCA;
  v1379 = v1377 ^ 0x47;
  v1380 = v1377 & 5;
  if ((v1377 & 5) != 0)
  {
    v1381 = -115;
  }

  else
  {
    v1381 = v1377 ^ 0x47;
  }

  if (v1380 != 4)
  {
    v1378 = 0;
  }

  v1382 = v1377 ^ 0x35;
  if (v1380 == 1)
  {
    v1383 = v1382 + 1;
  }

  else
  {
    v1383 = 0;
  }

  v1384 = (v1378 + (*(STACK[0x2738] - 0xD56D201C0FCCFF6) ^ 0xFFFFFF8D) + v1383) ^ v1381;
  v1385 = (2 * (v1379 ^ v1384) + 52) & 0xFFFFFFC0;
  v1386 = (v1379 ^ v1384) - 6;
  *(STACK[0x2738] - 0xD56D201C0FCCFF6) = v1384;
  v1387 = STACK[0x2738];
  v1388 = v1386 - v1385;
  v1389 = v1388 ^ 0x60;
  if ((v1386 & 5) != 4)
  {
    v1389 = 0;
  }

  v1390 = v1389 + (*(STACK[0x2738] - 0xD56D201C0FCD014) ^ 0xFFFFFF8D);
  if ((v1386 & 5) == 1)
  {
    v1391 = (v1388 ^ 0xFFFFFF9F) + 1;
  }

  else
  {
    v1391 = 0;
  }

  v1392 = v1390 + v1391 - ((2 * (v1390 + v1391)) & 0x1A) - 115;
  v1393 = v1388 ^ 0xFFFFFFED;
  v1394 = (v0 ^ 0x274A5EE0) + ((v0 ^ 0x274A5EE0u) >> 10) + (((v0 ^ 0x274A5EE0) + ((v0 ^ 0x274A5EE0u) >> 10)) >> 8);
  LODWORD(STACK[0x18A0]) = v1394;
  v1395 = (v1394 ^ 0x36FB5BBE) + ((v1394 ^ 0x36FB5BBE) >> 12) + (((v1394 ^ 0x36FB5BBE) + ((v1394 ^ 0x36FB5BBE) >> 12)) >> 6);
  LODWORD(STACK[0x17D0]) = v1395;
  LODWORD(STACK[0x1790]) = (2 * v1394) & 0x46B18A0C;
  if ((v1386 & 5) != 0)
  {
    v1396 = v1392;
  }

  else
  {
    v1396 = (v1393 ^ v1392) - ((2 * (v1393 ^ v1392)) & 0x1A) - 115;
  }

  LODWORD(STACK[0x17B0]) = (2 * v1395) & 0xA4EC784A;
  v1397 = v1395 + 1148246220 + ((v1395 + 1148246220) >> 15) + ((v1395 + 1148246220 + ((v1395 + 1148246220) >> 15)) >> 2);
  LODWORD(STACK[0x1850]) = v1397;
  v1398 = v1397 + 574884598 - ((v1397 + 574884598) >> 11) - ((v1397 + 574884598 - ((v1397 + 574884598) >> 11)) >> 8);
  LODWORD(STACK[0x1780]) = v1398;
  LODWORD(STACK[0x1770]) = (2 * v1398) & 0xFF096700;
  v1399 = v1398 + 1626436627 + ((v1398 + 1626436627) >> 11) - ((v1398 + 1626436627 + ((v1398 + 1626436627) >> 11)) >> 7);
  LODWORD(STACK[0x17A0]) = (2 * v1397) & 0xC671B4E6;
  LODWORD(STACK[0x1820]) = v1399;
  v1400 = (v1399 ^ 0x6C9759A8) - ((v1399 ^ 0x6C9759A8) >> 11) + (((v1399 ^ 0x6C9759A8) - ((v1399 ^ 0x6C9759A8) >> 11)) >> 2);
  *(v1387 - 0xD56D201C0FCD014) = v1396;
  v1401 = (v1393 ^ v1396) - 2 * (((v1393 ^ v1396) + 26) & 0x37 ^ (v1393 ^ v1396) & 1) + 80;
  v1402 = v1401 ^ 0xFFFFFFB6;
  v1403 = v1401 & 5;
  if ((v1401 & 5) != 0)
  {
    v1402 = 0;
  }

  v1404 = v1402 + (*(STACK[0x2738] - 0xD56D201C0FCD024) ^ 0xFFFFFF8D);
  if (v1403 == 5)
  {
    v1405 = (v1401 ^ 0x49) + 1;
  }

  else
  {
    v1405 = 0;
  }

  v1406 = v1404 + v1405;
  v1407 = v1401 ^ 0x3B;
  if (v1403 == 4)
  {
    v1408 = v1407;
  }

  else
  {
    v1408 = -115;
  }

  v1409 = v1406 ^ v1408;
  *(STACK[0x2738] - 0xD56D201C0FCD024) = v1409;
  v1410 = (v1407 ^ v1409) + ((10 - 2 * (v1407 ^ v1409)) | 0xFFFFFFC9) + 54;
  v1411 = v1410 ^ 0xFFFFFF9B;
  v1412 = v1410 & 5;
  if ((v1410 & 5) != 0)
  {
    v1413 = 0;
  }

  else
  {
    v1413 = (v1410 ^ 0x64) + 1;
  }

  if (v1412 != 5)
  {
    v1411 = 0;
  }

  v1414 = v1411 + (*(STACK[0x2738] - 0xD56D201C0FCD02DLL) ^ 0xFFFFFF8D) + v1413;
  v1415 = v1410 ^ 0x16;
  if (v1412 != 1)
  {
    v1415 = -115;
  }

  v1416 = v1414 ^ v1415;
  *(STACK[0x2738] - 0xD56D201C0FCD02DLL) = v1416;
  v1417 = v1410 ^ 0xFFFFFFE9 ^ v1416;
  v1418 = v1417 - 26;
  v1419 = (v1417 - 26) & 5;
  v1420 = (v1417 - 26) ^ 0x7F;
  if (v1419 != 1)
  {
    v1420 = 0;
  }

  v1421 = v1417 + 103;
  if (v1419 != 4)
  {
    v1421 = 0;
  }

  v1422 = v1420 + (*(STACK[0x2738] - 0xD56D201C0FCD052) ^ 0x8D) + v1421;
  v1423 = v1418 ^ 0xF2;
  if (v1419 != 5)
  {
    v1423 = -115;
  }

  v1424 = v1422 ^ v1423;
  v1425 = (v1424 ^ v1418 ^ 0xF2) + (~(2 * (v1424 ^ v1418)) | 0xFD) - 100;
  *(STACK[0x2738] - 0xD56D201C0FCD052) = v1424;
  v1426 = v1425 ^ 1;
  v1427 = v1425 & 5;
  if ((v1425 & 5) != 0)
  {
    v1428 = 0;
  }

  else
  {
    v1428 = (v1425 ^ 0xFE) + 1;
  }

  if (v1427 != 5)
  {
    v1426 = 0;
  }

  v1429 = v1426 + (*(STACK[0x2738] - 0xD56D201C0FCD075) ^ 0x8D) + v1428;
  v1430 = v1425 ^ 0x8C;
  if (v1427 == 1)
  {
    v1431 = v1430;
  }

  else
  {
    v1431 = -115;
  }

  v1432 = v1429 ^ v1431;
  *(STACK[0x2738] - 0xD56D201C0FCD075) = v1432;
  v1433 = (v1430 ^ v1432) - ((2 * (v1430 ^ v1432) + 52) & 0xE7) - 115;
  v1434 = v1433 ^ 0xF3;
  v1435 = v1433 & 5;
  if ((v1433 & 5) != 0)
  {
    v1436 = 0;
  }

  else
  {
    v1436 = (v1433 ^ 0xC) + 1;
  }

  if (v1435 != 5)
  {
    v1434 = 0;
  }

  v1437 = v1434 + (*(STACK[0x2738] - 0xD56D201C0FCCFC5) ^ 0x8D) + v1436;
  v1438 = v1433 ^ 0x7E;
  if (v1435 == 1)
  {
    v1439 = v1438;
  }

  else
  {
    v1439 = -115;
  }

  v1440 = v1437 ^ v1439;
  *(STACK[0x2738] - 0xD56D201C0FCCFC5) = v1440;
  v1441 = (v1438 ^ v1440) - ((2 * (v1438 ^ v1440) + 52) & 0x76) - 43;
  v1442 = v1441 ^ 0x3B;
  v1443 = v1441 & 5;
  if ((v1441 & 5) != 0)
  {
    v1444 = 0;
  }

  else
  {
    v1444 = (v1441 ^ 0xC4) + 1;
  }

  if (v1443 != 5)
  {
    v1442 = 0;
  }

  v1445 = v1442 + (*(STACK[0x2738] - 0xD56D201C0FCCFBFLL) ^ 0x8D) + v1444;
  v1446 = v1441 ^ 0xB6;
  if (v1443 == 1)
  {
    v1447 = v1446;
  }

  else
  {
    v1447 = -115;
  }

  v1448 = v1445 ^ v1447;
  v1449 = (v1446 ^ v1448) - ((2 * (v1446 ^ v1448) + 52) & 0x66) + 77;
  *(STACK[0x2738] - 0xD56D201C0FCCFBFLL) = v1448;
  v1450 = v1449 ^ 0xB3;
  v1451 = v1449 & 5;
  if ((v1449 & 5) != 0)
  {
    v1452 = 0;
  }

  else
  {
    v1452 = (v1449 ^ 0x4C) + 1;
  }

  if (v1451 != 5)
  {
    v1450 = 0;
  }

  v1453 = v1450 + (*(STACK[0x2738] - 0xD56D201C0FCD020) ^ 0x8D) + v1452;
  v1454 = v1449 ^ 0x3E;
  if (v1451 != 1)
  {
    v1454 = -115;
  }

  v1455 = v1453 ^ v1454;
  *(STACK[0x2738] - 0xD56D201C0FCD020) = v1455;
  v1456 = (v1455 ^ v1449 ^ 0x3E) - 2 * (((v1455 ^ v1449 ^ 0x3E) + 26) & 0x31 ^ (v1455 ^ v1449) & 1) - 54;
  v1457 = v1456 ^ 0x30;
  v1458 = v1456 ^ 0xBD;
  v1459 = v1456 & 5;
  if ((v1456 & 5) != 0)
  {
    v1460 = -115;
  }

  else
  {
    v1460 = v1456 ^ 0xBD;
  }

  if (v1459 != 4)
  {
    v1457 = 0;
  }

  v1461 = v1456 ^ 0xCF;
  if (v1459 == 1)
  {
    v1462 = v1461 + 1;
  }

  else
  {
    v1462 = 0;
  }

  v1463 = (v1457 + (*(STACK[0x2738] - 0xD56D201C0FCD008) ^ 0x8D) + v1462) ^ v1460;
  *(STACK[0x2738] - 0xD56D201C0FCD008) = v1463;
  v1464 = (v1458 ^ v1463) - ((2 * (v1458 ^ v1463) + 52) & 0x9F);
  v1465 = v1464 - 15;
  v1466 = v1464 - 23;
  v1467 = v1465 & 5;
  v1468 = v1466 ^ 0x4F;
  if (v1467 != 1)
  {
    v1468 = 0;
  }

  v1469 = v1468 + (*(STACK[0x2738] - 0xD56D201C0FCD033) ^ 0x8D);
  if (v1467 == 4)
  {
    v1470 = (v1466 ^ 0xB0) + 1;
  }

  else
  {
    v1470 = 0;
  }

  v1471 = v1469 + v1470;
  v1472 = v1466 ^ 0xC2;
  if (v1467 == 5)
  {
    v1473 = v1472;
  }

  else
  {
    v1473 = -115;
  }

  v1474 = v1471 ^ v1473;
  v1475 = v1472 ^ v1474;
  v1476 = (2 * v1475 + 52) & 0x48;
  v1475 -= 66;
  *(STACK[0x2738] - 0xD56D201C0FCD033) = v1474;
  v1477 = v1475 - v1476;
  v1478 = v1477 ^ 0x24;
  v1479 = v1475 & 5;
  if (v1479)
  {
    v1478 = 0;
  }

  v1480 = v1478 + (*(STACK[0x2738] - 0xD56D201C0FCCFD7) ^ 0x8D);
  if (v1479 == 5)
  {
    v1481 = (v1477 ^ 0xDB) + 1;
  }

  else
  {
    v1481 = 0;
  }

  v1482 = v1480 + v1481;
  v1483 = v1477 ^ 0xA9;
  if (v1479 == 4)
  {
    v1484 = v1483;
  }

  else
  {
    v1484 = -115;
  }

  v1485 = v1482 ^ v1484;
  *(STACK[0x2738] - 0xD56D201C0FCCFD7) = v1485;
  v1486 = (v1483 ^ v1485) - 118;
  v1487 = v1486 - ((2 * (v1483 ^ v1485) + 52) & 0xE0);
  v1488 = v1487 ^ 0xF0;
  v1489 = v1487 ^ 0x7D;
  v1490 = v1486 & 5;
  if (v1490)
  {
    v1491 = -115;
  }

  else
  {
    v1491 = v1487 ^ 0x7D;
  }

  if (v1490 != 4)
  {
    v1488 = 0;
  }

  v1492 = v1487 ^ 0xF;
  if (v1490 == 1)
  {
    v1493 = v1492 + 1;
  }

  else
  {
    v1493 = 0;
  }

  v1494 = (v1488 + (*(STACK[0x2738] - 0xD56D201C0FCD01ALL) ^ 0x8D) + v1493) ^ v1491;
  *(STACK[0x2738] - 0xD56D201C0FCD01ALL) = v1494;
  v1495 = (v1489 ^ v1494) - ((2 * (v1489 ^ v1494) + 4) & 0xA) + 31;
  v1496 = v1495 & 5;
  v1497 = v1495 ^ 0x85;
  if (v1496 != 1)
  {
    v1497 = 0;
  }

  v1498 = v1497 + (*(STACK[0x2738] - 0xD56D201C0FCCFF7) ^ 0x8D);
  if (v1496 == 4)
  {
    v1499 = (v1495 ^ 0x7A) + 1;
  }

  else
  {
    v1499 = 0;
  }

  v1500 = v1498 + v1499;
  v1501 = v1495 ^ 8;
  if (v1496 == 5)
  {
    v1502 = v1501;
  }

  else
  {
    v1502 = -115;
  }

  v1503 = v1500 ^ v1502;
  *(STACK[0x2738] - 0xD56D201C0FCCFF7) = v1503;
  v1504 = (v1501 ^ v1503) - ((2 * (v1501 ^ v1503) + 52) & 0x5E) - 55;
  v1505 = v1504 & 5;
  v1506 = v1504 ^ 0x2F;
  if (v1505 != 1)
  {
    v1506 = 0;
  }

  v1507 = v1506 + (*(STACK[0x2738] - 0xD56D201C0FCCFACLL) ^ 0x8D);
  if (v1505 == 4)
  {
    v1508 = (v1504 ^ 0xD0) + 1;
  }

  else
  {
    v1508 = 0;
  }

  v1509 = v1507 + v1508;
  v1510 = v1504 ^ 0xA2;
  if (v1505 == 5)
  {
    v1511 = v1510;
  }

  else
  {
    v1511 = -115;
  }

  v1512 = v1509 ^ v1511;
  v1513 = (v1510 ^ v1512) + ((-54 - 2 * (v1510 ^ v1512)) | 0x71) - 30;
  v1514 = v1513 & 5;
  *(STACK[0x2738] - 0xD56D201C0FCCFACLL) = v1512;
  v1515 = v1513 ^ 0x47;
  if (v1514 != 1)
  {
    v1515 = 0;
  }

  v1516 = v1515 + (*(STACK[0x2738] - 0xD56D201C0FCD04ALL) ^ 0x8D);
  if (v1514 == 4)
  {
    v1517 = (v1513 ^ 0xB8) + 1;
  }

  else
  {
    v1517 = 0;
  }

  v1518 = v1516 + v1517;
  v1519 = v1513 ^ 0xCA;
  if (v1514 == 5)
  {
    v1520 = v1519;
  }

  else
  {
    v1520 = -115;
  }

  v1521 = v1518 ^ v1520;
  *(STACK[0x2738] - 0xD56D201C0FCD04ALL) = v1521;
  v1522 = (v1519 ^ v1521) - ((2 * (v1519 ^ v1521) + 52) & 0x92) - 29;
  v1523 = v1522 ^ 0x49;
  v1524 = v1522 & 5;
  if ((v1522 & 5) != 0)
  {
    v1525 = 0;
  }

  else
  {
    v1525 = (v1522 ^ 0xB6) + 1;
  }

  if (v1524 != 5)
  {
    v1523 = 0;
  }

  v1526 = v1523 + (*(STACK[0x2738] - 0xD56D201C0FCD066) ^ 0x8D) + v1525;
  v1527 = v1522 ^ 0xC4;
  if (v1524 == 1)
  {
    v1528 = v1522 ^ 0xC4;
  }

  else
  {
    v1528 = -115;
  }

  v1529 = v1526 ^ v1528;
  *(STACK[0x2738] - 0xD56D201C0FCD066) = v1529;
  LODWORD(STACK[0x1840]) = v1400;
  v1530 = (v1527 ^ v1529) + ((-54 - 2 * (v1527 ^ v1529)) | 0x5B) + 109;
  v1531 = v1530 ^ 0xD2;
  v1532 = v1530 ^ 0x5F;
  v1533 = v1530 & 5;
  if ((v1530 & 5) != 0)
  {
    v1534 = -115;
  }

  else
  {
    v1534 = v1530 ^ 0x5F;
  }

  if (v1533 != 4)
  {
    v1531 = 0;
  }

  v1535 = v1530 ^ 0x2D;
  if (v1533 == 1)
  {
    v1536 = v1535 + 1;
  }

  else
  {
    v1536 = 0;
  }

  v1537 = (v1531 + (*(STACK[0x2738] - 0xD56D201C0FCCFE2) ^ 0x8D) + v1536) ^ v1534;
  *(STACK[0x2738] - 0xD56D201C0FCCFE2) = v1537;
  v1538 = (v1532 ^ v1537) - ((2 * (v1532 ^ v1537) + 52) & 0xA6) + 109;
  v1539 = v1538 ^ 0xD3;
  v1540 = v1538 & 5;
  if ((v1538 & 5) != 0)
  {
    v1541 = 0;
  }

  else
  {
    v1541 = (v1538 ^ 0x2C) + 1;
  }

  if (v1540 != 5)
  {
    v1539 = 0;
  }

  v1542 = v1539 + (*(STACK[0x2738] - 0xD56D201C0FCD036) ^ 0x8D) + v1541;
  v1543 = v1538 ^ 0x5E;
  if (v1540 != 1)
  {
    v1543 = -115;
  }

  v1544 = v1542 ^ v1543;
  *(STACK[0x2738] - 0xD56D201C0FCD036) = v1544;
  v1545 = (v1544 ^ v1538 ^ 0x5E) - 2 * (((v1544 ^ v1538 ^ 0x5E) + 26) & 0x6F ^ (v1544 ^ v1538) & 1) + 8;
  v1546 = v1545 ^ 0x6E;
  v1547 = v1545 & 5;
  if ((v1545 & 5) != 0)
  {
    v1546 = 0;
  }

  v1548 = v1546 + (*(STACK[0x2738] - 0xD56D201C0FCD005) ^ 0x8D);
  if (v1547 == 5)
  {
    v1549 = (v1545 ^ 0x91) + 1;
  }

  else
  {
    v1549 = 0;
  }

  v1550 = v1548 + v1549;
  v1551 = v1545 ^ 0xE3;
  if (v1547 == 4)
  {
    v1552 = v1551;
  }

  else
  {
    v1552 = -115;
  }

  v1553 = v1550 ^ v1552;
  *(STACK[0x2738] - 0xD56D201C0FCD005) = v1553;
  v1554 = (v1551 ^ v1553) - 2 * (((v1551 ^ v1553) + 26) & 0x37 ^ (v1551 ^ v1553) & 1);
  v1555 = v1554 + 88;
  v1556 = v1554 + 80;
  v1557 = v1556 ^ 0xB6;
  v1558 = v1555 & 5;
  if (v1558)
  {
    v1557 = 0;
  }

  v1559 = v1557 + (*(STACK[0x2738] - 0xD56D201C0FCCFDDLL) ^ 0x8D);
  if (v1558 == 5)
  {
    v1560 = (v1556 ^ 0x49) + 1;
  }

  else
  {
    v1560 = 0;
  }

  v1561 = v1559 + v1560;
  v1562 = v1556 ^ 0x3B;
  if (v1558 == 4)
  {
    v1563 = v1562;
  }

  else
  {
    v1563 = -115;
  }

  v1564 = v1561 ^ v1563;
  *(STACK[0x2738] - 0xD56D201C0FCCFDDLL) = v1564;
  v1565 = (v1562 ^ v1564) - ((2 * (v1562 ^ v1564) + 52) & 0x76) + 85;
  v1566 = v1565 ^ 0xBB;
  v1567 = v1565 & 5;
  if ((v1565 & 5) != 0)
  {
    v1568 = 0;
  }

  else
  {
    v1568 = (v1565 ^ 0x44) + 1;
  }

  if (v1567 != 5)
  {
    v1566 = 0;
  }

  v1569 = v1566 + (*(STACK[0x2738] - 0xD56D201C0FCCFDCLL) ^ 0x8D) + v1568;
  v1570 = v1565 ^ 0x36;
  if (v1567 == 1)
  {
    v1571 = v1570;
  }

  else
  {
    v1571 = -115;
  }

  v1572 = v1569 ^ v1571;
  v1573 = (v1570 ^ v1572) - ((2 * (v1570 ^ v1572) + 52) & 0x46);
  v1574 = v1573 - 59;
  v1575 = v1573 - 67;
  *(STACK[0x2738] - 0xD56D201C0FCCFDCLL) = v1572;
  v1576 = v1575 ^ 0x23;
  v1577 = v1574 & 5;
  if (v1577)
  {
    v1578 = 0;
  }

  else
  {
    v1578 = (v1575 ^ 0xDC) + 1;
  }

  if (v1577 != 5)
  {
    v1576 = 0;
  }

  v1579 = v1575 ^ 0xAE;
  if (v1577 == 1)
  {
    v1580 = v1579;
  }

  else
  {
    v1580 = -115;
  }

  v1581 = (v1576 + (*(STACK[0x2738] - 0xD56D201C0FCCFEFLL) ^ 0x8D) + v1578) ^ v1580;
  *(STACK[0x2738] - 0xD56D201C0FCCFEFLL) = v1581;
  v1582 = (v1579 ^ v1581) - ((2 * (v1579 ^ v1581) + 52) & 0x3A) - 73;
  v1583 = v1582 & 5;
  v1584 = v1582 ^ 0x1D;
  if (v1583 != 1)
  {
    v1584 = 0;
  }

  v1585 = v1584 + (*(STACK[0x2738] - 0xD56D201C0FCCFAELL) ^ 0x8D);
  if (v1583 == 4)
  {
    v1586 = (v1582 ^ 0xE2) + 1;
  }

  else
  {
    v1586 = 0;
  }

  v1587 = v1585 + v1586;
  v1588 = v1582 ^ 0x90;
  if (v1583 == 5)
  {
    v1589 = v1588;
  }

  else
  {
    v1589 = -115;
  }

  v1590 = v1587 ^ v1589;
  *(STACK[0x2738] - 0xD56D201C0FCCFAELL) = v1590;
  v1591 = (v1588 ^ v1590) + ((10 - 2 * (v1588 ^ v1590)) | 0xC1) - 70;
  v1592 = v1591 & 5;
  v1593 = v1591 ^ 0x1F;
  if (v1592 != 1)
  {
    v1593 = 0;
  }

  v1594 = v1593 + (*(STACK[0x2738] - 0xD56D201C0FCCFF1) ^ 0x8D);
  if (v1592 == 4)
  {
    v1595 = (v1591 ^ 0xE0) + 1;
  }

  else
  {
    v1595 = 0;
  }

  v1596 = v1594 + v1595;
  v1597 = v1591 ^ 0x92;
  if (v1592 == 5)
  {
    v1598 = v1597;
  }

  else
  {
    v1598 = -115;
  }

  v1599 = v1596 ^ v1598;
  *(STACK[0x2738] - 0xD56D201C0FCCFF1) = v1599;
  v1600 = (v1597 ^ v1599) - ((2 * (v1597 ^ v1599) + 20) & 0x1E);
  v1601 = v1600 + 49;
  v1602 = v1600 + 41;
  v1603 = v1601 & 5;
  v1604 = v1602 ^ 0x8F;
  if (v1603 != 1)
  {
    v1604 = 0;
  }

  v1605 = v1604 + (*(STACK[0x2738] - 0xD56D201C0FCD031) ^ 0x8D);
  if (v1603 == 4)
  {
    v1606 = (v1602 ^ 0x70) + 1;
  }

  else
  {
    v1606 = 0;
  }

  v1607 = v1605 + v1606;
  v1608 = v1602 ^ 2;
  if (v1603 == 5)
  {
    v1609 = v1608;
  }

  else
  {
    v1609 = -115;
  }

  v1610 = v1607 ^ v1609;
  *(STACK[0x2738] - 0xD56D201C0FCD031) = v1610;
  v1611 = (v1608 ^ v1610) - ((2 * (v1608 ^ v1610) + 52) & 0x5E);
  v1612 = v1611 + 81;
  v1613 = v1611 + 73;
  v1614 = v1612 & 5;
  v1615 = v1613 ^ 0xAF;
  if (v1614 != 1)
  {
    v1615 = 0;
  }

  v1616 = v1615 + (*(STACK[0x2738] - 0xD56D201C0FCD001) ^ 0x8D);
  if (v1614 == 4)
  {
    v1617 = (v1613 ^ 0x50) + 1;
  }

  else
  {
    v1617 = 0;
  }

  v1618 = v1616 + v1617;
  v1619 = v1613 ^ 0x22;
  if (v1614 == 5)
  {
    v1620 = v1619;
  }

  else
  {
    v1620 = -115;
  }

  v1621 = v1618 ^ v1620;
  *(STACK[0x2738] - 0xD56D201C0FCD001) = v1621;
  v1622 = (v1619 ^ v1621) - ((2 * (v1619 ^ v1621) + 52) & 0xCF) - 127;
  v1623 = v1622 & 5;
  v1624 = v1622 ^ 0xE7;
  if (v1623 != 1)
  {
    v1624 = 0;
  }

  v1625 = v1624 + (*(STACK[0x2738] - 0xD56D201C0FCD057) ^ 0x8D);
  if (v1623 == 4)
  {
    v1626 = (v1622 ^ 0x18) + 1;
  }

  else
  {
    v1626 = 0;
  }

  v1627 = v1625 + v1626;
  v1628 = v1622 ^ 0x6A;
  if (v1623 == 5)
  {
    v1629 = v1628;
  }

  else
  {
    v1629 = -115;
  }

  v1630 = v1627 ^ v1629;
  v1631 = (v1628 ^ v1630) + ((74 - 2 * (v1628 ^ v1630)) | 0xBB) - 67;
  *(STACK[0x2738] - 0xD56D201C0FCD057) = v1630;
  v1632 = v1631 ^ 0x22;
  v1633 = v1631 ^ 0xAF;
  v1634 = v1631 & 5;
  if ((v1631 & 5) != 0)
  {
    v1635 = -115;
  }

  else
  {
    v1635 = v1631 ^ 0xAF;
  }

  if (v1634 != 4)
  {
    v1632 = 0;
  }

  v1636 = v1631 ^ 0xDD;
  if (v1634 == 1)
  {
    v1637 = v1636 + 1;
  }

  else
  {
    v1637 = 0;
  }

  v1638 = (v1632 + (*(STACK[0x2738] - 0xD56D201C0FCD062) ^ 0x8D) + v1637) ^ v1635;
  *(STACK[0x2738] - 0xD56D201C0FCD062) = v1638;
  v1639 = (v1633 ^ v1638) + ((74 - 2 * (v1633 ^ v1638)) | 0xA9) + 70;
  v1640 = v1639 ^ 0xAB;
  v1641 = v1639 & 5;
  if ((v1639 & 5) != 0)
  {
    v1642 = 0;
  }

  else
  {
    v1642 = (v1639 ^ 0x54) + 1;
  }

  if (v1641 != 5)
  {
    v1640 = 0;
  }

  v1643 = v1640 + (*(STACK[0x2738] - 0xD56D201C0FCD042) ^ 0x8D) + v1642;
  v1644 = v1639 ^ 0x26;
  if (v1641 == 1)
  {
    v1645 = v1644;
  }

  else
  {
    v1645 = -115;
  }

  v1646 = v1643 ^ v1645;
  *(STACK[0x2738] - 0xD56D201C0FCD042) = v1646;
  v1647 = (v1644 ^ v1646) - ((2 * (v1644 ^ v1646) + 52) & 0x4C) - 64;
  v1648 = v1647 ^ 0x26;
  v1649 = v1647 & 5;
  if ((v1647 & 5) != 0)
  {
    v1648 = 0;
  }

  v1650 = v1648 + (*(STACK[0x2738] - 0xD56D201C0FCCFB9) ^ 0x8D);
  if (v1649 == 5)
  {
    v1651 = (v1647 ^ 0xD9) + 1;
  }

  else
  {
    v1651 = 0;
  }

  v1652 = v1650 + v1651;
  v1653 = v1647 ^ 0xAB;
  if (v1649 == 4)
  {
    v1654 = v1653;
  }

  else
  {
    v1654 = -115;
  }

  v1655 = v1652 ^ v1654;
  *(STACK[0x2738] - 0xD56D201C0FCCFB9) = v1655;
  v1656 = (v1653 ^ v1655) - ((2 * (v1653 ^ v1655) + 52) & 0x72) + 83;
  v1657 = v1656 ^ 0xB9;
  v1658 = v1656 & 5;
  if ((v1656 & 5) != 0)
  {
    v1659 = 0;
  }

  else
  {
    v1659 = (v1656 ^ 0x46) + 1;
  }

  if (v1658 != 5)
  {
    v1657 = 0;
  }

  v1660 = v1657 + (*(STACK[0x2738] - 0xD56D201C0FCD051) ^ 0x8D) + v1659;
  v1661 = v1656 ^ 0x34;
  if (v1658 == 1)
  {
    v1662 = v1661;
  }

  else
  {
    v1662 = -115;
  }

  v1663 = v1660 ^ v1662;
  *(STACK[0x2738] - 0xD56D201C0FCD051) = v1663;
  v1664 = (v1661 ^ v1663) + ((-54 - 2 * (v1661 ^ v1663)) | 0x77) + 95;
  v1665 = v1664 ^ 0xC4;
  v1666 = v1664 & 5;
  if ((v1664 & 5) != 0)
  {
    v1665 = 0;
  }

  v1667 = v1665 + (*(STACK[0x2738] - 0xD56D201C0FCD041) ^ 0x8D);
  if (v1666 == 5)
  {
    v1668 = (v1664 ^ 0x3B) + 1;
  }

  else
  {
    v1668 = 0;
  }

  v1669 = v1667 + v1668;
  v1670 = v1664 ^ 0x49;
  if (v1666 == 4)
  {
    v1671 = v1670;
  }

  else
  {
    v1671 = -115;
  }

  v1672 = v1669 ^ v1671;
  *(STACK[0x2738] - 0xD56D201C0FCD041) = v1672;
  v1673 = (v1670 ^ v1672) - ((2 * (v1670 ^ v1672) + 52) & 0x26) + 45;
  v1674 = v1673 ^ 0x93;
  v1675 = v1673 & 5;
  if ((v1673 & 5) != 0)
  {
    v1676 = 0;
  }

  else
  {
    v1676 = (v1673 ^ 0x6C) + 1;
  }

  if (v1675 != 5)
  {
    v1674 = 0;
  }

  v1677 = v1674 + (*(STACK[0x2738] - 0xD56D201C0FCD05ELL) ^ 0x8D) + v1676;
  v1678 = v1673 ^ 0x1E;
  if (v1675 == 1)
  {
    v1679 = v1678;
  }

  else
  {
    v1679 = -115;
  }

  v1680 = v1677 ^ v1679;
  *(STACK[0x2738] - 0xD56D201C0FCD05ELL) = v1680;
  v1681 = v1400 - 1648843526 - ((v1400 - 1648843526) >> 14) - ((v1400 - 1648843526 - ((v1400 - 1648843526) >> 14)) >> 1);
  v1682 = (v1678 ^ v1680) + 110;
  v1683 = v1682 - ((2 * (v1678 ^ v1680) + 52) & 0x98) - 8;
  v1684 = v1683 ^ 0xCC;
  v1685 = v1682 & 5;
  if (v1685)
  {
    v1684 = 0;
  }

  v1686 = v1684 + (*(STACK[0x2738] - 0xD56D201C0FCD038) ^ 0x8D);
  if (v1685 == 5)
  {
    v1687 = (v1683 ^ 0x33) + 1;
  }

  else
  {
    v1687 = 0;
  }

  v1688 = v1686 + v1687;
  v1689 = v1683 ^ 0x41;
  if (v1685 == 4)
  {
    v1690 = v1689;
  }

  else
  {
    v1690 = -115;
  }

  v1691 = v1688 ^ v1690;
  *(STACK[0x2738] - 0xD56D201C0FCD038) = v1691;
  v1692 = v1689 ^ v1691;
  v1693 = (2 * v1692 + 52) & 0x98;
  v1692 -= 26;
  v1694 = v1692 - v1693;
  v1695 = v1694 ^ 0x4C;
  v1696 = v1692 & 5;
  if (v1696)
  {
    v1695 = 0;
  }

  v1697 = v1695 + (*(STACK[0x2738] - 0xD56D201C0FCCFAALL) ^ 0x8D);
  if (v1696 == 5)
  {
    v1698 = (v1694 ^ 0xB3) + 1;
  }

  else
  {
    v1698 = 0;
  }

  v1699 = v1697 + v1698;
  v1700 = v1694 ^ 0xC1;
  if (v1696 == 4)
  {
    v1701 = v1700;
  }

  else
  {
    v1701 = -115;
  }

  v1702 = v1699 ^ v1701;
  *(STACK[0x2738] - 0xD56D201C0FCCFAALL) = v1702;
  LODWORD(STACK[0x1800]) = v1681;
  v1703 = (v1700 ^ v1702) - ((2 * (v1700 ^ v1702) + 52) & 0x96) + 101;
  v1704 = v1703 ^ 0xCB;
  v1705 = v1703 & 5;
  if ((v1703 & 5) != 0)
  {
    v1706 = 0;
  }

  else
  {
    v1706 = (v1703 ^ 0x34) + 1;
  }

  if (v1705 != 5)
  {
    v1704 = 0;
  }

  v1707 = v1704 + (*(STACK[0x2738] - 0xD56D201C0FCCFFELL) ^ 0x8D) + v1706;
  v1708 = v1703 ^ 0x46;
  if (v1705 != 1)
  {
    v1708 = -115;
  }

  v1709 = v1707 ^ v1708;
  v1710 = v1709 ^ v1703;
  v1711 = v1710 ^ 0x46;
  *(STACK[0x2738] - 0xD56D201C0FCCFFELL) = v1709;
  v1712 = ((((v1710 ^ 0x46) + 2) & 5) - 2 * (((v1710 ^ 0x46) + 2) & 5 ^ v1710 & 1) + 76);
  v1713 = v1711 - 102;
  if (v1712 == 72)
  {
    v1714 = v1711 - 102;
  }

  else
  {
    v1714 = 0;
  }

  v1715 = 102 - v1711;
  if (v1712 != 77)
  {
    v1715 = 0;
  }

  if (v1712 == 76)
  {
    v1717 = v1713;
  }

  else
  {
    v1717 = 0;
  }

  v1716 = v1714 + (*(STACK[0x2738] - 0xD56D201C0FCCFF0) ^ 0x8D) + v1715;
  *(STACK[0x2738] - 0xD56D201C0FCCFF0) = (v1716 ^ v1717) - ((2 * (v1716 ^ v1717)) & 0x1A) - 115;
  v1718 = v1681 - 1946460547 + ((v1681 - 1946460547) >> 13) + ((v1681 - 1946460547 + ((v1681 - 1946460547) >> 13)) >> 7);
  v1719 = STACK[0x2738];
  v1720 = ((*(v1719 - 0xD56D201C0FCCFEBLL) ^ 0x8D) << 16) | ((*(v1719 - 0xD56D201C0FCD003) ^ 0x8D) << 8);
  LODWORD(STACK[0x17E0]) = ((*(STACK[0x2738] - 0xD56D201C0FCD017) ^ 0x8D) << 16) | ((*(STACK[0x2738] - 0xD56D201C0FCCFFALL) ^ 0x8D) << 24);
  v1721 = ((*(v1719 - 0xD56D201C0FCCFA9) ^ 0x8D) << 24) | ((*(v1719 - 0xD56D201C0FCCFCFLL) ^ 0x8D) << 16) | ((*(v1719 - 0xD56D201C0FCD064) ^ 0x8D) << 8);
  v1722 = ((*(v1719 - 0xD56D201C0FCD059) ^ 0x8DLL) << 24) | ((*(v1719 - 0xD56D201C0FCD035) ^ 0x8DLL) << 16) | ((*(v1719 - 0xD56D201C0FCCFCELL) ^ 0x8DLL) << 8);
  v1723 = ((*(v1719 - 0xD56D201C0FCCFD4) ^ 0x8DLL) << 16) | ((*(v1719 - 0xD56D201C0FCCFCCLL) ^ 0x8DLL) << 24) | ((*(v1719 - 0xD56D201C0FCD039) ^ 0x8DLL) << 8);
  STACK[0x1740] = ((*(v1719 - 0xD56D201C0FCD029) ^ 0x8DLL) << 24) | ((*(v1719 - 0xD56D201C0FCD046) ^ 0x8DLL) << 16);
  STACK[0x1750] = ((*(v1719 - 0xD56D201C0FCD02ALL) ^ 0x8DLL) << 24) | ((*(v1719 - 0xD56D201C0FCCFD9) ^ 0x8DLL) << 16);
  v1724 = ((*(v1719 - 0xD56D201C0FCD03ALL) ^ 0x8DLL) << 24) | ((*(v1719 - 0xD56D201C0FCCFC6) ^ 0x8DLL) << 16) | ((*(v1719 - 0xD56D201C0FCCFFFLL) ^ 0x8DLL) << 8);
  v1725 = ((*(v1719 - 0xD56D201C0FCD071) ^ 0x8DLL) << 24) | ((*(v1719 - 0xD56D201C0FCD00BLL) ^ 0x8DLL) << 16) | ((*(v1719 - 0xD56D201C0FCD016) ^ 0x8DLL) << 8);
  STACK[0x10C0] = ((*(v1719 - 0xD56D201C0FCCFEDLL) ^ 0x8DLL) << 16) | ((*(v1719 - 0xD56D201C0FCCFC7) ^ 0x8DLL) << 24);
  LODWORD(STACK[0x1730]) = ((*(v1719 - 0xD56D201C0FCCFABLL) ^ 0x8D) << 24) | ((*(v1719 - 0xD56D201C0FCCFDFLL) ^ 0x8D) << 16) | ((*(v1719 - 0xD56D201C0FCCFF8) ^ 0x8D) << 8);
  LODWORD(STACK[0x1090]) = ((*(v1719 - 0xD56D201C0FCCFEELL) ^ 0x8D) << 24) | ((*(v1719 - 0xD56D201C0FCD05CLL) ^ 0x8D) << 16);
  v1726 = ((*(v1719 - 0xD56D201C0FCCFC9) ^ 0x8D) << 16) | ((*(v1719 - 0xD56D201C0FCD055) ^ 0x8D) << 24) | ((*(v1719 - 0xD56D201C0FCD056) ^ 0x8D) << 8);
  v1727 = ((*(v1719 - 0xD56D201C0FCD03DLL) ^ 0x8D) << 24) | ((*(v1719 - 0xD56D201C0FCD03BLL) ^ 0x8D) << 16) | ((*(v1719 - 0xD56D201C0FCCFE9) ^ 0x8D) << 8);
  v1728 = ((*(v1719 - 0xD56D201C0FCD060) ^ 0x8D) << 24) | ((*(v1719 - 0xD56D201C0FCCFECLL) ^ 0x8D) << 16) | ((*(v1719 - 0xD56D201C0FCCFC1) ^ 0x8D) << 8);
  LODWORD(STACK[0x17F0]) = v1718;
  v1729 = (v1718 ^ 0xC844F0E2) + ((v1718 ^ 0xC844F0E2) >> 13) + (((v1718 ^ 0xC844F0E2) + ((v1718 ^ 0xC844F0E2) >> 13)) >> 7);
  LODWORD(STACK[0xFF0]) = v1729;
  v1730 = v1729 + 635278042 + ((v1729 + 635278042) >> 11) + ((v1729 + 635278042 + ((v1729 + 635278042) >> 11)) >> 8);
  LODWORD(STACK[0xEBC]) = LODWORD(STACK[0x17D0]) + 1383480357 - LODWORD(STACK[0x17B0]);
  LODWORD(STACK[0xFB8]) = v1730;
  LODWORD(STACK[0xF00]) = LODWORD(STACK[0x1780]) - 8080512 - LODWORD(STACK[0x1770]);
  v1731 = *(v1719 - 0xD56D201C0FCD043);
  v1732 = *(v1719 - 0xD56D201C0FCD023) ^ 0x8D;
  LODWORD(STACK[0x17B0]) = v1731 ^ 0x8D;
  LODWORD(STACK[0x17D0]) = v1720 | v1731 ^ 0x8D | (v1732 << 24);
  LODWORD(STACK[0x1060]) = *(v1719 - 0xD56D201C0FCD006) ^ 0x8D | v1721;
  STACK[0x1400] = v1722 | *(v1719 - 0xD56D201C0FCCFBALL) ^ 0x8DLL;
  STACK[0x1850] = *(v1719 - 0xD56D201C0FCD067) ^ 0x8DLL | v1725;
  LODWORD(v1722) = v1727 | *(v1719 - 0xD56D201C0FCCFB1) ^ 0x8D;
  v1747 = (v1730 ^ 0x4AE28CC9) - ((v1730 ^ 0x4AE28CC9) >> 10) - (((v1730 ^ 0x4AE28CC9) - ((v1730 ^ 0x4AE28CC9) >> 10)) >> 3);
  v1748 = (v1747 ^ 0x90D7A77B) + ((v1747 ^ 0x90D7A77B) >> 13) + (((v1747 ^ 0x90D7A77B) + ((v1747 ^ 0x90D7A77B) >> 13)) >> 3);
  v1746 = (v1748 ^ 0x54122561) - ((v1748 ^ 0x54122561) >> 9) + (((v1748 ^ 0x54122561) - ((v1748 ^ 0x54122561) >> 9)) >> 6);
  v1733 = v1746 - 1707188710 + ((v1746 - 1707188710) >> 15) + ((v1746 - 1707188710 + ((v1746 - 1707188710) >> 15)) >> 5);
  LODWORD(STACK[0xEF8]) = v1733;
  v1734 = *(v1719 - 0xD56D201C0FCD072);
  STACK[0xEE0] = (*(v1719 - 0xD56D201C0FCD01ELL) ^ 0x8DLL) << 16;
  STACK[0xEC0] = (v1734 ^ 0x8D) << 16;
  STACK[0x1410] = (*(v1719 - 0xD56D201C0FCD04BLL) ^ 0x8DLL) << 16;
  v1735 = *(v1719 - 0xD56D201C0FCD045);
  STACK[0xFB0] = (*(v1719 - 0xD56D201C0FCCFDBLL) ^ 0x8DLL) << 8;
  STACK[0xFA8] = (v1735 ^ 0x8D) << 8;
  STACK[0x17A0] = (*(v1719 - 0xD56D201C0FCD06DLL) ^ 0x8DLL) << 8;
  STACK[0x1790] = (*(v1719 - 0xD56D201C0FCD074) ^ 0x8DLL) << 8;
  LODWORD(STACK[0xEC8]) = (2 * ((v1733 ^ 0x5474C649) - ((v1733 ^ 0x5474C649) >> 9) - (((v1733 ^ 0x5474C649) - ((v1733 ^ 0x5474C649) >> 9)) >> 7))) & 0x26;
  LODWORD(STACK[0x1080]) = *(v1719 - 0xD56D201C0FCD06ALL) ^ 0x8D;
  LODWORD(STACK[0x1070]) = *(v1719 - 0xD56D201C0FCCFB4) ^ 0x8D;
  STACK[0xF98] = *(v1719 - 0xD56D201C0FCD00ELL) ^ 0x8DLL;
  STACK[0xF90] = *(v1719 - 0xD56D201C0FCCFE5) ^ 0x8DLL;
  STACK[0xF88] = *(v1719 - 0xD56D201C0FCD013) ^ 0x8DLL;
  STACK[0x15B0] = *(v1719 - 0xD56D201C0FCD030) ^ 0x8DLL;
  STACK[0xF80] = *(v1719 - 0xD56D201C0FCCFD1) ^ 0x8DLL;
  STACK[0x1180] = *(v1719 - 0xD56D201C0FCCFAFLL) ^ 0x8DLL;
  STACK[0xF40] = *(v1719 - 0xD56D201C0FCD02ELL) ^ 0x8DLL;
  STACK[0xF38] = *(v1719 - 0xD56D201C0FCD028) ^ 0x8DLL;
  STACK[0x1780] = *(v1719 - 0xD56D201C0FCCFD6) ^ 0x8DLL;
  STACK[0x1540] = *(v1719 - 0xD56D201C0FCCFD8) ^ 0x8DLL;
  STACK[0xF20] = *(v1719 - 0xD56D201C0FCD069) ^ 0x8DLL;
  STACK[0xF18] = *(v1719 - 0xD56D201C0FCD073) ^ 0x8DLL;
  STACK[0x14A0] = *(v1719 - 0xD56D201C0FCCFCDLL) ^ 0x8DLL;
  STACK[0x1720] = *(v1719 - 0xD56D201C0FCD01FLL) ^ 0x8DLL;
  STACK[0x1130] = *(v1719 - 0xD56D201C0FCD04DLL) ^ 0x8DLL;
  STACK[0x1710] = *(v1719 - 0xD56D201C0FCCFFBLL) ^ 0x8DLL;
  STACK[0x1770] = *(v1719 - 0xD56D201C0FCCFBDLL) ^ 0x8DLL;
  STACK[0xEF0] = *(v1719 - 0xD56D201C0FCCFE7) ^ 0x8DLL;
  STACK[0xEE8] = *(v1719 - 0xD56D201C0FCD077) ^ 0x8DLL;
  STACK[0x1600] = *(v1719 - 0xD56D201C0FCD050) ^ 0x8DLL;
  STACK[0x1120] = *(v1719 - 0xD56D201C0FCCFB8) ^ 0x8DLL;
  STACK[0x1760] = *(v1719 - 0xD56D201C0FCCFE0) ^ 0x8DLL;
  STACK[0x1110] = *(v1719 - 0xD56D201C0FCCFC4) ^ 0x8DLL;
  STACK[0xED8] = *(v1719 - 0xD56D201C0FCD009) ^ 0x8DLL;
  STACK[0xED0] = *(v1719 - 0xD56D201C0FCCFF4) ^ 0x8DLL;
  v1736 = *(v1719 - 0xD56D201C0FCD070);
  STACK[0x1460] = v1736 ^ 0x8D;
  STACK[0x1530] = v1723 | v1736 ^ 0x8D;
  STACK[0x1100] = *(v1719 - 0xD56D201C0FCD02BLL) ^ 0x8DLL;
  STACK[0xEB0] = *(v1719 - 0xD56D201C0FCCFF5) ^ 0x8DLL;
  STACK[0xEA8] = *(v1719 - 0xD56D201C0FCD06CLL) ^ 0x8DLL;
  STACK[0x1450] = *(v1719 - 0xD56D201C0FCD018) ^ 0x8DLL;
  STACK[0xEA0] = *(v1719 - 0xD56D201C0FCD01BLL) ^ 0x8DLL;
  STACK[0xE98] = *(v1719 - 0xD56D201C0FCD05DLL) ^ 0x8DLL;
  STACK[0x14C0] = *(v1719 - 0xD56D201C0FCD05FLL) ^ 0x8DLL;
  STACK[0xE90] = *(v1719 - 0xD56D201C0FCD019) ^ 0x8DLL;
  STACK[0x14B0] = *(v1719 - 0xD56D201C0FCD063) ^ 0x8DLL;
  STACK[0xE88] = *(v1719 - 0xD56D201C0FCCFFCLL) ^ 0x8DLL;
  STACK[0xE80] = *(v1719 - 0xD56D201C0FCD05ALL) ^ 0x8DLL;
  STACK[0x1490] = *(v1719 - 0xD56D201C0FCD076) ^ 0x8DLL;
  STACK[0xE78] = *(v1719 - 0xD56D201C0FCD02CLL) ^ 0x8DLL;
  STACK[0xE70] = *(v1719 - 0xD56D201C0FCCFF2) ^ 0x8DLL;
  STACK[0x1430] = *(v1719 - 0xD56D201C0FCCFB0) ^ 0x8DLL;
  STACK[0xFA0] = *(v1719 - 0xD56D201C0FCD037) ^ 0x8DLL;
  STACK[0xE68] = *(v1719 - 0xD56D201C0FCD047) ^ 0x8DLL;
  STACK[0xE60] = *(v1719 - 0xD56D201C0FCCFC8) ^ 0x8DLL;
  STACK[0x1480] = *(v1719 - 0xD56D201C0FCCFC0) ^ 0x8DLL;
  STACK[0xE58] = *(v1719 - 0xD56D201C0FCCFD2) ^ 0x8DLL;
  STACK[0x10F0] = *(v1719 - 0xD56D201C0FCCFB6) ^ 0x8DLL;
  STACK[0xE50] = *(v1719 - 0xD56D201C0FCD032) ^ 0x8DLL;
  STACK[0x1058] = *(v1719 - 0xD56D201C0FCD025) ^ 0x8DLL;
  STACK[0x10E0] = *(v1719 - 0xD56D201C0FCD011) ^ 0x8DLL;
  STACK[0x1048] = *(v1719 - 0xD56D201C0FCD04FLL) ^ 0x8DLL;
  STACK[0x1470] = *(v1719 - 0xD56D201C0FCD049) ^ 0x8DLL;
  STACK[0x1050] = *(v1719 - 0xD56D201C0FCD03FLL) ^ 0x8DLL;
  STACK[0xE40] = *(v1719 - 0xD56D201C0FCCFEALL) ^ 0x8DLL;
  STACK[0xF50] = *(v1719 - 0xD56D201C0FCD012) ^ 0x8DLL;
  STACK[0xF48] = *(v1719 - 0xD56D201C0FCD01DLL) ^ 0x8DLL;
  STACK[0xE38] = *(v1719 - 0xD56D201C0FCD021) ^ 0x8DLL;
  STACK[0x1038] = *(v1719 - 0xD56D201C0FCD048) ^ 0x8DLL;
  STACK[0xF30] = *(v1719 - 0xD56D201C0FCCFD3) ^ 0x8DLL;
  STACK[0x1030] = *(v1719 - 0xD56D201C0FCCFE1) ^ 0x8DLL;
  STACK[0xF28] = *(v1719 - 0xD56D201C0FCD04ELL) ^ 0x8DLL;
  STACK[0x1040] = (*(v1719 - 0xD56D201C0FCD004) ^ 0x8DLL) << 16;
  v1737 = *(v1719 - 0xD56D201C0FCD044) ^ 0x8DLL;
  STACK[0x13E0] = v1737;
  STACK[0x13F0] = v1724 | v1737;
  STACK[0xF10] = *(v1719 - 0xD56D201C0FCD06ELL) ^ 0x8DLL;
  v1738 = *(v1719 - 0xD56D201C0FCCFADLL);
  STACK[0xF08] = *(v1719 - 0xD56D201C0FCD00FLL) ^ 0x8DLL;
  STACK[0x1028] = v1738 ^ 0x8D;
  v1739 = *(v1719 - 0xD56D201C0FCCFF9);
  LODWORD(STACK[0xE34]) = *(v1719 - 0xD56D201C0FCD00CLL) ^ 0x8D;
  STACK[0x13D0] = v1739 ^ 0x8D;
  LODWORD(v1736) = *(v1719 - 0xD56D201C0FCCFC3);
  LODWORD(STACK[0xE2C]) = *(v1719 - 0xD56D201C0FCCFE3) ^ 0x8D;
  LODWORD(STACK[0xE30]) = v1736 ^ 0x8D;
  LODWORD(STACK[0x1020]) = *(v1719 - 0xD56D201C0FCD022) ^ 0x8D;
  STACK[0x1018] = *(v1719 - 0xD56D201C0FCD026) ^ 0x8DLL;
  STACK[0x1010] = *(v1719 - 0xD56D201C0FCD03ELL) ^ 0x8DLL;
  v1740 = *(v1719 - 0xD56D201C0FCCFF6);
  STACK[0x13C0] = *(v1719 - 0xD56D201C0FCD015) ^ 0x8DLL;
  STACK[0xE20] = v1740 ^ 0x8D;
  v1741 = *(v1719 - 0xD56D201C0FCCFB7);
  STACK[0xE10] = *(v1719 - 0xD56D201C0FCD06BLL) ^ 0x8DLL;
  STACK[0xE18] = v1741 ^ 0x8D;
  STACK[0x1008] = *(v1719 - 0xD56D201C0FCCFE6) ^ 0x8DLL;
  STACK[0xE08] = *(v1719 - 0xD56D201C0FCD014) ^ 0x8DLL;
  STACK[0x1000] = *(v1719 - 0xD56D201C0FCD020) ^ 0x8DLL;
  STACK[0xE48] = *(v1719 - 0xD56D201C0FCCFC5) ^ 0x8DLL;
  STACK[0xFF8] = (*(v1719 - 0xD56D201C0FCCFBFLL) ^ 0x8DLL) << 16;
  STACK[0xFE8] = *(v1719 - 0xD56D201C0FCD008) ^ 0x8DLL;
  STACK[0xFE0] = *(v1719 - 0xD56D201C0FCD066) ^ 0x8DLL;
  v1742 = *(v1719 - 0xD56D201C0FCD036);
  STACK[0xE00] = *(v1719 - 0xD56D201C0FCD005) ^ 0x8DLL;
  STACK[0xDF8] = v1742 ^ 0x8D;
  v1743 = *(v1719 - 0xD56D201C0FCCFE2);
  STACK[0x1440] = *(v1719 - 0xD56D201C0FCCFF7) ^ 0x8DLL;
  STACK[0x1150] = v1743 ^ 0x8D;
  STACK[0xD38] = (*(v1719 - 0xD56D201C0FCCFDDLL) ^ 0x8DLL) << 8;
  STACK[0x1420] = *(v1719 - 0xD56D201C0FCCFDCLL) ^ 0x8DLL;
  LODWORD(STACK[0xFD0]) = *(v1719 - 0xD56D201C0FCD00DLL) ^ 0x8D;
  LODWORD(STACK[0xFC8]) = *(v1719 - 0xD56D201C0FCCFDELL) ^ 0x8D;
  v1745 = *(v1719 - 0xD56D201C0FCCFCALL) ^ 0x8D;
  LODWORD(STACK[0xFC0]) = *(v1719 - 0xD56D201C0FCD053) ^ 0x8D;
  LODWORD(STACK[0xD10]) = *(v1719 - 0xD56D201C0FCD078) ^ 0x8D;
  LODWORD(STACK[0xD08]) = *(v1719 - 0xD56D201C0FCD02FLL) ^ 0x8D;
  LODWORD(STACK[0xD04]) = *(v1719 - 0xD56D201C0FCD058) ^ 0x8D;
  LODWORD(STACK[0x10D0]) = v1728 | *(v1719 - 0xD56D201C0FCD068) ^ 0x8D;
  STACK[0x18A0] = v1719 - 0xD56D201C0FCE2FCLL;
  LODWORD(STACK[0x10B0]) = v1722;
  LODWORD(STACK[0x10A0]) = v1745 | v1726;
  return (*(STACK[0x1708] + 8 * SLODWORD(STACK[0x1900])))(2420722769, 3691298721);
}

uint64_t sub_1000EBF00()
{
  v1 = *(STACK[0x1708] + 8 * (((STACK[0x18F0]++ == 207) * v0) ^ LODWORD(STACK[0x1900])));
  ++LODWORD(STACK[0x18B0]);
  return v1();
}

uint64_t sub_1000EC058(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, char a43, uint64_t a44, uint64_t a45, int a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59)
{
  v63 = LODWORD(STACK[0xF00]) ^ LODWORD(STACK[0x1890]) ^ LODWORD(STACK[0xFF0]) ^ LODWORD(STACK[0xEF8]);
  v64 = LODWORD(STACK[0x1820]) ^ LODWORD(STACK[0x1880]) ^ LODWORD(STACK[0xFB8]) ^ (a47 - LODWORD(STACK[0xEC8]));
  LODWORD(a38) = LODWORD(STACK[0x17E0]) + (a46 << 8);
  STACK[0xEC8] = STACK[0xEE0] | (a45 << 24);
  STACK[0xFB8] = (STACK[0xEC0] | (a36 << 24)) + (a37 << 8);
  STACK[0xEC0] = a48 + a50 + (a33 << 8);
  STACK[0xFF0] = a22 + a24 + a21;
  STACK[0x1900] = STACK[0x1750] + (a34 << 8);
  STACK[0xEF8] = a13 + a14;
  LODWORD(STACK[0xF00]) = LODWORD(STACK[0x1090]) + a11;
  STACK[0xEE0] = a49 | (a30 << 24);
  v65 = LODWORD(STACK[0x1860]) ^ a56;
  v66 = LODWORD(STACK[0x1840]) ^ a53;
  STACK[0x1840] = STACK[0x10C0] + (a28 << 8) + a26;
  v67 = v65 ^ v66;
  v68 = LODWORD(STACK[0x1830]) ^ a55;
  v69 = LODWORD(STACK[0x17F0]) ^ a52;
  STACK[0x1830] = (a35 | (a27 << 16) | (a29 << 24)) + a25;
  v70 = v68 ^ v69;
  STACK[0x1820] = a15 + a17 + (a20 | (a23 << 24));
  v71 = LODWORD(STACK[0x1810]) ^ LODWORD(STACK[0xEBC]) ^ LODWORD(STACK[0x1800]) ^ a54;
  STACK[0x18A0] = (a19 | (a16 << 24)) + (a18 << 8);
  LODWORD(STACK[0xEBC]) = (HIDWORD(a11) | (HIDWORD(a12) << 24)) + (a12 << 8);
  v72 = v61 + LODWORD(STACK[0x18B0]);
  v73 = HIWORD(v72);
  v74 = v72 - HIWORD(v72);
  v75 = v74 >> 8;
  LODWORD(v74) = v74 >> 8;
  v76 = v61 + v59 + v74;
  v77 = (v76 - v73) >> 14;
  v78 = (v76 + v77 - v73) >> 8;
  v79 = v61 + v78 + v77;
  v80 = v75 + STACK[0x18F0];
  v81 = (v61 + v78 - ((2 * (v79 - v73 + v75 + v59)) & 0xC1726FD6) + v77 - v73 + v80 - 1791922673) ^ a7;
  LODWORD(v74) = v79 + a8 + v74;
  v82 = (v74 - v73) >> 14;
  v83 = v74 - v82 - v73;
  LODWORD(v75) = v79 - v82 - v73 + v75 + a8 + (v83 >> 2);
  LODWORD(v83) = a4 ^ (v61 - ((2 * v75) & 0xAB7D35E) + (v83 >> 2) + v78 + v77 - v82 - v73 + v80 - 670684086);
  v84 = (v75 ^ 0x7CA9EDB7) + ((v75 ^ 0x7CA9EDB7) >> 12) - (((v75 ^ 0x7CA9EDB7) + ((v75 ^ 0x7CA9EDB7) >> 12)) >> 8);
  LODWORD(v75) = (v84 ^ 0x639434C) + ((v84 ^ 0x639434Cu) >> 12) - (((v84 ^ 0x639434C) + ((v84 ^ 0x639434Cu) >> 12)) >> 5);
  v85 = v81 ^ v75;
  LODWORD(v75) = v75 - 343252905 - ((v75 - 343252905) >> 15) + ((v75 - 343252905 - ((v75 - 343252905) >> 15)) >> 3);
  LODWORD(v83) = v83 ^ v75;
  LODWORD(v75) = v75 - 1731971001 + ((v75 - 1731971001) >> 14) - ((v75 - 1731971001 + ((v75 - 1731971001) >> 14)) >> 5);
  v86 = v75 - 663897681 + ((v75 - 663897681) >> 10) - ((v75 - 663897681 + ((v75 - 663897681) >> 10)) >> 2);
  v87 = v85 ^ v86;
  v88 = v63 ^ v87;
  v342 = v63 ^ v87;
  v89 = (v87 ^ 0xD1B01E4B | v67 ^ 0xD1B01E4B) - ((2 * (v87 ^ 0xD1B01E4B | v67 ^ 0xD1B01E4B)) & 0xD3669936);
  v90 = v71 ^ 0x74DB0E6B;
  v91 = v86 - 1650348354 - ((v86 - 1650348354) >> 15) - ((v86 - 1650348354 - ((v86 - 1650348354) >> 15)) >> 7);
  LODWORD(v83) = (v83 ^ 0x23F6DBE1 ^ v91 | v90) - ((2 * (v83 ^ 0x23F6DBE1 ^ v91 | v90)) & 0x1FE978D6);
  v92 = v91 - 783609144 + ((v91 - 783609144) >> 8) - ((v91 - 783609144 + ((v91 - 783609144) >> 8)) >> 6);
  v93 = (v62 ^ v84 ^ v75 ^ 0x16A3CF5E ^ (v92 - ((2 * v92) & 0xC720015A) - 477101907)) + (v70 ^ 0xAF6A65A9);
  LODWORD(STACK[0x18F0]) = v93 - ((2 * v93) & 0xF1FE98CE);
  LODWORD(STACK[0x1890]) = v89 - 374125413;
  LODWORD(STACK[0x1880]) = v83 + 267697259;
  v94 = ((v89 - 374125413) ^ 0xE647F0F0 ^ (v83 + 267697259)) - ((2 * ((v89 - 374125413) ^ 0xE647F0F0 ^ (v83 + 267697259))) & 0xF1FE98CE);
  v95 = (HIDWORD(a31) | (a32 << 16) | (HIDWORD(a32) << 24)) + a57;
  LODWORD(STACK[0x1090]) = v95;
  LODWORD(v83) = (v95 ^ 0xB515AB70) + 1476699344 - 2 * ((v95 ^ 0xB515AB70) & 0x5804A4DB ^ a57 & 0xB);
  v96 = STACK[0x2D30];
  STACK[0x1810] = STACK[0x2D30];
  LODWORD(v96) = *(v96 - 0x2A510ED33EFDCD92) ^ v83;
  v97 = v60;
  v98 = *(&off_1002DD400 + (v60 ^ 0x11D0)) - 1548155247;
  v99 = *&v98[4 * (BYTE1(v96) ^ 0x48)] + (BYTE1(v96) ^ 0x48) * (BYTE1(v96) ^ 0x48);
  v100 = *(&off_1002DD400 + (v60 ^ 0x132B)) - 537948018;
  v101 = *(&off_1002DD400 + v97 - 4215) - 1074660566;
  v102 = *(&off_1002DD400 + (v97 ^ 0x1055)) - 1325631634;
  LODWORD(v96) = (*&v100[4 * (v96 ^ 0xB6)] - (v96 ^ 0xB6 | 0x15)) ^ __ROR4__(*&v101[4 * (BYTE2(v96) ^ 0x52)] + (BYTE2(v96) ^ 0x52) * (BYTE2(v96) ^ 0x52), 20) ^ v99 ^ 0xEFC9EC68 ^ (*&v102[4 * (BYTE3(v96) ^ 0x64)] + (BYTE3(v96) ^ 0x64) * (BYTE3(v96) ^ 0x64) + 1947683826) ^ ((8 * (v99 ^ 0xEFC9EC68)) | 0x27923AF0);
  v103 = *(&off_1002DD400 + (v97 ^ 0x1268)) - 452605655;
  v104 = LODWORD(STACK[0x17D0]) - 2 * (STACK[0x17D0] & 0x3188351B ^ STACK[0x17B0] & 8);
  v105 = *&v103[4 * (v96 ^ 0x33)] - (v96 ^ 0x33 | 0xCF);
  v106 = (v105 ^ 0x6B941CB8) - 2 * ((v105 ^ 0x6B941CB8) & 0x591102BA ^ v105 & 2) - 653196616;
  v332 = *(&off_1002DD400 + v97 - 4571) - 92900794;
  LODWORD(v75) = (*&v332[4 * (BYTE1(v96) ^ 0xCD)] - (BYTE1(v96) ^ 0xCD | 0xF7)) ^ BYTE1(v96);
  v107 = v75 ^ 0x72 ^ (((4 * v106) ^ 0x64440AE0) * (v106 ^ 0x191102B8));
  v108 = v107 - 2 * (v107 & 0x591102B9 ^ v75 & 1);
  v109 = *(&off_1002DD400 + v97 - 4386) - 669439775;
  v110 = *&v109[4 * (BYTE2(v96) ^ 0xB4)] + (BYTE2(v96) ^ 0xB4) * (BYTE2(v96) ^ 0xB4);
  v331 = *(&off_1002DD400 + v97 - 4731) - 1509595738;
  v111 = *&v331[4 * (BYTE3(v96) ^ 0x2B)] - (BYTE3(v96) ^ 0x2B | 0x99);
  v112 = *(&off_1002DD400 + v97 - 3886) - 1879412651;
  v113 = v112[v64 ^ 0x8FLL] - (v64 ^ 0x8F | 0xFFFFFFD3);
  v345 = v64 ^ 0x8C;
  v114 = v113 ^ v64 ^ 0xFFFFFF8C;
  v115 = v112[(v113 ^ v345) ^ 0x55] - ((v113 ^ v345) ^ 0x55 | 0xFFFFFFD3);
  LODWORD(v96) = LODWORD(STACK[0x18F0]) - 117486489;
  LODWORD(STACK[0x1860]) = v96;
  v116 = (v94 - 117486489) ^ v88 ^ v96;
  LODWORD(a35) = v116 ^ 0x5F829F2F;
  LODWORD(v96) = v116 ^ 0x5F829F2F ^ (v104 - 1316473581);
  LODWORD(STACK[0x10C0]) = v96;
  v117 = v96 ^ v111 ^ v110 ^ ((v110 ^ 0xB1DB9DC8) >> 4) ^ ((v110 ^ 0xB1DB9DC8) >> 5) ^ v106 ^ (v108 - 653196616) ^ 0x306A9B63;
  v118 = ((v112[(v115 ^ v114) ^ 0x4CLL] - (v115 ^ v114 ^ 0x4C | 0xD3)) ^ v115 ^ v114) ^ 0xB8;
  v119 = (v112[v118] - (v118 | 0xFFFFFFD3)) ^ (v112[(v115 ^ v114) ^ 0x4CLL] - ((v115 ^ v114) ^ 0x4C | 0xFFFFFFD3)) ^ v115 ^ v114 ^ 0xFFFFFFCC;
  v120 = v117 | (((v114 ^ 0x99 | (((((v119 ^ 0xFFFFFF9B) << 8) | 0xC3) ^ ((v112[(v115 ^ v114) ^ 0x4CLL] - (v115 ^ v114 ^ 0x4C | 0xD3)) ^ v115 ^ v114) ^ 0xCC) << 16)) ^ ((((v115 ^ v114) ^ 0xD0) << 8) | 0xB9)) << 32);
  v338 = (v116 >> 8) ^ 0xEE0AAA;
  v121 = *(&off_1002DD400 + (v97 ^ 0x1063)) - 674495802;
  v122 = *(&off_1002DD400 + (v97 ^ 0x1323)) - 1360402042;
  v123 = *(&off_1002DD400 + (v97 ^ 0x1396));
  v124 = *(&off_1002DD400 + v97 - 4213) - 1405917970;
  v341 = HIWORD(v116) ^ 0xEE0A;
  v339 = BYTE2(v116) ^ 0xA;
  STACK[0x17E0] = v124;
  LODWORD(STACK[0x18F0]) = *(v124 + 4 * (BYTE2(v116) ^ 0x5Fu));
  v123 -= 304045423;
  LODWORD(STACK[0x1750]) = v116;
  v340 = v116;
  LODWORD(a45) = v116 ^ 0x4F;
  STACK[0x1800] = v121;
  v344 = *&v121[4 * a45];
  v337 = BYTE1(v116) ^ 0xAA;
  LODWORD(STACK[0x17B0]) = HIBYTE(v116);
  v336 = HIBYTE(v116) ^ 0x4A;
  v335 = BYTE1(v116) ^ 0xCF;
  STACK[0x17F0] = v122;
  v343 = *&v122[4 * v335];
  STACK[0x17D0] = v123;
  LODWORD(STACK[0x18B0]) = *(v123 + 4 * v336);
  v125 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05CC5) = v120 ^ 0x8A8805A63B098E3ELL;
  LODWORD(v120) = a41 | (a40 << 24) | (LODWORD(STACK[0x1080]) << 16) | (LODWORD(STACK[0x1070]) << 8);
  LODWORD(v96) = HIDWORD(a38);
  LODWORD(STACK[0x1070]) = (a38 + HIDWORD(a40)) & 0x3188351B ^ BYTE4(a40) & 8;
  v126 = STACK[0x1810];
  LODWORD(v124) = *(STACK[0x1810] - 0x2A510ED33EFDCD8ELL) ^ (v96 + 1476699344 - 2 * (v96 & 0x5804A4DD ^ a39 & 0xD));
  v127 = ((*(STACK[0x1810] - 0x2A510ED33EFDCD8ELL) ^ (v96 - 23344 - 2 * (v96 & 0xA4DD ^ a39 & 0xD))) >> 8) ^ 0xA2;
  v330 = v98;
  v128 = *&v98[4 * v127] + v127 * v127;
  v129 = v101;
  v130 = *&v101[4 * (BYTE2(v124) ^ 0xCC)] + (BYTE2(v124) ^ 0xCC) * (BYTE2(v124) ^ 0xCC);
  LODWORD(v124) = (*&v102[4 * (BYTE3(v124) ^ 0xFA)] + (BYTE3(v124) ^ 0xFA) * (BYTE3(v124) ^ 0xFA) + 1947683826) ^ (*&v100[4 * (v124 ^ 0x1A)] - (v124 ^ 0x1A | 0x15)) ^ v128 ^ (v130 << 12) ^ (v130 >> 20) ^ (8 * v128) & 0xD86DC508;
  v131 = (*&v103[4 * (v124 ^ 0xC3)] - (v124 | 0xCF)) ^ 0x6B941CB8;
  v132 = v131 - ((2 * v131) & 0x143B85CC) + 169722598;
  v329 = v109;
  v133 = (*&v109[4 * (BYTE2(v124) ^ 0xCD)] + (BYTE2(v124) ^ 0xCD) * (BYTE2(v124) ^ 0xCD)) ^ 0xB1DB9DC8;
  v134 = *&v332[4 * (BYTE1(v124) ^ 0x77)];
  v135 = (((4 * v132) ^ 0x28770B98) * (v132 ^ 0xA1DC2E6)) ^ ((BYTE1(v124) ^ 0x81E0E084) + v134 - (BYTE1(v124) | 0xF7) - 2 * ((v134 - (BYTE1(v124) | 0xF7)) & (BYTE1(v124) ^ 0x81E0E084)));
  LODWORD(v124) = (*&v331[4 * (BYTE3(v124) ^ 0x4F)] - (BYTE3(v124) ^ 0x4F | 0x99)) ^ v132;
  v136 = v133 - ((2 * v133) & 0x5A3D2BEC) + 756979190;
  LODWORD(v124) = v124 ^ (v136 >> 4) ^ (v136 >> 5) ^ 0x3B91DF0 ^ (v135 - ((2 * v135) & 0x143B85CC) + 169722598);
  LODWORD(v124) = v136 ^ (v124 - ((2 * v124) & 0x5A3D2BEC) + 756979190);
  LODWORD(v118) = (v112[v119 ^ 0xAFLL] - (v119 ^ 0xAF | 0xFFFFFFD3)) ^ v119 ^ 0xFFFFFF9B;
  LODWORD(v118) = v118 - ((2 * v118) & 0xFFFFFF84) - 62;
  v137 = ((v112[v118 ^ 0xALL] - (v118 ^ 0xA | 0xD3)) ^ v118) ^ 0xB1;
  LODWORD(v137) = (v112[v137] - (v137 | 0xFFFFFFD3)) ^ (v112[v118 ^ 0xALL] - (v118 ^ 0xA | 0xFFFFFFD3)) ^ v118;
  v138 = (v112[v137 ^ 0xFLL] - (v137 ^ 0xF | 0xFFFFFFD3)) ^ v137;
  v139 = (((v112[v118 ^ 0xALL] - (v118 ^ 0xA | 0xD3)) ^ v118) ^ 0xC2) << 8;
  LODWORD(v120) = (v120 - 2 * (v120 & 0x31883533 ^ a41 & 0x20) - 1316473581) ^ 0x289844D3 ^ a35;
  LODWORD(STACK[0x1080]) = v120;
  *(v125 - 0x4482F840E2E05CBDLL) = (v124 ^ v120 | ((v139 & 0xFFFFFF00 | ((v138 ^ 0x12) << 24) | v118 ^ 0xC2) << 32) | ((v137 ^ 0x8Fu) << 48)) ^ 0x8A888C167B90EA8CLL;
  v140 = *(v126 - 0x2A510ED33EFDCD8ALL) ^ (HIDWORD(a39) + 1476699344 - ((2 * HIDWORD(a39)) & 0xB00949A0));
  LODWORD(v101) = ((*(v126 - 0x2A510ED33EFDCD8ALL) ^ (WORD2(a39) - 23344 - ((2 * WORD2(a39)) & 0x49A0))) >> 8) ^ 0x7D;
  LODWORD(v120) = *&v98[4 * v101] + v101 * v101;
  LODWORD(v120) = (*&v102[4 * (HIBYTE(v140) ^ 0x7A)] + (HIBYTE(v140) ^ 0x7A) * (HIBYTE(v140) ^ 0x7A) + 1947683826) ^ (*&v100[4 * (v140 ^ 0x70)] - (v140 ^ 0x70 | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v140) ^ 0x77)] + (BYTE2(v140) ^ 0x77) * (BYTE2(v140) ^ 0x77), 20) ^ v120 ^ 0xEFC9EC68 ^ ((8 * (v120 ^ 0xEFC9EC68)) | 0x27923AF0);
  v141 = (*&v103[4 * (v120 ^ 0xB2)] - (v120 ^ 0xB2 | 0xCF)) ^ 0x6B941CB8;
  v142 = v141 - ((2 * v141) & 0xC127DC24) - 527176174;
  LODWORD(v101) = ((((BYTE2(v120) ^ 0xE6) - (BYTE2(v120) ^ 0xF)) ^ 0xFE) + (BYTE2(v120) ^ 0xE6));
  LODWORD(v101) = (*&v109[4 * ((((BYTE2(v120) ^ 0xE6) - (BYTE2(v120) ^ 0xF)) ^ 0xFE) + (BYTE2(v120) ^ 0xE6))] + v101 * v101) ^ 0xB1DB9DC8;
  LODWORD(v124) = BYTE1(v120) ^ (*&v332[4 * (BYTE1(v120) ^ 0xC2)] - (BYTE1(v120) | 0xF7)) ^ 0x7D ^ (((4 * v142) ^ 0x824FB848) * (v142 ^ 0x2093EE12));
  LODWORD(v118) = (v112[v138 ^ 0x9FLL] - (v138 ^ 0x9F | 0xFFFFFFD3)) ^ v138 ^ 0x12;
  LODWORD(v120) = (*&v331[4 * (BYTE3(v120) ^ 0xD7)] - (BYTE3(v120) ^ 0xD7 | 0x99)) ^ v142;
  v143 = v101 - ((2 * v101) & 0x705D3F46) - 1204904029;
  LODWORD(v120) = v120 ^ (v143 >> 4) ^ (v143 >> 5) ^ (v124 - ((2 * v124) & 0xC127DC24) - 527176174) ^ 0xE439D07;
  v144 = v118 - ((2 * v118) & 0xFFFFFFA0) - 48;
  v145 = (v118 - ((2 * v118) & 0xA0) - 48) ^ 0xEDLL;
  v146 = v143 ^ (v120 - ((2 * v120) & 0x705D3F46) - 1204904029);
  v147 = (v112[v145] - (v145 | 0xFFFFFFD3)) ^ v144;
  v148 = (v112[v147 ^ 0xE8] - (v147 ^ 0xE8 | 0xFFFFFFD3)) ^ v147;
  v149 = (v112[((v112[v147 ^ 0xE8] - (v147 ^ 0xE8 | 0xD3)) ^ v147) ^ 0xAFLL] - (~v148 | 0xFFFFFFD3)) ^ 0x49;
  v150 = v149 & 1 | 0x18;
  if ((v149 & 1 & v148) != 0)
  {
    v150 = 48 - v150;
  }

  v151 = (v112[v147 ^ 0xE8] - (v147 ^ 0xE8 | 0xD3)) ^ v147 ^ 0xCC;
  v152 = ((v148 ^ 0xFFFFFFCC) + v150 - 24) ^ v149 & 0xFFFFFFFE;
  v153 = a35 ^ (a38 + HIDWORD(a40) - 2 * LODWORD(STACK[0x1070]) - 1316473581);
  LODWORD(STACK[0x1070]) = v153;
  v154 = v152 ^ 0x41;
  *(v125 - 0x4482F840E2E05CB5) = (((v144 ^ 0xD0u) << 32) | ((v147 ^ 0x36u) << 40) | (v151 << 48) | (v154 << 56) | v153 ^ v146 ^ 0x1A65DFE3u) ^ 0x8A8805F28B93BC7CLL;
  v155 = STACK[0x2D30];
  v156 = *(STACK[0x2D30] - 0x2A510ED33EFDCD86) ^ ((LODWORD(STACK[0x10D0]) ^ 0x56A97269) + 1476699344 - 2 * ((LODWORD(STACK[0x10D0]) ^ 0x56A97269) & 0x5804A4D2 ^ a43 & 2));
  v157 = a35 ^ (LODWORD(STACK[0x1060]) - ((2 * LODWORD(STACK[0x1060])) & 0x63106A26) - 1316473581);
  v158 = *&v98[4 * (BYTE1(v156) ^ 0xF4)] + (BYTE1(v156) ^ 0xF4) * (BYTE1(v156) ^ 0xF4);
  v159 = (*&v102[4 * (HIBYTE(v156) ^ 0x7B)] + (HIBYTE(v156) ^ 0x7B) * (HIBYTE(v156) ^ 0x7B) + 1947683826) ^ (*&v100[4 * (v156 ^ 0x44)] - (v156 ^ 0x44 | 0x15)) ^ v158 ^ __ROR4__(*&v129[4 * (BYTE2(v156) ^ 0xEF)] + (BYTE2(v156) ^ 0xEF) * (BYTE2(v156) ^ 0xEF), 20) ^ (8 * v158) & 0xD86DC508;
  v160 = *&v103[4 * (v159 ^ 0xFA)] - (v159 ^ 0xFA | 0xCF);
  v161 = (v160 ^ 0x6B941CB8) - 2 * ((v160 ^ 0x6B941CB8) & 0x2430F8FF ^ v160 & 2) + 607189245;
  v162 = (*&v109[4 * (BYTE2(v159) ^ 0x8A)] + (BYTE2(v159) ^ 0x8A) * (BYTE2(v159) ^ 0x8A)) ^ 0xB1DB9DC8;
  v163 = (v112[v152 ^ 0x86] - (v152 ^ 0x86 | 0xFFFFFFD3)) ^ v154;
  LODWORD(v154) = v162 - ((2 * v162) & 0xEFF130E2) + 2012780657;
  v164 = v163 - ((2 * v163) & 0xC) - 122;
  LODWORD(v154) = BYTE1(v159) ^ (*&v331[4 * (HIBYTE(v159) ^ 0xE2)] - (HIBYTE(v159) ^ 0xE2 | 0x99)) ^ (*&v332[4 * (BYTE1(v159) ^ 0x8D)] - (BYTE1(v159) ^ 0x8D | 0xF7)) ^ v161 ^ v154 ^ (((~(8 * (v161 ^ 0x2430F8FD) * (v161 ^ 0x2430F8FD)) | 0xB79E0E07) + 4 * (v161 ^ 0x2430F8FD) * (v161 ^ 0x2430F8FD) + 607189245) | 1) ^ (((v154 >> 5) ^ (v154 >> 4) ^ 0x4C04D44) - ((2 * ((v154 >> 5) ^ (v154 >> 4) ^ 0x4C04D44)) & 0xFF130E2) + 2012780657);
  v165 = (v112[(v163 - ((2 * v163) & 0xC) - 122) ^ 0xD3] - (v164 | 0xFFFFFFD3)) ^ v164;
  v166 = v112[v165 ^ 0x18] - (v165 ^ 0x18 | 0xFFFFFFD3);
  v165 ^= 0xFFFFFFCF;
  v167 = v166 ^ v165;
  LOBYTE(v156) = v167 ^ 0xC;
  v168 = (v112[v167 ^ 0xEALL] - (v167 ^ 0xEA | 0xFFFFFFD3)) ^ v167 ^ 0xC;
  LODWORD(STACK[0x1060]) = v157;
  v169 = ((((((v168 ^ 0xFFFFFF86) << 16) | 0xBE) ^ v165) << 40) | ((v164 ^ 0x86u) << 32) | (v156 << 48) | v157 ^ v154 ^ 0xC0AF8BB) ^ 0x8A88051D432C5205;
  v170 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05CADLL) = v169;
  v171 = *(v155 - 0x2A510ED33EFDCD82);
  LODWORD(v155) = *&v330[4 * (BYTE1(v171) ^ 0xBLL)] + (BYTE1(v171) ^ 0xB) * (BYTE1(v171) ^ 0xB);
  LODWORD(v171) = (*&v102[4 * ((v171 >> 24) ^ 0xBC)] + ((v171 >> 24) ^ 0xBC) * ((v171 >> 24) ^ 0xBC) + 1947683826) ^ (*&v100[4 * (v171 ^ 0x6CLL)] - (v171 ^ 0x6C | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v171) ^ 0x2DLL)] + (BYTE2(v171) ^ 0x2D) * (BYTE2(v171) ^ 0x2D), 20) ^ v155 ^ 0xEFC9EC68 ^ ((8 * (v155 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v155) = (*&v103[4 * (v171 ^ 0xBF)] - (v171 ^ 0xBF | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v155) = v155 - ((2 * v155) & 0xA61A5560) + 1393371824;
  v172 = BYTE1(v171) ^ (*&v332[4 * (BYTE1(v171) ^ 0x36)] - (BYTE1(v171) | 0xF7)) ^ 0x89 ^ (((4 * v155) ^ 0x4C34AAC0) * (v155 ^ 0x130D2AB0));
  v173 = *&v109[4 * (BYTE2(v171) ^ 0xAF)] + (BYTE2(v171) ^ 0xAF) * (BYTE2(v171) ^ 0xAF);
  v174 = (v173 ^ 0xB1DB9DC8) - 2 * ((v173 ^ 0xB1DB9DC8) & 0x48A67C3F ^ v173 & 4) - 928613317;
  LODWORD(v155) = v155 ^ (v174 >> 5) ^ (v174 >> 4) ^ 0xACF5422 ^ (v172 - ((2 * v172) & 0xA61A5560) + 1393371824);
  LODWORD(v155) = (*&v331[4 * (BYTE3(v171) ^ 0xDC)] - (BYTE3(v171) ^ 0xDC | 0x99)) ^ v174 ^ 0x81E0E04C ^ (v155 - ((2 * v155) & 0x914CF876) - 928613317);
  v175 = (v112[v168 ^ 0x7FLL] - (v168 ^ 0x7F | 0xFFFFFFD3)) ^ v168 ^ 0xFFFFFF86;
  v176 = v175 - ((2 * v175) & 0x6A) - 75;
  v177 = ((v112[v176 ^ 0x22] - (v176 ^ 0x22 | 0xD3)) ^ v176) ^ 0x1DLL;
  LODWORD(v177) = (v112[v177] - (v177 | 0xFFFFFFD3)) ^ (v112[v176 ^ 0x22] - (v176 ^ 0x22 | 0xFFFFFFD3)) ^ v176;
  v178 = v176 ^ 0xB5 | ((((v112[v176 ^ 0x22] - (v176 ^ 0x22 | 0xD3)) ^ v176) ^ 0xD4) << 8);
  v179 = (v112[v177 ^ 0x4CLL] - (v177 ^ 0x4C | 0xFFFFFFD3)) ^ v177;
  *(v170 - 0x4482F840E2E05CA5) = (__ROR4__(__ROR4__(v155, 23) ^ 0x2E2268DC, 9) ^ 0x164DCE41u | (((((v179 ^ 0xFFFFFFE7) << 24) | 0xA1) ^ (v178 & 0xFF00FFFF | ((v177 ^ 0xC3) << 16))) << 32)) ^ 0x8A8805A6247AA9F9;
  v180 = STACK[0x2D30];
  v181 = *(STACK[0x2D30] - 0x2A510ED33EFDCD7ELL);
  v182 = *&v330[4 * (BYTE1(v181) ^ 0x56)] + (BYTE1(v181) ^ 0x56) * (BYTE1(v181) ^ 0x56);
  LODWORD(v181) = (*&v102[4 * ((v181 >> 24) ^ 0xA4)] + ((v181 >> 24) ^ 0xA4) * ((v181 >> 24) ^ 0xA4) + 1947683826) ^ (*&v100[4 * (v181 ^ 0xEDLL)] - (v181 ^ 0xED | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v181) ^ 0x5DLL)] + (BYTE2(v181) ^ 0x5D) * (BYTE2(v181) ^ 0x5D), 20) ^ v182 ^ 0xEFC9EC68 ^ ((8 * (v182 ^ 0xEFC9EC68)) | 0x27923AF0);
  v183 = (*&v103[4 * (v181 ^ 0x47)] - (v181 | 0xCF)) ^ 0x6B941CB8;
  v184 = v183 - ((2 * v183) & 0x4C6239CC) - 1506730778;
  v185 = (*&v109[4 * (BYTE2(v181) ^ 0xB9)] + (BYTE2(v181) ^ 0xB9) * (BYTE2(v181) ^ 0xB9)) ^ 0xB1DB9DC8;
  v186 = (v112[v179 ^ 0x93] - (v179 | 0xFFFFFFD3)) ^ v179 ^ 0xFFFFFFE7;
  v187 = v186 - ((2 * v186) & 0xFFFFFF88) + 68;
  LODWORD(v170) = v185 - ((2 * v185) & 0xCCF05232) - 428332775;
  LODWORD(v181) = (*&v331[4 * (BYTE3(v181) ^ 0xD5)] - (BYTE3(v181) ^ 0xD5 | 0x99)) ^ BYTE1(v181) ^ 0x9C ^ (*&v332[4 * (BYTE1(v181) ^ 0x59)] - (BYTE1(v181) ^ 0x9C | 0xF7)) ^ v184 ^ (v170 >> 4) ^ (v170 >> 5) ^ (4 * (v184 ^ 0x26311CE6) * (v184 ^ 0x26311CE6) - ((8 * (v184 ^ 0x26311CE6) * (v184 ^ 0x26311CE6)) & 0x4C6239C8) - 1506730778);
  v188 = ((v112[v187 ^ 0xEDLL] - (v187 ^ 0xED | 0xD3)) ^ v187) ^ 0xFALL;
  LODWORD(v188) = (v112[v188] - (v188 | 0xFFFFFFD3)) ^ (v112[v187 ^ 0xEDLL] - (v187 ^ 0xED | 0xFFFFFFD3)) ^ v187;
  v189 = v187 ^ 0x44 | ((((v112[v187 ^ 0xEDLL] - (v187 ^ 0xED | 0xD3)) ^ v187) ^ 0x38) << 8);
  v190 = (v112[v188 ^ 0xALL] - (v188 ^ 0xA | 0xFFFFFFD3)) ^ v188;
  v191 = (v170 ^ 0x164DCE41 ^ ((v181 ^ 0x95443D9) - 2 * ((v181 ^ 0x95443D9) & 0x6678291B ^ v181 & 2) - 428332775) | (((((v190 ^ 0xFFFFFFA7) << 24) | 0xE5) ^ (v189 & 0xFF00FFFF | ((v188 ^ 0x80) << 16))) << 32)) ^ 0x8A8805A6855F542DLL;
  v192 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C9DLL) = v191;
  v193 = *(v180 - 0x2A510ED33EFDCD7ALL);
  LODWORD(v191) = *&v330[4 * (BYTE1(v193) ^ 0x39)] + (BYTE1(v193) ^ 0x39) * (BYTE1(v193) ^ 0x39);
  LODWORD(v193) = (*&v102[4 * ((v193 >> 24) ^ 0xD2)] + ((v193 >> 24) ^ 0xD2) * ((v193 >> 24) ^ 0xD2) + 1947683826) ^ (*&v100[4 * (v193 ^ 0xDALL)] - (v193 ^ 0xDA | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v193) ^ 0x22)] + (BYTE2(v193) ^ 0x22) * (BYTE2(v193) ^ 0x22), 20) ^ v191 ^ 0xEFC9EC68 ^ ((8 * (v191 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v191) = (*&v103[4 * (v193 ^ 0xCB)] - (v193 | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v191) = v191 - ((2 * v191) & 0xB4AD01AA) - 631865131;
  LODWORD(v188) = (*&v332[4 * (BYTE1(v193) ^ 0x1D)] - (BYTE1(v193) ^ 0xD8 | 0xF7)) ^ BYTE1(v193) ^ 0xD8 ^ (((4 * v191) ^ 0x695A0354) * (v191 ^ 0x1A5680D5));
  LODWORD(v191) = (v188 - ((2 * v188) & 0xB4AD01AA) - 631865131) ^ v191;
  LODWORD(v188) = *&v109[4 * (BYTE2(v193) ^ 0x1E)] + (BYTE2(v193) ^ 0x1E) * (BYTE2(v193) ^ 0x1E);
  v194 = (v112[v190 ^ 0x91] - (v190 | 0xFFFFFFD3)) ^ v190 ^ 0xFFFFFFA7;
  v195 = v194 + (~(2 * v194) | 0x7D) - 62;
  LODWORD(v188) = (v188 ^ 0xB1DB9DC8) - 2 * ((v188 ^ 0xB1DB9DC8) & 0x25E371A2 ^ v188 & 0x20) + 635662722;
  v196 = v188 ^ (*&v331[4 * (BYTE3(v193) ^ 0x3C)] - (BYTE3(v193) ^ 0x3C | 0x99)) ^ (v188 >> 4) ^ (v188 >> 5) ^ (v191 - ((2 * v191) & 0x4BC6E304) + 635662722);
  v197 = ((v112[v195 ^ 0xCCLL] - (v195 ^ 0xCC | 0xD3)) ^ v195) ^ 0xCLL;
  LODWORD(v197) = (v112[v197] - (v197 | 0xFFFFFFD3)) ^ (v112[v195 ^ 0xCCLL] - (v195 ^ 0xCC | 0xFFFFFFD3)) ^ v195;
  LODWORD(v177) = (v112[v197 ^ 0xB0] - (v197 ^ 0xB0 | 0xFFFFFFD3)) ^ v197;
  *(v192 - 0x4482F840E2E05C95) = (((((((v112[v195 ^ 0xCCLL] - (v195 ^ 0xCC | 0xD3)) ^ v195) ^ 0xC1) << 8) | ((v177 ^ 0xFFFFFFE3) << 24) | v195 ^ 0xC1) << 32) | ((v197 ^ 0xCCu) << 48) | v196) ^ 0x8A88C466DC497760;
  v198 = STACK[0x2D30];
  v199 = *(STACK[0x2D30] - 0x2A510ED33EFDCD76);
  LODWORD(v188) = *&v330[4 * (BYTE1(v199) ^ 0x27)] + (BYTE1(v199) ^ 0x27) * (BYTE1(v199) ^ 0x27);
  LODWORD(v199) = (*&v102[4 * ((v199 >> 24) ^ 0x95)] + ((v199 >> 24) ^ 0x95) * ((v199 >> 24) ^ 0x95) + 1947683826) ^ (*&v100[4 * (v199 ^ 0x96)] - (v199 ^ 0x96 | 0x15)) ^ v188 ^ __ROR4__(*&v129[4 * (BYTE2(v199) ^ 0xB8)] + (BYTE2(v199) ^ 0xB8) * (BYTE2(v199) ^ 0xB8), 20) ^ (8 * v188) & 0xD86DC508;
  LODWORD(v188) = (*&v103[4 * (v199 ^ 0x9A)] - (v199 ^ 0x9A | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v188) = v188 - ((2 * v188) & 0xDF5A011C) - 273874802;
  v200 = *&v109[4 * (BYTE2(v199) ^ 0x19)] + (BYTE2(v199) ^ 0x19) * (BYTE2(v199) ^ 0x19);
  LODWORD(v192) = BYTE1(v199) ^ (*&v332[4 * (BYTE1(v199) ^ 0xA9)] - (BYTE1(v199) ^ 0xA9 | 0xF7)) ^ 0x16 ^ (((4 * v188) ^ 0xBEB40238) * (v188 ^ 0x2FAD008E));
  v201 = (v112[v177 ^ 0xDDLL] - (v177 ^ 0xDD | 0xFFFFFFD3)) ^ v177 ^ 0xFFFFFFE3;
  v202 = v201 - ((2 * v201) & 0xFFFFFFBC) - 34;
  LODWORD(v199) = (*&v331[4 * (BYTE3(v199) ^ 0x3B)] - (BYTE3(v199) ^ 0x3B | 0x99)) ^ v200 ^ ((v200 ^ 0xB1DB9DC8) >> 4) ^ ((v200 ^ 0xB1DB9DC8) >> 5) ^ v188;
  LODWORD(v177) = (v112[v202 ^ 0xE3] - (v202 ^ 0xE3 | 0xFFFFFFD3)) ^ v202;
  LODWORD(v188) = v112[((v112[v202 ^ 0xE3] - (v202 ^ 0xE3 | 0xD3)) ^ v202) ^ 2] - (v177 | 0xFFFFFFD3);
  LODWORD(v177) = v177 ^ 1;
  LODWORD(v188) = (v188 ^ v177) - ((2 * (v188 ^ v177)) & 0x22) - 111;
  v203 = ((v202 ^ 0xDEu) << 32) | (v177 << 40);
  LODWORD(v177) = (v112[v188 ^ 0x3FLL] - (v188 ^ 0x3F | 0xFFFFFFD3)) ^ v188;
  v204 = v203 | ((v188 ^ 0xE4u) << 48);
  v205 = v177 ^ 0x1D;
  v206 = (v204 | (v205 << 56) | v199 ^ 0x164DCE41 ^ (v192 - ((2 * v192) & 0xDF5A011C) - 273874802)) ^ 0x8A8805AC13714F07;
  v207 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C8DLL) = v206;
  v208 = *(v198 - 0x2A510ED33EFDCD72);
  LODWORD(v204) = *&v330[4 * (BYTE1(v208) ^ 0x7ELL)] + (BYTE1(v208) ^ 0x7E) * (BYTE1(v208) ^ 0x7E);
  LODWORD(v208) = (*&v102[4 * ((v208 >> 24) ^ 0xF5)] + ((v208 >> 24) ^ 0xF5) * ((v208 >> 24) ^ 0xF5) + 1947683826) ^ (*&v100[4 * (v208 ^ 0x1CLL)] - (v208 ^ 0x1C | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v208) ^ 0x13)] + (BYTE2(v208) ^ 0x13) * (BYTE2(v208) ^ 0x13), 20) ^ v204 ^ 0xEFC9EC68 ^ ((8 * (v204 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v206) = *&v103[4 * (v208 ^ 0x51)] - (v208 ^ 0x51 | 0xCF);
  LODWORD(v206) = (v206 ^ 0x6B941CB8) - 2 * ((v206 ^ 0x6B941CB8) & 0x66CC34FB ^ v206 & 1) + 1724658938;
  v209 = *&v109[4 * (BYTE2(v208) ^ 0xD7)] + (BYTE2(v208) ^ 0xD7) * (BYTE2(v208) ^ 0xD7);
  LODWORD(v204) = BYTE1(v208) ^ (*&v332[4 * (BYTE1(v208) ^ 0x6A)] - (BYTE1(v208) ^ 0x6A | 0xF7)) ^ 0xD5 ^ (((4 * v206) ^ 0x9B30D3E8) * (v206 ^ 0x26CC34FA));
  LODWORD(v205) = (v112[v177 ^ 0x5ELL] - (v177 ^ 0x5E | 0xFFFFFFD3)) ^ v205;
  LODWORD(v177) = (v209 ^ 0xB1DB9DC8) - 2 * ((v209 ^ 0xB1DB9DC8) & 0x2481BC35 ^ v209 & 5) - 1535001552;
  LODWORD(v208) = (*&v331[4 * (BYTE3(v208) ^ 0x8A)] - (BYTE3(v208) ^ 0x8A | 0x99)) ^ v206 ^ (v177 >> 4) ^ (v177 >> 5) ^ 0xF6C1622 ^ (v204 - ((2 * v204) & 0xCD9869F4) + 1724658938);
  v210 = v177 ^ 0x164DCE41 ^ (v208 - ((2 * v208) & 0x49037860) - 1535001552);
  LODWORD(v206) = v205 - ((2 * v205) & 0xFFFFFF92) + 73;
  v211 = (v205 - ((2 * v205) & 0x92) + 73) ^ 0xADLL;
  LODWORD(v211) = (v112[v211] - (v211 | 0xFFFFFFD3)) ^ v206;
  LODWORD(v204) = (v112[v211 ^ 0xBBLL] - (v211 ^ 0xBB | 0xFFFFFFD3)) ^ v211;
  LODWORD(v177) = (v112[((v112[v211 ^ 0xBBLL] - (v211 ^ 0xBB | 0xD3)) ^ v211) ^ 0x13] - (v204 | 0xFFFFFFD3)) ^ v204;
  *(v207 - 0x4482F840E2E05C85) = (((v206 ^ 0x49u) << 32) | (((((v112[v211 ^ 0xBBLL] - (v211 ^ 0xBB | 0xD3)) ^ v211) << 8) | ((v177 ^ 0xFFFFFFDC) << 16) | v211 ^ 0x49) << 40) | v210) ^ 0x8AF3FB869BF50B5ELL;
  v212 = STACK[0x2D30];
  v213 = *(STACK[0x2D30] - 0x2A510ED33EFDCD6ELL);
  LODWORD(v204) = *&v330[4 * (BYTE1(v213) ^ 0xFBLL)] + (BYTE1(v213) ^ 0xFB) * (BYTE1(v213) ^ 0xFB);
  LODWORD(v213) = (*&v102[4 * ((v213 >> 24) ^ 0x38)] + ((v213 >> 24) ^ 0x38) * ((v213 >> 24) ^ 0x38) + 1947683826) ^ (*&v100[4 * (v213 ^ 0xAFLL)] - (v213 ^ 0xAF | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v213) ^ 0xBALL)] + (BYTE2(v213) ^ 0xBA) * (BYTE2(v213) ^ 0xBA), 20) ^ v204 ^ 0xEFC9EC68 ^ ((8 * (v204 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v204) = (*&v103[4 * (v213 ^ 0xC5)] - (v213 | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v204) = v204 - ((2 * v204) & 0xD46E316) - 2036108917;
  v214 = *&v109[4 * (BYTE2(v213) ^ 0x29)] + (BYTE2(v213) ^ 0x29) * (BYTE2(v213) ^ 0x29);
  v215 = (v214 ^ 0xB1DB9DC8) - 2 * ((v214 ^ 0xB1DB9DC8) & 0x6DB03175 ^ v214 & 5) - 307220112;
  LODWORD(v211) = (v112[v177 ^ 0xCALL] - (v177 ^ 0xCA | 0xFFFFFFD3)) ^ v177 ^ 0xFFFFFFDC;
  LODWORD(v211) = v211 - 2 * (v211 & 0xF) + 15;
  LODWORD(v207) = (v112[v211 ^ 0xEBLL] - (v211 ^ 0xEB | 0xFFFFFFD3)) ^ v211;
  v216 = ((v112[v211 ^ 0xEBLL] - (v211 ^ 0xEB | 0xD3)) ^ v211) ^ 0x45;
  LODWORD(v216) = (v112[v216] - (v216 | 0xFFFFFFD3)) ^ v207;
  LOBYTE(v189) = v211 ^ 0xF;
  LOBYTE(v211) = v216 ^ 0xF;
  LODWORD(v216) = (v112[v216 ^ 0x1DLL] - (v216 ^ 0x1D | 0xFFFFFFD3)) ^ v216 ^ 0xF;
  v217 = ((((v211 << 16) | ((v216 ^ 0xFFFFFFE8) << 24) | v189) << 32) | ((v207 ^ 0x2Bu) << 40) | BYTE1(v213) ^ (*&v332[4 * (BYTE1(v213) ^ 0x57)] - (BYTE1(v213) | 0xF7)) ^ (*&v331[4 * (BYTE3(v213) ^ 0x5B)] - (BYTE3(v213) ^ 0x5B | 0x99)) ^ v204 ^ v215 ^ (4 * (v204 ^ 0x6A3718B) * (v204 ^ 0x6A3718B) - ((8 * (v204 ^ 0x6A3718B) * (v204 ^ 0x6A3718B)) & 0xD46E310) - 2036108917) ^ 0xE8 ^ (((v215 >> 5) ^ (v215 >> 4) ^ 0x9B6829C) - ((2 * ((v215 >> 5) ^ (v215 >> 4) ^ 0x9B6829C)) & 0x1B6062E0) - 307220112)) ^ 0x8A6D054E9384D377;
  v218 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C7DLL) = v217;
  v219 = *(v212 - 0x2A510ED33EFDCD6ALL);
  LODWORD(v217) = *&v330[4 * (BYTE1(v219) ^ 0xB1)] + (BYTE1(v219) ^ 0xB1) * (BYTE1(v219) ^ 0xB1);
  LODWORD(v219) = (*&v102[4 * ((v219 >> 24) ^ 0x13)] + ((v219 >> 24) ^ 0x13) * ((v219 >> 24) ^ 0x13) + 1947683826) ^ (*&v100[4 * (v219 ^ 0xFBLL)] - (v219 ^ 0xFB | 0x15)) ^ v217 ^ __ROR4__(*&v129[4 * (BYTE2(v219) ^ 0x77)] + (BYTE2(v219) ^ 0x77) * (BYTE2(v219) ^ 0x77), 20) ^ (8 * v217) & 0xD86DC508;
  LODWORD(v217) = (*&v103[4 * (v219 ^ 0xBC)] - (v219 ^ 0xBC | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v217) = v217 - ((2 * v217) & 0x37F0A828) - 1678224364;
  LODWORD(v204) = (*&v332[4 * (BYTE1(v219) ^ 0x1C)] - (BYTE1(v219) ^ 0x1C | 0xF7)) ^ BYTE1(v219) ^ (((4 * v217) ^ 0x6FE15050) * (v217 ^ 0x1BF85414));
  LODWORD(v217) = ((v204 ^ 0xA3) - ((2 * v204) & 0x37F0A828) - 1678224364) ^ v217;
  LODWORD(v204) = (*&v109[4 * (BYTE2(v219) ^ 0x9A)] + (BYTE2(v219) ^ 0x9A) * (BYTE2(v219) ^ 0x9A)) ^ 0xB1DB9DC8;
  LODWORD(v211) = (v112[v216 ^ 0xE1] - (v216 ^ 0xE1 | 0xFFFFFFD3)) ^ v216 ^ 0xFFFFFFE8;
  LODWORD(v216) = v217 - ((2 * v217) & 0x97249E0);
  LODWORD(v211) = v211 - ((2 * v211) & 0x12) + 9;
  LODWORD(v217) = (-122 - (v211 ^ 0xFFFFFFC6)) ^ ((v211 ^ 0xFFFFFFBF) + 1);
  LODWORD(v211) = v211 ^ 0x49 ^ (v217 - ((2 * v217) & 0x12) + 9);
  LODWORD(v219) = (v204 - ((2 * v204) & 0x97249E0) - 2068241168) ^ (*&v331[4 * (BYTE3(v219) ^ 0xA8)] - (BYTE3(v219) ^ 0xA8 | 0x99)) ^ ((v204 - ((2 * v204) & 0x97249E0) - 2068241168) >> 4) ^ ((v204 - ((2 * v204) & 0x97249E0) - 2068241168) >> 5);
  LODWORD(v217) = v211 + ((114 - 2 * v211) | 0xFFFFFF87) - 61;
  v220 = (v211 + ((114 - 2 * v211) | 0x87) - 61) ^ 0x8FLL;
  LODWORD(v220) = (v112[v220] - (v220 | 0xFFFFFFD3)) ^ v217;
  LODWORD(v204) = (v112[v220 ^ 0xA6] - (v220 ^ 0xA6 | 0xFFFFFFD3)) ^ v220;
  LOBYTE(v189) = v220 ^ 0x3C;
  v221 = (v112[((v112[v220 ^ 0xA6] - (v220 ^ 0xA6 | 0xD3)) ^ v220) ^ 2] - (v204 | 0xFFFFFFD3)) ^ v204;
  *(v218 - 0x4482F840E2E05C75) = v219 ^ (v216 - 2068241168) ^ __ROR8__((((v204 ^ 0x3Cu) << 8) | ((v221 ^ 0x94u) << 16) | v189 | ((v217 ^ 0x3C) << 56)) ^ 0xEA148B15A83E830ELL, 24) ^ 0xB405454C45D1E826;
  v222 = STACK[0x2D30];
  v223 = *(STACK[0x2D30] - 0x2A510ED33EFDCD66);
  if ((v223 & 0x20000000) != 0)
  {
    v224 = -536870912;
  }

  else
  {
    v224 = 0x20000000;
  }

  v225 = *&v330[4 * (BYTE1(v223) ^ 0x8CLL)] + (BYTE1(v223) ^ 0x8C) * (BYTE1(v223) ^ 0x8C);
  v226 = (*&v100[4 * (v223 ^ 0xBFLL)] - (v223 ^ 0xBF | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v223) ^ 0xD0)] + (BYTE2(v223) ^ 0xD0) * (BYTE2(v223) ^ 0xD0), 20) ^ v225 ^ 0xEFC9EC68 ^ ((8 * (v225 ^ 0xEFC9EC68)) | 0x27923AF0) ^ (*&v102[4 * (((v224 + (v223 ^ 0x58000000u)) >> 24) ^ 0xD)] + (((v224 + (v223 ^ 0x58000000u)) >> 24) ^ 0xD) * (((v224 + (v223 ^ 0x58000000u)) >> 24) ^ 0xD) + 1947683826);
  v227 = *&v103[4 * (v226 ^ 0x52)] - (v226 ^ 0x52 | 0xCF);
  v228 = (v227 ^ 0x6B941CB8) - 2 * ((v227 ^ 0x6B941CB8) & 0x5C18E18C ^ v227 & 4) + 1545134472;
  v229 = (*&v109[4 * (BYTE2(v226) ^ 0xB0)] + (BYTE2(v226) ^ 0xB0) * (BYTE2(v226) ^ 0xB0)) ^ 0xB1DB9DC8;
  v230 = v229 - ((2 * v229) & 0xEA024420) + 1963008528;
  v231 = v112[v221 ^ 0x6FLL] - (v221 ^ 0x6F | 0xFFFFFFD3);
  v232 = v231 ^ v221 ^ 0xFFFFFF94;
  v233 = BYTE1(v226) ^ (*&v332[4 * (BYTE1(v226) ^ 0xF3)] - (BYTE1(v226) | 0xF7)) ^ (*&v331[4 * (HIBYTE(v226) ^ 0x3B)] - (HIBYTE(v226) ^ 0x3B | 0x99)) ^ v230 ^ (((4 * v228) ^ 0x70638620) * (v228 ^ 0x1C18E188)) ^ 0x4C ^ (((v230 >> 5) ^ (v230 >> 4) ^ 0x4F81B31) - ((2 * ((v230 >> 5) ^ (v230 >> 4) ^ 0x4F81B31)) & 0xA024420) + 1963008528);
  v234 = (v112[(v221 ^ v231) ^ 0x3C] - (v221 ^ v231 ^ 0x3C | 0xFFFFFFD3)) ^ v232;
  v235 = v234 - ((2 * v234) & 0xFFFFFF9A) + 77;
  v236 = (v233 - ((2 * v233) & 0xB831C310) + 1545134472) ^ v228;
  v237 = v112[v235 ^ 0x5CLL] - (v235 ^ 0x5C | 0xFFFFFFD3);
  v238 = v235 ^ 0x7C;
  v239 = v235 ^ 0x4D ^ v237;
  v240 = (v112[(v237 ^ v238) ^ 0x91] - (v237 ^ v238 | 0xFFFFFFD3)) ^ v239;
  v241 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C6DLL) = ((v232 << 32) | (((v239 << 8) | ((v240 ^ 0xFFFFFFB9) << 16) | v238) << 40) | v236) ^ 0x8A49C977F86E231FLL;
  v242 = *(v222 - 0x2A510ED33EFDCD62);
  v243 = *&v330[4 * (BYTE1(v242) ^ 0x8ALL)] + (BYTE1(v242) ^ 0x8A) * (BYTE1(v242) ^ 0x8A);
  LODWORD(v236) = *&v129[4 * (BYTE2(v242) ^ 0xCFLL)] + (BYTE2(v242) ^ 0xCF) * (BYTE2(v242) ^ 0xCF);
  LODWORD(v242) = (*&v102[4 * ((v242 >> 24) ^ 0xAC)] + ((v242 >> 24) ^ 0xAC) * ((v242 >> 24) ^ 0xAC) + 1947683826) ^ (*&v100[4 * (v242 ^ 0x9CLL)] - (v242 ^ 0x9C | 0x15)) ^ (v236 << 12) ^ (v236 >> 20) ^ v243 ^ 0xEFC9EC68 ^ ((8 * (v243 ^ 0xEFC9EC68)) | 0x27923AF0);
  v244 = (*&v103[4 * (v242 ^ 0x73)] - (v242 ^ 0x73 | 0xCF)) ^ 0x6B941CB8;
  v245 = v244 - ((2 * v244) & 0x6ECCCB7C) + 929457598;
  v246 = *&v109[4 * (BYTE2(v242) ^ 0x28)] + (BYTE2(v242) ^ 0x28) * (BYTE2(v242) ^ 0x28);
  v247 = (v246 ^ 0xB1DB9DC8) - 2 * ((v246 ^ 0xB1DB9DC8) & 0x54FC3F37 ^ v246 & 0x14) - 721666269;
  LODWORD(v242) = BYTE1(v242) ^ (*&v331[4 * (BYTE3(v242) ^ 0x15)] - (BYTE3(v242) ^ 0x15 | 0x99)) ^ (*&v332[4 * (BYTE1(v242) ^ 0x3B)] - (BYTE1(v242) ^ 0x3B | 0xF7)) ^ v247 ^ (((4 * v245) ^ 0xDD9996F8) * (v245 ^ 0x376665BE)) ^ 0x84 ^ (((v247 >> 5) ^ (v247 >> 4) ^ 0xBE8220B) - 721666269 - 2 * (((v247 >> 5) ^ (v247 >> 4) ^ 0xBE8220B) & 0x4FC3F37 ^ ((v247 >> 5) ^ (v247 >> 4)) & 0x14));
  v248 = (v112[v240 ^ 0xBBLL] - (v240 ^ 0xBB | 0xFFFFFFD3)) ^ v240 ^ 0xFFFFFFB9;
  v249 = v248 - ((2 * v248) & 0x72) - 71;
  LODWORD(v236) = (v112[v249 ^ 0xA3] - (v249 ^ 0xA3 | 0xFFFFFFD3)) ^ v249;
  v250 = ((v112[v249 ^ 0xA3] - (v249 ^ 0xA3 | 0xD3)) ^ v249) ^ 0xBFLL;
  LODWORD(v250) = (v112[v250] - (v250 | 0xFFFFFFD3)) ^ v236;
  v251 = v249 ^ 0xB9;
  LOBYTE(v249) = v250 ^ 0xB9;
  LODWORD(v250) = (v112[v250 ^ 0xELL] - (v250 ^ 0xE | 0xFFFFFFD3)) ^ v250 ^ 0xFFFFFFB9;
  *(v241 - 0x4482F840E2E05C65) = (v245 ^ 0x164DCE41 ^ (v242 - ((2 * v242) & 0x6ECCCB7C) + 929457598) | ((((v249 << 16) | ((v250 ^ 0xFFFFFF9F) << 24) | v251) ^ (((v236 ^ 0x90) << 8) | 0x60)) << 32)) ^ 0x8A2005A656561767;
  v252 = STACK[0x2D30];
  v253 = *(STACK[0x2D30] - 0x2A510ED33EFDCD5ELL);
  LODWORD(v236) = *&v330[4 * (BYTE1(v253) ^ 0x74)] + (BYTE1(v253) ^ 0x74) * (BYTE1(v253) ^ 0x74);
  LODWORD(v253) = (*&v102[4 * ((v253 >> 24) ^ 0xF6)] + ((v253 >> 24) ^ 0xF6) * ((v253 >> 24) ^ 0xF6) + 1947683826) ^ (*&v100[4 * (v253 ^ 0x8ALL)] - (v253 ^ 0x8A | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v253) ^ 0x2DLL)] + (BYTE2(v253) ^ 0x2D) * (BYTE2(v253) ^ 0x2D), 20) ^ v236 ^ 0xEFC9EC68 ^ ((8 * (v236 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v236) = (*&v103[4 * (v253 ^ 0x6C)] - (v253 ^ 0x6C | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v236) = v236 - ((2 * v236) & 0xB14EFF2E) + 1487372183;
  v254 = (*&v109[4 * (BYTE2(v253) ^ 0xC3)] + (BYTE2(v253) ^ 0xC3) * (BYTE2(v253) ^ 0xC3)) ^ 0xB1DB9DC8;
  v255 = v254 - ((2 * v254) & 0x5FB51EFA) - 1344630915;
  v256 = (v112[v250 ^ 0x38] - (v250 ^ 0x38 | 0xFFFFFFD3)) ^ v250 ^ 0xFFFFFF9F;
  v257 = BYTE1(v253) ^ (*&v331[4 * (BYTE3(v253) ^ 0x43)] - (BYTE3(v253) ^ 0x43 | 0x99)) ^ (*&v332[4 * (BYTE1(v253) ^ 0xCC)] - (BYTE1(v253) ^ 0xCC | 0xF7)) ^ v236 ^ v255 ^ (4 * (v236 ^ 0x18A77F97) * (v236 ^ 0x18A77F97) - ((8 * (v236 ^ 0x18A77F97) * (v236 ^ 0x18A77F97)) & 0xB14EFF28) + 1487372183) ^ 0x73 ^ (((v255 >> 5) ^ (v255 >> 4) ^ 0xF837C8C) - ((2 * ((v255 >> 5) ^ (v255 >> 4) ^ 0xF837C8C)) & 0x1FB51EFA) - 1344630915);
  LODWORD(v236) = v256 - ((2 * v256) & 0x42) + 33;
  v258 = (v256 - ((2 * v256) & 0x42) + 33) ^ 0x1BLL;
  LODWORD(v258) = (v112[v258] - (v258 | 0xFFFFFFD3)) ^ v236;
  v259 = ((v112[v258 ^ 0x47] - (v258 ^ 0x47 | 0xD3)) ^ v258) ^ 0x7DLL;
  LOBYTE(v255) = v258 ^ 0x21;
  LODWORD(v258) = (v112[v258 ^ 0x47] - (v258 ^ 0x47 | 0xFFFFFFD3)) ^ v258 ^ 0x21;
  LODWORD(v250) = (v112[v259] - (v259 | 0xFFFFFFD3)) ^ v258;
  v260 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C5DLL) = (((v236 ^ 0x21u) << 32) | (((v258 << 8) | ((v250 ^ 0x15) << 16) | v255) << 40) | v257) ^ 0x8A8C616083E935EBLL;
  v261 = *(v252 - 0x2A510ED33EFDCD5ALL);
  LODWORD(v257) = *&v330[4 * (BYTE1(v261) ^ 0x45)] + (BYTE1(v261) ^ 0x45) * (BYTE1(v261) ^ 0x45);
  LODWORD(v261) = (*&v102[4 * ((v261 >> 24) ^ 0xE4)] + ((v261 >> 24) ^ 0xE4) * ((v261 >> 24) ^ 0xE4) + 1947683826) ^ (*&v100[4 * (v261 ^ 0x23)] - (v261 ^ 0x23 | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v261) ^ 0x2ALL)] + (BYTE2(v261) ^ 0x2A) * (BYTE2(v261) ^ 0x2A), 20) ^ v257 ^ 0xEFC9EC68 ^ ((8 * (v257 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v257) = *&v103[4 * (v261 ^ 0x26)] - (v261 ^ 0x26 | 0xCF);
  LODWORD(v257) = (v257 ^ 0x6B941CB8) - 2 * ((v257 ^ 0x6B941CB8) & 0x5C1786B5 ^ v257 & 4) + 1545045681;
  v262 = *&v109[4 * (BYTE2(v261) ^ 0xD)] + (BYTE2(v261) ^ 0xD) * (BYTE2(v261) ^ 0xD);
  LODWORD(v236) = BYTE1(v261) ^ (*&v332[4 * (BYTE1(v261) ^ 0x82)] - (BYTE1(v261) | 0xF7)) ^ 0x3D ^ (((4 * v257) ^ 0x705E1AC4) * (v257 ^ 0x1C1786B1));
  LODWORD(v258) = (v112[v250 ^ 0x57] - (v250 ^ 0x57 | 0xFFFFFFD3)) ^ v250 ^ 0x15;
  LODWORD(v258) = v258 - ((2 * v258) & 0xFFFFFF88) - 60;
  LODWORD(v261) = (*&v331[4 * (BYTE3(v261) ^ 0x82)] - (BYTE3(v261) ^ 0x82 | 0x99)) ^ v257;
  LODWORD(v257) = (v262 ^ 0xB1DB9DC8) - 2 * ((v262 ^ 0xB1DB9DC8) & 0xE72DAF6 ^ v262 & 0x10) + 242408166;
  LODWORD(v261) = v261 ^ (v257 >> 4) ^ (v257 >> 5) ^ 0x94BB79 ^ (v236 - ((2 * v236) & 0xB82F0D62) + 1545045681);
  v263 = (v261 - ((2 * v261) & 0x1CE5B5CC) + 242408166) ^ v257;
  v264 = ((v112[v258 ^ 0x1ALL] - (v258 ^ 0x1A | 0xD3)) ^ v258) ^ 0xA8;
  LODWORD(v264) = (v112[v264] - (v264 | 0xFFFFFFD3)) ^ (v112[v258 ^ 0x1ALL] - (v258 ^ 0x1A | 0xFFFFFFD3)) ^ v258;
  LODWORD(v250) = (v112[v264 ^ 0xAALL] - (v264 ^ 0xAA | 0xFFFFFFD3)) ^ v264;
  v265 = ((v258 ^ 0xC4u) << 32) | ((((v112[v258 ^ 0x1ALL] - (v258 ^ 0x1A | 0xD3)) ^ v258) ^ 0xBEu) << 40) | ((v264 ^ 0x56u) << 48);
  v266 = v250 ^ 0xFFFFFFF4;
  *(v260 - 0x4482F840E2E05C55) = (v265 | (v266 << 56) | v263) ^ 0x8A8805930ABF5091;
  v267 = STACK[0x2D30];
  v268 = *(STACK[0x2D30] - 0x2A510ED33EFDCD56);
  LODWORD(v236) = *&v330[4 * (BYTE1(v268) ^ 0xC0)] + (BYTE1(v268) ^ 0xC0) * (BYTE1(v268) ^ 0xC0);
  LODWORD(v268) = (*&v102[4 * ((v268 >> 24) ^ 0x35)] + ((v268 >> 24) ^ 0x35) * ((v268 >> 24) ^ 0x35) + 1947683826) ^ (*&v100[4 * (v268 ^ 0x48)] - (v268 ^ 0x48 | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v268) ^ 0xADLL)] + (BYTE2(v268) ^ 0xAD) * (BYTE2(v268) ^ 0xAD), 20) ^ v236 ^ 0xEFC9EC68 ^ ((8 * (v236 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v236) = (*&v103[4 * (v268 ^ 0x7D)] - (v268 ^ 0x7D | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v236) = v236 - ((2 * v236) & 0xDE41D192) + 1864427721;
  v269 = *&v109[4 * (BYTE2(v268) ^ 0xCD)] + (BYTE2(v268) ^ 0xCD) * (BYTE2(v268) ^ 0xCD);
  v270 = (v269 ^ 0xB1DB9DC8) - 2 * ((v269 ^ 0xB1DB9DC8) & 0x11F943B9 ^ v269 & 0x10) + 301548457;
  LODWORD(v266) = (v112[v250 ^ 0xEELL] - (v250 ^ 0xEE | 0xFFFFFFD3)) ^ v266;
  LODWORD(v266) = v266 - ((2 * v266) & 0x38) - 100;
  v271 = BYTE1(v268) ^ 0x164DCEC3 ^ (*&v331[4 * (BYTE3(v268) ^ 0xFB)] - (BYTE3(v268) ^ 0xFB | 0x99)) ^ (*&v332[4 * (BYTE1(v268) ^ 0x3D)] - (BYTE1(v268) ^ 0x3D | 0xF7)) ^ v236 ^ v270 ^ (4 * (v236 ^ 0x2F20E8C9) * (v236 ^ 0x2F20E8C9) - ((8 * (v236 ^ 0x2F20E8C9) * (v236 ^ 0x2F20E8C9)) & 0xDE41D190) + 1864427721) ^ (((v270 >> 5) ^ (v270 >> 4) ^ 0x1905E27) - ((2 * ((v270 >> 5) ^ (v270 >> 4) ^ 0x1905E27)) & 0x3F28752) + 301548457);
  LODWORD(v250) = (v112[v266 ^ 0x7CLL] - (v266 ^ 0x7C | 0xFFFFFFD3)) ^ v266;
  v272 = ((v112[v266 ^ 0x7CLL] - (v266 ^ 0x7C | 0xD3)) ^ v266) ^ 0xEBLL;
  LODWORD(v272) = (v112[v272] - (v272 | 0xFFFFFFD3)) ^ v250;
  LOBYTE(v255) = v266 ^ 0x9C;
  LODWORD(v266) = (v112[v272 ^ 0x3FLL] - (v272 ^ 0x3F | 0xFFFFFFD3)) ^ v272;
  v273 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C4DLL) = (v271 | ((((v250 ^ 0x9C) << 8) | ((v266 ^ 0x58) << 24) | v255 | ((v272 ^ 0x9D) << 16)) << 32)) ^ 0x8A88719227F6A717;
  v274 = *(v267 - 0x2A510ED33EFDCD52);
  LODWORD(v272) = *&v330[4 * BYTE1(v274)] + BYTE1(v274) * BYTE1(v274);
  LODWORD(v274) = (*&v102[4 * ((v274 >> 24) ^ 0x70)] + ((v274 >> 24) ^ 0x70) * ((v274 >> 24) ^ 0x70) + 1947683826) ^ (*&v100[4 * (v274 ^ 9)] - (v274 ^ 9 | 0x15)) ^ v272 ^ 0xEFC9EC68 ^ __ROR4__(*&v129[4 * (BYTE2(v274) ^ 0xD0)] + (BYTE2(v274) ^ 0xD0) * (BYTE2(v274) ^ 0xD0), 20) ^ ((8 * (v272 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v272) = (*&v103[4 * (v274 ^ 0x3D)] - (v274 ^ 0x3D | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v272) = v272 - ((2 * v272) & 0xE79E6EFC) - 204523650;
  LODWORD(v271) = BYTE1(v274) ^ (*&v332[4 * (BYTE1(v274) ^ 0x37)] - (BYTE1(v274) | 0xF7)) ^ 0x88 ^ (((4 * v272) ^ 0xCF3CDDF8) * (v272 ^ 0x33CF377E));
  v275 = (*&v109[4 * (BYTE2(v274) ^ 0x77)] + (BYTE2(v274) ^ 0x77) * (BYTE2(v274) ^ 0x77)) ^ 0xB1DB9DC8;
  LODWORD(v266) = (v112[v266 ^ 0x39] - (v266 ^ 0x39 | 0xFFFFFFD3)) ^ v266 ^ 0x58;
  LODWORD(v274) = (*&v331[4 * (BYTE3(v274) ^ 0x62)] - (BYTE3(v274) ^ 0x62 | 0x99)) ^ v272;
  LODWORD(v272) = v275 + 604697470 + (~(2 * v275) | 0xB7EA1903) + 1;
  LODWORD(v274) = v274 ^ (v272 >> 4) ^ (v272 >> 5) ^ 0x360F8AC ^ (v271 - ((2 * v271) & 0xE79E6EFC) - 204523650);
  LODWORD(v266) = v266 - ((2 * v266) & 0xFFFFFF8C) - 58;
  v276 = ((v112[v266 ^ 0x26] - (v266 ^ 0x26 | 0xD3)) ^ v266) ^ 0x9CLL;
  v277 = v272 ^ 0x164DCE41 ^ (v274 - ((2 * v274) & 0x4815E6FC) + 604697470);
  LODWORD(v272) = (v112[v276] - (v276 | 0xFFFFFFD3)) ^ (v112[v266 ^ 0x26] - (v266 ^ 0x26 | 0xFFFFFFD3)) ^ v266;
  v278 = ((v112[v276] - (v276 | 0xD3)) ^ (v112[v266 ^ 0x26] - (v266 ^ 0x26 | 0xD3)) ^ v266) ^ 0xE9;
  v279 = v266 ^ 0xC6 | ((((v112[v266 ^ 0x26] - (v266 ^ 0x26 | 0xD3)) ^ v266) ^ 0x77) << 8);
  LODWORD(v266) = (v112[v278] - (v278 | 0xFFFFFFD3)) ^ v272;
  v280 = v266 ^ 0x7B;
  *(v273 - 0x4482F840E2E05C45) = ((((((v272 ^ 0x38) << 16) | 0x78) ^ v279) << 32) | (v280 << 56) | v277) ^ 0x8A8805A644369C1DLL;
  v281 = STACK[0x2D30];
  v282 = *(STACK[0x2D30] - 0x2A510ED33EFDCD4ELL);
  LODWORD(v278) = *&v330[4 * (BYTE1(v282) ^ 0x1CLL)] + (BYTE1(v282) ^ 0x1C) * (BYTE1(v282) ^ 0x1C);
  LODWORD(v282) = (*&v102[4 * ((v282 >> 24) ^ 0x35)] + ((v282 >> 24) ^ 0x35) * ((v282 >> 24) ^ 0x35) + 1947683826) ^ (*&v100[4 * (v282 ^ 0x6CLL)] - (v282 ^ 0x6C | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v282) ^ 0x17)] + (BYTE2(v282) ^ 0x17) * (BYTE2(v282) ^ 0x17), 20) ^ v278 ^ 0xEFC9EC68 ^ ((8 * (v278 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v278) = (*&v103[4 * (v282 ^ 0xEA)] - (v282 ^ 0xEA | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v278) = v278 - ((2 * v278) & 0xB15C7E84) + 1487814466;
  LODWORD(v273) = BYTE1(v282) ^ (*&v332[4 * (BYTE1(v282) ^ 0x7B)] - (BYTE1(v282) ^ 0x7B | 0xF7)) ^ 0xC4 ^ (((4 * v278) ^ 0x62B8FD08) * (v278 ^ 0x18AE3F42));
  v283 = (*&v109[4 * (BYTE2(v282) ^ 0x25)] + (BYTE2(v282) ^ 0x25) * (BYTE2(v282) ^ 0x25)) ^ 0xB1DB9DC8;
  LODWORD(v266) = (v112[v266 ^ 0x22] - (v266 ^ 0x22 | 0xFFFFFFD3)) ^ v280;
  LODWORD(v266) = v266 - ((2 * v266) & 0x10) - 120;
  LODWORD(v282) = v278 ^ (*&v331[4 * (BYTE3(v282) ^ 0x3C)] - (BYTE3(v282) ^ 0x3C | 0x99));
  LODWORD(v278) = v273 - ((2 * v273) & 0xB15C7E84) + 1487814466;
  LODWORD(v273) = v283 - ((2 * v283) & 0x35E1B8AE) + 451992663;
  LODWORD(v282) = v282 ^ (v273 >> 4) ^ (v273 >> 5) ^ v278;
  v284 = ((v112[v266 ^ 0x73] - (v266 ^ 0x73 | 0xD3)) ^ v266) ^ 0x1BLL;
  LODWORD(v284) = (v112[v284] - (v284 | 0xFFFFFFD3)) ^ (v112[v266 ^ 0x73] - (v266 ^ 0x73 | 0xFFFFFFD3)) ^ v266;
  LODWORD(v280) = (v112[v284 ^ 7] - (v284 ^ 7 | 0xFFFFFFD3)) ^ v284;
  v285 = ((v266 ^ 0x88u) << 32) | ((((v112[v266 ^ 0x73] - (v266 ^ 0x73 | 0xD3)) ^ v266) ^ 0x4Bu) << 40) | ((v284 ^ 0x90u) << 48);
  v286 = v280 ^ 0xFFFFFFE0;
  v287 = (v285 | (v286 << 56) | v273 ^ 0x164DCE41 ^ ((v282 ^ 0x1788B27) - 2 * ((v282 ^ 0x1788B27) & 0x1AF0DC5F ^ v282 & 8) + 451992663)) ^ 0x8A8805A2568CDD2CLL;
  v288 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C3DLL) = v287;
  v289 = *(v281 - 0x2A510ED33EFDCD4ALL);
  LODWORD(v287) = *&v330[4 * (BYTE1(v289) ^ 0x9DLL)] + (BYTE1(v289) ^ 0x9D) * (BYTE1(v289) ^ 0x9D);
  LODWORD(v289) = (*&v102[4 * ((v289 >> 24) ^ 0x19)] + ((v289 >> 24) ^ 0x19) * ((v289 >> 24) ^ 0x19) + 1947683826) ^ (*&v100[4 * (v289 ^ 0xD4)] - (v289 ^ 0xD4 | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v289) ^ 0xFDLL)] + (BYTE2(v289) ^ 0xFD) * (BYTE2(v289) ^ 0xFD), 20) ^ v287 ^ 0xEFC9EC68 ^ ((8 * (v287 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v287) = *&v103[4 * (v289 ^ 0x46)] - (v289 | 0xCF);
  LODWORD(v287) = (v287 ^ 0x6B941CB8) - 2 * ((v287 ^ 0x6B941CB8) & 0x1AA1AB9B ^ v287 & 1) + 446802842;
  v290 = (*&v109[4 * (BYTE2(v289) ^ 0x64)] + (BYTE2(v289) ^ 0x64) * (BYTE2(v289) ^ 0x64)) ^ 0xB1DB9DC8;
  v291 = v290 - ((2 * v290) & 0x7338D3EA) + 966552053;
  LODWORD(v289) = BYTE1(v289) ^ (*&v332[4 * (BYTE1(v289) ^ 0x83)] - (BYTE1(v289) | 0xF7)) ^ (*&v331[4 * (BYTE3(v289) ^ 0x22)] - (BYTE3(v289) ^ 0x22 | 0x99)) ^ v291 ^ (((4 * v287) ^ 0x6A86AE68) * (v287 ^ 0x1AA1AB9A)) ^ (((v291 >> 5) ^ (v291 >> 4) ^ 0x25525D0) - 2 * (((v291 >> 5) ^ (v291 >> 4) ^ 0x25525D0) & 0x99C69F7 ^ ((v291 >> 5) ^ (v291 >> 4)) & 2) + 966552053) ^ 0x3C;
  LODWORD(v286) = (v112[v280 ^ 0xAALL] - (v280 ^ 0xAA | 0xFFFFFFD3)) ^ v286;
  LODWORD(v285) = v286 - ((2 * v286) & 0x72) + 57;
  v292 = (v286 - ((2 * v286) & 0x72) + 57) ^ 0x46;
  LODWORD(v292) = (v112[v292] - (v292 | 0xFFFFFFD3)) ^ v285;
  LODWORD(v280) = (v112[v292] - (v292 | 0xFFFFFFD3)) ^ v292;
  v293 = ((v112[v292] - (v292 | 0xD3)) ^ v292) ^ 0x1ELL;
  v294 = v280 ^ 0x8F;
  LODWORD(v280) = (v112[v293] - (v293 | 0xFFFFFFD3)) ^ v280 ^ 0xFFFFFF8F ^ ((v280 ^ 0xFFFFFFCE ^ -(v280 ^ 0xFFFFFFCE) ^ ((v280 ^ 0xFFFFFF87) - 73)) + (v280 ^ 0xFFFFFF87));
  *(v288 - 0x4482F840E2E05C35) = (((v285 ^ 0xA3u) << 32) | (((v294 << 8) | ((v280 ^ 0x5A) << 16) | v292 ^ 0x39) << 40) | v287 ^ 0x164DCE41 ^ (v289 - ((2 * v289) & 0x35435734) + 446802842)) ^ 0x8A2867C3649A80C0;
  v295 = STACK[0x2D30];
  v296 = *(STACK[0x2D30] - 0x2A510ED33EFDCD46);
  LODWORD(v285) = *&v330[4 * (BYTE1(v296) ^ 0xC1)] + (BYTE1(v296) ^ 0xC1) * (BYTE1(v296) ^ 0xC1);
  LODWORD(v296) = (*&v102[4 * ((v296 >> 24) ^ 0x92)] + ((v296 >> 24) ^ 0x92) * ((v296 >> 24) ^ 0x92) + 1947683826) ^ (*&v100[4 * (v296 ^ 0xF0)] - (v296 ^ 0xF0 | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v296) ^ 0x33)] + (BYTE2(v296) ^ 0x33) * (BYTE2(v296) ^ 0x33), 20) ^ v285 ^ 0xEFC9EC68 ^ ((8 * (v285 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v285) = (*&v103[4 * (v296 ^ 0x5B)] - (v296 ^ 0x5B | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v285) = v285 - ((2 * v285) & 0x34EE138E) + 444008903;
  LODWORD(v293) = (*&v109[4 * (BYTE2(v296) ^ 0xB0)] + (BYTE2(v296) ^ 0xB0) * (BYTE2(v296) ^ 0xB0)) ^ 0xB1DB9DC8;
  LODWORD(v293) = v293 - ((2 * v293) & 0x995D0E6E) + 1286506295;
  LODWORD(v292) = (v112[v280 ^ 0x75] - (v280 ^ 0x75 | 0xFFFFFFD3)) ^ v280 ^ 0x5A;
  LODWORD(v292) = v292 - ((2 * v292) & 0xFFFFFFC3) + 97;
  LODWORD(v280) = BYTE1(v296) ^ 0x164DCE43 ^ (*&v332[4 * (BYTE1(v296) ^ 0xC7)] - (BYTE1(v296) | 0xF7)) ^ (*&v331[4 * (BYTE3(v296) ^ 0x74)] - (BYTE3(v296) ^ 0x74 | 0x99)) ^ v285 ^ v293 ^ (4 * (v285 ^ 0x1A7709C7) * (v285 ^ 0x1A7709C7) - ((8 * (v285 ^ 0x1A7709C7) * (v285 ^ 0x1A7709C7)) & 0x34EE1388) + 444008903);
  v297 = ((v112[v292 ^ 0x30] - (v292 ^ 0x30 | 0xD3)) ^ v292) ^ 0x15;
  LODWORD(v297) = (v112[v297] - (v297 | 0xFFFFFFD3)) ^ (v112[v292 ^ 0x30] - (v292 ^ 0x30 | 0xFFFFFFD3)) ^ v292;
  v298 = v280 ^ (((v293 >> 5) ^ (v293 >> 4) ^ 0x6AF9C4A) - ((2 * ((v293 >> 5) ^ (v293 >> 4) ^ 0x6AF9C4A)) & 0x195D0E6E) + 1286506295);
  LODWORD(v280) = (v112[v297 ^ 0x3ELL] - (v297 ^ 0x3E | 0xFFFFFFD3)) ^ v297 ^ 0x61;
  v299 = (((((v297 ^ 0x61) << 16) | ((v280 ^ 0x16) << 24) | v292 ^ 0x61) << 32) | ((((v112[v292 ^ 0x30] - (v292 ^ 0x30 | 0xD3)) ^ v292) ^ 0xB6u) << 40) | v298) ^ 0x8A8F05270BB74012;
  v300 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C2DLL) = v299;
  v301 = *(v295 - 0x2A510ED33EFDCD42);
  LODWORD(v299) = *&v330[4 * (BYTE1(v301) ^ 0xE0)] + (BYTE1(v301) ^ 0xE0) * (BYTE1(v301) ^ 0xE0);
  LODWORD(v301) = (*&v102[4 * ((v301 >> 24) ^ 0x2D)] + ((v301 >> 24) ^ 0x2D) * ((v301 >> 24) ^ 0x2D) + 1947683826) ^ (*&v100[4 * (v301 ^ 0xC5)] - (v301 ^ 0xC5 | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v301) ^ 0xBLL)] + (BYTE2(v301) ^ 0xB) * (BYTE2(v301) ^ 0xB), 20) ^ v299 ^ 0xEFC9EC68 ^ ((8 * (v299 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v299) = *&v103[4 * (v301 ^ 5)] - (v301 | 0xCF);
  LODWORD(v299) = (v299 ^ 0x6B941CB8) - 2 * ((v299 ^ 0x6B941CB8) & 0x11AB0C2B ^ v299 & 1) + 296422442;
  v302 = (*&v109[4 * (BYTE2(v301) ^ 4)] + (BYTE2(v301) ^ 4) * (BYTE2(v301) ^ 4)) ^ 0xB1DB9DC8;
  LODWORD(v297) = BYTE1(v301) ^ (*&v332[4 * (BYTE1(v301) ^ 0x54)] - (BYTE1(v301) | 0xF7)) ^ 0xEB ^ (((4 * v299) ^ 0x46AC30A8) * (v299 ^ 0x11AB0C2A));
  LODWORD(v292) = (v112[v280 ^ 0x28] - (v280 ^ 0x28 | 0xFFFFFFD3)) ^ v280 ^ 0x16;
  LODWORD(v292) = v292 - ((2 * v292) & 0x40) + 32;
  LODWORD(v301) = (*&v331[4 * (BYTE3(v301) ^ 0xAC)] - (BYTE3(v301) ^ 0xAC | 0x99)) ^ v299;
  LODWORD(v299) = v302 - ((2 * v302) & 0x7C85A56E) - 1102916937;
  LODWORD(v301) = v301 ^ (v299 >> 4) ^ (v299 >> 5) ^ 0xE163BBE ^ (v297 - ((2 * v297) & 0x23561854) + 296422442);
  v303 = v299 ^ 0x164DCE41 ^ (v301 - ((2 * v301) & 0x7C85A56E) - 1102916937);
  LODWORD(v299) = (v112[v292 ^ 0xDFLL] - (v292 ^ 0xDF | 0xFFFFFFD3)) ^ v292;
  v304 = ((v112[v292 ^ 0xDFLL] - (v292 ^ 0xDF | 0xD3)) ^ v292) ^ 0xF8;
  LODWORD(v304) = (v112[v304] - (v304 | 0xFFFFFFD3)) ^ v299;
  LOBYTE(v293) = v292 ^ 0x20;
  LOBYTE(v292) = v304 ^ 0x63;
  LODWORD(v304) = (v112[v304 ^ 0xD5] - (v304 ^ 0xD5 | 0xFFFFFFD3)) ^ v304 ^ 0x63;
  *(v300 - 0x4482F840E2E05C25) = ((((v292 << 16) | ((v304 ^ 9) << 24) | v293) << 32) | ((v299 ^ 0x57u) << 40) | v303) ^ 0x8AB005AC7370312DLL;
  v305 = STACK[0x2D30];
  v306 = *(STACK[0x2D30] - 0x2A510ED33EFDCD3ELL);
  LODWORD(v297) = *&v330[4 * (BYTE1(v306) ^ 0x6ELL)] + (BYTE1(v306) ^ 0x6E) * (BYTE1(v306) ^ 0x6E);
  LODWORD(v306) = (*&v102[4 * ((v306 >> 24) ^ 0xDF)] + ((v306 >> 24) ^ 0xDF) * ((v306 >> 24) ^ 0xDF) + 1947683826) ^ (*&v100[4 * (v306 ^ 0xCLL)] - (v306 ^ 0xC | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v306) ^ 0xA0)] + (BYTE2(v306) ^ 0xA0) * (BYTE2(v306) ^ 0xA0), 20) ^ v297 ^ 0xEFC9EC68 ^ ((8 * (v297 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v297) = (*&v103[4 * (v306 ^ 0x6D)] - (v306 ^ 0x6D | 0xCF)) ^ 0x6B941CB8;
  LODWORD(v297) = v297 - ((2 * v297) & 0x62867A18) - 1320993524;
  LODWORD(v300) = (*&v109[4 * (BYTE2(v306) ^ 0x24)] + (BYTE2(v306) ^ 0x24) * (BYTE2(v306) ^ 0x24)) ^ 0xB1DB9DC8;
  LODWORD(v293) = (*&v332[4 * (BYTE1(v306) ^ 0xDC)] - (BYTE1(v306) ^ 0x6F | 0xF7)) ^ BYTE1(v306) ^ 0x6F ^ (((4 * v297) ^ 0xC50CF430) * (v297 ^ 0x31433D0C));
  LODWORD(v297) = (v293 - ((2 * v293) & 0x62867A18) - 1320993524) ^ v297;
  LODWORD(v292) = (v112[v304 ^ 0x35] - (v304 ^ 0x35 | 0xFFFFFFD3)) ^ v304 ^ 9;
  v307 = (*&v331[4 * (BYTE3(v306) ^ 0xB4)] - (BYTE3(v306) ^ 0xB4 | 0x99)) ^ (v300 - ((2 * v300) & 0x2EBB5D9E) + 392015567) ^ ((v300 - ((2 * v300) & 0x2EBB5D9E) + 392015567) >> 4) ^ ((v300 - ((2 * v300) & 0x2EBB5D9E) + 392015567) >> 5) ^ 0x1782F9DB ^ (v297 - ((2 * v297) & 0x2EBB5D9E) + 392015567);
  LODWORD(v292) = v292 - ((2 * v292) & 0x12) - 119;
  LODWORD(v297) = (v112[v292 ^ 0x61] - (v292 ^ 0x61 | 0xFFFFFFD3)) ^ v292;
  v308 = ((v112[((v112[v292 ^ 0x61] - (v292 ^ 0x61 | 0xD3)) ^ v292) ^ 0x81] - (v297 | 0xD3)) ^ v297) ^ 0xDBLL;
  LOBYTE(v293) = v292 ^ 0x89;
  LODWORD(v292) = (v112[((v112[v292 ^ 0x61] - (v292 ^ 0x61 | 0xD3)) ^ v292) ^ 0x81] - (v297 | 0xFFFFFFD3)) ^ v297 ^ 0xFFFFFFC9;
  LODWORD(v304) = (v112[v308] - (v308 | 0xFFFFFFD3)) ^ v292;
  v309 = STACK[0x21F0];
  *(STACK[0x21F0] - 0x4482F840E2E05C1DLL) = ((((v292 << 16) | ((v304 ^ 0x3B) << 24) | v293) << 32) | ((v297 ^ 0x80u) << 40) | v307) ^ 0x8AC405DC6435004FLL;
  v310 = *(v305 - 0x2A510ED33EFDCD3ALL);
  LODWORD(v307) = *&v330[4 * (BYTE1(v310) ^ 0x73)] + (BYTE1(v310) ^ 0x73) * (BYTE1(v310) ^ 0x73);
  LODWORD(v310) = (*&v102[4 * ((v310 >> 24) ^ 0x20)] + ((v310 >> 24) ^ 0x20) * ((v310 >> 24) ^ 0x20) + 1947683826) ^ (*&v100[4 * (v310 ^ 0x2CLL)] - (v310 ^ 0x2C | 0x15)) ^ __ROR4__(*&v129[4 * (BYTE2(v310) ^ 0x41)] + (BYTE2(v310) ^ 0x41) * (BYTE2(v310) ^ 0x41), 20) ^ v307 ^ 0xEFC9EC68 ^ ((8 * (v307 ^ 0xEFC9EC68)) | 0x27923AF0);
  LODWORD(v307) = *&v103[4 * (v310 ^ 0x80)] - (v310 | 0xCF);
  LODWORD(v307) = (v307 ^ 0x6B941CB8) - 2 * ((v307 ^ 0x6B941CB8) & 0x1F631F ^ v307 & 3) - 2145426660;
  LODWORD(v293) = (*&v109[4 * (BYTE2(v310) ^ 0x82)] + (BYTE2(v310) ^ 0x82) * (BYTE2(v310) ^ 0x82)) ^ 0xB1DB9DC8;
  v311 = BYTE1(v310) ^ 0xA9 ^ (*&v332[4 * (BYTE1(v310) ^ 0x16)] - (BYTE1(v310) | 0xF7));
  LODWORD(v292) = (v112[v304 ^ 0x98] - (v304 ^ 0x98 | 0xFFFFFFD3)) ^ v304 ^ 0x3B;
  LODWORD(v304) = (((4 * v307) ^ 0x7D8C70) * (v307 ^ 0x1F631C)) ^ v311;
  LODWORD(v292) = v292 - ((2 * v292) & 0x52) + 41;
  LODWORD(v310) = (*&v331[4 * (BYTE3(v310) ^ 0xD3)] - (BYTE3(v310) ^ 0xD3 | 0x99)) ^ v307;
  LODWORD(v307) = v293 - ((2 * v293) & 0x954267E4) - 895405070;
  LODWORD(v310) = v310 ^ (v307 >> 4) ^ (v307 >> 5) ^ 0xAFF1AA0 ^ (v304 - 2 * (v304 & 0x1F631D ^ v311 & 1) - 2145426660);
  v312 = ((v112[v292 ^ 0xF5] - (v292 ^ 0xF5 | 0xD3)) ^ v292) ^ 0x8FLL;
  LODWORD(v312) = (v112[v312] - (v312 | 0xFFFFFFD3)) ^ (v112[v292 ^ 0xF5] - (v292 ^ 0xF5 | 0xFFFFFFD3)) ^ v292;
  LOBYTE(v311) = v312 ^ 0x29;
  LODWORD(v312) = (v112[v312 ^ 0xAALL] - (v312 ^ 0xAA | 0xFFFFFFD3)) ^ v312 ^ 0x29;
  v313 = v307 ^ 0xD20A38A1 ^ (v310 - ((2 * v310) & 0x954267E4) - 895405070);
  v314 = (((v292 ^ 0x29u) << 32) | (((v311 << 8) | ((v312 ^ 0x31) << 16) | ((v112[v292 ^ 0xF5] - (v292 ^ 0xF5 | 0xD3)) ^ v292) ^ 0x35) << 40) | v313) ^ 0x8D00D000000000;
  *(v309 - 0x4482F840E2E05C15) = v314 - 2 * (v314 & 0xA8805A6F17BDF37 ^ v313 & 2) - 0x7577FA590E8420CBLL;
  v315 = *(STACK[0x2D30] - 0x2A510ED33EFDCD36);
  LODWORD(v313) = *&v330[4 * (BYTE1(v315) ^ 0x22)] + (BYTE1(v315) ^ 0x22) * (BYTE1(v315) ^ 0x22);
  LODWORD(v315) = (*&v102[4 * ((v315 >> 24) ^ 0xC1)] + ((v315 >> 24) ^ 0xC1) * ((v315 >> 24) ^ 0xC1) + 1947683826) ^ (*&v100[4 * (v315 ^ 0x98)] - (v315 ^ 0x98 | 0x15)) ^ v313 ^ __ROR4__(*&v129[4 * (BYTE2(v315) ^ 0xB1)] + (BYTE2(v315) ^ 0xB1) * (BYTE2(v315) ^ 0xB1), 20) ^ (8 * v313) & 0xD86DC508;
  v316 = *&v103[4 * (v315 ^ 0x7B)] - (v315 ^ 0x7B | 0xCF);
  v317 = (*&v109[4 * (BYTE2(v315) ^ 0x19)] + (BYTE2(v315) ^ 0x19) * (BYTE2(v315) ^ 0x19)) ^ 0xB1DB9DC8;
  v318 = v317 - ((2 * v317) & 0x6DEF4702) - 1225284735;
  LODWORD(v310) = (v112[v312 ^ 0xDBLL] - (v312 ^ 0xDB | 0xFFFFFFD3)) ^ v312 ^ 0x31;
  LODWORD(v310) = v310 - ((2 * v310) & 0xFFFFFFA8) + 84;
  LODWORD(v312) = (v112[v310 ^ 0x37] - (v310 ^ 0x37 | 0xFFFFFFD3)) ^ v310;
  v319 = ((v112[v310 ^ 0x37] - (v310 ^ 0x37 | 0xD3)) ^ v310) ^ 0x8DLL;
  LODWORD(v319) = (v112[v319] - (v319 | 0xFFFFFFD3)) ^ v312;
  STACK[0x1810] = v112;
  v320 = (v316 ^ 0x6B941CB8) - 2 * ((v316 ^ 0x6B941CB8) & 0x5D9C311B ^ v316 & 2) - 576966375;
  LODWORD(v315) = (*&v331[4 * (BYTE3(v315) ^ 0xC3)] - (BYTE3(v315) ^ 0xC3 | 0x99)) ^ ((v315 ^ 0xFF7B) >> 8) ^ (*&v332[4 * (((v315 ^ 0xFF7B) >> 8) ^ 0xBF)] - (((v315 ^ 0xFF7B) >> 8) ^ 0xBF | 0xF7)) ^ v318 ^ (((4 * v320) ^ 0x7670C464) * (v320 ^ 0x1D9C3119)) ^ (((v318 >> 5) ^ (v318 >> 4) ^ 0xED8C724) - 2 * (((v318 >> 5) ^ (v318 >> 4) ^ 0xED8C724) & 0x6F7A391 ^ ((v318 >> 5) ^ (v318 >> 4)) & 0x10) - 1225284735);
  *(STACK[0x21F0] - 0x4482F840E2E05C0DLL) = (((((v312 ^ 0x54) << 8) | ((v319 ^ 0xE9 ^ (v112[v319 ^ 0x59] - (v319 ^ 0x59 | 0xD3))) << 24) | v310 ^ 0x54) << 32) | ((v319 ^ 0xB3u) << 48) | v320 ^ 0x164DCE41 ^ (v315 - ((2 * v315) & 0xBB386232) - 576966375)) ^ 0x8A8826FC4732E82DLL;
  v333 = (STACK[0xF80] << 24) | (STACK[0xF40] << 16);
  v334 = (STACK[0xF88] << (v97 ^ 0x9Cu)) + (STACK[0xF90] << 16) + (STACK[0xF98] << 8);
  STACK[0xF80] = (STACK[0xF38] << 8) | (STACK[0xF18] << 24) | (STACK[0xF20] << 16);
  v321 = (STACK[0xED8] << 16) | (STACK[0xED0] << 24);
  v322 = (STACK[0xEB0] << 16) | (STACK[0xEA8] << 24);
  STACK[0xF38] = (STACK[0xEF0] << 16) | (STACK[0xEE8] << 24) | STACK[0xFB0];
  STACK[0xF88] = v321 | STACK[0xFA8];
  STACK[0xF90] = v322 | (STACK[0xEA0] << 8);
  STACK[0xFA8] = (STACK[0xE98] << 16) | (STACK[0xE90] << 24) | (STACK[0xE80] << 8);
  STACK[0xF98] = (STACK[0xE78] << 16) | (STACK[0xE70] << 24) | (STACK[0xE88] << 8);
  STACK[0xEF0] = STACK[0x17A0] | (STACK[0xE68] << 16) | (STACK[0xE60] << 24);
  STACK[0xF18] = (STACK[0xE58] << 24) | (STACK[0xE50] << 16);
  STACK[0xEE8] = (STACK[0xE40] << 24) | (STACK[0xE38] << 16) | STACK[0x1790];
  LODWORD(STACK[0xF20]) = (LODWORD(STACK[0xE2C]) << 24) | (LODWORD(STACK[0xE34]) << 16) | (LODWORD(STACK[0xE30]) << 8);
  STACK[0x17A0] = STACK[0xE08] | (STACK[0xE10] << 16) | (STACK[0xE20] << 8) | (STACK[0xE18] << 24);
  v323 = STACK[0xD38] | (STACK[0xDF8] << 24) | (STACK[0xE00] << 16);
  LODWORD(STACK[0x1790]) = a59 | (LODWORD(STACK[0xD08]) << 24) | (LODWORD(STACK[0xD10]) << 16) | (LODWORD(STACK[0xD04]) << 8);
  LODWORD(v321) = ((2 * (v344 + a45 * a45 + 1091859819)) & 0xBFFFF57E) + ((v344 + a45 * a45 + 1091859819) ^ 0xDFFFFABF);
  LODWORD(v321) = (LODWORD(STACK[0x18B0]) - (v336 | 0xAF)) ^ (v343 + v335 * v335) ^ (v321 + 536872257) ^ (1471278755 * (LODWORD(STACK[0x18F0]) - (v339 | 0x57))) ^ ((4 * v321 - 2147478268) * (v321 + 536872257));
  v324 = v342 ^ 0x79001484 ^ ((LODWORD(STACK[0x1890]) ^ 0xE9B34C9B) + (LODWORD(STACK[0x1880]) ^ 0xFF4BC6B) + 595530066 + (LODWORD(STACK[0x1860]) ^ 0xF8FF4C67) + 632916209 + (~(2 * ((LODWORD(STACK[0x1890]) ^ 0xE9B34C9B) + (LODWORD(STACK[0x1880]) ^ 0xFF4BC6B) + 595530066 + (LODWORD(STACK[0x1860]) ^ 0xF8FF4C67))) | 0xB48CEE1D) + 1);
  v325 = v337 - 2 * (v338 & 0x5D ^ (LODWORD(STACK[0x1750]) >> 8) & 1);
  STACK[0xE90] = STACK[0x1780] << 8;
  STACK[0xE80] = STACK[0x1770] << 8;
  STACK[0xE98] = STACK[0x1760] << 16;
  STACK[0xE88] = STACK[0xFA0] << 8;
  STACK[0xF40] = STACK[0x1900] + STACK[0x1470];
  STACK[0xED8] = STACK[0xF50] << 16;
  STACK[0xEA0] = STACK[0xF48] << 8;
  STACK[0xEB0] = STACK[0xF30] << 16;
  STACK[0xEA8] = STACK[0xF28] << 24;
  STACK[0xED0] = STACK[0xF10] << 8;
  STACK[0xF10] = STACK[0xF08] << 8;
  STACK[0xF28] = STACK[0xE48] << 24;
  STACK[0xF50] = STACK[0x1440] + STACK[0x18A0];
  STACK[0xFA0] = v323 + STACK[0x1420];
  LODWORD(STACK[0xF48]) = (2 * v321) & 0x63106A26;
  LODWORD(STACK[0xF30]) = v321 - 1316473581;
  LODWORD(STACK[0x1780]) = v339 - ((2 * v341) & 0xB8) + 1663711068;
  LODWORD(STACK[0x1770]) = v325 + 1663711068;
  v326 = STACK[0x2090] - 0xBBA39CAAE27CDB8;
  v327 = *(STACK[0x1708] + 8 * v97);
  LODWORD(STACK[0x1760]) = v342 ^ 0x54B61CD5;
  LODWORD(STACK[0xFB0]) = LODWORD(STACK[0x10C0]) ^ 0x26275522;
  return v327(v97, v325, (v340 ^ 0x3C) - ((2 * (v340 ^ 0x3C)) & 0xDCu) + 1731418990, v326, v324 - ((2 * v324 + 547168294) & 0x67749F26) + 1141432230, v112, 3399562226, v97 ^ 0x1B1D, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v329, v330, a35, v331, v332, a38, a39, a40, v333, v334, v97, a45);
}

uint64_t sub_1000F0E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x1900]) = v10 ^ a5 ^ 0x99E482B5;
  LODWORD(STACK[0x18A0]) = ((2 * (v8 - 1860915077)) & 0xC70FEDFE) + ((v8 - 1860915077) ^ 0xE387F6FF);
  LODWORD(STACK[0x18F0]) = v10;
  LODWORD(STACK[0x18B0]) = (v9 ^ 0x9603C762) + (v10 ^ a5 ^ 0x2A5ECD26) - 1778137246 - ((2 * ((v9 ^ 0x9603C762) + (v10 ^ a5 ^ 0x2A5ECD26))) & 0x2C078EC4);
  return (*(STACK[0x1708] + 8 * a8))();
}

uint64_t sub_1000F1240@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int a5@<W5>, int a6@<W7>, uint64_t a7@<X8>)
{
  v25 = 257 * v16 - ((v17 + v16 * v9) & v13) + v23;
  *(v20 + 8 * (v15 ^ v25)) = v8;
  *(a3 + 8 * (v25 ^ v14)) = a1;
  *(a7 + 8 * (v25 ^ a5)) = v10;
  *(v22 + 8 * (((v25 ^ a2) + v12 - (v19 & (2 * (v25 ^ a2)))) ^ v7)) = a4;
  return (*(STACK[0x1708] + 8 * (((v16 + v21 + v11 == v24 + 256) * v18) ^ a6)))();
}

uint64_t sub_1000F133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v43 = STACK[0xE80] | (STACK[0x1130] << 24);
  v44 = STACK[0xE90] + STACK[0xEC8];
  v45 = STACK[0xF38] + STACK[0x1120];
  v46 = STACK[0xE88] + STACK[0x1740];
  v47 = STACK[0x1058] + STACK[0xEF0];
  v48 = STACK[0xEC0] + STACK[0x1048];
  v49 = (STACK[0xE98] | (STACK[0x1110] << 24)) + (STACK[0x1100] << 8);
  STACK[0x1890] = STACK[0xEE8] + STACK[0x1038];
  v50 = STACK[0xEA0] + STACK[0x1030];
  STACK[0x1880] = STACK[0x10E0] + STACK[0xF18] + (STACK[0x10F0] << 8);
  v51 = (STACK[0xED8] | (STACK[0x1050] << 24)) + v50;
  STACK[0x1860] = STACK[0xEA8] + STACK[0xEB0] + STACK[0xED0] + STACK[0x1028];
  v52 = STACK[0xEE0] + STACK[0xF10];
  v53 = LODWORD(STACK[0x1020]) + LODWORD(STACK[0xF20]);
  v54 = STACK[0x1008] + (STACK[0x1040] | (STACK[0x1018] << 24)) + (STACK[0x1010] << 8);
  v55 = STACK[0xF28] + STACK[0xFF8] + (STACK[0x1000] << 8) + STACK[0xFE8];
  v56 = STACK[0xEF8] + (STACK[0xFE0] << 8);
  LODWORD(STACK[0x17B0]) = LODWORD(STACK[0xFD0]) + LODWORD(STACK[0x1730]);
  LODWORD(STACK[0x1780]) = LODWORD(STACK[0xF00]) + LODWORD(STACK[0xFC8]);
  LODWORD(STACK[0x1770]) = LODWORD(STACK[0xEBC]) + LODWORD(STACK[0xFC0]);
  v57 = (LODWORD(STACK[0xF30]) - LODWORD(STACK[0xF48])) ^ LODWORD(STACK[0x1750]);
  v58 = (v42 - 2217) | 0x8A4u;
  v59 = STACK[0x1540];
  v60 = (STACK[0x1180] << (((v42 + 87) | 0xA4) ^ 0xBEu)) + a41 + STACK[0x1540];
  v61 = STACK[0x1600];
  v62 = v43 + STACK[0x1410] + STACK[0x1600];
  STACK[0x1750] = a42 + STACK[0x15B0] - 0x6B9F1746B34736DFLL - 2 * ((a42 + STACK[0x15B0]) & 0x4CB8C93D ^ STACK[0x15B0] & 0x1C);
  STACK[0x1740] = v60 - 0x232AA127DF125EEDLL - 2 * (v60 & 0x20EDA137 ^ v59 & 0x24);
  STACK[0x1730] = v44 + STACK[0x14A0] - 0x6B9F1746B34736DFLL - 2 * ((v44 + STACK[0x14A0]) & 0x4CB8C931 ^ STACK[0x14A0] & 0x10);
  STACK[0x1720] = STACK[0xF80] + STACK[0x1720] - 0x6B9F1746B34736DFLL - 2 * ((STACK[0xF80] + STACK[0x1720]) & 0x4CB8C925 ^ STACK[0x1720] & 4);
  STACK[0x1710] = STACK[0x1710] + STACK[0xFB8] - 0x6B9F1746B34736DFLL - 2 * ((STACK[0x1710] + STACK[0xFB8]) & 0x4CB8C93B ^ STACK[0x1710] & 0x1A);
  STACK[0x1600] = v62 - 0x6B9F1746B34736DFLL - 2 * (v62 & 0x4CB8C929 ^ v61 & 8);
  STACK[0x15B0] = v45 - 0x6B9F1746B34736DFLL - ((2 * v45) & 0x99719242);
  STACK[0x1540] = STACK[0x1530] - 0x6B9F1746B34736DFLL - 2 * (STACK[0x1530] & 0x4CB8C92F ^ STACK[0x1460] & 0xE);
  STACK[0x1530] = STACK[0x1450] + v49 - 0x6B9F1746B34736DFLL - 2 * ((STACK[0x1450] + v49) & 0x4CB8C933 ^ STACK[0x1450] & 0x12);
  STACK[0x14C0] = STACK[0x14C0] + STACK[0xF88] - 0x6B9F1746B34736DFLL - 2 * ((STACK[0x14C0] + STACK[0xF88]) & 0x4CB8C93D ^ STACK[0x14C0] & 0x1C);
  STACK[0x14B0] = STACK[0xF90] + STACK[0x14B0] - 0x6B9F1746B34736DFLL - 2 * ((STACK[0xF90] + STACK[0x14B0]) & 0x4CB8C927 ^ STACK[0x14B0] & 6);
  STACK[0x14A0] = STACK[0x1430] + STACK[0xF98] - 0x6B9F1746B34736DFLL - 2 * ((STACK[0x1430] + STACK[0xF98]) & 0x4CB8C92F ^ STACK[0x1430] & 0xE);
  STACK[0x1490] = STACK[0xFA8] + STACK[0x1490] - 0x6B9F1746B34736DFLL - 2 * ((STACK[0xFA8] + STACK[0x1490]) & 0x4CB8C92D ^ STACK[0x1490] & 0xC);
  STACK[0x1480] = v46 + STACK[0x1480] - 0x6B9F1746B34736DFLL - 2 * ((v46 + STACK[0x1480]) & 0x4CB8C933 ^ STACK[0x1480] & 0x12);
  STACK[0x1470] = STACK[0xF40] - 0x6B9F1746B34736DFLL - 2 * (STACK[0xF40] & 0x4CB8C92B ^ STACK[0x1470] & 0xA);
  v63 = STACK[0x13F0] - 2 * (STACK[0x13F0] & 0xEEE0A71F ^ STACK[0x13E0] & 0x19);
  STACK[0x1460] = v52 + STACK[0x13D0] - 0x6B9F1746B34736DFLL - 2 * ((v52 + STACK[0x13D0]) & 0x4CB8C931 ^ STACK[0x13D0] & 0x10);
  STACK[0x1450] = STACK[0xFF0] + STACK[0x13C0] - 0x6B9F1746B34736DFLL - 2 * ((STACK[0xFF0] + STACK[0x13C0]) & 0x4CB8C93F ^ STACK[0x13C0] & 0x1E);
  STACK[0x1440] = STACK[0xF50] - 0x6B9F1746B34736DFLL - 2 * (STACK[0xF50] & 0x4CB8C931 ^ STACK[0x1440] & 0x10);
  STACK[0x1430] = v56 + STACK[0x1150] - 0x6B9F1746B34736DFLL - 2 * ((v56 + STACK[0x1150]) & 0x4CB8C92B ^ STACK[0x1150] & 0xA);
  STACK[0x1420] = STACK[0xFA0] - 0x6B9F1746B34736DFLL - 2 * (STACK[0xFA0] & 0x4CB8C92F ^ STACK[0x1420] & 0xE);
  STACK[0x1110] = STACK[0x21F0] - 0x4482F840E2E05CC5;
  STACK[0x10F0] = STACK[0x2940] - 0x6BDFBCDCCDCB5ADFLL;
  STACK[0x10E0] = STACK[0x2090] - 0xBBA39CAAE27CDB8;
  STACK[0x1410] = v63 + 0x817F4B7EEE0A706;
  v64 = *(STACK[0x1708] + 8 * v42);
  STACK[0x1760] = v58;
  LODWORD(STACK[0x18A0]) = (v58 + 485576521) & 0xE30E9EFB;
  STACK[0x1400] ^= 0x9C771C0EA2586E27;
  STACK[0x13F0] = v47 ^ 0x9C771C0EA2586E27;
  STACK[0x13E0] = v48 ^ 0x48B5B6616C556832;
  STACK[0x13D0] = v51 ^ 0x9C771C0EA2586E27;
  STACK[0x13C0] = (((v53 ^ 0x3D4E74FDu) >> 8) | ((v53 ^ 0x3D4E74FDu) << 56)) ^ 0x4B58EFFBA1A4DEA2;
  STACK[0x1180] = v54 ^ 0xD4C2AA6FCE0D0615;
  STACK[0x1150] = v55 ^ 0x9C771C0EA2586E27;
  LODWORD(STACK[0x1100]) = v57 ^ 0x4288853E;
  LODWORD(STACK[0x1130]) = v57 ^ 0x9F75076E;
  LODWORD(STACK[0x1120]) = v57 ^ 0xE9031DA3;
  return v64();
}

uint64_t sub_1000F19AC(uint64_t a1, int a2)
{
  STACK[0x18F0] = v3;
  STACK[0x1900] = v2;
  v4 = ((*(STACK[0x1810] + (a2 ^ 0x32)) - (a2 ^ 0x32 | LOBYTE(STACK[0x18A0]) ^ 0x28)) ^ a2) ^ 0x98;
  LODWORD(v4) = (*(STACK[0x1810] + v4) - (v4 | 0xFFFFFFD3)) ^ (*(STACK[0x1810] + (a2 ^ 0x32)) - (a2 ^ 0x32 | LODWORD(STACK[0x18A0]) ^ 0x28)) ^ a2 ^ 0xFFFFFF83;
  v5 = (*(STACK[0x1810] + (v4 ^ 0x74)) - (v4 ^ 0x74 | 0xFFFFFFD3)) ^ v4 ^ 0x21;
  v6 = ((*(STACK[0x1810] + (v4 ^ 0x74)) - (v4 ^ 0x74 | 0xD3)) ^ v4 ^ 0x21) ^ 0x7ALL;
  v7 = (*(STACK[0x1810] + v6) - (v6 | 0xFFFFFFD3)) ^ v5 ^ 0xFFFFFFD8;
  v8 = ((*(STACK[0x1810] + (v7 ^ 0x64)) - (v7 ^ 0x64 | 0xD3)) ^ v7 ^ 0xC5);
  v9 = (*(STACK[0x1810] + (v7 ^ 0x64)) - (v7 ^ 0x64 | 0xFFFFFFD3)) ^ v7 ^ 0xFFFFFFC5 ^ 0xFFFFFFA0;
  v10 = (*(STACK[0x1810] + (v8 ^ 0xC7)) - (v8 ^ 0xC7 | 0xFFFFFFD3)) ^ v9;
  v11 = ((*(STACK[0x1810] + (v8 ^ 0xC7)) - (v8 ^ 0xC7 | 0xD3)) ^ v9) ^ 0xEELL;
  LODWORD(v11) = (*(STACK[0x1810] + v11) - (v11 | 0xFFFFFFD3)) ^ v10 ^ 0x1E;
  v12 = (*(STACK[0x1810] + (v11 - ((2 * v11) & 0x24) + 18)) - ((v11 - ((2 * v11) & 0x24) + 18) | 0xFFFFFFD3)) ^ (v11 - ((2 * v11) & 0x24) - 110);
  v13 = (*(STACK[0x1810] + (v12 ^ 0x5ALL)) - (v12 ^ 0x5A | 0xFFFFFFD3)) ^ v12;
  v14 = v13 ^ 0x15u ^ (*(STACK[0x1810] + (v13 ^ 0x8ELL)) - (v13 ^ 0x8E | 0xD3)) ^ 0x44;
  LODWORD(v14) = (*(STACK[0x1810] + v14) - (v14 | 0xFFFFFFD3)) ^ v13 ^ 0x15 ^ (*(STACK[0x1810] + (v13 ^ 0x8ELL)) - (v13 ^ 0x8E | 0xFFFFFFD3));
  v15 = (*(STACK[0x1810] + (v14 ^ 0x12)) - (v14 | 0xFFFFFFD3)) ^ v14 ^ 0x53;
  v16 = (*(STACK[0x1810] + ((v15 - ((2 * v15) & 0x30) + 24) ^ 0x58)) - ((v15 - ((2 * v15) & 0x30) + 24) ^ 0x58 | 0xFFFFFFD3)) ^ (v15 - ((2 * v15) & 0x30) + 24);
  v17 = (*(STACK[0x1810] + (v16 ^ 0xB2)) - (v16 ^ 0xB2 | 0xFFFFFFD3)) ^ v16 ^ 0xFFFFFFC6;
  v18 = v17 ^ 0xFFFFFF82 ^ (*(STACK[0x1810] + (v17 ^ 0x2ELL)) - (v17 ^ 0x2E | 0xFFFFFFD3));
  LODWORD(STACK[0x18B0]) = (*(STACK[0x1810] + (v18 ^ 0x34)) - (v18 ^ 0x34 | 0xFFFFFFD3)) ^ v18;
  return (*(STACK[0x1708] + 8 * ((13 * (STACK[0x18F0] < 0x6C1F991D)) ^ STACK[0x1760])))();
}

uint64_t sub_1000F35C4()
{
  v5 = STACK[0x1080];
  v6 = STACK[0x18A0];
  v7 = (LODWORD(STACK[0xFB0]) + 865131280 - ((STACK[0xFB0] & 0x3390DB1D ^ STACK[0x10C0] & 0xD) << (LODWORD(STACK[0x18A0]) ^ 0xFA))) ^ v0;
  v8 = *(&off_1002DD400 + (LODWORD(STACK[0x18A0]) ^ 0x674)) - 81521810;
  v9 = v1 ^ (v5 - 1431355386 + (~(2 * v5) | 0xAAA17FF3) + 1);
  v10 = (v1 ^ (v5 + 6 + (~(2 * v5) | 0xF3) + 1)) ^ 0x9BLL;
  v11 = (((v8[BYTE2(v7) ^ 0xBLL] + (BYTE2(v7) ^ 0xB) * (BYTE2(v7) ^ 0xB)) << 16) | (((v8[HIBYTE(v7) ^ 0xE2] + (HIBYTE(v7) ^ 0xE2) * (HIBYTE(v7) ^ 0xE2)) ^ 0x57) << 24) | (v8[v7 ^ 0x59] + (v7 ^ 0x59) * (v7 ^ 0x59)) | (((v8[BYTE1(v7) ^ 0xAELL] + (BYTE1(v7) ^ 0xAE) * (BYTE1(v7) ^ 0xAE)) ^ 0x2C) << 8)) ^ LODWORD(STACK[0x1090]);
  v12 = v8[HIBYTE(v9) ^ 0x50] + (HIBYTE(v9) ^ 0x50) * (HIBYTE(v9) ^ 0x50);
  v13 = v8[BYTE1(v9) ^ 0x12] + (BYTE1(v9) ^ 0x12) * (BYTE1(v9) ^ 0x12);
  v14 = v8[BYTE2(v9) ^ 0x51] + (BYTE2(v9) ^ 0x51) * (BYTE2(v9) ^ 0x51);
  LOBYTE(v9) = v8[v10] + v10 * v10;
  v15 = v3 ^ LODWORD(STACK[0x1070]);
  v16 = v15 ^ 0x112C1457;
  v17 = v2 ^ LODWORD(STACK[0x1060]);
  v18 = ((v8[BYTE1(v16)] + BYTE1(v16) * BYTE1(v16)) << 8) | (((v8[HIBYTE(v15) ^ 0x3CLL] + (HIBYTE(v15) ^ 0x3C) * (HIBYTE(v15) ^ 0x3C)) ^ 0xCB) << 24) | (v8[v15 ^ 0xA0] + (v15 ^ 0xA0) * (v15 ^ 0xA0));
  v19 = ((v17 ^ 0x1A4736B2) >> 16) ^ 0x1ELL;
  LOBYTE(v16) = v8[v19];
  v20 = HIBYTE(v17) ^ 0xACLL;
  v21 = ((v17 ^ 0x36B2) >> 8) ^ 0x96;
  v22 = v8[v21];
  v23 = v17 ^ 0xBALL;
  v24 = v8[v23];
  v25 = v8[v20];
  LODWORD(v8) = (v18 & 0xFF00FFFF | (((v8[BYTE2(v16)] + BYTE2(v16) * BYTE2(v16)) ^ 0x54) << 16)) ^ LODWORD(STACK[0x10B0]);
  v26 = STACK[0x3090];
  *v26 = HIBYTE(v11) ^ 0xB5;
  v26[1] = BYTE2(v11) ^ 0x99;
  v26[2] = BYTE1(v11) ^ 0xAB;
  v26[3] = v11 ^ 0x75;
  v26[9] = BYTE2(v8) ^ 0x96;
  v27 = ((v13 << 8) | ((v12 ^ 0xAB) << 24) | v9 | ((v14 ^ 0xF3) << 16)) ^ LODWORD(STACK[0x10A0]);
  v26[4] = HIBYTE(v27) ^ 0xE5;
  v26[8] = BYTE3(v8) ^ 0x9D;
  v28 = (((v22 + v21 * v21) << 8) | (((v25 + v20 * v20) ^ 0x28) << 24) | (v24 + v23 * v23) | (((v16 + v19 * v19) ^ 0x42) << 16)) ^ LODWORD(STACK[0x10D0]);
  v26[12] = HIBYTE(v28) ^ 0x56;
  LOWORD(v8) = v8 ^ 0x1FD7;
  v26[11] = v8;
  v26[10] = BYTE1(v8);
  v26[13] = BYTE2(v28) ^ 0xA9;
  v26[14] = (v28 ^ 0x286) >> 8;
  v26[5] = BYTE2(v27) ^ 0x95;
  LOWORD(v27) = v27 ^ 0x4E7B;
  v26[7] = v27;
  v26[15] = v28 ^ 0x86;
  v26[6] = BYTE1(v27);
  return (*(v4 + 8 * v6))();
}

uint64_t sub_1000F3928()
{
  (*(v2 + 8 * (v0 + 6530)))(STACK[0x2D30] - 0x2A510ED33EFDCD92);
  (*(STACK[0x1708] + 8 * (v0 + 6530)))(STACK[0x1C00] - 0x1D8AB8FD230AE06);
  (*(STACK[0x1708] + 8 * (v0 + 6530)))(v1 - 0x4482F840E2E05CC5);
  (*(STACK[0x1708] + 8 * (v0 ^ 0x2682)))(STACK[0x2BB0] - 0x6A0DF074BE1C7272);
  (*(STACK[0x1708] + 8 * (v0 ^ 0x2682)))(STACK[0x1EC8] - 0x10AC49A2DA621073);
  (*(STACK[0x1708] + 8 * (v0 ^ 0x2682)))(STACK[0x24D0] - 0x68FAC1643CBCE898);
  (*(STACK[0x1708] + 8 * (v0 ^ 0x2682)))(STACK[0x2738] - 0xD56D201C0FCD078);
  (*(STACK[0x1708] + 8 * (v0 + 6530)))(STACK[0x2940] - 0x6BDFBCDCCDCB5ADFLL);
  (*(STACK[0x1708] + 8 * (v0 + 6530)))(STACK[0x27F0] - 0x412CFFFF183EF39BLL);
  (*(STACK[0x1708] + 8 * (v0 + 6530)))(STACK[0x2E50] - 0x40D67560E8700E48);
  (*(STACK[0x1708] + 8 * (v0 ^ 0x2682)))(STACK[0x2090] - 0xBBA39CAAE27CDB8);
  (*(STACK[0x1708] + 8 * (v0 + 6530)))(STACK[0x2938] - 0x8D481BEF58C9357);
  v3 = (*(STACK[0x1708] + 8 * (v0 + 6530)))(STACK[0x2790] - 0x76FBC7ADC663DA65);
  return (*(STACK[0x1708] + 8 * v0))(v3);
}

uint64_t sub_1000F3C00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v8 = STACK[0x1A40];
  STACK[0x2230] = STACK[0x1A40] - 0x202F6D26B077088ALL;
  STACK[0x2E58] = v8 + 0x484DCC2C16B2FA36;
  return (*(v7 + 8 * (a7 + 3336)))(STACK[0x2130] + (LODWORD(STACK[0x2B74]) - 744546752), a1, a2, a3, a4, a5, a6, STACK[0x1700]);
}

uint64_t sub_1000F3CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x1F7C]) = v7;
  LODWORD(STACK[0x1F88]) = 19;
  return (*(v9 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_1000F3E14@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (v1 + 366)))((a1 - 1443455193));
  v4 = STACK[0x1708];
  STACK[0x1B70] = v3;
  return (*(v4 + 8 * (((v3 != 0) * (((v1 - 1468493588) & 0x57875F7E) - 6215)) ^ v1)))();
}

uint64_t sub_1000F4018@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 | 0x240;
  v4 = (*(v2 + 8 * ((v1 | 0x240) ^ 0x2E67)))(a1 - 0x2B1A0449E8A6C928);
  v5 = STACK[0x1708];
  STACK[0x2FC0] = 0x2B1A0449E8A6C928;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_1000F4080()
{
  STACK[0x29C8] = v0;
  LODWORD(STACK[0x2A9C]) = 1443455193;
  return (*(v2 + 8 * ((26 * (STACK[0x26B8] != 0)) ^ v1)))();
}

uint64_t sub_1000F40CC()
{
  v2 = 38 * (v0 ^ 0x27AA);
  v3 = (*(v1 + 8 * (v2 ^ 0x3155)))();
  return (*(STACK[0x1708] + 8 * (v2 + 906)))(v3);
}

uint64_t sub_1000F4138()
{
  LODWORD(STACK[0x2440]) = v0;
  LODWORD(STACK[0x1DB4]) = v2;
  LODWORD(STACK[0x1F88]) = 16;
  return (*(v3 + 8 * (v1 - 4691)))();
}

uint64_t sub_1000F416C()
{
  LODWORD(STACK[0x2468]) = v0;
  v5 = v2 + ((v1 + 3277) ^ 0xEC06E98A);
  v6 = ((v3 - 336096801) < 0x66C47472) ^ (v5 < 0x66C47472);
  v7 = v5 < v3 - 336096801;
  if (v6)
  {
    v7 = (v3 - 336096801) < 0x66C47472;
  }

  if (v0 != 68588956)
  {
    v7 = 0;
  }

  return (*(v4 + 8 * ((19 * (((v1 - 66) ^ v7) & 1)) ^ v1)))();
}

uint64_t sub_1000F4278()
{
  v2 = v0 | 0x2520;
  v3 = ((v0 | 0x2520) - 1195241634) ^ 0xB8C23E3A;
  v4 = ((v0 | 0x2520) - 1195241634) & 0x473DCBD5;
  v5 = (*(v1 + 8 * ((v0 | 0x2520) + 1120)))(24);
  v6 = STACK[0x1708];
  STACK[0x19A8] = v5 + 0x119408A4CF36558ELL;
  return (*(v6 + 8 * (((v5 == 0) * (v3 ^ v4 ^ 0xA0D)) ^ v2)))();
}

uint64_t sub_1000F435C(uint64_t a1)
{
  *a1 = 1443455193;
  *(a1 + 4) = 1443455193;
  *(a1 + 8) = 0x2B1A0449E8A6C928;
  *(a1 + 16) = v1;
  STACK[0x3288] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v2 - 5540 + 2563 * (v2 ^ 0x56))))();
}

uint64_t sub_1000F4604()
{
  v3 = STACK[0x2E80];
  *(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB694) = *(v0 - 0x119408A4CF36558ALL);
  v4 = (*(v2 + 8 * (v1 + 3424)))(*(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB694) + ((482 * (v1 ^ 0x1C28)) ^ 0xA9F68B92 ^ (73 * (v1 ^ 0x1C2E))));
  v5 = STACK[0x1708];
  *(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB68CLL) = v4 + 0x2B1A0449E8A6C928;
  v6 = *(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB68CLL) == 0x2B1A0449E8A6C928;
  return (*(v5 + 8 * ((2 * v6) | (8 * v6) | v1)))();
}

uint64_t sub_1000F46F8()
{
  LODWORD(STACK[0x247C]) = v0;
  STACK[0x2EB8] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (v1 - 5722 + 2099 * (v1 ^ 0x443))))();
}

uint64_t sub_1000F4770()
{
  v1 = STACK[0xCD4];
  LODWORD(STACK[0x29BC]) = LODWORD(STACK[0xCD4]) + 1483 + ((LODWORD(STACK[0xCD4]) + 483271066) & 0xE331D4DF) + LODWORD(STACK[0x29BC]) + LODWORD(STACK[0x1AF4]) - 2060253798;
  return (*(v0 + 8 * ((11 * (STACK[0x2BE0] == 0x119408A4CF36558ELL)) ^ v1)))(68543954);
}

uint64_t sub_1000F4958()
{
  v3 = STACK[0x2E80];
  *(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB694) = *(v0 - 0x119408A4CF36558ALL);
  v4 = (*(v2 + 8 * (v1 + 5510)))((*(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB694) - 1443455193));
  v5 = STACK[0x1708];
  *(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB68CLL) = v4 + 0x2B1A0449E8A6C928;
  return (*(v5 + 8 * (((*(*(v3 - 0x34F9377BC915C8F4) - 0x2087B04485EAB68CLL) == 0x2B1A0449E8A6C928) * (((v1 - 4090) | 0x40) + 848)) ^ v1)))(68543953);
}

uint64_t sub_1000F4A2C(int a1)
{
  LODWORD(STACK[0x290C]) = a1;
  STACK[0x2EB8] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v1 - 1569754228) & 0x5D90A8FE ^ 0x2AB4) + v1)))();
}

uint64_t sub_1000F4AE4()
{
  *(v0 + v3) = 0x119408A4CF36558ELL;
  v5 = (*(v4 + 8 * (v2 ^ 0x9E7)))(v0 - 0x119408A4CF36558ELL);
  return (*(STACK[0x1708] + 8 * (((5 * (v2 ^ 0x242A) + ((v2 - 648) ^ 0xFFFFF9DB)) * (v1 == 0x119408A4CF36558ELL)) ^ v2)))(v5);
}

uint64_t sub_1000F4BE8@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v3 + 8 * (v2 + 3293)))(a1 - 0x2B1A0449E8A6C928);
  v5 = STACK[0x1708];
  *(v1 - 0x119408A4CF365586) = 0x2B1A0449E8A6C928;
  return (*(v5 + 8 * v2))(v4);
}

uint64_t sub_1000F4D0C()
{
  v1 = STACK[0xAFC];
  v2 = (LODWORD(STACK[0xAFC]) + 5054) | 0xA08;
  STACK[0x3288] = *(v0 + 8 * SLODWORD(STACK[0xAFC]));
  return (*(v0 + 8 * ((v2 ^ 0x167E) + v1)))();
}

uint64_t sub_1000F4DDC()
{
  v1 = STACK[0xAF8];
  STACK[0x3288] = *(v0 + 8 * SLODWORD(STACK[0xAF8]));
  return (*(v0 + 8 * (v1 + 2168)))();
}

uint64_t sub_1000F50EC()
{
  v5 = (*(v4 + 8 * (v1 ^ 0xD97)))(v0 - 0x2B1A0449E8A6C928);
  v6 = STACK[0x1708];
  *(*(v2 - 0x34F9377BC915C8F4) - 0x2087B04485EAB6C4) = v3;
  return (*(v6 + 8 * v1))(v5);
}

uint64_t sub_1000F51A8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 | 0xA28;
  v5 = (*(v3 + 8 * ((v1 | 0xA28) + 7935)))(a1 - 0x2B1A0449E8A6C928);
  v6 = STACK[0x1708];
  *(*(v2 - 0x34F9377BC915C8F4) - 0x2087B04485EAB68CLL) = 0x2B1A0449E8A6C928;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_1000F5230()
{
  LODWORD(STACK[0x3874]) = v0;
  STACK[0x1B28] -= 112;
  v3 = *STACK[0x40D8];
  STACK[0x3878] = v3;
  return (*(v2 + 8 * (((2 * ((((v1 + 240) ^ 0x1F4F ^ (v3 == 0x56F780AC40F6473BLL)) & 1) == 0)) & 0xFB | (4 * (((v1 - 16) ^ 0x4F ^ ~(v3 == 0x56F780AC40F6473BLL)) & 1))) ^ v1)))();
}

uint64_t sub_1000F5320()
{
  v4 = ((v0 + 5182) ^ 0xF2884EE3) + v1;
  v5 = *(v2 - 0x56F780AC40F64733) - 94163683;
  v6 = v4 < 0x4891C7AA;
  v7 = v4 > v5;
  if (v5 < v0 + 1217508274 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * (v7 ^ v0)))();
}

uint64_t sub_1000F53A4@<X0>(int a1@<W8>)
{
  STACK[0x3888] = v3;
  LODWORD(STACK[0x1A1C]) = a1;
  return (*(v4 + 8 * (((((v1 - 4024) ^ 0x3880) - 8337) * (v2 != 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_1000F5450()
{
  LODWORD(STACK[0x3894]) = 68543949;
  LODWORD(STACK[0x38A4]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000F55CC@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, int a7@<W8>)
{
  v11 = (((2 * a7 + 1671613158) << (((v9 - 29) | a2) & a5)) & ((v9 + 195959248) & a3 ^ a6)) + ((2 * a7 + 1671613158) ^ a4);
  if (v7 < v8 != (v11 + a1) < 0x800568FD)
  {
    v12 = (v11 + a1) < 0x800568FD;
  }

  else
  {
    v12 = v11 + a1 > v7;
  }

  return (*(v10 + 8 * ((172 * v12) ^ v9)))();
}

uint64_t sub_1000F565C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1A1C]) = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0xC2F)))((v1 - 1866440685));
  v5 = STACK[0x1708];
  STACK[0x3898] = v4;
  return (*(v5 + 8 * (((v4 == 0) * ((v2 - 3376) ^ 0x1864)) ^ v2)))();
}

uint64_t sub_1000F58A8@<X0>(uint64_t a1@<X8>)
{
  *(v1 + (v5 - 1014897696)) = *(a1 + (v5 - 1014897696));
  v7 = v5 - 654296444;
  v8 = (v2 > 0xEA81A95C) ^ (v7 < 0x157E56A3);
  v9 = v7 < v3;
  if (v8)
  {
    v9 = v2 > 0xEA81A95C;
  }

  return (*(v6 + 8 * ((9040 * v9) ^ v4)))();
}

uint64_t sub_1000F5B14@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W4>, unsigned int a4@<W5>, uint64_t a5@<X8>)
{
  v9 = a2 + ((v6 + 2986) ^ a4);
  v10 = *(a5 + v9 - 15);
  v11 = *(a5 + v9 - 31);
  v12 = v5 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((a1 == 0) * a3) ^ v7)))();
}

uint64_t sub_1000F5EAC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v8 = (a1 + v5);
  v9 = *(a4 + v8 - 15);
  v10 = *(a4 + v8 - 31);
  v11 = v4 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * (((a2 == 0) * a3) ^ v6)))((a1 - 32), (a2 - 32));
}

uint64_t sub_1000F6194@<X0>(uint64_t a1@<X8>)
{
  v8 = v2 > 0xEA81A95C;
  *(v1 + (v6 - 1014897696)) = *(a1 + (v6 - 1014897696));
  if (v8 == v6 - 654296444 < (v4 ^ 0x98D ^ v5))
  {
    v8 = v6 - 654296444 < v3;
  }

  return (*(v7 + 8 * ((4918 * v8) ^ v4)))(68588956);
}

uint64_t sub_1000F62A0@<X0>(uint64_t *a1@<X8>)
{
  v5 = *a1;
  STACK[0x2C60] = *(v4 + 8 * v3);
  STACK[0x2BB8] = v1;
  STACK[0x2FE8] = 0x51CE20ABD81C933BLL;
  STACK[0x2008] = 0x5B67E4B9D3C4B062;
  STACK[0x23A0] = 0x5E897A67CCC9D7C7;
  v7 = v5 == 0x5A0411E37F4B9882 || v1 == 0;
  return (*(v4 + 8 * ((v7 * ((v2 - 170) ^ 0x18D8)) ^ v2)))();
}

uint64_t sub_1000F6334@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = -1221656064;
  STACK[0x1E80] = STACK[0xA48];
  LODWORD(STACK[0x2A08]) = 0;
  return (*(v2 + 8 * (v1 ^ 0x1E79)))();
}

uint64_t sub_1000F6378@<X0>(int a1@<W8>)
{
  v5 = STACK[0x218] & (2 * v1) ^ 0xAAACD04A;
  v6 = ((a1 ^ 0x3CFC) + 1504) ^ 0x6D7DB522;
  LODWORD(STACK[0x1400]) = v5;
  v7 = *(v4 + 8 * ((v5 + (v1 ^ 0x2AA995DA) + v6 == 1834789235) ^ a1));
  LODWORD(STACK[0x13D0]) = v6;
  LODWORD(STACK[0x13C0]) = v1 ^ 0x2AA995DA;
  STACK[0x1880] = v2;
  STACK[0x1860] = v3;
  return v7();
}

uint64_t sub_1000F6534(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v12 = *(STACK[0x1708] + 8 * ((((v7 - 1495506655) & 0x592398FE ^ 0x1807) * (v8 < 0x10)) ^ (v7 + 479)));
  *&STACK[0x18B0] = vdupq_n_s64(a7);
  *&STACK[0x18F0] = vdupq_n_s64(v9);
  *&STACK[0x1890] = vdupq_n_s64(a6);
  *&STACK[0x18A0] = vdupq_n_s64(v11);
  *&STACK[0x1900] = vdupq_n_s64(v10);
  *&STACK[0x17F0] = vdupq_n_s64(a1);
  return v12();
}

uint64_t sub_1000F65B4(uint64_t a1, int a2)
{
  v5 = v3;
  v6 = v4 + LODWORD(STACK[0x1400]);
  return (*(STACK[0x1708] + 8 * v2))(STACK[0x1880], (v6 - 1834789236 + a2 - v5 - 4), (~v5 + v6 - 1834789236 + a2), (v6 - 1834789236 + a2 - v5 - 3), (v6 - 1834789236 + a2 - v5 - 2), (v6 + a2 - 1834789236 - v5));
}

uint64_t sub_1000F6650(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v18 = (a6 + v8);
  v19 = (a3 + v8);
  v20 = (a5 + v8);
  v21 = (a4 + v8);
  v22 = (a2 + v8);
  v23 = (v12 + v8);
  v24.i64[0] = v15 + v22;
  v24.i64[1] = v15 + v23;
  v25 = v15 + v18;
  v26.i64[0] = v15 + v20;
  v26.i64[1] = v15 + v21;
  v27.i64[0] = v15 + v18;
  v27.i64[1] = v15 + v19;
  v28 = v27;
  *&STACK[0x1840] = v27;
  v29.i64[0] = a1 + v20;
  v29.i64[1] = a1 + v21;
  v30 = v11 + v8 + (v13 ^ (v16 - 3472));
  v31.i64[0] = a1 + v22;
  v31.i64[1] = a1 + v23;
  v32 = (v10 + v8);
  v27.i64[0] = v15 + v30;
  v27.i64[1] = v15 + v32;
  *&STACK[0x1850] = v27;
  v33 = *&STACK[0x1940];
  v34 = vandq_s8(v27, *&STACK[0x1940]);
  v35 = vandq_s8(v28, *&STACK[0x1940]);
  v36 = vandq_s8(v26, *&STACK[0x1940]);
  v37 = vandq_s8(v24, *&STACK[0x1940]);
  v38 = *&STACK[0x1870];
  v39 = *&STACK[0x1620];
  v40 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v41 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v42 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v43 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v44 = veorq_s8(v42, *&STACK[0x15D0]);
  v45 = veorq_s8(v41, *&STACK[0x15D0]);
  v46 = veorq_s8(v40, *&STACK[0x15D0]);
  v47 = veorq_s8(v43, *&STACK[0x15D0]);
  v48 = *&STACK[0x15D0];
  v49 = veorq_s8(v40, *&STACK[0x1610]);
  v50 = veorq_s8(v41, *&STACK[0x1610]);
  v51 = veorq_s8(v42, *&STACK[0x1610]);
  v52 = veorq_s8(v43, *&STACK[0x1610]);
  v53 = *&STACK[0x1610];
  v54 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v52);
  v58 = veorq_s8(vaddq_s64(v54, v49), *&STACK[0x1690]);
  v59 = veorq_s8(vaddq_s64(v55, v50), *&STACK[0x1690]);
  v60 = veorq_s8(vaddq_s64(v56, v51), *&STACK[0x1690]);
  v61 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v62 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v63 = veorq_s8(v57, *&STACK[0x1690]);
  v64 = *&STACK[0x1690];
  v65 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v66 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v67 = veorq_s8(v60, v65);
  v68 = veorq_s8(v63, v66);
  v69 = veorq_s8(v59, v62);
  v70 = veorq_s8(v58, v61);
  v71 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v70);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v69);
  v75 = vaddq_s64(v72, v68);
  v76 = veorq_s8(vaddq_s64(v71, v67), *&STACK[0x16B0]);
  v77 = veorq_s8(v74, *&STACK[0x16B0]);
  v78 = veorq_s8(v73, *&STACK[0x16B0]);
  v79 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v82 = veorq_s8(v75, *&STACK[0x16B0]);
  v83 = *&STACK[0x16B0];
  v84 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v85 = veorq_s8(v77, v81);
  v86 = veorq_s8(v76, v80);
  v87 = veorq_s8(v82, v79);
  v88 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v92 = vaddq_s64(v89, v85);
  v93 = *&STACK[0x16F0];
  v94 = veorq_s8(vaddq_s64(v88, v84), *&STACK[0x16F0]);
  v95 = veorq_s8(v92, *&STACK[0x16F0]);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v97 = veorq_s8(vaddq_s64(v90, v86), *&STACK[0x16F0]);
  v98 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v100 = veorq_s8(vaddq_s64(v91, v87), *&STACK[0x16F0]);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v102 = veorq_s8(v97, v99);
  v103 = veorq_s8(v95, v98);
  v104 = veorq_s8(v94, v96);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v102), *&STACK[0x1570]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v103), *&STACK[0x1570]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v104), *&STACK[0x1570]);
  v109 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v111 = veorq_s8(v105, *&STACK[0x1570]);
  v112 = *&STACK[0x1570];
  v113 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v114 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v115 = veorq_s8(v107, v113);
  v116 = veorq_s8(v106, v110);
  v117 = veorq_s8(v111, v109);
  *&STACK[0x1820] = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  *&STACK[0x1830] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v116);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v115);
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v114), *&STACK[0x1660]);
  v120 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v121 = veorq_s8(v118, *&STACK[0x1660]);
  *&STACK[0x1810] = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v123 = veorq_s8(v119, v120);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), *&STACK[0x1650]);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v123), *&STACK[0x1650]);
  v126 = *&STACK[0x1650];
  v127 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v128 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v129 = vandq_s8(v31, v33);
  v130 = vandq_s8(v29, v33);
  v131 = v39;
  v132 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v38), v39);
  v133 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v38), v39);
  v134 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v135 = v48;
  v136 = veorq_s8(v133, v48);
  v137 = veorq_s8(v132, v48);
  v138 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v139 = veorq_s8(v124, v127);
  v140 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v141 = veorq_s8(v132, v53);
  v142 = veorq_s8(v133, v53);
  v143 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v144 = veorq_s8(vaddq_s64(v138, v141), v64);
  v145 = veorq_s8(vaddq_s64(v140, v142), v64);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v147 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v83);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v147), v83);
  v150 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v151 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v152 = veorq_s8(v148, v150);
  v153 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v154 = vaddq_s64(v143, v139);
  v155 = veorq_s8(vaddq_s64(v153, v151), v93);
  v156 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v152), v93);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v159 = veorq_s8(v155, v156);
  v160 = v112;
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v112);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v159), v112);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v165 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v164);
  v167 = vaddq_s64(v165, v163);
  v168 = *&STACK[0x17F0];
  v169 = *&STACK[0x1900];
  v170 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v165.i64[0] = a1 + v30;
  v172 = a1 + v18;
  v173 = *&STACK[0x18F0];
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, *&STACK[0x17F0]), vorrq_s8(v166, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, *&STACK[0x17F0]), vorrq_s8(v167, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v176 = veorq_s8(v175, v171);
  v177 = veorq_s8(v174, v170);
  v178 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v180 = vdupq_n_s64(v14);
  v181 = *&STACK[0x16C0];
  v182 = vshlq_u64(veorq_s8(v154, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v180)));
  v154.i64[0] = v172;
  v154.i64[1] = a1 + v19;
  v165.i64[1] = a1 + v32;
  *&STACK[0x1800] = v165;
  v183 = vshlq_u64(veorq_s8(vaddq_s64(v134, v128), v181), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v180)));
  v184 = v126;
  v185 = veorq_s8(vaddq_s64(v178, v176), v126);
  v186 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v187 = veorq_s8(vaddq_s64(v179, v177), v126);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v189 = veorq_s8(v185, v186);
  v190 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v189);
  v192 = vaddq_s64(v190, v188);
  v193 = vandq_s8(v154, v33);
  v258.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), *&STACK[0x18B0]), v192), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v180))), v183);
  v258.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), *&STACK[0x18B0]), v191), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v180))), v182);
  v194 = vandq_s8(v165, v33);
  v195 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v197 = v131;
  v198 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), *&STACK[0x1870]), v131);
  v199 = v135;
  v200 = veorq_s8(v198, v135);
  v201 = veorq_s8(v198, v53);
  v202 = vaddq_s64(*&STACK[0x1820], v117);
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v64);
  v204 = veorq_s8(*&STACK[0x1830], *&STACK[0x1660]);
  v205 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v206 = veorq_s8(v204, *&STACK[0x1810]);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v205), *&STACK[0x16B0]);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v209 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v212 = vaddq_s64(v209, v206);
  v213 = veorq_s8(vaddq_s64(v210, v208), v93);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v215 = veorq_s8(v212, v184);
  v216 = v160;
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v160);
  v218 = veorq_s8(v215, v211);
  v219 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v219);
  v221 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v220, v168), vorrq_s8(v220, v169)), v169), v173);
  v223 = vaddq_s64(v221, v218);
  v224 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v224), v184);
  v226 = vshlq_u64(veorq_s8(v223, v181), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1840], 3uLL), v180)));
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL)));
  v228 = vandq_s8(vaddq_s64(v195, *&STACK[0x1870]), v197);
  v229 = veorq_s8(v202, *&STACK[0x1660]);
  v258.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), *&STACK[0x18B0]), v227), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), v180))), v226);
  v230 = veorq_s8(v228, v199);
  v231 = veorq_s8(v228, v53);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = veorq_s8(v229, v196);
  v234 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v235 = veorq_s8(vaddq_s64(v232, v231), v64);
  v236 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v237 = veorq_s8(v235, v234);
  v238 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v240 = vaddq_s64(v236, v233);
  v241 = veorq_s8(vaddq_s64(v238, v237), *&STACK[0x16B0]);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v243 = veorq_s8(v240, v184);
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242), v93);
  v245 = veorq_s8(v243, v239);
  v246 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v247 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v249 = veorq_s8(vaddq_s64(v247, v246), v216);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250);
  v252 = vaddq_s64(v248, v245);
  v253 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251, v168), vorrq_s8(v251, v169)), v169), v173);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v255 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v184);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL)));
  v258.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v256, v256), *&STACK[0x18B0]), v256), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1800], 3uLL), v180))), vshlq_u64(veorq_s8(v252, v181), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1850], 3uLL), v180))));
  *(v172 - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v258, *&STACK[0x15C0])), *(v25 - 7));
  return (*(v17 + 8 * (((v9 == v8) * v7) ^ v6)))();
}

uint64_t sub_1000F7108@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x13F0]) = v2;
  v4 = *(STACK[0x1708] + 8 * (a2 - 4461));
  LODWORD(STACK[0x1410]) = v2 & 0xFFFFFFF0;
  LODWORD(STACK[0x15B0]) = -(v2 & 0xFFFFFFF0);
  v5 = v3 - 1834789236 + LODWORD(STACK[0x1400]) + a1;
  LODWORD(STACK[0x1540]) = v5 - 15;
  LODWORD(STACK[0x1530]) = v5 - 14;
  LODWORD(STACK[0x14C0]) = v5 - 13;
  LODWORD(STACK[0x14B0]) = v5 - 12;
  LODWORD(STACK[0x14A0]) = v5 - 11;
  LODWORD(STACK[0x1490]) = v5 - 10;
  LODWORD(STACK[0x1480]) = v5 - 9;
  LODWORD(STACK[0x1470]) = v5 - 8;
  LODWORD(STACK[0x1460]) = v5 - 7;
  LODWORD(STACK[0x1450]) = v5 - 6;
  LODWORD(STACK[0x1440]) = v5 - 5;
  LODWORD(STACK[0x1430]) = v5 - 4;
  LODWORD(STACK[0x1420]) = v5 - 2;
  v6 = (a2 - 6142) | 0xA53;
  LODWORD(STACK[0x13E0]) = v6;
  return v4(STACK[0x1880], v6 ^ 0x92A35C5A);
}

uint64_t sub_1000F71EC(uint64_t a1, int a2)
{
  v10 = (v6 + v5 + 16);
  v11 = (v3 + v5 + 16);
  v12 = (LODWORD(STACK[0x1420]) + v5 + 16);
  v13 = (LODWORD(STACK[0x1430]) + v5 + 16);
  v14 = LODWORD(STACK[0x1440]) + v5;
  v15 = LODWORD(STACK[0x1460]) + v5;
  v16 = (LODWORD(STACK[0x1450]) + v5 + 16);
  v17 = (LODWORD(STACK[0x1470]) + v5 + 16);
  v18 = LODWORD(STACK[0x1480]) + v5;
  v19 = LODWORD(STACK[0x14A0]) + v5;
  v20 = (LODWORD(STACK[0x1490]) + v5 + 16);
  v21 = (LODWORD(STACK[0x14B0]) + v5 + 16);
  v22 = LODWORD(STACK[0x14C0]) + v5;
  v23 = (LODWORD(STACK[0x1530]) + v5 + 16);
  v24 = (LODWORD(STACK[0x1540]) + v5 + 16);
  v25.i64[0] = v8 + v23;
  v25.i64[1] = v8 + v24;
  v26 = v25;
  *&STACK[0x1810] = v25;
  v27 = (v22 + 16);
  v25.i64[0] = v8 + v21;
  v25.i64[1] = v8 + v27;
  v28 = v25;
  *&STACK[0x1800] = v25;
  v29 = (v19 + 16);
  v25.i64[0] = v8 + v20;
  v25.i64[1] = v8 + v29;
  v30 = v25;
  *&STACK[0x1820] = v25;
  v31 = (v18 + 16);
  v25.i64[0] = v8 + v17;
  v25.i64[1] = v8 + v31;
  v32 = v25;
  *&STACK[0x1840] = v25;
  v33 = (v15 + 16);
  v25.i64[0] = v8 + v16;
  v25.i64[1] = v8 + v33;
  v34 = v25;
  *&STACK[0x1780] = v25;
  v35 = (v14 + 16);
  v25.i64[0] = v8 + v13;
  v25.i64[1] = v8 + v35;
  v36 = v25;
  *&STACK[0x1770] = v25;
  v25.i64[0] = v8 + v10;
  v25.i64[1] = v8 + v11;
  v37 = v25;
  *&STACK[0x17D0] = v25;
  v38 = (v2 + v5 + a2 + 16);
  v25.i64[0] = v8 + v12;
  v25.i64[1] = v8 + v38;
  *&STACK[0x17E0] = v25;
  v39.i64[0] = a1 + v13;
  v39.i64[1] = a1 + v35;
  v40.i64[0] = a1 + v16;
  v40.i64[1] = a1 + v33;
  v41 = *&STACK[0x1940];
  v42 = vandq_s8(v25, *&STACK[0x1940]);
  v43 = vandq_s8(v37, *&STACK[0x1940]);
  v44 = vandq_s8(v36, *&STACK[0x1940]);
  v45 = vandq_s8(v34, *&STACK[0x1940]);
  v46 = vandq_s8(v32, *&STACK[0x1940]);
  v47 = vandq_s8(v30, *&STACK[0x1940]);
  v48 = vandq_s8(v28, *&STACK[0x1940]);
  v49 = vandq_s8(v26, *&STACK[0x1940]);
  v50 = *&STACK[0x1870];
  v51 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v52 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v53 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v54 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v55 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v56 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v57 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v58 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v59 = *&STACK[0x1620];
  v60 = *&STACK[0x15D0];
  v61 = veorq_s8(v58, *&STACK[0x15D0]);
  v62 = veorq_s8(v57, *&STACK[0x15D0]);
  v63 = veorq_s8(v56, *&STACK[0x15D0]);
  v64 = veorq_s8(v55, *&STACK[0x15D0]);
  v65 = veorq_s8(v54, *&STACK[0x15D0]);
  v66 = veorq_s8(v53, *&STACK[0x15D0]);
  v67 = veorq_s8(v52, *&STACK[0x15D0]);
  v68 = veorq_s8(v51, *&STACK[0x15D0]);
  v69 = *&STACK[0x1610];
  v70 = veorq_s8(v51, *&STACK[0x1610]);
  v71 = veorq_s8(v52, *&STACK[0x1610]);
  v72 = veorq_s8(v53, *&STACK[0x1610]);
  v73 = veorq_s8(v54, *&STACK[0x1610]);
  v74 = veorq_s8(v55, *&STACK[0x1610]);
  v75 = veorq_s8(v56, *&STACK[0x1610]);
  v76 = veorq_s8(v57, *&STACK[0x1610]);
  v77 = veorq_s8(v58, *&STACK[0x1610]);
  v78 = *&STACK[0x1690];
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v70), *&STACK[0x1690]);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71), *&STACK[0x1690]);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v72), *&STACK[0x1690]);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v73), *&STACK[0x1690]);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v74), *&STACK[0x1690]);
  v84 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v75), *&STACK[0x1690]);
  v87 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v76), *&STACK[0x1690]);
  v90 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v77), *&STACK[0x1690]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v95 = veorq_s8(v89, v92);
  v96 = veorq_s8(v86, v91);
  v97 = veorq_s8(v83, v90);
  v98 = veorq_s8(v82, v88);
  v99 = veorq_s8(v81, v87);
  v100 = veorq_s8(v80, v85);
  v101 = veorq_s8(v79, v84);
  v102 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v101);
  v110 = *&STACK[0x16B0];
  v111 = veorq_s8(vaddq_s64(v102, v94), *&STACK[0x16B0]);
  v112 = veorq_s8(vaddq_s64(v103, v95), *&STACK[0x16B0]);
  v113 = veorq_s8(vaddq_s64(v104, v96), *&STACK[0x16B0]);
  v114 = veorq_s8(vaddq_s64(v105, v97), *&STACK[0x16B0]);
  v115 = veorq_s8(vaddq_s64(v106, v98), *&STACK[0x16B0]);
  v116 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v117 = veorq_s8(vaddq_s64(v107, v99), *&STACK[0x16B0]);
  v118 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v120 = veorq_s8(vaddq_s64(v108, v100), *&STACK[0x16B0]);
  v121 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v124 = veorq_s8(v109, *&STACK[0x16B0]);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v126 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v127 = veorq_s8(v117, v123);
  v128 = veorq_s8(v115, v122);
  v129 = veorq_s8(v114, v121);
  v130 = veorq_s8(v113, v119);
  v131 = veorq_s8(v112, v118);
  v132 = veorq_s8(v111, v116);
  v133 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v132);
  v141 = *&STACK[0x16F0];
  v142 = veorq_s8(vaddq_s64(v133, v125), *&STACK[0x16F0]);
  v143 = veorq_s8(vaddq_s64(v134, v126), *&STACK[0x16F0]);
  v144 = veorq_s8(vaddq_s64(v135, v127), *&STACK[0x16F0]);
  v145 = veorq_s8(vaddq_s64(v136, v128), *&STACK[0x16F0]);
  v146 = veorq_s8(vaddq_s64(v137, v129), *&STACK[0x16F0]);
  v147 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v149 = veorq_s8(vaddq_s64(v138, v130), *&STACK[0x16F0]);
  v150 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v152 = veorq_s8(vaddq_s64(v139, v131), *&STACK[0x16F0]);
  v153 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v155 = veorq_s8(v140, *&STACK[0x16F0]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v157 = veorq_s8(v152, v154);
  v158 = veorq_s8(v149, v153);
  v159 = veorq_s8(v146, v151);
  v160 = veorq_s8(v145, v150);
  v161 = veorq_s8(v144, v148);
  v162 = veorq_s8(v143, v147);
  v163 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v164 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v169 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v163);
  v172 = *&STACK[0x1570];
  v173 = veorq_s8(vaddq_s64(v164, v156), *&STACK[0x1570]);
  v174 = veorq_s8(vaddq_s64(v165, v157), *&STACK[0x1570]);
  v175 = veorq_s8(vaddq_s64(v166, v158), *&STACK[0x1570]);
  v176 = veorq_s8(vaddq_s64(v167, v159), *&STACK[0x1570]);
  v177 = veorq_s8(vaddq_s64(v168, v160), *&STACK[0x1570]);
  v178 = veorq_s8(vaddq_s64(v169, v161), *&STACK[0x1570]);
  v179 = veorq_s8(vaddq_s64(v170, v162), *&STACK[0x1570]);
  v180 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v181 = veorq_s8(v171, *&STACK[0x1570]);
  *&STACK[0x1710] = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  *&STACK[0x1720] = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  *&STACK[0x1790] = veorq_s8(v178, v180);
  v182 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v183 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v184 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v185 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v186 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  *&STACK[0x1730] = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  *&STACK[0x1600] = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  *&STACK[0x17A0] = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  *&STACK[0x1850] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v186);
  *&STACK[0x17B0] = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  *&STACK[0x1830] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v185);
  v188 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v184);
  *&STACK[0x1740] = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  *&STACK[0x1750] = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v191 = v40;
  v192 = vandq_s8(v40, v41);
  v193 = vandq_s8(v39, v41);
  v194 = v39;
  v195 = vaddq_s64(v187, v183);
  v196 = v50;
  *&STACK[0x1760] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v182);
  v197 = v59;
  v198 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v50), v59);
  v199 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v50), v59);
  v200 = v60;
  v201 = veorq_s8(v199, v60);
  v202 = veorq_s8(v198, v60);
  v203 = *&STACK[0x1660];
  v204 = veorq_s8(v195, *&STACK[0x1660]);
  v205 = veorq_s8(v198, v69);
  v206 = veorq_s8(v199, v69);
  v207 = veorq_s8(v190, *&STACK[0x1660]);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v205);
  v209 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v210 = veorq_s8(v207, v189);
  v211 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v212 = v78;
  v213 = veorq_s8(v208, v78);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v206), v78);
  v215 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v216 = veorq_s8(v214, v211);
  v217 = veorq_s8(v213, v209);
  v218 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v219 = veorq_s8(v204, v188);
  v220 = vaddq_s64(v218, v216);
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v217), v110);
  v222 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v224 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v225 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v227 = veorq_s8(v220, v110);
  v228 = veorq_s8(v227, v223);
  v229 = vaddq_s64(v222, v219);
  v230 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v231 = vaddq_s64(v215, v210);
  v232 = veorq_s8(vaddq_s64(v225, v224), v141);
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), v141);
  v234 = vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL);
  v235 = *&STACK[0x1650];
  v236 = veorq_s8(v231, *&STACK[0x1650]);
  v237 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v238 = veorq_s8(v232, v234);
  v239 = veorq_s8(v229, *&STACK[0x1650]);
  v240 = veorq_s8(v239, v226);
  v241 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v237), v172);
  v243 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v238), v172);
  v244 = vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL);
  v245 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v246 = veorq_s8(v242, v241);
  v247 = *&STACK[0x17F0];
  v248 = veorq_s8(v236, v230);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v246);
  v250 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v245);
  v252 = *&STACK[0x17C0];
  v253 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v249, *&STACK[0x17F0]), vorrq_s8(v249, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v256 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251, *&STACK[0x17F0]), vorrq_s8(v251, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v257 = veorq_s8(v256, v254);
  v258 = veorq_s8(v255, v253);
  v259 = vaddq_s64(v250, v248);
  v260 = vaddq_s64(v244, v240);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v257);
  v262 = vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL);
  v263 = vdupq_n_s64(v7);
  v264 = *&STACK[0x16C0];
  v265 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v258), *&STACK[0x1650]);
  v266 = vshlq_u64(veorq_s8(v259, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1770], 3uLL), v263)));
  v267 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v268 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v40.i64[0] = a1 + v12;
  v40.i64[1] = a1 + v38;
  v269 = veorq_s8(v261, *&STACK[0x1650]);
  v270 = vshlq_u64(veorq_s8(v260, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1780], 3uLL), v263)));
  v260.i64[0] = a1 + v10;
  v260.i64[1] = a1 + v11;
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), veorq_s8(v269, v262));
  v272 = *&STACK[0x1710];
  *&STACK[0x1780] = vsraq_n_u64(vshlq_n_s64(*&STACK[0x1710], 3uLL), *&STACK[0x1710], 0x3DuLL);
  v273 = vaddq_s64(v268, v267);
  v274 = vsraq_n_u64(vshlq_n_s64(*&STACK[0x1720], 3uLL), *&STACK[0x1720], 0x3DuLL);
  v453.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v273, v273), *&STACK[0x18B0]), v273), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v191, 3uLL), v263))), v270);
  v453.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v271, v271), *&STACK[0x18B0]), v271), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v194, 3uLL), v263))), v266);
  v275 = vandq_s8(v40, v41);
  v276 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v277 = vandq_s8(v260, v41);
  *&STACK[0x1770] = vaddq_s64(*&STACK[0x1600], *&STACK[0x1720]);
  v278 = v196;
  v279 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v196), v197);
  v280 = veorq_s8(v279, v200);
  v281 = vaddq_s64(*&STACK[0x1730], v272);
  v282 = v69;
  v283 = veorq_s8(v279, v69);
  v284 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v283), v212);
  v285 = veorq_s8(*&STACK[0x1830], v203);
  v286 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL));
  v287 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v288 = veorq_s8(v285, *&STACK[0x1740]);
  v289 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v290 = veorq_s8(vaddq_s64(v287, v286), v110);
  v291 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v292 = veorq_s8(v290, v289);
  v293 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v294 = vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL);
  v295 = vaddq_s64(v291, v288);
  v296 = veorq_s8(vaddq_s64(v293, v292), v141);
  v297 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v298 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), v297), v172);
  v299 = veorq_s8(v295, v235);
  v300 = veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL));
  v301 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), v300);
  v302 = veorq_s8(v299, v294);
  v303 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v301, v247), vorrq_s8(v301, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v304 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v305 = veorq_s8(v303, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v306 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v307 = vaddq_s64(v304, v302);
  v308 = veorq_s8(vaddq_s64(v306, v305), v235);
  v309 = veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v310 = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v311 = vshlq_u64(veorq_s8(v307, v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x17D0], 3uLL), v263)));
  v312 = vaddq_s64(v310, v309);
  v69.i64[0] = a1 + v17;
  v69.i64[1] = a1 + v31;
  v313 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v312, v312), *&STACK[0x18B0]), v312), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v260, 3uLL), v263)));
  v307.i64[0] = a1 + v20;
  v314 = STACK[0x1708];
  v307.i64[1] = a1 + v29;
  v315 = v278;
  v316 = vandq_s8(vaddq_s64(v276, v278), v197);
  v317 = veorq_s8(*&STACK[0x1850], v203);
  v453.val[0] = veorq_s8(v313, v311);
  v318 = veorq_s8(v316, v200);
  v319 = v200;
  v320 = veorq_s8(v316, v282);
  v321 = vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL);
  v322 = veorq_s8(v317, *&STACK[0x1750]);
  v323 = vaddq_s64(v321, v320);
  v324 = vsraq_n_u64(vshlq_n_s64(v320, 3uLL), v320, 0x3DuLL);
  v325 = veorq_s8(v323, v212);
  v326 = vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL);
  v327 = veorq_s8(v325, v324);
  v328 = vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL);
  v329 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v330 = vaddq_s64(v326, v322);
  v331 = veorq_s8(vaddq_s64(v328, v327), v110);
  v332 = veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL));
  v333 = veorq_s8(v330, v235);
  v334 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), v332), v141);
  v335 = veorq_s8(v333, v329);
  v336 = veorq_s8(v334, vsraq_n_u64(vshlq_n_s64(v332, 3uLL), v332, 0x3DuLL));
  v337 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v333.i64[0] = a1 + v21;
  v333.i64[1] = a1 + v27;
  v339 = vaddq_s64(v338, v335);
  v340 = veorq_s8(vaddq_s64(v337, v336), v172);
  v341 = veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v341);
  v343 = vsubq_s64(vorrq_s8(v342, v247), vorrq_s8(v342, *&STACK[0x1900]));
  v344 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v342.i64[0] = a1 + v23;
  v342.i64[1] = a1 + v24;
  v345 = veorq_s8(vaddq_s64(v343, *&STACK[0x1900]), *&STACK[0x18F0]);
  v346 = veorq_s8(v345, v344);
  v347 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v346), v235);
  v348 = vandq_s8(v342, v41);
  v349 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL)));
  v350 = vandq_s8(v333, v41);
  v351 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v349, v349), *&STACK[0x18B0]), v349), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v263)));
  v352 = vandq_s8(v307, v41);
  v453.val[1] = veorq_s8(v351, vshlq_u64(veorq_s8(v339, v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x17E0], 3uLL), v263))));
  v353 = vandq_s8(v69, v41);
  v354 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v356 = veorq_s8(v281, v203);
  v357 = veorq_s8(*&STACK[0x1770], v203);
  v358 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v315), v197);
  v359 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), v315), v197);
  v351.i64[0] = vqtbl4q_s8(v453, v252).u64[0];
  v453.val[0] = veorq_s8(v359, v319);
  v453.val[1] = veorq_s8(v357, v274);
  v453.val[2] = veorq_s8(v358, v319);
  v453.val[3] = vsraq_n_u64(vshlq_n_s64(v453.val[2], 0x38uLL), v453.val[2], 8uLL);
  v453.val[2] = vsraq_n_u64(vshlq_n_s64(v453.val[0], 0x38uLL), v453.val[0], 8uLL);
  v453.val[0] = veorq_s8(v356, *&STACK[0x1780]);
  v360 = veorq_s8(v358, v282);
  v361 = veorq_s8(v359, v282);
  v453.val[2] = vaddq_s64(v453.val[2], v361);
  v453.val[3] = vaddq_s64(v453.val[3], v360);
  v362 = vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL);
  v363 = vsraq_n_u64(vshlq_n_s64(v360, 3uLL), v360, 0x3DuLL);
  v364 = vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL);
  v365 = vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL);
  v366 = vsraq_n_u64(vshlq_n_s64(v453.val[0], 3uLL), v453.val[0], 0x3DuLL);
  v453.val[3] = veorq_s8(v453.val[3], v212);
  v453.val[2] = veorq_s8(v453.val[2], v212);
  v367 = veorq_s8(v453.val[2], v364);
  v453.val[0] = vaddq_s64(v365, v453.val[0]);
  v368 = veorq_s8(v453.val[3], v363);
  v369 = vsraq_n_u64(vshlq_n_s64(v453.val[2], 0x38uLL), v453.val[2], 8uLL);
  v453.val[2] = vsraq_n_u64(vshlq_n_s64(v453.val[3], 0x38uLL), v453.val[3], 8uLL);
  v453.val[3] = vsraq_n_u64(vshlq_n_s64(v453.val[1], 3uLL), v453.val[1], 0x3DuLL);
  v370 = veorq_s8(vaddq_s64(v369, v367), v110);
  v453.val[2] = veorq_s8(vaddq_s64(v453.val[2], v368), v110);
  v371 = veorq_s8(v453.val[2], vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL));
  v453.val[1] = veorq_s8(vaddq_s64(v362, v453.val[1]), v235);
  v372 = veorq_s8(v370, vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL));
  v373 = vsraq_n_u64(vshlq_n_s64(v453.val[2], 0x38uLL), v453.val[2], 8uLL);
  v453.val[0] = veorq_s8(v453.val[0], v235);
  v453.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), v372);
  v374 = veorq_s8(vaddq_s64(v373, v371), v141);
  v453.val[2] = veorq_s8(v453.val[2], v141);
  v375 = veorq_s8(v453.val[0], v366);
  v376 = vsraq_n_u64(vshlq_n_s64(v371, 3uLL), v371, 0x3DuLL);
  v377 = veorq_s8(v453.val[2], vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  v378 = veorq_s8(v374, v376);
  v453.val[3] = veorq_s8(v453.val[1], v453.val[3]);
  v379 = vsraq_n_u64(vshlq_n_s64(v453.val[2], 0x38uLL), v453.val[2], 8uLL);
  v453.val[2] = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v380 = vsraq_n_u64(vshlq_n_s64(v453.val[0], 0x38uLL), v453.val[0], 8uLL);
  v453.val[0] = vaddq_s64(v379, v377);
  v381 = vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL);
  v382 = vsraq_n_u64(vshlq_n_s64(v453.val[1], 0x38uLL), v453.val[1], 8uLL);
  v453.val[0] = veorq_s8(v453.val[0], v172);
  v453.val[2] = veorq_s8(vaddq_s64(v453.val[2], v378), v172);
  v453.val[1] = veorq_s8(v453.val[2], vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  v453.val[3] = vaddq_s64(v382, v453.val[3]);
  v383 = veorq_s8(v453.val[0], v381);
  v384 = vsraq_n_u64(vshlq_n_s64(v453.val[2], 0x38uLL), v453.val[2], 8uLL);
  v453.val[2] = vsraq_n_u64(vshlq_n_s64(v453.val[0], 0x38uLL), v453.val[0], 8uLL);
  v453.val[0] = vaddq_s64(v380, v375);
  v453.val[2] = vaddq_s64(v453.val[2], v383);
  v385 = vshlq_u64(veorq_s8(v453.val[3], v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1800], 3uLL), v263)));
  v453.val[3] = vaddq_s64(v384, v453.val[1]);
  v453.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v453.val[2], v247), vorrq_s8(v453.val[2], *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v453.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v453.val[3], v247), vorrq_s8(v453.val[3], *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v453.val[1] = veorq_s8(v453.val[3], vsraq_n_u64(vshlq_n_s64(v453.val[1], 3uLL), v453.val[1], 0x3DuLL));
  v386 = veorq_s8(v453.val[2], vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL));
  v387 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453.val[3], 0x38uLL), v453.val[3], 8uLL), v453.val[1]);
  v453.val[3] = vsraq_n_u64(vshlq_n_s64(v453.val[1], 3uLL), v453.val[1], 0x3DuLL);
  v388 = veorq_s8(v387, v235);
  v453.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453.val[2], 0x38uLL), v453.val[2], 8uLL), v386), v235);
  v453.val[1] = veorq_s8(v453.val[2], vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL));
  v389 = vsraq_n_u64(vshlq_n_s64(v453.val[2], 0x38uLL), v453.val[2], 8uLL);
  v453.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), veorq_s8(v388, v453.val[3]));
  v453.val[1] = vaddq_s64(v389, v453.val[1]);
  v390 = vandq_s8(vaddq_s64(v355, v315), v197);
  v453.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v453.val[1], v453.val[1]), *&STACK[0x18B0]), v453.val[1]), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v342, 3uLL), v263))), vshlq_u64(veorq_s8(v453.val[0], v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1810], 3uLL), v263))));
  v453.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v453.val[2], v453.val[2]), *&STACK[0x18B0]), v453.val[2]), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v333, 3uLL), v263))), v385);
  v391 = veorq_s8(v390, v319);
  v392 = veorq_s8(v390, v282);
  v393 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL), v392), v212);
  v394 = veorq_s8(v393, vsraq_n_u64(vshlq_n_s64(v392, 3uLL), v392, 0x3DuLL));
  v395 = veorq_s8(vaddq_s64(*&STACK[0x17A0], *&STACK[0x1790]), v203);
  v396 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), v394), v110);
  v397 = veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(*&STACK[0x1790], 3uLL), *&STACK[0x1790], 0x3DuLL));
  v398 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL));
  v399 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL), v398);
  v400 = vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL);
  v401 = vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL);
  v402 = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v403 = veorq_s8(v399, v141);
  v404 = vaddq_s64(v400, v397);
  v405 = veorq_s8(v403, v401);
  v406 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v405), v172);
  v407 = veorq_s8(v404, v235);
  v408 = veorq_s8(v406, vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL));
  v409 = veorq_s8(v407, v402);
  v410 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL), v408);
  v411 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v412 = vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL);
  v413 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v410, v247), vorrq_s8(v410, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18F0]);
  v414 = veorq_s8(v413, v412);
  v415 = vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL);
  v416 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL), v414), v235);
  v417 = vshlq_u64(veorq_s8(vaddq_s64(v411, v409), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1820], 3uLL), v263)));
  v418 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL), veorq_s8(v416, v415));
  v419 = veorq_s8(*&STACK[0x1760], v203);
  v420 = vandq_s8(vaddq_s64(v354, v315), v197);
  v453.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v418, v418), *&STACK[0x18B0]), v418), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v307, 3uLL), v263))), v417);
  v421 = veorq_s8(v420, v319);
  v422 = veorq_s8(v419, *&STACK[0x17B0]);
  v423 = veorq_s8(v420, v282);
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL), v423);
  v425 = vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL);
  v426 = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v427 = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v428 = veorq_s8(v424, v212);
  v429 = vaddq_s64(v425, v422);
  v430 = veorq_s8(v428, v426);
  v431 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v430), v110);
  v432 = veorq_s8(v429, v235);
  v433 = veorq_s8(v431, vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL));
  v434 = vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL);
  v435 = veorq_s8(v432, v427);
  v436 = vaddq_s64(v434, v433);
  v437 = vsraq_n_u64(vshlq_n_s64(v433, 3uLL), v433, 0x3DuLL);
  v438 = veorq_s8(v436, v141);
  v439 = vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL);
  v440 = veorq_s8(v438, v437);
  v441 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v440), v172);
  v442 = veorq_s8(v441, vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL));
  v443 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL), v442);
  v444 = vaddq_s64(v439, v435);
  v445 = vsubq_s64(vorrq_s8(v443, v247), vorrq_s8(v443, *&STACK[0x1900]));
  v446 = vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL);
  v447 = veorq_s8(vaddq_s64(v445, *&STACK[0x1900]), *&STACK[0x18F0]);
  v448 = vshlq_u64(veorq_s8(v444, v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1840], 3uLL), v263)));
  v449 = veorq_s8(v447, v446);
  v450 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL), v449), v235);
  v451 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL)));
  v453.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v451, v451), *&STACK[0x18B0]), v451), *&STACK[0x1890]), *&STACK[0x18A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), v263))), v448);
  v351.i64[1] = vqtbl4q_s8(v453, v252).u64[0];
  v453.val[0] = vrev64q_s8(v351);
  *(a1 + v10 - 15) = veorq_s8(vextq_s8(v453.val[0], v453.val[0], 8uLL), *(v8 + v10 - 15));
  return (*(v314 + 8 * (((LODWORD(STACK[0x15B0]) == v5) * v9) ^ v4)))();
}