uint64_t sub_3EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 112) = &a17;
  *(v21 - 120) = v19 - 1162 - ((((v21 - 128) | 0x405E474B) - (v21 - 128) + ((v21 - 128) & 0xBFA1B8B0)) ^ 0x94F95B11) * v18 + 744;
  *(v21 - 128) = a14;
  v22 = (*(v17 + 8 * ((v19 - 1162) ^ 0xA98)))(v21 - 128);
  return (*(v17 + 8 * (((((v19 - 36) ^ ((*(v21 - 104) + v20) < 0xD878F5D1)) & 1) * (((v19 - 1316) ^ 0x9F) - 273)) ^ (v19 - 1162))))(v22);
}

void sub_3F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 144) = &a18;
  *(v21 - 136) = &a18;
  *(v21 - 128) = v19 - ((2 * ((v21 - 144) & 0x6A58F840) - (v21 - 144) - 1784215622) ^ 0x3A8085A2) * v18 + 567;
  *(v21 - 112) = &a14;
  *(v21 - 104) = v20;
  *(v21 - 120) = a12;
  JUMPOUT(0xF138);
}

uint64_t sub_3F0E4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  HIDWORD(v41) = HIDWORD(a14) - 1630446790;
  LODWORD(v41) = 26908359;
  v38.i64[0] = 0x3232323232323232;
  v38.i64[1] = 0x3232323232323232;
  return sub_2F710(vdupq_n_s32(0x34D4291Du), v38, vdupq_n_s32(0xB4D4290D), a1, a2, a3, a4, a5, a6, a7, 163, a9, a10, a11, a12, a13, a14, a15, a2 + a12, v41, a18, v40 - 16, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_3F150()
{
  v2 = STACK[0x340] ^ 0x307;
  v3 = STACK[0x530];
  STACK[0x458] = *(v1 + 8 * (STACK[0x340] - 828));
  v4 = STACK[0x300];
  STACK[0x5A8] = v3;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v4;
  return (*(v1 + 8 * ((11 * ((((v2 + 457) ^ ((((v2 + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v3 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_3F474()
{
  *(v4 - 216) = (v3 - 2137092735) ^ (1564307779 * ((v4 - 941923267 - 2 * ((v4 - 216) & 0xC7DB6515)) ^ 0x50D6A906));
  (*(v2 + 8 * (v0 + v3 + 2202)))(v4 - 216);
  if (((v1 - v3) | (v3 - v1)) > ((v0 + v3 + 931) ^ 0xFFFFFC5B))
  {
    v5 = 52;
  }

  else
  {
    v5 = 53;
  }

  *(v4 - 212) = v0 - 143681137 * ((((v4 - 216) | 0x43F26CAE) - (v4 - 216) + ((v4 - 216) & 0xBC0D9350)) ^ 0x975570F4) + v3 + 1404;
  *(v4 - 216) = (v3 + v5 + 42) ^ (113 * ((((v4 + 40) | 0xAE) - (v4 + 40) + ((v4 + 40) & 0x50)) ^ 0xF4));
  *(v4 - 208) = &STACK[0x46C];
  *(v4 - 200) = &STACK[0x558];
  (*(v2 + 8 * (v0 + v3 + 2242)))(v4 - 216);
  return sub_48610();
}

uint64_t sub_3F5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v16 = ((v10 + 773) ^ (v13 + a7) & a8 ^ 0x46732821u) + v11;
  *(v14 + 4 * v15) = v16 + v10 - ((((v13 - 17) | a6) + v9) & (2 * v16));
  return (*(v8 + 8 * (((HIDWORD(v16) == 0) * v12) ^ v13)))();
}

uint64_t sub_3F68C()
{
  v4 = v2 < 0x8F62D63F;
  if (v4 == (v1 + 1) > 0xFFFFFFFF709D29C0)
  {
    v4 = v1 + 2405619263 + (2 * ((v0 + 232) ^ 0x4A0u)) - 127 < v2;
  }

  return (*(v3 + 8 * ((v4 * (((v0 + 232) ^ 0x4A0) + 398)) ^ (v0 + 232))))();
}

uint64_t sub_3F7A8@<X0>(uint64_t a1@<X8>)
{
  v6 = 135 * (v2 ^ 0x344);
  **(a1 + 8) = (**(a1 + 8) ^ (v6 - 1181952304)) + 1 + v3 - (v5 & (2 * ((**(a1 + 8) ^ (v6 - 1181952304)) + 1)));
  return (*(v4 + 8 * ((22 * (v1 != 1)) ^ v6)))();
}

uint64_t sub_3F858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v12 + 159106236 < a12 - 1209438043;
  if ((a12 - 1209438043) < 0x97BC4BC != v12 > 0xF6843B43)
  {
    v15 = (a12 - 1209438043) < 0x97BC4BC;
  }

  return (*(v13 + 8 * ((!v15 * ((v14 - 521) ^ 0x59)) ^ v14)))();
}

uint64_t sub_3F8C4@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, unsigned int a35)
{
  v40 = ((*v37 & 0x7FFFFFFE | v37[623] & 0x80000000) >> (a1 ^ 0x14)) ^ v37[396];
  v37[623] = (v40 + v35 - (v38 & (2 * v40))) ^ *(v39 - 168 + 4 * (*v37 & 1));
  return (*(v36 + 8 * ((57 * (a35 < 0x270)) ^ a1)))();
}

uint64_t sub_3FA4C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v12 = (*(*(v9 + 8) + 4 * v3) ^ v8) + v2;
  *(*(a2 + 8) + 4 * v3) = (v12 - (v5 & (2 * v12)) + v6) ^ v7;
  return (*(v11 + 8 * (((v10 > v3 + 1) * a1) ^ (v4 + 1053))))();
}

uint64_t sub_3FAD8@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 & 0x99119FCD;
  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = -v4;
  }

  v7 = v6 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 == 0) * (((v5 - 1462017999) & 0x57249EFF) - 1739)) ^ v5)))();
}

void sub_3FB34(uint64_t a1)
{
  v1 = *(a1 + 8) - 843532609 * ((2 * ((a1 ^ 0x3E92791C) & 0x7283F42C) - (a1 ^ 0x3E92791C) + 226233299) ^ 0x6FA3264A);
  if (*(*a1 + 4) - 1726767306 >= 0)
  {
    v2 = *(*a1 + 4) - 1726767306;
  }

  else
  {
    v2 = 1726767306 - *(*a1 + 4);
  }

  if (*(*(a1 + 24) + 4) - 1726767306 >= 0)
  {
    v3 = *(*(a1 + 24) + 4) - 1726767306;
  }

  else
  {
    v3 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v6 = *a1;
  v7 = v1 + 50899313 * ((&v6 & 0x37C150B1 | ~(&v6 | 0x37C150B1)) ^ 0x5F6B18) + 847;
  v4 = *(&off_9DA90 + v1 - 303) - 8;
  (*&v4[8 * (v1 ^ 0x994)])(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_3FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = (*(v67 + 8 * (v65 ^ 0xB68)))(LODWORD(STACK[0x4EC]), a2, a65);
  v71 = STACK[0x260];
  if (v70)
  {
    if (v70 == 268435459)
    {
      LODWORD(STACK[0x52C]) = 1261138485;
      return (*(v67 + 8 * (((STACK[0x3D0] == 0) * (v68 - 152 + ((v68 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v68 - 193))))();
    }

    else
    {
      v81 = 1785193651 * ((v69 - 216) ^ 0x13DCEC20);
      *(v69 - 208) = -1261164275 - v81 + v70 - ((2 * v70) & 0x69A8521A);
      *(v69 - 204) = v68 - v81 - 536;
      *(v69 - 216) = &STACK[0x52C];
      v82 = (*(v67 + 8 * a43))(v69 - 216);
      return (*(v67 + 8 * (((STACK[0x3D0] == 0) * (v68 - 152 + ((v68 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v68 - 193))))(v82);
    }
  }

  else
  {
    STACK[0x450] = &STACK[0x5E0] + v66;
    LODWORD(STACK[0x434]) = 1934792313;
    STACK[0x4F8] = v71 - 80;
    STACK[0x4D0] = 0;
    LODWORD(STACK[0x428]) = 1657355148;
    *(v69 - 216) = v68 + 1037613739 * (((v69 - 216) & 0x50CAF57C | ~((v69 - 216) | 0x50CAF57C)) ^ 0x7E3727FC) - 1224078117;
    (*(v67 + 8 * (v68 ^ 0xB75)))(v69 - 216);
    v73 = (*(v67 + 8 * (v68 ^ 0xBD3)))(336, 0x100004077774924);
    return (*(v67 + 8 * ((51 * (v73 != 0)) ^ (v68 + 104))))(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10);
  }
}

uint64_t sub_3FFC4()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v0 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v5 + 8 * (((16 * (v7 == 0)) | (32 * (v7 == 0))) ^ (v4 - 200))))();
}

void sub_40198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v24 = 1082434553 * (((v23 - 144) & 0x5B8AF693 | ~((v23 - 144) | 0x5B8AF693)) ^ 0x3F32FFE6);
  *(v23 - 144) = a20 - v24 + ((v20 - 1680) ^ 0xECA4D211);
  *(v23 - 128) = (v20 + 44) ^ v24;
  *(v23 - 136) = v22;
  *(v23 - 120) = a11;
  (*(v21 + 8 * (v20 + 380)))(v23 - 144);
  JUMPOUT(0x12594);
}

uint64_t sub_40390@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v33 = a1[5];
  v28 = *a1;
  v27 = a1[1];
  v29 = (*a1)[1];
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0x8BB17607) - ((v26 - 144) & 0x8BB17607)) ^ 0x2496F41F);
  *(v26 - 144) = &a20;
  *(v26 - 136) = v29;
  *(v26 - 112) = a2;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  (*(v24 + 8 * (v25 ^ 0xCAE)))(v26 - 144);
  *(v26 - 112) = v25 + 1082434553 * ((((v26 - 144) | 0x70C911CA) - (v26 - 144) + ((v26 - 144) & 0x8F36EE30)) ^ 0xEB8EE740) + 856;
  *(v26 - 144) = v27;
  *(v26 - 136) = &a20;
  *(v26 - 128) = &a8;
  *(v26 - 120) = v28;
  (*(v24 + 8 * (v25 ^ 0xC9A)))(v26 - 144);
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  *(v26 - 144) = &a18;
  *(v26 - 136) = &a20;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0x3B731CE9) - (v26 - 144) + ((v26 - 144) & 0xC48CE310)) ^ 0x94549EF1);
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 144) = &a14;
  *(v26 - 136) = &a18;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0x3349D535) - ((v26 - 144) & 0x3349D535)) ^ 0x9C6E572D);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 144) = &a22;
  *(v26 - 136) = &a14;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((((v26 - 144) | 0xB15F8373) - ((v26 - 144) & 0xB15F8373)) ^ 0x1E78016B);
  *(v26 - 104) = v28;
  (*(v24 + 8 * (v25 ^ 0xCAE)))(v26 - 144);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((2 * ((v26 - 144) & 0x418E4F78) - (v26 - 144) - 1099845499) ^ 0x1156329D);
  *(v26 - 144) = &a16;
  *(v26 - 136) = &a22;
  (*(v24 + 8 * (v25 ^ 0xCAE)))(v26 - 144);
  *(v26 - 128) = v25 + 33 - 2066391179 * ((2 * ((v26 - 144) & 0x7659F950) - (v26 - 144) - 1985608018) ^ 0x268184B6);
  *(v26 - 144) = &a10;
  *(v26 - 136) = &a16;
  *(v26 - 120) = v27;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 128) = v25 + 33 - 2066391179 * (((((v26 - 144) | 0xBE9FEEFA) ^ 0xFFFFFFFE) - (~(v26 - 144) | 0x41601105)) ^ 0xEE47931D);
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  *(v26 - 144) = &a24;
  *(v26 - 136) = &a10;
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  *(v26 - 144) = &a8;
  *(v26 - 136) = &a24;
  *(v26 - 112) = &a8;
  *(v26 - 104) = v28;
  *(v26 - 120) = v27;
  *(v26 - 128) = v25 + 33 - 2066391179 * ((v26 - 144) ^ 0xAF278218);
  (*(v24 + 8 * (v25 + 1194)))(v26 - 144);
  v30 = *v28;
  *(v26 - 128) = (v25 + 759) ^ (1564307779 * ((((2 * (v26 - 144)) | 0xBD32D898) - (v26 - 144) - 1587113036) ^ 0xC994A05F));
  *(v26 - 144) = &a12;
  *(v26 - 136) = v30;
  (*(v24 + 8 * (v25 ^ 0xC94)))(v26 - 144);
  *(v26 - 136) = v33;
  *(v26 - 144) = v25 + 1082434553 * ((2081226920 - ((v26 - 144) | 0x7C0D00A8) + ((v26 - 144) | 0x83F2FF57)) ^ 0x18B509DD) - 593;
  v31 = (*(v24 + 8 * (v25 ^ 0xCC6)))(v26 - 144);
  return (*(v24 + 8 * (v25 ^ (8 * ((((v25 ^ 0xAD) - 57) ^ ((*(v26 - 128) - 996129832) < 0x7FFFFFFF)) & 1)))))(v31);
}

uint64_t sub_408E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = v15 + 1638538261 < a15 - 18816888;
  if ((a15 - 18816888) < 0x61AA1C15 != v15 > 23 * (v17 ^ 0x170u) - 1638538331)
  {
    v18 = (a15 - 18816888) < 0x61AA1C15;
  }

  return (*(v16 + 8 * ((188 * !v18) ^ v17)))();
}

void sub_40EA0()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 8))
  {
    v2 = *(v0 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = 1564307779 * (((v0 | 0x5518A72C) - (v0 | 0xAAE758D3) - 1427679021) ^ 0xC2156B3F);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_40FC4(_DWORD *result)
{
  if ((v2 + v5 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v4;
  }

  else
  {
    v6 = v3;
  }

  *(v1 + 4) = v6;
  *result = -1218713433;
  return result;
}

void sub_40FFC(int a1@<W8>)
{
  if (a1 == 1291284596)
  {
    v2 = -1261164275;
  }

  else
  {
    v2 = 1261138645;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_4107C(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_4142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a13;
  a17 = v17 + 2066391179 * (((&a15 | 0x39B52E4F) + (~&a15 | 0xC64AD1B0)) ^ 0x9692AC56) - 521;
  v20 = (*(v18 + 8 * (v17 + 1114)))(&a15);
  return (*(v18 + 8 * ((451 * (a15 == ((v19 + ((v17 - 594) | 0x400) - 1619) ^ 0xD186EB9A))) ^ v17)))(v20);
}

uint64_t sub_414D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38)
{
  if (a38 == 2)
  {
    return (*(v38 + 8 * ((a37 != (a4 ^ (a4 - 110) ^ 0x9E)) ^ (a3 + a4 + 1637))))(a11);
  }

  if (a38 == 1)
  {
    return (*(v38 + 8 * (((a37 == 0) * ((a4 + a3) ^ 0x9E)) ^ (a4 + a3))))(a11);
  }

  return sub_415C0(a11, a2, a3, a4, a10, 1657355148);
}

uint64_t sub_415C0@<X0>(int a1@<W2>, int a2@<W8>)
{
  v9 = v6 - v3;
  *(v9 + 91) = ((v3 + v4) ^ v5) * (v3 + v4 + 17);
  *(v9 + 90) = ((v3 + v4) ^ 0xBB) * (v3 + v4 + 18);
  return (*(v8 + 8 * (((v3 + v2 == 550) * v7) ^ (a1 + a2 + 168))))();
}

void sub_4161C(unsigned int *a1)
{
  v7 = v5 + v2;
  v8 = (v6 ^ (v1 + 88)) + v7 - 1751449038 - 87;
  *a1 = v8;
  v9 = a1 + 1;
  *(v9 + v3) = v4;
  *(v9 + v2) = 47;
  *(v9 + v7) = 61;
  *(v9 + v8) = 0;
  JUMPOUT(0x2E3F4);
}

uint64_t sub_4174C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8 = (a1 + a2 + v3);
  *v8 = v7;
  v8[1] = v7;
  return (*(v6 + 8 * ((114 * ((v5 ^ 0x31A) + a2 == v4)) ^ v2)))();
}

uint64_t sub_41784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v18 = v16 + 1839900685 > a15;
  if (a15 < 0x6DAAA7CD != (v16 + 1839900685) < 0x6DAAA7CD)
  {
    v18 = (v16 + 1839900685) < 0x6DAAA7CD;
  }

  return (*(v17 + 8 * ((81 * !v18) ^ (v15 + a5 + 407))))();
}

uint64_t sub_4192C(uint64_t a1)
{
  v7 = (v5 + 4 * (a1 + v3));
  *v7 = v6 ^ __ROR4__(*(v7 - 8) ^ *(v7 - 3) ^ *(v7 - 14) ^ *(v7 - 16), 31);
  LODWORD(v7) = a1 + (v1 + 16) - 1768 == v4 + 80;
  return (*(v2 + 8 * (((16 * v7) | (32 * v7)) ^ v1)))();
}

uint64_t sub_41998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17)
{
  v24 = 143681137 * ((&a13 & 0x74C8F400 | ~(&a13 | 0x74C8F400)) ^ 0x5F9017A5);
  a14 = a9;
  LODWORD(a13) = v24 ^ ((v21 ^ 0xF1EF7FFA) + 1587524544 + ((2 * v21) & 0xE3DEFFF4));
  a15 = 1806 - v24;
  (*(v22 + 18120))(&a13);
  v25 = ((&a13 & 0x38200E38 | ~(&a13 | 0x38200E38)) ^ 0x16DDDCB8) * v23;
  a16 = v25 ^ 0x84F;
  a17 = (v20 ^ 0xFFFEF7FE) - v25 + ((2 * v20) & 0xFFFDEFFC) + 2099087872;
  a13 = v19;
  a14 = a9;
  (*(v22 + 17928))(&a13);
  v26 = ((((&a13 | 0xB405AD44) ^ 0xFFFFFFFE) - (~&a13 | 0x4BFA52BB)) ^ 0x9AF87FC4) * v23;
  a16 = v26 ^ 0x84F;
  a17 = (v18 ^ 0xFDDDFBFE) + ((2 * v18) & 0xFBBBF7FC) - v26 + 2134803968;
  a13 = v17;
  a14 = a9;
  v27 = (*(v22 + 17928))(&a13);
  return (*(v22 + 8 * ((46 * (a15 != -1261164275)) ^ 0x252u)))(v27);
}

uint64_t sub_41C5C@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * (((v6 == 0) * v5) ^ v3)))();
}

uint64_t sub_41E98(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v13 = (v12 + 4 * v7);
  v14 = v7 + 1;
  v15 = *(v12 + 4 * v14);
  v16 = v13[397] ^ ((v15 & 0x7FFFFFFE | ((v6 ^ (a1 - 101)) + v9) & v8) >> 1);
  *v13 = (v16 + a4 - (a5 & (2 * v16))) ^ *(v11 + 4 * (v15 & 1));
  return (*(v10 + 8 * (((v14 == 227) * a6) ^ v6)))();
}

uint64_t sub_41F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, int a21, char *a22, int a23, unsigned int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a21 = 313566482;
  v31 = *(a2 + 4);
  v32 = *(a2 + 8);
  v33 = 1082434553 * ((~(&a22 | 0xA3149628) + (&a22 & 0xA3149628)) ^ 0xC7AC9F5D);
  a25 = &a14;
  a24 = v31 + ((175 * (v29 ^ 0x126)) ^ 0xE06744EC) + v33;
  a26 = v33 + v29 + 20;
  a22 = &a18;
  a28 = &a21;
  a29 = v32;
  a27 = &a16;
  v35 = (*(v30 + 8 * (v29 + 1801)))(&a22);
  return (*(v30 + 8 * (((a23 == -1261164275) * ((v29 + 1343880314) & 0xAFE606FF ^ 0x7B0)) ^ v29)))(v35, a2);
}

uint64_t sub_42024@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  HIDWORD(a3) = v60 + ((v58 + 2075852007) & 0xAC4F3B9F);
  *a4 = a1;
  v61 = (*(v59 + 48 * v56 + 8))(a5);
  return (*(v57 + 8 * (((v61 - 1261164275 - ((2 * v61) & 0x69A8521A) != -1261164275) * (HIDWORD(a3) + 26)) ^ v58)))(v61, v62, 250626091, 1896857556, 4044341204, 3033803021, 2637612148, 2282248220, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_421A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v36 - 144) = (a11 ^ 0x40) - ((((v36 - 144) | 0xF6C5A326) - ((v36 - 144) & 0xF6C5A326)) ^ 0x7B68C1CA) * v32 + 596;
  *(v36 - 136) = v34;
  *(v36 - 128) = v35;
  (*(v33 + 8 * (a11 ^ 0xBDA)))(v36 - 144);
  v37 = a30;
  v38 = (a11 ^ 0x40) + 216;
  v39 = 2 * (v36 - 144);
  *(v36 - 128) = v38 - 2066391179 * (((v39 | 0x363E4006) - (v36 - 144) - 455024643) ^ 0xB438A21B);
  *(v36 - 120) = v34;
  *(v36 - 112) = &a32;
  *(v36 - 104) = &a29;
  *(v36 - 144) = &a32;
  *(v36 - 136) = v37;
  v40 = (a11 ^ 0x40) + 1377;
  (*(v33 + 8 * v40))(v36 - 144);
  *(v36 - 128) = v38 - 2066391179 * ((((v36 - 144) | 0x8A0AD1DB) - (v36 - 144) + ((v36 - 144) & 0x75F52E20)) ^ 0x252D53C3);
  *(v36 - 120) = v34;
  *(v36 - 112) = a17;
  *(v36 - 144) = &a32;
  *(v36 - 136) = &a32;
  *(v36 - 104) = &a29;
  (*(v33 + 8 * v40))(v36 - 144);
  *(v36 - 144) = (a11 ^ 0x40) - 1361651671 * ((v36 - 1004541319 - 2 * ((v36 - 144) & 0xC41FEB09)) ^ 0x173D1B85) - 562359696;
  *(v36 - 136) = a18;
  *(v36 - 128) = &a32;
  (*(v33 + 8 * ((a11 ^ 0x40) + 1439)))(v36 - 144);
  *(v36 - 144) = (a11 ^ 0x40) - 1388665877 * ((v36 - 144) ^ 0x8DAD62EC) + 596;
  *(v36 - 136) = &a23;
  *(v36 - 128) = &a32;
  (*(v33 + 8 * ((a11 ^ 0x40) + 1418)))(v36 - 144);
  *(v36 - 128) = ((a11 ^ 0x40) + 942) ^ (1564307779 * (((v39 | 0x9AB1D518) - (v36 - 144) - 1297672844) ^ 0xDA55269F));
  *(v36 - 144) = &a23;
  *(v36 - 136) = &a32;
  v41 = (*(v33 + 8 * (a11 ^ 0xB9B)))(v36 - 144);
  return (*(v33 + 8 * (((((a11 ^ 0x40) + 986) ^ (15 * (a11 ^ 0x376)) ^ 6) * (a22 == 0)) ^ ((a11 ^ 0x40) + 1079))))(v41);
}

uint64_t sub_42464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((v17 + 152180172 - 2 * ((v17 - 144) & 0x912165C)) ^ 0xA6359444) * v15;
  *(v17 - 136) = a13;
  *(v17 - 144) = v18 + v13 + 165;
  *(v17 - 128) = (v16 + 718823037) ^ v18;
  v19 = (*(v14 + 8 * (v13 ^ 0x9A9)))(v17 - 144);
  return (*(v14 + 8 * ((181 * (*(v17 - 140) == (((v13 ^ 0x5D6) - 1006) ^ 0xFA8B669))) ^ v13)))(v19);
}

uint64_t sub_42944@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = a1 + v2 + 1381208526;
  v5 = *(a2 + 4) + 1381209456;
  v6 = v4 < (((a1 - 922) | 0x226) ^ 0x393FF414);
  v7 = v6 ^ (v5 < 960493114);
  v8 = v4 > v5;
  if (!v7)
  {
    v6 = v8;
  }

  return (*(v3 + 8 * ((125 * !v6) ^ a1)))();
}

uint64_t sub_42AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 128) = v18 - ((((2 * (v19 - 144)) | 0x4026E98C) - (v19 - 144) - 538145990) ^ 0x8F34F6DE) * v16 - 636;
  *(v19 - 120) = v14;
  *(v19 - 112) = &a13;
  *(v19 - 104) = v13;
  *(v19 - 144) = &a11;
  *(v19 - 136) = &a11;
  v20 = (*(v15 + 8 * (v18 + 525)))(v19 - 144);
  return (*(v15 + 8 * ((396 * ((v17 - 996129833) > 0x7FFFFFFE)) ^ (v18 - 502662833) & 0x1DF600F3)))(v20);
}

void sub_42B60(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = 143681137 * ((-1766088084 - (&a3 | 0x96BBA26C) + (&a3 | 0x69445D93)) ^ 0xBDE341C9);
  a3 = a1;
  a4 = (v7 ^ 0x7F4) - v8 + 268;
  a5 = (283508013 - v6 - (((((v7 ^ 0x7F4) + 303145374) & 0x6DEE5FB5) - 2 * v6 + 1564086140) & 0x4491E63A)) ^ v8;
  (*(v5 + 8 * ((v7 ^ 0x7F4) + 1477)))(&a3);
  JUMPOUT(0x2D6A0);
}

uint64_t sub_42C1C()
{
  v4 = (v0 + 1986884470) & 0x89928BD6;
  v5 = (*(v2 + 8 * (v0 + 1655)))(*v3);
  return (*(v2 + 8 * ((((*v1 == 0) ^ (v4 + 1)) & 1 | (2 * (((*v1 == 0) ^ (v4 + 1)) & 1))) ^ v4)))(v5);
}

void sub_42C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1785193651 * ((-511555821 - ((v18 - 128) | 0xE1824713) + ((v18 - 128) | 0x1E7DB8EC)) ^ 0xDA154CC);
  *(v18 - 120) = v17 - v19 - 521;
  *(v18 - 116) = (v16 ^ 0x6FDF5A33) - v19 + ((v16 << (v17 + 84)) & 0xDFBEB466) - 21123107;
  *(v18 - 128) = &a15;
  (*(v15 + 8 * (v17 ^ 0xE62)))(v18 - 128);
  JUMPOUT(0x42D20);
}

uint64_t sub_42DD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = (((v32 ^ 0xD6A2F00C) + 693964788) ^ ((v32 ^ 0xE0D139DC) + 523159076) ^ ((v32 ^ 0x601698AC) - 1612093612)) + 103619158 + (((v33 ^ 0x97C740D4) + 1748549420) ^ ((v33 ^ 0x8E3BF7FA) + 1908672518) ^ (((a2 + 130117410) & 0xF83E8D66 ^ 0xB0661988) + (v33 ^ 0x4F99E652)));
  v35 = (v34 ^ 0x94DDAA1A) & (2 * (v34 & 0xA69D88A2)) ^ v34 & 0xA69D88A2;
  v36 = ((2 * (v34 ^ 0x99C5AA1E)) ^ 0x7EB04578) & (v34 ^ 0x99C5AA1E) ^ (2 * (v34 ^ 0x99C5AA1E)) & 0x3F5822BC;
  v37 = v36 ^ 0x1482284;
  v38 = (v36 ^ 0x3E100018) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0xFD608AF0) & v37 ^ (4 * v37) & 0x3F5822BC;
  v40 = (v39 ^ 0x3D4002A0) & (16 * v38) ^ v38 ^ 0x3F5822BC ^ (((16 * (v39 ^ 0x218200C)) ^ 0xF5822BC0) & (v39 ^ 0x218200C) ^ (16 * (v39 ^ 0x218200C)) & 0x3F5822B0 ^ 0x35002200) & (((v39 ^ 0x3D4002A0) & (16 * v38) ^ v38) << 8);
  return sub_42FEC((v40 << 16) & 0x3F580000, (v40 << 16) ^ 0x22BC0000, 1062731776, a4, a5, a6, a7, HIDWORD(a24), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_42FEC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, unsigned int a39, unsigned int a40)
{
  v46 = (((v41 ^ 0x8E814AF2) + 1904129294) ^ ((v41 ^ 0x4928B0EF) - 1227403503) ^ ((v41 ^ 0x91CCAB61) + 1848857759)) + (((v45 ^ 0x3B06F50D) - 990311693) ^ ((v45 ^ 0x736D5B53) - 1936546643) ^ ((v45 ^ 0x1E0EFF22) - 504299298)) + 60386280;
  v47 = (v46 ^ 0x812127C0) & (2 * (v46 & 0xA9313710)) ^ v46 & 0xA9313710;
  v48 = ((2 * (v46 ^ 0xD1030FC0)) ^ 0xF06471A0) & (v46 ^ 0xD1030FC0) ^ (2 * (v46 ^ 0xD1030FC0)) & 0x783238D0;
  v49 = v48 ^ 0x8120850;
  v50 = (v48 ^ 0x60003080) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0xE0C8E340) & v49 ^ (4 * v49) & 0x783238D0;
  v52 = (v51 ^ 0x60002040) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x18321890)) ^ 0x83238D00) & (v51 ^ 0x18321890) ^ (16 * (v51 ^ 0x18321890)) & 0x783238D0;
  v54 = v52 ^ 0x783238D0 ^ (v53 ^ 0x220800) & (v52 << 8);
  v55 = (v54 << 16) ^ 0x38D00000u;
  v56 = (((v43 ^ 0x46DD7869) - 1188919401) ^ ((v43 ^ 0x3D699EAB) - 1030332075) ^ ((v43 ^ 0x2DD1B7BE) - 768718782)) + (((v44 ^ 0x511E86B9) - 1360955065) ^ ((v44 ^ 0xD53492A7) + 717974873) ^ ((v44 ^ 0xD24F4562) + 766556830)) - 725893459;
  a37 = v46 ^ (2 * ((v54 << 16) & 0x78320000 ^ v54 ^ v55 & (((v53 ^ 0x781030D0) << 8) & 0x78320000 ^ 0x48020000 ^ (((v53 ^ 0x781030D0) << 8) ^ 0x32380000) & (v53 ^ 0x781030D0)))) ^ 0x7F1017CC;
  a38 = v56 ^ ((v56 ^ 0xB11534D9) + 1763430548) ^ ((v56 ^ 0x7BD2FD96) - 1545856547) ^ ((v56 ^ 0x5CC92515) - 2067283616) ^ ((v56 ^ 0xB1FFF7EF) + 1777406886) ^ 0x71944AC9;
  v57 = (((v42 ^ 0xC4F75287) + 990424441) ^ ((v42 ^ 0x805276D4) + 2142079276) ^ ((v42 ^ 0x12C0752F) - 314602799)) + (((a39 ^ 0x1706569) - 24143209) ^ ((a39 ^ 0xD4660C6F) + 731509649) ^ ((a39 ^ 0x8373387A) + 2089600902)) + 598572391;
  v58 = ((2 * (v57 & 0x891D2591)) & 0x10220202 | v57 & 0x891D2591) ^ (2 * (v57 & 0x891D2591)) & (v57 ^ 0x583B97DE);
  v59 = ((2 * (v57 ^ 0x583B97DE)) ^ 0xA24D649E) & (v57 ^ 0x583B97DE) ^ (2 * (v57 ^ 0x583B97DE)) & 0xD126B24E;
  v60 = v59 ^ 0x51229241;
  v61 = (v59 ^ 0x1106200D) & (4 * v58) ^ v58;
  v62 = ((4 * v60) ^ 0x449AC93C) & v60 ^ (4 * v60) & 0xD126B24C;
  v63 = (v62 ^ 0x40028003) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0x91243243)) ^ 0x126B24F0) & (v62 ^ 0x91243243) ^ (16 * (v62 ^ 0x91243243)) & 0xD126B240;
  v65 = v63 ^ 0xD126B24F ^ (v64 ^ 0x10222000) & (v63 << 8);
  v66 = (((v40 ^ 0xD1E9739B) + 773229669) ^ ((v40 ^ 0xB40B8ED5) + 1274310955) ^ ((v40 ^ 0x3387AC32) - 864529458)) + (((a40 ^ 0x8D42B901) + 1925007103) ^ ((a40 ^ 0x62836EFD) - 1652780797) ^ ((a40 ^ 0xB9A48680) + 1180400000)) - 124795201;
  a39 = v57 ^ (2 * ((v65 << 16) & 0x51260000 ^ v65 ^ ((v65 << 16) ^ 0x324F0000) & (((v64 ^ 0xC104920F) << 8) & 0x51260000 ^ 0x51040000 ^ (((v64 ^ 0xC104920F) << 8) ^ 0x26B20000) & (v64 ^ 0xC104920F)))) ^ 0x5D391073;
  a40 = v66 ^ ((v66 ^ 0xB81AB0B4) + 203451533) ^ ((v66 ^ 0xB06766BD) + 73251462) ^ ((v66 ^ 0x9D470A71) + 696112714) ^ ((v66 ^ 0xDEFFFFBF) + 1791304584) ^ 0x1DA072BB;
  return a6(v55, &a28, a1, 100, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_43664@<X0>(int a1@<W0>, int a2@<W8>)
{
  v10 = *(v7 + 8 * v2);
  v11 = *v4;
  v12 = v3 + a1;
  *(*v4 + v12) = (HIBYTE(a2) ^ 0x2A) - 2 * ((HIBYTE(a2) ^ 0x2A) & v5 ^ HIBYTE(a2) & 4) + 50;
  *(v11 + v12 + 1) = (v6 ^ BYTE2(a2)) - (v9 & (2 * (v6 ^ BYTE2(a2)))) + 50;
  *(v11 + v12 + 2) = (BYTE1(a2) ^ 0x1E) - (v9 & (2 * (BYTE1(a2) ^ 0x1E))) + 50;
  *(v11 + v12 + 3) = a2 ^ v8;
  return v10();
}

uint64_t sub_43774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = v19 + 1627 + 1082434553 * ((2 * ((v21 - 144) & 0x79433B08) - (v21 - 144) + 113034486) ^ 0x9DFB327C);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  (*(v18 + 8 * (v19 + 1945)))(v21 - 144);
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 112) = v19 + 1627 + 1082434553 * ((((v21 - 144) | 0x58B5532B) - (v21 - 144) + ((v21 - 144) & 0xA74AACD0)) ^ 0xC3F2A5A1);
  (*(v18 + 8 * (v19 ^ 0x999)))(v21 - 144);
  *(v21 - 112) = v19 + 1627 + 1082434553 * ((v21 - 144) ^ 0x9B47F68A);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  (*(v18 + 8 * (v19 ^ 0x999)))(v21 - 144);
  v22 = 2066391179 * ((((v21 - 144) | 0xFD3DC433) - (v21 - 144) + ((v21 - 144) & 0x2C23BC8)) ^ 0x521A462B);
  *(v21 - 128) = ((((v19 + 1566) ^ 0xDCF8F84A) & (2 * (v20 - 996129833))) + ((((v19 - 256) | 0x388) - 293831646) ^ (v20 - 996129833)) + 2008783614) ^ v22;
  *(v21 - 144) = v22 + v19 + 221;
  *(v21 - 136) = a13;
  v23 = (*(v18 + 8 * (v19 + 1937)))(v21 - 144);
  return (*(v18 + 8 * (((4 * (*(v21 - 140) == 262715241)) | (16 * (*(v21 - 140) == 262715241))) ^ v19)))(v23);
}

void sub_43AA0()
{
  *v0 = v2;
  *(v0 + 8) = v1;
  *(v0 + 12) = v1;
}

uint64_t sub_43B44@<X0>(int a1@<W8>)
{
  v6 = a1 - 32;
  v7 = v1 + ((v6 - 2030300841) & 0x7903EFFD) - 1718;
  *(*v3 + (v5 + 1432631407 + v7)) = *(*v3 + (v1 - 1941292485));
  return (*(v4 + 8 * ((191 * (v7 == v2 + 595)) ^ v6)))();
}

uint64_t sub_43BBC()
{
  v4.i64[0] = 0x6464646464646464;
  v4.i64[1] = 0x6464646464646464;
  v5.i64[0] = 0x3232323232323232;
  v5.i64[1] = 0x3232323232323232;
  v2[72] = vaddq_s8(vsubq_s8(*(v0 + 4), vandq_s8(vaddq_s8(*(v0 + 4), *(v0 + 4)), v4)), v5);
  return (*(v3 + 8 * ((v1 + 120) ^ 0x64C ^ v1)))();
}

uint64_t sub_43C40(unsigned int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v20 = a2 - 16;
  v21 = ((a1 + 857) ^ a4) & (v20 + 15);
  v22 = v14;
  v23.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v23.i64[1] = a11;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(v13 + v20), *(v15 + v21 - 15)), veorq_s8(*(v21 + v16 - 10), *(v21 + v17 - 13))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a13), vmulq_s8(v23, a12)));
  *(v19 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v18 + 8 * (((a3 == 16) * a5) ^ a1)))();
}

uint64_t sub_43DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26, unsigned int a27, int a28)
{
  v32 = 843532609 * ((2 * (&a25 & 0x4FB69020) - &a25 - 1337364520) ^ 0xEC043B5D);
  a25 = v30;
  a26 = ((((v29 + 1951819300) & 0x8BA99679 ^ 0x73B5C5F5) + v28 - a14) ^ 0xBEFF8BFF) - v32 + ((2 * (((v29 + 1951819300) & 0x8BA99679 ^ 0x73B5C5F5) + v28 - a14)) & 0x7DFF17FE) + 2011592142;
  a27 = (((v28 & 0xFFFFFFF0) + 16) ^ 0x3BEEEA5E) - v32 + ((2 * ((v28 & 0xFFFFFFF0) + 16)) & 0x77DDD4A0) - 42074128;
  a28 = (v29 + 802) ^ v32;
  v35 = v29;
  v33 = (*(v31 + 8 * (v29 ^ 0xA98)))(&a25);
  return (*(v31 + 8 * ((1213 * (*(v30 + 24) == -1261164275)) ^ v35)))(v33);
}

uint64_t sub_43F40@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, _DWORD *a4)
{
  *v5 = a1;
  *a4 = v4;
  return (*(v6 + 8 * (((((a2 + 763229254) & 0xD28209E5 ^ 0xFFFFFFCA) + ((a2 - 817) | 0x200)) * (a3 == 0)) ^ a2)))();
}

uint64_t sub_440A8()
{
  v6 = 1785193651 * ((2 * (v2 & 0x7EFA8720) - v2 + 17135839) ^ 0x12D994FF);
  *(v5 - 128) = v4 - v6 + 415;
  *(v5 - 124) = (v0 ^ 0x7EFDDE35) - v6 + ((v4 - 33834651) & (2 * v0)) - 274781221;
  *(v5 - 136) = v3;
  v7 = (*(v1 + 8 * (v4 + 1482)))(v5 - 136);
  return sub_4413C(v7);
}

uint64_t sub_4413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v20 - 128) = v19 - 143681137 * ((2 * (v18 & 0x249BE728) - v18 - 614197039) ^ 0xFC3048B) + 1156;
  *(v20 - 136) = a16;
  *(v20 - 120) = v17;
  v21 = (*(v16 + 8 * (v19 ^ 0x83C)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 112) > ((v19 - 1133208219) & 0x438B677B ^ 0x43A7AD37u)) * (((v19 + 636387185) & 0xDA1180CF) + 1261)) ^ v19)))(v21);
}

uint64_t sub_44210()
{
  if (v2 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = -v2;
  }

  v6 = ((v3 - 198) ^ (v0 - 1060)) + v1;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  return (*(v4 + 8 * (((v5 > v7) * (106 * (v3 ^ 0x4E0) - 42)) ^ v3)))();
}

uint64_t sub_4425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = v17 - ((2 * ((v19 - 128) & 0x1B030CF0) - (v19 - 128) + 1694298889) ^ 0xB05BEF53) * v16 - 418;
  *(v19 - 128) = a14;
  *(v19 - 112) = &a15;
  v20 = (*(v15 + 8 * (v17 + 526)))(v19 - 128);
  return (*(v15 + 8 * ((25 * (v18 + *(v19 - 104) - 1 < (v17 - 226100443))) ^ v17)))(v20);
}

uint64_t sub_443FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, _DWORD *a13)
{
  v17 = 843532609 * ((((2 * (v15 - 136)) | 0xCB0E8D6E) - (v15 - 136) + 444119369) ^ 0xB9CA1232);
  v18 = (*a13 ^ 0x46732821) * *(*(a10 + 16) + 16);
  *(v15 - 136) = v17 + (v13 ^ 0x77EF63D9) - 285410597;
  *(v15 - 104) = v13 - v17 - 1032;
  *(v15 - 112) = a11;
  *(v15 - 120) = (v18 ^ 0x7E7AC2F7) - v17 + ((2 * v18) & 0xFCF585EE) - 708837474;
  *(v15 - 128) = &a12;
  v19 = (*(v14 + 8 * (v13 ^ 0xF3A)))(v15 - 136);
  return (*(v14 + 8 * ((166 * (a4 == 1)) ^ v13)))(v19);
}

uint64_t sub_44528@<X0>(uint64_t a1@<X0>, unint64_t a2@<X5>, uint64_t a3@<X7>, int a4@<W8>)
{
  v13 = (*(a3 + 4 * v7) ^ v4) + (v6 ^ HIDWORD(a2));
  v14 = (v12 - 907) + v13 - ((2 * v13) & 0x3963CD4D4) + 0x3C27FFB1CB1E6955;
  *(a3 + 4 * a1) = v12 ^ 0x38A ^ v9 ^ v14;
  *(a3 + 4 * v7) = HIDWORD(v14) ^ v10;
  return (*(v8 + 8 * (v12 ^ ((v5 + 1 == a4) * v11))))();
}

void sub_445A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = 1082434553 * ((((v14 - 144) | 0xE1D8D583) + (~(v14 - 144) | 0x1E272A7C)) ^ 0x7A9F2308);
  *(v14 - 144) = v10 - v15 + ((v12 + 1673773739) & 0x9C3C39FF ^ 0x179D3932);
  *(v14 - 128) = (v12 + 659) ^ v15;
  *(v14 - 136) = v13;
  *(v14 - 120) = a10;
  (*(v11 + 8 * (v12 + 995)))(v14 - 144);
  JUMPOUT(0x1E55CLL);
}

uint64_t sub_446D8@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v2 + (a1 - 126) - 291;
  v6 = a2 + v2 + 1 < v3;
  if (v3 < a2 != v5 > 0xFFFFFFFF3F687BA7)
  {
    v6 = v3 < a2;
  }

  return (*(v4 + 8 * (!v6 | a1)))();
}

void sub_44744(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4)
{
  a3 = v5 - 1388665877 * ((859753275 - (&a3 | 0x333ECB3B) + (&a3 | 0xCCC134C4)) ^ 0x416C5628) + 1324;
  a4 = a1;
  (*(v4 + 8 * (v5 ^ 0x8D0)))(&a3);
  JUMPOUT(0x1D5FCLL);
}

uint64_t sub_449E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 112) = (v18 + 1633) ^ (1564307779 * ((((v19 - 128) | 0xAF50F2B7) - (v19 - 128) + ((v19 - 128) & 0x50AF0D48)) ^ 0x385D3EA4));
  *(v19 - 128) = a12;
  *(v19 - 120) = &a17;
  v20 = (*(v17 + 8 * (v18 + 2046)))(v19 - 128);
  return sub_44A4C(v20);
}

uint64_t sub_44BA0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v13 = *(v11 + 8);
  v14 = ((2 * (*(v13 + ((a3 + ((v10 + a5) << 32)) >> 30)) ^ v5)) << ~v9) | ((*(v13 + 4 * (v10 + a5)) ^ v5) >> v9);
  *(v13 + 4 * v10) = v14 + v5 - ((v14 << ((a1 | a2) + 7)) & v6);
  return (*(v12 + 8 * (((v10 + 1 == v7) * a4) ^ v8)))();
}

uint64_t sub_44C74(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 25700;
  a1.n128_u8[2] = 100;
  a1.n128_u8[3] = 100;
  a1.n128_u8[4] = 100;
  a1.n128_u8[5] = 100;
  a1.n128_u8[6] = 100;
  a1.n128_u8[7] = 100;
  a2.n128_u16[0] = 12850;
  a2.n128_u8[2] = 50;
  a2.n128_u8[3] = 50;
  a2.n128_u8[4] = 50;
  a2.n128_u8[5] = 50;
  a2.n128_u8[6] = 50;
  a2.n128_u8[7] = 50;
  return sub_44CC0((((v2 - 1776250873) & 0x69DF6FF7) - 1003) & 0xFFFFFE3E, a1, a2);
}

uint64_t sub_44DB0@<X0>(unsigned int a1@<W2>, uint64_t a2@<X5>, unsigned int a3@<W8>)
{
  v15 = (a2 + 4 * v4);
  v16 = (*v15 ^ a3) + (((v12 ^ a1) + v7) ^ HIDWORD(v14)) + v13 * (*(v11 + 4 * v4) ^ a3);
  *(v15 - 1) = (v16 + v5 - (v6 & (2 * v16))) ^ v9;
  return (*(v8 + 8 * (((v4 + 1 == v3) * v10) ^ v12)))();
}

uint64_t sub_44E10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v37 = (((a35 + 1669697652) ^ 0x5BEC110) - 1906830763) ^ (a35 + 1669697652) ^ (((a35 + 1669697652) ^ 0xCDE40535) + 1174591090) ^ (((a35 + 1669697652) ^ 0x7FFFBFDF) - 199660388) ^ (a1 - 1102 + ((a35 + 1669697652) ^ 0xC3BC5741) + (*(v35 - 172) ^ 0x485A8077));
  *(v35 - 172) = a1 - 461;
  v39 = v37 == 1947806907 || (v37 & 0xF) != a1 - 1328;
  v40 = *(v36 + 8 * ((v39 * (a1 - 864)) ^ (a1 - 1102)));
  *(v35 - 176) = -42899;
  return v40();
}

uint64_t sub_44EEC(int8x16_t a1, int32x4_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31, int a32, unsigned int a33, unsigned int a34, int a35, char a36)
{
  if (a36 == 2)
  {
    v63 = vld4q_s8(v38);
    v55 = veorq_s8(v63.val[1], a3);
    _Q21 = vmovl_high_u8(v55);
    _Q20 = vmovl_u8(*v55.i8);
    v58 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v59 = vmovl_u8(*&veorq_s8(v63.val[2], a3)).u64[0];
    v63.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v63.val[3], a3)));
    v60 = vorrq_s8(vorrq_s8(vorrq_s8(v58, vshll_n_u16(v59, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v63.val[0], a3))), 0x18uLL)), v63.val[2]);
    v63.val[2] = veorq_s8(vandq_s8(v60, a1), (*&v63.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    *v37 = vaddq_s32(vsubq_s32(v60, vaddq_s32(v63.val[2], v63.val[2])), a2).u32[0];
    v61 = &v37[v40 + 273634779];
    *v61 = v42 ^ __ROR4__(*(v61 - 8) ^ *(v61 - 3) ^ *(v61 - 14) ^ v37[v40 + 273633294 + ((v43 + a7 - 282750985) & 0x10DA75BD)], 31);
    return (*(v39 + 8 * ((71 * (v41 == 273634716)) ^ (v43 + a7 + 1433))))(a34, a19);
  }

  else
  {
    if (a36 == 1)
    {
      v64 = vld4q_s8(v38);
      v44 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v64.val[0], a3)));
      v45 = veorq_s8(v64.val[2], a3);
      _Q25 = vmovl_u8(*v45.i8);
      _Q24 = vmovl_high_u8(v45);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v64.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v64.val[3], a3))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v64.val[1], a3)), 8uLL), v44));
      v54 = veorq_s8(vandq_s8(v64.val[2], a1), (*&v44 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
      *v37 = vaddq_s32(vsubq_s32(v64.val[2], vaddq_s32(v54, v54)), a2).u32[0];
      JUMPOUT(0x45078);
    }

    return (*(v39 + 8 * v36))(2648846424, a31, a6, a7, a8, a33, a10, a11, a12, a13, a14, a15, a16, a17, *(v39 + 8 * v36), a19, a20, a21, a22, a23);
  }
}

void sub_45D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v27 - 144) = a12;
  *(v27 - 136) = &a18;
  *(v27 - 112) = v24 + 1082434553 * ((-2022699873 - ((v27 - 144) | 0x87700C9F) + ((v27 - 144) | 0x788FF360)) ^ 0xE3C805EA) + 1166;
  *(v27 - 128) = &a18;
  *(v27 - 120) = a11;
  (*(v25 + 8 * (v24 ^ 0xA54)))(v27 - 144);
  *(v27 - 144) = &a18;
  *(v27 - 136) = &a18;
  *(v27 - 128) = v24 - (((((v27 - 144) | 0x5C50B2BC) ^ 0xFFFFFFFE) - (~(v27 - 144) | 0xA3AF4D43)) ^ 0xC88CF5B) * v26 + 343;
  *(v27 - 120) = a12;
  *(v27 - 112) = &a24;
  *(v27 - 104) = a11;
  (*(v25 + 8 * (v24 + 1504)))(v27 - 144);
  JUMPOUT(0xF148);
}

uint64_t sub_45E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + ((v3 - 436) | 0x251u) - 1010;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((2024 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_45FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, __int16 a22, char a23, int a24, char a25, __int16 a26, char a27)
{
  v32 = 1082434553 * ((2 * ((v31 - 160) & 0x5E18FD00) - (v31 - 160) - 1578695938) ^ 0x3AA0F474);
  STACK[0x2E8] = &a21;
  *(v31 - 136) = v32 + v28 + 46;
  *(v31 - 148) = a5 + (((v28 + 261) | 0x484) ^ 0xE0674075) + v32;
  STACK[0x2E0] = &a27;
  STACK[0x2D0] = &a25;
  STACK[0x2F0] = v30;
  STACK[0x2C0] = &a23;
  HIDWORD(a9) = a5;
  v33 = (*(v27 + 8 * (v28 ^ 0x925)))(v31 - 160);
  return (*(v27 + 8 * ((1692 * (*(v31 - 152) == v29 + (v28 ^ 0x2D0) - 987)) ^ v28)))(v33, 2108723143, 1117814741, 1029668906, HIDWORD(a9), 2147484632, 3177152554, 3176691902, a9);
}

uint64_t sub_4626C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  v11 = v10 + a1;
  v12 = v11 | 0x425;
  v13 = v11 + 1061;
  a8 = (v10 + 818221432) ^ (1037613739 * (((&a8 | 0x407BC12A) - &a8 + (&a8 & 0xBF843ED0)) ^ 0x9179EC55));
  v14 = (*(v9 + 8 * (v10 ^ (v10 + 1984))))(&a8);
  return (*(v9 + 8 * (((a9 == -1261164275) * (v12 - 353)) ^ v13)))(v14);
}

uint64_t sub_46310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v11);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v12 | 0x416) ^ 0x6EE) - 190)) ^ (v12 | 0x416))))();
}

uint64_t sub_4635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 128) = &a15;
  *(v20 - 112) = &a17;
  *(v20 - 120) = v18 + 742307843 * ((((v20 - 128) | 0x6C496BFE) - ((v20 - 128) & 0x6C496BFE)) ^ 0x726BE6AB) + 236;
  v21 = (*(v17 + 8 * (v18 + 722)))(v20 - 128);
  return (*(v17 + 8 * (((v18 ^ 0x5E7) * (v19 == 1)) ^ v18)))(v21);
}

uint64_t sub_46494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = a13 - 1726767306;
  if (a13 - 1726767306 < 0)
  {
    v15 = 1726767306 - a13;
  }

  return (*(v14 + 8 * ((58 * (((v15 ^ 0xF6FFF2DB) + 25 * (v13 ^ 0x3AB) + ((2 * v15) & 0xEDFFE5B6) + 150997333) > ((25 * (v13 ^ 0x3AB) + 289) ^ 0xFFFFFB0F))) ^ (25 * (v13 ^ 0x3AB)))))(1181952033);
}

uint64_t sub_46534@<X0>(int a1@<W8>)
{
  if ((a1 + 712618036) <= 0x12 && ((1 << (a1 + 52)) & 0x50181) != 0)
  {
    JUMPOUT(0x465C4);
  }

  return sub_46570();
}

uint64_t sub_466A8@<X0>(int a1@<W5>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = 107 * (a2 ^ 0x557);
  *(*(v3 + 8) + 4 * (v4 + a1 + (v7 ^ 0x5DF) - 176)) = v6 ^ v5 ^ v7;
  v8 = v7 ^ 0x24A;
  *(v3 + 4) = a1 + 1;
  v9 = a1 + 1 + v4;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return (*(a3 + 8 * ((27 * (((v8 ^ v9 ^ 0x6EEEF9EE) + ((2 * v9) & 0xDDDDFD96) - 1861157794 + ((v8 - 1367842862) & 0x51879DDE)) >= 0)) ^ v8)))();
}

uint64_t sub_46904@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 16) = 1261138488;
  return result;
}

uint64_t sub_46918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40)
{
  v43 = 1785193651 * ((((v42 - 176) ^ 0xBE5B698F) + 1490654126 - 2 * (((v42 - 176) ^ 0xBE5B698F) & 0x58D993AE)) ^ 0xF55E1601);
  *(v42 - 176) = (v41 + 1535) ^ v43;
  *(v42 - 160) = a19 - v43;
  *(v42 - 168) = a2;
  v44 = (*(v40 + 8 * (v41 ^ 0x8D4)))(v42 - 176);
  v45 = a40 & 0x3F;
  *(&a31 + v45) = -78;
  return (*(v40 + 8 * ((816 * (v45 > 0x37)) | v41)))(v44);
}

uint64_t sub_46A64(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 25700;
  a1.n128_u8[2] = 100;
  a1.n128_u8[3] = 100;
  a1.n128_u8[4] = 100;
  a1.n128_u8[5] = 100;
  a1.n128_u8[6] = 100;
  a1.n128_u8[7] = 100;
  a2.n128_u16[0] = 12850;
  a2.n128_u8[2] = 50;
  a2.n128_u8[3] = 50;
  a2.n128_u8[4] = 50;
  a2.n128_u8[5] = 50;
  a2.n128_u8[6] = 50;
  a2.n128_u8[7] = 50;
  return sub_46A84(a1, a2);
}

void sub_46B00(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  a4 = v6;
  a3 = v8;
  a6 = (v7 & 0xC364D79) + 1785193651 * ((((2 * &a3) | 0x2CEF4B86) - &a3 + 1770543677) ^ 0x85AB49E3) - 307;
  (*(a1 + 8 * (v7 & 0xC364D79 ^ 0xD70u)))(&a3);
  JUMPOUT(0x129B0);
}

uint64_t sub_46C48@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v14 = 1785193651 * ((((v13 - 160) | 0x4890146A) - (v13 - 160) + ((v13 - 160) & 0xB76FEB90)) ^ 0x5B4CF84A);
  *(v13 - 152) = &STACK[0x248];
  *(v13 - 144) = 1869595558 - v14;
  *(v13 - 160) = (a1 + 1522) ^ v14;
  (*(v12 + 8 * (a1 ^ 0x8C7)))(v13 - 160);
  return a12(100);
}

uint64_t sub_46D20(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, int a22, unsigned int a23)
{
  v24.n128_u64[0] = 0x6464646464646464;
  v24.n128_u64[1] = 0x6464646464646464;
  v25.n128_u64[0] = 0x3232323232323232;
  v25.n128_u64[1] = 0x3232323232323232;
  return (*(v23 + 8 * (((a19 + 77) * (a16 < 0xFFFFFFFE)) ^ a19)))(2787645459, a20, 1507321841, a23, a8, a9, 0x8B8B563D4E2B2370, 449505635, a1, a2, a3, v24, v25);
}

uint64_t sub_46E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v8 = *a1;
  *v6 = 0;
  return (*(v7 + 8 * ((52 * (((v8 == 0) ^ (a6 + 100)) & 1)) ^ a6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_46EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, int a18)
{
  a18 = v20 + 940 + v18 + 471399113;
  *(v21 - 112) = (v20 + 1239) ^ (1564307779 * (((v21 - 128) & 0x45C5A70B | ~((v21 - 128) | 0x45C5A70B)) ^ 0x2D3794E7));
  *(v21 - 128) = &a15;
  *(v21 - 120) = a14;
  (*(v19 + 8 * (v20 ^ 0xAB4)))(v21 - 128);
  *(v21 - 120) = v20 - 143681137 * ((((v21 - 128) | 0x371D2359) + (~(v21 - 128) | 0xC8E2DCA6)) ^ 0xE3BA3F02) + 744;
  *(v21 - 112) = &a17;
  *(v21 - 128) = a14;
  v22 = (*(v19 + 8 * (v20 ^ 0xA98)))(v21 - 128);
  v23 = (*(v21 - 104) - 1135061088) < 0xD878F5D1;
  return (*(v19 + 8 * ((((((v20 - 525) ^ v23) & 1) == 0) | (4 * ((((v20 - 525) ^ v23) & 1) == 0))) ^ v20)))(v22);
}

uint64_t sub_47274@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v40 = *(&a24 + (a2 >> (v37 + 7)) + 18);
  v41 = ((2 * a2) & 0xCBBFFEF0) + (a2 ^ 0x65DFFF7A) + v36;
  *(a1 + v41) = v40 ^ 0x4E;
  *(a1 + v41 + 2) = (BYTE2(v40) ^ 0x65) - ((2 * (BYTE2(v40) ^ 0x65)) & 0x64) + 50;
  *(a1 + v41 + 1) = (BYTE1(v40) ^ 0x51) + ~(2 * (((v40 >> 8) ^ 0x51) & 0x3A ^ (v40 >> 8) & 8)) + 51;
  *(a1 + v41 + 3) = (HIBYTE(v40) ^ 0x56) - 2 * ((HIBYTE(v40) ^ 0x56) & 0x33 ^ HIBYTE(v40) & 1) + 50;
  return (*(v39 + 8 * (((a2 + 4 < a36) * v38) ^ v37)))();
}

uint64_t sub_47358()
{
  v6 = *(v4 + 4 * (v3 - 1));
  *(v4 + 4 * v3) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v4 + 4 * v3)) - v3;
  v7 = 143681137 * ((0x2B85BA1DCB0B370DLL - ((v5 - 152) | 0x2B85BA1DCB0B370DLL) + ((v5 - 152) | 0xD47A45E234F4C8F2)) ^ 0xC502C7E5E053D4A8);
  v8 = v5 - 176;
  *(v8 + 64) = v7 + 623;
  *(v5 - 128) = -143681137 * ((-888457459 - ((v5 - 152) | 0xCB0B370D) + ((v5 - 152) | 0x34F4C8F2)) ^ 0xE053D4A8);
  *(v5 - 124) = (v0 + 932910462) ^ v7;
  *(v8 + 32) = v3 + 1 - v7;
  *(v5 - 152) = ((v0 + 932910294) ^ 0x64) - v7;
  *(v5 - 132) = v0 + 932910294 - v7;
  *(v5 - 120) = v7 + v0 - 288126657;
  v9 = (*(v2 + 8 * (v1 + v0 + 1605)))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 136)))(v9);
}

uint64_t sub_4746C@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v10 = v2 < a1;
  *(v9 - 220 + v3) = *(v7 + v5) - ((2 * *(v7 + v5)) & 0x64) + 50;
  v11 = v5 + 1;
  if (v10 == v11 > (a2 ^ 0x26 ^ v6))
  {
    v10 = v11 + a1 < v2;
  }

  return (*(v8 + 8 * ((!v10 * v4) ^ a2)))();
}

uint64_t sub_474DC@<X0>(int a1@<W2>, int a2@<W3>, unsigned int a3@<W8>)
{
  v5 = (v3 - 358065034) & 0x1FCF;
  v6 = a3 <= (((a1 + a2 + v5 - 966 + 901) | 0x22) ^ 0x402u);
  return (*(v4 + 8 * (((2 * v6) | (16 * v6)) ^ v5)))();
}

uint64_t sub_47534(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int32x4_t a12, int32x4_t a13)
{
  a12 = vdupq_n_s32(0x46732821u);
  a13 = a12;
  return (*(v13 + 8 * ((16 * (((a1 - 1557) | 0x404u) - 1215 != ((a1 + 2147481888) & v14))) | ((((a1 - 1557) | 0x404u) - 1215 != ((a1 + 2147481888) & v14)) << 6) | (a1 - 80))))(&a12);
}

uint64_t sub_47598()
{
  v6 = 17 * (v4 ^ 0x41E);
  *(v2 + 4) = v0;
  *(v5 - 144) = v2;
  *(v5 - 136) = &v8;
  *(v5 - 128) = (v6 + 1293) ^ (((v5 - 144) ^ 0x970DCC13) * v1);
  return (*(v3 + 8 * (v6 ^ 0x97A)))(v5 - 144);
}

void sub_4774C()
{
  if (v0 == 1680291295)
  {
    v2 = -1261164275;
  }

  else
  {
    v2 = 1261138645;
  }

  *(v1 + 36) = v2;
}

void sub_477AC(uint64_t a1)
{
  v1 = *(a1 + 16) + 2066391179 * (a1 ^ 0xAF278218);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_478C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v8 - 168) = v5;
  *(v8 - 164) = -944456115;
  v9 = 1564307779 * ((v8 - 152) ^ 0x25C3F47A970DCC13);
  v10 = v8 - 176;
  *(v10 + 48) = *v7 + v9;
  *(v10 + 32) = v9;
  *(v8 - 112) = 763640399 - v9 + v4;
  *(v8 - 120) = v9;
  *(v8 - 116) = v9 + v4 - 196592583 + 24;
  *(v8 - 152) = v4 - 196592583 - v9;
  *(v8 - 148) = ((v4 - 196592583) ^ 0x5E) + v9;
  v11 = (*(v6 + 8 * (a4 + v4 + 1638)))(v8 - 152);
  return (*(v6 + 8 * *(v8 - 136)))(v11);
}

uint64_t sub_47A04@<X0>(int a1@<W8>)
{
  v10 = v3 - 3231155289;
  v12 = ((**v2 - (*v1 ^ v7)) ^ (((a1 + 1208082329) | 0x10207D0) - 1428434962)) + (v5 & (2 * (**v2 - (*v1 ^ v7)))) + v9 != v6 || v10 == 0;
  return (*(v8 + 8 * ((v12 * v4) ^ a1)))();
}

uint64_t sub_47C74()
{
  v1 = STACK[0x340] - 891;
  LODWORD(STACK[0x59C]) = v0;
  return sub_36978(v1);
}

void sub_47C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 120) = a12;
  *(v21 - 112) = &a16;
  *(v21 - 128) = v18 - ((((v21 - 144) | 0x3C57B8D) - (v21 - 144) + ((v21 - 144) & 0xFC3A8470)) ^ 0xACE2F995) * v19 + 118;
  *(v21 - 144) = &a18;
  *(v21 - 136) = &a18;
  *(v21 - 104) = v20;
  JUMPOUT(0xF138);
}

uint64_t sub_47D00(uint64_t a1, int a2)
{
  v5 = v4 - 750;
  v6 = v3 + 204186478;
  v7 = v6 < -216529864;
  v8 = a2 + 204186478 < v6;
  if (v7 != a2 + 204186478 < (v5 ^ 0xF3180625))
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((88 * ((((v5 ^ 0x4F) + 1) ^ v8) & 1)) ^ v5)))();
}

uint64_t sub_47E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char *a28, char *a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  v41 = v34 - 1026;
  v42 = 1785193651 * ((((v40 - 144) | 0x9947ACF5) + (~(v40 - 144) | 0x66B8530A)) ^ 0x8A9B40D4);
  *(v40 - 128) = &a33;
  *(v40 - 144) = v33;
  *(v40 - 136) = v42 + v34 - 23;
  *(v40 - 132) = v42 + v35 - 1707122824 + v34 - 1026;
  (*(v37 + 8 * (v34 ^ 0xC32u)))(v40 - 144);
  a28 = &a26;
  a29 = &a24;
  *(v40 - 144) = (v41 + 1090) ^ (((((v40 - 144) | 0x5E115CB4) - (v40 - 144) + ((v40 - 144) & 0xA1EEA348)) ^ 0x967098E2) * v36);
  *(v40 - 136) = v39;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 ^ 0x845)))(v40 - 144);
  *(v40 - 144) = v41 + 1029 + 2066391179 * ((((2 * (v40 - 144)) | 0xA07BF282) - (v40 - 144) - 1346238785) ^ 0xFF1A7B59);
  *(v40 - 120) = &a33;
  *(v40 - 112) = &a22;
  *(v40 - 136) = v39;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 ^ 0x85E)))(v40 - 144);
  v43 = a29;
  *(v40 - 112) = &a22;
  *(v40 - 104) = &a28;
  *(v40 - 120) = v39;
  *(v40 - 128) = v41 + 825 - 2066391179 * ((((v40 - 144) | 0x31C7C8D5) + (~(v40 - 144) | 0xCE38372A)) ^ 0x9EE04ACC);
  *(v40 - 144) = &a22;
  *(v40 - 136) = v43;
  (*(v37 + 8 * (v41 ^ 0x846)))(v40 - 144);
  *(v40 - 144) = &a28;
  *(v40 - 136) = v39;
  *(v40 - 112) = &a22;
  *(v40 - 104) = a14;
  *(v40 - 128) = &a22;
  *(v40 - 120) = v41 + 258 + 1388665877 * ((v40 + 51243395 - 2 * ((v40 - 144) & 0x30DEA13)) ^ 0x8EA088FF);
  (*(v37 + 8 * (v41 + 2031)))(v40 - 144);
  *(v40 - 144) = (v41 + 1090) ^ (50899313 * ((-878358131 - ((v40 - 144) | 0xCBA5518D) + ((v40 - 144) | 0x345AAE72)) ^ 0xFC3B6A24));
  *(v40 - 136) = v38;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 + 1987)))(v40 - 144);
  *(v40 - 120) = &a33;
  *(v40 - 112) = &a31;
  *(v40 - 144) = v41 + 1029 + 2066391179 * ((((v40 - 144) | 0xBC9DEA60) - ((v40 - 144) & 0xBC9DEA60)) ^ 0x13BA6878);
  *(v40 - 136) = v38;
  *(v40 - 128) = &a28;
  (*(v37 + 8 * (v41 ^ 0x85E)))(v40 - 144);
  v44 = a29;
  *(v40 - 128) = v41 + 825 - 2066391179 * ((((v40 - 144) | 0x6031F712) - (v40 - 144) + ((v40 - 144) & 0x9FCE08E8)) ^ 0xCF16750A);
  *(v40 - 120) = v38;
  *(v40 - 112) = &a31;
  *(v40 - 104) = &a28;
  *(v40 - 144) = &a31;
  *(v40 - 136) = v44;
  (*(v37 + 8 * (v41 + 1986)))(v40 - 144);
  *(v40 - 144) = &a28;
  *(v40 - 136) = v38;
  *(v40 - 120) = v41 + 258 + 1388665877 * (((v40 - 144) & 0x300B386C | ~((v40 - 144) | 0x300B386C)) ^ 0x4259A57F);
  *(v40 - 128) = &a31;
  *(v40 - 112) = &a31;
  *(v40 - 104) = a15;
  (*(v37 + 8 * (v41 + 2031)))(v40 - 144);
  *(v40 - 136) = v41 + 742307843 * ((2 * ((v40 - 144) & 0x1BB3AAE8) - (v40 - 144) - 464759534) ^ 0xFA6ED847) + 1488;
  *(v40 - 144) = &a22;
  *(v40 - 128) = &a31;
  (*(v37 + 8 * (v41 + 1974)))(v40 - 144);
  *(v40 - 132) = v41 + 50899313 * ((-1181750597 - ((v40 - 144) | 0xB98FEABB) + ((v40 - 144) | 0x46701544)) ^ 0x8E11D112) + 986;
  *(v40 - 144) = &a31;
  v45 = (*(v37 + 8 * (v41 + 2039)))(v40 - 144);
  return (*(v37 + 8 * ((25 * (((v41 + 34) ^ (*(v40 - 136) == (((v41 + 545) | 0x40) ^ 0x66D9B8FC))) & 1)) ^ v41)))(v45);
}

uint64_t sub_482FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v22 - 128) = v21 - (v19 ^ 0xD4A71C5A) * v16 + 518;
  *(v22 - 120) = v20;
  *(v22 - 136) = a16;
  v23 = (*(v18 + 8 * (v21 ^ 0xBBE)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 112) > (v17 + 1)) * ((v21 ^ 0x382) + 1064)) ^ v21)))(v23);
}

uint64_t sub_483A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  v43 = 143681137 * ((0xDEC48DF6646EC880 - (v40 | 0xDEC48DF6646EC880) + a36) ^ 0x3043F00E4F362B25);
  v44 = v42 - 176;
  *(v44 + 32) = (v41 + 1) - v43;
  *(v44 + 64) = v43 + 3;
  *(v42 - 132) = v37 - v43 + 988921014;
  *(v42 - 152) = v37 - v43 + 988921138;
  *(v42 - 124) = a37 ^ v43;
  *(v42 - 120) = v43 + v37 - 288126657;
  *(v42 - 128) = -143681137 * ((1684981888 - (v40 | 0x646EC880) + a36) ^ 0x4F362B25);
  v45 = (*(v39 + 8 * (v38 + v37 + 1605)))(v42 - 152);
  return (*(v39 + 8 * *(v42 - 136)))(v45);
}

uint64_t sub_4853C@<X0>(unsigned int a1@<W8>)
{
  v4 = v3 + (v1 ^ 0xD6Eu) - 1378;
  if (HIDWORD(v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = (((v1 ^ 0xB90) - 928) ^ a1) >= v4;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((89 * v6) ^ v1)))();
}

void sub_48868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v32 = ((1090269794 - ((v31 - 144) | 0x40FC3262) + ((v31 - 144) | 0xBF03CD9D)) ^ 0x10244F85) * v29;
  *(v31 - 136) = v32 + v26 + 1775;
  *(v31 - 132) = v32 + 1068377366;
  *(v31 - 144) = &a26;
  (*(v27 + 8 * (v26 ^ 0x882)))(v31 - 144);
  *(v31 - 128) = v26 - ((967630238 - ((v31 - 144) | 0x39ACDD9E) + ((v31 - 144) | 0xC6532261)) ^ 0x6974A079) * v29 + 943;
  *(v31 - 144) = &a18;
  *(v31 - 136) = &a18;
  *(v31 - 112) = &a26;
  *(v31 - 104) = v30;
  *(v31 - 120) = v28;
  (*(v27 + 8 * (v26 ^ 0x8D8)))(v31 - 144);
  JUMPOUT(0x475B0);
}

uint64_t sub_48A64@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v55 = &a50 + (v53 - 1);
  v56 = 833381725 * ((*(*v54 + (*a28 & 0xFFFFFFFFFB946410)) ^ v55) & 0x7FFFFFFF);
  v57 = 833381725 * (v56 ^ HIWORD(v56));
  v58 = *(*(&off_9DA90 + v51 - 153) + (v57 >> 24) - 6);
  v59 = *(*(&off_9DA90 + (v51 ^ 0x181)) + (v57 >> 24) - 8);
  v60 = ((a1 >> v50) - ((((v51 + 1297) | 0x28) - 1495) & (2 * (a1 >> v50))) + (((v51 + 610) | 0x94) ^ 0xF) - 63) ^ *(*(&off_9DA90 + (v51 ^ 0x134)) + (v57 >> 24) - 4) ^ v58 ^ v59 ^ v57 ^ (-55 * (v57 >> 24));
  LODWORD(v57) = (((a1 >> v50) - ((((v51 + 17) | 0x28) + 41) & (2 * (a1 >> v50))) + (((v51 + 98) | 0x94) ^ 0xF) - 63) ^ *(*(&off_9DA90 + (v51 ^ 0x134)) + (v57 >> 24) - 4) ^ v58 ^ v59 ^ v57 ^ (-55 * BYTE3(v57)));
  *v55 = v60 ^ 0xB4;
  return (*(v52 + 8 * ((1387 * (v53 == (v57 != 180))) ^ v51)))();
}

uint64_t sub_48BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = a15;
  *(v20 - 136) = &a17;
  *(v20 - 128) = v19 + 742307843 * ((v20 - 136) ^ 0x1E228D55) + 1531;
  v21 = (*(v17 + 8 * (v19 + 2017)))(v20 - 136);
  return (*(v17 + 8 * (((v18 == ((2 * v19) ^ 0x35E) - 733) * ((367 * (v19 ^ 0xC2)) ^ 0x2D8)) | v19)))(v21);
}

uint64_t sub_48C54()
{
  v3 = 1082434553 * ((v2 - 1023002447 - 2 * ((v2 - 216) & 0xC3063989)) ^ 0x5841CF03);
  *(v2 - 184) = 0;
  *(v2 - 216) = v3 ^ 0xA68CCC3F;
  *(v2 - 212) = (v1 + 434) ^ v3;
  *(v2 - 200) = &STACK[0x460];
  *(v2 - 208) = &STACK[0x55C];
  v4 = (*(v0 + 8 * (v1 + 1853)))(v2 - 216);
  return (*(v0 + 8 * (((*(v2 - 192) != -1261164275) * (v1 - 355)) ^ v1)))(v4);
}

void sub_48D0C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v31 = ((((2 * ((v30 - 144) ^ 0x1D52837B)) | 0x94B1D1DA) - ((v30 - 144) ^ 0x1D52837B) + 900142867) ^ 0x1F6BAFC0) * v28;
  *(v30 - 120) = (v26 - 534) ^ v31;
  *(v30 - 140) = v31 + v27 - 66570497 + 5 * (v26 ^ 0x4C2);
  *(v30 - 136) = &a26;
  *(v30 - 128) = a1;
  (*(v29 + 8 * (v26 ^ 0xC02)))(v30 - 144);
  JUMPOUT(0x47EBCLL);
}

uint64_t sub_48D9C(__n128 a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v9 = (a6 + 4 * a8);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * (((a3 != a8) * a7) ^ a5)))();
}

uint64_t sub_48E68(__n128 a1)
{
  a1.n128_u16[0] = 12850;
  a1.n128_u8[2] = 50;
  a1.n128_u8[3] = 50;
  a1.n128_u8[4] = 50;
  a1.n128_u8[5] = 50;
  a1.n128_u8[6] = 50;
  a1.n128_u8[7] = 50;
  return sub_48EA4(59, a1);
}

uint64_t sub_48EA4(int a1, double a2)
{
  v9 = (v6 + v2 + v3);
  *v9 = a2;
  v9[1] = a2;
  return (*(v8 + 8 * (((v7 + v2 != v4) * a1) ^ v5)))();
}

uint64_t sub_48F24()
{
  *(v3 - 216) = (v1 - 875954893) ^ (1564307779 * ((((v3 - 216) | 0x175FE889) - (v3 - 216) + ((v3 - 216) & 0xE8A01770)) ^ 0x8052249A));
  (*(v0 + 8 * (v1 + 1398)))(v3 - 216);
  LODWORD(STACK[0x26C]) += (43 * (v1 ^ 0x326)) ^ 0x80;
  *(v3 - 212) = v1 - ((v3 - 216) ^ 0xD4A71C5A) * v2 + 600;
  *(v3 - 216) = (((v3 + 40) ^ 0x5A) * v2) ^ 0x35;
  *(v3 - 200) = &STACK[0x558];
  *(v3 - 208) = &STACK[0x46C];
  v4 = (*(v0 + 8 * (v1 ^ 0xBE6)))(v3 - 216);
  LODWORD(STACK[0x504]) = *(v3 - 192);
  LODWORD(STACK[0x270]) = 268435459;
  return sub_49028(v4);
}

uint64_t sub_490F8(uint64_t a1)
{
  v6 = v5[396] ^ (((((v1 - 476269884) & 0x1C634BE5) + v4) & *v5 | v5[623] & 0x80000000) >> 1);
  v5[623] = (v6 + v2 - ((2 * v6) & 0x929BF054)) ^ *(a1 + 4 * (*v5 & (v1 - 1273)));
  return (*(v3 + 8 * ((356 * (LODWORD(STACK[0x4E8]) > 0x26F)) ^ v1)))();
}

uint64_t sub_491D8()
{
  v6 = (v4 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 ^ 0x61A) + 1546) ^ 0x289)) ^ v1 ^ 0x61A)))();
}

uint64_t sub_49224()
{
  v0.n128_u64[0] = 0x6464646464646464;
  v0.n128_u64[1] = 0x6464646464646464;
  v1.n128_u64[0] = 0x3232323232323232;
  v1.n128_u64[1] = 0x3232323232323232;
  return sub_49268(v0, v1);
}

uint64_t sub_49268@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = (v7 + v5 + v3);
  v12 = vaddq_s8(vsubq_s8(*(v9 + v5 + 16), vandq_s8(vaddq_s8(*(v9 + v5 + 16), *(v9 + v5 + 16)), a2)), a3);
  *v11 = vaddq_s8(vsubq_s8(*(v9 + v5), vandq_s8(vaddq_s8(*(v9 + v5), *(v9 + v5)), a2)), a3);
  v11[1] = v12;
  return (*(v8 + 8 * ((v10 + v6 + 325) ^ ((v5 + v4 - 1714 == a1) << 10))))();
}

uint64_t sub_492C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *(v20 - 136) = v18;
  *(v20 - 120) = v17;
  *(v20 - 128) = v15 - a15 * v19 - 93;
  v21 = (*(v16 + 8 * (v15 ^ 0xDD3)))(v20 - 136);
  return (*(v16 + 8 * ((152 * (*(v20 - 112) > (v15 ^ 0x66Du) + 1135060314)) ^ v15)))(v21);
}

_BYTE *sub_49810(_BYTE *result, unsigned int a2, unint64_t a3)
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

id sub_49FB8(uint64_t a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Books app was removed - removing assets", v4, 2u);
  }

  return [*(a1 + 32) _purgeContentForMediaType:2];
}

void sub_4A0A4(uint64_t a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Music app was removed - cancelling sync session and removing assets", buf, 2u);
  }

  v3 = [ATSession sessionsWithSessionTypeIdentifier:ATSessionTypeDeviceSync];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 isCancelled] & 1) == 0 && (objc_msgSend(v8, "isFinished") & 1) == 0)
        {
          [v8 cancel];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) _purgeContentForMediaType:8];
}

void sub_4A5D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [NSNumber numberWithUnsignedInt:v2];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = 0;
  [v3 executeUpdate:@"DELETE FROM artwork WHERE artwork_token IN (SELECT artwork_token FROM artwork JOIN artwork_token USING (artwork_token) JOIN item ON artwork_token.entity_pid=item.item_pid WHERE item.media_type=?)" withParameters:v5 error:&v7];

  v6 = v7;
}

void sub_4A6AC(void *a1, uint64_t a2, void **a3)
{
  v5 = a1[4];
  v6 = [NSNumber numberWithLongLong:a2];
  [v5 addObject:v6];

  v7 = *a3;
  if (*a3)
  {
    v9 = a1[5];
    v8 = a1[6];
    v10 = v7;
    v11 = [v8 mediaFolderPathByAppendingPathComponent:v10];
    [v9 addObject:v11];
  }
}

uint64_t sub_4A76C(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v17;
    v4 = ML3TrackPropertyLocationFileName;
    v5 = ML3TrackPropertyBaseLocationID;
    v6 = ML3EntityPropertyKeepLocal;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [[ML3Track alloc] initWithPersistentID:objc_msgSend(*(*(&v16 + 1) + 8 * v7) inLibrary:{"longLongValue"), *(a1 + 40)}];
        v20[0] = v4;
        v20[1] = v5;
        v21[0] = &stru_9F828;
        v21[1] = &off_A0DD8;
        v20[2] = v6;
        v21[2] = &off_A0DD8;
        v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
        v10 = [v8 setValuesForPropertiesWithDictionary:v9];

        if ((v10 & 1) == 0)
        {
          v11 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "failed to clear properties of tracks no longer in the playlist", buf, 2u);
          }
        }

        v7 = v7 + 1;
      }

      while (v2 != v7);
      v2 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v2);
  }

  return 1;
}

void sub_4AB34(uint64_t a1)
{
  [*(*(a1 + 32) + 216) removeObject:*(a1 + 40)];
  v8 = [*(a1 + 40) sessionTypeIdentifier];
  if ([v8 isEqualToString:ATSessionTypeDeviceSync])
  {
    v2 = [*(a1 + 40) dataClass];
    v3 = [v2 isEqualToString:@"Media"];

    if (v3 && *(*(a1 + 32) + 248) == 1)
    {
      v4 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Syncing again due to updated pinning settings", buf, 2u);
      }

      v5 = dispatch_time(0, 5000000000);
      v6 = *(a1 + 32);
      v7 = *(v6 + 88);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_4ACB4;
      block[3] = &unk_9F248;
      block[4] = v6;
      dispatch_after(v5, v7, block);
      *(*(a1 + 32) + 248) = 0;
    }
  }

  else
  {
  }
}

void sub_4B054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_4B0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v6 = [*a3 longLongValue] == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a3 + 8);
  if (v7)
  {
    v8 = [v7 unsignedLongLongValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = *(a3 + 24);
  if (v12)
  {
    v13 = [v12 unsignedIntegerValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_6F3C8(v13);
  if (v8)
  {
    if (v6)
    {
LABEL_15:
      ++*(*(*(a1 + 72) + 8) + 24);
      *(*(*(a1 + 80) + 8) + 24) += v8;
      v15 = [*(a1 + 48) objectForKey:v14];
      if (!v15)
      {
        v15 = objc_alloc_init(ATDetailedRequestInfoForAssetType);
        if (v15)
        {
          [*(a1 + 48) setObject:v15 forKey:v14];
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    if ((v13 & 4) != 0)
    {
      v8 = 52428800;
    }

    else if (v11 <= 0.0)
    {
      v8 = 7340032;
    }

    else
    {
      v8 = (v11 * 35.8260224);
    }

    v16 = *(a1 + 32);
    v17 = [NSNumber numberWithUnsignedLongLong:v8];
    v18 = [NSString stringWithFormat:@"%lld", a2];
    [v16 setObject:v17 forKey:v18];

    v19 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v23 = a2;
      v24 = 1024;
      v25 = v13;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Estimating the size of track %lld media_type %u to %llu", buf, 0x1Cu);
    }

    if (v6)
    {
      goto LABEL_15;
    }
  }

  ++*(*(*(a1 + 56) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) += v8;
  v15 = [*(a1 + 40) objectForKey:v14];
  if (!v15)
  {
    v15 = objc_alloc_init(ATDetailedRequestInfoForAssetType);
    if (v15)
    {
      [*(a1 + 40) setObject:v15 forKey:v14];
    }
  }

  [v15 updateBytesSynced:v8];
LABEL_30:
  v20 = [NSNumber numberWithLongLong:a2];
  v21 = [v20 stringValue];
  [v15 updateBytesToSync:v8 forItemIdentifier:v21];

  [v15 incrementAssetCountToSync];
}

void sub_4B64C(uint64_t a1)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MusicSoundCheckEnabledSetting", @"com.apple.mobileipod", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  v5 = CFPreferencesCopyAppValue(@"SortAlbums", @"com.apple.Music");
  v6 = *(*(a1 + 32) + 208);
  if (v6)
  {
    v7 = [v6 objectForKey:@"MusicSortingPreference"];
    v8 = [*(*(a1 + 32) + 208) objectForKey:@"SoundCheckEnabled"];
    if (!(v5 | v7) || v5 && v7 && ([v5 isEqualToString:v7] & 1) != 0)
    {
      if (v4 == [v8 BOOLValue])
      {
        v9 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(a1 + 32) + 208);
          *buf = 138543362;
          v22 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "playlist settings %{public}@ have not changed", buf, 0xCu);
        }

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      [v8 BOOLValue];
    }

    v12 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 208);
      v15 = *(v13 + 128);
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "cached playlist settings: %{public}@ different from updated playlist settings: %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_22;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1 + 32) + 128);
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "cached playlist settings is nil, nanoSettings: %{public}@", buf, 0xCu);
  }

LABEL_23:

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v16 = [NSNumber numberWithUnsignedChar:v4];
    v17 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"SyncPlaylistID", &off_A0DF0, @"ShowAllMusic", v16, @"SoundCheckEnabled", &off_A0DD8, @"SyncLimitType", &off_A0DD8, @"SyncLimit", &off_A0DD8, @"SyncType", 0];

    if (v5)
    {
      [v17 setObject:v5 forKey:@"MusicSortingPreference"];
    }

    objc_storeStrong((*(a1 + 32) + 208), v17);
    v18 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1 + 32) + 208);
      *buf = 138543362;
      v22 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "cached playlist settings updated to: %{public}@", buf, 0xCu);
    }
  }
}

void sub_4BA48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;

  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Paired device changed - clearing cached playlist settings", v4, 2u);
  }
}

void sub_4C06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4C090(uint64_t a1)
{
  sub_4C338();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NMSyncDefaults");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_A76E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNMSyncDefaultsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MLSyncClient.m" lineNumber:152 description:{@"Unable to find class %s", "NMSyncDefaults"}];

    __break(1u);
  }
}

void sub_4C158(uint64_t a1)
{
  sub_4C338();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NMSMediaSettingsSynchronizer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_A76F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNMSMediaSettingsSynchronizerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MLSyncClient.m" lineNumber:153 description:{@"Unable to find class %s", "NMSMediaSettingsSynchronizer"}];

    __break(1u);
  }
}

void sub_4C220(uint64_t a1)
{
  sub_4C338();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NMSMusicRecommendationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_A76F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNMSMusicRecommendationManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MLSyncClient.m" lineNumber:155 description:{@"Unable to find class %s", "NMSMusicRecommendationManager"}];

    __break(1u);
  }
}

void *sub_4C2E8(uint64_t a1)
{
  v2 = sub_4C338();
  result = dlsym(v2, "NMSMediaPinningManagerDownloadInfoDidInvalidateNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_A7700 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_4C338()
{
  v4[0] = 0;
  if (!qword_A76E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_4C4A4;
    v4[4] = &unk_9F118;
    v4[5] = v4;
    v5 = off_9EA40;
    v6 = 0;
    qword_A76E8 = _sl_dlopen();
  }

  v0 = qword_A76E8;
  if (!qword_A76E8)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *NanoMusicSyncLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MLSyncClient.m" lineNumber:148 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_4C4A4()
{
  result = _sl_dlopen();
  qword_A76E8 = result;
  return result;
}

void sub_4CB6C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "failed to send response to music settings request. err=%{public}@", &v4, 0xCu);
    }
  }
}

void sub_4CF54(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "failed to send response to music settings request. err=%{public}@", &v4, 0xCu);
    }
  }
}

void sub_4D350(id a1, ATResponse *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "failed to send updated music settings. err=%{public}@", &v9, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  v7 = [(ATResponse *)v4 error];

  if (v7)
  {
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [(ATResponse *)v4 error];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "failed to process music settings on peer. err=%{public}@", &v9, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
}

id sub_4D72C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    [v2 _sendUpdatedSettings];
    v2 = *(a1 + 32);
  }

  if ([v2 _shouldCancelActiveSessionsForLegacyPairedDevices])
  {
    v3 = *(a1 + 32);
    v4 = ATSessionTypeDeviceSync;
    v5 = [NSError errorWithDomain:@"ATError" code:27 userInfo:0];
    [v3 _cancelSyncSessionsWithSessionIdentifier:v4 groupingKey:@"ATDeviceSyncSessionAssetTaskGroupingKey" waitToFinish:0 withError:v5];
  }

  v6 = *(a1 + 32);

  return [v6 _invokeHasChangesCallbackWithPriority:1];
}

void *sub_4DB38(void *result)
{
  if (*(result[4] + 80))
  {
    v1 = result;
    v2 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "got sync preferences changed notification", buf, 2u);
    }

    result = [v1[4] _rebuildCachedPlaylistSettings];
    if (result)
    {
      v3 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "syncing updated settings to paired device", v4, 2u);
      }

      return [v1[4] _syncUpdatedSettingsToPairedDevice];
    }
  }

  return result;
}

uint64_t sub_4DEF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a7 = 1;
  return result;
}

uint64_t sub_4DF08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a6 = 1;
  return result;
}

uint64_t sub_4DF20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a8 = 1;
  return result;
}

uint64_t sub_4DF38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a6 = 1;
  return result;
}

uint64_t sub_4DF50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a6 = 1;
  return result;
}

void sub_4E854(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) path];
  v4 = [v2 attributesOfItemAtPath:v3 error:0];
  v5 = [v4 fileSize];

  ImageSource = MSVImageUtilitiesCreateImageSource();
  if (!ImageSource)
  {
    goto LABEL_15;
  }

  v7 = ImageSource;
  v8 = +[NSMutableData data];
  DataImageDestination = MSVImageUtilitiesCreateDataImageDestination();
  if (!DataImageDestination)
  {
    goto LABEL_8;
  }

  v10 = DataImageDestination;
  if (!MSVImageUtilitiesResizeSourceImageToJPEGDestination())
  {
    CFRelease(v10);
LABEL_8:
    CFRelease(v7);
    goto LABEL_9;
  }

  v11 = CGImageDestinationFinalize(v10);
  CFRelease(v10);
  CFRelease(v7);
  if (!v11)
  {
LABEL_9:
    v13 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "failed to resize image at '%{public}@' - returning original.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if ([v8 length] < v5)
  {
    v12 = v8;
    goto LABEL_13;
  }

LABEL_12:
  v12 = [NSData dataWithContentsOfURL:*(a1 + 32)];
LABEL_13:
  v15 = v12;

  if (v15)
  {
    [*(a1 + 40) setTotalBytes:{objc_msgSend(v15, "length")}];
    v16 = [NSInputStream inputStreamWithData:v15];
    v17 = [*(a1 + 32) lastPathComponent];
    v23[1] = @"_AssetSize";
    v24[0] = v17;
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) totalBytes]);
    v24[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

LABEL_15:
  v20 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a1 + 32);
    *buf = 138543362;
    v26 = v21;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "failed to load image data from %{public}@", buf, 0xCu);
  }

  v22 = *(a1 + 48);
  v15 = [NSError errorWithDomain:@"ATError" code:0 userInfo:0];
  (*(v22 + 16))(v22, v15, 0, 0);
LABEL_18:
}

void sub_4F120(uint64_t a1)
{
  v2 = [*(a1 + 32) variantOptions];
  v3 = [v2 objectForKey:@"AssetParts"];
  v4 = [v3 unsignedIntegerValue];

  if (v4 == &dword_4)
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 48);

    [v11 getDataForGeniusAsset:v12 withCompletion:v13];
  }

  else if (v4 == (&dword_0 + 2))
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);

    [v8 getDataForArtworkAsset:v9 withCompletion:v10];
  }

  else if (v4 == (&dword_0 + 1))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);

    [v5 getDataForTrackAsset:v6 withCompletion:v7];
  }

  else
  {
    v14 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "unsupported request for asset %{public}@", &v18, 0xCu);
    }

    v16 = *(a1 + 48);
    v17 = [NSError errorWithDomain:@"ATError" code:21 userInfo:0];
    (*(v16 + 16))(v16, v17, 0, 0);
  }
}

void sub_4F648(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v19 = 138543362;
        *v20 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "failed to get udpated status. err=%{public}@", &v19, 0xCu);
      }

      else
      {
        v9 = [v5 error];
        v19 = 138543362;
        *v20 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "failed to get udpated status. err=%{public}@", &v19, 0xCu);
      }
    }
  }

  else
  {
    v10 = [v5 parameterForKey:@"TrackRemainingCount"];
    v11 = [v10 unsignedIntegerValue];

    v12 = [v5 parameterForKey:@"TrackCount"];
    v13 = [v12 unsignedIntegerValue];

    v14 = [v5 parameterForKey:@"UnknownSyncedPlaylistId"];
    if (v14)
    {
      v15 = [v5 parameterForKey:@"UnknownSyncedPlaylistId"];
      v16 = [v15 BOOLValue];
    }

    else
    {
      v16 = 1;
    }

    v17 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109632;
      *v20 = v11;
      *&v20[4] = 1024;
      *&v20[6] = v13;
      v21 = 1024;
      v22 = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "remainingaAssetsCount=%d, totalAssetCount=%d, syncedPlaylistKnownToGizmo=%d", &v19, 0x14u);
    }

    if (v16)
    {
      v18 = *(a1 + 32);
      if (v11)
      {
        [v18 _resetLastSyncedVersionForSyncedPlaylist];
      }

      else
      {
        [v18 _updateSyncPlaylistToCurrentRevision];
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_4F8A8(id a1, ML3DatabaseConnection *a2)
{
  v2 = a2;
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "querying the database for fetchable artwork that's not downloaded for keep local tracks and collections", v6, 2u);
  }

  v4 = [(ML3DatabaseConnection *)v2 executeQuery:@"SELECT entity_pid withParameters:fetchable_artwork_source_type FROM item LEFT OUTER JOIN best_artwork_token ON item.item_pid = best_artwork_token.entity_pid AND best_artwork_token.entity_type = ? WHERE item.keep_local = ? AND best_artwork_token.available_artwork_token = ? AND best_artwork_token.fetchable_artwork_token != ?", &off_A13C8];
  [v4 enumerateRowsWithBlock:&stru_9E7E8];
  v5 = [(ML3DatabaseConnection *)v2 executeQuery:@"SELECT entity_pid withParameters:fetchable_artwork_source_type FROM container LEFT OUTER JOIN best_artwork_token ON container.container_pid = best_artwork_token.entity_pid AND best_artwork_token.entity_type = ? WHERE container.keep_local = ? AND best_artwork_token.available_artwork_token = ? AND best_artwork_token.fetchable_artwork_token != ?", &off_A13E0];

  [v5 enumerateRowsWithBlock:&stru_9E828];
}

void sub_4F988(id a1, ML3DatabaseRow *a2, NSError *a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(ML3DatabaseRow *)v4 int64ForColumnIndex:0];
  v6 = [(ML3DatabaseRow *)v4 int64ForColumnIndex:1];

  v7 = +[MPCloudController sharedCloudController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4FA54;
  v8[3] = &unk_9E808;
  v8[4] = v5;
  [v7 loadArtworkForEntityPersistentID:v5 entityType:1 artworkType:5 artworkSourceType:v6 completionHandler:v8];
}

void sub_4FA54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ATLogCategorySyncBundle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 134218242;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      v7 = "failed to load artwork for container pid: %lld error:%{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = 134217984;
    v13 = v11;
    v7 = "successfully loaded artwork for container pid: %lld";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_4FB64(id a1, ML3DatabaseRow *a2, NSError *a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(ML3DatabaseRow *)v4 int64ForColumnIndex:0];
  v6 = [(ML3DatabaseRow *)v4 int64ForColumnIndex:1];

  v7 = +[MPCloudController sharedCloudController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4FC30;
  v8[3] = &unk_9E808;
  v8[4] = v5;
  [v7 loadArtworkForEntityPersistentID:v5 entityType:0 artworkType:1 artworkSourceType:v6 completionHandler:v8];
}

void sub_4FC30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ATLogCategorySyncBundle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 134218242;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      v7 = "failed to load artwork for track pid: %lld error: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = 134217984;
    v13 = v11;
    v7 = "successfully loaded artwork for track pid: %lld";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_4FE44(uint64_t a1)
{
  v2 = [*(a1 + 32) _library];
  if (![*(*(a1 + 32) + 192) count])
  {
    goto LABEL_59;
  }

  v63 = a1;
  v3 = *(*(a1 + 32) + 192);
  v64 = v2;
  v62 = v2;
  v71 = +[ATAirlock sharedInstance];
  v77 = +[NSMutableArray array];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v79 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v3;
  v84 = [obj countByEnumeratingWithState:&v93 objects:v106 count:16];
  v5 = 0;
  if (!v84)
  {
    goto LABEL_51;
  }

  v82 = MLDatabaseOperationAttributeDownloadedAssetPersistentIdKey;
  v83 = *v94;
  v81 = MLDatabaseOperationAttributeDownloadedAssetEntityTypeKey;
  v74 = MLDatabaseOperationAttributeDownloadedAssetArtworkPathKey;
  v75 = MLDatabaseOperationAttributeDownloadedAssetGeniusDataPathKey;
  v73 = MLDatabaseOperationAttributeDownloadedAssetLyricsPathKey;
  v66 = MLDatabaseOperationAttributeDownloadSourceContainerIDKey;
  v67 = MLDatabaseOperationAttributeDownloadedAssetTrackPathKey;
  v70 = MLDatabaseOperationAttributeDownloadedAssetProtectionTypeKey;
  v65 = ML3TrackPropertyIsOTAPurchased;
  v80 = MLDatabaseOperationAttributeDownloadedAssetTrackPropertiesKey;
  v76 = v4;
  do
  {
    v6 = 0;
    do
    {
      if (*v94 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v93 + 1) + 8 * v6);
      v8 = +[NSMutableDictionary dictionary];
      v9 = +[NSMutableDictionary dictionary];
      v10 = [v7 identifier];
      [v8 setObject:v10 forKey:v82];

      v11 = [v7 assetType];
      v12 = [v11 isEqualToString:@"Playlist"];

      v13 = [NSNumber numberWithInteger:v12];
      [v8 setObject:v13 forKey:v81];

      v14 = [v7 variantOptions];
      v15 = [v14 objectForKey:@"AssetParts"];
      v16 = [v15 unsignedIntegerValue];

      v17 = [v7 path];
      if (v16 > 3)
      {
        if (v16 == &dword_4)
        {
          v18 = v8;
          v19 = v17;
          v20 = v75;
        }

        else
        {
          if (v16 != &dword_8)
          {
LABEL_14:
            v21 = +[NSAssertionHandler currentHandler];
            v22 = [NSString stringWithUTF8String:"BOOL ImportFinishedAssets(NSArray<ATAsset *> *__strong, ML3MusicLibrary *__strong, BOOL *)"];
            [v21 handleFailureInFunction:v22 file:@"AssetUtils.m" lineNumber:627 description:{@"unexpected asset part %lu", v16}];

            goto LABEL_49;
          }

          v18 = v8;
          v19 = v17;
          v20 = v73;
        }

        goto LABEL_22;
      }

      if (v16 != (&dword_0 + 1))
      {
        if (v16 != (&dword_0 + 2))
        {
          goto LABEL_14;
        }

        v18 = v8;
        v19 = v17;
        v20 = v74;
LABEL_22:
        [v18 setObject:v19 forKey:v20];
        [v79 addObject:v17];
        goto LABEL_49;
      }

      [v77 addObject:v7];
      v23 = _ATLogCategoryAssetUtils();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v98 = v17;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "processing asset with path %{public}@", buf, 0xCu);
      }

      v24 = +[NSFileManager defaultManager];
      if (([v24 fileExistsAtPath:v17] & 1) == 0)
      {
        v36 = _ATLogCategoryAssetUtils();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v98 = v17;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Failed to find asset at path %{public}@ - skipping", buf, 0xCu);
        }

        goto LABEL_48;
      }

      v25 = [v71 pathForDataclass:@"Media"];
      v26 = [v17 hasPrefix:v25];

      if (v26)
      {
        v27 = [v7 identifier];
        v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"F%02d", [v27 longLongValue] % 50);

        v29 = [ML3MusicLibrary pathForResourceFileOrFolder:11];
        v105[0] = v29;
        v69 = v28;
        v105[1] = v28;
        v30 = [NSArray arrayWithObjects:v105 count:2];
        v31 = [NSString pathWithComponents:v30];

        v32 = [v7 path];
        v33 = [v32 lastPathComponent];
        v34 = [NSString stringWithFormat:@"%@/%@", v31, v33];

        if ([v24 fileExistsAtPath:v31])
        {
          v68 = v31;
          v35 = 0;
          goto LABEL_28;
        }

        v37 = v34;
        v92 = 0;
        v38 = [v24 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:0 error:&v92];
        v35 = v92;
        if (v38)
        {
          v68 = v31;
          v34 = v37;
LABEL_28:
          v39 = v35;
          [v24 removeItemAtPath:v34 error:0];
          [v7 path];
          v40 = v37 = v34;
          v91 = v39;
          v41 = [v24 moveItemAtPath:v40 toPath:v37 error:&v91];
          v72 = v91;

          if (v41)
          {
            [v8 setObject:v37 forKey:v67];
            v31 = v68;
LABEL_36:

            goto LABEL_37;
          }

          v42 = _ATLogCategoryAssetUtils();
          v31 = v68;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v98 = v7;
            v99 = 2114;
            v100 = v37;
            v101 = 2114;
            v102 = v72;
            v43 = v42;
            v44 = "failed to move asset %{public}@ to %{public}@. error=%{public}@";
            v45 = 32;
            goto LABEL_34;
          }
        }

        else
        {
          v72 = v35;
          v42 = _ATLogCategoryAssetUtils();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v98 = v31;
            v99 = 2114;
            v100 = v72;
            v43 = v42;
            v44 = "failed to create asset dir %{public}@. error=%{public}@";
            v45 = 22;
LABEL_34:
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, v44, buf, v45);
          }
        }

        goto LABEL_36;
      }

      [v8 setObject:v17 forKey:v67];
LABEL_37:
      v46 = [v7 downloadSourceContainerId];
      v47 = [v46 longLongValue];

      if (v47)
      {
        v48 = [v7 downloadSourceContainerId];
        [v8 setObject:v48 forKey:v66];
      }

      v36 = [v7 clientParams];
      if (qword_A7890 != -1)
      {
        dispatch_once(&qword_A7890, &stru_9F2E0);
      }

      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_7238C;
      v89[3] = &unk_9F220;
      v49 = v9;
      v90 = v49;
      [v36 enumerateKeysAndObjectsUsingBlock:v89];
      if (v36)
      {
        v50 = [v36 valueForKey:@"MLAssetProtectionType"];
        v51 = [v50 integerValue];
      }

      else
      {
        v51 = [v7 protectionType];
      }

      v52 = [NSNumber numberWithInteger:v51];
      [v8 setObject:v52 forKey:v70];

      if (v51 != &dword_0 + 2)
      {
        v53 = [v7 storeInfo];
        v54 = [v53 storeMediaResponseItem];

        if (v54)
        {
          [v49 setObject:&__kCFBooleanTrue forKey:v65];
        }
      }

      v5 = 1;
LABEL_48:

      v4 = v76;
LABEL_49:
      [v8 setObject:v9 forKey:v80];
      [v4 addObject:v8];

      v6 = v6 + 1;
    }

    while (v84 != v6);
    v84 = [obj countByEnumeratingWithState:&v93 objects:v106 count:16];
  }

  while (v84);
LABEL_51:

  v104[0] = v4;
  v103[0] = MLDatabaseOperationAttributeDownloadedAssetsListKey;
  v103[1] = MLDatabaseOperationAttributeTrackSourceKey;
  v55 = [NSNumber numberWithInt:3];
  v104[1] = v55;
  v56 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:2];

  sub_70EE4(v56, v62);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v57 = v79;
  v58 = [v57 countByEnumeratingWithState:&v85 objects:buf count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v86;
    do
    {
      for (i = 0; i != v59; i = i + 1)
      {
        if (*v86 != v60)
        {
          objc_enumerationMutation(v57);
        }

        unlink([*(*(&v85 + 1) + 8 * i) fileSystemRepresentation]);
      }

      v59 = [v57 countByEnumeratingWithState:&v85 objects:buf count:16];
    }

    while (v59);
  }

  *(*(v63 + 32) + 120) = v5;
  [*(*(v63 + 32) + 192) removeAllObjects];
  [v62 notifyDisplayValuesPropertyDidChange];
  v2 = v64;
LABEL_59:
}

void sub_50E08(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT artwork_token.artwork_token withParameters:{sync_id, item_pid, media_type, title FROM item JOIN item_store USING (item_pid) JOIN item_extra USING (item_pid) JOIN artwork_token ON item_pid = entity_pid AND entity_type = ? LEFT OUTER JOIN artwork ON artwork_token.artwork_token = artwork.artwork_token WHERE item_store.sync_id != 0 AND artwork_token.artwork_source_type = ? AND artwork.artwork_token IS NULL GROUP BY artwork_token.artwork_token", &off_A13B0}];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_511EC;
  v4[3] = &unk_9E6F0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v5 = *(a1 + 32);
  v9 = *(a1 + 72);
  v6 = *(a1 + 40);
  [v3 enumerateRowsWithBlock:v4];
}

void sub_50EE4(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = [ML3Container newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v12 = [[ML3ArtworkTokenSet alloc] initWithEntity:v11 artworkType:5];
  v13 = [v12 artworkTokenForSource:300];
  if (v13 && ([*(a1 + 32) isArtworkTokenAvailable:v13] & 1) == 0)
  {
    v14 = *(a1 + 64);
    v15 = *v14 + *(a1 + 56);
    if (v15 <= *(a1 + 72))
    {
      *v14 = v15;
      if (a2)
      {
        v16 = &v34 + 1;
        quot = a2;
        do
        {
          v18 = lldiv(quot, 10);
          quot = v18.quot;
          if (v18.rem >= 0)
          {
            LOBYTE(v19) = v18.rem;
          }

          else
          {
            v19 = -v18.rem;
          }

          *(v16 - 2) = v19 + 48;
          v20 = (v16 - 2);
          --v16;
        }

        while (v18.quot);
        if (a2 < 0)
        {
          *(v16 - 2) = 45;
          v20 = (v16 - 2);
        }

        v21 = CFStringCreateWithBytes(0, v20, &v34 - v20, 0x8000100u, 0);
      }

      else
      {
        v21 = @"0";
      }

      v33 = v21;
      v22 = [[ATAsset alloc] initWithIdentifier:v21 dataclass:@"Media" prettyName:v9];
      [v22 setAssetType:@"Playlist"];
      v23 = [NSNumber numberWithUnsignedInteger:2];
      v24 = [NSDictionary dictionaryWithObject:v23 forKey:@"AssetParts"];
      [v22 setVariantOptions:v24];

      v25 = objc_alloc_init(ATStoreInfo);
      v26 = [v10 stringValue];
      [v25 setSyncID:v26];

      v32 = v25;
      [v22 setStoreInfo:v25];
      v27 = [NSMutableDictionary dictionaryWithObject:&off_A0DA8 forKey:@"AssetParts"];
      v28 = v27;
      v29 = *(a1 + 40);
      if (v29)
      {
        [v27 setObject:v29 forKey:@"Dimensions"];
        v30 = +[ICDeviceInfo currentDeviceInfo];
        v31 = [v30 isWatch];

        if (v31)
        {
          [v28 setObject:&off_A1638 forKey:@"Quality"];
        }
      }

      [v22 setVariantOptions:v28];
      [*(a1 + 48) addObject:v22];
    }

    else
    {
      *a5 = 1;
    }
  }
}

void sub_511EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 int64ForColumnIndex:1];
  v8 = [v6 int64ForColumnIndex:2];
  v9 = [v6 intForColumnIndex:3];
  v10 = [v6 stringForColumnIndex:4];
  v11 = v10;
  v12 = &stru_9F828;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if (v8)
  {
    v14 = &v35 + 1;
    quot = v8;
    do
    {
      v16 = lldiv(quot, 10);
      quot = v16.quot;
      if (v16.rem >= 0)
      {
        LOBYTE(v17) = v16.rem;
      }

      else
      {
        v17 = -v16.rem;
      }

      *(v14 - 2) = v17 + 48;
      v18 = (v14 - 2);
      --v14;
    }

    while (v16.quot);
    if (v8 < 0)
    {
      *(v14 - 2) = 45;
      v18 = (v14 - 2);
    }

    v19 = CFStringCreateWithBytes(0, v18, &v35 - v18, 0x8000100u, 0);
  }

  else
  {
    v19 = @"0";
  }

  v20 = *(a1 + 56);
  v21 = *v20 + *(a1 + 48);
  if (v21 <= *(a1 + 64))
  {
    *v20 = v21;
    v22 = [[ATAsset alloc] initWithIdentifier:v19 dataclass:@"Media" prettyName:v13];
    v23 = objc_alloc_init(ATStoreInfo);
    if (v7)
    {
      v24 = &v35 + 1;
      v25 = v7;
      do
      {
        v26 = lldiv(v25, 10);
        v25 = v26.quot;
        if (v26.rem >= 0)
        {
          LOBYTE(v27) = v26.rem;
        }

        else
        {
          v27 = -v26.rem;
        }

        *(v24 - 2) = v27 + 48;
        v28 = (v24 - 2);
        --v24;
      }

      while (v26.quot);
      if (v7 < 0)
      {
        *(v24 - 2) = 45;
        v28 = (v24 - 2);
      }

      v29 = CFStringCreateWithBytes(0, v28, &v35 - v28, 0x8000100u, 0);
    }

    else
    {
      v29 = @"0";
    }

    [v23 setSyncID:v29];

    [v22 setStoreInfo:v23];
    v30 = [NSMutableDictionary dictionaryWithObject:&off_A0DA8 forKey:@"AssetParts"];
    v31 = v30;
    if ((v9 & 0xC) != 0)
    {
      v32 = *(a1 + 32);
      if (v32)
      {
        [v30 setObject:v32 forKey:@"Dimensions"];
        v33 = +[ICDeviceInfo currentDeviceInfo];
        v34 = [v33 isWatch];

        if (v34)
        {
          [v31 setObject:&off_A1638 forKey:@"Quality"];
        }
      }
    }

    [v22 setVariantOptions:v31];
    [v22 setPowerRequired:*(a1 + 72)];
    [*(a1 + 40) addObject:v22];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_51530(id a1)
{
  v1 = MGCopyAnswer();
  valuePtr = 0;
  if (v1)
  {
    v2 = v1;
    CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    if (valuePtr >= 1)
    {
      v3 = valuePtr;
      v4 = [NSNumber numberWithDouble:valuePtr];
      v9[0] = v4;
      v5 = [NSNumber numberWithDouble:v3];
      v9[1] = v5;
      v6 = [NSArray arrayWithObjects:v9 count:2];
      v7 = qword_A76B8;
      qword_A76B8 = v6;
    }
  }
}

void sub_51ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

uint64_t sub_51F38(uint64_t a1, uint64_t a2)
{
  v3 = [[ML3Container alloc] initWithPersistentID:a2 inLibrary:*(a1 + 32)];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_51FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = &stru_9F828;
  v8 = *a3;
  if (!*a3)
  {
    v8 = &stru_9F828;
  }

  v108 = ML3TrackPropertyPodcastExternalGUID;
  v109 = v8;
  v9 = &off_A0DD8;
  v106 = ML3TrackPropertyStoreAccountID;
  if (*(a3 + 8))
  {
    v10 = *(a3 + 8);
  }

  else
  {
    v10 = &off_A0DD8;
  }

  v107 = v10;
  v11 = *(a3 + 16);
  if (!v11)
  {
    v11 = &off_A0DD8;
  }

  v105 = v11;
  v104 = ML3TrackPropertyStoreItemID;
  if (*(a3 + 24))
  {
    v12 = *(a3 + 24);
  }

  else
  {
    v12 = &stru_9F828;
  }

  v103 = v12;
  v102 = ML3TrackPropertyStoreFlavor;
  v13 = *(a3 + 32);
  if (!v13)
  {
    v13 = &off_A0DD8;
  }

  v101 = v13;
  if (*(a3 + 40))
  {
    v14 = *(a3 + 40);
  }

  else
  {
    v14 = &off_A0DD8;
  }

  v100 = v14;
  v15 = *(a3 + 48);
  if (!v15)
  {
    v15 = &off_A0DD8;
  }

  v99 = v15;
  if (*(a3 + 56))
  {
    v16 = *(a3 + 56);
  }

  else
  {
    v16 = &off_A0DD8;
  }

  v98 = v16;
  v17 = *(a3 + 64);
  if (!v17)
  {
    v17 = &off_A0DD8;
  }

  v97 = v17;
  if (*(a3 + 72))
  {
    v18 = *(a3 + 72);
  }

  else
  {
    v18 = &off_A0DD8;
  }

  v96 = v18;
  v19 = *(a3 + 80);
  if (!v19)
  {
    v19 = &stru_9F828;
  }

  v95 = v19;
  if (*(a3 + 88))
  {
    v20 = *(a3 + 88);
  }

  else
  {
    v20 = &off_A0DD8;
  }

  v94 = v20;
  v21 = *(a3 + 96);
  if (!v21)
  {
    v21 = &off_A0DD8;
  }

  v93 = v21;
  if (*(a3 + 104))
  {
    v22 = *(a3 + 104);
  }

  else
  {
    v22 = &stru_9F828;
  }

  v92 = v22;
  v23 = *(a3 + 112);
  if (!v23)
  {
    v23 = &off_A0DD8;
  }

  v87 = v23;
  if (*(a3 + 120))
  {
    v24 = *(a3 + 120);
  }

  else
  {
    v24 = &stru_9F828;
  }

  v84 = v24;
  v25 = *(a3 + 128);
  if (!v25)
  {
    v25 = &off_A0DD8;
  }

  v80 = v25;
  if (*(a3 + 136))
  {
    v26 = *(a3 + 136);
  }

  else
  {
    v26 = &off_A0DD8;
  }

  v79 = v26;
  if (*(a3 + 144))
  {
    v9 = *(a3 + 144);
  }

  v76 = v9;
  v91 = ML3TrackPropertyStoreMatchedStatus;
  if (*(a3 + 152))
  {
    v7 = *(a3 + 152);
  }

  v75 = v7;
  v90 = ML3TrackPropertyStoreRedownloadedStatus;
  v89 = ML3TrackPropertyStoreSagaID;
  v86 = ML3TrackPropertySyncID;
  v83 = ML3TrackPropertyNeedsRestore;
  v82 = ML3TrackPropertyIsRental;
  v81 = ML3TrackPropertyTitle;
  v78 = ML3TrackPropertyTotalSize;
  v77 = ML3TrackPropertyStorePlaybackEndpointType;
  v27 = ML3TrackPropertyStoreRedownloadParameters;
  v28 = ML3TrackPropertySubscriptionStoreItemID;
  v29 = ML3TrackPropertySyncRedownloadParams;
  v30 = ML3TrackPropertyStoreCloudAssetAvailable;
  v31 = ML3EntityPropertyKeepLocal;
  v32 = ML3TrackPropertyTotalTime;
  v33 = ML3TrackPropertyPurchaseHistoryRedownloadParameters;
  v34 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
  v72 = v84;
  v71 = v87;
  v85 = v30;
  v88 = v29;
  v35 = [NSDictionary dictionaryWithObjectsAndKeys:v108, v109, v108, v107, v106, v105, v104, v103, v102, v101, v91, v100, v90, v99, v89, v98, v86, v97, v83, v96, v82, v95, v81, v94, v78, v93, v77, v92, v27, v71, v28, v72, v29, v80, v30, v79, v31, v76, v32, v75, v33, v34, ML3TrackPropertyMediaType, 0];

  v36 = [*(a3 + 136) unsignedIntegerValue];
  v37 = [*(a3 + 88) unsignedLongLongValue];
  if (!v37)
  {
    [*(a3 + 144) doubleValue];
    if ((*(a1 + 64) & 4) != 0)
    {
      v37 = 52428800;
    }

    else if (v38 <= 0.0)
    {
      v37 = 7340032;
    }

    else
    {
      v37 = (v38 * 35.8260224);
    }

    v39 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 64);
      *buf = 134218496;
      v111 = a2;
      v112 = 1024;
      v113 = v40;
      v114 = 2048;
      v115 = v37;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Estimating the size of track %lld media_type %u to %llu", buf, 0x1Cu);
    }
  }

  if (**(a1 + 48) + v37 <= *(a1 + 56))
  {
    v41 = [*(a3 + 56) longLongValue];
    **(a1 + 48) += v37;
    v42 = sub_6F464(v35, a2, *(a1 + 32));
    v43 = [v42 storeInfo];

    if (v43)
    {
      if (v41)
      {
        v44 = &v115 + 5;
        quot = v41;
        do
        {
          v46 = lldiv(quot, 10);
          quot = v46.quot;
          if (v46.rem >= 0)
          {
            LOBYTE(v47) = v46.rem;
          }

          else
          {
            v47 = -v46.rem;
          }

          *(v44 - 2) = v47 + 48;
          v48 = (v44 - 2);
          --v44;
        }

        while (v46.quot);
        if (v41 < 0)
        {
          *(v44 - 2) = 45;
          v48 = (v44 - 2);
        }

        v49 = CFStringCreateWithBytes(0, v48, &v115 + 4 - v48, 0x8000100u, 0);
      }

      else
      {
        v49 = @"0";
      }

      v56 = [v42 storeInfo];
      [v56 setSyncID:v49];
    }

    else
    {
      v49 = objc_alloc_init(ATStoreInfo);
      if (v41)
      {
        v50 = &v115 + 5;
        v51 = v41;
        do
        {
          v52 = lldiv(v51, 10);
          v51 = v52.quot;
          if (v52.rem >= 0)
          {
            LOBYTE(v53) = v52.rem;
          }

          else
          {
            v53 = -v52.rem;
          }

          *(v50 - 2) = v53 + 48;
          v54 = (v50 - 2);
          --v50;
        }

        while (v52.quot);
        if (v41 < 0)
        {
          *(v50 - 2) = 45;
          v54 = (v50 - 2);
        }

        v55 = CFStringCreateWithBytes(0, v54, &v115 + 4 - v54, 0x8000100u, 0);
      }

      else
      {
        v55 = @"0";
      }

      [(__CFString *)v49 setSyncID:v55];

      [v42 setStoreInfo:v49];
    }

    v57 = ICBundleIdentifierForSystemApplicationType();
    v58 = [[ICNetworkConstraints alloc] initWithBundleIdentifier:v57];
    if (![v58 shouldAllowDataForCellularNetworkTypes] || !CFPreferencesGetAppBooleanValue(@"AllowsCellularDataDownloads", v57, 0))
    {
      [v42 setCanUseCellularData:0];
      [v42 setCanProxyUseCellularData:0];
      v59 = +[ICEnvironmentMonitor sharedMonitor];
      v60 = [v58 shouldAllowDataForNetworkType:{objc_msgSend(v59, "lastKnownNetworkType")}];

      if ((v60 & 1) == 0)
      {
        [v42 setBypassStore:1];
      }
    }

    [v42 setAllowDownloadOnConstrainedNetwork:v36 != 2];
    v61 = v36 == 2 || *(a1 + 64) != 8;
    [v42 setPowerRequired:v61];
    [v42 setIsPrioritized:v36 != 2];
    if (*(a1 + 68) != 1)
    {
      goto LABEL_98;
    }

    v62 = [v42 storeInfo];
    v63 = [v62 sagaID];
    if ([v63 longLongValue])
    {
    }

    else
    {
      v64 = [v42 storeInfo];
      v65 = [v64 subscriptionID];
      v66 = [v65 longLongValue];

      if (!v66)
      {
LABEL_98:
        [*(a1 + 40) addObject:v42];

        goto LABEL_99;
      }
    }

    v67 = [v35 objectForKey:v85];
    v68 = [v67 BOOLValue];

    v69 = [v35 objectForKey:v88];
    v70 = [v69 isEqualToString:@"local"];

    if ((v68 & 1) == 0 && v70)
    {
      [v42 setBypassStore:1];
    }

    goto LABEL_98;
  }

  *a5 = 1;
LABEL_99:
}

void sub_52D88(uint64_t a1)
{
  v2 = +[ICEnvironmentMonitor sharedMonitor];
  v3 = +[NSMutableArray array];
  v4 = [v2 currentThermalLevel];
  v5 = [v2 isCharging];
  [v2 currentBatteryLevel];
  v7 = v6;
  v8 = +[ICStorageManager sharedManager];
  v9 = [v8 storageSpaceAvailable];
  v10 = [v8 cachingEnabled];
  v11 = sub_72478(v2);
  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    v19 = v5;
    v20 = 2048;
    v21 = v4;
    v22 = 1024;
    v23 = v10;
    v24 = 2048;
    v25 = v9;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = v11;
    v30 = 1024;
    v31 = v4 < v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "gathering assets to sync. deviceIsCharging=%d, currentThermalLevel=%llu, systemCachingEnabled=%d, freeSpaceRemaining=%lld, batteryLevel=%.2f, maxThermalPressureThreshold=%llu, acceptableThermalPressure=%{BOOL}u", buf, 0x3Cu);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = *(*(a1 + 32) + 112);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_52FA0;
    v15[3] = &unk_9EDE0;
    v17 = v13;
    v16 = v3;
    dispatch_async(v14, v15);
  }
}

void sub_530E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_53100(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [NSNumber numberWithLongLong:v4];
  v17 = v6;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v8 = [v5 executeQuery:v3 withParameters:v7];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5324C;
  v12[3] = &unk_9E630;
  v9 = *(a1 + 40);
  v16 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  [v8 enumerateRowsWithBlock:v12];
}

void sub_5324C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intForColumnIndex:0];
  v5 = 1;
  v6 = [v3 intForColumnIndex:1];
  v7 = [v3 intForColumnIndex:2];
  v8 = [v3 intForColumnIndex:3];
  v9 = [v3 intForColumnIndex:4];
  v10 = [v3 intForColumnIndex:5];

  if (v8 == 71)
  {
    v11 = 0;
    v5 = *(a1 + 56);
  }

  else if (v8 == 205)
  {
    v11 = [*(a1 + 32) containsObject:&off_A0E38] ^ 1;
    v5 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  if (!v4 && !v6 && !v9 && (v11 & 1) == 0 && v5)
  {
    v12 = *(a1 + 57) | (v10 == 0);
  }

  *(*(*(a1 + 40) + 8) + 24) = v12 & 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v13 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = 134220032;
      v17 = v14;
      v18 = 1024;
      v19 = v4 != 0;
      v20 = 1024;
      v21 = v6 != 0;
      v22 = 1024;
      v23 = v9 != 0;
      v24 = 1024;
      v25 = v8;
      v26 = 2048;
      v27 = v7;
      v28 = 1024;
      v29 = v10 != 0;
      v30 = 1024;
      v31 = v15;
      v32 = 1024;
      v33 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "not syncing playlist pid=%lld. hidden=%d, isGenius=%d, isIgnorableITunesPlaylist=%d, distinguishedKind=%d, mediaType=%lx, isSubscribedCloudPlaylist=%d, pairedDeviceCanProcessStandaloneCollections=%{BOOL}u, syncFSP=%{BOOL}u", &v16, 0x40u);
    }
  }
}

void sub_53568(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Failed to cancel proto sync imports. err=%{public}@", &v6, 0xCu);
    }
  }
}

void sub_536CC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    if (v5)
    {
      v9 = NSUnderlyingErrorKey;
      v10 = v5;
      v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    else
    {
      v8 = 0;
    }

    v7 = [NSError errorWithDomain:@"ATError" code:0 userInfo:v8];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_53EF0(uint64_t a1)
{
  if (*(a1 + 32) != *(a1 + 40))
  {
    ICSiriPostDynamiteClientStateChangedNotification();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = ICCloudClientIsAuthenticatedDidChangeNotification;

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
  }
}

void sub_54690(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 176), 8);
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v2 - 240), 8);
  _Block_object_dispose((v2 - 208), 8);
  _Unwind_Resume(a1);
}

id sub_546F4(void *a1)
{
  [*(a1[4] + 64) addObject:a1[5]];
  [*(a1[4] + 64) addObject:a1[6]];
  [*(a1[4] + 64) addObject:a1[7]];
  v2 = *(a1[4] + 64);
  v3 = a1[8];

  return [v2 addObject:v3];
}

void sub_54770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ATLogCategorySyncBundle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "finished reading incoming sync data. error=%{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "finished reading incoming sync data.", buf, 2u);
  }

  v7 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_54D7C;
  block[3] = &unk_9E4E0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  v13 = *(a1 + 48);
  dispatch_async(v7, block);
}

uint64_t sub_548F0(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = (v4 * a2);
    if (v4 == v5 || v5 % 0x64 == 0)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_5494C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) closeFile];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(v10 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_54CE4;
  block[3] = &unk_9E558;
  block[4] = v10;
  v25 = v9;
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v26 = v12;
  v27 = v13;
  dispatch_async(v11, block);
  if (!v7 && (a2 & 1) == 0)
  {
    v7 = [NSError errorWithDomain:@"ATError" code:0 userInfo:0];
  }

  if (v8 && a2)
  {
    v23 = 0;
    v14 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v23];
    v15 = v23;
    if (v14)
    {
      v16 = [v14 valueForKey:@"revisionBeforeImport"];
      *(*(*(a1 + 88) + 8) + 24) = [v16 longLongValue];

      v17 = [v14 valueForKey:@"revisionAfterImport"];
      *(*(*(a1 + 96) + 8) + 24) = [v17 longLongValue];
    }

    else
    {
      v17 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v29 = v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "failed to decode import return data. err=%{public}@", buf, 0xCu);
      }
    }
  }

  v18 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(*(a1 + 88) + 8) + 24);
    v20 = *(*(*(a1 + 96) + 8) + 24);
    *buf = 67109890;
    *v29 = a2;
    *&v29[4] = 2048;
    *&v29[6] = v19;
    v30 = 2048;
    v31 = v20;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "sync import complete. success=%d, revisionBeforeImport=%lld, revisionAfterImport=%lld, err=%{public}@", buf, 0x26u);
  }

  if (a2)
  {
    if (!*(a1 + 104))
    {
      [*(a1 + 40) _applyLibrarySettingsFromSyncParams:*(a1 + 56)];
      if (*(a1 + 108) == 1)
      {
        v21 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "posting initial sync complete notification", buf, 2u);
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientInitialCloudLibraryImportCompletedNotification, 0, 0, 1u);
      }
    }

    if (*(*(*(a1 + 96) + 8) + 24) != *(*(*(a1 + 88) + 8) + 24))
    {
      *(*(a1 + 40) + 120) = 1;
      [*(a1 + 64) notifyContentsDidChange];
    }
  }

  (*(*(a1 + 72) + 16))();
}

void sub_54CE4(void *a1)
{
  [*(a1[4] + 64) removeObject:a1[5]];
  [*(a1[4] + 64) removeObject:a1[6]];
  WeakRetained = objc_loadWeakRetained((*(a1[7] + 8) + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained stop];
    [*(a1[4] + 64) removeObject:v3];
    objc_storeWeak((*(a1[7] + 8) + 40), 0);
    WeakRetained = v3;
  }
}

uint64_t sub_54D7C(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  [*(*(a1 + 40) + 64) removeObject:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  if (WeakRetained)
  {
    [*(*(a1 + 40) + 64) removeObject:WeakRetained];
    objc_storeWeak((*(*(a1 + 48) + 8) + 40), 0);
  }

  return _objc_release_x1();
}

void sub_55CB4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_55DA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_55DBC(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT COUNT() from library_pins"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

void sub_55E20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, uint64_t a7, _BYTE *a8)
{
  v16 = objc_autoreleasePoolPush();
  ++*(*(*(a1 + 48) + 8) + 24);
  if (!a6)
  {
    if (a5 == 1)
    {
      if (*(a1 + 100))
      {
        goto LABEL_35;
      }

      v23 = *(a1 + 32);
      v24 = [NSNumber numberWithLongLong:a2];
      LOBYTE(v23) = [v23 containsObject:v24];

      if ((v23 & 1) != 0 || !*(a1 + 96))
      {
        goto LABEL_35;
      }

      v25 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 134217984;
        v41 = a2;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[update album artist] pid=%lld", &v40, 0xCu);
      }

      v26 = [*(*(*(a1 + 64) + 8) + 40) exportAlbumArtistUpdated:a2];
      v27 = *(*(a1 + 56) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      if (v26)
      {
        v29 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(*(*(a1 + 56) + 8) + 40);
          v40 = 134218242;
          v41 = a2;
          v42 = 2114;
          v43 = v30;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "failed to export album artist %lld. err=%{public}@", &v40, 0x16u);
        }

        if (a8)
        {
          *a8 = 1;
        }
      }

      v31 = *(a1 + 32);
    }

    else
    {
      if (!*(a1 + 96) || a3 || !a7)
      {
        goto LABEL_35;
      }

      v32 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 134217984;
        v41 = a2;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "[add album artist] pid=%lld", &v40, 0xCu);
      }

      v33 = [*(*(*(a1 + 64) + 8) + 40) exportAlbumArtistAdded:a2];
      v34 = *(*(a1 + 56) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;

      if (v33)
      {
        v36 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(*(*(a1 + 56) + 8) + 40);
          v40 = 134218242;
          v41 = a2;
          v42 = 2114;
          v43 = v37;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "failed to export album artist %lld. err=%{public}@", &v40, 0x16u);
        }

        if (a8)
        {
          *a8 = 1;
        }
      }

      v31 = *(a1 + 32);
    }

    v38 = [NSNumber numberWithLongLong:a2];
    [v31 addObject:v38];

    goto LABEL_35;
  }

  if (*(a1 + 96) && (*(a1 + 100) & 1) == 0)
  {
    v17 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 134217984;
      v41 = a2;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[delete album artist] pid=%lld", &v40, 0xCu);
    }

    v18 = [*(*(*(a1 + 64) + 8) + 40) exportAlbumArtistDeleted:a2];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    if (v18)
    {
      v21 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*(*(a1 + 56) + 8) + 40);
        v40 = 134218242;
        v41 = a2;
        v42 = 2114;
        v43 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "failed to export delete for album artist %lld. err=%{public}@", &v40, 0x16u);
      }

      if (a8)
      {
        *a8 = 1;
      }
    }
  }

LABEL_35:
  v39 = ++*(*(*(a1 + 72) + 8) + 24);
  if (__ROR8__(0x1CAC083126E978D5 * v39, 2) < 0x83126E978D4FE0uLL || v39 == *(a1 + 80))
  {
    (*(*(a1 + 40) + 16))();
  }

  if (*(a1 + 88) <= a4 || *(*(*(a1 + 56) + 8) + 40))
  {
    *a8 = 1;
  }

  objc_autoreleasePoolPop(v16);
}

void sub_56300(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  v11 = objc_autoreleasePoolPush();
  ++*(*(*(a1 + 48) + 8) + 24);
  if (a4 == 1 && *(a1 + 96) == 1 && (*(a1 + 100) & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [NSNumber numberWithLongLong:a2];
    LOBYTE(v12) = [v12 containsObject:v13];

    if ((v12 & 1) == 0)
    {
      v14 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134217984;
        v24 = a2;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[update album] pid=%lld", &v23, 0xCu);
      }

      v15 = [*(*(*(a1 + 64) + 8) + 40) exportAlbumUpdated:a2];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      if (v15)
      {
        v18 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(*(*(a1 + 56) + 8) + 40);
          v23 = 134218242;
          v24 = a2;
          v25 = 2114;
          v26 = v19;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "failed to export album update %lld. err=%{public}@", &v23, 0x16u);
        }

        if (a6)
        {
          *a6 = 1;
        }
      }

      v20 = *(a1 + 32);
      v21 = [NSNumber numberWithLongLong:a2];
      [v20 addObject:v21];
    }
  }

  v22 = ++*(*(*(a1 + 72) + 8) + 24);
  if (__ROR8__(0x1CAC083126E978D5 * v22, 2) < 0x83126E978D4FE0uLL || v22 == *(a1 + 80))
  {
    (*(*(a1 + 40) + 16))();
  }

  if (*(a1 + 88) <= a3 || *(*(*(a1 + 56) + 8) + 40))
  {
    *a6 = 1;
  }

  objc_autoreleasePoolPop(v11);
}

void sub_565A8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, uint64_t a6, _BYTE *a7)
{
  v13 = objc_autoreleasePoolPush();
  if (*(a1 + 80) < a3)
  {
    goto LABEL_2;
  }

  if (a5)
  {
    if (*(a1 + 96) && (*(a1 + 100) & 1) == 0)
    {
      v15 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v51 = a2;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[delete track] pid=%lld", buf, 0xCu);
      }

      v16 = [*(*(*(a1 + 64) + 8) + 40) exportTrackDeleted:a2];
      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      if (v16)
      {
        v19 = _ATLogCategorySyncBundle();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v20 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 134218242;
        v51 = a2;
        v52 = 2114;
        v53 = v20;
        v21 = "failed to export delete for track %lld. err=%{public}@";
        goto LABEL_17;
      }
    }

    goto LABEL_2;
  }

  if (a4 != 1)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_2;
    }

    v31 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = a2;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "[add track] pid=%lld", buf, 0xCu);
    }

    v32 = [*(*(*(a1 + 64) + 8) + 40) exportTrackAdded:a2];
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    if (v32)
    {
      v35 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 134218242;
        v51 = a2;
        v52 = 2114;
        v53 = v36;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "failed to export track %lld. err=%{public}@", buf, 0x16u);
      }

      if (a7)
      {
        *a7 = 1;
      }
    }

    v30 = *(a1 + 32);
LABEL_41:
    v37 = [NSNumber numberWithLongLong:a2];
    [v30 addObject:v37];

    goto LABEL_2;
  }

  if (*(a1 + 100))
  {
    goto LABEL_2;
  }

  v22 = *(a1 + 32);
  v23 = [NSNumber numberWithLongLong:a2];
  LOBYTE(v22) = [v22 containsObject:v23];

  if (v22)
  {
    goto LABEL_2;
  }

  if (*(a1 + 96) == 1)
  {
    v24 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = a2;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "[add track] pid=%lld", buf, 0xCu);
    }

    v25 = [*(*(*(a1 + 64) + 8) + 40) exportTrackAdded:a2];
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    if (v25)
    {
      v28 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 134218242;
        v51 = a2;
        v52 = 2114;
        v53 = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "failed to export track %lld. err=%{public}@", buf, 0x16u);
      }

      if (a7)
      {
        *a7 = 1;
      }
    }

    v30 = *(a1 + 32);
    goto LABEL_41;
  }

  v38 = *(a1 + 40);
  v39 = [NSNumber numberWithLongLong:a2];
  v49 = v39;
  v40 = [NSArray arrayWithObjects:&v49 count:1];
  v41 = [v38 executeQuery:@"SELECT sync_id FROM item_store WHERE item_pid=?" withParameters:v40];
  v42 = [v41 int64ValueForFirstRowAndColumn];

  v43 = _ATLogCategorySyncBundle();
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
  if (v42)
  {
    if (v44)
    {
      *buf = 134217984;
      v51 = a2;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "[update track] pid=%lld", buf, 0xCu);
    }

    v45 = [*(*(*(a1 + 64) + 8) + 40) exportTrackUpdated:a2];
    v46 = *(*(a1 + 56) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = v45;

    if (v45)
    {
      v19 = _ATLogCategorySyncBundle();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        if (a7)
        {
          *a7 = 1;
        }

        goto LABEL_2;
      }

      v48 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 134218242;
      v51 = a2;
      v52 = 2114;
      v53 = v48;
      v21 = "failed to export track %lld. err=%{public}@";
LABEL_17:
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
      goto LABEL_18;
    }
  }

  else
  {
    if (v44)
    {
      *buf = 134217984;
      v51 = a2;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "ignoring update track for pid=%lld as there is no sync_id", buf, 0xCu);
    }
  }

LABEL_2:
  v14 = ++*(*(*(a1 + 72) + 8) + 24);
  if (__ROR8__(0x1CAC083126E978D5 * v14, 2) < 0x83126E978D4FE0uLL || v14 == *(a1 + 88))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v13);
  if (*(a1 + 80) <= a3 || *(*(*(a1 + 56) + 8) + 40))
  {
    *a7 = 1;
  }
}

void sub_56C00(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  v11 = objc_autoreleasePoolPush();
  if (*(a1 + 80) < a3)
  {
    goto LABEL_24;
  }

  if ([*(a1 + 32) _shouldSyncPlaylistWithPersistentId:a2 forSupportedMediaTypes:*(a1 + 40) includeNonLibraryContent:*(a1 + 108) pairedDeviceCanProcessStandaloneCollections:*(a1 + 109)])
  {
    if (a4)
    {
      if (*(a1 + 104) != 2 && *(a1 + 88))
      {
        v12 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 134217984;
          v30 = a2;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[delete playlist] pid=%lld", &v29, 0xCu);
        }

        v13 = [*(*(*(a1 + 64) + 8) + 40) exportPlaylistDeleted:a2];
        v14 = *(*(a1 + 56) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        if (v13)
        {
          v16 = _ATLogCategorySyncBundle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

LABEL_10:
          v17 = *(*(*(a1 + 56) + 8) + 40);
          v29 = 134218242;
          v30 = a2;
          v31 = 2114;
          v32 = v17;
          v18 = "failed to export delete for playlist %lld. err=%{public}@";
          goto LABEL_21;
        }
      }
    }

    else
    {
      v23 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 134217984;
        v30 = a2;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[add playlist] pid=%lld", &v29, 0xCu);
      }

      v24 = [*(*(*(a1 + 64) + 8) + 40) exportPlaylistAdded:a2];
      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      if (v24)
      {
        v16 = _ATLogCategorySyncBundle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v27 = *(*(*(a1 + 56) + 8) + 40);
        v29 = 134218242;
        v30 = a2;
        v31 = 2114;
        v32 = v27;
        v18 = "failed to export playlist %lld. err=%{public}@";
LABEL_21:
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v18, &v29, 0x16u);
LABEL_22:

        if (a6)
        {
          *a6 = 1;
        }
      }
    }
  }

  else
  {
    v19 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 134217984;
      v30 = a2;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[delete playlist] pid=%lld", &v29, 0xCu);
    }

    v20 = [*(*(*(a1 + 64) + 8) + 40) exportPlaylistDeleted:a2];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    if (v20)
    {
      v16 = _ATLogCategorySyncBundle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      goto LABEL_10;
    }
  }

LABEL_24:
  objc_autoreleasePoolPop(v11);
  if (*(a1 + 80) < a3 || *(*(*(a1 + 56) + 8) + 40))
  {
    *a6 = 1;
  }

  v28 = ++*(*(*(a1 + 72) + 8) + 24);
  if (__ROR8__(0x1CAC083126E978D5 * v28, 2) < 0x83126E978D4FE0uLL || v28 == *(a1 + 96))
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_57004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeQuery:{@"SELECT entity_pid, entity_type, default_action, position, position_uuid FROM library_pins ORDER BY position ASC"}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_570CC;
  v6[3] = &unk_9E468;
  v7 = v3;
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 enumerateRowsWithBlock:v6];
}

void sub_570CC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = a3;
  v7 = a2;
  v8 = [v7 int64ForColumnIndex:0];
  v9 = [v7 intForColumnIndex:1];
  v10 = v9;
  v11 = [v7 intForColumnIndex:2];
  v12 = [v7 int64ForColumnIndex:3];
  v13 = [v7 stringForColumnIndex:4];

  v14 = 0;
  if (v9 > 3)
  {
    if (v9 == 7)
    {
      v20 = *(a1 + 32);
      v21 = [NSNumber numberWithLongLong:v8];
      v42 = v21;
      v22 = [NSArray arrayWithObjects:&v42 count:1];
      v23 = @"SELECT cloud_universal_library_id FROM album_artist WHERE album_artist_pid=?";
    }

    else
    {
      v15 = 0;
      if (v9 != 4)
      {
        goto LABEL_13;
      }

      v20 = *(a1 + 32);
      v21 = [NSNumber numberWithLongLong:v8];
      v45 = v21;
      v22 = [NSArray arrayWithObjects:&v45 count:1];
      v23 = @"SELECT cloud_library_id FROM album WHERE album_pid=?";
    }

    v24 = [v20 executeQuery:v23 withParameters:v22];

    v15 = [v24 stringValueForFirstRowAndColumn];
    v14 = 0;
  }

  else
  {
    if (v9)
    {
      v15 = 0;
      if (v9 != 1)
      {
        goto LABEL_13;
      }

      v16 = *(a1 + 32);
      v17 = [NSNumber numberWithLongLong:v8];
      v43 = v17;
      v18 = [NSArray arrayWithObjects:&v43 count:1];
      v19 = @"SELECT store_cloud_id FROM container WHERE container_pid=?";
    }

    else
    {
      v16 = *(a1 + 32);
      v17 = [NSNumber numberWithLongLong:v8];
      v44 = v17;
      v18 = [NSArray arrayWithObjects:&v44 count:1];
      v19 = @"SELECT store_saga_id FROM item_store WHERE item_pid=?";
    }

    v24 = [v16 executeQuery:v19 withParameters:v18];

    v14 = [v24 int64ValueForFirstRowAndColumn];
    v15 = 0;
  }

LABEL_13:
  v25 = [*(*(*(a1 + 56) + 8) + 40) exportLibraryPinWithCloudItemID:v14 cloudLibraryID:v15 defaultAtion:v11 type:objc_msgSend(*(a1 + 40) position:"_DMAPEntityKindFromMLEntityKind:" positionUUID:{v10), v12, v13}];
  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  if (v25)
  {
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219266;
      v31 = v8;
      v32 = 2048;
      v33 = v10;
      v34 = 1024;
      v35 = v12;
      v36 = 2048;
      v37 = v14;
      v38 = 2114;
      v39 = v15;
      v40 = 2114;
      v41 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "failed to export pinned entity pid%lld, type=%ld, position=%d, sagaID=%lld, cloudLibraryID=%{public}@ err=%{public}@", buf, 0x3Au);
    }

    if (a4)
    {
      *a4 = 1;
    }
  }
}

void sub_57B14(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT DISTINCT account_id FROM item_store"];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_57BBC;
  v4[3] = &unk_9F298;
  v5 = *(a1 + 32);
  [v3 enumerateRowsWithBlock:v4];
}

void sub_57BBC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectAtIndexedSubscript:0];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 objectAtIndexedSubscript:0];
    [v4 addObject:v5];
  }
}

void sub_58F80(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSPropertyListSerialization dataWithPropertyList:*(a1 + 32) format:200 options:0 error:0];
  v4 = [ML3MutableDatabaseImport alloc];
  v5 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  v6 = [v4 initWithLibraryPath:v5 trackData:v3 playlistData:0];

  [v6 setResetSync:0];
  v7 = objc_alloc_init(ICCloudClient);
  v8 = [v7 isAuthenticated];

  [v6 setSagaEnabled:v8];
  [v6 setSyncAnchor:*(a1 + 40)];
  v9 = +[MLMediaLibraryService sharedMediaLibraryService];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_590FC;
  v10[3] = &unk_9E350;
  v11 = *(a1 + 48);
  [v9 performImport:v6 fromSource:5 withProgressBlock:0 completionHandler:v10];

  objc_autoreleasePoolPop(v2);
}

void sub_590FC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "metadataUpdate import complete. success=%d, err=%{public}@", v7, 0x12u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_59518(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [*a3 integerValue];
  if ([a3[4] BOOLValue])
  {
    v7 = @"Music";
  }

  else
  {
    v7 = sub_6F3C8(v6);
  }

  v8 = [*(a1 + 32) objectForKey:v7];
  if (!v8)
  {
    v8 = [NSMutableDictionary dictionaryWithCapacity:2];
    [*(a1 + 32) setObject:v8 forKey:v7];
  }

  [a3[1] unsignedLongLongValue];
  v9 = ATGetPhysicalSizeForLogicalSize();
  v10 = [v8 objectForKey:@"_PhysicalSize"];
  v11 = [v10 unsignedLongLongValue];

  v12 = [NSNumber numberWithUnsignedLongLong:&v11[v9]];
  [v8 setObject:v12 forKey:@"_PhysicalSize"];

  if ([a3[2] BOOLValue])
  {
    v13 = [v8 objectForKey:@"_PurgeableSize"];
    v14 = [v13 unsignedLongLongValue];

    v15 = [NSNumber numberWithUnsignedLongLong:&v14[v9]];
    v16 = v8;
    v17 = v15;
    v18 = @"_PurgeableSize";
  }

  else
  {
    v19 = [v8 objectForKey:@"_Count"];
    v20 = [v19 unsignedIntegerValue];

    v15 = [NSNumber numberWithUnsignedInteger:v20 + 1];
    v16 = v8;
    v17 = v15;
    v18 = @"_Count";
  }

  [v16 setObject:v17 forKey:v18];

  objc_autoreleasePoolPop(v5);
}

void sub_59700(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [ML3PersistentIDsPredicate predicateWithPersistentIDs:v6 shouldContain:1];
  v10 = [ML3Track queryWithLibrary:*(a1 + 32) predicate:v9];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_59814;
  v12[3] = &unk_9EC80;
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v12];

  objc_autoreleasePoolPop(v8);
}

void sub_59814(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = [*a3 integerValue];
  if ([a3[4] BOOLValue])
  {
    v6 = @"Music";
  }

  else
  {
    v6 = sub_6F3C8(v5);
  }

  v12 = v6;
  v7 = [*(a1 + 32) objectForKey:v6];
  [a3[1] unsignedLongLongValue];
  v8 = ATGetPhysicalSizeForLogicalSize();
  v9 = [v7 objectForKey:@"_PurgeableSize"];
  v10 = [v9 unsignedLongLongValue];

  v11 = [NSNumber numberWithUnsignedLongLong:&v10[v8]];
  [v7 setObject:v11 forKey:@"_PurgeableSize"];
}

void sub_59E0C(uint64_t a1)
{
  v2 = objc_alloc_init(sub_5A1F0());
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5A2D0;
  v5[3] = &unk_9E260;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 32);
  [v2 getPathsForFilesWithClass:2 completionBlock:v5];
}

void sub_59EC4(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = [[ML3Track alloc] initWithPersistentID:a2 inLibrary:*(a1 + 32)];
  [*a3 BOOLValue];
  v11 = [v10 absoluteFilePath];
  if ([v11 length] && objc_msgSend(*(a1 + 40), "fileExistsAtPath:", v11))
  {
    (*(*(a1 + 48) + 16))();
    *a5 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
  }

  objc_autoreleasePoolPop(v9);
}

void sub_59FB0(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:{@"SELECT artwork_source_type, relative_path FROM artwork"}];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5A0A4;
  v8[3] = &unk_9E2D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 enumerateRowsWithBlock:v8];
}

void sub_5A0A4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  [v12 intForColumnIndex:0];
  v9 = [v12 stringForColumnIndex:1];
  if ([v9 length])
  {
    v10 = [*(a1 + 32) originalArtworkDirectory];
    v11 = [v10 stringByAppendingPathComponent:v9];

    if ([*(a1 + 40) fileExistsAtPath:v11])
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_autoreleasePoolPop(v8);
  *a4 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
}

id sub_5A1F0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_A76C8;
  v7 = qword_A76C8;
  if (!qword_A76C8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_5A3F4;
    v3[3] = &unk_9EE58;
    v3[4] = &v4;
    sub_5A3F4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_5A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5A2D0(uint64_t a1, void *a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40));
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_5A3F4(uint64_t a1)
{
  sub_5A4BC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownloadFileManifest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_A76C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSSDownloadFileManifestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MLSyncClient.m" lineNumber:144 description:{@"Unable to find class %s", "SSDownloadFileManifest"}];

    __break(1u);
  }
}

void *sub_5A4BC()
{
  v4[0] = 0;
  if (!qword_A76D0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_5A610;
    v4[4] = &unk_9F118;
    v4[5] = v4;
    v5 = off_9EA28;
    v6 = 0;
    qword_A76D0 = _sl_dlopen();
  }

  v0 = qword_A76D0;
  if (!qword_A76D0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *StoreServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MLSyncClient.m" lineNumber:143 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_5A610()
{
  result = _sl_dlopen();
  qword_A76D0 = result;
  return result;
}

void sub_5A798(uint64_t a1)
{
  v2 = objc_alloc_init(sub_5A1F0());
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_5A84C;
  v3[3] = &unk_9E238;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 getPathsForFilesWithClass:2 completionBlock:v3];
}

intptr_t sub_5A84C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObjectsFromArray:a2];
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_5B424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_5B484(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithLongLong:a2];
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_5C15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (![*(a3 + 104) longLongValue])
  {
    if (a2)
    {
      v7 = &v16 + 1;
      quot = a2;
      do
      {
        v12 = lldiv(quot, 10);
        quot = v12.quot;
        if (v12.rem >= 0)
        {
          LOBYTE(v13) = v12.rem;
        }

        else
        {
          v13 = -v12.rem;
        }

        *(v7 - 2) = v13 + 48;
        v10 = (v7 - 2);
        --v7;
      }

      while (v12.quot);
      goto LABEL_15;
    }

LABEL_18:
    v14 = @"0";
    goto LABEL_19;
  }

  v6 = [*(a3 + 104) longLongValue];
  if (!v6)
  {
    goto LABEL_18;
  }

  a2 = v6;
  v7 = &v16 + 1;
  do
  {
    v8 = lldiv(v6, 10);
    v6 = v8.quot;
    if (v8.rem >= 0)
    {
      LOBYTE(v9) = v8.rem;
    }

    else
    {
      v9 = -v8.rem;
    }

    *(v7 - 2) = v9 + 48;
    v10 = (v7 - 2);
    --v7;
  }

  while (v8.quot);
LABEL_15:
  if (a2 < 0)
  {
    *(v7 - 2) = 45;
    v10 = (v7 - 2);
  }

  v14 = CFStringCreateWithBytes(0, v10, &v16 - v10, 0x8000100u, 0);
LABEL_19:
  v15 = v14;

  [*(a1 + 32) addObject:v15];
}

void sub_5C298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a3 + 104) longLongValue])
  {
    quot = [*(a3 + 104) longLongValue];
    if (quot)
    {
      v7 = quot;
      v8 = &v94 + 5;
      do
      {
        v9 = lldiv(quot, 10);
        quot = v9.quot;
        if (v9.rem >= 0)
        {
          LOBYTE(v10) = v9.rem;
        }

        else
        {
          v10 = -v9.rem;
        }

        *(v8 - 2) = v10 + 48;
        v11 = (v8 - 2);
        --v8;
      }

      while (v9.quot);
      if ((v7 & 0x8000000000000000) != 0)
      {
        *(v8 - 2) = 45;
        v11 = (v8 - 2);
      }

      v12 = (&v94 + 4 - v11);
LABEL_20:
      v17 = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
      goto LABEL_22;
    }
  }

  else if (a2)
  {
    v13 = &v94 + 5;
    v14 = a2;
    do
    {
      v15 = lldiv(v14, 10);
      v14 = v15.quot;
      if (v15.rem >= 0)
      {
        LOBYTE(v16) = v15.rem;
      }

      else
      {
        v16 = -v15.rem;
      }

      *(v13 - 2) = v16 + 48;
      v11 = (v13 - 2);
      --v13;
    }

    while (v15.quot);
    if (a2 < 0)
    {
      *(v13 - 2) = 45;
      v11 = (v13 - 2);
    }

    v12 = (&v94 + 4 - v11);
    goto LABEL_20;
  }

  v17 = @"0";
LABEL_22:
  v18 = v17;

  v19 = [*(*(a1 + 32) + 16) objectForKey:v18];
  if (v19)
  {
    goto LABEL_106;
  }

  v20 = [*(a3 + 16) unsignedIntValue];
  v21 = (a1 + 40);
  v22 = *(a1 + 40);
  if ([*(a3 + 120) intValue])
  {
    v21 = (a1 + 48);
  }

  else if ((v20 & 8) == 0)
  {
    if ((v20 & 0x800) != 0)
    {
      v21 = (a1 + 56);
    }

    else if ((v20 & 0x2000) != 0)
    {
      v21 = (a1 + 64);
    }

    else if ((v20 & 0x200) != 0)
    {
      v21 = (a1 + 72);
    }

    else if ((v20 & 4) != 0)
    {
      v21 = (a1 + 80);
    }

    else if ((v20 & 0x1020) != 0)
    {
      v21 = (a1 + 88);
    }

    else
    {
      if ((v20 & 2) == 0)
      {
        goto LABEL_37;
      }

      v21 = (a1 + 96);
    }
  }

  v23 = *v21;

  v22 = v23;
LABEL_37:
  v82 = v22;
  v24 = *(a3 + 128);
  if (!v24)
  {
    v24 = &stru_9F828;
  }

  v25 = v24;
  if (a2)
  {
    v26 = &v94 + 5;
    v27 = a2;
    do
    {
      v28 = lldiv(v27, 10);
      v27 = v28.quot;
      if (v28.rem >= 0)
      {
        LOBYTE(v29) = v28.rem;
      }

      else
      {
        v29 = -v28.rem;
      }

      *(v26 - 2) = v29 + 48;
      v30 = (v26 - 2);
      --v26;
    }

    while (v28.quot);
    if (a2 < 0)
    {
      *(v26 - 2) = 45;
      v30 = (v26 - 2);
    }

    v31 = CFStringCreateWithBytes(0, v30, &v94 + 4 - v30, 0x8000100u, 0);
  }

  else
  {
    v31 = @"0";
  }

  v74 = v18;
  v76 = a1;
  v81 = v25;
  v32 = [ATAsset downloadAssetWithIdentifier:v31 dataclass:@"Media" prettyName:v25];

  v33 = sub_6F3C8(v20);
  [v32 setAssetType:v33];

  v34 = [*(a3 + 184) unsignedLongLongValue];
  if (!v34)
  {
    [*(a3 + 192) doubleValue];
    if ((v20 & 4) != 0)
    {
      v34 = 52428800;
    }

    else if (v35 <= 0.0)
    {
      v34 = 7340032;
    }

    else
    {
      v34 = (v35 * 35.8260224);
    }

    v36 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v90 = a2;
      v91 = 1024;
      v92 = v20;
      v93 = 2048;
      v94 = v34;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Estimating the size of track %lld media_type %u to %llu", buf, 0x1Cu);
    }
  }

  v78 = a2;
  v72 = v20;
  [v32 setTotalBytes:v34];
  v37 = *(a3 + 104);
  v38 = *(a3 + 56);
  v39 = *(a3 + 72);
  v40 = *(a3 + 80);
  v41 = *(a3 + 88);
  v42 = *(a3 + 96);
  v43 = *(a3 + 48);
  v88 = *(a3 + 168);
  v44 = *(a3 + 64);
  v45 = *(a3 + 176);
  v83 = v44;
  v84 = v43;
  v46.i64[0] = v43;
  v46.i64[1] = v38;
  v47.i64[0] = v44;
  v85 = v40;
  v86 = v39;
  v47.i64[1] = v39;
  v48.i64[0] = v40;
  v49 = v41;
  v48.i64[1] = v41;
  v50.i64[0] = v42;
  v87 = v37;
  v50.i64[1] = v37;
  v80 = v38;
  v73 = v45;
  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v46), vceqzq_s64(v47)), vuzp1q_s32(vceqzq_s64(v48), vceqzq_s64(v50)))))) & 1) != 0 || v88 || v45)
  {
    v52 = v45;
    v53 = objc_alloc_init(ATStoreInfo);
    [v53 setDSID:v38];
    v51 = v76;
    v54 = [*(v76 + 104) accountCacheDatabase];
    v55 = [v54 appleIDForDSID:{objc_msgSend(v38, "longLongValue")}];
    [v53 setAppleID:v55];

    [v53 setFlavor:v86];
    if ([v88 integerValue] == &dword_0 + 3)
    {
      v56 = v52;
    }

    else
    {
      v56 = v83;
    }

    [v53 setAdamID:v56];
    [v53 setSagaID:v42];
    [v53 setMatchStatus:v85];
    [v53 setRedownloadStatus:v41];
    [v53 setPodcastEpisodeGUID:v84];
    v57 = [v42 longLongValue];
    v58 = 144;
    if (!v57)
    {
      v58 = 136;
    }

    [v53 setRedownloadParams:*(a3 + v58)];
    v59 = [v87 stringValue];
    [v53 setSyncID:v59];

    [v53 setEndpointType:v88];
    [v32 setStoreInfo:v53];
  }

  else
  {
    [v32 setBypassStore:1];
    v51 = v76;
  }

  v18 = v74;
  v60 = !*a3 || ![*a3 longLongValue] || objc_msgSend(*a3, "longLongValue") == stru_B8.segname;
  if (*(a3 + 104))
  {
    v61 = [*(a3 + 160) longLongValue];
    if (v61 != [*(a3 + 152) longLongValue])
    {
      v60 |= 8uLL;
    }
  }

  v62 = [*(v51 + 112) objectForKey:v74];
  v63 = v62;
  if (v62)
  {
    [v32 setStorePID:{objc_msgSend(v62, "persistentIdentifier")}];
  }

  if ([*(a3 + 104) longLongValue] && !objc_msgSend(*(a3 + 96), "longLongValue"))
  {
    v79 = [ML3Track newWithPersistentID:v78 inLibrary:*(v51 + 104)];
    v77 = [[ML3ArtworkTokenSet alloc] initWithEntity:v79 artworkType:1];
    v64 = [v77 artworkTokenForSource:300];
    if (v64 && ([*(v51 + 120) containsObject:v64] & 1) == 0 && (objc_msgSend(*(v51 + 104), "isArtworkTokenAvailable:", v64) & 1) == 0)
    {
      v60 |= 2uLL;
      [*(v51 + 120) addObject:v64];
    }

    if ((*(v51 + 152) & 1) == 0 && (v72 & 0x408) != 0)
    {
      v65 = *(a3 + 24);
      if (v65)
      {
        v75 = v65;
        if (([*(v51 + 128) containsObject:v65] & 1) == 0)
        {
          v71 = *(a3 + 32);
          v66 = *(a3 + 40);
          if (v66)
          {
            v70 = v66;
            if (([v66 isEqual:v71] & 1) == 0)
            {
              v60 |= 4uLL;
              [*(v51 + 128) addObject:v75];
            }

            v66 = v70;
          }
        }

        v65 = v75;
      }
    }
  }

  [v32 setIsRestore:{objc_msgSend(*(a3 + 112), "BOOLValue")}];
  if ([v32 isRestore])
  {
    [v32 setIsForeground:1];
    if ([*(v51 + 136) containsObject:v18])
    {
      v67 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v90 = v32;
        _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "Marking for priority download: %{public}@", buf, 0xCu);
      }

      [v32 setIsPrioritized:1];
    }
  }

  if (v60)
  {
    if ((v60 & 1) != 0 && (v72 & 8) != 0)
    {
      ++*(*(*(v51 + 144) + 8) + 24);
    }

    v68 = [NSNumber numberWithUnsignedInteger:v60];
    v69 = [NSDictionary dictionaryWithObject:v68 forKey:@"AssetParts"];
    [v32 setVariantOptions:v69];

    [v82 addObject:v32];
  }

  v19 = 0;
LABEL_106:
}

void sub_5CB9C(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = [ML3Container newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v9 = [[ML3ArtworkTokenSet alloc] initWithEntity:v8 artworkType:5];
  v10 = [v9 artworkTokenForSource:300];
  if (v10 && ([*(a1 + 32) isArtworkTokenAvailable:v10] & 1) == 0)
  {
    if (a2)
    {
      v11 = &v22 + 1;
      quot = a2;
      do
      {
        v13 = lldiv(quot, 10);
        quot = v13.quot;
        if (v13.rem >= 0)
        {
          LOBYTE(v14) = v13.rem;
        }

        else
        {
          v14 = -v13.rem;
        }

        *(v11 - 2) = v14 + 48;
        v15 = (v11 - 2);
        --v11;
      }

      while (v13.quot);
      if (a2 < 0)
      {
        *(v11 - 2) = 45;
        v15 = (v11 - 2);
      }

      v16 = CFStringCreateWithBytes(0, v15, &v22 - v15, 0x8000100u, 0);
    }

    else
    {
      v16 = @"0";
    }

    v17 = [ATAsset downloadAssetWithIdentifier:v16 dataclass:@"Media" prettyName:v6];

    [v17 setAssetType:@"Playlist"];
    v18 = [NSNumber numberWithUnsignedInteger:2];
    v19 = [NSDictionary dictionaryWithObject:v18 forKey:@"AssetParts"];
    [v17 setVariantOptions:v19];

    v20 = objc_alloc_init(ATStoreInfo);
    v21 = [v7 stringValue];
    [v20 setSyncID:v21];

    [v17 setStoreInfo:v20];
    [*(a1 + 40) addObject:v17];
  }
}

void sub_5D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_5D098(uint64_t a1)
{
  v2 = sub_5A4BC();
  result = dlsym(v2, "SSDownloadPropertyLibraryItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_A76D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_5D3BC(uint64_t a1)
{
  v2 = [objc_alloc(sub_5A1F0()) initWithManifestType:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_5D460;
  v3[3] = &unk_9F248;
  v4 = *(a1 + 32);
  [v2 rebuildManifestWithCompletionBlock:v3];
}

intptr_t sub_5D460(uint64_t a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 contentsOfDirectoryAtPath:@"/var/mobile/Media/Purchases" error:0];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Manifest rebuilt from %{public}@", &v6, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_5DEDC(uint64_t a1, void *a2)
{
  v89 = a2;
  v2 = ML3TrackPropertyMediaType;
  v3 = [NSNumber numberWithInteger:260];
  v4 = [ML3ComparisonPredicate predicateWithProperty:v2 value:v3 comparison:10];

  v100 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsITunesU equalToInteger:1];
  v99 = [ML3ComparisonPredicate predicateWithProperty:v2 value:&off_A0DA8 comparison:2];
  v101 = v4;
  v98 = [ML3NegationPredicate predicateWithPredicate:v4];
  v5 = ML3TrackPropertyStoreItemID;
  v6 = [NSNumber numberWithInt:0];
  v7 = [ML3ComparisonPredicate predicateWithProperty:v5 value:v6 comparison:2];

  v8 = ML3TrackPropertyStoreAccountID;
  v9 = [NSNumber numberWithInt:0];
  v10 = [ML3ComparisonPredicate predicateWithProperty:v8 value:v9 comparison:2];

  v11 = ML3TrackPropertyStoreSagaID;
  v12 = [NSNumber numberWithInt:0];
  v13 = [ML3ComparisonPredicate predicateWithProperty:v11 value:v12 comparison:2];

  v87 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMatchRedownloadParameters value:&stru_9F828 comparison:2 caseInsensitive:1 treatNullAsString:&stru_9F828];
  v88 = v13;
  v133[0] = v13;
  v133[1] = v87;
  v14 = [NSArray arrayWithObjects:v133 count:2];
  v15 = [ML3AllCompoundPredicate predicateMatchingPredicates:v14];

  v16 = ML3TrackPropertySubscriptionStoreItemID;
  v17 = [NSNumber numberWithInt:0];
  v18 = [ML3ComparisonPredicate predicateWithProperty:v16 value:v17 comparison:2];

  v92 = v10;
  v93 = v7;
  v132[0] = v7;
  v132[1] = v10;
  v19 = [NSArray arrayWithObjects:v132 count:2];
  v20 = [ML3AllCompoundPredicate predicateMatchingPredicates:v19];

  v84 = v20;
  v85 = v18;
  v131[0] = v20;
  v131[1] = v15;
  v86 = v15;
  v131[2] = v18;
  v21 = [NSArray arrayWithObjects:v131 count:3];
  v22 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v21];

  v95 = ML3TrackPropertyBaseLocationID;
  v23 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:value:comparison:" value:? comparison:?];
  v94 = ML3TrackPropertyNeedsRestore;
  v24 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToInt64:" equalToInt64:?];
  v130 = v100;
  v25 = [NSArray arrayWithObjects:&v130 count:1];
  v26 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v25];

  v129[0] = v22;
  v129[1] = v99;
  v129[2] = v98;
  v27 = [NSArray arrayWithObjects:v129 count:3];
  v28 = [ML3AllCompoundPredicate predicateMatchingPredicates:v27];

  if (_os_feature_enabled_impl())
  {
    v128[0] = v22;
    v128[1] = v98;
    v29 = [NSArray arrayWithObjects:v128 count:2];
    v30 = [ML3AllCompoundPredicate predicateMatchingPredicates:v29];

    v28 = v30;
  }

  v81 = v28;
  v82 = v26;
  v127[0] = v28;
  v127[1] = v26;
  v31 = [NSArray arrayWithObjects:v127 count:2];
  v32 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v31];

  v83 = v24;
  v126[0] = v24;
  v126[1] = v23;
  v33 = [NSArray arrayWithObjects:v126 count:2];
  v34 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v33];

  v79 = v34;
  v80 = v32;
  v125[0] = v32;
  v125[1] = v34;
  v35 = [NSArray arrayWithObjects:v125 count:2];
  v36 = [ML3AllCompoundPredicate predicateMatchingPredicates:v35];

  v97 = [ML3NegationPredicate predicateWithPredicate:v36];
  v37 = +[NSFileManager defaultManager];
  context = objc_autoreleasePoolPush();
  v38 = +[NSMutableArray array];
  v78 = v36;
  v39 = [ML3Track unrestrictedAllItemsQueryWithlibrary:*(a1 + 32) predicate:v36 orderingTerms:0];
  v96 = ML3TrackPropertyTitle;
  v124 = ML3TrackPropertyTitle;
  v40 = [NSArray arrayWithObjects:&v124 count:1];
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 3221225472;
  v111[2] = sub_5EC34;
  v111[3] = &unk_9E170;
  v112 = *(a1 + 32);
  v41 = v37;
  v113 = v41;
  v42 = v38;
  v114 = v42;
  [v39 enumeratePersistentIDsAndProperties:v40 usingBlock:v111];
  v43 = _ATLogCategorySyncBundle();
  v44 = v89;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [v42 count];
    *buf = 134217984;
    v123 = v45;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Found %lu tracks to restore", buf, 0xCu);
  }

  v102 = v23;

  if ([v42 count])
  {
    v121[0] = v94;
    v121[1] = v95;
    v121[2] = ML3TrackPropertyLocationFileName;
    v121[3] = ML3TrackPropertyDownloadIdentifier;
    v121[4] = ML3TrackPropertyDateDownloaded;
    v121[5] = ML3TrackPropertyDownloadSourceContainerPid;
    v121[6] = ML3EntityPropertyKeepLocalStatus;
    v121[7] = ML3TrackPropertyHLSOfflinePlaybackKeys;
    v46 = [NSArray arrayWithObjects:v121 count:8];
    v120[0] = &__kCFBooleanTrue;
    v120[1] = &off_A0DD8;
    v120[2] = &stru_9F828;
    v120[3] = &off_A0DD8;
    v120[4] = &off_A0DD8;
    v120[5] = &off_A0DD8;
    v120[6] = &off_A0DF0;
    v47 = +[NSNull null];
    v120[7] = v47;
    v48 = [NSArray arrayWithObjects:v120 count:8];

    v49 = [v48 count];
    if (v49 != [v46 count])
    {
      v76 = +[NSAssertionHandler currentHandler];
      [v76 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"MLSyncClient.m" lineNumber:710 description:@"restore property mismatch"];
    }

    v50 = [*(a1 + 40) _library];
    v44 = v89;
    [ML3Track setValues:v48 forProperties:v46 forEntityPersistentIDs:v42 inLibrary:v50 usingConnection:v89];
  }

  objc_autoreleasePoolPop(context);
  v90 = objc_autoreleasePoolPush();
  v51 = +[NSMutableArray array];
  v52 = *(a1 + 32);
  v119[0] = v101;
  v119[1] = v23;
  v53 = [NSArray arrayWithObjects:v119 count:2];
  v54 = [ML3AllCompoundPredicate predicateMatchingPredicates:v53];
  v55 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v52 predicate:v54 orderingTerms:0];

  v118 = v96;
  v56 = [NSArray arrayWithObjects:&v118 count:1];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_5EDD4;
  v107[3] = &unk_9E170;
  v108 = *(a1 + 32);
  v57 = v41;
  v109 = v57;
  v58 = v51;
  v110 = v58;
  [v55 enumeratePersistentIDsAndProperties:v56 usingBlock:v107];
  v59 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v58 count];
    *buf = 134217984;
    v123 = v60;
    _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Found %lu podcasts to update", buf, 0xCu);
  }

  if ([v58 count])
  {
    v117[0] = v94;
    v117[1] = ML3EntityPropertyKeepLocal;
    v117[2] = v95;
    v117[3] = ML3TrackPropertyLocationFileName;
    v61 = [NSArray arrayWithObjects:v117 count:4];
    [ML3Track setValues:&off_A1350 forProperties:v61 forEntityPersistentIDs:v58 inLibrary:*(a1 + 32) usingConnection:v44];
  }

  objc_autoreleasePoolPop(v90);
  v62 = objc_autoreleasePoolPush();
  v63 = +[NSMutableArray array];
  v64 = *(a1 + 32);
  v116[0] = v97;
  v116[1] = v102;
  v65 = [NSArray arrayWithObjects:v116 count:2];
  v66 = [ML3AllCompoundPredicate predicateMatchingPredicates:v65];
  v67 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v64 predicate:v66 orderingTerms:0];

  v115 = v96;
  v68 = [NSArray arrayWithObjects:&v115 count:1];
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_5EF74;
  v103[3] = &unk_9E170;
  v104 = *(a1 + 32);
  v69 = v57;
  v105 = v69;
  v70 = v63;
  v106 = v70;
  [v67 enumeratePersistentIDsAndProperties:v68 usingBlock:v103];
  v71 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v72 = [v70 count];
    *buf = 134217984;
    v123 = v72;
    _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Found %lu unrestorable tracks", buf, 0xCu);
  }

  if ([v70 count])
  {
    [ML3Track clearLocationFromLibrary:*(a1 + 32) persistentIDs:v70 usingConnection:v44];
  }

  [*(a1 + 40) _clearDatabasePropertiesForRestore:*(a1 + 56)];
  [*(a1 + 32) cleanupArtworkWithOptions:30 usingConnection:v44];

  objc_autoreleasePoolPop(v62);
  if (([ML3MusicLibrary updateTrackIntegrityOnConnection:v44]& 1) == 0)
  {
    v73 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEFAULT, "Failed to update track integrity", buf, 2u);
    }
  }

  v74 = *(a1 + 60);

  return v74;
}

void sub_5EC34(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v5 = *a3;
  if (!*a3)
  {
    v5 = &stru_9F828;
  }

  v6 = v5;
  v7 = [ML3Track newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v8 = [v7 absoluteFilePath];
  v9 = [*(a1 + 40) fileExistsAtPath:v8];
  v10 = _ATLogCategorySyncBundle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 134218242;
      v14 = a2;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Skipping track already restored. pid=%lld, '%{public}@'", &v13, 0x16u);
    }
  }

  else
  {
    if (v11)
    {
      v13 = 134218242;
      v14 = a2;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Marking track as needing restore. pid=%lld, '%{public}@'", &v13, 0x16u);
    }

    v12 = *(a1 + 48);
    v10 = [NSNumber numberWithLongLong:a2];
    [v12 addObject:v10];
  }
}

void sub_5EDD4(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v5 = *a3;
  if (!*a3)
  {
    v5 = &stru_9F828;
  }

  v6 = v5;
  v7 = [ML3Track newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v8 = [v7 absoluteFilePath];
  v9 = [*(a1 + 40) fileExistsAtPath:v8];
  v10 = _ATLogCategorySyncBundle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 134218242;
      v14 = a2;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Skipping podcast already restored. pid=%lld, '%{public}@'", &v13, 0x16u);
    }
  }

  else
  {
    if (v11)
    {
      v13 = 134218242;
      v14 = a2;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Marking podcast as needing restore. pid=%lld, '%{public}@'", &v13, 0x16u);
    }

    v12 = *(a1 + 48);
    v10 = [NSNumber numberWithLongLong:a2];
    [v12 addObject:v10];
  }
}

void sub_5EF74(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v6 = *a3;
  if (!*a3)
  {
    v6 = &stru_9F828;
  }

  v7 = v6;
  v8 = [ML3Track newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v9 = [v8 absoluteFilePath];
  if ([*(a1 + 40) fileExistsAtPath:v9])
  {
    v10 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = a2;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Skipping track already restored. pid=%lld, '%{public}@'", &v15, 0x16u);
    }

    v11 = v7;
  }

  else
  {
    v12 = *a3;
    if (!*a3)
    {
      v12 = &stru_9F828;
    }

    v11 = v12;

    v13 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = a2;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "<Reconcile Restore> Clearing location properties for unrestorable track. pid=%lld, '%{public}@'", &v15, 0x16u);
    }

    v14 = *(a1 + 48);
    v10 = [NSNumber numberWithLongLong:a2];
    [v14 addObject:v10];
  }
}

void sub_5FBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_5FC40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = a2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "migrating container artwork token. container_pid=%lld", buf, 0xCu);
    }

    v7 = [[ML3Container alloc] initWithPersistentID:a2 inLibrary:*(a1 + 32)];
    v8 = [[ML3ArtworkTokenSet alloc] initWithEntity:v7 artworkType:5];
    v9 = [v8 artworkTokenForSource:100];
    if (v9)
    {
      v10 = *(a1 + 32);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_6022C;
      v11[3] = &unk_9E0A8;
      v12 = v10;
      v14 = a2;
      v13 = v9;
      [v12 databaseConnectionAllowingWrites:1 withBlock:v11];
    }
  }
}

void sub_5FDD4(uint64_t a1)
{
  v2 = [ML3MutableDatabaseImport alloc];
  v3 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  v4 = [v2 initWithLibraryPath:v3 trackData:0 playlistData:0];

  [v4 setResetSync:*(a1 + 88) == 2];
  v5 = objc_alloc_init(ICCloudClient);
  v6 = [v5 isAuthenticated];

  [v4 setSagaEnabled:v6];
  [v4 setSyncAnchor:*(a1 + 32)];
  v7 = +[MLMediaLibraryService sharedMediaLibraryService];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5FF90;
  v13[3] = &unk_9E0F8;
  v14 = *(a1 + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5FFAC;
  v9[3] = &unk_9E120;
  v12 = *(a1 + 72);
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v8;
  v11 = *(a1 + 56);
  [v7 performImport:v4 fromSource:5 withProgressBlock:v13 completionHandler:v9];
}

uint64_t sub_5FF90(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(a2);
  }

  return result;
}

void sub_5FFAC(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  v10 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v18[0]) = a2;
    WORD2(v18[0]) = 2114;
    *(v18 + 6) = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "sync import complete. success=%d, err=%{public}@", buf, 0x12u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  if (!v8 && a2)
  {
    v16 = 0;
    v11 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:&v16];
    v12 = v16;
    if (v11)
    {
      v13 = [v11 decodePropertyListForKey:NSKeyedArchiveRootObjectKey];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v14 = [v13 objectForKey:@"modified_playlist_pids"];
        if (v14)
        {
          [*(*(a1 + 32) + 200) addObjectsFromArray:v14];
        }

        [*(a1 + 40) notifyContentsDidChange];
      }

      else
      {
        v14 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v11 error];
          *buf = 138543362;
          v18[0] = v15;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Failed to unarchive import data. err=%{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18[0] = v12;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Failed to create unarchiver for import data. err=%{public}@", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_6022C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 removeArtworkTokenForEntityPersistentID:v4 entityType:1 artworkType:5 sourceType:100 usingConnection:v5];
  [*(a1 + 32) importArtworkTokenForEntityPersistentID:*(a1 + 48) entityType:1 artworkToken:*(a1 + 40) artworkType:5 sourceType:300 usingConnection:v5];
  [*(a1 + 32) updateBestArtworkTokenForEntityPersistentID:*(a1 + 48) entityType:1 artworkType:5 retrievalTime:1 preserveExistingAvailableToken:v5 usingConnection:0.0];
}

uint64_t sub_60A84(uint64_t a1)
{
  *(*(a1 + 32) + 32) = [*(a1 + 40) currentRevision];
  v2 = [*(a1 + 40) valueForDatabaseProperty:@"MLSyncClientLastSyncedRevision"];
  v3 = [v2 longLongValue];

  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Saving out track metadata since revision %lld", &v8, 0xCu);
  }

  [*(a1 + 40) saveTrackMetadataSinceRevision:v3 withGrappaID:*(a1 + 48)];
  v5 = _ATLogCategorySyncBundle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v8 = 134217984;
      v9 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Saving out playlist data since revision %lld", &v8, 0xCu);
    }

    [*(a1 + 40) savePlaylistsSinceRevision:v3 withGrappaID:*(a1 + 48)];
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Not saving out playlist data because this a first sync", &v8, 2u);
    }
  }

  return 1;
}

void sub_61210(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 _clearCachedPlaylistSettings];
  }
}

void sub_61220(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 _clearCachedPlaylistSettings];
  }
}

void sub_61B74(uint64_t a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Finished all track assets - starting a keep local operation to update collections", v4, 2u);
  }

  v5[0] = @"MLSyncPolicyChangedObserverStartKeepLocalSessionEnqueueAssetsKey";
  v5[1] = @"MLSyncPolicyChangedObserverStartKeepLocalSessionForceNoDelayKey";
  v6[0] = &__kCFBooleanFalse;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [*(a1 + 32) _notifyPowerStateChangedInitiateSyncOrKeepLocalSessionWithOptions:v3];
}

void sub_61D04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  [*(a1 + 40) currentBatteryLevel];
  v4 = v3;
  v5 = +[ICDeviceInfo currentDeviceInfo];
  v6 = [v5 isWatch];

  if (v6 && v2 < 0.8 && v4 > 0.8)
  {
    v7 = [*(a1 + 40) currentThermalLevel];
    v8 = sub_72478(*(a1 + 40));
    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v15 = v2;
      v16 = 2048;
      v17 = v4;
      v18 = 2048;
      v19 = v7;
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "device battery threshold changed. Battery Level (cached=%f, current=%f), Thermal Level (current=%llu, threshold=%llu)", buf, 0x2Au);
    }

    if ([*(a1 + 40) isCharging] && v7 < v8)
    {
      v10 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "initiating a sync/keep local now that battery level crossed threshold and device is on charger", buf, 2u);
      }

      v12[0] = @"MLSyncPolicyChangedObserverStartKeepLocalSessionEnqueueAssetsKey";
      v12[1] = @"MLSyncPolicyChangedObserverStartSyncSessionPriorityKey";
      v13[0] = &off_A0EB0;
      v13[1] = &off_A0EB0;
      v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
      [*(a1 + 32) _notifyPowerStateChangedInitiateSyncOrKeepLocalSessionWithOptions:v11];
    }
  }

  *(*(a1 + 32) + 48) = v4;
}

void sub_61F80(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) currentThermalLevel];
  v4 = sub_72478(*(a1 + 40));
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "device thermal level changed. cached level=%llu, current level=%llu, maxThermalPressureThreshold=%llu", buf, 0x20u);
  }

  v6 = +[ICDeviceInfo currentDeviceInfo];
  v7 = [v6 isWatch];

  if (v7)
  {
    if (v2 < v4 && v3 >= v4)
    {
      v12 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Cancelling keep local downloads because the device is under thermal pressure", buf, 2u);
      }

      v11 = [NSError errorWithDomain:@"ATError" code:33 userInfo:0];
      v13 = [NSPredicate predicateWithFormat:@"dataclass=%@", @"Media"];
      [*(a1 + 32) _cancelDownloadsMatchingPredicate:v13 excludeActiveDownloads:1 error:v11];

      goto LABEL_18;
    }

    if (v2 >= v4 && v3 < v4)
    {
      v10 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "initiating sync/keep local now that thermal levels are acceptable and device is on charger", buf, 2u);
      }

      v14[0] = @"MLSyncPolicyChangedObserverStartKeepLocalSessionEnqueueAssetsKey";
      v14[1] = @"MLSyncPolicyChangedObserverStartSyncSessionPriorityKey";
      v15[0] = &off_A0EB0;
      v15[1] = &off_A0EB0;
      v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
      [*(a1 + 32) _notifyPowerStateChangedInitiateSyncOrKeepLocalSessionWithOptions:v11];
LABEL_18:
    }
  }

  *(*(a1 + 32) + 40) = v3;
}

void sub_62280(uint64_t a1)
{
  v2 = [*(a1 + 32) isCharging];
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "device power state has changed. hasPower=%{BOOL}u", buf, 8u);
  }

  v4 = +[ICDeviceInfo currentDeviceInfo];
  v5 = [v4 isWatch];

  if (v5)
  {
    if (v2)
    {
      v6 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
      v7 = [v6 isMediaSyncingSupported];

      if (v7)
      {
        v12 = @"MLSyncPolicyChangedObserverStartSyncSessionPriorityKey";
        v13 = &off_A0EB0;
        v8 = &v13;
        v9 = &v12;
      }

      else
      {
        v14 = @"MLSyncPolicyChangedObserverStartKeepLocalSessionEnqueueAssetsKey";
        v15 = &off_A0EB0;
        v8 = &v15;
        v9 = &v14;
      }

      v10 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:1, v12, v13, v14, v15];
      [*(a1 + 40) _notifyPowerStateChangedInitiateSyncOrKeepLocalSessionWithOptions:v10];
    }

    else
    {
      v10 = [NSError errorWithDomain:@"ATError" code:31 userInfo:0];
      v11 = [NSPredicate predicateWithFormat:@"powerRequired=1"];
      [*(a1 + 40) _cancelDownloadsMatchingPredicate:v11 excludeActiveDownloads:0 error:v10];
    }
  }
}

void sub_62790(id a1, ICURLBag *a2, NSError *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to update minimum cellular quality threshold from the bag. err=%{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v5 = [(ICURLBag *)a2 numberForBagKey:ICURLBagKeyMinimumCellularQualityForMediaDownloads];
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updating minimum cellular quality threshold from the bag to %{public}@", &v8, 0xCu);
    }

    v7 = +[ATUserDefaults sharedInstance];
    [v7 setMinimumNetworkLinkQualityForDownloads:v5];
  }
}

void sub_628DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a5;
  v8 = [v7 objectForKeyedSubscript:@"isPlaceholder"];
  if (([v8 BOOLValue] & 1) == 0)
  {
    v9 = [v7 objectForKeyedSubscript:@"bundleIDs"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_629C0;
    v10[3] = &unk_9EAC0;
    v11 = v6;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

char *sub_629C0(uint64_t a1)
{
  result = ICSystemApplicationTypeForBundleIdentifier();
  if (result <= 3 && result != &dword_0 + 1)
  {
    v4 = result;
    v5 = *(a1 + 32);

    return [v5 _notifyAppRemoved:v4];
  }

  return result;
}

id sub_62A18(uint64_t a1, void *a2)
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Got cellular data download setting changed notification", v5, 2u);
  }

  return [a2 _handleNetworkConditionsOrCellularDataPolicyChanged];
}

void sub_62AE0(id a1)
{
  qword_A7710 = [[MLSyncClientEnvironmentPolicyChangeHandler alloc] _init];

  _objc_release_x1();
}

void sub_62EEC(id a1)
{
  qword_A7720 = [[MLSyncClientKeepLocalEventHandlerWrapper alloc] _init];

  _objc_release_x1();
}

void sub_6324C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_63280(uint64_t a1)
{
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *buf = 138543618;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection interrupted from pid: %i", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_63470;
    v9[3] = &unk_9EC30;
    v9[4] = v7;
    v10 = WeakRetained;
    dispatch_barrier_async(v8, v9);
  }
}

void sub_633B8(uint64_t a1)
{
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection invalidated from pid: %i", &v5, 0x12u);
  }
}

void sub_63544(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_635DC;
    block[3] = &unk_9EB50;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_637CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_637EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_63804(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_63BEC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_64354(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_643F0;
  v7[3] = &unk_9EC30;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_643F0(uint64_t a1)
{
  if (![*(a1 + 32) isInstalled] || (objc_msgSend(*(a1 + 32), "isRestore") & 1) == 0)
  {
    v2 = [*(a1 + 32) error];
    if (!v2 || (ATIsPendingDownloadError() & 1) == 0)
    {
      sub_6FC1C(*(a1 + 32), *(*(a1 + 40) + 8), v2 == 0);
    }
  }

  v3 = +[ATAssetLinkController sharedInstance];
  v5 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 installCompleteForAssets:v4];
}

void sub_649B0(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 48);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) remoteObjectProxyWithErrorHandler:{&stru_9ECF0, v8}];
        [v7 atcWillEnqueueDownloads:a1[5] cancelDownloads:a1[6]];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t sub_64ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v78 = v5;
      v79 = 2114;
      *v80 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Will remove keep-local for %{public}@", buf, 0x16u);
    }

    v82[0] = ML3EntityPropertyKeepLocal;
    v82[1] = ML3EntityPropertyKeepLocalStatus;
    v82[2] = ML3EntityPropertyKeepLocalStatusReason;
    v7 = [NSArray arrayWithObjects:v82 count:3];
    [ML3Track setValues:&off_A14B8 forProperties:v7 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(*(a1 + 40) + 8) usingConnection:v3];
  }

  v8 = [*(a1 + 48) count];
  v9 = _ATLogCategorySyncBundle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    v28 = *(a1 + 40);
    *buf = 138543362;
    v78 = v28;
    v27 = "%{public}@ No new keep-local assets to download";
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) count];
    *buf = 138543618;
    v78 = v11;
    v79 = 1024;
    *v80 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueing %d new keep-local assets", buf, 0x12u);
  }

  v81[0] = ML3EntityPropertyKeepLocalStatus;
  v81[1] = ML3EntityPropertyKeepLocalStatusReason;
  v13 = [NSArray arrayWithObjects:v81 count:2];
  [ML3Track setValues:&off_A14D0 forProperties:v13 forEntityPersistentIDs:*(a1 + 56) inLibrary:*(*(a1 + 40) + 8) usingConnection:v3];

  sub_714B8(v3, *(*(a1 + 40) + 8));
  v14 = +[ATAssetLinkController sharedInstance];
  [v14 enqueueAssets:*(a1 + 48)];

  v15 = +[ICDeviceInfo currentDeviceInfo];
  v16 = [v15 isWatch];

  v17 = +[ICEnvironmentMonitor sharedMonitor];
  v18 = [v17 isCharging];

  v19 = v16 ^ 1;
  v20 = v16 ^ 1 | v18;
  if ((v19 & 1) == 0)
  {
    v21 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 40);
      *buf = 138543874;
      v78 = v22;
      v79 = 1026;
      *v80 = v18 & 1;
      *&v80[4] = 1026;
      *&v80[6] = *v80;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Watch detected, should load missing artwork: %{public}d, is charging: %{public}d", buf, 0x18u);
    }
  }

  if (v20)
  {
    v23 = [ICCloudClient alloc];
    v24 = +[ICUserIdentity activeAccount];
    v25 = [v23 initWithUserIdentity:v24];
    [v25 loadMissingArtwork];
  }

  v9 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 40);
    *buf = 138543362;
    v78 = v26;
    v27 = "%{public}@ Enqueueing keep local assets";
LABEL_18:
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
  }

LABEL_19:

  if ([*(a1 + 64) count])
  {
    v59 = v3;
    v29 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 40);
      v31 = [*(a1 + 64) count];
      *buf = 138543618;
      v78 = v30;
      v79 = 2048;
      *v80 = v31;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding %lu new pending downloads", buf, 0x16u);
    }

    v67 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 64) count]);
    v66 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 64) count]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v64 = a1;
    obj = *(a1 + 64);
    v65 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v65)
    {
      v62 = ML3EntityPropertyKeepLocalStatus;
      v63 = *v73;
      v61 = ML3EntityPropertyKeepLocalStatusReason;
      do
      {
        for (i = 0; i != v65; i = i + 1)
        {
          if (*v73 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v72 + 1) + 8 * i);
          v34 = objc_autoreleasePoolPush();
          v35 = [*(v64 + 40) _keepLocalStatusReasonForATAssetDownloadPauseReason:{objc_msgSend(v33, "downloadPauseReason")}];
          if ([v33 isRetry])
          {
            v36 = 5;
          }

          else
          {
            v36 = 4;
          }

          v37 = [v33 isRetry];
          v38 = [NSNumber numberWithUnsignedInteger:v35];
          if (v37)
          {
            v39 = v66;
          }

          else
          {
            v39 = v67;
          }

          v40 = [v39 objectForKey:v38];

          v41 = *(v64 + 72);
          v42 = [v33 identifier];
          v43 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v42 longLongValue]);
          v44 = [v41 objectForKey:v43];

          v45 = [v44 objectForKey:v62];
          LODWORD(v42) = [v45 integerValue];

          v46 = [v44 objectForKey:v61];
          v47 = [v46 integerValue];

          if (v36 != v42 || v35 != v47)
          {
            if (v40)
            {
              v49 = [v33 identifier];
              v50 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v49 longLongValue]);
              [v40 addObject:v50];
            }

            else
            {
              v51 = [v33 identifier];
              v52 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v51 longLongValue]);
              v40 = [NSMutableSet setWithObject:v52];

              v53 = [v33 isRetry];
              v49 = [NSNumber numberWithUnsignedInteger:v35];
              if (v53)
              {
                v54 = v66;
              }

              else
              {
                v54 = v67;
              }

              [v54 setObject:v40 forKey:v49];
            }
          }

          objc_autoreleasePoolPop(v34);
        }

        v65 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v65);
    }

    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_65324;
    v70[3] = &unk_9ED40;
    v70[4] = *(v64 + 40);
    v3 = v59;
    v55 = v59;
    v71 = v55;
    [v67 enumerateKeysAndObjectsUsingBlock:v70];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_6544C;
    v68[3] = &unk_9ED40;
    v68[4] = *(v64 + 40);
    v56 = v55;
    v69 = v56;
    [v66 enumerateKeysAndObjectsUsingBlock:v68];
    sub_714B8(v56, *(*(v64 + 40) + 8));
    v57 = +[ATAssetLinkController sharedInstance];
    [v57 setPendingAssets:*(v64 + 64)];
  }

  return 1;
}

void sub_65324(uint64_t a1, void *a2, void *a3)
{
  v11[0] = &off_A0F58;
  v11[1] = a2;
  v5 = a3;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v10[0] = ML3EntityPropertyKeepLocalStatus;
  v10[1] = ML3EntityPropertyKeepLocalStatusReason;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v9 = [v5 allObjects];

  [ML3Track setValues:v7 forProperties:v8 forEntityPersistentIDs:v9 inLibrary:*(*(a1 + 32) + 8) usingConnection:*(a1 + 40)];
}

void sub_6544C(uint64_t a1, void *a2, void *a3)
{
  v11[0] = &off_A0F70;
  v11[1] = a2;
  v5 = a3;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v10[0] = ML3EntityPropertyKeepLocalStatus;
  v10[1] = ML3EntityPropertyKeepLocalStatusReason;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v9 = [v5 allObjects];

  [ML3Track setValues:v7 forProperties:v8 forEntityPersistentIDs:v9 inLibrary:*(*(a1 + 32) + 8) usingConnection:*(a1 + 40)];
}

void sub_661DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose((v59 - 208), 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_6625C(void *a1, void *a2)
{
  v4 = [a2 objectForKey:@"CACHE_DELETE_AMOUNT"];
  *(*(a1[5] + 8) + 24) = [v4 longLongValue];

  *(*(a1[6] + 8) + 24) += *(*(a1[5] + 8) + 24);
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

void sub_662E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 80) + 8) + 24) > *(*(*(a1 + 88) + 8) + 24))
  {
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 shortDescription];
      v28 = 138543618;
      v29 = v5;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Not enough free space for asset %{public}@ - will cancel download", &v28, 0x16u);
    }

    [v3 setDownloadPauseReason:{objc_msgSend(v3, "downloadPauseReason") | 0x20}];
  }

  if ([v3 powerRequired] && (*(a1 + 104) & 1) == 0)
  {
    [v3 setDownloadPauseReason:{objc_msgSend(v3, "downloadPauseReason") | 0x10}];
    v7 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v3 shortDescription];
      v28 = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Not enqueing asset %{public}@ because charging is required", &v28, 0x16u);
    }
  }

  if (([v3 allowDownloadOnConstrainedNetwork] & 1) == 0 && *(a1 + 105) == 1)
  {
    [v3 setDownloadPauseReason:{objc_msgSend(v3, "downloadPauseReason") | 2}];
    v10 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v3 shortDescription];
      v28 = 138543618;
      v29 = v11;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Not enqueing asset %{public}@ because the network is constrained", &v28, 0x16u);
    }
  }

  if (([v3 canUseCellularData] & 1) == 0 && *(a1 + 106) == 1)
  {
    [v3 setDownloadPauseReason:{objc_msgSend(v3, "downloadPauseReason") | 4}];
    v13 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = [v3 shortDescription];
      v28 = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Not enqueing asset %{public}@ because cellular data is not allowed", &v28, 0x16u);
    }
  }

  v16 = +[ICDeviceInfo currentDeviceInfo];
  if ([v16 isWatch])
  {
    v17 = *(a1 + 106);

    if (v17 != 1 || [*(a1 + 40) currentNetworkLinkQuality] >= *(a1 + 96) && ((objc_msgSend(v3, "isForeground") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isCurrentNetworkLinkHighQuality") & 1) != 0))
    {
      goto LABEL_26;
    }

    [v3 setDownloadPauseReason:{objc_msgSend(v3, "downloadPauseReason") | 8}];
    v16 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = [v3 shortDescription];
      v28 = 138543618;
      v29 = v18;
      v30 = 2114;
      v31 = v19;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Not enqueing asset %{public}@ because the cellular connection quality is too low", &v28, 0x16u);
    }
  }

LABEL_26:
  if ([v3 downloadPauseReason])
  {
    [*(a1 + 48) addObject:v3];
  }

  else
  {
    v20 = [v3 identifier];
    v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 longLongValue]);

    v22 = [*(a1 + 56) objectForKeyedSubscript:v21];
    [v3 setMediaItemDownloadInfo:v22];

    [*(a1 + 64) addObject:v3];
    v23 = [v3 identifier];
    v24 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v23 longLongValue]);

    v25 = [*(a1 + 72) objectForKey:v24];
    v26 = [v25 objectForKey:ML3TrackPropertyTotalSize];
    v27 = [v26 unsignedLongLongValue];

    *(*(*(a1 + 80) + 8) + 24) += v27;
  }
}

void sub_66DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_66E54(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = [*a3 integerValue];
  v6 = 40;
  if (v5 == &dword_0 + 1)
  {
    v6 = 32;
  }

  v7 = *(a1 + v6);
  v8 = [NSNumber numberWithLongLong:a2];
  [v7 addObject:v8];
}

uint64_t sub_66ED8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ML3EntityPropertyKeepLocalStatus;
  v35[0] = ML3EntityPropertyKeepLocalStatus;
  v35[1] = ML3EntityPropertyKeepLocalStatusReason;
  v35[2] = ML3EntityPropertyKeepLocalConstraints;
  v5 = [NSArray arrayWithObjects:v35 count:3];
  v6 = [ML3Track setValues:&off_A1458 forProperties:v5 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(*(a1 + 40) + 8) usingConnection:v3];

  if (v6)
  {
    v7 = +[NSMutableArray array];
    v8 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v9 = [v8 statementWithPrefix:@"SELECT DISTINCT(container_pid) FROM container JOIN container_item USING (container_pid) WHERE container.keep_local_status = 2 AND item_pid" inParameterCount:{objc_msgSend(*(a1 + 32), "count")}];

    v10 = [v3 executeQuery:v9 withParameters:*(a1 + 32)];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_67480;
    v29[3] = &unk_9F298;
    v11 = v7;
    v30 = v11;
    [v10 enumerateRowsWithBlock:v29];

    if ([v11 count]&& (v32 = v4, [NSArray arrayWithObjects:&v32 count:1], v12 = objc_claimAutoreleasedReturnValue(), v13 = [ML3Container setValues:&off_A1470 forProperties:v12 forEntityPersistentIDs:v11 inLibrary:*(*(a1 + 40) + 8) usingConnection:v3], v12, (v13 & 1) == 0))
    {
      v18 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 40);
        *buf = 138543362;
        v34 = v25;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ Failed to clear keep-local properties on parent containers of removed tracks", buf, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      v14 = +[NSMutableArray array];
      v15 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v16 = [v15 statementWithPrefix:@"SELECT DISTINCT(album_pid) FROM item JOIN album USING (album_pid) WHERE album.keep_local_status = 2 AND item_pid" inParameterCount:{objc_msgSend(*(a1 + 32), "count")}];

      v17 = [v3 executeQuery:v16 withParameters:*(a1 + 32)];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_674F0;
      v27[3] = &unk_9F298;
      v18 = v14;
      v28 = v18;
      [v17 enumerateRowsWithBlock:v27];

      if ([v18 count])
      {
        v31 = v4;
        v19 = 1;
        v20 = [NSArray arrayWithObjects:&v31 count:1];
        v21 = [ML3Album setValues:&off_A1488 forProperties:v20 forEntityPersistentIDs:v18 inLibrary:*(*(a1 + 40) + 8) usingConnection:v3];

        if ((v21 & 1) == 0)
        {
          v22 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = *(a1 + 40);
            *buf = 138543362;
            v34 = v23;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ Failed to clear keep-local properties on parent albums of removed tracks", buf, 0xCu);
          }

          v19 = 0;
        }
      }

      else
      {
        v19 = 1;
      }
    }
  }

  else
  {
    v11 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *buf = 138543362;
      v34 = v24;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to clear keep-local properties on removed tracks", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

void sub_67354(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

id sub_673B4(uint64_t a1, void *a2)
{
  v7 = ML3EntityPropertyKeepLocal;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [ML3Track setValues:&off_A14A0 forProperties:v4 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(*(a1 + 40) + 8) usingConnection:v3, v7];

  return v5;
}

void sub_67480(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLongLong:v3];
  [v4 addObject:v5];
}

void sub_674F0(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLongLong:v3];
  [v4 addObject:v5];
}

void sub_675D4(uint64_t a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ got accounts changed notification - rescheduling keep-local tasks if needed", buf, 0xCu);
  }

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  v5 = +[ICUserIdentity activeAccount];
  v10 = 0;
  v6 = [v4 getPropertiesForUserIdentity:v5 error:&v10];
  v7 = v10;

  v8 = +[ICBGTaskScheduler sharedTaskScheduler];
  v9 = v8;
  if (v7 || !v6)
  {
    [v8 cancelTask:@"MLKeepLocalSessionPeriodicEvent"];
    [v9 cancelTask:@"MLKeepLocalSessionEvent"];
  }

  else
  {
    if (([v8 hasScheduledTask:@"MLKeepLocalSessionPeriodicEvent"] & 1) == 0)
    {
      [v9 scheduleRecurringTask:@"MLKeepLocalSessionPeriodicEvent" withInterval:0 afterDelay:86400.0 withUserData:86400.0];
    }

    if (([v9 hasScheduledTask:@"MLKeepLocalSessionEvent"] & 1) == 0)
    {
      [v9 scheduleTask:@"MLKeepLocalSessionEvent" afterDelay:0 withUserData:60.0];
    }
  }
}

void sub_67B50(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) remoteObjectProxyWithErrorHandler:{&stru_9EC08, v8}];
        [v7 atcWillEnqueueDownloads:&__NSArray0__struct cancelDownloads:*(a1 + 40)];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_67C80(uint64_t a1, void *a2)
{
  v7[0] = ML3EntityPropertyKeepLocalStatus;
  v7[1] = ML3EntityPropertyKeepLocalStatusReason;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [ML3Track setValues:&off_A1440 forProperties:v4 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(*(a1 + 40) + 8) usingConnection:v3];

  return v5;
}

void sub_67DDC(uint64_t a1)
{
  if ([*(a1 + 32) _canRunKeepLocalEvaluationByEnqueuingAssets:1])
  {
    v2 = *(*(a1 + 32) + 8);
    if (*(a1 + 56) < 1)
    {
      [*(a1 + 32) _pruneActiveDownloads];
      if (*(a1 + 48) != 1 || *(a1 + 56) != -1)
      {
        goto LABEL_9;
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_67FD8;
      v14[3] = &unk_9EBA0;
      v16 = *(a1 + 40);
      v15 = v2;
      [v15 databaseConnectionAllowingWrites:1 withBlock:v14];
      v12 = v15;
    }

    else
    {
      v3 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 60);
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = *(a1 + 56);
        *buf = 138544386;
        v20 = v5;
        v21 = 1024;
        v22 = v4;
        v23 = 2048;
        v24 = v6;
        v25 = 1024;
        v26 = v7;
        v27 = 1024;
        v28 = v8;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting a keep-local evaluation - background:%d, libraryItemIdentifier:%lld, entityType:%d, new keep local status:%d", buf, 0x28u);
      }

      v9 = [*(a1 + 32) runKeepLocalEvaluationForItem:*(a1 + 40) entityType:*(a1 + 48) newKeepLocalStatus:*(a1 + 56) musicLibrary:v2];
      v10 = *(a1 + 32);
      v11 = *(a1 + 60);
      v17 = 0;
      v18 = 0;
      [v10 _handleKeepLocalEvaluationOperationCompletedWithResult:v9 inBackground:v11 andGetEnqueuedDownloads:&v18 cancelledDownloads:&v17];
      v12 = v18;
      v13 = v17;
    }

LABEL_9:
  }
}

void sub_67FD8(uint64_t a1, void *a2)
{
  v8 = ML3ContainerPropertyDateDownloaded;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [NSNumber numberWithLongLong:*(a1 + 40)];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [ML3Container setValues:&off_A1428 forProperties:v4 forEntityPersistentIDs:v6 inLibrary:*(a1 + 32) usingConnection:v3];
}

void sub_68178(uint64_t a1)
{
  if ([*(a1 + 32) _canRunKeepLocalEvaluationByEnqueuingAssets:1])
  {
    v2 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v18 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating database to download library onto the device", buf, 0xCu);
    }

    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting keep local session to download library", buf, 0xCu);
    }

    v6 = [*(a1 + 32) setKeepLocalForAllMusicItemsWithLibrary:*(*(a1 + 32) + 8)];
    v7 = *(a1 + 32);
    v15 = 0;
    v16 = 0;
    [v7 _handleKeepLocalEvaluationOperationCompletedWithResult:v6 inBackground:0 andGetEnqueuedDownloads:&v16 cancelledDownloads:&v15];
    v8 = v16;
    v9 = v15;
    +[NSDate timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 24) = v10;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_68360;
    block[3] = &unk_9EB50;
    v14 = v11;
    dispatch_async(v12, block);
  }
}

void sub_68430(uint64_t a1)
{
  if ([*(a1 + 32) _canRunKeepLocalEvaluationByEnqueuingAssets:*(a1 + 48)])
  {
    v2 = +[ICBGTaskScheduler sharedTaskScheduler];
    +[NSDate timeIntervalSinceReferenceDate];
    v4 = v3 - *(*(a1 + 32) + 24);
    if (*(a1 + 49) != 1 || (*(a1 + 50) & 1) != 0 || v4 >= 10.0)
    {
      v9 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 49);
        v12 = *(a1 + 48);
        v13 = *(a1 + 50);
        *buf = 138544386;
        v31 = v10;
        v32 = 1024;
        *v33 = v11;
        *&v33[4] = 2048;
        *&v33[6] = v4;
        v34 = 1024;
        v35 = v12;
        v36 = 1024;
        v37 = v13;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ starting a keep-local evaluation - background:%d, timeSinceLastSession:%f, enqueueAssets:%d, forceNoDelay:%d", buf, 0x28u);
      }

      [*(a1 + 32) _pruneActiveDownloads];
      v14 = [*(a1 + 32) runDefaultKeepLocalEvaluationWithMusicLibrary:*(*(a1 + 32) + 8)];
      if (*(a1 + 48) == 1)
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 49);
        v26 = 0;
        v27 = 0;
        [v15 _handleKeepLocalEvaluationOperationCompletedWithResult:v14 inBackground:v16 andGetEnqueuedDownloads:&v27 cancelledDownloads:&v26];
        v6 = v27;
        v17 = v26;
      }

      else
      {
        v17 = 0;
        v6 = 0;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 24) = v18;
    }

    else
    {
      v5 = [v2 hasScheduledTask:@"MLKeepLocalSessionEvent"];
      v6 = _ATLogCategorySyncBundle();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          v8 = *(a1 + 32);
          *buf = 138543362;
          v31 = v8;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ not scheduling a keep-local evaluation because one is already scheduled", buf, 0xCu);
        }
      }

      else
      {
        if (v7)
        {
          v21 = *(a1 + 32);
          *buf = 138543618;
          v31 = v21;
          v32 = 2048;
          *v33 = v4;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferring start of background keep-local evaluation. timeSinceLastSession=%f", buf, 0x16u);
        }

        v28[0] = @"isBackground";
        v22 = [NSNumber numberWithBool:*(a1 + 49)];
        v28[1] = @"enqueueAssets";
        v29[0] = v22;
        v23 = [NSNumber numberWithBool:*(a1 + 48)];
        v29[1] = v23;
        v6 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

        [v2 scheduleTask:@"MLKeepLocalSessionEvent" afterDelay:v6 withUserData:10.0 - v4];
      }
    }
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_687C4;
    block[3] = &unk_9EB50;
    v25 = v19;
    dispatch_async(v20, block);
  }
}

void sub_68BEC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isEqualToString:@"MLKeepLocalSessionPeriodicEvent"])
  {
    [*(a1 + 32) startKeepLocalSessionInBackground:1];
  }

  else if ([v6 isEqualToString:@"MLKeepLocalSessionEvent"])
  {
    [*(a1 + 32) startKeepLocalSessionInBackground:objc_msgSend(v5 enqueueAssets:"ic_BOOLValueForKey:" withCompletion:{@"isBackground", objc_msgSend(v5, "ic_BOOLValueForKey:", @"enqueueAssets", 0}];
  }
}

void sub_68E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_68E84(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_A7730)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_69070;
    v6[4] = &unk_9F118;
    v6[5] = v6;
    v7 = off_9EE78;
    v8 = 0;
    qword_A7730 = _sl_dlopen();
  }

  if (!qword_A7730)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *NanoMusicSyncLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MLSyncKeepLocalEventHandler.m" lineNumber:45 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NMSyncDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getNMSyncDefaultsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MLSyncKeepLocalEventHandler.m" lineNumber:49 description:{@"Unable to find class %s", "NMSyncDefaults"}];

LABEL_10:
    __break(1u);
  }

  qword_A7728 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_69070()
{
  result = _sl_dlopen();
  qword_A7730 = result;
  return result;
}

void sub_69668(id a1)
{
  qword_A7868 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsInMyLibrary value:&off_A0F88 comparison:2];

  _objc_release_x1();
}

void sub_69838(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:6];
  v2 = qword_A7758;
  qword_A7758 = v1;
}

void sub_6AB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_6ABB4(uint64_t a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v4 = [ML3Track newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v5 = [v4 getValuesForProperties:*(a1 + 40)];
  v6 = [v5 mutableCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 48) persistentID]);
    [v6 setObject:v7 forKeyedSubscript:ML3TrackPropertyDownloadSourceContainerPid];
  }

  v8 = ML3EntityPropertyKeepLocalConstraints;
  v9 = [v6 objectForKeyedSubscript:ML3EntityPropertyKeepLocalConstraints];
  v10 = [v9 longLongValue];

  v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 104) | v10];
  [v6 setObject:v11 forKeyedSubscript:v8];

  v12 = v6;
  if (([*(a1 + 56) _canDownloadTrackWithPersistentID:a2 andProperties:v12] & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    goto LABEL_20;
  }

  v13 = [*(a1 + 56) _isSupportedMediaTypeFromTrackProperties:v12];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 56) _containerIsSmartLimited:*(a1 + 48)])
  {
    v14 = [v12 objectForKey:ML3EntityPropertyKeepLocal];
    v15 = [v14 integerValue];

    if (v15 != -1)
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
    }

    v16 = [*(a1 + 48) valueForProperty:ML3ContainerPropertyDistinguishedKind];
    if ([v16 intValue] == 71)
    {
      v17 = [v12 objectForKey:ML3TrackPropertyIsPlayable];
      v18 = [v17 BOOLValue];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v12 objectForKey:ML3TrackPropertyIsInMyLibrary];
    v20 = [v19 BOOLValue];

    v21 = [v12 objectForKey:ML3TrackPropertyIsInTheCloud];
    v22 = [v21 integerValue];

    if (v22 == &dword_0 + 1)
    {
      v23 = v13;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1 && ((v20 | v18) & 1) != 0)
    {
      goto LABEL_19;
    }
  }

  else if (v13)
  {
LABEL_19:
    *(*(*(a1 + 80) + 8) + 24) = 1;
    ++*(*(*(a1 + 96) + 8) + 24);
    [*(a1 + 56) _addTrackWithPersistentId:a2 andProperties:v12 withKeepLocalValue:*(a1 + 112) toResult:*(a1 + 64)];
  }

LABEL_20:

  objc_autoreleasePoolPop(context);
}

void sub_6B384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6B3A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6B3C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 56) == a2)
  {
    v10 = +[MLSyncKeepLocalEventHandler _trackPropertiesToFetch];
    v8 = [ML3Track newWithPersistentID:a2 inLibrary:*(a1 + 32)];
    v9 = [v8 getValuesForProperties:v10];
    [*(a1 + 40) _addTrackWithPersistentId:a2 andProperties:v9 withKeepLocalValue:1 toResult:*(*(*(a1 + 48) + 8) + 40)];
    *a4 = 1;
  }
}

void sub_6B9A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

uint64_t sub_6BA08(uint64_t a1, void *a2)
{
  v7 = ML3EntityPropertyKeepLocal;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [*(a1 + 32) allObjects];
  [ML3Track setValues:&off_A1578 forProperties:v4 forEntityPersistentIDs:v5 inLibrary:*(a1 + 40) usingConnection:v3];

  return 1;
}

void sub_6BAEC(uint64_t a1, void *a2)
{
  v3 = [a2 longLongValue];
  v5 = [ML3Track newWithPersistentID:v3 inLibrary:*(a1 + 32)];
  v4 = [v5 getValuesForProperties:*(a1 + 40)];
  [*(a1 + 48) _addTrackWithPersistentId:v3 andProperties:v4 withKeepLocalValue:1 toResult:*(*(*(a1 + 56) + 8) + 40)];
}

void sub_6C940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 32) count]);
  if ([*(a1 + 32) count])
  {
    v8 = 0;
    do
    {
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v8];
      [v7 setObject:*(a3 + 8 * v8) forKeyedSubscript:v9];

      ++v8;
    }

    while (v8 < [*(a1 + 32) count]);
  }

  v10 = [v7 objectForKey:ML3EntityPropertyKeepLocal];
  v11 = [v10 integerValue];

  [*(a1 + 40) _addTrackWithPersistentId:a2 andProperties:v7 withKeepLocalValue:v11 toResult:*(*(*(a1 + 48) + 8) + 40)];

  objc_autoreleasePoolPop(v6);
}

void sub_6CA54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

id sub_6CAB4(uint64_t a1, void *a2)
{
  v7[0] = ML3EntityPropertyKeepLocalStatus;
  v7[1] = ML3EntityPropertyKeepLocalStatusReason;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [ML3Track setValues:&off_A14E8 forProperties:v4 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(a1 + 40) usingConnection:v3];

  return v5;
}

void sub_6CB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 32) count]);
  v8 = [*(a1 + 64) newWithPersistentID:a2 inLibrary:*(a1 + 40)];
  if ([*(a1 + 32) count])
  {
    v9 = 0;
    do
    {
      v10 = [*(a1 + 32) objectAtIndexedSubscript:v9];
      [v7 setObject:*(a3 + 8 * v9) forKeyedSubscript:v10];

      ++v9;
    }

    while (v9 < [*(a1 + 32) count]);
  }

  [*(a1 + 48) setObject:v7 forKeyedSubscript:v8];
  [*(a1 + 56) addObject:v8];

  objc_autoreleasePoolPop(v6);
}

void sub_6CC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeQuery:@"SELECT DISTINCT(album_pid) FROM album WHERE album.keep_local=? AND album.keep_local_status!=? AND NOT EXISTS (SELECT 1 FROM item WHERE item.album_pid = album.album_pid AND base_location_id < ?)" withParameters:&off_A1500];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6D3E0;
  v8[3] = &unk_9F298;
  v9 = *(a1 + 32);
  [v4 enumerateRowsWithBlock:v8];
  v5 = [v3 executeQuery:@"SELECT DISTINCT(album_pid) FROM album WHERE album.keep_local=? AND album.keep_local_status=? AND EXISTS (SELECT 1 FROM item WHERE item.album_pid = album.album_pid AND base_location_id < ?)" withParameters:&off_A1518];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6D478;
  v6[3] = &unk_9F298;
  v7 = *(a1 + 40);
  [v5 enumerateRowsWithBlock:v6];
}

uint64_t sub_6CDD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking albums as complete because all tracks are downloaded locally: %{public}@", buf, 0x16u);
    }

    v14 = ML3EntityPropertyKeepLocalStatus;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    [ML3Album setValues:&off_A1530 forProperties:v7 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(a1 + 48) usingConnection:v3];
  }

  if ([*(a1 + 56) count])
  {
    v8 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      *buf = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking albums as incomplete because some tracks are missing local assets: %{public}@", buf, 0x16u);
    }

    v13[0] = ML3EntityPropertyKeepLocalStatus;
    v13[1] = ML3EntityPropertyKeepLocalStatusReason;
    v11 = [NSArray arrayWithObjects:v13 count:2];
    [ML3Album setValues:&off_A1548 forProperties:v11 forEntityPersistentIDs:*(a1 + 56) inLibrary:*(a1 + 48) usingConnection:v3];
  }

  return 1;
}

void sub_6CFD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

id sub_6D034(uint64_t a1, void *a2)
{
  v7[0] = ML3EntityPropertyKeepLocalStatus;
  v7[1] = ML3EntityPropertyKeepLocalStatusReason;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [ML3Track setValues:&off_A1560 forProperties:v4 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(a1 + 40) usingConnection:v3];

  return v5;
}

id sub_6D108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ML3EntityPropertyKeepLocal;
  v5 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0F88 comparison:3];
  v6 = [ML3Track unrestrictedAllItemsQueryWithlibrary:*(a1 + 32) predicate:v5 orderingTerms:0];
  v7 = [v6 hasEntities];

  v8 = [ML3Container queryWithLibrary:*(a1 + 32) predicate:v5];
  v9 = [v8 hasEntities];

  v10 = [ML3Album queryWithLibrary:*(a1 + 32) predicate:v5];
  v11 = [v10 hasEntities];

  if ((v7 & 1) == 0 && (v9 & 1) == 0 && (v11 & 1) == 0)
  {
    v12 = [ML3ComparisonPredicate predicateWithProperty:v4 value:&off_A0F88 comparison:5];
    v13 = [ML3Track unrestrictedAllItemsQueryWithlibrary:*(a1 + 32) predicate:v12 orderingTerms:0];
    v14 = [v13 hasEntities];

    v15 = _ATLogCategorySyncBundle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = *(a1 + 40);
        v23 = 138543362;
        v24 = v17;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Clearing keep-local on disabled tracks as there are no more pinned entities", &v23, 0xCu);
      }

      if ([v3 executeUpdate:{@"UPDATE item SET keep_local=0, keep_local_status=0, keep_local_status_reason=0"}])
      {
        v14 = &dword_0 + 1;
        goto LABEL_18;
      }

      v15 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        v23 = 138543362;
        v24 = v21;
        v20 = "%{public}@ Failed to clear keep-local disabled tracks - will try again later";
        goto LABEL_16;
      }
    }

    else if (v16)
    {
      v19 = *(a1 + 40);
      v23 = 138543362;
      v24 = v19;
      v20 = "%{public}@ Skipping keep-local reset as there were no tracks to clear";
LABEL_16:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v20, &v23, 0xCu);
    }

    goto LABEL_18;
  }

  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    v23 = 138543362;
    v24 = v18;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping keep-local reset as we found pinned entities", &v23, 0xCu);
  }

  v14 = 0;
LABEL_18:

  return v14;
}

void sub_6D3E0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v7 = *(a1 + 32);
    v8 = [v9 numberForColumnIndex:0];
    [v7 addObject:v8];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_6D478(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = *(a1 + 32);
    v5 = [a2 numberForColumnIndex:?];
    [v4 addObject:v5];
  }
}

void sub_6D6F0(uint64_t a1)
{
  v2 = [*(a1 + 32) keepLocalEnabledPredicate];
  v3 = [*(a1 + 32) hasDownloadingStatusPredicate];
  v9[1] = v3;
  v4 = [*(a1 + 32) isDownloadablePredicate];
  v5 = [ML3NegationPredicate predicateWithPredicate:v4];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [ML3AllCompoundPredicate predicateMatchingPredicates:v6];
  v8 = qword_A7858;
  qword_A7858 = v7;
}

void sub_6D858(id a1)
{
  qword_A7848 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocalStatus value:&off_A0FE8 comparison:1];

  _objc_release_x1();
}

void sub_6D904(id a1)
{
  qword_A7838 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsStoreRedownloadable value:&off_A0FE8 comparison:1];

  _objc_release_x1();
}

void sub_6D9FC(uint64_t a1)
{
  v2 = [*(a1 + 32) keepLocalCancelledPredicate];
  v3 = [*(a1 + 32) keepLocalDisabledPredicate];
  v11[0] = v2;
  v11[1] = v3;
  v4 = [NSArray arrayWithObjects:v11 count:2];
  v5 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v4];

  v10[0] = v5;
  v6 = [*(a1 + 32) hasPendingDownloadPredicate];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [ML3AllCompoundPredicate predicateMatchingPredicates:v7];
  v9 = qword_A7828;
  qword_A7828 = v8;
}

void sub_6DBCC(uint64_t a1)
{
  v2 = [*(a1 + 32) keepLocalDisabledPredicate];
  v3 = [*(a1 + 32) hasTrackDataOrPendingDownloadPredicate];
  v8[1] = v3;
  v4 = [*(a1 + 32) isDownloadablePredicate];
  v8[2] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:3];
  v6 = [ML3AllCompoundPredicate predicateMatchingPredicates:v5];
  v7 = qword_A7818;
  qword_A7818 = v6;
}

void sub_6DD60(uint64_t a1)
{
  v2 = [*(a1 + 32) hasTrackDataPredicate];
  v7[0] = v2;
  v3 = [*(a1 + 32) hasPendingDownloadPredicate];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v4];
  v6 = qword_A7808;
  qword_A7808 = v5;
}

void sub_6DE88(id a1)
{
  v1 = ML3EntityPropertyKeepLocalStatus;
  v2 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocalStatus value:&off_A0FE8 comparison:1];
  v3 = [ML3ComparisonPredicate predicateWithProperty:v1 value:&off_A1048 comparison:1, v2];
  v8[1] = v3;
  v4 = [ML3ComparisonPredicate predicateWithProperty:v1 value:&off_A1060 comparison:1];
  v8[2] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:3];
  v6 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v5];
  v7 = qword_A77F8;
  qword_A77F8 = v6;
}

void sub_6E150(uint64_t a1)
{
  v2 = [*(a1 + 32) keepLocalEnabledPredicate];
  v7[0] = v2;
  v3 = [*(a1 + 32) missingTrackDataPredicate];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [ML3AllCompoundPredicate predicateMatchingPredicates:v4];
  v6 = qword_A77E8;
  qword_A77E8 = v5;
}

void sub_6E278(id a1)
{
  qword_A77D8 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A1030 comparison:1];

  _objc_release_x1();
}

void sub_6E370(uint64_t a1)
{
  v1 = [*(a1 + 32) hasTrackDataPredicate];
  v2 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0FE8 comparison:2, v1];
  v7[1] = v2;
  v3 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType equalToInt64:8];
  v7[2] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:3];
  v5 = [ML3AllCompoundPredicate predicateMatchingPredicates:v4];
  v6 = qword_A77C8;
  qword_A77C8 = v5;
}

void sub_6E4E0(id a1)
{
  qword_A77B8 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0F88 comparison:6];

  _objc_release_x1();
}

void sub_6E58C(id a1)
{
  qword_A77A8 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A1018 comparison:1];

  _objc_release_x1();
}

void sub_6E638(id a1)
{
  qword_A7798 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0F88 comparison:4];

  _objc_release_x1();
}

void sub_6E6E4(id a1)
{
  qword_A7788 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0F88 comparison:3];

  _objc_release_x1();
}

void sub_6E790(id a1)
{
  qword_A7778 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHasNonPurgeableAsset value:&off_A0FE8 comparison:1];

  _objc_release_x1();
}

void sub_6E83C(id a1)
{
  qword_A7768 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsInTheCloud value:&off_A0FE8 comparison:1];

  _objc_release_x1();
}

void sub_6E968(id a1)
{
  v3[0] = ML3EntityPropertyKeepLocalStatus;
  v3[1] = ML3EntityPropertyKeepLocal;
  v3[2] = ML3EntityPropertyKeepLocalConstraints;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_A7748;
  qword_A7748 = v1;
}

void sub_6EA58(id a1)
{
  v3[0] = ML3EntityPropertyKeepLocal;
  v3[1] = ML3TrackPropertyIsInTheCloud;
  v3[2] = ML3TrackPropertyMediaType;
  v3[3] = ML3TrackPropertyIsInMyLibrary;
  v3[4] = ML3TrackPropertyNeedsRestore;
  v3[5] = ML3TrackPropertyPodcastExternalGUID;
  v3[6] = ML3TrackPropertyStoreAccountID;
  v3[7] = ML3TrackPropertyStoreItemID;
  v3[8] = ML3TrackPropertyStoreFlavor;
  v3[9] = ML3TrackPropertyStoreMatchedStatus;
  v3[10] = ML3TrackPropertyStoreRedownloadedStatus;
  v3[11] = ML3TrackPropertyStoreSagaID;
  v3[12] = ML3TrackPropertySyncID;
  v3[13] = ML3TrackPropertyIsRental;
  v3[14] = ML3TrackPropertyTitle;
  v3[15] = ML3TrackPropertyTotalSize;
  v3[16] = ML3TrackPropertyStoreCloudAssetAvailable;
  v3[17] = ML3TrackPropertySubscriptionStoreItemID;
  v3[18] = ML3EntityPropertyKeepLocalStatus;
  v3[19] = ML3TrackPropertyStoreRedownloadParameters;
  v3[20] = ML3TrackPropertyStorePlaybackEndpointType;
  v3[21] = ML3TrackPropertyIsMusicShow;
  v3[22] = ML3TrackPropertyTotalTime;
  v3[23] = ML3EntityPropertyKeepLocalConstraints;
  v3[24] = ML3TrackPropertyPurchaseHistoryRedownloadParameters;
  v3[25] = ML3EntityPropertyKeepLocalStatusReason;
  v3[26] = ML3TrackPropertyIsPlayable;
  v3[27] = ML3TrackPropertyIsStoreRedownloadable;
  v1 = [NSArray arrayWithObjects:v3 count:28];
  v2 = qword_A7738;
  qword_A7738 = v1;
}

BOOL sub_6EC58(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if (![v2 isEqualToString:@"ATError"] || objc_msgSend(v1, "code") == &dword_4 + 3 || objc_msgSend(v1, "code") == &dword_8 || objc_msgSend(v1, "code") == &dword_C + 2 || objc_msgSend(v1, "code") == &dword_10 || objc_msgSend(v1, "code") == &dword_8 + 1 || objc_msgSend(v1, "code") == &dword_10 + 2 || objc_msgSend(v1, "code") == &dword_4 || objc_msgSend(v1, "code") == &dword_10 + 3 || objc_msgSend(v1, "code") == &dword_14 || objc_msgSend(v1, "code") == &dword_18 + 1 || objc_msgSend(v1, "code") == &dword_18 + 3 || objc_msgSend(v1, "code") == &dword_18 || objc_msgSend(v1, "code") == &dword_1C + 3 || objc_msgSend(v1, "code") == &stru_20 || objc_msgSend(v1, "code") == &stru_20.cmd + 1 || objc_msgSend(v1, "code") == &stru_20.cmd + 2 || objc_msgSend(v1, "code") == &stru_20.cmd + 3)
  {
    v3 = [v1 domain];
    if ([v3 isEqualToString:@"AVFoundationErrorDomain"])
    {
      v4 = 0;
    }

    else
    {
      v5 = [v1 domain];
      if ([v5 isEqualToString:NSURLErrorDomain])
      {
        v4 = [v1 code] != -1100;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_6EE38(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (sub_6EC58(v9))
  {
    v11 = _ATLogCategoryAssetUtils();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v40 = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Asset (%{public}@) failed to %{public}@ (%{public}@); error recoverable, keeping track", buf, 0x20u);
    }

LABEL_4:

    goto LABEL_24;
  }

  v12 = [v7 variantOptions];
  v13 = [v12 objectForKey:@"AssetParts"];
  v14 = [v13 unsignedIntegerValue];

  if ((v14 & 1) == 0)
  {
    v11 = _ATLogCategoryAssetUtils();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v40 = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Asset (%{public}@) failed to %{public}@ (%{public}@); error non-recoverable, but no file part, keeping track", buf, 0x20u);
    }

    goto LABEL_4;
  }

  v15 = [v7 identifier];
  v16 = [v15 longLongValue];

  v17 = [v7 storeInfo];
  v18 = [v17 syncID];
  v19 = [v18 longLongValue];

  if (!v19 || ([ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertySyncID equalToInt64:v19], v20 = objc_claimAutoreleasedReturnValue(), [ML3Track anyInLibrary:v8 predicate:v20 options:3], v21 = objc_claimAutoreleasedReturnValue(), v20, !v21))
  {
    if (![v7 isRestore])
    {
      goto LABEL_24;
    }

    v21 = [ML3Track newWithPersistentID:v16 inLibrary:v8];
    if (([v21 existsInLibrary] & 1) == 0)
    {

      goto LABEL_24;
    }

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  if ([v7 isRestore])
  {
    [v21 setValue:&__kCFBooleanFalse forProperty:ML3TrackPropertyNeedsRestore];
  }

  v22 = v8;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_6F340;
  v33 = sub_6F350;
  v34 = 0;
  v23 = dispatch_semaphore_create(0);
  v24 = [NSNumber numberWithLongLong:v16];
  v44 = v24;
  v25 = [NSArray arrayWithObjects:&v44 count:1];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_6F358;
  v40 = &unk_9F308;
  v42 = v35;
  v43 = &v29;
  v26 = v23;
  v41 = v26;
  [v22 removeTracksWithPersistentIDs:v25 fromSource:3 withCompletionHandler:buf];

  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  if (v30[5])
  {
    v27 = _ATLogCategoryAssetUtils();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [v30[5] msv_description];
      *v37 = 138543362;
      v38 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "RemoveTrackWithPersistenId finished. error=%{public}@", v37, 0xCu);
    }
  }

  else
  {
    v27 = _ATLogCategoryAssetUtils();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "RemoveTrackWithPersistenId finished.", v37, 2u);
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

LABEL_24:
}

void sub_6F308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6F340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6F358(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

const __CFString *sub_6F3C8(__int16 a1)
{
  if ((a1 & 0x20) != 0)
  {
    return @"iTunesU";
  }

  v1 = @"Audiobook";
  v2 = @"Movie";
  v3 = @"HomeVideo";
  v4 = @"MusicVideo";
  v5 = @"Podcast";
  v6 = @"TVEpisode";
  v7 = @"VideoPodcast";
  if ((a1 & 0x100) == 0)
  {
    v7 = @"Music";
  }

  if ((a1 & 0x200) == 0)
  {
    v6 = v7;
  }

  if ((a1 & 4) == 0)
  {
    v5 = v6;
  }

  if ((a1 & 0x400) == 0)
  {
    v4 = v5;
  }

  if ((a1 & 0x2000) == 0)
  {
    v3 = v4;
  }

  if ((a1 & 0x800) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 2) == 0)
  {
    v1 = v2;
  }

  if ((a1 & 0x1000) != 0)
  {
    return @"iTunesUVideo";
  }

  else
  {
    return v1;
  }
}

id sub_6F464(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = 0;
  if (v5 && a2)
  {
    if (![v5 count])
    {
      v7 = 0;
      goto LABEL_35;
    }

    v43 = v6;
    v46 = [NSString stringWithFormat:@"%lld", a2];
    v7 = [[ATAsset alloc] initWithIdentifier:v46 dataclass:@"Media" prettyName:0];
    v8 = [NSNumber numberWithUnsignedInteger:1];
    v9 = [NSDictionary dictionaryWithObject:v8 forKey:@"AssetParts"];
    [v7 setVariantOptions:v9];

    v53 = [v5 objectForKey:ML3TrackPropertyStoreSagaID];
    v55 = [v5 objectForKey:ML3TrackPropertyStoreMatchedStatus];
    v54 = [v5 objectForKey:ML3TrackPropertyStoreRedownloadedStatus];
    v10 = [v5 objectForKey:ML3TrackPropertyTotalSize];
    v11 = [v5 objectForKey:ML3TrackPropertyMediaType];
    v51 = [v5 objectForKey:ML3TrackPropertyStoreAccountID];
    v12 = ML3TrackPropertySubscriptionStoreItemID;
    v56 = [v5 objectForKey:ML3TrackPropertySubscriptionStoreItemID];
    v58 = [v5 objectForKey:ML3TrackPropertyStoreRedownloadParameters];
    v47 = [v5 objectForKey:ML3TrackPropertyPurchaseHistoryRedownloadParameters];
    v13 = [v5 objectForKey:ML3TrackPropertyStorePlaybackEndpointType];
    if ([v13 integerValue] == &dword_0 + 3)
    {
      v14 = v12;
    }

    else
    {
      v14 = ML3TrackPropertyStoreItemID;
    }

    v48 = [v5 objectForKey:v14];
    v52 = [v5 objectForKey:ML3TrackPropertyPodcastExternalGUID];
    v57 = [v5 objectForKey:ML3TrackPropertyStoreFlavor];
    v15 = [v5 objectForKey:ML3TrackPropertyTitle];
    v16 = [v5 objectForKey:ML3TrackPropertyNeedsRestore];
    v17 = [v16 BOOLValue];

    v18 = [v5 objectForKey:ML3TrackPropertyIsRental];
    [v18 BOOLValue];

    v50 = [v5 objectForKey:ML3TrackPropertySyncID];
    v19 = +[ML3MusicLibrary autoupdatingSharedLibrary];
    v20 = [v19 valueForDatabaseProperty:@"MLCloudAccountID"];
    v21 = v10;
    v49 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 longLongValue]);

    v22 = [v5 objectForKey:ML3TrackPropertyDownloadSourceContainerPid];
    [v7 setIsRestore:v17];
    v45 = v15;
    [v7 setPrettyName:v15];
    v23 = sub_6F3C8([v11 unsignedIntegerValue]);
    [v7 setAssetType:v23];

    if ([v21 longLongValue])
    {
      v24 = [v21 longLongValue];
      v25 = v51;
      v26 = v48;
      v27 = v13;
    }

    else
    {
      v28 = [v5 objectForKey:ML3TrackPropertyTotalTime];
      [v28 doubleValue];
      v30 = v29;

      v25 = v51;
      v26 = v48;
      v27 = v13;
      if (([v11 unsignedIntegerValue] & 4) == 0)
      {
        v6 = v43;
        if (v30 <= 0.0)
        {
          v24 = 7340032;
        }

        else
        {
          v24 = (v30 * 35.8260224);
        }

LABEL_15:
        [v7 setTotalBytes:v24];
        [v7 setDownloadSourceContainerId:v22];
        if (![v25 longLongValue] && !objc_msgSend(v26, "longLongValue") && !objc_msgSend(v57, "length") && objc_msgSend(v56, "longLongValue") <= 0 && objc_msgSend(v55, "longLongValue") <= 0 && objc_msgSend(v54, "longLongValue") <= 0 && objc_msgSend(v53, "longLongValue") <= 0 && !objc_msgSend(v52, "length"))
        {
          goto LABEL_34;
        }

        v44 = v22;
        v31 = v11;
        v32 = v21;
        v33 = objc_alloc_init(ATStoreInfo);
        [v7 setStoreInfo:v33];
        [v33 setDSID:v25];
        [v33 setCloudDSID:v49];
        [v33 setSagaID:v53];
        [v33 setAdamID:v26];
        v34 = [v6 accountCacheDatabase];
        v35 = [v34 appleIDForDSID:{objc_msgSend(v25, "longLongValue")}];
        [v33 setAppleID:v35];

        [v33 setMatchStatus:v55];
        [v33 setRedownloadStatus:v54];
        [v33 setFlavor:v57];
        [v33 setPodcastEpisodeGUID:v52];
        [v33 setRedownloadParams:v58];
        [v33 setEndpointType:v27];
        [v33 setSubscriptionID:v56];
        if (v50)
        {
          v36 = [v50 stringValue];
          [v33 setSyncID:v36];
        }

        v25 = v51;
        if (![v27 isEqualToNumber:&off_A1078])
        {
LABEL_33:

          v21 = v32;
          v11 = v31;
          v22 = v44;
LABEL_34:

          goto LABEL_35;
        }

        if (v47)
        {
          [v33 setRedownloadParams:v47];
          v37 = _ATLogCategoryAssetUtils();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v60 = v58;
            v61 = 2114;
            v62 = v47;
            v63 = 2114;
            v64 = v7;
            v38 = "Updating redownload params from %{public}@ to %{public}@ for %{public}@";
            v39 = v37;
            v40 = OS_LOG_TYPE_DEFAULT;
            v41 = 32;
LABEL_31:
            _os_log_impl(&dword_0, v39, v40, v38, buf, v41);
          }
        }

        else
        {
          v37 = _ATLogCategoryAssetUtils();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v60 = v7;
            v61 = 1024;
            LODWORD(v62) = 1;
            v38 = "asset=%{public}@ has endpoint=%d with no matching redownload params";
            v39 = v37;
            v40 = OS_LOG_TYPE_ERROR;
            v41 = 18;
            goto LABEL_31;
          }
        }

        v26 = v48;

        goto LABEL_33;
      }

      v24 = 52428800;
    }

    v6 = v43;
    goto LABEL_15;
  }

LABEL_35:

  return v7;
}

void sub_6FC1C(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 variantOptions];
  v8 = [v7 objectForKey:@"AssetParts"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v5 error];
  v11 = [v5 identifier];
  v12 = [v11 longLongValue];

  if (a3)
  {
    v13 = +[NSFileManager defaultManager];
    v113 = +[ATAirlock sharedInstance];
    v14 = _ATLogCategoryAssetUtils();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v5 path];
      *buf = 138543362;
      v131 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "processing asset with path %{public}@", buf, 0xCu);
    }

    v114 = v6;

    v16 = [v5 path];
    v115 = v13;
    v112 = v10;
    if (([v13 fileExistsAtPath:v16]& 1) != 0)
    {
      v17 = [v5 path];
      v18 = [v113 pathForDataclass:@"Media"];
      v19 = [v17 hasPrefix:v18];

      if (v19)
      {
        v20 = [v5 identifier];
        v21 = [v20 longLongValue] % 50;

        v22 = [v5 path];
        v23 = [v22 lastPathComponent];

        v24 = [NSString stringWithFormat:@"F%02d", v21];
        v25 = [ML3MusicLibrary pathForResourceFileOrFolder:11];
        v136[0] = v25;
        v136[1] = v24;
        v26 = [NSArray arrayWithObjects:v136 count:2];
        v27 = [NSString pathWithComponents:v26];

        v28 = [v27 stringByAppendingPathComponent:v23];
        v126 = 0;
        LOBYTE(v25) = [v13 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v126];
        v29 = v126;
        if ((v25 & 1) == 0)
        {
          v33 = _ATLogCategoryAssetUtils();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v131 = v27;
            v132 = 2114;
            v133 = v29;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "failed to create asset dir %{public}@. error=%{public}@", buf, 0x16u);
          }

          goto LABEL_110;
        }

        [v13 removeItemAtPath:v28 error:0];
        v30 = [v5 path];
        v125 = v29;
        v31 = [v13 moveItemAtPath:v30 toPath:v28 error:&v125];
        v110 = v125;

        v32 = _ATLogCategoryAssetUtils();
        v33 = v32;
        if ((v31 & 1) == 0)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v131 = v5;
            v132 = 2114;
            v133 = v28;
            v134 = 2114;
            v29 = v110;
            v135 = v110;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "failed to move asset %{public}@ to %{public}@. error=%{public}@", buf, 0x20u);
          }

          else
          {
            v29 = v110;
          }

          v13 = v115;
          goto LABEL_110;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v131 = v28;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Moved completed asset to %{public}@", buf, 0xCu);
        }

        [v5 setPath:v28];
        goto LABEL_31;
      }
    }

    else
    {
    }

    v40 = [v5 path];
    if (!v40 || (v41 = v40, [v5 path], v42 = objc_claimAutoreleasedReturnValue(), v43 = -[NSObject fileExistsAtPath:](v13, "fileExistsAtPath:", v42), v42, v41, (v43 & 1) != 0))
    {
LABEL_32:
      v47 = [v5 assetType];
      v48 = [v47 isEqualToString:@"Playlist"];

      v23 = +[NSMutableDictionary dictionary];
      v24 = +[NSMutableDictionary dictionary];
      v49 = [NSNumber numberWithLongLong:v12];
      [v23 setObject:v49 forKey:MLDatabaseOperationAttributeDownloadedAssetPersistentIdKey];

      v50 = [NSNumber numberWithInteger:v48];
      [v23 setObject:v50 forKey:MLDatabaseOperationAttributeDownloadedAssetEntityTypeKey];

      if (v9)
      {
        if (qword_A7878 != -1)
        {
          dispatch_once(&qword_A7878, &stru_9F1F8);
        }

        v59 = [v5 clientParams];
        v123[0] = _NSConcreteStackBlock;
        v123[1] = 3221225472;
        v123[2] = sub_70E6C;
        v123[3] = &unk_9F220;
        v60 = v24;
        v124 = v60;
        [v59 enumerateKeysAndObjectsUsingBlock:v123];
        v61 = [v5 path];

        if (v61)
        {
          v62 = [v5 path];
          [v23 setObject:v62 forKey:MLDatabaseOperationAttributeDownloadedAssetTrackPathKey];
        }

        v63 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 protectionType]);
        [v23 setObject:v63 forKey:MLDatabaseOperationAttributeDownloadedAssetProtectionTypeKey];

        v64 = [v5 downloadSourceContainerId];
        v65 = [v64 longLongValue];

        if (v65)
        {
          v66 = [v5 downloadSourceContainerId];
          [v23 setObject:v66 forKey:MLDatabaseOperationAttributeDownloadSourceContainerIDKey];
        }

        if ([v5 protectionType] != 2)
        {
          v67 = [v5 storeInfo];
          v68 = [v67 storeMediaResponseItem];

          if (v68)
          {
            [v60 setObject:&__kCFBooleanTrue forKey:ML3TrackPropertyIsOTAPurchased];
          }
        }

        if ((v9 & 2) == 0)
        {
LABEL_34:
          if ((v9 & 4) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      else if ((v9 & 2) == 0)
      {
        goto LABEL_34;
      }

      v69 = +[ATAirlock sharedInstance];
      v70 = [v5 storeInfo];
      v71 = [v70 syncID];
      v72 = [v69 artworkPathForDataclass:@"Media" artworkIdentifier:v71];

      [v23 setObject:v72 forKey:MLDatabaseOperationAttributeDownloadedAssetArtworkPathKey];
      if ((v9 & 4) == 0)
      {
LABEL_36:
        v13 = v115;
        if ((v9 & 8) == 0)
        {
          goto LABEL_61;
        }

        if ([v5 lyricsEmbeddedInAsset])
        {
          v55 = [v5 path];

          if (!v55)
          {
            goto LABEL_61;
          }

          v56 = [v5 path];
          [v23 setObject:v56 forKey:MLDatabaseOperationAttributeDownloadedAssetTrackPathKey];

          v57 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 protectionType]);
          v58 = &MLDatabaseOperationAttributeDownloadedAssetProtectionTypeKey;
        }

        else
        {
          v80 = +[ATAirlock sharedInstance];
          v81 = [v5 storeInfo];
          v82 = [v81 syncID];
          v57 = [v80 lyricsPathForDataclass:@"Media" lyricsIdentifier:v82];

          v13 = v115;
          v58 = &MLDatabaseOperationAttributeDownloadedAssetLyricsPathKey;
        }

        [v23 setObject:v57 forKey:*v58];

LABEL_61:
        [v23 setObject:v24 forKey:MLDatabaseOperationAttributeDownloadedAssetTrackPropertiesKey];
        v127 = v23;
        v128[0] = MLDatabaseOperationAttributeDownloadedAssetsListKey;
        v83 = [NSArray arrayWithObjects:&v127 count:1];
        v129[0] = v83;
        v128[1] = MLDatabaseOperationAttributeTrackSourceKey;
        v84 = [NSNumber numberWithInt:3];
        v129[1] = v84;
        v27 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:2];

        sub_70EE4(v27, v114);
        if ((v9 & 2) != 0)
        {
          v85 = +[ATAirlock sharedInstance];
          v86 = [v5 storeInfo];
          v87 = [v86 syncID];
          v88 = [v85 artworkPathForDataclass:@"Media" artworkIdentifier:v87];

          v13 = v115;
          unlink([v88 fileSystemRepresentation]);

          if ((v9 & 8) == 0)
          {
LABEL_63:
            if ((v9 & 1) == 0)
            {
              goto LABEL_112;
            }

LABEL_67:
            v93 = [v5 storeInfo];
            v94 = [v93 DSID];
            v95 = [v94 unsignedLongLongValue];

            if (v95)
            {
              v96 = +[ML3MusicLibrary autoupdatingSharedLibrary];
              v28 = [v96 accountCacheDatabase];

              v97 = [v28 appleIDForDSID:v95];
              if (v97)
              {
                v29 = v97;
LABEL_111:

                goto LABEL_112;
              }

              v111 = v24;
              v99 = +[ICUserIdentityStore defaultIdentityStore];
              v100 = [NSNumber numberWithUnsignedLongLong:v95];
              v101 = [ICUserIdentity specificAccountWithDSID:v100];
              v122 = 0;
              v33 = [v99 getPropertiesForUserIdentity:v101 error:&v122];
              v102 = v122;

              if (v102 || !v33)
              {
                v103 = _ATLogCategoryAssetUtils();
                if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v131 = v95;
                  v132 = 2114;
                  v133 = v112;
                  _os_log_impl(&dword_0, v103, OS_LOG_TYPE_ERROR, "Failed to get account properties for DSID %lld. err=%{public}@", buf, 0x16u);
                }
              }

              else
              {
                v103 = [v33 username];
                if (v103)
                {
                  v104 = [v33 alternateDSID];
                  v105 = [v28 setAppleID:v103 altDSID:v104 forDSID:v95];

                  if ((v105 & 1) == 0)
                  {
                    v106 = _ATLogCategoryAssetUtils();
                    v13 = v115;
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v131 = v95;
                      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_ERROR, "Failed to cache account properties for DSID %lld", buf, 0xCu);
                    }

                    goto LABEL_96;
                  }
                }
              }

              v13 = v115;
LABEL_96:

              v29 = 0;
              v24 = v111;
LABEL_110:

              goto LABEL_111;
            }

LABEL_112:

            v6 = v114;
            v10 = v112;
LABEL_113:

            goto LABEL_114;
          }
        }

        else if ((v9 & 8) == 0)
        {
          goto LABEL_63;
        }

        v89 = +[ATAirlock sharedInstance];
        v90 = [v5 storeInfo];
        v91 = [v90 syncID];
        v92 = [v89 lyricsPathForDataclass:@"Media" lyricsIdentifier:v91];

        v13 = v115;
        unlink([v92 fileSystemRepresentation]);

        if ((v9 & 1) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_67;
      }

LABEL_35:
      v51 = +[ATAirlock sharedInstance];
      v52 = [v5 storeInfo];
      v53 = [v52 syncID];
      v54 = [v51 geniusPathForDataclass:@"Media" geniusIdentifier:v53];

      [v23 setObject:v54 forKey:MLDatabaseOperationAttributeDownloadedAssetGeniusDataPathKey];
      goto LABEL_36;
    }

    [v113 processCompletedAsset:v5];
    v44 = [v5 path];
    v45 = _ATLogCategoryAssetUtils();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = +[ML3MusicLibrary mediaFolderPath];
      *buf = 138543618;
      v131 = v46;
      v132 = 2114;
      v133 = v44;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Prepending %{public}@ to %{public}@", buf, 0x16u);
    }

    v23 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:v44];

    [v5 setPath:v23];
LABEL_31:

    goto LABEL_32;
  }

  if ([v5 isDownload])
  {
    if (sub_6EC58(v10))
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_105;
      }

      v34 = _ATLogCategoryAssetUtils();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v131 = v5;
        v132 = 2114;
        v133 = v10;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Asset (%{public}@) failed to transfer (%{public}@); error recoverable, keeping track", buf, 0x16u);
      }

      if ([v5 isRetry])
      {
        v35 = 5;
      }

      else
      {
        v35 = 4;
      }

      v36 = [v10 domain];
      v37 = [v36 isEqualToString:@"ATError"];

      if (v37)
      {
        v38 = [v10 code];
        if (v38 > 32)
        {
          if (v38 == (&stru_20.cmd + 1))
          {
            v39 = 64;
            goto LABEL_102;
          }

          if (v38 == (&stru_20.cmd + 2))
          {
            v39 = 16;
            goto LABEL_102;
          }

          if (v38 == (&stru_20.cmd + 3))
          {
            v39 = 4;
            goto LABEL_102;
          }
        }

        else if (v38 != &dword_8)
        {
          if (v38 == (&dword_C + 2))
          {
            v39 = 1;
            goto LABEL_102;
          }

          if (v38 == (&dword_1C + 3))
          {
            v39 = 32;
LABEL_102:
            v108 = _ATLogCategoryAssetUtils();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v131 = v5;
              v132 = 2048;
              v133 = v35;
              v134 = 2048;
              v135 = v39;
              _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "Updating status of track (%{public}@); status=%lu, statusReason=%lu", buf, 0x20u);
            }

            v116[0] = _NSConcreteStackBlock;
            v116[1] = 3221225472;
            v116[2] = sub_7107C;
            v116[3] = &unk_9F270;
            v121 = v35;
            v119 = v39;
            v120 = v12;
            v117 = v5;
            v118 = v6;
            [v118 databaseConnectionAllowingWrites:1 withBlock:v116];

            goto LABEL_105;
          }
        }
      }

      v35 = 5;
      v39 = 8;
      goto LABEL_102;
    }

    v73 = [v5 storeInfo];
    v74 = [v73 syncID];
    v75 = [v74 longLongValue];

    v76 = [v5 storeInfo];
    v77 = [v76 adamID];
    v78 = [v77 longLongValue];

    if (v75 && !v78)
    {
      if (!v9 || (v9 & 1) != 0)
      {
        sub_6EE38(v5, v6, v10, @"transfer");
        goto LABEL_105;
      }

      if (![v5 isRestore])
      {
        goto LABEL_105;
      }

      v79 = _ATLogCategoryAssetUtils();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v131 = v5;
        _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "Could not get artwork/genius data, but keeping asset track: %{public}@", buf, 0xCu);
      }

LABEL_76:

      goto LABEL_105;
    }

    if ([v5 isRestore] && (v9 & 1) != 0)
    {
      v98 = _ATLogCategoryAssetUtils();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v131 = v5;
        v132 = 2114;
        v133 = v10;
        _os_log_impl(&dword_0, v98, OS_LOG_TYPE_ERROR, "Asset restore failed unrecoverably - removing needs restore. asset=%{public}@, err=%{public}@", buf, 0x16u);
      }

      if ([ML3Track trackWithPersistentID:v12 existsInLibrary:v6])
      {
        v79 = [[ML3Track alloc] initWithPersistentID:v12 inLibrary:v6];
        [v79 setValue:&__kCFBooleanFalse forProperty:ML3TrackPropertyNeedsRestore];
        goto LABEL_76;
      }
    }

    else if (v9)
    {
      v107 = _ATLogCategoryAssetUtils();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v131 = v5;
        v132 = 2114;
        v133 = v10;
        _os_log_impl(&dword_0, v107, OS_LOG_TYPE_ERROR, "Asset download failed unrecoverably - marking as canceled. asset=%{public}@, err=%{public}@", buf, 0x16u);
      }

      sub_712B4(v12, v6);
    }

LABEL_105:
    v109 = [v5 path];

    if (!v109)
    {
      v13 = _ATLogCategoryAssetUtils();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v131 = v5;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Asset with no path: %{public}@", buf, 0xCu);
      }

      goto LABEL_113;
    }
  }

LABEL_114:
}

void sub_70E6C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([qword_A7880 containsObject:v6])
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

id sub_70EE4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 databasePath];
  v5 = [NSMutableDictionary dictionaryWithObject:v4 forKey:MLDatabaseOperationOptionDatabasePathKey];

  v6 = +[MLMediaLibraryService sharedMediaLibraryService];
  v13 = 0;
  v7 = [v6 performDatabaseOperation:7 withAttributes:v3 options:v5 error:&v13];

  v8 = v13;
  v9 = _ATLogCategoryAssetUtils();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 msv_description];
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Finished import of downloaded assets. error=%{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Finished import of downloaded assets.", buf, 2u);
  }

  return v7;
}

void sub_7107C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSNumber numberWithInt:*(a1 + 64)];
  v20[0] = v4;
  v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v20[1] = v5;
  v6 = [NSNumber numberWithLongLong:*(a1 + 56)];
  v20[2] = v6;
  v7 = [NSArray arrayWithObjects:v20 count:3];
  v15 = 0;
  v8 = [v3 executeUpdate:@"UPDATE item SET keep_local_status = ? withParameters:keep_local_status_reason = ? WHERE item_pid = ?" error:{v7, &v15}];
  v9 = v15;

  if (v8)
  {
    sub_714B8(v3, *(a1 + 40));
  }

  else
  {
    v10 = _ATLogCategoryAssetUtils();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) shortDescription];
      *buf = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "failed to update keep_local_status on failed asset %{public}@. err=%{public}@", buf, 0x16u);
    }
  }

  if ((byte_A7888 & 1) == 0)
  {
    byte_A7888 = 1;
    v12 = dispatch_time(0, 1000000000);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_71AB4;
    v13[3] = &unk_9F248;
    v14 = *(a1 + 40);
    dispatch_after(v12, &_dispatch_main_q, v13);
  }
}

void sub_712B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 checkoutWriterConnection];
  if (v4)
  {
    v5 = [NSNumber numberWithLongLong:a1];
    v23 = v5;
    v6 = [NSArray arrayWithObjects:&v23 count:1];
    v12 = 0;
    v7 = [v4 executeUpdate:@"update item set keep_local=-1 withParameters:keep_local_status=-1 where item_pid=?" error:{v6, &v12}];
    v8 = v12;

    v9 = _ATLogCategoryAssetUtils();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [v8 msv_description];
        *buf = 67110146;
        v14 = -1;
        v15 = 1024;
        v16 = -1;
        v17 = 2048;
        v18 = a1;
        v19 = 1024;
        v20 = v7;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Updated keep_local:%d, keep_lcoal_status:%d for track:%lld with status:%d error=%{public}@", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v14 = -1;
      v15 = 1024;
      v16 = -1;
      v17 = 2048;
      v18 = a1;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Updated keep_local:%d, keep_lcoal_status:%d for track:%lld with status:%d", buf, 0x1Eu);
    }

    [v3 checkInDatabaseConnection:v4];
  }
}

void sub_714B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _ATLogCategoryAssetUtils();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Updating containers' keep local status reason based on tracks' keep local status reason", buf, 2u);
  }

  *buf = 0;
  v53 = buf;
  v54 = 0x2020000000;
  v55 = 1;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v3 executeQuery:@"SELECT DISTINCT item.keep_local_status_reason withParameters:{container.container_pid FROM item JOIN container_item USING (item_pid) JOIN container USING (container_pid) WHERE (item.keep_local_status = ? AND container.keep_local > ? AND container.keep_local_status_reason != ?)", &off_A15D8}];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_71AD8;
  v50[3] = &unk_9F298;
  v8 = v6;
  v51 = v8;
  [v7 enumerateRowsWithBlock:v50];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_71B50;
  v46[3] = &unk_9F2C0;
  v49 = buf;
  v9 = v4;
  v47 = v9;
  v10 = v3;
  v48 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v46];
  v11 = _ATLogCategoryAssetUtils_Oversize();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 allKeys];
    *v56 = 138543362;
    v57 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Cleared keep local status reason for container pids=%{public}@", v56, 0xCu);
  }

  [v8 removeAllObjects];
  v13 = [v10 executeQuery:@"SELECT DISTINCT item.keep_local_status_reason withParameters:{container_pid FROM item JOIN container_item USING (item_pid) JOIN container USING (container_pid) WHERE (item.keep_local_status = ? OR item.keep_local_status = ?) AND container.keep_local > ? AND (container.keep_local_status_reason & item.keep_local_status_reason != item.keep_local_status_reason)", &off_A15F0}];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_71C94;
  v44[3] = &unk_9F298;
  v14 = v8;
  v45 = v14;
  [v13 enumerateRowsWithBlock:v44];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_71DB4;
  v40[3] = &unk_9F2C0;
  v43 = buf;
  v15 = v9;
  v41 = v15;
  v16 = v10;
  v42 = v16;
  [v14 enumerateKeysAndObjectsUsingBlock:v40];
  v17 = objc_alloc_init(NSMutableDictionary);
  v18 = [v16 executeQuery:@"SELECT item.keep_local_status_reason withParameters:{album_pid FROM item JOIN album USING (album_pid) WHERE (item.keep_local_status = ? AND album.keep_local > ? AND album.keep_local_status_reason != ?)", &off_A1608}];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_71EF8;
  v38[3] = &unk_9F298;
  v19 = v17;
  v39 = v19;
  [v18 enumerateRowsWithBlock:v38];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_71F70;
  v34[3] = &unk_9F2C0;
  v37 = buf;
  v20 = v15;
  v35 = v20;
  v21 = v16;
  v36 = v21;
  [v19 enumerateKeysAndObjectsUsingBlock:v34];
  v22 = _ATLogCategoryAssetUtils_Oversize();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v19 allKeys];
    *v56 = 138543362;
    v57 = v23;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Cleared keep local status reason for album pids=%{public}@", v56, 0xCu);
  }

  [v19 removeAllObjects];
  v24 = [v21 executeQuery:@"SELECT item.keep_local_status_reason withParameters:{album_pid FROM item JOIN album USING (album_pid) WHERE (item.keep_local_status = ? OR item.keep_local_status = ?) AND album.keep_local > ?", &off_A1620}];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_720B4;
  v32[3] = &unk_9F298;
  v25 = v19;
  v33 = v25;
  [v24 enumerateRowsWithBlock:v32];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_721D4;
  v28[3] = &unk_9F2C0;
  v31 = buf;
  v26 = v20;
  v29 = v26;
  v27 = v21;
  v30 = v27;
  [v25 enumerateKeysAndObjectsUsingBlock:v28];

  _Block_object_dispose(buf, 8);
}

id sub_71AB4(uint64_t a1)
{
  result = [*(a1 + 32) notifyNonContentsPropertyDidChange];
  byte_A7888 = 0;
  return result;
}

void sub_71AD8(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:1];
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLongLong:v3];
  [v4 setObject:&off_A10C0 forKey:v5];
}

void sub_71B50(void *a1, void *a2, void *a3)
{
  v12[0] = a3;
  v12[1] = &off_A1090;
  v5 = a3;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v11[0] = ML3EntityPropertyKeepLocalStatusReason;
  v11[1] = ML3EntityPropertyKeepLocalStatus;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  *(*(a1[6] + 8) + 24) |= [ML3Container setValues:v7 forProperties:v8 forEntityPersistentIDs:v9 inLibrary:a1[4] usingConnection:a1[5]];
}

void sub_71C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];

  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithLongLong:v5];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 intValue];

  if ((v4 & ~v9) != 0)
  {
    v12 = [NSNumber numberWithInt:v9 | v4];
    v10 = *(a1 + 32);
    v11 = [NSNumber numberWithLongLong:v5];
    [v10 setObject:v12 forKeyedSubscript:v11];
  }
}

void sub_71DB4(void *a1, void *a2, void *a3)
{
  v12[0] = a3;
  v12[1] = &off_A10D8;
  v5 = a3;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v11[0] = ML3EntityPropertyKeepLocalStatusReason;
  v11[1] = ML3EntityPropertyKeepLocalStatus;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  *(*(a1[6] + 8) + 24) |= [ML3Container setValues:v7 forProperties:v8 forEntityPersistentIDs:v9 inLibrary:a1[4] usingConnection:a1[5]];
}

void sub_71EF8(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:1];
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLongLong:v3];
  [v4 setObject:&off_A10C0 forKey:v5];
}

void sub_71F70(void *a1, void *a2, void *a3)
{
  v12[0] = a3;
  v12[1] = &off_A1090;
  v5 = a3;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v11[0] = ML3EntityPropertyKeepLocalStatusReason;
  v11[1] = ML3EntityPropertyKeepLocalStatus;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  *(*(a1[6] + 8) + 24) |= [ML3Album setValues:v7 forProperties:v8 forEntityPersistentIDs:v9 inLibrary:a1[4] usingConnection:a1[5]];
}

void sub_720B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];

  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithLongLong:v5];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 intValue];

  if ((v4 & ~v9) != 0)
  {
    v12 = [NSNumber numberWithInt:v9 | v4];
    v10 = *(a1 + 32);
    v11 = [NSNumber numberWithLongLong:v5];
    [v10 setObject:v12 forKeyedSubscript:v11];
  }
}

void sub_721D4(void *a1, void *a2, void *a3)
{
  v12[0] = a3;
  v12[1] = &off_A10D8;
  v5 = a3;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v11[0] = ML3EntityPropertyKeepLocalStatusReason;
  v11[1] = ML3EntityPropertyKeepLocalStatus;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  *(*(a1[6] + 8) + 24) |= [ML3Album setValues:v7 forProperties:v8 forEntityPersistentIDs:v9 inLibrary:a1[4] usingConnection:a1[5]];
}

void sub_72318(id a1)
{
  v3 = +[ML3Track allProperties];
  v1 = [NSSet setWithArray:v3];
  v2 = qword_A7880;
  qword_A7880 = v1;
}

void sub_7238C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([qword_A7898 containsObject:v6])
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void sub_72404(id a1)
{
  v3 = +[ML3Track allProperties];
  v1 = [NSSet setWithArray:v3];
  v2 = qword_A7898;
  qword_A7898 = v1;
}

uint64_t sub_72478(void *a1)
{
  v1 = a1;
  v2 = +[ICDeviceInfo currentDeviceInfo];
  if ([v2 isWatch])
  {
    [v1 currentBatteryLevel];
    if (v3 <= 0.8)
    {
      v4 = 20;
    }

    else
    {
      v4 = 30;
    }
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

id sub_724F4(char a1)
{
  v2 = +[ICEnvironmentMonitor sharedMonitor];
  v3 = [v2 lastKnownNetworkType];
  if (ICEnvironmentNetworkTypeIsCellular())
  {
    v4 = +[ICDeviceInfo currentDeviceInfo];
    v5 = [v4 isWatch];

    if (v5)
    {
      v6 = +[ATUserDefaults sharedInstance];
      v7 = [v6 minimumNetworkLinkQualityForDownloads];

      v8 = [v2 currentNetworkLinkQuality];
      v9 = [v7 unsignedIntValue];

      if (v8 < v9)
      {
        v10 = 0;
        v11 = 1;
        goto LABEL_8;
      }
    }

    v10 = sub_16C0(a1);
  }

  else
  {
    v12 = ICBundleIdentifierForSystemApplicationType();
    v13 = [[ICNetworkConstraints alloc] initWithBundleIdentifier:v12];
    v10 = [v13 shouldAllowDataForNetworkType:v3];
  }

  v11 = 0;
LABEL_8:
  v14 = _ATLogCategoryAssetUtils();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromMLMediaType();
    v16 = v15;
    v17 = "not allowed";
    if (v10)
    {
      v17 = "allowed";
    }

    v18 = @"Unknown";
    if (v3 > 99)
    {
      if (v3 > 1000)
      {
        if (v3 == &stru_3D8.segname[1])
        {
          v18 = @"Bridged WiFi";
        }

        else if (v3 == &stru_790.flags)
        {
          v18 = @"Wired Ethernet";
        }

        else if (v3 == &stru_B98.addr)
        {
          v18 = @"Other";
        }

        goto LABEL_14;
      }

      if (v3 != &stru_20.flags)
      {
        if (v3 == &stru_1A8.reserved3)
        {
          v18 = @"Bluetooth";
        }

        else if (v3 == stru_3D8.segname)
        {
          v18 = @"WiFi";
        }

        goto LABEL_14;
      }
    }

    else if ((v3 - 1) >= 8)
    {
LABEL_14:
      v20 = 138544386;
      v21 = v15;
      v22 = 2080;
      v23 = v17;
      v24 = 2048;
      v25 = v3;
      v26 = 2114;
      v27 = v18;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Downloads for media type %{public}@ are %s on the current network: networkType:%ld (%{public}@), isCurrentNetworkLinkQualityTooLow=%{BOOL}u", &v20, 0x30u);

      goto LABEL_15;
    }

    v18 = @"Cellular";
    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v4 = _lldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}