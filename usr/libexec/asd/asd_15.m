uint64_t sub_100278B2C()
{
  STACK[0x650] = v1 - 1072;
  v4 = STACK[0x3B0];
  return (*(v3 + 8 * ((109 * ((((v0 - 1715) ^ ((v2 ^ 0x63BFEBD7) + ((v0 ^ 0xC77FCD15) & (2 * v2)) == 1673522135)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100278B90()
{
  STACK[0x660] += (((v1 ^ 0x82B) - 4618) | 0x1A50u) ^ 0x12E6;
  STACK[0x6B8] = v0 + 0x72243A13D9F60F27;
  STACK[0x6A0] = &STACK[0xB70];
  STACK[0x690] = &STACK[0x6C0];
  STACK[0x698] = v0;
  return (*(v2 + 8 * (v1 ^ 0x82B ^ (114 * (v0 != 0)))))();
}

uint64_t sub_100278CC0@<X0>(int a1@<W5>, __int16 a2@<W8>)
{
  LODWORD(STACK[0x348]) = 0;
  v4 = -1802333311 * (a2 & 0xFFF0u);
  STACK[0x6B0] = 0;
  v5 = (-127 * (a2 & 0xF0)) & 0xF0;
  STACK[0x258] = v5;
  v6 = *(&off_1006B4E30 + (a1 ^ 0x1846)) - 4;
  STACK[0x3A8] = v6;
  LOBYTE(v5) = *(v6 + (v5 ^ 0x6F));
  STACK[0x250] = BYTE1(v4);
  v7 = -3 * v5 - 22;
  LODWORD(STACK[0x3B0]) = 20;
  LOBYTE(v5) = v7 ^ (58 * v5 + 20);
  v8 = *(&off_1006B4E30 + (a1 ^ 0x1B52)) - 12;
  LODWORD(v6) = v8[BYTE1(v4) ^ 0x1BLL];
  v9 = v7 ^ (4 * v5);
  LOBYTE(v5) = v7 ^ ~(4 * v5);
  STACK[0x638] = v3;
  v10 = BYTE3(v4);
  STACK[0x268] = v4;
  STACK[0x278] = v10;
  LODWORD(STACK[0x488]) = v2;
  v11 = *(&off_1006B4E30 + (a1 ^ 0x18B6)) - 12;
  STACK[0x398] = v11;
  v12 = v11[BYTE2(v4) ^ 0xD4];
  LODWORD(STACK[0x264]) = WORD1(v4);
  LODWORD(v6) = (((((v12 ^ ((BYTE2(v4) ^ 0x1F) - (BYTE2(v4) ^ 0x6C))) << 16) ^ 0x7C532642) & (v5 | 0xFFFFFF00) | v9 & 0xBD) ^ 0xE59A6335) & ((v6 << 8) ^ 0xFFFF67FF) | (v6 << 8) & 0xBA00;
  v13 = *(&off_1006B4E30 + a1 - 6421) - 4;
  v14 = v13[LOBYTE(STACK[0x6C4]) ^ 0x89];
  STACK[0x3A0] = v8;
  v15 = LOBYTE(STACK[0x6C2]);
  LODWORD(v6) = (v6 ^ 0x66002200) & ((v8[v10 ^ 0x78] << 24) ^ 0xDC12E03) ^ v6 & 0x8F3ED1FC;
  v16 = ((v14 >> 1) & 0xE ^ ((v14 >> 5) | (8 * v14))) << 8;
  v17 = *(&off_1006B4E30 + a1 - 5576);
  STACK[0x280] = v17;
  v18 = *(v17 + (v15 ^ 0xE3));
  v19 = LOBYTE(STACK[0x6C9]);
  v20 = v15 ^ 0x65 ^ v18;
  v21 = *(&off_1006B4E30 + (a1 ^ 0x1DF5)) - 8;
  STACK[0x288] = v21;
  v22 = *(&off_1006B4E30 + a1 - 5654);
  LODWORD(v15) = *(v22 + (LOBYTE(STACK[0x6CC]) ^ 0x10)) - 118;
  v23 = (((*(v21 + (v19 ^ 0xB4)) ^ v19) << 16) ^ 0x7F72DF15) & ((v20 << 24) ^ 0x4AFFDFBF) ^ (((v20 >> 7) << 31) | 0x500AA);
  LODWORD(v19) = ((((4 * v15) & 0xB4 ^ v15) << 24) ^ 0x90490BC0) & (v16 ^ 0xFFED12D8) | v16 & 0xF400;
  v24 = *(*(&off_1006B4E30 + a1 - 5793) + (LOBYTE(STACK[0x6C1]) ^ 0x25) - 12) ^ LOBYTE(STACK[0x6C1]);
  v25 = *(&off_1006B4E30 + (a1 ^ 0x19DD));
  v26 = STACK[0x690];
  LODWORD(v19) = (((*(STACK[0x690] + 13) ^ 0xF9) + *(v25 + (*(STACK[0x690] + 13) ^ 0x24)) - 94) ^ 0xFFFFFF3F) & (v19 ^ 0x574060D);
  LODWORD(v15) = ((*(STACK[0x690] + 13) ^ 0xF9) + *(v25 + (*(STACK[0x690] + 13) ^ 0x24)) - 94) & 0x32;
  v27 = *(STACK[0x690] + 8);
  STACK[0x270] = v25;
  LODWORD(v21) = *(v25 + (v27 ^ 0x24)) + (v27 ^ 0xF9);
  v28 = v26[6] ^ 0x10;
  STACK[0x248] = v22;
  LODWORD(v21) = ((((4 * (*(v22 + v28) - 118)) & 0xB4 ^ (*(v22 + v28) - 118)) << 24) ^ 0xF5AF64DE) & ((v21 - 94) ^ 0xFFEFEF1E) ^ ((v21 - 94) & 0x21 | 0x22408B00);
  LODWORD(v28) = v13[v26[7] ^ 0x89];
  v29 = ((((v13[v26[7] ^ 0x89] >> 1) & 0xE ^ ((v28 >> 5) | (8 * v28))) << 8) ^ 0xFA37CC9C) & ((v24 << 24) ^ 0xAC7FFF9E) | (v24 << 24) & 0x5000000;
  LODWORD(v13) = v13[v26[5] ^ 0x89];
  v30 = *(&off_1006B4E30 + (a1 ^ 0x1976)) - 8;
  LODWORD(v28) = v30[v26[15] ^ 1] << 16;
  LODWORD(v30) = v30[v26[3] ^ 1];
  v31 = *(&off_1006B4E30 + a1 - 6042);
  LODWORD(STACK[0x640]) = a1;
  LODWORD(v21) = ((v30 << 16) ^ 0x2B41E9B1) & (v21 ^ 0x8101263) ^ v21 & 0xD4C0044E;
  LODWORD(v30) = ((((v13 >> 1) & 0xE ^ ((v13 >> 5) | (8 * v13))) << 8) ^ 0x147BF56B) & (v23 ^ 0xC2BA20C4);
  v32 = v26[10] ^ 0xDBLL;
  LODWORD(v13) = v28 & 0xA20000 ^ 0x3F66C5E9 ^ (v29 ^ 0xC06AF101) & (v28 ^ 0xFF09FFBF);
  v33 = *(v31 + (v26[11] ^ 0x95) - 12);
  v34 = v33 & 0x8B ^ 0xAABBCFB ^ (v33 ^ 0xFFFFFF73) & v13;
  v35 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5669) - 8;
  STACK[0x230] = v35;
  v36 = (v35[v32] ^ 0xFFFFFF1A) & (v23 & 0xEB841010 ^ 0x515E80AB ^ v30) ^ v35[v32] & 0x2F;
  v37 = v26[14] ^ 0x5ELL;
  v38 = *v26;
  v39 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5972);
  STACK[0x238] = v39;
  LODWORD(v38) = *(v39 + (v38 ^ 0x84)) ^ v38;
  LODWORD(v19) = (v15 | v19) ^ 0x16946B18;
  v40 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5384);
  STACK[0x240] = v40;
  LODWORD(v19) = (*(v40 + v37) << 16) & 0x560000 ^ ((*(v40 + v37) << 16) ^ 0xFFACFFFF) & v19 ^ 0x9F4DF63B;
  LODWORD(v40) = v21 & 0x83590590 ^ v34 ^ ((v38 << 8) ^ 0x7CA6566F) & (v21 ^ 0xC2001290);
  LODWORD(v21) = v6 ^ 0xE273927E;
  LODWORD(STACK[0x648]) = v6 ^ 0xE3D9B866;
  LODWORD(v37) = v6 ^ v40 ^ 0x40F3A05A;
  LODWORD(v6) = v6 ^ 0xE273927E ^ v19;
  LODWORD(v19) = v6 ^ v34;
  v41 = v36 ^ v6 ^ v34;
  LOBYTE(v40) = v41 ^ 0x7C;
  v42 = v37 ^ v41 ^ 0x4523F87C;
  LODWORD(v21) = v42 ^ v21;
  LODWORD(v19) = v42 ^ v19;
  v43 = v41 ^ 0x5531B627;
  v44 = *(&off_1006B4E30 + (LODWORD(STACK[0x640]) ^ 0x1900)) - 12;
  LODWORD(v37) = v21 ^ 0xB2384F83;
  v45 = *(&off_1006B4E30 + (LODWORD(STACK[0x640]) ^ 0x1943)) - 8;
  BYTE1(v30) = BYTE1(v19) ^ 0x8F;
  v46 = ((v41 ^ 0x5531B627u) >> 16);
  LODWORD(v21) = *&v44[4 * (v46 ^ 0x37)] ^ __ROR4__(*&v45[4 * (BYTE1(v21) ^ 0x4C)] ^ 0xFF0DC75C, 8) ^ __ROR4__(*&v44[4 * (BYTE3(v6) ^ 0xFE)] ^ ((BYTE3(v6) ^ 0xC9) - (BYTE3(v6) ^ 0xACF076F3)) ^ 0xF68431B6, 24) ^ (v46 - (v46 ^ 0xACF0763A)) ^ __ROR4__(*&v44[4 * (v19 ^ 0x61)] ^ ((v19 ^ 0x56) - (v19 ^ 0xACF0766C)) ^ 0x108B1712, 16);
  v47 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5386);
  v48 = *&v45[4 * (((v19 ^ 0x39378FF0) >> 16) ^ 0x54)] ^ __ROR4__(*(v47 + 4 * BYTE3(v37)) ^ 0x48F39890, 24);
  LODWORD(v19) = *&v44[4 * (BYTE2(v6) ^ 0x4E)] ^ __ROR4__(*&v45[4 * (BYTE3(v19) ^ 0xCC)] ^ 0x19F8DB5, 24) ^ ((BYTE2(v6) ^ 0x79) - (BYTE2(v6) ^ 0xACF07643)) ^ __ROR4__(*(v47 + 4 * BYTE1(v43)) ^ 0x64961CFC, 8) ^ __ROR4__(*(v47 + 4 * v37) ^ 0xE5EB171E, 16);
  v49 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 6359) - 4;
  HIDWORD(v50) = *&v49[4 * (BYTE1(v6) ^ 0x98)];
  LODWORD(v50) = HIDWORD(v50);
  LODWORD(v40) = v48 ^ __ROR4__((v43 - (v43 ^ 0xACF0763A)) ^ 0x5460E397 ^ *&v44[4 * (v40 ^ 0x6C)], 16) ^ __ROR4__((v50 >> 2) ^ 0xD628B8BC ^ ((v50 >> 2) >> 1) & 0x159C4245, 8);
  v51 = *&v44[4 * (BYTE2(v37) ^ 0x37)] ^ (BYTE2(v37) - (BYTE2(v37) ^ 0xACF0763A)) ^ __ROR4__(*(v47 + 4 * HIBYTE(v43)) ^ 0x1EF141DB, 24) ^ __ROR4__(*&v45[4 * (BYTE1(v30) ^ 0xBB)] ^ 0x46844180, 8) ^ __ROR4__(((v6 ^ 0xE5) - (v6 ^ 0xACF076DF)) ^ 0xA861C1A1 ^ *&v44[4 * (v6 ^ 0xD2)], 16);
  v52 = BYTE2(v51) ^ 0xCF;
  HIDWORD(v50) = *&v49[4 * (BYTE1(v40) ^ 0x25)];
  LODWORD(v50) = HIDWORD(v50);
  v53 = (v50 >> 2) ^ 0xD5AF5FE7 ^ ((v50 >> 2) >> 1) & 0x159C4245;
  v54 = *&v45[4 * (BYTE2(v21) ^ 0xA5)] ^ __ROR4__(*(v47 + 4 * ((v19 ^ 0xDF267E61) >> 24)) ^ 0x5A6F8FD8, 24) ^ __ROR4__(*&v45[4 * (BYTE1(v51) ^ 0x7D)] ^ 0x52835026, 8) ^ __ROR4__(*&v45[4 * (v40 ^ 0x9E)] ^ 0xF9917299, 16);
  HIDWORD(v50) = *&v49[4 * ((v21 ^ 0x35C6) >> 8)];
  LODWORD(v50) = HIDWORD(v50);
  v55 = (v50 >> 2) ^ 0x7BA7588 ^ ((v50 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v50) = *&v49[4 * (-((v19 ^ 0xDF267E61) >> 16) ^ (67 - (((v19 ^ 0xDF267E61) >> 16) ^ 0x43)) ^ (((v19 ^ 0xDF267E61) >> 16) - ((v19 >> 15) & 0x22) - 1217536495) ^ 0xB76DDE11) + 268];
  LODWORD(v50) = HIDWORD(v50);
  v56 = (v50 >> 2) ^ __ROR4__(*&v45[4 * (BYTE3(v40) ^ 0xC8)] ^ 0xE89FFD95, 24) ^ ((v50 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(*(v47 + 4 * (v51 ^ 0xABu)) ^ 0x68569CDE, 16);
  HIDWORD(v50) = *&v49[4 * (HIBYTE(v51) ^ 0xE7)];
  LODWORD(v50) = HIDWORD(v50);
  v57 = v50 >> 2;
  v58 = v56 ^ __ROR4__(v55, 8);
  HIDWORD(v50) = *&v49[4 * v52];
  LODWORD(v50) = HIDWORD(v50);
  v59 = (v50 >> 2) ^ __ROR4__(*(v47 + 4 * ((v21 ^ 0x39A635C6) >> 24)) ^ 0x49B4B6EF, 24) ^ ((v50 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(((v19 ^ 0x61) - (v19 ^ 0xACF0765B)) ^ 0xC0C5AE93 ^ *&v44[4 * (v19 ^ 0x56)], 16) ^ __ROR4__(v53, 8) ^ 0x9BDBFCB4;
  v60 = *(v47 + 4 * (BYTE2(v40) ^ 0x20u)) ^ __ROR4__(*&v45[4 * (BYTE1(v19) ^ 0x7D)] ^ 0xBE17EBA7, 8) ^ __ROR4__(v57 ^ 0x793980D7 ^ (v57 >> 1) & 0x159C4245, 24) ^ __ROR4__(*(v47 + 4 * (v21 ^ 0xC6u)) ^ 0x909F07B5, 16);
  v61 = v58 ^ 0xEA4EC898;
  HIDWORD(v50) = *&v49[4 * (BYTE1(v58) ^ 0x8B)];
  LODWORD(v50) = HIDWORD(v50);
  LODWORD(v40) = v50 >> 2;
  v62 = v40 ^ 0x49AC7687;
  LODWORD(v40) = v40 >> 1;
  v63 = v40 & 0x159C4245 ^ 0x14000004;
  if ((v62 & 1 & v40) != 0)
  {
    v64 = -(v62 & 1);
  }

  else
  {
    v64 = v62 & 1;
  }

  HIDWORD(v65) = *&v49[4 * (v54 ^ 0xCA)];
  LODWORD(v65) = HIDWORD(v65);
  v66 = *&v44[4 * (((v60 ^ 0xE36B128E) >> 16) ^ 0x37)] ^ __ROR4__((HIBYTE(v59) - (HIBYTE(v59) ^ 0xACF0763A)) ^ 0xFC84F3C2 ^ *&v44[4 * (HIBYTE(v59) ^ 0x37)], 24) ^ __ROR4__((v65 >> 2) ^ 0x859E9B82 ^ ((v65 >> 2) >> 1) & 0x159C4245, 16) ^ (((v60 ^ 0xE36B128E) >> 16) - (((v60 ^ 0xE36B128E) >> 16) ^ 0xACF0763A)) ^ __ROR4__(v62 & 0xFFFFFFFE ^ 0xA373D97E ^ (v64 + v63), 8);
  HIDWORD(v65) = *&v49[4 * BYTE2(v59)];
  LODWORD(v65) = HIDWORD(v65);
  v67 = (v65 >> 2) ^ 0x2C04384C ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v45[4 * (HIBYTE(v54) ^ 4)] ^ 0xA0F1D11;
  LODWORD(v65) = HIDWORD(v65);
  v68 = (-v67 ^ ((v65 >> 24) - (v67 ^ (v65 >> 24))) ^ 0x1086CD3F ^ (v67 - ((2 * v67) & 0x210D9A7E) + 277269823)) + (v65 >> 24);
  HIDWORD(v65) = *(v47 + 4 * (v58 ^ 0x98u)) ^ 0x8CC11C1A;
  LODWORD(v65) = HIDWORD(v65);
  v69 = (v65 >> 16) ^ __ROR4__(*&v45[4 * (BYTE1(v60) ^ 0x11)] ^ 0xE2438C8F, 8) ^ v68;
  HIDWORD(v65) = *&v49[4 * (v60 ^ 0xCD)];
  LODWORD(v65) = HIDWORD(v65);
  v70 = *(v47 + 4 * ((v54 ^ 0x749ADCA) >> 16)) ^ __ROR4__((HIBYTE(v61) - (HIBYTE(v61) ^ 0xACF0763A)) ^ 0x544576EC ^ *&v44[4 * (HIBYTE(v61) ^ 0x37)], 24) ^ __ROR4__((BYTE1(v59) - (BYTE1(v59) ^ 0xACF0763A)) ^ 0x53C7618A ^ *&v44[4 * (BYTE1(v59) ^ 0x37)], 8) ^ __ROR4__((v65 >> 2) ^ 0xCD745EBF ^ ((v65 >> 2) >> 1) & 0x159C4245, 16);
  v71 = *(v47 + 4 * BYTE2(v61)) ^ __ROR4__(*&v45[4 * (HIBYTE(v60) ^ 0xE0)] ^ 0x9AFE64AA, 24) ^ __ROR4__(*(v47 + 4 * (BYTE1(v54) ^ 0xADu)) ^ 0x787A048F, 8) ^ __ROR4__(*(v47 + 4 * v59) ^ 0xCE203274, 16);
  HIDWORD(v65) = *&v49[4 * ((v66 ^ 0xF19D058) >> 24)];
  LODWORD(v65) = HIDWORD(v65);
  v72 = (v65 >> 2) ^ 0x4B284D93 ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * (v69 ^ 0xBA)];
  LODWORD(v65) = HIDWORD(v65);
  v73 = (v65 >> 2) ^ 0x43577025 ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * (HIBYTE(v69) ^ 0xEA)];
  LODWORD(v65) = HIDWORD(v65);
  v74 = *&v44[4 * (BYTE2(v71) ^ 0xAD)] ^ __ROR4__(*&v45[4 * (BYTE1(v70) ^ 0xBF)] ^ 0x30398CA5, 8) ^ __ROR4__(v72, 24) ^ ((BYTE2(v71) ^ 0x9A) - (BYTE2(v71) ^ 0xACF076A0)) ^ __ROR4__(v73, 16);
  v75 = *&v44[4 * (((v66 ^ 0xF19D058) >> 16) ^ 0x37)] ^ (((v66 ^ 0xF19D058) >> 16) - (((v66 ^ 0xF19D058) >> 16) ^ 0xACF0763A)) ^ __ROR4__(*&v45[4 * (BYTE1(v71) ^ 0xFD)] ^ 0x6DCB4EB4, 8) ^ __ROR4__((v65 >> 2) ^ 0xB6690245 ^ ((v65 >> 2) >> 1) & 0x159C4245, 24) ^ __ROR4__(((v70 ^ 0x74) - (v70 ^ 0xACF0764E)) ^ 0xB0ED73FE ^ *&v44[4 * (v70 ^ 0x43)], 16);
  HIDWORD(v65) = *&v49[4 * (BYTE1(v66) ^ 0x93)];
  LODWORD(v65) = HIDWORD(v65);
  v76 = (v65 >> 2) ^ 0xC592B406 ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * (BYTE2(v69) ^ 0xAB)];
  LODWORD(v65) = HIDWORD(v65);
  v77 = (v65 >> 2) ^ __ROR4__(*&v45[4 * (HIBYTE(v70) ^ 0xD7)] ^ 0xACD9331A, 24) ^ ((v65 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(((v71 ^ 0xDC) - (v71 ^ 0xACF076E6)) ^ 0xF1AA7230 ^ *&v44[4 * (v71 ^ 0xEB)], 16) ^ __ROR4__(v76, 8);
  v78 = *&v45[4 * (BYTE2(v70) ^ 0x13)] ^ __ROR4__(((HIBYTE(v71) ^ 0xB4) - (HIBYTE(v71) ^ 0xACF0768E)) ^ 0xEC20EEA6 ^ *&v44[4 * (HIBYTE(v71) ^ 0x83)], 24) ^ __ROR4__(*&v45[4 * (BYTE1(v69) ^ 0x9A)] ^ 0xBE6FD842, 8) ^ __ROR4__(((v66 ^ 0x58) - (v66 ^ 0xACF07662)) ^ 0xA943A0F0 ^ *&v44[4 * (v66 ^ 0x6F)], 16);
  v79 = v74 ^ 0xEE;
  HIDWORD(v65) = *&v49[4 * (BYTE1(v77) ^ 0x8B)];
  LODWORD(v65) = HIDWORD(v65);
  v80 = (v65 >> 2) ^ 0x134686D1 ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * (BYTE2(v78) ^ 0x51)];
  LODWORD(v65) = HIDWORD(v65);
  v81 = (v65 >> 2) ^ __ROR4__(*(v47 + 4 * ((v74 ^ 0xEBAEE3EE) >> 24)) ^ 0x35AA21D0, 24) ^ ((v65 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(v80, 8) ^ __ROR4__(__ROR4__(__ROR4__(*&v45[4 * (v75 ^ 0xB)], 7) ^ 0xF5CFA051, 25) ^ 0xDA2BCC12, 16);
  HIDWORD(v65) = *&v49[4 * (BYTE2(v74) ^ 0xED)];
  LODWORD(v65) = HIDWORD(v65);
  v82 = (v65 >> 2) ^ __ROR4__(*&v45[4 * (HIBYTE(v75) ^ 8)] ^ 0x69BEE6F, 24) ^ ((v65 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(*&v45[4 * (BYTE1(v78) ^ 0x45)] ^ 0x43B47A6A, 8) ^ __ROR4__(*(v47 + 4 * (v77 ^ 0x79u)) ^ 0x8966DBA4, 16);
  HIDWORD(v65) = *&v49[4 * (BYTE2(v75) ^ 0xC5)];
  LODWORD(v65) = HIDWORD(v65);
  v83 = (v65 >> 2) ^ __ROR4__(((HIBYTE(v77) ^ 0x2A) - (HIBYTE(v77) ^ 0xACF07610)) ^ 0xCF359A6D ^ *&v44[4 * (HIBYTE(v77) ^ 0x1D)], 24) ^ ((v65 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(*&v45[4 * (BYTE1(v74) ^ 0xE0)] ^ 0x3F77BD76, 8) ^ __ROR4__(*&v45[4 * (v78 ^ 0x98)] ^ 0x5B2F4A8D, 16);
  v84 = *&v45[4 * (BYTE2(v77) ^ 0x9A)] ^ __ROR4__(((HIBYTE(v78) ^ 0x47) - (HIBYTE(v78) ^ 0xACF0767D)) ^ 0x3EBBBDA0 ^ *&v44[4 * (HIBYTE(v78) ^ 0x70)], 24) ^ __ROR4__(*(v47 + 4 * (BYTE1(v75) ^ 0x79u)) ^ 0x586C718C, 8) ^ __ROR4__(*(v47 + 4 * v79) ^ 0xC82CC9D, 16);
  BYTE2(v73) = BYTE2(v83) ^ 0x2D;
  v85 = *&v45[4 * (BYTE1(v83) ^ 0x7A)] ^ 0xE9D8A56A;
  HIDWORD(v65) = *&v49[4 * (v82 ^ 0x10)];
  LODWORD(v65) = HIDWORD(v65);
  v86 = (v65 >> 2) ^ 0x541DA291 ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * ((v81 ^ 0x3709D635u) >> 16)];
  LODWORD(v65) = HIDWORD(v65);
  v87 = (v65 >> 2) ^ __ROR4__((((v82 ^ 0x1141210u) >> 24) - (((v82 ^ 0x1141210u) >> 24) ^ 0xACF0763A)) ^ 0x449C345F ^ *&v44[4 * (((v82 ^ 0x1141210u) >> 24) ^ 0x37)], 24) ^ ((v65 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(*&v45[4 * (BYTE1(v84) ^ 0xCC)] ^ 0xCEB286A2, 8) ^ __ROR4__(*(v47 + 4 * (v83 ^ 3u)) ^ 0x90301201, 16);
  v88 = *&v45[4 * (BYTE2(v82) ^ 0x17)] ^ __ROR4__(*(v47 + 4 * ((v83 ^ 0x992D7903) >> 24)) ^ 0xB4130B0F, 24) ^ __ROR4__((((v81 ^ 0xD635) >> 8) - (((v81 ^ 0xD635) >> 8) ^ 0xACF0763A)) ^ 0xC9D832B0 ^ *&v44[4 * (((v81 ^ 0xD635) >> 8) ^ 0x37)], 8) ^ __ROR4__(*(v47 + 4 * (v84 ^ 0x9Eu)) ^ 0x9DB0AA6F, 16);
  HIDWORD(v65) = *&v49[4 * (BYTE1(v82) ^ 0x51)];
  LODWORD(v65) = HIDWORD(v65);
  v89 = *&v44[4 * (((v84 ^ 0xD1ECF9E) >> 16) ^ 0x37)] ^ __ROR4__(*(v47 + 4 * ((v81 ^ 0x3709D635u) >> 24)) ^ 0x61DB9190, 24) ^ __ROR4__(v85, 8) ^ (((v84 ^ 0xD1ECF9E) >> 16) - (((v84 ^ 0xD1ECF9E) >> 16) ^ 0xACF0763A)) ^ __ROR4__(v86, 16) ^ 0x89B36668;
  v90 = *&v44[4 * (BYTE2(v73) ^ 0x37)] ^ (BYTE2(v73) - (BYTE2(v73) ^ 0xACF0763A)) ^ __ROR4__(*(v47 + 4 * (HIBYTE(v84) ^ 0xDC)) ^ 0xD8609212, 24) ^ __ROR4__(*&v45[4 * (v81 ^ 0x36)] ^ 0x528581C7, 16) ^ __ROR4__((v65 >> 2) ^ 0x1082DB49 ^ ((v65 >> 2) >> 1) & 0x159C4245, 8);
  v91 = v88 ^ 0xC0DDF9F3;
  v92 = *&v45[4 * (BYTE2(v90) ^ 0xCD)] ^ __ROR4__((HIBYTE(v89) - (HIBYTE(v89) ^ 0xACF0763A)) ^ 0x1A637297 ^ *&v44[4 * (HIBYTE(v89) ^ 0x37)], 24) ^ __ROR4__(*&v44[4 * (((v88 ^ 0xF9F3) >> 8) ^ 0xB4)] ^ ((((v88 ^ 0xF9F3) >> 8) ^ 0x83) - (((v88 ^ 0xF9F3) >> 8) ^ 0xACF076B9)) ^ 0x4959F9EB, 8) ^ __ROR4__(((v87 ^ 0xAF) - (v87 ^ 0xACF07695)) ^ 0xD5A0480 ^ *&v44[4 * (v87 ^ 0x98)], 16);
  v93 = *&v44[4 * (BYTE2(v89) ^ 0x37)] ^ (BYTE2(v89) - (BYTE2(v89) ^ 0xACF0763A)) ^ __ROR4__(*&v45[4 * (HIBYTE(v87) ^ 0x6B)] ^ 0xE6121F72, 24) ^ __ROR4__(*&v45[4 * (BYTE1(v90) ^ 0x33)] ^ 0x315BF66F, 8) ^ __ROR4__(((v88 ^ 0xF3) - (v88 ^ 0xACF076C9)) ^ 0x79BBC5F6 ^ *&v44[4 * (v88 ^ 0xC4)], 16);
  HIDWORD(v65) = *&v49[4 * BYTE1(v89)];
  LODWORD(v65) = HIDWORD(v65);
  v94 = (v65 >> 2) ^ 0x33F6956F ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * (BYTE2(v87) ^ 0x5A)];
  LODWORD(v65) = HIDWORD(v65);
  v95 = (v65 >> 2) ^ __ROR4__(*(v47 + 4 * HIBYTE(v91)) ^ 0xE69E681B, 24) ^ ((v65 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(((v90 ^ 0x4C) - (v90 ^ 0xACF07676)) ^ 0x36B05720 ^ *&v44[4 * (v90 ^ 0x7B)], 16) ^ __ROR4__(v94, 8);
  HIDWORD(v65) = *&v49[4 * (HIBYTE(v90) ^ 0xA4)];
  LODWORD(v65) = HIDWORD(v65);
  v96 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5386);
  v97 = *(v47 + 4 * BYTE2(v91)) ^ __ROR4__(*(v47 + 4 * (BYTE1(v87) ^ 0xD9u)) ^ 0xFE3AB3FA, 8) ^ __ROR4__((v65 >> 2) ^ 0x4137BA40 ^ ((v65 >> 2) >> 1) & 0x159C4245, 24) ^ __ROR4__(*(v47 + 4 * v89) ^ 0xB2AEE245, 16);
  v98 = *&v45[4 * (BYTE2(v97) ^ 0xE1)] ^ __ROR4__((((v92 ^ 0x8D659800) >> 24) - (((v92 ^ 0x8D659800) >> 24) ^ 0xACF0763A)) ^ 0x4D87D47E ^ *&v44[4 * (((v92 ^ 0x8D659800) >> 24) ^ 0x37)], 24) ^ __ROR4__(*&v45[4 * (BYTE1(v95) ^ 0x1F)] ^ 0xED154333, 8) ^ __ROR4__(((v93 ^ 0x58) - (v93 ^ 0xACF07662)) ^ 0xE18F58C1 ^ *&v44[4 * (v93 ^ 0x6F)], 16);
  HIDWORD(v65) = *&v49[4 * (v95 ^ 0xF7)];
  LODWORD(v65) = HIDWORD(v65);
  v99 = *&v44[4 * (((v92 ^ 0x8D659800) >> 16) ^ 0x37)] ^ (((v92 ^ 0x8D659800) >> 16) - (((v92 ^ 0x8D659800) >> 16) ^ 0xACF0763A)) ^ __ROR4__(*&v45[4 * (HIBYTE(v93) ^ 0xE2)] ^ 0xAAF071DC, 24) ^ __ROR4__(*&v45[4 * (BYTE1(v97) ^ 0x8D)] ^ 0x56A739B1, 8) ^ __ROR4__((v65 >> 2) ^ 0x68E931AC ^ ((v65 >> 2) >> 1) & 0x159C4245, 16);
  HIDWORD(v65) = *&v49[4 * ((v95 ^ 0x719F1CF7u) >> 24)];
  LODWORD(v65) = HIDWORD(v65);
  v100 = *&v45[4 * (HIBYTE(v97) ^ 0xA)] ^ 0x51C4C377;
  v101 = *(v96 + 4 * (BYTE2(v93) ^ 0x72u)) ^ __ROR4__(*&v45[4 * (BYTE1(v92) ^ 0x9B)] ^ 0x17812864, 8) ^ __ROR4__((v65 >> 2) ^ 0x9C55ADBC ^ ((v65 >> 2) >> 1) & 0x159C4245, 24) ^ __ROR4__(*(v96 + 4 * (v97 ^ 0x30u)) ^ 0xA692573C, 16);
  HIDWORD(v65) = *&v49[4 * v92];
  LODWORD(v65) = HIDWORD(v65);
  v102 = *(v96 + 4 * (BYTE2(v95) ^ 0xB2u)) ^ __ROR4__(v100, 24) ^ __ROR4__(*(v96 + 4 * (BYTE1(v93) ^ 0x3Eu)) ^ 0xC013955, 8) ^ __ROR4__((v65 >> 2) ^ 0xA4EE2905 ^ ((v65 >> 2) >> 1) & 0x159C4245, 16);
  HIDWORD(v65) = *&v49[4 * ((v98 ^ 0xE468927B) >> 24)];
  LODWORD(v65) = HIDWORD(v65);
  v103 = (v65 >> 2) ^ 0xAF88955B ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * ((v101 ^ 0x4E5E) >> 8)];
  LODWORD(v65) = HIDWORD(v65);
  v104 = *&v44[4 * (BYTE2(v102) ^ 0x2A)] ^ __ROR4__(v103, 24) ^ __ROR4__(((v99 ^ 0x6F) - (v99 ^ 0xACF07655)) ^ 0x53779F63 ^ *&v44[4 * (v99 ^ 0x58)], 16) ^ __ROR4__((v65 >> 2) ^ 0xD2E478E9 ^ ((v65 >> 2) >> 1) & 0x159C4245, 8) ^ ((BYTE2(v102) ^ 0x1D) - (BYTE2(v102) ^ 0xACF07627));
  HIDWORD(v65) = *&v49[4 * (HIBYTE(v99) ^ 0xD5)];
  LODWORD(v65) = HIDWORD(v65);
  v105 = (v65 >> 2) ^ 0x4F715E4E ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * ((v98 ^ 0xE468927B) >> 16)];
  LODWORD(v65) = HIDWORD(v65);
  v106 = ((v65 >> 2) >> 1) & 0x159C4245 ^ (v65 >> 2) ^ __ROR4__(v105, 24) ^ __ROR4__(*&v45[4 * (v101 ^ 0x5D)] ^ 0x5A768AC0, 16) ^ __ROR4__(*&v44[4 * (BYTE1(v102) ^ 0xD3)] ^ ((BYTE1(v102) ^ 0xE4) - (BYTE1(v102) ^ 0xACF076DE)) ^ 0xD4F69B6D, 8);
  HIDWORD(v65) = *&v49[4 * ((v101 ^ 0x28394E5Eu) >> 24)];
  LODWORD(v65) = HIDWORD(v65);
  v107 = (v65 >> 2) ^ 0x1EB51469 ^ ((v65 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v65) = *&v49[4 * ((v98 ^ 0x927B) >> 8)];
  LODWORD(v65) = HIDWORD(v65);
  v108 = *&v45[4 * (BYTE2(v99) ^ 0x6C)] ^ __ROR4__(v107, 24);
  STACK[0x2C8] = v44;
  v109 = v108 ^ __ROR4__(((v102 ^ 0x71) - (v102 ^ 0xACF0764B)) ^ 0xFC54E581 ^ *&v44[4 * (v102 ^ 0x46)], 16) ^ __ROR4__((v65 >> 2) ^ 0xCFE9FE8A ^ ((v65 >> 2) >> 1) & 0x159C4245, 8);
  v110 = *&v45[4 * (HIBYTE(v102) ^ 0x41)] ^ 0xE1045DA8;
  STACK[0x2B0] = v96;
  v111 = *(v96 + 4 * ((v101 ^ 0x28394E5Eu) >> 16)) ^ __ROR4__(v110, 24);
  STACK[0x2B8] = v49;
  HIDWORD(v65) = *&v49[4 * (BYTE1(v99) ^ 0xE7)];
  LODWORD(v65) = HIDWORD(v65);
  STACK[0x2C0] = v45;
  v112 = v111 ^ __ROR4__(*&v45[4 * (v98 ^ 0x78)] ^ 0x5C575EB5, 16) ^ __ROR4__((v65 >> 2) ^ 0x9A790A86 ^ ((v65 >> 2) >> 1) & 0x159C4245, 8);
  v113 = v104 ^ 0x16;
  v114 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5778) - 4;
  v115 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5427);
  LOWORD(v111) = *(v115 + 2 * (BYTE2(v112) ^ 0xD1u));
  v116 = (((16 * v111) ^ 0xC3C0) - 24224) ^ v111;
  v117 = v106 ^ 0x27975A9D;
  v118 = *(&off_1006B4E30 + (LODWORD(STACK[0x640]) ^ 0x1D64)) - 8;
  v119 = *&v114[2 * (v106 ^ 0x6A)];
  v120 = ((v119 >> 9) | (v119 << 7)) ^ 0x3E58;
  v121 = (((v106 ^ 0x27975AC2 ^ (v120 >> 7)) << 24) ^ 0x34FCC6C2) & ((((v120 >> 7) | (v120 << 9)) >> 8) ^ 0xFFFEE757) | (((v120 >> 7) | (v120 << 9)) >> 8) & 0x3D;
  v122 = *(&off_1006B4E30 + (LODWORD(STACK[0x640]) ^ 0x1B45)) - 8;
  v123 = *&v122[2 * ((v106 ^ 0x27975A9Du) >> 24)] ^ 0xF1A8;
  v124 = ((*&v118[2 * (BYTE1(v109) ^ 1)] >> 2) & 0x2B3C ^ *&v118[2 * (BYTE1(v109) ^ 1)] | ((((v104 ^ 0x63435716) >> 24) ^ 0x67AA ^ *&v114[2 * (((v104 ^ 0x63435716) >> 24) ^ 0x3A)]) << 16)) ^ (v116 << 8) ^ 0xBA01A255 ^ v121;
  LOWORD(v106) = *&v114[2 * (((v104 ^ 0x63435716) >> 16) ^ 0xF7)] ^ ((v104 ^ 0x63435716) >> 16);
  LOWORD(v71) = *(v115 + 2 * (BYTE1(v112) ^ 0x83u));
  LOWORD(v101) = (((16 * v71) ^ 0xC3C0) - 24224) ^ v71;
  v125 = *&v122[2 * (HIBYTE(v109) ^ 0x97)] ^ 0x7D2E;
  STACK[0x290] = v122;
  v126 = *&v122[2 * (v109 ^ 0x87)];
  LOWORD(v121) = *&v114[2 * (BYTE2(v117) ^ 0x3A)] ^ BYTE2(v117);
  STACK[0x2A8] = v115;
  LOWORD(v104) = *(v115 + 2 * (BYTE1(v104) ^ 0x7Cu));
  v127 = *&v118[2 * (v112 ^ 0x9A)];
  v128 = *&v118[2 * (HIBYTE(v112) ^ 0x3D)];
  STACK[0x2A0] = v114;
  v129 = *&v118[2 * BYTE1(v117)];
  LOWORD(v109) = *&v114[2 * (BYTE2(v109) ^ 0x44)] ^ BYTE2(v109);
  STACK[0x298] = v118;
  v130 = *&v118[2 * v113];
  v131 = (v109 << 8) ^ ((v128 ^ 0xC12E ^ (v128 >> 2) & 0x2B3C) << 16) ^ (v129 >> 2) & 0x2B3C ^ v129 ^ ((((v130 >> 2) & 0x2B3C ^ v130) & 0xFF00) >> 8) ^ (((v130 >> 2) & 0x2B3C ^ v130 ^ 0x28) << 24) ^ 0xDB393A8C;
  v132 = (v123 << 16) ^ (v106 << 8) ^ v101 ^ ((((v126 ^ 0xFFFFFFFB) << 24) ^ 0xBF4128C5) & ((v126 >> 8) ^ 0xFF6F68D3) | (v126 >> 8) & 0x3A) ^ v124 ^ v131 ^ 0x55D884A0;
  v133 = (v125 << 16) ^ (v121 << 8) ^ ((((16 * v104) ^ 0xC3C0) - 24224) ^ v104) ^ (((((v127 >> 2) & 0x2B3C ^ v127 ^ 0xFFFFFF83) << 24) ^ 0xD15F607A) & ((((v127 >> 2) & 0x2B3C ^ v127) >> 8) ^ 0xFF7F6FEF) | (((v127 >> 2) & 0x2B3C ^ v127) >> 8) & 0x85) ^ 0x3026ABD1 ^ v132;
  v134 = v124 ^ LODWORD(STACK[0x648]);
  v135 = v132 ^ LODWORD(STACK[0x648]);
  v136 = v131 ^ LODWORD(STACK[0x648]);
  v137 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5562);
  LODWORD(STACK[0x5B4]) = BYTE2(v135);
  HIDWORD(v65) = *(v137 + 4 * (BYTE2(v135) ^ 0x19u));
  LODWORD(v65) = HIDWORD(v65);
  v138 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ 0x3C8BBD05;
  LODWORD(STACK[0x5C0]) = BYTE1(v135);
  HIDWORD(v65) = *(v137 + 4 * (BYTE1(v135) ^ 0xC3u));
  LODWORD(v65) = HIDWORD(v65);
  v139 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ 0x74B47509;
  v140 = (HIBYTE(v135) ^ 0xDD) - (HIBYTE(v135) ^ 0xF705A35F);
  LODWORD(STACK[0x5A4]) = v140;
  LODWORD(STACK[0x5A8]) = v135;
  HIDWORD(v65) = *(v137 + 4 * (v135 ^ 0xD2u));
  LODWORD(v65) = HIDWORD(v65);
  LODWORD(STACK[0x5C8]) = v136;
  v141 = *(&off_1006B4E30 + (LODWORD(STACK[0x640]) ^ 0x1804)) - 8;
  v142 = *&v141[4 * (HIBYTE(v135) ^ 0xF6)];
  LODWORD(STACK[0x594]) = v142;
  v143 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ __ROR4__(v138, 16) ^ v136 ^ __ROR4__(v139, 24) ^ __ROR4__(v142 ^ v140 ^ 0x5562BCAB, 8) ^ 0x9F08B7EB;
  v144 = v134 ^ v133;
  LODWORD(STACK[0x608]) = v144;
  v145 = v133 ^ v136;
  LODWORD(STACK[0x610]) = v145;
  v146 = v143 ^ v145;
  v147 = v143;
  LODWORD(STACK[0x618]) = v143;
  LODWORD(STACK[0x628]) = v146 ^ 0x53ACCA6F;
  v148 = v144 ^ 0xF1361191 ^ v146 ^ 0x53ACCA6F;
  v149 = v148 ^ v135;
  LODWORD(STACK[0x5F0]) = v148;
  LODWORD(STACK[0x600]) = v135;
  v150 = *(&off_1006B4E30 + LODWORD(STACK[0x640]) - 5859) - 4;
  HIDWORD(v65) = *(v137 + 4 * (((v148 ^ v135) >> 8) ^ 0xD9u));
  LODWORD(v65) = HIDWORD(v65);
  v151 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ 0xCED543C5;
  v146 ^= 0xE0A3262B;
  HIDWORD(v65) = *(v137 + 4 * ((v148 ^ v135) ^ 0xCAu));
  LODWORD(v65) = HIDWORD(v65);
  v152 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ __ROR4__(v151, 24) ^ v147 ^ __ROR4__(*&v141[4 * (((v148 ^ v135) >> 24) ^ 0x39)] ^ ((((v148 ^ v135) >> 24) ^ 0x12) - (((v148 ^ v135) >> 24) ^ 0xF705A390)) ^ 0xD127F618, 8);
  LODWORD(v65) = __ROR4__((*&v150[4 * (((v148 ^ v135) >> 16) ^ 0x36)] + (((v148 ^ v135) >> 16) ^ 0x6F74638B) - 816906885) ^ 0x8A6A2E5D, 16);
  LODWORD(STACK[0x620]) = v152 ^ v65;
  v153 = v152 ^ v65 ^ 0x94E79B28;
  v154 = v153 ^ v146 ^ v135;
  LODWORD(STACK[0x5AC]) = v153 ^ v146;
  v155 = *(&off_1006B4E30 + (LODWORD(STACK[0x640]) ^ 0x1D93)) - 12;
  v156 = (-1004993536 - 1524922323 * *&v155[4 * (BYTE1(v154) ^ 0x66)]) ^ 0xB8A535E6;
  v157 = *&v141[4 * (BYTE2(v154) ^ 0x72)] ^ ((BYTE2(v154) ^ 0x59) - (BYTE2(v154) ^ 0xF705A3DB)) ^ 0x9C5EC75F;
  v158 = v154 ^ 0x8FB687D4;
  LODWORD(STACK[0x5E0]) = v154 ^ 0x8FB687D4;
  HIDWORD(v65) = *(v137 + 4 * (HIBYTE(v154) ^ 0x16));
  LODWORD(v65) = HIDWORD(v65);
  v159 = *&v141[4 * ((v153 ^ v146 ^ v135) ^ 0x1A)] ^ __ROR4__(v156, 24) ^ __ROR4__((v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ 0xC1F88807, 8) ^ (((v153 ^ v146 ^ v135) ^ 0x31) - ((v153 ^ v146 ^ v135) ^ 0xF705A3B3)) ^ __ROR4__(v157, 16) ^ 0x9EB82648;
  v160 = v159 ^ v153;
  LODWORD(STACK[0x5DC]) = v159 ^ v153;
  v161 = v159 ^ v146;
  v162 = v153 ^ v146 ^ v148;
  LODWORD(STACK[0x5E8]) = v162;
  LODWORD(STACK[0x5F8]) = v161 ^ v162;
  LODWORD(STACK[0x5A0]) = v161;
  v163 = v161 ^ v162 ^ 0x64033C6C;
  v164 = *&v141[4 * (((v163 ^ v158) >> 24) ^ 0xE1)] ^ ((((v163 ^ v158) >> 24) ^ 0xCA) - (((v163 ^ v158) >> 24) ^ 0xF705A348)) ^ 0xF4577AD6;
  LODWORD(v115) = (*&v150[4 * (((v163 ^ v158) >> 8) ^ 0xC3)] + (((v163 ^ v158) >> 8) ^ 0x6F74637E) - 816906885) ^ 0x8D2B69C4;
  LODWORD(STACK[0x5D0]) = v163 ^ v154 ^ 0x8FB687D4;
  v165 = v150;
  v166 = v160 ^ (((v163 ^ v158) ^ 0x23) - ((v163 ^ v158) ^ 0xF705A3A1)) ^ *&v141[4 * ((v163 ^ v158) ^ 8)] ^ __ROR4__(v164, 8) ^ __ROR4__(v115, 24) ^ __ROR4__((*&v150[4 * (((v163 ^ v158) >> 16) ^ 0x92)] + (((v163 ^ v158) >> 16) ^ 0x6F74632F) - 816906885) ^ 0xF6F65B19, 16);
  LODWORD(v115) = v163 ^ v154 ^ 0x8FB687D4 ^ 0x77853259;
  v167 = v161 ^ 0xE7CBA1AF;
  v168 = v166 ^ 0x3E79CD9F ^ v161 ^ 0xE7CBA1AF;
  LODWORD(STACK[0x5B0]) = v168;
  v169 = v168 ^ v163;
  v170 = v168 ^ v163 ^ v115;
  v171 = (*&v150[4 * ((v168 ^ v163 ^ v115) ^ 0xF5)] + ((v168 ^ v163 ^ v115) ^ 0x6F746348) - 816906885) ^ __ROR4__((-1004993536 - 1524922323 * *&v155[4 * (BYTE2(v170) ^ 0xFA)]) ^ 0x24B1995, 16) ^ __ROR4__(*&v141[4 * (HIBYTE(v170) ^ 0xE)] ^ ((HIBYTE(v170) ^ 0x25) - (HIBYTE(v170) ^ 0xF705A3A7)) ^ 0x8BBB560C, 8) ^ __ROR4__(*&v141[4 * (BYTE1(v170) ^ 0xE)] ^ ((BYTE1(v170) ^ 0x25) - (BYTE1(v170) ^ 0xF705A3A7)) ^ 0xC7CE8A7D, 24) ^ 0x21DB520;
  LODWORD(STACK[0x560]) = v171 ^ v166 ^ 0x3E79CD9F;
  v172 = v171 ^ v167 ^ v115;
  v173 = v171 ^ v167;
  v174 = (-1004993536 - 1524922323 * *&v155[4 * ((v171 ^ v167 ^ v115) ^ 0xCD)]) ^ __ROR4__((-1004993536 - 1524922323 * *&v155[4 * (HIBYTE(v172) ^ 0xD5)]) ^ 0x4F17B5A6, 8) ^ v171 ^ v166 ^ 0x3E79CD9F ^ __ROR4__(*&v141[4 * (BYTE1(v172) ^ 0x23)] ^ ((BYTE1(v172) ^ 8) - (BYTE1(v172) ^ 0xF705A38A)) ^ 0xB37A8136, 24);
  LODWORD(v65) = __ROR4__(*&v141[4 * (BYTE2(v172) ^ 6)] ^ ((BYTE2(v172) ^ 0x2D) - (BYTE2(v172) ^ 0xF705A3AF)) ^ 0xDA843F4, 16);
  LODWORD(STACK[0x59C]) = v174 ^ v65;
  v175 = v174 ^ v65 ^ 0xE13356C5;
  LODWORD(STACK[0x5BC]) = v175 ^ v169;
  v176 = v175 ^ v169 ^ 0xBBF2B80C;
  v177 = v176 ^ v172;
  HIDWORD(v65) = *(v137 + 4 * (((v176 ^ v172) >> 16) ^ 0x4Cu));
  LODWORD(v65) = HIDWORD(v65);
  LODWORD(v115) = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ 0x159F28DC;
  HIDWORD(v65) = *(v137 + 4 * (((v176 ^ v172) >> 8) ^ 0xC0u));
  LODWORD(v65) = HIDWORD(v65);
  HIDWORD(v65) = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ 0xF8431D76;
  LODWORD(v65) = HIDWORD(v65);
  v178 = (*(v165 + 4 * (HIBYTE(v177) ^ 0xDF)) + (HIBYTE(v177) ^ 0x6F746362) - 816906885) ^ 0xC2B34E1A;
  v179 = (v176 ^ v172);
  v180 = *(v165 + 4 * (v179 ^ 0xC8u));
  STACK[0x588] = v165;
  LODWORD(v115) = (v65 >> 24) ^ __ROR4__(v115, 16) ^ v175 ^ (v180 + (v179 ^ 0x6F746375) - 816906885) ^ __ROR4__(v178, 8);
  LODWORD(STACK[0x598]) = v175 ^ v173;
  v181 = v173;
  LODWORD(STACK[0x558]) = v173;
  v182 = v115 ^ 0x58722403 ^ v175 ^ v173;
  LODWORD(STACK[0x570]) = v182;
  v183 = v182 ^ 0xC4CCA9F2;
  v184 = v182 ^ 0xC4CCA9F2 ^ v176;
  LODWORD(STACK[0x57C]) = v184 ^ 0xDA5FF725;
  v185 = v184 ^ 0xDA5FF725 ^ v176 ^ v172;
  v186 = *&v155[4 * (((v185 ^ 0x7622) >> 8) ^ 0x7A)];
  STACK[0x630] = &STACK[0xB80] + STACK[0x638];
  HIDWORD(v65) = (-1524922323 * v186 - 1004993536) ^ 0xD052ED18;
  LODWORD(v65) = HIDWORD(v65);
  v187 = (v65 >> 24) ^ __ROR4__((-1524922323 * *&v155[4 * (((v185 ^ 0xCEC17622) >> 16) ^ 0xFD)] - 1004993536) ^ 0x521C34A2, 16) ^ v115 ^ 0x58722403 ^ (*(v165 + 4 * (v185 ^ 0x57u)) + (v185 ^ 0x6F7463EA) - 816906885);
  LODWORD(v65) = __ROR4__(*&v141[4 * (((v185 ^ 0xCEC17622) >> 24) ^ 0xF5)] ^ ((((v185 ^ 0xCEC17622) >> 24) ^ 0xDE) - (((v185 ^ 0xCEC17622) >> 24) ^ 0xF705A35C)) ^ 0xD32EBA53, 8);
  v188 = v187 ^ v65 ^ 0x418A75FC ^ v176;
  v189 = v187 ^ v65 ^ 0x418A75FC;
  v190 = v188 ^ v185 ^ 0xCEC17622;
  v191 = (-1004993536 - 1524922323 * *&v155[4 * (HIBYTE(v190) ^ 0x52)]) ^ 0x1A6BB4E;
  v192 = *&v155[4 * (BYTE1(v190) ^ 0xA7)];
  STACK[0x498] = v155;
  LODWORD(STACK[0x564]) = -150625311;
  v193 = *&v141[4 * (BYTE2(v190) ^ 0x48)] ^ ((BYTE2(v190) ^ 0x63) - (BYTE2(v190) ^ 0xF705A3E1)) ^ 0x65FAC2E1;
  LODWORD(v165) = v190 ^ 0xA8536089;
  LODWORD(STACK[0x550]) = v190 ^ 0xA8536089;
  v194 = *(v137 + 4 * ((v188 ^ v185 ^ 0x22) ^ 0x49u));
  v195 = v188 ^ 0x51C5A751;
  LODWORD(STACK[0x568]) = v188 ^ 0x51C5A751;
  HIDWORD(v65) = v194;
  LODWORD(v65) = v194;
  v196 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ __ROR4__(v191, 8) ^ __ROR4__((-1004993536 - 1524922323 * v192) ^ 0x5DBE50F3, 24) ^ __ROR4__(v193, 16) ^ 0x16DB47FF;
  v197 = v196 ^ v183 ^ v195;
  v198 = v196 ^ v183;
  v199 = v197 ^ 0x1668B6E4 ^ v165;
  v200 = *&v141[4 * (BYTE2(v199) ^ 0xD0)] ^ ((BYTE2(v199) ^ 0xFB) - (BYTE2(v199) ^ 0xF705A379)) ^ 0x8A7AEC6C;
  STACK[0x4A0] = v137;
  HIDWORD(v65) = *(v137 + 4 * (BYTE1(v199) ^ 0xF3u));
  LODWORD(v65) = HIDWORD(v65);
  v201 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ 0x6395895F;
  HIDWORD(v65) = *(v137 + 4 * (v197 ^ 0xE4 ^ v165 ^ 0x2Cu));
  LODWORD(v65) = HIDWORD(v65);
  v202 = (v65 >> 22) ^ ((v65 >> 22) >> 4) ^ ((v65 >> 22) >> 2) ^ __ROR4__((-1004993536 - 1524922323 * *&v155[4 * (HIBYTE(v199) ^ 0xB)]) ^ 0xFC671113, 8);
  LODWORD(STACK[0x544]) = v189;
  v203 = v196 ^ v189;
  LODWORD(STACK[0x534]) = v196 ^ v189;
  v204 = v202 ^ __ROR4__(v201, 24) ^ v196 ^ v189 ^ __ROR4__(v200, 16);
  LODWORD(STACK[0x5B8]) = (v199 ^ 0xE7E06631) - (v172 ^ 0x4A384CEA);
  LODWORD(v165) = STACK[0x5C8];
  v205 = LODWORD(STACK[0x5C8]) ^ 0xFC644EA0;
  v206 = (v169 ^ 0x7F4316BF) + v205;
  LODWORD(STACK[0x52C]) = v198;
  v207 = v205 - (v198 ^ 0x13109E64);
  v208 = v115 ^ 0x17269296;
  LODWORD(STACK[0x554]) = v115 ^ 0x17269296;
  LODWORD(v115) = (v203 ^ 0x65DA3540) + (v181 ^ 0x3233A155);
  LODWORD(v114) = v185 ^ 0xEF26034D;
  LODWORD(STACK[0x538]) = v185 ^ 0xEF26034D;
  LODWORD(STACK[0x4F4]) = v204 ^ 0xC48C5C97;
  v209 = v204 ^ v198;
  LODWORD(v137) = v209 ^ 0x1C1BB228;
  LODWORD(STACK[0x4E8]) = v209 ^ 0x1C1BB228;
  LODWORD(STACK[0x518]) = v209 ^ 0xC842E950;
  v210 = v207 + 1812155113;
  v211 = v189 ^ v183;
  v212 = (v184 ^ 0xBEDD99F) + 471548799;
  v213 = v189 ^ v183 ^ 0x38BE0D93;
  v214 = (v170 ^ 0x748FB00) - 1633422746 + v213;
  LODWORD(STACK[0x440]) = v214;
  v215 = v214 ^ v212;
  LODWORD(STACK[0x514]) = v214 ^ v212 ^ v165 ^ 0x13A1FA8C ^ (v207 - ((2 * (v207 + 1812155113)) & 0xDF8B6858) + 1539899157);
  v216 = 275807131 - v115;
  v217 = v149 ^ 0xA8E1678E;
  v218 = v149 ^ v189 ^ v183 ^ 0xF1AE4C87 ^ (2061336562 - v115 - ((2 * (275807131 - v115)) & 0xD4DA08AE));
  v219 = __ROR4__(v212 ^ v166, 18) ^ 0x1F1308DA;
  v220 = STACK[0x560];
  v221 = LODWORD(STACK[0x560]) ^ 0x829561C5;
  v222 = v221 - v208 + 1532102496;
  LODWORD(STACK[0x50C]) = v170 ^ v212 ^ 0xA19E8BE3 ^ (v221 - v208 - 2 * (v222 & 0x26D670E7 ^ (v221 - v208) & 4) + 36206659);
  v223 = STACK[0x5BC];
  LODWORD(STACK[0x54C]) = LODWORD(STACK[0x5BC]) ^ 0xA38E58C5;
  LODWORD(STACK[0x548]) = v223 ^ v222 ^ 0x2C7BF269;
  v224 = (v169 ^ 0x98020D56) + 134102748;
  LODWORD(STACK[0x5BC]) = v114 - 2030999482 + v213;
  LODWORD(STACK[0x530]) = v224 ^ v213 ^ 0xA1ED19EC;
  v225 = *(&off_1006B4E30 + (LODWORD(STACK[0x640]) ^ 0x1932)) - 8;
  STACK[0x580] = v225;
  v226 = (v221 - v208 - 390566989 + (~(2 * v222) | 0xE533375B)) ^ v169 ^ v212;
  LODWORD(STACK[0x508]) = v226 ^ 0xF22572ED;
  v227 = (v225 - 2 * (v225 & 0x78854124) + 2021998889) ^ v226 ^ 0x52B670C6;
  LODWORD(STACK[0x510]) = v197 ^ 0x1668B6E4 ^ v137 ^ 0x1AB44037;
  v228 = LODWORD(STACK[0x620]) ^ 0x584C1426;
  v229 = LODWORD(STACK[0x570]) ^ 0xEDB46CA2;
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x570]) ^ 0xA0DA33D9;
  LODWORD(STACK[0x504]) = v197 ^ 0x4B2CD474;
  LODWORD(v225) = v229 - 946983090;
  v230 = v211 ^ 0x6B1E062C ^ v216;
  v231 = v230 ^ LODWORD(STACK[0x628]);
  LODWORD(STACK[0x470]) = v225;
  v232 = v225 ^ v222;
  v233 = v225 ^ v222 ^ LODWORD(STACK[0x5F8]);
  v234 = ((v227 ^ v231) + 558493143) ^ v233;
  LODWORD(STACK[0x5F8]) = v234;
  LODWORD(STACK[0x638]) = v233 ^ 0x16C2485;
  v235 = LODWORD(STACK[0x5AC]) ^ 0x10055562;
  v236 = v220 ^ 0x31C4511A;
  v237 = LODWORD(STACK[0x5F0]) ^ 0xF23876FA;
  LODWORD(STACK[0x45C]) = v210;
  v238 = v210 ^ v215;
  LODWORD(STACK[0x628]) = v238 ^ LODWORD(STACK[0x610]) ^ 0x1BFC5401;
  LODWORD(STACK[0x620]) = v238 ^ LODWORD(STACK[0x608]) ^ 0x74CEFDB6;
  LODWORD(STACK[0x4F0]) = v238 ^ LODWORD(STACK[0x600]) ^ 0xAD33E1D9;
  v239 = LODWORD(STACK[0x618]) ^ 0x25D241D9 ^ v230;
  LODWORD(STACK[0x448]) = v211;
  v211 ^= 0x715C4346u;
  LODWORD(STACK[0x450]) = v216;
  LODWORD(STACK[0x420]) = v211;
  v240 = v216 ^ v211;
  LODWORD(STACK[0x560]) = v240;
  v241 = v237 ^ v240;
  v242 = (v234 & 1) == 0;
  if (v234)
  {
    v243 = v231 ^ 0xD8164302;
  }

  else
  {
    v243 = v241;
  }

  LODWORD(STACK[0x4EC]) = v243;
  if ((v234 & 1) == 0)
  {
    v241 = v218;
  }

  LODWORD(STACK[0x618]) = v241;
  if (v234)
  {
    v244 = v239;
  }

  else
  {
    v244 = v231 ^ 0xD8164302;
  }

  LODWORD(STACK[0x5F0]) = v244;
  if (v234)
  {
    v245 = v218;
  }

  else
  {
    v245 = v239;
  }

  LODWORD(STACK[0x4CC]) = v245;
  v246 = LODWORD(STACK[0x5E0]) ^ 0x8714AFDA;
  v247 = STACK[0x5A0];
  v248 = LODWORD(STACK[0x5A0]) ^ 0x852B272D;
  v249 = STACK[0x4F4];
  v250 = v248 - v221;
  LODWORD(STACK[0x5E0]) = v248 - v221;
  v251 = (v249 - v217) ^ 0x90405CA2;
  LODWORD(STACK[0x430]) = v251;
  v252 = v251 ^ (v248 - v221);
  v253 = v235 ^ v252;
  v254 = v246 ^ v252;
  v255 = LODWORD(STACK[0x5E8]) ^ 0x4FC813D8;
  LODWORD(STACK[0x428]) = v249 - v217;
  v256 = (v249 - v217) ^ v250;
  v257 = v228 ^ v256;
  v258 = v255 ^ v256;
  LODWORD(STACK[0x5DC]) ^= 0xCEE13E9D;
  LODWORD(STACK[0x4E0]) = LODWORD(STACK[0x5D0]) ^ 0x42450AC9;
  LODWORD(STACK[0x4DC]) = LODWORD(STACK[0x5B0]) ^ 0x57E7DB79;
  v259 = v222 ^ __ROR4__(v219, 14) ^ 0x9E2CC82F;
  v260 = STACK[0x5B8];
  v261 = LODWORD(STACK[0x5B8]) ^ v212;
  v262 = v261 ^ LODWORD(STACK[0x558]) ^ 0x8162918A;
  v263 = v261 ^ LODWORD(STACK[0x558]) ^ v169 ^ 0x19609CDC;
  v264 = v236 ^ v261;
  if (v242)
  {
    v265 = v261 ^ LODWORD(STACK[0x558]) ^ v169 ^ 0x19609CDC;
  }

  else
  {
    v265 = v261 ^ LODWORD(STACK[0x558]) ^ 0x8162918A;
  }

  LODWORD(STACK[0x5B0]) = v265;
  if (v242)
  {
    v263 = v172 ^ 0xF9697C35 ^ v261;
  }

  LODWORD(STACK[0x5E8]) = v263;
  if (v242)
  {
    v266 = v264;
  }

  else
  {
    v266 = v172 ^ 0xF9697C35 ^ v261;
  }

  LODWORD(STACK[0x5AC]) = v266;
  if (v242)
  {
    v267 = v262;
  }

  else
  {
    v267 = v264;
  }

  LODWORD(STACK[0x5D0]) = v267;
  v268 = v177 ^ 0xB82606;
  v269 = LODWORD(STACK[0x57C]) ^ 0x5B53DEE4;
  v270 = LODWORD(STACK[0x598]) ^ 0x5B437EE3;
  v271 = v206 ^ 0xEAE798C4 ^ LODWORD(STACK[0x538]);
  v272 = v206 ^ 0xEAE798C4 ^ LODWORD(STACK[0x554]);
  v273 = LODWORD(STACK[0x59C]) ^ 0xE49308A7;
  v274 = v249 + LODWORD(STACK[0x54C]);
  LODWORD(STACK[0x570]) = v274 ^ 0xB1D9A15D;
  LODWORD(STACK[0x474]) = v274;
  v275 = LODWORD(STACK[0x548]) ^ v274;
  v276 = v274 ^ 0xB1D9A15D ^ v222;
  v277 = v268 ^ v276;
  v278 = v270 ^ v276;
  if (v242)
  {
    v279 = v277;
  }

  else
  {
    v279 = LODWORD(STACK[0x548]) ^ v274;
  }

  LODWORD(STACK[0x558]) = v279;
  if (v242)
  {
    v280 = v275;
  }

  else
  {
    v280 = v278;
  }

  LODWORD(STACK[0x59C]) = v280;
  v281 = v273 ^ v276;
  if (v242)
  {
    v282 = v278;
  }

  else
  {
    v282 = v281;
  }

  LODWORD(STACK[0x554]) = v282;
  if (v242)
  {
    v277 = v281;
  }

  LODWORD(STACK[0x598]) = v277;
  v283 = v247 ^ 0x7EDAD605;
  v284 = STACK[0x4E8];
  v285 = LODWORD(STACK[0x4E8]) ^ v247;
  LODWORD(STACK[0x490]) = v206;
  v286 = v206 ^ 0x513BD7FE;
  v287 = v285 ^ 0xCC5BEC47;
  LODWORD(STACK[0x478]) = v286;
  v288 = v285 ^ 0xCC5BEC47 ^ v286;
  LODWORD(STACK[0x538]) = v288;
  v289 = LODWORD(STACK[0x528]) ^ v288;
  v290 = v269 ^ v288;
  if (v242)
  {
    v291 = v271 ^ v285;
  }

  else
  {
    v291 = v290;
  }

  LODWORD(STACK[0x54C]) = v291;
  if (v242)
  {
    v292 = v272 ^ v285;
  }

  else
  {
    v292 = v271 ^ v285;
  }

  LODWORD(STACK[0x528]) = v292;
  if (!v242)
  {
    v290 = v289;
  }

  LODWORD(STACK[0x524]) = v290;
  if (v242)
  {
    v293 = v289;
  }

  else
  {
    v293 = v272 ^ v285;
  }

  LODWORD(STACK[0x548]) = v293;
  v294 = LODWORD(STACK[0x544]) ^ 0x7C703D68;
  v295 = STACK[0x568];
  LODWORD(STACK[0x480]) = v285;
  v296 = LODWORD(STACK[0x530]) ^ v285;
  v297 = STACK[0x550];
  LODWORD(STACK[0x48C]) = v224;
  LODWORD(STACK[0x484]) = v287;
  LODWORD(STACK[0x568]) = v287 ^ v224;
  v298 = v294 ^ v287 ^ v224;
  v299 = v295 ^ 0xC8AF29D3 ^ v287 ^ v224;
  if (v242)
  {
    v300 = v296;
  }

  else
  {
    v300 = v298;
  }

  LODWORD(STACK[0x544]) = v300;
  if (!v242)
  {
    v298 = v297 ^ 0x2A376762 ^ v287 ^ v224;
  }

  LODWORD(STACK[0x520]) = v298;
  if (v242)
  {
    v301 = v297 ^ 0x2A376762 ^ v287 ^ v224;
  }

  else
  {
    v301 = v299;
  }

  LODWORD(STACK[0x530]) = v301;
  if (v242)
  {
    v302 = v299;
  }

  else
  {
    v302 = v296;
  }

  LODWORD(STACK[0x51C]) = v302;
  v303 = LODWORD(STACK[0x534]) ^ 0xD68B059F;
  v304 = v199 ^ 0x54B156EE;
  v305 = LODWORD(STACK[0x52C]) ^ 0xA041AEBB;
  v306 = v297 ^ v284 ^ 0xE5B68974;
  v307 = STACK[0x5E0];
  v308 = LODWORD(STACK[0x5E0]) ^ 0x381AE672 ^ LODWORD(STACK[0x518]);
  v309 = LODWORD(STACK[0x5E0]) ^ 0x381AE672 ^ v249;
  v310 = LODWORD(STACK[0x518]) - v248 + 783325755;
  v311 = v283 ^ v232;
  LODWORD(STACK[0x57C]) = v310;
  v312 = v310 ^ LODWORD(STACK[0x5BC]);
  LODWORD(STACK[0x494]) = v312 ^ 0x73C84D1;
  v313 = v312 ^ 0x73C84D1 ^ v307;
  LODWORD(STACK[0x4F4]) = v313;
  v314 = v307;
  v315 = v313 ^ LODWORD(STACK[0x510]);
  v316 = v222;
  LODWORD(STACK[0x56C]) = v222;
  v317 = v260 ^ v222;
  v318 = LODWORD(STACK[0x504]) ^ v260 ^ v222;
  v319 = STACK[0x514];
  if (v242)
  {
    v320 = STACK[0x628];
  }

  else
  {
    v320 = STACK[0x514];
  }

  v321 = STACK[0x4F0];
  if (!v242)
  {
    v319 = STACK[0x4F0];
  }

  LODWORD(STACK[0x510]) = v319;
  if (v242)
  {
    v322 = v321;
  }

  else
  {
    v322 = STACK[0x620];
  }

  LODWORD(STACK[0x4D4]) = v257;
  if (v242)
  {
    v323 = v257;
  }

  else
  {
    v323 = v254;
  }

  if (v242)
  {
    v324 = v254;
  }

  else
  {
    v324 = v258;
  }

  LODWORD(STACK[0x4F0]) = v324;
  LODWORD(STACK[0x4E8]) = v253;
  if (v242)
  {
    v325 = v258;
  }

  else
  {
    v325 = v253;
  }

  LODWORD(STACK[0x55C]) = v232;
  v326 = LODWORD(STACK[0x5DC]) ^ v232;
  v327 = LODWORD(STACK[0x4E0]) ^ v232;
  LODWORD(STACK[0x438]) = v212;
  LODWORD(STACK[0x514]) = v212 ^ v316;
  v328 = LODWORD(STACK[0x4DC]) ^ v212 ^ v316;
  LODWORD(STACK[0x3E0]) = v328;
  v329 = STACK[0x508];
  if (v242)
  {
    v328 = STACK[0x508];
  }

  v330 = STACK[0x50C];
  if (v242)
  {
    v329 = STACK[0x50C];
  }

  LODWORD(STACK[0x4DC]) = v329;
  LODWORD(STACK[0x4B0]) = v259;
  if (v242)
  {
    v331 = v259;
  }

  else
  {
    v331 = v330;
  }

  LODWORD(STACK[0x46C]) = v317;
  v332 = v303 ^ v317;
  v333 = v304 ^ v317;
  v334 = v305 ^ v317;
  v335 = STACK[0x348];
  LODWORD(STACK[0x3D8]) = v332;
  if (v242)
  {
    v332 = v334;
  }

  LODWORD(STACK[0x518]) = v332;
  if (v242)
  {
    v334 = v318;
  }

  LODWORD(STACK[0x4D8]) = v334;
  LODWORD(STACK[0x3D4]) = v333;
  if (v242)
  {
    v336 = v333;
  }

  else
  {
    v336 = v318;
  }

  LODWORD(STACK[0x50C]) = v336;
  LODWORD(STACK[0x4C8]) = v312;
  LODWORD(STACK[0x4E0]) = v312 ^ v314;
  v337 = v306 ^ v312 ^ v314;
  LODWORD(STACK[0x3D0]) = v337;
  if (!v242)
  {
    v337 = v315;
  }

  LODWORD(STACK[0x508]) = v337;
  if (!v242)
  {
    v315 = v308 ^ v312;
  }

  LODWORD(STACK[0x4D0]) = v315;
  LODWORD(STACK[0x3CC]) = v309 ^ v312;
  if (v242)
  {
    v338 = v308 ^ v312;
  }

  else
  {
    v338 = v309 ^ v312;
  }

  LODWORD(STACK[0x504]) = v338;
  LODWORD(STACK[0x468]) = v311;
  LODWORD(STACK[0x400]) = v326;
  if (v242)
  {
    v339 = v311;
  }

  else
  {
    v339 = v326;
  }

  LODWORD(STACK[0x5DC]) = v339;
  LODWORD(STACK[0x3E8]) = v327;
  v340 = STACK[0x638];
  if (v242)
  {
    v340 = v327;
  }

  LODWORD(STACK[0x550]) = v340;
  v341 = (STACK[0x5F8] & 2) == 0;
  if ((STACK[0x5F8] & 2) != 0)
  {
    v342 = v322;
  }

  else
  {
    v342 = v320;
  }

  LODWORD(STACK[0x52C]) = v342;
  if (v341)
  {
    v343 = v322;
  }

  else
  {
    v343 = v320;
  }

  LODWORD(STACK[0x35C]) = v343;
  v344 = STACK[0x4EC];
  v345 = STACK[0x4CC];
  if (v341)
  {
    v346 = STACK[0x4EC];
  }

  else
  {
    v346 = STACK[0x4CC];
  }

  LODWORD(STACK[0x534]) = v346;
  if (v341)
  {
    v347 = v345;
  }

  else
  {
    v347 = v344;
  }

  LODWORD(STACK[0x36C]) = v347;
  if (v341)
  {
    v348 = v323;
  }

  else
  {
    v348 = v325;
  }

  LODWORD(STACK[0x4CC]) = v348;
  if (v341)
  {
    v349 = v325;
  }

  else
  {
    v349 = v323;
  }

  LODWORD(STACK[0x5A0]) = v349;
  v350 = STACK[0x498];
  v351 = LODWORD(STACK[0x5C8]) ^ __ROR4__(((LODWORD(STACK[0x5B4]) ^ 0x62) - (LODWORD(STACK[0x5B4]) ^ 0xF705A3E0)) ^ 0x722DB94B ^ *&v141[4 * (LODWORD(STACK[0x5B4]) ^ 0x49)], 16) ^ __ROR4__(((LODWORD(STACK[0x5C0]) ^ 0xB8) - (LODWORD(STACK[0x5C0]) ^ 0xF705A33A)) ^ 0xBB6466F1 ^ *&v141[4 * (LODWORD(STACK[0x5C0]) ^ 0x93)], 24) ^ __ROR4__(LODWORD(STACK[0x5A4]) ^ 0xF2CF5CA1 ^ LODWORD(STACK[0x594]), 8) ^ (-1004993536 - 1524922323 * *(STACK[0x498] + 4 * (LODWORD(STACK[0x5A8]) ^ 0x9Fu))) ^ 0xEB03A73;
  v352 = LODWORD(STACK[0x600]) ^ 0x80FDCD2A;
  v353 = v351 ^ LODWORD(STACK[0x610]);
  LODWORD(STACK[0x610]) = v353 ^ 0x14B5FD7C;
  v354 = v353 ^ 0x14B5FD7C ^ LODWORD(STACK[0x608]);
  v355 = v352 ^ v354;
  v356 = STACK[0x588];
  v357 = STACK[0x4A0];
  HIDWORD(v358) = *(STACK[0x4A0] + 4 * (BYTE2(v355) ^ 0xC9u));
  LODWORD(v358) = HIDWORD(v358);
  v359 = (-1004993536 - 1524922323 * *(v350 + 4 * (v355 ^ 0xB1u))) ^ v351 ^ __ROR4__((v358 >> 22) ^ ((v358 >> 22) >> 4) ^ ((v358 >> 22) >> 2) ^ 0x73311560, 16) ^ __ROR4__((*(STACK[0x588] + 4 * (HIBYTE(v355) ^ 0x77)) + (HIBYTE(v355) ^ 0x6F7463CA) - 816906885) ^ 0x6655CB3, 8) ^ __ROR4__(*&v141[4 * (BYTE1(v355) ^ 0xA2)] ^ ((BYTE1(v355) ^ 0x89) - (BYTE1(v355) ^ 0xF705A30B)) ^ 0x594306DE, 24) ^ 0xBDF26AFE;
  v360 = v359 ^ v353;
  v361 = v354 ^ 0xAF803C7C ^ v360;
  v362 = v361 ^ v355;
  v363 = v361;
  LODWORD(STACK[0x5C0]) = v361;
  v364 = *(v357 + 4 * (((v361 ^ v355) >> 24) ^ 0x3D));
  if (v341)
  {
    v365 = v328;
  }

  else
  {
    v365 = v331;
  }

  LODWORD(STACK[0x5A4]) = v365;
  if (v341)
  {
    v328 = v331;
  }

  LODWORD(STACK[0x600]) = v328;
  HIDWORD(v366) = v364;
  LODWORD(v366) = v364;
  v367 = *&v141[4 * (v362 ^ 0x4E)] ^ __ROR4__((v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2) ^ 0xCBDAF81A, 8) ^ v359 ^ ((v362 ^ 0x65) - (v362 ^ 0xF705A3E7)) ^ __ROR4__((*(v356 + 4 * (BYTE1(v362) ^ 0xC5u)) + (BYTE1(v362) ^ 0x6F746378) - 816906885) ^ 0x28F98C84, 24) ^ __ROR4__(*&v141[4 * (BYTE2(v362) ^ 0x5F)] ^ ((BYTE2(v362) ^ 0x74) - (BYTE2(v362) ^ 0xF705A3F6)) ^ 0x68307790, 16) ^ 0xEF38170B;
  v368 = v360 ^ 0xDAA4489C ^ v367;
  v369 = v368 ^ v355;
  v370 = v350;
  HIDWORD(v366) = (-1004993536 - 1524922323 * *(v350 + 4 * (BYTE2(v369) ^ 0x8Du))) ^ 0xFFA57D4B;
  LODWORD(v366) = HIDWORD(v366);
  v371 = (v366 >> 16) ^ __ROR4__((-1004993536 - 1524922323 * *(v350 + 4 * (HIBYTE(v369) ^ 0xD8))) ^ 0x95AA0A3A, 8) ^ v367 ^ (*(v356 + 4 * (v369 ^ 0x4Cu)) + (v369 ^ 0x6F7463F1) - 816906885) ^ __ROR4__(*&v141[4 * (BYTE1(v369) ^ 0x87)] ^ ((BYTE1(v369) ^ 0xAC) - (BYTE1(v369) ^ 0xF705A32E)) ^ 0x5C718EAA, 24);
  LODWORD(STACK[0x608]) = v371 ^ v363 ^ 0xBAFD603C;
  v372 = v371 ^ v363 ^ 0xBAFD603C ^ v369;
  v373 = v372 ^ 0x37BA108;
  v374 = (*(v356 + 4 * (((v372 ^ 0xA108) >> 8) ^ 0x85u)) + (((v372 ^ 0xA108) >> 8) ^ 0x6F746338) - 816906885) ^ 0x74E8559C;
  HIDWORD(v366) = *(v357 + 4 * (HIBYTE(v372) ^ 0x96));
  LODWORD(v366) = HIDWORD(v366);
  v375 = (v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2) ^ 0xC82A5FDD;
  HIDWORD(v366) = *(v357 + 4 * (BYTE2(v373) ^ 0x35u));
  LODWORD(v366) = HIDWORD(v366);
  v376 = (v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2);
  HIDWORD(v366) = *(v357 + 4 * (v373 ^ 0x88u));
  LODWORD(v366) = HIDWORD(v366);
  v377 = (v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2) ^ __ROR4__(v375, 8) ^ __ROR4__(v376 ^ 0x261B0CBE, 16) ^ v371 ^ __ROR4__(v374, 24) ^ 0x86B4E380;
  v378 = v371 ^ v363 ^ 0xFCE926E8;
  LODWORD(STACK[0x354]) = v371;
  LODWORD(STACK[0x344]) = v371 ^ v368;
  v379 = v371 ^ v368 ^ 0x7612B90B ^ v377;
  LODWORD(STACK[0x360]) = v373;
  v380 = v373 ^ v378 ^ v379;
  v381 = v380 ^ 0xEB42657E;
  v380 ^= 0x52454F0Fu;
  v382 = v377 ^ ((v381 ^ 0x29) - (v381 ^ 0xF705A3AB)) ^ *&v141[4 * (v381 ^ 2)] ^ __ROR4__(*&v141[4 * (HIBYTE(v381) ^ 0x7B)] ^ ((HIBYTE(v381) ^ 0x50) - (HIBYTE(v381) ^ 0xF705A3D2)) ^ 0x3D6A0E43, 8) ^ __ROR4__(*&v141[4 * (BYTE1(v381) ^ 0xD2)] ^ ((BYTE1(v381) ^ 0xF9) - (BYTE1(v381) ^ 0xF705A37B)) ^ 0xAE36B093, 24) ^ __ROR4__((*(v356 + 4 * (BYTE2(v381) ^ 0xEAu)) + (BYTE2(v381) ^ 0x6F746357) - 816906885) ^ 0x57A5E252, 16);
  v383 = v382 ^ 0x88ADF28C ^ v378;
  v384 = v383 ^ v380;
  v385 = v382 ^ 0x88ADF28C ^ v379;
  v386 = v382 ^ 0x88ADF28C ^ __ROR4__((-1524922323 * *(v370 + 4 * (((v383 ^ v380) >> 8) ^ 0xABu)) - 1004993536) ^ 0x9232AAC5, 24) ^ 0xBCF515E5;
  v387 = ((HIBYTE(v384) ^ 2) - (HIBYTE(v384) ^ 0xF705A380)) ^ *&v141[4 * (HIBYTE(v384) ^ 0x29)];
  HIDWORD(v366) = v387 ^ 4;
  LODWORD(v366) = v387 ^ 0xE1105000;
  v388 = (((v383 ^ v380) ^ 0xAA) - ((v383 ^ v380) ^ 0xF705A328)) ^ *&v141[4 * ((v383 ^ v380) ^ 0x81)] ^ __ROR4__(*&v141[4 * (BYTE2(v384) ^ 0x92)] ^ ((BYTE2(v384) ^ 0xB9) - (BYTE2(v384) ^ 0xF705A33B)) ^ 0x7E4CA87, 16) ^ ((v366 >> 8) + v386 - 2 * ((v366 >> 8) & v386));
  v389 = v388 ^ 0xBA36BCEF;
  v390 = v388 ^ v385;
  v391 = v388 ^ v385 ^ 0x19B9C394;
  LODWORD(STACK[0x5C8]) = v391;
  v392 = v391 ^ v380;
  v393 = v389 ^ __ROR4__((-1524922323 * *(v370 + 4 * (BYTE2(v392) ^ 0x2Bu)) - 1004993536) ^ 0x251C9F87, 16) ^ (*(v356 + 4 * ((v391 ^ v380) ^ 0xFEu)) + ((v391 ^ v380) ^ 0x6F746343) - 816906885) ^ __ROR4__((*(v356 + 4 * (HIBYTE(v392) ^ 0x41)) + (HIBYTE(v392) ^ 0x6F7463FC) - 816906885) ^ 0x38B23B1D, 8) ^ __ROR4__(*&v141[4 * (BYTE1(v392) ^ 0x48)] ^ ((BYTE1(v392) ^ 0x63) - (BYTE1(v392) ^ LODWORD(STACK[0x564]))) ^ 0x4ECE4E4B, 24) ^ 0xF5829E30;
  v394 = v383 ^ 0x106987A3;
  v395 = v393 ^ v383 ^ 0x106987A3 ^ 0xCED19CEB;
  LODWORD(STACK[0x594]) = v395;
  v396 = v393 ^ v383 ^ 0x106987A3 ^ v391 ^ v380;
  STACK[0x648] = v141;
  v397 = ((v396 >> 18) & 0x3F ^ 0xA38AE110) & 0xFFFFFFF3 ^ ((v396 >> 10) & 0xC0 | 0x58501602) | ((v396 >> 18) & 0x3F ^ 0xA38AE110) & 0x8108A10C;
  HIDWORD(v366) = *(v357 + 4 * (BYTE1(v396) ^ 0xF2u));
  LODWORD(v366) = HIDWORD(v366);
  v398 = (v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2) ^ 0x56027CEF;
  HIDWORD(v366) = *(v357 + 4 * ((4 * v397) & 0x4C ^ 0xC122CD43 ^ ((4 * v397) & 0xFC ^ 0xC3BEFF13) & ((v397 >> 6) ^ 0xC28DA66D)));
  LODWORD(v366) = HIDWORD(v366);
  v399 = v396 ^ 0x7C835D9;
  v400 = (-1524922323 * *(v370 + 4 * ((v393 ^ v383 ^ 0xA3 ^ v392) ^ 0x70u)) - 1004993536) ^ __ROR4__(v398, 24) ^ __ROR4__((v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2) ^ 0xB5523F3E, 16) ^ v393 ^ __ROR4__(*&v141[4 * (HIBYTE(v396) ^ 0x98)] ^ ((HIBYTE(v396) ^ 0xB3) - (HIBYTE(v396) ^ 0xF705A331)) ^ 0xA71CE063, 8);
  v401 = v390 ^ 0xF68A0744 ^ v393;
  LODWORD(STACK[0x340]) = v401;
  v402 = v400 ^ 0x41515FC0 ^ v401;
  v403 = v402 ^ v395;
  LODWORD(STACK[0x5B4]) = v402 ^ v395 ^ 0x62D86D38;
  v404 = v402 ^ v395 ^ 0x62D86D38 ^ v399;
  HIDWORD(v366) = *(v357 + 4 * (HIBYTE(v404) ^ 0x5B));
  LODWORD(v366) = HIDWORD(v366);
  v405 = (v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2) ^ 0xA4AEA723;
  HIDWORD(v366) = *(v357 + 4 * (BYTE2(v404) ^ 0x23u));
  LODWORD(v366) = HIDWORD(v366);
  LODWORD(STACK[0x564]) = (-1524922323 * *(v370 + 4 * (v400 ^ 0xC0 ^ v401 ^ v395 ^ 0x38 ^ v399 ^ 0x51u)) - 1004993536) ^ __ROR4__(v405, 8) ^ __ROR4__((v366 >> 22) ^ ((v366 >> 22) >> 4) ^ ((v366 >> 22) >> 2) ^ 0x5331FB70, 16) ^ v400 ^ 0x41515FC0 ^ __ROR4__((*(v356 + 4 * (BYTE1(v404) ^ 0x14u)) + (BYTE1(v404) ^ 0x6F7463A9) - 816906885) ^ 0xFF2B3D1B, 24) ^ 0xE1775FC;
  v406 = LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x5C0]) ^ v368;
  LODWORD(v370) = LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x608]);
  v407 = LODWORD(STACK[0x610]) ^ v370 ^ 0xC9C1C00C ^ LODWORD(STACK[0x560]);
  v408 = 2 * STACK[0x580];
  v409 = (STACK[0x580] - (v408 & 0x36C7D760) + 459533233) ^ 0x39AF90DF ^ v407;
  v410 = (STACK[0x580] - 2 * (STACK[0x580] & 0x3FFDF8D2) - 1073874723) ^ 0x9D3183B3 ^ v407;
  v411 = (STACK[0x580] - (v408 & 0xB60C08A0) - 620362659) ^ 0xF9CA7F33 ^ v407;
  LODWORD(STACK[0x4C0]) = v411 - ((2 * v411 + 1116986286) & 0x7262E48C) - 629448675;
  LODWORD(STACK[0x4BC]) = v410 - ((2 * v410 + 1116986286) & 0x7262E48C) - 629448675;
  LODWORD(STACK[0x33C]) = v370 ^ 0xB8F83CCE;
  v412 = v382 ^ 0xE996B9EA;
  v413 = (v385 ^ 0x5403C51B) & 0x10;
  v414 = (v385 ^ 0x5403C51B) & 0xFFFFFFEF;
  if (v341)
  {
    v415 = STACK[0x5F0];
  }

  else
  {
    v415 = STACK[0x618];
  }

  v416 = STACK[0x550];
  if (v341)
  {
    v416 = STACK[0x5DC];
  }

  LODWORD(STACK[0x4B8]) = v416;
  v417 = STACK[0x5D0];
  if (v341)
  {
    v417 = STACK[0x5E8];
  }

  LODWORD(STACK[0x4AC]) = v417;
  v418 = STACK[0x5AC];
  if (!v341)
  {
    v418 = STACK[0x5B0];
  }

  LODWORD(STACK[0x4C4]) = v418;
  if (v341)
  {
    v419 = STACK[0x554];
  }

  else
  {
    v419 = STACK[0x558];
  }

  v420 = STACK[0x598];
  if (!v341)
  {
    v420 = STACK[0x59C];
  }

  LODWORD(STACK[0x4A8]) = v420;
  if (v341)
  {
    v421 = STACK[0x528];
  }

  else
  {
    v421 = STACK[0x524];
  }

  v422 = STACK[0x548];
  if (!v341)
  {
    v422 = STACK[0x54C];
  }

  LODWORD(STACK[0x5A8]) = v422;
  v423 = STACK[0x530];
  if (v341)
  {
    v423 = STACK[0x544];
  }

  LODWORD(STACK[0x55C]) = v423;
  v424 = STACK[0x51C];
  if (!v341)
  {
    v424 = STACK[0x520];
  }

  LODWORD(STACK[0x560]) = v424;
  if (v341)
  {
    v425 = STACK[0x518];
  }

  else
  {
    v425 = STACK[0x50C];
  }

  v426 = STACK[0x504];
  if (v341)
  {
    v426 = STACK[0x508];
  }

  LODWORD(STACK[0x410]) = v426;
  v427 = STACK[0x56C];
  if ((v413 & STACK[0x56C]) != 0)
  {
    v413 = -v413;
  }

  v428 = v412 ^ v276;
  v429 = v384 ^ 0x8504A41 ^ v276;
  v430 = v383 ^ 0x24A15CDC ^ v276;
  v431 = STACK[0x640];
  LODWORD(STACK[0x390]) = v406;
  v432 = (v409 + 558493143) ^ v406;
  v433 = v414 ^ (v413 + v427) ^ 0x259D5963 ^ LODWORD(STACK[0x570]);
  if (((v409 - 41) ^ v406))
  {
    v434 = v429;
  }

  else
  {
    v434 = v428;
  }

  LODWORD(STACK[0x4EC]) = v434;
  if (v432)
  {
    v435 = v428;
  }

  else
  {
    v435 = v433;
  }

  LODWORD(STACK[0x388]) = v435;
  if (v432)
  {
    v436 = v433;
  }

  else
  {
    v436 = v430;
  }

  LODWORD(STACK[0x374]) = v436;
  if (v432)
  {
    v437 = v430;
  }

  else
  {
    v437 = v429;
  }

  LODWORD(STACK[0x384]) = v437;
  v438 = v392 ^ 0x19759623 ^ LODWORD(STACK[0x538]);
  v439 = v389 ^ 0x28B97193 ^ LODWORD(STACK[0x538]);
  v440 = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x5C8]) ^ v394 ^ 0xCE6049EF;
  if (v432)
  {
    v441 = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x5C8]) ^ v394 ^ 0xCE6049EF;
  }

  else
  {
    v441 = v392 ^ 0x19759623 ^ LODWORD(STACK[0x538]);
  }

  if (v432)
  {
    v442 = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x5C8]) ^ 0x358480BE;
  }

  else
  {
    v442 = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x5C8]) ^ v394 ^ 0xCE6049EF;
  }

  if (v432)
  {
    v443 = v439;
  }

  else
  {
    v443 = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x5C8]) ^ 0x358480BE;
  }

  LODWORD(STACK[0x368]) = v443;
  if (v432)
  {
    v444 = v438;
  }

  else
  {
    v444 = v439;
  }

  v445 = v393 ^ 0xF8FC9A59;
  v446 = LODWORD(STACK[0x594]) ^ 0xCDC9CFE3;
  v447 = LODWORD(STACK[0x46C]) ^ v402 ^ 0x9C9B0864;
  v448 = LODWORD(STACK[0x46C]) ^ v403 ^ 0x79367EEE;
  v449 = LODWORD(STACK[0x46C]) ^ v400 ^ 0x9348003B;
  LODWORD(STACK[0x334]) = v449;
  v450 = v427 ^ v404 ^ 0xB950A3B4;
  v451 = LODWORD(STACK[0x5B4]) ^ 0x20C4600A;
  v452 = STACK[0x564];
  v453 = LODWORD(STACK[0x564]) ^ v402;
  v454 = LODWORD(STACK[0x5E0]) ^ 0x133C8F38;
  LODWORD(STACK[0x418]) = v454;
  v455 = v453 ^ LODWORD(STACK[0x4C8]) ^ v454;
  v456 = LODWORD(STACK[0x4E0]) ^ v453 ^ 0xA7099ECA;
  v457 = v399 ^ 0x5908C033;
  v458 = v399 ^ 0xC55968A8;
  v459 = v455 ^ v451;
  v460 = v455 ^ v458;
  v461 = LODWORD(STACK[0x4F4]) ^ v452 ^ 0xB3B17051;
  v462 = LODWORD(STACK[0x5B8]) ^ 0xD3D2C938;
  LODWORD(STACK[0x338]) = v432;
  v463 = v432 ^ 0x1EF594F7;
  v464 = LODWORD(STACK[0x568]) ^ v445;
  v465 = LODWORD(STACK[0x568]) ^ v457;
  if (v432)
  {
    v466 = LODWORD(STACK[0x568]) ^ v446;
  }

  else
  {
    v466 = LODWORD(STACK[0x568]) ^ v457;
  }

  LODWORD(STACK[0x364]) = v466;
  LODWORD(STACK[0x328]) = v464;
  if ((v432 & 1) == 0)
  {
    v465 = v464;
  }

  LODWORD(STACK[0x358]) = v465;
  if (v432)
  {
    v467 = v447;
  }

  else
  {
    v467 = v448;
  }

  LODWORD(STACK[0x4E0]) = v467;
  if (v432)
  {
    v468 = v449;
  }

  else
  {
    v468 = v447;
  }

  LODWORD(STACK[0x460]) = v462;
  if (v432)
  {
    v469 = v448;
  }

  else
  {
    v469 = v450 ^ v462;
  }

  LODWORD(STACK[0x330]) = v456;
  LODWORD(STACK[0x32C]) = v459;
  if (v432)
  {
    v470 = v456;
  }

  else
  {
    v470 = v459;
  }

  if (v432)
  {
    v471 = v460;
  }

  else
  {
    v471 = v461;
  }

  LODWORD(STACK[0x5B4]) = v463;
  if ((v463 & 2) != 0)
  {
    v472 = v468;
  }

  else
  {
    v472 = v469;
  }

  LODWORD(STACK[0x3F8]) = v472;
  if ((v463 & 2) != 0)
  {
    v468 = v469;
  }

  LODWORD(STACK[0x3F0]) = v468;
  LODWORD(STACK[0x46C]) = v415;
  LODWORD(STACK[0x538]) = v419;
  v473 = LODWORD(STACK[0x5A0]) + 382957339 + (v419 ^ (v415 + 1844568610));
  v474 = LODWORD(STACK[0x600]) + LODWORD(STACK[0x534]) + LODWORD(STACK[0x52C]) + 2050208102;
  STACK[0x6A8] = 0;
  LODWORD(STACK[0x564]) = v425;
  v475 = v425 - LODWORD(STACK[0x5A4]) + 798007216;
  LODWORD(STACK[0x4C8]) = v421;
  LODWORD(STACK[0x5C0]) = ((v475 + v421) >> 1) - 679276586;
  LODWORD(STACK[0x5C8]) = (v473 >> 1) + 1333957019;
  LODWORD(STACK[0x4F4]) = 2 * v474;
  LODWORD(STACK[0x610]) = (v431 + 1488453776) & 0xA747FFFB;
  STACK[0x608] = STACK[0x630] + 1056;
  LODWORD(STACK[0x594]) = LODWORD(STACK[0x488]) >> 3;
  v476 = STACK[0x4EC];
  if ((v463 & 2) == 0)
  {
    v476 = v436;
  }

  LODWORD(STACK[0x378]) = v476;
  LODWORD(STACK[0x370]) = v441;
  if ((v463 & 2) != 0)
  {
    v477 = v443;
  }

  else
  {
    v477 = v441;
  }

  LODWORD(STACK[0x38C]) = v477;
  LODWORD(STACK[0x380]) = v442;
  LODWORD(STACK[0x37C]) = v444;
  if ((v463 & 2) != 0)
  {
    v478 = v442;
  }

  else
  {
    v478 = v444;
  }

  LODWORD(STACK[0x3C8]) = v478;
  LODWORD(STACK[0x350]) = v470;
  LODWORD(STACK[0x34C]) = v471;
  if ((v463 & 2) != 0)
  {
    v479 = v471;
  }

  else
  {
    v479 = v470;
  }

  LODWORD(STACK[0x408]) = v479;
  return (*(STACK[0x4F8] + 8 * ((14834 * (v335 == 10)) ^ v431)))(2241470664);
}

uint64_t sub_10027CE24(uint64_t a1, int a2, int a3, int a4)
{
  v8 = STACK[0x5F8];
  if (STACK[0x5F8])
  {
    v9 = STACK[0x628];
  }

  else
  {
    v9 = STACK[0x620];
  }

  v10 = STACK[0x4D4];
  if (v8)
  {
    v11 = STACK[0x3E8];
  }

  else
  {
    v10 = STACK[0x4E8];
    v11 = STACK[0x400];
  }

  if (v8)
  {
    v12 = STACK[0x468];
  }

  else
  {
    v12 = STACK[0x638];
  }

  if (v8)
  {
    v13 = STACK[0x4B0];
  }

  else
  {
    v13 = STACK[0x3E0];
  }

  if (v8)
  {
    v14 = STACK[0x3D4];
  }

  else
  {
    v14 = STACK[0x3D8];
  }

  if (v8)
  {
    v15 = STACK[0x3D0];
  }

  else
  {
    v15 = STACK[0x3CC];
  }

  v16 = LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x514]) ^ 0xEAC3C910;
  v17 = LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x514]) ^ 0xAACAEC02;
  v18 = (STACK[0x338] & 1) == 0;
  v19 = LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x514]) ^ 0x90FDF496;
  v20 = LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x340]) ^ 0x66E6EEF6;
  v21 = STACK[0x334];
  if (STACK[0x338])
  {
    v21 = v5;
  }

  LODWORD(STACK[0x4D4]) = v21;
  if (v18)
  {
    v22 = v7;
  }

  else
  {
    v22 = STACK[0x32C];
  }

  if (v18)
  {
    v23 = STACK[0x330];
  }

  else
  {
    v23 = v4;
  }

  v24 = STACK[0x33C];
  if (v18)
  {
    v25 = STACK[0x33C];
  }

  else
  {
    v25 = v17;
  }

  LODWORD(STACK[0x468]) = v25;
  if (v18)
  {
    v26 = v19;
  }

  else
  {
    v26 = v24;
  }

  LODWORD(STACK[0x640]) = v26;
  if (v18)
  {
    v27 = v16;
  }

  else
  {
    v27 = v19;
  }

  LODWORD(STACK[0x400]) = v27;
  if (v18)
  {
    v28 = v17;
  }

  else
  {
    v28 = v16;
  }

  v29 = STACK[0x328];
  if (v18)
  {
    v29 = v20;
  }

  else
  {
    a2 = v20;
  }

  LODWORD(STACK[0x3D4]) = a4 ^ 0x361DC244;
  v31 = (a4 ^ 0x361DC244) & 7;
  LODWORD(STACK[0x628]) = v31 ^ 5;
  v32 = -(v31 ^ 5);
  LODWORD(STACK[0x3E8]) = v32;
  v33 = v32 & 7;
  LODWORD(STACK[0x620]) = v32 & 7;
  if (v31 == 5)
  {
    v34 = 0;
  }

  else
  {
    v34 = 255;
  }

  v35 = v34 << v33;
  LODWORD(STACK[0x568]) = -16843009 * (v34 << v33) - 1;
  v36 = LODWORD(STACK[0x5C8]) ^ 0x75CA1D62;
  v37 = STACK[0x5C8];
  v38 = v36 & 0xFE ^ 0x48;
  LODWORD(STACK[0x338]) = v38;
  LODWORD(STACK[0x32C]) = v36 & 0xFFFFFF01;
  v39 = 16843009 * v38;
  v40 = ~v38 | 0xFFFFFF01;
  v41 = (v40 & (v36 & 0xFFFFFF01 ^ 0x9F25316C) | (16843009 * v38) & 0x92) ^ 0x57B3AB6D;
  LODWORD(STACK[0x31C]) = v41;
  v42 = STACK[0x610];
  LODWORD(STACK[0x324]) = -246336843 * *(*(&off_1006B4E30 + LODWORD(STACK[0x610]) - 6318) + v41 % 0x101 - 1) - 1193725293;
  if (v31 == 5)
  {
    v43 = 813107524;
  }

  else
  {
    v43 = v35 ^ 0xCF88F6BB;
  }

  v44 = (v8 & 2) == 0;
  v45 = STACK[0x5B0];
  if ((v8 & 2) != 0)
  {
    v45 = STACK[0x5AC];
  }

  LODWORD(STACK[0x514]) = v45;
  v46 = STACK[0x558];
  if ((v8 & 2) != 0)
  {
    v46 = STACK[0x554];
  }

  LODWORD(STACK[0x4B0]) = v46;
  v47 = STACK[0x528];
  if ((v8 & 2) == 0)
  {
    v47 = STACK[0x524];
  }

  LODWORD(STACK[0x354]) = v47;
  if ((v8 & 2) != 0)
  {
    v48 = STACK[0x51C];
  }

  else
  {
    v48 = STACK[0x520];
  }

  LODWORD(STACK[0x528]) = LODWORD(STACK[0x390]) ^ 0xA7C4E6B1;
  v49 = STACK[0x510];
  if (v44)
  {
    v50 = v9;
  }

  else
  {
    v50 = STACK[0x510];
  }

  LODWORD(STACK[0x330]) = v50;
  if (!v44)
  {
    v49 = v9;
  }

  LODWORD(STACK[0x328]) = v49;
  v51 = STACK[0x4F0];
  if (v44)
  {
    v52 = v10;
  }

  else
  {
    v52 = STACK[0x4F0];
  }

  LODWORD(STACK[0x5AC]) = v52;
  if (!v44)
  {
    v51 = v10;
  }

  LODWORD(STACK[0x510]) = v51;
  if (v44)
  {
    v53 = v12;
  }

  else
  {
    v53 = v11;
  }

  LODWORD(STACK[0x4F0]) = v53;
  if (v44)
  {
    v54 = v11;
  }

  else
  {
    v54 = v12;
  }

  LODWORD(STACK[0x4E8]) = v54;
  v55 = STACK[0x5E8];
  if (v44)
  {
    v55 = STACK[0x5D0];
  }

  LODWORD(STACK[0x520]) = v55;
  v56 = STACK[0x54C];
  if (!v44)
  {
    v56 = STACK[0x548];
  }

  LODWORD(STACK[0x524]) = v56;
  v57 = STACK[0x518];
  if (v44)
  {
    v57 = STACK[0x50C];
  }

  LODWORD(STACK[0x5D0]) = v57;
  v58 = STACK[0x508];
  if (v44)
  {
    v58 = STACK[0x504];
  }

  LODWORD(STACK[0x5E8]) = v58;
  v59 = STACK[0x618];
  if (!v44)
  {
    v59 = STACK[0x5F0];
  }

  LODWORD(STACK[0x310]) = v59;
  v60 = STACK[0x4D0];
  if (v44)
  {
    v61 = v15;
  }

  else
  {
    v61 = STACK[0x4D0];
  }

  LODWORD(STACK[0x518]) = v61;
  if (!v44)
  {
    v60 = v15;
  }

  LODWORD(STACK[0x3CC]) = v60;
  if (v44)
  {
    v62 = STACK[0x530];
  }

  else
  {
    v62 = STACK[0x544];
  }

  v63 = STACK[0x4DC];
  if (v44)
  {
    v64 = v13;
  }

  else
  {
    v64 = STACK[0x4DC];
  }

  LODWORD(STACK[0x4D0]) = v64;
  if (v44)
  {
    v13 = v63;
  }

  v65 = STACK[0x59C];
  if (!v44)
  {
    v65 = STACK[0x598];
  }

  LODWORD(STACK[0x618]) = v65;
  v66 = STACK[0x4D8];
  if (v44)
  {
    v67 = v14;
  }

  else
  {
    v67 = STACK[0x4D8];
  }

  LODWORD(STACK[0x554]) = v67;
  if (v44)
  {
    v68 = v66;
  }

  else
  {
    v68 = v14;
  }

  LODWORD(STACK[0x548]) = v68;
  v69 = (STACK[0x5B4] & 2) == 0;
  v70 = STACK[0x468];
  if ((STACK[0x5B4] & 2) == 0)
  {
    v70 = STACK[0x400];
  }

  LODWORD(STACK[0x334]) = v70;
  v71 = STACK[0x370];
  if (v69)
  {
    v71 = STACK[0x368];
  }

  LODWORD(STACK[0x348]) = v71;
  v72 = STACK[0x364];
  if (v69)
  {
    v73 = STACK[0x364];
  }

  else
  {
    v73 = v29;
  }

  LODWORD(STACK[0x370]) = v73;
  if (v69)
  {
    v74 = v29;
  }

  else
  {
    v74 = v72;
  }

  LODWORD(STACK[0x360]) = v74;
  v75 = STACK[0x350];
  if (v69)
  {
    v75 = STACK[0x34C];
  }

  LODWORD(STACK[0x3E0]) = v75;
  v76 = STACK[0x640];
  if (v69)
  {
    v76 = v28;
  }

  LODWORD(STACK[0x320]) = v76;
  v77 = STACK[0x4EC];
  if (!v69)
  {
    v77 = STACK[0x374];
  }

  LODWORD(STACK[0x344]) = v77;
  if (v69)
  {
    v78 = v23;
  }

  else
  {
    v78 = v22;
  }

  LODWORD(STACK[0x3D0]) = v78;
  if (v69)
  {
    v79 = v22;
  }

  else
  {
    v79 = v23;
  }

  LODWORD(STACK[0x3D8]) = v79;
  v81 = a3 ^ 0xD78587B8;
  v82 = (a3 ^ 0xD78587B8) & 0xFE ^ 0x5C;
  LODWORD(STACK[0x30C]) = v6 ^ 0x727D5971;
  v83 = v6 ^ 0x71 ^ ((v6 ^ 0x5971) >> 8) ^ ((v6 ^ 0x727D5971u) >> 16) ^ ((v6 ^ 0x727D5971u) >> 24) ^ 0x19;
  LODWORD(STACK[0x5F0]) = (285212672 * v35) & (v6 ^ 0x6D7D5971);
  LODWORD(STACK[0x544]) = (285212672 * v35) & 0x65000000;
  v84 = STACK[0x388];
  v85 = STACK[0x384];
  if (v69)
  {
    v86 = STACK[0x388];
  }

  else
  {
    v86 = STACK[0x384];
  }

  LODWORD(STACK[0x33C]) = v86;
  if (v69)
  {
    v87 = v85;
  }

  else
  {
    v87 = v84;
  }

  LODWORD(STACK[0x340]) = v87;
  v88 = STACK[0x358];
  if (v69)
  {
    v89 = a2;
  }

  else
  {
    v89 = STACK[0x358];
  }

  LODWORD(STACK[0x364]) = v89;
  if (v69)
  {
    v90 = v88;
  }

  else
  {
    v90 = a2;
  }

  LODWORD(STACK[0x374]) = v90;
  LODWORD(STACK[0x54C]) = v6 ^ 0x9357D99A;
  v91 = STACK[0x380];
  if (!v69)
  {
    v91 = STACK[0x37C];
  }

  LODWORD(STACK[0x34C]) = v91;
  LODWORD(STACK[0x59C]) = v43 & 0xA3 ^ (v43 ^ 0x44444444) & (a3 ^ 0x4E);
  v92 = STACK[0x4F4];
  v93 = (LODWORD(STACK[0x4F4]) ^ 0x9E5D57DE) & 6 ^ 5;
  v94 = STACK[0x5C0];
  LODWORD(STACK[0x304]) = LODWORD(STACK[0x5C0]) ^ 0x7F4BCE08;
  LODWORD(STACK[0x390]) = ((STACK[0x3E8] & 7) << 8) | 0xC298B0F5;
  v95 = v31 ^ 0xFFFFFFFA;
  LODWORD(STACK[0x598]) = a4 ^ 0xA2D000EB;
  v96 = STACK[0x3D4] & 0xFFFFFFF8;
  v97 = a4 ^ 0xF0F409D0;
  v98 = ((v96 ^ 0xE212FDAC) & v95 & 0xFFFFFFFC | a4 & 3) ^ a4 ^ 0x71E37E54;
  LODWORD(STACK[0x4D8]) = v98 ^ v13 ^ (16 * v98);
  v99 = (v93 | (v92 ^ 0x9E5D57DE) & 0xFFFFFFF8) ^ 0xAAD92F48;
  v100 = v37 ^ 0xBD5C872B;
  v101 = *(&off_1006B4E30 + (v42 ^ 0x1DA8)) - 12;
  LODWORD(STACK[0x2FC]) = (v100 % 0x101 - 1686380524) ^ 0x5A051402 ^ *&v101[4 * (v100 % 0x101)];
  v102 = v92 ^ 0x34847893;
  v103 = v62 ^ (v102 % 0x101 - 1686380524) ^ (v99 % 0x101 - 1686380524) ^ *&v101[4 * (v102 % 0x101)] ^ *&v101[4 * (v99 % 0x101)];
  v104 = LODWORD(STACK[0x46C]) ^ v100 ^ (134744072 * LODWORD(STACK[0x338])) ^ (v40 & (LODWORD(STACK[0x32C]) ^ 0x37A178C9) | v39 & 0x36) ^ (134744072 * v82);
  v105 = 16843009 * v82;
  LODWORD(STACK[0x468]) = v39 >> 1;
  LODWORD(STACK[0x638]) = v39;
  LODWORD(STACK[0x530]) = (16843009 * v82) ^ v39 ^ v48 ^ (v39 >> 1);
  LODWORD(STACK[0x508]) = (16843009 * v82) ^ v39 ^ v104;
  v106 = v81 & 0xFFFFFF01;
  v107 = ~v82 | 0xFFFFFF01;
  v108 = (v107 & (v81 & 0xFFFFFF01 ^ 0x11CC7186) | (16843009 * v82) & 0x78) ^ 0xE7775286;
  v109 = 16843009 * ((v36 ^ BYTE1(v36) ^ BYTE2(v36) ^ HIBYTE(v36)) ^ 0xD6);
  v110 = 16843009 * (v94 ^ 8 ^ ((v94 ^ 0xCE08) >> 8) ^ ((v94 ^ 0x7F4BCE08) >> 16) ^ HIBYTE(v94) ^ 0x57);
  LODWORD(STACK[0x388]) = v109;
  v111 = v110 ^ v109 ^ 0xA4A4A4A4;
  v112 = a3 ^ 0x213EA4E4;
  v113 = v111 ^ LODWORD(STACK[0x618]) ^ (32 * v111) ^ v97 ^ (v96 ^ 0x6CF879FF) & v95 ^ (-15324673 * v112);
  v114 = 16843009 * v83;
  LODWORD(STACK[0x558]) = v81;
  v115 = 16843009 * ((v81 ^ BYTE1(v81) ^ BYTE2(v81) ^ HIBYTE(v81)) ^ 0x80);
  LODWORD(STACK[0x5B0]) = v114;
  v116 = v114 ^ v115;
  v117 = v113 ^ v114 ^ v115 ^ (-15324673 * v108);
  v118 = LODWORD(STACK[0x4A8]) ^ v93 ^ v97 ^ v96 ^ 0xC6E9CB91;
  v119 = (2 * LODWORD(STACK[0x31C])) ^ LODWORD(STACK[0x4AC]) ^ (LODWORD(STACK[0x31C]) - ((2 * LODWORD(STACK[0x31C])) & 0xAF841822) + 1472334865);
  v120 = -(v119 ^ 0x57C20C11) ^ (v100 - (v119 ^ 0x57C20C11 ^ v100)) ^ 0x1FAD429E ^ ((v119 ^ 0x57C20C11) - 2 * ((v119 ^ 0x57C20C11) & 0x1FAD42BE ^ v119 & 0x20) + 531448478);
  v121 = STACK[0x4E0];
  if (v69)
  {
    v121 = STACK[0x4D4];
  }

  LODWORD(STACK[0x37C]) = v121;
  v122 = (-648124405 * v102) & 0x80000;
  if ((v118 & v122) != 0)
  {
    v122 = -v122;
  }

  v123 = (-648124405 * v99) ^ (-648124405 * v102) & 0xFFF7FFFF ^ (v122 + v118);
  LODWORD(STACK[0x4DC]) = (v120 + v100) ^ (2 * v100);
  v124 = LODWORD(STACK[0x4B8]) ^ (4 * v102) ^ v99 ^ (4 * v99);
  LODWORD(STACK[0x384]) = v110 ^ 0xAE19BDC4;
  v125 = LODWORD(STACK[0x5D0]) ^ v111;
  LODWORD(STACK[0x4B8]) = v111;
  LODWORD(STACK[0x400]) = a3;
  v126 = (v125 ^ (4 * (v111 ^ v116)) ^ 0x53749465 ^ (v116 - ((2 * v116) & 0xA6E928CA) + 1400149093)) + 1904732985 * (v36 ^ 0x908706A9 ^ a3);
  v127 = -v93 & 7;
  v128 = LODWORD(STACK[0x5E8]) ^ v127;
  v129 = STACK[0x5C8];
  v130 = STACK[0x5C8] & 0x7F ^ 0x2D;
  v131 = STACK[0x528];
  LODWORD(STACK[0x3D4]) = LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x4BC]) ^ v131;
  v132 = STACK[0x568];
  LODWORD(STACK[0x5F0]) ^= LODWORD(STACK[0x568]) ^ ((LODWORD(STACK[0x544]) | 0xC8000) + 2);
  LODWORD(STACK[0x5D0]) = (v94 ^ 0x62000000) & (-822083584 * ((255 << (-v93 & 7)) & 0xFE));
  LODWORD(STACK[0x2F0]) = (255 << (-v93 & 7)) & 0xA;
  LODWORD(STACK[0x2E8]) = v130 & ((255 << (-v93 & 7)) ^ 0x1D80D4FF);
  v133 = STACK[0x628];
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x5AC]) + 454263703 * (LODWORD(STACK[0x628]) - v93);
  LODWORD(STACK[0x380]) = ((-256 * v127) ^ ((v127 << 8) - ((-v93 & 3) << 9) - 1661238371) ^ (v128 - (v128 ^ (v127 << 8))) ^ 0x9CFB839D) + v128;
  LODWORD(STACK[0x2E0]) = (v107 & (v106 ^ 0x567A5A23) | v105 & 0xDC) ^ 0xA0C17923;
  LODWORD(STACK[0x4BC]) = LODWORD(STACK[0x324]) ^ 0x90194154;
  LODWORD(STACK[0x308]) = v92 ^ 0x9B3975A6;
  LODWORD(STACK[0x5AC]) = v115;
  LODWORD(STACK[0x544]) = v115 ^ 0x78425080;
  LODWORD(STACK[0x5E8]) = v132 ^ LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x2D8]) = 16843009 * ((255 << (-v93 & 7)) & 0xFE);
  LODWORD(STACK[0x618]) = v127;
  v134 = LODWORD(STACK[0x620]) - v127;
  LODWORD(STACK[0x300]) = LODWORD(STACK[0x600]) + 1656042417 * v134;
  LODWORD(STACK[0x50C]) = 1789437381 * v134;
  LODWORD(STACK[0x640]) = v105;
  LODWORD(STACK[0x46C]) = v105 >> 1;
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x530]) ^ (v105 >> 1);
  v135 = v117 ^ (32 * v116);
  LODWORD(STACK[0x2D0]) = -v116;
  LODWORD(STACK[0x4C0]) = v112;
  LODWORD(STACK[0x4AC]) = 1280045023 * (v108 - v112);
  LODWORD(STACK[0x4EC]) = v124 ^ LODWORD(STACK[0x598]);
  LODWORD(STACK[0x324]) = v129 ^ 0xE34B7C9B;
  LODWORD(STACK[0x600]) = v93;
  LODWORD(STACK[0x4CC]) = LODWORD(STACK[0x4CC]) - v93 + v133;
  LODWORD(STACK[0x358]) = v103;
  LODWORD(STACK[0x51C]) = v103 ^ 0xCBD4AFBF;
  LODWORD(STACK[0x32C]) = v135;
  LODWORD(STACK[0x59C]) = v135 ^ 0x6EA98545;
  LODWORD(STACK[0x338]) = v123;
  LODWORD(STACK[0x504]) = v123 ^ 0x8F64971C;
  LODWORD(STACK[0x530]) = v126 + 1576327964;
  LODWORD(STACK[0x31C]) = v94 ^ 0xCDC7A868;
  v136 = 14 * (LODWORD(STACK[0x610]) ^ 0x1BBEu);
  return (*(STACK[0x4F8] + 8 * SLODWORD(STACK[0x610])))(0, v94 ^ 0xAD009A90 ^ (441839008 << (14 * (LOBYTE(STACK[0x610]) ^ 0xBE) + 124)) & 0xAECBE9F0 ^ 0x143B0102);
}

uint64_t sub_10027DBB0(uint64_t a1, int a2)
{
  v4 = STACK[0x4E0];
  if ((STACK[0x5B4] & 2) != 0)
  {
    v4 = STACK[0x4D4];
  }

  LODWORD(STACK[0x350]) = v4;
  v5 = STACK[0x2D8];
  LODWORD(STACK[0x5D0]) ^= LODWORD(STACK[0x2D8]);
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x50C]) + LODWORD(STACK[0x518]);
  LODWORD(STACK[0x50C]) = LODWORD(STACK[0x640]) + LODWORD(STACK[0x4C8]) - LODWORD(STACK[0x638]);
  LODWORD(STACK[0x4E0]) = LODWORD(STACK[0x354]) + LODWORD(STACK[0x4B8]) + LODWORD(STACK[0x2D0]) + LODWORD(STACK[0x2FC]) + LODWORD(STACK[0x4BC]) + 1;
  v6 = LODWORD(STACK[0x4AC]) + LODWORD(STACK[0x4B0]);
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x4EC]) ^ 0xAA2359F0;
  v7 = LODWORD(STACK[0x5C0]) ^ LODWORD(STACK[0x30C]) ^ v6 ^ 0x5146DA54;
  v8 = LODWORD(STACK[0x5C0]) ^ LODWORD(STACK[0x520]);
  LODWORD(STACK[0x4C8]) = v6;
  v9 = v8 ^ v6 ^ v7 ^ (4 * v6) & 0xAECBE9F0 ^ (4 * v7) & 0xAECBE9F0 ^ a2;
  LODWORD(STACK[0x30C]) = v9;
  v10 = LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x598]) ^ 0x151C5DBD;
  LODWORD(STACK[0x2FC]) = v9 ^ 0x367AD363;
  LODWORD(STACK[0x4BC]) = v9 ^ 0xCAF81C63;
  LODWORD(STACK[0x610]) = 4 * (v9 ^ 0xCAF81C63);
  LODWORD(STACK[0x4AC]) = LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x54C]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x558]) ^ 0x4DD52F87 ^ LODWORD(STACK[0x4CC]) ^ (4 * (LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x558]) ^ 0x4DD52F87 ^ LODWORD(STACK[0x5A8]))) & 0xAECBE9F0 ^ v2;
  v11 = STACK[0x5DC];
  if ((STACK[0x5F8] & 2) == 0)
  {
    v11 = STACK[0x550];
  }

  LODWORD(STACK[0x4CC]) = v11;
  v12 = v5 ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x2E8]);
  LODWORD(STACK[0x5DC]) = v12;
  LODWORD(STACK[0x518]) = v12 ^ 3;
  LODWORD(STACK[0x4C4]) = LODWORD(STACK[0x2E0]) + LODWORD(STACK[0x4C4]) - LODWORD(STACK[0x4C0]);
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x4DC]) ^ 0xA152570E;
  return (*(STACK[0x4F8] + 8 * v3))(0);
}

uint64_t sub_10027DF9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x354]) = a3;
  v12 = STACK[0x5B0];
  LODWORD(STACK[0x520]) = LODWORD(STACK[0x5B0]) ^ 0xE317822C;
  LODWORD(STACK[0x4D4]) = LODWORD(STACK[0x508]) ^ 0x5866E62B;
  v13 = LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x54C]) ^ a8 & (2 * LODWORD(STACK[0x59C])) ^ a8 & (2 * (LODWORD(STACK[0x54C]) ^ LODWORD(STACK[0x5C0]) ^ LODWORD(STACK[0x59C]))) ^ a6;
  LODWORD(STACK[0x4B0]) = LODWORD(STACK[0x598]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x300]) ^ a8 & (2 * (LODWORD(STACK[0x598]) ^ LODWORD(STACK[0x308]))) ^ v9 ^ LODWORD(STACK[0x4BC]) ^ v10 ^ STACK[0x610] & 0xAECBE9F0 ^ v8 ^ a5;
  LODWORD(STACK[0x304]) = v13;
  LODWORD(STACK[0x4A8]) = v13 ^ 0xA8FE4B8;
  v14 = ~LODWORD(STACK[0x5E8]);
  v15 = STACK[0x5E8] & 0xFA;
  v16 = (LODWORD(STACK[0x5AC]) ^ 0x37) - ((2 * (LODWORD(STACK[0x5AC]) ^ 0x37)) & 0x42) + 33;
  LODWORD(STACK[0x610]) = LODWORD(STACK[0x5DC]) ^ 0xB;
  v17 = STACK[0x518] & 0xC449A85B;
  v18 = STACK[0x5F0];
  v19 = LODWORD(STACK[0x5F0]) ^ 0xC8002;
  LODWORD(STACK[0x5F8]) = v11 - 2217;
  v20 = LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x31C]);
  v21 = STACK[0x5F8];
  v22 = *(*(&off_1006B4E30 + v11 - 8265) + 184);
  v23 = v22 ^ (((v22 ^ 0x93EB2FD6) & STACK[0x640]) >> 1);
  v24 = (v23 ^ 0x57A2878C) & STACK[0x610];
  v25 = (v18 & 0xF72FCCE1 ^ 0xC8000 ^ (v23 ^ 0x64C4E336) & v19) << LODWORD(STACK[0x628]);
  v26 = (v17 ^ v24 ^ 8) >> LODWORD(STACK[0x618]);
  LODWORD(STACK[0x638]);
  LODWORD(STACK[0x600]);
  v27 = 4 * ((v12 ^ v16) ^ 0x16 ^ (((v14 & 0xFA | v15) ^ (LODWORD(STACK[0x5F8]) + 29)) >> LODWORD(STACK[0x620])));
  *(STACK[0x630] + v27) = v20 ^ (v25 - ((2 * v25) & 0xC23884FC) + 1629241982) ^ (v26 - ((2 * v26) & 0x2E74AE) - 2145961385) ^ 0x32273172;
  *(STACK[0x608] + v27) = v20 ^ 0xA7E693C ^ *(STACK[0x648] + 952);
  return (*(STACK[0x4F8] + 8 * v21))(184);
}

uint64_t sub_10027E278(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v54 = STACK[0x534];
  v55 = STACK[0x52C];
  v56 = LODWORD(STACK[0x4CC]) ^ LODWORD(STACK[0x4F0]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x510]);
  v57 = LODWORD(STACK[0x4AC]) ^ 0x420CBD10;
  LODWORD(STACK[0x300]) = v57;
  v58 = v56 ^ v57 ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x4A8]);
  v59 = STACK[0x5A4];
  v60 = -(v58 ^ 0xC27C9148) ^ (LODWORD(STACK[0x5A4]) - (v58 ^ 0xC27C9148 ^ LODWORD(STACK[0x5A4]))) ^ 0x398B2FBA ^ ((v58 ^ 0xC27C9148) - 2 * ((v58 ^ 0xC27C9148) & 0x398B2FBB ^ v58 & 1) + 965423034);
  v61 = STACK[0x36C];
  v62 = STACK[0x310];
  v63 = STACK[0x35C];
  v64 = STACK[0x328];
  v65 = STACK[0x330];
  v66 = STACK[0x4D4];
  v67 = LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x50C]) ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x4D4]) ^ LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x530]) ^ LODWORD(STACK[0x59C]);
  v68 = LODWORD(STACK[0x4B0]) ^ 0x8E37FBC1;
  LODWORD(STACK[0x308]) = v68;
  v69 = v67 ^ LODWORD(STACK[0x4E0]) ^ v68;
  v70 = LODWORD(STACK[0x528]) ^ 0xEF16A557;
  LODWORD(STACK[0x31C]) = v70;
  v71 = LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x564]) ^ LODWORD(STACK[0x4C4]) ^ v70 ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x51C]) ^ (v60 + v59);
  v72 = STACK[0x638];
  v73 = v69 ^ (((v69 ^ 0x298A9374u) & STACK[0x638]) >> 1);
  v75 = STACK[0x5F0];
  v76 = STACK[0x600];
  v77 = (STACK[0x5F0] & 0x3A06B2D5 ^ 0x48000 ^ (v73 ^ 0x138C21A1) & a3) << LODWORD(STACK[0x600]);
  v78 = v53;
  v79 = STACK[0x5E8];
  v80 = STACK[0x618];
  v81 = (((v73 ^ 0xED4807C9) & v53 | STACK[0x5E8] & 0xC4C294BD) ^ 0xC4C294BD) >> LODWORD(STACK[0x618]);
  LODWORD(STACK[0x550]) = (v81 - ((2 * v81) & 0xA3DC2300) - 772927104) & 0x99236CAA ^ 0xF7FE93D5 ^ ((v81 - ((2 * v81) & 0xA3DC2300) - 772927104) ^ 0x2E11EE7F) & ((v77 - ((2 * v77) & 0xEF590420) - 139689455) ^ 0x91701144);
  v82 = STACK[0x640];
  v83 = v71 ^ (((v71 ^ 0xB6A1EB9A) & STACK[0x640]) >> 1);
  v84 = STACK[0x5D0];
  v85 = STACK[0x610];
  v86 = STACK[0x518];
  v87 = STACK[0x628];
  v88 = STACK[0x620];
  LODWORD(STACK[0x54C]) = ((((v83 ^ 0x22EDC700) & ~LODWORD(STACK[0x5D0]) | STACK[0x5D0] & 0x944C2C9A) ^ 0x944C2C9B) << LODWORD(STACK[0x628])) + ((STACK[0x518] & 0x952A784D ^ (v83 ^ 0x238B93D6) & STACK[0x610] ^ 8) >> LODWORD(STACK[0x620]));
  v89 = v55 ^ ((v72 & v55) >> 1);
  v90 = v65 ^ ((v82 & v65) >> 1);
  v91 = (v90 ^ 0x147BB32B) & ~v84 | v84 & 0x147BB32A;
  v92 = (((v89 ^ 0x70D95902) & v85 ^ v86 & 0x70D95902) >> v88) - ((2 * (((v89 ^ 0x70D95902) & v85 ^ v86 & 0x70D95902) >> v88)) & 0xBFD5B5EE) + 1609226999;
  v93 = (v86 & 0x72A1529B ^ (v90 ^ 0x72A1529B) & v85 ^ 8) >> v80;
  v94 = ((((a3 & v89) << v87) - ((2 * ((a3 & v89) << v87)) & 0x7121DFD8) + 949022700) ^ 0xA4E34F9E) & (v92 ^ 0xA0152508);
  v95 = v92 & 0x638C5F8D;
  v96 = LODWORD(STACK[0x544]) ^ LODWORD(STACK[0x520]);
  LODWORD(STACK[0x4F4]) = v96 ^ v95 ^ v94 ^ 0x44AE285B;
  v97 = ((v91 ^ 0x147BB32B) << v87) - ((2 * ((v91 ^ 0x147BB32B) << v87)) & 0x6655B334) - 1289037414;
  LODWORD(STACK[0x330]) = v96 ^ v97 & 0x5B1BF424 ^ (v97 ^ 0x4CD52665) & ((v93 - ((2 * v93) & 0x23669788) - 1850520636) ^ 0x3557401F);
  v98 = v63 ^ ((v82 & v63) >> 1);
  v99 = (v98 ^ 0x8B1E1172) & ~v84 | v84 & 0x8B1E1172;
  v100 = ((v99 ^ 0x8B1E1172) << v76) - ((2 * ((v99 ^ 0x8B1E1172) << v76)) & 0x1031B120) + 135846032;
  v101 = v64 ^ ((v72 & v64) >> 1);
  LODWORD(STACK[0x35C]) = LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x5AC]) ^ (((v98 & v85) >> v80) - ((2 * ((v98 & v85) >> v80)) & 0xD58E79DE) - 356041489) ^ 0xE2DFE47F ^ v100;
  v102 = ((a3 & v101) << v87) - ((2 * ((a3 & v101) << v87)) & 0xC3C1A9AA) - 505359147;
  v103 = (v86 & 0x9755CD8F ^ (v101 ^ 0x9755CD8F) & v85 ^ 8) >> v88;
  v104 = v66 ^ (((LODWORD(STACK[0x508]) ^ 0xFF37E2C8) & v82) >> 1);
  v105 = STACK[0x5DC];
  v106 = (v104 ^ 0xA75104E3) & (LODWORD(STACK[0x5DC]) ^ 0xA024F4E3);
  v107 = v104 & 0xA024F4E8;
  v108 = (v104 & 0xB2BC9B5F ^ 0xA2100043 ^ (v104 ^ 0xA75104E3) & (v75 ^ 0xB2B01B5D)) << v76;
  LODWORD(STACK[0x328]) = (((v107 ^ 0xA00004E0 ^ v106) >> v80) - ((2 * ((v107 ^ 0xA00004E0 ^ v106) >> v80)) & 0xA88A46C0) + 1413817184) ^ (v108 - ((2 * v108) & 0x29AEF4AC) - 1797817769) ^ 0xC0925937;
  LODWORD(STACK[0x324]) = (v103 - ((2 * v103) & 0x320CD41C) + 419850766) ^ v96 ^ v102 ^ 0x63B36C77;
  v109 = v54 ^ ((v72 & v54) >> 1);
  v110 = (v109 ^ 0xB73073A3) & ~v84 | v84 & 0xB73073A2;
  v111 = ((v78 & (v109 ^ 0x48A70A1E) | v79 & 0x48A70A1E) ^ 0x48A70A1E) >> v80;
  LODWORD(STACK[0x4D4]) = (((v79 & 0xD349F6D5 | v78 & (v62 ^ ((v82 & v62) >> 1) ^ 0xD349F6D5)) ^ 0xD349F6D5) >> v88) + ((((v62 ^ ((v82 & v62) >> 1) ^ 0xB77A42C6) & ~v84 | v84 & 0xB77A42C6) ^ 0xB77A42C6) << v76);
  LODWORD(STACK[0x534]) = (((v110 ^ 0xB73073A3) << v76) - ((2 * ((v110 ^ 0xB73073A3) << v76)) & 0x9AE14CCC) + 1299228263) ^ (v111 - ((2 * v111) & 0x1E01A5FA) + 251712253) ^ 0x4270749A;
  v112 = v61 ^ ((v72 & v61) >> 1);
  v113 = v78 & (v112 ^ 0x28D63B4F) | v79 & 0x28D63B4F;
  v114 = (((v112 ^ 0x14F8B08B) & ~v84 | v84 & 0x14F8B08A) ^ 0x14F8B08B) << v76;
  v115 = v114 - ((2 * v114) & 0x312934B4) + 412392026;
  v116 = LODWORD(STACK[0x4A8]) ^ (((LODWORD(STACK[0x304]) ^ 0x42DB8DEE) & v72) >> 1);
  v117 = ((v113 ^ 0x28D63B4Fu) >> v88) - ((2 * ((v113 ^ 0x28D63B4Fu) >> v88)) & 0xACC0A51E) - 698330481;
  v118 = (v116 & 0xA2E55244 ^ 0x444044 ^ (v116 ^ 0x48546956) & (v75 ^ 0xA2E9D246)) << v87;
  v119 = LODWORD(STACK[0x5A0]) ^ ((v72 & STACK[0x5A0]) >> 1);
  v120 = (v116 & 0xBF156B8F ^ 0x8146906 ^ (v116 ^ 0x48546956) & (v105 ^ 0xBF156B84)) >> v80;
  v121 = (v120 - ((2 * v120) & 0x83143D98) + 1099570892) ^ (v118 - ((2 * v118) & 0x38F3AA06) + 477746435) ^ 0x5DF3CBCF;
  v122 = (v105 & 0x2CD4108C ^ (v119 ^ 0x2CD4108C) & v85 ^ 8) >> v88;
  LODWORD(STACK[0x5A0]) = v115 ^ v117 ^ 0xCEF4C8D5;
  v123 = (((v119 ^ 0xF2A59326) & ~v84 | v84 & 0xF2A59326) ^ 0xF2A59326) << v76;
  LODWORD(STACK[0x52C]) = (v123 - ((2 * v123) & 0xBEE85E34) - 546033894) ^ (v122 - ((2 * v122) & 0xC02D10C8) - 535394204) ^ 0x3F62A77E;
  v124 = LODWORD(STACK[0x510]) ^ ((v82 & STACK[0x510]) >> 1);
  v125 = (((v124 ^ 0x507930E3) & ~v84 | v84 & 0x507930E2) ^ 0x507930E3) << v87;
  v126 = LODWORD(STACK[0x4AC]) ^ 0x30D82B80;
  v127 = (v86 & 0xB549FC1B ^ (v124 ^ 0xB549FC1B) & v85 ^ 8) >> v80;
  LODWORD(STACK[0x510]) = (v127 - ((2 * v127) & 0x9EA265F6) + 1330721531) ^ (v125 - ((2 * v125) & 0xC42D248) - 2044630748) ^ 0xC9705BDF;
  v128 = LODWORD(STACK[0x300]) ^ ((v126 & v72) >> 1);
  v129 = (v75 & 0x6B8CD343 ^ 0xC8002 ^ (v128 ^ 0x195845D2) & a3) << v76;
  v130 = ((v128 ^ 0xAFCE7414) & v85 ^ v86 & 0xDD1AE285) >> v88;
  LODWORD(STACK[0x508]) = (v129 - ((2 * v129) & 0x5C958790) + 776651721) & 0xB2E793F9 ^ 0x6F5AEFCF ^ ((v130 - ((2 * v130) & 0xA0122C16) + 1342772747) ^ 0x1D117A0D) & ((v129 - ((2 * v129) & 0x5C958790) + 776651721) ^ 0xD1B53C36);
  v131 = LODWORD(STACK[0x4B8]) ^ (((LODWORD(STACK[0x4EC]) ^ 0x7E200ABA) & v72) >> 1);
  LODWORD(STACK[0x4EC]) = ((((v131 ^ 0x4B27D2BA) & ~v84 | v84 & 0x9F2481F0) ^ 0x9F2481F0) << v87) + ((v131 & 0x7C15117C ^ 0x54011148 ^ (v131 ^ 0xD403534A) & (v105 ^ 0x7C151177)) >> v80);
  v132 = LODWORD(STACK[0x4F0]) ^ ((v82 & (LODWORD(STACK[0x4F0]) ^ 0xFBF1F128)) >> 1);
  LODWORD(STACK[0x4F0]) = (((v79 & 0x4277A3EF | v78 & (v132 ^ 0xB98652C7)) ^ 0x4277A3EF) >> v80) + ((((v132 ^ 0xA41C1C0B) & ~v84 | v84 & 0x5FEDED22) ^ 0x5FEDED23) << v76);
  v133 = LODWORD(STACK[0x4CC]) ^ ((v82 & (LODWORD(STACK[0x4CC]) ^ 0xFBF1F128)) >> 1);
  v134 = (v75 ^ 0x7DA2287E) & (v133 ^ 0xFBF1F128);
  v135 = v133 & 0x7DAEA87C;
  v136 = (v86 & 0xC4E3D9EA ^ (v133 ^ 0x3F1228C2) & v85 ^ 8) >> v80;
  v137 = LODWORD(STACK[0x4E8]) ^ ((v72 & (LODWORD(STACK[0x4E8]) ^ 0xFBF1F128)) >> 1);
  v138 = ((v135 ^ 0x79A0A028 ^ v134) << v87) + 181864070 + (~(2 * ((v135 ^ 0x79A0A028 ^ v134) << v87)) | 0xEA51F2F5);
  LODWORD(STACK[0x4CC]) = (((v78 & (v137 ^ 0xA48FBFC0) | v79 & 0x5F7E4EE8) ^ 0x5F7E4EE8) >> v88) + ((((v137 ^ 0x11EA38C0) & ~v84 | v84 & 0xEA1BC9E8) ^ 0xEA1BC9E8) << v76);
  LODWORD(STACK[0x4E8]) = v138 & 0xE041D6E2 ^ 0x1FFF2F9D ^ (v138 ^ 0xF528F97A) & ((v136 - ((2 * v136) & 0x8A674C00) + 1161012736) ^ 0x5A8D8F1D);
  v139 = LODWORD(STACK[0x4D0]) ^ ((v72 & STACK[0x4D0]) >> 1);
  v140 = ((v78 & (v139 ^ 0xA678F852) | v79 & 0xA678F852) ^ 0xA678F852) >> v88;
  v141 = (v75 & 0x46540113 ^ 0x40002 ^ a3 & (v139 ^ 0x46540113)) << v87;
  LODWORD(STACK[0x4D0]) = (v140 - ((2 * v140) & 0x1EDA48) - 2146472668) ^ (v141 - ((2 * v141) & 0x75C6F9C6) - 1159496477) ^ 0x3AEC11C7;
  v142 = LODWORD(STACK[0x320]) ^ ((v82 & (LODWORD(STACK[0x320]) ^ 0x5C377648)) >> 1);
  v143 = (v142 ^ 0xB988C983) & ~v84 | v84 & 0xE5BFBFCA;
  v144 = (v86 & 0x8DD1BF9E ^ (v142 ^ 0xD1E6C9D7) & v85 ^ 8) >> v80;
  v145 = ((v143 ^ 0xE5BFBFCA) << v76) - ((2 * ((v143 ^ 0xE5BFBFCA) << v76)) & 0xAACB6184) + 1432727747;
  LODWORD(STACK[0x4AC]) = v145 & 0x49E5713F ^ 0xF77FBEC3 ^ (v145 ^ 0xAA9A4F3C) & ((v144 - ((2 * v144) & 0xA0AE348C) + 1347885638) ^ 0xE64D9486);
  v146 = LODWORD(STACK[0x5A4]) ^ ((v72 & STACK[0x5A4]) >> 1);
  v147 = ((a3 & v146) << v87) - ((2 * ((a3 & v146) << v87)) & 0x295F9632) + 347065113;
  v148 = (v105 & 0x1F879CAC ^ (v146 ^ 0x1F879CAC) & v85 ^ 8) >> v88;
  LODWORD(STACK[0x4B8]) = (v148 - ((2 * v148) & 0xE8C0FF0) + 122030072) ^ v147 ^ 0x13E9CCE1;
  v149 = LODWORD(STACK[0x4D8]) ^ (((LODWORD(STACK[0x4D8]) ^ 0xFB285A38) & v82) >> 1);
  v150 = ((v149 ^ 0xBA7402F5) & ~v84 | v84 & 0x415C58CC) ^ 0x415C58CD;
  v151 = v149 & 0x90E95067 ^ 0x90285020 ^ (v149 ^ 0xFB285A38) & (v105 ^ 0x90E9506C);
  v152 = LODWORD(STACK[0x308]) ^ (((LODWORD(STACK[0x4B0]) ^ 0xACDB8246) & v72) >> 1);
  v153 = v76;
  LODWORD(STACK[0x36C]) = ((((v152 ^ 0x71ED0305) & v78 | v79 & 0x53017A82) ^ 0x53017A82) >> v88) + ((v75 & 0xA711BE2D ^ (v152 ^ 0x85FDC7AA) & a3 ^ 0x8000) << v76);
  v154 = LODWORD(STACK[0x334]) ^ ((v82 & (LODWORD(STACK[0x334]) ^ 0x5C377648)) >> 1);
  LODWORD(STACK[0x4B0]) = (v150 << v76) + (v151 >> v88);
  v155 = LODWORD(STACK[0x30C]) ^ 0xCE86BDEC;
  v156 = (v105 & 0x34CEFE18 ^ (v154 ^ 0x68F98851) & v85 ^ 8) >> v80;
  v157 = (((v154 ^ 0xA6D0A05F) & ~v84 | v84 & 0xFAE7D616) ^ 0xFAE7D616) << v87;
  LODWORD(STACK[0x4A8]) = (v156 - 1257844976 - ((2 * v156) & 0x6A0D9E20)) & 0xD4A656A1 ^ 0xBF5FEF5E ^ ((v157 - ((2 * v157) & 0x1C71FFA0) - 1908867120) ^ 0xA561568E) & ((v156 - 1257844976 - ((2 * v156) & 0x6A0D9E20)) ^ 0x4AF930EF);
  v158 = LODWORD(STACK[0x4BC]) ^ ((v155 & v72) >> 1);
  v159 = v158 ^ 0xF1CA9081;
  v160 = (((v158 ^ 0x51062D77) & v78 | v79 & 0x55788CF8) ^ 0x55788CF8) >> v80;
  v161 = (v75 & 0xF5B4310E ^ 0x40002 ^ v159 & a3) << v87;
  LODWORD(STACK[0x5A4]) = (v161 - ((2 * v161) & 0x772C687E) - 1147784129) & 0x2C1DA033 ^ 0xFBF67FFF ^ ((v160 - ((2 * v160) & 0xB09F362A) + 1481612053) ^ 0x8BADC4D9) & ((v161 - ((2 * v161) & 0x772C687E) - 1147784129) ^ 0x4469CBC0);
  v162 = LODWORD(STACK[0x514]) ^ ((v82 & STACK[0x514]) >> 1);
  v163 = (v162 ^ 0x2804A1FE) & ~v84 | v84 & 0x2804A1FE;
  v164 = ((v79 & 0x1C74DF3C | v78 & (v162 ^ 0x1C74DF3C)) ^ 0x1C74DF3C) >> v80;
  LODWORD(STACK[0x334]) = (v164 - ((2 * v164) & 0x3B00C634) + 494953242) ^ (((v163 ^ 0x2804A1FE) << v87) - ((2 * ((v163 ^ 0x2804A1FE) << v87)) & 0x43FA0E0C) + 570230534);
  v165 = LODWORD(STACK[0x4C0]) ^ ((STACK[0x4DC] & v72) >> 1);
  v166 = (((v165 ^ 0x1678F5D6) & ~v84 | v84 & 0xB72AA2D8) ^ 0xB72AA2D8) << v87;
  v167 = ((v165 ^ 0x2D2E3008) & v85 ^ v86 & 0x8C7C6706) >> v88;
  LODWORD(STACK[0x514]) = (v166 - ((2 * v166) & 0x45FD34D8) + 587111020) ^ (v167 - ((2 * v167) & 0xAF7163D8) - 675761684) ^ 0xF5462B80;
  v168 = LODWORD(STACK[0x4C4]) ^ ((STACK[0x4C4] & v72) >> 1);
  v169 = (v86 & 0x3AF4608D ^ (v168 ^ 0x3AF4608D) & v85 ^ 8) >> v80;
  LODWORD(STACK[0x4DC]) = (((a3 & v168) << v76) - ((2 * ((a3 & v168) << v76)) & 0xC7EFD90) + 104824521) ^ 0x2A9C31B5 ^ (v169 + 748900221 + (~(2 * v169) | 0xA6B96107));
  v170 = LODWORD(STACK[0x538]) ^ ((v72 & STACK[0x538]) >> 1);
  v171 = v78 & (v170 ^ 0x896FD266) | v79 & 0x896FD266;
  v172 = (((v170 ^ 0x8989F0EE) & ~v84 | v84 & 0x8989F0EE) ^ 0x8989F0EE) << v76;
  LODWORD(STACK[0x538]) = (v172 - ((2 * v172) & 0x768F0264) + 994541874) ^ (((v171 ^ 0x896FD266) >> v88) - ((2 * ((v171 ^ 0x896FD266) >> v88)) & 0xF7A8A18C) + 2077511878) ^ 0x4093D1F4;
  v173 = LODWORD(STACK[0x33C]) ^ ((v82 & (LODWORD(STACK[0x33C]) ^ 0xC664AFC)) >> 1);
  v174 = LODWORD(STACK[0x59C]) ^ (((LODWORD(STACK[0x32C]) ^ 0xAA11B26E) & v82) >> 1);
  v175 = (v173 & 0xFC0B6B36 ^ 0xC024A34 ^ (v75 ^ 0xFC07EB34) & (v173 ^ 0xC664AFC)) << v87;
  v176 = (v173 & 0x982E0197 ^ 0x8260094 ^ (v173 ^ 0xC664AFC) & (v105 ^ 0x982E019C)) >> v80;
  v177 = v175 & v176;
  v178 = v175 + v176;
  LODWORD(STACK[0x59C]) = ((v75 & 0xCE4552F ^ 0x40002 ^ (v174 ^ 0xC85C6204) & a3) << v87) + ((v174 & 0xAE0A3C38 ^ 0x84083428 ^ (v174 ^ 0xC4B8372B) & (v105 ^ 0xAE0A3C33)) >> v80);
  v179 = LODWORD(STACK[0x378]) ^ ((v72 & (LODWORD(STACK[0x378]) ^ 0xC664AFC)) >> 1);
  LODWORD(STACK[0x4C4]) = v178 - 2 * v177;
  v180 = LODWORD(STACK[0x4C8]) ^ ((STACK[0x4C8] & v82) >> 1);
  LODWORD(STACK[0x4C0]) = (((v78 & (v179 ^ 0x25A94058) | v79 & 0x29CF0AA4) ^ 0x29CF0AA4) >> v88) + ((((v179 ^ 0xC859F96C) & ~v84 | v84 & 0xC43FB390) ^ 0xC43FB390) << v76);
  v181 = (((v180 ^ 0xD5DAA419) & v78 | v79 & 0xD5DAA419) ^ 0xD5DAA419) >> v80;
  v182 = (v75 & 0x968DDE18 ^ 0xC8000 ^ (v180 ^ 0x968DDE18) & a3) << v76;
  LODWORD(STACK[0x4D8]) = (v182 - ((2 * v182) & 0x3ADD978C) - 1653683258) ^ 0x730439D8 ^ (v181 - ((2 * v181) & 0xDCD5E43C) - 294981090);
  v183 = LODWORD(STACK[0x340]) ^ ((v72 & (LODWORD(STACK[0x340]) ^ 0xC664AFC)) >> 1);
  v184 = ((v183 & 0x689B6B66 ^ 0x8024A64 ^ (v183 ^ 0xC664AFC) & (v105 ^ 0x689B6B6D)) >> v88) - ((2 * ((v183 & 0x689B6B66 ^ 0x8024A64 ^ (v183 ^ 0xC664AFC) & (v105 ^ 0x689B6B6D)) >> v88)) & 0xCC221C56) + 1712393771;
  v185 = (((v183 ^ 0x8708DD39) & ~v84 | v84 & 0x8B6E97C4) ^ 0x8B6E97C5) << v87;
  v186 = (STACK[0x338] & v82) >> 1;
  v187 = v186 ^ LODWORD(STACK[0x504]);
  v188 = (v186 ^ LODWORD(STACK[0x338])) & (v75 ^ 0x1BF60669);
  LODWORD(STACK[0x4BC]) = (v185 - ((2 * v185) & 0x985C31DA) - 869394195) ^ v184 ^ 0xAA3F16C6;
  v189 = v187 & 0x1BFA866B ^ v188 ^ 0xB608608;
  v190 = (v187 ^ 0x385CD8D1) & v78 | v79 & 0xB7384FCD;
  v191 = LODWORD(STACK[0x344]) ^ ((v72 & (LODWORD(STACK[0x344]) ^ 0xC664AFC)) >> 1);
  LODWORD(STACK[0x504]) = ((v190 ^ 0xB7384FCD) >> v88) + (v189 << v87);
  LODWORD(STACK[0x378]) = ((((v191 ^ 0x8DDEFECB) & ~v84 | v84 & 0x81B8B436) ^ 0x81B8B437) << v76) + ((v191 & 0xC030C4E6 ^ 0x2040E4 ^ (v191 ^ 0xC664AFC) & (v105 ^ 0xC030C4ED)) >> v80);
  v192 = LODWORD(STACK[0x5A8]) ^ ((v82 & STACK[0x5A8]) >> 1);
  v193 = ((v192 & v85) >> v80) - ((2 * ((v192 & v85) >> v80)) & 0xE0D4F38) + 117876636;
  v194 = (v75 & 0x1755AB37 ^ 0x48002 ^ a3 & (v192 ^ 0x1755AB37)) << v87;
  v195 = LODWORD(STACK[0x348]) ^ ((v72 & (LODWORD(STACK[0x348]) ^ 0x9C36FBA)) >> 1);
  v196 = (v195 ^ 0xBC0BBA0C) & ~v84 | v84 & 0xB5C8D5B6;
  LODWORD(STACK[0x4C8]) = v193 ^ 0x9066ECE6 ^ (v194 - ((2 * v194) & 0x2EC096F4) - 1755296902);
  v197 = ((v78 & (v195 ^ 0xF3859511) | v79 & 0xFA46FAAB) ^ 0xFA46FAAB) >> v88;
  LODWORD(STACK[0x348]) = (((v196 ^ 0xB5C8D5B6) << v76) - ((2 * ((v196 ^ 0xB5C8D5B6) << v76)) & 0x40DDE78C) - 1603341370) ^ (v197 - ((2 * v197) & 0x590C41F4) - 1400495878) ^ 0xCE8D33C;
  v198 = LODWORD(STACK[0x4E0]) ^ ((STACK[0x4E0] & v82) >> 1);
  LODWORD(STACK[0x4E0]) = ((((v198 ^ 0xFF5CE452) & v78 | v79 & 0xFF5CE452) ^ 0xFF5CE452) >> v80) + ((v198 & a3) << v87);
  v199 = LODWORD(STACK[0x34C]) ^ ((v72 & (LODWORD(STACK[0x34C]) ^ 0x9C36FBA)) >> 1);
  v200 = (v199 ^ 0x9C36FBA) & (v105 ^ 0x79F3F3EA);
  v201 = v199 & 0x79F3F3E1;
  v202 = (((v199 ^ 0xCCAC156B) & ~v84 | v84 & 0xC56F7AD0) ^ 0xC56F7AD1) << v76;
  LODWORD(STACK[0x34C]) = (v202 - ((2 * v202) & 0xE8177380) - 200558143) & 0xC5E646EC ^ 0xFE1BB9D3 ^ ((((v201 ^ 0x9C363A0 ^ v200) >> v88) - ((2 * ((v201 ^ 0x9C363A0 ^ v200) >> v88)) & 0xB2F85152) - 646174551) ^ 0xE36591BA) & ((v202 - ((2 * v202) & 0xE8177380) - 200558143) ^ 0xBF4463E);
  v203 = LODWORD(STACK[0x524]) ^ ((v82 & STACK[0x524]) >> 1);
  v204 = (v75 & 0xE9D216AB ^ a3 & (v203 ^ 0xE9D216AB) ^ 2) << v76;
  v205 = ((v79 & 0xA0133CE9 | v78 & (v203 ^ 0xA0133CE9)) ^ 0xA0133CE9) >> v80;
  LODWORD(STACK[0x524]) = (v205 - ((2 * v205) & 0x3D1D67A8) - 1634815020) ^ (v204 - ((2 * v204) & 0x5A4806C0) - 1390148768) ^ 0x33AAB0B4;
  v206 = LODWORD(STACK[0x38C]) ^ ((v72 & (LODWORD(STACK[0x38C]) ^ 0x9C36FBA)) >> 1);
  v207 = (v206 ^ 0x46B4098D) & ~v84 | v84 & 0x4F776636;
  v208 = ((v207 ^ 0x4F776637) << v87) - ((2 * ((v207 ^ 0x4F776637) << v87)) & 0x75A87E2A) + 986988309;
  v209 = ((v206 ^ 0x9A61ECE8) & v85 ^ v86 & 0x93A28352) >> v88;
  LODWORD(STACK[0x38C]) = v208 & 0x9F73818 ^ 0xFEDCFFF7 ^ ((v209 - ((2 * v209) & 0x8C332F82) - 971401279) ^ 0x30115026) & (v208 ^ 0xC52BC0EA);
  v210 = LODWORD(STACK[0x3C8]) ^ ((v82 & (LODWORD(STACK[0x3C8]) ^ 0x9C36FBA)) >> 1);
  v211 = LODWORD(STACK[0x50C]) ^ ((STACK[0x50C] & v72) >> 1);
  v212 = LODWORD(STACK[0x55C]) ^ ((v82 & (LODWORD(STACK[0x55C]) ^ 0xDBD46CA6)) >> 1);
  v213 = ((v79 & 0x71776B8 | v78 & (v210 ^ 0xED41902)) ^ 0x71776B8) >> v80;
  LODWORD(STACK[0x55C]) = ((((v211 ^ 0xB23638FA) & ~v84 | v84 & 0xB23638FA) ^ 0xB23638FA) << v76) + ((v211 & v85) >> v88);
  v214 = (v75 & 0x30ED4556 ^ 0xC0002 ^ a3 & (v210 ^ 0x392E2AEC)) << v87;
  LODWORD(STACK[0x50C]) = (v213 - ((2 * v213) & 0xBA26A1A8) + 1561546964) ^ (v214 - ((2 * v214) & 0x286D9DA2) - 1808347439) ^ 0xC9259E05;
  v215 = (v212 & 0x76BB4172 ^ 0x52904022 ^ (v75 ^ 0x76B7C170) & (v212 ^ 0xDBD46CA7)) << v87;
  v216 = ((v79 & 0x8DEA2071 | v78 & (v212 ^ 0x563E4CD6)) ^ 0x8DEA2071) >> v88;
  LODWORD(STACK[0x5A8]) = (v216 - ((2 * v216) & 0x127833D0) - 1992549912) ^ (v215 - ((2 * v215) & 0x4876BAE6) - 1539613325);
  v217 = LODWORD(STACK[0x360]) ^ (((LODWORD(STACK[0x360]) ^ 0xD07286D2) & v72) >> 1);
  v218 = LODWORD(STACK[0x560]) ^ ((v72 & (LODWORD(STACK[0x560]) ^ 0xDBD46CA6)) >> 1);
  LODWORD(STACK[0x3C8]) = ((((v217 ^ 0x9385577C) & ~v84 | v84 & 0x43F7D1AE) ^ 0x43F7D1AE) << v76) + (((v217 ^ 0x39954634) & v85 ^ v86 & 0xE9E7C0E6) >> v80);
  v219 = LODWORD(STACK[0x364]) ^ ((v82 & (LODWORD(STACK[0x364]) ^ 0xD07286D2)) >> 1);
  v220 = (((v219 ^ 0xF4D058EF) & ~v84 | v84 & 0x24A2DE3C) ^ 0x24A2DE3D) << v87;
  v221 = (((v78 & (v218 ^ 0x54E17556) | v79 & 0x8F3519F1) ^ 0x8F3519F1) >> v80) + ((v75 & 0x5B7EFC68 ^ 0xC8000 ^ a3 & (v218 ^ 0x80AA90CF)) << v76);
  LODWORD(STACK[0x344]) = v221;
  v222 = (v219 & 0x157750BA ^ 0x10720092 ^ (v219 ^ 0xD07286D2) & (v105 ^ 0x157750B1)) >> v88;
  LODWORD(STACK[0x364]) = (v220 - ((2 * v220) & 0xA368FF20) + 1370783632) & 0xF1E2848C ^ 0x5FBD7FF3 ^ ((v220 - ((2 * v220) & 0xA368FF20) + 1370783632) ^ 0xAE4B806F) & ((v222 - ((2 * v222) & 0x2AF774AC) - 1787053482) ^ 0x9B66C125);
  v223 = LODWORD(STACK[0x51C]) ^ (((LODWORD(STACK[0x358]) ^ 0xDBD46CA6) & v72) >> 1);
  v224 = (v223 ^ 0xD01FAD38) & ~v84 | v84 & 0xC01F6E20;
  v225 = (((v223 ^ 0xAB83D865) & v78 | v79 & 0xBB831B7D) ^ 0xBB831B7D) >> v88;
  v226 = ((v224 ^ 0xC01F6E20) << v76) - ((2 * ((v224 ^ 0xC01F6E20) << v76)) & 0xB6EA8774) + 1534411707;
  v227 = v226 & 0x9D55FF24 ^ 0x7BFF43FB ^ ((v225 - ((2 * v225) & 0x377956CC) + 465349478) ^ 0x7916ABBD) & (v226 ^ 0xA48ABC44);
  LODWORD(STACK[0x33C]) = v227;
  v228 = LODWORD(STACK[0x370]) ^ ((v82 & (LODWORD(STACK[0x370]) ^ 0xD07286D2)) >> 1);
  v229 = (v228 ^ 0x82BBDD37) & v85 ^ v86 & 0x52C95BE5;
  v230 = (a3 & (v228 ^ 0x57E0AC3E) ^ v75 & 0x87922AEC) << v87;
  LODWORD(STACK[0x370]) = ((v229 >> v80) - ((2 * (v229 >> v80)) & 0x7C779B2A) + 1044106645) ^ (v230 - ((2 * v230) & 0xB45DCDE8) - 634460428) ^ 0xE4152B61;
  v231 = LODWORD(STACK[0x31C]) ^ (((LODWORD(STACK[0x528]) ^ 0xDBD46CA6) & v82) >> 1);
  v232 = v75;
  v233 = ((((v231 ^ 0x1154E71B) & v78 | v79 & 0x25962EEB) ^ 0x25962EEB) >> v88) + ((v231 & 0xC3D1EFF4 ^ 0xC0C9F0 ^ (v231 ^ 0x34C2C9F0) & (v75 ^ 0xC3DD6FF6)) << v153);
  LODWORD(STACK[0x340]) = v233;
  v234 = LODWORD(STACK[0x374]) ^ (((LODWORD(STACK[0x374]) ^ 0xD07286D2) & v72) >> 1);
  v235 = ((v234 ^ 0x16CB3933) & v85 ^ v86 & 0xC6B9BFE1) >> v80;
  v236 = LODWORD(STACK[0x564]) ^ ((v82 & STACK[0x564]) >> 1);
  v237 = (((v234 ^ 0x5EA41E51) & ~v84 | v84 & 0x8ED69882) ^ 0x8ED69883) << v87;
  LODWORD(STACK[0x374]) = (v235 - ((2 * v235) & 0xA8D17334) + 1416149402) ^ 0x446C4161 ^ (v237 - ((2 * v237) & 0x2009F1F6) + 268761339);
  v238 = (((v236 ^ 0xC51389CE) & ~v84 | v84 & 0xC51389CE) ^ 0xC51389CE) << v87;
  v239 = (v105 & 0x6C0F738C ^ (v236 ^ 0x6C0F738C) & v85 ^ 8) >> v88;
  v240 = LODWORD(STACK[0x3F0]) ^ (((LODWORD(STACK[0x3F0]) ^ 0x23907952) & v72) >> 1);
  v241 = (v232 & 0x5A066288 ^ a3 & (v240 ^ 0x79961BDA) ^ 0x40000) << v153;
  v242 = ((v78 & (v240 ^ 0x8C4E12F7) | v79 & 0xAFDE6BA5) ^ 0xAFDE6BA5) >> v80;
  LODWORD(STACK[0x3F0]) = (v242 - ((2 * v242) & 0xFD574EB2) - 22304935) ^ (v241 - ((2 * v241) & 0xEFE50394) + 2012381643) ^ 0x89592692;
  v243 = (v239 - ((2 * v239) & 0xE26CBF32) - 248094823) ^ (v238 - ((2 * v238) & 0x64F3DFAA) - 1300631595) ^ 0x434FB04C;
  LODWORD(STACK[0x32C]) = v243;
  v244 = LODWORD(STACK[0x548]) ^ ((v72 & STACK[0x548]) >> 1);
  v245 = LODWORD(STACK[0x350]) ^ ((v82 & (LODWORD(STACK[0x350]) ^ 0x23907952)) >> 1);
  v246 = ((v232 & 0x3D6B10AF ^ 0x80002 ^ a3 & (v244 ^ 0x3D6B10AF)) << v153) + ((v105 & 0x6780ADC8 ^ (v244 ^ 0x6780ADC8) & v85 ^ 8) >> v80);
  LODWORD(STACK[0x338]) = v246;
  v247 = (v245 ^ 0xFC5A44F9) & ~v84 | v84 & 0xDFCA3DAA;
  v248 = LODWORD(STACK[0x530]) ^ ((STACK[0x530] & v72) >> 1);
  v249 = ((v79 & 0x55DA09EA | v78 & (v245 ^ 0x764A70B8)) ^ 0x55DA09EA) >> v88;
  LODWORD(STACK[0x5C0]) = v78;
  LODWORD(STACK[0x360]) = (((v247 ^ 0xDFCA3DAB) << v87) - ((2 * ((v247 ^ 0xDFCA3DAB) << v87)) & 0x3C11E938) + 503903388) ^ (v249 - ((2 * v249) & 0x891A455C) - 997383506) ^ 0xDA85D632;
  v250 = LODWORD(STACK[0x3F8]) ^ ((v82 & (LODWORD(STACK[0x3F8]) ^ 0x23907952)) >> 1);
  v251 = ((((v248 ^ 0x5BA5FCC0) & v78 | v79 & 0x5BA5FCC0) ^ 0x5BA5FCC0) >> v80) + ((((v248 ^ 0x3CF19C62) & ~v84 | v84 & 0x3CF19C62) ^ 0x3CF19C62) << v87);
  LODWORD(STACK[0x31C]) = v251;
  v252 = (v232 & 0x756BFDD6 ^ 0x88002 ^ a3 & (v250 ^ 0x56FB8484)) << v153;
  v253 = (v250 & 0x6C191C89 ^ 0x20101800 ^ (v250 ^ 0x23907952) & (v105 ^ 0x6C191C82)) >> v88;
  v254 = v253 + 548215352 + (~(2 * v253) | 0xBEA5CB91);
  LODWORD(STACK[0x358]) = v254 & 0xB2633DD5 ^ 0x6DBDDA3F ^ ((v252 - ((2 * v252) & 0x1FABCC98) - 1881807284) ^ 0xC2492466) & (v254 ^ 0xDF52E5C8);
  v255 = LODWORD(STACK[0x554]) ^ ((v82 & STACK[0x554]) >> 1);
  v256 = (((v255 ^ 0x99F89C6) & ~v84 | v84 & 0x99F89C6) ^ 0x99F89C6) << v87;
  v257 = LODWORD(STACK[0x37C]) ^ (((LODWORD(STACK[0x37C]) ^ 0x23907952) & v72) >> 1);
  v258 = (((v255 & v85) >> v80) - ((2 * ((v255 & v85) >> v80)) & 0xA3F21A68) - 772207308) ^ 0xC56F0028 ^ (v256 - ((2 * v256) & 0x292C1A38) + 345378076);
  LODWORD(STACK[0x350]) = v258;
  v259 = v78 & (v257 ^ 0xF494132) | v79 & 0x2CD93860;
  v260 = STACK[0x330];
  v261 = __ROR4__(LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x330]), 10);
  LODWORD(STACK[0x37C]) = ((v232 & 0x2CCF6194 ^ a3 & (v257 ^ 0xF5F18C6) ^ 0xC0000) << v153) + ((v259 ^ 0x2CD93860u) >> v88);
  LODWORD(STACK[0x310]) = v121;
  v262 = STACK[0x35C];
  v263 = LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x510]) ^ v221 ^ LODWORD(STACK[0x4CC]) ^ LODWORD(STACK[0x4F0]) ^ LODWORD(STACK[0x4D4]) ^ v233 ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x4B0]);
  v264 = STACK[0x324];
  v265 = STACK[0x328];
  v266 = v227 ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x5A4]);
  v267 = STACK[0x36C];
  v268 = v263 ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x328]) ^ __ROR4__(v261 ^ 0xC3005FB2, 22) ^ v266 ^ LODWORD(STACK[0x36C]) ^ (v121 + 1063208500 + (~(2 * v121) | 0x81417399));
  v269 = LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x55C]) ^ v258 ^ v243 ^ v246;
  v270 = STACK[0x5A8];
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x5A8]) ^ 0x2D07449B;
  v271 = STACK[0x334];
  LODWORD(STACK[0x5A8]) = v269 ^ v270 ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x4DC]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x59C]) ^ v251 ^ LODWORD(STACK[0x4E0]) ^ 0xAF64BECD ^ ((v268 ^ 0x90F97E1E) - 2 * ((v268 ^ 0x90F97E1E) & 0x3C7D641D ^ v268 & 1) + 1014850588);
  v272 = STACK[0x5AC];
  v273 = LODWORD(STACK[0x380]) ^ v88 ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x5AC]) ^ 0xF5AF87C2;
  v274 = v273 - 736053989 + (~(2 * v273) | 0x57BE95C9);
  v275 = LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x544]) ^ (2 * (LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x5C8]))) & 0x77CD96BA ^ LODWORD(STACK[0x354]) ^ 0xFF4D7453;
  v276 = STACK[0x5B0];
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x5B0]) ^ 0x36053820 ^ (v275 - ((2 * v275) & 0xA8416A36) - 736053989);
  v277 = LODWORD(STACK[0x388]) ^ 0xB6B71407;
  v278 = v277 ^ (LODWORD(STACK[0x410]) - ((2 * LODWORD(STACK[0x410])) & 0x4074166) + 33792179);
  v279 = (LODWORD(STACK[0x408]) ^ v272 ^ 0xF4B23464) - ((2 * (LODWORD(STACK[0x408]) ^ v272 ^ 0xF4B23464)) & 0xA8416A36);
  v280 = v272 ^ LODWORD(STACK[0x3E0]) ^ 0xF4B23464;
  v281 = (LODWORD(STACK[0x3D0]) ^ v277 ^ 0xC186A3E0) - 2 * ((LODWORD(STACK[0x3D0]) ^ v277 ^ 0xC186A3E0) & 0x3E09ADDF ^ (LODWORD(STACK[0x3D0]) ^ v277) & 0xB) - 1106661932;
  v282 = (LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x3D8]) ^ 0x7731B7E7) - ((2 * (LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x3D8]) ^ 0x7731B7E7)) & 0x7C135BA8) - 1106661932;
  v283 = STACK[0x384];
  LODWORD(STACK[0x388]) = (v278 - ((2 * v278) & 0x7C135BA8) - 1106661932) ^ LODWORD(STACK[0x384]);
  LODWORD(STACK[0x3E0]) = v281 ^ v283;
  LODWORD(STACK[0x3D0]) = v282 ^ v283;
  v284 = STACK[0x520];
  v285 = (v274 + 1) ^ LODWORD(STACK[0x520]);
  LODWORD(STACK[0x380]) = (v279 - 736053989) ^ LODWORD(STACK[0x520]);
  LODWORD(STACK[0x384]) = (v280 - ((2 * v280) & 0xA8416A36) - 736053989) ^ v284;
  v286 = LODWORD(STACK[0x368]) ^ v272 ^ v276;
  v287 = LODWORD(STACK[0x438]) ^ ((v82 & STACK[0x438]) >> 1);
  v288 = v82;
  v289 = LODWORD(STACK[0x440]) ^ ((v82 & STACK[0x440]) >> 1);
  v290 = LODWORD(STACK[0x448]) ^ 0x33222F5E;
  LODWORD(STACK[0x5C8]) = ((a3 & v287) << v87) + ((v287 & v85) >> v80);
  v291 = ((a3 & v289) << v87) + ((v289 & v85) >> v80);
  LODWORD(STACK[0x440]) = (((v72 & v290) >> 1) - (v72 & v290 & 0x84FCD830) + 1115581464) ^ LODWORD(STACK[0x420]);
  v292 = LODWORD(STACK[0x45C]) ^ ((v288 & STACK[0x45C]) >> 1);
  LODWORD(STACK[0x390]) = ((a3 & v292) << v153) + ((v292 & v85) >> v80);
  v293 = LODWORD(STACK[0x450]) ^ ((v72 & STACK[0x450]) >> 1);
  v294 = STACK[0x5D0];
  LODWORD(STACK[0x3D8]) = ((v293 & ~LODWORD(STACK[0x5D0])) << v87) | ((v293 & v85) >> v80);
  v295 = (((v288 & (LODWORD(STACK[0x428]) ^ 0xF8160532)) >> 1) - (v288 & (LODWORD(STACK[0x428]) ^ 0xF8160532) & 0xD0ACB322) + 1750489489) ^ LODWORD(STACK[0x430]);
  LODWORD(STACK[0x598]) = a3;
  v296 = STACK[0x5C0];
  LODWORD(STACK[0x5AC]) = ((a3 & v295) << v153) | ((STACK[0x5C0] & v295) >> v88);
  v297 = (((v72 & (LODWORD(STACK[0x5E0]) ^ 0x381AE672)) >> 1) - (v72 & (LODWORD(STACK[0x5E0]) ^ 0x381AE672) & 0x564CD294) + 723937610) ^ LODWORD(STACK[0x418]);
  LODWORD(STACK[0x3F8]) = ((a3 & v297) << v87) | ((v296 & v297) >> v88);
  v298 = -1480638885 * (LODWORD(STACK[0x4AC]) - LODWORD(STACK[0x4A8])) - ((-1480638885 * (LODWORD(STACK[0x4AC]) - LODWORD(STACK[0x4A8]))) >> 16);
  v299 = (1421980763 * (v298 ^ (v298 >> 8))) ^ ((1421980763 * (v298 ^ (v298 >> 8))) >> 16);
  v300 = -1633387403 * (v299 + (v299 >> 8)) - ((-1633387403 * (v299 + (v299 >> 8))) >> 16);
  v301 = STACK[0x4D0];
  v302 = v267;
  v303 = -1480638885 * (v301 - v267) - ((-1480638885 * (v301 - v267)) >> 16);
  v304 = v303 ^ (v303 >> 8);
  v305 = v260 ^ v304 ^ 0xB792AC9F ^ ((v304 | 0xB834963F) - ((v304 | 0xB834963F) ^ v304) - ((2 * ((v304 | 0xB834963F) - ((v304 | 0xB834963F) ^ v304))) & 0x36534BD0) - 1691769368);
  v306 = -1633387403 * (((1421980763 * v304) ^ ((1421980763 * v304) >> 16)) + (((1421980763 * v304) ^ ((1421980763 * v304) >> 16)) >> 8));
  v307 = v306 - HIWORD(v306) - ((v306 - HIWORD(v306)) >> 8);
  v308 = (v307 - ((2 * v307) & 0x78FAC838) + 1014850588) ^ v271;
  v309 = v308 + v307 - 2 * (v308 & v307);
  v310 = 1874373651 * (v300 - (v300 >> 8)) - ((1874373651 * (v300 - (v300 >> 8))) >> 16);
  v311 = v310 ^ (v310 >> 8);
  v312 = STACK[0x630];
  LODWORD(STACK[0x5B0]) = LODWORD(STACK[0x5B4]) + STACK[0x630] + v311;
  LODWORD(STACK[0x5B4]) = LODWORD(STACK[0x3D4]) + v312 + v311;
  v313 = v311 + v312;
  v314 = STACK[0x4F4];
  if (v313)
  {
    v315 = v305;
  }

  else
  {
    v315 = STACK[0x4F4];
  }

  if (v313)
  {
    v316 = STACK[0x4F4];
  }

  else
  {
    v316 = v264;
  }

  if (v313)
  {
    v317 = v264;
  }

  else
  {
    v317 = v262;
  }

  if (v313)
  {
    v318 = v262;
  }

  else
  {
    v318 = v305;
  }

  v319 = STACK[0x5A0];
  if (v313)
  {
    v320 = v265;
  }

  else
  {
    v320 = STACK[0x5A0];
  }

  v321 = STACK[0x4D4];
  if ((v313 & 1) == 0)
  {
    v319 = STACK[0x4D4];
  }

  v322 = STACK[0x534];
  if (v313)
  {
    v323 = STACK[0x534];
  }

  else
  {
    v321 = STACK[0x534];
    v323 = v265;
  }

  v324 = STACK[0x52C];
  v325 = STACK[0x310];
  if (v313)
  {
    v326 = STACK[0x52C];
  }

  else
  {
    v326 = STACK[0x310];
  }

  v327 = STACK[0x510];
  if (v313)
  {
    v328 = STACK[0x510];
  }

  else
  {
    v328 = STACK[0x52C];
  }

  v329 = STACK[0x508];
  if (v313)
  {
    v330 = STACK[0x508];
  }

  else
  {
    v330 = STACK[0x510];
  }

  if (v313)
  {
    v331 = STACK[0x310];
  }

  else
  {
    v331 = STACK[0x508];
  }

  v332 = STACK[0x4EC];
  v333 = STACK[0x4CC];
  if (v313)
  {
    v334 = STACK[0x4EC];
  }

  else
  {
    v334 = STACK[0x4CC];
  }

  LODWORD(STACK[0x438]) = v334;
  v335 = STACK[0x4E8];
  if ((v313 & 1) == 0)
  {
    v333 = STACK[0x4E8];
  }

  LODWORD(STACK[0x430]) = v333;
  v336 = STACK[0x4F0];
  if ((v313 & 1) == 0)
  {
    v335 = STACK[0x4F0];
  }

  LODWORD(STACK[0x410]) = v335;
  if ((v313 & 1) == 0)
  {
    v336 = v332;
  }

  LODWORD(STACK[0x420]) = v336;
  v337 = STACK[0x4B0];
  if (v313)
  {
    v338 = v302;
  }

  else
  {
    v338 = STACK[0x4B0];
  }

  LODWORD(STACK[0x418]) = v338;
  v339 = STACK[0x4B8];
  if ((v313 & 1) == 0)
  {
    v337 = STACK[0x4B8];
  }

  LODWORD(STACK[0x428]) = v337;
  if ((v313 & 1) == 0)
  {
    v339 = v301;
  }

  LODWORD(STACK[0x400]) = v339;
  if (v313)
  {
    v340 = v301;
  }

  else
  {
    v340 = v302;
  }

  LODWORD(STACK[0x408]) = v340;
  v341 = STACK[0x514];
  v342 = STACK[0x4DC];
  if (v313)
  {
    v343 = STACK[0x4DC];
  }

  else
  {
    v343 = STACK[0x514];
  }

  LODWORD(STACK[0x5A0]) = v343;
  v344 = STACK[0x5A4];
  if (v313)
  {
    v342 = STACK[0x5A4];
  }

  LODWORD(STACK[0x554]) = v342;
  if (v313)
  {
    v344 = v309;
  }

  LODWORD(STACK[0x564]) = v344;
  if (v313)
  {
    v345 = v341;
  }

  else
  {
    v345 = v309;
  }

  LODWORD(STACK[0x514]) = v345;
  v346 = STACK[0x59C];
  v347 = STACK[0x4D8];
  if (v313)
  {
    v348 = STACK[0x4D8];
  }

  else
  {
    v348 = STACK[0x59C];
  }

  LODWORD(STACK[0x558]) = v348;
  v349 = STACK[0x538];
  if ((v313 & 1) == 0)
  {
    v346 = STACK[0x538];
  }

  LODWORD(STACK[0x59C]) = v346;
  v350 = STACK[0x504];
  if ((v313 & 1) == 0)
  {
    v349 = STACK[0x504];
  }

  LODWORD(STACK[0x548]) = v349;
  if (v313)
  {
    v351 = v350;
  }

  else
  {
    v351 = v347;
  }

  LODWORD(STACK[0x560]) = v351;
  v352 = STACK[0x4C4];
  v353 = STACK[0x4C0];
  if (v313)
  {
    v354 = STACK[0x4C0];
  }

  else
  {
    v354 = STACK[0x4C4];
  }

  LODWORD(STACK[0x520]) = v354;
  v355 = STACK[0x4BC];
  if (v313)
  {
    v353 = STACK[0x4BC];
  }

  LODWORD(STACK[0x538]) = v353;
  v356 = STACK[0x378];
  if (v313)
  {
    v355 = STACK[0x378];
  }

  LODWORD(STACK[0x504]) = v355;
  if ((v313 & 1) == 0)
  {
    v352 = v356;
  }

  LODWORD(STACK[0x528]) = v352;
  v357 = STACK[0x4E0];
  v358 = STACK[0x524];
  if (v313)
  {
    v359 = STACK[0x524];
  }

  else
  {
    v359 = STACK[0x4E0];
  }

  LODWORD(STACK[0x52C]) = v359;
  v360 = STACK[0x55C];
  if (v313)
  {
    v361 = STACK[0x55C];
  }

  else
  {
    v361 = v358;
  }

  LODWORD(STACK[0x534]) = v361;
  v362 = STACK[0x4C8];
  if (v313)
  {
    v363 = STACK[0x4C8];
  }

  else
  {
    v363 = v360;
  }

  LODWORD(STACK[0x510]) = v363;
  if (v313)
  {
    v362 = v357;
  }

  LODWORD(STACK[0x55C]) = v362;
  v364 = STACK[0x38C];
  v365 = STACK[0x50C];
  if (v313)
  {
    v366 = STACK[0x50C];
  }

  else
  {
    v366 = STACK[0x38C];
  }

  LODWORD(STACK[0x51C]) = v366;
  v367 = STACK[0x348];
  if (v313)
  {
    v365 = STACK[0x348];
  }

  LODWORD(STACK[0x530]) = v365;
  v368 = STACK[0x34C];
  if (v313)
  {
    v367 = STACK[0x34C];
  }

  LODWORD(STACK[0x50C]) = v367;
  if (v313)
  {
    v369 = v364;
  }

  else
  {
    v369 = v368;
  }

  LODWORD(STACK[0x518]) = v369;
  v370 = STACK[0x33C];
  v371 = STACK[0x340];
  if (v313)
  {
    v372 = STACK[0x340];
  }

  else
  {
    v372 = STACK[0x33C];
  }

  LODWORD(STACK[0x524]) = v372;
  v373 = STACK[0x344];
  if (v313)
  {
    v374 = v370;
  }

  else
  {
    v374 = STACK[0x344];
  }

  LODWORD(STACK[0x544]) = v374;
  v375 = STACK[0x320];
  if (v313)
  {
    v376 = v373;
  }

  else
  {
    v376 = STACK[0x320];
  }

  LODWORD(STACK[0x508]) = v376;
  if (v313)
  {
    v377 = v375;
  }

  else
  {
    v377 = v371;
  }

  LODWORD(STACK[0x4E0]) = v377;
  v378 = STACK[0x32C];
  v379 = STACK[0x338];
  if (v313)
  {
    v380 = STACK[0x338];
  }

  else
  {
    v380 = STACK[0x32C];
  }

  LODWORD(STACK[0x4E8]) = v380;
  v381 = STACK[0x31C];
  if (v313)
  {
    v382 = STACK[0x31C];
  }

  else
  {
    v382 = v379;
  }

  LODWORD(STACK[0x4F4]) = v382;
  v383 = STACK[0x350];
  if (v313)
  {
    v384 = STACK[0x350];
  }

  else
  {
    v384 = v381;
  }

  LODWORD(STACK[0x4D8]) = v384;
  if (v313)
  {
    v385 = v378;
  }

  else
  {
    v385 = v383;
  }

  LODWORD(STACK[0x4DC]) = v385;
  v386 = STACK[0x3C8];
  v387 = STACK[0x364];
  if (v313)
  {
    v388 = STACK[0x364];
  }

  else
  {
    v388 = STACK[0x3C8];
  }

  LODWORD(STACK[0x4EC]) = v388;
  v389 = STACK[0x370];
  if (v313)
  {
    v390 = STACK[0x370];
  }

  else
  {
    v390 = v387;
  }

  LODWORD(STACK[0x450]) = v390;
  v391 = STACK[0x374];
  if (v313)
  {
    v392 = v386;
  }

  else
  {
    v392 = STACK[0x374];
  }

  LODWORD(STACK[0x448]) = v392;
  if (v313)
  {
    v393 = v391;
  }

  else
  {
    v393 = v389;
  }

  LODWORD(STACK[0x4D0]) = v393;
  v394 = STACK[0x3F0];
  v395 = STACK[0x37C];
  if (v313)
  {
    v396 = STACK[0x3F0];
  }

  else
  {
    v396 = STACK[0x37C];
  }

  LODWORD(STACK[0x4F0]) = v396;
  v397 = STACK[0x360];
  if (v313)
  {
    v398 = STACK[0x360];
  }

  else
  {
    v398 = v394;
  }

  LODWORD(STACK[0x4C4]) = v398;
  v399 = STACK[0x358];
  if (v313)
  {
    v400 = STACK[0x358];
  }

  else
  {
    v400 = v397;
  }

  LODWORD(STACK[0x4D4]) = v400;
  if (v313)
  {
    v401 = v395;
  }

  else
  {
    v401 = v399;
  }

  LODWORD(STACK[0x4B8]) = v401;
  v402 = STACK[0x3CC];
  v403 = STACK[0x388];
  if (v313)
  {
    v404 = STACK[0x388];
  }

  else
  {
    v404 = STACK[0x3CC];
  }

  LODWORD(STACK[0x4CC]) = v404;
  if (v313)
  {
    v405 = v286;
  }

  else
  {
    v405 = v403;
  }

  LODWORD(STACK[0x4C0]) = v405;
  if (v313)
  {
    v406 = v285;
  }

  else
  {
    v406 = v286;
  }

  LODWORD(STACK[0x4A8]) = v406;
  if (v313)
  {
    v407 = v402;
  }

  else
  {
    v407 = v285;
  }

  LODWORD(STACK[0x4B0]) = v407;
  v408 = STACK[0x3D0];
  v409 = STACK[0x380];
  if (v313)
  {
    v410 = STACK[0x3D0];
  }

  else
  {
    v410 = STACK[0x380];
  }

  LODWORD(STACK[0x4C8]) = v410;
  v411 = STACK[0x3E0];
  if (v313)
  {
    v412 = v409;
  }

  else
  {
    v412 = STACK[0x3E0];
  }

  LODWORD(STACK[0x4AC]) = v412;
  v413 = STACK[0x384];
  if (v313)
  {
    v414 = v411;
  }

  else
  {
    v414 = STACK[0x384];
  }

  LODWORD(STACK[0x4BC]) = v414;
  if (v313)
  {
    v415 = v413;
  }

  else
  {
    v415 = v408;
  }

  LODWORD(STACK[0x45C]) = v415;
  v416 = v313 + LODWORD(STACK[0x3E8]);
  LODWORD(STACK[0x5A4]) = v416;
  v417 = (v313 & 2) == 0;
  if ((v313 & 2) != 0)
  {
    v418 = v316;
  }

  else
  {
    v418 = v318;
  }

  if ((v313 & 2) != 0)
  {
    v419 = v318;
  }

  else
  {
    v419 = v316;
  }

  if ((v313 & 2) != 0)
  {
    v420 = v317;
  }

  else
  {
    v420 = v315;
  }

  if ((v313 & 2) != 0)
  {
    v421 = v315;
  }

  else
  {
    v421 = v317;
  }

  if ((v313 & 2) != 0)
  {
    v422 = v320;
  }

  else
  {
    v422 = v321;
  }

  LODWORD(STACK[0x3C8]) = v422;
  if ((v313 & 2) != 0)
  {
    v423 = v321;
  }

  else
  {
    v423 = v320;
  }

  LODWORD(STACK[0x3CC]) = v423;
  if ((v313 & 2) != 0)
  {
    v424 = v326;
  }

  else
  {
    v424 = v330;
  }

  LODWORD(STACK[0x3E0]) = v424;
  if ((v313 & 2) != 0)
  {
    v425 = v330;
  }

  else
  {
    v425 = v326;
  }

  LODWORD(STACK[0x3F0]) = v425;
  if ((v313 & 2) != 0)
  {
    v426 = v319;
  }

  else
  {
    v426 = v323;
  }

  LODWORD(STACK[0x3D0]) = v426;
  if ((v313 & 2) != 0)
  {
    v427 = v323;
  }

  else
  {
    v427 = v319;
  }

  if ((v313 & 2) != 0)
  {
    v428 = v331;
  }

  else
  {
    v428 = v328;
  }

  LODWORD(STACK[0x3E8]) = v428;
  if ((v313 & 2) != 0)
  {
    v429 = v328;
  }

  else
  {
    v429 = v331;
  }

  LODWORD(STACK[0x3D4]) = v429;
  v430 = STACK[0x46C];
  v431 = STACK[0x5F0];
  v432 = STACK[0x46C] & 0x5ACA4E5A ^ 0xB5949CB5;
  v433 = STACK[0x46C] & 0x2004E1A ^ 0x24040C95 ^ (LODWORD(STACK[0x5F0]) ^ 0x2608CE9D) & v432;
  v434 = STACK[0x468];
  v435 = STACK[0x468] & 0x5ACA4E5A ^ 0xB5949CB5;
  v436 = (STACK[0x46C] & 0x42400650 ^ 0x148415 ^ v432 & (LODWORD(STACK[0x5DC]) ^ 0x4254865E)) >> v88;
  v437 = LODWORD(STACK[0x5C8]) ^ v291;
  v438 = v437 ^ v436 ^ (v433 << v153) ^ LODWORD(STACK[0x390]) ^ v418;
  v439 = STACK[0x468] & 0x18004A40 ^ 0x14149805 ^ v435 & (v294 ^ 0xE3CA04BA);
  v440 = (STACK[0x468] & 0xA404A1A ^ 0x810018B1 ^ (LODWORD(STACK[0x5E8]) ^ 0x749E8444) & v435) >> LODWORD(STACK[0x618]);
  v441 = LODWORD(STACK[0x390]) ^ v291;
  v442 = v441 ^ (v439 << v87) ^ v440 ^ LODWORD(STACK[0x5C8]) ^ v419;
  v443 = v87;
  v444 = v437 ^ LODWORD(STACK[0x390]) ^ ((v433 << v87) | v436) ^ v421;
  LOBYTE(v436) = v153;
  v445 = v441 ^ LODWORD(STACK[0x5C8]) ^ (v440 | (v439 << v153)) ^ v420;
  v446 = *(v312 + 4 * BYTE2(v444)) ^ __ROR4__(*(v312 + 4 * BYTE1(v442)), 8) ^ __ROR4__(*(v312 + 4 * v445), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v438)), 24);
  v447 = __ROR4__(v427 ^ __ROR4__(*(v312 + 4 * BYTE1(v445)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v444)), 24) ^ __ROR4__(*(v312 + 4 * v438), 16) ^ *(v312 + 4 * BYTE2(v442)), 8);
  v448 = STACK[0x5E8];
  v449 = STACK[0x46C] & 0x3FE5807D ^ 0x7FCB00FA;
  v450 = STACK[0x618];
  v451 = ((v430 & 0x2E618001 ^ 0x2E4B0000 ^ (LODWORD(STACK[0x5E8]) ^ 0x518400FE) & v449) >> LODWORD(STACK[0x618])) | ((v430 & 0x1D640015 ^ 0x5D480090 ^ (LODWORD(STACK[0x5F0]) ^ 0x5D608097) & v449) << v436);
  v452 = STACK[0x468] & 0x3FE5807D ^ 0x7FCB00FA;
  v453 = STACK[0x5DC];
  v454 = v443;
  v455 = v88;
  v456 = ((v434 & 0xDE18021 ^ 0xDC900A0 ^ v452 & (LODWORD(STACK[0x5DC]) ^ 0xDE980AAu)) >> v88) | ((v434 & 0x18C00029 ^ 0x18C00028 ^ v452 & (v294 ^ 0x672F80D6)) << v443);
  v457 = STACK[0x440] & ~v294;
  v458 = v294;
  v459 = (STACK[0x5C0] & LODWORD(STACK[0x440])) >> v88;
  v460 = v459 ^ (v457 << v443);
  v461 = STACK[0x3D8];
  v462 = v460 ^ LODWORD(STACK[0x3D8]);
  v463 = v462 ^ v456 ^ LODWORD(STACK[0x3C8]);
  v464 = STACK[0x5B0];
  v465 = v416 - LODWORD(STACK[0x5B0]);
  LODWORD(STACK[0x440]) = v465;
  v466 = v463 ^ (v446 + v465);
  v467 = v462 ^ v451 ^ v464 ^ LODWORD(STACK[0x5B4]) ^ __ROR4__(v447 ^ 0x9D96AD32, 24) ^ 0x96AD329D;
  v468 = v462 ^ (((v434 & 0x25250028 ^ 0x6501002A ^ (v448 ^ 0x1ACA80D5) & v452) >> v455) | ((v434 & 0x2261802C ^ 0x22410028 ^ v452 & (v458 ^ 0x5D8E00D3)) << v436)) ^ LODWORD(STACK[0x3CC]) ^ __ROR4__(*(v312 + 4 * v444), 16) ^ *(v312 + 4 * BYTE2(v445)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v442)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v438)), 8);
  v469 = ((v430 & 0x20048005 ^ 0x20080000 ^ v449 & (v453 ^ 0x200C800Eu)) >> v450) ^ v461 ^ v459 ^ ((v457 ^ v430 & 0x35858021 ^ (v431 ^ 0x358900A3) & v449 ^ 0x358100A0) << v454) ^ LODWORD(STACK[0x3D0]) ^ __ROR4__(*(v312 + 4 * HIBYTE(v445)), 24) ^ __ROR4__(*(v312 + 4 * v442), 16) ^ *(v312 + 4 * BYTE2(v438)) ^ __ROR4__(*(v312 + 4 * BYTE1(v444)), 8);
  v470 = v453;
  v471 = v434 & 0x7839010C ^ 0xF0720219;
  v472 = v430 & 0x7839010C ^ 0xF0720219;
  v473 = LODWORD(STACK[0x5AC]) ^ LODWORD(STACK[0x3F8]);
  v474 = (v434 & 0x38300108 ^ 0xB0320218 ^ (v431 ^ 0xB83A0318) & v471) << v436;
  v475 = v473 ^ (v474 | ((v434 & 0x10100008 ^ 0x90100009 ^ v471 & (v453 ^ 0x90100000)) >> v450)) ^ LODWORD(STACK[0x3D4]) ^ *(v312 + 4 * BYTE2(v469)) ^ __ROR4__(*(v312 + 4 * v467), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v466)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v468)), 24);
  v476 = (v430 & 0x6011000C ^ 0x60100219 ^ v472 & (v458 ^ 0x986A0100)) << v454;
  v477 = v473 ^ v476 ^ ((v430 & 0x28010C ^ 0x220209 ^ (v448 ^ 0xF8510010) & v472) >> v455) ^ LODWORD(STACK[0x3E0]) ^ __ROR4__(*(v312 + 4 * BYTE1(v469)), 8) ^ __ROR4__(*(v312 + 4 * v466), 16) ^ *(v312 + 4 * BYTE2(v468)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v467)), 24);
  v478 = v473 ^ ((v434 & 0x8000C ^ 0x80400019 ^ (v448 ^ 0x78330300) & v471) >> v455) ^ v474 ^ LODWORD(STACK[0x3E8]) ^ __ROR4__(*(v312 + 4 * v469), 16) ^ *(v312 + 4 * BYTE2(v467)) ^ __ROR4__(*(v312 + 4 * BYTE1(v468)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v466)), 24);
  LOBYTE(v431) = v450;
  v479 = v473 ^ (((v430 & 0x28090108 ^ 0x20400008 ^ v472 & (v453 ^ 0x28490101)) >> v450) | v476) ^ LODWORD(STACK[0x3F0]) ^ __ROR4__(*(v312 + 4 * BYTE1(v467)), 8) ^ *(v312 + 4 * BYTE2(v466)) ^ __ROR4__(*(v312 + 4 * v468), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v469)), 24);
  v480 = (*(v312 + 4 * BYTE2(v478)) ^ __ROR4__(*(v312 + 4 * BYTE1(v477)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v479)), 24) ^ __ROR4__(*(v312 + 4 * v475), 16)) + 1965153319 * ((LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x550])) - LODWORD(STACK[0x54C]));
  v481 = LODWORD(STACK[0x56C]) ^ ((STACK[0x638] & LODWORD(STACK[0x56C])) >> 1);
  v482 = v458;
  v483 = v436;
  v484 = v455;
  v485 = ((STACK[0x5C0] & v481) >> v455) + ((v481 & ~v458) << v436);
  v486 = LODWORD(STACK[0x470]) ^ ((STACK[0x638] & LODWORD(STACK[0x470])) >> 1);
  v487 = v431;
  v488 = ((STACK[0x598] & v486) << v454) ^ ((STACK[0x5C0] & v486) >> v431);
  v489 = STACK[0x438];
  v490 = STACK[0x410];
  if (v417)
  {
    v491 = STACK[0x410];
  }

  else
  {
    v491 = STACK[0x438];
  }

  if (v417)
  {
    v492 = STACK[0x438];
  }

  else
  {
    v492 = STACK[0x410];
  }

  v493 = STACK[0x430];
  v494 = STACK[0x420];
  if (v417)
  {
    v495 = STACK[0x430];
  }

  else
  {
    v495 = STACK[0x420];
  }

  if (!v417)
  {
    v494 = STACK[0x430];
  }

  v496 = STACK[0x418];
  v497 = STACK[0x400];
  if (v417)
  {
    v498 = STACK[0x418];
  }

  else
  {
    v498 = STACK[0x400];
  }

  LODWORD(STACK[0x430]) = v498;
  if (v417)
  {
    v496 = v497;
  }

  LODWORD(STACK[0x438]) = v496;
  v499 = STACK[0x428];
  v500 = STACK[0x408];
  if (v417)
  {
    v501 = STACK[0x428];
  }

  else
  {
    v501 = STACK[0x408];
  }

  LODWORD(STACK[0x470]) = v501;
  if (v417)
  {
    v499 = v500;
  }

  LODWORD(STACK[0x56C]) = v499;
  v502 = v488 ^ __ROR4__(*(v312 + 4 * HIBYTE(v478)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v475)), 8) ^ __ROR4__(*(v312 + 4 * v479), 16) ^ *(v312 + 4 * BYTE2(v477));
  v503 = v448;
  v504 = v430 & 0x5B1D1203 ^ 0xB63A2407;
  v505 = v430 & 0x13040200 ^ 0xB2000000 ^ v504 & (v482 ^ 0x4C3B3407);
  v506 = v485;
  v507 = (v430 & 0xA010202 ^ 0x82020402 ^ (v448 ^ 0x753C3005) & v504) >> v487;
  v508 = v507 ^ (v505 << v483) ^ v491 ^ (v502 + v485 - 2 * (v502 & v485));
  v509 = STACK[0x5F0];
  v510 = v434 & 0x5B1D1203 ^ 0xB63A2407;
  v511 = v434 & 0x41091003 ^ 0x200A2403 ^ (LODWORD(STACK[0x5F0]) ^ 0x61073401) & v510;
  v512 = (v434 & 0xB000002 ^ 0x22220002 ^ v510 & (v470 ^ 0x2B220001)) >> v484;
  v513 = v488 ^ v485;
  v514 = v513 ^ ((v511 << v454) + v512) ^ v494 ^ v480;
  v515 = v483;
  v516 = v513 ^ v512 ^ (v511 << v483) ^ v492 ^ __ROR4__(*(v312 + 4 * v477), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v478)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v475)), 24) ^ *(v312 + 4 * BYTE2(v479));
  v517 = v513 ^ (v505 << v454) ^ v507 ^ v495 ^ __ROR4__(*(v312 + 4 * HIBYTE(v477)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v479)), 8) ^ *(v312 + 4 * BYTE2(v475)) ^ __ROR4__(*(v312 + 4 * v478), 16);
  v518 = (*(v312 + 4 * v508) >> (STACK[0x568] & 0x10) >> (STACK[0x568] & 0x10 ^ 0x10)) + (*(v312 + 4 * v508) << 16);
  v519 = v434 & 0x73A08DF4 ^ 0xE7411BE9;
  v520 = STACK[0x5C8];
  LODWORD(STACK[0x5AC]) = v485;
  v521 = v520 ^ v485;
  v522 = v520 ^ v485 ^ (((v434 & 0x70008160 ^ 0xE4010161 ^ (v509 ^ 0xF4010161) & v519) << v454) + ((v434 & 0x40A009C4 ^ 0xC4410BC9 ^ v519 & (v470 ^ 0xC4E10BC4)) >> v487)) ^ LODWORD(STACK[0x430]) ^ *(v312 + 4 * BYTE2(v516)) ^ __ROR4__(*(v312 + 4 * BYTE1(v514)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v517)), 24) ^ v518;
  v523 = v430 & 0x73A08DF4 ^ 0xE7411BE9;
  v524 = STACK[0x5D0];
  v525 = v430 & 0x43200CF4 ^ 0xC70108E0 ^ v523 & (LODWORD(STACK[0x5D0]) ^ 0x30C09309);
  v526 = v430 & 0x10A088D0 ^ 0x84400AC0 ^ (v503 ^ 0x6301152D) & v523;
  v527 = v484;
  v528 = v506 ^ (v525 << v515) ^ (v526 >> v484) ^ LODWORD(STACK[0x438]) ^ v520 ^ __ROR4__(*(v312 + 4 * BYTE1(v517)), 8) ^ __ROR4__(*(v312 + 4 * v516), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v514)), 24) ^ *(v312 + 4 * BYTE2(v508));
  v529 = v509;
  v530 = v521 ^ (((v434 & 0x52200434 ^ 0x42411029 ^ (v509 ^ 0x5261943D) & v519) << v515) + ((v434 & 0x41800D10 ^ 0xC1411B01 ^ v519 & (v470 ^ 0xC1C11F18)) >> v484)) ^ LODWORD(STACK[0x470]) ^ __ROR4__(*(v312 + 4 * v514), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v516)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v508)), 24) ^ *(v312 + 4 * BYTE2(v517));
  v531 = v521 ^ ((v526 >> v487) + (v525 << v454)) ^ LODWORD(STACK[0x56C]) ^ __ROR4__(*(v312 + 4 * HIBYTE(v516)), 24) ^ __ROR4__(*(v312 + 4 * v517), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v508)), 8) ^ *(v312 + 4 * BYTE2(v514));
  HIDWORD(v532) = *(v312 + 4 * BYTE1(v528));
  LODWORD(v532) = HIDWORD(v532);
  v533 = ((v532 >> 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v522)), 24) ^ *(v312 + 4 * BYTE2(v531)) ^ __ROR4__(*(v312 + 4 * v530), 16)) + 2091567585 * (LODWORD(STACK[0x550]) - (LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x54C])));
  v534 = STACK[0x640];
  v535 = (((v534 & (LODWORD(STACK[0x474]) ^ 0x8FF5AAAC)) >> 1) - (v534 & (LODWORD(STACK[0x474]) ^ 0x8FF5AAAC) & 0x7C5817E2) + 1043074033) ^ LODWORD(STACK[0x570]);
  v536 = STACK[0x610];
  LODWORD(STACK[0x418]) = ((STACK[0x598] & v535) << v515) | ((v535 & STACK[0x610]) >> v487);
  v537 = STACK[0x638];
  v538 = (((STACK[0x638] & (LODWORD(STACK[0x5B8]) ^ 0xB35130DE)) >> 1) - (STACK[0x638] & (LODWORD(STACK[0x5B8]) ^ 0xB35130DE) & 0xC107F3CE) + 1619261927) ^ LODWORD(STACK[0x460]);
  v539 = v524;
  v540 = STACK[0x5C0];
  v541 = ((STACK[0x5C0] & v538) >> v484) + ((v538 & ~v524) << v454);
  LODWORD(STACK[0x474]) = v541;
  v542 = (((v537 & (LODWORD(STACK[0x490]) ^ 0x90DEED8E)) >> 1) - (v537 & (LODWORD(STACK[0x490]) ^ 0x90DEED8E) & 0x83CA74E2) - 1041941903) ^ LODWORD(STACK[0x478]);
  v543 = v537 & (LODWORD(STACK[0x480]) ^ 0x7A39754A);
  LODWORD(STACK[0x430]) = ((v540 & v542) >> v484) ^ ((v542 & ~v524) << v515);
  v544 = ((v543 >> 1) - (v543 & 0x6CC53218) - 1235052276) ^ LODWORD(STACK[0x484]);
  v545 = v515;
  LODWORD(STACK[0x428]) = ((v540 & v544) >> v484) | ((v544 & ~v524) << v515);
  v546 = LODWORD(STACK[0x48C]) ^ ((v534 & STACK[0x48C]) >> 1);
  LODWORD(STACK[0x478]) = ((v546 & v536) >> v484) + ((v546 & ~v524) << v515);
  v547 = STACK[0x554];
  v548 = STACK[0x514];
  if (v417)
  {
    v549 = STACK[0x514];
  }

  else
  {
    v549 = STACK[0x554];
  }

  if (v417)
  {
    v550 = STACK[0x554];
  }

  else
  {
    v550 = STACK[0x514];
  }

  v551 = STACK[0x5A0];
  v552 = STACK[0x564];
  if (v417)
  {
    v553 = STACK[0x564];
  }

  else
  {
    v553 = STACK[0x5A0];
  }

  if (v417)
  {
    v554 = STACK[0x5A0];
  }

  else
  {
    v554 = STACK[0x564];
  }

  v555 = STACK[0x558];
  v556 = STACK[0x548];
  if (v417)
  {
    v557 = STACK[0x558];
  }

  else
  {
    v557 = STACK[0x548];
  }

  LODWORD(STACK[0x3F8]) = v557;
  if (v417)
  {
    v555 = v556;
  }

  LODWORD(STACK[0x410]) = v555;
  v558 = STACK[0x520];
  v559 = STACK[0x504];
  if (v417)
  {
    v560 = STACK[0x504];
  }

  else
  {
    v560 = STACK[0x520];
  }

  LODWORD(STACK[0x548]) = v560;
  if (v417)
  {
    v561 = v558;
  }

  else
  {
    v561 = v559;
  }

  LODWORD(STACK[0x520]) = v561;
  v562 = STACK[0x59C];
  v563 = STACK[0x560];
  if (v417)
  {
    v564 = STACK[0x59C];
  }

  else
  {
    v564 = STACK[0x560];
  }

  LODWORD(STACK[0x408]) = v564;
  if (v417)
  {
    v562 = v563;
  }

  LODWORD(STACK[0x400]) = v562;
  v565 = STACK[0x538];
  v566 = STACK[0x528];
  if (v417)
  {
    v567 = STACK[0x538];
  }

  else
  {
    v567 = STACK[0x528];
  }

  LODWORD(STACK[0x54C]) = v567;
  if (v417)
  {
    v568 = v566;
  }

  else
  {
    v568 = v565;
  }

  LODWORD(STACK[0x538]) = v568;
  v569 = STACK[0x52C];
  v570 = STACK[0x510];
  if (v417)
  {
    v571 = STACK[0x510];
  }

  else
  {
    v571 = STACK[0x52C];
  }

  LODWORD(STACK[0x460]) = v571;
  if (!v417)
  {
    v569 = v570;
  }

  LODWORD(STACK[0x484]) = v569;
  v572 = STACK[0x534];
  v573 = STACK[0x55C];
  if (v417)
  {
    v574 = STACK[0x55C];
  }

  else
  {
    v574 = STACK[0x534];
  }

  LODWORD(STACK[0x420]) = v574;
  if (!v417)
  {
    v572 = v573;
  }

  LODWORD(STACK[0x438]) = v572;
  v575 = STACK[0x51C];
  v576 = STACK[0x50C];
  if (v417)
  {
    v577 = STACK[0x51C];
  }

  else
  {
    v577 = STACK[0x50C];
  }

  LODWORD(STACK[0x558]) = v577;
  if (v417)
  {
    v578 = v576;
  }

  else
  {
    v578 = v575;
  }

  LODWORD(STACK[0x550]) = v578;
  v579 = STACK[0x530];
  v580 = STACK[0x518];
  if (v417)
  {
    v581 = STACK[0x530];
  }

  else
  {
    v581 = STACK[0x518];
  }

  LODWORD(STACK[0x55C]) = v581;
  if (v417)
  {
    v582 = v580;
  }

  else
  {
    v582 = v579;
  }

  LODWORD(STACK[0x554]) = v582;
  v583 = STACK[0x524];
  v584 = STACK[0x508];
  if (v417)
  {
    v585 = STACK[0x524];
  }

  else
  {
    v585 = STACK[0x508];
  }

  LODWORD(STACK[0x48C]) = v585;
  if (v417)
  {
    v583 = v584;
  }

  LODWORD(STACK[0x480]) = v583;
  v586 = STACK[0x450];
  v587 = STACK[0x448];
  if (v417)
  {
    v588 = STACK[0x448];
  }

  else
  {
    v588 = STACK[0x450];
  }

  LODWORD(STACK[0x564]) = v588;
  if (v417)
  {
    v589 = v586;
  }

  else
  {
    v589 = v587;
  }

  LODWORD(STACK[0x560]) = v589;
  v590 = STACK[0x544];
  v591 = STACK[0x4E0];
  if (v417)
  {
    v592 = STACK[0x4E0];
  }

  else
  {
    v592 = STACK[0x544];
  }

  LODWORD(STACK[0x470]) = v592;
  if (!v417)
  {
    v590 = v591;
  }

  LODWORD(STACK[0x490]) = v590;
  v593 = STACK[0x4E8];
  v594 = STACK[0x4D8];
  if (v417)
  {
    v595 = STACK[0x4D8];
  }

  else
  {
    v595 = STACK[0x4E8];
  }

  LODWORD(STACK[0x51C]) = v595;
  if (!v417)
  {
    v593 = v594;
  }

  LODWORD(STACK[0x4E8]) = v593;
  v596 = STACK[0x4F4];
  v597 = STACK[0x4DC];
  if (v417)
  {
    v598 = STACK[0x4F4];
  }

  else
  {
    v598 = STACK[0x4DC];
  }

  LODWORD(STACK[0x50C]) = v598;
  if (v417)
  {
    v596 = v597;
  }

  LODWORD(STACK[0x528]) = v596;
  v599 = STACK[0x4EC];
  v600 = STACK[0x4D0];
  if (v417)
  {
    v601 = STACK[0x4EC];
  }

  else
  {
    v601 = STACK[0x4D0];
  }

  LODWORD(STACK[0x56C]) = v601;
  if (v417)
  {
    v602 = v600;
  }

  else
  {
    v602 = v599;
  }

  LODWORD(STACK[0x568]) = v602;
  v603 = STACK[0x4C4];
  v604 = STACK[0x4B8];
  if (v417)
  {
    v605 = STACK[0x4B8];
  }

  else
  {
    v605 = STACK[0x4C4];
  }

  LODWORD(STACK[0x59C]) = v605;
  if (v417)
  {
    v606 = v603;
  }

  else
  {
    v606 = v604;
  }

  LODWORD(STACK[0x570]) = v606;
  v607 = STACK[0x4F0];
  v608 = STACK[0x4D4];
  if (v417)
  {
    v609 = STACK[0x4F0];
  }

  else
  {
    v609 = STACK[0x4D4];
  }

  LODWORD(STACK[0x5A8]) = v609;
  if (v417)
  {
    v610 = v608;
  }

  else
  {
    v610 = v607;
  }

  LODWORD(STACK[0x5A0]) = v610;
  v611 = STACK[0x4CC];
  v612 = STACK[0x4A8];
  if (v417)
  {
    v613 = STACK[0x4CC];
  }

  else
  {
    v613 = STACK[0x4A8];
  }

  LODWORD(STACK[0x530]) = v613;
  if (v417)
  {
    v611 = v612;
  }

  LODWORD(STACK[0x534]) = v611;
  v614 = STACK[0x4C0];
  v615 = STACK[0x4B0];
  if (v417)
  {
    v616 = STACK[0x4C0];
  }

  else
  {
    v616 = STACK[0x4B0];
  }

  LODWORD(STACK[0x544]) = v616;
  if (v417)
  {
    v614 = v615;
  }

  LODWORD(STACK[0x52C]) = v614;
  v617 = STACK[0x4AC];
  v618 = STACK[0x45C];
  if (v417)
  {
    v619 = STACK[0x4AC];
  }

  else
  {
    v619 = STACK[0x45C];
  }

  LODWORD(STACK[0x5B8]) = v619;
  if (v417)
  {
    v620 = v618;
  }

  else
  {
    v620 = v617;
  }

  LODWORD(STACK[0x610]) = v620;
  v621 = STACK[0x4C8];
  v622 = STACK[0x4BC];
  if (v417)
  {
    v623 = STACK[0x4C8];
  }

  else
  {
    v623 = STACK[0x4BC];
  }

  LODWORD(STACK[0x5C0]) = v623;
  if (v417)
  {
    v624 = v622;
  }

  else
  {
    v624 = v621;
  }

  LODWORD(STACK[0x638]) = v624;
  v625 = v529;
  v626 = v434 & 0x366840EA ^ 0x6CD081D4;
  v627 = STACK[0x5E8];
  v628 = (v434 & 0x24284008 ^ 0x6C108010 ^ (v529 ^ 0x6C30401A) & v626) << v454;
  v629 = v454;
  v630 = LODWORD(STACK[0x5C8]) ^ v541;
  v631 = v630 ^ (v628 + ((v434 & 0x10480048 ^ 0x40D08144 ^ (LODWORD(STACK[0x5E8]) ^ 0x2E2040B2) & v626) >> v527)) ^ v550 ^ __ROR4__(*(v312 + 4 * v522), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v530)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v531)), 24) ^ *(v312 + 4 * BYTE2(v528));
  v632 = v430 & 0x366840EA ^ 0x6CD081D4;
  v633 = (v430 & 0x1008406A ^ 0x48100044 ^ v632 & (v539 ^ 0x26E08190)) << v515;
  v634 = v630 ^ (((v430 & 0x32404008 ^ 0x20400010 ^ v632 & (LODWORD(STACK[0x5DC]) ^ 0x32404012u)) >> v487) | v633) ^ v553 ^ __ROR4__(*(v312 + 4 * v531), 16) ^ *(v312 + 4 * BYTE2(v530)) ^ __ROR4__(*(v312 + 4 * BYTE1(v522)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v528)), 24);
  v635 = v630 ^ (((v430 & 0x6000080 ^ 0x4C900184 ^ (LODWORD(STACK[0x5E8]) ^ 0x3068C07A) & v632) >> v527) | v633) ^ v549 ^ __ROR4__(*(v312 + 4 * HIBYTE(v530)), 24) ^ *(v312 + 4 * BYTE2(v522)) ^ __ROR4__(*(v312 + 4 * v528), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v531)), 8);
  v636 = STACK[0x5DC];
  v637 = v487;
  v638 = v630 ^ (v628 | ((v434 & 0x146800C8 ^ 0xCC081C0 ^ v626 & (LODWORD(STACK[0x5DC]) ^ 0x1CE881C2u)) >> v487)) ^ v554 ^ v533;
  v639 = *(v312 + 4 * BYTE2(v634)) ^ __ROR4__(*(v312 + 4 * BYTE1(v635)), 8);
  v640 = *(v312 + 4 * BYTE2(v638)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v635)), 24) ^ __ROR4__(*(v312 + 4 * v634), 16);
  v641 = *(v312 + 4 * BYTE2(v635)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v634)), 24);
  v642 = *(v312 + 4 * BYTE2(v631)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v638)), 24) ^ __ROR4__(*(v312 + 4 * v635), 16);
  v643 = v639 ^ __ROR4__(*(v312 + 4 * v638), 16);
  v644 = v641 ^ __ROR4__(*(v312 + 4 * BYTE1(v638)), 8) ^ __ROR4__(*(v312 + 4 * v631), 16);
  LODWORD(STACK[0x4AC]) = v644;
  v645 = v643 ^ __ROR4__(*(v312 + 4 * HIBYTE(v631)), 24);
  v646 = (v642 ^ __ROR4__(*(v312 + 4 * BYTE1(v634)), 8)) - LODWORD(STACK[0x5B4]);
  v647 = v640 ^ __ROR4__(*(v312 + 4 * BYTE1(v631)), 8);
  LODWORD(STACK[0x4B8]) = v647;
  v648 = v646 + LODWORD(STACK[0x5B0]);
  LODWORD(STACK[0x4B0]) = v648;
  v649 = v645 + LODWORD(STACK[0x440]);
  LODWORD(STACK[0x4D4]) = v649;
  v650 = v625;
  v651 = v434 & 0x7EB32991 ^ 0xFD665323;
  LODWORD(STACK[0x5C8]) = v651;
  v652 = v434 & 0x2C302900 ^ 0x2C641102 ^ (v625 ^ 0x2C703900) & v651;
  v653 = v434 & 0x42802810 ^ 0xC0001202 ^ v651 & (v636 ^ 0xC2803A11);
  LODWORD(STACK[0x5B4]) = v653;
  v654 = v430;
  v655 = v430 & 0x7EB32991 ^ 0xFD665323;
  LODWORD(STACK[0x504]) = v655;
  v656 = v430 & 0x52A02900 ^ 0x50645102 ^ v655 & (v539 ^ 0xAD1302B1);
  LOBYTE(v641) = v545;
  v657 = LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x5AC]);
  LODWORD(STACK[0x514]) = v652 << v545;
  v658 = v657 ^ ((v652 << v545) + (v653 >> v527)) ^ LODWORD(STACK[0x3F8]);
  v659 = v430 & 0x5EA20810 ^ 0xDC264020 ^ (v627 ^ 0x21513383) & v655;
  LODWORD(STACK[0x5B0]) = v659;
  v660 = v629;
  v661 = v656 << v629;
  v662 = v659 >> v637;
  LODWORD(STACK[0x518]) = v656 << v629;
  v663 = v657 ^ (v662 | (v656 << v629)) ^ LODWORD(STACK[0x400]);
  v664 = v657 ^ (v662 + v661) ^ LODWORD(STACK[0x408]);
  v665 = v657 ^ (v653 >> v527) ^ (v652 << v545) ^ LODWORD(STACK[0x410]);
  v666 = v650;
  v667 = v434 & 0x1D74FE03 ^ 0x3AE9FC06;
  LODWORD(STACK[0x524]) = v667;
  v668 = v434 & 0x410A600 ^ 0x1A400 ^ (v650 ^ 0x41D2602) & v667;
  LODWORD(STACK[0x510]) = v668;
  v669 = v434 & 0x5605800 ^ 0x2685804 ^ (v627 ^ 0x3895A603) & v667;
  v670 = v668 << v641;
  v671 = STACK[0x428];
  v672 = LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x428]);
  v673 = v658 ^ v647;
  v674 = v664 ^ v644;
  v675 = v672 ^ (v670 | (v669 >> v527)) ^ LODWORD(STACK[0x420]) ^ *(v312 + 4 * ((v658 ^ v647) >> 16)) ^ __ROR4__(*(v312 + 4 * ((v664 ^ v644) >> 24)), 24);
  v676 = v663 ^ v648;
  v677 = v665 ^ v649;
  v678 = v675 ^ __ROR4__(*(v312 + 4 * ((v663 ^ v648) >> 8)), 8) ^ __ROR4__(*(v312 + 4 * v677), 16);
  v679 = v654 & 0x1D74FE03 ^ 0x3AE9FC06;
  LODWORD(STACK[0x508]) = v679;
  v680 = v654 & 0x1303003 ^ 0x2203002 ^ v679 & (v636 ^ 0x3303000);
  v681 = v654 & 0x1C245E00 ^ 0x3AA85C04 ^ v679 & (v539 ^ 0x151A003);
  LODWORD(STACK[0x4E0]) = v681;
  v682 = v681 << v660;
  LOBYTE(v649) = v637;
  LODWORD(STACK[0x4F0]) = v681 << v660;
  v683 = v672 ^ ((v680 >> v637) | (v681 << v660)) ^ LODWORD(STACK[0x438]) ^ __ROR4__(*(v312 + 4 * BYTE1(v674)), 8) ^ __ROR4__(*(v312 + 4 * v673), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v676)), 24) ^ *(v312 + 4 * BYTE2(v677));
  v684 = v669 >> v637;
  LODWORD(STACK[0x4DC]) = v684;
  LODWORD(STACK[0x4C8]) = v672;
  v685 = v672 ^ v670;
  LODWORD(STACK[0x4F4]) = v685;
  v686 = v685 ^ v684 ^ LODWORD(STACK[0x460]) ^ *(v312 + 4 * BYTE2(v674)) ^ __ROR4__(*(v312 + 4 * v676), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v677)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v673)), 8);
  v687 = v680 >> v527;
  LODWORD(STACK[0x4CC]) = v687;
  v688 = v672 ^ v682 ^ v687 ^ LODWORD(STACK[0x484]) ^ __ROR4__(*(v312 + 4 * v674), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v673)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v677)), 8) ^ *(v312 + 4 * BYTE2(v676));
  HIDWORD(v689) = *(v312 + 4 * v678);
  LODWORD(v689) = HIDWORD(v689);
  v690 = __ROR4__((v689 >> 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v688)), 24), 24) ^ 0xFB87CF55;
  v691 = v654 & 0x273A535B ^ 0x4E74A6B7;
  v692 = v654 & 0x53A0141 ^ 0xC740001 ^ v691 & (v636 ^ 0xD7E014A);
  v693 = v654 & 0x21325153 ^ 0x708413 ^ v691 & (v539 ^ 0x4E0C22AC);
  LODWORD(STACK[0x484]) = v693;
  v694 = v434 & 0x273A535B ^ 0x4E74A6B7;
  v695 = v434 & 0x7001218 ^ 0xE040294 ^ (v666 ^ 0xF08929E) & v694;
  LODWORD(STACK[0x4D0]) = v695;
  v696 = v434 & 0x6120218 ^ 0xE10A290 ^ (v627 ^ 0x616C5567) & v694;
  v697 = v671 ^ LODWORD(STACK[0x478]);
  LODWORD(STACK[0x4EC]) = v696 >> v527;
  LOBYTE(v648) = v641;
  v698 = v697 ^ (v695 << v641) ^ (v696 >> v527) ^ LODWORD(STACK[0x470]) ^ __ROR4__(*(v312 + 4 * HIBYTE(v686)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v688)), 8) ^ __ROR4__(*(v312 + 4 * v683), 16) ^ *(v312 + 4 * BYTE2(v678));
  v699 = v654 & 0x25180318 ^ 0x445082B0 ^ (v666 ^ 0x655403BA) & v691;
  LODWORD(STACK[0x4D8]) = v699;
  LODWORD(STACK[0x4C0]) = v692 >> v527;
  v700 = v697 ^ ((v699 << v641) + (v692 >> v527)) ^ LODWORD(STACK[0x480]) ^ *(v312 + 4 * BYTE2(v688)) ^ __ROR4__(*(v312 + 4 * v686), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v678)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v683)), 8);
  v701 = v434 & 0x7181050 ^ 0x4610A090 ^ v694 & (v539 ^ 0x2866472F);
  LODWORD(STACK[0x4C4]) = v701;
  LODWORD(STACK[0x4A8]) = v696 >> v649;
  v702 = v697 ^ ((v696 >> v649) + (v701 << v660)) ^ LODWORD(STACK[0x48C]) ^ *(v312 + 4 * BYTE2(v686)) ^ __ROR4__(*(v312 + 4 * BYTE1(v678)), 8) ^ __ROR4__(*(v312 + 4 * v688), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v683)), 24);
  v703 = *(v312 + 4 * BYTE2(v683));
  LOBYTE(v647) = v649;
  v704 = v697 ^ (v692 >> v649);
  LODWORD(STACK[0x4BC]) = v704;
  v705 = v704 ^ (v693 << v660) ^ LODWORD(STACK[0x490]) ^ v703 ^ __ROR4__(v690, 8) ^ __ROR4__(*(v312 + 4 * BYTE1(v686)), 8) ^ 0x55FB87CF;
  v706 = v434 & 0xFEF15D1 ^ 0x1FDE2BA3;
  v707 = LODWORD(STACK[0x5AC]) ^ LODWORD(STACK[0x474]);
  v708 = (v434 & 0x50D01C1 ^ 0x151C2183 ^ v706 & (v539 ^ 0xAE21E30)) << v641;
  LODWORD(STACK[0x5AC]) = v708;
  v709 = v707 ^ (((v434 & 0x8EE0191 ^ 0x8DE0383 ^ v706 & (v636 ^ 0x8FE0390u)) >> v647) | v708) ^ LODWORD(STACK[0x4E8]) ^ __ROR4__(*(v312 + 4 * v698), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v700)), 24) ^ *(v312 + 4 * BYTE2(v705)) ^ __ROR4__(*(v312 + 4 * BYTE1(v702)), 8);
  v710 = (v654 & 0xFEF15D1) - (STACK[0x640] & 0x1F9C0302) + 534653859;
  v711 = v707 ^ ((STACK[0x598] & v710) << v660) ^ (((v627 ^ 0x3FFFFFFF) & v710) >> v527) ^ LODWORD(STACK[0x50C]) ^ __ROR4__(*(v312 + 4 * BYTE1(v698)), 8) ^ __ROR4__(*(v312 + 4 * v700), 16) ^ *(v312 + 4 * BYTE2(v702));
  v712 = v434 & 0x8E61480 ^ 0x8C62082 ^ (v627 ^ 0x17190B71) & v706;
  LODWORD(STACK[0x4E8]) = v712;
  v713 = v712 >> v647;
  LODWORD(STACK[0x50C]) = v713;
  v714 = v707 ^ (v713 | ((v434 & 0x3C60441 ^ 0x13C62021 ^ (v666 ^ 0x13CA2463) & v706) << v660)) ^ LODWORD(STACK[0x51C]) ^ (*(v312 + 4 * v705) << 16) ^ HIWORD(*(v312 + 4 * v705)) ^ *(v312 + 4 * BYTE2(v698)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v702)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v700)), 8);
  v715 = v654 & 0xFEF15D1 ^ 0x1FDE2BA3;
  LODWORD(STACK[0x48C]) = v715;
  v716 = v654 & 0x4A80580 ^ 0x14880982 ^ v715 & (v539 ^ 0xB573271);
  v717 = v636;
  v718 = v654 & 0xA6B1540 ^ 0x1A4A2300 ^ v715 & (v636 ^ 0x1A6B3743);
  LODWORD(STACK[0x490]) = v718;
  v719 = *(v312 + 4 * HIBYTE(v698));
  v720 = v718 >> v527;
  LODWORD(STACK[0x51C]) = v720;
  v721 = v707 ^ (v720 | (v716 << v648)) ^ LODWORD(STACK[0x528]) ^ __ROR4__(v719, 24) ^ *(v312 + 4 * BYTE2(v700)) ^ __ROR4__(*(v312 + 4 * v702), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v705)), 8);
  v722 = STACK[0x608];
  v723 = *(STACK[0x608] + 4 * HIBYTE(v714));
  HIDWORD(v689) = v723 ^ 0x2D1D;
  LODWORD(v689) = v723 ^ 0x30B80000;
  v724 = v689 >> 16;
  v725 = *(STACK[0x608] + 4 * HIBYTE(v721));
  HIDWORD(v689) = v725 ^ 0x2D1D;
  LODWORD(v689) = v725 ^ 0x30B80000;
  v726 = v689 >> 16;
  v727 = *(v312 + 4 * HIBYTE(v705));
  v728 = *(STACK[0x608] + 4 * BYTE2(v721));
  v729 = v711 ^ __ROR4__(v727, 24);
  HIDWORD(v689) = v728 ^ 0xB82D1D;
  LODWORD(v689) = v728 ^ 0x30000000;
  v730 = v689 >> 24;
  v731 = *(STACK[0x608] + 4 * v721);
  HIDWORD(v689) = v731 ^ 0x1D;
  LODWORD(v689) = v731 ^ 0x30B82D00;
  v732 = v689 >> 8;
  v733 = *(STACK[0x608] + 4 * BYTE2(v729));
  HIDWORD(v689) = v733 ^ 0xB82D1D;
  LODWORD(v689) = v733 ^ 0x30000000;
  v734 = *(STACK[0x608] + 4 * HIBYTE(v709));
  v735 = (v689 >> 24) ^ v732;
  HIDWORD(v689) = v734 ^ 0x2D1D;
  LODWORD(v689) = v734 ^ 0x30B80000;
  v736 = v689 >> 16;
  v737 = *(STACK[0x608] + 4 * BYTE2(v709));
  HIDWORD(v689) = v737 ^ 0xB82D1D;
  LODWORD(v689) = v737 ^ 0x30000000;
  v738 = v735 ^ v736;
  v739 = (v689 >> 24) ^ v726;
  v740 = *(STACK[0x608] + 4 * BYTE2(v714));
  HIDWORD(v689) = v740 ^ 0xB82D1D;
  LODWORD(v689) = v740 ^ 0x30000000;
  LODWORD(STACK[0x640]) = 817376542;
  LODWORD(STACK[0x598]) = -1634753083;
  v741 = (v689 >> 24) + 817376542 + (~(2 * (v689 >> 24)) | 0x9E8FA5C5);
  v742 = *(v722 + 4 * HIBYTE(v729));
  HIDWORD(v689) = v742 ^ 0x2D1D;
  LODWORD(v689) = v742 ^ 0x30B80000;
  v743 = v689 >> 16;
  v744 = *(v722 + 4 * v714);
  HIDWORD(v689) = v744 ^ 0x1D;
  LODWORD(v689) = v744 ^ 0x30B82D00;
  v745 = *(v722 + 4 * v729);
  v746 = v739 ^ (v689 >> 8);
  HIDWORD(v689) = v745 ^ 0x1D;
  LODWORD(v689) = v745 ^ 0x30B82D00;
  v747 = v730 ^ (v689 >> 8) ^ v724;
  v748 = *(v722 + 4 * v709);
  HIDWORD(v689) = v748 ^ 0x1D;
  LODWORD(v689) = v748 ^ 0x30B82D00;
  v749 = *(v722 + 4 * BYTE1(v714));
  v750 = LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x5BC]);
  v751 = v750 ^ LODWORD(STACK[0x52C]) ^ v749 ^ (v738 + 817376541 - ((2 * v738) & 0x61705A3A));
  LODWORD(STACK[0x52C]) = v751 - ((2 * v751) & 0x564CD294);
  v752 = v750 ^ LODWORD(STACK[0x530]) ^ *(v722 + 4 * BYTE1(v721)) ^ v743 ^ (v689 >> 8) ^ v741;
  v753 = *(v722 + 4 * BYTE1(v729)) ^ LODWORD(STACK[0x534]) ^ (v746 + 817376541 - ((2 * v746) & 0x61705A3A));
  LODWORD(STACK[0x534]) = v752 - ((2 * v752) & 0x564CD294);
  v754 = v750 ^ LODWORD(STACK[0x544]) ^ *(v722 + 4 * BYTE1(v709)) ^ (v747 + 817376541 - ((2 * v747) & 0x61705A3A));
  LODWORD(STACK[0x544]) = v754 - ((2 * v754) & 0x564CD294);
  v755 = (v753 + 121406673 - ((2 * v753) & 0xE7909A2)) ^ LODWORD(STACK[0x494]);
  LODWORD(STACK[0x530]) = v755 - ((2 * v755) & 0x564CD294);
  v756 = v657 ^ (((v654 & 0x58212881 ^ 0x59241021 ^ (LODWORD(STACK[0x5F0]) ^ 0x592138A3) & STACK[0x504]) << v660) | ((v654 & 0x14912190 ^ 0x14001300 ^ STACK[0x504] & (v717 ^ 0x14913393)) >> v647)) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x4AC]);
  v757 = v657 ^ (((v434 & 0x30100080 ^ 0xB0404020 ^ (LODWORD(STACK[0x5E8]) ^ 0x4FA73B13) & STACK[0x5C8]) >> v527) | ((v434 & 0x18330010 ^ 0x19225022 ^ STACK[0x5C8] & (LODWORD(STACK[0x5D0]) ^ 0xE6C42B81)) << v648)) ^ LODWORD(STACK[0x538]);
  v758 = v757 ^ LODWORD(STACK[0x4D4]);
  v759 = v657 ^ (LODWORD(STACK[0x5B4]) >> v647) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x4B0]);
  v760 = v657 ^ ((LODWORD(STACK[0x5B0]) >> v527) + LODWORD(STACK[0x518])) ^ LODWORD(STACK[0x54C]) ^ LODWORD(STACK[0x4B8]);
  v761 = LODWORD(STACK[0x4C8]) ^ (LODWORD(STACK[0x4CC]) + (LODWORD(STACK[0x4E0]) << v648)) ^ LODWORD(STACK[0x550]) ^ __ROR4__(*(v312 + 4 * HIBYTE(v756)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v759)), 8) ^ *(v312 + 4 * BYTE2(v760)) ^ __ROR4__(*(v312 + 4 * (v757 ^ LOBYTE(STACK[0x4D4]))), 16);
  v762 = LODWORD(STACK[0x4C8]) ^ (LODWORD(STACK[0x4DC]) | (LODWORD(STACK[0x510]) << v660)) ^ LODWORD(STACK[0x554]) ^ __ROR4__(*(v312 + 4 * (v657 ^ (((v654 & 0x81 ^ 0x21 ^ (LOBYTE(STACK[0x5F0]) ^ 0xA3) & STACK[0x504]) << v660) | ((v654 & 0x14912190 ^ 0x14001300 ^ STACK[0x504] & (v717 ^ 0x14913393)) >> v647)) ^ LOBYTE(STACK[0x520]) ^ LOBYTE(STACK[0x4AC]))), 16) ^ *(v312 + 4 * BYTE2(v759)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v760)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v758)), 8);
  v763 = LODWORD(STACK[0x4F4]) ^ ((v434 & 0x5007402 ^ 0x22897406 ^ STACK[0x524] & (v717 ^ 0x27897405)) >> v647) ^ LODWORD(STACK[0x558]) ^ *(v312 + 4 * BYTE2(v758)) ^ __ROR4__(*(v312 + 4 * BYTE1(v756)), 8) ^ __ROR4__(*(v312 + 4 * HIBYTE(v759)), 24) ^ __ROR4__(*(v312 + 4 * (v657 ^ ((LODWORD(STACK[0x5B0]) >> v527) + LOBYTE(STACK[0x518])) ^ LOBYTE(STACK[0x54C]) ^ LOBYTE(STACK[0x4B8]))), 16);
  v764 = LODWORD(STACK[0x4C8]) ^ (((v654 & 0xD70FC02 ^ 0x2861FC02 ^ (LODWORD(STACK[0x5E8]) ^ 0x128C0205u) & STACK[0x508]) >> v527) + LODWORD(STACK[0x4F0])) ^ LODWORD(STACK[0x55C]) ^ *(v312 + 4 * BYTE2(v756)) ^ __ROR4__(*(v312 + 4 * HIBYTE(v758)), 24) ^ __ROR4__(*(v312 + 4 * BYTE1(v760)), 8) ^ __ROR4__(*(v312 + 4 * (v657 ^ (LODWORD(STACK[0x5B4]) >> v647) ^ LOBYTE(STACK[0x514]) ^ LOBYTE(STACK[0x548]) ^ LOBYTE(STACK[0x4B0]))), 16);
  HIDWORD(v689) = *(v312 + 4 * HIBYTE(v763));
  LODWORD(v689) = HIDWORD(v689);
  v765 = (v689 >> 24) ^ __ROR4__(*(v312 + 4 * v762), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v761)), 8) ^ *(v312 + 4 * BYTE2(v764));
  v766 = (*(v312 + 4 * v764) << (v765 & 0x10) << (v765 & 0x10 ^ 0x10)) | HIWORD(*(v312 + 4 * v764));
  v767 = v697 ^ (LODWORD(STACK[0x4A8]) + (LODWORD(STACK[0x4D0]) << v660)) ^ LODWORD(STACK[0x560]) ^ __ROR4__(*(v312 + 4 * BYTE1(v764)), 8) ^ __ROR4__(*(v312 + 4 * v761), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v762)), 24) ^ *(v312 + 4 * BYTE2(v763));
  v768 = v697 ^ (LODWORD(STACK[0x4C0]) | (LODWORD(STACK[0x484]) << v648)) ^ LODWORD(STACK[0x564]) ^ *(v312 + 4 * BYTE2(v761)) ^ __ROR4__(*(v312 + 4 * BYTE1(v762)), 8) ^ __ROR4__(*(v312 + 4 * v763), 16) ^ __ROR4__(*(v312 + 4 * HIBYTE(v764)), 24);
  v769 = v697 ^ (LODWORD(STACK[0x4EC]) | (LODWORD(STACK[0x4C4]) << v648)) ^ LODWORD(STACK[0x568]) ^ v765;
  LODWORD(v689) = __ROR4__(*(v312 + 4 * HIBYTE(v761)), 24);
  v770 = LODWORD(STACK[0x4BC]) ^ (LODWORD(STACK[0x4D8]) << v660) ^ LODWORD(STACK[0x56C]) ^ *(v312 + 4 * BYTE2(v762)) ^ (*(v312 + 4 * BYTE1(v763)) << 24) ^ (*(v312 + 4 * BYTE1(v763)) >> 8) ^ v689 ^ v766;
  v771 = *(v312 + 4 * HIBYTE(v769));
  v772 = *(v312 + 4 * (LOBYTE(STACK[0x4BC]) ^ (LOBYTE(STACK[0x4D8]) << v660) ^ LOBYTE(STACK[0x56C]) ^ *(v312 + 4 * BYTE2(v762)) ^ BYTE1(*(v312 + 4 * BYTE1(v763))) ^ v689 ^ v766));
  v773 = *(v312 + 4 * v769);
  v774 = *(v312 + 4 * BYTE2(v770));
  v775 = *(v312 + 4 * BYTE2(v769));
  v776 = HIBYTE(v768);
  v777 = *(v312 + 4 * BYTE1(v770));
  v778 = v707 ^ ((LODWORD(STACK[0x4E8]) >> v527) + LODWORD(STACK[0x5AC])) ^ LODWORD(STACK[0x570]) ^ __ROR4__(*(v312 + 4 * HIBYTE(v770)), 24) ^ *(v312 + 4 * BYTE2(v767)) ^ __ROR4__(*(v312 + 4 * v768), 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v769)), 8);
  v779 = (v654 & 0xA004C0 ^ 0x8002A0 ^ (LODWORD(STACK[0x5F0]) ^ 0xAC06E2) & STACK[0x48C]) << v660;
  v780 = v707 ^ (v779 + (LODWORD(STACK[0x490]) >> v647)) ^ LODWORD(STACK[0x59C]) ^ __ROR4__(*(v312 + 4 * v767), 16) ^ __ROR4__(v771, 24) ^ *(v312 + 4 * BYTE2(v768)) ^ __ROR4__(v777, 8);
  v781 = v707 ^ LODWORD(STACK[0x5AC]) ^ LODWORD(STACK[0x50C]) ^ LODWORD(STACK[0x5A0]) ^ __ROR4__(v772, 16) ^ __ROR4__(*(v312 + 4 * BYTE1(v768)), 8) ^ v775 ^ __ROR4__(*(v312 + 4 * HIBYTE(v767)), 24);
  v782 = *(v722 + 4 * HIBYTE(v778));
  HIDWORD(v689) = v782 ^ 0x2D1D;
  LODWORD(v689) = v782 ^ 0x30B80000;
  v783 = v689 >> 16;
  v784 = v707 ^ LODWORD(STACK[0x51C]) ^ v779 ^ LODWORD(STACK[0x5A8]) ^ __ROR4__(*(v312 + 4 * BYTE1(v767)), 8) ^ __ROR4__(v773, 16);
  v785 = *(v722 + 4 * BYTE2(v780));
  HIDWORD(v689) = v785 ^ 0xB82D1D;
  LODWORD(v689) = v785 ^ 0x30000000;
  v786 = v689 >> 24;
  v787 = *(v722 + 4 * v778);
  HIDWORD(v689) = v787 ^ 0x1D;
  LODWORD(v689) = v787 ^ 0x30B82D00;
  v788 = v689 >> 8;
  v789 = *(v722 + 4 * BYTE2(v778));
  v790 = v784 ^ v774;
  HIDWORD(v689) = v789 ^ 0xB82D1D;
  LODWORD(v689) = v789 ^ 0x30000000;
  v791 = v689 >> 24;
  v792 = *(v722 + 4 * v780);
  HIDWORD(v689) = v792 ^ 0x1D;
  LODWORD(v689) = v792 ^ 0x30B82D00;
  v793 = v689 >> 8;
  LODWORD(v689) = __ROR4__(*(v312 + 4 * v776), 24);
  v794 = v790 ^ v689;
  v795 = *(v722 + 4 * (v790 ^ v689));
  HIDWORD(v689) = v795 ^ 0x1D;
  LODWORD(v689) = v795 ^ 0x30B82D00;
  v796 = v689 >> 8;
  v797 = *(v722 + 4 * BYTE2(v781));
  v798 = (((((LODWORD(STACK[0x4AC]) ^ 0x8E5B5081) - 1234313519) ^ LODWORD(STACK[0x4B8]) ^ 0xBCFFF704 ^ LODWORD(STACK[0x4B0])) + 1277578268) ^ LODWORD(STACK[0x4D4])) - 795851445;
  HIDWORD(v689) = v797 ^ 0xB82D1D;
  LODWORD(v689) = v797 ^ 0x30000000;
  v799 = v689 >> 24;
  v800 = *(v722 + 4 * BYTE2(v794));
  HIDWORD(v689) = v800 ^ 0xB82D1D;
  LODWORD(v689) = v800 ^ 0x30000000;
  v801 = v788 ^ v786;
  v802 = *(v722 + 4 * HIBYTE(v794));
  v803 = (v689 >> 24) + 817376541 - ((2 * (v689 >> 24)) & 0x61705A3A);
  HIDWORD(v689) = v802 ^ 0x2D1D;
  LODWORD(v689) = v802 ^ 0x30B80000;
  v804 = v791 ^ v793 ^ (v689 >> 16);
  v805 = *(v722 + 4 * HIBYTE(v780));
  v806 = (v804 + 817376541 - ((2 * v804) & 0x61705A3A)) ^ *(v722 + 4 * BYTE1(v781));
  v807 = v783 ^ LODWORD(STACK[0x5B8]) ^ v796;
  v808 = *(v722 + 4 * HIBYTE(v781));
  HIDWORD(v689) = v808 ^ 0x2D1D;
  LODWORD(v689) = v808 ^ 0x30B80000;
  v809 = v689 >> 16;
  v810 = *(v722 + 4 * v781);
  v811 = v750 ^ v798 ^ *(v722 + 4 * BYTE1(v780)) ^ ((v807 ^ v799) + LODWORD(STACK[0x640]) + (LODWORD(STACK[0x598]) | ~(2 * (v807 ^ v799))));
  v812 = v811 - ((2 * v811) & 0x564CD294);
  HIDWORD(v689) = v810 ^ 0x1D;
  LODWORD(v689) = v810 ^ 0x30B82D00;
  v813 = v750 ^ v798 ^ LODWORD(STACK[0x5C0]) ^ *(v722 + 4 * BYTE1(v794)) ^ v809 ^ (v801 + 817376541 - ((2 * v801) & 0x61705A3A));
  v814 = v750 ^ v798 ^ LODWORD(STACK[0x610]) ^ *(v722 + 4 * BYTE1(v778)) ^ (__PAIR64__(v805 ^ 0x2D1Du, v805 ^ 0x30B80000u) >> 16) ^ v803 ^ (v689 >> 8);
  v815 = v813 - ((2 * v813) & 0x564CD294);
  v816 = v814 - ((2 * v814) & 0x564CD294);
  v817 = (v806 + LODWORD(STACK[0x57C]) - 2 * (v806 & STACK[0x57C])) ^ LODWORD(STACK[0x638]);
  v818 = v817 - ((2 * v817) & 0x564CD294);
  v819 = STACK[0x5E0];
  v820 = LODWORD(STACK[0x5E0]) ^ 0xA12D5543;
  v821 = v820 ^ (LODWORD(STACK[0x530]) + 723937610);
  v822 = v820 ^ (LODWORD(STACK[0x52C]) + 723937610);
  v823 = v820 ^ (LODWORD(STACK[0x534]) + 723937610);
  v824 = v820 ^ (LODWORD(STACK[0x544]) + 723937610);
  v825 = STACK[0x5A4];
  if (STACK[0x5A4])
  {
    v826 = v820 ^ (LODWORD(STACK[0x52C]) + 723937610);
  }

  else
  {
    v826 = v820 ^ (LODWORD(STACK[0x534]) + 723937610);
  }

  if (v825)
  {
    v822 = v821;
  }

  else
  {
    v823 = v824;
  }

  if ((v825 & 1) == 0)
  {
    v824 = v821;
  }

  v827 = v819 ^ 0x74FC784 ^ LODWORD(STACK[0x5BC]) ^ v798 ^ (v818 + 723937610);
  v828 = v819 ^ 0x74FC784 ^ (v816 + 723937610);
  v829 = v819 ^ 0x74FC784 ^ (v812 + 723937610);
  v830 = v819 ^ 0x74FC784 ^ (v815 + 723937610);
  if (v825)
  {
    v831 = v827;
  }

  else
  {
    v831 = v829;
  }

  if (v825)
  {
    v827 = v828;
    v828 = v830;
  }

  else
  {
    v829 = v830;
  }

  v417 = (STACK[0x5A4] & 2) == 0;
  if ((v825 & 2) != 0)
  {
    v832 = v826;
  }

  else
  {
    v832 = v824;
  }

  if ((v825 & 2) != 0)
  {
    v833 = v822;
  }

  else
  {
    v824 = v826;
    v833 = v823;
  }

  if ((v825 & 2) != 0)
  {
    v822 = v823;
    v834 = v827;
  }

  else
  {
    v834 = v829;
  }

  if ((v825 & 2) == 0)
  {
    v829 = v827;
  }

  v835 = v834 ^ v798;
  v836 = v834 ^ v798 ^ v822 ^ v824;
  if ((v825 & 2) != 0)
  {
    v837 = v828;
  }

  else
  {
    v837 = v831;
  }

  v838 = v837 ^ v798;
  v839 = v837 ^ v798 ^ v832 ^ v836;
  v840 = v798 ^ 0xA66292C7;
  v841 = v833 + 1287199953 * ((v798 ^ 0xA66292C7) - (v839 ^ v829));
  if ((STACK[0x5A4] & 2) != 0)
  {
    v828 = v831;
  }

  v842 = v828 ^ v798;
  v843 = v841 ^ v828 ^ v798;
  v844 = v843 ^ v824 ^ v836;
  v845 = (v843 ^ v824 ^ 0xA66292C7) + 923628177 * ((v829 ^ v798) + (v839 ^ 0x599D6D38)) + 923628177;
  LODWORD(v847) = ((-1686110208 * v840) | ((-1889889481 * v840) >> 9)) ^ __ROR4__(v839 ^ 0xA66292C7 ^ (-1889889481 * (v837 ^ v835 ^ 0xA66292C7 ^ v844)), 9) ^ 0xF8B3B8A6;
  HIDWORD(v847) = v847;
  v846 = v847 >> 23;
  v848 = v829 ^ v834 ^ v844 ^ v846;
  v849 = v843 ^ v846;
  v850 = v842 ^ (-520713245 * v838) ^ v845 ^ (-520713245 * (v848 ^ 0x67714DF1));
  v851 = v850 ^ v841;
  v852 = v850 ^ v835;
  v853 = v848 ^ 0xE1A6FEFB;
  STACK[0x608] = ((v848 ^ 0xE1A6FEFB) >> (v850 & 0x10) >> (v850 & 0x10 ^ 0x10)) ^ 0x1DLL;
  v854 = ((v849 ^ 0x60) + 131) ^ v849 ^ 0x60;
  v855 = LODWORD(STACK[0x5F8]) - 3020;
  v856 = *(&off_1006B4E30 + LODWORD(STACK[0x5F8]) - 6217) - 8;
  v857 = v856[v849 ^ 0xADLL];
  LODWORD(STACK[0x630]) = v857;
  v858 = ~v857 & 0x20;
  if ((v854 & v858) != 0)
  {
    v858 = -v858;
  }

  LODWORD(STACK[0x638]) = v858 + v854;
  STACK[0x628] = BYTE2(v849) ^ 0x3ALL;
  STACK[0x610] = v848 ^ 0x56;
  STACK[0x5F8] = BYTE1(v848) ^ 0x2CLL;
  STACK[0x640] = BYTE2(v852) ^ 0x6DLL;
  STACK[0x618] = HIBYTE(v849) ^ 0x5FLL;
  v859 = v849 ^ 0xF3427E88;
  STACK[0x620] = BYTE1(v849) ^ 0x4DLL;
  v860 = HIBYTE(v852);
  v861 = v860 ^ 0xDE;
  v862 = v860 ^ 0x13;
  STACK[0x5F0] = v851 ^ 0x6CLL;
  v863 = HIBYTE(v848) ^ 0x97;
  v864 = ((v852 ^ 0x7A00) >> 8);
  v865 = v864 ^ 0x4A;
  v866 = v864 ^ 0x87;
  LODWORD(v860) = 2 * ((v864 ^ 0x87) & 3) + (((v852 ^ 0x87847A00) >> 8) ^ 4);
  STACK[0x5E8] = HIBYTE(v851) ^ 0x9CLL;
  LODWORD(STACK[0x5E0]) = v853 % 0x107;
  v867 = ((v851 ^ 0x5ED4) >> 8) ^ 0x78;
  v868 = (v867 - ((2 * v867 + 6) & 0xC8) - 25) ^ v856[((v851 ^ 0x5ED4) >> 8) ^ 0xB5];
  v869 = ((v851 ^ 0xED1B5ED4) % 0x10D) & 0x3F;
  LODWORD(STACK[0x5B8]) = v869;
  v870 = v867 ^ v869 ^ v868;
  v871 = (v851 ^ 0xED1B5ED4) % 0x101;
  v872 = (v851 ^ 0xED1B5ED4) % 0x10F;
  v873 = ((v851 ^ 0xED1B5ED4) >> 16);
  v874 = v856[v873 ^ 0xB6];
  v875 = v856[v862];
  LODWORD(v864) = ((v851 ^ 0xED1B5ED4) % 0x107) & 0x3F;
  LODWORD(STACK[0x5B4]) = v864;
  LODWORD(v862) = v873 ^ 0x7B ^ v864 ^ ((v873 ^ 0x7B) - ((2 * (v873 ^ 0x7B) + 6) & 0xC8) - 25) ^ v874;
  LODWORD(v864) = (v852 - ((v852 ^ 0x87847A00) / 0x101)) & 0x3F;
  LODWORD(STACK[0x5B0]) = v864;
  LODWORD(STACK[0x600]) = v864 ^ v861 ^ (v861 - ((2 * v861 + 6) & 0xC8) - 25) ^ v875;
  LOBYTE(v861) = v852 - 15 * ((v852 ^ 0x87847A00) / 0x10F);
  v876 = v859 % 0x10F;
  v877 = (v860 + (~(2 * v860) | 0x37) + 101) ^ v856[v865];
  v878 = (v852 ^ 0x87847A00) % 0x107;
  LODWORD(v864) = (v852 - 13 * ((v852 ^ 0x87847A00) / 0x10D)) & 0x3F;
  LODWORD(STACK[0x5AC]) = v864;
  v879 = v866 ^ v864 ^ v877;
  v880 = v859 % 0x107;
  v881 = v859 % 0x10D;
  v882 = v859 % 0x101;
  LODWORD(v860) = *(*(&off_1006B4E30 + v855 - 2726) + STACK[0x608]);
  v883 = *(&off_1006B4E30 + (v855 ^ 0xEE8));
  v884 = *(v883 + v863);
  LODWORD(STACK[0x5A8]) = (v853 % 0x101) & 0x3F;
  HIDWORD(v886) = (((2 * (v853 % 0x101)) & 0x32) - ((v853 % 0x101) & 0x3F) + 38) ^ v884;
  LODWORD(v886) = ~v860 << 24;
  v885 = v886 >> 31;
  v887 = v852;
  LODWORD(v863) = ((v852 ^ 0xBD) - ((2 * (v852 ^ 0xBD) + 6) & 0xC8) - 25) ^ v856[v852 ^ 0x70];
  v888 = *(&off_1006B4E30 + v855 - 2478) - 12;
  v889 = v888[STACK[0x5F8]];
  v890 = STACK[0x5E0] & 0x3F;
  LODWORD(STACK[0x5A4]) = v890;
  LODWORD(v860) = v890 ^ v860;
  LODWORD(STACK[0x5A0]) = (v853 % 0x10D) & 0x3F;
  v891 = (((v853 % 0x10D) & 0x3F) - ((2 * (v853 % 0x10D)) & 0x5A) + 45) ^ v889;
  HIDWORD(v886) = v860;
  LODWORD(v886) = ~v889 << 24;
  v892 = (v886 >> 31);
  v893 = v888[STACK[0x610]] ^ 0xFFFFFF92;
  LODWORD(STACK[0x598]) = (v853 % 0x10F) & 0x3F;
  v894 = v893 ^ (((v853 % 0x10F) & 0x3F) - ((2 * (v853 % 0x10F)) & 0x5A) - 83);
  HIDWORD(v886) = v891;
  LODWORD(v886) = v894 << 24;
  v895 = (v886 >> 31);
  v896 = *(v883 + STACK[0x5E8]);
  LODWORD(STACK[0x59C]) = v871 & 0x3F;
  HIDWORD(v886) = v894;
  LODWORD(v886) = (v896 ^ 0xFFFFFFB5 ^ ((v871 & 0x3F) - ((2 * v871) & 0x32) + 89)) << 24;
  v897 = v886 >> 31;
  v898 = (v862 >> 7) & 0xFFFFFE01 | (2 * (v896 ^ 0xB5 ^ ((v871 & 0x3F) - ((2 * v871) & 0x32) + 89)));
  v899 = (v870 >> 7) | (2 * v862);
  v900 = v888[STACK[0x5F0]];
  HIDWORD(v886) = v870;
  LODWORD(v886) = ~v900 << 24;
  v901 = (v886 >> 31);
  LODWORD(v862) = *(v883 + STACK[0x618]) ^ 0xFFFFFFBB;
  LODWORD(STACK[0x57C]) = v882 & 0x3F;
  LODWORD(v862) = v862 ^ ((v882 & 0x3F) - ((2 * v882) & 0x32) + 89);
  v902 = v861 & 0x3F;
  STACK[0x570] = v902;
  v903 = v902 ^ v887 ^ v863;
  HIDWORD(v886) = v903 ^ 0x7B;
  LODWORD(v886) = v862 << 24;
  v904 = (v886 >> 31);
  LODWORD(v860) = *(v883 + STACK[0x628]);
  LODWORD(STACK[0x56C]) = v880 & 0x3F;
  v905 = ((v880 & 0x3F) - ((2 * v880) & 0x32) + 89) ^ v860;
  HIDWORD(v886) = v862;
  LODWORD(v886) = v860 << 24;
  v906 = v886 >> 31;
  v907 = *(v883 + STACK[0x620]);
  LODWORD(STACK[0x568]) = v881 & 0x3F;
  HIDWORD(v886) = v905;
  LODWORD(v886) = v907 << 24;
  v908 = v886 >> 31;
  v909 = STACK[0x630] & 0xFFFFFFDF;
  LODWORD(STACK[0x560]) = v876 & 0x3F;
  v910 = v909 ^ v876 & 0x3F ^ 0xFFFFFFCD ^ LODWORD(STACK[0x638]);
  HIDWORD(v886) = ((v881 & 0x3F) + (~(2 * v881) | 0x7FFFFFCD) + 90) ^ v907;
  LODWORD(v886) = v910 << 24;
  v911 = v886 >> 31;
  if (((((v884 ^ 0x3D) - 61) ^ ((v884 ^ 0xAC) + 84) ^ ((v884 ^ 0xC8) + 56)) - 39) >= 0)
  {
    v912 = -121;
  }

  else
  {
    v912 = 0;
  }

  v913 = v912 ^ (2 * v910);
  v914 = v900 ^ 0x43;
  HIDWORD(v916) = v908 ^ 0x44;
  LODWORD(v916) = v911 << 24;
  v915 = v916 >> 31;
  LODWORD(STACK[0x564]) = v872 & 0x3F;
  v917 = v914 ^ ((v872 & 0x3F) - ((2 * v872) & 0x5A) - 83);
  HIDWORD(v916) = v911 ^ 0x40;
  LODWORD(v916) = v913 << 24;
  v918 = v916 >> 31;
  v919 = *(v883 + STACK[0x640]) ^ 0xFFFFFFE4;
  LODWORD(STACK[0x55C]) = v878 & 0x3F;
  v920 = v919 ^ ((v878 & 0x3F) - ((2 * v878) & 0x32) + 89);
  v921 = *(&off_1006B4E30 + (v855 ^ 0xD0F));
  v922 = STACK[0x488] & 0xF;
  v923 = v921 + (v922 ^ 8);
  STACK[0x5C0] = v895;
  HIDWORD(v916) = v895 ^ 0xFFFFFFD6;
  LODWORD(v916) = v897 << 24;
  v924 = v916 >> 31;
  LODWORD(STACK[0x5DC]) = v899;
  v925 = v899 ^ 0xFFFFFF88;
  STACK[0x5D0] = v901;
  v926 = v901 ^ 0xFFFFFFB2;
  HIDWORD(v916) = v899 ^ 0xFFFFFF88;
  LODWORD(v916) = (v901 ^ 0xFFFFFFB2) << 24;
  v927 = v916 >> 31;
  STACK[0x5E0] = v892;
  HIDWORD(v916) = v892 ^ 0xFFFFFFBE;
  LODWORD(v916) = (v895 ^ 0xFFFFFFD6) << 24;
  v928 = v916 >> 31;
  STACK[0x640] = v927 ^ 0xFFFFFF9E;
  HIDWORD(v916) = v885;
  LODWORD(v916) = (v892 ^ 0xFFFFFFBE) << 24;
  STACK[0x630] = (v916 >> 31) ^ 0xFFFFFF97;
  v929 = (v903 >> 7) | (2 * v879);
  v930 = (v879 >> 7) & 0xFFFFFE01 | (2 * v920);
  LODWORD(STACK[0x5BC]) = v929;
  v929 ^= 0xFFFFFFC0;
  HIDWORD(v916) = v929;
  LODWORD(v916) = v904 << 24;
  v931 = v916 >> 31;
  HIDWORD(v916) = v930;
  LODWORD(v916) = v929 << 24;
  v932 = v924 ^ 0x7Du;
  v933 = (v916 >> 31) ^ 0xFFFFFFA5;
  HIDWORD(v916) = v906;
  LODWORD(v916) = v908 << 24;
  v934 = (v916 >> 31) ^ 0x67;
  HIDWORD(v916) = STACK[0x600];
  LODWORD(v916) = v920 << 24;
  v935 = v916 >> 31;
  v936 = (LODWORD(STACK[0x600]) >> 7) & 0xFFFFFE01 | (2 * v917);
  v937 = ((v917 >> 6) & 1 | (2 * v926)) ^ 0xFFFFFF99;
  STACK[0x628] = v915 ^ 0x2Bu;
  v938 = *(v923 - 4) ^ 0x14;
  v939 = (v920 >> 6) & 1 | (2 * (v935 ^ 0xFFFFFFE6));
  HIDWORD(v916) = v936;
  LODWORD(v916) = (v935 ^ 0xFFFFFFE6) << 24;
  STACK[0x638] = (v916 >> 31) ^ 0xFFFFFF8D;
  v940 = v928 ^ 0x21u;
  HIDWORD(v916) = v898;
  LODWORD(v916) = v925 << 24;
  v941 = (v916 >> 31) ^ 0xFFFFFF9A;
  v942 = v885;
  if ((v885 & 0x80u) == 0)
  {
    v943 = 116;
  }

  else
  {
    v943 = -13;
  }

  STACK[0x5C8] = v904;
  HIDWORD(v944) = v904;
  LODWORD(v944) = v906 << 24;
  v945 = v939 ^ 0x78;
  v946 = (v944 >> 31) ^ 0xFFFFFFC3;
  v947 = (v896 >> 6) & 1 | (2 * v897);
  v948 = v918 ^ 4u;
  v949 = v943 ^ (2 * v913);
  v950 = v931 ^ 0x38;
  LODWORD(v951) = v941;
  switch(v938)
  {
    case 0:
      LODWORD(v951) = v945;
      break;
    case 1:
      LODWORD(v951) = v933;
      break;
    case 2:
      LODWORD(v951) = v947;
      break;
    case 3:
      v951 = STACK[0x640];
      break;
    case 4:
      LODWORD(v951) = v937;
      break;
    case 5:
      v951 = STACK[0x630];
      break;
    case 6:
      LODWORD(v951) = v934;
      break;
    case 7:
      LODWORD(v951) = v943 ^ (2 * v913);
      break;
    case 8:
      v951 = STACK[0x628];
      break;
    case 9:
      LODWORD(v951) = v931 ^ 0x38;
      break;
    case 10:
      break;
    case 12:
      LODWORD(v951) = v940;
      break;
    case 13:
      LODWORD(v951) = v932;
      break;
    case 14:
      v951 = STACK[0x638];
      break;
    case 15:
      LODWORD(v951) = v946;
      break;
    default:
      LODWORD(v951) = v948;
      break;
  }

  STACK[0x5F0] = v934;
  STACK[0x5F8] = v941;
  STACK[0x600] = v948;
  STACK[0x608] = v940;
  STACK[0x610] = v946;
  STACK[0x618] = v933;
  STACK[0x620] = v932;
  v952 = (((v922 ^ 0xB43375B6) - 25192467) ^ ((v922 ^ 0x45428A2F) + 252602486) ^ ((v922 ^ 0xF171FF93) - 1153622582)) + 180178716;
  v953 = (v952 ^ 0xA0E1CEEA) & (2 * (v952 & 0x10B)) ^ v952 & 0x10B;
  v954 = ((2 * (v952 ^ 0xA0C0D2EE)) ^ 0x146A3BCA) & (v952 ^ 0xA0C0D2EE) ^ (2 * (v952 ^ 0xA0C0D2EE)) & 0xA351DE4;
  v955 = v949;
  v956 = ((4 * (v954 ^ 0xA150425)) & 0xA351DE4 ^ 0x8141580 ^ ((4 * (v954 ^ 0xA150425)) ^ 0x28D47790) & (v954 ^ 0xA150425)) & (16 * ((v954 ^ 0x201841) & (4 * v953) ^ v953)) ^ (v954 ^ 0x201841) & (4 * v953) ^ v953;
  v957 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x464]) ^ 0xF4D)) + (v922 ^ 4) - 12);
  v958 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x464]) ^ 0xD0A)) + (v922 ^ 4) - 8) + 17;
  v959 = v957 & 2 | 0xFFFFFFB9;
  v960 = v952 ^ v922 ^ (2 * (v956 ^ (v957 ^ 0x50) & (2 * ((v957 ^ 0x50) & (2 * ((v957 ^ 0x50) & (2 * ((v957 ^ 0x50) & (2 * ((v957 ^ 0x50) & (2 * (((4 * (((v957 & 2) >> 1) & 1)) | 0x52) & (v957 ^ 0x50) ^ v959)) ^ v959)) ^ v959)) ^ v959)) ^ v959)) ^ v959));
  v961 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x464]) ^ 0xD70)) + (v922 ^ 0xB) - 4) - (((v922 ^ 0xFFFFFFD6) + 47) ^ ((v922 ^ 0x6C) - 107) ^ ((v922 ^ 0x6D) - 106)) + 58;
  v962 = v961 & 0xFFFFFFD2 ^ 0xFFFFFF92;
  v963 = (v961 ^ 0x2C) & (2 * ((v961 ^ 0x2C) & (2 * ((v961 ^ 0x2C) & (2 * ((v961 ^ 0x2C) & (2 * ((v961 ^ 0x2C) & (2 * v962) | v962)) ^ v962)) ^ v962)) ^ v962)) ^ v962;
  STACK[0x5E8] = v922;
  if (v922 == 3)
  {
    v964 = -37;
  }

  else
  {
    v964 = 91;
  }

  v965 = v951 ^ v964 ^ v958 ^ v961 ^ (2 * v963);
  v966 = v965;
  switch(v960 ^ v957 ^ 0xA7)
  {
    case 224:
      STACK[0x5F8] = v965;
      goto LABEL_426;
    case 225:
      v966 = v945;
      STACK[0x600] = v965;
      goto LABEL_427;
    case 226:
      STACK[0x628] = v965;
      goto LABEL_426;
    case 227:
      v950 = v965;
      goto LABEL_426;
    case 228:
      STACK[0x638] = v965;
      goto LABEL_426;
    case 229:
      v966 = v945;
      STACK[0x610] = v965;
      goto LABEL_427;
    case 231:
      v966 = v945;
      STACK[0x620] = v965;
      goto LABEL_427;
    case 232:
      LOBYTE(v947) = v965;
      goto LABEL_426;
    case 233:
      v966 = v945;
      STACK[0x640] = v965;
      goto LABEL_427;
    case 234:
      goto LABEL_427;
    case 235:
      STACK[0x618] = v965;
      goto LABEL_426;
    case 236:
      STACK[0x5F0] = v965;
      goto LABEL_426;
    case 237:
      v955 = v965;
      goto LABEL_426;
    case 238:
      v966 = v945;
      LOBYTE(v937) = v965;
      goto LABEL_427;
    case 239:
      STACK[0x630] = v965;
      goto LABEL_426;
    default:
      STACK[0x608] = v965;
LABEL_426:
      v966 = v945;
LABEL_427:
      v967 = STACK[0x464];
      v968 = v955;
      v969 = *(&off_1006B4E30 + LODWORD(STACK[0x464]) - 3321) - 12;
      v970 = STACK[0x398];
      v971 = ((v935 ^ 0x3F) - (v935 ^ 0x4C) - ((2 * ((v935 ^ 0x3F) - (v935 ^ 0x4C))) & 0xA8) - 44) ^ 0x69 ^ *(STACK[0x398] + (v935 ^ 0xF4));
      v972 = ((v897 ^ 0x28) + v969[v897 ^ 0xA9] - 124) ^ 0x95 | ((((STACK[0x5C0] ^ 0xB8) + v969[STACK[0x5C0] ^ 0x39] - 124) ^ 0x89) << 8);
      v973 = (v911 - (v911 ^ 0x73) + (~(2 * (v911 - (v911 ^ 0x73))) | 0x57) - 43) ^ *(STACK[0x398] + (v911 ^ 0xCBLL));
      v974 = STACK[0x3A8];
      v975 = *(STACK[0x3A8] + (LODWORD(STACK[0x5BC]) ^ 0x6BLL));
      v976 = STACK[0x3B0];
      v977 = (v936 ^ 0x7D) + v969[v936 ^ 0xFCLL];
      v978 = (v971 << 24) | ((((-3 * v975 - 22) ^ (4 * ((LOBYTE(STACK[0x3B0]) + 58 * v975) ^ (-3 * v975 - 22)))) ^ 0xC9) << 8);
      LOBYTE(v971) = *(STACK[0x3A8] + (v913 ^ 0x13));
      LOBYTE(v971) = (-3 * v971 - 22) ^ (4 * ((LOBYTE(STACK[0x3B0]) + 58 * v971) ^ (-3 * v971 - 22)));
      v979 = *(STACK[0x3A8] + (v930 ^ 0xCALL));
      v980 = v978 & 0xFF00FFFF | ((((-3 * v979 - 22) ^ (4 * ((LOBYTE(STACK[0x3B0]) + 58 * v979) ^ (-3 * v979 - 22)))) ^ 0xE7) << 16);
      LODWORD(STACK[0x5C0]) = v980 - ((2 * v980) & 0xD8A9200);
      v981 = ((STACK[0x5D0] ^ 0x1D) + v969[STACK[0x5D0] ^ 0x9CLL] - 124) ^ 0x8C;
      v982 = STACK[0x5C8] ^ 0x26;
      LOBYTE(v971) = v971 ^ 0x3E;
      v983 = ((v973 ^ 0xBD) << 8) & 0xFF00FF00 | ((((v908 ^ 0x70) + v969[v908 ^ 0xF1] - 124) ^ 0x13) << 16) | v971;
      LODWORD(STACK[0x5D0]) = v983 - 2 * (v983 & 0x72DC7F ^ v971 & 6);
      v984 = STACK[0x3A0];
      LODWORD(STACK[0x5DC]) = (((*(STACK[0x3A0] + (LODWORD(STACK[0x5DC]) ^ 0x10)) ^ 0x5B) << 16) | (v981 << 8) | (v977 - 124) ^ 0x57) - 2 * (((((*(STACK[0x3A0] + (LODWORD(STACK[0x5DC]) ^ 0x10)) ^ 0x5B) << 16) | (v981 << 8)) & 0x507C6F | ((v977 - 124) ^ 0x57) & 0x6F) ^ ((v977 - 124) ^ 0x57) & 0xB);
      v985 = *(v974 + v982);
      LOBYTE(v983) = *(v974 + (STACK[0x5E0] ^ 0x16));
      v986 = 75 * v985 + 39 * (6 - 2 * v985);
      v987 = v986 ^ (4 * (v986 ^ (v976 + 58 * v985))) ^ 0x57;
      LODWORD(STACK[0x5E0]) = v987 - ((2 * v987) & 0x1DE);
      v988 = v972 & 0xFF00FFFF | ((((-3 * v983 - 22) ^ (4 * ((-3 * v983 - 22) ^ (v976 + 58 * v983)))) ^ 7) << 16);
      LODWORD(STACK[0x5C8]) = v988 - ((2 * v988) & 0x15140BE);
      v989 = (v906 ^ 7) + v969[v906 ^ 0x86];
      v990 = (v942 ^ 0xA3) + v969[v942 ^ 0x22];
      v991 = (v898 ^ 0x25) + v969[v898 ^ 0xA4];
      LOBYTE(v988) = (v947 ^ 8) + v969[v947 ^ 0x89] - 124;
      v992 = v988 | ((*(v984 + (STACK[0x630] ^ 0x60)) ^ 0xA8) << 24);
      v993 = STACK[0x5F0] ^ 0xB3;
      v994 = (STACK[0x5F0] ^ 0x78) - (STACK[0x5F0] ^ 0xB);
      v995 = v950 ^ 0xB7;
      v996 = STACK[0x628] ^ 0x8DLL;
      v997 = (v950 ^ 0x7C) - (v950 ^ 0xF) - ((2 * ((v950 ^ 0x7C) - (v950 ^ 0xF))) & 0xA8);
      LODWORD(v982) = ((((STACK[0x640] ^ 0x18) + v969[STACK[0x640] ^ 0x99] - 124) ^ 0x63) << 16) | ((((v937 ^ 0x96) + v969[v937 ^ 0x17] - 124) ^ 0xA7) << 8);
      v998 = (STACK[0x618] ^ 0x5E) + v969[STACK[0x618] ^ 0xDFLL];
      v999 = (STACK[0x608] ^ 0xC5) + v969[STACK[0x608] ^ 0x44];
      v1000 = STACK[0x600] ^ 0xDELL;
      LODWORD(v982) = v982 & 0xFFFFFF00 | ((((STACK[0x5F8] ^ 4) + v969[STACK[0x5F8] ^ 0x85] - 124) ^ 0xFFFFFFBF) << 24) | ((STACK[0x638] ^ 0xE1) + v969[STACK[0x638] ^ 0x60] - 124);
      LODWORD(STACK[0x630]) = v982 - 2 * (v982 & 0x15D9677F ^ ((STACK[0x638] ^ 0xE1) + v969[STACK[0x638] ^ 0x60] - 124) & 4);
      v1001 = ((*(v984 + (STACK[0x620] ^ 0xD3)) ^ 0xFC) << 8) & 0xFF00FFFF | (((v999 - 124) ^ 0x83) << 16) | v992;
      LODWORD(STACK[0x628]) = v1001 - 2 * (v1001 & 0x5DD056AC ^ v988 & 8);
      v1002 = STACK[0x610] ^ 0xD3;
      v1003 = *(v984 + (v968 ^ 0xB4));
      LODWORD(STACK[0x620]) = (v1003 ^ 0x8A) - ((2 * v1003) & 0xE2);
      v1004 = v967 ^ 0x459;
      LODWORD(STACK[0x638]) = v967 + 6250;
      v1005 = v967 ^ 0x3DE9;
      v1006 = v989 - 124;
      v1007 = v990 - 124;
      LODWORD(STACK[0x600]) = *(v984 + (v966 ^ 0xF2));
      LODWORD(STACK[0x5F0]) = *(v970 + v993);
      v1008 = v991 - 124;
      v1009 = v994 - ((2 * v994) & 0xA8) - 44;
      LODWORD(STACK[0x5F8]) = *(v970 + v995);
      LODWORD(STACK[0x610]) = *(v984 + v996);
      LODWORD(STACK[0x5BC]) = v997 - 44;
      LODWORD(STACK[0x608]) = v998 - 124;
      LODWORD(STACK[0x618]) = *(v984 + v1000);
      v1010 = *(v974 + v1002);
      LODWORD(STACK[0x558]) = v1004;
      LODWORD(STACK[0x640]) = 2 * v1004;
      v1011 = STACK[0x4F8];
      v1012 = (*(STACK[0x4F8] + 8 * v1005))(1032);
      STACK[0x6A8] = v1012;
      v1013 = (*(v1011 + 8 * v1005))(1028);
      v1018 = LODWORD(STACK[0x3B0]);
      v1019 = STACK[0x5E8] == 3;
      v1020 = (LODWORD(STACK[0x5E0]) + 879862767) & 0x1159 ^ 0xD1C833D3 ^ ((LODWORD(STACK[0x5E0]) + 879862767) ^ 0xCB8E5C10) & ((LODWORD(STACK[0x5C0]) + 113592591) ^ 0x355E27A9);
      v1021 = (((LODWORD(STACK[0x5D0]) + 2104679545) ^ 0xE042FF20) & ~((v1006 ^ 0x6B) << 24) | ((v1006 ^ 0x6B) << 24) & 0x62000000) ^ 0xF3ABFE11;
      v1022 = (LODWORD(STACK[0x5C8]) - 274161569) & 0xF8FF1C39 ^ 0x328FD906 ^ ((LODWORD(STACK[0x5C8]) - 274161569) ^ 0x10004380) & (((v1007 ^ 0x1A) << 24) ^ 0x700E3C6);
      v1023 = ((v1008 ^ 0x86) << 24) & 0xD3000000 ^ 0xE17CA5A1 ^ ((LODWORD(STACK[0x5DC]) - 1269793692) ^ 0x98D5BF76) & (((v1008 ^ 0x86) << 24) ^ 0x7FFFFFFF);
      v1024 = (LODWORD(STACK[0x630]) - 1780914309) ^ 0x5820010A;
      v1025 = LODWORD(STACK[0x628]) + 1573934756;
      v1026 = ((v1009 ^ LODWORD(STACK[0x5F0]) ^ 0xF8) << 24) | ((LODWORD(STACK[0x610]) ^ 0x30) << 16) | ((LODWORD(STACK[0x618]) ^ 0x1D) << 8);
      v1027 = (LODWORD(STACK[0x600]) << 24) | ((LODWORD(STACK[0x5BC]) ^ LODWORD(STACK[0x5F8]) ^ 0xE7) << 8) & 0xFF00FF00 | ((LODWORD(STACK[0x608]) ^ 0xCB) << 16) | (-3 * v1010 - 22);
      v1028 = (LODWORD(STACK[0x620]) + 1082018161) & 0x4126 ^ 0x719202B1 ^ ((v1026 - 1125468348 + (~(2 * v1026) | 0x862A91FF)) ^ 0xA3E3299A) & ((LODWORD(STACK[0x620]) + 1082018161) ^ 0xBF81B68E);
      if (STACK[0x5E8] != 3)
      {
        v1021 = v1028;
      }

      LODWORD(STACK[0x38C]) = v1021;
      if (v1019)
      {
        v1029 = v1023;
      }

      else
      {
        v1029 = v1024;
      }

      LODWORD(STACK[0x388]) = v1029;
      v1030 = v1025 ^ 0x80F76CCB;
      if (v1019)
      {
        v1030 = v1022;
      }

      LODWORD(STACK[0x384]) = v1030;
      if (!v1019)
      {
        v1020 = v1027 ^ (4 * (((-3 * v1010 - 22) ^ (v1018 + 58 * v1010)) & 0x3F)) ^ 0xE2535CCC;
      }

      LODWORD(STACK[0x380]) = v1020;
      if (v1012)
      {
        v1031 = v1013 == 0;
      }

      else
      {
        v1031 = 1;
      }

      v1032 = !v1031;
      v1033 = STACK[0x638];
      STACK[0x6B0] = v1013;
      return (*(v1011 + 8 * ((214 * v1032) ^ v1033)))(v1013, 1905394353, v1018, v1014, 58, v1015, v1016, v1017, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
  }
}

uint64_t sub_100284DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  STACK[0x608] = LODWORD(STACK[0x55C]) ^ 0x17u;
  STACK[0x610] = LODWORD(STACK[0x560]) ^ 0x25u;
  v7 = STACK[0x258] ^ 0x7F;
  STACK[0x390] = v6;
  v8 = STACK[0x268];
  v9 = (STACK[0x268] ^ 0xFE) + *(v6 + v7);
  LOBYTE(v7) = *(STACK[0x3A8] + (STACK[0x250] ^ 8));
  STACK[0x600] = v5;
  v10 = BYTE2(v8);
  v11 = v10 ^ 5;
  v12 = (v10 ^ 5) & 0x55555555 | STACK[0x264] & 0xAA;
  LOBYTE(v10) = *(STACK[0x398] + (v10 ^ 0xCE)) ^ 0xBB;
  v13 = (v9 - 124) | ((v10 + v11 - (v12 ^ 0x73) - 2 * (v10 & (v11 - (v12 ^ 0x73)))) << 16) | ((((-3 * v7 - 22) ^ (4 * ((a3 + v7 * a5) ^ (-3 * v7 - 22)))) ^ 0x2C) << 8) | ((*(STACK[0x3A0] + (STACK[0x278] ^ 0xD5)) ^ 0x45) << 24);
  v14 = STACK[0x690];
  v15 = *(STACK[0x248] + (*(STACK[0x690] + 2) ^ 0x10)) - 118;
  v16 = STACK[0x288];
  v17 = LODWORD(STACK[0x558]) + 322;
  v18 = *(&off_1006B4E30 + LODWORD(STACK[0x558]) - 2003) - 12;
  v19 = *(STACK[0x230] + (*(STACK[0x690] + 13) ^ 0xDBLL)) ^ 0xE5 | ((*(STACK[0x238] + (*(STACK[0x690] + 4) ^ 0x84)) ^ (*(STACK[0x690] + 4) - ((2 * *(STACK[0x690] + 4)) & 0x62) - 79) ^ 0xD) << 8) | ((v18[*(STACK[0x690] + 12) ^ 0xCELL] ^ 0x1D) << 24);
  v20 = (*(STACK[0x270] + (*(STACK[0x690] + 8) ^ 0x24)) + (*(STACK[0x690] + 8) ^ 0xF9) - 94) ^ 0xC0 | ((v18[*(STACK[0x690] + 6) ^ 0xCELL] ^ 0x1D) << 24);
  HIDWORD(v21) = *(*(&off_1006B4E30 + (v17 ^ 0xAA5)) + (*(STACK[0x690] + 7) ^ 0x7FLL) - 12);
  LODWORD(v21) = (HIDWORD(v21) ^ 0xFFFFFF9F) << 24;
  LOBYTE(v18) = *(*(&off_1006B4E30 + LODWORD(STACK[0x558]) - 2093) + (*(STACK[0x690] + 15) ^ 0xD4) - 12);
  v22 = ((*(STACK[0x280] + (*(STACK[0x690] + 1) ^ 0xE3)) ^ (*(STACK[0x690] + 1) + (~(2 * *(STACK[0x690] + 1)) | 0x29) - 20) ^ 0xBBBBBBBB) << 24) | ((((v21 >> 27) ^ (8 * (v21 >> 27) * (v21 >> 27))) ^ 0xE8) << 8) | (((v18 ^ ((v18 ^ 0x88) >> 5) ^ ((v18 ^ 0x88) >> 2)) ^ 0xD8) << 16);
  v23 = ((v15 ^ (4 * v15) & 0xB4 ^ 0x60) << 24) | ((*(STACK[0x288] + (*(STACK[0x690] + 9) ^ 0xB4)) ^ (*(STACK[0x690] + 9) - ((2 * *(STACK[0x690] + 9)) & 0x92) + 73) ^ 0xFB) << 16) | ((*(STACK[0x238] + (*(STACK[0x690] + 5) ^ 0x84)) ^ (*(STACK[0x690] + 5) - ((2 * *(STACK[0x690] + 5)) & 0x62) - 79) ^ 0xD) << 8);
  v24 = v20 | ((*(STACK[0x240] + (*(STACK[0x690] + 3) ^ 0x5ELL)) ^ 0x53) << 16);
  v25 = *(STACK[0x690] + 11);
  LODWORD(STACK[0x638]) = v17;
  v26 = *(&off_1006B4E30 + (v17 & 0x5D666784)) - 12;
  v27 = v26[*(v14 + 10) ^ 0x1CLL] ^ (*(v14 + 10) - ((2 * *(v14 + 10)) & 0x52) + 41) ^ 0xC6 | v23;
  LODWORD(v7) = v24 | ((*(*(&off_1006B4E30 + v17 - 1696) + (*v14 ^ 5) - 4) ^ 0x21 ^ ((*v14 ^ 0xDF) - ((2 * (*v14 ^ 0xDF) - 20) & 0xB8) - 46)) << 8);
  LODWORD(v14) = v19 | ((*(v16 + (*(v14 + 14) ^ 0xB4)) ^ (*(v14 + 14) - ((2 * *(v14 + 14)) & 0x92) + 73) ^ 0xFB) << 16);
  v28 = v13 ^ 0x81 ^ (v26[v25 ^ 0x1C] ^ (v25 - ((2 * v25) & 0x52) + 41) ^ 0x53 | v22);
  v29 = v14 ^ v13;
  LODWORD(STACK[0x630]) = v13;
  v30 = v14 ^ v13 ^ 0xAEF7DFF7;
  v31 = STACK[0x2C8];
  v32 = v27 ^ v14 ^ v28;
  LODWORD(v7) = v7 ^ v13 ^ v32;
  v33 = v7 ^ v28;
  LODWORD(v10) = ((v7 ^ v28) >> 8);
  HIDWORD(v21) = *(STACK[0x2C8] + 4 * (HIBYTE(v30) ^ 0x37)) ^ (HIBYTE(v30) - (HIBYTE(v30) ^ 0xACF0763A) - ((2 * (HIBYTE(v30) - (HIBYTE(v30) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v14) = *(STACK[0x2C8] + 4 * (v10 ^ 0xBE)) ^ ((v10 ^ 0x89) - (v10 ^ 0xACF076B3) - ((2 * ((v10 ^ 0x89) - (v10 ^ 0xACF076B3))) & 0xA21A17AE) - 48415785);
  v34 = v7 ^ v29;
  LODWORD(v10) = (v7 ^ v29 ^ 0x1BEDDEEB) >> 24;
  v35 = STACK[0x2C0];
  LODWORD(v7) = *(STACK[0x2C0] + 4 * (BYTE2(v32) ^ 0xF3u)) ^ __ROR4__(*(STACK[0x2C0] + 4 * ((v7 ^ v29) ^ 0xE8u)) ^ 0xA0F1D11, 16) ^ __ROR4__(v14 ^ 0xE8251463, 8) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516);
  HIDWORD(v21) = *(STACK[0x2C8] + 4 * (v10 ^ 0x37)) ^ 0xE8251463 ^ (v10 - (v10 ^ 0xACF0763A) - 48415785 + ((2 * (v10 - (v10 ^ 0xACF0763A))) & 0x7AE ^ 0x5DE5EFFF) + 1);
  LODWORD(v21) = HIDWORD(v21);
  v36 = STACK[0x2B8];
  v37 = (v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * ((v32 ^ 0x8C8F) >> 8));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v38 = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  v39 = STACK[0x2B0];
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * (HIBYTE(v33) ^ 0xE3)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  v40 = *(STACK[0x2B0] + 4 * ((v34 ^ 0x1BEDDEEBu) >> 16)) ^ __ROR4__(*(STACK[0x2C0] + 4 * (BYTE1(v29) ^ 0xDCu)) ^ 0xA0F1D11, 8) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52) + 827954729);
  HIDWORD(v21) = *(STACK[0x2C0] + 4 * (HIBYTE(v32) ^ 0x48)) ^ 0xA0F1D11;
  LODWORD(v21) = HIDWORD(v21);
  v41 = v40 ^ __ROR4__(*(STACK[0x2B0] + 4 * (v32 ^ 0x8Fu)) ^ 0xFBA6742C, 16);
  v42 = *(STACK[0x2B0] + 4 * BYTE2(v30)) ^ __ROR4__(*(STACK[0x2C0] + 4 * (v33 ^ 0x6Eu)) ^ 0xA0F1D11, 16) ^ __ROR4__(v38, 8) ^ 0x239F1750 ^ (v37 + 827954729);
  v43 = *(STACK[0x2C0] + 4 * (BYTE2(v33) ^ 0x1Cu)) ^ __ROR4__(*(STACK[0x2C0] + 4 * (BYTE1(v34) ^ 0xDDu)) ^ 0xA0F1D11, 8) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516) ^ __ROR4__(*(STACK[0x2C0] + 4 * (v29 ^ 0xF4u)) ^ 0xA0F1D11, 16) ^ 0x1E274E28;
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * (BYTE3(v7) ^ 0x53)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  v44 = ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52) + 827954729) ^ *(STACK[0x2B0] + 4 * BYTE2(v43));
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE1(v41) ^ 0xA3u));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v45 = v44 ^ __ROR4__(*(STACK[0x2B0] + 4 * v42) ^ 0xFBA6742C, 16) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 8);
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * HIBYTE(v42)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  v46 = ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516) ^ *(STACK[0x2C0] + 4 * (BYTE2(v7) ^ 0x1Eu)) ^ __ROR4__(*(STACK[0x2B0] + 4 * (v41 ^ 0xF0u)) ^ 0xFBA6742C, 16);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * BYTE2(v42));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v47 = v21 >> 2;
  v48 = v46 ^ __ROR4__(*(STACK[0x2C8] + 4 * (BYTE1(v43) ^ 0x37u)) ^ (BYTE1(v43) - (BYTE1(v43) ^ 0xACF0763A) - ((2 * (BYTE1(v43) - (BYTE1(v43) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463, 8);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * v43);
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v49 = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  v50 = v47 ^ __ROR4__(*(STACK[0x2C0] + 4 * (HIBYTE(v41) ^ 0xAE)) ^ 0xA0F1D11, 24) ^ __ROR4__(*(STACK[0x2B0] + 4 * (BYTE1(v7) ^ 0x41u)) ^ 0xFBA6742C, 8) ^ (v47 >> 1) & 0x159C4245;
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * HIBYTE(v43)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  v51 = v21 >> 24;
  v52 = v50 ^ __ROR4__(v49, 16);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * BYTE1(v42));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  LODWORD(v7) = (v51 - ((2 * v51) & 0x79826368) - 1128189516) ^ *(STACK[0x2C0] + 4 * (BYTE2(v41) ^ 0xCBu)) ^ __ROR4__(*(STACK[0x2C0] + 4 * (v7 ^ 2u)) ^ 0xA0F1D11, 16) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 8);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE2(v7) ^ 4u));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v53 = v21 >> 2;
  v54 = v7 ^ 0xC5B9FAF;
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE1(v52) ^ 0xB2u));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v55 = v48 ^ 0xD8D1B9D0;
  v56 = v48 ^ 0xE7;
  v57 = (v48 ^ 0xD0) - (v48 ^ 0xACF076EA);
  LODWORD(v7) = v53 ^ __ROR4__(*(STACK[0x2B0] + 4 * ((v45 ^ 0x55978F08u) >> 24)) ^ 0xFBA6742C, 24) ^ (v53 >> 1) & 0x159C4245 ^ __ROR4__(*(STACK[0x2C8] + 4 * v56) ^ 0xE8251463 ^ (v57 - ((2 * v57) & 0xA21A17AE) - 48415785), 16) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 8);
  v58 = *(STACK[0x2B0] + 4 * ((v45 ^ 0x55978F08u) >> 16));
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * (v52 ^ 0xC5u)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  v59 = (v21 >> 16) ^ __ROR4__(*(STACK[0x2C8] + 4 * (HIBYTE(v55) ^ 0x37)) ^ (HIBYTE(v55) - (HIBYTE(v55) ^ 0xACF0763A) - ((2 * (HIBYTE(v55) - (HIBYTE(v55) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463, 24) ^ (((2 * v58) & 0xD899B5F6 ^ 0xBF6EDBAD) - 1650036443 + (((v58 ^ 0x3C9B030) - 63549488) ^ ((v58 ^ 0xD86531CE) + 664456754) ^ ((v58 ^ 0xEAF517D7) + 353036329))) ^ __ROR4__(*(STACK[0x2C8] + 4 * (BYTE1(v54) ^ 0x37u)) ^ (BYTE1(v54) - (BYTE1(v54) ^ 0xACF0763A) - ((2 * (BYTE1(v54) - (BYTE1(v54) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463, 8);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * BYTE2(v55));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v60 = v21 >> 2;
  LODWORD(v16) = ((v45 ^ 0x8F08) >> 8);
  v61 = v16 + 1874078390 + v16 - 2 * (v16 + 1874078390);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * v54);
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v62 = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v21) = (HIBYTE(v54) - (HIBYTE(v54) ^ 0xACF0763A) - ((2 * (HIBYTE(v54) - (HIBYTE(v54) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v54) ^ 0x37)) ^ 0xE8251463;
  LODWORD(v21) = HIDWORD(v21);
  v63 = *(STACK[0x2C0] + 4 * (BYTE2(v52) ^ 0x5Du)) ^ __ROR4__((BYTE1(v55) - (BYTE1(v55) ^ 0xACF0763A) - ((2 * (BYTE1(v55) - (BYTE1(v55) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (BYTE1(v55) ^ 0x37u)) ^ 0xE8251463, 8) ^ __ROR4__(*(STACK[0x2C0] + 4 * (v45 ^ 0xBu)) ^ 0xA0F1D11, 16) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516);
  v64 = v60 ^ __ROR4__(*(STACK[0x2C0] + 4 * (HIBYTE(v52) ^ 0x44)) ^ 0xA0F1D11, 24) ^ __ROR4__((v61 - ((2 * v61) & 0x20822368) - 1128189516) ^ *(STACK[0x2C0] + 4 * (v16 ^ 3)) ^ 0x2685F9EF, 8) ^ (v60 >> 1) & 0x159C4245 ^ __ROR4__(v62, 16) ^ 0x69619F9C;
  HIDWORD(v21) = *(STACK[0x2C8] + 4 * (((v7 ^ 0x98F70121) >> 24) ^ 0x37)) ^ (((v7 ^ 0x98F70121) >> 24) - (((v7 ^ 0x98F70121) >> 24) ^ 0xACF0763A) - ((2 * (((v7 ^ 0x98F70121) >> 24) - (((v7 ^ 0x98F70121) >> 24) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v16) = (v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * BYTE1(v64));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v65 = (v59 ^ 0xA1) - (v59 ^ 0xACF0769B);
  v66 = v63 ^ 0x43FEF433;
  v67 = (v16 + 827954729) ^ *(STACK[0x2B0] + 4 * ((v63 ^ 0x43FEF433u) >> 16)) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 8) ^ __ROR4__(*(STACK[0x2C8] + 4 * (v59 ^ 0x96u)) ^ 0xE8251463 ^ (v65 - ((2 * v65) & 0xA21A17AE) - 48415785), 16);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * v64);
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v68 = ((v7 ^ 0x98F70121) >> 16);
  v69 = *(STACK[0x2C8] + 4 * (v68 ^ 0x37u)) ^ (v68 - (v68 ^ 0xACF0763A) - ((2 * (v68 - (v68 ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ __ROR4__(*(STACK[0x2B0] + 4 * ((v59 ^ 0xB96EB9A1) >> 24)) ^ 0xFBA6742C, 24) ^ __ROR4__(*(STACK[0x2C0] + 4 * (((v63 ^ 0xF433) >> 8) ^ 3u)) ^ 0xA0F1D11, 8) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 16);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * ((v59 ^ 0xB96EB9A1) >> 16));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v70 = (v63 ^ 0x33) - (v63 ^ 0xACF07609);
  v71 = (v21 >> 2) ^ __ROR4__(*(STACK[0x2B0] + 4 * HIBYTE(v64)) ^ 0xFBA6742C, 24) ^ __ROR4__(*(STACK[0x2C0] + 4 * (BYTE1(v7) ^ 2u)) ^ 0xA0F1D11, 8) ^ ((v21 >> 2) >> 1) & 0x159C4245 ^ __ROR4__((v70 - ((2 * v70) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (v63 ^ 4u)) ^ 0xE8251463, 16);
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * HIBYTE(v66)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v16) = ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52) + 827954729) ^ *(STACK[0x2B0] + 4 * BYTE2(v64));
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE1(v59) ^ 0xFAu));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v72 = (v7 ^ 0x21) - (v7 ^ 0xACF0761B);
  v73 = v16 ^ __ROR4__((v72 - ((2 * v72) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (v7 ^ 0x16u)) ^ 0xE8251463, 16) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 8);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * ((v67 ^ 0x70FF388Du) >> 24));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  LODWORD(v16) = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  v74 = v73 ^ 0xED907794;
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * ((v73 ^ 0xED907794) >> 16));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v75 = (v69 ^ 0x40) - (v69 ^ 0xACF0767A);
  v76 = (v21 >> 2) ^ __ROR4__(*(STACK[0x2B0] + 4 * ((v71 ^ 0x109F) >> 8)) ^ 0xFBA6742C, 8) ^ ((v21 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(v16, 24) ^ __ROR4__(*(STACK[0x2C8] + 4 * (v69 ^ 0x77u)) ^ 0xE8251463 ^ (v75 - ((2 * v75) & 0xA21A17AE) - 48415785), 16);
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * ((v69 ^ 0x96F39740) >> 24)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v16) = *(STACK[0x2B0] + 4 * ((v67 ^ 0x70FF388Du) >> 16)) ^ __ROR4__(*(STACK[0x2C0] + 4 * (BYTE1(v73) ^ 0x74u)) ^ 0xA0F1D11, 8) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52) + 827954729);
  HIDWORD(v21) = (((v71 ^ 0x8F3109Fu) >> 24) - (((v71 ^ 0x8F3109Fu) >> 24) ^ 0xACF0763A) - ((2 * (((v71 ^ 0x8F3109Fu) >> 24) - (((v71 ^ 0x8F3109Fu) >> 24) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (((v71 ^ 0x8F3109Fu) >> 24) ^ 0x37)) ^ 0xE8251463;
  LODWORD(v21) = HIDWORD(v21);
  v77 = v16 ^ __ROR4__(*(STACK[0x2C0] + 4 * (v71 ^ 0x9Cu)) ^ 0xA0F1D11, 16);
  LODWORD(v16) = (v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * ((v67 ^ 0x388D) >> 8));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v78 = *(STACK[0x2B0] + 4 * ((v69 ^ 0x96F39740) >> 16)) ^ __ROR4__(*(STACK[0x2B0] + 4 * (v73 ^ 0x94u)) ^ 0xFBA6742C, 16) ^ (v16 + 827954729) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 8);
  HIDWORD(v21) = *(STACK[0x2B0] + 4 * HIBYTE(v74)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v16) = ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x62B32C52) + 827954729) ^ *(STACK[0x2B0] + 4 * ((v71 ^ 0x8F3109Fu) >> 16));
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * ((v69 ^ 0x9740) >> 8));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  LODWORD(v7) = (v67 ^ 0x8D) - (v67 ^ 0xACF076B7);
  v79 = v16 ^ __ROR4__((v7 - ((2 * v7) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (v67 ^ 0xBAu)) ^ 0xE8251463, 16) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 8);
  HIDWORD(v21) = *(STACK[0x2C0] + 4 * (HIBYTE(v76) ^ 0xE3)) ^ 0xA0F1D11;
  LODWORD(v21) = HIDWORD(v21);
  v80 = ((v78 ^ 0xEFAD) >> 8);
  BYTE1(v25) = BYTE1(v77) ^ 0xAE;
  LODWORD(v7) = ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516) ^ *(STACK[0x2C0] + 4 * (BYTE2(v79) ^ 0x9Fu)) ^ __ROR4__(*(STACK[0x2B0] + 4 * (v77 ^ 0x4Fu)) ^ 0xFBA6742C, 16) ^ __ROR4__(*(STACK[0x2C8] + 4 * (v80 ^ 0x37u)) ^ (v80 - (v80 ^ 0xACF0763A) - ((2 * (v80 - (v80 ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463, 8);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE2(v76) ^ 0xEFu));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v81 = v21 >> 2;
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (v78 ^ 0xADu));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v82 = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE2(v77) ^ 0x5Bu));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  LODWORD(v16) = v21 >> 2;
  v83 = v81 ^ __ROR4__((((v77 ^ 0xD618AE4F) >> 24) - (((v77 ^ 0xD618AE4F) >> 24) ^ 0xACF0763A) - ((2 * (((v77 ^ 0xD618AE4F) >> 24) - (((v77 ^ 0xD618AE4F) >> 24) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (((v77 ^ 0xD618AE4F) >> 24) ^ 0x37)) ^ 0xE8251463, 24) ^ __ROR4__(*(STACK[0x2B0] + 4 * (BYTE1(v79) ^ 0x45u)) ^ 0xFBA6742C, 8) ^ (v81 >> 1) & 0x159C4245 ^ __ROR4__(v82, 16);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE1(v76) ^ 0x13u));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v84 = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  v85 = (HIBYTE(v79) ^ 0x29) - (HIBYTE(v79) ^ 0xACF07613);
  HIDWORD(v21) = (v85 - ((2 * v85) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v79) ^ 0x1E)) ^ 0xE8251463;
  LODWORD(v21) = HIDWORD(v21);
  v86 = (v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (v76 ^ 0x9Du));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  LODWORD(v25) = *(STACK[0x2C0] + 4 * (BYTE2(v78) ^ 0x93u)) ^ __ROR4__((BYTE1(v25) - (BYTE1(v25) ^ 0xACF0763A) - ((2 * (BYTE1(v25) - (BYTE1(v25) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (BYTE1(v25) ^ 0x37u)) ^ 0xE8251463, 8) ^ (v86 - 1128189516) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 16);
  HIDWORD(v21) = *(STACK[0x2C0] + 4 * (BYTE3(v7) ^ 9)) ^ 0xA0F1D11;
  LODWORD(v21) = HIDWORD(v21);
  v87 = v16 ^ __ROR4__(*(STACK[0x2C0] + 4 * (HIBYTE(v78) ^ 0x6C)) ^ 0xA0F1D11, 24) ^ (v16 >> 1) & 0x159C4245 ^ __ROR4__(*(STACK[0x2C0] + 4 * (v79 ^ 0xDFu)) ^ 0xA0F1D11, 16) ^ __ROR4__(v84, 8) ^ 0xA6E822B5;
  v88 = *(STACK[0x2C0] + 4 * (BYTE2(v25) ^ 0x46u)) ^ __ROR4__(*(STACK[0x2B0] + 4 * BYTE1(v87)) ^ 0xFBA6742C, 8) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516) ^ __ROR4__(*(STACK[0x2C0] + 4 * (v83 ^ 0x4Eu)) ^ 0xA0F1D11, 16);
  HIDWORD(v21) = *(STACK[0x2C0] + 4 * (HIBYTE(v83) ^ 0x36)) ^ 0xA0F1D11;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v16) = ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516) ^ *(STACK[0x2C0] + 4 * (BYTE2(v7) ^ 0xA0u));
  v89 = ((v25 ^ 0x8959) >> 8);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * v87);
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v90 = v16 ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 16) ^ __ROR4__(*(STACK[0x2C8] + 4 * (v89 ^ 0x37u)) ^ (v89 - (v89 ^ 0xACF0763A) - ((2 * (v89 - (v89 ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463, 8);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * HIBYTE(v87));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  HIDWORD(v21) = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v16) = (v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368);
  v91 = ((v7 ^ 0xDB44) >> 8);
  v92 = (v25 ^ 0x59) - (v25 ^ 0xACF07663);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (BYTE3(v25) ^ 0x97));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v93 = *(STACK[0x2C0] + 4 * (BYTE2(v83) ^ 0x81u)) ^ __ROR4__((v91 - (v91 ^ 0xACF0763A) - ((2 * (v91 - (v91 ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (v91 ^ 0x37u)) ^ 0xE8251463, 8) ^ __ROR4__(*(STACK[0x2C8] + 4 * (v25 ^ 0x6Eu)) ^ 0xE8251463 ^ (v92 - ((2 * v92) & 0xA21A17AE) - 48415785), 16) ^ (v16 - 1128189516);
  v94 = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * BYTE2(v87));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v95 = (v7 ^ 0x44) - (v7 ^ 0xACF0767E);
  v96 = (v21 >> 2) ^ __ROR4__(*(STACK[0x2B0] + 4 * (BYTE1(v83) ^ 0xDCu)) ^ 0xFBA6742C, 8) ^ ((v21 >> 2) >> 1) & 0x159C4245 ^ __ROR4__((v95 - ((2 * v95) & 0xA21A17AE) - 48415785) ^ *(STACK[0x2C8] + 4 * (v7 ^ 0x73u)) ^ 0xE8251463, 16) ^ __ROR4__(v94, 24);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (HIBYTE(v88) ^ 0xC2));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  HIDWORD(v21) = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  LODWORD(v21) = HIDWORD(v21);
  v97 = (v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368);
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * ((v93 ^ 0x267B) >> 8));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v98 = (v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245;
  HIDWORD(v21) = *(STACK[0x2B8] + 4 * (HIBYTE(v90) ^ 0xE5));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v99 = *(STACK[0x2C0] + 4 * (BYTE2(v96) ^ 0x4Fu)) ^ __ROR4__(*(STACK[0x2B0] + 4 * (v90 ^ 0x63u)) ^ 0xFBA6742C, 16) ^ __ROR4__(v98, 8) ^ (v97 - 1128189516);
  v100 = ((v88 ^ 0x8191F3D3) >> 16);
  v101 = *(STACK[0x2C8] + 4 * (v100 ^ 0x37u)) ^ (v100 - (v100 ^ 0xACF0763A) - ((2 * (v100 - (v100 ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 24);
  LODWORD(STACK[0x628]) = -1393527190;
  v102 = (BYTE1(v96) ^ 0x50) - (BYTE1(v96) ^ 0xACF0766A);
  LODWORD(v16) = (v93 ^ 0x7B) - (v93 ^ 0xACF07641);
  v103 = v101 ^ __ROR4__(*(v31 + 4 * (v93 ^ 0x4Cu)) ^ 0xE8251463 ^ (v16 - ((2 * v16) & 0xA21A17AE) - 48415785), 16) ^ __ROR4__(*(v31 + 4 * (BYTE1(v96) ^ 0x67u)) ^ (v102 - ((2 * v102) & 0xA21A17AE) - 48415785) ^ 0xE8251463, 8);
  v104 = ((v90 ^ 0xBAD23A63) >> 16);
  v105 = *(v35 + 4 * (v96 ^ 0x5Fu));
  v106 = ((v104 ^ 0x83) - (v104 ^ 0xACF076B9) - ((2 * ((v104 ^ 0x83) - (v104 ^ 0xACF076B9))) & 0xA21A17AE) - 48415785) ^ *(v31 + 4 * (v104 ^ 0xB4u)) ^ __ROR4__(*(v39 + 4 * (HIBYTE(v93) ^ 0x44)) ^ 0xFBA6742C, 24) ^ __ROR4__(*(v35 + 4 * (BYTE1(v88) ^ 0xF0u)) ^ 0xA0F1D11, 8) ^ __ROR4__((v105 ^ 0x2C8AE4FE ^ -(v105 ^ 0x2C8AE4FE) ^ (646314479 - (v105 ^ 0xA0F1D11))) + 646314479, 16);
  HIDWORD(v21) = *(v39 + 4 * (HIBYTE(v96) ^ 4)) ^ 0xFBA6742C;
  LODWORD(v21) = HIDWORD(v21);
  v107 = (v88 ^ 0xD3) - (v88 ^ 0xACF076E9);
  v108 = *(v35 + 4 * (BYTE2(v93) ^ 0x69u)) ^ __ROR4__(*(v35 + 4 * (BYTE1(v90) ^ 0x39u)) ^ 0xA0F1D11, 8) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516);
  LODWORD(v21) = __ROR4__((v107 - ((2 * v107) & 0xA21A17AE) - 48415785) ^ *(v31 + 4 * (v88 ^ 0xE4u)) ^ 0xE8251463, 16);
  BYTE1(v88) = BYTE1(v108) ^ BYTE1(v21);
  v109 = v108 ^ v21 ^ 0x10590702;
  HIDWORD(v21) = *(v36 + 4 * (HIBYTE(v103) ^ 0x30));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v110 = v21 >> 2;
  v111 = *(v31 + 4 * (BYTE2(v109) ^ 0xB4u)) ^ __ROR4__(*(v31 + 4 * (((v99 ^ 0x6E9FA950u) >> 24) ^ 0x37)) ^ (((v99 ^ 0x6E9FA950u) >> 24) - (((v99 ^ 0x6E9FA950u) >> 24) ^ 0xACF0763A) - ((2 * (((v99 ^ 0x6E9FA950u) >> 24) - (((v99 ^ 0x6E9FA950u) >> 24) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ 0xE8251463, 24) ^ __ROR4__(*(v35 + 4 * (BYTE1(v106) ^ 0xEFu)) ^ 0xA0F1D11, 8) ^ __ROR4__(*(v35 + 4 * (v103 ^ 0x88u)) ^ 0xA0F1D11, 16) ^ ((BYTE2(v109) ^ 0x83) - (BYTE2(v109) ^ 0xACF076B9) - ((2 * ((BYTE2(v109) ^ 0x83) - (BYTE2(v109) ^ 0xACF076B9))) & 0xA21A17AE) - 48415785);
  HIDWORD(v21) = *(v36 + 4 * (BYTE2(v99) ^ 0xC0u));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  v112 = (v106 ^ 0x23) - (v106 ^ 0xACF07619);
  v113 = (v21 >> 2) ^ __ROR4__(*(v35 + 4 * (BYTE1(v88) ^ 0x75u)) ^ 0xA0F1D11, 8) ^ ((v21 >> 2) >> 1) & 0x159C4245 ^ __ROR4__(v110 ^ 0x71A84ECF ^ (v110 >> 1) & 0x159C4245, 24) ^ __ROR4__(*(v31 + 4 * (v106 ^ 0x14u)) ^ 0xE8251463 ^ (v112 - ((2 * v112) & 0xA21A17AE) - 48415785), 16);
  HIDWORD(v21) = *(v35 + 4 * (HIBYTE(v106) ^ 0xB9)) ^ 0xA0F1D11;
  LODWORD(v21) = HIDWORD(v21);
  v114 = *(v35 + 4 * (BYTE2(v103) ^ 0x6Eu)) ^ __ROR4__(*(v35 + 4 * (BYTE1(v99) ^ 0xAAu)) ^ 0xA0F1D11, 8) ^ ((v21 >> 24) - ((2 * (v21 >> 24)) & 0x79826368) - 1128189516) ^ __ROR4__(*(v39 + 4 * v109) ^ 0xFBA6742C, 16);
  HIDWORD(v21) = *(v36 + 4 * ((v106 ^ 0xCB1EEC23) >> 16));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  LODWORD(v7) = v21 >> 2;
  LODWORD(v14) = (BYTE1(v103) ^ 0x50) - (BYTE1(v103) ^ LODWORD(STACK[0x628]));
  HIDWORD(v21) = *(v36 + 4 * (v99 ^ 0x50u));
  LODWORD(v21) = HIDWORD(v21) ^ 0xE010E120;
  LODWORD(v10) = v7 ^ __ROR4__((HIBYTE(v109) - (HIBYTE(v109) ^ 0xACF0763A) - ((2 * (HIBYTE(v109) - (HIBYTE(v109) ^ 0xACF0763A))) & 0xA21A17AE) - 48415785) ^ *(v31 + 4 * (HIBYTE(v109) ^ 0x37)) ^ 0xE8251463, 24) ^ __ROR4__((v14 - ((2 * v14) & 0xA21A17AE) - 48415785) ^ *(v31 + 4 * (BYTE1(v103) ^ 0x67u)) ^ 0xE8251463, 8) ^ (v7 >> 1) & 0x159C4245 ^ __ROR4__((v21 >> 2) ^ 0x71A84ECF ^ ((v21 >> 2) >> 1) & 0x159C4245, 16);
  LODWORD(v7) = *(STACK[0x298] + 2 * (BYTE2(v10) ^ 0x33u));
  v115 = *(STACK[0x2A8] + 2 * (HIBYTE(v111) ^ 0x4B));
  v116 = v114 ^ 0xE9B75F41;
  v117 = *(STACK[0x298] + 2 * (v113 ^ 0x27u));
  HIDWORD(v21) = v117 ^ 0x11A0 ^ (v117 >> 2) & 0x2B3C;
  LODWORD(v21) = WORD2(v21) & 0xFF00;
  v118 = (v21 >> 8) ^ ((((v114 ^ 0x5F41) >> 8) - (((v114 ^ 0xE9B75F41) >> 7) & 2) - 5375) ^ *(STACK[0x2A0] + 2 * (((v114 ^ 0x5F41) >> 8) ^ 0xF7u)) | ((v115 ^ 0xD3E7 ^ (((16 * v115) ^ 0xC3C0) - 24224)) << 16)) ^ ((v7 ^ 0x59F7 ^ (((v7 >> 2) & 0x2B3C ^ 0x210) - ((2 * ((v7 >> 2) & 0x2B3C ^ 0x210)) & 0x1408) + 19015)) << 8);
  v119 = *(STACK[0x2A8] + 2 * (HIBYTE(v113) ^ 0xAB));
  LOWORD(v83) = *(STACK[0x2A8] + 2 * (BYTE2(v111) ^ 3u));
  LOWORD(v16) = *(STACK[0x2A8] + 2 * (BYTE1(v10) ^ 0x83u));
  HIDWORD(v21) = ((v114 ^ 0x41) - 2 * ((v114 ^ 0xE9B75F41) & 1) - 5375) ^ 0xFFFFF3AA ^ *(STACK[0x2A0] + 2 * (v114 ^ 0xB6u));
  LODWORD(v21) = WORD2(v21) & 0xFF00;
  LODWORD(v7) = ((v83 ^ 0xD3E7 ^ (((16 * v83) ^ 0xC3C0) - 24224)) << 8) ^ ((v119 ^ 0xD3E7 ^ (((16 * v119) ^ 0xC3C0) - 24224)) << 16) ^ v16 ^ 0xD3E7 ^ (((16 * v16) ^ 0xC3C0) - 24224) ^ (v21 >> 8);
  v120 = *(STACK[0x2A8] + 2 * (v10 ^ 0x79u));
  HIDWORD(v21) = v120 ^ 0xFFFFBAD5 ^ (((16 * v120) ^ 0xFFFFC3C0) + ((-17120 - 2 * ((16 * v120) ^ 0xFFFFC3C0)) | 0x2D9F) + 2707);
  LODWORD(v21) = WORD2(v21) & 0xFF00;
  v121 = (((BYTE1(v111) ^ 0x77) - 2 * ((BYTE1(v111) ^ 0x77) & 1) - 5375) ^ 0xB5CE ^ *(STACK[0x2A0] + 2 * (BYTE1(v111) ^ 0x80u)) | ((*(STACK[0x290] + 2 * (HIBYTE(v114) ^ 0xF1)) ^ 0x1669) << 16)) ^ ((*(STACK[0x298] + 2 * (BYTE2(v113) ^ 0x4Fu)) ^ 0x11A0 ^ (*(STACK[0x298] + 2 * (BYTE2(v113) ^ 0x4Fu)) >> 2) & 0x2B3C) << 8) ^ (v21 >> 8);
  v122 = *(STACK[0x298] + 2 * (BYTE1(v113) ^ 0x31u)) ^ 0x3FD2;
  v123 = *(STACK[0x2A8] + 2 * (v111 ^ 0xBDu));
  HIDWORD(v21) = v123 ^ 0xFFFFD3E7 ^ (((16 * v123) ^ 0xFFFFC3C0) - 24224);
  LODWORD(v21) = WORD2(v21) & 0xFF00;
  LODWORD(v14) = v118 ^ v7 ^ ((*(STACK[0x290] + 2 * (BYTE3(v10) ^ 6)) ^ 0x1669) << 16) ^ (((BYTE2(v116) - ((v116 >> 15) & 2) - 5375) ^ 0xF3AA ^ *(STACK[0x2A0] + 2 * (BYTE2(v116) ^ 0xF7u))) << 8) ^ (v122 >> 2) & 0x2B3C ^ v122 ^ (v21 >> 8) ^ 0x222C553A;
  v124 = v121 ^ v118;
  v125 = v7 ^ LODWORD(STACK[0x630]) ^ v121;
  v126 = v124 ^ 0x7DDA979D ^ v14;
  LODWORD(v10) = v14 ^ LODWORD(STACK[0x630]);
  LODWORD(v14) = LODWORD(STACK[0x630]) ^ 0x14;
  v127 = v14 ^ v7 ^ 0xB5CE ^ v124;
  LODWORD(STACK[0x628]) = v127;
  v128 = v125 ^ v126;
  LODWORD(STACK[0x620]) = v125 ^ v126;
  LODWORD(STACK[0x4EC]) = v10;
  v129 = STACK[0x4A0];
  LODWORD(v7) = *(STACK[0x4A0] + 4 * (v10 ^ 0xA0u));
  v130 = v126 ^ v14;
  LODWORD(STACK[0x630]) = v126 ^ v14;
  HIDWORD(v21) = v7 ^ 0x1CC94A;
  LODWORD(v21) = v7 ^ 0xBFBFBFBF;
  LODWORD(STACK[0x618]) = v10 ^ 0x45BA4C1E;
  LODWORD(v14) = ((v10 ^ 0x45BA4C1E) >> 16);
  v131 = STACK[0x588];
  LODWORD(v16) = *(STACK[0x588] + 4 * (v14 ^ 0x1C));
  v132 = ((v10 ^ 0x4C1E) >> 8);
  LODWORD(STACK[0x4E8]) = v132;
  v133 = *(v131 + 4 * (v132 ^ 0x1Cu)) + (v132 ^ 0x6F7463A1) - 816906885;
  LODWORD(v35) = (v10 ^ 0x45BA4C1E) >> 24;
  LODWORD(v7) = (v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2);
  v134 = STACK[0x648];
  LODWORD(v35) = ((v35 ^ 0xC5) - (v35 ^ 0xF705A347) - ((2 * ((v35 ^ 0xC5) - (v35 ^ 0xF705A347))) & 0x1403292) - 425649335) ^ *(STACK[0x648] + 4 * (v35 ^ 0xEE));
  HIDWORD(v21) = ((v14 ^ 0x6F7463A1) - 816906885 + v16) ^ 0xAEC395CF;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(v14) = v21 >> 16;
  LODWORD(STACK[0x4DC]) = v14;
  LODWORD(v16) = v133 ^ 0xAEC395CF;
  HIDWORD(v21) = v35 ^ 0x7B14B4D;
  LODWORD(v21) = v35 ^ 0x7B14B4D;
  v135 = v21 >> 8;
  LODWORD(STACK[0x4E0]) = v135;
  LODWORD(v14) = v7 ^ v128 ^ __ROR4__(v16, 24) ^ v14 ^ v135;
  LODWORD(v7) = v14 ^ v127;
  LODWORD(v25) = v14;
  LODWORD(STACK[0x5E0]) = v14;
  v136 = v14 ^ v127 ^ 0xE513049D;
  LODWORD(STACK[0x5D0]) = v136;
  LODWORD(STACK[0x5F8]) = v7 ^ v130;
  LODWORD(v16) = v7 ^ v130 ^ 0x50CBEC53;
  LODWORD(v14) = v16 ^ v10;
  LODWORD(v10) = v16 ^ v10 ^ 0xBCE15E83;
  LODWORD(v7) = (v14 ^ 0x46) - (v10 ^ 0xF705A347);
  v137 = *(v131 + 4 * (BYTE2(v10) ^ 0x1Cu)) + (BYTE2(v10) ^ 0x6F7463A1) - 816906885;
  LODWORD(STACK[0x5C8]) = v14;
  v138 = *(v129 + 4 * (BYTE1(v14) ^ 0xE0u));
  HIDWORD(v21) = v138 ^ 0x1CC94A;
  LODWORD(v21) = v138 ^ 0xBFBFBFBF;
  v139 = STACK[0x498];
  v140 = *(v134 + 4 * (v14 ^ 0x6Du)) ^ __ROR4__((-1004993536 - 1524922323 * *(STACK[0x498] + 4 * (BYTE3(v14) ^ 0x4F))) ^ 0x7280F9C2, 8) ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 24) ^ v25 ^ __ROR4__(v137 ^ 0xAEC395CF, 16) ^ (v7 - ((2 * v7) & 0x1403292) - 425649335) ^ 0xB5D8AEBE;
  LODWORD(v7) = v140 ^ v136;
  LODWORD(STACK[0x5C0]) = v140;
  LODWORD(v16) = v140 ^ v136 ^ v16;
  LODWORD(STACK[0x5F0]) = v16 ^ 0x2F9AEBFD;
  LODWORD(v10) = v16 ^ 0x2F9AEBFD ^ v10;
  LODWORD(v25) = v10 ^ 0x316B2F7A;
  LODWORD(STACK[0x5BC]) = v10 ^ 0x316B2F7A;
  v141 = *(v129 + 4 * (BYTE1(v10) ^ 0x91u));
  HIDWORD(v21) = v141 ^ 0x1CC94A;
  LODWORD(v21) = v141 ^ 0xBFBFBFBF;
  v142 = (v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2);
  v143 = *(v129 + 4 * (BYTE2(v10) ^ 0xD5u));
  HIDWORD(v21) = v143 ^ 0x1CC94A;
  LODWORD(v21) = v143 ^ 0xBFBFBFBF;
  v144 = (v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2);
  HIDWORD(v21) = (-1004993536 - 1524922323 * *(v139 + 4 * (BYTE3(v10) ^ 0xC2))) ^ 0x7280F9C2;
  LODWORD(v21) = HIDWORD(v21);
  v145 = (v21 >> 8) ^ __ROR4__(v142 ^ 0x698C9601, 24) ^ __ROR4__(v144 ^ 0x698C9601, 16) ^ v140 ^ (*(v131 + 4 * (v10 ^ 0x66u)) + (v10 ^ 0x6F7463DB) - 816906885) ^ 0x6EB327E2;
  LODWORD(STACK[0x560]) = v7 ^ 0xAB1B9D57;
  LODWORD(v14) = v145 ^ v7 ^ 0xAB1B9D57;
  LODWORD(STACK[0x554]) = v14;
  LODWORD(v39) = v145;
  LODWORD(STACK[0x5DC]) = v145;
  LODWORD(v10) = v16 ^ 0x1EF1C487 ^ v14;
  LODWORD(STACK[0x550]) = v10;
  v146 = v10 ^ v25 ^ 0x4CB14B4D;
  v147 = *(v131 + 4 * (HIBYTE(v146) ^ 0x1C)) + (HIBYTE(v146) ^ 0x6F7463A1) - 816906885;
  LODWORD(STACK[0x5E8]) = v146;
  v148 = (BYTE2(v146) ^ 0xC5) - (BYTE2(v146) ^ 0xF705A347);
  v149 = (-1004993536 - 1524922323 * *(v139 + 4 * ((v10 ^ v25) ^ 0xBEu))) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (((v10 ^ v25) >> 8) ^ 0xB8u))) ^ 0x7280F9C2, 24) ^ __ROR4__(v147 ^ 0xAEC395CF, 8) ^ __ROR4__(*(v134 + 4 * (BYTE2(v146) ^ 0xEEu)) ^ (v148 - ((2 * v148) & 0x1403292) - 425649335) ^ 0x7B14B4D, 16);
  LODWORD(v7) = v7 ^ 0xE7AAD61A ^ v149;
  LODWORD(v10) = v7 ^ v10;
  LODWORD(v25) = v7;
  LODWORD(STACK[0x558]) = v7;
  v150 = v10 ^ v146;
  LODWORD(STACK[0x538]) = v10;
  LODWORD(v7) = *(v129 + 4 * (((v10 ^ v146) >> 16) ^ 0x8Fu));
  HIDWORD(v21) = v7 ^ 0x1CC94A;
  LODWORD(v21) = v7 ^ 0xBFBFBFBF;
  LODWORD(v7) = (v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2);
  v151 = *(v129 + 4 * (((v10 ^ v146) >> 8) ^ 0xCu));
  HIDWORD(v21) = v151 ^ 0x1CC94A;
  LODWORD(v21) = v151 ^ 0xBFBFBFBF;
  v152 = (-1004993536 - 1524922323 * *(v139 + 4 * (((v10 ^ v146) >> 24) ^ 1))) ^ 0x7280F9C2;
  LODWORD(STACK[0x4D4]) = v10 ^ v146;
  LODWORD(v7) = (-1004993536 - 1524922323 * *(v139 + 4 * ((v10 ^ v146) ^ 0x7Cu))) ^ __ROR4__(v152, 8) ^ __ROR4__(v7 ^ 0x698C9601, 16);
  LODWORD(STACK[0x55C]) = v149 ^ v39;
  LODWORD(v7) = v7 ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 24) ^ v149 ^ v39;
  LODWORD(STACK[0x524]) = v7;
  LODWORD(STACK[0x544]) = v7 ^ v25;
  v153 = v7 ^ v25 ^ 0xBE80F9C2;
  LODWORD(v10) = v153 ^ v10;
  LODWORD(STACK[0x52C]) = v10;
  v154 = v10 ^ 0x90B14B4D;
  LODWORD(v10) = v10 ^ 0x90B14B4D ^ v150;
  LODWORD(STACK[0x528]) = v10;
  v155 = v10 ^ 0xF231B28F;
  v156 = *(v129 + 4 * (v10 ^ 0xF3u));
  HIDWORD(v21) = v156 ^ 0x1CC94A;
  LODWORD(v21) = v156 ^ 0xBFBFBFBF;
  v157 = v21 >> 22;
  LODWORD(v10) = v10 ^ 0x4CB14B4D;
  v158 = (BYTE3(v10) ^ 0xC5) - (BYTE3(v10) ^ 0xF705A347);
  LODWORD(v25) = *(v134 + 4 * (BYTE3(v10) ^ 0xEE)) ^ (v158 - ((2 * v158) & 0x1403292) - 425649335);
  v159 = *(v129 + 4 * (BYTE1(v155) ^ 0x47u));
  HIDWORD(v21) = v159 ^ 0x1CC94A;
  LODWORD(v21) = v159 ^ 0xBFBFBFBF;
  LODWORD(v14) = v157 ^ (v157 >> 4) ^ (v157 >> 2) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (BYTE2(v155) ^ 0x73u))) ^ 0x7280F9C2, 16) ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 24) ^ v7 ^ __ROR4__(v25 ^ 0x7B14B4D, 8);
  LODWORD(STACK[0x54C]) = v14 ^ v153;
  v160 = v14;
  LODWORD(STACK[0x518]) = v14;
  LODWORD(v10) = v14 ^ v153 ^ v154 ^ v10;
  v161 = v14 ^ v153 ^ v154;
  LODWORD(STACK[0x50C]) = v161;
  v162 = ((v10 ^ 0x710C6FC3) >> 16);
  v163 = *(v134 + 4 * (v162 ^ 0xEEu)) ^ 0x7B14B4D ^ ((v162 ^ 0xC5) - (v162 ^ 0xF705A347) - 425649335 + ((2 * ((v162 ^ 0xC5) - (v162 ^ 0xF705A347))) & 0x292 ^ 0xFEBFCFFF) + 1);
  v164 = ((v10 ^ 0x6FC3) >> 8);
  LODWORD(STACK[0x548]) = v10 ^ 0x710C6FC3;
  v165 = (-1004993536 - 1524922323 * *(v139 + 4 * (v10 ^ 0x30u))) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (BYTE3(v10) ^ 0x82))) ^ 0x7280F9C2, 8) ^ __ROR4__(*(v134 + 4 * (v164 ^ 0xEEu)) ^ ((v164 ^ 0xC5) - (v164 ^ 0xF705A347) - ((2 * ((v164 ^ 0xC5) - (v164 ^ 0xF705A347))) & 0x1403292) - 425649335) ^ 0x7B14B4D, 24) ^ __ROR4__(v163, 16);
  LODWORD(STACK[0x51C]) = v165 ^ v153;
  v166 = v165 ^ v153 ^ 0xA380F9C2;
  LODWORD(STACK[0x514]) = v166 ^ v161;
  LODWORD(STACK[0x504]) = v166;
  LODWORD(v7) = v166 ^ v161 ^ 0xBE80F9C2;
  v167 = v7 ^ v10 ^ 0x710C6FC3;
  LODWORD(STACK[0x530]) = v7;
  LODWORD(v7) = *(v129 + 4 * ((v7 ^ v10 ^ 0xC3) ^ 0xBFu));
  v168 = BYTE1(v167) ^ 0x65;
  HIDWORD(v21) = v7 ^ 0x1CC94A;
  LODWORD(v21) = v7 ^ 0xBFBFBFBF;
  LODWORD(v14) = v167 ^ 0xCF8C9601;
  BYTE2(v100) = BYTE2(v167);
  LODWORD(STACK[0x534]) = v167;
  v169 = (v167 ^ 0xCF8C9601) >> 24;
  LODWORD(v10) = v14;
  LODWORD(STACK[0x4D8]) = v14;
  v170 = *(v134 + 4 * (v169 ^ 0xEE)) ^ ((v169 ^ 0xC5) - (v169 ^ 0xF705A347) - ((2 * ((v169 ^ 0xC5) - (v169 ^ 0xF705A347))) & 0x1403292) - 425649335);
  LODWORD(v7) = (v21 >> 22) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * v168)) ^ 0x7280F9C2, 24) ^ ((v21 >> 22) >> 2) ^ ((v21 >> 22) >> 4);
  LODWORD(v21) = __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (BYTE2(v100) ^ 0x7Fu))) ^ 0x7280F9C2, 16);
  LODWORD(STACK[0x4F4]) = v165 ^ v160;
  LODWORD(v7) = v7 ^ v21 ^ v165 ^ v160 ^ __ROR4__(v170 ^ 0x7B14B4D, 8);
  LODWORD(STACK[0x520]) = v7 ^ v166;
  LODWORD(v14) = v7;
  LODWORD(STACK[0x4F0]) = v7;
  LODWORD(v7) = v7 ^ v166 ^ 0x6C0C6FC3;
  LODWORD(STACK[0x4CC]) = v7;
  LODWORD(v7) = v7 ^ v166 ^ v161 ^ 0xBE80F9C2;
  LODWORD(STACK[0x508]) = v7;
  v171 = v7 ^ v10;
  LODWORD(v7) = *(v139 + 4 * ((v7 ^ v10) ^ 0xF3u));
  LODWORD(STACK[0x510]) = v171;
  v172 = *(v129 + 4 * (BYTE2(v171) ^ 0xBEu));
  HIDWORD(v21) = v172 ^ 0x1CC94A;
  LODWORD(v21) = v172 ^ 0xBFBFBFBF;
  LODWORD(STACK[0x4D0]) = (-1004993536 - 1524922323 * v7) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (HIBYTE(v171) ^ 0xD8))) ^ 0x7280F9C2, 8) ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 16) ^ v14 ^ __ROR4__((*(v131 + 4 * (BYTE1(v171) ^ 0x1Cu)) + (BYTE1(v171) ^ 0x6F7463A1) - 816906885) ^ 0xAEC395CF, 24);
  LODWORD(v10) = STACK[0x618];
  LODWORD(v7) = (LODWORD(STACK[0x4EC]) ^ 0xDB) - (LODWORD(STACK[0x618]) ^ 0xF705A347);
  LODWORD(v7) = LODWORD(STACK[0x620]) ^ *(v134 + 4 * (LODWORD(STACK[0x4EC]) ^ 0xF0u)) ^ (v7 - ((2 * v7) & 0x1403292) - 425649335) ^ LODWORD(STACK[0x4DC]) ^ LODWORD(STACK[0x4E0]) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (LODWORD(STACK[0x4E8]) ^ 0xF3u))) ^ 0x7280F9C2, 24) ^ 0xE72D3A0C;
  v173 = STACK[0x628];
  v174 = LODWORD(STACK[0x628]) ^ 0x11D987EA ^ v7;
  LODWORD(STACK[0x4EC]) = v174;
  v175 = LODWORD(STACK[0x630]) ^ 0xC8028CF9 ^ v174;
  v176 = v175 ^ v10 ^ 0xF95B129D;
  v177 = (HIBYTE(v176) ^ 0xC5) - (HIBYTE(v176) ^ 0xF705A347);
  v178 = *(v134 + 4 * (HIBYTE(v176) ^ 0xEE)) ^ (v177 - ((2 * v177) & 0x1403292) - 425649335);
  v179 = *(v129 + 4 * (((v175 ^ v10) >> 16) ^ 0xE5u));
  HIDWORD(v21) = v179 ^ 0x1CC94A;
  LODWORD(v21) = v179 ^ 0xBFBFBFBF;
  v180 = (BYTE1(v176) ^ 0xC5) - (BYTE1(v176) ^ 0xF705A347);
  v181 = *(v134 + 4 * ((v175 ^ v10) ^ 0x73u)) ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 16) ^ (((v175 ^ v10) ^ 0x58) - ((v175 ^ v10) ^ 0xF705A3DA) - ((2 * (((v175 ^ v10) ^ 0x58) - ((v175 ^ v10) ^ 0xF705A3DA))) & 0x1403292) - 425649335) ^ __ROR4__(v178 ^ 0x7B14B4D, 8) ^ __ROR4__(*(v134 + 4 * (BYTE1(v176) ^ 0xEEu)) ^ (v180 - ((2 * v180) & 0x1403292) - 425649335) ^ 0x7B14B4D, 24);
  LODWORD(v14) = v181 ^ v173;
  v182 = v175 ^ 0x11D987EA ^ v181 ^ v173;
  v183 = v182 ^ v176;
  v184 = (v183 ^ 0x5FE3E94Eu) >> 24;
  v185 = ((v183 ^ 0xE94E) >> 8);
  LODWORD(v7) = v7 ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (BYTE2(v183) ^ 0x10u))) ^ 0x7280F9C2, 16) ^ (*(v131 + 4 * (v183 ^ 0x52u)) + (v183 ^ 0x6F7463EF) - 816906885) ^ __ROR4__(*(v134 + 4 * (v184 ^ 0xEE)) ^ ((v184 ^ 0xC5) - (v184 ^ 0xF705A347) - ((2 * ((v184 ^ 0xC5) - (v184 ^ 0xF705A347))) & 0x1403292) - 425649335) ^ 0x7B14B4D, 8) ^ __ROR4__(*(v134 + 4 * (v185 ^ 0xEEu)) ^ ((v185 ^ 0xC5) - (v185 ^ 0xF705A347) - ((2 * ((v185 ^ 0xC5) - (v185 ^ 0xF705A347))) & 0x1403292) - 425649335) ^ 0x7B14B4D, 24);
  LODWORD(v39) = v7 ^ v181;
  LODWORD(STACK[0x4BC]) = v7 ^ v181;
  LODWORD(v7) = v173 ^ 0xB0D03774 ^ v7;
  LODWORD(STACK[0x4E8]) = v7;
  LODWORD(v7) = v7 ^ v182;
  v186 = v7 ^ v183 ^ 0x5FE3E94E;
  v187 = v131;
  v188 = *(v131 + 4 * (((v186 ^ 0xA29CC1Fu) >> 24) ^ 0x1C)) + (((v186 ^ 0xA29CC1Fu) >> 24) ^ 0x6F7463A1) - 816906885;
  LODWORD(v25) = v186 ^ 0xA29CC1F;
  LODWORD(STACK[0x4C8]) = v186 ^ 0xA29CC1F;
  v189 = (-1004993536 - 1524922323 * *(v139 + 4 * ((v7 ^ v183 ^ 0x4E) ^ 0xECu))) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (BYTE2(v186) ^ 0xDAu))) ^ 0x7280F9C2, 16) ^ __ROR4__(v188 ^ 0xAEC395CF, 8) ^ __ROR4__((*(v131 + 4 * (((v186 ^ 0xCC1F) >> 8) ^ 0x1Cu)) + (((v186 ^ 0xCC1F) >> 8) ^ 0x6F7463A1) - 816906885) ^ 0xAEC395CF, 24);
  LODWORD(v7) = v7 ^ 0x197B6E1C;
  LODWORD(STACK[0x4E0]) = v7;
  LODWORD(v14) = v189 ^ v14;
  LODWORD(STACK[0x4C0]) = v14 ^ v7;
  LODWORD(v7) = v14 ^ v7 ^ 0x8A2E9F6;
  v190 = v7 ^ v25 ^ 0x1211CE0E;
  v191 = HIBYTE(v190) - ((v190 >> 23) & 0x14C) + 166;
  v192 = v39 ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (((v7 ^ v25) >> 8) ^ 0x3Du))) ^ 0x7280F9C2, 24) ^ v189 ^ __ROR4__((*(v131 + 4 * (v191 ^ 0xBAu)) + (v191 ^ 0x6F746307) - 816906885) ^ 0xAEC395CF, 8) ^ 0x197B6E1C;
  v193 = -1004993536 - 1524922323 * *(v139 + 4 * ((v7 ^ v25) ^ 0xFDu));
  v194 = *(v129 + 4 * ((BYTE2(v7) ^ BYTE2(v25)) ^ 0xAFu));
  HIDWORD(v21) = v194 ^ 0x1CC94A;
  LODWORD(v21) = v194 ^ 0xBFBFBFBF;
  v195 = (v192 + v193 - 2 * (v192 & v193)) ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 16);
  LODWORD(v14) = v14 ^ 0xE50CEB6 ^ v195;
  v196 = v190 ^ v7 ^ v14;
  v197 = v196 ^ 0x82A08543;
  v198 = ((v196 ^ 0x8543) >> 8);
  HIDWORD(v21) = (-1004993536 - 1524922323 * *(v139 + 4 * (BYTE2(v196) ^ 0x53u))) ^ 0x7280F9C2;
  LODWORD(v21) = HIDWORD(v21);
  v199 = (v21 >> 16) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (HIBYTE(v196) ^ 0x71))) ^ 0x7280F9C2, 8) ^ v195 ^ (*(v131 + 4 * (v196 ^ 0x5Fu)) + (v196 ^ 0x6F7463E2) - 816906885) ^ __ROR4__(*(v134 + 4 * (v198 ^ 0xEEu)) ^ ((v198 ^ 0xC5) - (v198 ^ 0xF705A347) - ((2 * ((v198 ^ 0xC5) - (v198 ^ 0xF705A347))) & 0x1403292) - 425649335) ^ 0x7B14B4D, 24);
  LODWORD(v7) = v199 ^ v7;
  v200 = v7 ^ v196 ^ 0x82A08543;
  LODWORD(v39) = v7;
  LODWORD(STACK[0x468]) = v7;
  v201 = v200 ^ 0x2F72DE82;
  LODWORD(v7) = *(v129 + 4 * (((v200 ^ 0xDE82) >> 8) ^ 0x3Bu));
  HIDWORD(v21) = v7 ^ 0x1CC94A;
  LODWORD(v21) = v7 ^ 0xBFBFBFBF;
  v200 ^= 0x8DD25BC1;
  LODWORD(STACK[0x48C]) = v200;
  v202 = (-1004993536 - 1524922323 * *(v139 + 4 * (v201 ^ 0xB0u))) ^ __ROR4__((-1004993536 - 1524922323 * *(v139 + 4 * (BYTE2(v201) ^ 0x53u))) ^ 0x7280F9C2, 16);
  v203 = *(v134 + 4 * (HIBYTE(v200) ^ 0xEE)) ^ ((HIBYTE(v200) ^ 0xC5) - (HIBYTE(v200) ^ 0xF705A347) - ((2 * ((HIBYTE(v200) ^ 0xC5) - (HIBYTE(v200) ^ 0xF705A347))) & 0x1403292) - 425649335) ^ 0x7B14B4D;
  LODWORD(STACK[0x480]) = v199;
  LODWORD(v10) = v202 ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 24) ^ v199 ^ __ROR4__(v203, 8) ^ 0xE0436C0D;
  LODWORD(v14) = v199 ^ v14;
  LODWORD(STACK[0x474]) = v14;
  LODWORD(STACK[0x3D4]) = v10 ^ v14;
  LODWORD(v134) = v10;
  LODWORD(STACK[0x46C]) = v10;
  LODWORD(v14) = v10 ^ v14 ^ 0xF72DE82;
  LODWORD(STACK[0x490]) = v14;
  v204 = v14 ^ v197;
  LODWORD(v14) = *(v129 + 4 * ((v14 ^ v197) ^ 0xBEu));
  HIDWORD(v21) = v14 ^ 0x1CC94A;
  LODWORD(v21) = v14 ^ 0xBFBFBFBF;
  v205 = v21 >> 22;
  LODWORD(v14) = *(v129 + 4 * (BYTE1(v204) ^ 0xBEu));
  HIDWORD(v21) = v14 ^ 0x1CC94A;
  LODWORD(v21) = v14 ^ 0xBFBFBFBF;
  v206 = v21 >> 22;
  v207 = STACK[0x4D0];
  v208 = LODWORD(STACK[0x4D0]) ^ 0xDC000000;
  LODWORD(v14) = v208 ^ LODWORD(STACK[0x4CC]);
  v209 = v14 ^ 0xD08C9601;
  LODWORD(v10) = ((v14 ^ 0x9601 ^ LOWORD(STACK[0x4D8])) >> 8) ^ 0xF3;
  v210 = *(v129 + 4 * (HIBYTE(v204) ^ 0xBE));
  LODWORD(v131) = v14 ^ 0xD08C9601 ^ LODWORD(STACK[0x4D8]);
  v211 = v14 ^ 1 ^ LOBYTE(STACK[0x4D8]) ^ 0xF3;
  HIDWORD(v21) = v210 ^ 0x1CC94A;
  LODWORD(v21) = v210 ^ 0xBFBFBFBF;
  v212 = v204;
  LODWORD(STACK[0x3CC]) = v204;
  v213 = v205 ^ (v205 >> 4) ^ (v205 >> 2) ^ __ROR4__(v206 ^ (v206 >> 4) ^ (v206 >> 2) ^ 0x698C9601, 24) ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 8) ^ v134;
  LODWORD(v21) = __ROR4__((*(v187 + 4 * (BYTE2(v212) ^ 0x1Cu)) + (BYTE2(v212) ^ 0x6F7463A1) - 816906885) ^ 0xAEC395CF, 16);
  LODWORD(STACK[0x3D0]) = v213 ^ v21;
  v214 = v213 ^ v21 ^ v39;
  LODWORD(STACK[0x494]) = v214;
  LODWORD(STACK[0x4A8]) = v214 ^ 0x8DD25BC1;
  v215 = v214 ^ 0x8DD25BC1 ^ v204;
  LODWORD(STACK[0x370]) = v215;
  v216 = *(v139 + 4 * (BYTE2(v215) ^ 0x7Fu));
  LODWORD(v10) = -1004993536 - 1524922323 * *(v139 + 4 * v10);
  v217 = -1004993536 - 1524922323 * *(v139 + 4 * v211);
  LODWORD(STACK[0x4D8]) = -1004993536 - 1524922323 * *(v139 + 4 * (v214 ^ 0xC1 ^ v212 ^ 0xF2u));
  LODWORD(STACK[0x498]) = -1004993536 - 1524922323 * v216;
  v218 = LODWORD(STACK[0x5A4]) ^ 0x2Du;
  v219 = LODWORD(STACK[0x5A0]) ^ 0x2Au;
  v220 = LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x640]) ^ 0x12B5u;
  v221 = LODWORD(STACK[0x564]) ^ 0xDu;
  v222 = LODWORD(STACK[0x598]) ^ LODWORD(STACK[0x638]) ^ 0xA94u;
  v223 = LODWORD(STACK[0x5B0]) ^ 0xAu;
  v224 = LODWORD(STACK[0x56C]) ^ 0x31u;
  v225 = LODWORD(STACK[0x568]) ^ 0x31u;
  LODWORD(v36) = *(v129 + 4 * (BYTE2(v131) ^ 0xBEu));
  v226 = STACK[0x600];
  STACK[0x3E0] = (LODWORD(STACK[0x5A8]) ^ 0x3Cu) << STACK[0x600];
  STACK[0x450] = v218 << v226;
  STACK[0x408] = v219 << v226;
  STACK[0x410] = (LODWORD(STACK[0x59C]) ^ 2u) << v226;
  STACK[0x430] = v220 << v226;
  STACK[0x3F8] = v221 << v226;
  STACK[0x418] = (LODWORD(STACK[0x5B8]) ^ 8u) << v226;
  STACK[0x400] = v222 << v226;
  STACK[0x428] = v223 << v226;
  STACK[0x420] = STACK[0x608] << v226;
  STACK[0x448] = v224 << v226;
  STACK[0x3E8] = (LODWORD(STACK[0x5AC]) ^ 0x38u) << v226;
  STACK[0x3F0] = STACK[0x570] << v226;
  STACK[0x3D8] = (LODWORD(STACK[0x57C]) ^ 7u) << v226;
  STACK[0x438] = STACK[0x610] << v226;
  STACK[0x440] = v225 << v226;
  HIDWORD(v21) = v36 ^ 0x1CC94A;
  LODWORD(v21) = v36 ^ 0xBFBFBFBF;
  LODWORD(v223) = v131;
  LODWORD(STACK[0x4DC]) = v131;
  LODWORD(v218) = v217 ^ __ROR4__(v10 ^ 0x7280F9C2, 24) ^ __ROR4__((v21 >> 22) ^ ((v21 >> 22) >> 4) ^ ((v21 >> 22) >> 2) ^ 0x698C9601, 16) ^ v208;
  LODWORD(v21) = __ROR4__((*(v187 + 4 * (BYTE3(v131) ^ 0x1C)) + (BYTE3(v131) ^ 0x6F7463A1) - 816906885) ^ 0xAEC395CF, 8);
  LODWORD(v222) = LODWORD(STACK[0x528]) ^ 0x2061CA99;
  LODWORD(v10) = LODWORD(STACK[0x52C]) ^ 0x5CB14B4D;
  LODWORD(STACK[0x5B8]) = LODWORD(STACK[0x50C]) ^ 0x8C6A3CE0;
  v227 = (LODWORD(STACK[0x514]) ^ 0xB683C0E6) + 471548799;
  v228 = LODWORD(STACK[0x620]) ^ 0x3A015D6A;
  LODWORD(STACK[0x610]) = v14 ^ 0xCF52BDA2;
  LODWORD(v139) = LODWORD(STACK[0x51C]) ^ 0x996905C4;
  LODWORD(STACK[0x598]) = v139;
  v229 = LODWORD(STACK[0x4D4]) ^ 0x1570A966;
  LODWORD(v220) = LODWORD(STACK[0x538]) ^ 0x1570A966;
  v230 = v228 - (v14 ^ 0xCF52BDA2) + 1812155113;
  v231 = LODWORD(STACK[0x4F4]) ^ 0x56E593C5;
  v232 = LODWORD(STACK[0x524]) ^ 0xB0D081D4;
  v233 = LODWORD(STACK[0x5C8]) ^ 0xC32A5E79;
  LODWORD(STACK[0x56C]) = v207 ^ 0xF7DE2BA3;
  v234 = LODWORD(STACK[0x504]) - 946983090;
  LODWORD(v14) = v218 ^ v21 ^ v14 ^ 0xD08C9601;
  v235 = v14 ^ 0x34000000;
  LODWORD(STACK[0x5B4]) = v14 ^ 0x34000000;
  v236 = v218 ^ v21 ^ 0x539123B9;
  v237 = v14 ^ 0x539123B9;
  LODWORD(STACK[0x608]) = v14 ^ 0x539123B9;
  v238 = LODWORD(STACK[0x544]) ^ 0xE507816;
  LODWORD(STACK[0x484]) = (LODWORD(STACK[0x544]) ^ v10 ^ 0x10000000) + 134102748;
  LODWORD(v14) = STACK[0x554];
  v239 = LODWORD(STACK[0x554]) ^ 0xFA8B6F4A;
  LODWORD(STACK[0x4D0]) = v237 - v239 + 783325755;
  v240 = v209 ^ LODWORD(STACK[0x508]);
  LODWORD(v16) = LODWORD(STACK[0x508]) ^ 0x428C9601;
  LODWORD(STACK[0x360]) = v235 ^ v14;
  LODWORD(v218) = v235 ^ v14 ^ 0xB65145ED;
  LODWORD(STACK[0x5A0]) = v218;
  LODWORD(STACK[0x5B0]) = __ROR4__(v16 ^ v218, 24) ^ 0x917EB051;
  v241 = STACK[0x4F0];
  LODWORD(STACK[0x364]) = LODWORD(STACK[0x4F0]) ^ v139;
  v242 = v241 ^ v139 ^ 0xF78181BE;
  v243 = v242 ^ LODWORD(STACK[0x5D0]) ^ 0x21164CD;
  LODWORD(STACK[0x5A4]) = v223 ^ 0x1FDE2BA3;
  v244 = (v223 ^ 0x1FDE2BA3) - v222;
  v245 = v244 ^ 0xB35130DF;
  LODWORD(STACK[0x5D0]) = v222 ^ 0x2C02140A ^ v244 ^ 0xB35130DF ^ v227;
  LODWORD(STACK[0x5C8]) = v10 ^ 0x32526C1C ^ v244 ^ 0xB35130DF ^ v227;
  v246 = 275807131 - v238 - (v207 ^ 0xF7DE2BA3);
  LODWORD(STACK[0x3C8]) = v234;
  v247 = v232 - v231 + 1532102496;
  LODWORD(STACK[0x640]) = v247 ^ v234;
  LODWORD(v218) = v247 ^ v234 ^ LODWORD(STACK[0x550]);
  v248 = v243 ^ v246;
  v249 = v227 ^ v247;
  v250 = v227 ^ v247 ^ v220;
  v251 = ((v243 ^ v246 ^ STACK[0x580] ^ v250) + 558493143) ^ v218;
  LODWORD(STACK[0x5AC]) = v218 ^ 0xFA8B6F4A;
  LODWORD(v10) = LODWORD(STACK[0x630]) ^ 0x84CD02D1;
  LODWORD(v226) = LODWORD(STACK[0x618]) ^ 0xB5949CB5;
  v252 = LODWORD(STACK[0x628]) ^ 0x4E44ABC1;
  v253 = LODWORD(STACK[0x520]) ^ 0xC6F45F75;
  v254 = v220 + v228;
  LODWORD(v218) = v229 - 1633422746 + v253;
  LODWORD(STACK[0x358]) = v218;
  LODWORD(STACK[0x374]) = v230;
  LODWORD(v218) = v230 ^ v218 ^ v227;
  LODWORD(STACK[0x630]) = v218 ^ v228;
  LODWORD(STACK[0x570]) = v218 ^ v10;
  LODWORD(STACK[0x628]) = v218 ^ v226;
  v255 = v218 ^ v252;
  LODWORD(v218) = STACK[0x5F8];
  LODWORD(STACK[0x45C]) = v242;
  v256 = LODWORD(STACK[0x5E0]) ^ v242 ^ 0x1CD25724;
  v257 = v242 ^ v233 ^ v246;
  v258 = v218 ^ v242 ^ 0xD65BFE34 ^ v246;
  if (v251)
  {
    v259 = v242 ^ v233 ^ v246;
  }

  else
  {
    v259 = v258;
  }

  LODWORD(STACK[0x5A8]) = v259;
  if ((v251 & 1) == 0)
  {
    v258 = v248;
  }

  LODWORD(STACK[0x528]) = v258;
  v260 = v256 ^ v246;
  if ((v251 & 1) == 0)
  {
    v248 = v256 ^ v246;
  }

  LODWORD(STACK[0x59C]) = v248;
  if ((v251 & 1) == 0)
  {
    v260 = v257;
  }

  LODWORD(STACK[0x524]) = v260;
  v261 = LODWORD(STACK[0x5C0]) ^ 0x6A02B034;
  v262 = LODWORD(STACK[0x560]) ^ 0xBCC34954;
  v263 = LODWORD(STACK[0x5F0]) ^ 0xC1192D63;
  v264 = LODWORD(STACK[0x5BC]) ^ 0xF0720219;
  v265 = v236 - v233;
  LODWORD(STACK[0x378]) = v227;
  LODWORD(STACK[0x618]) = v227 ^ 0x9F5324D5 ^ v238;
  LODWORD(STACK[0x5F8]) = v227 ^ 0x9F5324D5 ^ v232;
  v266 = v239;
  LODWORD(STACK[0x37C]) = v239 - v232;
  v267 = (v239 - v232) ^ 0x381AE672;
  LODWORD(STACK[0x35C]) = v265;
  v268 = (v239 - v232) ^ 0xC00CE341 ^ v265;
  v269 = v261 ^ v268;
  v270 = v262 ^ v268;
  v271 = v263 ^ v268;
  v272 = v264 ^ v268;
  if (v251)
  {
    v273 = v270;
  }

  else
  {
    v273 = v269;
  }

  LODWORD(STACK[0x520]) = v273;
  if (v251)
  {
    v270 = v271;
  }

  LODWORD(STACK[0x600]) = v270;
  if (v251)
  {
    v274 = v272;
  }

  else
  {
    v274 = v271;
  }

  LODWORD(STACK[0x51C]) = v274;
  if ((v251 & 1) == 0)
  {
    v269 = v272;
  }

  LODWORD(STACK[0x5C0]) = v269;
  LODWORD(STACK[0x620]) = v249;
  v275 = v249 ^ 0x59C1E22B ^ LODWORD(STACK[0x558]);
  v276 = v249 ^ 0x59C1E22B ^ LODWORD(STACK[0x55C]);
  if (v251)
  {
    v277 = v249 ^ v229;
  }

  else
  {
    v277 = v250;
  }

  LODWORD(STACK[0x57C]) = v277;
  if (v251)
  {
    v278 = v250;
  }

  else
  {
    v278 = v275;
  }

  if (v251)
  {
    v279 = v275;
  }

  else
  {
    v279 = v276;
  }

  LODWORD(STACK[0x564]) = v279;
  if (v251)
  {
    v280 = v276;
  }

  else
  {
    v280 = v249 ^ v229;
  }

  v281 = LODWORD(STACK[0x54C]) ^ 0x32EAC522;
  v282 = LODWORD(STACK[0x518]) ^ 0xEEEAC522;
  v283 = STACK[0x5B8];
  v284 = v236 + LODWORD(STACK[0x5B8]);
  LODWORD(STACK[0x350]) = v284;
  v285 = v284 ^ 0x8FF5AAAC;
  v286 = v232 - v231 + 1532102496;
  LODWORD(STACK[0x460]) = v247;
  v287 = v284 ^ 0x8FF5AAAC ^ v247;
  v288 = v287 ^ v283;
  v289 = LODWORD(STACK[0x548]) ^ 0xFD665323 ^ v287;
  v290 = v281 ^ v287;
  if (v251)
  {
    v291 = LODWORD(STACK[0x548]) ^ 0xFD665323 ^ v287;
  }

  else
  {
    v291 = v287 ^ v283;
  }

  if ((v251 & 1) == 0)
  {
    v288 = v290;
  }

  LODWORD(STACK[0x4CC]) = v288;
  v292 = v282 ^ v287;
  if (v251)
  {
    v293 = v290;
  }

  else
  {
    v293 = v292;
  }

  if ((v251 & 1) == 0)
  {
    v292 = v289;
  }

  LODWORD(STACK[0x4C4]) = v292;
  v294 = LODWORD(STACK[0x534]) ^ 0xF5656A07;
  v295 = LODWORD(STACK[0x530]) ^ 0xF5656A07;
  v296 = v294 - 2030999482;
  LODWORD(STACK[0x354]) = v254;
  v297 = STACK[0x5A0];
  v298 = LODWORD(STACK[0x5A0]) ^ v254 ^ 0x90DEED8F;
  v299 = v298 ^ v231;
  v300 = v298 ^ LODWORD(STACK[0x598]);
  v301 = v298 ^ v294;
  v302 = v295 ^ v298;
  if (v251)
  {
    v303 = v302;
  }

  else
  {
    v303 = v298 ^ LODWORD(STACK[0x598]);
  }

  LODWORD(STACK[0x518]) = v303;
  if (v251)
  {
    v304 = v301;
  }

  else
  {
    v304 = v302;
  }

  LODWORD(STACK[0x560]) = v304;
  if (v251)
  {
    v305 = v300;
  }

  else
  {
    v305 = v299;
  }

  LODWORD(STACK[0x55C]) = v305;
  if (v251)
  {
    v306 = v299;
  }

  else
  {
    v306 = v301;
  }

  LODWORD(STACK[0x514]) = v306;
  v307 = LODWORD(STACK[0x510]) ^ 0x6574A6B7;
  v308 = STACK[0x484];
  v309 = LODWORD(STACK[0x484]) ^ __ROR4__(STACK[0x5B0], 8) ^ 0x76694E06;
  v310 = v241 ^ 0xC6F45F75;
  v311 = LODWORD(STACK[0x5B4]) ^ v240;
  v312 = v240 ^ 0x34DE2BA3;
  v313 = v245 ^ v286;
  v314 = v245 ^ v286 ^ LODWORD(STACK[0x56C]);
  v315 = v245 ^ v286 ^ LODWORD(STACK[0x610]);
  v316 = v245 ^ v286 ^ LODWORD(STACK[0x5A4]);
  v317 = v312 ^ v313;
  if (v251)
  {
    v318 = v315;
  }

  else
  {
    v318 = v314;
  }

  LODWORD(STACK[0x5A4]) = v318;
  if (v251)
  {
    v319 = v314;
  }

  else
  {
    v319 = v316;
  }

  LODWORD(STACK[0x510]) = v319;
  if (v251)
  {
    v320 = v317;
  }

  else
  {
    v320 = v315;
  }

  LODWORD(STACK[0x50C]) = v320;
  if (v251)
  {
    v321 = v316;
  }

  else
  {
    v321 = v317;
  }

  LODWORD(STACK[0x568]) = v321;
  v322 = v296 + v253;
  LODWORD(STACK[0x4AC]) = v322;
  LODWORD(STACK[0x464]) = v267;
  v323 = LODWORD(STACK[0x4D0]) ^ v322 ^ v267;
  v324 = v323 ^ LODWORD(STACK[0x608]);
  v325 = v323 ^ v236;
  v326 = v311 ^ 0x4C9123B9 ^ v323;
  v327 = v326 ^ LODWORD(STACK[0x4DC]);
  if (v251)
  {
    v328 = v323 ^ LODWORD(STACK[0x608]);
  }

  else
  {
    v328 = v325;
  }

  LODWORD(STACK[0x558]) = v328;
  if (v251)
  {
    v329 = v325;
  }

  else
  {
    v329 = v327;
  }

  LODWORD(STACK[0x508]) = v329;
  if (v251)
  {
    v330 = v326;
  }

  else
  {
    v330 = v324;
  }

  LODWORD(STACK[0x504]) = v330;
  if (v251)
  {
    v331 = v327;
  }

  else
  {
    v331 = v326;
  }

  LODWORD(STACK[0x554]) = v331;
  v332 = STACK[0x640];
  v333 = LODWORD(STACK[0x640]) ^ v266;
  v334 = LODWORD(STACK[0x618]) ^ v244;
  LODWORD(STACK[0x368]) = v244;
  v335 = LODWORD(STACK[0x5F8]) ^ v244;
  v336 = v297 ^ v308;
  v337 = v336 ^ v253;
  v338 = STACK[0x628];
  if (v251)
  {
    v339 = STACK[0x628];
  }

  else
  {
    v339 = STACK[0x570];
  }

  v340 = STACK[0x630];
  if (v251)
  {
    v338 = STACK[0x630];
  }

  LODWORD(STACK[0x550]) = v338;
  LODWORD(STACK[0x534]) = v255;
  if ((v251 & 1) == 0)
  {
    v255 = v340;
  }

  v341 = v332 ^ 0xB63A2407;
  v342 = v332 ^ 0xB63A2407 ^ LODWORD(STACK[0x5E8]);
  v343 = v332 ^ 0xB63A2407 ^ LODWORD(STACK[0x5DC]);
  v344 = STACK[0x5AC];
  if ((v251 & 1) == 0)
  {
    v344 = v333;
  }

  LODWORD(STACK[0x4F4]) = v344;
  if ((v251 & 1) == 0)
  {
    v333 = v343;
  }

  LODWORD(STACK[0x5BC]) = v333;
  LODWORD(STACK[0x470]) = v342;
  if (v251)
  {
    v345 = v343;
  }

  else
  {
    v345 = v342;
  }

  LODWORD(STACK[0x4F0]) = v345;
  LODWORD(STACK[0x4B8]) = v309;
  if ((v251 & 1) == 0)
  {
    v309 = v337;
  }

  LODWORD(STACK[0x54C]) = v309;
  if ((v251 & 1) == 0)
  {
    v337 = v310 ^ v336;
  }

  LODWORD(STACK[0x630]) = v337;
  LODWORD(STACK[0x36C]) = v307 ^ v336;
  if (v251)
  {
    v346 = v310 ^ v336;
  }

  else
  {
    v346 = v307 ^ v336;
  }

  LODWORD(STACK[0x548]) = v346;
  LODWORD(STACK[0x530]) = v334;
  LODWORD(STACK[0x478]) = v335;
  if (v251)
  {
    v347 = v334;
  }

  else
  {
    v347 = v335;
  }

  LODWORD(STACK[0x5B8]) = v347;
  if (v251)
  {
    v348 = STACK[0x5D0];
  }

  else
  {
    v348 = STACK[0x5C8];
  }

  LODWORD(STACK[0x628]) = v251;
  v349 = (v251 & 2) == 0;
  if ((v251 & 2) != 0)
  {
    v350 = v339;
  }

  else
  {
    v350 = v255;
  }

  LODWORD(STACK[0x4DC]) = v350;
  if ((v251 & 2) != 0)
  {
    v351 = v255;
  }

  else
  {
    v351 = v339;
  }

  LODWORD(STACK[0x5E8]) = v351;
  if ((v251 & 2) != 0)
  {
    v352 = v278;
  }

  else
  {
    v352 = v280;
  }

  LODWORD(STACK[0x5E0]) = v352;
  if ((v251 & 2) != 0)
  {
    v353 = v280;
  }

  else
  {
    v353 = v278;
  }

  LODWORD(STACK[0x598]) = v353;
  if ((v251 & 2) != 0)
  {
    v354 = v291;
  }

  else
  {
    v354 = v293;
  }

  LODWORD(STACK[0x4B0]) = v354;
  if ((v251 & 2) != 0)
  {
    v355 = v293;
  }

  else
  {
    v355 = v291;
  }

  LODWORD(STACK[0x5B4]) = v355;
  v356 = LODWORD(STACK[0x370]) ^ 0xE48C9601;
  v357 = LODWORD(STACK[0x4D8]) ^ __ROR4__(LODWORD(STACK[0x498]) ^ 0x7280F9C2, 16) ^ __ROR4__((*(STACK[0x588] + 4 * (HIBYTE(v356) ^ 0x1C)) + (HIBYTE(v356) ^ 0x6F7463A1) - 816906885) ^ 0xAEC395CF, 8);
  v358 = __ROR4__((*(STACK[0x588] + 4 * (BYTE1(v356) ^ 0x1Cu)) + (BYTE1(v356) ^ 0x6F7463A1) - 816906885) ^ 0xAEC395CF, 24);
  v359 = LODWORD(STACK[0x3D4]) ^ 0x8B7EB141 ^ v357 ^ v358;
  v360 = STACK[0x3CC];
  v361 = v359 ^ LODWORD(STACK[0x3CC]) ^ 0xE48C9601;
  v362 = (BYTE1(v361) ^ 0xC5) - (BYTE1(v361) ^ 0xF705A347);
  v363 = *(STACK[0x648] + 4 * (BYTE1(v361) ^ 0xEEu)) ^ (v362 - ((2 * v362) & 0x1403292) - 425649335);
  v364 = (HIBYTE(v361) ^ 0xC5) - (HIBYTE(v361) ^ 0xF705A347);
  v365 = *(STACK[0x648] + 4 * (HIBYTE(v361) ^ 0xEE)) ^ (v364 - ((2 * v364) & 0x1403292) - 425649335);
  v366 = STACK[0x3D0];
  v367 = v357 ^ v358 ^ LODWORD(STACK[0x3D0]);
  v368 = (*(STACK[0x588] + 4 * (LOBYTE(STACK[0x3D4]) ^ 0x41 ^ (v357 ^ v358) ^ v360 ^ 0x1Du)) + (LOBYTE(STACK[0x3D4]) ^ 0x41 ^ (v357 ^ v358) ^ v360 ^ 0x6F7463A0) - 816906885) ^ v367 ^ __ROR4__((*(STACK[0x588] + 4 * (BYTE2(v361) ^ 0x1Cu)) + (BYTE2(v361) ^ 0x6F7463A1) - 816906885) ^ 0xAEC395CF, 16) ^ __ROR4__(v365 ^ 0x7B14B4D, 8) ^ __ROR4__(v363 ^ 0x7B14B4D, 24) ^ v323;
  v369 = LODWORD(STACK[0x48C]) ^ LODWORD(STACK[0x460]);
  LODWORD(STACK[0x34C]) = v285;
  v370 = v285 + v369 - 2 * (v285 & v369);
  v371 = STACK[0x580] ^ LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x45C]) ^ 0x82393CEB;
  LODWORD(STACK[0x370]) = v246;
  v372 = (v371 ^ v246) + 558493143;
  LODWORD(STACK[0x4EC]) = v341 ^ LODWORD(STACK[0x4C8]);
  v373 = LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x4E0]);
  v374 = LODWORD(STACK[0x4E8]) ^ 0xE3F00156 ^ LODWORD(STACK[0x640]);
  v375 = LODWORD(STACK[0x4BC]) ^ 0xE4414A1B ^ LODWORD(STACK[0x640]);
  v376 = v370 ^ 0xFD665323;
  v377 = LODWORD(STACK[0x468]) ^ 0x70B408E2 ^ v287;
  v378 = LODWORD(STACK[0x474]) ^ 0xF2148DA1 ^ v287;
  v379 = LODWORD(STACK[0x480]) ^ 0x62A5C6EC ^ v287;
  v380 = STACK[0x490];
  v381 = v298 ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x490]) ^ 0xB73BA7C7;
  v382 = v298 ^ 0x3AE9FC06;
  if (v349)
  {
    v383 = STACK[0x524];
  }

  else
  {
    v383 = STACK[0x528];
  }

  if (v349)
  {
    v384 = STACK[0x5A8];
  }

  else
  {
    v384 = STACK[0x59C];
  }

  if (v349)
  {
    v385 = STACK[0x5C0];
  }

  else
  {
    v385 = STACK[0x600];
  }

  v386 = STACK[0x51C];
  if (v349)
  {
    v386 = STACK[0x520];
  }

  LODWORD(STACK[0x3D4]) = v386;
  v387 = STACK[0x4F0];
  if (v349)
  {
    v387 = STACK[0x4F4];
  }

  LODWORD(STACK[0x5F0]) = v387;
  v388 = STACK[0x564];
  if (!v349)
  {
    v388 = STACK[0x57C];
  }

  LODWORD(STACK[0x4D4]) = v388;
  LODWORD(STACK[0x4C0]) = v348;
  if (v349)
  {
    v389 = v348;
  }

  else
  {
    v389 = STACK[0x5B8];
  }

  LODWORD(STACK[0x4A0]) = v389;
  v390 = STACK[0x55C];
  if (v349)
  {
    v390 = STACK[0x560];
  }

  LODWORD(STACK[0x588]) = v390;
  if (v349)
  {
    v391 = STACK[0x518];
  }

  else
  {
    v391 = STACK[0x514];
  }

  v392 = STACK[0x548];
  if (v349)
  {
    v392 = STACK[0x54C];
  }

  LODWORD(STACK[0x468]) = v392;
  v393 = STACK[0x50C];
  if (!v349)
  {
    v393 = STACK[0x510];
  }

  LODWORD(STACK[0x5A0]) = v393;
  if (v349)
  {
    v394 = STACK[0x568];
  }

  else
  {
    v394 = STACK[0x5A4];
  }

  v395 = STACK[0x504];
  if (v349)
  {
    v395 = STACK[0x508];
  }

  LODWORD(STACK[0x348]) = v395;
  v396 = STACK[0x554];
  if (!v349)
  {
    v396 = STACK[0x558];
  }

  LODWORD(STACK[0x344]) = v396;
  LODWORD(STACK[0x4D8]) = v372;
  v397 = v372 ^ v373;
  v398 = v382 ^ LODWORD(STACK[0x46C]);
  if (v397)
  {
    v399 = v382 ^ v360;
  }

  else
  {
    v399 = v381;
  }

  LODWORD(STACK[0x4E8]) = v399;
  if (v397)
  {
    v400 = v398;
  }

  else
  {
    v400 = v382 ^ v360;
  }

  LODWORD(STACK[0x544]) = v400;
  v401 = v382 ^ v380;
  if (v397)
  {
    v402 = v401;
  }

  else
  {
    v402 = v398;
  }

  LODWORD(STACK[0x4E0]) = v402;
  if ((v397 & 1) == 0)
  {
    v381 = v401;
  }

  LODWORD(STACK[0x538]) = v381;
  v403 = v336 ^ v356 ^ 0x4E74A6B7;
  v404 = v367 ^ 0x9BD24460;
  v405 = v313 ^ 0x1FDE2BA3;
  v406 = v313 ^ v404;
  v407 = v359 ^ 0xFB52BDA2 ^ v313;
  v408 = v336 ^ 0xAAF830B6 ^ v366;
  v409 = v336 ^ 0xAAF830B6 ^ LODWORD(STACK[0x4A8]);
  v410 = LODWORD(STACK[0x4A8]) ^ v359;
  v411 = v368 ^ LODWORD(STACK[0x494]) ^ 0x5680EDB7;
  v412 = v368 ^ 0x3FDE2077;
  v413 = v368 ^ v359 ^ 0xDB52B676;
  v414 = v373 ^ 0xA5688604;
  LODWORD(STACK[0x324]) = v377;
  if (v397)
  {
    v415 = v377;
  }

  else
  {
    v415 = v378;
  }

  if (v397)
  {
    v416 = v378;
  }

  else
  {
    v416 = v379;
  }

  LODWORD(STACK[0x5B0]) = v416;
  LODWORD(STACK[0x328]) = v376;
  if (v397)
  {
    v417 = v379;
  }

  else
  {
    v417 = v376;
  }

  v418 = v405 ^ v410;
  v419 = v405 ^ v361;
  LODWORD(STACK[0x2C8]) = v418;
  if (v397)
  {
    v420 = v405 ^ v361;
  }

  else
  {
    v420 = v418;
  }

  if (v397)
  {
    v419 = v406;
  }

  LODWORD(STACK[0x56C]) = v419;
  LODWORD(STACK[0x308]) = v407;
  if (v397)
  {
    v421 = v407;
  }

  else
  {
    v421 = v406;
  }

  LODWORD(STACK[0x2C0]) = v411 ^ v361;
  if (v397)
  {
    v422 = v411 ^ v361;
  }

  else
  {
    v422 = v411;
  }

  if (v397)
  {
    v423 = v411;
  }

  else
  {
    v423 = v413;
  }

  LODWORD(STACK[0x2D8]) = v423;
  LODWORD(STACK[0x2F0]) = v412;
  if (v397)
  {
    v412 = v413;
  }

  LODWORD(STACK[0x52C]) = v414;
  LODWORD(STACK[0x330]) = v374;
  if (v397)
  {
    v424 = v414;
  }

  else
  {
    v424 = v374;
  }

  LODWORD(STACK[0x32C]) = v375;
  v425 = STACK[0x4EC];
  if (v397)
  {
    v425 = v375;
  }

  LODWORD(STACK[0x300]) = v409;
  LODWORD(STACK[0x2D0]) = v408 ^ v380;
  if (v397)
  {
    v426 = v409;
  }

  else
  {
    v426 = v408 ^ v380;
  }

  LODWORD(STACK[0x30C]) = v403;
  LODWORD(STACK[0x304]) = v408;
  if (v397)
  {
    v427 = v408;
  }

  else
  {
    v427 = v403;
  }

  LODWORD(STACK[0x620]) = v397;
  if ((v397 & 2) != 0)
  {
    v428 = v425;
  }

  else
  {
    v428 = v424;
  }

  LODWORD(STACK[0x3D0]) = v428;
  if ((v397 & 2) == 0)
  {
    v424 = v425;
  }

  LODWORD(STACK[0x3CC]) = v424;
  if ((v397 & 2) != 0)
  {
    v429 = v426;
  }

  else
  {
    v429 = v427;
  }

  LODWORD(STACK[0x494]) = v429;
  if ((v397 & 2) != 0)
  {
    v430 = v427;
  }

  else
  {
    v430 = v426;
  }

  LODWORD(STACK[0x490]) = v430;
  LODWORD(STACK[0x4A8]) = v384;
  v431 = LODWORD(STACK[0x5B4]) ^ (v384 + 1844568610);
  LODWORD(STACK[0x5DC]) = v385;
  v432 = v385 + 382957339 + v431;
  v433 = LODWORD(STACK[0x598]) + 2050208102;
  LODWORD(STACK[0x4BC]) = v383;
  v434 = v433 + LODWORD(STACK[0x5E8]) + v383;
  v435 = LODWORD(STACK[0x594]) ^ 0x1AE53CACu;
  v436 = STACK[0x698];
  v437 = *(STACK[0x698] + 8 * (0x3F8313D2 % v435)) + 4146867061;
  v438 = (v432 >> 1) + 1333957019;
  v439 = 798007216 - LODWORD(STACK[0x5E0]);
  LODWORD(STACK[0x580]) = v394;
  LODWORD(STACK[0x480]) = v391;
  v440 = ((v439 + v394 + v391) >> 1) - 679276586;
  v441 = *(v436 + 8 * ((*(v436 + 8 * ((*(v436 + 8 * (v437 % v435)) + 3510385602) % v435)) + 64188485) % v435)) + 873548907;
  STACK[0x5F8] = v435;
  LODWORD(v441) = v441 % v435 - ((2 * (v441 % v435)) & 0x437E02C) + 1109127190;
  v442 = (((v441 ^ 0x2489CE6) - 633216855) ^ ((v441 ^ 0xC15FDADC) + 425109139) ^ ((v441 ^ 0x810CB62C) + 1493551715)) - 1620271194;
  v443 = STACK[0x638];
  STACK[0x640] = (LODWORD(STACK[0x638]) + 58255732) & 0xFC871FA9;
  LODWORD(STACK[0x610]) = v440;
  LODWORD(STACK[0x618]) = v438;
  LODWORD(STACK[0x608]) = 2 * v434;
  LODWORD(STACK[0x2E8]) = v415;
  LODWORD(STACK[0x2E0]) = v417;
  if ((v397 & 2) != 0)
  {
    v444 = v415;
  }

  else
  {
    v444 = v417;
  }

  LODWORD(STACK[0x334]) = v444;
  v445 = STACK[0x544];
  if ((v397 & 2) != 0)
  {
    v445 = STACK[0x538];
  }

  LODWORD(STACK[0x33C]) = v445;
  v446 = STACK[0x4E8];
  if ((v397 & 2) != 0)
  {
    v446 = STACK[0x4E0];
  }

  LODWORD(STACK[0x338]) = v446;
  LODWORD(STACK[0x4C8]) = v420;
  LODWORD(STACK[0x498]) = v421;
  if ((v397 & 2) != 0)
  {
    v447 = v420;
  }

  else
  {
    v447 = v421;
  }

  LODWORD(STACK[0x48C]) = v447;
  LODWORD(STACK[0x474]) = v422;
  LODWORD(STACK[0x46C]) = v412;
  if ((v397 & 2) != 0)
  {
    v448 = v412;
  }

  else
  {
    v448 = v422;
  }

  LODWORD(STACK[0x340]) = v448;
  v449 = 0xB5EDB38BD1D38DD1 * *(v436 + 8 * ((STACK[0x640] ^ 0x5EEB89DAF2D0B81DLL) + 1389448030) + 0x8A3B125D2F04768) - 0x3323D36B42630DCELL;
  v450 = v442 > 0x397F2C00;
  if (v442 < 0x397F2BFF)
  {
    v450 = 1;
  }

  return (*(STACK[0x4F8] + 8 * ((102 * !v450) ^ v443)))(1389448031);
}

uint64_t sub_100289888()
{
  v2 = STACK[0x640];
  (*(v1 + 8 * (LODWORD(STACK[0x640]) ^ 0x2245)))();
  v3 = (*(STACK[0x4F8] + 8 * (v2 + 7749)))(v0);
  v4 = STACK[0x4F8];
  return sub_10029539C(v3);
}

uint64_t sub_100289890(unsigned int a1)
{
  v1 = STACK[0x628];
  if (STACK[0x628])
  {
    v2 = STACK[0x570];
  }

  else
  {
    v2 = STACK[0x534];
  }

  v3 = STACK[0x470];
  if ((v1 & 1) == 0)
  {
    v3 = STACK[0x5AC];
  }

  v4 = STACK[0x5D0];
  if (v1)
  {
    v4 = STACK[0x478];
  }

  LODWORD(STACK[0x534]) = v4;
  v5 = STACK[0x5C8];
  if ((v1 & 1) == 0)
  {
    v5 = STACK[0x530];
  }

  LODWORD(STACK[0x530]) = v5;
  v6 = STACK[0x4B8];
  if (v1)
  {
    v6 = STACK[0x36C];
  }

  v7 = (v1 & 2) == 0;
  v8 = STACK[0x528];
  if (!v7)
  {
    v8 = STACK[0x524];
  }

  LODWORD(STACK[0x4B8]) = v8;
  v9 = STACK[0x520];
  if (v7)
  {
    v9 = STACK[0x51C];
  }

  LODWORD(STACK[0x320]) = v9;
  v10 = STACK[0x4F4];
  if (v7)
  {
    v10 = STACK[0x4F0];
  }

  LODWORD(STACK[0x5C8]) = v10;
  v11 = STACK[0x518];
  if (v7)
  {
    v11 = STACK[0x514];
  }

  LODWORD(STACK[0x2FC]) = v11;
  v12 = STACK[0x510];
  if (!v7)
  {
    v12 = STACK[0x50C];
  }

  LODWORD(STACK[0x570]) = v12;
  v13 = STACK[0x508];
  if (v7)
  {
    v13 = STACK[0x504];
  }

  LODWORD(STACK[0x50C]) = v13;
  v14 = STACK[0x4CC];
  v15 = STACK[0x4C4];
  if (v7)
  {
    v16 = STACK[0x4C4];
  }

  else
  {
    v16 = STACK[0x4CC];
  }

  LODWORD(STACK[0x31C]) = v16;
  if (v7)
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  LODWORD(STACK[0x478]) = v17;
  v18 = STACK[0x550];
  LODWORD(STACK[0x510]) = v2;
  if (!v7)
  {
    v18 = v2;
  }

  LODWORD(STACK[0x514]) = v18;
  v19 = STACK[0x5BC];
  LODWORD(STACK[0x4F4]) = v3;
  if (!v7)
  {
    v19 = v3;
  }

  LODWORD(STACK[0x5D0]) = v19;
  v20 = STACK[0x630];
  LODWORD(STACK[0x470]) = v6;
  if (!v7)
  {
    v20 = v6;
  }

  LODWORD(STACK[0x310]) = v20;
  v21 = STACK[0x620];
  if (STACK[0x620])
  {
    v22 = STACK[0x330];
  }

  else
  {
    v22 = STACK[0x32C];
  }

  v23 = STACK[0x328];
  if ((v21 & 1) == 0)
  {
    v23 = STACK[0x324];
  }

  LODWORD(STACK[0x638]) = v23;
  if (v21)
  {
    v24 = STACK[0x30C];
  }

  else
  {
    v24 = STACK[0x300];
  }

  if (v21)
  {
    v25 = STACK[0x2D0];
  }

  else
  {
    v25 = STACK[0x304];
  }

  if (v21)
  {
    v26 = STACK[0x2C8];
  }

  else
  {
    v26 = STACK[0x308];
  }

  if (v21)
  {
    v27 = STACK[0x4EC];
  }

  else
  {
    v27 = STACK[0x52C];
  }

  v28 = STACK[0x2F0];
  if ((v21 & 1) == 0)
  {
    v28 = STACK[0x2C0];
  }

  v29 = STACK[0x2E8];
  if ((v21 & 2) != 0)
  {
    v29 = STACK[0x2E0];
  }

  LODWORD(STACK[0x51C]) = v29;
  v30 = STACK[0x4E8];
  if ((v21 & 2) == 0)
  {
    v30 = STACK[0x4E0];
  }

  LODWORD(STACK[0x520]) = v30;
  v31 = STACK[0x2D8];
  if ((v21 & 2) != 0)
  {
    v32 = STACK[0x2D8];
  }

  else
  {
    v32 = v28;
  }

  LODWORD(STACK[0x504]) = v32;
  if ((v21 & 2) == 0)
  {
    v28 = v31;
  }

  LODWORD(STACK[0x4F0]) = v28;
  v33 = (LODWORD(STACK[0x594]) ^ 0x711A07B1) - 1198181910;
  v34 = ((LODWORD(STACK[0x594]) ^ 0xEDD248B) - 950901176) ^ ((LODWORD(STACK[0x594]) ^ 0x65221F96) - 1397924517);
  v35 = STACK[0x640] - 20;
  LODWORD(STACK[0x5AC]) = v21 ^ 0xA5688604;
  v36 = (v34 ^ (v33 + v35)) + 1574176817;
  LODWORD(STACK[0x640]) = v22;
  LODWORD(STACK[0x308]) = v27;
  if ((v21 & 2) != 0)
  {
    v37 = v27;
  }

  else
  {
    v37 = v22;
  }

  LODWORD(STACK[0x518]) = v37;
  LODWORD(STACK[0x4C4]) = v24;
  LODWORD(STACK[0x36C]) = v25;
  if ((v21 & 2) != 0)
  {
    v38 = v25;
  }

  else
  {
    v38 = v24;
  }

  LODWORD(STACK[0x524]) = v38;
  v39 = STACK[0x56C];
  LODWORD(STACK[0x508]) = v26;
  if ((v21 & 2) != 0)
  {
    v39 = v26;
  }

  LODWORD(STACK[0x528]) = v39;
  v40 = 0xB5EDB38BD1D38DD1 * *(STACK[0x698] + 8 * ((a1 | ((a1 < (v35 ^ 0x128Du) + 1389447749) << 32)) + 0x696EC101A6678EB8) - 0x4B76080FC9C6D0B0) + 0x1A4CB98889E62FAELL;
  v41 = a1 - 563266763 < v36;
  if (v36 < 0x313E8692 != a1 - 563266763 < 0x313E8692)
  {
    v41 = v36 < 0x313E8692;
  }

  return (*(STACK[0x4F8] + 8 * ((60 * v41) ^ v35)))();
}

uint64_t sub_10028A518(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v10 = (STACK[0x628] & 2) == 0;
  v11 = STACK[0x550];
  if ((STACK[0x628] & 2) == 0)
  {
    v11 = STACK[0x510];
  }

  LODWORD(STACK[0x324]) = v11;
  v12 = STACK[0x600];
  if (!v10)
  {
    v12 = STACK[0x5C0];
  }

  LODWORD(STACK[0x550]) = v12;
  v13 = STACK[0x57C];
  if (!v10)
  {
    v13 = STACK[0x564];
  }

  LODWORD(STACK[0x5C0]) = v13;
  v14 = STACK[0x534];
  if (v10)
  {
    v14 = STACK[0x530];
  }

  LODWORD(STACK[0x30C]) = v14;
  v15 = STACK[0x560];
  if (v10)
  {
    v15 = STACK[0x55C];
  }

  LODWORD(STACK[0x57C]) = v15;
  v16 = STACK[0x54C];
  if (v10)
  {
    v16 = STACK[0x548];
  }

  LODWORD(STACK[0x564]) = v16;
  v17 = STACK[0x558];
  if (!v10)
  {
    v17 = STACK[0x554];
  }

  LODWORD(STACK[0x330]) = v17;
  LODWORD(STACK[0x4CC]) = LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x52C]);
  v18 = (STACK[0x620] & 2) == 0;
  v19 = STACK[0x544];
  if ((STACK[0x620] & 2) == 0)
  {
    v19 = STACK[0x538];
  }

  LODWORD(STACK[0x52C]) = v19;
  v20 = STACK[0x4C8];
  if (!v18)
  {
    v20 = STACK[0x498];
  }

  LODWORD(STACK[0x538]) = v20;
  v21 = STACK[0x474];
  if (v18)
  {
    v21 = STACK[0x46C];
  }

  LODWORD(STACK[0x32C]) = v21;
  v22 = v9 + 0x537402AA2E4DD5F2 - ((v9 + 0x537402AA2E4DD5F2) >> 24) + ((v9 + 0x537402AA2E4DD5F2 - ((v9 + 0x537402AA2E4DD5F2) >> 24)) >> 8);
  v23 = v22 + (v22 >> 6);
  v24 = v23 - 0x6AA763026AFA247BLL - ((v23 - 0x6AA763026AFA247BLL) >> 25) + ((v23 - 0x6AA763026AFA247BLL - ((v23 - 0x6AA763026AFA247BLL) >> 25)) >> 13);
  v25 = v24 - (v24 >> 3);
  v26 = (v25 ^ 0xBA058D1D793E20EBLL) - ((v25 ^ 0xBA058D1D793E20EBLL) >> 28) + (((v25 ^ 0xBA058D1D793E20EBLL) - ((v25 ^ 0xBA058D1D793E20EBLL) >> 28)) >> 14);
  v27 = v26 - (v26 >> 3);
  v28 = (v27 ^ 0xA4957750A8B11609) - ((v27 ^ 0xA4957750A8B11609) >> 26) + (((v27 ^ 0xA4957750A8B11609) - ((v27 ^ 0xA4957750A8B11609) >> 26)) >> 9);
  v29 = v28 - (v28 >> 5);
  LODWORD(v23) = v29 ^ v23;
  v30 = (v29 ^ 0xBE5138A0032B1D32) - ((v29 ^ 0xBE5138A0032B1D32) >> 30) + (((v29 ^ 0xBE5138A0032B1D32) - ((v29 ^ 0xBE5138A0032B1D32) >> 30)) >> 12);
  v31 = v30 - (v30 >> 7);
  v32 = (v31 ^ 0x18D57D50B0DF9590) + ((v31 ^ 0x18D57D50B0DF9590) >> 28) - (((v31 ^ 0x18D57D50B0DF9590) + ((v31 ^ 0x18D57D50B0DF9590) >> 28)) >> 11);
  v33 = v32 + (v32 >> 2);
  v34 = v33 + 0x781349C584EC0A22 - ((v33 + 0x781349C584EC0A22) >> 25) + ((v33 + 0x781349C584EC0A22 - ((v33 + 0x781349C584EC0A22) >> 25)) >> 12);
  LODWORD(v25) = v31 ^ v25;
  v35 = v34 - (v34 >> 4);
  v36 = (v35 ^ 0x6CF8F3B3864DD2ELL) - ((v35 ^ 0x6CF8F3B3864DD2ELL) >> 24) - (((v35 ^ 0x6CF8F3B3864DD2ELL) - ((v35 ^ 0x6CF8F3B3864DD2ELL) >> 24)) >> 15);
  v37 = ((v36 >> 1) ^ v36) + 2 * ((v36 >> 1) & v36);
  v38 = v25 ^ v6 ^ v37;
  v39 = v23 ^ v8 ^ v35;
  v40 = v37 + 0x11BA5EB3014B5A91 + ((v37 + 0x11BA5EB3014B5A91) >> 28) + ((v37 + 0x11BA5EB3014B5A91 + ((v37 + 0x11BA5EB3014B5A91) >> 28)) >> 8);
  LODWORD(v35) = v39 & 0xFE ^ 8;
  v41 = v33 ^ v27 ^ a6 ^ (v40 - (v40 >> 2));
  LODWORD(STACK[0x554]) = v35;
  LODWORD(v40) = 16843009 * v35 - 1421369654;
  LODWORD(v27) = (v40 ^ 0x43D49B7) & (2 * (v40 & 0x54B86136)) ^ v40 & 0x54B86136;
  LODWORD(v25) = ((2 * (v40 ^ 0xA43DC9DB)) ^ 0xE10B51DA) & (v40 ^ 0xA43DC9DB) ^ (2 * (v40 ^ 0xA43DC9DB)) & 0xF085A8EC;
  LODWORD(v35) = v25 ^ 0x1084A825;
  LODWORD(v25) = (v25 ^ 0xE00100C8) & (4 * v27) ^ v27;
  LODWORD(v27) = ((4 * v35) ^ 0xC216A3B4) & v35 ^ (4 * v35) & 0xF085A8EC;
  LODWORD(v25) = (v27 ^ 0xC004A0A0) & (16 * v25) ^ v25;
  LODWORD(v27) = ((16 * (v27 ^ 0x30810849)) ^ 0x85A8ED0) & (v27 ^ 0x30810849) ^ (16 * (v27 ^ 0x30810849)) & 0xF085A8E0;
  LODWORD(v25) = v25 ^ 0xF085A8ED ^ (v27 ^ 0x8800) & (v25 << 8);
  LODWORD(STACK[0x4E8]) = v40 ^ (2 * ((v25 << 16) & 0x70850000 ^ v25 ^ ((v25 << 16) ^ 0x28ED0000) & (((v27 ^ 0xF085202D) << 8) & 0x70850000 ^ 0x70050000 ^ (((v27 ^ 0xF085202D) << 8) ^ 0x5A80000) & (v27 ^ 0xF085202D))));
  LODWORD(STACK[0x560]) = v39 ^ 0xC6 ^ ((v39 ^ 0x18C6) >> 8) ^ ((v39 ^ 0xEDA718C6) >> 16) ^ ((v39 ^ 0xEDA718C6) >> 24) ^ 0x37;
  v42 = STACK[0x698];
  LODWORD(v25) = (*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * (0x3269835F % STACK[0x5F8])) + 462408962) % STACK[0x5F8])) + 687149776) % STACK[0x5F8])) + 3231364214) % STACK[0x5F8])) + 3653994952) % STACK[0x5F8];
  v43 = ((((v25 - ((2 * v25) & 0x2D41384C) - 157246426) ^ 0x32FBE55) + 1118365457) ^ (((v25 - ((2 * v25) & 0x2D41384C) - 157246426) ^ 0x2C11B9E0) + 1838604454) ^ (((v25 - ((2 * v25) & 0x2D41384C) - 157246426) ^ 0xD99E9B93) - 1743142185)) - 572013986;
  v44 = STACK[0x5B0];
  if (!v18)
  {
    v44 = STACK[0x638];
  }

  LODWORD(STACK[0x328]) = v44;
  v45 = v41 & 7 ^ 1;
  LODWORD(STACK[0x4D8]) = v45;
  v46 = -v45 & 7;
  if ((v41 & 7) == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = 255;
  }

  LODWORD(STACK[0x4C8]) = v46;
  v48 = v47 << v46;
  v49 = 16843009 * v48;
  LODWORD(STACK[0x55C]) = v38;
  LODWORD(STACK[0x4E0]) = v49;
  LODWORD(STACK[0x46C]) = v38 & (285212672 * v48) ^ v49;
  if ((v41 & 7) == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = ~v48;
  }

  LODWORD(STACK[0x498]) = (v39 & v50);
  LODWORD(STACK[0x4EC]) = 16843009 * (v38 ^ 0x8A ^ ((v38 ^ 0xDA8A) >> 8) ^ ((v38 ^ 0xE282DA8A) >> 16) ^ HIBYTE(v38) ^ 0xD5);
  v51 = LODWORD(STACK[0x610]) ^ 0x4FAE2C65;
  LODWORD(STACK[0x600]) = v41;
  LODWORD(STACK[0x558]) = v41 ^ 0x20EAD209;
  v52 = LODWORD(STACK[0x608]) ^ 0xAC83BAF1;
  v53 = LODWORD(STACK[0x618]) ^ 0x6D429065;
  LODWORD(STACK[0x510]) = v39;
  LODWORD(STACK[0x548]) = v39 & 0xFFFFFF01;
  v54 = 0xB5EDB38BD1D38DD1 * *(v42 + 8 * ((a4 ^ 0x1F60u) + 0x70D75C54EDB9419ELL) + 0x79451D589234FF48) - 0x34DE436640AC613;
  v55 = ((v54 ^ 0xC12427B2EE8D432ELL) - 0x3D963C7B75787AC3) ^ v54 ^ ((v54 ^ 0x1CBDE99EA6C8F685) + 0x1FF00DA8C2C23098) ^ ((v54 ^ 0x5E9C291824DFE3BCLL) + 0x5DD1CD2E40D525AFLL) ^ ((v54 ^ 0x7FB7FCFDF76F6FFALL) + 0x7CFA18CB9365A9E9);
  v56 = (((v55 ^ v7 ^ 0x662A699DA30B4693) - 0x6269C8984A30474FLL) ^ ((v55 ^ v7 ^ 0xA801CC8BC1C4C0C9) + 0x53BD9271D7003EEBLL) ^ ((v55 ^ v7 ^ 0x3299BEDFF93ABFB7) - 0x36DA1FDA1001BE6BLL)) + 0x489B7C43F7ACB349;
  v57 = (((v56 ^ 0x20A3966EAD6F0908) - 0x6F0A571929B17210) ^ v56 ^ ((v56 ^ 0xD7839E56B6063ELL) - 0x4F7E42E9D2687D26) ^ ((v56 ^ 0x9100CA4486718FDALL) + 0x2156F4CCFD500B3ELL) ^ ((v56 ^ 0xFEDD1EC3F976FBF4) + 0x4E8B204B82577F14)) >> 32;
  v58 = v56 - (((v57 ^ 0xFAFE529AA39F8914) + 0x6FDE5F0A4FDF9C2FLL) ^ ((v57 ^ 0x5405E178E8A4C398) - 0x3EDA1317FB1B295DLL) ^ ((v57 ^ 0xAEFBB3E204928BFBLL) + 0x3BDBBE72E8D29EC2)) + 0x45764C191F0B5936;
  v59 = v58 - (v58 >> 16) + ((v58 - (v58 >> 16)) >> 8) + 0x3782C8B659116B30;
  v60 = v59 ^ v52;
  v61 = (((v59 ^ v55 ^ 0xAFC24655207B4821) + 0x73D3E949730E6458) ^ ((v59 ^ v55 ^ 0xEE9FD4A570A16717) + 0x328E7BB923D44B62) ^ ((v59 ^ v55 ^ 0xBDEF8939CB2F16DBLL) + 0x61FE2625985A3AAELL)) + 0x5F24263AA7D008AFLL;
  v62 = (v61 ^ 0x4DB3B2CFCF8FC530) & (2 * (v61 & 0x803824EF8FAFE1B5)) ^ v61 & 0x803824EF8FAFE1B5;
  v63 = ((2 * (v61 ^ 0x4DB3B38CD2DB8572)) ^ 0x9B172EC6BAE8C98ELL) & (v61 ^ 0x4DB3B38CD2DB8572) ^ (2 * (v61 ^ 0x4DB3B38CD2DB8572)) & 0xCD8B97635D7464C6;
  v64 = v63 ^ 0x4488912145142441;
  v65 = (v63 ^ 0x101064218600084) & (4 * v62) ^ v62;
  v66 = ((4 * v64) ^ 0x362E5D8D75D1931CLL) & v64 ^ (4 * v64) & 0xCD8B97635D7464C4;
  v67 = (v66 ^ 0x40A150155500000) & (16 * v65) ^ v65;
  v68 = ((16 * (v66 ^ 0xC9818262082464C3)) ^ 0xD8B97635D7464C70) & (v66 ^ 0xC9818262082464C3) ^ (16 * (v66 ^ 0xC9818262082464C3)) & 0xCD8B97635D7464C0;
  v69 = (v68 ^ 0xC889162155444400) & (v67 << 8) ^ v67;
  v70 = (((v68 ^ 0x502814208302087) << 8) ^ 0x8B97635D7464C700) & (v68 ^ 0x502814208302087) ^ ((v68 ^ 0x502814208302087) << 8) & 0xCD8B97635D746400;
  v71 = v69 ^ 0xCD8B97635D7464C7 ^ (v70 ^ 0x8983034154640000) & (v69 << 16);
  v72 = (v61 ^ (2 * ((v71 << 32) & 0x4D8B976300000000 ^ v71 ^ ((v71 << 32) ^ 0x5D7464C700000000) & (((v70 ^ 0x44089422091020C7) << 16) & 0x4D8B976300000000 ^ 0x4888820300000000 ^ (((v70 ^ 0x44089422091020C7) << 16) ^ 0x17635D7400000000) & (v70 ^ 0x44089422091020C7))))) >> 32;
  v73 = v61 - (((v72 ^ 0xABD438D14AFF8654) + 0x6F9FE910C7906C6CLL) ^ ((v72 ^ 0x26A68D8DA3154793) - 0x1D12A3B3D1855253) ^ ((v72 ^ 0x8D72B55C68C5C368) + 0x4939649DE5AA2958)) + 0x4483F6B09BF0CA46;
  v74 = v73 - (v73 >> 16) + ((v73 - (v73 >> 16)) >> 8) + 0x3782C8B659116B30;
  v75 = v60 ^ v74;
  v76 = (((v74 ^ v55 ^ 0x98915B02690A7F3) + 0xFF1650ACFA5FFD5) ^ ((v74 ^ v55 ^ 0x5A128798CE7B5026) + 0x5C6AF722274E0802) ^ ((v74 ^ v55 ^ 0xAF2989E1731ECE38) - 0x56AE06A465D469E0)) + 0x23F4A4B2773B97DBLL;
  v77 = (v76 ^ 0xC90ACFD08530541ALL) & (2 * (v76 & 0xE140EFDA1604065ALL)) ^ v76 & 0xE140EFDA1604065ALL;
  v78 = ((2 * (v76 ^ 0x8B0B16D0A1305C2ELL)) ^ 0xD497F2156E68B4E8) & (v76 ^ 0x8B0B16D0A1305C2ELL) ^ (2 * (v76 ^ 0x8B0B16D0A1305C2ELL)) & 0x6A4BF90AB7345A74;
  v79 = v78 ^ 0x2A48090A91144A14;
  v80 = (v78 ^ 0x3F00020201060) & (4 * v77) ^ v77;
  v81 = ((4 * v79) ^ 0xA92FE42ADCD169D0) & v79 ^ (4 * v79) & 0x6A4BF90AB7345A74;
  v82 = (v81 ^ 0x280BE00A94104840) & (16 * v80) ^ v80;
  v83 = ((16 * (v81 ^ 0x4240190023241224)) ^ 0xA4BF90AB7345A740) & (v81 ^ 0x4240190023241224) ^ (16 * (v81 ^ 0x4240190023241224)) & 0x6A4BF90AB7345A70;
  v84 = (v83 ^ 0x200B900A33040200) & (v82 << 8) ^ v82;
  v85 = (((v83 ^ 0x4A40690084305834) << 8) ^ 0x4BF90AB7345A7400) & (v83 ^ 0x4A40690084305834) ^ ((v83 ^ 0x4A40690084305834) << 8) & 0x6A4BF90AB7345A00;
  v86 = v84 ^ 0x6A4BF90AB7345A74 ^ (v85 ^ 0x4A49080234100000) & (v84 << 16);
  v87 = (v76 ^ (2 * ((v86 << 32) & 0x6A4BF90A00000000 ^ v86 ^ ((v86 << 32) ^ 0x37345A7400000000) & (((v85 ^ 0x2002F10883240A74) << 16) & 0x6A4BF90A00000000 ^ 0x241480A00000000 ^ (((v85 ^ 0x2002F10883240A74) << 16) ^ 0x790AB73400000000) & (v85 ^ 0x2002F10883240A74))))) >> 32;
  v88 = v76 - (((v87 ^ 0x50A3274BE57B244ALL) + 0x496B0BDC30CE47BBLL) ^ ((v87 ^ 0xA2C356F802BBB32BLL) - 0x44F4859028F12F24) ^ ((v87 ^ 0xF26071B396173AAELL) - 0x1457A2DBBC5DA6A1)) - 0x4F6E38E45992B66;
  v89 = v88 - (v88 >> 16) + ((v88 - (v88 >> 16)) >> 8);
  v90 = v43 > 0x950F87C3;
  if (v43 < 0x950F87C2)
  {
    v90 = 1;
  }

  return (*(STACK[0x4F8] + 8 * ((2 * !v90) | (4 * !v90) | a4)))(8529970, 2492293010, v75 ^ (v89 + 1494313776));
}

uint64_t sub_10028B4D4(unsigned int a1)
{
  v2 = (v1 + 1993) | 0x1BC;
  v3 = (STACK[0x628] & 2) == 0;
  v4 = STACK[0x5BC];
  if ((STACK[0x628] & 2) == 0)
  {
    v4 = STACK[0x4F4];
  }

  LODWORD(STACK[0x474]) = v4;
  v5 = STACK[0x534];
  if (!v3)
  {
    v5 = STACK[0x530];
  }

  LODWORD(STACK[0x5BC]) = v5;
  v6 = STACK[0x5A4];
  if (!v3)
  {
    v6 = STACK[0x568];
  }

  LODWORD(STACK[0x568]) = v6;
  v7 = (STACK[0x620] & 2) == 0;
  v8 = STACK[0x640];
  if ((STACK[0x620] & 2) == 0)
  {
    v8 = STACK[0x308];
  }

  LODWORD(STACK[0x530]) = v8;
  v9 = STACK[0x4C4];
  if (v7)
  {
    v9 = STACK[0x36C];
  }

  LODWORD(STACK[0x534]) = v9;
  LODWORD(STACK[0x54C]) = LODWORD(STACK[0x608]) ^ 0x9EFF55EE;
  LODWORD(STACK[0x308]) = LODWORD(STACK[0x548]) ^ 0x20EAD201;
  LODWORD(STACK[0x36C]) = ~LODWORD(STACK[0x46C]);
  LODWORD(STACK[0x4F4]) = 16843009 * LODWORD(STACK[0x560]);
  LODWORD(STACK[0x5A4]) = LODWORD(STACK[0x510]) ^ 0x20EAD209;
  v10 = STACK[0x698];
  v11 = (((LODWORD(STACK[0x594]) ^ 0x720F306) - 827346485) ^ ((LODWORD(STACK[0x594]) ^ 0x3E55A1C7) - 136649972) ^ ((LODWORD(STACK[0x594]) ^ 0x23906E6D) - 367065948 + v2)) + 1546986422;
  STACK[0x640] = v2 ^ 0x239Eu;
  v12 = 0xB5EDB38BD1D38DD1 * *(v10 + 8 * (STACK[0x640] + a1 + ((a1 < 0x822831) << 32) + 0x3F42C9F6CC265511) + 0x5E9B0499ABBF2F0) - 0xCD537B2D13975DLL;
  v13 = a1 + 790460903 < v11;
  if (v11 < 0x2F9FA217 != a1 + 790460903 < 0x2F9FA217)
  {
    v13 = v11 < 0x2F9FA217;
  }

  return (*(STACK[0x4F8] + 8 * ((4048 * !v13) ^ v2)))();
}

uint64_t sub_10028C054(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v5 + 0x537402AA2E4DD5F2 - ((v5 + 0x537402AA2E4DD5F2) >> 24) + ((v5 + 0x537402AA2E4DD5F2 - ((v5 + 0x537402AA2E4DD5F2) >> 24)) >> 8);
  v7 = v6 + (v6 >> 6);
  v8 = v7 - 0x6AA763026AFA247BLL - ((v7 - 0x6AA763026AFA247BLL) >> 25) + ((v7 - 0x6AA763026AFA247BLL - ((v7 - 0x6AA763026AFA247BLL) >> 25)) >> 13);
  v9 = v8 - (v8 >> 3);
  v10 = (v9 ^ 0xBA058D1D793E20EBLL) - ((v9 ^ 0xBA058D1D793E20EBLL) >> 28) + (((v9 ^ 0xBA058D1D793E20EBLL) - ((v9 ^ 0xBA058D1D793E20EBLL) >> 28)) >> 14);
  v11 = v10 - (v10 >> 3);
  v12 = (v11 ^ 0xA4957750A8B11609) - ((v11 ^ 0xA4957750A8B11609) >> 26) + (((v11 ^ 0xA4957750A8B11609) - ((v11 ^ 0xA4957750A8B11609) >> 26)) >> 9);
  v13 = v12 - (v12 >> 5);
  v14 = (v13 ^ 0xBE5138A0032B1D32) - ((v13 ^ 0xBE5138A0032B1D32) >> 30) + (((v13 ^ 0xBE5138A0032B1D32) - ((v13 ^ 0xBE5138A0032B1D32) >> 30)) >> 12);
  v15 = v14 - (v14 >> 7);
  v16 = (v15 ^ 0x18D57D50B0DF9590) + ((v15 ^ 0x18D57D50B0DF9590) >> 28) - (((v15 ^ 0x18D57D50B0DF9590) + ((v15 ^ 0x18D57D50B0DF9590) >> 28)) >> 11);
  v17 = v16 + (v16 >> 2);
  v18 = v17 + 0x781349C584EC0A22 - ((v17 + 0x781349C584EC0A22) >> 25) + ((v17 + 0x781349C584EC0A22 - ((v17 + 0x781349C584EC0A22) >> 25)) >> 12);
  v19 = v18 - (v18 >> 4);
  v20 = (v19 ^ 0x6CF8F3B3864DD2ELL) - ((v19 ^ 0x6CF8F3B3864DD2ELL) >> 24) - (((v19 ^ 0x6CF8F3B3864DD2ELL) - ((v19 ^ 0x6CF8F3B3864DD2ELL) >> 24)) >> 15);
  v21 = v20 + (v20 >> 1);
  v22 = v21 + 0x11BA5EB3014B5A91 + ((v21 + 0x11BA5EB3014B5A91) >> 28) + ((v21 + 0x11BA5EB3014B5A91 + ((v21 + 0x11BA5EB3014B5A91) >> 28)) >> 8);
  v23 = v17 ^ v11 ^ a3 ^ (v22 - (v22 >> 2));
  v24 = v23;
  v25 = v23 & 7 ^ 5;
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x320]) + 454263703 * (LODWORD(STACK[0x4D8]) - v25);
  v26 = v13 ^ v7 ^ v3 ^ v19;
  LODWORD(STACK[0x278]) = 1904732985 * (v26 ^ LODWORD(STACK[0x510])) + 1576327964;
  v27 = STACK[0x640];
  LODWORD(STACK[0x304]) = (STACK[0x640] - 582) | 0x2804;
  v28 = STACK[0x5B8];
  if ((STACK[0x628] & 2) != 0)
  {
    v28 = STACK[0x4C0];
  }

  v29 = STACK[0x630];
  if ((STACK[0x628] & 2) == 0)
  {
    v29 = STACK[0x470];
  }

  LODWORD(STACK[0x560]) = v29;
  v30 = STACK[0x5B0];
  if ((STACK[0x620] & 2) == 0)
  {
    v30 = STACK[0x638];
  }

  LODWORD(STACK[0x320]) = v30;
  v31 = v15 ^ v9 ^ v4 ^ v21;
  v32 = v26 & 0xFE ^ 0xC;
  v33 = (16843009 * v32 - 1799719336) | 1;
  v34 = ((v33 ^ 0x1CCB7F3B) + 2005857950) ^ v33 ^ ((v33 ^ 0x8FF0EEFA) - 457873571) ^ ((v33 ^ 0xD8365B67) - 1284255038) ^ ((v33 ^ 0xDFB7BCFF) - 1259195046);
  v35 = (v23 & 7) == 5;
  v36 = v26 ^ 0xC6 ^ ((v26 ^ 0x18C6) >> 8) ^ ((v26 ^ 0xEDA718C6) >> 16) ^ HIBYTE(v26) ^ 0x59;
  if ((v23 & 7) == 5)
  {
    v37 = 0;
  }

  else
  {
    v37 = 255;
  }

  LODWORD(STACK[0x264]) = -v25;
  v38 = -v25 & 7;
  v39 = v37 << v38;
  LODWORD(STACK[0x638]) = v39;
  LODWORD(STACK[0x4C0]) = v38;
  LODWORD(STACK[0x630]) = -822083584 * v39;
  LODWORD(STACK[0x548]) = 16843009 * v39;
  v40 = 16843009 * (v31 ^ 0x8A ^ ((v31 ^ 0xDA8A) >> 8) ^ ((v31 ^ 0xE282DA8A) >> 16) ^ HIBYTE(v31) ^ 0xF2);
  v41 = (134744072 * v32) ^ (134744072 * LODWORD(STACK[0x554]));
  v42 = STACK[0x4E8];
  v43 = LODWORD(STACK[0x468]) ^ ((v34 ^ LODWORD(STACK[0x4E8])) >> 1) ^ 0x3001A35A;
  v44 = (v43 - ((2 * v43) & 0x8D3967AE) + 1184674775) ^ LODWORD(STACK[0x4E8]) ^ 0xB225833B;
  v45 = v44 - ((2 * v44) & 0x4BA4CCD6);
  v46 = STACK[0x4E8] & 0xFE ^ 0xEC;
  v47 = LODWORD(STACK[0x4C8]) - v38;
  LODWORD(STACK[0x258]) = 1789437381 * v47;
  LODWORD(STACK[0x2C0]) = 1656042417 * v47;
  v48 = v34 & 0xFE ^ 0x58;
  v49 = (v48 | v26 & 0xFFFFFF01) ^ 0x59C5EA01;
  v50 = v24;
  LODWORD(STACK[0x4C4]) = v25;
  v51 = (v25 | v24 & 0xFFFFFFF8) ^ 0x59C5EA08;
  v52 = *(&off_1006B4E30 + (v27 ^ 0x5B5)) - 12;
  LODWORD(STACK[0x250]) = ((v26 ^ 0x59C5EA0D) % 0x101 - ((2 * ((v26 ^ 0x59C5EA0D) % 0x101)) & 0x9C) - 1690719154) ^ 0x70AC4CA1 ^ *&v52[4 * ((v26 ^ 0x59C5EA0D) % 0x101)];
  LODWORD(STACK[0x248]) = *&v52[4 * (v49 % 0x101)];
  LODWORD(STACK[0x240]) = v49 % 0x101 - ((2 * (v49 % 0x101)) & 0x9C) - 1690719154;
  v53 = v50 ^ 0x59C5EA0D;
  LODWORD(STACK[0x544]) = v51;
  v54 = *(&off_1006B4E30 + (v27 ^ 0x499));
  LODWORD(v52) = *(v54 + 4 * (v53 % 0x101));
  LODWORD(STACK[0x2B8]) = *(v54 + 4 * (v51 % 0x101));
  v55 = v42 ^ 0xB225833B ^ LODWORD(STACK[0x4A8]) ^ ((v41 ^ v49) - 2 * ((v41 ^ v49) & 0x469CB3DF ^ v48 & 8) + 1184674775);
  LODWORD(STACK[0x2A8]) = v45 - 1512937877;
  LODWORD(STACK[0x2A0]) = v34 ^ 0x31681032;
  v56 = v34 ^ 0x31681032 ^ v26 ^ (v55 - ((2 * v55) & 0x4BA4CCD6) - 1512937877);
  LODWORD(STACK[0x2E8]) = (v52 + 1509760098) ^ LODWORD(STACK[0x310]);
  v57 = STACK[0x5A4];
  v58 = (-15324673 * LODWORD(STACK[0x5A4])) ^ LODWORD(STACK[0x31C]);
  v59 = STACK[0x308];
  LODWORD(STACK[0x238]) = (LODWORD(STACK[0x30C]) ^ 0x2C02140A) - LODWORD(STACK[0x5A4]) + LODWORD(STACK[0x308]);
  LODWORD(STACK[0x554]) = v46;
  v60 = v46 | v59;
  LODWORD(v54) = STACK[0x600];
  v61 = LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x4F4]);
  v62 = v58 ^ LODWORD(STACK[0x600]) ^ v61 ^ (32 * v61) ^ (-15324673 * (v46 | v59));
  v63 = STACK[0x304];
  v64 = (LODWORD(STACK[0x304]) ^ 0xFFFFD5E6) & STACK[0x600] ^ 0x20EAD208;
  LODWORD(STACK[0x270]) = 16843009 * v36;
  LODWORD(STACK[0x268]) = v40;
  v65 = (16843009 * v36) ^ 0xA4A4A4A4 ^ v40;
  v66 = v54 ^ LODWORD(STACK[0x4D4]);
  v67 = STACK[0x558];
  v68 = STACK[0x4D8];
  v69 = v64 | LODWORD(STACK[0x4D8]);
  LODWORD(STACK[0x5B8]) = v66 ^ (16 * LODWORD(STACK[0x558])) ^ v69 ^ (16 * v69);
  LODWORD(STACK[0x230]) = v65;
  LODWORD(STACK[0x5B0]) = v62 ^ v65 ^ (32 * v65) ^ v69;
  LODWORD(STACK[0x298]) = 1280045023 * (v60 - v57);
  v70 = 2 * v49 + 738333706 - ((4 * v49) & 0x58042814);
  v71 = v26 ^ 0x59C5EA0D ^ v28 ^ (2 * (v26 ^ 0x59C5EA0D)) ^ v49;
  v72 = STACK[0x5F8];
  v73 = STACK[0x698];
  v74 = *(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * (0xB45B1E3E % STACK[0x5F8])) + 3124832505) % STACK[0x5F8])) + 1412408501) % STACK[0x5F8])) + 2707915429) % STACK[0x5F8]));
  LODWORD(STACK[0x5A4]) = v71 ^ v70;
  v75 = (v74 + 2650220707) % v72 - ((2 * ((v74 + 2650220707) % v72)) & 0x330F86A6) - 1182284973;
  v76 = (((v75 ^ 0x4EB9F397) - 661603724) ^ ((v75 ^ 0xE6E2FE2B) + 1892399056) ^ ((v75 ^ 0x11DCCEEF) - 2013952244)) - 590185475;
  v77 = 883 * (v63 ^ 0x2A19);
  LODWORD(STACK[0x468]) = STACK[0x630] & v31 ^ LODWORD(STACK[0x548]);
  if (v35)
  {
    v78 = 0;
  }

  else
  {
    v78 = ~LODWORD(STACK[0x638]);
  }

  LODWORD(STACK[0x2D0]) = v26;
  LODWORD(STACK[0x2E0]) = v26 & v78;
  LODWORD(STACK[0x30C]) = v68 + LODWORD(STACK[0x550]);
  LODWORD(STACK[0x4D4]) = v42 ^ 0xF4B930EC;
  LODWORD(STACK[0x470]) = v34;
  LODWORD(STACK[0x550]) = v34 ^ 0x6B4589A6;
  LODWORD(STACK[0x310]) = v56;
  LODWORD(STACK[0x308]) = v56 ^ 0xC5F56161;
  LODWORD(STACK[0x2D8]) = 4 * v53;
  LODWORD(STACK[0x290]) = -648124405 * v53;
  v79 = LODWORD(STACK[0x618]) ^ 0x41D17220;
  v80 = LODWORD(STACK[0x608]) ^ 0xACD9B154;
  LODWORD(STACK[0x2C8]) = v31;
  LODWORD(STACK[0x638]) = v31 ^ 0x13046542;
  v81 = LODWORD(STACK[0x610]) ^ 0xE9BF2E20;
  LODWORD(STACK[0x630]) = v77;
  LODWORD(STACK[0x228]) = 4 * v61;
  LODWORD(STACK[0x31C]) = LODWORD(STACK[0x4C0]) << 8;
  LODWORD(STACK[0x640]) = v61;
  LODWORD(STACK[0x22C]) = -v61;
  LODWORD(STACK[0x280]) = v67 >> 5;
  LODWORD(STACK[0x2B0]) = v64;
  LODWORD(STACK[0x288]) = v64 >> 5;
  v82 = 0xB5EDB38BD1D38DD1 * *(v73 + 8 * (((((v77 + 1677470350) > 0x63FC42B3) << 32) | 0x63FC42B3) + 0x3334AAD6937BFF51) + 0x665AA948443DEFE0) + 0x53C7C697FF07C779;
  v83 = v76 > 0xC8106B6;
  if (v76 < 0xC8106B5)
  {
    v83 = 1;
  }

  return (*(STACK[0x4F8] + 8 * ((107 * v83) ^ v63)))();
}

uint64_t sub_10028D320()
{
  v1 = STACK[0x5A8];
  if ((STACK[0x628] & 2) == 0)
  {
    v1 = STACK[0x59C];
  }

  LODWORD(STACK[0x300]) = v1;
  v2 = STACK[0x56C];
  if ((STACK[0x620] & 2) == 0)
  {
    v2 = STACK[0x508];
  }

  LODWORD(STACK[0x304]) = v2;
  LODWORD(STACK[0x4A8]) = ~LODWORD(STACK[0x468]);
  LODWORD(STACK[0x628]) = LODWORD(STACK[0x30C]) + LODWORD(STACK[0x264]);
  LODWORD(STACK[0x30C]) = LODWORD(STACK[0x258]) + LODWORD(STACK[0x50C]);
  v3 = STACK[0x230];
  v4 = LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x228]) ^ (4 * LODWORD(STACK[0x230]));
  LODWORD(STACK[0x568]) = LODWORD(STACK[0x480]) + LODWORD(STACK[0x4D4]) + LODWORD(STACK[0x550]) + 1;
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x238]) + LODWORD(STACK[0x554]);
  LODWORD(STACK[0x56C]) = LODWORD(STACK[0x2FC]) + LODWORD(STACK[0x22C]) + v3 + LODWORD(STACK[0x250]) + (LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x248]) ^ 0x8F53B35E) + 1;
  v5 = STACK[0x544];
  LODWORD(STACK[0x480]) = 4 * LODWORD(STACK[0x544]);
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x5B0]) ^ 0x5F96B5D;
  LODWORD(STACK[0x2FC]) = -648124405 * v5;
  LODWORD(STACK[0x554]) = LODWORD(STACK[0x278]) + v4;
  LODWORD(STACK[0x50C]) = LODWORD(STACK[0x270]) ^ 0xB4B4B4B4;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x268]) ^ 0x10101010;
  v6 = (((LODWORD(STACK[0x594]) ^ 0xCB0A023C) + 42287345) ^ ((LODWORD(STACK[0x594]) ^ 0xE4C04AD4) + 760154137) ^ ((LODWORD(STACK[0x594]) ^ 0x352F7444) - 56609143)) + 786312506;
  v7 = v6 < 0x248AB9B;
  v8 = (LODWORD(STACK[0x630]) ^ 0x8C68D04A7EAC3B5ELL) - 0x4A124C742E2C722FLL * *(STACK[0x698] + 8 * ((v0 | ((v0 < 0x63FC42B3) << 32)) + 0x4B3BA73803DE488BLL) - 0x59DD39C33ED459F0);
  if (v7 == v0 - 1639159575 < 0x248AB9B)
  {
    v7 = v6 > v0 - 1639159575;
  }

  return (*(STACK[0x4F8] + 8 * (((32 * !v7) | (!v7 << 6)) ^ LODWORD(STACK[0x630]))))();
}

uint64_t sub_10028E0B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = v3 + 0x537402AA2E4DD5F2 - ((v3 + 0x537402AA2E4DD5F2) >> 24) + ((v3 + 0x537402AA2E4DD5F2 - ((v3 + 0x537402AA2E4DD5F2) >> 24)) >> 8);
  v7 = v6 + (v6 >> 6);
  v8 = (v2 - 1362369562) & (4 * v7);
  v9 = v7 - 0x6AA763026AFA247BLL - ((v7 - 0x6AA763026AFA247BLL) >> 25) + ((v7 - 0x6AA763026AFA247BLL - ((v7 - 0x6AA763026AFA247BLL) >> 25)) >> 13);
  v10 = v9 - (v9 >> 3);
  v11 = STACK[0x698];
  v12 = (*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * ((*(STACK[0x698] + 8 * (0x5CF99A98 % STACK[0x5F8])) + 1799354789) % STACK[0x5F8])) + 996361021) % STACK[0x5F8])) + 1916735291) % STACK[0x5F8])) + 4227968227) % STACK[0x5F8];
  v13 = v2 + 7472;
  v14 = (v10 ^ 0xBA058D1D793E20EBLL) - ((v10 ^ 0xBA058D1D793E20EBLL) >> 28) + (((v10 ^ 0xBA058D1D793E20EBLL) - ((v10 ^ 0xBA058D1D793E20EBLL) >> 28)) >> 14);
  v15 = v14 - (v14 >> 3);
  LODWORD(STACK[0x550]) = LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x2A0]);
  LODWORD(STACK[0x2C0]) += LODWORD(STACK[0x598]);
  v16 = (v15 ^ 0xA4957750A8B11609) - ((v15 ^ 0xA4957750A8B11609) >> 26) + (((v15 ^ 0xA4957750A8B11609) - ((v15 ^ 0xA4957750A8B11609) >> 26)) >> 9);
  v17 = v16 - (v16 >> 5);
  LODWORD(STACK[0x2B8]) += 1509760098;
  v18 = LODWORD(STACK[0x298]) + LODWORD(STACK[0x4B0]);
  v19 = (v17 ^ 0xBE5138A0032B1D32) - ((v17 ^ 0xBE5138A0032B1D32) >> 30) + (((v17 ^ 0xBE5138A0032B1D32) - ((v17 ^ 0xBE5138A0032B1D32) >> 30)) >> 12);
  v20 = v19 - (v19 >> 7);
  LODWORD(v19) = LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x478]);
  LODWORD(STACK[0x5F8]) = (4 * v20) & 0xAECBE9F0;
  LODWORD(v19) = v19 ^ LODWORD(STACK[0x280]);
  v21 = (v20 ^ 0x18D57D50B0DF9590) + ((v20 ^ 0x18D57D50B0DF9590) >> 28) - (((v20 ^ 0x18D57D50B0DF9590) + ((v20 ^ 0x18D57D50B0DF9590) >> 28)) >> 11);
  v22 = v21 + (v21 >> 2);
  STACK[0x620] = v22;
  v23 = v22 + 0x781349C584EC0A22 - ((v22 + 0x781349C584EC0A22) >> 25) + ((v22 + 0x781349C584EC0A22 - ((v22 + 0x781349C584EC0A22) >> 25)) >> 12);
  v24 = v23 - (v23 >> 4);
  v25 = (v24 ^ 0x6CF8F3B3864DD2ELL) - ((v24 ^ 0x6CF8F3B3864DD2ELL) >> 24) - (((v24 ^ 0x6CF8F3B3864DD2ELL) - ((v24 ^ 0x6CF8F3B3864DD2ELL) >> 24)) >> 15);
  v26 = v25 + (v25 >> 1);
  LODWORD(STACK[0x558]) = v19 ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x4C4]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x288]);
  LODWORD(STACK[0x630]) = LODWORD(STACK[0x2D0]) ^ 0x6818EF0B;
  v27 = v8 ^ v7;
  v28 = v26 + 0x11BA5EB3014B5A91 + ((v26 + 0x11BA5EB3014B5A91) >> 28) + ((v26 + 0x11BA5EB3014B5A91 + ((v26 + 0x11BA5EB3014B5A91) >> 28)) >> 8);
  v29 = v28 - (v28 >> 2);
  LODWORD(v28) = a2 & (4 * v10) ^ v10;
  v30 = STACK[0x510];
  LODWORD(v10) = (4 * (LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x618]))) & 0xAECBE9F0;
  STACK[0x4B0] = a2 & (4 * v15) ^ v15;
  LODWORD(v15) = STACK[0x55C];
  v31 = v18 ^ LODWORD(STACK[0x55C]);
  STACK[0x478] = a2 & (4 * v29) ^ v29;
  v32 = v10 ^ v30 ^ v15 ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x628]) ^ v5 ^ v17 ^ (4 * v17) & 0xAECBE9F0 ^ v24 ^ v27 ^ (4 * v24) & 0xAECBE9F0;
  LODWORD(v28) = v31 ^ LODWORD(STACK[0x4A0]) ^ (((4 * (v31 ^ LODWORD(STACK[0x610]))) & 0xAECBE9F0) + 738333706 - ((8 * (v31 ^ LODWORD(STACK[0x610]))) & 0x58040000)) ^ v4 ^ v28 ^ v20 ^ LODWORD(STACK[0x5F8]) ^ v26 ^ (4 * v26) & 0xAECBE9F0;
  LODWORD(STACK[0x598]) = v18;
  v33 = (4 * v18) & 0xAECBE9F0 ^ v18;
  v34 = v28 & 0x20000;
  v35 = v28 & 0xFFFDFFFF;
  if ((v34 & v33) != 0)
  {
    v34 = -v34;
  }

  v36 = (v34 + v33) ^ v35;
  v37 = v36 ^ LODWORD(STACK[0x600]);
  v38 = STACK[0x54C];
  LODWORD(STACK[0x2D0]) = v37;
  LODWORD(STACK[0x2B0]) = 4 * (v37 ^ v38);
  LODWORD(STACK[0x2FC]) = v36;
  v39 = LODWORD(STACK[0x608]) ^ 0x163BBECB;
  LODWORD(STACK[0x2C8]) = v32;
  LODWORD(STACK[0x2A8]) = v32 ^ 0x2C1143C5;
  v40 = ((((v12 - ((2 * v12) & 0x1CCFA52C) + 1852297878) ^ 0x231CD038) - 1763109276) ^ (((v12 - ((2 * v12) & 0x1CCFA52C) + 1852297878) ^ 0x4EF5DEF2) - 83879766) ^ (((v12 - ((2 * v12) & 0x1CCFA52C) + 1852297878) ^ 0x38EDC5C) - 1233446392)) + 633382448;
  LODWORD(STACK[0x2A0]) = 4 * STACK[0x620];
  LODWORD(STACK[0x628]) = v36 ^ 0x553E7BC1;
  LODWORD(STACK[0x608]) = 4 * (v36 ^ 0x553E7BC1);
  v41 = 0xB5EDB38BD1D38DD1 * *(v11 + 8 * (((2 * v13) ^ 0x57E4u) + 0x1C773D7F553ED695) + 0x1C4614055608BED8) - 0x6267427282C26BA6;
  v42 = v40 < 0x152BAFE || v40 > 0x152BAFF;
  return (*(STACK[0x4F8] + 8 * ((124 * v42) ^ v13)))(0x307F760F00000000, a1, 0x13B70DB600000000);
}

uint64_t sub_10028F0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = (4 * a6) ^ 0x5F18;
  LODWORD(STACK[0x4A0]) = LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x548]);
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x5B8]) ^ 0x845B2651;
  LODWORD(STACK[0x5F8]) = LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x474]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x544]) ^ LODWORD(STACK[0x480]);
  LODWORD(STACK[0x2D8]) = STACK[0x2A0] & 0xAECBE9F0;
  v8 = LODWORD(STACK[0x2C8]) ^ 0x792F3804;
  LODWORD(STACK[0x2E0]) = STACK[0x2B0] & 0xAECBE9F0;
  LODWORD(STACK[0x480]) = v8;
  LODWORD(STACK[0x474]) = (v8 - LODWORD(STACK[0x2A8])) ^ 0xFFFFFFFE;
  v9 = (((LODWORD(STACK[0x594]) ^ 0xFF02350A) + 915240903) ^ ((LODWORD(STACK[0x594]) ^ 0xD3FBAFA5) + 443870570) ^ (((v7 + 907840683) ^ LODWORD(STACK[0x594])) - 7084848)) + 818102691;
  v10 = 0xB5EDB38BD1D38DD1 * *(STACK[0x698] + 8 * ((v6 | ((v6 < (((v7 - 759) | 0x10C) ^ 0x3EC01AEAu)) << 32)) + 0x7E85CCC815E01120) + 0xBD199BD5AFF0AC8) + 0x784E302DFBCCABAFLL;
  v11 = v6 - 982666626 < v9;
  if (v9 < 0x42DC004 != v6 - 982666626 < 0x42DC004)
  {
    v11 = v9 < 0x42DC004;
  }

  return (*(STACK[0x4F8] + 8 * ((243 * v11) ^ v7)))(0x50987B4600000000);
}

uint64_t sub_10028FDB0(uint64_t a1, int a2)
{
  LODWORD(STACK[0x498]) ^= LODWORD(STACK[0x4E0]);
  LODWORD(STACK[0x544]) = LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x2B8]);
  v7 = STACK[0x608] & 0xAECBE9F0;
  v8 = v5 + 0x537402AA2E4DD5F2 - ((v5 + 0x537402AA2E4DD5F2) >> 24) + ((v5 + 0x537402AA2E4DD5F2 - ((v5 + 0x537402AA2E4DD5F2) >> 24)) >> 8);
  v9 = v8 + (v8 >> 6);
  v10 = v9 - 0x6AA763026AFA247BLL - ((v9 - 0x6AA763026AFA247BLL) >> 25) + ((v9 - 0x6AA763026AFA247BLL - ((v9 - 0x6AA763026AFA247BLL) >> 25)) >> 13);
  v11 = v10 - (v10 >> 3);
  v12 = (v11 ^ 0xBA058D1D793E20EBLL) - ((v11 ^ 0xBA058D1D793E20EBLL) >> 28) + (((v11 ^ 0xBA058D1D793E20EBLL) - ((v11 ^ 0xBA058D1D793E20EBLL) >> 28)) >> 14);
  v13 = v12 - (v12 >> 3);
  v14 = (v13 ^ 0xA4957750A8B11609) - ((v13 ^ 0xA4957750A8B11609) >> 26) + (((v13 ^ 0xA4957750A8B11609) - ((v13 ^ 0xA4957750A8B11609) >> 26)) >> 9);
  v15 = v14 - (v14 >> 5);
  v16 = (v15 ^ 0xBE5138A0032B1D32) - ((v15 ^ 0xBE5138A0032B1D32) >> 30) + (((v15 ^ 0xBE5138A0032B1D32) - ((v15 ^ 0xBE5138A0032B1D32) >> 30)) >> 12);
  v17 = v16 - (v16 >> 7);
  v18 = (v17 ^ 0x18D57D50B0DF9590) + ((v17 ^ 0x18D57D50B0DF9590) >> 28) - (((v17 ^ 0x18D57D50B0DF9590) + ((v17 ^ 0x18D57D50B0DF9590) >> 28)) >> 11);
  v19 = v18 + (v18 >> 2);
  v20 = v19 + 0x781349C584EC0A22 - ((v19 + 0x781349C584EC0A22) >> 25) + ((v19 + 0x781349C584EC0A22 - ((v19 + 0x781349C584EC0A22) >> 25)) >> 12);
  v21 = v20 - (v20 >> 4);
  v22 = (v21 ^ 0x6CF8F3B3864DD2ELL) - ((v21 ^ 0x6CF8F3B3864DD2ELL) >> 24) - (((v21 ^ 0x6CF8F3B3864DD2ELL) - ((v21 ^ 0x6CF8F3B3864DD2ELL) >> 24)) >> 15);
  v23 = v22 + (v22 >> 1);
  LODWORD(v11) = v17 ^ v11 ^ v23;
  v24 = v23 + 0x11BA5EB3014B5A91 + ((v23 + 0x11BA5EB3014B5A91) >> 28) + ((v23 + 0x11BA5EB3014B5A91 + ((v23 + 0x11BA5EB3014B5A91) >> 28)) >> 8);
  LODWORD(v17) = LODWORD(STACK[0x55C]) - ((2 * LODWORD(STACK[0x55C])) & 0x4A2772A8) + 622049620;
  v25 = v17 ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x5A8]);
  v26 = LODWORD(STACK[0x2F0]) ^ v17 ^ (((2 * LODWORD(STACK[0x5B0])) & 0x77CD96BA ^ 0x41C58412) - ((2 * ((2 * LODWORD(STACK[0x5B0])) & 0x77CD96BA ^ 0x41C58412)) & 0x4A032020) + 622049620);
  STACK[0x2F0] = v9;
  LODWORD(STACK[0x608]) = 2 * v9;
  LODWORD(STACK[0x610]) = v26 ^ (2 * v25) & 0x77CD96BA ^ v6 ^ v11 ^ v2 & (2 * v11);
  STACK[0x4E0] = v15;
  STACK[0x2C8] = 2 * v15;
  LODWORD(v11) = (2 * (LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x54C]))) & 0x77CD96BA ^ LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x2C0]);
  STACK[0x2E8] = v21;
  LODWORD(STACK[0x600]) = 2 * v21;
  v27 = STACK[0x5DC];
  LODWORD(STACK[0x618]) = 2 * (LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x5DC]) ^ LODWORD(STACK[0x510]));
  LODWORD(STACK[0x55C]) = 2 * v27;
  LODWORD(STACK[0x594]) = v11 ^ a2 ^ STACK[0x4B0] ^ STACK[0x620] ^ LODWORD(STACK[0x2D8]) ^ STACK[0x478] ^ LODWORD(STACK[0x628]) ^ LODWORD(STACK[0x2D0]) ^ v7 ^ LODWORD(STACK[0x2E0]) ^ v4 ^ v13 ^ (2 * v13) & 0x77CD96BA ^ v19 ^ (2 * v19) & 0x77CD96BA ^ v2 & (2 * (v24 - (v24 >> 2))) ^ (v24 - (v24 >> 2));
  v28 = LODWORD(STACK[0x4E8]) ^ 0xECu;
  v29 = STACK[0x6A8];
  v30 = LODWORD(STACK[0x630]) ^ 0x7B14B4D ^ LODWORD(STACK[0x638]);
  LODWORD(v13) = 467461271 * *(*(&off_1006B4E30 + v3 - 5981) + 172) + 879558944;
  v31 = ((v13 ^ 0xCDE1CBB2) & (LODWORD(STACK[0x470]) ^ 0xE50C8B8) ^ v13 & (((v3 - 5980) | 0x120) ^ 0x9AEABFD0)) >> 1;
  v32 = v13 ^ 0xD9DA0362 ^ ((v31 ^ 0x44704550) + 339461694 - 2 * ((v31 ^ 0x44704550) & 0x143BC8D7 ^ v31 & 6) + 659);
  LODWORD(STACK[0x4A0]);
  LODWORD(STACK[0x4C0]);
  LODWORD(STACK[0x4C4]);
  v33 = 4 * LODWORD(STACK[0x640]);
  *(STACK[0x6B0] + v33) = LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x630]) ^ (((v32 & STACK[0x498]) >> LODWORD(STACK[0x4C8])) | ((v32 & STACK[0x4A8]) << LODWORD(STACK[0x4D8])));
  *(v29 + v33) = v30 ^ *(STACK[0x648] + 952) ^ 0xEE5B4637;
  return (*(STACK[0x4F8] + 8 * v3))(v28);
}

void sub_100294FDC(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, unsigned int a57)
{
  v62 = v58 ^ (((((2 * LODWORD(STACK[0x3C8])) ^ 0x1E10) - 1023756246) & v58 ^ a1 & a57) >> 1) ^ 0x96FCDFF9;
  v63 = STACK[0x498];
  v64 = STACK[0x4C8];
  v65 = STACK[0x36C];
  v66 = STACK[0x4D8];
  LODWORD(STACK[0x4E0]) = ((v62 & STACK[0x498]) >> LODWORD(STACK[0x4C8])) | ((v62 & STACK[0x36C]) << LODWORD(STACK[0x4D8]));
  v67 = v61 ^ (((v61 ^ (v60 - 1)) & a56 ^ v61 & 0xF7542566) >> 1) ^ 0x8C289721;
  v68 = STACK[0x4A0];
  v69 = STACK[0x4C0];
  v70 = STACK[0x4A8];
  v71 = STACK[0x4C4];
  LODWORD(STACK[0x478]) = ((v67 & STACK[0x4A0]) >> LODWORD(STACK[0x4C0])) + ((v67 & STACK[0x4A8]) << LODWORD(STACK[0x4C4]));
  LODWORD(STACK[0x474]) = (((v57 ^ ((v57 & STACK[0x4D4]) >> 1)) & v70) << v66) ^ (((v57 ^ ((v57 & STACK[0x4D4]) >> 1)) & v68) >> v69);
  LODWORD(STACK[0x480]) = (((v59 ^ ((v59 & STACK[0x484]) >> 1)) & v65) << v71) | (((v59 ^ ((v59 & STACK[0x484]) >> 1)) & v63) >> v64);
  v72 = STACK[0x648];
  v73 = STACK[0x3D4];
  v74 = STACK[0x3CC];
  if (STACK[0x648])
  {
    v75 = STACK[0x3D4];
  }

  else
  {
    v75 = STACK[0x3CC];
  }

  v76 = STACK[0x3D0];
  if ((v72 & 1) == 0)
  {
    v74 = STACK[0x3D0];
  }

  v77 = STACK[0x4DC];
  if (v72)
  {
    v73 = STACK[0x4DC];
  }

  else
  {
    v76 = STACK[0x4DC];
  }

  if ((v72 & 2) != 0)
  {
    v78 = v73;
  }

  else
  {
    v78 = v74;
  }

  LODWORD(STACK[0x3D0]) = v78;
  if ((v72 & 2) == 0)
  {
    v74 = v73;
  }

  LODWORD(STACK[0x3D4]) = v74;
  if ((v72 & 2) != 0)
  {
    v79 = v76;
  }

  else
  {
    v79 = v75;
  }

  LODWORD(STACK[0x3CC]) = v79;
  if ((v72 & 2) == 0)
  {
    v75 = v76;
  }

  LODWORD(STACK[0x4DC]) = v75;
  JUMPOUT(0x10029267CLL);
}

void sub_100295148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v68 = STACK[0x6A0];
  v69 = STACK[0x6A0];
  v68[7] = *(a59 + (v64 ^ 0xALL)) ^ 0x3E;
  v68[13] = *(a58 + ((v65 >> ((a64 + 118) & 0x9E)) ^ 0xALL)) ^ 0xF3;
  v68[10] = *(a60 + (BYTE1(v67) ^ 0x20)) ^ 0xB4;
  v68[6] = *(a60 + (BYTE1(v64) ^ 0x1ELL)) ^ 0x11;
  v68[8] = *(a60 + (HIBYTE(v67) ^ 0x6DLL)) ^ 0x5E;
  v68[14] = *(a60 + (BYTE1(v65) ^ 0x48)) ^ 0x42;
  v68[3] = *(a60 + (v66 ^ 0xB8)) ^ 0x2E;
  v68[1] = *(a60 + (BYTE2(v66) ^ 0x18)) ^ 0x1B;
  *v68 = *(a60 + (HIBYTE(v66) ^ 0x6CLL)) ^ 6;
  v68[4] = (*(a61 + (HIBYTE(v64) ^ 0x40)) ^ 0x55) + (((HIBYTE(v64) ^ 0x8D) - 125) ^ HIBYTE(v64) ^ 0x8D) - 2 * ((*(a61 + (HIBYTE(v64) ^ 0x40)) ^ 0x55) & (((HIBYTE(v64) ^ 0x8D) - 125) ^ HIBYTE(v64) ^ 0x8D));
  v69[12] = *(a61 + (HIBYTE(v65) ^ 0x67)) ^ ((HIBYTE(v65) ^ 0xAA) - 125) ^ HIBYTE(v65) ^ 0xAA ^ 0x6E;
  v69[15] = *(a58 + (v65 ^ 0xALL)) ^ 0x61;
  v69[11] = *(a59 + (v67 ^ 0x89)) ^ 0x13;
  v69[9] = *(a61 + (BYTE2(v67) ^ 0xD5)) ^ ((BYTE2(v67) ^ 0x18) - 125) ^ BYTE2(v67) ^ 0x18 ^ 0x64;
  v69[2] = *(a59 + (BYTE1(v66) ^ 0x62)) ^ 0x76;
  v69[5] = *(a60 + (BYTE2(v64) ^ 0x88)) ^ 0xA;
  v70 = STACK[0x6B0];
  v71 = STACK[0x6A8];
  JUMPOUT(0x100295358);
}

uint64_t sub_10029539C()
{
  v3 = (((v0 + 375481156) & 0xE99E95ED) - 5092) | 0x280;
  v4 = LOBYTE(STACK[0xB70]) ^ *(*(&off_1006B4E30 + (v3 + 295)) - 4) ^ *(*(&off_1006B4E30 + (v3 - 457)) - 5) ^ *(*(&off_1006B4E30 + (v3 ^ 0x162)) - 8);
  return (*(v2 + 8 * ((107 * ((((v4 ^ (v3 + 1699099282)) + 1504391341) ^ ((v4 ^ v1) + 672896666) ^ (((v3 - 1925867183) & 0x72CA6D1F) + 1297980059 + (v4 ^ 0x71B0A635))) - 1022166427 == *(STACK[0x3C0] + *(STACK[0x3C0] + 12) - 943748360 + v3))) ^ v3)))(1699099282, 1504391341, 672896666, 1907402293, 1297980059, 3272800869);
}

_DWORD *sub_100295560@<X0>(uint64_t a1@<X8>)
{
  (*(v4 + 8 * (v1 + 10166)))(a1);
  result = v7;
  *v7 = v2;
  v6 = *(v3 - 96);
  return result;
}

void sub_100295640(_DWORD *a1)
{
  v1 = 1551518921 * (((a1 ^ 0xEE853F82 | 0x80B2B388) - ((a1 ^ 0xEE853F82) & 0x80B2B388)) ^ 0x58F77F09);
  v2 = (v1 + *a1 - 6101) | 0xC02;
  v3 = (a1[6] ^ v1) - 721036396;
  v4 = (v7 - ((4 * (v3 + v2) + 15) & 0x7FFFFFFF0));
  *v4 = 0;
  v4[1] = v3 + 3473;
  v7[0] = v4;
  v7[1] = a1;
  v5 = v4[((((v2 + 3204) | 0x420) + 1896321076) ^ 0x35E7DF6A) - 1155559681];
  v6 = ((v4[1] - v5) ^ 0x7FFBFFF3) - 2147221492 + ((2 * (v4[1] - v5)) & 0xFFF7FFE6) < 0x7FFFFFFF;
  __asm { BRAA            X3, X17 }
}

uint64_t sub_1002958B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7)
{
  v17 = *(a1 + 8);
  v18 = a6 - 3248;
  v19 = *(v17 + a4 * v10);
  v20 = (((v19 ^ 0x4E3A3545) - 1312437573) ^ ((v19 ^ 0x43B7FAE4) - 1136130788) ^ ((v19 ^ 0x2489D6FA) + ((a6 - 3248) ^ 0xDB762DED))) - 1362790164;
  v21 = *(v17 + *(a2 + 4 * v8) * v10);
  v22 = (((v21 ^ v11) + v12) ^ ((v21 ^ v13) + v14) ^ ((v21 ^ v15) + v16)) + ((v18 + 3231) ^ 0xAEC56966);
  v23 = (v20 < v7) ^ (v22 < v7);
  v24 = v22 < v20;
  if (v23)
  {
    v24 = v20 < v7;
  }

  return (*(a7 + 8 * ((v24 * v9) ^ v18)))();
}

uint64_t sub_100295A2C(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a2 + 4 * a3);
  *(a2 + 4 * a3) = *(a2 + 4 * a4);
  *(a2 + 4 * a4) = v9;
  v10 = *(v8 - 112);
  return (*(a7 + 8 * ((((a4 + 1) >= a3) * (v7 - 3027 + v7 + 3395 - 13309)) ^ (v7 + 3376))))(*(v8 - 104));
}

uint64_t sub_100295AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v10 + 4 * (v8 + 1)) = v7;
  v11 = ((a5 + 3021) ^ 0x1962) + v8;
  *(v10 + 4 * v11) = v9;
  return (*(a7 + 8 * (((v11 > ((a5 + 409464299) & 0xE7981DE7 ^ 0xFFFFE699)) * ((a5 + 3021) ^ 0x1966)) | (a5 + 3021))))();
}

uint64_t sub_100295B40(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(a2 + 4 * a3) = *(a2 + 4 * v8);
  *(a2 + 4 * v8) = a4;
  return (*(a7 + 8 * ((((v8 + 1) >= a3) * (a8 - 3027 + a8 + 3395 - 13309)) ^ (a8 + 3376))))();
}

uint64_t sub_100295B88(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v9 + 4 * *(v10 - 96)) = a2;
  *(v9 + 4 * v8) = a3;
  return (*(a7 + 8 * ((((5 * (a6 ^ 0x241E) + 449645655) & 0xE532FF75 ^ 0x3BD8) * (a4 - 1 > v7)) ^ (5 * (a6 ^ 0x241E)))))();
}

void sub_100295C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D5758 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10062CD80[byte_10060CFD0[(99 * (dword_1006D5758 ^ 0x89 ^ dword_1006D53C8))] ^ 0x2B]) + 658);
  v3 = 99 * ((dword_1006D53C8 - *v2) ^ 0x89);
  v4 = *(&off_1006B4E30 + (v3 ^ byte_10066CCA0[byte_10064CCF0[v3] ^ 0x1B]) + 1054);
  v5 = (*v4 - *v2) ^ &v8;
  *v2 = 1758147683 * (v5 + 0x4D631102543E877);
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v6 = *(a2 + 4);
  *(a1 + 16) = v6;
  LOBYTE(v4) = 99 * ((*v4 - *v2) ^ 0x89);
  v7 = *(&off_1006B4E30 + ((99 * (dword_1006D5758 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10062CD80[byte_10060CFD0[(99 * (dword_1006D5758 ^ 0x89 ^ dword_1006D53C8))] ^ 0xC]) + 866) - 4;
  *(a1 + 8) = (*&v7[8 * (byte_10060D0D8[(byte_10066CFA0[v4] ^ 0xCB) - 8] ^ v4) + 97448])((v6 - 943747684), 2867427203);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100295EAC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (a1 + v3 - 16);
  v8 = (v2 + v3 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((3541 * (v5 ^ (a2 + 1682))) ^ 0x2947)) ^ (v5 + v4))))();
}

uint64_t sub_100296014@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 2657) & 0xFFFFF976 ^ 0xFFFFFFFF2E0C778BLL) + v3;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((10263 * (v6 == 0)) ^ v4)))();
}

uint64_t sub_100296074(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7BB0) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 - dword_1006D7BB0) ^ 0x89))] ^ 0x37]) + 167);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10062CD84[(aMG[(99 * ((dword_1006D53C8 - v3) ^ 0x89)) - 8] ^ 0xDC) - 4] ^ (99 * ((dword_1006D53C8 - v3) ^ 0x89))) + 902);
  v5 = v3 - &v8 + *v4;
  *(v2 - 4) = 1758147683 * (v5 + 0x4D631102543E877);
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v6 = *(a1 + 40) + 72 * (*(a1 + 36) - 1) + 8;
  v11 = (961063711 * ((&v9 & 0xB37D0E03 | ~(&v9 | 0xB37D0E03)) ^ 0x3D7638E3)) ^ 0x946342D8;
  v12 = v6;
  v9 = a2;
  LOBYTE(v4) = 99 * (*(v2 - 4) ^ 0x89 ^ *v4);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7BB0) ^ 0x89)) ^ byte_10066CCA0[byte_10064CCF0[(99 * ((dword_1006D53C8 - dword_1006D7BB0) ^ 0x89))] ^ 0xF1]) + 797) + 8 * (byte_10064CEF8[(byte_10062CC88[v4 - 8] ^ 0xCA) - 8] ^ v4) + 98836))(&v9);
  return (v10 - 1801394111);
}

void sub_1002962A8(uint64_t a1)
{
  v1 = *a1 ^ (325024769 * (((a1 | 0x4D0FB136) - (a1 & 0x4D0FB136)) ^ 0x39691814));
  v529 = ((32 * *(*(a1 + 8) + 16)) ^ 0xDCEE8C00) - ((((32 * *(*(a1 + 8) + 16)) ^ 0xDCEE8C00) << ((*a1 ^ ((a1 | 0x36) - (a1 & 0x36)) ^ 0x14) - 121)) & 0xEFC44980) + 2011309259;
  v527 = v1;
  v521 = *(a1 + 8);
  v533 = v1 + 2715;
  v2 = *(&off_1006B4E30 + v1 + 1131);
  v3 = 15 - 119 * v2[29];
  v4 = v3 & ((*a1 ^ ((a1 | 0x36) - (a1 & 0x36)) ^ 0x14) + 57) ^ 0xE1;
  v5 = *(&off_1006B4E30 + v1 + 715);
  v525 = v5 + 788;
  v6 = *(v5 + 788 + ((v3 ^ (2 * ((v3 ^ 0x70) & (2 * ((v3 ^ 0x70) & (2 * ((v3 ^ 0x70) & (2 * ((v3 ^ 0x70) & (2 * (v3 & (2 * (((2 * v3) & 0x62 ^ 0x42) & v3 ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x8Eu)) + 8;
  LOBYTE(v1) = v6 & 0x6E ^ 0xDD;
  v7 = v6 ^ (2 * ((v6 ^ 0x74) & (2 * ((v6 ^ 0x74) & (2 * ((v6 ^ 0x74) & (2 * ((v6 ^ 0x74) & (2 * ((v6 ^ 0x74) & (2 * (v1 ^ v6 & 0x1A)) ^ v1)) ^ v1)) ^ v1)) ^ v1)) ^ v1));
  v8 = 69 * v2[34];
  LOBYTE(v1) = v8 + 56;
  v9 = (v8 + 56) & 0x4A ^ 0x41;
  v10 = ((v8 + 56) ^ 0x48) & (2 * (((v8 + 56) ^ 0x48) & (2 * (((v8 + 56) ^ 0x48) & (2 * (((v8 + 56) ^ 0x48) & (2 * ((v8 + 56) & (2 * (v9 ^ v8 & 2)) ^ v9)) ^ v9)) ^ v9)) ^ v9));
  v11 = (((v7 ^ 0x15) + 75) ^ ((v7 ^ 0x2B) + 117) ^ ((v7 ^ 0xD3) - 115)) + 59;
  v12 = v11 & 0x6D ^ 0xDE;
  v13 = ((v2[3] - ((2 * v2[3]) & 0x10A)) << 24) - 0x75523DC87B000000;
  v14 = ((v2[80] - ((2 * v2[80]) & 0x9C)) << 16) + 0x65BB3B743E4E0000;
  v15 = v5 + 518;
  v519 = v5 + 518;
  v16 = *(v5 + 518 + ((v1 ^ (2 * (v10 ^ v9))) ^ 0x22u)) + 103;
  v17 = v16 & 0x2B ^ 0xB6;
  v18 = v16 ^ (2 * ((v16 ^ 0x4E) & (2 * ((v16 ^ 0x4E) & (2 * ((v16 ^ 0x4E) & (2 * ((v16 ^ 0x4E) & (2 * ((v16 ^ 0x4E) & (2 * ((v16 ^ 0x4E) & (2 * v16) & 0x1E ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  v532 = *(&off_1006B4E30 + (v533 ^ 0xA0A));
  v530 = v5 - 8;
  v20 = ((v2[47] - ((2 * v2[47]) & 0x168) - 0x6B5E2B66836B7C4CLL) & 0x40002000546DLL ^ 0xD0E733DBD6BBF212 ^ (((v11 ^ (2 * ((v11 ^ 0x70) & (2 * ((v11 ^ 0x70) & (2 * ((v11 ^ 0x70) & (2 * ((v11 ^ 0x70) & (2 * ((v11 ^ 0x70) & (2 * ((v11 ^ 0x70) & (2 * v11) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) << 8) ^ 0x7088BD2FDD13C692) & ((v2[47] - ((2 * v2[47]) & 0x168) - 0x6B5E2B66836B7C4CLL) ^ 0xEE7929B681AB7C46)) & (v14 ^ 0x9A44C48BC1B1FFFFLL) ^ v14 & 0x4590310014570000;
  v21 = (v20 ^ 0x1A00000BC0112448) & ((((*v2 - ((2 * *v2) & 0x1AA)) << 24) - 0xAE7CBE82B000000) ^ 0x82FAB72F8335244CLL) ^ v20 & 0x881D7CC7A9CADBB3;
  v531 = *(v532 + 4);
  v22 = ((((v2[96] - ((2 * v2[96]) & 0x140)) << 8) + 0xCCF01BC42C4A000) ^ 0x145A0B2807E4646BLL) & ((v2[82] - ((2 * v2[82]) & 0x162) + 0x64A99474EB209EB1) ^ 0x9B566B8B14DF61CALL) ^ (v2[82] - ((2 * v2[82]) & 0x162) + 0x64A99474EB209EB1) & 0x2408040088001394;
  v23 = (v21 ^ 0x800000380008000) & ((((v2[100] - ((2 * v2[100]) & 0x1C4u) - 261186300) << 32) - 0x2200000000) ^ 0x5B18180FAA5F904);
  v24 = v21 & 0xA20E29D055A06FBLL;
  v25 = ((v2[27] - ((2 * v2[27]) & 0xF4u) + 4) << 56) - 0xA00000000000000;
  LOBYTE(v21) = (((v18 ^ 0x5C) + 7) ^ ((v18 ^ 0x32) + 105) ^ ((v18 ^ 0x2C) + 119)) - 11;
  v27 = v21 & 0x4F ^ 0xC6;
  v28 = (v21 ^ (2 * ((v21 ^ 0x42) & (2 * ((v21 ^ 0x42) & (2 * ((v21 ^ 0x42) & (2 * ((v21 ^ 0x42) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * v21) & 6 ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) << 40;
  v29 = (v22 ^ 0xC362F16B32DF2904) & ((((v2[9] - ((2 * v2[9]) & 0x66)) << 16) - 0x6E7BEF30FACD0000) ^ 0x22F4404662847995);
  v30 = v22 & 0x4C8FAF769848866ALL;
  v31 = 53 * v2[49] - 119;
  LOBYTE(v22) = v31 & 0x9D ^ 0x17;
  v32 = (v31 ^ 0x76) & (2 * ((v31 ^ 0x76) & (2 * ((v31 ^ 0x76) & (2 * ((v31 ^ 0x76) & (2 * ((v31 ^ 0x76) & (2 * (((2 * v31) & 0x6E ^ 0x6A) & (v31 ^ 0x66) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22;
  v33 = (v13 ^ 0x75523DC850B1635ELL) & ((((v2[94] - ((2 * v2[94]) & 0x158u) - 1636512799) << 32) - 0x3500000000) ^ 0x340F01CB50B1635ELL) ^ v13 & 0x840018AF000000;
  v34 = (((v2[42] - ((2 * v2[42]) & 0x60u) + 5201) << 48) - 0x21000000000000) ^ (((v2[99] - ((2 * v2[99]) & 0x16Eu) + 11291596) << 40) - 0x150000000000) ^ v24 ^ v23;
  v36 = (v33 ^ 0x550035882A4E9CA1) & (v30 ^ 0xC2D4D29D30AB1938 ^ v29) ^ v33 & 0x82D673FF20A10118;
  if (((((v18 ^ 0x5C) + 7) ^ ((v18 ^ 0x32) + 105) ^ ((v18 ^ 0x2C) + 119)) - 11) == 61)
  {
    v37 = v25 ^ 0x6DD64D6E26946300;
  }

  else
  {
    v37 = v25 ^ 0x5DADFA6F26946113 ^ v34;
  }

  v38 = ((v2[97] - ((2 * v2[97]) & 0x134u) + 879787177) << 32) - 0xF00000000;
  v39 = v36 & 0x60DCE812F6;
  v523 = v5 + 253;
  v40 = *(v5 + 253 + ((v31 ^ (2 * v32)) ^ 0xE4u));
  v41 = 2 * ((v37 ^ 0x2CEDA1A408AD3615) & (v34 ^ 0x4F8448FEFFFFFDECLL) ^ v34 & 0x3B3BECCA2E395515);
  v42 = ((v40 >> 4) | (16 * v40)) + (~(2 * ((v40 >> 4) | (16 * v40))) | 0x65) + 78;
  v43 = (v28 & 0x160000000000 ^ 0x27EEC0AB1C9E01FLL) & (v36 & 0x9F2317ED09 ^ 0x27EFE0CB0C80416) | v36 & 0x9502160D00;
  v44 = ((v2[26] - ((2 * v2[26]) & 0x1F4)) << 16) + 0x102A0F250FFA0000;
  v35 = v2[32];
  v45 = (((v35 ^ 0xFFFFFF9D) + 62) ^ ((v35 ^ 0x5C) - 3) ^ ((v35 ^ 0xFFFFFFE4) + 69)) + ((((2 * v35) & 0x4A ^ 0xFFFFFF92) + 46) ^ (((2 * v35) & 0x4A ^ 0xFFFFFFA9) + 23) ^ (((2 * v35) & 0x4A ^ 0x3B) - 123)) - 54;
  v46 = v45 & 0xFFFFFFE8 ^ 0x1C;
  v47 = v45 ^ (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  v48 = (((v25 ^ 0xF9EF1769D20E5F2BLL) - 0x14395A07F49A3C2BLL) ^ ((v25 ^ 0x5150F90396C5E08) + 0x173CBD01E007C2F8) ^ ((v25 ^ 0x6FA18F9EB620123) + 0x14D3AA6832099DDDLL)) + (((v34 ^ 0x673CABEF13F7AEEBLL) + 0x4E33FBA45EC6EA62) ^ ((v34 ^ 0x4F21E6049B0E894) + 0x2DFD4E2B0481AC1FLL) ^ ((v34 ^ 0x2C4AFD71A5B8BB93) + 0x545AD3AE889FF1ALL)) - (((v41 ^ 0xDC92788406D3C241) + 0x64A9DD3511D2D24ELL) ^ ((v41 ^ 0xDCB7253AA7DB689FLL) + 0x648C808BB0DA7894) ^ ((v41 ^ 0x1625CC2AFD7A00D6) - 0x51E196641584EF25)) + 0x604957511989E386;
  v49 = (v48 ^ 0xFF38458E918F5596) & (2 * (v48 & 0xFF3D118CA5AF8018)) ^ v48 & 0xFF3D118CA5AF8018;
  v50 = ((2 * (v48 ^ 0x950468ED0C455B6)) ^ 0xECDAAE04EAD7AB5CLL) & (v48 ^ 0x950468ED0C455B6) ^ (2 * (v48 ^ 0x950468ED0C455B6)) & 0xF66D5702756BD5AELL;
  v51 = v50 ^ 0x12255102152854A2;
  v52 = (v50 ^ 0xE448060020420000) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0xD9B55C09D5AF56B8) & v51 ^ (4 * v51) & 0xF66D5702756BD5ACLL;
  v54 = (v53 ^ 0xD0255400552B54A0) & (16 * v52) ^ v52;
  v55 = ((16 * (v53 ^ 0x2648030220408106)) ^ 0x66D5702756BD5AE0) & (v53 ^ 0x2648030220408106) ^ (16 * (v53 ^ 0x2648030220408106)) & 0xF66D5702756BD5A0;
  v56 = (v55 ^ 0x6645500254295000) & (v54 << 8) ^ v54;
  v57 = (((v55 ^ 0x902807002142850ELL) << 8) ^ 0x6D5702756BD5AE00) & (v55 ^ 0x902807002142850ELL) ^ ((v55 ^ 0x902807002142850ELL) << 8) & 0xF66D5702756BD500;
  v58 = v56 ^ 0xF66D5702756BD5AELL ^ (v57 ^ 0x6445020061410000) & (v56 << 16);
  v59 = (v58 << 32) & 0x766D570200000000 ^ v58 ^ ((v58 << 32) ^ 0x756BD5AE00000000) & (((v57 ^ 0x92285502142A51AELL) << 16) & 0x766D570200000000 ^ 0x206D020000000000 ^ (((v57 ^ 0x92285502142A51AELL) << 16) ^ 0x5702756B00000000) & (v57 ^ 0x92285502142A51AELL));
  LOBYTE(v58) = (((v42 ^ 0x6F) - 10) ^ ((v42 ^ 0x21) - 68) ^ ((v42 ^ 0x59) - 60)) - 67;
  LOBYTE(v57) = v58 & 0xEC ^ 0x3C;
  v60 = (v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)));
  v26 = v2[35] - ((2 * v2[35]) & 0x114) - 0x11CDD09B723F5D76;
  v61 = (v26 & 0x800000004000336 ^ 0x464066E4B1DE85EALL ^ ((((v2[81] - ((2 * v2[81]) & 0x128)) << 8) - 0x7BE75C421B466C00) ^ 0xF3EE493FB46B10C9) & (v26 ^ 0x11CDD09B723F5D61)) & (v44 ^ 0xEFD5F0DAF005FFFFLL) ^ v44 & 0x803011AF30000;
  v62 = (v43 ^ 0xB08011E04C2212E0) & (((v28 | 0xFFFFFEFFFFFFFFFFLL) & (v39 ^ 0x10203F66D6970B1) | v28 & 0xE80000000000) ^ 0xB382307247FB547CLL) ^ v43 & 0x12041B0185C900;
  v63 = 69 * v2[21] + 51;
  LOBYTE(v57) = v63 & 0x7D ^ 0x58;
  LOBYTE(v40) = (v63 ^ 0x4C) & (2 * ((v63 ^ 0x4C) & (2 * ((v63 ^ 0x4C) & (2 * ((v63 ^ 0x4C) & (2 * ((v63 ^ 0x4C) & (2 * (v63 & (2 * v63) & 0x1A ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57;
  v64 = ((v2[55] - ((2 * v2[55]) & 0xBAu) + 10476436) << 40) - 0x370000000000;
  v65 = v2[73] - ((2 * v2[73]) & 0x156) - 0x502346D12A016855;
  v66 = (((v65 & 0x10000000001402 ^ 0xF10453E1002E9DB2 ^ (v65 ^ 0x502346D12A016854) & ((((v2[95] - ((2 * v2[95]) & 0xFFFB)) << 8) + 0x395284ABFB7FFD00) ^ 0x9F9F7636C62516FDLL)) & ~(v2[28] << 16) | (v2[28] << 16) & 0x8B0000) ^ 0xA8265E83C2828490) & ((((v2[64] - 2 * (v2[64] & 0xF)) << 24) - 0x662E2D78F1000000) ^ 0xC8B04784C892C695);
  v67 = (v65 & 0x10000000001402 ^ 0xF10453E1002E9DB2 ^ (v65 ^ 0x502346D12A016854) & ((((v2[95] - ((2 * v2[95]) & 0xFFFB)) << 8) + 0x395284ABFB7FFD00) ^ 0x9F9F7636C62516FDLL)) & ~(v2[28] << 16) & 0xAE9E6AFC386D396ALL | (v2[28] << 16) & 0x90000;
  v68 = ((v2[62] - ((2 * v2[62]) & 0x8Cu) - 1575516833) << 32) - 0x1900000000;
  v69 = ((((v60 << 24) ^ 0x3EC76C18B6AC3F54) & (v38 ^ 0xA879340FFFD3F7FLL) | v38 & 0x3013E700000000) ^ 0xC6AA7F8D3538EAB2) & (v61 ^ 0xC64170981040FCDFLL);
  v19 = ((v2[68] - ((2 * v2[68]) & 0xBCu) + 155) << 56) - 0x3D00000000000000;
  v70 = (v62 ^ 0x4D6D000008401064) & (v19 & 0x3B00000000000000 ^ 0xA31C6D6BB3180CFCLL ^ ((((v2[6] - ((2 * v2[6]) & 0xAEu) + 5994) << 48) - 0x13000000000000) ^ 0xD3B0069AEDD35C80) & (v19 ^ 0xA1FF5FFFEFF37FDALL));
  v71 = v62 & 0x8204940EA134AF83;
  v72 = v531 - 0x63038EF807E5583ALL - ((2 * v531) & 0x1F0354F8CLL);
  v73 = (v62 ^ 0xF305A8A43) & (v72 ^ 0x9CFC7107F81AA7C6);
  v74 = (v61 & 0x7A2FCE8906B2A19 ^ 0x63A696BDD50956A0 ^ v69) & (v64 ^ 0x6024A2FFFFFFFFFFLL);
  LOBYTE(v65) = v2[93] + 103;
  v75 = v65 & 0xD2 ^ 0x1A;
  LOBYTE(v62) = v65 ^ (2 * ((v65 ^ 0x3C) & (2 * ((v65 ^ 0x3C) & (2 * ((v65 ^ 0x3C) & (2 * ((v65 ^ 0x3C) & (2 * ((v65 ^ 0x3C) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75));
  v76 = *(v530 + (v47 ^ 0xA9)) ^ v47 ^ 0xB0u;
  v77 = (v67 ^ 0x27977B5A3AB3455CLL ^ v66) & (v68 ^ 0x5DE87AB9FFFFFFFFLL);
  LOBYTE(v67) = *(v15 + ((v63 ^ (2 * v40)) ^ 0x15u));
  v78 = ((v62 ^ 0xF8312673) + 130996630) ^ ((v62 ^ 0xE1968438) + 510229471) ^ ((v62 ^ 0x19A7A2E5) - 430416636);
  v79 = (v71 ^ 0x39B3D7A840490F97 ^ v70) & (v72 ^ 0x63038EF807E55839);
  LOBYTE(v67) = v67 + 83;
  v80 = v67 & 0xD3 ^ 0x38;
  LOBYTE(v67) = v67 ^ (2 * ((v67 ^ 0x62) & (2 * ((v67 ^ 0x62) & (2 * ((v67 ^ 0x62) & (2 * ((v67 ^ 0x62) & (2 * ((v67 ^ 0x62) & (2 * ((v67 ^ 0x62) & (2 * v67) & 0x46 ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80));
  v81 = v2[18] - ((2 * v2[18]) & 0xC2);
  LOBYTE(v40) = ((v67 ^ 0xB9) + 81) ^ ((v67 ^ 0x56) - 64) ^ ((v67 ^ 0x55) - 67);
  LODWORD(v67) = v78 - (((v62 ^ 0x46A24438) - 1185039363) ^ ((v62 ^ 0xBA07406E) + 1173929899) ^ ((v62 ^ 0xFCA504C5) + 56294146)) + 1923419612;
  v82 = (v67 ^ 0xC12F033) & (2 * (v67 & 0x8D5AF233)) ^ v67 & 0x8D5AF233;
  LODWORD(v65) = ((2 * (v67 ^ 0xE925035)) ^ 0x791440C) & (v67 ^ 0xE925035) ^ (2 * (v67 ^ 0xE925035)) & 0x83C8A206;
  v83 = (v65 ^ 0x83802206) & (4 * v82) ^ v82;
  LODWORD(v65) = ((4 * (v65 ^ 0x8048A202)) ^ 0xF228818) & (v65 ^ 0x8048A202) ^ (4 * (v65 ^ 0x8048A202)) & 0x83C8A204;
  v84 = v65 ^ 0x80C82206;
  LODWORD(v65) = (v65 ^ 0x3008000) & (16 * v83) ^ v83;
  v85 = ((16 * v84) ^ 0x3C8A2060) & v84 ^ (16 * v84) & 0x83C8A200;
  LODWORD(v65) = v65 ^ 0x83C8A206 ^ (v85 ^ 0x882000) & (v65 << 8);
  LODWORD(v67) = v67 ^ (2 * ((v65 << 16) & 0x3C80000 ^ v65 ^ ((v65 << 16) ^ 0x22060000) & (((v85 ^ 0x83408206) << 8) & 0x3C80000 ^ 0x3480000 ^ (((v85 ^ 0x83408206) << 8) ^ 0x48A20000) & (v85 ^ 0x83408206))));
  LOBYTE(v65) = v40 - 87;
  v86 = v2[52] - ((2 * v2[52]) & 0xFF07);
  LOBYTE(v40) = ((86 - v40) & 0xD4 | 0x22) ^ (v40 - 87) & 0x64;
  v87 = *(&off_1006B4E30 + (v533 ^ 0x878)) - 4;
  v88 = *v521;
  v528 = *&v87[8 * v527];
  LOBYTE(v62) = v62 ^ *(v530 + v78 - 1589969116 + (((v67 ^ 0x40318952) + 1874903298) ^ ((v67 ^ 0x96619B65) - 1181691081) ^ ((v67 ^ 0xA7645BF6) - 2003496026)));
  v89 = v73 ^ v72 & 0x18B0605887AC6A4FLL ^ v79;
  v90 = v2[19];
  v91 = v77 ^ v68 & 0x821131DA00000000 ^ (((v2[61] - ((2 * v2[61]) & 0x10u) + 176) << 56) - 0x2800000000000000) ^ (((v2[37] - ((2 * v2[37]) & 0xFF83u) + 43759) << 48) - 0x2E000000000000) ^ ((v65 ^ (2 * ((v65 ^ 0x54) & (2 * ((v65 ^ 0x54) & (2 * ((v65 ^ 0x54) & (2 * ((v65 ^ 0x54) & (2 * ((v65 ^ 0x54) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) << 40);
  v92 = v64 & 0x586E60000000000 ^ (((v2[40] - ((2 * v2[40]) & 0x134u) + 45992) << 48) - 0xE000000000000) ^ (v76 << 56) ^ v74 ^ v89;
  LOBYTE(v76) = v90 + 81;
  v93 = ((v62 << 8) ^ 0x158E690A621FDBA5) & ((v90 + 0x752767DAF0AEB151 - ((2 * v90) & 0xA2)) ^ 0x809808D49BD14EE4) ^ (v90 + 0x752767DAF0AEB151 - ((2 * v90) & 0xA2)) & 0x602106000020285ALL;
  v94 = (v93 ^ 0x8A5090F59DC0080ALL) & ((((v86 - 775220072) << 32) - 0x1500000000) & 0x80C1164700000000 ^ 0xC5F2344B3158862DLL ^ ((((v2[76] - ((2 * v2[76]) & 0x5C)) << 16) + 0x60BF93EC362E0000) ^ 0x1DA1BA54FD047440) & ((((v86 - 775220072) << 32) - 0x1500000000) ^ 0x2E34EB7CFFFF7C4ALL)) ^ v93 & 0x4582660A000D0D92;
  v95 = (((v2[59] - ((2 * v2[59]) & 0xC0u) + 138) << 56) - 0x2A00000000000000) ^ (((v2[91] - ((2 * v2[91]) & 0xAAu) + 633) << 48) - 0x24000000000000) ^ v94 & 0xD4B5E0575936FB55 ^ (v94 ^ 0x8250900505800002) & (((v81 << 24) - 0x43E55F769F000000) & 0x2018808BFC000000 ^ 0x9695B155C53C433DLL ^ (((v81 << 24) - 0x43E55F769F000000) ^ 0x43E55F7402F54797) & ((((v2[39] - ((2 * v2[39]) & 0x44u) + 73292) << 40) - 0x2A0000000000) ^ 0x9CD90C7403F54797)) ^ 0x554370896EDE8253;
  v96 = v48 ^ v95 ^ (2 * v59);
  v97 = v91 ^ 0x646F8ACFFC9FBBEALL;
  v98 = v89 & 0x79BB21155067A926 ^ (v92 ^ 0x169205272F67A49) & (v89 ^ 0xF6D66086F07A2BCFLL) ^ 0xDB2DB9AE0650A8BALL ^ v96;
  v99 = v92 & 0x27D7C0EE0DEEBEEDLL ^ v89 ^ (v91 ^ 0xB50D3F248F09CCEDLL) & (v92 ^ 0x872DFEB8DD6E2C90) ^ v98;
  v100 = v91 ^ 0x646F8ACFFC9FBBEALL ^ v95;
  v101 = v96 & 0x3F3C62EB76E7F9CALL ^ v100 ^ (v96 ^ 0xF97901CDDC6E66F9) & (v89 ^ 0x3615FD9279622DFALL);
  v102 = v101 ^ v98 ^ 0x42E758514C29F6ACLL;
  v103 = v91 & 0x607A52348803C09ALL ^ (v100 ^ 0xA5D30D5B6B457BE4) & (v91 ^ 0x6D2500357D188DFFLL) ^ v92;
  v104 = v100 & 0xE4DB28A9724A58E4 ^ v97 ^ v103 ^ 0x73248BF023FEAE93 ^ (v96 ^ 0xE25DD69B51DBC1E2) & (v100 ^ 0x3A56A0901CB94481);
  LOBYTE(v100) = (((v76 & 1) + 67) ^ ((v76 & 1) - 69) ^ ((v76 & 1 ^ 0xDD) - 24)) + 127 + (((v76 & 1 ^ 0x2B) + 28) ^ ((v76 & 1) + 65) ^ ((v76 & 1 ^ 3) + 52));
  LOBYTE(v97) = (v100 ^ 0xBE) & (2 * (v100 & 0xBE)) ^ v100 & 0xBE;
  LOBYTE(v96) = ((2 * (v100 ^ 0xC2)) ^ 0xF8) & (v100 ^ 0xC2) ^ (2 * (v100 ^ 0xC2)) & 0x7C;
  LOBYTE(v96) = (((4 * (v96 ^ 4)) ^ 0xF0) & (v96 ^ 4) ^ (4 * (v96 ^ 4)) & 0x7C ^ 0x60) & (16 * ((v96 ^ 0x78) & (4 * v97) ^ v97)) ^ (v96 ^ 0x78) & (4 * v97) ^ v97;
  v105 = (v103 >> 6) ^ 0x3163816761BC7C91;
  v106 = ((((v101 ^ v98) >> 28) ^ 0xF61F8CA35) << !(v76 & 1) << ((v100 ^ (2 * v96) ^ 4) & (v76 & 1 | 4))) ^ __ROR8__(v102 ^ __ROR8__(v102, 19), 63);
  v107 = ((((v103 >> 6) ^ 0x8CE5C62511EE6056) + 0x4279B8BD8FADE339) ^ (((v103 >> 6) ^ 0x88D1A633C5E5F680) + 0x464DD8AB5BA675EFLL) ^ (((v103 >> 6) ^ 0x416350A167C699FLL) - 0x3575B46D77C0150ELL)) - ((((2 * v105) ^ 0xC707AB9414F70685) + 0x75FD3D5A57E01CCALL) ^ (((2 * v105) ^ 0x517D5CEFF3BF52C0) - 0x1C7835DE4F57B773) ^ (((2 * v105) ^ 0xF4F95F8CA0DF53F5) + 0x4603C942E3C849BALL)) + 0x693AFCA2A3A1871;
  v108 = (v107 ^ 0xF2B762C37F912473) & (2 * (v107 & 0xFB2762EA7E118964)) ^ v107 & 0xFB2762EA7E118964;
  v109 = ((2 * (v107 ^ 0x36FD23576F9226B3)) ^ 0x9BB4837A23075FAELL) & (v107 ^ 0x36FD23576F9226B3) ^ (2 * (v107 ^ 0x36FD23576F9226B3)) & 0xCDDA41BD1183AFD6;
  v110 = v109 ^ 0x444A40851080A051;
  v111 = (v109 ^ 0x8990013800020F80) & (4 * v108) ^ v108;
  v112 = ((4 * v110) ^ 0x376906F4460EBF5CLL) & v110 ^ (4 * v110) & 0xCDDA41BD1183AFD4;
  v113 = (v112 ^ 0x54800B40002AF40) & (16 * v111) ^ v111;
  v114 = ((16 * (v112 ^ 0xC892410911810083)) ^ 0xDDA41BD1183AFD70) & (v112 ^ 0xC892410911810083) ^ (16 * (v112 ^ 0xC892410911810083)) & 0xCDDA41BD1183AFD0;
  v115 = (v114 ^ 0xCD8001911002AD00) & (v113 << 8) ^ v113;
  v116 = (((v114 ^ 0x5A402C01810287) << 8) ^ 0xDA41BD1183AFD700) & (v114 ^ 0x5A402C01810287) ^ ((v114 ^ 0x5A402C01810287) << 8) & 0xCDDA41BD1183AF00;
  v117 = v115 ^ 0xCDDA41BD1183AFD7 ^ (v116 ^ 0xC840011101830000) & (v115 << 16);
  v118 = (v117 << 32) & 0x4DDA41BD00000000 ^ v117 ^ ((v117 << 32) ^ 0x1183AFD700000000) & (((v116 ^ 0x59A40AC100028D7) << 16) & 0x4DDA41BD00000000 ^ 0xC42403C00000000 ^ (((v116 ^ 0x59A40AC100028D7) << 16) ^ 0x41BD118300000000) & (v116 ^ 0x59A40AC100028D7));
  *(&v119 + 1) = v103 ^ 0x73248BF023FEAE93;
  *&v119 = v103 ^ 0x8FEE7458B4430CEALL;
  *&v119 = __ROR8__(v103 ^ 0xE67A2C84678BACBBLL ^ (v119 >> 1), 44);
  v120 = v99 & 0xFFFFFFFEFFFFFFFFLL ^ (v99 >> 61) ^ (v99 & &_mh_execute_header | 0x2420285A34801449);
  *(&v119 + 1) = v119 ^ 0xAD52F;
  *&v119 = v119 ^ 0x200EEAA119000000;
  v121 = v119 >> 20;
  v122 = ((v120 ^ 0x90D9E7BA10585785) - 2 * ((v120 ^ 0x90D9E7BA10585785) & 0x6B6B25B47346363DLL ^ v120 & 0x28) - 0x1494DA4B8CB9C9EBLL) ^ (8 * (v99 ^ 0x34880770942ADAB9));
  *(&v119 + 1) = v104 ^ 0xA5;
  *&v119 = v104 ^ 0x6F7042F0982AE800;
  v123 = v119 >> 10;
  *(&v119 + 1) = ~v106;
  *&v119 = v106 ^ 0xECAEA4EF35C7E78ELL;
  v124 = ((v122 ^ 0xE8E56131F4D2FD95) + 0x6971EDC810925E97 - 2 * ((v122 ^ 0xE8E56131F4D2FD95) & 0x6971EDC810925EB7 ^ v122 & 0x20)) ^ (v99 >> 39);
  v125 = (v119 >> 1) - ((2 * (v119 >> 1)) & 0x699386420ABCB202) + 0x34C9C321055E5901;
  v126 = ((v124 ^ 0x6971EDC811FBAD08) - 2 * ((v124 ^ 0x6971EDC811FBAD08) & 0x66D134667C912FBELL ^ v124 & 2) - 0x192ECB99836ED044) ^ ((v99 ^ 0x34880770942ADAB9) << 25);
  v127 = v126 ^ 0xC7B0D1549C912FBCLL;
  v128 = v121 - ((v121 + 0x3141D47BA3CB83D8 - ((2 * v121) & 0x6283A8F7479707B0)) ^ v105);
  *(&v119 + 1) = v101 ^ 0x13;
  *&v119 = v101 ^ 0xAE0638AA55B6C600;
  v129 = v107 ^ (v128 - ((2 * v128) & 0x207A9DF5ECC982E8) - 0x6FC2B105099B3E8CLL) ^ (2 * v118) ^ 0xF3AAAC40AB7217BELL;
  v130 = (v129 + 0x3141D47BA3CB83D8 - ((2 * v129) & 0x6283A8F7479707B0)) ^ v105;
  v131 = (v119 >> 7) - ((2 * (v119 >> 7)) & 0xEB7D3D0F335A4702) - 0xA4161786652DC7FLL;
  *&v119 = __ROR8__(v101, 41);
  v132 = v101 ^ 0xD80DEDAFCFB32E31 ^ ((v131 ^ v119 ^ 0xA09445E4907A209DLL) - ((2 * (v131 ^ v119 ^ 0xA09445E4907A209DLL)) & 0xEC17AA0B340BD044) + 0x760BD5059A05E822);
  v133 = v130 + v121;
  *&v119 = __ROR8__(v104, 17);
  v134 = (((v123 - ((2 * v123) & 0xE78F6F5F6F494A30) + 0x73C7B7AFB7A4A518) ^ v119 ^ 0x795001796DCE90DLL) - ((2 * ((v123 - ((2 * v123) & 0xE78F6F5F6F494A30) + 0x73C7B7AFB7A4A518) ^ v119 ^ 0x795001796DCE90DLL)) & 0x1B81EB7FCEC62F20) - 0x723F0A40189CE870) ^ v104;
  v135 = v134 ^ 0xE2B0B74F7F49FF35;
  v136 = v133 ^ (v103 << 58) ^ 0xAC00000000000000;
  v137 = v136 ^ v126 ^ 0xC7B0D1549C912FBCLL;
  v138 = v132 ^ (v102 << 36) ^ v125;
  v139 = v138 ^ 0xA47541EB96D48395;
  v140 = v138 ^ 0x5B8ABE14692B7C6ALL;
  v141 = v134 ^ 0xE2B0B74F7F49FF35 ^ v132;
  v142 = v136 & (v126 ^ 0x384F2EAB636ED043);
  v143 = (v134 ^ 0xE2B0B74F7F49FF35) & ~v137;
  v144 = v143 + v127;
  v145 = v143 & v127;
  v146 = (v134 ^ 0x1D4F48B080B600CALL) & v132;
  v147 = v127 & v140;
  v148 = v139 ^ v141;
  v149 = v139 | ~v141;
  v150 = v139 ^ 0x54F9868382B168DLL ^ v142;
  v151 = v148 + v149 + 1;
  v152 = v147 ^ v141;
  v153 = v151 ^ v135;
  v154 = ~v144 + 2 * v145;
  v155 = __ROR8__(__ROR8__(v137 ^ v146, 28) ^ 0xAE0BD8973B79BE1FLL, 36);
  v156 = v150 ^ v147 ^ v141;
  v157 = v155 ^ 0x73B79BE1FAE0BD89 | v153;
  v158 = v157 & 0x800000000000000;
  v159 = (v155 ^ 0x73B79BE1FAE0BD89) & v153;
  v160 = (~(2 * v154) + v154) ^ v150;
  v161 = v160 ^ 0xCDD9B263CA650C6DLL;
  if ((v159 & 0x800000000000000) != 0)
  {
    v158 = -v158;
  }

  v162 = ((v158 + v159) ^ v157 & 0xF7FFFFFFFFFFFFFFLL ^ -((v158 + v159) ^ v157 & 0xF7FFFFFFFFFFFFFFLL) ^ (0x776FAB65F4A9803ALL - ((v158 + v159) ^ v157 & 0xF7FFFFFFFFFFFFFFLL ^ 0x776FAB65F4A9803ALL))) + 0x776FAB65F4A9803ALL;
  *(&v163 + 1) = v155;
  *&v163 = v155 ^ 0xD24A6ECC60194DE8;
  v164 = (((*(v519 + ((69 * ((v160 ^ 0xCDD9B263CA650C6DLL) >> 61)) ^ 0x68)) + 54) ^ 0x69) - 47) ^ (8 * v160) ^ v160 ^ 0xA314217D994D6F05;
  v165 = (v164 + (v161 >> 39) - 2 * (v164 & (v161 >> 39))) ^ (v161 << 25);
  v166 = (v163 >> 1) ^ v155 ^ 0xD24A6ECC60194DE8 ^ ((v155 ^ 0xD24A6ECC60194DE8) >> 6) ^ ((v155 ^ 0xD24A6ECC60194DE8) << 58);
  v167 = v165 ^ v166;
  v168 = ((v162 >> 10) | v162) ^ (v162 << 47) ^ (v162 >> 10) & v162 ^ ((v162 >> 17) | (v162 << 54));
  v169 = v152 ^ 0x917AAA3CD96CD60ELL ^ __ROR8__(v152 ^ 0x917AAA3CD96CD60ELL, 7) ^ ((v152 ^ 0x917AAA3CD96CD60ELL) >> 41) ^ ((v152 ^ 0x917AAA3CD96CD60ELL) << 23);
  v170 = v168 & ~(v165 ^ v166);
  v171 = v169 ^ (v156 >> 28) ^ v156 ^ 0xED7206BD2EC87F48 ^ __ROR8__(v156 ^ 0xED7206BD2EC87F48, 19) ^ ((v156 ^ 0xED7206BD2EC87F48) << 36);
  v172 = v171 ^ 0xED7206BD2;
  v173 = v166 & ~v165;
  v174 = v171 & 0x800000000000;
  v175 = v168 ^ v169;
  if ((v173 & v171 & 0x800000000000) != 0)
  {
    v174 = -v174;
  }

  v176 = (v174 + v173) ^ v172 & 0xFFFF7FFFFFFFFFFFLL;
  v177 = v175 ^ v165 & (v171 ^ 0xFFFFFFF128DF942DLL);
  v178 = v169 & ~v168 ^ v167;
  v179 = v172 & ~v175 ^ v168 ^ v178;
  v180 = (((v177 ^ 0x98B77F10B1BA9E36) & 0x22FFE6224A1D36D6) + (v176 & 0x22FFE6224A1D36D6) - 2 * ((v177 ^ 0x98B77F10B1BA9E36) & 0x22FFE6224A1D36D6 & v176)) | (v177 ^ 0x98B77F10B1BA9E36 ^ v176) & 0xDD0019DDB5E2C929;
  v181 = v165 ^ 0xE2E4CD6B12D4B3B0 ^ v170 ^ v176;
  v182 = v178 ^ 0x3318D22A1B3BD713;
  v183 = v180 ^ __ROR8__(v180, 19) ^ (v180 >> 28) ^ (v180 << 36);
  *(&v184 + 1) = ~v178;
  *&v184 = v178 ^ 0x3318D22A1B3BD713;
  v185 = v181 ^ __ROR8__(v181, 61) ^ (v181 >> 39) ^ (v181 << 25);
  v186 = (v184 >> 1) ^ v178 ^ 0x3318D22A1B3BD713 ^ ((v178 ^ 0x3318D22A1B3BD713) >> (v179 & 6) >> (v179 & 6 ^ 6));
  v187 = v177 ^ 0xD9321B1807A54237 ^ __ROR8__(v177 ^ 0xD9321B1807A54237, 7) ^ ((v177 ^ 0xD9321B1807A54237) >> 41) ^ ((v177 ^ 0xD9321B1807A54237) << 23);
  v188 = v186 & 0x503C638009AD5A8 ^ (v182 << 58) & 0x400000000000000 | v186 & 0xFAFC39C7FF652A57 ^ (v182 << 58) & 0xF800000000000000;
  v189 = v179 ^ 0x57D4AE0B6BADFBD8 ^ __ROR8__(v179 ^ 0x57D4AE0B6BADFBD8, 10) ^ ((v179 ^ 0x57D4AE0B6BADFBD8uLL) >> 17) ^ ((v179 ^ 0x57D4AE0B6BADFBD8) << 47);
  v190 = v188 ^ v185;
  v191 = v183 + v187 - 2 * (v183 & v187);
  v192 = v191 & ~(v189 ^ v187);
  v193 = v189 & ~(v188 ^ v185) ^ v185;
  v194 = v188 & ~v185;
  v195 = v185 & ~v191;
  v196 = v191 ^ v194;
  v197 = v193 ^ v196;
  v198 = v195 ^ v189 ^ v187;
  v199 = v196 ^ 0xDE1CA53CC441A02 ^ v198;
  v200 = v190 ^ v187 & ~v189;
  v201 = v197 ^ 0x8CEE1D69D550E5FLL;
  v202 = v199 ^ __ROR8__(v199, 19);
  v203 = v200 ^ 0x47C66056EC22CF95 ^ ((v192 ^ -v192 ^ (v189 - (v192 ^ v189))) + v189);
  v204 = (v199 >> 28) & 0x20000;
  *(&v184 + 1) = v197 ^ 0x8CEE1D69D550E5FLL;
  *&v184 = v197;
  v205 = v184 >> 61;
  v206 = v198 ^ 0x98D780F384182967;
  v207 = __ROR8__(v198, 62) & 0xC000000000000003 ^ 0x4000000000000002;
  if ((v204 & v202) != 0)
  {
    v204 = -v204;
  }

  *(&v208 + 1) = v200;
  *&v208 = v200 ^ 0x73E735CE3C270102;
  v209 = v205 ^ v201 ^ (v201 >> 39) ^ (v201 << 25);
  v210 = __ROR8__((__ROR8__(v207, 62) + 16 * v206) ^ (16 * (v206 >> 7)) ^ 0xEE1A3DC19B9D1534, 4);
  v211 = (v208 >> 1) ^ v200 ^ 0x73E735CE3C270102 ^ ((v200 ^ 0x73E735CE3C270102) >> 6) ^ ((v200 ^ 0x73E735CE3C270102) << 58);
  v212 = __ROR8__(__ROR8__(v209 ^ v211, 52) ^ 0xE62AEC87F39CAACBLL, 12) ^ 0x53419D513780C635;
  v213 = v203 ^ __ROR8__(v203, 10) ^ (v203 >> 17) ^ (v203 << 47);
  v214 = (((v206 >> 41) ^ -(v206 >> 41) ^ ((v210 ^ (v206 << 57) ^ 0x4EE1A3DC19B9D153) - (v210 ^ (v206 << 57) ^ 0x4EE1A3DC19B9D153 ^ (v206 >> 41)))) + (v210 ^ (v206 << 57) ^ 0x4EE1A3DC19B9D153)) ^ (v206 << 23);
  v215 = (v204 + v202) ^ __ROR8__(v199, 28) & 0xFFFFFFFFFFFDFFFFLL ^ v214;
  v216 = v214 ^ v213;
  v217 = v215 & ~v216;
  v218 = v209 & ~v215 ^ v216;
  v219 = v216 & (~(2 * v213) + v213) ^ v209 ^ v211;
  v220 = v215 ^ v211 & ~v209;
  v221 = ((v212 & v213 ^ -(v212 & v213) ^ (v209 - (v212 & v213 ^ v209))) + v209) ^ 0x64ADE1BAEB790508 ^ v220;
  v222 = v220 ^ __ROR8__(__ROR8__(v218, 11) ^ 0x88FFBFEC4B4040A9, 53) ^ 0x6B96B379295964E3;
  v223 = v213 ^ 0x82ABCDAC52312543 ^ v217 ^ v219;
  v224 = v221 << 25;
  v225 = v221 ^ (((*(v519 + ((69 * (v221 >> 61)) ^ 0x68)) + 54) ^ 0x69) - 47) ^ (8 * v221) ^ (v221 >> 39);
  v226 = (v218 - ((2 * v218) & 0x8340D40CC70EA05ELL) + 0x41A06A066387502FLL) ^ 0xB4A2A3669BB0C01BLL;
  v227 = ((v223 >> 10) + v223 - 2 * ((v223 >> 10) & v223)) ^ ((v223 >> 17) | (v223 << 54));
  v228 = v225 + v224 - 2 * (v225 & v224);
  *(&v208 + 1) = v219;
  *&v208 = v219 ^ 0x770298E464E2FFC0;
  v229 = v208 >> 1;
  v230 = v227 & 0x525FA3E58812F4DELL ^ (v223 << 47) & 0x525F800000000000 | v227 & 0xADA05C1A77ED0B21 ^ (v223 << 47) & 0xADA0000000000000;
  *(&v208 + 1) = v219;
  *&v208 = v219 ^ 0x770298E464E2FFC0;
  v231 = v229 ^ v219 ^ 0x770298E464E2FFC0 ^ (v208 >> 6);
  v232 = v226 ^ __ROR8__(v226, 7) ^ (v226 >> 41) ^ (v226 << 23);
  v233 = v228 ^ v231;
  v234 = v227 & 0x200000000000;
  v235 = v222 ^ __ROR8__(v222, 19) ^ (v222 >> 28) ^ (v222 << 36) ^ v232;
  if ((v234 & v232) != 0)
  {
    v234 = -v234;
  }

  v236 = v234 + v232;
  v237 = v236 ^ v230 & 0xFFFFDFFFFFFFFFFFLL;
  v238 = v235 & ~v237;
  v239 = v231 & ~v228;
  if ((v233 & 0x80000000000) != 0)
  {
    v240 = 0xFFFFF80000000000;
  }

  else
  {
    v240 = 0x80000000000;
  }

  v241 = v237 ^ v228 & ~v235;
  v242 = v235 ^ v239;
  v243 = v240 + v233 - ((2 * (v240 + v233)) & 0xFFFFEFFFFFFFFFFFLL) - 0x80000000001;
  v244 = v236 & ~v230 ^ v233;
  v245 = v244 ^ 0x9B8A09540E116771;
  v246 = v242 ^ v228 ^ v243 & v230;
  v247 = ((v242 ^ -v242 ^ ((v241 ^ v242) + v241 - 2 * (v241 ^ v242))) + v241) ^ 0x7E638DBD201A39EALL;
  v248 = ((v246 ^ 0xE37C01731BA39442) >> 61) ^ v246 ^ 0x1BA39442;
  v249 = v238 ^ -v238 ^ -(v238 ^ -v238 ^ (v230 - (v238 ^ v230)));
  v250 = __ROR8__(v241, 53) ^ 0x4ECC6A72E1CB64E0;
  v251 = __ROR8__(v246 ^ 0xE37C01731BA39442, 22) & 0xFFFFFC7FFFFFFFFFLL;
  v252 = v248 << 39;
  v253 = (v247 >> 28) | (v247 << 45);
  v254 = __ROR8__((((v248 & 0x1FFFFFF) << 14) | __ROR8__((v246 ^ 0xE37C01731BA39442) >> 25, 25)) ^ 0x98CF8ACC70C44F60, 39) ^ 0x98E1889EC1319F15;
  if (!v253)
  {
    v254 = (v246 ^ 0xE37C01731BA39442) >> 25;
  }

  v255 = v251 ^ 0x363EEBDE05700211;
  *(&v256 + 1) = v254 ^ v255;
  *&v256 = (v254 | v252) ^ v255;
  v257 = __ROR8__((v256 >> 33) ^ 0xA8001A65BCDA7B75, 31);
  v258 = v249 + v230;
  v259 = v247 ^ (v247 << 36) ^ (v247 >> 19) ^ v253;
  v260 = v244 ^ v258 ^ 0x9206B969C5084AE4;
  v261 = __ROR8__(v250, 11) ^ 0xC4AAD47B34D029E8;
  v262 = v245 ^ __ROR8__(v245, 1) ^ (v245 >> 6);
  v2[47] = v259;
  v263 = v260 ^ (v260 << 47) ^ ((v260 >> 17) ^ (v260 >> 10) | (v260 << 54));
  v264 = ((*(v525 + ((-119 * BYTE1(v259)) ^ 0x3DLL)) - 4) ^ 0x83) - 33;
  *(&v256 + 1) = v257 ^ v246 ^ 0xE37C01731BA39442;
  *&v256 = v257 ^ v246;
  v265 = (v256 >> 39) ^ 0x6AAAE06DB559EC38;
  v2[80] = BYTE2(v259);
  v2[29] = v264;
  if (v137 == v146)
  {
    v266 = 48;
  }

  else
  {
    v266 = v262 ^ 0xCF;
  }

  v267 = v262 & v266;
  v268 = v265 >> (v262 & v266);
  v269 = *(v530 + ((BYTE3(v259) + 37) ^ 0x41));
  v2[100] = BYTE4(v259);
  v2[82] = v265;
  v270 = v261 ^ (v261 << 23) ^ ((v261 >> 7) ^ (v261 >> 41) | (v261 << 57));
  v2[99] = BYTE5(v259);
  v2[27] = HIBYTE(v259);
  v2[42] = BYTE6(v259);
  v2[34] = BYTE5(v265);
  v2[9] = BYTE2(v265);
  v2[96] = BYTE1(v265);
  v2[3] = BYTE3(v265);
  v2[94] = BYTE4(v265);
  *v2 = v269 ^ (BYTE3(v259) + 37) ^ 0xDE;
  v271 = *(v523 + ((53 * (v268 >> (v267 ^ 0x30u))) ^ 0x79));
  v2[81] = BYTE1(v262);
  v2[26] = BYTE2(v262);
  v2[68] = HIBYTE(v265);
  v2[35] = v262;
  v2[6] = (((v271 >> 4) | (16 * v271)) ^ 0x5A) - 1;
  v2[49] = BYTE3(v262);
  v272 = *(v530 + ((BYTE4(v262) + 37) ^ 0x41));
  v2[40] = BYTE6(v262);
  v2[73] = v263;
  v2[55] = BYTE5(v262);
  v2[95] = BYTE1(v263);
  v2[32] = (v262 ^ (v245 << 58)) >> 56;
  v2[21] = BYTE5(v263);
  v2[97] = v272 ^ (BYTE4(v262) + 37) ^ 0xDE;
  v2[18] = (v261 ^ (v261 << 23) ^ (v261 >> 7) ^ (v261 >> 41)) >> 24;
  v2[76] = (v261 ^ (v261 << 23) ^ (v261 >> 7) ^ (v261 >> 41)) >> 16;
  v2[93] = (v261 ^ (v261 >> 7) ^ (v261 >> 41)) >> 8;
  v2[62] = BYTE4(v263);
  v2[28] = BYTE2(v263);
  v2[19] = v261 ^ (v261 >> 7) ^ (v261 >> 41);
  v2[64] = BYTE3(v263);
  v2[61] = HIBYTE(v263);
  v2[37] = BYTE6(v263);
  v273 = *(v519 + ((69 * BYTE4(v270)) ^ 0x68));
  v2[59] = HIBYTE(v270);
  v2[39] = BYTE5(v270);
  v2[91] = BYTE6(v270);
  v2[52] = ((v273 + 54) ^ 0x69) - 47;
  *(v532 + 4) = v531 + 1;
  v274 = ((v2[69] - ((2 * v2[69]) & 0x82)) << 24) + 0x4ACB737941000000;
  v275 = ((v532[31] - 2 * (v532[31] & 1u) + 16926) << 48) - 0x1D000000000000;
  v276 = v532;
  v277 = v2[84] - ((2 * v2[84]) & 0x34) - 0xD48129BA2A357E6;
  v278 = *(v532 - 1);
  v279 = *(&off_1006B4E30 + v533 - 2498) + 1;
  v280 = (v277 ^ 0xD48129BA2A35705) & ((((v2[20] - ((2 * v2[20]) & 0x196)) << 8) + 0x9BFEA6A1A06CB00) ^ 0xBFC637E7A08DAE0FLL) ^ v277 & 0x86000041508AF0;
  v281 = (v2[92] >> 3) | (32 * v2[92]);
  v522 = ((v2[90] - ((2 * v2[90]) & 0x4Eu) + 189) << 56) - 0x1600000000000000;
  v282 = v2[11] ^ v279[v2[11] ^ 0x3CLL] ^ 0xC1;
  v283 = (v274 & 0x4A89204C36000000 ^ 0x6DC905A824770B4 ^ ((((v2[88] - ((2 * v2[88]) & 0x1F0)) << 8) - 0x14F3F12630830800) ^ 0x6A5AD9EA0622038BLL) & (v274 ^ 0xB5348C86BEFFFFAFLL)) & ((v278 - ((2 * v278) & 0xC0) + 0x3D29BB3392D9DD60) ^ 0xC2D644CC6D26229FLL) ^ (v278 - ((2 * v278) & 0xC0) + 0x3D29BB3392D9DD60) & 0x30281812804014C0;
  v284 = *(&off_1006B4E30 + v533 - 2498);
  v520 = v284 + 271;
  LOBYTE(v281) = *(v284 + 271 + ((v281 - ((2 * v281) & 0x9F) - 49) ^ 0xF5));
  v524 = (v275 & 0x2DF2000000000000 ^ 0xA925D652EE6BB55 ^ ((((*(v532 - 12) - 2 * (*(v532 - 12) & 3u) + 625940) << 40) - 0x110000000000) ^ 0x5B809AEEF6BDBB3CLL) & (v275 ^ 0xBDFEFFEEF7FFFBBDLL)) & (v522 ^ 0x58FFFFFFFFFFFFFFLL);
  v285 = ((v282 >> 1) | (v282 << 7)) << 24;
  LOBYTE(v281) = (((v281 ^ 0x58) - 111) ^ ((v281 ^ 0xC6) + 15) ^ ((v281 ^ 0xE2) + 43)) - 22;
  v287 = *(v276 - 7) - ((2 * *(v276 - 7)) & 0x19C) + 0x721C8A83A7CB78CELL;
  v288 = (v287 ^ 0x8D96730448348720) & ((((v2[58] + (~(2 * v2[58]) | 0xFFFFFFFFFFFEC9)) << 8) - 0x7AE3A1EE7F9F6400) ^ 0x588AA5144CFC386ALL) ^ v287 & 0x8008221425C95;
  LOBYTE(v287) = v281 & 0x96 ^ 0x6C;
  v517 = (v281 ^ (2 * ((v281 ^ 0x5C) & (2 * ((v281 ^ 0x5C) & (2 * ((v281 ^ 0x5C) & (2 * ((v281 ^ 0x5C) & (2 * ((v281 ^ 0x5C) & (2 * v287) ^ v287)) ^ v287)) ^ v287)) ^ v287)) ^ v287))) << 32;
  v518 = (v517 ^ 0xFFFFFF69FFFFFFFFLL) & (v285 & 0xCB000000 ^ 0x6D79BD6DE97BDA96 ^ (v280 & 0x774320C1E4183B1ELL ^ 0x76D29402CFED8248 ^ ((((v2[101] - ((2 * v2[101]) & 0x142)) << 16) + 0x302F104EB0A10000) ^ 0xB893CF70AB46C4E1) & (v280 ^ 0x49002272042412EALL)) & (v285 ^ 0xFFFFFFFF03FFFFFFLL));
  v289 = (v288 ^ 0x2275067812210001) & ((((v2[53] - ((2 * v2[53]) & 0x50)) << 16) - 0x6B59B6794AD80000) ^ 0x2760B6307B20A0E7) ^ v288 & 0x4C39004931F75F18;
  v290 = ((v289 ^ 0x31004810210410) & ((((v532[43] - ((2 * v532[43]) & 0x8E)) << 24) + 0x7B8F1E3847000000) ^ 0xD58BD6D55021AFDDLL) ^ v289 & 0x51FB3712E8DE5022) & ((((v532[2] - ((2 * v532[2]) & 0x12Cu) + 1620563656) << 32) - 0x3200000000) ^ 0x9F682969FFFFFFFFLL);
  v291 = v2[63];
  v526 = v279[v2[1] ^ 0x3CLL] ^ v2[1];
  LOBYTE(v270) = v2[89] + 2;
  v292 = v279[v291 ^ 0x3C];
  v293 = v291 & 0x40 ^ 0x77;
  v294 = (v293 - 4) & 0xFFFFFFC1 | 0x2C;
  v295 = (v293 - 4) ^ (2 * (v294 ^ (v293 - 4) & 0x40 ^ ((v293 - 4) ^ 0x4C) & (2 * ((v293 | 8) & (2 * ((v293 | 8) & (2 * ((v293 | 8) & (2 * ((v293 | 8) & (2 * ((2 * v294) & 0xA ^ v294)) ^ v294)) ^ v294)) ^ v294)) ^ v294))));
  LOBYTE(v281) = v270 & 0x72 ^ 0x56;
  v296 = ((v2[85] - ((2 * v2[85]) & 0x1EAu) + 103416) << 40) - 0x30000000000;
  LOBYTE(v270) = v270 ^ (2 * ((v270 ^ 0x54) & (2 * ((v270 ^ 0x54) & (2 * ((v270 ^ 0x54) & (2 * ((v270 ^ 0x54) & (2 * ((v270 ^ 0x54) & (2 * v281) ^ v281)) ^ v281)) ^ v281)) ^ v281)) ^ v281));
  v297 = v290 & 0x1E606F4B98718642 ^ v296 & 0x6F0000000000;
  v298 = (v297 ^ 0x61BF94B4678E79BDLL) & (v296 & 0x900000000000 ^ 0x396A14E0BC28F5DBLL ^ v290 & 0x619F90B4678E79BDLL);
  v513 = v284 + 809;
  LOBYTE(v290) = *(v284 + 809 + (v270 ^ 0x3FLL));
  v516 = v298 | v297 & 0x6006B0B00510200;
  LOBYTE(v270) = ((v290 ^ v270 ^ 0xF0) >> 6) | (4 * (v290 ^ v270 ^ 0xF0));
  v299 = ((v270 ^ 0xB3) + 89) ^ ((v270 ^ 0xC7) + 45) ^ ((v270 ^ 0x77) - 99);
  v514 = ((v276[39] - ((2 * v276[39]) & 0xC0u) + 144) << 56) - 0x3000000000000000;
  v515 = ((((*(v276 - 8) - ((2 * *(v276 - 8)) & 0x7Au) + 12665) << 48) - 0x3C000000000000) ^ 0x3486600000000000) & (v514 ^ 0x9FFFE00000000000);
  v300 = 106 - v293;
  if (((v295 ^ 0xFFFFFF81) & (v292 ^ 0x6A) ^ v295 & 0x6A) == (v292 & 0x84))
  {
    v300 = v293 - 4;
  }

  v301 = v300 + v292;
  v302 = v301 & 0x81 ^ 0xEA;
  v303 = v2[50];
  v304 = (v301 ^ 0x4C) & (2 * ((v301 ^ 0x4C) & (2 * ((v301 ^ 0x4C) & (2 * ((v301 ^ 0x4C) & (2 * ((v301 ^ 0x4C) & (2 * ((v301 ^ 0x4C) & (2 * v301) & 0x1A ^ v302)) ^ v302)) ^ v302)) ^ v302)) ^ v302)) ^ v302;
  v305 = v291 & 0xBF ^ v301;
  v306 = 32 * v303;
  v307 = v303 >> 3;
  v308 = v305 ^ (2 * v304);
  v309 = ((v303 >> 3) ^ 0x7B) & ~(32 * v303) & 0xFFFFE07F | (v303 >> 2 << 7);
  v310 = (v299 + 105) & 0xAC ^ 0x83;
  v311 = (v299 + 105) ^ (2 * (((v299 + 105) ^ 0x2E) & (2 * (((v299 + 105) ^ 0x2E) & (2 * (((v299 + 105) ^ 0x2E) & (2 * (((v299 + 105) ^ 0x2E) & (2 * (((v299 + 105) ^ 0x2E) & (2 * (v310 ^ (2 - v299) & 2)) ^ v310)) ^ v310)) ^ v310)) ^ v310)) ^ v310));
  v312 = 73 - ((v303 >> 3) ^ (((v303 >> 3) ^ 0x2E) + 40) ^ (((v303 >> 3) ^ 0x58) + 82) ^ 0xFFFFFFF6);
  v313 = v312 & 1 | 0x60;
  v314 = ((v308 ^ 0x21) >> 1) | ((v308 ^ 0x21) << 7);
  v315 = (v306 ^ ((v306 ^ 0x50) + 39) ^ ((v306 ^ 0x31) + 72) ^ 0x79) - (((v309 ^ 0xFFFFFFE8) - 31) ^ ((v309 ^ 0x46) + 79) ^ ((v309 ^ 0xFFFFFFD5) - 34)) + 3;
  v316 = v315 & 0xFFFFFFB0 ^ 0xFFFFFFEF;
  v317 = v312 ^ v307 ^ v315 ^ (2 * (v316 ^ v313 ^ (v312 ^ 0x40) & (2 * (v312 & (2 * (v312 & (2 * (v312 & (2 * (v312 & (2 * (((2 * (v312 & 1)) | 1) & v312)) | v313)) ^ v313)) ^ v313)) ^ v313)) ^ (v315 ^ 0x7A) & (2 * ((v315 ^ 0x7A) & (2 * ((v315 ^ 0x7A) & (2 * ((v315 ^ 0x7A) & (2 * ((v315 ^ 0x7A) & (2 * ((v315 ^ 0x7A) & 0xA ^ v316)) ^ v316)) ^ v316)) ^ v316)) ^ v316))));
  v286 = v2[102] - ((2 * v2[102]) & 0x1EC);
  v318 = ((v311 << 16) ^ 0xF9FBEFFF5B52FFFFLL) & ((v286 - 0x4074195ACE62030ALL) & 0x80042000000042ELL ^ 0xE1E9AC53412ECF91 ^ (((((v526 ^ 0xCD) >> 1) | ((v526 ^ 0xCD) << 7)) << 8) ^ 0xF1FAA5AD5BD271D1) & ((v286 - 0x4074195ACE62030ALL) ^ 0x4271110ACA4F030FLL)) ^ (v311 << 16) & 0x30000;
  v319 = (((v306 ^ 0x21) + 88) ^ ((v306 ^ 0x56) + 33) ^ ((v306 ^ 0x77) + 2)) + (((v317 ^ 0xFFFFFFD3) + 51) ^ ((v317 ^ 0x52) - 76) ^ ((v317 ^ 0xFFFFFFB0) + 82)) + 28;
  v320 = v319 & 0x78 ^ 0x76;
  HIDWORD(v321) = v317;
  LODWORD(v321) = (((v319 ^ 0x1C) & (2 * ((v319 ^ 0x1C) & (2 * ((v319 ^ 0x1C) & (2 * ((v319 ^ 0x1C) & (2 * ((v319 ^ 0x1C) & (2 * v320) ^ v320)) ^ v320)) ^ v320)) ^ v320)) ^ v320) << 25) ^ (v319 << 24);
  v322 = (v318 ^ 0x61640001E5021091) & ((((v2[79] + (~(2 * v2[79]) | 0xFFFFFFFE71)) << 24) - 0x218B5A2C38000000) ^ 0xA712A758175A10B7) ^ v318 & 0x8099ED740BA5EF48;
  v323 = *(v284 + 538 + ((((v321 >> 26) >> 6) | (4 * (v321 >> 26))) ^ 0xB2)) + 67;
  LODWORD(v318) = v323 & 0x13 ^ 0x45;
  v324 = (2 * (((2 * (((2 * v323) & 0x16 | 9) & v323)) | 9) & v323)) ^ 0xFFFFFF9A;
  v325 = (v318 & 0xFFFFFFF7 | (8 * ((((v324 & 8 | v318) ^ v324 & v323) >> 2) & 1))) ^ v323 & (2 * ((v324 & 8 | v318) ^ v324 & v323));
  v326 = (v318 & 0xFFFFFFF7 | (8 * ((v325 >> 2) & 1))) ^ v323 & (2 * v325);
  LOBYTE(v323) = v323 ^ (2 * ((v318 & 0xF7 | (8 * ((v326 & 4) != 0))) ^ v323 & (2 * v326))) ^ 0xBE;
  LODWORD(v318) = v2[13] ^ 0x13 ^ v279[v2[13] ^ 0x3CLL];
  LODWORD(v318) = ((v318 >> 3) | (32 * v318)) ^ 0x6F;
  LODWORD(v318) = ((v318 >> 2) | (v318 << 6)) ^ 0x68;
  LOBYTE(v320) = v323 ^ (4 * v323) ^ (2 * v323);
  v327 = ((v318 >> 6) | (4 * v318)) ^ 0x38;
  LODWORD(v318) = (v327 >> 5) | (8 * v327);
  v328 = v318 ^ 0xFFFFFFD5;
  LOBYTE(v312) = ((v320 ^ 0x41) + 110) ^ ((v320 ^ 0xB7) - 100) ^ ((v320 ^ 0xAA) - 121);
  v329 = (v318 ^ 0xD5) >> 1;
  LODWORD(v318) = (v329 ^ 0xFFFFFF89) + 109;
  v330 = v312 + 106;
  LOBYTE(v312) = ((-107 - v312) & 0xA0 | 0x43) ^ (v312 + 106) & 0xC6;
  LOBYTE(v312) = v330 ^ (2 * ((v330 ^ 0x20) & (2 * ((v330 ^ 0x20) & (2 * ((v330 ^ 0x20) & (2 * ((v330 ^ 0x20) & (2 * ((v330 ^ 0x20) & (2 * (v330 & (2 * v312) ^ v312)) ^ v312)) ^ v312)) ^ v312)) ^ v312)) ^ v312));
  v331 = (((v329 ^ 0x1E) + 4) ^ ((v329 ^ 8) + 22) ^ ((v329 ^ 0xFFFFFFBC) - 94)) + (((v329 ^ 0x6F) - 117) ^ ((v329 ^ 0xFFFFFFC2) + 40) ^ v318) - (((v328 & 0xFFFFFFFE ^ 0x18) - 127) ^ ((v328 & 0xFFFFFFFE ^ 0xFFFFFFDB) + 68) ^ ((v328 & 0xFFFFFFFE ^ 0xFFFFFF97) + 16));
  v332 = v331 - 100;
  v333 = v331 & 2 ^ (v331 - 100) & 0xFFFFFFB7 ^ 3;
  v334 = v332 ^ (2 * ((v332 ^ 0x36) & (2 * ((v332 ^ 0x36) & (2 * ((v332 ^ 0x36) & (2 * ((v332 ^ 0x36) & (2 * ((v332 ^ 0x36) & (2 * (((2 * (v332 & 0xFFFFFFB7)) ^ 2) & (v332 ^ 0x26) ^ v333)) ^ v333)) ^ v333)) ^ v333)) ^ v333)) ^ v333));
  LOBYTE(v332) = v2[45] - 12;
  v335 = v332 & 0xC4 | 0x30;
  LOBYTE(v286) = v332 ^ (2 * ((v332 ^ 0x64) & (2 * ((v332 ^ 0x64) & (2 * ((v332 ^ 0x64) & (2 * ((v332 ^ 0x64) & (2 * v335) ^ v335)) ^ v335)) ^ v335)) ^ v335));
  LODWORD(v318) = (((v329 ^ 0x2B) - 49) ^ ((v329 ^ 0xFFFFFF86) + 100) ^ v318) + (((v334 ^ 0x28) - 79) ^ ((v334 ^ 0x78) - 31) ^ ((v334 ^ 0x19) - 126)) - 83;
  v336 = v318 & 0x2F ^ 0x58;
  LOBYTE(v327) = v2[25] ^ 0x35 ^ v279[v2[25] ^ 0x3CLL];
  v337 = v322 & 0x74CFCDADA6B8C3F4 ^ (((v2[41] - ((2 * v2[41]) & 0x1B0u) + 13912583) << 40) - 0x2F0000000000) ^ (((v314 ^ 0x75u) << 32) ^ 0x8B30324B59473C0BLL) & (v322 ^ 0x8200300001012C08) ^ (v312 << 48);
  LOBYTE(v322) = (v327 >> 1) | (v327 << 7);
  v338 = (v318 ^ ((v328 << 7) | 0x50) ^ (2 * ((v318 ^ 0x3E) & (2 * ((v318 ^ 0x3E) & (2 * ((v318 ^ 0x3E) & (2 * ((v318 ^ 0x3E) & (2 * ((v318 ^ 0x3E) & (2 * ((v318 ^ 0x3E) & (2 * v318) ^ v336)) ^ v336)) ^ v336)) ^ v336)) ^ v336)) ^ v336))) << 56;
  v339 = (v338 ^ 0x12F6B6359664D93CLL) & (v337 ^ 0x2F50A3BDF3EC587ELL) ^ v337 & 0x63F6B6359664D93CLL;
  v340 = ((v338 ^ 0xB736A5615FA55ED2) - 0x762438DA289D468) ^ ((v338 ^ 0x2D7B24275E1531F4) + 0x62D03D345CC644B2) ^ ((v338 ^ 0xEB4D814601B06F26) - 0x5B1967AAFC9CE59CLL);
  v341 = v286 ^ 0x29;
  v342 = (((v286 ^ 0x1CE02F5F) + 978582945) ^ ((v286 ^ 0x4A3B18AA) + 1820904022) ^ ((v286 ^ 0x56DB377C) + 1885922692)) - ((((2 * v341) ^ 0x579057EB) - 34116764) ^ (((2 * v341) ^ 0x32E0FE63) - 1735933204) ^ (((2 * v341) ^ 0x6570A8C8) - 820538303)) - 2073001906;
  LODWORD(v338) = (v342 ^ 0xFE22CB87) & (2 * (v342 & 0xFF42EBA7)) ^ v342 & 0xFF42EBA7;
  v343 = ((2 * (v342 ^ 0x24A7CA89)) ^ 0xB7CA425C) & (v342 ^ 0x24A7CA89) ^ (2 * (v342 ^ 0x24A7CA89)) & 0x5BE5212E;
  LODWORD(v338) = (v343 ^ 0x9300000C) & (4 * v338) ^ v338;
  v344 = ((4 * (v343 ^ 0x48252122)) ^ 0x6F9484B8) & (v343 ^ 0x48252122) ^ (4 * (v343 ^ 0x48252122)) & 0xDBE5212C;
  LODWORD(v338) = (v344 ^ 0x4B840020) & (16 * v338) ^ v338;
  v345 = ((16 * (v344 ^ 0x90612106)) ^ 0xBE5212E0) & (v344 ^ 0x90612106) ^ (16 * (v344 ^ 0x90612106)) & 0xDBE52120;
  LODWORD(v338) = v338 ^ 0xDBE5212E ^ (v345 ^ 0x9A400000) & (v338 << 8);
  LODWORD(v338) = (v338 << 16) & 0x5BE50000 ^ v338 ^ ((v338 << 16) ^ 0x212E0000) & (((v345 ^ 0x41A5210E) << 8) & 0x5BE50000 ^ 0x1AC40000 ^ (((v345 ^ 0x41A5210E) << 8) ^ 0x65210000) & (v345 ^ 0x41A5210E));
  v346 = (((v337 ^ 0xC5303C80F2D7206BLL) - 0x61F7DC00F8561F2FLL) ^ ((v337 ^ 0xBCE6BEFF2A2B92F5) - 0x18215E7F20AAADB1) ^ ((v337 ^ 0x568E21800303CE61) + 0xDB63EFFF67D0EDBLL)) + v340 - ((((2 * v339) ^ 0x539F570FD195A16ALL) + 0x68CD848EF1811C4CLL) ^ (((2 * v339) ^ 0x6D3822D1792E3570) + 0x566AF150593A8852) ^ (((2 * v339) ^ 0x780631B58C732462) + 0x4354E234AC679944)) - 0x21E080812B541FCALL;
  v347 = (v346 ^ 0xEC874297FE9AF3D8) & (2 * (v346 & 0xECC842D7FEDAFB99)) ^ v346 & 0xECC842D7FEDAFB99;
  v348 = ((2 * (v346 ^ 0xF597431B8A0E44C8)) ^ 0x32BE0398E9A97EA2) & (v346 ^ 0xF597431B8A0E44C8) ^ (2 * (v346 ^ 0xF597431B8A0E44C8)) & 0x195F01CC74D4BF50;
  v349 = (v348 ^ 0x1002018860803E00) & (4 * v347) ^ v347;
  v350 = ((4 * (v348 ^ 0x941004414548151)) ^ 0x657C0731D352FD44) & (v348 ^ 0x941004414548151) ^ (4 * (v348 ^ 0x941004414548151)) & 0x195F01CC74D4BF50;
  v351 = (v350 ^ 0x15C01005050BD40) & (16 * v349) ^ v349;
  v352 = ((16 * (v350 ^ 0x180300CC24840211)) ^ 0x95F01CC74D4BF510) & (v350 ^ 0x180300CC24840211) ^ (16 * (v350 ^ 0x180300CC24840211)) & 0x195F01CC74D4BF50;
  v353 = (v352 ^ 0x115000C44440B500) & (v351 << 8) ^ v351;
  v354 = (((v352 ^ 0x80F010830940A41) << 8) ^ 0x5F01CC74D4BF5100) & (v352 ^ 0x80F010830940A41) ^ ((v352 ^ 0x80F010830940A41) << 8) & 0x195F01CC74D4BF00;
  v355 = v353 ^ 0x195F01CC74D4BF51 ^ (v354 ^ 0x1901004454940000) & (v353 << 16);
  v356 = v346 ^ (2 * ((v355 << 32) & 0x195F01CC00000000 ^ v355 ^ ((v355 << 32) ^ 0x74D4BF5100000000) & (((v354 ^ 0x5E01882040AE51) << 16) & 0x195F01CC00000000 ^ 0x1813010800000000 ^ (((v354 ^ 0x5E01882040AE51) << 16) ^ 0x1CC74D400000000) & (v354 ^ 0x5E01882040AE51))));
  LODWORD(v355) = -166925432 - (((v286 ^ 0x5AA0C9E) - 1315717000) ^ ((v286 ^ 0xB5B265F3) + 25930011) ^ ((v286 ^ 0xB0186947) + 69313967));
  LODWORD(v338) = v355 ^ v341 ^ ((v355 ^ 0x1E9844F8) - 1598773820) ^ ((v355 ^ 0x33E86B2) - 1122867318) ^ ((v355 ^ 0xA3882271) + 497337163) ^ ((v355 ^ 0xFFFDFEFF) + 1104224197) ^ v342 ^ (2 * v338);
  v357 = v2[24] - ((2 * v2[24]) & 0xF0) + 0x61FFC8EDF0EDC678;
  v358 = (v357 ^ 0x60027120C123982) & ((v322 << 8) ^ 0x2784AF3E8CB3EDD2);
  LOBYTE(v338) = *(v513 + (((v338 ^ 0xB42AF6F3) - 866732429) ^ ((v338 ^ 0xD04B8FA0) - 1472737502) ^ ((v338 ^ 0x6F72CE6F) + 386830063)) - 1936717595) ^ v286 ^ 0x86;
  LODWORD(v354) = ((v2[71] - ((2 * v2[71]) & 0x168)) << 16) + 330563584;
  v359 = v358 ^ v357 & 0x401100014044042DLL;
  v360 = (v359 & 0x4215 ^ 0x8DBC98D1C75D052FLL) & (v354 & 0x4D0000 ^ 0x8DBC98D1C750473FLL) | v358 & 0x1040;
  LOBYTE(v336) = (v338 >> 6) | (4 * v338);
  v361 = *(v532 + 3);
  v362 = (v361 - ((2 * v361) & 0x1075BF08) - 0x1E8AFBA7F7C5207CLL) ^ (((v2[87] - ((2 * v2[87]) & 0x86u) + 45396) << 48) - 0x11000000000000) ^ (((v2[12] - ((2 * v2[12]) & 0x1CCu) + 8674580) << 40) - 0x2E0000000000) ^ (v517 & 0x2F00000000 | 0x209090008144816) ^ v518 ^ 0x73371D8E154722B3;
  v363 = (v362 - ((2 * v362) & 0x5967BB7086B6802ALL) + 0x6CB3DDB8435B4015) ^ (((v2[83] - ((2 * v2[83]) & 0x36u) + 205) << 56) - 0x3200000000000000);
  v364 = v360 ^ 0x8DBC98D1C754477FLL | ((v359 | 0x4BB210A452BE4014) & (v354 & 0xB20000 ^ 0x4BB210A4528C4D9ELL) | v359 & 0xA020) ^ 0x4BB210A4523C6DBELL;
  *(&v366 + 1) = v337 ^ 0xA3FFDBFF7CFFLL;
  *&v366 = v356 ^ 0xFED8000000000000;
  v365 = v366 >> 51;
  v367 = ((((v2[31] - ((2 * v2[31]) & 0xC6)) << 24) + 0x29B2C2B663000000) ^ 0x771AA92742F79197) & ~v364 | v364 & 0x86E68;
  v368 = v367 & 0xC0356464BEEA2D6CLL ^ 0x7FEAFB9B61F7D397 ^ (v367 ^ 0xA157946E40004200) & ((((v2[17] - ((2 * v2[17]) & 0x42u) + 1697391454) << 32) - 0x3D00000000) ^ 0x5AE6B8BA4115D293);
  v369 = (v368 + (v336 << 40)) ^ ((v2[103] << 56) | (((*(v520 + (((v2[22] >> 3) | (32 * v2[22])) ^ 0x3ALL)) ^ 0x7C) + 125) << 48));
  v370 = v356 ^ (v369 - 2 * (v369 & 0x6124A5C3912E895FLL ^ v368 & 0x10) - 0x1EDB5A3C6ED176B1);
  v371 = v524 ^ v522 & 0xA700000000000000 ^ ((v283 ^ 0x2D480CC34A62080) & ((((*v532 - ((2 * *v532) & 0x17C)) << 16) - 0x64A4E58518420000) ^ 0x8D9D5CBE2957B0CCLL) ^ v283 & 0xE939B93B31164F33) & 0xA5D939687D738F3DLL ^ ((v283 ^ 0x2D480CC34A62080) & ((((*v532 - ((2 * *v532) & 0x17C)) << 16) - 0x64A4E58518420000) ^ 0x8D9D5CBE2957B0CCLL) ^ v283 & 0xE939B93B31164F33 ^ 0x10800800044000) & ((((v2[38] - ((2 * v2[38]) & 0x70u) - 1397474979) << 32) - 0x2500000000) ^ 0xF692FFAF828C70C2) ^ (v369 - ((2 * v369) & 0xBA7CA7BA0B25CFEELL) + 0x5D3E53DD0592E7F7);
  *(&v366 + 1) = v362 ^ v516;
  *&v366 = v514 & 0xFA00000000000000 ^ v515 ^ v516 ^ 0xF7B3C00000000000 ^ v363;
  v372 = v365 ^ 0x600029976D1BE69CLL;
  *&v366 = __ROR8__((v366 >> 45) ^ 0x85211A498FE2457BLL, 19);
  v373 = v366 ^ 0x2A90928CDF2AEAFALL;
  v374 = v366 ^ 0xB3E1F6A7335A026ELL;
  v375 = (v366 ^ 0xB3E1F6A7335A026ELL) - (v366 ^ 0xD56F6D7320D51505);
  v376 = v371 ^ (v366 ^ 0x2A90928CDF2AEAFALL) & (v363 ^ 0x43647ED5D1DF7041);
  *&v366 = __ROR8__(v372, 13);
  v377 = v370 ^ (v371 ^ 0xC77D5D5383AF453) & (v363 ^ 0xBC9B812A2E208FBELL);
  v378 = (v366 ^ 0xA9FCDD9CD97451E0) & ((v375 ^ 0xFFFFFFFFFFFFFFFELL) + v374);
  v379 = v376 ^ 0x543F9EB75A985521 ^ v377 ^ 0xB69D107F4118E018;
  v380 = v363 ^ v376 ^ 0x58FF5CA9BA7527D1 ^ v378;
  v381 = (v370 ^ 0x4962EF80BEE71FE7) & (v371 ^ 0xF3882A2AC7C50BACLL);
  v382 = (v366 ^ 0x56032263268BAE1FLL) & (v370 ^ 0xB69D107F4118E018) ^ v373;
  v383 = v382 ^ 0x10674643B76E819ELL;
  LOBYTE(v373) = *(v284 + 538 + ((32 * (v380 >> 61)) ^ 0xCB)) - 52;
  v384 = v381 ^ v366 ^ 0xA9FCDD9CD97451E0 ^ 0xD2419DF6FF359CA9 ^ v382;
  v385 = v380 << 25;
  v386 = (((v377 ^ 0xB69D107F4118E018) - (v377 ^ 0xE40A7773A38EFDBDLL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v377 ^ 0xB69D107F4118E018);
  v387 = ((v382 ^ 0x10674643B76E819ELL) >> 6) | (v382 << 63);
  v388 = v380 ^ ((v373 ^ (4 * v373) ^ (2 * v373) ^ 0x1F) + 123) ^ (8 * v380) ^ (v380 >> 39);
  v389 = (v386 << 57) | 0x3DAEBD79EEBFDCB8;
  v390 = v384 ^ (v384 << 47) ^ ((v384 >> 10) ^ (v384 >> 17) | (v384 << 54));
  v391 = ((~v389 + (v386 << 57)) ^ ((v386 << 57) | 0xC251428611402347) ^ (((v386 << 57) | 0xC251428611402347) + 1)) + v389;
  if (!(v379 >> 28))
  {
    v391 = (v386 << 57) | 0xC251428611402347;
  }

  v392 = (v385 ^ -v385 ^ (v388 - (v388 ^ v385))) + v388;
  v393 = v383 ^ (v383 << 58) ^ (v383 >> 1) ^ v387;
  v394 = v392 ^ v393;
  v395 = (((v386 >> 41) ^ -(v386 >> 41) ^ ((v386 ^ (v386 >> 7)) - (v386 ^ (v386 >> 7) ^ (v386 >> 41)))) + (v386 ^ (v386 >> 7))) ^ (v386 << 23) ^ v391 & v389;
  v396 = (((v379 << 36) ^ (v379 << 45)) & 0xFFFFFFF000000000 | (v379 >> 28)) ^ __ROR8__(__ROR8__((v379 >> (v314 & 0x13) >> (v314 & 0x13 ^ 0x13u)) ^ v379, 23) ^ 0x9E5CC3727235CB0ALL, 41) ^ v395;
  v397 = v392 & (v396 ^ 0x46C6E51A7AB0D19ELL);
  v396 ^= 0xB9391AE5854F2E61;
  v398 = v396 ^ v393 & ~v392;
  v399 = v397 ^ v395 ^ v390;
  v400 = v398 ^ v392 ^ ((v394 ^ v390) + (v390 | ~v394) + 1);
  v401 = v396 & ~(v395 ^ v390);
  v402 = v394 ^ v395 & ~v390;
  v403 = ((v398 ^ -v398 ^ (v399 - (v399 ^ v398))) + v399) ^ 0xE83D9ED516E369C5;
  v404 = (v402 ^ 0xA1FDF52D9AF9F061) << 58;
  v405 = v390 ^ 0x776FAB65F4A9803ALL ^ v401 ^ v402;
  v406 = v404 & 0xA400000000000000;
  v407 = ((v402 ^ 0xA1FDF52D9AF9F061 ^ ((v402 ^ 0xA1FDF52D9AF9F061) >> 1)) + ((v402 ^ 0xA1FDF52D9AF9F061) << 63)) ^ ((v402 ^ 0xA1FDF52D9AF9F061) >> 6);
  v408 = v404 & 0x5800000000000000;
  v409 = v407 & 0x5B9B91EC46377FD1;
  v410 = v400 ^ 0xC8962A0BF24E1AE0 ^ (v400 >> 39) ^ (8 * (v400 ^ 0xC8962A0BF24E1AE0)) ^ ((v400 ^ 0xC8962A0BF24E1AE0) >> 61) ^ ((v400 ^ 0xC8962A0BF24E1AE0) << 25);
  v411 = v410 ^ 0x1912C54;
  v412 = v407 & 0xA4646E13B9C8802ELL ^ v406;
  v413 = v405 ^ __ROR8__(v405, 10) ^ (v405 >> 17);
  v414 = v409 ^ v408;
  v415 = v413 ^ (v405 << 47);
  v416 = v414 | v412;
  v417 = v399 ^ 0x917AAA3CD96CD60ELL ^ __ROR8__(v399 ^ 0x917AAA3CD96CD60ELL, 7) ^ ((v399 ^ 0x917AAA3CD96CD60ELL) << 23) ^ ((v399 ^ 0x917AAA3CD96CD60ELL) >> 41);
  v418 = v403 ^ v417 ^ __ROR8__(v403, 19) ^ (v403 >> 28) ^ (v403 << 36);
  v419 = v410 ^ 0x1912C54 ^ v416;
  v420 = v419 | v410 ^ 0xFFFFFFFFFE6ED3ABLL;
  v421 = (((v413 ^ ~(v405 << 47)) - v415) ^ 0xFFFFFFFFFFFFFFFELL) + (v413 ^ ~(v405 << 47));
  v422 = v418 ^ v416;
  v423 = v422 ^ v420;
  v424 = v422 ^ ~v420;
  v425 = (~(2 * v418) + v418) & v411;
  v426 = v415 ^ v417;
  v427 = v418 & ~v426;
  v428 = v421 ^ v426;
  if (v526 == 56)
  {
    v428 = ~v415;
  }

  v429 = v428 & v426;
  v430 = v425 ^ v426;
  v431 = v419 ^ v429;
  v432 = (v415 & ~v419 ^ v411 ^ -(v415 & ~v419 ^ v411) ^ ((v423 ^ v415 & ~v419 ^ v411) - v423)) + v424;
  v433 = v430 ^ v423 ^ 0x674880EF4E4561C9;
  v434 = (v432 & 0x80000000 | 0xE2E4CD6B12D4B3B0) ^ v432 & 0xFFFFFFFF7FFFFFFFLL;
  v435 = __ROR8__(v427 ^ v415, 16) ^ 0x37E3F87D8EF59184;
  v436 = (v434 >> 61) - ((v434 >> 60) & 0xC) + 54;
  v437 = v436 ^ *(v513 + (v436 ^ 0xA3));
  v438 = v433 << 36;
  if ((v431 & 0x200000000000000) != 0)
  {
    v439 = 0xFE00000000000000;
  }

  else
  {
    v439 = 0x200000000000000;
  }

  v440 = (v439 + v431) ^ 0x3118D22A1B3BD713;
  v441 = v431 ^ __ROR8__(v435, 48) ^ 0xAFA920FEFA29CC3BLL;
  v442 = v430 ^ 0xD9321B1807A54237;
  v443 = v440 ^ __ROR8__(v440, 1) ^ (v440 >> 6) ^ (v440 << 58);
  v444 = v434 ^ (v434 >> 39) ^ (8 * v434) ^ (v434 << 25) ^ ((v437 >> 6) | (4 * v437)) ^ 0xB2u;
  *(&v445 + 1) = v430;
  *&v445 = v430 ^ 0xD9321B1807A54237;
  v446 = (v445 >> 7) ^ v430 ^ 0xD9321B1807A54237;
  v447 = v441 ^ __ROR8__(v441, 10) ^ (v441 >> 17) ^ (v441 << 47);
  v448 = v446 ^ __ROR8__(v442, 41) ^ 0x6E00000000000000;
  v449 = v447 ^ v448;
  v450 = v433 ^ __ROR8__(v433, 19) ^ (v433 >> 28) ^ v438 ^ v448;
  v451 = ((v444 - (v444 ^ v443)) ^ __ROR8__(__ROR8__(v443 ^ -v443, 58) ^ 0xA0266D85940830D7, 6) ^ 0x5E8099B6165020C3) + v444;
  v452 = v448 & ~v447;
  if (v446 == 0x6E00000000000000)
  {
    v453 = v451;
  }

  else
  {
    v453 = (((v451 ^ ~v444) - (v451 ^ v444)) ^ 0xFFFFFFFFFFFFFFFELL) + (v451 ^ ~v444);
  }

  v454 = v453 & ~v444 ^ v450;
  v455 = v447 & ~v451;
  v456 = __ROR8__(v451 ^ v452, 45) ^ 0xEAEA523628CADACALL;
  v457 = v444 & ~v450 ^ v449;
  if (v438)
  {
    v458 = v457 ^ 0x67287F0C7BE7D698;
  }

  else
  {
    v458 = 0x98D780F384182967;
  }

  v459 = __ROR8__(v456, 19);
  v460 = v455 ^ v444 ^ v454;
  *(&v461 + 1) = v460 ^ 0x8CEE1D69D550E5FLL;
  *&v461 = v460;
  v462 = v457 - 0x67287F0C7BE7D699 + 2 * (v458 & v457) - 4 * (v458 & v457);
  v463 = (v459 ^ 0x28BE68937661C41BLL) << 58;
  v464 = v447 ^ v450 & ~v449 ^ 0x1C9F3D0BA6640A8CLL ^ v459;
  v465 = (v461 >> 61) ^ v460 ^ 0x8CEE1D69D550E5FLL ^ ((v460 ^ 0x8CEE1D69D550E5FuLL) >> 39) ^ ((v460 ^ 0x8CEE1D69D550E5FLL) << 25);
  v466 = v459 ^ 0x28BE68937661C41BLL ^ __ROR8__(v459 ^ 0x28BE68937661C41BLL, 1) ^ ((v459 ^ 0x28BE68937661C41BuLL) >> 6);
  v467 = v462 ^ (v462 << 23) ^ (v462 << 57) ^ (v462 >> 7) ^ (v462 >> 41);
  v468 = v457 ^ 0xDE1CA53CC441A02 ^ v454 ^ __ROR8__(v457 ^ 0xDE1CA53CC441A02 ^ v454, 19) ^ ((v457 ^ 0xDE1CA53CC441A02 ^ v454) >> 28) ^ ((v457 ^ 0xDE1CA53CC441A02 ^ v454) << 36) ^ v467;
  v469 = (v463 ^ -v463 ^ (v466 - (v466 ^ v463))) + v466;
  v470 = v464 ^ __ROR8__(v464, 10) ^ (v464 >> 17) ^ (v464 << 47);
  v471 = v465 & ~v468;
  v472 = v471 & 0x20000000000000;
  v473 = v469 ^ v465;
  v474 = v470 ^ v467;
  v475 = v469 ^ v465 | ~v470;
  v476 = v471 & 0xFFDFFFFFFFFFFFFFLL;
  v477 = v469 & ~v465 ^ v468;
  if ((v472 & (v470 ^ v467)) != 0)
  {
    v472 = -v472;
  }

  v478 = v465 ^ ~v475 ^ v477;
  v479 = (v472 + v474) ^ v476;
  v480 = v477 ^ 0x9669D1232B5C28A4 ^ v479;
  v481 = v473 ^ v467 & ~v470;
  v482 = __ROR8__(__ROR8__(__ROR8__(v478, 39) ^ 0x48A1BB5E1D5E1C06, 15) ^ 0x4C5B213B48609D75, 10) ^ 0x96F0F456F576B221;
  v483 = v470 ^ 0x82ABCDAC52312543 ^ v468 & ~v474 ^ v481;
  v484 = v483 ^ __ROR8__(v483, 10) ^ (v483 >> 17) ^ (v483 << 47);
  v485 = (8 * v482) ^ (v482 >> 39) ^ (v482 << 25) ^ ((v482 >> 61) + v482 - 2 * ((v482 >> 61) & v482));
  v486 = v479 ^ 0xF502C960F8379034 ^ __ROR8__(v479 ^ 0xF502C960F8379034, 41) ^ ((v479 ^ 0xF502C960F8379034) << 57) ^ ((v479 ^ 0xF502C960F8379034) >> 7);
  *(&v487 + 1) = v481;
  *&v487 = v481 + 0x770298E464E2FFC0 - ((2 * v481) & 0xEE0531C8C9C5FF80);
  v488 = (2 * (v487 ^ (v487 >> 1)) - (v487 ^ (v487 >> 1) ^ (v481 << 63))) ^ (v487 >> 6);
  v489 = v485 ^ v488;
  v490 = v480 ^ (v480 << 36) ^ ((v480 >> 19) ^ (v480 >> 28) | (v480 << 45)) ^ v486;
  v491 = v485 & ~v490 ^ v486 ^ v484;
  v492 = v488 & ~v485 ^ v490;
  v493 = v489 ^ v486 & ~v484;
  v494 = v485 ^ v484 & ~v489 ^ v492 ^ 0x46E4A679C9EBE44CLL;
  v495 = v484 ^ v490 & ~(v486 ^ v484) ^ 0x5F4353815836A37FLL ^ v493;
  *(&v487 + 1) = v492 ^ v491 ^ 0xAE0A4CFAF4BC990DLL;
  *&v487 = v492 ^ v491;
  v496 = v487 >> 19;
  v497 = *(&v487 + 1) ^ __ROR8__(*(&v487 + 1), 28);
  *(&v487 + 1) = v493;
  *&v487 = v493 ^ 0xF3E8F9C9C239B274;
  v498 = v487 >> 1;
  v499 = v497 ^ v496;
  *&v487 = __ROR8__(__ROR8__(v495, 29) & 0xFFFFE007FFFFFFFFLL ^ __ROR8__(v495, 19) ^ 0x942A3D47BF77E35FLL, 45);
  v500 = v491 ^ 0x5120D79A612A4FBCLL;
  v501 = v487 - ((2 * v487) & 0xD47BF77E35F942A2);
  v502 = v493 ^ __ROR8__(v493, 6) ^ v498;
  *(v532 - 1) = v499 ^ 0xD1;
  v503 = ((v491 ^ 0x5120D79A612A4FBCLL) >> 7) & 0x8BC4D61ADC3676 ^ v491 & 0x288BC4D61ADC3676 | ((v491 ^ 0x5120D79A612A4FBCLL) >> 7) & 0x1743B29E523C989;
  v504 = *(v284 + 538 + (((v499 >> 3) & 0xE0 | (v499 >> 11)) ^ 9)) - 52;
  v2[38] = BYTE4(v499) ^ 0x47;
  v2[69] = BYTE3(v499) ^ 0xD5;
  v2[88] = (v504 ^ (4 * v504) ^ (2 * v504) ^ 0x1F) + 123;
  *v532 = BYTE2(v499) ^ 0x21;
  v505 = v494 ^ __ROR8__(v494, 61) ^ (v494 >> 39);
  v506 = v505 ^ (v494 << 25);
  v507 = *(v520 + ((((v499 >> 35) & 0xE0 ^ 0x6E3BF28D11102E4ALL) & ((v499 >> 43) & 0x1F ^ 0x7FFBF7ED3B173FFBLL) | (v499 >> 43) & 0x15) ^ 0x6E3BF28D11102E61));
  v532[31] = BYTE6(v499) ^ 0xE;
  v2[20] = BYTE1(v505);
  v2[84] = v505;
  v2[101] = BYTE2(v505);
  v2[90] = HIBYTE(v499) ^ 0x1A;
  *(v532 - 12) = (((v507 ^ 0xC6) + 46) ^ ((v507 ^ 0x2C) - 56) ^ ((v507 ^ 0x96) + 126)) - 27;
  v2[12] = BYTE5(v506);
  v2[83] = HIBYTE(v506);
  v508 = (((v502 ^ 0x26) + 68) ^ ((v502 ^ 0xE2) - 120) ^ ((v502 ^ 0x79) + 29)) + 43;
  if ((v502 & 4) == 0)
  {
    v508 = (((v502 ^ 0x86) + 35) ^ ((v502 ^ 0x77) - 44) ^ ((v502 ^ 0x4C) - 23)) - 30;
  }

  *(v532 - 7) = v508 ^ 4;
  v532[39] = HIBYTE(v502) ^ 0x20;
  v2[87] = BYTE6(v506);
  v2[11] = BYTE3(v506);
  v2[92] = BYTE4(v506);
  v509 = ((v501 - 0x15C20440E5035EAFLL) ^ (v495 << 54) ^ -((v501 - 0x15C20440E5035EAFLL) ^ (v495 << 54)) ^ ((v495 >> 17) - ((v501 - 0x15C20440E5035EAFLL) ^ (v495 << 54) ^ (v495 >> 17)))) + (v495 >> 17);
  v2[58] = BYTE1(v502) ^ 0x54;
  v532[43] = BYTE3(v502) ^ 0xE5;
  v2[63] = BYTE4(v509);
  v2[85] = BYTE5(v502) ^ 0x5A;
  *(v532 - 8) = BYTE6(v502) ^ 0x27;
  v532[2] = BYTE4(v502) ^ 0x2E;
  v2[53] = BYTE2(v502) ^ 0x31;
  v2[89] = BYTE2(v509);
  v510 = v509 ^ (v495 << 47);
  v511 = ((v503 ^ (v500 & 0xD7743B29E523C989 | 0xC49200080634)) & 0xB07DF1A0D5A3031FLL ^ (v500 << 57) & 0xB000000000000000 | (v503 ^ (v500 & 0xD7743B29E523C989 | 0xC49200080634)) & 0x4F820E5F2A5CFCE0 ^ (v500 << 57) & 0x4E00000000000000) ^ (v500 >> 41);
  v2[25] = (v503 ^ (v500 & 0xC989 | 0x634) ^ (v500 >> 41)) >> 8;
  v512 = v511 ^ (v500 << 23);
  v2[41] = v510 >> (v506 & 0x28) >> (v506 & 0x28 ^ 0x28);
  v2[1] = BYTE1(v509);
  v2[22] = BYTE6(v512);
  v2[17] = BYTE4(v512);
  v2[71] = BYTE2(v512);
  v2[50] = BYTE6(v510);
  v2[102] = v509;
  v2[79] = BYTE3(v509);
  v2[24] = v511;
  v2[103] = HIBYTE(v512);
  v2[13] = HIBYTE(v510);
  v2[45] = BYTE5(v512);
  v2[31] = v512 >> (-v390 & 0x18) >> (-v390 & 0x18 ^ 0x18u);
  *(v532 + 3) = v361 + 1;
  LODWORD(v512) = ((((v529 >> 2) ^ 0x12A4D3BB) - 1583579870) ^ (((v529 >> 2) ^ 0x5520442B) - 434574670) ^ (((v529 >> 2) ^ 0x5A7C1EA2) - 381374407)) == -1363138647;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10029BD30@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  v11 = v6 < v8;
  *(v10 + 4 * v7) ^= a6;
  v12 = v7 + 1;
  if (v11 == v12 > a4)
  {
    v11 = v12 + v8 < v6;
  }

  return (*(v9 + 8 * ((!v11 * ((a1 + a2) & a3 ^ a5)) ^ a1)))();
}

uint64_t sub_10029BD90()
{
  v4 = (((v2 ^ 0xBA99E749) + 1164318903) ^ ((v2 ^ 0x695B3FC8) - 1767587784) ^ ((v2 ^ 0xA420FC30 ^ ((v0 - 7324) | 8)) + 1541342134)) + 1934901497;
  v5 = 4 * v1 - 76407762 < v4;
  if ((4 * v1) > 0x48DE3D1 != v4 < 0xFB721C2E)
  {
    v5 = v4 < 0xFB721C2E;
  }

  return (*(v3 + 8 * ((54 * !v5) ^ v0)))();
}

uint64_t sub_10029BE68@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W8>)
{
  v11 = v6 < v7;
  *(v10 + v5) ^= a4;
  v12 = v5 + 1;
  if (v11 == v12 > ((v4 + a2) & a3 ^ v8))
  {
    v11 = v12 + v7 < v6;
  }

  return (*(v9 + 8 * ((!v11 * a1) ^ v4)))();
}

uint64_t sub_10029BF44()
{
  (*(v0 + 8 * (v2 + 12379)))(*v3);
  result = (*(v0 + 8 * (v2 ^ 0x30AF)))(*(v3 + 8));
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1458009184;
  return result;
}

uint64_t sub_10029BFAC(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * (dword_1006D7B48 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10062CD80[byte_10060CFD0[(99 * (dword_1006D7B48 ^ 0x89 ^ dword_1006D53C8))] ^ 0x2B]) + 588);
  v4 = 99 * ((dword_1006D53C8 - *v3) ^ 0x89);
  v5 = *(&off_1006B4E30 + (byte_10066CDA0[byte_10064CDF8[v4 - 8] ^ 0xB] ^ v4) + 971);
  v6 = *v3 ^ &v8 ^ *v5;
  *v3 = 1758147683 * v6 + 0x4D631102543E877;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v11 = (325024769 * ((2 * (&v9 & 0x440ADA90) - &v9 + 1005921647) ^ 0x4F938C4D)) ^ 0x225;
  v10 = a2;
  LOBYTE(v5) = 99 * (*v3 ^ 0x89 ^ *v5);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D7B48) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 + dword_1006D7B48) ^ 0x89))] ^ 0x52]) + 624) + 8 * (byte_10062CD84[(aMG[v5 - 8] ^ 0x74) - 4] ^ v5) + 99844))(&v9);
  *(a1 + 8) = v9 ^ 0x66F88B36;
  return 0;
}

uint64_t sub_10029C1D4(int *a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * (dword_1006D7BF0 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D7BF0 ^ 0x89 ^ dword_1006D53C8))] ^ 0xF1]) + 1020);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + v4) ^ 0x89))] ^ 0xCB] ^ (99 * ((dword_1006D53C8 + v4) ^ 0x89))) + 909);
  v6 = (*v5 + v4) ^ &v8;
  *(v3 - 4) = 1758147683 * v6 + 0x28429BE61D27EDFBLL;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v10 = a2;
  v9[0] = (784480913 * ((2 * (v9 & 0x3C0D6828) - v9 - 1007511594) ^ 0xE56FEDAD)) ^ 0x2F56;
  LOBYTE(v5) = 99 * ((*v5 - *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7BF0) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 - dword_1006D7BF0) ^ 0x89))] ^ 0x37]) + 783) + 8 * (v5 ^ byte_10060D0D0[byte_10066CFA0[v5] ^ 0x84]) + 98284))(v9);
  *a1 = v9[2] ^ 0x572CA21F;
  a1[1] = 0;
  return 0;
}

uint64_t sub_10029C3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D5700 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CDA0[byte_10064CDF0[(99 * (dword_1006D5700 ^ 0x89 ^ dword_1006D53C8))] ^ 0xB]) + 410);
  v3 = 99 * (*v2 ^ dword_1006D53C8 ^ 0x89);
  v4 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[v3] ^ 0x84) - 8] ^ v3) + 833);
  v5 = (*v4 - *v2) ^ &v8;
  *v2 = 1758147683 * v5 + 0x28429BE61D27EDFBLL;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v6 = *(a1 + 8) + 96;
  v9 = a2;
  v11 = (961063711 * ((2 * (&v9 & 0x2E426C0) - &v9 - 48506562) ^ 0x8CEF1021)) ^ 0x946342D8;
  v12 = v6;
  LOBYTE(v4) = 99 * ((*v4 - *v2) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5700) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 - dword_1006D5700) ^ 0x89))] ^ 0xCA]) + 686) + 8 * (byte_10066CDA0[byte_10064CDF8[v4 - 8] ^ 0xB] ^ v4) + 99500))(&v9);
  return (v10 - 1801394111);
}

uint64_t sub_10029C614(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D5938 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D5938 ^ 0x89 ^ dword_1006D53C8))] ^ 0x1B]) + 760);
  v3 = 99 * ((dword_1006D53C8 + *v2) ^ 0x89);
  v4 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[v3] ^ 0x84) - 8] ^ v3) + 833);
  v5 = *v2 - &v8 + *v4;
  *v2 = 1758147683 * v5 - 0x4D631102543E877;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  LODWORD(v5) = *(a1 + 168);
  *(a1 + 168) = v5 + 1;
  v6 = *(a1 + 152) + 136 * v5;
  v11 = 830689092 - 1932028331 * (v9 ^ 0xD47B607C);
  v12 = v6;
  v10 = a2;
  LOBYTE(v4) = 99 * (*v2 ^ 0x89 ^ *v4);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D5938 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D5938 ^ 0x89 ^ dword_1006D53C8))] ^ 0xF1]) + 797) + 8 * (byte_10066CCA8[(byte_10064CCFC[v4 - 12] ^ 0x1B) - 8] ^ v4) + 100020))(v9);
  return 0;
}

uint64_t sub_10029C804(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5450) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D5450) ^ 0x89))] ^ 0xCB]) + 836);
  v4 = 99 * ((dword_1006D53C8 - *v3) ^ 0x89);
  v5 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[v4] ^ 0x84) - 8] ^ v4) + 833);
  v6 = 1758147683 * (((*v5 ^ *v3) - &v8) ^ 0xFB29CEEFDABC1789);
  *v3 = v6;
  *v5 = v6;
  v10 = a2;
  v9[0] = (784480913 * (((v9 | 0x30B04DD8) - v9 + (v9 & 0xCF4FB220)) ^ 0x162D37A3)) ^ 0x2F56;
  LOBYTE(v5) = 99 * (*v3 ^ 0x89 ^ *v5);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5450) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D5450) ^ 0x89))] ^ 0x27]) + 693) + 8 * (byte_10064CEF8[(byte_10062CC88[v5 - 8] ^ 0x37) - 8] ^ v5) + 99500))(v9);
  *(a1 + 8) = v9[2] ^ 0x572CA21F;
  return 0;
}

uint64_t sub_10029CA18(uint64_t *a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5520) ^ 0x89)) ^ byte_10066CDA0[byte_10064CDF0[(99 * ((dword_1006D53C8 + dword_1006D5520) ^ 0x89))] ^ 0xCE]) + 296);
  v4 = 99 * (*v3 ^ dword_1006D53C8 ^ 0x89);
  v5 = *(&off_1006B4E30 + (v4 ^ byte_10066CCA0[byte_10064CCF0[v4] ^ 0x1B]) + 1054);
  v6 = (*v5 - *v3) ^ &v8;
  *v3 = 1758147683 * (v6 + 0x4D631102543E877);
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v11 = a2;
  v9 = (784480913 * ((-1159525802 - (&v9 | 0xBAE30A56) + (&v9 | 0x451CF5A9)) ^ 0x63818FD2)) ^ 0x2F56;
  LOBYTE(v5) = 99 * ((*v5 - *v3) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D5520 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CDA0[byte_10064CDF0[(99 * (dword_1006D5520 ^ 0x89 ^ dword_1006D53C8))] ^ 0xB]) + 769) + 8 * (byte_10060D0D8[(byte_10066CFA0[v5] ^ 0x84) - 8] ^ v5) + 98284))(&v9);
  *a1 = v10 ^ 0x52E39BD4572CA21FLL;
  return 0;
}

void sub_10029CC48(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D56C8) ^ 0x89)) ^ byte_10062CD80[byte_10060CFD0[(99 * ((dword_1006D53C8 - dword_1006D56C8) ^ 0x89))] ^ 0x2B]) + 552);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - v4) ^ 0x89)) ^ byte_10066CCA0[byte_10064CCF0[(99 * ((dword_1006D53C8 - v4) ^ 0x89))] ^ 0x1B]) + 1054);
  v6 = &v11[*v5 ^ v4];
  *(v3 - 4) = (1758147683 * v6) ^ 0xFB29CEEFDABC1789;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v14 = (961063711 * ((((&v12 | 0xCC5F41E2) ^ 0xFFFFFFFE) - (~&v12 | 0x33A0BE1D)) ^ 0x42547702)) ^ 0x374A6F0F;
  v12 = a2;
  LOBYTE(v6) = 99 * ((*v5 + *(v3 - 4)) ^ 0x89);
  v7 = *(&off_1006B4E30 + ((99 * (dword_1006D56C8 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10062CD80[byte_10060CFD0[(99 * (dword_1006D56C8 ^ 0x89 ^ dword_1006D53C8))] ^ 0xC]) + 866) - 4;
  (*&v7[8 * (byte_10066CDA0[byte_10064CDF8[v6 - 8] ^ 0xCE] ^ v6) + 99712])(&v12);
  v8 = v13;
  *(a1 + 8) = *(v13 + 4) - 476382832;
  v9 = 99 * ((*v5 + *(v3 - 4)) ^ 0x89);
  *a1 = (*&v7[8 * (byte_10060D0D8[(byte_10066CFA0[v9] ^ 0xCB) - 8] ^ v9) + 97448])((*(v8 + 4) - 476382832), 0x100004077774924);
  v10 = *(v8 + 8);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_10029CF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = (v4 - 676538741);
  v9 = (((a2 + v8) * v5) ^ (((a2 + v8) * v5) >> 16)) * v5;
  *(a1 + v8) = byte_1006452BC[(v9 >> 24) - 12] ^ *(a2 + v8) ^ byte_100645C14[(v9 >> 24) - 3] ^ byte_1005E72E0[v9 >> 24] ^ v9 ^ (47 * (((((a2 + v8) * v5) ^ (((a2 + v8) * v5) >> 16)) * v5) >> 24));
  return (*(v7 + 8 * (((v4 - 1 != v6) * v2) ^ v3)))();
}

uint64_t sub_10029CFE0(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7B10) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D7B10) ^ 0x89))] ^ 5]) + 48);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[(99 * ((dword_1006D53C8 - v4) ^ 0x89))] ^ 5) - 8] ^ (99 * ((dword_1006D53C8 - v4) ^ 0x89))) + 992);
  v6 = v4 - &v8 + *v5;
  *(v3 - 4) = 1758147683 * (v6 + 0x4D631102543E877);
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v9 = (784480913 * ((&v9 - 188751413 - 2 * (&v9 & 0xF4BFE1CB)) ^ 0xD2229BB0)) ^ 0x2F56;
  v11 = a2;
  LOBYTE(v5) = 99 * ((*v5 + *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7B10) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 - dword_1006D7B10) ^ 0x89))] ^ 0x52]) + 624) + 8 * (byte_10066CDA0[byte_10064CDF8[v5 - 8] ^ 0xB] ^ v5) + 99388))(&v9);
  *(a1 + 320) = v10 ^ 0x52E39BD4572CA21FLL;
  return 0;
}

uint64_t sub_10029D208(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D5730 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10060D0D0[byte_10066CFA0[(99 * (dword_1006D5730 ^ 0x89 ^ dword_1006D53C8))] ^ 0xCB]) + 533);
  v3 = 99 * ((dword_1006D53C8 - *v2) ^ 0x89);
  v4 = *(&off_1006B4E30 + (byte_10064CEF8[(byte_10062CC88[v3 - 8] ^ 0x52) - 8] ^ v3) + 826);
  v5 = *v2 - &v7 + *v4;
  *v2 = 1758147683 * v5 - 0x4D631102543E877;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v8 = *(a1 + 8) + 96;
  v10 = a2;
  v9 = 961063711 * (((&v8 | 0x85EBF403) + (~&v8 | 0x7A140BFC)) ^ 0xF41F3D1D) - 1455520778;
  LOBYTE(v4) = 99 * ((*v4 + *v2) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5730) ^ 0x89)) ^ byte_10066CCA0[byte_10064CCF0[(99 * ((dword_1006D53C8 + dword_1006D5730) ^ 0x89))] ^ 0xF1]) + 797) + 8 * (byte_10060D0D8[(byte_10066CFA0[v4] ^ 0x27) - 8] ^ v4) + 98740))(&v8);
  return 0;
}

uint64_t sub_10029D418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  *(a1 + 100) = v2;
  return off_10069C210[(61 * ((v2 - 943748197) > 0xFFFFFDFE)) ^ 0x195Fu]();
}

uint64_t sub_10029D508(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D56E0 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10064CEF0[byte_10062CC80[(99 * (dword_1006D56E0 ^ 0x89 ^ dword_1006D53C8))] ^ 0x37]) + 60);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10062CD84[(aMG[(99 * ((dword_1006D53C8 - v3) ^ 0x89)) - 8] ^ 0xDC) - 4] ^ (99 * ((dword_1006D53C8 - v3) ^ 0x89))) + 902);
  v5 = v3 - &v8 + *v4;
  *(v2 - 4) = 1758147683 * v5 + 0x28429BE61D27EDFBLL;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v6 = *(a1 + 8) + 64;
  v9 = a2;
  v12 = v6;
  v11 = (961063711 * (((&v9 | 0x6D325AE9) - (&v9 & 0x6D325AE9)) ^ 0x1CC693F6)) ^ 0x946342D8;
  LOBYTE(v4) = 99 * ((*v4 + *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D56E0) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 - dword_1006D56E0) ^ 0x89))] ^ 0x37]) + 783) + 8 * (byte_10064CEF8[(byte_10062CC88[v4 - 8] ^ 0xCA) - 8] ^ v4) + 98836))(&v9);
  return (v10 - 1801394111);
}

uint64_t sub_10029D718(uint64_t a1)
{
  v1 = *(a1 + 20) - 1;
  *(*(a1 + 24) + 72 * v1 + 32) = 0;
  *(*(a1 + 24) + 72 * v1 + 16) = 0;
  *(*(a1 + 24) + 72 * v1 + 24) = 0x52E39BD4572CA21FLL;
  *(*(a1 + 24) + 72 * v1 + 36) = -1;
  *(*(a1 + 24) + 72 * v1 + 38) = -1;
  *(*(a1 + 24) + 72 * v1 + 64) = 0;
  *(*(a1 + 24) + 72 * v1 + 48) = 0;
  *(*(a1 + 24) + 72 * v1 + 56) = 0x52E39BD4572CA21FLL;
  *(*(a1 + 24) + 72 * v1 + 68) = 0;
  *(*(a1 + 24) + 72 * v1 + 70) = 0;
  return 0;
}

uint64_t sub_10029D7B8(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D53F0) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D53F0) ^ 0x89))] ^ 0x84]) + 672);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + ((99 * (v3 ^ dword_1006D53C8 ^ 0x89)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (v3 ^ dword_1006D53C8 ^ 0x89))] ^ 0xF1]) + 999);
  v5 = *v4 - v3 - &v7;
  *(v2 - 4) = (1758147683 * v5) ^ 0xFB29CEEFDABC1789;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v10 = 830689092 - 1932028331 * (v8 ^ 0xD47B607C);
  v9 = a2;
  v11 = a1 + 144;
  LOBYTE(v4) = 99 * ((*v4 - *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D53F0) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 - dword_1006D53F0) ^ 0x89))] ^ 0xCA]) + 686) + 8 * (byte_10062CD84[(aMG[v4 - 8] ^ 0x2B) - 4] ^ v4) + 98916))(v8);
  return 0;
}

uint64_t sub_10029D9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D7BA0) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D7BA0) ^ 0x89))] ^ 5]) + 882);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10066CDA0[byte_10064CDF8[(99 * (v3 ^ dword_1006D53C8 ^ 0x89)) - 8] ^ 0xCE] ^ (99 * (v3 ^ dword_1006D53C8 ^ 0x89))) + 1006);
  v5 = (*v4 - v3) ^ &v8;
  *(v2 - 4) = 1758147683 * (v5 + 0x4D631102543E877);
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  LODWORD(v5) = *(a1 + 144);
  *(a1 + 144) = v5 + 1;
  v6 = *(a1 + 152) + 272 * v5;
  v10 = a2;
  v11 = 830689092 - 1932028331 * ((2048993150 - (v9 | 0x7A21277E) + (v9 | 0x85DED881)) ^ 0x51A5B8FD);
  v12 = v6;
  LOBYTE(v4) = 99 * ((*v4 + *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7BA0) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D7BA0) ^ 0x89))] ^ 0x27]) + 693) + 8 * (byte_10060D0D8[(byte_10066CFA0[v4] ^ 5) - 8] ^ v4) + 99524))(v9);
  return 0;
}

void sub_10029DBC8(uint64_t a1)
{
  v1 = *(a1 + 24) + 122489177 * ((((2 * a1) | 0xB3C996A2) - a1 - 1508166481) ^ 0x9A83844B);
  v2 = ((*(*a1 + 16) != 0) * ((v1 ^ 0xF5E) - 8457)) ^ v1;
  v3 = v1 ^ 0x2D63;
  v4 = *(a1 + 16);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10029DD30(uint64_t result)
{
  *v1 = 0xAD1C642BA8D35DE0;
  **(result + 32) = -688158203;
  return result;
}

void sub_10029DDDC(uint64_t a1)
{
  v1 = *(a1 + 24) + 1040404627 * (a1 ^ 0xD0E941F2);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10029E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, char a34)
{
  v38 = v35 & 0x2FAABAFD;
  v39 = **(v34 + 8 * (v38 ^ 0xA3Bu));
  v41 = (*(v36 + 8 * (v38 + 9842)))(a1, v39, 0, &a34);
  v42 = v37 + v38 - 1321 + v41 - ((2 * v41) & 0xBCCBBF20) - 1388;
  v43 = (*(v36 + 8 * (v38 + 9821)))(a1);
  return (*(v36 + 8 * ((4347 * (v42 == v37)) ^ v38)))(v43);
}

uint64_t sub_10029E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  HIDWORD(a30) = 5;
  STACK[0x1C70] = 0;
  STACK[0x1C78] = 0x6A66EEF00000000;
  LODWORD(STACK[0x1C80]) = 0;
  v38 = (*(v35 + 84) ^ 0xB9A1EFFF3EDDDBFDLL) + 0x465E1000C1222403 + ((2 * *(v35 + 84)) & 0xFFFB);
  v39 = (*(v35 + 96) ^ 0x79D5B913E7FF49FFLL) - 0x79D5B913E7FF49FFLL + ((2 * *(v35 + 96)) & 0x1CFFE93FELL);
  v40 = (*(v35 + 100) ^ 0xDF377F6D7BFE9FDDLL) + 0x20C8809284016023 + ((2 * *(v35 + 100)) & 0xF7FD3FBALL);
  v41 = *(v35 + 240);
  return (*(v36 + 8 * ((59 * (*(v35 + 16) == 1)) ^ v34)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, 0, a30, 4096, a32, a33, a34, ((v34 - 1673) | 0x2060) + (*(v35 + 16) ^ 0xDE681F7FFFEFF5E7) + 0x2197E080000FE5ADLL + ((*(v35 + 16) << (((v34 + 115) | 0x64) - 107)) & 0x1FFDFEBCELL), (*(v35 + 32) ^ 0x7EDB5BFFFB7FA7B5) - 0x7EDB5BFFFB7FA7B5 + ((2 * *(v35 + 32)) & 0x1F6FF4F6ALL), 24);
}

uint64_t sub_10029E478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LODWORD(a28) = v38;
  v41 = *(**(v39 + 8) + 8);
  v42 = *(v40 + 8 * ((21 * (v41 != ((2 * v41) & 0x66F65DFA))) ^ v37));
  return v42(v42, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_10029E5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v39 = *(v37 + v36 - 16);
  *(&a35 + v37 + 60) = *(v37 + v36 - 32);
  *(&a35 + v37 + 76) = v39;
  return (*(v38 + 8 * ((((v37 & 0xFFFFFFE0) == 32) * ((713 * (v35 ^ 0x1A2D)) ^ 0x23B4)) ^ ((v35 ^ 0x1141) - 2610))))();
}

uint64_t sub_10029E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v44 = v37 - 7561;
  v45 = ((v39 ^ 0xD5EFEB78ED6FFDF7) + (((125 * (v44 ^ 0xB59u)) ^ 0x1DADFEA7ALL) & (2 * v39)) + v41 + 0x2A1014871290020DLL);
  v46 = *(**(v42 + 8) + 12);
  v47 = v46 + v36 - (v38 & (2 * v46));
  *v45 = v47 ^ 0x75;
  v45[1] = BYTE1(v47) ^ 0x9F;
  v45[2] = BYTE2(v47) ^ 0xF7;
  v45[3] = HIBYTE(v47) ^ 0xA1;
  return (*(v43 + 8 * ((120 * (a36 + 863710976 - ((2 * a36) & 0x66F65DFA) - 3 != v40)) ^ (v44 + 318))))();
}

uint64_t sub_10029EA34(int a1)
{
  v6 = ((a1 - 548) | 0x2606u) - 12128;
  v7 = *(v1 + v6 + v3 - 31);
  v8 = v4 + v6 + v3 + v2;
  *(v8 - 15) = *(v1 + v6 + v3 - 15);
  *(v8 - 31) = v7;
  return (*(v5 + 8 * ((6874 * ((v3 & 0xFFFFFFE0) == 32)) ^ (a1 + 994))))();
}

uint64_t sub_10029F418(uint64_t a1, int a2)
{
  v7 = *(v2 + v4 - 1 - 31);
  v8 = v5 + v4 - 1 + v3;
  *(v8 - 15) = *(v2 + v4 - 1 - 15);
  *(v8 - 31) = v7;
  return (*(v6 + 8 * ((37 * (((a2 - 656520710) & 0x2721BABF ^ 0x1017) == (v4 & 0xFFFFFFE0))) ^ (a2 + 2250))))();
}

uint64_t sub_10029F52C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a2 - 1;
  *(v5 + v7 + v4) = *(v3 + v7);
  return (*(v6 + 8 * ((4908 * (v7 == 0)) ^ (a3 + 799))))();
}

uint64_t sub_10029F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v39 = &a35 + v36 + a5 + a3 + v35 + 72;
  v40 = *(v35 + v37 + 60);
  *(v39 - 1) = *(v35 + v37 + 44);
  *v39 = v40;
  return (*(v38 + 8 * ((((v35 & 0xFFFFFFE0) == 32) * (((a7 - 1845) | 0x206) - 1605)) ^ (a7 - 1257))))();
}

uint64_t sub_10029F85C(uint64_t a1, int a2)
{
  v6 = a1 - 1;
  *(v4 + v6 + v3) = *(v2 + v6);
  return (*(v5 + 8 * ((13068 * (v6 == (a2 - 229) - 2712)) ^ (a2 + 3559))))();
}

uint64_t sub_10029FA6C@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v3 & 0xD0673F7D) + 6994) ^ 0xFFFFFFFFFFFFD930) + v2;
  v7 = *(a1 + v6 - 15);
  v8 = *(a1 + v6 - 31);
  v9 = v4 + v1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((986 * ((v2 & 0xFFFFFFE0) != 32)) ^ ((v3 & 0xD0673F7D) - 2432))))();
}

uint64_t sub_10029FC4C@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6 + v1) = *(a1 + v6);
  return (*(v5 + 8 * ((6269 * (v6 == ((21 * (v3 ^ 0xBFCu)) ^ 0xA95))) ^ (v3 - 1516))))();
}

uint64_t sub_10029FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, int a29, char a30)
{
  *(v34 - 144) = v30 - 961063711 * (((v34 - 160) & 0x76FDBCAB | ~((v34 - 160) | 0x76FDBCAB)) ^ 0xF8F68A4B) + 8047;
  *(v34 - 136) = v32 + 104;
  *(v34 - 120) = v31;
  *(v34 - 160) = &a30;
  *(v34 - 152) = v31;
  (*(v33 + 8 * (v30 ^ 0x3BE2)))(v34 - 160);
  return (*(v33 + 8 * ((5565 * (*(v34 - 128) == ((v30 - 1429) | 0x6C) + 1172927105)) ^ v30)))(a28);
}

uint64_t sub_10029FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  v31 = *(v30 + 16);
  **(v30 + 32) = *a28;
  v32 = (*(v29 + 8 * (v28 + 2548)))();
  *v31 = v32;
  return (*(v29 + 8 * ((205 * (*a28 - ((*a28 << (17 * (((v28 + 1) | 0x12) ^ 0xF3u) - 124)) & 0x6CE1F30C) != 0)) ^ v28)))(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_10029FF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFCFCLL ^ ((v3 - 5833) | 0x300u)) + a2;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * (((a2 & 0xFFFFFFF8) - 8 == v2) | (2 * ((a2 & 0xFFFFFFF8) - 8 == v2)) | v3)))();
}

uint64_t sub_1002A06B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  v24 = (((v21 - 92) | 0x417) - 566) | 0x8C2;
  HIDWORD(v26) = LODWORD(STACK[0xC60]) - 1477745135;
  LODWORD(v26) = v24 + 1477734155;
  HIDWORD(a12) = -1477743488;
  LODWORD(v29) = v22 + 1688278110;
  HIDWORD(v29) = STACK[0xC60];
  LODWORD(v28) = ((v22 + 625906302) & 0xDAB17BDE) - 6617;
  HIDWORD(v28) = v22 + 5275;
  LODWORD(v27) = (v22 + 625906302) & 0xDAB17BDE;
  HIDWORD(v27) = (v22 + 5275) | 0x1027;
  return (*(v23 + 8 * (((a21 != 0) * ((v24 ^ 0xB14) - 8517 + 61 * (v24 ^ 0x2AE7))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &STACK[0x1C78], a12, v26, v27, v28, v29, a17, a18);
}

uint64_t sub_1002A0808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = ((7 * (a9 ^ 0x2074)) ^ HIDWORD(a13)) + HIDWORD(a21);
  v23 = v22 < 1749 * (a9 ^ 0x21F2u) - 1477753880;
  v24 = v22 > HIDWORD(a14);
  if (HIDWORD(a17) > a14 != v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  return (*(v21 + 8 * ((1010 * v25) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1002A0894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = (a18 + HIDWORD(a20));
  v23 = *v22 - ((2 * *v22) & 0x80) + 993023808;
  HIDWORD(a20) += ((v22[2] << 16) | (v22[3] << 24)) + (v23 & 0x1F98 ^ 0x294D3767 ^ ((((v20 - 1713869644) & 0x66277BB7 ^ 0xFFFFE495) + ((49 * (v20 ^ 0x2238) + v22[1] - ((2 * v22[1]) & 0x96)) << 8) + 263855104) ^ 0x26F06B67) & (v23 ^ 0xC4CFA8A7)) + 4;
  return (*(v21 + 8 * ((131 * (HIDWORD(a20) > HIDWORD(a16))) ^ v20)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1002A0A64@<X0>(_DWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  *a15 = v16 - (((v17 + 126) ^ 0x46) & (2 * v16)) + 61;
  *a1 = 1;
  return v15();
}

uint64_t sub_1002A0DC4()
{
  v3 = 70 * (v1 ^ 0xB71);
  v4 = ((2 * v0) & 0x1DEF5FF7ALL) - 0x7D72CE57EF7AFFBDLL + (v0 ^ (89 * (((v3 - 524) | 0x1001) ^ 0x1156)) ^ 0x7D72CE57EF7ADA8EuLL) < 0x10000;
  return (*(v2 + 8 * (v4 | (4 * v4) | v3)))();
}

uint64_t sub_1002A0E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _BYTE *a22)
{
  if (v23 < 0x100)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  *a22 = (v25 - 1) ^ ((v22 ^ 0xEC) - 37) ^ 7;
  return (*(v24 + 8 * (v22 ^ (14 * (v25 == 3)))))();
}

uint64_t sub_1002A0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _BYTE *a22)
{
  *a22 = -66;
  LOBYTE(STACK[0x1C91]) = (v22 >> (v23 - 101)) - ((2 * (v22 >> (v23 - 101))) & 0x7A) + 61;
  return (*(v24 + 8 * (v23 + 5482)))();
}

uint64_t sub_1002A0FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v28 = (v25 + 597949127) & 0xDC5BFDBF;
  v29 = (v28 ^ 0x1DBB) + v24;
  *(a22 + v29) = v26 ^ HIBYTE(v23);
  return (*(v27 + 8 * ((88 * (v29 + (v28 ^ 0x1DB8) <= v22)) ^ v28)))();
}

uint64_t sub_1002A10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + a2 + v6 + 0x620480E000801 + v4);
  v9 = *(a4 + v4 - 16);
  *(v8 - 1) = *(a4 + v4 - 32);
  *v8 = v9;
  return (*(v7 + 8 * ((35 * ((((659 * (v5 ^ 0x2427) + 118) ^ ((((659 * (v5 ^ 0x2427)) ^ 0xFFFFDBEA) & v4) == 32)) & 1) == 0)) ^ (659 * (v5 ^ 0x2427)))))();
}

uint64_t sub_1002A1218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7)
{
  v11 = v9 + (v8 ^ a5) * a6 - 3487;
  *(a1 + v11 + v7) = *(a4 + v11);
  return (*(v10 + 8 * (((v11 == 0) * a7) ^ v8)))();
}

uint64_t sub_1002A1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a1 + v8 + v7 + v6 + 0x1C80008000440D1);
  v12.i64[0] = 0x7A7A7A7A7A7A7A7ALL;
  v12.i64[1] = 0x7A7A7A7A7A7A7A7ALL;
  v13.i64[0] = 0x3D3D3D3D3D3D3D3DLL;
  v13.i64[1] = 0x3D3D3D3D3D3D3D3DLL;
  v14 = vaddq_s8(vsubq_s8(*(a6 + v6 - 16), vandq_s8(vaddq_s8(*(a6 + v6 - 16), *(a6 + v6 - 16)), v12)), v13);
  v11[-1] = vaddq_s8(vsubq_s8(*(a6 + v6 - 32), vandq_s8(vaddq_s8(*(a6 + v6 - 32), *(a6 + v6 - 32)), v12)), v13);
  *v11 = v14;
  return (*(v10 + 8 * ((((v6 & 0xFFFFFFE0) == 32) * (((v9 - 4481) | 0x1CE1) + 5951)) ^ (v9 + 722))))();
}

uint64_t sub_1002A1638(uint64_t a1, uint64_t a2, int a3, char a4, int a5, uint64_t a6)
{
  v10 = v8 + (v7 + a3) - 845;
  *(a1 + v10 + v6) = *(a6 + v10) - (a4 & (2 * *(a6 + v10))) + 61;
  return (*(v9 + 8 * (((v10 == 0) * a5) | v7)))();
}

uint64_t sub_1002A1720()
{
  v3 = (v0 ^ 0xDFFFFEF6) + 1056832816 + ((((v2 - 4117) | 0x420) ^ 0xBFFFF9DE) & (2 * v0));
  v4 = (v3 ^ 0xC57BB3D9) & (2 * (v3 & (v2 ^ 0xE10213F2))) ^ v3 & (v2 ^ 0xE10213F2);
  v5 = ((2 * (v3 ^ 0x77BB26D)) ^ 0xCCF3636E) & (v3 ^ 0x77BB26D) ^ (2 * (v3 ^ 0x77BB26D)) & 0xE679B1B6;
  v6 = v5 ^ 0x22089091;
  v7 = (v5 ^ 0xA6108120) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x99E6C6DC) & v6 ^ (4 * v6) & 0xE679B1B4;
  v9 = (v8 ^ 0x80608080) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x66193123)) ^ 0x679B1B70) & (v8 ^ 0x66193123) ^ (16 * (v8 ^ 0x66193123)) & 0xE679B1B0;
  return (*(v1 + 8 * (((v3 ^ (2 * ((((v10 ^ 0x8060A087) << 8) & 0x66790000 ^ 0x60310000 ^ (((v10 ^ 0x8060A087) << 8) ^ 0x79B10000) & (v10 ^ 0x8060A087)) & (((v10 ^ 0x66191100) & (v9 << 8) ^ v9) << 16) ^ (v10 ^ 0x66191100) & (v9 << 8) ^ v9))) != 3775005658) ^ v2)))();
}

uint64_t sub_1002A1AD0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = (v20 + 324380468) & 0xECAA58C7;
  v23 = a1 + v19 - 1 + v18;
  v24.i64[0] = 0x3D3D3D3D3D3D3D3DLL;
  v24.i64[1] = 0x3D3D3D3D3D3D3D3DLL;
  v25 = veorq_s8(*(a18 + v19 - 1 - 31), v24);
  *(v23 - 15) = veorq_s8(*(a18 + v19 - 1 - 15), v24);
  *(v23 - 31) = v25;
  LODWORD(v23) = ((v22 - 151710284) & 0x90AF6C7 ^ 0x14E3) != ((v22 - 2151) & v19);
  return (*(v21 + 8 * (((4 * v23) | (8 * v23)) ^ v22)))();
}

uint64_t sub_1002A1C14(uint64_t a1, uint64_t a2, char a3, int a4, unsigned int a5, unint64_t a6, int a7)
{
  v13 = v10 - 1;
  *(v11 + v13 + v7) = *(v8 + v13) ^ a3;
  return (*(v12 + 8 * (((v13 == ((v9 + a4) & a5 ^ a6)) * a7) | v9)))();
}

uint64_t sub_1002A1C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, unsigned int a35)
{
  v39 = LODWORD(STACK[0xC68]) + ((v35 - 1321) ^ (v38 - 1172)) - ((2 * LODWORD(STACK[0xC68])) & 0xBCCBBF20);
  (*(v36 + 8 * ((v35 - 1321) ^ 0x359E)))(a35);
  return (*(v36 + 8 * ((97 * (a34 == ((379 * ((v35 - 1321) ^ 0x563) - 1851229880) & 0x6E577BFF) - 5886 + ((379 * ((v35 - 1321) ^ 0x563) - 3637) | 0x381))) ^ (379 * ((v35 - 1321) ^ 0x563)))))(v37);
}

uint64_t sub_1002A296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v3 + 8 * (v2 ^ 0x3ABB)))(a2);
  result = a1;
  *(a1 + 48) = v4;
  v8 = *(v5 - 112);
  return result;
}

uint64_t sub_1002A2A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = (a1 + a2 - 16);
  v25 = *(a22 + a2 - 16);
  *(v24 - 1) = *(a22 + a2 - 16 - 16);
  *v24 = v25;
  return (*(v23 + 8 * ((((a2 & 0xFFFFFFE0) == 32) * (((v22 - 1032078428) & 0x3D8445DF) + 863)) ^ v22)))();
}

uint64_t sub_1002A2B5C@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = v22 - 1;
  *(a1 + v26) = *(a22 + v26);
  return (*(v25 + 8 * (((((v26 == 0) ^ v23) & 1) * v24) ^ a2)))();
}

uint64_t sub_1002A2B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, unsigned int a35, int a36, char a37)
{
  v41 = *(v39 + 64);
  v42 = *(v39 + 40);
  LODWORD(STACK[0x1C80]) = 1;
  v43 = (*(v38 + 8 * (v37 ^ 0x31D9)))(a28);
  *v42 = *(&a37 + v40);
  *(v41 - 0x2B1B4DD47AF3E1CCLL) = STACK[0x1C78];
  return sub_1002A1C50(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

void sub_1002A2BE0(_DWORD *a1)
{
  v1 = a1[8] + 325024769 * ((((2 * a1) | 0x4A9C813A) - a1 + 1521598307) ^ 0xD128E9BF);
  v2 = v1 ^ 0x347A;
  v3 = (((*(*a1 + 16) ^ 0xA6961BCF) + 1500111921) ^ ((*(*a1 + 16) ^ 0xBA26A07A) + 1171873670) ^ ((*(*a1 + 16) ^ 0x4A57CFD5) + (v1 ^ 0xB5A825CD))) - 1615639502;
  v4 = v3 < 0x48CBD7D2;
  if (v3 >= 0x48CBD7D2)
  {
    v4 = v3 > 0x48CBD7D2;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1002A2DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5538) ^ 0x89)) ^ byte_10066CCA0[byte_10064CCF0[(99 * ((dword_1006D53C8 - dword_1006D5538) ^ 0x89))] ^ 0x1B]) + 718);
  v3 = 99 * ((dword_1006D53C8 - *v2) ^ 0x89);
  v4 = *(&off_1006B4E30 + (byte_10064CEF0[byte_10062CC80[v3] ^ 0xCA] ^ v3) + 888);
  v5 = (*v4 + *v2) ^ &v7;
  *v2 = 1758147683 * v5 + 0x28429BE61D27EDFBLL;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v11 = 844969835 - 784480913 * ((2128876500 - (&v8 | 0x7EE413D4) + (&v8 | 0x811BEC2B)) ^ 0xA7869650);
  v10 = a1 + 16;
  v8 = a2;
  LOBYTE(v4) = 99 * ((*v4 - *v2) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D5538 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D5538 ^ 0x89 ^ dword_1006D53C8))] ^ 0xF1]) + 797) + 8 * (v4 ^ byte_10064CEF0[byte_10062CC80[v4] ^ 0xCA]) + 98268))(&v8);
  return (v9 - 1801394111);
}

uint64_t sub_1002A2FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5A08) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D5A08) ^ 0x89))] ^ 0x27]) + 673);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10062CD80[byte_10060CFD0[(99 * ((dword_1006D53C8 + v3) ^ 0x89))] ^ 0x2B] ^ (99 * ((dword_1006D53C8 + v3) ^ 0x89))) + 916);
  v5 = 1758147683 * ((v3 - &v7 + *v4) ^ 0xFB29CEEFDABC1789);
  *(v2 - 4) = v5;
  *v4 = v5;
  v11 = a1 + 176;
  v10 = 830689092 - 1932028331 * ((((2 * v8) | 0xDDF7BB70) - v8 - 1862000056) ^ 0xBA80BDC4);
  v9 = a2;
  LOBYTE(v4) = 99 * ((*v4 - *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D5A08 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10060D0D0[byte_10066CFA0[(99 * (dword_1006D5A08 ^ 0x89 ^ dword_1006D53C8))] ^ 0x84]) + 631) + 8 * (v4 ^ byte_10062CD80[byte_10060CFD0[v4] ^ 0xC]) + 100132))(v8);
  return 0;
}

void sub_1002A31DC(_DWORD *a1)
{
  v1 = *a1 ^ (1131370337 * ((a1 & 0x5ADD8768 | ~(a1 | 0x5ADD8768)) ^ 0x4A47138F));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1002A3350()
{
  v5 = (*(v2 + 8 * (v4 + 6228)))(*(v1 + 1));
  *(v1 + 1) = v0;
  v6 = *v1;
  *v1 = v3;
  v1[1] = v6;
  return (*(v2 + 8 * ((27 * (((v1[5] == 0) ^ ((v4 ^ 0xC8) - 52)) & 1)) ^ v4 ^ 0xCC8)))(v5);
}

uint64_t sub_1002A354C()
{
  v5 = (*(v3 + 8 * (v4 ^ 0x2BBD)))(72 * (((*(v2 + 32) + v0) ^ 0x19BB7FF6FF7E5F7FLL) + ((2 * (*(v2 + 32) + v0)) & 0x1FEFCBEFELL)) - 0x3CBBFD77DB8ADBB8, v1);
  v6 = *(v2 + 32) == ((v4 - 4193) ^ 0xB21);
  return (*(v3 + 8 * (((2 * (((v4 - 125) ^ v6) & 1)) & 0xFB | (4 * (((v4 - 125) ^ v6) & 1))) ^ v4)))(v5, v7);
}

uint64_t sub_1002A35F4()
{
  v4 = v3 ^ 0x1687;
  v5 = (*(v2 + 8 * (v4 ^ 0x2A83)))(*(v1 + 40), v0, 72);
  return (*(v2 + 8 * ((14115 * (((v4 - 7009) | 0xB00u) - 2848 < *(v1 + 32))) ^ v4)))(v5);
}

uint64_t sub_1002A366C()
{
  v5 = (*(v2 + 8 * (v4 ^ 0x249C)))(*(v1 + 24));
  *(v1 + 24) = v0;
  v6 = *(v1 + 16);
  *(v1 + 16) = v3;
  *(v1 + 20) = v6;
  return (*(v2 + 8 * (((*(v1 + 36) == ((v4 + 4039) | 0x105) - 9493) * (((((v4 + 4039) | 0x105) - 7189) | 0x1282) - 7008)) ^ ((v4 + 4039) | 0x105))))(v5);
}

uint64_t sub_1002A3718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v14 = 961 * (v13 ^ 0xB2A);
  v15 = (*(v12 + 8 * (v13 ^ 0x3BF4)))(*(v11 + 40));
  *(v11 + 40) = v10;
  v16 = *(v11 + 32);
  *(v11 + 32) = a10;
  *(v11 + 36) = v16;
  v17 = *(v11 + 52) == ((v14 - 608) ^ 0x3C1D) - 6902;
  return (*(v12 + 8 * (((8 * v17) | (16 * v17)) ^ v14)))(v15);
}

uint64_t sub_1002A3828()
{
  v4 = v3 - 459;
  v5 = (*(v2 + 8 * (v4 ^ 0x2BF7)))(*(v1 + 56), v0, 32);
  return (*(v2 + 8 * (((*(v1 + 48) > 1uLL) * (((v4 + 1407461089) & 0xAC1BBF6E) + 13143)) ^ v4)))(v5);
}

uint64_t sub_1002A38A0()
{
  result = (*(v2 + 8 * (v3 + 12175)))(*(v1 + 56));
  *(v1 + 56) = v0;
  v5 = *(v1 + 48);
  *(v1 + 48) = v6;
  *(v1 + 52) = v5;
  return result;
}

uint64_t sub_1002A3954(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7AC8) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D7AC8) ^ 0x89))] ^ 0x27]) - 108);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10062CD80[byte_10060CFD0[(99 * ((dword_1006D53C8 - v3) ^ 0x89))] ^ 0xDC] ^ (99 * ((dword_1006D53C8 - v3) ^ 0x89))) + 902);
  v5 = v3 ^ &v7 ^ *v4;
  *(v2 - 4) = (1758147683 * v5) ^ 0xFB29CEEFDABC1789;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v11 = 844969835 - 784480913 * ((&v8 + 1002637050 - 2 * (&v8 & 0x3BC306FA)) ^ 0x1D5E7C81);
  v8 = a2;
  v10 = a1;
  LOBYTE(v4) = 99 * (*(v2 - 4) ^ 0x89 ^ *v4);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D7AC8 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D7AC8 ^ 0x89 ^ dword_1006D53C8))] ^ 0x1B]) + 852) + 8 * (v4 ^ byte_10062CD80[byte_10060CFD0[v4] ^ 0xDC]) + 98380))(&v8);
  return (v9 - 1801394111);
}

uint64_t sub_1002A3B60(uint64_t result)
{
  v1 = *(result + 28) - 325024769 * (((result | 0x314115A2) - result + (result & 0xCEBEEA5D)) ^ 0x4527BC80);
  v2 = *(result + 16);
  v3 = *(&off_1006B4E30 + (v1 ^ 0xEFBC4710)) - 5;
  v4 = *(&off_1006B4E30 + v1 + 272874678);
  v5 = *(&off_1006B4E30 + v1 + 272875171) - 1;
  v6 = *(&off_1006B4E30 + v1 + 272875392) - 4;
  v7 = *(&off_1006B4E30 + v1 + 272875475) - 4;
  v8 = (*(result + 24) + (((result | 0xA2) - result + (result & 0x5D)) ^ 0x80));
  if (v8 <= 0xB)
  {
    if (v8 - 6 >= 3)
    {
      if (v8 - 9 < 2)
      {
        v9 = 16 * (v1 ^ 0xEFBC43E6);
        v10 = v1 + 272876582;
        v17 = *(&off_1006B4E30 + (v1 ^ 0xEFBC4710)) - 5;
        v18 = v2;
        v16 = v1 + 613327279 * ((2 * (v15 & 0x2F4B9DF8) - v15 - 793484795) ^ 0xB7230C3B) + 272880050;
        (*&v7[8 * (v1 ^ 0xEFBC7280)])(v15);
        __asm { BRAA            X9, X17 }
      }

      goto LABEL_10;
    }

LABEL_9:
    v12 = v1 + 272876568;
    v16 = v1 + 613327279 * (v15 ^ 0x67976E3E) + 272880050;
    v17 = v3;
    v18 = v2;
    (*&v7[8 * (v1 ^ 0xEFBC7280)])(v15);
    __asm { BRAA            X9, X17 }
  }

  if (v8 - 14 < 2)
  {
    goto LABEL_9;
  }

  if (v8 == 12)
  {
    v13 = v1 ^ 0xEFBC445A;
    v14 = v1 + 272876582;
    v16 = v1 + 613327279 * ((2 * (v15 & 0x16559860) - v15 - 374708325) ^ 0x8E3D09A5) + 272880050;
    v17 = v4;
    v18 = v2;
    (*&v7[8 * (v1 ^ 0xEFBC7280)])(v15);
    __asm { BRAA            X9, X17 }
  }

  if (v8 == 13)
  {
    v11 = v1 + 272876568;
    v16 = v1 + 613327279 * ((((2 * v15) | 0x573C2E12) - v15 - 731780873) ^ 0x4C097937) + 272880050;
    v17 = *(&off_1006B4E30 + v1 + 272874624);
    v18 = v2;
    (*&v7[8 * v1 + 2183097344])(v15);
    __asm { BRAA            X9, X17 }
  }

LABEL_10:
  *(result + 8) = 73;
  return result;
}

uint64_t sub_1002A4200(_DWORD *a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5A30) ^ 0x89)) ^ byte_10062CD80[byte_10060CFD0[(99 * ((dword_1006D53C8 - dword_1006D5A30) ^ 0x89))] ^ 0xDC]) + 772);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[(99 * (v4 ^ dword_1006D53C8 ^ 0x89))] ^ 0x27) - 8] ^ (99 * (v4 ^ dword_1006D53C8 ^ 0x89))) + 895);
  v6 = (*v5 + v4) ^ &v8;
  *(v3 - 4) = 1758147683 * v6 + 0x4D631102543E877;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  *a1 = 2;
  v10 = a2;
  v9[0] = (784480913 * ((v9 & 0xF0846790 | ~(v9 | 0xF0846790)) ^ 0x29E6E214)) ^ 0x2F56;
  LOBYTE(v5) = 99 * ((*v5 + *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D5A30 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10064CEF0[byte_10062CC80[(99 * (dword_1006D5A30 ^ 0x89 ^ dword_1006D53C8))] ^ 0x52]) + 624) + 8 * (byte_10062CD84[(aMG[v5 - 8] ^ 0xC) - 4] ^ v5) + 100164))(v9);
  a1[2] = v9[2] ^ 0x572CA21F;
  return 0;
}

uint64_t sub_1002A442C(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D7B68) ^ 0x89)) ^ byte_10066CDA0[byte_10064CDF0[(99 * ((dword_1006D53C8 + dword_1006D7B68) ^ 0x89))] ^ 0xCE]) - 55);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[(99 * ((dword_1006D53C8 - v4) ^ 0x89))] ^ 5) - 8] ^ (99 * ((dword_1006D53C8 - v4) ^ 0x89))) + 992);
  v6 = (*v5 + v4) ^ &v9;
  *(v3 - 4) = 1758147683 * v6 - 0x4D631102543E877;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v7 = (*(a1 + 52) - 1);
  v10[0] = (784480913 * ((2 * (v10 & 0x12910230) - v10 + 1835990475) ^ 0x4BF387B0)) ^ 0x2F56;
  v11 = a2;
  LOBYTE(v5) = 99 * (*(v3 - 4) ^ 0x89 ^ *v5);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D7B68) ^ 0x89)) ^ byte_10060CED0[byte_10066CEA0[(99 * ((dword_1006D53C8 + dword_1006D7B68) ^ 0x89))] ^ 0xBB]) + 859) + 8 * (byte_10066CCA8[(byte_10064CCFC[v5 - 12] ^ 0x1B) - 8] ^ v5) + 100052))(v10);
  *(*(a1 + 56) + 32 * v7 + 8) = v10[2] ^ 0x572CA21F;
  return 0;
}

uint64_t sub_1002A4664(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D56B8 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D56B8 ^ 0x89 ^ dword_1006D53C8))] ^ 0xF1]) + 1084);
  v3 = 99 * ((dword_1006D53C8 + *v2) ^ 0x89);
  v4 = *(&off_1006B4E30 + (byte_10060D0D0[byte_10066CFA0[v3] ^ 0x84] ^ v3) + 833);
  v5 = 1758147683 * (&v7[*v4 - *v2] ^ 0xFB29CEEFDABC1789);
  *v2 = v5;
  *v4 = v5;
  v8 = a2;
  v10 = a1 + 8;
  v11 = 844969835 - 784480913 * (((&v8 | 0x946ABFD1) - (&v8 & 0x946ABFD1)) ^ 0xB2F7C5AA);
  LOBYTE(v4) = 99 * ((*v4 - *v2) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D56B8 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10060D0D0[byte_10066CFA0[(99 * (dword_1006D56B8 ^ 0x89 ^ dword_1006D53C8))] ^ 0x84]) + 631) + 8 * (v4 ^ byte_10060D0D0[byte_10066CFA0[v4] ^ 0xCB]) + 98436))(&v8);
  return (v9 - 1801394111);
}

uint64_t sub_1002A4868(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5788) ^ 0x89)) ^ byte_10066CCA0[byte_10064CCF0[(99 * ((dword_1006D53C8 - dword_1006D5788) ^ 0x89))] ^ 0xF1]) + 362);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10062CD84[(aMG[(99 * (v3 ^ dword_1006D53C8 ^ 0x89)) - 8] ^ 0xC) - 4] ^ (99 * (v3 ^ dword_1006D53C8 ^ 0x89))) + 1068);
  v5 = &v8[*v4 - v3];
  *(v2 - 4) = 1758147683 * v5 - 0x4D631102543E877;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v6 = *(a1 + 8) + 32 * (((*(a1 + 16) ^ 0x43014B89B81B8D8) - 0x43014B89B81B8D8) ^ ((*(a1 + 16) ^ 0x5BED41D051F03E3) - 0x1DBED41D051F03E3) ^ ((*(a1 + 16) ^ 0x36D5B71C9B21924) - 0x4B6D5B71C9B21924)) + 0x5C737A8AE5944400;
  v11 = (961063711 * (&v9 ^ 0x71F4C91F)) ^ 0x946342D8;
  v9 = a2;
  v12 = v6;
  LOBYTE(v2) = 99 * ((*v4 - *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * (dword_1006D5788 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10062CD80[byte_10060CFD0[(99 * (dword_1006D5788 ^ 0x89 ^ dword_1006D53C8))] ^ 0xC]) + 866) + 8 * (byte_10066CCA8[(byte_10064CCFC[v2 - 12] ^ 0x1B) - 8] ^ v2) + 100164))(&v9);
  return (v10 - 1801394111);
}

uint64_t sub_1002A4AF8(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7AE0) ^ 0x89)) ^ byte_10062CD80[byte_10060CFD0[(99 * ((dword_1006D53C8 - dword_1006D7AE0) ^ 0x89))] ^ 0x74]) + 570);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10060CED0[byte_10066CEA8[(99 * (v4 ^ dword_1006D53C8 ^ 0x89)) - 8] ^ 0xBB] ^ (99 * (v4 ^ dword_1006D53C8 ^ 0x89))) + 1061);
  v6 = (*v5 - v4) ^ &v9;
  *(v3 - 4) = (1758147683 * v6) ^ 0xFB29CEEFDABC1789;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v7 = (*(*a1 + 24) - 1);
  v12 = a2;
  v10 = (784480913 * ((2 * (&v10 & 0xC37AC38) - &v10 + 1942508483) ^ 0x555529B8)) ^ 0x2F56;
  LOBYTE(v5) = 99 * ((*v5 + *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D7AE0) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D7AE0) ^ 0x89))] ^ 0x84]) + 631) + 8 * (byte_10064CEF8[(byte_10062CC88[v5 - 8] ^ 0x52) - 8] ^ v5) + 98228))(&v10);
  *(*(*a1 + 16) + 32 * v7 + 30) = v11 ^ 0xA21F;
  return 0;
}

uint64_t sub_1002A4D34(int *a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5A38) ^ 0x89)) ^ byte_10060CED0[byte_10066CEA0[(99 * ((dword_1006D53C8 + dword_1006D5A38) ^ 0x89))] ^ 0xBB]) + 1105);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10062CD84[(aMG[(99 * (v4 ^ dword_1006D53C8 ^ 0x89)) - 8] ^ 0x74) - 4] ^ (99 * (v4 ^ dword_1006D53C8 ^ 0x89))) + 978);
  v6 = 1758147683 * (v4 ^ &v8 ^ 0xFB29CEEFDABC1789 ^ *v5);
  *(v3 - 4) = v6;
  *v5 = v6;
  v9[0] = (784480913 * ((1347992452 - (v9 | 0x5058BB84) + (v9 | 0xAFA7447B)) ^ 0x893A3E00)) ^ 0x2F56;
  v10 = a2;
  LOBYTE(v5) = 99 * ((*v5 - *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5A38) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D5A38) ^ 0x89))] ^ 0x84]) + 631) + 8 * (byte_10066CCA8[(byte_10064CCFC[v5 - 12] ^ 0x1B) - 8] ^ v5) + 100052))(v9);
  *a1 = v9[2] ^ 0x572CA21F;
  return 0;
}

uint64_t sub_1002A4F60(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D56A0) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 - dword_1006D56A0) ^ 0x89))] ^ 0xCA]) + 54);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[(99 * (v4 ^ dword_1006D53C8 ^ 0x89))] ^ 0xCB) - 8] ^ (99 * (v4 ^ dword_1006D53C8 ^ 0x89))) + 909);
  v6 = 1758147683 * ((*v5 - v4) ^ &v9 ^ 0xFB29CEEFDABC1789);
  *(v3 - 4) = v6;
  *v5 = v6;
  v10 = a2;
  v12 = (961063711 * ((2 * (&v10 & 0x6D54D7A8) - &v10 + 313206870) ^ 0x635FE149)) ^ 0x374A6F0F;
  LOBYTE(v5) = 99 * ((*v5 - *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D56A0) ^ 0x89)) ^ byte_10062CD80[byte_10060CFD0[(99 * ((dword_1006D53C8 - dword_1006D56A0) ^ 0x89))] ^ 0x74]) + 776) + 8 * (byte_10062CD84[(aMG[v5 - 8] ^ 0xC) - 4] ^ v5) + 100204))(&v10);
  v7 = v11;
  *(*a1 + 8) = *(v11 + 8);
  *(*a1 + 28) = *(v7 + 4);
  return 0;
}

uint64_t sub_1002A518C(uint64_t *a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5490) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D5490) ^ 0x89))] ^ 0x27]) + 352);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10066CDA0[byte_10064CDF8[(99 * ((dword_1006D53C8 - v4) ^ 0x89)) - 8] ^ 0xCD] ^ (99 * ((dword_1006D53C8 - v4) ^ 0x89))) + 1075);
  v6 = &v8[*v5 - v4];
  *(v3 - 4) = 1758147683 * v6 + 0x4D631102543E877;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v11 = a2;
  v9 = (784480913 * ((((2 * &v9) | 0x5B2B206C) - &v9 + 1382707146) ^ 0x8B08EA4D)) ^ 0x2F56;
  LOBYTE(v5) = 99 * ((*v5 + *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5490) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D5490) ^ 0x89))] ^ 0x27]) + 693) + 8 * (byte_10064CEF8[(byte_10062CC88[v5 - 8] ^ 0xCA) - 8] ^ v5) + 98724))(&v9);
  *a1 = v10 ^ 0x52E39BD4572CA21FLL;
  return 0;
}

uint64_t sub_1002A53A4(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D7B38 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10062CD80[byte_10060CFD0[(99 * (dword_1006D7B38 ^ 0x89 ^ dword_1006D53C8))] ^ 0xC]) + 205);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10062CD84[(aMG[(99 * (v3 ^ dword_1006D53C8 ^ 0x89)) - 8] ^ 0x74) - 4] ^ (99 * (v3 ^ dword_1006D53C8 ^ 0x89))) + 978);
  v5 = v3 ^ &v7 ^ *v4;
  *(v2 - 4) = 1758147683 * v5 + 0x4D631102543E877;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v11 = a1;
  v9 = a2;
  v10 = 830689092 - 1932028331 * ((2 * (v8 & 0x48153868) - v8 - 1209350254) ^ 0x6391A7EE);
  LOBYTE(v4) = 99 * ((*v4 - *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D7B38) ^ 0x89)) ^ byte_10066CCA0[byte_10064CCF0[(99 * ((dword_1006D53C8 + dword_1006D7B38) ^ 0x89))] ^ 0x1B]) + 852) + 8 * (byte_10066CDA0[byte_10064CDF8[v4 - 8] ^ 0xB] ^ v4) + 99356))(v8);
  return 0;
}

uint64_t sub_1002A55AC(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * (dword_1006D5720 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CDA0[byte_10064CDF0[(99 * (dword_1006D5720 ^ 0x89 ^ dword_1006D53C8))] ^ 0xCE]) + 1011);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10062CD80[byte_10060CFD0[(99 * ((dword_1006D53C8 - v4) ^ 0x89))] ^ 0x2B] ^ (99 * ((dword_1006D53C8 - v4) ^ 0x89))) + 916);
  v6 = (*v5 ^ v4) - &v8;
  *(v3 - 4) = 1758147683 * v6 - 0x4D631102543E877;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v10 = a2;
  v9[0] = (784480913 * (v9 ^ 0x269D7A7B)) ^ 0x2F56;
  LOBYTE(v5) = 99 * ((*v5 - *(v3 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5720) ^ 0x89)) ^ byte_10064CEF0[byte_10062CC80[(99 * ((dword_1006D53C8 + dword_1006D5720) ^ 0x89))] ^ 0x37]) + 783) + 8 * (v5 ^ byte_10062CD80[byte_10060CFD0[v5] ^ 0x74]) + 99444))(v9);
  *(a1 + 4) = v9[2] ^ 0x572CA21F;
  return 0;
}

void sub_1002A57AC(_DWORD *a1)
{
  v1 = *a1 + 1932028331 * ((a1 & 0x7B4250C | ~(a1 | 0x7B4250C)) ^ 0x2C30BA8F);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1002A5920(unint64_t a1)
{
  LODWORD(STACK[0x454]) = v1;
  STACK[0x208] = a1;
  v5 = *(v4 + 8 * (v2 + 2556));
  STACK[0x448] = ((4 - v3) & 0xFu) + v3 - 943747684;
  v6 = v5();
  v7 = *(v4 + 8 * ((15 * (v3 - ((((v2 - 665528456) & 0x27AB2F7F) + 2 * v3 + 58650109) & 0x232F3EA) != 943747684)) ^ v2));
  v8 = *(&off_1006B4E30 + (v2 ^ 0x247C)) - 12;
  v9 = *(&off_1006B4E30 + (v2 - 9465)) - 4;
  v10 = *(&off_1006B4E30 + (v2 ^ 0x2438)) - 8;
  STACK[0x4D8] = v6;
  return v7();
}

uint64_t sub_1002A5AB8@<X0>(uint64_t a1@<X8>)
{
  v8 = (v4 - 1) & 0xF;
  v12 = (v3 - v6) < 0x10 || (1 - v6 + v2 - v4 + v8) < 0x10 || a1 - v6 - v4 + v8 + 3 < (((v5 - 3293) | 0x2222) ^ (v5 - 1302624040) & 0x4DA46ED9u ^ 0x26A3uLL) || (1 - v6 + v1 - v4 + v8) < 0x10;
  return (*(v7 + 8 * ((61 * v12) ^ v5)))();
}

uint64_t sub_1002A5BA4@<X0>(uint64_t a1@<X8>)
{
  v12.val[1].i64[0] = (v4 + 13) & 0xF;
  v12.val[1].i64[1] = (v4 + 12) & 0xF;
  v12.val[2].i64[0] = (v4 + 11) & 0xF;
  v12.val[2].i64[1] = (v4 + 10) & 0xF;
  v12.val[3].i64[0] = (v4 + 9) & 0xF;
  v12.val[3].i64[1] = v4 & 0xF ^ 8;
  v7 = STACK[0x4D8];
  v13.val[0].i64[0] = (v4 + 7) & 0xF;
  v13.val[0].i64[1] = (v4 + 6) & 0xF;
  v13.val[1].i64[0] = (v4 + 5) & 0xF;
  v13.val[1].i64[1] = (v4 + 4) & 0xF;
  v13.val[2].i64[0] = (v4 + 3) & 0xF;
  v13.val[2].i64[1] = (v4 + 2) & 0xF;
  v13.val[3].i64[0] = (v4 + 1) & 0xF;
  v13.val[3].i64[1] = v4 & 0xF;
  v8 = vqtbl4q_s8(v13, xmmword_10066D0A0).u64[0];
  v9.i64[0] = 0x1313131313131313;
  v9.i64[1] = 0x1313131313131313;
  v12.val[0].i64[0] = (v4 - 1) & 0xF;
  v12.val[0].i64[1] = (v4 + 14) & 0xF;
  v13.val[2].i64[0] = vqtbl4q_s8(v12, xmmword_10066D0A0).u64[0];
  v13.val[2].i64[1] = v8;
  v13.val[0] = vrev64q_s8(vmulq_s8(v13.val[2], v9));
  *(STACK[0x4D8] - 15 + v4 - 1) = veorq_s8(veorq_s8(veorq_s8(*(v2 + v12.val[0].i64[0] - 15), *(v3 - 15 + v4 - 1)), veorq_s8(*(v12.val[0].i64[0] + a1 - 13), *(v1 + v12.val[0].i64[0] - 15))), vextq_s8(v13.val[0], v13.val[0], 8uLL));
  v10 = (((v5 | 0x1010) - 6855) | 0x425u) - 1311 == (v4 & 0x10);
  return (*(v6 + 8 * ((v10 | (8 * v10)) ^ (v5 | 0x1010))))(v12.val[0].i64[1]);
}

uint64_t sub_1002A5DB8@<X0>(uint64_t a1@<X8>)
{
  v9 = v6 ^ 0xFFFFFFFFFFFFE180;
  v11.val[0].i64[0] = (v4 - v5 + v9) & 0xF;
  v11.val[0].i64[1] = (v4 + -8 - v5 + 22) & 0xF;
  v11.val[1].i64[0] = (v4 + -8 - v5 + 21) & 0xF;
  v11.val[1].i64[1] = (v4 + -8 - v5 + 20) & 0xF;
  v11.val[2].i64[0] = (v4 + -8 - v5 + 19) & 0xF;
  v11.val[2].i64[1] = (v4 + -8 - v5 + 18) & 0xF;
  v11.val[3].i64[0] = (v4 + -8 - v5 + 17) & 0xF;
  v11.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(v7 + v4 + -8 - v5 + v9 + 1) = veor_s8(veor_s8(veor_s8(*(v2 + v11.val[0].i64[0] - 7), *(v3 + v4 + -8 - v5 + v9 + 1)), veor_s8(*(v11.val[0].i64[0] + a1 - 5), *(v1 + v11.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v11, xmmword_10066D0B0), 0x1313131313131313)));
  return (*(v8 + 8 * ((15008 * (-(v4 & 0x18) == -8 - v5)) ^ v6)))(xmmword_10066D0B0);
}

uint64_t sub_1002A5F78@<X0>(uint64_t a1@<X8>)
{
  v10 = v4 < (v5 ^ 0xEA9F1311uLL);
  *(v8 + v7) = *((v7 & 0xF) + a1 + 2) ^ *(v2 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ ((v7 & 0xF) * (((v6 - 122) & 0xFE) + 83));
  if (v4 >= (v5 ^ 0xEA9F1311uLL))
  {
    v10 = v3 + 1 < v4;
  }

  return (*(v9 + 8 * ((190 * !v10) ^ (v6 - 538))))(1842716926, -3936302034);
}

uint64_t sub_1002A6034()
{
  (*(v1 + 8 * (v0 ^ 0x11CC)))(&STACK[0x520], 0, 16);
  v2 = *(v1 + 8 * (v0 ^ 0x11C1));
  v3 = *(&off_1006B4E30 + v0 - 8276) - 4;
  STACK[0x468] = &STACK[0xA10];
  v2(v3);
  v4 = (*(v1 + 8 * (v0 + 4161)))(*(&off_1006B4E30 + (v0 ^ 0x246F)) - 8, &STACK[0x530], 560);
  v6 = &STACK[0x4F0] == -64 || *(&off_1006B4E30 + (v0 ^ 0x233D)) == 8;
  v7 = *(v1 + 8 * (((13 * (v0 ^ 0x99)) ^ v6) & 1 ^ v0));
  STACK[0x4E0] = v1;
  return v7(v4);
}

uint64_t sub_1002A6108()
{
  STACK[0x4B8] = v1;
  v3 = (*(v2 + 8 * (v0 + 11379)))(1032);
  v4 = (*(v2 + 8 * (v0 ^ 0x347D)))(1028);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((v6 * ((1331 * (v0 ^ 0x486) + 2010492257) & 0x882A5BF7 ^ 0x3B0E)) ^ v0)))(v4);
}

uint64_t sub_1002A6194(unint64_t a1)
{
  STACK[0x470] = a1;
  STACK[0x478] = v2;
  v3 = (v1 - 489436159) & 0x1D2C3FDD;
  LODWORD(STACK[0x4A0]) = v3;
  v4 = STACK[0x5CC];
  v5 = STACK[0x5D0];
  v6 = STACK[0x540];
  v7 = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x5CC]);
  v8 = STACK[0x560];
  v9 = STACK[0x600];
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x600]) + LODWORD(STACK[0x55C]);
  v10 = STACK[0x598];
  LODWORD(STACK[0x438]) = v9 - LODWORD(STACK[0x598]);
  v11 = STACK[0x5B0];
  v12 = v10 - LODWORD(STACK[0x5AC]);
  v13 = STACK[0x5F0];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x5AC]);
  v14 = STACK[0x59C];
  v15 = STACK[0x5A0];
  v16 = STACK[0x5D4];
  v17 = STACK[0x5D8];
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x5D4]) + LODWORD(STACK[0x5A0]);
  v18 = STACK[0x5E0];
  LODWORD(STACK[0x4B0]) = LODWORD(STACK[0x5E0]) ^ v13;
  v19 = STACK[0x5F4];
  LODWORD(STACK[0x410]) = v18 - LODWORD(STACK[0x5F4]);
  v20 = STACK[0x568];
  v21 = STACK[0x608];
  v22 = LODWORD(STACK[0x568]) - LODWORD(STACK[0x608]);
  v23 = STACK[0x588];
  v24 = STACK[0x544];
  LODWORD(STACK[0x498]) = LODWORD(STACK[0x544]) ^ LODWORD(STACK[0x588]);
  v25 = STACK[0x5BC];
  v26 = STACK[0x5C0];
  LODWORD(STACK[0x488]) = v16 - LODWORD(STACK[0x5BC]);
  LODWORD(STACK[0x460]) = v24 ^ v26;
  v27 = STACK[0x5C4];
  v28 = STACK[0x5C8];
  LODWORD(STACK[0x408]) = LODWORD(STACK[0x5C4]) ^ v26;
  LODWORD(STACK[0x480]) = v23 + v19;
  v29 = v21 + v14;
  v30 = v25 - LODWORD(STACK[0x56C]);
  v31 = v27 + v15;
  v32 = STACK[0x578];
  LODWORD(STACK[0x400]) = LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x578]);
  LODWORD(STACK[0x3D8]) = v14 - v4;
  v33 = STACK[0x5FC];
  LODWORD(STACK[0x3D0]) = LODWORD(STACK[0x5FC]) - v20;
  LODWORD(STACK[0x3D4]) = v32 - v33;
  v34 = STACK[0x57C];
  v35 = STACK[0x580];
  v36 = STACK[0x5A8];
  v37 = STACK[0x5A4];
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x5A8]) ^ 0x32F726E0 ^ (v7 - ((2 * v7) & 0x65EE4DC0) + 855058144);
  v38 = v6 + LODWORD(STACK[0x554]);
  v39 = STACK[0x570];
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x554]) - LODWORD(STACK[0x570]);
  v40 = STACK[0x5F8];
  LODWORD(STACK[0x3C4]) = v39 ^ LODWORD(STACK[0x5F8]);
  v41 = STACK[0x590];
  v42 = STACK[0x58C];
  LODWORD(STACK[0x3F0]) = v40 - LODWORD(STACK[0x590]);
  v43 = v41 - v42;
  v44 = v37 + v42;
  v45 = v37 - LODWORD(STACK[0x53C]);
  v46 = STACK[0x550];
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x53C]) - LODWORD(STACK[0x550]);
  v47 = v46 - LODWORD(STACK[0x564]);
  v48 = LODWORD(STACK[0x564]) - LODWORD(STACK[0x558]);
  LODWORD(STACK[0x3E4]) = v17 ^ LODWORD(STACK[0x558]);
  v49 = v17 + LODWORD(STACK[0x5EC]);
  v50 = STACK[0x5B4];
  LODWORD(STACK[0x398]) = LODWORD(STACK[0x5EC]) - LODWORD(STACK[0x5B4]);
  v51 = STACK[0x574];
  LODWORD(STACK[0x3C8]) = v50 + LODWORD(STACK[0x574]);
  LODWORD(STACK[0x428]) = v51 - v8;
  LODWORD(STACK[0x360]) = v5 ^ v8;
  v52 = STACK[0x530];
  LODWORD(STACK[0x3B0]) = v5 + LODWORD(STACK[0x530]);
  v53 = STACK[0x5DC];
  LODWORD(STACK[0x3B4]) = v52 - LODWORD(STACK[0x5DC]);
  v54 = v35 + v53;
  v55 = v35 - v28;
  v56 = STACK[0x538];
  LODWORD(STACK[0x390]) = v28 - LODWORD(STACK[0x538]);
  v57 = v34 ^ LODWORD(STACK[0x604]);
  v58 = STACK[0x5E4];
  v59 = STACK[0x5E8];
  LODWORD(STACK[0x388]) = LODWORD(STACK[0x604]) ^ LODWORD(STACK[0x5E4]);
  v60 = v58 ^ LODWORD(STACK[0x594]);
  v61 = v56 ^ LODWORD(STACK[0x534]);
  v62 = LODWORD(STACK[0x5B8]) + LODWORD(STACK[0x534]);
  v63 = v11 ^ LODWORD(STACK[0x5B8]);
  v64 = v11 - LODWORD(STACK[0x594]);
  v65 = v30;
  LODWORD(STACK[0x3DC]) = v30;
  v66 = v30 << (v3 + 48);
  v67 = v36 - LODWORD(STACK[0x548]);
  v68 = LODWORD(STACK[0x548]) ^ v59 ^ 0x6F50E69;
  LODWORD(STACK[0x440]) = (v65 - (v66 & 0xDEA1CD2) + 116723305) ^ v68;
  v69 = v68 ^ (v31 - ((2 * v31) & 0xDEA1CD2) + 116723305);
  v70 = LODWORD(STACK[0x4B0]) ^ 0x57D13FE9;
  LODWORD(STACK[0x420]) = v70 ^ (v38 - ((2 * v38) & 0xAFA27FD2) + 1473331177);
  LODWORD(STACK[0x3A8]) = (v64 - ((2 * v64) & 0xAFA27FD2) + 1473331177) ^ v70;
  LODWORD(STACK[0x368]) = v31 - v57;
  LODWORD(STACK[0x3E0]) = v44 + v57;
  v71 = v44 ^ v45;
  LODWORD(STACK[0x338]) = v71;
  LODWORD(STACK[0x3E8]) = v45 - v54;
  LODWORD(STACK[0x380]) = v54 + v22;
  LODWORD(STACK[0x3B8]) = v22 - v67;
  LODWORD(STACK[0x418]) = v67 + v38;
  LODWORD(STACK[0x458]) = v7 - v12;
  v72 = v12 - v49;
  v73 = v64 - v55;
  LODWORD(STACK[0x3F8]) = v55 - v48;
  v74 = v48 - v29;
  LODWORD(STACK[0x4B0]) = v29 - v43;
  LODWORD(STACK[0x490]) = v43 ^ v47;
  v75 = v47 ^ 0x4E6605F1;
  LODWORD(STACK[0x3A0]) = v69;
  v76 = STACK[0x3B0];
  v77 = v75 ^ LODWORD(STACK[0x3B0]);
  LODWORD(STACK[0x4A8]) = (v12 - v49 - ((2 * (v12 - v49)) & 0x9CCC0BE2) + 1315309041) ^ v77;
  v78 = (v69 - ((2 * v69) & 0x9CCC0BE2) + 1315309041) ^ v77;
  v79 = v49 ^ LODWORD(STACK[0x410]);
  v80 = LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x4C0]);
  v81 = STACK[0x3D4];
  LODWORD(STACK[0x410]) = LODWORD(STACK[0x4C0]) + LODWORD(STACK[0x3D4]);
  v82 = STACK[0x3D8];
  LODWORD(STACK[0x3D4]) = v81 ^ LODWORD(STACK[0x3D8]);
  v83 = STACK[0x3D0];
  LODWORD(STACK[0x378]) = LODWORD(STACK[0x3D0]) ^ v82;
  v84 = LODWORD(STACK[0x3C4]) + v83;
  v85 = LODWORD(STACK[0x3C4]) - v63;
  v86 = v63 - v61;
  LODWORD(STACK[0x4C0]) = v61 - v62;
  v87 = STACK[0x360];
  v88 = LODWORD(STACK[0x360]) + v62;
  LODWORD(STACK[0x3D0]) = v88;
  LODWORD(STACK[0x3C4]) = (v88 - ((2 * v88) & 0x2D8022BE) - 1765797537) ^ v71 ^ 0x96C0115F;
  v89 = v59 + LODWORD(STACK[0x54C]);
  v90 = LODWORD(STACK[0x584]) + LODWORD(STACK[0x54C]);
  v91 = STACK[0x60C];
  v92 = LODWORD(STACK[0x584]) + LODWORD(STACK[0x60C]);
  v93 = v76 - v89;
  v94 = v89 - LODWORD(STACK[0x3CC]);
  v95 = STACK[0x398];
  LODWORD(STACK[0x3B0]) = LODWORD(STACK[0x398]) + LODWORD(STACK[0x3CC]);
  v96 = v95 - v60;
  v97 = v92 + v60;
  v98 = LODWORD(STACK[0x460]) + v92;
  v99 = LODWORD(STACK[0x460]) + LODWORD(STACK[0x3C8]);
  v100 = STACK[0x3F4];
  LODWORD(STACK[0x3C8]) -= LODWORD(STACK[0x3F4]);
  v101 = LODWORD(STACK[0x3E4]) ^ v100;
  v102 = LODWORD(STACK[0x3E4]) + LODWORD(STACK[0x388]);
  LODWORD(STACK[0x460]) = v90 + LODWORD(STACK[0x388]);
  v103 = v90 - LODWORD(STACK[0x400]);
  v104 = LODWORD(STACK[0x400]) + LODWORD(STACK[0x3F0]);
  v105 = LODWORD(STACK[0x3F0]) ^ LODWORD(STACK[0x3B4]);
  v106 = STACK[0x390];
  v107 = LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x3B4]);
  LODWORD(STACK[0x344]) = v107;
  v108 = STACK[0x430];
  LODWORD(STACK[0x3B4]) = LODWORD(STACK[0x430]) ^ v106;
  v109 = STACK[0x438];
  LODWORD(STACK[0x388]) = v108 - LODWORD(STACK[0x438]);
  v110 = STACK[0x408];
  v111 = LODWORD(STACK[0x408]) ^ v109 ^ 0xEC400DD7;
  LODWORD(STACK[0x398]) = v111 ^ (v84 - ((2 * v84) & 0xD8801BAE) - 331346473);
  v112 = (v103 - ((2 * v103) & 0xD8801BAE) - 331346473) ^ v111;
  LODWORD(STACK[0x3E4]) = v78 + 1610548775;
  LODWORD(STACK[0x370]) = v73 ^ v72;
  LODWORD(STACK[0x3F4]) = v107 - v73 + 2039052305;
  v113 = LODWORD(STACK[0x368]) + 1976454712;
  v114 = v96 ^ LODWORD(STACK[0x368]);
  LODWORD(STACK[0x430]) = v114;
  v115 = v80 - v96;
  LODWORD(STACK[0x3CC]) = v80 ^ v93;
  LODWORD(STACK[0x3F0]) = v93 + v74 - 1199328051;
  v116 = LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x498]);
  LODWORD(STACK[0x358]) = LODWORD(STACK[0x498]) + v91;
  v117 = LODWORD(STACK[0x480]) - v91;
  v118 = STACK[0x488];
  LODWORD(STACK[0x35C]) = LODWORD(STACK[0x480]) + LODWORD(STACK[0x488]);
  LODWORD(STACK[0x368]) = v87 - v118 + v85 - 85369055;
  v119 = STACK[0x428];
  v120 = LODWORD(STACK[0x428]) + v110;
  LODWORD(STACK[0x31C]) = v103 - v120;
  v121 = v120 + 1911582379;
  v122 = v79 ^ v74;
  v123 = LODWORD(STACK[0x380]) - v79;
  LODWORD(STACK[0x320]) = v86 + LODWORD(STACK[0x380]);
  v124 = STACK[0x3A8];
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x3A8]) ^ v86;
  LODWORD(STACK[0x438]) = v104 - 307484756 + v124;
  v125 = v115 + 1100982913;
  LODWORD(STACK[0x348]) = v115 + 1100982913;
  v126 = STACK[0x3B8];
  LODWORD(STACK[0x354]) = v97 + LODWORD(STACK[0x3B8]) + 845321907;
  v127 = STACK[0x4D0];
  v128 = LODWORD(STACK[0x4D0]) + v119;
  v129 = v85 - v128;
  v130 = v128 - v101;
  v131 = STACK[0x3E0];
  v132 = v101 + LODWORD(STACK[0x3E0]) - 685731746;
  v133 = v112 - 1416790315;
  LODWORD(STACK[0x328]) = v112 - 1416790315;
  LODWORD(STACK[0x408]) = v113 + v105;
  v134 = STACK[0x4E0];
  v135 = LODWORD(STACK[0x3E8]) + v105;
  LODWORD(STACK[0x3E8]) = v126 + LODWORD(STACK[0x3E8]) - 216849293;
  LODWORD(STACK[0x310]) = LODWORD(STACK[0x338]) ^ v99;
  v136 = STACK[0x4C8];
  LODWORD(STACK[0x400]) = v121 + LODWORD(STACK[0x4C8]);
  v137 = v99 - 1100565869 + v136;
  LODWORD(STACK[0x3D8]) = v137;
  LODWORD(STACK[0x304]) = v131 - v116;
  v138 = v116 ^ v102;
  v139 = v102 + LODWORD(STACK[0x3F8]);
  v140 = LODWORD(STACK[0x3F8]) + v104 - 2046364171;
  LODWORD(STACK[0x3E0]) = v140;
  v141 = STACK[0x420];
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x420]) - v84;
  v142 = v141 ^ LODWORD(STACK[0x378]);
  v143 = STACK[0x440];
  LODWORD(STACK[0x480]) = LODWORD(STACK[0x440]) + LODWORD(STACK[0x378]);
  LODWORD(STACK[0x440]) = v117 - 1725152823 + v143;
  v144 = LODWORD(STACK[0x3A0]) - v94;
  LODWORD(STACK[0x3B8]) = LODWORD(STACK[0x4C0]) ^ v94 ^ 0x9441F0B3;
  v145 = STACK[0x418];
  v146 = LODWORD(STACK[0x418]) - v117;
  LODWORD(STACK[0x498]) = v98;
  LODWORD(STACK[0x3F8]) = (v98 - v145) ^ 0xBAEF82FE;
  LODWORD(STACK[0x3DC]) = v139 - 1557375045;
  LODWORD(STACK[0x2D0]) = v122;
  LODWORD(STACK[0x420]) = v122 ^ 0x81ADA57D;
  v147 = v114 ^ (140697210 - (v122 ^ 0x81ADA57D)) ^ 0xA93A520D ^ (v139 - ((2 * (v139 - 1557375045)) & 0x96AA6A50) - 293499677);
  v148 = v97 - LODWORD(STACK[0x3D4]);
  v149 = LODWORD(STACK[0x3D4]) - LODWORD(STACK[0x388]);
  v150 = LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x458]);
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x458]) ^ 0x5A58B27C;
  LODWORD(STACK[0x3A8]) = v123;
  v123 ^= 0xE1480A66;
  LODWORD(STACK[0x418]) = v123;
  v151 = v147 + v123 + LODWORD(STACK[0x3F4]);
  LODWORD(STACK[0x350]) = v132;
  v152 = STACK[0x3C4];
  LODWORD(STACK[0x428]) = LODWORD(STACK[0x3C4]) - 1264333846;
  LODWORD(STACK[0x2F8]) = v146 + 1389775096;
  v153 = STACK[0x398];
  LODWORD(STACK[0x330]) = LODWORD(STACK[0x398]) - 704554773;
  LODWORD(STACK[0x2C0]) = v129;
  LODWORD(STACK[0x488]) = v129 ^ 0xFE97A0A6;
  LODWORD(STACK[0x2BC]) = v149;
  LODWORD(STACK[0x360]) = v149 ^ 0xCE6BB6BF;
  v154 = (v153 - (v152 + v146) + (v129 ^ 0xFE97A0A6) + (v149 ^ 0xCE6BB6BF) - 829996023 + (((v151 & v132) + (v151 | v132) + LODWORD(STACK[0x3E4])) ^ v125)) ^ v137;
  LODWORD(STACK[0x3C4]) = v130;
  LODWORD(STACK[0x3D4]) = v130 ^ 0x2DA27244;
  v155 = v154 - (v130 ^ 0x2DA27244) - ((2 * (v154 - (v130 ^ 0x2DA27244))) & 0x575319E);
  v156 = STACK[0x3B0];
  v157 = LODWORD(STACK[0x3D0]) - LODWORD(STACK[0x3B0]);
  LODWORD(STACK[0x30C]) = v157;
  v158 = LODWORD(STACK[0x3C8]) ^ v156;
  v159 = v127;
  v160 = LODWORD(STACK[0x3C8]) - v127;
  v161 = v159 + LODWORD(STACK[0x3B4]);
  v162 = LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x358]);
  v163 = STACK[0x410];
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x358]) - LODWORD(STACK[0x410]);
  v164 = v163 - LODWORD(STACK[0x490]);
  v165 = STACK[0x35C];
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x35C]);
  v166 = STACK[0x4B0];
  v167 = v165 - LODWORD(STACK[0x4B0]);
  v168 = STACK[0x31C];
  LODWORD(STACK[0x3B4]) = LODWORD(STACK[0x31C]) + 60979572;
  LODWORD(STACK[0x338]) = v138 + 1000582043;
  LODWORD(STACK[0x344]) = v167 ^ 0xC4AC125E;
  LODWORD(STACK[0x308]) = v150 - 250928690;
  LODWORD(STACK[0x398]) = v160;
  LODWORD(STACK[0x410]) = v160 ^ 0x415894;
  LODWORD(STACK[0x3D0]) = v158;
  v169 = v158 ^ 0xDD8A9A62;
  v170 = v135 - 56682996;
  LODWORD(STACK[0x318]) = v148 - 1108647016;
  v171 = STACK[0x390];
  v172 = LODWORD(STACK[0x390]) - 209771045;
  LODWORD(STACK[0x2E8]) = v142;
  v173 = v142 ^ 0xB41538FE;
  v174 = v148 - (v142 ^ 0xB41538FE) - v171 - 898875971 + (v140 ^ (v135 - ((2 * (v135 - 56682996)) & 0xDFAC2D86) - 327865137) ^ 0xEFD616C3 ^ ((v167 ^ 0xC4AC125E) - v168 - v138 - v150 - 810632925 + ((((v155 + 45783247) ^ v160 ^ 0x415894) - (v158 ^ 0xDD8A9A62)) ^ v133)));
  v175 = LODWORD(STACK[0x4A8]) - 313815369;
  v176 = STACK[0x400];
  v177 = LODWORD(STACK[0x400]) ^ (LODWORD(STACK[0x4A8]) - ((2 * v175) & 0x9A193692) - 1168627200) ^ 0xCD0C9B49 ^ v174;
  v178 = STACK[0x460];
  LODWORD(STACK[0x4A8]) = v166 ^ LODWORD(STACK[0x460]);
  v179 = v162 - 2759447;
  v180 = v178 + 1246426889;
  v181 = v164 - 1843728531;
  v182 = STACK[0x408];
  v183 = v157 ^ 0x1C6A6DDA;
  v184 = v178 - LODWORD(STACK[0x408]) - (v157 ^ 0x1C6A6DDA) + v164 + v162 - 2759447 + v161 - 1207194521 + v177;
  v185 = LODWORD(STACK[0x3CC]) - 78215660;
  v186 = STACK[0x368];
  v187 = STACK[0x440];
  v188 = LODWORD(STACK[0x368]) - LODWORD(STACK[0x3CC]) + 78215660 + (v184 ^ LODWORD(STACK[0x440]));
  v189 = v161 - 609892879;
  v190 = v161 + 129993875;
  v191 = v144 + 1911397181;
  v192 = STACK[0x3B8];
  v193 = LODWORD(STACK[0x310]) ^ 0xF184C41;
  v194 = STACK[0x354];
  v195 = STACK[0x3A0];
  v196 = LODWORD(STACK[0x370]) ^ 0x1E562CD0;
  v197 = LODWORD(STACK[0x480]) + 1818306210;
  v198 = LODWORD(STACK[0x304]) ^ 0x25D4AFAA;
  v199 = LODWORD(STACK[0x3B8]) - v144 + LODWORD(STACK[0x3A0]) + LODWORD(STACK[0x354]) + v193 + v196 - LODWORD(STACK[0x480]) + 565263905 + ((v188 - ((2 * v188) & 0xA52E2604) + 1385632514) ^ v198);
  LODWORD(STACK[0x4D0]) = v199 - ((2 * v199) & 0x748E9BE2);
  LODWORD(STACK[0x4B0]) = ((2 * (v190 ^ v170 ^ v172)) ^ 0x10227B96) - 1649254134;
  v200 = LODWORD(STACK[0x320]) ^ 0x7A6FBC4B;
  v201 = 2 * (((v200 + 1873525440 + (v187 ^ 0x4D3F6EE0)) ^ 0x3046CEDF) + v176) + 641776349;
  LODWORD(STACK[0x2A8]) = v167;
  v202 = (LODWORD(STACK[0x30C]) ^ v167 ^ 0x4D94E8E4) + 554698954;
  v203 = STACK[0x3D8];
  v204 = 2 * (v202 ^ LODWORD(STACK[0x3D8])) + 1030198368;
  LODWORD(STACK[0x3CC]) = v180;
  v205 = LODWORD(STACK[0x430]) ^ v180;
  LODWORD(STACK[0x290]) = v183;
  v206 = v205 ^ v183 ^ v182 ^ v192 ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x29C]) = v191;
  LODWORD(STACK[0x258]) = v169;
  LODWORD(STACK[0x2C8]) = v185;
  v207 = v206 ^ v191 ^ v169 ^ v185 ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x3E4]);
  v208 = LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x418]) ^ v195 ^ v194;
  LODWORD(STACK[0x2E0]) = v175;
  v209 = v208 ^ v175 ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x3F8]);
  LODWORD(STACK[0x3B0]) = v181;
  v210 = v207 ^ v209 ^ v181 ^ v176;
  v211 = LODWORD(STACK[0x4C8]) + 795906913;
  v212 = LODWORD(STACK[0x4A8]) + 651630480;
  v213 = LODWORD(STACK[0x2F0]) ^ 0xF1BAB3CF;
  v214 = v203 ^ LODWORD(STACK[0x344]) ^ v213;
  LODWORD(STACK[0x2A0]) = v212;
  LODWORD(STACK[0x2DC]) = v173;
  LODWORD(STACK[0x2A4]) = v211;
  v215 = v210 ^ v214 ^ v212 ^ v173 ^ v211 ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x3E8]);
  LODWORD(STACK[0x390]) = v179;
  LODWORD(STACK[0x288]) = v193;
  LODWORD(STACK[0x2AC]) = v170;
  v216 = v179 ^ v193 ^ v186 ^ v170 ^ LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x3E0]) ^ v200;
  v217 = v200;
  LODWORD(STACK[0x2B0]) = v196;
  v218 = v216 ^ v196 ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x338]);
  LODWORD(STACK[0x294]) = v189;
  v219 = STACK[0x438];
  v220 = v198 ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x488]);
  LODWORD(STACK[0x31C]) = v172;
  v221 = v215 ^ v218 ^ v189 ^ v220 ^ v172 ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x440]);
  LODWORD(STACK[0x298]) = v197;
  LODWORD(STACK[0x378]) = v221 ^ v197 ^ 0x17EDDE3C;
  v222 = STACK[0x4B8];
  *v222 = 0x64C2E1497E34EE43;
  STACK[0x518] = 0x53833A680ED2DCC3;
  v223 = STACK[0x4B0];
  v224 = LODWORD(STACK[0x4B0]) ^ 0xE7B11C55;
  v225 = LOBYTE(STACK[0x4B0]) ^ 0x55 ^ HIBYTE(v224) ^ BYTE1(v224) ^ BYTE2(v224);
  LODWORD(STACK[0x480]) = v201 ^ 0x9FB8478A;
  LODWORD(STACK[0x460]) = v201 ^ 0x8A ^ ((v201 ^ 0x478A) >> 8) ^ ((v201 ^ 0x9FB8478A) >> 16) ^ ((v201 ^ 0x9FB8478A) >> 24) ^ 0xC6;
  v226 = v223 ^ 0x72F1F1A9;
  v227 = v222[(v222[v222[1] & 1] & 1) == 0] & 1;
  v228 = ((v227 - 427310035) ^ (v227 + 392703309) ^ ((v227 ^ 0xEE9774BD) + 955315378)) - 1314933987;
  v229 = STACK[0x4A0];
  v230 = -105 * (LODWORD(STACK[0x4A0]) ^ 0xD2);
  v231 = LODWORD(STACK[0x4D0]) + 977751537;
  LODWORD(STACK[0x278]) = v213;
  v232 = ((v231 ^ v213) - LODWORD(STACK[0x3F0])) ^ v219;
  LODWORD(STACK[0x28C]) = v217;
  LODWORD(STACK[0x488]) = v224;
  v233 = v224 ^ 0x6BE78015;
  LODWORD(STACK[0x3C8]) = v204 ^ 0xAFCD607D;
  v234 = (v204 ^ 0xAFCD607D) & 7 ^ 2;
  if (((v204 ^ 0xAFCD607D) & 7) == 2)
  {
    v235 = 0;
  }

  else
  {
    v235 = 255;
  }

  LODWORD(STACK[0x4B0]) = v234;
  v236 = -v234 & 7;
  LODWORD(STACK[0x4D0]) = v236;
  if (((v204 ^ 0x7D) & 7) == 2)
  {
    v237 = 0;
  }

  else
  {
    v237 = ~(v235 << v236);
  }

  LODWORD(STACK[0x458]) = (v233 & v237);
  LODWORD(STACK[0x358]) = v225 ^ 0xC0;
  LODWORD(STACK[0x2D8]) = v233;
  v238 = v228 < 0x8807332B;
  v239 = 0x747DDC96BBD4DE5 * (*STACK[0x4B8] ^ 0xA1A1A1A1A1A1A1A1);
  v240 = (v239 ^ 0x47B06012FF61E83FLL) - ((v239 ^ 0x47B06012FF61E83FLL) >> (v230 ^ 0xE5u));
  v241 = v240 + (v240 >> 16) - ((v240 + (v240 >> 16)) >> 8);
  v242 = v241 ^ v226;
  v241 -= 0x46585549F617C75CLL;
  v243 = v242 ^ ((v241 ^ v239) - ((v241 ^ v239) >> 32) + (((v241 ^ v239) - ((v241 ^ v239) >> 32)) >> 16) - (((v241 ^ v239) - ((v241 ^ v239) >> 32) + (((v241 ^ v239) - ((v241 ^ v239) >> 32)) >> 16)) >> 8));
  if (v228 >= 0x8807332B)
  {
    v238 = v228 > 0x8807332C;
  }

  return (*(v134 + 8 * ((2 * v238) | (4 * v238) | v229)))(469445982, v243, 8933);
}