uint64_t sub_ABB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 - (((v8 - 27) ^ 0x2C) & (2 * v7)) - 109;
  *STACK[0xA78] = v9;
  v10 = v9 == (((v8 + 58) | 2) + 49);
  return (*(a7 + 8 * (v10 | (2 * v10) | (v8 + 178))))();
}

uint64_t sub_ABBD8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1 ^ v8;
  v12 = *(a7 + 8 * ((((((v7 & 0xF03D0EF7) - 1468) | 0x44) ^ 0x684) * (v11 > 7)) ^ v7 & 0xF03D0EF7));
  STACK[0x420] = *(v9 + 24);
  return v12((v10 ^ 0x7FAEFE777EDD62B1 ^ ((v7 & 0xF03D0EF7) - 2150)) + ((2 * v10) & 0xFDBACC7CLL) - 0x7FAEFE777EDD663ELL, 0xED03581957D445FLL, 0x5BE3112942E56A0, 0xFC21C8584774C6CALL, v11, 0xE3D1843B6C8E5A38, v11);
}

uint64_t sub_ABD7C()
{
  v1 = (HIDWORD(v0) | v0) - ((2 * (HIDWORD(v0) | v0)) & 0xC3865BCA) + 1640181221;
  LODWORD(STACK[0x12A8]) = v1;
  v2 = STACK[0xD3C];
  v3 = (v1 ^ 0x2E247AAC) & ~v2 | v2 & 0xB018A8B6;
  *(STACK[0x208] + 1336 * STACK[0x390] + 164) = (((v3 ^ 0xCC70F055) - 676382303) ^ ((v3 ^ 0xCD03023B) - 690172977) ^ ((v3 ^ 0x4E94A527) + 1431006419)) + 666876256;
  if ((LODWORD(STACK[0x420]) - 1805022194) >= 3 && LODWORD(STACK[0x420]) != 1805022198)
  {
    return (*(STACK[0x430] + 8 * (((STACK[0x408] - 207) * (LODWORD(STACK[0x3F0]) == 1)) ^ (STACK[0x408] - 2399))))();
  }

  v4 = 6 * (STACK[0x408] ^ 0xB70);
  v5 = STACK[0x408] - 1283;
  LODWORD(STACK[0x12AC]) = v2;
  return (*(STACK[0x430] + 8 * ((14 * (LODWORD(STACK[0x410]) != (v4 ^ 0x2139D94C))) ^ v5)))();
}

void sub_ABF38(uint64_t a1)
{
  v1 = *(a1 + 4) - 1280404519 * ((((2 * a1) | 0x7C3AA740) - a1 + 1105374304) ^ 0x2A6DFCCD);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_AC010@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 2107965158;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 247)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 119)
  {
    v12 = 1682696337;
    v13 = *v2;
    v14 = (*(v2 + 12) + v3);
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 42)
    {
      v15 = -975121284;
    }

    else
    {
      v15 = -975121283;
    }

    *(result + 16) = 936849326;
    *(result + 20) = v15;
    *(result + 24) = 1682696337;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 + 1584)))();
    v12 = -1682656440;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_AC13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 ^ 0x69F)))(112, v8);
  v10 = STACK[0x430];
  STACK[0xEA0] = v9;
  return (*(v10 + 8 * (((v9 == 0) * ((v7 + 783) ^ 0xB6E)) ^ v7)))();
}

uint64_t sub_AC27C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (a2 + 424) | 0x281;
  v4 = STACK[0xC88];
  v5 = STACK[0x720];
  v6 = STACK[0x8CC];
  STACK[0x590] = STACK[0xC88];
  LODWORD(STACK[0xB84]) = 1295982620;
  STACK[0x848] = v5;
  LODWORD(STACK[0xA84]) = v6;
  LODWORD(STACK[0xFEC]) = -207261334;
  return (*(a1 + 8 * (((v4 == 0) * (5 * (v3 ^ 0x6CE) + 1427 * (v3 ^ 0x6C5) - 2882)) ^ v3)))();
}

uint64_t sub_AC2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  v19 = v17 || *(a1 + 24) == 0;
  return (*(v16 + 8 * ((v19 * (((v14 + 237589890) & 0xF1D6ABE5) - 2305)) ^ v14)))(a1, a2, a3, a4, a5, a6, a7);
}

void sub_AC38C(int a1@<W8>)
{
  (*(v1 + 8 * (a1 ^ 0x6AE)))();
  *(v2 + 24) = 0;
  JUMPOUT(0xAC3ACLL);
}

uint64_t sub_AC41C()
{
  v1 = *(STACK[0x5C8] + 24);
  STACK[0xCA8] = v1;
  return (*(STACK[0x430] + 8 * (((v1 != 0) * ((v0 - 84) ^ 0x891 ^ ((v0 - 2662) | 0x243))) ^ v0)))();
}

uint64_t sub_AC77C@<X0>(uint64_t a1@<X8>)
{
  result = (*(a1 + 8 * (v1 ^ 0xA07)))();
  *(v2 + 8) = 375959659;
  return result;
}

uint64_t sub_ACA30@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v5 = LOWORD(STACK[0x115E]);
  if (v5 == 27753)
  {
    goto LABEL_4;
  }

  if (v5 != 43973)
  {
    if (v5 != 32667)
    {
LABEL_5:
      STACK[0x608] = 0;
      LODWORD(STACK[0x4E8]) = -1340669477;
      return sub_ACA80();
    }

LABEL_4:
    STACK[0xF40] = v2;
    goto LABEL_5;
  }

  v7 = STACK[0xB30];
  STACK[0xF40] = v2;
  LODWORD(STACK[0x4E8]) = a2;
  return (*(a1 + 8 * (((v7 + v3 == 0) * ((v4 + 719) ^ 0xDEA)) ^ (v4 + 285))))();
}

uint64_t sub_ACB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *STACK[0x910];
  STACK[0xD08] = 0;
  STACK[0x8F0] = 0;
  return (*(a7 + 8 * (((((1427 * (v7 ^ 0x861) - 2788) | 8) ^ 0x41) * (v8 == 0)) ^ v7)))();
}

uint64_t *sub_ACBE8(uint64_t *result)
{
  v1 = *result;
  *v1 = 0;
  *(v1 + 2) = 0;
  return result;
}

void sub_ACCB0()
{
  v3 = (-(v0 & 1 ^ ((v2 - 2190) | 0x64) ^ 0x2FD) ^ (v1 >> 1)) + (v0 & 1 ^ ((v2 - 2190) | 0x64) ^ 0x2FD);
  v4 = LOWORD(STACK[0xE3E]);
  STACK[0x7B8] = v4;
  *(STACK[0x550] + 4 * v4 + 692) = v3 - 279692059 - ((2 * v3) & 0xDEA87BB6) + 246;
  JUMPOUT(0xD42CCLL);
}

uint64_t sub_ACD6C(uint64_t a1, int a2)
{
  v6 = (a2 - 67309328) & 0x4030BF7;
  v7 = (v6 + 364696777) & 0xA432DD5;
  v8 = v6 - 1708;
  (&STACK[0x1508] - v4)[8] = *v2;
  v9 = v5 - 1489548906 > 0xC733396C;
  if (v5 < v3 != (v7 - 3524) > 0x38CCC694)
  {
    v9 = v5 < v3;
  }

  return (*(STACK[0x430] + 8 * ((213 * v9) ^ v8)))(&STACK[0x1508], 3342023020, 952944276);
}

uint64_t sub_ACE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 + 1522)))(128, 0x10800400FED9166);
  v9 = STACK[0x430];
  STACK[0x910] = v8;
  return (*(v9 + 8 * (((8 * ((((v7 + 84) ^ (v8 == 0)) & 1) == 0)) & 0xDF | (32 * (((v7 + 84) ^ ~(v8 == 0)) & 1))) ^ v7)))();
}

uint64_t sub_ACF04(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (v7 + 10) & 0xF;
  LODWORD(STACK[0x10EC]) = a1 - v9 + 16;
  return (*(a7 + 8 * ((1059 * (((((v8 + 2408) | 0x92) - 468) ^ 0xB36u) - v9 + v7 < 0xFFFFFFF6)) ^ v8)))();
}

uint64_t sub_ACF6C@<X0>(unsigned int a1@<W8>)
{
  *(v2 + a1 + 3) = 0;
  STACK[0xD90] -= 16;
  return v1();
}

uint64_t sub_ACF88()
{
  v4 = v1 ^ v2;
  v5 = 64 - (v0 - 718408366);
  v6 = 718408365 - v0;
  if (HIDWORD(v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 >= v5;
  }

  v8 = !v7;
  return (*(v3 + 8 * ((101 * ((v8 ^ (v4 + v1 - 105 + 1)) & 1)) ^ v1)))();
}

uint64_t sub_AD004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v8 == -1682656467)
  {
    return (*(a7 + 8 * (((*(STACK[0x910] + 97) == 0) * (((v7 - 2850) | 0x120) + 3697)) ^ (v7 - 2305))))();
  }

  if (v8 == 1682696337)
  {
    v9 = *(STACK[0xED0] + 24);
    STACK[0xE00] = v9;
    return (*(a7 + 8 * (((v9 == 0) * (v7 - 2360)) ^ (v7 - 553))))();
  }

  else
  {
    LODWORD(STACK[0xE50]) = v8;
    return sub_1B328(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_AD560(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  a4 = v6;
  a3 = v8;
  a6 = v7 - 1643603977 * ((&a3 + 226823477 - 2 * (&a3 & 0xD850D35)) ^ 0xE2DE159D) + 1059;
  (*(a1 + 8 * (v7 ^ 0xBA6)))(&a3);
  JUMPOUT(0x25068);
}

uint64_t sub_AE320@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = a2 - 62;
  (*(a1 + 8 * (a2 + 2471)))(v2);
  v4 = STACK[0x430];
  STACK[0xD98] = 0;
  return (*(v4 + 8 * (((STACK[0xD40] == 0) * ((v3 - 697469215) & 0x29928FA7 ^ 0xB03)) ^ v3)))();
}

uint64_t sub_AE468@<X0>(int a1@<W8>)
{
  v2 = LODWORD(STACK[0x380]);
  if (v2 == 27753)
  {
    return (*(STACK[0x430] + 8 * ((STACK[0x408] - 895) ^ (2826 * (a1 == -1340669473)))))();
  }

  if (v2 == 32667 || (v4 = STACK[0x408], v2 == 43973))
  {
    STACK[0x6B0] = v1;
    v4 = STACK[0x408];
  }

  v5 = *STACK[0x840];
  STACK[0x5E0] = 0;
  STACK[0x628] = 0;
  return (*(STACK[0x430] + 8 * (((v5 != 0) * ((v4 - 2820) ^ 0x5E)) ^ (v4 - 1666))))();
}

uint64_t sub_AE528@<X0>(unsigned int a1@<W3>, int a2@<W8>)
{
  if (a1 <= 0x30)
  {
    v5 = 48;
  }

  else
  {
    v5 = a1;
  }

  return (*(v3 + 8 * ((215 * ((v5 + v2 + 1 + v4) > 0x3F)) ^ a2)))();
}

void sub_AE944(int a1@<W8>)
{
  v3 = LOWORD(STACK[0x115C]);
  if (v3 == 27753)
  {
LABEL_5:
    STACK[0x4A8] = v1;
    LODWORD(STACK[0xD6C]) = a1;
    goto LABEL_8;
  }

  if (v3 != 43973)
  {
    if (v3 != 32667)
    {
      sub_AEBC8();
      return;
    }

    goto LABEL_5;
  }

  v4 = STACK[0xE00];
  STACK[0x4A8] = v1;
  LODWORD(STACK[0xD6C]) = a1;
  STACK[0xFB0] = v4 + v2;
  if (*(STACK[0x910] + 20) != 1)
  {
LABEL_8:
    JUMPOUT(0xAEBB8);
  }

  sub_4CF08();
}

void sub_AEC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xC18] = 0;
  STACK[0xC48] = 0;
  STACK[0xD30] = *(a7 + 8 * v7);
  JUMPOUT(0x33ED8);
}

uint64_t sub_AECE0(int8x16_t a1, int8x16_t a2, int32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v85 = *(v41 + 8 * v38);
  v48 = (BYTE4(a33) - ((2 * BYTE4(a33)) & 0xD8) - 18);
  if (v48 == 240)
  {
    v86 = vld4q_s8(v39);
    v76 = veorq_s8(v86.val[1], a1);
    _Q21 = vmovl_high_u8(v76);
    _Q20 = vmovl_u8(*v76.i8);
    v79 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v80 = vmovl_u8(*&veorq_s8(v86.val[2], a1)).u64[0];
    v86.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v86.val[3], a1)));
    v81 = vorrq_s8(vorrq_s8(vorrq_s8(v79, vshll_n_u16(v80, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v86.val[0], a1))), 0x18uLL)), v86.val[2]);
    v86.val[2] = veorq_s8(vandq_s8(v81, a2), (*&v86.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    *v37 = vaddq_s32(vsubq_s32(v81, vaddq_s32(v86.val[2], v86.val[2])), a3).u32[0];
    v82 = &v37[v45 + 162309687];
    v83 = *(v82 - 16);
    *v82 = v44 ^ __ROR4__(*(v82 - 8) ^ *(v82 - 3) ^ *(v82 - 14) ^ v83, 31);
    v84 = *(v41 + 8 * ((1881 * (v42 + 2 * (v43 ^ 0xA6E1BCF5) - 1681 == 162310689)) ^ (2 * (v43 ^ 0xA6E1BCF5))));
    return v84(v84, a5, v83, a7, HIDWORD(a30), a31, a10, a32, a12, a13, a14, a15, a16, a17, v85, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
  }

  else
  {
    if (v48 != 239)
    {
      JUMPOUT(0xAF618);
    }

    v87 = vld4q_s8(v39);
    v49 = a10 + v43 + 2799;
    v50 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v87.val[0], a1)));
    v51 = veorq_s8(v87.val[2], a1);
    _Q25 = vmovl_u8(*v51.i8);
    _Q24 = vmovl_high_u8(v51);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v87.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v87.val[3], a1))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v87.val[1], a1)), 8uLL), v50));
    v60 = veorq_s8(vandq_s8(v87.val[2], vdupq_n_s32(0x2CB7FFDBu)), (*&v50 & __PAIR128__(0xFFFFFF08FFFFFF08, 0xFFFFFF08FFFFFF08)));
    *v37 = vaddq_s32(vsubq_s32(v87.val[2], vaddq_s32(v60, v60)), a3).u32[0];
    v61 = (HIDWORD(a31) & 0xF78EA1F9 ^ 0x1006A061 ^ (a31 ^ 0xE7B90D9C) & (HIDWORD(a31) ^ v40) | ((v49 - 3325) | 0x881) ^ a31 & 0x9E7EED6C ^ (a31 ^ v46) & (a32 ^ 0x8E494109) ^ 0x8E4849DF) + (HIDWORD(a30) ^ v40) + *(*(&off_103F00 + (v49 ^ 0xDB4)) + a19 + v45) + (v37[(*(*(&off_103F00 + (v49 ^ 0xD68)) + a19 + v45 - 8) - 24)] ^ v44);
    v62 = *(*(&off_103F00 + (v49 & 0xC4DF070)) + a19 + v45 - 12);
    v63 = ((2 * ((v62 - 28) & 0xC6)) & 8 | (v62 - 28) & 0xC6) ^ (2 * ((v62 - 28) & 0xC6)) & ((v62 - 28) ^ 0xDC);
    v64 = (v62 - 28) ^ (2 * ((((v62 - 28) ^ 0xC6) & (2 * ((v62 - 28) ^ 0xDC)) ^ 0x12) & (4 * v63) ^ v63));
    v65 = v61 ^ ((v61 ^ 0x435ABB86) - 614225176) ^ ((v61 ^ 0x27C658AB) - 1073788469) ^ ((v61 ^ 0x74A5FA4D) - 325260499) ^ ((v61 ^ 0x77FFF7FE) - 272177504) ^ 0x67C6EE9E;
    v66 = (((a31 ^ 0x8854813A) + 2007727814) ^ ((a31 ^ 0x32F9963D) - 855217725) ^ ((a31 ^ 0xAA9ABB62) + 1432700062)) + 1494204918 + ((v65 << ((v64 ^ 0xF7) & 0x1D ^ 0x11) << ((v64 ^ 0xF7) & 2)) | (v65 >> (v47 - v62)));
    v67 = (v66 ^ 0xA697E24F) & (2 * (v66 & 0xB727EA6F)) ^ v66 & 0xB727EA6F;
    v68 = ((2 * (v66 ^ 0x8AD93613)) ^ 0x7BFDB8F8) & (v66 ^ 0x8AD93613) ^ (2 * (v66 ^ 0x8AD93613)) & 0x3DFEDC7C;
    v69 = v68 ^ 0x4024404;
    v70 = (v68 ^ 0x39BC9878) & (4 * v67) ^ v67;
    v71 = ((4 * v69) ^ 0xF7FB71F0) & v69 ^ (4 * v69) & 0x3DFEDC7C;
    v72 = (v71 ^ 0x35FA5070) & (16 * v70) ^ v70;
    v73 = ((16 * (v71 ^ 0x8048C0C)) ^ 0xDFEDC7C0) & (v71 ^ 0x8048C0C) ^ (16 * (v71 ^ 0x8048C0C)) & 0x3DFEDC70;
    v74 = v72 ^ 0x3DFEDC7C ^ (v73 ^ 0x1DECC400) & (v72 << 8);
    return (*(v41 + 8 * ((843 * (a19 + 1 == v42)) ^ v49)))(162309687, a5, v66 ^ (2 * ((v74 << 16) & 0x3DFE0000 ^ v74 ^ ((v74 << 16) ^ 0x5C7C0000) & (((v73 ^ 0x2012183C) << 8) & 0x3DFE0000 ^ 0x1220000 ^ (((v73 ^ 0x2012183C) << 8) ^ 0x7EDC0000) & (v73 ^ 0x2012183C)))) ^ 0xE415FEF2);
  }
}

uint64_t sub_AFCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = STACK[0x141C];
  if (SLODWORD(STACK[0x141C]) > 1805022197)
  {
    if (v7 == 1805022201)
    {
      return sub_9D54C(a1, a2, a3, a4, a5);
    }

    v8 = 29686;
  }

  else
  {
    if (v7 == 1805022195)
    {
      return sub_9D54C(a1, a2, a3, a4, a5);
    }

    v8 = 29684;
  }

  if (v7 != (v8 | 0x6B960000))
  {
    a5 = STACK[0x1420];
    LODWORD(STACK[0x11D4]) = -1682656562;
    STACK[0x11D8] = v5 + (((v5 ^ 0xBE8E1F1AF3A590DLL) - 0xBE8E1F1AF3A590DLL) ^ ((v5 ^ 0x838CED808C07DD4ELL) + 0x7C73127F73F822B2) ^ ((v5 ^ (((v6 - 896049456) & 0x356896DBu) + 2644 + 0x42274DDBD46EE0CALL)) - 0x42274DDBD46EEBF0)) + 1;
  }

  return sub_9D54C(a1, a2, a3, a4, a5);
}

uint64_t sub_AFEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x208];
  v11 = *(STACK[0x208] + 1336 * v7);
  *(v9 - 240) = (v8 - 355567421) ^ (1579770187 * ((((2 * (v9 - 240)) | 0xEC4D8EA) - (v9 - 240) + 2023592843) ^ 0xF2BCEF0B));
  *(v9 - 232) = v11;
  v12 = (*(a7 + 8 * (v8 ^ 0xC5A)))(v9 - 240);
  v13 = STACK[0x430];
  LOBYTE(STACK[0xC6F]) = 1;
  return (*(v13 + 8 * (((*(v10 + 1336 * v7 + 252) == 784267143) * ((2 * (v8 ^ 0x7B1)) ^ 0xB30)) ^ v8 ^ 0xBAB)))(v12);
}

uint64_t sub_B0094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8)
{
  v11 = v9 - 1;
  v12 = a4 & (v11 + 31);
  *(a2 + v11) = *(a3 + v11) ^ (v12 * a8) ^ *(*(&off_103F00 + a5) + v12 - 4) ^ *(*(&off_103F00 + a6) + v12 - 12) ^ *(*(&off_103F00 + a7) + v12 - 4) ^ 0xF7;
  return (*(STACK[0x430] + 8 * (((v11 == -31) * v10) ^ v8)))();
}

uint64_t sub_B009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v8 >= v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = v8;
  }

  return (*(a7 + 8 * ((154 * (v8 < ((5 * ((v7 + 973) ^ 0xCFD)) ^ 0x8AFu))) ^ (v7 + 973))))(v8);
}

uint64_t sub_B0170()
{
  v8 = v3 + 8;
  v7 = (v2 + 973538304) ^ (((&v7 + 192075304 - 2 * (&v7 & 0xB72D628)) ^ 0x51F1BA4B) * v1);
  result = (*(v4 + 8 * (v2 + 2586)))(&v7);
  *(v0 + 16) = v5;
  return result;
}

uint64_t sub_B0208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x7D0];
  *(v8 + 104) = 16;
  *(v8 + 103) = *(v9 + 23);
  *(v8 + 102) = *(v9 + 22);
  *(v8 + 101) = *(v9 + 21);
  *(v8 + 100) = *(v9 + 20);
  *(v8 + 99) = *(v9 + 19);
  *(v8 + 98) = *(v9 + 18);
  *(v8 + 97) = *(v9 + 17);
  *(v8 + 96) = *(v9 + 16);
  *(v8 + 95) = *(v9 + 15);
  *(v8 + 94) = *(v9 + 14);
  *(v8 + 93) = *(v9 + 13);
  *(v8 + 92) = *(v9 + 12);
  *(v8 + 91) = *(v9 + 11);
  *(v8 + 90) = *(v9 + 10);
  *(v8 + 89) = *(v9 + 9);
  *(v8 + 88) = *(v9 + 8);
  *(v8 + 84) = *v9;
  return (*(a7 + 8 * ((15 * (*(v9 + 4) == ((v7 + 759882682) & 0x79 ^ 0x18))) ^ v7)))();
}

uint64_t sub_B02D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  *(v8 + 40) = a8 & 0xFFFFFFF0;
  LODWORD(STACK[0x370]) = v9;
  return sub_D8684(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_B03A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = (v15 ^ 0x477) + 772352333 * ((1074773989 - ((v19 - 136) | 0x400FBFE5) + ((v19 - 136) | 0xBFF0401A)) ^ 0x5BB248A1) + 2107;
  *(v19 - 136) = &a15;
  *(v19 - 128) = v16;
  v20 = (*(v17 + 8 * (v15 ^ 0xFC9)))(v19 - 136);
  return (*(v17 + 8 * ((3440 * (v18 == (((v15 ^ 0x477) - 1059) ^ 0xFFFFFFB3) + (v15 ^ 0x477) - 1133)) ^ v15 ^ 0x477)))(v20);
}

void sub_B089C()
{
  v3 = (-(((v2 ^ 0x9DA) - 763) & v0 ^ 1) ^ (v1 >> 1)) + (((v2 ^ 0x9DA) - 763) & v0 ^ 1);
  v4 = LOWORD(STACK[0xE3E]);
  v5 = STACK[0x550] + 4 * v4;
  STACK[0xCD8] = v4;
  *(v5 + 1204) = v3 + 874676467 - ((2 * v3) & 0x684501E6);
  JUMPOUT(0xD42CCLL);
}

void sub_B0970(unsigned int *a1)
{
  v6 = v4 + v1;
  v7 = v5 + v4 + v1 - 474;
  *a1 = v7;
  v8 = a1 + 1;
  *(v8 + v2) = v3;
  *(v8 + v1) = 47;
  *(v8 + v6) = 61;
  *(v8 + v7) = 0;
  JUMPOUT(0x93158);
}

void sub_B09A0()
{
  v6 = 1556812919 * ((~(v4 ^ 0xE5ED7DA8 | 0xFCDDFE12) + ((v4 ^ 0xE5ED7DA8) & 0xFCDDFE12)) ^ 0xBC4C1026);
  *(v5 - 136) = v3 + 422 - v6 + (v0 ^ 0x56FFEDF9) + ((2 * v0) & 0xADFFDBF2) - 5440824;
  *(v5 - 128) = v1;
  *(v5 - 120) = (v3 + 639) ^ v6;
  (*(v2 + 8 * (v3 + 2877)))(v5 - 136);
  JUMPOUT(0xB0A48);
}

void sub_B0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v7 <= 7 && ((1 << v7) & 0xB8) != 0)
  {
    v10 = STACK[0x408];
    v11 = 209 * (STACK[0x408] ^ 0xB22);
    v12 = STACK[0x408] + 19;
    *(v9 - 236) = STACK[0x408] + 772352333 * ((333915049 - ((v9 - 240) | 0x13E723A9) + ((v9 - 240) | 0xEC18DC56)) ^ 0x85AD4ED) - 1192014039;
    v13 = (*(a7 + 8 * (v10 + 890)))(v9 - 240);
    (*(STACK[0x430] + 8 * ((1723 * (*(v9 - 240) == v8 + v11 - 836)) ^ v12)))(v13);
  }

  else
  {
    sub_B0B28();
  }
}

void sub_B0C58(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  if (*a2 <= 7u && ((1 << *a2) & 0xB8) != 0)
  {
    (*(a1 + 8 * (((*(STACK[0x208] + 8) != *(a2 + 8)) * ((STACK[0x408] ^ 0x743) - 3120)) ^ (STACK[0x408] + 364))))();
  }

  else
  {
    sub_B0B28();
  }
}

uint64_t sub_B0CC8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v5 = v3 + (v2 ^ 0x6C1u) - 385;
  *(v4 + v5) = *(a2 + v5) ^ 0xF7;
  return (*(a1 + 8 * ((27 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_B0D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = a14;
  *(v19 - 128) = v18 + 539293837 * ((2 * (((v19 - 136) ^ 0x70BF7A6C) & 0x780A5930) - ((v19 - 136) ^ 0x70BF7A6C) - 2013944113) ^ 0x4A4B1654) - 1707;
  *(v19 - 136) = &a15;
  (*(v16 + 8 * (v18 + 1091)))(v19 - 136);
  v20 = 1556812919 * ((-552838688 - ((v19 - 136) | 0xDF0C59E0) + ((v19 - 136) | 0x20F3A61F)) ^ 0x7A70CA7C);
  *(v19 - 128) = v15;
  *(v19 - 136) = 1454173610 - v20;
  *(v19 - 120) = (v18 - 1072) ^ v20;
  (*(v16 + 8 * (v18 + 1166)))(v19 - 136);
  *(v19 - 128) = v15;
  *(v19 - 120) = a14;
  *(v19 - 136) = v18 + ((v19 + 569804918 - 2 * ((v19 - 136) & 0x21F688FE)) ^ 0xC7192DA5) * v17 - 1663;
  v21 = (*(v16 + 8 * (v18 + 1185)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 112) != (v18 ^ 0x717AFF59)) * ((v18 - 1078) ^ 0x5B9)) | v18)))(v21);
}

void sub_B0EB4(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (922715317 * (((a1 | 0xBDDC4351) - (a1 | 0x4223BCAE) + 1109638318) ^ 0x885A639E));
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  v5 = 1643603977 * ((-1865631363 - (&v8 | 0x90CCB97D) + (&v8 | 0x6F334682)) ^ 0x80685E2A);
  v6 = 583615273 * (*(a1 + 4) ^ (922715317 * (((a1 | 0xBDDC4351) - (a1 | 0x4223BCAE) + 1109638318) ^ 0x885A639E)));
  v10 = *(a1 + 56) - 922715317 * (((a1 | 0xBDDC4351) - (a1 | 0x4223BCAE) + 1109638318) ^ 0x885A639E) + v5 + 1817142616;
  v15 = v5 ^ (v1 + 14818492);
  v13 = v3;
  v14 = v2;
  v12 = v4;
  v9 = v4;
  v8 = (v6 - 1596059763) ^ v5;
  v7 = *(&off_103F00 + (v1 ^ 0x3F5)) - 4;
  (*&v7[8 * v1 + 23080])(&v8);
  __asm { BRAA            X8, X17 }
}

void sub_B1430(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x408];
  v68 = *(&off_103F00 + (STACK[0x408] ^ 0xB94));
  v69 = *(&off_103F00 + (STACK[0x408] ^ 0xB3C));
  v70 = *a65 + v65;
  v103 = *(&off_103F00 + (STACK[0x408] - 2629)) - 4;
  STACK[0x430] = a7;
  STACK[0x208] = v69;
  if (v70 > -271001517)
  {
    switch(v70)
    {
      case -271001516:
        v102 = v68;
        v93 = a9[2];
        STACK[0xAD8] = a9[1];
        v95 = a9[4];
        v94 = a9[5];
        STACK[0x490] = v95;
        STACK[0xA50] = v94;
        STACK[0xE90] = 0;
        LODWORD(STACK[0xEB4]) = -1340669477;
        STACK[0x730] = 0;
        if (v93)
        {
          v96 = v95 == 0;
        }

        else
        {
          v96 = 1;
        }

        v98 = v96 || v94 == 0;
        (*(a7 + 8 * ((22 * v98) ^ (v67 + 699))))(a1, a2, a3, a4, a5, a6, a7, a8, v102, v103, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
        break;
      case -271001515:
        LODWORD(STACK[0x814]) = (*a9 ^ 0x6FFFF3EF) - 74022912 + ((2 * *a9) & 0xDFFFE7DE);
        STACK[0x838] = a9[1];
        LODWORD(STACK[0xF04]) = *(a9 + 4);
        STACK[0xDF8] = a9[3];
        LODWORD(STACK[0x5B0]) = *(a9 + 8) + ((v67 - 2007) ^ 0xB0170294) - ((2 * *(a9 + 8)) & 0x602E03B6);
        v100 = a9[5];
        v99 = a9[6];
        STACK[0x958] = v100;
        STACK[0xF80] = 0;
        *v100 = 0;
        STACK[0x938] = v99;
        STACK[0xD18] = 0;
        *v99 = 0;
        LODWORD(STACK[0x4EC]) = -1340669477;
        sub_5E454(a1, a2, a3, a4, a5, a6, a7);
        break;
      case -271001514:
        v75 = v67 - 56;
        v76 = *a9;
        v77 = *(v69 + 252) != 784267141;
        if (*(v69 + 1588) != (v67 ^ 0xA) + 784264281)
        {
          ++v77;
        }

        v78 = *(v69 + 1344) == v76;
        if (*(v69 + 2924) != 784267141)
        {
          ++v77;
        }

        if (*(v69 + 4260) != 784267141)
        {
          ++v77;
        }

        if (*(v69 + 2680) == v76)
        {
          v78 = 2;
        }

        if (*(v69 + 5596) != 784267141)
        {
          ++v77;
        }

        if (*(v69 + 4016) == v76)
        {
          v78 = 3;
        }

        if (*(v69 + 6932) != ((v67 - 2625) | 2) + 784266910)
        {
          ++v77;
        }

        if (*(v69 + 5352) == v76)
        {
          v78 = 4;
        }

        if (*(v69 + 8268) != 784267141)
        {
          ++v77;
        }

        if (*(v69 + 6688) == v76)
        {
          v78 = 5;
        }

        if (*(v69 + 9604) == 784267141)
        {
          v79 = v77;
        }

        else
        {
          v79 = v77 + 1;
        }

        v80 = *(v69 + 9360);
        if (*(v69 + 8024) == v76)
        {
          v81 = 6;
        }

        else
        {
          v81 = v78;
        }

        LODWORD(STACK[0xFF0]) = v79;
        *(v66 - 240) = (v67 - 355569729) ^ (1579770187 * ((((v66 - 240) | 0xD78FD161) + (~(v66 - 240) | 0x28702E9E)) ^ 0xA251521E));
        *(v66 - 232) = 0;
        v82 = (*(a7 + 8 * (v67 ^ 0x55E)))(v66 - 240);
        v83 = STACK[0x430];
        v84 = 7;
        if (v80 != v76)
        {
          v84 = v81;
        }

        v85 = (v69 + 1336 * v84);
        STACK[0xF70] = v85;
        (*(v83 + 8 * ((452 * (*v85 == 0)) ^ v75)))(v82);
        break;
      default:
LABEL_58:
        sub_B0B28();
        return;
    }
  }

  else
  {
    switch(v70)
    {
      case -271001519:
        v101 = v68;
        LODWORD(STACK[0x122C]) = *a9;
        v86 = a9[2];
        STACK[0x1230] = a9[1];
        v87 = a9[3];
        STACK[0x1238] = v87;
        LODWORD(STACK[0x1244]) = *(a9 + 8);
        v88 = a9[5];
        v89 = a9[6];
        STACK[0x1248] = v88;
        STACK[0x1250] = v89;
        STACK[0x1258] = a9[7];
        if (v86)
        {
          v90 = v87 == 0;
        }

        else
        {
          v90 = 1;
        }

        v92 = v90 || v88 == 0;
        (*(a7 + 8 * ((52 * v92) ^ (v67 - 2006))))(a1, a2, a3, a4, a5, a6, a7, a8, v101, v103, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
        break;
      case -271001518:
        (*(a7 + 8 * ((STACK[0x408] + 451) | (2 * (a9[2] == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, v103, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
        break;
      case -271001517:
        STACK[0xA90] = (a9[1] ^ 0x5D73FFFFF787477FLL) - 0x1801B8298003402ELL + ((2 * a9[1]) & 0xBAE7FFFFEF0E8EFELL);
        v71 = *(a9 + 5);
        LODWORD(STACK[0xC14]) = *(a9 + 4);
        v72 = a9[4];
        STACK[0xC70] = a9[3];
        v73 = *a9;
        STACK[0x1080] = v72;
        STACK[0x648] = a9[5];
        v74 = STACK[0x408] - 2399;
        LODWORD(STACK[0x750]) = ((STACK[0x408] - 339810087) ^ v73) + ((2 * v73) & 0xD77DE7FE) + 2144829424;
        LODWORD(STACK[0xD3C]) = v71;
        sub_10768(a7, v74);
        return;
      default:
        goto LABEL_58;
    }
  }
}

uint64_t sub_B19DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v12 - 2322;
  STACK[0x410] = v12;
  v15 = *v7;
  v16 = v12 - 2383;
  v17 = 1327116359 * ((v8 + 1646504012 - 2 * (v8 & 0x6223A84C)) ^ 0x84CC0D17);
  *(v13 - 232) = v17 + (STACK[0x420] ^ 0x6FF5FCBF) + ((2 * STACK[0x420]) & 0xDFEBF97E) - 1815178473;
  *(v13 - 224) = (v12 - 2383) ^ v17;
  *(v13 - 240) = v15;
  v18 = (v12 - 2322) | 0xC4B;
  (*(a7 + 8 * v18))(v13 - 240);
  v19 = *v7;
  v20 = (v12 ^ 0x224DD6903330E675) * (((2 * v11) & 0x3B7FFF6B85EEFBDELL) + (v11 ^ 0x1DBFFFB5C2F77DEFLL)) - 0x47D4BBA6F2C53DC7;
  v21 = 1556812919 * (v8 ^ 0x194994905A836C63);
  v22 = v12 - 2322 + v21 + 1110;
  *(v13 - 216) = v22;
  *(v13 - 240) = v19;
  *(v13 - 224) = v20 ^ v21;
  (*(STACK[0x430] + 8 * (v14 ^ 0xCB5)))(v13 - 240);
  v23 = *v7;
  v24 = 1327116359 * (((v8 | 0xBF3EB4C3) - (v8 & 0xBF3EB4C3)) ^ 0x59D11198);
  *(v13 - 232) = v24 + (v9 ^ 0x57F49FDF) + ((2 * v9) & 0xAFE93FBE) - 1412435977;
  *(v13 - 224) = v16 ^ v24;
  *(v13 - 240) = v23;
  (*(STACK[0x430] + 8 * (v14 ^ 0xC4B)))(v13 - 240);
  v25 = *v7;
  *(v13 - 216) = v22;
  *(v13 - 224) = (0x224DD6903330ED53 * (((2 * v10) & 0xFFFFFF7F7FF95EFELL) + (v10 ^ 0xFFFFFFBFBFFCAF7FLL)) + 0x6B7047053AA96089) ^ v21;
  *(v13 - 240) = v25;
  (*(STACK[0x430] + 8 * (v14 + 3213)))(v13 - 240);
  v26 = 1327116359 * ((v8 - 1301057587 - 2 * (v8 & 0xB2736FCD)) ^ 0x549CCA96);
  *(v13 - 240) = *v7;
  *(v13 - 232) = v26 + 63214038;
  *(v13 - 224) = v16 ^ v26;
  (*(STACK[0x430] + 8 * v18))(v13 - 240);
  v27 = 1643603977 * (((v8 | 0x7E1747B4) - v8 + (v8 & 0x81E8B848)) ^ 0x914C5F1C);
  *(v13 - 224) = v7;
  *(v13 - 216) = v27 + 2098417037;
  *(v13 - 236) = 570060523 - v27;
  *(v13 - 232) = v27 + v14 + 2514;
  v28 = (*(STACK[0x430] + 8 * (v14 + 3184)))(v13 - 240);
  return (*(STACK[0x430] + 8 * ((2322 * (*(v13 - 240) == 1682696337)) ^ v14)))(v28);
}

uint64_t sub_B1D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  *a13 = v13 - 1;
  v17 = &a13[6 * (v13 - 1131089172) + 2];
  v18 = *(v17 + 4);
  LODWORD(v17) = *(v16 + 48 * (((v14 - 545391) & 0xEAA9EFFB ^ 0x2E5480C7) + *v17) + 36) != a3;
  return (*(v15 + 8 * ((v17 | (8 * v17)) ^ v14)))(a1, a2, a3, a4, v18, a6, a7, a8);
}

uint64_t sub_B1E00@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v17 = STACK[0x408] - 477;
  v18 = (a1 ^ v16) + STACK[0x280];
  STACK[0x1200] = v18;
  return (*(STACK[0x430] + 8 * (v17 ^ ((2 * (v18 <= a16)) | (4 * (v18 <= a16))))))();
}

uint64_t sub_B1E64(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  LODWORD(STACK[0x4C8]) = v32;
  LODWORD(STACK[0x4CC]) = 1402045575;
  v35 = **(v33 + 8 * (v31 ^ (a1 + 72)));
  v36 = 1579770187 * ((((v34 - 168) ^ 0xF70C6D4FB88D8A62 | 0xD463B06620AF0967) - ((v34 - 168) ^ 0xF70C6D4FB88D8A62) + (((v34 - 168) ^ 0xF70C6D4FB88D8A62) & 0x2B9C4F99DF50F698)) ^ 0xA3FE2A28EDFC007BLL);
  *(v34 - 136) = ((v31 + 302108659) ^ 0x19B) + v36;
  *(v34 - 132) = v31 + 302108659 + v36;
  *(v34 - 160) = -1579770187 * ((((v34 - 168) ^ 0xB88D8A62 | 0x20AF0967) - ((v34 - 168) ^ 0xB88D8A62) + (((v34 - 168) ^ 0xB88D8A62) & 0xDF50F698)) ^ 0xEDFC007B);
  *(v34 - 152) = v31 - v36 + 1571169261;
  *(v34 - 148) = ((v31 + 302108659) ^ 0x3F) + v36;
  v37 = v34 - 176;
  *(v37 + 8) = v36;
  *(v37 + 32) = v35 - v36;
  v38 = (*(v30 + 8 * (v31 ^ (a1 - 2878))))(v34 - 168);
  return (*(a30 + 8 * *(v34 - 156)))(v38);
}

void sub_B2010(uint64_t a1)
{
  v1 = *(a1 + 36) - 1703288393 * (((a1 | 0x65E24CCC) - (a1 | 0x9A1DB333) - 1709329613) ^ 0xBCFD2016);
  v2 = ((*(a1 + 32) - 1703288393 * (((a1 | 0x65E24CCC) - (a1 | 0x9A1DB333) - 1709329613) ^ 0xBCFD2016)) & 0xF) == 4;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_B20E8(uint64_t result)
{
  v4 = *v1;
  *result = v2;
  *(result + 8) = v3;
  *(result + 12) = v3;
  *(result + 16) = 0xC5E0D47E37D72FAELL;
  *(result + 24) = 1682696337;
  *v4 = result;
  *(v1 + 24) = 1682696337;
  return result;
}

uint64_t sub_B216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = SLODWORD(STACK[0xA48]);
  *(&STACK[0xBFC] + v10) = v8;
  LODWORD(v10) = v10 + 1;
  LODWORD(STACK[0xA48]) = v10;
  return (*(a7 + 8 * ((91 * (v10 < ((a8 - 524) ^ 0x33D))) ^ (v9 + 272))))();
}

uint64_t sub_B21B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8 - 1293;
  v10 = v9 + LODWORD(STACK[0xFF4]) - 1018;
  v11 = STACK[0x4BC];
  LODWORD(STACK[0xF6C]) = v7;
  LODWORD(STACK[0xFF4]) = v10;
  return (*(a7 + 8 * (((v10 > v11) * (((v9 - 999) ^ 0x1BF) + v9 + 592)) ^ v9)))();
}

uint64_t sub_B21FC@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned int a26)
{
  v30 = v28[396] ^ ((*v28 & 0x7FFFFFFE | v28[623] & 0x80000000) >> 1);
  v28[623] = (v30 + v26 - (v29 & (2 * v30))) ^ *(&STACK[0x4C8] + (*v28 & 1));
  return (*(a1 + 8 * ((2921 * (a26 > ((a2 - 1091176444) & 0xC7FAFFF7) + v27)) ^ a2)))();
}

uint64_t sub_B2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x408] - 1999;
  v5 = LOWORD(STACK[0x120E]);
  STACK[0x8A8] = STACK[0x1210];
  return (*(STACK[0x430] + 8 * ((3631 * (v5 == 27753)) ^ v4)))(a1, a2, a3, a4, 0x4E179E9CD88A77F9);
}

uint64_t sub_B22E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = (v9 + 169) | 0x10A;
  *a1 = -1359724707;
  *(a1 + 68) = 1847801936;
  *(a1 + 28) = 0;
  *(a1 + 80) = a1;
  *(a1 + 312) = 3;
  *(a1 + 197) = 0;
  *(a1 + 176) = 32;
  *(a1 + 8) = -898989863;
  *(a1 + 32) = 0x2000000000;
  *(a1 + 40) = 0;
  STACK[0xA40] = a1;
  v11 = *a9;
  STACK[0x818] = a1;
  LOBYTE(STACK[0xE0F]) = 0;
  return (*(a7 + 8 * (((v11 == 0) * (3 * (v10 ^ 0x2D1) - 2293)) ^ v10)))();
}

void sub_B2390()
{
  v1 = v0 - 405;
  *STACK[0xCC8] = 0;
  v2 = STACK[0x710];
  v3 = STACK[0x550];
  *(v3 + 12) = *(STACK[0x710] - 0x6B555BBDDC267349) + 753769487;
  *(v3 + 16) = *(v2 - 0x6B555BBDDC267345) - 89316781;
  LODWORD(STACK[0x4BC]) = ((((*(STACK[0xCD0] + 44) >> 3) ^ 0x324DB3EA) + 1638882569) ^ (((*(STACK[0xCD0] + 44) >> 3) ^ 0xA564728E) - 158950291) ^ (((*(STACK[0xCD0] + 44) >> 3) ^ (((v1 + 1223898871) & 0xB70CC3FB) - 1758872215)) - 993316985)) - 1407381218;
  JUMPOUT(0xB21C4);
}

uint64_t sub_B247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 8);
  *(v9 - 216) = (v8 - 147) ^ (1643603977 * ((2 * ((v9 - 240) & 0x61E9B4E0) - (v9 - 240) - 1642706148) ^ 0x714D53B4));
  *(v9 - 224) = &STACK[0xE54];
  *(v9 - 240) = v10;
  v11 = (*(a7 + 8 * (v8 + 3219)))(v9 - 240);
  return (*(STACK[0x430] + 8 * ((2956 * (LODWORD(STACK[0xE54]) == (v8 ^ 0x1151F4E1))) ^ v8)))(v11);
}

uint64_t sub_B2538@<X0>(int a1@<W0>, uint64_t a2@<X4>, int a3@<W8>)
{
  if (v3 <= 0x10 && ((1 << v3) & 0x12105) != 0)
  {
    return sub_B258C();
  }

  else
  {
    return (*(a2 + 8 * ((((*(v5 + a3 * v4 + 40) >> 3) & 1) * ((a1 ^ 0x2E0) - 2429)) ^ (a1 - 1526))))();
  }
}

uint64_t sub_B2740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  *(v18 - 136) = v15 + ((((v18 - 136) | 0xF3AEC787) - ((v18 - 136) & 0xF3AEC787)) ^ 0x154162DC) * v17 + 493;
  v19 = (*(v16 + 8 * (v15 ^ 0xF17)))(v18 - 136);
  return (*(v16 + 8 * ((74 * (*(v18 - 112) - 1903883946 >= ((v15 - 2139685766) & 0x7F890BF1 ^ 0xC65BA33A))) | v15)))(v19);
}

uint64_t sub_B2844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, char a23, __int16 a24, char a25, uint64_t a26, char a27)
{
  v31 = 1327116359 * ((((2 * (v30 - 160)) | 0xFD8C5960) - (v30 - 160) + 20566864) ^ 0x182989EB);
  *(v30 - 128) = v31 + a6 + ((v29 - 2127) | 0xC70) + 281251388;
  *(v30 - 160) = v31 + v29 + 1488;
  *(v30 - 120) = &a25;
  *(v30 - 112) = &a23;
  *(v30 - 144) = &a21;
  *(v30 - 136) = v28;
  *(v30 - 152) = &a27;
  v32 = (*(v27 + 8 * (v29 + 1577)))(v30 - 160);
  return (*(v27 + 8 * ((480 * (*(v30 - 124) == v29 + 1682694202)) ^ v29)))(v32, 3698120207, 1076192132, 1209905666, 596847610, a6, 3218775163);
}

uint64_t sub_B29F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x1438] = v9;
  STACK[0x1440] = a8;
  if ((v8 - 1805022198) < 2)
  {
    STACK[0x1508] = 0;
    return (*(a7 + 8 * ((7 * (((v9 == 0) ^ (v10 + 87)) & 1)) ^ (v10 - 1899))))(a1, a2, a3, a4, a5, a6);
  }

  else if (v8 == 1805022196 || v8 == 1805022201)
  {
    v12 = (*v9 & 0xFE) == 0;
    LOBYTE(STACK[0x144E]) = *v9 & 0xFE;
    v13 = !v12;
    v14 = v12;
    LOBYTE(STACK[0x144F]) = v14;
    return (*(a7 + 8 * ((98 * v13) ^ (v10 - 2023))))(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return sub_B2B48(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_B2BA4@<X0>(unsigned int a1@<W1>, unsigned int a2@<W6>, int a3@<W7>, uint64_t a4@<X8>)
{
  v9 = (v8 + v6) & v7;
  v10 = v4 + 1;
  if (a1 < v5 != v10 > a2)
  {
    v11 = a1 < v5;
  }

  else
  {
    v11 = v10 + v5 < a1;
  }

  return (*(a4 + 8 * ((!v11 * a3) ^ v9)))();
}

uint64_t sub_B2CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v9 = (*(a7 + 8 * (v7 ^ 0xB7D)))(26, 0x100004077774924);
  v10 = STACK[0x430];
  *(a1 + 24) = v9;
  return (*(v10 + 8 * ((1018 * (((v7 + 96) ^ (v9 == 0)) & 1)) ^ v7)))();
}

uint64_t sub_B2D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1390] = v8;
  v9 = STACK[0x458];
  STACK[0x1398] = STACK[0x458];
  return (*(a7 + 8 * (((v8 - v9 > (1427 * (v7 ^ 0x1C6u)) - 2845) * (((v7 - 259) | 4) + 2375)) ^ v7)))();
}

uint64_t sub_B2F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x640] = v7 + 8;
  v9 = STACK[0xCB8];
  LODWORD(STACK[0xB4C]) = STACK[0xAFC];
  STACK[0x6A8] = v9;
  STACK[0xA60] = 0;
  LODWORD(STACK[0x974]) = -1340669477;
  STACK[0xB90] = 0x998FFE99D41095B1;
  STACK[0xB68] = 0;
  v10 = (*(a7 + 8 * (v8 + 2430)))(16, 0x20040A4A59CD2);
  v11 = STACK[0x430];
  STACK[0x888] = v10;
  return (*(v11 + 8 * (((v10 == 0) * (1229 * (v8 ^ 0x508) + ((v8 + 1564) ^ 0xFFFFFDB1))) | v8)))();
}

uint64_t sub_B309C@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  STACK[0xBE0] = 0;
  STACK[0xED8] = 0;
  STACK[0x920] = *(a1 + 8 * v2);
  return sub_9AD6C(a1, a2);
}

uint64_t sub_B3138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 ^ 0x60D)))(64, v8);
  v10 = STACK[0x430];
  STACK[0x4B0] = v9;
  return (*(v10 + 8 * (((v9 == 0) * ((v7 - 1492) ^ 0x983 ^ (v7 - 1344822414) & 0x50285F2E)) ^ v7)))();
}

uint64_t sub_B31B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v18 = a4 + a6 + 3;
  v19 = ((((v18 ^ 0x137511F5) + 2092009999) ^ v18 ^ ((v18 ^ 0x5A090D35) + 902665935) ^ (((v16 + 645954416) ^ v18) + 1229200609) ^ ((v18 ^ 0xFFC7F7F7 ^ (2 * v16) ^ 0x1F7E) - 1878825947)) & 0xFFFFFFFC ^ 0x903B6404) - a16 == -1209905667;
  return (*(v17 + 8 * (((2 * v19) | (4 * v19)) ^ v16)))();
}

uint64_t sub_B327C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v9 = *v8;
  v10 = (810 * (a4 & 0xF) - 971 * (((13995990 * (a4 & 0xFu)) >> 16) >> 8));
  *v8 = v8[v10];
  v11 = a4 - v5;
  v12 = v4 % 0xE;
  v8[v10] = v9;
  LOBYTE(v10) = v8[810];
  v13 = (810 * (v5 % 0xF) + 810 - 971 * (((810 * (v5 % 0xF) + 810) & 0xFFFE) / 0x3CB));
  v14 = v4 - v5;
  v8[810] = v8[v13];
  v8[v13] = v10;
  LODWORD(STACK[0x57C]) = 1620;
  v15 = (810 * v12 + 1620 - 971 * (((810 * v12 + 1620) & 0xFFFEu) / 0x3CB));
  v16 = v8[649];
  v8[649] = v8[v15];
  v8[v15] = v16;
  LOBYTE(v15) = v8[488];
  LODWORD(STACK[0x4AC]) = 2430;
  v17 = (810 * (v6 % 0xD) + 2430 - 971 * (((810 * (v6 % 0xD) + 2430) & 0xFFFE) / 0x3CB));
  v18 = v5 ^ 0x9CCA4FCC;
  v19 = v18 ^ v14;
  v20 = v11 + (v18 ^ v14);
  v8[488] = v8[v17];
  v21 = v6 - a4 - v20;
  v8[v17] = v15;
  LODWORD(v15) = v18 - v21;
  v22 = (810 * (v20 % 0xC) + 3240 - 971 * (((810 * (v20 % 0xC) + 3240) & 0xFFFE) / 0x3CB));
  v23 = v8[327];
  v8[327] = v8[v22];
  v8[v22] = v23;
  LODWORD(STACK[0x580]) = 4050;
  v24 = (810 * (v15 % 0xB) + 4050 - 971 * (((810 * (v15 % 0xB) + 4050) & 0xFFFE) / 0x3CB));
  v25 = v8[166];
  v8[166] = v8[v24];
  v8[v24] = v25;
  LOBYTE(v24) = v8[5];
  v26 = (810 * (v19 % 0xA) + 4860 - 971 * (((810 * (v19 % 0xA) + 4860) & 0xFFFE) / 0x3CB));
  v8[5] = v8[v26];
  v8[v26] = v24;
  LOBYTE(v26) = v8[815];
  LODWORD(v24) = v15 + 1466251112;
  v27 = (810 * (v21 % 9) + 5670 - 971 * (((810 * (v21 % 9) + 5670) & 0xFFFE) / 0x3CB));
  v28 = v15 + 1466251112;
  v8[815] = v8[v27];
  v29 = (-v11 ^ 0x3446B931 ^ (v11 + 877050161 - ((2 * v11) & 0x688D7262)) ^ (v20 + 406767527 - ((v20 + 406767527) ^ -v11))) + v20 + 406767527;
  v30 = (v15 + 568895121) ^ (v21 + v11);
  v8[v27] = v26;
  v31 = (810 * (v29 & 7) + 6480 - 971 * (((17279 * (810 * (v29 & 7u) + 6480)) >> 16) >> 8));
  LOBYTE(v26) = v8[654];
  v8[654] = v8[v31];
  v8[v31] = v26;
  LOBYTE(v27) = v8[493];
  v32 = (810 * (v28 % 7) + 7290 - 971 * (((17279 * ((810 * (v28 % 7) + 7290) & 0xFFFE)) >> 16) >> 8));
  v8[493] = v8[v32];
  v8[v32] = v27;
  LOWORD(v27) = 810 * ((1648263203 - v11) % 6u) + 8100;
  v33 = (v27 - 971 * (((17279 * (v27 & 0xFFFE)) >> 16) >> 8));
  LOBYTE(v19) = v8[332];
  v8[332] = v8[v33];
  v8[v33] = v19;
  v34 = v29 - v30;
  LOWORD(v33) = 810 * (v30 % 5) + 8910 - 971 * (((810 * (v30 % 5) + 8910) & 0xFFFE) / 0x3CB);
  LOBYTE(v32) = v8[171];
  v8[171] = v8[v33];
  LODWORD(v24) = v34 + v24;
  LOBYTE(v30) = (35 - v11) ^ 0x85 ^ v30 ^ v24;
  v8[v33] = v32;
  LODWORD(v31) = 810 * ((v34 - v30) & 3) + 9720;
  LOBYTE(v34) = v8[10];
  v35 = (v31 - 971 * (((17279 * v31) >> 16) >> 8));
  v8[10] = v8[v35];
  LOBYTE(v30) = v30 + v11;
  v8[v35] = v34;
  LOBYTE(v11) = v8[820];
  v36 = (810 * ((v24 - 695926532) % 3u) + 10530 - 971 * (((17279 * ((810 * ((v24 - 695926532) % 3u) + 10530) & 0xFFFE)) >> 16) >> 8));
  v8[820] = v8[v36];
  v8[v36] = v11;
  v37 = (v30 & 1) == 0;
  v38 = 659;
  if (!v37)
  {
    v38 = 498;
  }

  v39 = v8[659];
  v8[659] = v8[v38];
  STACK[0x598] = v8;
  v8[v38] = v39;
  v40 = 810 * (*STACK[0x598] ^ 0xDF) + 55890;
  *(STACK[0x598] + (v40 - 971 * ((v40 * v7) >> 32))) = -33;
  return (*(STACK[0x570] + 8 * a2))();
}

uint64_t sub_B37A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (v7 - 1100) | 0xC2;
  (*(a7 + 8 * (v7 ^ 0x9E7)))();
  v10 = STACK[0x430];
  *(v8 + 24) = 0;
  v11 = (*(v10 + 8 * (v9 + 2727)))(v8);
  return sub_CD380(v11, v12, v13, v14, 0x4E179E9CD88A77F9, v15, STACK[0x430]);
}

uint64_t sub_B37F8()
{
  v1 = STACK[0x2D0];
  v2 = STACK[0x2E0];
  v3 = STACK[0x2E0] ^ 0x29;
  v4 = STACK[0x2E0] ^ 0x4A;
  STACK[0x2C0] = STACK[0x2E0] ^ 0x51;
  STACK[0x270] = (v1 + 1381) ^ v2;
  return sub_BAD20(v4, (v1 + 101) ^ v2, v3, v2 ^ v0, v2 ^ 0x5Bu, v2 ^ 0x13u);
}

uint64_t sub_B38D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = STACK[0x870];
  STACK[0x6B8] = STACK[0xEF0] ^ 0xCA4341AAF7536FB3;
  STACK[0x8C0] = 0;
  STACK[0xA40] = 0;
  LODWORD(STACK[0xF14]) = v10 ^ 0xF7536FB3;
  return (*(STACK[0x430] + 8 * (((*a9 != 0) * (((((2 * v9) ^ 0x1C9E) - 770) | 0x302) ^ 0xB25)) ^ v9)))();
}

uint64_t sub_B397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x91C]) = v8;
  STACK[0xC60] = *(a7 + 8 * (v7 - 2773));
  return sub_23C2C(a7, v7 + 211);
}

uint64_t sub_B3998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = STACK[0x390];
  STACK[0x12B0] = STACK[0x390];
  v8 = (STACK[0x208] + 1336 * v7 + 256);
  STACK[0x350] = v8;
  LODWORD(STACK[0x750]) = *v8;
  STACK[0xD90] += 80;
  v9 = ((&STACK[0x448] ^ 0x7FBAEEFF77FFF87BLL) - 0x7FBAEEFF77FFF87BLL + ((v4 ^ 0xFF75DDFEEFFFF2F3) & (2 * &STACK[0x448]))) % 0x25;
  STACK[0x370] = (2 * v9) & 0x16;
  STACK[0x360] = (v9 ^ 0x5F1F9FF7DF0DB3CBLL) - 0x5F1F9FF7DF0DB3BBLL;
  STACK[0x420] = STACK[0x510];
  v10 = *(v5 + 8 * (v4 ^ 0x173));
  STACK[0x380] = v6;
  return v10(4, a2, &off_103F00, a4, v5);
}

uint64_t sub_B3B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(&off_103F00 + v14 - 2681) - 12;
  v16 = *(&off_103F00 + (v14 & 0x26E5426)) - 4;
  HIDWORD(a12) = (((v13 ^ 0x2EB5074A) + 1997090211) ^ ((v13 ^ 0x11B0E3FB) + 1208797460) ^ ((v13 ^ 0xCFF2B032) - 1773233445)) - 2147207372;
  return sub_B3E1C(42, 230, 58, v16, &off_103F00, 0, *(&off_103F00 + v14 - 2806), v15, a9, a10, v12, a12, v16, v15);
}

uint64_t sub_B3E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  HIDWORD(a19) = 0;
  v25 = a6;
  v26 = a18 + a6;
  v128 = (v22 + 826) | 0x201u;
  v27 = __ROR8__(v26 & (v128 - 2819), 8);
  v28 = (v27 + 0x572D1AAD66CAC63) ^ 0x435136F8B8AFD1EBLL;
  v29 = __ROR8__(v27 - (((v27 + 0x572D1AAD66CAC63) << (v22 ^ 0xC1u)) & 0xD18F775C179565E6) + 0x6E3A8D58E2375F56, 8) + v28;
  v30 = __ROR8__(v28, 61) ^ 0x966044356911701BLL ^ v29;
  v31 = ((__ROR8__(v29, 8) ^ 0x1B96604435691170) + v30) ^ 0xA4328065E6C335DFLL;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (v33 + v32) ^ 0x86DDB2288368D06BLL;
  v36 = __ROR8__(v33, 61);
  v35 = v34 ^ v36;
  v37 = ((v34 ^ v36) + (v34 >> 8) + (v34 << 56)) ^ 0x2B696A9D9058C2B6;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x4ECDBB75EB25F542;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x378E99CADDA07335;
  v42 = __ROR8__(v41, 8);
  v43 = __ROR8__((v26 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = (v43 + 0x572D1AAD66CAC63) ^ 0x435136F8B8AFD1EBLL;
  v45 = v41 ^ __ROR8__(v40, 61);
  v46 = (v44 + (((v43 + 0x572D1AAD66CAC63) ^ 0x68C7BBAE0BCAB2F3uLL) >> 8) + (((v43 + 0x572D1AAD66CAC63) ^ 0x68C7BBAE0BCAB2F3) << 56)) ^ 0x966044356911701BLL ^ __ROR8__(v44, 61);
  v47 = (v46 + __ROR8__((v44 + (((v43 + 0x572D1AAD66CAC63) ^ 0x68C7BBAE0BCAB2F3uLL) >> 8) + (((v43 + 0x572D1AAD66CAC63) ^ 0x68C7BBAE0BCAB2F3) << 56)) ^ 0x966044356911701BLL, 8)) ^ 0xA4328065E6C335DFLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x86DDB2288368D06BLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x2B696A9D9058C2B6;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (v52 + __ROR8__(v51, 8)) ^ 0x4ECDBB75EB25F542;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (v54 + __ROR8__(v53, 8)) ^ 0x378E99CADDA07335;
  v56 = 8 * (v26 & 7);
  v57 = ((v42 + v45) ^ 0xE2A4B35BAE269AA1) >> v56;
  v58 = ((v55 ^ __ROR8__(v54, 61)) + __ROR8__(v55, 8)) ^ 0xE2A4B35BAE269AA1;
  LOBYTE(v55) = v56 ^ 0x3C;
  v59 = v57 + 16 * (v58 << (v56 ^ 0x3Cu));
  v60 = *v26;
  v61 = __ROR8__((v26 + 16) & 0xFFFFFFFFFFFFFFF8, 8) + 0x572D1AAD66CAC63;
  v62 = __ROR8__(v61 ^ 0x68C7BBAE0BCAB2F3, 8);
  v61 ^= 0x435136F8B8AFD1EBuLL;
  v63 = __ROR8__((v62 + v61) ^ 0x966044356911701BLL, 8);
  v64 = (v62 + v61) ^ 0x966044356911701BLL ^ __ROR8__(v61, 61);
  v65 = (v63 + v64) ^ 0xA4328065E6C335DFLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x86DDB2288368D06BLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x2B696A9D9058C2B6;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (v70 + __ROR8__(v69, 8)) ^ 0x4ECDBB75EB25F542;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = v58 >> v56;
  v75 = v74 + 16 * (((__ROR8__(((v72 ^ v73) + 2 * (v73 & v72)) ^ 0x378E99CADDA07335, 8) + (((v72 ^ v73) + 2 * (v73 & v72)) ^ __ROR8__(v72, 61) ^ 0x78E99CADDA07335)) ^ 0x2A4B35BAE269AA1) << v55);
  LODWORD(v58) = ((*(a13 + (v57 ^ 0x11)) ^ 0xE4) << 24) | ((*(a15 + (BYTE1(v59) ^ 0x77)) ^ (BYTE1(v59) - ((v59 >> 7) & 0x30) + 24) ^ 0x34) << 16) | (((*(a14 + (BYTE2(v59) ^ 1)) + 56) ^ 0x7E) << 8) | (*(a16 + (BYTE3(v59) ^ 0x91)) + 8) ^ 0x7B;
  LODWORD(v72) = ((*(a13 + (BYTE4(v59) ^ 0x4ELL)) ^ 0x69) << 24) | ((*(a15 + (BYTE5(v59) ^ 0xF3)) ^ (BYTE5(v59) - ((2 * BYTE5(v59)) & 0x30) + 24) ^ 0x64) << 16) | (((*(a14 + (BYTE6(v59) ^ 0x9CLL)) + 56) ^ 0xED) << 8) | (*(a16 + (HIBYTE(v59) ^ 0x43)) + 8);
  LODWORD(v74) = ((*(a13 + (v74 ^ 0x6BLL)) ^ 0xFE) << 24) | ((*(a15 + (BYTE1(v75) ^ 0xC0)) ^ (BYTE1(v75) - ((v75 >> 7) & 0x30) + 24) ^ 0xC0) << 16) | (((*(a14 + (BYTE2(v75) ^ 0xE6)) + 56) ^ 0x4D) << 8) | ((*(a16 + (BYTE3(v75) ^ 0x4ALL)) ^ 5) + 8);
  LODWORD(v59) = ((*(a13 + (BYTE4(v75) ^ 4)) ^ 0x54) << 24) | ((*(a15 + (BYTE5(v75) ^ 0x67)) ^ (BYTE5(v75) - ((2 * BYTE5(v75)) & 0x30) + 24) ^ 0x3C) << 16) | (((*(a14 + (BYTE6(v75) ^ 0x42)) + 56) ^ 0x3E) << 8) | (*(a16 + (HIBYTE(v75) ^ 0xDB)) + 8) ^ 0x84;
  v131 = a6 | 0xDLL;
  v76 = *(a18 + v131);
  v135 = a6 | 9;
  v133 = a6 | 0xCLL;
  v134 = a6 | 0xBLL;
  v129 = a6 | 0xALL;
  v130 = a6 | 6;
  v132 = a6 | 0xELL;
  LOBYTE(v63) = *(a14 + (*(a18 + v132) ^ 0xD9));
  LOBYTE(v71) = v63 & 0x23 ^ 0x33;
  v77 = ((2 * v63) ^ (4 * ((v63 ^ 0x1C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * v71) ^ v71)) ^ v71)) ^ v71)) ^ v71))) & 0x76 ^ 0x46;
  LOBYTE(v71) = v63 & 0x35 ^ 0xAC;
  v78 = v63 & 0xF ^ 9;
  LODWORD(v75) = ((*(a15 + (v76 ^ 0x32)) ^ (v76 - ((2 * v76) & 0x30) + 24) ^ 0xE6) << 16) | ((*(a13 + (*(a18 + v133) ^ 0x68)) ^ 0xAAAAAAAA) << 24) | ((((v63 ^ (v77 - ((2 * v77) & 0xC0) - 24) ^ (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * (((2 * v63) & 0xFB ^ 0x72) & v63 ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ 0xDC) + 2 * ((v63 ^ (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * ((v63 ^ 0x7C) & (2 * v71) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ 6) & v77)) ^ 4) << 8) | (*(a16 + (*(a18 + (v25 | 0xF)) ^ 0x7DLL)) + 8);
  LODWORD(v71) = (*(a16 + (*(a18 + v134) ^ 0x47)) + 8) ^ 0x3F | ((*(a15 + (*(a18 + v135) ^ 0xD0)) ^ (*(a18 + v135) - ((2 * *(a18 + v135)) & 0x30) + 24) ^ 0x1A) << 16) | (((*(a14 + (*(a18 + v129) ^ 0x75)) + 56) ^ 0xF3) << 8) | ((*(a13 + (*(a18 + (v25 | 8)) ^ 0x99)) ^ 0xFE) << 24);
  v79 = v72 ^ HIDWORD(a21) ^ ((((*(a14 + (*(a18 + v130) ^ 0xCFLL)) + 56) ^ 0x83) << 8) | ((*(a13 + (*(a18 + (v25 | 4)) ^ 0xA9)) ^ 0xD9) << 24) | (*(a16 + (*(a18 + (v25 | 7)) ^ 0x51)) + 8) | ((*(a15 + (*(a18 + (v25 | 5)) ^ 0xBBLL)) ^ (*(a18 + (v25 | 5)) - ((2 * *(a18 + (v25 | 5))) & 0x30) + 24) ^ 0xC7) << 16));
  LODWORD(v72) = (v59 ^ HIDWORD(a22) ^ v75) - ((2 * (v59 ^ HIDWORD(a22) ^ v75)) & 0x19597EE0) + 212647792;
  LODWORD(v74) = (v71 ^ a22 ^ v74) - ((2 * (v71 ^ a22 ^ v74)) & 0x39C1A046);
  LODWORD(v76) = v58 ^ v24 ^ ((*(a16 + (*(a18 + (v25 | 3)) ^ 0xF7)) + 8) ^ 0x10 | ((*(a13 + (v60 ^ 0x33)) ^ 0xE8) << 24) | ((*(a15 + (*(a18 + (v25 | 1)) ^ 0x69)) ^ (*(a18 + (v25 | 1)) - ((2 * *(a18 + (v25 | 1))) & 0x30) + 24) ^ 0xE2) << 16) | (((*(a14 + (*(a18 + (v25 | 2)) ^ 1)) + 56) ^ 0xAC) << 8));
  LODWORD(v75) = v79 - ((2 * v79) & 0x3B71A308) - 1648832124;
  v80 = *(&off_103F00 + v22 - 1198) - 4;
  v81 = *(&off_103F00 + (v22 ^ 0x519)) - 4;
  LODWORD(v71) = *&v80[4 * ((v75 ^ 0xB579) >> 8)] ^ *&v81[4 * (BYTE3(v72) ^ 0x5B)] ^ 0x7530428F;
  LODWORD(v63) = v71 - 1135243401 - ((2 * v71) & 0x78AB1EEE);
  v82 = *(&off_103F00 + v22 - 1320);
  v83 = (v23 + v72 - ((2 * v72) & 0xF8)) ^ *(v82 + 4 * (v72 ^ 0x72u));
  LOBYTE(v71) = v74 - 1;
  LODWORD(v74) = v74 - 1662988253;
  v84 = v74 ^ 0x2E642DF4;
  LODWORD(v76) = v76 - ((2 * v76) & 0xFF094732) - 8084583;
  v85 = *(&off_103F00 + (v22 ^ 0x543));
  LODWORD(v74) = *(v85 + 4 * ((v76 ^ 0xEC3ED0E9) >> 16)) ^ (v23 + (v74 ^ 0xF4) - 2 * ((v74 ^ 0x2E642DF4) & 0x7E ^ v71 & 2)) ^ *(v82 + 4 * (v74 ^ 0x86u)) ^ v63;
  LODWORD(v63) = (v83 - 1135243401 - ((2 * v83) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v75 ^ 0x709BB579) >> 16));
  v86 = *&v81[4 * HIBYTE(v84)] ^ 0x7530428F ^ *&v80[4 * ((v76 ^ 0xD0E9) >> 8)];
  LODWORD(v63) = (v63 + 628906473 - ((2 * v63) & 0x4AF8B3D2)) ^ *&v81[4 * ((v76 ^ 0xEC3ED0E9) >> 24)];
  LODWORD(v59) = *(v85 + 4 * (((v72 ^ 0xEA5DC4F3) >> 16) ^ 0x44u)) ^ (v23 + (v75 ^ 0x79) - ((2 * (v75 ^ 0x709BB579)) & 0xF8)) ^ *(v82 + 4 * (v75 ^ 0xBu)) ^ (v86 - 1135243401 - ((2 * v86) & 0x78AB1EEE));
  LODWORD(v76) = *(v85 + 4 * BYTE2(v84)) ^ 0x9929D69E ^ (v23 + (v76 ^ 0xE9) - ((2 * (v76 ^ 0xEC3ED0E9)) & 0xF8)) ^ *&v81[4 * ((v75 ^ 0x709BB579) >> 24)] ^ *(v82 + 4 * (v76 ^ 0x9Bu));
  LODWORD(v72) = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * (BYTE1(v72) ^ 0x9F)];
  LODWORD(v63) = (v63 + 1347165030 - ((2 * v63) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v84)];
  LOBYTE(v76) = v63 ^ 0x2B;
  v87 = *(v82 + 4 * (v74 ^ 0x3Eu)) ^ (v23 + (v74 ^ 0x4C) - 2 * ((v74 ^ 0xB60A7B4C) & 0x7D ^ v74 & 1));
  v88 = *&v81[4 * ((v74 ^ 0xB60A7B4C) >> 24)] ^ 0x9929D69E ^ *(v85 + 4 * (((v63 ^ 0x572B322B) >> 16) ^ 0x42u));
  v89 = *&v80[4 * ((v59 ^ 0xCCDE) >> 8)] ^ (v87 + 1347165031 + ~((2 * v87) & 0xA09836CC));
  v90 = (v23 + (v72 ^ 0xC0) - 2 * ((v72 ^ 0x9F2CA6C0) & 0x7D ^ v72 & 1)) ^ *(v82 + 4 * (v72 ^ 0xB2u));
  v91 = (v90 + 628906473 - ((2 * v90) & 0x4AF8B3D2)) ^ *&v81[4 * ((v59 ^ 0xBBCECCDE) >> 24)];
  LODWORD(v63) = v63 ^ 0xE47E5599;
  v92 = (v91 + 1347165030 - ((2 * v91) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v63)];
  LODWORD(v76) = (v23 + v63 + (~(2 * v63) | 0xFFFFFF07) + 1) ^ *(v82 + 4 * (v76 ^ 0xC0u));
  LODWORD(v71) = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * (BYTE1(v74) ^ 0x7B)];
  LODWORD(v76) = (v92 - 1135243401 - ((2 * v92) & 0x78AB1EEE)) ^ *(v85 + 4 * (BYTE2(v74) ^ 0x1Du));
  LODWORD(v75) = *&v81[4 * BYTE3(v63)] ^ (v89 + 628906473 - ((2 * v89) & 0x4AF8B3D2));
  LODWORD(v75) = (v75 - 1135243401 - ((2 * v75) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v72 ^ 0x9F2CA6C0) >> 16));
  LODWORD(v63) = *&v80[4 * ((v72 ^ 0xA6C0) >> 8)] ^ (v88 + 1347165030 - ((2 * v88) & 0xA09836CC));
  LODWORD(v72) = (v71 + 628906473 - ((2 * v71) & 0x4AF8B3D2)) ^ *&v81[4 * (BYTE3(v72) ^ 0x53)];
  LODWORD(v74) = (v72 - 1135243401 - ((2 * v72) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v59 ^ 0xBBCECCDE) >> 16));
  LODWORD(v72) = *(v82 + 4 * (v59 ^ 0xACu)) ^ v59 ^ 0xDE ^ (v63 + v23 - ((2 * v63) & 0xF2D5DEF8));
  LODWORD(v71) = v76 ^ 0xDBCBAC15;
  v93 = v75 ^ 0x3329C60B;
  LODWORD(v76) = (v23 + (v76 ^ 0x15) - ((2 * (v76 ^ 0xDBCBAC15)) & 0xF8)) ^ *(v82 + 4 * (v76 ^ 0x67u));
  LODWORD(v76) = (v76 - 1135243401 - ((2 * v76) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v75 ^ 0x3329C60B) >> 16));
  LODWORD(v63) = *&v80[4 * ((v75 ^ 0xC60B) >> 8)] ^ *&v81[4 * BYTE3(v71)] ^ 0x7530428F;
  LODWORD(v59) = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * ((v74 ^ 0x9D28) >> 8)];
  v94 = *&v80[4 * BYTE1(v71)] ^ *(v85 + 4 * ((v74 ^ 0x523B9D28) >> 16));
  BYTE1(v76) = BYTE1(v72) ^ 0x2A;
  LODWORD(v59) = (v59 + 628906473 - ((2 * v59) & 0x4AF8B3D2)) ^ *&v81[4 * ((v72 ^ 0x5FE82ABA) >> 24)];
  LODWORD(v71) = (v23 + (v75 ^ 0xB) - ((2 * (v75 ^ 0x3329C60B)) & 0xF8)) ^ 0x9929D69E ^ *(v85 + 4 * BYTE2(v71)) ^ *(v82 + 4 * (v75 ^ 0x79u)) ^ *&v81[4 * ((v74 ^ 0x523B9D28) >> 24)];
  LODWORD(v75) = *(v85 + 4 * ((v72 ^ 0x5FE82ABA) >> 16)) ^ (v63 - 1135243401 - ((2 * v63) & 0x78AB1EEE)) ^ *(v82 + 4 * (v74 ^ 0x5Au)) ^ (v23 + (v74 ^ 0x28) - 2 * ((v74 ^ 0x523B9D28) & 0x7E ^ v74 & 2));
  LODWORD(v72) = ((v94 ^ 0xEC199411) + 628906473 - 2 * ((v94 ^ 0xEC199411) & 0x257C59EF ^ v94 & 6)) ^ (v23 + (v72 ^ 0xBA) - 2 * ((v72 ^ 0x5FE82ABA) & 0x7D ^ v72 & 1)) ^ *&v81[4 * HIBYTE(v93)] ^ *(v82 + 4 * (v72 ^ 0xC8u));
  LODWORD(v76) = (v71 + 1347165030 - ((2 * v71) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v76)];
  LODWORD(v74) = v72 ^ 0x2922C76A;
  v95 = v76 ^ 0x4927A7A1;
  LODWORD(v72) = (v23 + (v72 ^ 0x6A) - ((2 * (v72 ^ 0x2922C76A)) & 0xF8)) ^ *(v82 + 4 * (v72 ^ 0x18u));
  LODWORD(v76) = (v23 + (v76 ^ 0xA1) - ((2 * (v76 ^ 0x4927A7A1)) & 0xF8)) ^ *(v82 + 4 * (v76 ^ 0xD3u));
  LODWORD(v76) = (v76 + 628906473 - ((2 * v76) & 0x4AF8B3D2)) ^ *&v81[4 * ((v75 ^ 0xA0D2F657) >> 24)];
  LODWORD(v71) = v76 + 1347165030 - ((2 * v76) & 0xA09836CC);
  LODWORD(v76) = v59 ^ 0xCD04210E;
  v96 = *(v85 + 4 * ((v59 ^ 0xCD04210E) >> 16));
  LODWORD(v63) = (v72 + 1347165030 - ((2 * v72) & 0xA09836CC)) ^ *&v80[4 * ((v59 ^ 0x210E) >> 8)];
  HIDWORD(v73) = v96 ^ 0x77777777;
  LODWORD(v73) = v96 ^ 0xBC558C00;
  LODWORD(v72) = *&v80[4 * BYTE1(v74)] ^ __ROR4__((v73 >> 10) ^ 0xD306A3E4, 22) ^ v71;
  v97 = *&v80[4 * BYTE1(v95)] ^ 0xEC199411 ^ *(v85 + 4 * BYTE2(v74));
  LODWORD(v71) = (v63 - 1135243401 - ((2 * v63) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v75 ^ 0xA0D2F657) >> 16));
  LODWORD(v71) = (v71 + 628906473 - ((2 * v71) & 0x4AF8B3D2)) ^ *&v81[4 * HIBYTE(v95)];
  LODWORD(v59) = *&v81[4 * BYTE3(v74)] ^ *(v85 + 4 * BYTE2(v95)) ^ (v23 + (v59 ^ 0xE) - ((2 * (v59 ^ 0xCD04210E)) & 0xF8)) ^ *(v82 + 4 * (v59 ^ 0x7Cu));
  LODWORD(v59) = ((v59 ^ 0x9929D69E) + 1347165030 - 2 * ((v59 ^ 0x9929D69E) & 0x504C1B67 ^ v59 & 1)) ^ *&v80[4 * ((v75 ^ 0xF657) >> 8)];
  LODWORD(v74) = *&v81[4 * BYTE3(v76)] ^ (v23 + (v75 ^ 0x57) - ((2 * (v75 ^ 0xA0D2F657)) & 0xF8)) ^ *(v82 + 4 * (v75 ^ 0x25u)) ^ (v97 + 628906473 - ((2 * v97) & 0x4AF8B3D2));
  BYTE2(v75) = BYTE2(v71) ^ 0xB1;
  v98 = (v23 + (v71 ^ 0x83) - ((2 * v71) & 0xF8)) ^ *(v82 + 4 * (v71 ^ 0xF1u));
  LODWORD(v76) = (v23 + (v59 ^ 0xC1) - 2 * ((v59 ^ 0x6ABF01C1) & 0x7E ^ v59 & 2)) ^ *(v82 + 4 * (v59 ^ 0xB3u));
  v99 = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * ((v74 ^ 0x8CDA) >> 8)];
  v100 = (v99 + 628906473 - ((2 * v99) & 0x4AF8B3D2)) ^ *&v81[4 * ((v71 ^ 0xDDB15B83) >> 24)];
  LODWORD(v63) = (v98 + 1347165030 - ((2 * v98) & 0xA09836CC)) ^ *&v80[4 * ((v59 ^ 0x1C1) >> 8)];
  v101 = *&v81[4 * ((v74 ^ 0xB0678CDA) >> 24)] ^ 0x7530428F ^ *&v80[4 * ((v71 ^ 0x5B83) >> 8)];
  LODWORD(v63) = (v63 - 1135243401 - ((2 * v63) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v74 ^ 0xB0678CDA) >> 16));
  v102 = (v63 + 628906473 - ((2 * v63) & 0x4AF8B3D2)) ^ *&v81[4 * ((v72 ^ 0x55D2C37B) >> 24)];
  LODWORD(v71) = *(v85 + 4 * (((v59 ^ 0x176EBC52) >> 16) ^ 0xC6u)) ^ (v23 + (v72 ^ 0x7B) - ((2 * (v72 ^ 0x55D2C37B)) & 0xF8)) ^ *(v82 + 4 * (v72 ^ 9u)) ^ (v101 - 1135243401 - ((2 * v101) & 0x78AB1EEE));
  LODWORD(v76) = *(v82 + 4 * (v74 ^ 0xA8u)) ^ (v23 + (v74 ^ 0xDA) - ((2 * (v74 ^ 0xB0678CDA)) & 0xF8));
  LODWORD(v76) = (v76 - 1135243401 - ((2 * v76) & 0x78AB1EEE)) ^ *(v85 + 4 * BYTE2(v75));
  LODWORD(v76) = (v76 + 628906473 - ((2 * v76) & 0x4AF8B3D2)) ^ *&v81[4 * (BYTE3(v59) ^ 0xA6)];
  LODWORD(v74) = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * ((v72 ^ 0xC37B) >> 8)];
  LODWORD(v75) = (v100 - 1135243401 - ((2 * v100) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v72 ^ 0x55D2C37B) >> 16));
  BYTE1(v72) = BYTE1(v71) ^ 0x28;
  BYTE1(v59) = BYTE1(v102) ^ 0x59;
  LODWORD(v63) = (v23 + (v71 ^ 0x29) - ((2 * (v71 ^ 0x60382829)) & 0xF8)) ^ *(v82 + 4 * (v71 ^ 0x5Bu));
  v103 = *&v81[4 * ((v102 ^ 0xE2615910) >> 24)] ^ *(v85 + 4 * ((v71 ^ 0x60382829) >> 16)) ^ 0x9929D69E;
  LODWORD(v76) = v74 ^ 0x708D52A4;
  v104 = *(v85 + 4 * ((v74 ^ 0x708D52A4) >> 16)) ^ *&v81[4 * ((v71 ^ 0x60382829) >> 24)] ^ (v23 + (v102 ^ 0x10) - ((2 * (v102 ^ 0xE2615910)) & 0xF8)) ^ *(v82 + 4 * (v102 ^ 0x62u));
  LODWORD(v74) = (v23 + (v74 ^ 0xA4) - 2 * ((v74 ^ 0x708D52A4) & 0x7F ^ v74 & 3)) ^ *(v82 + 4 * (v74 ^ 0xD6u));
  BYTE1(v71) = BYTE1(v75) ^ 0xF4;
  LODWORD(v74) = (v74 + 628906473 - ((2 * v74) & 0x4AF8B3D2)) ^ *&v81[4 * ((v75 ^ 0x9F02F4C4) >> 24)];
  LODWORD(v74) = (v74 - 1135243401 - ((2 * v74) & 0x78AB1EEE)) ^ *(v85 + 4 * ((v102 ^ 0xE2615910) >> 16));
  LODWORD(v63) = *(v85 + 4 * ((v75 ^ 0x9F02F4C4) >> 16)) ^ (v63 - 1135243401 - ((2 * v63) & 0x78AB1EEE));
  LODWORD(v75) = (v103 + v23 - ((2 * v103) & 0xF2D5DEF8)) ^ v75 ^ 0xC4 ^ *(v82 + 4 * (v75 ^ 0xB6u));
  v105 = (v75 + 1347165031 + ~((2 * v75) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v76)];
  LODWORD(v74) = (v74 + 1347165030 - ((2 * v74) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v72)];
  LODWORD(v76) = (v63 + 628906473 - ((2 * v63) & 0x4AF8B3D2)) ^ *&v81[4 * BYTE3(v76)];
  LODWORD(v59) = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v59)];
  BYTE2(v75) = BYTE2(v74) ^ 0xA7;
  LODWORD(v71) = *&v80[4 * BYTE1(v71)] ^ ((v104 ^ 0x9929D69E) + 1347165030 - 2 * ((v104 ^ 0x9929D69E) & 0x504C1B67 ^ v104 & 1));
  LODWORD(v76) = (v23 + (v74 ^ 0xBC) - 2 * ((v74 ^ 0x81A7DDBC) & 0x7F ^ v74 & 3)) ^ *(v82 + 4 * (v74 ^ 0xCEu));
  LODWORD(v76) = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * ((v59 ^ 0xD49B) >> 8)];
  LODWORD(v58) = (v76 - 1135243401 - ((2 * v76) & 0x78AB1EEE)) ^ *(v85 + 4 * (((v71 ^ 0xC3913717) >> 16) ^ 0x6Fu));
  v106 = v105 ^ 0x9DEF794F;
  v107 = v71 ^ 0xCFE9AC85;
  LODWORD(v63) = *&v81[4 * ((v71 ^ 0xCFE9AC85) >> 24)] ^ 0x7530428F ^ (v23 + (v105 ^ 0x4F) - ((2 * (v105 ^ 0x9DEF794F)) & 0xF8)) ^ *&v80[4 * ((v74 ^ 0xDDBC) >> 8)];
  BYTE2(v71) = BYTE2(v105) ^ 0xB5;
  LODWORD(v63) = v63 ^ *(v82 + 4 * (v105 ^ 0x3Du));
  v108 = *&v80[4 * ((v105 ^ 0x794F) >> 8)] ^ *&v81[4 * ((v59 ^ 0xE09BD49B) >> 24)] ^ 0x7530428F;
  LODWORD(v74) = *&v80[4 * BYTE1(v107)] ^ 0x7530428F ^ *&v81[4 * (BYTE3(v74) ^ 0x4D)];
  LODWORD(v63) = *(v85 + 4 * ((v59 ^ 0xE09BD49B) >> 16)) ^ (v63 - 1135243401 - ((2 * v63) & 0x78AB1EEE));
  v109 = *(v85 + 4 * BYTE2(v75)) ^ (v23 + v107 - ((2 * v107) & 0xF8)) ^ *(v82 + 4 * (v71 ^ 0xF7u)) ^ (v108 - 1135243401 - ((2 * v108) & 0x78AB1EEE));
  LODWORD(v74) = *(v85 + 4 * (BYTE2(v71) ^ 0x4Du)) ^ (v23 + (v59 ^ 0x9B) - ((2 * (v59 ^ 0xE09BD49B)) & 0xF8)) ^ *(v82 + 4 * (v59 ^ 0xE9u)) ^ (v74 - 1135243401 - ((2 * v74) & 0x78AB1EEE));
  LODWORD(v72) = v63 ^ 0xE7B86B2F;
  LODWORD(v58) = *&v81[4 * HIBYTE(v106)] ^ 0x1A783A49 ^ (v58 + 628906473 - ((2 * v58) & 0x4AF8B3D2));
  LODWORD(v76) = (v23 + (v63 ^ 0x2F) - ((2 * (v63 ^ 0xE7B86B2F)) & 0xF8)) ^ *(v82 + 4 * (v63 ^ 0x5Du));
  LODWORD(v71) = *(v85 + 4 * ((v109 ^ 0xCA279EBA) >> 16)) ^ 0x453F600B ^ *(v82 + 4 * (v58 - ((2 * v58) & 0xE4u) + 114));
  LODWORD(v63) = v71 + 1347165030 - ((2 * v71) & 0xA09836CC);
  BYTE2(v71) = BYTE2(v74) ^ 0xBE;
  LODWORD(v63) = v63 ^ *&v80[4 * ((v74 ^ 0xBEE5) >> 8)];
  LODWORD(v59) = (v63 + 628906473 - ((2 * v63) & 0x4AF8B3D2)) ^ *&v81[4 * BYTE3(v72)] ^ v58;
  LODWORD(v63) = *&v80[4 * BYTE1(v72)] ^ *&v81[4 * ((v74 ^ 0xB5BEBEE5) >> 24)] ^ 0x7530428F;
  v110 = *(v85 + 4 * BYTE2(v58)) ^ (v23 + (v109 ^ 0xBA) - ((2 * (v109 ^ 0xCA279EBA)) & 0xF8)) ^ *(v82 + 4 * (v109 ^ 0xC8u)) ^ (v63 - 1135243401 - ((2 * v63) & 0x78AB1EEE));
  LODWORD(v74) = (v23 + (v74 ^ 0xE5) - ((2 * (v74 ^ 0xB5BEBEE5)) & 0xF8)) ^ 0x7530428F ^ *&v80[4 * ((v109 ^ 0x9EBA) >> 8)] ^ *(v82 + 4 * (v74 ^ 0x97u)) ^ *&v81[4 * BYTE3(v58)];
  LODWORD(v76) = *&v81[4 * ((v109 ^ 0xCA279EBA) >> 24)] ^ (v76 + 628906473 - ((2 * v76) & 0x4AF8B3D2));
  LODWORD(v76) = (v76 - 1135243401 - ((2 * v76) & 0x78AB1EEE)) ^ *(v85 + 4 * BYTE2(v71));
  LODWORD(v75) = (v74 - 1135243401 - ((2 * v74) & 0x78AB1EEE)) ^ *(v85 + 4 * BYTE2(v72));
  LODWORD(v72) = (v76 + 1347165030 - ((2 * v76) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v58)];
  LODWORD(v58) = v72 ^ 0x395CF26F;
  LODWORD(v71) = *(v82 + 4 * (v72 ^ 0x1Du));
  LODWORD(v72) = v110 ^ 0xBEDCB169;
  LODWORD(v74) = (v23 + v58 - ((2 * v58) & 0xF8)) ^ v71;
  LODWORD(v74) = (v74 + 1347165030 - ((2 * v74) & 0xA09836CC)) ^ *&v80[4 * ((v59 ^ 0xE00F) >> 8)];
  LODWORD(v71) = *(v82 + 4 * (v110 ^ 0x1Bu)) ^ v110 ^ 0x69 ^ *(v85 + 4 * ((v59 ^ 0x431CE00F) >> 16));
  LOBYTE(v63) = v75 ^ 0x40;
  LODWORD(v74) = (v74 - 1135243401 - ((2 * v74) & 0x78AB1EEE)) ^ *(v85 + 4 * (((v75 ^ 0x5AD72140) >> 16) ^ 0x4Du));
  v111 = v75 ^ 0x968D76C3;
  LODWORD(v71) = ((v71 ^ 0x453F600B) + 628906473 - 2 * ((v71 ^ 0x453F600B) & 0x257C59FD ^ v71 & 0x14)) ^ *&v81[4 * ((v75 ^ 0x968D76C3) >> 24)];
  LODWORD(v75) = v74 + 628906473 - ((2 * v74) & 0x4AF8B3D2);
  v112 = *&v81[4 * ((v59 ^ 0x431CE00F) >> 24)];
  LODWORD(v76) = *&v81[4 * BYTE3(v72)];
  LODWORD(v59) = *(v82 + 4 * (v59 ^ 0x7Du)) ^ (v23 + (v59 ^ 0xF) - ((2 * (v59 ^ 0x431CE00F)) & 0xF8));
  LODWORD(v59) = (v59 + 628906473 - ((2 * v59) & 0x4AF8B3D2)) ^ *&v81[4 * BYTE3(v58)];
  LODWORD(v59) = (v59 + 1347165030 - ((2 * v59) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v111)];
  LODWORD(v81) = (v23 + v111 - ((2 * v111) & 0xF8)) ^ 0x7530428F ^ *&v80[4 * BYTE1(v72)] ^ *(v82 + 4 * (v63 ^ 0xF1u)) ^ v112;
  LODWORD(v71) = (v71 + 1347165030 - ((2 * v71) & 0xA09836CC)) ^ *&v80[4 * BYTE1(v58)];
  LODWORD(v58) = *(v85 + 4 * BYTE2(v58)) ^ 0x7826D095 ^ (v81 - 1135243401 - ((2 * v81) & 0x78AB1EEE));
  LODWORD(v74) = *(v85 + 4 * BYTE2(v72)) ^ 0x21420AD3 ^ (v59 - 1135243401 - ((2 * v59) & 0x78AB1EEE));
  LODWORD(v82) = v76 ^ 0xADA04659 ^ v75;
  v113 = v71 ^ 0x9045179;
  LODWORD(v59) = v76 ^ 0x59 ^ v75;
  v114 = *(&off_103F00 + v22 - 1403);
  LODWORD(v72) = *(v114 + 4 * v59);
  v115 = *(&off_103F00 + v22 - 1272);
  LODWORD(v59) = *(v114 + 4 * (v71 ^ 0x79u));
  LODWORD(v81) = BYTE1(v71) ^ 0xCD;
  LODWORD(v75) = *(v115 + 4 * BYTE2(v58));
  LODWORD(v71) = 1593366617 - 1442841373 * v75;
  LODWORD(v63) = v71 + 269384112 * v75;
  v116 = *(&off_103F00 + (v22 ^ 0x5E3)) - 4;
  LODWORD(v75) = *&v116[4 * v81];
  LODWORD(v81) = *(v114 + 4 * v58);
  LODWORD(v72) = (v63 - 1192537359 - 2 * (v63 & 0x38EB52F3 ^ v71 & 2)) ^ v72;
  LODWORD(v80) = *(v114 + 4 * v74);
  LODWORD(v85) = *&v116[4 * BYTE1(v58)];
  LODWORD(v63) = *&v116[4 * BYTE1(v82)];
  LODWORD(v114) = *&v116[4 * BYTE1(v74)];
  v117 = *(&off_103F00 + (v22 ^ 0x5D6));
  LODWORD(v72) = (v114 + 826287981) ^ *(v117 + 4 * HIBYTE(v113)) ^ (v72 + 109047845 - ((2 * v72) & 0xCFFE04A));
  LODWORD(v71) = *(v115 + 4 * BYTE2(v113));
  v118 = *(v115 + 4 * BYTE2(v82));
  v119 = *(v115 + 4 * BYTE2(v74));
  LODWORD(v114) = *(v117 + 4 * BYTE3(v82));
  LODWORD(v115) = *(v117 + 4 * BYTE3(v74));
  LODWORD(v74) = *(v117 + 4 * BYTE3(v58));
  v120 = *(&off_103F00 + (v22 ^ 0x5A5)) - 8;
  LODWORD(v117) = v120[((v72 ^ 0x3FF2) >> 8) ^ 0x5FLL];
  HIDWORD(v73) = ~v117;
  LODWORD(v73) = (v117 ^ 0xB2) << 24;
  *(a11 + v129) = (v73 >> 25) ^ 0xE7;
  LODWORD(v59) = (v63 - ((2 * v63 + 1652575962) & 0x71D6A5E2) - 366249378) ^ v59 ^ (1593366617 - 1173457261 * v119);
  LODWORD(v59) = (v59 + 109047845 - ((2 * v59) & 0xCFFE04A)) ^ v74;
  v121 = *(&off_103F00 + v22 - 1353) - 12;
  *(a11 + v131) = v121[((v59 ^ 0xDE47D747) >> 16) ^ 0xCFLL] ^ (((v59 ^ 0xDE47D747) >> 16) - (((v59 ^ 0xDE47D747) >> 15) & 0xC0) - 32) ^ 0x65;
  LODWORD(v75) = (v75 - ((2 * v75 + 41963226) & 0xCFFE04A) + 935335826) ^ v115;
  LODWORD(v114) = (-1173457261 * v71 - ((69004582 * v71 + 233943218) & 0xCFFE04A) + 1702414462) ^ v114 ^ (v85 + 826287981);
  LODWORD(v81) = (v75 - 1192537359 - ((2 * v75) & 0x71D6A5E2)) ^ v81 ^ (1593366617 - 1173457261 * v118);
  LODWORD(v75) = (v114 - 1192537359 - ((2 * v114) & 0x71D6A5E2)) ^ v80;
  v122 = *(&off_103F00 + v22 - 1221) - 12;
  *(a11 + (v25 | 0xF)) = (v122[v59 ^ 0x90] + 25) ^ 0xF4;
  LODWORD(v114) = v120[(((v114 + 21233 - ((2 * v114) & 0xA5E2)) ^ v80 ^ 0x1F55) >> 8) ^ 0xD9];
  HIDWORD(v73) = ~v114;
  LODWORD(v73) = (v114 ^ 0xB2) << 24;
  *(a11 + v130) = (v73 >> 25) ^ 0x9E;
  *(a11 + (v25 | 1)) = ((BYTE2(v81) ^ 0x2C) - ((2 * (BYTE2(v81) ^ 0x2C)) & 0xC0) - 32) ^ v121[BYTE2(v81) ^ 0x9DLL] ^ 0x18;
  v123 = *(&off_103F00 + (v22 ^ 0x5F0)) - 12;
  *(a11 + v133) = v123[BYTE3(v59) ^ 0x9BLL] ^ 0xD9;
  *(a11 + (v25 | 8)) = v123[BYTE3(v72) ^ 0xDFLL] ^ 0xA4;
  *(a11 + (v25 | 3)) = (v122[v81 ^ 0xCELL] + 25) ^ 0x87;
  v124 = v120[BYTE1(v59) ^ 2];
  HIDWORD(v73) = ~v124;
  LODWORD(v73) = (v124 ^ 0xB2) << 24;
  *(a11 + v132) = (v73 >> 25) ^ 0x5B;
  *(a11 + v134) = (v122[v72 ^ 0x87] + 25) ^ 0x1B;
  LODWORD(v114) = v120[((v81 ^ 0xF4A2) >> 8) ^ 0xA8];
  HIDWORD(v73) = ~v114;
  LODWORD(v73) = (v114 ^ 0xB2) << 24;
  *(a11 + (v25 | 2)) = (v73 >> 25) ^ 8;
  *(a11 + (v25 | 7)) = (v122[v75 ^ 0x5CLL] + 25) ^ 0x86;
  *(a11 + (v25 | 5)) = ((BYTE2(v75) ^ 0x65) - ((2 * (BYTE2(v75) ^ 0x65)) & 0xC0) - 32) ^ 0x35 ^ v121[BYTE2(v75) ^ 0x3BLL];
  *(a11 + v25) = v123[(v81 >> 24) ^ 0xA2] ^ 0xA;
  *(a11 + v135) = (((v72 ^ 0x5C183FF2) >> 16) - ((v72 >> 15) & 0xC0) - 32) ^ v121[((v72 ^ 0x5C183FF2) >> 16) ^ 8] ^ 0xF1;
  *(a11 + (v25 | 4)) = v123[BYTE3(v75) ^ 0xC2] ^ 0x84;
  v125 = (HIDWORD(a12) < 0x294FB5A0) ^ (a6 + 693089712 < 0x294FB5A0);
  v126 = a6 + 693089712 < HIDWORD(a12);
  if (v125)
  {
    v126 = HIDWORD(a12) < 0x294FB5A0;
  }

  return (*(a17 + 8 * (v22 ^ (8 * !v126))))(v125, HIDWORD(a12), ~v124, 178, v25, a6, 69004582, v123, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v128, a21, a22, v25 | 1, v25 | 0xF, v25 | 2, v129, v25 | 8, v25 | 3, v25 | 7, v25 | 5);
}

uint64_t sub_B5DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a3)
  {
    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  v38 = v35 || *(a1 + 56) == 0 || *(a1 + 8) == 0;
  return (*(a2 + 8 * ((v38 * (v33 + v33 - 136 - 2962)) ^ v33)))(a1, a2, a3, v34, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_B5E30(uint64_t a1)
{
  v1 = *a1 - 1556812919 * (((a1 | 0xBE5671DD) - (a1 & 0xBE5671DD)) ^ 0xE4D51DBE);
  v4 = *(a1 + 8);
  v5 = v1 + 1658355091 * ((-451345177 - (&v3 | 0xE51904E7) + (&v3 | 0x1AE6FB18)) ^ 0xA496C1E2) + 1170;
  v2 = *(&off_103F00 + (v1 & 0xEC66F09F)) - 4;
  (*&v2[8 * (v1 ^ 0xD99)])(&v3);
  __asm { BRAA            X8, X17 }
}

void sub_B5FF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = (*(a1 + 4) - 1907 * (a1 ^ 0xCAF7)) == 3698;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 8) - 539293837 * (a1 ^ 0xBD01CAF7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_B60A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 8 * (v7 + 866)))(LODWORD(STACK[0xB3C]) ^ 0xB01701DB, 0x100004077774924);
  v11 = STACK[0x430];
  STACK[0x1378] = v10;
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  LODWORD(STACK[0x1384]) = v12;
  return (*(v11 + 8 * ((((((v7 - 2836) ^ (v10 == 0)) & 1) == 0) * ((v7 + 1220311767) & 0xB7437B9A ^ 0x193)) | (v7 + 618))))();
}

void sub_B616C()
{
  LODWORD(STACK[0x420]) = 0;
  LODWORD(STACK[0x410]) = 0;
  v2 = v0[9] - ((2 * v0[9]) & 0x46);
  v3 = *v0 - ((2 * *v0) & 0xFFC3);
  v4 = v0[3] - ((((v1 - 1204) | 0x202) ^ 0xFFFFFFB4) & (2 * v0[3]));
  v5 = v0[6] - ((2 * v0[6]) & 0xFFD8);
  v6 = v0[2] - ((2 * v0[2]) & 0x62);
  v7 = v0[7] - ((2 * v0[7]) & 0x12);
  v8 = v0[1] - ((2 * v0[1]) & 0xA);
  v9 = v0[4] - ((2 * v0[4]) & 0x78);
  v10 = v0[8] - ((2 * v0[8]) & 0xFFDC);
  v11 = v0[11] - ((2 * v0[11]) & 0xFFCA);
  v12 = v0[15] - ((2 * v0[15]) & 0xFFE3);
  v13 = v0[12] - ((2 * v0[12]) & 0x18);
  v14 = v0[5] - ((2 * v0[5]) & 0xFFA6);
  v15 = v0[10] - ((2 * v0[10]) & 0x70);
  v16 = v0[14] - ((2 * v0[14]) & 0x12);
  v17 = v0[13] + (~(2 * v0[13]) | 0x3B);
  LODWORD(STACK[0x3A0]) = v2 + 35;
  LODWORD(STACK[0x320]) = v3 + 97;
  LODWORD(STACK[0x3D0]) = v4 - 21;
  LODWORD(STACK[0x3E0]) = v5 + 108;
  LODWORD(STACK[0x330]) = v6 + 49;
  LODWORD(STACK[0x350]) = v7 - 119;
  LODWORD(STACK[0x310]) = v8 + 5;
  LODWORD(STACK[0x380]) = v9 + 60;
  LODWORD(STACK[0x3F0]) = v10 - 18;
  LODWORD(STACK[0x360]) = v11 - 27;
  LODWORD(STACK[0x3B0]) = v12 - 15;
  LODWORD(STACK[0x390]) = v13 - 116;
  LODWORD(STACK[0x300]) = v14 - 45;
  LODWORD(STACK[0x340]) = v15 - 72;
  LODWORD(STACK[0x3C0]) = v16 + 9;
  LODWORD(STACK[0x370]) = v17 + 99;
  JUMPOUT(0xB631CLL);
}

uint64_t sub_B6B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8 * (v6 + 860)))();
  v9 = STACK[0x430];
  LODWORD(STACK[0x1294]) = v5;
  return (*(v9 + 8 * ((404 * (v5 == ((v7 + ((v6 + 437914729) & 0xE5E5EEFF) - 985) ^ (v6 + 717707472) & 0xD5389FDF))) | (v6 - 2235))))(v8, v5, &off_103F00, 2612310856);
}

uint64_t sub_B6C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (((*(v8 + 16) ^ 0x5B3EFBB0) - 506260831) ^ ((*(v8 + 16) ^ 0xB0E07305) + (((v9 + 2050) | 0x24) ^ 0xA0D9130)) ^ ((*(v8 + 16) ^ 0x1421774A) + ((3 * (v9 ^ 0x3AD)) ^ 0xAECC9C5C))) - 130060376;
  v11 = v7 + 1028753048 > v10;
  v12 = (v7 > 0xC2AE7967) ^ (v10 < 0x3D518698);
  v13 = v11;
  if (v12)
  {
    v14 = v7 > 0xC2AE7967;
  }

  else
  {
    v14 = v13;
  }

  return (*(a7 + 8 * ((19 * !v14) ^ v9)))();
}

uint64_t sub_B6DE4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v14 = (*(*(v11 + 8) + 4 * v5) ^ v10) + v4;
  *(*(a4 + 8) + 4 * v5) = (v14 - (v9 & (2 * v14)) + a1) ^ a2;
  return (*(v13 + 8 * (((v12 > (v5 + (v6 ^ v7) - 2298)) * a3) ^ v8)))();
}

uint64_t sub_B6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(a7 + 8 * ((((((v66 + 1548) | 0x32) - 641) ^ 0x727) * (v65 == a61)) | v66));
  STACK[0x2C0] = v65;
  return v67(a65, a2, 0xB46B4B292F50942CLL, 0x8EE559E2F9AB2F0ELL, 0x384CEFE2CEAED252);
}

uint64_t sub_B6FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2 + 127 - v2;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v2;
  *(v7 - 15) = *(v5 - 15);
  *(v7 - 31) = v6;
  return (*(v3 + 8 * (((v2 == 96) * ((v4 ^ 0xBE5) + 6)) ^ v4)))();
}

uint64_t sub_B6FFC@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 8);
  STACK[0x1078] = *(a1 + 8 * v2);
  return sub_41918(a1, v3);
}

uint64_t sub_B70C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  v16 = -75026750 - 2009212831 * (LODWORD(STACK[0x204]) ^ 0x3A40E1D6);
  v17 = STACK[0x280];
  v18 = (LODWORD(STACK[0x280]) ^ 0xC079B345) + 1663319554;
  LODWORD(STACK[0x5A8]) = -2009212831 * v18;
  *(&STACK[0x5A8] + ((((v14 - 119) & 0xC9) - (v17 ^ 0x45) + 69) & 8) + (v18 & 8)) = -75026750 - 2009212831 * (LODWORD(STACK[0x208]) ^ 0x145E5B0A);
  LODWORD(STACK[0x6B0]) = 428318125;
  LODWORD(STACK[0x6B4]) = 19228584;
  STACK[0x6C8] = 0x2DD257C51CFA32C7;
  STACK[0x6B8] = 0x99C0F8E12A72AD81;
  STACK[0x6C0] = 0x4AA6569FF9789206;
  v19 = LODWORD(STACK[0x20C]) ^ 0x145E5B0A;
  v20 = v19 + 1663319554;
  *(&STACK[0x5A8] + (((((v19 + 2) | (125 - v19)) & 0x40) - 36) & 0xFC)) = -75026750 - 2009212831 * (LODWORD(STACK[0x210]) ^ 0x3A40E1D6);
  v21 = ((2 * LODWORD(STACK[0x214])) & 0xC6487C04 ^ 0x44004004) + (LODWORD(STACK[0x214]) ^ 0x5964DFD4);
  LODWORD(STACK[0x60C]) = v16;
  v22 = -75026750 - 2009212831 * (LODWORD(STACK[0x23C]) ^ 0xC079B345);
  LODWORD(STACK[0x5AC]) = -75026750 - 2009212831 * (LODWORD(STACK[0x224]) ^ 0xC079B345);
  LODWORD(STACK[0x5B0]) = v22;
  v23 = -75026750 - 2009212831 * (LODWORD(STACK[0x248]) ^ 0x4B92849C);
  LODWORD(STACK[0x5E8]) = -75026750 - 2009212831 * (LODWORD(STACK[0x234]) ^ 0x4B92849C);
  LODWORD(STACK[0x5EC]) = v23;
  v24 = -75026750 - 2009212831 * (LODWORD(STACK[0x220]) ^ 0x3A40E1D6);
  LODWORD(STACK[0x608]) = -2009212831 * v21;
  LODWORD(STACK[0x610]) = v24;
  v25 = -75026750 - 2009212831 * (LODWORD(STACK[0x218]) ^ 0x145E5B0A);
  LODWORD(STACK[0x5D4]) = -75026750 - 2009212831 * (LODWORD(STACK[0x21C]) ^ 0x145E5B0A);
  LODWORD(STACK[0x5D0]) = v25;
  v26 = LODWORD(STACK[0x244]) ^ 0xC079B345;
  v27 = -75026750 - 2009212831 * (LODWORD(STACK[0x238]) ^ 0xC079B345);
  LODWORD(STACK[0x5B4]) = -2009212831 * (v26 + 1663319554);
  LODWORD(STACK[0x5B8]) = v27;
  v28 = -75026750 - 2009212831 * (LODWORD(STACK[0x24C]) ^ 0x4B92849C);
  LODWORD(STACK[0x5F4]) = -75026750 - 2009212831 * (LODWORD(STACK[0x250]) ^ 0x4B92849C);
  LODWORD(STACK[0x5F0]) = v28;
  v29 = -75026750 - 2009212831 * (LODWORD(STACK[0x254]) ^ 0x4B92849C);
  LODWORD(STACK[0x5F8]) = -75026750 - 2009212831 * (LODWORD(STACK[0x240]) ^ 0x4B92849C);
  LODWORD(STACK[0x5FC]) = v29;
  v30 = -75026750 - 2009212831 * (LODWORD(STACK[0x228]) ^ 0x3A40E1D6);
  LODWORD(STACK[0x614]) = -75026750 - 2009212831 * (LODWORD(STACK[0x230]) ^ 0x3A40E1D6);
  LODWORD(STACK[0x61C]) = v30;
  STACK[0x628] = 0x5B00273D5CBFEDE3;
  v31 = -75026750 - 2009212831 * (LODWORD(STACK[0x268]) ^ 0xC079B345);
  LODWORD(STACK[0x5BC]) = -75026750 - 2009212831 * (LODWORD(STACK[0x25C]) ^ 0xC079B345);
  LODWORD(STACK[0x5C0]) = v31;
  STACK[0x6A8] = 0x517A1D8CE8E13BA7;
  STACK[0x638] = 0x7539EDA22EA8F2ACLL;
  v32 = -75026750 - 2009212831 * (LODWORD(STACK[0x26C]) ^ 0xC079B345);
  LODWORD(STACK[0x5CC]) = -2009212831 * v20;
  LODWORD(STACK[0x5C4]) = v32;
  v33 = -75026750 - 2009212831 * (LODWORD(STACK[0x270]) ^ 0x4B92849C);
  LODWORD(STACK[0x600]) = -75026750 - 2009212831 * (LODWORD(STACK[0x27C]) ^ 0x4B92849C);
  LODWORD(STACK[0x604]) = v33;
  LODWORD(STACK[0x668]) = -1993275795;
  LODWORD(STACK[0x66C]) = -1324188586;
  v34 = ((v26 + 1663319554) | (215728637 - v26)) & 0x804C841 | 0x80391020;
  v35 = STACK[0x284];
  LODWORD(STACK[0x5E0]) = -75026750 - 2009212831 * (LODWORD(STACK[0x258]) ^ 0x145E5B0A);
  LODWORD(STACK[0x5E4]) = -75026750 - 2009212831 * (v35 ^ 0x145E5B0A);
  LODWORD(STACK[0x670]) = 1143343387;
  LODWORD(STACK[0x674]) = 366264450;
  LODWORD(STACK[0x634]) = -1503171087;
  LODWORD(STACK[0x630]) = 1453415317;
  v36 = ((LODWORD(STACK[0x260]) ^ 0x145E5B0A) + 1663319554) * v34;
  v37 = LODWORD(STACK[0x264]) ^ 0x145E5B0A;
  LODWORD(STACK[0x640]) = 1237233751;
  LODWORD(STACK[0x644]) = -575803262;
  v37 *= -2009212831;
  STACK[0x684] = 0x97F106C690EA5DF1;
  v38 = 75026749 - v37;
  v37 -= 75026750;
  LODWORD(STACK[0x5D8]) = v36;
  LODWORD(STACK[0x5DC]) = v37;
  v39 = ((v37 & 0x3A40E1D6) + (v38 & 0x3A40E1D6)) ^ LODWORD(STACK[0x274]);
  LODWORD(STACK[0x67C]) = 2021202705;
  LODWORD(STACK[0x678]) = -653437918;
  v40 = LODWORD(STACK[0x278]) ^ 0x3A40E1D6;
  LODWORD(STACK[0x68C]) = 1124637512;
  LODWORD(STACK[0x680]) = 1845458785;
  LODWORD(STACK[0x620]) = -75026750 - 2009212831 * v39;
  LODWORD(STACK[0x624]) = -75026750 - 2009212831 * v40;
  LODWORD(STACK[0x648]) = -497102896;
  LODWORD(STACK[0x64C]) = -310643669;
  *(&STACK[0x5A8] + (v17 & 0xA) + (v17 & 0xA ^ 0xAu) + 48) = 63617242;
  STACK[0x69C] = 0x1894168988119B55;
  STACK[0x694] = 0x2B411373481F5D3ELL;
  STACK[0x65C] = 0xF498C40F778F767ELL;
  v41 = *a14;
  STACK[0x650] = 0x1E728195F64081D4;
  LODWORD(STACK[0x664]) = -703752099;
  LODWORD(STACK[0x658]) = -432537439 * (((v35 ^ 0x145E5B0A) & 0x9C4C058A | v35 & 0x9C4C058A ^ 0x88000480) ^ 0xCC694457);
  LODWORD(STACK[0x6A4]) = -1084949130;
  STACK[0x5A0] -= 2112;
  return (*(v15 + 8 * ((2 * (*v41 == 0)) | (8 * (*v41 == 0)) | v14)))();
}

uint64_t sub_B7614@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = *(v3 + v4);
  v6 = v4 + (a1 ^ 0x4D7u) - 1308;
  *(a2 + v6) = v5;
  return (*(v2 + 8 * ((2364 * (v6 == 0)) ^ a1)))();
}

uint64_t sub_B76E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 8 * (v7 + 860)))();
  *(v8 + 152) = 0;
  *(v8 + 160) = -2127042687;
  return v9(v10);
}

uint64_t sub_B7760@<X0>(unsigned int a1@<W5>, int a2@<W8>)
{
  v8 = (16 * *(&STACK[0x6D0] + (v5 + 403 * (a1 >> (((6 - v3) ^ a1) & 4))) % 0x3C8)) ^ 0x50;
  v9 = *(&STACK[0x6D0] + ((a2 ^ 0x98 ^ (v5 + 951)) + 403 * (a1 & 0xF)) % 0x3C8) ^ 0x2F ^ (v8 - ((2 * v8) & 0xC0) + 101);
  v10 = v6 + 403 * ((*(v4 + (487 * v9 + 263954 - 944 * ((4549754 * (487 * v9 + 263954)) >> 32))) >> 4) ^ 5);
  *(&STACK[0x6D0] + (403 * v3 - 167515368) % 0x3C8u) = (16 * *(&STACK[0x6D0] + (v10 - 968 * ((4436950 * v10) >> 32)))) ^ 0x35;
  return (*(v7 + 8 * ((2764 * (v3 + 1 == v2 + 256)) ^ a2)))();
}

uint64_t sub_B78A8()
{
  *STACK[0x520] = STACK[0x910];
  STACK[0xD90] -= 32;
  return (STACK[0x6C0])();
}

void sub_B7920(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = v6 ^ 0x5DC;
  a5 = v5;
  a4 = v6 + 539293837 * (((&a3 | 0xBDC42754) - &a3 + (&a3 & 0x423BD8A8)) ^ 0xC5EDA3) - 541;
  (*(a1 + 8 * (v6 ^ 0xB57)))(&a3);
  *(v7 + 4) = 19 * v8 - *(v7 + 4) + 1266947637;
  JUMPOUT(0x25068);
}

uint64_t sub_B7A0C()
{
  v2 = 1427 * (v1 ^ 0x71A) + 255911887 + (((*(v0 + 116) ^ 0xC028399A) + 1071105638) ^ ((*(v0 + 116) ^ 0xA32F7FDB) + 1557168165) ^ ((*(v0 + 116) ^ 0xD310479A) + 753907814));
  *(v0 + 116) = v2 ^ ((v2 ^ 0x4DF9934C) - 315646549) ^ ((v2 ^ 0x335D589F) - 1819584902) ^ ((v2 ^ 0xDE52C531) + 2122632152) ^ ((v2 ^ 0xFFDFFFFB) + 1594487070) ^ 0xEF3EF0C2;
  return sub_B7B20();
}

uint64_t sub_B7B20@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v8 = a2 + 167;
  v9 = *v6;
  STACK[0x978] = *(a1 + 8 * v2);
  STACK[0x800] = v5;
  LODWORD(STACK[0x8A4]) = v4;
  v10 = STACK[0xD90];
  v11 = &STACK[0x1520] + STACK[0xD90];
  STACK[0x610] = v11;
  v12 = v11 + 16;
  STACK[0xF20] = (v11 + 16);
  STACK[0x7D8] = (v11 + 48);
  STACK[0xD90] = v10 + ((3 * (a2 ^ 0xB69u)) ^ 0xBDLL);
  STACK[0x9A8] = v3;
  v13 = a2 ^ 0x554;
  (*(a1 + 8 * (a2 ^ 0x554)))();
  v14 = (*(STACK[0x430] + 8 * v13))(v12, 0, 32);
  v15 = STACK[0x430];
  STACK[0xC88] = 0;
  STACK[0xC28] = 0;
  LODWORD(STACK[0x8CC]) = v7;
  STACK[0x478] = 0;
  LODWORD(STACK[0x50C]) = v7;
  STACK[0x10E0] = v9;
  return (*(v15 + 8 * ((1908 * (v9 != 0)) ^ v8)))(v14);
}

uint64_t sub_B7C60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v11 - 124);
  if (v12 == 2)
  {
    return (*(v10 + 8 * (((*(v11 - 128) == 0) * ((4 * (a4 ^ (a4 + 163))) ^ 0x3D0)) | (a5 + a4 - 170))))(-1797254454, a10);
  }

  if (v12 != 1)
  {
    JUMPOUT(0xB7D34);
  }

  return (*(v10 + 8 * (((*(v11 - 128) == 0) * (a4 + a5 - 940)) ^ (a4 + a5))))(-1797254454, a10);
}

uint64_t sub_B7DB8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  STACK[0xAD0] = 0;
  STACK[0xF40] = 0;
  STACK[0x920] = *(a1 + 8 * v2);
  return sub_9AD6C(a1, a2);
}

uint64_t sub_B7DF0()
{
  v4 = (((((v1 + 3157) ^ v2) - 3684) ^ ((v2 ^ 0x6890) - 26768) ^ (((1427 * (v1 ^ 0x20D) - 14569) ^ v2) + 11715)) + 467);
  v5 = v4 < 0x4D0A;
  v6 = v4 > (v0 + 19722);
  if (v0 > 0xB2F5u != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((1706 * v6) ^ v1)))();
}

void sub_B7FE4(_DWORD *a1)
{
  v1 = 922715317 * ((2 * (a1 & 0x89F72AB) - a1 + 2002816340) ^ 0x42E6AD9B);
  v2 = *a1 - v1;
  v3 = a1[2] ^ v1;
  v5 = (v3 & 0x30000000) == 0x10000000 || (v3 & 0x3F000000) == 956301312;
  __asm { BRAA            X11, X17 }
}

void sub_B80C0(uint64_t a1)
{
  v1 = 772352333 * ((2 * (a1 & 0x4168EB90) - a1 + 1050088559) ^ 0xDAD51CD4);
  v2 = *a1 + v1;
  v3 = *(a1 + 56) - v1;
  v4 = *(a1 + 48);
  v5 = 2101648617 * (*(a1 + 8) - v1) + 1019578981;
  v6 = 1658355091 * (((v10 | 0xC1F412E3) - v10 + (v10 & 0x3E0BED18)) ^ 0x7F842819);
  v15 = &v9;
  v10[0] = v6 ^ v5;
  v13 = &v8;
  v11 = v4;
  v14 = ((((v3 ^ 0x77678AF2) - 2003274482) ^ ((v3 ^ 0xE857B45C) + 396905380) ^ ((v3 ^ 0x61DCA5E0) - 1641850336)) + 111655299) ^ v6;
  v12 = v6 ^ (v2 - 416);
  v7 = *(&off_103F00 + (v2 ^ 0x929)) - 4;
  (*&v7[8 * v2 + 10680])(v10);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_B8288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xDC0];
  *v7 = 0u;
  v7[1] = 0u;
  return sub_4CF90(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_B82C0@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W5>, int a4@<W7>, uint64_t a5@<X8>)
{
  v14 = (v6 + 1318973455) & 0xB1620FEF;
  v15 = (*(v13 + (v14 ^ a2) + v7 * v11 - ((((((v14 ^ a2) + v7 * v11) * v12) >> 32) + (((v14 ^ a2) + v7 * v11 - ((((v14 ^ a2) + v7 * v11) * v12) >> 32)) >> 1)) >> 9) * v10) ^ 0xD9) * v8 + 49766;
  v16 = v7 * v11 - 1216704034 - (((((v7 * v11 - 1216704034) * v12) >> 32) + ((v7 * v11 - 1216704034 - (((v7 * v11 - 1216704034) * v12) >> 32)) >> 1)) >> 9) * v10;
  *(v13 + v16) = (-51 * *(v5 + (v15 - ((4628198 * v15) >> 32) * v9))) ^ 0x8B;
  return (*(a5 + 8 * (((a1 + v7 - (v16 & 0xC2) + (v16 | a3) + 2 + a1 < 0x10) * a4) ^ v6)))();
}

void sub_B8518(uint64_t a1@<X6>, int a2@<W8>)
{
  *STACK[0x490] = STACK[0xE90];
  *STACK[0xA50] = (a2 + 1986) ^ 0xB0170AFD ^ LODWORD(STACK[0xEB4]);
  v3 = STACK[0x208];
  *(v3 + 1320) = STACK[0x730];
  *(v3 + 244) = 1377186719;
  *(v3 + 248) = 281631866;
  *STACK[0xAD8] = *(v3 + 8);
  *(v3 + 252) = 784267143;
  *(v3 + 1312) = 9;
  v4 = *v3;
  *(v2 - 232) = 475723357 * ((((2 * (v2 - 240)) | 0xAF7411B0) - (v2 - 240) - 1471809752) ^ 0x4D062EC9) - 1834142901 + a2;
  *(v2 - 240) = v4;
  (*(a1 + 8 * (a2 + 2839)))(v2 - 240);
  sub_B0B28();
}

uint64_t sub_B85F8(uint64_t a1)
{
  v2 = 1643603977 * ((a1 - 2 * (a1 & 0x4AF21BE57B64A7A5) + 0x4AF21BE57B64A7A5) ^ 0x96CC36B7943FBF0DLL);
  v3 = *a1 - v2;
  v4 = *(a1 + 4) ^ v2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48) - v2;
  v7 = *(a1 + 16) + v2;
  LODWORD(v2) = *(a1 + 20) ^ v2;
  v8 = *(a1 + 8);
  v9 = *(a1 + 32);
  v11 = v4;
  v12 = v6;
  v13 = v7;
  v14 = v2;
  v15 = v9;
  v16 = v8;
  v17 = v5;
  LODWORD(v2) = 1658355091 * (((v18 | 0x50B864DD) - (v18 & 0x50B864DD)) ^ 0xEEC85E27);
  v18[0] = -271001517 - v2;
  v18[2] = v3 - v2 + 179855700;
  v19 = &v11;
  result = (*(*(&off_103F00 + (v3 ^ 0xF547A95F)) + 8 * (v3 ^ 0xF547A79B) - 4))(v18);
  *(a1 + 24) = v18[1] ^ 0x644BE891;
  return result;
}

void sub_B8770(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1643603977 * (a1 ^ 0xEF5B18A8));
  __asm { BRAA            X9, X17 }
}

void sub_B8870()
{
  v0 = __chkstk_darwin();
  v1 = 539293837 * ((~v0 & 0x9BE5EA2D | v0 & 0x641A15D2) ^ 0x26E420DA);
  v2 = *(v0 + 32) + v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 20) ^ v1;
  v5 = *(&off_103F00 + (v2 ^ 0x845)) - 4;
  (*&v5[8 * v2 + 11600])(v17, 0, 296);
  v6 = (v4 ^ 0xD2059B34) & (2 * (v4 & 0xDB559001)) ^ v4 & 0xDB559001;
  v7 = ((2 * (v4 ^ 0xE0A6BB36)) ^ 0x77E6566E) & (v4 ^ 0xE0A6BB36) ^ (2 * (v4 ^ 0xE0A6BB36)) & 0x3BF32B36;
  v8 = v7 ^ 0x8112911;
  v9 = (v7 ^ 0x33E32914) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xEFCCACDC) & v8 ^ (4 * v8) & 0x3BF32B34;
  v11 = (v10 ^ 0x2BC02810) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x10330323)) ^ 0xBF32B370) & (v10 ^ 0x10330323) ^ (16 * (v10 ^ 0x10330323)) & 0x3BF32B30;
  v13 = v11 ^ 0x3BF32B37 ^ (v12 ^ 0x3B322300) & (v11 << 8);
  v14 = v4 ^ (2 * ((v13 << 16) & 0x3BF30000 ^ v13 ^ ((v13 << 16) ^ 0x2B370000) & (((v12 ^ 0xC10807) << 8) & 0x3BF30000 ^ 0x8D00000 ^ (((v12 ^ 0xC10807) << 8) ^ 0x732B0000) & (v12 ^ 0xC10807))));
  if (v3)
  {
    v15 = (((v14 ^ 0xB184C6DB) - 965633277) ^ ((v14 ^ 0x617A38F4) + 378496302) ^ ((v14 ^ 0x2A2B3840) + 1574856090)) == -1927242793;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  __asm { BRAA            X8, X17 }
}

void sub_B8B74(int a1@<W8>)
{
  if (v3 < 0)
  {
    v3 = -v3;
  }

  **(v1 + 8) = v3 - ((v3 << (v2 ^ 0x2E)) & 0x36C1B066) - 1688152013;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_B8BC0()
{
  STACK[0x14E8] = v1;
  v2 = STACK[0xA08];
  STACK[0x14F0] = STACK[0xA08];
  return (*(STACK[0x430] + 8 * (((v1 - v2 > ((v0 - 1643) ^ 0xAD3u) - 2845) * ((82 * ((v0 - 1643) ^ 0x1F7)) ^ 0x47D)) ^ (v0 - 1643))))();
}

void sub_B8C2C(int a1@<W6>, uint64_t a2@<X8>)
{
  if (v2 + v4 + ((a1 + 715114604) & 0xD5603DDF) - 3488 >= 0x7FFFFFFF)
  {
    v5 = 1266951266 - v3;
  }

  else
  {
    v5 = v3;
  }

  *(a2 + 4) = v5;
  JUMPOUT(0xB8C70);
}

void *sub_B8CE8@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  STACK[0x928] = v2;
  STACK[0xC00] = LODWORD(STACK[0xF14]);
  STACK[0xA20] = *(a1 + 8 * (a2 - 2076));
  return sub_B8D20(&STACK[0xE0F]);
}

uint64_t sub_B91A8@<X0>(uint64_t a1@<X6>, unsigned int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  STACK[0x210] = v60;
  STACK[0x420] = *(v60 + 24);
  LODWORD(STACK[0x220]) = a2;
  STACK[0x410] = (a2 ^ 0xBECFDFDFFDBD9664 ^ (a3 + 781519652) & 0xD16AFDBE) + ((2 * a2) & 0x1FB7B37F4) + 0x4130202002426406;
  return (*(a1 + 8 * ((87 * ((v61 ^ v62) < ((a3 - 2104383678) & 0x7D6E5C5F ^ 0x855u))) ^ a3)))(a60);
}

void sub_B9308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xF70];
  *(v8 - 240) = *STACK[0xF70];
  *(v8 - 232) = 475723357 * ((((v8 - 240) | 0x2CA68979) - (v8 - 240) + ((v8 - 240) & 0xD3597680)) ^ 0x361AAF68) - 1834142901 + v7 - 1986;
  (*(a7 + 8 * (v7 + 853)))(v8 - 240);
  v10 = *v9;
  *(v8 - 228) = v7 + 1703288393 * ((((v8 - 240) | 0xA5D624BE) - (v8 - 240) + ((v8 - 240) & 0x5A29DB40)) ^ 0x7CC94864) - 245;
  *(v8 - 240) = v10;
  (*(STACK[0x430] + 8 * (v7 ^ 0x5B8)))(v8 - 240);
  *v9 = 0;
  JUMPOUT(0xB93ECLL);
}

uint64_t sub_B9484@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = *(v2 + 2);
  STACK[0x968] = v2 + 2;
  return (*(a1 + 8 * (((((a2 + 91) ^ (*(v3 + v2 + 4) < *(v3 + v2 + 3))) & 1) * (((a2 + 674) | 0x102) ^ 0xB31)) ^ a2)))();
}

uint64_t sub_B94E0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a2.n128_u16[0] = -4370;
  a2.n128_u8[2] = -18;
  a2.n128_u8[3] = -18;
  a2.n128_u8[4] = -18;
  a2.n128_u8[5] = -18;
  a2.n128_u8[6] = -18;
  a2.n128_u8[7] = -18;
  a3.n128_u16[0] = -2057;
  a3.n128_u8[2] = -9;
  a3.n128_u8[3] = -9;
  a3.n128_u8[4] = -9;
  a3.n128_u8[5] = -9;
  a3.n128_u8[6] = -9;
  a3.n128_u8[7] = -9;
  return sub_B9510((v3 + 34053084) & 0xFDF866BD, a1 - 7, a2, a3);
}

uint64_t sub_B95A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _DWORD *a59)
{
  *STACK[0x578] = v59;
  *a59 = STACK[0x10F8];
  return (STACK[0x10A8])();
}

uint64_t sub_B965C(__n128 a1, __n128 a2)
{
  a1.n128_u32[0] = 15597806;
  a1.n128_u16[2] = 238;
  a1.n128_u16[3] = 238;
  a2.n128_u32[0] = 16187639;
  a2.n128_u16[2] = 247;
  a2.n128_u16[3] = 247;
  return sub_B9680(a1, a2);
}

uint64_t sub_B9680@<X0>(uint64_t a1@<X8>, int8x8_t a2@<D0>, int16x4_t a3@<D1>, uint8x8_t a4@<D2>)
{
  a4.i32[0] = *(v5 + v8 - v6);
  v12 = vmovl_u8(a4).u64[0];
  *(a1 + v8 - v6) = vuzp1_s8(vadd_s16(vsub_s16(v12, vand_s8(vadd_s16(v12, v12), a2)), a3), a2).u32[0];
  return (*(v11 + 8 * ((((v4 ^ v7 ^ v9) + v6 == 20) * v10) ^ v4)))();
}

uint64_t sub_B9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v8 + 40 * v7 + 28);
  switch(v10)
  {
    case 1:
      v12 = STACK[0xF28];
      STACK[0x1078] = *(a7 + 8 * (v9 - 2749));
      return sub_41918(a7, v12);
    case 3:
      return (*(a7 + 8 * (((((v9 - 806) | 0x8D) - 2166) * (*(v8 + 40 * v7 + 16) == 0)) ^ (v9 - 1632))))();
    case 2:
      return (*(a7 + 8 * (((STACK[0xF28] == 0) * (v9 ^ 0xB31)) ^ (v9 - 1786))))();
    default:
      return (STACK[0x7A8])();
  }
}

uint64_t sub_B9ABC(uint64_t a1, int a2, int a3)
{
  if ((a2 + v5) > 0xDCFE238 != v3 - 1722887919 < (((a3 | 0x200) + 1025) ^ 0xF23013E0))
  {
    v6 = (a2 + v5) > 0xDCFE238;
  }

  else
  {
    v6 = a2 + v5 - 231727673 > (v3 - 1722887919);
  }

  return (*(v4 + 8 * ((119 * ((((a3 | 0x200) ^ v6) & 1) == 0)) ^ (a3 | 0x200))))();
}

uint64_t sub_B9B40@<X0>(int a1@<W8>)
{
  *STACK[0x958] = STACK[0xDA0];
  *STACK[0x938] = LODWORD(STACK[0xCF4]) ^ (a1 - 1340670306);
  return sub_B9B78();
}

uint64_t sub_B9B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v7 + 860)))(STACK[0xD18]);
  v10 = (*(STACK[0x430] + 8 * (v7 ^ 0x5A4)))(STACK[0xF80]);
  v11 = STACK[0x430];
  LODWORD(STACK[0x7CC]) = v8;
  return (*(v11 + 8 * (((v8 == v9) * (((v7 - 2326) | 0x80) - 432)) ^ (v7 - 2230))))(v10);
}

uint64_t sub_B9BE0(__n128 a1)
{
  v8 = (v5 + v6 + v1);
  *v8 = a1;
  v8[1] = a1;
  return (*(v7 + 8 * (v3 ^ (32 * ((v4 ^ 0x3AA) + v6 == v2)))))();
}

uint64_t sub_B9C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(STACK[0x550] + 40) = v7;
  v10 = *STACK[0xD48];
  STACK[0x528] = v10;
  return (*(a7 + 8 * (((v8 & ~*(STACK[0x9E0] + 1044 * v10 + 1040)) * (((v9 - 2342) | 0x14) ^ (v9 - 2340))) | (v9 - 2334))))();
}

uint64_t sub_B9DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 a23, int a24, int a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  *(v41 - 152) = v36 + a34 * v34 + 260;
  *(v41 - 164) = 4722 - -1907 * ((-26833 - ((v41 - 168) | 0x972F) + a27) ^ 0xA227);
  *(v41 - 160) = v37 + 397 + 539293837 * ((-1420978385 - ((v41 - 168) | 0xAB4D972F) + a27) ^ 0xE9B3A227);
  (*(v35 + 8 * (v37 ^ 0xB8Cu)))(v41 - 168);
  *(v36 + 1336 * a34 + 1284) = 0;
  *(v41 - 152) = v38;
  *(v41 - 160) = v37 + 397 + a25;
  *(v41 - 164) = a23;
  (*(a32 + 8 * (v37 ^ 0xB8Cu)))(v41 - 168);
  v42.i64[0] = 0xEEEEEEEEEEEEEEEELL;
  v42.i64[1] = 0xEEEEEEEEEEEEEEEELL;
  v43.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v43.i64[1] = 0xF7F7F7F7F7F7F7F7;
  *(v36 + 1336 * a34 + 169 + v39) = vaddq_s8(vsubq_s8(*(v40 + v39), vandq_s8(vaddq_s8(*(v40 + v39), *(v40 + v39)), v42)), v43);
  return (*(a32 + 8 * (v37 ^ 0xCE3u)))(1336, v44, 3299, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_B9F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v9 - 1;
  *(v7 + v11) = *(v8 + v11);
  return (*(a7 + 8 * ((2824 * (v11 == (v10 - 2849) - 5)) ^ (v10 - 2068))))();
}

uint64_t sub_BA148@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v4 = (((*(v2 + 16) ^ 0x590BD96F) + 2031494454) ^ ((*(v2 + 16) ^ 0xECA61EA0) - 860101893) ^ ((*(v2 + 16) ^ 0x4A523830) + (v3 ^ 0x6A4FC1B6))) + 829676419;
  v5 = (a2 > 0xEEAA20D6) ^ (v4 < 0x1155DF29);
  v6 = v3 + 1353 + a2 + 290837507 > v4;
  if (v5)
  {
    v6 = a2 > 0xEEAA20D6;
  }

  return (*(a1 + 8 * ((960 * v6) ^ v3)))();
}

uint64_t sub_BA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v19 = *v15 + v17 - 0x9FDC3CC69C898FBLL;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = v20 - ((2 * v20 + 0x1C2F3D39B114EFF2) & 0x7D6053BB5F7CC0F8) - 0x7338378577B7278BLL;
  v22 = __ROR8__(v21 ^ 0x6EFCD57580E94772, 8);
  v21 ^= 0x1E40219344BAF8B8uLL;
  v23 = *(STACK[0x430] + 8 * v12);
  v24 = (((2 * (v22 + v21)) & 0xEF7B8E73443C6FELL) - (v22 + v21) + 0x7884238C65DE1C80) ^ 0x9259C6A8C29AFF07 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__((((2 * (v22 + v21)) & 0xEF7B8E73443C6FELL) - (v22 + v21) + 0x7884238C65DE1C80) ^ 0x9259C6A8C29AFF07, 8) + v24) ^ 0xB6A9B6003705FD5CLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xAFC44C9EE43CCADALL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x90FCB26CA27E8B2CLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xD0E02262DF67D69;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (a1 - ((v33 + v32) | a1) + ((v33 + v32) | 0x9415172E45604113)) ^ 0xE6FDEBA85BE7D5D3;
  *v19 = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v32, 61))) ^ 0x6C44714321C46F3ALL) >> (8 * (v19 & 7u))) ^ HIBYTE(v11) ^ 0x20;
  v35 = __ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = v13 - (((0xB1E8616327758806 - v35) | 0x5B6B8432E855DADLL) + ((v35 + 0x6179E9CD88A77F9) | 0xFA4947BCD17AA252));
  v37 = v36 ^ 0x55FA44EB01D27AA3;
  v36 ^= 0x2546B00DC581C569uLL;
  v38 = (__ROR8__(v37, 8) + v36) ^ 0xEADDE524A744E387;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xB6A9B6003705FD5CLL;
  v41 = __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + (v40 ^ v41)) ^ 0xAFC44C9EE43CCADALL;
  v43 = v42 ^ __ROR8__(v40 ^ v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x90FCB26CA27E8B2CLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xD0E02262DF67D69;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0x9848757C98E0BCE0) - (v48 + v47) + 0x33DBC541B38FA190) ^ 0xBECCC63852F7CAB0;
  *(v19 + 1) = (((__ROR8__(v49, 8) + (v49 ^ __ROR8__(v47, 61))) ^ 0x6C44714321C46F3ALL) >> (8 * ((v19 + 1) & 7))) ^ BYTE2(v11) ^ 0xA0;
  v50 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = ((0xB1E8616327758806 - v50) & v9) + v50 + 0x4E179E9CD88A77F9 - ((v50 + 0x4E179E9CD88A77F9) & v9);
  v52 = v51 ^ 0x80863E22F561BBD3;
  v51 ^= 0xF03ACAC431320419;
  v53 = __ROR8__(v52, 8);
  v54 = (a3 - ((v53 + v51) | a3) + ((v53 + v51) | 0xD7C2D6B93F0C327ELL)) ^ 0x3D1F339D9848D1F9;
  v55 = v54 ^ __ROR8__(v51, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) | 0xBEB7B9A459BF4546) - (v56 + v55) + 0x20A4232DD3205D5DLL) ^ 0x69F26AD21BDA5FFFLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((2 * (v59 + v58)) & 0x37B0BE7B67145838) - (v59 + v58) - 0x1BD85F3DB38A2C1DLL) ^ 0x4BE3EC5CA8491939;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) | 0x4DBB0A96C177183ELL) - (v62 + v61) + 0x59227AB49F4473E1) ^ 0x36213727C2C50733;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xD0E02262DF67D69;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x72E8FC861E8794C0;
  *(v19 + 2) = (((__ROR8__(v67, 8) + (v67 ^ __ROR8__(v66, 61))) ^ 0x6C44714321C46F3AuLL) >> (8 * ((v19 + 2) & 7))) ^ BYTE1(v11) ^ 3;
  v68 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = (v68 + 0x4E179E9CD88A77F9) ^ 0x20F0084EEB0498C4;
  v70 = (__ROR8__((v68 + 0x4E179E9CD88A77F9) ^ 0x504CFCA82F57270ELL, 8) + v69) ^ 0xEADDE524A744E387;
  v71 = __ROR8__(v70, 8);
  v72 = v70 ^ __ROR8__(v69, 61);
  v73 = (v71 + v72 - ((2 * (v71 + v72)) & 0x2D93B9AD472E148ELL) - 0x693623295C68F5B9) ^ 0x20606AD69492F71BLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xAFC44C9EE43CCADALL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v10 - ((v77 + v76) | v10) + ((v77 + v76) | 0x863964623331351FLL)) ^ 0x16C5D60E914FBE33;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  v81 = __ROR8__(((v7 | (2 * (v80 + v79))) - (v80 + v79) + v18) ^ a7, 8);
  v82 = ((v7 | (2 * (v80 + v79))) - (v80 + v79) + v18) ^ a7 ^ __ROR8__(v79, 61);
  v83 = (v81 + v82) ^ 0x72E8FC861E8794C0;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  *(v19 + 3) = v11 ^ a6 ^ (((v8 - ((v85 + v84) | v8) + ((v85 + v84) | v14)) ^ v16) >> (8 * ((v19 + 3) & 7)));
  return v23();
}

uint64_t sub_BA8A8(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26)
{
  v28.n128_u64[0] = 0xEEEEEEEEEEEEEEEELL;
  v28.n128_u64[1] = 0xEEEEEEEEEEEEEEEELL;
  v29.n128_u64[0] = 0xF8F8F8F8F8F8F8F8;
  v29.n128_u64[1] = 0xF8F8F8F8F8F8F8F8;
  return (*(v26 + 8 * (((v27 ^ 0xB6E) * (a15 < 0xFFFFFFFE)) ^ v27 ^ 0x73C)))(a21, a26, a6, a7, 3984650668, 3883129889, a10, 2540308231, a1, a2, a3, v28, v29);
}

uint64_t sub_BA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xC88];
  v10 = STACK[0xB40];
  v11 = STACK[0x8CC];
  STACK[0x590] = STACK[0xC88];
  LODWORD(STACK[0xB84]) = 1295982620;
  STACK[0x848] = v10;
  LODWORD(STACK[0xA84]) = v11;
  LODWORD(STACK[0xFEC]) = 859970913;
  return (*(a7 + 8 * (((v9 == 0) * (5 * ((5 * ((v8 - 2184) ^ 0x3C5)) ^ 0x6CE) + 1427 * ((5 * ((v8 - 2184) ^ 0x3C5)) ^ 0x6C5) - 2882)) ^ (5 * ((v8 - 2184) ^ 0x3C5)))))();
}

uint64_t sub_BA984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0xAE0]) = STACK[0x46C];
  STACK[0xE18] = STACK[0x1028];
  LODWORD(STACK[0x73C]) = 1299398907;
  return sub_BC5C0(a1, a5, 1682696337);
}

uint64_t sub_BAA10()
{
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return (*(v3 + 8 * ((v4 * (((v0 ^ 0xA31) + 2290) ^ (5 * (v0 ^ 0xA31)))) ^ v0)))();
}

uint64_t sub_BAB0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v10 = LODWORD(STACK[0xC14]) ^ (LODWORD(STACK[0x12AC]) + a8 - (v9 & (2 * LODWORD(STACK[0x12AC])))) ^ v8;
  v11 = STACK[0xE28];
  v12 = v10 + a4 - (a6 & (2 * v10));
  v11[8] = HIBYTE(v12) ^ 0xB0;
  v11[9] = BYTE2(v12) ^ 0x2E;
  v11[10] = BYTE1(v12) ^ 0x31;
  v11[11] = v12 ^ 0xFB;
  return sub_BAB70();
}

uint64_t sub_BAC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 252) = 784267141;
  *(v7 + 16) = 0;
  *(v7 + 164) = 2079873053;
  *(v7 + 244) = 1377186719;
  *(v7 + 248) = 281631866;
  *(v7 + 183) = (&STACK[0x1050] + ((((v8 + 26) | 0xA0) + 33) | 0x90) + 0x80) * (&STACK[0x1050] ^ 0xBA);
  return (*(a7 + 8 * ((v8 - 1510) | 0xA0)))();
}

uint64_t sub_BAC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0x2E0];
  v6 = STACK[0x2E0] ^ 0xFFFFFFA3;
  v7 = STACK[0x2E0] ^ 0xFFFFFFEC;
  STACK[0x270] = ~LODWORD(STACK[0x2E0]);
  STACK[0x2C0] = v5 ^ 0x7B;
  return sub_BAD20(v6, v7, STACK[0x220], a4, a5, STACK[0x210], v5 ^ 0xFFFFFFBE);
}

uint64_t sub_BAD20@<X0>(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, char a3@<W2>, unsigned __int8 a4@<W5>, unsigned __int8 a5@<W6>, unsigned __int8 a6@<W8>)
{
  STACK[0x240] = v12;
  LODWORD(STACK[0x420]) = v7;
  v16 = STACK[0x2F0];
  v17 = *(STACK[0x2F0] + (v6 ^ 0x50));
  v18 = v6 ^ 0xD3 ^ -(v6 ^ 0xD3) ^ (v17 - (v6 ^ 0xD3 ^ v17));
  v19 = *(STACK[0x2F0] + (a2 ^ 0x50));
  LODWORD(STACK[0x220]) = v7 + 547;
  v20 = (v7 + 547) ^ 0xD44;
  LODWORD(STACK[0x230]) = v20;
  v21 = *(v16 + (v20 ^ a3 ^ v10));
  v22 = *(v16 + (v9 ^ 0x50));
  v23 = *(v16 + (v8 ^ 0x50));
  LOBYTE(v20) = *(v16 + (a4 ^ 0x50));
  v24 = *(v16 + (v13 ^ 0x50));
  v25 = *(v16 + (v14 ^ 0x50));
  v26 = *(v16 + (v15 ^ 0x50));
  v27 = *(v16 + (v11 ^ 0x50));
  LODWORD(STACK[0x250]) = *(v16 + (v12 ^ 0x50));
  LODWORD(STACK[0x260]) = *(v16 + (a1 ^ 0x50));
  LODWORD(STACK[0x2D0]) = *(v16 + (a6 ^ 0x50));
  v29 = v11;
  v30 = *(v16 + (a5 ^ 0x50));
  v31 = STACK[0x270];
  LODWORD(STACK[0x2E0]) = *(v16 + (STACK[0x270] ^ 0x50));
  v32 = v18 + v17;
  v35 = STACK[0x2C0];
  LODWORD(STACK[0x2F0]) = *(v16 + (STACK[0x2C0] ^ 0x50));
  v36 = LODWORD(STACK[0x280]) ^ 0x45C4BE9;
  v37 = a3 ^ HIBYTE(v36) ^ v21 ^ 0xE6;
  v38 = a2 ^ BYTE2(v36) ^ v19 ^ 0xE6;
  v39 = v9 ^ BYTE1(v36) ^ v22 ^ 0xE6;
  v40 = LODWORD(STACK[0x290]) ^ 0xFF6D72FA;
  v41 = a4 ^ HIBYTE(v40) ^ v20 ^ 0xE6;
  LOBYTE(v16) = v36 ^ v8 ^ v23 ^ 0xE6;
  v42 = v13 ^ BYTE2(v40) ^ v24 ^ 0xE6;
  v43 = v14 ^ BYTE1(v40) ^ v25 ^ 0xE6;
  v44 = LODWORD(STACK[0x2A0]) ^ 0x34A6311A;
  LOBYTE(v44) = v44 ^ v32 ^ 0x35;
  v45 = LODWORD(STACK[0x2B0]) ^ 0xE43738CE;
  v46 = a6 ^ BYTE1(v45) ^ LODWORD(STACK[0x2D0]) ^ 0xE6;
  v47 = v45 ^ a5 ^ v30 ^ 0xE6;
  v48 = v35 ^ BYTE2(v45) ^ LODWORD(STACK[0x2F0]) ^ 0xE6;
  v49 = *(&off_103F00 + (LODWORD(STACK[0x420]) ^ 0x983)) - 4;
  v50 = v49[v37];
  v51 = v49[v38];
  v52 = v49[v39];
  v53 = v49[v41];
  v54 = v49[v16];
  LODWORD(v35) = v49[v42];
  LOBYTE(v45) = v49[v43];
  v55 = v49[(v40 ^ v15 ^ v26 ^ 0xE6)];
  v56 = v49[v29 ^ HIBYTE(v44) ^ v27 ^ 0xE6];
  v57 = v49[(STACK[0x240] ^ BYTE2(v44) ^ LODWORD(STACK[0x250]) ^ 0xE6)];
  v58 = v49[a1 ^ BYTE1(v44) ^ LODWORD(STACK[0x260]) ^ 0xE6];
  v59 = v49[v44];
  v60 = v49[v46];
  LODWORD(v16) = v49[v47];
  v61 = v49[(v31 ^ HIBYTE(v45) ^ LODWORD(STACK[0x2E0]) ^ 0xE6)];
  v62 = v49[v48];
  LODWORD(STACK[0x2F0]) = v54 - ((2 * v54 + 12) & 0xD6);
  LODWORD(STACK[0x2E0]) = v52 + ((114 - 2 * v52) | 0x9D);
  v63 = (v35 - ((2 * v35 + 12) & 0xFFFFFFA6) + 89) ^ LODWORD(STACK[0x300]);
  LOBYTE(v54) = v50 + ((-14 - 2 * v50) | 0x3D);
  LODWORD(STACK[0x2D0]) = v55 + ((18 - 2 * v55) | 0xED);
  LODWORD(STACK[0x300]) = v60 - ((2 * v60 + 12) & 0x18);
  LODWORD(STACK[0x2B0]) = v57 - ((2 * v57 + 12) & 0x46);
  LODWORD(STACK[0x2C0]) = v59 - ((2 * v59 + 12) & 0xCA);
  LODWORD(STACK[0x290]) = v61 - ((2 * v61 + 12) & 0x12);
  LODWORD(STACK[0x2A0]) = v62 - ((2 * v62 + 12) & 0xFFFFFFE3);
  v64 = v56 - ((2 * v56 + 12) & 0xDD);
  v65 = LODWORD(STACK[0x310]) ^ 0x67 ^ (v51 - ((2 * v51 + 12) & 0xA) - 117);
  LOBYTE(v62) = LODWORD(STACK[0x320]) ^ 0x67 ^ (v54 - 24);
  LODWORD(STACK[0x320]) = v16 - 2 * ((v16 + 6) & 0x63 ^ v16 & 1);
  v66 = STACK[0x1170];
  v67 = STACK[0x1178];
  v67[1] = v65;
  *v67 = v62;
  v67[2] = LODWORD(STACK[0x330]) ^ 0x67 ^ (LODWORD(STACK[0x2E0]) - 72);
  v67[4] = LODWORD(STACK[0x380]) ^ 0x67 ^ (v53 - 2 * ((v53 + 6) & 0x3D ^ v53 & 1) - 62);
  v67[3] = LODWORD(STACK[0x3D0]) ^ 0x67 ^ (LODWORD(STACK[0x2F0]) + 113);
  v67[6] = LODWORD(STACK[0x3E0]) ^ 0x67 ^ (v45 - 2 * ((v45 + 6) & 0x6D ^ v45 & 1) - 14);
  v67[5] = (v63 & 8 | 0x67) ^ v63 & 0xF7;
  v67[7] = LODWORD(STACK[0x350]) ^ 0x67 ^ (LODWORD(STACK[0x2D0]) + 16);
  v68 = LODWORD(STACK[0x3A0]) ^ 0x67 ^ (LODWORD(STACK[0x2B0]) - 87);
  LOBYTE(v59) = LOBYTE(STACK[0x340]) ^ 0x67 ^ (v58 - 2 * ((v58 + 6) & 0x39 ^ v58 & 1) + 62);
  v67[8] = LODWORD(STACK[0x3F0]) ^ 0x67 ^ (v64 + 116);
  v67[10] = v59;
  v67[9] = v68;
  v69 = LODWORD(STACK[0x360]) ^ 0x67 ^ (LODWORD(STACK[0x2C0]) + 107);
  v67[14] = LODWORD(STACK[0x3C0]) ^ 0x67 ^ (LODWORD(STACK[0x290]) - 113);
  v67[11] = v69;
  v67[15] = LODWORD(STACK[0x3B0]) ^ 0x67 ^ (LODWORD(STACK[0x2A0]) + 119);
  v67[12] = LODWORD(STACK[0x390]) ^ 0x67 ^ (LODWORD(STACK[0x300]) + 18);
  v67[13] = LOBYTE(STACK[0x370]) ^ 0x67 ^ (LODWORD(STACK[0x320]) - 24);
  v70 = STACK[0x410];
  STACK[0x1178] = (v67 + 16);
  v71 = LODWORD(STACK[0x420]) ^ (23 * (v70 < 0x1F0));
  STACK[0x1170] = v66 + 16;
  return (*(STACK[0x430] + 8 * v71))();
}

uint64_t sub_BB36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 + 2828)))();
  STACK[0x9D8] = 0;
  return sub_BB3A0(v8);
}

uint64_t sub_BB7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 136) = v17 + ((((2 * v18) | 0x3DA10CBE) - v18 - 516982367) ^ 0xF83F2304) * v15 - 282;
  *(v20 - 128) = v19;
  *(v20 - 120) = &a15;
  v21 = (*(v16 + 8 * (v17 + 2566)))(v20 - 136);
  return (*(v16 + 8 * ((3571 * (*(v20 - 112) + ((((v17 - 1098) | 0x300) - 1903883822) ^ ((v17 - 76) | 3u)) < 0xC49FABD8)) ^ v17)))(v21);
}

uint64_t sub_BBA94@<X0>(int a1@<W2>, int a2@<W8>)
{
  v6 = *(v5 + v2 * v3 + 36);
  v8 = v6 != a1 && (v6 + 1071291515) < 0x80000003;
  return (*(v4 + 8 * ((v8 * (a2 ^ 0xC61 ^ (a2 - 2687) ^ 0x1E4)) | a2)))();
}

void sub_BBAE4(int a1@<W8>)
{
  v3 = v1 - 2396;
  v4 = *(v2 + 4);
  if ((v3 ^ 0x5A3DE9D7) + v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = -a1;
  }

  *(v2 + 4) = v5 + v4;
  JUMPOUT(0xBBB3CLL);
}

uint64_t sub_BBC6C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (*(a1 + 8 * (a2 + 3220)))();
  v4 = STACK[0x430];
  *(v2 + 24) = 0;
  return sub_2C9A0(v3, v5, v6, v7, v8, v9, v4);
}

uint64_t sub_BBCCC(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 36);
  STACK[0xF18] = v7 + 36;
  v9 = (((v8 - 112) ^ 0x50) + 48) ^ (v8 - 112) ^ (((v8 - 112) ^ 0xE4) - 100) ^ (((v8 - 112) ^ 0x9B) + ((a2 + 38) ^ (a2 - 63))) ^ (((v8 - 112) ^ 0xAF) - 47);
  STACK[0xD28] = 0x30000000000uLL >> ((v9 ^ 0xAA) & 0x2B ^ 0x2Au) >> (v9 & 0x14);
  STACK[0x5D8] = 0xFFFFFF0000000000 >> (~(v9 ^ 0xAA) & 0x22) >> ((v9 ^ 0xAA) & 0x1D ^ 8u);
  STACK[0x598] = 0xFFFFFFFFFFuLL >> ((v9 ^ 0xAA) & 0x34 ^ 0x20u) >> ((v9 ^ 0xAA) & 0xB ^ 0xAu);
  LODWORD(STACK[0x600]) = a3;
  STACK[0xE78] = 0xFFFF000000000000 >> ((v9 ^ 0xAA) & 0x38 ^ 0x28u) >> ((v9 ^ 0xAA) & 7 ^ 2u);
  return (*(a7 + 8 * (a2 ^ (86 * (a1 >= 0)))))();
}

void sub_BBF44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 7;
  STACK[0xA58] = a1;
  *(a1 + 4) = 0;
  STACK[0x450] = a1;
  v9 = STACK[0xD90];
  v10 = &STACK[0x1520] + STACK[0xD90];
  STACK[0xB50] = v10;
  STACK[0x900] = (v10 + 32);
  STACK[0x890] = (v10 + 64);
  STACK[0xFA8] = (v10 + 80);
  STACK[0x1048] = (v10 + 96);
  STACK[0xD90] = 3 * (v7 ^ 0x303u) + v9 - 2767;
  (*(a7 + 8 * (v8 + 1009)))();
  STACK[0x760] = 0;
  LODWORD(STACK[0xB3C]) = -1340669477;
  STACK[0x608] = 0;
  LODWORD(STACK[0x4E8]) = -1340669477;
  LODWORD(STACK[0x624]) = -1340669477;
  STACK[0xDD8] = 0;
  STACK[0xE30] = 0;
  LODWORD(STACK[0xA6C]) = 6;
  JUMPOUT(0x95970);
}

uint64_t sub_BC00C@<X0>(int a1@<W0>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 1428);
  STACK[0xD90] += 256;
  STACK[0x778] = v4 + 1432;
  if (v6 <= 0x20 && ((1 << v6) & 0x100110000) != 0)
  {
    return (*(a3 + 8 * ((3865 * (*(a4 + 476) == (((STACK[0x408] - 2598) | 0x640) ^ 0x741))) ^ (STACK[0x408] - 998))))();
  }

  STACK[0xD90] -= 256;
  v8 = (v5 & 0xCE6404CD ^ (v5 ^ 0x1C639A64) & (a1 ^ 0xCBEA7CD5) ^ 0x937A5FFC) & 0xA426 ^ 0x9B101308;
  v9 = (v8 >> 4) & 0xA0BD5A2 ^ 0xF7FEFEDD ^ ((v8 >> 4) ^ 0xF9B10172) & (v8 ^ 0x911BC28A);
  if (((v9 | (v9 >> 2)) & 3) != 0)
  {
    v10 = (a2 + 2);
  }

  else
  {
    v10 = 1682696337;
  }

  return (STACK[0xF98])(418762472, v10);
}

uint64_t sub_BC1A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  HIDWORD(v16) = a2 ^ 0x37AC65;
  LODWORD(v16) = a2 ^ 0x10000000;
  v17 = (a6 ^ 0x74556357) & (v14 ^ a4) ^ v14 & 0x9B9D30CD;
  v18 = (a5 ^ v12) + (v16 >> 27) + (*(v9 + 4 * (a3 + v13)) ^ v10) + (v17 & 0xC166C75C ^ 0x4066C754 ^ (v17 ^ 0x7477EF77) & (a1 ^ 0xD1516B39) | v14 & 0xFCEBC0BB ^ 0x10238021 ^ (a6 ^ 0xECDC6CDE) & (v14 ^ v12)) - 623632212;
  v19 = (v18 ^ 0x3257D928) & (2 * (v18 & 0xB4479C30)) ^ v18 & 0xB4479C30;
  v20 = ((2 * (v18 ^ 0x72DDC108)) ^ 0x8D34BA70) & (v18 ^ 0x72DDC108) ^ (2 * (v18 ^ 0x72DDC108)) & 0xC69A5D38;
  v21 = v20 ^ 0x428A4508;
  v22 = (v20 ^ 0x80101000) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x1A6974E0) & v21 ^ (4 * v21) & 0xC69A5D38;
  v24 = (v23 ^ 0x2085420) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC4920918)) ^ 0x69A5D380) & (v23 ^ 0xC4920918) ^ (16 * (v23 ^ 0xC4920918)) & 0xC69A5D30;
  v26 = v24 ^ 0xC69A5D38 ^ (v25 ^ 0x40805100) & (v24 << 8);
  return (*(v11 + 8 * (((a3 + 1 != v8 + 60) * v7) ^ v6)))(a2, v18 ^ (2 * ((v26 << 16) & 0x469A0000 ^ v26 ^ ((v26 << 16) ^ 0x5D380000) & (((v25 ^ 0x861A0C38) << 8) & 0x469A0000 ^ 0x44820000 ^ (((v25 ^ 0x861A0C38) << 8) ^ 0x1A5D0000) & (v25 ^ 0x861A0C38)))) ^ 0xA1748A25);
}

uint64_t sub_BC638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = 1556812919 * ((-1199909296 - (v18 | 0xB87AD650) + a11) ^ 0x1D0645CC);
  *(v21 - 136) = 1454173610 - v22;
  *(v21 - 120) = ((v17 ^ 0x26C) + 217) ^ v22;
  *(v21 - 128) = v20;
  (*(v16 + 8 * ((v17 ^ 0x26C) + 2455)))(v21 - 136);
  *(v21 - 128) = (v17 ^ 0x26C) + 539293837 * ((-74577496 - (v18 | 0xFB8E09A8) + a10) ^ 0xB9703CA0) - 418;
  *(v21 - 136) = v19;
  *(v21 - 120) = a15;
  (*(v16 + 8 * (v17 ^ 0x8B0)))(v21 - 136);
  *(v21 - 128) = v20;
  *(v21 - 120) = a15;
  *(v21 - 136) = (v17 ^ 0x26C) + a9 * v15 - 374;
  v23 = (*(v16 + 8 * ((v17 ^ 0x26C) + 2474)))(v21 - 136);
  return (*(v16 + 8 * ((473 * (((((((v17 ^ 0x26C) + 708759828) & 0xD5C12E5F) + 48) ^ (*(v21 - 112) == 1903883944)) & 1) == 0)) ^ v17 ^ 0x26C)))(v23);
}

uint64_t sub_BC78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29)
{
  v30 = *(a2 + 4);
  v32 = *(a2 + 8);
  HIDWORD(a14) = -327609731;
  a29 = 1131089171;
  return (*(v29 + 9224))(a1, a2, 990567816, 1156915831, v30, 3936463634, 3304398215, 3085060975, &STACK[0x228], a10, v30 | 0xEAA1A03F00000000, v32, &a29, a14, 0, 0x4D7340FB481DB202, a17, a18, a19, a20);
}

uint64_t sub_BC94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x538] + 24);
  STACK[0xD88] = v8;
  return (*(a7 + 8 * (((v8 == 0) * (((v7 - 759) ^ 0xFFFFF891) + 45 * (v7 ^ 0xE5A))) ^ v7)))();
}

uint64_t sub_BC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x408] - 1951;
  v5 = LOWORD(STACK[0x11EE]);
  STACK[0x6B0] = STACK[0x11F0];
  return (*(STACK[0x430] + 8 * ((2093 * (v5 == 27753)) ^ v4)))(a1, a2, a3, a4, 0x4E179E9CD88A77F9);
}

uint64_t sub_BCAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1470] = v8;
  v9 = STACK[0x530];
  STACK[0x1478] = STACK[0x530];
  return (*(a7 + 8 * (((v8 - v9 > 9) * ((v7 ^ 0x75D) - 2249)) ^ v7)))();
}

void sub_BCC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *v21 = v20 + ((((a13 - v20) | (v20 - a13)) >> 31) ^ 0x7FFFFFFF) + 137 * (v20 ^ 0xE) - 1917;
  (*(v22 + 8 * (v20 + 3714)))(a20);
  JUMPOUT(0xBCCF8);
}

uint64_t sub_BCDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = ((v7 + 62) ^ 0xFFFFFFFFFFFFFDAALL) + a2;
  *(v8 + v13) = *(v9 + v13) ^ *(v10 + v13) ^ *(v11 + v13) ^ *(v12 + v13) ^ (-75 * v13) ^ 0xF7;
  return (*(a7 + 8 * ((1681 * (v13 == 0)) ^ v7)))();
}

void sub_BCE90()
{
  v1 = (STACK[0x550] + 688);
  STACK[0x500] = v1;
  *v1 = v0;
  JUMPOUT(0xB07C8);
}

void sub_BD014()
{
  v3 = ((v1 >> (v2 ^ 0x27)) ^ -((v0 & 1) == 0)) + ((v0 & 1) == 0);
  v4 = LOWORD(STACK[0x9BE]);
  STACK[0xDE0] = v4;
  *(STACK[0x550] + 4 * v4 + 948) = v3 - 1145819634 - ((2 * v3) & 0x77685C1C);
  JUMPOUT(0xD42CCLL);
}

uint64_t sub_BD0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v7 - 16;
  v15 = *(a3 + v14 - 16);
  v16.i64[0] = a3 + v14 - 15;
  v16.i64[1] = a3 + v14 - 16;
  *&STACK[0x2B0] = v16;
  *&STACK[0x2C0] = v15;
  v16.i64[0] = a3 + v14 - 13;
  v16.i64[1] = a3 + v14 - 14;
  *&STACK[0x2A0] = v16;
  v17.i64[0] = a4 + v14;
  v17.i64[1] = a3 + v14 - 4;
  v18.i64[0] = a3 + v14 - 7;
  v18.i64[1] = a3 + v14 - 8;
  v19.i64[0] = a3 + v14 - 5;
  v19.i64[1] = a3 + v14 - 6;
  v16.i64[0] = a3 + v14 - 1;
  v16.i64[1] = a3 + v14 - 2;
  *&STACK[0x280] = v16;
  v20 = vandq_s8(v16, *&STACK[0x3F0]);
  v21 = vandq_s8(v19, *&STACK[0x3F0]);
  v22 = vandq_s8(v18, *&STACK[0x3F0]);
  v23 = vandq_s8(v17, *&STACK[0x3F0]);
  v24 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL), *&STACK[0x3E0]);
  v25 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL), *&STACK[0x3E0]);
  v26 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL), *&STACK[0x3E0]);
  v27 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), *&STACK[0x3E0]);
  v28 = vsubq_s64(vorrq_s8(vaddq_s64(v27, v27), *&STACK[0x3D0]), v27);
  v29 = vsubq_s64(vorrq_s8(vaddq_s64(v26, v26), *&STACK[0x3D0]), v26);
  v30 = vsubq_s64(vorrq_s8(vaddq_s64(v25, v25), *&STACK[0x3D0]), v25);
  *&STACK[0x290] = vsubq_s64(vorrq_s8(vaddq_s64(v24, v24), *&STACK[0x3D0]), v24);
  v31 = *&STACK[0x2E0];
  v32 = vaddq_s64(v29, *&STACK[0x2D0]);
  v33 = vaddq_s64(v28, *&STACK[0x2D0]);
  v34 = veorq_s8(v33, v10);
  v35 = veorq_s8(v32, v10);
  v36 = veorq_s8(v32, v11);
  v37 = veorq_s8(v33, v11);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v37);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v36);
  v40 = *&STACK[0x390];
  v42 = *&STACK[0x330];
  v41 = *&STACK[0x340];
  v43 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v38, *&STACK[0x2E0]), vorrq_s8(v38, *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x340]);
  v44 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v39, *&STACK[0x2E0]), vorrq_s8(v39, *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x340]);
  v45 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v46 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL));
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v45);
  v49 = *&STACK[0x380];
  v51 = *&STACK[0x310];
  v50 = *&STACK[0x320];
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v47, *&STACK[0x330]), vorrq_s8(v47, *&STACK[0x380])), *&STACK[0x380]), *&STACK[0x320]);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v48, *&STACK[0x330]), vorrq_s8(v48, *&STACK[0x380])), *&STACK[0x380]), *&STACK[0x320]);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v55 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), *&STACK[0x310]);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), *&STACK[0x310]);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = vaddq_s64(v60, v58);
  v63 = *&STACK[0x350];
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v62, v62), v12), v62), *&STACK[0x350]), v13);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v61, v61), v12), v61), *&STACK[0x350]), v13);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v68 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v70 = *&STACK[0x370];
  v71 = veorq_s8(vaddq_s64(v68, v66), *&STACK[0x370]);
  v72 = veorq_s8(v69, *&STACK[0x370]);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = *&STACK[0x2F0];
  v79 = veorq_s8(vaddq_s64(v76, v74), *&STACK[0x2F0]);
  v80 = veorq_s8(v77, *&STACK[0x2F0]);
  v81 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = v11;
  v84 = v10;
  v85 = *&STACK[0x2D0];
  v86.i64[0] = a3 + v14 - 11;
  v86.i64[1] = a3 + v14 - 12;
  *&STACK[0x260] = v86;
  v87 = vaddq_s64(v30, v85);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), veorq_s8(v79, v81));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v82);
  v90 = *&STACK[0x3B0];
  v91 = *&STACK[0x3C0];
  v92 = *&STACK[0x3A0];
  v93 = *&STACK[0x240];
  v193.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v88, vandq_s8(vaddq_s64(v88, v88), *&STACK[0x3C0])), *&STACK[0x3B0]), *&STACK[0x3A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), *&STACK[0x240])));
  v193.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v89, vandq_s8(vaddq_s64(v89, v89), *&STACK[0x3C0])), *&STACK[0x3B0]), *&STACK[0x3A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), *&STACK[0x240])));
  v94 = veorq_s8(v87, v84);
  v95 = veorq_s8(v87, v83);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, v31), vorrq_s8(v96, v40)), v40), v41);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v42), vorrq_s8(v99, v49)), v49), v50);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v51);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v12), v104), v63), v13);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v70);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v78);
  v81.i64[0] = a3 + v14 - 9;
  v81.i64[1] = a3 + v14 - 10;
  *&STACK[0x270] = v81;
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL)));
  v111 = vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), v91));
  v112 = vandq_s8(v81, *&STACK[0x3F0]);
  v113 = vaddq_s64(*&STACK[0x290], v85);
  v193.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v111, v90), v92), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v93)));
  v114 = veorq_s8(v113, v84);
  v115 = veorq_s8(v113, v83);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v31), vorrq_s8(v116, v40)), v40), v41);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v42), vorrq_s8(v119, v49)), v49), v50);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v51);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v124, v124), v12), v124), v63), v13);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v70);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v78);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v132 = vandq_s8(v86, *&STACK[0x3F0]);
  v133 = vaddq_s64(v131, v130);
  v134 = vandq_s8(*&STACK[0x2A0], *&STACK[0x3F0]);
  v193.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v133, vandq_s8(vaddq_s64(v133, v133), v91)), v90), v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), v93)));
  v135 = vandq_s8(*&STACK[0x2B0], *&STACK[0x3F0]);
  v136 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), *&STACK[0x3E0]);
  v140 = vaddq_s64(v138, *&STACK[0x3E0]);
  v141 = vaddq_s64(v137, *&STACK[0x3E0]);
  v142 = vaddq_s64(v136, *&STACK[0x3E0]);
  v143 = vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), *&STACK[0x3D0]), v141);
  v144 = vsubq_s64(vorrq_s8(vaddq_s64(v140, v140), *&STACK[0x3D0]), v140);
  v145 = vaddq_s64(v143, v85);
  v146 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v142, v142), *&STACK[0x3D0]), v142), v85);
  v142.i64[0] = vqtbl4q_s8(v193, *&STACK[0x230]).u64[0];
  v193.val[0] = veorq_s8(v146, v84);
  v193.val[1] = veorq_s8(v145, v84);
  v193.val[2] = veorq_s8(v145, v83);
  v193.val[3] = veorq_s8(v146, v83);
  v147 = v78;
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[0], v31), vorrq_s8(v193.val[0], v40)), v40), v41);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[1], v31), vorrq_s8(v193.val[1], v40)), v40), v41);
  v193.val[2] = veorq_s8(v193.val[1], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[0], v42), vorrq_s8(v193.val[0], v49)), v49), v50);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[1], v42), vorrq_s8(v193.val[1], v49)), v49), v50);
  v193.val[2] = veorq_s8(v193.val[1], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]), v51);
  v193.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL), v193.val[3]), v51);
  v148 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v148);
  v149 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(v149, v193.val[2]);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193.val[1], v193.val[1]), v12), v193.val[1]), v63), v13);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193.val[0], v193.val[0]), v12), v193.val[0]), v63), v13);
  v150 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v150);
  v151 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = veorq_s8(vaddq_s64(v151, v193.val[2]), v70);
  v193.val[0] = veorq_s8(v193.val[0], v70);
  v152 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v152);
  v153 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = veorq_s8(vaddq_s64(v153, v193.val[2]), v78);
  v193.val[0] = veorq_s8(v193.val[0], v78);
  v154 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v154);
  v155 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v156 = vaddq_s64(v144, v85);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(v155, v193.val[2]);
  v193.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v193.val[0], vandq_s8(vaddq_s64(v193.val[0], v193.val[0]), v91)), v90), v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2B0], 3uLL), v93)));
  v193.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v193.val[1], vandq_s8(vaddq_s64(v193.val[1], v193.val[1]), v91)), v90), v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2A0], 3uLL), v93)));
  v157 = veorq_s8(v156, v84);
  v158 = veorq_s8(v156, v83);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, v31), vorrq_s8(v159, v40)), v40), v41);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v162, v42), vorrq_s8(v162, v49)), v49), v50);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v51);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), v12), v167), v63), v13);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v70);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v147);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v174 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), *&STACK[0x3D0]), v139), v85);
  v193.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v173, vandq_s8(vaddq_s64(v173, v173), v91)), v90), v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), v93)));
  v175 = veorq_s8(v174, v84);
  v176 = veorq_s8(v174, v83);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177, v31), vorrq_s8(v177, v40)), v40), v41);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180, v42), vorrq_s8(v180, v49)), v49), v50);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v51);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v185, v185), v12), v185), v63), v13);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v70);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), v147);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL)));
  v193.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v191, vandq_s8(vaddq_s64(v191, v191), v91)), v90), v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v93)));
  v142.i64[1] = vqtbl4q_s8(v193, *&STACK[0x230]).u64[0];
  v193.val[0] = vrev64q_s8(v142);
  *(v8 + v14) = veorq_s8(vextq_s8(v193.val[0], v193.val[0], 8uLL), *&STACK[0x2C0]);
  return (*(a7 + 8 * ((480 * (a1 == v14)) ^ v9)))();
}

uint64_t sub_BD184@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = v63 ^ 0x58D4AEAF ^ ((LODWORD(STACK[0x270]) | v75 & ((a4 << 16) ^ 0xDB609259)) ^ 0xBD6EED3) & v71;
  v78 = v65 ^ 0xA654D11D ^ (v73 ^ 0x1482036A ^ ((((v66 << 8) ^ 0x398F9F65) & v64 | v70) ^ 0xC94F18A4) & v72) & v67;
  v79 = *(&off_103F00 + a3 - 3281) - 12;
  v80 = ((*&v79[4 * (*(a63 + (v78 >> 24)) ^ 0xALL)] ^ *(a63 + (v78 >> 24))) << 8) ^ ((*&v79[4 * (*(a63 + BYTE2(v76)) ^ 0xALL)] ^ *(a63 + BYTE2(v76))) << 16);
  v81 = v68 ^ 0xCD6A1A43 ^ v69 & (a1 ^ 0xC210EECD);
  v82 = *(a63 + BYTE2(v81));
  v83 = (((LODWORD(STACK[0x2B0]) ^ 0x23DCEF02) & STACK[0x290] | LODWORD(STACK[0x280])) ^ 0x96535182) & LODWORD(STACK[0x260]);
  LODWORD(STACK[0x2D0]) = a3 - 2455;
  v84 = (LODWORD(STACK[0x250]) ^ (a3 - 2455) ^ 0xF8FD1845 ^ v83) & STACK[0x240] ^ a2;
  v85 = ((v80 ^ *&v79[4 * (v82 ^ 0xA)] ^ v82) << 16) ^ ((*&v79[4 * (*(a63 + BYTE2(v84)) ^ 0xALL)] ^ *(a63 + BYTE2(v84))) << 8);
  v86 = ((((*&v79[4 * (*(a63 + BYTE1(v84)) ^ 0xALL)] ^ *(a63 + BYTE1(v84))) << 8) ^ ((*&v79[4 * (*(a63 + BYTE1(v81)) ^ 0xALL)] ^ *(a63 + BYTE1(v81))) << 16) ^ *&v79[4 * (*(a63 + BYTE1(v76)) ^ 0xALL)] ^ *(a63 + BYTE1(v76))) << 16) ^ ((*&v79[4 * (*(a63 + BYTE2(v78)) ^ 0xALL)] ^ *(a63 + BYTE2(v78))) << 8);
  v87 = ((*&v79[4 * (*(a63 + (v76 >> 24)) ^ 0xALL)] ^ *(a63 + (v76 >> 24))) << 8) ^ ((*&v79[4 * (*(a63 + (v84 >> 24)) ^ 0xALL)] ^ *(a63 + (v84 >> 24))) << 16);
  v88 = ((*&v79[4 * (*(a63 + v81) ^ 0xALL)] ^ (*(a63 + v81) | 0xBE184400)) << 16) ^ ((*&v79[4 * (*(a63 + BYTE1(v78)) ^ 0xALL)] ^ *(a63 + BYTE1(v78))) << 24) ^ ((*&v79[4 * (*(a63 + v84) ^ 0xALL)] ^ *(a63 + v84)) << 8);
  v89 = *(a63 + v76);
  v90 = (v87 ^ *&v79[4 * (*(a63 + v78) ^ 0xALL)] ^ *(a63 + v78)) << 16;
  v91 = (v88 ^ (((*&v79[4 * (v89 ^ 0xA)] & 0x453A3773 ^ v89 & 0x73 ^ 0xFED5E89C) & (v89 & 0x8C ^ 0xCD37EC5D ^ *&v79[4 * (v89 ^ 0xA)] & 0xBAC5C88C) | (*&v79[4 * (v89 ^ 0xA)] & 0x453A3773 ^ v89 & 0x73) & 0x81322) << 32)) >> 32;
  v92 = HIDWORD(v86) ^ v86 ^ 0xC80C17D4;
  v93 = v91 ^ v88 ^ 0x34A58765;
  v94 = v90 ^ ((*&v79[4 * (*(a63 + (v81 >> 24)) ^ 0xALL)] ^ *(a63 + (v81 >> 24))) << 8);
  v95 = ((-(HIDWORD(v85) ^ 0x8FC0490B) ^ 0xC7C2EB85 ^ ((v85 ^ 0x84CB4200) - (HIDWORD(v85) ^ 0x8FC0490B ^ v85 ^ 0x84CB4200)) ^ ((HIDWORD(v85) ^ 0x8FC0490B) - 943527035 - 2 * ((HIDWORD(v85) ^ 0x8FC0490B) & 0x47C2EB95 ^ BYTE4(v85) & 0x10))) + (v85 ^ 0x84CB4200)) ^ 0xBD1A24BF;
  v96 = HIDWORD(v94) ^ v94 ^ 0xB2A5A863;
  v97 = *(a63 + (v96 >> 24));
  v98 = *(a63 + (BYTE4(v94) ^ v94 ^ 0x63u));
  v99 = *(a63 + BYTE2(v93));
  v100 = *&v79[4 * (v99 ^ 0xA)];
  LODWORD(v88) = *&v79[4 * (v97 ^ 0xA)];
  v101 = (((*&v79[4 * (v98 ^ 0xA)] ^ v98 & 0x57 | 0x264E9EA8) & (v98 & 0xA8 ^ 0x9826D8E0 ^ *&v79[4 * (v98 ^ 0xA)] & 0x264E9EA8) | (*&v79[4 * (v98 ^ 0xA)] ^ v98 & 0x57) & 0x41912117) << 8) ^ ((((*&v79[4 * (*(a63 + (v92 >> 24)) ^ 0xALL)] ^ *(a63 + (v92 >> 24))) << 8) ^ ((*&v79[4 * (*(a63 + (v93 >> 24)) ^ 0xALL)] ^ *(a63 + (v93 >> 24))) << 16) ^ *&v79[4 * (*(a63 + (v95 >> 24)) ^ 0xALL)] ^ *(a63 + (v95 >> 24))) << 16);
  LODWORD(STACK[0x2C0]) = a3;
  v102 = ((((v99 ^ 0xAC ^ v100) << 8) ^ ((v88 ^ v97) << 16) ^ *&v79[4 * (*(a63 + BYTE2(v92)) ^ 0xALL)] ^ *(a63 + BYTE2(v92))) << 16) ^ ((*&v79[4 * (*(a63 + BYTE2(v95)) ^ 0xALL)] ^ *(a63 + BYTE2(v95))) << 8);
  v103 = ((((*&v79[4 * (*(a63 + v95) ^ 0xALL)] ^ *(a63 + v95)) << 8) ^ ((*&v79[4 * (*(a63 + v92) ^ 0xALL)] ^ *(a63 + v92)) << 16) ^ *&v79[4 * (*(a63 + BYTE1(v96)) ^ 0xALL)] ^ *(a63 + BYTE1(v96))) << 16) ^ ((*&v79[4 * (*(a63 + v93) ^ 0xALL)] ^ *(a63 + v93)) << 8);
  v104 = ((((*&v79[4 * (*(a63 + BYTE1(v93)) ^ 0xALL)] ^ *(a63 + BYTE1(v93))) << 8) ^ ((*(a63 + BYTE2(v96)) ^ 0xACu ^ *&v79[4 * (*(a63 + BYTE2(v96)) ^ 0xALL)]) << 16) ^ *&v79[4 * (*(a63 + BYTE1(v92)) ^ 0xALL)] ^ *(a63 + BYTE1(v92))) << 16) ^ ((*&v79[4 * (*(a63 + BYTE1(v95)) ^ 0xALL)] ^ *(a63 + BYTE1(v95))) << 8);
  v105 = HIDWORD(v104) ^ v104 ^ 0x3E157C25;
  v106 = *(a63 + (BYTE4(v104) ^ v104 ^ 0x25u));
  v107 = HIDWORD(v102) ^ v102 ^ 0x300A1EC6;
  v108 = HIDWORD(v103) ^ v103 ^ 0x48338CF5;
  v109 = *(a63 + (BYTE4(v103) ^ v103 ^ 0xF5u));
  v110 = HIDWORD(v101) ^ v101 ^ 0x864363F2;
  v111 = *(a63 + (BYTE4(v101) ^ v101 ^ 0xF2u));
  v112 = ((((*&v79[4 * (*(a63 + BYTE2(v107)) ^ 0xALL)] ^ *(a63 + BYTE2(v107))) << 8) ^ ((*&v79[4 * (v106 ^ 0xA)] ^ v106) << 16) ^ *&v79[4 * (*(a63 + BYTE1(v110)) ^ 0xALL)] ^ *(a63 + BYTE1(v110))) << 16) ^ ((*&v79[4 * (v109 ^ 0xA)] ^ v109) << 8);
  v113 = ((((*&v79[4 * (*(a63 + BYTE1(v107)) ^ 0xALL)] ^ *(a63 + BYTE1(v107))) << 8) ^ ((*&v79[4 * (*(a63 + (v105 >> 24)) ^ 0xALL)] ^ *(a63 + (v105 >> 24))) << 16) ^ *&v79[4 * (v111 ^ 0xA)] ^ v111) << 16) ^ ((*&v79[4 * (*(a63 + (v108 >> 24)) ^ 0xALL)] ^ *(a63 + (v108 >> 24))) << 8);
  v114 = ((((*&v79[4 * (*(a63 + BYTE1(v108)) ^ 0xALL)] ^ *(a63 + BYTE1(v108))) << 8) ^ ((*&v79[4 * (*(a63 + BYTE2(v110)) ^ 0xALL)] ^ *(a63 + BYTE2(v110))) << 16) ^ *&v79[4 * (*(a63 + BYTE1(v105)) ^ 0xALL)] ^ *(a63 + BYTE1(v105))) << 16) ^ ((*&v79[4 * (*(a63 + (v107 >> 24)) ^ 0xALL)] ^ *(a63 + (v107 >> 24))) << 8);
  v115 = ((((*&v79[4 * (*(a63 + BYTE2(v105)) ^ 0xALL)] ^ *(a63 + BYTE2(v105))) << 8) ^ ((*&v79[4 * (*(a63 + BYTE2(v108)) ^ 0xALL)] ^ *(a63 + BYTE2(v108))) << 16) ^ *&v79[4 * (*(a63 + v107) ^ 0xALL)] ^ *(a63 + v107)) << 16) ^ ((*&v79[4 * (*(a63 + (v110 >> 24)) ^ 0xALL)] ^ *(a63 + (v110 >> 24))) << 8);
  v116 = HIDWORD(v112) ^ v112 ^ 0xB30E7A09;
  v117 = HIDWORD(v115) ^ v115 ^ 0xFFA6E4A9;
  v118 = HIDWORD(v114) ^ v114 ^ 0x9AE7F7CE;
  v119 = *(v74 + (v117 >> 24));
  v120 = HIDWORD(v113) ^ v113 ^ 0xFF283FF3;
  v121 = *(v74 + (BYTE4(v113) ^ v113 ^ 0xF3u));
  v122 = *(v74 + (BYTE4(v114) ^ v114 ^ 0xCEu));
  LODWORD(v115) = *(v74 + (BYTE4(v115) ^ v115 ^ 0xA9u));
  v123 = ((*&v79[4 * (*(v74 + BYTE1(v120)) ^ 0xALL)] ^ *(v74 + BYTE1(v120))) << 16) ^ ((*&v79[4 * (*(v74 + BYTE2(v118)) ^ 0xALL)] ^ *(v74 + BYTE2(v118))) << 24) ^ ((v119 ^ __ROR4__(__ROR4__(*&v79[4 * (v119 ^ 0xA)], 26) ^ 0x1AF486DC, 6)) << 32) ^ ((*&v79[4 * (*(v74 + (v116 >> 24)) ^ 0xALL)] ^ *(v74 + (v116 >> 24))) << 8);
  v124 = ((((*&v79[4 * (*(v74 + BYTE2(v116)) ^ 0xALL)] ^ *(v74 + BYTE2(v116))) << 8) ^ ((*&v79[4 * (v121 ^ 0xA)] ^ v121) << 16) ^ *&v79[4 * (*(v74 + BYTE2(v117)) ^ 0xALL)] ^ *(v74 + BYTE2(v117))) << 16) ^ ((*&v79[4 * (*(v74 + BYTE1(v118)) ^ 0xALL)] ^ *(v74 + BYTE1(v118))) << 8);
  v125 = ((((*&v79[4 * (*(v74 + BYTE1(v116)) ^ 0xALL)] ^ *(v74 + BYTE1(v116))) << 8) ^ ((*&v79[4 * (*(v74 + (v120 >> 24)) ^ 0xALL)] ^ *(v74 + (v120 >> 24))) << 16) ^ *&v79[4 * (*(v74 + BYTE1(v117)) ^ 0xALL)] ^ *(v74 + BYTE1(v117))) << 16) ^ ((*&v79[4 * (v122 ^ 0xA)] ^ v122) << 8);
  v126 = HIDWORD(v123) ^ v123 ^ 0x24D68C16;
  v127 = ((((*(v74 + BYTE2(v120)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE2(v120)) ^ 0xALL)]) << 8) ^ ((*&v79[4 * (*(v74 + (v118 >> 24)) ^ 0xALL)] ^ *(v74 + (v118 >> 24))) << 16) ^ *&v79[4 * (*(v74 + v116) ^ 0xALL)] ^ *(v74 + v116)) << 16) ^ ((*&v79[4 * ((((v115 - (v115 ^ 0xAC)) ^ 0xFFFFFFF8) + v115) ^ 0xA6)] ^ (((v115 - (v115 ^ 0xAC)) ^ 0xFFFFFFF8) + v115)) << 8);
  v128 = HIDWORD(v127) ^ v127 ^ 0xBFDAC41;
  v129 = *(v74 + (BYTE4(v123) ^ v123 ^ 0x16u));
  v130 = *(v74 + (v128 >> 24));
  v131 = HIDWORD(v124) ^ v124 ^ 0x6FB00BF8;
  v132 = HIDWORD(v125) ^ v125 ^ 0x316251F8;
  v133 = *(v74 + BYTE2(v132));
  v134 = *(v74 + (v131 >> 24));
  v135 = *(v74 + (v126 >> 24));
  v136 = *(v74 + v131);
  v137 = *(v74 + BYTE1(v132));
  v138 = *(v74 + BYTE2(v131));
  v139 = *(v74 + BYTE1(v128));
  v140 = *(v74 + BYTE2(v128));
  v141 = *(v74 + (BYTE4(v125) ^ v125 ^ 0xF8u));
  v142 = *(v74 + BYTE2(v126));
  v143 = *(v74 + v128);
  v144 = *(v74 + BYTE1(v131));
  v145 = v132 >> 24;
  v146 = *(v74 + BYTE1(v126));
  v147 = *(v74 + v145);
  v148 = ((((*&v79[4 * (v129 ^ 0xA)] ^ v129) << 8) ^ ((*&v79[4 * (v136 ^ 0xA)] ^ v136) << 16) ^ *&v79[4 * (v130 ^ 0xA)] ^ v130) << 16) ^ ((*&v79[4 * (v133 ^ 0xA)] ^ v133) << 8);
  v149 = ((*&v79[4 * (v135 ^ 0xA)] ^ v135) << 8) ^ ((*&v79[4 * (v134 ^ 0xA)] ^ v134) << 16) ^ *&v79[4 * (v140 ^ 0xA)] ^ v140;
  v150 = (((v149 ^ 0x8FC07D2097C3 ^ -(v149 ^ 0x8FC07D2097C3) ^ (883186817 - (v149 ^ 0x8FC04984CB42))) << 8) + 0x34A45C8100) ^ *&v79[4 * (v137 ^ 0xA)] ^ v137;
  LODWORD(v137) = (v150 >> 24) ^ (v150 << 8);
  v151 = ((((*&v79[4 * (v141 ^ 0xA)] ^ v141) << 8) ^ ((*&v79[4 * (v139 ^ 0xA)] ^ v139) << 16) ^ *&v79[4 * (v138 ^ 0xA)] ^ v138) << 16) ^ ((*&v79[4 * (v142 ^ 0xA)] ^ v142) << 8);
  v152 = ((*&v79[4 * (v143 ^ 0xA)] ^ v143) << 8) ^ ((*&v79[4 * (v146 ^ 0xA)] ^ v146) << 16) ^ *&v79[4 * (v147 ^ 0xA)] ^ v147;
  v153 = *&v79[4 * (v144 ^ 0xA)] ^ v144;
  v154 = HIDWORD(v148) ^ v148 ^ 0x8E050B4D;
  v155 = *(v74 + BYTE2(v154));
  v156 = (((v152 << 16) ^ (v153 << 8)) >> 32) ^ (v152 << 16) ^ (v153 << 8) ^ 0x679ED968u;
  v157 = HIDWORD(v151) ^ v151 ^ 0x49631BFB;
  v158 = *(v74 + (BYTE4(v151) ^ v151 ^ 0xFBu));
  v159 = *(v74 + BYTE1(v156));
  v160 = v137 ^ 0x4758FE1A;
  v161 = *(v74 + (v137 ^ 0x1Au));
  v162 = *(v74 + (v157 >> 24));
  v163 = *(v74 + BYTE1(v154));
  v164 = *(v74 + v156);
  v165 = *(v74 + BYTE2(v157));
  v166 = *(v74 + BYTE2(v160));
  v167 = *(v74 + (BYTE4(v148) ^ v148 ^ 0x4Du));
  v168 = *(v74 + BYTE2(v156));
  v169 = *(v74 + (v156 >> 24));
  v170 = *(v74 + BYTE1(v157));
  v171 = *(v74 + (v154 >> 24));
  v172 = *(v74 + BYTE1(v160));
  v173 = ((v158 ^ 0x8F4F8942 ^ *&v79[4 * (v158 ^ 0xA)]) << 8) ^ ((((*&v79[4 * (v155 ^ 0xA)] ^ v155) << 8) ^ ((*&v79[4 * (v161 ^ 0xA)] ^ v161) << 16) ^ *&v79[4 * (v159 ^ 0xA)] ^ v159) << 16) ^ 0x8FC04984CB420000;
  v174 = ((v162 ^ 0xAC ^ *&v79[4 * (v162 ^ 0xA)]) << 8) ^ ((v164 ^ 0x8F4F8942 ^ *&v79[4 * (v164 ^ 0xA)]) << 16) ^ *&v79[4 * (*(v74 + (v160 >> 24)) ^ 0xALL)] ^ *(v74 + (v160 >> 24));
  v175 = v163 ^ 0xAC ^ *&v79[4 * (v163 ^ 0xA)];
  STACK[0x2B0] = 0x8FC04928CBEE00;
  v176 = (v175 << 8) ^ 0x8FC04928CBEE00 ^ (v174 << 16);
  v177 = ((v166 ^ 0xAC ^ *&v79[4 * (v166 ^ 0xA)]) << 8) ^ 0x8FC0492867EE00 ^ ((((v169 ^ 0xAC ^ *&v79[4 * (v169 ^ 0xA)]) << 8) ^ ((v167 ^ 0x8F4F8942 ^ *&v79[4 * (v167 ^ 0xA)]) << 16) ^ v165 ^ 0xAC ^ *&v79[4 * (v165 ^ 0xA)]) << 16);
  v178 = ((v170 ^ 0xAC ^ *&v79[4 * (v170 ^ 0xA)]) << 8) ^ ((v168 ^ 0x8F4F8942 ^ *&v79[4 * (v168 ^ 0xA)]) << 16);
  v179 = ((v171 ^ 0xAC ^ *&v79[4 * (v171 ^ 0xA)]) << 8) ^ ((((v178 ^ 0x8F4F89EE00 ^ -(v178 ^ 0x8F4F89EE00) ^ (883186817 - (v178 ^ 0x8F7B2DB281))) + 883186817) ^ v172 ^ 0xAC ^ *&v79[4 * (v172 ^ 0xA)]) << 16) ^ 0xBB649AE6EE00;
  v180 = HIDWORD(v173) ^ v173 ^ 0x2C69211D;
  v181 = HIDWORD(v177) ^ v177 ^ 0xA5E791CB;
  v182 = HIDWORD(v179) ^ v179 ^ 0xC02A2E91;
  v183 = HIDWORD(v176) ^ v176 ^ 0x783B5731;
  v184 = *(v74 + BYTE2(v183));
  v185 = *(v74 + BYTE1(v183));
  v186 = *(v74 + BYTE1(v181));
  v187 = *(v74 + (BYTE4(v176) ^ v176 ^ 0x31u));
  v188 = *(v74 + v182);
  v189 = *(v74 + BYTE2(v181));
  v190 = *(v74 + (v183 >> 24));
  v191 = *(v74 + v181);
  v192 = ((v184 ^ 0xAC ^ *&v79[4 * (v184 ^ 0xA)]) << 8) ^ 0x8F7BA2FD08EE00 ^ ((((*(v74 + BYTE2(v182)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE2(v182)) ^ 0xALL)]) << 8) ^ ((*(v74 + BYTE2(v180)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE2(v180)) ^ 0xALL)]) << 16) ^ *(v74 + (v181 >> 24)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + (v181 >> 24)) ^ 0xALL)]) << 16);
  v193 = (*(v74 + BYTE1(v182)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE1(v182)) ^ 0xALL)]) << 8;
  v194 = v189 ^ 0xBBEBD5C3 ^ *&v79[4 * (v189 ^ 0xA)];
  v195 = ((*(v74 + BYTE1(v180)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + BYTE1(v180)) ^ 0xALL)]) << 8) ^ (((((v193 + v194) << 8) - ((v193 & v194) << 9)) ^ v185 ^ 0xAC ^ *&v79[4 * (v185 ^ 0xA)]) << 16) ^ 0x342B27ACB28100;
  v196 = ((v186 ^ 0xAC ^ *&v79[4 * (v186 ^ 0xA)]) << 8) ^ 0x3490779208EE00 ^ ((((*(v74 + v180) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + v180) ^ 0xALL)]) << 8) ^ ((v187 ^ 0x8F4F8942 ^ *&v79[4 * (v187 ^ 0xA)]) << 16) ^ (*&v79[4 * (v188 ^ 0xA)] + (v188 ^ 0xBBEBD5C3) - 2 * (*&v79[4 * (v188 ^ 0xA)] & (v188 ^ 0xBBEBD5C3)))) << 16);
  v197 = ((*&v79[4 * (*(v74 + (v182 >> 24)) ^ 0xALL)] ^ *(v74 + (v182 >> 24))) << 8) ^ ((((v190 ^ 0xAC ^ *&v79[4 * (v190 ^ 0xA)]) << 8) ^ ((v191 ^ 0x8F4F8942 ^ *&v79[4 * (v191 ^ 0xA)]) << 16) ^ *(v74 + (v180 >> 24)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + (v180 >> 24)) ^ 0xALL)]) << 16) ^ 0x8F7BA2FD084200;
  v198 = HIDWORD(v192) ^ v192 ^ 0x63D66905;
  v199 = HIDWORD(v197) ^ v197 ^ 0x8D265439;
  v200 = HIDWORD(v196) ^ v196 ^ 0xBA4D95D5;
  v201 = HIDWORD(v195) ^ v195 ^ 0x6800D147;
  v202 = *(v74 + (v199 >> 24));
  v203 = *(v74 + BYTE2(v200));
  v204 = *(v74 + BYTE2(v199));
  v205 = *(v74 + BYTE2(v201));
  v206 = *(v74 + BYTE1(v201));
  v207 = *(v74 + BYTE1(v200));
  v208 = *(v74 + v201);
  v209 = *(v74 + BYTE1(v199));
  v210 = *(v74 + v200);
  v211 = *(v74 + v199);
  v212 = *(v74 + (v200 >> 24));
  v213 = *(v74 + v198);
  v214 = *(v74 + (v201 >> 24));
  v215 = ((v205 ^ 0xAC ^ *&v79[4 * (v205 ^ 0xA)]) << 8) ^ 0x8FC0498467EE00 ^ ((((*&v79[4 * (v202 ^ 0xA)] ^ v202) << 8) ^ ((*(v74 + (v198 >> 24)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + (v198 >> 24)) ^ 0xALL)]) << 16) ^ v203 ^ 0xAC ^ *&v79[4 * (v203 ^ 0xA)]) << 16);
  v216 = ((*&v79[4 * (v206 ^ 0xA)] ^ v206) << 8) ^ 0x8FC04928674200 ^ ((((v204 ^ 0xAC ^ *&v79[4 * (v204 ^ 0xA)]) << 8) ^ ((*(v74 + BYTE2(v198)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE2(v198)) ^ 0xALL)]) << 16) ^ v207 ^ 0xAC ^ *&v79[4 * (v207 ^ 0xA)]) << 16);
  v217 = ((v208 ^ 0x8F4F8942 ^ *&v79[4 * (v208 ^ 0xA)]) << 16) ^ 0x8F7B2DB281 ^ ((*(v74 + BYTE1(v198)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE1(v198)) ^ 0xALL)]) << 8);
  v218 = v217 & 0x2000;
  v219 = v209 ^ 0xBBEBD5C3 ^ *&v79[4 * (v209 ^ 0xA)];
  if ((v217 & 0x2000 & v219) != 0)
  {
    v218 = -v218;
  }

  v220 = ((v210 ^ 0xAC ^ *&v79[4 * (v210 ^ 0xA)]) << 8) ^ 0x8F4F89EE00 ^ (((v218 + v219) ^ v217 & 0xFFFFFFFFDF81) << 16);
  v221 = ((v211 ^ 0xAC ^ *&v79[4 * (v211 ^ 0xA)]) << 8) ^ 0x8FC0492867EE00 ^ ((((v214 ^ 0xAC ^ *&v79[4 * (v214 ^ 0xA)]) << 8) ^ ((v212 ^ 0x8F4F8942 ^ *&v79[4 * (v212 ^ 0xA)]) << 16) ^ v213 ^ 0xAC ^ *&v79[4 * (v213 ^ 0xA)]) << 16);
  v222 = HIDWORD(v215) ^ v215 ^ 0xE4D6055D;
  v223 = HIDWORD(v220) ^ v220 ^ 0xCDFCE812;
  v224 = HIDWORD(v221) ^ v221 ^ 0xCF0F4307;
  v225 = HIDWORD(v216) ^ v216 ^ 0xE3DB8C1A;
  v226 = *(v74 + (BYTE4(v216) ^ v216 ^ 0x1Au));
  v227 = *(v74 + BYTE2(v223));
  v228 = *(v74 + BYTE2(v225));
  v229 = ((*(v74 + BYTE1(v225)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE1(v225)) ^ 0xALL)]) << 8) ^ ((((*&v79[4 * (*(v74 + (v224 >> 24)) ^ 0xALL)] ^ *(v74 + (v224 >> 24))) << 8) ^ ((*(v74 + (v222 >> 24)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + (v222 >> 24)) ^ 0xALL)]) << 16) ^ v227 ^ 0xBBEBD5C3 ^ *&v79[4 * (v227 ^ 0xA)]) << 16) ^ 0x8F7BA25108EE00;
  v230 = ((*&v79[4 * (*(v74 + BYTE1(v223)) ^ 0xALL)] ^ *(v74 + BYTE1(v223))) << 8) ^ ((((*(v74 + BYTE2(v222)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + BYTE2(v222)) ^ 0xALL)]) << 8) ^ ((v226 ^ 0x8F4F8942 ^ *&v79[4 * (v226 ^ 0xA)]) << 16) ^ *(v74 + BYTE2(v224)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE2(v224)) ^ 0xALL)]) << 16) ^ 0x342B9C47674200;
  v231 = ((((*(v74 + v223) ^ 0xACu ^ *&v79[4 * (*(v74 + v223) ^ 0xALL)]) << 8) ^ ((*(v74 + BYTE1(v224)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE1(v224)) ^ 0xALL)]) << 16) ^ *(v74 + (v225 >> 24)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + (v225 >> 24)) ^ 0xALL)]) << 8) ^ 0x8F7B2DB28100;
  v232 = *(v74 + BYTE1(v222)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + BYTE1(v222)) ^ 0xALL)];
  v233 = ((v231 & 0x175BD276D53B00 ^ v232 & 0x76D53B91 | v231 & 0xE8A42D892AC400 ^ v232 & 0x892AC46E) << 8) ^ 0x34A45C8100;
  v234 = HIDWORD(v229) ^ v229 ^ 0x785C97CD;
  v235 = ((*(v74 + (v223 >> 24)) ^ 0xACu ^ *&v79[4 * (*(v74 + (v223 >> 24)) ^ 0xALL)]) << 8) ^ 0x8FC0492867EE00 ^ ((((*(v74 + v222) ^ 0xACu ^ *&v79[4 * (*(v74 + v222) ^ 0xALL)]) << 8) ^ ((v228 ^ 0x8F4F8942 ^ *&v79[4 * (v228 ^ 0xA)]) << 16) ^ *(v74 + v224) ^ 0xACu ^ *&v79[4 * (*(v74 + v224) ^ 0xALL)]) << 16);
  v236 = *(v74 + (v234 >> 24));
  v237 = HIDWORD(v235) ^ v235 ^ 0x97657CC2;
  v238 = *(v74 + v237);
  v239 = HIDWORD(v230) ^ v230 ^ 0xB3ECEB9F;
  v240 = HIDWORD(v233) ^ v233 ^ 0x7EAB1BCC;
  v241 = *(v74 + (BYTE4(v230) ^ v230 ^ 0x9Fu));
  v242 = *(v74 + BYTE2(v234));
  v243 = *(v74 + (BYTE4(v233) ^ v233 ^ 0xCCu));
  v244 = *(v74 + (v237 >> 24));
  v245 = *(v74 + (v239 >> 24));
  v246 = *(v74 + (v240 >> 24));
  v247 = *(v74 + BYTE2(v240));
  v248 = *(v74 + BYTE1(v234));
  v249 = *(v74 + BYTE2(v239));
  v250 = *(v74 + BYTE2(v237));
  v251 = *(v74 + BYTE1(v237));
  v252 = *(v74 + BYTE1(v239));
  v253 = *(v74 + BYTE1(v240));
  if ((v234 & 8) != 0)
  {
    v254 = -8;
  }

  else
  {
    v254 = 8;
  }

  v255 = v254 + v234;
  v256 = *&v79[4 * (v236 ^ 0xA)];
  v257 = v256 & 0x10;
  v258 = (v256 & 0x10 & v236) == 0;
  v259 = v236 ^ 0xBBEBD5C3;
  v260 = v256 & 0xFFFFFFEF;
  if (!v258)
  {
    v257 = -v257;
  }

  v261 = *(v74 + (v255 ^ 8));
  v262 = ((*&v79[4 * (v238 ^ 0xA)] ^ v238) << 24) ^ 0x8FC0498467EE00 ^ ((v243 ^ 0xAC ^ *&v79[4 * (v243 ^ 0xA)]) << 16) ^ ((v241 ^ 0xAC ^ *&v79[4 * (v241 ^ 0xA)]) << 8);
  v263 = ((v244 ^ 0xAC ^ *&v79[4 * (v244 ^ 0xA)]) << 8) ^ 0x8FC0492867EE00 ^ ((((v245 ^ 0xAC ^ *&v79[4 * (v245 ^ 0xA)]) << 8) ^ ((v246 ^ 0x8F4F8942 ^ *&v79[4 * (v246 ^ 0xA)]) << 16) ^ v242 ^ 0xAC ^ *&v79[4 * (v242 ^ 0xA)]) << 16);
  v264 = ((v247 ^ 0xBBEBD5C3 ^ *&v79[4 * (v247 ^ 0xA)]) << 8) ^ ((((*&v79[4 * (v248 ^ 0xA)] ^ v248) << 8) ^ (((v249 - 2 * (v249 & 0xAC) + 172) ^ 0x8F4F89EE ^ *&v79[4 * ((v249 - 2 * (v249 & 0xAC) + 172) ^ 0xA6)]) << 16) ^ *&v79[4 * (v250 ^ 0xA)] ^ v250) << 16) ^ 0x8FC0F26F1E8100;
  v265 = ((v253 ^ 0xAC ^ *&v79[4 * (v253 ^ 0xA)]) << 8) ^ ((v251 ^ 0x8F4F8942 ^ *&v79[4 * (v251 ^ 0xA)]) << 16) ^ v252 ^ 0xAC ^ *&v79[4 * (v252 ^ 0xA)];
  v266 = ((v262 ^ ((v260 ^ 0x34A45C81 ^ (v257 + v259)) << 32)) >> 32) ^ v262 ^ 0xF1B094C8;
  v267 = ((v261 ^ 0xAC ^ *&v79[4 * (v261 ^ 0xA)]) << 8) ^ 0x8FC0492867EE00 ^ (v265 << 16);
  v268 = *(v74 + (v266 >> 24));
  v269 = HIDWORD(v267) ^ v267 ^ 0x3B8A00B2;
  v270 = HIDWORD(v263) ^ v263 ^ 0x6A297424;
  v271 = HIDWORD(v264) ^ v264 ^ 0xB0FE5D6D;
  v272 = *(v74 + BYTE2(v266));
  v273 = *(v74 + v266);
  v274 = *(v74 + (BYTE4(v267) ^ v267 ^ 0xB2u));
  v275 = ((v268 ^ 0xAC ^ *&v79[4 * (v268 ^ 0xA)]) << 8) ^ ((((*(v74 + BYTE2(v271)) ^ 0x3DE7F49Du ^ *&v79[4 * (*(v74 + BYTE2(v271)) ^ 0xALL)]) << 8) ^ ((*(v74 + BYTE2(v269)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE2(v269)) ^ 0xALL)]) << 16) ^ *&v79[4 * (*(v74 + (v270 >> 24)) ^ 0xALL)] ^ *(v74 + (v270 >> 24))) << 16) ^ 0xB227BD19CBEE00;
  v276 = ((*(v74 + BYTE1(v271)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE1(v271)) ^ 0xALL)]) << 8) ^ 0x3490779208EE00 ^ ((((v272 ^ 0xBBEBD5C3 ^ *&v79[4 * (v272 ^ 0xA)]) << 8) ^ ((*(v74 + BYTE2(v270)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE2(v270)) ^ 0xALL)]) << 16) ^ *(v74 + BYTE1(v269)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + BYTE1(v269)) ^ 0xALL)]) << 16);
  v277 = v274 ^ 0x8F4F8942 ^ *&v79[4 * (v274 ^ 0xA)];
  LODWORD(v261) = *(v74 + BYTE1(v266)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + BYTE1(v266)) ^ 0xALL)];
  v278 = ((v261 & 0xFFFFFFFC ^ ((*(v74 + BYTE1(v270)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE1(v270)) ^ 0xALL)]) << 8) ^ ((((((v277 << 8) - ((v277 << 8) ^ 0x34A45C81)) ^ 0xFFFFFFFFFFFELL) + (v277 << 8)) ^ *(v74 + v271) ^ 0xACu ^ *&v79[4 * (*(v74 + v271) ^ 0xALL)]) << 16) | v261 & 3) << 8) ^ 0xBB64AE42B28100;
  v279 = ((*(v74 + v270) ^ 0xACu ^ *&v79[4 * (*(v74 + v270) ^ 0xALL)]) << 8) ^ 0x8FC0492867EE00 ^ ((((*(v74 + (v269 >> 24)) ^ 0xACu ^ *&v79[4 * (*(v74 + (v269 >> 24)) ^ 0xALL)]) << 8) ^ ((v273 ^ 0x8F4F8942 ^ *&v79[4 * (v273 ^ 0xA)]) << 16) ^ *(v74 + (v271 >> 24)) ^ 0xACu ^ *&v79[4 * (*(v74 + (v271 >> 24)) ^ 0xALL)]) << 16);
  v280 = HIDWORD(v275) ^ v275 ^ 0xD21B6C8;
  v281 = *(v74 + (BYTE4(v275) ^ v275 ^ 0xC8u));
  v282 = HIDWORD(v276) ^ v276 ^ 0x9869D1D3;
  v283 = HIDWORD(v278) ^ v278 ^ 0xCDBCBA5E;
  v284 = HIDWORD(v279) ^ v279 ^ 0x925FCDFA;
  v285 = *(v74 + (BYTE4(v276) ^ v276 ^ 0xD3u));
  v286 = *(v74 + (BYTE4(v279) ^ v279 ^ 0xFAu));
  v287 = *(v74 + (BYTE4(v278) ^ v278 ^ 0x5Eu));
  v288 = *(v74 + BYTE2(v283));
  v289 = *(v74 + (v284 >> 24));
  v290 = ((v287 ^ 0xAC ^ *&v79[4 * (v287 ^ 0xA)]) << 8) ^ 0x3490779208EE00 ^ ((((v281 ^ 0xBBEBD5C3 ^ *&v79[4 * (v281 ^ 0xA)]) << 8) ^ ((v285 ^ 0x8F4F8942 ^ *&v79[4 * (v285 ^ 0xA)]) << 16) ^ *(v74 + BYTE1(v284)) ^ 0xBBEBD5C3 ^ *&v79[4 * (*(v74 + BYTE1(v284)) ^ 0xALL)]) << 16);
  v291 = STACK[0x2B0] ^ ((*(v74 + (v280 >> 24)) ^ 0xACu ^ *&v79[4 * (*(v74 + (v280 >> 24)) ^ 0xALL)]) << 8) ^ ((((*(v74 + (v283 >> 24)) ^ 0xACu ^ *&v79[4 * (*(v74 + (v283 >> 24)) ^ 0xALL)]) << 8) ^ ((v286 ^ 0x8F4F8942 ^ *&v79[4 * (v286 ^ 0xA)]) << 16) ^ *&v79[4 * (*(v74 + (v282 >> 24)) ^ 0xALL)] ^ *(v74 + (v282 >> 24))) << 16);
  v292 = ((*&v79[4 * (v289 ^ 0xA)] ^ v289) << 8) ^ 0x8FC04928674200 ^ ((((*(v74 + BYTE2(v282)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE2(v282)) ^ 0xALL)]) << 8) ^ ((((((v288 ^ 0xAC) - (v288 ^ 0xBBEBD5C3)) ^ 0xFFFFFFFE) + (v288 ^ 0xAC)) ^ 0x34A45C81 ^ *&v79[4 * (v288 ^ 0xA)]) << 16) ^ *(v74 + BYTE2(v280)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE2(v280)) ^ 0xALL)]) << 16);
  v293 = HIDWORD(v290) ^ v290 ^ 0xD7DADA84;
  v294 = ((*(v74 + BYTE2(v284)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE2(v284)) ^ 0xALL)]) << 8) ^ 0x8FC0492867EE00 ^ ((((*(v74 + BYTE1(v283)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE1(v283)) ^ 0xALL)]) << 16) ^ ((*(v74 + BYTE1(v282)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE1(v282)) ^ 0xALL)]) << 8) ^ *(v74 + BYTE1(v280)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE1(v280)) ^ 0xALL)]) << 16);
  v295 = HIDWORD(v294) ^ v294 ^ 0xB74C3BDC;
  v296 = HIDWORD(v291) ^ v291 ^ 0x11C176D8;
  v297 = HIDWORD(v292) ^ v292 ^ 0xFF1DCFE6;
  v298 = *(v74 + BYTE2(v295));
  v299 = *(v74 + (BYTE4(v291) ^ v291 ^ 0xD8u));
  v300 = *(v74 + (v297 >> 24));
  v301 = *(v74 + (BYTE4(v290) ^ v290 ^ 0x84u));
  v302 = ((*(v74 + BYTE2(v296)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE2(v296)) ^ 0xALL)]) << 8) ^ ((((*(v74 + (v295 >> 24)) ^ 0xACu ^ *&v79[4 * (*(v74 + (v295 >> 24)) ^ 0xALL)]) << 8) ^ ((*(v74 + BYTE2(v293)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + BYTE2(v293)) ^ 0xALL)]) << 16) ^ *(v74 + BYTE1(v297)) ^ 0x41D58140u ^ *&v79[4 * (*(v74 + BYTE1(v297)) ^ 0xALL)]) << 16);
  LODWORD(v290) = *(v74 + v297) - 2 * (*(v74 + v297) & 0xAC) + 172;
  v303 = ((*&v79[4 * (*(v74 + BYTE1(v296)) ^ 0xALL)] ^ *(v74 + BYTE1(v296))) << 8) ^ ((v290 ^ 0x8F4F89EE ^ *&v79[4 * (v290 ^ 0xA6)]) << 16);
  v304 = *(v74 + BYTE1(v293)) ^ 0xACu ^ *&v79[4 * (*(v74 + BYTE1(v293)) ^ 0xALL)];
  v305 = *(v74 + BYTE1(v295));
  v306 = *(v74 + v295);
  v307 = v293 >> 24;
  v308 = *(v74 + BYTE2(v297));
  v309 = ((v298 ^ 0xAC ^ *&v79[4 * (v298 ^ 0xA)]) << 8) ^ 0x8FC0498467EE00 ^ ((v303 ^ v304) << 16);
  v310 = ((v305 ^ 0xAC ^ *&v79[4 * (v305 ^ 0xA)]) << 8) ^ 0x8FC0492867EE00 ^ ((((v299 ^ 0xAC ^ *&v79[4 * (v299 ^ 0xA)]) << 8) ^ ((v300 ^ 0x8F4F8942 ^ *&v79[4 * (v300 ^ 0xA)]) << 16) ^ v301 ^ 0xAC ^ *&v79[4 * (v301 ^ 0xA)]) << 16);
  v311 = ((v308 ^ 0xAC ^ *&v79[4 * (v308 ^ 0xA)]) << 8) ^ 0x8FC0492867EE00 ^ ((((*(v74 + v307) ^ 0xACu ^ *&v79[4 * (*(v74 + v307) ^ 0xALL)]) << 8) ^ ((*(v74 + (v296 >> 24)) ^ 0x8F4F8942 ^ *&v79[4 * (*(v74 + (v296 >> 24)) ^ 0xALL)]) << 16) ^ v306 ^ 0xAC ^ *&v79[4 * (v306 ^ 0xA)]) << 16);
  v312 = HIDWORD(v311) ^ v311 ^ 0xF06665C0;
  v313 = HIDWORD(v309) ^ v309 ^ 0x4C90D104;
  v314 = ((v302 ^ 0x8F819CA98BEE00) >> 32) ^ v302 ^ 0x69E7078F;
  v315 = HIDWORD(v310) ^ v310 ^ 0xA6F42CC1;
  LODWORD(v316) = (((*(a63 + BYTE1(v314)) ^ 0xBBEBD5C3uLL) >> 6) | ((*(a63 + BYTE1(v314)) ^ 0xBBEBD5C3) << 26)) ^ __ROR4__(*&v79[4 * (*(a63 + BYTE1(v314)) ^ 0xALL)], 6) ^ 0x17A8EEFF;
  HIDWORD(v316) = v316;
  LODWORD(v306) = *(a63 + (((v302 ^ 0x8F819CA98BEE00) >> 32) ^ v302 ^ 0x8F)) ^ 0xAC;
  v317 = *(a63 + BYTE2(v314));
  v318 = ((*&v79[4 * (*(a63 + (v315 >> 24)) ^ 0xALL)] ^ *(a63 + (v315 >> 24))) << 8) ^ ((v306 ^ 0x8F4F89EE ^ *&v79[4 * (v306 - 2 * (v306 & 0xA6)) + 664]) << 16) ^ *(a63 + v312) ^ 0xACu ^ *&v79[4 * (*(a63 + v312) ^ 0xALL)];
  v319 = *(a63 + BYTE2(v312));
  v320 = *(a63 + (v312 >> 24));
  v321 = *(a63 + (v314 >> 24));
  v322 = ((*(a63 + v315) ^ 0xACu ^ *&v79[4 * (*(a63 + v315) ^ 0xALL)]) << 8) ^ ((((*&v79[4 * (*(a63 + BYTE1(v313)) ^ 0xALL)] ^ *(a63 + BYTE1(v313))) << 8) ^ ((*(a63 + BYTE1(v312)) ^ 0x8F4F8942 ^ *&v79[4 * (*(a63 + BYTE1(v312)) ^ 0xALL)]) << 16) ^ (v316 >> 26)) << 16) ^ 0x8F9199EECDEE00;
  v323 = ((*(a63 + (BYTE4(v309) ^ v309 ^ 4u)) ^ 0xACu ^ *&v79[4 * (*(a63 + (BYTE4(v309) ^ v309 ^ 4u)) ^ 0xALL)]) << 8) ^ 0x8FC0498467EE00 ^ (v318 << 16);
  v324 = ((*&v79[4 * (v319 ^ 0xA)] ^ v319) << 8) ^ ((((*&v79[4 * (v317 ^ 0xA)] ^ v317) << 8) ^ ((*(a63 + BYTE2(v313)) ^ 0x8F4F8942 ^ *&v79[4 * (*(a63 + BYTE2(v313)) ^ 0xALL)]) << 16) ^ *(a63 + BYTE1(v315)) ^ 0xACu ^ *&v79[4 * (*(a63 + BYTE1(v315)) ^ 0xALL)]) << 16) ^ 0x8FC04984674200;
  v325 = (((v321 ^ 0xAC ^ *&v79[4 * (v321 ^ 0xA)]) << 8) ^ ((*(a63 + (v313 >> 24)) ^ 0x8F4F8942 ^ *&v79[4 * (*(a63 + (v313 >> 24)) ^ 0xALL)]) << 16) ^ *(a63 + BYTE2(v315)) ^ 0xACu ^ *&v79[4 * (*(a63 + BYTE2(v315)) ^ 0xALL)]) << 8;
  v326 = ((((((v325 ^ 0x8FC0C667EE00) - (v325 ^ 0x8FC0F2C3B281)) ^ 0xFFFFFFFFFFFFFELL) + (v325 ^ 0x8FC0C667EE00)) ^ v320 ^ 0xAC ^ *&v79[4 * (v320 ^ 0xA)]) << 8) ^ 0xBBEBD56F00;
  v327 = HIDWORD(v326) ^ v326 ^ 0x4A5E58D7;
  v328 = HIDWORD(v323) ^ v323 ^ 0xBAAAD069;
  v329 = HIDWORD(v322) ^ v322 ^ 0x19C88686;
  v330 = HIDWORD(v324) ^ v324 ^ 0xB59C1479;
  v331 = *(a63 + (BYTE4(v324) ^ v324 ^ 0x79u));
  v332 = *(a63 + BYTE1(v330));
  v333 = ((*(a63 + BYTE2(v327)) ^ 0xACu ^ *&v79[4 * (*(a63 + BYTE2(v327)) ^ 0xALL)]) << 8) ^ 0x8F7BA2FD08EE00 ^ ((((*(a63 + BYTE1(v329)) ^ 0xACu ^ *&v79[4 * (*(a63 + BYTE1(v329)) ^ 0xALL)]) << 8) ^ ((*(a63 + BYTE1(v328)) ^ 0x8F4F8942 ^ *&v79[4 * (*(a63 + BYTE1(v328)) ^ 0xALL)]) << 16) ^ v331 ^ 0xBBEBD5C3 ^ *&v79[4 * (v331 ^ 0xA)]) << 16);
  v334 = *(a63 + (v327 >> 24));
  v335 = *(a63 + (v329 >> 24));
  v336 = ((*(a63 + (v330 >> 24)) ^ 0xACu ^ *&v79[4 * (*(a63 + (v330 >> 24)) ^ 0xALL)]) << 8) ^ ((*(a63 + v329) ^ 0x8F4F8942 ^ *&v79[4 * (*(a63 + v329) ^ 0xALL)]) << 16) ^ *&v79[4 * (*(a63 + BYTE1(v327)) ^ 0xALL)] ^ *(a63 + BYTE1(v327));
  v337 = *(a63 + v328) ^ 0xACu ^ *&v79[4 * (*(a63 + v328) ^ 0xALL)];
  v338 = *(a63 + BYTE2(v328));
  v339 = v328 >> 24;
  v340 = *(a63 + BYTE2(v330));
  v341 = *(a63 + v327);
  v342 = STACK[0x2B0] ^ (v337 << 8) ^ (v336 << 16);
  v343 = ((*(a63 + BYTE2(v329)) ^ 0xACu ^ *&v79[4 * (*(a63 + BYTE2(v329)) ^ 0xALL)]) << 8) ^ 0x8FC0492867EE00 ^ ((((v334 ^ 0xAC ^ *&v79[4 * (v334 ^ 0xA)]) << 8) ^ ((v332 ^ 0x8F4F8942 ^ *&v79[4 * (v332 ^ 0xA)]) << 16) ^ v338 ^ 0xAC ^ *&v79[4 * (v338 ^ 0xA)]) << 16);
  v344 = ((*&v79[4 * (v340 ^ 0xA)] ^ v340) << 8) ^ 0x8FC04928674200 ^ ((((*(a63 + v339) ^ 0xACu ^ *&v79[4 * (*(a63 + v339) ^ 0xALL)]) << 8) ^ ((v341 ^ 0x8F4F8942 ^ *&v79[4 * (v341 ^ 0xA)]) << 16) ^ v335 ^ 0xAC ^ *&v79[4 * (v335 ^ 0xA)]) << 16);
  v345 = HIDWORD(v344) ^ v344 ^ 0x4F3F19;
  v346 = HIDWORD(v342) ^ v342 ^ 0xE0255081;
  v347 = HIDWORD(v343) ^ v343 ^ 0x75182A42;
  v348 = HIDWORD(v333) ^ v333 ^ 0xD8B6A12E;
  LODWORD(v336) = (*(a63 + v345) << 16) | (*(a63 + BYTE1(v347)) << 24);
  v349 = *(a63 + BYTE1(v348));
  LODWORD(STACK[0x280]) = (*(a63 + BYTE1(v345)) << 24) | (*(a63 + BYTE1(v346)) << 16) | *(a63 + BYTE2(v347)) | (*(a63 + BYTE2(v348)) << 8);
  LODWORD(v337) = v336 | v349;
  LODWORD(v336) = *(a63 + BYTE2(v345));
  v350 = *(a63 + BYTE2(v346));
  LODWORD(STACK[0x290]) = v337 | (*(a63 + v346) << 8);
  LODWORD(v337) = *(a63 + (v347 >> 24));
  LODWORD(v347) = *(a63 + (BYTE4(v343) ^ v343 ^ 0x42u));
  LODWORD(STACK[0x2A0]) = v336 | (v350 << 24) | (*(a63 + (v348 >> 24)) << 16) | (v337 << 8);
  LODWORD(STACK[0x2B0]) = v347 | (*(a63 + v348) << 8) | (*(a63 + (v345 >> 24)) << 24) | (*(a63 + (v346 >> 24)) << 16);
  return (*(STACK[0x430] + 8 * (LODWORD(STACK[0x2C0]) ^ (86 * ((STACK[0x420] & 1) == 0)))))();
}

uint64_t sub_BF6F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(STACK[0x784]) - 110198733;
  v9 = LODWORD(STACK[0xD5C]) > 0x6917FD0;
  v10 = (v8 < 0xF96E802F) ^ v9;
  v11 = v8 < (((a3 - 1034) | 0x79) ^ 0xF96E8452) + LODWORD(STACK[0xD5C]);
  if (!v10)
  {
    v9 = v11;
  }

  if (v7 >= ((2 * a3) ^ 0x1208u) - 517)
  {
    v9 = 0;
  }

  return (*(a7 + 8 * ((39 * v9) ^ a3)))();
}

uint64_t sub_BF780@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = STACK[0x408] - 797;
  LODWORD(STACK[0x113C]) = a1;
  v16 = (a1 ^ v14) + STACK[0x2B0];
  STACK[0x1140] = v16;
  return (*(STACK[0x430] + 8 * (v15 ^ (59 * (v16 > a14)))))();
}

uint64_t sub_BFCF4(uint64_t a1, unint64_t a2)
{
  v9 = (v5 - 1) & 0xF;
  v10 = -v7 - v5;
  v12 = a2 >= 0x10 && (v10 + v4 + v9 + 1) >= 0x10 && v10 + v2 + v9 + (v6 ^ 0x98EuLL) >= (v6 ^ 0x99FuLL);
  v13 = v10 + v3 + v9 + 5;
  v15 = !v12 || v13 < 0x10;
  return (*(v8 + 8 * ((38 * v15) ^ v6)))(v6 ^ 0x404);
}

uint64_t sub_BFE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v11 = LOWORD(STACK[0x116E]);
  if (v11 == 27753)
  {
    goto LABEL_4;
  }

  if (v11 != 43973)
  {
    if (v11 != 32667)
    {
LABEL_5:
      STACK[0x608] = 0;
      LODWORD(STACK[0x4E8]) = -1340669477;
      return sub_B397C(a1, a2, a3, a4, a5, a6, a7);
    }

LABEL_4:
    STACK[0xD10] = v8;
    goto LABEL_5;
  }

  v13 = STACK[0x820];
  STACK[0xD10] = v8;
  LODWORD(STACK[0x4E8]) = a8;
  return (*(a7 + 8 * (((v13 + v9 == 0) * ((167 * (v10 ^ 0xB37)) ^ 0xB1E)) ^ (v10 - 1232))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_BFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = LODWORD(STACK[0x854]);
  STACK[0xB88] = v9;
  *(STACK[0x550] + 4 * v9 + 560) = v7;
  v10 = v7 << ((v8 - 118) & 0x6F ^ 0x30);
  LOBYTE(STACK[0xC93]) = v10 == 196608;
  return (*(a7 + 8 * ((v10 < ((v8 - 2774) ^ 0x20051u)) | (v8 - 18))))();
}

uint64_t sub_C0080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v22 = ((44 * (a8 ^ 0x4B6u)) ^ 0xFFFFFFFFFFFFF633) + a6;
  v23 = (a7 + v22);
  v24 = v16 + v22 + a1;
  v25 = __ROR8__((a7 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v25 + v13) ^ v17;
  v27 = __ROR8__((v25 + v13) ^ v11, 8);
  v29 = __ROR8__((((2 * (v27 + v26)) & 0x88FCFE2ED5325C14) - (v27 + v26) + v12) ^ 0xD15C65CC32223272, 8);
  v30 = (((2 * (v27 + v26)) & 0x88FCFE2ED5325C14) - (v27 + v26) + v12) ^ 0xD15C65CC32223272 ^ __ROR8__(v26, 61);
  v31 = (v29 + v30) ^ 0xB6A9B6003705FD5CLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v20;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v19;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v21 | (2 * (v37 + v36))) - (v37 + v36);
  v39 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((v39 + 0x572D1AAD66CAC63) | 0xFA41CEED6BD1A95FLL) - ((v39 + 0x572D1AAD66CAC63) | a3) + a3;
  v41 = v40 ^ 0x92867543601B1BACLL;
  v42 = (v38 + a4) ^ a2;
  v40 ^= 0xB910F815D37E78B4;
  v43 = (__ROR8__(v41, 8) + v40) ^ 0x966044356911701BLL;
  v44 = v42 ^ __ROR8__(v36, 61);
  v45 = v43 ^ __ROR8__(v40, 61);
  v46 = __ROR8__(v42, 8);
  v47 = (__ROR8__(v43, 8) + v45) ^ 0xA4328065E6C335DFLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = ((v18 | (2 * (v46 + v44))) - (v46 + v44) + 0x10AF34ECEF1A1AALL) ^ 0x8C1DF0372F89CA96;
  v51 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v44, 61));
  v52 = (v9 - ((v49 + v48) | v9) + ((v49 + v48) | v14)) ^ 0x5DC641FB39147D46;
  v53 = v52 ^ __ROR8__(v48, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0x2BB70EFD0096E00) - (v54 + v53) - 0x15DB877E804B700) ^ 0x2A34D2EA785C75B6;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) & 0x959BEE41095B3CE2) - (v57 + v56) + 0x353208DF7B52618ELL) ^ v10;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x378E99CADDA07335;
  v61 = __ROR8__(v60, 8) + (v60 ^ __ROR8__(v59, 61));
  *v24 = (((v61 - (v15 & (2 * v61)) + v8) ^ a5) >> (8 * (v24 & 7u))) ^ (((((2 * v51) & 0x8ACABC246FA20530) - v51 + 0x3A9AA1EDC82EFD67) ^ 0x56DED0AEE9EA925DLL) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(STACK[0x430] + 8 * ((3853 * (v22 == 0)) ^ a8)))(a1);
}

uint64_t sub_C03D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = v10 - 1;
  v20 = __ROR8__((v14 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((a2 - 1763) | 0xC2u) + 0x6378C40E315E7968 + ((2 * v20 - 0x63D0C2C64EEB100ELL) & v16) - v20;
  v22 = v21 ^ v11;
  v23 = v21 ^ v12;
  v24 = (__ROR8__(v22, 8) + v23) ^ a6;
  v25 = __ROR8__(v24, 8);
  v26 = v24 ^ __ROR8__(v23, 61);
  v27 = ((v17 & (2 * (v25 + v26))) - (v25 + v26) - 0x19F828D465344869) ^ 0x50AE612BADCE4ACBLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a4;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x90FCB26CA27E8B2CLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a8;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8) + v34;
  v36 = __ROR8__((a1 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((2 * (v36 + 0x4E179E9CD88A77F9)) | 0x491F659FCD95ED5ALL) - (v36 + 0x4E179E9CD88A77F9) + 0x5B704D3019350953;
  v38 = v37 ^ 0xF4C34E67C99DD1A3;
  v37 ^= 0x847FBA810DCE6E69;
  v39 = (__ROR8__(v38, 8) + v37) ^ a6;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a3;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = v15 - ((v43 + v42) | v15) + ((v43 + v42) | 0xC0830E8850B91F29);
  v45 = (v13 - (v35 | v13) + (v35 | 0x6CD19A69857541C7)) ^ 0x1E3966EF9BF2D507;
  v46 = __ROR8__(v45, 8) + (v45 ^ __ROR8__(v34, 61));
  v47 = v44 ^ 0x6F474216B485D5F3 ^ __ROR8__(v42, 61);
  v48 = __ROR8__(v44 ^ 0x6F474216B485D5F3, 8);
  v49 = (((2 * (v48 + v47)) & 0xA7A1B9536D85DE18) - (v48 + v47) - 0x53D0DCA9B6C2EF0DLL) ^ 0x3CD3913AEB439BDFLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a8;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ a5;
  v54 = __ROR8__(v53, 8);
  v55 = __ROR8__(v52, 61);
  *(a1 + v19) = (((v54 + (v53 ^ v55) - (v18 & (2 * (v54 + (v53 ^ v55)))) + v8) ^ v9) >> (8 * ((a1 + v19) & 7))) ^ ((v46 ^ 0x6C44714321C46F3AuLL) >> (8 * ((v14 + v19) & 7))) ^ *(v14 + v19);
  return (*(a7 + 8 * ((1864 * (v19 == 0)) ^ a2)))();
}

uint64_t sub_C06D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 232) = STACK[0x728];
  *(v8 - 240) = v7 - 1643603977 * ((v8 - 1734131434 - 2 * ((v8 - 240) & 0x98A34206)) ^ 0x77F85AAE) + 1203457134;
  v9 = (*(a7 + 8 * (v7 ^ 0x5F8)))(v8 - 240);
  STACK[0xD90] -= 3888;
  return (STACK[0x488])(v9);
}

uint64_t sub_C07C4()
{
  STACK[0x2A0] = STACK[0x1408] + 10;
  STACK[0x290] = STACK[0x13F8] + 10;
  v0 = STACK[0x13E8];
  STACK[0x280] = STACK[0x13E8] + 10;
  STACK[0x270] = ((v0 + 4) ^ 0xDFE7F5F7BACBEE6ELL) + 0x71FBDE6ED7F6D9E0 + ((2 * (v0 + 4)) & 0xBFCFEBEF7597DCDCLL);
  v1 = STACK[0x13D8];
  STACK[0x260] = STACK[0x13D8] + 10;
  STACK[0x250] = ((v1 + 4) ^ 0x5BE7DE6FFFEFCC4ELL) - 0xA040A096D2D0400 + ((2 * (v1 + 4)) & 0xB7CFBCDFFFDF989CLL);
  STACK[0x240] = ((STACK[0x13B8] + 4) ^ 0x53EFD4F79BEFEBEFLL) - 0x20C0091092D23A1 + ((2 * (STACK[0x13B8] + 4)) & 0xA7DFA9EF37DFD7DELL);
  STACK[0x230] = ((STACK[0x1398] + 4) ^ 0xF7FFFE67F3C6FBCFLL) + 0x59E3D5FE9EFBCC7FLL + ((2 * (STACK[0x1398] + 4)) & 0xEFFFFCCFE78DF79ELL);
  STACK[0x220] = ((STACK[0x1370] + 4) ^ 0x5BEFFD6FD2F3E84FLL) - 0xA0C290940312001 + ((2 * (STACK[0x1370] + 4)) & 0xB7DFFADFA5E7D09ELL);
  STACK[0x210] = ((STACK[0x1350] + 4) ^ 0x77E7DD7FFAFAFE7ELL) - 0x2604091968383630 + ((2 * (STACK[0x1350] + 4)) & 0xEFCFBAFFF5F5FCFCLL);
  STACK[0x2B0] = STACK[0x1498] + 10;
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x121E]);
  LODWORD(STACK[0x3B0]) = LOWORD(STACK[0x120E]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x11FE]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x11EE]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x113A]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x110E]);
  STACK[0x3F0] = STACK[0x7B0];
  STACK[0x3E0] = STACK[0xCA8];
  STACK[0x3D0] = STACK[0xFC8];
  STACK[0x3C0] = STACK[0xF38];
  STACK[0x350] = STACK[0xCC0];
  STACK[0x340] = STACK[0x678];
  STACK[0x330] = STACK[0x828];
  STACK[0x320] = STACK[0xC30];
  STACK[0x310] = STACK[0x820];
  STACK[0x300] = STACK[0xB30];
  STACK[0x2F0] = STACK[0xE00];
  STACK[0x2E0] = STACK[0xD50];
  STACK[0x2D0] = STACK[0xD88];
  STACK[0x2C0] = STACK[0xCE8];
  STACK[0x420] = STACK[0x1058];
  STACK[0x410] = STACK[0xFD8];
  return sub_49D80();
}

uint64_t sub_C1510@<X0>(int a1@<W8>)
{
  v7 = STACK[0x470];
  *(v7 + 392) = v1;
  *(v7 + 396) = STACK[0x46C];
  *(v7 + 400) = STACK[0x1028];
  *(v7 + 408) = ((v4 - 1105740943) ^ 0xBE17BD21 ^ LODWORD(STACK[0x370])) - v6 + LODWORD(STACK[0x73C]);
  *(v7 + 416) = v5 + ((v4 - 1105740943) & 0x41E84BE7 ^ 0xB28CB423) + v6;
  v8 = (*(v3 + a1 * v2 + 8))(STACK[0x3B0], v7 + 392);
  return (*(STACK[0x430] + 8 * ((1892 * (v8 + 1682696337 - ((2 * v8) & 0xC897D122) == 1682696337)) ^ v4)))(0);
}

uint64_t sub_C15EC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((25 * (v4 - 633476471 + (((v3 ^ 0x189) - 655) | 0x306) != (((v3 ^ 0x189) + 484) | 4) - 1207)) ^ v3 ^ 0x189)))();
}

uint64_t sub_C1ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *STACK[0x540] += 4;
  *STACK[0xDA8] = 32;
  return (*(a7 + 8 * (((*STACK[0xF18] + 16 < 41) * (((v7 - 742) | 0x395) - 2591)) ^ (v7 - 1650))))();
}

uint64_t sub_C1B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v7 - v8 != -2130322414)
  {
    if (v7 - v8 == -2130322415)
    {
      STACK[0x698] = STACK[0xA18] + 8;
    }

    else
    {
      if (v7 - v8 != -2130322416)
      {
        return sub_C1ABC(a1, a2, a3, a4, a5, a6, a7);
      }

      STACK[0x10D8] = STACK[0xA18] + 8;
    }
  }

  return sub_D8684(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_C1BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xE30];
  STACK[0x8B8] = *(a7 + 8 * v8);
  return sub_94480(a7, v9);
}

uint64_t sub_C1D14(uint64_t a1, uint64_t a2)
{
  v9 = *(STACK[0x430] + 8 * v5);
  v10 = *v7;
  v11 = __ROR8__((v10 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = v6 - (((0x31E8616327758806 - v11) | 0xDA8C6E04482EF087) + ((v11 + 0x4E179E9CD88A77F9) | 0x257391FBB7D10F78));
  v13 = v12 ^ 0x8AC092AC6779D789;
  v12 ^= 0xFA7C664AA32A6843;
  v14 = __ROR8__(v13, 8);
  v15 = __ROR8__((v14 + v12 - ((2 * (v14 + v12)) & 0xE3422F8153FE9792) + 0x71A117C0A9FF4BC9) ^ 0x9B7CF2E40EBBA84ELL, 8);
  v16 = (v14 + v12 - ((2 * (v14 + v12)) & 0xE3422F8153FE9792) + 0x71A117C0A9FF4BC9) ^ 0x9B7CF2E40EBBA84ELL ^ __ROR8__(v12, 61);
  v17 = (((2 * (v15 + v16)) | 0x6B3ACC85F5CD4AB2) - (v15 + v16) - 0x359D6642FAE6A559) ^ 0x8334D042CDE35805;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v2 - ((v19 + v18) | v2) + ((v19 + v18) | 0x211F0E99E338F9B3)) ^ 0x8EDB420707043369;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (a2 - ((v22 + v21) | a2) + ((v22 + v21) | 0xC5804370DEB62AF2)) ^ 0x557CF11C7CC8A1DELL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0x9DA6907B349710C2) - (v25 + v24) + 0x312CB7C265B4779FLL) ^ 0xC3DD4A1BB7BDF508;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xE4ACE9E4DB54361ELL) - (v28 + v27) + 0xDA98B0D9255E4F0) ^ 0x7F41778B8CD27030;
  v30 = __ROR8__(v29, 8);
  v31 = __ROR8__(v27, 61);
  *(v10 + 4) = v8 ^ (((((2 * (v30 + (v29 ^ v31))) | 0xFA848A6818A4059ELL) - (v30 + (v29 ^ v31)) + 0x2BDBACBF3ADFD31) ^ 0x910634772D966DF5) >> (8 * ((v10 + 4) & 7))) ^ 0xF;
  v32 = __ROR8__((v10 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = ((0xE8616327758806 - v32) & 0x826A6DBABDF480) + v32 + 0x4E179E9CD88A77F9 - ((v32 + 0x4E179E9CD88A77F9) & 0x4826A6DBABDF480);
  v34 = __ROR8__(v33 ^ 0x54CE96C595EAD38ELL, 8);
  v33 ^= 0x2472622351B96C44uLL;
  v35 = (v34 + v33) ^ 0xEADDE524A744E387;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v3 - ((v37 + v36) | v3) + ((v37 + v36) | 0x4AF7ABC2BE67C153)) ^ 0xFC5E1DC289623C0FLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0x8B2B67746B777F36) - (v40 + v39) - 0x4595B3BA35BBBF9CLL) ^ 0x15AE00DB2E788ABELL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = __ROR8__((v43 + v42 - ((2 * (v43 + v42)) & 0x7E21C9FDF7F275F8) - 0x40EF1B010406C504) ^ 0x2FEC56925987B1D0, 8);
  v45 = (v43 + v42 - ((2 * (v43 + v42)) & 0x7E21C9FDF7F275F8) - 0x40EF1B010406C504) ^ 0x2FEC56925987B1D0 ^ __ROR8__(v42, 61);
  v46 = (v44 + v45) ^ 0xD0E02262DF67D69;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x72E8FC861E8794C0;
  *(v10 + 5) = v4 ^ (((__ROR8__(v48, 8) + (v48 ^ __ROR8__(v47, 61))) ^ 0x6C44714321C46F3AuLL) >> (8 * ((v10 + 5) & 7))) ^ 6;
  return v9();
}

uint64_t sub_C21F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v7 == 1805022201 || v7 == 1805022196)
  {
    return (*(a7 + 8 * (((((v9 == 557439815) ^ (STACK[0x408] - 19)) & 1) * (((STACK[0x408] - 1826262311) & 0x6CDA837B) - 293)) ^ (STACK[0x408] - 417))))();
  }

  else
  {
    return (*(a7 + 8 * ((38 * (v8 != ((STACK[0x408] + 41) ^ 0x4F))) ^ (STACK[0x408] + 559))))();
  }
}

uint64_t sub_C22A8()
{
  v0 = STACK[0x408] - 1397;
  v1 = LOWORD(STACK[0x121E]);
  STACK[0x7E0] = STACK[0x1220];
  return (*(STACK[0x430] + 8 * ((3626 * (v1 == 27753)) ^ v0)))();
}

uint64_t sub_C2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 232) = (v7 - 1438382661) ^ (475723357 * ((((v8 - 240) | 0x965CFD51) - ((v8 - 240) & 0x965CFD51)) ^ 0x8CE0DB40));
  (*(a7 + 8 * (v7 + 3663)))(v8 - 240);
  v9 = STACK[0x430];
  v10 = *(STACK[0x1038] + 8);
  STACK[0x1078] = *(STACK[0x430] + 8 * v7);
  return sub_41918(v9, v10);
}

uint64_t sub_C2484@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  STACK[0x1068] = a2;
  v3 = (*(a1 + 8 * (v2 + 1764)))(32, 0x103004054B5FA7DLL);
  v4 = STACK[0x430];
  STACK[0x998] = v3;
  return (*(v4 + 8 * (((v3 == 0) * ((v2 ^ 0xCDD) + v2 + 898 - 5775)) ^ v2)))();
}

uint64_t sub_C2588(int *a1)
{
  v2 = a1[1] - 772352333 * ((135124709 - (a1 | 0x80DD6E5) + (a1 | 0xF7F2291A)) ^ 0x13B021A1);
  v3 = v2 + 1192011262;
  result = (*(*(&off_103F00 + (v2 + 1192011326)) + 8 * (v2 ^ 0xB8F35480) - 4))(*(&off_103F00 + (v2 + 1192011262)) - 8, sub_CDC10);
  v5 = **(&off_103F00 + (v3 + 86));
  if (result)
  {
    v5 = -1682656721;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_C2664(uint64_t result)
{
  v1 = 1579770187 * ((result - 2 * (result & 0x2C5D1F0B651339AELL) + 0x2C5D1F0B651339AELL) ^ 0xACCCE80A10CDBAD0);
  v2 = *result - v1;
  v3 = *(result + 24) + v1;
  v4 = v2 == v3;
  v5 = v2 > v3;
  v6 = v4;
  if (((*(result + 8) + v1) & 1) == 0)
  {
    v5 = v6;
  }

  v4 = !v5;
  v7 = 20;
  if (!v4)
  {
    v7 = 36;
  }

  *(result + 12) = (*(result + v7) - v1) ^ (*(result + 32) - v1);
  return result;
}

uint64_t sub_C27C0@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = *(v2 + 8);
  STACK[0x7E8] = v3;
  return (*(a1 + 8 * (((((a2 + 1514551594) & 0xA5B9BDDC) + ((a2 - 390487274) & 0x17465BB7) - 2891) * (v3 == 0)) ^ a2)))();
}

uint64_t sub_C2888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int128 a15, char a16, uint64_t a17, __int128 a18, char a19, int a20, uint64_t a21, char *a22, int a23, __int128 *a24, int a25, uint64_t a26, unsigned int a27, char *a28)
{
  a15 = a18;
  v33 = 177998105 * *(v31 + 560) + 1149007151;
  v34 = 922715317 * (((&a19 | 0x1D86D880) - &a19 + (&a19 & 0xE2792778)) ^ 0x2800F84F);
  a21 = v31 + 48;
  a22 = &a14;
  a20 = v33 ^ v34;
  a19 = (-75 * (((&a19 | 0x80) - &a19 + (&a19 & 0x78)) ^ 0x4F)) ^ 0x63;
  a24 = &a15;
  a26 = v31 + 8;
  a28 = &a16;
  a25 = (v30 - 357) ^ v34;
  a27 = (v32 ^ 0x1B777EFF) + a9 + ((v30 + 1801) ^ 0xF7FEF639) + v34;
  v35 = (*(v29 + 8 * (v30 + 2534)))(&a19);
  return (*(v29 + 8 * (v30 | (2 * (a23 == v28)))))(v35);
}

uint64_t sub_C2A5C@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v8 = (*(((2 * v2) & 0x639FADBFD769FF76) + (v2 ^ 0xF1CFD6DFEBB4FFBBLL) + a2 + 0xE302920144B0045) << 24) | (*(((2 * v2) & 0x639FADBFD769FF76) + (v2 ^ 0xF1CFD6DFEBB4FFBBLL) + a2 + 0xE302920144AF520 + v5) << 16) | (*(((2 * v2) & 0x639FADBFD769FF76) + (v2 ^ 0xF1CFD6DFEBB4FFBBLL) + a2 + 0xE302920144B0047) << 8);
  v9 = *(((2 * v2) & 0x639FADBFD769FF76) + (v2 ^ 0xF1CFD6DFEBB4FFBBLL) + a2 + 0xE302920144B0048);
  v10 = (v8 | v9) - 1340669477 - 2 * ((v8 | v9) & 0x301701DF ^ v9 & 4);
  v11 = _byteswap_ushort(*(((2 * (v2 + 4)) & 0x7FF6EFB3AFB69DFCLL) + ((v2 + 4) ^ 0xFFFB77D9D7DB4EFELL) + a2 + 0x488262824B102));
  v12 = (v11 - ((2 * v11) & 0x3382) - 26171);
  switch(v12)
  {
    case 51486:
      STACK[0xF78] = a2 + v4;
      STACK[0xE20] = v3;
      return (*(a1 + 8 * ((3929 * (v10 == ((v7 - 836213805) & 0x31D797BF ^ 0xB01707C6) + ((4 * v7) ^ 0x2CC4))) ^ (v7 - 1458))))();
    case 7496:
      return (*(a1 + 8 * ((3969 * (v6 == (v7 ^ 0xB0170AF5))) ^ (v7 - 1954))))();
    case 3770:
      return (*(a1 + 8 * ((326 * (v6 == (((v7 - 1574) | 0x82) ^ 0xB017045D))) ^ (v7 - 610))))();
    default:
      LODWORD(STACK[0x71C]) = -1682656433;
      JUMPOUT(0xC2C98);
  }
}

uint64_t sub_C2C9C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, int a4@<W8>)
{
  STACK[0x1090] = v5;
  STACK[0xA10] = *(a3 + 8 * a4);
  return sub_AC964(1594, 350336687, 3944631231, 2161, a1, a2, a3);
}

uint64_t sub_C2CBC(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x644BE891u;
}

uint64_t sub_C2D20(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0x12FC]) ^ (LODWORD(STACK[0x12E0]) + a8 - (v10 & (2 * LODWORD(STACK[0x12E0])))) ^ v8;
  v12 = STACK[0x4F0];
  v13 = v11 + a4 - (a6 & (2 * v11));
  v12[8] = HIBYTE(v13) ^ 0xB0;
  v12[9] = BYTE2(v13) ^ 0x2E;
  v12[10] = BYTE1(v13) ^ 0x31;
  v12[11] = v13 ^ 0xFB;
  return sub_39410(v9);
}

uint64_t sub_C2D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v4 = STACK[0xDD8];
  STACK[0xBC0] = STACK[0xDD8];
  return (*(a3 + 8 * (((((v4 == 0) ^ ((a4 ^ 0xBD) + 78)) & 1) * (2 * (a4 ^ 0x1BD) - 2830)) ^ a4)))(a1, a2, 0x90FCB26CA27E8B2CLL, 0x6C44714321C46F3ALL);
}

uint64_t sub_C2E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((v9 - 65) < 0x1A)
  {
    LOBYTE(v9) = v9 + 32;
  }

  if ((v8 - 65) < 0x1Au)
  {
    v8 += 32;
  }

  v11 = v6 + v7 - 3270;
  if (v9 != v8)
  {
    v11 = 0;
  }

  return (*(a5 + 8 * ((7 * (*(v5 + v11) != ((v7 + 95) ^ v10))) ^ (v7 - 2510))))();
}

uint64_t sub_C2E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, char a19, __int16 a20, char a21)
{
  v24 = 1327116359 * ((((v23 - 160) | 0xDDA8CDF7) - (v23 - 160) + ((v23 - 160) & 0x22573208)) ^ 0x3B4768AC);
  STACK[0x2C0] = &a21;
  STACK[0x2A0] = &a17;
  *(v23 - 128) = v24 + a5 + 281254580;
  *(v23 - 160) = v24 + v22 + 2754;
  STACK[0x2A8] = a12;
  STACK[0x2B8] = &a15;
  STACK[0x298] = &a19;
  v25 = (*(v21 + 8 * (v22 + 2843)))(v23 - 160);
  return (*(v21 + 8 * (((*(v23 - 124) == ((v22 - 7300966) & 0x6F6D31 ^ 0x644BE1A0)) * (((v22 - 1576992965) | 0x48A0A010) ^ 0xEAA1AB12)) ^ v22)))(v25);
}

uint64_t sub_C2FA8()
{
  v2 = STACK[0x12E4];
  LODWORD(STACK[0x12FC]) = LODWORD(STACK[0xC14]) | 0x80000000;
  STACK[0x1300] = STACK[0x208] + 1336 * LODWORD(STACK[0xBF4]) + 228;
  if ((v2 - 1805022195) < 2)
  {
    STACK[0xAC0] = v0;
    return sub_A1810();
  }

  else
  {
    if (v2 == 1805022194)
    {
      STACK[0x4F0] = v0;
      JUMPOUT(0xC31D0);
    }

    if (v2 == 1805022198)
    {
      return sub_C3008();
    }

    else
    {
      return sub_39410(v1);
    }
  }
}

uint64_t sub_C3008()
{
  v2 = v0 - 63;
  v3 = (v0 - 1877506367) & 0x6FE86FFB;
  STACK[0x858] = v1;
  v4 = bswap32(*v1);
  return (*(STACK[0x430] + 8 * ((((v3 ^ 0xB3Fu) - 2778 >= ((HIWORD(v4) - ((HIWORD(v4) << ((v2 ^ 0xE2) & 0xFB)) & 0x6992) - 19255) ^ 0xB4C9u)) * ((v3 - 908563948) & 0x362795ED ^ 0x1E3)) ^ v3)))();
}

uint64_t sub_C30E8(uint64_t a1, uint64_t a2)
{
  v6 = STACK[0x208] + 1336 * v4;
  STACK[0x12E8] = v6 + 168;
  STACK[0x12F0] = v6 + 212;
  if ((v3 - 1805022195) < 2)
  {
    return sub_A1810();
  }

  if (v3 == 1805022194)
  {
    return sub_C31D8(a1, a2, &off_103F00);
  }

  return sub_39410(v5);
}

uint64_t sub_C315C()
{
  if (v0 == 1805022196 || v0 == 1805022198)
  {
    return sub_5EFA8();
  }

  if (v0 == 1805022195)
  {
    JUMPOUT(0xC31CCLL);
  }

  return sub_39410(STACK[0x408]);
}

uint64_t sub_C31D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x790];
  STACK[0x360] = STACK[0x708];
  STACK[0x370] = STACK[0x548];
  STACK[0x380] = STACK[0xF48];
  STACK[0x410] = STACK[0xDE8];
  STACK[0x420] = STACK[0x10A0];
  LODWORD(STACK[0x3D0]) = v5 ^ 0xB3B;
  STACK[0x3F0] = STACK[0x898];
  LODWORD(STACK[0x3C0]) = v5 ^ 0xBF2;
  STACK[0x3E0] = STACK[0x6E0];
  STACK[0x3A0] = LODWORD(STACK[0xE58]);
  LODWORD(STACK[0x350]) = (v5 + 860316311) & 0xCCB89F56;
  LODWORD(STACK[0x3B0]) = v5 ^ 0xB19;
  return sub_BAB70(v6, a2, a3, 2955817467, a5);
}

uint64_t sub_C32C0@<X0>(int a1@<W4>, int a2@<W7>, int a3@<W8>)
{
  v7 = STACK[0x200];
  LODWORD(STACK[0x248]) = LODWORD(STACK[0x2A0]) + 1369240004 + LODWORD(STACK[0x200]) + a1;
  LODWORD(STACK[0x24C]) = LODWORD(STACK[0x298]) + 1571691762 + LODWORD(STACK[0x530]);
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x2A8]) + 280763910 + v5;
  LODWORD(STACK[0x240]) = LODWORD(STACK[0x290]) + 466586837 + LODWORD(STACK[0x550]);
  LODWORD(STACK[0x27C]) = LODWORD(STACK[0x294]) - 422125189 + v4;
  LODWORD(STACK[0x254]) = a2 - 1120949796;
  LODWORD(STACK[0x270]) = a3 - 83990963;
  LODWORD(STACK[0x234]) = v3 - 800533524;
  v8 = *(v6 + 8 * (((((v7 - 608417275) & 0x2443BD7F) + 279) * (STACK[0x2B4] & 1)) ^ v7));
  LODWORD(STACK[0x210]) = STACK[0x408];
  LODWORD(STACK[0x204]) = STACK[0x418];
  LODWORD(STACK[0x228]) = STACK[0x40C];
  LODWORD(STACK[0x220]) = STACK[0x41C];
  LODWORD(STACK[0x274]) = STACK[0x414];
  LODWORD(STACK[0x278]) = STACK[0x410];
  LODWORD(STACK[0x230]) = STACK[0x424];
  LODWORD(STACK[0x214]) = STACK[0x420];
  return v8();
}

uint64_t sub_C33F8(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x410]) += LODWORD(STACK[0x514]);
  v13 = ((v12 - 1048803873) ^ 0x96963B5A) & (2 * ((v12 - 1048803873) & 0x17043C1C)) ^ (v12 - 1048803873) & 0x17043C1C;
  v14 = ((2 * ((v12 - 1048803873) ^ 0xBC964B4A)) ^ 0x5724EEAC) & ((v12 - 1048803873) ^ 0xBC964B4A) ^ (2 * ((v12 - 1048803873) ^ 0xBC964B4A)) & 0xAB927756;
  v15 = (v14 ^ 0x826102) & (4 * v13) ^ v13;
  v16 = ((4 * (v14 ^ 0xA8921152)) ^ 0xAE49DD58) & (v14 ^ 0xA8921152) ^ (4 * (v14 ^ 0xA8921152)) & 0xAB927754;
  v17 = (v16 ^ 0xAA005540) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x1922206)) ^ 0xB9277560) & (v16 ^ 0x1922206) ^ (16 * (v16 ^ 0x1922206)) & 0xAB927750;
  v19 = v17 ^ 0xAB927756 ^ (v18 ^ 0xA9027500) & (v17 << 8);
  v20 = (v12 - 1048803873) ^ v8 ^ LODWORD(STACK[0x56C]) ^ (2 * ((v19 << 16) & 0x2B920000 ^ v19 ^ ((v19 << 16) ^ 0x77560000) & (((v18 ^ 0x2900216) << 8) & 0x2B920000 ^ 0x29800000 ^ (((v18 ^ 0x2900216) << 8) ^ 0x12770000) & (v18 ^ 0x2900216))));
  v21 = (((a1 ^ 0x3AE08830 ^ v20 ^ 0x9FD23E3E) - 1520659775) ^ ((a1 ^ 0x3AE08830 ^ v20 ^ 0x5F3A6F1C) + 1706345443) ^ ((a1 ^ 0x3AE08830 ^ v20 ^ 0x5B7D1915) + 1643361772)) - (((v20 ^ 0x2B689E41) - 3582505) ^ ((v20 ^ 0xAD0B9460) + 2041208824) ^ ((v20 ^ 0x3567702) - 671630186));
  v22 = a1 ^ 0x3AE08830 ^ a2;
  v23 = (((a1 ^ 0x3AE08830 ^ a7 ^ 0x318509D) - 469971097) ^ ((a1 ^ 0x3AE08830 ^ a7 ^ 0x1EB4BC9E) - 28302490) ^ ((a1 ^ 0x3AE08830 ^ a7 ^ 0x81A25346) + 1632029886)) - (((a7 ^ 0x7729BBC5) - 1999223749) ^ ((a7 ^ 0x51A2F51) - 85602129) ^ ((a7 ^ 0xF09D1EC5) + 258138427)) + 918429851;
  v24 = (v23 ^ 0xE92D2300) & (2 * (v23 & 0xC9A93455)) ^ v23 & 0xC9A93455;
  v25 = ((2 * (v23 ^ 0x6B3D2B00)) ^ 0x45283EAA) & (v23 ^ 0x6B3D2B00) ^ (2 * (v23 ^ 0x6B3D2B00)) & 0xA2941F54;
  v26 = (v25 ^ 0x80101201) & (4 * v24) ^ v24;
  v27 = ((4 * (v25 ^ 0xA2940155)) ^ 0x8A507D54) & (v25 ^ 0xA2940155) ^ (4 * (v25 ^ 0xA2940155)) & 0xA2941F54;
  v28 = (v27 ^ 0x82101D50) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x20840201)) ^ 0x2941F550) & (v27 ^ 0x20840201) ^ (16 * (v27 ^ 0x20840201)) & 0xA2941F50;
  v30 = v28 ^ 0xA2941F55 ^ (v29 ^ 0x20001505) & (v28 << 8);
  v31 = STACK[0x508];
  LODWORD(STACK[0x560]) = (((LODWORD(STACK[0x508]) ^ 0x63CB5FF2) - 1674272754) ^ ((LODWORD(STACK[0x508]) ^ 0x2A76E9C) - 44527260) ^ ((LODWORD(STACK[0x508]) ^ 0xC1BA99A8) + 1044735576)) + (((LODWORD(STACK[0x56C]) ^ 0x5A95B293) - 1519760019) ^ ((LODWORD(STACK[0x56C]) ^ 0x8B282939) + 1960302279) ^ ((LODWORD(STACK[0x56C]) ^ 0x125A50AC) - 307908780));
  v32 = (((v22 ^ 0x24121FC7) - 83258520) ^ ((v22 ^ 0x194A9AB2) - 967764461) ^ ((v22 ^ 0x13318DAB) - 869662452)) - (((v11 ^ 0xD55708D6) + 755406896) ^ ((v11 ^ 0x771EE10A) - 1890618892) ^ ((v11 ^ 0x952EBB10) + 1837050858)) + 672244888;
  v21 += 508866;
  v33 = v23 ^ v32 ^ ((v32 ^ 0x2A7640F1) - 1614489104) ^ ((v32 ^ 0xDD1D8425) + 1756306748) ^ ((v32 ^ 0x4ED9598A) - 76824427) ^ ((v32 ^ 0xF3FFFBBF) + 1179476642) ^ v21 ^ ((v21 ^ 0x275DBE43) - 1758678932) ^ ((v21 ^ 0x956B7C79) + 622490194) ^ ((v21 ^ 0x2E7CC13) - 1298742724) ^ ((v21 ^ 0xFF5FFFFE) + 1328476631) ^ (2 * ((v30 << 16) & 0x22940000 ^ v30 ^ ((v30 << 16) ^ 0x1F550000) & (((v29 ^ 0x82940A05) << 8) & 0xA2940000 ^ 0x22800000 ^ (((v29 ^ 0x82940A05) << 8) ^ 0x141F0000) & (v29 ^ 0x82940A05))));
  v34 = (((v31 ^ 0x1E71D3DE) - 510776286) ^ ((v31 ^ 0xBFA650D2) + 1079619374) ^ ((v31 ^ 0x1012BCA) - 16853962)) - (((v8 ^ 0x6762ABDA) - 1734519770) ^ ((v8 ^ 0x7592BEBC) - 1972551356) ^ ((v8 ^ 0x522671F3) - 1378251251));
  LODWORD(STACK[0x540]) = ((v33 ^ 0xAD825F95) + 318866273) ^ ((v33 ^ 0xC5D1308A) + 2069032064) ^ ((v33 ^ 0xE539F2D6) + 1538928164);
  LODWORD(STACK[0x53C]) = ((a4 ^ 0xCB0860E8) + 888643352) ^ ((a4 ^ 0x2F9701A5) - 798425509) ^ ((a4 ^ 0xCC1A402E) + 870694866);
  v35 = (((a4 ^ 0xBED9D2E4) + 1093020956) ^ ((a4 ^ 0x9D86C912) + 1652111086) ^ ((a4 ^ 0xBDA3A95) - 198851221)) - (((a7 ^ 0xD0FBFDAA) + 788791894) ^ ((a7 ^ 0x115E9778) - 291411832) ^ ((a7 ^ 0x430BE083) - 1124851843));
  v36 = v12 - (v34 + 1887977622) - 1326151302;
  v37 = ((v36 ^ 0x59B0CABE) + 1638202972) ^ v36 ^ ((v36 ^ 0xD8A40F50) - 525321290) ^ ((v36 ^ 0x7F40F90B) + 1196740079) ^ ((v36 ^ 0x39BFF7FF) + 28033819);
  v38 = (((v11 ^ 0xFA5449EA) + 33937684) ^ ((v11 ^ 0x9A9E3729) + 1657776081) ^ ((v11 ^ 0x57AD2C0F) - 1342391049)) - v35 - 74846299;
  v39 = (2 * (v38 & 0x8F68B713)) & (v38 ^ 0x3ACE3D9F) ^ v38 & 0x8F68B713 ^ (((2 * (v38 & 0x8F68B713)) & 0x14800A04) + 536870920);
  v40 = (2 * (v38 ^ 0x3ACE3D9F)) & 0xB5A68A8C ^ 0x94A28A84 ^ ((2 * (v38 ^ 0x3ACE3D9F)) ^ 0x6B4D1518) & (v38 ^ 0x3ACE3D9F);
  v41 = (4 * v39) & 0xB5A68A8C ^ v39 ^ ((4 * v39) ^ 0x80000020) & v40;
  v42 = (4 * v40) & 0xB5A68A8C ^ 0x2124808C ^ ((4 * v40) ^ 0xD69A2A30) & v40;
  v43 = (16 * v41) & 0xB5A68A80 ^ v41 ^ ((16 * v41) ^ 0x80) & v42;
  v44 = (16 * v42) & 0xB5A68A80 ^ 0xA586020C ^ ((16 * v42) ^ 0x5A68A8C0) & v42;
  v45 = v43 ^ (v43 << 8) & 0xB5A68A00 ^ ((v43 << 8) ^ 0x8800) & v44;
  v46 = v38 ^ (2 * (((v45 ^ 0x15A60204) << 16) & 0x35A60000 ^ v45 ^ 0x15A60204 ^ (((v45 ^ 0x15A60204) << 16) ^ 0xA8C0000) & ((v44 << 8) & 0x35A60000 ^ 0x11240000 ^ ((v44 << 8) ^ 0x268A0000) & v44)));
  v47 = v8 ^ (v34 + 1887977622) ^ (((v34 + 1887977622) ^ 0xFD86C6F2) + 318686569) ^ (((v34 + 1887977622) ^ 0x7565141B) - 1709369470) ^ (((v34 + 1887977622) ^ 0x471BD573) - 1469851926) ^ (((v34 + 1887977622) ^ 0xDF7FFBFF) + 805828710);
  v48 = ((v35 - 1100529499) ^ 0xC64F076C) & (2 * ((v35 - 1100529499) & 0xE76F566D)) ^ (v35 - 1100529499) & 0xE76F566D;
  v49 = ((2 * ((v35 - 1100529499) ^ 0xC8D323EE)) ^ 0x5F78EB06) & ((v35 - 1100529499) ^ 0xC8D323EE) ^ (2 * ((v35 - 1100529499) ^ 0xC8D323EE)) & 0x2FBC7582;
  v50 = (v49 ^ 0xF386100) & (4 * v48) ^ v48;
  v51 = ((4 * (v49 ^ 0x20841481)) ^ 0xBEF1D60C) & (v49 ^ 0x20841481) ^ (4 * (v49 ^ 0x20841481)) & 0x2FBC7580;
  v52 = (v51 ^ 0x2EB05400) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x10C2183)) ^ 0xFBC75830) & (v51 ^ 0x10C2183) ^ (16 * (v51 ^ 0x10C2183)) & 0x2FBC7580;
  v54 = v52 ^ 0x2FBC7583 ^ (v53 ^ 0x2B845000) & (v52 << 8);
  v55 = (v35 - 1100529499) ^ a7 ^ (2 * ((v54 << 16) & 0x2FBC0000 ^ v54 ^ ((v54 << 16) ^ 0x75830000) & (((v53 ^ 0x4382583) << 8) & 0x2FBC0000 ^ 0x3880000 ^ (((v53 ^ 0x4382583) << 8) ^ 0x3C750000) & (v53 ^ 0x4382583))));
  LODWORD(STACK[0x56C]) = v35 - (((v46 ^ 0xCFBE090C) + 666394535) ^ ((v46 ^ 0x63B02DB8) - 1950975213) ^ ((v46 ^ 0x492386BF) - 1591357418));
  v56 = v34 - (((v37 ^ 0x4925F21C) - 1589579247) ^ ((v37 ^ 0x3C662F56) - 737988773) ^ ((v37 ^ 0xB2A81650) + 1523390045));
  v57 = v9 + 1613946235 + (((v37 ^ 0xEBAC3770) + 1737888420) ^ ((v37 ^ 0x9B230295) + 387524423) ^ ((v37 ^ 0x67FD8D59) - 339236725));
  v58 = (((v7 ^ 0x24D83F92) - 618151826) ^ ((v7 ^ 0xF595A8D5) + 174741291) ^ ((v7 ^ 0x3F7A82CB) - 1064993483)) - 1024246924 + (((v46 ^ 0x5F0B9C14) - 23278809) ^ ((v46 ^ 0xB8F7E704) + 425766967) ^ ((v46 ^ 0xD248AABD) + 1944059280));
  v59 = (v58 ^ 0xD13F5234) & (2 * (v58 & 0xD5BF8226)) ^ v58 & 0xD5BF8226;
  v60 = ((2 * (v58 ^ 0x703F5270)) ^ 0x4B01A0AC) & (v58 ^ 0x703F5270) ^ (2 * (v58 ^ 0x703F5270)) & 0xA580D056;
  v61 = (v60 ^ 0x1000000) & (4 * v59) ^ v59;
  v62 = ((4 * (v60 ^ 0xA4805052)) ^ 0x96034158) & (v60 ^ 0xA4805052) ^ (4 * (v60 ^ 0xA4805052)) & 0xA580D054;
  v63 = (v62 ^ 0x84004040) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0x21809006)) ^ 0x580D0560) & (v62 ^ 0x21809006) ^ (16 * (v62 ^ 0x21809006)) & 0xA580D050;
  v65 = ((v63 ^ 0xA580D056 ^ v64 & (v63 << 8)) << 16) & 0x25800000 ^ v63 ^ 0xA580D056 ^ v64 & (v63 << 8) ^ (((v64 ^ 0xA580D016) << 8) & 0xA5800000 ^ 0x25000000 ^ (((v64 ^ 0xA580D016) << 8) ^ 0xD00000) & (v64 ^ 0xA580D016)) & (((v63 ^ 0xA580D056 ^ v64 & (v63 << 8)) << 16) ^ 0x50560000);
  v66 = v47 ^ 0xFFD13929 ^ v37;
  v37 ^= 0x73C5DA2Cu;
  v67 = v66 ^ v37;
  v68 = v66 ^ v37 ^ v10;
  v69 = (((v68 ^ LODWORD(STACK[0x580]) ^ 0x408A1880) - 1082792064) ^ ((v68 ^ LODWORD(STACK[0x580]) ^ 0x9D101009) + 1659891703) ^ ((v68 ^ LODWORD(STACK[0x580]) ^ 0x6D776849) - 1836542025)) - (((v68 ^ 0xAED4E21C) + 1361780196) ^ ((v68 ^ 0xF81A551F) + 132492001) ^ ((v68 ^ 0x99F57456) + 1711967146));
  v70 = v55 ^ v46;
  v71 = v55 ^ v46 ^ 0x9798AB66;
  v72 = (((v71 ^ LODWORD(STACK[0x580]) ^ 0x783AAC90) - 2017111184) ^ ((v71 ^ LODWORD(STACK[0x580]) ^ 0x2A3A5845) - 708466757) ^ ((v71 ^ LODWORD(STACK[0x580]) ^ 0x2EDA6917) - 786065687)) - (((v70 ^ 0xBCBB5C8B) - 723777517) ^ ((v70 ^ 0x34B9728F) + 1558062615) ^ ((v70 ^ 0x1C96BB35) + 1962012589));
  v73 = v46 ^ 0x5E68A8CD;
  v72 -= 2079587221;
  v74 = (((v46 ^ 0x5E68A8CD ^ LODWORD(STACK[0x580]) ^ 0x20F0CEDE) - 552652510) ^ ((v46 ^ 0x5E68A8CD ^ LODWORD(STACK[0x580]) ^ 0x21FD4EF5) - 570248949) ^ ((v46 ^ 0x5E68A8CD ^ LODWORD(STACK[0x580]) ^ 0x15075ADE) - 352803550)) - (((v46 ^ 0x220DD887) - 2087022666) ^ ((v46 ^ 0xE894A695) + 1224995240) ^ ((v46 ^ 0xFF2DAFBF) + 1589311630)) - 162667627;
  v75 = (((v69 + 552559373) ^ 0x23173B29) - 472579723) ^ (v69 + 552559373) ^ (((v69 + 552559373) ^ 0x1941A9F2) - 645688400) ^ (((v69 + 552559373) ^ 0x7EB4AAC6) - 1099525988) ^ (((v69 + 552559373) ^ 0x7BDFFDBF) - 1155676189) ^ v74 ^ v72 ^ ((v74 ^ 0xBBE0B90C) + 167822580) ^ ((v74 ^ 0x2AB33B6C) - 1689041260) ^ ((v74 ^ 0xA8B37BFB) + 424871429) ^ ((v74 ^ 0x77FF7B9B) - 971045275) ^ ((v72 ^ 0xF81C84EC) + 232709652) ^ ((v72 ^ 0x6EF6CE2) - 215140834) ^ ((v72 ^ 0x830B8F1) - 34414065) ^ ((v72 ^ 0xFCFEF5FF) + 154971905);
  LODWORD(STACK[0x580]) = ((v75 ^ 0x3400B713) - 438188734) ^ ((v75 ^ 0x5B8917DE) - 1972869747) ^ ((v75 ^ 0x1496426F) - 982044610);
  v76 = v57 ^ v66 ^ ((v57 ^ 0x6BE1DD8A) - 1468830467) ^ ((v57 ^ 0x427190DB) - 2115821138) ^ ((v57 ^ 0xEA83FC66) + 688999697) ^ ((v57 ^ 0xFF7EFFBE) + 1022119625);
  v77 = v58 ^ v71 ^ (2 * v65);
  v78 = ((v76 ^ 0x5E699117) + 1052902919) ^ ((v76 ^ 0x2E86DD43) + 1311590995) ^ ((v76 ^ 0xEFBB24BA) - 1894730836);
  v79 = v76 ^ 0x2C5EA1B5;
  v80 = (((v76 ^ 0x2C5EA1B5 ^ v37 ^ 0x680B7778) - 1745581944) ^ ((v76 ^ 0x2C5EA1B5 ^ v37 ^ 0xD840D2A7) + 666840409) ^ ((v76 ^ 0x2C5EA1B5 ^ v37 ^ 0xACA442B0) + 1398521168)) - v78 + 2069478373;
  v81 = (v80 ^ 0x1595ABA0) & (2 * (v80 & 0xA1962B8A)) ^ v80 & 0xA1962B8A;
  v82 = ((2 * (v80 ^ 0x17BDEEB4)) ^ 0x6C578A7C) & (v80 ^ 0x17BDEEB4) ^ (2 * (v80 ^ 0x17BDEEB4)) & 0xB62BC53E;
  v83 = (v82 ^ 0x4018038) & (4 * v81) ^ v81;
  v84 = ((4 * (v82 ^ 0x92284502)) ^ 0xD8AF14F8) & (v82 ^ 0x92284502) ^ (4 * (v82 ^ 0x92284502)) & 0xB62BC53C;
  v85 = (v84 ^ 0x902B0420) & (16 * v83) ^ v83;
  v86 = ((16 * (v84 ^ 0x2600C106)) ^ 0x62BC53E0) & (v84 ^ 0x2600C106) ^ (16 * (v84 ^ 0x2600C106)) & 0xB62BC530;
  v87 = v85 ^ 0xB62BC53E ^ (v86 ^ 0x22284100) & (v85 << 8);
  v88 = v80 ^ (2 * ((v87 << 16) & 0x362B0000 ^ v87 ^ ((v87 << 16) ^ 0x453E0000) & (((v86 ^ 0x9403841E) << 8) & 0x362B0000 ^ 0x142A0000 ^ (((v86 ^ 0x9403841E) << 8) ^ 0x2BC50000) & (v86 ^ 0x9403841E))));
  v89 = (((v67 ^ 0x87F872CE) + 2013760818) ^ ((v67 ^ 0x2F76685E) - 796289118) ^ ((v67 ^ 0xA45212C3) + 1538125117)) - (((v76 ^ 0x29CC7D3A) - 93510799) ^ ((v76 ^ 0x8CC213A9) + 1600343524) ^ ((v76 ^ 0xF1084AD9) + 581506196));
  v90 = (((v71 ^ v73 ^ 0x48C19509) - 1220646153) ^ ((v71 ^ v73 ^ 0xE3863AF4) + 477742348) ^ ((v71 ^ v73 ^ 0xC397E8CA) + 1013454646)) - (((v77 ^ 0x37DF752C) + 519001136) ^ ((v77 ^ 0xF2EF0D2D) - 606131153) ^ ((v77 ^ 0x588264DC) + 1907508704));
  v91 = ((v77 ^ 0xE1EEF82D) + 1223776172) ^ ((v77 ^ 0x4801A34F) - 518124342) ^ ((v77 ^ 0xFF0F0B1B) + 1443931294);
  LODWORD(STACK[0x57C]) = (((v10 ^ 0x3E783625) - 1048065573) ^ ((v10 ^ 0x47A89049) - 1202229321) ^ ((v10 ^ 0xBA376D6A) + 1170772630)) - 1124851843 + v56;
  v92 = v56 - ((((2 * v79) ^ 0x7BD0A59B) + 1455254866) ^ (((2 * v79) ^ 0x7ACA23D) + 717318904) ^ (((2 * v79) ^ 0x8CCD0C58) - 1583299437));
  v93 = v77 ^ 0xD6CFDEFC;
  v94 = v77 ^ 0xD6CFDEFC ^ v73;
  v95 = (v78 + 451614662) ^ LODWORD(STACK[0x588]) ^ (((v78 + 451614662) ^ 0xD339ADC7) + 908936703) ^ (((v78 + 451614662) ^ 0x43B55BEA) - 1499352108) ^ (((v78 + 451614662) ^ 0xE09C1A04) + 92860990) ^ (((v78 + 451614662) ^ 0x6AFBFBEF) - 1880157225) ^ v88;
  v96 = (((v95 ^ LODWORD(STACK[0x590]) ^ 0x8FC9C98A) + 1563060051) ^ ((v95 ^ LODWORD(STACK[0x590]) ^ 0x9CAFCAD7) + 1313629200) ^ ((v95 ^ LODWORD(STACK[0x590]) ^ 0x7029DDFE) - 1563790553)) - (((v95 ^ 0x2A6034DF) - 125593080) ^ ((v95 ^ 0x4E0E2056) - 1662153073) ^ ((v95 ^ 0xC4C6012C) + 371568629)) + 1054470173;
  v97 = (v96 ^ 0x79801AC1) & (2 * (v96 & 0x81C55AE5)) ^ v96 & 0x81C55AE5;
  v98 = ((2 * (v96 ^ 0x7B0A3A4B)) ^ 0xF59EC15C) & (v96 ^ 0x7B0A3A4B) ^ (2 * (v96 ^ 0x7B0A3A4B)) & 0xFACF60AE;
  v99 = (v98 ^ 0xE400C) & (4 * v97) ^ v97;
  v100 = ((4 * (v98 ^ 0xA4120A2)) ^ 0xEB3D82B8) & (v98 ^ 0xA4120A2) ^ (4 * (v98 ^ 0xA4120A2)) & 0xFACF60AC;
  v101 = (v100 ^ 0xEA0D00A0) & (16 * v99) ^ v99;
  v102 = ((16 * (v100 ^ 0x10C26006)) ^ 0xACF60AE0) & (v100 ^ 0x10C26006) ^ (16 * (v100 ^ 0x10C26006)) & 0xFACF60A0;
  v103 = v101 ^ 0xFACF60AE ^ (v102 ^ 0xA8C60000) & (v101 << 8);
  v104 = ((v103 << 16) ^ 0x60AE0000) & (((v102 ^ 0x5209600E) << 8) & 0xFACF0000 ^ 0x308F0000 ^ (((v102 ^ 0x5209600E) << 8) ^ 0xCF600000) & (v102 ^ 0x5209600E));
  v105 = (((v94 ^ 0xE4E7A648) + 454580664) ^ ((v94 ^ 0x93D139) - 9687353) ^ ((v94 ^ 0xC4D5CC30) + 992621520)) - v91;
  v106 = ((v105 - 1749884820) ^ 0xA0EC9881) & (2 * ((v105 - 1749884820) & 0x88EEDAD5)) ^ (v105 - 1749884820) & 0x88EEDAD5;
  v107 = ((2 * ((v105 - 1749884820) ^ 0xB1752989)) ^ 0x7337E6B8) & ((v105 - 1749884820) ^ 0xB1752989) ^ (2 * ((v105 - 1749884820) ^ 0xB1752989)) & 0x399BF35C;
  v108 = (v107 ^ 0x2113E218) & (4 * v106) ^ v106;
  v109 = ((4 * (v107 ^ 0x8881144)) ^ 0xE66FCD70) & (v107 ^ 0x8881144) ^ (4 * (v107 ^ 0x8881144)) & 0x399BF35C;
  v110 = (v109 ^ 0x200BC150) & (16 * v108) ^ v108;
  v111 = ((16 * (v109 ^ 0x1990320C)) ^ 0x99BF35C0) & (v109 ^ 0x1990320C) ^ (16 * (v109 ^ 0x1990320C)) & 0x399BF350;
  v112 = v110 ^ 0x399BF35C ^ (v111 ^ 0x199B3100) & (v110 << 8);
  v113 = (v105 - 1749884820) ^ LODWORD(STACK[0x590]) ^ (2 * ((v112 << 16) & 0x399B0000 ^ v112 ^ ((v112 << 16) ^ 0x735C0000) & (((v111 ^ 0x2000C21C) << 8) & 0x399B0000 ^ 0x20080000 ^ (((v111 ^ 0x2000C21C) << 8) ^ 0x1BF30000) & (v111 ^ 0x2000C21C))));
  v114 = (((v113 ^ 0x19C29562) + 208962765) ^ ((v113 ^ 0x4A47F573) + 1609688286) ^ ((v113 ^ 0x98B977A) + 473794261)) - v105 - 118421100;
  v115 = (v114 ^ 0x54320070) & (2 * (v114 & 0x96B45465)) ^ v114 & 0x96B45465;
  v116 = ((2 * (v114 ^ 0x5C3A0832)) ^ 0x951CB8AE) & (v114 ^ 0x5C3A0832) ^ (2 * (v114 ^ 0x5C3A0832)) & 0xCA8E5C56;
  v117 = (v116 ^ 0x80001004) & (4 * v115) ^ v115;
  v118 = ((4 * (v116 ^ 0x4A824451)) ^ 0x2A39715C) & (v116 ^ 0x4A824451) ^ (4 * (v116 ^ 0x4A824451)) & 0xCA8E5C54;
  v119 = (v118 ^ 0xA085050) & (16 * v117) ^ v117;
  v120 = ((16 * (v118 ^ 0xC0860C03)) ^ 0xA8E5C570) & (v118 ^ 0xC0860C03) ^ (16 * (v118 ^ 0xC0860C03)) & 0xCA8E5C50;
  v121 = v119 ^ 0xCA8E5C57 ^ (v120 ^ 0x88844400) & (v119 << 8);
  v122 = ((v121 << 16) ^ 0x5C570000) & (((v120 ^ 0x420A1807) << 8) & 0x4A8E0000 ^ 0x40820000 ^ (((v120 ^ 0x420A1807) << 8) ^ LODWORD(STACK[0x2D4])) & (v120 ^ 0x420A1807));
  v123 = v89 - (((v88 ^ 0x53E312BC) + 887516333) ^ ((v88 ^ 0xDB9CBC2A) - 1130773957) ^ ((v88 ^ 0x4DEA0F60) + 720335217)) - 1448062861;
  v124 = ((v123 ^ 0x8F34A1B7) + 38842481) ^ v123 ^ ((v123 ^ 0x3D7DF3D2) - 1340481002) ^ ((v123 ^ 0x3F2D4395) - 1303817645) ^ ((v123 ^ 0xFFFFFFC8) + 1922821648);
  v125 = v91 + 216738676;
  v126 = (v91 + 216738676) ^ LODWORD(STACK[0x590]) ^ (((v91 + 216738676) ^ 0x7664C265) - 2056251665) ^ (((v91 + 216738676) ^ 0xA3701004) + 1348781200) ^ (((v91 + 216738676) ^ 0xA60116EA) + 1427489378) ^ (((v91 + 216738676) ^ 0x7FFEEFFF) - 1930806411);
  v127 = (((v126 ^ 0x3F6B672) + 1439048766) ^ ((v126 ^ 0xA84756EC) - 25705308) ^ ((v126 ^ 0x64BD00EC) + 848138916)) - v91 - 2038608720;
  v128 = ((2 * (v127 & 0xE0464112)) & 0x8004 | v127 & 0xE0464112) ^ (2 * (v127 & 0xE0464112)) & (v127 ^ 0xC6578D14);
  v129 = (2 * (v127 ^ 0xC6578D14)) & 0x2611CC06 ^ 0x22104402 ^ ((2 * (v127 ^ 0xC6578D14)) ^ 0x4C23980C) & (v127 ^ 0xC6578D14);
  v130 = ((4 * v128) & 0x2110C00 | v128) ^ (4 * v128) & v129;
  v131 = ((4 * v129) ^ 0x98473018) & v129 ^ (4 * v129) & 0x2611CC04;
  v132 = ((16 * (v131 ^ 0x2610CC06)) ^ 0x611CC060) & (v131 ^ 0x2610CC06) ^ (16 * (v131 ^ 0x2610CC06)) & 0x2611CC00;
  v133 = (v131 ^ 0x10006) & (16 * v130) ^ v130 ^ 0x2611CC06 ^ (v132 ^ 0x2010C000) & (((v131 ^ 0x10006) & (16 * v130) ^ v130) << 8);
  v92 -= 939489004;
  LODWORD(STACK[0x530]) = (((LODWORD(STACK[0x588]) ^ 0xD631A912) + 701388526) ^ ((LODWORD(STACK[0x588]) ^ 0x39E18A4) - 60692644) ^ ((LODWORD(STACK[0x588]) ^ 0xAA791223) + 1434906077)) + 2022452610 + v92;
  v134 = v90 + v125;
  v135 = v90 - v105 + 1759889513;
  v136 = (v135 ^ 0xC3E30C4E) & (2 * (v135 & 0x93CB016C)) ^ v135 & 0x93CB016C;
  v137 = ((2 * (v135 ^ 0xE2650E06)) ^ 0xE35C1ED4) & (v135 ^ 0xE2650E06) ^ (2 * (v135 ^ 0xE2650E06)) & 0x71AE0F6A;
  v138 = (v137 ^ 0x410C0E40) & (4 * v136) ^ v136;
  v139 = ((4 * (v137 ^ 0x10A2012A)) ^ 0xC6B83DA8) & (v137 ^ 0x10A2012A) ^ (4 * (v137 ^ 0x10A2012A)) & 0x71AE0F68;
  v140 = (v139 ^ 0x40A80D22) & (16 * v138) ^ v138;
  v141 = ((16 * (v139 ^ 0x31060242)) ^ 0x1AE0F6A0) & (v139 ^ 0x31060242) ^ (16 * (v139 ^ 0x31060242)) & 0x71AE0F60;
  v142 = v140 ^ 0x71AE0F6A ^ (v141 ^ 0x10A00600) & (v140 << 8);
  v143 = v135 ^ (2 * ((v142 << 16) & 0x71AE0000 ^ v142 ^ ((v142 << 16) ^ 0xF6A0000) & (((v141 ^ 0x610E094A) << 8) & 0x71AE0000 ^ 0x51A00000 ^ (((v141 ^ 0x610E094A) << 8) ^ 0x2E0F0000) & (v141 ^ 0x610E094A))));
  v144 = v127 ^ v96 ^ v114 ^ (2 * ((v103 << 16) & 0x7ACF0000 ^ v103 ^ v104 ^ v133 ^ ((v133 << 16) & 0x26110000 | 0xC004) ^ ((v133 << 16) ^ 0x4C060000) & (((v132 ^ 0x6010C06) << 8) & 0x26110000 ^ 0x26110000 ^ (((v132 ^ 0x6010C06) << 8) ^ 0x11CC0000) & (v132 ^ 0x6010C06)) ^ v121 ^ (v121 << 16) & 0x4A8E0000 ^ v122));
  v145 = LODWORD(STACK[0x56C]) - ((((2 * v93) ^ 0x56762422) - 281248740) ^ (((2 * v93) ^ 0x395DE93) - 1159756117) ^ (((2 * v93) ^ 0xC3187EF3) + 2052204235));
  v146 = (((v144 ^ 0x8878A580) + 2142823839) ^ ((v144 ^ 0x18002D6D) - 272601740) ^ ((v144 ^ 0x12FFA689) - 448797032)) - v145 - 1421707293;
  v147 = (((v145 + 1219850346) ^ 0x3F04A3A6) - 1493543836) ^ (v145 + 1219850346) ^ (((v145 + 1219850346) ^ 0x24B2EE9C) - 1119086246) ^ (((v145 + 1219850346) ^ 0xA4AB277) - 1816902221) ^ (((v145 + 1219850346) ^ 0x77FDF777) - 301793101);
  v148 = v105 - (v134 + 683213813) + 1997531051;
  v149 = ((v148 ^ 0xCFE7E9B9) + 235181138) ^ v148 ^ ((v148 ^ 0x98A69C11) + 1497752058) ^ ((v148 ^ 0x12E29810) - 754850311) ^ ((v148 ^ 0x7BBF6FAF) - 1168371128);
  v150 = v89 + v78 + 451614662 + 47023665;
  v151 = ((v92 ^ 0x8D5448D1) + 675217850) ^ v92 ^ ((v92 ^ 0x134957B6) - 1239277857) ^ ((v92 ^ 0x3B34D60F) - 1637900440) ^ ((v92 ^ 0xFFBD7FFF) + 1523988120) ^ v124 ^ 0x311E0BAF;
  v152 = ((v150 ^ 0xDF578257) - 1449302516) ^ v150 ^ ((v150 ^ 0x58B6FE24) + 779885177) ^ ((v150 ^ 0xB13BB027) - 940485508) ^ ((v150 ^ 0xBFEFD7F7) - 920308820) ^ v124 ^ 0x311E0BAF;
  v153 = (((v88 ^ 0xFD82E748) - 1702389415) ^ ((v88 ^ 0xFE610C36) - 1721470425) ^ ((v88 ^ 0xC6764A88) - 1586285415)) - (v89 + v78) - (((v88 & 0x9A82BF67 ^ 0x64E23057) + 1666310877) ^ ((v88 & 0x9A82BF67 ^ 0x9174B1FC) - 1765317768) ^ ((v88 & 0x9A82BF67 ^ 0xEF949FAA) - 400077534)) - (((v88 & 0x9A82BF67 ^ 0x5851C19E) - 1057251811) ^ ((v88 & 0x9A82BF67 ^ 0xB004F361) + 682536164) ^ ((v88 & 0x9A82BF67 ^ 0x68D59399) - 260060132)) - 1410504560;
  v154 = (v153 ^ 0xED59B68A) & (2 * (v153 & 0xED5DC00C)) ^ v153 & 0xED5DC00C;
  v155 = ((2 * (v153 ^ 0xAD58B692)) ^ 0x800AED3C) & (v153 ^ 0xAD58B692) ^ (2 * (v153 ^ 0xAD58B692)) & 0x4005769E;
  v156 = (v155 ^ 0x10) & (4 * v154) ^ v154;
  v157 = ((4 * (v155 ^ 0x40051282)) ^ 0x15DA78) & (v155 ^ 0x40051282) ^ (4 * (v155 ^ 0x40051282)) & 0x4005769C;
  v158 = (v157 ^ 0x55206) & (16 * v156) ^ v156;
  v159 = ((16 * (v157 ^ 0x40002486)) ^ 0x5769E0) & (v157 ^ 0x40002486) ^ (16 * (v157 ^ 0x40002486)) & 0x40057690;
  v160 = v158 ^ 0x4005769E ^ (v159 ^ 0x56000) & (v158 << 8);
  v161 = v153 ^ (2 * ((v160 << 16) & 0x40050000 ^ v160 ^ ((v160 << 16) ^ 0x769E0000) & (((v159 ^ 0x4000161E) << 8) & 0x40050000 ^ 0x40010000 ^ (((v159 ^ 0x4000161E) << 8) ^ 0x5760000) & (v159 ^ 0x4000161E))));
  v162 = ((v161 ^ 0x3110CB99) + 2042477499) ^ ((v161 ^ 0xCC8CA90) + 1147517620) ^ ((v161 ^ 0xE92969D9) - 1585178117);
  v163 = (((v147 ^ v143 ^ 0xAB75AE4E ^ 0x8CB07EF2) - 83400574) ^ ((v147 ^ v143 ^ 0xAB75AE4E ^ 0xD2936CD4) - 1524335960) ^ ((v147 ^ v143 ^ 0xAB75AE4E ^ 0xE194ABEA) - 1776042598)) + (((v149 ^ 0x9F573D03) + 1361711334) ^ ((v149 ^ 0x7E5B4D5E) - 1339662151) ^ ((v149 ^ 0xDF10F24A) + 292413357));
  v164 = ((v134 + 683213813) ^ 0xC70F1189) & (2 * ((v134 + 683213813) & 0xE7AE55AD)) ^ (v134 + 683213813) & 0xE7AE55AD;
  v165 = ((2 * ((v134 + 683213813) ^ 0x40B3B89)) ^ 0xC74ADC48) & ((v134 + 683213813) ^ 0x40B3B89) ^ (2 * ((v134 + 683213813) ^ 0x40B3B89)) & 0xE3A56E24;
  v166 = (v165 ^ 0x83004C00) & (4 * v164) ^ v164;
  v167 = ((4 * (v165 ^ 0x20A52224)) ^ 0x8E95B890) & (v165 ^ 0x20A52224) ^ (4 * (v165 ^ 0x20A52224)) & 0xE3A56E24;
  v168 = (v167 ^ 0x82852800) & (16 * v166) ^ v166;
  v169 = ((16 * (v167 ^ 0x61204624)) ^ 0x3A56E240) & (v167 ^ 0x61204624) ^ (16 * (v167 ^ 0x61204624)) & 0xE3A56E20;
  v170 = v168 ^ 0xE3A56E24 ^ (v169 ^ 0x22046200) & (v168 << 8);
  v171 = (v134 + 683213813) ^ (2 * ((v170 << 16) & 0x63A50000 ^ v170 ^ ((v170 << 16) ^ 0x6E240000) & (((v169 ^ 0xC1A10C24) << 8) & 0x63A50000 ^ 0x42810000 ^ (((v169 ^ 0xC1A10C24) << 8) ^ 0xA56E0000) & (v169 ^ 0xC1A10C24)))) ^ v143 ^ 0xAB75AE4E;
  v172 = ((v171 ^ 0x3FF697ED) - 706073039) ^ ((v171 ^ 0xB27C905D) + 1482697089) ^ ((v171 ^ 0xB0903FA3) + 1519158911);
  v173 = STACK[0x528];
  v174 = v152 ^ LODWORD(STACK[0x528]) ^ (v162 - 1395409285) ^ (((v162 - 1395409285) ^ 0x763CC151) - 1058215486) ^ (((v162 - 1395409285) ^ 0x6A9FFDCC) - 598747811) ^ (((v162 - 1395409285) ^ 0x2A72040D) - 1667093346) ^ (((v162 - 1395409285) ^ 0x7FFEEFFF) - 919681168);
  v175 = v153 - 1520798872 + (((v151 ^ 0x7799C6C9) + 1382785) ^ ((v151 ^ 0x61553411) + 383380313) ^ ((v151 ^ 0xFDDA1D8) + 2018606738));
  LODWORD(STACK[0x588]) = v175;
  v176 = (v172 + 1586766344) ^ LODWORD(STACK[0x520]) ^ (((v172 + 1586766344) ^ 0x3C05F736) - 161436897) ^ (((v172 + 1586766344) ^ 0x8BA23E7D) + 1103585878) ^ (((v172 + 1586766344) ^ 0xFDE6953B) + 931383572) ^ (((v172 + 1586766344) ^ 0x7FDBFFA7) - 1245797488);
  v177 = ((v149 ^ 0x75D264D3) - 1918935844) ^ ((v149 ^ 0x12B57D7) - 110727200) ^ ((v149 ^ 0x734BF4F3) - 1962488580);
  v178 = (((v149 ^ LODWORD(STACK[0x520]) ^ 0xEB94445) - 1172093524) ^ ((v149 ^ LODWORD(STACK[0x520]) ^ 0x596A2226) - 303029303) ^ ((v149 ^ LODWORD(STACK[0x520]) ^ 0x2FB70201) - 1691548688)) - v177 + 1022379326;
  v179 = (((v174 ^ LODWORD(STACK[0x520]) ^ 0x19F6A082) - 25180950) ^ ((v174 ^ LODWORD(STACK[0x520]) ^ 0x8566FE66) + 1659869710) ^ ((v174 ^ LODWORD(STACK[0x520]) ^ 0xA33E1F2C) + 1152875336)) - (((v174 ^ 0xFE959A84) + 421330672) ^ ((v174 ^ 0xF6E995AF) + 291566021) ^ ((v174 ^ 0x4804ED76) - 1349678818)) + 1217805966;
  v180 = ((v178 ^ 0x45E037D4) - 1276026143) ^ v178 ^ ((v178 ^ 0x7C313D56) - 1977587613) ^ ((v178 ^ 0xCF8A5FBE) + 966462091) ^ ((v178 ^ 0xFFB5FFF7) + 161786564) ^ v179 ^ ((v179 ^ 0x6089144A) - 407030193) ^ ((v179 ^ 0x772B2840) - 266401211) ^ ((v179 ^ 0x20961E1C) - 1482540007) ^ ((v179 ^ 0x4FFFFFED) - 926163478);
  v181 = (((v176 ^ 0x24BAD10) + 1903769826) ^ ((v176 ^ 0xC3B503B) + 2131346891) ^ ((v176 ^ 0x443CFD69) + 923691161)) - v172 - 1103058128;
  v182 = v180 ^ v181 ^ ((v181 ^ 0x5A38DB6C) - 2055234681) ^ ((v181 ^ 0xA5D32677) + 2056545950) ^ ((v181 ^ 0x20ACB1F1) - 1314532) ^ ((v181 ^ 0xFFFFF3FF) + 548975382);
  LODWORD(STACK[0x590]) = ((v173 ^ 0x87374573) + 2026420877) ^ ((v173 ^ 0x146CC00B) - 342671371) ^ ((v173 ^ 0x50BC4E7E) - 1354518142);
  v183 = ((v124 ^ 0xD105DDF0) + 535046561) ^ ((v124 ^ 0x83A88F25) + 1296661366) ^ ((v124 ^ 0x2036BCED) - 287881026);
  v184 = (((v182 ^ 0x27BBADCA) + 1535683655) ^ ((v182 ^ 0xFDA1D318) - 2121084267) ^ ((v182 ^ 0x8B87B6F7) - 139151492)) - v163;
  v185 = v163 - (v177 - v172) - 898989976;
  v186 = (v185 ^ 0x350EDE86) & (2 * (v185 & 0xA62C9E17)) ^ v185 & 0xA62C9E17;
  v187 = ((2 * (v185 ^ 0x7516CE8E)) ^ 0xA674A132) & (v185 ^ 0x7516CE8E) ^ (2 * (v185 ^ 0x7516CE8E)) & 0xD33A5098;
  v188 = (v187 ^ 0x80300010) & (4 * v186) ^ v186;
  v189 = ((4 * (v187 ^ 0x510A5089)) ^ 0x4CE94264) & (v187 ^ 0x510A5089) ^ (4 * (v187 ^ 0x510A5089)) & 0xD33A5098;
  v190 = (v189 ^ 0x40284000) & (16 * v188) ^ v188;
  v191 = ((16 * (v189 ^ 0x93121099)) ^ 0x33A50990) & (v189 ^ 0x93121099) ^ (16 * (v189 ^ 0x93121099)) & 0xD33A5090;
  v192 = v190 ^ 0xD33A5099 ^ (v191 ^ 0x13200000) & (v190 << 8);
  v193 = v185 ^ (2 * ((v192 << 16) & 0x533A0000 ^ v192 ^ ((v192 << 16) ^ 0x50990000) & (((v191 ^ 0xC01A5009) << 8) & 0x533A0000 ^ 0x412A0000 ^ (((v191 ^ 0xC01A5009) << 8) ^ 0x3A500000) & (v191 ^ 0xC01A5009))));
  v194 = v162 - (((v152 ^ 0x39E7110) + 601435229) ^ ((v152 ^ 0x957D0B00) - 1254468019) ^ ((v152 ^ 0x5C538424) + 2081741161));
  v195 = v183 - v194;
  v196 = (((v152 ^ 0xBB1E31FD) - 1688638286) ^ ((v152 ^ 0xFD751CB) + 797969544) ^ ((v152 ^ 0x7E799E02) + 1581171535)) - (v183 - v194) - 723397530;
  v197 = (v196 ^ 0xC838D59D) & (2 * (v196 & 0xECB0851E)) ^ v196 & 0xECB0851E;
  v198 = ((2 * (v196 ^ 0x5858DDB1)) ^ 0x69D0B15E) & (v196 ^ 0x5858DDB1) ^ (2 * (v196 ^ 0x5858DDB1)) & 0xB4E858AE;
  v199 = (v198 ^ 0x20E85008) & (4 * v197) ^ v197;
  v200 = ((4 * (v198 ^ 0x942848A1)) ^ 0xD3A162BC) & (v198 ^ 0x942848A1) ^ (4 * (v198 ^ 0x942848A1)) & 0xB4E858AC;
  v201 = (v200 ^ 0x90A040A0) & (16 * v199) ^ v199;
  v202 = ((16 * (v200 ^ 0x24481803)) ^ 0x4E858AF0) & (v200 ^ 0x24481803) ^ (16 * (v200 ^ 0x24481803)) & 0xB4E858A0;
  v203 = v201 ^ 0xB4E858AF ^ (v202 ^ 0x4800800) & (v201 << 8);
  v204 = v196 ^ (2 * ((v203 << 16) & 0x34E80000 ^ v203 ^ ((v203 << 16) ^ 0x58AF0000) & (((v202 ^ 0xB068500F) << 8) & 0x34E80000 ^ 0x14A00000 ^ (((v202 ^ 0xB068500F) << 8) ^ 0x68580000) & (v202 ^ 0xB068500F))));
  v205 = (((v143 ^ 0x350AA291) + 1635840801) ^ ((v143 ^ 0xCF39A2E7) - 1682705577) ^ ((v143 ^ 0x88F01FCE) - 595964288)) - (v177 - v172);
  v206 = v175 - v194 - 1146065467;
  v207 = (v206 ^ 0xCFD987DB) & (2 * (v206 & 0xCF19C810)) ^ v206 & 0xCF19C810;
  v208 = ((2 * (v206 ^ 0x43DA87DB)) ^ 0x19869F96) & (v206 ^ 0x43DA87DB) ^ (2 * (v206 ^ 0x43DA87DB)) & 0x8CC34FCA;
  v209 = (v208 ^ 0x8820080) & (4 * v207) ^ v207;
  v210 = ((4 * (v208 ^ 0x84414049)) ^ 0x330D3F2C) & (v208 ^ 0x84414049) ^ (4 * (v208 ^ 0x84414049)) & 0x8CC34FC8;
  v211 = (v210 ^ 0x10F03) & (16 * v209) ^ v209;
  v212 = ((16 * (v210 ^ 0x8CC240C3)) ^ 0xCC34FCB0) & (v210 ^ 0x8CC240C3) ^ (16 * (v210 ^ 0x8CC240C3)) & 0x8CC34FC0;
  v213 = v211 ^ 0x8CC34FCB ^ (v212 ^ 0x8C004C00) & (v211 << 8);
  v214 = v206 ^ (2 * ((v213 << 16) & 0xCC30000 ^ v213 ^ ((v213 << 16) ^ 0x4FCB0000) & (((v212 ^ 0xC3034B) << 8) & 0xCC30000 ^ 0xC800000 ^ (((v212 ^ 0xC3034B) << 8) ^ 0x434F0000) & (v212 ^ 0xC3034B))));
  v215 = (v177 - 1956628818) ^ 0xB4B68F81;
  v216 = (2 * ((v177 - 1956628818) & 0xB4DE8F2A)) & v215 ^ (v177 - 1956628818) & 0xB4DE8F2A ^ ((2 * ((v177 - 1956628818) & 0xB4DE8F2A)) & 0x280000 | 0x400000);
  v217 = (2 * v215) & 0x6800AA ^ 0x2800A9 ^ ((2 * v215) ^ 0xD00156) & v215;
  v218 = (4 * v216) & 0x6800A8 ^ v216 ^ ((4 * v216) ^ 0x1000000) & v217;
  v219 = (4 * v217) & 0x6800A8 ^ 0x480003 ^ ((4 * v217) ^ 0x1A002AC) & v217;
  v220 = v218 ^ 0x2800AB ^ (16 * v218) & 0x6800A0 ^ ((16 * v218) ^ 0x4000000) & v219;
  v221 = (16 * v219) & 0x6800A0 ^ 0x68000B ^ ((16 * v219) ^ 0x6800AB0) & v219;
  v222 = (v220 << 8) & 0x680000 ^ v220 ^ ((v220 << 8) ^ 0x6800AB00) & v221;
  v223 = (v177 - 1956628818) ^ LODWORD(STACK[0x550]) ^ (2 * ((v222 << 16) & 0x680000 ^ v222 ^ ((v222 << 16) ^ 0xAB0000) & ((v221 << 8) & 0x680000 ^ 0x680000 ^ ((v221 << 8) ^ 0x68000000) & v221)));
  v224 = ((v162 + 514930225) ^ 0x1539743B) & (2 * ((v162 + 514930225) & 0x853176B3)) ^ (v162 + 514930225) & 0x853176B3;
  v225 = ((2 * ((v162 + 514930225) ^ 0x1F397879)) ^ 0x34101D94) & ((v162 + 514930225) ^ 0x1F397879) ^ (2 * ((v162 + 514930225) ^ 0x1F397879)) & 0x9A080ECA;
  v226 = (v225 ^ 0x10000C80) & (4 * v224) ^ v224;
  v227 = ((4 * (v225 ^ 0x8A08024A)) ^ 0x68203B28) & (v225 ^ 0x8A08024A) ^ (4 * (v225 ^ 0x8A08024A)) & 0x9A080EC8;
  v228 = (v227 ^ 0x8000A00) & (16 * v226) ^ v226;
  v229 = ((16 * (v227 ^ 0x920804C2)) ^ 0xA080ECA0) & (v227 ^ 0x920804C2) ^ (16 * (v227 ^ 0x920804C2)) & 0x9A080EC0;
  v230 = v228 ^ 0x9A080ECA ^ (v229 ^ 0x80000C4A) & (v228 << 8);
  v231 = v177 - (((v143 ^ 0x350AA291) + 1635840801) ^ ((v143 ^ 0xCF39A2E7) - 1682705577) ^ ((v143 ^ 0x88F01FCE) - 595964288)) + 646316148;
  v232 = ((v231 ^ 0xBC628338) + 492119709) ^ v231 ^ ((v231 ^ 0x2805CD54) - 1993185039) ^ ((v231 ^ 0x3510E9C8) - 1809363859) ^ ((v231 ^ 0xFFBFFDFF) + 1585993820);
  v233 = (v162 + 514930225) ^ LODWORD(STACK[0x518]) ^ (2 * ((v230 << 16) & 0x1A080000 ^ v230 ^ ((v230 << 16) ^ 0xECA0000) & (((v229 ^ 0x1A08024A) << 8) & 0x9A080000 ^ 0x12000000 ^ (((v229 ^ 0x1A08024A) << 8) ^ 0x80E0000) & (v229 ^ 0x1A08024A)))) ^ v204;
  v234 = ((v162 + 910318530) ^ 0x69AC5480) & (2 * ((v162 + 910318530) & 0x6DA05122)) ^ (v162 + 910318530) & 0x6DA05122;
  v235 = ((2 * ((v162 + 910318530) ^ 0x71ACF484)) ^ 0x38194B4C) & ((v162 + 910318530) ^ 0x71ACF484) ^ (2 * ((v162 + 910318530) ^ 0x71ACF484)) & 0x1C0CA5A6;
  v236 = (v235 ^ 0x18000100) & (4 * v234) ^ v234;
  v237 = ((4 * (v235 ^ 0x404A4A2)) ^ 0x70329698) & (v235 ^ 0x404A4A2) ^ (4 * (v235 ^ 0x404A4A2)) & 0x1C0CA5A4;
  v238 = (v237 ^ 0x10008480) & (16 * v236) ^ v236;
  v239 = ((16 * (v237 ^ 0xC0C2126)) ^ 0xC0CA5A60) & (v237 ^ 0xC0C2126) ^ (16 * (v237 ^ 0xC0C2126)) & 0x1C0CA5A0;
  v240 = v238 ^ 0x1C0CA5A6 ^ (v239 ^ 0x80086) & (v238 << 8);
  v241 = (v162 + 910318530) ^ (2 * ((v240 << 16) & 0x1C0C0000 ^ v240 ^ ((v240 << 16) ^ 0x25A60000) & (((v239 ^ 0x1C04A586) << 8) & 0x1C0C0000 ^ 0x10080000 ^ (((v239 ^ 0x1C04A586) << 8) ^ 0xCA50000) & (v239 ^ 0x1C04A586))));
  v242 = (((v232 ^ LODWORD(STACK[0x550]) ^ 0xB55D7837) + 949547485) ^ ((v232 ^ LODWORD(STACK[0x550]) ^ 0x6F98AF4A) - 497211742) ^ ((v232 ^ LODWORD(STACK[0x550]) ^ 0x45FA3578) - 935347052)) - (((v232 ^ 0x7657BD0C) - 74304280) ^ ((v232 ^ 0xF5467933) + 2021912793) ^ ((v232 ^ 0xDDD99E64) + 1344018320)) + 223569333;
  v243 = (v242 ^ 0x22CD32A8) & (2 * (v242 & 0xB2C0020D)) ^ v242 & 0xB2C0020D;
  v244 = ((2 * (v242 ^ 0x66CD36B0)) ^ 0xA81A697A) & (v242 ^ 0x66CD36B0) ^ (2 * (v242 ^ 0x66CD36B0)) & 0xD40D34BC;
  v245 = (v244 ^ 0x80000038) & (4 * v243) ^ v243;
  v246 = ((4 * (v244 ^ 0x54051485)) ^ 0x5034D2F4) & (v244 ^ 0x54051485) ^ (4 * (v244 ^ 0x54051485)) & 0xD40D34BC;
  v247 = (v246 ^ 0x500410B0) & (16 * v245) ^ v245;
  v248 = ((16 * (v246 ^ 0x84092409)) ^ 0x40D34BD0) & (v246 ^ 0x84092409) ^ (16 * (v246 ^ 0x84092409)) & 0xD40D34B0;
  v249 = v247 ^ 0xD40D34BD ^ (v248 ^ 0x40010000) & (v247 << 8);
  v250 = (((v223 ^ 0xFA81AA0C) - 1749229513) ^ ((v223 ^ 0x51834C57) + 1019086446) ^ ((v223 ^ 0xDEABD079) - 1281975740)) - v177 - 1266585049;
  v251 = (((v233 ^ LODWORD(STACK[0x550]) ^ 0xF52C3C49) - 1068852271) ^ ((v233 ^ LODWORD(STACK[0x550]) ^ 0xC3B987A5) - 153149379) ^ ((v233 ^ LODWORD(STACK[0x550]) ^ 0xB21773D7) - 2022583217)) - (((v233 ^ 0x97C34F06) - 1566185312) ^ ((v233 ^ 0xB6737166) - 2095720704) ^ ((v233 ^ 0x64C54E05) + 1369696669)) + 774050700;
  v252 = v242 ^ v250 ^ ((v250 ^ 0x20FB4B79) - 766508897) ^ ((v250 ^ 0x68AF87A8) - 1710961584) ^ ((v250 ^ 0x3AFFC196) - 933983630) ^ ((v250 ^ 0x7FFFB95F) - 1923812679) ^ v251 ^ ((v251 ^ 0x869BC047) + 379032715) ^ ((v251 ^ 0xEFF3509E) + 2147419220) ^ ((v251 ^ 0xFF6CA434) + 1868624122) ^ ((v251 ^ 0xF9F79FDF) + 1778109203) ^ (2 * ((v249 << 16) & 0x540D0000 ^ v249 ^ ((v249 << 16) ^ 0x34BD0000) & (((v248 ^ 0x940C342D) << 8) & 0x540D0000 ^ 0x50090000 ^ (((v248 ^ 0x940C342D) << 8) ^ 0xD340000) & (v248 ^ 0x940C342D))));
  v253 = v205 - v177;
  v254 = v195 - v162;
  v255 = ((v193 ^ 0xC6731794) + 596258892) ^ ((v193 ^ 0x4DECCB6C) - 1474958156) ^ ((v193 ^ 0x919904D8) + 1952457480);
  v256 = ((v252 ^ 0x5A8CC52D) + 1584325848) ^ ((v252 ^ 0xC535C60B) - 1042814990) ^ ((v252 ^ 0xCFDE777B) - 885238142);
  v257 = (((v254 - 1127118915) ^ 0xB6ABE81D) + 1597927201) ^ (v254 - 1127118915) ^ (((v254 - 1127118915) ^ 0xC5BE58CC) + 741072882) ^ (((v254 - 1127118915) ^ 0x488027ED) - 1592418095) ^ (((v254 - 1127118915) ^ 0x2DFFEFFE) - 999659324) ^ v204;
  v258 = ((v257 ^ 0x58A19C80) + 1417120430) ^ ((v257 ^ 0x17DBF0DF) + 453895923) ^ ((v257 ^ 0xFD2020DD) - 235522319);
  v259 = ((v146 ^ 0xFDE33B1B) + 19040875) ^ v146 ^ ((v146 ^ 0x5FB93987) - 1552381705) ^ ((v146 ^ 0x7E83B3E5) - 2109603179) ^ ((v146 ^ 0xDFE7FFF7) + 589713031);
  v260 = (v259 & 0x4CFEA3ED ^ 0x774E179E) & (v259 & 0x4CFEA3ED ^ 0x333F1E9E) ^ v259 & 0x88EA2ED;
  v261 = (((v214 ^ 0xA4A85EB2) + 773853647) ^ ((v214 ^ 0x9E95AC9D) + 337503202) ^ ((v214 ^ 0x4F4A42AC) - 977138223)) + 251899940;
  LODWORD(STACK[0x550]) = (((LODWORD(STACK[0x518]) ^ 0x299E0D92) - 698224018) ^ ((LODWORD(STACK[0x518]) ^ 0x6B64C0E9) - 1801765097) ^ ((LODWORD(STACK[0x518]) ^ 0x68EE279) - 110027385)) + 2125173341 + v261;
  v262 = v261 + v254 - 1127118915;
  v263 = ((v260 ^ 0xD2739879) - 1696151013) ^ ((v260 ^ 0x638DEC2) + 1319996578) ^ ((v260 ^ 0xABBBF3C8) - 483483220);
  v264 = ((v253 + 1035819713) ^ 0xD1826A5A) & (2 * ((v253 + 1035819713) & 0xDA13705B)) ^ (v253 + 1035819713) & 0xDA13705B;
  v265 = ((2 * ((v253 + 1035819713) ^ 0xC586AA4E)) ^ 0x3F2BB42A) & ((v253 + 1035819713) ^ 0xC586AA4E) ^ (2 * ((v253 + 1035819713) ^ 0xC586AA4E)) & 0x1F95DA14;
  v266 = (v265 ^ 0x18018000) & (4 * v264) ^ v264;
  v267 = ((4 * (v265 ^ 0x944A15)) ^ 0x7E576854) & (v265 ^ 0x944A15) ^ (4 * (v265 ^ 0x944A15)) & 0x1F95DA14;
  v268 = (v267 ^ 0x1E154810) & (16 * v266) ^ v266;
  v269 = ((16 * (v267 ^ 0x1809201)) ^ 0xF95DA150) & (v267 ^ 0x1809201) ^ (16 * (v267 ^ 0x1809201)) & 0x1F95DA10;
  v270 = v268 ^ 0x1F95DA15 ^ (v269 ^ 0x19158000) & (v268 << 8);
  v271 = v232 ^ (v253 + 1035819713) ^ (2 * ((v270 << 16) & 0x1F950000 ^ v270 ^ ((v270 << 16) ^ 0x5A150000) & (((v269 ^ 0x6805A05) << 8) & 0x1F950000 ^ 0xA050000 ^ (((v269 ^ 0x6805A05) << 8) ^ 0x95DA0000) & (v269 ^ 0x6805A05))));
  v272 = ((v271 ^ 0x63B5371D) - 1544653579) ^ ((v271 ^ 0x6A8A895F) - 1429091657) ^ ((v271 ^ 0x86E52068) + 1186882434);
  v273 = v254 + 603076285 + v258;
  v274 = (((v241 ^ 0xDE2D5E30) + 436258935) ^ ((v241 ^ 0x6E3E7891) - 1441534248) ^ ((v241 ^ 0xBF150D1) - 807614824)) + v273 + 1574913614 + v263;
  v275 = (((v177 - 1956628818) ^ 0x768A5A09) - 1034627807) ^ (v177 - 1956628818) ^ (((v177 - 1956628818) ^ 0x638F45F0) - 682505510) ^ (((v177 - 1956628818) ^ 0xB1DB9851) + 84219769) ^ (((v177 - 1956628818) ^ 0xEFFFF77E) + 1528920152);
  v276 = (v253 + 1421495077 + v255) ^ v275 ^ (((v253 + 1421495077 + v255) ^ 0x41F5D82C) - 2099009573) ^ (((v253 + 1421495077 + v255) ^ 0xC2C033E8) + 30821407) ^ (((v253 + 1421495077 + v255) ^ 0x4222973A) - 2127238963) ^ (((v253 + 1421495077 + v255) ^ 0xFDFEFCF7) + 1055425282);
  v277 = v262 ^ v241 ^ ((v262 ^ 0xC62F2E58) + 482277698) ^ ((v262 ^ 0x94FDB91) - 740422519) ^ ((v262 ^ 0x96F1A0D0) + 1281390538) ^ ((v262 ^ 0x7CFF7DFF) - 1502696729);
  v278 = ((v277 ^ 0xD2D38A12) - 541782180) ^ ((v277 ^ 0xAFD229A0) - 1565217558) ^ ((v277 ^ 0xE38DFD24) - 286558098);
  v279 = ((v275 ^ 0x5F7A11CD) + 842247025) ^ ((v275 ^ 0x8AFE9612) - 407425872) ^ ((v275 ^ 0x78F69B17) + 364847531);
  v280 = v258 - v274;
  v281 = v258 - v274 + 906729128;
  v282 = (v281 ^ 0xA59A7A9C) & (2 * (v281 & 0xA993429D)) ^ v281 & 0xA993429D;
  v283 = ((2 * (v281 ^ 0xB69A7FB4)) ^ 0x3E127A52) & (v281 ^ 0xB69A7FB4) ^ (2 * (v281 ^ 0xB69A7FB4)) & 0x1F093D28;
  v284 = (v283 ^ 0xE001800) & (4 * v282) ^ v282;
  v285 = ((4 * (v283 ^ 0x1090529)) ^ 0x7C24F4A4) & (v283 ^ 0x1090529) ^ (4 * (v283 ^ 0x1090529)) & 0x1F093D28;
  v286 = (v285 ^ 0x1C003420) & (16 * v284) ^ v284;
  v287 = ((16 * (v285 ^ 0x3090909)) ^ 0xF093D290) & (v285 ^ 0x3090909) ^ (16 * (v285 ^ 0x3090909)) & 0x1F093D20;
  v288 = v286 ^ 0x1F093D29 ^ (v287 ^ 0x10011029) & (v286 << 8);
  v289 = v281 ^ LODWORD(STACK[0x55C]) ^ (2 * ((v288 << 16) & 0x1F090000 ^ v288 ^ ((v288 << 16) ^ 0x3D290000) & (((v287 ^ 0xF082D29) << 8) & 0x1F090000 ^ 0x16000000 ^ (((v287 ^ 0xF082D29) << 8) ^ 0x93D0000) & (v287 ^ 0xF082D29))));
  v290 = (v289 & 0x400000 | 0xC92AD7A0) ^ ((v289 & 0x400000) - 1202366496) ^ ((v289 & 0x400000 ^ 0x18FBD633) + 954155309);
  v291 = v253 + 1220451225 + v272;
  v292 = v279 - 238121835 + v291;
  v293 = ((2 * (v292 ^ 0x595B9825)) ^ 0x29BB0D22) & (v292 ^ 0x595B9825) ^ (2 * (v292 ^ 0x595B9825)) & 0x94DD8690;
  v294 = v292 & 0xCD861EB4;
  v295 = 2 * (v292 & 0xCD861EB4);
  v296 = (v293 ^ 0x180400) & (4 * (v295 & (v292 ^ 0xC9579C25) ^ v294)) ^ v295 & (v292 ^ 0xC9579C25) ^ v294;
  v297 = ((4 * (v293 ^ 0x94448291)) ^ 0x53761A44) & (v293 ^ 0x94448291) ^ (4 * (v293 ^ 0x94448291)) & 0x94DD8690;
  v298 = (v297 ^ 0x10540200) & (16 * v296) ^ v296;
  v299 = ((16 * (v297 ^ 0x84898491)) ^ 0x4DD86910) & (v297 ^ 0x84898491) ^ (16 * (v297 ^ 0x84898491)) & 0x94DD8690;
  v300 = v298 ^ 0x94DD8691 ^ (v299 ^ 0x4D80000) & (v298 << 8);
  v301 = STACK[0x51C];
  v302 = v292 ^ LODWORD(STACK[0x51C]) ^ (2 * ((v300 << 16) & 0x14DD0000 ^ v300 ^ ((v300 << 16) ^ 0x6910000) & (((v299 ^ 0x90058681) << 8) & 0x14DD0000 ^ 0x590000 ^ (((v299 ^ 0x90058681) << 8) ^ 0x5D860000) & (v299 ^ 0x90058681))));
  v303 = ((2 * (v274 ^ 0xBE2AA3DA)) ^ 0xBFFCDFA2) & (v274 ^ 0xBE2AA3DA) ^ (2 * (v274 ^ 0xBE2AA3DA)) & 0xDFFE6FD0;
  v304 = v274 & 0x61D4CC0B;
  v305 = 2 * (v274 & 0x61D4CC0B);
  v306 = (v303 ^ 0x8FF44000) & (4 * (v305 & (v274 ^ 0x7D82ABCA) ^ v304)) ^ v305 & (v274 ^ 0x7D82ABCA) ^ v304;
  v307 = ((4 * (v303 ^ 0x40022051)) ^ 0x7FF9BF44) & (v303 ^ 0x40022051) ^ (4 * (v303 ^ 0x40022051)) & 0xDFFE6FD0;
  v308 = (v307 ^ 0x5FF82F40) & (16 * v306) ^ v306;
  v309 = ((16 * (v307 ^ 0x80064091)) ^ 0xFFE6FD10) & (v307 ^ 0x80064091) ^ (16 * (v307 ^ 0x80064091)) & 0xDFFE6FD0;
  v310 = v308 ^ 0xDFFE6FD1 ^ (v309 ^ 0xDFE66D00) & (v308 << 8);
  v311 = (v310 << 16) & 0x5FFE0000 ^ v310 ^ ((v310 << 16) ^ 0x6FD10000) & (((v309 ^ 0x1802C1) << 8) & 0x5FFE0000 ^ 0x1900000 ^ (((v309 ^ 0x1802C1) << 8) ^ 0x7E6F0000) & (v309 ^ 0x1802C1));
  v312 = v290 + 492578452;
  v313 = ((543463200 - v290) ^ v312 ^ ((v312 ^ 0xA2C38454) + 1627178528) ^ ((v312 ^ 0xE0CA937C) + 586535224) ^ ((v312 ^ 0x365563) - 1039591639) ^ 0xF41D6E85) & (v274 ^ (2 * v311) ^ 0x418813A9) ^ (v274 ^ (2 * v311)) & 0xC9DDD331;
  v314 = 1579504852 - v290;
  if (v313 == 1099436833)
  {
    v314 = v312;
  }

  v315 = v314 + v274;
  v316 = (v315 ^ 0x27822F47) & (2 * (v315 & 0x24140E57)) ^ v315 & 0x24140E57;
  v317 = ((2 * (v315 ^ 0x6FA23BEF)) ^ LODWORD(STACK[0x2C8])) & (v315 ^ 0x6FA23BEF) ^ (2 * (v315 ^ 0x6FA23BEF)) & 0x4BB635B8;
  v318 = (v317 ^ 0x202130) & (4 * v316) ^ v316;
  v319 = ((4 * (v317 ^ 0x48921488)) ^ 0x2ED8D6E0) & (v317 ^ 0x48921488) ^ (4 * (v317 ^ 0x48921488)) & 0x4BB635B8;
  v320 = (v319 ^ 0xA9014A0) & (16 * v318) ^ v318;
  v321 = ((16 * (v319 ^ 0x41262118)) ^ 0xBB635B80) & (v319 ^ 0x41262118) ^ (16 * (v319 ^ 0x41262118)) & 0x4BB635B0;
  v322 = v320 ^ 0x4BB635B8 ^ (v321 ^ 0xB221100) & (v320 << 8);
  v323 = v315 ^ v289 & 0xFFBFFFFF ^ (2 * ((v322 << 16) & 0x4BB60000 ^ v322 ^ ((v322 << 16) ^ 0x35B80000) & (((v321 ^ 0x40942438) << 8) & 0x4BB60000 ^ 0x49820000 ^ (((v321 ^ 0x40942438) << 8) ^ 0x36350000) & (v321 ^ 0x40942438))));
  v324 = ((LODWORD(STACK[0x55C]) ^ 0x596324B8) - 1499669688) ^ ((LODWORD(STACK[0x55C]) ^ 0x488268F1) - 1216506097) ^ ((LODWORD(STACK[0x55C]) ^ 0x5595634B) - 1435853643);
  v325 = v272 - v292;
  v326 = (v272 - v292 + 480831255) ^ v301 ^ (((v272 - v292 + 480831255) ^ 0x2DAF7E41) - 337616334) ^ (((v272 - v292 + 480831255) ^ 0x753840BC) - 1284023091) ^ (((v272 - v292 + 480831255) ^ 0x9ED8269F) + 1486306032) ^ (((v272 - v292 + 480831255) ^ 0xFFFFFBED) + 967894942);
  v327 = (((v323 ^ v301 ^ 0x4AB434EB) + 1634863324) ^ ((v323 ^ v301 ^ 0x27D63D9E) + 202375599) ^ ((v323 ^ v301 ^ 0xF52AC3C1) - 554893326)) - (((v323 ^ 0xD241F09B) - 108540756) ^ ((v323 ^ 0x952FE956) - 1091971737) ^ ((v323 ^ 0x1ED16B27) + 890722072));
  v328 = (((v326 ^ 0xF02B40FE) + 739530997) ^ ((v326 ^ 0x34DE7F83) - 387881078) ^ ((v326 ^ 0x3CB264AC) - 527598425)) - v325 + 2017304434;
  v329 = ((2 * (v328 & 0x8052192A)) & 0xA00250 | v328 & 0x8052192A) ^ (2 * (v328 & 0x8052192A)) & (v328 ^ 0x69E11279);
  v330 = ((2 * (v328 ^ 0x69E11279)) ^ 0xD36616A6) & (v328 ^ 0x69E11279) ^ (2 * (v328 ^ 0x69E11279)) & 0xE9B30B52;
  v331 = (v330 ^ 0x29010001) & (4 * v329) ^ v329;
  v332 = ((4 * (v330 ^ 0x28910951)) ^ 0xA6CC2D4C) & (v330 ^ 0x28910951) ^ (4 * (v330 ^ 0x28910951)) & 0xE9B30B50;
  v333 = (v332 ^ 0xA0800950) & (16 * v331) ^ v331;
  v334 = ((16 * (v332 ^ 0x49330213)) ^ 0x9B30B530) & (v332 ^ 0x49330213) ^ (16 * (v332 ^ 0x49330213)) & 0xE9B30B50;
  v335 = v333 ^ 0xE9B30B53 ^ (v334 ^ 0x89300100) & (v333 << 8);
  v336 = (v335 << 16) & 0x69B30000 ^ v335 ^ ((v335 << 16) ^ 0xB530000) & (((v334 ^ 0x60830A43) << 8) & 0xE9B30000 ^ 0x48B00000 ^ (((v334 ^ 0x60830A43) << 8) ^ 0x330B0000) & (v334 ^ 0x60830A43));
  v337 = ((v302 ^ 0x6E91AA6) - 1287310738) ^ ((v302 ^ 0xBB453896) + 250155102) ^ ((v302 ^ 0x914489F8) + 619225396);
  v338 = -2131496464 - (((v276 ^ 0x51355314) + 33636518) ^ ((v276 ^ 0x1FAE9A50) + 1285196258) ^ ((v276 ^ 0xDF005585) - 1942731211));
  v339 = (v338 ^ 0xE989A616) & (2 * (v338 & 0xF1AD3447)) ^ v338 & 0xF1AD3447;
  v340 = ((2 * (v338 ^ 0xC991AE16)) ^ 0x707934A2) & (v338 ^ 0xC991AE16) ^ (2 * (v338 ^ 0xC991AE16)) & 0x383C9A50;
  v341 = (v340 ^ 0x381000) & (4 * v339) ^ v339;
  v342 = ((4 * (v340 ^ 0x8048A51)) ^ 0xE0F26944) & (v340 ^ 0x8048A51) ^ (4 * (v340 ^ 0x8048A51)) & 0x383C9A50;
  v343 = (v342 ^ 0x20300840) & (16 * v341) ^ v341;
  v344 = ((16 * (v342 ^ 0x180C9211)) ^ 0x83C9A510) & (v342 ^ 0x180C9211) ^ (16 * (v342 ^ 0x180C9211)) & 0x383C9A50;
  v345 = v343 ^ 0x383C9A51 ^ (v344 ^ 0x88041) & (v343 << 8);
  v346 = (v345 << 16) & 0x383C0000 ^ v345 ^ ((v345 << 16) ^ 0x1A510000) & (((v344 ^ 0x38341A41) << 8) & 0x383C0000 ^ 0x240000 ^ (((v344 ^ 0x38341A41) << 8) ^ 0x3C9A0000) & (v344 ^ 0x38341A41));
  v347 = ((2 * (v274 ^ 0xCC9D32DD)) ^ 0x5A93FDAC) & (v274 ^ 0xCC9D32DD) ^ (2 * (v274 ^ 0xCC9D32DD)) & 0xAD49FED6;
  v348 = (v347 ^ 0x8017004) & (4 * (v305 & (v274 ^ 0x4D94AACB) ^ v304)) ^ v305 & (v274 ^ 0x4D94AACB) ^ v304;
  v349 = ((4 * (v347 ^ 0xA5480252)) ^ 0xB527FB58) & (v347 ^ 0xA5480252) ^ (4 * (v347 ^ 0xA5480252)) & 0xAD49FED4;
  v350 = (v349 ^ 0xA501FA50) & (16 * v348) ^ v348;
  v351 = ((16 * (v349 ^ 0x8480486)) ^ 0xD49FED60) & (v349 ^ 0x8480486) ^ (16 * (v349 ^ 0x8480486)) & 0xAD49FED0;
  v352 = v350 ^ 0xAD49FED6 ^ (v351 ^ 0x8409EC00) & (v350 << 8);
  v353 = ((v273 ^ 0x76D470B6) - 1254355652) ^ v273 ^ ((v273 ^ 0x53103BF2) - 1862777216) ^ ((v273 ^ 0xE63D16C9) + 634743621) ^ ((v273 ^ 0xFFEEDFFF) + 1007067763) ^ v274 ^ (2 * ((v352 << 16) & 0x2D490000 ^ v352 ^ ((v352 << 16) ^ 0x7ED60000) & (((v351 ^ 0x29401296) << 8) & 0x2D490000 ^ 0x24010000 ^ (((v351 ^ 0x29401296) << 8) ^ 0x49FE0000) & (v351 ^ 0x29401296))));
  v354 = ((v353 ^ 0x97DFAE8C) + 1271645310) ^ ((v353 ^ 0x3409B8D2) - 400698844) ^ ((v353 ^ 0xFC06A58B) + 538103675);
  v355 = v278 - 735791411;
  v356 = v281 + v355;
  v357 = ((v281 + v355) ^ 0x55DBAFE9) & (2 * ((v281 + v355) & 0x4183AFF0)) ^ (v281 + v355) & 0x4183AFF0;
  v358 = ((2 * (v356 ^ 0xD6DAE489)) ^ 0x2EB296F2) & (v356 ^ 0xD6DAE489) ^ (2 * (v356 ^ 0xD6DAE489)) & 0x97594B78;
  v359 = (v358 ^ 0x6100240) & (4 * v357) ^ v357;
  v360 = ((4 * (v358 ^ 0x91494909)) ^ 0x5D652DE4) & (v358 ^ 0x91494909) ^ (4 * (v358 ^ 0x91494909)) & 0x97594B78;
  v361 = (v360 ^ 0x15410960) & (16 * v359) ^ v359;
  v362 = ((16 * (v360 ^ 0x82184219)) ^ 0x7594B790) & (v360 ^ 0x82184219) ^ (16 * (v360 ^ 0x82184219)) & 0x97594B70;
  v363 = v361 ^ 0x97594B79 ^ (v362 ^ 0x15100300) & (v361 << 8);
  v364 = v356 ^ (2 * ((v363 << 16) & 0x17590000 ^ v363 ^ ((v363 << 16) ^ 0x4B790000) & (((v362 ^ 0x82494869) << 8) & 0x17590000 ^ 0x6100000 ^ (((v362 ^ 0x82494869) << 8) ^ 0x594B0000) & (v362 ^ 0x82494869)))) ^ (v280 - v354 + 2141239059) ^ (((v280 - v354 + 2141239059) ^ 0xC29873A7) + 559581426) ^ (((v280 - v354 + 2141239059) ^ 0x31A32E4E) - 765340391) ^ (((v280 - v354 + 2141239059) ^ 0x12F9B2BF) - 247772694) ^ (((v280 - v354 + 2141239059) ^ 0xFDFFEBFF) + 507318442);
  v365 = 435563733 - (((v276 ^ 0xA8307913) + 2084920998) ^ ((v276 ^ 0x6E6C8935) - 1172722044) ^ ((v276 ^ 0xF836FA21) + 742645144));
  v366 = v365 ^ v276 ^ v338 ^ ((v365 ^ 0x1B17CB6A) - 885077065) ^ ((v365 ^ 0xCF5F520D) + 527848146) ^ ((v365 ^ 0xC6599BB) - 598959768) ^ ((v365 ^ 0xF7FBFFFF) + 668139300) ^ (2 * v346);
  v367 = ((2 * (v292 ^ 0x4A3E7031)) ^ 0xF70DD0A) & (v292 ^ 0x4A3E7031) ^ (2 * (v292 ^ 0x4A3E7031)) & 0x87B86E84;
  v368 = (v367 ^ 0x6304C00) & (4 * (v295 & (v292 ^ 0xC9365C31) ^ v294)) ^ v295 & (v292 ^ 0xC9365C31) ^ v294;
  v369 = ((4 * (v367 ^ 0x80882285)) ^ 0x1EE1BA14) & (v367 ^ 0x80882285) ^ (4 * (v367 ^ 0x80882285)) & 0x87B86E84;
  v370 = (v369 ^ 0x6A02A00) & (16 * v368) ^ v368;
  v371 = ((16 * (v369 ^ 0x81184481)) ^ 0x7B86E850) & (v369 ^ 0x81184481) ^ (16 * (v369 ^ 0x81184481)) & 0x87B86E80;
  v372 = v370 ^ 0x87B86E85 ^ (v371 ^ 0x3806800) & (v370 << 8);
  v373 = v292 ^ v291 ^ ((v291 ^ 0x61AF0EBB) + 507469574) ^ ((v291 ^ 0x7A0072DB) + 93332326) ^ ((v291 ^ 0xE57F6DD6) - 1695597463) ^ ((v291 ^ 0x7EBFBFF7) + 19918410) ^ (2 * ((v372 << 16) & 0x7B80000 ^ v372 ^ ((v372 << 16) ^ 0x6E850000) & (((v371 ^ 0x84380685) << 8) & 0x7B80000 ^ 0x7900000 ^ (((v371 ^ 0x84380685) << 8) ^ 0x386E0000) & (v371 ^ 0x84380685))));
  v374 = ((v373 ^ 0xE0124D7F) - 1137619465) ^ ((v373 ^ 0x79072DE7) + 623127919) ^ ((v373 ^ 0xD68C0D67) - 1968239121);
  v375 = (v337 - v292 - 1159837282) ^ v328 ^ (((v337 - v292 - 1159837282) ^ 0xC631F4D1) + 409395321) ^ (((v337 - v292 - 1159837282) ^ 0xC49F9205) + 449349293) ^ (((v337 - v292 - 1159837282) ^ 0x9CFD727D) + 1118463701) ^ (((v337 - v292 - 1159837282) ^ 0xBFFBFFFF) + 1638722391) ^ (2 * v336) ^ (v327 - 725025454) ^ (((v327 - 725025454) ^ 0x4BFED572) - 1579184526) ^ (((v327 - 725025454) ^ 0x7B2132BC) - 1862243904) ^ (((v327 - 725025454) ^ 0xAFEB8CD) - 522198065) ^ (((v327 - 725025454) ^ 0x2FFFFBFF) - 975265539);
  v376 = v274 - (((v364 ^ 0x7DEC15E5) + 352227433) ^ ((v364 ^ 0xA2A54232) - 877148224) ^ ((v364 ^ 0xAAF76A7C) - 1008341006)) + 2086675737;
  v377 = v325 + (((v366 ^ 0xF7C6C4AD) - 112079276) ^ ((v366 ^ 0x550C157B) + 1536892806) ^ ((v366 ^ 0x2822417) + 202714858));
  v378 = (((v325 - v374 + 1119884964) ^ 0xF2D333EA) + 1092708785) ^ (v325 - v374 + 1119884964) ^ (((v325 - v374 + 1119884964) ^ 0x8939D43E) + 986418789) ^ (((v325 - v374 + 1119884964) ^ 0x5A5CBD8A) - 374413359) ^ (((v325 - v374 + 1119884964) ^ 0x6DBBFFFB) - 565598814) ^ (v377 + 2095142488) ^ (((v377 + 2095142488) ^ 0x3B0A4457) + 1545732323) ^ (((v377 + 2095142488) ^ 0xF4E0CDB) + 1751533679) ^ (((v377 + 2095142488) ^ 0x92644839) - 179565427) ^ (((v377 + 2095142488) ^ 0x3EF7BBFF) + 1507852107);
  v379 = ((v378 ^ 0xF0E73AF1) + 1509086870) ^ ((v378 ^ 0x5B6F3C24) - 226832319) ^ ((v378 ^ 0x7F52183A) - 699927457);
  v380 = ((LODWORD(STACK[0x548]) ^ 0x8AF26F7D) + 1963823235) ^ ((LODWORD(STACK[0x548]) ^ 0x2DB105E7) - 766576103) ^ ((LODWORD(STACK[0x548]) ^ 0xE3374598) + 482916968);
  v381 = ((v379 - 678238236) ^ 0x805DA50D) & (2 * ((v379 - 678238236) & 0xAA9D2590)) ^ (v379 - 678238236) & 0xAA9D2590;
  v382 = ((2 * ((v379 - 678238236) ^ 0xD147EE2D)) ^ 0xF7B5977A) & ((v379 - 678238236) ^ 0xD147EE2D) ^ (2 * ((v379 - 678238236) ^ 0xD147EE2D)) & 0x7BDACBBC;
  v383 = (v382 ^ 0x72908200) & (4 * v381) ^ v381;
  v384 = ((4 * (v382 ^ 0x84A4885)) ^ 0xEF6B2EF4) & (v382 ^ 0x84A4885) ^ (4 * (v382 ^ 0x84A4885)) & 0x7BDACBBC;
  v385 = (v384 ^ 0x6B4A0AA0) & (16 * v383) ^ v383;
  v386 = ((16 * (v384 ^ 0x1090C109)) ^ 0xBDACBBD0) & (v384 ^ 0x1090C109) ^ (16 * (v384 ^ 0x1090C109)) & 0x7BDACBB0;
  v387 = v385 ^ 0x7BDACBBD ^ (v386 ^ 0x39888B00) & (v385 << 8);
  v388 = (v379 - 678238236) ^ LODWORD(STACK[0x510]) ^ (2 * ((v387 << 16) & 0x7BDA0000 ^ v387 ^ ((v387 << 16) ^ 0x4BBD0000) & (((v386 ^ 0x4252402D) << 8) & 0x7BDA0000 ^ 0x21100000 ^ (((v386 ^ 0x4252402D) << 8) ^ 0x5ACB0000) & (v386 ^ 0x4252402D))));
  v389 = (((v292 - v379 + 831755007) ^ 0x69376A89) - 1315203577) ^ (v292 - v379 + 831755007) ^ (((v292 - v379 + 831755007) ^ 0x6ACF75E6) - 1302099606) ^ (((v292 - v379 + 831755007) ^ 0x5B4463C5) - 2081906869) ^ (((v292 - v379 + 831755007) ^ 0x7FEF7FDA) - 1488747690);
  v390 = v364 ^ LODWORD(STACK[0x548]) ^ ((v376 ^ 0x336CE099) - 228114945) ^ v376 ^ ((v376 ^ 0x7541B23D) - 1270190245) ^ ((v376 ^ 0x83268F41) + 1110266407) ^ ((v376 ^ 0xFBFFFF7D) + 989078043);
  v391 = (((v390 ^ LODWORD(STACK[0x510]) ^ 0x6BB68F4B) + 1614852874) ^ ((v390 ^ LODWORD(STACK[0x510]) ^ 0x439FA886) + 1214878917) ^ ((v390 ^ LODWORD(STACK[0x510]) ^ 0xE6E0AFA2) - 317287455)) - (((v390 ^ 0xDD8795F9) - 697194052) ^ ((v390 ^ 0x1E32DD0F) + 365224270) ^ ((v390 ^ 0xCC8B78C7) - 948091770)) + 1202838452;
  v392 = (v391 ^ 0xF7D57E99) & (2 * (v391 & 0xF7D67C92)) ^ v391 & 0xF7D67C92;
  v393 = ((2 * (v391 ^ 0x1555E799)) ^ 0xC5073616) & (v391 ^ 0x1555E799) ^ (2 * (v391 ^ 0x1555E799)) & 0xE2839B0A;
  v394 = (v393 ^ 0xC0031200) & (4 * v392) ^ v392;
  v395 = ((4 * (v393 ^ 0x22808909)) ^ 0x8A0E6C2C) & (v393 ^ 0x22808909) ^ (4 * (v393 ^ 0x22808909)) & 0xE2839B08;
  v396 = (v395 ^ 0x82020800) & (16 * v394) ^ v394;
  v397 = ((16 * (v395 ^ 0x60819303)) ^ 0x2839B0B0) & (v395 ^ 0x60819303) ^ (16 * (v395 ^ 0x60819303)) & 0xE2839B00;
  v398 = v396 ^ 0xE2839B0B ^ (v397 ^ 0x20019000) & (v396 << 8);
  v399 = (v398 << 16) & 0x62830000 ^ v398 ^ ((v398 << 16) ^ 0x1B0B0000) & (((v397 ^ 0xC2820B0B) << 8) & 0xE2830000 ^ (((v397 ^ 0xC2820B0B) << 8) ^ 0x839B0000) & (v397 ^ 0xC2820B0B) ^ 0x60000000);
  v400 = (((v389 ^ LODWORD(STACK[0x510]) ^ 0x88B0430A) + 180816476) ^ ((v389 ^ LODWORD(STACK[0x510]) ^ 0xE5D77FA) - 1943388500) ^ ((v389 ^ LODWORD(STACK[0x510]) ^ 0x60498FDE) - 499202416)) - (((v389 ^ 0x28955CDF) - 1428023921) ^ ((v389 ^ 0xD1C72370) + 1404070434) ^ ((v389 ^ 0xDE017CDF) + 1551250831)) + 1345937995;
  v401 = (v400 ^ 0xF1C4E517) & (2 * (v400 & 0xF016F557)) ^ v400 & 0xF016F557;
  v402 = ((2 * (v400 ^ 0x91E08D91)) ^ 0xC3ECF18C) & (v400 ^ 0x91E08D91) ^ (2 * (v400 ^ 0x91E08D91)) & 0x61F678C6;
  v403 = (v402 ^ 0x40E47084) & (4 * v401) ^ v401;
  v404 = ((4 * (v402 ^ 0x20120842)) ^ 0x87D9E318) & (v402 ^ 0x20120842) ^ (4 * (v402 ^ 0x20120842)) & 0x61F678C4;
  v405 = (v404 ^ 0x1D06000) & (16 * v403) ^ v403;
  v406 = ((16 * (v404 ^ 0x602618C6)) ^ 0x1F678C60) & (v404 ^ 0x602618C6) ^ (16 * (v404 ^ 0x602618C6)) & 0x61F678C0;
  v407 = v405 ^ 0x61F678C6 ^ (v406 ^ 0x1660800) & (v405 << 8);
  v408 = (v407 << 16) & 0x61F60000 ^ v407 ^ ((v407 << 16) ^ 0x78C60000) & (((v406 ^ 0x60907086) << 8) & 0x61F60000 ^ 0x1860000 ^ (((v406 ^ 0x60907086) << 8) ^ 0xF6780000) & (v406 ^ 0x60907086));
  v409 = (((v388 ^ 0x7B7EB869) - 39272606) ^ ((v388 ^ 0xE5A209FB) + 1668550388) ^ ((v388 ^ 0x9533BB26) + 333823023)) - v379 + 558806442;
  v410 = v391 ^ v400 ^ v409 ^ ((v409 ^ 0xDE87AE54) + 298811761) ^ ((v409 ^ 0xA3DB0C57) + 1821582196) ^ ((v409 ^ 0x23308927) - 327637500) ^ ((v409 ^ 0x6EDBFBFF) - 1584147236) ^ (2 * (v408 ^ v399));
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x414]) - (v377 + 2095142488) - 443976609 + (((v410 ^ 0x2834F62D) + 1538567983) ^ ((v410 ^ 0x9D468A34) - 288959688) ^ ((v410 ^ 0x4164E29D) + 853851039));
  v411 = LODWORD(STACK[0x3F8]) + v324 + v355;
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x418]) - LODWORD(STACK[0x56C]) - 1577131173 + LODWORD(STACK[0x580]);
  v412 = LODWORD(STACK[0x560]) - 1975420664;
  v413 = LODWORD(STACK[0x57C]) + 2050;
  LODWORD(STACK[0x408]) = LODWORD(STACK[0x408]) - v255 - 1418024360 + v256;
  LODWORD(STACK[0x420]) = LODWORD(STACK[0x420]) - LODWORD(STACK[0x53C]) - 1550738080 + LODWORD(STACK[0x540]);
  LODWORD(STACK[0x40C]) = LODWORD(STACK[0x40C]) - (((v276 ^ 0x2FBCDE16) + 2089340328) ^ ((v276 ^ 0x4CF080ED) + 532976477) ^ ((v276 ^ 0xF2D7C23A) - 1578905204)) + 1440342654 + (((v375 ^ 0xF667517B) - 271139408) ^ ((v375 ^ 0xF6953CAB) - 282800000) ^ ((v375 ^ 0x75962DF6) + 1814544675));
  v414 = (((LODWORD(STACK[0x404]) - 159726737) ^ 0x866F545E) + 699056854) ^ (LODWORD(STACK[0x404]) - 159726737) ^ (((LODWORD(STACK[0x404]) - 159726737) ^ 0xF5F6FC88) + 1513318916) ^ (((LODWORD(STACK[0x404]) - 159726737) ^ 0x5C5C1E0C) - 208041848) ^ (((LODWORD(STACK[0x404]) - 159726737) ^ 0x7FFFDFAE) - 801486554);
  v415 = (((LODWORD(STACK[0x52C]) - 1618248494) ^ 0xAB6498BC) + 1142061982) ^ (LODWORD(STACK[0x52C]) - 1618248494) ^ (((LODWORD(STACK[0x52C]) - 1618248494) ^ 0x6F22F938) - 2141971942) ^ (((LODWORD(STACK[0x52C]) - 1618248494) ^ 0xEB6082A7) + 68575623) ^ (((LODWORD(STACK[0x52C]) - 1618248494) ^ 0x3FAFFFFD) - 791077667);
  LODWORD(STACK[0x41C]) += v259 ^ 0x33E4E8E;
  v416 = 2 * ((v415 ^ 0x18833EE0) & (v414 ^ 0x503A6974) ^ v414 & 0x80A223E);
  v417 = v411 + 1054879539;
  v418 = (((v416 ^ 0xEBDD5ADD) - 234629006) ^ ((v416 ^ 0xB106DA20) - 1462216563) ^ ((v416 ^ 0x5ACFC095) + 1125204538)) + (((v415 ^ v414 ^ 0xB6E8EE54) + 493702420) ^ ((v415 ^ v414 ^ 0xFCB7D029) + 1462924143) ^ ((v415 ^ v414 ^ 0xAEC4BD7) - 1586894703));
  LODWORD(STACK[0x424]) = LODWORD(STACK[0x424]) + LODWORD(STACK[0x590]) - 1655862432 + LODWORD(STACK[0x588]);
  if (LODWORD(STACK[0x2E4]) == 52)
  {
    v420 = LODWORD(STACK[0x2A0]) + 1369240004 + v413;
    v421 = LODWORD(STACK[0x288]) + v412;
    LODWORD(STACK[0x23C]) = LODWORD(STACK[0x298]) + 1571691762 + LODWORD(STACK[0x530]);
    LODWORD(STACK[0x244]) = LODWORD(STACK[0x2A8]) + 280763910 + v184 - 1290821244;
    v422 = LODWORD(STACK[0x2E0]) - 728;
    LODWORD(STACK[0x238]) = LODWORD(STACK[0x290]) + 466586837 + LODWORD(STACK[0x550]);
    LODWORD(STACK[0x268]) = LODWORD(STACK[0x294]) - 422125189 + v380 + 356139272 + v356;
    v423 = (((v422 - 608417275) & 0x2443BD7F) + 279) * (STACK[0x2B4] & 1);
    LODWORD(STACK[0x224]) = v420 + 1520;
    LODWORD(STACK[0x280]) = v421 + 477953001;
    LODWORD(STACK[0x25C]) = v417 - 1120951316 + v422;
    LODWORD(STACK[0x26C]) = v418 - 83990963;
    v424 = *(STACK[0x570] + 8 * (v423 ^ v422));
    LODWORD(STACK[0x264]) = STACK[0x40C];
    LODWORD(STACK[0x218]) = STACK[0x41C];
    LODWORD(STACK[0x284]) = STACK[0x410];
    LODWORD(STACK[0x260]) = STACK[0x408];
    LODWORD(STACK[0x20C]) = STACK[0x418];
    LODWORD(STACK[0x208]) = STACK[0x420];
    LODWORD(STACK[0x21C]) = STACK[0x424];
    LODWORD(STACK[0x258]) = STACK[0x414];
    return v424();
  }

  else if (LODWORD(STACK[0x2E4]) == 86)
  {
    return sub_C32C0(v413, v417, v418);
  }

  else
  {
    return (*(STACK[0x570] + 8 * ((LODWORD(STACK[0x2B8]) * (STACK[0x2F8] & 1)) ^ (LODWORD(STACK[0x2E0]) - 942))))();
  }
}

uint64_t sub_C9E8C()
{
  LOWORD(STACK[0x113A]) = v0;
  LODWORD(STACK[0x360]) = v0;
  return sub_49D80();
}

uint64_t sub_CA000(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_CA018()
{
  *(v5 - 232) = v3 ^ (475723357 * ((((2 * (v5 - 240)) | 0x77EF0884) - (v5 - 240) - 1006076994) ^ 0x214BA253));
  v6 = (*(v0 + 8 * (v1 + 879)))(v5 - 240);
  v7 = STACK[0x430];
  *(v2 + 8) = *(v5 - 240) ^ v4;
  return (*(v7 + 8 * ((v1 + 484) ^ 0x16)))(v6);
}

uint64_t sub_CA0AC()
{
  STACK[0x13F0] = v1;
  v2 = STACK[0x8A8];
  STACK[0x13F8] = STACK[0x8A8];
  return (*(STACK[0x430] + 8 * ((2849 * (v1 - v2 > (((v0 - 787) | 0x8B) ^ ((v0 - 567) | 0xA06u) ^ 0xBE0uLL))) ^ v0)))();
}

void sub_CA104(uint64_t a1@<X6>, int a2@<W8>)
{
  v4 = *(STACK[0x208] + 1336 * v2);
  *(v3 - 232) = 475723357 * (((~(v3 - 240) & 0xC52C50FA) - (~(v3 - 240) | 0xC52C50FB)) ^ 0xDF9076EA) - 1834142901 + a2 + 21;
  *(v3 - 240) = v4;
  (*(a1 + 8 * (a2 + 2860)))(v3 - 240);
  sub_B0B28();
}

uint64_t sub_CA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = v18 + ((-304482742 - ((v19 - 136) | 0xEDD9F64A) + ((v19 - 136) | 0x122609B5)) ^ 0xF4C9ACEE) * v17 - 585;
  *(v19 - 128) = v15;
  *(v19 - 120) = &a15;
  v20 = (*(v16 + 8 * (v18 ^ 0xB29)))(v19 - 136);
  return (*(v16 + 8 * ((((*(v19 - 112) - 1903883945) > 0xF3AE0B50) * ((v18 - 1078) ^ 0x1CC)) ^ v18)))(v20);
}

uint64_t sub_CA44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v9 - 1;
  *(v7 + v12) = *(v11 + v12);
  return (*(a7 + 8 * (v10 & ~(v8 ^ (v12 == 0)) ^ v8)))();
}

void sub_CA474(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) - 1837594368;
  v3 = *(*(a1 + 16) + 4) - 1837594368;
  v4 = (v2 < 943364913) ^ (v3 < 943364913);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < 943364913;
  }

  else
  {
    v6 = v5;
  }

  v1 = *a1 - 1327116359 * (((a1 | 0xFDF3194F) - (a1 & 0xFDF3194F)) ^ 0x1B1CBC14);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_CA5BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = ((((v5 ^ 0x21) + 93) ^ v5 ^ ((v5 ^ 0x44) + 58) ^ ((v5 ^ 0x10) + 110)) ^ ((v5 ^ (a4 + 0x80) ^ 0x51) + 11)) & 0x7F;
  v8 = v6 != 2 && (v6 ^ 2u) < 5;
  return (*(v4 + 8 * ((401 * v8) ^ a4)))();
}

uint64_t sub_CA710()
{
  *(v6 - 232) = v4 ^ (475723357 * (((v6 - 240) & 0xC0D39AE0 | ~((v6 - 240) | 0xC0D39AE0)) ^ 0x2590430E));
  v7 = (*(v0 + 8 * v5))(v6 - 240);
  v8 = STACK[0x430];
  *(v2 + 24) = *(v6 - 240) ^ v3;
  return (*(v8 + 8 * ((v1 - 1312) ^ 0xBCC)))(v7);
}

uint64_t sub_CA7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *STACK[0x1088] = v7;
  v9 = (((87 * (v8 ^ 0xB24)) ^ 0x51) & v7) != (v8 ^ 0x1BB) - 2716;
  return (*(a7 + 8 * ((v9 | (8 * v9)) ^ (v8 - 1343))))();
}

uint64_t sub_CA804()
{
  v1 = *(STACK[0x5A8] + 24);
  STACK[0xFD8] = v1;
  return (*(STACK[0x430] + 8 * (((v1 != 0) * (((v0 - 2140) | 0xB22) ^ 0xB21)) | v0)))();
}

void sub_CA8C4(uint64_t a1)
{
  v1 = 1556812919 * ((((2 * (a1 ^ 0x93C10595)) | 0x7A174510) - (a1 ^ 0x93C10595) + 1123310968) ^ 0x7449CB7E);
  v2 = *(a1 + 28) - v1;
  if (*(a1 + 16))
  {
    v3 = (*(a1 + 8) ^ v1) == 2107965157;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_CAA30@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v5 = v3 - 1;
  *(a2 + v5) = *(v2 + v5) - ((2 * *(v2 + v5)) & 0xEF) - 9;
  return (*(a1 + 8 * ((30 * (v5 != 0)) ^ (v4 - 2365))))();
}

uint64_t sub_CAA70()
{
  *(v2 - 240) = (v1 + 160937528) ^ (1556812919 * ((((v2 - 240) | 0x11C402AB) + (~(v2 - 240) | 0xEE3BFD54)) ^ 0x4B476EC9));
  v3 = (*(v0 + 8 * (v1 ^ 0xD85)))(v2 - 240);
  return (*(STACK[0x430] + 8 * ((11 * (LOBYTE(STACK[0x2764]) == (((v1 - 36) | 6) - 14))) ^ v1)))(v3);
}

uint64_t sub_CABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0xB08] + 24);
  STACK[0x820] = v8;
  return (*(a7 + 8 * (((v8 == 0) * ((v7 ^ 0x3A7) - 4463 + ((v7 - 1065) | 0x207))) ^ v7)))();
}

uint64_t sub_CAC2C(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 != 0) * v2) ^ v1)))();
}

uint64_t sub_CAC84()
{
  v1 = LODWORD(STACK[0x3D0]) + 686738456;
  v2 = LODWORD(STACK[0x2E8]) + 886362422;
  v3 = (v2 < 0x34D4D0B6) ^ (v1 < (((LODWORD(STACK[0x514]) - 784) | 0x400) ^ 0x34D4D794u));
  v4 = v1 < v2;
  if (v3)
  {
    v4 = v2 < 0x34D4D0B6;
  }

  return (*(v0 + 8 * ((14 * !v4) ^ LODWORD(STACK[0x514]))))();
}

uint64_t sub_CACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0xBE0] + 24);
  STACK[0x828] = v8;
  return (*(a7 + 8 * ((((((v7 + 2316) ^ (v8 == 0)) & 1) == 0) * ((v7 - 130) ^ 0x1C1)) ^ v7)))();
}

uint64_t sub_CAD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (v15 + 611013304) & 0xDB94AEEE;
  a13 = 4;
  v17 = (*(v13 + 8 * (v16 ^ 0x8E)))(*(v14 + 4), 22, 0, 0, &a10, &a13);
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = a13 == v16 - 293 - 3295;
  }

  v22 = !v21;
  return (*(v13 + 8 * ((v22 * (v16 ^ 0xE51)) ^ v16)))(v17, v18, v19, v20);
}

uint64_t sub_CADCC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  v16 = STACK[0x408] - 1995;
  v17 = (a1 ^ v15) + STACK[0x260];
  STACK[0x11F0] = v17;
  return (*(STACK[0x430] + 8 * (v16 ^ (220 * (v17 > a15)))))();
}

uint64_t sub_CAE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xACC];
  STACK[0xD90] += v7 ^ 0xFFFFFFFFFFFFF4F6;
  return (*(a7 + 8 * ((3913 * (v9 == v8)) ^ (v7 - 2025))))();
}

uint64_t sub_CAEB0@<X0>(int a1@<W8>)
{
  v4 = 539293837 * ((((v3 - 240) | 0x59527385) - (v3 - 240) + ((v3 - 240) & 0xA6AD8C78)) ^ 0xE453B972);
  *(v3 - 224) = &STACK[0x5F0];
  LOWORD(STACK[0x2764]) = 3706 - v4;
  *(v3 - 232) = v4 + a1 + 1244;
  v5 = (*(v1 + 8 * (a1 ^ 0xCDF)))(v3 - 240);
  *(v2 + 8) = STACK[0x5F0];
  return sub_CAF50(v5);
}

uint64_t sub_CAF50()
{
  STACK[0x10F0] = 0;
  STACK[0xA58] = 0;
  v2 = (*(v0 + 8 * (v1 + 1031)))(8, 0x1000040789AEA99);
  return (*(STACK[0x430] + 8 * (((v2 == 0) * (((v1 ^ 0xA82) + 159) ^ (66 * (v1 ^ 0xA82)))) ^ v1)))();
}

uint64_t sub_CAFC4@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W7>, unsigned int a4@<W8>)
{
  v16 = (v11 + 4 * v15);
  v17 = HIDWORD(v14) + v7 * (((a3 - 1423) | v10) ^ a1 ^ *(v13 + 4 * v15)) + (*v16 ^ a4) + HIDWORD(v6) + v8 * (*(v4 + 4 * v15) ^ a4);
  *(v16 - 1) = v17 + a4 - (a2 & (2 * v17));
  return (*(v9 + 8 * (((v15 + 1 == v5) * v12) ^ a3)))();
}

uint64_t sub_CB034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xF60] = STACK[0x1038];
  STACK[0xC60] = *(a7 + 8 * v7);
  return sub_23C2C(a7, v7 + 2978);
}

uint64_t sub_CB050@<X0>(int a1@<W5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v24 = (a14 + 24 * v18);
  *v24 = v20;
  v24[1] = a1;
  *&v19[6 * v18 + 4] = v23;
  v24[4] = a16;
  *v19 = (v22 ^ 0x208) + v17;
  return (*(v21 + 8 * (((v16 ^ 0xB5B) * ((a2 + 1071291515) < 0x80000003)) ^ v16)))();
}

uint64_t sub_CB1F8(unsigned int a1, unsigned int a2, int a3, char a4, unsigned __int8 *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v61 = a5[2] ^ v55;
  v62 = a5[5] ^ v59;
  v63 = a5[3] ^ a1;
  v64 = a5[1] ^ v54;
  v65 = a5[4] ^ (a3 - ((2 * a3) & 0xFFFFFFC4) + 98);
  v66 = a5[6] ^ a6;
  v67 = a5[11] ^ a4;
  v68 = a5[7] ^ v56;
  v69 = a5[13] ^ v58;
  v70 = a5[9] ^ v57;
  v71 = a5[12] ^ a2;
  HIDWORD(v72) = ((v69 >> 6) | (4 * v69)) ^ 1;
  LODWORD(v72) = (v69 << 26) ^ 0x90000000;
  v73 = *(a8 + 14) ^ a5[14];
  v74 = v61;
  v75 = *(a8 + 15) ^ a5[15];
  HIDWORD(a13) = (a47 + 653744822) & 0xD908AAFE;
  v85 = v61;
  v88 = a5[8] ^ v52;
  v76 = v61 ^ v63 ^ a5[8] ^ v52 ^ a5[4] ^ (a3 - ((2 * a3) & 0xC4) + 98) ^ *a5 ^ v60 ^ v64 ^ v62 ^ a5[10] ^ v53 ^ v71 ^ v67 ^ v66 ^ v68 ^ v73 ^ v75;
  v77 = *(&off_103F00 + (a47 ^ 0x434)) - 8;
  v78 = (v66 ^ 6) - ((2 * (v66 ^ 6)) & 0x13A);
  v87 = a5[10] ^ v53;
  v86 = v63;
  v79 = v63 ^ 3;
  v80 = ((v74 ^ 0x19F) + 93) ^ v74 ^ 0x19F ^ v88 ^ v63 ^ 0x9E ^ ((v88 ^ 0x9D) + 93) ^ ((v63 ^ 0x9E) + 93) ^ HIDWORD(a13) ^ 0xBCB ^ (*a5 ^ v60) ^ v65 ^ 0xFB ^ ((HIDWORD(a13) ^ 0xBCB ^ (*a5 ^ v60)) + 93) ^ ((v65 ^ 0xFB) + 93);
  v89 = v62;
  LODWORD(v63) = v62 ^ 5;
  LODWORD(v61) = v80 ^ v63 ^ ((v62 ^ 0x98) + 93) ^ v70 ^ 0x19C ^ ((v70 ^ 0x19C) + 93);
  LODWORD(v62) = (a47 + 93) & 0x57 ^ (v72 >> 26) ^ 0x1AA;
  v81 = v61 ^ v67 ^ 0x19E ^ ((v67 ^ 0x19E) + 93) ^ v68 ^ 0x19A ^ ((v68 ^ 0x19A) + 93) ^ (v78 + 157) ^ v73 ^ 0x19B ^ *&v77[8 * ((*a5 ^ v60) ^ 0x38)] ^ ((v73 ^ 0x19B) + 93) ^ v62 ^ (v62 + 93) ^ v75 ^ 0x9A ^ *&v77[8 * (v74 ^ 0x3A)] ^ ((v75 ^ 0x9A) + 93) ^ *&v77[8 * (v79 ^ 0x138)] ^ v76 ^ 0x62 ^ (a47 + 93) & 0x57 ^ (v72 >> 26) ^ 0x1E ^ *&v77[8 * ((a5[4] ^ (a3 - ((2 * a3) & 0xC4) + 98)) ^ 0x15E)] ^ (*&v77[8 * (v64 ^ 0x139)] ^ ((v64 ^ 0x9C) + 93) ^ v64) ^ *&v77[8 * (v63 ^ 0x138)] ^ *&v77[8 * (v68 ^ 0x3F)] ^ *&v77[8 * ((v78 + 157) ^ 0x1A5)] ^ (v78 + 250);
  v82 = (*&v77[8 * (v71 ^ 0x13CLL)] ^ ((v71 ^ 0x99) + 93) ^ v71);
  v83 = -63 * *(*(&off_103F00 + a47 - 1024) + ((v81 ^ *&v77[8 * ((a5[8] ^ v52) ^ 0x138)] ^ *&v77[8 * (v70 ^ 0x39)] ^ *&v77[8 * (v67 ^ 0x3B)] ^ *&v77[8 * ((v72 >> 26) ^ 0x59)] ^ *&v77[8 * (v87 ^ 0x13ALL)] ^ ((v87 ^ 0x9F) + 93) ^ v87 ^ *&v77[8 * (v73 ^ 0x3E)] ^ *&v77[8 * (v75 ^ 0x13F)] ^ v82 ^ v70) ^ 0xFELL));
  HIDWORD(a31) = v83 ^ ((v83 & 0xF0) >> 4);
  return (*(a52 + 8 * ((124 * ((a35 & 1) == 0)) ^ (a47 - 748))))(*a5 ^ v60, (a47 - 748), 98, v82, *&v77[8 * (v64 ^ 0x139)] ^ ((v64 ^ 0xFFFFFF9C) + 93) ^ v64, *&v77[8 * (v87 ^ 0x13ALL)] ^ ((v87 ^ 0xFFFFFF9F) + 93) ^ v87, a7, (v72 >> 26), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, (v72 >> 26), a28, a29, a30, a31, v64, v85, v86, a35, v87, v88, v65, v71, v75, v73, v66, v89);
}

uint64_t sub_CB810@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - 42 - ((2 * *(*(a1 + 8) + 12)) & 0xEF) + 33;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(v3 + 8 * ((62 * v4) ^ 0x1D6u)))(0);
}

uint64_t sub_CB888@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v4 = *(v2 + 1336 * STACK[0x570]);
  *(v3 - 232) = 475723357 * ((((v3 - 240) | 0xCBE8DF39) - (v3 - 240) + ((v3 - 240) & 0x341720C0)) ^ 0xD154F928) - 1834142901 + a2 - 1083;
  *(v3 - 240) = v4;
  v5 = (*(a1 + 8 * (a2 ^ 0x9E4)))(v3 - 240);
  return sub_CB910(v5);
}

uint64_t sub_CC494@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = STACK[0xE30];
  STACK[0x660] = STACK[0xE30];
  return (*(a1 + 8 * ((((((a2 ^ 0x84E) + 251) ^ 0xFFFFF40C) + 1427 * (a2 ^ 0x84E)) * (v2 == 0)) ^ a2)))();
}

uint64_t sub_CC998@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v10 = a1[1];
  v9 = a1[2];
  v11 = a1[5];
  *a4 = v6;
  *v11 = v5;
  *v10 = v8;
  *v9 = v4 + v7;
  return sub_B0890(a1, a2, a3, 1682696337);
}

uint64_t sub_CCA9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(a7 + 8 * (((v7 != 0xB01701DB) * ((v8 - 2895) ^ 0x86A ^ ((v8 - 2895) | 0x611) ^ 0xE6C)) ^ (v8 - 1133))))();
}

void sub_CCC04(uint64_t a1)
{
  v1 = *a1 + 539293837 * ((((2 * a1) | 0xD7B80176) - a1 + 337903429) ^ 0x56DDCA4C);
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 633475633 < 0)
  {
    v4 = 633475633 - v3;
  }

  else
  {
    v4 = v3 - 633475633;
  }

  v7 = v1 + 772352333 * (((v6 ^ 0xC6221C56 | 0x7F8DABCC) - (v6 ^ 0xC6221C56) + ((v6 ^ 0xC6221C56) & 0x80725432)) ^ 0x5DEDBF21) - 88;
  v6[1] = v2;
  v5 = *(&off_103F00 + (v1 ^ 0x7EA)) - 4;
  (*&v5[8 * (v1 ^ 0x9AB)])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_CCD8C@<X0>(uint64_t a1@<X4>, char a2@<W8>)
{
  v6 = (v2 - 2);
  v7 = a2 + 2;
  *v6 = (v7 ^ 0xBA) * (v7 + 17);
  *(v6 - 1) = (v3 + v7) * (v7 ^ 0xBB);
  return (*(a1 + 8 * ((2256 * (v4 == 0)) ^ v5)))();
}

void sub_CCDD4(uint64_t a1)
{
  v1 = *(a1 + 16) - 772352333 * ((-2 - ((a1 | 0xB95FDBFC) + (~a1 | 0x46A02403))) ^ 0xA2E22CB8);
  v2 = *(a1 + 8);
  v6 = v1 + 1658355091 * ((&v4 + 1183478295 - 2 * (&v4 & 0x468A7217)) ^ 0xF8FA48ED) + 368;
  v5 = v2;
  v3 = *(&off_103F00 + v1 - 1666) - 4;
  (*&v3[8 * v1 + 15144])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_CCEE8()
{
  v4.i64[0] = 0xEEEEEEEEEEEEEEEELL;
  v4.i64[1] = 0xEEEEEEEEEEEEEEEELL;
  v5.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v5.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v2[72] = vaddq_s8(vsubq_s8(*(v0 + 4), vandq_s8(vaddq_s8(*(v0 + 4), *(v0 + 4)), v4)), v5);
  return (*(v3 + 8 * ((v1 - 396) ^ 0xAD4 ^ v1)))();
}

uint64_t sub_CCF8C@<X0>(int a1@<W8>)
{
  v1 = LODWORD(STACK[0x360]);
  if (v1 == 27753)
  {
    return (*(STACK[0x430] + 8 * ((STACK[0x408] - 2344) ^ (1491 * (a1 == -1340669473)))))();
  }

  if (v1 != 32667)
  {
    if (v1 == 43973)
    {
      STACK[0xB68] = STACK[0x1058] + STACK[0x2B0];
      JUMPOUT(0x1AF8CLL);
    }

    JUMPOUT(0x91624);
  }

  return (*(STACK[0x430] + 8 * ((((STACK[0x408] ^ 0xA92) + 2701) * (a1 == -1340669485)) ^ (STACK[0x408] - 2344))))();
}

uint64_t sub_CD114(uint64_t result)
{
  v1 = 1703288393 * (((result | 0x489C68F0) - result + (result & 0xB763970F)) ^ 0x9183042A);
  v2 = *result + v1;
  v3 = *(result + 8);
  v4 = *(&off_103F00 + v1 + *(result + 20) + 428902920) - 12;
  if (v2 == 1883668867)
  {
    v5 = 718;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  **(result + 24) = v4;
  if (v2 == 1883668867)
  {
    v6 = 1682696337;
  }

  else
  {
    v6 = -1682656440;
  }

  *v3 = v5;
  *(result + 16) = v6;
  return result;
}

void sub_CD1F8(_DWORD *a1)
{
  v1 = *a1 ^ (922715317 * (((a1 | 0x9B1D1A22) - (a1 & 0x9B1D1A22)) ^ 0xAE9B3AED));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_CD2C4(int a1, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v15 = (v13 ^ v10) * v11;
  *(v8 + v12) = (v14 + (v13 ^ v10) * v11 + ((2 * v14) & 0x80) + 70) ^ *(v6 + (v12 & 0xF));
  v17 = v12 + (((v15 ^ a1) * a2 + a3) & a4) - 1217 < a5 && v12 + v7 < v9;
  return (*(STACK[0x430] + 8 * ((v17 * a6) ^ v15)))();
}

uint64_t sub_CD380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xACC]) = v8;
  STACK[0xC60] = *(a7 + 8 * (v7 - 2766));
  return sub_23C2C(a7, 613 * (v7 ^ 0xB23u));
}

uint64_t sub_CD3AC@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = (*(a1 + 8 * (a2 ^ 0xDFD)))();
  v3 = STACK[0x978];
  STACK[0xD90] -= 80;
  return v3(v2);
}

uint64_t sub_CD4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v23 = v11 - 1;
  v24 = __ROR8__((v8 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (v24 + v18) ^ v19;
  v26 = (__ROR8__((v24 + v18) ^ v10, 8) + v25) ^ 0xEADDE524A744E387;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - (v14 & (2 * (v28 + v27))) + v15) ^ a1;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = ((a2 | (2 * (v31 + v30))) - (v31 + v30) + a4) ^ a5;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v17;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v13;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v9;
  *(a6 + v23) = *(v22 + (v23 & 0xF)) ^ *(v8 + v23) ^ *((v23 & 0xF) + v21 + 1) ^ ((v23 & 0xF) * a3) ^ *((v23 & 0xF) + v20 + 4) ^ (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ v12) >> (8 * ((v8 + v23) & 7)));
  return (*(a8 + 8 * (((v23 == 0) * v16) ^ (a7 + 472))))();
}

uint64_t sub_CD5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * ((v7 - 1193) ^ 0x8F5)))(456, 0x10B00402421D13CLL);
  v9 = STACK[0x430];
  STACK[0x8C0] = v8;
  return (*(v9 + 8 * ((((v8 == 0) ^ (v7 - 85)) & 1 | (2 * (((v8 == 0) ^ (v7 - 85)) & 1))) ^ (v7 - 1193))))();
}

uint64_t sub_CD718@<X0>(int a1@<W8>)
{
  v5 = *(v2 + 4 * (v3 - 1));
  *(v2 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v2 + 4 * v3)) - v3;
  v6 = 1280404519 * ((((v4 - 240) | 0x7993EC12F4F69A14) - ((v4 - 240) & 0x7993EC12F4F69A14)) ^ 0x554C6BCE60863579);
  *(v4 - 224) = ((a1 - 1142760550) ^ 0x157) - v6;
  *(v4 - 240) = v6 ^ 0x26F;
  *(v4 - 204) = -1280404519 * ((((v4 - 240) | 0xF4F69A14) - ((v4 - 240) & 0xF4F69A14)) ^ 0x60863579);
  *(v4 - 200) = a1 - 1142760550 - v6;
  *(v4 - 216) = v3 + 1 + v6;
  *(v4 - 232) = (a1 - 1538787282) ^ v6;
  *(v4 - 228) = (a1 - 1142760728) ^ v6;
  v7 = (*(v1 + 8 * (a1 + 758)))(v4 - 240);
  return (*(STACK[0x430] + 8 * *(v4 - 208)))(v7);
}

uint64_t sub_CD848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = 7 * (STACK[0x350] ^ 0xB5);
  *STACK[0x980] = v7;
  return (*(a7 + 8 * ((13 * ((v9 ^ 0x65) == v7)) ^ (v8 - 373))))();
}

uint64_t sub_CD930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v9 = (*(a7 + 8 * (v7 ^ 0x5F1)))(42, 0x100004077774924);
  v10 = STACK[0x430];
  *(a1 + 24) = v9;
  return (*(v10 + 8 * ((215 * (((v7 - 123 + v7 - 67 + 1) ^ (v9 == 0)) & 1)) ^ v7)))();
}

uint64_t sub_CD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xB20] = 0;
  v8 = (*(a7 + 8 * (v7 ^ 0xB22)))(120, 0x1000040F604211FLL);
  v9 = STACK[0x430];
  STACK[0x10B8] = v8;
  return (*(v9 + 8 * (((v8 == 0) * (((v7 + 646) | 8) - 1150)) ^ v7)))();
}

void sub_CDAE8(uint64_t a1)
{
  v1 = 1643603977 * ((-2 - ((~a1 | 0xEDD6301) + (a1 | 0xF1229CFE))) ^ 0xE1867BA9);
  if (*(a1 + 24))
  {
    v2 = *(a1 + 32) - v1 == 2107965157;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

void sub_CDC10()
{
  v0 = *(&off_103F00 + ((-55 * ((qword_10AB48 - dword_108068) ^ 0x3F)) ^ byte_E0C50[byte_F7E30[(-55 * ((qword_10AB48 - dword_108068) ^ 0x3F))] ^ 0xD7]) + 102);
  v1 = *(v0 - 4);
  v2 = *(&off_103F00 + ((-55 * ((qword_10AB48 + v1) ^ 0x3F)) ^ byte_F0AE0[byte_E99D0[(-55 * ((qword_10AB48 + v1) ^ 0x3F))] ^ 0x9C]) + 37);
  v3 = &v7[*(v2 - 4) ^ v1];
  v4 = (2091414217 * v3) ^ 0x61622C39E7EDC73FLL;
  v5 = 2091414217 * (v3 ^ 0x61622C39E7EDC73FLL);
  *(v0 - 4) = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = -55 * ((v5 + *(v0 - 4)) ^ 0x3F);
  **(&off_103F00 + (byte_F7F34[(byte_F0CE4[v5 - 4] ^ 0x20) - 4] ^ v5) + 112) = 1682696337;
  LOBYTE(v4) = -55 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x3F);
  v8 = *(&off_103F00 + (byte_F0BE4[(byte_E9ADC[v4 - 12] ^ 0x15) - 4] ^ v4) + 160) - 4;
  v10 = 2713 - 1556812919 * (&v8 ^ 0x5A836C63);
  v6 = *(&off_103F00 + ((-55 * ((qword_10AB48 + dword_108068) ^ 0x3F)) ^ byte_E0C50[byte_F7E30[(-55 * ((qword_10AB48 + dword_108068) ^ 0x3F))] ^ 0x25]) + 8) - 4;
  (*&v6[8 * (byte_F0AE8[(byte_E99D0[(-55 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x3F))] ^ 0x9C) - 8] ^ (-55 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x3F))) + 28712])(&v8);
  v8 = *(&off_103F00 + (byte_E0C50[byte_F7E30[(-55 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x3F))] ^ 0x25] ^ (-55 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x3F))) - 79) - 4;
  v10 = 2713 - 1556812919 * (((&v8 | 0xBE6C27DD) - (&v8 & 0xBE6C27DD)) ^ 0xE4EF4BBE);
  (*&v6[8 * ((-55 * (*(v0 - 4) ^ 0x3F ^ *(v2 - 4))) ^ byte_E0C50[byte_F7E30[(-55 * (*(v0 - 4) ^ 0x3F ^ *(v2 - 4)))] ^ 0x25]) + 28384])(&v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_CDFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v8 + 1052896706;
  v11 = (v10 ^ 0xC83E88BC) & (2 * (v10 & 0xC13E123E)) ^ v10 & 0xC13E123E;
  v12 = ((2 * ((v8 + 1052896706) ^ (v9 - 137) ^ 0x4A46A609)) ^ 0x16F17D54) & ((v8 + 1052896706) ^ (v9 - 137) ^ 0x4A46A609) ^ (2 * ((v8 + 1052896706) ^ (v9 - 137) ^ 0x4A46A609)) & 0x8B78BEAA;
  *STACK[0xC50] = (-((v7 & 1) == 0) ^ ((v10 ^ (2 * (((4 * (v12 ^ 0x890882AA)) & 0xB78BEA0 ^ 0x960BAA0 ^ ((4 * (v12 ^ 0x890882AA)) ^ 0x2DE2FAA0) & (v12 ^ 0x890882AA)) & (16 * (v12 & (4 * v11) ^ v11)) ^ v12 & (4 * v11) ^ v11))) >> 1) ^ 0x1F) + ((v7 & 1) == 0);
  return (*(a7 + 8 * ((1592 * (*STACK[0x1088] == ((v9 - 30) ^ 0xA))) ^ (v9 - 137))))();
}

uint64_t sub_CE0D4@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v8 = v7 + 263;
  v9 = -v3 - a1;
  v11 = (v9 + v6) < 0xFFFFFFFFFFFFFFF0 && v2 - a1 >= (101 * (((v8 - 2320) | 0xB00) ^ 0xB34u)) - 1802 && (v9 + v5 + 17) >= 0x10;
  v12 = v9 + v4 + 20;
  v14 = !v11 || v12 < 0x10;
  return (*(a2 + 8 * ((189 * v14) ^ v8)))();
}

uint64_t sub_CE1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  STACK[0x3A0] = v6;
  LODWORD(STACK[0x111C]) = a6 + 4;
  return sub_BAB70(a1, a2, a3, a4, a5);
}

uint64_t sub_CE3F8@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v8 = 539293837 * ((2 * ((v7 - 240) & 0x2F7E5FA0) - (v7 - 240) + 1350672474) ^ 0xED806AAD);
  *(v7 - 208) = v5 - v8 + 1184;
  *(v7 - 200) = v8 - 452871344;
  *(v7 - 240) = v2;
  *(v7 - 232) = v3;
  *(v7 - 216) = v6;
  *(v7 - 224) = v8 + (((a2 ^ 0x87C16B57) + 2017367209) ^ ((a2 ^ 0x6C1CEF9) - 113364729) ^ ((a2 ^ 0xB7FA0C06) + 1208346836 + ((v5 - 232847609) & 0xDE0FFF6))) - 2105465950;
  *(v7 - 220) = ((v4 ^ 0x76AF6FFF) - 1376059392 + ((2 * v4) & 0xED5EDFFE)) ^ v8;
  (*(a1 + 8 * (v5 + 2706)))(v7 - 240);
  return (STACK[0x6E8])(0xCAE35376008745C3);
}

uint64_t sub_CE600@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(a12) = v12;
  LODWORD(STACK[0x2B8]) = a3;
  LODWORD(STACK[0x49C]) = a2;
  LODWORD(STACK[0x46C]) = ((((a5 + 1528) | 0xA) + 61) ^ ((a5 + 1471) | 0xC0)) - v13;
  return (*(v14 + 8 * (a5 ^ (2533 * (v13 < 0x40)))))(a1, 0xA18DBBCAEB735122, 0xEADDE524A744E387, 0xD0C6DDE575B9A800, 0xB6A9B6003705FD5CLL, 1445, a4, 144, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_D2D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = STACK[0xD90];
  v8 = &STACK[0x1520] + STACK[0xD90];
  STACK[0x1278] = v8;
  STACK[0x1280] = (v8 + 128);
  STACK[0x1288] = (v8 + 1704);
  STACK[0xD90] = v7 + 1728;
  STACK[0x790] = 0;
  if (STACK[0x1238])
  {
    v9 = STACK[0x1248] == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || v5 == 0;
  return (*(a5 + 8 * ((v11 * ((v6 - 1335793076) & 0x4F9E8F74 ^ 0x867)) ^ v6)))();
}

uint64_t sub_D2DA4()
{
  if (v2 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = -v2;
  }

  v6 = v0 + v1 + (v3 ^ 0x4F2);
  v8 = v6 - 3400;
  v7 = v6 - 3400 < 0;
  v9 = 3400 - v6;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return (*(v4 + 8 * (((v5 > v10) * (((v3 - 1202) | 0x840) - 2166)) ^ v3)))();
}

uint64_t sub_D2DF8()
{
  STACK[0x480] = 0;
  v2 = STACK[0x6D0];
  v3 = STACK[0x430];
  STACK[0x920] = *(STACK[0x430] + 8 * (v1 - 2825));
  return sub_9AD6C(v3, v2);
}

uint64_t sub_D2EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 ^ 0x669)))((v7 - 1340671483 + ((v7 + 1300005868) & 0xB2837B77) - 2384) ^ LODWORD(STACK[0x4EC]), 0x100004077774924);
  v10 = STACK[0x430];
  STACK[0x13A0] = v9;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = -1682656443;
  }

  LODWORD(STACK[0x13AC]) = v11;
  return (*(v10 + 8 * ((510 * (v9 == 0)) ^ v7)))();
}

uint64_t sub_D30C4()
{
  v2 = STACK[0x1060];
  v3 = (STACK[0x550] + 4 * LOWORD(STACK[0xE3E]));
  v3[301] = (v1 << *STACK[0x1060]) + 874676467 - ((2 << *STACK[0x1060]) & (v0 + 1749350705));
  v3[333] = (v1 << *v2) + 874676467 - ((2 << *v2) & 0x684501E6);
  v3[365] = 2042487261;
  v3[397] = 2042487261;
  return sub_D313C();
}

uint64_t sub_D313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (((v8 - 1136) | 0x41) ^ 0x950) + v7;
  v10 = *STACK[0x1000];
  LOWORD(STACK[0xE3E]) = v9;
  return (*(a7 + 8 * (((v9 <= v10) * (((((v8 - 1136) | 0x41) + 1570650798) & 0xA261BEFB) + ((((v8 - 1136) | 0x41) - 2045) ^ 0xFFFFFC7E))) ^ ((v8 - 1136) | 0x41))))();
}

uint64_t sub_D31A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (STACK[0x408] + 672211670) & 0xD7EEDBDB;
  v9 = STACK[0x408] - 1686;
  LODWORD(STACK[0x79C]) = v7;
  return (*(a7 + 8 * (((v8 - 2439) * (a1 != 0)) ^ v9)))();
}

uint64_t sub_D32E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 - 128) = v15;
  *(v19 - 120) = a14;
  *(v19 - 136) = v14 + (((v17 | 0x5A342321) + (~v17 | 0xA5CBDCDE)) ^ 0xBCDB867B) * v18 + 48;
  v20 = (*(v16 + 8 * (v14 + 2896)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 112) > 0x717AF6A9u) * (((v14 - 1770602057) & 0x69893FEE) - 1196)) | v14)))(v20);
}

uint64_t sub_D338C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  v9 = (239 * (a1 ^ 0xD8Du) - 1419) & v8;
  *(v6 + v8) = *(v4 + v9) ^ *(a2 + v8) ^ *(v2 + v9) ^ *(v9 + v3 + 4) ^ (75 * v9);
  return (*(v7 + 8 * ((1249 * (v8 == 0)) ^ (a1 - 1293))))();
}

uint64_t sub_D3484()
{
  v5 = v2 < v1;
  v6 = v0 + 1;
  if (v5 == v6 > 0xFFFFFFFF1E483B71)
  {
    v5 = v6 + v1 < v2;
  }

  return (*(v4 + 8 * ((((((v3 + 1690617429) & 0x9B3B3FAE) - 1227) ^ 0x989) * v5) ^ v3)))();
}

uint64_t sub_D36D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ((~((v8 - 240) | 0xD723CA600FC23BDELL) + ((v8 - 240) & 0xD723CA600FC23BDELL)) ^ 0xA84DC29E85E3475FLL) * v6;
  *(v8 - 220) = ((v5 - 2853) ^ 0xA6DE7FF2) + v9;
  *(v8 - 216) = v7 - v9;
  *(v8 - 224) = -459860137 - v9 + v5;
  *(v8 - 232) = -v9;
  *(v8 - 240) = v9 + 2612310859u;
  *(v8 - 208) = v9 + v5 - 1495370947;
  *(v8 - 204) = ((v5 - 2853) ^ 0xA6DE7FC1) + v9;
  v10 = (*(a5 + 8 * (v5 ^ 0x6E4)))(v8 - 240);
  return (*(STACK[0x430] + 8 * *(v8 - 228)))(v10);
}

uint64_t sub_D3800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 + 631)))(32, 0x100004077774924);
  v9 = STACK[0x430];
  STACK[0xD40] = v8;
  return (*(v9 + 8 * (((((v8 == 0) ^ (v7 - 34)) & 1) * ((v7 + 188062685) ^ 0xB35A7EB)) ^ v7)))();
}

uint64_t sub_D3894()
{
  v4 = *(v2 + v0);
  LODWORD(STACK[0x150A]) = 0;
  LOWORD(STACK[0x150E]) = 0;
  return (*(v3 + 8 * ((124 * (((v1 + 46) ^ (((v1 - 101) & (2 * v4)) + (v4 ^ 0x1FFBEFD5) == 536604629)) & 1)) ^ (v1 + 3119))))();
}

uint64_t sub_D39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 1327116359 * ((((2 * (v10 - 240)) | 0xC6DEEFE28D7B213ALL) - (v10 - 240) - 0x636F77F146BD909DLL) ^ 0xE7884E48A05235C6);
  *(v10 - 208) = (*(v8 + 1336 * v7 + 248) + 419521101) ^ v11;
  *(v10 - 216) = (v9 + 1878384569) ^ v11;
  *(v10 - 240) = 1 - v11;
  *(v10 - 236) = v11 ^ (v9 + 1878384671) ^ 0xC5;
  *(v10 - 232) = v9 + 1878384671 - v11;
  *(v10 - 196) = (v9 - 304006151) ^ v11;
  *(v10 - 224) = 701152967 - v11;
  v12 = (*(a7 + 8 * (v9 ^ 0x543)))(v10 - 240);
  return (*(STACK[0x430] + 8 * *(v10 - 200)))(v12);
}

uint64_t sub_D3C8C@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v6 = v2 - 2149;
  *(v3 + 1308) = a2;
  *(v3 + 152) = STACK[0x790];
  STACK[0xD90] -= 1728;
  v7 = STACK[0x1250];
  v8 = STACK[0x1258];
  v9 = 1703288393 * (((v5 - 240) & 0x9CBE5860 | ~((v5 - 240) | 0x9CBE5860)) ^ 0xBA5ECB45);
  *(v5 - 220) = v2 - v9 - 428905527;
  *(v5 - 232) = v8;
  *(v5 - 240) = 1883668867 - v9;
  *(v5 - 216) = v7;
  v10 = (*(a1 + 8 * (v2 + 832)))(v5 - 240);
  return (*(STACK[0x430] + 8 * ((459 * (*(v5 - 224) == v4 + (v6 ^ 0x67C) - 1213)) ^ v6)))(v10);
}

uint64_t sub_D3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v8 + 1951351348;
  *STACK[0x908] = (-((v7 & 1) == 0) ^ ((((v10 ^ 0x1A8FA8B7) - 1858136707) ^ v10 ^ ((v10 ^ 0x8D4C21DF) + 117218325) ^ ((v10 ^ 0xFFFEFFFF) + 1951285813) ^ ((((v9 + 360) | 0x21) ^ 0x97C285C6) + (v10 ^ 0x1C7234A3))) >> 1) ^ 0x3A27A11A) + ((v7 & 1) == 0);
  return (*(a7 + 8 * ((57 * (*(STACK[0x9E0] + 1044 * STACK[0x528] + 12) == 0)) ^ (v9 + 368))))();
}

uint64_t sub_D3EC4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0xBD0] = 0;
  v5 = STACK[0x9D0];
  STACK[0x920] = *(a4 + 8 * a1);
  return sub_9AD6C(a4, v5);
}

uint64_t sub_D3F48()
{
  *(v3 - 232) = (v1 - 1438385445) ^ (475723357 * ((((v3 - 240) | 0x82D175B6) - (v3 - 240) + ((v3 - 240) & 0x7D2E8A48)) ^ 0x986D53A7));
  v4 = (*(v0 + 8 * (v1 ^ 0x5B3u)))(v3 - 240);
  v5 = STACK[0x430];
  *(v2 + 16) = *(v3 - 240) ^ 0x90;
  return (*(v5 + 8 * (v1 - 385)))(v4);
}

void sub_D3FF0()
{
  v3 = v1 + 911466662;
  *STACK[0xEC0] = (-((v0 & 1) == 0) ^ ((((v3 ^ 0xEB921EDB) + 574488963) ^ v3 ^ ((v3 ^ 0x79CBF756) - 1335367664) ^ ((v3 ^ 0x7FEF7FFE) - 1237098328) ^ (((v2 - 2090) ^ 0x171) + (v3 ^ 0xD5))) >> 1) ^ 0x53) + ((v0 & 1) == 0);
  JUMPOUT(0xD42CCLL);
}

uint64_t sub_D4130()
{
  LOWORD(STACK[0x11FE]) = v0;
  LODWORD(STACK[0x3A0]) = v0;
  return sub_49D80();
}

uint64_t sub_D414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W5>, unsigned int a4@<W8>)
{
  v8 = *(a2 + (95 * (*(v5 + (v6 + 917 * (a4 & 0xF) - 982 * ((4373694 * (v6 + 917 * (a4 & 0xF))) >> 32))) ^ 0x1A ^ (16 * (*(v5 + (v6 + 917 * (a4 >> 4)) % ((v4 + 262) ^ 0x74Eu)) & 0xF))) + 28975) % 0x3A0u);
  v9 = ((v8 ^ (32 * v8)) >> 4) ^ 0xE;
  *(v5 + (917 * a3 - 577113315) % 0x3D6u) = 16 * *(v5 + (917 * v9 - 982 * (((15666945 * v9) >> 16) >> 8)));
  return (*(v7 + 8 * ((1106 * (a3 == -1395117605)) ^ v4)))(a1, 0);
}

uint64_t sub_D4518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 8 * (v7 ^ 0x75F)))(LODWORD(STACK[0x4EC]) ^ 0xB01701DB, 0x100004077774924);
  v11 = STACK[0x430];
  STACK[0x13C0] = v10;
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  LODWORD(STACK[0x13CC]) = v12;
  return (*(v11 + 8 * (((v10 != 0) * ((v7 + 273) ^ v7 ^ 0x337)) ^ v7)))();
}

uint64_t sub_D458C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v6 = v5 + 127 - v2;
  v7 = *(v6 - 31);
  v8 = a2 + 127 - v2;
  v9.i64[0] = 0xEEEEEEEEEEEEEEEELL;
  v9.i64[1] = 0xEEEEEEEEEEEEEEEELL;
  v10.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v10.i64[1] = 0xF7F7F7F7F7F7F7F7;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(v6 - 15), vandq_s8(vaddq_s8(*(v6 - 15), *(v6 - 15)), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(a1 + 8 * (((v2 + 32 != ((v4 + 2346) ^ 0xE81)) * v3) ^ v4)))();
}

uint64_t sub_D4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int32x4_t a21, int32x4_t a22)
{
  a21 = vdupq_n_s32(0x9B60D833);
  a22 = a21;
  v24 = *(v23 + 8 * ((((a4 & 0xFFFFFFF8) == 8) * ((v22 - 1434) ^ 0x39A)) ^ (v22 - 1098)));
  return v24(a1, a2, a3, a4, &a21, 8, v24, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_D471C(uint64_t a1)
{
  v1 = 1658355091 * (a1 ^ 0xBE703AFA);
  v2 = *(a1 + 32) ^ v1;
  v3 = *(a1 + 16) - v1;
  v4 = *(*(a1 + 24) + 4);
  v6 = v4 - 633475633;
  v5 = v4 - 633475633 < 0;
  v7 = 633475633 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_103F00 + v2 - 2776) + 8 * ((((v3 - 1462487021) >= (4 * v7)) * ((v2 - 1046) ^ 0x75D)) ^ v2) - 4))();
}

uint64_t sub_D47E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a11 + 16) = -a1;
  v20 = 1579770187 * ((2 * ((v19 - 136) & 0x6B309858) - (v19 - 136) + 349136807) ^ 0x6111E4D9);
  *(v19 - 136) = v20 + v18 - 475;
  *(v19 - 128) = v16;
  *(v19 - 120) = 1846872426 - v20;
  (*(v17 + 8 * (v18 + 654)))(v19 - 136);
  v21 = 1556812919 * ((((2 * (v19 - 136)) | 0x721EF660) - (v19 - 136) + 1190167760) ^ 0xE38C1753);
  *(v19 - 128) = v16;
  *(v19 - 120) = (v18 - 1609) ^ v21;
  *(v19 - 136) = ((a13 << 6) & 0xADD9FBC0) - v21 + ((a13 << (v18 ^ 0xF)) ^ 0xD6ECFDFD) + 2143285164;
  (*(v17 + 8 * (v18 + 629)))(v19 - 136);
  *(v19 - 136) = &a16;
  *(v19 - 120) = a15;
  *(v19 - 128) = v18 + 539293837 * ((v19 - 136) ^ 0xBD01CAF7) - 2244;
  (*(v17 + 8 * (v18 + 554)))(v19 - 136);
  *(v19 - 136) = v18 + 1327116359 * ((699572665 - ((v19 - 136) | 0x29B2A1B9) + ((v19 - 136) | 0xD64D5E46)) ^ 0x30A2FB1D) - 2200;
  *(v19 - 128) = v16;
  *(v19 - 120) = a15;
  v22 = (*(v17 + 8 * (v18 ^ 0x298)))(v19 - 136);
  return (*(v17 + 8 * ((71 * (((v18 + 119) ^ (*(v19 - 112) == 1903883944)) & 1)) ^ v18)))(v22);
}

uint64_t sub_D49F4(uint64_t result)
{
  **(result + 8) = 0;
  *(result + 4) = -155210234;
  return result;
}

uint64_t sub_D4A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x498] = STACK[0x208] + 1336 * v8 + 1320;
  STACK[0x740] = &STACK[0xF80];
  STACK[0xBA0] = 0;
  LODWORD(STACK[0xFA4]) = -1340669477;
  LODWORD(STACK[0xE4C]) = -1340669477;
  STACK[0xB10] = 0;
  STACK[0x6F0] = 0;
  return (*(a7 + 8 * ((((((v7 | 0xC) - 114) ^ (STACK[0xDF8] == 0)) & 1) * ((v7 | 0xC) ^ 0xB78)) ^ (v7 | 0xC))))();
}

void sub_D4F5C(uint64_t a1)
{
  v1 = *(a1 + 24) + 1280404519 * ((-2 - ((a1 | 0x1896FCB4) + (~a1 | 0xE769034B))) ^ 0x7319AC26);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_D50AC@<X0>(uint64_t a1@<X3>, int a2@<W5>, unsigned int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v16 = (a4 + 4 * v15);
  v17 = (((v14 & a3) + v8) ^ HIDWORD(v13)) + (*v16 ^ v5) + v12 * (*(a1 + 4 * v15) ^ v5);
  *(v16 - 1) = (v6 + v17 - (v7 & (2 * v17)) + 2530) ^ v9;
  return (*(v10 + 8 * (((v15 + 1 == a5) * v11) ^ a2)))();
}

uint64_t sub_D5110@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  STACK[0xEA8] = 0;
  STACK[0x7F0] = 0;
  STACK[0x920] = *(a1 + 8 * v2);
  return sub_9AD6C(a1, a2);
}

uint64_t sub_D5600()
{
  v0 = (LODWORD(STACK[0x94C]) ^ 0xF3EFF66D) - 1115684900 + ((2 * LODWORD(STACK[0x94C])) & 0xE7DFECDA);
  v1 = (v0 ^ 0x4E9A0DA7) & (2 * (v0 & 0x4E9009B7)) ^ v0 & 0x4E9009B7;
  v2 = ((2 * (v0 ^ 0x5FBA1DC1)) ^ 0x225428EC) & (v0 ^ 0x5FBA1DC1) ^ (2 * (v0 ^ 0x5FBA1DC1)) & 0x112A1476;
  v3 = v2 ^ 0x112A1412;
  v4 = (v2 ^ 0x64) & (4 * v1) ^ v1;
  v5 = ((4 * v3) ^ 0x44A851D8) & v3 ^ (4 * v3) & 0x112A1474;
  v6 = (v5 ^ 0x281050) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0x11020426)) ^ 0x12A14760) & (v5 ^ 0x11020426) ^ (16 * (v5 ^ 0x11020426)) & 0x112A1470;
  return (*(STACK[0x430] + 8 * ((115 * ((v0 ^ (2 * (((((v7 ^ 0x10A1016) << 8) ^ 0x2A140000) & (v7 ^ 0x10A1016) ^ ((v7 ^ 0x10A1016) << 8) & 0x112A1400) & (((v7 ^ 0x10200400) & (v6 << 8) ^ v6) << 16) ^ (v7 ^ 0x10200400) & (v6 << 8) ^ v6))) == 1318062519)) ^ (STACK[0x408] - 885))))();
}

uint64_t sub_D5828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = STACK[0x208] + 1336 * v10;
  *(v11 - 232) = *v12;
  *(v11 - 240) = (v9 + v8) ^ (((((v11 - 240) | 0x6F4B5B2) - (v11 - 240) + ((v11 - 240) & 0xF90B4A48)) ^ 0x732A36CC) * v7);
  v13 = (*(a7 + 8 * (v9 + 531)))(v11 - 240);
  return (*(STACK[0x430] + 8 * ((240 * (*(v12 + 252) == 14 * (((v9 - 2648) | 0x8C0) ^ 0xAF3) + 784266274)) ^ v9)))(v13);
}

void sub_D5914(uint64_t a1)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1 | 0xA2;
  JUMPOUT(0xD5994);
}

uint64_t sub_D5A0C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = a2 - 1504;
  (*(a1 + 8 * (a2 ^ 0x613)))(v2);
  v4 = STACK[0x430];
  STACK[0x4B0] = 0;
  return (*(v4 + 8 * (((STACK[0xEB8] == 0) * ((v3 ^ 0x997) - 2846)) | v3)))();
}

uint64_t sub_D5B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (*(v8 + 1336 * v7 + 248) - 1410363932);
  v12 = 1280404519 * ((((v10 - 240) | 0x87F9950367E06D23) - ((v10 - 240) & 0x87F9950367E06D23)) ^ 0xAB2612DFF390C24ELL);
  *(v10 - 224) = ((v9 + 161274186) ^ 0x1AA) - v12;
  *(v10 - 216) = v12 + 3166235230u;
  *(v10 - 240) = v11 ^ v12;
  *(v10 - 204) = -1280404519 * ((((v10 - 240) | 0x67E06D23) - ((v10 - 240) & 0x67E06D23)) ^ 0xF390C24E);
  *(v10 - 200) = v9 + 161274186 - v12;
  *(v10 - 232) = (v9 - 1538787282) ^ v12;
  *(v10 - 228) = v12 ^ (v9 + 161274186) ^ 0x3D;
  v13 = (*(a7 + 8 * (v9 ^ 0x53A)))(v10 - 240);
  return (*(STACK[0x430] + 8 * *(v10 - 208)))(v13);
}

uint64_t sub_D5D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0xEA8] + 24);
  STACK[0xCC0] = v8;
  return (*(a7 + 8 * ((481 * (((v8 == 0) ^ (-109 * ((v7 - 24) ^ 0xCA) + 1)) & 1)) ^ v7)))();
}

void sub_D5E7C()
{
  v3 = v0;
  v4 = (*(v0 + 8 * (v2 ^ 0xBA4)))(25);
  v5 = *(v1 + 8 * (v2 ^ 0x557));
  *(v5 - 4) = v4;
  v5 = (v5 - 4);
  (*(v3 + 8 * (v2 + 2322)))();
  *(v4 + 16) = 0;
  v6 = *(v1 + 8 * (v2 ^ 0x512));
  *(v6 - 3) = 0;
  v7 = *v5;
  **(v1 + 8 * (v2 ^ 0x591)) = -113;
  v7[5] = 68;
  **(v1 + 8 * (v2 - 1137)) = 80;
  **(v1 + 8 * (v2 - 1103)) = 51;
  *(v6 - 6) = -77;
  v8 = *(v1 + 8 * (v2 - 1217));
  *(v8 + 12) = 39;
  v7[14] = -122;
  *v6 = -22;
  *v8 = -34;
  v7[15] = -11;
  v7[3] = 102;
  *(v8 + 13) = 79;
  **(v1 + 8 * (v2 - 1183)) = 47;
  v7[11] = 26;
  v7[13] = 23;
  *(v8 + 14) = -80;
  v7[4] = 96;
  *(v8 + 15) = 119;
  v6[12] = 80;
  **(v1 + 8 * (v2 - 1147)) = 88;
  **(v1 + 8 * (v2 - 1229)) = 1;
  *(v6 - 8) = 73;
  v6[3] = -15;
  **(v1 + 8 * (v2 ^ 0x54C)) = 25;
  *(v8 + 20) = -109;
  *(v7 + 1) = 21265;
  v6[4] = -44;
  v6[2] = -52;
  v6[6] = -36;
  v7[24] = -121;
  v7[8] = 73;
  *(v6 - 5) = 59;
  **(v1 + 8 * (v2 - 1169)) = 99;
  v7[10] = 3;
  *(v8 + 3) = -59;
  v7[20] = 54;
  v7[22] = 34;
  *(v8 + 7) = -72;
  *(v6 - 4) = -5;
  v9 = *v5;
  *(v8 + 22) = -98;
  v6[8] = 13;
  *(v8 + 16) = -14;
  v6[9] = -39;
  *(v8 - 1) = 69;
  v6[11] = 113;
  v6[7] = 52;
  v9[6] = -85;
  *(v8 + 23) = -33;
  v9[7] = -16;
  v9[9] = 45;
  *(v8 + 4) = 34;
  *(v6 - 1) = 15;
  *(v6 - 7) = -87;
  *(v8 + 1) = -4316;
  *(v8 - 2) = 32;
  *(v8 + 8) = -105;
  *(v6 - 3) = -116;
  v6[1] = 66;
  v6[5] = -15;
  *(v8 + 9) = 79;
  *(v8 + 19) = 58;
  v6[10] = -90;
  *(v8 + 17) = -15;
  v9[12] = 77;
  *(v6 - 2) = 31;
  *(v8 + 5) = -86;
  v9[23] = -39;
  *(v8 - 4) = -105;
  *(v8 + 10) = -18295;
  *v9 = -15;
  v9[21] = 120;
  *(v8 + 21) = 72;
  *(v8 + 24) = -30944;
  *(v8 + 6) = -92;
  *(v8 + 18) = 73;
  *(v8 - 3) = 105;
  JUMPOUT(0xD842CLL);
}

void sub_D8784(int a1@<W1>, int a2@<W3>, __int16 a3@<W4>, int a4@<W6>, int a5@<W8>)
{
  LODWORD(STACK[0x3D8]) = 0;
  v14 = (LODWORD(STACK[0x320]) ^ 0xDB28BE2 ^ (LODWORD(STACK[0x588]) + 1085665002) ^ v7 ^ 0xB4F9F28C) - a1;
  LODWORD(STACK[0x588]) = v14;
  v15 = STACK[0x56C];
  v16 = STACK[0x598];
  v16[1076] = HIBYTE(LODWORD(STACK[0x56C]));
  v17 = STACK[0x2C0];
  *v17 = HIBYTE(a2);
  v18 = a1 + 1636427009 + (a1 & 0x9E761AFF) + (a5 & 0x9E761AFF ^ 0x821200BF) + LODWORD(STACK[0x57C]);
  v19 = (((a4 ^ (2 * v18)) + v18) & 0x3B) + (v18 & 0x3B);
  v20 = v14 ^ v7 ^ 0xB4F9F28C;
  LODWORD(STACK[0x580]) = v20 - 1621961877;
  v21 = STACK[0x55C];
  v16[1080] = HIBYTE(LODWORD(STACK[0x55C]));
  v22 = STACK[0x540];
  v17[(((v20 + 107) & 0x60) + ((v20 + 107) & 0x60 ^ 0x60) - 41) ^ v19] = HIBYTE(LODWORD(STACK[0x540]));
  v23 = STACK[0x51C];
  v16[1088] = HIBYTE(LODWORD(STACK[0x51C]));
  v16[1077] = BYTE2(v15);
  v16[1085] = BYTE2(v22);
  v16[1073] = BYTE2(a2);
  v16[1081] = BYTE2(v21);
  v17[~(v11 >> 4) & 0x11 ^ (v11 >> 4) & 1] = BYTE2(v23);
  v24 = STACK[0x528];
  *STACK[0x2C8] = HIBYTE(LODWORD(STACK[0x528])) ^ 0x34;
  v25 = STACK[0x550];
  v16[996] = HIBYTE(LODWORD(STACK[0x550])) ^ 0xE9;
  v26 = STACK[0x560];
  v16[1000] = HIBYTE(LODWORD(STACK[0x560])) ^ 0x5E;
  LODWORD(STACK[0x530]) = v12;
  v27 = STACK[0x524];
  v16[1004] = HIBYTE(LODWORD(STACK[0x524])) ^ 0x34;
  LODWORD(STACK[0x548]) = v11;
  v28 = STACK[0x518];
  v16[1008] = HIBYTE(LODWORD(STACK[0x518])) ^ 0x34;
  v29 = a2;
  v30 = STACK[0x510];
  v16[1012] = (LODWORD(STACK[0x510]) >> ((v9 & 0x18 ^ 0x18) + (v9 & 0x18))) ^ 0x34;
  v16[1016] = HIBYTE(v6) ^ 0x34;
  BYTE2(v19) = BYTE2(v5) ^ 0xAB;
  v16[1020] = ((v5 ^ 0xD6AB4AF5) >> 24) ^ 0xDD;
  v31 = v10;
  v32 = STACK[0x514];
  v16[1092] = HIBYTE(LODWORD(STACK[0x514]));
  LODWORD(STACK[0x52C]) = v5;
  v33 = STACK[0x508];
  v16[1096] = HIBYTE(LODWORD(STACK[0x508]));
  v16[1100] = HIBYTE(v31);
  v16[993] = BYTE2(v24) ^ 0x34;
  v16[1001] = BYTE2(v26) ^ 0x3D;
  v16[1005] = BYTE2(v27) ^ 0x34;
  v16[997] = BYTE2(v25) ^ 0x81;
  v16[1013] = BYTE2(v30) ^ 0x34;
  v16[1017] = BYTE2(v6) ^ 0x34;
  v16[1009] = BYTE2(v28) ^ 0x34;
  v16[1021] = BYTE2(v19) ^ 0xA8;
  v16[1097] = BYTE2(v33);
  v16[1101] = BYTE2(v31);
  v16[1093] = BYTE2(v32);
  v16[994] = BYTE1(v24) ^ 0x34;
  v16[998] = BYTE1(v25) ^ 0x49;
  v16[1002] = BYTE1(v26) ^ 0x86;
  v16[1006] = BYTE1(v27) ^ 0x34;
  v16[1014] = BYTE1(v30) ^ 0x34;
  v16[1010] = BYTE1(v28) ^ 0x34;
  v16[1018] = BYTE1(v6) ^ 0x34;
  v16[1022] = HIBYTE(a3) ^ 0x34;
  v34 = LODWORD(STACK[0x4F8]) ^ 0xB4F9F28C;
  v16[1074] = HIBYTE(v29);
  v16[1078] = BYTE1(v15);
  v35 = LODWORD(STACK[0x328]) ^ 0xDB28BE2 ^ LODWORD(STACK[0x500]);
  v16[1082] = BYTE1(v21);
  v16[1090] = BYTE1(v23);
  v36 = v8 ^ v13;
  v16[1094] = BYTE1(v32);
  v16[1086] = BYTE1(v22);
  v16[1098] = BYTE1(v33);
  v16[995] = v24 ^ 0x34;
  v16[999] = v25 ^ 0xA2;
  v16[1003] = v26 ^ 0xD9;
  v37 = STACK[0x530] & 4;
  v16[1007] = v27 ^ 0x34;
  v16[1011] = v28 ^ 0x34;
  v38 = (~(LODWORD(STACK[0x548]) >> 4) & 0x34) + v37;
  v16[1015] = v30 ^ 0x34;
  v16[1019] = v38 ^ v6;
  v16[1023] = LODWORD(STACK[0x52C]) ^ 0xD;
  v17[((v31 >> 8) & 0x1E ^ 0x1E) + ((v31 >> 8) & 0x1E)] = BYTE1(v31);
  v39 = ((v35 ^ v34) - v36) ^ v34;
  LODWORD(STACK[0x550]) = v39 + 87636267;
  LODWORD(STACK[0x560]) = (LODWORD(STACK[0x53C]) + v36) ^ v39;
  v16[1075] = v29;
  v16[1095] = v32;
  v16[1079] = v15;
  v16[1091] = v23;
  v16[1087] = v22;
  v16[1083] = v21;
  v16[1099] = v33;
  v16[1103] = v31;
  LODWORD(STACK[0x3F8]) = 1;
  JUMPOUT(0x2BA80);
}

uint64_t sub_D8C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x550];
  *(v9 + 36) = v7;
  STACK[0xD48] = v9 + 36;
  return (*(a7 + 8 * ((((((v8 - 257706791) & 0xF5C4214) + 3476) ^ (v8 - 2559)) * (v7 < 0x10)) ^ (v8 - 2312))))();
}

uint64_t sub_D8D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 + 2242)))(32, 0x103004054B5FA7DLL);
  v9 = STACK[0x430];
  STACK[0x768] = v8;
  return (*(v9 + 8 * (((((v8 == 0) ^ (v7 - 1)) & 1) * ((631 * (v7 ^ 0x5C5)) ^ 0x4A3)) ^ v7)))();
}

uint64_t sub_D8E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, uint64_t a13, int a14, char *a15, unsigned int a16, char *a17)
{
  v20 = 1658355091 * ((&a13 & 0x540EE944 | ~(&a13 | 0x540EE944)) ^ 0x15812C41);
  a13 = v17;
  a14 = v19 - v20 + 291;
  a17 = &a12;
  a15 = &a10;
  a16 = v20 + 1405241293;
  v21 = (*(v18 + 8 * (v19 ^ 0xF34)))(&a13);
  return (*(v18 + 8 * (((*(v17 + 24) == 1682696337) * (((v19 + 1483492858) & 0xA793BDBF) - 727)) ^ v19)))(v21);
}

uint64_t sub_D8FB4()
{
  STACK[0x9D8] = 0;
  v2 = STACK[0x7E8];
  v3 = STACK[0x430];
  STACK[0x920] = *(STACK[0x430] + 8 * (v1 - 2848));
  return sub_9AD6C(v3, v2);
}

uint64_t sub_D9070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = STACK[0x4A0];
  v13 = STACK[0x74C];
  v14 = STACK[0x688];
  v15 = STACK[0xF78];
  STACK[0x5B8] = *(a7 + 8 * v9);
  STACK[0xE40] = v12;
  LODWORD(STACK[0x14C0]) = v11;
  LOWORD(STACK[0x14C6]) = v8;
  LODWORD(STACK[0x14C8]) = v10;
  LODWORD(STACK[0x14CC]) = v13;
  STACK[0x14D0] = v14;
  STACK[0x14D8] = v15;
  return (*(a7 + 8 * (((v12 != 0) * ((59 * (((v9 + 940) | 0xD2) ^ 0x4D5)) ^ 0x373)) ^ ((v9 + 940) | 0xD2))))();
}

uint64_t sub_D912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v7 + 8);
  *(v10 - 224) = v8 - 1556812919 * ((((v10 - 240) ^ 0x10180019 | 0xCAE09E84) + ((v10 - 240) ^ 0xC0009A00 | 0x351F617B)) ^ 0x8A9BF67B) + 1953;
  *(v10 - 232) = v11;
  v12 = (*(a7 + 8 * (v8 ^ 0xC8F)))(v10 - 240);
  return (*(STACK[0x430] + 8 * (((LODWORD(STACK[0xE54]) == v9) * (3 * (v8 ^ 0x247) + 1427 * (v8 ^ 0x216) - 623)) ^ v8)))(v12);
}

uint64_t sub_D9320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v8 + 8) + 24 * LODWORD(STACK[0xDCC]);
  *(v14 - 208) = v8;
  *(v14 - 216) = v11 - 539293837 * (((v13 | 0x654D3860) - (v13 | 0x9AB2C79F) - 1699559521) ^ 0xD84CF297) + 442;
  *(v14 - 212) = 539293837 * (((v13 | 0x654D3860) - (v13 | 0x9AB2C79F) - 1699559521) ^ 0xD84CF297) + 458198972;
  *(v14 - 240) = 539293837 * (((v13 | 0xB5C14A7E654D3860) - (v13 | 0x4A3EB5819AB2C79FLL) + 0x4A3EB5819AB2C79FLL) ^ 0xB34DF03DD84CF297) + (v10 ^ 0xDE6DF9DDDDFF8FCFLL) + 0x2DD347EAF76FF97CLL + ((((v11 - 783) | 0x204u) - 0x43240C444400EB88) & v12);
  *(v14 - 232) = v7;
  *(v14 - 224) = v15;
  v16 = (*(a7 + 8 * (v11 ^ 0x276)))(v14 - 240);
  return v9(v16);
}

uint64_t sub_D9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = 13 * (a7 ^ 0x3C8);
  v13 = ((v12 + 661) ^ ((v12 - 2370) | 0x342u) ^ 0x3FFFFFFFDA3DE2BBLL) + a2;
  v14 = *(*(v7 + 8) + 4 * v13);
  v15 = *(*(v8 + 8) + 4 * v13);
  LODWORD(v13) = (((v14 ^ 0xEF83770C) + 276596980) ^ ((v14 ^ 0xAD192FE2) + 1390858270) ^ ((v14 ^ 0xD9FA80DD) + 637894435)) + v10;
  v16 = (((v15 ^ 0x784F0E51) - 2018446929) ^ ((v15 ^ 0x696C75FE) - 1768715774) ^ ((v15 ^ 0x8A43A39C) + 1975278692)) + v10;
  v17 = v13 < v11;
  v18 = v13 > v16;
  v19 = v17 ^ (v16 < v11);
  v20 = v18;
  if (v19)
  {
    v21 = v17;
  }

  else
  {
    v21 = v20;
  }

  return (*(v9 + 8 * ((229 * (v21 ^ 1)) ^ v12)))();
}

uint64_t sub_D962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v9 ^ 0x634)))(v8);
  *v7 = 0;
  return (STACK[0xA10])(1594, 350336687, 3944631231, 2161, 0x4E179E9CD88A77F9);
}

void sub_D969C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0xE50]) = 1682696337;
  JUMPOUT(0xB78B0);
}

void sub_D96BC(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1280404519 * ((-2 - ((a1 | 0x59B939F0) + (~a1 | 0xA646C60F))) ^ 0x32366962)) ^ 8;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 633476743;
  v3 = v2 - 633476743 < 0;
  v5 = 633476743 - v2;
  if (v3)
  {
    v4 = v5;
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_D9814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = LODWORD(STACK[0xF5C]);
  STACK[0xC80] = v9;
  *(STACK[0x550] + 4 * v9 + 432) = v7;
  v10 = v7 << 16;
  LOBYTE(STACK[0xBFB]) = v10 == 614 * (v8 ^ 0xB23) + 193538;
  return (*(a7 + 8 * ((57 * (v10 < (v8 ^ 0xBB7u) + 130928)) ^ (v8 - 995))))();
}

uint64_t sub_D9964@<X0>(unsigned int a1@<W8>)
{
  v5 = v1 < a1;
  v6 = v2 + 1;
  if (v5 == v6 > v4)
  {
    v5 = v6 + a1 < v1;
  }

  return (*(STACK[0x430] + 8 * (v3 | (8 * v5))))();
}

uint64_t sub_D9C7C(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x540]) - 566785687;
  LODWORD(STACK[0x3CC]) += LODWORD(STACK[0x580]);
  LODWORD(STACK[0x3EC]) = v9 - 306529247;
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x3F0]) - 2094067153 + v10;
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x53C]) - 1438968865;
  LODWORD(STACK[0x3E4]) = v8 + 810151681;
  v11 = LODWORD(STACK[0x514]) + 662;
  LODWORD(STACK[0x2E8]) += 64;
  return sub_258A4(v11, a2, a4, a5, a8, STACK[0x3D4]);
}

uint64_t sub_D9DD4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *v33 = v27;
  v34 = a1 + 2466;
  v35 = ((v31 ^ (v31 >> 11)) << 7) & 0x9D2C5680 ^ v31 ^ (v31 >> 11);
  v36 = ((((v29 + (v28 ^ v35)) << 15) & 0xEFC60000 ^ v35) >> (v34 ^ 0xF8)) ^ ((v29 + (v28 ^ v35)) << 15) & 0xEFC60000 ^ v35;
  *(&a27 + (v32 - 1)) = (v36 - ((2 * v36) & 0x5A) + ((8 * ((v34 + 118) ^ 9)) ^ 0xA2) + 67) ^ 0x57;
  return (*(v30 + 8 * ((459 * (v32 == ((v36 - ((2 * v36) & 0x5A) + ((8 * ((v34 + 118) ^ 9)) ^ 0xA2) + 67) != 87))) ^ v34)))();
}

uint64_t sub_D9E90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v20 = a6 + v10;
  v21 = a6 + v10 + 9;
  v22 = __ROR8__(v21 & ((v11 ^ 0xB67u) - 73), 8);
  v23 = (v13 | (2 * (v22 + 0x4E179E9CD88A77F9))) - (v22 + 0x4E179E9CD88A77F9) + v14;
  v24 = __ROR8__(v23 ^ v19, 8);
  v25 = v23 ^ a5;
  v26 = (v8 - ((v24 + v25) | v8) + ((v24 + v25) | v15)) ^ v16;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (a3 - ((v28 + v27) | a3) + ((v28 + v27) | v17)) ^ v18;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a2;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v12;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = ((v7 & (2 * (v35 + v34))) - (v35 + v34) + a4) ^ 0xA04B38BC8AD9D4E5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) | 0x3D19862C756CC2CLL) - (v38 + v37) - 0x1E8CC3163AB6616) ^ 0x730030B77D2CF2D6;
  v40 = a6 - 1;
  v41 = v39 ^ __ROR8__(v37, 61);
  v42 = __ROR8__(v39, 8);
  *(v20 + 9) = *(v6 + v40) ^ (((v9 - ((v42 + v41) | v9) + ((v42 + v41) | 0xDAE26C19A11F1E19)) ^ 0xB6A61D5A80DB7123) >> (8 * (v21 & 7u))) ^ 0xF7;
  return (*(a1 + 8 * ((86 * (v40 == 0)) ^ (v11 - 1684))))();
}

uint64_t sub_DA024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x408] - 2187;
  v8 = (STACK[0x408] - 893799207) & 0x35464329;
  STACK[0xC18] = STACK[0xC48];
  v9 = STACK[0x960];
  v10 = STACK[0x518];
  STACK[0x1100] += v8 ^ 0x109;
  STACK[0x1170] = v9;
  STACK[0x1178] = v10;
  return (*(a7 + 8 * ((49 * (v10 == *(&off_103F00 + (v7 ^ 0x24C)) - 4)) ^ v7)))();
}

uint64_t sub_DA0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x13B0] = v8;
  v9 = STACK[0x7F0];
  STACK[0x13B8] = STACK[0x7F0];
  return (*(a7 + 8 * (((v8 - v9 > 9) * (((v7 + 850565599) & 0xCD4D6F7E) - 1987)) ^ v7)))();
}

uint64_t sub_DA1DC()
{
  v0 = LODWORD(STACK[0x220]) - 792;
  STACK[0x1100] = STACK[0x1100] + (LODWORD(STACK[0x220]) ^ 0x30Fu) - 1557 - 1076;
  return (*(STACK[0x430] + 8 * ((98 * (LODWORD(STACK[0xD5C]) > 4)) ^ v0)))();
}

uint64_t sub_DA24C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = (a6 + 4 * a7);
  *v11 = a1;
  v11[1] = a1;
  return (*(v10 + 8 * (((v8 == a7) * v7) ^ v9)))();
}

void sub_DA274()
{
  LODWORD(STACK[0x56C]) = v0;
  LODWORD(STACK[0x580]) = v1;
  JUMPOUT(0x78AF0);
}

uint64_t sub_DA338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (v9 ^ 0xEF7B734F) + ((v8 ^ 0xDEF6E040) & (2 * v9)) + 12 * (v8 ^ 0x6F0) + 277121661;
  v11 = ((2 * (v10 % *(v7 + 36))) & 0x7FD9FABE) + ((v10 % *(v7 + 36)) ^ 0xBFECFD5F);
  v12 = *(v7 + 28);
  v13 = v11 - 1139280795 < v12 + 2080698820;
  if (v12 > 0x83FB0E3B != v11 - 1139280795 < 0x7C04F1C4)
  {
    v13 = v12 > 0x83FB0E3B;
  }

  return (*(a7 + 8 * ((44 * !v13) ^ v8)))();
}

uint64_t sub_DA42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v8 + 1514175838;
  v11 = (v10 ^ 0xA5BFBA19) & (2 * ((((v9 + 1951732296) & 0x8BAAEB99) - 1514178150) & v10)) ^ (((v9 + 1951732296) & 0x8BAAEB99) - 1514178150) & v10;
  v12 = (((v10 ^ 0xA683BF19) << ((v9 - 119) ^ 0xAE)) ^ 0x6787B76) & (v10 ^ 0xA683BF19) ^ ((v10 ^ 0xA683BF19) << ((v9 - 119) ^ 0xAE)) & 0x33C3DBA;
  v13 = v12 ^ 0x1040489;
  v14 = (v12 ^ 0x2381911) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xCF0F6EC) & v13 ^ (4 * v13) & 0x33C3DB8;
  v16 = (v15 ^ 0x3034B0) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x30C0913)) ^ 0x33C3DBB0) & (v15 ^ 0x30C0913) ^ (16 * (v15 ^ 0x30C0913)) & 0x33C3DB0;
  v18 = v16 ^ 0x33C3DBB ^ (v17 ^ 0x3001900) & (v16 << 8);
  v19 = (-((v7 & 1) == 0) ^ ((v10 ^ (2 * ((v18 << 16) & 0x33C0000 ^ v18 ^ ((v18 << 16) ^ 0x3DBB0000) & (((v17 ^ 0x3C240B) << 8) & 0x33C0000 ^ (((v17 ^ 0x3C240B) << 8) ^ 0x3C3D0000) & (v17 ^ 0x3C240B) ^ 0x3000000u)))) >> 1) ^ 0x50DBFCEA) + ((v7 & 1) == 0);
  v20 = STACK[0x550];
  *(v20 + 424) = v19;
  STACK[0x1088] = v20 + 428;
  *(v20 + 428) = 0x1000000;
  STACK[0xEC0] = v20 + 429;
  STACK[0xC50] = v20 + 430;
  STACK[0xCC8] = v20 + 431;
  return (*(a7 + 8 * ((31 * (*(STACK[0x9E0] + 1044 * STACK[0x528] + 56) == 0)) ^ (v9 - 164))))();
}

uint64_t sub_DA888(_DWORD *a1)
{
  v1 = 1658355091 * ((764948496 - (a1 ^ 0xC5657073 | 0x2D983010) + (a1 ^ 0xC5657073 | 0xD267CFEF)) ^ 0xA9728566);
  v2 = a1[3] ^ v1;
  v3 = a1[2] ^ v1;
  v4 = v3 + *(*a1 + 68) - 1765737471;
  *(*a1 + 68) = v4;
  v3 -= 206768211;
  v5 = v3 < 0x5CEBFBAC;
  v6 = v4 + 1558969260 < v3;
  if (v5 != v4 > 0xA3140453)
  {
    v6 = v5;
  }

  return (*(*(&off_103F00 + v2 - 2138) + 8 * ((1365 * v6) ^ v2) - 4))();
}

uint64_t sub_DA96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 ^ 0x37D)))(LODWORD(STACK[0x4E8]) ^ 0xB01701EC ^ (v7 - 409) ^ 0xC6B, 0x100004077774924);
  v10 = STACK[0x430];
  STACK[0x1318] = v9;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = -1682656443;
  }

  LODWORD(STACK[0x1324]) = v11;
  return (*(v10 + 8 * ((13 * (v9 == 0)) ^ v7)))();
}

uint64_t sub_DAA10@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v7 = (v5 + 4 * v2);
  v8 = v2 + 1;
  v9 = *(v5 + 4 * v8);
  v10 = v7[397] ^ ((v9 & 0x7FFFFFFE | v3 & 0x80000000) >> 1);
  *v7 = (v10 + v4 - ((v10 << (((a2 + 125) | 0x80) + 57)) & v6)) ^ *(&STACK[0x4C8] + (v9 & 1));
  return (*(a1 + 8 * (((2 * (v8 != 227)) | (16 * (v8 != 227))) ^ a2)))();
}

uint64_t sub_DAA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0xC38] + 24);
  STACK[0xC30] = v8;
  return (*(a7 + 8 * ((247 * ((((v7 - 318) ^ (v8 == 0)) & 1) == 0)) ^ v7)))();
}

uint64_t sub_DAAC8()
{
  v4 = (*(v0 + 8 * (v3 ^ 0x5A4)))(v2);
  v5 = STACK[0x430];
  LODWORD(STACK[0x1294]) = v1;
  return sub_9D2EC(v4, v1, v6, 2612310856, v5);
}

void sub_DAB48(uint64_t a1)
{
  v1 = *(a1 + 16) - 772352333 * ((a1 - 2012053888 - 2 * (a1 & 0x88127E80)) ^ 0x6C50763B);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_DAC78@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, unint64_t a14, int a15, uint64_t a16, int a17)
{
  *a12 = a1;
  LODWORD(STACK[0x27C]) = a17;
  STACK[0x280] = a14;
  LODWORD(STACK[0x288]) = a15 - v17 + 625963657;
  STACK[0x290] = v21 + (v17 - 1299398907);
  v24 = (*(v20 + v22 * v18 + 8))(a7);
  return (*(v19 + 8 * ((3440 * (v24 + 1682696337 - ((v24 << (((v23 + 59) | 1) - 8)) & 0xC897D122) == 1682696337)) ^ (v23 - 536))))(v24, v25, 1076192132, 1209905666, v26, HIDWORD(a3), 3218775163, 1682696337, a2, a3);
}

uint64_t sub_DAE10(uint64_t result)
{
  v1 = 1280404519 * ((((2 * result) | 0x29EE13C03D8D31E2) - result - 0x14F709E01EC698F1) ^ 0x38288E3C8AB6379CLL);
  v2 = *(result + 12) ^ v1;
  v3 = *(result + 16) + v1;
  v4 = *result ^ v1;
  v5 = *(result + 24) - v1;
  v6 = *(result + 40) + v1;
  v7 = *(result + 36) + v1;
  v8 = v4 >= v5;
  v9 = v4 < v5;
  v10 = !v8;
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v6;
  }

  else
  {
    v12 = v2;
  }

  *(result + 32) = v12 ^ v3;
  return result;
}

char *sub_DAEBC(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

void sub_DB118()
{
  v0 = STACK[0x330];
  *(v0 + 1560) = *STACK[0x588];
  *(v0 + 1552) = *STACK[0xB58];
  v1 = STACK[0x310];
  v2 = STACK[0xBB8];
  *(*STACK[0xBB8] + 488) = *(STACK[0x310] + 8);
  *(*v2 + 480) = *v1;
  JUMPOUT(0xDB1B0);
}

uint64_t sub_DB1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 8 * (v6 ^ 0x874)))(1576, v5);
  v8 = STACK[0x430];
  STACK[0xCF8] = v7;
  return (*(v8 + 8 * (((v7 == 0) * ((v6 - 805347137) & 0x300099CD ^ (2 * v6) ^ 0x6DE ^ 0xB5B)) ^ v6)))();
}

_BYTE *sub_DB30C(_BYTE *result, unsigned int a2, unint64_t a3)
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