uint64_t sub_5C084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v11 = (a2 + 4 * v6);
  v12 = v5 & 0x80000000;
  v13 = v6 + 1;
  v14 = *(a2 + 4 * v13);
  v15 = v11[397] ^ ((v14 & 0x7FFFFFFE | v12) >> 1);
  *v11 = (v15 + v9 - (a3 & (2 * v15))) ^ *(v10 + 4 * (v14 & ((a5 + v7) & v8 ^ (a4 + 676))));
  return (*(a1 + 8 * (((4 * (v13 != 227)) | (8 * (v13 != 227))) ^ a5)))();
}

uint64_t sub_5C0F0@<X0>(int a1@<W6>, int a2@<W8>)
{
  v9 = (v6 + v5);
  v10 = v9[1];
  *(v3 - 1) = *v9;
  *v3 = v10;
  return (*(v8 + 8 * (((v4 != 0) * ((a2 ^ (a1 - 4)) * v7 - 2334)) ^ (v2 + 580))))();
}

uint64_t sub_5C2C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((STACK[0x1020] & 0xF) != 0)
  {
    v8 = 64978553;
  }

  else
  {
    v8 = STACK[0xB5C];
  }

  return (*(v7 + 8 * ((531 * (v8 == 65021204)) ^ (a4 + a7 + 1089))))();
}

uint64_t sub_5C440(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = STACK[0x518] + 4 * ((v10 + 551 * v8) % 0x1D48u);
  v14 = *v7;
  v15 = *STACK[0x538];
  v16 = STACK[0x530];
  v17 = (v13 + *(v15 + (v14 & STACK[0x540])) + v9);
  v18 = *a7 ^ 0xF1E76555;
  v19 = (((1645 * v8 + 1692705) % 0xA88u) ^ 0xAC1B9FD7AF3FFDD7) + STACK[0x520] + ((2 * ((1645 * v8 + 1692705) % 0xA88u)) & 0x1BAE);
  v20 = (v19 + 1354760745 + *(v15 + (v14 & v12)) + v12);
  *(v19 + 0x49043385F90958BDLL) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v20 & v18)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 - 2) & v18)) ^ *(v13 + v11) ^ (45 * v13) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v17 & v18)) ^ (110 * (v19 + 41)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + 2) & v18)) ^ 0x6C;
  return (*(STACK[0x548] + 8 * ((1990 * (v8 != 255)) ^ (a1 - 1074))))();
}

uint64_t sub_5C5DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = *(v10 + a8) * a3;
  v12 = 2 * (a8 & 1) + (a8 ^ 1) < v8;
  return (*(a5 + 8 * (((8 * v12) | (16 * v12)) ^ v9)))();
}

uint64_t sub_5C6F4@<X0>(uint64_t a1@<X2>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16) + v6;
  v8 = *(*(a5 - 132921991) + (((v7 & 0x79B0DE00) + (v7 & 0x864F21F8 | 0x79B0DE03) - 1124733587) & *(v5 - 464343834)));
  v9 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v8) ^ 0x89F455BA1C0B015;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xD8D188F9068EB840;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = ((((v13 + v12) << (((a2 + 29) | 8u) - 7)) & 0x43B904B1A8376BECLL) - (v13 + v12) - 0x21DC8258D41BB5F7) ^ 0xD9C28EF43506CB76;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xBEACFB9F4D191338;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x8A4943FA3C1BB996;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x614634BA53642502) - (v20 + v19) - 0x30A31A5D29B21281) ^ 0xBF217715F51F5287;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0xCE34D5620035E550) - (v23 + v22) + 0x18E5954EFFE50D58) ^ 0xD969354C9099420BLL;
  v25 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v22, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a3 + 8 * a2))();
}

uint64_t sub_5C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x900] = v5;
  v6 = a5 - 2038115109;
  v7 = (&STACK[0xEB4] ^ 0x78BFF7BBFFBA6BC6) - 0x78BFF7BBFFBA6BC6 + ((2 * &STACK[0xEB4]) & 0xF17FEF77FF74D788);
  v8 = ((v7 % 0x25) ^ 0xFE9FC716D7FFCF5FLL) + 2 * ((v7 % 0x25) & 0x1F) + 0x6E8EC0EE4BBBB14FLL;
  v9 = (v8 ^ 0x24B9A641) & (2 * (v8 & 0x162)) ^ v8 & 0x162;
  v10 = ((2 * (v8 ^ 0x24B9A681)) ^ 0x10223C6) & (v8 ^ 0x24B9A681) ^ (2 * (v8 ^ 0x24B9A681)) & 0xF8FDD9E2;
  v11 = (v10 ^ 0x80441A1) & (4 * v9) ^ v9;
  v12 = ((4 * (v10 ^ 0x8044821)) ^ 0xE3F7678C) & (v10 ^ 0x8044821) ^ (4 * (v10 ^ 0x8044821)) & 0xF8FDD9E0;
  v13 = (v12 ^ 0xE0F54180) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x18089863)) ^ 0x8FDD9E30) & (v12 ^ 0x18089863) ^ (16 * (v12 ^ 0x18089863)) & 0xF8FDD9E0;
  STACK[0x930] = (*(a4 + 8 * (a5 ^ (a5 - 1461))))(v8 ^ (2 * ((v14 ^ 0x88DD9800) & (v13 << 8) ^ v13 ^ 0x78FDD9E3 ^ ((((v14 ^ 0x702041C3) << 8) ^ 0xFDD90000) & (v14 ^ 0x702041C3) ^ ((v14 ^ 0x702041C3) << 8) & 0xF8FD0000 ^ 0x78D90000) & (((v14 ^ 0x88DD9800) & (v13 << 8) ^ v13) << 16))) ^ 0x2DBFCCA4);
  v15 = (*(STACK[0x948] + 22176))();
  v16 = STACK[0x948];
  *STACK[0x938] = v15;
  return (*(v16 + 8 * v6))();
}

uint64_t sub_5CC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, unint64_t a8)
{
  v22 = *(v16 + (v10 ^ a7));
  v23 = *(v17 + (v10 ^ a8)) ^ 0xDF;
  v24 = v22 ^ v13;
  if (((a6 << v11) & v12) == 0)
  {
    v23 = v24;
  }

  v25 = *(v14 + (v23 ^ 0xFCLL)) ^ v20;
  v26 = *(v15 + ((v9 - 11) ^ v19 ^ v23)) ^ v21;
  return (*(v18 + 8 * (((v11 == 10) * v8) ^ v9)))();
}

uint64_t sub_5CCDC()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xD43)))(v0);
  v4 = STACK[0x8B0];
  v5 = STACK[0x8A0];
  v6 = STACK[0x948];
  *(STACK[0x8C0] + 96) = v3;
  v7 = *(v6 + 8 * (((v3 == 0) * (v1 - 1403 + v1 + 440 - 2595)) ^ v1));
  v8 = LODWORD(STACK[0x8D0]);
  return v7();
}

uint64_t sub_5CD70@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x908]) = 306 * (v6 ^ 0x133);
  LODWORD(STACK[0x910]) = *(STACK[0xA00] + 8) == 8;
  v10 = STACK[0xAB0];
  STACK[0x900] = STACK[0xAB0];
  v11 = STACK[0xB40];
  v11[12] = v5;
  v11[13] = v3;
  v11[11] = v2;
  v11[32] = a2;
  v12 = *(STACK[0xCA0] + 24);
  v13 = *(STACK[0xCA0] + 8);
  LODWORD(STACK[0x928]) = v3;
  STACK[0x940] = v4;
  v14 = 1583996299 * (((v8 - 208) & 0x6EA1499E | ~((v8 - 208) | 0x6EA1499E)) ^ 0xD8A3777E);
  v15 = v8 - 208;
  *(v15 + 64) = v14 + (v5 ^ 0x7FFEFED7) + ((2 * v5) & 0xFFFDFDAE) - 71321220;
  *(v15 + 16) = v11;
  *(v15 + 40) = 0;
  *(v15 + 48) = v13;
  *(v15 + 32) = v10 + 152;
  *(v15 + 8) = 782917927 - v14;
  *(v15 + 56) = v14 - 345017526 + v7;
  *(v15 + 24) = (v6 + 184) ^ v14;
  *v15 = v12;
  v16 = *(v9 + 8 * (v6 ^ 0xB85));
  STACK[0x930] = a1;
  v16(v8 - 208);
  v17 = LODWORD(STACK[0x928]);
  v18 = STACK[0x940];
  v19 = *(STACK[0x900] + 2380);
  v20 = LODWORD(STACK[0x910]);
  v21 = ((LODWORD(STACK[0x908]) ^ (v19 >> 3) ^ 0x24DFC615) + 726657471) ^ (((v19 >> 3) ^ 0xEE428A3D) - 506288639) ^ (((v19 >> 3) ^ 0xCA9D4FBE) - 988978300);
  if ((v19 & 7) != 0)
  {
    v22 = 610268592;
  }

  else
  {
    v22 = 610268591;
  }

  return (*(STACK[0x948] + 8 * ((84 * (v21 + v22 - 871375342 > 0xFFFFFFFA)) ^ v6)))(STACK[0x930]);
}

uint64_t sub_5CF78@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, char a4@<W6>, int a5@<W8>)
{
  v16 = v6;
  v17 = *STACK[0x530];
  v18 = 1 << v6;
  v19 = (*(*v5 + (v17 & STACK[0x540])) + v12 + v11);
  v20 = *v9 ^ 0xF1E76555;
  v21 = *((qword_191540 ^ a3) + ((v19 - 2) & v20));
  v22 = *((qword_191540 ^ a3) + (v19 & v20));
  v23 = v18 - ((2 * v18) & 0xBF) - 33;
  v24 = *(*v5 + (v17 & v8));
  v25 = v22 ^ v15 ^ v21 ^ v14;
  v26 = (((((6 * (a5 ^ 0x6D5)) ^ 0x3A578Eu) + 1645 * v16) % 0xA88) ^ 0x72BBFCFFFF6D8FFFLL) + 2 * ((((6 * (a5 ^ 0x6D5)) ^ 0x3A578Eu) + 1645 * v16) % 0xA88) + v10;
  v27 = ((v16 + 1) & 0xF8) == 0;
  v28 = v25 ^ *(v26 - 0x7D9C29A25724396BLL) ^ (110 * (v26 + 1)) ^ *((qword_191540 ^ a3) + ((v26 + 9596929 + v24 + v8) & v20)) ^ *((qword_191540 ^ a3) + ((v26 + 9596929 + v24 + v8 + 2) & v20)) ^ 0xFE;
  if (((v7 ^ a4 ^ *((qword_191540 ^ a3) + ((v24 + a2 + v8) & v20)) ^ *((qword_191540 ^ a3) + ((v24 + a2 + v8 + 2) & v20)) ^ 0x16) & (v23 ^ 0xDF) ^ v23 & 0x50) == 0x50)
  {
    v28 = v25 ^ 0xB8;
  }

  *(v12 + a1) = v13 ^ v22 ^ v21 ^ v28 ^ 0x92;
  return (*(STACK[0x548] + 8 * (a5 | (8 * v27))))();
}

uint64_t sub_5D148(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(v4 + 4 * ((((v3 + 9002 * a3) % 0x34AFu) ^ 0x37FDFF9DDDFFBDADLL) + ((2 * ((v3 + 9002 * a3) % 0x34AFu)) & 0x7B5A)) + 0x200801888801094CLL);
  *(STACK[0x6C0] + ((a2 ^ 0x2F2CB3) + 3013 * a3) % 0x1188) = (((v5 ^ 0x20) - 30) ^ ((v5 ^ 0xE9) + 41) ^ ((v5 ^ 0x3F) - 1)) + 69;
  return (*(STACK[0x6C8] + 8 * ((3446 * (a3 == 255)) ^ a2)))();
}

uint64_t sub_5D27C()
{
  v3 = (*(v2 + 8 * (v1 + 2106)))();
  v4 = STACK[0x948];
  *(v0 + 32) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_5D2AC(int8x16_t a1, int8x16_t a2, int8x16_t a3, int32x4_t a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a6.i64[0] = *(v14 + 912);
  a6.i32[2] = *(v14 + v12);
  v15 = vextq_s8(a5, a6, 0xCuLL);
  a6.i32[3] = *(v14 + 924);
  v16.i32[0] = *(v10 + 4 * (*(v14 + 912) & 1));
  v16.i32[1] = *(v10 + 4 * (*(v14 + 916) & 1));
  v16.i32[2] = *(v10 + 4 * (a6.i8[8] & 1));
  v16.i32[3] = *(v10 + 4 * (a6.i8[12] & 1));
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a6, a2), vandq_s8(v15, a1)), 1uLL), *v14);
  *(v14 + 908) = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a3)), a4), v16);
  return (*(a10 + 8 * ((1020 * (v13 == 0)) ^ v11)))();
}

uint64_t sub_5D3B8@<X0>(int a1@<W0>, int a2@<W5>, uint64_t a3@<X8>)
{
  *v4 = *(a3 + 8);
  *v3 = *(a3 + 16);
  return (*(v5 + 8 * (a2 & a1)))();
}

uint64_t sub_5D438(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = STACK[0xE78];
  *(v8 + 44) = STACK[0xCEC];
  *(v8 + 52) = STACK[0xA78];
  v9 = STACK[0xC58];
  v10 = LODWORD(STACK[0xD14]);
  return (*(v7 + 8 * ((a4 + a7 + 7) ^ 0x377)))();
}

uint64_t sub_5D504(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(STACK[0x5D0] + 4 * (STACK[0x460] & 0x3F) + 74096);
  v5 = v4 ^ 0xD13261BA;
  HIDWORD(v7) = v4 ^ 0x3261BA;
  LODWORD(v7) = v4 ^ 0xD1000000;
  v6 = v7 >> 24;
  LODWORD(STACK[0x8F8]) = v6;
  LODWORD(STACK[0x860]) = (v6 - 785227334 - ((2 * v6) & 0xA264C374)) ^ v4;
  if ((((v4 ^ 0xAB3AE3A8) + 1422203992) ^ ((v4 ^ 0xB7769639) + 1216965063) ^ (((13 * (a4 ^ 0x4A17B3A5) - 847376656) ^ v4) + 847375317)) - 785227334 >= 0xA85D8BE9)
  {
    v8 = (((v4 ^ 0x6DF83C54) - 1844984916) ^ ((v4 ^ 0x38313DC6) - 942751174) ^ ((v4 ^ 0x84FB6028) + 2063900632)) + 685037009;
  }

  else
  {
    v8 = v4 ^ 0xD13261BA;
  }

  if ((((v4 ^ 0x5B1E83E) - 95545406) ^ ((v4 ^ 0x9802C92) - 159394962) ^ ((v4 ^ 0xDD03A516) + 586963690)) - 785227334 >= 0xA85D8BE9)
  {
    v9 = -1470264343;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ 0xBA;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = *STACK[0x270];
  v12 = LODWORD(STACK[0x2E8]) + 59 * (((v11 ^ 0x6D) - 109) ^ ((v11 ^ 0xFFFFFFA0) + 96) ^ ((v11 ^ 0xFFFFFFBB) + 69));
  LODWORD(STACK[0x858]) = v12 ^ 0x63;
  v13 = *(STACK[0x948] + 8 * ((4008 * (a4 < 0x3AE67DB)) ^ (a4 - 1243065991)));
  LODWORD(STACK[0x848]) = ((v12 ^ 0x63) - (v12 ^ 0xFFFFFFB1) - ((2 * ((v12 ^ 0x63) - (v12 ^ 0xFFFFFFB1))) & 0xFFFFFFEC) + 118) ^ 0xD9;
  STACK[0x910] = v5;
  LODWORD(STACK[0x850]) = v11 ^ (v5 >> 8);
  LODWORD(STACK[0x838]) = v11 ^ v10;
  v14 = STACK[0x900];
  v15 = STACK[0x3E0];
  v16 = STACK[0x750];
  return v13();
}

uint64_t sub_5D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v7;
  v13 = *(a6 + v7) * v9;
  return (*(v10 + 8 * (((v12 + 1 >= v8) * v11) ^ v6)))(a5, a4, v12, (a4 + 1), (a5 + 1));
}

uint64_t sub_5D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (((v10 << (v9 - 77)) & 0x802) + (v10 ^ 0x401)) * v8;
  *(a8 + 4 * (((v13 % 0x34AF) ^ 0x1A3EDF7777778FFBLL) + ((2 * (v13 % 0x34AF)) & 0x1FF6)) - 0x68FB7DDDDDDE3FECLL) = *(a8 + 4 * ((((v11 + v10 * v8) % 0x34AFu) ^ 0x39BFFFFBF17821FALL) + ((2 * ((v11 + v10 * v8) % 0x34AFu)) & 0x43F4)) + 0x190000103A1F7818);
  return (*(v12 + 8 * ((21 * (v10 == 255)) ^ v9)))();
}

uint64_t sub_5DA34@<X0>(int a1@<W3>, int a2@<W6>, int a3@<W8>)
{
  v6 = 4 * (a3 ^ (a2 - 109));
  v7 = a1 + a3 + 467;
  v8 = v4[163];
  v9 = STACK[0xAA0];
  v10 = v4[121];
  v11 = STACK[0xF28];
  v12 = v4[33];
  v4[66] = *(v5 + 8 * v3);
  LODWORD(STACK[0x9B4]) = v11;
  v4[71] = v10 ^ 0xC7543688F1282A65;
  v4[164] = v8 ^ 0xC7543688F1282A65;
  LODWORD(STACK[0xCCC]) = v9;
  v14 = v10 == v6 - 0x38ABC9770ED7D80FLL || v8 == 0xC7543688F1282A65;
  return (*(v5 + 8 * ((37 * v14) ^ v7)))();
}

uint64_t sub_5DB08@<X0>(uint64_t a1@<X8>)
{
  *(v6 - 1395893271) = v1;
  STACK[0x978] -= a1;
  STACK[0x1164] = 0x37A39099A7289D6;
  LODWORD(STACK[0xEB4]) = *(STACK[0x378] - 1048792407) - 1635019061;
  LODWORD(STACK[0x908]) = v1;
  v8 = 1913485891 * ((v7 - 208) ^ 0x2331FD479DECE72ALL);
  *(v5 + 32) = v8;
  *(v5 + 16) = 1507204927 - v8 + v3;
  *(v5 + 20) = ((v3 - 1432876850) ^ 0x74) + v8;
  *(v5 + 24) = v8;
  *(v5 + 28) = v8 + v3 - 1432876850 + 34;
  *v5 = (v3 - 1432876850) ^ v8;
  *(v5 + 8) = v1 ^ v8;
  v9 = (*(v2 + 8 * (v3 ^ v4)))(v7 - 208);
  return (*(STACK[0x948] + 8 * *(v5 + 40)))(v9);
}

uint64_t sub_5DC70@<X0>(uint64_t a1@<X8>)
{
  v4 = 10 * (v2 ^ 0x27E);
  *(v1 + 1464) = *(v3 + 8 * v4);
  return (*(v3 + 8 * (v4 ^ 0x2D2 ^ ((v4 == 1621460620) * (v4 + 1883)))))(a1 + 52);
}

uint64_t sub_5DCF0@<X0>(int a1@<W8>)
{
  *(v1 + 344) = STACK[0x370];
  *(v1 + 64) = &STACK[0xBC8];
  LODWORD(STACK[0xD10]) = 1825210434;
  return (*(v2 + 8 * a1))(624788556);
}

uint64_t sub_5DD28(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = ((((v9 ^ 0xFFu) * a4 + 2113825) % 0xA88) ^ 0xB67FD7EB7DF5EE7FLL) + STACK[0x520] + ((2 * (((v9 ^ 0xFFu) * a4 + 2113825) % 0xA88)) & 0x1CFE);
  v15 = *(v14 + 0x3E9FFB722A536815);
  v16 = *v7;
  v17 = *STACK[0x538];
  v18 = STACK[0x530];
  v19 = v14 - 127;
  v20 = *(v17 + (v16 & v12));
  v21 = v14 - 2113269375 + v20;
  v22 = *a7 ^ 0xF1E76555;
  v23 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 + v12) & v22)) ^ v15 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 + v12 + 2) & v22)) ^ (110 * v19);
  v24 = (((v23 ^ 0xBE8EB7E9) - 24161251) ^ ((v23 ^ 0x64568AF1) + 609708293) ^ ((v23 ^ 0xDAD83D5E) - 1696997716)) * v10 + 1008490200;
  v25 = STACK[0x518] + 4 * (v24 - ((((v24 >> 3) * v8) >> 32) >> 7) * v13);
  LODWORD(v16) = *(v17 + (v16 & STACK[0x540]));
  LODWORD(v17) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v16 + a3) & v22)) ^ *(v25 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v16 + 1527793161) & v22));
  v26 = v17 ^ (1912024365 * v25);
  v27 = (v17 ^ (45 * v25));
  LODWORD(v25) = ((v17 ^ (16198957 * v25)) >> 16) ^ 0xE7;
  v28 = 3290 * (((v27 ^ 0x36421F13) - 1134531167) ^ ((v27 ^ 0x446E597D) + 1313614799) ^ ((v27 ^ 0x722C4644) + 2014196984)) - 1045252920;
  LODWORD(v17) = 1645 * (((HIBYTE(v26) ^ 0xC420310C) + 1672585021) ^ ((HIBYTE(v26) ^ 0xA875CB65) + 266626390) ^ ((HIBYTE(v26) ^ 0x6C55FA43) - 876325772)) + 1024982647;
  v29 = 1645 * (((v26 >> 7) & 0x1C ^ 0x14) + (BYTE1(v26) ^ 0x865));
  v30 = 1645 * v25 + 3391990 - 2696 * (((12744711 * (1645 * v25 + 3391990)) >> 32) >> 3);
  v31 = v17 % 0xA88;
  v32 = v31 ^ 0xBEFFDFF2DF1FEA6FLL;
  v33 = (2 * v31) & 0x14DE;
  v34 = (v30 ^ 0xFD9BFFFBB66DFF47) + STACK[0x520] + ((2 * v30) & 0x1E8E);
  LODWORD(v31) = v34 + 1234305209;
  v35 = *(v34 - 0x87C2C9E0E24A8B3);
  v36 = v29 - 2696 * (((12744711 * v29) >> 32) >> 3);
  v37 = v32 + STACK[0x520] + v33;
  LODWORD(v33) = *(v37 + 0x361FF36AC9296C25);
  HIDWORD(v38) = v28;
  LODWORD(v38) = v28;
  v39 = v37 + 551556497;
  v40 = (v36 ^ 0xFEDD7FD70F71C7BBLL) + STACK[0x520] + ((2 * v36) & 0xF76);
  LODWORD(v32) = *(v40 - 0x9BDAC7967287127);
  LODWORD(v37) = v40 - 259114939;
  v41 = (((v38 >> 1) % 0xA88) ^ 0xD7D7965A3F2FFF4FLL) + STACK[0x520] + ((2 * ((v38 >> 1) % 0xA88)) & 0x1E9E);
  v42 = v41 - 1060110159;
  v43 = *(v41 + 0x1D483D0369195745);
  LODWORD(v41) = ((v35 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + v20 + v12) & v22)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + v20 + v12 + 2) & v22)) ^ (110 * v31) ^ 0x46) << 8) | ((v33 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v39 + v20 + v12) & v22)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v39 + v20 + v12 + 2) & v22)) ^ (110 * v39) ^ 0x46) << 16);
  LODWORD(v41) = ((v41 ^ 0xFBFFFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v37 + v20 + v12) & v22)) ^ v32 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v37 + v20 + v12 + 2) & v22)) ^ (110 * v37) ^ 0xEB6AF8) | v41 & 0x149500) << 8;
  v44 = (v41 ^ 0x49140FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v42 + v20 + v12) & v22)) ^ v43 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v42 + v20 + v12 + 2) & v22)) ^ (110 * v42) ^ 0xA5F95CE1);
  v45 = STACK[0x518] + 4 * (v11 + a4 * v10 - (((((v11 + a4 * v10) >> 3) * v8) >> 32) >> 7) * v13);
  *(v45 - 0x40E8C283FA03C307) = (1912024365 * v45) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v45 + LODWORD(STACK[0x52C])) & v22)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v45 + 1527793161) & v22)) ^ 0xC51C958D ^ (v44 | v41 & 0x5A06A300);
  return (*(STACK[0x548] + 8 * ((4077 * (a4 == 255)) ^ v9)))();
}

void sub_5E364(uint64_t a1@<X8>)
{
  *(a1 + 1004) = *(v1 + 1004);
  *(a1 + 1008) = *(v1 + 1008);
  *(a1 + 1012) = *(v1 + 1012);
  *(a1 + 1016) = *(v1 + 1016);
  *(a1 + 1020) = *(v1 + 1020);
  *(a1 + 1024) = *(v1 + 1024);
  *(a1 + 1028) = *(v1 + 1028);
  *(a1 + 1032) = *(v1 + 1032);
  *(a1 + 1036) = *(v1 + 1036);
  *(a1 + 1040) = *(v1 + 1040) & 1;
}

uint64_t sub_5E4E4(unint64_t a1)
{
  v5 = v1 + 13;
  v6 = &STACK[0x1190] + v2;
  *(a1 + 1120) = 0u;
  *v6 = a1;
  v7 = STACK[0x8C0];
  *(v6 + 1) = *(STACK[0x8C0] + 72);
  *(v6 + 4) = 16;
  v8 = *(v7 + 128);
  v9 = *(v3 + 8 * ((474 * ((*(v7 + 136) ^ 0x750375EBD99FFB7BLL) - 0x750375EAF2727467 + (((v5 + 292) ^ 0x1B33FFCE6) & (2 * *(v7 + 136))) == 3878520596)) ^ v5));
  STACK[0x268] = a1;
  return v9(v8);
}

uint64_t sub_5E5A4@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 48);
  *(v3 + 320) = a2 + 48;
  return (*(v4 + 8 * (((v5 == 0) * (((a1 + v2 + 2038112926 + 1445) | 0x208) - 1951)) ^ v2)))();
}

uint64_t sub_5E5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v7 + 200);
  *(v9 + 144) = STACK[0x980];
  *(v9 + 152) = STACK[0xC08];
  *(v9 + 160) = 0;
  return (*(v8 + 8 * v6))(a1, a2, a3, 2256851803, a5, a6, 2038115493);
}

uint64_t sub_5E748(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, void *a7)
{
  LODWORD(STACK[0x510]) = v8;
  v12 = (1645 * v8 + 2113825) % ((a4 - 720) ^ 0xFBDu);
  v13 = (v9 + 551 * v8) % 0x1D48u;
  v14 = (v12 ^ 0x3C66F76F7FBE4974) + v11 + ((2 * v12) & 0x12E8);
  v15 = *v7;
  v16 = *STACK[0x538];
  v18 = (v14 - 2143177076 + *(v16 + (v15 & v10)) + v10);
  v19 = *a7 ^ 0xF1E76555;
  LODWORD(v14) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v18 & v19)) ^ *(v14 - 0x47472411D774F2E0) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + 2) & v19)) ^ (110 * (v14 - 116));
  LODWORD(v14) = 1645 * (((v14 ^ 0x1D8BF7B8) - 129512803) ^ ((v14 ^ 0x6BC70BAD) - 1911867766) ^ ((v14 ^ 0x764CFC53) - 1820278408)) + 1587541977;
  v20 = STACK[0x518] + 4 * v13;
  v21 = (*(v16 + (v15 & STACK[0x540])) + 1527793161 + v20);
  v22 = *(((v14 % 0xA88) ^ 0x5FE9BE7F57BFADFALL) + v11 + ((2 * (v14 % 0xA88)) & 0x1BF4) - 0x6AC9EB21AF765766);
  *(v20 + a2) = (v20 * a5) ^ 0x2AE76B2A ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v21 & v19)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 - 2) & v19));
  return (*(STACK[0x548] + 8 * (a4 - 1295)))(v22);
}

uint64_t sub_5E9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v58 = v53 & 0x19E205FF;
  v59 = v53 & 0x19E205FF ^ 0x3F4;
  v60 = (v53 & 0x19E205FF) + 919;
  v61 = 1183051249 * ((((v56 - 208) ^ 0x4C9B8012 | 0x223224FA) - ((v56 - 208) ^ 0x4C9B8012) + (((v56 - 208) ^ 0x4C9B8012) & 0xDDCDDB00)) ^ 0x8B4A7234);
  *(v54 + 40) = a51;
  *(v54 + 48) = (v58 + 1158) ^ v61;
  *(v54 + 52) = v61 + 1700565017;
  *(v54 + 16) = v52;
  *(v54 + 24) = &STACK[0xF78];
  *(v54 + 8) = v61 ^ 0x10663B13;
  *v54 = v51;
  v62 = (*(v57 + 8 * (v58 ^ 0xE31u)))(v56 - 208);
  v63 = STACK[0x948];
  v64 = *(v54 + 32);
  *(v55 + 1272) = STACK[0x8C0];
  return (*(v63 + 8 * ((3123 * (v64 == ((v60 + 65018249) ^ v59))) ^ v58)))(v62);
}

uint64_t sub_5EB08()
{
  LODWORD(STACK[0xE74]) = v1;
  v5 = *(v2 + 12);
  *(v3 + 16) = v2;
  *(v3 + 1328) = v2 + 12;
  return (*(v4 + 8 * (((v5 < ((v0 - 530) | 9u) - 20) * (v0 ^ 0x3D2)) ^ v0)))();
}

uint64_t sub_5EBD0@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W8>)
{
  STACK[0x890] = v5;
  *(a3 + 120) = v4;
  return (*(v6 + 8 * (a2 + a4 + 526)))(a1, 1212707403);
}

uint64_t sub_5EBF4@<X0>(int a1@<W2>, int a2@<W7>, int a3@<W8>)
{
  v9 = *v7 + 0x5DD76A3703B21727;
  v10 = (v9 ^ 0x182451E0FB09CAE4) & (2 * (v9 & 0xA22895C8FC4DE8C9)) ^ v9 & 0xA22895C8FC4DE8C9;
  v11 = ((2 * (v9 ^ 0x58257B619B031AE6)) ^ 0xF41BDD52CE9DE45ELL) & (v9 ^ 0x58257B619B031AE6) ^ (2 * (v9 ^ 0x58257B619B031AE6)) & ((a2 + 1462472522) & 0x2F594D58 ^ 0xFA0DEEA9674EFB66);
  v12 = v11 ^ 0xA0422A921421221;
  v13 = (v11 ^ 0x9000CC00420CE00CLL) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xE837BAA59D3BC8BCLL) & v12 ^ (4 * v12) & 0xFA0DEEA9674EF22CLL;
  v15 = (v14 ^ 0xE805AAA1050AC020) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x1208440862443203)) ^ 0xA0DEEA9674EF22F0) & (v14 ^ 0x1208440862443203) ^ (16 * (v14 ^ 0x1208440862443203)) & 0xFA0DEEA9674EF220;
  v17 = (v16 ^ 0xA00CEA80644E2200) & (v15 << 8) ^ v15;
  v18 = (((v16 ^ 0x5A0104290300D00FLL) << 8) ^ 0xDEEA9674EF22F00) & (v16 ^ 0x5A0104290300D00FLL) ^ ((v16 ^ 0x5A0104290300D00FLL) << 8) & 0xFA0DEEA9674EF200;
  v19 = v17 ^ 0xFA0DEEA9674EF22FLL ^ (v18 ^ 0x80CA82146420000) & (v17 << 16);
  v20 = v9 ^ (2 * ((v19 << 32) & 0x7A0DEEA900000000 ^ v19 ^ ((v19 << 32) ^ 0x674EF22F00000000) & (((v18 ^ 0xF2014688210CD02FLL) << 16) & 0x7A0DEEA900000000 ^ 0x100488A100000000 ^ (((v18 ^ 0xF2014688210CD02FLL) << 16) ^ 0x6EA9674E00000000) & (v18 ^ 0xF2014688210CD02FLL))));
  v21 = 0xF52A32B4A33F0379 - (((HIDWORD(v20) ^ 0x9BA8181566E99375) + 0x2439C52A03B4EA68) ^ ((HIDWORD(v20) ^ 0x101F326E66FFBE86) - 0x507110AEFC5D386BLL) ^ ((HIDWORD(v20) ^ 0x8BB72A7B923CA13BLL) + 0x3426F744F761D82ALL));
  v22 = ((((v21 ^ 0x96B5C412E7D16989) + 0x5CD26E99B3E99BE9) ^ v21 ^ ((v21 ^ 0xAB5013EA5C6BF0C7) + 0x6137B961085302A7) ^ ((v21 ^ 0x33CDC26A6FLL) + 0x3899FA980FLL) ^ ((v21 ^ 0x3FDDBFFEBFLL) + 0x3489870CDFLL)) >> 32) & 0x20;
  v23 = (v22 - 0xC3B96DE0CC0130ALL) ^ (v22 | 0x123074DE143FFD0ALL) ^ ((v22 ^ 0x78FA2EAFB89E286FLL) - 0x6D35B98DAC5E3761);
  v24 = v20 ^ 0x922A8CC832D00C97;
  v25 = v24 >> (v22 ^ 0x20u);
  v26 = (((v25 ^ 0x66612862565A7B03) + 0x3C756B12891D9CA2) ^ ((v25 ^ 0xD1AE4FDF7E0C8371) - 0x7445F3505EB49B2CLL) ^ ((v25 ^ 0xB7CF67BD2856F872) - 0x1224DB3208EEE02FLL)) - 0x509FB1509B5F5833;
  v27 = (v26 ^ 0xF6234D9FB8C768DFLL) & (2 * (v26 & 0xF68B6DDFBC167090)) ^ v26 & 0xF68B6DDFBC167090;
  v28 = ((2 * (v26 ^ 0x76215F2D88C329FFLL)) ^ 0x15465E469AAB2DELL) & (v26 ^ 0x76215F2D88C329FFLL) ^ (2 * (v26 ^ 0x76215F2D88C329FFLL)) & 0x80AA32F234D5596ELL;
  v29 = v28 ^ 0x80AA121214554921;
  v30 = (v28 ^ 0x20E020800040) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x2A8CBC8D35565BCLL) & v29 ^ (4 * v29) & 0x80AA32F234D5596CLL;
  v32 = v31 & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x8002303224801843)) ^ 0xAA32F234D5596F0) & (v31 ^ 0x8002303224801843) ^ (16 * (v31 ^ 0x8002303224801843)) & 0x80AA32F234D55960;
  v34 = v32 ^ 0x80AA32F234D5596FLL ^ v33 & (v32 << 8);
  v35 = (((v33 ^ 0x800810D03080490FLL) << 8) ^ 0xAA32F234D5596F00) & (v33 ^ 0x800810D03080490FLL);
  v36 = ~((v26 ^ (2 * (v35 & (v35 << 16) & (((v35 & (v34 << 16) ^ v34) << 32) ^ 0x2490596F00000000) ^ v35 & (v34 << 16) ^ v34))) >> 32) & 0x10;
  v37 = v25 << v36;
  v38 = ((v37 + 0xFFF000000) >> 32) & 8;
  v39 = v37 << v38;
  v40 = ((v39 + 0x7F0000000) >> 32) & 4;
  v41 = v39 << v40;
  v42 = v23 - (v36 | v38 | v40) - (((v41 + 0x3C0000000) >> 32) & 2) + (~((v41 << (((v41 + 0x3C0000000) >> 32) & 2)) >> 31) & ((v41 << (((v41 + 0x3C0000000) >> 32) & 2)) >> 30));
  v43 = v42 + 0x15CF972214C01F0ELL;
  v44 = v42 + 75;
  if (v43 >= -46)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  v46 = (1 << v44) - 0x8000;
  v47 = v43 <= -47;
  v48 = 15;
  if (v47)
  {
    v48 = 0;
  }

  v49 = v48 + v45;
  if (v47)
  {
    v46 = 0;
  }

  *(*(v4 + 8 * (a2 ^ 0x797B2CB2)) - 1158545566) = (v46 ^ 0xEE576FD6E577D37FLL) + 0x5BB9F7FFDFBEAEA8 + ((2 * v46) & 0xDCAEDFADCAEFA6FELL);
  v50 = (v24 - (1 << v49)) & ((a3 & 0xFFFFF000) + v5);
  *(*(v4 + 8 * (a1 + a2 + 94)) - 385948719) = v50 ^ 0xB45778C35009C906;
  *v6 = (v50 + *v6) ^ 0xDDC772C6444EEA48;
  *v7 = ((1 << v49) - 1) ^ 0x71B0588CF1E76555;
  v51 = STACK[0x368];
  v52 = LODWORD(STACK[0x8F0]);
  return (*(v8 + 8 * ((1448 * v3) ^ (a1 + a2 + 20))))();
}

uint64_t sub_5F40C()
{
  v0 = STACK[0x850];
  v1 = LODWORD(STACK[0x860]) - 1421826176 + ((LODWORD(STACK[0x860]) - 1421826176) >> 10);
  v2 = (v1 >> ((LODWORD(STACK[0x850]) + 127) & 0xBE ^ 0xB3)) + v1;
  v3 = (LODWORD(STACK[0x860]) ^ (LODWORD(STACK[0x910]) >> 1)) & 0x6A03B8FF | STACK[0x860] & 0x95FC4700 ^ (LODWORD(STACK[0x910]) >> 1) & 0x15FC4700;
  v4 = (-994363171 - (v2 ^ 0xC4BB38DD)) ^ v2;
  v5 = -v2 & 0x40;
  if ((v4 & v5) != 0)
  {
    v5 = -v5;
  }

  v6 = ((v2 - 1) & 0xFFFFFFBF ^ (v5 + v4) ^ 0xFFFFFFBF) - 994363171;
  v7 = v6 + (v6 >> 8) + ((v6 + (v6 >> 8)) >> 6);
  v8 = STACK[0x858];
  v9 = STACK[0x2C8];
  v10 = (((v7 - 1091090970 - ((v7 - 1091090970) >> 15)) >> 5) ^ (v7 - 1091090970 - ((v7 - 1091090970) >> 15))) + 2 * (((v7 - 1091090970 - ((v7 - 1091090970) >> 15)) >> 5) & (v7 - 1091090970 - ((v7 - 1091090970) >> 15)));
  v11 = (*(STACK[0x2C8] + (*(STACK[0x2C8] + (0x64137EBBu % LODWORD(STACK[0x858]))) - 83) % LODWORD(STACK[0x858])) + 127) % LODWORD(STACK[0x858]);
  LODWORD(STACK[0x910]) = v7 >> 1;
  v12 = v10 - 789120751 - ((v10 - 789120751) >> 15) - ((v10 - 789120751 - ((v10 - 789120751) >> 15)) >> 6);
  v13 = v2 ^ LODWORD(STACK[0x8F8]) ^ (v2 >> 1) & 0x1946F64B ^ v12 ^ (v12 >> 1) & 0x1946F64B;
  v14 = LODWORD(STACK[0x878]) ^ v3 ^ v10;
  v15 = (*(v9 + (*(v9 + v11) - 98) % v8) - 98) % v8;
  return (*(STACK[0x948] + 8 * v0))();
}

uint64_t sub_5F6DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 16) + v6;
  v9 = *(*(a6 - 132921991) + (((v8 & 0xFFFFFFF8) + 916900720) & *(v7 - 464343834)));
  v10 = __ROR8__(v8 & (a2 - 1012), 8);
  v11 = (((2 * (v10 + v9)) | 0x2FCB370830E863B6) - (v10 + v9) - 0x17E59B84187431DBLL) ^ 0x1F7ADEDFB9B481CELL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xD8D188F9068EB840;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x75CBB765131FFBDELL) - 0x451A244D76700211) ^ 0xBD0428E1976D7C90;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xBEACFB9F4D191338;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x8A4943FA3C1BB996;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8F826D48DCAD4006;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((((v26 + v25) | 0xCC620DBB58171520) - ((v26 + v25) | 0x339DF244A7E8EADFLL) + 0x339DF244A7E8EADFLL) ^ 0xEA4D326497F30A6CLL) >> (8 * (v8 & 7u))) ^ *v8;
  return (*(a4 + 8 * a3))();
}

uint64_t sub_5F908()
{
  *(v1 + 344) = STACK[0x370];
  *(v1 + 64) = &STACK[0xAA0];
  LODWORD(STACK[0xD10]) = 1079542806;
  return (*(v2 + 8 * v0))(624788556);
}

uint64_t sub_5F980@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 36) = 1;
  *(*(v3 + 8) + v2 + 32) = 0;
  return (*(v1 + 8 * (v4 + 15)))();
}

uint64_t sub_5F9B8()
{
  v6 = v5 - 208;
  *(v6 + 8) = v2;
  *(v6 + 4) = v4 + 381473641 * (((~(v5 - 208) & 0x79ADB124) - (~(v5 - 208) | 0x79ADB125)) ^ 0x674996F7) - 231;
  v7 = (*(v0 + 8 * (v4 + 1554)))(v5 - 208);
  v10 = *(v5 - 208) != ((47 * (v4 ^ 0x4FB)) ^ LODWORD(STACK[0x910])) && v3 < STACK[0x940] && v1 == 65021204;
  return (*(STACK[0x948] + 8 * ((v10 * ((5 * (v4 ^ 0x5BF)) ^ 0x726)) ^ v4)))(v7);
}

uint64_t sub_5FBBC@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X6>, int a4@<W8>)
{
  v5 = STACK[0x518] + 4 * ((551 * a4 + v4) % 0x1D48u);
  v6 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v7 = STACK[0x518] + 4 * ((551 * a4 + 286520) % 0x1D48u);
  v8 = *a3 ^ 0xF1E76555;
  v9 = (v7 + v6 + (((a1 - 598) | 0x280) ^ 0x5B104095)) & v8;
  v10 = (v7 + v6 + 1527793161) & v8;
  v11 = (v5 + v6 + 1527793161);
  v12 = (v11 - 2) & v8;
  v13 = v11 & v8;
  LODWORD(v8) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v12);
  v14 = LODWORD(STACK[0x52C]);
  *(v7 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v9) ^ *(v5 + a2) ^ (1912024365 * v7) ^ (1912024365 * v5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v10) ^ v8 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v13);
  return (*(STACK[0x548] + 8 * ((250 * (a4 == 255)) ^ a1)))();
}

uint64_t sub_5FDE4(int a1)
{
  v4 = *(v2 + 4);
  LODWORD(STACK[0xA78]) = v1;
  LODWORD(STACK[0xCEC]) = ((a1 - 4) & v4);
  return (*(v3 + 8 * a1))();
}

uint64_t sub_5FE08(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = a4 + v4 + 1209;
  *(v8 + 8) = (v4 + v7) ^ (1913485891 * ((2 * ((v9 - 208) & 0x6B439300) - (v9 - 208) - 1799590657) ^ 0x9508BD5));
  *v8 = 0;
  (*(v10 + 8 * (v6 + v4 + 15)))(v9 - 208);
  v13 = *(*(&off_18D8F0 + (v4 ^ 0x797B2CB7)) - 2090095003) != ((v4 - 2038115097) ^ 0x18C) || *(v5 - 242675154) == 0;
  return (*(STACK[0x948] + 8 * ((v13 * ((v4 - 2131660380) & 0x9FFBF5F7 ^ 0x9A689446)) ^ v11)))();
}

uint64_t sub_5FF0C()
{
  *(STACK[0x268] + 1128) = 512;
  v4 = (*(v3 + 8 * (v1 + 1710)))(2048);
  *(v2 + 160) = v4;
  *(*v0 + 1120) = v4;
  *(*v0 + 1132) = -54744540;
  return (*(v3 + 8 * (((v4 == 0) * ((((v1 ^ 0x2FC) + 2038115146) ^ 0x8684D53C) + 5 * (v1 ^ 0x2FC))) ^ v1)))();
}

uint64_t sub_5FFE4()
{
  v2 = *(STACK[0x948] + 8 * ((((*(v1 + 8 * (v0 ^ 0x292)))(168) == 0) * (v0 - 3739 + ((v0 + 1035988280) & 0xC2400FDD))) ^ v0));
  LODWORD(STACK[0x8D0]) = 64978552;
  return v2();
}

uint64_t sub_600A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0xEF4]) = v7;
  v10 = *(v8 + 184);
  v11 = *(v9 + 8 * (a7 - 2038114981));
  v12 = 8 * *(v8 + 472);
  STACK[0x940] = (a7 + 1972555231) & 0x10F2077B ^ 0x277;
  v13 = STACK[0x368];
  v14 = STACK[0x360];
  return v11(0x7E1F3531EE2817FLL, 0x6A3AE838D56253FLL, 3767655688, 0);
}

uint64_t sub_601A8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  v11 = v4 + v6 + (a2 + a4 - 1138);
  *(v8 + (v4 + v10)) = *(v7 + (v11 + *(v9 + 60)));
  return (*(v5 + 8 * (((v11 < (a1 + *(v9 + 52) - 1)) * a3) ^ a4)))();
}

void sub_6021C(uint64_t a1)
{
  v1 = *(a1 + 4) - 1913485891 * ((a1 + 608930859 - 2 * (a1 & 0x244B8C2B)) ^ 0xB9A76B01);
  __asm { BRAA            X10, X17 }
}

void BBdyFX9JObVXUh8aGhB0aD3()
{
  __chkstk_darwin();
  v0 = *(&off_18D8F0 + ((-73 * (dword_1902F8 ^ 1 ^ dword_1902E8)) ^ byte_184300[byte_158820[(-73 * (dword_1902F8 ^ 1 ^ dword_1902E8))] ^ 0xC6]) - 63);
  v1 = *(v0 - 195638083);
  v2 = *(&off_18D8F0 + (byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 - v1) ^ 1))] ^ 0xDA] ^ (-73 * ((dword_1902E8 - v1) ^ 1))) - 187);
  v3 = &v6[251] + (*(v2 - 2105774026) ^ v1);
  *(v0 - 195638083) = 1615229111 * v3 + 0xF7839D8DBCF6EFFLL;
  *(v2 - 2105774026) = 1615229111 * (v3 ^ 0xF087C62724309101);
  v4 = (((v6 + 2) ^ (-v6 - 2)) ^ -v6) & 3;
  v6[0] = 16 * (((v4 ^ 0xAF529D30ECC9B9ALL) + 0x9F818F85696DF30) ^ ((v4 ^ 0x3A302184F999841) + 0xAE333317C3DCF5) ^ ((v4 ^ 0x9562BCB415503D9) + 0xA5B1AE0190F476DLL)) - 0x30D312B585A44B80;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_60630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 124) = -1038737430 - 1183051249 * ((((v22 - 128) | 0xCF276D9B) - ((v22 - 128) & 0xCF276D9B)) ^ 0x2AC4BB47) + v20 + 1099;
  *(v22 - 120) = &a19;
  v23 = (*(v21 + 8 * (v20 + 2326)))(v22 - 128);
  *(v19 + 72) = *(v22 - 128);
  return (*(v21 + 8 * ((912 * (*(a14 + 1044 * a13 + 12) != ((v20 - 1224771513) & 0x490087EB) - 488)) ^ v20)))(v23);
}

uint64_t sub_606EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12)
{
  v16 = *v12;
  a11 = v15 - 1183051249 * (((&a10 | 0x9AAD8118) - &a10 + (&a10 & 0x65527EE0)) ^ 0x7F4E57C4) - 1038736098;
  a12 = v16;
  (*(v13 + 8 * (v15 ^ 0xA07)))(&a10);
  if (((a10 ^ 0xF67A0FCD) + v14 + ((v15 + 552) ^ 0x3F4)) <= 0)
  {
    v17 = --((a10 ^ 0xCD) + v14 + ((v15 + 40) ^ 0xF4));
  }

  else
  {
    v17 = ((a10 ^ 0xCD) + v14 + ((v15 + 40) ^ 0xF4));
  }

  return (*(v13 + 8 * ((1910 * (v17 == 0)) ^ v15)))(v17);
}

uint64_t sub_6080C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = STACK[0x518] + 4 * ((551 * v9 + v8) % 0x1D48u);
  v11 = STACK[0x518] + 4 * ((199 * (v7 ^ 0x8CCu) + 551 * v9 + 2692951) % 0x1D48);
  v12 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v13 = *a7 ^ 0xF1E76555;
  v14 = (v11 + v12 + a3) & v13;
  v15 = LODWORD(STACK[0x52C]);
  *(v11 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v14) ^ *(v10 + a2) ^ (1912024365 * v10) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v12 + 1527793161) & v13)) ^ (1912024365 * v11) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v12 + LODWORD(STACK[0x52C])) & v13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v12 + 1527793161) & v13));
  return (*(STACK[0x548] + 8 * ((14 * (v9 != 255)) ^ v7)))();
}

uint64_t sub_60970(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = v18 << v17;
  v21 = v16 & 0x9D ^ 0x8D;
  v22 = (v16 << ((v19 - 51) ^ 0xD9)) & 6;
  v23 = ((v22 ^ 0x1E) & 2 | v21) ^ (v22 ^ 0x1E) & v16;
  v24 = v16 ^ (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v21 & 0xFD | (2 * (v23 & 1))) ^ v16 & (2 * v23))) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ 0x6E;
  v25 = v16 & 0xF1 ^ 0xBB;
  v26 = ((v16 ^ (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v22 ^ 0x72) & (v16 ^ 2) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xEB) * a8 + 3889783;
  v27 = *(a7 + v24 * a8 + 2320010 - ((((v24 * a8 + 2320010) * v10) >> 32) >> 2) * v8);
  LOBYTE(v26) = *(a7 + v26 - (((v26 * v10) >> 32) >> 2) * v8);
  v28 = v26 & 5 ^ v15;
  v29 = (((2 * (v26 & 3)) ^ 0x86) & 2 | v28) ^ ((2 * (v26 & 3)) ^ 0x86) & v26;
  v30 = (v28 & 0xFD | (2 * (v29 & 1))) ^ v26 & (2 * v29);
  v31 = (v28 & 0xFD | (2 * (v30 & 1))) ^ v26 & (2 * v30);
  v32 = (v28 & 0xFD | (2 * (v31 & 1))) ^ v26 & (2 * v31);
  v33 = (v28 & 0xFD | (2 * (v32 & 1))) ^ v26 & (2 * v32);
  v34 = v26 ^ (2 * ((v28 & 0xFD | (2 * (v33 & 1))) ^ v26 & (2 * v33))) ^ 0xF4;
  v35 = v27 & 0x7B ^ 0x7C;
  v36 = v27 ^ (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ 0x3D;
  if ((v20 & v13) != 0)
  {
    v36 = v34;
  }

  v37 = *(a7 + v14 + (v36 ^ 0x71) * a8 - ((((v14 + (v36 ^ 0x71u) * a8) * v10) >> 32) >> 2) * v8);
  v38 = *(a7 + a2 + (v36 ^ v11) * a8 - ((((a2 + (v36 ^ v11) * a8) * v9) >> 32) >> 1) * v8);
  return (*(STACK[0x6C8] + 8 * ((v19 + 851) | ((a3 | v12) >= 0))))();
}

uint64_t sub_60CA0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, void *a7)
{
  v13 = ((((a4 + 443) * a5 + 2113825) % 0xA88u) ^ 0x9BF7FF7AEBFF9DDBLL) + v12 + ((2 * (((a4 + 443) * a5 + 2113825) % 0xA88u)) & 0x1BB6);
  v14 = *(v13 + 0x5927D3E2BC49B8B9);
  LODWORD(v13) = v13 + 335569445;
  v15 = *v7;
  v16 = *STACK[0x538];
  v17 = STACK[0x530];
  v18 = *(v16 + (v15 & v11));
  v19 = v13 + v18;
  v20 = (v13 + v18 + v11);
  v21 = 110 * v13;
  v22 = *a7 ^ 0xF1E76555;
  v23 = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v20 & v22)) ^ v14 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v11 + 2) & v22)) ^ v21 & 0xFE;
  v24 = (((v23 ^ 0x3AA8D280) + 1696962178) ^ ((v23 ^ 0x72D24356) + 761202520) ^ ((v23 ^ 0x487A9190) + 402118034)) * v10 + 1462106678;
  v25 = STACK[0x518] + 4 * (v24 - ((((v24 >> 3) * v8) >> 32) >> 7) * v9);
  v26 = *(v16 + (v15 & STACK[0x540]));
  LODWORD(v15) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v26 + a3) & v22)) ^ *(v25 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v26 + 1527793161) & v22));
  v27 = ((v15 ^ (11565 * v25)) >> 8) ^ 0x6B;
  LODWORD(v20) = 1645 * (((v15 ^ (16198957 * v25)) >> 16) ^ 0xE7) + 3391990;
  v28 = 1645 * (((((v15 ^ (1912024365 * v25)) >> 24) ^ 0xA0A485EA) + 1718137515) ^ ((((v15 ^ (1912024365 * v25)) >> 24) ^ 0x1C3C256A) - 621800917) ^ ((((v15 ^ (1912024365 * v25)) >> 24) ^ 0xBC98A0AA) + 2052364267)) - 1846302873;
  v29 = (v15 ^ (45 * v25));
  v30 = v20 - 2696 * (((12744711 * v20) >> 32) >> 3);
  v31 = (v30 ^ 0xDDE897F9BD5F5F50) + v12 + ((2 * v30) & 0x1EA0);
  LODWORD(v16) = 1645 * (((v29 ^ 0x1E9313B4) + 511762368) ^ ((v29 ^ 0xDFC11F53) - 539831463) ^ ((v29 ^ 0xC1520CCD) - 1052655417)) - 2130900100;
  v32 = ((v28 % 0xA88) ^ 0x5BEBEFF7FFB1DBA1) + v12 + ((2 * (v28 % 0xA88)) & 0x1742);
  v33 = ((v16 % 0xA88) ^ 0xFFCDF3AD0EFF55FFLL) + v12 + ((2 * (v16 % 0xA88)) & 0xBFE);
  v34 = (((1645 * v27 + 3391990) % 0xA88u) ^ 0xFDF9EFFDFBDFF7B7) + v12 + ((2 * ((1645 * v27 + 3391990) % 0xA88u)) & 0xF6E);
  LODWORD(v31) = ((*(v31 + 0x17373B63EAE9F744) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 1117823152 + v18 + v11) & v22)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 1117823152 + v18 + v11 + 2) & v22)) ^ (110 * (v31 - 80)) ^ 0x46) << 8) | ((*(v32 - 0x66CC1C9A5768850DLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 + 5121119 + v18 + v11) & v22)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 + 5121119 + v18 + v11 + 2) & v22)) ^ (110 * (v32 + 95)) ^ 0x46) << 16);
  LODWORD(v31) = ((*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v34 + 69208137 + v18 + v11) & v22)) ^ *(v34 - 0x8DA1CA05396A123) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v34 + 69208137 + v18 + v11 + 2) & v22)) ^ (110 * (v34 + 73)) ^ 0x55960A) & ~v31 | v31 & 0xAA6900) << 8;
  v35 = STACK[0x518] + 4 * (a5 * v10 + 710790 - (((((a5 * v10 + 710790) >> 3) * v8) >> 32) >> 7) * v9);
  *(v35 - 0x40E8C283FA03C307) = (1912024365 * v35) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v35 + LODWORD(STACK[0x52C])) & v22)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v35 + 1527793161) & v22)) ^ 0xDF110773 ^ ((v31 ^ 0xA06020FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v33 - 251614719 + v18 + v11) & v22)) ^ *(v33 - 0xAAE204F66B5FF6BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v33 - 251614719 + v18 + v11 + 2) & v22)) ^ (110 * (v33 + 1)) ^ 0xB0746C1F) | v31 & 0x4F8B9300);
  return (*(STACK[0x548] + 8 * ((3758 * (a5 == 255)) ^ a4)))();
}

uint64_t sub_61308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v4 + 24);
  v7 = v6 - 34562719;
  v8 = v6 > 0x20F629E;
  v9 = v7 > v3 - 1767747089;
  if ((v3 - 1767747089) < 0xFDF09D61 == v8)
  {
    v8 = v9;
  }

  return (*(a3 + 8 * ((v8 * ((v5 + 2395) ^ 0x99A)) ^ v5)))(a1, a2);
}

uint64_t sub_614EC@<X0>(int a1@<W8>, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 - a1 + 1555135883;
  v10 = 1583996299 * ((2 * (&a2 & 0x5F3EA118) - &a2 - 1597940000) ^ 0xE93C9FFF);
  a2 = v8 - v10 + 1125979049;
  a3 = (((v9 + ((v8 - 1201) | 0x401)) ^ 0xC6B1EBF7) + 998194474 + ((2 * (v9 + ((v8 - 1201) | 0x401))) & 0x8D63D7EE)) ^ v10;
  a5 = v6;
  v11 = (*(v7 + 8 * (v8 ^ 0xF4E)))(&a2);
  return (*(v7 + 8 * v8))(v11);
}

uint64_t sub_61708@<X0>(int a1@<W8>)
{
  v10 = *(STACK[0x6C0] + (((v4 + 678588912) & 0xD78D869A) + 2485) * a1 + 4661111 - ((((((((v4 + 678588912) & 0xD78D869A) + 2485) * a1 + 4661111) >> 3) * v6) >> 32) >> 4) * v7);
  LOBYTE(v10) = *(STACK[0x6C0] + (v10 | ((v10 < 0x7D) << 8)) * v5 + 5061840 - ((((((v10 | ((v10 < 0x7D) << 8)) * v5 + 5061840) >> 3) * v6) >> 32) >> 4) * v7);
  *(v9 + 4 * (((v8 + a1 * v1 - ((((v8 + a1 * v1) * v2) >> 32) >> 12) * v3) ^ 0xD9EF5FEDB2FB9CFFLL) + ((2 * (v8 + a1 * v1 - ((((v8 + a1 * v1) * v2) >> 32) >> 12) * v3)) & 0x39FELL) + 0x2610A0124D046301)) = 876937206;
  return (*(STACK[0x6C8] + 8 * ((v4 + 1855808966) ^ 0x6E9D6D5B ^ (1575 * ((v4 + 1855808966) > 0x7D716AF5)))))();
}

uint64_t sub_618B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, char *a25)
{
  v31 = 1600728529 * ((&a22 + 775727869 - 2 * (&a22 & 0x2E3CAAFD)) ^ 0xAB0960BC);
  a25 = &a12;
  a24 = (v30 + v27) ^ v31;
  a22 = v31 ^ v28;
  v32 = (*(v25 + 8 * v26))(&a22);
  return (*(v25 + 8 * ((25 * (a23 == v29)) ^ (v30 + 1895))))(v32);
}

uint64_t sub_61AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v5 + 24);
  v7 = (v3 ^ 0x93B90656) + v6;
  v8 = v6 > 856 * (v3 ^ 0xAE) + 1816588028;
  v9 = v7 > v4 + 745192327;
  if ((v4 + 745192327) < 0x93B906FB == v8)
  {
    v8 = v9;
  }

  return (*(a3 + 8 * ((599 * v8) ^ v3)))(a1, a2);
}

uint64_t sub_61B4C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 4 * v2 + 508);
  v6 = (a1 + 4 * v2 + 492);
  *v6 = *(v1 + 4 * v2 + 492);
  v6[1] = v5;
  return (*(v3 + 8 * (((v2 == 56) * (((v4 + 73) | 0x10) + 1792)) ^ v4)))();
}

uint64_t sub_61C20@<X0>(uint64_t a1@<X8>)
{
  *v6 = v2;
  v7 = ((23 * (v1 ^ 0x223)) ^ 0xFFFFFD93) + v3;
  if (v3 > 5)
  {
    v7 = 4;
  }

  *v5 = v7;
  *v4 = v7 + 2;
  return (*(a1 + 8 * v1))();
}

uint64_t sub_61CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, char *a23)
{
  a22 = &a12;
  HIDWORD(a23) = v23 - 1600728529 * (((&a22 | 0x89E1607B) - &a22 + (&a22 & 0x761E9F80)) ^ 0xCD4AA3A) + v26 - 856;
  (*(v25 + 8 * (v26 ^ 0x96B)))(&a22);
  *(v27 + 16) = a23 ^ v24;
  HIDWORD(a22) = v26 - 1038736825 - 1183051249 * (((&a22 | 0x821543CE) - (&a22 & 0x821543CE)) ^ 0x67F69512);
  a23 = &a12;
  (*(v25 + 8 * (v26 ^ 0x968)))(&a22);
  a23 = &a12;
  HIDWORD(a22) = v26 - 1038736825 - 1183051249 * ((&a22 + 631498982 - 2 * (&a22 & 0x25A3E8E6)) ^ 0xC0403E3A);
  (*(v25 + 8 * (v26 + 1832)))(&a22);
  a22 = &a12;
  HIDWORD(a23) = v26 - 434465113 * ((&a22 - 1596700505 - 2 * (&a22 & 0xA0D448A7)) ^ 0x557662F8) - 120;
  v28 = (*(v25 + 8 * (v26 ^ 0x960)))(&a22);
  v29 = a23;
  *(v27 + 20) = a23 ^ 0x4B5F60F9;
  return (*(v25 + 8 * ((2898 * ((v26 ^ (v29 == 1264541945)) & 1)) ^ v26)))(v28);
}

uint64_t sub_61EAC(uint64_t a1)
{
  *(a1 + 8) = v2;
  *a1 = 0;
  v5 = (*(v1 + 8 * (v3 ^ 0x948)))((8 * v2) ^ 0xBBCB4C80);
  *a1 = v5;
  return (*(v1 + 8 * (((v5 == 0) * (v3 ^ 0x40C ^ (v3 - 1913985825) & 0x72151F2F)) ^ v3)))();
}

uint64_t sub_61F68(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = (((v9 - 920) | 0x100) + 295) * v7;
  v11 = STACK[0x518] + 4 * ((v10 + v8) % 0x1D48u);
  v12 = STACK[0x518] + 4 * ((v10 + 428127) % 0x1D48u);
  v13 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v14 = *a7 ^ 0xF1E76555;
  *(v12 + a2) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v13 + a3) & v14)) ^ *(v11 + a2) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v13 + 1527793161) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v13 + a3) & v14)) ^ (1912024365 * v12) ^ (1912024365 * v11) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v13 + 1527793161) & v14));
  return (*(STACK[0x548] + 8 * (v9 + 2 * (v7 != 255))))();
}

uint64_t sub_620A0()
{
  v8 = (*(STACK[0x6C0] + (3013 * v0 + 4661111) % 0x1188u) - 125) * (v4 + 8384) + 43866746;
  v9 = v8 - (((v8 * v2) >> 32) >> 12) * v3;
  v10 = *(v5 + 4 * ((v9 ^ 0x3CEBDEEDFBC97F8FLL) + ((2 * v9) & 0x7F1E)) + 0xC50844810DA01C4);
  v11 = *(STACK[0x6C0] + (3013 * (((v10 ^ 0xF5D24040) - 1562830125) ^ ((v10 ^ 0x1AF6D726) + 1308462517) ^ ((v10 ^ 0xEF249790) - 1204826877)) - 2013586123) % 0x1188);
  v12 = v6 + v0 * v1 - ((((v6 + v0 * v1) * v2) >> 32) >> 12) * v3;
  v13 = (((2 * (v11 & 3)) ^ 0x36) & 2 | v11 & 0xB5 ^ 0x99) ^ ((2 * (v11 & 3)) ^ 0x36) & v11;
  v14 = v11 ^ (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * (((v11 & 0xB5 ^ 0x99) & 0xFD | (2 * (v13 & 1))) ^ v11 & (2 * v13))) ^ v11 & 0xB5 ^ 0x99)) ^ v11 & 0xB5 ^ 0x99)) ^ v11 & 0xB5 ^ 0x99)) ^ v11 & 0xB5 ^ 0x99));
  *(v7 + 4 * ((v12 ^ 0x13FEFFED7EB5776DLL) + ((2 * v12) & 0x6EDA)) - 0x4FFBFFB5FAD5DDB4) = ((v14 & 0xF8 ^ 0xFFFFFF7F) & ((((((*(STACK[0x6C0] + (3013 * (((BYTE2(v10) ^ 0xCBF57F64) + 424471161) ^ ((BYTE2(v10) ^ 0x3E393465) - 327114374) ^ ((BYTE2(v10) ^ 0xF5CC4B45) + 662036058)) - 564182159) % 0x1188) - 125) << 8) | (*(STACK[0x6C0] + (3013 * (((HIBYTE(v10) ^ 0x58551C97) - 1696354195) ^ ((HIBYTE(v10) ^ 0xD4691DDF) + 383758629) ^ ((HIBYTE(v10) ^ 0x8C3C017C) + 1317711240)) + 1352275934) % 0x1188) << 16) | (*(STACK[0x6C0] + (3013 * (((BYTE1(v10) ^ 0xC0345229) - 650721759) ^ ((BYTE1(v10) ^ 0x5773367F) + 1316070007) ^ ((BYTE1(v10) ^ 0x974764A9) - 1908019039)) - 1523137317) % 0x1188) - 125)) << 8) - 2097152000) ^ 0xE5B7DBC8) | v14 & 0x37) ^ 0xD1F3240B;
  return (*(STACK[0x6C8] + 8 * ((3028 * (v0 == 255)) ^ v4)))();
}

uint64_t sub_6249C@<X0>(uint64_t a1@<X8>)
{
  v4 = (((v2 ^ 0xC25) - 1699470682) & 0x654BD8EF ^ 0x80881221) + *(v3 + 48);
  v5 = v4 < 0x80881287;
  v6 = v4 > v1 + 423216915;
  if (v1 + 423216915 < (v2 ^ 0x99Fu) - 2138566182 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(a1 + 8 * ((124 * v7) ^ v2 ^ 0xC25u)))();
}

uint64_t sub_6252C@<X0>(char a1@<W2>, char a2@<W3>, char a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, char a7@<W8>)
{
  v19 = *(v17 + 3013 * (LODWORD(STACK[0x6B0]) ^ v10) % 0x1188);
  v20 = v19 ^ 2;
  v21 = (a7 - 50) & v19 ^ a1;
  v22 = STACK[0x6B8];
  v23 = LODWORD(STACK[0x6B0]) + 1;
  v24 = (v19 ^ (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (((2 * (v19 & 3)) ^ a2) & v20 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ a3);
  *(*v16 + 4 * (v9 + LODWORD(STACK[0x6B0]) * v8 - (((((v9 + LODWORD(STACK[0x6B0]) * v8) * v11) >> 32) + ((v9 + LODWORD(STACK[0x6B0]) * v8 - (((v9 + LODWORD(STACK[0x6B0]) * v8) * v11) >> 32)) >> 1)) >> 11) * v12)) = (((v24 ^ a4) + a5) ^ ((v24 ^ a6) + v13) ^ ((v24 ^ v14) + v15)) + 149;
  LODWORD(STACK[0x6B0]) = v23;
  return (*(v18 + 8 * ((23 * (v23 == 256)) ^ v7)))();
}

uint64_t sub_62628@<X0>(int a1@<W1>, int a2@<W3>, _DWORD *a3@<X8>)
{
  a3[5] = 1;
  a3[13] = ((((((a2 + 249) | 0x44) ^ 0xFFFFFDAF) & a1 ^ 0xC4E5864A) - 1651558757) ^ (((((a2 + 249) | 0x44) ^ 0xFFFFFDAF) & a1 ^ 0x880F54BA) - 781851541) ^ (((((a2 + 249) | 0x44) ^ 0xFFFFFDAF) & a1 ^ 0x4CEAD2F0) + 360735265)) - 1039244938;
  a3[14] = a1 & 0xF;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_62710(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v8 * v9 + v10) % 0x27A42D6u;
  v13 = v8 * v9 + 107222822;
  v14 = v8 + 1;
  if (v12 >= 0x13D216B)
  {
    v12 -= 20783467;
  }

  *(a8 + 4 * (((v13 % 0x34AF) ^ 0x3DD19FE7BFDEFFABLL) + ((2 * (v13 % 0x34AF)) & 0x7F56)) + 0x8B9806100840154) = *(a8 + 4 * (((v12 % ((a1 - 528) ^ 0x339Fu)) ^ 0x3FCDCFBE47FBAEDALL) + ((2 * (v12 % ((a1 - 528) ^ 0x339Fu))) & 0x5DB4)) + 0xC8C106E0114498);
  return (*(v11 + 8 * (((2 * (v14 != 256)) | (4 * (v14 != 256))) ^ a1)))();
}

uint64_t sub_62820(uint64_t a1, uint64_t a2)
{
  v9 = v5 < v6;
  *(v7 - 120 + (v4 & 0xF)) ^= ((2 * *(a2 + v4)) | 1) * *(a2 + v4);
  if (v9 == v4 + 1 > 0xD65D71FB)
  {
    v9 = v2 + v4 + 466 < v5;
  }

  return (*(v8 + 8 * ((!v9 * ((v3 + 149137723) & 0xF71C56BF ^ 0x23A)) | v3)))();
}

uint64_t sub_628B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 9002 * (*(v14 + (3013 * v8 + 4661111) % (((v9 - 849673500) & 0x32A4FF57u) + 2673)) - 125) + 4618026;
  v17 = v16 - (((20380953 * v16) >> 32) >> 6) * v11;
  v18 = *(a8 + 4 * ((v17 ^ 0x3BB3BE3EFDA77F9FLL) + ((2 * v17) & 0x7F3E)) + 0x1131070409620184);
  v19 = 3013 * ~(v18 >> 8) + 10093550;
  v20 = *(v14 + (3013 * (((v18 ^ 0x50913E89) + 1996339596) ^ ((v18 ^ 0x202DC1D) + 611212064) ^ ((v18 ^ 0x5293E262u) + 1962894689)) - 985801371) % 0x1188);
  v21 = v13 + 9002 * v8 - ((((v13 + 9002 * v8) * v10) >> 32) >> 12) * v11;
  LOBYTE(v17) = v20 & 0x15 ^ 0xC9;
  v22 = v20 ^ 2;
  LOBYTE(v17) = v20 ^ (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (((2 * (v20 & 3)) ^ 0x16) & v22 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  *(v12 + 4 * ((v21 ^ 0x1DFFE7ABC7FFEBDELL) + ((2 * v21) & 0x57BC)) - 0x77FF9EAF1FFFAF78) = ((v17 & 0xFC ^ 0xFFFFFFFB) & ((((((*(v14 + 3013 * (BYTE2(v18) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v18) ^ 0x44u) + 10093550)) >> 32) >> 5)) - 125) << 8) | (*(v14 + (3013 * (((HIBYTE(v18) ^ 0x751EA5A) - 573035901) ^ ((HIBYTE(v18) ^ 0xC89CBCD2) + 303397899) ^ ((HIBYTE(v18) ^ 0xCFCD56BC) + 356816485)) - 380739955) % 0x1188) << 16) | (*(v14 + v19 - 4488 * (((30623653 * v19) >> 32) >> 5)) - 125)) << 8) - 2097152000) ^ 0x24F12AAC) | v17 & 0x53) ^ 0x10B5D54B;
  return (*(v15 + 8 * ((972 * (v8 == 255)) ^ v9)))();
}

uint64_t sub_62C8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = STACK[0x518] + 4 * ((551 * v7 + ((v9 - 761) ^ (v8 + 877))) % 0x1D48);
  v11 = STACK[0x518] + 4 * ((551 * v7 + 2127962) % 0x1D48u);
  v12 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v13 = *a7 ^ 0xF1E76555;
  v14 = (v11 + v12 + a3) & v13;
  v15 = (v11 + v12 + 1527793161) & v13;
  v16 = v10 + v12;
  v17 = (v16 + LODWORD(STACK[0x52C])) & v13;
  v18 = (v16 + 1527793161) & v13;
  LODWORD(v13) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v17);
  v19 = LODWORD(STACK[0x52C]);
  *(v11 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v14) ^ *(v10 + a2) ^ (1912024365 * v11) ^ (1912024365 * v10) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v15) ^ v13 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v18);
  return (*(STACK[0x548] + 8 * ((244 * (v7 != 255)) ^ v9)))();
}

uint64_t sub_62DE8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16) + v4;
  v8 = *(*(a4 - 132921991) + (((v7 & 0x260ABCD8 | 0xD9F54327) + (v7 & 0xD9F54320 | 0x260ABCD8) + 916900721) & *(v5 - 464343834)));
  v9 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v8) ^ 0x89F455BA1C0B015;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xD8D188F9068EB840;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ ((v6 + 2395) + 0x7E1F3531EE27777);
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x7C82FA31EB00A3FCLL) + 0x3E417D18F58051FELL) ^ 0x80ED8687B89942C6;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0xBCA8FC56446EABB2) - ((v18 + v17) | 0x435703A9BB91544DLL) + 0x435703A9BB91544DLL) ^ 0x36E1BFAC78751224;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x97D28A07A89B796ALL) - 0x3416BAFC2BB2434BLL) ^ 0x446B284B08E0FCB3;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a2 + 8 * v6))();
}

uint64_t sub_63034@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40 * v4 + 20) = 256;
  *(*(v2 + 8) + 40 * v4 + 16) = 0;
  return (*(v1 + 8 * v3))();
}

uint64_t sub_630F4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(v12 + (3013 * v8 + 4661111) % (v9 ^ 0x1359u));
  v15 = v14 & 0x41 ^ 0xFFFFFFE3;
  v16 = v14 ^ (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * ((v14 ^ 2) & (2 * (((2 * (v14 & 3)) ^ 0x42) & (v14 ^ 2) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  v17 = 9002 * (((2 * v16) & 0xA ^ 2) + (v16 ^ 0xB44));
  v18 = v17 - (((81523811 * v17) >> 32) >> 8) * a1;
  LODWORD(v18) = *(a8 + 4 * ((v18 ^ 0x2FA7F9D33CFF5DDELL) + ((2 * v18) & 0x3BBC)) + 0x416018B30C028888);
  v19 = ~(v18 >> 8);
  v20 = 3013 * (((v18 ^ 0x2155E4EB) - 1855530198) ^ ((v18 ^ 0xB307D1C3) + 53800450) ^ ((v18 ^ 0x925235DE) + 576784925)) + 896735525;
  v21 = *(v12 + (3013 * (((BYTE3(v18) ^ 0x9E6424D1) - 2067719376) ^ ((BYTE3(v18) ^ 0x59170F33) + 1135751374) ^ ((BYTE3(v18) ^ 0xC7732BD6) - 573172695)) + 1706177463) % 0x1188);
  v22 = *(v12 + 3013 * (BYTE2(v18) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v18) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v23 = 9002 * (((2 * v8) & 0x651C) + (v8 ^ 0x328E)) - (((9002 * (((2 * v8) & 0x651C) + (v8 ^ 0x328Eu)) * v10) >> 32) >> 12) * a1;
  v24 = v22 & 0xED ^ 0x35;
  v25 = v21 ^ 2;
  v26 = v21 & 0xC7 ^ 0x22;
  v27 = *(v12 + 3013 * v19 + 10093550 - 4488 * (((30623653 * (3013 * v19 + 10093550)) >> 32) >> 5));
  v28 = v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26;
  v29 = v27 & 0x21 ^ 0xD3;
  v30 = v27 ^ 2;
  LOBYTE(v20) = *(v12 + v20 % 0x1188);
  v31 = (((v21 ^ (2 * v28)) ^ 0xC7) << 16) | (((v22 ^ (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((((2 * (v22 & 3)) ^ 0x6E) & 2 | v24) ^ ((2 * (v22 & 3)) ^ 0x6E) & v22)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xED) << 8);
  v32 = v20 & 0x81 ^ 3;
  v33 = v20 ^ 2;
  v34 = v20 ^ (2 * (v33 & (2 * (v33 & (2 * (v33 & (2 * (v33 & (2 * (v33 & (2 * (((2 * (v20 & 3)) ^ 2) & v33 ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32));
  *(v11 + 4 * ((v23 ^ 0x375EFBFFCEBFF9FDLL) + ((2 * v23) & 0x73FA)) + 0x22841000C500180CLL) = ((((((v27 ^ (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (((2 * (v27 & 3)) ^ 0x22) & v30 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x9E2508) & ~v31 | v31 & 0x61DA00) << 8) ^ 0x74510A31) & (v34 ^ 0xFFFFFFBE) | v34 & 0xCE) ^ 0xDE30DC47;
  return (*(v13 + 8 * ((1928 * (v8 == 255)) ^ v9)))();
}

uint64_t sub_63740(uint64_t a1)
{
  *a1 = v2;
  v5 = (*(v1 + 8 * (v3 ^ 0x22A)))((40 * v2 - 1167613928));
  *(a1 + 8) = v5;
  return (*(v1 + 8 * (((v5 != 0) * (((v3 - 1654604608) & 0x629F3FF9) - 1116)) ^ v3)))();
}

uint64_t sub_63804@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  LODWORD(v6) = (v2 * a2 + 32326182) % 0x695Eu;
  v7 = (v2 * a2 + v4) % 0x34AFu;
  v8 = v2 + 1;
  if (v6 >= ((v3 + 1150) | 0x181u) + 11050)
  {
    v6 = (v6 - 13487);
  }

  else
  {
    v6 = v6;
  }

  *(a1 + 4 * ((v6 ^ 0x26FE8E57B7FFAFB1) + ((2 * v6) & 0x16FFF5F62)) + 0x6405C6A12001413CLL) = *(a1 + 4 * ((v7 ^ 0x38F7BFBD9F4D7FE7) + ((2 * v7) & 0x7FCE)) + 0x1C21010982CA0064);
  return (*(v5 + 8 * ((2007 * (v8 == 256)) ^ v3)))();
}

uint64_t sub_63968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, char *a25)
{
  v29 = 1600728529 * ((&a22 & 0x11AF1943 | ~(&a22 | 0x11AF1943)) ^ 0x6B652CFD);
  a25 = &a12;
  a22 = v29 ^ v26;
  a24 = (v28 + 2065905876) ^ v29;
  v30 = (*(v25 + 8 * (v28 ^ 0x8F9)))(&a22);
  return (*(v25 + 8 * ((v28 + 1630) ^ (8 * (a23 == v27)))))(v30);
}

uint64_t sub_63A48(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = a5 < v8;
  *(v9 + 16) = v10 + a4 - 65023298 + ((v12 - 272) | 0x800);
  v15 = (((v12 + 710) | v13) ^ v11) + v10 + a4;
  v16 = v14 ^ (v15 < v8);
  v17 = v15 < a5;
  if (!v16)
  {
    v14 = v17;
  }

  return (*(a6 + 8 * ((v14 * a8) ^ v12)))(65021204);
}

uint64_t sub_63B80@<X0>(uint64_t a1@<X1>, int a2@<W2>, void *a3@<X6>, int a4@<W8>)
{
  v6 = STACK[0x518] + 4 * ((551 * a4 + v5) % 0x1D48u);
  v7 = STACK[0x518] + 4 * ((551 * a4 + 2411176) % 0x1D48u);
  v8 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v9 = *a3 ^ 0xF1E76555;
  v10 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v7 + v8 + a2) & v9));
  v11 = LODWORD(STACK[0x52C]);
  *(v7 - 0x40E8C283FA03C307) = v10 ^ *(v6 + a1) ^ (1912024365 * v7) ^ (1912024365 * v6) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v7 + v8 + 1527793161) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v8 + LODWORD(STACK[0x52C])) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v8 + 1527793161) & v9));
  return (*(STACK[0x548] + 8 * ((218 * (((46 * (v4 ^ 0x46A)) ^ 0x36B) + a4 != 256)) ^ v4)))(0);
}

uint64_t sub_63DB8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v11 = *v7;
  v12 = (((1645 * a5 + 2113825) % 0xA88u) ^ 0xA56EFD5AFFFCEF8FLL) + STACK[0x520] + ((((a1 - 822) | 0x40u) + 6320) & (2 * ((1645 * a5 + 2113825) % 0xA88u)));
  v13 = *STACK[0x538];
  v14 = *(v13 + (v11 & v10));
  v15 = *a7 ^ 0x71B0588CF1E76555;
  v16 = v10 + 2;
  v17 = *a7 ^ 0xF1E76555;
  v18 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((0x41E3499260CF9964 * v15 + 0x41E3499260CF9964 + (v12 + 200817 + v14 + v10)) & v15)) ^ *(v12 + 0x4FB0D602A84C6705) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 200817 + v14 + v10 + 2) & v17)) ^ (110 * ((((1645 * a5 + 2113825) % 0xA88u) ^ 0x8F) + LOBYTE(STACK[0x520]) + ((((a1 - 54) | 0x40) - 80) & (2 * ((1645 * a5 + 2113825) % 0xA88u))) + 113));
  v19 = 551 * (((v18 ^ 0x3C540A23) - 1806960406) ^ ((v18 ^ 0x2CB98BF6) - 2069464771) ^ ((v18 ^ 0x10ED8193) - 1192070310)) + 593324767;
  v20 = STACK[0x518] + 4 * (v19 - ((((v19 >> 3) * v8) >> 32) >> 7) * v9);
  LODWORD(v11) = *(v13 + (v11 & STACK[0x540]));
  LODWORD(v13) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + v11 + LODWORD(STACK[0x52C])) & v17)) ^ *(v20 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + v11 + 1527793161) & v17));
  v21 = ((v13 ^ (16198957 * v20)) >> 16) ^ 0xE7;
  v22 = ((v13 ^ (11565 * v20)) >> 8) ^ 0x6B;
  v23 = 1645 * (((((v13 ^ (1912024365 * v20)) >> 24) ^ 0xFC989533) + 2093088619) ^ ((((v13 ^ (1912024365 * v20)) >> 24) ^ 0x56E60C38) - 692099486) ^ ((((v13 ^ (1912024365 * v20)) >> 24) ^ 0xAA7E9921) + 707261305)) + 1101182610;
  LODWORD(v20) = 1645 * ((((v13 ^ (45 * v20)) ^ 0x3B76710D) + 328470786) ^ (((v13 ^ (45 * v20)) ^ 0x108135CC) + 946034113) ^ (((v13 ^ (45 * v20)) ^ 0x2BF744EB) + 51717352)) + 1234167643;
  v24 = 1645 * v22 + 3391990 - 2696 * (((12744711 * (1645 * v22 + 3391990)) >> 32) >> 3);
  v25 = v20 % 0xA88;
  v26 = 1645 * v21 + 3391990 - 2696 * (((12744711 * (1645 * v21 + 3391990)) >> 32) >> 3);
  v27 = (v26 ^ 0xFFBE3FB6FD56ED73) + STACK[0x520] + ((2 * v26) & 0x1AE6);
  v28 = ((v23 % 0xA88) ^ 0x60FEF3FF956B3B1DLL) + STACK[0x520] + ((2 * (v23 % 0xA88)) & 0x163A);
  v29 = (v24 ^ 0x6BFDFB7FFFFECF6BLL) + STACK[0x520] + ((2 * v24) & 0x1ED6);
  v30 = *(v27 - 0xA9E6C59550D96DFLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 44634765 + v14 + 1186175272) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 44634765 + v14 + v10 + 2) & v17)) ^ (110 * (v27 - 115));
  v31 = (v25 ^ 0x6FFFFA7FFAE4F0C8) + STACK[0x520] + ((2 * v25) & 0x190);
  LODWORD(v28) = (*(v28 - 0x6BDF20A1ED21E489) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 1788134627 + v14 + 1186175272) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 1788134627 + v14 + v10 + 2) & v17)) ^ (110 * (v28 - 29)) ^ 0x46) << 16;
  v32 = STACK[0x518] + 4 * (551 * a5 + 710790 - (((((551 * a5 + 710790) >> 3) * v8) >> 32) >> 7) * v9);
  *(v32 - 0x40E8C283FA03C307) = (1912024365 * v32) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v32 + LODWORD(STACK[0x52C])) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v32 + 1527793161) & v17)) ^ 0x7918DD6C ^ (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 85659448 + v14 + 1186175272) & v17)) ^ *(v31 - 0x7AE02722529B9A34) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 85659448 + v14 + v16) & v17)) ^ (110 * (v31 + 56)) | ((((v28 | ((v30 ^ 0x46) << 8)) ^ 0xD7FFFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 77973 + v14 + 1186175272) & v17)) ^ *(v29 - 0x76DE282257B578D7) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((0x358B7D750B1BBF0DLL * v15 + 0x358B7D750B1BBF0DLL + (v29 + 77973 + v14 + v16)) & v15)) ^ (110 * (v29 - 107)) ^ 0x53FFF0) | v28 & 0xAC0000) << 8));
  return (*(STACK[0x548] + 8 * ((807 * (a5 == 255)) ^ a1)))();
}

uint64_t sub_643F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, uint64_t a12)
{
  v19 = v18 + v12;
  v20 = ((-32826047 - (&a9 | 0xFE0B1D41) + (&a9 | 0x1F4E2BE)) ^ 0x84C128FF) * v16;
  a12 = v14;
  a9 = v20 ^ 0xC2A73561;
  a11 = (v18 + v12) ^ v20;
  (*(v15 + 8 * (v18 ^ 0x398)))(&a9);
  v21 = ((&a9 + 1446537545 - 2 * (&a9 & 0x56386949)) ^ 0xD30DA308) * v16;
  a12 = v14;
  a9 = v21 ^ v17;
  a11 = v19 ^ v21;
  (*(v15 + 8 * (v18 + 408)))(&a9);
  *(v13 + 4) = a10;
  v22 = 1600728529 * (&a9 ^ 0x8535CA41);
  a12 = v14;
  a11 = v19 ^ v22;
  a9 = v22 ^ 0x940FE5FB;
  v23 = (*(v15 + 8 * (v18 + 408)))(&a9);
  return (*(v15 + 8 * ((212 * (a10 == (v18 ^ 0xDAE) - 1069532581)) | v18)))(v23);
}

uint64_t sub_645D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v22 = v12 + v18 * v11 - ((((v12 + v18 * v11) * v13) >> 32) >> 12) * v14;
  LODWORD(v22) = *(STACK[0x6B8] + 4 * ((v22 ^ v15) + ((v22 << ((a9 - 62) ^ v16)) & a1)) + a2);
  v23 = *v19;
  v24 = *(*v19 + 4 * (v18 + v10));
  v25 = STACK[0x6A0];
  *(v23 + 4 * (v18 + v10)) = ((((v22 ^ a3) + a4) ^ ((v22 ^ a5) + a6) ^ ((v22 ^ a7) + a8)) + v20) * v24;
  return (*(v21 + 8 * (((v18 + 1 == v9 + 2671) * v17) ^ a9)))();
}

uint64_t sub_6468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 128) = &a19;
  *(v22 - 116) = v19 - 434465113 * ((((v22 - 128) | 0x8C28E61F) - (v22 - 128) + ((v22 - 128) & 0x73D719E0)) ^ 0x798ACC40) + 62;
  v23 = (*(v20 + 8 * (v19 ^ 0x82E)))(v22 - 128);
  *(v21 + 562) = *(v22 - 120) ^ (((v19 + 6224) & 0xE5E3) + 24536);
  return (*(v20 + 8 * v19))(v23);
}

uint64_t sub_64728()
{
  *(v4 - 120) = (v2 + 1037344099) ^ (1879456961 * ((((2 * (v4 - 128)) | 0x8793E512) - (v4 - 128) + 1010175351) ^ 0x9003ACEE));
  *(v4 - 128) = &v9;
  result = (*(v1 + 8 * (v2 + 2274)))(v4 - 128);
  v0[557] = *(v4 - 116) + 8 * *(v7 + 60) - 1555137164;
  *v0 = 0;
  *(v8 + 60) = v3;
  v6 = *(v4 - 96);
  return result;
}

uint64_t sub_647F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v24 - 124) = v23 - 1038737430 - 1183051249 * (((v19 | 0x709F3991) - (v19 & 0x709F3991)) ^ 0x957CEF4D);
  *(v24 - 120) = v20;
  (*(v22 + 8 * (v23 ^ 0xCCB)))(v24 - 128);
  *(a11 + v21) = *(v24 - 128);
  *(v24 - 124) = v23 - 1038737430 - 1183051249 * ((-2063277411 - (v19 | 0x8504E29D) + (v19 | 0x7AFB1D62)) ^ 0x9F18CBBE);
  *(v24 - 120) = v20;
  (*(v22 + 8 * (v23 + 1227)))(v24 - 128);
  *(a10 + v21) = *(v24 - 128);
  *(v24 - 124) = v23 - 1038737430 - 1183051249 * ((((2 * v19) | 0x5D3AF648) - v19 - 782072612) ^ 0xCB7EADF8);
  *(v24 - 120) = &a19;
  (*(v22 + 8 * (v23 + 1227)))(v24 - 128);
  *(a15 + v21 + 1844) = *(v24 - 128);
  *(v24 - 124) = v23 - 1038737430 - 1183051249 * ((((2 * v19) | 0xB521EA72) - v19 + 628034247) ^ 0x3F7323E5);
  *(v24 - 120) = &a19;
  v25 = (*(v22 + 8 * (v23 ^ 0xCCB)))(v24 - 128);
  v26 = *(v24 - 128);
  return (*(v22 + 8 * v23))(v25);
}

uint64_t sub_64AB0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = *(v11 + 4 * ((v7 ^ 0xD9Eu) + (((v12 + v10 * a7) % 0x34AFu) ^ 0x3FF1FFFDF6EDA73ELL) + ((2 * ((v12 + v10 * a7) % 0x34AFu)) & 0x4E7C)) + 0x38000824493CF4);
  *(STACK[0x6C0] + v10 * v8 + 9322222 - (((((v10 * v8 + 9322222) >> 3) * v9) >> 32) >> 4) * a1) = (((v13 ^ 0x98) + 52) ^ ((v13 ^ 0xF0) + 92) ^ ((v13 ^ 0x9E) + 54)) + 31;
  return (*(STACK[0x6C8] + 8 * ((3309 * (v10 == 255)) ^ v7)))();
}

uint64_t sub_64BC0(int a1, int a2, unsigned int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v24 = v21 + 2;
  v25 = ((v16 ^ v15 ^ v17 ^ *(a7 + v18) ^ 0x46) << 16) | (((110 * v12) ^ v13 ^ *(a7 + ((a1 + v12 + v21) & a3)) ^ *(a7 + ((a1 + v12 + v21 + 2) & a3)) ^ 0x46) << 8);
  v26 = LODWORD(STACK[0x4B0]) ^ 0xA50;
  LODWORD(STACK[0x518]) = v26;
  v27 = ((v14 ^ (110 * a8) ^ *(a7 + ((a1 + a8 + v21 + 2) & a3)) ^ *(a7 + ((v21 + v26 + a1 + a8 - 2053) & a3)) ^ 0xA353ED) & ~v25 | v25 & 0x5CAC00) << 8;
  *(*v22 + 56) = ((v27 ^ 0x580C00FF) & (v10 ^ (110 * v11) ^ *(a7 + ((a1 + v11 + v21) & a3)) ^ *(a7 + ((a1 + v11 + v21 + 2) & a3)) ^ 0x584C2BD2) | v27 & 0xA7B3D400) ^ 0xFB5FAB94;
  v28 = 1645 * v8 + 2113825 - 2696 * (((12744711 * (1645 * v8 + 2113825)) >> 32) >> 3);
  v29 = (v28 ^ 0x7E5D7EFDFFC7CFFFLL) + 2 * v28;
  v30 = v9 - 2696 * (((12744711 * v9) >> 32) >> 3);
  v31 = 1645 * (((2 * a2) & 0xA ^ 8) + (a2 ^ 0x54B));
  v32 = (v31 - 2696 * ((1593089 * v31) >> 32));
  v33 = (v32 ^ 0xBFEF7FEBBEB2D7DALL) + v19 + ((2 * v32) & 0xFB4);
  v34 = *(v33 + 0x35305371E9967EBALL);
  v35 = v33 + 1095575590;
  v36 = (v30 ^ 0xF2A3FF5FBDFF77F9) + v19 + ((2 * v30) & 0xFF2);
  LODWORD(v30) = v36 + 1107331079;
  v37 = *(v36 + 0x27BD3FDEA49DE9BLL);
  v38 = *(*STACK[0x538] + (*v20 & v21));
  v39 = 1645 * (HIBYTE(v23) ^ 2) + 2113825 - 2696 * (((12744711 * (1645 * (HIBYTE(v23) ^ 2u) + 2113825)) >> 32) >> 3);
  v40 = v29 + v19;
  v41 = v40 + 3682305;
  v42 = (v39 ^ 0x5FBFFEEFFBE5DE6FLL) + v19 + ((2 * v39) & 0x1CDE);
  v43 = (110 * v35) ^ v34;
  v44 = *a5 ^ 0xDDC772C6444EEA48;
  v45 = ((v43 ^ *(v44 + ((v38 + v35 + v21) & (qword_190530 ^ 0xF1E76555))) ^ *(v44 + ((v38 + v35 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v41) ^ *(v40 + 0x76C2545FA8818695) ^ *(v44 + ((v38 + v41 + v21) & (qword_190530 ^ 0xF1E76555))) ^ 0x46 ^ *(v44 + ((v38 + v41 + v24 + 0x1EDA15B6FCF521DCLL * (qword_190530 ^ 0x71B0588CF1E76555) + 0x1EDA15B6FCF521DCLL) & (qword_190530 ^ 0x71B0588CF1E76555)))) << 8);
  LODWORD(v42) = ((*(v42 - 0x6AA02B92539C87DBLL) ^ (110 * (v42 - 111)) ^ *(v44 + ((v38 + v42 + 68821393 + v21) & (qword_190530 ^ 0xF1E76555))) ^ *(v44 + ((v38 + v42 + 68821393 + v21 + 2) & (qword_190530 ^ 0xF1E76555))) ^ 0x1721F) & (v45 ^ 0x6BF7FF) | v45 & 0xFE8D00) << 8;
  v46 = v22;
  *(*v22 + 24) = ((v37 ^ (110 * v30) ^ *(v44 + ((v38 + v30 + v21) & (qword_190530 ^ 0xF1E76555))) ^ *(v44 + ((v38 + v30 + v21 + 2) & (qword_190530 ^ 0xF1E76555))) ^ 0xE557C340) & (v42 ^ 0xF685B6FF) | v42 & 0x1AA83C00) ^ 0xE577DB06;
  LODWORD(v42) = 1645 * (BYTE2(LODWORD(STACK[0x42C])) ^ 0xCD) + 2113825;
  v47 = v42 - 2696 * (((12744711 * v42) >> 32) >> 3);
  LODWORD(v42) = 1645 * (LODWORD(STACK[0x42C]) ^ 0x90) + 2113825;
  v48 = v42 - 2696 * (((12744711 * v42) >> 32) >> 3);
  LODWORD(v42) = 1645 * (HIBYTE(LODWORD(STACK[0x42C])) ^ 0x58) + 2113825;
  v49 = v42 - 2696 * (((12744711 * v42) >> 32) >> 3);
  v50 = (v49 ^ 0x4CF88F7BC26FEB9FLL) + v19 + ((2 * v49) & 0x173E);
  v51 = v50 + 1032852577;
  LODWORD(v40) = *(v50 - 0x57D8BC1E1A26950BLL);
  LODWORD(v50) = 1645 * (BYTE1(LODWORD(STACK[0x42C])) ^ 0xF0) + 2113825;
  v52 = v50 - 2696 * (((12744711 * v50) >> 32) >> 3);
  v53 = (v52 ^ 0x6FF3EB9DFD79347FLL) + v19 + ((2 * v52) & 0x8FE);
  v54 = v53 + 42388353;
  LODWORD(v44) = *(v53 - 0x7AD41840552FDDEBLL);
  v55 = (v47 ^ 0x7E938BFFFFB7FFFALL) + v19 + ((2 * v47) & 0x1FF4);
  v56 = (v48 ^ 0xFFF8BEFAB9D44DFFLL) + v19 + ((2 * v48) & 0x1BFE);
  v57 = STACK[0x538];
  v58 = *(*STACK[0x538] + (*v20 & v21));
  LODWORD(v55) = (((110 * v51) ^ v40 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v51 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v51 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v55 + 6)) ^ *(v55 + 0x768C475DA891569ALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v55 + 4718598 + v21 - 0x21D16B6225CA372DLL * (qword_190530 ^ 0x71B0588CF1E76555) - 0x21D16B6225CA372DLL) & (qword_190530 ^ 0x71B0588CF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v55 + 4718598 + v24 + 0x47554D0A56E2E161 * (qword_190530 ^ 0x71B0588CF1E76555) + 0x47554D0A56E2E161) & (qword_190530 ^ 0x71B0588CF1E76555))) ^ 0x46) << 8);
  LODWORD(v55) = ((v55 ^ 0x8139FF) & (v44 ^ (110 * v54) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v54 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v54 + v21 + 2) & (qword_190530 ^ 0xF1E76555))) ^ 0x129CC) | v55 & 0xFED600) << 8;
  *(*v22 + 152) = ((v55 ^ 0xFFC07FFF) & (*(v56 - 0xAD8EB9D118AF76BLL) ^ (110 * (v56 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v56 + 1177268737 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v58 + v56 + 1177268737 + v21 + 2) & (qword_190530 ^ 0xF1E76555))) ^ 0xBC61B05B) | v55 & 0x439E4F00) ^ 0xBD69BA1D;
  LODWORD(v48) = 1645 * (BYTE1(LODWORD(STACK[0x4B8])) ^ 0x46) + 2113825;
  v59 = v48 - 2696 * (((12744711 * v48) >> 32) >> 3);
  LODWORD(v56) = 1645 * (HIBYTE(LODWORD(STACK[0x4B8])) ^ 0x73) + 2113825;
  v60 = v56 - 2696 * (((12744711 * v56) >> 32) >> 3);
  LODWORD(v55) = 1645 * ((STACK[0x510] & 0xFE | LODWORD(STACK[0x4B4])) ^ 0x84) + 2113825;
  v61 = v55 - 2696 * (((12744711 * v55) >> 32) >> 3);
  v62 = (v59 ^ 0x96FD5BAFFFFF6EFFLL) + v19 + ((2 * v59) & 0x1DFE);
  v63 = (v60 ^ 0x53BD1FDECE9FFDBELL) + v19 + ((2 * v60) & 0x1B7C);
  v64 = v63 + 828375618;
  v65 = *(v63 - 0x5E9D4C812656A72ALL);
  v66 = v57;
  LODWORD(v63) = *(*v57 + (*v20 & 0x46B39928));
  v67 = (v61 ^ 0x52FEFAC7FEDB777FLL) + v19 + ((2 * v61) & 0xEFE);
  LODWORD(v40) = 1645 * (LODWORD(STACK[0x4B8]) ^ 0x8D) + 2113825;
  v68 = v40 - 2696 * (((12744711 * v40) >> 32) >> 3);
  LODWORD(v67) = (((110 * v64) ^ v65 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v63 + v64 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v63 + v64 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v67 - 127)) ^ *(v67 - 0x5DDF276A569220EBLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v63 + v67 + 19171457 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v63 + v67 + 19171457 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v69 = (v68 ^ 0x57E7FFB6F9FFAFF3) + v19 + ((2 * v68) & 0x1FE6);
  LODWORD(v67) = (*(v62 + 0x5E2277ADA849E795) ^ (110 * (v62 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v63 + v62 + 37121 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v63 + v62 + 37121 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x714B94) & (v67 ^ 0x79CBFF) | v67 & 0x8EB400;
  LODWORD(v67) = ((*(v69 - 0x62C82C5951B6595FLL) ^ (110 * (v69 + 13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v63 + v69 + 100683789 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((qword_190530 ^ 0xF1E76555) & (v63 + v69 + 100683789 + v24))) ^ 0x4EE17C39) & ((v67 << 8) ^ 0x2FA4ADFF) | (v67 << 8) & 0xB11E8300) ^ 0x7FEBFE7F;
  *(*v22 + 332) = 0;
  *(*v22 + 332) = ((v67 - *(*v22 + 332)) ^ 0x33B3D6F5) - 867423989 + ((2 * (v67 - *(*v22 + 332))) & 0x6767ADEA);
  LODWORD(v67) = 1645 * (BYTE1(LODWORD(STACK[0x3BC])) ^ 0x18) + 2113825;
  v70 = v67 - 2696 * (((12744711 * v67) >> 32) >> 3);
  v71 = (v70 ^ 0x5BCE7EAFFB3AEBDDLL) + v19 + ((2 * v70) & 0x17BA);
  LODWORD(v62) = v71 + 80024611;
  LODWORD(v63) = *(v71 - 0x66AEAB5252F19549);
  LODWORD(v71) = 1645 * (HIBYTE(LODWORD(STACK[0x3BC])) ^ 0xD3) + 2113825;
  v72 = v71 - 2696 * (((12744711 * v71) >> 32) >> 3);
  v73 = (v72 ^ 0x1D5DBDFFFFFFFFBFLL) + v19 + ((2 * v72) & 0x1F7E);
  v74 = *(*v66 + (*v20 & 0x46B39928));
  LODWORD(v40) = 1645 * (BYTE2(LODWORD(STACK[0x3BC])) ^ 0xC6) + 2113825;
  v75 = v40 - 2696 * (((12744711 * v40) >> 32) >> 3);
  v76 = (v75 ^ 0xDBFF5DFDECBDD9FFLL) + v19 + ((2 * v75) & 0x13FE);
  LODWORD(v69) = v76 + 323102209;
  LODWORD(v73) = (((110 * (v73 + 65)) ^ *(v73 - 0x283DEAA257B6A92BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v73 + 65 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v73 + 65 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v69) ^ *(v76 + 0x1920755FBB8B7C95) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v69 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v69 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v69) = 1645 * (LODWORD(STACK[0x3BC]) ^ 0x2A) + 2113825;
  v77 = v69 - 2696 * (((12744711 * v69) >> 32) >> 3);
  v78 = (v77 ^ 0xFEF5CFDCF77FFB6ELL) + v19 + ((2 * v77) & 0x16DC);
  LODWORD(v73) = (v63 ^ (110 * v62) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v62 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v62 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xDDEF46) & ~v73 | v73 & 0x221000;
  *(*v22 + 52) = ((*(v78 - 0x9D5FC7F4F36A4DALL) ^ (110 * (v78 - 110)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v78 + 142607506 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v74 + v78 + 142607506 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xA3D5F90D) & ((v73 << 8) ^ 0x6218F9FF) | (v73 << 8) & 0x5C2A0600) ^ 0xFFFFF94B;
  LODWORD(v73) = 1645 * (BYTE1(LODWORD(STACK[0x3B0])) ^ 0xFD) + 2113825;
  v79 = v73 - 2696 * (((12744711 * v73) >> 32) >> 3);
  LODWORD(v62) = 1645 * (BYTE2(LODWORD(STACK[0x3B0])) ^ 0x6E) + 2113825;
  v80 = v62 - 2696 * (((12744711 * v62) >> 32) >> 3);
  LODWORD(v63) = 1645 * (HIBYTE(LODWORD(STACK[0x3B0])) ^ 0xB6) + 2113825;
  v81 = v63 - 2696 * (((12744711 * v63) >> 32) >> 3);
  v82 = (v80 ^ 0x97A76DFF9FFFCC3FLL) + v19 + ((2 * v80) & 0x187E);
  LODWORD(v76) = v82 + 1610625985;
  LODWORD(v44) = *(v82 + 0x5D78655E08498A55);
  v83 = (v81 ^ 0x7DB9FB2FC9ADFBEFLL) + v19 + ((2 * v81) & 0x17DE);
  v84 = (v79 ^ 0xD3F93B19FFD2753FLL) + v19 + ((2 * v79) & 0xA7E);
  LODWORD(v81) = *(*v66 + (*v20 & 0x46B39928));
  LODWORD(v76) = v44 ^ (110 * v76) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v76 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v76 + v24) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v78) = 1645 * ((LODWORD(STACK[0x3B0]) ^ 0xFE) + 1285);
  v85 = ((v78 % 0xA88) ^ 0x6BFD66DF37ADFFDBLL) + v19 + ((2 * (v78 % 0xA88)) & 0x1FB6);
  LODWORD(v76) = (v76 << 16) & 0xC00000 | ((*(v83 + 0x7765D82DDE9B5AA5) ^ (110 * (v83 + 911344657)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v83 + 911344657 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v83 + 911344657 + v24) & (qword_190530 ^ 0xF1E76555)))) << 24) | (((v76 << 26) | ((*(v84 + 0x21269843A876E155) ^ (110 * (v84 - 63)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v84 + 2984641 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v84 + 2984641 + v24) & (qword_190530 ^ 0xF1E76555)))) << 18)) >> 10);
  *(*v22 + 20) = ((v76 ^ 0x8918B8FF) & (*(v85 - 0x76DD93818F64A947) ^ (110 * (v85 + 37)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v85 - 934150107 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v81 + v85 - 934150107 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x891EF81E) | v76 & 0x76E10700) ^ 0xCF5EFE58;
  LODWORD(v84) = 1645 * (LODWORD(STACK[0x390]) ^ 0xD8) + 2113825;
  v86 = v84 - 2696 * (((12744711 * v84) >> 32) >> 3);
  LODWORD(v83) = 1645 * (HIBYTE(LODWORD(STACK[0x390])) ^ 0xE4) + 2113825;
  v87 = v83 - 2696 * (((12744711 * v83) >> 32) >> 3);
  v88 = (v87 ^ 0x7C5DFBEFFADFD6DDLL) + v19 + ((2 * v87) & 0xDBA);
  LODWORD(v76) = v88 + 85993763;
  LODWORD(v44) = *(v88 + 0x78C1D76DAD697FB7);
  v89 = (v86 ^ 0xCFA7CFBAEF9FBDFDLL) + v19 + ((2 * v86) & 0x1BFA);
  LODWORD(v88) = v89 + 274743811;
  LODWORD(v81) = *(v89 + 0x257803A2B8A99897);
  LODWORD(v89) = 1645 * (BYTE2(LODWORD(STACK[0x390])) ^ 0x2B) + 2113825;
  v90 = v89 - 2696 * (((12744711 * v89) >> 32) >> 3);
  v91 = (v90 ^ 0x6DF7BEFFFD4775CBLL) + v19 + ((2 * v90) & 0xB96);
  v92 = v66;
  v93 = *(*v66 + (*v20 & 0x46B39928));
  v94 = *(v91 - 0x78D7EBA254FE1F37);
  v95 = v91 + 45648437;
  LODWORD(v91) = 1645 * (BYTE1(LODWORD(STACK[0x390])) ^ 0x63) + 2113825;
  v96 = v91 - 2696 * (((12744711 * v91) >> 32) >> 3);
  v97 = (v96 ^ 0xFF7A77BDB5EDBF7DLL) + v19 + ((2 * v96) & 0x1EFA);
  v98 = (((110 * v76) ^ v44 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v76 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v76 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v95) ^ v94 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v95 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v95 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v97) = ((*(v97 - 0xA5AA4600DA468E9) ^ (110 * (v97 - 125)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v97 + 1242710147 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v97 + 1242710147 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xD32E87) & (v98 ^ 0xDB7FFF) | v98 & 0x2CD100) << 8;
  *(*v46 + 104) = ((v81 ^ (110 * v88) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v88 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v93 + v88 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x38409AC8) & (v97 ^ 0xEFF93EFF) | v97 & 0xC7BF6500) ^ 0xFB6EDB8E;
  LODWORD(v97) = 1645 * (HIBYTE(LODWORD(STACK[0x384])) ^ 0xD4) + 2113825;
  v99 = v97 - 2696 * (((12744711 * v97) >> 32) >> 3);
  LODWORD(v88) = 1645 * (LODWORD(STACK[0x384]) ^ 0xF7) + 2113825;
  v100 = v88 - 2696 * (((12744711 * v88) >> 32) >> 3);
  LODWORD(v88) = 1645 * (BYTE2(LODWORD(STACK[0x384])) ^ 0x71) + 2113825;
  v101 = v88 - 2696 * (((12744711 * v88) >> 32) >> 3);
  v102 = (v101 ^ 0xFF7C7DE6FFF3DFDFLL) + v19 + ((2 * v101) & 0x1FBE);
  v103 = (v99 ^ 0xC7EFFF50FDFF1B76) + v19 + ((2 * v99) & 0x16EC);
  LODWORD(v85) = v103 + 33612938;
  v104 = *(v103 + 0x2D2FD40CAA4A3B1ELL);
  LODWORD(v101) = *(*v66 + (*v20 & 0x46B39928));
  v105 = (v100 ^ 0x737F7FF637FDFFFFLL) + 2 * v100 + v19;
  LODWORD(v100) = *(v105 - 0x7E5FAC988FB4A96BLL);
  v106 = v105 - 939393023;
  LODWORD(v105) = 1645 * (BYTE1(LODWORD(STACK[0x384])) ^ 0xBD) + 2113825;
  v107 = v105 - 2696 * (((12744711 * v105) >> 32) >> 3);
  LODWORD(v102) = (((110 * v85) ^ v104 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v101 + v85 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v101 + v85 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v102 + 33)) ^ *(v102 - 0xA5CAA8957AA894BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v101 + v102 + 794657 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v101 + v102 + 794657 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v108 = (v107 ^ 0xAEF5F4FFFE7F77B7) + v19 + ((2 * v107) & 0xF6E);
  LODWORD(v108) = (*(v108 + 0x4629DE5DA9C9DEDDLL) ^ (110 * (v108 + 73)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v101 + v108 + 25200713 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x94112D ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (((v101 + v108 + 25200713 + 1186175272) - 0x1B1BDB49C10FCEC0 * (qword_190530 ^ 0x71B0588CF1E76555) - 0x1B1BDB49C10FCEC0) & (qword_190530 ^ 0x71B0588CF1E76555)))) & (v102 ^ 0xDDD3FF) | v102 & 0x6BEE00;
  *(*v46 + 40) = ((v100 ^ (110 * v106) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v101 + v106 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v101 + v106 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xBB3D7403) & ((v108 << 8) ^ 0x6BAC95FF) | (v108 << 8) & 0x44C28B00) ^ 0xBF3D7F45;
  LODWORD(v108) = 1645 * (BYTE2(LODWORD(STACK[0x350])) ^ 5) + 2113825;
  v109 = v108 - 2696 * (((12744711 * v108) >> 32) >> 3);
  LODWORD(v101) = 1645 * (BYTE1(LODWORD(STACK[0x350])) ^ 0xA9) + 2113825;
  v110 = v101 - 2696 * (((12744711 * v101) >> 32) >> 3);
  v111 = (v110 ^ 0x5FFB9FBBA6F5DBEBLL) + v19 + ((2 * v110) & 0x17D6);
  LODWORD(v102) = 1645 * (HIBYTE(LODWORD(STACK[0x350])) ^ 0x7A) + 2113825;
  v112 = v102 - 2696 * (((12744711 * v102) >> 32) >> 3);
  v113 = (v112 ^ 0x7DFFFF397FDFFE53) + v19 + ((2 * v112) & 0x1CA6);
  LODWORD(v44) = v113 - 2145386067;
  v114 = *(v113 + 0x771FD42428695841);
  v115 = 1645 * (LODWORD(STACK[0x350]) ^ 0x5A) + 2113825;
  v116 = v115 - 2696 * (((12744711 * v115) >> 32) >> 3);
  v117 = (v109 ^ 0xF7BDEBFFB7AFF76DLL) + v19 + ((2 * v109) & 0xEDA);
  LODWORD(v85) = v117 + 1213204627;
  v118 = (v116 ^ 0xFF7BBE5FFF9D377) + v19 + ((2 * v116) & 0x6EE);
  LODWORD(v113) = *(*v66 + (*v20 & 0x46B39928));
  LODWORD(v117) = (((110 * v44) ^ v114 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v44 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v44 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v85) ^ *(v117 - 0x29E18A20F66A0D9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v85 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v85 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v119 = (v117 ^ 0xFFDBFF) & (*(v111 - 0x6ADBCC5DFEAC8557) ^ (110 * (v111 + 21)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v111 + 1493836821 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v111 + 1493836821 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xE353AB) | v117 & 0x1CAC00;
  *(*v46 + 156) = (((v119 << 8) ^ 0x88010FF) & (*(v118 - 0x1AD7E88857B07CE3) ^ (110 * (v118 - 119)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v118 + 404617 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v113 + v118 + 404617 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xABD05086) | (v119 << 8) & 0x542FAF00) ^ 0xEBD3FDC0;
  LODWORD(v110) = 1645 * (HIBYTE(LODWORD(STACK[0x34C])) ^ 0x45) + 2113825;
  v120 = v110 - 2696 * (((12744711 * v110) >> 32) >> 3);
  LODWORD(v111) = 1645 * (LODWORD(STACK[0x34C]) ^ 0x94) + 2113825;
  v121 = v111 - 2696 * (((12744711 * v111) >> 32) >> 3);
  v122 = 1645 * (BYTE1(LODWORD(STACK[0x34C])) ^ 0x62) + 2113825;
  v123 = v122 - 2696 * (((12744711 * v122) >> 32) >> 3);
  v124 = (v123 ^ 0x6F7FEDE1FFEB39F9) + v19 + ((2 * v123) & 0x13F2);
  v125 = (v120 ^ 0x7EFBFCFB6D7F95D3) + v19 + ((2 * v120) & 0xBA6);
  LODWORD(v68) = *(v125 + 0x7623D6623AC9C0C1);
  LODWORD(v113) = v125 - 1837077971;
  LODWORD(v125) = 1645 * (BYTE2(LODWORD(STACK[0x34C])) ^ 0xA3) + 2113825;
  v126 = v125 - 2696 * (((12744711 * v125) >> 32) >> 3);
  v127 = (v121 ^ 0x7BF76FFAF6DEF579) + v19 + ((2 * v121) & 0xAF2);
  v128 = (v126 ^ 0x7F7BF5F17FEDFFBDLL) + v19 + ((2 * v126) & 0x1F7A);
  LODWORD(v44) = v128 - 2146303933;
  v129 = *v20;
  v130 = *v66;
  v131 = STACK[0x540];
  LODWORD(v121) = *(v130 + (v129 & STACK[0x540])) + STACK[0x3F8];
  LODWORD(v129) = *(v130 + (v129 & 0x46B39928));
  LODWORD(v128) = (((110 * v113) ^ v68 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v129 + v113 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((qword_190530 ^ 0xF1E76555) & (v129 + v113 + v24))) ^ 0x46) << 16) | (((110 * v44) ^ *(v128 + 0x75A3DD6C285B56D7) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v129 + v44 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v129 + v44 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v124) = (*(v124 - 0x7A601A8457A1E365) ^ (110 * (v124 + 7)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v129 + v124 + 1361415 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v129 + v124 + 1361415 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xCA758C) & ~v128 | v128 & 0x358A00;
  v132 = STACK[0x52C];
  LODWORD(v128) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v121 + LODWORD(STACK[0x52C])) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v121) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v121 + 1527793161) & (qword_190530 ^ 0xF1E76555)));
  *(*v46 + 68) = (*(v127 + 0x79286362B16A611BLL) ^ (110 * (v127 - 121)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v129 + v127 + 153160327 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v129 + v127 + 153160327 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xFFFFFFB9) & ((v124 << 8) ^ 0x94ADBDFF) ^ 0x5ED877FF;
  LODWORD(v127) = LODWORD(STACK[0x400]) ^ v128 ^ v121;
  LODWORD(v125) = 1645 * (LODWORD(STACK[0x370]) ^ 0xEA) + 2113825;
  v133 = v125 - 2696 * (((12744711 * v125) >> 32) >> 3);
  LODWORD(v125) = 1645 * (BYTE2(LODWORD(STACK[0x370])) ^ 0x58) + 2113825;
  v134 = v125 - 2696 * (((12744711 * v125) >> 32) >> 3);
  v135 = (v134 ^ 0x2B7ED9F6FF7FE7F7) + v19 + ((2 * v134) & 0xFEE);
  LODWORD(v121) = 1645 * (BYTE1(LODWORD(STACK[0x370])) ^ 0xE4) + 2113825;
  v136 = v121 - 2696 * (((12744711 * v121) >> 32) >> 3);
  LODWORD(v128) = 1645 * (HIBYTE(LODWORD(STACK[0x370])) ^ 0x57) + 2113825;
  v137 = v128 - 2696 * (((12744711 * v128) >> 32) >> 3);
  v138 = (v136 ^ 0x3FDEFFBFBBFB9B6BLL) + v19 + ((2 * v136) & 0x16D6);
  v139 = (v137 ^ 0x5FA5BDF7FFFC57EELL) + v19 + ((2 * v137) & 0xFDC);
  v140 = v92;
  LODWORD(v44) = *(*v92 + (*v20 & 0x46B39928));
  v141 = (v133 ^ 0xF7FAAFDFAF527CCFLL) + v19 + ((2 * v133) & 0x199E);
  LODWORD(v139) = (((110 * (v139 + 18)) ^ *(v139 - 0x6A85EA9A57B3015ALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v139 + 239634 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v139 + 239634 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v135 + 9)) ^ *(v135 - 0x365F069957369163) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v135 + 8394761 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v135 + 8394761 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v136) = *(v141 - 0x2DADC820709263BLL) ^ (110 * (v141 + 49)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v141 + 1353548593 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v141 + 1353548593 + v24) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v139) = ((*(v138 - 0x4ABF2C6213B244D7) ^ (110 * (v138 - 107)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v138 + 1141138581 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v44 + v138 + 1141138581 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xB0A06C) & (v139 ^ 0xF7F2FF) | v139 & 0x4F5F00) << 8;
  HIDWORD(v142) = v136 ^ 2;
  LODWORD(v142) = ((v139 ^ 0x70F50FC) & (v136 ^ 0x7AF5884) | v139 & 0xF850A700) ^ 0xB7AF7AC0;
  LODWORD(v139) = v142 >> 2;
  HIDWORD(v142) = v139;
  LODWORD(v142) = v139;
  LODWORD(v136) = 3883008 * (((v127 ^ 0xD0E89047) + 431114915) ^ ((v127 ^ 0x6437AA8D) - 1385336727) ^ ((v127 ^ 0x9E3851E0) + 1466075910)) - 1348955173;
  v143 = v46;
  *(*v46 + 108) = ((v142 >> 30) - ((2 * (v142 >> 30)) & 0xFCB99D98) - 27472180) ^ 0xFE5CCECC;
  LODWORD(v139) = ((v127 ^ 0x1DB89359) + 1616017656) ^ ((v127 ^ 0xCD2F3B7) + 288888858) ^ ((v127 ^ 0x1B8D0BC4) + 107470955);
  v144 = *v20;
  LODWORD(v138) = 5799784 * v139 + 589911510;
  LODWORD(v139) = *(*v140 + (v144 & v131)) + STACK[0x3F0];
  LODWORD(v139) = LODWORD(STACK[0x3E8]) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v139 + v132) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v139 + 1527793161) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v68) = 997952 * (((v139 ^ 0x25BFFA11) - 267363430) ^ ((v139 ^ 0x6A77908B) - 1076350716) ^ ((v139 ^ 0x652F01B0) - 1333747655)) + 1005711571;
  LODWORD(v139) = (v136 ^ 0xC4FB38C6) & (2 * (v136 & 0xE9034000)) ^ v136 & 0xE9034000;
  LODWORD(v141) = (2 * (v136 ^ 0x6FFB8C6)) & 0xEFFC8002 ^ 0x20040001 ^ ((2 * (v136 ^ 0x6FFB8C6)) ^ 0xDFF9A904) & (v136 ^ 0x6FFB8C6);
  LODWORD(v139) = (4 * v139) & 0xFFFCFFFF ^ v139 ^ ((4 * v139) | 0xC) & v141;
  LODWORD(v141) = (4 * v141) & 0xEFFCD4E0 ^ 0x400C8463 ^ ((4 * v141) ^ 0xBFF3538C) & v141;
  LODWORD(v139) = (16 * v139) & 0xEFFCD4E0 ^ v139 ^ ((16 * v139) ^ 0x30) & v141;
  LODWORD(v141) = (16 * v141) & 0xEFFCD4E0 ^ 0x3090C3 ^ ((16 * v141) ^ 0xFFCD4E30) & v141;
  LODWORD(v139) = v139 ^ 0xEFFCD4C0 ^ (v139 << 8) & 0xEFFCD400 ^ ((v139 << 8) ^ 0x2300) & v141;
  LODWORD(v136) = v136 ^ (2 * ((v139 << 16) & 0x6FFC0000 ^ v139 ^ ((v139 << 16) ^ 0x54E30000) & ((v141 << 8) & 0x6FFC0000 ^ 0x3280000 ^ ((v141 << 8) ^ 0x7CD40000) & v141)));
  LODWORD(v139) = ((v138 ^ 0x44A86A3E) - 632810720) ^ v138 ^ ((v138 ^ 0x6646552F) - 123327473) ^ ((v138 ^ 0x40A4434) + 48905494) ^ ((v138 ^ 0x7FBFDFB) + 18580699);
  LODWORD(v141) = 1645 * (HIBYTE(LODWORD(STACK[0x398])) ^ 0xF8) + 2113825;
  v145 = v141 - 2696 * (((12744711 * v141) >> 32) >> 3);
  LODWORD(v138) = 1645 * (BYTE1(LODWORD(STACK[0x398])) ^ 0xBA) + 2113825;
  v146 = v138 - 2696 * (((12744711 * v138) >> 32) >> 3);
  v147 = (v146 ^ 0xFF73FF7F3FFEED33) + v19 + ((2 * v146) & 0x1A66);
  v148 = (v145 ^ 0xF9F06B9B6BD7C7ABLL) + v19 + ((2 * v145) & 0xF56);
  LODWORD(v139) = 1645 * ((v139 >> 19) ^ 0x23) + 2113825;
  v149 = v139 - 2696 * (((12744711 * v139) >> 32) >> 3);
  LODWORD(v144) = *(*v140 + (v144 & 0x46B39928));
  v150 = (v149 ^ 0xB5DF1F75FDC87BF6) + v19 + ((2 * v149) & 0x17EC);
  LODWORD(v124) = (((110 * (v148 - 1809303467)) ^ *(v148 - 0x4D0983DC38E7117) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v148 - 1809303467 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v148 - 1809303467 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v150 + 10)) ^ *(v150 + 0x3F40B3E7AA80DA9ELL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v150 + 37192714 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v150 + 37192714 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  HIDWORD(v142) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v147 - 1073671475 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *(v147 - 0xA542C2197B5969FLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v147 - 1073671475 + v24) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v142) = (HIDWORD(v142) ^ (110 * (v147 - 1073671475)) ^ 0x46) << 24;
  LODWORD(v150) = v142 >> 25;
  LODWORD(v136) = 1645 * ((v136 >> 14) ^ 0xEB) + 2113825;
  v151 = v136 - 2696 * (((12744711 * v136) >> 32) >> 3);
  HIDWORD(v142) = v150;
  LODWORD(v142) = ((v150 - ((2 * v150) & 0x90) - 56) ^ 0xFFFFFFCF) << 24;
  v152 = (v151 ^ 0xBEFF7A4DFF6FF57FLL) + v19 + ((2 * v151) & 0xAFE);
  LODWORD(v150) = *(v152 + 0x3620590FA8D96115) ^ (110 * (v152 - 127)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v152 + 9439873 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v144 + v152 + 9439873 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x62086A58;
  LODWORD(v144) = (v124 & 0xFFFFFF00 | (((v142 >> 27) >> 4) | (16 * (v142 >> 27)))) << 8;
  *(*v46 + 192) = (v150 & ~v144 | v144 & 0x9DF79500) ^ 0x62086A1E;
  LODWORD(v150) = (2 * (v68 & 0x94657841)) & 0x801082 ^ ((v68 & 0x94657841) + 8388746) ^ (2 * (v68 & 0x94657841)) & (v68 ^ 0x85E160C7);
  LODWORD(v124) = (2 * (v68 ^ 0x85E160C7)) & 0x11841880 ^ 0x10840882 ^ ((2 * (v68 ^ 0x85E160C7)) ^ 0x23083154) & (v68 ^ 0x85E160C7);
  LODWORD(v150) = ((4 * v150) ^ 0x2000228) & v124 ^ v150 ^ ((4 * v150) & 0x11840028 | 0x80);
  LODWORD(v124) = (4 * v124) & 0x118418A8 ^ 0x11841802 ^ ((4 * v124) ^ 0x461062A8) & v124;
  LODWORD(v150) = v150 ^ (16 * v150) & 0x118418A0 ^ ((16 * v150) ^ 0x8000220) & v124 ^ 0x110418A8;
  LODWORD(v124) = (16 * v124) & 0x118418A0 ^ 0x184100A ^ ((16 * v124) ^ 0x18418AA0) & v124;
  LODWORD(v150) = (v150 << 8) & 0x11841800 ^ v150 ^ ((v150 << 8) ^ 0x8418AA00) & v124;
  LODWORD(v144) = 1645 * (BYTE2(LODWORD(STACK[0x3A8])) ^ 0xA2) + 2113825;
  v153 = v144 - 5392 * (((12744711 * v144) >> 32) >> 4);
  LODWORD(v144) = 1645 * (LODWORD(STACK[0x3A8]) ^ 0x2D) + 2113825;
  v154 = v144 - 2696 * (((12744711 * v144) >> 32) >> 3);
  LODWORD(v150) = 1645 * ((((v68 ^ (2 * ((v150 << 16) & 0x40000 ^ v150 ^ ((v150 << 16) ^ 0xA0000) & ((v124 << 8) & 0x11840000 ^ ((v124 << 8) ^ 0x4180000) & v124 ^ 0x40000)))) & 0x3FC000 ^ 0x2D4000) + 21053440) >> 14);
  v155 = (v150 - 2696 * ((1593089 * v150) >> 32));
  LODWORD(v150) = 1645 * (HIBYTE(LODWORD(STACK[0x3A8])) ^ 0xA) + 2113825;
  v156 = v150 - 2696 * (((12744711 * v150) >> 32) >> 3);
  v157 = (v156 ^ 0x797D5FDDBF9D66FFLL) + v19 + ((2 * v156) & 0xDFE);
  v158 = v157 + 1080203521;
  v159 = *(v157 + 0x7BA2737FE8ABEF95);
  v164 = (v154 ^ 0xFFB63BFF5FE6A75FLL) + v19 + ((2 * v154) & 0xEBE);
  v160 = v20;
  v161 = *(*v140 + (*v20 & 0x46B39928));
  v162 = *(v164 - 0xA9668A1B79D50CBLL);
  v163 = v164 - 1608951647;
  LODWORD(v164) = v153 - 2696;
  if (v153 >= 0xA88)
  {
    v164 = v164;
  }

  else
  {
    v164 = v153;
  }

  v165 = (v164 ^ 0xF6BDDFEF775EFF45) + v19 + ((2 * v164) & 0xEEBDFE8A);
  v166 = v165 - 2002714437;
  v167 = *(v165 - 0x19E0C91CF15A8B1);
  v168 = (v155 ^ 0x7FBFFF5FFF3FFFAFLL) + v19 + ((2 * v155) & 0x1F5E);
  v169 = (110 * v158) ^ v159;
  v170 = v161 + v158;
  v171 = qword_190530 ^ 0xF1E76555;
  v172 = ((v169 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v170 + 1186175272) & v171)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v170 + v24) & v171)) ^ 0x46) << 16) | (((110 * v166) ^ v167 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v161 + v166 + 1186175272) & v171)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v161 + v166 + v24) & v171)) ^ 0x46) << 8);
  v173 = (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v168 + 12582993 + v161 + 1186175272) & v171)) ^ *(v168 + 0x755FD3FDA90956E5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v168 + 12582993 + v161 + v24) & v171)) ^ (110 * (v168 + 81)) ^ 0xB52427) & (v172 ^ 0xF7ECFF);
  *(*v46 + 392) = ((((v173 | v172 & 0x4ADB00) << 8) ^ 0x484204FF) & (v162 ^ (110 * v163) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v161 + v163 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v161 + v163 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x794224B7) | ((v173 | v172 & 0x4ADB00) << 8) & 0x86BDDB00) ^ 0xFD6665F1;
  v174 = 1645 * HIBYTE(LODWORD(STACK[0x43C])) + 2113825 - 2696 * (((12744711 * (1645 * HIBYTE(LODWORD(STACK[0x43C])) + 2113825)) >> 32) >> 3);
  LODWORD(v168) = 1645 * ((BYTE2(LODWORD(STACK[0x43C])) ^ 0x505) + ((LODWORD(STACK[0x43C]) >> 15) & 0xA));
  v175 = (v168 - 2696 * ((1593089 * v168) >> 32));
  v176 = 1645 * LODWORD(STACK[0x43C]) + 2113825;
  v177 = v176 - 2696 * (((12744711 * v176) >> 32) >> 3);
  v178 = (v174 ^ 0xBEFEFEFFFFE9FAFFLL) + v19 + ((2 * v174) & 0x15FE);
  v179 = (v175 ^ 0xF33D64BFD9FDAEEBLL) + v19 + ((2 * v175) & 0x1DD6);
  v180 = v179 + 637686037;
  v181 = *(v179 + 0x1E26E9DCE4BA7A9);
  v182 = v140;
  LODWORD(v179) = *(*v140 + (*v20 & 0x46B39928));
  v183 = (v177 ^ 0xBBBDB69FDEFF3FBFLL) + v19 + ((2 * v177) & 0x1F7E);
  LODWORD(v177) = v183 + 553697345;
  v184 = *(v183 + 0x39621CBDC94A16D5);
  LODWORD(v183) = 1645 * BYTE1(LODWORD(STACK[0x43C])) + 2113825;
  v185 = v183 - 2696 * (((12744711 * v183) >> 32) >> 3);
  v186 = (v185 ^ 0xD34DFBFC6D5F6DDFLL) + v19 + ((2 * v185) & 0x1BBE);
  v187 = qword_190530 ^ 0xF1E76555;
  v188 = (((110 * (v178 + 1)) ^ *(v178 + 0x3620D45DA85F5B95) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v178 + 1443073 + 1186175272) & v187)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v178 + 1443073 + v24) & v187)) ^ 0x46) << 16) | (((110 * v180) ^ v181 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v180 + 1186175272) & v187)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v180 + v24) & v187)) ^ 0x46) << 8);
  LODWORD(v186) = (*(v186 + 0x21D1D7613AE9E8B5) ^ (110 * (v186 + 33)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v186 - 1834970591 + 1186175272) & v187)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v186 - 1834970591 + v24) & v187)) ^ 0xF94C70) & (v188 ^ 0xFDDFFF) | v188 & 0x6B300;
  *(*v46 + 388) = ((v184 ^ (110 * v177) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v177 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v179 + v177 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xB4DBCE11) & ((v186 << 8) ^ 0x4B3D9FF) | (v186 << 8) & 0x4B243100) ^ 0xFDDFFE57;
  LODWORD(v186) = 1645 * (BYTE1(LODWORD(STACK[0x438])) ^ 0x2A) + 2113825;
  v189 = v186 - 2696 * (((12744711 * v186) >> 32) >> 3);
  LODWORD(v179) = 1645 * (((2 * ((HIBYTE(LODWORD(STACK[0x438])) ^ 0x7E) - 662580092)) & 0x2102) + (((HIBYTE(LODWORD(STACK[0x438])) ^ 0x7E) - 662580092) ^ 0x277E3081));
  v190 = ((v179 % 0xA88) ^ 0x3B6DD7FAF2BFDFFFLL) + 2 * (v179 % 0xA88) + v19;
  LODWORD(v177) = v190 + 222306305;
  v191 = *(v190 - 0x464E049D4A76896BLL);
  LODWORD(v190) = 1645 * ((BYTE2(LODWORD(STACK[0x438])) ^ 0x528) + ((2 * (HIWORD(LODWORD(STACK[0x438])) ^ 0x7E2D)) & 0xA));
  v192 = (v190 - 2696 * ((1593089 * v190) >> 32));
  v193 = (v192 ^ 0xF77FBBB97EB7F6FFLL) + v19 + ((2 * v192) & 0xDFE);
  LODWORD(v192) = *(*v140 + (*v20 & 0x46B39928));
  v194 = *(v193 - 0x25FE85BD66EA06BLL);
  v195 = v193 - 2125985535;
  v196 = (v189 ^ 0x751E7FFFFDE7DFBELL) + v19 + ((2 * v189) & 0x1F7C);
  LODWORD(v189) = v196 + 35135554;
  v197 = *(v196 - 0x7FFEACA2559E892ALL);
  LODWORD(v196) = 1645 * (LODWORD(STACK[0x438]) ^ 0x92) + 2113825;
  v198 = v196 - 2696 * (((12744711 * v196) >> 32) >> 3);
  v199 = (v198 ^ 0x7BBFED777E6DDFEBLL) + v19 + ((2 * v198) & 0x1FD6);
  v200 = v199 - 2121129963;
  v201 = *(v199 + 0x795FE5E629DB76A9);
  LODWORD(v199) = (110 * v177) ^ v191;
  v202 = v192 + v177;
  LODWORD(v177) = qword_190530 ^ 0xF1E76555;
  LODWORD(v199) = ((v199 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v202 + 1186175272) & v177)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v202 + v24) & v177)) ^ 0x46) << 16) | (((110 * v195) ^ v194 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v192 + v195 + 1186175272) & v177)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v192 + v195 + v24) & v177)) ^ 0x46) << 8);
  v203 = (v197 ^ (110 * v189) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v192 + v189 + 1186175272) & v177)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v192 + v189 + v24) & v177)) ^ 0x19A2F4) & (v199 ^ 0xB9FAFF);
  *(*v46 + 196) = ((v201 ^ (110 * v200) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v192 + v200 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v192 + v200 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x2E913453) & (((v203 | v199 & 0xE65D00) << 8) ^ 0xF6330DFF) | ((v203 | v199 & 0xE65D00) << 8) & 0xD16ECB00) ^ 0x3FB3B615;
  LODWORD(v192) = 1645 * (BYTE2(LODWORD(STACK[0x388])) ^ 0x68) + 2113825;
  v204 = v192 - 2696 * (((12744711 * v192) >> 32) >> 3);
  LODWORD(v192) = 1645 * (HIBYTE(LODWORD(STACK[0x388])) ^ 0xC6) + 2113825;
  v205 = v192 - 2696 * (((12744711 * v192) >> 32) >> 3);
  LODWORD(v199) = 1645 * (BYTE1(LODWORD(STACK[0x388])) ^ 0xFE) + 2113825;
  v206 = v199 - 2696 * (((12744711 * v199) >> 32) >> 3);
  v207 = (v205 ^ 0x58DEECFEBD7FF9DBLL) + v19 + ((2 * v205) & 0x13B6);
  v208 = v207 + 1115686437;
  LODWORD(v199) = *(v207 - 0x63BF19A11536A347);
  LODWORD(v207) = 1645 * (LODWORD(STACK[0x388]) ^ 0x60) + 2113825;
  v209 = v207 - 2696 * (((12744711 * v207) >> 32) >> 3);
  LODWORD(v207) = *(*v140 + (*v20 & 0x46B39928));
  v210 = (v204 ^ 0x3F5CE7F5EFFBFE7FLL) + v19 + ((2 * v204) & 0x1CFE);
  v211 = v210 + 268697985;
  LODWORD(v199) = (110 * v208) ^ v199;
  LODWORD(v189) = v207 + v208;
  v212 = qword_190530 ^ 0xF1E76555;
  v213 = ((v199 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v189 + 1186175272) & v212)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v189 + v24) & v212)) ^ 0x46) << 16) | (((110 * v211) ^ *(v210 - 0x4A3D149847B2A7EBLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v207 + v211 + 1186175272) & v212)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v207 + v211 + v24) & v212)) ^ 0x46) << 8);
  v214 = (v206 ^ 0xF6EEBFFFB9F6E6BCLL) + v19 + ((2 * v206) & 0xD78);
  v215 = (v209 ^ 0xCFDFA7F9DF5DFFCELL) + v19 + ((2 * v209) & 0x1F9C);
  LODWORD(v214) = (*(v214 - 0x1CEECA211AD9028) ^ (110 * (v214 + 68)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v207 + v214 + 1175001412 + 1186175272) & v212)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v207 + v214 + 1175001412 + v24) & v212)) ^ 0xAE8171) & (v213 ^ 0xBFEBFF) | v213 & 0x517E00;
  *(*v46 + 412) = ((*(v215 + 0x25402B63C8EB56C6) ^ (110 * (v215 + 50)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v207 + v215 + 547487794 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v207 + v215 + 547487794 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xD96645D8) & ((v214 << 8) ^ 0x75EEC8FF) | (v214 << 8) & 0x2699BA00) ^ 0xFFE7779E;
  LODWORD(v206) = 1645 * (BYTE2(LODWORD(STACK[0x378])) ^ 0xA4) + 2113825;
  v216 = v206 - 2696 * (((12744711 * v206) >> 32) >> 3);
  LODWORD(v215) = 1645 * (HIBYTE(LODWORD(STACK[0x378])) ^ 0x4F) + 2113825;
  v217 = v215 - 2696 * (((12744711 * v215) >> 32) >> 3);
  v218 = (v216 ^ 0xBFA9FFEF997EE9FFLL) + v19 + ((2 * v216) & 0x13FE);
  v219 = v218 + 1719735809;
  v220 = *(v218 + 0x3575D36E0ECA6C95);
  LODWORD(v214) = 1645 * (LODWORD(STACK[0x378]) ^ 0x47) + 2111129;
  v221 = v214 - 2696 * (((12744711 * v214) >> 32) >> 3);
  v222 = (v217 ^ 0xEFBF3EF373C77F0FLL) + v19 + ((2 * v217) & 0x1E1E);
  v223 = v222 - 1942454031;
  v224 = *(v222 + 0x560946A3481D785);
  LODWORD(v222) = *(*v140 + (*v20 & 0x46B39928));
  v225 = (v221 ^ 0x2E7AFAF8B5BDFDE7) + v19 + ((2 * v221) & 0x1BCE);
  LODWORD(v217) = v225 + 1245839897;
  v226 = *(v225 - 0x395B279B0D74A753);
  LODWORD(v225) = 1645 * (BYTE1(LODWORD(STACK[0x378])) ^ 0x9A) + 2113825;
  v227 = v225 - 2696 * (((12744711 * v225) >> 32) >> 3);
  LODWORD(v210) = qword_190530 ^ 0xF1E76555;
  v228 = (((110 * v223) ^ v224 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v223 + 1186175272) & v210)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v223 + v24) & v210)) ^ 0x46) << 16) | (((110 * v219) ^ v220 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v219 + 1186175272) & v210)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v219 + v24) & v210)) ^ 0x46) << 8);
  v229 = (v227 ^ 0x7F5FFFD7D41FF29ELL) + v19 + ((2 * v227) & 0x53C);
  LODWORD(v229) = (*(v229 + 0x75BFD385D42963F6) ^ (110 * (v229 + 98)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v229 + 736103778 + 1186175272) & v210)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v229 + 736103778 + v24) & v210)) ^ 0x6EC60B) & (v228 ^ 0xFEF6FF);
  *(*v46 + 8) = ((v226 ^ (110 * v217) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v217 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v217 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xEC25D480) & (((v229 | v228 & 0x913900) << 8) ^ 0x81E392FF) | ((v229 | v228 & 0x913900) << 8) & 0x13DA2B00) ^ 0xEEE7DDC6;
  LODWORD(v229) = 1645 * (HIBYTE(LODWORD(STACK[0x430])) ^ 0x71) + 2113825;
  v230 = v229 - 2696 * (((12744711 * v229) >> 32) >> 3);
  LODWORD(v222) = 1645 * (BYTE1(LODWORD(STACK[0x430])) ^ 0x60) + 2113825;
  v231 = v222 - 2696 * (((12744711 * v222) >> 32) >> 3);
  v232 = (v230 ^ 0x5D3DFCB7FDFBEAFFLL) + v19 + ((2 * v230) & 0x15FE);
  LODWORD(v217) = v232 + 33821953;
  LODWORD(v210) = *(v232 - 0x681E295A55B2946BLL);
  LODWORD(v232) = 1645 * (BYTE2(LODWORD(STACK[0x430])) ^ 0xDA) + 2113825;
  v233 = v232 - 2696 * (((12744711 * v232) >> 32) >> 3);
  v234 = (v233 ^ 0x67FFEFFB6FBFFFF7) + v19 + ((2 * v233) & 0x1FEE);
  LODWORD(v189) = v234 - 1874853879;
  LODWORD(v222) = *(*v140 + (*v20 & 0x46B39928));
  v235 = (v231 ^ 0xFEFED7FE) + ((2 * v231) & 0xFFC) + v19 + 16852994;
  LODWORD(v210) = (110 * v217) ^ v210;
  v236 = v222 + v217;
  LODWORD(v217) = qword_190530 ^ 0xF1E76555;
  LODWORD(v210) = ((v210 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v236 + 1186175272) & v217)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v236 + v24) & v217)) ^ 0x46) << 16) | (((110 * v189) ^ *(v234 - 0x72E01C9DC776A963) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v189 + 1186175272) & v217)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v189 + v24) & v217)) ^ 0x46) << 8);
  v237 = 1645 * (LODWORD(STACK[0x430]) ^ 0x30) + 2113825;
  v238 = v237 - 2696 * (((12744711 * v237) >> 32) >> 3);
  LODWORD(v234) = (*((v231 ^ 0x3FFDCFAEFEFED7FELL) + ((2 * v231) & 0xFFC) + v19 - 0x4ADDFC5156B5816ALL) ^ (110 * v235) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v235 + 1186175272) & v217)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v235 + v24) & v217)) ^ 0x506B91) & (v210 ^ 0x74EFFF) | v210 & 0xAF9400;
  v239 = (v238 ^ 0x5FEDBE7DFF5952F1) + v19 + ((2 * v238) & 0x5E2);
  *(*v46 + 100) = ((*(v239 - 0x6ACDEB20570FFC5DLL) ^ (110 * (v239 + 15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v239 + 10923279 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v222 + v239 + 10923279 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x8EBFC439) & ((v234 << 8) ^ 0xEE9418FF) | (v234 << 8) & 0x71403B00) ^ 0xDEFFD77F;
  LODWORD(v234) = 1645 * (LODWORD(STACK[0x40C]) ^ 0x25) + 2113825;
  v240 = v234 - 2696 * (((12744711 * v234) >> 32) >> 3);
  v241 = 1645 * ((((HIBYTE(LODWORD(STACK[0x40C])) ^ 0x3A) + 1285) ^ __ROR4__((((HIBYTE(LODWORD(STACK[0x40C])) ^ 0x3A) + 1285) << 18) | 0x6526387C, 18) | ((HIBYTE(LODWORD(STACK[0x40C])) ^ 0x3A) + 1285) & 0x6B6) ^ 0x8E1F1949) % 0xA88;
  v242 = (v240 ^ 0xF7FCF7FB5BDCE7CFLL) + v19 + ((2 * v240) & 0xF9E);
  LODWORD(v222) = v242 - 1541203919;
  LODWORD(v217) = *(v242 - 0x2DD249DB393913BLL);
  v243 = 1645 * (BYTE1(LODWORD(STACK[0x40C])) ^ 2) + 2113825;
  v244 = v243 - 2696 * (((12744711 * v243) >> 32) >> 3);
  v245 = (v241 ^ 0xF75DBFFFD97DBB9FLL) + v19 + ((2 * v241) & 0x173E);
  v246 = *(v245 - 0x23DECA23134650BLL);
  v247 = v245 + 646071393;
  v248 = (v244 ^ 0x17BFE6BF7FDFBDF1) + v19 + ((2 * v244) & 0x1BE2);
  LODWORD(v239) = v248 - 2145369585;
  LODWORD(v189) = *(v248 - 0x22A01361D796675DLL);
  LODWORD(v242) = 1645 * ((BYTE2(LODWORD(STACK[0x40C])) ^ 0x532) + ((2 * (HIWORD(LODWORD(STACK[0x40C])) ^ 0x3A37)) & 0xA));
  v249 = (v242 - 2696 * ((1593089 * v242) >> 32));
  LODWORD(v248) = *(*v140 + (*v20 & 0x46B39928));
  v250 = (v249 ^ 0xFD5BBB774D9FFBB4) + v19 + ((2 * v249) & 0x1768);
  LODWORD(v238) = (110 * v247) ^ v246;
  v251 = qword_190530 ^ 0xF1E76555;
  LODWORD(v250) = ((v238 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v247 + 1186175272) & v251)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v247 + v24) & v251)) ^ 0x46) << 16) | (((110 * (v250 + 76)) ^ *(v250 - 0x83BE819A556A520) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v250 - 1302330292 + 1186175272) & v251)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v250 - 1302330292 + v24) & v251)) ^ 0x46) << 8);
  LODWORD(v250) = ((v250 ^ 0xEBFFFF) & (v189 ^ (110 * v239) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v239 + 1186175272) & v251)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v239 + v24) & v251)) ^ 0xC1E7C2) | v250 & 0x3E1800) << 8;
  *(*v46 + 240) = ((v217 ^ (110 * v222) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v222 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v248 + v222 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xBB74BE3A) & (v250 ^ 0x3A113BFF) | v250 & 0x448B4100) ^ 0xFBF7BE7C;
  LODWORD(v217) = 1645 * (BYTE2(LODWORD(STACK[0x448])) ^ 0x6B) + 2113825;
  v252 = v217 - 2696 * (((12744711 * v217) >> 32) >> 3);
  LODWORD(v250) = 1645 * (LODWORD(STACK[0x448]) ^ 0x6F) + 2113825;
  v253 = v250 - 2696 * (((12744711 * v250) >> 32) >> 3);
  LODWORD(v217) = 1645 * (HIBYTE(LODWORD(STACK[0x448])) ^ 0x76) + 2113825;
  v254 = v217 - 2696 * (((12744711 * v217) >> 32) >> 3);
  LODWORD(v222) = 1645 * (BYTE1(LODWORD(STACK[0x448])) ^ 0x15) + 2113825;
  v255 = v222 - 2696 * (((12744711 * v222) >> 32) >> 3);
  v256 = (v253 ^ 0x3F6F7BBDFF177F3FLL) + v19 + ((2 * v253) & 0x1E7E);
  v257 = (v254 ^ 0x58FFF7FFAFB756BFLL) + v19 + ((2 * v254) & 0xD7E);
  v258 = v257 + 1346939201;
  v259 = *(v257 - 0x63E024A2076E002BLL);
  LODWORD(v254) = *(*v140 + (*v20 & 0x46B39928));
  v260 = (v255 ^ 0x377DFEFDFBEE7F20) + v19 + ((2 * v255) & 0x1E40);
  LODWORD(v255) = v260 + 68255968;
  LODWORD(v189) = *(v260 - 0x425E2BA053A5288CLL);
  v261 = (v252 ^ 0xFDDEFA7FEF6DDFBCLL) + v19 + ((2 * v252) & 0x1F78);
  LODWORD(v252) = qword_190530 ^ 0xF1E76555;
  LODWORD(v261) = (((110 * v258) ^ v259 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v258 + 1186175272) & v252)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v258 + v24) & v252)) ^ 0x46) << 16) | (((110 * (v261 + 68)) ^ *(v261 - 0x8BF272247248928) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v261 + 278011972 + 1186175272) & v252)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v261 + 278011972 + v24) & v252)) ^ 0x46) << 8);
  LODWORD(v261) = ((v189 ^ (110 * v255) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v255 + 1186175272) & v252)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v255 + v24) & v252)) ^ 0x21894B) & ~v261 | v261 & 0xDE7600) << 8;
  *(*v46 + 60) = ((*(v256 - 0x4A4FA86056CE28ABLL) ^ (110 * (v256 - 63)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v256 + 15237313 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v254 + v256 + 15237313 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x359C3FC4) & (v261 ^ 0xD63432FF) | v261 & 0xCA63C000) ^ 0x359D3F82;
  LODWORD(v261) = 1645 * (BYTE1(LODWORD(STACK[0x368])) ^ 0x23) + 2113825;
  v262 = v261 - 2696 * (((12744711 * v261) >> 32) >> 3);
  LODWORD(v256) = 1645 * (BYTE2(LODWORD(STACK[0x368])) ^ 0xF5) + 2111129;
  v263 = v256 - 2696 * (((12744711 * v256) >> 32) >> 3);
  LODWORD(v254) = 1645 * (HIBYTE(LODWORD(STACK[0x368])) ^ 0xA1) + 2113825;
  v264 = v254 - 2696 * (((12744711 * v254) >> 32) >> 3);
  v265 = (v262 ^ 0xD3FEFFB7FFD9FC77) + v19 + ((2 * v262) & 0x18EE);
  v266 = (v264 ^ 0x6DEFCA7E9FF5F9FFLL) + v19 + ((2 * v264) & 0x13FE);
  LODWORD(v189) = v266 + 1611269633;
  v267 = *(v266 - 0x78CFF720F7ACA36BLL);
  v268 = (v263 ^ 0xBFFFEF17F4CFFFBFLL) + v19 + ((2 * v263) & 0x1F7E);
  v269 = *(v268 + 0x351FE445B37956D5);
  v270 = v268 + 187695169;
  LODWORD(v268) = 1645 * (LODWORD(STACK[0x368]) ^ 0xD7) + 2113825;
  v271 = v268 - 2696 * (((12744711 * v268) >> 32) >> 3);
  LODWORD(v263) = *(*v140 + (*v20 & 0x46B39928));
  v272 = (v271 ^ 0x39FBEFF9F22F9FFDLL) + v19 + ((2 * v271) & 0x1FFA);
  LODWORD(v252) = v272 + 231759875;
  LODWORD(v264) = *(v272 - 0x44DC1C9C49E64969);
  LODWORD(v272) = (110 * v189) ^ v267;
  LODWORD(v244) = v263 + v189;
  LODWORD(v189) = qword_190530 ^ 0xF1E76555;
  LODWORD(v272) = ((v272 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v244 + 1186175272) & v189)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v244 + v24) & v189)) ^ 0x46) << 16) | (((110 * v270) ^ v269 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v263 + v270 + 1186175272) & v189)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v263 + v270 + v24) & v189)) ^ 0x46) << 8);
  LODWORD(v272) = (*(v265 + 0x2120D3A5A86F5A1DLL) ^ (110 * (v265 - 119)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v263 + v265 + 2491273 + 1186175272) & v189)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v263 + v265 + 2491273 + v24) & v189)) ^ 0xE59E18) & (v272 ^ 0xEFBFFF) | v272 & 0x1A6100;
  *(*v46 + 84) = ((v264 ^ (110 * v252) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v263 + v252 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v263 + v252 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x5516BCAE) & ((v272 << 8) ^ 0x18C1A0FF) | (v272 << 8) & 0xAAE94300) ^ 0xF59EFEE8;
  LODWORD(v272) = 1645 * (BYTE2(LODWORD(STACK[0x360])) ^ 0x33) + 2113825;
  v273 = v272 - 2696 * (((12744711 * v272) >> 32) >> 3);
  LODWORD(v263) = 1645 * (LODWORD(STACK[0x360]) ^ 6) + 2113825;
  v274 = v263 - 2696 * (((12744711 * v263) >> 32) >> 3);
  LODWORD(v265) = 1645 * (HIBYTE(LODWORD(STACK[0x360])) ^ 0x49) + 2113825;
  v275 = v265 - 2696 * (((12744711 * v265) >> 32) >> 3);
  LODWORD(v252) = 1645 * (BYTE1(LODWORD(STACK[0x360])) ^ 0xF3) + 2113825;
  v276 = v252 - 2696 * (((12744711 * v252) >> 32) >> 3);
  v277 = (v273 ^ 0x7776E6AD9FFFFFB3) + v19 + ((2 * v273) & 0x1F66);
  LODWORD(v252) = v277 + 1610612813;
  LODWORD(v189) = *(v277 + 0x7DA8ECB0084956E1);
  v278 = (v275 ^ 0xBDB5FCFECBFBDD9FLL) + v19 + ((2 * v275) & 0x1B3E);
  v279 = v278 + 872686177;
  v280 = *(v278 + 0x3769D65EDC4D78F5);
  v281 = (v276 ^ 0x17C65FDFBC9FF9EFLL) + v19 + ((2 * v276) & 0x13DE);
  LODWORD(v276) = v281 + 1130366481;
  v282 = *(v281 - 0x22A68C821456A35BLL);
  v283 = (v274 ^ 0xDFFE7F73FE3C7FABLL) + v19 + ((2 * v274) & 0x1F56);
  LODWORD(v274) = *(v283 + 0x152153E9AA0CD6E9);
  LODWORD(v275) = v283 + 29589589;
  v284 = *(*v140 + (*v20 & 0x46B39928));
  LODWORD(v283) = (110 * v279) ^ v280;
  LODWORD(v238) = v284 + v279;
  v285 = qword_190530 ^ 0xF1E76555;
  LODWORD(v283) = v283 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v238 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v238 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46;
  LODWORD(v283) = (v282 ^ (110 * v276) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v284 + v276 + 1186175272) & v285)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v284 + v276 + v24) & v285))) & 0xFFEFFFFF | (((v283 >> 4) & 1) << 20) | (v283 << 16) & 0xFFEFFFFF | (((110 * v252) ^ v189 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v284 + v252 + 1186175272) & v285)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v284 + v252 + v24) & v285)) ^ 0x46) << 8);
  *(*v46 + 28) = (((v283 << 8) ^ 0xBC5220FF) & (v274 ^ (110 * v275) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v284 + v275 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v284 + v275 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xBC526252) | (v283 << 8) & 0x43AD9D00) ^ 0xBC526614;
  LODWORD(v283) = 1645 * (BYTE1(LODWORD(STACK[0x440])) ^ 0xF8) + 2113825;
  v286 = v283 - 2696 * (((12744711 * v283) >> 32) >> 3);
  LODWORD(v275) = 1645 * (HIBYTE(LODWORD(STACK[0x440])) ^ 0x46) + 2113825;
  v287 = v275 - 2696 * (((12744711 * v275) >> 32) >> 3);
  v288 = (v287 ^ 0xEFBAFFFEDBF133FFLL) + 2 * (v287 & 0x3FF) + v19;
  v289 = v288 + 604949505;
  v290 = *(v288 + 0x564D35ECC582295);
  LODWORD(v288) = 1645 * (BYTE2(LODWORD(STACK[0x440])) ^ 0x3D) + 2113825;
  v291 = v288 - 5392 * (((12744711 * v288) >> 32) >> 4);
  v295 = (v286 ^ 0x6DF6FF52F9FFFF26) + v19 + ((2 * v286) & 0x1E4C);
  v292 = v295 + 100663514;
  v293 = *(v295 - 0x78D72BF551B6A892);
  v294 = *(*v140 + (*v20 & 0x46B39928));
  LODWORD(v295) = v291 - 2696;
  if (v291 >= 0xA88)
  {
    v295 = v295;
  }

  else
  {
    v295 = v291;
  }

  v296 = (v295 ^ 0xE7EBCF77F79EFF7BLL) + v19 + ((2 * v295) & 0x1EF3DFEF6);
  v297 = (110 * v289) ^ v290;
  v298 = v294 + v289;
  v299 = qword_190530 ^ 0xF1E76555;
  v300 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v296) = ((110 * (v296 - 123)) ^ *(v296 + 0xD3403E5B0AA5719) ^ *(v300 + ((v294 + v296 + 140574853 + 1186175272) & v299)) ^ *(v300 + ((v294 + v296 + 140574853 + v24) & v299)) ^ 0x46) << 8;
  HIDWORD(v301) = (v293 ^ (110 * v292) ^ *(v300 + ((v294 + v292 + 1186175272) & v299)) ^ *(v300 + ((v294 + v292 + v24) & v299)) ^ 0x134) & ~v296 ^ 0x172;
  LODWORD(v301) = v296 | ((v297 ^ *(v300 + ((v298 + 1186175272) & v299)) ^ *(v300 + ((v298 + v24) & v299)) ^ 0x46) << 16);
  v302 = 1645 * (LODWORD(STACK[0x440]) ^ 0x81) + 2113825 - 2696 * (((12744711 * (1645 * (LODWORD(STACK[0x440]) ^ 0x81u) + 2113825)) >> 32) >> 3);
  v303 = (v302 ^ 0x7DABBFF5FC7DBEEDLL) + v19 + ((2 * v302) & 0x1DDA);
  HIDWORD(v301) = v301 >> 9;
  LODWORD(v301) = HIDWORD(v301);
  *(*v46 + 44) = ((*(v303 + 0x77741367ABCB97A7) ^ (110 * (v303 + 19)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v294 + v303 + 58867987 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v294 + v303 + 58867987 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x6AA82A9F) & (((v301 >> 23) << 8) ^ 0x7BBE6EFF) | ((v301 >> 23) << 8) & 0x9557D500) ^ 0x6AA82AD9;
  LODWORD(v296) = 1645 * (BYTE2(LODWORD(STACK[0x468])) ^ 0x2F) + 2113825;
  v304 = v296 - 2696 * (((12744711 * v296) >> 32) >> 3);
  LODWORD(v296) = 1645 * (BYTE1(LODWORD(STACK[0x468])) ^ 0x34) + 2113825;
  v305 = v296 - 2696 * (((12744711 * v296) >> 32) >> 3);
  LODWORD(v303) = 1645 * (HIBYTE(LODWORD(STACK[0x468])) ^ 0x21) + 2113825;
  v306 = v303 - 2696 * (((12744711 * v303) >> 32) >> 3);
  v307 = (v306 ^ 0x5CFD5BFFFD76DFE9) + v19 + ((2 * v306) & 0x1FD2);
  LODWORD(v300) = v307 + 42541079;
  v308 = *(v307 - 0x67DD88A2552D8955);
  LODWORD(v307) = 1645 * (LODWORD(STACK[0x468]) ^ 0xF1) + 2113825;
  v309 = v307 - 2696 * (((12744711 * v307) >> 32) >> 3);
  v310 = (v305 ^ 0x73CFCFEBDBFACFDELL) + v19 + ((2 * v305) & 0x1FBC);
  LODWORD(v307) = *(*v140 + (*v20 & 0x46B39928));
  v311 = *(v310 - 0x7EAFFC8E33B1794ALL);
  LODWORD(v310) = v310 + 604319778;
  v312 = qword_190530 ^ 0xF1E76555;
  v313 = qword_191540 ^ 0xDDC772C6444EEA48;
  v314 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v307 + v310 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ v311;
  v315 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v307 + v310 + v24) & (qword_190530 ^ 0xF1E76555)));
  HIDWORD(v301) = v314 ^ (46 * v310) ^ v315 ^ 6;
  LODWORD(v301) = (v314 ^ (110 * v310) ^ v315 ^ 0x40) << 24;
  v316 = (v304 ^ 0x6BFFFCD37F7ED7DFLL) + v19 + ((2 * v304) & 0xFBE);
  LODWORD(v310) = (v301 >> 30) - ((2 * (v301 >> 30)) & 0x20) + 16;
  HIDWORD(v301) = v310 ^ 0x10;
  LODWORD(v301) = v310 << 24;
  v317 = (v309 ^ 0xD2EBD7E579F1DFFFLL) + 2 * v309 + v19;
  LODWORD(v300) = (((110 * v300) ^ v308 ^ *(v313 + ((v307 + v300 + 1186175272) & v312)) ^ *(v313 + ((v307 + v300 + v24) & v312)) ^ 0x46) << 16) | (((110 * (v316 + 33)) ^ *(v316 - 0x76E02975D735814BLL) ^ *(v313 + ((v307 + v316 - 2139019231 + 1186175272) & v312)) ^ *(v313 + ((v307 + v316 - 2139019231 + v24) & v312)) ^ 0x46) << 8) | (((v301 >> 30) >> 4) | (16 * (v301 >> 30)));
  *(*v46 + 48) = ((*(v317 + 0x2233FB782E577695) ^ (110 * (v317 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v307 + v317 - 2045894655 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v307 + v317 - 2045894655 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x1B70E158) & ((v300 << 8) ^ 0xBFF3FBFF) | (v300 << 8) & 0xE48F1E00) ^ 0x1B70E11E;
  LODWORD(v307) = 1645 * (BYTE2(LODWORD(STACK[0x4C4])) ^ 0x7B) + 2113825;
  v318 = v307 - 2696 * (((12744711 * v307) >> 32) >> 3);
  LODWORD(v307) = 1645 * (LODWORD(STACK[0x4C4]) ^ 0xAB) + 2113825;
  v319 = v307 - 2696 * (((12744711 * v307) >> 32) >> 3);
  v320 = 1645 * (HIBYTE(LODWORD(STACK[0x4C4])) ^ 0x16) + 2113825;
  v321 = v320 - 2696 * (((12744711 * v320) >> 32) >> 3);
  v322 = (v321 ^ 0xEFEBE77FDDBFFECFLL) + v19 + ((2 * v321) & 0x1D9E);
  v323 = v322 + 574619953;
  v324 = *(v322 + 0x533EBDDCA8957C5);
  LODWORD(v310) = 1645 * (BYTE1(LODWORD(STACK[0x4C4])) ^ 0x53) + 2113825;
  v325 = v310 - 2696 * (((12744711 * v310) >> 32) >> 3);
  v326 = (v325 ^ 0xDF735DFF6CFB8FF1) + v19 + ((2 * v325) & 0x1FE2);
  LODWORD(v313) = v326 - 1828425713;
  LODWORD(v300) = *(v326 + 0x15AC755E3B4DC6A3);
  LODWORD(v322) = *(*v140 + (*v20 & 0x46B39928));
  v327 = (v318 ^ 0xBED67FED64CE8DFBLL) + v19 + ((2 * v318) & 0x1BF6);
  v328 = (v319 ^ 0x7DDE799F7FF7FABBLL) + v19 + ((2 * v319) & 0x1576);
  LODWORD(v327) = (((110 * v323) ^ v324 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v323 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v323 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v327 + 5)) ^ *(v327 + 0x36495370437AC899) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v327 - 1691258363 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v327 - 1691258363 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v327) = (v327 ^ 0xCFFEFF) & (v300 ^ (110 * v313) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v313 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v313 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xCAD2FE) | v327 & 0x352D00;
  *(*v46 + 244) = ((*(v328 + 0x774159BE28515BD9) ^ (110 * (v328 + 69)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v328 - 2146958011 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v322 + v328 - 2146958011 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xC65A3346) & ((v327 << 8) ^ 0x248807FF) | (v327 << 8) & 0x39A5CC00) ^ 0xCEDABB00;
  LODWORD(v307) = 1645 * (HIBYTE(LODWORD(STACK[0x444])) ^ 0x18) + 2113825;
  v329 = v307 - 2696 * (((12744711 * v307) >> 32) >> 3);
  LODWORD(v327) = 1645 * (LODWORD(STACK[0x444]) ^ 0xEC) + 2113825;
  v330 = v327 - 2696 * (((12744711 * v327) >> 32) >> 3);
  v331 = (v330 ^ 0x7CF9FEFB9FBBFF7DLL) + v19 + ((2 * v330) & 0x1EFA);
  LODWORD(v307) = v331 + 1615069315;
  LODWORD(v322) = *(v331 + 0x7825D462088D5717);
  LODWORD(v331) = 1645 * (BYTE2(LODWORD(STACK[0x444])) ^ 0x16) + 2113825;
  v332 = (v329 ^ 0x7FF9DDBE3EFFD9FFLL) + v19 + ((2 * v329) & 0x13FE);
  LODWORD(v313) = *(*v140 + (*v20 & 0x46B39928));
  v333 = ((v331 % 0xA88) ^ 0xFFBFB7FABFD67B7DLL) + v19 + ((2 * (v331 % 0xA88)) & 0x16FA);
  LODWORD(v300) = 1645 * (BYTE1(LODWORD(STACK[0x444])) ^ 0x96) + 2113825;
  v334 = v300 - 2696 * (((12744711 * v300) >> 32) >> 3);
  v335 = (v334 ^ 0x6B7E757DE16FE1FALL) + v19 + ((2 * v334) & 0x3F4);
  LODWORD(v333) = (((110 * (v332 + 1)) ^ *(v332 + 0x7525F59F69497C95) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v313 + v332 - 1056954879 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v313 + v332 - 1056954879 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v333 - 125)) ^ *(v333 - 0xA9FE49D178D24E9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v313 + v333 + 1076462723 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v313 + v333 + 1076462723 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v333) = ((*(v335 - 0x765EA22039268B66) ^ (110 * (v335 + 6)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v313 + v335 + 512761350 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v313 + v335 + 512761350 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x38F848) & (v333 ^ 0xFFFDFF) | v333 & 0xC70700) << 8;
  *(*v46 + 176) = ((v322 ^ (110 * v307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v313 + v307 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x6743216D ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (((v313 + v307 + 1186175272) - 0x403B1B8DE9FC58EBLL * (qword_190530 ^ 0x71B0588CF1E76555) - 0x403B1B8DE9FC58EBLL) & (qword_190530 ^ 0x71B0588CF1E76555)))) & (v333 ^ 0x4F032FFF) | v333 & 0x98BCDE00) ^ 0x7FFB2F2B;
  LODWORD(v307) = 1645 * (HIBYTE(LODWORD(STACK[0x340])) ^ 0x1B) + 2113825;
  v336 = v307 - 2696 * (((12744711 * v307) >> 32) >> 3);
  LODWORD(v333) = 1645 * (BYTE1(LODWORD(STACK[0x340])) ^ 0xD8) + 2113825;
  v337 = v333 - 2696 * (((12744711 * v333) >> 32) >> 3);
  v338 = (v336 ^ 0x9BBEFCFDCFEFB7DBLL) + v19 + ((2 * v336) & 0xFB6);
  LODWORD(v322) = v338 + 806373413;
  LODWORD(v313) = *(v338 + 0x5960D65FD8599EB9);
  v339 = *v20;
  LODWORD(v338) = *(*v140 + (v339 & 0x46B39928));
  v340 = (v337 ^ 0xFFFBF7B71BFF3657) + v19 + ((2 * v337) & 0xCAE);
  v341 = v340 - 469710423;
  v342 = *(v340 - 0xADC245973B5DFC3);
  HIDWORD(v301) = v313 ^ (110 * v322) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v322 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v322 + v24) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v301) = HIDWORD(v301) ^ 0x46;
  LODWORD(v332) = 1645 * (BYTE2(LODWORD(STACK[0x340])) ^ 0xA4) + 2113825;
  v343 = v332 - 2696 * (((12744711 * v332) >> 32) >> 3);
  v344 = (v343 ^ 0xEDF7FD79FDD5EBF2) + v19 + ((2 * v343) & 0x17E4);
  HIDWORD(v301) = v301 >> 1;
  LODWORD(v301) = HIDWORD(v301);
  v345 = (((v301 >> 14) >> 9) - (((v301 >> 14) >> 8) & 0x827E) + 49471) ^ *(v344 + 0x727D5E3AA736AA2) ^ (110 * (v344 + 14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v344 + 36312078 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v344 + 36312078 + v24) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v340) = 1645 * (LODWORD(STACK[0x340]) ^ 0xB4) + 2113825;
  v346 = v340 - 2696 * (((12744711 * v340) >> 32) >> 3);
  v347 = (v346 ^ 0x7F4BF8FFAFB5F7FBLL) + v19 + ((2 * v346) & 0xFF6);
  LODWORD(v318) = v347 + 1347028997;
  v348 = *(v347 + 0x75D3DA5DF8935E99);
  LODWORD(v344) = (110 * v341) ^ v342 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v341 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v341 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46;
  LODWORD(v347) = *(*v140 + (v339 & STACK[0x540])) + STACK[0x498];
  LODWORD(v339) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v347 + LODWORD(STACK[0x52C])) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v319) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v347 + 1527793161) & (qword_190530 ^ 0xF1E76555)));
  *(*v143 + 212) = ((v348 ^ (110 * v318) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v318 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v338 + v318 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xBDD70268) & (((v345 << 16) | (v344 << 8)) ^ 0x3EAE02FF) | ((v345 << 16) | (v344 << 8)) & 0x4228FD00) ^ 0xFDFF022E;
  LODWORD(v338) = 1645 * (HIBYTE(LODWORD(STACK[0x450])) ^ 0x56) + 2113825;
  v349 = v338 - 2696 * (((12744711 * v338) >> 32) >> 3);
  LODWORD(v338) = 6 * (((LODWORD(STACK[0x410]) ^ v339 ^ v319 ^ 0x3E1AC6FE) + 1095896707) ^ ((LODWORD(STACK[0x410]) ^ v339 ^ v319 ^ 0x26810972) - 641089265) ^ ((LODWORD(STACK[0x410]) ^ v339 ^ v319 ^ 0x327CA4A6) + 1295281371));
  LODWORD(v338) = LODWORD(STACK[0x4A0]) + 1645 * ((((v338 + 212883586) ^ (10 - v338) ^ (((v338 + 212883586) ^ 2) + 2) ^ (((v338 + 212883586) ^ 6) + 6) ^ (((v338 + 212883586) ^ 7) + 5)) & 0xA ^ 8) + (LODWORD(STACK[0x450]) ^ 0x511));
  LODWORD(v347) = 1645 * (BYTE1(LODWORD(STACK[0x450])) ^ 0xF9) + 2113825;
  v350 = v347 - 2696 * (((12744711 * v347) >> 32) >> 3);
  v351 = (v349 ^ 0xB2FDFFF7DFDBEDFFLL) + v19 + ((2 * v349) & 0x1BFE);
  LODWORD(v319) = *(v351 + 0x4221D365C86D6895);
  LODWORD(v318) = v351 + 539234817;
  LODWORD(v351) = 1645 * (BYTE2(LODWORD(STACK[0x450])) ^ 0xC4) + 2113825;
  v352 = v351 - 2696 * (((12744711 * v351) >> 32) >> 3);
  v353 = (v352 ^ 0x3FF7A7FDA1EDF35CLL) + v19 + ((2 * v352) & 0x6B8);
  v354 = *(v353 - 0x4AD7D49FF9A49CC8);
  v355 = v353 + 1578241188;
  v356 = (v350 ^ 0x73F7EBF6C5DEBFFELL) + ((2 * v350) & 0x1FFC) + v19;
  LODWORD(v349) = v356 + 975257602;
  LODWORD(v339) = *(v356 - 0x7ED818991D95696ALL);
  LODWORD(v353) = *(*v140 + (*v20 & 0x46B39928));
  LODWORD(v356) = (((110 * v318) ^ v319 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v353 + v318 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v353 + v318 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v355) ^ v354 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v353 + v355 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v353 + v355 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v357 = ((v338 % 0xA88) ^ 0x7CF36CD99FEE18EELL) + v19 + ((2 * (v338 % 0xA88)) & 0x11DC);
  LODWORD(v356) = ((v339 ^ (110 * v349) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v353 + v349 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v353 + v349 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x88899) & (v356 ^ 0x7CEAFF) | v356 & 0xF77700) << 8;
  *(*v143 + 12) = ((*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v357 + 1611786002 + v353 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *(v357 + 0x782C6684085B3DA6) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v357 + 1611786002 + v353 + v24) & (qword_190530 ^ 0xF1E76555))) ^ (110 * (v357 + 18)) ^ 0x41F7367) & (v356 ^ 0x3D37ACFF) | v356 & 0xFBE08C00) ^ 0xC9FFF21;
  LODWORD(v356) = 1645 * (BYTE2(LODWORD(STACK[0x338])) ^ 8) + 2113825;
  v358 = v356 - 2696 * (((12744711 * v356) >> 32) >> 3);
  LODWORD(v357) = 1645 * (HIBYTE(LODWORD(STACK[0x338])) ^ 0x17) + 2113825;
  v359 = v357 - 2696 * (((12744711 * v357) >> 32) >> 3);
  v360 = (v359 ^ 0x1AEFFFB73BFD9F3FLL) + v19 + ((2 * v359) & 0x1E7E);
  LODWORD(v349) = v360 - 1006477119;
  LODWORD(v339) = *(v360 - 0x25D02C5993B448ABLL);
  LODWORD(v360) = 1645 * (BYTE1(LODWORD(STACK[0x338])) ^ 0x7B) + 2113825;
  v361 = v360 - 2696 * (((12744711 * v360) >> 32) >> 3);
  v362 = (v358 ^ 0xD5D7EFCDDBD7575ELL) + v19 + ((2 * v358) & 0xEBC);
  LODWORD(v319) = *(v362 + 0x1F47E38FCC71FF36);
  LODWORD(v318) = v362 + 606644386;
  LODWORD(v360) = *(*v140 + (*v20 & 0x46B39928));
  v363 = (v361 ^ 0x5F3DF6ADDFFFFFEFLL) + v19 + ((2 * v361) & 0x1FDE);
  LODWORD(v353) = 1645 * (LODWORD(STACK[0x338]) ^ 0x50) + 2113825;
  v364 = v353 - 2696 * (((12744711 * v353) >> 32) >> 3);
  LODWORD(v339) = (((110 * v349) ^ v339 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v349 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v349 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v318) ^ v319 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v318 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v318 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v363) = (*(v363 - 0x6A1E235037B6A95BLL) ^ (110 * (v363 + 17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v363 + 536870929 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v363 + 536870929 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xC62382) & (v339 ^ 0xF6B7FF) | v339 & 0x39DC00;
  v365 = (v364 ^ 0x757DE7EAFDC3FDFBLL) + v19 + ((2 * v364) & 0x1BF6);
  *(*v143 + 136) = ((*(v365 + 0x7FA1EB72AA855899) ^ (110 * (v365 + 5)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v365 + 37487109 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v360 + v365 + 37487109 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xEA9E4417) & ((v363 << 8) ^ 0x39DCBAFF) | (v363 << 8) & 0x1561BB00) ^ 0xEEBFC451;
  v366 = STACK[0x4D0];
  v368 = 1645 * (HIBYTE(v366) ^ 0x6D) + 2113825 - 5392 * (((12744711 * (1645 * (HIBYTE(v366) ^ 0x6D) + 2113825)) >> 32) >> 4);
  LODWORD(v360) = 1645 * (LODWORD(STACK[0x4D0]) ^ 0xC1) + 2113825;
  v369 = v360 - 2696 * (((12744711 * v360) >> 32) >> 3);
  if (v368 >= 0xA88)
  {
    v370 = v368 - 2696;
  }

  else
  {
    v370 = v368;
  }

  v367 = 1645 * (BYTE1(v366) ^ 0x76) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE1(v366) ^ 0x76u) + 2113825)) >> 32) >> 3);
  v371 = (v367 ^ 0x75ADEBFFF7BFDF99) + v19 + ((2 * v367) & 0x1F32);
  v372 = v371 + 138420327;
  v373 = *(v371 + 0x7F71E75DB08976FBLL);
  v374 = (v370 ^ 0x6BD7FEB7F7FF74FFLL) + v19 + ((2 * v370) & 0x1EFFEE9FELL);
  v375 = v374 + 134253313;
  v376 = *(v374 - 0x76B82B5A4FB61E6BLL);
  v377 = 1645 * (BYTE2(v366) ^ 0x3C) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE2(v366) ^ 0x3Cu) + 2113825)) >> 32) >> 3);
  v378 = (v377 ^ 0xD9FE75FFFCFFD3DFLL) + v19 + ((2 * v377) & 0x7BE);
  v379 = v378 + 50342945;
  v380 = *(v378 + 0x1B215D5DAB4982B5);
  v381 = (v369 ^ 0x3FEAFFBFAF7BC71FLL) + v19 + ((2 * v369) & 0xE3E);
  v382 = *(v381 - 0x4ACB2C620732708BLL);
  v383 = v381 + 1350842593;
  v384 = *(*v140 + (*v20 & 0x46B39928));
  v385 = qword_190530 ^ 0xF1E76555;
  v386 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v381) = (((110 * v375) ^ v376 ^ *(v386 + ((v384 + v375 + 1186175272) & v385)) ^ *(v386 + ((v384 + v375 + v24) & v385)) ^ 0x46) << 16) | (((110 * v379) ^ v380 ^ *(v386 + ((v384 + v379 + 1186175272) & v385)) ^ *(v386 + ((v384 + v379 + v24) & v385)) ^ 0x46) << 8);
  LODWORD(v381) = (v381 ^ 0xFFFDFF) & (v373 ^ (110 * v372) ^ *(v386 + ((v384 + v372 + 1186175272) & v385)) ^ *(v386 + ((v384 + v372 + v24) & v385)) ^ 0xC6B55A) | v381 & 0x394A00;
  *(*v143 + 224) = (((v381 << 8) ^ 0x110A80FF) & (v382 ^ (110 * v383) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v384 + v383 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v384 + v383 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x11BE9841) | (v381 << 8) & 0xEE416700) ^ 0xD7BF9C07;
  v387 = 1645 * (BYTE1(LODWORD(STACK[0x330])) ^ 3) + 2113825;
  v388 = v387 - 2696 * (((12744711 * v387) >> 32) >> 3);
  v389 = 1645 * (HIBYTE(LODWORD(STACK[0x330])) ^ 0x7B) + 2113825;
  v390 = v389 - 2696 * (((12744711 * v389) >> 32) >> 3);
  v391 = (v388 ^ 0xFAF3FFF2EBAFA7BALL) + v19 + ((2 * v388) & 0xF74);
  v392 = (v390 ^ 0x3FFEFEBAF777FDECLL) + v19 + ((2 * v390) & 0x1BD8);
  v393 = v392 + 143131156;
  LODWORD(v386) = *(v392 - 0x4ADF2B5D4F2EA758);
  LODWORD(v392) = *(*v140 + (*v20 & 0x46B39928));
  LODWORD(v381) = 1645 * (BYTE2(LODWORD(STACK[0x330])) ^ 0x11) + 2113825;
  v394 = v381 - 2696 * (((12744711 * v381) >> 32) >> 3);
  v395 = (v394 ^ 0x36EEE5BF3B7DF6F7) + v19 + ((2 * v394) & 0xDEE);
  v396 = 1645 * (LODWORD(STACK[0x330]) ^ 0x83) + 2113825;
  v397 = v396 - 2696 * (((12744711 * v396) >> 32) >> 3);
  v398 = qword_190530 ^ 0xF1E76555;
  v399 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v395) = (((110 * v393) ^ v386 ^ *(v399 + ((v392 + v393 + 1186175272) & v398)) ^ *(v399 + ((v392 + v393 + v24) & v398)) ^ 0x46) << 16) | (((110 * (v395 + 9)) ^ *(v395 - 0x41CF12619334A063) ^ *(v399 + ((v392 + v395 - 998110967 + 1186175272) & v398)) ^ *(v399 + ((v392 + v395 - 998110967 + v24) & v398)) ^ 0x46) << 8);
  LODWORD(v395) = (v395 ^ 0xD34CFF) & (*(v391 - 0x5D42C9543665126) ^ (110 * (v391 + 70)) ^ *(v399 + ((v392 + v391 + 340809798 + 1186175272) & v398)) ^ *(v399 + ((v392 + v391 + 340809798 + v24) & v398)) ^ 0x934832) | v395 & 0x6CB700;
  v400 = (v397 ^ 0xFFADDCFBFFF7CBE5) + v19 + ((2 * v397) & 0x17CA);
  *(*v143 + 268) = ((*(v400 - 0xA8E099E57AE7551) ^ (110 * (v400 + 27)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v400 + 537627 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v400 + 537627 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x229E2421) & ((v395 << 8) ^ 0xB9F68AFF) | (v395 << 8) & 0xDD61DB00) ^ 0xB3DE7467;
  v401 = STACK[0x44C];
  LODWORD(v392) = 1684480 * (BYTE2(LODWORD(STACK[0x44C])) ^ 0x8E) - 2130410496;
  LODWORD(v395) = 1645 * (BYTE2(LODWORD(STACK[0x32C])) ^ 0x64) + 2113825;
  v402 = v395 - 2696 * (((12744711 * v395) >> 32) >> 3);
  LODWORD(v400) = 1645 * (BYTE1(LODWORD(STACK[0x32C])) ^ 0xAA) + 2113825;
  v403 = v400 - 2696 * (((12744711 * v400) >> 32) >> 3);
  LODWORD(v400) = 1645 * (HIBYTE(LODWORD(STACK[0x32C])) ^ 0xDA) + 2113825;
  v404 = v400 - 2696 * (((12744711 * v400) >> 32) >> 3);
  v405 = (v404 ^ 0x3FFAF9F2EF2EF7FELL) + ((2 * v404) & 0xFFC) + v19;
  v406 = v405 + 282134530;
  LODWORD(v391) = 1645 * (LODWORD(STACK[0x32C]) ^ 0xA5) + 2113825;
  v407 = v391 - 2696 * (((12744711 * v391) >> 32) >> 3);
  v408 = (v402 ^ 0x53FD3F4BFFC777FBLL) + v19 + ((2 * v402) & 0xFF6);
  v409 = (v407 ^ 0xDADFFF44BC3F4F67) + v19 + ((2 * v407) & 0x1ECE);
  v410 = v140;
  LODWORD(v399) = *(*v140 + (*v160 & 0x46B39928));
  v411 = qword_190530 ^ 0xF1E76555;
  v412 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v408) = (((110 * v406) ^ *(v405 - 0x4ADB269546E5A16ALL) ^ *(v412 + ((v399 + v406 + 1186175272) & v411)) ^ *(v412 + ((v399 + v406 + v24) & v411)) ^ 0x46) << 16) | (((110 * (v408 + 5)) ^ *(v408 - 0x5EDD6BEE577E2167) ^ *(v412 + ((v399 + v408 + 3704837 + 1186175272) & v411)) ^ *(v412 + ((v399 + v408 + 3704837 + v24) & v411)) ^ 0x46) << 8);
  v413 = (v403 ^ 0xFE7FDBFF6FDBFFEDLL) + v19 + ((2 * v403) & 0x1FDA);
  LODWORD(v408) = ((*(v413 - 0x96008A1C792A959) ^ (110 * (v413 + 19)) ^ *(v412 + ((v399 + v413 - 1876688877 + 1186175272) & v411)) ^ *(v412 + ((v399 + v413 - 1876688877 + v24) & v411)) ^ 0xBAD932) & (v408 ^ 0xBEDDFF) | v408 & 0x452600) << 8;
  *(*v143 + 316) = ((v408 ^ 0x12280FF) & (*(v409 + 0x1A3FD418EC0A072DLL) ^ (110 * (v409 - 103)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v409 + 1136701593 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v409 + 1136701593 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xBBFB802D) | v408 & 0x44047F00) ^ 0xBBFBF46B;
  LODWORD(v408) = 1645 * ((((v401 >> 11) ^ 0x14000) + 10526720) >> 13);
  v414 = (v408 - 2696 * ((1593089 * v408) >> 32));
  v415 = 1645 * (BYTE1(v401) ^ 0x65) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE1(v401) ^ 0x65u) + 2113825)) >> 32) >> 3);
  v416 = (v415 ^ 0x79377FBBF976F5FFLL) + v19 + ((2 * v415) & 0xBFE);
  v417 = (v414 ^ 0x3EF1BFFADF2FD79DLL) + v19 + ((2 * v414) & 0xF3A);
  v418 = v417 + 550512739;
  LODWORD(v403) = *(v417 - 0x49D1EC9D36E68109);
  v419 = (((v392 >> 10) - 2696 * (v392 / 0x2A2000)) ^ 0xFBFEBFE79FFFF79FLL) + v19 + ((2 * ((v392 >> 10) - 2696 * (v392 / 0x2A2000))) & 0xF3E);
  LODWORD(v412) = v419 + 1610614881;
  v420 = *(v419 - 0x6DEEC89F7B6A10BLL);
  LODWORD(v392) = *(*v140 + (*v160 & 0x46B39928));
  v421 = 1645 * (v401 ^ 0xA5) + 2113825 - 2696 * (((12744711 * (1645 * (v401 ^ 0xA5u) + 2113825)) >> 32) >> 3);
  v422 = (v421 ^ 0x3BF5FFF7FEBBF3BBLL) + v19 + ((2 * v421) & 0x776);
  LODWORD(v409) = *(v422 - 0x46D62C9A56729D27);
  LODWORD(v399) = v422 + 21236805;
  v423 = qword_190530 ^ 0xF1E76555;
  LODWORD(v422) = (((110 * v418) ^ v403 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v418 + 1186175272) & v423)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v418 + v24) & v423)) ^ 0x46) << 16) | (((110 * v412) ^ v420 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v412 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v412 + v24) & v423)) ^ 0x46) << 8);
  LODWORD(v422) = ((v422 ^ 0xDDB3FF) & (*(v416 + 0x7BE853A1AED26095) ^ (110 * (v416 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v416 + 109644289 + 1186175272) & v423)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v416 + 109644289 + v24) & v423)) ^ 0x4CB3F3)) + (v422 & 0xB34C00);
  LODWORD(v392) = -131073 - (v409 ^ (110 * v399) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v399 + 1186175272) & v423)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v392 + v399 + v24) & v423)) ^ 0xFFFDFFB9);
  *(*v143 + 184) = (((v392 + (v422 << 8)) ^ 0x4CB3B500) - 2 * (((v392 + (v422 << 8)) ^ 0x4CB3B500) & 0x6413119E ^ v392 & 0xA) + 1678971284) ^ 0x64131194;
  LODWORD(v392) = 1645 * (BYTE2(LODWORD(STACK[0x458])) ^ 0x2C) + 2113825;
  v424 = v392 - 2696 * (((12744711 * v392) >> 32) >> 3);
  v425 = (v424 ^ 0x6FEFDEFBDD67EFFBLL) + v19 + ((2 * v424) & 0x1FF6);
  LODWORD(v416) = *(v425 - 0x7AD00B9E351E9967);
  LODWORD(v409) = v425 + 580390917;
  LODWORD(v425) = 1645 * (HIBYTE(LODWORD(STACK[0x458])) ^ 0xE) + 2113825;
  v426 = v425 - 2696 * (((12744711 * v425) >> 32) >> 3);
  LODWORD(v422) = 1645 * (LODWORD(STACK[0x458]) ^ 0x59) + 2113825;
  v427 = v422 - 2696 * (((12744711 * v422) >> 32) >> 3);
  v428 = (v427 ^ 0x6E6DFFD39FE7CEFCLL) + v19 + ((2 * v427) & 0x1DF8);
  LODWORD(v425) = v428 + 1612198148;
  LODWORD(v415) = *(v428 - 0x794E2C75F79E7868);
  LODWORD(v428) = 1645 * (BYTE1(LODWORD(STACK[0x458])) ^ 0x2B) + 2113825;
  v429 = v428 - 2696 * (((12744711 * v428) >> 32) >> 3);
  v430 = (v426 ^ 0x7B7F9BBFFFDAFF5BLL) + v19 + ((2 * v426) & 0x1EB6);
  LODWORD(v399) = *(*v140 + (*v160 & 0x46B39928));
  v431 = (v429 ^ 0x7FFE7FDFFAEF7677) + v19 + ((2 * v429) & 0xCEE);
  LODWORD(v403) = qword_190530 ^ 0xF1E76555;
  LODWORD(v416) = (((110 * (v430 - 91)) ^ *(v430 + 0x79A0379DA86E5739) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v430 + 2424997 + 1186175272) & v403)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v430 + 2424997 + v24) & v403)) ^ 0x46) << 16) | (((110 * v409) ^ v416 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v409 + 1186175272) & v403)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v409 + v24) & v403)) ^ 0x46) << 8);
  LODWORD(v431) = ((*(v431 + 0x7521537DAD59E01DLL) ^ (110 * (v431 - 119)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v431 + 84969865 + 1186175272) & v403)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v431 + 84969865 + v24) & v403)) ^ 0x36A7BE) & ~v416 | v416 & 0xC95800) << 8;
  *(*v143 + 252) = ((v415 ^ (110 * v425) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v425 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v425 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xDA96802A) & (v431 ^ 0xED5013FF) | v431 & 0x25697F00) ^ 0xFEB7F86C;
  LODWORD(v431) = 1645 * (BYTE1(LODWORD(STACK[0x3D0])) ^ 0xBD) + 2113825;
  v432 = v431 - 2696 * (((12744711 * v431) >> 32) >> 3);
  LODWORD(v415) = 1645 * (HIBYTE(LODWORD(STACK[0x3D0])) ^ 0x51) + 2113825;
  v433 = v415 - 2696 * (((12744711 * v415) >> 32) >> 3);
  LODWORD(v416) = 1645 * (BYTE2(LODWORD(STACK[0x3D0])) ^ 0xA9) + 2113825;
  v434 = v416 - 2696 * (((12744711 * v416) >> 32) >> 3);
  v435 = (v432 ^ 0xCF7F9F9CFE4DFBF5) + v19 + ((2 * v432) & 0x17EA);
  LODWORD(v416) = *(v435 + 0x25A033C0A9FB5A9FLL);
  LODWORD(v409) = v435 + 28443659;
  v436 = (v433 ^ 0x785DF2EBFDFBD6F1) + v19 + ((2 * v433) & 0xDE2);
  v437 = (v434 ^ 0x7F77B3B7EAEEEDFCLL) + v19 + ((2 * v434) & 0x1BF8);
  LODWORD(v434) = v437 + 353440260;
  v438 = *(v437 + 0x75A81FA5BD5A6898);
  v439 = v160;
  LODWORD(v437) = *(*v182 + (*v160 & 0x46B39928));
  LODWORD(v399) = qword_190530 ^ 0xF1E76555;
  LODWORD(v436) = (((110 * (v436 + 15)) ^ *(v436 + 0x7CC1E071AA4D7FA3) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v436 + 33827087 + 1186175272) & v399)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v436 + 33827087 + v24) & v399)) ^ 0x46) << 16) | (((110 * v434) ^ v438 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v434 + 1186175272) & v399)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v434 + v24) & v399)) ^ 0x46) << 8);
  LODWORD(v416) = v416 ^ (110 * v409) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v409 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v409 + v24 + 0x75FAF2362D30591 * (qword_190530 ^ 0x71B0588CF1E76555) + 0x75FAF2362D30591) & (qword_190530 ^ 0x71B0588CF1E76555)));
  HIDWORD(v440) = v416 ^ 6;
  LODWORD(v440) = ((v416 | 0x53063D00) & ~v436 | v436 & 0xF9C200) ^ 0x53063D40;
  LODWORD(v425) = 1645 * (LODWORD(STACK[0x3D0]) ^ 0x2E) + 2113825;
  v441 = v425 - 2696 * (((12744711 * v425) >> 32) >> 3);
  v442 = (v441 ^ 0xBAFFADFF9DB772FFLL) + v19 + ((2 * v441) & 0x5FE);
  HIDWORD(v440) = v440 >> 3;
  LODWORD(v440) = HIDWORD(v440);
  *(*v143 + 72) = ((*(v442 + 0x3A20255E0A91E395) ^ (110 * (v442 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v442 + 1648921857 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v437 + v442 + 1648921857 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x9EA54AF7) & (((v440 >> 29) << 8) ^ 0xBFE7EEFF) | ((v440 >> 29) << 8) & 0x615AB500) ^ 0x9EA54AB1;
  LODWORD(v436) = 1645 * (BYTE1(LODWORD(STACK[0x324])) ^ 0xD9) + 2113825;
  v443 = v436 - 2696 * (((12744711 * v436) >> 32) >> 3);
  LODWORD(v416) = 1645 * (HIBYTE(LODWORD(STACK[0x324])) ^ 0x18) + 2113825;
  v444 = v416 - 2696 * (((12744711 * v416) >> 32) >> 3);
  LODWORD(v437) = 1645 * ((BYTE2(LODWORD(STACK[0x324])) ^ 0x5ED) + ((LODWORD(STACK[0x324]) >> 15) & 0xA));
  v445 = (v437 - 2696 * ((1593089 * v437) >> 32));
  v446 = (v445 ^ 0x7B7CBDFBBFFCFFC7) + v19 + ((2 * v445) & 0x1F8E);
  LODWORD(v416) = v446 + 1073938489;
  LODWORD(v403) = *(v446 + 0x79A31561E84C56CDLL);
  v447 = (v444 ^ 0x3BD766FD6BBF57FFLL) + 2 * (v444 & 0x7FF) + v19;
  LODWORD(v444) = v447 - 1807702015;
  LODWORD(v434) = *(v447 - 0x46B7939FC376016BLL);
  v448 = (v443 ^ 0xFCFCB3F3FE7FD7FELL) + ((2 * v443) & 0xFFC) + v19;
  v449 = *(v448 - 0x7DCE0965636816ALL);
  v450 = v448 + 25176066;
  LODWORD(v447) = *(*v182 + (*v160 & 0x46B39928));
  LODWORD(v448) = (110 * v444) ^ v434;
  LODWORD(v434) = v447 + v444;
  LODWORD(v444) = qword_190530 ^ 0xF1E76555;
  LODWORD(v448) = ((v448 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v434 + 1186175272) & v444)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v434 + v24) & v444)) ^ 0x46) << 16) | (((110 * v416) ^ v403 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v447 + v416 + 1186175272) & v444)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v447 + v416 + v24) & v444)) ^ 0x46) << 8);
  LODWORD(v442) = 1645 * (LODWORD(STACK[0x324]) ^ 0x4F) + 2113825;
  v451 = v442 - 2696 * (((12744711 * v442) >> 32) >> 3);
  v452 = (v451 ^ 0xADFFA7E7DFE9EFCFLL) + v19 + ((2 * v451) & 0x1F9E);
  LODWORD(v448) = ((v449 ^ (110 * v450) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v447 + v450 + 1186175272) & v444)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v447 + v450 + v24) & v444)) ^ 0x2472EF) & ~v448 | v448 & 0xDB8D00) << 8;
  *(*v143 + 216) = ((*(v452 + 0x47202B75C85F66C5) ^ (110 * (v452 + 49)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v447 + v452 + 538316849 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((qword_190530 ^ 0xF1E76555) & (v447 + v452 + 538316849 + v24))) ^ 0x21FF7356) & (v448 ^ 0x98DDAFF) | v448 & 0xDE008C00) ^ 0x25FFFB10;
  LODWORD(v448) = 1645 * (BYTE2(LODWORD(STACK[0x320])) ^ 0x3A) + 2113825;
  v453 = v448 - 2696 * (((12744711 * v448) >> 32) >> 3);
  LODWORD(v448) = 1645 * (LODWORD(STACK[0x320]) ^ 0x3F) + 2113825;
  v454 = v448 - 2696 * (((12744711 * v448) >> 32) >> 3);
  v455 = 1645 * (HIBYTE(LODWORD(STACK[0x320])) ^ 0x1B) + 2113825;
  v456 = v455 - 2696 * (((12744711 * v455) >> 32) >> 3);
  v457 = (v456 ^ 0xB67DFEE7FFD9FF3FLL) + v19 + ((2 * v456) & 0x1E7E);
  LODWORD(v456) = 1645 * (BYTE1(LODWORD(STACK[0x320])) ^ 0xDB) + 2113825;
  v458 = v456 - 2696 * (((12744711 * v456) >> 32) >> 3);
  LODWORD(v456) = *(*v182 + (*v160 & 0x46B39928));
  v459 = (v453 ^ 0xCCFFA1966BB7DF77) + v19 + ((2 * v453) & 0x1EEE);
  LODWORD(v386) = v459 - 1807212407;
  LODWORD(v434) = *(v459 + 0x282031C73C91771DLL);
  v460 = (v458 ^ 0xFBFBB77FFF3EFF7ELL) + v19 + ((2 * v458) & 0x1EFC);
  LODWORD(v459) = *(v457 + 0x3EA1D475A86F5755);
  LODWORD(v457) = v457 + 2490561;
  LODWORD(v459) = (110 * v457) ^ v459;
  LODWORD(v399) = v456 + v457;
  LODWORD(v457) = qword_190530 ^ 0xF1E76555;
  LODWORD(v459) = ((v459 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + 1186175272) & v457)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v399 + v24) & v457)) ^ 0x46) << 16) | (((110 * v386) ^ v434 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v456 + v386 + 1186175272) & v457)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v456 + v386 + v24) & v457)) ^ 0x46) << 8);
  v461 = (v454 ^ 0x7EE3E3997F8DFD77) + v19 + ((2 * v454) & 0x1AEE);
  LODWORD(v459) = (*(v460 - 0x6DBE42256F5A8EALL) ^ (110 * (v460 - 126)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v456 + v460 + 12648578 + 1186175272) & v457)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v456 + v460 + 12648578 + v24) & v457)) ^ 0x265FDE) & (v459 ^ 0x2E5FFF) | v459 & 0xD9A000;
  *(*v143 + 228) = ((*(v461 + 0x763BEFC428BB591DLL) ^ (110 * (v461 - 119)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v456 + v461 - 2140011895 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v456 + v461 - 2140011895 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xFD4782F2) & ((v459 << 8) ^ 0xD9B86BFF) | (v459 << 8) & 0x2B87D00) ^ 0xFF5F9AB4;
  LODWORD(v459) = 1645 * (BYTE1(LODWORD(STACK[0x31C])) ^ 0xC0) + 2113825;
  v462 = v459 - 2696 * (((12744711 * v459) >> 32) >> 3);
  LODWORD(v461) = 1645 * (BYTE2(LODWORD(STACK[0x31C])) ^ 0x10) + 2113825;
  v463 = v461 - 2696 * (((12744711 * v461) >> 32) >> 3);
  LODWORD(v456) = 1645 * (LODWORD(STACK[0x31C]) ^ 0x4C) + 2113825;
  v464 = v456 - 2696 * (((12744711 * v456) >> 32) >> 3);
  LODWORD(v456) = 1645 * (HIBYTE(LODWORD(STACK[0x31C])) ^ 0x3D) + 2113825;
  v465 = v456 - 2696 * (((12744711 * v456) >> 32) >> 3);
  v466 = (v465 ^ 0xF3ABBEEFEFDFABFDLL) + v19 + ((2 * v465) & 0x17FA);
  LODWORD(v465) = *(*v182 + (*v160 & 0x46B39928));
  LODWORD(v458) = *(v466 + 0x174146DB869AA97);
  LODWORD(v460) = v466 + 270554115;
  v467 = (v463 ^ 0x7FD9BDFDECFFDFCELL) + v19 + ((2 * v463) & 0x1F9C);
  v468 = (v462 ^ 0x7EDCDA58A3FFC1DFLL) + v19 + ((2 * v462) & 0x3BE);
  LODWORD(v399) = v468 + 1543519777;
  LODWORD(v403) = *(v468 + 0x7642F905044994B5);
  LODWORD(v468) = qword_190530 ^ 0xF1E76555;
  LODWORD(v467) = (((110 * v460) ^ v458 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v465 + v460 + 1186175272) & v468)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v465 + v460 + v24) & v468)) ^ 0x46) << 16) | (((110 * (v467 + 50)) ^ *(v467 + 0x7546155FBB4976C6) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v465 + v467 + 318775346 + 1186175272) & v468)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v465 + v467 + 318775346 + v24) & v468)) ^ 0x46) << 8);
  v469 = (v464 ^ 0xDBBCFEBF5FFD7FDFLL) + v19 + ((2 * v464) & 0x1FBE);
  LODWORD(v467) = (v403 ^ (110 * v399) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v465 + v399 + 1186175272) & v468)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v465 + v399 + v24) & v468)) ^ 0x178001) & (v467 ^ 0x9FBBFF) | v467 & 0xE87F00;
  *(*v143 + 364) = ((*(v469 + 0x1962D49E484BD6B5) ^ (110 * (v469 + 33)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v465 + v469 - 1610448863 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x49573517 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (((v465 + v469 - 1610448863 + 1186175272) + 0x46E334E04CC58211 * (qword_190530 ^ 0x71B0588CF1E76555) + 0x46E334E04CC58211) & (qword_190530 ^ 0x71B0588CF1E76555)))) & ((v467 << 8) ^ 0xF85F32FF) | (v467 << 8) & 0xB6A8CA00) ^ 0x5FD77751;
  LODWORD(v464) = 1645 * (BYTE2(LODWORD(STACK[0x314])) ^ 0x46) + 2113825;
  v470 = v464 - 2696 * (((12744711 * v464) >> 32) >> 3);
  LODWORD(v468) = 1645 * (HIBYTE(LODWORD(STACK[0x314])) ^ 0xDE) + 2113825;
  v471 = v468 - 2696 * (((12744711 * v468) >> 32) >> 3);
  v472 = (v471 ^ 0xEFC6FDEBEAD38FDBLL) + v19 + ((2 * v471) & 0x1FB6);
  v473 = (v470 ^ 0xDC5F9F5BF1F0BCAFLL) + v19 + ((2 * v470) & 0x195E);
  LODWORD(v399) = v473 + 235881297;
  LODWORD(v460) = *(v473 + 0x18C03401B65899E5);
  LODWORD(v467) = 1645 * (BYTE1(LODWORD(STACK[0x314])) ^ 0xC6) + 2113825;
  v474 = v467 - 2696 * (((12744711 * v467) >> 32) >> 3);
  LODWORD(v473) = *(*v182 + (*v160 & 0x46B39928));
  v475 = (v474 ^ 0xFEDFE1FB7F94FFE6) + v19 + ((2 * v474) & 0x1FCC);
  LODWORD(v469) = v475 - 2140471270;
  LODWORD(v386) = *(v475 - 0x9C00E9DD74BA952);
  LODWORD(v471) = qword_190530 ^ 0xF1E76555;
  LODWORD(v475) = (((110 * (v472 + 37)) ^ *(v472 + 0x558D571BD75C6B9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v472 + 355233829 + 1186175272) & v471)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v472 + 355233829 + v24) & v471)) ^ 0x46) << 16) | (((110 * v399) ^ v460 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v399 + 1186175272) & v471)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v399 + v24) & v471)) ^ 0x46) << 8);
  LODWORD(v465) = 1645 * (LODWORD(STACK[0x314]) ^ 0x43) + 2113825;
  v476 = v465 - 2696 * (((12744711 * v465) >> 32) >> 3);
  v477 = (v476 ^ 0x7FFD9FB7EF7FFEFFLL) + v19 + ((2 * v476) & 0x1DFE);
  LODWORD(v475) = ((v475 ^ 0xBE77FF) & (v386 ^ (110 * v469) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v469 + 1186175272) & v471)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v469 + v24) & v471)) ^ 0x3E66E1) | v475 & 0xC19900) << 8;
  *(*v143 + 124) = ((*(v477 + 0x752233A5B8C95795) ^ (110 * (v477 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v477 + 276824321 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v473 + v477 + 276824321 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xD1FB617C) & (v475 ^ 0xE599D8FF) | v475 & 0x2E049E00) ^ 0xFFFFE73A;
  LODWORD(v473) = 1645 * (BYTE1(LODWORD(STACK[0x4C8])) ^ 0xFB) + 2113825;
  v478 = v473 - 2696 * (((12744711 * v473) >> 32) >> 3);
  LODWORD(v477) = 1645 * (LODWORD(STACK[0x4C8]) ^ 0xCE) + 2113825;
  v479 = v477 - 2696 * (((12744711 * v477) >> 32) >> 3);
  LODWORD(v475) = 1645 * (BYTE2(LODWORD(STACK[0x4C8])) ^ 0x77) + 2113825;
  v480 = v475 - 2696 * (((12744711 * v475) >> 32) >> 3);
  v481 = (v479 ^ 0x257A3DB7FFFCB67CLL) + v19 + ((2 * v479) & 0xCF8);
  v482 = (v478 ^ 0x7BB3F28D7CB53FFCLL) + ((2 * v478) & 0x1FF8) + v19;
  LODWORD(v478) = (v478 ^ 0x7CB53FFC) + ((2 * v478) & 0x1FF8) + v19 - 2092253180;
  v483 = (v480 ^ 0xEFFBFE3FFE27D3F3) + v19 + ((2 * v480) & 0x7E6);
  LODWORD(v460) = v483 + 30944269;
  LODWORD(v399) = *(v483 + 0x523D51DAA2182A1);
  LODWORD(v483) = 1645 * (HIBYTE(LODWORD(STACK[0x4C8])) ^ 0xAC) + 2113825;
  v484 = v483 - 2696 * (((12744711 * v483) >> 32) >> 3);
  v486 = (v484 ^ 0xF6BDFEEFEDEBFEC9) + v19 + ((2 * v484) & 0x1D92);
  LODWORD(v472) = *(*v182 + (*v160 & 0x46B39928));
  LODWORD(v403) = qword_190530 ^ 0xF1E76555;
  LODWORD(v486) = (((110 * (v486 + 55)) ^ *(v486 - 0x19E2B9245A2A835) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v486 + 303300919 + 1186175272) & v403)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v486 + 303300919 + v24) & v403)) ^ 0x46) << 16) | (((110 * v460) ^ v399 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v460 + 1186175272) & v403)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v460 + v24) & v403)) ^ 0x46) << 8);
  LODWORD(v486) = ((*(v482 + 0x796BE0D02B941698) ^ (110 * v478) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v478 + 1186175272) & v403)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v478 + v24) & v403)) ^ 0x14AF50) & ~v486 | v486 & 0xEB5000) << 8;
  *(*v143 + 164) = ((v486 ^ 0xCB0021FF) & (*(v481 - 0x305A6A5A57B35FE8) ^ (110 * (v481 - 124)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v481 + 215428 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v472 + v481 + 215428 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xDB872395) | v486 & 0x2478DC00) ^ 0xDFAF37D3;
  LODWORD(v481) = 1645 * (BYTE1(LODWORD(STACK[0x310])) ^ 0x92) + 2113825;
  v485 = v481 - 2696 * (((12744711 * v481) >> 32) >> 3);
  LODWORD(v486) = 1645 * (BYTE2(LODWORD(STACK[0x310])) ^ 0x1F) + 2113825;
  LODWORD(v486) = v486 - 5392 * (((12744711 * v486) >> 32) >> 4);
  LODWORD(v481) = 1645 * (HIBYTE(LODWORD(STACK[0x310])) ^ 0x41) + 2113825;
  v487 = v481 - 2696 * (((12744711 * v481) >> 32) >> 3);
  v488 = (v487 ^ 0x7EF7F7CFFFF3FE7ALL) + v19 + ((2 * v487) & 0x1CF4);
  v489 = *(*v182 + (*v160 & 0x46B39928));
  if (v486 >= 0xA88)
  {
    v486 = (v486 - 2696);
  }

  else
  {
    v486 = v486;
  }

  v490 = (v486 ^ 0x5FF9F377FDE4FFEFLL) + v19 + ((2 * v486) & 0x1FBC9FFDELL);
  v491 = v490 + 35323921;
  v492 = *(v490 - 0x6ADA201A559BA95BLL);
  v493 = (v485 ^ 0xF7FFBFFFB9FDDFFFLL) + 2 * v485 + v19;
  v494 = v493 + 1174544385;
  v495 = *(v493 - 0x2DFECA211B4896BLL);
  v496 = 1645 * (LODWORD(STACK[0x310]) ^ 0x69) + 2113825 - 2696 * (((12744711 * (1645 * (LODWORD(STACK[0x310]) ^ 0x69u) + 2113825)) >> 32) >> 3);
  v497 = (v496 ^ 0xDFEFD52FFBEFFDF7) + v19 + ((2 * v496) & 0x1BEE);
  v498 = v497 + 68157961;
  v499 = *(v497 + 0x152FFE2DAC59589DLL);
  LODWORD(v497) = *(v488 + 0x7627DB8DA855581ALL);
  v500 = v488 + 786822;
  LODWORD(v497) = (110 * v500) ^ v497;
  v501 = v489 + v500;
  v502 = qword_190530 ^ 0xF1E76555;
  v503 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v497) = ((v497 ^ *(v503 + ((v501 + 1186175272) & v502)) ^ *(v503 + ((v501 + v24) & v502)) ^ 0x46) << 16) | (((110 * v491) ^ v492 ^ *(v503 + ((v489 + v491 + 1186175272) & v502)) ^ *(v503 + ((v489 + v491 + v24) & v502)) ^ 0x46) << 8);
  LODWORD(v497) = (v495 ^ (110 * v494) ^ *(v503 + ((v489 + v494 + 1186175272) & v502)) ^ *(v503 + ((v489 + v494 + v24) & v502)) ^ 0x3B5C58) & (v497 ^ 0x7FFCFF) | v497 & 0xC4A300;
  *(*v143 + 264) = ((v499 ^ (110 * v498) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v489 + v498 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v489 + v498 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x4E1C3F29) & ((v497 << 8) ^ 0xD52221FF) | (v497 << 8) & 0xB1E3C000) ^ 0x7F5C3F6F;
  v504 = 1645 * (HIBYTE(LODWORD(STACK[0x460])) ^ 0xD0) + 2113825;
  v505 = v504 - 2696 * (((12744711 * v504) >> 32) >> 3);
  v506 = (v505 ^ 0xFD97FFE7F71FF58ELL) + v19 + ((2 * v505) & 0xB1C);
  v507 = 1645 * (BYTE2(LODWORD(STACK[0x460])) ^ 0xE4) + 2113825;
  v508 = v507 - 2696 * (((12744711 * v507) >> 32) >> 3);
  v509 = (v508 ^ 0xFF64F99F6B3A5FDELL) + v19 + ((2 * v508) & 0x1FBC);
  v510 = v509 - 1798987742;
  v511 = *(v509 - 0xA452641C2F1094ALL);
  LODWORD(v497) = 1645 * (BYTE1(LODWORD(STACK[0x460])) ^ 0xEF) + 2113825;
  v512 = 1645 * (LODWORD(STACK[0x460]) ^ 0x95) + 2113825;
  v513 = v512 - 2696 * (((12744711 * v512) >> 32) >> 3);
  v514 = *(*v182 + (*v160 & 0x46B39928));
  v515 = ((v497 % 0xA88) ^ 0xA6FFFBFF7EBFBD6BLL) + v19 + ((2 * (v497 % 0xA88)) & 0x1AD6);
  v516 = v515 - 2126495083;
  v517 = *(v515 + 0x4E1FD75E29899929);
  LODWORD(v515) = (110 * (v506 + 114)) ^ *(v506 - 0x8782C8A4ED69EFALL);
  LODWORD(v505) = v514 + v506 + 148900466;
  LODWORD(v506) = qword_190530 ^ 0xF1E76555;
  v518 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v515) = ((v515 ^ *(v518 + ((v505 + 1186175272) & v506)) ^ *(v518 + ((v505 + v24) & v506)) ^ 0x46) << 16) | (((110 * v510) ^ v511 ^ *(v518 + ((v514 + v510 + 1186175272) & v506)) ^ *(v518 + ((v514 + v510 + v24) & v506)) ^ 0x46) << 8);
  v519 = (v513 ^ 0x1D7FBFFFF9EFFF7FLL) + v19 + ((2 * v513) & 0x1EFE);
  LODWORD(v515) = (v517 ^ (110 * v516) ^ *(v518 + ((v514 + v516 + 1186175272) & v506)) ^ *(v518 + ((v514 + v516 + v24) & v506)) ^ 0xC97246) & (v515 ^ 0xFD7FFF) | v515 & 0x368D00;
  *(*v143 + 400) = ((*(v519 - 0x285FECA251A6A8EBLL) ^ (110 * (v519 - 127)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v514 + v519 + 101712001 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v514 + v519 + 101712001 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xE78DFF66) & ((v515 << 8) ^ 0x2E8FFFFF) | (v515 << 8) & 0x18720000) ^ 0xEFFFFF20;
  LODWORD(v515) = 1645 * (HIBYTE(LODWORD(STACK[0x4F8])) ^ 0xF4) + 2113825;
  v520 = v515 - 2696 * (((12744711 * v515) >> 32) >> 3);
  v521 = 1645 * (BYTE2(LODWORD(STACK[0x4F8])) ^ 0x8B) + 2113825;
  v522 = v521 - 2696 * (((12744711 * v521) >> 32) >> 3);
  v523 = (v520 ^ 0xFEC9EFFFEF7FFFDFLL) + v19 + ((2 * v520) & 0x1FBE);
  LODWORD(v518) = v523 + 276824097;
  LODWORD(v513) = *(v523 - 0x9AA1CA24736A94BLL);
  v524 = *(*v182 + (*v160 & 0x46B39928));
  v525 = (v522 ^ 0x59BEDFF7DEA7E75FLL) + v19 + ((2 * v522) & 0xEBE);
  v526 = 1645 * (BYTE1(LODWORD(STACK[0x4F8])) ^ 0x25) + 2113825;
  v527 = v526 - 2696 * (((12744711 * v526) >> 32) >> 3);
  v528 = (v527 ^ 0x4FFDDDB9EB9DE87FLL) + v19 + ((2 * v527) & 0x10FE);
  v529 = (110 * v518) ^ v513;
  v530 = v524 + v518;
  LODWORD(v518) = qword_190530 ^ 0xF1E76555;
  v531 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v525) = ((v529 ^ *(v531 + ((v530 + 1186175272) & v518)) ^ *(v531 + ((v530 + v24) & v518)) ^ 0x46) << 16) | (((110 * (v525 - 95)) ^ *(v525 - 0x649F0C9A365E90CBLL) ^ *(v531 + ((v524 + v525 + 559421601 + 1186175272) & v518)) ^ *(v531 + ((v524 + v525 + 559421601 + v24) & v518)) ^ 0x46) << 8);
  LODWORD(v506) = 1645 * (LODWORD(STACK[0x4F8]) ^ 0xCB) + 2113825;
  v532 = v506 - 2696 * (((12744711 * v506) >> 32) >> 3);
  v533 = (v532 ^ 0xFFE75E6AF2EFEAFELL) + v19 + ((2 * v532) & 0x15FC);
  LODWORD(v525) = (*(v528 - 0x5ADE0A5C435491EBLL) ^ (110 * (v528 - 127)) ^ *(v531 + ((v524 + v528 + 341972865 + 1186175272) & v518)) ^ *(v531 + ((v524 + v528 + 341972865 + v24) & v518)) ^ 0x6B6FB1) & (v525 ^ 0xEF7FFF) | v525 & 0x949000;
  *(*v143 + 344) = ((*(v533 - 0xAC78B0D4AA6946ALL) ^ (110 * (v533 + 2)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v524 + v533 + 219157762 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v524 + v533 + 219157762 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x965DC348) & ((v525 << 8) ^ 0xB41004FF) | (v525 << 8) & 0x69A23C00) ^ 0xFF7FF70E;
  LODWORD(v533) = 1645 * (HIBYTE(LODWORD(STACK[0x304])) ^ 0xFB) + 2113825;
  v534 = v533 - 2696 * (((12744711 * v533) >> 32) >> 3);
  LODWORD(v533) = 1645 * (LODWORD(STACK[0x304]) ^ 0xB1) + 2113825;
  v535 = v533 - 2696 * (((12744711 * v533) >> 32) >> 3);
  v553 = (v535 ^ 0x3FFF9FFBDF336DFDLL) + v19 + ((2 * v535) & 0x1BFA);
  LODWORD(v525) = 1645 * (BYTE2(LODWORD(STACK[0x304])) ^ 0xB6) + 2113825;
  v536 = v525 - 2696 * (((12744711 * v525) >> 32) >> 3);
  v537 = (v534 ^ 0x6F4FE775DF6DDB6FLL) + v19 + ((2 * v534) & 0x16DE);
  LOBYTE(v518) = v537 - 111;
  LODWORD(v534) = *(v537 - 0x7A301418372484DBLL);
  LODWORD(v537) = *(*v182 + (*v160 & 0x46B39928)) + v537 + 546448529;
  LODWORD(v519) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v537 + 1186175272) & (qword_190530 ^ 0xF1E76555)));
  v538 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v537 + v24) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v537) = 1645 * (BYTE1(LODWORD(STACK[0x304])) ^ 0x36) + 2113825;
  v539 = v537 - 2696 * (((12744711 * v537) >> 32) >> 3);
  v540 = (v539 ^ 0xFFFFF6F7FD5FDF7FLL) + v19 + ((2 * v539) & 0x1EFE);
  v541 = *(v553 - 0x4ADFCC9E36EA1769);
  v542 = *(v540 - 0xAE0239A551688EBLL);
  v543 = (v536 ^ 0xEF34FFEED7FBDDBELL) + v19 + ((2 * v536) & 0x1B7C);
  v544 = *(v543 + 0x5EAD36ED04D78D6);
  v545 = v143;
  *(*v143 + 360) = 1;
  v546 = STACK[0x508];
  v547 = 1645 * (HIBYTE(v546) ^ 0x40) + 2113825 - 5392 * (((12744711 * (1645 * (HIBYTE(v546) ^ 0x40) + 2113825)) >> 32) >> 4);
  v548 = *v160;
  LODWORD(v536) = *(*v410 + (v548 & STACK[0x540])) + STACK[0x420];
  v549 = qword_190530 ^ 0xF1E76555;
  v550 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v536) = LODWORD(STACK[0x41C]) ^ *(v550 + ((v536 + LODWORD(STACK[0x52C])) & v549)) ^ *(v550 + ((v536 + 1527793161) & v549));
  v551 = 10958336 * (((v536 ^ 0x8DB63A27) - 409584846) ^ ((v536 ^ 0x4F762CF5) + 626404836) ^ ((v536 ^ 0xE8277DF8) - 2113438481)) + 371947578;
  LODWORD(v536) = *(*v410 + (v548 & 0x46B39928));
  LODWORD(v548) = (((110 * v518) ^ v534 ^ v519 ^ v538 ^ 0x46) << 16) | (((110 * (v543 + 66)) ^ v544 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v536 + v543 + 671359554 + 1186175272) & v549)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v536 + v543 + 671359554 + v24) & v549)) ^ 0x46) << 8);
  LODWORD(v548) = ((v548 ^ 0xF677FF) & (v542 ^ (110 * (v540 - 127)) ^ *(v550 + ((v536 + v540 + 44048513 + 1186175272) & v549)) ^ *(v550 + ((v536 + v540 + 44048513 + v24) & v549)) ^ 0xB470DD) | v548 & 0x4B8F00) << 8;
  *(*v545 + 360) = ((v541 ^ (110 * (v553 + 3)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v536 + v553 + 550277635 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v536 + v553 + 550277635 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x10BD9E3) & (v548 ^ 0xB7DB42FF) | v548 & 0xFEF42600) ^ 0xB57BDBA5;
  LODWORD(v553) = v547 - 2696;
  if (v547 >= 0xA88)
  {
    v553 = v553;
  }

  else
  {
    v553 = v547;
  }

  v554 = (v553 ^ 0x35436CFB77FB16FFLL) + v19 + ((2 * v553) & 0xEFF62DFELL);
  v555 = *(v554 - 0x4023999DCFB1C06BLL);
  v556 = v554 - 2012944127;
  v557 = 1645 * (BYTE2(v546) ^ 0xF2) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE2(v546) ^ 0xF2u) + 2113825)) >> 32) >> 3);
  v552 = ((((v551 ^ 0x11587CD2) + 16307480) ^ v551 ^ ((v551 ^ 0x1C55DDC) + 6681626) ^ ((v551 ^ 0x1BD0CC4) + 1942788) ^ ((v551 ^ 0x17F7BF0) + 14668344)) & 0x1FE0000 ^ 0x5E0000) + 168427520;
  v558 = (1645 * (v552 >> 17) - 2696 * ((1593089 * (1645 * (v552 >> 17))) >> 32));
  v559 = (v558 ^ 0xEDE2FDEAF5FFF5F7) + v19 + ((2 * v558) & 0xBEE);
  LODWORD(v554) = v559 + 167774729;
  v560 = *(v559 + 0x73CD572B249609DLL);
  v561 = (v557 ^ 0x5B37F7D7FF9BFF9FLL) + v19 + ((2 * v557) & 0x1F3E);
  LODWORD(v559) = *(*v410 + (*v439 & 0x46B39928));
  v562 = 1645 * (v546 ^ 0x7C) + 2113825 - 2696 * (((12744711 * (1645 * (v546 ^ 0x7Cu) + 2113825)) >> 32) >> 3);
  LODWORD(v561) = (((110 * v556) ^ v555 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v559 + v556 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v559 + v556 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v561 + 97)) ^ *(v561 - 0x6618247A5752A90BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v559 + v561 + 6553697 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v559 + v561 + 6553697 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v563 = (v562 ^ 0x6D9DF777BECFBFFFLL) + 2 * v562 + v19;
  LODWORD(v563) = *(v563 - 0x787E241A1686696BLL) ^ (110 * (v563 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v559 + v563 + 1093681153 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v559 + v563 + 1093681153 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xB3908F76;
  LODWORD(v559) = ((*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v554 + v559 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ v560 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v554 + v559 + v24) & (qword_190530 ^ 0xF1E76555))) ^ (110 * v554) ^ 0xCD120) & (v561 ^ 0x6EF3FF) | v561 & 0xF32E00) << 8;
  *(*v545 + 336) = ((v559 ^ 0xB30089FF) & v563 | v559 & 0x4C6F7000) ^ 0xBFD1EF30;
  LODWORD(v554) = 1645 * (HIBYTE(LODWORD(STACK[0x4F4])) ^ 0xB0) + 2113825;
  v564 = v554 - 2696 * (((12744711 * v554) >> 32) >> 3);
  LODWORD(v563) = 1645 * (LODWORD(STACK[0x4F4]) ^ 0x9F) + 2113825;
  v565 = v563 - 2696 * (((12744711 * v563) >> 32) >> 3);
  LODWORD(v563) = 1645 * (BYTE1(LODWORD(STACK[0x4F4])) ^ 0x2C) + 2113825;
  v566 = v563 - 2696 * (((12744711 * v563) >> 32) >> 3);
  LODWORD(v563) = 1645 * (BYTE2(LODWORD(STACK[0x4F4])) ^ 0x1D) + 2113825;
  v567 = v563 - 2696 * (((12744711 * v563) >> 32) >> 3);
  v568 = (v564 ^ 0xB7EF7DF3EF77CF7FLL) + v19 + ((2 * v564) & 0x1EFE);
  v569 = v568 + 277360769;
  LODWORD(v564) = *(v568 + 0x3D305569B8D18715);
  LODWORD(v568) = *(*v410 + (*v439 & 0x46B39928));
  v570 = (v567 ^ 0xEFF9D3FFECE757AALL) + v19 + ((2 * v567) & 0xF54);
  LODWORD(v570) = (((110 * v569) ^ v564 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v569 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v569 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v570 + 86)) ^ *(v570 + 0x525FF5DBB61FEEALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v570 + 320383062 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v570 + 320383062 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v571 = (v565 ^ 0xFBFCFBFED7ECFF95) + v19 + ((2 * v565) & 0x1F2A);
  v572 = (v566 ^ 0x7EFFFFFBB5B6F6DDLL) + v19 + ((2 * v566) & 0xDBA);
  LODWORD(v570) = (*(v572 + 0x761FD361F2925FB7) ^ (110 * (v572 + 35)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v572 + 1246300451 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v572 + 1246300451 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x73251A) & (v570 ^ 0xF765FF) | v570 & 0x8CDA00;
  *(*v545 + 200) = ((*(v571 - 0x6DD28A12FA3A901) ^ (110 * (v571 + 107)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v571 + 672333931 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v568 + v571 + 672333931 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xBB23C909) & ((v570 << 8) ^ 0xCCCE85FF) | (v570 << 8) & 0x44DC3600) ^ 0xFB27DD4F;
  LODWORD(v568) = 1645 * (LODWORD(STACK[0x478]) ^ 0xBF) + 2113825;
  v573 = v568 - 2696 * (((12744711 * v568) >> 32) >> 3);
  LODWORD(v572) = 1645 * (HIBYTE(LODWORD(STACK[0x478])) ^ 0xF) + 2113825;
  v574 = v572 - 2696 * (((12744711 * v572) >> 32) >> 3);
  v575 = (v574 ^ 0xFF7B7BFFFFEDAADELL) + v19 + ((2 * v574) & 0x15BC);
  LODWORD(v570) = 1645 * (BYTE2(LODWORD(STACK[0x478])) ^ 0x94) + 2113825;
  v576 = v570 - 2696 * (((12744711 * v570) >> 32) >> 3);
  v577 = (v573 ^ 0xB3EFB77F43E5BCDFLL) + v19 + ((2 * v573) & 0x19BE);
  v578 = (v576 ^ 0xDCD97BDF73EEEA7FLL) + v19 + ((2 * v576) & 0x14FE);
  v579 = v578 - 1945037439;
  v580 = *(v578 + 0x1846577E345A6C15);
  LODWORD(v578) = 1645 * (BYTE1(LODWORD(STACK[0x478])) ^ 0x2B) + 2113825;
  v581 = v578 - 2696 * (((12744711 * v578) >> 32) >> 3);
  v582 = (v581 ^ 0xDBFFBFBEC7DFBDDALL) + v19 + ((2 * v581) & 0x1BB4);
  v583 = v582 + 941638182;
  v584 = *(v582 + 0x1920139EE06998BALL);
  LODWORD(v571) = *(*v410 + (*v439 & 0x46B39928));
  LODWORD(v582) = *(v575 - 0xA5BA8A257A4544ALL);
  LODWORD(v575) = v575 + 1201442;
  LODWORD(v582) = (((110 * v575) ^ v582 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v571 + v575 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v571 + v575 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v579) ^ v580 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v571 + v579 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v571 + v579 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v582) = ((v584 ^ (110 * v583) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v571 + v583 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x156DC2 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (((v571 + v583 + 1186175272) + 0x7335CCBBA0BFADDFLL * (qword_190530 ^ 0x71B0588CF1E76555) + 0x7335CCBBA0BFADDFLL) & (qword_190530 ^ 0x71B0588CF1E76555)))) & ~v582 | v582 & 0xEA9200) << 8;
  *(*v545 + 16) = ((v582 ^ 0x8A0002FF) & (*(v577 + 0x41301BDE646399B5) ^ (110 * (v577 + 33)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v571 + v577 - 1139129567 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v571 + v577 - 1139129567 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x8E0082BE) | v582 & 0x71FF7D00) ^ 0x9F6D86F8;
  LODWORD(v575) = 1645 * (BYTE2(LODWORD(STACK[0x318])) ^ 0x28) + 2113825;
  v585 = v575 - 2696 * (((12744711 * v575) >> 32) >> 3);
  LODWORD(v571) = 1645 * (HIBYTE(LODWORD(STACK[0x318])) ^ 0x7A) + 2113825;
  v586 = v571 - 2696 * (((12744711 * v571) >> 32) >> 3);
  LODWORD(v577) = 1645 * (BYTE1(LODWORD(STACK[0x318])) ^ 0x54) + 2113825;
  v587 = v577 - 2696 * (((12744711 * v577) >> 32) >> 3);
  LODWORD(v582) = 1645 * (LODWORD(STACK[0x318]) ^ 0x2D) + 2113825;
  v588 = v582 - 2696 * (((12744711 * v582) >> 32) >> 3);
  v589 = (v588 ^ 0x5EFFF7BABDEEDFE7) + v19 + ((2 * v588) & 0x1FCE);
  LODWORD(v577) = v589 + 1108418585;
  LODWORD(v571) = *(v589 - 0x69E0245D15A58953);
  v590 = (v585 ^ 0x67AC9FF7FFFFFABELL) + v19 + ((2 * v585) & 0x157C);
  v591 = (v586 ^ 0x6777BB6FF6FF3FFFLL) + 2 * v586 + v19;
  LODWORD(v585) = *(*v410 + (*v439 & 0x46B39928));
  LODWORD(v591) = *(v591 - 0x7257E8124EB5E96BLL) ^ (110 * (v591 + 1)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v591 + 151044097 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v591 + 151044097 + v24) & (qword_190530 ^ 0xF1E76555)));
  v592 = (v587 ^ 0xE1F46F7EEDAFB7DFLL) + v19 + ((2 * v587) & 0xFBE);
  HIDWORD(v593) = v591 ^ 6;
  LODWORD(v593) = v591 ^ 0x40;
  HIDWORD(v593) = v593 >> 3;
  LODWORD(v593) = HIDWORD(v593);
  LODWORD(v591) = (((110 * (v590 + 66)) ^ *(v590 - 0x728CCC9A57B6A42ALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v590 + 1346 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v590 + 1346 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8) + ((v593 >> 22) << 9);
  LODWORD(v591) = ((*(v592 + 0x132B63DEBA999EB5) ^ (110 * (v592 + 33)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v592 + 307251233 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v592 + 307251233 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xCEBA41) & ~v591 | v591 & 0x314500) << 8;
  *(*v545 + 116) = ((v571 ^ (110 * v577) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v577 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v585 + v577 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x6B409060) & (v591 ^ 0xB572DDFF) | v591 & 0x94BF6F00) ^ 0xEFFA9726;
  LODWORD(v577) = 1645 * (((LODWORD(STACK[0x470]) >> 23) & 0xA ^ 2) + (HIBYTE(LODWORD(STACK[0x470])) ^ 0x53C));
  v594 = (v577 - 2696 * ((1593089 * v577) >> 32));
  LODWORD(v585) = 1645 * (BYTE1(LODWORD(STACK[0x470])) ^ 0x97) + 2113825;
  v595 = v585 - 2696 * (((12744711 * v585) >> 32) >> 3);
  v596 = (v594 ^ 0xDB5E1FBF845DFFEELL) + v19 + ((2 * v594) & 0x1FDC);
  LODWORD(v586) = v596 + 2074214418;
  v597 = *(v596 + 0x19C1B39E23EB56A6);
  LODWORD(v591) = 1645 * (LODWORD(STACK[0x470]) ^ 0xEB) + 2111129;
  LODWORD(v596) = 1645 * (BYTE2(LODWORD(STACK[0x470])) ^ 0x7E) + 2113825;
  v598 = v596 - 2696 * (((12744711 * v596) >> 32) >> 3);
  LODWORD(v596) = *(*v410 + (*v439 & 0x46B39928));
  v599 = v591 - 2696 * (((12744711 * v591) >> 32) >> 3);
  v600 = (v595 ^ 0x3EFF7DFEFBFF196ELL) + v19 + ((2 * v595) & 0x12DC);
  LODWORD(v590) = v600 + 67167890;
  LODWORD(v587) = *(v600 - 0x49DFAAA153B5C2DALL);
  v601 = (v598 ^ 0x7FAC676BBFFFFF17) + v19 + ((2 * v598) & 0x1E2E);
  LODWORD(v601) = (((110 * v586) ^ v597 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v586 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v586 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v601 - 23)) ^ *(v601 + 0x75736BF1E849577DLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v601 + 1073742057 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v601 + 1073742057 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v601) = (v601 ^ 0xFF6FFF) & (v587 ^ (110 * v590) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v590 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v590 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xFE278F) | v601 & 0x1D800;
  v602 = (v599 ^ 0x6DFE9FEDFFBD71F5) + v19 + ((2 * v599) & 0x3EA);
  *(*v545 + 408) = ((*(v602 - 0x78DECC9057741B61) ^ (110 * (v602 + 11)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v602 + 4361739 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v596 + v602 + 4361739 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x6B9E26A9) & ((v601 << 8) ^ 0x81D9A7FF) | (v601 << 8) & 0x9461D900) ^ 0xFFBFEFEF;
  LODWORD(v601) = 1645 * (BYTE1(LODWORD(STACK[0x4A8])) ^ 0x7D) + 2113825;
  v603 = v601 - 2696 * (((12744711 * v601) >> 32) >> 3);
  LODWORD(v601) = 1645 * (HIBYTE(LODWORD(STACK[0x4A8])) ^ 0x97) + 2113825;
  v604 = v601 - 2696 * (((12744711 * v601) >> 32) >> 3);
  LODWORD(v577) = 1645 * (BYTE2(LODWORD(STACK[0x4A8])) ^ 0x3E) + 2113825;
  v605 = v577 - 2696 * (((12744711 * v577) >> 32) >> 3);
  v606 = (v604 ^ 0x6EFB3F6E77CDEE8CLL) + v19 + ((2 * v604) & 0x1D18);
  v607 = (v605 ^ 0x3369CF9FD7BFCFEFLL) + v19 + ((2 * v605) & 0x1FDE);
  LODWORD(v595) = v607 + 675295249;
  LODWORD(v598) = *(v607 - 0x3E49FC422F76795BLL);
  LODWORD(v607) = *(*v410 + (*v439 & 0x46B39928));
  LODWORD(v606) = (((110 * (v606 + 116)) ^ *(v606 - 0x79DB6C10CF8497F8) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v606 - 2009984652 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v606 - 2009984652 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v595) ^ v598 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v595 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v595 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v608 = (v603 ^ 0xFF6F7E3A9EE5EDBBLL) + v19 + ((2 * v603) & 0x1B76);
  LODWORD(v606) = (*(v608 - 0xA4FAADCF69C9727) ^ (110 * (v608 + 69)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v608 + 1629098565 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v608 + 1629098565 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x1C4A6E) & (v606 ^ 0x5D6BFF) | v606 & 0xE3B500;
  LODWORD(v596) = 1645 * (LODWORD(STACK[0x4A8]) ^ 0x90) + 2113825;
  v609 = v596 - 2696 * (((12744711 * v596) >> 32) >> 3);
  v610 = (v609 ^ 0xDBFFE6CBDDF77F6FLL) + v19 + ((2 * v609) & 0x1EDE);
  *(*v545 + 36) = ((*(v610 + 0x191FEC91CA51D725) ^ (110 * (v610 - 111)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v610 + 570982545 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v607 + v610 + 570982545 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x3777C489) & ((v606 << 8) ^ 0x6B3DC6FF) | (v606 << 8) & 0xC8883B00) ^ 0x3F7FECCF;
  LODWORD(v610) = 1645 * (LODWORD(STACK[0x480]) ^ 0x78) + 2113825;
  v611 = v610 - 2696 * (((12744711 * v610) >> 32) >> 3);
  LODWORD(v606) = 1645 * (BYTE1(LODWORD(STACK[0x480])) ^ 0xF7) + 2113825;
  v612 = v606 - 2696 * (((12744711 * v606) >> 32) >> 3);
  LODWORD(v607) = 1645 * (BYTE2(LODWORD(STACK[0x480])) ^ 0xDE) + 2113825;
  v613 = v607 - 2696 * (((12744711 * v607) >> 32) >> 3);
  v614 = (v611 ^ 0x9EE69BD3A7E333FBLL) + v19 + ((2 * v611) & 0x7F6);
  LODWORD(v608) = 1645 * (HIBYTE(LODWORD(STACK[0x480])) ^ 0x39) + 2113825;
  v615 = v608 - 2696 * (((12744711 * v608) >> 32) >> 3);
  v616 = (v612 ^ 0x34F9B9FD8B92FC57) + v19 + ((2 * v612) & 0x18AE);
  LODWORD(v608) = v616 + 1953301417;
  LODWORD(v586) = *(v616 - 0x3FD9E69FE349A5C3);
  v617 = (v615 ^ 0x7967FDC3FEFFD6EBLL) + v19 + ((2 * v615) & 0xDD6);
  LODWORD(v598) = v617 + 16787733;
  LODWORD(v615) = *(v617 + 0x7BB7D599A9497FA9);
  v618 = *(*v410 + (*v439 & 0x46B39928));
  v619 = (v613 ^ 0x7BCE9DFF5AFE6F6BLL) + v19 + ((2 * v613) & 0x1ED6);
  LODWORD(v619) = (((110 * v598) ^ v615 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v618 + v598 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v618 + v598 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * (v619 - 107)) ^ *(v619 + 0x7951355E4D4AE729) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v618 + v619 - 1526624107 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v618 + v619 - 1526624107 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v619) = ((v586 ^ (110 * v608) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v618 + v608 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v618 + v608 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xD4B136) & ~v619 | v619 & 0x2B4E00) << 8;
  *(*v545 + 276) = ((v619 ^ 0xFF0FFFFF) & (*(v614 + 0x5639378A00662299) ^ (110 * (v614 + 5)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v618 + v614 + 1478282245 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((qword_190530 ^ 0xF1E76555) & (v618 + v614 + 1478282245 + v24))) ^ 0x211007BE) | v619 & 0xDEEFF800) ^ 0xF5B177F8;
  LODWORD(v607) = 1645 * (BYTE2(LODWORD(STACK[0x488])) ^ 0xE) + 2113825;
  v620 = v607 - 2696 * (((12744711 * v607) >> 32) >> 3);
  LODWORD(v607) = 1645 * (HIBYTE(LODWORD(STACK[0x488])) ^ 0xCD) + 2113825;
  v621 = v607 - 2696 * (((12744711 * v607) >> 32) >> 3);
  v622 = (v621 ^ 0x7BFABAFF7DBEDFEFLL) + v19 + ((2 * v621) & 0x1FDE);
  LODWORD(v619) = 1645 * (BYTE1(LODWORD(STACK[0x488])) ^ 0x58) + 2113825;
  v623 = v619 - 2696 * (((12744711 * v619) >> 32) >> 3);
  v624 = (v623 ^ 0x6DF5FCE9DFDD97FBLL) + v19 + ((2 * v623) & 0xFF6);
  LODWORD(v614) = *(*v410 + (*v439 & 0x46B39928));
  LODWORD(v608) = *(v624 - 0x78D6298C37944167);
  LODWORD(v586) = v624 + 539125765;
  v625 = STACK[0x490];
  LODWORD(v615) = (v620 ^ 0xBFD5FFFE) + ((2 * v620) & 0x1FFC) + v19 + 1076494338;
  LODWORD(v598) = 1645 * (LODWORD(STACK[0x488]) ^ 0x21) + 2113825;
  v626 = v598 - 2696 * (((12744711 * v598) >> 32) >> 3);
  LODWORD(v624) = (((110 * (v622 + 17)) ^ *(v622 + 0x7925185E2A8A76A5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v622 - 2109661167 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v622 - 2109661167 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 16) | (((110 * v615) ^ *((v620 ^ 0xF737F7FFBFD5FFFELL) + ((2 * v620) & 0x1FFC) + v19 - 0x21824A2178CA96ALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v615 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v615 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  LODWORD(v608) = (v624 ^ 0xF5FFFF) & (v608 ^ (110 * v586) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v586 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v586 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0xA5FB76);
  v627 = (v626 ^ 0xE7E7F9F3FE7EFEE9) + v19 + ((2 * v626) & 0x1DD2);
  LODWORD(v624) = v608 | v624 & 0x5A0400;
  LODWORD(v608) = 1645 * (LODWORD(STACK[0x490]) ^ 1) + 2113825;
  v628 = v608 - 2696 * (((12744711 * v608) >> 32) >> 3);
  *(*v545 + 372) = ((*(v627 + 0xD37D969A9CA57ABLL) ^ (110 * (v627 + 23)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v627 + 25231639 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v614 + v627 + 25231639 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x8EC5C326) & ((v624 << 8) ^ 0x5B0CD7FF) | (v624 << 8) & 0x713A3C00) ^ 0xAFFFF360;
  v629 = (v628 ^ 0x5BEFBEFF7BFF9B9ELL) + v19 + ((2 * v628) & 0x173C);
  v630 = 1645 * (BYTE1(v625) ^ 0x89) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE1(v625) ^ 0x89u) + 2113825)) >> 32) >> 3);
  v631 = 1645 * (HIBYTE(v625) ^ 0x28) + 2113825 - 2696 * (((12744711 * (1645 * (HIBYTE(v625) ^ 0x28) + 2113825)) >> 32) >> 3);
  v632 = (v631 ^ 0x3F7EE3E3BFEBFFEFLL) + v19 + ((2 * v631) & 0x1FDE);
  LODWORD(v627) = *(*v410 + (*v439 & 0x46B39928));
  v633 = 1645 * (BYTE2(v625) ^ 0xC4) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE2(v625) ^ 0xC4u) + 2113825)) >> 32) >> 3);
  v634 = (v633 ^ 0x7F38FFF9E7FF2E9FLL) + v19 + ((2 * v633) & 0x1D3E);
  LODWORD(v632) = (((110 * (v632 + 17)) ^ *(v632 - 0x4A5F108617A2A95BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v632 + 1075052561 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ 0x46 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v632 + 1075052561 + v24 - 0x3C3FF4C4A25F8E75 * (qword_190530 ^ 0x71B0588CF1E76555) - 0x3C3FF4C4A25F8E75) & (qword_190530 ^ 0x71B0588CF1E76555)))) << 16) | (((110 * (v634 + 97)) ^ *(v634 + 0x75E6D363C04A27F5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v634 + 402706785 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v634 + 402706785 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46) << 8);
  v635 = (v630 ^ 0x3FEAAF0CFF8DBFDBLL) + v19 + ((2 * v630) & 0x1FB6);
  LODWORD(v632) = (*(v635 - 0x4ACADBAF57446947) ^ (110 * (v635 + 37)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v635 + 7487525 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v635 + 7487525 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x2853F0) & (v632 ^ 0x2CF3FF) | v632 & 0xD7AC00;
  *(*v545 + 128) = ((*(v629 - 0x66CFEBA1D3B6450ALL) ^ (110 * (v629 + 98)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v629 - 2080349086 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v627 + v629 - 2080349086 + v24) & (qword_190530 ^ 0xF1E76555))) ^ 0x46883D63) & ((v632 << 8) ^ 0x4EFCC9FF) | (v632 << 8) & 0xB977C200) ^ 0x6EDBBF25;
  v636 = *(STACK[0x548] + 8 * LODWORD(STACK[0x4B0]));
  LODWORD(STACK[0x4FC]) = 65021204;
  v637 = STACK[0x4E8];
  v638 = STACK[0x4E0];
  return v636(STACK[0x500]);
}

uint64_t sub_6F1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (*(v14 + (3013 * v8 + 4661111) % 0x1188u) - 125);
  v17 = 9002 * v16 + 107222822 - (((326095241 * (9002 * v16 + 107222822)) >> 32) >> 10) * a5;
  LODWORD(v17) = *(a8 + 4 * ((v17 ^ (((v9 + 76) | 0x100) + 0x7FFBDFB3EEEF758ELL)) + ((2 * v17) & 0x7D9C)) + 0x108130444204C8);
  v18 = (~(v17 >> 7) & 0x2C) + (BYTE1(v17) ^ 0xDE9);
  v19 = 3013 * (((v17 >> 23) & 0x2C ^ 0x28) + (BYTE3(v17) ^ 0xD22));
  v20 = v11 + 3013 * (BYTE2(v17) ^ 0x44) - 4488 * (((30623653 * (v11 + 3013 * (BYTE2(v17) ^ 0x44u))) >> 32) >> 5);
  v21 = *(v14 + (3013 * (((v17 ^ 0x9ADDAE1C) + 1499427699) ^ ((v17 ^ 0xBE7EF069) + 2113678600) ^ ((v17 ^ 0x24A35E83) - 417233938)) - 312481231) % 0x1188);
  v22 = v13 + 9002 * v8 - ((((v13 + 9002 * v8) * v10) >> 32) >> 12) * a5;
  v23 = *(v14 + 3013 * v18 - 4488 * (((15311827 * (3013 * v18)) >> 32) >> 4)) - 125;
  v24 = v21 ^ 2;
  LOBYTE(v18) = v21 & 7 ^ 0x42;
  v25 = v21 ^ (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * ((v21 ^ 2) & (2 * v21) & 6 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  *(v12 + 4 * ((v22 ^ 0x3FCFEFFEF8FFFFCFLL) + ((2 * v22) & 0x7F9E)) + 0xC040041C0000C4) = ((v25 & 0xFE ^ 0xFFFFFFC1) & ((((((*(v14 + v20) - 125) << 8) | (*(v14 + v19 - 4488 * (((15311827 * v19) >> 32) >> 4)) << 16) | v23) << 8) - 2097152000) ^ 0xE771C746) | v25 & 0xB9) ^ 0xD33538B1;
  return (*(v15 + 8 * ((3415 * (v8 == 255)) ^ v9)))();
}

uint64_t sub_6F47C@<X0>(uint64_t a1@<X8>)
{
  v4 = (a1 + 4 * v3 + 748);
  *v4 = 0u;
  v4[1] = 0u;
  return (*(v1 + 8 * (((v3 != 56) * (v2 ^ 0x778)) ^ v2)))();
}

void sub_6F4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33)
{
  if (((1 << a22) & *a33) != 0)
  {
    v34 = *a23;
    if (a22 == 31)
    {
      LOBYTE(v35) = 0;
    }

    else
    {
      v35 = 57 - (a22 >> 1);
    }

    v36 = *(v33 - 168) << v35;
    while (1)
    {
      v37 = v34;
      if ((*(v34 + 8) & 0xFFFFFFFFFFFFFFF8) == *(v33 - 168))
      {
        break;
      }

      v38 = v34 + 8 * (v36 >> 63);
      v40 = *(v38 + 32);
      v39 = (v38 + 32);
      v34 = v40;
      v36 *= 2;
      if (!v40)
      {
        v41 = *(v33 - 160);
        *v39 = v41;
        v41[6] = v37;
        v41[2] = v41;
        v41[3] = v41;
        goto LABEL_11;
      }
    }

    v43 = *(v34 + 16);
    v44 = *(v33 - 160);
    *(v43 + 24) = v44;
    *(v37 + 16) = v44;
    v44[2] = v43;
    v44[3] = v37;
    v44[6] = 0;
  }

  else
  {
    *a33 |= 1 << a22;
    v42 = *(v33 - 160);
    *a23 = v42;
    v42[6] = a23;
    v42[2] = v42;
    v42[3] = v42;
  }

LABEL_11:
  JUMPOUT(0xDE2ECLL);
}

uint64_t sub_6F668@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  v8 = 9002 * (*(v6 + (((v3 + 287) ^ 0x811u) * v2 + 4661111) % 0x1188) - 125) + 2313514;
  v9 = v8 - (((10190477 * v8) >> 32) >> 5) * v4;
  LODWORD(v9) = *(a1 + 4 * ((v9 ^ 0x28F6EC4E5EAD7EFFLL) + ((2 * v9) & 0x7DFE)) + 0x5C244EC6854A0404);
  v10 = 3013 * (((v9 ^ 0x421EF454) - 1442167526) ^ ((v9 ^ 0xFF848B76) + 395328060) ^ ((v9 ^ 0xBD9A7FD4) + 1435422362)) - 2062931390;
  v11 = BYTE2(v9) ^ 0x44;
  v12 = 3013 * (((BYTE3(v9) ^ 0xA2A9ECD3) + 242049545) ^ ((BYTE3(v9) ^ 0x6AE23AAC) - 970541960) ^ ((BYTE3(v9) ^ 0xC84BD64B) + 1687115921)) - 1691110082;
  LODWORD(v9) = 3013 * ~(v9 >> 8) + 10093550;
  v13 = *(v6 + v10 % 0x1188);
  v14 = v5 + 9002 * v2 - ((((v5 + 9002 * v2) * a2) >> 32) >> 12) * v4;
  v15 = ((*(v6 + 3013 * v11 + 10093550 - 4488 * (((30623653 * (3013 * v11 + 10093550)) >> 32) >> 5)) - 125) << 8) | (*(v6 + v12 % 0x1188) << 16);
  v16 = v13 ^ 2;
  LOBYTE(v11) = v13 & 0x67 ^ 0xF2;
  v17 = v15 & 0xFFFFFF00 | (*(v6 + v9 - 4488 * (((30623653 * v9) >> 32) >> 5)) - 125);
  LOBYTE(v9) = v13 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * v13) & 6 ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  *(a1 + 4 * ((v14 ^ 0x137BFFE9F7EBBFF9) + ((2 * v14) & 0x7FF2)) - 0x4DEFFFA7DFAEFFE4) = ((v9 & 0xF0 ^ 0xFFFFFF9F) & (((v17 << 8) - 2097152000) ^ 0xC89E16B0) | v9 & 0x4F) ^ 0xFCDAE901;
  return (*(v7 + 8 * ((353 * (v2 == 255)) ^ v3)))();
}

uint64_t sub_6F948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v13 = STACK[0x6C0];
  v14 = v11 + 9002 * v8 - ((((v11 + 9002 * v8) * a6) >> 32) >> 12) * a8;
  v15 = 3013 * ((v9 ^ 0x15) + *(STACK[0x6C0] + (3013 * v8 + 4661111) % 0x1188u) + 104) + 9322222;
  v16 = 2 * (v11 + 9002 * v8 - ((((v11 + 9002 * v8) * a6) >> 32) >> 12) * a8);
  v17 = *(STACK[0x6C0] + v15 - 4488 * (((30623653 * v15) >> 32) >> 5));
  *(v10 + 4 * ((v14 ^ 0x2EDF7BE7FEFFF7BBLL) + (v16 & 0x6F76)) + 0x4482106004002114) = 876937206;
  v18 = v10 + 4 * ((v14 ^ 0xFF87FEFD3F5D51FLL) + (v16 & 0x2A3E));
  v19 = v17 & 0x7D ^ 0xFD;
  v20 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v21 = v13[2986];
  v23 = v17 ^ (2 * ((v17 ^ 2) & (2 * ((v17 ^ 2) & (2 * ((v17 ^ 2) & (2 * ((v17 ^ 2) & (2 * ((v17 ^ 2) & (2 * (((2 * ~v17) | 0x78) & (v17 ^ 2) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  if ((v23 ^ 0x7D))
  {
    v22 = v21 | 0xD4;
    v24 = v21 ^ v20 ^ (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * v21) & 6 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xD9;
  }

  else
  {
    v24 = v20 ^ 0xF2;
  }

  v25 = v12 + 4 * ((v14 ^ 0x3F796EFD99F73EF7) + (v16 & 0x7DEE));
  *(v25 + 0x21A440998230424) = v24 ^ 0x3444FFF2;
  v26 = v13[1511];
  v27 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v28 = v26 ^ v27 ^ (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * v26) & 6 ^ (v26 | 0xD4))) ^ (v26 | 0xD4))) ^ (v26 | 0xD4))) ^ (v26 | 0xD4))) ^ (v26 | 0xD4))) ^ (v26 | 0xD4))) ^ 0xD9;
  if ((v23 & 2) == 0)
  {
    v28 = v27 ^ 0xF2;
  }

  *(v25 + 0x21A440998230424) = v28 ^ 0x3444FFF2;
  v29 = v13[36];
  v30 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v31 = v29 ^ v30 ^ (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * v29) & 6 ^ (v29 | 0xD4))) ^ (v29 | 0xD4))) ^ (v29 | 0xD4))) ^ (v29 | 0xD4))) ^ (v29 | 0xD4))) ^ (v29 | 0xD4))) ^ 0xD9;
  if (((v23 ^ 0x7D) & 4) == 0)
  {
    v31 = v30 ^ 0xF2;
  }

  *(v25 + 0x21A440998230424) = v31 ^ 0x3444FFF2;
  v32 = v13[3049];
  v33 = v32 | 0xD4;
  v34 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v35 = v32 ^ v34 ^ (2 * ((v32 ^ 2) & (2 * ((v32 ^ 2) & (2 * ((v32 ^ 2) & (2 * ((v32 ^ 2) & (2 * ((v32 ^ 2) & (2 * ((v32 ^ 2) & (2 * v32) & 6 ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ 0xD9;
  if (((v23 ^ 0x7D) & 8) == 0)
  {
    v35 = v34 ^ 0xF2;
  }

  *(v25 + 0x21A440998230424) = v35 ^ 0x3444FFF2;
  v36 = v13[1574];
  v37 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v38 = v36 ^ v37 ^ (2 * ((v36 ^ 2) & (2 * ((v36 ^ 2) & (2 * ((v36 ^ 2) & (2 * ((v36 ^ 2) & (2 * ((v36 ^ 2) & (2 * ((v36 ^ 2) & (2 * v36) & 6 ^ (v36 | 0xD4))) ^ (v36 | 0xD4))) ^ (v36 | 0xD4))) ^ (v36 | 0xD4))) ^ (v36 | 0xD4))) ^ (v36 | 0xD4))) ^ 0xD9;
  if (((v23 ^ 0x7D) & 0x10) == 0)
  {
    v38 = v37 ^ 0xF2;
  }

  *(v25 + 0x21A440998230424) = v38 ^ 0x3444FFF2;
  v39 = v13[99];
  v40 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v41 = v39 ^ v40 ^ (2 * ((v39 ^ 2) & (2 * ((v39 ^ 2) & (2 * ((v39 ^ 2) & (2 * ((v39 ^ 2) & (2 * ((v39 ^ 2) & (2 * ((v39 ^ 2) & (2 * v39) & 6 ^ (v39 | 0xD4))) ^ (v39 | 0xD4))) ^ (v39 | 0xD4))) ^ (v39 | 0xD4))) ^ (v39 | 0xD4))) ^ (v39 | 0xD4))) ^ 0xD9;
  if (((v23 ^ 0x7D) & 0x20) == 0)
  {
    v41 = v40 ^ 0xF2;
  }

  *(v25 + 0x21A440998230424) = v41 ^ 0x3444FFF2;
  v42 = v13[3112];
  v43 = v42 | 0xD4;
  v44 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v45 = v42 ^ v44 ^ (2 * ((v42 ^ 2) & (2 * ((v42 ^ 2) & (2 * ((v42 ^ 2) & (2 * ((v42 ^ 2) & (2 * ((v42 ^ 2) & (2 * ((v42 ^ 2) & (2 * v42) & 6 ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ 0xD9;
  if (((v23 ^ 0x7D) & 0x40) == 0)
  {
    v45 = v44 ^ 0xF2;
  }

  *(v25 + 0x21A440998230424) = v45 ^ 0x3444FFF2;
  v46 = v13[1637];
  v47 = *(v18 - 0x3FE1FFBF4FD7547CLL);
  v48 = v46 | 0xD4;
  v49 = v47 ^ 0xF2;
  v50 = v46 ^ v47 ^ (2 * ((v46 ^ 2) & (2 * ((v46 ^ 2) & (2 * ((v46 ^ 2) & (2 * ((v46 ^ 2) & (2 * ((v46 ^ 2) & (2 * ((v46 ^ 2) & (2 * v46) & 6 ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ 0xD9;
  if ((v23 & 0x80u) == 0)
  {
    v50 = v49;
  }

  *(v25 + 0x21A440998230424) = v50 ^ 0x3444FFF2;
  return (*(STACK[0x6C8] + 8 * ((21 * (v8 == 255)) ^ v9)))();
}

uint64_t sub_6FED4@<X0>(uint64_t a1@<X1>, void *a2@<X6>, int a3@<W8>)
{
  LODWORD(v9) = (1645 * a3 + 2962645) % 0x1510u;
  if (v9 >= 0xA88)
  {
    v9 = (v4 - 84 + v9 - 3134);
  }

  else
  {
    v9 = v9;
  }

  v10 = STACK[0x518] + 4 * ((v6 + 551 * a3) % 0x1D48u);
  v11 = *v3;
  v12 = *STACK[0x538];
  v13 = STACK[0x530];
  v14 = (v10 + *(v12 + (v11 & STACK[0x540])) + v5);
  v15 = *a2 ^ 0xF1E76555;
  v16 = (v9 ^ 0x6F96FFCFDD5FF99FLL) + v8 + ((2 * v9) & 0x1BABFF33ELL);
  v17 = (v16 + 580912737 + *(v12 + (v11 & v7)) + v7);
  *(v16 - 0x7A772C723516A30BLL) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v17 & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v14 - 2) & v15)) ^ *(v10 + a1) ^ (45 * v10) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v14 & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + 2) & v15)) ^ (110 * (v16 + 97)) ^ 0x6C;
  return (*(STACK[0x548] + 8 * ((314 * (a3 == 255)) ^ v4)))();
}

uint64_t sub_70120@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, int a4, unsigned int a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = a2 - 1432553731 + ((4 * v7) ^ 0x1C0);
  a5 = -1038737001 - 1183051249 * ((2 * (&a4 & 0x5D54FD40) - &a4 + 581632699) ^ 0xC748D467) + v7 + 1106;
  a6 = v10;
  v12 = (*(v6 + 8 * (v7 ^ 0xACA)))(&a4);
  if (((a4 ^ 0xF67A0FCD) + 264) <= 0)
  {
    v13 = --((a4 ^ 0xCD) + 8);
  }

  else
  {
    v13 = ((a4 ^ 0xCD) + 8);
  }

  *v9 = v13 == 0;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 8;
  }

  *v8 = v14;
  return (*(v6 + 8 * ((v7 + 256) ^ (16 * (((((v11 - v7) | (v7 - v11)) >> (91 * (v7 ^ 2) + 14)) & 1) == 0)))))(v12);
}

uint64_t sub_702C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, unsigned __int8 a4@<W4>, unsigned __int8 a5@<W7>, uint64_t a6@<X8>)
{
  if (a3 | a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a5 == (v6 + 16);
  }

  v8 = v7;
  return (*(a6 + 8 * ((13 * v8) ^ v6)))(a1, a2);
}

uint64_t sub_70310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 16) + v5;
  v10 = *(*(a5 - 132921991) + (((v9 & 0xFFFFFFF8) + 916900720) & *(v6 - 464343834)));
  v11 = (__ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8) + v10) ^ 0x89F455BA1C0B015;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = ((((v13 + v12) << ((v8 + 91) ^ 9u)) | 0xEA06364E2AD297BALL) - (v13 + v12) + 0xAFCE4D8EA96B423) ^ 0x2DD293DE13E7F39DLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x7E1F3531EE2817FLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xBEACFB9F4D191338;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0x19B3876BEE4E3426) - (v20 + v19) + 0x73263C4A08D8E5ECLL) ^ 0xF96F7FB034C35C7ALL ^ __ROR8__(v19, 61);
  v22 = (__ROR8__((((2 * (v20 + v19)) & 0x19B3876BEE4E3426) - (v20 + v19) + 0x73263C4A08D8E5ECLL) ^ 0xF96F7FB034C35C7ALL, 8) + v21) ^ 0x8F826D48DCAD4006;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (v23 + v24 - ((2 * (v23 + v24)) & 0x5AEA3B533DBE72D6) + 0x2D751DA99EDF396BLL) ^ 0x130642540E5C89C8;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((v27 + v26 - ((2 * (v27 + v26)) & 0x6AE6752BFBB8E8C8) - 0x4A8CC56A02238B9CLL) ^ 0x935C054A32386B28) >> (8 * (v9 & 7u))) ^ *v9;
  return (*(a3 + 8 * v8))(a1, a2);
}

uint64_t sub_70538(int a1, int a2, char a3, unsigned int a4, int a5, char a6, char a7, char a8)
{
  v19 = *(v14 + v9);
  v20 = 3 * (v19 >> 3) + 5;
  v21 = v17 + (((5 * v13 + 54) * v19 + 5) & 7) * a1 - ((((v17 + (((5 * v13 + 54) * v19 + 5) & 7u) * a1) * a4) >> 32) >> 2) * a5;
  v22 = ((2 * v20) & 4) + (v20 & 7 ^ a2);
  LOBYTE(v20) = *(v10 + v21);
  LOBYTE(v22) = *(v10 + v22 * a1 - ((((v22 * a1) * a4) >> 32) >> 2) * a5);
  v23 = v22 & v11 ^ a6;
  v24 = v20 & a8 ^ a3;
  LOBYTE(v22) = v22 ^ v20 ^ (2 * (v23 ^ v24 ^ (v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * ((v22 ^ 2) & (2 * (((2 * (v22 & 3)) ^ a7) & (v22 ^ 2) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ (v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * v20) & 6 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))));
  *(STACK[0x6C0] + v21) = (((v22 ^ v12) + 112) ^ ((v22 ^ 0xC0) - 109) ^ ((v22 ^ v15) - 38)) + 88;
  return (*(v18 + 8 * (((v9 == 47) * v16) ^ v8)))();
}

uint64_t sub_706F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, int a23, int a24)
{
  v27 = ((((&a22 | 0x9C084D80) ^ 0xFFFFFFFE) - (~&a22 | 0x63F7B27F)) ^ 0x844816C3) * v25;
  a22 = &a12;
  a23 = v27 ^ 0x7E746F71;
  a24 = (v26 + 178) ^ v27;
  v28 = (*(v24 + 8 * ((v26 + 1498) ^ 0x2AF)))(&a22);
  return (*(v24 + 8 * (v26 + 1498)))(v28);
}

uint64_t sub_70778@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16) + v4;
  v8 = *(*(a4 - 132921991) + (((((v7 & (v6 - 181)) - 1058228156) ^ 0xE925178A) - 1936393310 + ((2 * ((v7 & (v6 - 181)) - 1058228156)) & 0xD24A2F10)) & *(v5 - 464343834)));
  v9 = __ROR8__(v7 & (v6 + 2395 - 2576), 8);
  v10 = (((v9 + v8) | 0xA110D07DE8BAB797) - ((v9 + v8) | 0x5EEF2F8217454868) + 0x5EEF2F8217454868) ^ 0xA98F9526497A0782;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xD8D188F9068EB840;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x7E1F3531EE2817FLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xBEACFB9F4D191338;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x8A4943FA3C1BB996;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x8F826D48DCAD4006;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((v22 + v21) | 0x6B0DFB8E1CEC9CBLL) - ((v22 + v21) | 0xF94F20471E313634) - 0x6B0DFB8E1CEC9CCLL) ^ 0x38C38045714D7968;
  v24 = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v21, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a2 + 8 * v6))();
}

uint64_t sub_7098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x540] = a8;
  v9 = LODWORD(STACK[0x52C]) - 1242926472;
  LODWORD(STACK[0x52C]) = v8 + 272;
  v10 = STACK[0x508];
  return (*(STACK[0x548] + 8 * ((21 * (v9 == ((v8 + 272) ^ 0xDDD4095E))) ^ v8)))();
}

uint64_t sub_709E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48) - 1697502258;
  v5 = v4 < ((v2 - 1141) | 0xC5u) - 1697502462;
  v6 = v4 > v3 + 864280661;
  if ((v3 + 864280661) < 0x9AD22BC9 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(a2 + 8 * ((121 * !v7) ^ (v2 + 454))))();
}

uint64_t sub_70B90@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  a8 = v9 + 1583996299 * ((&a8 & 0x20B9A369 | ~(&a8 | 0x20B9A369)) ^ 0x96BB9D89) - 354;
  a9 = a1;
  v11 = (*(v10 + 8 * (v9 ^ 0x994)))(&a8);
  return (*(v10 + 8 * v9))(v11);
}

uint64_t sub_70C6C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v10 = 9002 * (a2 + 43 + *(v8 + (3013 * v2 + 4661111) % 0x1188u) - 125) + 114181368;
  v11 = v10 - (((326095241 * v10) >> 32) >> 10) * v4;
  v12 = *(a1 + 4 * ((v11 ^ 0x3F7BD9CB6FF6FDEFLL) + ((2 * v11) & 0x7BDE)) + 0x21098D240240844);
  LODWORD(v11) = 3013 * (BYTE2(v12) ^ 0x44) + 10089062;
  v13 = v7 + 9002 * v2 - ((((v7 + 9002 * v2) * v3) >> 32) >> 12) * v4;
  v14 = *(v8 + (3013 * (((v12 ^ 0xD6E29349) + 430331039) ^ ((v12 ^ 0x4C9D26E2) - 2082873034) ^ ((v12 ^ 0x9A7FB55D) + 1429959307)) - 1944170300) % 0x1188);
  v15 = v14 & 0xF1 ^ 0xBB;
  v16 = v14 ^ 2;
  *(v6 + 4 * ((v13 ^ 0x3BFFFC4EFF1F5E36) + ((2 * v13) & 0x3C6C)) + 0x10000EC403828728) = ((v14 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (((2 * (v14 & 3)) ^ 0x72) & v16 ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) & 0x50 | 0xD2D45A09) ^ ((v14 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (((2 * (v14 & 3)) ^ 0x72) & v16 ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xFFFFFF0E) & ((((((*(v8 + v11 - 4488 * (((30623653 * v11) >> 32) >> 5)) - 125) << 8) | (*(v8 + (3013 * (((HIBYTE(v12) ^ 0x91DCBFB) + 797466144) ^ ((HIBYTE(v12) ^ 0xCB8B7939) - 316740386) ^ ((HIBYTE(v12) ^ 0xC296B2F6) - 469555437)) - 502415591) % 0x1188) << 16) | (*(v8 + v5 + 3013 * ~(v12 >> 8) - 4488 * (((30623653 * (v5 + 3013 * ~(v12 >> 8))) >> 32) >> 5)) - 125)) << 8) - 2097152000) ^ 0xE690A5AF);
  return (*(v9 + 8 * ((50 * (v2 != 255)) ^ a2)))(0);
}

uint64_t sub_70F54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v8 * a1 + 69279392) % ((v9 ^ 0xDF2u) + 12331);
  *(a8 + 4 * ((v12 ^ 0x31F7FDBDBF6F7CBFLL) + ((2 * v12) & 0x797E)) + 0x3820090902420D04) = *(a8 + 4 * ((((v8 * a1 + v10) % 0x34AFu) ^ 0x3BB42E79E1FED4FDLL) + ((2 * ((v8 * a1 + v10) % 0x34AFu)) & 0x29FA)) + 0x112F46187804AC0CLL);
  return (*(v11 + 8 * ((214 * (v8 == 255)) ^ v9)))();
}

uint64_t sub_7106C(uint64_t a1, int a2)
{
  v5 = *(v4 + 4 * ((((v3 + 9002 * a2) % 0x34AFu) ^ (19 * (v2 ^ 0x990u) - 0x24400061E10025A0)) + ((2 * ((v3 + 9002 * a2) % 0x34AFu)) & 0x37DE)) - 0x6EFFFE787BFF6FBCLL);
  *(STACK[0x6C0] + (3013 * a2 + 5438465) % 0x1188u) = (((v5 ^ 0xE) - 68) ^ ((v5 ^ 0xB5) + 1) ^ ((v5 ^ 0x4D) - 7)) + 57;
  return (*(STACK[0x6C8] + 8 * ((865 * (a2 == 255)) ^ (v2 - 128))))();
}

uint64_t sub_711B4@<X0>(uint64_t a1@<X8>)
{
  *v4 = v1;
  if (v6)
  {
    v8 = 4;
  }

  else
  {
    v8 = v5;
  }

  *v3 = v8;
  *v2 = v8 + 1;
  return (*(a1 + 8 * (v7 - 1904)))();
}

uint64_t sub_71284(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, void *a7)
{
  LODWORD(STACK[0x510]) = a4;
  v13 = ((((((v8 - 1672) | 0x680) ^ 0x2047A3u) + 1645 * a4) % 0xA88) ^ 0x99E2FDAD7DBFF5A6) + v12 + ((2 * (((((v8 - 1672) | 0x680) ^ 0x2047A3u) + 1645 * a4) % 0xA88)) & 0xB4C);
  v14 = *(v13 + 0x5B3CD5B02A8960EELL);
  v15 = *v7;
  v16 = *STACK[0x538];
  LODWORD(v13) = v13 - 2109732262;
  v17 = (v13 + *(v16 + (v15 & v11)) + v11);
  v18 = *a7 ^ 0xF1E76555;
  LODWORD(v13) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v17 & v18)) ^ v14 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + 2) & v18)) ^ (110 * v13);
  LODWORD(v13) = 1645 * (((v13 ^ 0x534C629D) + 682071099) ^ ((v13 ^ 0x90C67263) - 349338427) ^ ((v13 ^ 0xC38A10B8) - 1201543648)) - 1259615589;
  v19 = *(((v13 % 0xA88) ^ 0x7EDFCFFF575FFB56) + v12 + ((2 * (v13 % 0xA88)) & 0x16AC) + 0x7640035E50E95B3ELL);
  v20 = STACK[0x518] + 4 * ((v10 + 551 * a4) % 0x1D48u);
  v21 = (*(v16 + (v15 & STACK[0x540])) + v9 + v20);
  *(v20 + a2) = (v20 * a5) ^ 0x2AE76B2A ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v21 & v18)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 - 2) & v18));
  return (*(STACK[0x548] + 8 * v8))();
}

uint64_t sub_714D4@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = *(a2 + 4 * ((((v4 + 9002 * a1) % 0x34AFu) ^ 0x2FFBF77FDFDCFDD5) + ((2 * ((v4 + 9002 * a1) % 0x34AFu)) & 0x7BAA)) + 0x40102200808C08ACLL);
  *(v3 + (v5 + 3013 * a1) % 0x1188u) = (((v7 ^ 0x68) - 123) ^ ((v7 ^ 0x9B) + 120) ^ ((v7 ^ 5) - 22)) + 98;
  return (*(v6 + 8 * ((1392 * (a1 == 255)) ^ (v2 - 1629))))();
}

uint64_t sub_715F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 128) = &a19;
  *(v23 - 116) = v20 - 434465113 * ((-2 - ((v22 ^ 0xE80008C6 | 0x169DD611) + (v22 ^ 0x15410 | 0xE96229EE))) ^ 0xE25C8976) + 323;
  v24 = (*(v21 + 8 * (v20 ^ 0xB2B)))(v23 - 128);
  *(a11 + 20 * v19 + 4) = *(v23 - 120);
  return (*(v21 + 8 * (v20 + 143)))(v24);
}

uint64_t sub_71710(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, void *a7, int a8)
{
  v11 = (v8 + 348) * a1;
  v12 = STACK[0x518] + 4 * (v11 + v9 - (((((v11 + v9) >> 3) * a5) >> 32) >> 7) * a8);
  v13 = STACK[0x518] + 4 * (v11 + 3120313 - (((((v11 + 3120313) >> 3) * a5) >> 32) >> 7) * a8);
  v14 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v15 = *a7 ^ 0xF1E76555;
  *(v13 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + v14 + v10) & v15)) ^ *(v12 + a2) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + v14 + 1527793161) & v15)) ^ (1912024365 * v13) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v14 + v10) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v14 + 1527793161) & v15)) ^ (1912024365 * v12);
  return (*(STACK[0x548] + 8 * ((52 * (a1 != 255)) ^ v8)))();
}

uint64_t sub_718CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, int a23, unsigned int a24)
{
  v29 = *(a10 + 16);
  *v29 = v27;
  a24 = v26 - (((&a22 | 0xD2934E2A) - (&a22 & 0xD2934E2A)) ^ 0x57A6846B) * v28 + v25 - 2516;
  a22 = &a12;
  v30 = (*(v24 + 8 * (v25 + 169)))(&a22);
  v31 = a23;
  *v29 = a23;
  return (*(v24 + 8 * ((81 * (v31 == v27 + ((v25 + 47) ^ 0x80C) - 578)) ^ v25)))(v30);
}

uint64_t sub_71B20@<X0>(int a1@<W8>)
{
  v4 = v1 + 301;
  v5 = (v1 + 2078355451) & 0x841ECBAF;
  v6 = *v2;
  v7 = v2[4];
  return (*(v3 + 8 * ((44 * ((v4 ^ (a1 < (v5 ^ 0x38B))) & 1)) ^ v4)))();
}

uint64_t sub_71BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v12 = STACK[0x520];
  v13 = ((((a3 ^ 0x20405Cu) + 1645 * v9) % 0xA88) ^ 0x6EF777FCFBFBFED7) + STACK[0x520] + ((2 * (((a3 ^ 0x20405Cu) + 1645 * v9) % 0xA88)) & 0x1DAE);
  v14 = *v7;
  v15 = *STACK[0x538];
  v17 = (v13 + 67371305 + *(v15 + (v14 & v11)) + v11);
  v18 = *a7 ^ 0xF1E76555;
  v19 = qword_191540 ^ 0xDDC772C6444EEA48;
  LODWORD(v13) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v17 & v18)) ^ *(v13 - 0x79D7A49F53B2A843) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + 2) & v18)) ^ (110 * (v13 + 41));
  LODWORD(v13) = 1645 * (((v13 ^ 0xAD211ED6) + 1625092164) ^ ((v13 ^ 0x1DA684F1) - 799315355) ^ ((v13 ^ 0xB0879A61) + 2105177333)) + 1465630429;
  LODWORD(STACK[0x510]) = v9;
  v20 = *(((v13 % 0xA88) ^ 0x58DBF9FFE95EFFBFLL) + v12 + ((2 * (v13 % 0xA88)) & 0x1F7E) - 0x63BC26A24115A92BLL);
  v21 = STACK[0x518] + 4 * ((v10 + 551 * v9) % 0x1D48u);
  v22 = (*(v15 + (v14 & STACK[0x540])) + v8 + v21);
  *(v21 + a2) = (v21 * a5) ^ 0x2AE76B2A ^ *(v19 + (v22 & v18)) ^ *(v19 + ((v22 - 2) & v18));
  return (*(STACK[0x548] + 8 * a3))();
}

uint64_t sub_71E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v16 = 4 * v12;
  *(a12 + v16) = (1 << *(v14 + 689)) - 159772723 - ((2 << *(v14 + 689)) & ((v15 - 863) ^ 0x77E ^ a10));
  *(v14 + 4 * v12 + 1332) = (1 << *(v14 + 689)) - 159772723 - ((2 << *(v14 + 689)) & 0xECF41F9A);
  *(a11 + v16) = -159772723;
  return (*(v13 + 8 * (v15 - 863)))();
}

uint64_t sub_852BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void), unint64_t a18, int a19, __int16 a20, char a21, unsigned __int8 a22, unsigned __int8 *a23)
{
  v23 = a23;
  v24 = -a23 & 7;
  if (v24 > a18)
  {
    LODWORD(v24) = a18;
  }

  if (v24 > 3)
  {
    if (v24 > 5)
    {
      if (v24 != 6)
      {
        if (v24 != 7)
        {
          goto LABEL_20;
        }

        *a23 = a22;
        v23 = a23 + 1;
      }

      *v23++ = a22;
    }

    else if (v24 == 4)
    {
LABEL_16:
      *v23++ = a22;
      goto LABEL_17;
    }

    *v23++ = a22;
    goto LABEL_16;
  }

  switch(v24)
  {
    case 1:
LABEL_19:
      *v23++ = a22;
      break;
    case 2:
LABEL_18:
      *v23++ = a22;
      goto LABEL_19;
    case 3:
LABEL_17:
      *v23++ = a22;
      goto LABEL_18;
  }

LABEL_20:
  v25 = a18 - v24;
  if (v25 >= 8)
  {
    v26 = 0x101010101010101 * a22;
    v27 = ((v25 >> 3) + 7) >> 3;
    v28 = (v25 >> 3) & 7;
    if (v28 > 3)
    {
      if (((v25 >> 3) & 7) <= 5)
      {
        if (v28 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v28 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v25 >> 3) & 7) > 1)
    {
      if (v28 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v28)
    {
      goto LABEL_39;
    }

    do
    {
      *v23 = v26;
      v23 += 8;
LABEL_33:
      *v23 = v26;
      v23 += 8;
LABEL_34:
      *v23 = v26;
      v23 += 8;
LABEL_35:
      *v23 = v26;
      v23 += 8;
LABEL_36:
      *v23 = v26;
      v23 += 8;
LABEL_37:
      *v23 = v26;
      v23 += 8;
LABEL_38:
      *v23 = v26;
      v23 += 8;
LABEL_39:
      *v23 = v26;
      v23 += 8;
      --v27;
    }

    while (v27);
  }

  v29 = v25 & 7;
  if (v29 > 3)
  {
    if (v29 > 5)
    {
      if (v29 != 6)
      {
        *v23++ = a22;
      }

      *v23++ = a22;
    }

    else if (v29 == 4)
    {
      goto LABEL_53;
    }

    *v23++ = a22;
LABEL_53:
    *v23++ = a22;
LABEL_54:
    *v23++ = a22;
LABEL_55:
    *v23++ = a22;
    goto LABEL_56;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (!v29)
  {
    return a17();
  }

LABEL_56:
  *v23 = a22;
  return a17();
}

uint64_t sub_85448@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16) + v4;
  v9 = *(*(a4 - 132921991) + (((v8 & 0xFFFFFFF8) + 916900720) & *(v5 - 464343834)));
  v10 = (__ROR8__(v8 & (v7 - 2576), 8) + v9) ^ 0x89F455BA1C0B015;
  v11 = __ROR8__(v10, 8);
  v12 = v10 ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) | 0x3929F060E6933D90) - (v11 + v12) - 0x1C94F83073499EC8) ^ 0xC44570C975C72688;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x8ED2B99F862208BALL) - (v15 + v14) + 0x3896A3303CEEFBA2) ^ 0x3F775063220C7ADDLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xBEACFB9F4D191338;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x8A4943FA3C1BB996;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8F826D48DCAD4006;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((v26 + v25 - ((2 * (v26 + v25)) & 0x810F9595AACD0242) + 0x4087CACAD5668121) ^ 0x66A8F5151A829E6DLL) >> (8 * (v8 & 7u))) ^ *v8;
  return (*(a2 + 8 * v6))();
}

uint64_t sub_85658(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, int a8)
{
  v13 = STACK[0x518] + 4 * (v9 * a8 + v11 - (((((v9 * a8 + v11) >> 3) * a6) >> 32) >> 7) * v10);
  v14 = STACK[0x518] + 4 * (v9 * a8 + 145464 - (((((v9 * a8 + 145464) >> 3) * a6) >> 32) >> 7) * v10);
  v15 = *(*STACK[0x538] + (*v8 & STACK[0x540]));
  v16 = *a7 ^ 0xF1E76555;
  *(v14 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v14 + v15 + v12) & v16)) ^ *(v13 + a2) ^ (1912024365 * v14) ^ (1912024365 * v13) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v14 + v15 + 1527793161) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + v15 + v12) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + v15 + 1527793161) & v16));
  return (*(STACK[0x548] + 8 * ((111 * (v9 != 255)) ^ a1)))();
}

uint64_t sub_8578C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  a24 = v27 - ((2 * (&a22 & 0xBEA700) - &a22 - 12494594) ^ 0x7A7492BF) * v24 + v28;
  a22 = v26;
  v29 = (*(v25 + 8 * (v28 ^ 0xA83)))(&a22);
  return (*(v25 + 8 * v28))(v29);
}

uint64_t sub_85804@<X0>(int a1@<W0>, int a2@<W8>)
{
  v10 = *(STACK[0x6C0] + a2 * v3 + 4661111 - (((((a2 * v3 + 4661111) >> 3) * v6) >> 32) >> 4) * v7);
  v11 = *(STACK[0x6C0] + ((v10 | ((v10 < 0x7D) << 8)) + 564466265) * (((a1 + 121) | 0x60) ^ 0x9AD) + 72907484 - (((((((v10 | ((v10 < 0x7D) << 8)) + 564466265) * (((a1 + 121) | 0x60) ^ 0x9AD) + 72907484) >> 3) * v6) >> 32) >> 4) * v7);
  *(v9 + 4 * (((v8 + a2 * v2 - ((((v8 + a2 * v2) * v4) >> 32) >> 12) * v5) ^ 0x1F757BEB3FDF171DLL) + ((2 * (v8 + a2 * v2 - ((((v8 + a2 * v2) * v4) >> 32) >> 12) * v5)) & 0x2E3ALL)) - 0x7DD5EFACFF7C5C74) = 876937206;
  return (*(STACK[0x6C8] + 8 * a1))();
}

uint64_t sub_859D8@<X0>(uint64_t a1@<X1>, void *a2@<X6>, int a3@<W7>, int a4@<W8>)
{
  v9 = (((1645 * a3 + 2113825) % 0xA88u) ^ 0xD3FBDEBE7B4FDEF2) + v8 + ((((1645 * a3 + 2113825) % 0xA88u) << (53 * (a4 ^ 0x2Au) + 70)) & 0x1DE4);
  v10 = *(v9 + 0x2123F49F2CF977A2);
  v11 = *v4;
  v12 = *STACK[0x538];
  LODWORD(v9) = v9 - 2068831986;
  v13 = (v9 + *(v12 + (v11 & v7)) + v7);
  v14 = *a2 ^ 0xF1E76555;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v13 & v14)) ^ v10 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + 2) & v14)) ^ (110 * v9);
  LODWORD(v9) = 1645 * (((v9 ^ 0x626FA2E1) + 2004187612) ^ ((v9 ^ 0xB30C99B8) - 1508490621) ^ ((v9 ^ 0xD1633B1F) - 998645722)) + 1655060986;
  v15 = *(((v9 % 0xA88) ^ 0x6F769D3ED3AF3DF9) + v8 + ((2 * (v9 % 0xA88)) & 0x1BF2) - 0x7A56C9E12B65E765);
  v16 = STACK[0x518] + 4 * ((v6 + 551 * a3) % 0x1D48u);
  v17 = (*(v12 + (v11 & STACK[0x540])) + v5 + v16);
  *(v16 + a1) = (1912024365 * v16) ^ 0x2AE76B2A ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v17 & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 - 2) & v14));
  LODWORD(STACK[0x510]) = a3;
  return (*(STACK[0x548] + 8 * (a4 + 466)))(&qword_191540);
}

uint64_t sub_85D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = STACK[0x518] + 4 * ((v9 + 551 * v8) % 0x1D48u);
  v14 = *v7;
  v15 = *STACK[0x538];
  v16 = STACK[0x530];
  v17 = *(v13 + a2);
  v18 = v13 + *(v15 + (v14 & STACK[0x540]));
  v19 = ((1645 * v8 % 0xA88u) ^ 0xB67BBFFD1FB5FEDFLL) + v12 + ((2 * (1645 * v8 % 0xA88u)) & 0x1DBE);
  v20 = *a7 ^ 0xF1E76555;
  v21 = (*(v15 + (v14 & v10)) + v10 + v19 - 532020959);
  *(v19 + 0x3EA41360889357B5) = (110 * (v19 + 33)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v21 & v20)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((((v11 - 514852563) & 0x1EB00DB7) + 1527793161 + v18 - 2055) & v20)) ^ v17 ^ (45 * v13) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + 1527793161) & v20)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 + 2) & v20)) ^ 0x6C;
  return (*(STACK[0x548] + 8 * ((1198 * (v8 == 255)) ^ v11)))();
}

uint64_t sub_85F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, char *a25)
{
  v30 = 1600728529 * (((&a22 | 0x2DCE0E5) + (~&a22 | 0xFD231F1A)) ^ 0x87E92AA5);
  a22 = v30 ^ v28;
  a24 = (v27 + v26 + 466) ^ v30;
  a25 = &a12;
  v31 = (*(v25 + 8 * (v26 ^ 0xACB)))(&a22);
  return (*(v25 + 8 * ((178 * (a23 == v29)) ^ v26)))(v31);
}

uint64_t sub_860F0@<X0>(int a1@<W0>, void *a2@<X6>, int a3@<W8>)
{
  LODWORD(v8) = (((a3 + 62) ^ 0xFAu) * a1 + 2113825) % 0x2A20;
  if (v8 >> 4 >= 0x151)
  {
    LODWORD(v8) = v8 - 5392;
  }

  if (v8 >= 0xA88)
  {
    v8 = (v8 - 2696);
  }

  else
  {
    v8 = v8;
  }

  v9 = (v8 ^ 0x77FFF735AA6F8FF9) + STACK[0x520] + ((2 * v8) & 0x154DF1FF2);
  v10 = *v3;
  v11 = *STACK[0x538];
  v12 = STACK[0x530];
  v13 = *(v11 + (v10 & v5));
  v14 = *a2 ^ 0xF1E76555;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + 1435529223 + v13 + v5) & v14)) ^ *(v9 + 0x7D1FDC27FDD9C69BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + 1435529223 + v13 + v5 + 2) & v14)) ^ (110 * (v9 + 7));
  LODWORD(v9) = (((v9 ^ 0x7019375C) - 1883247531) ^ ((v9 ^ 0x39873335) - 970856386) ^ ((v9 ^ 0x499E042F) - 1237786840)) * v6 - 1073135301;
  v15 = STACK[0x518] + 4 * (v9 - ((((v9 >> 3) * v4) >> 32) >> 7) * v7);
  v16 = *(v11 + (v10 & STACK[0x540]));
  LODWORD(v11) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + 1527793161) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + LODWORD(STACK[0x52C])) & v14)) ^ *(v15 - 0x40E8C283FA03C307);
  v17 = (v11 ^ (1912024365 * v15)) >> 24;
  v18 = v11 ^ (16198957 * v15);
  v19 = (v11 ^ (45 * v15));
  LODWORD(v15) = ((v11 ^ (11565 * v15)) >> 8) ^ 0x6B;
  LODWORD(v10) = BYTE2(v18) ^ 0xE7;
  v20 = 1645 * (((v19 ^ 0x7533399D) - 400932573) ^ ((v19 ^ 0xCA157CDF) + 1463551073) ^ ((v19 ^ 0xBF264568) + 571424216)) + 481814040;
  v21 = (1645 * (((v17 ^ 0xDD0EE091) - 314702024) ^ ((v17 ^ 0x4A79E108) + 2051606191) ^ ((v17 ^ 0x977701B3) - 1488460266)) + 1442045165) % 0xA88;
  v22 = v21 ^ 0x7FEFBBBBF7FF7D73;
  v23 = (2 * v21) & 0x1AE6;
  v24 = 1645 * v10 + 3391990 - 2696 * (((12744711 * (1645 * v10 + 3391990)) >> 32) >> 3);
  v25 = v22 + STACK[0x520] + v23;
  v26 = 1645 * v15 + 3391990 - 2696 * (((12744711 * (1645 * v15 + 3391990)) >> 32) >> 3);
  v27 = ((v20 % 0xA88) ^ 0x3F3BDAB77D78ADBBLL) + STACK[0x520] + ((2 * (v20 % 0xA88)) & 0x1B76);
  v28 = *(v27 - 0x4A1C0759D52F5727);
  v29 = (v26 ^ 0xFF8DBBFFDFDDBF39) + STACK[0x520] + ((2 * v26) & 0x1E72);
  v30 = *(v29 - 0xA6DE8A2379468A5);
  v31 = v29 + 539115719;
  LODWORD(v27) = v27 - 2105060795;
  v32 = (v24 ^ 0x75FFFFF7BBFC7F3FLL) + STACK[0x520] + ((2 * v24) & 0x1E7E);
  LODWORD(v32) = ((*(v32 + 0x7F1FD365EC4CD755) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 + 1141080257 + v13 + v5) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 + 1141080257 + v13 + v5 + 2) & v14)) ^ (110 * (v32 - 63)) ^ 0x46) << 8) | ((*(v25 + 0x753017A1B049D921) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 134251149 + v13 + v5) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 134251149 + v13 + v5 + 2) & v14)) ^ (110 * (v25 - 115)) ^ 0x46) << 16);
  v33 = (((2 * a1) & 0xA14) + (a1 ^ 0x50A)) * v6;
  LODWORD(v10) = (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + v13 + v5) & v14)) ^ v30 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + v13 + v5 + 2) & v14)) ^ (110 * v31) ^ 0x18377F) & ~v32;
  v34 = STACK[0x518] + 4 * (v33 - ((((v33 >> 3) * v4) >> 32) >> 7) * v7);
  *(v34 - 0x40E8C283FA03C307) = (1912024365 * v34) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v34 + LODWORD(STACK[0x52C])) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v34 + 1527793161) & v14)) ^ 0x92189656 ^ ((((v10 | v32 & 0xE7C800) << 8) ^ 0xA0C8C4FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + v13 + v5) & v14)) ^ v28 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + v13 + v5 + 2) & v14)) ^ (110 * v27) ^ 0xB8DFED3A) | ((v10 | v32 & 0xE7C800) << 8) & 0x47201200);
  return (*(STACK[0x548] + 8 * ((206 * (a1 == 255)) ^ a3)))();
}

uint64_t sub_86724(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = 1645 * (((2 * v8) & 0xC0C) + (v8 ^ 0x606u)) % 0xA88;
  v14 = *v7;
  v15 = STACK[0x518] + 4 * ((v10 + 551 * v8) % 0x1D48u);
  v16 = *STACK[0x538];
  v17 = STACK[0x530];
  v18 = *a7 ^ 0xF1E76555;
  v19 = (v15 + *(v16 + (v14 & STACK[0x540])) + v9);
  v20 = LODWORD(STACK[0x52C]);
  v21 = (v13 ^ 0x7BE15EFBB5FF77EBLL) + STACK[0x520] + ((2 * v13) & 0xFD6);
  v22 = (v21 + 1241548821 + *(v16 + (v14 & v12)) + v12);
  *(v21 + 0x793E7461F249DEA9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v22 & v18)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 - 2) & v18)) ^ *(v15 + v11) ^ (45 * v15) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v19 & v18)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v22 + 2) & v18)) ^ (110 * (v21 + 21)) ^ 0x6C;
  return (*(STACK[0x548] + 8 * ((3142 * (((a1 + 59) ^ 0x841) + v8 == 256)) ^ (a1 - 1023))))();
}

uint64_t sub_86930@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v7 = (a1 + 4 * v2 + 492);
  *v7 = a2;
  v7[1] = a2;
  return (*(v4 + 8 * (((v2 + 8 == v5) * v6) ^ v3)))();
}

uint64_t sub_8699C@<X0>(int a1@<W3>, int a2@<W5>, void *a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v14 = *(*v11 + (*v5 & 0x46B39928));
  v15 = *a3 ^ a5;
  v16 = *v13 ^ v9;
  v17 = (v12 ^ v7 ^ *(v16 + ((v14 + a1 + 1186175272) & v15)) ^ *(v16 + ((v14 + a1 + v10) & v15)));
  v18 = 1645 * (((v17 ^ 0xED28AA5) - 154974256) ^ ((v17 ^ 0x93220946) + 1798554669) ^ ((v17 ^ 0x9DF083A5) + 1709264592)) - 172176272;
  v19 = ((v18 - v18 / 0xA88 * a2) ^ 0x1766E96FFEB9FCC7) + a4 + ((2 * (v18 - v18 / 0xA88 * a2)) & 0x198E);
  *(v19 - 0x224716125670A633) = *(v16 + ((v19 + 21365561 + v14 + 1186175272) & v15)) ^ (v8 - (((((v6 - 9) | 0x24) ^ 3) + ((v6 + 20) & 0x6B)) & (2 * v8)) + 88) ^ *(v16 + ((v19 + 21365561 + v14 + v10) & v15)) ^ (110 * (v19 + 57)) ^ 0x1E;
  return (*(STACK[0x548] + 8 * (v6 ^ (42 * (v8 != 255)))))();
}

uint64_t sub_86B8C@<X0>(uint64_t a1@<X2>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16) + v6;
  v8 = *(*(a5 - 132921991) + (((v7 & 0xFFFFFFF8 ^ (a2 + 1797278227)) - 880377724 + ((2 * (v7 & 0xFFFFFFF8)) & 0xD64095D0)) & *(v5 - 464343834)));
  v9 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v8) ^ 0x89F455BA1C0B015;
  v10 = __ROR8__(v9, 8);
  v11 = v9 ^ __ROR8__(v8, 61);
  v12 = (((v10 + v11) | 0x6F93E663077C07DDLL) - ((v10 + v11) | 0x906C199CF883F822) - 0x6F93E663077C07DELL) ^ 0xB7426E9A01F2BF9DLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x7E1F3531EE2817FLL;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) & 0x2526BC77D3F5940CLL) - (v15 + v16) + 0x6D6CA1C4160535F9) ^ 0xD3C05A5B5B1C26C1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0x534097B3EF343CF6) - (v19 + v18) + 0x565FB4260865E185) ^ 0x23E90823CB81A7EDLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8F826D48DCAD4006;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((((2 * (v26 + v25)) & 0x7AC2CF5E01DEF5A2) - (v26 + v25) - 0x3D6167AF00EF7AD2) ^ 0xE4B1A78F30F49A62) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a3 + 8 * a2))();
}

uint64_t sub_86E00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 8 * (*(a2 + 12) - *(a2 + 20)) - (v2 + v3) - 1029578136;
  *(result + 16) = (v4 ^ 0xFFBBE7CC) + 1559599808 + ((2 * v4) & 0xFF77CF98);
  return result;
}

uint64_t sub_86E54@<X0>(int a1@<W8>)
{
  v4 = ((v1 ^ 0x2A) + 8704) * a1;
  *(v2 + 4 * ((((v4 + 43866746) % 0x34AFu) ^ 0x2EFDB7A7A5BFD1FFLL) + ((2 * ((v4 + 43866746) % 0x34AFu)) & 0x23FE)) + 0x440921616900B804) = *(v2 + 4 * ((((v4 + v3) % 0x34AFu) ^ 0x1FFEEFB1FDFD7BEBLL) + ((2 * ((v4 + v3) % 0x34AFu)) & 0x77D6)) - 0x7FFBBEC7F7F5EFACLL);
  return (*(STACK[0x6C8] + 8 * ((92 * (((a1 + 1 - v1) | (v1 - (a1 + 1))) >= 0)) ^ (v1 + 827))))();
}

uint64_t sub_87044(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = (((1645 * a4 + 2113825) % 0xA88u) ^ 0x9EB6FCBDF717F9AFLL) + STACK[0x520] + ((2 * ((1645 * a4 + 2113825) % 0xA88u)) & 0x135E);
  v11 = *v7;
  v12 = *STACK[0x538];
  v13 = *(v12 + (v11 & v9));
  v14 = *a7 ^ 0xF1E76555;
  LODWORD(v10) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + 149423697 + v13 + v9) & v14)) ^ *(v10 + 0x5668D69FB1315CE5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + 149423697 + v13 + v9 + 2) & v14)) ^ (110 * (v10 + 81));
  v15 = STACK[0x518] + 4 * ((551 * (((v10 ^ 0x66C7834C) - 1652720767) ^ ((v10 ^ 0x8B0419BF) + 1891557748) ^ ((v10 ^ 0xEDC39AB5) + 377053818)) + 816222865) % 0x1D48);
  v16 = STACK[0x540];
  v17 = *(v12 + (v11 & STACK[0x540]));
  LODWORD(v10) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v17 + LODWORD(STACK[0x52C])) & v14)) ^ *(v15 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v17 + 1527793161) & v14));
  v18 = ((v10 ^ (11565 * v15)) >> 8) ^ 0x6B;
  LODWORD(v12) = 1645 * (((((v10 ^ (1912024365 * v15)) >> 24) ^ 0xD66F27F2) + 980138545) ^ ((((v10 ^ (1912024365 * v15)) >> 24) ^ 0x8AA1F39B) + 1722117722) ^ ((((v10 ^ (1912024365 * v15)) >> 24) ^ 0x5CCED443) - 1328920190)) + 1720258497;
  LODWORD(v11) = 1645 * (((v10 ^ (16198957 * v15)) >> 16) ^ 0xE7) + 3391990;
  v19 = v11 - 2696 * (((12744711 * v11) >> 32) >> 3);
  v20 = (v19 ^ 0x5F7FBF4FEB9DFF75) + STACK[0x520] + ((2 * v19) & 0x1EEA);
  LODWORD(v10) = 1645 * ((((v10 ^ (45 * v15)) ^ 0x18E89131) + 2023733813) ^ (((v10 ^ (45 * v15)) ^ 0xB9853558) - 638443938) ^ (((v10 ^ (45 * v15)) ^ 0xA16DA443) - 1055223993)) + 577977990;
  v21 = ((v12 % 0xA88) ^ 0xF7FE5FFBBBFF7BF4) + STACK[0x520] + ((2 * (v12 % 0xA88)) & 0x17E8);
  v22 = (1645 * v18 + 3389294) % 0xA88u;
  v23 = ((v10 % 0xA88) ^ 0xB5B6EF8F7D7FD2BBLL) + STACK[0x520] + ((2 * (v10 % 0xA88)) & 0x576);
  v24 = *(v23 + 0x3F68E3CE2AC983D9);
  v25 = v23 - 2105529019;
  v26 = (v22 ^ 0xFFCFFD6F87F7FDFBLL) + STACK[0x520] + ((2 * v22) & 0x1BF6);
  v27 = STACK[0x52C];
  LODWORD(v23) = ((*(v20 - 0x6A5FEBF24354A8E1) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + 341966987 + v13 + v9) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + 341966987 + v13 + v9 + 2) & v14)) ^ (110 * (v20 - 117)) ^ 0x46) << 8) | ((*(v21 - 0x2DE8C9E13B62560) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 + 1140884492 + v13 + v9) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v21 + 1140884492 + v13 + v9 + 2) & v14)) ^ (110 * (v21 + 12)) ^ 0x46) << 16);
  LODWORD(v23) = (v23 ^ 0xEE3FFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + 2013790725 + v13 + v9) & v14)) ^ *(v26 - 0xAB02A11DFAEA767) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + 2013790725 + v13 + v9 + 2) & v14)) ^ (110 * (v26 + 5)) ^ 0xEC2769) | v23 & 0x13D800;
  v28 = STACK[0x518] + 4 * ((v8 + 551 * a4) % 0x1D48u);
  LODWORD(v23) = ((v23 << 8) ^ 0x15050FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v13 + v9) & v14)) ^ v24 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v13 + v9 + 2) & v14)) ^ (110 * v25) ^ 0xA15356F0) | (v23 << 8) & 0x5EACA900;
  v29 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v28 + 1527793161) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v28 + LODWORD(STACK[0x52C])) & v14)) ^ v23 & 0x883FED32;
  *(v28 - 0x40E8C283FA03C307) = (1912024365 * v28) ^ 0xA2D00618 ^ v29;
  LODWORD(v20) = *(*STACK[0x538] + (*STACK[0x530] & v16)) + v28;
  v30 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + 1527793161) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + v27) & (qword_190530 ^ 0xF1E76555)));
  LODWORD(v23) = (((v23 & 0x77C012CD ^ 0x130B0711) + 305342872) ^ ((v23 & 0x77C012CD ^ 0x7B1ECEF2) + 2049368181) ^ ((v23 & 0x77C012CD ^ 0xD55DB67) + 208532962)) + 1411022031 + (((v30 ^ v29 ^ 0xF719CD6F) - 676902018) ^ ((v30 ^ v29 ^ 0xA1DFEEAE) - 2124322627) ^ ((v30 ^ v29 ^ 0xDEF14EF3) - 28325662));
  *(v28 - 0x40E8C283FA03C307) = v30 ^ (1912024365 * v28) ^ v23 ^ ((v23 ^ 0x4D0C57D5) - 739308582) ^ ((v23 ^ 0x90CE326) - 1745895637) ^ ((v23 ^ 0x5BE3A8BD) - 989793102) ^ ((v23 ^ 0x7EFFBFBD) - 534977614) ^ 0x4BFBC8D9;
  return (*(STACK[0x548] + 8 * ((249 * (a4 != 255)) ^ a1)))();
}

uint64_t sub_87920@<X0>(int a1@<W8>)
{
  v8 = 23 * (v1 ^ 0x4E1) + 9002 * a1 + 71601655;
  *(*v5 + 4 * (1150 * a1 + 354200 - (((((1150 * a1 + 354200) * v2) >> 32) + ((1150 * a1 + 354200 - (((1150 * a1 + 354200) * v2) >> 32)) >> 1)) >> 11) * v3)) = *(v4 + 4 * (((v8 % 0x34AF) ^ 0x1FFFCBFDBF7FF7FFLL) + ((2 * (v8 % 0x34AF)) & 0x6FFE)) - 0x7FFF2FF6FDFFDFFCLL) ^ v6;
  return (*(v7 + 8 * (((2 * (a1 != 255)) | (4 * (a1 != 255))) ^ v1)))(0);
}

uint64_t sub_879F0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9 = (*(v7 + (3013 * a2 + 4661111) % 0x1188u) - 125) * ((1211 * (v2 ^ 0x159)) ^ 0x2A5C) + 69279392;
  v10 = v9 - (((v9 * v3) >> 32) >> 12) * v4;
  v11 = *(a1 + 4 * ((v10 ^ 0x3BEBFECDFF6FB7DFLL) + ((2 * v10) & 0x6FBE)) + 0x105004C802412084);
  v12 = v6 + 9002 * a2 - ((((v6 + 9002 * a2) * v3) >> 32) >> 12) * v4;
  v13 = *(v7 + (3013 * (((HIBYTE(v11) ^ 0xFBBFB47D) + 1834913906) ^ ((HIBYTE(v11) ^ 0xAADEC5C9) + 1010819526) ^ ((HIBYTE(v11) ^ 0x51617180) - 947890803)) + 952807697) % 0x1188);
  v14 = *(v7 + 3013 * ~(v11 >> 8) + 10093550 - 4488 * (((30623653 * (3013 * ~(v11 >> 8) + 10093550)) >> 32) >> 5)) - 125;
  LOBYTE(v11) = *(v7 + (3013 * (((v11 ^ 0x43531287) + 49116491) ^ ((v11 ^ 0x73B9CB85) + 839363657) ^ ((v11 ^ 0x30EAD9F4u) + 1901379130)) + 983891650) % 0x1188);
  v15 = v11 & 0x23 | 0xD0;
  v16 = v11 ^ 2;
  LOBYTE(v11) = v11 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v11 & 0x23)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  *(v5 + 4 * ((v12 ^ 0x3FDCFF7F9FAFBFFFLL) + 2 * v12) + 0x8C020181410004) = ((v11 ^ 0xFFFFFFF8) & ((((((*(v7 + 3013 * (BYTE2(v11) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v11) ^ 0x44u) + 10093550)) >> 32) >> 5)) - 125) << 8) | (v13 << 16) | v14) << 8) - 2097152000) ^ 0xC610A3D9) | v11 & 0x26) ^ 0xF2545C0D;
  return (*(v8 + 8 * ((2244 * (a2 == 255)) ^ v2)))();
}

uint64_t sub_87D28@<X0>(int a1@<W1>, int a2@<W3>, uint64_t a3@<X8>)
{
  *(a3 + 52) = (((a1 & 0xFFFFFFF0 ^ 0xBB1EE7FB) + 2128707656) ^ ((a1 & 0xFFFFFFF0 ^ 0xAF6938BA) + 1788239623) ^ ((a1 & 0xFFFFFFF0 ^ (a2 + 317) ^ 0x1477DD1E) - 779568898)) + 1434036874;
  *(a3 + 56) = a1 & 0xF;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_87DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, uint64_t a12)
{
  v18 = ((((2 * &a9) | 0xEF9F84DE) - &a9 - 2010104431) ^ 0xF2FA082E) * v14;
  a12 = v12;
  a11 = v17 ^ v18;
  a9 = v18 ^ 0xF17EB978;
  (*(v13 + 8 * v15))(&a9);
  v19 = (((&a9 | 0x373A15A) - &a9 + (&a9 & 0xFC8C5EA0)) ^ 0x86466B1B) * v14;
  a12 = v12;
  a11 = v17 ^ v19;
  a9 = v19 ^ 0xF17EB978;
  v20 = (*(v13 + 8 * v15))(&a9);
  return (*(v13 + 8 * v16))(v20);
}

uint64_t sub_87EA4@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W4>, unsigned int a4@<W5>, _DWORD *a5@<X8>)
{
  v8 = (a1 - a2 - 713896) / a4;
  a5[6] = v8;
  v9 = a2 + v8 * a4 - 845288386;
  v10 = a1 - v9 - 846002282;
  a5[11] = v9;
  a5[12] = v10;
  v11 = (v6 - 1460784323) < 0xC4674584;
  if (v11 == v10 > (((v7 - 1564) | a3) ^ 0x3B98BB59u))
  {
    v11 = v10 + ((v7 - 83) ^ 0xC467406D) < v6 - 1460784323;
  }

  return (*(v5 + 8 * ((88 * !v11) ^ v7)))();
}

uint64_t sub_87F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v16 = v11;
  v17 = 1 << v11;
  v18 = ((v7 + 2053) ^ 0x3A5D81) + 1645 * v11;
  v19 = (2 * (1 << v11)) & 0xFFFFFF83;
  v20 = *STACK[0x530];
  v21 = *(*v6 + (v20 & v14));
  LOBYTE(v17) = v17 - v19 + 65;
  v22 = *(*v6 + (v20 & STACK[0x540]));
  v23 = *(v10 + a2) ^ v8 ^ *((qword_191540 ^ a4) + ((v22 + v10 + v15) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ a4) + ((v22 + v10 + 1527793161) & (qword_190530 ^ 0xF1E76555)));
  v24 = ((v18 % 0xA88) ^ 0xF6DBFCAFFFFCFC5CLL) + a1 + ((2 * (v18 % 0xA88)) & 0x18B8);
  v25 = *(v24 - 0x1BC295257B3A5C8) ^ (110 * (v24 - 92)) ^ *((qword_191540 ^ a4) + ((v24 + 197540 + v21 + v14) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ a4) + ((v24 + 197540 + v21 + v14 + 2) & (qword_190530 ^ 0xF1E76555))) ^ v23 ^ 0xAF;
  if (((a6 ^ a5 ^ *((qword_191540 ^ a4) + ((v21 + v9 + v14) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ a4) + ((v21 + v9 + v14 + 2) & (qword_190530 ^ 0xF1E76555))) ^ 0xA9) & (v17 ^ 0x41) ^ v17 & 0xEF) == 0x41)
  {
    v25 = v23 ^ 0xE9;
  }

  *(v12 + a2) = v13 ^ 0x2AE76B2A ^ *((qword_191540 ^ a4) + ((v22 + v12 + v15) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ a4) + ((v22 + v12 + 1527793161) & (qword_190530 ^ 0xF1E76555))) ^ v25 ^ 0xC3;
  return (*(STACK[0x548] + 8 * ((106 * (((((v16 + 1) & 0xF8) - v7) | (v7 - ((v16 + 1) & 0xF8))) >= 0)) ^ (v7 + 1842))))();
}

uint64_t sub_881C8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9 = 9002 * (*(v7 + (3013 * v4 + 4656623) % (99 * (a2 ^ 0x888u) + 3795)) - 125) + 60025336;
  v10 = v9 - (((163047621 * v9) >> 32) >> 9) * v3;
  v11 = *(a1 + 4 * ((v10 ^ 0x3ABEF9DBDABEDAFFLL) + ((2 * v10) & 0x35FE)) + 0x1504189095049404);
  LOBYTE(v10) = *(v7 + 3013 * ~(v11 >> 8) + 10093550 - 4488 * (((30623653 * (3013 * ~(v11 >> 8) + 10093550)) >> 32) >> 5)) - 125;
  v12 = *(v7 + (3013 * (((HIBYTE(v11) ^ 0xB187B2BF) + 1158621250) ^ ((HIBYTE(v11) ^ 0x8D599E18) + 2043741415) ^ ((HIBYTE(v11) ^ 0x3CDE2C93) - 933841298)) - 187421513) % 0x1188);
  v13 = v6 + 9002 * v4 - ((((v6 + 9002 * v4) * v2) >> 32) >> 12) * v3;
  LOBYTE(v11) = *(v7 + (3013 * (((v11 ^ 0xC3576ACD) - 1127358159) ^ ((v11 ^ 0xB3A1A9A0) - 868539810) ^ ((v11 ^ 0x70F6C39B) + 258754663)) + 716406706) % 0x1188);
  v14 = v11 & 0x1D ^ 0x4D;
  v15 = ((*(v7 + 3013 * (BYTE2(v11) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v11) ^ 0x44u) + 10093550)) >> 32) >> 5)) - 125) << 8) | (v12 << 16);
  LOBYTE(v12) = (v14 & 0xFD | (2 * (((((2 * (v11 & 3)) ^ 0x9E) & 2 | v14) ^ ((2 * (v11 & 3)) ^ 0x9E) & v11) & 1))) ^ v11 & (2 * ((((2 * (v11 & 3)) ^ 0x9E) & 2 | v14) ^ ((2 * (v11 & 3)) ^ 0x9E) & v11));
  LOBYTE(v12) = (v14 & 0xFD | (2 * (v12 & 1))) ^ v11 & (2 * v12);
  v16 = v15 & 0xFFFFFF00 | v10;
  LOBYTE(v10) = (v14 & 0xFD | (2 * (v12 & 1))) ^ v11 & (2 * v12);
  LOBYTE(v10) = (v14 & 0xFD | (2 * (v10 & 1))) ^ v11 & (2 * v10);
  LOBYTE(v10) = v11 ^ (2 * ((v14 & 0xFD | (2 * (v10 & 1))) ^ v11 & (2 * v10)));
  *(v5 + 4 * ((v13 ^ 0x3F3BFDDE9F172F17) + ((2 * v13) & 0x5E2E)) + 0x310088583A343A4) = ((v10 ^ 0xFFFFFFE2) & (((v16 << 8) - 2097152000) ^ 0x881D11F6) | v10 & 9) ^ 0xBC59EE09;
  return (*(v8 + 8 * (a2 ^ (16 * (v4 != 255)))))();
}

uint64_t sub_88550()
{
  v3 = *(v1 + 12);
  v4 = *(v1 + 4);
  return (*(v0 + 8 * v2))();
}

uint64_t sub_88570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(v9 + 16) + v7;
  v13 = *(*(v6 - 132921991) + (((v12 & 0xFFFFFFF8) + 916900720) & *(v8 - 464343834)));
  v14 = (__ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8) + v13) ^ (v11 + 0x89F455BA1C0A60DLL);
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) & 0xA43C7B72C84650EALL) - (v15 + v16) - 0x521E3DB964232876) ^ 0x75304ABF9D526FCALL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((v19 + v18) | 0xDB002B92AFADAE51) - ((v19 + v18) | 0x24FFD46D505251AELL) + 0x24FFD46D505251AELL) ^ 0xDCE1D8C1B14F2F2ELL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((v22 + v21) & 0x76D2F684775DEF39 ^ 0x60C22484431D4C01) + ((v22 + v21) ^ 0x1730DB3A3C60A33ALL) - (((v22 + v21) ^ 0x1730DB3A3C60A33ALL) & 0x76D2F684775DEF39)) ^ 0xDF4ED62106245F3BLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x8A4943FA3C1BB996;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x8F826D48DCAD4006;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x3E735FFD9083B0A3;
  return (*(a6 + 8 * v10))(a1, a2, a3, a4, a5, (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v12 & 7u))) ^ *v12, v11);
}

uint64_t sub_88870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v29 = v26 ^ v24;
  v30 = (((&a22 | 0x5B7C3F8D) + (~&a22 | 0xA483C072)) ^ 0xBCC39B30) * v27;
  a22 = v28;
  a23 = v30 ^ 0x7E746F71;
  a24 = (v29 + 562) ^ v30;
  v31 = (*(v25 + 8 * (v29 + 2545)))(&a22);
  return (*(v25 + 8 * v29))(v31);
}

uint64_t sub_888F8@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v8 = *(v7 + 16) + v5;
  v9 = *(*(a4 - 132921991) + (((v8 & 0xFFFFFFF8 ^ 0xFE8C6970) + 941253120 + ((2 * (v8 & 0xFFFFFFF8)) & 0xFD18D2E0)) & *(v4 - 464343834)));
  v10 = v6 ^ 0x89F455BA1C0B6F9 ^ (__ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8) + v9);
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xD8D188F9068EB840;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0xFB521D21722035B4) - 0x256F16F46EFE526) ^ 0xFA48FDC3A7F29BA5;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((v17 + v16) | 0xFF0C05BE2D247493) - ((v17 + v16) | 0xF3FA41D2DB8B6CLL) + 0xF3FA41D2DB8B6CLL) ^ 0x41A0FE21603D67ABLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((v20 + v19) ^ 0xDAF7E5DE64EEA6F5 | 0x9CDE688C92B55115) - ((v20 + v19) ^ 0xDAF7E5DE64EEA6F5 | 0x632197736D4AAEEALL) + 0x632197736D4AAEEALL) ^ 0xCC60CEA8CA404E76;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8F826D48DCAD4006;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((v25 + v24) | 0x63E66CC53D12842CLL) - ((v25 + v24) | 0x9C19933AC2ED7BD3) - 0x63E66CC53D12842DLL) ^ 0x5D953338AD91348FLL;
  v27 = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v24, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * (v8 & 7u))) ^ *v8;
  return (*(a2 + 8 * a1))();
}

uint64_t sub_88B3C@<X0>(int a1@<W8>)
{
  *(v4 + 16) = a1 + v3 + 1155;
  v11 = v3 + v9;
  v12 = v1 + (v6 ^ v7) * v8 + v10;
  v13 = (v11 < v2) ^ (v12 < v2);
  v14 = v11 > v12;
  if (v13)
  {
    v14 = v11 < v2;
  }

  return (*(v5 + 8 * (((2 * (((v6 - 1) ^ v14) & 1)) & 0xF7 | (8 * (((v6 - 1) ^ v14) & 1))) ^ v6)))();
}

uint64_t sub_88BA4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9 = *(v7 + (3013 * a2 + 4661111) % ((16 * v2) ^ 0x53B8u));
  v10 = 9002 * (v9 | ((v9 < 0x7D) << 8)) + 117746160 - ((((9002 * (v9 | ((v9 < 0x7D) << 8)) + 117746160) * v3) >> 32) >> 12) * v4;
  LODWORD(v10) = *(a1 + 4 * ((v10 ^ 0x2EB778D75D3FDFD7) + ((2 * v10) & 0x3FAE)) + 0x45221CA28B0080A4);
  v11 = 3013 * ~(v10 >> 8) + 10093550;
  v12 = *(v7 + (3013 * (((v10 ^ 0x47C98E67) + 2094864701) ^ ((v10 ^ 0x81F31AAB) - 1159229967) ^ ((v10 ^ 0xC63A943A) - 47316126)) - 1489186552) % 0x1188);
  v13 = (3013 * (((BYTE3(v10) ^ 0x3F37A797) + 635510116) ^ ((BYTE3(v10) ^ 0x3325D964) + 703816593) ^ ((BYTE3(v10) ^ 0xC127EC7) + 381994036)) + 525730409) % 0x1188u;
  v14 = v12 & 0x5D ^ 0xED;
  LOBYTE(v10) = *(v7 + v11 - 4488 * (((30623653 * v11) >> 32) >> 5));
  v15 = *(v7 + v13);
  LOBYTE(v11) = v15 & 0x77 ^ 0x7A;
  v16 = v15 ^ 2;
  v17 = v6 + 9002 * a2 - ((((v6 + 9002 * a2) * v3) >> 32) >> 12) * v4;
  v18 = *(v7 + 3013 * (BYTE2(v10) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v10) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v19 = (v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * (((2 * (v12 & 3)) ^ 0x5E) & (v12 ^ 2) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14;
  v20 = v18 & 0x5B ^ 0xEC;
  v21 = v18 ^ 2;
  v22 = v12 ^ (2 * v19);
  v23 = ((v12 << 7) ^ ~(v12 << 6)) << 24;
  LOBYTE(v12) = v18 ^ (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * ((v18 ^ 2) & (2 * v18) & 6 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ 0x5B;
  v24 = v10 & 0x99 ^ 0x8F;
  v25 = v15 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * ((v15 ^ 2) & (2 * v15) & 6 ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0x77;
  v26 = v10 ^ 2;
  HIDWORD(v27) = ((v22 & 0xFC) >> 2) ^ 0x17;
  LODWORD(v27) = v23;
  v28 = (v25 << 16) | (v12 << 8);
  v29 = (v27 >> 30) - ((2 * (v27 >> 30)) & 0x184) + 684220098;
  *(v5 + 4 * ((v17 ^ 0x3B6F3FFF3F33BF5ELL) + ((2 * v17) & 0x7EBC)) + 0x1243000303310288) = v29 & 0x453D ^ 0xCC09B134 ^ (((((v10 ^ (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (((2 * (v10 & 3)) ^ 0x1A) & v26 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xD83422) & ~v28 | v28 & 0x27CB00) << 8) ^ 0x2079B1C2) & (v29 ^ 0xD737A12D);
  return (*(v8 + 8 * ((131 * (a2 == 255)) ^ v2)))();
}

uint64_t sub_89040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v11 = STACK[0x518] + 4 * ((551 * v8 + v9) % 0x1D48u);
  v12 = STACK[0x518] + 4 * ((551 * v8 + 1562636) % 0x1D48u);
  v13 = *a7 ^ 0xF1E76555;
  *(v12 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v10 + ((52 * (v7 ^ 0x199)) ^ 0x5B104217)) & v13)) ^ *(v11 - 0x40E8C283FA03C307) ^ (1912024365 * v12) ^ (1912024365 * v11) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v10 + 1527793161) & v13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v10 + 1527793161 - 2) & v13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((0x7756858B11A3628ELL * (*a7 ^ 0x71B0588CF1E76555) + 0x7756858B11A3628ELL + (v11 + v10 + 1527793161)) & (*a7 ^ 0x71B0588CF1E76555)));
  return (*(STACK[0x548] + 8 * ((2137 * (v8 == 255)) ^ v7)))(0);
}

uint64_t sub_89248@<X0>(int a1@<W8>)
{
  v7 = v4 < v5;
  *(v6 - 120 + (v3 & 0xF)) ^= *(v1 + v3) + *(v1 + v3) * (*(v1 + v3) << (((a1 - 68) | 8) - 7));
  if (v7 == v3 + 1 > 0xBD20DC4B)
  {
    v7 = v2 + v3 + 1289 < v4;
  }

  return (*(STACK[0x548] + 8 * ((15 * !v7) ^ a1)))();
}

uint64_t sub_8931C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 116) = v20 - 434465113 * ((v22 + 914258624 - 2 * ((v22 - 128) & 0x367E7B40)) ^ 0xC3DC511F) + 323;
  *(v22 - 128) = &a19;
  v23 = (*(v21 + 8 * (v20 ^ 0xB2B)))(v22 - 128);
  *(v19 + 44) = *(v22 - 120);
  return (*(v21 + 8 * (v20 + 710)))(v23);
}

uint64_t sub_89408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v19 = ((v6 - 438) ^ 0x8FA) & v14;
  v20 = (1645 * v19 + 3822980) % 0xA88u;
  v21 = v20 ^ 0x6BFF4B5F2369EACBLL;
  v22 = (2 * v20) & 0x1596;
  LODWORD(v20) = (1 << (((v6 + 74) ^ 0xFA) & v14)) - ((2 * (1 << (((v6 + 74) ^ 0xFA) & v14))) & 0x7C) + 62;
  v23 = *STACK[0x530];
  v24 = *STACK[0x538];
  v25 = *(v24 + (v23 & v15));
  v27 = v21 + v10 + v22;
  v28 = *v13 ^ 0xF1E76555;
  v29 = *a1 ^ v11;
  LODWORD(v23) = *(v24 + (v23 & STACK[0x540]));
  v30 = *(v9 + a2) ^ v18 ^ *(v29 + ((v23 + v9 + a6) & v28)) ^ *(v29 + ((v23 + v9 + 1527793161) & v28));
  v31 = ((v19 + 1) & 0xF8) != 0;
  v32 = ((v8 ^ v16 ^ *(v29 + ((v25 + v7 + 1186175272) & v28)) ^ *(v29 + ((v25 + v7 + 1186175274) & v28)) ^ 0x86) & (v20 ^ 0x3E) ^ (v20 | 0x3F)) == 63;
  v33 = *(v27 - 0x76DF78017B209437) ^ (110 * (v27 + 53)) ^ *(v29 + ((v27 - 594143947 + v25 + 1186175272) & v28)) ^ *(v29 + ((v27 - 594143947 + v25 + 1186175274) & v28)) ^ v30 ^ 0x94;
  LODWORD(v23) = v23 + v17;
  v34 = (v23 + a6) & v28;
  v35 = (v23 + 1527793161) & v28;
  if (v32)
  {
    v33 = v30 ^ 0xD2;
  }

  *(v17 + a2) = v12 ^ 0x2AE76B2A ^ *(v29 + v34) ^ *(v29 + v35) ^ v33 ^ 0xF8;
  return (*(STACK[0x548] + 8 * (((8 * v31) | (v31 << 6)) ^ v6)))();
}

uint64_t sub_89628@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 24);
  v5 = v4 + 360045214;
  v6 = v4 > a1 - 360045554;
  v7 = v2 - 1373139156;
  v8 = v6;
  v9 = (v7 < 0x1575DA9E) ^ v8;
  v10 = v5 > v7;
  if (v9)
  {
    v10 = v8;
  }

  return (*(a2 + 8 * ((2033 * v10) ^ a1)))();
}

uint64_t sub_896C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v11 + 8 * (v12 ^ 0x88D)))(*(v10 + 8));
  *(v10 + 8) = 0;
  (*(v11 + 8 * (v12 + 2187)))(v10);
  return (*(v11 + 8 * v12))(a10);
}

uint64_t sub_897B4@<X0>(int a1@<W2>, _DWORD *a2@<X8>)
{
  a2[5] = 1;
  a2[13] = v3;
  a2[14] = 0;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_89824@<X0>(int a1@<W8>)
{
  *(v6 + 412) = a1;
  *(v7 - 128) = v5;
  *(v7 - 116) = v1 - 1600728529 * ((v7 - 128) ^ v4) + v2 + 2094;
  v8 = (*(v3 + 8 * (v2 ^ 0x8D6)))(v7 - 128);
  *(v6 + 408) = *(v7 - 120);
  return (*(v3 + 8 * v2))(v8);
}

uint64_t sub_8988C@<X0>(int a1@<W3>, uint64_t a2@<X7>, int a3@<W8>)
{
  v11 = 9002 * (*(v9 + (a1 * a3 + 4661111) % (((v3 - 2109) | 0x440) ^ 0x155Cu)) - 125) + 36935206;
  v12 = v11 - (((163047621 * v11) >> 32) >> 9) * v5;
  v13 = *(a2 + 4 * ((v12 ^ 0x1EF7F6DB8FDF1FBBLL) + ((2 * v12) & 0x3F76)) - 0x7BDFDB6E3F7C7EECLL);
  v14 = (((HIBYTE(v13) ^ 0x5D055863) + 201323428) ^ ((HIBYTE(v13) ^ 0x69CCD13C) + 1060535037) ^ ((HIBYTE(v13) ^ 0x34C9896B) + 1647518380)) * a3 + 1280321893;
  v15 = v8 + 9002 * a1 - ((((v8 + 9002 * a1) * v4) >> 32) >> 12) * v5;
  v16 = ~(v13 >> 8) * a3 + 10093550;
  LODWORD(v12) = ((~(2 * v13) & 0x2C) + (v13 ^ 0xDE0)) * a3;
  LOBYTE(v13) = *(v9 + v16 - (((30623653 * v16) >> 32) >> 5) * v7) - 125;
  LOBYTE(v12) = *(v9 + v12 - (((15311827 * v12) >> 32) >> 4) * v7);
  LOBYTE(v16) = v12 & 0x77 ^ 0x7A;
  LOBYTE(v12) = v12 ^ (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * v12) & 6 ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  *(a2 + 4 * ((v15 ^ 0x2DFFFF74ED6FEBE3) + ((2 * v15) & 0x57C6)) + 0x4800022C4A405074) = ((v12 & 0xFC ^ 0xFFFFFF88) & ((((((*(v9 + (BYTE2(v13) ^ 0x44) * a3 + 10093550 - (((30623653 * ((BYTE2(v13) ^ 0x44u) * a3 + 10093550)) >> 32) >> 5) * v7) - 125) << 8) | (*(v9 + v14 - ((((v14 >> 3) * v6) >> 32) >> 4) * v7) << 16) | v13) << 8) - 2097152000) ^ 0x37AE2D9C) | v12 & 0x63) ^ 0x3EAD209;
  return (*(v10 + 8 * (((a1 == 255) | (8 * (a1 == 255))) ^ v3)))();
}

uint64_t sub_89C90()
{
  v5 = v1 + *(v3 + 16);
  v6 = (*(v2 + (v5 - 4)) << ((v0 + 8) & 0xF7 ^ 0xAF)) | (*(v2 + (v5 - 3)) << 16) | (*(v2 + (v5 - 2)) << 8) | *(v2 + (v5 - 1));
  return (*(v4 + 8 * (v0 - 1272)))();
}

uint64_t sub_89D5C@<X0>(uint64_t a1@<X8>)
{
  v6 = v4[7] + v1;
  v7 = v4[6] ^ v1;
  v8 = v4[4] ^ v1;
  *a1 = v4[5] + v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v8;
  *(a1 + 20) = v7;
  *(a1 + 28) = v6;
  return (*(v5 + 8 * (v3 & 0x39A4EFDB)))();
}

void sub_89ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25, uint64_t *a26, _DWORD *a27)
{
  if (((1 << a25) & *a27) != 0)
  {
    v28 = *a26;
    if (a25 == 31)
    {
      LOBYTE(v29) = 0;
    }

    else
    {
      v29 = 57 - (a25 >> 1);
    }

    v30 = *(v27 - 112) << v29;
    do
    {
      v31 = v28;
      if ((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) == *(v27 - 112))
      {
        v37 = *(v28 + 16);
        v38 = *(v27 - 120);
        *(v37 + 24) = v38;
        *(v31 + 16) = v38;
        v38[2] = v37;
        v38[3] = v31;
        v38[6] = 0;
        goto LABEL_11;
      }

      v32 = v28 + 8 * (v30 >> 63);
      v34 = *(v32 + 32);
      v33 = (v32 + 32);
      v28 = v34;
      v30 *= 2;
    }

    while (v34);
    v35 = *(v27 - 120);
    *v33 = v35;
    v35[6] = v31;
    v35[2] = v35;
    v35[3] = v35;
  }

  else
  {
    *a27 |= 1 << a25;
    v36 = *(v27 - 120);
    *a26 = v36;
    v36[6] = a26;
    v36[2] = v36;
    v36[3] = v36;
  }

LABEL_11:
  v39 = *(v27 - 128);
  JUMPOUT(0xDD998);
}

uint64_t sub_89FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v24 = *(v20 + 28) != (((v22 - 1149) | 0x213) ^ (v19 - 928) ^ (271 * (v22 ^ 0xA27)));
  *(v23 - 116) = 853792023 - 1600728529 * ((v23 - 128) ^ 0x8535CA41) + v22 + 39;
  *(v23 - 128) = &a19;
  v25 = (*(v21 + 8 * (v22 + 163)))(v23 - 128);
  v26 = *(v23 - 120);
  return (*(v21 + 8 * ((19 * v24) ^ v22)))(v25);
}

uint64_t sub_8A078@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 48) + 1559758902;
  v5 = (((a1 - 2346) | 9) ^ 0xF5A9BC6D) + v2;
  v6 = v4 < 0x5CF80831;
  v7 = v4 > v5;
  if (v6 != v5 < 0x5CF80831)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(a2 + 8 * ((975 * v8) ^ a1)))();
}

uint64_t sub_8A0E4@<X0>(int a1@<W8>)
{
  v6 = a1 - 65021204 + v2;
  v7 = v6 + 349576754;
  v8 = *(v3 + 20) - 1142764161;
  v9 = v6 > 0xEB29E1CD;
  v10 = v9 ^ (v8 < 0x14D61E32);
  v11 = v7 > v8;
  if (!v10)
  {
    v9 = v11;
  }

  v12 = ((((v1 - 383) | 0x185) ^ 0xFFFFFE13) & a1) == v5 || v9;
  return (*(v4 + 8 * ((1002 * v12) ^ v1)))();
}

uint64_t sub_8A210@<X0>(int a1@<W8>)
{
  *(v1 + 820) = a1;
  *(v7 - 116) = 853792023 - 1600728529 * ((2 * (v6 & 0x5C235770) - v6 - 1545820021) ^ 0x26E962CA) + v4 + 1398;
  *(v7 - 128) = v2;
  v8 = (*(v3 + 8 * (v4 + 1522)))(v7 - 128);
  return (*(v3 + 8 * (((*(v7 - 120) == v5) * (((v4 - 1155) | 0x124) ^ (v4 - 899))) ^ v4)))(v8);
}

uint64_t sub_8A2B4()
{
  v4 = ((2 * (v2 ^ 0x4D)) ^ 0x30 ^ ((2 * (v2 ^ 0x4D)) ^ (32 * (v0 ^ 0xCD)) ^ 0x90) & (v2 ^ 0x4D)) & (4 * (((2 * v2) & 0xE8 ^ 0x74) & v2)) ^ ((2 * v2) & 0xE8 ^ 0x74) & v2;
  *v1 = *v1 << ((v2 ^ ~(2 * v4)) & 0x30) << ((v2 ^ (2 * v4) ^ 0x44) & 0xF);
  v1[4] = v1[4] << ((v2 ^ (2 * v4) ^ 0x44) & 0x26 ^ 0x20u) << ((v2 ^ (2 * v4)) & 0x19 ^ 0x10u);
  return (*(v3 + 8 * v0))();
}

uint64_t sub_8A3B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = (((((a4 + 194) ^ 0x7AFu) * v10 + 2113825) % 0xA88) ^ 0x3FB5FDFF77F7F7BBLL) + v11 + ((2 * ((((a4 + 194) ^ 0x7AFu) * v10 + 2113825) % 0xA88)) & 0xF76);
  v13 = *v7;
  v14 = *STACK[0x538];
  v15 = *(v14 + (v13 & v9));
  v16 = *a7 ^ 0xF1E76555;
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 - 2012739515 + v15 + v9) & v16)) ^ *(v12 - 0x4A962AA1CFAEA127) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 - 2012739515 + v15 + v9 + 2) & v16)) ^ (110 * (v12 + 69));
  v17 = STACK[0x518] + 4 * ((551 * (((v12 ^ 0x7B4FB739) + 1905677195) ^ ((v12 ^ 0xFB1BA123) - 238926447) ^ ((v12 ^ 0x8054165C) - 1970408720)) - 1525456472) % 0x1D48);
  v18 = STACK[0x540];
  v19 = *(v14 + (v13 & STACK[0x540]));
  v20 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v19 + LODWORD(STACK[0x52C])) & v16)) ^ *(v17 + a2) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v19 + 1527793161) & v16));
  v21 = ((v20 ^ (16198957 * v17)) >> 16) ^ 0xE7;
  v22 = v8 + 551 * v10;
  LODWORD(v12) = 1645 * (((v20 ^ (11565 * v17)) >> 8) ^ 0x6B) + 3389294;
  v23 = (1645 * (((((v20 ^ (1912024365 * v17)) >> 24) ^ 0x13B81159) + 650749879) ^ ((((v20 ^ (1912024365 * v17)) >> 24) ^ 0xAD642D41) - 1743414353) ^ ((((v20 ^ (1912024365 * v17)) >> 24) ^ 0xBEDC3C32) - 1951560994)) - 1803531352) % 0xA88;
  LODWORD(v17) = 1645 * ((((v20 ^ (45 * v17)) ^ 0x2B16F772) - 1921753544) ^ (((v20 ^ (45 * v17)) ^ 0xF7F2FC63) + 1368413479) ^ (((v20 ^ (45 * v17)) ^ 0xDCE40B3B) + 2055643775)) - 667353786;
  v24 = 1645 * v21 + 3391990 - 2696 * (((12744711 * (1645 * v21 + 3391990)) >> 32) >> 3);
  v25 = (v24 ^ 0x9FDFB3BBDFFDFFFBLL) + v11 + ((2 * v24) & 0x1FF6);
  v26 = *(v25 + 0x55401FA1C84B5699);
  v27 = (v23 ^ 0xD6BF7FF7BFBF0B8DLL) + v11 + ((2 * v23) & 0x171A);
  v28 = v25 + 537001989;
  v29 = ((v12 % 0xA88) ^ 0xBE57FFDDF7DFEFCFLL) + v11 + ((2 * (v12 % 0xA88)) & 0x1F9E);
  LODWORD(v25) = v27 + 1077998707;
  v30 = ((v17 % 0xA88) ^ 0xFE77D6717FECBF36) + v11 + ((2 * (v17 % 0xA88)) & 0x1E6C);
  LODWORD(v25) = ((v26 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + v15 + v9) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + v15 + v9 + 2) & v16)) ^ (110 * v28) ^ 0x46) << 8) | ((*(v27 + 0x1E605365E88A4B07) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v15 + v9) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v15 + v9 + 2) & v16)) ^ (110 * v25) ^ 0x46) << 16);
  v31 = STACK[0x52C];
  LODWORD(v29) = ((v25 ^ 0xFD77FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 136319025 + v15 + v9) & v16)) ^ *(v29 + 0x36C7D37FB06966C5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 136319025 + v15 + v9 + 2) & v16)) ^ (110 * (v29 + 49)) ^ 0x59673A) | v25 & 0xA69800) << 8;
  v32 = STACK[0x518] + 4 * (v22 % 0x1D48);
  LODWORD(v29) = (v29 ^ 0xA40082FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 - 2146221878 + v15 + v9) & v16)) ^ *(v30 - 0x9580313D7A368A2) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 - 2146221878 + v15 + v9 + 2) & v16)) ^ (110 * (v30 - 54)) ^ 0xA562B610) | v29 & 0x5A9D4900;
  v33 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v32 + 1527793161) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v32 + LODWORD(STACK[0x52C])) & v16)) ^ v29 & 0xBD259E47;
  *(v32 - 0x40E8C283FA03C307) = (1912024365 * v32) ^ 0xD51894D4 ^ v33;
  v34 = *(*STACK[0x538] + (*STACK[0x530] & v18)) + v32;
  v35 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v34 + 1527793161) & (qword_190530 ^ 0xF1E76555))) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v34 + v31) & (qword_190530 ^ 0xF1E76555)));
  *(v32 - 0x40E8C283FA03C307) = v35 ^ (1912024365 * v32) ^ (v35 ^ v33) & 0x7F7D73F4 ^ (v35 ^ v33 ^ 0xFFFFFFFE) & (v29 & 0x42DA61B8 ^ 0x821A8DA3) ^ 0x559A18DE;
  return (*(STACK[0x548] + 8 * ((1861 * (((v10 + 1 - a4) | (a4 - (v10 + 1))) >= 0)) ^ (a4 + 664))))();
}

uint64_t sub_8AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12)
{
  v17 = v12 + v16 + 346;
  v18 = ((2 * (&a9 & 0x590ACE08) - &a9 + 653603317) ^ 0xA3C0FBB4) * v15;
  a11 = v17 ^ v18;
  a9 = v18 ^ 0x37217BE0;
  a12 = v13;
  (*(v14 + 8 * (v16 + 754)))(&a9);
  v19 = (((&a9 | 0x259B382) - &a9 + (&a9 & 0xFDA64C78)) ^ 0x876C79C3) * v15;
  a12 = v13;
  a11 = v17 ^ v19;
  a9 = v19 ^ 0x37217BE0;
  (*(v14 + 8 * (v16 + 754)))(&a9);
  v20 = ((((2 * &a9) | 0xDEDA2952) - &a9 - 1869419689) ^ 0xEA58DEE8) * v15;
  a12 = v13;
  a9 = v20 ^ 0x37217BE0;
  a11 = v17 ^ v20;
  v21 = (*(v14 + 8 * (v16 ^ 0xD72)))(&a9);
  return (*(v14 + 8 * v16))(v21);
}

uint64_t sub_8ABC4@<X0>(int a1@<W8>)
{
  *(*v5 + 4 * (1150 * v1 + 1531800 - (((((1150 * v1 + 1531800) * v2) >> 32) + ((1150 * v1 + 1531800 - (((1150 * v1 + 1531800) * v2) >> 32)) >> 1)) >> 11) * v3)) = *(v4 + 4 * ((((9002 * v1 + 11540564) % 0x34AFu) ^ 0x2F75EFFF2DC7BB33) + ((2 * ((9002 * v1 + 11540564) % 0x34AFu)) & 0x7666)) + 0x4228400348E11334) ^ v6;
  v8 = ((a1 + 1547788130) & 0xA3BE9D9F ^ 0x49D) + v1 == 256;
  return (*(v7 + 8 * ((v8 | (v8 << 6)) ^ a1)))();
}

uint64_t sub_8AD38(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(v13 + (3013 * v8 + 4661111) % 0x1188u);
  v16 = ((v15 | ((v15 < 0x7D) << 8)) + 373995906) * ((v9 - 990) ^ 0x23C5) + 583651236;
  v17 = v16 - (((v16 * a1) >> 32) >> 12) * a4;
  v18 = *(a8 + 4 * ((v17 ^ 0x2FFB3FEBFED7F9FBLL) + ((2 * v17) & 0x73F6)) + 0x4013005004A01814);
  v19 = v18;
  v20 = HIBYTE(v18);
  v21 = v12 + 9002 * v8 - ((((v12 + 9002 * v8) * a1) >> 32) >> 12) * a4;
  v22 = ((v18 >> 15) & 0x2C ^ 8) + (BYTE2(v18) ^ 0xD52);
  v23 = v10 + 3013 * ~(v18 >> 8);
  v24 = 3013 * (((v19 ^ 0xC175D242) + 9232515) ^ ((v19 ^ 0x38A976F8) - 112180167) ^ ((v19 ^ 0xF9DCA44C) + 941987469)) + 112067227;
  v25 = v23 - 4488 * (((30623653 * v23) >> 32) >> 5);
  v26 = 3013 * (((v20 ^ 0xBA17157C) - 1040240715) ^ ((v20 ^ 0xDCB849C9) - 1487899902) ^ ((v20 ^ 0x66AF5C81) + 491218506)) - 1403273155;
  LOBYTE(v20) = *(v13 + 3013 * v22 - 4488 * (((15311827 * (3013 * v22)) >> 32) >> 4));
  LOBYTE(v26) = *(v13 + v26 % 0x1188);
  v27 = v24 % 0x1188;
  LOBYTE(v24) = v26 & 0xB9 ^ 0x9F;
  v28 = v20 & 0xB7 ^ 0x9A;
  v29 = v20 ^ 2;
  LOBYTE(v25) = *(v13 + v25);
  v30 = *(v13 + v27);
  v31 = v25 & 0xB9 ^ 0x9F;
  LOBYTE(v27) = v26 ^ (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * ((v26 ^ 2) & (2 * (((2 * (v26 & 3)) ^ 0x3A) & (v26 ^ 2) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ 0xB9;
  v32 = ((v20 ^ (2 * (v29 & (2 * (v29 & (2 * (v29 & (2 * (v29 & (2 * (v29 & (2 * (v29 & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xB7) << 8;
  v33 = (v25 ^ (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * (((2 * (v25 & 3)) ^ 0x3A) & (v25 ^ 2) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xFF01CA;
  v34 = v32 & 0xFE00;
  LOBYTE(v25) = v30 & 0xC5 ^ 0xA1;
  v35 = v32 & 0xFF00FFFF | (v27 << 16);
  LOBYTE(v27) = v30 ^ (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((v30 ^ 2) & (2 * ((((2 * (v30 & 3)) ^ 0x46) & 2 | v25) ^ ((2 * (v30 & 3)) ^ 0x46) & v30)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25));
  *(v11 + 4 * ((v21 ^ 0x3DFBFF7EE57CEFD7) + ((2 * v21) & 0x5FAE)) + 0x81002046A0C40A4) = (((((v33 & ~v35) + v34) << 8) ^ 0xDD9D5999) & (v27 ^ 0xFFFFFF3E) | v27 & 0x66) ^ 0x16D8D52B;
  return (*(v14 + 8 * ((3757 * (v8 == 255)) ^ v9)))();
}

uint64_t sub_8B144@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v7 = 12 * (v6 ^ 0x7Bu);
  v8 = *(a1 + 16) + v4;
  v9 = *(*(a4 - 132921991) + ((((v7 - 2576) & v8 & 0x9F6B3DB4) + ((v7 - 2576) & v8 | 0x9F6B3DB2) - 1757704770) & *(v5 - 464343834)));
  v10 = __ROR8__((v7 - 2576) & v8, 8);
  v11 = (((2 * (v10 + v9)) | 0x84D682C11C440DALL) - (v10 + v9) + 0x7BD94BE9F71DDF93) ^ 0x8CB9F14DA9229078;
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
  v22 = (((2 * (v21 + v20)) | 0x1C5A6CCF99395B96) - (v21 + v20) - 0xE2D3667CC9CADCBLL) ^ 0x81AF5B2F1031EDCDLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E735FFD9083B0A3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((((2 * (v26 + v25)) | 0x6F3B06DD229318D8) - (v26 + v25) + 0x48627C916EB67394) ^ 0x91B2BCB15EAD9320) >> (8 * (v8 & 7u))) ^ *v8;
  return (*(a2 + 8 * v6))();
}

uint64_t sub_8B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 128) = &a19;
  *(v23 - 116) = v22 - 434465113 * ((((2 * (v23 - 128)) | 0xC8E690D0) - (v23 - 128) - 1685276776) ^ 0x91D16237) + 323;
  v24 = (*(v21 + 8 * v20))(v23 - 128);
  v25 = *(v23 - 120);
  *(v19 + 36) = v25;
  return (*(v21 + 8 * ((1041 * ((((v25 ^ 0xDF225A76) + 551396746) ^ ((v25 ^ 0x6B9EDE55) - 1805573717) ^ ((v25 ^ (((v22 - 487) | 0x8E0) - 1844231)) + 1841958)) + 1264541945 < 0x100)) | v22)))(v24);
}

uint64_t sub_8B4C0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 24);
  v5 = v4 + 912719239 + ((a1 + 869) | 0xCC);
  v6 = v4 > 0xC998FB8C;
  v7 = v2 - 820463360;
  v8 = v6;
  v9 = (v7 < 0x36670473) ^ v8;
  v10 = v5 > v7;
  if (v9)
  {
    v10 = v8;
  }

  return (*(a2 + 8 * ((1872 * v10) ^ a1)))();
}

uint64_t sub_8B538()
{
  v3 = STACK[0x6B0];
  v4 = *(STACK[0x6B0] + 12) * v0 + 10093550;
  v5 = *(STACK[0x6B0] + 5) * v0 + 10093550;
  v6 = *(STACK[0x6B0] + 4);
  v7 = *(STACK[0x6B0] + 11);
  v8 = *(STACK[0x6B0] + 14);
  v9 = *(STACK[0x6B0] + 9);
  v10 = *STACK[0x6B0];
  LODWORD(STACK[0x698]) = 1542656;
  v11 = (1542656 * v7 + 872930305) >> ((4 * v1) ^ 0xD1);
  v12 = v3[8] * v0 + 10093550;
  v13 = STACK[0x670];
  LODWORD(STACK[0x598]) = *(STACK[0x670] + v6 * v0 + 10093550 - 4488 * (((30623653 * (v6 * v0 + 10093550)) >> 32) >> 5) - 0x184C5C0A99C53516);
  v14 = (v11 | 0x800000) - 4488 * (((122494611 * (v11 | 0x800000)) >> 32) >> 7);
  v15 = v3[2] * v0 + 10093550;
  LODWORD(STACK[0x5F8]) = *(v13 + v14 - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5F0]) = *(v13 + v5 - 4488 * (((30623653 * v5) >> 32) >> 5) - 0x184C5C0A99C53516);
  v16 = v3[3] * v0 + 10093550;
  v17 = v3[13] * v0 + 10093550;
  v18 = v3[15] * v0 + 10093550;
  v19 = v3[7] * v0 + 10089062;
  LODWORD(STACK[0x5B0]) = *(v13 + v9 * v0 + 10093550 - 4488 * (((30623653 * (v9 * v0 + 10093550)) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x588]) = *(v13 + v10 * v0 + 10093550 - 4488 * (((30623653 * (v10 * v0 + 10093550)) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5C8]) = *(v13 + v16 - 4488 * (((30623653 * v16) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5D0]) = *(v13 + v8 * v0 + 10093550 - 4488 * (((30623653 * (v8 * v0 + 10093550)) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5A8]) = *(v13 + v17 - 4488 * (((30623653 * v17) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(v14) = v3[10];
  v20 = v3[6];
  LODWORD(STACK[0x5E8]) = *(v13 + v18 - 4488 * (((30623653 * v18) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x580]) = *(v13 + v15 - 4488 * (((30623653 * v15) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5D8]) = *(v13 + v4 - 4488 * (((30623653 * v4) >> 32) >> 5) - 0x184C5C0A99C53516);
  v21 = v3[1];
  LODWORD(STACK[0x5C0]) = *(v13 + v14 * v0 + 10093550 - 4488 * (((30623653 * (v14 * v0 + 10093550)) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5E0]) = *(v13 + v19 - 4488 * (((30623653 * v19) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x590]) = *(v13 + v12 - 4488 * (((30623653 * v12) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5A0]) = *(v13 + v20 * v0 + 10093550 - 4488 * (((30623653 * (v20 * v0 + 10093550)) >> 32) >> 5) - 0x184C5C0A99C53516);
  LODWORD(STACK[0x5B8]) = *(v13 + v21 * v0 + 10093550 - 4488 * (((30623653 * (v21 * v0 + 10093550)) >> 32) >> 5) - 0x184C5C0A99C53516);
  v22 = STACK[0x6B8];
  return (*(v2 + 8 * v1))();
}

uint64_t sub_8B820(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = STACK[0x518] + 4 * ((551 * v7 + v8) % 0x1D48u);
  v10 = STACK[0x518] + 4 * ((551 * v7 + 1845850) % 0x1D48u);
  v11 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v12 = *a7 ^ 0xF1E76555;
  v13 = (v10 + v11 + a3) & v12;
  v14 = (v10 + v11 + 1527793161) & v12;
  v15 = v9 + v11;
  v16 = (v15 + LODWORD(STACK[0x52C])) & v12;
  v17 = (v15 + 1527793161) & v12;
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v16);
  v18 = LODWORD(STACK[0x52C]);
  *(v10 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v13) ^ *(v9 + a2) ^ (1912024365 * v10) ^ (1912024365 * v9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v14) ^ v12 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v17);
  return (*(STACK[0x548] + 8 * ((405 * (v7 != 255)) ^ a1)))();
}

uint64_t sub_8B970()
{
  v1 = LODWORD(STACK[0x518]) + 458;
  v2 = STACK[0x548];
  (*(STACK[0x548] + 8 * (LODWORD(STACK[0x518]) ^ 0x299)))(v0);
  return (*(v2 + 8 * v1))(STACK[0x500]);
}

uint64_t sub_8B9A4@<X0>(int a1@<W8>)
{
  v6 = ((523739942 - (&v17 | 0x1F37A326) + (&v17 | 0xE0C85CD9)) ^ 0x156A7686) * a1;
  v18 = v2;
  v17 = v1 + v6;
  v19 = (v3 + 136404220) ^ v6;
  result = (*(v4 + 8 * (v3 + 1973)))(&v17);
  v8 = (((v20 ^ 0x688E2E75) - 1754148469) ^ ((v20 ^ 0xC66E3FCE) + 965853234) ^ ((v20 ^ 0x6EA02F53) - 1855991635)) + 1029357658;
  v9 = (v8 ^ 0x18F57EEC) & (2 * (v8 & 0x82E57E8D)) ^ v8 & 0x82E57E8D;
  v10 = ((2 * (v8 ^ 0x1CFDCAEC)) ^ 0x3C3168C2) & (v8 ^ 0x1CFDCAEC) ^ (2 * (v8 ^ 0x1CFDCAEC)) & 0x9E18B460;
  v11 = v10 ^ 0x82089421;
  v12 = (v10 ^ 0x1C102040) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x7862D184) & v11 ^ (4 * v11) & 0x9E18B460;
  v14 = (v13 ^ 0x18009000) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x86182461)) ^ 0xE18B4610) & (v13 ^ 0x86182461) ^ (16 * (v13 ^ 0x86182461)) & 0x9E18B460;
  v16 = v14 ^ 0x9E18B461 ^ (v15 ^ 0x80080400) & (v14 << 8);
  *(v5 + 8) = v8 ^ (2 * ((v16 << 16) & 0x1E180000 ^ v16 ^ ((v16 << 16) ^ 0x34610000) & (((v15 ^ 0x1E10B061) << 8) & 0x1E180000 ^ 0x6080000 ^ (((v15 ^ 0x1E10B061) << 8) ^ 0x18B40000) & (v15 ^ 0x1E10B061)))) ^ 0xDD8B76B6;
  return result;
}

uint64_t sub_8BDAC@<X0>(int a1@<W8>)
{
  *(&STACK[0x580] + (v6 & 0xF)) ^= ((-68 * *(v1 + v6)) | 1) * *(v1 + v6);
  v7 = LODWORD(STACK[0x52C]) + v6 - 1559;
  v8 = a1 + v6 + 1513 < v3;
  if (v3 < v4 != v7 > 0x222BF0B9)
  {
    v8 = v3 < v4;
  }

  return (*(STACK[0x548] + 8 * ((!v8 * v5) ^ v2)))();
}

uint64_t sub_8BE74(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v16 = *(&STACK[0x550] + a1);
  v17 = ((3 * v16 + 5) & 7) * v10 + 3822980;
  v18 = (3 * (*(&STACK[0x550] + a1) >> 3) + 5) & 7;
  v19 = v16 >= ((v8 ^ 0xBE) + 98);
  v20 = ((3 * v16 + 5) & 7) * v10 + 3820284;
  if (!v19)
  {
    v18 = 5;
  }

  v21 = v18 * v10 + 3822980 - ((((v18 * v10 + 3822980) * v12) >> 32) >> 3) * a5;
  v22 = ((v20 - v20 / 0xA88 * a5) ^ 0x7FBBCBBD1F75FA9FLL) + a8 + ((2 * (v20 - v20 / 0xA88 * a5)) & 0x153E);
  v23 = v17 - (((v17 * v12) >> 32) >> 3) * a5;
  v24 = v21 ^ 0x29E59FFDA7BEBFF6;
  v25 = (2 * v21) & 0x1FEC;
  LOBYTE(v21) = v22 + 97;
  v26 = v24 + a8 + v25;
  v27 = v14;
  LOBYTE(v24) = v26 + 10;
  v28 = *(*STACK[0x538] + (*v15 & 0x46B39928));
  v29 = v22 - 527825567 + v28;
  v30 = *v13 ^ 0xF1E76555;
  v31 = (v29 + 1186175272) & v30;
  v32 = (v29 + a6) & v30;
  v33 = v26 + 1480671242 + v28;
  v34 = (v23 ^ 0x56FF7CCF976BDDF8) + STACK[0x520] + ((2 * v23) & 0x1BF0);
  v35 = (v33 + 1186175272) & v30;
  v36 = v34 + v9 + v28;
  v37 = (v36 + 1186175272) & v30;
  v38 = (v36 + a6) & v30;
  v39 = (v33 + a6) & v30;
  v40 = *v27 ^ 0xDDC772C6444EEA48;
  v41 = STACK[0x520];
  LOBYTE(v26) = *(v22 + 0x756407A088D35BF5) ^ *(v26 - 0x34C5CC9FFF756962) ^ *(v40 + v31) ^ *(v40 + v32);
  LOBYTE(v22) = *(v40 + v35) ^ *(v40 + v39);
  v42 = STACK[0x530];
  *(v34 + v11) = v26 ^ v22 ^ *(v40 + v37) ^ *(v40 + v38) ^ (110 * v21) ^ (110 * (v34 + v9)) ^ (110 * v24) ^ 0x46;
  return (*(STACK[0x548] + 8 * (((a1 == 47) * a2) | v8)))();
}

uint64_t sub_8C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12)
{
  v18 = ((v12 + v17 - 48) | 8) + 88;
  v19 = ((&a9 & 0x42DC6FB2 | ~(&a9 | 0x42DC6FB2)) ^ 0x38165A0C) * v15;
  a12 = v13;
  a11 = (v17 - 1159529426) ^ v19;
  a9 = v19 ^ v16;
  v20 = (*(v14 + 8 * (v17 ^ 0xC0403453)))(&a9);
  return (*(v14 + 8 * (v17 ^ 0xC0403638 ^ (496 * ((v18 ^ (((a10 - v17) | (v17 - a10)) < 0)) & 1)))))(v20);
}

uint64_t sub_8C198()
{
  *(v0 + 68) = v4;
  *(v0 + 72) = 0xF67A0FCDF67A0FCDLL;
  v5 = *(v1 + 8);
  return (*(v3 + 8 * (v2 + 1963)))();
}

uint64_t sub_8C228@<X0>(int a1@<W2>, _DWORD *a2@<X8>)
{
  a2[15] = v8;
  v10 = v9 ^ (v4 + 557);
  v11 = v7 + v4;
  v12 = v11 + v6 * (v10 + v3);
  a2[7] = v12 >> 4;
  a2[8] = v12;
  a2[9] = v11 + v5;
  a2[10] = a1;
  return (*(v2 + 8 * v9))();
}

uint64_t sub_8C264(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = ((a4 + 1675587896) & 0x9C208EDF ^ ((1645 * v8 + 2113825) % 0xA88u) ^ 0x7FD7FF7FEBD788B3) + ((2 * ((1645 * v8 + 2113825) % 0xA88u)) & 0x18FELL) + STACK[0x520];
  v14 = *v7;
  v15 = *STACK[0x538];
  v16 = *(v15 + (v14 & v10));
  v17 = *a7 ^ 0xF1E76555;
  LODWORD(v13) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + 338195329 + v16 + v10) & v17)) ^ *(v13 + 0x7547D3DDBC71CA15) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 + 338195329 + v16 + v10 + 2) & v17)) ^ (110 * (v13 - 127));
  LODWORD(v13) = (((v13 ^ 0x415AB4B7) + 164885246) ^ ((v13 ^ 0x3001DCA1) + 2022218476) ^ ((v13 ^ 0x715B6850) + 970075675)) * v12 - 523979886;
  v18 = STACK[0x518] + 4 * (v13 - ((((v13 >> 3) * v9) >> 32) >> 7) * v11);
  v19 = *(v15 + (v14 & STACK[0x540]));
  LODWORD(v13) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + LODWORD(STACK[0x52C])) & v17)) ^ *(v18 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + 1527793161) & v17));
  LODWORD(v14) = v13 ^ (1912024365 * v18);
  v20 = ((v13 ^ (11565 * v18)) >> 8);
  v21 = 1645 * (((BYTE3(v14) ^ 0x66F9B57C) - 815416127) ^ ((BYTE3(v14) ^ 0x70AE13B9) - 651027962) ^ ((BYTE3(v14) ^ 0x1657A6EF) - 1077170348)) + 545923755;
  LODWORD(v14) = 1645 * (((v14 >> 15) & 0x1C ^ 0xC) + (BYTE2(v14) ^ 0x8E9));
  LODWORD(v13) = 1645 * ((((v13 ^ (45 * v18)) ^ 0x839416C0) - 1383693754) ^ (((v13 ^ (45 * v18)) ^ 0x4F305AD1) + 1629670997) ^ (((v13 ^ (45 * v18)) ^ 0xCCA44C3B) - 491333441)) - 221359354;
  v22 = v21 % 0xA88;
  v23 = 1645 * (v20 ^ 0x6B) + 3391990 - 2696 * (((12744711 * (1645 * (v20 ^ 0x6Bu) + 3391990)) >> 32) >> 3);
  v24 = v14 - 2696 * (((12744711 * v14) >> 32) >> 3);
  v25 = (v23 ^ 0xF2FF2F3F5CD9FDFFLL) + STACK[0x520] + ((2 * v23) & 0x1BFE);
  v26 = v25 - 1557790207;
  LODWORD(v23) = *(v25 + 0x220A41E4B6F5895);
  v27 = ((v13 % 0xA88) ^ 0x72E533D7FBEAA7CELL) + STACK[0x520] + ((2 * (v13 % 0xA88)) & 0xF9C);
  v28 = (v24 ^ 0xFF555F3B2BF37ABDLL) + STACK[0x520] + ((2 * v24) & 0x157A);
  LODWORD(v24) = *(v27 - 0x7DC5607A53A1513ALL);
  v29 = *(v28 - 0xA358BDD83AA2429);
  LODWORD(v28) = v28 - 737376957;
  v30 = (v22 ^ 0x5B4EEBB2FD7DFDDBLL) + STACK[0x520] + ((2 * v22) & 0x1BB6);
  v31 = v27 + 68507698;
  LODWORD(v27) = ((*(v30 - 0x662F18555534A747) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + 42074661 + v16 + v10) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + 42074661 + v16 + v10 + 2) & v17)) ^ (110 * (v30 + 37)) ^ 0x46) << 16) | ((v29 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + v16 + v10) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + v16 + v10 + 2) & v17)) ^ (110 * v28) ^ 0x46) << 8);
  v32 = STACK[0x530];
  LODWORD(v27) = ((v27 ^ 0xFFF9FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v16 + v10) & v17)) ^ v23 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v16 + v10 + 2) & v17)) ^ (110 * v26) ^ 0xADB0CA) | v27 & 0x524F00) << 8;
  v33 = STACK[0x518] + 4 * (v8 * v12 + 710790 - (((((v8 * v12 + 710790) >> 3) * v9) >> 32) >> 7) * v11);
  *(v33 - 0x40E8C283FA03C307) = (1912024365 * v33) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v33 + LODWORD(STACK[0x52C])) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v33 + 1527793161) & v17)) ^ 0xC518A654 ^ ((v27 ^ 0x424F41FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + v16 + v10) & v17)) ^ v24 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + v16 + v10 + 2) & v17)) ^ (110 * v31) ^ 0x4FEF4D38) | v27 & 0xB010B200);
  return (*(STACK[0x548] + 8 * ((120 * (v8 == 255)) ^ a4)))();
}

uint64_t sub_8C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 116) = v20 - 434465113 * ((((v23 - 128) | 0x42D49E67) - (v23 - 128) + ((v23 - 128) & 0xBD2B6198)) ^ 0xB776B438) - 320;
  *(v23 - 128) = &a19;
  v24 = (*(v22 + 8 * v21))(v23 - 128);
  *(v19 + 419) = (29 * (v20 ^ 0x63)) ^ *(v23 - 120) ^ 0x11;
  return (*(v22 + 8 * v20))(v24);
}

uint64_t sub_8C948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + a2);
  *v4 = 0u;
  v4[1] = 0u;
  return (*(v2 + 8 * ((47 * (((59 * (v3 ^ 0x408u)) ^ 0x91) + a2 == 192)) ^ v3)))();
}

uint64_t sub_8C994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v17 = v10 < v9;
  if (v17 == v16 + 1 > v13)
  {
    v17 = v16 + 1 + v9 + (v15 ^ v12) < v10;
  }

  return (*(v8 + 8 * ((v17 * ((v15 + a8) & v11 ^ v14)) ^ v15)))();
}

uint64_t sub_8C9E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16) + v4;
  v8 = *(*(a4 - 132921991) + (((v7 & 0xFFFFFFF8) + 916900720) & *(v5 - 464343834)));
  v9 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (v9 + v8 - ((2 * (v9 + v8)) & 0xE172DDA64E327352) - 0xF46912CD8E6C657) ^ 0xF8262B8886D989BCLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = v6 ^ 0xD8D188F9068EB8EDLL ^ (__ROR8__(v10, 8) + v11);
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0x123FEEF0D08004AALL) - (v14 + v13) - 0x91FF77868400256) ^ 0xF101FBD4895D7CD5;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xBEACFB9F4D191338;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x8A4943FA3C1BB996;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8F826D48DCAD4006;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x2563A946CA1739A2) - (v23 + v22) + 0x6D4E2B5C9AF4632FLL) ^ 0xACC28B5EF5882C72;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((((2 * (v26 + v25)) | 0x6E23944784883AA2) - (v26 + v25) - 0x3711CA23C2441D51) ^ 0x113EF5FC0DA0021DLL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a2 + 8 * v6))();
}

uint64_t sub_8CC00()
{
  v7 = *(v1 + 16) + v3 + v5;
  v8 = v6 + *(v1 + 20);
  v9 = v7 < v0;
  v10 = v7 > v8;
  if (v9 != v8 < v0)
  {
    v10 = v9;
  }

  return (*(v2 + 8 * ((v4 + 1477) | (4 * v10))))();
}

uint64_t sub_8CC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, uint64_t a4@<X8>)
{
  v12 = v6 ^ 0xFE3;
  v13 = v6 - 793;
  v14 = (v12 ^ 0x471911) + v4 * a3 - 8976 * ((((((v12 ^ 0x471911u) + v4 * a3) >> 4) * v7) >> 32) >> 4);
  if (v14 >> 3 > 0x230)
  {
    v14 -= 4488;
  }

  v15 = v10 + (*(v8 + v14) - 125) * a3;
  v16 = *(v8 + v15 - 4488 * (((3827957 * v15) >> 32) >> 2));
  LODWORD(STACK[0x6B0]) = v4;
  HIDWORD(v17) = (v9 + v4 * v5) % 0x34AFu;
  LODWORD(v17) = HIDWORD(v17);
  *(a4 + 4 * ((((v17 >> 27) >> 5) ^ 0x3FA6BC7FBEDE73E5) + ((2 * ((v17 >> 27) >> 5)) & 0x67CA)) + 0x1650E010486306CLL) = 876937206;
  v18 = *(a4 + 4 * ((HIDWORD(v17) ^ 0x7FDDDBFFFDFD66BFLL) - 0x7FDDDBFFFDFD66BFLL + ((2 * HIDWORD(v17)) & 0x4D7E)));
  v19 = *(v11 + 8 * v13);
  LODWORD(STACK[0x6AC]) = (v12 - 1275755647) & 0x4C0A7F9D;
  return v19(a1, a2, v18);
}

uint64_t sub_8CDC4@<X0>(int a1@<W2>, void *a2@<X6>, int a3@<W8>)
{
  v7 = (1645 * a3 + 2113825) % ((v5 - 546) ^ 0xC96u);
  v8 = (v7 ^ 0xAF8D77ABA77BE3ABLL) + STACK[0x520] + ((2 * v7) & 0x756);
  v9 = *v3;
  v10 = *STACK[0x538];
  v11 = STACK[0x530];
  v12 = *(v10 + (v9 & v4));
  v13 = *a2 ^ 0xF1E76555;
  v14 = v4 + 2;
  LODWORD(v8) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + 1485053013 + v12 + v4) & v13)) ^ *(v8 + 0x45925BB200CD72E9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + 1485053013 + v12 + v4 + 2) & v13)) ^ ((v8 + 85) * v6) & 0xFE;
  v15 = STACK[0x518] + 4 * ((551 * (((v8 ^ 0xF1B9E2F8) + 1221178679) ^ ((v8 ^ 0x87E19AA0) + 1049742703) ^ ((v8 ^ 0x7658781E) - 819449903)) - 549129583) % 0x1D48);
  v16 = *(v10 + (v9 & STACK[0x540]));
  LODWORD(v9) = *(v15 - 0x40E8C283FA03C307);
  v17 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + a1) & v13));
  LODWORD(v10) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + 1527793161) & v13));
  v18 = v17 ^ v9 ^ v10;
  v19 = (v18 ^ (1912024365 * v15)) >> 24;
  v20 = 13 * v15;
  v21 = (2 * (v18 ^ (13 * v15))) & 0x1C;
  LODWORD(v15) = v18 ^ (16198957 * v15);
  LODWORD(v9) = (v21 ^ 0x14) & (v20 ^ v9 ^ v17 ^ v10 ^ 0x18) ^ v21;
  v22 = (1645 * (((v19 ^ 0x7F03C669) + 1364059585) ^ ((v19 ^ 0xF4F4FA4F) - 625288729) ^ ((v19 ^ 0x8BF73C0C) - 1514594394)) + 1947830978) % 0xA88;
  v23 = BYTE1(v15) ^ 0x6B;
  v24 = v15 ^ 0x210C2EDF ^ ((v21 ^ 0x14) + 554444539 - ((2 * (v21 ^ 0x14)) & 0x30));
  v25 = 1645 * (BYTE2(v15) ^ 0xE7) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE2(v15) ^ 0xE7u) + 3391990)) >> 32) >> 3);
  v26 = (v22 ^ 0x7FFB36BFD7E4AC9) + STACK[0x520] + ((2 * v22) & 0x1592);
  v27 = *(v26 - 0x12DFE00E5534F435);
  v28 = (v25 ^ 0x17FCD8EFDBFEBED9) + STACK[0x520] + ((2 * v25) & 0x1DB2);
  LODWORD(v26) = v26 + 42054967;
  v29 = ((1645 * (((2 * v9) ^ 0x28u) + v24) % 0xA88) ^ 0x9EDFFBBD7F5BFFFFLL) + 2 * (1645 * (((2 * v9) ^ 0x28u) + v24) % 0xA88) + STACK[0x520];
  v30 = 1645 * v23 + 3391990 - 2696 * (((12744711 * (1645 * v23 + 3391990)) >> 32) >> 3);
  v31 = (v30 ^ 0xAEEE7F4BE7FFEDFFLL) + STACK[0x520] + ((2 * v30) & 0x1BFE);
  LODWORD(v28) = ((*(v28 - 0x22DD059233B56845) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 604061991 + v12 + 1186175272) & v13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 604061991 + v12 + v14) & v13)) ^ ((v28 + 39) * v6) & 0xFE ^ 0x46) << 8) | ((v27 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v12 + 1186175272) & v13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v12 + v14) & v13)) ^ (v26 * v6) & 0xFE ^ 0x46) << 16);
  v32 = (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 402657793 + v12 + 1186175272) & v13)) ^ *(v31 + 0x46315411C0496895) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v31 + 402657793 + v12 + v14) & v13)) ^ ((v31 + 1) * v6) & 0xFE ^ 0x5AA1BE) & ~v28;
  v33 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 - 2136735743 + v12 + 1186175272) & v13)) ^ *(v29 + 0x563FD7A028ED5695) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 - 2136735743 + v12 + v14) & v13)) ^ ((v29 + 1) * v6) & 0xFE ^ 0xFFFFFFB9;
  v34 = STACK[0x518] + 4 * ((551 * a3 + 710790) % 0x1D48u);
  *(v34 - 0x40E8C283FA03C307) = (1912024365 * v34) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v34 + LODWORD(STACK[0x52C])) & v13)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v34 + 1527793161) & v13)) ^ 0x33659D5 ^ (((v32 | v28 & 0xA55E00) << 8) ^ 0x7370CAFF) & v33;
  return (*(STACK[0x548] + 8 * ((371 * (a3 == 255)) ^ v5)))();
}

uint64_t sub_8D3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v5 + 24);
  v7 = v6 + 265778798;
  v8 = v6 > 0xF0288991;
  v9 = v7 > v3 - 1467405571;
  if ((v3 - 1467405571) < 0xFD7766E == v8)
  {
    v8 = v9;
  }

  return (*(a3 + 8 * ((v8 * ((v4 ^ 0xEAC) - 1095)) ^ v4 ^ 0x409)))(a1, a2);
}

uint64_t sub_8D524()
{
  *v1 = xmmword_158920;
  *&STACK[0x1890] = xmmword_158930;
  *&STACK[0x1860] = xmmword_158940;
  *&STACK[0x1870] = xmmword_158950;
  *&STACK[0x1880] = xmmword_158960;
  return (*(v3 + 8 * (((v2 + 423383809 == ((v0 + 1245654194) & 0xB5C0CBFF ^ 0x29A28C33)) * (((v0 + 1313239481) & 0xB1B986F3) - 554)) | (v0 - 1870))))();
}

uint64_t sub_8D5D4@<X0>(int a1@<W0>, uint64_t a2@<X7>, int a3@<W8>)
{
  v9 = 9002 * (*(v7 + (3013 * a3 + 4661111) % 0x1188u) - 125) + 9227050;
  v10 = v9 - (((20380953 * v9) >> 32) >> 6) * a1;
  v11 = *(a2 + 4 * ((v3 ^ 0x429 ^ v10 ^ 0x1FFF67C73D977C31) + ((2 * v10) & 0x7AFELL)) - 0x7FFD9F1CF65DF5FCLL);
  v12 = 3013 * ~(v11 >> 8) + 10093550;
  v13 = v6 + 9002 * a3 - ((((v6 + 9002 * a3) * v4) >> 32) >> 12) * a1;
  v14 = *(v7 + (3013 * (((v11 ^ 0x1461C68A) + 1356497554) ^ ((v11 ^ 0x7C628754) + 953795408) ^ ((v11 ^ 0x68034128u) + 750257460)) + 277331656) % 0x1188);
  v15 = v14 & 0xE3 ^ 0xB0;
  v16 = v14 ^ 2;
  v17 = v14 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  *(v5 + 4 * ((v13 ^ 0x3CCEDFFFC36DA7FFLL) + ((2 * v13) & 0x4FFE)) + 0xCC48000F2496004) = ((v17 ^ 0xFFFFFF0C) & ((((((*(v7 + 3013 * (BYTE2(v11) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v11) ^ 0x44u) + 10093550)) >> 32) >> 5)) - 125) << 8) | (*(v7 + (3013 * (((HIBYTE(v11) ^ 0xC4570501) - 189776951) ^ ((HIBYTE(v11) ^ 0x44BEF2CD) + 1952041989) ^ ((HIBYTE(v11) ^ 0x80E9F7F8) - 1341208270)) + 1861329016) % 0x1188) << 16) | (*(v7 + v12 - 4488 * (((30623653 * v12) >> 32) >> 5)) - 125)) << 8) - 2097152000) ^ 0xF4B4712F) | v17 & 0xD0) ^ 0xC0F08E19;
  return (*(v8 + 8 * ((808 * (a3 == 255)) ^ v3)))();
}

uint64_t sub_8D8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  v29 = v27 + v26 - 2427;
  a22 = v25;
  a24 = v29 - 1600728529 * (&a22 ^ 0x8535CA41);
  (*(v24 + 8 * (v26 ^ 0x30E)))(&a22);
  *(v28 + 36) = (v26 - 344105992) & 0x14829F7F ^ 0xC04031C9 ^ ((v26 - 438) | 0x20F) ^ a23;
  a22 = v25;
  a24 = v29 - 1600728529 * (((&a22 | 0x41877F96) - &a22 + (&a22 & 0xBE788068)) ^ 0xC4B2B5D7);
  v30 = (*(v24 + 8 * (v26 + 258)))(&a22);
  return (*(v24 + 8 * ((26 * (a23 == -1069531416)) ^ v26)))(v30);
}

uint64_t sub_8DA5C@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X6>, int a5@<W8>)
{
  v6 = STACK[0x518] + 4 * ((551 * a5 + v5) % 0x1D48u);
  v7 = STACK[0x518] + 4 * ((551 * a5 + 995106) % 0x1D48u);
  v8 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v9 = *a4 ^ 0xF1E76555;
  v10 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v7 + v8 + a3) & v9));
  v11 = LODWORD(STACK[0x52C]);
  *(v7 - 0x40E8C283FA03C307) = v10 ^ *(v6 + a2) ^ (1912024365 * v7) ^ (1912024365 * v6) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v7 + v8 + 1527793161) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v8 + LODWORD(STACK[0x52C])) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v8 + 1527793161) & v9));
  return (*(STACK[0x548] + 8 * ((13 * (a5 != 255)) | a1)))();
}

uint64_t sub_8DBBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v9 = STACK[0x518] + 4 * ((551 * a5 + v8) % 0x1D48u);
  v10 = STACK[0x518] + 4 * ((551 * a5 + 1421580) % 0x1D48u);
  v11 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v12 = *a7 ^ 0xF1E76555;
  *(v10 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + a3) & v12)) ^ *(v9 + a2) ^ (1912024365 * v10) ^ (1912024365 * v9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + 1527793161) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v11 + a3) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v11 + 1527793161) & v12));
  return (*(STACK[0x548] + 8 * (v7 | (4 * (a5 != 255)))))();
}

uint64_t sub_8DCFC@<X0>(void *a1@<X6>, int a2@<W8>)
{
  v5 = STACK[0x518] + 4 * ((551 * a2 + v3) % 0x1D48u);
  v6 = STACK[0x518] + 4 * ((551 * a2 + 1704243) % 0x1D48u);
  v7 = *(*STACK[0x538] + (*STACK[0x530] & (v4 + 1527792381)));
  v8 = *a1 ^ 0xF1E76555;
  *(v6 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v7 + LODWORD(STACK[0x52C])) & v8)) ^ *(v5 + v2) ^ (1912024365 * v6) ^ (1912024365 * v5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v7 + 1527793161) & v8)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v5 + v7 + LODWORD(STACK[0x52C])) & v8)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v5 + v7 + 1527793161) & v8));
  return (*(STACK[0x548] + 8 * ((21 * (a2 != 255)) ^ v4)))(0);
}

uint64_t sub_8DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v24 = v19 | 0x10;
  *(v23 - 116) = v22 - 1600728529 * (((v23 - 128) & 0x28FEEFC5 | ~((v23 - 128) | 0x28FEEFC5)) ^ 0x5234DA7B) + (v19 | 0x10) + 2455;
  *(v23 - 128) = &a19;
  v25 = (*(v21 + 8 * ((v19 | 0x10) + 2579)))(v23 - 128);
  *(v20 + 416) = *(v23 - 120) ^ (8 * v24) ^ 0x40;
  v26 = *(v20 + 32);
  return (*(v21 + 8 * v24))(v25);
}

uint64_t sub_8E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, char a19)
{
  v24 = a18[6];
  v25 = ((v22 + 268940446) & 0xEFF843D4 ^ 0xD9F2DC40) + 390834099 * *(*a18 + 4);
  v26 = 1600728529 * (((v23 - 128) & 0x50AFBD48 | ~((v23 - 128) | 0x50AFBD48)) ^ 0x2A6588F6);
  *(v23 - 112) = &a19;
  *(v23 - 120) = (v22 + 2065904181) ^ v26;
  *(v23 - 128) = v25 ^ v26;
  v27 = (*(v21 + 8 * (v22 + 474)))(v23 - 128);
  *(v19 + 40) = *(v23 - 124);
  return (*(v21 + 8 * ((373 * (*(v24 + 1044 * (((v22 - 1985) | 0xC8) ^ (v20 + 24) ^ *(v19 + 36)) + 1040) & 1)) ^ v22)))(v27);
}

uint64_t sub_9F1FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = ((229 * (a1 ^ 0x533)) ^ ((1645 * v11 + 2111129) % 0xA88u) ^ 0xF6EDAFFBFFFDF897) + ((2 * ((1645 * v11 + 2111129) % 0xA88u)) & 0x19DCLL) + STACK[0x520];
  v13 = *v7;
  v14 = *STACK[0x538];
  v15 = STACK[0x530];
  v16 = *(v14 + (v13 & v9));
  v17 = *a7 ^ 0xF1E76555;
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 131858 + v16 + v9) & v17)) ^ *(v12 - 0x1CDDC9E57B4A65ALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 131858 + v16 + v9 + 2) & v17)) ^ (110 * (v12 + 18));
  LODWORD(v12) = 551 * (((v12 ^ 0xA73B280B) - 1768351092) ^ ((v12 ^ 0x4187C39F) + 1881534752) ^ ((v12 ^ 0xE6BCEBD2) - 685844141)) + 738820183;
  v18 = STACK[0x518] + 4 * (v12 - ((((v12 >> 3) * v10) >> 32) >> 7) * v8);
  v19 = *(v14 + (v13 & STACK[0x540]));
  LODWORD(v14) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + LODWORD(STACK[0x52C])) & v17)) ^ *(v18 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + 1527793161) & v17));
  v20 = 1645 * (((((v14 ^ (1912024365 * v18)) >> 24) ^ 0x91DE1884) + 619835109) ^ ((((v14 ^ (1912024365 * v18)) >> 24) ^ 0x39B3394C) - 1935880403) ^ ((((v14 ^ (1912024365 * v18)) >> 24) ^ 0xA86D21E2) + 490919811)) - 1157488121;
  LODWORD(v13) = 1645 * (((v14 ^ (16198957 * v18)) >> 16) ^ 0xE7) + 3391990;
  v21 = ((v14 ^ (11565 * v18)) >> 8) ^ 0x6B;
  v22 = v13 - 2696 * (((12744711 * v13) >> 32) >> 3);
  v23 = (v22 ^ 0xE7F5F53F7DBDBB57) + STACK[0x520] + ((2 * v22) & 0x16AE);
  v24 = 1645 * ((((v14 ^ (45 * v18)) ^ 0xA057BF0) - 1319327600) ^ (((v14 ^ (45 * v18)) ^ 0x912D42EB) + 712282517) ^ (((v14 ^ (45 * v18)) ^ 0x9B283931) + 544336463)) + 536920664;
  v25 = (((((2 * v20) & 0x7FEAF0) + (v20 ^ 0xFFFFF578)) % 0xA88) ^ 0xCFFF3B7FEEC7FD5DLL) + STACK[0x520] + ((2 * ((((2 * v20) & 0x7FEAF0) + (v20 ^ 0xFFFFF578)) % 0xA88)) & 0x1ABA);
  v26 = 1645 * v21 + 3391990 - 2696 * (((12744711 * (1645 * v21 + 3391990)) >> 32) >> 3);
  v27 = ((v24 % 0xA88) ^ 0xEF3EF3E7CCFBEF7FLL) + STACK[0x520] + ((2 * (v24 % 0xA88)) & 0x1EFE);
  LODWORD(v25) = *(v25 + 0x252097DDB9815937) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 288883363 + v16 + v9) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 288883363 + v16 + v9 + 2) & v17)) ^ (110 * (v25 - 93));
  v28 = *(v23 + 0xD29DE1E2A8B9B3DLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v23 - 2109586263 + v16 + v9 + 2) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((0xD30C7CD02A1CD1C9 * (*a7 ^ 0x71B0588CF1E76555) - 0x2CF3832FD5E32E37 + (v23 - 2109586263 + v16 + v9)) & (*a7 ^ 0x71B0588CF1E76555))) ^ (110 * (v23 - 87)) ^ 0x46;
  v29 = (v26 ^ 0x7DFE7FBFFFF03FFELL) + ((2 * v26) & 0x1FFC) + STACK[0x520];
  LODWORD(v25) = ((*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 1032194 + v16 + v9) & v17)) ^ *(v29 + 0x7721539DA8591696) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 1032194 + v16 + v9 + 2) & v17)) ^ (110 * (v29 + 2)) ^ 0xA624D5) & ~((v28 << 8) | ((v25 ^ 0x46) << 16)) | ((v28 << 8) | ((v25 ^ 0x46) << 16)) & 0x59DB00) << 8;
  v30 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 855904385 + v16 + v9) & v17)) ^ *(v27 + 0x5E0DF75DB4D6715) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 855904385 + v16 + v9 + 2) & v17)) ^ (110 * (v27 - 127)) ^ 0x9EB290FA;
  v31 = STACK[0x518] + 4 * (551 * v11 + 703294 - (((((551 * v11 + 703294) >> 3) * v10) >> 32) >> 7) * v8);
  *(v31 - 0x40E8C283FA03C307) = (1912024365 * v31) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v31 + LODWORD(STACK[0x52C])) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v31 + 1527793161) & v17)) ^ 0x9451F896 ^ ((v25 ^ 0x189200FF) & v30 | v25 & 0x614D6F00);
  return (*(STACK[0x548] + 8 * ((179 * (v11 == 255)) ^ a1)))();
}

uint64_t sub_9F874(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = STACK[0x518] + 4 * ((551 * v7 + v8) % 0x1D48u);
  v10 = STACK[0x518] + 4 * ((551 * v7 + 1986906) % 0x1D48u);
  v11 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v12 = *a7 ^ 0xF1E76555;
  v13 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + a3) & v12));
  v14 = LODWORD(STACK[0x52C]);
  *(v10 - 0x40E8C283FA03C307) = v13 ^ *(v9 + a2) ^ (1912024365 * v10) ^ (1912024365 * v9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + 1527793161) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v11 + LODWORD(STACK[0x52C])) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 + v11 + 1527793161) & v12));
  return (*(STACK[0x548] + 8 * ((469 * (((2 * a4) ^ 0xDB1) + v7 == 256)) ^ a4)))(0);
}

uint64_t sub_9F9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, unsigned int a8)
{
  v23 = v19 + 4 * ((v10 * v10 + 13) % 0x1D48u);
  v24 = (v23 + *(*v14 + (*v8 & a8)) + a7);
  v25 = v9 ^ 0x738u ^ (v17 - 316) ^ *v22;
  *(*a6 + 4 * v10) = *(v23 + v13) ^ v21 ^ (v23 * v16) ^ *(v25 + ((v24 - 2) & (*v20 ^ v15))) ^ *(v25 + ((0x68185C8851916A9CLL * (*v20 ^ 0x71B0588CF1E76555) + 0x68185C8851916A9CLL + v24) & (*v20 ^ 0x71B0588CF1E76555)));
  return (*(STACK[0x548] + 8 * ((((((*(v18 + v11) | (v10 + 1)) - (v10 + 1)) | (v10 + 1 - *(v18 + v11)) & ~(v10 + 1)) >> 63) * v12) ^ v9)))();
}

uint64_t sub_9FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (3013 * v9 + 4661111) % ((v8 + 663) ^ 0x2096u);
  if (v16 >> 3 >= 0x231)
  {
    v16 -= 4488;
  }

  v17 = *(v14 + v16) | ((*(v14 + v16) < 0x7Du) << 8);
  v18 = 9002 * v17 + 31200932 - ((((9002 * v17 + 31200932) * v10) >> 32) >> 12) * v11;
  LODWORD(v18) = *(a8 + 4 * ((v18 ^ 0x3B56B3FAB7BBFF91) + ((2 * v18) & 0x7F22)) + 0x12A53015211001BCLL);
  v19 = 3013 * ~(v18 >> 8) + 10093550;
  v20 = ((BYTE3(v18) ^ 0x80) & 0xC0 | ((((v18 >> 22) & 0xF8 ^ 0xD0 | (v18 >> 22) & 4 | 0xC8) & ((v18 >> 22) & 0xF8 ^ 0xD0 | 0x34)) >> 2)) ^ 0x80;
  LOBYTE(v19) = *(v14 + v19 - 4488 * (((30623653 * v19) >> 32) >> 5));
  v21 = *(v14 + 3013 * (BYTE2(v18) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v18) ^ 0x44u) + 10093550)) >> 32) >> 5));
  LOBYTE(v20) = *(v14 + 3013 * v20 + 10093550 - 4488 * (((30623653 * (3013 * v20 + 10093550)) >> 32) >> 5));
  v22 = v13 + 9002 * v9 - ((((v13 + 9002 * v9) * v10) >> 32) >> 12) * v11;
  v23 = v20 & 0xF7 ^ 0x3A;
  v24 = v21 & 0x37 ^ 0xDA;
  v25 = *(v14 + (3013 * (((v18 ^ 0xCCAFD48B) - 19833896) ^ ((v18 ^ 0xDCBC4E37) - 289226388) ^ ((v18 ^ 0x10139A4A) + 577574167)) - 1257694121) % 0x1188);
  LOBYTE(v18) = v21 ^ (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * ((v21 ^ 2) & (2 * v21) & 6 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v26 = v19 & 0xB1 ^ 0x1B;
  v27 = v19 ^ 2;
  v28 = (v19 ^ (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (((2 * (v19 & 3)) ^ 0x32) & v27 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xA2933E;
  LOBYTE(v20) = v20 ^ (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * ((v20 ^ 2) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ 0xF7;
  v29 = v25 & 0x51 ^ 0xFFFFFFEB;
  LODWORD(v18) = ((v18 ^ 0x37) << 8) | (v20 << 16);
  v30 = v25 ^ 2;
  *(v12 + 4 * ((v22 ^ 0x37DDFB4AAFDBFBFDLL) + ((2 * v22) & 0x77FA)) + 0x208812D54090100CLL) = ((((v28 & ~v18 | v18 & 0x5D6C00) << 8) ^ 0x205AFC0A) & ((v25 ^ (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (((2 * (v25 & 3)) ^ 0x52) & v30 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xFFFFFF2F) | (v25 ^ (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (((2 * (v25 & 3)) ^ 0x52) & v30 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) & 0xF5) ^ 0xB68D8CAD;
  return (*(v15 + 8 * ((873 * (v9 == 255)) ^ v8)))();
}

uint64_t sub_A0024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X8>)
{
  v10 = *(v9 + 16) + v7;
  v11 = *(*(v6 - 132921991) + ((((24 * (a5 ^ 0x2B2)) ^ v10 & 0xFFFFFFF8 ^ 0x3F6FF44E) + ((2 * (v10 & 0xFFFFFFF8)) & 0x7EDFFC80) - 147403478) & *(v8 - 464343834)));
  v12 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (((2 * (v12 + v11)) | 0x5908A262456591FALL) - (v12 + v11) - 0x2C84513122B2C8FDLL) ^ 0x241B146A837278E8;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8D188F9068EB840;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x7E1F3531EE2817FLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xBEACFB9F4D191338;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8A4943FA3C1BB996;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8F826D48DCAD4006;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x3E735FFD9083B0A3;
  return (*(a6 + 8 * a5))(a1, a2, a3, a4, (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (v10 & 7u))) ^ *v10);
}

uint64_t sub_A0290()
{
  *(v1 + 40);
  *(v1 + 52);
  return (*(v0 + 8 * v2))();
}

uint64_t sub_A02B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, uint64_t a25)
{
  v31 = 1600728529 * ((((2 * &a22) | 0xD6E4128C) - &a22 - 1802635590) ^ 0xEE47C307);
  a25 = v27;
  a24 = v26 ^ v31;
  a22 = v31 ^ v28;
  v32 = (*(v25 + 8 * (v30 + 2169)))(&a22);
  return (*(v25 + 8 * ((27 * (a23 == v29 + ((v30 - 498) | 0x20) - 112)) ^ (v30 + 1951))))(v32);
}

uint64_t sub_A0548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 120) = &a19;
  *(v22 - 124) = -1038737430 - 1183051249 * ((v22 - 128) ^ 0xE5E3D6DC) + v21 - 69;
  v23 = (*(v20 + 8 * (v21 + 1158)))(v22 - 128);
  *(v19 + 424) = *(v22 - 128);
  *(v19 + 428) = 0x1000000;
  return (*(v20 + 8 * ((((((v21 ^ 0x8B) + 1) ^ (*(a14 + 1044 * a13 + 56) == 0)) & 1) * (((v21 - 809012966) & 0x30388EF7) - 1568)) ^ v21)))(v23);
}

uint64_t sub_A0604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, char *a25)
{
  v29 = 1600728529 * (&a22 ^ 0x8535CA41);
  a25 = &a12;
  a22 = v29 ^ v28;
  a24 = (v27 + v26 - 231) ^ v29;
  v30 = (*(v25 + 8 * (v26 ^ 0x992)))(&a22);
  return (*(v25 + 8 * (((a23 != ((v26 - 1426064964) ^ 0x6ABFC20D)) * (v26 - 739)) ^ v26)))(v30);
}

uint64_t sub_A07EC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v4 = *(v2 + 24) == 1919750706;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((v5 * (v1 + 1258 + ((v1 + 1937179551) & 0x8C88F9ED) - 2855)) ^ v1)))();
}

uint64_t sub_A0850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v25 - 116) = v24 - 434465113 * ((v23 - 290197901 - 2 * (v23 & 0xEEB3EE73)) ^ 0x1B11C42C) - 24018;
  *(v25 - 128) = &a19;
  v26 = (*(v21 + 8 * (v24 ^ 0x6A3E)))(v25 - 128);
  *(v19 + 20 * v20 + 92) = *(v25 - 120);
  return (*(v21 + 8 * ((((v24 - 24797) | 0x1C8) + 24821) ^ v24 ^ (1894 * (((v22 - v24) | (v24 - v22)) >= 0)))))(v26);
}

uint64_t sub_A0910(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = STACK[0x518] + 4 * ((v9 + 551 * v8) % 0x1D48u);
  v13 = *v7;
  v14 = *STACK[0x538];
  v15 = STACK[0x530];
  v16 = (v12 + *(v14 + (v13 & STACK[0x540])) + 1527793161);
  v17 = *a7 ^ 0xF1E76555;
  v18 = (((1645 * v8 + 421120) % 0xA88u) ^ 0xDEFBBFCFFB5FF3EFLL) + v11 + ((2 * ((1645 * v8 + 421120) % 0xA88u)) & 0x7DE);
  v19 = (v18 + 77597713 + *(v14 + (v13 & v10)) + v10);
  *(v18 + 0x1624138DACE962A5) = *((qword_191540 ^ 0xDDC772C6444EEA48) + (v19 & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 - 2) & v17)) ^ *(v12 + a2) ^ (45 * v12) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v16 & v17)) ^ (110 * (v18 + 17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + 2) & v17)) ^ 0x6C;
  return (*(STACK[0x548] + 8 * ((35 * ((a4 ^ 0x804) + v8 != 256)) ^ (a4 - 1279))))();
}

uint64_t sub_A0AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12)
{
  *(v13 + 12) = 0x4B5F60F94B5F60F9;
  v19 = (&a9 ^ 0x8535CA41) * v16;
  a12 = v14;
  a9 = v19 ^ v17;
  a11 = (v12 + v18 + 1174) ^ v19;
  v20 = (*(v15 + 8 * (v18 + 1582)))(&a9);
  v21 = a10;
  *(v13 + 8) = a10;
  return (*(v15 + 8 * ((22 * (v21 == ((v18 - 484486938) & 0x1CE0AFBD) - 1069532745)) ^ v18)))(v20);
}

uint64_t sub_B2A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v29 = v26 + v24;
  v30 = ((((&a22 | 0x5D86BA16) ^ 0xFFFFFFFE) - (~&a22 | 0xA27945E9)) ^ 0x45C6E155) * v27;
  a22 = v28;
  a23 = v30 ^ 0x7E746FA1;
  a24 = v29 ^ v30;
  v31 = (*(v25 + 8 * (v26 ^ 0xAAFFF656)))(&a22);
  return (*(v25 + 8 * ((3365 * (v26 >= (v26 ^ 0xBA90A6CB))) ^ (v29 + 762))))(v31);
}

uint64_t sub_B2BD0@<X0>(uint64_t a1@<X2>, unsigned int a2@<W7>, uint64_t a3@<X8>)
{
  v4 = v3 - 420;
  v5 = *(*(a1 + 8) + a2);
  return (*(a3 + 8 * v4))();
}

uint64_t sub_B2CE8(_BYTE *a1)
{
  a1[15] = (v1[15] ^ 0x7F) + 2 * v1[15] + ((v2 - 20) & 0x77) - 104;
  a1[14] = (v1[14] ^ 0x7F) + 2 * v1[14] - 17;
  a1[13] = (v1[13] ^ 0x7F) + 2 * v1[13] - 17;
  a1[12] = (v1[12] ^ 0x7F) + 2 * v1[12] - 17;
  a1[11] = (v1[11] ^ 0x7F) + 2 * v1[11] - 17;
  a1[10] = (v1[10] ^ 0x7F) + 2 * v1[10] - 17;
  a1[9] = (v1[9] ^ 0x7F) + 2 * v1[9] - 17;
  a1[8] = (v1[8] ^ 0x7F) + 2 * v1[8] - 17;
  a1[7] = (v1[7] ^ 0x7F) + 2 * v1[7] - 17;
  a1[6] = (v1[6] ^ 0x7F) + 2 * v1[6] - 17;
  a1[5] = (v1[5] ^ 0x7F) + 2 * v1[5] - 17;
  a1[4] = (v1[4] ^ 0x7F) + 2 * v1[4] - 17;
  a1[3] = (v1[3] ^ 0x7F) + 2 * v1[3] - 17;
  a1[2] = (v1[2] ^ 0x7F) + 2 * v1[2] - 17;
  a1[1] = (v1[1] ^ 0x7F) + 2 * v1[1] - 17;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_B2EE0@<X0>(int a1@<W3>, int a2@<W6>, int a3@<W8>)
{
  LODWORD(STACK[0x105C]) = v5;
  LODWORD(STACK[0x1058]) = a3;
  LODWORD(STACK[0x1054]) = v4;
  v8 = v4 < LODWORD(STACK[0xBB4]) && v4 < LODWORD(STACK[0xB1C]);
  return (*(v6 + 8 * ((v8 * ((139 * (v3 ^ (a2 - 2))) ^ 0x36C)) ^ (a1 + v3 + 794))))();
}

uint64_t sub_B2F34()
{
  v5 = *(v1 + 4 * (v3 - 1));
  *(v1 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v1 + 4 * v3)) - v3;
  v6 = 434465113 * ((((v4 - 208) | 0xF5E79E6F96720194) - ((v4 - 208) & 0xF5E79E6F96720194)) ^ 0xFCC137B063D02BCBLL);
  v7 = v4 - 208;
  *(v7 + 40) = ((v2 + 1256522588) ^ 0xA9) - v6;
  *v7 = v6 ^ (v2 + 1256522588) ^ 1;
  *(v7 + 4) = v2 + 1256522588 - v6;
  *(v7 + 32) = v6 + 623;
  *(v7 + 28) = -434465113 * ((((v4 - 208) | 0x96720194) - ((v4 - 208) & 0x96720194)) ^ 0x63D02BCB);
  *(v7 + 16) = v3 + 1 - v6;
  *(v7 + 8) = v6 + v2 + 1596328632;
  v8 = (*(v0 + 8 * (v2 - 2038112765)))(v4 - 208);
  return (*(STACK[0x948] + 8 * *(v4 - 184)))(v8);
}

uint64_t sub_B3064@<X0>(int a1@<W2>, void *a2@<X6>, int a3@<W8>)
{
  v6 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v7 = STACK[0x518] + 4 * ((551 * a3 + v5) % (((2 * v4) ^ 0xDD2u) + 6294));
  v8 = STACK[0x518] + 4 * ((551 * a3 + 2552232) % 0x1D48u);
  v9 = *a2 ^ 0xF1E76555;
  v10 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + v6 + a1) & v9));
  v11 = LODWORD(STACK[0x52C]);
  *(v8 - 0x40E8C283FA03C307) = (1912024365 * v7) ^ *(v7 + v3) ^ (1912024365 * v8) ^ v10 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + v6 + 1527793161) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v7 + LODWORD(STACK[0x52C])) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v7 + 1527793161) & v9));
  return (*(STACK[0x548] + 8 * (v4 | (2 * ((a3 + 1) > 0xFF)))))();
}

uint64_t sub_B31B4()
{
  v3 = *(STACK[0xCF8] + 32);
  v4 = 1938608989 * ((2 * ((v1 - 208) & 0x6A09F568) - (v1 - 208) - 1779037547) ^ 0xEFD65463);
  v5 = v1 - 208;
  *(v5 + 32) = STACK[0x860];
  *(v5 + 40) = v3;
  *(v5 + 4) = LODWORD(STACK[0x870]) ^ v4;
  *(v5 + 8) = v0 - v4 + 744280465;
  v6 = STACK[0x868];
  *(v5 + 16) = STACK[0x858];
  *(v5 + 24) = v6;
  v7 = (*(v2 + 8 * (v0 ^ 0xB24)))(v1 - 208);
  v8 = LODWORD(STACK[0x8A0]);
  v9 = LODWORD(STACK[0x890]);
  return (*(STACK[0x948] + 8 * v0))(v7, STACK[0x360], 0x8F826D48DCAD4006, 2256851803, 0xD8D188F9068EB840, 0xD6133CBFBFA79A76, 2038115493, 0xBEACFB9F4D191338);
}

uint64_t sub_B32B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x900]) = a6;
  v12 = v6 - a4 - 429;
  v13 = v6 - a4 + 833341812;
  v14 = *(STACK[0x378] - 1048792407);
  LODWORD(STACK[0x1188]) = -2122603157;
  LODWORD(STACK[0x118C]) = STACK[0x8F0];
  LODWORD(STACK[0xAE4]) = v14 - 1635019061;
  v15 = *(v8 - 1395893271);
  v16 = STACK[0x8E8];
  *(v7 + 8) = STACK[0x8E8];
  STACK[0x8F8] = v15;
  *(v7 + 32) = v15 ^ v16;
  *v7 = v13 ^ v16;
  *(v7 + 16) = 1507204927 - v16 + v12;
  *(v7 + 20) = (v13 ^ 0x5B) + v16;
  *(v7 + 24) = v16;
  *(v7 + 28) = v16 + v13 - 136;
  (*(v11 + 8 * (v9 + v12 + 49)))(v10 - 208);
  return (*(STACK[0x948] + 8 * *(v7 + 40)))();
}

uint64_t sub_B3394(uint64_t a1, uint64_t a2)
{
  v6 = (*v2 ^ 0x7FCFEFDFFF57FEBFLL) - 0x18C1028B4C014024 + ((2 * *v2) & 0x1FEAFFD7ELL);
  *(v4 + 1464) = *(v5 + 8 * v3);
  return (*(v5 + 8 * (v3 ^ 0xCC)))(a1, a2, 938337180);
}

uint64_t sub_B3504@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W7>, uint64_t a8@<X8>)
{
  if (*(v8 + 24))
  {
    v9 = 0;
  }

  else
  {
    v9 = (((a2 - 4) & 0x3A ^ (a2 - 8) & 0x77 ^ 0x4A) & 0x7F) == a3;
  }

  v10 = v9;
  if (a5)
  {
    v10 = 0;
  }

  if (a7)
  {
    v10 = 0;
  }

  if (a6 != 3)
  {
    v10 = 0;
  }

  return (*(a8 + 8 * ((3882 * v10) ^ a2)))(a1, a4);
}

uint64_t sub_B3598()
{
  v3 = (*(v2 + 8 * (v1 + 596)))();
  v4 = STACK[0x948];
  *(v0 + 72) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_B35C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, unsigned int a13, unsigned int a14, int a15, int a16, unsigned int *a17, uint64_t a18, int *a19, int *a20)
{
  v26 = *(v20 + 12);
  v27 = v26 ^ 0xFF4F6F7C;
  v28 = (v26 << (-32 * (v23 ^ 0xFB) + 33)) & 0xFE9EDEF8;
  v29 = 1600728529 * ((1551027257 - (&a14 | 0x5C72CC39) + (&a14 | 0xA38D33C6)) ^ 0x26B8F987);
  a16 = (v23 + 2326) ^ v29;
  a14 = v29 + v27 + 1744755704 + v28;
  a19 = &a11;
  a20 = &a12;
  a17 = &a13;
  a18 = v20;
  v30 = (*(v22 + 8 * (v23 + 2564)))(&a14);
  v31 = a15;
  *(v20 + 12) += a11;
  v32 = (v31 ^ 0xDCE829AF) & (2 * (v31 & 0xDECAADCF)) ^ v31 & 0xDECAADCF;
  v33 = ((2 * (v31 ^ 0xC07C2AAB)) ^ 0x3D6D0EC8) & (v31 ^ 0xC07C2AAB) ^ (2 * (v31 ^ 0xC07C2AAB)) & 0x1EB68764;
  v34 = v33 ^ 0x2928124;
  v35 = (v33 ^ 0x1C240640) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0x7ADA1D90) & v34 ^ (4 * v34) & 0x1EB68764;
  v37 = (v36 ^ 0x1A920500) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0x4248264)) ^ 0xEB687640) & (v36 ^ 0x4248264) ^ (16 * (v36 ^ 0x4248264)) & 0x1EB68760;
  v39 = v37 ^ 0x1EB68764 ^ (v38 ^ 0xA200600) & (v37 << 8);
  v40 = (v31 ^ (2 * ((v39 << 16) & 0x1EB60000 ^ v39 ^ ((v39 << 16) ^ 0x7640000) & (((v38 ^ 0x14968124) << 8) & 0x1EB60000 ^ 0x8300000 ^ (((v38 ^ 0x14968124) << 8) ^ 0x36870000) & (v38 ^ 0x14968124)))) ^ 0x6D9A9BF32ED927A6) & (v24 ^ 0xEDBABBFBFFFFFFFFLL);
  v41 = ((v21 ^ 0xFD) - 113) ^ v21 ^ ((v21 ^ 0x7A) + 10) ^ ((v21 ^ 0xF4) - 120) ^ (-v21 - 116);
  v42 = (((a13 | v25) - ((2 * (a13 | v25)) & 0x1DE4C543C777BF0ALL) + 0xEF262A1E3BBDF85) ^ 0xEF262A1E3BBDF85) << ((v41 ^ 0x21) & 0x23 ^ 0x21u) << (v41 & 0x1C ^ 0xCu);
  *v20 = (v40 ^ (v24 | 0x6D9A9BF3C13684A1)) << ((v41 ^ 0x21) & 0x11 ^ 1u) << ((v41 ^ 0x21) & 0x2E ^ 0x2Cu);
  *(v20 + 32) = v42;
  return (*(v22 + 8 * v23))(v30);
}

uint64_t sub_B3AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x940];
  v5 = STACK[0x940] ^ 0x797B2CD2;
  v6 = STACK[0xC80];
  *v6 = 0;
  v6[1] = 0;
  return (*(v3 + 8 * (((LODWORD(STACK[0xEF4]) == 65021204) * (v5 ^ 0x797B2AAF)) ^ v4)))(a1, a2, a3, 2256851803);
}

uint64_t sub_B3B6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v10 = (v6 + (a3 + v8));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a2 + a3);
  *v13 = v11;
  v13[1] = v12;
  return (*(v9 + 8 * ((((((v4 + 40) | v5) ^ a1) + a3 != v3) * v7) ^ (v4 + 1428))))();
}

uint64_t sub_B3BB0@<X0>(void *a1@<X0>, int a2@<W1>, unsigned __int8 a3@<W6>, int a4@<W8>)
{
  v14 = ((a4 + 0x80) & 0xF5) + (1 << a3) - ((2 * (1 << a3)) & 0xB0) - 13;
  v15 = *v4;
  v16 = *STACK[0x538];
  v17 = *(v16 + (v15 & v13));
  v18 = *a1 ^ v10;
  LODWORD(v15) = *(v16 + (v15 & STACK[0x540])) + v9;
  v19 = (v15 + LODWORD(STACK[0x52C]));
  v20 = (v15 + v8);
  v21 = 1645 * a3 + 3822980 - 2696 * (((12744711 * (1645 * a3 + 3822980)) >> 32) >> 3);
  LODWORD(v16) = *(v9 - 0x40E8C283FA03C307) ^ v12 ^ *((qword_191540 ^ v7) + (v19 & v18)) ^ *((qword_191540 ^ v7) + (v20 & v18));
  v22 = (v21 ^ 0x5F7EFCDF3DF8EBF7) + STACK[0x520] + ((2 * v21) & 0x17EE);
  v23 = ((v6 ^ v11 ^ *((qword_191540 ^ v7) + ((v17 + v5 + 1186175272) & v18)) ^ *((qword_191540 ^ v7) + ((v17 + v5 + 1186175274) & v18)) ^ 0x29) & (v14 ^ 0xD8) ^ v14 & 0x6F) == 72;
  v24 = *(v22 - 0x6A5F298195AF9563) ^ (110 * (v22 + 9)) ^ *((qword_191540 ^ v7) + ((v22 - 1039723511 + v17 + 1186175272) & v18)) ^ *((qword_191540 ^ v7) + ((v22 - 1039723511 + v17 + 1186175274) & v18)) ^ v16 ^ 0x42;
  v25 = v16 ^ 4;
  if (v23)
  {
    v24 = v25;
  }

  *(v9 - 0x40E8C283FA03C307) = a2 ^ *((qword_191540 ^ v7) + (v19 & v18)) ^ *((qword_191540 ^ v7) + (v20 & v18)) ^ v24 ^ 0x2E;
  return (*(STACK[0x548] + 8 * (((2 * (((a3 + 1) & 0xF8) == 0)) | (16 * (((a3 + 1) & 0xF8) == 0))) ^ a4)))();
}

uint64_t sub_B3DE4(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v10 = *(STACK[0x6C0] + (3013 * v7 + 4661111) % 0x1188u);
  v11 = *(v9 + 4 * (((((v10 | ((v10 < 0x7D) << 8)) * a4 + 15033340) % (((a1 + 898) | 0x20Cu) + 11809)) ^ 0x2FEBDFB29ABDFF1ELL) + ((2 * (((v10 | ((v10 < 0x7D) << 8)) * a4 + 15033340) % (((a1 + 898) | 0x20Cu) + 11809))) & 0x7E3C)) + 0x4050813595080388);
  v12 = 3013 * ~(v11 >> 8) + 10093550;
  LOBYTE(v10) = *(STACK[0x6C0] + (3013 * (((HIBYTE(v11) ^ 0x9BADB3C) - 1446656910) ^ ((HIBYTE(v11) ^ 0xA3C4EA2B) + 62649703) ^ ((HIBYTE(v11) ^ 0xAA7E3123) + 167849583)) + 141331724) % 0x1188);
  v13 = *(STACK[0x6C0] + v12 - 4488 * (((30623653 * v12) >> 32) >> 5));
  v14 = *(STACK[0x6C0] + 3013 * (BYTE2(v11) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v11) ^ 0x44u) + 10093550)) >> 32) >> 5));
  LOBYTE(v12) = *(STACK[0x6C0] + (3013 * (((v11 ^ 0x5126311E) - 852851969) ^ ((v11 ^ 0x40AED7B3) - 593337260) ^ ((v11 ^ 0x1188E65Bu) - 1920707140)) + 1596077627) % 0x1188);
  v15 = v8 + v7 * a4 - ((((v8 + v7 * a4) * a6) >> 32) >> 12) * a7;
  LOBYTE(v11) = (v10 & 0x83 | 0x78) ^ v10 & 0xF0;
  v16 = v14 & 0x39 ^ 0xDF;
  v17 = v14 ^ 2;
  v18 = v13 & 0x47 ^ 0xE2;
  v19 = (((v10 ^ (2 * ((v10 ^ 2) & (2 * ((v10 ^ 2) & (2 * ((v10 ^ 2) & (2 * ((v10 ^ 2) & (2 * ((v10 ^ 2) & (2 * ((v10 ^ 2) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0x73) << 16) | (((v14 ^ (2 * (v17 & (2 * (v17 & (2 * (v17 & (2 * (v17 & (2 * (v17 & (2 * (((2 * (v14 & 3)) ^ 0x3A) & v17 ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x39) << 8);
  v20 = v12 & 0xA7 ^ 0x12;
  LOBYTE(v12) = v12 ^ (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * ((v12 ^ 2) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  *(v9 + 4 * ((v15 ^ 0x3FBC3DB77EFD7F4CLL) + ((2 * v15) & 0x7E98)) + 0x10F0922040A02D0) = ((((((v13 ^ (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * v13) & 6 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x3389C6) & ~v19 | v19 & 0xCC7600) << 8) ^ 0xF77733D5) & (v12 ^ 0xFFFFFF78) | v12 & 0x2A) ^ 0xF0BA4D01;
  return (*(STACK[0x6C8] + 8 * ((27 * (((v7 + 1 - a1) | (a1 - (v7 + 1))) >> 31)) ^ (a1 + 1422))))();
}

uint64_t sub_B41F4()
{
  **(v1 + 328) = STACK[0xD14];
  v3 = *(v1 + 32);
  *(v3 + 84) = 1;
  *(v3 + 100) = STACK[0xCBC];
  *(v3 + 124) = 1;
  *(v3 + 116) = 0x9000000010;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_B42B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a4 + a7 + 1448;
  v10 = *(v7 + 1816);
  v11 = (*(v8 + 8 * (a7 - 2038112777)))(*v10);
  v12 = STACK[0x948];
  *v10 = *(v7 + 1840);
  **(v7 + 1824) = STACK[0x110C];
  v13 = LODWORD(STACK[0x1108]);
  return (*(v12 + 8 * v9))(v11);
}

uint64_t sub_B4328()
{
  LODWORD(STACK[0x310]) = ((v0 + 649) ^ 0x27C0E86B) & STACK[0x910];
  v2 = LODWORD(STACK[0x858]);
  return (*(v1 + 8 * (v0 - 596)))();
}

uint64_t sub_B4400(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  STACK[0x570] = 0;
  v206 = LODWORD(STACK[0x810]) - 4864 * STACK[0x800];
  v43 = STACK[0x870];
  v44 = v42 & STACK[0x870];
  LODWORD(STACK[0x910]) = STACK[0x870] >> 30;
  LODWORD(STACK[0x858]) = v43 >> 28;
  v45 = v43 >> 25;
  v46 = v43;
  v47 = STACK[0x928];
  v48 = a2 & STACK[0x928];
  LODWORD(STACK[0x8F8]) = STACK[0x928] >> 29;
  LODWORD(STACK[0x850]) = v47 >> 27;
  v49 = v47 >> 26;
  v50 = BYTE3(v47);
  v51 = v47;
  STACK[0x928] = v47;
  v52 = STACK[0x930];
  v53 = STACK[0x7D8];
  v54 = STACK[0x890];
  v55 = STACK[0x878];
  v56 = (((v42 ^ (2 * v44)) & STACK[0x7D8]) << STACK[0x878]) | (((v42 ^ (2 * v44)) & STACK[0x930]) >> STACK[0x890]);
  LODWORD(STACK[0x860]) = a6;
  v57 = (v48 << (a6 ^ 0xB8)) ^ a2;
  v58 = v46;
  STACK[0x870] = v46;
  v59 = STACK[0x808];
  v60 = STACK[0x8F0];
  v61 = v55;
  v62 = ((v57 & STACK[0x808]) << v55) | ((v57 & v52) >> STACK[0x8F0]);
  v63 = STACK[0x840];
  v64 = STACK[0x830];
  v65 = (((v41 ^ (2 * (v41 & v46))) & STACK[0x840]) >> v54) | (((v41 ^ (2 * (v41 & v46))) & v53) << STACK[0x830]);
  v66 = 16843009 * LODWORD(STACK[0x880]);
  v67 = STACK[0x940];
  v68 = 16843009 * *(STACK[0x3E0] + 6);
  v69 = ((((v40 ^ (2 * (v40 & v46))) & v52) >> STACK[0x8F0]) | (((v40 ^ (2 * (v40 & v46))) & STACK[0x808]) << STACK[0x830])) ^ LODWORD(STACK[0x940]);
  LODWORD(STACK[0x6C0]) = 2 * v51;
  v70 = STACK[0x260];
  v71 = ((v50 & 1) << 25) | 0x1000000;
  v72 = (*(STACK[0x260] + v69) << 8) | (*(STACK[0x260] + BYTE1(v69)) << 16) | (*(STACK[0x260] + BYTE2(v69)) << 24) | *(STACK[0x260] + (v69 >> 24));
  LODWORD(v55) = v53;
  STACK[0x7D8] = v53;
  v73 = (v53 & v71) << v61;
  v74 = v61;
  v75 = v68 ^ v66;
  v76 = v56 ^ (((v71 & v63) >> v54) + v73) ^ v72;
  v77 = __ROR4__(__ROR4__(v76 ^ v62, 18) ^ 0x5AB7C0EF, 14) ^ 0x3BD6ADF;
  v78 = v65 ^ v67 ^ v77;
  v79 = STACK[0x8E8];
  v80 = LODWORD(STACK[0x8E8]) ^ 0x38383838 ^ v75 ^ v69 ^ v78;
  v81 = 1377 * (*(v70 + v80) ^ 0x69) + 1687469;
  v82 = STACK[0x900];
  v83 = (*(v70 + BYTE1(v80)) << 16) | (((*(STACK[0x900] + v81 - 4864 * (((1766023 * v81) >> 32) >> 1)) ^ 0x81) - 110) << 8) | (*(v70 + BYTE2(v80)) << 24) | *(v70 + (v80 >> 24));
  LODWORD(STACK[0x8E8]) = STACK[0x8E8];
  v84 = v75 ^ v79;
  v85 = v75 ^ v79 ^ v76 ^ v83;
  LODWORD(STACK[0x580]) = 2 * v58;
  v86 = ((v63 & (((v45 & 1) << 26) | 0x2000000)) >> v54) | ((v55 & (((v45 & 1) << 26) | 0x2000000)) << v64);
  v87 = v86 & 0x10;
  if ((v85 & v86 & 0x10) != 0)
  {
    v87 = -v87;
  }

  v88 = (v87 + v85) ^ v86 & 0xFFFFFFEF;
  v89 = v77 ^ v84 ^ v88;
  v90 = v89 ^ v67;
  v91 = v78 ^ v79 ^ v80 ^ v89;
  v92 = *(v70 + (v78 ^ v79 ^ v80 ^ v89));
  v93 = v89 ^ v78;
  v94 = *(v70 + BYTE2(v91));
  LODWORD(STACK[0x680]) = v90;
  v95 = *(v82 + 1377 * (HIBYTE(v91) ^ 0xEB) + 3822552 - 4864 * (((7064091 * (1377 * (HIBYTE(v91) ^ 0xEB) + 3822552)) >> 32) >> 3));
  v96 = ((v49 & 1) << 27) | 0x4000000;
  v97 = v59;
  v98 = ((v92 << 8) | (v94 << 24) | (*(v70 + ((*(v82 + 1377 * (BYTE1(v91) ^ 0x60) + 5554818 - 4864 * (((7064091 * (1377 * (BYTE1(v91) ^ 0x60u) + 5554818)) >> 32) >> 3)) ^ 0xE2) - 110)) << 16) | *(v70 + (((9 * (((v95 ^ 0x7A) - 122) ^ ((v95 ^ 0x55) - 85) ^ ((v95 ^ 0x59) - 89)) + 37) ^ (16 * ((3 * (((v95 ^ 4) + 28) ^ -v95 ^ ((v95 ^ 0xD) + 19))) & 3))) - 110))) ^ ((v96 & v52) >> v60) ^ ((v96 & v59) << v74) ^ v88;
  v99 = (v90 ^ v75) + (v98 ^ v75) - 2 * ((v90 ^ v75) & (v98 ^ v75));
  v100 = v84 ^ v93 ^ v91 ^ v99;
  HIDWORD(v101) = v100;
  LODWORD(v101) = (v100 ^ 0x40) << 24;
  v102 = (((v101 >> 26) >> 6) | (4 * (v101 >> 26))) ^ 0x3B;
  v103 = *(v70 + ((*(v82 + 1377 * ((v84 ^ v93 ^ v91 ^ v99) ^ 0x32) + 3470040 - 4864 * (((7064091 * (1377 * ((v84 ^ v93 ^ v91 ^ v99) ^ 0x32u) + 3470040)) >> 32) >> 3)) ^ (v102 - ((2 * v102) & 0xEC) + 118) ^ 0x32) + 102));
  v104 = v100 >> (v102 & 0x18) >> (v102 & 0x18 ^ 0x18);
  v105 = 1377 * (((59 * v104) ^ 0x8CC) + ((118 * v104) & 0x1A6 ^ 0x26));
  v106 = v105 - 9728 * (((7064091 * v105) >> 32) >> 4);
  if (v106 >> 8 >= 0x13)
  {
    v106 -= 4864;
  }

  v107 = *(v82 + v106);
  v108 = v107 ^ 0xED;
  v109 = (v107 ^ 0xED) - (v107 ^ 0x1B);
  v110 = v107 ^ 0x20;
  v111 = v59;
  if (!STACK[0x928])
  {
    v110 = 48;
  }

  v112 = v74;
  v113 = v108 & v110 & 0xF0 ^ 0xA6 ^ ((((v109 ^ 0xFC) + v108) >> 4) | (16 * ((v109 ^ 0xFC) + v108)));
  v114 = v60;
  v115 = (*(v70 + BYTE1(v100)) << 16) | (*(v70 + BYTE2(v100)) << 24) | (v103 << 8) | *(v70 + ((((v113 >> 4) | (16 * v113)) ^ 0x6A) + 48));
  v116 = v52;
  v117 = (v115 + v98 - 2 * (v115 & v98)) ^ (((((STACK[0x850] & 1) << 28) | 0x8000000) & v63) >> v60) ^ (((((STACK[0x850] & 1) << 28) | 0x8000000) & v97) << v74);
  v118 = v93 ^ v67 ^ v117;
  v119 = ((STACK[0x858] & 1) << 29) | 0x10000000;
  v120 = v119 & v52;
  v121 = STACK[0x7D8];
  v122 = STACK[0x830];
  LODWORD(v120) = ((*(v70 + (v118 ^ v84 ^ v100)) << 8) | (*(v70 + ((v118 ^ v84 ^ v100) >> 16)) << 24) | (*(v70 + ((v118 ^ v84 ^ v100) >> 8)) << 16) | *(v70 + ((v118 ^ v84 ^ v100) >> 24))) ^ (v120 >> v54) ^ ((STACK[0x7D8] & v119) << STACK[0x830]);
  v123 = v120 ^ v99;
  v124 = v123 ^ v75;
  v125 = v75 ^ 0x38383838;
  v126 = v75;
  LODWORD(STACK[0x698]) = v75;
  v127 = v123 ^ v100 ^ 0x38383838;
  v128 = v123 ^ v75 ^ v118;
  v129 = __ROR4__(v120 ^ v117, 22);
  LODWORD(v120) = *(v70 + BYTE2(v127));
  v130 = *(v82 + (1377 * ((v120 + 110) ^ 0x11) - 4864 * ((883012 * (1377 * ((v120 + 110) ^ 0x11u))) >> 32)));
  v131 = ((STACK[0x8F8] & 1) << 30) | 0x20000000;
  v132 = v120 - ((2 * (v120 + 110)) & 0xFFFFFFEC) - 28;
  LODWORD(v120) = (*(v70 + v127) << 8) | (*(v70 + BYTE1(v127)) << 16);
  v133 = *(v70 + (v127 >> 24));
  v134 = v112;
  v135 = (v131 & v63) >> v54;
  STACK[0x770] = v135;
  v136 = (v135 + ((v121 & v131) << v112)) ^ __ROR4__(v129 ^ 0x6A3DADE8, 10) ^ ((((v130 ^ v132 ^ 0x7F) & 0xE0) << 19) | ((v130 ^ v132 ^ 0x7F) << 27) | v120 | v133);
  LODWORD(v120) = v124 ^ v125 ^ v67 ^ v136;
  LODWORD(STACK[0x2F8]) = v128;
  v137 = v120 ^ v128 ^ v126;
  v138 = v84 ^ 0x4222B753 ^ v127 ^ v120 ^ v128;
  LODWORD(v127) = 1377 * ((*(v70 + BYTE1(v138)) ^ 0xFA2) + 2 * (*(v70 + BYTE1(v138)) & 0xC2 ^ 0x40));
  v139 = (*(v70 + v138) << 8) | (((*(v82 + v127 - 4864 * (((7064091 * v127) >> 32) >> 3)) ^ 0xE2) - 110) << 16) | *(v70 + (v138 >> 24)) | (*(v70 + BYTE2(v138)) << 24);
  LODWORD(v127) = (LODWORD(STACK[0x910]) << 31) | 0x40000000;
  v140 = v111;
  v141 = v136 ^ (((v127 & v116) >> v114) + ((v111 & v127) << v122)) ^ v139;
  LODWORD(v120) = v67 ^ 0x4222B753 ^ v120 ^ v141;
  v142 = v137 ^ v120;
  v143 = v125 ^ LODWORD(STACK[0x8E8]) ^ v138 ^ v137 ^ v120;
  LODWORD(v138) = 1377 * ((v125 ^ LOBYTE(STACK[0x8E8]) ^ v138 ^ v137 ^ v120) ^ 0xEB) + 3822552;
  LOBYTE(v138) = *(v82 + v138 - 4864 * (((7064091 * v138) >> 32) >> 3));
  LOBYTE(v139) = -38 - 9 * (((v138 ^ 0x89) + 119) ^ ((v138 ^ 0xC1) + 63) ^ ((v138 ^ 0x3E) - 62));
  LOBYTE(v138) = (((v138 ^ 0xC4) + 60) ^ ((v138 ^ 0xB5) + 75) ^ ((v138 ^ 7) - 7)) - 124;
  LOBYTE(v137) = (((17 * v138) ^ 0x20) - v138 + 32 * v138) | 0xC0;
  LODWORD(v138) = v142 ^ v125;
  LOBYTE(v142) = (v139 ^ v137 ^ 0x1F) - 110;
  v144 = 1377 * (*(v70 + BYTE1(v143)) ^ 0xEB) + 3822552;
  LOBYTE(v144) = *(v82 + v144 - 4864 * (((7064091 * v144) >> 32) >> 3));
  LOBYTE(v127) = -38 - 9 * (((v144 ^ 0xCA) + 54) ^ ((v144 ^ 0xA2) + 94) ^ ((v144 ^ 0x1E) - 30));
  LOBYTE(v144) = (((v144 ^ 0x53) - 83) ^ ((v144 ^ 0xBE) + 66) ^ ((v144 ^ 0x9B) + 101)) - 124;
  LOBYTE(v144) = v127 ^ ((((11 * v144) ^ 0x20) + 37 * v144) | 0xC0) ^ 0x1F;
  LODWORD(v127) = *(v70 + (v143 >> 24));
  v145 = (*(v70 + v142) << 8) | ((v144 - 110) << 16) | (*(v70 + BYTE2(v143)) << 24);
  LOBYTE(v144) = (*(v82 + 1377 * (v127 ^ 0x32) + 3470040 - 4864 * (((7064091 * (1377 * (v127 ^ 0x32) + 3470040)) >> 32) >> 3)) ^ (v127 - ((2 * v127) & 0xEC) + 118) ^ 0x49) + 102;
  LODWORD(STACK[0x590]) = v141;
  v146 = v141 ^ (((v63 & 0x80000000) >> v54) + ((v111 & 0x80000000) << v134)) ^ 0x4222B753 ^ (v145 & 0xFFFFFF00 | v144);
  LODWORD(v120) = v120 ^ v125 ^ v67 ^ v146;
  LODWORD(v127) = v120 ^ v67;
  v147 = v138 ^ v120;
  LODWORD(v143) = v147 ^ 0x4222B753 ^ v143;
  LODWORD(STACK[0x848]) = v143;
  v148 = v143 ^ v125 ^ v67;
  v149 = *(v70 + v148);
  v150 = STACK[0x580];
  LODWORD(v138) = STACK[0x580] & 0x36000000 ^ 0x1B000000;
  v151 = *(v70 + (v148 >> 24));
  v152 = STACK[0x7D8];
  v153 = STACK[0x7D8] & v138;
  v154 = (v149 << 8) | (*(v70 + BYTE1(v148)) << 16) | (*(v70 + BYTE2(v148)) << 24) | v151;
  STACK[0x7A8] = v153 << v122;
  v155 = v154 ^ (((v138 & v116) >> v114) | (v153 << v122)) ^ v146;
  v156 = v127 ^ v155;
  v157 = v127 ^ v155 ^ 0x4222B753;
  LODWORD(STACK[0x940]) = v67;
  v158 = v147 ^ 0x4222B753 ^ v67 ^ v148 ^ v157;
  v159 = *(v70 + BYTE1(v158));
  if ((v148 >> 24) == (BYTE3(v148) - 11))
  {
    v160 = v149;
  }

  else
  {
    v160 = v147 ^ 0x53 ^ v67 ^ v148 ^ v157;
  }

  v161 = *(v70 + v160);
  v162 = *(v70 + (v158 >> 24));
  STACK[0x578] = v158;
  v163 = BYTE2(v158);
  v164 = STACK[0x6C0];
  v165 = STACK[0x6C0] & 0xFDD680C4 ^ 0xFEEB4062;
  v166 = v165 & v116;
  STACK[0x5E8] = v166;
  v167 = (v166 >> v114) + ((v152 & v165) << v134);
  v168 = (v159 << 16) | (v161 << 8) | (*(v70 + v163) << 24);
  v169 = *(v82 + 1377 * (v162 ^ 0x4C) + 2756754 - 4864 * (((7064091 * (1377 * (v162 ^ 0x4Cu) + 2756754)) >> 32) >> 3));
  v170 = v168 & 0xFFFFFF00 | ((((((v169 ^ 0x2E) - 46) ^ ((v169 ^ 0x73) - 115) ^ ((v169 ^ 0x2B) - 43)) - 88) ^ 0xCC) + 102);
  v171 = STACK[0x870];
  if (v151)
  {
    v172 = STACK[0x870] ^ 0x49FFFFFF;
  }

  else
  {
    v172 = 905969664;
  }

  v173 = STACK[0x570];
  v174 = v157 ^ LODWORD(STACK[0x8E8]);
  v175 = v174 & 0x6A96D7C3 ^ -(v174 & 0x6A96D7C3);
  LODWORD(STACK[0x690]) = v125;
  v176 = v155 ^ ((((((2 * (v172 & v171)) ^ 0x36000000) & v116) + (v116 ^ 0x36000000 ^ (2 * (v172 & v171))) - ((2 * (v172 & v171)) ^ 0x36000000 ^ v116)) >> v114) + ((((2 * (v172 & v171)) ^ 0x36000000) & v152) << v134)) ^ v125 ^ v170;
  v177 = v176 ^ ((v175 ^ ((v174 & 0x9569283C) - v174)) + (v174 & 0x9569283C));
  LODWORD(STACK[0x728]) = v177;
  v178 = v156 ^ v147 ^ v177 & 0xFFFFFFBF ^ (v177 & 0x40 | 0x38383838);
  v179 = v150 & 0x99A8E0C4 ^ 0xCCD47062;
  v180 = v111 & v179;
  STACK[0x520] = v180;
  LODWORD(STACK[0x668]) = ((v63 & v179) >> v54) + (v180 << v122);
  v181 = v164 & 0x774FB628 ^ 0x3BA7DB14;
  v182 = (v181 & v111) << v122;
  v183 = (v181 & v63) >> v54;
  v184 = (v183 + v182);
  LODWORD(STACK[0x780]) = v176 ^ (v184 - 2 * (v183 & v182));
  LODWORD(STACK[0x560]) = (((v164 & 0x545538E0 ^ 0xAA2A9C70) & v116) >> v54) ^ (((v164 & 0x545538E0 ^ 0xAA2A9C70) & v111) << v122);
  v185 = v150 & 0xFBE22C9A ^ 0x7DF1164D;
  v186 = 1079 * (v185 % 0x101) + 1111370;
  v187 = v186 - 2120 * ((2025928 * v186) >> 32);
  v188 = v186 - 4240 * ((1012964 * v186) >> 32);
  v189 = STACK[0x5D0] + 12;
  LODWORD(STACK[0x708]) = v187;
  v190 = ((*(v189 + 4 * v187) ^ 0x82CFD988) + 2100307576) ^ ((*(v189 + 4 * v187) ^ 0x975D27A2) + 1755502686) ^ ((*(v189 + 4 * v187) ^ 0xC4A09F90) + 996106352);
  if (v188 >= 0x848)
  {
    v188 -= 2120;
  }

  STACK[0x910] = v189;
  v191 = ((*(v189 + 4 * v188) ^ 0x78D7CB5) - 126713013) ^ ((*(v189 + 4 * v188) ^ 0x1DC798C9) - 499620041) ^ ((*(v189 + 4 * v188) ^ 0xCB7885C6) + 881293882);
  v192 = (v150 & 0x98CBCFC0) + 1281746912 - ((4 * v171) & 0x10838F80);
  LODWORD(STACK[0x5A8]) = v164 & 0xABCE1662;
  v193 = v164 & 0xABCE1662 ^ 0x55E70B31;
  STACK[0x628] = (v152 & v193) << v122;
  v194 = (2039570243 * v191 - 1228039762) ^ 0xCA2272A0;
  LODWORD(STACK[0x7D0]) = v194;
  v195 = ((2039570243 * v190 - 1228039762) ^ 0xCA2272A0) + v140 - v194;
  v196 = v192 & v116;
  STACK[0x7E8] = v196;
  v197 = ((v195 & v192) << v122) | (v196 >> v54);
  v198 = LODWORD(STACK[0x698]) ^ v167;
  LODWORD(STACK[0x568]) = v178;
  v199 = v178 ^ v198;
  LODWORD(STACK[0x640]) = v193;
  STACK[0x620] = (v193 & v116) >> v54;
  STACK[0x718] = 16 * v185;
  v200 = (v140 & v185) << v134;
  STACK[0x670] = v200;
  LODWORD(STACK[0x610]) = ((v63 & v185) >> v114) + v200;
  LODWORD(STACK[0x488]) = v164 & 0xDAD7AB80;
  LODWORD(v200) = v164 & 0xDAD7AB80 ^ 0x6D6BD5C0;
  v201 = (v152 & v200) << v134;
  STACK[0x600] = v201;
  STACK[0x540] = ((v200 & v63) >> v114) ^ v201;
  STACK[0x740] = v199;
  STACK[0x798] = v197 ^ v199;
  v202 = STACK[0x928];
  LODWORD(STACK[0x800]) = STACK[0x928] & 0xAFE19D40;
  LODWORD(v200) = STACK[0x860];
  LODWORD(STACK[0x8F8]) = LODWORD(STACK[0x860]) ^ 0x16;
  v203 = *(STACK[0x948] + 8 * v200);
  LODWORD(STACK[0x550]) = ~v116;
  LODWORD(v200) = *STACK[0x270];
  LODWORD(STACK[0x720]) = v200;
  STACK[0x7F0] = v200 ^ 0x76;
  LODWORD(STACK[0x840]) = v63;
  LODWORD(STACK[0x810]) = ~v63;
  LODWORD(STACK[0x7F8]) = ~v202;
  LODWORD(STACK[0x850]) = v195;
  LODWORD(STACK[0x838]) = ~v195;
  v204 = STACK[0x7C8];
  return v203(2039570243, v184, v175, v178, v114, v134, v173, v171, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_B5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v9 = v8;
  v10 = (LODWORD(STACK[0x8F8]) - 1339) | 0x480;
  v11 = *(STACK[0x828] + 4 * a7);
  v12 = v11 ^ 0xD13261BA;
  v13 = STACK[0x928];
  v14 = (v11 ^ 0xD13261BA) & STACK[0x928];
  LODWORD(STACK[0x858]) = 2 * v14;
  v15 = (2 * v14 - 785227334 - ((4 * v14) & 0xA264C374)) ^ v11;
  v16 = (v11 ^ 0x7ED3FCFA) & STACK[0x7F8] | LODWORD(STACK[0x800]);
  LODWORD(STACK[0x808]) = v10;
  v17 = v10 ^ 0xAFE198B4 ^ v16;
  v18 = v15 & v7;
  v19 = ((2 * (v15 % 0x101)) & 0x204) + ((v15 % 0x101) ^ 0x102);
  v21 = STACK[0x850];
  v22 = (v15 & STACK[0x850]) << v8;
  LODWORD(STACK[0x830]) = v17;
  v23 = STACK[0x8F0];
  STACK[0x860] = v18;
  v24 = (v18 >> v23) | v22;
  v25 = (a7 - v12 + v14 + v17) ^ -(a7 - v12 + v14 + v17) ^ (-271561551 * (v18 >> v23) - ((-271561551 * (v18 >> v23)) ^ (a7 - v12 + v14 + v17)));
  v26 = (v25 - 271561551 * (v18 >> v23)) ^ (-271561551 * ((v24 - (v22 & ~(v18 >> v23) & 0x4000000)) ^ v22 & ~(v18 >> v23) & 0xFBFFFFFF));
  v27 = STACK[0x910];
  v28 = *(STACK[0x910] + 4 * (1079 * (v15 % 0x101) + 1668134 - 2120 * ((2025928 * (1079 * (v15 % 0x101) + 1668134)) >> 32)));
  v29 = v26 ^ (2 * (v26 & STACK[0x870]));
  v30 = *(STACK[0x910] + 4 * (1079 * v19 - 2120 * ((2025928 * (1079 * v19)) >> 32)));
  v31 = 1377 * ((v29 << STACK[0x878]) ^ 0x60) + 5554818;
  v32 = 1377 * ((59 * ((v26 ^ (2 * (v26 & STACK[0x870]))) & LODWORD(STACK[0x840]))) ^ 0x1F) + 3105779;
  v33 = STACK[0x900];
  v34 = *(STACK[0x900] + v32 - 4864 * (((7064091 * v32) >> 32) >> 3));
  v35 = (v34 ^ 0x19 ^ (v34 >> 4) & 3) + 48;
  v36 = v29 & LODWORD(STACK[0x810]) | v35;
  v37 = 4 * v36 + (v26 ^ (2 * (v26 & STACK[0x870]))) - 2 * ((4 * v36) & (v26 ^ (2 * (v26 & STACK[0x870]))));
  v38 = STACK[0x8E8];
  *(STACK[0x868] + 4 * (((*(STACK[0x900] + v31 - 4864 * (((7064091 * v31) >> 32) >> 3)) ^ 0xE2) - 110) ^ LODWORD(STACK[0x8E8]) ^ v36 ^ (v35 >> v23) ^ ((v37 ^ (4 * v29)) & 0xD4 | v37 & 0x2B ^ (4 * v29) & 0x28))) = v24 ^ LODWORD(STACK[0x880]);
  v39 = 725634795 * (((v28 ^ 0xA1AA011A) + 1582694118) ^ ((v28 ^ 0x83894D33) + 2088153805) ^ ((v28 ^ 0xF3112D93) + 216978029)) + 260465086;
  v40 = (((v30 ^ 0xB2FDDB41) + 1291986111) ^ ((v30 ^ 0x4A65E15F) - 1248190815) ^ ((v30 ^ 0x29AA5BA4) - 699030436)) + 1444679079;
  v41 = *(STACK[0x820] + v26) ^ 0x76;
  v42 = v9 ^ 0x61EEDDF6 ^ v40 ^ (4 * v40 * v40);
  v43 = (v41 ^ -v41 ^ (2 * (v41 & v13) - ((2 * (v41 & v13)) ^ v41))) + 2 * (v41 & v13);
  v44 = v42 ^ v39 ^ ((v39 | 0xD3A735A7) << (v25 & 1) << !(v25 & 1));
  v45 = v43 & v21;
  v46 = (v43 & STACK[0x930]) >> STACK[0x890];
  v47 = v45 << (v42 ^ (v39 ^ ((v39 | 0xA7) << (v25 & 1) << !(v25 & 1))));
  v48 = v47 | v46;
  v49 = (((v47 | ~v46) ^ (v47 | v46)) + v47) % 0x101;
  v50 = v43 & STACK[0x838];
  LODWORD(v47) = 1079 * v49 + 555685 - 4240 * ((1012964 * (1079 * v49 + 555685)) >> 32);
  v51 = v47 - 2120;
  if (v47 < 0x848)
  {
    v51 = 1079 * v49 + 555685 - 4240 * ((1012964 * (1079 * v49 + 555685)) >> 32);
  }

  v52 = *(v27 + 4 * v51);
  v53 = v50 & 0xDEC15D33;
  v54 = ((v52 ^ 0xCBFF45CE) + 872462898) ^ ((v52 ^ 0xA622FFD8) + 1507655720);
  v55 = (v52 ^ 0xBCEFDBAC) + 1125131348;
  v56 = v52 ^ 0xD03261BA;
  v52 &= 0x1000000u;
  v57 = v52 == 0;
  v58 = (2 * v52) ^ 0x2000000;
  v59 = v54 ^ v55;
  v60 = v58 & v56;
  v61 = v58 ^ v56;
  v62 = v50 & 0xDEC15D33 ^ 0xDEC15D33;
  v63 = v59 - 802004550;
  v64 = v61 + 2 * v60;
  if (v57)
  {
    v64 = v63;
  }

  v65 = v64 ^ v49 ^ 0x9DFEA72F;
  v66 = v62 + v53 + v26 - v65;
  v67 = (59 * ((v62 + v53 + v26 - v65) ^ (2 * ((v62 + v53 + v26 - v65) & v13))));
  LOBYTE(v67) = (((((v67 ^ 0x50) - 3) ^ v67 ^ 0x50) + (*(v33 + 1377 * ((v67 ^ 0xDC) + 452) - 4864 * (((1766023 * (1377 * ((v67 ^ 0xDCu) + 452))) >> 32) >> 1)) ^ 0x76)) ^ 0x7C) + 48;
  *(STACK[0x908] + 4 * ((((v67 & STACK[0x930]) >> v23) | (v67 << v44)) ^ v38)) = v48 ^ LODWORD(STACK[0x940]);
  return (*(STACK[0x948] + 8 * ((22 * (v66 + 1 < 0x100)) ^ LODWORD(STACK[0x8F8]))))();
}

uint64_t sub_B5904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((v8 - 1) >> 32)
  {
    v11 = 0;
  }

  else
  {
    v11 = -5 - v9 >= (v8 - 1);
  }

  v12 = v11;
  return (*(v10 + 8 * ((((v7 - 264443) & 0x797F2DFF ^ (a7 - 4)) * v12) ^ v7)))();
}

uint64_t sub_B599C()
{
  v6 = STACK[0x890];
  LODWORD(STACK[0x8C0]) = (5 * (LODWORD(STACK[0x890]) ^ 0x961)) ^ 0x42A;
  *(v1 + 12) = v6 + 853792545 - 1600728529 * ((-1408287807 - (v4 | 0xAC0F3BC1) + (v4 | 0x53F0C43E)) ^ 0xD6C50E7F);
  *v1 = v3;
  (*(v0 + 8 * (v6 + 646)))(v5 - 208);
  *(v2 + 116) = *(v1 + 8) ^ 0xC0403EE8;
  *(v1 + 12) = v6 + 853792545 - 1600728529 * ((((v5 - 208) | 0xC8D9544B) + (~(v5 - 208) | 0x3726ABB4)) ^ 0x4DEC9E0B);
  *v1 = v3;
  v7 = (*(STACK[0x948] + 8 * (v6 + 646)))(v5 - 208);
  v8 = STACK[0x8C0];
  v9 = STACK[0x948];
  v10 = *(v1 + 8);
  *(v2 + 120) = v10 ^ 0xC0403EE8;
  v11 = STACK[0x940];
  return (*(v9 + 8 * ((13 * (v10 == v8 - 1069531805)) | v6)))(v7);
}

uint64_t sub_B5AD0@<X0>(int a1@<W6>, int a2@<W8>)
{
  v5 = a2 + 556;
  v6 = (*(v4 + 8 * (v3 ^ (a1 - 1644))))();
  v7 = STACK[0x948];
  *(v2 + 32) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_B5B90@<X0>(int a1@<W8>)
{
  v4 = *(v3 + 8 * (((5 * ((v1 + 10) ^ 0x1B) + 1813) * (a1 == 2)) ^ (v1 + 10)));
  LODWORD(STACK[0x8F0]) = v2 - 2;
  return v4();
}

uint64_t sub_B5CE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0xE08]) = v7;
  v9 = STACK[0x368];
  return (*(v8 + 8 * ((1625 * (v7 == ((a4 + a7 + 96) ^ 0x3E02574))) ^ (a4 + a7 + 16))))();
}

uint64_t sub_B5D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v8 + 856) = v7;
  v11 = LODWORD(STACK[0xB30]);
  v12 = LODWORD(STACK[0xE0C]);
  return (*(v10 + 8 * (v9 + a7 - 911)))();
}

uint64_t sub_B5DC0(unint64_t a1)
{
  v5 = *(v4 + 8 * ((((v2 ^ 0x31B) + v2 - 261 - 453) * (v1 <= v3)) ^ v2));
  STACK[0x838] = a1;
  return v5();
}

uint64_t sub_B5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6;
  v11 = *(a5 + v6) * (v9 + v5 - 658 - 802);
  return (*(v8 + 8 * (((2 * (v10 + 1 >= v7)) | ((v10 + 1 >= v7) << 6)) ^ v5)))();
}

uint64_t sub_B6034@<X0>(int a1@<W8>)
{
  *(*v1 + 6384) = LODWORD(STACK[0x630]) ^ 0x5FD8FD0D;
  *(*v1 + 300) = LODWORD(STACK[0x678]) ^ 0xFF77B791;
  v3 = *(v2 + 8 * a1);
  LODWORD(STACK[0x694]) = 65021204;
  return v3(27226, 0x9B5200080B52B4CLL, 3842753048, 452214248, 844749852, 3450217444, 3809927666, 485039630);
}

uint64_t sub_B616C@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0x8C0] + 128);
  STACK[0x268] = *v1;
  return (*(v2 + 8 * (a1 & 0xA41471D)))(v3);
}

uint64_t sub_B6264()
{
  v3 = *(v2 + 8 * (((LODWORD(STACK[0xC0C]) == (v0 ^ 0x19)) * (v0 ^ 0x290)) ^ v0));
  LODWORD(STACK[0x8F0]) = v1 - 2;
  return v3();
}

uint64_t sub_B6314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, int a23, unsigned int a24)
{
  a24 = v25 + 736 - 434465113 * ((((&a22 | 0x8161E938) ^ 0xFFFFFFFE) - (~&a22 | 0x7E9E16C7)) ^ 0x8B3C3C98);
  a22 = &a12;
  (*(v24 + 8 * (v25 + 2680)))(&a22);
  a24 = v25 + 853794584 - 1600728529 * ((&a22 & 0x17422CA9 | ~(&a22 | 0x17422CA9)) ^ 0x6D881917);
  a22 = &a12;
  (*(v24 + 8 * (v25 + 2685)))(&a22);
  a22 = &a12;
  a24 = v25 + 736 - 434465113 * ((&a22 & 0x6FDFAC41 | ~(&a22 | 0x6FDFAC41)) ^ 0x658279E1);
  (*(v24 + 8 * (v25 + 2680)))(&a22);
  v26[6] = a23 ^ 0x4B5F60F9;
  a24 = v25 + 736 - 434465113 * ((1769382137 - (&a22 | 0x6976A0F9) + (&a22 | 0x96895F06)) ^ 0x632B7559);
  a22 = &a12;
  (*(v24 + 8 * (v25 ^ 0xA88)))(&a22);
  v26[7] = a23 ^ 0x4B5F60F9;
  a24 = v25 + 853794584 - 1600728529 * (((&a22 | 0x7F62772E) - &a22 + (&a22 & 0x809D88D0)) ^ 0xFA57BD6F);
  a22 = &a12;
  v27 = (*(v24 + 8 * (v25 + 2685)))(&a22);
  v28 = a23;
  v26[8] = a23 ^ 0xC0403EE8;
  return (*(v24 + 8 * (((v28 == -1069531416) * ((v25 ^ 0x98D) - 1201)) ^ v25)))(v27);
}

uint64_t sub_B653C(_BYTE *a1)
{
  *a1 = (*v1 ^ 0x7F) + 2 * *v1 - 17;
  a1[1] = (v1[1] ^ 0x7F) + (v1[1] << ((29 * (v2 ^ 0xF0)) ^ 0x56)) - 17;
  a1[2] = (v1[2] ^ 0x7F) + 2 * v1[2] - 17;
  a1[3] = (v1[3] ^ 0x7F) + 2 * v1[3] - 17;
  a1[4] = (v1[4] ^ 0x7F) + 2 * v1[4] - 17;
  a1[5] = (v1[5] ^ 0x7F) + 2 * v1[5] - 17;
  a1[6] = (v1[6] ^ 0x7F) + 2 * v1[6] - 17;
  a1[7] = (v1[7] ^ 0x7F) + 2 * v1[7] - 17;
  a1[8] = (v1[8] ^ 0x7F) + 2 * v1[8] - 17;
  a1[9] = (v1[9] ^ 0x7F) + 2 * v1[9] - 17;
  a1[10] = (v1[10] ^ 0x7F) + 2 * v1[10] - 17;
  a1[11] = (v1[11] ^ 0x7F) + 2 * v1[11] - 17;
  a1[12] = (v1[12] ^ 0x7F) + 2 * v1[12] - 17;
  a1[13] = (v1[13] ^ 0x7F) + 2 * v1[13] - 17;
  a1[14] = (v1[14] ^ 0x7F) + 2 * v1[14] - 17;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_B66DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x954]) = v7;
  v9 = STACK[0x368];
  return (*(v8 + 8 * ((899 * (v7 == 65021204)) ^ (a7 - 2038112957))))();
}

uint64_t sub_B672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = LODWORD(STACK[0xAE4]);
  LODWORD(STACK[0xAE4]) = v8 + 1;
  v9 = *(a3 + 4 * v8);
  *(STACK[0x378] - 1048792407) = v8 + 1635019062;
  v10 = *(v5 - 1395893271);
  v11 = STACK[0x8A0];
  v12 = -STACK[0x8A0];
  v13 = v3 + 1037322136 - STACK[0x8A0];
  *(v4 + 40) = v13 + 99;
  *(v4 + 32) = STACK[0x890];
  *(v4 + 28) = v12;
  *(v4 + 4) = v13;
  *(v4 + 8) = v11 + v3 + 1596328632;
  *(v4 + 16) = v10 - v11;
  *v4 = (v3 + 1037322136) & 0xB77FF63A ^ v11;
  v14 = (*(a1 + 8 * (v3 + v6)))(v7 - 208);
  return (*(STACK[0x948] + 8 * *(v4 + 24)))(v14);
}

uint64_t sub_B683C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = ((a4 - 1021) | 0x41u) + (((1645 * v8 + 2113825) % 0xA88u) ^ 0xF5EF5FBD77F5FE5BLL) + ((2 * ((1645 * v8 + 2113825) % 0xA88u)) & 0x1CB6) + STACK[0x520];
  v11 = *v7;
  v12 = *STACK[0x538];
  v13 = *(v12 + (v11 & v9));
  v14 = *a7 ^ 0xF1E76555;
  LODWORD(v10) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 - 2012610342 + v13 + v9) & v14)) ^ *(v10 - 0xCF8C5FCFACA892) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 - 2012610342 + v13 + v9 + 2) & v14)) ^ (110 * (v10 - 38));
  v15 = STACK[0x518] + 4 * ((551 * (((v10 ^ 0xF732782A) + 2117417395) ^ ((v10 ^ 0x6BA17A46) - 492422177) ^ ((v10 ^ 0x9C93022A) + 362038195)) + 294704576) % 0x1D48);
  v16 = *(v12 + (v11 & STACK[0x540]));
  LODWORD(v10) = *(v15 - 0x40E8C283FA03C307);
  v17 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + LODWORD(STACK[0x52C])) & v14));
  v18 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v16 + 1527793161) & v14));
  LODWORD(v11) = v17 ^ v10 ^ v18;
  v19 = v11 ^ (45 * v15);
  LODWORD(v12) = ((v11 ^ (16198957 * v15)) >> 16) ^ 0xE7;
  v20 = ((v11 ^ (11565 * v15)) >> 8) ^ 0x6B;
  v21 = ((((v11 ^ (1912024365 * v15)) >> 24) ^ 0xF2666EC1) - 1523603339) ^ ((((v11 ^ (1912024365 * v15)) >> 24) ^ 0xA0B9BEF3) - 135235513) ^ ((((v11 ^ (1912024365 * v15)) >> 24) ^ 0x52DFD018) + 93722286);
  v22 = 1645 * v12 + 3391990 - 2696 * (((12744711 * (1645 * v12 + 3391990)) >> 32) >> 3);
  v23 = 1645 * v20 + 3391990 - 2696 * (((12744711 * (1645 * v20 + 3391990)) >> 32) >> 3);
  v24 = (v22 ^ 0xDF9F7BFF99E3FCF6) + STACK[0x520] + ((2 * v22) & 0x19EC);
  v25 = v24 + 1713111818;
  v26 = (((1645 * v21 + 455241686) % 0xA88) ^ 0xBE7FF3997B4FF3FBLL) + STACK[0x520] + ((2 * ((1645 * v21 + 455241686) % 0xA88)) & 0x7F6);
  v27 = *(v24 + 0x1580575E0E65599ELL);
  v28 = *(v26 + 0x369FDFC42CF96299);
  v29 = (v23 ^ 0x5BF99BD7EFF4F3F7) + STACK[0x520] + ((2 * v23) & 0x7EE);
  LODWORD(v26) = v26 - 2068837371;
  LODWORD(v26) = ((v28 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v13 + 1186175272) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v13 + v9 + 2) & v14)) ^ (110 * v26) ^ 0x46) << 16) | ((v27 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v13 + 1186175272) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + v13 + v9 + 2) & v14)) ^ (110 * v25) ^ 0x46) << 8);
  LODWORD(v10) = 1645 * (((2 * ((13 * v15) ^ v10 ^ v17 ^ v18)) & 0x1C ^ 0x14) + (v19 ^ 0x824));
  v30 = STACK[0x530];
  v31 = v10 - 2696 * (((12744711 * v10) >> 32) >> 3);
  v32 = (v31 ^ 0x97F6EFFC5EF7CDFALL) + STACK[0x520] + ((2 * v31) & 0x1BF4);
  LODWORD(v26) = (v26 ^ 0x7DE9FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 269159433 + v13 + 1186175272) & v14)) ^ *(v29 - 0x66D9C87A47AB9D63) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v29 + 269159433 + v13 + v9 + 2) & v14)) ^ (110 * (v29 + 9)) ^ 0x7DE94D) ^ (v26 & 0x821600 | 0xE4);
  v33 = STACK[0x518] + 4 * ((551 * v8 + 710790) % 0x1D48u);
  *(v33 - 0x40E8C283FA03C307) = (1912024365 * v33) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v33 + LODWORD(STACK[0x52C])) & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v33 + 1527793161) & v14)) ^ 0x570E84D7 ^ (((v26 << 8) | 0xFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 - 1593298426 + v13 + 1186175272) & v14)) ^ *(v32 + 0x5D28E3614951889ALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v32 - 1593298426 + v13 + v9 + 2) & v14)) ^ (110 * (v32 - 1593298426)) & 0xFE ^ 0x20C829BB) | (v26 << 8) & 0xDF37D600);
  return (*(STACK[0x548] + 8 * ((3194 * (v8 == 255)) ^ a4)))(0);
}

uint64_t sub_B6E64(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a1 - 1903083742 + ((a1 - 1903083742) >> 12) - ((a1 - 1903083742 + ((a1 - 1903083742) >> 12)) >> 6);
  v12 = v11 ^ v9;
  v13 = v11 - 1840284642 + ((v11 - 1840284642) >> 10) + ((v11 - 1840284642 + ((v11 - 1840284642) >> 10)) >> 6);
  v14 = v13 ^ v10;
  v15 = v13 + 1535469275 + ((v13 + 1535469275) >> 15) - ((v13 + 1535469275 + ((v13 + 1535469275) >> 15)) >> 6);
  v16 = v15 - 1987346000 + ((v15 - 1987346000) >> 10) - ((v15 - 1987346000 + ((v15 - 1987346000) >> 10)) >> 3);
  v17 = v12 ^ v16;
  v18 = (v16 ^ 0xA03E7685) - ((v16 ^ 0xA03E7685) >> 15) + (((v16 ^ 0xA03E7685) - ((v16 ^ 0xA03E7685) >> 15)) >> 2);
  v19 = v18 + 1607039035 - ((v18 + 1607039035) >> 13) + ((v18 + 1607039035 - ((v18 + 1607039035) >> 13)) >> 6);
  v20 = v19 - 911231277 - ((v19 - 911231277) >> 10);
  v21 = (v20 >> 4) & v20;
  v22 = 2 * v21 + ((v20 >> 4) ^ v20);
  v23 = v17 ^ v22;
  v24 = ((v22 + 874808561 + ((v22 + 874808561) >> 13)) >> ((2 * v21) & 8) >> ((2 * v21) & 8 ^ 8)) + v22 + 874808561 + ((v22 + 874808561) >> 13);
  v25 = v15 ^ a8 ^ v19 ^ (v24 + 58505394 + ((v24 + 58505394) >> 10) - ((v24 + 58505394 + ((v24 + 58505394) >> 10)) >> 4));
  v26 = v14 ^ v18 ^ v24 ^ (v23 + 1925923392);
  LOBYTE(v14) = *(STACK[0x648] + 1377 * (BYTE1(v26) ^ 0xEB) + 3822552 - 4864 * (((7064091 * (1377 * (BYTE1(v26) ^ 0xEBu) + 3822552)) >> 32) >> 3));
  v27 = STACK[0x328];
  v28 = STACK[0x3E0];
  v29 = 1377 * ((*(STACK[0x3E0] + 0xFECA6757 % STACK[0x328]) - 65) ^ 0x4C) + 2756754;
  v30 = v29 - 4864 * (((1766023 * v29) >> 32) >> 1);
  v31 = -v25;
  v32 = (v25 & 7) == 0;
  STACK[0x6D8] = v25 & 7;
  v33 = 1165;
  if (v32)
  {
    v33 = 1458;
  }

  v34 = STACK[0x900];
  v35 = *(STACK[0x900] + v30);
  v36 = (*(STACK[0x900] + v33) ^ 0x19 ^ (*(STACK[0x900] + v33) >> 4) & 3) + 48;
  STACK[0x6A8] = v31 & 7;
  v37 = (*(v28 + (*(v28 + (*(v28 + ((((((v35 ^ 0xFE) + 2) ^ ((v35 ^ 0x5E) - 94) ^ ((v35 ^ 0xD6) + 42)) - 88) ^ 0xCC) + 102) % v27) - 91) % v27) + 21) % v27) - 24) % v27;
  v38 = ((8 * (v37 & 0x1F)) | (v37 >> 5)) ^ 0x47;
  v39 = 1377 * ((((32 * (v38 & 7)) | (v38 >> 3)) ^ 0xF9 ^ -(((32 * (v38 & 7)) | (v38 >> 3)) ^ 0xF9) ^ (-6 - (((32 * (v38 & 7)) | (v38 >> 3)) ^ 3))) - 6) + 3822552;
  LOBYTE(v39) = *(v34 + v39 - 4864 * (((7064091 * v39) >> 32) >> 3));
  LODWORD(STACK[0x730]) = v26 ^ 0xA051CD3C;
  return (*(a5 + 8 * v8))();
}

uint64_t sub_B7350()
{
  v4 = 1913485891 * ((1598937395 - ((v2 - 208) | 0x5F4DD933) + ((v2 - 208) | 0xA0B226CC)) ^ 0x3D5EC1E6);
  v5 = v2 - 208;
  v6 = STACK[0x930];
  *(v5 + 8) = STACK[0x930];
  *(v5 + 16) = (v0 - ((2 * v0) & 0xDDEF8188) + ((v1 + 1588530131) & 0xA150F1F3 ^ 0x6EF7C035)) ^ v4;
  *(v5 + 24) = STACK[0x928];
  *v5 = (v1 + 1826633453) ^ v4;
  *(v5 + 4) = v4 ^ 0x18543C51;
  (*(v3 + 8 * (v1 ^ 0x980)))(v2 - 208);
  v7 = 1600728529 * ((2 * ((v2 - 208) & 0x3723FB48) - (v2 - 208) + 1222378677) ^ 0xCDE9CEF4);
  *v5 = v7 ^ 0x37217BE0;
  *(v2 - 192) = v6;
  *(v2 - 200) = (v1 + 2065905644) ^ v7;
  (*(STACK[0x948] + 8 * (v1 + 1937)))(v2 - 208);
  *(v2 - 196) = v1 - 434465113 * (((v2 - 208) & 0x396EC84E | ~((v2 - 208) | 0x396EC84E)) ^ 0x33331DEE) + 1;
  *v5 = v6;
  v8 = STACK[0x940];
  v9 = (*(STACK[0x948] + 8 * (v1 ^ 0x9E9)))(v2 - 208);
  return (*(STACK[0x948] + 8 * ((2480 * (((((v1 + 733) ^ *(v2 - 200) ^ 0x54241251) - 1411650646) ^ ((*(v2 - 200) ^ 0xA47DB04C) + 1535266740) ^ ((*(v2 - 200) ^ 0xBB06C4E3) + 1157184285)) + 1264541945 < 0x100)) ^ v1)))(v9);
}

uint64_t sub_B7598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, uint64_t a25)
{
  v31 = 1600728529 * ((2 * (&a22 & 0x598F6CA0) - &a22 + 644911967) ^ 0xA345591E);
  a25 = v27;
  a24 = v26 ^ v31;
  a22 = v31 ^ v28;
  v32 = (*(v25 + 8 * (v30 + 2169)))(&a22);
  return (*(v25 + 8 * (((2 * (a23 != v29)) | (8 * (a23 != v29))) ^ (v30 + 1089))))(v32);
}

uint64_t sub_B7624()
{
  v3 = *(v1 + 8 * v0);
  v4 = *(v2 + 8);
  return v3(2179, 0, 4160113945, 100);
}

uint64_t sub_B7660@<X0>(unint64_t a1@<X8>)
{
  *(v5 + v2) = 0;
  v8 = v2 + v4 + (v1 - v6 + 875);
  v9 = a1 + v2 + 1 < v3;
  if (v3 < a1 != v8 > 0xFFFFFFFF18D278EBLL)
  {
    v9 = v3 < a1;
  }

  return (*(v7 + 8 * ((121 * v9) ^ v1)))();
}

uint64_t sub_B7710()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x8B0)))(v0);
  v4 = STACK[0x8B0];
  v5 = STACK[0x8A0];
  v6 = STACK[0x948];
  *(STACK[0x8C0] + 48) = v3;
  v7 = *(v6 + 8 * ((25 * (((v3 == 0) ^ (v1 - 42)) & 1)) ^ v1));
  v8 = LODWORD(STACK[0x8D0]);
  return v7();
}

uint64_t sub_B77BC@<X0>(int a1@<W0>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, int a5@<W5>, int a6@<W6>, unsigned int a7@<W7>, char a8@<W8>)
{
  v22 = *(v11 + 4 * v20);
  v23 = v20 & LODWORD(STACK[0x930]);
  LODWORD(STACK[0x878]) = v16 - 541;
  v24 = (v23 << ((v16 - 29) ^ v12)) ^ v20;
  v25 = 1377 * ((v24 * a4) ^ 0x1F) + 3110643;
  v26 = *(v15 + v25 - (((v25 * v19) >> 32) >> 3) * a5);
  v27 = (2 * ((v22 ^ 0x513261BA) & STACK[0x7C0]) - 785227334 - ((4 * ((v22 ^ 0x513261BA) & STACK[0x7C0])) & 0xA264C374)) ^ v22;
  v28 = (((v17 & v24) >> STACK[0x890]) ^ LODWORD(STACK[0x940]) ^ ((v26 ^ v10 ^ (v26 >> 4) & 3) + (v24 << v21) - v24 + 48));
  *(STACK[0x908] + 4 * v28) = (((v27 & a1) >> STACK[0x890]) + ((v27 & STACK[0x848]) << STACK[0x8F0])) ^ a6;
  LOBYTE(v27) = (((*(a3 + v20) ^ a2) - 21) ^ ((*(a3 + v20) ^ v14) - 115) ^ ((*(a3 + v20) ^ 0x10) - 16)) - 28;
  v29 = v27 ^ 0x11;
  LOBYTE(v27) = v27 ^ v8;
  v30 = 1377 * ((v27 ^ -v27 ^ (v13 - v29)) + 68);
  LOBYTE(v27) = *(v15 + (v30 - ((v30 * a7) >> 32) * a5)) ^ (v27 - (v18 & (2 * v27)) + 118) ^ a8;
  *(v9 + 4 * v28) = ((v27 >> 5) | (8 * v27)) ^ a6;
  return (*(STACK[0x948] + 8 * (((16 * (v20 != 255)) | (32 * (v20 != 255))) ^ v16)))();
}

uint64_t sub_B799C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x109C]) = ((v7 - a4 - 39) ^ (a7 - 36)) + v8;
  v11 = v9 != 48 && v8 + 52 >= (v8 + v9 + 4);
  return (*(v10 + 8 * (v7 ^ (1707 * v11))))();
}

uint64_t sub_B7A74@<X0>(int a1@<W8>)
{
  *(v1 + 344) = STACK[0x370];
  *(v1 + 64) = &STACK[0xC0C];
  LODWORD(STACK[0xD10]) = -1209598131;
  return (*(v2 + 8 * a1))(624788556);
}

uint64_t sub_B7B5C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v6 = (STACK[0xF08] + 24 * v4);
  *v6 = v3 - 65021204 + v2;
  v6[1] = 0;
  STACK[0xFA0] = (v6 + 1);
  v7 = STACK[0x9A0];
  STACK[0xF98] = *(v5 + 8 * a2);
  v8 = STACK[0x368];
  return (*(v5 + 8 * (a2 + a2 + 1022 - 821)))(v6 + 2, a1, 938337180);
}

uint64_t sub_B7BF8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x35C]) = a1 & 0x27C0EE7C;
  LODWORD(STACK[0x850]) = v3 - 399;
  v11 = (v8 + ((v5 + v4 - ((v5 + v4) >> 16)) >> 8) - ((v5 + v4) >> 16) + v5 + v6) ^ (v3 - 399) ^ 0x36EC5333;
  v12 = v11 - (v11 >> 11) + ((v11 - (v11 >> 11)) >> 2) + 433679655;
  v13 = v12 + (v12 >> 10) + ((v12 + (v12 >> 10)) >> 8);
  v14 = (((v13 + 1340397267 - ((v13 + 1340397267) >> 12)) >> 2) ^ (v13 + 1340397267 - ((v13 + 1340397267) >> 12))) + 2 * (((v13 + 1340397267 - ((v13 + 1340397267) >> 12)) >> 2) & (v13 + 1340397267 - ((v13 + 1340397267) >> 12)));
  LODWORD(STACK[0x878]) = v13 ^ v2 ^ ((v13 & 0x328DEC97) >> (v13 & 1) >> !(v13 & 1));
  v15 = (v14 ^ 0x67C2603A) - ((v14 ^ 0x67C2603A) >> 8) + (((v14 ^ 0x67C2603A) - ((v14 ^ 0x67C2603A) >> 8)) >> 8);
  LODWORD(STACK[0x3D0]) = v10 & (v15 >> 1);
  LODWORD(STACK[0x8F8]) = v1 ^ v7 ^ v14 ^ v10 & (v14 >> 1);
  v16 = v15 + 1005353881 - ((v15 + 1005353881) >> 12) - ((v15 + 1005353881 - ((v15 + 1005353881) >> 12)) >> 5);
  LODWORD(STACK[0x860]) = v16;
  LODWORD(STACK[0x910]) = v16 & 0x328DEC97;
  return (*(v9 + 8 * v3))();
}

uint64_t sub_B7E84()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xFE6)))();
  v4 = STACK[0x948];
  *(v0 + 96) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_B7ED8@<X0>(uint64_t a1@<X2>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16) + v6;
  v8 = *(*(a5 - 132921991) + (((v7 & 0xFFFFFFF8 | (3 * (a2 ^ 0x39F) + 848650475)) + (v7 & 0x32956AF0 | 0xCD6A950C) + 916900721) & *(v5 - 464343834)));
  v9 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v8) ^ 0x89F455BA1C0B015;
  v10 = __ROR8__(v9, 8);
  v11 = v9 ^ __ROR8__(v8, 61);
  v12 = (((2 * (v10 + v11)) | 0xD510071460100F2CLL) - (v10 + v11) - 0x6A88038A30080796) ^ 0xB2598B733686BFD6;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x7E1F3531EE2817FLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xBEACFB9F4D191338;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x8A4943FA3C1BB996;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0x8854BD98B96FDB9CLL) - 0x3BD5A133A3481232) ^ 0x4BA83384801AADC8;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22) | 0xBB4E3B1720EE9D46) - ((v23 + v22) | 0x44B1C4E8DF1162B9) + 0x44B1C4E8DF1162B9) ^ 0x853D64EAB06D2DE5;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((((2 * (v26 + v25)) & 0xE8F0841FDCEF87A6) - (v26 + v25) - 0x7478420FEE77C3D4) ^ 0xADA8822FDE6C2360) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a3 + 8 * a2))();
}

uint64_t sub_B83BC@<X0>(uint64_t a1@<X0>, int a2@<W7>, uint64_t a3@<X8>)
{
  LODWORD(STACK[0xD84]) = v6;
  STACK[0x10A0] = v4;
  if (v5 <= v7 + 1)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v5;
  }

  LODWORD(STACK[0x10AC]) = (((a2 - 483) | 0x182) ^ 0xFFFFFE4C) + v8;
  LODWORD(STACK[0x10A8]) = v3;
  *(a3 + 48) = 1;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_B8414@<X0>(int a1@<W3>, int a2@<W8>)
{
  *(v4 + 912) = *(v5 + 8 * a2);
  *(v4 + 960) = v2;
  return (*(v5 + 8 * (a1 + v3 + 1481)))();
}

uint64_t sub_B8440(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v8 + 1744) = (v7 - 65021204);
  v10 = *(v8 + 1752);
  v11 = *(a3 + 8 * (a4 + v9 + (v9 ^ (a7 + 13)) + 987));
  v12 = STACK[0x370];
  return v11();
}

uint64_t sub_B84A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 116) = v20 - 434465113 * (((v22 - 128) & 0x7A015FBD | ~((v22 - 128) | 0x7A015FBD)) ^ 0x705C8A1D) - 297;
  *(v22 - 128) = &a19;
  v23 = (*(v21 + 8 * (v20 ^ 0xE97)))(v22 - 128);
  *(v19 + 422) = ((v20 - 16) | 0x201) ^ *(v22 - 120) ^ 0x66BC;
  return (*(v21 + 8 * v20))(v23);
}

uint64_t sub_B852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x940];
  v6 = STACK[0x8B0];
  LODWORD(STACK[0x890]) = LODWORD(STACK[0x8B0]) - 2 * (STACK[0x940] & 0x1DCDAF39 ^ STACK[0x8B0] & 1) + 1864061530;
  v7 = STACK[0x928];
  v8 = STACK[0x860];
  LODWORD(STACK[0x880]) = LODWORD(STACK[0x860]) - ((2 * LODWORD(STACK[0x928])) & 0x41B6D668) + 1915293270;
  v9 = STACK[0x858];
  v10 = 2 * LODWORD(STACK[0x858]);
  LODWORD(STACK[0x878]) = LODWORD(STACK[0x858]) - (v10 & 0x5B700F3C) + 767035294;
  v11 = STACK[0x850];
  v12 = 2 * LODWORD(STACK[0x850]);
  LODWORD(STACK[0x870]) = LODWORD(STACK[0x850]) - (v12 & 0xB6347354) + 1528445354;
  LODWORD(STACK[0x868]) = v6 - ((2 * v5) & 0x625FFB3E) - 2105696063;
  LODWORD(STACK[0x860]) = v8 - 2 * (v7 & 0xCD5707D ^ v8 & 1) + 1579357086;
  v13 = STACK[0x830] + 20448;
  LODWORD(STACK[0x858]) = v9 - (v10 & 0xE7FAF0D6) - 201492373;
  LODWORD(STACK[0x850]) = v11 - (v12 & 0xFEFD58E0) - 8475536;
  v14 = *(v3 + 8 * v4);
  v15 = 106 * (v4 ^ 0x895);
  LODWORD(STACK[0x810]) = v15;
  LODWORD(STACK[0x848]) = v15 ^ 0x3B11ECFA;
  v16 = STACK[0x840];
  v17 = STACK[0x828];
  STACK[0x8B0] = v13;
  LODWORD(STACK[0x8A0]) = v4;
  return v14(v16, 648036, a3, 0);
}

uint64_t sub_B86F0@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  v9 = v5 - 1;
  *(v8 + 1616) = v9;
  *(v6 + v9) = (v2 + a2 - 126) * (v2 ^ v3);
  return (*(a1 + 8 * (((*(v8 + 1616) != 0) * v4) ^ v7)))();
}

uint64_t sub_B8730@<X0>(_BYTE *a1@<X8>)
{
  a1[275] = v2[35];
  a1[274] = v2[34];
  a1[273] = v2[33];
  a1[272] = v2[32];
  a1[271] = v2[31];
  a1[270] = v2[30];
  a1[269] = v2[29];
  a1[268] = v2[28];
  a1[267] = v2[27];
  a1[266] = v2[26];
  a1[265] = v2[25];
  a1[264] = v2[24];
  a1[263] = v2[23];
  a1[262] = v2[22];
  a1[261] = v2[21];
  *v3 = *v4;
  return (*(v5 + 8 * ((v1 - 1199112641) & 0x4778FFCC)))();
}

uint64_t sub_B87D8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned __int8 a5, int a6, uint64_t a7, unsigned __int8 a8)
{
  v12 = STACK[0x828];
  v13 = *(STACK[0x828] + 4 * v8);
  HIDWORD(v15) = v13 ^ 0x61BA;
  LODWORD(v15) = v13 ^ 0xD1320000;
  v14 = v15 >> 16;
  v16 = *(STACK[0x828] + 4 * BYTE1(a3));
  HIDWORD(v15) = v16 ^ 0x61BA;
  LODWORD(v15) = v16 ^ 0xD1320000;
  v17 = v15 >> 16;
  v18 = *(STACK[0x828] + 4 * v9);
  HIDWORD(v15) = v18 ^ 0xBA;
  LODWORD(v15) = v18 ^ 0xD1326100;
  v19 = v15 >> 8;
  v20 = *(STACK[0x828] + ((a3 >> 22) & 0x3FC));
  v21 = STACK[0x858] >> ((a6 + 30) ^ 0xD4);
  v22 = (v10 ^ 0x73) + (*(STACK[0x900] + STACK[0x798]) ^ 0x76) + 1;
  v23 = a5 ^ 0x74u;
  STACK[0x700] = v23;
  v24 = *(v12 + 4 * v23);
  v25 = *(v12 + 4 * v21);
  HIDWORD(v15) = v24 ^ 0xBA;
  LODWORD(v15) = v24 ^ 0xD1326100;
  v26 = *(v12 + 4 * STACK[0x7C8]);
  v27 = *(v12 + 4 * (((2 * v11) & 0x6E) + (v11 ^ 0xB7)));
  v28 = *(v12 + 4 * a8);
  LODWORD(STACK[0x8F0]) = -785227520;
  v29 = v19 ^ v14;
  v30 = *(v12 + 4 * STACK[0x4A8]);
  LODWORD(STACK[0x7A8]) = (v17 - 785227334 - ((2 * v17) & 0xA264C374)) ^ v20 ^ (v15 >> 8);
  v31 = *(v12 + 4 * STACK[0x7F0]);
  LODWORD(v23) = __PAIR64__(v26 ^ 0x3261BAu, v26 ^ 0xD1000000) >> 24;
  LODWORD(STACK[0x818]) = v23;
  HIDWORD(v15) = v25 ^ 0xBA;
  LODWORD(v15) = v25 ^ 0xD1326100;
  LODWORD(STACK[0x728]) = v23 ^ v30 ^ ((__PAIR64__(v28 ^ 0x61BAu, v28 ^ 0xD1320000) >> 16) - 785227334 - ((2 * (__PAIR64__(v28 ^ 0x61BAu, v28 ^ 0xD1320000) >> 16)) & 0xA264C374)) ^ (v15 >> 8);
  LODWORD(v23) = *(v12 + 4 * STACK[0x6A8]);
  v32 = *(v12 + 4 * STACK[0x5F8]);
  v33 = *(v12 + 4 * ((v22 ^ 0xBA) - 110));
  LODWORD(v15) = __ROR4__(STACK[0x928], 21) ^ 0x29EF9CD;
  HIDWORD(v15) = v15;
  v34 = v15 >> 11;
  v35 = v34 & 0xA1BC9311 ^ 0xA08200;
  v36 = v34 ^ 0xE35C5DBF;
  STACK[0x928] = v36;
  v37 = *(STACK[0x948] + 8 * ((87 * ((v36 & 0xA1BC9311) == v35)) ^ a6));
  LODWORD(STACK[0x830]) = v29;
  LODWORD(STACK[0x5E0]) = v23;
  LODWORD(STACK[0x690]) = (v23 >> 8) ^ 0xD13261;
  v38 = (v32 << 8) ^ 0x3261BA00;
  v39 = v31 ^ (v29 - 785227334 - ((2 * v29) & 0xA264C374));
  STACK[0x740] = LODWORD(STACK[0x630]) ^ 0x94AFBF71;
  HIDWORD(v15) = v33 ^ 0x3261BA;
  LODWORD(v15) = v33 ^ 0xD1000000;
  LODWORD(STACK[0x758]) = v15 >> 24;
  LODWORD(STACK[0x7F8]) = v39;
  LODWORD(STACK[0x640]) = v38;
  LODWORD(STACK[0x878]) = v27;
  LODWORD(STACK[0x3D0]) = (v27 << 8) ^ 0x3261BA00;
  LODWORD(STACK[0x788]) = v38 ^ v39;
  LODWORD(STACK[0x6D0]) = v38 ^ v39 ^ HIBYTE(v32);
  return v37();
}

uint64_t sub_B8A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  LODWORD(STACK[0x470]) = v46;
  v47 = (v45 + ((v42 + v41 - ((v42 + v41) >> 16)) >> 8) - ((v42 + v41) >> 16) + v42 + v40) ^ 0x36EC5145;
  v48 = v47 - (v47 >> 11) + ((v47 - (v47 >> 11)) >> 2);
  v49 = ((2 * (v48 - 433679655)) & 0x6765B49C) + ((v48 - 433679655) ^ 0x33B2DA4E);
  v50 = v49 + (v49 >> 10) + ((v49 + (v49 >> 10)) >> 8) + 1340397267;
  v51 = v50 - (v50 >> 12) + ((v50 - (v50 >> 12)) >> 2);
  LODWORD(STACK[0x3B8]) = v51;
  v52 = (v51 ^ 0x67C2603A) - ((v51 ^ 0x67C2603A) >> 8) + (((v51 ^ 0x67C2603A) - ((v51 ^ 0x67C2603A) >> 8)) >> 8);
  LODWORD(STACK[0x3B0]) = v52 + 1005353881;
  v53 = v52 + 1005353881 - ((v52 + 1005353881) >> 12) - ((v52 + 1005353881 - ((v52 + 1005353881) >> 12)) >> 5) - 1421826176;
  v54 = v53 + (v53 >> 10) + ((v53 + (v53 >> 10)) >> 7);
  v55 = STACK[0x2C8];
  v56 = *(STACK[0x2C8] + (*(STACK[0x2C8] + (*(STACK[0x2C8] + (*(STACK[0x2C8] + (0xBE0480B6 % LODWORD(STACK[0x858]))) - 16) % LODWORD(STACK[0x858])) + 88) % LODWORD(STACK[0x858])) - 126) % LODWORD(STACK[0x858]));
  v62 = v54 - 994363171 - ((2 * v54) & 0x897671BA);
  v57 = 59 * v56 - ((118 * v56 - 114) & 0xFFFFFFC7) - 86;
  v58 = 1377 * (((2 * v57) & 0x1B4) + (v57 ^ 0x11DF));
  v59 = v58 - 4864 * (((7064091 * v58) >> 32) >> 3);
  v60 = STACK[0x900];
  LODWORD(STACK[0x4B8]) = v59;
  return (*(v43 + 8 * v39))(*(v43 + 8 * v39), v44 & (4 * (v52 ^ v48 ^ (v62 + (v62 >> 8) + ((v62 + (v62 >> 8)) >> 6)))), (2 * *(v60 + v59)) & 0xFFB2 ^ 0x5Fu, 53489507, 3895141870, v55, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_B8D04(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1938608989 * ((-2 - ((a1 | 0x73B15A1) + (~a1 | 0xF8C4EA5E))) ^ 0x82E4B4A8));
  if (*a1)
  {
    return (*(*(&off_18D8F0 + (v1 ^ 0xDAA34EE0)) + 8 * (v1 ^ 0xDAA34469) - 939039246))(*a1);
  }

  else
  {
    return (*(*(&off_18D8F0 + (v1 ^ 0xDAA34EE0)) + 8 * (v1 ^ 0xDAA34469) - 939039246))(*(&off_18D8F0 + v1 + 626831725) - 889839815);
  }
}

uint64_t sub_B8DA8(uint64_t a1)
{
  v2 = 434465113 * ((2 * ((a1 ^ 0xA849D003) & 0x42C82450) - (a1 ^ 0xA849D003) + 1027070895) ^ 0x60DC21F3);
  v3 = *(a1 + 16) ^ v2;
  v5 = -459290299 * (*a1 - v2);
  v6 = 1583996299 * ((1213056703 - (&v12 | 0x484DC6BF) + (&v12 | 0xB7B23940)) ^ 0xFE4FF85F);
  v15 = *(a1 + 8);
  v4 = v15;
  v12 = v3 - v6 + 989575475;
  v13 = v6 ^ (v5 + 1339081379);
  v7 = v3 - 136404910;
  v8 = *(&off_18D8F0 + v3 - 136404910) - 939039246;
  (*&v8[8 * (v3 ^ 0x8216AD8)])(&v12);
  v9 = v14;
  v10 = 1252856261 * ((((&v12 | 0x721DD1BA) ^ 0xFFFFFFFE) - (~&v12 | 0x8DE22E45)) ^ 0x780DF96A);
  v14 = v4;
  v12 = v7 - v10 + 1895;
  v13 = v5 - v10 + 1845525006;
  result = (*&v8[8 * v7 + 21704])(&v12);
  *(a1 + 20) = v9;
  return result;
}

uint64_t sub_B8F98@<X0>(uint64_t a1@<X8>)
{
  v7 = v1 + 1205;
  *v3 = a1;
  *(v3 + 8) = (v2 + 1630020084) ^ (1938608989 * ((((v5 - 208) | 0x36F31E84) - ((v5 - 208) & 0x36F31E84)) ^ 0x4CD34072));
  v8 = (*(v6 + 8 * (v4 + v2 + 41)))(v5 - 208);
  return (*(STACK[0x948] + 8 * v7))(v8);
}

uint64_t sub_B9024@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x3D8] = a1;
  *(v2 + 24) = a1;
  v5 = STACK[0x8C0];
  *(v2 + 32) = *(STACK[0x8C0] + 136);
  v6 = *(v5 + 48);
  *(v2 + 40) = v6;
  LODWORD(v5) = *v6;
  STACK[0x3E0] = v6;
  LODWORD(v5) = v5 + 16 * v6[1];
  v7 = (((a2 ^ 0x797B24C7) - 2038113340) ^ 0x2BFF3F02 ^ (v5 - 47 * (((2789 * v5) >> 16) >> 1))) + ((2 * (v5 - 47 * ((2789 * v5) >> 17))) & 0x56) - 738146138;
  STACK[0x328] = v7;
  *(v2 + 48) = v7;
  STACK[0x978] += 2400;
  *(v3 + 160) = 0;
  return (*(v4 + 8 * (((STACK[0x268] == 0) | (8 * (STACK[0x268] == 0))) ^ a2)))();
}

uint64_t sub_B90E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v28 = (((&a22 | 0x10EBA5C7) - (&a22 & 0x10EBA5C7)) ^ 0xF754017B) * v25;
  a23 = v28 ^ 0x7E746F71;
  a24 = (v27 + 178) ^ v28;
  a22 = v26;
  v29 = (*(v24 + 8 * (v27 + 2161)))(&a22);
  return (*(v24 + 8 * (v27 + 1298)))(v29);
}

uint64_t sub_B933C()
{
  (*(v4 + 8 * (v2 + 2057)))();
  *(v1 + 496) = 0;
  *(v1 + 504) = 0;
  v5 = (*(STACK[0x948] + 8 * (v2 ^ 0x8C6)))((v3 - 1834484461 - ((((v2 - 509) | 0x401) ^ 0x254FFEB6) & (2 * v0)) + 16) ^ 0x92A7FD13);
  v6 = STACK[0x948];
  *(v1 + 496) = v5;
  *(v1 + 504) = v0;
  return (*(v6 + 8 * (((v5 == 0) * (5 * (v2 ^ 0x210) - 601)) ^ v2)))();
}

void sub_B93D8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 32) ^ (1183051249 * ((~a1 & 0xB1935FC7 | a1 & 0x4E6CA038) ^ 0x5470891B));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_B9550()
{
  HIDWORD(v5) = 4 * v0 + 4;
  LODWORD(v5) = HIDWORD(v5);
  *(v3 + 4 * ((((v0 * v2 + 73924424) % 0x34AFu) ^ 0x1FFFCEF56FFBAFBFLL) + ((2 * ((v0 * v2 + 73924424) % 0x34AFu)) & 0x5F7E)) - 0x7FFF3BD5BFEEBEFCLL) = *(v3 + 4 * ((((v1 - 1038) | 0x410) ^ ((v0 * v2 + v4) % 0x34AFu) ^ 0x3FBD169EF77E791FLL) + ((2 * ((v0 * v2 + v4) % 0x34AFu)) & 0x7FCELL)) + 0x10BA58422060064);
  return (*(STACK[0x6C8] + 8 * ((14 * ((v5 >> 2) > 0xFF)) ^ v1)))();
}

uint64_t sub_B9640@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W8>)
{
  v16 = *STACK[0x538];
  v17 = (*(v16 + (*v10 & (v4 + 1527792547))) + v7 + 1527793161);
  v18 = *v8 ^ 0xF1E76555;
  v19 = *v9 ^ a3;
  v20 = *(v19 + ((v17 - 2) & v18));
  v21 = *(v19 + (v17 & v18));
  v22 = (((a4 + 1645 * a1 - 2696) % 0xA88) ^ 0xFDEBFDF3FEDDFD7FLL) + a2 + ((2 * ((a4 + 1645 * a1 - 2696) % 0xA88)) & 0x1AFE);
  v23 = v21 ^ v14 ^ v20 ^ v13;
  LODWORD(v16) = *(v16 + (*v10 & 0x46B39928));
  v24 = *(v22 - 0x8CC2A965694A6EBLL) ^ v23 ^ *(v19 + ((v22 + 19006081 + v16 + 1186175272) & v18)) ^ *(v19 + ((v22 + 19006081 + v16 + 1186175274) & v18)) ^ (110 * (v22 - 127)) ^ 0x1E;
  if (((v6 ^ v15 ^ *(v19 + ((v16 + v5 + 1186175272) & v18)) ^ *(v19 + ((v16 + v5 + 1186175274) & v18)) ^ 0x46) & (((1 << a1) - ((2 * (1 << a1)) & 0xF6) + 123) ^ 0x7B)) == 0)
  {
    v24 = v23 ^ 0x58;
  }

  *(v7 + v11) = v12 ^ v21 ^ v20 ^ v24 ^ 0x72;
  return (*(STACK[0x548] + 8 * ((2 * (((a1 + 1) & 0xF8) == 0)) | (8 * (((a1 + 1) & 0xF8) == 0)) | v4)))();
}

uint64_t sub_B9810@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v7 = (v6 + 2395);
  v8 = *(a1 + 16) + v4;
  v9 = *(*(a4 - 132921991) + (((v8 & (v7 ^ 0xFFFFF5F0) | 0x4FB1C897) + (v8 & (v7 ^ 0xFFFFF5F0) | 0xB04E3769) + 916900720) & *(v5 - 464343834)));
  v10 = __ROR8__(v8 & (v7 ^ 0xFFFFFFFFFFFFF5F0), 8);
  v11 = (((2 * (v10 + v9)) | 0x96C9811FAD3EB22ELL) - (v10 + v9) + 0x349B3F702960A6E9) ^ 0xC3FB85D4775FE902;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0x8D8F94EA6B650F1ELL) - 0x3938358ACA4D7871) ^ 0x1E16428C333C3FCFLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x7E1F3531EE2817FLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0xC0EB4005A13362A6) - ((v18 + v17) | 0x3F14BFFA5ECC9D59) + 0x3F14BFFA5ECC9D59) ^ 0x7E47BB9AEC2A719ELL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8A4943FA3C1BB996;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8F826D48DCAD4006;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x3E735FFD9083B0A3;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((((2 * (v27 + v26)) & 0x2340B13D0B9C53F0) - (v27 + v26) + 0x6E5FA7617A31D607) ^ 0x487098BEB5D5C94BuLL) >> (8 * (v8 & 7u))) ^ *v8;
  return (*(a2 + 8 * v6))();
}

uint64_t sub_B9A40@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v7 = *v3 + v4;
  *(v3 + 12) = v4 + a2 + ((v2 + 1019) ^ 0xFC1FDEE8);
  LODWORD(STACK[0x10F4]) = 65021204;
  v8 = *(v5 + 896);
  v9 = (LODWORD(STACK[0xA94]) - 65021204) - 0x4A844FFDC8121C74 - ((2 * (LODWORD(STACK[0xA94]) - 65021204)) & 0x6FDBC738) + 16;
  *(v5 + 1464) = *(v6 + 8 * v2);
  v10 = STACK[0x368];
  return (*(v6 + 8 * (v2 + 204)))(v8, a1, 938337180, 2256851803);
}

uint64_t sub_B9B00@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W2>, unsigned __int8 a3@<W3>, char a4@<W4>, unsigned __int8 a5@<W6>, char a6@<W7>, uint64_t a7@<X8>)
{
  v10 = v8 == a5 && a2 == (((v7 - 89) & 0x19) - 5);
  v11 = a3 != (((v7 - 89) ^ 0xD6) - 56) || !v10;
  if (a4)
  {
    v11 = 1;
  }

  if (a6 != 3)
  {
    v11 = 1;
  }

  return (*(a7 + 8 * ((28 * v11) ^ v7)))(a1, 0);
}

uint64_t sub_BD2BC@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W6>, uint64_t a4@<X8>)
{
  v11 = *(v5 + 24);
  v12 = *(v5 + 8);
  v13 = *(v10 + 8 * a1);
  v14 = &STACK[0x1190] + STACK[0x978];
  STACK[0x978] += 2240;
  *(a4 + 60) = 0;
  v15 = 1583996299 * ((((v9 - 208) | 0xA8CA8CA8) - ((v9 - 208) & 0xA8CA8CA8)) ^ 0xE1374DB7);
  *(v8 + 40) = 0;
  *(v8 + 48) = v12;
  *v8 = v11;
  *(v8 + 24) = (a2 + v4 + 488) ^ v15;
  *(v8 + 64) = v15 + (v7 ^ 0xFBFFBDFB) + ((2 * v7) & 0xF7FF7BF6) + 2143222360;
  *(v8 + 56) = v15 + v6 + 327009776;
  *(v8 + 16) = a4;
  *(v8 + 8) = 782917927 - v15;
  *(v8 + 32) = v14;
  v16 = (*(v10 + 8 * (v4 ^ (a3 - 1685))))(v9 - 208);
  v17 = *(v14 + 557) >> 3;
  *(v8 + 60);
  STACK[0x978] -= 2240;
  return v13(v16);
}

uint64_t sub_BD408()
{
  v4 = v3 + v0;
  *v2 = (((LODWORD(STACK[0x908]) - v3) | (v3 - LODWORD(STACK[0x908]))) >> 31) ^ 0x80000000;
  v5 = (*(v1 + 8 * (v3 ^ 0xA9C)))(STACK[0x930]);
  v6 = STACK[0x280];
  v7 = STACK[0x900];
  return (*(STACK[0x948] + 8 * (v3 ^ 0x797B2C37 ^ v4)))(v5);
}

uint64_t sub_BD490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~a2 + v6;
  v10 = v5 + v9 + v7;
  v11 = *(v10 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = *(v10 - 15);
  *(v12 - 31) = v11;
  return (*(v8 + 8 * ((31 * (a2 + v3 - 1535 == v2)) ^ v4)))();
}

uint64_t sub_BD4DC@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  v7 = *(v6 + 16) + v5;
  v8 = *(*(a4 - 132921991) + (((v7 & 0xFFFFFFF8 ^ 0x3464DA45) + ((a1 + 297294028) & 0x7B959A79 ^ 0x241FB32) + ((2 * (v7 & 0xFFFFFFF8)) & 0x68C9B480)) & *(v4 - 464343834)));
  v9 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v8) ^ 0x89F455BA1C0B015;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xD8D188F9068EB840;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0x23566987D5E1150ELL) - 0x6E54CB3C150F7579) ^ 0x964AC790F4120BF8;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x3F5B0F7D74E0A5C8) - (v16 + v15) + 0x60527841458FAD1CLL) ^ 0x21017C21F76941DCLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x8A4943FA3C1BB996;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8F826D48DCAD4006;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x3E735FFD9083B0A3;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((((2 * (v25 + v24)) | 0xA5379A01FB1B4D22) - (v25 + v24) - 0x529BCD00FD8DA691) ^ 0x74B4F2DF3269B9DDLL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(a2 + 8 * ((586 * (a1 != -2064351960)) ^ (a1 - 1924273371))))();
}

uint64_t sub_BD714@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v67 = *(v58 + 8);
  v68 = *(v55 + (v56 & v57)) & 0x7FFFFFFFFFFFFFFFLL;
  v69 = (((v62 + 822148320) | 0x487A2CA4u) ^ v68 ^ 0x645311439E419AECLL) + (*(v55 + (a1 & v60)) & 0x7FFFFFFFFFFFFFFFLL ^ v59) + (((*v67 ^ 0xD5848F38399B9B15) + 0x2A7B70C7C66464EBLL) ^ ((*v67 ^ 0x946C60A00BA70C0ALL) + 0x6B939F5FF458F3F6) ^ ((v68 ^ 0x25BBFEDBD5062156 ^ *v67) - (v68 ^ 0x25BBFEDBD5062156))) + (((v61 ^ 0xEBAB5863D4B53253) + 0x1454A79C2B4ACDADLL) ^ ((v61 ^ 0xE5E4C900334708CCLL) + 0x1A1B36FFCCB8F734) ^ ((*(v55 + (a1 & v60)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x49286D9BF171F674 ^ v61) - (*(v55 + (a1 & v60)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x49286D9BF171F674))) + 0x4B27CBE464A131C5;
  v70 = (v69 ^ 0x2291A3D3531EEE32) & (2 * (v69 & 0xB4D8341B9B5ECE3BLL)) ^ v69 & 0xB4D8341B9B5ECE3BLL;
  v71 = ((2 * (v69 ^ 0x2A21C3C6431AE252)) ^ 0x3DF3EFBBB08858D2) & (v69 ^ 0x2A21C3C6431AE252) ^ (2 * (v69 ^ 0x2A21C3C6431AE252)) & 0x9EF9F7DDD8442C68;
  v72 = v71 ^ 0x8208104448442429;
  v73 = (v71 ^ 0x14E1E09890000840) & (4 * v70) ^ v70;
  v74 = ((4 * v72) ^ 0x7BE7DF776110B1A4) & v72 ^ (4 * v72) & 0x9EF9F7DDD8442C68;
  v75 = (v74 ^ 0x1AE1D75540002020) & (16 * v73) ^ v73;
  v76 = ((16 * (v74 ^ 0x8418208898440C49)) ^ 0xEF9F7DDD8442C690) & (v74 ^ 0x8418208898440C49) ^ (16 * (v74 ^ 0x8418208898440C49)) & 0x9EF9F7DDD8442C60;
  v77 = (v76 ^ 0x8E9975DD80400400) & (v75 << 8) ^ v75;
  v78 = (((v76 ^ 0x1060820058042869) << 8) ^ 0xF9F7DDD8442C6900) & (v76 ^ 0x1060820058042869) ^ ((v76 ^ 0x1060820058042869) << 8) & 0x9EF9F7DDD8442C00;
  v79 = v77 ^ 0x9EF9F7DDD8442C69 ^ (v78 ^ 0x98F1D5D840040000) & (v77 << 16);
  *v67 = v68 ^ v69 ^ (2 * ((v79 << 32) & 0x1EF9F7DD00000000 ^ v79 ^ ((v79 << 32) ^ 0x58442C6900000000) & (((v78 ^ 0x608220598400469) << 16) & 0x1EF9F7DD00000000 ^ 0x820279900000000 ^ (((v78 ^ 0x608220598400469) << 16) ^ 0x77DDD84400000000) & (v78 ^ 0x608220598400469)))) ^ 0xDDF88271CCEC20A0;
  *v64 = *(*(a55 - 1648919999) + 24);
  *(v64 + 8) = (v62 - 626832520) ^ (1938608989 * ((v66 - 929334531 - 2 * ((v66 - 208) & 0xC89B7BCD)) ^ 0xB2BB253B));
  v80 = (*(v65 + 8 * (v62 ^ 0x9F0)))(v66 - 208);
  v81 = *(v63 + 920);
  return (*(STACK[0x948] + 8 * v62))(v80);
}

uint64_t sub_BDB80()
{
  *(v0 + 24) = STACK[0x930];
  *(v0 + 8) = v2;
  *(v0 + 16) = (v1 - 1434) ^ LODWORD(STACK[0x928]);
  v6 = (*(v5 + 8 * (v1 ^ 0xD3F)))(v4 - 208);
  return (*(STACK[0x948] + 8 * (((*v0 == v3) * (((v1 ^ 0x355) - 959) ^ 0xEE5)) ^ v1)))(v6);
}

uint64_t sub_BDBF4()
{
  *v2 = *v1;
  v3[21] = v1[1];
  v3[22] = v1[2];
  v3[23] = v1[3];
  v3[24] = v1[4];
  v3[25] = v1[5];
  v3[26] = v1[6];
  v3[27] = v1[7];
  v3[28] = v1[8];
  v3[29] = v1[9];
  v3[30] = v1[10];
  v3[31] = v1[11];
  v3[32] = v1[12];
  v3[33] = v1[13];
  v3[34] = v1[14];
  v3[35] = v1[15];
  return (*(v4 + 8 * v0))();
}

uint64_t sub_BDCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (a6 + 908);
  v9 = vld1q_dup_f32(v8);
  v10.n128_u64[0] = 0x8000000080000000;
  v10.n128_u64[1] = 0x8000000080000000;
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  return (*(a4 + 8 * (v7 + v6 - 1230)))(v10, vnegq_f32(v11), vdupq_n_s32(0xE4DB42u), vdupq_n_s32(0x726DA1u), v9);
}

void sub_BDD30(uint64_t a1)
{
  v1 = 1913485891 * ((-1692931034 - (a1 | 0x9B17EC26) + (a1 | 0x64E813D9)) ^ 0xF904F4F3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_BDE3C()
{
  v3 = LOBYTE(STACK[0x555]);
  v4 = LOBYTE(STACK[0x553]);
  v5 = LOBYTE(STACK[0x559]);
  v6 = LOBYTE(STACK[0x585]);
  v7 = LOBYTE(STACK[0x58B]);
  v8 = LOBYTE(STACK[0x55F]);
  LODWORD(STACK[0x4C4]) = v8;
  v9 = LOBYTE(STACK[0x550]);
  LODWORD(STACK[0x4F8]) = v9;
  v10 = LOBYTE(STACK[0x581]);
  v11 = LOBYTE(STACK[0x55B]);
  LODWORD(STACK[0x410]) = v11;
  v12 = LOBYTE(STACK[0x580]) ^ v9;
  v13 = LOBYTE(STACK[0x588]);
  v14 = LOBYTE(STACK[0x58F]);
  v15 = LOBYTE(STACK[0x551]);
  v16 = LOBYTE(STACK[0x55A]);
  LODWORD(STACK[0x4F4]) = v16;
  v17 = v14 ^ v8;
  v18 = v15;
  LODWORD(STACK[0x3D0]) = v15;
  v19 = LOBYTE(STACK[0x558]);
  LODWORD(STACK[0x4B0]) = v19;
  v20 = v11 ^ v7;
  v21 = LOBYTE(STACK[0x554]);
  v22 = LOBYTE(STACK[0x58A]) ^ v16;
  v23 = (110 * (v15 ^ v10) * (v15 ^ v10)) ^ v15 ^ v10;
  v24 = LOBYTE(STACK[0x583]) ^ v4;
  LODWORD(STACK[0x3F8]) = v4;
  v25 = v19 ^ v13;
  v26 = (-54 * v17 * v17) ^ v17;
  v27 = LOBYTE(STACK[0x589]);
  v28 = (-22 * v20 * v20) ^ v20;
  v29 = (-94 * v24 * v24) ^ v24;
  v30 = LOBYTE(STACK[0x584]) ^ v21;
  v31 = v21;
  LODWORD(STACK[0x3C8]) = v21;
  LODWORD(STACK[0x460]) = v3;
  v32 = v22 ^ (6 * v22 * v22);
  LODWORD(STACK[0x458]) = (16 * (v12 ^ 0x5A ^ (-106 * v12 * v12))) | (2 * ((v12 ^ 0x5A ^ (-106 * v12 * v12)) & 3));
  LODWORD(STACK[0x4A8]) = v32 ^ 0x5B;
  v33 = (-58 * ((v30 * v30) & 0x3F | ((v30 * v30) << 8))) ^ v30;
  v34 = v6 ^ v3 ^ (6 * (v6 ^ v3) * (v6 ^ v3));
  LODWORD(STACK[0x4D0]) = v25 ^ 0x46 ^ (-66 * v25 * v25);
  v35 = LOBYTE(STACK[0x552]);
  LODWORD(STACK[0x3E0]) = v35;
  LODWORD(STACK[0x41C]) = LOBYTE(STACK[0x582]) ^ v35 ^ 0xFFFFFFD2 ^ (94 * (LOBYTE(STACK[0x582]) ^ v35) * (LOBYTE(STACK[0x582]) ^ v35));
  LODWORD(STACK[0x430]) = (2 * ((v32 ^ 0x5B | 3) ^ v32)) ^ 0xB1;
  v36 = LOBYTE(STACK[0x557]);
  v37 = v36 ^ LOBYTE(STACK[0x587]);
  LODWORD(STACK[0x3A4]) = v36;
  v38 = v37 ^ (34 * v37 * v37) ^ 0xFFFFFF8B;
  v39 = LOBYTE(STACK[0x55D]);
  v40 = LOBYTE(STACK[0x58D]) ^ v39 ^ 0x6F ^ (-10 * (LOBYTE(STACK[0x58D]) ^ v39) * (LOBYTE(STACK[0x58D]) ^ v39));
  v41 = v0[5];
  LODWORD(STACK[0x4C8]) = v41;
  v42 = v41 ^ v3;
  LODWORD(STACK[0x450]) = (16 * v26) | (2 * (v26 & 3));
  LODWORD(STACK[0x448]) = (16 * v29) | (2 * (v29 & 3));
  v43 = LOBYTE(STACK[0x556]);
  v44 = LOBYTE(STACK[0x586]) ^ v43;
  LODWORD(STACK[0x3E8]) = v43;
  v45 = v0[3];
  LODWORD(STACK[0x4A0]) = v45;
  v46 = v45 ^ v4;
  v47 = LOBYTE(STACK[0x55E]);
  v48 = LOBYTE(STACK[0x58E]) ^ v47;
  LODWORD(STACK[0x370]) = v47;
  v49 = v0[1];
  LODWORD(STACK[0x498]) = v49;
  LODWORD(STACK[0x40C]) = (70 * (v49 ^ v18) * (v49 ^ v18)) ^ v49 ^ v18;
  v50 = (86 * v46 * v46) ^ v46;
  v51 = v27 ^ v5 ^ 0xFFFFFF86 ^ (122 * (v27 ^ v5) * (v27 ^ v5));
  LODWORD(STACK[0x438]) = (16 * v23) | (2 * (v23 & 3));
  v52 = LOBYTE(STACK[0x55C]);
  LODWORD(STACK[0x378]) = v52;
  v53 = LOBYTE(STACK[0x58C]) ^ v52;
  v54 = v0[7];
  LODWORD(STACK[0x4B4]) = v54;
  v55 = v54 ^ v36;
  v56 = v44 ^ 0x4E ^ (-14 * v44 * v44);
  v57 = (-18 * v53 * v53) ^ v53;
  v58 = v0[9];
  LODWORD(STACK[0x490]) = v58;
  HIDWORD(v59) = v58 ^ v5;
  LODWORD(v59) = ((-78 * (v58 ^ v5) * (v58 ^ v5)) ^ v58 ^ v5) << 24;
  LODWORD(STACK[0x384]) = (((v59 >> 25) & 0x80) >> 3) | (32 * (v59 >> 25));
  v60 = v0[4];
  LODWORD(STACK[0x4B8]) = v60;
  v61 = v31 ^ v60;
  LODWORD(STACK[0x3DC]) = v42 ^ (-30 * v42 * v42);
  v62 = *v0;
  LODWORD(STACK[0x480]) = v62;
  LODWORD(STACK[0x3A8]) = (78 * (LODWORD(STACK[0x4F8]) ^ v62) * (LODWORD(STACK[0x4F8]) ^ v62)) ^ LODWORD(STACK[0x4F8]) ^ v62;
  LODWORD(STACK[0x44C]) = (16 * v38) | (2 * (v38 & 3));
  v63 = v48 ^ (-86 * v48 * v48);
  LODWORD(STACK[0x43C]) = (16 * v34) | (2 * (v34 & 3));
  v64 = v0[10];
  LODWORD(STACK[0x478]) = v64;
  v65 = LODWORD(STACK[0x4F4]) ^ v64;
  v66 = 106 * (((LOBYTE(STACK[0x4F4]) ^ v64) * (LOBYTE(STACK[0x4F4]) ^ v64)) & 0xF);
  LODWORD(STACK[0x42C]) = (16 * v28) | (2 * (v28 & 3));
  v67 = v0[6];
  LODWORD(STACK[0x470]) = v67;
  v68 = v43 ^ v67;
  v69 = -22 * v68 * v68;
  v70 = v69 & 0x40;
  if ((v70 & (v43 ^ v67)) != 0)
  {
    v70 = -v70;
  }

  LODWORD(STACK[0x444]) = (16 * v40) | (2 * (v40 & 3));
  v71 = v69 & 0xFFFFFFBF ^ 0xFFFFFF9E ^ (v70 + v68);
  LODWORD(STACK[0x440]) = (16 * v33) | (2 * (v33 & 3));
  v72 = v0[8];
  LODWORD(STACK[0x488]) = v72;
  v73 = STACK[0x4B0];
  v74 = LODWORD(STACK[0x4B0]) ^ v72;
  LODWORD(STACK[0x420]) = (16 * LODWORD(STACK[0x4D0])) | (2 * (STACK[0x4D0] & 3));
  LODWORD(STACK[0x400]) = (16 * v56) | (2 * (v56 & 3));
  v75 = v0[14];
  LODWORD(STACK[0x468]) = v75;
  v76 = v0[15];
  LODWORD(STACK[0x4D0]) = v76;
  v77 = STACK[0x4C4];
  v78 = LODWORD(STACK[0x4C4]) ^ v76 ^ (6 * (LODWORD(STACK[0x4C4]) ^ v76) * (LODWORD(STACK[0x4C4]) ^ v76));
  LODWORD(STACK[0x3C0]) = (16 * LODWORD(STACK[0x41C])) | (2 * (STACK[0x41C] & 3));
  v79 = v55 ^ 0xF6 ^ (-74 * v55 * v55);
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x430]) + 16 * LODWORD(STACK[0x4A8]);
  v80 = v61 ^ 0xFFFFFFF5 ^ (-118 * v61 * v61);
  LODWORD(STACK[0x390]) = v65 ^ 0xFFFFFFAF ^ v66;
  v81 = v5 ^ *(v2 - 111);
  LODWORD(STACK[0x430]) = (16 * (v63 ^ 0xFFFFFFE7)) | (2 * ((v63 ^ 0xFFFFFFE7) & 3));
  v82 = (-110 * (v47 ^ v75) * (v47 ^ v75)) ^ v47 ^ v75;
  v83 = *(v2 - 105) ^ v77;
  v84 = *(v2 - 112) ^ v73;
  LODWORD(STACK[0x360]) = v84;
  LOBYTE(v75) = *(v2 - 107) ^ v39;
  v85 = v0[13];
  LODWORD(STACK[0x4B0]) = v85;
  v86 = v39 ^ v85 ^ (6 * (v39 ^ v85) * (v39 ^ v85));
  v87 = LODWORD(STACK[0x460]) ^ *(v2 - 115);
  LODWORD(STACK[0x41C]) = (16 * (LODWORD(STACK[0x3DC]) ^ 0xFFFFFFC1)) | (2 * ((LODWORD(STACK[0x3DC]) ^ 0xFFFFFFC1) & 3));
  LODWORD(STACK[0x3DC]) = (16 * v51) | (2 * (v51 & 3));
  v88 = *(v2 - 116) ^ LODWORD(STACK[0x3C8]);
  LODWORD(STACK[0x40C]) = (16 * LODWORD(STACK[0x40C])) | (2 * (STACK[0x40C] & 3));
  LODWORD(STACK[0x3BC]) = (16 * v50) | (2 * (v50 & 3));
  LODWORD(STACK[0x388]) = v74 ^ 0x7B ^ (-98 * v74 * v74);
  v89 = v0[12];
  LODWORD(STACK[0x4A8]) = v89;
  v90 = STACK[0x378];
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x378]) ^ v89 ^ (94 * (LODWORD(STACK[0x378]) ^ v89) * (LODWORD(STACK[0x378]) ^ v89));
  v91 = v0[11];
  LODWORD(STACK[0x4C4]) = v91;
  v92 = STACK[0x410];
  v93 = LODWORD(STACK[0x410]) ^ v91 ^ (10 * (LODWORD(STACK[0x410]) ^ v91) * (LODWORD(STACK[0x410]) ^ v91)) ^ 0xFFFFFFEB;
  LODWORD(STACK[0x3C8]) = (16 * v71) | (2 * (v71 & 3));
  LODWORD(STACK[0x398]) = (58 * v87 * v87) ^ v87;
  LODWORD(STACK[0x3B0]) = (16 * v57) | (2 * (v57 & 3));
  v94 = *(v2 - 113) ^ LODWORD(STACK[0x3A4]);
  LOBYTE(v74) = (16 * ((LODWORD(STACK[0x384]) >> 4) ^ 1)) | (2 * (((LODWORD(STACK[0x384]) >> 4) ^ 1) & 3));
  v95 = v0[2];
  LODWORD(STACK[0x460]) = v95;
  v96 = LODWORD(STACK[0x3E0]) ^ v95 ^ (-106 * (LODWORD(STACK[0x3E0]) ^ v95) * (LODWORD(STACK[0x3E0]) ^ v95));
  v97 = v75 ^ (-90 * v75 * v75);
  HIDWORD(v98) = ((v82 & 8) != 0) | (32 * v82) & 0x3F;
  LODWORD(v98) = v82 << 29;
  v99 = *(v2 - 118) ^ LODWORD(STACK[0x3E0]);
  LODWORD(STACK[0x3A4]) = 30 * v84 * v84;
  LOBYTE(v95) = v81;
  LOBYTE(v84) = -90 * v81 * v81;
  v100 = (16 * v78) | (2 * (v78 & 3));
  LODWORD(STACK[0x508]) = (16 * LODWORD(STACK[0x3A8])) | (2 * (STACK[0x3A8] & 3));
  v101 = (16 * v79) | (2 * (v79 & 3));
  LODWORD(STACK[0x3A8]) = (16 * v93) | (2 * (v93 & 3));
  v102 = *(v2 - 119) ^ LODWORD(STACK[0x3D0]);
  v103 = *(v2 - 108) ^ v90;
  v104 = *(v2 - 106) ^ LODWORD(STACK[0x370]);
  v105 = (94 * v94 * v94) ^ v94;
  LODWORD(STACK[0x3E0]) = (16 * v80) | (2 * (v80 & 3));
  v106 = *(v2 - 120) ^ LODWORD(STACK[0x4F8]);
  v107 = *(v2 - 117) ^ LODWORD(STACK[0x3F8]);
  LODWORD(STACK[0x3F8]) = (2 * (v82 & 3)) | (32 * (v98 >> 30)) | ((v98 >> 30) >> 3);
  LODWORD(STACK[0x4F8]) = ((16 * v86) | (2 * (v86 & 3))) ^ 0x25;
  v108 = (16 * (v96 ^ 0x81)) | (2 * ((v96 ^ 0x81) & 3));
  LOBYTE(v82) = (16 * (v97 ^ 6)) | (2 * ((v97 ^ 6) & 3));
  LOBYTE(v96) = v99 ^ 0x5D ^ (62 * v99 * v99);
  LOBYTE(v87) = *(v2 - 109) ^ v92;
  v109 = v95 ^ 0xED ^ v84;
  LOBYTE(v94) = (54 * v103 * v103) ^ v103;
  v110 = *(v2 - 110) ^ LODWORD(STACK[0x4F4]);
  v111 = (16 * (LODWORD(STACK[0x368]) ^ 0x1E)) | (2 * ((LODWORD(STACK[0x368]) ^ 0x1E) & 3));
  v112 = (16 * LODWORD(STACK[0x390])) | (2 * (STACK[0x390] & 3));
  LOBYTE(v92) = v107 ^ 0x2D ^ (-34 * v107 * v107);
  LOBYTE(v107) = v87 ^ 0x35 ^ (-22 * v87 * v87);
  v113 = LODWORD(STACK[0x360]) ^ 0xFFFFFFFA ^ LODWORD(STACK[0x3A4]);
  LODWORD(STACK[0x4F4]) = v104 ^ (18 * v104 * v104);
  v114 = v106 ^ 0xA3 ^ (70 * v106 * v106);
  v115 = LODWORD(STACK[0x3E8]) + *(v2 - 114) - 2 * (STACK[0x3E8] & *(v2 - 114));
  v116 = (16 * (v88 ^ 0x37 ^ (-126 * v88 * v88))) | (2 * ((v88 ^ 0x37 ^ (-126 * v88 * v88)) & 3));
  LOBYTE(v106) = (16 * LOBYTE(STACK[0x388])) | (2 * (STACK[0x388] & 3));
  LOBYTE(v87) = v102 ^ 0xBD ^ (94 * v102 * v102);
  LOBYTE(STACK[0x550]) = LODWORD(STACK[0x3C0]) | 1;
  LOBYTE(v102) = (16 * v109) | (2 * (v109 & 3));
  LOBYTE(v88) = (16 * v107) | (2 * (v107 & 3));
  LOBYTE(STACK[0x57B]) = v74 | 1;
  LOBYTE(v104) = (16 * LOBYTE(STACK[0x398])) | (2 * (STACK[0x398] & 3));
  LOBYTE(v74) = (16 * (v83 ^ 0x96 ^ (-22 * v83 * v83))) | (2 * ((v83 ^ 0x96 ^ (-22 * v83 * v83)) & 3));
  LOBYTE(STACK[0x555]) = LODWORD(STACK[0x438]) ^ 0x65;
  v117 = LODWORD(STACK[0x448]) ^ 0x41;
  v118 = LODWORD(STACK[0x42C]) ^ 0x41;
  LOBYTE(v107) = (16 * v114) | (2 * (v114 & 3));
  LOBYTE(STACK[0x573]) = LODWORD(STACK[0x400]) | 1;
  LOBYTE(STACK[0x55B]) = LODWORD(STACK[0x458]) | 1;
  LOBYTE(STACK[0x56D]) = LODWORD(STACK[0x3BC]) ^ 0x81;
  LOBYTE(STACK[0x575]) = STACK[0x3F0];
  LOBYTE(STACK[0x577]) = v101 | 1;
  LOBYTE(STACK[0x55E]) = v118;
  v119 = STACK[0x450];
  LOBYTE(STACK[0x561]) = LODWORD(STACK[0x3B0]) ^ 0x81;
  LOBYTE(STACK[0x568]) = LODWORD(STACK[0x420]) | 1;
  LOBYTE(STACK[0x57D]) = v106 | 1;
  LOBYTE(STACK[0x559]) = LODWORD(STACK[0x3DC]) | 1;
  LOBYTE(STACK[0x554]) = v117;
  LOBYTE(STACK[0x570]) = (2 * (v110 & 1)) & 0xFB | (16 * (v110 ^ 0x5E ^ (-38 * v110 * v110))) | (4 * (((v110 ^ 0x5E ^ (-38 * v110 * v110)) & 2) != 0)) | 1;
  LOBYTE(STACK[0x567]) = LODWORD(STACK[0x43C]) | 1;
  LOBYTE(STACK[0x572]) = LODWORD(STACK[0x3C8]) | 1;
  LOBYTE(STACK[0x578]) = v88 | 1;
  LOBYTE(STACK[0x553]) = v82 | 1;
  LOBYTE(STACK[0x55F]) = v104 ^ 0x81;
  LOBYTE(STACK[0x55C]) = v111 | 1;
  LOBYTE(STACK[0x552]) = (16 * v92) | (2 * (v92 & 3)) | 1;
  LOBYTE(STACK[0x576]) = (16 * v94) | (2 * (v94 & 3)) | 1;
  LOBYTE(STACK[0x564]) = LODWORD(STACK[0x3F8]) | 1;
  LOBYTE(STACK[0x55D]) = v116 | 1;
  LOBYTE(STACK[0x57E]) = (16 * (v115 ^ 0x91 ^ (-58 * v115 * v115))) | (2 * ((v115 ^ 0x91 ^ (-58 * v115 * v115)) & 3)) | 1;
  LOBYTE(STACK[0x556]) = (16 * v113) | (2 * (v113 & 3)) | 1;
  LOBYTE(STACK[0x562]) = ((16 * v105) | (2 * (v105 & 3))) ^ 0x41;
  LOBYTE(STACK[0x569]) = LODWORD(STACK[0x3A8]) | 1;
  LOBYTE(v106) = (16 * (LOBYTE(STACK[0x4F4]) ^ 0x3F)) | (2 * ((LOBYTE(STACK[0x4F4]) ^ 0x3F) & 3));
  LOBYTE(STACK[0x563]) = (16 * v87) | (2 * (v87 & 3)) | 1;
  LOBYTE(STACK[0x57A]) = STACK[0x4F8];
  LOBYTE(STACK[0x56E]) = LODWORD(STACK[0x430]) | 1;
  LOBYTE(STACK[0x57C]) = (v119 & 0xD2 ^ 0x65) & (v119 | 0xD3);
  LOBYTE(STACK[0x55A]) = v112 | 1;
  LOBYTE(STACK[0x566]) = LODWORD(STACK[0x41C]) | 1;
  LOBYTE(STACK[0x565]) = v100 ^ 0x41;
  LOBYTE(STACK[0x557]) = LODWORD(STACK[0x44C]) | 1;
  LOBYTE(v104) = LODWORD(STACK[0x444]) | 1;
  LOBYTE(v88) = LODWORD(STACK[0x440]) ^ 0xC1;
  v120 = LODWORD(STACK[0x40C]) ^ 0x81;
  v121 = LODWORD(STACK[0x508]) | 1;
  LOBYTE(v87) = LODWORD(STACK[0x3E0]) | 1;
  LOBYTE(STACK[0x56F]) = v74 | 1;
  LOBYTE(STACK[0x56C]) = v87;
  LOBYTE(STACK[0x579]) = (16 * v96) | (2 * (v96 & 3)) | 1;
  LOBYTE(STACK[0x551]) = v108 | 1;
  LOBYTE(STACK[0x57F]) = v102 | 1;
  LOBYTE(STACK[0x56A]) = v107 | 1;
  LOBYTE(STACK[0x558]) = v104;
  LOBYTE(STACK[0x574]) = v106 | 1;
  LOBYTE(STACK[0x571]) = v88;
  LOBYTE(STACK[0x560]) = v120;
  LOBYTE(STACK[0x56B]) = v121;
  v122 = STACK[0x538];
  v123 = STACK[0x530];
  v124 = STACK[0x500];
  v125 = STACK[0x500] + 1471590550 + *(*STACK[0x538] + (*STACK[0x530] & 0x46B39928));
  LOBYTE(v88) = 110 * STACK[0x500];
  v124[1834] = (v88 + 116) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v125 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v125 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0x5A;
  v126 = v124 + 1471589362 + *(*v122 + (*v123 & 0x46B39928));
  v124[646] = (v88 - 4) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v126 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v126 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0x43;
  v127 = v124 + 1471591007 + *(*v122 + (*v123 & 0x46B39928));
  v124[2291] = (v88 - 46) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v127 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v127 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0xCD;
  v128 = v124 + 1471588768 + *(*v122 + (*v123 & 0x46B39928));
  v124[52] = (v88 - 64) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v128 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v128 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0xCF;
  v129 = v124 + 1471589956 + *(*v122 + (*v123 & 0x46B39928));
  v124[1240] = (v88 + 56) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v129 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v129 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0x8C;
  v130 = v124 + 1471589499 + *(*v122 + (*v123 & 0x46B39928));
  v124[783] = (v88 - 38) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v130 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v130 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0x27;
  v131 = v124 + 1471590413 + *(*v122 + (*v123 & 0x46B39928));
  v124[1697] = (v88 - 106) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v131 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v131 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0xFB;
  v132 = *(*v122 + (*v123 & 0x46B39928)) + v124 + 1471588905;
  v124[189] = (v88 - 98) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v132 + 1186175272) & (qword_190530 ^ 0xF1E76555))) ^ *((*v1 ^ 0xDDC772C6444EEA48) + ((v132 + 1186175274) & (qword_190530 ^ 0xF1E76555))) ^ 0x59;
  v133 = STACK[0x520];
  v134 = LODWORD(STACK[0x52C]);
  return (*(STACK[0x548] + 8 * SLODWORD(STACK[0x52C])))(0, 35);
}

uint64_t sub_BED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0xD68] = *(v8 + 8 * (v7 - 2038115473));
  v9 = *(&off_18D8F0 + (v7 ^ (a7 + 33))) - 1601882930;
  v10 = STACK[0x280];
  v11 = STACK[0x368];
  return (*(v8 + 8 * ((v7 - 2038115473) ^ (v7 - 1879307288) & 0xF688CFFF ^ 0x940)))();
}

uint64_t sub_BEE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24)
{
  a22 = v24 + (((&a22 | 0x4C9084D5) + (~&a22 | 0xB36F7B2A)) ^ 0xC9A54E95) * v28 - 1309;
  a23 = v27;
  a24 = v26;
  v29 = (*(v25 + 8 * (v24 + 188)))(&a22);
  return (*(v25 + 8 * v24))(v29);
}

uint64_t sub_BEEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x978] = v6 - 2038136997 + ((v7 + 540091915) | 0x594A0405u);
  v9 = STACK[0xB98];
  return (*(v8 + 8 * v7))(a1, a2, a3, 2256851803, a5, a6, 2038115493);
}

uint64_t sub_BEF58@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, char a4@<W4>, unsigned __int8 a5@<W5>, unsigned __int8 a6@<W6>, char a7@<W7>, uint64_t a8@<X8>)
{
  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == a6;
  }

  v12 = v10 && a3 == 3;
  v13 = v12 ^ 1;
  if (a4)
  {
    v13 = 1;
  }

  if (a7)
  {
    v13 = 1;
  }

  if (a5 != (v8 ^ 0x72))
  {
    v13 = 1;
  }

  return (*(a8 + 8 * ((233 * v13) ^ v8)))(a1, 0);
}

uint64_t sub_BF018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = 106 * (v7 ^ 0x18);
  v12 = v9 + 4 > v8 + v9 + ((v11 + 1229037855) & 0xB6BE59EE ^ 0x1AD);
  return (*(v10 + 8 * (((2 * (((a7 + v11 + 96) ^ v12) & 1)) & 0xFB | (4 * (((a7 + v11 + 96) ^ v12) & 1))) ^ v11)))();
}

uint64_t sub_BF084@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = LODWORD(STACK[0xABC]);
  v6 = (LODWORD(STACK[0xA3C]) - 1610630247);
  return (*(v3 + 8 * ((v1 + 320) | 0x8C)))(LODWORD(STACK[0xD84]), *(v2 + 1040) + 16);
}

uint64_t sub_BF134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 + 8) = v64 - 1583996299 * (((((v66 - 208) ^ 0x9245034 | 0x2251ABC8) ^ 0xFFFFFFFE) - ((v66 - 208) ^ 0x20012AC8 | 0xDDAE5437)) ^ 0x9F27441C) + 1303;
  *v65 = a64;
  v68 = (*(v67 + 8 * (v64 + 2002)))(v66 - 208);
  if (*(v65 + 12))
  {
    v69 = 1;
  }

  else
  {
    v69 = *a64 == 0;
  }

  v70 = v69;
  return (*(STACK[0x948] + 8 * ((4 * v70) | (32 * v70) | v64)))(v68);
}

uint64_t sub_BF234(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, void *a7)
{
  v12 = (((1645 * a4 + 2113825) % 0xA88u) ^ (1143 * (v9 ^ 0x73Eu) - 0x4200080148A20919)) + v11 + ((2 * ((1645 * a4 + 2113825) % 0xA88u)) & 0x1FAA);
  v13 = *v7;
  v14 = *STACK[0x538];
  v15 = STACK[0x530];
  v16 = *(v14 + (v13 & v10));
  v17 = *a7 ^ 0xF1E76555;
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 1218576427 + v16 + v10) & v17)) ^ *(v12 + 0x371FDB5EF0EB56BFLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 1218576427 + v16 + v10 + 2) & v17)) ^ (110 * (v12 + 43));
  LODWORD(v12) = 551 * (((v12 ^ 0x4D51ABC6) + 797262217) ^ ((v12 ^ 0xCB3DF414) - 1444340133) ^ ((v12 ^ 0x866C5F94) - 457656869)) + 1203521185;
  v18 = STACK[0x518] + 4 * (v12 - ((((v12 >> 3) * a5) >> 32) >> 7) * v8);
  v19 = *(v14 + (v13 & STACK[0x540]));
  v20 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + LODWORD(STACK[0x52C])) & v17)) ^ *(v18 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + 1527793161) & v17));
  LODWORD(v13) = ((((v20 ^ (1912024365 * v18)) >> 10) ^ 0xA82E959) + 1853737256) ^ ((((v20 ^ (1912024365 * v18)) >> 10) ^ 0x2B59413B) + 1336303942) ^ ((((v20 ^ (1912024365 * v18)) >> 10) ^ 0x21D111B8) + 1160655303);
  v21 = ((v20 ^ (11565 * v18)) >> 8);
  LODWORD(v14) = 1645 * (((v20 ^ (16198957 * v18)) >> 16) ^ 0xE7) + 3391990;
  LODWORD(v18) = 1645 * ((((v20 ^ (45 * v18)) ^ 0x8874AC31) - 420436958) ^ (((v20 ^ (45 * v18)) ^ 0x1865C44) + 1862423637) ^ (((v20 ^ (45 * v18)) ^ 0x89F2F05F) - 411633584)) - 641016105;
  v22 = v14 - 2696 * (((12744711 * v14) >> 32) >> 3);
  v23 = ((v18 % 0xA88) ^ 0xFDE9BD3FF6CFFEBFLL) + v11 + ((2 * (v18 % 0xA88)) & 0x1D7E);
  v24 = 1645 * ((v13 - 1660033445) >> 14) - 2696 * (((407830723 * (1645 * ((v13 - 1660033445) >> 14))) >> 32) >> 8);
  v25 = *(v23 - 0x8C9E9E24E86A82BLL);
  v26 = v23 + 154140993;
  v27 = (v22 ^ 0xEE3FFFECFCBA6EFCLL) + v11 + ((2 * v22) & 0x1DF8);
  v28 = (v24 ^ 0xCB7F7F79DFF6FFF7) + v11 + ((2 * v24) & 0x1FEE);
  v29 = 1645 * (v21 ^ 0x6B) + 3391990 - 2696 * (((12744711 * (1645 * (v21 ^ 0x6Bu) + 3391990)) >> 32) >> 3);
  v30 = (v29 ^ 0x71FBDBF7E76BFFFELL) + ((2 * v29) & 0x1FFC) + v11;
  LODWORD(v27) = ((*(v27 + 0x6DFD370AB8EE798) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 54890756 + v16 + 1186175272) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 54890756 + v16 + v10 + 2) & v17)) ^ (110 * (v27 + 4)) ^ 0x46) << 8) | ((*(v28 + 0x29A053E3C852569DLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 537460745 + v16 + 1186175272) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 537460745 + v16 + v10 + 2) & v17)) ^ (110 * (v28 + 9)) ^ 0x46) << 16);
  LODWORD(v27) = ((*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + 412352514 + v16 + 1186175272) & v17)) ^ *(v30 - 0x7CDC089A3F22A96ALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + 412352514 + v16 + v10 + 2) & v17)) ^ (110 * (v30 + 2)) ^ 0xE6A455) & ~v27 | v27 & 0x195B00) << 8;
  v31 = STACK[0x518] + 4 * (551 * a4 + 710790 - (((((551 * a4 + 710790) >> 3) * a5) >> 32) >> 7) * v8);
  *(v31 - 0x40E8C283FA03C307) = (1912024365 * v31) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v31 + LODWORD(STACK[0x52C])) & v17)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v19 + v31 + 1527793161) & v17)) ^ 0xC5195484 ^ ((v27 ^ 0x95A2CFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v16 + 1186175272) & v17)) ^ v25 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v16 + v10 + 2) & v17)) ^ (110 * v26) ^ 0xC97A2FE8) | v27 & 0x3685D000);
  return (*(STACK[0x548] + 8 * ((4050 * (a4 == 255)) ^ v9)))();
}

uint64_t sub_BF858@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  LODWORD(STACK[0xEB4]) = a2;
  v3 = (&STACK[0x1190] + STACK[0x978]);
  STACK[0x978] += (((v2 + 1079122702) | 0x39290C21) + 16) ^ ((v2 + 810746507) | 0x492824A4);
  *v3 = 0;
  v4 = (*(a1 + 8 * (v2 + 1352)))(0, v3) == 0;
  return (*(STACK[0x948] + 8 * ((251 * v4) ^ v2)))();
}

uint64_t sub_BF990()
{
  v3 = (*(v1 + 8 * (v2 ^ 0x998)))();
  *v0 = 0;
  return (*(v1 + 8 * v2))(v3);
}

void sub_BF9DC(uint64_t a1)
{
  v1 = 1183051249 * (((a1 | 0x5C726359) - (a1 & 0x5C726359)) ^ 0xB991B585);
  v2 = *(a1 + 32) - v1;
  v5 = *(a1 + 24);
  v6 = -322899507 * (*(a1 + 16) + v1) + 1171759861;
  v7 = *(*(&off_18D8F0 + v2 - 848) - 638975447);
  v3 = *(&off_18D8F0 + (v2 ^ 0x3BF)) - 939039246;
  v4 = (*(a1 + 48) ^ v1) - 1252056085;
  (*&v3[8 * (v2 ^ 0x8CD)])();
  __asm { BRAA            X8, X17 }
}

uint64_t sub_BFB4C()
{
  v5 = v1 + 137;
  v6 = ((2 * v3) & 0xF7CD3FEE) + (v3 ^ 0xFBE69FF7) + 68771849;
  v7 = (*(*v2 + v6) << (v1 + 60)) | (*(*v2 + v6 + 1) << 16) | (*(*v2 + v6 + 2) << 8) | *(*v2 + v6 + 3);
  *v0 = (v7 ^ 0x2BEE77BE) - 672027306 + ((2 * v7) & 0x57DCEF7C);
  *(v2 + 12) += 4;
  return (*(v4 + 8 * v5))();
}

uint64_t sub_BFC24()
{
  v5 = (*(v2 + 8 * (v0 ^ 0xE0A)))();
  *(*(v1 + 8) + v4 * v3 + 8) = 0;
  return (*(v2 + 8 * v0))(v5);
}

uint64_t sub_BFD1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  STACK[0x940] = v57 + 48;
  v63 = *(v58 + 424);
  v64 = 381473641 * ((2 * ((v61 - 208) & 0x11E0C458) - (v61 - 208) - 299943005) ^ 0xF0FB1C71);
  v65 = v61 - 208;
  *(v65 + 8) = v60 - v64 + 448;
  *(v65 + 24) = v64 + ((2 * v59) & 0xF7D7DDFE) + ((v60 - a4 + 40943747) ^ v59) - 134334177;
  *v65 = v63;
  *(v65 + 16) = a57;
  v66 = (*(v62 + 8 * (v60 ^ 0xB34u)))(v61 - 208);
  return (*(STACK[0x948] + 8 * (v60 ^ (32 * (*(v61 - 196) != 65021173)))))(v66);
}

uint64_t sub_BFE08(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (((*(a5 + v12) ^ v10) & 2) != 0)
  {
    v15 = -a1;
  }

  else
  {
    LOBYTE(v15) = a1;
  }

  v16 = a2 + ((v15 + (*(a5 + v12) ^ v10)) ^ v11) * (v8 + 935);
  LOBYTE(v16) = *(v14 + (v16 - (((v16 >> 8) * v6) >> 32) * a6));
  if (v12 == 6)
  {
    v17 = v7;
  }

  else
  {
    v17 = v12 + 1;
  }

  return (*(v13 + 8 * (((2 * (v9 <= v17)) | (4 * (v9 <= v17))) ^ v8)))();
}

uint64_t sub_BFF78@<X0>(uint64_t a1@<X3>, _DWORD *a2@<X5>, int a3@<W8>)
{
  v5 = a2[396] ^ (((((v3 - 23142532) | 0x1612084) ^ 0xF97B2CA5) & a2[623] | (((v3 - 1073876005) | 0x40020C25) ^ 0x684D35B) & *a2) >> 1);
  a2[623] = (v5 + v4 - (a3 & (2 * v5))) ^ *(&STACK[0x116C] + (*a2 & 1));
  return (*(a1 + 8 * ((119 * (((((LODWORD(STACK[0xD58]) ^ (v3 - 2038114870)) & STACK[0xD58]) >> (__clz(LODWORD(STACK[0xD58]) ^ (v3 - 2038114870) | 1) ^ 0x1F)) & 1) == 0)) ^ (v3 - 2038114429))))();
}

uint64_t sub_C0088(int a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, void *a7)
{
  v12 = (((1645 * a5 + 2113825) % 0xA88u) ^ 0x7EF7F5DBDFDEFF7FLL) + v11 + ((((1645 * a5 + 2113825) % 0xA88u) << ((a1 + 122) ^ 0x3Du)) & 0x1EFE);
  v13 = *v7;
  v14 = *STACK[0x538];
  v15 = *(v14 + (v13 & v10));
  v16 = *a7 ^ 0xF1E76555;
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 539033729 + v15 + v10) & v16)) ^ *(v12 + 0x7627DD81C86A5715) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 539033729 + v15 + v10 + 2) & v16)) ^ (110 * (v12 - 127));
  LODWORD(v12) = 551 * (((v12 ^ 0x17BD59E9) + 731532303) ^ ((v12 ^ 0xBFB781C2) - 2087676890) ^ ((v12 ^ 0xA80AD86D) - 1808937589)) - 2013064198;
  v17 = STACK[0x518] + 4 * (v12 - ((((v12 >> 3) * a4) >> 32) >> 7) * v8);
  v18 = *(v14 + (v13 & STACK[0x540]));
  v19 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v18 + LODWORD(STACK[0x52C])) & v16)) ^ *(v17 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v18 + 1527793161) & v16));
  LOWORD(v13) = v19 ^ (11565 * v17);
  LODWORD(v14) = (v19 ^ (45 * v17));
  v20 = ((v19 ^ (16198957 * v17)) >> 16);
  LODWORD(v17) = 1645 * (((((v19 ^ (1912024365 * v17)) >> 24) ^ 0x9223D033) + 545428868) ^ ((((v19 ^ (1912024365 * v17)) >> 24) ^ 0x249C0A59) - 1774366742) ^ ((((v19 ^ (1912024365 * v17)) >> 24) ^ 0xB6BFDA40) + 69115889)) + 703036663;
  v21 = 1645 * (BYTE1(v13) ^ 0x6B) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE1(v13) ^ 0x6Bu) + 3391990)) >> 32) >> 3);
  v22 = ((v17 % 0xA88) ^ 0x9EDEDFDFFF7DE9CFLL) + v11 + ((2 * (v17 % 0xA88)) & 0x139E);
  v23 = 1645 * (v20 ^ 0xE7) + 3391990 - 2696 * (((12744711 * (1645 * (v20 ^ 0xE7u) + 3391990)) >> 32) >> 3);
  v24 = (v23 ^ 0xFDFDF7E399EFFAF7) + v11 + ((2 * v23) & 0x15EE);
  v25 = (v21 ^ 0x77DEF4F6FEBDF58CLL) + v11 + ((2 * v21) & 0xB18);
  v26 = (1645 * (((v14 ^ 0x8A620E0F) + 1841893262) ^ ((v14 ^ 0x8CF74150) + 1801208019) ^ ((v14 ^ 0x6954F75) - 516010248)) + 1515853569) % 0xA88;
  LODWORD(v22) = ((*(v22 + 0x5640F37DA8CB6CC5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v22 + 8525361 + v15 + v10) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v22 + 8525361 + v15 + v10 + 2) & v16)) ^ (110 * (v22 + 49)) ^ 0x46) << 16) | ((*(v24 - 0x8DE2485F1A6A463) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + 1712325897 + v15 + v10) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + 1712325897 + v15 + v10 + 2) & v16)) ^ (110 * (v24 + 9)) ^ 0x46) << 8);
  v27 = (v26 ^ 0xBBD7FFA7DFFEF9F7) + v11 + ((2 * v26) & 0x13EE);
  LODWORD(v22) = (v22 ^ 0xDDF7FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 21105268 + v15 + v10) & v16)) ^ *(v25 + 0x7D40DE66A98B6108) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 21105268 + v15 + v10 + 2) & v16)) ^ (110 * (v25 + 116)) ^ 0x1DE2A0) | v22 & 0xE21D00;
  v28 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 536937993 + v15 + v10) & v16)) ^ *(v27 + 0x3947D3B5C84A5C9DLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 536937993 + v15 + v10 + 2) & v16)) ^ (110 * (v27 + 9)) ^ 0x1D3EEF3E;
  v29 = STACK[0x530];
  v30 = STACK[0x518] + 4 * (v9 + 551 * a5 - (((((v9 + 551 * a5) >> 3) * a4) >> 32) >> 7) * v8);
  *(v30 - 0x40E8C283FA03C307) = (1912024365 * v30) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v30 + LODWORD(STACK[0x52C])) & v16)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v30 + 1527793161) & v16)) ^ 0x37198452 ^ (((v22 << 8) ^ 0x621D09FF) & v28 | (v22 << 8) & 0xE2C11000);
  return (*(STACK[0x548] + 8 * ((2240 * (a5 == 255)) ^ a1)))();
}

uint64_t sub_C08E4@<X0>(int a1@<W0>, int a2@<W1>, unsigned __int8 a3@<W3>, unsigned __int8 a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v15 = *(v13 + 4 * a5);
  v16 = *(v11 + v14 + (((a2 ^ a1) - 2182) & v9) * a7 - (((((v14 + (((a2 ^ a1) - 2182) & v9) * a7) >> 3) * v7) >> 32) >> 4) * v8);
  v17 = v16 & 0xA5 ^ 0x91;
  v18 = (((2 * (v16 & 3)) ^ 0x26) & 2 | v17) ^ ((2 * (v16 & 3)) ^ 0x26) & v16;
  v19 = v15 ^ v16 ^ (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v17 & 0xFD | (2 * (v18 & 1))) ^ v16 & (2 * v18))) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 0xC7;
  if (((((1 << (((a2 ^ a1) + 122) & v9)) - ((2 * (1 << (((a2 ^ a1) + 122) & v9))) & 0x2C) - 106) ^ 0xCC) & a3 ^ a4) == 8)
  {
    v19 = v15 ^ 0x62;
  }

  *(v13 + 4 * a6) = v19 ^ (v12 - 148);
  return (*(v10 + 8 * ((102 * ((((((a2 ^ a1) + 122) & v9) + 1) & 0xF8) == 0)) ^ a2)))();
}

uint64_t sub_C0A90@<X0>(int a1@<W8>)
{
  v8 = (v5 + v3);
  v9 = v8[1];
  *(v4 - 1) = *v8;
  *v4 = v9;
  return (*(v7 + 8 * (((((v1 + 55) ^ (v2 == 0)) & 1) * v6) ^ (a1 - 1221))))();
}

uint64_t sub_C0AD4()
{
  v8 = (v1 ^ 0x205F77) + 1150 * v0;
  *(*v5 + 4 * (v8 - ((((v8 * v2) >> 32) + ((v8 - ((v8 * v2) >> 32)) >> 1)) >> 11) * v3)) = *(v4 + 4 * (((9002 * v0 % 0x34AFu) ^ 0x3E7FBEFFE6FEDAFDLL) + ((2 * (9002 * v0 % 0x34AFu)) & 0x35FA)) + 0x60104006404940CLL) ^ v6;
  return (*(v7 + 8 * ((3337 * (v0 == 255)) ^ v1)))(v1 ^ 0x30E, 0);
}

uint64_t sub_C0B94@<X0>(uint64_t a1@<X8>)
{
  v5 = 1883321437 * ((v3 - 1452522105 - 2 * ((v3 - 208) & 0xA96C4657)) ^ 0x4ED3E2EB);
  *(v2 + 16) = v5 ^ 0xF7796998;
  *v2 = (v1 + 1455) ^ v5;
  *(v2 + 8) = a1 + 456;
  v6 = (*(v4 + 8 * (v1 ^ 0xB95)))(v3 - 208);
  return (*(STACK[0x948] + 8 * ((1288 * (*(v2 + 4) == ((3 * (v1 ^ 0x159) + 65020989) ^ v1 ^ 0x2C))) ^ v1)))(v6);
}

void sub_C0C68(uint64_t a1)
{
  v1 = *(a1 + 12) + 434465113 * ((a1 & 0x4EC2445B | ~(a1 | 0x4EC2445B)) ^ 0x449F91FB);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_C0D34@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v53 = *(a1 + 72);
  v54 = *(a1 + 80);
  v55 = *(a1 + 48);
  v56 = (*(a1 + 56) ^ 0xBFF99EEF) + 1743781343 + ((*(a1 + 56) << (((v49 + 25) & 0xDD) - 91)) & 0x7FF33DDE);
  v57 = 434465113 * ((v51 - 208) ^ 0xF5A22A5F);
  *(v50 + 48) = v53;
  *(v50 + 40) = v56 ^ v57;
  *(v50 + 44) = (v49 + 672) ^ v57;
  *v50 = v57 + (v54 ^ 0x371DFBF9) + ((2 * v54) & 0x6E3BF7F2) - 621060161;
  *(v50 + 8) = a48;
  *(v50 + 16) = v55;
  *(v50 + 32) = a49;
  v58 = (*(v52 + 8 * (v49 ^ 0xFB5)))(v51 - 208);
  return (*(STACK[0x948] + 8 * ((227 * (*(v50 + 24) != 65021204)) ^ v49)))(v58);
}

uint64_t sub_C0EC0(uint64_t a1)
{
  v6 = (v3 + 4 * v1);
  v7 = v6[1];
  v8 = (a1 + 4 * v1);
  *v8 = *v6;
  v8[1] = v7;
  return (*(v5 + 8 * (((v1 + 8 == v4) | ((v1 + 8 == v4) << 9)) ^ v2)))();
}

uint64_t sub_C0F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v24 - 116) = v21 - 434465113 * ((v19 - (v23 | v19) + (v23 | 0xCDD945F7)) ^ 0x387B6FA8) + 323;
  *(v24 - 128) = &a19;
  v25 = (*(v22 + 8 * (v21 ^ 0xB2B)))(v24 - 128);
  *(a15 + 20 * v20 + 96) = *(v24 - 120);
  return (*(v22 + 8 * (v21 + 56)))(v25);
}

void sub_C1004(uint64_t a1)
{
  v1 = 1600728529 * ((a1 & 0xA84AA594 | ~(a1 | 0xA84AA594)) ^ 0xD280902A);
  v2 = *(a1 + 8) ^ v1;
  v3 = *a1 - v1;
  v4 = *(*(a1 + 24) + 16);
  **(a1 + 16) = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_C10C4(uint64_t a1, uint64_t a2)
{
  v6 = (*(v5 + 8 * (v3 ^ 0xBFE)))(v2 + 3104, a2, 32);
  v7 = STACK[0x948];
  *v4 = 1;
  LODWORD(STACK[0xF48]) = 65021204;
  return (*(v7 + 8 * v3))(v6);
}

uint64_t sub_C111C(int a1, int a2, int a3, unsigned __int8 a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  v18 = STACK[0x810];
  v19 = (LODWORD(STACK[0x810]) - 257) % 0x101u;
  v20 = (LODWORD(STACK[0x850]) + 808370017) & 0xCFD13F7F;
  LODWORD(STACK[0x660]) = v20;
  v21 = (v15 - (v15 ^ v16)) ^ v16 ^ (v20 - v16 - 1851);
  v22 = ((v21 & 0xB0DA1747) + v15 + (v21 & 0x4F25E8B8)) ^ v15;
  if (v18 <= 0x100)
  {
    v23 = v18;
  }

  else
  {
    v23 = v19;
  }

  LODWORD(STACK[0x928]) = v23;
  v24 = STACK[0x6D0];
  v25 = ((v18 & STACK[0x8F8]) >> v9) + ((v18 & v14) << v24);
  v26 = v17;
  STACK[0x718] = v13;
  v27 = v13;
  LODWORD(STACK[0x760]) = v13;
  v28 = STACK[0x940];
  v29 = STACK[0x890];
  v30 = LODWORD(STACK[0x890]);
  v31 = (((v25 ^ v28) & (v13 << v17)) >> v17) ^ (((v25 ^ v28) & (v30 >> v9)) << v9);
  v32 = v31 ^ (2 * (v22 & v31));
  if (v25 == LODWORD(STACK[0x940]))
  {
    v33 = v32;
  }

  else
  {
    v33 = ~(v22 ^ v32);
  }

  v34 = v22 & (2 * (v33 & v22));
  v35 = v34 % 0x101;
  STACK[0x7A8] = v14;
  v36 = STACK[0x910];
  v37 = *(STACK[0x910] + 4 * (v35 * v11 + 278382 - 2120 * ((2025928 * (v35 * v11 + 278382)) >> 32)));
  v38 = (((v37 ^ 0x27BB525D) - 666587741) ^ ((v37 ^ 0xB2D0F7BB) + 1294927941) ^ ((v37 ^ 0x4459C45C) - 1146733660)) + 1444679079;
  v39 = (v32 + (*(STACK[0x910] + 4 * (v35 * v11 + 555685 - 2120 * ((2025928 * (v35 * v11 + 555685)) >> 32))) ^ (v35 - 785227334 - ((2 * v35) & 0x374)) ^ 0x630158D0) + (v38 ^ 0xFCFDF0DB ^ (4 * v38 * v38)) + 1) ^ (2 * v34);
  v40 = STACK[0x868];
  v41 = LODWORD(STACK[0x640]) ^ a3 ^ __ROR4__(*(STACK[0x868] + ((a8 >> 22) & 0x3FC)), 8) ^ *(STACK[0x868] + 4 * a4) ^ __ROR4__(*(STACK[0x868] + 4 * BYTE2(a6)), 16);
  v42 = STACK[0x840];
  v43 = __ROR4__(*(STACK[0x868] + 4 * BYTE1(STACK[0x840])), 24);
  v44 = v41 ^ v43 ^ (2 * (v22 & (v41 ^ v43)));
  v45 = v12;
  v46 = STACK[0x7A0];
  v47 = ((v44 & v29) >> v12) ^ ((v44 & v27) << v26) ^ LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x7A0]);
  v48 = 2 * v22;
  LODWORD(STACK[0x7F0]) = (2 * v22) & v22;
  v49 = (2 * v22) & v22 & (4 * (v39 & v22));
  HIDWORD(v50) = STACK[0x748];
  LODWORD(v50) = HIDWORD(v50);
  v51 = v49 ^ __ROR4__((v50 >> 1) ^ (v49 >> 1) ^ 0xEE21AD94, 31) ^ 0xDC435B29;
  v52 = __ROR4__(__ROR4__(v47, 18) ^ 0x1DE62CEA, 14) ^ 0xB3A87798;
  STACK[0x818] = v51;
  STACK[0x598] = v8;
  v53 = v8 << v26;
  v54 = v52 & (v8 << v26);
  STACK[0x810] = v26;
  v55 = (((v30 >> v51) & v52) << v51) | (v54 >> v26);
  v56 = v55 ^ (2 * (v55 & v22));
  v57 = v46 ^ 0x54545454;
  v58 = v46 ^ 0x54545454 ^ v10;
  v59 = STACK[0x7D8];
  v60 = STACK[0x880];
  v61 = (2 * v22) & (4 * (v56 & v22));
  v62 = v56 & 0x200;
  if ((v61 & v56 & 0x200) != 0)
  {
    v62 = -v62;
  }

  if (v59)
  {
    v63 = (v58 << STACK[0x880]) ^ (v58 >> STACK[0x7D8]);
  }

  else
  {
    v63 = v58;
  }

  LODWORD(STACK[0x7B0]) = v63;
  v64 = LODWORD(STACK[0x8F0]) == a2;
  v66 = LODWORD(STACK[0x768]) - (STACK[0x6F8] ^ 0x9D132D2D ^ ((1451269590 * (((a1 ^ 0xF1A36C36) + 240948170) ^ ((a1 ^ 0x9CACD5B7) + 1666394697) ^ ((a1 ^ 0x3C3DD83B) + 1136797637)) + 520930172) | 0xA74E6B4E));
  v67 = (1079 * LODWORD(STACK[0x928]) + 1668134) % 0x848u;
  LODWORD(STACK[0x4D0]) = v48;
  v68 = v39 ^ v28 ^ v48 & (4 * v49) ^ -(v39 ^ v28 ^ v48 & (4 * v49)) ^ (1414812756 - (v39 ^ v28 ^ v48 & (4 * v49) ^ 0x54545454));
  v69 = (v62 + v61) ^ v56 & 0xFFFFFDFF;
  STACK[0x6F8] = v53;
  v70 = 576042269 * (v52 & ~((~(2 * v54) + v54) | v53)) + 1414812756 + (v68 & 0x18A0E734) + (v68 & 0xE75F18CB);
  if (v64)
  {
    v71 = STACK[0x800];
  }

  else
  {
    v71 = STACK[0x848];
  }

  v72 = *(v36 + 4 * v67);
  v73 = ((725634795 * (((v72 ^ 0xAAE50E3F) + 1427829185) ^ ((v72 ^ 0x87A76885) + 2019071867) ^ ((v72 ^ 0xFC700700) + 59767040)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v72 ^ 0x61DD385E) + 505595810) ^ ((v72 ^ 0x5628C852) + 701970350) ^ ((v72 ^ 0x66C791B6) + 423128650)) + 520930172) | 0xA74E6B4E)) + v66;
  v74 = v70 - v69 + (v69 & (v22 ^ __ROR4__(__ROR4__(v22, 6) ^ 0xC742EDA6, 26) ^ 0x2F44964E));
  v75 = a3 ^ 0xC7C228B6 ^ v71 ^ *(v40 + 4 * v42) ^ LODWORD(STACK[0x930]) ^ __ROR4__(*(v40 + ((STACK[0x6A8] >> 22) & 0x3FC)), 8);
  v76 = ((2 * (STACK[0x338] + 810502825)) & 0x9F616AAE) + ((STACK[0x338] + 810502825) ^ 0xCFB0B557);
  v77 = 2 * (v73 & v75);
  v78 = (((v77 ^ v75) & STACK[0x8F8]) >> v51) ^ (((v77 ^ v75) & STACK[0x7A8]) << v24) ^ v28;
  v79 = v78 & (STACK[0x718] << v24);
  v80 = v78 & STACK[0x870];
  STACK[0x588] = v24;
  STACK[0x830] = v45;
  LODWORD(v80) = ((v79 >> v24) ^ (v80 << v45)) + 2 * ((v79 >> v24) & (v80 << v45));
  LODWORD(v80) = v80 ^ (2 * (((((v80 ^ (2 * (v80 & v73))) & v73) << ((v80 ^ (2 * (v80 & v73))) & v73 & 1) << !((v80 ^ (2 * (v80 & v73))) & v73 & 1)) ^ v80) & v73));
  LODWORD(STACK[0x650]) = v73;
  LODWORD(STACK[0x8F0]) = 2 * v73;
  v81 = v28 ^ 0x54545454 ^ v80 ^ (16 * (v80 & v73)) & (4 * ((2 * v73) & v73)) & (2 * v73);
  v82 = STACK[0x708];
  if (!v64)
  {
    LODWORD(v81) = (v81 >> STACK[0x708]) + (v81 << v60);
  }

  LODWORD(STACK[0x780]) = v22;
  v83 = v22 & (2 * (v69 & v22));
  LODWORD(STACK[0x4C0]) = v83;
  v84 = v57 ^ (((8 * v83) & (2 * LODWORD(STACK[0x7F0])) ^ -((8 * v83) & (2 * LODWORD(STACK[0x7F0]))) ^ ((v69 ^ LODWORD(STACK[0x8E8])) - ((8 * v83) & (2 * LODWORD(STACK[0x7F0])) ^ v69 ^ LODWORD(STACK[0x8E8])))) + (v69 ^ LODWORD(STACK[0x8E8])));
  v85 = v74 >> v82;
  v86 = v74 << v60;
  if (v77)
  {
    v87 = v74 >> v82;
  }

  else
  {
    v87 = 0;
  }

  v88 = v87 ^ v86 | v85;
  v89 = (v84 >> (v88 & (v86 | ~v85) ^ v86 ^ v59 ^ (8 * (v88 & (v86 | ~v85) ^ v86)))) ^ (v84 << v60);
  if (STACK[0x558])
  {
    LODWORD(v84) = v89;
    v90 = v88;
  }

  else
  {
    v90 = v74;
  }

  v91 = STACK[0x6A0];
  v92 = STACK[0x7B0];
  if (STACK[0x6A0])
  {
    v93 = v81;
  }

  else
  {
    v93 = STACK[0x7B0];
  }

  if (v91)
  {
    v94 = STACK[0x7B0];
  }

  else
  {
    v94 = v90;
  }

  if (v91)
  {
    v95 = v90;
  }

  else
  {
    v95 = v84;
  }

  if (v91)
  {
    v96 = v84;
  }

  else
  {
    v96 = v81;
  }

  v97 = LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x578]);
  v98 = STACK[0x5C8];
  v99 = STACK[0x798];
  v100 = STACK[0x798] ^ v97;
  v101 = (-902247839 * (v100 + v76)) ^ ((-902247839 * (v100 + v76)) >> 16);
  v102 = v101 - (v101 >> 8);
  LODWORD(STACK[0x870]) = (v102 + LODWORD(STACK[0x620]) - 2 * (v102 & STACK[0x620])) ^ v102;
  v103 = STACK[0x530];
  LODWORD(STACK[0x4A8]) = v102 + LODWORD(STACK[0x530]);
  v104 = (-155378705 * (v102 + v103)) ^ ((-155378705 * (v102 + v103)) >> 16);
  v105 = STACK[0x690];
  v106 = LODWORD(STACK[0x730]) ^ v98;
  v107 = v98;
  v108 = STACK[0x448] ^ v106;
  v109 = -231536409 * (v104 + STACK[0x690] + (v104 >> 8));
  v110 = STACK[0x5D8];
  v111 = 549208041 * ((v109 + HIWORD(v109) - ((v109 + HIWORD(v109)) >> 8)) ^ LODWORD(STACK[0x5D8]));
  v112 = v111 - HIWORD(v111);
  v113 = LODWORD(STACK[0x5B0]) - v112;
  v114 = v113 & v112;
  v115 = v113 ^ v112;
  v116 = __ROR4__(__ROR4__(v76, 26) ^ 0x8BE0AF27, 6) ^ 0x9E2F82BC;
  v117 = -902247839 * (STACK[0x448] + (v106 ^ -v106 ^ (STACK[0x448] - v108)) + v116);
  LODWORD(STACK[0x768]) = v117;
  v118 = (v117 ^ HIWORD(v117)) - ((v117 ^ HIWORD(v117)) >> 8);
  LODWORD(STACK[0x4A0]) = v118;
  v119 = v118 + v103;
  LODWORD(STACK[0x498]) = v119;
  v120 = -155378705 * v119;
  v121 = (v120 ^ HIWORD(v120)) + v105 + ((v120 ^ HIWORD(v120)) >> 8);
  v122 = (((-231536409 * v121) >> 16) ^ (-231536409 * v121)) + 2 * (((-231536409 * v121) >> 16) & (-231536409 * v121));
  v123 = v91 + 2 * STACK[0x670];
  LODWORD(STACK[0x520]) = v123;
  v124 = (v123 & 2) == 0;
  v125 = v121 ^ LODWORD(STACK[0x2E0]);
  LODWORD(STACK[0x6C0]) = v93;
  LODWORD(STACK[0x65C]) = v95;
  if ((v123 & 2) != 0)
  {
    v126 = v95;
  }

  else
  {
    v126 = v93;
  }

  LODWORD(STACK[0x3E8]) = v126;
  LODWORD(STACK[0x620]) = v94;
  LODWORD(STACK[0x5B0]) = v96;
  if (v124)
  {
    v127 = v96;
  }

  else
  {
    v127 = v94;
  }

  STACK[0x5F0] = v127;
  v128 = ((v120 ^ BYTE2(v120)) + v105 + ((v120 ^ HIWORD(v120)) >> 8)) & 1;
  if ((((v120 ^ BYTE2(v120)) + v105 + ((v120 ^ HIWORD(v120)) >> 8)) & 1 & v125) != 0)
  {
    v128 = -v128;
  }

  v129 = (v125 ^ -v125 ^ (v121 - ((v128 + v125) ^ v121 & 0xFFFFFFFE))) + v121;
  v130 = v115 - 2 * v122 + 2 * (v122 + v114);
  v131 = (v99 ^ -v99 ^ (v100 - v97)) + v100;
  v132 = -902247839 * (v100 + v116);
  LODWORD(STACK[0x4C8]) = v132;
  v133 = (v132 ^ HIWORD(v132)) - ((v132 ^ HIWORD(v132)) >> 8);
  LODWORD(STACK[0x4F8]) = v133;
  v134 = (-155378705 * (v133 + v103)) ^ ((-155378705 * (v133 + v103)) >> 16);
  v135 = v134 + (v134 >> 8);
  v136 = (v135 ^ LODWORD(STACK[0x6F0])) - v135 + 2 * (v135 & STACK[0x6F0]);
  v137 = -231536409 * (v135 + v105) + ((-231536409 * (v135 + v105)) >> 16);
  v138 = (((v137 >> 8) ^ v137) - 2 * (v137 >> 8) + 2 * ((v137 >> 8) & v137)) ^ v110;
  v139 = 549208041 * v138;
  v140 = ((-1543503872 * v138) | ((549208041 * v138) >> 6)) ^ __ROR4__(v131, 6);
  v141 = v139 - HIWORD(v139);
  v142 = v141 ^ v136;
  v143 = v142 & 0x4000;
  if ((v142 & 0x4000 & v141) != 0)
  {
    v143 = -v143;
  }

  LODWORD(STACK[0x928]) = STACK[0x7E0] ^ v107;
  v144 = v107;
  STACK[0x7E0] = (v143 + v141) ^ v142 & 0xFFFFBFFF;
  v145 = (-902247839 * (v108 + v116)) ^ ((-902247839 * (v108 + v116)) >> 16);
  v146 = v145 - (v145 >> 8);
  v147 = (-155378705 * (v146 + v103)) ^ ((-155378705 * (v146 + v103)) >> 16);
  v148 = -231536409 * (v147 + v105 + (v147 >> 8)) + ((-231536409 * (v147 + v105 + (v147 >> 8))) >> 16);
  v149 = v139 ^ __ROR4__(__ROR4__(__ROR4__(v140, 14) ^ 0x279B5F7D, 18) ^ 0x23B313AC, 26) ^ 0x1B1692BD;
  v150 = 549208041 * ((v148 - (v148 >> 8)) ^ v110);
  v151 = v150 - HIWORD(v150) - ((v150 - HIWORD(v150)) >> 8);
  STACK[0x840] = v151;
  v152 = (v151 ^ v149) - v151 + 2 * (v151 & v149);
  v153 = LODWORD(STACK[0x758]) - v150;
  LODWORD(STACK[0x848]) = v153 & v150;
  LODWORD(STACK[0x800]) = v153 ^ v150;
  LODWORD(STACK[0x758]) = v152;
  v154 = (v152 ^ v99) + v116;
  v155 = -902247839 * v154;
  v156 = ((-902247839 * v154 + v99) ^ v155) + 1804495678 * v154 + 2 * ((-902247839 * v154 + v99) & v155);
  v157 = (v155 ^ HIWORD(v155)) - ((v155 ^ HIWORD(v155)) >> 8);
  v158 = v146 + v103 + v146 - 2 * v146 + v157;
  v159 = ((-155378705 * v158) ^ ((-155378705 * v158) >> 16)) + (((-155378705 * v158) ^ ((-155378705 * v158) >> 16)) >> 8);
  v160 = ((v156 - v159) ^ v159) + 2 * ((v156 - v159) & v159);
  v161 = -231536409 * (v159 + v105) + ((-231536409 * (v159 + v105)) >> 16);
  v162 = (((v161 - (v161 >> 8)) & 0xC0420C | 0xDF3FB931) - (((v161 - (v161 >> 8)) & 0xC0420C | 0xDF3FB931) ^ (v161 - (v161 >> 8)) & 0x5F3D9921)) & ~(v161 - (v161 >> 8)) ^ v129;
  LODWORD(STACK[0x7B0]) = (v162 ^ 0xD71EF6C5) + 685836603 + ((2 * v162) & 0xAE3DED8A);
  v163 = ((v158 + v157 - 2 * v157) ^ v146) + 2 * ((v158 + v157 - 2 * v157) & v146);
  v164 = v163 - v146;
  v165 = -231536409 * (((-155378705 * v163) ^ ((-155378705 * v163) >> 16)) + v105 + (((-155378705 * v163) ^ ((-155378705 * v163) >> 16)) >> 8));
  v166 = v165 + HIWORD(v165) - ((v165 + HIWORD(v165)) >> 8);
  LODWORD(v151) = v122 - (v122 >> 8);
  LODWORD(STACK[0x930]) = v151;
  LODWORD(v151) = v151 ^ v110;
  LODWORD(STACK[0x490]) = v151;
  v167 = 549208041 * v151 - ((549208041 * v151) >> 16);
  v168 = v167 - (v167 >> 8);
  LODWORD(STACK[0x7F0]) = 8 * v168;
  LODWORD(v151) = (8 * v168) & 0x18;
  LODWORD(STACK[0x320]) = v151;
  v169 = *(STACK[0x910] + 4 * (1079 * v151 + 1668134 - 2120 * ((2025928 * (1079 * v151 + 1668134)) >> 32)));
  v170 = *(STACK[0x910] + 4 * (1079 * v151 + 278382 - 2120 * ((2025928 * (1079 * v151 + 278382)) >> 32)));
  v171 = (((v170 ^ 0x5D61C9D5) - 1566689749) ^ ((v170 ^ 0x2ECABCB9) - 785038521) ^ ((v170 ^ 0xA29914D6) + 1567025962)) + 1444679079;
  v172 = v168 ^ 0x61EEDDF6 ^ v171 ^ (725634795 * (((v169 ^ 0xA6B81BD0) + 1497883696) ^ ((v169 ^ 0xA3C0D2E9) + 1547644183) ^ ((v169 ^ 0xD44AA883) + 733304701)) + 260465086) ^ ((1451269590 * (((v169 ^ 0x7C2A20BA) + 64347974) ^ ((v169 ^ 0xCEF52347) + 822795449) ^ ((v169 ^ 0x63ED6247) + 470982073)) + 520930172) | 0xA74E6B4E);
  v173 = LODWORD(STACK[0x3D0]) ^ v144;
  v174 = v144;
  v175 = (v166 ^ -v166 ^ (v110 - (v166 ^ v110))) + v110;
  v176 = v175 ^ v166;
  v177 = v175 ^ v166 ^ (v173 - v130);
  v178 = v177 & (v173 - v130) ^ (v176 | (v173 - v130));
  v179 = 1005721561 * v177 - ((1005721561 * v177) >> 16);
  v180 = -522954125 * (((v179 ^ (((1005721561 * v177) >> 16) - 1005721561 * v177) ^ ((v179 >> 8) - ((v179 >> 8) ^ v179))) + (v179 >> 8)) ^ v116);
  v181 = v180 ^ HIWORD(v180);
  v182 = STACK[0x870];
  LODWORD(v151) = (v181 ^ LODWORD(STACK[0x870])) + LODWORD(STACK[0x870]) - 2 * (v181 ^ LODWORD(STACK[0x870]));
  v183 = v181 + (v181 >> 8);
  STACK[0x428] = v183;
  LODWORD(v184) = __ROR4__((v183 + v105) ^ 0x81AB61FC, 4) ^ 0xC81AB61F;
  HIDWORD(v184) = v184;
  v185 = (v184 >> 28) + v173 - (v183 + v105);
  v186 = 277169683 * (v183 + v105);
  v187 = ((-2059005184 * (v183 + v105)) | HIBYTE(v186)) ^ __ROR4__(v160, 24);
  LODWORD(STACK[0x530]) = v185;
  LODWORD(STACK[0x880]) = v130;
  LODWORD(STACK[0x488]) = v185 - v130;
  v188 = 1005721561 * ((v185 - v130) ^ v178) - ((1005721561 * ((v185 - v130) ^ v178)) >> 16);
  v189 = v188 ^ (v188 >> 8);
  v190 = STACK[0x768];
  v191 = STACK[0x858] - LODWORD(STACK[0x768]);
  v192 = (v116 ^ -v116 ^ (v189 - (v189 ^ v116))) + v189;
  LODWORD(v183) = (-522954125 * v192 - ((-522954125 * v192) ^ 0x656E97CB)) ^ 0xFFFFFFFE;
  v193 = v120 & STACK[0x630];
  v194 = (v120 ^ LODWORD(STACK[0x630])) - v120;
  LODWORD(STACK[0x640]) = ((v181 ^ -v181 ^ v151) + v182) ^ v181;
  v195 = v145 ^ STACK[0x860];
  v196 = v195 & v145;
  v197 = v195 + v145;
  LODWORD(STACK[0x518]) = v192 ^ STACK[0x5E8] ^ (-1917527365 * (((v183 ^ (-522954125 * v192)) + ((-522954125 * v192) & 0x656E97CB) + 2 * (v183 & (-522954125 * v192))) & (-522954125 * v192)));
  v198 = ((-522954125 * v192) ^ ((-522954125 * v192) >> 16)) + v105 + (((-522954125 * v192) ^ ((-522954125 * v192) >> 16)) >> 8);
  LODWORD(v184) = __ROR4__(v187 ^ 0x2C7EF5FF, 8);
  v199 = 277169683 * v198 - ((277169683 * v198) >> 16);
  v200 = v199 ^ (v199 >> 8);
  STACK[0x560] = v200;
  v201 = 76745137 * (v200 - v164) - ((76745137 * (v200 - v164)) >> 16);
  LODWORD(v183) = (v186 ^ v184 ^ 0xFF2C7EF5) - v201;
  v202 = v183 & v201;
  LODWORD(v183) = v183 ^ v201;
  v203 = (v191 ^ v190) + 2 * (v191 & v190) - v167;
  STACK[0x558] = (v203 ^ v167) + 2 * (v203 & v167);
  STACK[0x338] = (LODWORD(STACK[0x800]) + 2 * LODWORD(STACK[0x848]));
  v204 = v172 ^ (4 * v171 * v171);
  LODWORD(STACK[0x710]) = v194 + 2 * v193;
  v205 = (STACK[0x770] ^ v174) - LODWORD(STACK[0x7D0]);
  STACK[0x420] = v205;
  v206 = (1005721561 * (v178 ^ v205) - ((1005721561 * (v178 ^ v205)) >> 16)) ^ ((1005721561 * (v178 ^ v205) - ((1005721561 * (v178 ^ v205)) >> 16)) >> 8);
  v207 = (-522954125 * (v206 ^ v116)) ^ ((-522954125 * (v206 ^ v116)) >> 16);
  v208 = 277169683 * (v207 + v105 + (v207 >> 8));
  v209 = v197 - 2 * v196 - v208;
  v210 = v209 & v208;
  v211 = v209 ^ v208;
  v212 = ((v208 - HIWORD(v208)) ^ ((v208 - HIWORD(v208)) >> 8)) - v164;
  v213 = LODWORD(STACK[0x928]) - 2 * v177 - 153490274 * v212;
  v212 *= 76745137;
  LODWORD(STACK[0x668]) = v213 + 2 * (v212 + v177);
  LODWORD(STACK[0x438]) = v183 + 2 * v202;
  STACK[0x858] = v192;
  LODWORD(STACK[0x468]) = v192 ^ v189;
  LODWORD(v183) = v192 ^ v189 ^ v206;
  LODWORD(STACK[0x4F0]) = (v183 ^ LODWORD(STACK[0x788])) - v183 + 2 * (v183 & LODWORD(STACK[0x788]));
  v214 = -522954125 * v183;
  v215 = v214 ^ HIWORD(v214);
  STACK[0x928] = v211 - 2 * v215 + 2 * (v215 + v210);
  LODWORD(v205) = v215 + v105 + (v215 >> 8);
  LODWORD(STACK[0x800]) = v205;
  LODWORD(v192) = 277169683 * v205;
  LODWORD(v183) = (277169683 * v205) >> 16;
  v64 = v183 == (((277169683 * v205) >> 16) + 959);
  STACK[0x870] = v198 + STACK[0x6B8] + ((v198 | 0x185DD133) ^ v198) - (v198 | 0x185DD133);
  v216 = 549208041 * v175 - ((549208041 * v175) >> 16) - ((549208041 * v175 - ((549208041 * v175) >> 16)) >> 8);
  LODWORD(STACK[0x708]) = v174 ^ LODWORD(STACK[0x5A8]);
  v217 = -LODWORD(STACK[0x7F0]);
  v218 = 8 * STACK[0x840];
  LODWORD(STACK[0x730]) = v218 & 0x18;
  LODWORD(STACK[0x570]) = -v218 & 0x18;
  LODWORD(v205) = STACK[0x700];
  LODWORD(STACK[0x798]) = v204;
  STACK[0x440] = v217 & 0x18;
  LODWORD(STACK[0x770]) = v216;
  LODWORD(STACK[0x6CC]) = (8 * v216) & 0x18;
  LODWORD(STACK[0x7F0]) = (-8 * v216) & 0x18;
  LODWORD(STACK[0x748]) = __ROR4__(__ROR4__(STACK[0x2F8], 25) ^ 0xA2602AF8, 7) ^ 0xF144C055;
  STACK[0x448] = (v212 - HIWORD(v212)) ^ ((v212 - HIWORD(v212)) >> 8);
  HIDWORD(v184) = STACK[0x7F8];
  LODWORD(v184) = STACK[0x7F8];
  LODWORD(STACK[0x630]) = v215;
  v219 = v215 ^ __ROR4__((v184 >> 8) ^ __ROR4__(v215, 8) ^ 0x6250D4C3, 24);
  LODWORD(STACK[0x578]) = v192;
  v220 = v192 - v183;
  v221 = v64;
  v222 = *(STACK[0x948] + 8 * (LODWORD(STACK[0x850]) ^ (4 * v221)));
  LODWORD(STACK[0x7D8]) = ~LODWORD(STACK[0x760]);
  STACK[0x848] = STACK[0x818];
  LODWORD(STACK[0x6F0]) = v199;
  STACK[0x670] = v199 | 0xBC7BA9F;
  LODWORD(STACK[0x2E0]) = STACK[0x678] - v214;
  v223 = v220 >> 8;
  STACK[0x3A8] = v223;
  LODWORD(STACK[0x788]) = v223 ^ v220;
  LODWORD(STACK[0x5A8]) = v219 ^ 0x50D4C362;
  return v222();
}

uint64_t sub_C2368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, int a23, int a24)
{
  v27 = ((&a22 - 48001898 - 2 * (&a22 & 0xFD238C96)) ^ 0x1A9C282A) * v26;
  a23 = v27 ^ 0x7E746F71;
  a24 = (v25 + 178) ^ v27;
  a22 = &a12;
  v28 = (*(v24 + 8 * (v25 ^ 0x8F1)))(&a22);
  return (*(v24 + 8 * (v25 + 105)))(v28);
}

uint64_t sub_C24BC@<X0>(uint64_t a1@<X8>)
{
  v4[83] = a1;
  v4[90] = v1;
  v4[17] = v2;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_C2520(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a7 ^ (a7 + 8);
  v10 = a4 + a7 + 871;
  v11 = v7[82];
  v7[46] = v11;
  v12 = STACK[0x978];
  v13 = &STACK[0x1190] + STACK[0x978];
  v7[67] = v13;
  v7[170] = v13 + 16;
  STACK[0x978] = v12 + 96;
  v14 = *(v11 + 344);
  STACK[0xBD0] = v14;
  v15 = *(v11 + 464);
  v16 = *(v11 + 352);
  v17 = (*(v8 + 8 * (a7 - 2038112717)))(v13 + 16, 0, 80);
  return (*(STACK[0x948] + 8 * (((v14 != 0) * (v9 + 219)) ^ v10)))(v17);
}

uint64_t sub_C26D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v8) = STACK[0x4F8];
  LODWORD(v8) = LODWORD(STACK[0x508]) << 24;
  LODWORD(STACK[0x440]) = v8 >> 31;
  v9 = *(STACK[0x548] + 8 * (STACK[0x510] - 1493));
  v10 = STACK[0x530];
  LODWORD(STACK[0x52C]) = a7;
  return v9(97, a2, a3, a4, a5, a6, v7, 710790);
}

uint64_t sub_C2738@<X0>(unsigned __int8 a1@<W1>, int a2@<W4>, char a3@<W6>, unsigned int *a4@<X8>)
{
  v16 = a1;
  v17 = 1 << a1;
  v18 = 1645 * v16 + 3822980 - 2696 * (((12744711 * (1645 * v16 + 3822980)) >> 32) >> 3);
  v19 = *a4;
  v20 = *(*v4 + (v19 & STACK[0x540])) + v8;
  v21 = *v10 ^ 0xF1E76555;
  v22 = *((qword_191540 ^ v11) + ((v5 + 1527793425 + v20 - 2055) & v21));
  v23 = *((qword_191540 ^ v11) + ((v20 + 1527793161) & v21));
  LODWORD(v19) = *(*v4 + (v19 & a2));
  v24 = (v18 ^ 0x2BF3EAF3F7F7BFEELL) + v9 + ((2 * v18) & 0x1FDC);
  v25 = v23 ^ a3 ^ v22 ^ v15;
  v26 = v25 ^ *(v24 - 0x36D417964FAE695ALL) ^ (110 * (v24 + 18)) ^ *((qword_191540 ^ v11) + ((v24 + 134758418 + v19 + a2) & v21)) ^ *((qword_191540 ^ v11) + ((v24 + 134758418 + v19 + a2 + 2) & v21)) ^ 0x25;
  v27 = ((v16 + 1) & 0xF8) != 0;
  if (((v7 ^ v14 ^ *((qword_191540 ^ v11) + ((v19 + v6 + a2) & v21)) ^ *((qword_191540 ^ v11) + ((v19 + v6 + a2 + 2) & v21)) ^ 0x46) & v17) == 0)
  {
    v26 = v25 ^ 0x63;
  }

  *(v8 + v12) = v13 ^ v23 ^ v22 ^ v26 ^ 0x49;
  return (*(STACK[0x548] + 8 * ((506 * v27) ^ v5)))();
}

uint64_t sub_C2960@<X0>(int a1@<W8>)
{
  v7 = v4 < v3;
  *(&STACK[0x1890] + (v2 & 0xF)) ^= ((-68 * *(v5 + v2)) | 1) * *(v5 + v2);
  v8 = v2 + 1;
  if (v7 == v8 > (v1 ^ 0xBFA93302))
  {
    v7 = v8 + v3 < v4;
  }

  return (*(v6 + 8 * ((97 * v7) ^ a1)))();
}

uint64_t sub_C2A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = 14 * (a6 ^ 0x1D2);
  v8 = LODWORD(STACK[0x6B0]) + 1;
  v9 = 9002 * LODWORD(STACK[0x6B0]) + 46180260 + ((2 * a6) ^ 0xEE);
  LODWORD(STACK[0x6AC]) = v7;
  v10 = v9 + v7 - 1002;
  LOBYTE(v7) = v6 & 0xA5 ^ 0x91;
  v11 = (((2 * (v6 & 3)) ^ 0x26) & 2 | v7) ^ ((2 * (v6 & 3)) ^ 0x26) & v6;
  *(STACK[0x6B8] + 4 * (((v10 % 0x34AF) ^ 0x3BEFF77DD79FEDFELL) + ((2 * (v10 % 0x34AF)) & 0x5BFC)) + 0x10402208A1804808) = (v6 ^ (2 * ((v6 ^ 2) & (2 * ((v6 ^ 2) & (2 * ((v6 ^ 2) & (2 * ((v6 ^ 2) & (2 * ((v7 & 0xFD | (2 * (v11 & 1))) ^ v6 & (2 * v11))) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0x3444FF53;
  return (*(STACK[0x6C8] + 8 * (a6 ^ (973 * (v8 == 256)))))();
}

uint64_t sub_C2B3C@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 24) / 1000;
  *(v3 + 4) = v5;
  *(v3 + 8) = a1;
  STACK[0x878] = v5;
  *(v3 + 12) = (*(v1 + 8 * (v4 ^ v2)))();
  v6 = (*(STACK[0x948] + 8 * (v4 - 2038112721)))();
  v7 = STACK[0x948];
  *v3 = v6;
  v8 = STACK[0x938];
  return (*(v7 + 8 * (v4 - 2038113818)))();
}

uint64_t sub_C2BC4(uint64_t a1, int a2)
{
  v7 = (*(STACK[0x6C0] + (3013 * a2 + 4661111) % 0x1188u) - 125) + 12428;
  v8 = ((v7 << ((v2 - 87) ^ 0x93)) & 0x232A) + (v7 ^ 0x1195);
  v9 = (v8 + v7) * (v8 - v7) - 20259001 - (((((v8 + v7) * (v8 - v7) - 20259001) * v3) >> 32) >> 12) * v4;
  LODWORD(v9) = *(v5 + 4 * ((v9 ^ 0x3FF3CE57FFFFF375) + ((2 * v9) & 0x66EA)) + 0x30C6A00000322CLL);
  v10 = 3013 * (((BYTE3(v9) ^ 0x86B3EB9E) + 216019019) ^ ((BYTE3(v9) ^ 0xF7A94050) + 2113575813) ^ ((BYTE3(v9) ^ 0x711AABFA) - 79073233)) - 207674167;
  v11 = *(STACK[0x6C0] + (3013 * (((v9 ^ 0x67062C28) + 852099008) ^ ((v9 ^ 0xD6FE1C62) - 2093887498) ^ ((v9 ^ 0xB1F830BC) - 466099412)) + 160899972) % 0x1188);
  v12 = *(STACK[0x6C0] + (3013 * (((BYTE1(v9) ^ 0x1BB7C0FF) - 1711328027) ^ ((BYTE1(v9) ^ 0xA08555CA) + 583901650) ^ ((BYTE1(v9) ^ 0xBB3295CA) + 964321746)) - 1678788427) % 0x1188) - 125;
  v13 = (*(STACK[0x6C0] + (3013 * (((BYTE2(v9) ^ 0xF56F6BDA) + 1239719388) ^ ((BYTE2(v9) ^ 0x4059F943) - 53342397) ^ ((BYTE2(v9) ^ 0xB53692DD) + 163407069)) - 447714168) % 0x1188) - 125) << 8;
  v14 = v6 + 9002 * a2 - ((((v6 + 9002 * a2) * v3) >> 32) >> 12) * v4;
  v15 = v11 & 0x7F ^ 0x7E;
  v16 = v11 ^ 2;
  v17 = v11 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * ((v11 ^ 2) & (2 * v11) & 6 ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  *(v5 + 4 * ((v14 ^ 0x3CF7DEDEFDDFF7FFLL) + ((2 * v14) & 0x6FFE)) + 0xC20848408802004) = ((*&v17 | 0xFFFFFF00) & ((((v13 & 0xFFFFFF00 | (*(STACK[0x6C0] + v10 % 0x1188) << 16) | v12) << 8) - 2097152000) ^ 0x5EC71C21) | v17 & 0xDE) ^ 0x6A83E389;
  return (*(STACK[0x6C8] + 8 * ((2185 * (a2 == 255)) ^ v2)))();
}

uint64_t sub_C2F9C@<X0>(int a1@<W3>, int a2@<W6>, uint64_t a3@<X8>)
{
  v6 = *(a3 + 104);
  *(v4 + 952) = a3 + 104;
  return (*(v5 + 8 * (((v6 == 0) * ((a1 + ((v3 | 0x80) ^ (a2 - 2161)) + 54) ^ 0xC)) ^ (v3 | 0x80))))();
}

uint64_t sub_C2FDC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 ^ 0x286;
  v5 = ((v1 ^ 0x286) + 411276543) ^ 0x61F8B43Bu;
  v6 = STACK[0x978];
  v7 = &STACK[0x1190] + STACK[0x978];
  v2[15] = v7;
  v2[5] = v7 + 16;
  v2[78] = v7 + 152;
  STACK[0x978] = ((v5 - 2038115127) ^ (v4 + 411276543) & 0xE77C6F6F) + v6;
  v2[101] = 0;
  v2[72] = 0;
  v2[89] = 0;
  return (*(v3 + 8 * ((1138 * (*(a1 + 12) == 6)) ^ v4)))();
}

uint64_t sub_C30A0()
{
  (*(v3 + 8 * (v1 + 2668)))();
  v4 = *(v2 + 656);
  *(v4 + 344) = 0;
  *(v4 + 352) = v0;
  v5 = (*(STACK[0x948] + 8 * (v1 + 2597)))(v0);
  v6 = STACK[0x948];
  *(*(v2 + 656) + 344) = v5;
  return (*(v6 + 8 * (((v5 == 0) * ((((v1 + 212) ^ 0x134) + 318) ^ (v1 + 456))) ^ (v1 + 212))))();
}

uint64_t sub_C3130(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = (1645 * a4 + 2113825) % (19 * (v8 ^ 0x167u) + 739);
  v11 = STACK[0x520];
  v12 = (v10 ^ 0x7DF9D7FD7BDEBEF5) + STACK[0x520] + ((2 * v10) & 0x1DEA);
  v13 = *v7;
  v14 = *STACK[0x538];
  v15 = *(v14 + (v13 & v9));
  v16 = *a7 ^ 0xF1E76555;
  v17 = qword_191540 ^ 0xDDC772C6444EEA48;
  v18 = v9 + 2;
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 - 2078195445 + v15 + v9) & v16)) ^ *(v12 + 0x7725FB602C6A979FLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 - 2078195445 + v15 + v9 + 2) & v16)) ^ (110 * (v12 + 11));
  v20 = STACK[0x518] + 4 * ((551 * (((v12 ^ 0xF10E5D14) - 1311526759) ^ ((v12 ^ 0x4A74BF17) + 178868892) ^ ((v12 ^ 0xBB7AE245) - 72937526)) + 1653012506) % 0x1D48);
  v21 = *(v14 + (v13 & STACK[0x540]));
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + v21 + a3) & v16)) ^ *(v20 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + v21 + 1527793161) & v16));
  v22 = 1645 * (((v12 ^ (16198957 * v20)) >> 16) ^ 0xE7) + 3391990;
  v23 = ((v12 ^ (11565 * v20)) >> 8) ^ 0x6B;
  v24 = v22 - 2696 * (((12744711 * v22) >> 32) >> 3);
  v25 = (v12 ^ (1912024365 * v20)) >> 24;
  v26 = 1645 * ((((v12 ^ (45 * v20)) ^ 0x3E1B89BA) + 794746043) ^ (((v12 ^ (45 * v20)) ^ 0xC15D690A) - 803718133) ^ (((v12 ^ (45 * v20)) ^ 0xFF46E09A) - 301746789)) + 95386791;
  v27 = (v24 ^ 0xDEF7DF5ADE7FE7AFLL) + STACK[0x520] + ((2 * v24) & 0xF5E);
  LODWORD(v14) = v27 + 562042961;
  v28 = STACK[0x530];
  v29 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 562042961 + v15 + 1186175272) & v16)) ^ *(v27 + 0x1627F402C9C96EE5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 562042961 + v15 + v9 + 2) & v16));
  v30 = 14 * (v27 + 562042961);
  v31 = 110 * v14;
  LODWORD(a7) = v26 % 0x1510 - 2696;
  if (v26 % 0x1510 >= 0xA88)
  {
    a7 = a7;
  }

  else
  {
    a7 = v26 % 0x1510;
  }

  v33 = 1645 * v23 + 3391990 - 2696 * (((12744711 * (1645 * v23 + 3391990)) >> 32) >> 3);
  v32 = (1645 * (((v25 ^ 0x78D48B77) - 578668546) ^ ((v25 ^ 0x8DFA3D21) + 682394028) ^ ((v25 ^ 0xF52EB67C) + 1350044407)) - 1848005783) % 0xA88;
  v34 = (v32 ^ 0x57F9D7FEFB7FBFDELL) + v11 + ((2 * v32) & 0x1FBC);
  v35 = (a7 ^ 0x7A7F7FDFEEEE5F2FLL) + v11 + ((2 * a7) & 0x1DDDCBE5ELL);
  v36 = v35 + 286367953;
  HIDWORD(v37) = v29 ^ v30 ^ 6;
  LODWORD(v37) = (v29 ^ v31 ^ 0x40) << 24;
  v38 = (v33 ^ 0xFEFBF7167EFAFEF1) + v11 + ((2 * v33) & 0x1DE2);
  v39 = v38 - 2130378481;
  v40 = *(v38 - 0x9DC23B8D6B1A85DLL);
  LODWORD(v38) = (551 * a4 + 710790) % 0x1D48u;
  v41 = (v37 >> 29) - ((2 * (v37 >> 29)) & 0xFFFFFF83) - 63;
  HIDWORD(v37) = v41 ^ 1;
  LODWORD(v37) = (v41 ^ 0xC0) << 24;
  LODWORD(v34) = ((*(v34 - 0x62DA04A15336694ALL) ^ *(v17 + ((v34 + 75513890 + v15 + 1186175272) & v16)) ^ *(v17 + ((v34 + 75513890 + v15 + v18) & v16)) ^ (110 * (v34 + 34)) ^ 0x46) << 16) | ((v37 >> 27) << 8);
  LODWORD(v34) = ((*(v17 + ((v39 + v15 + 1186175272) & v16)) ^ v40 ^ *(v17 + ((v39 + v15 + v18) & v16)) ^ (110 * v39) ^ 0x52AC90) & ~v34 | v34 & 0xAD5300) << 8;
  v19 = STACK[0x518];
  *(v19 + 4 * v38 - 0x40E8C283FA03C307) = (1912024365 * (v19 + 4 * v38)) ^ *(v17 + ((v21 + v19 + 4 * v38 + LODWORD(STACK[0x52C])) & v16)) ^ *(v17 + ((v21 + v19 + 4 * v38 + 1527793161) & v16)) ^ 0xD00BB451 ^ ((v34 ^ 0xA84009FF) & (*(v17 + ((v36 + v15 + 1186175272) & v16)) ^ *(v35 + 0x7AA0537DB95AF765) ^ *(v17 + ((v36 + v15 + v18) & v16)) ^ (110 * v36) ^ 0xE8E41F3D) | v34 & 0x171BE000);
  return (*(STACK[0x548] + 8 * (v8 ^ 0x89C ^ (77 * (((a4 + 1 - v8) | (v8 - (a4 + 1))) >> 31)))))();
}

uint64_t sub_C37B4(int a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  v18 = *(v13 + (v16 ^ 0x60)) ^ v8;
  if (((v15 << v10) & v6) != 0)
  {
    v18 = *(v14 + (v16 ^ v7)) ^ v9;
  }

  v19 = *(v11 + (v18 ^ 0x1FLL)) ^ a1;
  v20 = *(v12 + (v18 ^ a2)) ^ a4;
  return (*(v17 + 8 * (((v10 == 0) * a5) ^ v5)))();
}

uint64_t sub_C3820@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X3>, int a5@<W4>, int a6@<W8>)
{
  v8 = a4[396] ^ ((*a4 & 0x7FFFFFFE | a4[623] & 0x80000000) >> 1);
  a4[623] = (v8 + v6 - (a5 & (2 * v8))) ^ *(v7 + 4 * (*a4 & 1));
  return (*(a1 + 8 * ((1142 * (LODWORD(STACK[0x9DC]) > a2 + ((a3 + a6 - 1634730177) | 0x61700004u) + 623)) ^ a6)))();
}

uint64_t sub_C38BC()
{
  v6 = *(STACK[0x6C0] + (3013 * v0 + 4661111) % 0x1188u);
  v7 = v4 + (v3 ^ 0x2AAF) * v0 - ((((v4 + (v3 ^ 0x2AAFu) * v0) * v1) >> 32) >> 12) * v2;
  v8 = *(STACK[0x6C0] + (3013 * (v6 | ((v6 < 0x7D) << 8)) + 12067065) % 0x1188);
  *(v5 + 4 * ((v7 ^ 0xED5EF3E96F9DFEFLL) + ((2 * v7) & 0x3FDE)) - 0x3B57BCFA5BE77FBCLL) = 876937206;
  return (*(STACK[0x6C8] + 8 * (v3 - 1083)))(3241, v3 ^ 0xCA9u);
}

uint64_t sub_C3A98@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, void *a4@<X4>, int a5@<W5>, int a6@<W8>)
{
  v16 = v14;
  v17 = *STACK[0x530];
  v18 = (1 << v14) + ((a6 - 46) & 0xFD ^ 0xDE) - ((2 * (1 << v14)) & 0xB6);
  v19 = *(*v6 + (v17 & v12));
  v20 = *a4 ^ v7;
  v21 = (*(*v6 + (v17 & STACK[0x540])) + v10 + 1527793161);
  v22 = *((qword_191540 ^ v11) + ((v21 - 2) & v20));
  v23 = *((qword_191540 ^ v11) + (v21 & v20));
  v24 = v23 ^ v15 ^ v22 ^ a3;
  v25 = v8 + 1645 * v16 - 2696 * (((12744711 * (v8 + 1645 * v16)) >> 32) >> 3);
  v26 = (v25 ^ 0x3FBFFFFFDFDEFF7ELL) + STACK[0x520] + ((2 * v25) & 0x1EFC);
  v27 = v24 ^ 0xEE;
  v28 = *(v26 - 0x4AA02CA23795A8EALL) ^ (110 * (v26 - 126)) ^ v24 ^ *((qword_191540 ^ v11) + ((v26 + 539033730 + v19 + v12) & v20)) ^ *((qword_191540 ^ v11) + ((v26 + 539033730 + v19 + v12 + 2) & v20)) ^ 0xA8;
  if ((((a1 ^ v13 ^ *((qword_191540 ^ v11) + ((v19 + a5 + v12) & v20)) ^ *((qword_191540 ^ v11) + ((v19 + a5 + v12 + 2) & v20))) ^ 0x77) & (v18 ^ 0xDB) ^ v18 & 0x31) == 0x11)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  *(v10 + v9) = a2 ^ v23 ^ v22 ^ v29 ^ 0xC4;
  return (*(STACK[0x548] + 8 * ((71 * (((v16 - 255) & 0xF8) == 0)) ^ a6)))();
}

uint64_t sub_C3C7C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  STACK[0x978] -= 16;
  v61 = *(a55 - 1648919999);
  *(v61 + 56) = v56;
  *(v61 + 16) = (v58 + 2038114870) ^ **(v61 + 8) ^ (*(v55 + (a1 & 0xD7D78108)) ^ *(v55 + (a1 & 0x777903F8))) & 0x7FFFFFFFFFFFFFFFLL ^ 0x79620DA91EE8D99ELL;
  *(v61 + 32) = 0;
  *v59 = *(v61 + 24);
  *(v59 + 8) = (v58 - 626832342) ^ (1938608989 * ((2 * ((v60 - 208) & 0x582EEBD8) - (v60 - 208) - 1479470044) ^ 0xDDF14AD2));
  v62 = (*(v57 + 8 * (v58 ^ 0x8BE)))(v60 - 208);
  return (*(STACK[0x948] + 8 * v58))(v62);
}

uint64_t sub_C3DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x4B0]) = STACK[0x7F8];
  LODWORD(STACK[0x6A0]) = STACK[0x740];
  v14 = STACK[0x6A8] >> 8;
  v15 = STACK[0x660];
  v16 = LODWORD(STACK[0x660]) - 293;
  LODWORD(STACK[0x460]) = a8 + 2 * a5;
  LODWORD(STACK[0x758]) = STACK[0x858] & 0x7C2FB4D9;
  LODWORD(STACK[0x680]) = v16;
  LODWORD(STACK[0x65C]) = ((((v13 - HIWORD(v13)) >> (v16 ^ 0x1E)) ^ (v13 - HIWORD(v13))) - v12) & 0xA135BA07;
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x628]) - v11;
  STACK[0x5E8] = STACK[0x788] & 0xA39378BB;
  v17 = LODWORD(STACK[0x578]);
  LODWORD(STACK[0x548]) = v17 | 0x53106207;
  LODWORD(STACK[0x5B0]) = v10 | 0x8A69006D;
  v18 = LODWORD(STACK[0x800]);
  LODWORD(STACK[0x550]) = STACK[0x928] - v18;
  STACK[0x718] = v18 & 0x1FD46D19;
  STACK[0x770] = v9 + STACK[0x610];
  STACK[0x600] = STACK[0x840];
  v19 = LODWORD(STACK[0x7F0]);
  LODWORD(STACK[0x4C8]) = 1079 * v19;
  STACK[0x520] = (1079 * v19 + 555685 - 2120 * ((2025928 * (1079 * v19 + 555685)) >> 32));
  LODWORD(STACK[0x6F8]) = 2 * v19;
  STACK[0x860] = STACK[0x558];
  v20 = *(STACK[0x948] + 8 * v15);
  LODWORD(STACK[0x620]) = STACK[0x638];
  LODWORD(STACK[0x7F8]) = STACK[0x7E8];
  STACK[0x740] = LODWORD(STACK[0x748]);
  STACK[0x688] = v18;
  LODWORD(STACK[0x510]) = STACK[0x798];
  LODWORD(STACK[0x4D0]) = STACK[0x690];
  STACK[0x660] = LODWORD(STACK[0x710]);
  LODWORD(STACK[0x3D0]) = STACK[0x6F0];
  STACK[0x748] = STACK[0x818];
  STACK[0x798] = v17;
  STACK[0x7E8] = v8;
  LODWORD(STACK[0x700]) = v17;
  STACK[0x768] = v19;
  LODWORD(STACK[0x850]) = STACK[0x870];
  LODWORD(STACK[0x6C0]) = STACK[0x7D0];
  LODWORD(STACK[0x410]) = STACK[0x468];
  return v20();
}

uint64_t sub_C3FB0()
{
  *v0 = 0;
  *(v2 + 1104) = v4;
  *(v2 + 1120) = v3;
  *(v2 + 1124) = 0;
  *(v2 + 1112) = 0;
  *(v2 + 1128) = 32;
  *(v2 + 1136) = 0;
  *(v2 + 1144) = 0;
  *(v2 + 1148) = 65021204;
  *(v2 + 1152) = 0;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_C407C()
{
  v2 = STACK[0xC88];
  v3 = STACK[0xA08];
  v4 = STACK[0xC38];
  LODWORD(STACK[0x930]) = LODWORD(STACK[0xD88]) - 314620989;
  v5 = LODWORD(STACK[0x940]);
  return (*(v1 + 8 * (((((v0 - 1881468513) | 0x11180C85) ^ 0x5E0CDD59) + v0) ^ (737 * (v0 > 0x7E0FFF0E)))))();
}

uint64_t sub_C4100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  v9 = v6 - 1;
  *(a3 + 1640) = v9;
  *(a1 + v9) = (v5 ^ v7) * (v5 + 17);
  return (*(a2 + 8 * (((*(a3 + 1640) == 0) * v8) ^ (a4 + a5 + 1272))))();
}

uint64_t sub_C41A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a4 + a7 + 34;
  v10 = v7[104];
  v11 = v7[150];
  v7[183] = *(v8 + 8 * v9);
  return (*(v8 + 8 * (v9 ^ 0x2B6)))(v10);
}

uint64_t sub_C4268(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v20 = *(v14 + (((v13 * v15) >> 64) >> 12) * v8);
  v21 = v20 >= 0x7D;
  v22 = v20 + (((a5 - 295) | v10) ^ a4);
  v23 = !v21;
  v24 = STACK[0x6AC];
  v25 = *(v6 + (v16 + 3013 * (v22 + (v23 << 8))) % 0x1188);
  v26 = v25 & 0xF9 ^ 0xBF;
  v27 = v24 - (((v24 * v12) >> 32) >> 12) * a2;
  *(STACK[0x6B8] + 4 * ((v27 ^ v9) + (v18 & (2 * v27))) + v19) = (v25 ^ (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * (((2 * (v25 & 3)) ^ 0x7A) & (v25 ^ 2) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ (v17 - 231);
  v28 = *(STACK[0x6C8] + 8 * (((a6 == 0) * v7) ^ a5));
  LODWORD(STACK[0x6AC]) = v24 + v11;
  return v28();
}

uint64_t sub_C4370()
{
  *(v1 + 344) = STACK[0x370];
  *(v1 + 64) = &STACK[0xF28];
  LODWORD(STACK[0xD10]) = 1310719331;
  return (*(v2 + 8 * v0))(624788556);
}

uint64_t sub_C43A8(uint64_t a1, int a2)
{
  v9 = (v7 + v6);
  v10 = v9[1];
  *(v4 - 1) = *v9;
  *v4 = v10;
  return (*(v8 + 8 * (((v5 == 0) * (a2 + v2 - 1859)) ^ v3)))();
}

uint64_t sub_C4424@<X0>(char a1@<W6>, char a2@<W8>)
{
  v9 = v2 - 1;
  *(v5 + v9) = *(v4 + v9 + v6);
  return (*(v8 + 8 * (((((a2 - a1 - 1) ^ (v9 == 0)) & 1) * v7) ^ (v3 + 458))))();
}

uint64_t sub_C4468(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a4 + v4 + 44;
  *(v5 + 80) = *(v6 + 8 * v7);
  return (*(v6 + 8 * (v7 + ((a4 + v4 + 17) | 6) + 215)))();
}

uint64_t sub_C4498@<X0>(unint64_t a1@<X8>)
{
  v9 = (*(v3 + 12) ^ v2) + ((*(v3 + 12) << (((v1 + 108) | v6) ^ v5)) & v7) + v8;
  v11 = v9 < a1 || v9 > *(v3 + 8) + a1;
  return (*(v4 + 8 * (v1 ^ (2 * v11))))();
}

uint64_t sub_C4584()
{
  v3 = STACK[0x988];
  v4 = (v0 ^ 0x25CE4674789C1116) + STACK[0x9A8];
  v5 = *(v1 + 392);
  *(v1 + 1488) = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 + 136)))();
}

uint64_t sub_C45EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a4 + a7 + 29;
  v10 = v7[155];
  v11 = v7[105];
  v12 = v7[104];
  v13 = v7[59];
  v7[55] = *(v8 + 8 * v9);
  return (*(v8 + 8 * (((a7 - 1082719398) & 0xC70DD27D ^ 0x4FC) + v9)))(v13);
}

uint64_t sub_C46C0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9 = (*(v7 + (3013 * v4 + 4661111) % 0x1188u) - 125) * ((a2 + 107) ^ 0x24BE) + 53111800;
  v10 = v9 - (((v9 * v2) >> 32) >> 12) * v3;
  LODWORD(v10) = *(a1 + 4 * ((v10 ^ 0x3F97EF38F5FFFBFBLL) + ((2 * v10) & 0x77F6)) + 0x1A0431C28001014);
  v11 = BYTE2(v10) ^ 0x44;
  HIDWORD(v12) = ~(v10 >> 8) * LODWORD(STACK[0x698]) + 872930305;
  LODWORD(v12) = HIDWORD(v12);
  v13 = v6 + 9002 * v4 - ((((v6 + 9002 * v4) * v2) >> 32) >> 12) * v3;
  v14 = *(v7 + (3013 * (((v10 ^ 0xD1E744D8) - 1516868256) ^ ((v10 ^ 0xA3115120) - 681543512) ^ ((v10 ^ 0x72F6150E) + 109526154)) - 2000864972) % 0x1188);
  v15 = v14 & 0xFFFFFFED ^ 0x35;
  v16 = v14 ^ 2;
  *(v5 + 4 * ((v13 ^ 0x26F3F96BEDC3AFFFLL) + ((2 * v13) & 0x5FFE)) + 0x64301A5048F14004) = (((v14 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * ((((2 * (v14 & 3)) ^ 0x6E) & 2 | v15) ^ ((2 * (v14 & 3)) ^ 0x6E) & v14)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xFFFFFF12) & ((((((*(v7 + 3013 * v11 + 10089062 - 4488 * (((30623653 * (3013 * v11 + 10089062)) >> 32) >> 5)) - 125) << 8) | (*(v7 + (3013 * (((BYTE3(v10) ^ 0x9446EA19) + 1943555537) ^ ((BYTE3(v10) ^ 0x862364D7) + 1639826207) ^ ((BYTE3(v10) ^ 0x12658EFA) - 168089292)) - 229977224) % 0x1188) << 16) | (*(v7 + (v12 >> 9) % 0x1188) - 125)) << 8) - 2097152000) ^ 0xBA9BFFB7) | (v14 ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * ((((2 * (v14 & 3)) ^ 0x6E) & 2 | v15) ^ ((2 * (v14 & 3)) ^ 0x6E) & v14)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) & 0x48) ^ 0x8EDF0009;
  return (*(v8 + 8 * ((189 * (v4 == 255)) ^ a2)))();
}

void sub_C4AA8()
{
  LODWORD(STACK[0x8F0]) = 624788556;
  v4 = v2 ^ v0;
  STACK[0x908] = v4;
  LODWORD(STACK[0x8F8]) = v3 + v4 - 1065;
  *(*(v1 + 8 * (v2 - 424)) - 1239103043) = 0x91FBCD19FB4A8EB8;
  *(*(v1 + 8 * (v2 ^ 0x278u)) - 1617561955) = 0x7A2A072FAE623611;
  *(*(v1 + 8 * (v2 - 448)) - 986076315) = 0;
  *(*(v1 + 8 * (v2 ^ 0x216u)) - 1711636091) = 0;
  STACK[0x928] = &STACK[0x1140] ^ 0x55555558;
  v5 = *(v1 + 8 * (v2 & 0xDAC)) - 1742994139;
  LODWORD(STACK[0x900]) = v2;
  LODWORD(STACK[0x940]) = v2 ^ 0x259;
  *&STACK[0x910] = xmmword_158970;
  STACK[0x930] = v5 + 16;
  JUMPOUT(0x1EFCLL);
}

uint64_t sub_C4C20@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = (v1 - 626833689) ^ (1938608989 * ((((v3 - 208) | 0x5DB15EA5) - ((v3 - 208) & 0x5DB15EA5)) ^ 0x27910053));
  *v2 = a1;
  v5 = (*(v4 + 8 * (v1 ^ 0xD63)))(v3 - 208);
  return (*(STACK[0x948] + 8 * v1))(v5);
}

uint64_t sub_C4CC4()
{
  v4 = (v1 - 2038114870);
  *STACK[0x938] = ((-((~v4 + v3) ^ (v2 - v4)) | (~v4 + v3)) >> 63) + *(STACK[0x938] + 2492);
  return (*(v0 + 8 * (v4 ^ 0x21E)))();
}

uint64_t sub_C4D54@<X0>(int a1@<W8>)
{
  v9 = *(&STACK[0x590] + v2);
  v10 = STACK[0x518] + 4 * v2;
  v11 = (*(*v3 + (*v1 & 0x5B104604)) + v10 + 1527793161);
  *(v10 - 0x40E8C283FA03C307) = v9 ^ ((v9 ^ 0x60502BBF) - 325920161) ^ ((v9 ^ 0x7A47F798) - 159054214) ^ ((v9 ^ 0x16D52DD6) - 1709712328) ^ (((a1 - 597) ^ 0x7FFFFB93 ^ v9) - 214102513) ^ (v10 * v5) ^ *((*v8 ^ v6) + (v11 & (*v7 ^ v4))) ^ *((*v8 ^ v6) + ((v11 - 2) & (*v7 ^ v4))) ^ 0x59DA6534;
  return (*(STACK[0x548] + 8 * (a1 ^ (2 * (v2 == 7495)))))();
}

uint64_t sub_C4EB0@<X0>(int a1@<W0>, int a2@<W7>, int a3@<W8>)
{
  v9 = STACK[0x778];
  v10 = *(STACK[0x778] + 64);
  LODWORD(STACK[0x7D8]) = a1;
  v11 = a1 ^ 0x55E08BE;
  LODWORD(STACK[0x838]) = a1 ^ 0x55E08BE;
  v12 = 59 * (a3 ^ v10);
  v13 = v12 ^ 0x50;
  v14 = 1377 * ((v12 ^ 0x50) & 0xDF ^ (v12 & 0x20 | 0x8C)) + 622404;
  v15 = STACK[0x900];
  v16 = (((v13 - 3) ^ v13) + (*(STACK[0x900] + v14 - 4864 * (((1766023 * v14) >> 32) >> 1)) ^ 0x76)) ^ 0x7C;
  v17 = STACK[0x820];
  v18 = *(STACK[0x820] + BYTE2(v5)) ^ 0x76;
  v19 = (*(STACK[0x820] + BYTE1(v5)) ^ 0x76) << 16;
  STACK[0x7C8] = v5;
  v20 = 1377 * (*(v17 + v5) ^ 0x9D) + 3822552;
  LOBYTE(v20) = *(v15 + v20 - 4864 * (((7064091 * v20) >> 32) >> 3));
  v21 = (v19 & 0xFFFF00FF | (v18 << 24) | (*(v17 + (v5 >> 24)) ^ 0x76) & 0xFFFF00FF | ((((9 * (((v20 ^ 0xD4) + 44) ^ ((v20 ^ 0x9F) + 97) ^ ((v20 ^ 0x3D) - 61)) + 37) ^ (16 * ((3 * (((v20 ^ 0xD) + 51) ^ ((v20 ^ 0x3D) + 3) ^ ((v20 ^ 6) + 58))) & 3))) - 110) << 8)) ^ ((v16 << 24) + 805306368) ^ v11;
  v22 = LODWORD(STACK[0x4C8]) ^ v21;
  LODWORD(STACK[0x830]) = v22;
  v23 = v22 ^ v5 ^ 0x94949494;
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x4D8]) - LODWORD(STACK[0x450]);
  v24 = 1377 * (*(v17 + ((LODWORD(STACK[0x788]) - 1088) & (v23 >> 16))) ^ 0x9D) + 3822552;
  v25 = *(v15 + v24 - 4864 * (((7064091 * v24) >> 32) >> 3));
  LODWORD(STACK[0x7E8]) = v4;
  v26 = v4 ^ 0x94949494 ^ v21;
  v27 = 1377 * (((v22 ^ v5) >> 24) ^ 0xF4) + 5554818;
  v28 = (v3 + ((*(v17 + BYTE1(v23)) ^ 0x76) << 16)) ^ v21 ^ ((((*(v17 + ((v22 ^ v5) ^ 0x94u)) ^ 0x76) << 8) | (((9 * (((v25 ^ 0x22) - 34) ^ ((v25 ^ 0xFFFFFFD2) + 46) ^ ((v25 ^ 0xFFFFFF86) + 122)) + 37) ^ (16 * ((3 * ((((v25 ^ 0xD) + 3) ^ ((v25 ^ 0xA) + 6)) ^ ((v25 ^ 1) - 1))) & 3))) << 24) | *(v17 + ((*(v15 + v27 - 4864 * (((7064091 * v27) >> 32) >> 3)) ^ 0xE2) - 110)) ^ 0x76) - 1845493760);
  STACK[0x6F8] = v26;
  v29 = (v28 ^ 0x623B6850) + v26 - 2 * ((v28 ^ 0x623B6850) & v26);
  v30 = v29 ^ v5;
  v31 = (((v28 ^ 0x50) + (v4 ^ 0x94 ^ v21) - 2 * ((v28 ^ 0x50) & (v4 ^ 0x94 ^ v21))) ^ v5);
  STACK[0x7B0] = v31;
  LODWORD(v31) = ((*(v17 + v31) ^ 0xFFFFFFA5) + 91) ^ ((*(v17 + v31) ^ 0x2D) - 45) ^ ((*(v17 + v31) ^ 0xFFFFFFFE) + 2);
  LODWORD(STACK[0x6C0]) = v21;
  LOBYTE(v27) = (v21 & 8 ^ 8) + (v21 & 8);
  v32 = STACK[0x2E8];
  LODWORD(v31) = LODWORD(STACK[0x2E8]) + 59 * v31;
  v33 = *v9;
  v34 = v29 ^ v22;
  v35 = ((v33 ^ *(v9 + 27)) << 24) | (((*(STACK[0x648] + 1377 * (v31 ^ 0x66) + 6292890 - 4864 * (((7064091 * (1377 * (v31 ^ 0x66u) + 6292890)) >> 32) >> 3)) ^ ((v31 ^ 0xB1) + (v31 ^ 0x63) - 2 * (v31 ^ 0xB1) - 2 * (((v31 ^ 0xB1) + (v31 ^ 0x63) - 2 * (v31 ^ 0xB1)) & 0x77 ^ ((v31 ^ 0xB1) + (v31 ^ 0x63)) & 1) + 118) ^ 0xD9) + 48) << 8);
  LODWORD(v31) = (*(v17 + (((v29 ^ v22 ^ v23) >> 16) ^ 0x94)) ^ 0x76) << 24;
  LODWORD(v31) = (v35 ^ v28) & 0xEC105950 ^ v31 & 0xEC000000 | (v35 ^ v28) & 0x13EFA6AF ^ v31 & 0x13000000;
  v36 = v31 ^ ((*(v17 + (v30 >> (v27 | 8))) ^ 0x76) << 16);
  STACK[0x860] = v30 >> 24;
  v37 = *(v17 + (v30 >> 24)) ^ 0x76;
  v38 = (v36 | v37) ^ v31 & v37;
  LODWORD(STACK[0x890]) = v38;
  v39 = *(v9 + 54) ^ v33;
  LODWORD(v26) = v38 ^ v29 ^ 0x623B6850;
  STACK[0x450] = v23;
  LODWORD(STACK[0x7F0]) = v26 ^ v23;
  v40 = v26 ^ v23 ^ 0xF6AFFCC4;
  LOBYTE(v33) = v32 + 59 * (((*(v17 + ((v26 ^ v22 ^ v5 ^ 0x94) ^ 0xC4u)) ^ 0xD5) + 43) ^ ((*(v17 + ((v26 ^ v22 ^ v5 ^ 0x94) ^ 0xC4u)) ^ 0x35) - 53) ^ ((*(v17 + ((v26 ^ v22 ^ v5 ^ 0x94) ^ 0xC4u)) ^ 0x96) + 106));
  LOBYTE(v33) = ((v33 - (v33 ^ 0x50)) ^ 0xE0) + v33;
  v41 = (*(v17 + (v40 >> 24)) ^ 0x76) & 0xFFFF00FF | (v39 << 24) | ((((((v33 - 3) ^ v33) + (*(v15 + 1377 * (v33 ^ 0x8C) + 622404 - 4864 * (((1766023 * (1377 * (v33 ^ 0x8Cu) + 622404)) >> 32) >> 1)) ^ 0x76)) ^ 0x7C) + 48) << 8);
  STACK[0x818] = v40;
  v42 = (BYTE1(v40) + 110) ^ (((BYTE1(v40) + 110) ^ 0xD9) - 2 * ((((BYTE1(v40) + 110) ^ 0xD9) + 24) & 0xF7 ^ ((BYTE1(v40) + 110) ^ 0xD9) & 1) - 114) ^ 0xBB ^ *(v15 + 1377 * ((BYTE1(v40) + 110) ^ 0xE2) + 1334313 - 4864 * (((1766023 * (1377 * ((BYTE1(v40) + 110) ^ 0xE2u) + 1334313)) >> 32) >> 1));
  LODWORD(STACK[0x7A8]) = (v41 | ((*(v17 + ((v42 >> 5) & 0xFFFFFF07 | (8 * (v42 & 0x1F)))) ^ 0x76) << 16)) ^ ((*(v17 + BYTE2(v40)) ^ 0x76) << 24);
  LODWORD(STACK[0x4D8]) = v26;
  LODWORD(STACK[0x740]) = v26 + v26 - (v38 ^ v29 ^ 0xF6AFFCC4) - 16 * ((v26 - (v38 ^ v29 ^ 0xF6AFFCC4)) >> 3);
  v43 = *(v15 + 1377 * (HIBYTE(v8) ^ 0x7F) + 3822552 - 4864 * (((7064091 * (1377 * (HIBYTE(v8) ^ 0x7F) + 3822552)) >> 32) >> 3));
  v44 = ((v43 ^ 0x6C) - 108) ^ ((v43 ^ 0xFFFFFFE8) + 24) ^ ((v43 ^ 0xFFFFFFF2) + 14);
  v45 = (((4 * ((3 * ((((v43 ^ 4) + 44) ^ (16 - v43)) ^ ((v43 ^ 0xD) + 51))) & 3)) | (v44 << 6)) + 64) ^ (((-38 - 9 * v44) & 0xFC) >> 2);
  v46 = STACK[0x828];
  v47 = *(STACK[0x828] + 4 * ((v7 ^ 0x9494) >> 8));
  HIDWORD(v49) = v47 ^ 0x61BA;
  LODWORD(v49) = v47 ^ 0xD1320000;
  v48 = v49 >> 16;
  v50 = a2 ^ 0x3B2BE5u;
  v51 = *(STACK[0x828] + 4 * ((v7 ^ 0x94949494) >> 16));
  HIDWORD(v49) = v51 ^ 0xBA;
  LODWORD(v49) = v51 ^ 0xD1326100;
  v52 = v49 >> 8;
  v53 = *(STACK[0x828] + 4 * ((((*(v15 + 1377 * (BYTE2(v50) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (BYTE2(v50) ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - (BYTE2(v50) ^ 4)) ^ 0xBA) - 110));
  HIDWORD(v49) = v53 ^ 0xBA;
  LODWORD(v49) = v53 ^ 0xD1326100;
  v54 = v49 >> 8;
  v55 = v6 ^ 0xDAC72585;
  v56 = *(STACK[0x828] + 4 * BYTE2(v55));
  LOBYTE(v53) = ((v45 ^ 0x73) >> 6) | (4 * (v45 ^ 0x73));
  HIDWORD(v49) = v56 ^ 0xBA;
  LODWORD(v49) = v56 ^ 0xD1326100;
  v57 = *(STACK[0x828] + 4 * v55);
  LOBYTE(v9) = *(v15 + 1377 * (HIBYTE(v57) ^ 0x9D) + 2756754 - 4864 * (((7064091 * (1377 * (HIBYTE(v57) ^ 0x9D) + 2756754)) >> 32) >> 3));
  LODWORD(v31) = (((((((v9 ^ 0x14) - 20) ^ ((v9 ^ 0x30) - 48) ^ ((v9 ^ 0x52) - 82)) - 88) ^ 0xCC) + 102) | (v57 << 8)) ^ 0x3261BA00;
  LODWORD(v40) = *(STACK[0x828] + 4 * (a2 ^ 0xE5u));
  LODWORD(STACK[0x728]) = v40;
  v58 = ((v49 >> 8) ^ -(v49 >> 8) ^ (v31 - (v31 ^ (v49 >> 8)))) + v31;
  HIDWORD(v49) = v40 ^ 0x3261BA;
  LODWORD(v49) = v40 ^ 0xD1000000;
  LODWORD(v31) = __ROR4__(*(v46 + 4 * BYTE1(v50)), 16) ^ 0x61BAD132 ^ (v49 >> 24);
  LODWORD(v40) = *(v46 + 4 * STACK[0x7F8]);
  HIDWORD(v49) = v40 ^ 0xBA;
  LODWORD(v49) = v40 ^ 0xD1326100;
  LODWORD(v9) = v49 >> 8;
  v59 = *(v46 + 4 * STACK[0x810]);
  LODWORD(v40) = v31 ^ v54;
  LOBYTE(v31) = *(v15 + 1377 * (HIBYTE(v59) ^ 0x9D) + 2756754 - 4864 * (((7064091 * (1377 * (HIBYTE(v59) ^ 0x9D) + 2756754)) >> 32) >> 3));
  v60 = ((((((v31 ^ 0x6E) - 110) ^ ((v31 ^ 0x4D) - 77) ^ ((v31 ^ 0x55) - 85)) - 88) ^ 0xCC) + 102) | (v59 << 8);
  LODWORD(v31) = *(v46 + 4 * (v7 ^ 0x94u));
  HIDWORD(v49) = v31 ^ 0x3261BA;
  LODWORD(v49) = v31 ^ 0xD1000000;
  LODWORD(v31) = v49 >> 24;
  v61 = *(v46 + 4 * BYTE1(v55));
  HIDWORD(v49) = v61 ^ 0x61BA;
  LODWORD(v49) = v61 ^ 0xD1320000;
  LODWORD(STACK[0x510]) = v48 ^ 0xD13261BA ^ v52 ^ v31 ^ *(v46 + 4 * ((v53 ^ 0x31) - 110));
  STACK[0x5A0] = ((v58 ^ (v49 >> 16)) - 785227334 - ((2 * (v58 ^ (v49 >> 16))) & 0xA264C374)) ^ *(v46 + ((v55 >> 22) & 0x3FC));
  STACK[0x560] = v50;
  LODWORD(STACK[0x65C]) = *(v46 + ((v50 >> 22) & 0x3FC)) ^ (v40 - 785227334 - ((2 * v40) & 0xA264C374));
  v62 = *(v46 + 4 * STACK[0x840]);
  HIDWORD(v49) = v62 ^ 0x61BA;
  LODWORD(v49) = v62 ^ 0xD1320000;
  v63 = v34 ^ 0x94949494;
  v64 = *(v46 + 4 * BYTE2(v63));
  STACK[0x770] = *(v46 + 4 * STACK[0x870]) ^ 0x3261BA00 ^ (v49 >> 16) ^ (v9 - 785227334 - ((2 * v9) & 0xA264C374)) ^ v60;
  HIDWORD(v49) = v64 ^ 0xBA;
  LODWORD(v49) = v64 ^ 0xD1326100;
  LODWORD(v31) = v49 >> 8;
  v65 = *(v46 + 4 * BYTE1(v63));
  HIDWORD(v49) = v65 ^ 0x61BA;
  LODWORD(v49) = v65 ^ 0xD1320000;
  v66 = v49 >> 16;
  v67 = v28 ^ 0x94949494;
  v68 = *(v46 + 4 * ((*(v15 + 1377 * (v29 ^ 0x60) + 5554818 - 4864 * (((7064091 * (1377 * (v29 ^ 0x60u) + 5554818)) >> 32) >> 3)) ^ 0xE2) - 110));
  HIDWORD(v49) = v68 ^ 0x3261BA;
  LODWORD(v49) = v68 ^ 0xD1000000;
  v69 = v49 >> 24;
  v70 = *(v46 + 4 * BYTE2(v29));
  HIDWORD(v49) = v70 ^ 0xBA;
  LODWORD(v49) = v70 ^ 0xD1326100;
  v71 = v66 ^ v31;
  v72 = (v49 >> 8) ^ v69;
  LODWORD(v31) = *(v46 + 4 * (v28 ^ 0x94u));
  v73 = (BYTE3(v31) ^ 0xB1) + 4034;
  LODWORD(STACK[0x4B0]) = v73;
  LODWORD(v50) = *(v46 + 4 * (v67 >> (BYTE2(v30) & 0x10) >> (BYTE2(v30) & 0x10 ^ 0x10u)));
  HIDWORD(v49) = v50 ^ 0xBA;
  LODWORD(v49) = v50 ^ 0xD1326100;
  v74 = v49 >> 8;
  v75 = ((*(v15 + 1377 * v73 - 4864 * (((7064091 * (1377 * v73)) >> 32) >> 3)) ^ 0xE2) - 110) | (v31 << 8);
  v76 = *(v46 + 4 * BYTE1(v67));
  HIDWORD(v49) = v76 ^ 0x61BA;
  LODWORD(v49) = v76 ^ 0xD1320000;
  LODWORD(v31) = v74 ^ (v49 >> 16);
  v77 = *(v46 + 4 * v63);
  HIDWORD(v49) = v77 ^ 0x3261BA;
  LODWORD(v49) = v77 ^ 0xD1000000;
  v78 = v49 >> 24;
  v75 ^= 0x3261BA00u;
  LODWORD(STACK[0x6B0]) = v75;
  v79 = (v75 ^ v31) - 785227334 - ((2 * (v75 ^ v31)) & 0xA264C374);
  HIDWORD(v49) = *(v46 + 4 * BYTE1(v30));
  LODWORD(v49) = HIDWORD(v49);
  v80 = v71 ^ v78;
  LODWORD(v31) = ((v49 >> 16) ^ 0x61BAD132) - 785227334 - 2 * (((v49 >> 16) ^ 0x61BAD132) & 0x513261BF ^ (v49 >> 16) & 5);
  v81 = *(v46 + 4 * STACK[0x7B0]);
  v82 = (LODWORD(STACK[0x878]) ^ LODWORD(STACK[0x7E8]));
  HIDWORD(v49) = v81 ^ 0x3261BA;
  LODWORD(v49) = v81 ^ 0xD1000000;
  v83 = v49 >> 24;
  STACK[0x870] = v30;
  v84 = *(v46 + 4 * BYTE2(v30));
  HIDWORD(v49) = v84 ^ 0xBA;
  LODWORD(v49) = v84 ^ 0xD1326100;
  LODWORD(STACK[0x518]) = v31 ^ *(v46 + 4 * STACK[0x860]) ^ (v49 >> 8) ^ v83;
  LODWORD(v31) = *(v46 + 4 * BYTE1(v29));
  HIDWORD(v49) = v31 ^ 0x61BA;
  LODWORD(v49) = v31 ^ 0xD1320000;
  STACK[0x768] = v29;
  LODWORD(STACK[0x650]) = (v72 - 785227334 - ((2 * v72) & 0xA264C374)) ^ *(v46 + ((v29 >> 22) & 0x3FC)) ^ (v49 >> 16);
  v85 = LODWORD(STACK[0x858]) ^ 0x91CA9C2A;
  LODWORD(v31) = ((LOBYTE(STACK[0x858]) ^ 0x2A) + 110);
  v86 = 1377 * (v31 ^ 0xE2) + 1334313 - 4864 * (((1766023 * (1377 * (v31 ^ 0xE2) + 1334313)) >> 32) >> 1);
  LODWORD(v31) = (v31 ^ 0xD9 ^ -(v31 ^ 0xD9) ^ ((v31 ^ 0xD9) + 24 - (((v31 ^ 0xD9) + 24) ^ v31 ^ 0xD9))) + (v31 ^ 0xD9) + 24;
  v87 = v80 - 785227334 - ((2 * v80) & 0xA264C374);
  LOBYTE(v31) = (v31 - ((2 * v31) & 0xEC) + 118) ^ 0x62 ^ *(v15 + v86);
  LOBYTE(v30) = (v31 >> 5) | (8 * v31);
  LODWORD(v31) = (BYTE3(v5) + 110 + (~(2 * (BYTE3(v5) + 110)) | 0x13) + 119) ^ *(v15 + (1377 * ((BYTE3(v5) + 110) ^ 0x11) - 4864 * ((883012 * (1377 * ((BYTE3(v5) + 110) ^ 0x11u))) >> 32))) ^ 0x7F;
  LOBYTE(v86) = (v31 >> 5) | (8 * v31);
  LODWORD(v31) = 1377 * (LODWORD(STACK[0x838]) ^ 0x56) + 980424;
  STACK[0x798] = v31 - 4864 * (((1766023 * v31) >> 32) >> 1);
  LODWORD(v31) = LODWORD(STACK[0x758]) << 8;
  STACK[0x670] = (LODWORD(STACK[0x748]) + 1546);
  STACK[0x698] = LODWORD(STACK[0x8F0]) ^ 0x34u;
  LODWORD(STACK[0x730]) = ~v31;
  LODWORD(STACK[0x600]) = LODWORD(STACK[0x930]) ^ 0xD13261BA;
  v88 = STACK[0x890];
  v89 = LODWORD(STACK[0x7A8]) ^ LODWORD(STACK[0x890]);
  LODWORD(v31) = LODWORD(STACK[0x740]) - 8;
  LODWORD(STACK[0x4F0]) = v89;
  v90 = v31 ^ v89;
  LODWORD(v31) = LODWORD(STACK[0x4D8]) ^ v63;
  STACK[0x4C0] = v90;
  LODWORD(v31) = v31 ^ v90;
  LODWORD(STACK[0x838]) = v31 ^ LODWORD(STACK[0x7F0]);
  LODWORD(STACK[0x680]) = v31 ^ 0xF6AFFCC4;
  v91 = v88 ^ LODWORD(STACK[0x830]);
  LODWORD(STACK[0x520]) = LODWORD(STACK[0x830]) ^ 0x94949494;
  LODWORD(STACK[0x480]) = LODWORD(STACK[0x728]) ^ 0xD13261BA;
  STACK[0x5E8] = v50 ^ 0xD13261BA;
  LODWORD(v90) = *(v46 + ((v67 >> 22) & 0x3FC));
  LODWORD(STACK[0x620]) = v79 ^ v90;
  STACK[0x688] = v90 ^ 0xD13261BA;
  LODWORD(STACK[0x720]) = v76 ^ 0xD13261BA;
  LODWORD(v90) = *(v46 + ((v63 >> 22) & 0x3FC));
  STACK[0x7E8] = v84 ^ 0xD13261BA;
  LODWORD(STACK[0x7B0]) = v87 ^ v90;
  v92 = WORD1(STACK[0x6D8]) ^ 0xDB;
  v93 = LODWORD(STACK[0x7D8]) ^ 0x91CA9C2A;
  LODWORD(STACK[0x610]) = HIBYTE(LODWORD(STACK[0x7D8])) ^ 0x56;
  STACK[0x7F0] = HIBYTE(v85);
  STACK[0x4A8] = v86;
  STACK[0x430] = v93 >> 8;
  STACK[0x6A8] = BYTE2(v93);
  STACK[0x5F8] = v30;
  v94 = *(STACK[0x948] + 8 * SLODWORD(STACK[0x788]));
  STACK[0x748] = STACK[0x818];
  STACK[0x858] = v5;
  LODWORD(STACK[0x5A8]) = v91;
  LODWORD(STACK[0x930]) = v91;
  return v94();
}

uint64_t sub_C5D08(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x604]) = LODWORD(STACK[0x4B4]) ^ LODWORD(STACK[0x500]);
  LODWORD(STACK[0x5F0]) = v8 ^ LODWORD(STACK[0x488]);
  LODWORD(STACK[0x5F8]) = LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x3C8]);
  LODWORD(STACK[0x5D0]) = LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x3E0]);
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x388]) + 564311369;
  LODWORD(STACK[0x66C]) ^= a3;
  LODWORD(STACK[0x5A0]) = a6 ^ LODWORD(STACK[0x524]);
  LODWORD(STACK[0x524]) = LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x5C0]);
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x260]) - LODWORD(STACK[0x26C]);
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x24C]);
  LODWORD(STACK[0x588]) = v7 ^ LODWORD(STACK[0x244]);
  v10 = STACK[0x6C0];
  v11 = *(STACK[0x6C0] + 1576);
  v12 = *(STACK[0x6C0] + 3366);
  v13 = v12 & 0xF1 ^ 0x3B;
  v14 = v12 ^ (a1 + 38) & 0x5F ^ 0x5C;
  v15 = v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (((2 * (v12 & 3)) ^ 0x72) & v14 ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13;
  v16 = *(STACK[0x6C0] + 2206);
  v17 = v16 & 0x61 ^ 0xF3;
  v18 = (v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * (((2 * (v16 & 3)) ^ 0x62) & (v16 ^ 2) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17;
  v19 = *(STACK[0x6C0] + 3051);
  v20 = v19 & 7 ^ 0xC2;
  v21 = v11 & 0x6F ^ 0xF6;
  v22 = LODWORD(STACK[0x65C]) ^ LODWORD(STACK[0x4F4]);
  LODWORD(STACK[0x4F4]) = v22;
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x480]) ^ v22;
  v23 = v19 ^ (2 * ((v19 ^ 2) & (2 * ((v19 ^ 2) & (2 * ((v19 ^ 2) & (2 * ((v19 ^ 2) & (2 * ((v19 ^ 2) & (2 * ((v19 ^ 2) & (2 * v19) & 6 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  LODWORD(STACK[0x5C0]) = LODWORD(STACK[0x660]) ^ 0xCE3A6F13;
  HIDWORD(v24) = v6;
  LODWORD(v24) = v6;
  LODWORD(STACK[0x570]) = v24 >> 15;
  v25 = *(STACK[0x678] + 126);
  v26 = v11 ^ (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * v11) & 6 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ 0x6F;
  v27 = *(v10 + 1702);
  v28 = (v26 << 8) | ((v23 ^ 7) << 16);
  v29 = *(v10 + 3114);
  v30 = *(STACK[0x678] + 278);
  v31 = (((v12 ^ (2 * v15)) ^ 0xF1) << 16) | (((v16 ^ (2 * v18)) ^ 0x61) << 8);
  v32 = v30 & 0x4D ^ 0x65;
  v33 = (((2 * (v30 & 3)) ^ 0xCE) & 2 | v32) ^ ((2 * (v30 & 3)) ^ 0xCE) & v30;
  v34 = (v32 & 0xFD | (2 * (v33 & 1))) ^ v30 & (2 * v33);
  v35 = (v32 & 0xFD | (2 * (v34 & 1))) ^ v30 & (2 * v34);
  v36 = (v32 & 0xFD | (2 * (v35 & 1))) ^ v30 & (2 * v35);
  v37 = (v32 & 0xFD | (2 * (v36 & 1))) ^ v30 & (2 * v36);
  v38 = ((v30 ^ (2 * ((v32 & 0xFD | (2 * (v37 & 1))) ^ v30 & (2 * v37)))) ^ 0xD725D8) & (v31 ^ 0xD7F7FF) | v31 & 0x28DA00;
  v39 = v29 & 0xB | 0xC4;
  v40 = ((v29 ^ (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * ((v29 ^ 2) & (2 * (v29 & 0xB)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x5E40F2) & (v28 ^ 0x5F43FF) | v28 & 0xA1BF00;
  v41 = v25 & 0xCF ^ 0x26;
  v42 = ((v38 << 8) ^ 0x285222FF) & ((v25 ^ (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * ((v25 ^ 2) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41))) ^ 0xEA77275E) | (v38 << 8) & 0x1588D800;
  v43 = v40 << 8;
  LOBYTE(v40) = (v27 & 0x83 | 0x54) ^ v27 & 0xA8;
  LODWORD(STACK[0x678]) = v42;
  LODWORD(STACK[0x630]) = (v43 ^ 0x19804FF) & ((v27 ^ (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * ((v27 ^ 2) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0x13987526) | v43 & 0xEC678A00;
  return (*(v9 + 8 * a1))();
}

uint64_t sub_C62B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a4 + a7 + 24;
  *(v7 + 80) = *(v8 + 8 * v9);
  return (*(v8 + 8 * ((a4 + a7 + 258) ^ v9)))();
}

uint64_t sub_C62DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = 5 * (v7 ^ (a7 + 1));
  v12 = a4 + v7 + 110;
  LODWORD(STACK[0xFE8]) = v8;
  v13 = STACK[0x988];
  v14 = STACK[0x9D0];
  *(v9 + 1488) = *(v10 + 8 * v12);
  v15 = STACK[0x368];
  return (*(v10 + 8 * (v12 ^ 0x89 ^ v11)))();
}

uint64_t sub_C6350@<X0>(int a1@<W0>, int a2@<W6>, int a3@<W8>)
{
  v9 = (v7 + v5);
  v10 = v9[1];
  *(v6 - 1) = *v9;
  *v6 = v10;
  return (*(v8 + 8 * (((v4 != 0) * ((12 * (v3 ^ (a2 - 24))) ^ a1)) ^ (a3 + 949))))();
}

uint64_t sub_C63C4(uint64_t a1, uint64_t a2)
{
  v5 = v4 + v2 - 1150;
  v6 = STACK[0x9C0];
  v7 = (*(a2 + 8 * (v4 + v2 - 12)))(*STACK[0x9C0]);
  v8 = STACK[0x948];
  *v6 = 0;
  v9 = *(v3 + 664);
  return (*(v8 + 8 * v5))(v7);
}

uint64_t sub_C6464()
{
  **(v1 + 1520) = STACK[0xD14];
  *(*(v1 + 616) + 24 * *(v1 + 1512) + 4) = 0;
  v3 = LODWORD(STACK[0xE08]);
  return (*(v2 + 8 * (v0 + 34)))();
}

uint64_t sub_C64A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = STACK[0x930];
  v9 = STACK[0x928];
  return (*(v7 + 8 * ((a4 + a7 + 68) | 0x330)))();
}

uint64_t sub_C65D0(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  STACK[0x858] = v12;
  LODWORD(STACK[0x4B0]) = a8;
  LODWORD(STACK[0x2F0]) = v11;
  STACK[0x718] = v10;
  LODWORD(STACK[0x500]) = a6;
  LODWORD(STACK[0x620]) = v9;
  LODWORD(STACK[0x324]) = v8;
  v13 = LODWORD(STACK[0x840]) + 486;
  LODWORD(STACK[0x5B0]) = a1 << 8;
  STACK[0x298] = STACK[0x668] >> 16;
  v14 = (v13 + 362) | 0x59;
  LODWORD(STACK[0x5D8]) = a4;
  LODWORD(STACK[0x8F0]) = v14;
  LODWORD(STACK[0x508]) = a4 ^ v14 ^ 0xFFFFF826;
  LODWORD(STACK[0x308]) = LODWORD(STACK[0x628]) - 1;
  v15 = *(STACK[0x948] + 8 * v13);
  STACK[0x5A0] = 0xFFFFFFFFLL;
  STACK[0x878] = STACK[0x610];
  STACK[0x690] = LODWORD(STACK[0x850]);
  STACK[0x610] = LODWORD(STACK[0x588]);
  LODWORD(STACK[0x31C]) = STACK[0x848];
  v16 = STACK[0x6D0];
  v17 = LODWORD(STACK[0x608]);
  v18 = STACK[0x660];
  v19 = STACK[0x558];
  v20 = STACK[0x520];
  v21 = LODWORD(STACK[0x640]);
  v22 = STACK[0x518];
  v23 = STACK[0x570];
  v24 = STACK[0x930];
  return v15();
}

uint64_t sub_C66E4@<X0>(uint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v4[142] = a3;
  v4[171] = a1;
  v4[56] = v3;
  v6 = *(a1 + 8);
  v4[52] = a1 + 8;
  return (*(v5 + 8 * ((119 * ((((a2 ^ 0xF8) - 11) ^ (v6 == 0)) & 1)) ^ a2)))();
}

uint64_t sub_C6744@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v6 = (v2 - 1768) ^ (a1 + 220);
  v7 = 1252856261 * (((v4 - 208) & 0x64975C53 | ~((v4 - 208) | 0x64975C53)) ^ 0x6E877483);
  *(v3 + 8) = a2 + 424;
  *v3 = (v2 - 652) ^ v7;
  *(v3 + 20) = v7 ^ 0x77D4A74D;
  v8 = (*(v5 + 8 * (v2 | 0x2C3)))(v4 - 208);
  return (*(STACK[0x948] + 8 * (((*(v3 + 16) == v6 - 1973094289) * (((v2 - 1768) | 0x40) - 11)) ^ v2)))(v8);
}

uint64_t sub_C680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12)
{
  a11 = -1038737001 - 1183051249 * ((1302474863 - (&a10 | 0x4DA2306F) + (&a10 | 0xB25DCF90)) ^ 0x57BE194C) + v13;
  a12 = v16;
  v17 = (*(v12 + 8 * (v13 + 1656)))(&a10);
  if (((a10 ^ 0xF67A0FCD) + v14 + 256) <= 0)
  {
    v18 = --((a10 ^ 0xCD) + v14);
  }

  else
  {
    v18 = ((a10 ^ 0xCD) + v14);
  }

  *v15 = 0;
  return (*(v12 + 8 * ((211 * (v18 == (((v13 - 851) | 1) ^ 0x101))) ^ v13)))(v17);
}

uint64_t sub_C6940@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int *a16, char *a17, char *a18, uint64_t a19)
{
  v24 = *(a1 + 40) - a2;
  a16 = *a1;
  v32 = a16;
  LODWORD(a17) = (v20 - 1209824196) ^ (1883321437 * ((&a16 + 552843408 - 2 * (&a16 & 0x20F3B890)) ^ 0xC74C1C2C));
  (*(v19 + 8 * (v20 ^ 0xB75)))(&a16);
  a16 = &a6;
  LODWORD(a17) = v20 + 1600728529 * (((&a16 | 0xF5EEE074) - (&a16 & 0xF5EEE074)) ^ 0x70DB2A35) + 1788780923;
  (*(v19 + 8 * (v20 ^ 0xB08)))(&a16);
  v25 = 1913485891 * (((&a16 | 0xEEF927F1) + (~&a16 | 0x1106D80E)) ^ 0x7315C0DA);
  LODWORD(a18) = v21 ^ ((v21 ^ 0xAA9F7E49) + 1435232214) ^ ((v21 ^ 0x33492FDE) - 866273725) ^ ((v21 ^ 0x7FFF7FFF) - 2132023708) ^ v25 ^ ((v21 ^ 0xE6C2480B) + 433507462 + v20 + 900) ^ 0x6E1CA6A7;
  a19 = v23;
  a17 = &a6;
  LODWORD(a16) = (v20 + 1826633865) ^ v25;
  HIDWORD(a16) = (((v22 + v24 + 734849199) ^ 0x1AF43DFD) - 44040620 + ((2 * (v22 + v24 + 734849199)) & 0x35E87BFA)) ^ v25;
  (*(v19 + 8 * (v20 + 2332)))(&a16);
  v26 = 1600728529 * (&a16 ^ 0x8535CA41);
  a18 = &a6;
  LODWORD(a17) = (v20 + 2065906056) ^ v26;
  LODWORD(a16) = v26 ^ 0x37217BE0;
  (*(v19 + 8 * (v20 + 2349)))(&a16);
  v27 = 1600728529 * ((&a16 + 1428370981 - 2 * (&a16 & 0x55233625)) ^ 0xD016FC64);
  LODWORD(a17) = (v20 + 2065906056) ^ v27;
  LODWORD(a16) = v27 ^ 0x37217BE0;
  a18 = &a6;
  (*(v19 + 8 * (v20 ^ 0xB35)))(&a16);
  v28 = 1600728529 * (((&a16 | 0x8012620C) - (&a16 & 0x8012620C)) ^ 0x527A84D);
  LODWORD(a16) = v28 ^ 0x37217BE0;
  LODWORD(a17) = (v20 + 2065906056) ^ v28;
  a18 = &a6;
  (*(v19 + 8 * (v20 + 2349)))(&a16);
  v29 = 1600728529 * (((&a16 ^ 0xC98B6DAD | 0xAC2506BD) - (&a16 ^ 0xC98B6DAD) + ((&a16 ^ 0xC98B6DAD) & 0x53DAF940)) ^ 0xE09BA151);
  a18 = &a6;
  LODWORD(a17) = (v20 + 2065906056) ^ v29;
  LODWORD(a16) = v29 ^ 0x37217BE0;
  (*(v19 + 8 * (v20 ^ 0xB35)))(&a16);
  HIDWORD(a17) = v20 - 434465113 * ((2 * (&a16 & 0x3D64C0) - &a16 + 2143460156) ^ 0x8A60B163) + 413;
  a16 = &a6;
  v30 = (*(v19 + 8 * (v20 + 2357)))(&a16);
  *v32 = a17 ^ 0x4B5F60F9;
  return (*(v19 + 8 * v20))(v30);
}

uint64_t sub_C6D74()
{
  *(v4 - 116) = 853792023 - 1600728529 * ((v4 - 128) ^ 0x8535CA41) + v2 + 2404;
  *(v4 - 128) = v3;
  v5 = (*(v1 + 8 * (v2 ^ 0xA20)))(v4 - 128);
  v6 = *(v4 - 120);
  *(v0 + 420) = v6 ^ (((v2 + 25) | 0x20) - 57);
  return (*(v1 + 8 * ((((((v6 - v2) | (v2 - v6)) >> 7) & 1) * (((v2 - 196) | 0x150) - 370)) | v2 ^ 0x420)))(v5);
}

uint64_t sub_C6E3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(v10 + 8 * ((((a7 + ((v7 + 13) | 0xA4) - 2264) ^ (v7 - a4 - 52)) * (v9 == -546994306)) ^ v7));
  LODWORD(STACK[0x8F0]) = v8 - 3;
  return v11();
}

uint64_t sub_C6E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = v9 - 2038115492 + ((v8 - 75520082) & 0x7DFB7EAF) - 2;
  *(a8 + v13) = *(v10 + v13 + v11);
  v14 = *(v12 + 8 * ((19 * (v13 == 0)) ^ v8));
  STACK[0x900] = a8;
  return v14();
}

uint64_t sub_C6F54@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = a1 - 930;
  a4 = a1 - 930 + 1583996299 * (((&a4 | 0xF38CF22C) - (&a4 & 0xF38CF22C)) ^ 0xBA713333) + 51;
  a5 = v6;
  v9 = (*(v5 + 8 * (a1 + 1383)))(&a4);
  *v7 = 0;
  return (*(v5 + 8 * v8))(v9);
}

uint64_t sub_C6FC0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9 = *(v7 + (3013 * v3 + 4661111) % 0x1188u);
  v10 = 9002 * (v9 | ((v9 < 0x7D) << 8)) + 77408198 - ((((9002 * (v9 | ((v9 < 0x7D) << 8)) + 77408198) * v4) >> 32) >> 12) * a2;
  v11 = *(a1 + 4 * ((v10 ^ 0x3EE6BEDDF7FBFE9DLL) + ((2 * v10) & 0x7D3A)) + 0x46504882010058CLL);
  v12 = 3013 * ~(v11 >> 8) + 10093550;
  v13 = v6 + 9002 * v3 - ((((v6 + 9002 * v3) * v4) >> 32) >> 12) * a2;
  v14 = *(v7 + (3013 * (((HIBYTE(v11) ^ 0x3258E601) + 2130991009) ^ ((HIBYTE(v11) ^ 0xB727255A) - 92564228) ^ ((HIBYTE(v11) ^ 0x857FC36F) - 937200945)) + 2091116928) % 0x1188);
  v15 = v14 ^ 2;
  v16 = v14 & 0x5F ^ 0xEE;
  v17 = *(v7 + 3013 * (BYTE2(v11) ^ 0x44) + 10093550 - 4488 * (((30623653 * (3013 * (BYTE2(v11) ^ 0x44u) + 10093550)) >> 32) >> 5));
  v18 = v17 & 0x35 ^ 0xD9;
  v19 = v17 ^ 2;
  LOBYTE(v12) = *(v7 + v12 - 4488 * (((30623653 * v12) >> 32) >> 5));
  v20 = *(v7 + (3013 * (((v11 ^ 0xFD1363F) + 577748513) ^ ((v11 ^ 0x1FF2CA5B) + 843858501) ^ ((v11 ^ 0x1023FC92u) + 1033729166)) - 1659332132) % 0x1188);
  v21 = v12 & 0x29 ^ 0xD7;
  v22 = v12 ^ 2;
  v23 = (((v14 ^ (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * ((v14 ^ 2) & (2 * v14) & 6 ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x5F) << 16) | (((v17 ^ (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (((2 * (v17 & 3)) ^ 0x36) & v19 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x35) << 8);
  v24 = v20 & 0xB1 ^ 0x9B;
  v25 = v20 ^ 2;
  v26 = v20 ^ (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (((2 * (v20 & 3)) ^ 0x32) & v25 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  *(v5 + 4 * ((v13 ^ 0x216DDBBF49AFB7D7) + ((2 * v13) & 0x6FAE)) + 0x7A489102D94120A4) = ((((((v12 ^ (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (((2 * (v12 & 3)) ^ 0xAA) & v22 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xEA2322) & ~v23 | v23 & 0x15DC00) << 8) ^ 0x45A2CF20) & (v26 ^ 0xFFFFFF55) | v26 & 0xDF) ^ 0x9BC53B47;
  return (*(v8 + 8 * ((30 * (v3 != 255)) ^ v2)))();
}

uint64_t sub_C7420@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x9DC]) = a1;
  v4 = (&STACK[0x1190] + STACK[0x978]);
  STACK[0x978] += 16;
  *v4 = 0;
  v5 = (*(v1 + 8 * (v2 ^ 0xEC1)))(0, v4) == 0;
  return (*(STACK[0x948] + 8 * ((v5 * (v2 ^ (v3 - 971) ^ 0x3B3 ^ (v2 + 2038114342))) ^ v2)))();
}

uint64_t sub_C74AC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  a9 = a1;
  a8 = v9 + (((&a8 | 0xD491EBE1) + (~&a8 | 0x2B6E141E)) ^ 0x9D6C2AFF) * v11 - 354;
  v12 = (*(v10 + 8 * (v9 + 1908)))(&a8);
  return (*(v10 + 8 * v9))(v12);
}

uint64_t sub_C7510(uint64_t a1, uint64_t a2)
{
  v5 = v3[105];
  v6 = v3[104];
  v3[183] = *(v4 + 8 * v2);
  return (*(v4 + 8 * (v2 ^ 0x492 ^ (v2 + 961))))(v5, a2, 938337180);
}

uint64_t sub_C7634()
{
  LODWORD(STACK[0xE84]) = v1 / 0xA0;
  **(v2 + 1520) = LODWORD(STACK[0xD14]) + 196;
  v4 = v1 % 0xA0 > ((v0 - 1410151627) & 0x540D31BF ^ 0x2Fu);
  LOBYTE(STACK[0xF4F]) = v4;
  *(*(v2 + 616) + 24 * *(v2 + 1512) + 4) = (((160 * (v1 / 0xA0)) | (16 * v4)) - (((v0 + 2046815325) & 0xFF7B3CFD ^ 0x409D7685) & (2 * ((160 * (v1 / 0xA0)) | (16 * v4)))) - 1661784806) ^ 0x9CF32D1A;
  v6 = v1 > 0x9F || v1 % 0xA0 > 0xF;
  return (*(v3 + 8 * (v0 ^ (26 * v6))))();
}

uint64_t sub_C770C(int8x16_t a1, int8x16_t a2, int8x16_t a3, int32x4_t a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  a6.i64[0] = *(v15 + 4);
  a6.i32[2] = *(v15 + 12);
  v18 = vextq_s8(a5, a6, 0xCuLL);
  a6.i32[3] = *(a12 + 4 * (v16 + 7 * (v12 ^ (a11 + 87))));
  v19 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a6, a2), vandq_s8(v18, a1)), 1uLL), *(v15 - 908));
  v20.i32[0] = *(v13 + 4 * (*(v15 + 4) & 1));
  v20.i32[1] = *(v13 + 4 * (*(v15 + 8) & 1));
  v20.i32[2] = *(v13 + 4 * (a6.i8[8] & 1));
  v20.i32[3] = *(v13 + 4 * (a6.i8[12] & 1));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v19, vandq_s8(vaddq_s32(v19, v19), a3)), a4), v20);
  return (*(a10 + 8 * (((v16 == 0) * v17) ^ v14)))();
}

uint64_t sub_C7870()
{
  v3 = (*(v2 + 8 * (v1 + 968)))();
  v4 = STACK[0x948];
  *(v0 + 72) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_C789C()
{
  *STACK[0x878] = STACK[0x8A0];
  v2 = LODWORD(STACK[0x890]);
  return (*(v1 + 8 * (((v0 ^ 0x640) * LODWORD(STACK[0x880])) ^ v0)))();
}

uint64_t sub_C7938()
{
  v5 = (v3 ^ 0xFFFFFFFFFFFFFE7ELL) + v2;
  v6 = 1913485891 * (((((v4 - 208) | 0x37204580) ^ 0xFFFFFFFE) - (~(v4 - 208) | 0xC8DFBA7F)) ^ 0x55335D55);
  v7 = v4 - 208;
  *v7 = v1 + (v5 << 8) + 492;
  *(v7 + 16) = v1 + 4 * v5 + 1028;
  *(v7 + 24) = STACK[0x930];
  *(v7 + 8) = (v3 - 115) ^ v6;
  *(v7 + 12) = v6 ^ 0x5563077F;
  v8 = (*(v0 + 8 * (v3 + 2368)))(v4 - 208);
  return (*(STACK[0x948] + 8 * v3))(v8);
}

uint64_t sub_C79E4(int a1)
{
  v11 = a1 & 0x80000;
  v12 = *(v10 + v5) * v7;
  if ((v12 & a1 & 0x80000) != v3)
  {
    v11 = -v11;
  }

  v13 = (v11 + v12) ^ a1 & 0xFFF7FFFF;
  v14 = (v13 + v4) >> 16;
  v15 = (v13 + v4 - v14) >> 8;
  v16 = (v5 + v1 + v13 - v14 + v15) ^ LODWORD(STACK[0x928]);
  v17 = (v5 + v2 + v13 - v14 + v15) ^ LODWORD(STACK[0x930]);
  v18 = v5 + v6 + v13 - v14 + v15;
  LODWORD(v15) = v18 ^ LODWORD(STACK[0x940]);
  v19 = v18 ^ v12;
  v20 = ((v18 ^ v12) + v4) >> 16;
  v21 = ((v18 ^ v12) + v4 - v20) >> 8;
  LODWORD(STACK[0x928]) = v16 ^ (v5 + v1 + v19 - v20 + v21);
  LODWORD(STACK[0x930]) = v17 ^ (v5 + v2 + v19 - v20 + v21);
  LODWORD(STACK[0x940]) = v15 ^ (v5 + v6 + v19 - v20 + v21);
  return (*(STACK[0x948] + 8 * (((v5 + v1 + 1 < STACK[0x328]) * v9) ^ v8)))();
}

uint64_t sub_C7AF8(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v8 = (LODWORD(STACK[0x890]) - 1677) | 0x404;
  v9 = STACK[0x848];
  v10 = LODWORD(STACK[0x848]) + 893707468;
  v11 = ((2 * (LODWORD(STACK[0x3C0]) - 1717937041)) & 0xCCCB4722) + ((LODWORD(STACK[0x3C0]) - 1717937041) ^ 0x6665A391);
  LODWORD(STACK[0x400]) = v8;
  v12 = __ROR4__(((v11 << 13) & 0x16160000 | (v11 >> (v8 ^ 0x2C)) & 0x616) ^ 0x5711D11F, 12);
  v13 = STACK[0x7D8];
  v14 = STACK[0x7D8] & (v12 ^ 0xA145C1AD);
  v15 = v14 >> STACK[0x830];
  v16 = (v12 ^ 0xA145C1AD) & v9;
  v17 = v16 << STACK[0x810];
  v18 = STACK[0x810];
  STACK[0x810] = STACK[0x810];
  LODWORD(v15) = v15 | v17;
  LODWORD(v17) = LODWORD(STACK[0x760]) + 1648108402 * v11 - 824054201 * ((a1 ^ v7) + v11);
  v19 = v17 ^ v15 ^ LODWORD(STACK[0x6E8]) ^ a4;
  v20 = STACK[0x2C0] - 1287582364;
  v21 = STACK[0x8F8];
  v22 = STACK[0x7F0];
  v23 = ((((2 * v7) ^ 0xB0B0B0B0) & STACK[0x8F8]) >> STACK[0x768]) ^ ((((2 * v7) ^ 0xB0B0B0B0) & STACK[0x7F0]) << v18) ^ LODWORD(STACK[0x760]) ^ a6;
  v24 = (v17 + 171543467 * ((v12 ^ 0xA145C1AD) - v16 - ((v12 ^ 0xA145C1AD) & STACK[0x2B8]))) ^ (647776945 * (v12 ^ 0xA145C1AD)) ^ (647776945 * ((v12 ^ 0xA145C1AD) & ~v13 | v14));
  v25 = ((2 * v10) & 0x95763668) + (v10 ^ 0xCABB1B34);
  LODWORD(STACK[0x760]) = v25;
  LODWORD(v14) = 2 * LODWORD(STACK[0x608]);
  LODWORD(STACK[0x818]) = v14;
  v26 = __ROR4__(v6 ^ LODWORD(STACK[0x558]) ^ v24, 27) ^ 0x3E7E3AFE;
  v27 = v14 & 0x61616160 ^ 0xB0B0B0B0;
  v28 = ((2 * v20) & 0x997DE538) + (v20 ^ 0x4CBEF29C);
  STACK[0x558] = v28;
  v29 = __ROR4__(__ROR4__(v21, 12) ^ 0x595C7B0D, 20);
  STACK[0x8F8] = v21;
  v30 = STACK[0x910];
  v31 = *(STACK[0x910] + 4 * (1079 * ((v27 & (v29 ^ 0x30412060 | v21)) % 0x101) + 278382 - 2120 * ((2025928 * (1079 * ((v27 & (v29 ^ 0x30412060 | v21)) % 0x101) + 278382)) >> 32)));
  v32 = (((v31 ^ 0xA3D731F0) + 1546178064) ^ ((v31 ^ 0x4EEF8ED7) - 1324322519) ^ ((v31 ^ 0x3C0ADE9D) - 1007345309)) + 1444679079;
  v33 = 1079 * (v27 % 0x101);
  v34 = 4 * v32 * v32;
  v35 = STACK[0x8F0];
  v36 = 702804568 - (((v31 ^ 0x9C743AFB) + 1670104325) ^ ((v31 ^ 0x8BBC4B6A) + 1950594198) ^ ((v31 ^ 0x46FA102B) + 956690389));
  v37 = v32 ^ 0xFCFDF0DB;
  if (!v21)
  {
    v36 = v37;
  }

  v38 = v36 & 0x40000000;
  v39 = (v27 & v21) >> v28;
  if ((v38 & v34) != 0)
  {
    v38 = -v38;
  }

  v41 = v38 + v34;
  v42 = v39 ^ ((v27 & v22) << STACK[0x8F0]) ^ __ROR4__(v26, 5);
  v40 = *(v30 + 4 * (v33 + 1668134 - 2120 * ((2025928 * (v33 + 1668134)) >> 32)));
  v43 = -1421416433 - ((725634795 * (((v40 ^ 0x9F36F711) + 1623787759) ^ ((v40 ^ 0x7192FC16) - 1905458198) ^ ((v40 ^ 0x3F966ABD) - 1066822333)) + 260465086) ^ 0x9D132D2D ^ ((1451269590 * (((v40 ^ 0x62BA3703) + 491112701) ^ ((v40 ^ 0x9E49D302) + 1639329022) ^ ((v40 ^ 0x2DC185BB) + 1379826245)) + 520930172) | 0xA74E6B4E));
  STACK[0x7E0] = ((v22 + 1421416433 + (v41 ^ v37 & 0xBFFFFFFF)) ^ v43) + 2 * ((v22 + 1421416433 + (v41 ^ v37 & 0xBFFFFFFF)) & v43);
  v44 = *(v30 + 4 * (v33 + 278382 - 2120 * ((2025928 * (v33 + 278382)) >> 32)));
  v45 = (((v44 ^ 0xA6C98B00) + 1496741120) ^ ((v44 ^ 0xAD11A2AF) + 1391353169) ^ ((v44 ^ 0xDAEA4815) + 622180331)) + 1444679079;
  v46 = *(v30 + 4 * (v33 + 1111370 - 2120 * ((2025928 * (v33 + 1111370)) >> 32)));
  v47 = v24 ^ STACK[0x6F8] ^ ((v27 & v25) << v35) ^ v39 ^ LODWORD(STACK[0x2A0]);
  v48 = v42 ^ 0xF1F3F1D7;
  STACK[0x768] = v48;
  v49 = STACK[0x900];
  v50 = v45 ^ v24 ^ (2039570243 * (((v46 ^ 0xC89A1474) + 929426316) ^ ((v46 ^ 0x2C03F246) - 738456134) ^ ((v46 ^ 0x35AB8788) - 900433800)) - 1228039762) ^ (4 * v45 * v45);
  v51 = 1377 * ((BYTE2(v48) + 110) ^ 0xF1) + 2044845;
  v52 = *(STACK[0x900] + v51 - 4864 * (((1766023 * v51) >> 32) >> 1));
  LODWORD(STACK[0x7C8]) = (*(STACK[0x900] + 1377 * (BYTE1(v47) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (BYTE1(v47) ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - ((v47 >> 8) ^ 4);
  v53 = (LODWORD(STACK[0x3F0]) + 49 * (((v52 ^ 0xFFFFFFE3) + 29) ^ v52 ^ ((v52 ^ 0xFFFFFF95) + 107))) ^ 0x39 ^ (-158 * (((v52 ^ 0xB) - 11) ^ ((v52 ^ 0x70) - 112) ^ ((v52 ^ 0xD) - 13)) + 56);
  v54 = ((LOBYTE(STACK[0x3F0]) + 49 * (((v52 ^ 0xE3) + 29) ^ v52 ^ ((v52 ^ 0x95) + 107))) ^ 0x39 ^ (98 * (((v52 ^ 0xB) - 11) ^ ((v52 ^ 0x70) - 112) ^ ((v52 ^ 0xD) - 13)) + 56)) >> 5;
  v55 = *(v49 + 1377 * (v42 ^ 0xF4) + 5915592 - 4864 * (((7064091 * (1377 * (v42 ^ 0xF4u) + 5915592)) >> 32) >> 3));
  LODWORD(STACK[0x6F8]) = ((v55 ^ 0xFFFFFFEC) + 20) ^ ((v55 ^ 0x1F) - 31) ^ ((v55 ^ 0xFFFFFF85) + 123);
  v56 = v47;
  STACK[0x848] = v47;
  v57 = ((v47 + 110) & 8 | 0x55) ^ (v47 + 110) & 0xF7u;
  STACK[0x860] = v19;
  v58 = *(STACK[0x648] + (1377 * (v57 ^ 0x44) - 4864 * ((883012 * (1377 * (v57 ^ 0x44))) >> 32)));
  STACK[0x7F0] = v57;
  v59 = v58 ^ (v57 - ((2 * v57) & 0x1EC) + 118) ^ 0x2A;
  v60 = 1377 * ((BYTE2(v19) + 110) ^ 0xDC) + 4834647;
  STACK[0x6E8] = (v59 >> 5) | (8 * v59);
  v61 = v60 - 4864 * (((7064091 * v60) >> 32) >> 3);
  v62 = v23;
  v63 = STACK[0x908];
  v64 = *(STACK[0x908] + 4 * v23);
  v65 = *(v49 + v61);
  HIDWORD(v67) = v65 ^ 0x16;
  LODWORD(v67) = (v65 ^ 0x60) << 24;
  v66 = v67 >> 29;
  v68 = (59 * HIBYTE(v64));
  v69 = (((((2 * (v68 ^ 0x50)) & 0xFA) + ((59 * HIBYTE(v64)) ^ 0xAD)) ^ v68 ^ 0x50) + (*(v49 + 1377 * (v68 ^ 0xDC) + 622404 - 4864 * (((1766023 * (1377 * (v68 ^ 0xDCu) + 622404)) >> 32) >> 1)) ^ 0x76)) ^ 0x7C;
  v70 = *(STACK[0x908] + 4 * BYTE1(v19));
  STACK[0x430] = (v69 + 48);
  v71 = *(v63 + ((v56 >> 22) & 0x3FC)) ^ __ROR4__(v70, 16) ^ __ROR4__(*(v63 + 4 * (v54 & 0xFFFFFFFFFFFFFF07 | (8 * (v53 & 0x1F)))), 8) ^ ((v69 + 48) | (v64 << 8));
  v72 = STACK[0x748];
  v73 = STACK[0x2B0];
  v74 = STACK[0x840];
  v75 = STACK[0x728];
  v76 = (STACK[0x2B0] >> STACK[0x728]) ^ (STACK[0x2B0] << STACK[0x840]);
  if (STACK[0x748])
  {
    v77 = (LODWORD(STACK[0x300]) >> STACK[0x728]) | (LODWORD(STACK[0x300]) << STACK[0x748]);
  }

  else
  {
    v77 = STACK[0x300];
  }

  v78 = 1079 * (v11 % 0x101);
  v79 = *(v30 + 4 * (v78 + 555685 - 2120 * ((2025928 * (v78 + 555685)) >> 32)));
  if ((v79 & 0x800) != 0)
  {
    v80 = (((v79 ^ 0x637FD6D7) - 1669322455) ^ ((v79 ^ 0x39A3C953) - 967035219) ^ ((v79 ^ 0x8BEE7E3E) + 1947304386)) - 785229382;
  }

  else
  {
    v80 = v79 ^ 0xD13269BA;
  }

  v81 = v78 + 278382 - 2120 * ((2025928 * (v78 + 278382)) >> 32);
  v82 = (v11 % 0x101) ^ 0x9CFEAF2F ^ v80;
  v83 = (2 * v11) & 0xA6A6A6A6;
  v84 = v83 ^ 0x53535353;
  STACK[0x7D8] = v13;
  v85 = v13 & (v83 ^ 0x53535353);
  v86 = 1079 * ((v85 | (v83 ^ 0x53535353) & ~v13) % 0x101) + 278382;
  v87 = v86 - 2120 * ((2025928 * v86) >> 32);
  if (v75)
  {
    v88 = v76;
  }

  else
  {
    v88 = v73;
  }

  v89 = STACK[0x668];
  v90 = v74;
  LODWORD(STACK[0x4C8]) = (LODWORD(STACK[0x680]) >> v75) ^ (LODWORD(STACK[0x680]) << v74);
  if (v75)
  {
    v91 = (v89 >> v75) | (v89 << v72);
  }

  else
  {
    v91 = v89;
  }

  LODWORD(STACK[0x668]) = v91;
  v92 = (((*(v30 + 4 * v81) ^ 0x750BB3DE) - 1963701214) ^ ((*(v30 + 4 * v81) ^ 0x9A09E2F6) + 1710628106) ^ ((*(v30 + 4 * v81) ^ 0x3E303092) - 1043345554)) + 1444679079;
  v93 = v50 ^ 0x36DF827B;
  v94 = (v92 ^ 0xFCFDF0DB ^ (4 * v92 * v92)) + v93 - v82;
  v95 = *(v30 + 4 * (1079 * ((v84 - 257) % 0x101u) + 1668134 - 2120 * ((2025928 * (1079 * ((v84 - 257) % 0x101u) + 1668134)) >> 32)));
  v96 = ((v95 ^ 0xD81499B4) + 669738572) ^ ((v95 ^ 0x41D08F42) - 1104187202) ^ ((v95 ^ 0x48F6774C) - 1224111948);
  v97 = ((v95 ^ 0xDDEF565E) + 571517346) ^ ((v95 ^ 0xC1A7ECB7) + 1045959497) ^ ((v95 ^ 0x4D7ADB53) + 847586477);
  v98 = (((*(v30 + 4 * v87) ^ 0xDD21C52C) + 584989396) ^ ((*(v30 + 4 * v87) ^ 0x95AC02C0) + 1783889216) ^ ((*(v30 + 4 * v87) ^ 0x99BFA656) + 1715493290)) + 1444679079;
  v99 = v98 ^ 0xFCFDF0DB ^ (4 * v98 * v98);
  v100 = v93 ^ v77;
  v101 = *(v63 + 4 * BYTE1(v62));
  v102 = STACK[0x6E8];
  v103 = v100 ^ __ROR4__(*(v63 + 4 * (v66 ^ 0x68u)), 8);
  STACK[0x5F8] = v102;
  v104 = STACK[0x768];
  v105 = STACK[0x7E0];
  v106 = STACK[0x810];
  v107 = v103 ^ __ROR4__(v101, 16) ^ __ROR4__(*(v63 + 4 * v102), 24) ^ *(v63 + ((STACK[0x768] >> 22) & 0x3FC));
  v108 = STACK[0x830];
  v109 = ((STACK[0x7E0] & v84) << STACK[0x810]) + (v85 >> STACK[0x830]);
  v110 = STACK[0x570];
  v111 = v90;
  STACK[0x840] = v90;
  v112 = (v110 >> v75) + (v110 << v90);
  if (v75)
  {
    v113 = (LODWORD(STACK[0x4F8]) >> v75) + (LODWORD(STACK[0x4F8]) << v72);
  }

  else
  {
    v113 = STACK[0x4F8];
  }

  LODWORD(STACK[0x520]) = v113;
  LODWORD(STACK[0x628]) = v112;
  if (v75)
  {
    v114 = v112;
  }

  else
  {
    v114 = v110;
  }

  LODWORD(STACK[0x4F8]) = v114;
  v115 = v88 & 0x400;
  if ((v71 & v88 & 0x400) != 0)
  {
    v115 = -v115;
  }

  v116 = v115 + v71;
  v117 = LODWORD(STACK[0x6F8]) - 28;
  v118 = 725634795 * v96 + 260465086;
  v145 = v118 == -1659687635;
  v119 = v118 ^ 0x62ECD2D2 ^ ((1451269590 * v97 + 520930172) | 0xA74E6B4E);
  v120 = v62;
  v121 = *(v63 + 4 * BYTE2(v62));
  v122 = ((LODWORD(STACK[0x7C8]) ^ 0xBA) - 110);
  v123 = v83 ^ 0xA4A4A4A4 ^ v105;
  if (v145)
  {
    v123 = v105;
  }

  v124 = v105;
  LODWORD(STACK[0x418]) = v84;
  v125 = STACK[0x558];
  v126 = STACK[0x8F0];
  v127 = ((v123 & v84) << STACK[0x8F0]) | (v85 >> STACK[0x558]);
  STACK[0x6A8] = v122;
  v128 = v107 + v99 + v119 + 1;
  v129 = v116 ^ v88 & 0xFFFFFBFF ^ v94 ^ v127;
  v130 = v128 ^ v109;
  v131 = STACK[0x818] & 0xA6A6A6A6 ^ 0x53535353;
  v132 = (v131 & STACK[0x8F8]) >> v108;
  v133 = (v131 & STACK[0x760]) << v106;
  v134 = v130 ^ 0x40;
  v135 = v130 ^ 0x40 ^ -(v130 ^ 0x40) ^ (114 - (v130 ^ 0x32));
  v136 = STACK[0x860];
  v137 = v132 ^ v133 ^ LODWORD(STACK[0x668]) ^ __ROR4__(v121, 8) ^ __ROR4__(*(v63 + 4 * v122), 16) ^ __ROR4__(*(v63 + 4 * ((v117 ^ 0xBC) + 102)), 24) ^ *(v63 + 4 * BYTE3(STACK[0x860])) ^ v94;
  v138 = *(v63 + 4 * BYTE2(v137));
  v139 = *(v63 + 4 * BYTE1(v129));
  v140 = ((*(v49 + 1377 * (v135 + 114) + 3470040 - 4864 * (((7064091 * (1377 * (v135 + 114) + 3470040)) >> 32) >> 3)) ^ ((v130 ^ 0x40) - ((2 * v130) & 0x76) + 59 - ((2 * ((v130 ^ 0x40) - ((2 * v130) & 0x76) + 59)) & 0xEC) + 118) ^ 0x32) + 102);
  STACK[0x4A8] = v140;
  v141 = *(v63 + 4 * v140);
  v142 = (v141 << 8) ^ __ROR4__(v139, 16);
  LODWORD(STACK[0x2C0]) = v138;
  v143 = (v138 >> 8) - 257 * (v138 / 0x10100);
  v144 = 1079 * v143;
  v145 = v111 == 0;
  v146 = STACK[0x4C8];
  if (!v111)
  {
    v146 = STACK[0x680];
  }

  STACK[0x668] = v132;
  v147 = (v132 | v133) ^ v146 ^ *(v63 + ((v120 >> 22) & 0x3FC)) ^ __ROR4__(*(v63 + 4 * BYTE2(STACK[0x848])), 8) ^ __ROR4__(*(v63 + 4 * v136), 24) ^ __ROR4__(*(v63 + 4 * BYTE1(v104)), 16);
  LODWORD(STACK[0x3C0]) = v11;
  v148 = (v11 - v133) & v133;
  v149 = (v11 - v133) ^ v133;
  v150 = HIBYTE(v141);
  v151 = v142 ^ HIBYTE(v141);
  v152 = *(v63 + ((v137 >> 22) & 0x3FC)) ^ -*(v63 + ((v137 >> 22) & 0x3FC)) ^ (v151 - (v151 ^ *(v63 + ((v137 >> 22) & 0x3FC))));
  v153 = *(v30 + 4 * (v144 + 278382 - 2120 * ((2025928 * (v144 + 278382)) >> 32)));
  v154 = v152 & v151;
  v155 = v152 ^ v151;
  v156 = ((v153 ^ 0x705EF0EC) - 1885270252) ^ ((v153 ^ 0xCC831C17) + 863822825) ^ ((v153 ^ 0x6DEF8D41) - 1844415809);
  v157 = v147 ^ v94;
  v158 = *(v63 + ((v157 >> 22) & 0x3FC));
  HIDWORD(v160) = *(v63 + 4 * BYTE1(v134));
  LODWORD(v160) = HIDWORD(v160);
  v159 = v160 >> 16;
  v161 = *(v63 + 4 * BYTE2(v129));
  LODWORD(STACK[0x488]) = v159;
  v162 = (v159 ^ v158 ^ __ROR4__(v161, 8)) - ((v156 + 1444679079) ^ 0xFCFDF0DB) - 4 * (v156 + 1444679079) * (v156 + 1444679079) + 2 * ((4 * (v156 + 1444679079) * (v156 + 1444679079)) & ((v156 + 1444679079) ^ 0xFCFDF0DB));
  v163 = *(v30 + 4 * (v144 + 555685 - 2120 * ((2025928 * (v144 + 555685)) >> 32))) ^ (v143 - 785227334 - ((2 * v143) & 0x374));
  LODWORD(STACK[0x2D8]) = v149;
  v164 = (v149 + 2 * v148);
  v165 = (2 * v164) & 0x6D6D6D6C;
  LODWORD(STACK[0x480]) = v165;
  v166 = v165 ^ 0xB6B6B6B6;
  v167 = (v124 & v166) << v126;
  STACK[0x6E8] = v166;
  v168 = v166 & STACK[0x7D8];
  STACK[0x4C0] = v167;
  v169 = (v167 + (v168 >> v125)) ^ LODWORD(STACK[0x520]) ^ *(v63 + ((v129 >> 22) & 0x3FC));
  STACK[0x848] = (-424840299 * (LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x838]))) ^ (-424840299 * LODWORD(STACK[0x720])) ^ v94 ^ LODWORD(STACK[0x4F8]) ^ __ROR4__(*(v63 + 4 * v137), 24) ^ ((v163 ^ 0x9CFEA72F ^ v162) + 2 * (v162 & (v163 ^ 0x1CFEA72F)));
  v170 = BYTE2(v129) | (-65 * ((v150 + 2) | v150));
  v171 = STACK[0x600];
  v172 = LODWORD(STACK[0x600]) << STACK[0x840];
  v173 = LODWORD(STACK[0x600]) >> v75;
  STACK[0x4A0] = v172;
  v174 = v173 | v172;
  STACK[0x450] = v174;
  if (v145)
  {
    v174 = v171;
  }

  else
  {
    v174 = v174;
  }

  STACK[0x478] = v174;
  v145 = v170 == 0;
  LODWORD(STACK[0x520]) = (v155 + 2 * v154) ^ __ROR4__(*(v63 + 4 * BYTE2(v157)), 8);
  v175 = *(v63 + 4 * (v147 ^ v94));
  v176 = *(v63 + 4 * BYTE1(v137));
  v177 = __ROR4__(*(v63 + 4 * BYTE2(v134)), 8);
  LODWORD(STACK[0x570]) = v94;
  v178 = (v169 ^ __ROR4__(v175, 24) ^ v177 ^ v94 ^ __ROR4__(v176, 16)) + 47103815 * v164;
  v179 = !v145;
  v180 = *(STACK[0x948] + 8 * ((4039 * v179) ^ LODWORD(STACK[0x890])));
  STACK[0x7C8] = v129;
  STACK[0x768] = v164;
  STACK[0x498] = v178;
  LODWORD(STACK[0x4C8]) = v178 - 47103815 * v164;
  v181 = STACK[0x818] & 0x6D6D6D6C;
  STACK[0x490] = v181;
  STACK[0x6F8] = (v181 ^ 0xB6B6B6B6) & STACK[0x760];
  return v180();
}

uint64_t sub_C8D38()
{
  v5 = *(v0 + 4 * (v2 - 1));
  *(v0 + 4 * v2) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v0 + 4 * v2)) - v2;
  v6 = 1879456961 * ((((v4 - 208) | 0xDBE20F5AFD1D9E87) - ((v4 - 208) & 0xDBE20F5AFD1D9E87)) ^ 0x7C849E28AED7C0E0);
  v7 = v4 - 208;
  *(v7 + 36) = ((v3 - 2145381578) ^ 0x86) + v6;
  *(v7 + 8) = v6 ^ 0x26F;
  *(v7 + 16) = (v2 + 1) ^ v6;
  *v7 = 431960922 - v6 + v3;
  *(v7 + 4) = ((v3 - 2145381578) ^ 0x16) - v6;
  *(v7 + 24) = v6 ^ 1;
  *(v7 + 28) = (v3 - 2145381578) ^ v6;
  v8 = (*(v1 + 8 * (v3 - 2038112786)))(v4 - 208);
  return (*(STACK[0x948] + 8 * *(v4 - 176)))(v8);
}

uint64_t sub_C8E38@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = a1 + v2 + 1147;
  *(v3 + 8) = (v2 + 1630020084) ^ (1938608989 * ((2 * ((v4 - 208) & 0x6DCF14C8) - (v4 - 208) - 1842287824) ^ 0xE810B5C6));
  *v3 = a2;
  v7 = (*(v5 + 8 * (v2 - 2038112724)))(v4 - 208);
  return (*(STACK[0x948] + 8 * v6))(v7);
}

uint64_t sub_C8ED8@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v15 - 116) = v14 - 434465113 * a9 + 323;
  *(v15 - 128) = &a12;
  v17 = (*(v13 + 8 * (v14 + 2267)))(v15 - 128);
  v19 = (*(v15 - 120) ^ v12) < 7 && a1 < 0x10;
  return (*(v13 + 8 * ((3646 * v19) ^ (v14 + 1357))))(v17);
}

uint64_t sub_C8F48()
{
  v4 = v1 & 0x7A33ECED;
  v5 = (v1 & 0x7A33ECED) - 264417927;
  v6 = LODWORD(STACK[0xF2C]);
  LODWORD(STACK[0x768]) = v6 + v0;
  v7 = v2[72];
  STACK[0x8F8] = *(v7 + 240);
  LODWORD(STACK[0x8D0]) = *(v7 + 248);
  v8 = v2[7];
  v2[63] = v6;
  v9 = STACK[0xA58];
  STACK[0x760] = *(v7 + 496);
  v10 = *(v3 + 8 * v4);
  STACK[0x8E8] = v10;
  STACK[0xC30] = v10;
  return (*(v3 + 8 * ((v5 + 264418704) ^ v4)))();
}

uint64_t sub_C8FD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = v7[155];
  v10 = v7[104];
  v11 = STACK[0x988];
  v12 = v7[48];
  v7[55] = *(v8 + 8 * (a7 + a4));
  return (*(v8 + 8 * (((a7 + a4 + 637) ^ 0x4E3) + a7 + a4)))(v11);
}

uint64_t sub_C900C()
{
  v4 = (*(v3 + 8 * (v2 ^ 0x8C6)))(v0);
  v5 = STACK[0x948];
  *(v1 + 496) = v4;
  *(v1 + 504) = v0;
  return (*(v5 + 8 * (((v4 == 0) * (v2 - 4 + ((v2 - 657) | 0x495) - 1776)) ^ v2)))();
}

uint64_t sub_C910C()
{
  STACK[0x978] = v0 - 80811406 + ((v2 - 1552506870) & 0xE7DF3F7E);
  v6 = (*(v5 + 8 * (v4 + v2 - 12)))(v1);
  v7 = STACK[0x948];
  STACK[0xC40] = 0;
  v8 = *(v7 + 8 * (v4 + v2 - 457));
  LODWORD(STACK[0x8D0]) = v3 + 1;
  return v8(v6);
}

uint64_t sub_C9174(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = STACK[0x938];
  v7 = vld1q_dup_f32(v6);
  v8.n128_u64[0] = 0x8000000080000000;
  v8.n128_u64[1] = 0x8000000080000000;
  return (*(a1 + 8 * (v5 - 2038114827)))(v7, a3, a4, a5, v8, *&STACK[0x8A0], *&STACK[0x890], *&STACK[0x880]);
}

uint64_t sub_C91FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v25 = ((23 * (((v21 - 2168) | 0xE8) ^ 0x1FB)) ^ (v23 + 97)) + 390834099 * *(v20 + 12);
  v26 = 1600728529 * ((v24 - 128) ^ 0x8535CA41);
  *(v24 - 112) = &a19;
  *(v24 - 120) = (v21 + 2065904030) ^ v26;
  *(v24 - 128) = v25 ^ v26;
  v27 = (*(v22 + 8 * (v21 ^ 0x3C3)))(v24 - 128);
  *(v19 + 68) = *(v24 - 124);
  return (*(v22 + 8 * ((237 * (*(a14 + 1044 * a13 + 12) == 0)) ^ v21)))(v27);
}

uint64_t sub_C92C4@<X0>(char a1@<W8>)
{
  v5[221] = v2;
  v5[222] = v4;
  v5[175] = v3;
  LOBYTE(STACK[0x10DF]) = a1;
  v7 = STACK[0x978];
  v8 = &STACK[0x1190] + STACK[0x978];
  v5[37] = v8;
  v5[224] = v8;
  v5[225] = v8 + 3072;
  STACK[0x978] = v7 + 3136;
  v9 = (*(v6 + 8 * (v1 ^ 0x3CC)))(v8, 0, 3072);
  v10 = STACK[0x948];
  LODWORD(STACK[0xBC4]) = 65021204;
  STACK[0xF78] = 0;
  LODWORD(STACK[0x99C]) = 0;
  STACK[0xC40] = 0;
  return (*(v10 + 8 * ((58 * (((v2 == 0) ^ (v1 + 5)) & 1)) ^ v1)))(v9);
}

uint64_t sub_C93C0@<X0>(int a1@<W8>)
{
  v3 = ((STACK[0x8F0] + a1) ^ 0xFF9FFFCFFFDFFF7FLL) + 0x65FB7373FEA6FFC0 + ((2 * (STACK[0x8F0] + a1)) & 0x1FFBFFEFELL);
  v4 = ((2 * (LODWORD(STACK[0x8B0]) + a1 - 219181076)) & 0x1BFE9EFEELL) + 0x76EEFAED6FBFD8FDLL + ((((v1 + 2071981473) & STACK[0x8D0]) - 0x30044820998634AELL) ^ (LODWORD(STACK[0x8B0]) + a1 - 219181076));
  v5 = STACK[0x8C0];
  v6 = STACK[0x8E8];
  return (*(v2 + 8 * (v1 ^ 0x322)))();
}

uint64_t sub_C94F0(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = *a3;
  v10 = a3[1];
  if (v3 > v5 != (v10 + *a3) > 0x60004466)
  {
    v11 = (v10 + v9) > 0x60004466;
  }

  else
  {
    v11 = ((v6 - v7 + 436137857) & 0x6C85E5FF ^ 0x9FFFBE20) + v10 + v9 > v4;
  }

  return (*(v8 + 8 * ((56 * v11) ^ v6)))();
}

uint64_t sub_C957C@<X0>(void *a1@<X1>, uint64_t a2@<X4>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v21 = v5 + v10 + v6;
  v22 = *(*a1 + (((v21 & 0xFFFFFFF8 ^ 0x1FC83129) + 1450114202 + ((2 * (v21 & 0xFFFFFFF8)) | 0xC06F9DAD)) & *v15));
  v23 = (a3 + v9 - 1391) ^ 0xEA1381CC1A0A3650 ^ (__ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8) + v22);
  v24 = (v11 - (v23 | v11) + (v23 | 0x1A6A501A96FE0D5CLL)) ^ 0xF8E6948D544FA7BCLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a2;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v19;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v14;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (v17 - ((v33 + v34) | v17) + ((v33 + v34) | 0xA10D47400A4D1511)) ^ 0x2E8F2A08D6E05517;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *(a5 + v10 + v7) = (((__ROR8__((v37 + v36 - ((2 * (v37 + v36)) & 0xD596F87371595CE2) + v13) ^ v12, 8) + ((v37 + v36 - ((2 * (v37 + v36)) & 0xD596F87371595CE2) + v13) ^ v12 ^ __ROR8__(v36, 61))) ^ v16) >> (8 * (v21 & 7u))) ^ *v21;
  return (*(v20 + 8 * ((31 * (((v10 + 1) ^ v8) == v18)) ^ v9)))();
}

uint64_t sub_C9718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = a3 + 260;
  v6 = (a3 + 260) ^ 0xF6F1473B;
  v7 = (*(v4 + 8 * (a3 + 1886756842)))(a1, a2, LODWORD(STACK[0xA3C]), -1);
  return (*(STACK[0x948] + 8 * ((v6 + v3) ^ v5 ^ (101 * (v5 < 0xF32A99CE)))))(v7);
}

uint64_t sub_C978C@<X0>(uint64_t a1@<X3>, _DWORD *a2@<X5>, int a3@<W8>)
{
  v4 = a2[396] ^ ((*a2 & 0x7FFFFFFE | a2[623] & 0x80000000) >> 1);
  a2[623] = (v4 + (((v3 + 421210673) | 0x60600005) ^ 0xE309A573) - (a3 & (2 * v4))) ^ *(&STACK[0x1164] + (*a2 & 1));
  return (*(a1 + 8 * (v3 ^ 0x37A ^ (71 * ((((LODWORD(STACK[0xEB4]) | v3) - v3) | (LODWORD(STACK[0xEB4]) | ~v3) & (v3 - LODWORD(STACK[0xEB4]))) >= 0)))))();
}

uint64_t sub_C9878@<X0>(int a1@<W8>)
{
  *v2 = (*v1 ^ 0x7F) + 2 * *v1 - 17;
  v6 = v4[158];
  v7 = v4[201];
  v8 = v4[71] + v7;
  v9 = v4[164] + v7;
  v10 = LODWORD(STACK[0x1020]);
  return (*(v5 + 8 * (a1 ^ (v3 + 1912) ^ a1 ^ (v3 + 2416))))();
}

uint64_t sub_C9910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *STACK[0x10C0] = a4;
  v6 = ((STACK[0x1010] ^ 0x9F73851442AEFD01) + 0x608C7AEBBD5102FFLL) ^ ((STACK[0x1010] ^ 0x910FD9E714086410) + 0x6EF02618EBF79BF0) ^ ((STACK[0x1010] ^ 0xC9286A7BA78EB374) + 0x36D7958458714C8CLL);
  return (*(a3 + 8 * (v4 + v5 + 991)))(0x3A0003E706956F45, 0x3A0003E706956F45);
}

uint64_t sub_C9ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, uint64_t a25)
{
  v30 = 1600728529 * (((&a22 | 0x1A920F7C) - &a22 + (&a22 & 0xE56DF080)) ^ 0x9FA7C53D);
  a24 = (v26 + 2065905810) ^ v30;
  a22 = v30 ^ v28;
  a25 = v27;
  v31 = (*(v25 + 8 * (v26 + 2103)))(&a22);
  return (*(v25 + 8 * ((47 * (a23 == ((v26 + 306807130) & 0xEDB67E63 ^ (v29 - 574)))) ^ v26)))(v31);
}

uint64_t sub_C9B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1160);
  *(v1 + 648) = *(v2 + 8 * a1);
  return (*(v2 + 8 * (a1 + ((a1 - 584856738) & 0x22DC365F) + 43)))();
}

uint64_t sub_C9C10(uint64_t a1)
{
  (*(v3 + 8 * (v2 ^ 0xE05)))(*(a1 + 1120));
  v5 = STACK[0x948];
  *(a1 + 1120) = 0;
  *(a1 + 1132) = 0;
  return (*(v5 + 8 * v2))(*(v1 + 160));
}

uint64_t sub_C9C58(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = LODWORD(STACK[0xE08]);
  v10 = *(v7 + 1528);
  v11 = *(v7 + 1536);
  return (*(v8 + 8 * (a4 + a7 + 585)))();
}

uint64_t sub_C9D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = LODWORD(STACK[0xEB4]);
  LODWORD(STACK[0xEB4]) = v11 + 1;
  v12 = *(a6 + 4 * v11);
  *(STACK[0x378] - 1048792407) = v11 + 1635019062;
  v13 = *(v8 - 1395893271);
  v14 = 434465113 * ((2 * ((v10 - 208) & 0x5162FFCD6CF33558) - (v10 - 208) + 0x2E9D0032930CCAA1) ^ 0x27BBA9ED66AEE0FELL);
  *(v7 + 40) = ((v6 - 495835957) ^ 0xA4) - 434465113 * ((2 * ((v10 - 208) & 0x6CF33558) - (v10 - 208) - 1827878239) ^ 0x66AEE0FE);
  *v7 = (v6 - 495835986) ^ (434465113 * ((2 * ((v10 - 208) & 0x6CF33558) - (v10 - 208) - 1827878239) ^ 0x66AEE0FE));
  *(v7 + 4) = v6 - 495835957 - 434465113 * ((2 * ((v10 - 208) & 0x6CF33558) - (v10 - 208) - 1827878239) ^ 0x66AEE0FE);
  *(v7 + 32) = v14 + 5119;
  *(v7 + 28) = -434465113 * ((2 * ((v10 - 208) & 0x6CF33558) - (v10 - 208) - 1827878239) ^ 0x66AEE0FE);
  *(v7 + 16) = v13 - v14;
  *(v7 + 8) = 434465113 * ((2 * ((v10 - 208) & 0x6CF33558) - (v10 - 208) - 1827878239) ^ 0x66AEE0FE) + v6 + 1596328632;
  v15 = (*(a4 + 8 * (v6 + v9)))(v10 - 208);
  return (*(STACK[0x948] + 8 * *(v7 + 24)))(v15);
}

uint64_t sub_C9EA8@<X0>(int a1@<W8>)
{
  *(*v3 + 256) = *v1;
  *(*v3 + 252) = v2;
  return (*(v5 + 8 * (((*(v4 + 608) != 0) * ((a1 + 176) ^ 0x523)) ^ a1)))();
}

uint64_t sub_CA1C0@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 40);
  *(v3 + 984) = a2 + 40;
  return (*(v4 + 8 * (((v5 == 0) * ((a1 + v2 - 1235) ^ (a1 - 1918) ^ (5 * (v2 ^ 0x53A)))) ^ v2)))();
}

uint64_t sub_CA208(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = ((v8 ^ 0xFFEu) + 2111129 + 1645 * a1 + 944) % 0xA88;
  v11 = *v7;
  v12 = (v10 ^ 0x1949C9F3FBF7FFEFLL) + STACK[0x520] + ((2 * v10) & 0x1FDE);
  v13 = *STACK[0x538];
  v14 = *(v13 + (v11 & v9));
  v15 = *a7 ^ 0xF1E76555;
  v17 = v9 + 2;
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 67633169 + v14 + v9) & v15)) ^ *(v12 - 0x2429F69653AEA95BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + 67633169 + v14 + v9 + 2) & v15)) ^ (110 * (v12 + 17));
  v18 = STACK[0x518] + 4 * ((551 * (((v12 ^ 0x1E5DBC35) + 134329103) ^ ((v12 ^ 0x6D15034A) + 2068384882) ^ ((v12 ^ 0x7348BF39) + 1695854595)) - 537331416) % 0x1D48);
  v19 = *(v13 + (v11 & STACK[0x540]));
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + a3) & v15)) ^ *(v18 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v19 + 1527793161) & v15));
  v20 = 1645 * (((v12 ^ (11565 * v18)) >> 8) ^ 0x6B) + 3391990;
  v21 = v20 - 2696 * (((12744711 * v20) >> 32) >> 3);
  v22 = 1645 * (((v12 ^ (16198957 * v18)) >> 16) ^ 0xE7) + 3391990;
  LODWORD(v13) = 1645 * (((((v12 ^ (1912024365 * v18)) >> 24) ^ 0x974DCDB7) - 1337381174) ^ ((((v12 ^ (1912024365 * v18)) >> 24) ^ 0xD3D95050) - 186797265) ^ ((((v12 ^ (1912024365 * v18)) >> 24) ^ 0x44949DCD) + 1670414004)) + 1170929861;
  v23 = (v12 ^ (45 * v18));
  v24 = (v21 ^ 0xFFFFEFF7DA77FF59) + STACK[0x520] + ((2 * v21) & 0x1EB2);
  v25 = v22 - 2696 * (((12744711 * v22) >> 32) >> 3);
  v26 = *(v24 - 0xAE01C9A322EA8C5);
  v27 = (v25 ^ 0xBFFDAFCFA7773BEBLL) + STACK[0x520] + ((2 * v25) & 0x17D6);
  v28 = v24 + 629670055;
  v29 = (551 * a1 + 710790) % 0x3A90u;
  v30 = ((v13 % 0xA88) ^ 0xDBDFBDFFF7FF6DAFLL) + STACK[0x520] + ((2 * (v13 % 0xA88)) & 0x1B5E);
  v31 = ((*(v27 + 0x3522238E00D21AA9) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 1485358101 + v14 + 1186175272) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 1485358101 + v14 + v17) & v15)) ^ (110 * (v27 + 21)) ^ 0x46) << 8) | ((*(v30 + 0x1940155DB049E8E5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + 134255185 + v14 + 1186175272) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v30 + 134255185 + v14 + v17) & v15)) ^ (110 * (v30 + 81)) ^ 0x46) << 16);
  v32 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + v14 + 1186175272) & v15)) ^ v26 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + v14 + v9 + 2) & v15)) ^ (110 * v28) ^ 0x93A249;
  v34 = STACK[0x530];
  if (v29 >> 3 >= 0x3A9)
  {
    v29 -= 7496;
  }

  v33 = (1645 * (((v23 ^ 0xBBF6E34E) + 197190856) ^ ((v23 ^ 0x6AFD9B95) - 624190435) ^ ((v23 ^ 0xD10B78F1) + 1631420281)) - 1257985758) % 0xA88;
  v36 = (v33 ^ 0x667F3BF79F7BF8EBLL) + STACK[0x520] + ((2 * v33) & 0x11D6);
  v16 = qword_191540 ^ 0xDDC772C6444EEA48;
  v35 = v31 ^ 0x9FBAFF;
  *(STACK[0x518] + 4 * v29 - 0x40E8C283FA03C307) = (1912024365 * (LODWORD(STACK[0x518]) + 4 * v29)) ^ *(v16 + ((v19 + LODWORD(STACK[0x518]) + 4 * v29 + LODWORD(STACK[0x52C])) & v15)) ^ *(v16 + ((v19 + LODWORD(STACK[0x518]) + 4 * v29 + 1527793161) & v15)) ^ 0x9D00A434 ^ ((((v35 & v32 | v31 & 0x6C5D00) << 8) ^ 0x2445C0FF) & (*(v16 + ((v36 + 1619265301 + v14 + 1186175272) & v15)) ^ *(v36 - 0x715F6899F732A257) ^ *(v16 + ((v36 + 1619265301 + v14 + v17) & v15)) ^ (110 * (v36 + 21)) ^ 0xB7E5CC58) | ((v35 & v32 | v31 & 0x6C5D00) << 8) & 0x481A3300);
  return (*(STACK[0x548] + 8 * ((a1 != 255) ^ v8)))();
}

uint64_t sub_CA848@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v7 = a1 + v2 + 504;
  *(v3 + 8) = (v2 + 1630020084) ^ (1938608989 * ((((2 * (v5 - 208)) | 0x4500865C) - (v5 - 208) - 578831150) ^ 0x58A01DD8));
  *v3 = a2;
  v8 = (*(v6 + 8 * (v4 + v2 + 41)))(v5 - 208);
  return (*(STACK[0x948] + 8 * v7))(v8);
}

uint64_t sub_CA990@<X0>(uint64_t a1@<X1>, int a2@<W2>, void *a3@<X6>, int a4@<W8>)
{
  v6 = STACK[0x518] + 4 * ((551 * v5 + v4) % 0x1D48u);
  v7 = STACK[0x518] + 4 * ((551 * v5 + 2977604) % 0x1D48u);
  v8 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v9 = *a3 ^ 0xF1E76555;
  v10 = (v7 + v8 + a2) & v9;
  v11 = LODWORD(STACK[0x52C]);
  *(v7 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v10) ^ *(v6 + a1) ^ (1912024365 * v7) ^ (1912024365 * v6) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v7 + v8 + 1527793161) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v8 + LODWORD(STACK[0x52C])) & v9)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v8 + 1527793161) & v9));
  return (*(STACK[0x548] + 8 * ((39 * (v5 != 255)) ^ a4)))(0);
}

uint64_t sub_CAB20(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4 + v4 + 109;
  LODWORD(STACK[0xFEC]) = v5;
  v9 = STACK[0x988];
  v10 = STACK[0x9D0];
  *(v6 + 1488) = *(v7 + 8 * v8);
  v11 = STACK[0x368];
  return (*(v7 + 8 * (((v4 - 869858566) & 0xBA5DD06F ^ 0x74) + v8)))();
}

uint64_t sub_CABE0@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = a1 + v3 + 1078;
  *(v2 + 8) = (v3 + 1630020084) ^ (1938608989 * ((v4 - 1678917799 - 2 * ((v4 - 208) & 0x9BEDC029)) ^ 0xE1CD9EDF));
  *v2 = a2;
  v7 = (*(v5 + 8 * (v3 - 2038112724)))(v4 - 208);
  return (*(STACK[0x948] + 8 * v6))(v7);
}

uint64_t sub_CAC78@<X0>(uint64_t a1@<X1>, void *a2@<X6>, int a3@<W8>)
{
  v8 = STACK[0x518] + 4 * ((v6 + 551 * v4) % 0x1D48u);
  v9 = *v3;
  v10 = (1645 * v4 + 845530) % (a3 + 643);
  v11 = *STACK[0x538];
  v12 = STACK[0x530];
  v13 = (v8 + *(v11 + (v9 & STACK[0x540])) + v5);
  v14 = *a2 ^ 0xF1E76555;
  v15 = (v10 ^ 0x7BB7F7FDF0BCDDD7) + STACK[0x520] + ((2 * v10) & 0x1BAE);
  v16 = (*(v11 + (v9 & v7)) + v7 + v15 + 256057897);
  *(v15 + 0x7967DB5FB78C78BDLL) = (110 * (v15 + 41)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v13 - 2) & v14)) ^ *(v8 + a1) ^ (45 * v8) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v13 & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + (v16 & v14)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + 2) & v14)) ^ 0x6C;
  return (*(STACK[0x548] + 8 * ((1430 * (v4 == 255)) ^ (a3 - 1187))))();
}

uint64_t sub_CAE6C()
{
  STACK[0x8D0] = v3;
  LODWORD(STACK[0x8F8]) = v4;
  LODWORD(STACK[0x8F0]) = v0;
  LODWORD(STACK[0x8E8]) = v0 ^ 0x4B5F60F9;
  v2[13] = v0 ^ 0x4B5F60F9;
  LODWORD(STACK[0x8C0]) = v6 - 732;
  v9 = STACK[0x930];
  *v1 = STACK[0x930];
  *(v1 + 12) = v6 - 732 - 434465113 * ((v7 - 1359029919 - 2 * ((v7 - 208) & 0xAEFEDA31)) ^ 0x5B5CF06E);
  (*(v8 + 8 * (v6 + 1212)))(v7 - 208);
  *v5 = *(v1 + 8) ^ 0x4B5F60F9;
  *(v1 + 12) = v6 + 853793116 - 1600728529 * ((((v7 - 208) | 0x8B597613) - ((v7 - 208) & 0x8B597613)) ^ 0xE6CBC52);
  *v1 = v9;
  (*(STACK[0x948] + 8 * (v6 ^ 0xCCF)))(v7 - 208);
  v2[14] = *(v1 + 8) ^ 0xC0403EE8;
  *(v1 + 12) = v6 + 853793116 - 1600728529 * ((-1875644006 - ((v7 - 208) | 0x9033F19A) + LODWORD(STACK[0x900])) ^ 0xEAF9C424);
  *v1 = v9;
  (*(STACK[0x948] + 8 * (v6 + 1217)))(v7 - 208);
  v2[15] = *(v1 + 8) ^ 0xC0403EE8;
  *(v1 + 12) = LODWORD(STACK[0x8C0]) - 434465113 * ((v7 - 659119456 - 2 * ((v7 - 208) & 0xD8B6A370)) ^ 0x2D14892F);
  *v1 = v9;
  v10 = (*(STACK[0x948] + 8 * (v6 + 1212)))(v7 - 208);
  v11 = STACK[0x948];
  v12 = *(v1 + 8);
  v2[16] = v12 ^ 0x4B5F60F9;
  return (*(v11 + 8 * (((v12 == 1264541945) * ((((v6 - 1157) | 0x42D) ^ 0xFFFFFAD7) + ((v6 + 1892683512) & 0x8F2FEB9F))) ^ v6)))(v10);
}

uint64_t sub_CB0E4@<X0>(int a1@<W3>, int a2@<W6>, uint64_t a3@<X8>)
{
  v6 = a1 + v3 + 370;
  v7 = v4 - 208;
  *(v7 + 8) = (v3 + 1630020084) ^ (1938608989 * ((v4 - 208) ^ 0x7A205EF6));
  *v7 = a3;
  v8 = (*(v5 + 8 * (v3 ^ (a2 - 1585))))(v4 - 208);
  return (*(STACK[0x948] + 8 * v6))(v8);
}

uint64_t sub_CB16C@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 56);
  *(v3 + 944) = a2 + 56;
  return (*(v4 + 8 * (((a1 + ((v2 + 1627920152) | 0x18730C00) + ((v2 + 2141139570) & 0x8060CE07) - 2493) * (v5 == 0)) ^ v2)))();
}

uint64_t sub_CB2DC()
{
  v4 = (((v1 - 383) | 0xE) + 7964) * v0;
  *(v2 + 4 * ((((v4 + 48493774) % 0x34AFu) ^ 0x167F969BDFFBBFEFLL) + ((2 * ((v4 + 48493774) % 0x34AFu)) & 0x7FDE)) - 0x59FE5A6F7FEEFFBCLL) = *(v2 + 4 * ((((v4 + v3) % 0x34AFu) ^ 0x1B5D2DDF17EFBDF7) + ((2 * ((v4 + v3) % 0x34AFu)) & 0x7BEE)) - 0x6D74B77C5FBEF7DCLL);
  return (*(STACK[0x6C8] + 8 * ((230 * (v0 == 255)) ^ v1)))();
}

uint64_t sub_CB41C@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v7 = *(a1 + 8) ^ v6;
  v8 = *(a1 + 12) ^ v6;
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v3;
  a2[3] = v5;
  a2[4] = v3 + ((v4 - 2273) | 0x102) + (((v5 ^ 0x3AF5CFEF) - 989188079) ^ ((v5 ^ 0xE6257D64) + 433750684) ^ ((v5 ^ 0x2DC34B8F) - 767775179 + v4 - 709)) - 711268965;
  v9 = v8 - 1382110683 > (v7 - 1381396787);
  if ((v7 - 1381396787) < 0xE00BA28F != (v8 - 1382110683) < 0xE00BA28F)
  {
    v9 = (v8 - 1382110683) < 0xE00BA28F;
  }

  return (*(v2 + 8 * ((32 * !v9) | (!v9 << 6) | v4)))();
}

uint64_t sub_CB514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v20 - 124) = v17 - 1038736471 - 1183051249 * (((v19 | 0xF2DAE42C) - v19 + (v19 & 0xD251BD0)) ^ 0x173932F0);
  *(v20 - 120) = v18;
  (*(v16 + 8 * (v17 | 0x88A)))(v20 - 128);
  *(a16 + 948) = *(v20 - 128);
  *(v20 - 124) = v17 - 1038736471 - 1183051249 * ((((v19 | 0xD8D6775A) ^ 0xFFFFFFFE) - (~v19 | 0x272988A5)) ^ 0xC2CA5E79);
  *(v20 - 120) = v18;
  v21 = (*(v16 + 8 * (v17 ^ 0x88A)))(v20 - 128);
  v22 = *(v20 - 128);
  return (*(v16 + 8 * v17))(v21);
}

uint64_t sub_CB610@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9 = *(v7 + ((((v2 + 1940) | 0x120) ^ 0x4716C3u) + 3013 * a2) % 0x1188);
  v10 = 9002 * (v9 | ((v9 < 0x7D) << 8)) + 33505444 - ((((9002 * (v9 | ((v9 < 0x7D) << 8)) + 33505444) * v3) >> 32) >> 12) * v4;
  v11 = *(a1 + 4 * ((v10 ^ 0x5CEEED9E7EDEEBFLL) + ((2 * v10) & 0x5D7E)) - 0x173BBB679FB7BAFCLL);
  HIDWORD(v12) = v11;
  LODWORD(v12) = v11;
  HIDWORD(v12) = (v12 >> 18) & 0xC000003F ^ 0x11;
  LODWORD(v12) = HIDWORD(v12);
  v13 = 3013 * ~(v11 >> 8) + 10093550;
  v14 = ((v11 ^ 0x6DFD156B) - 1194939048) ^ ((v11 ^ 0x1E4F3CF2) - 881556273) ^ ((v11 ^ 0x73B2296F) - 1500933804);
  v15 = *(v7 + (3013 * (((HIBYTE(v11) ^ 0xE6099FED) - 499547684) ^ ((HIBYTE(v11) ^ 0xD0BC0D22) - 729017579) ^ ((HIBYTE(v11) ^ 0x36B592FB) + 847613134)) - 1236743521) % 0x1188);
  LOBYTE(v11) = *(v7 + (3013 * (v12 >> 30) + 10093550) % 0x1188);
  LOBYTE(v10) = (v15 & 0x83 | 0x64) ^ v15 & 0xC8;
  v16 = *(v7 + (3013 * v14 + 1488197303) % 0x1188u);
  v17 = v11 & 0x33 ^ 0xD8;
  v18 = (v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * ((v11 ^ 2) & (2 * v11) & 6 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17;
  v19 = v6 + 9002 * a2 - ((((v6 + 9002 * a2) * v3) >> 32) >> 12) * v4;
  LOBYTE(v13) = *(v7 + v13 - 4488 * (((30623653 * v13) >> 32) >> 5));
  LOBYTE(v10) = v15 ^ (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * ((v15 ^ 2) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v20 = v13 & 0x6D ^ 0xF5;
  v21 = (v13 ^ (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * ((v13 ^ 2) & (2 * (((2 * (v13 & 3)) ^ 0xEE) & (v13 ^ 2) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x6A44CF;
  v22 = v16 & 0x6F ^ 0x76;
  LOBYTE(v13) = v16 ^ 2;
  v23 = (((v11 ^ (2 * v18)) ^ 0x33) << 8) | ((v10 ^ 0x4B) << 16);
  v24 = v16 ^ (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * v16) & 6 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  *(v5 + 4 * ((v19 ^ 0x25EB7EDDFFF7BFFELL) + ((2 * v19) & 0x7FFC)) + 0x6852048800210008) = ((((v21 & ~v23 | v23 & 0x95BB00) << 8) ^ 0x741E1030) & (v24 ^ 0xFFFFFF1F) | v24 & 0xCF) ^ 0x2A1E4D89;
  return (*(v8 + 8 * ((793 * (((a2 + 1 - v2) | (v2 - (a2 + 1))) >= 0)) ^ (v2 | 0x870))))(0);
}

uint64_t sub_CBA1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = v7[155];
  v10 = v7[105];
  v11 = v7[104];
  v12 = v7[59];
  v7[55] = *(v8 + 8 * (a4 + a7 + 35));
  return (*(v8 + 8 * (a4 + a7 + 1694)))(v12);
}

uint64_t sub_CBBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v12 = *(v11 + 8 * ((((v9 ^ (a7 + 127)) + 218736355 + (v9 ^ (a7 + 127)) + 2932) * (v8 == v10)) ^ v9));
  STACK[0x900] = a8;
  return v12();
}

uint64_t sub_CBBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x870] = v6;
  v9 = v7 & 0x24E5 ^ 0xB537;
  v10 = v7 ^ 0x7ABE;
  *(a5 + 8) = (((v7 ^ (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (((((v5 - 79) | 0x2C04) + 19865) ^ v7) & ((2 * v7) & 0x757E ^ 0x5E5A) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) & 0xFFFC) >> 2) ^ 0x939;
  return (*(v8 + 8 * v5))();
}

uint64_t sub_CBD14@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v5 = (v3[77] + 24 * LODWORD(STACK[0xCBC]));
  *v5 = LODWORD(STACK[0xAA4]) + v2;
  v5[1] = 0;
  v3[194] = v5 + 1;
  v6 = v3[48];
  v3[183] = *(v4 + 8 * a2);
  return (*(v4 + 8 * (a2 ^ 0x49B ^ (a2 + 954))))(v5 + 2, a1, 938337180);
}

uint64_t sub_CBD9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v10 + 800) = v9;
  *(v10 + 752) = STACK[0x878];
  if (*v8)
  {
    v14 = STACK[0x368];
    return sub_AC74(a1, a2, a3, a4, a5, a6, a7, 2038115493);
  }

  else
  {
    *v8 = v7;
    *STACK[0x368] = 255;
    v16 = -4;
    v17 = v7;
    do
    {
      *v17 |= ~v7[*v17 & 0x3ELL] << 16;
      v17 += 4;
      v16 += 4;
    }

    while (v16 < 0x3B);
    STACK[0x978] += 16;
    STACK[0x116C] = 0x997ADD7E00726DA1;
    LODWORD(STACK[0xD58]) = *(STACK[0x378] - 1048792407) - 1635019061;
    v18 = *(v11 - 1395893271);
    v19 = 1913485891 * ((2 * ((v12 - 208) & 0x7CCAC5E5945D9530) - (v12 - 208) + 0x3353A1A6BA26ACCLL) ^ 0x2004C75DF64E8DE6);
    *(v12 - 184) = v19;
    *(v12 - 180) = ((a7 - 1799856827) ^ 0x6C) + v19;
    *(v12 - 208) = (a7 - 1799856827) ^ v19;
    *(v12 - 200) = v19;
    *(v12 - 176) = v18 ^ v19;
    *(v12 - 192) = 1507204927 - v19 + a7;
    *(v12 - 188) = v19 + a7 - 1799856827 - 54;
    v20 = (*(v13 + 8 * (a7 ^ (a7 - 1577))))(v12 - 208);
    return (*(STACK[0x948] + 8 * *(v12 - 168)))(v20);
  }
}

uint64_t sub_CBF54()
{
  *v2 = v0;
  *(v2 + 12) = v3 - 1016 + 853793204 - 1600728529 * (((v4 | 0xF507A193) - v4 + (v4 & 0xAF85E68)) ^ 0x70326BD2);
  v7 = v0;
  (*(v1 + 8 * (v3 ^ 0x36F)))(v6 - 208);
  *(v2 + 12) = v3 - ((((2 * v4) | 0x673C8430) - v4 - 866009624) ^ 0xC63C6847) * v5 - 1660;
  *v2 = v7;
  v8 = (*(STACK[0x948] + 8 * (v3 + 284)))(v6 - 208);
  return (*(STACK[0x948] + 8 * v3))(v8);
}

uint64_t sub_CC078(int a1, int a2)
{
  LODWORD(STACK[0x6B0]) = a2 - 1157;
  v4 = *(v3 + 4 * ((((v2 + 9002 * a1) % 0x34AFu) ^ 0x3FFDE7FABFB77BB8) + ((2 * ((v2 + 9002 * a1) % 0x34AFu)) & 0x7770)) + 0x8601501221120);
  *(STACK[0x6C0] + (((a2 - 1157) ^ 0xB1C9ECu) + 3013 * a1) % 0x1188) = (((v4 ^ 0xAF) + 100) ^ ((v4 ^ 0xC8) + 5) ^ ((v4 ^ 0x91) + 94)) + 66;
  return (*(STACK[0x6C8] + 8 * ((87 * (a1 != 255)) ^ a2)))();
}

uint64_t sub_CC1C4@<X0>(uint64_t *a1@<X8>)
{
  *(a1 + 16) = 0;
  *(v2 + 328) = a1 + 8;
  v4 = *a1;
  *(v2 + 1152) = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 + ((v1 - 1690173669) & 0x64BE09BE) - 2082)))();
}

uint64_t sub_CC27C()
{
  v5 = *(v4 + 8 * (((v3 == v0 + v1) * ((v0 ^ 0xD1) + 1275)) ^ v0));
  LODWORD(STACK[0x8F0]) = v2 - 3;
  return v5();
}

uint64_t sub_CC2B0@<X0>(int a1@<W3>, uint64_t a2@<X5>, int a3@<W8>)
{
  v5 = v3 - 779996819 - ((v3 - 779996819) >> 11) + ((v3 - 779996819 - ((v3 - 779996819) >> 11)) >> 5);
  v6 = v5 + 1095570192 + ((v5 + 1095570192) >> 11) - ((v5 + 1095570192 + ((v5 + 1095570192) >> 11)) >> 5);
  v7 = v6 + 1006549882 - ((v6 + 1006549882) >> 12) - ((v6 + 1006549882 - ((v6 + 1006549882) >> 12)) >> 2);
  v8 = ((v7 + 775069766 - ((v7 + 775069766) >> 15)) >> 4) + v7 + 775069766 - ((v7 + 775069766) >> 15) - 2 * ((v7 + 775069766 - ((v7 + 775069766) >> 15)) >> 4);
  v9 = v8 + 1569230082 - ((v8 + 1569230082) >> 14) + ((v8 + 1569230082 - ((v8 + 1569230082) >> 14)) >> 3);
  v10 = (v9 ^ 0xF88D31CF) - ((v9 ^ 0xF88D31CF) >> 8) - (((v9 ^ 0xF88D31CF) - ((v9 ^ 0xF88D31CF) >> 8)) >> 7);
  v11 = v10 + 1053811889 + ((v10 + 1053811889) >> 12) + ((v10 + 1053811889 + ((v10 + 1053811889) >> 12)) >> 8);
  v12 = (v11 ^ 0x7F5FFAAC) - ((v11 ^ 0x7F5FFAAC) >> 13) - (((v11 ^ 0x7F5FFAAC) - ((v11 ^ 0x7F5FFAAC) >> 13)) >> 8);
  LODWORD(STACK[0x760]) = v12 - 1160937590;
  v13 = (((v12 - 1160937590) >> 11) + v12 - 1160937590) >> (((v12 - 1160937590) >> 11) & 3) >> (((v12 - 1160937590) >> 11) & 3 ^ 3);
  v14 = STACK[0x3D8];
  v15 = (((*(STACK[0x3D8] + 9) + 110) ^ 0xDC) + 3511) * ((v13 & 0x561 ^ 0x561) + (v13 & 0x561));
  HIDWORD(v16) = *(STACK[0x900] + v15 - (((7064091 * v15) >> 32) >> 3) * v4);
  LODWORD(v16) = (HIDWORD(v16) ^ 0x60) << 24;
  v17 = (*(STACK[0x3D8] + ((((v16 >> 29) ^ 8) + 11) & 0xF)) - 1) & 0xF;
  LODWORD(STACK[0x7C0]) = a1;
  v18 = *(v14 + ((*(v14 + v17) + 4) & 0xF)) - 61;
  v19 = ((2 * v18) & 0xC) + (v18 ^ 0xE);
  if ((v19 & 0xE) != 0)
  {
    v20 = v19 & 0xF;
  }

  else
  {
    v20 = 1;
  }

  STACK[0x8F8] = v20;
  v21 = *(a2 + 8 * a3);
  LODWORD(STACK[0x860]) = 99 * (a3 ^ 0x7E9);
  return v21();
}

uint64_t sub_CC524@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, unint64_t a4@<X4>, unint64_t a5@<X6>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x730]) = v7;
  STACK[0x570] = a5;
  LODWORD(STACK[0x478]) = v16;
  LODWORD(STACK[0x480]) = v15;
  LODWORD(STACK[0x4F8]) = a1;
  STACK[0x688] = a4;
  LODWORD(STACK[0x700]) = v9;
  LODWORD(STACK[0x5C8]) = v14;
  LODWORD(STACK[0x5E0]) = a7;
  LODWORD(STACK[0x790]) = v12;
  LODWORD(STACK[0x800]) = a3;
  STACK[0x738] = v8;
  STACK[0x7C8] = v13;
  v17 = STACK[0x808];
  v18 = LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x668]) ^ LODWORD(STACK[0x728]);
  v24 = 16843009 * STACK[0x7F0];
  v19 = STACK[0x640];
  LODWORD(STACK[0x7F8]) = STACK[0x628] ^ STACK[0x620] ^ LODWORD(STACK[0x780]);
  LODWORD(STACK[0x728]) = v18;
  LODWORD(STACK[0x640]) = v18 ^ LODWORD(STACK[0x610]);
  v20 = (v17 ^ 0x3A562C) + (*(STACK[0x778] + 1) ^ 0x9D) * v11;
  v21 = (STACK[0x6D8] + 1431557064) | STACK[0x6D8] | v10;
  STACK[0x518] = (v20 - ((226050911 * (v20 >> 8)) >> 32) * a6);
  v22 = *(STACK[0x948] + 8 * ((2 * (((v21 == 0) ^ (v17 - 1)) & 1)) & 0xF7 | (8 * (((v21 == 0) ^ (v17 - 1)) & 1)) | v17));
  STACK[0x5C0] = STACK[0x5D0] + 12;
  return v22(a2, 555685);
}

uint64_t sub_CC6F0@<X0>(int a1@<W0>, void *a2@<X6>, int a3@<W8>)
{
  v8 = (((1645 * a3 + 2113825) % 0xA88u) ^ (20 * (a1 ^ 0x69Bu) + 0x4F8F35BD973FDAD7)) + v7 + ((2 * ((1645 * a3 + 2113825) % 0xA88u)) & 0x1CDE);
  v9 = *v3;
  v10 = *STACK[0x538];
  v11 = *(v10 + (v9 & v5));
  v12 = *a2 ^ 0xF1E76555;
  v13 = v5 + 2;
  LODWORD(v8) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + 1757421969 + v11 + v5) & v12)) ^ *(v8 - 0x5A6F625FEEF687DBLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v8 + 1757421969 + v11 + v5 + 2) & v12)) ^ (110 * (v8 - 111));
  LODWORD(v8) = 551 * (((v8 ^ 0xFB49E7F9) + 970100836) ^ ((v8 ^ 0x3E1DD5D4) - 58285489) ^ ((v8 ^ 0xC554326B) + 131024370)) + 593988532;
  v14 = STACK[0x518] + 4 * (v8 - ((((v8 >> 3) * v4) >> 32) >> 7) * v6);
  v15 = *(v10 + (v9 & STACK[0x540]));
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v14 + v15 + LODWORD(STACK[0x52C])) & v12)) ^ *(v14 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v14 + v15 + 1527793161) & v12));
  LODWORD(v10) = 1645 * (((v9 ^ (16198957 * v14)) >> 16) ^ 0xE7) + 3391990;
  LODWORD(v8) = 1645 * (((v9 ^ (11565 * v14)) >> 8) ^ 0x6B) + 3391990;
  v16 = v8 - 2696 * (((12744711 * v8) >> 32) >> 3);
  v17 = (v16 ^ 0xF4DF7FB4EFC993DFLL) + v7 + ((2 * v16) & 0x7BE);
  v18 = 1645 * (((((v9 ^ (1912024365 * v14)) >> 24) ^ 0xE001CECD) - 1758301527) ^ ((((v9 ^ (1912024365 * v14)) >> 24) ^ 0x353B096F) + 1107866891) ^ ((((v9 ^ (1912024365 * v14)) >> 24) ^ 0xD53AC788) - 1576436754)) + 146977766;
  v19 = *(v17 + 0x4053A8B87FC2B5);
  LODWORD(v14) = (v9 ^ (45 * v14));
  v20 = v17 + 272002081;
  v21 = v10 - 2696 * (((12744711 * v10) >> 32) >> 3);
  v22 = ((v18 % 0xA88) ^ 0x6BA655DFEFFE7EE6) + v7 + ((2 * (v18 % 0xA88)) & 0x1DCC);
  v23 = (v20 + v11 + v5) & v12;
  v24 = v22 + 268534042;
  v25 = (v21 ^ 0xB3A1E8FFFFCF7288) + v7 + ((2 * v21) & 0x510);
  v26 = (1645 * (((v14 ^ 0x99359457) + 541460326) ^ ((v14 ^ 0x1CE3680A) - 1517225159) ^ ((v14 ^ 0x85D6FC77) + 1017474886)) + 1418431057) % 0xA88;
  v27 = STACK[0x530];
  v28 = (v26 ^ 0xDF2B7FEFD5FDDF4FLL) + v7 + ((2 * v26) & 0x1E9E);
  LODWORD(v25) = ((*(v25 + 0x417DEA5DA879E40CLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 3181944 + v11 + 1186175272) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 3181944 + v11 + v13) & v12)) ^ (110 * (v25 + 120)) ^ 0x46) << 8) | ((*(v22 - 0x7686828247B52852) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + v11 + 1186175272) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + v11 + v13) & v12)) ^ (110 * v24) ^ 0x46) << 16);
  LODWORD(v25) = ((*((qword_191540 ^ 0xDDC772C6444EEA48) + v23) ^ v19 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v20 + v11 + v13) & v12)) ^ (110 * v20) ^ 0xBB082B) & ~v25 | v25 & 0x44F700) << 8;
  v29 = (v25 ^ 0x44A690FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 704782513 + v11 + 1186175272) & v12)) ^ *(v28 + 0x15F4536DD24B7745) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v28 + 704782513 + v11 + v13) & v12)) ^ (110 * (v28 - 79)) ^ 0xEDA6F808);
  v30 = STACK[0x518] + 4 * (551 * a3 + 710790 - (((((551 * a3 + 710790) >> 3) * v4) >> 32) >> 7) * v6);
  *(v30 - 0x40E8C283FA03C307) = (1912024365 * v30) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v30 + LODWORD(STACK[0x52C])) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v30 + 1527793161) & v12)) ^ 0xD5499664 ^ (v29 | v25 & 0x12590700);
  return (*(STACK[0x548] + 8 * ((4004 * (a3 == 255)) ^ a1)))();
}

uint64_t sub_CCD0C@<X0>(uint64_t a1@<X8>)
{
  v4[83] = a1;
  v4[90] = v1;
  v4[17] = v2;
  v6 = *(v1 + 8);
  STACK[0x9C0] = v1 + 8;
  return (*(v5 + 8 * (((v6 == 0) * (((v3 - 1672449060) & 0x63AF8D9F) - 2081)) ^ v3)))();
}

uint64_t sub_CCD58()
{
  LODWORD(STACK[0x618]) = v0 & v3;
  v4 = STACK[0x3D8];
  v5 = 1377 * ((*(STACK[0x3D8] + ((((2 * *(STACK[0x3D8] + 8)) & 8) + (*(STACK[0x3D8] + 8) ^ 0xC)) & 0xF)) + 1) & 0xF ^ 0x23) + 5915592;
  v6 = STACK[0x648];
  LOBYTE(v5) = *(STACK[0x648] + v5 - 4864 * (((7064091 * v5) >> 32) >> 3));
  v7 = 1377 * ((*(STACK[0x3D8] + ((((((v5 ^ 0xD5) + 43) ^ ((v5 ^ 0x12) - 18) ^ ((v5 ^ 0xB1) + 79)) - 28) ^ 0xBC) + 102)) + 110) ^ 0xF1) + 2044845;
  LOBYTE(v7) = *(STACK[0x900] + v7 - 4864 * (((1766023 * v7) >> 32) >> 1));
  LODWORD(STACK[0x3F0]) = -106;
  LOBYTE(v5) = 49 * (((v7 ^ 0xB2) + 78) ^ ((v7 ^ 0x2A) - 42) ^ ((v7 ^ 0xEE) + 18)) - 106;
  LODWORD(STACK[0x3F8]) = 56;
  LOBYTE(v7) = 98 * (((v7 ^ 0x56) - 86) ^ ((v7 ^ 0x72) + 14) ^ ((v7 ^ 0x52) + 46)) + 56;
  LOBYTE(v7) = (v5 & 0xA3 ^ v7 & 0xA2 | (v5 ^ v7) & 0x5C) ^ 0x39;
  v8 = 1377 * ((((v7 >> 5) | (8 * v7)) - 7) ^ 0x23) + 5915592;
  LOBYTE(v8) = *(v6 + v8 - 4864 * (((7064091 * v8) >> 32) >> 3));
  v9 = *(v4 + (((((((v8 ^ 0x63) - 99) ^ ((v8 ^ 1) - 1) ^ ((v8 ^ 0x14) + 12)) + 4) ^ 0xC) + 6) & 0xF)) + 10;
  if ((v9 & 0xE) != 0)
  {
    v10 = v9 & 0xF;
  }

  else
  {
    v10 = 1;
  }

  return (*(v2 + 8 * v1))(v10 - 1, (v1 - 3) ^ 0x7A5u);
}

uint64_t sub_CD104@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x108C]) = v5;
  LODWORD(STACK[0x1088]) = a2;
  LODWORD(STACK[0x1084]) = v6;
  LODWORD(STACK[0xF2C]) = v4;
  LODWORD(STACK[0xA7C]) = v3;
  return (*(v7 + 8 * (((v3 < v2) * ((a1 ^ 0xF) - 2038115493 + ((a1 + 1211631065) | 0x314324A4) + 732)) ^ a1)))();
}

uint64_t sub_CD16C(unsigned int a1, uint64_t a2, int a3)
{
  if (a1 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return (*(v5 + 8 * a3))(a1 + 1, a2, v3 + 8 * a1, v6 - a1, -v6, a3 ^ 0x2F6u, ~a1);
}

uint64_t sub_CD1A0()
{
  v5 = (v2 - 82392827) & 0x4E93F5E;
  *(v4 - 128) = v3;
  *(v4 - 116) = 853792023 - 1600728529 * ((((2 * v0) | 0xBE9F5BC0) - v0 + 548426272) ^ 0x5A7A67A1) + v5;
  v6 = (*(v1 + 8 * (v5 ^ 0x84u)))(v4 - 128);
  return (*(v1 + 8 * (((*(v4 - 120) == ((v5 - 564) | 0x206) - 1069534006) * ((v5 - 46) ^ 0xA34)) ^ v5)))(v6);
}

uint64_t sub_CD274@<X0>(int a1@<W8>)
{
  v4 = (9002 * v1 + 16158590) % ((a1 ^ 0xF0Bu) + 11050);
  *(v3 + 4 * ((v4 ^ 0x3EBBC6E9B63AD2B2) + ((2 * v4) & 0x2564)) + 0x510E4592714B538) = *(v3 + 4 * ((((9002 * v1 + v2) % 0x34AFu) ^ 0x27FD737E77FFD77FLL) + ((2 * ((9002 * v1 + v2) % 0x34AFu)) & 0x2EFE)) + 0x600A32062000A204);
  return (*(STACK[0x6C8] + 8 * ((4019 * (v1 == 255)) ^ a1)))();
}

uint64_t sub_CD39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  LODWORD(STACK[0x4E0]) = 0;
  LODWORD(STACK[0x840]) = a7 + v40;
  LODWORD(STACK[0x830]) = v44 ^ 0x3D3D3D3D;
  v48 = (v47 + v46) >> 16;
  STACK[0x870] = (16843009 * a8);
  v49 = v47 + ((v47 + v45 + ((v47 + v46 - v48) >> 8) - v48) >> 12) + ((v47 + v46 - v48) >> 8);
  v50 = v42 + v41 + v49 + ((v49 - v48 + v45) >> (((v43 - 49) | 0xA4) ^ 0xA1)) - v48;
  v51 = (v50 ^ 0x900A5B5B) - ((v50 ^ 0x900A5B5B) >> 14) + (((v50 ^ 0x900A5B5B) - ((v50 ^ 0x900A5B5B) >> 14)) >> 3);
  v52 = v51 - 1889138897 + ((v51 - 1889138897) >> 14) - ((v51 - 1889138897 + ((v51 - 1889138897) >> 14)) >> 4);
  v53 = v51 ^ LODWORD(STACK[0x930]);
  v54 = v52 - 188601165 + ((v52 - 188601165) >> 15) - ((v52 - 188601165 + ((v52 - 188601165) >> 15)) >> 7);
  v55 = v50 ^ LODWORD(STACK[0x928]) ^ v54;
  v56 = v52 ^ LODWORD(STACK[0x940]);
  v57 = ((2 * v54) & 0xF8CC47A4) + (v54 ^ 0x7C6623D2) + ((((2 * v54) & 0xF8CC47A4) + (v54 ^ 0x7C6623D2)) >> 13);
  v58 = v57 + (v57 >> 1) - 454099051 - ((v57 + (v57 >> 1) - 454099051) >> 8) + ((v57 + (v57 >> 1) - 454099051 - ((v57 + (v57 >> 1) - 454099051) >> 8)) >> 7);
  v59 = v58 + 156621755 - ((v58 + 156621755) >> 12) + ((v58 + 156621755 - ((v58 + 156621755) >> 12)) >> 5);
  v60 = (v59 ^ 0x4DC46DBE) + ((v59 ^ 0x4DC46DBE) >> 8);
  LODWORD(STACK[0x354]) = v60 >> 6;
  v61 = v56 ^ v58;
  LODWORD(STACK[0x350]) = v61;
  LODWORD(STACK[0x7C0]) = ((((v60 >> 6) + v60) ^ 0x171FA213) + ((((v60 >> 6) + v60) ^ 0x171FA213) >> 14) - (((((v60 >> 6) + v60) ^ 0x171FA213) + ((((v60 >> 6) + v60) ^ 0x171FA213) >> 14)) >> 8)) ^ v61;
  v62 = (*(STACK[0x2C8] + ((*(STACK[0x2C8] + 10) + 11) & 0xF)) + 5) & 0xF;
  LOBYTE(v55) = *(STACK[0x900] + 1377 * (v62 ^ 0x32) + 3470040 - 4864 * (((1766023 * (1377 * (v62 ^ 0x32u) + 3470040)) >> 32) >> 1));
  v63 = (*(STACK[0x2C8] + ((*(STACK[0x2C8] + ((v55 & 0x7F ^ v62 ^ (v55 & 0x80 | 0x32) ^ 0xD) + 102)) + 14) & 0xF)) + 2) & 0xF;
  v64 = STACK[0x328];
  v65 = 0x60E8F2D7 % STACK[0x328];
  v66 = 1377 * (((2 * v65) & 0x90 ^ 0x180) + (v65 ^ 0x20A));
  v70 = 0xE89C5795 % STACK[0x328];
  v69 = ((((*(STACK[0x900] + (v66 - 4864 * ((226050911 * (v66 >> 8)) >> 32))) ^ 0x76) - (v65 ^ 4)) ^ 0xBA) - 110);
  v67 = *(STACK[0x948] + 8 * v43);
  HIDWORD(a16) = 2139090405;
  STACK[0x908] = STACK[0x868] + 1064;
  LODWORD(STACK[0x320]) = -1698229298;
  LODWORD(STACK[0x3E8]) = 1912540626;
  LODWORD(STACK[0x34C]) = 618248196;
  STACK[0x678] = 2001063901;
  LODWORD(STACK[0x5D8]) = -693731604;
  LODWORD(STACK[0x3A0]) = -1338464911;
  LODWORD(STACK[0x300]) = -1928770193;
  LODWORD(STACK[0x588]) = -1734975375;
  LODWORD(STACK[0x508]) = 859538674;
  LODWORD(STACK[0x344]) = 516831409;
  LODWORD(STACK[0x348]) = 598283715;
  LODWORD(STACK[0x6CC]) = 1126902109;
  LODWORD(STACK[0x4D0]) = 452287791;
  LODWORD(STACK[0x630]) = -1266222487;
  LODWORD(STACK[0x530]) = -323908913;
  STACK[0x330] = 1651743546;
  LODWORD(STACK[0x880]) = 486357954;
  STACK[0x7B8] = 150123731;
  STACK[0x6B8] = 380386556;
  STACK[0x660] = 1828469819;
  STACK[0x3C8] = 2405910348;
  STACK[0x5F0] = 1980177078;
  STACK[0x7A0] = 58167731;
  STACK[0x818] = 2525578922;
  LODWORD(STACK[0x2E0]) = 632644574;
  STACK[0x790] = 508805932;
  STACK[0x5F8] = 1813101760;
  LODWORD(STACK[0x858]) = 16;
  return v67(v64, 226050911, 4864, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, v69, v70, 18 - v64, 0x80212005D0A9CC60, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_CD7F0()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x85E)))();
  v4 = STACK[0x948];
  *(v0 + 96) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_CD828@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 368);
  v4 = *(v1 + 496);
  return (*(v2 + 8 * (a1 + 1856740245 + (a1 ^ 0x91546F7F) - 2316)))();
}

uint64_t sub_CD864(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = a4 + a8 + 10;
  *(v61 + 8) = (a8 + 1630020084) ^ (1938608989 * ((2000151370 - ((v63 - 208) ^ 0x5049E1C9 | 0x7737E34A) + ((v63 - 208) ^ 0x5049E1C9 | 0x88C81CB5)) ^ 0xA2A1A38A));
  *v61 = a61;
  v66 = (*(v64 + 8 * (v62 + a8 + 41)))(v63 - 208);
  return (*(v64 + 8 * v65))(v66);
}

uint64_t sub_CD908()
{
  v3 = v1[71];
  v4 = v1[164];
  v1[183] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x85)))(v4);
}

uint64_t sub_CDB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W8>)
{
  v9 = (a2 + 4 * v5);
  v10 = v5 + 1;
  v11 = *(a2 + 4 * v10);
  v12 = v9[397] ^ ((v11 & ((a4 + 948) ^ (v6 + 3493)) | v4 & 0x80000000) >> 1);
  *v9 = (v12 + v8 - (a3 & (2 * v12))) ^ *(v7 + 4 * (v11 & 1));
  return (*(a1 + 8 * (((4 * (v10 != 227)) | (8 * (v10 != 227))) ^ a4)))();
}

uint64_t sub_CDD24@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0xD84]) = v5;
  STACK[0x10A0] = v3;
  LODWORD(STACK[0x10AC]) = v4;
  LODWORD(STACK[0x10A8]) = v2;
  *(a2 + 48) = 1;
  return (*(v6 + 8 * a1))();
}

uint64_t sub_CDE3C@<X0>(int a1@<W8>)
{
  v4 = STACK[0xA00];
  *(v4 + 64) = v1;
  *(v4 + 84) = 1;
  *(v4 + 124) = 1;
  *(v4 + 100) = v2;
  *(v4 + 116) = 16;
  return (*(v3 + 8 * a1))();
}

uint64_t sub_CDEB4@<X0>(uint64_t a1@<X1>, int a2@<W2>, void *a3@<X6>, int a4@<W8>)
{
  v6 = STACK[0x518] + 4 * ((551 * v4 + v5) % 0x1D48u);
  v7 = STACK[0x518] + 4 * ((551 * v4 + 3404078) % 0x1D48u);
  v8 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v9 = *a3 ^ 0xF1E76555;
  v10 = (v7 + v8 + a2) & v9;
  v11 = (v7 + v8 + 1527793161) & v9;
  v12 = v6 + v8;
  v13 = (v12 + LODWORD(STACK[0x52C])) & v9;
  v14 = (v12 + 1527793161) & v9;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v13);
  v15 = LODWORD(STACK[0x52C]);
  *(v7 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v10) ^ *(v6 + a1) ^ (1912024365 * v7) ^ (1912024365 * v6) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v11) ^ v9 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v14);
  return (*(STACK[0x548] + 8 * ((51 * (v4 != 255)) ^ a4)))(0);
}

uint64_t sub_CE004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = v63 - 208;
  *(v65 + 8) = (v61 + 1630020084) ^ (1938608989 * ((((v63 - 208) | 0x22F06D1E) - (v63 - 208) + ((v63 - 208) & 0xDD0F92E0)) ^ 0x58D033E8));
  *v65 = a61;
  v66 = (*(v64 + 8 * (v62 + v61 + 41)))(v63 - 208);
  return (*(STACK[0x948] + 8 * ((6504 * (v61 - 2130314487 == ((v61 + 748240218) & 0x59EB9FFC ^ 0xBACF9072))) ^ (v61 - 2038113321))))(v66);
}

uint64_t sub_CE170(uint64_t a1, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  v19 = a12 + 4 * v17;
  v20 = v17 + 4;
  a3.i64[0] = *(v19 + 4);
  a3.i32[2] = *(v19 + 12);
  v21 = vextq_s8(a2, a3, 0xCuLL);
  a3.i32[3] = *(a12 + 4 * v20);
  v22 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a3, a8), vandq_s8(v21, a6)), 1uLL), *(v19 + 1588));
  v23.i32[0] = *(v18 + 4 * (*(v19 + 4) & 1));
  v23.i32[1] = *(v18 + 4 * (a3.i32[1] & ((v16 + 91) ^ a15)));
  v23.i32[2] = *(v18 + 4 * (a3.i8[8] & 1));
  v23.i32[3] = *(v18 + 4 * (a3.i8[12] & 1));
  *v19 = veorq_s8(vaddq_s32(vsubq_s32(v22, vandq_s8(vaddq_s32(v22, v22), a7)), a9), v23);
  return (*(a1 + 8 * (((v20 == 224) * a16) ^ v16)))(a3);
}

uint64_t sub_CE28C(int a1)
{
  v3 = *(v1 + 8 * ((2665 * (a1 == 1)) ^ 0x2Cu));
  LODWORD(STACK[0x8F0]) = v2 - 197;
  return v3();
}

uint64_t sub_CE2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 128) = &a19;
  *(v23 - 116) = v22 - 434465113 * ((((v23 - 128) ^ 0xDD158129) + 162714684 - 2 * (((v23 - 128) ^ 0xDD158129) & 0x9B2D43C)) ^ 0x21057F4A) - 811;
  v24 = (*(v20 + 8 * (v22 + 1133)))(v23 - 128);
  *(v19 + 4 * v21 + 560) = *(v23 - 120) ^ 0xF9;
  return (*(v20 + 8 * v22))(v24);
}

uint64_t sub_CE358@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  LODWORD(STACK[0x5B0]) = (v10 + a2) >> 8;
  LODWORD(STACK[0x5A0]) = HIWORD(a3);
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x4E0]) ^ v9 ^ a6 ^ v6;
  LODWORD(STACK[0x788]) = v11 & 0x1946F64B;
  STACK[0x6E0] = v12;
  v14 = a4 + ((a1 + v7) >> 16) + v12 - 1;
  LODWORD(STACK[0x4A0]) = (v14 >> 1) & 0x1946F64B;
  v15 = *(v13 + 8 * v8);
  STACK[0x8F8] = v14 + a5;
  v16 = STACK[0x900];
  v17 = STACK[0x328];
  return v15(2, 4466988, 4294967189, 123, STACK[0x3E0], 4864, 4294967192, 68);
}

uint64_t sub_CE460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x360];
  v6 = STACK[0x8E8];
  return (*(v4 + 8 * (v3 + 2038115083)))(a1, a2, a3, 2256851803);
}

uint64_t sub_CE498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x7B8] = a8;
  LODWORD(STACK[0x4C0]) = v10 ^ (v8 + 1353) ^ (v9 + 814575945);
  return (*(STACK[0x948] + 8 * ((8104 * (v9 == -2012335360)) ^ (v9 + 814576923))))(a1, a2, a3, a4, a5, (v9 + 814575945));
}

uint64_t sub_CE4EC@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W5>, void *a5@<X6>, int a6@<W8>)
{
  v6 = STACK[0x518] + 4 * (((((a1 - 238) | 5u) ^ LODWORD(STACK[0x510])) + a6 * a4) % 0x1D48);
  v7 = STACK[0x518] + 4 * (a6 * a4 % 0x1D48u);
  v8 = *(*STACK[0x538] + (*STACK[0x530] & STACK[0x540]));
  v9 = *a5 ^ 0xF1E76555;
  v10 = (v7 + v8 + a3) & v9;
  v11 = (v7 + v8 + 1527793161) & v9;
  v12 = v6 + v8;
  v13 = (v12 + LODWORD(STACK[0x52C])) & v9;
  v14 = (v12 + 1527793161) & v9;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v13);
  v15 = LODWORD(STACK[0x52C]);
  *(v7 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + v10) ^ *(v6 + a2) ^ (1912024365 * v7) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v11) ^ (1912024365 * v6) ^ v9 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + v14);
  return (*(STACK[0x548] + 8 * ((312 * (a6 == 255)) ^ a1)))();
}