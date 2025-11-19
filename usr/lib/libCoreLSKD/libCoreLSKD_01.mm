uint64_t sub_37D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 16) + v5;
  v10 = *(*(a5 - 132921991) + (((v9 & 0xFFFFFFF8) + 916900720) & *(v6 - 464343834)));
  v11 = (__ROR8__(v9 & ((v8 + 2395) - 2576), 8) + v10) ^ 0x89F455BA1C0B015;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((v13 + v12 - ((2 * (v13 + v12)) & 0x46554E466823B94ELL) + 0x232AA7233411DCA7) ^ 0xFBFB2FDA329F64E7, 8);
  v15 = (v13 + v12 - ((2 * (v13 + v12)) & 0x46554E466823B94ELL) + 0x232AA7233411DCA7) ^ 0xFBFB2FDA329F64E7 ^ __ROR8__(v12, 61);
  v16 = (((2 * (v14 + v15)) & 0x81A299505B1C315ALL) - (v14 + v15) - 0x40D14CA82D8E18AELL) ^ 0xB8CF4004CC93662DLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0xD28330148995754) - (v18 + v17) + 0x796BE67F5BB35455) ^ 0xC7C71DE016AA476DLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8A4943FA3C1BB996;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8F826D48DCAD4006;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x3E735FFD9083B0A3;
  v26 = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v9 & 7u))) ^ *v9;
  return (*(a3 + 8 * v8))(a1, a2);
}

uint64_t sub_37F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = (&STACK[0xAE4] ^ 0xCC9FFFDFFEA9B5F0) + 0x3360002001564A10 + ((2 * &STACK[0xAE4]) & 0x993FFFBFFD536BE0);
  LODWORD(v13) = ((v13 % (((v7 - 406) | 0xACu) - 392)) ^ 0xDFFFFFDF) + 2 * ((v13 % (((v7 - 406) | 0xACu) - 392)) & 0x1F) - 1176408081;
  STACK[0x870] = ((v13 ^ 0x22B995EA) + 1151796652) ^ v13 ^ ((v13 ^ 0x154F2483) + 1934734531) ^ ((v13 ^ 0x21EC2318) + 1207087962) ^ ((v13 ^ 0x8FFBFDCF) - 370840177);
  STACK[0x940] = &STACK[0x1190] + v8 + (~((&STACK[0x1190] + v8) << ((v9 - v10 + 27) ^ 0xA1u)) & 0x10);
  v14 = *(v12 + 8 * v7);
  LODWORD(STACK[0x8F0]) = 410195380;
  STACK[0x8E8] = 1913485891 * ((((v11 - 208) | 0x366085A54061D524) - (v11 - 208) + ((v11 - 208) & 0xC99F7A5ABF9E2AD8)) ^ 0x155178E2DD8D320ELL);
  v15 = (a7 - 381820198) & 0x9D46F286;
  LODWORD(STACK[0x860]) = v15 ^ 0x88;
  LODWORD(STACK[0x868]) = v15;
  LODWORD(STACK[0x858]) = v15 ^ 0xD8F49353;
  LODWORD(STACK[0x928]) = 1664525;
  LODWORD(STACK[0x910]) = a7 + 44157040;
  LODWORD(STACK[0x908]) = (a7 + 44157040) ^ 0xEB;
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = 434465113 * ((((v11 - 208) | 0x3A371DDB736E5E95) - (v11 - 208) + ((v11 - 208) & 0xC5C8E2248C91A168)) ^ 0x3311B40486CC74CALL);
  v18 = STACK[0xE28];
  STACK[0x878] = STACK[0xF90];
  STACK[0x8A0] = v17;
  STACK[0x890] = v17 + 5119;
  *&STACK[0x8D0] = vdupq_n_s32(0x2F74AD6u);
  *&STACK[0x8C0] = vnegq_f32(v16);
  *&STACK[0x8B0] = vdupq_n_s32(0x817BA56B);
  return v14(131, 675, 758);
}

uint64_t sub_38300(uint64_t a1, uint64_t a2)
{
  v6 = v3[104];
  v7 = v3[49];
  v8 = (v4 - 2038114465) + STACK[0x9A8] + (((v2 - (v4 - 2038115374)) | (v4 - 2038115374 - v2)) << 24 >> 31) + 0x3C9BC7B9E537474BLL;
  v3[183] = *(v5 + 8 * (v4 - 2038115477));
  v9 = STACK[0x368];
  return (*(v5 + 8 * (v4 - 2038115280)))(v7, a2, 938337180);
}

uint64_t sub_383A8@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_3843C@<X0>(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, void *a5, uint64_t a6)
{
  *a5 = a1;
  *(a6 - 0x1E3266CB1306A5D8) = *(a1 + 8) + 40 * (a4 + 101 * ((v7 - 295) ^ 0x364u) - 1854553772);
  return (*(v6 + 8 * (v7 - 295)))();
}

uint64_t sub_384A0@<X0>(int a1@<W8>)
{
  v2 = STACK[0xAD8];
  *v2 = 0;
  v2[1] = 0;
  return (*(v1 + 8 * (((LODWORD(STACK[0xD5C]) == 65021204) * ((a1 + 2038115388) ^ 0x797B26EA)) ^ a1)))();
}

uint64_t sub_38544()
{
  v3 = STACK[0x8A0];
  v4 = STACK[0x8B0];
  return (*(v2 + 8 * (((*(v1 + 1432) == 0) * (((v0 - 1149) ^ 0xFFFFFE65) + ((v0 - 1151) ^ 0x1A5))) | (v0 - 1151))))();
}

uint64_t sub_385FC()
{
  *v5 = v1;
  v6 = *(v3 + 16);
  v5[2] = v6;
  v5[3] = v6 + v0;
  return (*(v4 + 8 * ((78 * (*(v3 + 36) == ((v2 - 1455615196) & 0x56C2EDDA ^ 0xFFFFF793) + (v2 ^ 0x96C))) ^ v2)))();
}

uint64_t sub_38684(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v11 = a2 + STACK[0x978];
  STACK[0x978] += 64;
  v12 = v9 - 208;
  *(v12 + 8) = STACK[0x940];
  *v12 = (v7 + 1481) ^ ((((v5 | v8) - (v8 & v5)) ^ a3) * v6);
  (*(v10 + 8 * (v7 ^ a5)))(v9 - 208);
  STACK[0x930] = v11;
  *v12 = v11;
  *(v9 - 200) = v7 + 1600728529 * LODWORD(STACK[0x910]) + 1788780612;
  (*(STACK[0x948] + 8 * (v7 + 1985)))(v9 - 208);
  v13 = *STACK[0x928];
  v14 = *STACK[0x368];
  v15 = *STACK[0x360];
  return (*(STACK[0x948] + 8 * v7))(1915944507, 1463, 0xD8D188F9068EB840, 2256851803, 0x8A4943FA3C1BB996, 0x3E735FFD9083B0A3, 2038115493, 0x262F3FDFCFE41F4CLL);
}

uint64_t sub_387B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a4 + a7 + 41;
  v10 = STACK[0x958];
  LODWORD(STACK[0xFAC]) = LODWORD(STACK[0x1080]) + 154159867;
  v11 = *(v7 + 1664);
  *(v7 + 1488) = *(v8 + 8 * v9);
  return (*(v8 + 8 * (v9 ^ 0xC1)))();
}

uint64_t sub_3885C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v12 - 1;
  *(v10 + (v14 + v8)) = *(a3 + (*v11 + v14 + 16));
  return (*(v13 + 8 * (((v14 == 0) * (((a2 + v9 + 98) | 0x398) + 2896)) ^ a8)))();
}

uint64_t sub_388A8()
{
  *(v0 + 344) = STACK[0x370];
  *(v0 + 64) = &STACK[0xF84];
  LODWORD(STACK[0xD10]) = -463930503;
  return (*(v1 + 1832))(624788556);
}

uint64_t sub_388EC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v5 - 1;
  *(a1 + v7 + v4) = *(v3 + v7 + v2);
  return (*(v6 + 8 * (((v7 != 0) | (2 * (v7 != 0))) ^ (a2 + 913))))();
}

uint64_t sub_3891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, int a23, int a24)
{
  v28 = ((&a22 & 0x931067E6 | ~(&a22 | 0x931067E6)) ^ 0x8B503CA5) * v25;
  a22 = &a12;
  a23 = v28 ^ 0x7E746F71;
  a24 = (v27 + 178) ^ v28;
  v29 = (*(v24 + 8 * (v27 ^ 0x8F1)))(&a22);
  return (*(v24 + 8 * v26))(v29);
}

uint64_t sub_389E4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v15 = (((a1 ^ (a1 >> 30) ^ v6) + v7) ^ ((a1 ^ (a1 >> 30) ^ v8) + v9) ^ ((a1 ^ (a1 >> 30) ^ v10) + v11)) * a4;
  *(a3 + 4 * a5) = v5 + v15;
  return (*(a2 + 8 * (((a5 > 0x26E) * v12) | v14)))((a5 + v13 + v15));
}

uint64_t sub_38A44@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v10 = a7 + 1044 * a6;
  *(v7 + 418) = *(v10 + 28);
  *(v7 + 419) = *(v10 + 32);
  *(v7 + 417) = 0;
  *(v7 + 420) = 0;
  return (*(v8 + 8 * (((a1 == 2) * (((v9 + 2016) ^ 0xE8D) - 1414)) ^ (v9 + 203))))();
}

uint64_t sub_38A98@<X0>(uint64_t a1@<X8>)
{
  STACK[0x9B8] = *v2;
  v4 = *v1;
  LODWORD(STACK[0xBB4]) = *v1;
  v5 = STACK[0xAF0];
  STACK[0x9C8] = *(STACK[0xAF0] + 496);
  LODWORD(STACK[0xAB8]) = *(v5 + 508);
  STACK[0xF08] = *STACK[0xE30];
  STACK[0xEC8] = *STACK[0xE88];
  LODWORD(STACK[0xB1C]) = v4;
  v6 = STACK[0x9A0];
  *v6 = 0;
  v6[1] = 0;
  STACK[0xD68] = *(v3 + 8 * a1);
  v7 = STACK[0x280];
  v8 = STACK[0x368];
  return (*(v3 + 8 * ((a1 + 471) ^ a1)))();
}

uint64_t sub_38B54@<X0>(int a1@<W8>)
{
  *v1 = 1;
  *(STACK[0xEA8] + 4) = v3;
  return (*(v4 + 8 * (((*v2 == 0) * (5 * (a1 ^ 0x48B) - 2248)) ^ a1)))();
}

uint64_t sub_38C04(uint64_t a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(v7 + (a4 + v6 + 1427)) << 24) | (*(v7 + (v8 ^ (v6 + 3443)) + a4) << 16) | (*(v7 + (a4 + v6 + 1429)) << 8) | *(v7 + a4 + v6 + 10 * (v8 ^ 0x8AEu));
  v10 = a4 + 869318072 + (v9 ^ 0x2BEE77BE) - 672027306 + ((2 * v9) & 0x57DCEF7C);
  v11 = v10 < 0x6C546C0A;
  v12 = v10 > a2;
  if (a2 < a3 != v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return (*(a6 + 8 * ((7 * !v13) ^ v8)))(64978359);
}

uint64_t sub_38CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(v14 + (3013 * v8 + 4661111) % 0x1188u);
  v17 = 9002 * (v16 | ((v16 < (v9 - 92)) << 8)) + 108411086 - ((((9002 * (v16 | ((v16 < (v9 - 92)) << 8)) + 108411086) * v10) >> 32) >> 12) * v11;
  v18 = *(a8 + 4 * ((v17 ^ 0x3B2BF5A3325F7E2BLL) + ((2 * v17) & 0x7C56)) + 0x1350297336820754);
  v19 = 3013 * ((HIBYTE(v18) & 0x16 ^ 0x14) + (HIBYTE(v18) & 0xE9 ^ 0xD36));
  v20 = v13 + 9002 * v8 - ((((v13 + 9002 * v8) * v10) >> 32) >> 12) * v11;
  v21 = *(v14 + 3013 * (BYTE2(v18) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v18) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v22 = *(v14 + v19 - 4488 * (((15311827 * v19) >> 32) >> 4));
  v23 = v22 & 0xE1 ^ 0x33;
  v24 = v22 ^ 2;
  v25 = 3013 * ~(v18 >> 8) + 10093550;
  v26 = *(v14 + v25 - 4488 * (((30623653 * v25) >> 32) >> 5));
  v27 = (v21 & 0x83 | 0x58) ^ v21 & 0xB0;
  LOBYTE(v25) = *(v14 + (3013 * (((v18 ^ 0x3CC96A0B) - 2006539920) ^ ((v18 ^ 0x3FFA2668) - 1957303027) ^ ((v18 ^ 0x3334C95u) - 1214478350)) + 1737689807) % 0x1188);
  LOBYTE(v18) = v26 & 0x99 ^ 0x8F;
  v28 = v22 ^ (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (((2 * (v22 & 3)) ^ 0x62) & v24 ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23));
  v29 = v21 ^ (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ 0x33;
  v30 = (v26 ^ (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * (((2 * (v26 & 3)) ^ 0x1A) & (v26 ^ 2) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x679776;
  v31 = v25 & 0x15 ^ 0x49;
  LOBYTE(v18) = (((2 * (v25 & 3)) ^ 0x96) & 2 | v31) ^ ((2 * (v25 & 3)) ^ 0x96) & v25;
  v32 = ((v28 ^ 0xE1) << 16) | (v29 << 8);
  v33 = (v31 & 0xFD | (2 * (((v31 & 0xFD | (2 * (v18 & 1))) ^ v25 & (2 * v18)) & 1))) ^ v25 & (2 * ((v31 & 0xFD | (2 * (v18 & 1))) ^ v25 & (2 * v18)));
  v34 = (v31 & 0xFD | (2 * (v33 & 1))) ^ v25 & (2 * v33);
  v35 = (v31 & 0xFD | (2 * (v34 & 1))) ^ v25 & (2 * v34);
  LOBYTE(v25) = v25 ^ (2 * ((v31 & 0xFD | (2 * (v35 & 1))) ^ v25 & (2 * v35)));
  *(v12 + 4 * ((v20 ^ 0x37767A3FAFCEE7BDLL) + ((2 * v20) & 0x4F7A)) + 0x2226170140C4610CLL) = ((v25 & 0xFE ^ 0xFFFFFFEF) & (((v30 & ~v32 | v32 & 0x986800) << 8) ^ 0xB3521732) | v25 & 0xCD) ^ 0xE08107C1;
  return (*(v15 + 8 * ((60 * (v8 != 255)) ^ v9)))();
}

uint64_t sub_39108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  a11 = v15 - 976236666 - 434465113 * (&a9 ^ 0xF5A22A5F);
  a9 = v12;
  (*(v13 + 8 * (v15 ^ (v14 + 2802))))(&a9);
  *(v11 + 12) = a10;
  a11 = v15 - 976236666 - 434465113 * (((&a9 | 0x1B1D1AB3) - (&a9 & 0x1B1D1AB3)) ^ 0xEEBF30EC);
  a9 = v12;
  v16 = (*(v13 + 8 * (v15 - 976234722)))(&a9);
  *(v11 + 16) = a10;
  return (*(v13 + 8 * ((3548 * (v15 >= 3 * (v15 ^ (v14 + 938)) - 1995534032)) ^ (v15 - 976236298))))(v16);
}

uint64_t sub_3923C()
{
  **(v2 + 136) = 0;
  **(v2 + 720) = 0;
  return (*(v3 + 8 * (v1 ^ (v0 + 3052) ^ (3355 * (v1 == -1551525334)))))();
}

uint64_t sub_39380()
{
  v3 = (*(v2 + 8 * (v1 + 1592)))();
  v4 = STACK[0x948];
  *(v0 + 48) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_393E0@<X0>(int a1@<W8>)
{
  v3[112] = v1;
  v3[145] = 0;
  v3[107] = 0;
  LODWORD(STACK[0xE1C]) = 65021204;
  LODWORD(STACK[0xDEC]) = v2;
  LODWORD(STACK[0xA94]) = 65021204;
  return (*(v4 + 8 * ((((a1 - 1575602219) < 0x1B2F7C47) * ((a1 + 330) ^ 0x5CE)) ^ (a1 | 0x318))))();
}

uint64_t sub_3947C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(v2 + 2) ^ 0xFE4FFE87BB76BB96) + 0x5BFA25FF548BCDEELL + ((2 * *(v2 + 2)) & 0x176ED772CLL);
  *(v4 + 1464) = *(v5 + 8 * v3);
  return (*(v5 + 8 * (v3 ^ 0xDE)))(a1, a2, 938337180);
}

uint64_t sub_396B0()
{
  v4 = *(v2[172] - 0x25D63ACE32FF7B22);
  v5 = *(v0 + 112);
  v2[140] = v0 + 112;
  v6 = v2[72];
  STACK[0x970] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x1FB ^ (v1 + 727))))();
}

uint64_t sub_396FC()
{
  *v0 = (((STACK[0x8D0] - v2) | (v2 - STACK[0x8D0])) >> 31) ^ 0x80000000;
  (*(v1 + 8 * (v2 ^ 0xA9C)))(STACK[0x940]);
  v3 = STACK[0x280];
  return (*(STACK[0x948] + 8 * ((((v2 + 2020682756) | 0x10A00A1) ^ 0x797B2CBF) + v2)))();
}

uint64_t sub_3978C()
{
  *v0 = 0;
  v0[1] = 0;
  v4 = (*(v3 + 8 * (v1 + 1132)))(*(v2 + 960));
  v5 = *(v2 + 912);
  return (*(STACK[0x948] + 8 * v1))(v4);
}

uint64_t sub_398EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = v7 - a4 - 192;
  v11 = (*(v9 + 8 * (v7 + 2636)))(*(*(v5 + 8 * (v7 ^ 0xC3)) - 589776018), *(v8 + 544), v4);
  return (*(v9 + 8 * (((v6 == 65021204) * (v7 - 2038113410 + v10 - 1291)) ^ v7)))(v11);
}

uint64_t sub_39A28(uint64_t a1)
{
  *v2 = v5;
  *(v3 + 28) = 0;
  v8 = v3 + 28;
  *(v8 - 4) = v4;
  STACK[0xCD8] = v8;
  *(v8 + 4) = a1;
  *(v8 + 12) = v1;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  STACK[0xB88] = v8 + 20;
  *(v8 + 36) = 0;
  STACK[0xCC0] = v8 + 36;
  STACK[0xC98] = v8 + 40;
  STACK[0xF98] = *(v7 + 8 * v6);
  v9 = STACK[0x368];
  return (*(v7 + 8 * (v6 ^ 0x6AE ^ (v6 - 172094321) & 0xA41F736)))();
}

uint64_t sub_39AF8()
{
  v7 = *(v0 + 4 * (v3 - 1));
  *(v0 + 4 * v3) = *(v5 + 4 * v4) + v4 + ((1664525 * (v7 ^ (v7 >> 30))) ^ *(v0 + 4 * v3));
  v8 = STACK[0x930];
  v9 = v6 - 208;
  *(v9 + 32) = STACK[0x930] + 623;
  *(v9 + 4) = v2 - 551106918 - v8;
  *(v9 + 8) = v8 + v2 + 1596328632;
  *(v9 + 40) = ((v2 - 551106918) ^ 0x89) - v8;
  *v9 = (v2 - 551106781) ^ v8;
  *(v9 + 28) = -v8;
  *(v9 + 16) = v3 + 1 - v8;
  v10 = (*(v1 + 8 * (v2 - 2038112765)))(v6 - 208);
  return (*(STACK[0x948] + 8 * *(v6 - 184)))(v10);
}

uint64_t sub_39BCC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(v3 + v4) = ((571 * (v2 ^ 0x18E) + 1415459719) & 0xABA1CF2F ^ 0x72C) + a2;
  v6 = v5 - 208;
  *v6 = 0;
  *(v6 + 8) = (v2 - 626832115) ^ (1938608989 * ((2 * ((v5 - 208) & 0x578205F0) - (v5 - 208) + 679344650) ^ 0x525DA4FC));
  (*(a1 + 8 * (v2 + 2373)))(v5 - 208);
  *(*(&off_18D8F0 + (v2 ^ 0x1D9)) - 1633240978) = 0u;
  *v6 = 0;
  *(v5 - 200) = (v2 - 734251951) ^ (1913485891 * ((-510543433 - ((v5 - 208) | 0xE191B9B7) + ((v5 - 208) | 0x1E6E4648)) ^ 0x8382A162));
  v7 = (*(STACK[0x948] + 8 * (v2 + 2347)))(v5 - 208);
  return (*(STACK[0x948] + 8 * ((2968 * (*(v3 + v4) > 0)) ^ v2)))(v7);
}

uint64_t sub_39F44()
{
  v3 = (*(v2 + 8 * (v0 + 1282)))(v1);
  v4 = STACK[0x8B0];
  v5 = STACK[0x8A0];
  v6 = STACK[0x948];
  *STACK[0x8C0] = v3;
  v7 = LODWORD(STACK[0x8D0]);
  return (*(v6 + 8 * ((195 * (((v3 == 0) ^ (v0 - 86)) & 1)) ^ v0)))();
}

uint64_t sub_39FF8()
{
  *(v5 - 128) = v1;
  *(v5 - 116) = v4 - 1600728529 * ((v5 - 128) ^ 0x8535CA41) - 1726520911;
  v6 = (*(v3 + 8 * (v2 + 2417)))(v5 - 128);
  *(v0 + 49) = *(v5 - 120) ^ (((v4 + 77) & 0xAE) + 58);
  return (*(v3 + 8 * ((925 * (v4 > 0xD056F5C5)) ^ v2)))(v6);
}

uint64_t sub_3A104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v12 = *(a3 + 8 * v5);
  v13 = (a5 + a2 + a4);
  *v13 = HIBYTE(v6) ^ v7;
  v13[1] = BYTE6(v6) ^ 0x80;
  v13[2] = BYTE5(v6) ^ v7;
  v13[3] = BYTE4(v6) ^ 8;
  v13[4] = v8 ^ BYTE3(v6);
  v13[5] = v9 ^ BYTE2(v6);
  v13[6] = v10 ^ BYTE1(v6);
  v13[7] = v6 ^ v11;
  return v12(a1, 624831207);
}

uint64_t sub_3A1D8@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = (v1 - 734252384) ^ (1913485891 * ((((v3 - 208) | 0xA980E5E) - ((v3 - 208) & 0xA980E5E)) ^ 0x9774E974));
  v5 = (*(v4 + 8 * (v1 ^ 0x98A)))(v3 - 208);
  return (*(STACK[0x948] + 8 * v1))(v5);
}

uint64_t sub_3A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = STACK[0x5F0];
  v13 = (LODWORD(STACK[0x5F0]) - 899793898) & 0x35A1BF7D;
  LODWORD(STACK[0x628]) = v13;
  LODWORD(STACK[0x3B8]) = ((v13 - 606) ^ v9) & STACK[0x65C];
  LODWORD(STACK[0x3B0]) = LODWORD(STACK[0x930]) ^ 0xC7C228B6;
  LODWORD(STACK[0x5A8]) = v10;
  STACK[0x3A8] = v10 ^ (v10 >> 2) ^ a7;
  LODWORD(STACK[0x760]) = v8 + 432702010;
  v14 = STACK[0x7C8];
  STACK[0x6A8] = v7;
  STACK[0x890] = v7;
  STACK[0x6D8] = v11;
  STACK[0x878] = v11;
  v15 = (2 * LODWORD(STACK[0x808]));
  v16 = STACK[0x910];
  v17 = LODWORD(STACK[0x680]);
  v18 = LODWORD(STACK[0x528]);
  return (*(STACK[0x948] + 8 * v12))(LODWORD(STACK[0x640]), STACK[0x6E8], 516);
}

uint64_t sub_3A398@<X0>(uint64_t a1@<X4>, int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  LODWORD(STACK[0x4C8]) = v58;
  v61 = v57 + 775;
  v62 = STACK[0x880];
  LODWORD(STACK[0x5B8]) = -LODWORD(STACK[0x880]);
  v63 = *(a1 + 7) ^ a3;
  v64 = v63 & 0x3F;
  v65 = 1377 * ((~(2 * v63) & 0x34) + (v64 ^ 0xBC5));
  STACK[0x848] = (*(v60 + v65 - (((7064091 * v65) >> 32) >> 3) * a2) ^ (51 - v64 - ((122 - 2 * v64) & 0xEC))) ^ 0x87u;
  v66 = *(v60 + (1377 * (v64 ^ 0x12) + 534276 - ((883012 * (1377 * (v64 ^ 0x12u) + 534276)) >> 32) * a2));
  LODWORD(STACK[0x450]) = v64 ^ 0x19;
  LODWORD(STACK[0x810]) = 1377 * (v64 ^ 0x19) + 443394;
  v67 = v64 - ((2 * v64) & 0x6C) + 118;
  v68 = (v66 ^ v67 ^ 0x8E) << 8;
  v69 = *(v60 + 1377 * (v64 ^ 2) + 4270077 - (((7064091 * (1377 * (v64 ^ 2u) + 4270077)) >> 32) >> 3) * a2);
  STACK[0x860] = v68;
  STACK[0x6D0] = v68;
  v70 = v69 ^ v67 ^ 0x48u;
  v71 = *(v60 + 1377 * (v64 ^ 0x23) + 355266 - (((1766023 * (1377 * (v64 ^ 0x23u) + 355266)) >> 32) >> 1) * a2);
  STACK[0x858] = v70 << 8;
  v72 = v64 ^ 0x2Au;
  STACK[0x4F0] = v72;
  LODWORD(v72) = v72 + 3173;
  LODWORD(STACK[0x7A0]) = v72;
  LODWORD(STACK[0x258]) = v64;
  LODWORD(STACK[0x650]) = 1377 * v72;
  v73 = STACK[0x2D0];
  v74 = *(v60 + 1377 * v72 - (((7064091 * (1377 * v72)) >> 32) >> 3) * a2);
  STACK[0x6E8] = (v64 + 135);
  STACK[0x850] = (v64 - 121) & 0x3F;
  v75 = STACK[0x6A8];
  v76 = STACK[0x7C8];
  v77 = STACK[0x748];
  v78 = v62 ^ *(a1 + 6);
  v79 = STACK[0x260];
  v80 = LODWORD(STACK[0x940]);
  v81 = STACK[0x928];
  return (*(v59 + 8 * v61))(0, STACK[0x870], LODWORD(STACK[0x840]), LODWORD(STACK[0x840]), 4294967259, STACK[0x6D8], (v61 + 585799484) & 0xDD156E37 ^ 0xA34, v78, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, v74 ^ v67 ^ 0xFFFFFF9B, v70, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v73 + ((v74 ^ v67 ^ 0x9B) << 8) + 54125);
}

uint64_t sub_3A624@<X0>(unsigned int a1@<W8>)
{
  HIDWORD(v5) = (v1 ^ 0x9B) + 3610;
  LODWORD(v5) = HIDWORD(v5);
  v6 = *(v3 + 3013 * ((v5 >> 31) >> 1) % 0x1188);
  v7 = v6 & 0x83 | 0x18;
  v8 = v7 ^ v6 & 0x30;
  v9 = v6 ^ 2;
  v10 = (v6 ^ (2 * (v9 & (2 * (v9 & (2 * (v9 & (2 * (v9 & (2 * (v9 & (2 * (v9 & (2 * v7) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x2C;
  *(*v2 + 4 * ((((a1 + 1108) ^ 0x91) * v1 + 2415000) % 0xA6F)) = (((v10 ^ 0x9BA58F92) + 1683648622) ^ ((v10 ^ 0xDC8E99EF) + 594634257) ^ ((v10 ^ 0x472B166E) - 1194006126)) + 19;
  return (*(v4 + 8 * ((1140 * (v1 == 255)) ^ a1)))();
}

uint64_t sub_3A798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W8>)
{
  STACK[0x878] = v5;
  *(a4 + 104) = v6;
  return (*(v7 + 8 * (a3 + a5 + 526)))(a1, a2, 2620154439);
}

uint64_t sub_3A7BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = (LODWORD(STACK[0x940]) - 249599784) < LODWORD(STACK[0x930]);
  if (LODWORD(STACK[0x930]) < 0xF11F68D8 != LODWORD(STACK[0x940]) > 0xEE09727)
  {
    v9 = LODWORD(STACK[0x930]) < 0xF11F68D8;
  }

  if (LODWORD(STACK[0x940]) >= a4 + ((v7 | 0x188) ^ (a7 - 921)) + 1024)
  {
    v9 = 0;
  }

  return (*(v8 + 8 * ((31 * v9) ^ (v7 | 0x188))))();
}

uint64_t sub_3A834@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_3A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t *a16, int a17, unsigned int a18)
{
  a14 = 0;
  v21 = ((v20 ^ 0xFC296247) + 1834788898) ^ v20 ^ ((v20 ^ 0x484BEC49) + 1497245232) ^ ((v20 ^ 0x7FEFD9FF) + 1855591322) ^ (((v19 - 1936) | 0x600) + 879927581 + (v20 ^ 0x4B8D57F1 ^ ((v19 + 243276055) | 0x600A1400)));
  v22 = 1252856261 * (((&a15 | 0xDA0A49ED) + (~&a15 | 0x25F5B612)) ^ 0x2FE59EC3);
  a15 = (v19 - 770) ^ v22;
  a18 = (((2 * v21) ^ 0xAAE9CCD9) - 2687137 + ((4 * v21) & 0xEFFB4FD4 ^ 0xAA284644)) ^ v22;
  a16 = &a14;
  v23 = (*(v18 + 8 * (v19 + 589)))(&a15);
  v25 = a17 != 65021204 || a14 == 0;
  return (*(v18 + 8 * (v25 | (32 * v25) | v19)))(v23);
}

uint64_t sub_3A9C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(v5 + 328);
  v8 = **(v5 + 320);
  LODWORD(STACK[0xEA4]) = v8;
  *v7 = v8;
  *(v5 + 784) = **(v5 + 984);
  *(v5 + 616) = **(v5 + 432);
  *(v5 + 392) = **(v5 + 944);
  v9 = LODWORD(STACK[0x1094]);
  return (*(v6 + 8 * (v4 + a4 + 1377)))();
}

uint64_t sub_3AAC0()
{
  v3 = *(v1 + 272);
  *(v1 + 8) = v3;
  v4 = **(v1 + 104);
  v5 = *STACK[0x990];
  v6 = STACK[0x978];
  STACK[0xDC0] = &STACK[0x1190] + STACK[0x978];
  STACK[0x978] = (v0 ^ 0xDB9u) + (v0 ^ 0x660u) + v6 - 3017;
  LODWORD(STACK[0x9F8]) = 0;
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && v5 != 0;
  return (*(v2 + 8 * ((v9 | (8 * v9)) ^ v0)))();
}

uint64_t sub_3AB40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  STACK[0x868] = v6;
  *(a5 + 80) = STACK[0x820];
  return (*(v8 + 8 * (v5 ^ 0x93B72C0B ^ ((v5 != -930655285) * (a4 + v5 + v7 + 929)))))(a1, 1212707403);
}

uint64_t sub_3ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, uint64_t a17)
{
  a17 = v18;
  a15 = v19 + 1583996299 * ((-1518822431 - (&a15 | 0xA5789BE1) + (&a15 | 0x5A87641E)) ^ 0x137AA501) - 649;
  v20 = (*(v17 + 8 * (v19 ^ 0xE7D)))(&a15);
  return (*(v17 + 8 * ((7 * (a16 == ((v19 - 833884315) & 0x31B40F73 ^ 0x3E02667))) ^ v19)))(v20);
}

uint64_t sub_3ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 128) = &a19;
  *(v22 - 116) = 853792023 - 1600728529 * ((((v22 - 128) | 0xB2D419B5) - (v22 - 128) + ((v22 - 128) & 0x4D2BE648)) ^ 0x37E1D3F4) + v20 + 132;
  v23 = (*(v21 + 8 * (v20 ^ 0x300)))(v22 - 128);
  v24 = *(v22 - 120);
  *(v19 + 417) = *(v22 - 120) ^ (v20 + 32);
  return (*(v21 + 8 * (((v24 == 232) * (39 * (v20 ^ 0x9D5) - 166)) ^ v20)))(v23);
}

uint64_t sub_3AF54()
{
  if (*(v1 + 1416))
  {
    v3 = **(v1 + 984) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v2 + 8 * ((v4 * ((v0 + 2440) ^ 0x850)) ^ v0)))();
}

uint64_t sub_3AFF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = (*(v5 + 248) ^ 0x7EF5BCFDF9DBFDFFLL) - 0x7EF5BCFDF9DBFDFFLL + (((v4 - 100685179) & 0x7F7B7CE5 ^ 0x18ACCD75ALL) & (2 * *(v5 + 248)));
  STACK[0x1048] = v6;
  return (*(a2 + 8 * (((v6 != 0) * (a4 + ((v4 - 109086021) & 0x7FFBACAF) + 113)) ^ v4)))();
}

uint64_t sub_3B1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v9 = *(v8 + 16) + v5;
  v10 = *(*(a5 - 132921991) + (((v9 & 0xFFFFFFF8) + 916900720) & *(v6 - 464343834)));
  v11 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = ((v7 ^ 0xF8E2971FFE59AE12) - ((v11 + v10) | 0xF8E2971FFE59AEBFLL) + ((v11 + v10) | 0x71D68E001A65140)) ^ 0xF822DBBA066E155;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xD8D188F9068EB840;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x7E1F3531EE2817FLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xBEACFB9F4D191338;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x8A4943FA3C1BB996;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8F826D48DCAD4006;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v9 & 7u))) ^ *v9;
  return (*(a3 + 8 * v7))(a1, a2);
}

uint64_t sub_3B4B0@<X0>(int a1@<W8>)
{
  v6 = ((21 * (a1 ^ 0xBB)) ^ 0xFC) + *(STACK[0x6C0] + (3013 * v3 + 4661111) % 0x1188u);
  v7 = 9002 * v6 + 48493774 - (((163047621 * (9002 * v6 + 48493774)) >> 32) >> 9) * v2;
  v8 = *(v4 + 4 * ((v7 ^ 0x17FD8EF7CBFFF7FBLL) + ((2 * v7) & 0x6FF6)) - 0x5FF63BDF2FFFDFECLL);
  v9 = v5 + 9002 * v3 - ((((v5 + 9002 * v3) * v1) >> 32) >> 12) * v2;
  v10 = *(STACK[0x6C0] + (3013 * (((v8 ^ 0x4DE59E2C) + 1981571397) ^ ((v8 ^ 0xB49D2355) - 1889215426) ^ ((v8 ^ 0xF978BD8F) - 1031716120)) + 456948115) % 0x1188);
  v11 = v10 & 0x89 ^ 7;
  v12 = v10 ^ 2;
  v13 = v10 ^ (2 * (v12 & (2 * (v12 & (2 * (v12 & (2 * (v12 & (2 * (v12 & (2 * (((2 * (v10 & 3)) ^ 0xA) & v12 ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  *(v4 + 4 * ((v9 ^ 0x2DF7FBED3FFE9DD5) + ((2 * v9) & 0x3BAA)) + 0x4820104B000588ACLL) = ((v13 & 0xFC ^ 0xFFFFFFC7) & ((((((*(STACK[0x6C0] + (3013 * ((((((2 * (v8 >> 17)) ^ 0x56) & 6 ^ 0x7786A9CA) & 0xFFFFFFFD ^ (HIWORD(v8) & 1 | 0x105424) | (((2 * (v8 >> 17)) ^ 0x56) & 6 ^ 0x7786A9CA) & 0x2682010A) ^ 0x7796FDEC | ((2 * (v8 >> 17)) ^ 0x56) & 0xF8) ^ 0x10) + 10093550) % 0x1188) - 125) << 8) | (*(STACK[0x6C0] + (3013 * (((HIBYTE(v8) ^ 0xBE79DBDA) + 315634975) ^ ((HIBYTE(v8) ^ 0x57C7308) - 1445618227) ^ ((HIBYTE(v8) ^ 0xBB05A8E6) + 397166115)) - 728713231) % 0x1188) << 16) | (*(STACK[0x6C0] + (3013 * (((BYTE1(v8) ^ 0x50A141B4) - 22893578) ^ ((BYTE1(v8) ^ 0x38D9D88E) - 1764085040) ^ ((BYTE1(v8) ^ 0x687899C5u) - 964988027)) - 327144973) % 0x1188) - 125)) << 8) - 2097152000) ^ 0x2A0B204C) | v13 & 0xB3) ^ 0x1E4FDF3B;
  return (*(STACK[0x6C8] + 8 * ((3787 * (v3 == 255)) ^ a1)))();
}

uint64_t sub_3B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = v7 + 1;
  v12 = *(v9 + 56);
  v13 = ((2 * v8) & 0x772D3BF6) + (v8 ^ 0x3B969DFB);
  v14 = (*(v12 + (v13 - 999726587)) << 24) | (*(v12 + (v13 - 999726586)) << 16) | (*(v12 + ((a7 + v11 - 1412817646) & 0xDABABE7F ^ 0xC4696858) + v13) << 8);
  v15 = *(v12 + (v13 - 999726584));
  v16 = ((2 * (v14 | v15)) & 0x57DCEF7C) + ((v14 | v15) ^ 0x2BEE77BE);
  LODWORD(STACK[0xD88]) = v16 - 672027306;
  LODWORD(STACK[0xBCC]) = v16 - 672027302;
  return (*(v10 + 8 * ((1296 * ((v16 - 737048511) < 0xFFFFFFFB)) ^ v11)))();
}

uint64_t sub_3B934@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = ((v3 << ((a2 + 72) ^ 0x6B)) & 0x6F6F1B6A) + (v3 ^ 0xB7B78DB5) + a1;
  v6 = *(v2 + v5 + 1) | (*(v2 + v5) << 8);
  return (*(v4 + 8 * a2))();
}

uint64_t sub_3B9E8()
{
  v4 = (STACK[0x9B8] + v1);
  *(v2 + 1672) = v4;
  v5 = (v4[1] << (v0 - 84)) | (*v4 << 24) | (v4[2] << 8) | v4[3];
  v6 = (((2 * v0) ^ 0x57DCEDB4) & (2 * v5)) + (v5 ^ 0x2BEE77BE);
  LODWORD(STACK[0x1074]) = v6 - 672027306;
  LODWORD(STACK[0x1078]) = v6 - 672027302;
  return (*(v3 + 8 * ((2454 * ((v6 - 737048511) < 0xFFFFFFFB)) ^ v0)))();
}

uint64_t sub_3BAD4()
{
  *(v4 + 4 * v1) = (*(v4 + 4 * v1) - 2 * (*(v4 + 4 * v1) & ((v3 - 2038115490) ^ ~(v2 - (v3 - 2038115490) >= ~(v3 - 2038115490))) & 0x11 ^ *(v4 + 4 * v1) & 0x6E972FB) - 2031521046) ^ *(STACK[0x930] + 4 * v1);
  v5 = STACK[0x938];
  return (*(v0 + 8 * ((109 * (v3 ^ (v3 + 10)) + 121) ^ (v3 - 2038115490))))();
}

uint64_t sub_3BB84@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v5 = STACK[0x978];
  v6 = &STACK[0x1190] + STACK[0x978];
  v3[177] = v6;
  v3[147] = v6 + 136;
  STACK[0x988] = (v6 + 272);
  v3[104] = v6 + 288;
  v3[59] = v6 + 304;
  v3[105] = v6 + 320;
  v3[23] = v6 + 336;
  v3[84] = v6 + 352;
  v3[31] = v6 + 368;
  STACK[0x978] = a1 + v2 - 427 + v5 + ((v2 + 817) ^ 0xFFFFFFFF8684D007);
  v3[155] = 0;
  v3[25] = 0;
  v3[79] = 0;
  STACK[0x980] = 0;
  LODWORD(STACK[0xC08]) = 0;
  v7 = *(a2 + 104);
  v3[18] = a2 + 104;
  return (*(v4 + 8 * ((19 * (v7 == 0)) ^ v2)))();
}

uint64_t sub_3BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v11 = *(v10 + 8 * ((((a7 + ((v8 - 480) | 0x8F) + 535) ^ v8 ^ (a7 + 160)) * (v7 == v9)) ^ v8));
  STACK[0x940] = a6;
  return v11();
}

uint64_t sub_3BCD8@<X0>(int a1@<W3>, int a2@<W8>)
{
  v4 = LODWORD(STACK[0x8F8]) < LODWORD(STACK[0x8F0]);
  v5 = (a2 - 485326295) & 0xA37259FF;
  v6 = a1 + a2;
  v7 = (v6 + 1028) | 0x360;
  v8 = v6 + 741;
  if (v4 == LODWORD(STACK[0x928]) > 0x375ED887)
  {
    v4 = (LODWORD(STACK[0x928]) + v2 + v7) < LODWORD(STACK[0x8F8]);
  }

  return (*(v3 + 8 * ((v4 * (v5 ^ 0x25B)) ^ v8)))();
}

uint64_t sub_3BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = (*(v10 + 8 * (v8 ^ (a7 - 1644))))();
  v12 = STACK[0x948];
  *(v7 + 16) = 0;
  return (*(v12 + 8 * (v9 + v8 - 1099)))(v11);
}

uint64_t sub_3BE4C@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = v2 - a1 - 552;
  v7 = 1252856261 * (((((v4 - 208) | 0x11883C7E) ^ 0xFFFFFFFE) - (~(v4 - 208) | 0xEE77C381)) ^ 0x1B9814AE);
  *(v3 + 20) = v7 ^ 0x77D4A74D;
  *v3 = (v2 + 856) ^ v7;
  *(v3 + 8) = a2 + 424;
  v8 = (*(v5 + 8 * (v2 + 2215)))(v4 - 208);
  return (*(STACK[0x948] + 8 * ((2997 * (*(v3 + 16) == ((v6 - 1973094265) ^ (v2 - 496)))) ^ v2)))(v8);
}

uint64_t sub_3BF18@<X0>(int a1@<W6>, unsigned int a2@<W8>)
{
  *(v4 + 656) = 0;
  *(v4 + 1392) = 0;
  return (*(v6 + 8 * (((v2[1] + *v2 <= a2) * ((a1 + (v3 ^ 0xA08) - 897) ^ (v3 - v5 + 356))) ^ v3)))();
}

uint64_t sub_3BF68@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = *(v5 + 16) + v3;
  v7 = *(*(v2 - 132921991) + (((v6 & 0xFFFFFFF8) + 916900720) & *(v4 - 464343834)));
  v8 = (a1 + 2206) ^ 0x89F455BA1C0BA1DLL ^ (__ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8) + v7);
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xD8D188F9068EB840;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x7E1F3531EE2817FLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((v14 + v13) | 0x8EEE61F67BD5570ELL) - ((v14 + v13) | 0x71119E09842AA8F1) + 0x71119E09842AA8F1) ^ 0x30429A6936CC4436;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((v17 + v16) | 0x50745B8A3A5B366ALL) - ((v17 + v16) | 0xAF8BA475C5A4C995) - 0x50745B8A3A5B366BLL) ^ 0xDA3D187006408FFCLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0x9684005E3ABD03B4) - (v20 + v19) + 0x34BDFFD0E2A17E25) ^ 0xBB3F92983E0C3E23;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x3E735FFD9083B0A3;
  v24 = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v6 & 7u))) ^ *v6;
  return (*(a2 + 8 * a1))();
}

uint64_t sub_3C214@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v12 = v6 - 1;
  v13 = v3 + v12 + v4;
  v14 = *(*a1 + (((v13 & 0xFFFFFFF8) + 916900720) & *v8));
  v15 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x8A9756B89A909F96) + 0x454BAB5C4D484FCBLL) ^ 0x4DD4EE07EC88FFDELL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * ((v18 + v17) ^ 0x2897E30B5B316A34)) & 0x81919A76DC02DEB2) - ((v18 + v17) ^ 0x2897E30B5B316A34) - 0x40C8CD3B6E016F5ALL) ^ 0x4F715936CC4142D2;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) | 0xB0248E11FC0A4FEALL) - (v21 + v20) + 0x27EDB8F701FAD80BLL) ^ 0xDFF3B45BE0E7A68ALL, 8);
  v23 = (((2 * (v21 + v20)) | 0xB0248E11FC0A4FEALL) - (v21 + v20) + 0x27EDB8F701FAD80BLL) ^ 0xDFF3B45BE0E7A68ALL ^ __ROR8__(v20, 61);
  v24 = (v22 + v23 - ((2 * (v22 + v23)) & 0xBED1D54446D2280ALL) - 0x2097155DDC96EBFBLL) ^ 0x61C4113D6E70073DLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x8E4AB521CBE29802) - 0x38DAA56F1A0EB3FFLL) ^ 0x4D6C196AD9EAF597;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a2;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v9;
  *(a3 + v12 + v5) = (((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v30, 61))) ^ v10) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(v11 + 8 * ((1018 * (v12 != 0)) ^ (v7 + 499))))();
}

uint64_t sub_3C480()
{
  v5 = *(v0 + 4 * (v3 - 1));
  *(v0 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v0 + 4 * v3)) - v3;
  v6 = STACK[0x8F8];
  v7 = v4 - 208;
  *(v7 + 40) = ((v2 + 249430691) | 0x80) - STACK[0x8F8];
  *(v7 + 28) = -v6;
  *(v7 + 16) = v3 + 1 - v6;
  *(v7 + 32) = v6 + 623;
  *v7 = (v2 + 249430701) ^ v6;
  *(v7 + 4) = v2 + 249430691 - v6;
  *(v7 + 8) = v6 + v2 + 1596328632;
  v8 = (*(v1 + 8 * (v2 - 2038112765)))(v4 - 208);
  return (*(STACK[0x948] + 8 * *(v4 - 184)))(v8);
}

uint64_t sub_3C63C()
{
  *(v1 + 84) = 0;
  v4 = (*(v3 + 8 * (v2 + 2594)))(*v0);
  v5 = STACK[0x948];
  *v0 = 0;
  return (*(v5 + 8 * v2))(v4);
}

uint64_t sub_3C6DC@<X0>(int a1@<W8>)
{
  v5 = (a1 - LODWORD(STACK[0x910]) + 3);
  v6 = STACK[0x900];
  v7 = v4 - 208;
  *(v7 + 16) = (v3 + 1) - STACK[0x900];
  *(v7 + 8) = v6 + v2 + 1596328632;
  v8 = STACK[0x928];
  *(v7 + 28) = -v6;
  *v7 = v6 ^ v8 ^ 6;
  *(v7 + 4) = v8 - v6;
  *(v7 + 32) = v5 + v6;
  *(v7 + 40) = LODWORD(STACK[0x908]) - v6;
  v9 = (*(v1 + 8 * (v2 - 2038112765)))(v4 - 208);
  return (*(STACK[0x948] + 8 * *(v4 - 184)))(v9);
}

uint64_t sub_3C778@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (((((a1 - 644) ^ 0xFFFFFB42) + a1 + 460) * (v1 == 511)) ^ a1));
  v4 = LODWORD(STACK[0x8D0]);
  return v3();
}

void sub_3C7B0(uint64_t a1)
{
  v1 = *(a1 + 4) + 1879456961 * ((((2 * a1) | 0x59AD0020) - a1 - 752254992) ^ 0x7F1CDE77);
  v2 = *(a1 + 8);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_3C950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0xF48]) = v5;
  v8 = STACK[0x8C0];
  return (*(v7 + 8 * (((*v6 == 0) * ((a5 - 204) ^ (a5 - 293))) ^ a5)))();
}

uint64_t sub_3C9C8()
{
  LODWORD(STACK[0xD84]) = v2;
  STACK[0x10A0] = v3;
  LODWORD(STACK[0x10AC]) = v1;
  LODWORD(STACK[0x10A8]) = v0;
  return (*(v5 + 8 * (((STACK[0xA50] == 0) * ((v4 ^ 0x797B2F08) - 2038115471)) ^ v4)))();
}

uint64_t sub_3CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(v59 + 8) = -2038112765 - 1520549201 * ((2 * ((v61 - 208) & 0x6EDE52E8) - (v61 - 208) - 1860063983) ^ 0x9C483684) + v58 - 405;
  *v59 = v57 + 424;
  *(v59 + 16) = a57;
  v63 = (*(v62 + 8 * (v58 - 2038112695)))(v61 - 208);
  v64 = *(v59 + 24);
  return (*(STACK[0x948] + 8 * (v60 + v58 + 503)))(v63);
}

uint64_t sub_3CAB8()
{
  v9 = ((v1 - 1076) ^ 0x27C0) * v0 + 27708156 - ((((((v1 - 1076) ^ 0x27C0u) * v0 + 27708156) * v3) >> 32) >> 12) * v4;
  *(*v6 + 4 * ((v0 * v2 + 648600) % 0xA6Fu)) = *(v5 + 4 * ((v9 ^ 0x31F553FBEDA72367) + ((2 * v9) & 0x46CE)) + 0x382AB01049637264) ^ v7;
  return (*(v8 + 8 * ((59 * (v0 != 255)) ^ v1)))();
}

uint64_t sub_3CB78@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9 = *(v7 + (3013 * v2 + 4661111) % 0x1188u);
  v10 = a2 + 18 + v9 + ((v9 < 0x7D) << 8);
  v11 = 9002 * v10 + 5050122 - ((((9002 * v10 + 5050122) * v3) >> 32) >> 12) * v4;
  LODWORD(v11) = *(a1 + 4 * ((v11 ^ 0x11FFFB7EDFA7E57ELL) + ((2 * v11) & 0x4AFC)) - 0x47FFEDFB7E9F95F8);
  v12 = 3013 * ~(v11 >> 8) + 10093550;
  v13 = *(v7 + 3013 * (BYTE2(v11) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v11) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v14 = *(v7 + (3013 * (((BYTE3(v11) ^ 0xA5C77BBE) + 427713535) ^ ((BYTE3(v11) ^ 0x5F33ECC1) - 477432702) ^ ((BYTE3(v11) ^ 0xFAF4974B) + 1179488012)) - 769840411) % 0x1188);
  v15 = *(v7 + v12 - 4488 * (((30623653 * v12) >> 32) >> 5));
  v16 = v6 + 9002 * v2 - ((((v6 + 9002 * v2) * v3) >> 32) >> 12) * v4;
  v17 = v14 & 0x8B | 4;
  v18 = v13 & 0xF7 ^ 0xBA;
  v19 = *(v7 + (3013 * (((v11 ^ 0x15DACA69) - 12208467) ^ ((v11 ^ 0xC225DE41) + 683319941) ^ ((v11 ^ 0xD7FF14DE) + 1029728284)) - 1719061526) % 0x1188);
  LOBYTE(v12) = v15 & 0x81 ^ 0x83;
  v20 = v15 ^ 2;
  LOBYTE(v11) = v14 ^ (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 0x8B;
  v21 = (v15 ^ (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (((2 * (v15 & 3)) ^ 2) & v20 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xFB9922;
  v22 = v19 & 0xFFFFFFE1 ^ 0x33;
  v23 = (((v13 ^ (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xF7) << 8) | (v11 << 16);
  v24 = v19 ^ 2;
  *(v5 + 4 * ((v16 ^ 0x1F64FAF3F79EEBD5) + ((2 * v16) & 0x57AA)) - 0x7D93EBCFDE7BAF54) = ((((v21 & ~v23 | v23 & 0x46600) << 8) ^ 0xA37446F) & ((v19 ^ (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (((2 * (v19 & 3)) ^ 0x62) & v24 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xFFFFFF8E) | (v19 ^ (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (((2 * (v19 & 3)) ^ 0x62) & v24 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) & 0x90) ^ 0xC5EA1819;
  return (*(v8 + 8 * (((2 * (v2 == 255)) | (16 * (v2 == 255))) ^ a2)))();
}

uint64_t sub_3CFB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  LODWORD(STACK[0x510]) = v10 - 2051;
  v12 = *v7;
  v13 = *STACK[0x538];
  v14 = STACK[0x530];
  v15 = STACK[0x518] + 4 * (((((v8 - 1252) | 0x804) ^ (v10 - 2051)) + 551 * a4) % 0x1D48);
  v16 = *a7 ^ 0xF1E76555;
  v17 = (v15 + *(v13 + (v12 & STACK[0x540])) + v9);
  v18 = (((1645 * a4 + 1271585) % 0xA88u) ^ 0x6BF7FFFFFABFB7A7) + STACK[0x520] + ((2 * ((1645 * a4 + 1271585) % 0xA88u)) & 0xF4E);
  v19 = (v18 + 88098905 + *(v13 + (v12 & v11)) + v11);
  *(v18 - 0x76D82CA252766113) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v19 & v16)) ^ (110 * (v18 + 89)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + 2) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 - 2) & v16)) ^ *(v15 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v17 & v16)) ^ (45 * v15) ^ 0x6C;
  return (*(STACK[0x548] + 8 * ((3447 * (a4 == 255)) ^ v8)))();
}

uint64_t sub_3D1C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = STACK[0x10AC];
  *(*(v9 + 1360) + 12) = STACK[0x10A8];
  **(v9 + 1728) = v11;
  return (*(v10 + 8 * ((v7 * (v8 ^ (a7 + 525) ^ 0x2C5)) ^ (a4 + v8 + 353))))();
}

uint64_t sub_3D214@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 48) + 767646067;
  v5 = v4 < ((v1 + 749) ^ 0x2DC15ADCu);
  v6 = v4 > v2 - 965538310;
  if (v5 != v2 - 965538310 < ((2 * v1) ^ 0x2DC158E4u))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(a1 + 8 * ((461 * !v7) ^ v1)))();
}

uint64_t sub_3D3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  v8 = *(v7 + 16) + v5;
  v9 = *(*(v4 - 132921991) + (((v8 & 0x248CAB80) + (v8 & 0xDB735478 | 0x248CAB81) + 303701999) & *(v6 - 464343834)));
  v10 = (__ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8) + v9) ^ 0x89F455BA1C0B015;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 + (a3 ^ 0x6130D7A5ECFC9A8CLL) - ((2 * (v12 + v11)) & 0xC261AF4BD9F930D6)) ^ 0xB9E15F5CEA72202BLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x46AE65EE7EEE01F0) - (v15 + v14) - 0x235732F73F7700F9) ^ 0xDB493E5BDE6A7E78;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xBEACFB9F4D191338;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x8A4943FA3C1BB996;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0xCE1792ED0C442B8ELL) - (v22 + v21) - 0x670BC976862215C8) ^ 0x17765BC1A570AA3ELL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x3E735FFD9083B0A3;
  return (*(a4 + 8 * a3))(a1, a2, (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v8 & 7u))) ^ *v8);
}

uint64_t sub_3D600@<X0>(int a1@<W0>, uint64_t a2@<X7>, int a3@<W8>)
{
  v9 = *(v7 + ((((v3 - 235) | 0x101u) + 2626) * a3 + 4661111) % 0x1188);
  v10 = 9002 * (v9 | ((v9 < 0x7D) << 8)) + 79739716 - ((((9002 * (v9 | ((v9 < 0x7D) << 8)) + 79739716) * v4) >> 32) >> 12) * a1;
  v11 = *(a2 + 4 * ((v10 ^ 0x2FFAE7C6F7D546EFLL) + ((2 * v10) & 0xDDE)) + 0x401460E420AAE444);
  v12 = ~(v11 >> 8);
  v13 = v6 + 9002 * a3 - ((((v6 + 9002 * a3) * v4) >> 32) >> 12) * a1;
  v14 = 3013 * (((v11 ^ 0xD7222BAF) + 1926721560) ^ ((v11 ^ 0x2107D8DF) - 2064481432) ^ ((v11 ^ 0xF625F386) + 1406183487)) - 1075946717;
  v15 = *(v7 + 3013 * (BYTE2(v11) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v11) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v16 = *(v7 + (3013 * (((HIBYTE(v11) ^ 0x78AB302C) - 1888518914) ^ ((HIBYTE(v11) ^ 0x5E88FC97) - 1454591929) ^ ((HIBYTE(v11) ^ 0x2623CC8F) - 773357473)) - 415435536) % 0x1188u);
  LOBYTE(v11) = v15 & 0xA5 ^ 0x91;
  v17 = v16 & 0x37 ^ 0xDA;
  v18 = (((2 * (v15 & 3)) ^ 0x26) & 2 | v11) ^ ((2 * (v15 & 3)) ^ 0x26) & v15;
  v19 = v16 ^ 2;
  v20 = *(v7 + 3013 * v12 + 10093550 - 4488 * (((30623653 * (3013 * v12 + 10093550)) >> 32) >> 5));
  v21 = v20 & 0x5D ^ 0xED;
  v22 = (v20 ^ (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * (((2 * (v20 & 3)) ^ 0x5E) & (v20 ^ 2) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xC19C3D;
  v23 = *(v7 + v14 % 0x1188);
  v24 = (((v16 ^ (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * ((v16 ^ 2) & (2 * v16) & 6 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x37) << 16) | (((v15 ^ (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v11 & 0xFD | (2 * (v18 & 1))) ^ v15 & (2 * v18))) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xA5) << 8);
  LOBYTE(v11) = v23 & 0x8F ^ 0x86;
  v25 = v23 ^ 2;
  LOBYTE(v11) = v23 ^ (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  *(v5 + 4 * ((v13 ^ 0x23FFB56DDB7FB767) + ((2 * v13) & 0x6ECE)) + 0x70012A4892012264) = ((((v22 & ~v24 | v24 & 0x3E6300) << 8) ^ 0x8C200572) & (v11 ^ 0xFFFFFF78) | v11 & 0x8D) ^ 0x79F89A09;
  return (*(v8 + 8 * ((238 * (a3 == 255)) ^ v3)))();
}

uint64_t sub_3DA60@<X0>(int a1@<W0>, int a2@<W3>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v17 = ((v9 - 539) ^ 0x7BBDBE7E8FE3FE15 ^ (v14 % 0xA88)) + ((v7 - 5392 * (v14 / 0xA88)) & 0x1F3CLL) + a3;
  v18 = *(*v13 + (*v4 & 0x46B39928));
  v19 = *(v17 + 0x796214DF186556F6);
  LODWORD(v17) = v17 + 1880883298;
  v20 = *v16 ^ v11;
  v21 = *(v20 + ((v17 + v18 + 1186175272) & (qword_190530 ^ a4))) ^ v19 ^ *(v20 + ((v17 + v18 + 1186175274) & (qword_190530 ^ a4)));
  HIDWORD(v22) = v21 ^ (14 * v17) ^ 6;
  LODWORD(v22) = (v21 ^ (v17 * a1) ^ 0x40) << 24;
  LODWORD(v17) = (v22 >> 28) - 2 * ((v22 >> 28) & 1);
  HIDWORD(v22) = (v17 + 1) ^ 1;
  LODWORD(v22) = (126 - v17) << 24;
  LODWORD(v17) = ((v22 >> 31) >> 5) | (8 * (v22 >> 31));
  v23 = v6 ^ *(v20 + ((v18 + a2 + 1186175272) & (qword_190530 ^ a4))) ^ *(v20 + ((v18 + a2 + 1186175274) & (qword_190530 ^ a4)));
  LOBYTE(v17) = v17 - ((2 * v17) & 0x52) - 87;
  v24 = (((v23 ^ v15 ^ 0x13) + 9) ^ ((v23 ^ v15 ^ 0x12) + 10) ^ ((v23 ^ v15 ^ 0x47) + 93)) + (((v17 ^ 0xD4) + 44) ^ ((v17 ^ 0xF2) + 14) ^ ((v17 ^ 0x8F) + 113)) + ((2 * ((v17 ^ 0x29) & (v23 ^ v15 ^ 0x2C) ^ v17 & 0x6A)) ^ 0xAF) + 105;
  if (((v8 >> v5) & 1) == 0)
  {
    v24 = (((v23 ^ v15 ^ 0xD3) - 41) ^ ((v23 ^ v15 ^ 0xBE) - 68) ^ ((v23 ^ v15 ^ 0x2B) + 47)) - 39;
  }

  v25 = v24 & 0x43 ^ 0xF0;
  *(v10 + v12) = v23 ^ v24 ^ (2 * ((v24 ^ 0x62) & (2 * ((v24 ^ 0x62) & (2 * ((v24 ^ 0x62) & (2 * ((v24 ^ 0x62) & (2 * ((v24 ^ 0x62) & (2 * ((v24 ^ 0x62) & (2 * v24) & 0x46 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ 5;
  return (*(STACK[0x548] + 8 * ((3007 * (v5 == 7)) ^ v9)))();
}

uint64_t sub_3DD0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = (*(v11 + v10 * a7 + 4661111 - (v10 * a7 + 4661111) / 0x1188u * a1) - 125);
  LODWORD(STACK[0x6B0]) = v10;
  v14 = v12 + ((a8 ^ 0xE6F) + 6976) * v10 - ((((v12 + ((a8 ^ 0xE6Fu) + 6976) * v10) * v9) >> 32) >> 12) * v8;
  v15 = *(v11 + a6 + v13 * a7 - (((30623653 * (a6 + v13 * a7)) >> 32) >> 5) * a1);
  v16 = 2 * (v12 + ((a8 ^ 0xE6F) + 6976) * v10 - ((((v12 + ((a8 ^ 0xE6Fu) + 6976) * v10) * v9) >> 32) >> 12) * v8);
  *(a5 + 4 * ((v14 ^ 0x3FEBFFDE187DF8F6) + (v16 & 0x71EC)) + 0x5000879E081C28) = 876937206;
  v17 = *(a5 + 4 * ((v14 ^ 0x3DFFFDDE3FEFDEFFLL) + (v16 & 0x3DFE) - 0x3DFFFDDE3FEFDEFFLL));
  return (*(STACK[0x6C8] + 8 * ((a8 + 1452458681) ^ 0x5692CD2C ^ (1008 * (a8 != -2012914345)))))();
}

uint64_t sub_3DE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, uint64_t a25)
{
  v31 = 1600728529 * ((1464537076 - (&a22 | 0x574B0FF4) + (&a22 | 0xA8B4F00B)) ^ 0x2D813A4A);
  a25 = v27;
  a24 = (v28 + v26 - 1147) ^ v31;
  a22 = v31 ^ v29;
  v32 = (*(v25 + 8 * (v26 ^ 0xC06)))(&a22);
  return (*(v25 + 8 * ((((v26 + 108) ^ (a23 == v30)) & 1 | ((((v26 + 108) ^ (a23 == v30)) & 1) << 6)) ^ v26)))(v32);
}

uint64_t sub_3DF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = (v9 - 208) & 0x7F9DA4667BF6A29FLL;
  v12 = 434465113 * ((v9 - 208 - 2 * v11 + 0x7F9DA4667BF6A29FLL) ^ 0x76BB0DB98E5488C0);
  *(v8 + 16) = *(*(v7 + 848) + 64) - v12;
  *(v8 + 28) = -434465113 * ((v9 - 208 - 2 * v11 + 2079761055) ^ 0x8E5488C0);
  v13 = a7 - 1077744092 - v12;
  *v8 = v12 ^ (a7 - 1077744092) ^ 0xFC;
  *(v8 + 4) = v13;
  *(v8 + 40) = v13 - 25;
  *(v8 + 8) = v12 + a7 + 1596328632;
  *(v8 + 32) = v12 + 0x24EE73FEFAC91764;
  v14 = (*(v10 + 8 * (a7 ^ (a7 - 1688))))(v9 - 208);
  return (*(STACK[0x948] + 8 * *(v8 + 24)))(v14);
}

uint64_t sub_3E034()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x953)))();
  v4 = STACK[0x948];
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_3E0C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v67 = v65 + a7 - 1042;
  *(*(a62 - 1648919999) + 48) = 0;
  STACK[0x978] = v62 - 48;
  *(&STACK[0x1190] + v63) = 0;
  v68 = (*(v66 + 8 * (a7 ^ (a7 - 1674))))(0, &STACK[0x1190] + v63) == a4 + a7 + 623 + v67 - 2309;
  v69 = *(*STACK[0x360] + (*v64 & 0x4435FBC8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x1B1481F270F8F84BLL;
  return (*(STACK[0x948] + 8 * ((58 * v68) ^ v67)))();
}

uint64_t sub_3E318@<X0>(int a1@<W0>, void *a2@<X6>, int a3@<W7>, int a4@<W8>)
{
  v12 = STACK[0x518] + 4 * (v5 * v6 + a3 - (((((v5 * v6 + a3) >> 3) * v7) >> 32) >> 7) * v8);
  v13 = STACK[0x518] + 4 * (v5 * v6 + v10 - (((((v5 * v6 + v10) >> 3) * v7) >> 32) >> 7) * v8);
  v14 = *(*STACK[0x538] + (*v4 & ((v9 - 1460) ^ 0x5B104455u)));
  v15 = *a2 ^ 0xF1E76555;
  *(v13 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + v14 + v11) & v15)) ^ *(v12 - 0x40E8C283FA03C307) ^ (1912024365 * v13) ^ (1912024365 * v12) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + v14 + 1527793161) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v14 + v11) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v14 + 1527793161) & v15));
  return (*(STACK[0x548] + 8 * (((v5 == 255) * a1) ^ a4)))();
}

uint64_t sub_3E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  *(a6 + v6) = *(v8 + (v6 + v10));
  v12 = *(v11 + 8 * ((1783 * (v6 + 1 == v9)) ^ v7));
  STACK[0x940] = a6;
  return v12();
}

uint64_t sub_3E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, int a19)
{
  a18 = v22;
  a17 = (v20 - 2002) ^ (381473641 * (((&a17 ^ 0x3749C82D | 0x758D4DA7) - (&a17 ^ 0x3749C82D) + ((&a17 ^ 0x3749C82D) & 0x8A72B258)) ^ 0x5C20A258));
  v23 = (*(v19 + 8 * (v20 + 727)))(&a17);
  return (*(v19 + 8 * (((a19 != v21 + ((v20 - 1986665024) & 0x766A13F4) - 484) * (v20 - 1927)) ^ v20)))(v23);
}

uint64_t sub_3E5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, int a9@<W8>)
{
  v19 = (v10 ^ v11) + a2 + (a1 & (2 * v10));
  v20 = *(a3 + v19);
  v21 = v17 + v19;
  v22 = v21 + 1186175272 + *(*(*(v15 + 8 * a6) + a7) + (*(*(v15 + 8 * a4) + a5) & 0x46B39928));
  v23 = *v16 ^ 0xF1E76555;
  v24 = *v18 ^ v14;
  v25 = *(v24 + ((v22 + a9 - 1745) & v23));
  LOBYTE(v22) = *(v24 + ((v22 + 2) & v23));
  v26 = STACK[0x520];
  *(v21 - 0xAE02CA257B6A96CLL) = v20 ^ (v21 * v12) ^ v22 ^ v25 ^ v13;
  return (*(STACK[0x548] + 8 * (((v10 == 2695) * a8) ^ (v9 + 293))))();
}

uint64_t sub_3E734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x978] += (((v8 - 261) | 0x122u) - 2173) ^ v8 ^ 0x660u;
  LODWORD(STACK[0x9F8]) = (v7 + 15) & 0xFFFFFFF0;
  v11 = STACK[0x360];
  return (*(v10 + 8 * ((3442 * (v6 == v9)) ^ v8)))(a1, a2, a3, 2256851803, a5, a6, 2038115493);
}

uint64_t sub_3E874@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v11 = v8 + v4;
  v12 = *(v11 - 15);
  v13 = *(v11 - 31);
  v14 = a1 + v5;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v10 + 8 * ((((((v7 | v6) >> (((v2 + 32) | a2) - 36)) & 1) == 0) * v9) ^ v3)))();
}

uint64_t sub_3E994()
{
  v7 = v1 - 1;
  *(v5 + v7) = *(v2 + v7 + v4);
  return (*(v6 + 8 * (((v7 == 0) * v3) | v0)))();
}

uint64_t sub_3E9C0@<X0>(int a1@<W3>, int a2@<W8>)
{
  v6 = a2 - 2512;
  v7 = a2 + 1979671718;
  v8 = *(&off_18D8F0 + a1 + a2 - 2495);
  *(v2 + 1248) = 4;
  v9 = *(v8 - 558417974);
  LOBYTE(STACK[0x1174]) = -115 * *v9 - 60;
  LOBYTE(STACK[0x1175]) = -115 * v9[1] - 60;
  LOBYTE(STACK[0x1176]) = -115 * v9[2] - 60;
  LOBYTE(STACK[0x1177]) = -115 * v9[3] - 60;
  LOBYTE(STACK[0x1178]) = -115 * v9[4] - 60;
  LOBYTE(STACK[0x1179]) = -115 * v9[5] - 60;
  LOBYTE(STACK[0x117A]) = -115 * v9[6] - 60;
  LOBYTE(STACK[0x117B]) = -115 * v9[7] - 60;
  LOBYTE(STACK[0x117C]) = -115 * v9[8] - 60;
  LOBYTE(STACK[0x117D]) = -115 * v9[9] - 60;
  LOBYTE(STACK[0x117E]) = -115 * v9[10] - 60;
  LOBYTE(STACK[0x117F]) = -115 * v9[11] - 60;
  LOBYTE(STACK[0x1180]) = -115 * v9[12] - 60;
  LOBYTE(STACK[0x1181]) = -115 * v9[13] - 60;
  LOBYTE(STACK[0x1182]) = -115 * v9[14] - 60;
  LOBYTE(STACK[0x1183]) = -115 * v9[15] - 60;
  LOBYTE(STACK[0x1184]) = -115 * v9[16] - 60;
  v10 = *(v8 - 558417974);
  LOBYTE(STACK[0x1185]) = -115 * v10[17] - 60;
  LOBYTE(STACK[0x1186]) = -115 * v10[18] - 60;
  LOBYTE(STACK[0x1187]) = -115 * v10[19] - 60;
  v11 = (*(v5 + 8 * (a2 - 2038115175)))(&STACK[0x1174], &STACK[0xC14], &STACK[0xEC0], 0, 0);
  v12 = LODWORD(STACK[0xC14]);
  v13 = 1913485891 * (((~(v4 - 208) | 0x18C2A96D5C14D8BELL) + ((v4 - 208) | 0xE73D5692A3EB2741)) ^ 0xC40CABD53E07C06ALL);
  *v3 = v7 ^ v13;
  *(v3 + 8) = v13;
  *(v3 + 24) = v13;
  *(v3 + 28) = (v7 ^ 3) + v13;
  *(v3 + 32) = v11 ^ v13;
  *(v3 + 16) = v6 - v13 + 1507204927;
  *(v3 + 20) = (v7 ^ 0x97) + v13;
  v14 = (*(STACK[0x948] + 8 * (v6 ^ 0x797B267C)))(v4 - 208);
  return (*(STACK[0x948] + 8 * *(v3 + 40)))(v14);
}

uint64_t sub_3EC7C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x8F8] = *(a1 + 240);
  LODWORD(STACK[0x8D0]) = *(a1 + 248);
  v3 = *(a1 + 344);
  STACK[0x760] = *(a1 + 496);
  v4 = *(v2 + 8 * v1);
  STACK[0x8E8] = v4;
  STACK[0xC30] = v4;
  return (*(v2 + 8 * (v1 ^ 0x23B ^ (335 * ((((v1 ^ 0xF03D4DA1) + 1200322874) ^ v1) != -229428094)))))();
}

uint64_t sub_3ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = *(v62 + 24);
  *(v64 + 8) = (v63 - 734254279) ^ (1913485891 * ((((v65 - 208) | 0x8936D712) - (v65 - 208) + ((v65 - 208) & 0x76C928E8)) ^ 0x14DA3038));
  *v64 = v66;
  v67 = (*(a2 + 8 * (v63 | 0x13)))(v65 - 208);
  return (*(STACK[0x948] + 8 * (((((v63 + 75) ^ (*(*(a62 - 1648919999) + 32) == 0)) & 1) * ((v63 - 601676469) ^ 0xDC232FE2)) ^ v63)))(v67);
}

uint64_t sub_3EDCC(uint64_t a1)
{
  *a1 = 0xD00000016;
  *(a1 + 8) = 0;
  return (*(v1 + 5448))();
}

uint64_t sub_3EDEC@<X0>(int a1@<W6>, int a2@<W8>)
{
  if ((v2 - 1) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = -5 - v3 >= (v2 - 1);
  }

  v6 = v5;
  return (*(v4 + 8 * (((((a2 + 1629102295) | 0x18610424) - a1 + 103) * v6) ^ a2)))();
}

uint64_t sub_3EEC8@<X0>(int a1@<W8>)
{
  v6 = *(v3 + 8 * (a1 - 2038112934));
  LODWORD(STACK[0x910]) = v5 + ((v2 + v1 - ((v2 + v1) >> 16)) >> 8) - ((v2 + v1) >> 16) + v2 + v4;
  v7 = STACK[0x328];
  return v6();
}

uint64_t sub_3F038(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0xB5C]) = v8;
  v10 = v8 == v7;
  LOBYTE(STACK[0xDDF]) = v10;
  v11 = STACK[0x368];
  return (*(v9 + 8 * ((a4 + a7 + 87) ^ (1266 * v10))))();
}

uint64_t sub_3F074@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v15 = (((((a1 >> 30) | 0x86B8AAE4) ^ a1 ^ a5) + a6) ^ ((((a1 >> 30) | 0x86B8AAE4) ^ a1 ^ a7) + a8) ^ ((((a1 >> 30) | 0x86B8AAE4) ^ a1 ^ v13) + a4)) * a2;
  *(v11 + 4 * a9) = v9 + v15;
  return (*(v10 + 8 * (((a9 < 0x26F) * v14) ^ a3)))(a9 + v12 + v15);
}

uint64_t sub_3F240(int a1, int a2, int a3, int a4, int a5)
{
  v6 = STACK[0x8F8] + v5;
  v7 = STACK[0x860];
  LODWORD(STACK[0x4E8]) = *(STACK[0x3D8] + v6) * (((LODWORD(STACK[0x860]) + 305) | 0x82) ^ 0xB17FB897);
  return (*(STACK[0x948] + 8 * ((1006 * (v6 + 1 > 0xF)) ^ v7)))((a1 + 1), (a2 + 1), (a3 - 1), (a4 + 1), (a5 + 1));
}

uint64_t sub_3F3AC()
{
  v3 = v1[33];
  LODWORD(STACK[0xE5C]) = STACK[0xF28];
  v4 = v1[121];
  v1[38] = v4 ^ 0xC7543688F1282A65;
  v5 = v1[163];
  v1[130] = v5 ^ 0xC7543688F1282A65;
  v6 = STACK[0xAA0];
  LODWORD(STACK[0xA3C]) = STACK[0xAA0];
  v7 = v1[161];
  v1[80] = v7 ^ 0xC7543688F1282A65;
  v8 = STACK[0xF84];
  LODWORD(STACK[0xABC]) = STACK[0xF84];
  v14 = v3 == 0xC7543688F1282A65 || v4 == ((v0 - 109069176) & 0x7FFB6CF5) - 0x38ABC97788530240 || v5 == 0xC7543688F1282A65 || v7 == 0xC7543688F1282A65 || v6 == 0 || v8 == 0;
  return (*(v2 + 8 * ((125 * v14) ^ v0)))();
}

uint64_t sub_3F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v9 = (a5 + 8 * v7);
  v10 = v9[1];
  if (a6 > 0x6A87006B != (v10 + *v9) > 0x6A87006B)
  {
    v11 = (v10 + *v9) > 0x6A87006B;
  }

  else
  {
    v11 = v10 + *v9 + (((v8 - 118) | 0x445) ^ 0x9578FAF9) > a7;
  }

  return (*(a1 + 8 * ((v11 * (v8 ^ 0x1A3)) ^ v8)))();
}

uint64_t sub_3F528()
{
  v6 = 1913485891 * ((((2 * v1) | 0x25597B8BFE0AABA6) - v1 - 0x12ACBDC5FF0555D3) ^ 0x319D408262E9B2F9);
  *(v3 + 32) = v0 ^ v6;
  *v3 = (v4 - 42317258) ^ (1913485891 * ((((2 * v1) | 0xFE0AABA6) - v1 + 16427565) ^ 0x62E9B2F9));
  v7 = 1913485891 * ((((2 * v1) | 0xFE0AABA6) - v1 + 16427565) ^ 0x62E9B2F9) + v4 - 42317258;
  *(v3 + 16) = v4 - 1913485891 * ((((2 * v1) | 0xFE0AABA6) - v1 + 16427565) ^ 0x62E9B2F9) + 1507204927;
  *(v3 + 20) = v7 - 61;
  *(v3 + 8) = v6 ^ 0x77;
  *(v3 + 24) = 1913485891 * ((((2 * v1) | 0xFE0AABA6) - v1 + 16427565) ^ 0x62E9B2F9);
  *(v3 + 28) = v7 - 14;
  v8 = (*(v2 + 8 * (v4 ^ (v4 - 1577))))(v5 - 208);
  return (*(v2 + 8 * *(v3 + 40)))(v8);
}

uint64_t sub_3F5F4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v4 + a3 + 412;
  STACK[0x940] = (*(a1 + 8 * (a3 ^ (a3 - 1461))))(STACK[0x868] + STACK[0x870]);
  v6 = (*(STACK[0x948] + 8 * (v3 - 2038112721)))();
  v7 = STACK[0x948];
  *STACK[0x938] = v6;
  return (*(v7 + 8 * v5))();
}

uint64_t sub_3F68C(uint64_t a1, uint64_t *a2)
{
  LODWORD(STACK[0x930]) = v2;
  v4 = (v2 + 1469400785) & 0xA86ABA7C;
  STACK[0x928] = v4;
  LODWORD(STACK[0x858]) = LODWORD(STACK[0xD88]) - 65021204 + LODWORD(STACK[0xF2C]);
  v6 = *(STACK[0xA58] + 8);
  v5 = STACK[0xA58] + 8;
  STACK[0x848] = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *v3;
  v8 = *a2;
  v9 = *(*a2 + (((v5 & 0xFFFFFFF8) + 916900720) & *v3));
  v10 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x868] = v10;
  v11 = v4 ^ 0x89F455BA1C0B23DLL ^ (v10 + v9);
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xD8D188F9068EB840;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x7E1F3531EE2817FLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xBEACFB9F4D191338;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x8A4943FA3C1BB996;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x7EEC34FBF2FA89DCLL) - 0x4089E5820682BB12) ^ 0x30F4773525D004E8;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = 8 * (v5 & 7);
  STACK[0x890] = v25;
  v26 = ((((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> v25) ^ v6) << 56;
  LODWORD(v24) = *(v5 + 1);
  STACK[0x870] = (v5 + 1) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v8 + ((((v5 + 1) & 0xFFFFFFF8) + 916900720) & v7));
  v28 = __ROR8__((v5 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x8D0] = v28;
  v29 = (((2 * (v27 + v28)) & 0x36031187A6404E56) - (v27 + v28) - 0x1B0188C3D320272CLL) ^ 0xEC6132678D1F68C1;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xD8D188F9068EB840;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((((2 * (v33 + v32)) & 0x87FF847E3BB1BD42) - (v33 + v32) + 0x3C003DC0E227215ELL) ^ 0x3BE1CE93FCC5A021, 8);
  v35 = (((2 * (v33 + v32)) & 0x87FF847E3BB1BD42) - (v33 + v32) + 0x3C003DC0E227215ELL) ^ 0x3BE1CE93FCC5A021 ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ 0xBEACFB9F4D191338;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x537E9B8DEAF5304ALL) - (v38 + v37) + 0x5640B2390A8567DALL) ^ 0xDC09F1C3369EDE4CLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x8EF0EAABBB132B96) - (v41 + v40) + 0x38878AAA22766A34) ^ 0xB705E7E2FEDB2A32;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v46 = (((v44 + v43) | 0xCFDBACD1410FD502) - ((v44 + v43) | 0x3024532EBEF02AFDLL) + 0x3024532EBEF02AFDLL) ^ 0xF1A8F32CD18C65A1;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = __ROR8__(v46, 8);
  v49 = 8 * ((v5 + 1) & 7);
  STACK[0x860] = v49;
  LODWORD(v46) = (((v48 + v47 - ((2 * (v48 + v47)) & 0x600C4B18E2AF33C8) - 0x4FF9DA738EA8661CLL) ^ 0x96291A53BEB386A8) >> v49);
  LODWORD(v47) = *(v5 + 2);
  v50 = *(v8 + (v7 & (((v5 + 2) & 0xE1ABD380) + ((v5 + 2) & 0x1E542C78 | 0xE1ABD381) + 1425733615)));
  v51 = v26 | ((v46 ^ v24) << 48);
  v52 = __ROR8__((v5 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x878] = v52;
  v53 = (v50 + v52) ^ 0x89F455BA1C0B015;
  v54 = v53 ^ __ROR8__(v50, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xD8D188F9068EB840;
  v56 = __ROR8__(v55, 8);
  v57 = v55 ^ __ROR8__(v54, 61);
  v58 = (((v56 + v57) | 0xACA732D304968CC6) - ((v56 + v57) | 0x5358CD2CFB697339) + 0x5358CD2CFB697339) ^ 0xAB46C1801A740DB9;
  v59 = __ROR8__(v58, 8);
  v60 = v58 ^ __ROR8__(v57, 61);
  v61 = (((v59 + v60) | 0x370F594EAAC623F7) - ((v59 + v60) | 0xC8F0A6B15539DC08) - 0x370F594EAAC623F8) ^ 0x89A3A2D1E7DF30CFLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x8A4943FA3C1BB996;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x8F826D48DCAD4006;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x3E735FFD9083B0A3;
  v68 = 8 * ((v5 + 2) & 7);
  STACK[0x8C0] = v68;
  v69 = v51 | (((((__ROR8__(v67, 8) + (v67 ^ __ROR8__(v66, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> v68) ^ v47) << 40);
  LODWORD(v47) = *(v5 + 3);
  v70 = *(v8 + (v7 & (((v5 + 3) & 0xFFFFFFF8 ^ 0xBE69F104) - 183452555 + ((2 * ((v5 + 3) & 0xFFFFFFF8)) | 0x832C1DF7))));
  v71 = __ROR8__((v5 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x8B0] = v71;
  v72 = (((2 * (v70 + v71)) & 0xA8A5819147E7DBDALL) - (v70 + v71) - 0x5452C0C8A3F3EDEELL) ^ 0xA3327A6CFDCCA207;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xD8D188F9068EB840;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x7E1F3531EE2817FLL;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0xBEACFB9F4D191338;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x8A4943FA3C1BB996;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * (v82 + v81)) | 0x8045043B8D50F1BALL) - (v82 + v81) + 0x3FDD7DE239578723) ^ 0x4FA0EF551A0538DBLL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) | 0xF6CF919CCB20C81ELL) - (v85 + v84) - 0x7B67C8CE6590640FLL) ^ 0x45149733F513D4ACLL;
  v87 = 8 * ((v5 + 3) & 7);
  STACK[0x900] = v87;
  v88 = (((__ROR8__(v86, 8) + (v86 ^ __ROR8__(v84, 61))) ^ 0x262F3FDFCFE41F4CLL) >> v87) ^ v47;
  LOBYTE(v84) = *(v5 + 4);
  v89 = v69 | (v88 << 32);
  v90 = *(v8 + (v7 & (((v5 + 4) & 0xFFFFFFF8 ^ 0x11475C88) + 1206790137 + ((2 * ((v5 + 4) & 0xFFFFFFF8)) | 0xDD7146EF))));
  v91 = __ROR8__((v5 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x8E8] = v91;
  v92 = (((v90 + v91) ^ 0x39C4B3E848C25DA6 | 0xC5DA6E033FC4EA12) - ((v90 + v91) ^ 0x39C4B3E848C25DA6 | 0x3A2591FCC03B15EDLL) + 0x3A2591FCC03B15EDLL) ^ 0xF48198B0D6C607A1;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xD8D188F9068EB840;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((v96 + v95) | 0xC0D19C3781FCB817) - ((v96 + v95) | 0x3F2E63C87E0347E8) + 0x3F2E63C87E0347E8) ^ 0xC7306F649F1E3968;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) | 0x640700859C889E00) - (v99 + v98) + 0x4DFC7FBD31BBB100) ^ 0xCAF7BDD835D5C38;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x8A4943FA3C1BB996;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x8F826D48DCAD4006;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (v106 + v105 - ((2 * (v106 + v105)) & 0x32AC728CB53E58CELL) - 0x66A9C6B9A560D399) ^ 0xA72566BBCA1C9CC4;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = 8 * ((v5 + 4) & 7);
  STACK[0x910] = v110;
  v111 = v89 & 0xFFFFFFFF00FFFFFFLL | (((((v109 + v108) ^ 0x262F3FDFCFE41F4CLL) >> v110) ^ v84) << 24);
  LOBYTE(v108) = *(v5 + 5);
  v112 = (v5 + 5) & 0xFFFFFFF8;
  v113 = *(v8 + (v7 & (((v5 + 5) & 0xBB9624E0) + ((v5 + 5) & 0x4469DB18 | 0xBB9624E0) + 2064688784)));
  v114 = __ROR8__((v5 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x908] = v114;
  v115 = (((v113 + v114) | 0x3F13C643B6A6F03ELL) - ((v113 + v114) | 0xC0EC39BC49590FC1) - 0x3F13C643B6A6F03FLL) ^ 0x378C83181766402BLL;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xD8D188F9068EB840;
  v118 = __ROR8__(v117, 8);
  v119 = v117 ^ __ROR8__(v116, 61);
  v120 = (((v118 + v119) | 0xA644646D6BE158D0) - ((v118 + v119) | 0x59BB9B92941EA72FLL) + 0x59BB9B92941EA72FLL) ^ 0xA1A5973E7503D9AFLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0xBEACFB9F4D191338;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x8A4943FA3C1BB996;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x8F826D48DCAD4006;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x3E735FFD9083B0A3;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = 8 * ((v5 + 5) & 7);
  STACK[0x8F8] = v131;
  v132 = v111 & 0xFFFFFFFFFF00FFFFLL | (((((((2 * (v130 + v129)) & 0xB1FB3B6D96BD3FBELL) - (v130 + v129) - 0x58FD9DB6CB5E9FE0) ^ 0x812D5D96FB457F6CLL) >> v131) ^ v108) << 16);
  LOBYTE(v129) = *(v5 + 6);
  v133 = (v5 + 6) & 0xFFFFFFF8;
  v134 = *(v8 + (v7 & (((v5 + 6) & 0x83E3C330) + ((v5 + 6) & 0x7C1C3CC8 | 0x83E3C330) - 1295841216)));
  v135 = __ROR8__((v5 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x8F0] = v135;
  v136 = (v134 + v135) ^ 0x89F455BA1C0B015;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (v138 + v137 - ((2 * (v138 + v137)) & 0xCE42FAD4A0EAD192) - 0x18DE8295AF8A9737) ^ 0x3FF0F59356FBD089;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x7E1F3531EE2817FLL;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((2 * (v143 + v142)) | 0xE3B3FA2CBBDEE6FCLL) - (v143 + v142) + 0xE2602E9A2108C82) ^ 0x4F75068910F66046;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = __ROR8__((v146 + v145 - ((2 * (v146 + v145)) & 0x7558663EA408E8C2) + 0x3AAC331F52047461) ^ 0xB0E570E56E1FCDF7, 8);
  v148 = (v146 + v145 - ((2 * (v146 + v145)) & 0x7558663EA408E8C2) + 0x3AAC331F52047461) ^ 0xB0E570E56E1FCDF7 ^ __ROR8__(v145, 61);
  v149 = (v147 + v148) ^ 0x8F826D48DCAD4006;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (((v151 + v150) & 0x9E032994ABA907D4 ^ 0x1800008000880400) + ((v151 + v150) ^ 0xC673BB56EF6383FCLL) - (((v151 + v150) ^ 0xC673BB56EF6383FCLL) & 0x9E032994ABA907D4)) ^ 0x6603CD3FD449348BLL;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = __ROR8__(v152, 8);
  v155 = 8 * ((v5 + 6) & 7);
  STACK[0x880] = v155;
  v156 = ((((((((v154 + v153) | 0x9B04BE6BEDA3ADFDLL) - ((v154 + v153) | 0x64FB4194125C5202) + 0x64FB4194125C5202) ^ 0xBD2B81B42247B2B1) >> v155) ^ v129) << 8) ^ 0x918843F5A6B18555) & (v132 ^ 0xFF8E53FFA6FDFFDDLL);
  v157 = *(v5 + 7);
  v158 = *(v8 + (v7 & (((v5 + 7) & 0xFFFFFFF8) + 916900720)));
  v159 = __ROR8__((v5 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x850] = v159;
  v160 = (v158 + v159 - ((2 * (v158 + v159)) & 0x43E8B35CD120EB22) - 0x5E0BA651976F8A6FLL) ^ 0xA96B1CF5C950C584;
  v161 = v160 ^ __ROR8__(v158, 61);
  v162 = (__ROR8__(v160, 8) + v161) ^ 0xD8D188F9068EB840;
  v163 = v162 ^ __ROR8__(v161, 61);
  v164 = __ROR8__(v162, 8);
  v165 = (((v164 + v163) | 0x50598F282133615DLL) - ((v164 + v163) | 0xAFA670D7DECC9EA2) - 0x50598F282133615ELL) ^ 0x57B87C7B3FD1E022;
  v166 = v165 ^ __ROR8__(v163, 61);
  v167 = (__ROR8__(v165, 8) + v166) ^ 0xBEACFB9F4D191338;
  v168 = __ROR8__(v167, 8);
  v169 = v167 ^ __ROR8__(v166, 61);
  v170 = (((2 * (v168 + v169)) | 0x76363C472442CA34) - (v168 + v169) - 0x3B1B1E239221651ALL) ^ 0xB1525DD9AE3ADC8CLL;
  v171 = v170 ^ __ROR8__(v169, 61);
  v172 = __ROR8__(v170, 8);
  v173 = (v172 + v171 - ((2 * (v172 + v171)) & 0xEEC5C04727D96720) - 0x89D1FDC6C134C70) ^ 0x78E08D6B4F41F396;
  v174 = v173 ^ __ROR8__(v171, 61);
  v175 = (__ROR8__(v173, 8) + v174) ^ 0x3E735FFD9083B0A3;
  v176 = v175 ^ __ROR8__(v174, 61);
  v177 = __ROR8__(v175, 8);
  v178 = 8 * ((v5 + 7) & 7);
  STACK[0x8A0] = v178;
  v179 = ((((2 * (v177 + v176)) | 0x92174E02BF6CCAEALL) - (v177 + v176) - 0x490BA7015FB66575) ^ 0x6F2498DE90527A39) >> v178;
  v180 = ((v132 & 0x6E77BC0A594E0000 | v156) ^ 0xBE8EDFFAB92684BBLL) & (v179 ^ ~v157 | 0xFFFFFFFFFFFFFF00) | (v179 ^ v157) & 0x11;
  v181 = (((LODWORD(STACK[0x858]) - 1) >> 4) ^ 0x57E5BFF3FDCFFFDFLL) + ((2 * ((LODWORD(STACK[0x858]) - 1) >> 4)) & 0x1B9FFFBE) - 0x62C2B94C42BDA4CBLL + (((v180 ^ 0xF3F3C0021429C42DLL) - 0x5C99FB2523644BACLL) ^ ((v180 ^ 0xE466509269AB9FFBLL) - 0x4B0C6BB55EE6107ALL) ^ ((v180 ^ 0x38930C9F62155A38) + 0x6806C847AAA72A47));
  v182 = ((v181 ^ 0xFA1ECBE7CF44F356) + 0x71576B67A28CC00DLL) ^ v181 ^ ((v181 ^ 0x5BE7DE42B7FE7FFDLL) - 0x2F51813D25C9B358) ^ ((v181 ^ 0xA29ABDB59472DEF0) + 0x29D31D35F9BAEDABLL) ^ ((v181 ^ 0x77D5F76F7EFF9EFELL) - 0x363A810ECC8525BLL);
  v183 = *(v8 + (((STACK[0x848] | 0x7135D4C7) + (STACK[0x848] | 0x8ECA2B39) + 916900720) & v7));
  v184 = (STACK[0x868] + v183 - ((2 * (STACK[0x868] + v183)) & 0x8533A2B734903AF0) - 0x3D662EA465B7E288) ^ 0xCA0694003B88AD6DLL;
  v185 = v184 ^ __ROR8__(v183, 61);
  v186 = __ROR8__(v184, 8);
  v187 = (((2 * (v186 + v185)) | 0xF688ED2A37CB98B8) - (v186 + v185) - 0x7B4476951BE5CC5CLL) ^ 0xA395FE6C1D6B741CLL;
  v188 = v187 ^ __ROR8__(v185, 61);
  v189 = __ROR8__(v187, 8);
  v190 = (v189 + v188 - ((2 * (v189 + v188)) & 0xC87FF72C74EF35F4) + 0x643FFB963A779AFALL) ^ 0x63DE08C524951B85;
  v191 = v190 ^ __ROR8__(v188, 61);
  v192 = (__ROR8__(v190, 8) + v191) ^ 0xBEACFB9F4D191338;
  v193 = v192 ^ __ROR8__(v191, 61);
  v194 = (__ROR8__(v192, 8) + v193) ^ 0x8A4943FA3C1BB996;
  v195 = v194 ^ __ROR8__(v193, 61);
  v196 = (__ROR8__(v194, 8) + v195) ^ 0x8F826D48DCAD4006;
  v197 = v196 ^ __ROR8__(v195, 61);
  v198 = (__ROR8__(v196, 8) + v197) ^ 0x3E735FFD9083B0A3;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = __ROR8__(v198, 8);
  *v5 = HIBYTE(v182) ^ (((v200 + v199 - ((2 * (v200 + v199)) & 0xFE9202D6C3668C9ALL) + 0x7F49016B61B3464DLL) ^ 0x59663EB4AE575901) >> STACK[0x890]) ^ 0x74;
  v201 = *(*a2 + (((STACK[0x870] | 0x5AF061C3) + 916900721 + (STACK[0x870] | 0xA50F9E3C)) & *STACK[0x368]));
  v202 = (v201 + STACK[0x8D0]) ^ 0x89F455BA1C0B015;
  v203 = v202 ^ __ROR8__(v201, 61);
  v204 = __ROR8__(v202, 8);
  v205 = (v204 + v203 - ((2 * (v204 + v203)) & 0xBCFEE7384C0A545ALL) - 0x21808C63D9FAD5D3) ^ 0x6AEFB65208B926DLL;
  v206 = v205 ^ __ROR8__(v203, 61);
  v207 = (__ROR8__(v205, 8) + v206) ^ 0x7E1F3531EE2817FLL;
  v208 = v207 ^ __ROR8__(v206, 61);
  v209 = (__ROR8__(v207, 8) + v208) ^ 0xBEACFB9F4D191338;
  v210 = v209 ^ __ROR8__(v208, 61);
  v211 = (__ROR8__(v209, 8) + v210) ^ 0x8A4943FA3C1BB996;
  v212 = __ROR8__(v211, 8);
  v213 = v211 ^ __ROR8__(v210, 61);
  v214 = (((2 * (v212 + v213)) & 0xCD808E9C6F9D6E8ELL) - (v212 + v213) - 0x66C0474E37CEB748) ^ 0x16BDD5F9149C08BELL;
  v215 = v214 ^ __ROR8__(v213, 61);
  v216 = __ROR8__(v214, 8);
  v217 = (((2 * (v216 + v215)) & 0xC3C588DDE7837B50) - (v216 + v215) - 0x61E2C46EF3C1BDA9) ^ 0xA06E646C9CBDF2F4;
  v218 = v217 ^ __ROR8__(v215, 61);
  v219 = __ROR8__(v217, 8);
  *(v5 + 1) = BYTE6(v182) ^ (((v219 + v218 - ((2 * (v219 + v218)) & 0xE8CC643E06E5A5DCLL) - 0xB99CDE0FC8D2D12) ^ 0xD2490DC0CC96CDA2) >> STACK[0x860]) ^ 0xB6;
  v220 = *(*a2 + ((*STACK[0x368] & (1554484705 * (((-1457424863 * ((v5 + 2) & 0xFFFFFFF8)) | 0xA43F4BE2) + ((-1457424863 * ((v5 + 2) & 0xFFFFFFF8)) | 0x5BC0B41D)) - 1823581871)) & 0xFFFFFFFFFFFFFFF8));
  v221 = (v220 + STACK[0x878]) ^ 0x89F455BA1C0B015;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = __ROR8__(v221, 8);
  v224 = (((2 * (v223 + v222)) & 0x6CF87B7F02061DACLL) - (v223 + v222) + 0x4983C2407EFCF129) ^ 0x91524AB978724969;
  v225 = v224 ^ __ROR8__(v222, 61);
  v226 = (__ROR8__(v224, 8) + v225) ^ 0x7E1F3531EE2817FLL;
  v227 = v226 ^ __ROR8__(v225, 61);
  v228 = __ROR8__(v226, 8);
  v229 = (((v228 + v227) | 0xCD37197ED6EBFA97) - ((v228 + v227) | 0x32C8E68129140568) + 0x32C8E68129140568) ^ 0x739BE2E19BF2E9AFLL;
  v230 = v229 ^ __ROR8__(v227, 61);
  v231 = __ROR8__(v229, 8);
  v232 = (((v231 + v230) | 0x2507252EC1E6766BLL) - ((v231 + v230) | 0xDAF8DAD13E198994) - 0x2507252EC1E6766CLL) ^ 0xAF4E66D4FDFDCFFDLL;
  v233 = v232 ^ __ROR8__(v230, 61);
  v234 = __ROR8__(v232, 8);
  v235 = (v234 + v233 - ((2 * (v234 + v233)) & 0xE0FEFCBBF9032296) + 0x707F7E5DFC81914BLL) ^ 0xFFFD1315202CD14DLL;
  v236 = v235 ^ __ROR8__(v233, 61);
  v237 = (__ROR8__(v235, 8) + v236) ^ 0x3E735FFD9083B0A3;
  *(v5 + 2) = BYTE5(v182) ^ (((__ROR8__(v237, 8) + (v237 ^ __ROR8__(v236, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> STACK[0x8C0]) ^ 0x5F;
  v238 = *(*a2 + (*STACK[0x368] & (((v5 + 3) & 0x36B5D2B8) + ((v5 + 3) & 0xC94A2D40 | 0x36B5D2B8) - 984904)));
  v239 = __ROR8__((v238 + STACK[0x8B0]) ^ 0x89F455BA1C0B015, 8);
  v240 = (v238 + STACK[0x8B0]) ^ 0x89F455BA1C0B015 ^ __ROR8__(v238, 61);
  v241 = (((2 * (v239 + v240)) & 0x1E407C922B7B1960) - (v239 + v240) - 0xF203E4915BD8CB1) ^ 0x280E494FECCCCB0FLL;
  v242 = v241 ^ __ROR8__(v240, 61);
  v243 = __ROR8__(v241, 8);
  v244 = (((2 * (v243 + v242)) | 0x9F4C676819510CD6) - (v243 + v242) + 0x3059CC4BF3577995) ^ 0xC847C0E7124A0714;
  v245 = v244 ^ __ROR8__(v242, 61);
  v246 = __ROR8__(v244, 8);
  v247 = (((2 * (v246 + v245)) & 0xDB71D83D69C60FDELL) - (v246 + v245) - 0x6DB8EC1EB4E307F0) ^ 0x2CEBE87E0605EB28;
  v248 = v247 ^ __ROR8__(v245, 61);
  v249 = __ROR8__(v247, 8);
  v250 = (v249 + v248 - ((2 * (v249 + v248)) & 0x1F282DCC023B92C6) + 0xF9416E6011DC963) ^ 0x85DD551C3D0670F5;
  v251 = v250 ^ __ROR8__(v248, 61);
  v252 = __ROR8__(v250, 8);
  v253 = (((v252 + v251) ^ 0xE06AD0765131A8E0) - ((2 * ((v252 + v251) ^ 0xE06AD0765131A8E0)) & 0x65ED82C3A0F2BDACLL) - 0x4D093E9E2F86A12ALL) ^ 0xDD1E7C5F5DE5B630;
  v254 = v253 ^ __ROR8__(v251, 61);
  v255 = __ROR8__(v253, 8);
  v256 = (((v255 + v254) | 0x5BA586C124C5B9CELL) - ((v255 + v254) | 0xA45A793EDB3A4631) - 0x5BA586C124C5B9CFLL) ^ 0x65D6D93CB446096DLL;
  *(v5 + 3) = (((__ROR8__(v256, 8) + (v256 ^ __ROR8__(v254, 61))) ^ 0x262F3FDFCFE41F4CLL) >> STACK[0x900]) ^ BYTE4(v182) ^ 0x7F;
  v257 = *(*a2 + (*STACK[0x368] & (((v5 + 4) & 0x66B22F60 | 0x994DD09B) + 916900721 + ((v5 + 4) & 0x994DD098 | 0x66B22F64))));
  v258 = (((v257 + STACK[0x8E8]) | 0x943D1E9D32526703) - ((v257 + STACK[0x8E8]) | 0x6BC2E162CDAD98FCLL) + 0x6BC2E162CDAD98FCLL) ^ 0x9CA25BC69392D716;
  v259 = v258 ^ __ROR8__(v257, 61);
  v260 = __ROR8__(v258, 8);
  v261 = (((2 * ((v260 + v259) ^ 0x6D8381F836FBD29BLL)) | 0x1F45F372B7D4730CLL) - ((v260 + v259) ^ 0x6D8381F836FBD29BLL) + 0x705D0646A415C67ALL) ^ 0x3AF0F0B86B9F535DLL;
  v262 = v261 ^ __ROR8__(v259, 61);
  v263 = (__ROR8__(v261, 8) + v262) ^ 0x7E1F3531EE2817FLL;
  v264 = v263 ^ __ROR8__(v262, 61);
  v265 = __ROR8__(v263, 8);
  v266 = (((v265 + v264) & 0x16A90D906657A639 ^ 0x6280D0020558609) + ((v265 + v264) & 0xE956F26F99A859C6 ^ 0x4940D02D89201883) - 1) ^ 0xF1C426B2E46C8DB3;
  v267 = v266 ^ __ROR8__(v264, 61);
  v268 = __ROR8__(v266, 8);
  v269 = __ROR8__((v268 + v267 - ((2 * (v268 + v267)) & 0x92F616A1CE698EB4) + 0x497B0B50E734C75ALL) ^ 0xC33248AADB2F7ECCLL, 8);
  v270 = (v268 + v267 - ((2 * (v268 + v267)) & 0x92F616A1CE698EB4) + 0x497B0B50E734C75ALL) ^ 0xC33248AADB2F7ECCLL ^ __ROR8__(v267, 61);
  v271 = (v269 + v270) ^ 0x8F826D48DCAD4006;
  v272 = v271 ^ __ROR8__(v270, 61);
  v273 = __ROR8__(v271, 8);
  v274 = (((2 * (v273 + v272)) & 0x3C73A4B2C9B8CF88) - (v273 + v272) + 0x61C62DA69B23983BLL) ^ 0x5FB5725B0BA02898;
  v275 = v274 ^ __ROR8__(v272, 61);
  v276 = __ROR8__(v274, 8);
  *(v5 + 4) = (((((2 * (v276 + v275)) | 0x551AC066AA9F1482) - (v276 + v275) - 0x2A8D6033554F8A41) ^ 0xCA25FEC9AAB950DuLL) >> STACK[0x910]) ^ BYTE3(v182) ^ 0x92;
  LODWORD(v275) = (2 * v112) | 0xA8BBC83F;
  LODWORD(v274) = v112 ^ 0x2BA21BE0;
  v277 = STACK[0x368];
  v278 = *(*a2 + (*STACK[0x368] & (v274 + 1648944977 + v275)));
  v279 = (v278 + STACK[0x908]) ^ 0x89F455BA1C0B015;
  v280 = v279 ^ __ROR8__(v278, 61);
  v281 = (__ROR8__(v279, 8) + v280) ^ 0xD8D188F9068EB840;
  v282 = v281 ^ __ROR8__(v280, 61);
  v283 = (__ROR8__(v281, 8) + v282) ^ 0x7E1F3531EE2817FLL;
  v284 = v283 ^ __ROR8__(v282, 61);
  v285 = (__ROR8__(v283, 8) + v284) ^ 0xBEACFB9F4D191338;
  v286 = v285 ^ __ROR8__(v284, 61);
  v287 = (__ROR8__(v285, 8) + v286) ^ 0x8A4943FA3C1BB996;
  v288 = v287 ^ __ROR8__(v286, 61);
  v289 = __ROR8__(v287, 8);
  v290 = (((v289 + v288) | 0xB99733C5FDC5BFDFLL) - ((v289 + v288) | 0x4668CC3A023A4020) + 0x4668CC3A023A4020) ^ 0x36155E8D2168FFD9;
  v291 = v290 ^ __ROR8__(v288, 61);
  v292 = __ROR8__(v290, 8);
  *(v5 + 5) = (((__ROR8__((((2 * (v292 + v291)) | 0xA272AB9AA75F6132) - (v292 + v291) - 0x513955CD53AFB099) ^ 0x6F4A0A30C32C003ALL, 8) + ((((2 * (v292 + v291)) | 0xA272AB9AA75F6132) - (v292 + v291) - 0x513955CD53AFB099) ^ 0x6F4A0A30C32C003ALL ^ __ROR8__(v291, 61))) ^ 0x262F3FDFCFE41F4CLL) >> STACK[0x8F8]) ^ BYTE2(v182) ^ 0x37;
  LODWORD(v291) = (2 * v133) & 0x91CD97A0;
  LODWORD(v290) = v133 ^ 0xC8E6CBD1;
  v293 = STACK[0x948];
  v294 = *(*a2 + (*v277 & (v290 + 1841299359 + v291)));
  v295 = (((v294 + STACK[0x8F0]) | 0x455D217406D5921BLL) - ((v294 + STACK[0x8F0]) | 0xBAA2DE8BF92A6DE4) - 0x455D217406D5921CLL) ^ 0x4DC2642FA715220ELL;
  v296 = v295 ^ __ROR8__(v294, 61);
  v297 = __ROR8__(v295, 8);
  v298 = __ROR8__((v297 + v296 - ((2 * (v297 + v296)) & 0x7034D8A0A79D1028) + 0x381A6C5053CE8814) ^ 0xE0CBE4A955403054, 8);
  v299 = (v297 + v296 - ((2 * (v297 + v296)) & 0x7034D8A0A79D1028) + 0x381A6C5053CE8814) ^ 0xE0CBE4A955403054 ^ __ROR8__(v296, 61);
  v300 = (v298 + v299) ^ 0x7E1F3531EE2817FLL;
  v301 = v300 ^ __ROR8__(v299, 61);
  v302 = (__ROR8__(v300, 8) + v301) ^ 0xBEACFB9F4D191338;
  v303 = v302 ^ __ROR8__(v301, 61);
  v304 = (__ROR8__(v302, 8) + v303) ^ 0x8A4943FA3C1BB996;
  v305 = v304 ^ __ROR8__(v303, 61);
  v306 = (__ROR8__(v304, 8) + v305) ^ 0x8F826D48DCAD4006;
  v307 = v306 ^ __ROR8__(v305, 61);
  v308 = (__ROR8__(v306, 8) + v307) ^ 0x3E735FFD9083B0A3;
  *(v5 + 6) = (((__ROR8__(v308, 8) + (v308 ^ __ROR8__(v307, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> STACK[0x880]) ^ BYTE1(v182) ^ 0xCC;
  v309 = *(*a2 + (*v277 & (((v5 + 7) & 0xFFFFFFF8 ^ 0xE170987D) + 1429615347 + ((2 * ((v5 + 7) & 0xFFFFFFF8)) & 0xC2E130F0))));
  v310 = __ROR8__((((2 * (v309 + STACK[0x850])) & 0x521C873F55CE212ALL) - (v309 + STACK[0x850]) - 0x290E439FAAE71096) ^ 0xDE6EF93BF4D85F7FLL, 8);
  v311 = (((2 * (v309 + STACK[0x850])) & 0x521C873F55CE212ALL) - (v309 + STACK[0x850]) - 0x290E439FAAE71096) ^ 0xDE6EF93BF4D85F7FLL ^ __ROR8__(v309, 61);
  v312 = (((v310 + v311) | 0x2E8FB448E73D3317) - ((v310 + v311) | 0xD1704BB718C2CCE8) - 0x2E8FB448E73D3318) ^ 0xF65E3CB1E1B38B57;
  v313 = v312 ^ __ROR8__(v311, 61);
  v314 = (__ROR8__(v312, 8) + v313) ^ 0x7E1F3531EE2817FLL;
  v315 = v314 ^ __ROR8__(v313, 61);
  v316 = __ROR8__(v314, 8);
  v317 = (v316 + v315 - ((2 * (v316 + v315)) & 0x80B669D3B0FE40CLL) + 0x405B34E9D87F206) ^ 0xBAA948D1D09EE13ELL;
  v318 = v317 ^ __ROR8__(v315, 61);
  v319 = __ROR8__(v317, 8);
  v320 = (((2 * (v319 + v318)) | 0x8144E87A60D8C2ELL) - (v319 + v318) - 0x40A2743D306C617) ^ 0x8E4364B9EF1D7F81;
  v321 = v320 ^ __ROR8__(v318, 61);
  v322 = (__ROR8__(v320, 8) + v321) ^ 0x8F826D48DCAD4006;
  v323 = v322 ^ __ROR8__(v321, 61);
  v324 = __ROR8__(v322, 8);
  v325 = (((v324 + v323) ^ 0xDAC4E2454BE563E6) - ((2 * ((v324 + v323) ^ 0xDAC4E2454BE563E6)) & 0x41023B5BB387150CLL) - 0x5F7EE252263C757ALL) ^ 0x4436A01502A559C3;
  v326 = v325 ^ __ROR8__(v323, 61);
  v327 = __ROR8__(v325, 8);
  *(v5 + 7) = (((((2 * (v327 + v326)) & 0xCC935584D4B2126ELL) - (v327 + v326) + 0x19B6553D95A6F6C8) ^ 0x3F996AE25A42E984) >> STACK[0x8A0]) ^ 0xA5 ^ v182;
  v328 = LODWORD(STACK[0xD8C]);
  v329 = LODWORD(STACK[0xAFC]);
  v330 = LODWORD(STACK[0x940]);
  return (*(v293 + 8 * SLODWORD(STACK[0x930])))(STACK[0x928]);
}

uint64_t sub_416DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(&a20 + v22) = *(v21 + v22);
  v26 = v22 + 1 < 199 * (v20 ^ 0x240u) - 1002106302 && v22 + 1002105905 < v23;
  return (*(v24 + 8 * ((1382 * v26) ^ v20)))();
}

uint64_t sub_41754(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = STACK[0x7C8];
  v9 = LODWORD(STACK[0x808]) - 1524;
  LODWORD(STACK[0x858]) = v9;
  v10 = STACK[0x8E8];
  v11 = LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x560]) ^ STACK[0x578] ^ LODWORD(STACK[0x568]);
  STACK[0x718] = v11;
  v12 = v11 ^ STACK[0x540];
  v13 = STACK[0x900];
  LODWORD(v11) = *(STACK[0x900] + STACK[0x518]);
  LODWORD(STACK[0x860]) = v9 + 495;
  v14 = (((15 * ((((v11 ^ (v9 - 17) ^ 0x15) + 6) ^ ((v11 ^ 0xF9) + 7) ^ (((v9 + 117) ^ v11) - 117)) - 24)) ^ 0x20) + 33 * (((((v11 ^ (v9 - 17) ^ 0x15) + 6) ^ ((v11 ^ 0xF9) + 7)) ^ (((v9 + 117) ^ v11) - 117)) - 24)) | 0xFFFFFFC0;
  v15 = STACK[0x908];
  v16 = *(STACK[0x908] + 4 * v12);
  v17 = *(STACK[0x908] + 4 * BYTE2(v12));
  v18 = (*(v13 + 1377 * ((59 * BYTE3(v12)) ^ 0xDC) + 622404 - 4864 * (((1766023 * (1377 * ((59 * BYTE3(v12)) ^ 0xDCu) + 622404)) >> 32) >> 1)) ^ 0x76) + ((((59 * BYTE3(v12)) ^ v7) - 3) ^ (59 * BYTE3(v12)) ^ v7);
  LODWORD(v11) = (-38 - 9 * (((v11 ^ 0xFFFFFF85) + 123) ^ ((v11 ^ 0xFFFFFFE0) + 32) ^ ((v11 ^ 0x13) - 19))) ^ v14 ^ 0x1F;
  v19 = STACK[0x720];
  LODWORD(STACK[0x8F8]) = LODWORD(STACK[0x720]) ^ 0x70;
  LODWORD(v11) = (v19 ^ 0x70 ^ (v11 + ~(2 * ((v11 + 18) & 0x77 ^ v11 & 1)) + 9)) << 24;
  v20 = STACK[0x928];
  LODWORD(v11) = v11 ^ (2 * (v11 & STACK[0x928]));
  v21 = STACK[0x850];
  STACK[0x848] = v8;
  v22 = LODWORD(STACK[0x7F8]) ^ __ROR4__(v16, 24) ^ __ROR4__(v17, 8) ^ *(v15 + 4 * ((v18 ^ 0x7C) + 48)) ^ __ROR4__(*(v15 + 4 * BYTE1(v12)), 16) ^ (((v11 & v21) << v8) | ((v11 & STACK[0x840]) >> STACK[0x890]));
  v23 = STACK[0x778];
  v24 = STACK[0x880];
  v25 = v10 ^ LODWORD(STACK[0x880]);
  v26 = LODWORD(STACK[0x640]) ^ v25 ^ v22;
  v27 = STACK[0x940];
  v28 = (v27 ^ -v27 ^ ((v26 ^ STACK[0x798]) - (v26 ^ STACK[0x798] ^ v27))) + (v26 ^ STACK[0x798]);
  v29 = v28 ^ LODWORD(STACK[0x880]);
  v30 = (v19 ^ 0x70 ^ *(STACK[0x778] + 2)) << 24;
  v31 = v30 ^ (2 * (v30 & v20));
  STACK[0x490] = v12;
  v32 = v12 ^ v25 ^ v28;
  v33 = v31 % 0x101;
  v34 = STACK[0x930];
  v35 = v31 & STACK[0x930];
  v36 = (v31 & v21) << v8;
  v38 = v35 + (v31 & STACK[0x550]);
  v37 = v38 == 0;
  v39 = *(STACK[0x910] + 4 * (a2 + 1079 * v33 - 2120 * ((2025928 * (a2 + 1079 * v33)) >> 32)));
  v40 = 1079 * ((v38 - 257) % 0x101u) + 1668134 - 2120 * ((2025928 * (1079 * ((v38 - 257) % 0x101u) + 1668134)) >> 32);
  if (v37)
  {
    v40 = 1814;
  }

  v41 = *(STACK[0x910] + 4 * v40);
  v42 = (((v41 ^ 0x28D8D839) - 685299769) ^ ((v41 ^ 0x3721D4A0) - 924964000) ^ ((v41 ^ 0xCECB6D23) + 825529053)) * a7 + 260465086;
  v43 = *(v15 + 4 * BYTE1(v32));
  v44 = v22 - (v39 ^ (v33 - 785227334 - ((2 * v33) & 0x374)) ^ 0x9CFEA72F);
  v45 = STACK[0x8F0];
  v46 = v36 ^ (v35 >> STACK[0x8F0]);
  STACK[0x6E8] = v32;
  v47 = v42 ^ 0x9D132D2D ^ ((1451269590 * (((v41 ^ 0x52BD11DA) + 759361062) ^ ((v41 ^ 0x7704E8E0) + 150673184) ^ ((v41 ^ 0x748B9880) + 192178048)) + 520930172) | 0xA74E6B4E);
  if ((((*(v13 + 1377 * (BYTE2(v32) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (BYTE2(v32) ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - (HIWORD(v32) ^ 4)) & 8) != 0)
  {
    v48 = -8;
  }

  else
  {
    v48 = 8;
  }

  v49 = v44 + v47;
  v50 = v24 ^ __ROR4__(v43, 16) ^ *(v15 + 4 * HIBYTE(v32)) ^ __ROR4__(*(v15 + 4 * v32), 24);
  v51 = __ROR4__(*(v15 + 4 * (((v48 + (*(v13 + 1377 * (BYTE2(v32) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (BYTE2(v32) ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - (BYTE2(v32) ^ 4)) ^ 0xB2) - 110)), 8);
  STACK[0x7E8] = v49;
  v52 = (v50 ^ v51 ^ v46 ^ v49) + v24 - 2 * ((v50 ^ v51 ^ v46 ^ v49) & v24);
  v53 = v24 ^ LODWORD(STACK[0x5B8]);
  v54 = (v53 ^ (v52 - (v52 ^ v24))) + v52;
  LODWORD(STACK[0x710]) = v26;
  v55 = v27;
  v56 = v26 ^ v27 ^ v54;
  STACK[0x700] = v56;
  v57 = v56 ^ v24;
  v58 = v54 ^ v24;
  LODWORD(STACK[0x6F0]) = v29;
  v59 = v10;
  v60 = v23;
  HIDWORD(v61) = v29 ^ v10 ^ v56 ^ v24;
  LODWORD(v61) = HIDWORD(v61);
  HIDWORD(v61) = (v61 >> 2) - ((2 * (v61 >> 2)) & 0xA10168D0) + 1350612072;
  LODWORD(v61) = HIDWORD(v61);
  LODWORD(v56) = v61 >> 30;
  v62 = v56 ^ 0x4202D1A1;
  v63 = 1377 * (v19 ^ 0x19 ^ *(v23 + 4)) + 1692333;
  v64 = *(v13 + v63 - 4864 * (((1766023 * v63) >> 32) >> 1)) ^ 0xFFFFFF81;
  v65 = (v62 ^ -v62 ^ (v24 - (v24 ^ 0x4202D1A1 ^ v56))) + v24;
  LODWORD(STACK[0x818]) = v55 ^ v24;
  v66 = v55;
  LODWORD(STACK[0x630]) = v32;
  v67 = v32 ^ v55 ^ v24 ^ v62;
  v68 = (v64 << 24) - 1845493760;
  STACK[0x708] = BYTE2(v67);
  v69 = *(v15 + 4 * BYTE2(v67));
  v70 = v67 >> 24;
  v71 = STACK[0x870];
  if (v65)
  {
    v72 = STACK[0x870];
  }

  else
  {
    v72 = -16777216;
  }

  v73 = v72 & v68;
  v74 = v34;
  LODWORD(STACK[0x930]) = v34;
  STACK[0x738] = BYTE1(v67);
  v75 = *(v15 + 4 * BYTE1(v67));
  v76 = STACK[0x890];
  v77 = (((v68 ^ (2 * (v68 & v71))) & STACK[0x7D8]) << STACK[0x878]) ^ (((v68 ^ (2 * (v68 & v71))) & v34) >> STACK[0x890]);
  STACK[0x6D0] = v67;
  v78 = *(v15 + 4 * v67);
  STACK[0x788] = v70;
  v79 = *(v15 + 4 * v70);
  v80 = v77 ^ __ROR4__(v69, 8) ^ v54;
  if ((v80 & v79 & 4) != 0)
  {
    v81 = -(v79 & 4);
  }

  else
  {
    v81 = v79 & 4;
  }

  LODWORD(v83) = __ROR4__(v24 ^ __ROR4__(v75, 16) ^ __ROR4__(v78, 24) ^ v79 & 0xFFFFFFFB ^ (v81 + v80), 9) ^ 0x3C7A3C85;
  HIDWORD(v83) = v83;
  v82 = v83 >> 23;
  v84 = v57 ^ v66 ^ v82;
  LODWORD(STACK[0x690]) = v58;
  if ((v58 + 1451090552) | v58)
  {
    v85 = 0;
  }

  else
  {
    v85 = v73;
  }

  v86 = *(v60 + 8);
  LODWORD(STACK[0x830]) = v25;
  LODWORD(v88) = __ROR4__(v25 ^ 0xF4790A78 ^ v65 ^ v84, 31) ^ 0x2420E19F;
  HIDWORD(v88) = v88;
  v87 = v88 >> 1;
  v89 = STACK[0x8F8];
  v90 = v24 - (v87 ^ 0x921070CF);
  v91 = v24 ^ 0x921070CF ^ v87;
  v92 = (v91 ^ -v91 ^ v90) + v24;
  STACK[0x800] = v92;
  v93 = v85 ^ v82;
  v94 = v67 ^ v25 ^ v91;
  v95 = ((v89 ^ v86) << 24) ^ (2 * (((v89 ^ v86) << 24) & v20));
  STACK[0x790] = ((v65 - v95) ^ v95) + 2 * ((v65 - v95) & v95);
  v96 = v95 & v21;
  v97 = STACK[0x848];
  LODWORD(v96) = ((v95 & v74) >> v45) + (v96 << STACK[0x848]);
  v98 = v94;
  v99 = *(v13 + 1377 * (BYTE1(v94) ^ 0x69) + 1692333 - 4864 * (((1766023 * (1377 * (BYTE1(v94) ^ 0x69u) + 1692333)) >> 32) >> 1));
  LODWORD(v94) = v24 ^ 0xF4790A78 ^ v84;
  v100 = *(v15 + 4 * ((v99 ^ 0x76) + (((v99 ^ 0x76) - (v99 ^ 0x81)) ^ 0xFE) - 110));
  v101 = *(v13 + 1377 * (BYTE2(v98) ^ 0x23) + 5915592 - 4864 * (((7064091 * (1377 * (BYTE2(v98) ^ 0x23u) + 5915592)) >> 32) >> 3));
  v102 = (((v101 ^ 0x31) - 49) ^ ((v101 ^ 0xF9) + 7) ^ ((v101 ^ 0xBE) + 66)) - 28;
  LODWORD(STACK[0x758]) = v98;
  v103 = *(v15 + 4 * v98);
  v104 = v93 ^ 0xF4790A78;
  STACK[0x670] = v104;
  LODWORD(v104) = v104 ^ __ROR4__(v100, 16) ^ __ROR4__(v103, 24);
  v105 = v98;
  STACK[0x7E0] = v98;
  LODWORD(v104) = v104 ^ __ROR4__(*(v15 + 4 * (((2 * v102) & 0xCC ^ 0x48) + (v102 ^ 0xDA))), 8) ^ *(v15 + 4 * BYTE3(v98)) ^ v96;
  LODWORD(v104) = (v53 ^ (2 * (v104 & v24) - v24)) + v104;
  LODWORD(STACK[0x600]) = v94;
  LODWORD(v96) = v104 ^ v66 ^ v94;
  v106 = (v53 ^ (v104 - (v104 ^ v24))) + v104;
  HIDWORD(v88) = v96 | v24;
  LODWORD(v88) = v96 | v24;
  v107 = v88 >> 18;
  HIDWORD(v88) = v24 & ~v96;
  LODWORD(v88) = HIDWORD(v88);
  LODWORD(v88) = __ROR4__(__ROR4__(v107 + (v88 >> 18) - 2 * ((v88 >> 18) & v107), 25) ^ 0x59A30CEA, 7) ^ 0x873E8354;
  HIDWORD(v88) = v88;
  v108 = v88 >> 14;
  v109 = v24 & 0x1000;
  v110 = v59;
  LODWORD(v96) = v108 ^ v59 ^ v92;
  v111 = v96 ^ 0x15354E37;
  if ((v96 & v24 & 0x1000) != 0)
  {
    v109 = -v109;
  }

  v112 = (v109 + v111) ^ v24 & 0xFFFFEFFF;
  v113 = STACK[0x818];
  v114 = v105 ^ LODWORD(STACK[0x818]) ^ v111;
  v115 = STACK[0x778];
  v116 = *(STACK[0x778] + 16);
  v117 = v89;
  v118 = (v89 ^ v116) << 24;
  v119 = *(STACK[0x910] + 4 * (1079 * (v118 % 0x101) + 1111370 - 2120 * ((2025928 * (1079 * (v118 % 0x101) + 1111370)) >> 32)));
  v120 = ((2 * (v118 & v71)) ^ v118) & 0xDC000000 | (2 * (v118 & v71)) & 0x22222222 ^ v118 & 0x23000000;
  v121 = v114 - ((2039570243 * (((v119 ^ 0xEFBB23C2) + 272948286) ^ ((v119 ^ 0x9A6619F8) + 1704584712) ^ ((v119 ^ 0xA4EF5B80) + 1527817344)) - 1228039762) ^ 0xCA2272A0) + ((2039570243 * (((v119 ^ 0x72CD8988) - 1926072712) ^ ((v119 ^ 0x7C50A65A) - 2085660250) ^ ((v119 ^ 0xDFAF4E68) + 542159256)) - 1228039762) ^ 0xCA2272A0);
  v122 = STACK[0x840];
  v123 = STACK[0x7D8];
  v124 = (v120 & STACK[0x840]) >> v76;
  v125 = (v120 & STACK[0x7D8]) << v97;
  STACK[0x5B8] = v124;
  STACK[0x5B0] = v125;
  LODWORD(v125) = v124 | v125;
  LODWORD(STACK[0x5A8]) = v125;
  v126 = 1377 * (v116 & 0xD8 ^ ((v116 & 5 ^ 0xFE) - (v116 & 0xDD ^ 0xAE)) ^ 0x8C ^ (BYTE3(v121) + 110)) + 4834647;
  LOBYTE(v126) = *(v13 + v126 - 4864 * (((7064091 * v126) >> 32) >> 3)) ^ 0x7B;
  v127 = *(v13 + 1377 * (BYTE2(v121) ^ 0xEB) + 3822552 - 4864 * (((7064091 * (1377 * (BYTE2(v121) ^ 0xEBu) + 3822552)) >> 32) >> 3));
  LOBYTE(v119) = -38 - 9 * (((v127 ^ 0x90) + 112) ^ ((v127 ^ 0xE0) + 32) ^ ((v127 ^ 6) - 6));
  LOBYTE(v119) = v119 & 0xBF ^ (((16 * ((3 * (((v127 ^ 8) + 40) ^ v127 ^ ((v127 ^ 0xE) + 50))) & 3)) ^ 0xE0) - (v119 & 0x40));
  v128 = v24 ^ 0x15354E37 ^ v108;
  v129 = *(v15 + 4 * (((v126 >> (STACK[0x720] & 5 ^ 4)) >> (STACK[0x720] & 5 ^ 1)) ^ (8 * v126))) ^ __ROR4__(*(v15 + 4 * ((v119 ^ 0x1F) - 110)), 8);
  v130 = 1377 * ((BYTE1(v121) + 110) ^ 0xDC) + 4834647;
  LOBYTE(v130) = *(v13 + v130 - 4864 * (((7064091 * v130) >> 32) >> 3)) ^ 0x7B;
  v131 = *(v15 + 4 * ((v130 >> 5) | (8 * v130)));
  STACK[0x638] = v121;
  v132 = v129 ^ __ROR4__(*(v15 + 4 * v121), 24);
  STACK[0x6E0] = v106;
  v133 = v132 ^ __ROR4__(v131, 16) ^ ((v125 ^ -v125 ^ (v106 - (v106 ^ v125))) + v106);
  v134 = v115;
  v135 = ((*(v115 + 32) ^ 0x68) - 104) ^ ((*(v115 + 32) ^ 0xFFFFFFB2) + 78) ^ ((*(v115 + 32) ^ 0xFFFFFFAC) + 84);
  v136 = v128 & 4;
  if ((v136 & (v133 ^ v24)) != 0)
  {
    v136 = -v136;
  }

  STACK[0x628] = v128;
  v137 = v128 & 0xFFFFFFFB ^ v110 ^ (v136 + (v133 ^ v24));
  v138 = v135 - 28;
  v139 = *(v13 + 1377 * (v138 ^ 0xE2) + 1334313 - 4864 * (((1766023 * (1377 * (v138 ^ 0xE2u) + 1334313)) >> 32) >> 1)) ^ v138 ^ 0xFFFFFFD9 ^ ((v138 ^ 0xFFFFFFD9) + ~(2 * (((v138 ^ 0xFFFFFFD9) + 24) & 0x77 ^ (v138 ^ 0xFFFFFFD9) & 1)) - 113) ^ 0x62;
  v140 = v117;
  v141 = (v117 ^ (((8 * v139) | (v139 >> 5)) - 2 * (((8 * v139) | (v139 >> 5)) & 0x7E ^ (8 * v139) & 8) + 118)) << 24;
  v37 = (v139 & 0xE0) == 0;
  v142 = ((v141 & v71) << ((v139 & 0x20) != 0) << ((v139 & 0x20) == 0)) ^ v141;
  v143 = v142 & v123;
  v144 = v123;
  v145 = v133 - v142 + v143 + (v142 & ~v123);
  v146 = (v142 & v122) >> STACK[0x8F0];
  v147 = v97;
  v148 = (v143 << v97) ^ v146;
  v149 = v141 ^ v71;
  if (v37)
  {
    v149 = v141;
  }

  STACK[0x6B0] = v112;
  v150 = v112 ^ v113 ^ v137;
  STACK[0x688] = v121;
  v151 = STACK[0x940];
  v152 = v121 ^ LODWORD(STACK[0x940]) ^ v150;
  v153 = v149 & ~v71;
  LODWORD(STACK[0x520]) = v145;
  v154 = __ROR4__(v148 ^ v145, 11) ^ 0x80B26D22;
  v155 = v153 + (v141 & v71) - v141;
  v156 = v24 ^ __ROR4__(*(v15 + 4 * BYTE1(v152)), 16) ^ v155 ^ __ROR4__(v154, 21);
  STACK[0x6A0] = BYTE2(v152);
  v157 = *(v15 + 4 * BYTE2(v152));
  STACK[0x680] = (v121 ^ v151 ^ v112 ^ v113 ^ v137);
  v158 = *(v15 + 4 * (v121 ^ v151 ^ v112 ^ v113 ^ v137));
  v156 ^= 0x93691405;
  v159 = __PAIR64__(v156 ^ (v157 >> 8), __ROR4__(v157, 8));
  LODWORD(v159) = v156 ^ v159;
  STACK[0x770] = v152;
  v160 = v24 ^ *(v15 + ((v152 >> 22) & 0x3FC)) ^ ((v158 << (BYTE1(v157) & 8) << (BYTE1(v157) & 8 ^ 8)) + HIBYTE(v158)) ^ __ROR4__((v159 >> 3) ^ 0xFA548EE8, 29) ^ 0xD2A47747;
  HIDWORD(v159) = v160 ^ v153;
  LODWORD(v159) = v160 ^ v155;
  HIDWORD(v159) = (v159 >> 11) ^ 0xEFF36652;
  LODWORD(v159) = HIDWORD(v159);
  v161 = v159 >> 21;
  v162 = STACK[0x830];
  LODWORD(STACK[0x65C]) = v137;
  LODWORD(STACK[0x5A0]) = v161;
  v163 = v161 ^ v155;
  v164 = v162 ^ 0x9B32977F ^ v137 ^ v161 ^ v155;
  v165 = v164 & 0xFFFFFFBF;
  v166 = v164 & 0x40;
  if ((v166 & v153) != 0)
  {
    v166 = -v166;
  }

  v167 = (v166 + v155) ^ v165;
  v168 = v155 ^ v24;
  v169 = v167 ^ v155 ^ v24;
  v170 = v169 & 0x100000;
  if ((v169 & 0x100000 & v150) != 0)
  {
    v170 = -v170;
  }

  STACK[0x698] = v150;
  v171 = v169 & 0xFFEFFFFF ^ v110 ^ (v170 + v150);
  LODWORD(STACK[0x7A8]) = v155 ^ v113;
  v172 = v152 ^ v155 ^ v113 ^ v171;
  LODWORD(STACK[0x578]) = v172;
  v173 = *(v13 + 1377 * (v172 ^ 0x4C) + 2756754 - 4864 * (((7064091 * (1377 * (v172 ^ 0x4Cu) + 2756754)) >> 32) >> 3));
  v174 = 1377 * (((v172 >> 23) & 0x190 ^ 0x180) + (BYTE3(v172) ^ 0x20A));
  v175 = (v140 ^ v134[64]) << 24;
  v176 = STACK[0x890];
  v177 = (((v175 ^ (2 * (v175 & v71))) & v144) << v97) | (((v175 ^ (2 * (v175 & v71))) & STACK[0x930]) >> STACK[0x890]);
  LOBYTE(v174) = *(v13 + v174 - 4864 * (((1766023 * v174) >> 32) >> 1)) ^ 0x76;
  LODWORD(STACK[0x570]) = BYTE3(v172);
  v178 = *(v15 + 4 * ((((((v173 ^ 0x51) - 81) ^ ((v173 ^ 0x1B) - 27) ^ ((v173 ^ 0x3C) - 60)) - 88) ^ 0xCC) + 102));
  STACK[0x560] = BYTE1(v172);
  v179 = v163 ^ 0x9B32977F ^ __ROR4__(*(v15 + 4 * BYTE1(v172)), 16) ^ __ROR4__(v178, 24) ^ *(v15 + 4 * (((v174 - (BYTE3(v172) ^ 4)) ^ 0xBA) - 110)) ^ __ROR4__(*(v15 + 4 * BYTE2(v172)), 8) ^ v177;
  v180 = (v171 + v24 - 2 * (v171 & v24)) ^ v155;
  LODWORD(STACK[0x598]) = v167;
  v181 = v179 ^ v24 ^ v167;
  v182 = v181 ^ v151;
  if ((((v171 + v24 - 2 * (v171 & v24)) ^ v155) & v182 & 0x1000) != 0)
  {
    v183 = -2 * (v182 & 0x1000);
  }

  else
  {
    v183 = 0;
  }

  LODWORD(STACK[0x7D0]) = v182;
  v184 = (v180 + (v182 & 0x1000) + v183) ^ v182 & 0xFFFFEFFF;
  v185 = (v140 ^ v134[128]) << 24;
  v186 = STACK[0x928];
  v187 = v185 ^ (2 * (v185 & STACK[0x928]));
  v188 = STACK[0x840];
  v189 = (v187 & STACK[0x840]) >> v176;
  v190 = STACK[0x850];
  v191 = STACK[0x878];
  LODWORD(v189) = ((v187 & STACK[0x850]) << STACK[0x878]) | v189;
  STACK[0x550] = v172;
  v192 = v168 ^ v172 ^ v184;
  v193 = 1377 * (((v192 >> 15) & 0x19E ^ 0x100) + (BYTE2(v192) ^ 0x67F));
  LOBYTE(v193) = *(v13 + v193 - 4864 * (((7064091 * v193) >> 32) >> 3));
  v194 = *(v15 + 4 * (((((2 * v193) ^ 0xEC) - 74) ^ ((((v193 ^ 0x38) - 56) ^ ((v193 ^ 0xCC) + 52) ^ ((v193 ^ 0x82) + 126)) - 44) ^ 0xE0) + 102));
  v195 = *(v15 + 4 * (v168 ^ v172 ^ v184));
  v196 = *(v13 + 1377 * (BYTE3(v192) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (BYTE3(v192) ^ 0xC2) + 980424)) >> 32) >> 1)) ^ 0x76;
  LODWORD(STACK[0x590]) = BYTE3(v192);
  HIDWORD(v197) = v195;
  LODWORD(v197) = v195;
  v198 = (v197 >> 24) ^ __ROR4__(v194, 8);
  LODWORD(v197) = __ROR4__(*(v15 + 4 * BYTE1(v192)), 16);
  LODWORD(v189) = *(v15 + 4 * (((v196 - (((v168 ^ v172 ^ v184) >> 24) ^ 4)) ^ 0xBA) - 110)) ^ v189;
  v199 = v155 ^ v179;
  STACK[0x620] = v199;
  v200 = v198 ^ v197 ^ v189 ^ v199;
  LODWORD(STACK[0x508]) = v200 ^ v155;
  v201 = (v200 ^ v155) + v155 - 2 * ((v200 ^ v155) & v155);
  v202 = v184 ^ v155 ^ v162;
  v203 = v200 ^ v168 ^ v181;
  STACK[0x618] = v202;
  v204 = v182 ^ v202 ^ v200;
  v205 = v134[27] ^ LODWORD(STACK[0x720]);
  v206 = ((v205 - ((2 * v205) & 0xE0)) << 24) + 1879048192;
  v207 = STACK[0x8F0];
  v208 = (((v206 ^ (2 * (v206 & v186))) & v190) << v147) ^ (((v206 ^ (2 * (v206 & v186))) & v188) >> STACK[0x8F0]);
  STACK[0x808] = v192;
  v209 = v204 ^ v155 ^ v162 ^ v192;
  HIDWORD(v197) = *(v15 + 4 * BYTE1(v209));
  LODWORD(v197) = HIDWORD(v197);
  v210 = *(v15 + ((v209 >> 22) & 0x3FC));
  v211 = (v197 >> 16) ^ __ROR4__(*(v15 + 4 * v209), 24) ^ __ROR4__(*(v15 + 4 * BYTE2(v209)), 8) ^ v201 ^ v208;
  v212 = v162 ^ 0xB22445C3 ^ v155 ^ 0xB22445C3 ^ v210 ^ v203 ^ v211 ^ v24;
  HIDWORD(v197) = v212 ^ v153;
  LODWORD(v197) = v212 ^ v155;
  HIDWORD(v197) = (v197 >> 1) ^ 0x96A90325;
  LODWORD(v197) = HIDWORD(v197);
  v213 = v197 >> 31;
  v214 = v155 ^ 0xB22445C3 ^ v24 ^ v213;
  v215 = v214 & 1;
  if ((v211 ^ v24) == v155)
  {
    v216 = v214 & 1;
  }

  else
  {
    v216 = ~(v24 ^ v214 & 1);
  }

  v217 = v214 ^ 0x9F764388;
  if ((v216 & v24) != 0)
  {
    v215 = -v215;
  }

  v218 = ((v215 + v24) & 0x69B25715 ^ v217 & 0x69B25714 | v217 & 0x964DA8EA) ^ (v215 + v24) & 0x964DA8EA;
  v219 = 1377 * (v134[54] ^ 0x55) + 5915592;
  v220 = *(v13 + v219 - 4864 * (((7064091 * v219) >> 32) >> 3));
  v221 = v213 ^ v204 ^ 0x2D52064B;
  v222 = ((((v220 ^ 0xFFFFFF9B) + 101) ^ ((v220 ^ 0x27) - 39) ^ ((v220 ^ 0xFFFFFFCA) + 54)) - 28) ^ 0xFFFFFFBC;
  v223 = (LODWORD(STACK[0x8F8]) ^ (v222 - ((2 * v222 - 52) & 0xEC) - 36)) << 24;
  v224 = v211 ^ v210;
  v225 = v211 ^ v210 ^ v24 ^ (((v223 ^ (2 * (v223 & v186))) & STACK[0x7D8]) << v191) ^ (((v223 ^ (2 * (v223 & v186))) & STACK[0x930]) >> v207);
  v226 = v155 & 0x40000000;
  if ((v225 & v155 & 0x40000000) != 0)
  {
    v226 = -v226;
  }

  v227 = v226 + v225;
  v228 = v221 ^ v168 ^ v209;
  v229 = *(v15 + 4 * BYTE1(v228));
  STACK[0x5E8] = BYTE2(v228);
  v230 = __ROR4__(*(v15 + 4 * BYTE2(v228)), 8);
  STACK[0x610] = v228 >> 24;
  v231 = v155 & 0xBFFFFFFF ^ __ROR4__(v229, 16) ^ v230 ^ *(v15 + 4 * (v228 >> 24));
  STACK[0x7B0] = v228;
  STACK[0x5E0] = (v221 ^ v168 ^ v209);
  v232 = *(v15 + 4 * (v221 ^ v168 ^ v209));
  v233 = v231 ^ (v232 << 8) ^ HIBYTE(v232) ^ v227;
  v234 = (v233 + v24 - 2 * (v233 & v24)) ^ v155;
  v235 = v234 & 0x8000000;
  if ((v234 & 0x8000000 & v24) != 0)
  {
    v235 = -v235;
  }

  v236 = (v235 + v24) ^ v234 & 0xF7FFFFFF;
  STACK[0x668] = v155;
  LODWORD(STACK[0x720]) = v236;
  v237 = v218 ^ v236;
  STACK[0x7B8] = v237;
  v238 = STACK[0x8E8];
  v239 = *(v13 + 1377 * (BYTE1(v180) ^ 0x4C) + 2756754 - 4864 * (((7064091 * (1377 * (BYTE1(v180) ^ 0x4Cu) + 2756754)) >> 32) >> 3));
  v240 = STACK[0x868];
  v241 = ((v155 + v24 - 2 * (v155 & v24)) ^ (2 * (v155 & v24) - (v155 + v24)) ^ ((v237 ^ LODWORD(STACK[0x8E8])) - (v237 ^ LODWORD(STACK[0x8E8]) ^ (v155 + v24 - 2 * (v155 & v24))))) + (v237 ^ LODWORD(STACK[0x8E8]));
  HIDWORD(v243) = *(STACK[0x868] + 4 * ((((((v239 ^ 0xC8) + 56) ^ ((v239 ^ 0x77) - 119) ^ ((v239 ^ 0xC9) + 55)) - 88) ^ 0xCC) + 102));
  LODWORD(v243) = HIDWORD(v243);
  v242 = v243 >> 16;
  HIDWORD(v243) = *(STACK[0x868] + 4 * v180);
  LODWORD(v243) = HIDWORD(v243);
  LODWORD(STACK[0x3A0]) = *(STACK[0x868] + ((v180 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x868] + 4 * BYTE2(v180)), 8) ^ ((v243 >> 24) + v242 - 2 * ((v243 >> 24) & v242));
  v244 = 1377 * (BYTE1(v203) ^ 0x4Cu) + 2756754;
  STACK[0x818] = v244;
  LOBYTE(v242) = *(v13 + v244 - 4864 * (((7064091 * v244) >> 32) >> 3));
  LOBYTE(v244) = ((v242 ^ 0xFA) + 6) ^ ((v242 ^ 0xE4) + 28) ^ ((v242 ^ 0x68) - 104);
  HIDWORD(v243) = *(v240 + 4 * BYTE2(v209));
  LODWORD(v243) = HIDWORD(v243);
  v245 = (v243 >> 8) ^ __ROR4__(*(v240 + 4 * BYTE1(v209)), 16);
  HIDWORD(v243) = *(v240 + 4 * BYTE1(v201));
  LODWORD(v243) = HIDWORD(v243);
  LODWORD(v237) = v243 >> 16;
  LODWORD(v243) = __ROR4__(*(v240 + 4 * BYTE2(v201)), 8);
  v246 = *(v240 + ((v201 >> 22) & 0x3FC));
  LODWORD(STACK[0x730]) = v246;
  LODWORD(v237) = (((v246 ^ 0x5DFD688D) + (v246 | 0x5DFD688D) - 2 * (v246 ^ 0x5DFD688D)) ^ (v237 ^ v243) & 0x5DFD688D) + ((v237 ^ v243 ^ v246) & 0xA2029772);
  STACK[0x7A0] = v209;
  v247 = v245 ^ *(v240 + 4 * BYTE3(v209));
  v248 = __ROR4__(__ROR4__(*(v240 + 4 * v201), 9) ^ 0xD19A4B1C, 15) ^ 0x9639A334;
  v249 = *(v240 + 4 * v203);
  HIDWORD(v243) = *(v240 + 4 * (((v244 - 88) ^ 0xCC) + 102));
  LODWORD(v243) = HIDWORD(v243);
  STACK[0x5F0] = (v237 ^ -v237 ^ (v248 - (v248 ^ v237))) + v248;
  v250 = *(v240 + 4 * BYTE2(v203));
  STACK[0x6B8] = v249;
  v251 = *(v240 + 4 * v209);
  LODWORD(STACK[0x588]) = (v243 >> 16) ^ __ROR4__(v249, 24) ^ __ROR4__(v250, 8) ^ *(v240 + ((v203 >> 22) & 0x3FC));
  v252 = LODWORD(STACK[0x858]) ^ 0x6DB ^ (51 * ((((117 * (BYTE1(v224) & 0x61) + 54) - LODWORD(STACK[0x858])) | (LODWORD(STACK[0x858]) - (117 * (BYTE1(v224) & 0x61) + 54))) >= 0));
  LODWORD(STACK[0x5D8]) = LODWORD(STACK[0x7D0]) ^ v168;
  v253 = v221 ^ LODWORD(STACK[0x7A8]);
  STACK[0x5C8] = v253;
  LODWORD(STACK[0x568]) = v241;
  LODWORD(STACK[0x830]) = v168 ^ v168 ^ v238 ^ v253 ^ v241;
  LODWORD(v244) = *(v240 + 4 * BYTE2(STACK[0x7E0]));
  v254 = *(v240 + 4 * BYTE2(STACK[0x800]));
  LODWORD(v249) = *(v240 + 4 * ((v168 ^ v204) >> 16));
  HIDWORD(v243) = *(v240 + 4 * BYTE2(v224));
  LODWORD(v243) = HIDWORD(v243);
  STACK[0x8F8] = (v243 >> 8);
  v255 = *(STACK[0x948] + 8 * v252);
  LODWORD(STACK[0x4D0]) = STACK[0x770];
  STACK[0x660] = (v244 << 24);
  LODWORD(STACK[0x858]) = v254 >> 8;
  STACK[0x678] = (v249 << 24);
  STACK[0x5F8] = 3136;
  STACK[0x768] = 3737214259;
  return v255();
}

uint64_t sub_42F58@<X0>(int a1@<W8>)
{
  v3 = (a1 - 827) | 0x229;
  v4 = (*(v2 + 8 * (v3 + 2163)))();
  v5 = STACK[0x948];
  *(v1 + 16) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_42FAC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  *(v2 + 1152) = *(v3 + 8 * v1);
  return (*(v3 + 8 * ((((v1 + 212) | 0x800) - 1960) ^ v1)))();
}

uint64_t sub_430FC(int a1, int a2)
{
  STACK[0x558] = v10;
  LODWORD(STACK[0x758]) = v9;
  LODWORD(STACK[0x608]) = v7;
  v11 = (a2 + v5) >> 16;
  v12 = v11 + v5 + a1;
  v13 = (a1 + v4 + v11) >> 14;
  v14 = v12 + v13 + 53489506 + 1;
  v15 = ((v2 ^ 0x12) - 42) & (v12 >> 1) ^ v12 & 7;
  STACK[0x7B0] = v14;
  v16 = v13 + v11 + v3 + a1 + (v14 >> v15 >> (v15 ^ 7)) + ((v13 + v11 + a1 + (v14 >> v15 >> (v15 ^ 7)) + v3) >> 15);
  v17 = ((v16 - (v16 >> 5)) ^ 0x3169F1DC) + (((v16 - (v16 >> 5)) ^ 0x3169F1DC) >> 15) + 7434383 + ((((v16 - (v16 >> 5)) ^ 0x3169F1DC) + (((v16 - (v16 >> 5)) ^ 0x3169F1DC) >> 15)) >> 4);
  v18 = v17 + (v17 >> 9) + ((v17 + (v17 >> 9)) >> 2);
  LODWORD(STACK[0x4A8]) = v18;
  v19 = v18 + 1503512157 - ((v18 + 1503512157) >> 8) - ((v18 + 1503512157 - ((v18 + 1503512157) >> 8)) >> 1);
  LODWORD(STACK[0x598]) = (v19 - 461795798 - ((v19 - 461795798) >> 13) - ((v19 - 461795798 - ((v19 - 461795798) >> 13)) >> 6)) & 0x328DEC97;
  LODWORD(STACK[0x4E0]) = v19;
  v20 = 1377 * (*(STACK[0x3D8] + ((*(STACK[0x3D8] + ((*STACK[0x3D8] - 1) & 0xF)) + 5) & 0xF)) & 0xF) + 2642463;
  LOBYTE(v20) = *(STACK[0x900] + v20 - 4864 * (((1766023 * v20) >> 32) >> 1));
  LOBYTE(v20) = ((((v20 ^ 3) - 3) ^ ((v20 ^ 0x51) - 81) ^ ((v20 ^ 0x24) - 36)) - 44) ^ (((2 * v20) ^ 0xEC) - 74);
  v21 = *(v8 + 8 * v2);
  v22 = (*(STACK[0x3D8] + (((((((v20 >> 5) | (8 * v20)) ^ 0xE6) >> 3) | (32 * (((v20 >> 5) | (8 * v20)) ^ 0xE6))) ^ 0x3C) + 102)) + 13) & 0xF;
  LODWORD(STACK[0x3C0]) = v12 + v6;
  return v21();
}

uint64_t sub_43364()
{
  v3 = **(v1 + 952);
  v4 = *(*(v1 + 32) + 112);
  v5 = *(v1 + 272);
  STACK[0x970] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 + 27 * (v0 ^ 0x2E) - 118)))();
}

uint64_t sub_433EC()
{
  v4 = v3 - 208;
  *(v4 + 8) = STACK[0x930];
  *(v4 + 4) = -1038737349 - 1183051249 * ((((v3 - 208) | 0x72245D59) - ((v3 - 208) & 0x72245D59)) ^ 0x97C78B85) + v2;
  v5 = (*(v0 + 8 * (v2 + 1308)))(v3 - 208);
  v6 = STACK[0x948];
  *(v1 + 1084) = ((v2 - 1454) | 0xF0) ^ *(v3 - 208) ^ 0xF67A0F3C;
  return (*(v6 + 8 * v2))(v5);
}

uint64_t sub_434F4()
{
  v3 = (*(v2 + 8 * (v1 + 1950)))();
  v4 = STACK[0x948];
  *(v0 + 32) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_43524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (((v9 ^ 0xC7A0EDF3C8D4CB08) - 0x2D987390C45416C3) ^ ((v9 ^ 0xB9AD25DC671C2C48) - 0x5395BBBF6B9CF183) ^ ((v9 ^ 0x536160C4526010EELL) + 0x46A60158A11F32DBLL)) - 0x38ABC976E137FC29;
  v13 = (((v10 ^ 0x8E1D194FE0FAF5B2) + a8) ^ ((v10 ^ 0xAB3D601C8814C9D5) + 0x54C29FE377EB362BLL) ^ ((v10 ^ 0xE2744FDB99C61602) + 0x1D8BB0246639E3AELL + ((v11 - 422) ^ 0x678))) - 0x38ABC976E137FC29;
  v14 = (v12 < 0x2D9FD972) ^ (v13 < 0x2D9FD972);
  v15 = v12 < v13;
  if (v14)
  {
    v15 = v13 < 0x2D9FD972;
  }

  return (*(a3 + 8 * ((v15 * v8) ^ v11)))(a1, (a1 - 198));
}

uint64_t sub_43704@<X0>(uint64_t a1@<X8>)
{
  v6 = 1913485891 * ((((v5 - 208) | 0x81AF8AD9) - ((v5 - 208) & 0x81AF8AD9)) ^ 0x1C436DF3);
  v7 = v5 - 208;
  *v7 = v2 + (v3 << 6) + 108;
  *(v7 + 8) = (v4 - 115) ^ v6;
  *(v7 + 12) = v6 ^ 0x5563074F;
  *(v7 + 16) = a1 + 1004;
  *(v7 + 24) = STACK[0x930];
  v8 = (*(v1 + 8 * (v4 ^ 0xB40)))(v5 - 208);
  return (*(STACK[0x948] + 8 * v4))(v8);
}

uint64_t sub_437D4@<X0>(unsigned int a1@<W1>, unsigned int a2@<W2>, int a3@<W3>, uint64_t a4@<X5>, int a5@<W8>)
{
  v5 = a5 | 0x480;
  if (a1 < a2 != a3 + 934339276 < (v5 + 1817470580))
  {
    v6 = a3 + 934339276 < (v5 + 1817470580);
  }

  else
  {
    v6 = a3 + 934339276 > a1;
  }

  return (*(a4 + 8 * ((v6 * ((v5 + 323314025) & 0xECBA9BCB ^ 0xFD9)) ^ v5)))(64978359);
}

uint64_t sub_43868@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 & 0x19DA21D7;
  v6 = *(*(v4 + 8) + (((v1 & 0x19DA21D7) + 849) ^ (v3 - 1126)) + v2);
  return (*(a1 + 8 * v5))();
}

uint64_t sub_438B8()
{
  v3 = *(v2 + 8 * (((LODWORD(STACK[0xC0C]) == 1) * ((v0 ^ 0x65) + 1387)) ^ v0));
  LODWORD(STACK[0x8F0]) = v1 - 2;
  return v3();
}

uint64_t sub_438EC()
{
  v8 = *(v1 + 4 * (v3 - 1));
  v9 = (((v8 ^ (v8 >> 30) ^ 0xF36A3FD9) - 659869132) ^ ((v8 ^ (v8 >> 30) ^ 0x41602C15) + 1788944896) ^ ((v8 ^ (v8 >> 30) ^ 0xB20A13CC) - 1714741721)) * LODWORD(STACK[0x928]) - 1317805626;
  v10 = (v9 ^ 0xCDBFB66A) & (2 * (v9 & 0xCE3FC74B)) ^ v9 & 0xCE3FC74B;
  v11 = ((2 * (v9 ^ 0x4DDEB2FA)) ^ 0x7C2EB62) & (v9 ^ 0x4DDEB2FA) ^ (2 * (v9 ^ 0x4DDEB2FA)) & 0x83E175B0;
  v12 = v11 ^ 0x80211491;
  v13 = (v11 ^ 0x1C02120) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xF85D6C4) & v12 ^ (4 * v12) & 0x83E175B0;
  v15 = (v14 ^ 0x3815480) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x80602131)) ^ 0x3E175B10) & (v14 ^ 0x80602131) ^ (16 * (v14 ^ 0x80602131)) & 0x83E175B0;
  v17 = v15 ^ 0x83E175B1 ^ (v16 ^ 0x2015100) & (v15 << 8);
  v18 = v9 ^ *(v1 + 4 * v3) ^ (2 * ((v17 << 16) & 0x3E10000 ^ v17 ^ ((v17 << 16) ^ 0x75B10000) & (((v16 ^ 0x81E024A1) << 8) & 0x3E10000 ^ 0x2800000 ^ (((v16 ^ 0x81E024A1) << 8) ^ 0x61750000) & (v16 ^ 0x81E024A1))));
  *(v1 + 4 * v3) = v5 + *(STACK[0x940] + 4 * v5) + 601211673 + (((v18 ^ 0x8C6752FC) - 1695399372) ^ ((v18 ^ 0xCDE1B5C3) - 613112563) ^ ((v18 ^ 0x8B39CB16) - 1649615910));
  v19 = v7 - 208;
  *(v19 + 28) = -v4;
  *(v19 + 40) = v6 - 251425743 - v4 - 92;
  *(v19 + 32) = v4 + 623;
  *v19 = v4 ^ (v6 - 251425743) ^ 0xC0;
  *(v19 + 4) = v6 - 251425743 - v4;
  *(v19 + 8) = v4 + v6 + 1596328632;
  *(v19 + 16) = v3 + 1 - v4;
  v20 = (*(v2 + 8 * (v6 ^ (v0 - 1688))))(v7 - 208);
  return (*(STACK[0x948] + 8 * *(v7 - 184)))(v20);
}

uint64_t sub_43BEC()
{
  *STACK[0x940] ^= (((((~(v1 - 2038115490) + v2) ^ (v3 - (v1 - 2038115490))) - 1) & ((v1 - 2038115490) - v2)) >> 63) ^ STACK[0x930] ^ 1;
  v4 = STACK[0x938];
  return (*(v0 + 8 * (v1 - 2038115073)))();
}

uint64_t sub_43C5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *v4 = v3 + 1583996299 * (((v5 - 208) & 0xA78A8787 | ~((v5 - 208) | 0xA78A8787)) ^ 0x1188B967) - 604;
  *(v4 + 8) = a2;
  v6 = (*(a1 + 8 * (v3 + 1658)))(v5 - 208);
  v7 = STACK[0x948];
  *(v2 + 424) = 0;
  return (*(v7 + 8 * v3))(v6);
}

uint64_t sub_43CCC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + v3 + 405;
  v6 = *(v4 + 1056);
  v7 = (*(a2 + 8 * (v3 ^ (v3 - 1644))))(*v6);
  v8 = STACK[0x948];
  *v6 = 0;
  v9 = *(v4 + 1272);
  return (*(v8 + 8 * v5))(v7);
}

uint64_t sub_43D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *v8 = 0;
  *(v8 + 8) = 0;
  return (*(v9 + 8 * (((*(v8 + 16) == 0) * ((v7 ^ (a7 - 1722) ^ 0xFFFFFF25) + a7 + v7 - 2382)) ^ v7)))();
}

uint64_t sub_43D9C(unsigned int a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  STACK[0x8F0] = v7;
  v18 = (a1 >> v7) | (v8 << v17);
  v19 = 536 * (LODWORD(STACK[0x628]) ^ 0x25F);
  LODWORD(STACK[0x7B8]) = a4 & 0xB0B0B0B0;
  LODWORD(STACK[0x840]) = v19;
  LODWORD(STACK[0x870]) = ((v19 ^ a4 & 0xB0B0B0B0 ^ 0xB0B0B480) + (a4 & 0xB0B0B0B0)) ^ (((v19 ^ a4 & 0xB0B0B0B0 ^ 0xB0B0B480) + (a4 & 0xB0B0B0B0)) << 6) ^ v12;
  LODWORD(STACK[0x930]) = v18 ^ a2;
  v20 = (STACK[0x7E0] - STACK[0x858]) ^ v10;
  LODWORD(STACK[0x770]) = v20;
  STACK[0x848] = v17;
  if ((STACK[0x928] & 0x10000000) != 0)
  {
    v21 = -268435456;
  }

  else
  {
    v21 = 0x10000000;
  }

  v22 = STACK[0x928];
  v23 = STACK[0x928] ^ (v21 + STACK[0x928]) ^ 0xEFFFFFFF;
  v24 = 16843009 * v20;
  v25 = (16843009 * v20) & v23 ^ (((16843009 * v20) & v23 ^ (16843009 * v20)) >> 2);
  v26 = v25 ^ (2 * (v25 & a4));
  LODWORD(STACK[0x7A8]) = v26;
  v27 = *(a6 + 4 * (v9 + 1079 * (v26 % 0x101) - (((v9 + 1079 * (v26 % 0x101)) * v14) >> 32) * v16));
  v28 = v24 ^ (2 * (v24 & v22));
  LODWORD(STACK[0x65C]) = v28;
  v29 = (v11 + 725634795 * (((v27 ^ 0x304C6CD4) - 810314964) ^ ((v27 ^ 0x35216A05) - 891382277) ^ ((v27 ^ 0xD45F676B) + 731945109))) ^ 0x9D132D2D ^ ((1451269590 * (((v27 ^ 0xB8599A34) + 1202087372) ^ ((v27 ^ 0x58AB0241) + 659881407) ^ ((v27 ^ 0x31C0F9CF) + 1312753201)) + 520930172) | 0xA74E6B4E);
  v30 = ((v11 + 725634795 * (((v27 ^ 0x4EEF932) - 82770226) ^ ((v27 ^ 0x205E3F52) - 543047506) ^ ((v27 ^ 0xF582A7DA) + 175986726))) ^ 0x9D132D2D ^ ((1451269590 * (((v27 ^ 0xC2FA1346) + 1023798458) ^ ((v27 ^ 0x77F7AEBC) + 134762820) ^ ((v27 ^ 0x643FDC40) + 465576896)) + 520930172) | 0xA74E6B4E)) + v25 - v29;
  v31 = v30 - 2020193218 * (((1141397263 * v30) >> 32) >> 29);
  v32 = v31 - 257 * (((2139127681 * v31) >> 32) >> 7);
  LODWORD(STACK[0x6CC]) = v30 % 0x101;
  v33 = *(a6 + 4 * (1079 * (v30 % 0x101) + 1668134 - 2120 * ((2025928 * (1079 * (v30 % 0x101) + 1668134)) >> 32)));
  v34 = ((v29 & 0x2B404EEB ^ 0x2B404EEB) + (v29 & 0x2B404EEB)) * (*(a6 + 4 * (1079 * v32 + 1668134 - 2120 * ((2025928 * (1079 * v32 + 1668134)) >> 32))) ^ 0xD13261BA);
  v35 = (725634795 * (((v33 ^ 0x20F92267) - 553198183) ^ ((v33 ^ 0xAA523A13) + 1437451757) ^ ((v33 ^ 0x5B9979CE) - 1536784846)) + 260465086) ^ v13 ^ ((1451269590 * (((v33 ^ 0x6BC27A6C) + 339576212) ^ ((v33 ^ 0xD7F1E909) + 672012023) ^ ((v33 ^ 0x6D01F2DF) + 318639393)) + 520930172) | 0xA74E6B4E) ^ v34 ^ ((2 * v34) | 0xA74E6B4E);
  v36 = STACK[0x6C0] & 0x61616160 ^ 0xB0B0B0B0;
  LODWORD(STACK[0x5F8]) = v36;
  v37 = v15 & 0x65656564 ^ 0xB2B2B2B2;
  LODWORD(STACK[0x618]) = v37;
  v38 = v22;
  STACK[0x928] = v22;
  v39 = v30 ^ (2 * (v30 & v22));
  STACK[0x600] = v13 & v36;
  STACK[0x630] = v13 & v37;
  STACK[0x660] = v28 & v13;
  STACK[0x6B0] = v39 & v13;
  LODWORD(STACK[0x640]) = v35;
  v40 = (v35 ^ (1447388701 * v30)) - 1447388701 * v30 + 2 * (v35 & (1447388701 * v30));
  v41 = v30 ^ (2 * (v30 & a4));
  v42 = v40 & v41;
  STACK[0x638] = v42;
  v43 = v40;
  LODWORD(STACK[0x680]) = v40;
  v44 = 1079 * ((a3 & (2 * ((v41 & ~v40 | v42) % 0x101))) + (((v41 & ~v40 | v42) % 0x101) ^ a5));
  v45 = *(a6 + 4 * (v44 - 2120 * ((2025928 * v44) >> 32)));
  v46 = (v41 - 257) % 0x101;
  v47 = (((v45 ^ 0x50DBC2A1) - 1356579489) ^ ((v45 ^ 0x4D47F8B3) - 1296562355) ^ ((v45 ^ 0xCCAE5BA8) + 860988504)) + 1444679079;
  v48 = v47 ^ 0xFCFDF0DB ^ (4 * v47 * v47);
  v49 = STACK[0x738];
  v50 = STACK[0x738] ^ 0xA6A6A6B0;
  if (STACK[0x738] == -1499027792)
  {
    v51 = v30;
  }

  else
  {
    v51 = ~(a4 ^ v30);
  }

  LODWORD(STACK[0x5E8]) = v51;
  v52 = v49 ^ 0x5959594F ^ v41;
  v158 = STACK[0x6D8] == 0;
  LODWORD(STACK[0x570]) = v41;
  if (v158)
  {
    v52 = v30 ^ (2 * (v30 & a4));
  }

  LODWORD(STACK[0x5F0]) = v52;
  if (v41 <= 0x100)
  {
    v46 = v30 ^ (2 * (v30 & a4));
  }

  v53 = 1079 * v46 + 1668134;
  if (v53 > 0x847)
  {
    v53 = (v53 - 2120) % 0x848;
  }

  v54 = *(a6 + 4 * v53);
  v55 = v48 + ((725634795 * (((v54 ^ 0x1C1CE6EA) - 471656170) ^ ((v54 ^ 0xB4171B4A) + 1273554102) ^ ((v54 ^ 0x79399C1A) - 2033818650)) + 260465086) ^ 0x62ECD2D2 ^ ((1451269590 * (((v54 ^ 0xE4CF7AD7) + 456164649) ^ ((v54 ^ 0x3F377F8E) + 1086881906) ^ ((v54 ^ 0xACA64E3) + 1966447389)) + 520930172) | 0xA74E6B4E)) + v43;
  v56 = ((v33 ^ 0x9B5E701A) + 1688309734) ^ ((v33 ^ 0xF5A3F816) + 173803498) ^ ((v33 ^ 0xBFCFE9B6) + 1076893258);
  v57 = ((v33 ^ 0x4FE8A43) + 2063693245) ^ ((v33 ^ 0xA47DFF2) + 1975001102) ^ ((v33 ^ 0x5F8B340B) + 544525301);
  LODWORD(STACK[0x860]) = v39;
  v58 = v39 % 0x101;
  v59 = *(a6 + 4 * (v6 + 1079 * v58 - 2120 * ((2025928 * (v6 + 1079 * v58)) >> 32)));
  LODWORD(STACK[0x678]) = v59;
  v60 = v30 + (v59 ^ v58 ^ 0x4DCCC695) + (v59 ^ (v58 - 785227334 - ((2 * v58) & 0x374)) ^ 0x630158D0);
  LODWORD(STACK[0x850]) = v60;
  LODWORD(STACK[0x808]) = a4;
  v62 = v60 + 1;
  v63 = v62 & ((a4 + ~v15) ^ a4) ^ v62;
  v64 = v63 ^ a4 ^ (4 * v63);
  v65 = v55 + 1;
  v66 = 725634795 * v56 + 260465086;
  LODWORD(STACK[0x670]) = v66;
  v67 = (1451269590 * v57 + 520930172) | 0xA74E6B4E;
  LODWORD(STACK[0x688]) = v67;
  v158 = v67 == v66;
  v68 = v62 ^ (2 * (v64 & v62));
  if (v158)
  {
    v69 = STACK[0x838];
  }

  else
  {
    v69 = ~(LODWORD(STACK[0x838]) ^ v68);
  }

  v70 = v65;
  LODWORD(STACK[0x518]) = v65;
  v71 = STACK[0x890];
  LODWORD(STACK[0x738]) = (((v69 & v68) << v17) + ((v68 & v65) >> STACK[0x890])) ^ STACK[0x7E8];
  LODWORD(STACK[0x598]) = v68;
  v72 = v68 % 0x101;
  v73 = a6;
  v74 = *(a6 + 4 * (((((1079 * v72 + 1668134) ^ 0xC7E1D2C0) - ((1079 * v72 + 1668134) & 0x1E2D3F)) ^ ((1079 * v72 + 1668134) | 0xC7E1D2C0)) % 0x848));
  v75 = ((725634795 * (((v74 ^ 0x54D91341) - 1423512385) ^ ((v74 ^ 0xB41BEFC5) + 1273237563) ^ ((v74 ^ 0x31F09D3E) - 837852478)) + 260465086) ^ 0x62ECD2D2 ^ ((1451269590 * (((v74 ^ 0xDC5029FF) + 598726145) ^ ((v74 ^ 0x52A9FCE2) + 760611614) ^ ((v74 ^ 0x5FCBB4A7) + 540298073)) + 520930172) | 0xA74E6B4E)) + v64 + (*(a6 + 4 * (1079 * v72 + 555685 - 2120 * ((2025928 * (1079 * v72 + 555685)) >> 32))) ^ (v72 - 785227334 - ((2 * v72) & 0x374)) ^ 0x9CFEA72F) + 1;
  LODWORD(STACK[0x800]) = v75;
  v76 = v75 & v62;
  v77 = v50;
  v78 = ((v62 & ~v75 | v75 & v62) + v50 - 2 * ((v62 & ~v75 | v75 & v62) & v50)) ^ (32 * ((v62 & ~v75 | v75 & v62) ^ v62));
  v79 = 2 * (v62 & v38);
  LODWORD(STACK[0x578]) = v79;
  LODWORD(STACK[0x588]) = v78 ^ v62;
  LODWORD(v81) = __ROR4__(v78 ^ v62 ^ 0xA014B442, 22) ^ 0x167C79A7;
  HIDWORD(v81) = v81;
  v80 = v81 >> 10;
  LODWORD(STACK[0x5C8]) = v80;
  v82 = v79 ^ v62;
  v83 = v80 ^ 0x362ED4A3;
  v84 = v80 ^ 0xC9D12B5C;
  v85 = (v80 ^ 0xC9D12B5C) & (v79 ^ v62);
  v86 = v82 % 0x101;
  v87 = STACK[0x870];
  v88 = LODWORD(STACK[0x870]) ^ 0x9C9C9CB0;
  v89 = *(STACK[0x5D0] + 4 * (((v87 ^ 0x9C9C9CB0) % 3) ^ 3) + 4 * ((v87 ^ 0x9C9C9CB0) % 3) + 4 * (1079 * v86 + 278382 - 2120 * ((2025928 * (1079 * v86 + 278382)) >> 32)));
  v76 *= 2;
  v90 = v76 ^ v62;
  v91 = v76;
  LODWORD(STACK[0x530]) = v76;
  v92 = v84 & (v76 ^ v62);
  v93 = (v83 & (v76 ^ v62)) + v92;
  v94 = v71;
  STACK[0x520] = v85;
  if (v62)
  {
    v95 = (v83 & v82 ^ -(v83 & v82) ^ (v85 - v82)) + v85;
  }

  else
  {
    v95 = 0;
  }

  LODWORD(STACK[0x538]) = v95;
  if ((v91 & v62 & 0x80000) != 0)
  {
    v96 = -(v62 & 0x80000);
  }

  else
  {
    v96 = v62 & 0x80000;
  }

  LODWORD(STACK[0x528]) = v96;
  if (v93 > 0x100)
  {
    v93 = (v93 - 257) % 0x101;
  }

  LODWORD(STACK[0x548]) = v93;
  v97 = v87 ^ 0x6363634F;
  v98 = v90 & v88;
  STACK[0x818] = v88;
  STACK[0x580] = v98;
  v99 = (v90 & (v87 ^ 0x6363634F)) + v98;
  v100 = (v99 << 6);
  STACK[0x698] = v100;
  v101 = v90 ^ v70 ^ (v90 << 6) ^ v99 ^ v100;
  LODWORD(STACK[0x560]) = v101;
  v102 = *(a6 + 4 * (1079 * (((2 * (v82 % 0x101)) & 6) + (v86 ^ 0x203)) - 2120 * ((2025928 * (1079 * (((2 * (v82 % 0x101)) & 6) + (v86 ^ 0x203)))) >> 32))) ^ (v86 - 785227334 - ((2 * (v82 % 0x101)) & 0x374)) ^ 0xD37C3CD2;
  v103 = (((v89 ^ 0x789397D2) - 2022938578) ^ ((v89 ^ 0xBEE1ABDF) + 1092506657) ^ ((v89 ^ 0x17405DB7) - 390094263)) + 1444679079;
  LODWORD(STACK[0x650]) = STACK[0x8F8];
  v104 = (v103 ^ 0xFCFDF0DB ^ (4 * v103 * v103)) - 1333959677 + v101 - v102 + ((2 * v102) & 0x9F0537FA);
  v105 = (v103 ^ 0xFCFDF0DB ^ (4 * v103 * v103)) - 1333959677 + v101 - v102 + ((2 * v102) & 0x9F0537FA);
  STACK[0x8F8] = v104;
  v106 = (v104 & v90) >> v71;
  v107 = STACK[0x838];
  v108 = v90 & STACK[0x838];
  STACK[0x6B8] = v108;
  v109 = STACK[0x878];
  v110 = v108 << STACK[0x878];
  STACK[0x510] = v110;
  STACK[0x4D0] = v106;
  v111 = v82 & v107;
  STACK[0x4F8] = v111;
  v112 = STACK[0x848];
  v113 = v111 << STACK[0x848];
  v114 = v85 >> v71;
  STACK[0x4C8] = v85 >> v71;
  STACK[0x478] = v113;
  v115 = ((v85 >> v71) | v113) ^ LODWORD(STACK[0x5A8]);
  LODWORD(STACK[0x4E8]) = v115;
  v158 = v78 == v62;
  v116 = v82 & (v87 ^ 0x9C9C9CB0);
  STACK[0x4F0] = v116;
  v117 = v116 << v109;
  STACK[0x4C0] = v117;
  v118 = (v114 | v117) ^ LODWORD(STACK[0x550]);
  LODWORD(STACK[0x4E0]) = v118;
  v119 = (v105 & v82) >> v94;
  STACK[0x500] = v119;
  v120 = LODWORD(STACK[0x930]) ^ (v119 + v113);
  LODWORD(STACK[0x490]) = v120;
  LODWORD(v119) = v90 % 0x101;
  LODWORD(STACK[0x488]) = 1079 * (v90 % 0x101);
  LODWORD(v113) = *(v73 + 4 * (1079 * v119 + 1668134 - 2120 * ((2025928 * (1079 * v119 + 1668134)) >> 32)));
  v121 = (*(v73 + 4 * (1079 * (v90 % 0x101) + 555685 - 2120 * ((2025928 * (1079 * (v90 % 0x101) + 555685)) >> 32))) ^ (v119 - 785227334 - ((2 * v119) & 0x374)) ^ 0x9CFEA72F) + LODWORD(STACK[0x800]) - ((725634795 * (((v113 ^ 0x74154564) - 1947551076) ^ ((v113 ^ 0x4C6C8B4F) - 1282181967) ^ ((v113 ^ 0xE94BAF91) + 380915823)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v113 ^ 0xE2BD41D1) + 490913327) ^ ((v113 ^ 0x8377C350) + 2089303216) ^ ((v113 ^ 0x30F8E33B) + 1325866181)) + 520930172) | 0xA74E6B4E));
  v122 = (v110 ^ -v110 ^ (v106 - (v106 ^ v110))) + v106;
  LODWORD(STACK[0x480]) = v122;
  v123 = v97 ^ v90;
  if (v158)
  {
    v123 = v90;
  }

  LODWORD(STACK[0x4A8]) = v123;
  v124 = v92 >> STACK[0x8F0];
  STACK[0x4A0] = v124;
  v158 = v122 == LODWORD(STACK[0x758]);
  LODWORD(STACK[0x880]) = v84;
  if (v158)
  {
    v125 = v84;
  }

  else
  {
    v125 = ~(v90 ^ v84);
  }

  LODWORD(STACK[0x4B8]) = v125;
  LODWORD(STACK[0x930]) = v121;
  v126 = v121 ^ ~v62;
  if (!v124)
  {
    v126 = LODWORD(STACK[0x850]) + 1;
  }

  v127 = STACK[0x928] ^ (-942172091 * v62);
  LODWORD(STACK[0x4D8]) = v126 & v121;
  v128 = v127 ^ (-942172091 * (v126 & v121 | v62 & ~v121));
  LODWORD(STACK[0x468]) = v128;
  v129 = (STACK[0x860] & v77) >> v94;
  v130 = STACK[0x860] & v107;
  STACK[0x460] = v130;
  v131 = v130 << v112;
  STACK[0x458] = v131;
  LODWORD(v131) = (v131 + v129) ^ LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0x508]) = v131;
  v132 = v115 + v118 - 865065815;
  v158 = v115 + v118 == 865065815;
  LODWORD(v131) = v131 - v132;
  LODWORD(STACK[0x850]) = v131;
  v133 = ((2 * (v131 % 0x101)) & 0xC) + ((v131 % 0x101) ^ 0x406);
  v134 = *(v73 + 4 * (1079 * v133 - 2120 * ((2025928 * (1079 * v133)) >> 32)));
  v135 = (v131 & 1) - ((2039570243 * (((v134 ^ 0x89D198BB) + 1982752581) ^ ((v134 ^ 0x4653A56A) - 1179886954) ^ ((v134 ^ 0x1EB05C6B) - 514874475)) - 1228039762) ^ 0xCA2272A0);
  LODWORD(v129) = *(v73 + 4 * (1079 * (v131 % 0x101) + 1668134 - 2120 * ((2025928 * (1079 * (v131 % 0x101) + 1668134)) >> 32)));
  v136 = ((v129 ^ 0xDCE006C4) + 589297980) ^ ((v129 ^ 0x1B190C7) - 28414151) ^ ((v129 ^ 0xC63F7B9) - 207878073);
  LODWORD(v129) = (1451269590 * (((v129 ^ 0x77D6F2B5) + 136908107) ^ ((v129 ^ 0xAEE8060C) + 1360525812) ^ ((v129 ^ 0x80C9503) + 2012441341)) + 520930172) | 0xA74E6B4E;
  v137 = v129 + 725634795 * v136 + 260465086 - 2 * (v129 & (725634795 * v136 + 260465086));
  v138 = __ROR4__(v128 ^ 0xD6E5D3F2, 13);
  v139 = ((v138 ^ 0x3657B26u) >> (v120 & 0x13) >> (v120 & 0x13 ^ 0x13)) ^ ((v138 ^ 0x3657B26) << 13);
  LODWORD(STACK[0x6E8]) = v139;
  v140 = v139 ^ 0x7981139E;
  STACK[0x7E8] = v140;
  v141 = 2 * v140;
  v142 = v141 & 0xFBE22C9A ^ 0x7DF1164D;
  LODWORD(STACK[0x550]) = v142;
  v143 = 1079 * (v142 % 0x101);
  v144 = v143 + 278382 - 4240 * ((1012964 * (v143 + 278382)) >> 32);
  if (v158)
  {
    v145 = 1112021775;
  }

  else
  {
    v145 = (((v132 - (v132 ^ 0x42481B0F)) ^ 0xFFFFFFFE) + v132) | 0x42481B0F;
  }

  LODWORD(STACK[0x470]) = v145;
  if (v144 >= 0x848)
  {
    v144 -= 2120;
  }

  v146 = STACK[0x818];
  v147 = (STACK[0x818] & 0x4C65E7E0 ^ 0x4C65E7E0) + (STACK[0x818] & 0x4C65E7E0);
  v148 = ((*(v73 + 4 * v144) ^ 0x2307007F) - 587661439) ^ ((*(v73 + 4 * v144) ^ 0x655DF08) - 106290952) ^ ((*(v73 + 4 * v144) ^ 0xF460BECD) + 194986291);
  v149 = *(v73 + 4 * (v143 + 1668134 - 2120 * ((2025928 * (v143 + 1668134)) >> 32)));
  v150 = LODWORD(STACK[0x930]) - ((v148 + 1444679079) ^ 0xFCFDF0DB ^ (4 * (v148 + 1444679079) * (v148 + 1444679079))) + ((725634795 * (((v149 ^ 0x34222AF7) - 874654455) ^ ((v149 ^ 0xC5C0C78E) + 977221746) ^ ((v149 ^ 0x20D08CC3) - 550538435)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v149 ^ 0x483AE47A) + 935664518) ^ ((v149 ^ 0x1E7FC0D1) + 1635794735) ^ ((v149 ^ 0x7774511) + 2022226671)) + 520930172) | 0xA74E6B4E));
  LODWORD(STACK[0x800]) = v150;
  v151 = (2 * v150) & 0x98CBCFC0 ^ v147;
  v152 = STACK[0x5C8] & 0x18CA4040 ^ 0x100A4000;
  LODWORD(STACK[0x498]) = v151;
  v153 = STACK[0x880];
  v154 = v151 & STACK[0x880];
  STACK[0x4B0] = v154;
  v155 = (v137 ^ 0x62ECD2D2) + 1;
  LODWORD(STACK[0x928]) = v141 & 0xDAD7AB80;
  v156 = v141 & 0xDAD7AB80 ^ (v153 + 1349599113 * ((((v154 & 0x18CA4040) + (v151 & v152)) ^ v151 & 0xC425AFA0) - v151));
  LODWORD(STACK[0x5A8]) = v156;
  if ((v156 & 0x200) != 0)
  {
    v157 = -512;
  }

  else
  {
    v157 = 512;
  }

  LODWORD(STACK[0x5C8]) = v157;
  v158 = v135 == v155;
  LODWORD(STACK[0x720]) = LODWORD(STACK[0x720]) + 1963799005 - ((2 * LODWORD(STACK[0x720])) & 0xEA1A63BA);
  v159 = (2 * LODWORD(STACK[0x7B8])) ^ 0xB0B0B0B0;
  v160 = (v77 & v159) >> v94;
  LODWORD(STACK[0x450]) = (((v146 & v159) << v109) | v160) ^ STACK[0x798];
  v161 = STACK[0x848];
  v162 = v160 ^ ((v159 & v107) << STACK[0x848]) & 0xFFFFFFFE;
  LODWORD(v163) = ((v162 >> 18) | (v162 << 14)) ^ __ROR4__(STACK[0x5A0], 18) ^ 0x1E477325;
  HIDWORD(v163) = v163;
  LODWORD(STACK[0x5A0]) = (v163 >> 14) ^ -(v163 >> 14) ^ (-862684899 - ((v163 >> 14) ^ 0xCC94791D));
  v164 = STACK[0x8F0];
  LODWORD(STACK[0x620]) ^= ((v146 & STACK[0x5F8]) << v109) + (STACK[0x600] >> STACK[0x8F0]);
  LODWORD(v162) = STACK[0x6C0] & 0x65656564 ^ 0xB2B2B2B2;
  v165 = v107 & v162;
  v166 = (v77 & v162) >> v164;
  v167 = v164;
  LODWORD(STACK[0x6C0]) = (v166 + (v165 << v161)) ^ LODWORD(STACK[0x568]);
  LODWORD(STACK[0x798]) = v166 ^ (v165 << v109);
  v168 = STACK[0x618];
  LODWORD(v166) = (v146 ^ LODWORD(STACK[0x618])) + (LODWORD(STACK[0x870]) ^ 0x6161614D | LODWORD(STACK[0x618]));
  v169 = STACK[0x630] >> v94;
  v170 = v146 & STACK[0x618];
  LODWORD(STACK[0x630]) = (v170 << v109) + v169;
  LODWORD(v166) = v166 + v170;
  LODWORD(v169) = (v170 << v161) | v169;
  LODWORD(v170) = -879357561 * LODWORD(STACK[0x770]);
  v171 = v170 + STACK[0x7E0] + 2 * (v170 & STACK[0x7E0]) - 4 * (v170 & STACK[0x7E0]);
  LODWORD(STACK[0x770]) = LODWORD(STACK[0x730]) ^ v169;
  LODWORD(STACK[0x7E0]) = (((STACK[0x65C] & v146) << v161) | (STACK[0x660] >> v167)) ^ LODWORD(STACK[0x418]);
  LODWORD(STACK[0x7B8]) = (((STACK[0x7A8] & v107) << v109) + ((STACK[0x7A8] & v77) >> v94)) ^ LODWORD(STACK[0x428]);
  v172 = STACK[0x808];
  LODWORD(v169) = v30 ^ (2 * (STACK[0x5E8] & LODWORD(STACK[0x808])));
  v173 = STACK[0x458];
  LODWORD(STACK[0x7B0]) = STACK[0x458] ^ (STACK[0x6B0] >> v167) ^ STACK[0x7B0];
  LODWORD(STACK[0x6B0]) = (((v169 & v77) >> v94) + ((v169 & v146) << v109)) ^ LODWORD(STACK[0x410]);
  v174 = STACK[0x570] & v146;
  v175 = STACK[0x570] & v77;
  LODWORD(v170) = v171 ^ v170;
  v176 = (STACK[0x570] & v107) << v161;
  LODWORD(STACK[0x7A8]) = v170 ^ (((STACK[0x5F0] & v77) >> v167) + v176);
  v177 = STACK[0x860];
  LODWORD(STACK[0x660]) = (STACK[0x460] << v109) ^ (1751332277 * LODWORD(STACK[0x860])) ^ ((((~(2 * (STACK[0x640] & LODWORD(STACK[0x860]))) + (STACK[0x640] & LODWORD(STACK[0x860]))) | STACK[0x640] & LODWORD(STACK[0x860])) & 0x686335B5) * LODWORD(STACK[0x860])) | ((STACK[0x640] & LODWORD(STACK[0x860])) >> v94);
  LODWORD(STACK[0x730]) = (v174 << v161) ^ (v175 >> v167) ^ STACK[0x6E0];
  v178 = (v177 & v146) << v109;
  v179 = STACK[0x680] & v177;
  LODWORD(STACK[0x6E0]) = ((v179 >> v94) + v178) ^ LODWORD(STACK[0x3B8]);
  LODWORD(STACK[0x65C]) = (v178 ^ -v178 ^ ((v179 >> v167) - ((v179 >> v167) ^ v178))) + (v179 >> v167);
  LODWORD(STACK[0x870]) = v176 ^ LODWORD(STACK[0x788]) ^ (v175 >> v94);
  STACK[0x600] = v168 ^ (8 * v168) ^ LODWORD(STACK[0x7F8]) ^ (v166 + 1) ^ (8 * (v166 + 1)) ^ (v174 << v109) ^ (STACK[0x638] >> v167);
  LODWORD(v166) = 1079 * (((2 * LODWORD(STACK[0x6CC])) & 0x204) + (LODWORD(STACK[0x6CC]) ^ 0x102));
  v180 = STACK[0x910];
  LODWORD(v166) = *(STACK[0x910] + 4 * (v166 - 2120 * ((2025928 * v166) >> 32)));
  LODWORD(v166) = (((v166 ^ 0xE338F39C) + 482806884) ^ ((v166 ^ 0xE14D0EC8) + 515043640) ^ ((v166 ^ 0xD3479CEE) + 750281490)) + 1444679079;
  LODWORD(STACK[0x788]) = (4 * v166 * v166) & 0x76E7E030 ^ v166 & 0x76E7E032 | (4 * v166 * v166) & 0x89181FCC ^ v166 & 0x89181FCD;
  LODWORD(v175) = STACK[0x518];
  LODWORD(STACK[0x7F8]) = (((STACK[0x518] & v177) >> v167) | v173) ^ LODWORD(STACK[0x590]);
  LODWORD(v170) = v146;
  LODWORD(STACK[0x808]) = ((((v62 ^ (2 * (v62 & v172))) & v77) >> v94) + (((v62 ^ (2 * (v62 & v172))) & v146) << v109)) ^ STACK[0x7D8];
  v181 = STACK[0x598] & v146;
  v182 = (STACK[0x598] & v77) >> v94;
  v183 = v94;
  HIDWORD(v163) = v62;
  LODWORD(v163) = v62;
  v184 = (v182 + (v181 << v109)) ^ STACK[0x420];
  LODWORD(v166) = (v163 >> 26) ^ __ROR4__(STACK[0x578], 26);
  v185 = (v82 & v175) >> v167;
  v186 = STACK[0x478];
  LODWORD(STACK[0x640]) = (((((STACK[0x478] ^ v185) >> 2) & 0xFFFFFFFF3FFFFFFFLL | (((STACK[0x478] ^ v185) & 3) << 30)) >> 9) + (((STACK[0x478] ^ v185) >> 2) << 23)) ^ __ROR4__(STACK[0x400], 11);
  LODWORD(v163) = __ROR4__(v166 ^ 0x9C986EF4, 6);
  LODWORD(v173) = ((((v163 ^ 0xD27261BB) & v77) >> v167) + (((v163 ^ 0xD27261BB) & v146) << v109)) ^ LODWORD(STACK[0x3B0]);
  v187 = STACK[0x4F8] << v109;
  LODWORD(STACK[0x860]) = (v185 + v187) ^ STACK[0x408];
  LODWORD(STACK[0x6CC]) = (v181 << v161) ^ v182 ^ LODWORD(STACK[0x790]);
  v188 = (v90 & v175) >> v167;
  v189 = STACK[0x510];
  LODWORD(STACK[0x7D8]) = (STACK[0x510] + v188) ^ LODWORD(STACK[0x700]);
  v190 = STACK[0x4F0] << v161;
  LODWORD(v182) = (v190 | ((v82 & STACK[0x588]) >> v94)) ^ LODWORD(STACK[0x7D0]);
  v191 = v161;
  LODWORD(STACK[0x7D0]) = ((STACK[0x6B8] << v161) + v188) ^ STACK[0x708];
  LODWORD(v188) = (LODWORD(STACK[0x528]) + LODWORD(STACK[0x530])) ^ v62 & 0xFFF7FFFF;
  v192 = STACK[0x520];
  LODWORD(STACK[0x790]) = (STACK[0x4C0] ^ v82 ^ (LODWORD(STACK[0x538]) | STACK[0x520]) | STACK[0x4C8]) ^ LODWORD(STACK[0x440]);
  v193 = (((v188 & v107) << v161) | ((v188 & v175) >> v167)) ^ LODWORD(STACK[0x5B0]);
  LODWORD(v185) = (1079 * LODWORD(STACK[0x548]) + 1111370) % 0x848u;
  LODWORD(v188) = (v192 >> v167) + v190;
  LODWORD(STACK[0x768]) ^= v188;
  LODWORD(v188) = v188 ^ STACK[0x858];
  LODWORD(v190) = *(STACK[0x5C0] + 4 * (LODWORD(STACK[0x488]) + 278382 - 2120 * ((2025928 * (LODWORD(STACK[0x488]) + 278382)) >> 32)));
  LODWORD(STACK[0x858]) = LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x758]);
  LODWORD(v190) = (((v190 ^ 0x366C5A54) - 913070676) ^ ((v190 ^ 0x8580112E) + 2055204562) ^ ((v190 ^ 0x62DE2AC0) - 1658727104)) + 1444679079;
  LODWORD(v185) = *(v180 + 4 * v185);
  v194 = ((v185 ^ 0xA1387582) + 1590135422) ^ ((v185 ^ 0xEC2AEA4) - 247639716) ^ ((v185 ^ 0x7EC8BA9C) - 2127084188);
  LODWORD(v185) = (((v185 ^ 0xA6F33785) + 1494009979) ^ ((v185 ^ 0x109327B3) - 278079411) ^ ((v185 ^ 0x6752718C) - 1733456268)) - 160603058;
  v195 = STACK[0x4A0];
  LODWORD(STACK[0x758]) = ((v190 ^ 0xFCFDF0DB ^ (4 * v190 * v190)) + ((STACK[0x4A8] & v170) << v109) + (((2039570243 * v194 - 1228039762) & 0xFFFFFFF8 | ((-923397642 * v185 - 671149737 * ((2025515526 * v185) ^ 0x80000000)) >> 29)) ^ 0x35DD8D5F) + 1) ^ LODWORD(STACK[0x5D8]) ^ STACK[0x4A0];
  LOBYTE(v175) = v167;
  v196 = STACK[0x580] << v109;
  v197 = (((STACK[0x560] & v90) >> v167) | v196) ^ LODWORD(STACK[0x430]);
  v198 = ((STACK[0x4B8] & v90) >> v175) + (STACK[0x580] << v191);
  LODWORD(STACK[0x708]) = (STACK[0x4D0] + v189) ^ STACK[0x438];
  v199 = STACK[0x500];
  LODWORD(STACK[0x5F0]) = STACK[0x500] | v186;
  LODWORD(STACK[0x700]) = v198 ^ LODWORD(STACK[0x5B8]);
  LODWORD(STACK[0x5F8]) = (v199 | v187) ^ LODWORD(STACK[0x5E0]);
  LODWORD(STACK[0x638]) = (v195 | v196) + LODWORD(STACK[0x450]) - 2 * ((v195 | v196) & LODWORD(STACK[0x450]));
  LODWORD(v187) = v62 ^ (2 * (STACK[0x468] & v62));
  v200 = (v187 & v170) << v109;
  STACK[0x878] = v109;
  LODWORD(v199) = STACK[0x880];
  v201 = v187 & STACK[0x880];
  STACK[0x890] = v183;
  v202 = v201 >> v183;
  v203 = LODWORD(STACK[0x620]) ^ (v202 | v200);
  v204 = (((v62 ^ (2 * LODWORD(STACK[0x4D8]))) & v107) << v191) ^ (LODWORD(STACK[0x5A0]) - 862684899) ^ (((v62 ^ (2 * LODWORD(STACK[0x4D8]))) & STACK[0x8F8]) >> v175);
  v205 = STACK[0x8F8];
  v206 = LODWORD(STACK[0x720]) ^ 0x750D31DD ^ LODWORD(STACK[0x630]) ^ ((v187 & STACK[0x8F8]) >> v183) ^ v200;
  LODWORD(v200) = STACK[0x930] & v62;
  LODWORD(STACK[0x618]) = v62;
  LODWORD(v200) = v62 ^ (2 * v200);
  v207 = LODWORD(STACK[0x6C0]) ^ (((v200 & v107) << v191) + ((v200 & v199) >> v175));
  v208 = LODWORD(STACK[0x798]) ^ LODWORD(STACK[0x830]) ^ ((v187 & v107) << v191) ^ v202;
  LODWORD(STACK[0x770]) = (((v205 & v200) >> v175) | ((v200 & v170) << v109)) ^ __ROR4__(__ROR4__(STACK[0x770], 3) ^ 0x663DA363, 29);
  LODWORD(v187) = v132 + v188 - 2 * (v132 & v188);
  LODWORD(v188) = LODWORD(STACK[0x850]) ^ v173;
  LODWORD(v199) = LODWORD(STACK[0x850]) ^ -LODWORD(STACK[0x850]) ^ (v188 - v173);
  v209 = ((LODWORD(STACK[0x6B0]) - v132) ^ v132) + 2 * ((LODWORD(STACK[0x6B0]) - v132) & v132);
  LODWORD(STACK[0x6C0]) = LODWORD(STACK[0x810]) ^ 0x569B4758 ^ LODWORD(STACK[0x65C]);
  v210 = v187 ^ v132;
  v211 = (STACK[0x470] & v132) + v182 - v132;
  LODWORD(v182) = *(STACK[0x778] + 1) ^ 6;
  LODWORD(STACK[0x798]) = v182 + STACK[0x7F0] - 2 * (v182 & STACK[0x7F0]);
  v212 = v199 + v188;
  LODWORD(v182) = STACK[0x6D0] ^ 0x61EEDDF6 ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x788]) ^ LODWORD(STACK[0x660]);
  LODWORD(v199) = STACK[0x7E0];
  LODWORD(v188) = STACK[0x7B8];
  if (v158)
  {
    v213 = STACK[0x7E0];
  }

  else
  {
    v213 = STACK[0x7B8];
  }

  if (v158)
  {
    v214 = v209;
  }

  else
  {
    v214 = STACK[0x7E0];
  }

  v215 = STACK[0x7B0];
  if (v158)
  {
    v216 = STACK[0x7B8];
  }

  else
  {
    v216 = STACK[0x7B0];
  }

  if (v158)
  {
    v217 = STACK[0x7B0];
  }

  else
  {
    v217 = v209;
  }

  v218 = STACK[0x7A8];
  if (v158)
  {
    v219 = STACK[0x6D0] ^ 0x61EEDDF6 ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x788]) ^ LODWORD(STACK[0x660]);
  }

  else
  {
    v219 = STACK[0x7A8];
  }

  v220 = STACK[0x730];
  if (v158)
  {
    v221 = STACK[0x730];
  }

  else
  {
    v221 = STACK[0x6D0] ^ 0x61EEDDF6 ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x788]) ^ LODWORD(STACK[0x660]);
  }

  v222 = STACK[0x6E0];
  if (v158)
  {
    v223 = STACK[0x7A8];
  }

  else
  {
    v223 = STACK[0x6E0];
  }

  if (v158)
  {
    v224 = STACK[0x6E0];
  }

  else
  {
    v224 = STACK[0x730];
  }

  v225 = __ROR4__(__ROR4__(LODWORD(STACK[0x640]) ^ 0x6BE64935, 23) ^ 0x999D5622, 30) ^ 0x543CF3D5;
  if (v158)
  {
    v226 = v184;
  }

  else
  {
    v226 = v225;
  }

  v227 = STACK[0x808];
  if (v158)
  {
    v228 = STACK[0x808];
  }

  else
  {
    v228 = v184;
  }

  v229 = STACK[0x7F8];
  if (v158)
  {
    v230 = STACK[0x7F8];
  }

  else
  {
    v230 = STACK[0x808];
  }

  if (v158)
  {
    v231 = v225;
  }

  else
  {
    v231 = STACK[0x7F8];
  }

  v232 = STACK[0x4E0];
  if (v158)
  {
    v233 = v193;
  }

  else
  {
    v233 = STACK[0x4E0];
  }

  v234 = STACK[0x4E8];
  if (v158)
  {
    v235 = STACK[0x4E8];
  }

  else
  {
    v235 = v193;
  }

  LODWORD(STACK[0x730]) = v235;
  if (v158)
  {
    v236 = v197;
  }

  else
  {
    v236 = v234;
  }

  if (v158)
  {
    v237 = v232;
  }

  else
  {
    v237 = v197;
  }

  LODWORD(STACK[0x6E0]) = v237;
  v238 = STACK[0x7D0];
  if (v158)
  {
    v239 = v211;
  }

  else
  {
    v239 = STACK[0x7D0];
  }

  v240 = STACK[0x790];
  if (v158)
  {
    v241 = STACK[0x7D0];
  }

  else
  {
    v241 = STACK[0x790];
  }

  v242 = STACK[0x7D8];
  if (v158)
  {
    v243 = STACK[0x790];
  }

  else
  {
    v243 = STACK[0x7D8];
  }

  if (v158)
  {
    v244 = STACK[0x7D8];
  }

  else
  {
    v244 = v211;
  }

  v245 = LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x6A0]);
  v246 = STACK[0x768];
  v247 = STACK[0x858];
  if (v158)
  {
    v248 = STACK[0x858];
  }

  else
  {
    v248 = STACK[0x768];
  }

  LODWORD(STACK[0x830]) = v248;
  if (v158)
  {
    v249 = v245;
  }

  else
  {
    v249 = v247;
  }

  LODWORD(STACK[0x810]) = v249;
  v250 = STACK[0x758];
  if (v158)
  {
    v245 = STACK[0x758];
  }

  LODWORD(STACK[0x7E0]) = v245;
  if (v158)
  {
    v251 = v246;
  }

  else
  {
    v251 = v250;
  }

  LODWORD(STACK[0x7F8]) = v251;
  v252 = LODWORD(STACK[0x770]) ^ 0x31ED1B1B;
  if (v158)
  {
    v253 = v208;
  }

  else
  {
    v253 = LODWORD(STACK[0x770]) ^ 0x31ED1B1B;
  }

  LODWORD(STACK[0x720]) = v253;
  if (v158)
  {
    v254 = v207;
  }

  else
  {
    v254 = v208;
  }

  LODWORD(STACK[0x7D8]) = v254;
  if (v158)
  {
    v255 = v206;
  }

  else
  {
    v255 = v207;
  }

  LODWORD(STACK[0x6D0]) = v255;
  if (!v158)
  {
    v252 = v206;
  }

  LODWORD(STACK[0x7D0]) = v252;
  v256 = __ROR4__(__ROR4__(v210, 4) ^ 0x501E69F1, 28) ^ 0x1E69F15;
  v257 = STACK[0x5F8];
  if (v158)
  {
    v258 = STACK[0x5F8];
  }

  else
  {
    v258 = v256;
  }

  LODWORD(STACK[0x7B8]) = v258;
  v259 = STACK[0x708];
  if (!v158)
  {
    v256 = STACK[0x708];
  }

  LODWORD(STACK[0x768]) = v256;
  v260 = STACK[0x700];
  if (v158)
  {
    v261 = STACK[0x700];
  }

  else
  {
    v261 = v257;
  }

  LODWORD(STACK[0x758]) = v261;
  if (v158)
  {
    v262 = v259;
  }

  else
  {
    v262 = v260;
  }

  LODWORD(STACK[0x770]) = v262;
  v263 = STACK[0x490];
  v264 = STACK[0x638];
  if (v158)
  {
    v265 = STACK[0x490];
  }

  else
  {
    v265 = STACK[0x638];
  }

  LODWORD(STACK[0x858]) = v265;
  if (v158)
  {
    v266 = v264;
  }

  else
  {
    v266 = v204;
  }

  LODWORD(STACK[0x790]) = v266;
  if (v158)
  {
    v263 = v203;
  }

  LODWORD(STACK[0x788]) = v263;
  if (v158)
  {
    v267 = v204;
  }

  else
  {
    v267 = v203;
  }

  LODWORD(STACK[0x808]) = v267;
  LODWORD(v269) = __ROR4__(STACK[0x6C0], 8) ^ 0x7EE5E42C;
  HIDWORD(v269) = v269;
  v268 = v269 >> 24;
  v270 = STACK[0x870];
  if (v158)
  {
    v271 = v268;
  }

  else
  {
    v271 = STACK[0x870];
  }

  v272 = STACK[0x508];
  if (v158)
  {
    v273 = STACK[0x870];
  }

  else
  {
    v273 = STACK[0x508];
  }

  v274 = STACK[0x600];
  if (v158)
  {
    v275 = STACK[0x508];
  }

  else
  {
    v275 = STACK[0x600];
  }

  v276 = STACK[0x738];
  if (v158)
  {
    v277 = v212;
  }

  else
  {
    v277 = STACK[0x738];
  }

  v278 = STACK[0x860];
  if (v158)
  {
    v268 = STACK[0x600];
  }

  else
  {
    v276 = STACK[0x860];
  }

  v279 = STACK[0x6CC];
  if (v158)
  {
    v280 = STACK[0x6CC];
  }

  else
  {
    v280 = v212;
  }

  if (v158)
  {
    v281 = STACK[0x860];
  }

  else
  {
    v281 = STACK[0x6CC];
  }

  v282 = STACK[0x850];
  v283 = (STACK[0x850] & 2) == 0;
  if ((STACK[0x850] & 2) != 0)
  {
    v284 = v214;
  }

  else
  {
    v284 = v216;
  }

  LODWORD(STACK[0x430]) = v284;
  if ((v282 & 2) == 0)
  {
    v216 = v214;
  }

  LODWORD(STACK[0x450]) = v216;
  if ((v282 & 2) != 0)
  {
    v285 = v271;
  }

  else
  {
    v285 = v275;
  }

  LODWORD(STACK[0x3B8]) = v285;
  if ((v282 & 2) != 0)
  {
    v271 = v275;
  }

  LODWORD(STACK[0x3B0]) = v271;
  if ((v282 & 2) != 0)
  {
    v286 = v223;
  }

  else
  {
    v286 = v221;
  }

  LODWORD(STACK[0x700]) = v286;
  if ((v282 & 2) != 0)
  {
    v287 = v221;
  }

  else
  {
    v287 = v223;
  }

  STACK[0x860] = v287;
  if ((v282 & 2) != 0)
  {
    v288 = v217;
  }

  else
  {
    v288 = v213;
  }

  LODWORD(STACK[0x460]) = v288;
  if ((v282 & 2) != 0)
  {
    v289 = v213;
  }

  else
  {
    v289 = v217;
  }

  LODWORD(STACK[0x630]) = v289;
  if ((v282 & 2) != 0)
  {
    v290 = v224;
  }

  else
  {
    v290 = v219;
  }

  STACK[0x520] = v290;
  if ((v282 & 2) != 0)
  {
    v291 = v219;
  }

  else
  {
    v291 = v224;
  }

  LODWORD(STACK[0x870]) = v291;
  if ((v282 & 2) != 0)
  {
    v292 = v231;
  }

  else
  {
    v292 = v228;
  }

  LODWORD(STACK[0x35C]) = v292;
  if ((v282 & 2) != 0)
  {
    v293 = v228;
  }

  else
  {
    v293 = v231;
  }

  LODWORD(STACK[0x4E0]) = v293;
  if ((v282 & 2) != 0)
  {
    v294 = v276;
  }

  else
  {
    v294 = v280;
  }

  STACK[0x7B0] = v294;
  if ((v282 & 2) != 0)
  {
    v295 = v280;
  }

  else
  {
    v295 = v276;
  }

  LODWORD(STACK[0x384]) = v295;
  if (v283)
  {
    v296 = v226;
  }

  else
  {
    v296 = v230;
  }

  LODWORD(STACK[0x4E8]) = v296;
  if (v283)
  {
    v297 = v230;
  }

  else
  {
    v297 = v226;
  }

  LODWORD(STACK[0x310]) = v297;
  if (v283)
  {
    v298 = v239;
  }

  else
  {
    v298 = v243;
  }

  LODWORD(STACK[0x390]) = v298;
  if (v283)
  {
    v299 = v243;
  }

  else
  {
    v299 = v239;
  }

  LODWORD(STACK[0x348]) = v299;
  if (v283)
  {
    v300 = v281;
  }

  else
  {
    v300 = v277;
  }

  LODWORD(STACK[0x478]) = v300;
  if (v283)
  {
    v301 = v277;
  }

  else
  {
    v301 = v281;
  }

  LODWORD(STACK[0x34C]) = v301;
  if (v283)
  {
    v302 = v233;
  }

  else
  {
    v302 = v236;
  }

  LODWORD(STACK[0x398]) = v302;
  if (v283)
  {
    v303 = v236;
  }

  else
  {
    v303 = v233;
  }

  LODWORD(STACK[0x4A0]) = v303;
  if (v283)
  {
    v304 = v244;
  }

  else
  {
    v304 = v241;
  }

  LODWORD(STACK[0x4A8]) = v304;
  if (v283)
  {
    v305 = v241;
  }

  else
  {
    v305 = v244;
  }

  STACK[0x7A8] = v305;
  if (v283)
  {
    v306 = v268;
  }

  else
  {
    v306 = v273;
  }

  LODWORD(STACK[0x470]) = v306;
  if (v283)
  {
    v307 = v273;
  }

  else
  {
    v307 = v268;
  }

  LODWORD(STACK[0x4B8]) = v307;
  v308 = STACK[0x730];
  v309 = STACK[0x6E0];
  if (v283)
  {
    v310 = STACK[0x730];
  }

  else
  {
    v310 = STACK[0x6E0];
  }

  LODWORD(STACK[0x490]) = v310;
  if (v283)
  {
    v311 = v309;
  }

  else
  {
    v311 = v308;
  }

  LODWORD(STACK[0x5B8]) = v311;
  v312 = LODWORD(STACK[0x798]) << 24;
  v313 = STACK[0x800];
  v314 = STACK[0x800] & v312;
  v315 = STACK[0x720];
  v316 = STACK[0x6D0];
  if (v283)
  {
    v317 = STACK[0x720];
  }

  else
  {
    v317 = STACK[0x6D0];
  }

  LODWORD(STACK[0x4C8]) = v317;
  v318 = (v314 << (v317 & 1) << !(v317 & 1)) ^ v312;
  v319 = LODWORD(STACK[0x928]) ^ 0x6D6BD5C0;
  v320 = STACK[0x838];
  v321 = STACK[0x878];
  v322 = (v319 & STACK[0x838]) << STACK[0x878];
  v323 = STACK[0x8F8];
  v324 = STACK[0x890];
  v325 = (v322 | ((v319 & STACK[0x8F8]) >> STACK[0x890])) ^ STACK[0x718];
  v326 = STACK[0x848];
  v327 = ((STACK[0x4B0] >> STACK[0x8F0]) | ((STACK[0x498] & STACK[0x818]) << STACK[0x848])) ^ STACK[0x740];
  v328 = (((STACK[0x550] & LODWORD(STACK[0x838])) << STACK[0x848]) + ((STACK[0x550] & STACK[0x8F8]) >> STACK[0x8F0])) ^ LODWORD(STACK[0x728]);
  v329 = ((STACK[0x880] & ((2 * LODWORD(STACK[0x930])) & 0xABCE1662 ^ 0x55E70B31)) >> STACK[0x890]) ^ ((((2 * LODWORD(STACK[0x930])) & 0xABCE1662 ^ 0x55E70B31) & STACK[0x818]) << STACK[0x878]) ^ LODWORD(STACK[0x780]);
  if (v283)
  {
    v330 = v316;
  }

  else
  {
    v330 = v315;
  }

  LODWORD(STACK[0x598]) = v330;
  v331 = STACK[0x768];
  v332 = STACK[0x758];
  if (v283)
  {
    v333 = STACK[0x768];
  }

  else
  {
    v333 = STACK[0x758];
  }

  LODWORD(STACK[0x5E0]) = v333;
  if (v283)
  {
    v334 = v332;
  }

  else
  {
    v334 = v331;
  }

  LODWORD(STACK[0x480]) = v334;
  v335 = STACK[0x7B8];
  v336 = STACK[0x770];
  if (v283)
  {
    v337 = STACK[0x7B8];
  }

  else
  {
    v337 = STACK[0x770];
  }

  LODWORD(STACK[0x350]) = v337;
  if (v283)
  {
    v338 = v336;
  }

  else
  {
    v338 = v335;
  }

  LODWORD(STACK[0x354]) = v338;
  v339 = STACK[0x790];
  v340 = STACK[0x788];
  if (v283)
  {
    v341 = STACK[0x790];
  }

  else
  {
    v341 = STACK[0x788];
  }

  LODWORD(STACK[0x388]) = v341;
  if (v283)
  {
    v342 = v340;
  }

  else
  {
    v342 = v339;
  }

  LODWORD(STACK[0x344]) = v342;
  v343 = STACK[0x830];
  v344 = STACK[0x7E0];
  if (v283)
  {
    v345 = STACK[0x7E0];
  }

  else
  {
    v345 = STACK[0x830];
  }

  LODWORD(STACK[0x530]) = v345;
  if (v283)
  {
    v346 = v343;
  }

  else
  {
    v346 = v344;
  }

  LODWORD(STACK[0x830]) = v346;
  v347 = STACK[0x810];
  v348 = STACK[0x7F8];
  if (v283)
  {
    v349 = STACK[0x7F8];
  }

  else
  {
    v349 = STACK[0x810];
  }

  LODWORD(STACK[0x4F8]) = v349;
  if (v283)
  {
    v350 = v347;
  }

  else
  {
    v350 = v348;
  }

  LODWORD(STACK[0x4C0]) = v350;
  v351 = STACK[0x7D8];
  v352 = STACK[0x7D0];
  if (v283)
  {
    v353 = v351;
  }

  else
  {
    v353 = v352;
  }

  STACK[0x660] = v353;
  if (v283)
  {
    v354 = v352;
  }

  else
  {
    v354 = v351;
  }

  LODWORD(STACK[0x488]) = v354;
  v355 = v320;
  v356 = v324;
  v357 = STACK[0x908];
  v358 = *(STACK[0x908] + ((v325 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x908] + 4 * BYTE1(v325)), 16) ^ __ROR4__(*(STACK[0x908] + 4 * BYTE2(v325)), 8);
  v359 = __ROR4__(*(STACK[0x908] + 4 * v325), 24);
  LODWORD(STACK[0x708]) = v329;
  v360 = v358 ^ v359 ^ v329 ^ (((v318 & v320) << v326) + ((v318 & v323) >> v324));
  v361 = STACK[0x710];
  v362 = STACK[0x668];
  v363 = STACK[0x710] ^ STACK[0x668];
  v364 = v363 ^ LODWORD(STACK[0x940]);
  LODWORD(STACK[0x810]) = v364;
  LODWORD(STACK[0x728]) = v328;
  v365 = v328 ^ v364 ^ v360;
  STACK[0x768] = v327;
  LODWORD(STACK[0x880]) = v365;
  v366 = STACK[0x8E8];
  v367 = STACK[0x7A0];
  v368 = ((v365 ^ v327) + v366 - 2 * ((v365 ^ v327) & v366)) ^ LODWORD(STACK[0x7A0]);
  v369 = STACK[0x7A0];
  LODWORD(STACK[0x7A0]) = STACK[0x7A0];
  v370 = v366;
  STACK[0x5F0] = v325;
  v371 = v363 ^ v366 ^ v367 ^ v325 ^ v368;
  v372 = *(v357 + 4 * BYTE2(v371));
  v373 = STACK[0x858];
  v374 = STACK[0x808];
  if (v283)
  {
    v375 = STACK[0x808];
  }

  else
  {
    v375 = STACK[0x858];
  }

  LODWORD(STACK[0x758]) = v375;
  if (v283)
  {
    v376 = v373;
  }

  else
  {
    v376 = v374;
  }

  LODWORD(STACK[0x498]) = v376;
  v379 = v372 << 24;
  v377 = HIDWORD(v379);
  v378 = v379;
  HIDWORD(v380) = v372;
  LODWORD(v380) = v372;
  v381 = (v372 << 24) - (v380 >> 8);
  HIDWORD(v380) = v377;
  LODWORD(v380) = v377;
  v382 = (v380 >> 15) ^ __ROR4__(v381, 15);
  if ((v371 & 0x20) != 0)
  {
    v383 = -32;
  }

  else
  {
    v383 = 32;
  }

  v384 = *(v357 + 4 * ((v383 + v371) ^ 0x20u));
  v385 = -v377 ^ __ROR4__(v382 ^ 0x1332AC29, 17) ^ 0x56148999;
  v386 = (2 * STACK[0x7F0]) & 0xFFFFFFEC;
  v387 = STACK[0x7F0];
  v388 = STACK[0x7F0] - v386 + 118;
  LODWORD(STACK[0x808]) = v388;
  v389 = STACK[0x778];
  v390 = v388 ^ 0x70;
  v391 = v388 ^ 0x70 ^ *(STACK[0x778] + 2);
  LODWORD(STACK[0x850]) = v388 ^ 0x70;
  v392 = v313;
  v393 = (v391 << 24) ^ (2 * (v313 & (v391 << 24)));
  v394 = v393 & v355;
  v395 = v323;
  v396 = STACK[0x900];
  v397 = *(STACK[0x900] + (1377 * ((59 * HIBYTE(v384)) ^ 0x1Fu) + 3110643) % (((~(2 * v385) + v385) | v385) & 0x1300u));
  v398 = *(v357 + ((v371 >> 22) & 0x3FC)) ^ v362 ^ __ROR4__(*(v357 + 4 * (v371 >> (v361 & 8) >> (v361 & 8 ^ 8))), 16) ^ (v385 + v378) ^ (((v323 & v393) >> v356) + (v394 << v321));
  STACK[0x7B8] = v360;
  v399 = v398 ^ v360 ^ v362 ^ (((v397 ^ 0x19 ^ (v397 >> 4) & 3) + 48) | (v384 << 8));
  v400 = v399 ^ v365;
  LODWORD(STACK[0x7F8]) = v399;
  LODWORD(STACK[0x730]) = v368 ^ v363;
  v401 = v368 ^ v363 ^ v399 ^ v365;
  if ((v401 & 0x100 & v361) != 0)
  {
    v402 = -2 * (v401 & 0x100);
  }

  else
  {
    v402 = 0;
  }

  v403 = ((v401 & 0x100) + v361 + v402) ^ v401 & 0xFFFFFEFF;
  v404 = (v387 + ~v386 + 119) ^ 0x70;
  LODWORD(STACK[0x858]) = v404;
  v405 = v389;
  v406 = v404 ^ *(v389 + 8);
  v407 = v406 << 24;
  v408 = v392 & (v406 << 24);
  v409 = ((v408 & 0x80000000) + ((v406 << 24) & ~v392 & 0x80000000)) & 0x80FFFFFF | ((v406 & 0x7F) << 24);
  LODWORD(STACK[0x720]) = v403 ^ v362;
  STACK[0x740] = v371;
  v410 = v403 ^ v362 ^ v371;
  v411 = v369 ^ v370;
  v412 = v369 ^ v370 ^ v410;
  v413 = v411;
  v414 = (LODWORD(STACK[0x928]) ^ 0x6D6BD7C0 ^ (LODWORD(STACK[0x5C8]) + (LODWORD(STACK[0x5A8]) ^ 0x6D6BD5C0))) - v322;
  v415 = (v414 ^ v322) + 2 * (v414 & v322);
  v416 = (v390 ^ *(v389 + 4)) << 24;
  v417 = v416 ^ (2 * (STACK[0x7E8] & v416));
  v418 = STACK[0x838];
  v419 = STACK[0x8F0];
  v420 = ((v417 & v395) >> STACK[0x8F0]) + ((v417 & STACK[0x838]) << v321);
  v421 = 1377 * ((((v411 ^ v410) >> 24) + 110) ^ 0xDC) + 4834647;
  v422 = *(v396 + v421 - 4864 * (((7064091 * v421) >> 32) >> 3));
  v423 = v396;
  HIDWORD(v424) = v422 ^ 0x16;
  LODWORD(v424) = (v422 ^ 0x60) << 24;
  LOBYTE(v422) = v424 >> 29;
  HIDWORD(v424) = *(v357 + 4 * (v411 ^ v410));
  LODWORD(v424) = HIDWORD(v424);
  v425 = (v424 >> 24) ^ __ROR4__(*(v357 + 4 * BYTE1(v412)), 16) ^ __ROR4__(*(v357 + 4 * BYTE2(v412)), 8) ^ v420 ^ v399 ^ *(v357 + 4 * (v422 ^ 0x68u));
  v426 = ((2 * (STACK[0x6D8] - 1392573859)) & 0xA601FB46) + ((STACK[0x6D8] - 1392573859) ^ 0x5300FDA3);
  v427 = 1079 * (v409 % ((*(v357 + 4 * BYTE2(v412)) & 0x101 ^ 0x101) + (*(v357 + 4 * BYTE2(v412)) & 0x101u))) + 1668134;
  STACK[0x670] = v427;
  v428 = STACK[0x910];
  v429 = *(STACK[0x910] + 4 * (v427 - 2120 * ((2025928 * v427) >> 32)));
  v430 = (725634795 * (((v429 ^ 0x76ECDB61) - 1995234145) ^ ((v429 ^ 0x6C961C6B) - 1821777003) ^ ((v429 ^ 0xCB48A6B0) + 884431184)) + 260465086) ^ v426 ^ ((1451269590 * (((v429 ^ 0x575DF16) + 2055872746) ^ ((v429 ^ 0x6A8786EE) + 360216850) ^ ((v429 ^ 0x3EC03842) + 1094698942)) + 520930172) | 0xA74E6B4E);
  v431 = *(STACK[0x910] + 4 * (1079 * (v407 % 0x101) + 555685 - 2120 * ((2025928 * (1079 * (v407 % 0x101) + 555685)) >> 32))) ^ (v407 % 0x101) ^ 0x1ED8A02 ^ (v430 - 785227334 - ((2 * v430) & 0xA264C374));
  STACK[0x930] = v431;
  v432 = (((v415 & (v407 ^ (2 * v408))) >> v419) ^ (((v407 ^ (2 * v408)) & v418) << v431)) + 2 * (((v415 & (v407 ^ (2 * v408))) >> v419) & (((v407 ^ (2 * v408)) & v418) << v431));
  v433 = STACK[0x940];
  LODWORD(v431) = v400 ^ LODWORD(STACK[0x940]);
  LODWORD(STACK[0x878]) = v431;
  LODWORD(v427) = __ROR4__(__ROR4__(v363 ^ v413 ^ v431 ^ v425, 13) ^ 0xB845A5CC, 19) ^ 0xB4B99708;
  v434 = v361 ^ v433;
  v435 = v427 ^ v361 ^ v433 ^ v403;
  STACK[0x718] = v412;
  v436 = v435 ^ LODWORD(STACK[0x810]) ^ v412;
  LODWORD(STACK[0x7D8]) = v435;
  v437 = *(v357 + ((v436 >> 22) & 0x3FC)) ^ __ROR4__(*(v357 + 4 * v436), 24) ^ __ROR4__(*(v357 + 4 * BYTE2(v436)), 8);
  STACK[0x798] = v436;
  LODWORD(v424) = __ROR4__(*(v357 + 4 * BYTE1(v436)), 16);
  STACK[0x738] = v425;
  v438 = v437 ^ v424 ^ v425 ^ v432;
  LODWORD(STACK[0x928]) = v413 ^ v362;
  LODWORD(STACK[0x7D0]) = v427;
  v439 = (v362 ^ -v362 ^ ((v438 ^ v413 ^ v362 ^ v427) - (v438 ^ v413 ^ v362 ^ v427 ^ v362))) + (v438 ^ v413 ^ v362 ^ v427);
  v440 = v405[16] ^ LODWORD(STACK[0x808]);
  v441 = (v439 ^ v363) + v361 - 2 * ((v439 ^ v363) & v361);
  v442 = v440 - 32 * (v440 >> 4);
  v443 = v423;
  v444 = *(v423 + (1377 * ((v442 - 34) ^ 0x11) - 4864 * ((883012 * (1377 * ((v442 - 34) ^ 0x11u))) >> 32))) ^ (v442 - 2 * ((v442 - 34) & 0x77 ^ v440 & 1) + 84);
  v445 = v410 ^ v439;
  v446 = v363 ^ v413 ^ v427 ^ v434 ^ v403 ^ v439;
  v447 = (((v444 ^ 0x7F) & 0xE0) << 19) | ((v444 ^ 0x7F) << 27);
  v448 = v447 % 0x101;
  v449 = 1079 * (v447 % 0x101);
  v450 = v449 + 1111370 - 2120 * ((2025928 * (v449 + 1111370)) >> 32);
  v451 = STACK[0x800];
  v452 = v447 ^ (2 * (v447 & STACK[0x800]));
  v453 = LODWORD(STACK[0x7F8]) - ((2039570243 * (((*(v428 + 4 * v450) ^ 0x41CE267D) - 1104029309) ^ ((*(v428 + 4 * v450) ^ 0x710E8CCB) - 1896778955) ^ ((*(v428 + 4 * v450) ^ 0xE1F2CB0C) + 504182004)) - 1228039762) ^ 0xCA2272A0);
  v454 = *(v428 + 4 * (v449 + 555685 - 2120 * ((2025928 * (v449 + 555685)) >> 32))) ^ (v448 - 785227334 - ((2 * v448) & 0x374)) ^ 0x9CFEA72F;
  LODWORD(STACK[0x640]) = (v453 ^ v454) + 2 * ((v453 | v454) ^ v453 ^ v454);
  STACK[0x7E0] = v415;
  v455 = v419;
  v456 = (v415 & v452) >> v419;
  v457 = STACK[0x818];
  v458 = STACK[0x848];
  v459 = v456 ^ ((v452 & STACK[0x818]) << STACK[0x848]);
  LODWORD(v456) = *(v443 + (1377 * ((HIBYTE(v445) + 110) ^ 0x11) - 4864 * ((883012 * (1377 * ((HIBYTE(v445) + 110) ^ 0x11u))) >> 32))) ^ (HIBYTE(v445) + 110 - ((2 * (HIBYTE(v445) + 110)) & 0x3EC) + 118) ^ 0x7F;
  v460 = *(v357 + 4 * BYTE2(v445));
  HIDWORD(v424) = *(v357 + 4 * BYTE1(v445));
  LODWORD(v424) = HIDWORD(v424);
  v461 = v424 >> 16;
  LODWORD(v456) = *(v357 + 4 * ((v456 >> 5) | (8 * v456)));
  STACK[0x5E8] = v438;
  v462 = v363 ^ v459 ^ v438;
  v158 = (v462 & 0x800 & v456) == 0;
  v463 = (v462 & 0x800) + v456;
  if (v158)
  {
    v464 = 0;
  }

  else
  {
    v464 = -2 * (v462 & 0x800);
  }

  v465 = v461 ^ __ROR4__(v460, 8) ^ __ROR4__(*(v357 + 4 * v445), 24) ^ v462 & 0xFFFFF7FF ^ (v463 + v464);
  LODWORD(STACK[0x620]) = v441 ^ v362;
  v466 = v465 ^ v413 ^ v441 ^ v362;
  STACK[0x770] = v446;
  v467 = __ROR4__(__ROR4__(v466 ^ v362 ^ v434 ^ v446, 9) ^ 0x48703903, 23);
  v468 = ((v361 ^ v467 ^ 0xE0720690) >> ((v361 ^ v467 ^ 0x90) & 0x1D) >> ((v361 ^ v467 ^ 0x90) & 0x1D ^ 0x1D)) | (8 * (v361 ^ v467 ^ 0xE0720690));
  v469 = 1377 * (((((v405[32] ^ 0xAC) + 84) ^ ((v405[32] ^ 0x9E) + 98) ^ ((v405[32] ^ 0x44) - 68)) - 28) ^ 0xDC) + 4834647;
  v470 = *(v443 + v469 - 4864 * (((7064091 * v469) >> 32) >> 3));
  v471 = v443;
  HIDWORD(v472) = v470 ^ 0x16;
  LODWORD(v472) = (v470 ^ 0x60) << 24;
  v473 = (STACK[0x7F0] ^ (v472 >> 29) ^ 0x18) << 24;
  v474 = STACK[0x8F8];
  v475 = v455;
  v476 = (((v473 ^ (2 * (v473 & v451))) & STACK[0x8F8]) >> v455) ^ (((v473 ^ (2 * (v473 & v451))) & v457) << STACK[0x930]);
  LODWORD(v472) = __ROR4__(v468 ^ __ROR4__(v362, 29) ^ 0x6C23C32D, 3);
  v477 = v472 ^ 0xAD847865;
  LODWORD(STACK[0x5C8]) = v445;
  v478 = v363 ^ v413 ^ v445;
  v479 = v472 ^ 0xAD847865 ^ v478;
  v480 = *(v357 + 4 * (v472 ^ 0x65u ^ v478));
  v481 = v465 ^ v363;
  v482 = v476 ^ 0xD2675CC4;
  if (!(v480 << 8))
  {
    v482 = 764977979;
  }

  LODWORD(STACK[0x7F8]) = v481;
  v483 = *(v357 + ((v479 >> 22) & 0x3FC)) ^ __ROR4__(v480, 24) ^ __ROR4__(*(v357 + 4 * ((*(v471 + 1377 * (BYTE1(v479) ^ 0x32) + 3470040 - 4864 * (((7064091 * (1377 * (BYTE1(v479) ^ 0x32u) + 3470040)) >> 32) >> 3)) ^ (BYTE1(v479) - ((v479 >> 7) & 0xEC) + 118) ^ 0x49) + 102)), 16) ^ __ROR4__(*(v357 + 4 * BYTE2(v479)), 8) ^ ((v481 & 0x2D98A33B ^ v482 & v476) + ((v481 ^ v476) & 0xD2675CC4)) ^ v362;
  v484 = __ROR4__(v362, 5) ^ 0xAA5235C6 ^ __ROR4__(v483, 5);
  v485 = STACK[0x940];
  v486 = (LODWORD(STACK[0x858]) ^ v405[64]) << 24;
  v487 = STACK[0x7E8] & v486;
  v488 = v487 + (v486 & (LODWORD(STACK[0x6E8]) ^ 0x867EEC61));
  v489 = v486 ^ (2 * v487);
  v490 = *(v428 + 4 * (1079 * (v486 % 0x101) + 1111370 - 2120 * ((2025928 * (1079 * (v486 % 0x101) + 1111370)) >> 32)));
  v491 = ((v490 ^ 0xE09D689D) + 526554979) ^ ((v490 ^ 0x3413693E) - 873687358) ^ ((v490 ^ 0x5BC6019) - 96231449);
  v492 = STACK[0x940];
  v493 = v405;
  v494 = *(v428 + 4 * (1079 * (v488 % 0x101) + 555685 - 2120 * ((2025928 * (1079 * (v488 % 0x101) + 555685)) >> 32))) ^ v361 ^ (v488 % 0x101) ^ (2039570243 * v491 - 2013267096 - ((-215826810 * v491 + 1838887772) & 0xA264C374));
  v495 = STACK[0x838];
  v496 = v458;
  v497 = ((v489 & v474) >> v475) ^ ((v489 & STACK[0x838]) << v458);
  LODWORD(STACK[0x858]) = LODWORD(STACK[0x880]) ^ v363;
  STACK[0x688] = LODWORD(STACK[0x878]) ^ v363;
  LODWORD(STACK[0x880]) = LODWORD(STACK[0x7D8]) ^ v363;
  LODWORD(STACK[0x638]) = v466 ^ v363;
  v498 = v362 ^ __ROR4__(__ROR4__(v483 ^ v485 ^ v466, 8) ^ 0x246D8DE2, 24) ^ 0x6D8DE224;
  v499 = v498 ^ v413;
  v500 = v498 ^ v363;
  LODWORD(STACK[0x6B0]) = v477 ^ v363;
  v501 = v477 ^ v498 ^ v413;
  STACK[0x6E8] = v479;
  v502 = v501 ^ v485 ^ v479;
  LOBYTE(v498) = *(v471 + 1377 * (BYTE2(v502) ^ 0xB0) + 2400111 - 4864 * (((7064091 * (1377 * (BYTE2(v502) ^ 0xB0u) + 2400111)) >> 32) >> 3));
  v503 = v494 ^ v362;
  v504 = __ROR4__(*(v357 + 4 * BYTE1(v502)), 16);
  v505 = *(v357 + 4 * BYTE3(v502));
  STACK[0x570] = v502;
  v506 = v494 ^ v362 ^ 0xD37C3CD2 ^ v504 ^ v505 ^ __ROR4__(*(v357 + 4 * (v477 ^ v499 ^ v485 ^ v477 ^ v478)), 24);
  LODWORD(v502) = __ROR4__(v484, 27) ^ 0x4A46B8D5;
  v507 = STACK[0x7A0];
  v508 = STACK[0x8E8];
  LODWORD(STACK[0x5A8]) = v502;
  v509 = v506 ^ v497 ^ v502;
  v510 = (((v498 ^ 0xD) - 13) ^ ((v498 ^ 0x2C) - 44) ^ ((v498 ^ 0x57) - 87)) - 44;
  v511 = ((2 * v498) ^ 0xEC) - 74;
  HIDWORD(v513) = *(v357 + 4 * ((v511 ^ v510 ^ 0xE0) + 102));
  LODWORD(v513) = HIDWORD(v513);
  v512 = v513 >> 8;
  v514 = v509 & 0x100000;
  if ((v509 & 0x100000 & v512) != 0)
  {
    v514 = -v514;
  }

  v515 = (v514 + v512) ^ v509 & 0xFFEFFFFF;
  v516 = v362 << (v511 & 0x1A) << (v511 & 0x1A ^ 0x1B);
  v517 = (v516 ^ (v362 >> 5)) + 2 * (v516 & (v362 >> 5));
  LODWORD(STACK[0x878]) = v500;
  v518 = __ROR4__(v492 ^ 0xD37C3CD2 ^ v494 ^ v500 ^ v515, 5);
  v519 = v503 ^ __ROR4__((v518 ^ 0x5D1F453D) + v517 - 2 * ((v518 ^ 0x5D1F453D) & v517), 27);
  v520 = v503 ^ 0x56DCD58F ^ v515;
  v521 = v499 ^ v478;
  v522 = v519 ^ 0xA3E8A7AB;
  STACK[0x518] = v501;
  v523 = v501 ^ v508 ^ v519 ^ 0xA3E8A7AB;
  v524 = v507 ^ 0xD37C3CD2 ^ v523;
  v525 = v521 ^ v524;
  v526 = v362 ^ 0xCA2272A0 ^ (v521 ^ v524) & 0xFFEFFFFF;
  v527 = v494 ^ 0x56DCD58F;
  v528 = v525 & 0x100000;
  if ((v528 & (v494 ^ 0x56DCD58F)) != 0)
  {
    v528 = -v528;
  }

  v529 = v526 ^ (v528 + v527);
  v530 = 1377 * (((((2 * v493[128]) | 0x37) + (((v493[128] ^ 0xB) - 11) ^ ((v493[128] ^ 0x96) + 106) ^ ((v493[128] ^ 0xEB) + 21)) - 37) ^ 0x61B) + 2 * (((((2 * v493[128]) | 0x37) + (((v493[128] ^ 0xB) - 11) ^ ((v493[128] ^ 0xFFFFFF96) + 106) ^ ((v493[128] ^ 0xFFFFFFEB) + 21)) - 37) ^ 0xC4) & 0xCF));
  v531 = *(v471 + v530 - 4864 * (((7064091 * v530) >> 32) >> 3));
  v532 = (STACK[0x7F0] ^ (((((2 * v531) ^ 0xFFFFFFEC) - 74) ^ ((((v531 ^ 0x16) - 22) ^ ((v531 ^ 0xFFFFFF8B) + 117) ^ ((v531 ^ 0xFFFFFFEB) + 21)) - 44) ^ 0xE0) + 102) ^ 0x70) << 24;
  v533 = STACK[0x800];
  v534 = v474;
  v535 = (((v532 ^ (2 * (v532 & STACK[0x800]))) & v495) << v496) ^ (((v532 ^ (2 * (v532 & STACK[0x800]))) & v474) >> STACK[0x890]);
  LODWORD(STACK[0x790]) = v520;
  v536 = __ROR4__(__ROR4__(v529, 19) ^ 0xC34263F7, 13) ^ 0x503C81EEu;
  v537 = *(v357 + ((v536 >> 22) & 0x3FC)) ^ __ROR4__(*(v357 + 4 * BYTE1(v536)), 16) ^ __ROR4__(*(v357 + 4 * v536), 24) ^ __ROR4__(*(v357 + 4 * BYTE2(v536)), 8) ^ (v520 + v535 - 2 * (v520 & v535));
  v538 = v522 ^ v527 ^ v362;
  v539 = v537 ^ v494 ^ 0xCA2272A0 ^ LODWORD(STACK[0x928]) ^ v522 ^ v494 ^ 0x56DCD58F ^ v362;
  v540 = v539 + v527 - 2 * (v539 & v527);
  v541 = (LODWORD(STACK[0x850]) ^ v493[27]) << 24;
  v542 = STACK[0x930];
  v543 = (((v541 ^ (2 * (v541 & v533))) & v495) << STACK[0x930]) + (((v541 ^ (2 * (v541 & v533))) & v534) >> STACK[0x8F0]);
  LODWORD(STACK[0x788]) = v537 ^ 0x4F829BFD;
  v544 = v524 ^ v527 ^ v362 ^ v492 ^ v540 ^ v527;
  STACK[0x4F0] = STACK[0x7C8];
  STACK[0x678] = LODWORD(STACK[0x678]) ^ 0x9EB0FA47;
  LODWORD(STACK[0x5D8]) = v524 ^ v527 ^ v362 ^ 0x4F829BFD;
  STACK[0x7D8] = v523 ^ 0x9CFEA72F;
  STACK[0x6E0] = v538 ^ 0x195E4E72u;
  LODWORD(STACK[0x65C]) = v536 ^ v544;
  v545 = *(v357 + 4 * (v508 ^ 0xA0u ^ (v362 ^ v507) ^ v527 ^ (v536 ^ v544)));
  v546 = *(v357 + 4 * ((v508 ^ 0x72A0 ^ v362 ^ v507 ^ v527 ^ v536 ^ v544) >> 8));
  v547 = *(STACK[0x948] + 8 * SLODWORD(STACK[0x628]));
  LODWORD(STACK[0x850]) = STACK[0x690];
  LODWORD(STACK[0x588]) = STACK[0x610];
  STACK[0x7C8] = LODWORD(STACK[0x870]);
  LODWORD(STACK[0x848]) = v495;
  STACK[0x6D0] = v542;
  return v547();
}

uint64_t sub_471EC(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(STACK[0x6C0] + (3013 * v6 + 4661111) % 0x1188u);
  v10 = (v9 | ((v9 < 0x7D) << 8)) * a1 + 19651366 - (((((v9 | ((v9 < 0x7D) << 8)) * a1 + 19651366) * a4) >> 32) >> 12) * v4;
  LODWORD(v10) = *(v8 + 4 * ((v10 ^ 0x353CE73BBFDFF1BFLL) + ((2 * v10) & 0x637E)) + 0x2B0C631100803904);
  v11 = 3013 * ~(v10 >> 8) + 10093550;
  v12 = v7 + v6 * a1 - ((((v7 + v6 * a1) * a4) >> 32) >> 12) * v4;
  HIDWORD(v13) = v11 - 4488 * (((30623653 * v11) >> 32) >> 5);
  LODWORD(v13) = HIDWORD(v13);
  v14 = *(STACK[0x6C0] + (3013 * (((BYTE3(v10) ^ 0x46E3A751) + 628819144) ^ ((BYTE3(v10) ^ 0x274E9312) + 1154887813) ^ ((BYTE3(v10) ^ 0x61AD3477) + 37066722)) - 853801737) % 0x1188u);
  v15 = *(STACK[0x6C0] + 3013 * (BYTE2(v10) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v10) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v16 = v14 & 0xB7 ^ 0x9A;
  v17 = *(STACK[0x6C0] + (3013 * (((v10 ^ 0x6B79AC9E) + 70342742) ^ ((v10 ^ 0x7B7216D0) + 339403292) ^ ((v10 ^ 0x100BBAB8u) + 2135117428)) + 989292088) % 0x1188);
  v18 = v15 & 0x5F ^ 0x6E;
  LOBYTE(v11) = *(STACK[0x6C0] + ((v13 >> 14) >> 18));
  v19 = v11 & 0x11 ^ 0x4B;
  v20 = v11 ^ 2;
  v21 = (((v15 ^ (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * v15) & 6 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x5F) << 8) | (((v14 ^ (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xB7) << 16);
  LODWORD(v10) = (v11 ^ (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (((2 * (v11 & 3)) ^ 0x12) & v20 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xEF3DD8;
  v22 = v17 & 0x39 ^ 0x5F;
  v23 = v17 ^ 2;
  v24 = v17 ^ (2 * (v23 & (2 * (v23 & (2 * (v23 & (2 * (v23 & (2 * (v23 & (2 * (((2 * (v17 & 3)) ^ 0x3A) & v23 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  *(v8 + 4 * ((v12 ^ 0x3FEFFAFE3BFEFFCELL) + ((2 * v12) & 0x7F9C)) + 0x401407100400C8) = ((((v10 & (v21 ^ 0xEFBDFF) | v21 & 0x10C200) << 8) ^ 0x35058792) & (v24 ^ 0xFFFFFFA3) | v24 & 0x6D) ^ 0xEE7CB14D;
  return (*(STACK[0x6C8] + 8 * ((94 * (v6 != 255)) ^ v5)))();
}

uint64_t sub_4762C(uint64_t a1)
{
  (*(v3 + 8 * (v2 + 887)))(*(a1 + 1120));
  v5 = STACK[0x948];
  *(a1 + 1120) = 0;
  *(a1 + 1132) = 0;
  return (*(v5 + 8 * v2))(*(v1 + 160));
}

uint64_t sub_47730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = (a4 + 908);
  v8 = vld1q_dup_f32(v7);
  v9 = STACK[0x8C0];
  return (*(a1 + 8 * (v6 ^ (a6 + 262) ^ ((v6 > 0xD7F59358) * (v6 - a6 + 1311)))))(v8);
}

uint64_t sub_477FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = v8 - 1;
  v14 = STACK[0x910];
  *(STACK[0x910] + ((v7 ^ (a7 - 439) ^ v9) & v13)) = *(v10 + (v13 + v11));
  v15 = *(v12 + 8 * ((3178 * (v13 == 0)) ^ v7));
  STACK[0x930] = v14;
  return v15();
}

uint64_t sub_47844()
{
  *v2 = v0;
  *(v2 + 12) = v6 - ((v5 + 363214082 - 2 * (v5 & 0x15A63502)) ^ 0xE0041F5D) * v7 + 200;
  v9 = (*(v1 + 8 * (v6 + 2144)))(v8 - 208);
  return (*(STACK[0x948] + 8 * ((1910 * (v4 + 485 * (v6 ^ 0x260u) - 1454 <= *(v3 + 64))) ^ v6)))(v9);
}

uint64_t sub_478D8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = v2 | 0x46;
  v5 = (v2 | 0x46) + 2369;
  v6 = *(a1 + 24);
  v7 = (v5 ^ 0x91A06991) + v6;
  v8 = v6 > 0x6E5F9C66;
  v9 = v3 + 710023205;
  v10 = v8;
  v11 = (v9 < 0x91A06399) ^ v10;
  v12 = v7 > v9;
  if (v11)
  {
    v12 = v10;
  }

  return (*(a2 + 8 * ((v12 * (v5 ^ 0x321)) ^ v4)))();
}

uint64_t sub_47954@<X0>(uint64_t a1@<X1>, int a2@<W5>, void *a3@<X6>, int a4@<W8>)
{
  LODWORD(STACK[0x510]) = a2;
  v8 = 551 * a2 + v6;
  v9 = (((1645 * a2 + 2113825) % 0xA88u) ^ 0x764CF7E5FF8BDF3DLL) + STACK[0x520] + (((a4 - 1135499625) & 0x43AE5163 ^ 0x1E7ALL) & (2 * ((1645 * a2 + 2113825) % 0xA88u)));
  v10 = *(v9 + 0x7ED2DB77A8BD7757);
  LODWORD(v9) = v9 + 7610563;
  v11 = *v4;
  v12 = *STACK[0x538];
  v13 = (v9 + *(v12 + (v11 & v7)) + v7);
  v14 = *a3 ^ 0xF1E76555;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v13 & v14)) ^ v10 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + 2) & v14)) ^ (110 * v9);
  LODWORD(v9) = 1645 * ((~(2 * v9) & 4) + (v9 ^ 0x244));
  v15 = (v9 - 2696 * ((1593089 * v9) >> 32));
  v16 = *((v15 ^ 0xC7DF5C3FFAB3FB7BLL) + STACK[0x520] + ((2 * v15) & 0x16F6) + 0x2D40771DAD955B19);
  v17 = STACK[0x518] + 4 * (v8 % 0x1D48);
  v18 = (*(v12 + (v11 & STACK[0x540])) + v5 + v17);
  *(v17 + a1) = (1912024365 * v17) ^ 0x2AE76B2A ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v18 & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 - 2) & v14));
  return (*(STACK[0x548] + 8 * (a4 - 612)))();
}

uint64_t sub_47B9C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = (v1 + 1630020084) ^ (1938608989 * ((((v4 - 208) | 0xED7C5775) - ((v4 - 208) & 0xED7C5775)) ^ 0x975C0983));
  *v2 = a1;
  v6 = (*(v5 + 8 * (v3 + v1 + 41)))(v4 - 208);
  return (*(STACK[0x948] + 8 * (v3 + v1 - 873)))(v6);
}

uint64_t sub_47C24(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (v5 - 5274982) & 0x86D553CF;
  v9 = a4 + v5 + 53;
  v10 = **(v6 + 144);
  v11 = *(v4 + 112);
  v12 = *(v6 + 1240);
  STACK[0x970] = *(v7 + 8 * v9);
  return (*(v7 + 8 * ((v8 ^ 0x198) + v9)))();
}

uint64_t sub_47F64@<X0>(unsigned int a1@<W8>)
{
  *(*(v6 + 8) + a1 * v8) = 0;
  v9 = v3 < v1;
  *(*(v6 + 8) + a1 * v8 + 4) = 0;
  *(*(v6 + 8) + a1 * v8 + 8) = 0;
  *(*(v6 + 8) + a1 * v8 + 16) = 0;
  *(*(v6 + 8) + a1 * v8 + 20) = 0;
  *(*(v6 + 8) + a1 * v8 + 24) = 0;
  *(*(v6 + 8) + a1 * v8 + 32) = 0;
  *(*(v6 + 8) + a1 * v8 + 36) = 0;
  v10 = a1 + 1;
  if (v9 == v10 > v4)
  {
    v9 = v10 + v1 < v3;
  }

  return (*(v7 + 8 * ((v9 * v5) ^ v2)))();
}

uint64_t sub_48098(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v17 = *(*v14 + ((((v15 + v12) & 0xFFFFFFF8) + v10) & *a8));
  v18 = __ROR8__((v15 + v12) & ((a2 - 1769) ^ 0xFFFFFFFFFFFFFF87), 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0xA0FE8E240DBF49C4) + 0x507F471206DFA4E2) ^ 0x58E00249A71F14F7;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x677F0ED9680BC980) - (v21 + v20) - 0x33BF876CB405E4C0) ^ 0xEB6E0F95B28B5C80;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * ((v24 + v23) ^ 0xE6818AA62BD34A45)) | 0x5C38BF1892296DE0) - ((v24 + v23) ^ 0xE6818AA62BD34A45) - 0x2E1C5F8C4914B6F0) ^ 0xCF7C26797C257DCALL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v8;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v13;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x336A13F1D81E9186) + 0x19B509F8EC0F48C3) ^ 0x963764B030A208C5;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (a1 - ((v34 + v33) | a1) + ((v34 + v33) | 0xEB43A287A40B1C91)) ^ 0xD530FD7A3488AC32;
  *(v15 + v12) = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v33, 61))) ^ v9) >> (8 * ((v15 + v12) & 7))) ^ *(v11 + v12);
  return (*(v16 + 8 * ((236 * (v12 != 15)) ^ a2)))();
}

uint64_t sub_483C0(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1913485891 * (a1 ^ 0x9DECE72A));
  if (*a1)
  {
    return (*(*(&off_18D8F0 + (v1 ^ 0xD43C35A4)) + 8 * v1 + 0x126260E32))(*a1);
  }

  else
  {
    return (*(*(&off_18D8F0 + (v1 ^ 0xD43C35A4)) + 8 * v1 + 0x126260E32))(*(&off_18D8F0 + v1 + 734251561) - 889839815);
  }
}

void sub_4843C(uint64_t a1)
{
  v1 = 1775714371 * (((a1 | 0x72150DCD) - a1 + (a1 & 0x8DEAF232)) ^ 0x61E296E7);
  v2 = *(a1 + 36);
  v3 = *(a1 + 32) ^ v1;
  v4 = *(a1 + 24);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_48560@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46)
{
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x620]) = ~v47;
  v48 = ~LODWORD(STACK[0x738]);
  v49 = 67 * (a5 ^ 0x24D);
  v50 = LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x590]) ^ 0x4222B363;
  LODWORD(STACK[0x840]) = v49;
  STACK[0x448] = v50 ^ v49;
  v51 = *(STACK[0x948] + 8 * a5);
  LODWORD(STACK[0x878]) = STACK[0x8E8];
  LODWORD(STACK[0x720]) = STACK[0x5C8];
  STACK[0x698] = LODWORD(STACK[0x508]);
  LODWORD(STACK[0x430]) = a46;
  LODWORD(STACK[0x5B8]) = STACK[0x880];
  LODWORD(STACK[0x540]) = STACK[0x4D0];
  v59 = STACK[0x418];
  v52 = STACK[0x908];
  v53 = LODWORD(STACK[0x940]);
  v54 = LODWORD(STACK[0x7A0]);
  STACK[0x8F8] = a1;
  v55 = STACK[0x928];
  v56 = STACK[0x5F8];
  v57 = LODWORD(STACK[0x5A0]);
  return v51(a1, 1333959677, a2, STACK[0x548], a3, a4, v46, LODWORD(STACK[0x5B0]), a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_4862C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = (LODWORD(STACK[0x1018]) ^ 0xFFFAFE57D9FC777ELL) + 0x71AFE9EDFEBFEFA4 + ((LODWORD(STACK[0x1018]) << ((2 * (a7 ^ (a7 + 2))) ^ 5u)) & 0x1B3F8EEFCLL);
  v10 = v7[71];
  v11 = v7[164];
  v12 = ((2 * LODWORD(STACK[0x1024])) & 0x1A3BFFFACLL) + (LODWORD(STACK[0x1024]) ^ 0xEFF3FE9FD1DFFFD6) - 0x738B0A1666BDC6BELL;
  v7[183] = *(v8 + 8 * (a4 + a7 + 76));
  return (*(v8 + 8 * ((1021 * (a4 + a7 != 1831422493)) ^ (a4 + a7 + 361))))(v11);
}

uint64_t sub_488DC()
{
  v5 = ((((v4 - 2409) | 0xC0) + 1962) ^ 0x33C272CA) + *v1;
  v6 = v5 < v2;
  v7 = v3 + 1 + v2 < v5;
  if ((v3 + 1) > 0x5DB3501B != v6)
  {
    v7 = v6;
  }

  return (*(v0 + 8 * ((51 * v7) | v4)))();
}

uint64_t sub_48948()
{
  v4 = STACK[0x10E8];
  *v4 = STACK[0x10C8];
  v4[1] = *v0;
  STACK[0xE00] = (v4 + 1);
  v5 = STACK[0x8C0];
  v4[2] = STACK[0x8C0];
  STACK[0xB00] = (v4 + 2);
  *STACK[0xF58] = v5;
  return (*(v3 + 8 * (((v2 == (v1 + 67)) * ((v1 - 35119301) & 0x3FD7FFFB ^ 0x3DC027E3)) ^ v1)))();
}

uint64_t sub_489C8@<X0>(int a1@<W6>, int a2@<W8>)
{
  v5 = ((a1 + a2 - 1104) ^ (a1 - 2212) ^ 0xFFFFFFFFFFFFF75BLL) + v2;
  if (HIDWORD(v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = -5 - v3 >= v5;
  }

  v7 = v6;
  return (*(v4 + 8 * ((49 * v7) ^ a2)))();
}

uint64_t sub_48A18(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = a8 - 1;
  *(v9 + (v13 + *a3 + 16)) = *(v10 + (v13 + v8));
  return (*(v12 + 8 * (((v13 == 0) * (4 * (a6 ^ (v11 + 49)) + 41)) ^ a7)))();
}

uint64_t sub_48A60@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16) + v6;
  v8 = *(*(a5 - 132921991) + (((v7 & (110 * (a2 ^ 0x138) - 1878)) + 916900720) & *(v5 - 464343834)));
  v9 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (((v9 + v8) | 0x45FBB4B29E04FBE1) - ((v9 + v8) | 0xBA044B4D61FB041ELL) - 0x45FBB4B29E04FBE2) ^ 0x4D64F1E93FC44BF4;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xD8D188F9068EB840;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x7E1F3531EE2817FLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0x99968E1BE62E5EC4) - (v16 + v15) + 0x3334B8F20CE8D09DLL) ^ 0x8D98436D41F1C3A5;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x8A4943FA3C1BB996;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8F826D48DCAD4006;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0x467727529935C7DELL) + 0x233B93A94C9AE3EFLL) ^ 0x1D48CC54DC19534CLL;
  v25 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v22, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a3 + 8 * a2))();
}

uint64_t sub_48C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  *(*(a14 + 8) + v22 * v20) = *(*(v23 + 8) + v22 * v20);
  *(*(a14 + 8) + v22 * v20 + 4) = *(*(v23 + 8) + v22 * v20 + 4);
  v27 = *(*(a14 + 8) + v22 * v20 + 8);
  v28 = *(*(v23 + 8) + v22 * v20 + 8);
  a16 = v19 - 434465113 * ((v21 + 1796468308 - 2 * (v21 & 0x6B13EE54)) ^ 0x9EB1C40B) - 690;
  a15 = v27;
  a17 = v28;
  (*(v18 + 8 * v17))(&a15);
  *(*(a14 + 8) + v22 * v20 + 16) = *(*(v23 + 8) + v22 * v20 + 16);
  v29 = *(*(v23 + 8) + v22 * v20 + 24);
  a17 = *(*(a14 + 8) + v22 * v20 + 24);
  a15 = v29;
  a16 = v25;
  v30 = (*(v18 + 8 * (v19 ^ 0x800)))(&a15);
  *(*(a14 + 8) + v22 * v20 + 32) = *(*(v23 + 8) + v22 * v20 + 32);
  v31 = *v23 - 676940087;
  v32 = v26 + v22 + 1179 < v31;
  if (v22 + 1 > 0xB9CF139D != v31 < v24 + v26)
  {
    v32 = v31 < v24 + v26;
  }

  return (*(v18 + 8 * ((1848 * v32) ^ v19)))(v30);
}

uint64_t sub_48E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 1576) = a4;
  v9 = (((v8 ^ 0xA8123F5F097742B6) - 0x422AA13C05F79F7DLL) ^ ((v8 ^ 0x1325960BDD145DD3) + 0x6E2F7972E6B7FE8) ^ ((((v5 & 0xD12677FD) - 0x69A4FE40D6341D85) ^ v8) - 0x7C639FDC254B3500)) - 0x38ABC9770ED7D59BLL > 0x15;
  return (*(a3 + 8 * ((v9 | (4 * v9)) ^ (v6 + v7 + 459))))(624788556, 624788557);
}

uint64_t sub_48EE4()
{
  *STACK[0x928] = 0;
  *(v3 + 1264) = v1;
  *(v3 + 1280) = v2;
  *(v3 + 1284) = 0;
  *(v3 + 1272) = 0;
  *(v3 + 1288) = 32;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0;
  *(v3 + 1308) = 65021204;
  *(v3 + 1312) = 0;
  return (*(v4 + 8 * v0))();
}

uint64_t sub_48F30()
{
  v3 = STACK[0x978];
  v1[30] = &STACK[0x1190] + STACK[0x978];
  STACK[0x978] = ((9 * (v0 ^ 0x22Au)) ^ 0x35ELL) + v3;
  v1[158] = 0;
  v1[106] = 0;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_48F88@<X0>(uint64_t a1@<X8>)
{
  if (v1 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v1;
  }

  *v3 = v5;
  *v2 = v5;
  return (*(a1 + 8 * (v4 + 114)))();
}

uint64_t sub_49108@<X0>(_DWORD *a1@<X8>, uint64_t a2, _DWORD *a3, int a4, unsigned int a5)
{
  a1[8] = v7;
  a1[9] = v6;
  a1[10] = v5;
  a3 = a1;
  a5 = (v9 - 658) ^ (381473641 * (((&a3 | 0x1A96221F) + (~&a3 | 0xE569DDE0)) ^ 0x47205CC));
  v10 = (*(v8 + 8 * (v9 + 682)))(&a3);
  return (*(v8 + 8 * v9))(v10);
}

uint64_t sub_4917C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = (a4 + v4 + 1024) | 0x161;
  v7 = v4 + 1928846155;
  v8 = (LODWORD(STACK[0xCBC]) + 1);
  v9 = LODWORD(STACK[0xD14]);
  v10 = LODWORD(STACK[0x9FC]);
  v11 = LODWORD(STACK[0xEA4]);
  return (*(v5 + 8 * ((852 * (v7 < 0x86F4133F)) ^ (v7 + 328004554 + v6))))();
}

uint64_t sub_49298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v7 + 200);
  v10 = *(v9 + 16);
  LODWORD(v9) = *(v9 + 88);
  *(v7 + 384) = v10;
  LODWORD(STACK[0xC2C]) = v9;
  return (*(v8 + 8 * (v6 - 1171)))(a1, a2, a3, 2256851803, a5, a6, 2038115493);
}

uint64_t sub_495BC@<X0>(_BYTE *a1@<X8>)
{
  a1[275] = v3[35];
  a1[274] = v3[34];
  a1[273] = v3[33];
  a1[272] = v3[32];
  a1[271] = v3[31];
  a1[270] = v3[30];
  a1[269] = v3[29];
  a1[268] = v3[28];
  a1[267] = v3[27];
  a1[266] = v3[26];
  a1[265] = v3[25];
  a1[264] = v3[24];
  a1[263] = v3[23];
  a1[262] = v3[22];
  a1[261] = v3[21];
  a1[260] = *v2;
  return (*(v4 + 8 * (v1 - 135)))();
}

uint64_t sub_49670@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  v8 = v5 - 1;
  *(v7 + 1632) = v8;
  *(v2 + v8) = (v3 ^ v4 ^ a2) * (v3 + 17);
  return (*(a1 + 8 * ((28 * (*(v7 + 1632) == 0)) ^ v6)))();
}

uint64_t sub_496EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (v9 + 9002 * v7) % (((v8 + 1180) | 0x181) ^ 0x3D2Au);
  LODWORD(v10) = *(a5 + 4 * ((v10 ^ 0x3FFF57CFF3FFDEF9) + ((2 * v10) & 0x3DF2)) + 0x2A0C03000841CLL);
  *(v6 + (a6 + 3013 * v7) % 0x1188u) = (((v10 ^ 0xFD) + 127) ^ ((v10 ^ 0x76) - 10) ^ ((v10 ^ 0x7D) - 1)) + 7;
  return (*(STACK[0x6C8] + 8 * ((224 * (v7 == 255)) ^ v8)))();
}

uint64_t sub_497C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v8 == v7;
  LOBYTE(STACK[0xDDE]) = v10;
  v11 = STACK[0x368];
  return (*(v9 + 8 * ((1023 * v10) ^ (a4 + a7 + 504))))();
}

uint64_t sub_49840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = v7 - 1;
  v13 = (v6 - 109106813) & STACK[0x8E8];
  *(a6 + v12) = *(v9 + v12 + v10);
  v14 = *(v11 + 8 * (((v12 == 0) * (v8 + v13 + 948)) ^ v6));
  STACK[0x940] = a6;
  return v14();
}

uint64_t sub_4988C(uint64_t a1, int a2)
{
  STACK[0x558] = v10;
  v11 = (LODWORD(STACK[0x8F0]) + 65) | 0x40;
  LODWORD(STACK[0x850]) = v11;
  v12 = 3 * (v11 ^ 0xA19);
  v13 = v4 | v2;
  v14 = STACK[0x768];
  v15 = 2 * STACK[0x768];
  LODWORD(STACK[0x840]) = v15;
  v16 = v15 & 0xBEBEBEBE;
  LODWORD(STACK[0x5F0]) = v12;
  v17 = v10 & (v12 - 1482);
  if (STACK[0x7B0])
  {
    v18 = (v5 >> (v10 & (v12 + 54))) | a2;
  }

  else
  {
    v18 = v5;
  }

  v19 = v16 ^ 0x5F5F5F5F;
  HIDWORD(v20) = (v19 >> 4) ^ v19 ^ v8;
  LODWORD(v20) = v16 ^ 0x5F5F5F5F ^ v8;
  v21 = (v19 >> 4) ^ v19 ^ __ROR4__((v20 >> 31) ^ 0xCA2CCDE3, 1);
  v22 = 1079 * ((v16 ^ 0x5F5F5F5F) % 0x101);
  v23 = v22 + 278382 - 2120 * ((2025928 * (v22 + 278382)) >> 32);
  v24 = v22 + 1111370 - 2120 * ((2025928 * (v22 + 1111370)) >> 32);
  v25 = 2 * STACK[0x818];
  v26 = STACK[0x818];
  STACK[0x818] = STACK[0x818];
  v27 = v25 & 0xBEBEBEBE ^ 0x5F5F5F5F;
  v28 = STACK[0x890];
  v29 = LODWORD(STACK[0x890]) ^ 0xA0A0A0A0 ^ v25 & 0xBEBEBEBE;
  v30 = STACK[0x760];
  v31 = v27 & STACK[0x760];
  if ((v27 & STACK[0x760]) == 0)
  {
    v29 = STACK[0x890];
  }

  v32 = v29 & v27;
  v33 = v31 << STACK[0x7B8];
  v34 = STACK[0x7B8];
  STACK[0x7B8] = STACK[0x7B8];
  v35 = STACK[0x748];
  v36 = v32 >> STACK[0x748];
  STACK[0x748] = STACK[0x748];
  v37 = v21;
  LODWORD(STACK[0x6CC]) = v21;
  v38 = v21 ^ 0xE51666F1;
  LODWORD(STACK[0x660]) = v38;
  v39 = (v36 + v33) ^ v6 ^ STACK[0x6A8] ^ v37;
  if ((v26 & 0x1000000) != 0)
  {
    v40 = -33554432;
  }

  else
  {
    v40 = 0x2000000;
  }

  v41 = (((((v40 + (v25 & 0xBEBEBEBE)) ^ 0x5D5F5F5F) & v30) << v34) | ((((v40 + (v25 & 0xBEBEBEBE)) ^ 0x5D5F5F5F) & v28) >> v35)) ^ LODWORD(STACK[0x7F0]) ^ v38 ^ v18;
  STACK[0x930] = v39 ^ 0xE51666F1;
  if (((v39 ^ 0x66F1) & 0xFF00) != 0)
  {
    v42 = 146;
  }

  else
  {
    v42 = 4;
  }

  if ((((v42 ^ 0xC5) - 1) & v42) >= 0x80)
  {
    v43 = v41 >> 8;
  }

  else
  {
    v43 = v41;
  }

  STACK[0x830] = v43;
  v44 = STACK[0x7D8] == 0;
  v45 = STACK[0x7D8];
  if (STACK[0x7D8])
  {
    v3 = v13;
  }

  LODWORD(STACK[0x608]) = v7;
  v46 = STACK[0x910];
  v47 = *(STACK[0x910] + 4 * v23);
  v48 = *(STACK[0x910] + 4 * v24);
  v49 = STACK[0x650];
  v50 = (((v47 ^ 0xF23B394F) + 230999729) ^ ((v47 ^ 0xBC31C242) + 1137589694) ^ ((v47 ^ 0x9F389AB7) + 1623680329)) + 1444679079;
  v51 = ((v3 ^ v8 ^ v7) + ((2039570243 * (((v48 ^ 0xE457FA9A) + 463996262) ^ ((v48 ^ 0xB488242) - 189301314) ^ ((v48 ^ 0x3E2D1962) - 1043143010)) - 1228039762) ^ 0x35DD8D5F) + (v50 ^ 0xFCFDF0DB ^ (4 * v50 * v50)) + 1) ^ ((v19 & v30) << v9) ^ ((STACK[0x650] & v19) >> STACK[0x878]);
  v52 = STACK[0x908];
  v53 = *(STACK[0x908] + 4 * (BYTE2(v39) ^ 0x16u));
  v54 = *(STACK[0x908] + 4 * BYTE1(v51));
  LODWORD(STACK[0x8F8]) = v54;
  v55 = *(v52 + 4 * v51);
  v56 = v53 << (v54 & 0x18) << (v54 & 0x18 ^ 0x18);
  v57 = HIBYTE(v55);
  v58 = v9;
  v59 = STACK[0x730];
  STACK[0x7D8] = v45;
  v60 = *(STACK[0x5C0] + 4 * (1079 * v57 + 278382 - 2120 * ((2025928 * (1079 * v57 + 278382)) >> 32)));
  v61 = (v59 << v45) | (v59 >> v17);
  STACK[0x6D0] = v58;
  v62 = (((v60 ^ 0x7A2A3045) - 2049585221) ^ ((v60 ^ 0x5D717877) - 1567717495) ^ ((v60 ^ 0xF6692988) + 160880248)) + 1444679079;
  v63 = (v62 * v62) << ((v39 & 2 ^ 2) + (v39 & 2));
  v64 = STACK[0x928];
  v65 = STACK[0x928];
  v66 = v65 << v45;
  v67 = v65 >> v17;
  v68 = v17;
  STACK[0x880] = v17;
  if (v44)
  {
    v69 = v59;
  }

  else
  {
    v69 = v61;
  }

  LODWORD(STACK[0x870]) = v69;
  STACK[0x438] = v67;
  v70 = v67 | v66;
  LODWORD(STACK[0x848]) = v70;
  if (v44)
  {
    v70 = v64;
  }

  LODWORD(STACK[0x640]) = v70;
  v71 = v63 & 0x100000;
  if ((v63 & 0x100000 & v62) != 0)
  {
    v71 = -v71;
  }

  v72 = (v63 & 0xFFEFFFFF ^ v56 ^ (v71 + v62)) - 785227334 - ((2 * (v63 & 0xFFEFFFFF ^ v56 ^ (v71 + v62))) & 0xA264C374);
  STACK[0x768] = v14;
  v73 = 1079 * (v14 % 0x101);
  v74 = v73 + 278382 - 2120 * ((2025928 * (v73 + 278382)) >> 32);
  LODWORD(STACK[0x7F0]) = v73 + 1668134 - 2120 * ((2025928 * (v73 + 1668134)) >> 32);
  v75 = STACK[0x710];
  v76 = STACK[0x330];
  if (STACK[0x330])
  {
    v77 = (LODWORD(STACK[0x6C0]) << STACK[0x710]) ^ (LODWORD(STACK[0x6C0]) >> STACK[0x330]);
  }

  else
  {
    v77 = STACK[0x6C0];
  }

  v78 = v25 & 0xF2F2F2F2 ^ 0x79797979;
  v79 = 1079 * (v78 % 0x101) + 555685;
  LODWORD(STACK[0x928]) = v79 - 2120 * ((2025928 * v79) >> 32);
  v80 = v79 - 4240 * ((1012964 * v79) >> 32);
  if (v80 >= 0x848)
  {
    v81 = v80 - 2120;
  }

  else
  {
    v81 = v80;
  }

  v82 = STACK[0x558] == 0;
  if (STACK[0x558])
  {
    v83 = STACK[0x810];
  }

  else
  {
    v83 = STACK[0x65C];
  }

  v84 = v83 ^ STACK[0x6F8];
  v85 = v49 ^ 0x619FEADC;
  LODWORD(STACK[0x810]) = (v49 ^ 0x619FEADC) + v49 - 2 * v49;
  v86 = (2 * (((v51 & 0x5F5F5F5F ^ 0x5F5F5F5F) + (v51 & 0x5F5F5F5F)) & v14)) ^ 0x5F5F5F5F;
  v87 = STACK[0x7A8];
  v88 = (v86 & STACK[0x7A8]) << v58;
  LODWORD(STACK[0x65C]) = v86;
  v89 = STACK[0x878];
  v90 = STACK[0x660];
  LODWORD(v88) = (((v86 & v49) >> STACK[0x878]) + v88) ^ __ROR4__(__ROR4__(v84 ^ LODWORD(STACK[0x660]), 15) ^ 0x1FF1DAA9, 17);
  v91 = v88 ^ 0xED548FF8;
  v92 = STACK[0x930];
  STACK[0x668] = (*(v52 + ((v41 >> 22) & 0x3FC)) ^ __ROR4__(*(v52 + 4 * BYTE2(v51)), 8)) ^ __ROR4__(*(v52 + 4 * (v88 ^ 0xF8u)), 24) ^ __ROR4__(*(v52 + 4 * BYTE1(STACK[0x930])), 16);
  v93 = (v53 >> 8) ^ 0xD37C3CD2 ^ __ROR4__(*(v52 + 4 * STACK[0x830]), 24) ^ v57 ^ *(v46 + 4 * (1079 * v57 + 555685 - 2120 * ((2025928 * (1079 * v57 + 555685)) >> 32))) ^ __ROR4__(*(v52 + 4 * BYTE1(v91)), 16) ^ v72;
  LODWORD(v88) = *(v52 + ((v92 >> 22) & 0x3FC));
  v94 = STACK[0x708];
  v95 = (v94 >> v76) + (v94 << v75);
  v96 = STACK[0x560];
  v97 = STACK[0x560];
  v98 = v97 << v75;
  v99 = v75;
  STACK[0x710] = v75;
  LODWORD(v88) = v77 ^ (v97 << v75) ^ v88 ^ __ROR4__(*(v52 + 4 * BYTE1(v41)), 16) ^ __ROR4__(v55, 24);
  v100 = __ROR4__(*(v52 + 4 * BYTE2(v91)), 8);
  v101 = STACK[0x770];
  v102 = (STACK[0x770] >> v68) | (STACK[0x770] << STACK[0x7B0]);
  LODWORD(v88) = *(v46 + 4 * v81) ^ ((v88 ^ v100) - 785227334 - ((2 * (v88 ^ v100)) & 0xA264C374));
  v103 = v88 - 785227334 - ((2 * v88) & 0xA264C374);
  v104 = STACK[0x688];
  v105 = (v97 >> STACK[0x688]) | v98;
  STACK[0x770] = STACK[0x770];
  if (v82)
  {
    v106 = v101;
  }

  else
  {
    v106 = v102;
  }

  LODWORD(STACK[0x830]) = v106;
  if (v104)
  {
    v107 = v105;
  }

  else
  {
    v107 = v96;
  }

  v108 = *(v52 + ((v91 >> 22) & 0x3FC));
  HIDWORD(v110) = STACK[0x8F8];
  LODWORD(v110) = STACK[0x8F8];
  v109 = v110 >> 16;
  if ((v108 & 0x2000000 & v109) != 0)
  {
    v111 = -(v108 & 0x2000000);
  }

  else
  {
    v111 = v108 & 0x2000000;
  }

  v112 = v99 == 0;
  if (v99)
  {
    v113 = v95;
  }

  else
  {
    v113 = v94;
  }

  v114 = v30;
  v115 = (LODWORD(STACK[0x810]) ^ 0xFFFFFFF8) + v85;
  v116 = (((*(v46 + 4 * v74) ^ 0xAF705D7A) + 1351590534) ^ ((*(v46 + 4 * v74) ^ 0x26BC089F) - 649857183) ^ ((*(v46 + 4 * v74) ^ 0x58FE345F) - 1493054559)) + 1444679079;
  v117 = *(v46 + 4 * LODWORD(STACK[0x7F0]));
  v118 = v46;
  v119 = v90 + ((725634795 * (((v117 ^ 0xDA6811DC) + 630713892) ^ ((v117 ^ 0xCE05892A) + 838498006) ^ ((v117 ^ 0xC55FF94C) + 983566004)) + 260465086) ^ 0x62ECD2D2 ^ ((1451269590 * (((v117 ^ 0x4267982D) + 1033398227) ^ ((v117 ^ 0xED1FEBB2) + 316675150) ^ ((v117 ^ 0x7E4A1225) + 28700123)) + 520930172) | 0xA74E6B4E)) + (v116 ^ (STACK[0x6CC] & 0xFCFDF0DB ^ 0x18E9900A | v90 & 0xFCFDF0DB) ^ (4 * v116 * v116));
  v120 = STACK[0x840];
  v121 = STACK[0x840] & 0xF2F2F2F2 ^ 0x79797979;
  v122 = STACK[0x6D0];
  v123 = (v121 & v87) << STACK[0x6D0];
  v124 = v115 & v121;
  STACK[0x878] = v89;
  v125 = v123 + (v124 >> v89);
  LODWORD(v123) = *(v118 + 4 * LODWORD(STACK[0x928])) ^ (((v78 & v87) << v122) | ((v115 & v78) >> v89)) ^ v98;
  v126 = v119 + 1;
  v127 = v123 ^ (v119 + 1) ^ v103;
  v128 = *(v52 + ((v51 >> 22) & 0x3FC)) ^ -*(v52 + ((v51 >> 22) & 0x3FC)) ^ (v93 - (v93 ^ *(v52 + ((v51 >> 22) & 0x3FC))));
  v129 = STACK[0x7B8];
  LODWORD(v123) = ((v121 & v114) << STACK[0x7B8]) ^ 0xB37F6B26 ^ v107;
  v130 = STACK[0x890];
  v131 = STACK[0x748];
  LODWORD(v123) = ((v121 & STACK[0x890]) >> STACK[0x748]) ^ v123;
  v132 = *(v52 + 4 * BYTE2(v41));
  v133 = *(v52 + 4 * STACK[0x930]);
  v134 = v120 & 0xF076A788;
  LODWORD(STACK[0x440]) = v93;
  v135 = v123 ^ v126 ^ (v128 + v93);
  v136 = v111 + v109;
  HIDWORD(v137) = v132;
  LODWORD(v137) = v132;
  v138 = STACK[0x768] ^ 0xF83B53C4;
  LODWORD(v123) = (v133 << (BYTE1(v132) & 8) << (BYTE1(v132) & 8 ^ 8)) + HIBYTE(v133);
  v139 = STACK[0x768] & 0x79797979;
  v140 = (v137 >> 8) ^ v108 & 0xFDFFFFFF ^ v123;
  v141 = (2 * v139) ^ 0x79797979;
  v142 = v140 ^ v136;
  v143 = (STACK[0x718] << STACK[0x710]) + (STACK[0x718] >> v104);
  v144 = (v141 & v130) >> v131;
  if (v112)
  {
    v143 = STACK[0x718];
  }

  v145 = v142 & 0x40000;
  if ((v142 & 0x40000 & v143) != 0)
  {
    v145 = -v145;
  }

  v146 = v122;
  v147 = v90 ^ v121 ^ (v121 & ~v115 | v124);
  v148 = STACK[0x818];
  v149 = v147 ^ v125 ^ v142 & 0xFFFBFFFF ^ (v145 + v143);
  v150 = (v141 << ((~(2 * v139) + v139) & 3 | STACK[0x768] & 1)) ^ v141;
  v151 = v141 ^ (8 * v141) ^ v149 & v150 ^ (v149 | v150);
  LOBYTE(v150) = (~(2 * STACK[0x7D8]) + STACK[0x7D8]) | STACK[0x7D8];
  LODWORD(STACK[0x430]) = v113;
  LODWORD(STACK[0x688]) = v126;
  v152 = ((v141 & v87) << v122) ^ v113 ^ v144 ^ v126;
  v153 = v114;
  v154 = v152 ^ STACK[0x668];
  v155 = STACK[0x878];
  v156 = v138 + v134 + 130329660;
  v157 = 1377 * ((v150 ^ BYTE2(v127) ^ 0xC6) - ((2 * (v150 ^ BYTE2(v127) ^ 0xC6)) & 0xB2) + 89) + 5554818;
  v158 = *(STACK[0x900] + v157 - 4864 * (((7064091 * v157) >> 32) >> 3));
  v159 = 1377 * ((59 * v151) ^ 0x1F);
  v160 = *(STACK[0x900] + v159 + 3110643 - 4864 * (((7064091 * (v159 + 3110643)) >> 32) >> 3));
  v161 = *(STACK[0x900] + 1377 * (BYTE1(v154) ^ 0xB0) + 2400111 - 4864 * (((7064091 * (1377 * (BYTE1(v154) ^ 0xB0u) + 2400111)) >> 32) >> 3));
  v162 = ((2 * v158) & 0x24 ^ 4) + (v158 ^ 0x70u);
  LOBYTE(v158) = ((((v161 ^ 2) - 2) ^ ((v161 ^ 0x2A) - 42) ^ ((v161 ^ 0x5E) - 94)) - 44) ^ (((2 * v161) ^ 0xEC) - 74);
  v163 = STACK[0x868];
  v164 = *(STACK[0x868] + 4 * BYTE2(v151));
  v165 = *(STACK[0x868] + 4 * BYTE1(v135));
  HIDWORD(v167) = *(STACK[0x868] + 4 * (v154 >> (((v159 - 13) ^ (12 - v159)) & 0x10)));
  LODWORD(v167) = HIDWORD(v167);
  v166 = v167 >> 16;
  HIDWORD(v167) = v165;
  LODWORD(v167) = v165;
  v168 = v167 >> 24;
  v169 = v166 - (v168 ^ (v165 << 8)) + HIBYTE(v165);
  v170 = *(STACK[0x868] + 4 * (((2 * v158) & 0xCC ^ 0xC0) + (v158 ^ 0x86)));
  HIDWORD(v167) = v169 ^ HIBYTE(v165);
  LODWORD(v167) = v169 ^ v168;
  v171 = v167 >> 7;
  STACK[0x840] = v127;
  v172 = LODWORD(STACK[0x800]);
  v173 = v172 >> STACK[0x880];
  v174 = (LODWORD(STACK[0x848]) ^ (LODWORD(STACK[0x848]) >> 6) ^ STACK[0x7B0]) + (LODWORD(STACK[0x848]) ^ (LODWORD(STACK[0x848]) >> 6)) - 2 * ((LODWORD(STACK[0x848]) ^ (LODWORD(STACK[0x848]) >> 6) ^ STACK[0x7B0]) & (LODWORD(STACK[0x848]) ^ (LODWORD(STACK[0x848]) >> 6)));
  v175 = LODWORD(STACK[0x870]) ^ __ROR4__(v164, 16) ^ __ROR4__(v170, 24) ^ __ROR4__(*(v163 + ((v127 >> 22) & 0x3FC)), 8) ^ *(v163 + 4 * v135);
  v176 = STACK[0x618];
  LODWORD(STACK[0x428]) = v175;
  v177 = v174 + v173 - 2 * (v174 & v173);
  v178 = v175 ^ v176 ^ (2 * ((v175 ^ v176) & v148));
  v179 = v178 & v115;
  STACK[0x718] = v179;
  v180 = ((v179 >> v155) + ((v178 & v153) << v129)) ^ LODWORD(STACK[0x940]);
  STACK[0x8F8] = v115;
  v181 = v115 >> v155;
  v182 = (v180 & (v87 << v146)) >> v146;
  STACK[0x870] = v181;
  v183 = v180 & v181;
  STACK[0x408] = v183;
  v184 = (v182 + (v183 << v155)) ^ (2 * ((v182 + (v183 << v155)) & v156));
  STACK[0x420] = v174;
  HIDWORD(v167) = v156 & (2 * (v184 & v156));
  LODWORD(v167) = HIDWORD(v167);
  v185 = __ROR4__((v167 >> 8) & 0xFF7FFFFF ^ __ROR4__(v184, 9) ^ 0xD06D5300, 23) ^ 0xDAA601A0;
  STACK[0x848] = (v172 << v174) | v173;
  STACK[0x7F0] = v162;
  v186 = LODWORD(STACK[0x830]) ^ v176 ^ __ROR4__(*(v163 + 4 * v162), 16);
  STACK[0x6A8] = v151;
  v187 = v186 ^ __ROR4__(*(v163 + 4 * BYTE1(v151)), 24) ^ *(v163 + 4 * v154);
  LODWORD(v167) = __ROR4__(*(v163 + ((v135 >> 22) & 0x3FC)), 8);
  v188 = (v187 ^ v167) & v156;
  STACK[0x928] = v188;
  LODWORD(v188) = 2 * v188;
  LODWORD(STACK[0x6C0]) = v188;
  LODWORD(STACK[0x418]) = v187 ^ v167;
  LODWORD(v188) = v188 ^ v187 ^ v167;
  LODWORD(STACK[0x810]) = v188;
  LODWORD(v188) = v188 % 0x101 + 1546;
  LODWORD(STACK[0x410]) = v188;
  LODWORD(v163) = 1079 * v188 - 2120 * ((2025928 * (1079 * v188)) >> 32);
  LODWORD(STACK[0x768]) = v156;
  v189 = v185 ^ LODWORD(STACK[0x8E8]);
  LODWORD(STACK[0x400]) = v163;
  v190 = *(STACK[0x910] + 4 * v163);
  HIDWORD(v167) = v171 ^ 0x6D8F8451;
  LODWORD(v167) = v171 ^ 0x6D8F8451;
  LODWORD(STACK[0x930]) = v167 >> 25;
  v191 = (4051 * ((((v160 ^ 0x19 ^ (v160 >> 4) & 3) - 46) | ((v160 ^ 0x19 ^ (v160 >> 4) & 3) + 48)) == 0)) ^ LODWORD(STACK[0x8F0]);
  STACK[0x6F8] = 725634795 * (((v190 ^ 0x328C0DC8) - 848039368) ^ ((v190 ^ 0xBFB59A06) + 1078617594) ^ ((v190 ^ 0x5C0BF674) - 1544287860)) + 260465086;
  v192 = *(STACK[0x948] + 8 * v191);
  v193 = STACK[0x748];
  LODWORD(STACK[0x8F0]) = v177;
  STACK[0x708] = v177 ^ v173;
  return v192();
}

uint64_t sub_4A7E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v16) = 3013 * v8 + 4658098;
  LODWORD(v16) = HIDWORD(v16);
  v15 = v16 >> 11;
  HIDWORD(v16) >>= 11;
  LODWORD(v16) = v15;
  HIDWORD(v16) = v16 >> 18;
  LODWORD(v16) = HIDWORD(v16);
  v17 = *(v13 + ((v16 >> 3) + 3013) % 0x1188);
  v18 = 9002 * (v17 | ((v17 < 0x7D) << 8)) + 21955878 - ((((9002 * (v17 | ((v17 < 0x7D) << 8)) + 21955878) * v10) >> 32) >> 12) * a1;
  v19 = v12 + ((v9 + 1059) ^ 0x2609) * v8 - ((((v12 + ((v9 + 1059) ^ 0x2609u) * v8) * v10) >> 32) >> 12) * a1;
  v20 = *(a8 + 4 * ((v18 ^ 0x3A77D7D9E6FFDB0ELL) + ((2 * v18) & 0x361C)) + 0x1620A098640093C8);
  v21 = 3013 * ~(v20 >> 8) + 10093550;
  LODWORD(v18) = v20;
  v22 = *(v13 + v21 - 4488 * (((30623653 * v21) >> 32) >> 5));
  v23 = *(v13 + 3013 * (BYTE2(v20) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v20) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v24 = *(v13 + (3013 * (((HIBYTE(v20) ^ 0x8A782E3) + 640223524) ^ ((HIBYTE(v20) ^ 0xF188C50B) - 553234740) ^ ((HIBYTE(v20) ^ 0xF92F47DC) - 677262307)) + 216320357) % 0x1188);
  v25 = v24 ^ 2;
  v26 = v23 & 0xF9 ^ 0x3F;
  v27 = v24 & 0x63 ^ 0xF0;
  LOBYTE(v20) = v23 ^ (2 * ((v23 ^ 2) & (2 * ((v23 ^ 2) & (2 * ((v23 ^ 2) & (2 * ((v23 ^ 2) & (2 * ((v23 ^ 2) & (2 * (((2 * (v23 & 3)) ^ 0x7A) & (v23 ^ 2) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v28 = v22 & 0xAD ^ 0x15;
  v29 = (((2 * (v22 & 3)) ^ 0x2E) & 2 | v28) ^ ((2 * (v22 & 3)) ^ 0x2E) & v22;
  v30 = *(v13 + (3013 * (((v18 ^ 0x4A02F09B) + 1583991445) ^ ((v18 ^ 0x6212842B) + 1987690021) ^ ((v18 ^ 0x28107446) + 1014713930)) - 1366498420) % 0x1188);
  LOBYTE(v15) = (v30 & 0x83 | 0x2C) ^ v30 & 0x58;
  v31 = ((v20 ^ 0xF9) << 8) | (((v24 ^ (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * ((v24 ^ 2) & (2 * v24) & 6 ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x63) << 16);
  v32 = v30 ^ (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  *(v11 + 4 * ((v19 ^ 0x2BFFF7FCF56FEAAFLL) + ((2 * v19) & 0x555E)) + 0x5000200C2A405544) = ((((((v22 ^ (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v28 & 0xFD | (2 * (v29 & 1))) ^ v22 & (2 * v29))) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x24B3FE) & ~v31 | v31 & 0xDB4C00) << 8) ^ 0x793C73D3) & (v32 ^ 0xFFFFFF0C) | v32 & 0x2C) ^ 0x69CBDF2D;
  return (*(v14 + 8 * ((191 * (((v8 + 1 - v9) | (v9 - (v8 + 1))) >= 0)) ^ (v9 | 0x65B))))();
}

uint64_t sub_4ACBC(char a1, uint64_t a2)
{
  *(v3 + 284) = 0;
  *(v3 + 276) = 0;
  *(v3 + 256) = 0;
  *(v3 + 296) = 0;
  *(v3 + 328) = 0x100000000;
  return (*(a2 + 8 * (((*(v3 + 340) == (a1 + v2 - 101)) * (v4 + ((v2 - 8672788) & 0x79FF7EF7) - 272)) ^ v2)))();
}

uint64_t sub_4AD24(uint64_t a1, int a2)
{
  *(v2 + 56) = **(v2 + 680);
  LODWORD(STACK[0xAFC]) = **(v2 + 600);
  v4 = STACK[0x360];
  return (*(v3 + 8 * (((*(v2 + 1424) <= *(v2 + 120)) * ((a2 + 56) ^ 0x81)) | a2)))();
}

uint64_t sub_4ADF0()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xE9A)))(v0);
  v4 = STACK[0x8B0];
  v5 = STACK[0x8A0];
  v6 = STACK[0x948];
  *(STACK[0x8C0] + 112) = v3;
  v7 = *(v6 + 8 * (((((v1 + 836) | 0xC) + ((v1 + 1194280224) & 0xB8D0BEDE) - 4317) * (v3 == 0)) | v1));
  v8 = LODWORD(STACK[0x8D0]);
  return v7();
}

uint64_t sub_4AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v57 = *(v54 + 272) + 424;
  *(v53 + 16) = a52;
  *v53 = v57;
  *(v53 + 8) = v52 - 1520549201 * ((((2 * (v55 - 208)) | 0x9E8BE57A) - (v55 - 208) + 817499459) ^ 0xC22C6928) - 72;
  v58 = (*(v56 + 8 * (v52 ^ 0x3B5)))(v55 - 208);
  v59 = *(v53 + 24);
  return (*(STACK[0x948] + 8 * v52))(v58);
}

uint64_t sub_4AF28()
{
  *(v4 - 116) = v2 - 434465113 * ((v4 - 128) ^ 0xF5A22A5F) - 812;
  *(v4 - 128) = v3;
  v5 = (*(v1 + 8 * (v2 ^ 0xC94)))(v4 - 128);
  v6 = *(v4 - 120);
  *(v0 + 428) = v6 ^ 0xF9;
  return (*(v1 + 8 * ((215 * ((v6 & ((v2 - 18) ^ 0x6BA)) != 248)) ^ v2)))(v5);
}

uint64_t sub_4AFF4()
{
  v3 = (*(v2 + 8 * (v1 + 1340)))();
  v4 = STACK[0x948];
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_4B148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LOBYTE(STACK[0x107F]) = v6;
  v16 = ((a5 - 912) ^ 0x7CA62CCE) + v5;
  v17 = v16 < 0x808651DC;
  v18 = v16 > v12 + 1419237922;
  if ((v12 + 1419237922) < 0x808651DC != v17)
  {
    v18 = v17;
  }

  if (v18)
  {
    v5 = v7;
  }

  LODWORD(STACK[0x1080]) = v5;
  v19 = (v9 + v12 + 5);
  v20 = v13 + v19;
  v21 = v14 + v19 - 5;
  v23 = v20 > a1 + v10 || v21 > v8 + v11;
  return (*(v15 + 8 * (((((a5 + 1826935588) & 0x931B2BFF) - 599) * v23) ^ a5)))();
}

uint64_t sub_4B254()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xB49)))();
  v4 = STACK[0x948];
  *(v0 + 112) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_4B2D8()
{
  *(v1 + 344) = STACK[0x370];
  *(v1 + 64) = &STACK[0xF28];
  LODWORD(STACK[0xD10]) = -180615925;
  return (*(v2 + 8 * v0))(624788556);
}

void sub_4B310(uint64_t a1)
{
  v1 = *a1 - 1600728529 * ((a1 & 0xF8E6E6B7 | ~(a1 | 0xF8E6E6B7)) ^ 0x822CD309);
  v2 = 1600728529 * (v4 ^ 0x8535CA41);
  v5 = *(a1 + 8);
  v4[0] = v2 ^ 0x940FE5FB;
  v4[2] = v2 ^ (v1 + 2065905125);
  v3 = *(&off_18D8F0 + v1 - 1208) - 939039246;
  (*&v3[8 * v1 + 11344])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_4B4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 124) = -1038737430 - 1183051249 * ((((v22 - 128) | 0x1991BC93) - ((v22 - 128) & 0x1991BC93)) ^ 0xFC726A4F) + v21 + 1048;
  *(v22 - 120) = &a19;
  v23 = (*(v20 + 8 * (v21 + 2275)))(v22 - 128);
  *(v19 + 76) = *(v22 - 128);
  return (*(v20 + 8 * (v21 - 51)))(v23);
}

uint64_t sub_4B5C0()
{
  LODWORD(STACK[0x830]) = v0;
  v1 = 21 * (v0 ^ 0x3DA);
  v2 = STACK[0x498];
  v3 = STACK[0x498];
  v4 = v3 >> (v0 + 84);
  LODWORD(STACK[0x850]) = v1;
  v5 = STACK[0x828];
  v6 = *(STACK[0x828] + 4 * ((v1 - 375) & v2));
  LODWORD(v2) = *(STACK[0x828] + 4 * BYTE1(v3));
  v7 = STACK[0x900];
  v8 = *(STACK[0x828] + 4 * BYTE2(v3));
  HIDWORD(v9) = v2 ^ 0x61BA;
  LODWORD(v9) = v2 ^ 0xD1320000;
  LODWORD(v2) = v9 >> 16;
  HIDWORD(v9) = v6 ^ 0x3261BA;
  LODWORD(v9) = v6 ^ 0xD1000000;
  v10 = v9 >> 24;
  HIDWORD(v9) = v8 ^ 0xBA;
  LODWORD(v9) = v8 ^ LODWORD(STACK[0x8F0]);
  v11 = *(STACK[0x828] + 4 * ((*(STACK[0x900] + (1377 * (v4 ^ 0x60) + 5554818 - 4864 * ((226050911 * ((1377 * (v4 ^ 0x60) + 5554818) >> 8)) >> 32))) ^ 0xE2) - 110)) ^ v2 ^ (((v9 >> 8) ^ v10) - 785227334 - ((2 * ((v9 >> 8) ^ v10)) & 0xA264C374));
  v12 = STACK[0x848];
  v13 = *(STACK[0x828] + 4 * BYTE2(v12));
  HIDWORD(v9) = v13 ^ 0xBA;
  LODWORD(v9) = v13 ^ LODWORD(STACK[0x8F0]);
  v14 = v9 >> 8;
  v15 = *(STACK[0x828] + 4 * BYTE1(v12));
  HIDWORD(v9) = v15 ^ 0x61BA;
  LODWORD(v9) = v15 ^ 0xD1320000;
  v16 = (v9 >> 16) ^ v14;
  v17 = *(STACK[0x828] + 4 * STACK[0x848]);
  HIDWORD(v9) = v17 ^ 0x3261BA;
  LODWORD(v9) = v17 ^ 0xD1000000;
  v18 = 1377 * ((59 * BYTE3(STACK[0x848])) ^ 0xF1) + 5187159;
  LOBYTE(v18) = *(STACK[0x900] + v18 - 4864 * (((7064091 * v18) >> 32) >> 3));
  LOBYTE(v18) = (((v18 ^ 0x12) - 18) ^ ((v18 ^ 0x83) + 125) ^ ((v18 ^ 0xE7) + 25)) + 90;
  v19 = ((v16 ^ (v9 >> 24)) - 785227334 - ((2 * (v16 ^ (v9 >> 24))) & 0xA264C374)) ^ *(STACK[0x828] + 4 * ((v18 ^ ((4 * v18) | 0x80) ^ 0xF0) + 48));
  LODWORD(STACK[0x730]) = v11;
  LODWORD(STACK[0x720]) = v19;
  v20 = v11 ^ 0x5EC8AA78 ^ v19;
  v21 = STACK[0x778];
  v22 = *(STACK[0x778] + 1);
  v23 = STACK[0x7E0];
  v24 = STACK[0x7E0];
  STACK[0x7E0] = STACK[0x7E0];
  v25 = *v21;
  v26 = v21;
  v27 = STACK[0x820];
  LODWORD(v21) = *(STACK[0x820] + BYTE2(v23));
  v28 = STACK[0x7D0];
  v29 = STACK[0x7D0] & 0x1000;
  LODWORD(STACK[0x7D0]) = STACK[0x7D0];
  v30 = v28 & 0xFFFFEFFF ^ ((v25 ^ v22) << 24) ^ (v29 | ((*(v27 + BYTE1(v23)) ^ 0x76) << 16)) ^ (*(v27 + (v23 >> 24)) ^ 0x76 | ((v21 ^ 0x76) << 24) | ((*(v27 + v23) ^ 0x76) << 8));
  v31 = v30 ^ LODWORD(STACK[0x598]);
  v32 = v31 ^ LODWORD(STACK[0x6F0]);
  v33 = 1377 * (((((v25 ^ 0xBC) + 68) ^ ((v25 ^ 0x69) - 105) ^ ((v25 ^ 0xA3) + 93)) - 28) ^ 0xF1) + 2044845;
  v34 = v24 ^ 0x351AA646 ^ v32;
  v35 = (v20 - 1002322606);
  v36 = *(v7 + v33 - 4864 * (((1766023 * v33) >> 32) >> 1));
  v37 = STACK[0x2E8];
  LODWORD(v23) = 1377 * ((LODWORD(STACK[0x2E8]) + 59 * (((*(v27 + BYTE2(v34)) ^ 0x55) - 85) ^ ((*(v27 + BYTE2(v34)) ^ 0x78) - 120) ^ ((*(v27 + BYTE2(v34)) ^ 0x5B) - 91))) ^ 0x1F) + 3110643;
  v38 = *(v7 + v23 - 4864 * (((7064091 * v23) >> 32) >> 3)) ^ ((((173 - v20) ^ v35) & 0xFFFFFF9B) - ((2 * ((173 - v20) ^ v35)) & 0x24) + 118);
  v39 = (49 * (v36 ^ 0x76)) ^ 0x39 ^ (LODWORD(STACK[0x3F8]) + 98 * (((v36 ^ 1) - 1) ^ ((v36 ^ 0x47) - 71) ^ ((v36 ^ 0x30) - 48)));
  v40 = ((v38 ^ 0xF6 ^ (v38 >> 4) & 3) + 48) ^ v26[2] ^ (((v39 >> 5) | (8 * v39)) - ((2 * ((v39 >> 5) | (8 * v39))) & 0xEC) + 118);
  LOBYTE(v39) = (*(v7 + 1377 * (*(v27 + (v34 >> 24)) ^ 0xB4) + 980424 - 4864 * (((1766023 * (1377 * (*(v27 + (v34 >> 24)) ^ 0xB4u) + 980424)) >> 32) >> 1)) ^ 0x76) - (*(v27 + (v34 >> 24)) ^ 0x72);
  v41 = ((*(v27 + BYTE1(v34)) ^ 0x76) << 16) | (v40 << 24);
  STACK[0x700] = v24 ^ 0x46u ^ v32;
  v42 = v41 & 0xFFFFFF00 | ((v39 ^ 0xBA) - 110) | ((*(v27 + (v24 ^ 0x46u ^ v32)) ^ 0x76) << 8);
  LODWORD(STACK[0x460]) = v32;
  v43 = v32 & 0xDFFFFFFF ^ 0xC38E7167 ^ (1886417008 - (v32 & 0x20000000));
  LODWORD(v23) = v37 + 59 * (((v25 ^ 0xFFFFFFF0) + 16) ^ ((v25 ^ 0x2B) - 43) ^ ((v25 ^ 0xFFFFFFAD) + 83));
  LODWORD(v23) = *(v7 + 1377 * (v23 ^ 0x66) + 6292890 - 4864 * (((7064091 * (1377 * (v23 ^ 0x66u) + 6292890)) >> 32) >> 3)) ^ ((v23 ^ 0x63) - (v23 ^ 0xFFFFFFB1) - ((2 * ((v23 ^ 0x63) - (v23 ^ 0xFFFFFFB1))) & 0xFFFFFFEC) + 118) ^ 0xFFFFFFD9;
  LODWORD(v23) = (v23 - ((2 * v23) & 0xFFFFFFEC) + 70) ^ v26[4];
  v44 = STACK[0x928];
  v45 = WORD1(STACK[0x928]);
  LODWORD(STACK[0x940]) = STACK[0x928];
  STACK[0x8F8] = BYTE1(v44);
  STACK[0x910] = v44 >> 22;
  LODWORD(STACK[0x670]) = v30;
  v46 = v42 ^ v30;
  LODWORD(STACK[0x580]) = v46;
  v46 ^= 0x623B6850u;
  LODWORD(STACK[0x688]) = v31;
  LODWORD(STACK[0x590]) = v46 ^ v31;
  v47 = v46 ^ v31 ^ 0x70707070u;
  STACK[0x3A8] = v34;
  LODWORD(STACK[0x458]) = v47 ^ v43;
  LODWORD(v44) = v47 ^ v43 ^ v34;
  LODWORD(v21) = 1377 * (BYTE3(v44) ^ 0xA8) + 2756754 - 4864 * (((7064091 * (1377 * (BYTE3(v44) ^ 0xA8) + 2756754)) >> 32) >> 3);
  v48 = v44 ^ 0xE4DFCF01;
  LODWORD(v23) = (v23 - ((2 * v23) & 0xEC) + 118) ^ *(v27 + BYTE2(v48));
  LOBYTE(v44) = ((*(v7 + v21) ^ 0xDE) + 34) ^ ((*(v7 + v21) ^ 0x49) - 73) ^ ((*(v7 + v21) ^ 0xE1) + 31);
  STACK[0x5B0] = v48;
  v49 = v46 ^ (v23 << 24);
  LODWORD(v23) = (*(v27 + v48) ^ 0x76) << 8;
  v50 = v46 & v23 | *(v27 + (((v44 - 88) ^ 0xCC) + 102)) ^ 0x76;
  LODWORD(STACK[0x528]) = v49;
  LODWORD(v23) = (v49 | v23) ^ v50;
  STACK[0x6E0] = BYTE1(v48);
  v51 = *(v27 + BYTE1(v48)) ^ 0x76;
  LODWORD(STACK[0x4E0]) = v23;
  LODWORD(v21) = v23 ^ (v51 << 16);
  v52 = v21 ^ v43;
  STACK[0x548] = v48;
  v53 = v21 ^ v43 ^ v48 ^ 0x704B5B95;
  v54 = (4 * (*(v27 + (v53 >> ((v23 ^ v43 ^ v48 ^ 0x95) & 0x18) >> ((v23 ^ v43 ^ v48 ^ 0x95) & 0x18 ^ 0x18))) ^ 0x76)) ^ __ROR4__(v21 ^ ((v25 ^ v26[8]) << 24), 30);
  STACK[0x600] = BYTE1(v53);
  v55 = *(v27 + BYTE1(v53)) ^ 0x76;
  STACK[0x608] = BYTE2(v53);
  v56 = (v55 << 16) | ((*(v27 + BYTE2(v53)) ^ 0x76) << 24);
  STACK[0x5E8] = v53;
  v57 = (v56 | ((*(v27 + v53) ^ 0x76) << 8)) ^ __ROR4__(v54 ^ 0x9D84272B, 2);
  STACK[0x928] = v47;
  LODWORD(STACK[0x5C0]) = v21;
  v58 = v21 ^ v47;
  LODWORD(v21) = v57 ^ 0xE76109CA ^ v21 ^ v47;
  LODWORD(STACK[0x930]) = v21;
  LODWORD(STACK[0x448]) = v52;
  STACK[0x668] = v53;
  v59 = v21 ^ v52 ^ 0x127033C5 ^ v53;
  v60 = v21 ^ v52 ^ 0x127033C5;
  LODWORD(v53) = 1377 * ((59 * BYTE2(v59)) ^ 0x1F) + 3110643;
  LODWORD(v53) = *(v7 + v53 - 4864 * (((7064091 * v53) >> 32) >> 3));
  LOBYTE(v52) = (*(v7 + 1377 * (BYTE1(v59) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (BYTE1(v59) ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - (BYTE1(v59) ^ 4);
  LODWORD(v53) = *(v27 + (v59 >> 24)) ^ 0x76 | ((((v26[16] ^ v25) - ((2 * (v26[16] ^ v25)) & 0xEC) + 118) ^ *(v27 + ((v53 ^ 0x6C ^ (121 - (((v53 >> 3) & 4 | (v53 >> 4) & 3) ^ 4))) + 48))) << 24);
  STACK[0x498] = v59;
  LODWORD(v48) = 1377 * (*(v27 + v59) ^ 0x1F) + 1692333;
  LODWORD(v53) = v53 & 0xFFFF00FF | ((*(v27 + ((v52 ^ 0xBA) - 110)) ^ 0x76) << 16) | (((*(v7 + v48 - 4864 * (((1766023 * v48) >> 32) >> 1)) ^ 0x81) - 110) << 8);
  LODWORD(v48) = v57 ^ 0xE76109CA ^ v53;
  v61 = v58 ^ 0x94949494;
  STACK[0x5C8] = v61;
  v62 = v61 ^ v53;
  STACK[0x7F8] = v60;
  v63 = v60 ^ v62;
  STACK[0x698] = v63;
  STACK[0x780] = v59;
  v64 = v63 + v59 - 2 * (v59 & v63);
  v65 = *(v7 + 1377 * (v25 ^ 0x9D) + 3822552 - 4864 * (((7064091 * (1377 * (v25 ^ 0x9D) + 3822552)) >> 32) >> 3));
  LOBYTE(v53) = ((v65 ^ 0xDD) + 35) ^ ((v65 ^ 0xE8) + 24);
  v66 = (-38 - 9 * (((v65 ^ 0x68) - 104) ^ ((v65 ^ 0x5D) - 93) ^ ((v65 ^ 0x43) - 67))) ^ ((((38 * ((v53 ^ ((v65 ^ 0x43) - 67)) - 84)) ^ 0x20) + 10 * ((v53 ^ ((v65 ^ 0x43) - 67)) - 84)) | 0xFFFFFFC0) ^ 0x1F;
  LODWORD(v23) = v66 + (v25 & 0x92 ^ 0xFFFFFF90 | v25 & 0x92 ^ 2);
  v67 = (v23 - 2 * (v23 & 0x77 ^ v66 & 1) + 118) ^ v26[32];
  STACK[0x640] = v64;
  v68 = ((*(v27 + v64) ^ 0x76) << 8) | (v67 << 24);
  LOBYTE(v23) = *(v7 + 1377 * (BYTE1(v64) ^ 0x4C) + 2756754 - 4864 * (((7064091 * (1377 * (BYTE1(v64) ^ 0x4Cu) + 2756754)) >> 32) >> 3));
  STACK[0x628] = v64 >> 24;
  v69 = v68 | *(v27 + (v64 >> 24)) ^ 0x76 | ((*(v27 + ((((((v23 ^ 0x48) - 72) ^ ((v23 ^ 0x95) + 107) ^ ((v23 ^ 0xAB) + 85)) - 88) ^ 0xCC) + 102)) ^ 0x76) << 16);
  LODWORD(v23) = *(v27 + BYTE2(v64)) ^ 0x76;
  LODWORD(STACK[0x538]) = v48;
  v70 = v48 ^ (v23 << 24) ^ v69;
  STACK[0x678] = v62;
  if (((v70 ^ v62) & 0x100000) != 0)
  {
    v71 = -1048576;
  }

  else
  {
    v71 = 0x100000;
  }

  v72 = v71 + (v70 ^ v62);
  v73 = v26[64] ^ v25;
  v74 = v70 ^ v60;
  v75 = v70 ^ v60 ^ 0xF6AFFCC4;
  STACK[0x810] = v75;
  v76 = v75 ^ v64;
  v77 = (v70 ^ v60) ^ 0xC4u ^ v64;
  STACK[0x550] = v77;
  v78 = (v73 << 24) | ((*(v27 + v77) ^ 0x76) << 8);
  v79 = *(v27 + BYTE1(v76));
  STACK[0x560] = v76 >> 24;
  v80 = *(v27 + (v76 >> 24)) ^ 0x76 | ((v79 ^ 0x76) << 16);
  STACK[0x750] = v76;
  v81 = 1377 * ((59 * BYTE2(v76)) ^ 0x1F) + 3110643;
  v82 = v81 - 9728 * (((7064091 * v81) >> 32) >> 4);
  if (v82 >> 8 >= 0x13)
  {
    v82 -= 4864;
  }

  v83 = v80 | ((*(v27 + ((((*(v7 + v82) ^ 0xED) - ((2 * (*(v7 + v82) ^ 0xED)) & 0xEC) - 10) ^ (((*(v7 + v82) & 0xC0 ^ *(v7 + v82) ^ 0xED) & 0xF0) >> 4) ^ 0xC) + 48)) ^ 0x76) << 24);
  LODWORD(STACK[0x4A0]) = v70;
  v84 = v83 ^ v78 ^ v70;
  v85 = 1377 * (v26[128] ^ 0xC6) + 2400111;
  v86 = *(v7 + v85 - 4864 * (((7064091 * v85) >> 32) >> 3));
  v87 = ((2 * v86) & 0xFFFFFFBC ^ 0xFFFFFFAC) + (v86 ^ 0x28);
  v88 = (v87 ^ (2 * v87 - 6) ^ 0xFFFFFFE0) - ((2 * (v87 ^ (2 * v87 - 6) ^ 0xFFFFFFE0) - 52) & 0xEC);
  LODWORD(STACK[0x4A8]) = v72;
  LODWORD(STACK[0x4B0]) = v72 ^ v84;
  v89 = v72 ^ v84 ^ 0x100000;
  STACK[0x7F0] = v89;
  STACK[0x818] = v64;
  v90 = v89 ^ v64;
  STACK[0x5B8] = BYTE2(v90);
  v91 = 1377 * (*(v27 + BYTE2(v90)) ^ 0x9D) + 3822552;
  v92 = *(v7 + v91 - 4864 * (((7064091 * v91) >> 32) >> 3));
  STACK[0x6A8] = v84;
  v93 = *(v27 + BYTE1(v90));
  STACK[0x578] = (v72 ^ v84 ^ v64);
  v94 = ((((v93 ^ 0x76) << 16) | ((*(v27 + (v72 ^ v84 ^ v64)) ^ 0x76) << 8) | *(v27 + ((v72 ^ v84 ^ 0x100000 ^ v64) >> 24)) ^ 0x76 | (((16 * ((3 * ((((v92 ^ 9) + 39) ^ ((v92 ^ 0xD) + 3)) ^ ((v92 ^ 2) + 46))) & 3)) ^ (-7 - 9 * (((v92 ^ 0xFFFFFFE9) + 23) ^ ((v92 ^ 0x28) - 40) ^ ((v92 ^ 0xFFFFFFB7) + 73)) - ((46 * ((((v92 ^ 0x4D) + 51) ^ ((v92 ^ 7) + 57)) ^ ((v92 ^ 0x3C) + 4)) + 52) & 0x3E)) ^ 0xE0) << 24)) - 1845493760) ^ ((((v88 - 36) ^ v25) << 24) + v84 - 2 * ((((v88 - 36) ^ v25) << 24) & v84));
  STACK[0x7D8] = v94;
  v95 = v94 ^ v74;
  STACK[0x7C8] = v95;
  v96 = v95 ^ v90;
  STACK[0x8E8] = v96;
  v97 = BYTE2(v96);
  STACK[0x500] = v97;
  LODWORD(v84) = 1377 * (*(v27 + v97) ^ 0x9D) + 3822552;
  v98 = v84 - 9728 * (((7064091 * v84) >> 32) >> 4);
  if (v98 >> 8 >= 0x13)
  {
    v99 = v98 - 4864;
  }

  else
  {
    v99 = v98;
  }

  LODWORD(STACK[0x880]) = v99;
  v100 = v57 ^ 0x11CEF50Eu;
  STACK[0x848] = v100;
  v101 = *(v5 + 4 * BYTE2(v100));
  LODWORD(STACK[0x440]) = v101;
  v102 = (v101 >> 8) ^ 0xD13261;
  LODWORD(STACK[0x860]) = v102;
  v103 = (v102 & 0x6A08) == (((v102 & 0x6A08) - 26088) & 0xFFF8);
  v104 = LODWORD(STACK[0x890]) ^ 0x94949494;
  v105 = 1377 * ((((LODWORD(STACK[0x890]) ^ 0x94949494) >> 24) + 110) ^ 0xE2) + 1334313;
  v106 = (BYTE3(v104) + 110) ^ 0xFFFFFFD9 ^ (((BYTE3(v104) + 110) ^ 0xFFFFFFD9) - 2 * ((((BYTE3(v104) + 110) ^ 0xFFFFFFD9) + 24) & 0x77 ^ ((BYTE3(v104) + 110) ^ 0xFFFFFFD9) & 1) - 114) ^ 0x62 ^ *(v7 + v105 - 4864 * (((1766023 * v105) >> 32) >> 1));
  v107 = __ROR4__(*(v5 + 4 * BYTE2(v104)), 8);
  v108 = STACK[0x5A8];
  v109 = LODWORD(STACK[0x5A8]);
  STACK[0x840] = v109;
  v110 = *(v5 + 4 * BYTE1(v109));
  v111 = (v107 ^ 0xBAD13261) - 785227334 - ((2 * (v107 ^ 0xBAD13261)) & 0xA264C374);
  HIDWORD(v112) = v110 ^ 0x61BA;
  LODWORD(v112) = v110 ^ 0xD1320000;
  LODWORD(STACK[0x808]) = v112 >> 16;
  v113 = *(v5 + 4 * ((v106 >> 5) | (8 * v106)));
  v114 = STACK[0x6E8] ^ 0x94949494;
  v115 = *(v5 + 4 * BYTE1(v114));
  STACK[0x3C8] = v111 ^ v113;
  HIDWORD(v112) = v115 ^ 0x61BA;
  LODWORD(v112) = v115 ^ 0xD1320000;
  v116 = v112 >> 16;
  v117 = *(v5 + 4 * BYTE2(v114));
  v118 = STACK[0x8F0];
  HIDWORD(v112) = v117 ^ 0xBA;
  LODWORD(v112) = v117 ^ LODWORD(STACK[0x8F0]);
  v119 = (v45 + 110);
  LODWORD(STACK[0x798]) = 1377 * (v119 ^ 0xE2) + 1334313 - 4864 * (((1766023 * (1377 * (v119 ^ 0xE2u) + 1334313)) >> 32) >> 1);
  v120 = (v112 >> 8) ^ v116;
  v121 = *(v5 + 4 * v114);
  v122 = 1377 * (((HIBYTE(v121) ^ 0xD1) + 110) ^ 0xDC) + 4834647;
  v123 = *(v7 + v122 - 4864 * (((7064091 * v122) >> 32) >> 3));
  HIDWORD(v112) = v123 ^ 0x16;
  LODWORD(v112) = (v123 ^ 0x60) << 24;
  v124 = v120 ^ ((v112 >> 29) ^ 0x68 | (v121 << 8));
  v125 = STACK[0x6F8];
  v126 = 1377 * (STACK[0x6F8] ^ 0x2F) + 3822552;
  LODWORD(v109) = v126 - 4864 * (((7064091 * v126) >> 32) >> 3);
  LODWORD(STACK[0x630]) = v109;
  LOBYTE(v126) = *(v7 + v109);
  LODWORD(STACK[0x7A0]) = (v124 ^ 0x3261BA00) - 785227334 - 2 * ((v124 ^ 0x3261BA00) & 0x513261BF ^ v124 & 5);
  v127 = *(v5 + 4 * (((9 * (((v126 ^ 0x30) - 48) ^ ((v126 ^ 0xD2) + 46) ^ ((v126 ^ 0x94) + 108)) + 37) ^ (16 * ((3 * (((v126 ^ 0xB) + 37) ^ ((v126 ^ 3) + 29) ^ ((v126 ^ 0xE) + 50))) & 3))) - 110));
  HIDWORD(v112) = v127 ^ 0x3261BA;
  LODWORD(v112) = v127 ^ 0xD1000000;
  v128 = *(STACK[0x648] + 1377 * (BYTE3(v125) ^ 0x46) + 2400111 - 4864 * (((7064091 * (1377 * (BYTE3(v125) ^ 0x46) + 2400111)) >> 32) >> 3));
  LOBYTE(v126) = ((v128 ^ 0x7F) - 127) ^ ((v128 ^ 0x54) - 84) ^ ((v128 ^ 0x5D) - 93);
  v129 = (((v128 ^ 0xFFFFFFA2) + 94) ^ ((v128 ^ 0xFFFFFFF7) + 9) ^ ((v128 ^ 0x23) - 35)) - 47;
  v130 = *(v5 + 4 * ((v125 ^ 0xF6AFFCC4) >> 16));
  v131 = STACK[0x520];
  v132 = *(v5 + 4 * BYTE2(LODWORD(STACK[0x520])));
  v133 = ((v112 >> 24) - 785227334 - ((2 * (v112 >> 24)) & 0xA264C374)) ^ *(v5 + 4 * (((v126 - 44) ^ (v129 << (v129 & 1) << !(v129 & 1)) ^ 0xE0) + 102)) ^ (((v130 ^ 0xD13261BA) >> ((v132 & 8 ^ 8) + (v132 & 8))) | (v130 << 24) ^ 0xBA000000);
  v134 = *(v5 + 4 * ((v125 ^ 0xFCC4) >> 8));
  v135 = HIWORD(v134) ^ 0xD132;
  HIDWORD(v112) = v133 ^ v135;
  LODWORD(v112) = (v135 | (v134 << 16)) ^ 0x61BA0000 ^ v133;
  LODWORD(v109) = (v112 >> 7) ^ 0xB549A1CA;
  LODWORD(STACK[0x858]) = v109;
  STACK[0x790] = v114 >> (v109 & 0x18) >> (v109 & 0x18 ^ 0x18);
  STACK[0x738] = v104;
  v136 = LODWORD(STACK[0x540]) ^ 0x351AA646u;
  STACK[0x6E8] = v136;
  LODWORD(v136) = *(v5 + 4 * v136);
  LODWORD(STACK[0x6F8]) = v136;
  v137 = 1377 * (STACK[0x748] ^ 0x1A ^ (((v104 ^ 2) & 0x12 ^ 0x10 | v104 & 0x12) - (v136 & 0x19 ^ 1 | v136 & 0x19 ^ 0x18)) & 0x3F) + 5915592;
  LOBYTE(v137) = *(v7 + v137 - 4864 * (((7064091 * v137) >> 32) >> 3));
  v138 = STACK[0x748];
  v139 = *(v5 + 4 * BYTE1(v138));
  HIDWORD(v112) = v139 ^ 0x61BA;
  LODWORD(v112) = v139 ^ 0xD1320000;
  v140 = v112 >> 16;
  LODWORD(STACK[0x878]) = (LODWORD(STACK[0x3D0]) | HIBYTE(LODWORD(STACK[0x878]))) ^ LODWORD(STACK[0x7A8]);
  v141 = STACK[0x718] ^ 0x94949494;
  v142 = (*(v7 + 1377 * (v108 ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (v108 ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - (v108 ^ 4);
  v143 = 1377 * (((v108 >> 15) & 0x190 ^ 0x180) + (BYTE2(v108) ^ 0x20A));
  v144 = *(v5 + 4 * ((((*(v7 + v143 - 4864 * (((1766023 * v143) >> 32) >> 1)) ^ 0x76) - (BYTE2(v108) ^ 4)) ^ 0xBA) - 110));
  HIDWORD(v112) = v144 ^ 0xBA;
  LODWORD(v112) = v144 ^ v118;
  LODWORD(STACK[0x7A8]) = v112 >> 8;
  LODWORD(v112) = __ROR4__(*(v5 + 4 * ((v142 ^ 0xBA) - 110)), 24);
  LODWORD(STACK[0x788]) = (v112 ^ 0x3261BAD1) - 785227334 - ((2 * (v112 ^ 0x3261BAD1)) & 0xA264C374);
  v145 = *(v5 + 4 * BYTE2(v138));
  HIDWORD(v112) = v145 ^ 0xBA;
  LODWORD(v112) = v145 ^ v118;
  LODWORD(v138) = *(v5 + ((v138 >> 22) & 0x3FC)) ^ v140 ^ ((v112 >> 8) - 785227334 - ((2 * (v112 >> 8)) & 0xA264C374));
  v146 = *(v5 + 4 * ((((((v137 ^ 0x90) + 112) ^ ((v137 ^ 0x94) + 108) ^ ((v137 ^ 0x72) - 114)) - 28) ^ 0xBC) + 102));
  v147 = 1377 * ((59 * (HIBYTE(v146) ^ 0xD1)) ^ 0x1F) + 3110643;
  v148 = *(v7 + v147 - 4864 * (((7064091 * v147) >> 32) >> 3));
  v149 = (((v148 ^ 0x19 ^ (v148 >> 4) & 3) + 48) | (v146 << 8)) ^ 0x3261BA00;
  LODWORD(STACK[0x7E8]) = (v138 & 0xC7BB3557 ^ -(v138 & 0xC7BB3557) ^ ((v149 & 0xC7BB3557) - (v149 & 0xC7BB3557 ^ v138 & 0xC7BB3557))) + (v149 ^ v138 & 0x3844CAA8);
  v150 = STACK[0x7B8];
  v151 = *(v5 + 4 * BYTE2(v150));
  HIDWORD(v112) = v151 ^ 0xBA;
  LODWORD(v112) = v151 ^ v118;
  v152 = *(v5 + 4 * STACK[0x7B8]);
  LODWORD(v125) = 1377 * (((v152 >> 23) & 0x1B0 ^ 0x30) + (HIBYTE(v152) ^ 0xAE2));
  LOBYTE(v125) = *(v7 + v125 - 4864 * (((7064091 * v125) >> 32) >> 3));
  LOBYTE(v136) = ((v125 ^ 5) + 59) ^ ((v125 ^ 0xC) + 36) ^ (16 - v125);
  LOBYTE(v125) = -38 - 9 * (((v125 ^ 0x97) + 105) ^ ((v125 ^ 0x70) - 112) ^ ((v125 ^ 0x91) + 111));
  LODWORD(v136) = __ROR4__(*(v5 + 4 * BYTE1(v150)), 16) ^ 0x53DB6B32 ^ (((v125 & 0x6E ^ 0x9F) - ((v125 ^ 0x1F) & 0x6E) + ((16 * ((3 * v136) & 3)) ^ v125 ^ 0x1F ^ 0xE0) + 1) | (v152 << 8));
  LODWORD(v136) = ((v112 >> 8) ^ -(v112 >> 8) ^ (v136 - (v136 ^ (v112 >> 8)))) + v136;
  v153 = *(v5 + 4 * BYTE1(v131));
  HIDWORD(v112) = v153 ^ 0x61BA;
  LODWORD(v112) = v153 ^ 0xD1320000;
  LODWORD(v125) = v112 >> 16;
  v154 = v136 - 785227334 - ((2 * v136) & 0xA264C374);
  LODWORD(v136) = *(v5 + 4 * v131);
  HIDWORD(v112) = v136 ^ 0x3261BA;
  LODWORD(v112) = v136 ^ 0xD1000000;
  LODWORD(v136) = v112 >> 24;
  HIDWORD(v112) = v132 ^ 0xBA;
  LODWORD(v112) = v132 ^ v118;
  v155 = v112 >> 8;
  LODWORD(v136) = v136 ^ v125;
  LOBYTE(v117) = ((((v119 ^ 0xD9) + 24) ^ v119 ^ 0xD9) - ((2 * (((v119 ^ 0xD9) + 24) ^ v119 ^ 0xD9)) & 0xEC) + 118) ^ 0x62 ^ *(v7 + LODWORD(STACK[0x798]));
  v156 = *(v5 + 4 * ((v117 >> 5) | (8 * v117)));
  HIDWORD(v112) = v156 ^ 0xBA;
  LODWORD(v112) = v156 ^ v118;
  v157 = v112 >> 8;
  LODWORD(v125) = *(v5 + 4 * STACK[0x8F8]);
  HIDWORD(v112) = v125 ^ 0x61BA;
  LODWORD(v112) = v125 ^ 0xD1320000;
  LODWORD(v125) = v112 >> 16;
  v158 = LODWORD(STACK[0x708]) ^ 0x3B2BE5u;
  v159 = *(v5 + 4 * (LOBYTE(STACK[0x708]) ^ 0xE5u));
  HIDWORD(v112) = v159 ^ 0x3261BA;
  LODWORD(v112) = v159 ^ 0xD1000000;
  v160 = v112 >> 24;
  v161 = *(v5 + 4 * BYTE1(v158));
  HIDWORD(v112) = v161 ^ 0x61BA;
  LODWORD(v112) = v161 ^ 0xD1320000;
  v162 = v112 >> 16;
  LODWORD(STACK[0x8F8]) = *(v5 + 4 * HIBYTE(v131)) ^ v155 ^ (v136 - 785227334 - ((2 * v136) & 0xA264C374));
  v163 = *(v5 + 4 * v141);
  LODWORD(v136) = v125 - 785227334 - ((2 * v125) & 0xA264C374);
  HIDWORD(v112) = v163 ^ 0x3261BA;
  LODWORD(v112) = v163 ^ 0xD1000000;
  LODWORD(v125) = v112 >> 24;
  v164 = *(v5 + 4 * BYTE2(v158));
  HIDWORD(v112) = v164 ^ 0xBA;
  LODWORD(v112) = v164 ^ v118;
  v165 = v112 >> 8;
  v166 = *(v5 + 4 * BYTE2(v141));
  v167 = (v162 ^ v160) - 785227334 - ((2 * (v162 ^ v160)) & 0xA264C374);
  v168 = v118;
  HIDWORD(v112) = v166 ^ 0xBA;
  LODWORD(v112) = v166 ^ v118;
  LODWORD(v125) = (v112 >> 8) + v125 - 2 * ((v112 >> 8) & v125);
  v169 = *(v5 + 4 * ((*(v7 + 1377 * (BYTE1(v141) ^ 0x69) + 1692333 - 4864 * (((1766023 * (1377 * (BYTE1(v141) ^ 0x69u) + 1692333)) >> 32) >> 1)) ^ 0x81) - 110));
  HIDWORD(v112) = v169 ^ 0x61BA;
  LODWORD(v112) = v169 ^ 0xD1320000;
  v170 = v165 ^ *(v5 + ((v158 >> 22) & 0x3FC));
  LODWORD(v158) = *(v5 + 4 * STACK[0x790]);
  LODWORD(STACK[0x7B8]) = v170 ^ v167;
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x7A0]) ^ v35 ^ v158;
  v171 = *(v5 + 4 * LODWORD(STACK[0x940]));
  LODWORD(v158) = (v171 << 8) ^ 0x3261BA00;
  LODWORD(STACK[0x940]) = v158;
  LODWORD(STACK[0x910]) = *(v5 + (STACK[0x910] & 0x3FC)) ^ (v158 | HIBYTE(v171)) ^ v136 ^ v157;
  LODWORD(v158) = *(v5 + ((v141 >> 22) & 0x3FC)) ^ (v112 >> 16) ^ (v125 - 785227334 - ((2 * v125) & 0xA264C374));
  v172 = *(v5 + ((STACK[0x840] >> 22) & 0x3FC)) ^ LODWORD(STACK[0x808]) ^ LODWORD(STACK[0x788]) ^ LODWORD(STACK[0x7A8]);
  LODWORD(STACK[0x6CC]) = v35 ^ *(v5 + ((v150 >> 22) & 0x3FC)) ^ v154;
  v173 = STACK[0x778];
  LODWORD(v136) = 1377 * (*(STACK[0x778] + 27) ^ 0x55) + 5915592;
  LODWORD(v136) = *(v7 + v136 - 4864 * (((7064091 * v136) >> 32) >> 3));
  LODWORD(v136) = ((v136 ^ 0xF) - 15) ^ ((v136 ^ 0x30) - 48) ^ ((v136 ^ 0x49) - 73);
  v174 = STACK[0x8E8];
  v175 = STACK[0x8E8] >> 24;
  STACK[0x718] = v175;
  LODWORD(v136) = *(v27 + v175) ^ 0x76 | ((((((v136 - 28) ^ 0xFFFFFFBC) + 102) ^ (-102 - ((v136 - 28) ^ 0xFFFFFFBC)) ^ ((v25 ^ 0x76) - ((((v136 - 28) ^ 0xFFFFFFBC) - 2 * ((((v136 - 28) ^ 0xFFFFFFBC) + 102) & 0x77 ^ v136 & 1) - 36) ^ v25))) + (v25 ^ 0x76)) << 24);
  STACK[0x5A8] = BYTE1(v174);
  LODWORD(v136) = v136 | ((*(v27 + BYTE1(v174)) ^ 0x76) << 16);
  STACK[0x708] = v174;
  LODWORD(v136) = v136 | ((*(v27 + v174) ^ 0x76) << 8);
  LODWORD(v175) = *(STACK[0x648] + LODWORD(STACK[0x880]));
  LODWORD(v175) = ((9 * (((v175 ^ 0xFFFFFFF1) + 15) ^ ((v175 ^ 0xFFFFFFAD) + 83) ^ ((v175 ^ 0x2A) - 42)) + 37) ^ (16 * ((3 * ((((v175 ^ 0xE) + 50) ^ ((v175 ^ 9) + 23)) ^ ((v175 ^ 1) - 1))) & 3))) << 24;
  LODWORD(v175) = ((v175 - 1845493760) ^ (1845493760 - v175) ^ ((v136 ^ STACK[0x7D8]) - (v136 ^ STACK[0x7D8] ^ (v175 - 1845493760)))) + (v136 ^ STACK[0x7D8]);
  LODWORD(v136) = *(v173 + 54) ^ v25;
  v176 = STACK[0x7F0];
  v177 = STACK[0x7D8] ^ STACK[0x7F0];
  LODWORD(STACK[0x7A0]) = v175;
  v178 = v175 ^ v177;
  STACK[0x7A8] = v90;
  v179 = v178 ^ v90;
  LOBYTE(v174) = ((((59 * BYTE2(v179)) ^ 0x50) - 3) ^ (59 * BYTE2(v179)) ^ 0x50) + (*(v7 + 1377 * ((59 * BYTE2(v179)) ^ 0xDC) + 622404 - 4864 * (((1766023 * (1377 * ((59 * BYTE2(v179)) ^ 0xDCu) + 622404)) >> 32) >> 1)) ^ 0x76);
  STACK[0x468] = BYTE1(v179);
  LODWORD(v136) = (v136 << 24) | ((*(v27 + BYTE1(v179)) ^ 0x76) << 16);
  v180 = *(v27 + (v178 ^ v90));
  LODWORD(v173) = *(v27 + ((v174 ^ 0x7C) + 48));
  STACK[0x798] = v179;
  STACK[0x480] = v179 >> 24;
  LODWORD(v136) = v136 | *(v27 + (v179 >> 24)) ^ 0x76 | ((v180 ^ 0x76) << 8);
  LODWORD(STACK[0x520]) = v173;
  LODWORD(v136) = v136 ^ ((v173 ^ 0x76) << 24);
  LODWORD(STACK[0x778]) = v136;
  LODWORD(STACK[0x488]) = v177;
  v181 = v136 ^ v177;
  STACK[0x790] = v181 ^ 0xFFFFFFFF;
  v182 = *(v5 + 4 * BYTE2(v178));
  HIDWORD(v112) = v182 ^ 0xBA;
  LODWORD(v112) = v182 ^ v168;
  v183 = v112 >> 8;
  LODWORD(v125) = *(v5 + 4 * BYTE1(v178));
  HIDWORD(v112) = v125 ^ 0x61BA;
  LODWORD(v112) = v125 ^ 0xD1320000;
  LOBYTE(v179) = ((~(v136 ^ v177) | 0x18) - (v136 ^ v177 ^ 0xE7)) | (v136 ^ v177) & 0x18;
  LODWORD(v136) = (v112 >> 16) ^ v183;
  v184 = LODWORD(STACK[0x930]) ^ 0x623B6850u;
  LODWORD(v125) = *(v5 + 4 * BYTE2(v184));
  HIDWORD(v112) = v125 ^ 0xBA;
  LODWORD(v112) = v125 ^ v168;
  v185 = v112 >> 8;
  LODWORD(v125) = v136 - 785227334 - ((2 * v136) & 0xA264C374);
  LODWORD(v136) = *(v5 + 4 * (LOBYTE(STACK[0x930]) ^ 0x50u));
  v186 = *(v5 + ((v184 >> 22) & 0x3FC));
  v187 = (v185 - ((v185 - 785227334 - ((2 * v185) & 0xA264C374)) ^ v186)) ^ (785227334 - (((v186 ^ 0x1FC581E3) - 533037539) ^ ((v186 ^ 0x8BF5ABA1) + 1946834015) ^ ((v186 ^ 0x45024BF8) - 1157778424)));
  v188 = (*(v7 + 1377 * (BYTE3(v136) ^ 0x3A) + 3822552 - 4864 * (((7064091 * (1377 * (BYTE3(v136) ^ 0x3A) + 3822552)) >> 32) >> 3)) ^ 0x76) * (((STACK[0x848] >> 8) & 0xFFFFFFF7 ^ 0xFFFFFFF7) + ((STACK[0x848] >> 8) & 0xFFFFFFF7));
  LODWORD(STACK[0x8E8]) = ((((v188 - 2 * (v188 & 0x1F) + 31) ^ ((16 * v188) | 0xC0)) - 110) | (v136 << 8)) ^ (((v187 - 785227334 - ((2 * v187) & 0xA264C374)) ^ v186) + v185) ^ 0x3261BA00;
  LODWORD(v136) = *(v5 + 4 * BYTE1(STACK[0x7F8]));
  HIDWORD(v112) = v136 ^ 0x61BA;
  LODWORD(v112) = v136 ^ 0xD1320000;
  LODWORD(STACK[0x930]) = v112 >> 16;
  LODWORD(STACK[0x3D0]) = v35 ^ LODWORD(STACK[0x7D0]);
  LODWORD(STACK[0x638]) = LODWORD(STACK[0x7B8]) ^ v35;
  v189 = LODWORD(STACK[0x910]) ^ v35;
  v190 = LODWORD(STACK[0x878]) ^ v35;
  STACK[0x6B8] = v35 ^ v158;
  LODWORD(STACK[0x5D8]) = v35 ^ STACK[0x5A0];
  STACK[0x5F0] = v35 ^ LODWORD(STACK[0x510]);
  STACK[0x710] = v172 ^ v35;
  LODWORD(STACK[0x878]) = v35 ^ LODWORD(STACK[0x7E8]);
  LODWORD(STACK[0x6B0]) = LODWORD(STACK[0x8F8]) ^ v35;
  v191 = *(v5 + 4 * (v178 >> v179));
  v192 = v35 ^ __ROR4__(STACK[0x858], 25);
  v193 = *(v5 + 4 * v178);
  v194 = ((v178 ^ STACK[0x7C8]) >> 16) ^ 0x4C;
  LODWORD(v112) = __ROR4__(v193, 24);
  LODWORD(STACK[0x880]) = v112 ^ 0x3261BAD1;
  v195 = *(v5 + 4 * BYTE1(v184));
  LODWORD(STACK[0x910]) = v112 ^ 0x3261BAD1 ^ v125 ^ v191;
  v196 = v103;
  v197 = *(STACK[0x948] + 8 * ((1985 * v196) ^ LODWORD(STACK[0x830])));
  STACK[0x660] = v191 ^ 0xD13261BA;
  LODWORD(STACK[0x7E8]) = v189;
  LODWORD(STACK[0x3A0]) = v189 ^ 0xD1;
  LODWORD(STACK[0x840]) = v190 ^ 0xD1;
  STACK[0x330] = v35;
  LODWORD(STACK[0x8F8]) = v35 ^ STACK[0x7E0];
  LODWORD(STACK[0x7D0]) = v192;
  STACK[0x6D8] = v192 ^ 0xA4D0E55A;
  STACK[0x7B8] = LODWORD(STACK[0x6F0]) ^ 0xA18E32D2;
  v198 = STACK[0x810];
  STACK[0x5F8] = STACK[0x810] ^ v176;
  LODWORD(STACK[0x788]) = v194;
  v199 = (v194 + 2002);
  LODWORD(STACK[0x300]) = 1377 * v199;
  LODWORD(STACK[0x858]) = v195 ^ 0xD13261BA;
  LODWORD(STACK[0x808]) = (v195 << 16) ^ 0x61BA0000;
  STACK[0x820] = v181;
  STACK[0x748] = v181;
  return v197(v199, v198);
}

uint64_t sub_4D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x938];
  v7 = vld1q_dup_f32(v6);
  v8.n128_u64[0] = 0x8000000080000000;
  v8.n128_u64[1] = 0x8000000080000000;
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  return (*(a4 + 8 * (v4 - 2038114058)))(v8, vnegq_f32(v9), vdupq_n_s32(0x34E513ACu), vdupq_n_s32(v5), v7);
}

uint64_t sub_4D4AC()
{
  v9 = *(STACK[0x3E0] + v4) * v6;
  v10 = v9 ^ v3;
  v11 = (v9 ^ v3) + v4;
  v12 = HIWORD(v11);
  v13 = v11 - HIWORD(v11);
  v14 = (v4 + v1 + v10 - v12 + (v13 >> 8)) ^ LODWORD(STACK[0x930]);
  v15 = v4 + v5 - v12 + v10 + v2 + (v13 >> 8) - 1660;
  v16 = v15 ^ LODWORD(STACK[0x940]);
  v17 = v15 ^ v9;
  v18 = (v17 + v4) >> 16;
  LODWORD(STACK[0x928]) ^= (v13 + (v13 >> 8)) ^ (v17 + v4 - v18 + ((v17 + v4 - v18) >> 8));
  LODWORD(STACK[0x930]) = v14 ^ (v4 + v1 + v17 - v18 + ((v17 + v4 - v18) >> 8));
  LODWORD(STACK[0x940]) = v16 ^ (v4 + v5 + v17 - v18 + ((v17 + v4 - v18) >> 8));
  return (*(STACK[0x948] + 8 * (((v7 == v4) * v8) ^ v0)))();
}

uint64_t sub_4D5A8@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, int a4, int a5, int a6, unsigned int a7, int a8, int a9, unsigned int a10)
{
  v16 = *(v11 + 40);
  v17 = 1183051249 * (((&a3 | 0xDAF02809) - (&a3 & 0xDAF02809)) ^ 0x3F13FED5);
  a4 = ((*(v11 + 32) ^ 0x33FE5FCF) - 27020301 + ((((v15 - 509) | 0x22B) + 1744616803) & (2 * *(v11 + 32)))) ^ v17;
  a5 = (a2 + 780981078) ^ v17;
  a9 = (v10 ^ 0x5FFB1257) - v17 - 1149370384 + ((29 * (v15 ^ 0x21C) - 1074388287) & (2 * v10));
  a10 = 2138392504 - v17;
  a6 = (v15 + 670) ^ v17;
  a7 = v16 - v17 - ((2 * v16) & 0xE227F208) - 250349308;
  a3 = v13 + 16;
  (*(v12 + 8 * (v15 + 2271)))(&a3);
  return (*(v12 + 8 * ((2011 * (a8 == v14)) ^ v15)))(a1);
}

uint64_t sub_4D6F8(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t *a7)
{
  v9 = (((1645 * a1 + 2111129) % 0xA88u) ^ 0x3FFDEA7CFFFE7EFFLL) + STACK[0x520] + ((2 * ((1645 * a1 + 2111129) % 0xA88u)) & 0x1DFE);
  v10 = *(v9 - 0x4ADE171F57B5286BLL);
  v11 = *STACK[0x538];
  LODWORD(v9) = v9 + 98561;
  v12 = v9 + *(v11 + (*v7 & (v8 + (a4 ^ 0x7DAu) - 1200)));
  v13 = *a7;
  v14 = *a7 ^ 0xF1E76555;
  v15 = v8 + 2;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v8) & v14)) ^ v10 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v8 + 2) & v14)) ^ (110 * v9);
  LODWORD(v9) = 551 * (((v9 ^ 0x3A4549FF) + 441532608) ^ ((v9 ^ 0x580C260F) + 2014850896) ^ ((v9 ^ 0x62496FB6) + 1113417463)) - 184056937;
  v16 = STACK[0x518] + 4 * (v9 - v9 / 0x1D48 * a5);
  v17 = *(v11 + (*v7 & STACK[0x540]));
  v18 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v17 + LODWORD(STACK[0x52C])) & v14)) ^ *(v16 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v17 + 1527793161) & v14));
  v19 = v18 ^ (1912024365 * v16);
  v20 = v18 ^ (11565 * v16);
  v21 = v18 ^ (16198957 * v16);
  LOBYTE(v16) = v18 ^ (45 * v16);
  v22 = 1645 * (((v19 >> 23) & 0x1C ^ 0x14) + (HIBYTE(v19) ^ 0x824));
  v23 = 1645 * (BYTE2(v21) ^ 0xE7) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE2(v21) ^ 0xE7u) + 3391990)) >> 32) >> 3);
  v24 = v22 - 2696 * (((12744711 * v22) >> 32) >> 3);
  v25 = 1645 * (HIBYTE(v20) ^ 0x6B) + 3391990;
  LODWORD(v16) = 1645 * (((v16 ^ 0x360A2AA9) + 393534457) ^ ((v16 ^ 0x6A3955AA) + 1262986492) ^ ((v16 ^ 0x5C337F29) + 2102234745)) - 1015150550;
  v26 = ((v16 % 0xA88) ^ 0x7FEB4B329DF3BBC3) + STACK[0x520] + ((2 * (v16 % 0xA88)) & 0x1786);
  v27 = (v24 ^ 0x7F737BF9F3E36BF3) + STACK[0x520] + ((2 * v24) & 0x17E6);
  v28 = *(v26 + 0x7534882B0A559AD1);
  v29 = *(v11 + (*v7 & 0x46B39928));
  v30 = v26 + 1644971069;
  v31 = v25 - 2696 * (((12744711 * v25) >> 32) >> 3);
  v32 = (v23 ^ 0x46E7BEF714CF3BF6) + STACK[0x520] + ((2 * v23) & 0x17EC);
  v33 = (v31 ^ 0xDFF6BFFF87ACDE7FLL) + STACK[0x520] + ((2 * v31) & 0x1CFE);
  LODWORD(v26) = ((*(v32 - 0x51C7EB996C85E562) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 - 349125622 + v29 + 1186175272) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 - 349125622 + v29 + v15) & v14)) ^ (110 * (v32 + 10)) ^ 0x46) << 8) | ((*(v27 + 0x75AC5763B465EAA1) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 203199501 + v29 + 1186175272) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((0x23F4D5F0543758BCLL * (v13 ^ 0x71B0588CF1E76555) + 0x23F4D5F0543758BCLL + (v27 + 203199501 + v29 + v15)) & (v13 ^ 0x71B0588CF1E76555))) ^ (110 * (v27 + 13)) ^ 0x46) << 16);
  v34 = STACK[0x530];
  LODWORD(v26) = ((v26 ^ 0x6DEDFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v33 + 2018713985 + v29 + 1186175272) & v14)) ^ *(v33 + 0x1529135E209C7815) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v33 + 2018713985 + v29 + v15) & v14)) ^ (110 * (v33 - 127)) ^ 0x4CADA0) | v26 & 0xB35200) << 8;
  v35 = STACK[0x518] + 4 * (551 * a1 + 710790 - (551 * a1 + 710790) / 0x1D48u * a5);
  *(v35 - 0x40E8C283FA03C307) = (1912024365 * v35) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v35 + LODWORD(STACK[0x52C])) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v35 + 1527793161) & v14)) ^ 0xD75A94D8 ^ ((v26 ^ 0xB11019FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + v29 + 1186175272) & v14)) ^ v28 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + v29 + v15) & v14)) ^ (110 * v30) & 0xFE ^ 0xF5B1FDB4) | v26 & 0xA4E0200);
  return (*(STACK[0x548] + 8 * ((161 * (a1 == 255)) ^ a4)))();
}

uint64_t sub_4DD28()
{
  LODWORD(STACK[0x1098]) = STACK[0xD4C];
  v2 = STACK[0x368];
  return (*(v1 + 8 * (((LODWORD(STACK[0x9FC]) < 0x35) * (v0 ^ 0x674 ^ ((v0 + 587) | 0xA))) ^ v0)))();
}

uint64_t sub_4DD74@<X0>(_BYTE *a1@<X8>)
{
  *v3 = *v4;
  a1[261] = v2[21];
  a1[262] = v2[22];
  a1[263] = v2[23];
  a1[264] = v2[24];
  a1[265] = v2[25];
  a1[266] = v2[26];
  a1[267] = v2[27];
  a1[268] = v2[28];
  a1[269] = v2[29];
  a1[270] = v2[30];
  a1[271] = v2[31];
  a1[272] = v2[32];
  a1[273] = v2[33];
  a1[274] = v2[34];
  a1[275] = v2[35];
  return (*(v5 + 8 * (v1 - 500)))();
}

uint64_t sub_4DE98@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v7 = *(v6 + 16) + v5;
  v8 = *(*(a4 - 132921991) + (((v7 & 0xFFFFFFF8 & (((a1 + 689) | 0xA0) - 1079478164)) + (v7 & 0x405782E8 | 0xBFA87D16) + 1996377690) & *(v4 - 464343834)));
  v9 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (((v9 + v8) | 0x8AD8054D21193A01) - ((v9 + v8) | 0x7527FAB2DEE6C5FELL) + 0x7527FAB2DEE6C5FELL) ^ 0x8247401680D98A14;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((v12 + v11) | 0xEBAC7456C5B3910CLL) - ((v12 + v11) | 0x14538BA93A4C6EF3) + 0x14538BA93A4C6EF3) ^ 0x337DFCAFC33D294CLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x7E1F3531EE2817FLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((v17 + v16) | 0x59BD335D6C3BA74) - ((v17 + v16) | 0xFA642CCA293C458BLL) - 0x59BD335D6C3BA75) ^ 0xBB3728AA9BDAA94CLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x8A4943FA3C1BB996;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8F826D48DCAD4006;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a2 + 8 * a1))();
}

uint64_t sub_4E0A4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x908] = v2;
  LODWORD(STACK[0xD58]) = a2;
  v5 = (&STACK[0x1190] + STACK[0x978]);
  STACK[0x978] += 16;
  *v5 = 0;
  v6 = (*(a1 + 8 * (v3 ^ 0xDF8)))(0, v5) == ((v3 - 8657297) & 0x79FF3EEF) - 2038115493;
  return (*(STACK[0x948] + 8 * ((v6 * (v4 + v3 - 2038117324)) ^ v3)))();
}

uint64_t sub_4E13C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x398]) = v2 - (a2 << ((v3 - 40) ^ 0xC3));
  v6 = *(v5 + 8 * v3);
  LODWORD(STACK[0x388]) = v4 & 0x27C0EE7C;
  return v6(4 * (v4 & 0x27C0EE7Cu), a1, 1007236926);
}

uint64_t sub_4E20C@<X0>(uint64_t a1@<X8>)
{
  v1[191] = v1[110] + 196;
  v3 = v1[48];
  v1[192] = v1[49] + v1[103] + 196;
  v4 = v1[23];
  v1[183] = *(v2 + 8 * a1);
  return (*(v2 + 8 * (((2 * (a1 ^ 0x23D)) ^ 0x651) + a1)))(v4);
}

uint64_t sub_4E28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W5>, _BYTE *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v21 = *(*v14 + (((a8 & v11) + 916900720) & *v13));
  v22 = __ROR8__(a8 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = __ROR8__((((2 * (v21 + v22)) & 0x6AD7F86A14C23F24) - (v21 + v22) + 0x4A9403CAF59EE06DLL) ^ 0x420B4691545E5078, 8);
  v24 = (((2 * (v21 + v22)) & 0x6AD7F86A14C23F24) - (v21 + v22) + 0x4A9403CAF59EE06DLL) ^ 0x420B4691545E5078 ^ __ROR8__(v21, 61);
  v25 = (((2 * (v23 + v24)) & 0xC563774FBA0AD65ELL) - (v23 + v24) - 0x62B1BBA7DD056B30) ^ 0x459FCCA124742C90;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xBEACFB9F4D191338;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (v9 - ((v30 + v31) ^ 0x46CF193F1E3F180ELL | v9) + ((v30 + v31) ^ 0x46CF193F1E3F180ELL | 0x891E6A2B28589CCELL)) ^ 0x459830EE0A7C3D56;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (a2 - ((v34 + v33) | a2) + ((v34 + v33) | 0xF95C517C72A9DAC0)) ^ 0x76DE3C34AE049AC6;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = *(*v14 + (((((a8 & 0xFFFFFFF8) + 283812281) | (a3 + 1)) - ((-283812288 - (a8 & 0xFFFFFFF8)) & a3) + 633088439) & *v13));
  v38 = __ROR8__(v35, 8) + v36;
  v39 = (v37 + v22) ^ 0x89F455BA1C0B015;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xD8D188F9068EB840;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a1;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (v8 - (v38 | v8) + (v38 | 0x865AD57A386CE2B6)) ^ 0xB8298A87A8EF5215;
  v47 = (((2 * (v45 + v44)) & 0xBC31E2F46E82AA66) - (v45 + v44) + v15) ^ v16;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x8A4943FA3C1BB996;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v36, 61));
  v52 = (__ROR8__(v49, 8) + v50) ^ 0x8F826D48DCAD4006;
  v53 = __ROR8__(v52, 8);
  v54 = v52 ^ __ROR8__(v50, 61);
  v55 = ((v17 | (2 * (v53 + v54))) - (v53 + v54) + v18) ^ v19;
  *a6 ^= *(a7 + a4) ^ (((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (v10 & 0x38)) ^ (((((2 * v51) | 0x6BD2AA09DDA168BCLL) - v51 + 0x4A16AAFB112F4BA2) ^ 0x93C66ADB2134AB12) >> (v10 & 0x38));
  return (*(v20 + 8 * (((a4 == 15) * v12) ^ a5)))();
}

uint64_t sub_4E638()
{
  *(v2 + 1088) = 1;
  STACK[0x978] -= 64;
  *v1 = *(STACK[0xEA8] + 8) + 1044 * LODWORD(STACK[0x8E8]);
  *(v1 + 16) = STACK[0x940];
  *(v1 + 8) = v3 - 434465113 * ((905022106 - (v4 | 0x35F18A9A) + (v4 | 0xCA0E7565)) ^ 0x3FAC5F3A) - 209;
  (*(v0 + 8 * (v3 ^ 0xA2A)))(v5 - 208);
  v6 = *(STACK[0x948] + 8 * ((1440 * ((v3 ^ 0x4B5F60FF ^ (v3 + 6)) + (((LODWORD(STACK[0x8F0]) ^ 0x4D0505A6) - 1292174758) ^ ((LODWORD(STACK[0x8F0]) ^ 0xA2306032) + 1573887950) ^ ((LODWORD(STACK[0x8F0]) ^ 0xA46A056D) + 1536555667)) < 0x100)) ^ v3));
  v7 = LODWORD(STACK[0x8F8]);
  return v6(369765527, &STACK[0x1190], 173666724, 2256851803, 2175);
}

uint64_t sub_4E7E8@<X0>(int a1@<W0>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, unsigned int a7@<W8>)
{
  v11 = v7 < a7;
  v12 = ((9 * a6) ^ a1) + a5;
  v13 = (((a4 ^ v8) * v9) ^ (a7 + 503)) + a5 < v7;
  if (v11 == v12 > a2)
  {
    v11 = v13;
  }

  return (*(v10 + 8 * ((!v11 * a3) ^ a4)))();
}

uint64_t sub_4E844@<X0>(uint64_t a1@<X8>)
{
  v8 = 1775714371 * (((v6 - 208) & 0x5BF976E6 | ~((v6 - 208) | 0x5BF976E6)) ^ 0xB7F11233);
  v9 = v6 - 208;
  *(v9 + 16) = a1;
  *(v9 + 24) = v1;
  *(v9 + 8) = v8 + (v2 ^ 0x1FEBFEEB) - 520132744 + (((v3 ^ 0xD13) + 1071117335) & (2 * v2));
  *v9 = v4;
  *(v9 + 40) = v8 + 1829770732;
  *(v9 + 32) = (v3 - 618) ^ v8;
  *(v9 + 36) = v8 ^ 0x67230165;
  (*(v7 + 8 * (v3 ^ 0xE23)))(v6 - 208);
  *(v6 - 192) = *(STACK[0xEA8] + 24);
  *v9 = v4;
  *(v6 - 200) = v3 - 1600728529 * (((v6 - 208) & 0xCA7ED8C1 | ~((v6 - 208) | 0xCA7ED8C1)) ^ 0xB0B4ED7F) - 971817525;
  v10 = (*(STACK[0x948] + 8 * (v3 ^ 0xE7E)))(v6 - 208);
  v11 = STACK[0x948];
  *(STACK[0xEA8] + 32) = v5;
  return (*(v11 + 8 * v3))(v10);
}

uint64_t sub_4E9A4()
{
  v2 = STACK[0x328];
  v3 = 1377 * (((*(STACK[0x3E0] + (*(STACK[0x3E0] + (*(STACK[0x3E0] + (*(STACK[0x3E0] + 0xE8D2146D % STACK[0x328]) - 58) % v2) - 61) % v2) + 59) % v2) + 82) % v2) ^ 0xEB) + 3822552;
  STACK[0x768] = v3;
  v4 = *(&off_18D8F0 + v0 - 1631);
  STACK[0x900] = v4 - 670284234;
  v5 = *(v4 - 670284234 + v3 - 4864 * (((7064091 * v3) >> 32) >> 3));
  LODWORD(STACK[0x928]) = 1524090560;
  LODWORD(STACK[0x930]) = 1193828354;
  LODWORD(STACK[0x940]) = 990914755;
  STACK[0x868] = &STACK[0x1190] + v1;
  STACK[0x260] = &STACK[0x1190] + v1 + 2128;
  STACK[0x2D0] = v4 - 670333495;
  v6 = *(STACK[0x948] + 8 * v0);
  v7 = (v0 + 2147464990) & 0xF97B6EBF;
  LODWORD(STACK[0x910]) = v7;
  return v6(-1999617375, 1151217070, 1524090560, 1151217069, v7 + 1102879990, 990914755, 3653127384, 619801970);
}

uint64_t sub_4EBEC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 48) - 1652273946;
  v5 = v4 < 0x9D844CE1;
  v6 = v4 > v2 + 909508974;
  if (v5 == v2 + 909508974 < ((v1 + 2147169452) & 0xF7D4EF71) + 632563376)
  {
    LOBYTE(v5) = v6;
  }

  return (*(a1 + 8 * (((2 * (((v1 - 88) ^ v5) & 1)) & 0xDF | (32 * (((v1 - 88) ^ v5) & 1))) ^ v1)))();
}

uint64_t sub_4ECA0()
{
  v5 = &STACK[0x1190] + STACK[0x978];
  STACK[0x978] += 128;
  v6 = 1183051249 * ((((v3 - 208) | 0xA2BFDDC3) - (v3 - 208) + ((v3 - 208) & 0x5D402238)) ^ 0x475C0B1F);
  v7 = v3 - 208;
  *(v7 + 8) = v5;
  *(v7 + 28) = -1206535615 - v6;
  *(v7 + 32) = (v2 + 1457) ^ v6;
  *(v7 + 48) = 1751547110 - v6;
  *(v7 + 24) = ((v1 ^ 0x58FFD0F3) - 819264 + ((2 * v1) & 0xB1FFA1E6)) ^ v6;
  *(v7 + 40) = v0;
  *(v7 + 16) = v6 ^ 0x34A38942;
  *(v7 + 20) = 1435015424 - v6;
  (*(v4 + 8 * (v2 ^ 0xE28)))(v3 - 208);
  v8 = *(v3 - 208);
  *(v3 - 200) = v5;
  *(v3 - 204) = v2 + 381473641 * ((v3 + 1888247317 - 2 * ((v3 - 208) & 0x708C5EE5)) ^ 0x6E687937) - 231;
  v9 = (*(STACK[0x948] + 8 * (v2 ^ 0xE36)))(v3 - 208);
  v12 = *(v3 - 208) != 1699000680 && STACK[0x940] != 0 && v8 == ((v2 - 791512565) & 0x2F2D85F7) + 65019967;
  return (*(STACK[0x948] + 8 * ((3217 * v12) ^ v2)))(v9);
}

uint64_t sub_4EE9C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 16);
  *(v2 + 384) = v5;
  LODWORD(STACK[0xC2C]) = v4;
  return (*(v3 + 8 * ((46 * (v5 > *(v2 + 32) + 20)) ^ v1)))();
}

uint64_t sub_4EF20()
{
  v3 = v0 + 1;
  v4 = (v0 - 109072723) & 0x7FFB7DF7;
  v5 = *(v1 + 264);
  *(v1 + 32) = (v4 - 0x38ABC97788530240) ^ v5;
  return (*(v2 + 8 * ((127 * (v5 == 0xC7543688F1282A65)) ^ (v3 | 0x9AE))))();
}

uint64_t sub_4EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x978] += ((v4 - 538) | 0x320u) ^ 0xFFFFFFFFFFFFF553;
  v5 = STACK[0xC40];
  STACK[0xF78] = *(STACK[0xC40] + 1120);
  LODWORD(STACK[0x99C]) = *(v5 + 1128);
  return (*(STACK[0x948] + 8 * v4))(a1, a2, a3, a4, STACK[0x8C0]);
}

uint64_t sub_4F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*STACK[0x360] + (*STACK[0x368] & 0x480F6B80)) ^ 0x480F6B83u;
  v11 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v10 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v10;
  v12 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v11 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v11;
  v13 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v12 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v12;
  v14 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v13 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v13;
  v15 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v14 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v14;
  v16 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v15 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v15;
  v17 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v16 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v16;
  LODWORD(v17) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v17 & (qword_190530 ^ 0x71B0588CF1E76555))) ^ v17;
  STACK[0x1138] = 0;
  STACK[0x1140] = v4;
  v18 = 16777619 * ((1208970115 * v17 + 7) ^ (1208970115 * v17)) % 7;
  v19 = *(&STACK[0x1138] | v18);
  *(&STACK[0x1138] | v18) = STACK[0x113F];
  LOBYTE(STACK[0x113F]) = v19;
  v20 = 16777619 * ((1208970115 * v17 + 6) ^ (1208970115 * v17)) % 6;
  v21 = *(&STACK[0x1138] | v20);
  *(&STACK[0x1138] | v20) = STACK[0x113E];
  LOBYTE(STACK[0x113E]) = v21;
  v22 = 16777619 * ((1208970115 * v17 + 5) ^ (1208970115 * v17)) % 5;
  v23 = *(&STACK[0x1138] | v22);
  *(&STACK[0x1138] | v22) = STACK[0x113D];
  LOBYTE(STACK[0x113D]) = v23;
  v24 = STACK[0x1138];
  LOBYTE(STACK[0x1138]) = STACK[0x113C];
  LOBYTE(STACK[0x113C]) = v24;
  v25 = 16777619 * ((1208970115 * v17 + 3) ^ (1208970115 * v17)) % 3;
  v26 = *(&STACK[0x1138] | v25);
  *(&STACK[0x1138] | v25) = STACK[0x113B];
  LOBYTE(STACK[0x113B]) = v26;
  v27 = STACK[0x1139];
  LOBYTE(STACK[0x113A]) = STACK[0x1138];
  LOWORD(STACK[0x1138]) = v27;
  v28 = vdup_n_s32(1208970115 * v17);
  v29.i32[0] = v28.i32[0];
  v29.i32[1] = 1208970115 * v17 + 1;
  v30 = veor_s8(vmul_s32(v29, v28), v28);
  STACK[0x1138] = vmla_s32(v30, STACK[0x1138], vdup_n_s32(0x1000193u));
  STACK[0x1140] ^= STACK[0x1138];
  STACK[0x1140] = vmul_s32(vsub_s32(STACK[0x1140], v30), vdup_n_s32(0x359C449Bu));
  v31 = STACK[0x1142];
  LOWORD(STACK[0x1141]) = STACK[0x1140];
  LOBYTE(STACK[0x1140]) = v31;
  v32 = (&STACK[0x1140] | v25);
  LOBYTE(v27) = *v32;
  *v32 = STACK[0x1143];
  LOBYTE(STACK[0x1143]) = v27;
  LOBYTE(v32) = STACK[0x1140];
  LOBYTE(STACK[0x1140]) = STACK[0x1144];
  LOBYTE(STACK[0x1144]) = v32;
  v33 = (&STACK[0x1140] | v22);
  LOBYTE(v32) = *v33;
  *v33 = STACK[0x1145];
  LOBYTE(STACK[0x1145]) = v32;
  v34 = (&STACK[0x1140] | v20);
  LOBYTE(v33) = *v34;
  *v34 = STACK[0x1146];
  LOBYTE(STACK[0x1146]) = v33;
  v35 = (&STACK[0x1140] | v18);
  v36 = *v35;
  *v35 = STACK[0x1147];
  LOBYTE(STACK[0x1147]) = v36;
  v37 = STACK[0x1140];
  v38 = (1208970115 * STACK[0x1140]) ^ v17;
  for (i = 1; i != 4; ++i)
  {
    v40 = 16777619 * ((v38 + i) ^ v38) % i;
    v41 = *(v37 + 8 * v40) ^ *(v37 + 8 * i);
    *(v37 + 8 * i) = v41;
    v42 = *(v37 + 8 * v40) ^ v41;
    *(v37 + 8 * v40) = v42;
    *(v37 + 8 * i) ^= v42;
  }

  v43 = 0;
  v44 = xmmword_158980;
  v45 = xmmword_158990;
  v46 = xmmword_1589A0;
  v47 = xmmword_1589B0;
  v48.i64[0] = 0x9B009B009B009BLL;
  v48.i64[1] = 0x9B009B009B009BLL;
  v49 = vdupq_n_s32(v38);
  v50.i64[0] = 0x1000000010;
  v50.i64[1] = 0x1000000010;
  do
  {
    v51 = *(v37 + v43);
    v52 = vmovl_high_u8(v51);
    v53 = vmovl_u8(*v51.i8);
    v56.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v46, v49), vsubq_s32(v46, v49)), v49), vmull_high_u16(v53, v48));
    v56.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v45, v49), vsubq_s32(v45, v49)), v49), vmull_u16(*v52.i8, 0x9B009B009B009BLL));
    v56.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v47, v49), vsubq_s32(v47, v49)), v49), vmull_u16(*v53.i8, 0x9B009B009B009BLL));
    v56.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v44, v49), vsubq_s32(v44, v49)), v49), vmull_high_u16(v52, v48));
    *(v37 + v43) = vqtbl4q_s8(v56, xmmword_158A00);
    v43 += 16;
    v47 = vaddq_s32(v47, v50);
    v46 = vaddq_s32(v46, v50);
    v45 = vaddq_s32(v45, v50);
    v44 = vaddq_s32(v44, v50);
  }

  while (v43 != 32);
  *(v5 + a4) = STACK[0x1140];
  v54 = *(v8 + v9);
  return (*(a1 + 8 * ((((v6 + 1704422471) | 0x104) + v7) ^ v6 ^ (3381 * (v6 < 0x818084D7)))))(v44, v45, v46, v47);
}

uint64_t sub_4F690()
{
  v4 = 1252856261 * ((((v2 - 208) | 0xF00E3209) - (v2 - 208) + ((v2 - 208) & 0xFF1CDF0)) ^ 0x5E1E526);
  v5 = v2 - 208;
  *(v5 + 8) = *v0 + 424;
  *(v5 + 20) = v4 ^ 0x77D4A74D;
  *v5 = (v1 - 932) ^ v4;
  v6 = (*(v3 + 8 * (v1 ^ 0x3EB)))(v2 - 208);
  return (*(STACK[0x948] + 8 * ((11 * (((v1 - 73) ^ (*(v2 - 192) == ((v1 + 1398066651) & 0xACAB2DFF ^ 0x3E021EB))) & 1)) ^ v1)))(v6);
}

uint64_t sub_4F8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = LODWORD(STACK[0x9DC]);
  LODWORD(STACK[0x9DC]) = v8 + 1;
  v9 = *(a4 + 4 * v8);
  *(STACK[0x378] - 1048792407) = v8 + 1635019062;
  v10 = *(v6 + v5);
  v11 = 434465113 * ((((v7 - 208) | 0x9D10936A6F39F63FLL) - ((v7 - 208) & 0x9D10936A6F39F63FLL)) ^ 0x94363AB59A9BDC60);
  v12 = v7 - 208;
  *(v12 + 28) = -434465113 * ((((v7 - 208) | 0x6F39F63F) - ((v7 - 208) & 0x6F39F63F)) ^ 0x9A9BDC60);
  *(v12 + 16) = v10 - v11;
  *(v12 + 32) = v11 + 5119;
  v13 = v4 + 1833728734 - v11;
  *v12 = v11 ^ (v4 + 1833728734) ^ 0xE7;
  *(v12 + 4) = v13;
  *(v12 + 8) = v11 + v4 + 1596328632;
  *(v12 + 40) = v13 - 113;
  v14 = (*(a1 + 8 * (v4 - 2038112765)))(v7 - 208);
  return (*(STACK[0x948] + 8 * *(v7 - 184)))(v14);
}

uint64_t sub_4FA88()
{
  v3 = v2 - 208;
  LODWORD(STACK[0xC0C]) = 0;
  LODWORD(STACK[0xF28]) = 0;
  LODWORD(STACK[0xAA0]) = 0;
  LODWORD(STACK[0xF84]) = 0;
  LODWORD(STACK[0xBC8]) = 0;
  STACK[0xAE8] = 0xC7543688F1282A65;
  STACK[0xDA8] = 0xC7543688F1282A65;
  STACK[0xEF8] = 0xC7543688F1282A65;
  STACK[0xEE8] = 0xC7543688F1282A65;
  *(v3 + 8) = (1913485891 * ((((v2 - 208) | 0x54D11B15) + (~(v2 - 208) | 0xAB2EE4EA)) ^ 0xC93DFC3E)) ^ 0xD43C35DD;
  *v3 = v1[123] - 1854909658;
  v4 = *(v0 + 21944);
  STACK[0x948] = v0;
  v5 = v4(v2 - 208);
  v6 = *(STACK[0x948] + 8 * ((3787 * (*(v1[24] - 542738951) == 980036039)) ^ 0x482u));
  STACK[0x280] = v1[54];
  v7 = v1[32];
  STACK[0x368] = v1[59] - 464343834;
  STACK[0x938] = v1[33] - 1442930342;
  v9 = v1[79] - 1033113382;
  v10 = v1[78];
  STACK[0x378] = v1[72];
  STACK[0x360] = v1[70] - 132921991;
  return v6(v5);
}

uint64_t sub_4FD2C@<X0>(unsigned int *a1@<X5>, int a2@<W8>)
{
  v3 = a2 + 1172;
  v4 = *a1;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_4FD40@<X0>(int a1@<W8>)
{
  *(v3 + 512) = 0;
  if (v2)
  {
    v5 = *v1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(v4 + 8 * ((v6 * (((a1 - 1488197949) & 0x58B417CB ^ 0x901) + a1 - 780)) ^ a1)))();
}

uint64_t sub_4FD98()
{
  v5 = v0 + v1;
  v6 = (v4 ^ 0x2F5) + v1;
  v8 = v5 + 1 >= v2 && v6 > -1047277988;
  return (*(v3 + 8 * ((413 * v8) ^ v4)))();
}

uint64_t sub_4FEB0(int a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, void *a7)
{
  v11 = (1645 * a1 + 2113825) % ((a4 + 2113434684) & 0x82078BDF ^ 0xB05);
  v12 = (v11 ^ 0x57FF5F73EE6F6FEFLL) + STACK[0x520] + ((2 * v11) & 0x1FDE);
  v13 = *(v12 - 0x62DF8C164626195BLL);
  v14 = *v7;
  v15 = *STACK[0x538];
  v16 = STACK[0x530];
  v17 = v12 + 17;
  v18 = *(v15 + (v14 & v9));
  v19 = v12 + 294686737 + v18;
  v20 = *a7 ^ 0xF1E76555;
  v21 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v9) & v20)) ^ v13 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v9 + 2) & v20)) ^ (110 * v17);
  v22 = (((2 * v21) & 0x28 ^ 8) + (v21 ^ 0xB52)) * v10;
  v23 = STACK[0x518] + 4 * (v22 - ((572968 * v22) >> 32) * v8);
  v24 = *(v15 + (v14 & STACK[0x540]));
  v25 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v23 + v24 + LODWORD(STACK[0x52C])) & v20)) ^ *(v23 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v23 + v24 + 1527793161) & v20));
  v26 = 1645 * (((v25 ^ (16198957 * v23)) >> 16) ^ 0xE7) + 3391990;
  LODWORD(v15) = ((v25 ^ (11565 * v23)) >> 8) ^ 0x6B;
  v27 = 1645 * (((((v25 ^ (1912024365 * v23)) >> 24) ^ 0x4FEB7D2D) + 512452971) ^ ((((v25 ^ (1912024365 * v23)) >> 24) ^ 0xCDCE7704) - 1666292924) ^ ((((v25 ^ (1912024365 * v23)) >> 24) ^ 0x82250A03) - 750444987)) + 433093408;
  LODWORD(v23) = (v25 ^ (45 * v23));
  v28 = v26 - 2696 * (((12744711 * v26) >> 32) >> 3);
  v29 = 1645 * (((v23 ^ 0xB5ABD0CA) - 848237547) ^ ((v23 ^ 0xFAC42B0A) - 2111891499) ^ ((v23 ^ 0x4F6FFBEA) + 934594357)) + 1735200677;
  v30 = 1645 * v15 + 3391990 - 2696 * (((12744711 * (1645 * v15 + 3391990)) >> 32) >> 3);
  v31 = (v28 ^ 0xFCDF9FCAD53DDF57) + STACK[0x520] + ((2 * v28) & 0x1EAE);
  v32 = ((v27 % 0xA88) ^ 0xF4B7EEEF2DBCDF3DLL) + STACK[0x520] + ((2 * (v27 % 0xA88)) & 0x1E7A);
  v33 = ((v29 % 0xA88) ^ 0x3FEAE3C92FBFBBC1) + STACK[0x520] + ((2 * (v29 % 0xA88)) & 0x1782);
  v34 = (2 * v30) & 0x19EE;
  v35 = (v30 ^ 0x7BFFFD99CEFFFCF7) + STACK[0x520];
  LODWORD(v32) = ((*(v31 - 0x7BFCC6D2CF488C3) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 717365417 + v18 + v9) & v20)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 717365417 + v18 + v9 + 2) & v20)) ^ (110 * (v31 - 87)) ^ 0x46) << 8) | ((*(v32 + 0x67E46E7A8C7757) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 - 767352637 + v18 + v9) & v20)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 - 767352637 + v18 + v9 + 2) & v20)) ^ (110 * (v32 - 61)) ^ 0x46) << 16);
  LODWORD(v32) = ((v32 ^ 0xBFAFFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v35 + v34 + 822084361 + v18 + v9) & v20)) ^ *(v35 + v34 + 0x791FD5C3D949599DLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v35 + v34 + 822084361 + v18 + v9 + 2) & v20)) ^ (110 * (v35 + v34 + 9)) ^ 0x960469) | v32 & 0x69FB00) << 8;
  v36 = STACK[0x518] + 4 * (a1 * v10 + 710790 - (((((a1 * v10 + 710790) >> 3) * a5) >> 32) >> 7) * v8);
  *(v36 - 0x40E8C283FA03C307) = (1912024365 * v36) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + v36 + LODWORD(STACK[0x52C])) & v20)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + v36 + 1527793161) & v20)) ^ 0xBCD95469 ^ ((v32 ^ 0x3A10FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v33 - 801094593 + v18 + v9) & v20)) ^ *(v33 - 0x4ACB106B8776652DLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v33 - 801094593 + v18 + v9 + 2) & v20)) ^ (110 * (v33 + 63)) ^ 0x63E1D05) | v32 & 0xF9C1E200);
  return (*(STACK[0x548] + 8 * ((252 * (a1 == 255)) ^ a4)))();
}

uint64_t sub_5048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 124) = v20 - 1038737517 - 1183051249 * ((((v22 - 128) | 0x8A32DBC1) - (v22 - 128) + ((v22 - 128) & 0x75CD2438)) ^ 0x6FD10D1D);
  *(v22 - 120) = &a19;
  (*(v19 + 8 * (v20 + 1140)))(v22 - 128);
  a15[429] = *(v22 - 128) ^ 0xCD;
  *(v22 - 120) = &a19;
  *(v22 - 124) = v20 - 1038737517 - 1183051249 * ((((v22 - 128) | 0x9F0E7CF9) + (~(v22 - 128) | 0x60F18306)) ^ 0x7AEDAA24);
  v23 = (*(v19 + 8 * (v20 ^ 0xC9C)))(v22 - 128);
  a15[430] = v21 ^ *(v22 - 128) ^ 0x88;
  v24 = a15[428];
  return (*(v19 + 8 * v20))(v23);
}

uint64_t sub_5057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xD84]) = v10;
  STACK[0x10A0] = v9;
  LODWORD(STACK[0x10AC]) = v11;
  LODWORD(STACK[0x10A8]) = v8;
  return (*(v12 + 8 * a8))();
}

uint64_t sub_505F0(int a1)
{
  STACK[0x7D8] = v1 ^ v5 & v4 ^ 0xFFFFF9B9 ^ (v3 - 1009669933) & 0x3C2E56F6;
  v8 = STACK[0x3E0];
  return (*(STACK[0x948] + 8 * v3))(v7 + v6 + a1 + ((a1 + v2 - ((a1 + v2) >> 16)) >> 8) - ((a1 + v2) >> 16) - 1);
}

uint64_t sub_50680()
{
  STACK[0x960] = STACK[0x880];
  STACK[0xDD0] = STACK[0x890];
  STACK[0xF88] = STACK[0x878];
  STACK[0xA40] = STACK[0x900];
  STACK[0xF18] = STACK[0x940];
  STACK[0xE38] = STACK[0x868];
  STACK[0x9E0] = STACK[0x930];
  STACK[0xCE0] = STACK[0x870];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_507B0()
{
  STACK[0x870] = ((&STACK[0x9DC] ^ 0x7FFFE562BF3EDDFALL) - 0x7FFFE562BF3EDDFALL + ((2 * &STACK[0x9DC]) & 0xFFFFCAC57E7DBBF0)) % 0x25;
  STACK[0x868] = (v0 + v1 - 1663) ^ 0x797B2CB5;
  v4 = STACK[0xD00];
  STACK[0x878] = STACK[0xCD0];
  v5 = *(v3 + 8 * v1);
  STACK[0x8C0] = STACK[0x938] + 908;
  STACK[0x8B0] = 1913485891 * ((((2 * (v2 - 208)) | 0x5D78E3BBF0E4FA32) - (v2 - 208) - 0x2EBC71DDF8727D19) ^ 0xD8D8C9A659E9A33);
  STACK[0x930] = 434465113 * ((((2 * (v2 - 208)) | 0x639EA2C850D7452CLL) - (v2 - 208) - 0x31CF5164286BA296) ^ 0x38E9F8BBDDC988C9);
  LODWORD(STACK[0x910]) = (v0 + 1201759676) & 0x1EC16C91;
  LODWORD(STACK[0x928]) = v0 + 1201759676;
  LODWORD(STACK[0x908]) = (v0 + 1201759676) ^ 0x8E;
  STACK[0x900] = 434465113 * ((v2 - 208) ^ 0x926A9DFF5A22A5FLL);
  STACK[0x8F8] = 434465113 * ((((v2 - 208) | 0x1792AEA4C3260F84) - (v2 - 208) + ((v2 - 208) & 0xE86D515B3CD9F078)) ^ 0x1EB4077B368425DBLL);
  v6.i64[0] = 0x100000001;
  v6.i64[1] = 0x100000001;
  *&STACK[0x8A0] = vdupq_n_s32(0x3E8E6658u);
  *&STACK[0x890] = vnegq_f32(v6);
  *&STACK[0x880] = vdupq_n_s32(0x9F47332C);
  return v5();
}

uint64_t sub_509D8@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = (v1 - 734251783) ^ (1913485891 * ((v3 - 208) ^ 0x9DECE72A));
  *v2 = a1;
  v5 = (*(v4 + 8 * (v1 ^ 0xA53)))(v3 - 208);
  return (*(STACK[0x948] + 8 * v1))(v5);
}

uint64_t sub_50A7C@<X0>(int a1@<W8>)
{
  v4 = a1 | LODWORD(STACK[0x308]);
  v5 = ((v4 >> (STACK[0x308] & 0x16) >> (STACK[0x308] & 0x16 ^ 0x16)) + (v4 << 10)) ^ __ROR4__(STACK[0x538] & LODWORD(STACK[0x308]), 22);
  LODWORD(STACK[0x8F8]) = v1 ^ v4;
  v6 = STACK[0x868];
  v7 = *(STACK[0x868] + 4 * v3);
  LODWORD(STACK[0x790]) = (v7 << ((-13 * ((((v1 ^ v4) & 0xB8 ^ 0xB8) + ((v1 ^ v4) & 0xB8)) & 0xF0)) & 0xF0)) | WORD1(v7);
  v8 = LODWORD(STACK[0x630]);
  v9 = *(v6 + ((v8 >> 22) & 0x3FC)) ^ __ROR4__(*(v6 + 4 * BYTE1(v8)), 16);
  v10 = *(v6 + 4 * v2);
  LODWORD(STACK[0x6CC]) = v10;
  v11 = v9 ^ __ROR4__(*(v6 + 4 * (v8 >> ((BYTE2(v10) & 0x10 ^ 0x10) + (BYTE2(v10) & 0x10u)))), 8);
  LODWORD(STACK[0x768]) = *(v6 + ((LODWORD(STACK[0x520]) >> 22) & 0x3FC)) ^ __ROR4__(*(v6 + 4 * LODWORD(STACK[0x520])), 24) ^ __ROR4__(*(v6 + 4 * BYTE1(LODWORD(STACK[0x520]))), 16) ^ __ROR4__(*(v6 + 4 * BYTE2(LODWORD(STACK[0x520]))), 8);
  LODWORD(v8) = v5 ^ 0xFB2D81CA;
  v12 = *(v6 + 4 * STACK[0x6E8]);
  v13 = __PAIR64__(v12, __ROR4__(v8, 10));
  LODWORD(STACK[0x690]) = a1 ^ LODWORD(STACK[0x800]) ^ v13;
  LODWORD(v13) = v12;
  v14 = v13 >> 24;
  v15 = *(v6 + 4 * STACK[0x6D0]);
  v16 = 5 * (STACK[0x7B8] ^ 0x6B0);
  LODWORD(STACK[0x628]) = v16;
  v17 = *(v6 + 4 * STACK[0x860]);
  v18 = v17 >> (((~(v15 << (v16 ^ 0x5C)) + v15) ^ v15) & 8);
  if ((v18 & 4) != 0)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2147483644;
  }

  v20 = *(v6 + 4 * STACK[0x4A0]);
  LODWORD(STACK[0x6E8]) = v20;
  if ((v14 & v11 & 0x4000000) != 0)
  {
    v21 = -(v11 & 0x4000000);
  }

  else
  {
    v21 = v11 & 0x4000000;
  }

  v22 = 2 * STACK[0x870];
  v23 = STACK[0x870];
  STACK[0x870] = STACK[0x870];
  v24 = STACK[0x930];
  v25 = v22 & 0xC0C0C0C0 ^ 0x60606060;
  v26 = STACK[0x850];
  v27 = STACK[0x850] & v25;
  v28 = v27 + (v25 & STACK[0x838]);
  if (v20)
  {
    v29 = v22 & 0xC0C0C0C0 ^ v24 ^ 0x80808080;
  }

  else
  {
    v29 = STACK[0x930];
  }

  v30 = STACK[0x6C0];
  v31 = STACK[0x6C0] & 0xF2F2F2F2;
  if (v28)
  {
    v32 = v31 ^ v24 ^ 0x82828282;
  }

  else
  {
    v32 = STACK[0x930];
  }

  v33 = v31 ^ 0x79797979;
  HIDWORD(v34) = v32 & (v31 ^ 0x79797979) ^ 0xA09DC33;
  LODWORD(v34) = HIDWORD(v34);
  HIDWORD(v34) = ((24844484 - ((2 * (v34 >> 1)) & 0xA09DC32)) ^ ((v34 >> 1) - 2088118955)) + 2 * ((24844484 - ((2 * (v34 >> 1)) & 0xA09DC32)) & ((v34 >> 1) - 2088118955));
  LODWORD(v34) = HIDWORD(v34);
  v35 = STACK[0x7D8];
  v36 = STACK[0x848];
  v37 = STACK[0x890];
  v38 = STACK[0x7E8];
  LODWORD(STACK[0x860]) = ((v34 >> 31) >> STACK[0x890]) ^ ((STACK[0x7D8] & (v31 ^ 0x79797979)) << STACK[0x848]) ^ __ROR4__(*(v6 + 4 * BYTE1(v38)), 16) ^ __ROR4__(*(v6 + 4 * STACK[0x7E8]), 24) ^ *(v6 + ((v38 >> 22) & 0x3FC)) ^ __ROR4__(*(v6 + 4 * BYTE2(v38)), 8);
  v39 = v23 & 0x79797979;
  v40 = STACK[0x878];
  v41 = STACK[0x840];
  v42 = STACK[0x8F0];
  v43 = LODWORD(STACK[0x708]);
  STACK[0x6D0] = ((v26 & ((2 * (v23 & 0x79797979)) ^ 0x79797979)) << STACK[0x878]) ^ ((LODWORD(STACK[0x840]) & ((2 * (v23 & 0x79797979)) ^ 0x79797979)) >> STACK[0x8F0]) ^ __ROR4__(*(v6 + 4 * LODWORD(STACK[0x708])), 24) ^ *(v6 + ((v43 >> 22) & 0x3FC)) ^ __ROR4__(*(v6 + 4 * BYTE2(v43)), 8) ^ __ROR4__(*(v6 + 4 * BYTE1(v43)), 16);
  LODWORD(v34) = (((v41 & v33) >> v42 >> 20) | ((v41 & v33) >> v42 << 12)) ^ __ROR4__((v26 & v33) << v36, 20) ^ 0x52378276;
  HIDWORD(v34) = v34;
  LODWORD(STACK[0x708]) = ((LODWORD(STACK[0x480]) - v33) ^ v33) + 2 * ((LODWORD(STACK[0x480]) - v33) & v33);
  LODWORD(STACK[0x808]) = (v34 >> 12) ^ __ROR4__(*(v6 + 4 * LODWORD(STACK[0x6F0])), 24) ^ __ROR4__(*(v6 + 4 * BYTE1(LODWORD(STACK[0x6F0]))), 16) ^ *(v6 + ((LODWORD(STACK[0x6F0]) >> 22) & 0x3FC)) ^ __ROR4__(*(v6 + 4 * BYTE2(LODWORD(STACK[0x6F0]))), 8);
  LODWORD(v43) = v17 << 24;
  v44 = (v19 + ((v17 << 24) | ~v18)) & 0x4F829BFD ^ 0x4F829BF9 | ((v17 << 24) | ~v18) & 0x4F829BFD;
  LODWORD(STACK[0x6B8]) = v44 - 785227334 - ((2 * v44) & 0x82040370);
  v45 = (v21 + v14) ^ v11 & 0xFBFFFFFF;
  v46 = 1377 * (STACK[0x698] ^ 0x23) + 5915592;
  v47 = *(STACK[0x648] + v46 - 4864 * (((7064091 * v46) >> 32) >> 3));
  v48 = ((((v21 + v14) ^ v11) & 0xBC ^ 0xBC) + (((v21 + v14) ^ v11) & 0xBC)) & 0xFFFFFFBF ^ ((((v47 ^ 0x5D) - 93) ^ ((v47 ^ 0xFFFFFFC2) + 62) ^ ((v47 ^ 0xFFFFFFE9) + 23)) - 28);
  STACK[0x800] = ((2 * v48) & 0xCCCCCCCC) + (v48 ^ 0x66666666);
  v49 = v30 & 0xC0C0C0C0 ^ 0x60606060;
  v50 = v41 & v49;
  LODWORD(STACK[0x418]) = ((v35 & v49) << v40) ^ (v50 >> v42) ^ LODWORD(STACK[0x7F8]);
  v51 = LODWORD(STACK[0x4B0]) + 205401185 * (v28 - v25);
  v52 = v42;
  LODWORD(STACK[0x428]) = (v27 << v36) ^ ((v24 & v25) >> v37) ^ LODWORD(STACK[0x640]);
  STACK[0x7B0] = (((v29 & v25) >> v42) | ((v35 & v25) << v40)) ^ STACK[0x798];
  v53 = v37;
  LODWORD(STACK[0x410]) = (((v26 & v49) << v36) + (v50 >> v37)) ^ STACK[0x490];
  LODWORD(v34) = __ROR4__(__ROR4__(v39, 2) ^ 0xFFD65CB2, 29);
  LODWORD(STACK[0x3B8]) = v45 ^ (((v35 & (v34 ^ 0x87CB9CEE)) << v40) | ((v24 & (v34 ^ 0x87CB9CEE)) >> v37));
  v54 = v18 | v43;
  v55 = v22 & 0xBEBEBEBE ^ 0x5F5F5F5F;
  v56 = (v26 & v55) << v40;
  LODWORD(STACK[0x2E0]) = v55;
  v57 = (v24 & v55) >> v42;
  LODWORD(STACK[0x788]) ^= v49 ^ (v35 | 0xC0E0A000 | ((v35 & 0x2B1643F7 ^ -(v35 & 0x2B1643F7) ^ (722879479 - (v35 & 0x2B1643F7 ^ 0x2B1643F7))) + 722879479)) & v49 ^ (v56 | v57) ^ v54 ^ __ROR4__(STACK[0x6CC], 16);
  v58 = v30 & 0xBEBEBEBE ^ 0x5F5F5F5F;
  v59 = (v35 & v58) << v36;
  LODWORD(v42) = STACK[0x6E0] ^ v59;
  v60 = *(v6 + 4 * STACK[0x5F8]);
  v61 = (v41 & v58) >> v37;
  LODWORD(STACK[0x798]) = v59 | v61;
  HIDWORD(v34) = *(v6 + 4 * STACK[0x700]);
  LODWORD(v34) = HIDWORD(v34);
  v62 = (v34 >> 8);
  STACK[0x448] = v62;
  LODWORD(STACK[0x6F0]) = v42 ^ v61 ^ __ROR4__(v60, 24) ^ v62 ^ LODWORD(STACK[0x790]);
  LODWORD(v61) = v56 + v57;
  v63 = STACK[0x580];
  LODWORD(v62) = STACK[0x580] & 0xF1F1F1F0 ^ 0xF8F8F8F8;
  v64 = (v24 & v62) >> v37;
  v65 = v26 & v62;
  v66 = (v65 << v40) | v64;
  v67 = LODWORD(STACK[0x690]) ^ 0x72BECB60;
  v68 = STACK[0x928];
  LODWORD(v57) = (2 * (STACK[0x928] & 0xF8F8F8F8)) ^ 0xF8F8F8F8;
  LODWORD(STACK[0x818]) ^= ((v35 & v57) << v36) ^ ((v57 & v41) >> v52);
  LODWORD(STACK[0x7F8]) = v61 ^ STACK[0x688] ^ __ROR4__(v15, 24);
  STACK[0x420] = v51 ^ (((v35 | v57) - (v57 ^ v35)) << v40) ^ ((v57 & v24) >> v52);
  LODWORD(STACK[0x400]) = (v65 << v36) ^ ((v41 & v62) >> v53) ^ LODWORD(STACK[0x758]);
  LODWORD(v61) = v63 & 0x17171716 ^ 0x8B8B8B8B;
  v69 = (v24 & v61) >> v53;
  LODWORD(STACK[0x3B0]) = (((v26 & v61) << v40) | v69) ^ STACK[0x858];
  LODWORD(v65) = v30 & 0x17171716 ^ 0x8B8B8B8B;
  v70 = (v41 & v65) >> v52;
  STACK[0x7E8] = (((v35 & v65) << v36) + v70) ^ LODWORD(STACK[0x4F8]);
  STACK[0x408] = LODWORD(STACK[0x6B0]) ^ (((v35 & v61) << v36) | v69);
  LODWORD(v61) = ((v26 & v65) << v40) | v70;
  v71 = STACK[0x4A0];
  LODWORD(v65) = *(v6 + 4 * BYTE1(v71));
  LODWORD(STACK[0x790]) = v61 ^ STACK[0x560];
  LODWORD(v70) = v30 & 0xB9B9B9B8 ^ 0xDCDCDCDC;
  v72 = v26 & v70;
  LODWORD(STACK[0x6E8]) = ((v72 << v36) + ((v24 & v70) >> v53)) ^ __ROR4__(v65, 16) ^ __ROR4__(STACK[0x6E8], 24) ^ *(v6 + ((v71 >> 22) & 0x3FC)) ^ __ROR4__(*(v6 + 4 * BYTE2(v71)), 8);
  LODWORD(STACK[0x440]) = ((v72 << v36) + ((v41 & v70) >> v52)) ^ __ROR4__(*(v6 + 4 * BYTE1(STACK[0x770])), 16) ^ *(v6 + 4 * HIBYTE(LODWORD(STACK[0x4D0]))) ^ __ROR4__(*(v6 + 4 * STACK[0x680]), 24) ^ __ROR4__(*(v6 + 4 * STACK[0x6A0]), 8);
  v73 = v63 & 0xCFCFCFCE ^ 0xE7E7E7E7;
  LODWORD(v71) = ((v26 & v73) << v36) | ((v24 & v73) >> v52);
  LODWORD(v61) = v30 & 0xCFCFCFCE ^ 0xE7E7E7E7;
  LODWORD(STACK[0x550]) = (((v35 & v61) << v40) | ((v41 & v61) >> v53)) ^ STACK[0x7E0];
  LODWORD(STACK[0x5B0]) = (LODWORD(STACK[0x600]) ^ -LODWORD(STACK[0x600]) ^ (v71 - (v71 ^ LODWORD(STACK[0x600])))) + v71;
  LODWORD(STACK[0x7E0]) = (v66 ^ v67) & 0x3F9FACB ^ __ROR4__((((v66 & 0xFC060534) >> 13) | ((v66 & 0xFC060534) << 19)) ^ __ROR4__(v67 & 0xFC060534, 13) ^ 0x4A07F459, 19);
  v74 = v41;
  v75 = STACK[0x838];
  LODWORD(STACK[0x770]) = v70 - 557753037 - (v70 & LODWORD(STACK[0x838])) + STACK[0x5E8] - v72 + (LODWORD(STACK[0x6B8]) ^ 0xBF8E588B);
  LODWORD(v71) = v63 & 0xB9B9B9B8 ^ 0xDCDCDCDC;
  v76 = v41 & v71;
  LODWORD(STACK[0x810]) = ((685304181 * (v76 + (v71 & LODWORD(STACK[0x810])))) ^ (LODWORD(STACK[0x588]) - 685304181 * v71)) + 2 * ((685304181 * (v76 + (v71 & LODWORD(STACK[0x810])))) & (LODWORD(STACK[0x588]) - 685304181 * v71));
  v77 = ((v35 - (v35 ^ 0x52A8BD97)) ^ 0xFFFFFFFE) + v35;
  v78 = (v35 & v71) << v40;
  v79 = v78 ^ ((v24 & v71) >> v53);
  LODWORD(v71) = v78 ^ (v76 >> v52);
  v80 = LODWORD(STACK[0x768]) == v71;
  LODWORD(STACK[0x700]) = LODWORD(STACK[0x768]) ^ v71;
  LODWORD(STACK[0x5D8]) = ((v26 & (v30 & 0x6D6D6D6C ^ 0xB6B6B6B6)) << v36) ^ LODWORD(STACK[0x500]) ^ ((v24 & (v30 & 0x6D6D6D6C ^ 0xB6B6B6B6)) >> v52);
  LODWORD(STACK[0x5A8]) = (((v26 & v61) << v36) + ((v24 & v61) >> v53)) ^ STACK[0x670];
  LODWORD(v61) = v63 & 0x6D6D6D6C ^ 0xB6B6B6B6;
  v81 = v77 ^ 0x52A8BD97;
  LODWORD(STACK[0x430]) = (((v35 & v73) << v40) + ((v41 & v73) >> v52)) ^ LODWORD(STACK[0x7A8]);
  LODWORD(STACK[0x6A0]) = (((v77 ^ 0x52A8BD97) & v61) << v40) ^ ((v41 & v61) >> v53) ^ LODWORD(STACK[0x708]);
  v82 = ((v26 & v61) << v36) + ((v24 & v61) >> v53);
  v83 = v68 ^ 0x49494949;
  if (v80)
  {
    v83 = 917943990;
  }

  v84 = v83 & v68;
  v85 = 2 * v84;
  if ((v84 & 2) != 0)
  {
    v86 = -4;
  }

  else
  {
    v86 = 4;
  }

  LODWORD(v88) = __ROR4__((v86 + v85) ^ 0x17BE177B, 23) ^ 0x11439342;
  HIDWORD(v88) = v88;
  v87 = v88 >> 9;
  v89 = v87 % 0x101;
  v90 = STACK[0x910];
  v91 = *(STACK[0x910] + 4 * (1079 * v89 + 278382 - 2120 * ((2025928 * (1079 * v89 + 278382)) >> 32)));
  v92 = (((v91 ^ 0xC8E440CD) + 924565299) ^ ((v91 ^ 0x991DF7B9) + 1726089287) ^ ((v91 ^ 0x80CBD6CE) + 2134124850)) + 1444679079;
  v93 = (v92 * v92) << (v85 & 2) << (v85 & 2 ^ 2);
  v94 = v92 & 2;
  if ((v93 & v92 & 2) != 0)
  {
    v94 = -v94;
  }

  v95 = v94 + v93;
  LODWORD(STACK[0x768]) = (((v87 & v74) >> v52) | ((v87 & v81) << v40)) ^ STACK[0x738];
  LODWORD(STACK[0x758]) = v82 ^ STACK[0x4C0];
  v96 = v63 & 0xA6A6A6A6 ^ 0x53535353;
  v97 = ((v26 & v96 & 0x200) + (v75 & v96)) ^ v26 & v96 & 0xF7F7F5F7 ^ v96;
  STACK[0x708] = v97 ^ v79 ^ (v97 >> 1) ^ __ROR4__(*(v6 + 4 * STACK[0x800]), 24) ^ __ROR4__(*(v6 + 4 * BYTE1(STACK[0x698])), 16) ^ __ROR4__(*(v6 + 4 * BYTE2(STACK[0x698])), 8) ^ *(v6 + ((STACK[0x698] >> 22) & 0x3FC));
  STACK[0x878] = v40;
  v98 = (v26 & v96) << v40;
  STACK[0x858] = ((__ROR4__((((v24 & v96) >> v52 >> 16) | ((v24 & v96) >> v52 << 16)) ^ __ROR4__(v98, 16) ^ 0x80FF9809, 16) ^ 0x980980FF) + 2 * (v98 & ((v24 & v96) >> v52))) ^ STACK[0x5F0];
  v99 = (2 * v68) & 0xA6A6A6A6 ^ 0x53535353;
  STACK[0x438] = ((((v77 ^ 0x52A0B597) & v99) << v36) + ((v99 & v74) >> v53)) ^ LODWORD(STACK[0x810]);
  LODWORD(STACK[0x5B8]) = LODWORD(STACK[0x358]) ^ (((v81 & v99) << v36) | ((v99 & v24) >> v52));
  LODWORD(STACK[0x810]) = LODWORD(STACK[0x798]) ^ LODWORD(STACK[0x8F8]) ^ 0xD37C3CD2 ^ __ROR4__(*(v6 + 4 * STACK[0x710]), 16) ^ *(v90 + 4 * (1079 * v89 + 555685 - 2120 * ((2025928 * (1079 * v89 + 555685)) >> 32))) ^ (v89 - 785227334 - ((2 * v89) & 0x374)) ^ v92 & 0xFFFFFFFD ^ v95;
  STACK[0x738] = v74 ^ 0xA6A6A6B0;
  LODWORD(STACK[0x5E0]) = (v98 | ((v74 & v96) >> v53)) ^ LODWORD(STACK[0x324]);
  STACK[0x690] = LODWORD(STACK[0x7D0]);
  v100 = LODWORD(STACK[0x808]) ^ 0x27652378u;
  LODWORD(STACK[0x590]) = LODWORD(STACK[0x7E0]) ^ 0xFE8B2940;
  STACK[0x798] = (LODWORD(STACK[0x770]) + 1);
  LODWORD(STACK[0x838]) = v81;
  v101 = *(STACK[0x948] + 8 * STACK[0x7B8]);
  STACK[0x7D8] = LODWORD(STACK[0x818]);
  v102 = LODWORD(STACK[0x488]);
  v103 = STACK[0x870];
  STACK[0x610] = LODWORD(STACK[0x588]);
  LODWORD(STACK[0x7D0]) = STACK[0x6E8];
  LODWORD(STACK[0x540]) = STACK[0x4D0];
  STACK[0x710] = LODWORD(STACK[0x880]);
  STACK[0x6E0] = LODWORD(STACK[0x860]);
  STACK[0x7E0] = v100;
  STACK[0x8F8] = LODWORD(STACK[0x650]);
  return v101(((2 * v68) & 0x61616160 ^ 0xB0B0B0B0) & v24, v102, 516, v103, 258);
}

uint64_t sub_518F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v15 = v10 + 644;
  v16 = *(v13 + 1272) + v11;
  v17 = *(v9 + (((v16 & 0xFFFFFFF8) + 916900720) & v8));
  v18 = (__ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8) + v17) ^ v12;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a3;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = ((((v22 + v21) << (((v15 - 71) | 0xC5u) + 58)) | 0x3C3BA0848616C9B2) - (v22 + v21) + 0x61E22FBDBCF49B27) ^ 0x99FC23115DE9E5A6;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0x9B69DC447A16E1FCLL) - 0x324B11DDC2F48F02) ^ 0x731815BD701263C6;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a5;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x576BB8BB4048E8D6) - (v30 + v29) - 0x2BB5DC5DA024746CLL) ^ 0x5BC84EEA8376CB92;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a6;
  v34 = (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ a8) >> (8 * (v16 & 7u))) ^ *v16;
  return (*(v14 + 8 * v15))(1915944507, 1463);
}

uint64_t sub_51A90()
{
  v2 = SLOBYTE(STACK[0x1093]);
  LODWORD(STACK[0x940]) = STACK[0x1084];
  v3 = LODWORD(STACK[0x1088]);
  v4 = LODWORD(STACK[0x108C]);
  return (*(v1 + 8 * (v0 - 2038113065)))();
}

uint64_t sub_51ADC()
{
  v3 = v1[98];
  v4 = v1[49];
  v1[183] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0xF2)))(v4);
}

uint64_t sub_51DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x930]) = a68 >> 8;
  v71 = STACK[0x250];
  LODWORD(STACK[0x890]) = LODWORD(STACK[0x250]) + 1427;
  STACK[0x670] = LODWORD(STACK[0x720]) ^ 0x14E32F93u;
  LODWORD(STACK[0x6E8]) = LODWORD(STACK[0x810]) ^ 0xD13261BA;
  LODWORD(STACK[0x5A8]) = v70 & ~STACK[0x858];
  STACK[0x830] = (v71 - 310) & STACK[0x878];
  STACK[0x810] = STACK[0x7B8];
  v72 = *(STACK[0x948] + 8 * v71);
  LODWORD(STACK[0x638]) = STACK[0x860];
  STACK[0x840] = STACK[0x7B0];
  LODWORD(STACK[0x5C8]) = v68;
  STACK[0x5E8] = a65;
  LODWORD(STACK[0x568]) = STACK[0x548];
  v73 = STACK[0x7F8];
  LODWORD(STACK[0x460]) = STACK[0x7F8];
  LODWORD(STACK[0x720]) = STACK[0x558];
  LODWORD(STACK[0x7D0]) = STACK[0x850];
  STACK[0x688] = LODWORD(STACK[0x650]);
  v74 = STACK[0x870];
  LODWORD(STACK[0x708]) = STACK[0x560];
  LODWORD(STACK[0x808]) = STACK[0x7C8];
  LODWORD(STACK[0x590]) = v69;
  LODWORD(STACK[0x880]) = STACK[0x28C];
  LODWORD(STACK[0x4F0]) = STACK[0x7E0];
  STACK[0x560] = STACK[0x698];
  LODWORD(STACK[0x850]) = v73;
  LODWORD(STACK[0x650]) = STACK[0x618];
  LODWORD(STACK[0x7B0]) = STACK[0x6A8];
  return v72(a4);
}

uint64_t sub_51FC8()
{
  LODWORD(STACK[0x8C0]) = (v5 + 1507717968) & 0xA62207F1;
  v7 = (2 * v5) ^ 0x31C;
  *(v2 + 3) = v5 - 644 - 434465113 * ((v4 - 352863638 - 2 * (v4 & 0xEAF7BA6A)) ^ 0x1F559035);
  *v2 = v0;
  v8 = v0;
  (*(v1 + 8 * (v5 ^ 0xF6C)))(v6 - 208);
  v9 = *(v2 + 2) ^ 0x4B5F68BB;
  LODWORD(STACK[0x890]) = v7;
  v3[19] = v7 ^ v9;
  *(v2 + 3) = v5 - 644 - 434465113 * ((v6 + 1826844388 - 2 * ((v6 - 208) & 0x6CE36FB4)) ^ 0x994145EB);
  *v2 = v8;
  (*(STACK[0x948] + 8 * (v5 + 1300)))(v6 - 208);
  v3[20] = *(v2 + 2) ^ 0x4B5F60F9;
  LODWORD(STACK[0x8B0]) = v5 + 853793204;
  *v2 = v8;
  *(v2 + 3) = v5 + 853793204 - 1600728529 * ((((v6 - 208) | 0x4B2E3F62) - ((v6 - 208) & 0x4B2E3F62)) ^ 0xCE1BF523);
  LODWORD(STACK[0x8A0]) = v5 ^ 0xF67;
  (*(STACK[0x948] + 8 * (v5 ^ 0xF67)))(v6 - 208);
  v3[21] = *(v2 + 2) ^ 0xC0403EE8;
  v10 = 1600728529 * ((((2 * (v6 - 208)) | 0x33728D14) - (v6 - 208) + 1715911030) ^ 0x1C8C8CCB);
  *(v2 + 2) = (v5 + 2065904999) ^ v10;
  *v2 = v10 ^ 0xAB5B8DAE;
  *(v2 + 2) = v8;
  (*(STACK[0x948] + 8 * (v5 + 1292)))(v6 - 208);
  v3[22] = *(v2 + 1) ^ 0xC0403EE8;
  *(v2 + 1) = v5 - 1038737349 - 1183051249 * ((v6 - 843161372 - 2 * ((v6 - 208) & 0xCDBE61B4)) ^ 0x285DB768);
  *(v2 + 1) = v8;
  (*(STACK[0x948] + 8 * (v5 ^ 0xF64)))(v6 - 208);
  v3[23] = LODWORD(STACK[0x8C0]) ^ *v2 ^ 0xF67A0F3C;
  *(v2 + 1) = v8;
  *(v2 + 1) = v5 - 1038737349 - 1183051249 * ((((2 * (v6 - 208)) | 0x8DEC692E) - (v6 - 208) + 956943209) ^ 0x2315E24B);
  (*(STACK[0x948] + 8 * (v5 + 1308)))(v6 - 208);
  v3[24] = *v2 ^ 0xF67A0FCD;
  *(v2 + 1) = v8;
  *(v2 + 1) = v5 - 1038737349 - 1183051249 * LODWORD(STACK[0x908]);
  (*(STACK[0x948] + 8 * (v5 ^ 0xF64)))(v6 - 208);
  v3[25] = *v2 ^ 0xF67A0FCD;
  *v2 = v8;
  v11 = STACK[0x8B0];
  *(v2 + 3) = LODWORD(STACK[0x8B0]) - 1600728529 * (((v6 - 208) & 0x978AB5D1 | ~((v6 - 208) | 0x978AB5D1)) ^ 0xED40806F);
  v12 = STACK[0x8A0];
  (*(STACK[0x948] + 8 * SLODWORD(STACK[0x8A0])))(v6 - 208);
  v3[26] = *(v2 + 2) ^ 0xC0403EE8;
  *(v2 + 3) = v11 - 1600728529 * ((v6 + 1693401260 - 2 * ((v6 - 208) & 0x64EF417C)) ^ 0xE1DA8B3D);
  *v2 = v8;
  (*(STACK[0x948] + 8 * v12))(v6 - 208);
  v3[27] = *(v2 + 2) ^ 0xC0403EE8;
  *v2 = v8;
  *(v2 + 3) = v11 - 1600728529 * ((v6 - 1306863833 - 2 * ((v6 - 208) & 0xB21AD7F7)) ^ 0x372F1DB6);
  (*(STACK[0x948] + 8 * v12))(v6 - 208);
  v3[28] = *(v2 + 2) ^ 0xC0403EE8;
  *(v2 + 4) = v5 + 1252856261 * (((v6 - 208) & 0x520AF9FF | ~((v6 - 208) | 0x520AF9FF)) ^ 0x581AD12F) - 174;
  *(v2 + 1) = v8;
  v13 = (*(STACK[0x948] + 8 * (v5 ^ 0xF52)))(v6 - 208);
  v14 = STACK[0x8D0];
  return (*(STACK[0x948] + 8 * ((922 * *v2) ^ v5)))(v13);
}

uint64_t sub_524F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v9 = *(v8 + 16) + v5;
  v10 = *(*(a5 - 132921991) + (((v9 & 0xFFFFFFF8) + 916900720) & *(v6 - 464343834)));
  v11 = (__ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8) + v10) ^ 0x89F455BA1C0B015;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xD8D188F9068EB840;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x7E1F3531EE2817FLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((((v7 + 1576009083) & 0xA2100BDF) - 0x4189458F83D7C7AELL) & (2 * (v17 + v16))) - (v17 + v16) - 0x5F3B5D383E14212ELL) ^ 0x1E6859588CF2CDEALL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x8A4943FA3C1BB996;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0xF2183CDD74453CECLL) + 0x790C1E6EBA229E76) ^ 0xF68E7326668FDE70;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x3E735FFD9083B0A3;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((((v27 + v26) | 0x164A232D55FCF25BLL) - ((v27 + v26) | 0xE9B5DCD2AA030DA4) - 0x164A232D55FCF25CLL) ^ 0x30651CF29A18ED17) >> (8 * (v9 & 7u))) ^ *v9;
  return (*(a3 + 8 * v7))(a1, a2);
}

uint64_t sub_526FC@<X0>(int a1@<W1>, unsigned int a2@<W3>, int a3@<W4>, uint64_t a4@<X6>, int a5@<W8>)
{
  v19 = v18 - (v12 + a1) * (v12 + a1) + (v12 + v6) * (v12 + v6) - ((((v18 - (v12 + a1) * (v12 + a1) + (v12 + v6) * (v12 + v6)) * a2) >> 32) >> 12) * a3;
  LODWORD(v19) = *(v5 + 4 * ((v19 ^ a4) + (v10 & (2 * v19))) + v11);
  *(v8 + (((v7 * v15) >> 64) >> 12) * v9) = (v19 ^ ((v19 ^ v13) + 24) ^ ((v19 ^ 0x1E) - 106) ^ v14) - 1;
  return (*(v17 + 8 * (((v12 == 255) * v16) ^ a5)))();
}

uint64_t sub_52784@<X0>(int a1@<W8>)
{
  *v1 = 0;
  *(v1 + 8) = 0;
  return (*(v2 + 8 * ((a1 + 778) | (32 * (((a1 - 24 + a1 + 53) ^ (*(v1 + 16) == 0)) & 1)))))();
}

uint64_t sub_52814()
{
  v3 = v1[65];
  v1[114] = *(v2 + 8 * v0);
  v1[120] = v3;
  return (*(v2 + 8 * ((((v0 - 107) | 0x320) + 644) ^ v0 ^ (1017 * (v3 == 0)))))();
}

uint64_t sub_52858(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = STACK[0x518] + 4 * ((551 * v7 + v8) % 0x1D48u);
  v10 = STACK[0x518] + 4 * ((551 * v7 + 3690047) % 0x1D48u);
  v11 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v12 = *a7 ^ 0xF1E76555;
  v13 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + a3) & v12));
  v14 = LODWORD(STACK[0x52C]);
  *(v10 - 0x40E8C283FA03C307) = v13 ^ *(v9 + a2) ^ (1912024365 * v10) ^ (1912024365 * v9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + 1527793161) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v11 + LODWORD(STACK[0x52C])) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v11 + 1527793161) & v12));
  return (*(STACK[0x548] + 8 * ((818 * ((v7 ^ 0x927 ^ (1171 * (a4 ^ 0x925))) + 2 * (v7 & 1u) < 0x100)) ^ a4)))(0);
}

uint64_t sub_529C8@<X0>(int a1@<W6>, int a2@<W8>)
{
  v9 = (v7 + v6);
  v10 = v9[1];
  *(v3 - 1) = *v9;
  *v3 = v10;
  return (*(v8 + 8 * ((((v5 | v4) >= 0) * ((v2 ^ (a1 - 2213)) - 2042)) ^ a2)))();
}

uint64_t sub_52A10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7, int a8)
{
  HIDWORD(v14) = -637534208 * (((a1 - 264) ^ 0x3F8) + a8) + ((1645 * (((a1 - 264) ^ 0x3F8u) + a8)) >> 7);
  LODWORD(v14) = HIDWORD(v14);
  LODWORD(v13) = v14 >> 25;
  v15 = v13 - 2696;
  if ((v13 - 2696) > 0xA87)
  {
    v15 = (v13 - 5392) % 0xA88u;
  }

  if (v13 <= 0xA87)
  {
    v13 = v13;
  }

  else
  {
    v13 = v15;
  }

  v16 = STACK[0x520];
  v17 = (v13 ^ 0x77AEFFF99D7EBF8ELL) + STACK[0x520] + ((2 * v13) & 0x13AFD7F1CLL);
  v18 = *(v17 + 0x7D70D3640ACA9706);
  v19 = *v8;
  v20 = *STACK[0x538];
  LODWORD(v17) = v17 + 1652637810;
  v21 = (v17 + *(v20 + (v19 & v12)) + v12);
  v22 = *a7 ^ 0xF1E76555;
  v23 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v17) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v21 & v22)) ^ v18 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 + 2) & v22)) ^ (110 * v17);
  LODWORD(STACK[0x508]) = a8;
  v24 = (1645 * (((v17 ^ 0xA113731A) - 2002002380) ^ ((v17 ^ 0xCEA50455) - 417486467) ^ ((v17 ^ 0x6FB67709) + 1175378465)) - 395035682) % 0xA88;
  v25 = *((v24 ^ 0xF57FF6D737DEFF4FLL) + v16 + ((2 * v24) & 0x1E9E) - 0x6023798F95A8BBLL);
  v26 = STACK[0x518] + 4 * ((v10 + 551 * a8) % 0x1D48u);
  v27 = (*(v20 + (v19 & STACK[0x540])) + v9 + v26);
  *(v26 + v11) = (v26 * a5) ^ 0x2AE76B2A ^ *(v23 + (v27 & v22)) ^ *(v23 + ((v27 - 2) & v22));
  return (*(STACK[0x548] + 8 * (a1 - 1382)))();
}

uint64_t sub_52C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v11 = *(v10 + 8 * (((((a7 + v8 - 141043008) | 0x86824A4) ^ (a7 - 191)) * (v7 == v9)) | v8));
  STACK[0x940] = a6;
  return v11();
}

uint64_t sub_52D2C@<X0>(int a1@<W8>)
{
  v7 = v2 + v5 + 248;
  v8 = *(v4 + 8) / 1000;
  STACK[0x978] -= 16;
  v9 = STACK[0x940];
  v9[1] = v8;
  v9[2] = a1;
  v9[3] = (*(v1 + 8 * (v5 ^ v3)))();
  v10 = (*(STACK[0x948] + 8 * (v6 + v5 + 44)))();
  v11 = STACK[0x948];
  *v9 = v10;
  v12 = *(v11 + 8 * v7);
  LODWORD(STACK[0x928]) = 1664525;
  v13 = STACK[0x938];
  return v12();
}

void sub_52E54(uint64_t a1)
{
  v1 = 1583996299 * ((-546060128 - (a1 | 0xDF73C8A0) + (a1 | 0x208C375F)) ^ 0x6971F640);
  v2 = *(a1 + 24) ^ v1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 64);
  v6 = *(a1 + 56) - v1;
  v7 = *(a1 + 8);
  LODWORD(v15) = v2 + 1600728529 * (((&v14 | 0x58B05285) - (&v14 & 0x58B05285)) ^ 0xDD8598C4) + 1788780833;
  v14 = v13;
  v8 = *(&off_18D8F0 + (v2 ^ 0x191)) - 939039246;
  (*&v8[8 * (v2 ^ 0xB6E)])(&v14);
  v9 = 1913485891 * (&v14 ^ 0x9DECE72A);
  v17 = v4;
  LODWORD(v16) = v6 ^ v9 ^ ((v6 ^ 0x812D2332) + 1770993610) ^ ((v6 ^ 0xD4B6A31C) + 1007990760) ^ ((v6 ^ 0x3DB5DCDD) - 719861721) ^ ((v6 ^ 0x7F73B7F7) - 1747868915) ^ 0x79AA2BC0;
  LODWORD(v14) = v9 ^ (v2 + 1826633775);
  HIDWORD(v14) = (((v5 + v7 + 1435952778) ^ 0xBC75BC51) + 1541308416 + ((2 * (v5 + v7 + 1435952778)) & 0x78EB78A2)) ^ v9;
  v15 = v13;
  (*&v8[8 * (v2 ^ 0xB42)])(&v14);
  v10 = 1600728529 * ((&v14 & 0x3221A49D | ~(&v14 | 0x3221A49D)) ^ 0x48EB9123);
  LODWORD(v14) = v10 ^ 0xC2A73561;
  LODWORD(v15) = v10 ^ (v2 + 2065905966);
  v16 = v13;
  (*&v8[8 * (v2 ^ 0xB53)])(&v14);
  *(v3 + 24) = HIDWORD(v14);
  v11 = 1600728529 * ((&v14 - 697326441 - 2 * (&v14 & 0xD66FA497)) ^ 0x535A6ED6);
  v16 = v13;
  LODWORD(v15) = v11 ^ (v2 + 2065905966);
  LODWORD(v14) = v11 ^ 0xF13E84C7;
  (*&v8[8 * (v2 ^ 0xB53)])(&v14);
  *(v3 + 28) = HIDWORD(v14);
  v14 = v13;
  HIDWORD(v15) = v2 + 323 - 434465113 * (((&v14 | 0xF9018FF3) - &v14 + (&v14 & 0x6FE7008)) ^ 0xCA3A5AC);
  (*&v8[8 * v2 + 18136])(&v14);
  *(v3 + 20) = v15;
  v14 = v13;
  HIDWORD(v15) = v2 + 323 - 434465113 * ((-214958596 - (&v14 | 0xF32FFDFC) + (&v14 | 0xCD00203)) ^ 0xF972285C);
  (*&v8[8 * (v2 ^ 0xB2B)])(&v14);
  v12 = v15 ^ 0xF9;
  if ((v15 ^ 0xF9) > 4)
  {
    v12 = (v15 ^ 0xF9) - 5;
  }

  *(v3 + 32) = v12;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_53254(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v12 = v9 - 1;
  *(*(a5 + 16) + (((v5 - a4 - 841) ^ v7) & v12)) = *(v8 + (v12 + v10));
  return (*(v11 + 8 * (((v12 != 0) * v6) | v5)))();
}

uint64_t sub_5333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = a6 - 1;
  v17 = *(*v13 + ((((v14 + v16) & 0xFFFFFFF8) + v10) & *a8));
  v18 = __ROR8__((v14 + v16) & ((v12 - 1727) - 135), 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0xE2235ACE1F5EAC0ALL) + 0x7111AD670FAF5605) ^ 0x798EE83CAE6FE610;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a5;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ v8;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0x7ED2992A44A81B0ELL) - (v28 + v27) + 0x4096B36ADDABF278) ^ 0xCADFF090E1B04BEELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a4;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0x448BA5CC22D78794) + 0x2245D2E6116BC3CALL) ^ 0x1C368D1B81E87369;
  *(v14 + v16) = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v32, 61))) ^ v9) >> (8 * ((v14 + v16) & 7))) ^ *(v11 + v16);
  return (*(v15 + 8 * ((3715 * (v16 == 0)) ^ v12)))();
}

uint64_t sub_534F0()
{
  v8 = (v0 * v3 + 57720824) % ((v1 + 114) ^ 0x31A1u);
  *(*v5 + 4 * ((v0 * v2 + 1237400) % 0xA6Fu)) = *(v4 + 4 * ((v8 ^ 0x3FFEFEE1FC37AFDDLL) + ((2 * v8) & 0x5FBA)) + 0x404780F21408CLL) ^ v6;
  return (*(v7 + 8 * ((402 * (v0 == 255)) ^ v1)))();
}

uint64_t sub_53630(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(v9 + 1416);
  v11[15] = 0;
  v11[11] = v8;
  v11[13] = v7;
  v12 = *(v9 + 632);
  return (*(v10 + 8 * (a1 ^ (a7 + 799) ^ (a1 - a4 - 17))))();
}

uint64_t sub_53664@<X0>(int a1@<W0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v9 = (a4 + 4 * v5);
  v10 = a1 & 0x80000000;
  v11 = (a3 + v6 - 1928) + v8 + v5;
  v12 = *(a4 + 4 * v11);
  v13 = v9[397] ^ ((v12 & 0x7FFFFFFE | v10) >> 1);
  *v9 = (v13 + v7 - (a5 & (2 * v13))) ^ *(&STACK[0x116C] + (v12 & 1));
  return (*(a2 + 8 * ((4047 * (v11 == 227)) ^ v6)))();
}

uint64_t sub_536D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + 908);
  v5 = vld1q_dup_f32(v4);
  return (*(a1 + 8 * v3))(v5);
}

uint64_t sub_53720(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = (((1645 * a4 + 2113825) % 0xA88u) ^ 0x7EF735FFBFA7DFFFLL) + 2 * ((1645 * a4 + 2113825) % 0xA88u) + STACK[0x520];
  v10 = *(v9 + 0x76289D5DE8A17695);
  v11 = *STACK[0x538];
  LODWORD(v9) = v9 + 1079517185;
  v12 = v9 + *(v11 + (*v7 & (v8 + ((a1 - 575) | 0x1A) - 1146)));
  v13 = *a7 ^ 0xF1E76555;
  v14 = v8 + 2;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v8) & v13)) ^ v10 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v8 + 2) & v13)) ^ (110 * v9);
  v15 = STACK[0x518] + 4 * ((551 * (((v9 ^ 0xC6442499) - 457402982) ^ ((v9 ^ 0x6A4970F5) + 1219609078) ^ ((v9 ^ 0xAC0D542A) - 1896487637)) - 1161333757) % 0x1D48);
  v16 = *(v11 + (*v7 & STACK[0x540]));
  v17 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + LODWORD(STACK[0x52C])) & v13)) ^ *(v15 + a2) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + 1527793161) & v13));
  v18 = v17 ^ (11565 * v15);
  v19 = v17 ^ (16198957 * v15);
  v20 = (v17 ^ (45 * v15));
  LODWORD(v15) = (((((v17 ^ (1912024365 * v15)) >> 15) ^ 0x5F7B7879) - 1154330904) ^ ((((v17 ^ (1912024365 * v15)) >> 15) ^ 0xEB28DD79) + 258075624) ^ ((((v17 ^ (1912024365 * v15)) >> 15) ^ 0xB453F0CE) + 1343931985)) + 466008239;
  v21 = 1645 * (BYTE2(v19) ^ 0xE7) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE2(v19) ^ 0xE7u) + 3391990)) >> 32) >> 3);
  v22 = (1645 * (((v20 ^ 0x829EBA81) + 191330222) ^ ((v20 ^ 0x52DEDE3C) - 618196207) ^ ((v20 ^ 0xD0406497) + 1505339836)) + 1711885307) % 0xA88;
  v23 = 1645 * (HIBYTE(v18) ^ 0x6B) + 3391990 - 2696 * (((12744711 * (1645 * (HIBYTE(v18) ^ 0x6Bu) + 3391990)) >> 32) >> 3);
  v24 = (v21 ^ 0xD9FF794F56FD6FFBLL) + STACK[0x520] + ((2 * v21) & 0x1FF6);
  v25 = *(v24 + 0x1B205A0E514BE699);
  v26 = v24 - 1459449851;
  v27 = 1645 * (v15 >> 9) % 0xA88;
  v28 = (v22 ^ 0xE4BD96DFDB547EF6) + STACK[0x520] + ((2 * v22) & 0x1DEC);
  LODWORD(v15) = *(v28 + 0x10623C7DCCF4D79ELL);
  LODWORD(v22) = v28 + 615219466;
  v29 = (v27 ^ 0xFFEEBBE6EE7DFFDFLL) + STACK[0x520] + ((2 * v27) & 0x1FBE);
  LODWORD(v28) = v29 + 293732385;
  v30 = *(v11 + (*v7 & v8));
  v31 = (v23 ^ 0xEF7DED8D8FDFEFC6) + STACK[0x520] + ((2 * v23) & 0x1F8C);
  v32 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 293732385 + v30 + v8) & v13));
  v33 = *(v31 + 0x5A1E5D0186966CELL);
  LODWORD(v31) = v31 + 1881149498;
  LODWORD(v29) = *(v29 - 0xACEE8894634A94BLL) ^ v32;
  v34 = v26 + v30;
  LODWORD(v11) = v29 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + v30 + v14) & v13)) ^ (110 * v28);
  LODWORD(v29) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v30 + v14) & v13)) ^ (110 * v26);
  v35 = v31 + v30;
  LODWORD(v28) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + v30 + 1186175272) & v13)) ^ v33;
  LODWORD(v11) = ((v11 ^ 0x46) << 16) | ((v25 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v34 + 1186175272) & v13)) ^ v29 ^ 0x46) << 8);
  v36 = v22 + v30;
  LOBYTE(v12) = 110 * v22;
  v37 = v36 + v14;
  LODWORD(v15) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v36 + 1186175272) & v13)) ^ v15;
  v38 = (v11 ^ 0xFBFCFF) & (v28 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v35 + v14) & v13)) ^ (110 * v31) ^ 0xB288BB) | v11 & 0x4D7700;
  v39 = STACK[0x518] + 4 * ((551 * a4 + 710790) % 0x1D48u);
  *(v39 - 0x40E8C283FA03C307) = (1912024365 * v39) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v39 + LODWORD(STACK[0x52C])) & v13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v39 + 1527793161) & v13)) ^ 0x905D9467 ^ (((v38 << 8) ^ 0x83202FF) & (v15 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v37 & v13)) ^ v12 & 0xFE ^ 0xA83A4A0B) | (v38 << 8) & 0x57C5B500);
  return (*(STACK[0x548] + 8 * ((3711 * (a4 == 255)) ^ a1)))();
}

uint64_t sub_53D4C()
{
  v3 = (*(v2 + 8 * (v0 + 1205)))(v1);
  v4 = STACK[0x8B0];
  v5 = STACK[0x8A0];
  v6 = STACK[0x948];
  *(STACK[0x8C0] + 32) = v3;
  v7 = LODWORD(STACK[0x8D0]);
  return (*(v6 + 8 * ((104 * (v3 != 0)) ^ v0)))();
}

uint64_t sub_53E50()
{
  v6 = STACK[0x6C0];
  v7 = (*(STACK[0x6C0] + (3013 * v0 + 4661111) % 0x1188u) - 125);
  v8 = 9002 * v7 + 64643362 - (((163047621 * (9002 * v7 + 64643362)) >> 32) >> 9) * v3;
  LODWORD(v8) = *(v4 + 4 * ((v8 ^ 0x1EFD9F896DF9BFD4) + ((2 * v8) & 0x7FA8)) - 0x7BF67E25B7E6FF50);
  v9 = BYTE2(v8);
  v10 = BYTE1(v8);
  v11 = ((BYTE2(v8) ^ 0x5B3005F9) + 495233970) ^ ((BYTE2(v8) ^ 0x2E1545FD) + 1755442102);
  v12 = (BYTE3(v8) & 0xF | 0xA597BB40) & (BYTE3(v8) & 0xF0 ^ 0xB7D7BF5F) | BYTE3(v8) & 0xB0;
  v13 = 3013 * ((((((v8 << 7) ^ 0x734B37B1) + 1899064431) ^ (((v8 << 7) ^ 0x98D6680E) - 1699990574) ^ (((v8 << 7) ^ 0xEB9D24BF) - 370704543)) - 41129440) >> 7) % 0x2310;
  v14 = v5 + 9002 * v0;
  v15 = v0 + 1;
  v16 = (3013 * (v11 ^ ((v9 ^ 0x75254040u) + 865201673)) - 736787219) % 0x1188;
  v17 = *(STACK[0x6C0] + (3013 * (v12 ^ 0xA597BB74) + 10093550) % 0x1188);
  v18 = (3013 * (((v10 ^ 0xDB3D7B62) - 1520117924) ^ ((v10 ^ 0xCAB5449F) - 1259542361) ^ ((v10 ^ 0x11883F02) + 1876005692)) - 349470261) % 0x1188;
  if (v13 >> 3 >= 0x231)
  {
    v19 = v13 - 4488;
  }

  else
  {
    v19 = v13;
  }

  v20 = *(v6 + v19);
  v21 = ((*(STACK[0x6C0] + v16) - 125) << 8) | (v17 << 16);
  v22 = v14 - (((v14 * v1) >> 32) >> 12) * v3;
  v23 = v20 & 0x83 | 0x1C;
  v24 = v23 ^ v20 & 0x38;
  v25 = v21 & 0xFFFFFF00 | (*(v6 + v18) - 125);
  v26 = v20 ^ (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * v23) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  *(v4 + 4 * ((v22 ^ 0x70FDFEF6F7EFFF5) + ((2 * v22) & 0x7FEA)) - 0x1C3F7FBDBDFBFFD4) = ((*&v26 | 0xFFFFFF00) & (((v25 << 8) - 2097152000) ^ 0x6DFAC903) | v26 & 0xFC) ^ 0x59BE364D;
  return (*(STACK[0x6C8] + 8 * ((82 * (v15 != 256)) ^ v2)))();
}

uint64_t sub_541C4()
{
  v3 = (*(v2 + 8 * (v1 + 1799)))();
  v4 = STACK[0x948];
  *(v0 + 160) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_5422C@<X0>(int a1@<W8>)
{
  v6 = (v4 + v3);
  v7 = v6[1];
  *(v1 - 1) = *v6;
  *v1 = v7;
  return (*(v5 + 8 * (((v2 != 0) * (((a1 + 18) | 0x800) - 2035)) ^ (a1 + 431))))();
}

uint64_t sub_54280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50)
{
  v55 = STACK[0x448] + STACK[0x3C8];
  LODWORD(STACK[0x630]) = LODWORD(STACK[0x720]) ^ LODWORD(STACK[0x838]);
  v56 = LODWORD(STACK[0x758]) - LODWORD(STACK[0x6F0]) + STACK[0x670] - (STACK[0x670] ^ LODWORD(STACK[0x6F0]));
  v57 = LODWORD(STACK[0x490]) + LODWORD(STACK[0x5D8]) - 2 * (STACK[0x490] & LODWORD(STACK[0x5D8]));
  v58 = ((LODWORD(STACK[0x3A0]) - v57) ^ v57) + 2 * ((LODWORD(STACK[0x3A0]) - v57) & v57);
  v59 = LODWORD(STACK[0x788]) - v51;
  v60 = 2 * v59 - (LODWORD(STACK[0x788]) + v59);
  v61 = STACK[0x488];
  v62 = STACK[0x488] & 0x1000;
  if ((v62 & v52) != 0)
  {
    v62 = -v62;
  }

  v63 = (v62 + v52) ^ v61 & 0xFFFFEFFF;
  LODWORD(STACK[0x450]) = 1005721561 * v63;
  v64 = ((2011443122 * v63) & 0xDB298DA4) + ((1005721561 * v63) ^ 0x6D94C6D2) - ((1005721561 * v63) >> 16) - 1838466770;
  v65 = v64 ^ (v64 >> 8);
  HIDWORD(v66) = v65;
  LODWORD(v66) = v65;
  HIDWORD(v66) = (v66 >> 21) ^ (LODWORD(STACK[0x468]) << 11) ^ ((LODWORD(STACK[0x468]) >> 21) - ((LODWORD(STACK[0x468]) >> 20) & 0xDE) - 73463697);
  LODWORD(v66) = HIDWORD(v66);
  v67 = v66 >> 11;
  v68 = v67 ^ 0xDFF73E1;
  v69 = LODWORD(STACK[0x710]) - (((v68 & 0x8500) + (v67 ^ 0xDFFF6E1)) & 0xF52F0A79 | v68);
  v70 = (v69 ^ v68) + 2 * (v69 & v68);
  v71 = ((-522954125 * v68) ^ ((-522954125 * v68) >> 16)) + (((-522954125 * v68) ^ ((-522954125 * v68) >> 16)) >> 8);
  v72 = STACK[0x690];
  v73 = 277169683 * (v71 + STACK[0x690]) - ((277169683 * (v71 + STACK[0x690])) >> 16);
  v74 = v73 + v60 + ((v73 >> 8) ^ -(v73 >> 8) ^ (v73 - ((v73 >> 8) ^ v73)));
  v75 = (v74 ^ v70) - v74 + 2 * (v74 & v70);
  v76 = ((LODWORD(STACK[0x540]) - (LODWORD(STACK[0x540]) ^ 0xB5AFD523)) ^ 0xFFFFFFFE) + LODWORD(STACK[0x540]);
  v77 = (76745137 * v59 - ((76745137 * v59) >> 16)) ^ ((76745137 * v59 - ((76745137 * v59) >> 16)) >> 8);
  v78 = v50 + v77;
  v79 = v77;
  LODWORD(STACK[0x800]) = v77;
  LODWORD(STACK[0x7D0]) = v50 + v77 + v50;
  v80 = v50 + v77 + v50 + v50;
  v81 = v56 ^ 0xF2;
  if ((v80 & 2) == 0)
  {
    v81 = 13;
  }

  v82 = (v80 & 0xFFFFFFFE ^ (v80 << 6) ^ (v80 << (-98 * (v81 & v56 | ~v56 & 0xD)))) == v80;
  v83 = STACK[0x7C8];
  v84 = STACK[0x728];
  if (v82)
  {
    v85 = STACK[0x728];
  }

  else
  {
    v85 = STACK[0x7C8];
  }

  v86 = STACK[0x870];
  if (v82)
  {
    v87 = STACK[0x870];
  }

  else
  {
    v87 = STACK[0x728];
  }

  if (v82)
  {
    v88 = v75;
  }

  else
  {
    v88 = STACK[0x870];
  }

  if (v82)
  {
    v89 = STACK[0x7C8];
  }

  else
  {
    v89 = v75;
  }

  v90 = v63 ^ v61;
  v91 = v68 ^ v65;
  v92 = STACK[0x628];
  if (v82)
  {
    v93 = v58;
  }

  else
  {
    v93 = STACK[0x628];
  }

  v94 = STACK[0x7E0];
  if (v82)
  {
    v58 = STACK[0x7E0];
  }

  v95 = v76 ^ 0xB5AFD523;
  if (v82)
  {
    LODWORD(v94) = v76 ^ 0xB5AFD523;
    v95 = STACK[0x628];
  }

  if ((v80 & 2) != 0)
  {
    v96 = v93;
  }

  else
  {
    v96 = v94;
  }

  STACK[0x7E0] = v96;
  LODWORD(STACK[0x860]) = v55;
  if (v55)
  {
    v97 = v72;
  }

  else
  {
    v97 = v90;
  }

  LODWORD(STACK[0x488]) = v97;
  LODWORD(STACK[0x6B8]) = v60;
  if (v55)
  {
    v98 = -v60;
  }

  else
  {
    v98 = v91;
  }

  LODWORD(STACK[0x490]) = v98;
  if (v55)
  {
    v99 = v91;
  }

  else
  {
    v99 = v72;
  }

  LODWORD(STACK[0x478]) = v99;
  if (v55)
  {
    v100 = v90;
  }

  else
  {
    v100 = -v60;
  }

  LODWORD(STACK[0x480]) = v100;
  if ((v55 & 2) == 0)
  {
    v99 = v100;
  }

  LODWORD(STACK[0x858]) = v99;
  if ((v55 & 2) != 0)
  {
    v101 = v97;
  }

  else
  {
    v101 = v98;
  }

  LODWORD(STACK[0x540]) = v101;
  if ((v80 & 2) != 0)
  {
    v102 = v85;
  }

  else
  {
    v102 = v88;
  }

  STACK[0x468] = v102;
  if ((v80 & 2) != 0)
  {
    v103 = v88;
  }

  else
  {
    v103 = v85;
  }

  STACK[0x670] = v103;
  if ((v80 & 2) != 0)
  {
    v104 = v95;
  }

  else
  {
    v104 = v58;
  }

  STACK[0x6A8] = v104;
  if ((v80 & 2) != 0)
  {
    v105 = v58;
  }

  else
  {
    v105 = v95;
  }

  STACK[0x7F8] = v105;
  if ((v80 & 2) != 0)
  {
    v106 = v89;
  }

  else
  {
    v106 = v87;
  }

  LODWORD(STACK[0x870]) = v106;
  if ((v80 & 2) != 0)
  {
    v107 = v87;
  }

  else
  {
    v107 = v89;
  }

  STACK[0x608] = v107;
  if ((v80 & 2) != 0)
  {
    v108 = v94;
  }

  else
  {
    v108 = v93;
  }

  STACK[0x6F0] = v108;
  v109 = ((LODWORD(STACK[0x790]) - v54) ^ v54) + 2 * ((LODWORD(STACK[0x790]) - v54) & v54);
  v110 = LODWORD(STACK[0x500]) - v53;
  v111 = v110 & v53;
  v112 = v110 ^ v53;
  v113 = LODWORD(STACK[0x850]) - 1301;
  LODWORD(STACK[0x7C8]) = v113;
  v114 = v113 ^ 0x67A;
  v115 = STACK[0x510];
  v116 = STACK[0x498];
  v117 = STACK[0x498] & LODWORD(STACK[0x510]);
  LODWORD(STACK[0x788]) = v114;
  v118 = (v116 + v115 - (v117 << (v114 - 62))) ^ v116;
  v119 = (STACK[0x548] ^ LODWORD(STACK[0x4A8])) - LODWORD(STACK[0x4A8]) + 2 * (STACK[0x548] & LODWORD(STACK[0x4A8]));
  v120 = ((LODWORD(STACK[0x4A0]) ^ -LODWORD(STACK[0x4A0]) ^ (v119 - (LODWORD(STACK[0x4A0]) ^ v119))) + v119) ^ LODWORD(STACK[0x4A0]);
  if ((STACK[0x600] & 0x100000) != 0)
  {
    v121 = -1048576;
  }

  else
  {
    v121 = 0x100000;
  }

  v122 = (LODWORD(STACK[0x768]) ^ (v121 + STACK[0x600]) ^ 0x100000) - LODWORD(STACK[0x768]) + 2 * (LODWORD(STACK[0x768]) & ((v121 + STACK[0x600]) ^ 0x100000));
  v123 = v112 + 2 * v111;
  v124 = ((76745137 * v74) >> 16) + 76745137 * v74 - 2 * ((76745137 * v74) >> 16);
  v125 = (v124 ^ (v124 >> 8) ^ LODWORD(STACK[0x638])) + (v124 ^ (v124 >> 8)) - 2 * (v124 ^ (v124 >> 8)) + 2 * ((v124 ^ (v124 >> 8)) & STACK[0x638]);
  v126 = 1005721561 * (v90 ^ STACK[0x420]);
  v127 = -522954125 * ((HIWORD(v126) + v126 - 2 * HIWORD(v126)) ^ ((HIWORD(v126) + v126 - 2 * HIWORD(v126)) >> 8) ^ v91);
  v128 = v127 & 0x300B3DEA;
  if (a6 == 1356120930)
  {
    v128 = v127;
  }

  v129 = v127 + STACK[0x558] + (v128 | v127 & 0xCFF4C215) - 2 * (v128 | v127 & 0xCFF4C215);
  v130 = (v127 ^ LODWORD(STACK[0x6B0])) - v127 + 2 * (v127 & STACK[0x6B0]);
  LODWORD(STACK[0x6E8]) = v130;
  v131 = (v127 ^ HIWORD(v127)) + ((v127 ^ HIWORD(v127)) >> 8);
  v132 = v131 + v72;
  v133 = LODWORD(STACK[0x4B0]) - v131;
  v82 = v131 == 0;
  v134 = v133 ^ v131;
  if (v82)
  {
    v135 = 0;
  }

  else
  {
    v135 = ~v134;
  }

  v136 = v134 + 2 * (v135 & v133);
  LODWORD(STACK[0x710]) = v136;
  v137 = STACK[0x5F8] & 0xA32B741B;
  v138 = STACK[0x5F8];
  STACK[0x5F8] = STACK[0x5F8];
  v139 = v120 - v132;
  v140 = 277169683 * v132;
  v141 = v139 + v140 * ((v137 ^ 0xA32B741B) + v137);
  v142 = HIWORD(v140) + v140 - 2 * HIWORD(v140);
  v143 = v142 ^ (v142 >> 8);
  LODWORD(STACK[0x638]) = v143;
  v144 = (v143 ^ v123) - 2 * v143 + 2 * (v143 & v123);
  v145 = v144 + 2 * (v144 ^ v143 ^ (v144 | v143)) + (v143 ^ -v143 ^ (v144 - (v144 ^ v143)));
  v146 = v71 ^ __ROR4__(__ROR4__(v71 ^ LODWORD(STACK[0x6D8]), 15) ^ 0x2A75FECB, 17);
  v147 = STACK[0x518];
  v148 = STACK[0x5A8];
  if (v79)
  {
    v149 = STACK[0x5A8];
  }

  else
  {
    v149 = STACK[0x518];
  }

  LODWORD(STACK[0x728]) = v149;
  v150 = STACK[0x928];
  if (v79)
  {
    v148 = STACK[0x928];
  }

  LODWORD(STACK[0x720]) = v148;
  v151 = STACK[0x740];
  if (v79)
  {
    LODWORD(v150) = STACK[0x740];
  }

  LODWORD(STACK[0x660]) = v150;
  if (v79)
  {
    v152 = v147;
  }

  else
  {
    v152 = v151;
  }

  LODWORD(STACK[0x690]) = v152;
  v153 = STACK[0x7B0];
  v154 = STACK[0x640];
  if (v79)
  {
    v155 = STACK[0x640];
  }

  else
  {
    v155 = STACK[0x7B0];
  }

  LODWORD(STACK[0x700]) = v155;
  if (v79)
  {
    v154 = v129;
  }

  LODWORD(STACK[0x740]) = v154;
  v156 = STACK[0x580];
  if (v79)
  {
    v129 = STACK[0x580];
  }

  LODWORD(STACK[0x600]) = v129;
  if ((v79 & 1) == 0)
  {
    v153 = v156;
  }

  LODWORD(STACK[0x5E8]) = v153;
  v157 = v146 ^ 0xFF65953A;
  if (v79)
  {
    v158 = v141;
  }

  else
  {
    v158 = v157;
  }

  LODWORD(STACK[0x790]) = v158;
  v159 = STACK[0x338];
  if ((v79 & 1) == 0)
  {
    v157 = STACK[0x338];
  }

  LODWORD(STACK[0x5D8]) = v157;
  if ((v79 & 1) == 0)
  {
    LODWORD(v159) = v122;
  }

  LODWORD(STACK[0x768]) = v159;
  if (v79)
  {
    v160 = v122;
  }

  else
  {
    v160 = v141;
  }

  v161 = v78;
  v162 = v78 ^ __ROR4__(((v78 & 1) << 24) ^ __ROR4__(v78, 8) ^ 0x2DD18D95, 24);
  LODWORD(STACK[0x930]) = v162;
  v163 = STACK[0x880];
  v164 = STACK[0x508];
  if ((((v162 ^ 0xD18D952D) - 1) & v162 & 0x80000000) == 0)
  {
    v165 = STACK[0x508];
  }

  else
  {
    v165 = STACK[0x880];
  }

  LODWORD(STACK[0x580]) = v165;
  v166 = v162 == -779250387;
  v167 = STACK[0x748];
  if (v166)
  {
    v168 = v164;
  }

  else
  {
    v168 = STACK[0x748];
  }

  LODWORD(STACK[0x578]) = v168;
  if (v166)
  {
    v169 = v167;
  }

  else
  {
    v169 = v125;
  }

  LODWORD(STACK[0x590]) = v169;
  if (v166)
  {
    v170 = v125;
  }

  else
  {
    v170 = v163;
  }

  if (v166)
  {
    v171 = v118;
  }

  else
  {
    v171 = v145;
  }

  v172 = STACK[0x438];
  if (v166)
  {
    v173 = STACK[0x438];
  }

  else
  {
    v173 = v118;
  }

  LODWORD(STACK[0x748]) = v173;
  v174 = STACK[0x808];
  if (v166)
  {
    v175 = v145;
  }

  else
  {
    v175 = STACK[0x808];
  }

  if (v166)
  {
    v176 = STACK[0x808];
  }

  else
  {
    v176 = v172;
  }

  if (v166)
  {
    v177 = v130;
  }

  else
  {
    LODWORD(v138) = v136;
    v177 = STACK[0x680];
  }

  v178 = STACK[0x7D0];
  v179 = STACK[0x678];
  if (STACK[0x7D0])
  {
    v180 = v109;
  }

  else
  {
    v180 = STACK[0x678];
  }

  v181 = STACK[0x698];
  if (v178)
  {
    v109 = STACK[0x698];
  }

  v182 = STACK[0x4F0];
  if (v178)
  {
    v183 = STACK[0x4F0];
  }

  else
  {
    v183 = STACK[0x698];
  }

  if (v178)
  {
    v184 = STACK[0x678];
  }

  else
  {
    v184 = STACK[0x4F0];
  }

  v185 = STACK[0x7E8];
  v186 = STACK[0x610];
  if (v178)
  {
    v187 = STACK[0x7E8];
  }

  else
  {
    v187 = STACK[0x610];
  }

  v188 = STACK[0x550];
  if (v178)
  {
    v189 = STACK[0x550];
  }

  else
  {
    v189 = STACK[0x7E8];
  }

  v190 = STACK[0x4D8];
  if (v178)
  {
    v188 = STACK[0x4D8];
  }

  else
  {
    LODWORD(v186) = STACK[0x4D8];
  }

  v191 = STACK[0x530];
  v192 = STACK[0x668];
  if (v178)
  {
    v193 = STACK[0x668];
  }

  else
  {
    v193 = STACK[0x530];
  }

  v194 = STACK[0x708];
  if (v178)
  {
    v192 = STACK[0x708];
    v194 = v56;
    v56 = STACK[0x530];
  }

  v195 = (STACK[0x7D0] & 2) == 0;
  if ((v178 & 2) != 0)
  {
    v196 = v188;
  }

  else
  {
    v196 = v187;
  }

  LODWORD(STACK[0x880]) = v196;
  if ((v178 & 2) != 0)
  {
    v197 = v187;
  }

  else
  {
    v197 = v188;
  }

  LODWORD(STACK[0x548]) = v197;
  if ((v178 & 2) != 0)
  {
    v198 = v189;
  }

  else
  {
    v198 = v186;
  }

  if ((v178 & 2) != 0)
  {
    v199 = v186;
  }

  else
  {
    v199 = v189;
  }

  STACK[0x928] = v199;
  if ((v178 & 2) != 0)
  {
    v200 = v192;
  }

  else
  {
    v200 = v56;
  }

  if (v195)
  {
    v201 = v192;
  }

  else
  {
    v201 = v56;
  }

  if (v195)
  {
    v202 = v183;
  }

  else
  {
    v202 = v180;
  }

  STACK[0x7B0] = v202;
  if (v195)
  {
    v203 = v180;
  }

  else
  {
    v203 = v183;
  }

  STACK[0x7B8] = v203;
  if (v195)
  {
    v204 = v109;
  }

  else
  {
    v204 = v184;
  }

  STACK[0x550] = v204;
  if (v195)
  {
    v205 = v184;
  }

  else
  {
    v205 = v109;
  }

  STACK[0x5E0] = v205;
  if (v195)
  {
    v206 = v193;
  }

  else
  {
    v206 = v194;
  }

  STACK[0x808] = v206;
  if (v195)
  {
    v207 = v194;
  }

  else
  {
    v207 = v193;
  }

  STACK[0x708] = v207;
  v208 = (v161 & 2) == 0;
  v209 = v161;
  LODWORD(STACK[0x460]) = v161;
  if ((v161 & 2) != 0)
  {
    v210 = v171;
  }

  else
  {
    v210 = v176;
  }

  STACK[0x5B8] = v210;
  if ((v161 & 2) != 0)
  {
    v211 = v176;
  }

  else
  {
    v211 = v171;
  }

  v212 = STACK[0x858];
  v213 = STACK[0x320];
  v214 = (v212 >> LODWORD(STACK[0x570])) + (v212 << LODWORD(STACK[0x320]));
  v215 = STACK[0x6CC];
  LODWORD(STACK[0x850]) = v198;
  v216 = STACK[0x440];
  v217 = (v198 >> STACK[0x440]) | (v198 << v215);
  v218 = STACK[0x730];
  v219 = v217 ^ LODWORD(STACK[0x730]);
  v220 = v217 & STACK[0x730];
  LODWORD(STACK[0x558]) = v217;
  v221 = v219 + 2 * v220;
  LODWORD(STACK[0x6B0]) = v221;
  v222 = ((LODWORD(STACK[0x870]) ^ 0x25619EA5) - ((2 * (LODWORD(STACK[0x870]) ^ 0x25619EA5)) & 0xE6D195A4) - 211236142) ^ 0xD6095477;
  STACK[0x6D8] = v222;
  v223 = v222 >> v216;
  v224 = ((v222 >> v216) ^ v216) + (v222 >> v216) + 2 * ((v222 >> v216) & v216);
  v225 = ((v215 - (v215 ^ 0xBF73C558)) ^ 0xFFFFFFF0) + v215;
  LODWORD(STACK[0x5A8]) = v225;
  if (v208)
  {
    v226 = v165;
  }

  else
  {
    v226 = v169;
  }

  LODWORD(STACK[0x528]) = v226;
  if (v208)
  {
    v227 = v175;
  }

  else
  {
    v227 = v173;
  }

  if (v208)
  {
    v228 = v138;
  }

  else
  {
    v228 = v177;
  }

  LODWORD(STACK[0x758]) = v228;
  v229 = v170;
  if (v208)
  {
    v230 = v170;
  }

  else
  {
    v230 = v168;
  }

  v231 = 2 * v223;
  v232 = (v224 - 2 * v223);
  v233 = v224;
  v234 = v225 ^ 0xBF73C558;
  if (v224 != 2 * v223)
  {
    LODWORD(v227) = (v227 >> (v224 - 2 * v223)) + (v227 << (v225 ^ 0x58u));
  }

  LODWORD(STACK[0x668]) = v227;
  v235 = v221 - v217;
  if (v221 != v217)
  {
    LODWORD(v211) = (v211 >> v232) + (v211 << (v221 - v217));
  }

  LODWORD(STACK[0x678]) = v211;
  v236 = (v230 << v218) ^ (v230 >> v216);
  if (!v216)
  {
    v236 = v230;
  }

  LODWORD(STACK[0x560]) = v236;
  if (v213)
  {
    v237 = v214;
  }

  else
  {
    v237 = v212;
  }

  LODWORD(STACK[0x510]) = v237;
  v238 = (STACK[0x800] & 2) == 0;
  v239 = STACK[0x728];
  v240 = STACK[0x660];
  if ((STACK[0x800] & 2) != 0)
  {
    v241 = v239;
  }

  else
  {
    v241 = v240;
  }

  STACK[0x640] = v241;
  if (v238)
  {
    v242 = v239;
  }

  else
  {
    v242 = v240;
  }

  LODWORD(STACK[0x500]) = v242;
  v243 = STACK[0x720];
  v244 = STACK[0x690];
  if (v238)
  {
    v245 = STACK[0x720];
  }

  else
  {
    v245 = STACK[0x690];
  }

  LODWORD(STACK[0x518]) = v245;
  if (v238)
  {
    v246 = v244;
  }

  else
  {
    v246 = v243;
  }

  LODWORD(STACK[0x508]) = v246;
  LODWORD(v247) = STACK[0x700];
  v248 = STACK[0x600];
  if (v238)
  {
    v249 = v248;
  }

  else
  {
    v249 = v247;
  }

  if (v238)
  {
    v247 = v247;
  }

  else
  {
    v247 = v248;
  }

  STACK[0x598] = v247;
  v250 = STACK[0x740];
  v251 = STACK[0x5E8];
  if (v238)
  {
    v252 = v250;
  }

  else
  {
    v252 = v251;
  }

  if (v238)
  {
    v253 = v251;
  }

  else
  {
    v253 = v250;
  }

  LODWORD(v254) = STACK[0x5D8];
  if (v238)
  {
    v255 = v160;
  }

  else
  {
    v255 = v254;
  }

  STACK[0x700] = v255;
  if (v238)
  {
    v254 = v254;
  }

  else
  {
    v254 = v160;
  }

  STACK[0x728] = v254;
  STACK[0x720] = v254 << v235;
  v256 = 1079 * ((v254 << v235) % 0x101);
  v257 = *(STACK[0x910] + 4 * (v256 + 1111370 - 2120 * ((2025928 * (v256 + 1111370)) >> 32)));
  v258 = *(STACK[0x910] + 4 * (v256 + 278382 - 2120 * ((2025928 * (v256 + 278382)) >> 32)));
  v259 = (((v258 ^ 0x537F7592) - 1400862098) ^ ((v258 ^ 0x39889C8B) - 965254283) ^ ((v258 ^ 0xBBC588A3) + 1144682333)) + 1444679079;
  STACK[0x660] = v259;
  v260 = v259 ^ 0xFCFDF0DB ^ (4 * v259 * v259);
  STACK[0x3C8] = v260;
  v261 = v260 + v235 - ((2039570243 * (((v257 ^ 0xFCF458B9) + 51095367) ^ ((v257 ^ 0x740B9D73) - 1946918259) ^ ((v257 ^ 0x59CDA470) - 1506649200)) - 1228039762) ^ 0xCA2272A0);
  STACK[0x858] = v261;
  v262 = (v200 << (v260 + v235 - ((67 * (((v257 ^ 0xB9) + 71) ^ ((v257 ^ 0x73) - 115) ^ ((v257 ^ 0x70) - 112)) - 82) ^ 0xA0u))) ^ (v200 >> v232);
  v263 = STACK[0x790];
  if (v238)
  {
    v264 = v263;
  }

  else
  {
    v264 = LODWORD(STACK[0x768]);
  }

  v265 = STACK[0x790];
  if (v238)
  {
    v266 = v263 + LODWORD(STACK[0x768]) - 2 * v263;
  }

  else
  {
    v266 = 0;
  }

  v267 = v233;
  if (v233 == v231)
  {
    v262 = v200;
  }

  LODWORD(STACK[0x768]) = v262;
  v268 = (v201 << v261) + (v201 >> v232);
  if (v233 == v231)
  {
    v268 = v201;
  }

  LODWORD(STACK[0x7E8]) = v268;
  if (LODWORD(STACK[0x930]) == -779250387)
  {
    v269 = STACK[0x710];
  }

  else
  {
    v269 = STACK[0x6E8];
  }

  if (LODWORD(STACK[0x930]) == -779250387)
  {
    v270 = STACK[0x680];
  }

  else
  {
    v270 = STACK[0x5F8];
  }

  v271 = STACK[0x590];
  if ((v209 & 2) != 0)
  {
    v271 = STACK[0x580];
  }

  LODWORD(STACK[0x4B0]) = v271;
  v272 = STACK[0x578];
  if ((v209 & 2) != 0)
  {
    v272 = v229;
  }

  LODWORD(STACK[0x4F0]) = v272;
  if ((v209 & 2) != 0)
  {
    v273 = v175;
  }

  else
  {
    v273 = LODWORD(STACK[0x748]);
  }

  if ((v209 & 2) != 0)
  {
    v274 = v138;
  }

  else
  {
    v274 = v177;
  }

  if ((v209 & 2) != 0)
  {
    v275 = v270;
  }

  else
  {
    v275 = v269;
  }

  if ((v209 & 2) == 0)
  {
    v269 = v270;
  }

  v276 = v234;
  v277 = STACK[0x550] << v234;
  v278 = STACK[0x550];
  v279 = (STACK[0x550] >> v232) | v277;
  if (v213)
  {
    v269 = (v269 << v213) ^ (v269 >> LODWORD(STACK[0x570]));
  }

  LODWORD(STACK[0x748]) = v269;
  v280 = STACK[0x7F0];
  v281 = (v274 << v213) | (v274 >> LODWORD(STACK[0x7F0]));
  v282 = 1079 * (v279 % 0x101);
  v283 = *(STACK[0x5C0] + 4 * (v282 + 1668134 - 2120 * ((2025928 * (v282 + 1668134)) >> 32)));
  v284 = (725634795 * (((v283 ^ 0xE9F56FC5) + 369791035) ^ ((v283 ^ 0xC24CFAAD) + 1035142483) ^ ((v283 ^ 0xFA8BF4D2) + 91491118)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v283 ^ 0xAEF1EE4B) + 1359876533) ^ ((v283 ^ 0xE3A671CB) + 475631157) ^ ((v283 ^ 0x1C65FE3A) + 1671037382)) + 520930172) | 0xA74E6B4E);
  v285 = v282 + 1111370 - 2120 * ((2025928 * (v282 + 1111370)) >> 32);
  v286 = (v266 + v265);
  LODWORD(STACK[0x790]) = v274;
  if (!v213)
  {
    v281 = v274;
  }

  LODWORD(STACK[0x740]) = v281;
  if (v267 == v231)
  {
    v287 = v252;
  }

  else
  {
    v287 = (v252 >> v232) + (v252 << v235);
  }

  LODWORD(STACK[0x5F8]) = v287;
  v288 = ((v253 >> v232) ^ (v253 << v235)) + 2 * ((v253 >> v232) & (v253 << v235));
  if (v267 == v231)
  {
    v288 = v253;
  }

  LODWORD(STACK[0x5D8]) = v288;
  v289 = (v249 >> v232) ^ (v249 << v276);
  if (v267 == v231)
  {
    v289 = v249;
  }

  LODWORD(STACK[0x5E8]) = v289;
  v290 = v273;
  STACK[0x600] = v273;
  v291 = (v273 >> v232) ^ (v273 << v235);
  v292 = STACK[0x7B8];
  v293 = STACK[0x7B8] >> v232;
  v294 = STACK[0x7B8] << v235;
  STACK[0x338] = v293;
  v295 = v293 ^ v294;
  if (v267 == v231)
  {
    v295 = v292;
  }

  LODWORD(STACK[0x698]) = v295;
  v296 = STACK[0x910];
  v297 = *(STACK[0x910] + 4 * v285);
  STACK[0x838] = v276;
  v298 = v276 - v284 + ((2039570243 * (((v297 ^ 0x1BA28DF5) - 463638005) ^ ((v297 ^ 0x2453F2A2) - 609481378) ^ ((v297 ^ 0xEEC31EED) + 289202451)) - 1228039762) ^ 0xCA2272A0);
  v299 = (STACK[0x7F8] << (v276 - v284 + ((67 * (((v297 ^ 0xF5) + 11) ^ ((v297 ^ 0xA2) + 94) ^ ((v297 ^ 0xED) + 19)) - 82) ^ 0xA0))) + (STACK[0x7F8] >> v232);
  if (v267 == v231)
  {
    v299 = STACK[0x7F8];
  }

  LODWORD(STACK[0x6E8]) = v299;
  v300 = (v286 << v298) + (v286 >> v232);
  if (v267 == v231)
  {
    v300 = v286;
  }

  LODWORD(STACK[0x710]) = v300;
  v301 = (STACK[0x700] << v298) + (STACK[0x700] >> v232);
  if (v267 == v231)
  {
    v301 = STACK[0x700];
  }

  LODWORD(STACK[0x700]) = v301;
  if (v267 == v231)
  {
    v291 = v290;
  }

  LODWORD(STACK[0x610]) = v291;
  LODWORD(STACK[0x7F8]) = v267 - v231;
  v302 = (STACK[0x6D8] << v276) | v223;
  if (v267 == v231)
  {
    v302 = STACK[0x6D8];
  }

  LODWORD(STACK[0x590]) = v302;
  v303 = ((STACK[0x670] >> v232) ^ -(STACK[0x670] >> v232) ^ ((STACK[0x670] << v235) - ((STACK[0x670] >> v232) ^ (STACK[0x670] << v235)))) + (STACK[0x670] << v235);
  if (v267 == v231)
  {
    v303 = STACK[0x670];
  }

  LODWORD(STACK[0x578]) = v303;
  v304 = STACK[0x468];
  v305 = (STACK[0x468] << v235) + (STACK[0x468] >> v216);
  v306 = STACK[0x558];
  v307 = STACK[0x6B0];
  LODWORD(STACK[0x670]) = LODWORD(STACK[0x6B0]) - LODWORD(STACK[0x558]);
  if (v307 == v306)
  {
    v305 = v304;
  }

  LODWORD(STACK[0x580]) = v305;
  v308 = (STACK[0x7B0] >> v232) | (STACK[0x7B0] << v235);
  if (v307 == v306)
  {
    v308 = STACK[0x7B0];
  }

  LODWORD(STACK[0x690]) = v308;
  v309 = (STACK[0x6A8] >> v232) ^ (STACK[0x6A8] << v235);
  if (v307 == v306)
  {
    v309 = STACK[0x6A8];
  }

  LODWORD(STACK[0x6D8]) = v309;
  v310 = (STACK[0x6F0] >> v232) | (STACK[0x6F0] << v235);
  if (v307 == v306)
  {
    v310 = STACK[0x6F0];
  }

  LODWORD(STACK[0x6A8]) = v310;
  v311 = (v264 >> v232) ^ (v264 << v235);
  if (v307 == v306)
  {
    v311 = v264;
  }

  LODWORD(STACK[0x6F0]) = v311;
  STACK[0x7B8] = v298;
  if (v298)
  {
    v312 = v279;
  }

  else
  {
    v312 = v278;
  }

  LODWORD(STACK[0x680]) = v312;
  v313 = STACK[0x7E0];
  v314 = STACK[0x7E0] >> v232;
  STACK[0x870] = v232;
  v315 = (v313 << v298) + v314;
  if (!v298)
  {
    v315 = v313;
  }

  LODWORD(STACK[0x6B0]) = v315;
  v316 = STACK[0x708];
  v317 = (STACK[0x708] << v298) + (STACK[0x708] >> v232);
  v318 = (STACK[0x808] << v298) + (STACK[0x808] >> v232);
  if (!v298)
  {
    v318 = STACK[0x808];
  }

  LODWORD(STACK[0x7B0]) = v318;
  if (!v298)
  {
    v317 = v316;
  }

  LODWORD(STACK[0x7E0]) = v317;
  v319 = v280;
  v320 = v213;
  v321 = (v275 >> v280) + (v275 << v213);
  if (!v213)
  {
    v321 = v275;
  }

  LODWORD(STACK[0x708]) = v321;
  v322 = STACK[0x928] << v235;
  v323 = STACK[0x928] >> v216;
  v324 = STACK[0x928];
  v325 = v322 & v323;
  v326 = v322 + v323;
  v327 = STACK[0x850];
  if (v216)
  {
    v327 = v306;
  }

  LODWORD(STACK[0x550]) = v327;
  v328 = v326 - 2 * v325;
  if (!v216)
  {
    v328 = v324;
  }

  LODWORD(STACK[0x558]) = v328;
  v329 = (LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x7D0])) - LODWORD(STACK[0x7D0]) + 2 * (STACK[0x4B0] & LODWORD(STACK[0x7D0]));
  v330 = STACK[0x730];
  v331 = (LODWORD(STACK[0x500]) << LODWORD(STACK[0x730])) ^ (LODWORD(STACK[0x500]) >> v216);
  if (!v216)
  {
    v331 = STACK[0x500];
  }

  LODWORD(STACK[0x4B0]) = v331;
  v332 = (LODWORD(STACK[0x518]) >> v216) + (LODWORD(STACK[0x518]) << v330);
  v333 = STACK[0x640];
  if (!v216)
  {
    v332 = STACK[0x518];
  }

  v334 = STACK[0x6CC];
  v335 = __ROR4__(__ROR4__(v333 << LODWORD(STACK[0x6CC]), 25) ^ 0xE14D079A ^ ((STACK[0x640] >> v216 >> 25) | ((STACK[0x640] >> v216) << 7)), 7) ^ 0x35C29A0F;
  if (v216)
  {
    LODWORD(v333) = v335;
  }

  LODWORD(STACK[0x4A8]) = v333;
  v336 = STACK[0x4F0];
  if (v216)
  {
    v336 = (v336 << v334) ^ (v336 >> v216);
  }

  LODWORD(STACK[0x500]) = v336;
  if (v216)
  {
    v337 = (v329 >> v216) ^ (v329 << v334);
  }

  else
  {
    v337 = v329;
  }

  LODWORD(STACK[0x518]) = v337;
  if ((STACK[0x860] & 2) != 0)
  {
    v338 = STACK[0x480];
  }

  else
  {
    v338 = STACK[0x478];
  }

  if ((STACK[0x860] & 2) != 0)
  {
    v339 = STACK[0x490];
  }

  else
  {
    v339 = STACK[0x488];
  }

  v340 = *(v296 + 4 * (1079 * (LODWORD(STACK[0x4C0]) % 0x101) + 278382 - 2120 * ((2025928 * (1079 * (LODWORD(STACK[0x4C0]) % 0x101) + 278382)) >> 32)));
  if (v213)
  {
    v341 = (v338 >> LODWORD(STACK[0x570])) + (v338 << v213);
  }

  else
  {
    v341 = v338;
  }

  v342 = (((v340 ^ 0x5F336F4F) - 1597206351) ^ ((v340 ^ 0xABC7D34C) + 1412967604) ^ ((v340 ^ 0x25C6DDB9) - 633789881)) + 1444679079;
  v343 = (((v340 ^ 0x40405AE8) - 1077959400) ^ ((v340 ^ 0xA305DF82) + 1559896190) ^ ((v340 ^ 0x3277E4D0) - 846718160)) + 1444679079;
  v344 = v342 ^ LODWORD(STACK[0x890]) ^ (4 * ((v342 * v342) ^ (v343 * v343)));
  v345 = STACK[0x540];
  if (v319)
  {
    v345 = (v345 >> v319) + (v345 << v213);
  }

  LODWORD(STACK[0x540]) = v345;
  if (v319)
  {
    v346 = (v339 >> v319) ^ (v339 << v213);
  }

  else
  {
    v346 = v339;
  }

  v347 = STACK[0x4D0] & 0x65656564 ^ 0xB2B2B2B2;
  v348 = v347 & STACK[0x760];
  v349 = STACK[0x760];
  v350 = STACK[0x7D8];
  v351 = ((v347 & STACK[0x7D8]) + v348) ^ v347 ^ LODWORD(STACK[0x780]) ^ ((((v347 & STACK[0x7D8]) + v348) ^ v347) >> 1);
  v352 = v332 ^ v346;
  v353 = STACK[0x688];
  v354 = STACK[0x688] & 0x200000;
  if ((v352 & v354) != 0)
  {
    v355 = -v354;
  }

  else
  {
    v355 = STACK[0x688] & 0x200000;
  }

  if ((v351 & 0x10) != 0)
  {
    v356 = -32;
  }

  else
  {
    v356 = 32;
  }

  v82 = v344 == v343;
  v357 = 76745137 * (LODWORD(STACK[0x638]) + LODWORD(STACK[0x6B8])) - ((76745137 * (LODWORD(STACK[0x638]) + LODWORD(STACK[0x6B8]))) >> 16);
  STACK[0x6B8] = (v357 ^ (v357 >> 8)) + LODWORD(STACK[0x458]);
  v358 = LODWORD(STACK[0x800]) + LODWORD(STACK[0x6A0]);
  LODWORD(STACK[0x800]) = v358;
  v359 = LODWORD(STACK[0x930]) ^ (LODWORD(STACK[0x460]) >> 8);
  v360 = STACK[0x508];
  v361 = v344 ^ v343;
  v362 = STACK[0x810];
  v363 = STACK[0x830];
  v364 = (((v344 ^ v343) & v347) >> STACK[0x830]) | (v348 << STACK[0x810]);
  v365 = v351;
  LODWORD(STACK[0x850]) = v351;
  v366 = v351 % 0x101;
  LODWORD(STACK[0x640]) = v366;
  LODWORD(STACK[0x808]) = 1079 * v366;
  v367 = *(v296 + 4 * (1079 * v366 + 278382 - 2120 * ((2025928 * (1079 * v366 + 278382)) >> 32)));
  LODWORD(STACK[0x638]) = v367;
  v368 = 1079 * v366 + 1111370;
  LODWORD(STACK[0x7D0]) = v368;
  v369 = *(v296 + 4 * (v368 % (((v366 + 1030) & 0x48 ^ 0x848) + ((v366 + 1030) & 0x48))));
  v370 = ((v367 ^ 0xAE4A14BA) + 1370876742) ^ ((v367 ^ 0x65707F82) - 1701871490) ^ ((v367 ^ 0x1A080A82) - 436734594);
  LODWORD(STACK[0x930]) = 2 * v365;
  v371 = (2 * v365) & 0x65656564;
  v372 = v356 + v371;
  v373 = v372 ^ 0xB2B2B292;
  v374 = v349 ^ 0xB2B2B292 ^ v372;
  v375 = STACK[0x6D0] + ((v370 + 1444679079) ^ (4 * (v370 + 1444679079) * (v370 + 1444679079)) ^ 0xDB);
  LODWORD(STACK[0x6D0]) = 174;
  v376 = v375 + ((67 * (((v369 ^ 0x1B78EED5) - 460910293) ^ ((v369 ^ 0xEC3851BC) + 331853380) ^ ((v369 ^ 0x2672DED3) - 645062355)) + 174) ^ 0x5F);
  if (v82)
  {
    v377 = v373;
  }

  else
  {
    v377 = v374;
  }

  v378 = v373 & v349;
  v379 = v349;
  v380 = v377 & v350 | v378;
  STACK[0x928] = (v376 + 1);
  LODWORD(STACK[0x890]) = v361;
  v381 = STACK[0x848];
  v382 = LODWORD(STACK[0x510]) ^ v353 ^ LODWORD(STACK[0x4B0]) ^ ((v378 << (v376 + 1)) | ((v361 & v373) >> STACK[0x848]));
  v383 = 1377 * (HIBYTE(v382) ^ 0x69) + 1692333 - 4864 * (((1766023 * (1377 * (HIBYTE(v382) ^ 0x69) + 1692333)) >> 32) >> 1);
  v384 = v341 ^ v353 ^ v373 ^ LODWORD(STACK[0x4A8]) ^ (4 * v373) ^ v380 ^ (4 * v380) ^ v364;
  LODWORD(STACK[0x510]) = v382;
  LODWORD(STACK[0x4F0]) = v359;
  v385 = v359 & 0x2A ^ 2 | v359 & 0x2A ^ 0x28;
  v386 = (*(STACK[0x648] + 1377 * (BYTE1(v382) ^ 0xC2) + 975560 - 4864 * (((1766023 * (1377 * (BYTE1(v382) ^ 0xC2u) + 975560)) >> 32) >> 1)) ^ 0x76) - ((v382 >> 8) ^ 4);
  v387 = STACK[0x730];
  v388 = (LODWORD(STACK[0x528]) << LODWORD(STACK[0x730])) + (LODWORD(STACK[0x528]) >> v216);
  v389 = (v386 ^ 0xBA) - ((v385 & 0xF9) + (v385 ^ 0x6C));
  if (!LODWORD(STACK[0x730]))
  {
    v388 = STACK[0x528];
  }

  v390 = (LODWORD(STACK[0x548]) >> v216) ^ (LODWORD(STACK[0x548]) << v387);
  if (!v387)
  {
    v390 = STACK[0x548];
  }

  LODWORD(STACK[0x780]) = v390;
  if (v334)
  {
    v391 = (v360 >> v216) + (v360 << v334);
  }

  else
  {
    v391 = v360;
  }

  v392 = (v355 + v352) ^ v353 & 0xFFDFFFFF;
  v393 = STACK[0x8F0];
  v394 = STACK[0x7A8];
  v395 = LODWORD(STACK[0x540]) ^ v353 ^ v391 ^ (((v361 & (STACK[0x8F0] & 0x65656564 ^ 0xB2B2B2B2)) >> v363) | (((STACK[0x8F0] & 0x65656564 ^ 0xB2B2B2B2) & STACK[0x7A8]) << v362));
  v396 = STACK[0x8F8];
  v397 = v392 ^ ((((v371 ^ 0xB2B2B2B2) & STACK[0x8F8]) >> v381) + (((v371 ^ 0xB2B2B2B2) & v379) << STACK[0x588]));
  v398 = STACK[0x900];
  v399 = *(STACK[0x900] + 1377 * (HIBYTE(v384) ^ 0x32) + 3470040 - 4864 * (((7064091 * (1377 * (HIBYTE(v384) ^ 0x32) + 3470040)) >> 32) >> 3)) ^ (HIBYTE(v384) - ((v384 >> 23) & 0xEC) + 118) ^ 0x49;
  v400 = STACK[0x908];
  HIDWORD(v402) = *(STACK[0x908] + 4 * BYTE2(v397));
  LODWORD(v402) = HIDWORD(v402);
  v401 = v402 >> 8;
  v403 = v395;
  HIDWORD(v402) = *(STACK[0x908] + 4 * v395);
  LODWORD(v402) = HIDWORD(v402);
  v404 = v402 >> 24;
  v405 = v404 & v401;
  v406 = v404 + v401;
  v407 = v397;
  STACK[0x540] = v397;
  HIDWORD(v402) = *(v400 + 4 * BYTE1(v384));
  LODWORD(v402) = HIDWORD(v402);
  v408 = (v402 >> 16) ^ __ROR4__(*(v400 + 4 * v397), 24) ^ *(v400 + 4 * ((*(v398 + v383) ^ 0x81) - 110));
  v409 = BYTE1(v403);
  STACK[0x528] = v403;
  v410 = v408 ^ (*(v400 + 4 * BYTE2(v403)) >> 8) ^ (*(v400 + 4 * BYTE2(v403)) << 24);
  v411 = STACK[0x880];
  if (v334)
  {
    v411 = (v411 >> v216) ^ (v411 << v334);
  }

  LODWORD(STACK[0x6A0]) = v411;
  v412 = LODWORD(STACK[0x798]) ^ STACK[0x840] ^ (v406 - 2 * v405) ^ *(v400 + 4 * (v399 + 102)) ^ __ROR4__(*(v400 + 4 * v389), 16);
  v413 = v320 - v387 + v216 + LODWORD(STACK[0x770]) - LODWORD(STACK[0x7F0]) + LODWORD(STACK[0x860]) - v358;
  v414 = -LODWORD(STACK[0x798]);
  LODWORD(STACK[0x730]) = v414;
  v415 = v413 + v414 + v410;
  LODWORD(STACK[0x880]) = v320 - v216 - v334 + (v412 ^ LODWORD(STACK[0x570])) + 2 * (v412 & STACK[0x570]);
  v416 = v393 & 0x61616160 ^ 0xB0B0B0B0;
  v417 = v362;
  v418 = (v416 & v396) >> v363;
  v419 = ((v416 & v394) << v362) | v418;
  v420 = 1079 * (v418 % 0x101);
  v421 = STACK[0x910];
  LODWORD(v418) = (*(STACK[0x910] + 4 * (v420 + 1111370 - 2120 * ((2025928 * (v420 + 1111370)) >> 32))) ^ 0xD13261BA) * ((((v334 ^ 0x18) + v334) & 0x20) + 2039570243);
  v422 = *(STACK[0x910] + 4 * (v420 + 278382 - 2120 * ((2025928 * (v420 + 278382)) >> 32)));
  v423 = (((v422 ^ 0x8218318E) + 2112343666) ^ ((v422 ^ 0x4E6F127F) - 1315902079) ^ ((v422 ^ 0x1D45424B) - 491078219)) + 1444679079;
  v424 = STACK[0x650];
  LODWORD(v418) = (v424 ^ v353) - v424 + 2 * (v424 & v353) + (v418 ^ 0xCA2272A0) - (v423 ^ (4 * v423 * v423)) + (((v423 ^ (4 * v423 * v423)) - (v423 ^ (4 * v423 * v423) ^ 0xFCFDF0DB)) ^ 1);
  v425 = 2 * (STACK[0x850] & 0xB0B0B0B0);
  LODWORD(v426) = __ROR4__(v425, 24) ^ 0xD2C8F0AC;
  HIDWORD(v426) = v426;
  v427 = (v426 >> 8) - ((2 * (v426 >> 8)) & 0x38C4D080);
  v428 = v419 ^ v353 ^ LODWORD(STACK[0x500]) ^ *(v400 + ((v407 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * v384), 24);
  v429 = STACK[0x510];
  v430 = v428 ^ __ROR4__(*(v400 + 4 * BYTE2(LODWORD(STACK[0x510]))), 8);
  LODWORD(v426) = __ROR4__(*(v400 + 4 * v409), 16);
  STACK[0x548] = v430 ^ v426;
  v431 = v418 + 1;
  v432 = v415 ^ v388 ^ (v418 + 1);
  v433 = 1079 * ((v427 + 476215360) % 0x101u);
  v434 = *(v421 + 4 * (v433 + 1111370 - 2120 * ((2025928 * (v433 + 1111370)) >> 32)));
  v435 = *(v421 + 4 * (v433 + 1668134 - 2120 * ((2025928 * (v433 + 1668134)) >> 32)));
  LODWORD(v418) = ((((v427 + 476215360) & v394) << v417) + ((2039570243 * (((v434 ^ 0xD39A5C20) + 744858592) ^ ((v434 ^ 0xE8F570C5) + 386567995) ^ ((v434 ^ 0xEA5D4D5F) + 362984097)) - 1228039762) ^ 0x35DD8D5F) + ((725634795 * (((v435 ^ 0x5251C1E5) - 1381089765) ^ ((v435 ^ 0xB895AA78) + 1198151048) ^ ((v435 ^ 0x3BF60A27) - 1005980199)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v435 ^ 0xAB6F3F64) + 1418772636) ^ ((v435 ^ 0x81CB4D6E) + 2117382802) ^ ((v435 ^ 0x7B9613B0) + 74050640)) + 520930172) | 0xA74E6B4E)) + 1) | (((v427 + 476215360) & v396) >> STACK[0x848]);
  v436 = v424;
  v437 = ((v424 >> 2) ^ -(v424 >> 2) ^ ((v431 ^ (v424 >> 2)) - v431)) + (v431 ^ (v424 >> 2));
  v438 = STACK[0x760];
  v439 = ((v425 ^ 0xB0B0B0B0) & STACK[0x760]) << v417;
  v440 = ((v425 ^ 0xB0B0B0B0) & v396) >> STACK[0x848];
  LODWORD(v440) = ((v440 ^ v439) + 2 * (v440 & v439)) ^ LODWORD(STACK[0x518]) ^ v437 ^ LODWORD(STACK[0x880]);
  LODWORD(STACK[0x688]) = 1377 * (BYTE3(v440) ^ 0x69) + 1692333 - 4864 * (((1766023 * (1377 * (BYTE3(v440) ^ 0x69) + 1692333)) >> 32) >> 1);
  LODWORD(STACK[0x880]) = v432;
  STACK[0x588] = v432 ^ v418;
  v441 = 1377 * ((((v432 ^ v418) >> 24) + 110) ^ 0xDC) + 4834647;
  v442 = v441 - 4864 * (((7064091 * v441) >> 32) >> 3);
  v443 = 1377 * ((v430 ^ v426) ^ 0x23) + 5915592;
  LODWORD(v418) = v443 - 4864 * (((7064091 * v443) >> 32) >> 3);
  v444 = *(v400 + 4 * v440);
  LODWORD(STACK[0x6CC]) = v444;
  v445 = 1079 * HIBYTE(v444);
  v446 = STACK[0x900];
  LODWORD(v418) = 1377 * ((((HIBYTE(v444) - ((v444 >> 23) & 0x74) - 70) ^ 0x2F ^ *(v421 + 4 * (v445 + 555685 - 2120 * ((2025928 * (v445 + 555685)) >> 32)))) + (((((*(STACK[0x900] + v418) ^ 0xE8) + 24) ^ ((*(STACK[0x900] + v418) ^ 0xF3) + 13) ^ ((*(STACK[0x900] + v418) ^ 0x6D) - 109)) - 28) ^ 0xBC) + 102) ^ 0x69) + 1692333;
  v447 = STACK[0x648];
  LOBYTE(v418) = *(STACK[0x648] + v418 - 4864 * (((1766023 * v418) >> 32) >> 1));
  LOBYTE(v427) = (v418 ^ 0x13) + ((67 * (*(v421 + 4 * (v445 + 1111370 - 2120 * ((2025928 * (v445 + 1111370)) >> 32))) ^ 0xBA)) ^ 0x5F) + ((2 * v418) & 0x24);
  v448 = LODWORD(STACK[0x860]) ^ __ROR4__(*(v400 + 4 * BYTE2(v384)), 8) ^ __ROR4__(*(v400 + 4 * v429), 24) ^ __ROR4__(*(v400 + 4 * BYTE1(STACK[0x540])), 16) ^ *(v400 + ((STACK[0x528] >> 22) & 0x3FC));
  v449 = v448 + STACK[0x6B8] + 2 * (v448 & STACK[0x6B8]) - 4 * (v448 & STACK[0x6B8]);
  v450 = STACK[0x890];
  v451 = STACK[0x830];
  v452 = v438;
  v453 = STACK[0x928];
  v454 = (((v416 & v438) << STACK[0x928]) + ((STACK[0x890] & v416) >> STACK[0x830])) ^ LODWORD(STACK[0x560]);
  LODWORD(STACK[0x3A0]) = v431;
  v455 = v454 ^ v431 ^ v449;
  v456 = *(v447 + v442);
  HIDWORD(v426) = ((((~(2 * v455) + v455) | v455) & 0xD) - ((2 * ((~(2 * v455) + v455) | v455)) & 8) + 22) ^ v456;
  LODWORD(v426) = (v456 ^ 0x60) << 24;
  LOBYTE(v456) = v426 >> 29;
  HIDWORD(v426) = *(v400 + 4 * BYTE1(v455));
  LODWORD(v426) = HIDWORD(v426);
  v457 = v426 >> 16;
  v458 = (HIWORD(HIDWORD(v426)) & 0x5457 ^ 0x9AC05457 | HIWORD(HIDWORD(v426)) & 0xABA8) ^ 0x653FABA8 | v457;
  HIDWORD(v426) = *(v400 + 4 * (v427 + 1));
  LODWORD(v426) = HIDWORD(v426);
  v459 = *(v421 + 4 * (1079 * (v458 % 0x101) + 1668134 - 2120 * ((2025928 * (1079 * (v458 % 0x101) + 1668134)) >> 32)));
  v460 = ((725634795 * (((v459 ^ 0x5528E338) - 1428742968) ^ ((v459 ^ 0xC555B859) + 984237991) ^ ((v459 ^ 0x414F3ADB) - 1095711451)) + 260465086) ^ 0x62ECD2D2 ^ ((1451269590 * (((v459 ^ 0xC2BC0E43) + 1027862973) ^ ((v459 ^ 0xD3618F28) + 748581080) ^ ((v459 ^ 0x40EFE0D1) + 1058021167)) + 520930172) | 0xA74E6B4E)) - 557753037 + ((v426 >> 24) ^ __ROR4__(*(v400 + 4 * BYTE1(v440)), 16) ^ *(v400 + 4 * v456));
  v461 = v436;
  v462 = (2 * v436) & 0xA6A6A6A6 ^ 0x53535353;
  v463 = (v450 & v462) >> v451;
  v464 = v451;
  v465 = (((v462 & STACK[0x7A8]) << v453) | v463) ^ LODWORD(STACK[0x6A0]) ^ v437 ^ __ROR4__(*(v400 + 4 * BYTE2(v455)), 8) ^ (v460 + 1);
  v466 = STACK[0x930] & 0xA6A6A6A6 ^ 0x53535353;
  v467 = STACK[0x548];
  v468 = STACK[0x588];
  v469 = v446;
  v470 = LODWORD(STACK[0x780]) ^ __ROR4__(*(v400 + 4 * BYTE2(STACK[0x548])), 8) ^ __ROR4__(*(v400 + 4 * BYTE1(STACK[0x588])), 16) ^ __ROR4__(*(v400 + 4 * v455), 24) ^ v437 ^ *(v400 + 4 * ((*(v446 + LODWORD(STACK[0x688])) ^ 0x81) - 110));
  LODWORD(v446) = *(v421 + 4 * ((1079 * (v466 % 0x101) + 276262) % 0x848));
  LODWORD(v446) = (((v446 ^ 0x2492648) - 38348360) ^ ((v446 ^ 0xFD32E213) + 46996973) ^ ((v446 ^ 0x2E49A5E1) - 776578529)) + 1444679079;
  v471 = 1079 * (((v446 ^ 0xFCFDF0DB | v446 ^ 0x24) & 0xFD ^ 0x1FF) + v466 % 0x101);
  v472 = *(v421 + 4 * (v471 - 2120 * ((2025928 * v471) >> 32)));
  v473 = (((v472 ^ 0xA72D280D) + 1490212851) ^ ((v472 ^ 0x18C6B93A) - 415676730) ^ ((v472 ^ 0x6ED9F08D) - 1859776653)) + 1444679079;
  v474 = v470 + (v446 ^ 0xFCFDF0DB ^ (4 * v446 * v446)) + (v473 ^ 0x3020F24 ^ (4 * v473 * v473));
  v475 = STACK[0x8F8];
  v476 = STACK[0x7A8];
  v477 = STACK[0x810];
  v478 = (v466 & STACK[0x7A8]) << STACK[0x810];
  v479 = (v466 & STACK[0x8F8]) >> STACK[0x848];
  v480 = (v474 + 1) ^ (v479 | v478);
  v481 = ((((v479 | v478) ^ -(v479 | v478) ^ ((v478 & ~v479) - v479)) & 0xC36E7084) + (v478 & ~v479) + (((v479 | v478) ^ -(v479 | v478) ^ ((v478 & ~v479) - v479)) & 0x3C918F7B)) ^ v479 ^ v437;
  v482 = (((v462 & v452) << v453) + v463) ^ LODWORD(STACK[0x550]) ^ __ROR4__(*(v400 + 4 * BYTE2(v440)), 8);
  LODWORD(v426) = __ROR4__(*(v400 + 4 * STACK[0x588]), 24);
  LODWORD(v455) = *(v400 + ((v455 >> 22) & 0x3FC)) ^ v481;
  v483 = v481;
  LODWORD(STACK[0x6A0]) = v481;
  v484 = v482 ^ v426 ^ v455 ^ __ROR4__(*(v400 + 4 * BYTE1(v467)), 16);
  LODWORD(v455) = (v461 % 0x101 + 515) * ((STACK[0x878] & 0x437 ^ 0x437) + (STACK[0x878] & 0x437));
  LODWORD(v479) = *(v421 + 4 * (1079 * (v461 % 0x101) + 555685 - 2120 * ((2025928 * (1079 * (v461 % 0x101) + 555685)) >> 32))) ^ (v461 % 0x101 - 785227334 - ((2 * (v461 % 0x101)) & 0x374));
  v485 = (((v461 % 0x101) ^ 0xD37C3CD2) - 785227334 + ((2 * (((v461 % 0x101) ^ 0xD37C3CD2) & 0x1BB ^ ((v461 % 0x101) | 0x7FFFFFFE))) ^ 0xA2604003) + 1) ^ 0x4F829BFD ^ *(v421 + 4 * (v455 - 2120 * ((2025928 * v455) >> 32)));
  v486 = v479 ^ 0xD37C3CD2;
  if ((v479 & 0x100) != 0)
  {
    v487 = -256;
  }

  else
  {
    v487 = 256;
  }

  v488 = v485 + ((v487 + v486) ^ 0xB07D6502) + v465;
  v489 = STACK[0x8F0];
  v490 = LODWORD(STACK[0x558]) ^ ((((STACK[0x8F0] & 0xA6A6A6A6 ^ 0x53535353) & v475) >> v464) + (((STACK[0x8F0] & 0xA6A6A6A6 ^ 0x53535353) & v476) << v477)) ^ __ROR4__(STACK[0x6CC], 24) ^ __ROR4__(*(v400 + 4 * BYTE2(v468)), 8) ^ v483 ^ v457 ^ *(v400 + ((v467 >> 22) & 0x3FC));
  v491 = 1377 * ((59 * v490) ^ 0x66) + 6292890;
  v492 = (59 * v490) ^ 0x63;
  v493 = *(v469 + v491 - 4864 * (((7064091 * v491) >> 32) >> 3)) ^ (v492 - ((59 * v490) ^ 0xB1) - ((2 * (v492 - ((59 * v490) ^ 0xB1))) & 0xEC) + 118) ^ 0xD9;
  v494 = (((59 * v490) ^ 0x66) - (v492 & 0xFA)) ^ v492 & 5;
  v495 = 1377 * ((109 - ((BYTE3(v484) & 0x45 | 0x3A) ^ ((BYTE3(v484) | 0xC5) - (BYTE3(v484) & 0x80)))) ^ 0x11);
  v496 = *(v469 + (v495 - 4864 * ((883012 * v495) >> 32)));
  v497 = (109 - ((BYTE3(v484) & 0x45 | 0x3A) ^ ((BYTE3(v484) | 0xC5) - (BYTE3(v484) & 0x80)))) ^ 0xFFFFFFE5 ^ (((2 * v496) & 0x34 ^ 0xFFFFFFDB) + (((v496 ^ 0xFFFFFFAC) + 84) ^ ((v496 ^ 0x77) - 119) ^ ((v496 ^ 0xFFFFFFAD) + 83)) + 17);
  v498 = (v497 >> 5) | (8 * v497);
  v499 = *(v469 + 1377 * (HIBYTE(v490) ^ 0x23) + 5915592 - 4864 * (((7064091 * (1377 * (HIBYTE(v490) ^ 0x23) + 5915592)) >> 32) >> 3));
  LODWORD(STACK[0x6CC]) = ((v499 ^ 0x15) - 21) ^ ((v499 ^ 0xFFFFFFE6) + 26) ^ ((v499 ^ 0xFFFFFF85) + 123);
  v500 = (~(2 * ((v490 >> 8) ^ 0x32)) + ((v490 >> 8) ^ 0x32)) ^ (v490 >> 8);
  v501 = (v488 + 1);
  LOBYTE(v488) = *(STACK[0x648] + 1377 * (BYTE1(v490) ^ 0x32) + 3470040 - 4864 * (((7064091 * (1377 * (BYTE1(v490) ^ 0x32u) + 3470040)) >> 32) >> 3));
  v502 = *(v400 + 4 * BYTE2(v501));
  LODWORD(STACK[0x688]) = v502;
  v503 = 1079 * ((v502 << 24) % 0x101u);
  v504 = ((BYTE1(v490) ^ 0x40) + ~(2 * ((BYTE1(v490) ^ 0x40) & 0x77 ^ BYTE1(v490) & 1)) + 119) ^ 9 ^ v488;
  v505 = *(v421 + 4 * (v503 + 1668134 - 2120 * ((2025928 * (v503 + 1668134)) >> 32)));
  LOBYTE(v505) = ((-42 * (((v505 ^ 0x62) - 98) ^ ((v505 ^ 0xE) - 14) ^ ((v505 ^ 0xD6) + 42)) + 124) | 0x4E) ^ (-21 * (((v505 ^ 0x9E) + 98) ^ ((v505 ^ 0xE9) + 23) ^ ((v505 ^ 0xCD) + 51)) - 66);
  v506 = (((2 * v505) | ((v505 & 0x80) != 0)) ^ ((2 * v480) | ((v480 & 0x80) != 0))) ^ 0x5B;
  LODWORD(STACK[0x588]) = *(v421 + 4 * (v503 + 555685 - 2120 * ((2025928 * (v503 + 555685)) >> 32))) ^ ((v502 << 24) % 0x101u) ^ (((v506 >> 1) | (v506 << 7)) - 2 * (((v506 >> 1) | (v506 << 7)) & 0x61BE ^ (v506 >> 1) & 4) + 186);
  HIDWORD(v508) = *(v400 + 4 * BYTE2(v490));
  LODWORD(v508) = HIDWORD(v508);
  v509 = (v508 >> 8) ^ __ROR4__(*(v400 + 4 * v484), 24);
  HIDWORD(v508) = *(v400 + 4 * BYTE2(v480));
  LODWORD(v508) = HIDWORD(v508);
  v510 = v508 >> 8;
  HIDWORD(v508) = *(v400 + 4 * (v504 + 102));
  LODWORD(v508) = HIDWORD(v508);
  v511 = v508 >> 16;
  v512 = (v508 >> 16) & 0x400;
  if ((v512 & v510) != 0)
  {
    LODWORD(v512) = -v512;
  }

  v513 = (v512 + v510) ^ v511 & 0xFFFFFBFF;
  v507 = *(v400 + 4 * BYTE1(v480));
  v514 = ((v507 << ((v507 & 0x10 ^ 0x10) + (v507 & 0x10))) | WORD1(v507)) ^ __ROR4__(*(v400 + 4 * (v493 + 48)), 24);
  v515 = *(v400 + 4 * v501);
  LODWORD(v507) = 1079 * HIBYTE(v515);
  v516 = *(v421 + 4 * (v507 + 1111370 - 2120 * ((2025928 * (v507 + 1111370)) >> 32)));
  v517 = __ROR4__(v515, 24);
  v518 = *(v421 + 4 * (v507 + 1668134 - 2120 * ((2025928 * (v507 + 1668134)) >> 32)));
  v519 = v509 + *(v400 + ((v480 >> 22) & 0x3FC)) - 2 * (*(v400 + ((v480 >> 22) & 0x3FC)) & v509) + ((2039570243 * (((v516 ^ 0x22BDA105) - 582852869) ^ ((v516 ^ 0x8315D76E) + 2095720594) ^ ((v516 ^ 0x709A17D1) - 1889146833)) - 1228039762) ^ 0x35DD8D5F) + ((725634795 * (((v518 ^ 0x4B943F6D) - 1268006765) ^ ((v518 ^ 0x4D5DA3C4) - 1297982404) ^ ((v518 ^ 0xD7FBFD13) + 671351533)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v518 ^ 0xA4DD88E3) + 1528985373) ^ ((v518 ^ 0x1FEA35D) + 2114018467) ^ ((v518 ^ 0x74114A04) + 200193532)) + 520930172) | 0xA74E6B4E));
  v520 = *(v400 + 4 * (v501 >> (v494 + 3)));
  v521 = (v520 << 16) % 0x101u;
  v522 = v514 ^ *(v400 + ((v501 >> 22) & 0x3FC));
  v523 = *(v421 + 4 * (1079 * v521 + 1668134 - 2120 * ((2025928 * (1079 * v521 + 1668134)) >> 32)));
  v524 = 1079 * v521 + 555685 - 2120 * ((2025928 * (1079 * v521 + 555685)) >> 32);
  v525 = v513 ^ v517 ^ *(v400 + 4 * v498);
  LODWORD(v507) = v521 - 785227334 - ((2 * v521) & 0x374);
  v526 = *(v400 + 4 * (v484 >> (v500 & 8)));
  HIDWORD(v527) = v526;
  LODWORD(v527) = v526;
  LODWORD(STACK[0x558]) = v527 >> 16;
  HIDWORD(v527) = v527 >> 16;
  LODWORD(v527) = v526 << 16;
  LODWORD(STACK[0x560]) = ((2 * v525) & 0x47A024F2) + 600838777 + (v525 ^ -v525 ^ (600838777 - (v525 ^ 0x23D01279))) + 600838777 * (__ROR4__(((~HIWORD(v526) << 14) | 0x3FFF) ^ (v527 >> 18) ^ 0x3E7F8E8E, 14) ^ 0x3A38F9FE | (v526 << 16));
  v528 = *(v421 + 4 * (LODWORD(STACK[0x808]) + 1668134 - 2120 * ((2025928 * (LODWORD(STACK[0x808]) + 1668134)) >> 32)));
  v529 = ((725634795 * (((v528 ^ 0xB1D83D43) + 1311228605) ^ ((v528 ^ 0xE46C7357) + 462654633) ^ ((v528 ^ 0x84862FAE) + 2071580754)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v528 ^ 0x38AB4E33) + 1196732877) ^ ((v528 ^ 0x22105C25) + 1575986139) ^ ((v528 ^ 0x4B8973AC) + 880184404)) + 520930172) | 0xA74E6B4E)) + ((725634795 * (((v528 ^ 0xD1414836) + 784250826) ^ ((v528 ^ 0x521921C9) - 1377378761) ^ ((v528 ^ 0x526A0845) - 1382680645)) + 260465086) ^ 0x62ECD2D2 ^ ((1451269590 * (((v528 ^ 0x6A734097) + 361545577) ^ ((v528 ^ 0xA1949633) + 1584097741) ^ ((v528 ^ 0x1AD5B71E) + 1697269986)) + 520930172) | 0xA74E6B4E));
  v530 = STACK[0x890];
  v531 = STACK[0x928];
  v532 = (((v489 & 0x6D6D6D6C ^ 0xB6B6B6B6) & STACK[0x7A8]) << STACK[0x928]) | ((STACK[0x890] & (v489 & 0x6D6D6D6C ^ 0xB6B6B6B6)) >> v464);
  v533 = STACK[0x608];
  v534 = STACK[0x870];
  v535 = STACK[0x838];
  v536 = (STACK[0x608] >> STACK[0x870]) | (STACK[0x608] << STACK[0x838]);
  v537 = *(v400 + 4 * BYTE2(v484));
  v538 = STACK[0x6A0];
  v539 = LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x578]);
  LODWORD(STACK[0x418]) = v522;
  v540 = v539 ^ v522 ^ __ROR4__(v537, 8);
  v541 = STACK[0x930] & 0x6D6D6D6C ^ 0xB6B6B6B6;
  v542 = v541 & STACK[0x760];
  v543 = v542 << v531;
  v544 = (v542 + (v541 & STACK[0x7D8])) ^ v541 ^ (v542 << v531) ^ ((v530 & v541) >> STACK[0x848]) ^ v540 & 0xFFFDFFFF ^ (v540 & 0x20000 | 0x16398C93);
  v545 = STACK[0x810];
  v546 = v541 & STACK[0x8F8];
  v547 = (v546 >> STACK[0x848]) ^ (v542 << STACK[0x810]) ^ 0x1ED8A02 ^ LODWORD(STACK[0x580]) ^ __ROR4__(v520, 16) ^ v507 ^ *(v421 + 4 * v524) ^ (v519 + 1) ^ (725634795 * (((v523 ^ 0xEF55EA3) - 250961571) ^ ((v523 ^ 0xA397BA8B) + 1550337397) ^ ((v523 ^ 0x7C508592) - 2085651858)) + 260465086) ^ ((1451269590 * (((v523 ^ 0x597BDD8E) + 646193778) ^ ((v523 ^ 0xA1982F32) + 1583861966) ^ ((v523 ^ 0x29D19306) + 1445883130)) + 520930172) | 0xA74E6B4E);
  v548 = v544 ^ 0x16398C93;
  v549 = 59 * ((v544 ^ 0x16398C93u) >> 24);
  v550 = 1377 * ((59 * ((v544 ^ 0x16398C93u) >> 24)) ^ 0x66) + 6288026;
  v551 = v550 - 4864 * (((7064091 * v550) >> 32) >> 3);
  v552 = 1377 * (BYTE1(v544) ^ 0xAF) + 5915592 - 4864 * (((7064091 * (1377 * (BYTE1(v544) ^ 0xAFu) + 5915592)) >> 32) >> 3);
  v553 = v547 ^ (v538 + v529 + 1);
  v554 = v538 + v529 + 1;
  v555 = 1377 * ((59 * BYTE2(v553)) ^ 0xF1) + 5187159;
  v556 = v555 - 4864 * (((7064091 * v555) >> 32) >> 3);
  v557 = LODWORD(STACK[0x5A8]) == -1082931880;
  if (LODWORD(STACK[0x5A8]) == -1082931880)
  {
    v558 = v533;
  }

  else
  {
    v558 = v536;
  }

  v559 = v532 ^ v558 ^ __ROR4__(STACK[0x688], 8) ^ __ROR4__(*(v400 + 4 * (LODWORD(STACK[0x588]) ^ 0xAFu)), 24) ^ *(v400 + 4 * (((LODWORD(STACK[0x6CC]) - 28) ^ 0xBC) + 102)) ^ LODWORD(STACK[0x558]) ^ v554;
  if (LODWORD(STACK[0x5A8]) == -1082931880)
  {
    v560 = STACK[0x598];
  }

  else
  {
    v560 = (STACK[0x598] >> v534) ^ (STACK[0x598] << v535);
  }

  v561 = (STACK[0x5B8] >> v534) + (STACK[0x5B8] << v535);
  if (LODWORD(STACK[0x5A8]) == -1082931880)
  {
    v561 = STACK[0x5B8];
  }

  LODWORD(STACK[0x688]) = v561;
  v562 = (STACK[0x5E0] >> v534) ^ (STACK[0x5E0] << v535);
  if (v557)
  {
    v562 = STACK[0x5E0];
  }

  LODWORD(STACK[0x6CC]) = v562;
  v563 = 1377 * ((HIBYTE(*(v400 + 4 * v559)) + 110) ^ 0xF1) + 2044845;
  v564 = STACK[0x900];
  v565 = *(STACK[0x900] + v563 - 4864 * (((1766023 * v563) >> 32) >> 1));
  v566 = LODWORD(STACK[0x3F0]) + 49 * (((v565 ^ 0x7F) - 127) ^ ((v565 ^ 0xFFFFFF91) + 111) ^ ((v565 ^ 0xFFFFFF98) + 104));
  v567 = LODWORD(STACK[0x3F8]) + 98 * (((v565 ^ 0x71) + 15) ^ ((v565 ^ 0x5F) - 95) ^ ((v565 ^ 0x58) + 40));
  v568 = v567 & 0x40;
  v82 = (v567 & 0x40 & v566) == 0;
  v569 = v566 ^ 0x39;
  if (!v82)
  {
    v568 = -v568;
  }

  v570 = ((((v568 + v569) ^ v567 & 0xBF) >> 5) | (8 * ((v568 + v569) ^ v567 & 0xBF))) | (*(v400 + 4 * v559) << 8);
  v571 = (((*(v564 + v556) ^ 0x58) - 88) ^ ((*(v564 + v556) ^ 0xDD) + 35) ^ ((*(v564 + v556) ^ 0xF3) + 13)) + 90;
  v572 = v571 ^ ((4 * v571) | 0x80);
  v573 = STACK[0x830];
  v574 = v546 >> STACK[0x830];
  v575 = LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x538]);
  LODWORD(STACK[0x630]) = v575;
  v576 = v575 ^ v543 ^ v574 ^ LODWORD(STACK[0x590]) ^ v554 ^ LODWORD(STACK[0x560]);
  v577 = *(v564 + v551) ^ ((v549 ^ 0x63) - (v549 ^ 0xB1) - ((2 * ((v549 ^ 0x63) - (v549 ^ 0xB1))) & 0xEC) + 118) ^ 0xD9;
  v578 = (((*(v564 + v552) ^ 0x17) - 23) ^ ((*(v564 + v552) ^ 0xF6) + 10) ^ ((*(v564 + v552) ^ 0x97) + 105)) - ((((2 * *(v564 + v552)) ^ 0x6C) + 92) & 0x78);
  v579 = v548 + 1387003081;
  if (v548 >= 0xAD540337)
  {
    v580 = 55;
  }

  else
  {
    v579 = v548;
    v580 = 0;
  }

  v82 = v579 == 0;
  v581 = *(v400 + ((v553 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * BYTE2(v559)), 8);
  v582 = *(v400 + 4 * v553);
  v583 = (*(v564 + 1377 * (HIBYTE(v582) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (HIBYTE(v582) ^ 0xC2) + 980424)) >> 32) >> 1)) ^ 0x76) - (HIBYTE(v582) ^ 4);
  v584 = (v582 << 15) ^ __ROR4__(*(v400 + 4 * BYTE1(v559)), 16);
  if (!v82)
  {
    v580 = v548;
  }

  HIDWORD(v586) = *(v400 + 4 * v580);
  LODWORD(v586) = HIDWORD(v586);
  v585 = v586 >> 24;
  v587 = (v581 ^ __ROR4__(*(v400 + 4 * (v578 + 6)), 16)) + 1882551153 + 1882551153 * (((v585 ^ HIBYTE(HIDWORD(v586))) + HIBYTE(HIDWORD(v586))) | ~(HIDWORD(v586) << 8));
  v588 = (v582 << 8) | ((v583 ^ 0xBA) - 110);
  v589 = v584 ^ (v582 << 8) ^ v585 ^ *(v400 + ((v576 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * ((v572 ^ 0xF0) + 48)), 8) ^ v588 ^ ((v583 ^ 0xBA) - 110) ^ ((v588 ^ ((v583 ^ 0xBA) - 110)) << 7);
  v590 = (2 * (STACK[0x650] & 0xE7E7E7E7)) ^ 0xE7E7E7E7;
  v591 = STACK[0x7A8];
  v592 = (v590 & STACK[0x7A8]) << v545;
  v593 = STACK[0x8F8];
  if ((STACK[0x650] & 0xE7E7E7E7) != 0)
  {
    v594 = ~(STACK[0x8F8] ^ v590);
  }

  else
  {
    v594 = -404232217;
  }

  v595 = STACK[0x8F8];
  LODWORD(STACK[0x608]) = v548;
  v596 = v560 ^ ((v594 & v593) >> v573) ^ v592 ^ __ROR4__(*(v400 + 4 * BYTE2(v548)), 8) ^ v554 ^ __ROR4__(*(v400 + 4 * BYTE1(v576)), 16) ^ v588 ^ *(v400 + ((v559 >> 22) & 0x3FC));
  v597 = 1377 * (((v596 ^ 0x406000) >> 16) ^ 0x72) + 3470040;
  v598 = v597 - 4864 * (((7064091 * v597) >> 32) >> 3);
  v599 = 1377 * ((v596 ^ 0x6000) >> 8) + 5554818;
  v600 = v599 - 4864 * (((7064091 * v599) >> 32) >> 3);
  v601 = STACK[0x930];
  v602 = STACK[0x760];
  v603 = STACK[0x928];
  v604 = STACK[0x890];
  v605 = STACK[0x848];
  HIDWORD(v607) = *(v400 + 4 * BYTE2(v576));
  LODWORD(v607) = HIDWORD(v607);
  v606 = v607 >> 8;
  v608 = *(v400 + 4 * BYTE1(v553));
  v609 = ((((STACK[0x930] & 0xCFCFCFCE ^ 0xE7E7E7E7) & STACK[0x760]) << STACK[0x928]) + ((STACK[0x890] & (STACK[0x930] & 0xCFCFCFCE ^ 0xE7E7E7E7)) >> STACK[0x848])) ^ LODWORD(STACK[0x5D8]) ^ v554;
  LODWORD(STACK[0x588]) = v606;
  v610 = v609 ^ v606 ^ __ROR4__(v608, 16) ^ *(v400 + 4 * (v577 + 48)) ^ v570;
  v611 = (v589 ^ -v589 ^ (LODWORD(STACK[0x5E8]) - (v589 ^ LODWORD(STACK[0x5E8])))) + LODWORD(STACK[0x5E8]);
  v612 = *(v400 + 4 * BYTE1(v610));
  LODWORD(STACK[0x5E8]) = v612;
  v613 = v554 ^ v592 ^ ((v590 & v595) >> v573) ^ v611;
  LOBYTE(v608) = v605;
  v614 = ((v604 & v590) >> v605) ^ v592 ^ LODWORD(STACK[0x5F8]) ^ v554 ^ __ROR4__(*(v400 + 4 * v576), 24) ^ v587;
  v615 = 1377 * (((BYTE2(v613) ^ -WORD1(v613) ^ (57 - (BYTE2(v613) ^ 0x39))) + 57) ^ 0x59) + 5554818;
  v616 = (*(v564 + v615 - 4864 * (((7064091 * v615) >> 32) >> 3)) ^ 0xE2) - 110;
  HIDWORD(v607) = *(v400 + 4 * BYTE1(v614));
  LODWORD(v607) = HIDWORD(v607);
  v617 = v607 >> 16;
  LODWORD(v607) = __ROR4__(*(v400 + 4 * v596), 24);
  LOBYTE(v615) = *(v564 + v598) ^ (((v596 ^ 0x406000) >> 16) - (((v596 ^ 0x406000) >> 15) & 0xEC) + 118) ^ 9;
  v618 = *(v400 + 4 * ((*(v564 + v600) ^ 0xE2) - 110));
  LOBYTE(v598) = *(v564 + 1377 * (HIBYTE(v618) ^ 0xEB) + 3822552 - 4864 * (((7064091 * (1377 * (HIBYTE(v618) ^ 0xEB) + 3822552)) >> 32) >> 3));
  v619 = ((v598 ^ 9) - 9) ^ ((v598 ^ 0x7A) - 122) ^ ((v598 ^ 5) - 5);
  v620 = ((v598 ^ 0xD) + 35) ^ ((v598 ^ 7) + 57) ^ ((v598 ^ 0xC) + 20);
  v621 = (*(v400 + ((v610 >> 22) & 0x3FC)) ^ -*(v400 + ((v610 >> 22) & 0x3FC)) ^ ((v617 ^ v607) - (*(v400 + ((v610 >> 22) & 0x3FC)) ^ v617 ^ v607))) + (v617 ^ v607);
  v622 = *(v400 + 4 * (((v613 ^ -v613 ^ (BYTE2(v612) - (v613 ^ BYTE2(v612)))) + BYTE2(v612)) ^ BYTE2(v612)));
  v623 = (v622 >> (STACK[0x600] & 0x18) >> (STACK[0x600] & 0x18 ^ 0x18)) | (v622 << 8);
  v624 = *(v400 + 4 * BYTE2(v610));
  v625 = (v624 >> (72 * ((v591 & 0xB9 ^ 0xB9) + (v591 & 0xB9)))) | (v624 << 24);
  LOBYTE(v624) = (9 * v619 + 37) ^ (16 * ((3 * v620) & 3));
  v626 = v601 & 0xB9B9B9B8 ^ 0xDCDCDCDC;
  v627 = (v604 & v626) >> v605;
  v628 = v603;
  v629 = LODWORD(STACK[0x610]) ^ __ROR4__(*(v400 + 4 * v610), 24) ^ *(v400 + ((v613 >> 22) & 0x3FC)) ^ (*(v400 + 4 * BYTE2(v614)) >> 8) ^ (*(v400 + 4 * BYTE2(v614)) << (v616 & 0x18) << (v616 & 0x18 ^ 0x18)) ^ __ROR4__(v618, 16);
  v630 = ((v604 - v626) ^ v626) + 2 * ((v604 - v626) & v626);
  v631 = v626 & v591;
  v632 = LODWORD(STACK[0x630]) ^ v626 ^ LODWORD(STACK[0x668]) ^ (((v626 & v602) << v603) + v627) ^ v554 ^ ((~(2 * v630) + v630) | v630) & v626 ^ __ROR4__(*(v400 + 4 * v614), 24) ^ __ROR4__(*(v400 + 4 * BYTE1(v613)), 16) ^ *(v400 + 4 * HIBYTE(v596)) ^ v625;
  v633 = STACK[0x8F0];
  v634 = v602;
  v635 = (((v633 & 0xB9B9B9B8 ^ 0xDCDCDCDC) & v602) << v603) ^ LODWORD(STACK[0x678]) ^ (((v633 & 0xB9B9B9B8 ^ 0xDCDCDCDC) & STACK[0x8F8]) >> v608) ^ v554 ^ __ROR4__(*(v400 + 4 * v616), 8) ^ HIBYTE(v618) ^ v621 ^ (v624 - 110);
  v636 = (((v630 & v626) >> STACK[0x830]) + (v631 << STACK[0x810])) ^ v554 ^ __ROR4__(__ROR4__(v629, 7) ^ 0xDBCBF397, 25);
  v637 = STACK[0x8F8];
  v638 = v631 << v628;
  v639 = v628;
  v640 = STACK[0x830];
  v641 = LODWORD(STACK[0x688]) ^ ((v626 & STACK[0x8F8]) >> STACK[0x830]) ^ v638 ^ v554 ^ __ROR4__(STACK[0x5E8], 16) ^ *(v400 + ((v614 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * (v615 + 102)), 8) ^ v623;
  v642 = 1377 * ((59 * v632) ^ 0x1F) + 3110643;
  LODWORD(v614) = v642 - 4864 * (((7064091 * v642) >> 32) >> 3);
  v643 = *(v400 + 4 * BYTE2(v635));
  LODWORD(v614) = *(STACK[0x900] + v614);
  v644 = v614 ^ 0x19 ^ (v614 >> 4) & 3;
  v645 = 1079 * -((v643 << 24) / 0x101u);
  LODWORD(v614) = *(STACK[0x910] + 4 * (v645 + 1111370 - 2120 * ((2025928 * (v645 + 1111370)) >> 32)));
  v646 = LODWORD(STACK[0x6D0]) + 67 * (((v614 ^ 0x7C7F4A5D) + 163) ^ ((v614 ^ 0x9B529E60) + 160) ^ ((v614 ^ 0xFFFFFF87) + 121));
  if ((v635 & 0x10) != 0)
  {
    v647 = -16;
  }

  else
  {
    v647 = 16;
  }

  v648 = *(v400 + 4 * ((v647 + v635) ^ 0x10u));
  v649 = HIBYTE(v648);
  if (v648 >> 25 >= 0x49)
  {
    v649 = HIBYTE(v648) - 146;
  }

  v650 = ~((v646 ^ 0xA0) + v641) + 2 * ((v646 ^ 0xA0) & v641);
  v651 = *(STACK[0x910] + 4 * (v645 + 1668134 - 2120 * ((2025928 * (v645 + 1668134)) >> 32)));
  v652 = ((-42 * (((v651 ^ 0xA8) + 88) ^ ((v651 ^ 0x67) - 103) ^ ((v651 ^ 0x75) - 117)) + 124) | 0x4E) ^ (-21 * (((v651 ^ 0x6F) - 111) ^ ((v651 ^ 0xC1) + 63) ^ ((v651 ^ 0x14) - 20)) - 66);
  if (v648 >> 25 <= 0x48)
  {
    v653 = 0;
  }

  else
  {
    v653 = 146;
  }

  v654 = v649 + v653;
  v655 = *(v400 + 4 * (v644 + 48));
  HIDWORD(v656) = *(v400 + 4 * BYTE2(v632));
  LODWORD(v656) = HIDWORD(v656);
  v657 = (v656 >> 8) ^ __ROR4__(*(v400 + 4 * BYTE1(v635)), 16);
  v658 = *(STACK[0x900] + (1377 * ((HIBYTE(v655) + 110) ^ 0x11) - 4864 * ((883012 * (1377 * ((HIBYTE(v655) + 110) ^ 0x11u))) >> 32))) ^ (HIBYTE(v655) + 110 + (~(2 * (HIBYTE(v655) + 110)) | 0x13) + 119) ^ 0x7F;
  v659 = v636 ^ 0xE5F9CBED;
  v660 = (v648 << 8) ^ __ROR4__(*(v400 + 4 * BYTE1(v632)), 16) ^ *(v400 + ((v659 >> 22) & 0x3FC)) ^ v654 ^ __ROR4__(*(v400 + 4 * BYTE2(v641)), 8);
  v661 = (((v658 >> 5) | (8 * v658)) | (v655 << 8)) ^ *(v400 + ((v635 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * BYTE1(v641)), 16) ^ __ROR4__(*(v400 + 4 * BYTE2(v659)), 8);
  v662 = v657 ^ __ROR4__(*(v400 + 4 * v659), 24) ^ *(v400 + ((v641 >> 22) & 0x3FC));
  HIDWORD(v656) = *(v400 + 4 * ((v652 ^ v650) ^ 0xD2u));
  LODWORD(v656) = HIDWORD(v656);
  LODWORD(v659) = (v656 >> 24) ^ __ROR4__(v643, 8) ^ __ROR4__(*(v400 + 4 * BYTE1(v659)), 16) ^ *(v400 + ((v632 >> 22) & 0x3FC));
  v663 = v661 - LODWORD(STACK[0x860]) + LODWORD(STACK[0x800]);
  v664 = v663 & STACK[0x770];
  v665 = v663 ^ LODWORD(STACK[0x770]);
  v666 = LODWORD(STACK[0x570]) - LODWORD(STACK[0x7F8]) + v660;
  v667 = v665 + LODWORD(STACK[0x730]) + 2 * v664;
  v668 = LODWORD(STACK[0x670]) ^ STACK[0x838] ^ (LODWORD(STACK[0x798]) + STACK[0x840] - 2 * LODWORD(STACK[0x798]) + v662);
  HIDWORD(v656) = v668 ^ LODWORD(STACK[0x320]);
  LODWORD(v656) = v668;
  v669 = v633 & 0x17171716 ^ 0x8B8B8B8B;
  v670 = v634;
  v671 = STACK[0x810];
  v672 = (v669 & v634) << v671;
  v673 = v630 & v669;
  v674 = LODWORD(STACK[0x7F0]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x7F8]) ^ LODWORD(STACK[0x6CC]) ^ v554 ^ (v672 + v669 - v673 - (v669 & ~v630) + (v673 >> STACK[0x848])) ^ __ROR4__((v656 >> 14) ^ 0x20AF3689, 18);
  v675 = STACK[0x8F8];
  v676 = LODWORD(STACK[0x680]) ^ v667;
  v677 = LODWORD(STACK[0x690]) ^ (v672 + ((v669 & v637) >> v640)) ^ v554 ^ (STACK[0x6B8] - LODWORD(STACK[0x860]) + v659);
  v678 = STACK[0x7A8];
  v679 = STACK[0x848];
  v680 = (v673 >> v640) ^ ((v669 & STACK[0x7A8]) << v628) ^ LODWORD(STACK[0x698]) ^ v554 ^ v666;
  v681 = LODWORD(STACK[0x808]) + 555685 - 2120 * ((2025928 * (LODWORD(STACK[0x808]) + 555685)) >> 32);
  LODWORD(v659) = ((LODWORD(STACK[0x638]) ^ 0x4B2B5AB7) - 1261132471) ^ ((LODWORD(STACK[0x638]) ^ 0xC3F84BF) - 205489343) ^ ((LODWORD(STACK[0x638]) ^ 0x9626BFB2) + 1775845454);
  LODWORD(v672) = STACK[0x930] & 0xF1F1F1F0;
  v682 = (v672 ^ 0xF8F8F8F8 | v637) - (v637 ^ 0xF8F8F8F8 ^ v672);
  v683 = LODWORD(STACK[0x6A8]) ^ __ROR4__(*(v400 + 4 * v680), 24);
  v684 = v554 ^ (((v630 & (STACK[0x930] & 0x17171716 ^ 0x8B8B8B8B)) >> v679) | (((STACK[0x930] & 0x17171716 ^ 0x8B8B8B8B) & STACK[0x7A8]) << v639));
  LODWORD(STACK[0x4D0]) = v676;
  v685 = v684 ^ v676;
  v686 = v683 ^ __ROR4__(*(v400 + 4 * BYTE1(v685)), 16);
  v687 = v674 ^ 0xCDA2482B;
  v688 = v686 ^ *(v400 + ((v687 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * BYTE2(v677)), 8) ^ (v659 + 1444679079) ^ (4 * (v659 + 1444679079) * (v659 + 1444679079));
  v689 = STACK[0x640];
  v690 = v672 ^ (v682 | (v672 ^ 0xF8F8F8F8) & ~v637) ^ LODWORD(STACK[0x640]) ^ (((v682 | (v672 ^ 0xF8F8F8F8) & ~v637) ^ v672 ^ 0xF8F8F8F8) << 7);
  v691 = v682 >> v679;
  v692 = ((v672 ^ 0xF8F8F8F8) & v670) << v671;
  v693 = STACK[0x910];
  v694 = v690 ^ (v691 + v692) ^ *(STACK[0x910] + 4 * v681) ^ v554 ^ (v688 - 785227334 - ((2 * v688) & 0xA264C374));
  LODWORD(STACK[0x860]) = v694;
  v695 = v694 ^ 0x98FBAF0C;
  STACK[0x808] = v695;
  v696 = (BYTE2(v695) + 110);
  v697 = (v696 ^ 0xD9) & 0x40;
  HIDWORD(v656) = *(v400 + 4 * BYTE1(v677));
  LODWORD(v656) = HIDWORD(v656);
  LODWORD(v691) = v656 >> 16;
  v698 = v554 ^ __ROR4__(*(v400 + 4 * BYTE2(v680)), 8) ^ __ROR4__(*(v400 + 4 * v677), 24) ^ LODWORD(STACK[0x6B0]) ^ *(v400 + ((v685 >> 22) & 0x3FC));
  LODWORD(v656) = __ROR4__(*(v400 + 4 * BYTE1(v687)), 16);
  v699 = (v672 ^ 0xF8F8F8F8) & v637;
  v700 = STACK[0x830];
  v701 = (v699 >> STACK[0x830]) ^ (((v672 ^ 0xF8F8F8F8) & v678) << v671);
  v702 = STACK[0x8F0];
  STACK[0x610] = v630;
  v703 = STACK[0x928];
  v704 = ((v630 & (v702 & 0xF1F1F1F0 ^ 0xF8F8F8F8)) >> v679) | (((v702 & 0xF1F1F1F0 ^ 0xF8F8F8F8) & v670) << STACK[0x928]);
  v705 = (v701 ^ -v701 ^ ((v698 ^ v656) - (v698 ^ v656 ^ v701))) + (v698 ^ v656);
  STACK[0x770] = v677;
  v706 = v554 ^ LODWORD(STACK[0x6D8]) ^ *(v400 + 4 * BYTE3(v677)) ^ __ROR4__(*(v400 + 4 * BYTE1(v680)), 16) ^ __ROR4__(*(v400 + 4 * v687), 24);
  LODWORD(v656) = __ROR4__(*(v400 + 4 * BYTE2(v685)), 8);
  v707 = *(v693 + 4 * (LODWORD(STACK[0x7D0]) - 2120 * ((2025928 * LODWORD(STACK[0x7D0])) >> 32)));
  v708 = 1079 * (((2 * v689) & 0x14) + (v689 ^ 0x60A));
  v709 = *(STACK[0x5C0] + 4 * (v708 - 2120 * ((2025928 * v708) >> 32)));
  v710 = STACK[0x818] ^ 0x57315F8D ^ (2039570243 * (((v707 ^ 0xF17EF652) + 243337646) ^ ((v707 ^ 0x92379FC2) + 1841848382) ^ ((v707 ^ 0xB27B082A) + 1300559830)) - 1228039762) ^ (725634795 * (((v709 ^ 0xD8E74EBB) + 655929669) ^ ((v709 ^ 0xD9F2469C) + 638433636) ^ ((v709 ^ 0xD027699D) + 802723427)) + 260465086) ^ ((1451269590 * (((v709 ^ 0xD1DBBEFC) + 774127876) ^ ((v709 ^ 0xACB46001) + 1397465087) ^ ((v709 ^ 0x2C5DBF47) + 1403142329)) + 520930172) | 0xA74E6B4E);
  v711 = (v706 ^ v656) + v704 - 2 * ((v706 ^ v656) & v704);
  LODWORD(v687) = *(v400 + 4 * BYTE2(v687));
  v712 = v699 >> (STACK[0x818] ^ 0x8D ^ (67 * (((v707 ^ 0x52) - 82) ^ ((v707 ^ 0xC2) + 62) ^ ((v707 ^ 0x2A) - 42)) - 82) ^ (-21 * (((v709 ^ 0xBB) + 69) ^ ((v709 ^ 0x9C) + 100) ^ ((v709 ^ 0x9D) + 99)) - 66) ^ ((-42 * (((v709 ^ 0xFC) + 4) ^ ((v709 ^ 1) - 1) ^ ((v709 ^ 0x47) - 71)) + 124) | 0x4E));
  STACK[0x890] = v710;
  v713 = v554 ^ __ROR4__(v687, 8) ^ v691 ^ __ROR4__(*(v400 + 4 * v685), 24) ^ *(v400 + ((v680 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x6E8]) ^ (v712 + v692);
  if ((((v696 ^ 0xD9) + 24) | v697) == (((v696 ^ 0xD9) + 24) ^ v697))
  {
    v714 = (v696 ^ 0xD9) & 0x40;
  }

  else
  {
    v714 = -v697;
  }

  v715 = STACK[0x900];
  v716 = *(STACK[0x900] + 1377 * (v696 ^ 0xE2) + 1334313 - 4864 * (((1766023 * (1377 * (v696 ^ 0xE2u) + 1334313)) >> 32) >> 1)) ^ (((v714 + (v696 ^ 0xD9) + 24) ^ (v696 ^ 0xD9) & 0xFFFFFFBF) - ((2 * ((v714 + (v696 ^ 0xD9) + 24) ^ (v696 ^ 0xD9) & 0xFFFFFFBF)) & 0xFFFFFFEC) + 118) ^ 0x62;
  v717 = 1377 * (((2 * v711) & 0x1B0 ^ 0x190) + (v711 ^ 0xA33));
  v718 = *(STACK[0x648] + v717 - 4864 * (((7064091 * v717) >> 32) >> 3));
  v719 = (v716 >> 5) | (8 * v716);
  v720 = *(v400 + 4 * BYTE2(v711));
  v721 = ((v719 - BYTE1(v720) + 110) ^ 0x53C) + 2 * (((v719 - (v720 >> 8) + 110) ^ 0xFFFFFFC3) & 0xCD);
  v722 = *(STACK[0x648] + 1377 * v721 - 4864 * (((1766023 * (1377 * v721)) >> 32) >> 1));
  v723 = 49 * (((v722 ^ 0x5D) - 93) ^ ((v722 ^ 0xFFFFFFDD) + 35) ^ ((v722 ^ 0xFFFFFFF6) + 10));
  v724 = (((v723 - 106) ^ (106 - v723) ^ (57 - ((v723 - 106) ^ 0x39))) + 57) ^ (LODWORD(STACK[0x3F8]) + 98 * (((v722 ^ 0x60) - 96) ^ v722 ^ ((v722 ^ 0x16) - 22)));
  v725 = (16 * ((3 * (((v718 ^ 3) + 61) ^ ((v718 ^ 8) + 56) ^ ((v718 ^ 0xD) + 3))) & 3)) ^ (121 - 9 * (((v718 ^ 0x17) + 105) ^ ((v718 ^ 0x44) - 68) ^ ((v718 ^ 0x25) - 37)) - ((46 * (((v718 ^ 0x30) + 16) ^ ((v718 ^ 0x21) + 31) ^ ((v718 ^ 0xE7) + 25)) + 52) & 0x3E));
  v726 = (*(v400 + ((v713 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * (((v724 >> 5) | (8 * v724)) + BYTE1(v720))), 8));
  v727 = (STACK[0x728] >> STACK[0x870]) | STACK[0x720];
  if (!STACK[0x858])
  {
    v727 = STACK[0x728];
  }

  v728 = v702;
  v729 = STACK[0x7A8];
  v730 = v554 ^ (((v702 & 0xBEBEBEBE ^ 0x5F5F5F5F) & STACK[0x7A8]) << v703) ^ ((v630 & (v702 & 0xBEBEBEBE ^ 0x5F5F5F5F)) >> v700);
  v731 = STACK[0x808];
  v732 = v730 ^ LODWORD(STACK[0x6F0]) ^ __ROR4__(*(v400 + 4 * v713), 24) ^ __ROR4__(v720, 8) ^ *(v400 + ((STACK[0x808] >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * BYTE1(v705)), 16);
  v733 = v730 ^ __ROR4__(*(v400 + 4 * BYTE2(v705)), 8) ^ __ROR4__(*(v400 + 4 * (LODWORD(STACK[0x860]) ^ 0xCu)), 24) ^ *(v400 + ((v711 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * BYTE1(v713)), 16) ^ v727;
  v734 = STACK[0x930] & 0xBEBEBEBE ^ 0x5F5F5F5F;
  v735 = v734 & v670;
  v736 = (v734 & STACK[0x8F8]) >> v710;
  v737 = STACK[0x810];
  v738 = v736 ^ (v735 << STACK[0x810]);
  LODWORD(STACK[0x780]) = v554;
  v739 = LODWORD(STACK[0x700]) ^ v554 ^ v738 ^ __ROR4__(*(v400 + 4 * v705), 24);
  v740 = *(v400 + 4 * BYTE1(v711));
  STACK[0x4A0] = v726;
  v741 = v739 ^ v726 ^ __ROR4__(v740, 16);
  v742 = LODWORD(STACK[0x710]) ^ v554 ^ *(v400 + ((v705 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * BYTE1(v731)), 16) ^ __ROR4__(*(v400 + 4 * BYTE2(v713)), 8) ^ v736 ^ (v735 << v703) ^ __ROR4__(*(v400 + 4 * ((v725 ^ 0xE0) - 110)), 24);
  v743 = v715;
  v744 = ((((59 * HIBYTE(v742)) ^ 0x50) - 3) ^ (59 * HIBYTE(v742)) ^ 0x50) + (*(v715 + 1377 * ((59 * HIBYTE(v742)) ^ 0xDC) + 622404 - 4864 * (((1766023 * (1377 * ((59 * HIBYTE(v742)) ^ 0xDCu) + 622404)) >> 32) >> 1)) ^ 0x76);
  v745 = v732;
  v746 = WORD1(v732) + 110;
  v747 = (BYTE2(v732) + 110) ^ 0x11;
  LODWORD(STACK[0x7D0]) = 1377 * v747 - 4864 * ((883012 * (1377 * v747)) >> 32);
  v748 = (v747 & 0x7C | (BYTE2(v732) + 110) & 0x7C ^ 0x6C) ^ v744;
  v749 = *(v400 + 4 * v742);
  v750 = *(v400 + 4 * v732);
  v751 = -83 * HIBYTE(v749);
  LODWORD(v735) = 1377 * ((59 * HIBYTE(v750)) ^ 0x1F) + 3110643;
  LODWORD(v735) = *(v715 + v735 - 4864 * (((7064091 * v735) >> 32) >> 3));
  STACK[0x710] = v751;
  STACK[0x848] = (v751 ^ v741) + 83 * HIBYTE(v749) + 2 * (v751 & v741);
  v752 = ((v735 ^ 0x19 ^ (v735 >> 4) & 3) + 48) | (v750 << 8);
  v753 = v748 + 48;
  LODWORD(STACK[0x808]) = (*(v400 + 4 * BYTE2(v742)) << (v753 & 0x18) << (v753 & 0x18 ^ 0x18)) + (*(v400 + 4 * BYTE2(v742)) >> 8);
  v754 = *(v400 + 4 * BYTE2(v741));
  STACK[0x798] = v733;
  v755 = (*(v400 + 4 * v733) << (BYTE1(v754) & 8) << (BYTE1(v754) & 8 ^ 8)) | HIBYTE(*(v400 + 4 * v733));
  v756 = *(v400 + 4 * BYTE1(v733));
  v757 = STACK[0x758];
  v758 = STACK[0x758] & 0x4C ^ 0x48;
  if (v756 < 0x10000)
  {
    v758 = 4;
  }

  v759 = v728 & 0xF2F2F2F2 ^ 0x79797979;
  v760 = v759 & v729;
  v761 = v760 + (v759 & (~(2 * v729) + v729));
  v762 = v759 ^ LODWORD(STACK[0x650]) ^ v761 ^ (v761 >> 4) ^ (v759 >> (v758 & v757 | ~v757 & 4));
  LODWORD(STACK[0x818]) = v762;
  v763 = STACK[0x610];
  v764 = STACK[0x780];
  v765 = v745;
  v766 = ((STACK[0x610] & v759) >> v700) ^ (v760 << v737) ^ LODWORD(STACK[0x740]) ^ LODWORD(STACK[0x780]) ^ __ROR4__(*(v400 + 4 * BYTE1(v745)), 16) ^ __ROR4__(v754, 8) ^ *(v400 + 4 * v753) ^ v755;
  STACK[0x860] = v766;
  v767 = STACK[0x930] & 0xF2F2F2F2 ^ 0x79797979;
  v768 = STACK[0x760];
  v769 = v767 & STACK[0x760];
  v770 = ((v767 & STACK[0x7D8]) + v769) ^ LODWORD(STACK[0x850]) ^ (((v767 & STACK[0x7D8]) + v769) >> 8);
  v771 = v770 & 0x4ADBF8EE;
  v772 = v770 & 0xB5240711 ^ v767 & 0xB1200311;
  v773 = (2 * v762) & 0xF2F2F2F2 ^ 0x79797979;
  v774 = (v773 & v729) << v737;
  v775 = STACK[0x8F8];
  v776 = STACK[0x890];
  v777 = *(v743 + LODWORD(STACK[0x7D0])) ^ (v746 - ((2 * v746) & 0xEC) + 118) ^ 0x7F;
  v778 = BYTE1(v741);
  v779 = v764 ^ LODWORD(STACK[0x708]) ^ __ROR4__(v749, 24) ^ *(v400 + ((v741 >> 22) & 0x3FC)) ^ __ROR4__(v756, 16) ^ __ROR4__(*(v400 + 4 * ((v777 >> 5) | (8 * v777))), 8) ^ (v774 + ((v773 & STACK[0x8F8]) >> STACK[0x890]));
  v780 = (v757 << LODWORD(STACK[0x320])) | (v757 >> LODWORD(STACK[0x570]));
  if (!LODWORD(STACK[0x570]))
  {
    v780 = v757;
  }

  v781 = v772 | v771 ^ v767 & 0x4ADBF8EA;
  v782 = STACK[0x928];
  v783 = v769 << STACK[0x928];
  v784 = v763;
  v785 = v763 & v767;
  v786 = v785 | v767 & ~v763;
  v787 = v700;
  v788 = v764;
  v789 = ((v785 >> v700) + v783) ^ v780 ^ v764 ^ *(v400 + ((v765 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * BYTE1(v742)), 16);
  v790 = *(v400 + 4 * STACK[0x848]);
  v791 = STACK[0x798];
  v792 = *(v400 + 4 * BYTE2(STACK[0x798]));
  LODWORD(STACK[0x740]) = v790;
  v793 = v789 ^ __ROR4__(v790, 24) ^ __ROR4__(v792, 8);
  STACK[0x848] = v793;
  LODWORD(v791) = v788 ^ LODWORD(STACK[0x748]) ^ *(v400 + ((v791 >> 22) & 0x3FC)) ^ __ROR4__(*(v400 + 4 * v778), 16) ^ LODWORD(STACK[0x808]) ^ v752;
  v794 = v781 ^ (v767 >> 8);
  LODWORD(STACK[0x850]) = v794 & 0x79797979;
  v795 = v782;
  v796 = ((v784 & ((2 * (v794 & 0x79797979)) ^ 0x79797979)) >> v776) ^ ((((2 * (v794 & 0x79797979)) ^ 0x79797979) & v768) << v782);
  v797 = STACK[0x868];
  v798 = *(STACK[0x868] + 4 * BYTE1(v766));
  v799 = v786 ^ v767 ^ v775 ^ ((v786 ^ v767) << 6);
  v800 = *(STACK[0x868] + ((v793 >> 22) & 0x3FC));
  v801 = LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x618]);
  LODWORD(STACK[0x758]) = v798;
  v802 = v801 ^ __ROR4__(v798, 24) ^ __ROR4__(v800, 8);
  HIDWORD(v804) = ((v796 >> 28) | (16 * v796)) ^ __ROR4__(v791, 28) ^ 0x8644D155;
  LODWORD(v804) = HIDWORD(v804);
  v803 = v804 >> 4;
  v805 = *(v797 + 4 * BYTE2(v779));
  v806 = BYTE1(v803) ^ 0x4D;
  LODWORD(STACK[0x7D0]) = v803 ^ 0x58644D15;
  v807 = *(v797 + 4 * ((v804 >> 4) ^ 0x15u));
  HIDWORD(v804) = v805;
  LODWORD(v804) = v805;
  v808 = v804 >> 16;
  if ((v807 & 4 & BYTE2(v805)) != 0)
  {
    v809 = -(v807 & 4);
  }

  else
  {
    v809 = v807 & 4;
  }

  STACK[0x8F0] = v779;
  if ((v779 & 2) != 0)
  {
    v810 = -2;
  }

  else
  {
    v810 = 2;
  }

  v811 = v802 ^ *(v797 + 4 * ((v810 + v779) ^ 2u)) ^ __ROR4__(*(v797 + 4 * (BYTE2(v803) ^ 0x64u)), 16);
  v812 = STACK[0x818];
  v813 = v811 ^ (2 * (v811 & STACK[0x818]));
  LODWORD(STACK[0x748]) = v813 % 0x101;
  v814 = 1079 * (v813 % 0x101);
  STACK[0x930] = v799;
  v815 = STACK[0x810];
  v816 = ((v813 & v729) << STACK[0x810]) | ((v813 & v799) >> v700);
  v817 = STACK[0x910];
  v818 = *(STACK[0x910] + 4 * (v814 + 1668134 - 2120 * ((2025928 * (v814 + 1668134)) >> 32)));
  v819 = *(STACK[0x910] + 4 * (v814 + 1111370 - 2120 * ((2025928 * (v814 + 1111370)) >> 32)));
  v820 = v812 ^ 0x57315F8D ^ (2039570243 * (((v819 ^ 0x618B345) - 102282053) ^ ((v819 ^ 0x2A754C39) - 712330297) ^ ((v819 ^ 0xFD5F9EC6) + 44065082)) - 1228039762) ^ (725634795 * (((v818 ^ 0x518F401D) - 1368342557) ^ ((v818 ^ 0xB39E8C2B) + 1281455061) ^ ((v818 ^ 0x3323AD8C) - 857976204)) + 260465086) ^ ((1451269590 * (((v818 ^ 0x9C10B899) + 1676625767) ^ ((v818 ^ 0xB4729AC7) + 1267557689) ^ ((v818 ^ 0x795043E4) + 112180252)) + 520930172) | 0xA74E6B4E);
  v821 = STACK[0x718] << v795;
  STACK[0x7D8] = v821;
  v822 = LODWORD(STACK[0x7A0]) ^ LODWORD(STACK[0x8E8]);
  LODWORD(STACK[0x808]) = v822;
  STACK[0x818] = v799 >> v787;
  v823 = (((v822 ^ v816) & v821) >> v795) | (((v822 ^ v816) & (v799 >> v787)) << v787);
  v824 = v823 ^ (2 * (v823 & v820));
  v825 = v820 & (2 * (v824 & v820));
  v826 = 1079 * (v825 % 0x101);
  v827 = *(v817 + 4 * (v826 + 1111370 - 2120 * ((2025928 * (v826 + 1111370)) >> 32)));
  v828 = ((v827 ^ 0x36CBC86A) - 919324778) ^ ((v827 ^ 0xE5C89470) + 439839632) ^ ((v827 ^ 0x2313DA0) - 36781472);
  v829 = *(v817 + 4 * (v826 + 555685 - 2120 * ((2025928 * (v826 + 555685)) >> 32))) ^ 0x56DCD58F ^ v824 ^ (2039570243 * v828 - 2013267096 - ((-215826810 * v828 + 1838887772) & 0xA264C374)) ^ (2 * v825) ^ (v825 % 0x101);
  v830 = (2 * v820) & v820 & (4 * (v829 & v820));
  v831 = v820 & (2 * v830);
  LODWORD(STACK[0x300]) = (259671571 - (((STACK[0x4C8] & 0x24C01538) - (STACK[0x4C8] & a21) + (STACK[0x4C8] & 0xA4E1353D ^ 0x7DCA9FFA)) ^ 0x2064B4CC)) & STACK[0x4F8];
  v832 = (v808 ^ -v808 ^ (v807 - ((v809 + v808) ^ v807 & 0xFFFFFFFB))) + v807;
  v833 = ((((59 * v806) ^ 0x50) - 3) ^ (59 * v806) ^ 0x50) + (*(STACK[0x900] + 1377 * ((59 * v806) ^ 0xDC) + 622404 - 4864 * (((1766023 * (1377 * ((59 * v806) ^ 0xDCu) + 622404)) >> 32) >> 1)) ^ 0x76);
  v834 = 1079 * (((((v831 % 0x101) ^ 0x60A) + ((v831 % 0x101) & 0xA)) ^ (v831 % 0x101) & 0xA) + 2 * ((((v831 % 0x101) ^ 0x60A) + ((v831 % 0x101) & 0xA)) & (v831 % 0x101) & 0xA));
  v835 = *(v817 + 4 * (v834 - 2120 * ((2025928 * v834) >> 32)));
  v836 = STACK[0x618];
  v837 = LODWORD(STACK[0x7B0]) ^ LODWORD(STACK[0x618]) ^ __ROR4__(*(v797 + 4 * BYTE2(STACK[0x848])), 16) ^ __ROR4__(*(v797 + 4 * ((v833 ^ 0x7C) + 48)), 24) ^ __ROR4__(*(v797 + ((STACK[0x8F0] >> 22) & 0x3FC)), 8) ^ *(v797 + 4 * STACK[0x860]);
  v838 = __ROR4__(__ROR4__((725634795 * (((v835 ^ 0x9B54A6B2) + 1688951118) ^ ((v835 ^ 0x8EEA71DC) + 1897238052) ^ ((v835 ^ 0xC48CB6D4) + 997411116)) + 260465086) ^ *(v817 + 4 * ((1079 * (v831 % 0x101) + 555685) % ((v784 & 0x848 ^ 0x848) + (v784 & 0x848)))) ^ ((1451269590 * (((v835 ^ 0x64F77750) + 453544112) ^ ((v835 ^ 0xB6A25F45) + 1230872763) ^ ((v835 ^ 0x36749AF) + 2090382929)) + 520930172) | 0xA74E6B4E) ^ (v820 - 785227334 - ((2 * v820) & 0xA264C374)) ^ (v831 % 0x101), 5) ^ 0xD30474BB, 27);
  v839 = v837 ^ (2 * ((v838 ^ 0x61631D78) & v837));
  v840 = v839 & v784;
  v841 = STACK[0x890];
  v842 = STACK[0x940];
  v843 = (((v839 & STACK[0x760]) << v815) + (v840 >> STACK[0x890])) ^ LODWORD(STACK[0x940]);
  v844 = v784 >> STACK[0x890];
  v845 = v784;
  v846 = ((v843 & v844) << STACK[0x890]) ^ ((v843 & STACK[0x6F8]) >> v815);
  v847 = ((1341719819 * v843) ^ (-1341719819 * v843) ^ (((1341719819 * v843) ^ v838 ^ 0x61631D78) - (v838 ^ 0x61631D78))) + ((1341719819 * v843) ^ v838 ^ 0x61631D78);
  v848 = 2 * v794;
  v849 = (2 * v794) & (4 * ((v846 ^ (2 * (v846 & v794))) & v794)) ^ v846 ^ (2 * (v846 & v794));
  v850 = LODWORD(STACK[0x7E8]) ^ LODWORD(STACK[0x618]) ^ __ROR4__(*(v797 + ((STACK[0x860] >> 22) & 0x3FC)), 8);
  v851 = __ROR4__(*(v797 + 4 * BYTE1(STACK[0x848])), 24);
  v852 = v850 ^ v851 ^ v832 ^ (2 * ((v850 ^ v851 ^ v832) & v794));
  v853 = LODWORD(STACK[0x808]) ^ ((v852 & STACK[0x7A8]) << v795) ^ ((v852 & STACK[0x930]) >> v787);
  v854 = ((v853 & v844) << STACK[0x890]) ^ ((v853 & STACK[0x6F8]) >> v815);
  v855 = v854 ^ (2 * (v847 & v854));
  if (STACK[0x878])
  {
    v856 = ~(v847 ^ v855);
  }

  else
  {
    v856 = v847;
  }

  LODWORD(STACK[0x730]) = v855;
  v857 = (2 * v847) & (4 * (v856 & v855)) ^ v855;
  v858 = (8 * (v857 & v847)) & (2 * ((2 * v847) & v847)) & v847;
  v859 = STACK[0x8E8];
  v860 = STACK[0x7A0];
  v861 = LODWORD(STACK[0x8E8]) ^ 0x60606060 ^ LODWORD(STACK[0x7A0]) ^ v849;
  v862 = 2 * (v848 & v794);
  v863 = v862 & (8 * (v849 & v794)) & v794;
  LODWORD(STACK[0x508]) = v863;
  v864 = v861 ^ (2 * v863);
  v865 = STACK[0x870];
  v866 = STACK[0x7B8];
  v867 = v864 >> STACK[0x7B8];
  v868 = v867 | (v864 << STACK[0x870]);
  if ((v868 & 0x400000) != 0)
  {
    v869 = -4194304;
  }

  else
  {
    v869 = 0x400000;
  }

  v870 = (v869 + v868) ^ 0xFFBFFFFF | v867;
  v871 = 1536641751 * v867;
  LODWORD(STACK[0x808]) = v871;
  v872 = LODWORD(STACK[0x7F8]) - v871 + 1536641751 * (v870 & v868);
  v873 = v842 ^ 0x60606060 ^ v857 ^ (2 * v858);
  v874 = STACK[0x858];
  v875 = (v873 << v872) + (v873 >> STACK[0x858]);
  if (!STACK[0x858])
  {
    v875 = v873;
  }

  v876 = v839 + (v842 ^ 0x60606060 ^ (32 * v830) ^ (2 * v831) ^ (((v830 - ((32 * v830) ^ v829)) ^ (32 * v830) ^ v829 ^ v830 ^ -((32 * v830) ^ v829 ^ v830)) + v830)) - v840 - (v839 & ~v845);
  v877 = 1079 * (v858 % 0x101);
  v878 = v877 + 1668134 - 2120 * ((2025928 * (v877 + 1668134)) >> 32);
  v879 = v877 + 1111370 - 4240 * ((1012964 * (v877 + 1111370)) >> 32);
  if (v879 >= 0x848)
  {
    v879 -= 2120;
  }

  v880 = *(v817 + 4 * v878);
  v881 = (2039570243 * (((*(v817 + 4 * v879) ^ 0xB9B81CA) - 194740682) ^ ((*(v817 + 4 * v879) ^ 0xD0BEE933) + 792794829) ^ ((*(v817 + 4 * v879) ^ 0xA170943) - 169281859)) - 1228039762) ^ 0x35DD8D5F;
  STACK[0x668] = v876;
  v882 = v881 + ((725634795 * (((v880 ^ 0x4C3F39C7) - 1279211975) ^ ((v880 ^ 0xADBF6046) + 1379966906) ^ ((v880 ^ 0x30B2383B) - 816986171)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v880 ^ 0x805E67B8) + 2141296712) ^ ((v880 ^ 0x7250BE26) + 229589466) ^ ((v880 ^ 0x233CB824) + 1556301788)) + 520930172) | 0xA74E6B4E)) + v876;
  if (v874)
  {
    v883 = ((v882 + 1) >> v874) + ((v882 + 1) << v865);
  }

  else
  {
    v883 = v882 + 1;
  }

  v884 = (STACK[0x520] & 2) == 0;
  v885 = STACK[0x620];
  if ((STACK[0x520] & 2) != 0)
  {
    v885 = STACK[0x5B0];
  }

  v886 = LODWORD(STACK[0x7E0]) ^ v836 ^ __ROR4__(*(v797 + 4 * BYTE1(STACK[0x8F0])), 24) ^ __ROR4__(*(v797 + 4 * HIBYTE(LODWORD(STACK[0x7D0]))), 8) ^ __ROR4__(*(v797 + 4 * BYTE2(STACK[0x860])), 16) ^ *(v797 + 4 * STACK[0x848]);
  v887 = (((v886 ^ (2 * (v886 & v794))) & STACK[0x7A8]) << STACK[0x928]) ^ v842 ^ (((v886 ^ (2 * (v886 & v794))) & STACK[0x930]) >> v841);
  v888 = ((v887 & STACK[0x7D8]) >> STACK[0x928]) ^ ((v887 & STACK[0x818]) << STACK[0x830]);
  v889 = v848 & (4 * ((v888 ^ (2 * (v888 & v794))) & v794)) ^ v888 ^ (2 * (v888 & v794));
  v890 = v862 & (8 * (v889 & v794));
  LODWORD(STACK[0x500]) = v890;
  v891 = v889 ^ v859 ^ (2 * (v890 & v794));
  v892 = STACK[0x6C0];
  if (v884)
  {
    v892 = STACK[0x65C];
  }

  STACK[0x818] = v891;
  v893 = v891 + v860 - 2 * (v891 & v860);
  if (v872)
  {
    v894 = v868;
  }

  else
  {
    v894 = v864;
  }

  v895 = v893 ^ 0x60606060u;
  if (v872)
  {
    LODWORD(v895) = (v895 << v872) ^ (v895 >> v866);
  }

  v896 = STACK[0x840];
  v897 = LODWORD(STACK[0x800]) + STACK[0x840];
  LODWORD(STACK[0x488]) = v897;
  v898 = v897 + v896;
  if (v898)
  {
    v899 = v894;
  }

  else
  {
    v899 = v875;
  }

  if (v898)
  {
    v894 = v883;
    v883 = v895;
    LODWORD(v895) = v875;
  }

  v900 = (v898 & 2) == 0;
  if ((v898 & 2) != 0)
  {
    v901 = v899;
  }

  else
  {
    v901 = v883;
  }

  if ((v898 & 2) != 0)
  {
    v902 = v883;
  }

  else
  {
    v902 = v899;
  }

  if (v900)
  {
    v903 = v894;
  }

  else
  {
    v903 = v895;
  }

  if (v900)
  {
    v904 = v895;
  }

  else
  {
    v904 = v894;
  }

  v905 = STACK[0x3E8];
  v906 = STACK[0x5C8];
  v907 = LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x5C8]);
  v908 = v903 + 1073324929 * ((v901 ^ 0x34343434) - v907);
  v909 = v904 + 227978631 * ((v892 ^ 0x34343434) - (v902 ^ LODWORD(STACK[0x5C8])));
  v910 = v906 ^ v885 ^ v901 ^ v908 ^ (16 * (v908 ^ v906 ^ v885));
  v911 = (v909 | v906) & 0x36415F59 ^ v906 & 0x36415F59 & v909;
  v912 = v909 ^ LODWORD(STACK[0x5C8]);
  v913 = STACK[0x5F0];
  v914 = (STACK[0x5F0] ^ 0xCBCBCBCB) + v912;
  v915 = v911 | v912 & 0xC9BEA0A6;
  v916 = (v910 ^ 0x77777774) + 76622713 * v914;
  HIDWORD(v917) = STACK[0x5C8];
  LODWORD(v917) = STACK[0x5C8];
  v918 = (v917 >> 21) & 0xFFFFF80F ^ __ROR4__(v915, 28);
  v919 = *(v817 + 4 * (1079 * ((v885 ^ 0x34343434) % 0x101) + 834067 - 2120 * ((2025928 * (1079 * ((v885 ^ 0x34343434) % 0x101) + 834067)) >> 32)));
  HIDWORD(v917) = v919 ^ 0x13261BA;
  LODWORD(v917) = v919 ^ 0xD0000000;
  v920 = v917 >> 26;
  v921 = v902 & 0x10000;
  if ((v902 & 0x10000 & v892) != 0)
  {
    v921 = -v921;
  }

  v922 = 1079 * (((v921 + v892) ^ v902 & 0xFFFEFFFF) % 0x101) + 1390831;
  v923 = *(v817 + 4 * (v922 - 2120 * ((2025928 * v922) >> 32)));
  HIDWORD(v925) = v923 ^ 0x261BA;
  LODWORD(v925) = v923 ^ 0xD1300000;
  v924 = v925 >> 19;
  v926 = v916 + 76622713;
  HIDWORD(v925) = v918 ^ 0xA30B306C;
  LODWORD(v925) = v918 ^ 0xA30B306C;
  v927 = 1079 * ((v906 ^ 0x34343434u) % 0x101);
  v928 = (*(v817 + 4 * (v927 + 1946516 - 2120 * ((2025928 * (v927 + 1946516)) >> 32))) ^ 0xFC74CED7) + v926 + (v924 ^ 0x64181B5E);
  v929 = v907 ^ v920 ^ *(v817 + 4 * (1079 * ((v908 ^ LODWORD(STACK[0x5C8])) % 0x101) + 1946516 - 2120 * ((2025928 * (1079 * ((v908 ^ LODWORD(STACK[0x5C8])) % 0x101) + 1946516)) >> 32))) ^ (16 * v920) ^ v926 ^ (((v925 >> 4) ^ ((v926 ^ v905) << 7)) - 785227334 - 2 * (((v925 >> 4) ^ ((v926 ^ v905) << 7)) & 0x513261BB ^ (v925 >> 4) & 1));
  v930 = *(v817 + 4 * (v927 - 2120 * ((2025928 * v927) >> 32)));
  LODWORD(STACK[0x930]) = v930;
  HIDWORD(v925) = v930 ^ 0x13261BA;
  LODWORD(v925) = v930 ^ 0xD0000000;
  v931 = v907 ^ v913 ^ v902 ^ (v928 + 1);
  v932 = v929 ^ v931;
  v933 = v931 ^ v892;
  v934 = v933 ^ v913 ^ ((*(v817 + 4 * (1079 * ((v908 ^ v885) % 0x101) + 1946516 - 2120 * ((2025928 * (1079 * ((v908 ^ v885) % 0x101) + 1946516)) >> 32))) ^ 0x38B3128) + ((v925 >> 27) ^ 0x8A5C190A) + v928 + 1 + 1);
  LODWORD(STACK[0x830]) = v905 << 8;
  v935 = v907 ^ (v905 << 8) ^ v908 ^ (v934 << 8);
  v936 = v885 ^ (4 * v885) ^ v935;
  v937 = v906 ^ v934 ^ 0x34 ^ v935;
  v938 = v932 & 0x34343434 ^ 0x20240034;
  v939 = v932 ^ 0x9C9BB441;
  v940 = v938 | v939 & 0x34343434;
  LODWORD(STACK[0x8F0]) = v936;
  v941 = v936 ^ v906 ^ (4 * (v937 ^ v906));
  v942 = STACK[0x31C] & 0x100;
  v82 = (v941 & v942) == 0;
  v943 = v941 ^ 0x34;
  if (!v82)
  {
    v942 = -v942;
  }

  v944 = v939 ^ LODWORD(STACK[0x2F0]);
  LODWORD(v945) = __ROR4__(v906 ^ 0x2AF0F111, 19) ^ 0x98A4A3D8;
  HIDWORD(v945) = v945;
  v946 = (v942 + v943) ^ STACK[0x31C] & 0xFFFFFEFF;
  v947 = v937 + 840260693 * ((v913 ^ 0x34343434 ^ v933) - (v945 >> 13)) + 262175305 * ((v892 ^ 0x5E71CD2D ^ v939) + (v940 ^ v906));
  v948 = v933 ^ STACK[0x5A0];
  v949 = STACK[0x778];
  v950 = *STACK[0x778];
  v951 = v950 ^ *(STACK[0x778] + 1);
  v952 = v948 ^ 0x44444444u;
  v953 = STACK[0x820];
  v954 = ((*(STACK[0x820] + BYTE1(v952)) ^ 0x76) << 16) | (((v951 - ((2 * v951) & 0xEC) + 118) ^ *(STACK[0x820] + BYTE2(v952))) << 24) | ((*(STACK[0x820] + (v948 ^ 0x44u)) ^ 0x76) << 8);
  STACK[0x7E0] = v952;
  v955 = (((*(v953 + (v952 >> 24)) ^ 0x24) - 36) ^ ((*(v953 + (v952 >> 24)) ^ 0xB4) + 76) ^ ((*(v953 + (v952 >> 24)) ^ 0xE6) + 26)) - 28;
  v956 = STACK[0x900];
  v957 = *(STACK[0x900] + 1377 * (v955 ^ 0xE2) + 1334313 - 4864 * (((1766023 * (1377 * (v955 ^ 0xE2u) + 1334313)) >> 32) >> 1)) ^ v955 ^ 0xD9 ^ ((v955 ^ 0xD9) - 2 * (((v955 ^ 0xD9) + 24) & 0x77 ^ (v955 ^ 0xD9) & 1) - 114) ^ 0x62;
  LODWORD(STACK[0x7D0]) = v946;
  v958 = (v946 ^ v954) + ((v957 >> 5) | (8 * v957)) - 2 * (v946 & ((v957 >> 5) | (8 * v957)));
  v959 = (v947 + 262175305) ^ a50;
  LODWORD(STACK[0x598]) = v959;
  v960 = v958 ^ v959;
  v961 = v958 ^ v959 ^ v944;
  LODWORD(STACK[0x540]) = v961;
  v962 = v948 ^ 0x715EE202 ^ v961;
  v963 = *(v953 + (v962 >> 24)) ^ 0x76 | ((v950 ^ v949[2] ^ 0x76 ^ *(v953 + BYTE2(v962))) << 24);
  v964 = ((*(v953 + BYTE1(v962)) ^ 0x76) << 16) | (((*(v953 + v962) ^ 0x49 ^ *(v956 + 1377 * (*(v953 + v962) ^ 0x44) + 3470040 - 4864 * (((7064091 * (1377 * (*(v953 + v962) ^ 0x44u) + 3470040)) >> 32) >> 3))) + 102) << 8);
  v965 = *(STACK[0x648] + 1377 * (v950 ^ 0x55) + 5915592 - 4864 * (((7064091 * (1377 * (v950 ^ 0x55) + 5915592)) >> 32) >> 3));
  v966 = (((v965 ^ 0x17) - 23) ^ ((v965 ^ 0x10) - 16) ^ ((v965 ^ 0x71) - 113)) - 28;
  LODWORD(v952) = ((v966 ^ 0xFFFFFFBC) - ((2 * (v966 ^ 0xFFFFFFBC) - 52) & 0xEC) - 36) ^ v949[4];
  LODWORD(STACK[0x800]) = v958;
  v967 = v958 ^ v963;
  v968 = v967 ^ v964;
  LODWORD(STACK[0x6F0]) = v944;
  v969 = v968 ^ v944;
  STACK[0x498] = v962;
  v970 = v962 ^ v968 ^ v944;
  v971 = *(v953 + (HIBYTE(v970) ^ 0x45)) ^ 0x76;
  v972 = (v968 ^ (v952 << 24) | v971) ^ v967 & v971;
  v973 = v970 ^ 0x456AD636;
  LODWORD(v952) = 1377 * ((59 * BYTE2(v973)) ^ 0xDC) + 622404;
  v974 = ((*(v953 + (((((((59 * ((v970 ^ 0x456AD636) >> 16)) ^ 0x50) - 3) ^ (59 * ((v970 ^ 0x456AD636) >> 16)) ^ 0x50) + (*(v956 + v952 - 4864 * (((1766023 * v952) >> 32) >> 1)) ^ 0x76)) ^ 0x7C) + 48)) ^ 0x76) << 24) | ((*(v953 + (v970 ^ 0x36u)) ^ 0x76) << 8);
  LODWORD(STACK[0x570]) = v960;
  STACK[0x718] = v968;
  v975 = v960 ^ 0x704B5B95 ^ v968;
  v976 = v972 ^ (v974 & 0xFF00FFFF | ((*(v953 + BYTE1(v973)) ^ 0x76) << 16));
  v977 = v969 ^ 0xB396727u;
  LODWORD(STACK[0x708]) = v975;
  v978 = v976 ^ v975;
  v979 = v976 ^ v975 ^ v977;
  STACK[0x928] = v979;
  STACK[0x478] = v973;
  v980 = v979 ^ v973;
  v981 = v980 ^ 0xDAFC0E60;
  v982 = 1377 * ((BYTE2(v980) ^ 0xBC) + ((2 * (BYTE2(v980) ^ 0xBC)) & 0xE4) - ((4 * (BYTE2(v980) ^ 0xBC)) & 0xC8) + 114) + 3470040;
  v983 = v982 - 4864 * (((7064091 * v982) >> 32) >> 3);
  v984 = *(v953 + (v981 >> 24)) ^ 0x76;
  v985 = v972 & 2;
  if ((v985 & v984) != 0)
  {
    v985 = -v985;
  }

  v986 = (((v950 ^ v949[8]) << 24) | ((*(v953 + (v980 ^ 0x60u)) ^ 0x76) << 8)) ^ ((*(v953 + ((*(v956 + v983) ^ (BYTE2(v980) - ((v980 >> 15) & 0xEC) + 118) ^ 0xB5) + 102)) ^ 0x76) << 24);
  LODWORD(STACK[0x4F8]) = v976;
  v987 = v986 ^ v976 & 0xFFFFFFFD ^ (v985 + v984) ^ ((*(v953 + BYTE1(v981)) ^ 0x76) << 16);
  v988 = v949[16] ^ v950;
  STACK[0x558] = v977;
  STACK[0x848] = v981;
  v989 = v987 ^ v977 ^ v981 ^ 0xDAC72585;
  STACK[0x840] = BYTE1(v989);
  v990 = ((*(v953 + BYTE1(v989)) ^ 0x76) << 6) ^ __ROR4__(v987 ^ (v988 << 24), 10);
  v991 = (v987 ^ v977 ^ v981) ^ 0x85u;
  STACK[0x810] = v991;
  LODWORD(v991) = *(v953 + v991) ^ 0x76;
  STACK[0x870] = v989 >> 24;
  LODWORD(v991) = *(v953 + (v989 >> 24)) ^ 0x76 | (v991 << 8);
  v992 = BYTE2(v989);
  STACK[0x7F8] = v992;
  LODWORD(v992) = (v991 | ((*(v953 + v992) ^ 0x76) << 24)) ^ __ROR4__(v990 ^ 0x2F815782, 22);
  LODWORD(STACK[0x630]) = v978;
  v993 = v987 ^ v978;
  v994 = v987 ^ v978 ^ 0x91F1B7CF ^ v992;
  v995 = v987 ^ v977 ^ 0x2C68D941;
  STACK[0x6A8] = v995;
  v996 = v994 + v995 - 2 * (v994 & v995);
  v997 = v987 ^ v977 ^ v981 ^ 0x2C68D941;
  v998 = v997 ^ v996;
  v999 = *(v953 + BYTE1(v998));
  v1000 = (((*(v953 + BYTE2(v998)) ^ 0x76) << 24) | (((v999 ^ 0x49 ^ *(v956 + 1377 * (v999 ^ 0x44) + 3470040 - 4864 * (((7064091 * (1377 * (v999 ^ 0x44u) + 3470040)) >> 32) >> 3))) + 102) << 16)) ^ (((v949[32] ^ v950) << 24) | ((*(v953 + (v997 ^ ((v993 ^ 0xCF ^ v992) + (v987 ^ v977 ^ 0x41) - 2 * ((v993 ^ 0xCF ^ v992) & (v987 ^ v977 ^ 0x41))))) ^ 0x76) << 8) | *(v953 + (v998 >> 24)) ^ 0x76) ^ v992;
  STACK[0x490] = v994;
  LODWORD(STACK[0x858]) = v1000 ^ v994;
  LODWORD(v995) = LODWORD(STACK[0x7C8]) ^ 3;
  STACK[0x7B8] = v998;
  STACK[0x6E8] = v992 ^ 0x55E08BE;
  v1001 = (v949[128] ^ v950) << 24;
  v1002 = *(STACK[0x948] + 8 * v995);
  LODWORD(STACK[0x878]) = v996;
  LODWORD(STACK[0x4C8]) = v996 ^ 0xF6AFFCC4;
  STACK[0x6D8] = v996 ^ 0xF6AFFCC4 ^ v1000 ^ v994 ^ 0x676560EE;
  return v1002(v1000);
}

uint64_t sub_5A22C@<X0>(int a1@<W8>)
{
  v7 = v2 + v3 + 847;
  v8 = *(v4 + 8) / 1000;
  STACK[0x978] -= 16;
  v6[1] = v8;
  v6[2] = a1;
  STACK[0x878] = v8;
  v6[3] = (*(v1 + 8 * (v3 - 2038112721)))();
  v9 = (*(STACK[0x948] + 8 * (v3 ^ (v5 - 1588))))();
  v10 = STACK[0x948];
  *v6 = v9;
  v11 = STACK[0x938];
  return (*(v10 + 8 * v7))();
}

uint64_t sub_5A30C()
{
  *(v4 + 28) = -v2;
  v6 = LODWORD(STACK[0x910]) - v2;
  *(v4 + 16) = (v3 + 1) - v2;
  *v4 = v2 ^ LODWORD(STACK[0x908]);
  *(v4 + 4) = v6;
  *(v4 + 8) = v2 + v1 + 1596328632;
  *(v4 + 32) = v2 + 3;
  *(v4 + 40) = v6 + 83;
  v7 = (*(v0 + 8 * (v1 ^ (v1 - 1688))))(v5 - 208);
  return (*(STACK[0x948] + 8 * *(v4 + 24)))(v7);
}

uint64_t sub_5A3FC@<X0>(int a1@<W8>)
{
  *(v1 + 344) = STACK[0x370];
  *(v1 + 64) = &STACK[0xC0C];
  LODWORD(STACK[0xD10]) = -1440774656;
  return (*(v2 + 8 * a1))(624788556);
}

uint64_t sub_5A4C8@<X0>(unsigned int a1@<W8>)
{
  v7 = (*(STACK[0x6C0] + (3013 * v2 + 4661111) % 0x1188u) - 125) * (v3 + 8344) + 73924424;
  v8 = v7 - (((v7 * a1) >> 32) >> 12) * v1;
  v9 = *(v4 + 4 * ((v8 ^ 0x3EDF7A7FF7FDFFCBLL) + ((2 * v8) & 0x7F96)) + 0x4821600200800D4);
  v10 = v5 + 9002 * v2 - ((((v5 + 9002 * v2) * a1) >> 32) >> 12) * v1;
  v11 = *(STACK[0x6C0] + (3013 * (((v9 ^ 0xB3C25A4C) - 447209897) ^ ((v9 ^ 0x6F2353AC) + 968431543) ^ ((v9 ^ 0xDCE10916) - 1971630835)) - 1158886771) % 0x1188);
  v12 = v11 & 0xBB ^ 0x9C;
  v13 = v11 ^ 2;
  *(v6 + 4 * ((v10 ^ 0x22FD8EDF90CC4F76) + ((2 * v10) & 0x1EEC)) + 0x7409C481BCCEC228) = (((v11 ^ (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xFFFFFF40) & ((((((*(STACK[0x6C0] + (3013 * (((BYTE2(v9) ^ 0xD9A019F8) + 2117670201) ^ ((BYTE2(v9) ^ 0x25CA03B) - 1513771780) ^ ((BYTE2(v9) ^ 0xDBFCB987) + 2087040328)) + 1950984853) % 0x1188) - 125) << 8) | (*(STACK[0x6C0] + (3013 * (((HIBYTE(v9) ^ 0x5DBE21FE) - 1244966716) ^ ((HIBYTE(v9) ^ 0xB0F972D4) + 1485571050) ^ ((HIBYTE(v9) ^ 0xED47531E) + 87171620)) + 308189500) % 0x1188) << 16) | (*(STACK[0x6C0] + (3013 * (((BYTE1(v9) ^ 0x9C653191) + 1784805640) ^ ((BYTE1(v9) ^ 0xB1C7006B) + 1204013310) ^ ((BYTE1(v9) ^ 0x2DA23105) - 609814124)) + 2052013148) % 0x1188) - 125)) << 8) - 2097152000) ^ 0x3D6214C3) | (v11 ^ (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) & 0x3C) ^ 0x926EB0D;
  return (*(STACK[0x6C8] + 8 * ((1232 * (v2 == 255)) ^ v3)))();
}

uint64_t sub_5A92C@<X0>(int a1@<W3>, int a2@<W8>)
{
  v5[160] = *(v7 + 8 * a2);
  v5[227] = v4;
  v8 = *(v4 + 8);
  v5[228] = v4 + 8;
  return (*(v7 + 8 * ((1015 * ((v2 ^ 0x6FD9FFBFFDE6ECF3) + ((2 * v2) & 0x1FBCDD9E6uLL) + v8 - 0x6FD9FFBFFDE6ECF3 < ((v6 + v3 - 488) ^ 0xFFFFF73FuLL))) ^ (a1 + v3 + 500))))();
}

uint64_t sub_5AA6C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x980] = v2;
  LODWORD(STACK[0xC08]) = *(a1 + 152);
  return (*(v3 + 8 * (v1 - 137)))();
}

uint64_t sub_5AAB0()
{
  v2 = LODWORD(STACK[0x788]) + 2038114150;
  STACK[0x5F8] = (LODWORD(STACK[0x740]) << 8);
  LODWORD(STACK[0x858]) = v0 << 16;
  STACK[0x678] = LODWORD(STACK[0x4F0]) ^ 0xD18D952D;
  v3 = *(STACK[0x948] + 8 * (v2 - 2038115187));
  STACK[0x870] = STACK[0x770];
  LODWORD(STACK[0x5D8]) = STACK[0x6E8];
  LODWORD(STACK[0x840]) = STACK[0x570];
  LODWORD(STACK[0x6CC]) = STACK[0x838];
  STACK[0x7D8] = LODWORD(STACK[0x4C8]);
  STACK[0x330] = LODWORD(STACK[0x790]);
  STACK[0x790] = STACK[0x6D8];
  STACK[0x7A0] = v1;
  STACK[0x768] = LODWORD(STACK[0x7F0]);
  return v3();
}

uint64_t sub_5AB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, int a23, unsigned int a24, char *a25)
{
  a24 = v26 - 1381 - 434465113 * (&a22 ^ 0xF5A22A5F);
  a22 = &a12;
  (*(v25 + 8 * (v26 ^ 0x253)))(&a22);
  a22 = &a12;
  a24 = v26 - 1381 - 434465113 * ((2 * (&a22 & 0x318D4260) - &a22 - 831341157) ^ 0x3BD097C4);
  (*(v25 + 8 * (v26 + 563)))(&a22);
  a24 = v26 - 1381 - 434465113 * ((2 * (&a22 & 0x576B3EE8) - &a22 + 680837399) ^ 0xDD36EB48);
  a22 = &a12;
  (*(v25 + 8 * (v26 + 563)))(&a22);
  v27 = 1600728529 * (((&a22 | 0xEEA698B5) + (~&a22 | 0x1159674A)) ^ 0x6B9352F5);
  a25 = &a12;
  LODWORD(a22) = v27 ^ 0x940FE5FB;
  a23 = (v26 + 2065904262) ^ v27;
  (*(v25 + 8 * (v26 | 0x22B)))(&a22);
  v28 = 1600728529 * ((716579548 - (&a22 | 0x2AB622DC) + (&a22 | 0xD549DD23)) ^ 0x507C1762);
  a25 = &a12;
  LODWORD(a22) = v28 ^ 0x940FE5FB;
  a23 = (v26 + 2065904262) ^ v28;
  v29 = (*(v25 + 8 * (v26 ^ 0x22B)))(&a22);
  return (*(v25 + 8 * ((91 * (HIDWORD(a22) == (((((2 * v26) ^ 0x13A4) - 1458961988) | 0x44044101) ^ 0x2D4E7BA9))) ^ v26)))(v29);
}

uint64_t sub_5AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v65 = a64;
  *(v65 + 8) = v64 - 1583996299 * ((2 * ((v66 - 208) & 0x776A8E0) - (v66 - 208) + 2022266655) ^ 0x31749600) + 1868;
  v68 = (*(v67 + 8 * (v64 + 2567)))(v66 - 208);
  if (*(v65 + 12))
  {
    v69 = 1;
  }

  else
  {
    v69 = *a64 == 0;
  }

  v70 = !v69;
  return (*(STACK[0x948] + 8 * ((v70 * (((v64 + 2038415105) & 0xFFFB6CBF) - 2038115467)) | v64)))(v68);
}

uint64_t sub_5AE18()
{
  v3 = STACK[0xE68];
  STACK[0xC00] = 0;
  LODWORD(STACK[0xE0C]) = 0;
  v4 = *(&off_18D8F0 + (v1 ^ 0xAD5)) - 1317498158;
  (*(v0 + 8 * (v1 + 52)))(v4);
  v5 = *(&off_18D8F0 + (v1 ^ 0xAD3));
  STACK[0x940] = v5;
  v6 = *v3;
  LODWORD(v5) = (*(v5 - 1917625750) ^ 0xCEBBDF9F) + 2078604406 + ((*(v5 - 1917625750) << ((3 * (v1 ^ 0xCC)) ^ 0xC1)) & 0x9D77BF3E);
  v7 = 1183051249 * ((((v2 - 208) | 0x3731668C) - (v2 - 208) + ((v2 - 208) & 0xC8CE9970)) ^ 0xD2D2B050);
  v8 = v2 - 208;
  *(v8 + 16) = -1183051249 * ((((v2 - 208) | 0x3731668C) - (v2 - 208) + ((v2 - 208) & 0xC8CE9970)) ^ 0xD2D2B050) + 1486709509 * *(v3 + 12) + 377754167;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7 + v1 - 1734;
  *(v8 + 8) = &STACK[0xE0C];
  *(v8 + 48) = v5 ^ v7;
  *(v8 + 40) = &STACK[0xC00];
  (*(v0 + 8 * (v1 | 0x41)))(v2 - 208);
  v9 = *(v2 - 208);
  v10 = (*(v0 + 8 * (v1 ^ 0x7C)))(v4);
  return (*(v0 + 8 * ((45 * (v9 == -2140580912)) ^ v1)))(v10);
}

uint64_t sub_5AFC8(int8x16_t a1, int8x16_t a2, int8x16_t a3, int32x4_t a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = a12 + 4 * v16;
  v18 = v16 + 4;
  a6.i64[0] = *(v17 + 4);
  a6.i32[2] = *(v17 + 12);
  v19 = vextq_s8(a5, a6, 0xCuLL);
  a6.i32[3] = *(a12 + 4 * v18);
  v20 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a6, a2), vandq_s8(v19, a1)), 1uLL), *(v17 + 1588));
  v21.i32[0] = *(v15 + 4 * (*(v17 + 4) & v14));
  v21.i32[1] = *(v15 + 4 * (*(v17 + 8) & 1));
  v21.i32[2] = *(v15 + 4 * (a6.i8[8] & 1));
  v21.i32[3] = *(v15 + 4 * (a6.i8[12] & 1));
  *v17 = veorq_s8(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), a3)), a4), v21);
  return (*(a10 + 8 * (((v18 == 224) * v13) ^ v12)))();
}

uint64_t sub_5B074@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * ((859 * (((LODWORD(STACK[0xC0C]) - a1) | (a1 - LODWORD(STACK[0xC0C]))) >= 0)) ^ (a1 + 9)));
  LODWORD(STACK[0x8F0]) = v1 - 3;
  return v3();
}

uint64_t sub_5B0C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v4 + 8) = a2;
  *(v4 + 4) = v3 + 1913485891 * ((((v5 - 208) | 0xD677769B) - (v5 - 208) + ((v5 - 208) & 0x29888960)) ^ 0x4B9B91B1) + 15;
  v6 = (*(a1 + 8 * (v3 ^ 0xC08)))(v5 - 208);
  v7 = STACK[0x948];
  *(v2 + 456) = 0;
  return (*(v7 + 8 * v3))(v6);
}

uint64_t sub_5B148(uint64_t a1, uint64_t a2)
{
  v5 = v3[82];
  v5[116] = v5[88];
  v5[64] = 1;
  v6 = *(v3[174] + 16);
  v3[183] = *(v4 + 8 * v2);
  return (*(v4 + 8 * ((514 * (v2 ^ 0x32) - 903) ^ v2 ^ (152 * ((v2 ^ 0xAD8CAD68) < 0xBC70E93F)))))(v5 + 65, a2, 938337180);
}

uint64_t sub_5B388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = (9002 * (*(STACK[0x6C0] + (3013 * v6 + 4661111) % 0x1188u) - 125) + 13845076) % (163 * (v7 ^ 0x219u) + 12998);
  v13 = *(v9 + 4 * ((v12 ^ 0x3EF7F5F7DF4FF3FFLL) + ((2 * v12) & 0x67FE)) + 0x420282082C03004);
  v14 = ((((v13 << 15) ^ 0x2BEDAF77) + 2130933924) ^ (((v13 << 15) ^ 0xE20253F4) - 1226013663) ^ (((v13 << 15) ^ 0xC994FC83) - 1652937896)) - 1309333461;
  v15 = v10 + 9002 * v6;
  v16 = *(STACK[0x6C0] + 3013 * (v14 >> 15) - 4488 * (((122494611 * (3013 * (v14 >> 15))) >> 32) >> 7));
  v17 = v16 & 0x4F ^ 0x66;
  LOBYTE(v14) = v16 ^ 2;
  v18 = v16 ^ (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * ((v16 ^ 2) & (2 * v16) & 6 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  *(v11 + 4 * (((v15 - (((v15 * v8) >> 32) >> 12) * a6) ^ 0x2665FFB377E6DFFELL) + ((2 * (v15 - (((v15 * v8) >> 32) >> 12) * a6)) & 0x3FFC)) + 0x6668013220648008) = ((v18 & 0xF8 ^ 0xFFFFFFE7) & ((((((*(STACK[0x6C0] + (3013 * (((BYTE2(v13) ^ 0x809984D2) + 1412142372) ^ ((BYTE2(v13) ^ 0xD1AC7B2D) + 85879517) ^ ((BYTE2(v13) ^ 0x5135FFBB) - 2054689205)) - 1395683104) % 0x1188) - 125) << 8) | (*(STACK[0x6C0] + (3013 * (((HIBYTE(v13) ^ 0x64C98A3F) + 1932137462) ^ ((HIBYTE(v13) ^ 0x89724602) - 1634607159) ^ ((HIBYTE(v13) ^ 0xEDBBCC09) - 94874172)) - 690582093) % 0x1188) << 16) | (*(STACK[0x6C0] + (3013 * (((BYTE1(v13) ^ 0x60B8A8F1) + 636643288) ^ ((BYTE1(v13) ^ 0xDAF0619D) - 1615155524) ^ ((BYTE1(v13) ^ 0xBA48C993) - 16644426)) + 1998172972) % 0x1188) - 125)) << 8) - 2097152000) ^ 0x462453A8) | v18 & 0x57) ^ 0x7260AC19;
  return (*(STACK[0x6C8] + 8 * ((2630 * ((v6 ^ (2 * (v6 & 1)) ^ 1) + 2 * ((2 * (v6 & 1u)) & v6) < 0x100)) ^ v7)))();
}

uint64_t sub_5B7A4()
{
  *v2 = (*v0 ^ (67 * (v1 ^ 0x49)) ^ 0xF9) + 2 * *v0 - 17;
  v2[1] = (v0[1] ^ 0x7F) + 2 * v0[1] - 17;
  v2[2] = (v0[2] ^ 0x7F) + 2 * v0[2] - 17;
  v2[3] = (v0[3] ^ 0x7F) + 2 * v0[3] - 17;
  v2[4] = (v0[4] ^ 0x7F) + 2 * v0[4] - 17;
  v2[5] = (v0[5] ^ 0x7F) + 2 * v0[5] - 17;
  v2[6] = (v0[6] ^ 0x7F) + 2 * v0[6] - 17;
  v2[7] = (v0[7] ^ 0x7F) + 2 * v0[7] - 17;
  v2[8] = (v0[8] ^ 0x7F) + 2 * v0[8] - 17;
  v2[9] = (v0[9] ^ 0x7F) + 2 * v0[9] - 17;
  v2[10] = (v0[10] ^ 0x7F) + 2 * v0[10] - 17;
  v2[11] = (v0[11] ^ 0x7F) + 2 * v0[11] - 17;
  v2[12] = (v0[12] ^ 0x7F) + 2 * v0[12] - 17;
  v2[13] = (v0[13] ^ 0x7F) + 2 * v0[13] - 17;
  v2[14] = (v0[14] ^ 0x7F) + 2 * v0[14] - 17;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_5B938@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 48);
  STACK[0x990] = a2 + 48;
  return (*(v3 + 8 * (((v4 == ((v2 - 8668907) & 0x79FF6FE7 ^ a1)) * ((349 * (v2 ^ 0x3AA)) ^ 0x2A1)) ^ v2)))();
}

uint64_t sub_5BAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v8 = STACK[0x518] + 4 * ((551 * a5 + 710790) % 0x1D48u);
  v9 = STACK[0x518] + 4 * ((551 * a5 + 1137264) % 0x1D48u);
  v10 = *(*STACK[0x538] + (*STACK[0x530] & ((v7 - 50097732) & 0x2FC6BB5 ^ 0x5B104594u)));
  v11 = *a7 ^ 0xF1E76555;
  *(v9 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v10 + a3) & v11)) ^ *(v8 - 0x40E8C283FA03C307) ^ (1912024365 * v9) ^ (1912024365 * v8) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v10 + 1527793161) & v11)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + v10 + a3) & v11)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + v10 + 1527793161) & v11));
  return (*(STACK[0x548] + 8 * ((126 * (a5 == 255)) ^ v7)))();
}

uint64_t sub_5BC40@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W5>, int a4@<W6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(STACK[0x4B8]) = 0;
  v23 = a3 + a1;
  v24 = (a3 + a2) >> 16;
  v25 = (a3 + a2 - v24) >> 8;
  v26 = (v23 - v25 - v24) >> 12;
  v27 = STACK[0x8F8];
  v28 = STACK[0x8F8] + a3 + v26 - v25 - v24 - v15;
  v29 = v28 >> ((a5 + 106) ^ 0xA);
  v30 = v28 & 0xF;
  v31 = a3 - v29 + v26;
  v32 = v31 + v20;
  v33 = (v32 - v25 - v24) >> 10;
  v34 = (v32 + v33 - v25 - v24) >> 6;
  v35 = STACK[0x8F8] + a3 - v29 + v33 + v26 + v34 - v25 - v24;
  v36 = ((v35 - v19) >> v30 >> (v30 ^ 0xF)) - v29 + a3 + v34 + v33 + v26;
  v37 = (v36 + v18 - v25 - v24) >> 6;
  v38 = STACK[0x8F8] + v36 - v37 - v25 - v24;
  v39 = v38 - v19;
  v40 = STACK[0x8F8] + v36 + ((v36 + v17 - v37 - v25 - v24) >> 10) - ((v36 + v17 + ((v36 + v17 - v37 - v25 - v24) >> 10) - v37 - v25 - v24) >> 3) - v37 - v25 - v24 - v14;
  v41 = (v40 ^ 0xA03E7685) - ((v40 ^ 0xA03E7685) >> 15) + (((v40 ^ 0xA03E7685) - ((v40 ^ 0xA03E7685) >> 15)) >> 2);
  v42 = v41 + 1607039035 - ((v41 + 1607039035) >> 13) + ((v41 + 1607039035 - ((v41 + 1607039035) >> 13)) >> 6);
  v43 = v42 - 911231277 - ((v42 - 911231277) >> 10) + ((v42 - 911231277 - ((v42 - 911231277) >> 10)) >> 4);
  v44 = v43 + 874808561 + ((v43 + 874808561) >> 13);
  LODWORD(STACK[0x638]) = v44;
  v45 = v44 + (v44 >> 8);
  v46 = v39 ^ v22 ^ v42 ^ (v45 + 58505394 + ((v45 + 58505394) >> 10) - ((v45 + 58505394 + ((v45 + 58505394) >> 10)) >> 4));
  if ((v46 & 7) != 0)
  {
    v47 = -1;
  }

  else
  {
    v47 = 0;
  }

  STACK[0x748] = -v46 & 7;
  v48 = 1377 * ((v47 << (-v46 & 7)) ^ 0xEB) + 3822552;
  LOBYTE(v48) = *(STACK[0x900] + v48 - 4864 * (((7064091 * v48) >> 32) >> 3));
  v49 = (9 * (((v48 ^ 0x19) + 103) ^ ((v48 ^ 0xB0) + 80) ^ ((v48 ^ 0xDF) + 33)) - 91) ^ (16 * ((3 * (((v48 ^ 0xE) + 18) ^ ((v48 ^ 0xB) + 37) ^ ((v48 ^ 3) + 61))) & 3));
  v50 = v27 + v31 - v25 - v24 - v15;
  v51 = v35 - v16;
  v52 = STACK[0x328];
  v53 = v38 - v14;
  v54 = 1377 * (*(STACK[0x3E0] + (*(STACK[0x3E0] + (*(STACK[0x3E0] + a14) - 98) % STACK[0x328]) - 9) % STACK[0x328]) ^ 0x69) + 1692333;
  LOBYTE(v54) = *(STACK[0x3E0] + ((*(STACK[0x900] + v54 - 4864 * (((1766023 * v54) >> 32) >> 1)) ^ 0x81) + 31) % STACK[0x328]) + 38;
  v55 = (*(STACK[0x900] + 1377 * (v54 ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (v54 ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - (v54 ^ 4);
  v56 = v50 ^ a4 ^ v40;
  STACK[0x7C8] = v46 & 7;
  v57 = (109 - v49);
  if ((v46 & 7) == 0)
  {
    v57 = 0;
  }

  STACK[0x3A8] = v53 >> 10;
  v58 = v56 ^ v43;
  v59 = v51 ^ v21 ^ v41 ^ v45;
  v60 = v59 ^ (v58 + 1925923392);
  LODWORD(STACK[0x940]) = (16843009 * ((v60 ^ BYTE1(v60) ^ BYTE2(v60)) ^ HIBYTE(v60) ^ 0xA6)) ^ 0xA6A6A6A6;
  LODWORD(STACK[0x418]) = v60 ^ 0x202F4D42;
  v61 = (v49 - 110);
  LODWORD(STACK[0x808]) = (16843009 * v61) ^ ~(v59 & (1459617792 * v61));
  LODWORD(STACK[0x930]) = v57 & v58 ^ (16843009 * v61);
  STACK[0x928] = 16843009 * (v58 & 0x7Fu);
  STACK[0x298] = ((v55 ^ 0xBA) - 110) % v52;
  v62 = *(STACK[0x948] + 8 * a5);
  LODWORD(STACK[0x470]) = 2081016251;
  LODWORD(STACK[0x568]) = -788824948;
  LODWORD(STACK[0x308]) = 1522716574;
  LODWORD(STACK[0x880]) = STACK[0x730];
  LODWORD(STACK[0x8E8]) = STACK[0x830];
  LODWORD(STACK[0x6B0]) = STACK[0x790];
  STACK[0x7E0] = STACK[0x7A0];
  return v62();
}