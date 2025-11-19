uint64_t sub_3C554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = 896639297 * (((~(v60 - 192) & 0x1913EF24) - (~(v60 - 192) | 0x1913EF25)) ^ 0xDB8795D);
  *(v60 - 192) = v61 + v58 - 1500;
  *(v60 - 132) = 1496004241 - v61;
  *(v60 - 160) = 0;
  *(v60 - 152) = &STACK[0x2CC];
  *(v60 - 144) = a58;
  *(v60 - 176) = a18;
  *(v60 - 168) = a17;
  *(v60 - 184) = 0;
  v62 = (*(v59 + 8 * (v58 ^ 0xE8B)))(v60 - 192);
  v63 = *(v60 - 136);
  LODWORD(STACK[0x4BC]) = v63;
  return (*(v59 + 8 * (((v63 == (v58 ^ 0x9E32AF47)) * (v58 + 2072)) ^ v58)))(v62);
}

uint64_t sub_3C660@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v8 = *(v6 - 220 + a2 + 72);
  v9 = ((2 * a2) & 0x7F7FFDF8) + (a2 ^ 0xBFBFFEFF) + v4;
  *(a1 + v9) = v8 ^ 0x73;
  v10 = (v8 >> (v7 + ((v2 + 5) & 0x77) + 26)) ^ 0x6B;
  *(a1 + v9 + 1) = v10 - ((2 * v10) & 0x72) + 57;
  *(a1 + v9 + 2) = (BYTE2(v8) ^ 0xF3) - ((2 * (BYTE2(v8) ^ 0xF3)) & 0x72) + 57;
  *(a1 + v9 + 3) = (HIBYTE(v8) ^ 3) - 2 * ((HIBYTE(v8) ^ 3) & 0x3D ^ HIBYTE(v8) & 4) + 57;
  return (*(v5 + 8 * (((a2 + 4 < *(v6 - 128)) * v3) ^ v2)))();
}

void Mt76Vq80ux(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_3C878@<X0>(int a1@<W8>)
{
  if (a1 == ((((v2 | 0x54) + 283) | 0x1A8) ^ (v3 + 904)))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  return sub_3C8A0();
}

uint64_t sub_3C8EC@<X0>(const char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q1>, int32x4_t a10@<Q2>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v91 = *(v37 + 8 * a7);
  v43 = *(v41 - 156);
  v42 = *(v41 - 152);
  v45 = *(v41 - 148);
  v44 = *(v41 - 144);
  v46 = *(v41 - 132);
  if (v46 == 2)
  {
    v92 = vld4q_s8(a1);
    v77 = veorq_s8(v92.val[1], a9);
    _Q21 = vmovl_high_u8(v77);
    _Q20 = vmovl_u8(*v77.i8);
    v80 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v81 = vmovl_u8(*&veorq_s8(v92.val[2], a9)).u64[0];
    v92.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v92.val[3], a9)));
    v82 = vorrq_s8(vorrq_s8(vorrq_s8(v80, vshll_n_u16(v81, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v92.val[0], a9))), 0x18uLL)), v92.val[2]);
    v92.val[2] = veorq_s8(vandq_s8(v82, a8), (*&v92.val[2] & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    *v34 = vaddq_s32(vsubq_s32(v82, vaddq_s32(v92.val[2], v92.val[2])), a10).u32[0];
    v83 = v35 ^ 0x32Fu;
    v84 = &v34[v39 + 263008804];
    *v84 = v36 ^ __ROR4__(*(v84 - 8) ^ *(v84 - 3) ^ *(v84 - 14) ^ *(v84 - 16), 31);
    v85 = *(v37 + 8 * (((v83 + 263007987 == v40 + 64) * v35) ^ 0x32Fu));
    return v85(a1, v83, a2, v44, v85, a19, a5, a6, a11, a12, a13, a14, a15, a16, v91, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
  }

  else if (v46 == 1)
  {
    v93 = vld4q_s8(a1);
    v47 = a5 ^ (a5 - 365);
    v48 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v93.val[0], a9)));
    v49 = veorq_s8(v93.val[2], a9);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v93.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v93.val[3], a9))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v93.val[1], a9)), 8uLL), v48));
    v58 = veorq_s8(vandq_s8(v93.val[2], vdupq_n_s32(0x1E32A85Eu)), (*&v48 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    *v34 = vaddq_s32(vsubq_s32(v93.val[2], vaddq_s32(v58, v58)), a10).u32[0];
    v59 = (v47 + 383778914) & 0xE91FFEFE;
    v60 = v45;
    v61 = *(&off_C1600 + v47 - 1592) - 12;
    v62 = (v59 ^ v45 & 0x76F882CA ^ (v42 ^ 0x750BE980) & (v45 ^ v38) ^ 0x2F0041E | v42 & 0xDB5F05F0 ^ 0xD80C04B0 ^ (v42 ^ 0xFC0C94B5) & (v44 ^ 0xD8AC6EBA)) + (v43 ^ v38) + *(*(&off_C1600 + (v47 & 0x9F9B990B)) + a19 + v39 - 1) + (v34[(v61[a19 + v39] - 76)] ^ v36);
    v63 = (v62 ^ 0xA6970605) & (2 * (v62 & 0xB6D756A6)) ^ v62 & 0xB6D756A6;
    v64 = ((2 * (v62 ^ 0xA6112F41)) ^ 0x218CF3CE) & (v62 ^ 0xA6112F41) ^ (2 * (v62 ^ 0xA6112F41)) & 0x10C679E6;
    v65 = v64 ^ 0x10420821;
    v66 = (v64 ^ 0x847180) & (4 * v63) ^ v63;
    v67 = ((4 * v65) ^ 0x4319E79C) & v65 ^ (4 * v65) & 0x10C679E4;
    v68 = (v67 ^ 0x6180) & (16 * v66) ^ v66;
    v69 = ((16 * (v67 ^ 0x10C61863)) ^ 0xC679E70) & (v67 ^ 0x10C61863) ^ (16 * (v67 ^ 0x10C61863)) & 0x10C679E0;
    v70 = v68 ^ 0x10C679E7 ^ (v69 ^ 0x461800) & (v68 << 8);
    v71 = *(*(&off_C1600 + (v47 & 0x24ACE1BE)) + a19 + v39 - 12);
    v72 = (v70 << 16) & 0x10C60000 ^ v70 ^ ((v70 << 16) ^ 0x79E70000) & (((v69 ^ 0x10806187) << 8) & 0x10C60000 ^ 0x10860000 ^ (((v69 ^ 0x10806187) << 8) ^ 0x46790000) & (v69 ^ 0x10806187));
    LOBYTE(v69) = (v71 + 84) ^ (((v71 + 84) ^ 0x96) - 27) ^ (((v71 + 84) ^ 0x8F) - 2) ^ (((v71 + 84) ^ 0x6F) + 30) ^ (((v71 + 84) ^ 0xFB) - 118) ^ 0xC7;
    v73 = (((v42 ^ 0x806D88F9) + 2140305159) ^ ((v42 ^ 0x96E1534D) + 1763617971) ^ ((v42 ^ 0x157FB0FE) - 360689918)) + 811654667 + (((v62 ^ (2 * v72) ^ 0xB6D7A568) << (v69 & 0xB ^ 0xA) << (v69 & 0x14)) | ((v62 ^ (2 * v72) ^ 0xB6D7A568) >> (a2 - v71)));
    v74 = ((2 * (v73 ^ 0xCF529E5C)) ^ 0x398026C6) & (v73 ^ 0xCF529E5C) ^ (2 * (v73 ^ 0xCF529E5C)) & 0x1CC01362;
    v75 = ((4 * v74) ^ 0x920BA1CC) & (v74 ^ 0x18800241) ^ v74 & 0xF00BA8C4;
    return (*(v37 + 8 * ((508 * (a19 + 1 != v40)) ^ v47)))((((16 * v75) ^ 0xF00BACC4) & (v75 ^ 0x10000043) ^ v75 & 0xF00BA8C4) & 0xF00BA8C4, v60, a2, v44, v59, v47, 2045181952, v61, a11, a12, a13, a14, a15, a16, v91, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
  }

  else
  {
    v86 = *(v41 - 144);
    v87 = (((v43 ^ 0xC48655B5) + 997829195) ^ ((v43 ^ 0x4831A973) - 1211214195) ^ ((v43 ^ 0x8F44978C) + 1891330164)) + (((*(v41 - 156) ^ 0xF53FCBAE) + 180368466) ^ ((*(v41 - 156) ^ 0xBB770DEC) + 1149825556) ^ ((*(v41 - 156) ^ 0x4DBBAD08) - 1304145160)) + 1648521975;
    v88 = (((*(v41 - 152) ^ 0x4146C01E) - 1095155742) ^ ((*(v41 - 152) ^ 0xCFC7D36C) + 808987796) ^ ((*(v41 - 152) ^ 0x8D727838) + 1921877960)) + (((*(v41 - 152) ^ 0xDB24B016) + 618352618) ^ ((*(v41 - 152) ^ 0xF1DAAC18) + 237327336) ^ ((*(v41 - 152) ^ 0x290D7744) - 688748356)) + 1561830756;
    *(v41 - 156) = v87 ^ ((v87 ^ 0x887BD58) - 1390158139) ^ ((v87 ^ 0xA5967725) + 3282106) ^ ((v87 ^ 0x83DA3E9) - 1382432650) ^ ((v87 ^ 0xFF77F5F7) + 1523816044) ^ 0x59A8F729;
    *(v41 - 152) = v88 ^ ((v88 ^ 0x37F62E8C) - 1657200732) ^ ((v88 ^ 0xA77DC5D0) + 229831936) ^ ((v88 ^ 0x7A44D853) - 796137091) ^ ((v88 ^ 0xBFFFFDDF) + 355519729) ^ 0x56C3A59A;
    v89 = (((v45 ^ 0xF87473B8) + 126585928) ^ ((v45 ^ 0xF9C7A5D1) + 104356399) ^ ((v45 ^ 0x240BD23) - 37797155)) + (((*(v41 - 148) ^ 0xE5431444) + 448588732) ^ ((*(v41 - 148) ^ 0x42D5225E) - 1121264222) ^ ((*(v41 - 148) ^ 0xA4655D50) + 1536860848)) + 326692470;
    v90 = (((v44 ^ 0x143F8642) - 339707458) ^ ((v44 ^ 0x2CFF5CC2) - 754932930) ^ ((v44 ^ 0x3B33B1CA) - 993243594)) + (((*(v41 - 144) ^ 0x2F09D257) - 789172823) ^ ((*(v41 - 144) ^ 0x67222213) - 1730290195) ^ ((*(v41 - 144) ^ 0x4BD89B0E) - 1272486670)) + 176950104;
    *(v41 - 148) = v89 ^ ((v89 ^ 0xCBD0B82) - 120527968) ^ ((v89 ^ 0x41D10838) - 1245913050) ^ ((v89 ^ 0xBB41EBA5) + 1328284601) ^ ((v89 ^ 0xFDBFFFFD) + 164763617) ^ 0x8617CA8;
    *(v41 - 144) = v90 ^ ((v90 ^ 0x9D9AD72) - 192715190) ^ ((v90 ^ 0x5AC52836) - 1482693874) ^ ((v90 ^ 0xBE46467F) + 1125944645) ^ ((v90 ^ 0xEFFFF7FF) + 312818885) ^ 0x1565F8E;
    return v91(a1, v86, a2, v44, a3, a4, a5);
  }
}

void sub_3D0FC(uint64_t a1, int a2)
{
  v4 = (((a2 ^ 0x5BE3A6C8) - 1541646024) ^ ((a2 ^ 0x2A663E8) - 44458984) ^ ((a2 ^ 0x5AB6AE6A) - 1521921642)) + 771717676 + (((*(v3 - 140) ^ 0x37867753) - 931559251) ^ ((*(v3 - 140) ^ 0x386A24DB) - 946480347) ^ (((v2 + 203372566) ^ *(v3 - 140)) - 203372738));
  *(v3 - 140) = v4 ^ ((v4 ^ 0x444FB74D) - 1649874133) ^ ((v4 ^ 0x5089B944) - 1989221084) ^ ((v4 ^ 0xD920526F) + 13045257) ^ ((v4 ^ 0xEBFEFFFE) + 840541082) ^ 0x25EBC8D2;
  JUMPOUT(0x3D248);
}

uint64_t sub_3D730()
{
  v6 = *(v2 + 4 * (v1 - 1));
  *(v2 + 4 * v1) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v2 + 4 * v1)) - v1;
  *(v5 - 116) = 1 - v3;
  v7 = v5 - 160;
  *(v7 + 16) = v1 + 1 - v3;
  *(v7 + 24) = v3 + 623;
  *(v5 - 124) = v3 + v0 + 55969080;
  *(v5 - 120) = v3 ^ (v0 + 1206154818) ^ 0x19;
  *(v5 - 152) = v0 + 1206154818 + v3;
  *(v5 - 148) = (v0 + 1206154856) ^ v3;
  v8 = (*(v4 + 8 * (v0 ^ 0xA02)))(v5 - 152);
  return (*(v4 + 8 * *(v5 - 128)))(v8);
}

uint64_t sub_3D888@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = v3 + (*(*(v11 + 8) + 4 * v4) ^ v7) - (*(*(v10 + 8) + 4 * v4) ^ v7) + v6;
  *(*(a2 + 8) + 4 * v4) = v12 + v7 - (((v5 + 907) ^ (v9 + 901)) & (2 * v12));
  return (*(v8 + 8 * (((v4 + 1 != v2) * a1) ^ v5)))();
}

uint64_t sub_3D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v43 = 1388665877 * ((~((v42 - 168) | 0x7D600581) + ((v42 - 168) & 0x7D600581)) ^ 0xF329892);
  *(v42 - 160) = a6;
  *(v42 - 168) = v43 + v41 + 317;
  *(v42 - 164) = v43 ^ a10;
  v44 = (*(v40 + 8 * (v41 + 2340)))(v42 - 168);
  v45 = a40 & ((v41 + 1756) ^ 0x6D6);
  *(&a31 + v45) = -71;
  return (*(v40 + 8 * (((v45 > 0x37) * ((v41 + 1700496305) & 0x9AA47C6B ^ 0x755)) ^ v41)))(v44);
}

uint64_t sub_3DAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12)
{
  v17 = (*(a1 + 32) ^ v15) + *(v12 + 16) - 826406648;
  v18 = 896639297 * (((&a9 | 0x41ACF908) - (&a9 & 0x41ACF908)) ^ 0x55076F70);
  a9 = v18 ^ 0x1FA8554E;
  a10 = (v16 + 75) ^ v18;
  a11 = (v17 - 557554606) ^ v18;
  a12 = v12;
  v19 = (*(v14 + 8 * (v16 + 1850)))(&a9);
  return (*(v14 + 8 * ((1213 * (*(v12 + 24) == (((v16 + 45) | 0x152) ^ (v13 + 810)))) ^ v16)))(v19);
}

void sub_3DCE4(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52)
{
  v54 = STACK[0x368];
  v55 = 1785193651 * ((2 * ((v53 - 192) & 0x44BC5D40) - (v53 - 192) - 1153195333) ^ 0x38F328AD);
  *(v53 - 184) = STACK[0x368];
  *(v53 - 176) = (a1 - 875954483) ^ v55;
  *(v53 - 172) = -934608903 - v55;
  (*(v52 + 8 * (a1 + 2012)))(v53 - 192);
  STACK[0x3E8] = v54;
  STACK[0x3B0] = a52;
  LODWORD(STACK[0x3BC]) = 17;
  LODWORD(STACK[0x23C]) = 532368421;
  JUMPOUT(0x33FB8);
}

uint64_t sub_3DE88@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = a1 + v34 - 622;
  STACK[0x5B8] = a31 + 3;
  STACK[0x5B0] = (v35 + 1) - a31;
  *(v37 - 124) = a31 + v34 - 1584571152;
  *(v37 - 120) = (a1 + v34 + 1283277569) ^ a31;
  *(v37 - 152) = (v38 ^ 0x4C7D458D) + a31;
  *(v37 - 148) = a31 ^ v38 ^ 0x4C7D45F6;
  *(v37 - 116) = v36 - a31;
  v39 = (*(v33 + 8 * (v34 ^ (v34 - 2216))))(v37 - 152);
  return (*(a33 + 8 * *(v37 - 128)))(v39);
}

uint64_t sub_3DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  v23 = 210068311 * ((((v22 - 128) | 0xC0CC798F) - (v22 - 128) + ((v22 - 128) & 0x3F338670)) ^ 0x521A462B);
  *(v22 - 120) = &a17;
  *(v22 - 128) = v23 + (v19 ^ 0xAB7B2FEF) + ((v19 << (v17 + 110)) & 0x56F65FDE) + 1576001396;
  *(v22 - 124) = (v17 + 1871) ^ v23;
  (*(v18 + 8 * (v17 ^ 0x984)))(v22 - 128);
  *(v22 - 104) = v17 + 731 - ((~((v22 - 128) | 0x446F675) + ((v22 - 128) & 0x446F675)) ^ 0x7809839C) * v20 + 1323;
  *(v22 - 112) = &a15;
  *(v22 - 128) = a14;
  v24 = (*(v18 + 8 * (v17 + 2242)))(v22 - 128);
  return (*(v18 + 8 * (((*(v22 - 120) <= v21) * ((v17 + 1467507542) & 0xA8879F97 ^ 0x362)) ^ (v17 + 731))))(v24);
}

uint64_t sub_3E07C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 ^ 0x533) - v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v4 + v5;
  v9.i64[0] = 0x7272727272727272;
  v9.i64[1] = 0x7272727272727272;
  v10.i64[0] = 0x3939393939393939;
  v10.i64[1] = 0x3939393939393939;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v3 + 8 * (v2 ^ (2 * (v1 == 288)))))();
}

uint64_t sub_3E0EC()
{
  v3 = 1564307779 * ((2 * ((v2 - 192) & 0x4AC6A3F0) - (v2 - 192) - 1254532084) ^ 0x2234901F);
  *(v2 - 160) = v0 - 1078 - v3 + 1598;
  *(v2 - 184) = v3 ^ 0x1DFF02A2;
  *(v2 - 176) = &STACK[0x3F8];
  *(v2 - 168) = &STACK[0x2B8];
  *(v2 - 192) = 0;
  v4 = (*(v1 + 8 * (v0 + 1029)))(v2 - 192);
  return (*(v1 + 8 * ((11 * (*(v2 - 180) == ((v0 - 1341) ^ 0x9E32A857))) ^ (v0 - 1078))))(v4);
}

uint64_t sub_3E268@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = (*(*(v10 + 8) + 4 * v3) ^ v7) + v2;
  *(*(a2 + 8) + 4 * v3) = v12 + v7 - (((v5 | v6) ^ (v8 + 1574)) & (2 * v12));
  return (*(v9 + 8 * (((v3 + 1 == v11) * a1) ^ v4)))();
}

uint64_t sub_3E2BC(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v16) = a1 ^ v13;
  LODWORD(v16) = a1;
  v17 = (v16 >> 27) + ((v8 - 1162) ^ (v13 + 110) ^ a4) + (((v7 ^ v9) + v13 - ((2 * (v7 ^ v9)) & 0x7E6D694)) ^ a7) + 694006329 + (*(v15 + 4 * (a6 + v12)) ^ v11);
  return (*(v10 + 8 * ((233 * (a6 + 1 != v14 + 80)) ^ v8)))(v17 ^ ((v17 ^ 0x6F12DD34) - 837299543) ^ ((v17 ^ 0x981A16E2) + 958339455) ^ ((v17 ^ 0xF68DC44A) + 1468582871) ^ ((v17 ^ 0x5F7FFFFF) - 25497500) ^ 0x5D099B29);
}

uint64_t sub_3E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  STACK[0x4E8] = 0x9908B0DF00000000;
  v46 = **(v43 + 8 * (v42 - 291));
  v47 = v42 + 920256499 + a42;
  *(v45 - 160) = v47 + 26;
  *(v45 - 152) = v46 + a42;
  *(v45 - 168) = a42;
  *(v45 - 192) = -2030744996 - a42 + v42;
  *(v45 - 188) = a42;
  *(v45 - 180) = v47;
  *(v45 - 176) = a42 ^ (v42 + 920256499) ^ 0x53;
  v48 = (*(v44 + 8 * (v42 + 1951)))(v45 - 192);
  return (*(v44 + 8 * *(v45 - 184)))(v48);
}

uint64_t sub_3E9F0(uint64_t a1, uint64_t a2, int a3)
{
  v10 = -v7;
  v12.val[0].i64[0] = (v6 + v10 - 1) & 0xF;
  v12.val[0].i64[1] = (v6 + v10 + 14) & 0xF;
  v12.val[1].i64[0] = (v6 + v10 + 13) & 0xF;
  v12.val[1].i64[1] = (v6 + v10 + 12) & 0xF;
  v12.val[2].i64[0] = (v6 + v10 + (((a3 + 10) | 0x5C) ^ 7)) & 0xF;
  v12.val[2].i64[1] = (v6 + v10 + 10) & 0xF;
  v12.val[3].i64[0] = (v6 + v10 + 9) & 0xF;
  v12.val[3].i64[1] = (v6 + v10) & 0xF ^ 8;
  *(v6 + *(v9 - 120) - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v3 + v12.val[0].i64[0] - 7), *(v6 + *(v9 - 120) - 8 + v10)), veor_s8(*(v4 + v12.val[0].i64[0] - 7), *(v12.val[0].i64[0] + v5 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_A91E0), 0x7373737373737373)));
  return (*(v8 + 8 * ((89 * (8 - (v6 & 0x18) != v10)) ^ (a3 - 1367))))(xmmword_A91E0);
}

uint64_t sub_3EAF0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  *v62 = a62 + 1;
  v65 = *a39;
  v66 = 1504884919 * ((0x402AC7F55A141AC6 - ((v64 - 192) | 0x402AC7F55A141AC6) + a34) ^ 0x938562B05E285222);
  *(v64 - 156) = v66 + a1 + 190215035 + 46;
  *(v64 - 192) = v65 ^ v66;
  *(v64 - 184) = ((a1 + 190215035) ^ 0x3A) - v66;
  *(v64 - 180) = (a1 + 1699922259) ^ v66;
  *(v64 - 168) = (a1 + 190215035) ^ v66;
  *(v64 - 164) = -1504884919 * ((1511267014 - ((v64 - 192) | 0x5A141AC6) + a34) ^ 0x5E285222);
  *(v64 - 176) = v66 ^ 0x13FF;
  v67 = (*(v63 + 8 * (a1 + 1999)))(v64 - 192);
  return (*(v63 + 8 * *(v64 - 160)))(v67);
}

uint64_t sub_3EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v39 = *(a1 + 44) + 896639297 * ((~a1 & 0x3341B822 | a1 & 0xCCBE47DD) ^ 0x27EA2E5A);
  v40 = 1785193651 * ((v49 + 728951310 - 2 * (v49 & 0x2B72EA0E)) ^ 0xA8C26018);
  v51 = v40 ^ (v39 - 875954130);
  v52 = -934608903 - v40;
  v50 = &v48;
  (*(*(&off_C1600 + v39 + 97) + (v39 ^ 0x94D) - 1))(v49);
  return sub_48CC0(2504, 114, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_3EDCC()
{
  LODWORD(STACK[0x2F0]) = 399605077;
  LODWORD(STACK[0x2B4]) = 128;
  v4 = STACK[0x428] + 528;
  v5 = STACK[0x428] + 800;
  v6 = STACK[0x458];
  v7 = 1380333833 * ((v3 - 192) ^ 0xBE52AB8A);
  *(v3 - 168) = STACK[0x470];
  *(v3 - 160) = 0;
  *(v3 - 136) = v6;
  *(v3 - 128) = &STACK[0x2B4];
  *(v3 - 144) = 0;
  *(v3 - 176) = v4;
  *(v3 - 184) = v0 - v7 + 1080;
  *(v3 - 192) = v5;
  *(v3 - 148) = 394355864 - v7;
  v8 = (*(v2 + 8 * (v0 ^ 0xB7C)))(v3 - 192);
  return (*(v2 + 8 * (((*(v3 - 152) == v1 + v0 - 194 - 569) * (v0 + 802)) ^ v0)))(v8);
}

uint64_t sub_3F074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = v4 + 32;
  v11 = (v10 ^ v7 ^ v5) + v2;
  v12 = *(a2 + v11 - 15);
  v13 = *(a2 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v6 == v10) * v8) ^ v3)))();
}

uint64_t sub_3F07C()
{
  v2 = (*(v1 + 8 * (v0 + 989)))(1576, 0x105004009637391);
  STACK[0x2F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 1057) ^ 0xFFFFFB8D) + v0 - 29)) ^ v0)))();
}

uint64_t sub_3F0E0@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v4 + 8 * (v3 + 140)))(a1 ^ v5, 3638310758);
  *a3 = v6;
  return (*(v4 + 8 * (((v6 == 0) * ((((v3 - 1998) | 0x111) + 1352) ^ 0x71F)) ^ v3)))();
}

uint64_t sub_3F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v22 - 112) = &a15;
  *(v22 - 128) = &a17;
  *(v22 - 104) = v17 - (((v19 | (v22 - 128)) - ((v22 - 128) & v19)) ^ 0x990483A4) * v20 + 332;
  v23 = (*(v18 + 8 * (v17 + 520)))(v22 - 128);
  return (*(v18 + 8 * ((43 * (((v17 ^ 0x2B ^ (*(v22 - 120) > v21 + ((v17 + 641632690) & 0xD9C16F59) - 89)) & 1) == 0)) ^ v17)))(v23);
}

uint64_t sub_3F264@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7 = 49 * (v5 ^ 0x84B);
  v8 = (v7 - 1265) | 0xF6;
  *(*(a2 + 8) + 4 * ((v8 ^ (v2 + 252)) + a1)) = v6 ^ (v4 + 1270) ^ v7;
  *(a2 + 4) = a1 + 1;
  v9 = v2 + a1 + 1;
  if (v9 + 1 >= 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = ~v9;
  }

  return (*(v3 + 8 * ((124 * (((v10 ^ 0xF9BFBFFF) + 1064563967 + ((v10 << ((v8 + 57) ^ 0x39)) & 0xF37F7FFE) + v2) <= ((((v8 + 1373693543) & 0xAE1F1BDD) + 817) ^ 0xFFFFF98A))) ^ (v8 + 569))))();
}

uint64_t sub_3F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, int a18)
{
  a18 = v18 + 67324614;
  *(v21 - 128) = &a15;
  *(v21 - 120) = v20 - 143681137 * ((2 * ((v21 - 128) & 0x1A18CE80) - (v21 - 128) - 437833349) ^ 0x84DD8633) + 795;
  *(v21 - 112) = a14;
  (*(v19 + 8 * (v20 + 1956)))(v21 - 128);
  *(v21 - 128) = a14;
  *(v21 - 112) = &a17;
  *(v21 - 104) = v20 - 1785193651 * ((2 * ((v21 - 128) & 0x18BFEA90) - (v21 - 128) + 1732253034) ^ 0xE4F09F7C) + 1770;
  v22 = (*(v19 + 8 * (v20 + 1958)))(v21 - 128);
  return (*(v19 + 8 * ((108 * (((v20 - 48) ^ (*(v21 - 120) + ((v20 + 277) ^ 0x8C465549) < 0x8D1DF92C)) & 1)) ^ v20)))(v22);
}

void sub_3F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *v40 = (v38 + v39) ^ 0xE1C8ABA2 | (((a29 - v38) | (v38 - a29)) >> 31);
  (*(a5 + 8 * (v38 ^ 0x927)))(a38);
  JUMPOUT(0x3F6FCLL);
}

void sub_3F85C(uint64_t a1@<X8>, uint64_t a2)
{
  v12 = v6 - 96;
  v2 = (v6 + 11) | 0xC1;
  v3 = v6 - 1543;
  *(v11 - 108) = v6 - 1543 - 896639297 * ((v11 - 120) ^ 0x14AB9678);
  *(v11 - 120) = a1;
  (*(v9 + 8 * (v6 + 559)))(v11 - 120);
  v4 = *(v11 - 112);
  *(v11 - 120) = v8;
  *(v11 - 108) = v3 - 896639297 * ((((v11 - 120) | 0x28B7584D) - ((v11 - 120) & 0x28B7584D)) ^ 0x3C1CCE35);
  (*(v9 + 8 * (v12 ^ 0xF91)))(v11 - 120);
  v5 = (-1788877869 * (*(v11 - 112) + v4) + *(v11 - 112) * v4 + 2136596457) * v10;
  HIDWORD(a2) = (v5 ^ 0x79B3B7FE) - 1082131200 + ((v5 << (v2 + 52)) & 0xF3676FFC);
  *(v11 - 120) = v8;
  *(v11 - 112) = v12 - ((2 * ((v11 - 120) & 0x146EFAB8) - (v11 - 120) + 1804666179) ^ 0xAABB20B) * v7 - 471;
  *(v11 - 104) = &a2;
  (*(v9 + 8 * (v12 ^ 0xFF2)))(v11 - 120);
  sub_383C8();
}

uint64_t sub_3F9A4()
{
  v6 = *v2;
  v7 = *(v2 + 4) + v1;
  *(*v2 + v7) = (HIBYTE(v0) ^ 0xB5) - 2 * ((HIBYTE(v0) ^ 0xB5) & 0xBB ^ HIBYTE(v0) & 2) + 57;
  *(v6 + v7 + 1) = (BYTE2(v0) ^ 0x5F) - ((2 * (BYTE2(v0) ^ 0x5F)) & 0x72) + 57;
  *(v6 + v7 + 2) = (BYTE1(v0) ^ 0xD7) + (~(2 * (BYTE1(v0) ^ 0xD7)) | 0x8D) + 58;
  *(v6 + v7 + 3) = v0 ^ 0xE9;
  v8 = *v2;
  v9 = (v3 ^ 0x8CBCECA3) & (2 * (v3 & v4)) ^ v3 & v4;
  v10 = ((2 * (v3 ^ 0x90BCFEB3)) ^ 0xBC05EF76) & (v3 ^ 0x90BCFEB3) ^ (2 * (v3 ^ 0x90BCFEB3)) & 0x5E02F7BA;
  v11 = v10 ^ 0x42021089;
  v12 = (v10 ^ 0x1C0274A8) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x780BDEEC) & v11 ^ (4 * v11) & 0x5E02F7B8;
  v14 = (v13 ^ 0x5802D6B0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x6002113)) ^ 0xE02F7BB0) & (v13 ^ 0x6002113) ^ (16 * (v13 ^ 0x6002113)) & 0x5E02F7B0;
  v16 = v14 ^ 0x5E02F7BB ^ (v15 ^ 0x40027300) & (v14 << 8);
  result = (v16 << 16) ^ 0x77BB0000u;
  v18 = v3 ^ (2 * ((v16 << 16) & 0x5E020000 ^ v16 ^ result & (((v15 ^ 0x1E00840B) << 8) & 0x5E020000 ^ 0x5C000000 ^ (((v15 ^ 0x1E00840B) << 8) ^ 0x2F70000) & (v15 ^ 0x1E00840B))));
  v19 = ((2 * (v1 + *(v2 + 4) + 4)) & 0x66F95ADE) + ((v1 + *(v2 + 4) + 4) ^ 0x337CAD6F) - 863808879;
  *(*v2 + v19) = (HIBYTE(v18) ^ 0xDE) - ((2 * (HIBYTE(v18) ^ 0xDE)) & 0x72) + 57;
  *(v8 + v19 + 1) = (BYTE2(v18) ^ 0xBF) - ((2 * (BYTE2(v18) ^ 0xBF)) & 0x72) + 57;
  *(v8 + v19 + 2) = (BYTE1(v18) ^ 0xE6) + (~(2 * (BYTE1(v18) ^ 0xE6)) | 0x8D) + 58;
  *(v8 + v19 + 3) = v18 ^ 0x47;
  *(v2 + 4) = v5 + 8;
  return result;
}

uint64_t sub_3FDF4@<X0>(int a1@<W8>)
{
  v10 = v7 + v3 * v4 - 679;
  *(*v8 + (v2 + v10)) = *(*v8 + (v7 + v5));
  return (*(v9 + 8 * (((v10 == a1) * v6) ^ v1)))();
}

void sub_3FE30(uint64_t a1)
{
  v1 = *(a1 + 8) + 143681137 * ((-2 - ((a1 | 0x3D584577) + (~a1 | 0xC2A7BA88))) ^ 0xA39D0DC0);
  v2 = *(a1 + 24);
  if (*(v2 + 4) - 959689982 >= 0)
  {
    v3 = *(v2 + 4) - 959689982;
  }

  else
  {
    v3 = 959689982 - *(v2 + 4);
  }

  if (*(*(a1 + 16) + 4) - 959689982 >= 0)
  {
    v4 = *(*(a1 + 16) + 4) - 959689982;
  }

  else
  {
    v4 = 959689982 - *(*(a1 + 16) + 4);
  }

  v8 = v1 - 896639297 * ((2 * (&v7 & 0x5FC2CB0) - &v7 - 100412596) ^ 0xEEA84534) - 1649;
  v7 = v2;
  v5 = *(&off_C1600 + (v1 ^ 0x7E0)) - 8;
  (*&v5[8 * v1 + 3624])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X0, X17 }
}

uint64_t sub_40060(uint64_t a1)
{
  v5 = *(v3 + 352);
  v6 = v4 - 1587 + *(a1 + 16) + v1 - 1979919668;
  if (v5 > 0x33D5EE42 != v6 < ((496 * (v4 ^ 0x751)) ^ 0xCC2A167D))
  {
    v7 = v5 > 0x33D5EE42;
  }

  else
  {
    v7 = v5 - 869658179 > v6;
  }

  return (*(v2 + 8 * (((2 * v7) | (8 * v7)) ^ v4)))();
}

uint64_t sub_40128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = v19 + 210068311 * (&a15 ^ 0x92D63FA4) + 1405;
  a15 = &a12;
  v20 = (*(v17 + 8 * (v19 ^ 0xA24)))(&a15);
  return (*(v17 + 8 * ((1198 * (a16 == v18 + ((2 * (v19 ^ 0x293) - 271696157) & 0x1031BEF9) - 249)) ^ v19)))(v20);
}

uint64_t sub_401E0@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v7 = v4 + (v5 - a3 + 1443) - 869;
  *(a1 + v7) = *(a4 + v7) ^ 0x39;
  return (*(v6 + 8 * ((1146 * (v7 == 0)) ^ (a2 + v5 + 772))))();
}

uint64_t sub_40224@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v62 = STACK[0x2DC];
  v63 = 1037613739 * ((((v61 - 192) | 0x8CCA7EE3) - ((v61 - 192) & 0x8CCA7EE3)) ^ 0x5DC8539C);
  *(v61 - 160) = v60 - v63 - 1776823944;
  *(v61 - 140) = (v57 ^ 0xFDFFDDFA) - v63 + ((2 * v57) & 4) + 804614142;
  *(v61 - 184) = (v60 - 339 + v62 - ((2 * v62) & 0x478DDD4) + 37514662) ^ v63;
  *(v61 - 152) = a24;
  *(v61 - 192) = a1;
  *(v61 - 176) = a23;
  *(v61 - 168) = a57;
  v64 = (*(v59 + 8 * (v60 ^ 0xB1D)))(v61 - 192);
  v65 = *(v61 - 144);
  LODWORD(STACK[0x360]) = v65;
  return (*(v59 + 8 * ((1484 * (v65 == v58)) ^ v60)))(v64);
}

uint64_t sub_40334()
{
  v7 = v3 - 1;
  *(*(v6 - 120) + v7) ^= *(v0 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v5 + 8 * ((v4 - 162) ^ (32 * (v7 == 0)))))();
}

uint64_t sub_40388@<X0>(int a1@<W3>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = v3 - 1;
  *(a3 + v6) = *(a2 + v6) - ((v4 + 60) & (2 * *(a2 + v6))) + 57;
  return (*(v5 + 8 * (((v6 == 0) * a1) ^ v4)))();
}

uint64_t sub_4051C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v12 = ((2 * (&a4 & 0x6EACEAF8) - &a4 + 290657542) ^ 0xEA90A21D) * a1;
  a5 = v10;
  a4 = v9 - v12 + 168;
  a7 = 0;
  a6 = v8 - v12;
  a8 = v12 ^ 0x3141F6F8;
  v13 = (*(v11 + 8 * (v9 + 1925)))(&a4);
  return sub_25404(v13);
}

uint64_t sub_406C4@<X0>(int a1@<W8>)
{
  if ((v2 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = (a1 ^ 0xFFFFFB3A ^ (((v1 - 1308299488) & 0x4DFB14F9) - 12)) >= v2 - 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((38 * v5) ^ (v1 + 590))))();
}

uint64_t sub_40778(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = (v11 + 4 * v9);
  v14 = (v7 ^ (a3 - 558) ^ a7) + v9;
  v15 = *(v11 + 4 * v14);
  v16 = v13[397] ^ ((v15 & 0x7FFFFFFE | v8 & 0x80000000) >> 1);
  *v13 = (v16 + v10 - (a4 & (2 * v16))) ^ *(v12 + 4 * (v15 & 1));
  return (*(a1 + 8 * ((510 * (v14 == 227)) ^ v7)))();
}

uint64_t sub_408A8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = ((v1 + 49) ^ 0xE0) + *(v3 + v5) - ((2 * *(v3 + v5)) & 0x72);
  return (*(v4 + 8 * ((111 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_40944@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v41 = *(&a25 + a2 + 72);
  v42 = ((2 * a2) & 0x5EFD7FF8) + v39 + (((v37 ^ 0x2B2) - 1350647853) ^ a2);
  *(a1 + v42) = (HIBYTE(v41) ^ 3) - ((2 * (HIBYTE(v41) ^ 3)) & 0x72) + 57;
  *(a1 + v42 + 1) = (BYTE2(v41) ^ 0xF3) - ((2 * (BYTE2(v41) ^ 0xF3)) & 0x72) + 57;
  *(a1 + v42 + 2) = (BYTE1(v41) ^ 0x6B) + ~(2 * ((BYTE1(v41) ^ 0x6B) & 0x3D ^ BYTE1(v41) & 4)) + 58;
  *(a1 + v42 + 3) = v41 ^ 0x73;
  return (*(v40 + 8 * (((a2 + 4 < a37) * v38) ^ v37)))();
}

uint64_t sub_41590(int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v15 = (v11 >> ((a1 ^ a7) ^ a8)) + a2 * (*(a5 + 4 * a4) ^ v8) + (*(v13 + 4 * a3) ^ v8);
  *(v13 + 4 * a3) = v15 + v8 - (v10 & (2 * v15));
  return (*(v12 + 8 * (((a4 + 1 == v9) * v14) ^ a1)))();
}

uint64_t sub_415E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int *a27)
{
  (*(v30 + 8 * (v27 ^ 0xB14)))(*a27, v29, 2048);
  v31 = *(v30 + 8 * ((((*(v30 + 8 * (v27 + 1668)))(*a27, &STACK[0x380], v28 + LODWORD(STACK[0x43C]) + ((v27 + 513) | 0x51u) - 1145, 1) == 0) * (((v27 - 483) | 0x100) ^ 0xBD8)) ^ v27));
  return v31();
}

uint64_t sub_4168C@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _DWORD *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = (v65 + 72) | 1;
  *a38 = a2;
  *(a52 + 396) = STACK[0x460];
  *(a52 + 400) = STACK[0x350];
  *(a52 + 408) = 1409796786 - v67 + a65 + ((v65 - 280) | 0x144) - 324;
  *(a52 + 416) = a51 + (v67 - 1773297654);
  v71 = v65;
  v72 = (*(v68 + v66 * a1 + 8))(a39);
  return (*(v69 + 8 * ((1043 * (v72 - 1640847268 - ((v70 ^ 0x3C6551D9) & (2 * v72)) == -1640847268)) ^ v71)))(0);
}

uint64_t sub_417F0(uint64_t a1, uint64_t a2)
{
  v8 = *(v7 - 252 + v2 + 72);
  v9 = ((2 * v2) & 0xE2FBFEF8) + (v2 ^ 0xF17DFF7F) + v3;
  *(a2 + v9) = (HIBYTE(v8) ^ 3) - (((HIBYTE(v8) ^ 3) << ((v4 + 61) ^ 0x10)) & 0x72) + 57;
  *(a2 + v9 + 1) = (BYTE2(v8) ^ 0xF3) - ((2 * (BYTE2(v8) ^ 0xF3)) & 0x72) + 57;
  *(a2 + v9 + 2) = (BYTE1(v8) ^ 0x6B) + ~(2 * ((BYTE1(v8) ^ 0x6B) & 0x3D ^ BYTE1(v8) & 4)) + 58;
  *(a2 + v9 + 3) = v8 ^ 0x73;
  return (*(v6 + 8 * (((v2 + 4 < *(v7 - 160)) * v5) ^ v4)))();
}

void sub_41CEC(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x7C7F8DCF) - (a1 & 0x7C7F8DCF)) ^ 0xEB7241DC);
  v2 = *(a1 + 32) + v1;
  v3 = *(a1 + 8) ^ v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 486539264;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_41DFC(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = 25;
  }

  else
  {
    v2 = 24;
  }

  *(a1 + 88) = v2;
  return 0;
}

uint64_t sub_41E20@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W5>, uint64_t a4@<X8>)
{
  v8 = STACK[0x3D0];
  v9 = *(a4 + 72);
  v10 = a2 + a1;
  *(v8 + v10) = v9 ^ 0x73;
  *(v8 + v10 + 1) = (v5 ^ BYTE1(v9)) - (v4 & (2 * (v5 ^ BYTE1(v9)))) + 57;
  *(v8 + v10 + 2) = (BYTE2(v9) ^ 0xF3) - (v4 & (2 * (BYTE2(v9) ^ 0xF3))) + 57;
  *(v8 + v10 + 3) = (HIBYTE(v9) ^ 3) - 2 * ((HIBYTE(v9) ^ 3) & 0x3D ^ HIBYTE(v9) & 4) + 57;
  return (*(v6 + 8 * (((*(a4 + 92) > 4u) * a3) ^ (55 * ((v7 + 842) ^ 0x497)))))();
}

uint64_t sub_41FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, int a19, int a20, int a21, unsigned int a22)
{
  v24 = a17 - 1184501088 > a22;
  if (a22 < 0xB965F260 != (a17 - 1184501088) < 0xB965F260)
  {
    v24 = (a17 - 1184501088) < 0xB965F260;
  }

  return (*(v22 + 8 * ((!v24 * (a21 ^ a20 & 0x73377DF ^ 0x2BB)) ^ (v23 + a6 + 2209))))(1052048667, 114, -202649809, 3519, 2626088396);
}

uint64_t sub_42044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, int a14, char a15, uint64_t a16, int a17, char a18, char *a19, char *a20, unsigned int a21, unsigned int a22, char *a23)
{
  a19 = &a12;
  a20 = a13;
  a23 = &a15;
  a22 = (v23 + 68671741) ^ (1037613739 * (&a19 ^ 0xD1022D7F));
  (*(v25 + 8 * (v23 + 2216)))(&a19);
  a23 = a13;
  a21 = (v23 + 1642) ^ (143681137 * ((&a19 & 0xDF746B5C | ~(&a19 | 0xDF746B5C)) ^ 0x41B123EB));
  a20 = &a18;
  (*(v25 + 8 * (v23 ^ 0x9BE)))(&a19);
  a20 = a13;
  LODWORD(a19) = v23 + ((-1855515368 - (&a19 | 0x91671518) + (&a19 | 0x6E98EAE7)) ^ 0x4453C09D) * v24 + 1440;
  v27 = (*(v25 + 8 * (v23 ^ 0x980)))(&a19);
  return (*(v25 + 8 * ((607 * (a21 == (((v23 - 160) | 0x84) ^ (v26 + 156)))) ^ v23)))(v27);
}

uint64_t sub_42218@<X0>(unsigned int a1@<W8>)
{
  v11 = (v4 & 0xFFFFFFE0) - 32;
  v12 = (v6 + a1);
  v13 = veorq_s8(*v2, *v12);
  v14 = veorq_s8(v2[1], v12[1]);
  return (*(v5 + 8 * (((v11 == 0) * (((v3 - 144) ^ 0x28F) - 1246)) ^ (v3 - 144))))(vorrq_s8(vqtbl1q_s8(v13, v7), v1), vorrq_s8(vqtbl1q_s8(v13, v8), 0), vorrq_s8(vqtbl1q_s8(v13, v9), 0), vorrq_s8(vqtbl1q_s8(v13, v10), 0), vorrq_s8(vqtbl1q_s8(v14, v7), 0), vorrq_s8(vqtbl1q_s8(v14, v9), 0), vorrq_s8(vqtbl1q_s8(v14, v8), 0), vorrq_s8(vqtbl1q_s8(v14, v10), 0));
}

uint64_t sub_42380@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  HIDWORD(a2) = v57 + v58 + ((v58 - 792043768) & 0x2F35A8D4 ^ 0xB64D3B31);
  *a3 = a1;
  v59 = (*(v55 + 48 * v54 + 8))(a4);
  return (*(v56 + 8 * ((451 * (v59 - 1640847268 - ((2 * v59) & 0x3C6550B8) == HIDWORD(a2) - 247)) ^ v58)))(v59, v60, 2120568960, 26914687, v61, 2147483652, 4268052608, 4160058871, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

void sub_42484(uint64_t a1)
{
  v1 = *(a1 + 12) - 210068311 * ((2 * (a1 & 0x2B2EB8C8) - a1 + 1423001399) ^ 0xC6077893);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_4259C@<X0>(char a1@<W1>, int a2@<W4>, int a3@<W6>, uint64_t a4@<X8>)
{
  v8.i64[0] = 0x7272727272727272;
  v8.i64[1] = 0x7272727272727272;
  v9.i64[0] = 0x3939393939393939;
  v9.i64[1] = 0x3939393939393939;
  v10 = vaddq_s8(vsubq_s8(v6[1], vandq_s8(vaddq_s8(v6[1], v6[1]), v8)), v9);
  *(a4 + v7 - 228) = vaddq_s8(vsubq_s8(*v6, vandq_s8(vaddq_s8(*v6, *v6), v8)), v9);
  *(a4 + v7 - 228 + 16) = v10;
  return (*(v5 + 8 * ((((a1 & 0x60) != 32) * ((47 * (v4 ^ (a3 - 17))) ^ 0x419)) | (a2 + v4 + 405))))();
}

void sub_42690(uint64_t a1@<X8>, unsigned int a2, uint64_t a3, int a4)
{
  v7 = 1564307779 * ((-1209340429 - (&a2 | 0xB7EAEDF3) + (&a2 | 0x4815120C)) ^ 0xDF18DE1F);
  a4 = v6 - v7 + 49;
  a3 = a1;
  a2 = (-2024113018 - v5 - ((504107138 - (v5 << ((v6 - 29) & 0xD7 ^ 0x52))) & 0xF0A8E88A)) ^ v7;
  (*(v4 + 8 * (v6 + 1464)))(&a2);
  JUMPOUT(0x380F4);
}

uint64_t sub_427A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int32x4_t a19, int32x4_t a20)
{
  v22 = v20 & 0xFFFFFFF8;
  v23 = a3 ^ 0x37B;
  v24 = (a3 + 150);
  a19 = vdupq_n_s32(0x994F60DB);
  a20 = a19;
  v25 = *(v21 + 8 * ((1311 * (v23 - 437 == v22)) ^ v24));
  return v25(a1, a2, v24, v22, &a19, 1311, v25, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_427F8(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x17B83AA) - (a1 & 0x17B83AA)) ^ 0x96764FB9);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 20) - v1;
  v4 = *(*(a1 + 24) + 4);
  v6 = v4 - 959689982;
  v5 = v4 - 959689982 < 0;
  v7 = 959689982 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_C1600 + v2 - 963) + ((((v3 - 88659689) < (4 * v7)) * ((v2 ^ 0x6AB) - 683)) ^ v2) - 1))();
}

uint64_t sub_428D4()
{
  *(v5 - 192) = v4 - ((v5 - 192) ^ 0x64E423EA) * v2 + v0 + 339;
  result = (*(v3 + 8 * (v0 ^ 0x868)))(v5 - 192);
  *(v1 + 4) = v7;
  return result;
}

uint64_t sub_42984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v17 - 128) = v16 - 143681137 * ((((v17 - 136) | 0x6D7A5C14) - (v17 - 136) + ((v17 - 136) & 0x9285A3E8)) ^ 0xC40EB5C) - 188;
  *(v17 - 120) = a11;
  *(v17 - 136) = &a14;
  (*(v14 + 8 * (v16 ^ 0xCD5)))(v17 - 136);
  *(v17 - 120) = v15;
  *(v17 - 136) = a11;
  *(v17 - 112) = v16 - 1785193651 * ((((v17 - 136) | 0x2CD2296A) - (v17 - 136) + ((v17 - 136) & 0xD32DD690)) ^ 0xAF62A37C) + 787;
  v18 = (*(v14 + 8 * (v16 ^ 0xCD3)))(v17 - 136);
  return (*(v14 + 8 * (((*(v17 - 128) > 0x73B9A872u) * ((v16 ^ 0x42F) + 523)) ^ v16)))(v18);
}

uint64_t sub_42D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = HIDWORD(a20) + 102165289 * v23 + 361919026;
  v28 = (v27 ^ 0x9CE90309) & (2 * (v27 & (((v26 - 30) | 0x122) - 557039062))) ^ v27 & (((v26 - 30) | 0x122) - 557039062);
  v29 = ((2 * (v27 ^ 0xD618301)) ^ 0xA75B8098) & (v27 ^ 0xD618301) ^ (2 * (v27 ^ 0xD618301)) & 0xD3ADC04C;
  v30 = v29 ^ 0x50A44044;
  v31 = (v29 ^ 0x83854008) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x4EB70130) & v30 ^ (4 * v30) & 0xD3ADC04C;
  v33 = (v32 ^ 0x42A50000) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x9108C04C)) ^ 0x3ADC04C0) & (v32 ^ 0x9108C04C) ^ (16 * (v32 ^ 0x9108C04C)) & 0xD3ADC040;
  v35 = v33 ^ 0xD3ADC04C ^ (v34 ^ 0x128C0000) & (v33 << 8);
  HIDWORD(a18) = v27 ^ (2 * ((v35 << 16) & 0x53AD0000 ^ v35 ^ ((v35 << 16) ^ 0x404C0000) & (((v34 ^ 0xC121C00C) << 8) & 0x53AD0000 ^ 0x522D0000 ^ (((v34 ^ 0xC121C00C) << 8) ^ 0x2DC00000) & (v34 ^ 0xC121C00C)))) ^ 0xFFFFFFEC;
  return (*(v24 + 8 * ((41 * ((STACK[0x2F4] & 0x3F) < 0x3C)) ^ (v26 + 2285))))(a1, a2, a3, *(v25 + 8), a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, *(v24 + 8 * v22));
}

uint64_t sub_42F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a11;
  a17 = v17 + 210068311 * ((2 * (&a15 & 0x63B2EE88) - &a15 + 474812785) ^ 0x8E9B2ED5) + 1151;
  v19 = (*(v18 + 8 * (v17 + 1310)))(&a15);
  v20 = a16 == ((v17 - 33752156) & 0xB52DE6FC ^ 0x2B1E4445) + ((v17 - 408476840) & 0xDEF);
  return (*(v18 + 8 * ((v20 | (4 * v20)) ^ v17)))(v19);
}

uint64_t sub_431E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v32 = v29 | 0xD2;
  v34 = v30 == 1678841146 || a29 - a7 != (((v32 ^ 0x368) + 349) ^ 0x51295646);
  return (*(v31 + 8 * ((15 * v34) ^ v32)))();
}

void zxcm2Qme0x(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_C1600 + (byte_A02EC[(byte_9CA58[(-35 * (dword_C8708 ^ 0xD2 ^ qword_C86F8)) - 8] ^ 0x4D) - 12] ^ (-35 * (dword_C8708 ^ 0xD2 ^ qword_C86F8))) - 125);
  v5 = *(&off_C1600 + ((-35 * ((qword_C86F8 + *v4) ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * ((qword_C86F8 + *v4) ^ 0xD2))] ^ 0x67]) - 112);
  v6 = *v4 ^ &v11 ^ *(v5 - 4);
  *v4 = 1865875933 * v6 + 0x1E71746347E125D2;
  *(v5 - 4) = 1865875933 * (v6 ^ 0x1E71746347E125D2);
  v9 = 0;
  v12 = &v9;
  v13 = 1380333833 * ((2 * ((&v12 ^ 0xFE6E9F18) & 0x4E6B03D0) - (&v12 ^ 0xFE6E9F18) + 831847466) ^ 0x71A8C8B8) - 1224077185;
  LOBYTE(v6) = -35 * ((*(v5 - 4) - *v4) ^ 0xD2);
  v7 = *(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C8708) ^ 0xD2)) ^ byte_A01E0[byte_9C950[(-35 * ((qword_C86F8 + dword_C8708) ^ 0xD2))] ^ 0x3C]) + 60) - 8;
  (*&v7[8 * (byte_9C85C[(byte_A90E8[v6 - 8] ^ 0xCF) - 12] ^ v6) + 18576])(&v12);
  v10 = 0;
  v13 = 1380333833 * ((&v12 & 0x5FDC6866 | ~(&v12 | 0x5FDC6866)) ^ 0x1E713C13) - 1224077185;
  v12 = &v10;
  v8 = -35 * ((*(v5 - 4) - *v4) ^ 0xD2);
  (*&v7[8 * (byte_9C654[(byte_A8DE8[v8 - 8] ^ 0x16) - 4] ^ v8) + 18472])(&v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_435F0()
{
  v5 = *(v3 + 24);
  v6 = (v4 - 184);
  memset((v4 - 184), 57, 16);
  v7 = 1037613739 * (((((v4 - 168) ^ 0x28041024) & 0x3A8411B4) + ((v4 - 168) ^ 0x92C843D1) - (((v4 - 168) ^ 0x92C843D1) & 0x3A8411B4)) ^ 0x794E7F1A);
  v6[4] = v5;
  v6[5] = v4 - 204;
  v6[7] = &STACK[0x2A0];
  *(v4 - 136) = (v0 + 1592) ^ v7;
  *(v4 - 168) = v7 + 819985984;
  v6[3] = v6;
  v8 = (*(v1 + 8 * (v0 ^ 0x948)))(v4 - 168);
  return (*(v1 + 8 * ((2033 * (*(v4 - 132) == (v0 ^ (v2 + 1496) ^ (v0 + 2141990552) & 0x8053D77F))) ^ v0)))(v8);
}

uint64_t sub_436F0@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W8>)
{
  v11 = v4 < v5;
  *(v10 - 252 + a3) = *(v8 + v3) - ((*(v8 + v3) << ((v9 ^ 0x41) - 13)) & 0x72) + 57;
  if (v11 == v3 + 1 > a2)
  {
    v11 = a1 + v3 + 15 < v4;
  }

  return (*(v7 + 8 * ((v11 * v6) ^ v9)))();
}

uint64_t sub_43764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unsigned int a59)
{
  (*(v61 + 8 * (v59 + 2019)))();
  LODWORD(STACK[0x3A0]) = v60;
  return (*(v61 + 8 * ((((v59 + 1399) ^ 0x1C0) * v62) ^ (v59 + 185))))(a59);
}

uint64_t sub_437DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int8x16_t *a7@<X8>)
{
  *a7 = veorq_s8(*v8, xmmword_A9250);
  STACK[0x498] += 32;
  STACK[0x4A0] = a1;
  STACK[0x4A8] = a1;
  return (*(v9 + 8 * (((v7 + 1830) * (a7 == a1)) ^ v7)))(a1, a2, a3, a4, a5, a6);
}

void sub_439E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53)
{
  v56 = STACK[0x488] + 128;
  STACK[0x368] = v56;
  v57 = 1785193651 * ((~((v55 - 192) | 0xC0141763) + ((v55 - 192) & 0xC0141763)) ^ 0xBC5B628A);
  *(v55 - 184) = v56;
  *(v55 - 176) = (a53 - 875954483) ^ v57;
  *(v55 - 172) = -934608903 - v57;
  (*(v53 + 8 * (a53 ^ 0x8EC)))(v55 - 192);
  STACK[0x3E8] = v56;
  STACK[0x3B0] = v54;
  LODWORD(STACK[0x3BC]) = 17;
  LODWORD(STACK[0x23C]) = 2122798541;
  JUMPOUT(0x3409CLL);
}

uint64_t sub_43AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26)
{
  v30 = 896639297 * ((~((v29 - 192) ^ 0xAA8997F2 | 0x2BAB8AA9) + (((v29 - 192) ^ 0xAA8997F2) & 0x2BAB8AA9)) ^ 0x6A7674DC);
  v31 = ((LODWORD(STACK[0x278]) ^ 0xEF976DFF) + 2147482254 + ((2 * LODWORD(STACK[0x278])) & 0xDF2EDBFE)) ^ v30;
  *(v29 - 160) = &STACK[0x338];
  *(v29 - 168) = v26 - v30 + 1056;
  *(v29 - 164) = v31;
  *(v29 - 152) = (1628625863 * a25 + 1100876156) ^ v30;
  *(v29 - 176) = a26;
  *(v29 - 192) = &STACK[0x2DC];
  v32 = (*(v28 + 8 * (v26 ^ 0xBEE)))(v29 - 192);
  v33 = *(v29 - 184);
  LODWORD(STACK[0x360]) = v33;
  return (*(v28 + 8 * (((v33 == v27) * ((v26 - 106035928) & 0x651FDCE ^ 0x3FE)) ^ v26)))(v32);
}

uint64_t sub_43C10()
{
  v3 = *(v2 + 8 * (v0 + 2185));

  return v3(v1);
}

uint64_t sub_44058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = a16;
  *(v20 - 136) = &a17;
  *(v20 - 128) = v17 - 143681137 * (((v20 - 136) & 0xF59412C2 | ~((v20 - 136) | 0xF59412C2)) ^ 0x6B515A75) + 720;
  (*(v19 + 8 * (v17 + 1881)))(v20 - 136);
  v21 = 210068311 * ((v20 - 1496813473 - 2 * ((v20 - 136) & 0xA6C870E7)) ^ 0x341E4F43);
  *(v20 - 128) = a15;
  *(v20 - 136) = v21 + 158011236;
  *(v20 - 132) = (v17 + 1512) ^ v21;
  (*(v19 + 8 * (v17 + 1821)))(v20 - 136);
  *(v20 - 112) = v17 - ((((v20 - 136) | 0xF76572C9) - ((v20 - 136) & 0xF76572C9)) ^ 0x74D5F8DF) * v18 + 1695;
  *(v20 - 120) = a15;
  *(v20 - 136) = a16;
  v22 = (*(v19 + 8 * (v17 + 1883)))(v20 - 136);
  return (*(v19 + 8 * ((992 * (*(v20 - 128) > ((v17 + 88) ^ 0x73B9AA20u))) ^ v17)))(v22);
}

uint64_t sub_442EC@<X0>(int a1@<W7>, int a2@<W8>)
{
  v10 = *(v6 + 8 * v2);
  v11 = *v4;
  v12 = v3 + a1;
  *(*v4 + v12) = (HIBYTE(a2) ^ 0xA9) - 2 * ((HIBYTE(a2) ^ 0xA9) & 0xBB ^ HIBYTE(a2) & 2) + 57;
  *(v11 + v12 + 1) = (BYTE2(a2) ^ 0xFD) - (v8 & (2 * (BYTE2(a2) ^ 0xFD))) + 57;
  *(v11 + v12 + 2) = (v7 ^ BYTE1(a2)) + (v9 | ~(2 * (v7 ^ BYTE1(a2)))) + 58;
  *(v11 + v12 + 3) = a2 ^ v5;
  return v10();
}

void sub_44370(uint64_t a1@<X8>, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3 = v8 - 1388665877 * ((&a3 - 467940220 - 2 * (&a3 & 0xE41BCC84)) ^ 0x69B6AE68) - 631;
  a5 = a1;
  a6 = v7;
  a4 = v7;
  (*(v6 + 8 * (v8 + 1545)))(&a3);
  sub_2ECE0();
}

uint64_t sub_44488@<X0>(int a1@<W1>, int a2@<W4>, unsigned int a3@<W8>)
{
  v11 = HIDWORD(v4) + HIDWORD(v9) + (*(v10 + 4 * v3) ^ a3);
  *(v10 + 4 * a2) = v11 + a3 - ((v11 << (((v8 - 37) | 3) - 26)) & a1);
  *(v10 + 4 * v3) = HIDWORD(v11) + ((v8 - 1203) ^ (a3 + 630)) - 2 * HIDWORD(v11);
  return (*(v7 + 8 * (v8 ^ (247 * (v6 + 1 == v5)))))();
}

uint64_t sub_447C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 144) = v16 - ((-93361024 - ((v19 - 144) | 0xFA6F6C80) + ((v19 - 144) | 0x590937F)) ^ 0x152CE421) * v17 - 469;
  *(v19 - 136) = v13;
  *(v19 - 128) = &a13;
  *(v19 - 120) = &a11;
  *(v19 - 112) = v14;
  *(v19 - 104) = &a11;
  v20 = (*(v15 + 8 * (v16 ^ 0xDC0)))(v19 - 144);
  return (*(v15 + 8 * ((28 * ((((v18 - 1037285082) < 0x7FFFFFFF) ^ (3 * (v16 ^ 0x50))) & 1)) | (3 * (v16 ^ 0x550)))))(v20);
}

void sub_448C0(int a1@<W0>, int a2@<W8>)
{
  v3 = *(v2 + 4);
  if ((a1 ^ 0x46CC4865) + v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  *(v2 + 4) = v4 + v3;
  JUMPOUT(0x44920);
}

uint64_t sub_449F4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  a5 = a1;
  a6 = (v9 + 711) ^ (143681137 * (&a4 ^ 0x613AB748));
  a7 = a3;
  v10 = (*(v8 + 8 * (v9 + 1307)))(&a4);
  return (*(v8 + 8 * (((a4 == ((((v9 + 1070) ^ 0x894) + 210) ^ (v7 + 47))) * (43 * ((v9 + 1070) ^ 0x894) - 179)) ^ (v9 + 1070))))(v10);
}

uint64_t sub_44BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, unsigned int a14, char *a15, char *a16, uint64_t a17, uint64_t a18, int a19)
{
  v23 = 1785193651 * (((&a14 ^ 0xC9BD9AE3 | 0x7BAAEC2D) - (&a14 ^ 0xC9BD9AE3) + ((&a14 ^ 0xC9BD9AE3) & 0x845513D2)) ^ 0x31A7FCD8);
  a14 = 136974995 - v23;
  a19 = v22 - v23 + 692;
  a15 = &a13;
  a16 = &a10;
  a18 = v20;
  v24 = (*(v21 + 8 * (v22 ^ 0xD90)))(&a14);
  return (*(v21 + 8 * ((59 * (*(v20 + 24) == ((((v22 - 1818412318) & 0x6C62C76E) - 922) ^ (v19 + 880)))) ^ v22)))(v24);
}

uint64_t sub_44CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *v59 = 0xC6C6C6C6C6C6C6C6;
  v59[1] = 0x393939393F39392BLL;
  v62 = 50899313 * ((((v61 - 192) | 0x1A8B3676) - (v61 - 192) + ((v61 - 192) & 0xE574C988)) ^ 0x30401C0C);
  *(v61 - 188) = v62 ^ 0x693F6C47;
  *(v61 - 184) = v58 - v62 - 473375246;
  (*(v60 + 8 * (v58 + 830)))(v61 - 192);
  LODWORD(STACK[0x484]) = 411634921;
  v63 = (*(v60 + 8 * (v58 + 788)))(336, 0x100004077774924);
  STACK[0x260] = v63;
  return (*(v60 + 8 * ((27 * (((v58 - 1) ^ (v63 == 0)) & 1)) ^ v58)))(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_44E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  *v62 = v61 + 1;
  v63 = ((v60 ^ (v60 >> 11)) << 7) & 0x9D2C5680 ^ v60 ^ (v60 >> 11);
  return sub_136C8(a3, -1174920269, a36, (v63 << 15) & 0xEFC60001 ^ v63 ^ (((v63 << 15) & 0xEFC60001 ^ v63) >> 18), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_44F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, uint64_t a19)
{
  v23 = 1388665877 * (&a15 ^ 0x8DAD62EC);
  a15 = (v19 ^ 0x37FFEF95) - v23 - 870884864 + ((v19 << (((v22 - 88) | 0x10) ^ 0x1A)) & 0x6FFFDF2A);
  a16 = v22 - v23 - 1183;
  a17 = a11;
  a19 = v21;
  v24 = (*(v20 + 8 * (v22 ^ 0xC48)))(&a15);
  return (*(v20 + 8 * ((3437 * (a18 == -1640847268)) ^ v22)))(v24);
}

uint64_t sub_45040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = *(v13 - 148) + 266;
  v15 = ((a12 + 961009518) ^ 0x5DF8062) & (2 * ((a12 + 961009518) & 0x95D82A62)) ^ (a12 + 961009518) & 0x95D82A62;
  v16 = ((2 * ((a12 + 961009518) ^ 0x24EF8462)) ^ 0x626F5B6E ^ v14) & ((a12 + 961009518) ^ 0x24EF8462) ^ (2 * ((a12 + 961009518) ^ 0x24EF8462)) & 0xB137AE00;
  v17 = v16 ^ 0x9110A200;
  v18 = (v16 ^ 0x20210800) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0xC4DEB800) & v17 ^ (4 * v17) & 0xB137AE00;
  v20 = v18 ^ 0xB137AE00 ^ (v19 ^ 0x8016A800) & (16 * v18);
  v21 = (16 * (v19 ^ 0x31210600)) & 0xB137AE00 ^ 0xA0050E00 ^ ((16 * (v19 ^ 0x31210600)) ^ 0x137AE000) & (v19 ^ 0x31210600);
  v22 = (v20 << 8) & 0xB137AE00 ^ v20 ^ ((v20 << 8) ^ 0x37AE0000) & v21;
  v23 = (a12 + 961009518) ^ (2 * ((v22 << 16) & 0x31370000 ^ v22 ^ ((v22 << 16) ^ 0x2E000000) & ((v21 << 8) & 0xB1370000 ^ 0x110000 ^ ((v21 << 8) ^ 0x37AE0000) & v21)));
  *(v13 - 148) = *(v13 - 148);
  v25 = v23 == -704940446 || (v23 & 0xF) != 2;
  v26 = *(v12 + 8 * ((((v14 + 201403921) & 0xF3FECEE2 ^ 0x4E0) * v25) ^ v14));
  *(v13 - 152) = -42899;
  return v26();
}

uint64_t sub_453C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = STACK[0x328];
  v8 = *(STACK[0x328] + 96);
  if (v8 == 2)
  {
    return (*(v5 + 8 * (((*(v7 + 92) != 0) * (v6 - 285)) ^ (v6 + 1815))))(a1, a2, 3363968019, 1640887173, a5, 114, 186, 997);
  }

  if (v8 == 1)
  {
    return (*(v5 + 8 * (((*(v7 + 92) == 0) * (v6 - 293)) ^ (v6 + 1020))))(2151286785, 2143680511, 4287361016, 1640887173, a5, 834, 186, 997);
  }

  STACK[0x2E8] = 91;
  *(v7 + 91) = (&STACK[0x2E8] ^ 0xBA) * (&STACK[0x2E8] + 17);
  return (*(v5 + 8 * ((997 * (STACK[0x2E8] == 0)) ^ (v6 + 174))))(2151286785, 2143680511, 4287361016, 1640887173, a5, 834, 186);
}

uint64_t sub_45520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v23 = 1388665877 * (&a15 ^ 0x8DAD62EC);
  a16 = a11;
  HIDWORD(a17) = v23 + 1757;
  LODWORD(a15) = v23 ^ (v20 - ((2 * v20) & 0x17822594) - 1950281014);
  (*(v22 + 19064))(&a15);
  v24 = 1388665877 * (((&a15 | 0x810B9CD9) - &a15 + (&a15 & 0x7EF46320)) ^ 0xCA6FE35);
  HIDWORD(a17) = v24 + 1757;
  LODWORD(a15) = v24 ^ (HIDWORD(v19) - ((2 * HIDWORD(v19)) & 0x17822594) - 1950281014);
  a16 = a11;
  (*(v22 + 19064))(&a15);
  v25 = 1388665877 * ((&a15 - 1072129455 - 2 * (&a15 & 0xC0189A51)) ^ 0x4DB5F8BD);
  HIDWORD(a17) = v25 + 1757;
  LODWORD(a15) = (v19 - ((2 * v19) & 0x17822594) - 1950281014) ^ v25;
  a16 = a11;
  (*(v22 + 19064))(&a15);
  a17 = a11;
  a15 = v18;
  a18 = 1556366573 * ((166071109 - (&a15 | 0x9E60B45) + (&a15 | 0xF619F4BA)) ^ 0x92FDD750) + 434;
  v26 = (*(v22 + 19304))(&a15);
  return (*(v22 + 8 * ((1177 * (a16 == v21)) ^ 0xB2u)))(v26);
}

void sub_45710(uint64_t a1)
{
  v1 = *(a1 + 12) + 896639297 * (((a1 | 0xFDC9DEB3) - a1 + (a1 & 0x236214C)) ^ 0xE96248CB);
  v4 = *a1;
  v3[1] = (896639297 * ((((v3 ^ 0x94130007) & 0x9713F42F) + (v3 ^ 0x4324FDF8) - ((v3 ^ 0x4324FDF8) & 0x9713F42F)) ^ 0xC09C9FAF)) ^ (v1 + 1223);
  v2 = *(&off_C1600 + (v1 ^ 0x71)) - 8;
  (*&v2[8 * (v1 ^ 0x9C0)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_45878()
{
  v5 = 974 * (v1 ^ 0x2C4);
  if (v2 >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = -v2;
  }

  v7 = v3 + v0;
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  return (*(v4 + 8 * (((((v6 > v8) ^ ((v5 ^ 0x99) - 62)) & 1) * (142 * (v5 ^ 0x799) - 651)) ^ v5)))();
}

uint64_t sub_458D4(_DWORD *a1)
{
  v1 = 1564307779 * ((a1 & 0x49026F14 | ~(a1 | 0x49026F14)) ^ 0x21F05CF8);
  v2 = *a1 + v1;
  return (*(*(&off_C1600 + (v2 - 469)) + ((((((a1[1] ^ v1 ^ 0x762A833D) - 1982497597) ^ ((a1[1] ^ v1 ^ 0x6764F040) - 1734668352) ^ ((a1[1] ^ v1 ^ 0x8F7CDB21) + 1887642847)) + 506636380 < 0x80000064) * (((v2 - 63) | 0x44) - 582)) ^ v2) - 1))();
}

uint64_t sub_459CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  STACK[0x228] = ((v38 - 405) ^ 0xFFFFFFFFFFFFF814) + a38;
  LODWORD(STACK[0x3A0]) = -1640847268;
  return (*(v39 + 8 * ((1450 * (*(a28 + 360) > 1u)) ^ v38)))();
}

void sub_45A28(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1785193651 * ((a1 + 1137039650 - 2 * (a1 & 0x43C5D922)) ^ 0xC0755334));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_45ADC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v2 + v4 - 1 >= ((v5 + 486) ^ 0x7FFFFD1Du))
  {
    v6 = 1919379964 - v3;
  }

  else
  {
    v6 = v3;
  }

  *(a2 + 4) = v6;
  *(result + 24) = -103241190;
  return result;
}

uint64_t sub_45B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (v68 - 1794523672) & 0x9284FD5;
  *(v72 - 192) = v68 - 1556366573 * ((2 * ((v72 - 192) & 0x4D7DE1E0) - (v72 - 192) + 847388188) ^ 0x56663DF6) + 641013582;
  (*(v71 + 8 * (v70 + 1788)))(v72 - 192);
  if (((v69 - v68) | (v68 - v69)) > v73 - 325)
  {
    v74 = 83;
  }

  else
  {
    v74 = 84;
  }

  *(v72 - 176) = (v68 + v74 + 123) ^ (87 * (((~(v72 + 64) | 6) + ((v72 + 64) | 0xF9)) ^ 0x5C));
  *(v72 - 192) = &a68;
  *(v72 - 184) = v70 ^ (210068311 * (((~(v72 - 192) | 0x75652906) + ((v72 - 192) | 0x8A9AD6F9)) ^ 0x184CE95C));
  *(v72 - 168) = &STACK[0x344];
  v75 = (*(v71 + 8 * (v68 ^ 0x61CDFAE6)))(v72 - 192);
  return (*(v71 + 8 * (((a64 != 0) * ((v73 - 93) ^ 0xF7)) | (v73 + 1244))))(v75);
}

void sub_45D24(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a5 = v6;
  a6 = v8;
  a3 = v7 - 1388665877 * ((&a3 & 0xBE18B9DB | ~(&a3 | 0xBE18B9DB)) ^ 0xCC4A24C8) - 227;
  (*(a1 + 8 * (v7 + 1949)))(&a3);
  JUMPOUT(0x290D8);
}

uint64_t sub_45D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  HIDWORD(v43) = HIDWORD(a15) - 1596135738;
  v41.i64[0] = 0x3939393939393939;
  v41.i64[1] = 0x3939393939393939;
  LODWORD(a23) = 3 * (a6 ^ (a6 - 242));
  LODWORD(v43) = (a6 - 1707912018) & 0x19B87FFE;
  HIDWORD(a19) = a6 - 1397203362;
  return sub_20524(vdupq_n_s32(0x1E32A85Fu), vdupq_n_s32(0x9E32A85C), v41, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v38 + a13, a19, v43, a21, (11 * (a23 ^ 0x33D)) ^ (v40 - 150), a23, v39 - 16, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

void sub_45E4C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v23 = ((2 * ((v22 - 144) & 0x104EED98) - (v22 - 144) + 1873875558) ^ 0xEC019870) * v20;
  *(v22 - 120) = v21;
  *(v22 - 124) = v23 + a1 + 335;
  *(v22 - 136) = &a19;
  *(v22 - 144) = v19 - v23 + 742465402 + a1 - 410;
  JUMPOUT(0x13520);
}

uint64_t sub_45F18(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = &STACK[0x540] + v37;
  *v38 = 1409796786;
  *(v38 + 1) = 0;
  *(v38 + 4) = 1548121088;
  *(v38 + 6) = 411634585;
  *(v38 + 4) = 0;
  *(&STACK[0x540] + v37 + 40) = 411634585;
  *(&STACK[0x540] + v37 + 48) = 0;
  STACK[0x408] = &STACK[0x540] + v37 + 40;
  STACK[0x2D0] = &STACK[0x540] + v37 + 48;
  STACK[0x240] = &STACK[0x540] + v37 + 0x3837CB832C6E3B75;
  *(v38 + 14) = 411634585;
  *(&STACK[0x540] + v37 + 64) = 0;
  STACK[0x220] = &STACK[0x540] + v37 + 64;
  *(&STACK[0x540] + v37 + 72) = 411634585;
  STACK[0x258] = &STACK[0x540] + v37 + 72;
  *(&STACK[0x540] + v37 + 80) = 0;
  STACK[0x300] = &STACK[0x540] + v37 + 80;
  v38[88] = 24;
  v35->n128_u32[0] = 1409796786;
  memset(&v35->n128_u8[4], 57, 20);
  v35[1].n128_u32[2] = 411634585;
  v35[1].n128_u32[3] = 0;
  v35[14].n128_u32[2] = 0;
  memset(&v35[27].n128_u8[4], 57, 40);
  memset(&v35[70].n128_i8[8], 57, 40);
  v35[73] = a1;
  v35[74] = a1;
  return (*(v36 + 8 * v34))(&STACK[0x540] + v37, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_4605C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x360]) = a4 - 33;
  LODWORD(STACK[0x394]) = v6;
  LODWORD(STACK[0x464]) = v7;
  return (*(v9 + 8 * (((LODWORD(STACK[0x360]) == v8) * (((((v5 - 196) | 0x217) - 453) | 0x201) ^ 0x17)) ^ (((v5 - 196) | 0x217) - 562))))();
}

uint64_t sub_46470@<X0>(int a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v9 = (v6 + 4 * (v4 + a2));
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((((v3 + 808) ^ v7) + v4 == v5) * a1) ^ (v3 + 114))))();
}

uint64_t sub_46514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, char *a19, unsigned int a20)
{
  v23 = 843532609 * ((-1929717748 - (&a15 | 0x8CFAD80C) + (&a15 | 0x730527F3)) ^ 0x63B950AD);
  a19 = &a13;
  a18 = (v22 + 1421512335) ^ v23;
  a16 = a11;
  a15 = v23 - 1208308975;
  a20 = v23 - 1295632376;
  v24 = (*(v21 + 8 * (v22 ^ 0x9FCu)))(&a15);
  return (*(v21 + 8 * (v22 ^ (8 * (a17 == ((9 * (v22 ^ 0x85)) ^ (v20 + 343)))))))(v24);
}

uint64_t sub_465E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_465FC(uint64_t a1)
{
  v2 = 1785193651 * ((2 * (a1 & 0x5BD3D4D7) - a1 + 606874408) ^ 0xA79CA13E);
  v3 = *(a1 + 48) ^ v2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 8);
  v8 = (*(a1 + 32) ^ v2) - 153659797;
  v9 = 1564307779 * ((((2 * &v11) | 0xDDDC9316) - &v11 + 286373493) ^ 0x79E38598);
  v16 = v3 + 542396665 + v9 + 561;
  v15 = v5;
  v17 = v4;
  v13 = v7;
  v11 = v6;
  v14 = v8 ^ v9;
  result = (*(*(&off_C1600 + v3 + 542396665) + (v3 ^ 0xDFABA6EE) - 1))(&v11);
  *a1 = v12;
  return result;
}

uint64_t sub_4674C@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, _DWORD *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = &a52[6 * v67];
  v70[2] = v68;
  v70[3] = a1;
  *(v70 + 2) = a51;
  v70[6] = a65;
  *a52 = v66 + a2 - 817 - 48;
  v71 = *v65 + 1342909764;
  v72 = (a40 < 236698651) ^ (v71 < 236698651);
  v73 = v71 < a40;
  if (v72)
  {
    v73 = a40 < 236698651;
  }

  return (*(v69 + 8 * ((v73 * (((a2 - 718580579) & 0x2AD4A944) + 975)) ^ a2)))();
}

uint64_t sub_46824@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0x7272727272727272;
  v8.i64[1] = 0x7272727272727272;
  v9.i64[0] = 0x3939393939393939;
  v9.i64[1] = 0x3939393939393939;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (((v1 == 96) * (((v2 - 370) | 0x211) + 426)) ^ v2)))();
}

void sub_4689C(int a1@<W8>, int a2, uint64_t a3, int a4)
{
  v7 = 843532609 * (((&a2 | 0xB72FEF90) - &a2 + (&a2 & 0x48D01068)) ^ 0xA79398CE);
  a3 = v5;
  a2 = 1009 * (v6 ^ 0x348) - (((316022470 - 2 * a1) & 0x696BB3AC) + a1 + v7) + 1042342231;
  a4 = (v6 + 1096) ^ v7;
  (*(v4 + 8 * (v6 ^ 0xA06)))(&a2);
  JUMPOUT(0x46944);
}

uint64_t sub_4696C@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 8);
  if ((a1 + v4) >= 0x7FFFFFFF)
  {
    v7 = 1919379964 - v1;
  }

  else
  {
    v7 = v1;
  }

  v10[1] = v7;
  *(v5 - 136) = v6;
  *(v5 - 128) = v2 - 143681137 * ((v5 + 608120130 - 2 * ((v5 - 136) & 0x243F2DCA)) ^ 0x45059A82) + 378;
  *(v5 - 120) = v10;
  return (*(v3 + 8 * (v2 + 1539)))(v5 - 136);
}

uint64_t sub_46A30(__n128 a1)
{
  a1.n128_u16[0] = 14649;
  a1.n128_u8[2] = 57;
  a1.n128_u8[3] = 57;
  a1.n128_u8[4] = 57;
  a1.n128_u8[5] = 57;
  a1.n128_u8[6] = 57;
  a1.n128_u8[7] = 57;
  return sub_46A5C(1957, a1);
}

uint64_t sub_46A5C@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v9 = (v6 + a2 + v5);
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((v7 + a2 == v4) * a1) ^ v3)))();
}

void sub_46A88(uint64_t a1)
{
  v2 = *(&off_C1600 + (byte_A01E0[byte_9C95C[(-35 * ((qword_C86F8 - dword_C86C8) ^ 0xD2)) - 12] ^ 0x31] ^ (-35 * ((qword_C86F8 - dword_C86C8) ^ 0xD2))) - 94);
  v3 = *(&off_C1600 + (byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 - *v2) ^ 0xD2))] ^ 0x38] ^ (-35 * ((qword_C86F8 - *v2) ^ 0xD2))) - 164);
  v4 = 1865875933 * (&v6[*(v3 - 4) ^ *v2] ^ 0x1E71746347E125D2);
  *v2 = v4;
  *(v3 - 4) = v4;
  LODWORD(v3) = *v2;
  v5 = *(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C86C8) ^ 0xD2)) ^ byte_9C750[byte_A8EE0[(-35 * ((qword_C86F8 + dword_C86C8) ^ 0xD2))] ^ 0xFC]) + 21) - 8;
  (*&v5[8 * ((-35 * ((v4 - v3) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((v4 - v3) ^ 0xD2))] ^ 0x38]) + 17200])(*(&off_C1600 + ((-35 * ((v4 + v3) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((v4 + v3) ^ 0xD2))] ^ 0xEE]) - 145) - 4, sub_226BC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_46C54@<X0>(unsigned int a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v12 = v10 < a1;
  *(a5 + a6) = *(a4 + v6) - (a2 & (2 * *(a4 + v6))) + 57;
  if (v12 == v6 + 1 > ((v7 - 1068) | 8u) + v9)
  {
    v12 = v8 + v6 + 25 < v10;
  }

  return (*(v11 + 8 * ((!v12 * a3) ^ v7)))();
}

uint64_t sub_471A0(uint64_t a1)
{
  v1 = 1388665877 * (((a1 | 0x4C87D863) - (a1 & 0x4C87D863)) ^ 0xC12ABA8F);
  v2 = *a1 - v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) ^ v1;
  v5 = v4 + *(v3 + 68) - 1023249705;
  *(v3 + 68) = v5;
  v4 -= 1403556547;
  v6 = v4 < 0xE954FA66;
  v7 = v5 - 380306842 < v4;
  if (v6 != v5 > 0x16AB0599)
  {
    v7 = v6;
  }

  return (*(*(&off_C1600 + (v2 ^ 0x1C1)) + ((782 * v7) ^ v2) - 1))();
}

void sub_47270(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 1029127688 - 2 * (a1 & 0x3D573E08)) ^ 0x179C1472));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_47360(__n128 a1)
{
  a1.n128_u16[0] = 14649;
  a1.n128_u8[2] = 57;
  a1.n128_u8[3] = 57;
  a1.n128_u8[4] = 57;
  a1.n128_u8[5] = 57;
  a1.n128_u8[6] = 57;
  a1.n128_u8[7] = 57;
  return sub_47390(a1);
}

uint64_t sub_47390@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v9 = (v6 + v2 + a1);
  *v9 = a2;
  v9[1] = a2;
  return (*(v8 + 8 * (((v2 + v5 - 1420 == v4) * v7) ^ v3)))();
}

void sub_47454(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v10 = 1504884919 * ((-240797537 - (&a4 | 0xF1A5B89F) + (&a4 | 0xE5A4760)) ^ 0xF599F07B);
  a5 = v8;
  a4 = a1 - v10 + 169;
  a6 = -1244192620 - v10;
  a7 = 0;
  a8 = v10 ^ 0x3141F6F8;
  (*(v9 + 8 * (a1 ^ 0x88Au)))(&a4);
  sub_257AC();
}

void sub_4756C()
{
  v3 = v2[623];
  if (v0 - (v1 - 235) >= ((v1 - 859) ^ (v1 - 235)))
  {
    ++v3;
  }

  *v2 = v3;
  JUMPOUT(0x38BCLL);
}

uint64_t sub_47628@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v7 = (v6 ^ 0x468) + a1;
  *(*(a2 + 8) + 4 * (a1 + v3)) = v5 ^ (v4 + 937) ^ v6;
  *(a2 + 4) = v7;
  v8 = v7 + v3;
  if (v7 + v3 < 0)
  {
    v8 = -v8;
  }

  return (*(v2 + 8 * ((((v3 + (v8 ^ 0x3BF3B4FE) - 46137344 + ((v6 + 2011653523) & (2 * v8)) - 1) >> 31) * ((v6 - 473) ^ 0x281 ^ ((v6 - 965) | 0x58))) ^ (v6 - 492))))();
}

uint64_t sub_476F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

void sub_4770C(uint64_t a1)
{
  v1 = 1556366573 * ((a1 - 1459571285 - 2 * (a1 & 0xA900B5AB)) ^ 0xCDE49641);
  v2 = **(a1 + 24) + 1130434738;
  v3 = *a1 + v1 - 1657035053;
  v4 = v2 < 0xAD1370A7;
  v5 = v2 > v3;
  if (v3 < 0xAD1370A7 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

void sub_477EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40)
{
  v41 = *(STACK[0x240] - 0x3837CB832C6E3B3DLL);
  STACK[0x3F0] = v40;
  LODWORD(STACK[0x454]) = 191388487;
  LODWORD(STACK[0x2BC]) = v41;
  STACK[0x230] = a40;
  LODWORD(STACK[0x404]) = 0;
  JUMPOUT(0x4784CLL);
}

uint64_t sub_47860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, unsigned int a56)
{
  STACK[0x228] = v57 + 432;
  LODWORD(STACK[0x254]) = 413236888;
  LODWORD(STACK[0x460]) = 411634585;
  STACK[0x350] = 0;
  *(&STACK[0x540] + v57) = 178584291;
  v61 = *(&STACK[0x540] + v57) != 178584291 || v59 + 1 != ((v56 - 472) ^ (v59 + 69) ^ ((v56 - 605) | 0x140));
  return (*(v58 + 8 * ((1126 * v61) | (v56 - 329))))(a1, a56);
}

uint64_t sub_47A24()
{
  v4 = LODWORD(STACK[0x360]);
  v5 = 843532609 * ((v0 - 2 * (v0 & 0x2821AF19C720AFB8) + 0x2821AF19C720AFB8) ^ 0xB5B19B2CD79CD8E6);
  *(v3 - 192) = -2030744996 - 843532609 * ((v0 - 2 * (v0 & 0xC720AFB8) - 954159176) ^ 0xD79CD8E6) + v1;
  *(v3 - 188) = 843532609 * ((v0 - 2 * (v0 & 0xC720AFB8) - 954159176) ^ 0xD79CD8E6);
  *(v3 - 168) = v5 ^ 0x61CDF386;
  *(v3 - 160) = ((v1 - 1690008821) & 0x9F46DE86) + 843532609 * ((v0 - 2 * (v0 & 0xC720AFB8) - 954159176) ^ 0xD79CD8E6);
  *(v3 - 180) = v1 - 1690008821 + 843532609 * ((v0 - 2 * (v0 & 0xC720AFB8) - 954159176) ^ 0xD79CD8E6);
  *(v3 - 176) = (v1 - 1690008801) ^ (843532609 * ((v0 - 2 * (v0 & 0xC720AFB8) - 954159176) ^ 0xD79CD8E6));
  *(v3 - 152) = v4 + v5;
  v6 = (*(v2 + 8 * (v1 ^ 0x9A7)))(v3 - 192);
  return (*(v2 + 8 * *(v3 - 184)))(v6);
}

uint64_t sub_47B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, _BYTE *a14, int a15, char a16, unsigned int a17, char *a18, unsigned int a19, _BYTE *a20)
{
  a20 = a14;
  a19 = (v21 + 1360) ^ (143681137 * (((&a17 | 0x70ACE8DE) - (&a17 & 0x70ACE8DE)) ^ 0x11965F96));
  a18 = &a16;
  (*(v20 + 8 * (v21 + 1956)))(&a17);
  a19 = (v21 + 1360) ^ (143681137 * (&a17 ^ 0x613AB748));
  a18 = &a12;
  a20 = a14;
  (*(v20 + 8 * (v21 ^ 0x8A4)))(&a17);
  a18 = a14;
  a17 = v21 + 50899313 * ((2 * (&a17 & 0x2743C558) - &a17 + 1488730787) ^ 0x727710D9) + 1158;
  v23 = (*(v20 + 8 * (v21 ^ 0x89A)))(&a17);
  return (*(v20 + 8 * ((1189 * (a19 == v22 + ((v21 + 1612678659) & 0x1FE07B3E) - 796)) ^ v21)))(v23);
}

uint64_t sub_47E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, int a45, char a46)
{
  if (a46 == 2)
  {
    return (*(v46 + 8 * ((55 * (a45 != ((v47 - 711196978) & 0x2A64039F) - 664)) ^ (v47 + 622))))(a11);
  }

  if (a46 == 1)
  {
    return (*(v46 + 8 * (((a45 != 0) * ((v47 - 1196744075) & 0x4754DF6B ^ 0x20C)) ^ (v47 + 481))))();
  }

  v49 = (v47 - 32) | 0x51;
  a44 = (&a27 ^ 0xBA) * (&a27 + 17);
  a43 = ((v49 + 96) ^ &a27) * (&a27 + 18);
  return (*(v46 + 8 * v49))(&a27 + 18, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_4800C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  HIDWORD(v16) = a1 ^ v11;
  LODWORD(v16) = a1;
  v17 = (v7 ^ 0xC395C369) & (a4 ^ v14) ^ a4 & 0x3F9957DC;
  v18 = (v7 ^ 0xDEF4B7A0) & (a4 ^ v11) ^ a4 & 0xDD07DCEA;
  v19 = (v16 >> 27) + (v8 ^ v11) + (*(v10 + 4 * (a5 + v15)) ^ v13) + 96143219 + (v18 & 0x92ADD77 ^ 0xF7D76ACA ^ (v17 & 0x5F3C9F5F ^ 0xB5E1A9C3 ^ (v17 ^ (((v6 - 1601) | 0x281) - 1007163162)) & (v5 ^ 0x5CCFF415)) & (v18 ^ 0xFEFCB7B5));
  return (*(v12 + 8 * ((3816 * (a5 + 1 == v9 + 44)) ^ v6)))(v19 ^ ((v19 ^ 0x7A5839FB) - 214397804) ^ ((v19 ^ 0x65974CF) - 1892040280) ^ ((v19 ^ 0x7561A05C) - 67037899) ^ ((v19 ^ 0x7FFFA7FF) - 157347176) ^ 0x756C21DDu);
}

uint64_t sub_48398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = 210068311 * (((&a15 | 0x7EBCEC0) - (&a15 & 0x7EBCEC0)) ^ 0x953DF164) + 2202;
  a15 = &a11;
  v20 = (*(v18 + 18888))(&a15);
  return (*(v18 + 8 * (((8 * (a16 == v17)) | (16 * (a16 == v17))) ^ v19)))(v20);
}

void sub_48A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = (*(v32 + 8 * (v31 + 935)))(&a31, 0);
  (*(v32 + 8 * (v31 + 867)))(v33);
  *a25 = (*(v32 + 8 * (v31 + 867)))();
  JUMPOUT(0x48AA4);
}

uint64_t sub_48D8C()
{
  *(v5 + v3 + v0) = *(v1 + v3);
  v7 = (((v4 - 1502) | 0x1AAu) ^ 0x1E3) + v3 == v2;
  return (*(v6 + 8 * (((16 * v7) | (v7 << 6)) ^ v4)))();
}

uint64_t sub_48EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t (*a26)(void), uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60)
{
  STACK[0x2E0] = v60;
  STACK[0x318] = a60;
  return a26();
}

uint64_t sub_48F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(a28 + 56);
  *(a28 + 56) = v31 + 1;
  return (*(v30 + 8 * ((((v31 - 316771512) < 0xFFFFFFFA) * (v28 + v29 - 1640885245)) ^ (v29 - 223))))();
}

uint64_t sub_4922C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X4>, unsigned int a5@<W5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v13 = ((v10 + 272) ^ a5) + v9;
  *(a1 + v13) = *(a4 + v13) ^ *(v8 + (v13 & 0xF)) ^ *((v13 & 0xF) + v7 + 5) ^ *((v13 & 0xF) + a7 + 1) ^ ((v13 & 0xF) * a6) ^ v12;
  return (*(v11 + 8 * (((v13 == (v10 ^ a2)) * a3) ^ (v10 + 175))))();
}

uint64_t sub_49308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *a18 = 64;
  *(a58 + 252) = 959689982;
  *(a58 + 256) = a58 + 264;
  *(a58 + 520) = 64;
  *(a58 + 524) = 959689982;
  *(a58 + 528) = a58 + 536;
  *(a58 + 792) = 64;
  *(a58 + 796) = 959689982;
  *(a58 + 800) = a58 + 808;
  v63 = STACK[0x388] + 4;
  *(a58 + 1064) = 64;
  *(a58 + 1068) = 959689982;
  *(a58 + 1072) = a58 + 1080;
  *(a58 + 1336) = 64;
  *(a58 + 1340) = 959689982;
  *(a58 + 1344) = a58 + 1352;
  v64 = 1785193651 * ((v62 - 192) ^ 0x83B08A16);
  v76 = v60 + 1707 + v64;
  *(v62 - 172) = v76;
  v75 = -504024833 - v64;
  *(v62 - 192) = -504024833 - v64 + (((v58 ^ 0x523AAB4B) - 1379576651) ^ ((v58 ^ 0xD3804158) + 746569384) ^ ((v59 ^ 0xE077BCF5) + (v58 ^ 0x1F88424F)));
  *(v62 - 168) = v63;
  *(v62 - 184) = a18;
  (*(v61 + 8 * (v60 + 2098)))(v62 - 192);
  v74 = v58 ^ 0x9E32A85C;
  v65 = v63 + v74;
  v66 = 1785193651 * ((v62 - 997919881 - 2 * ((v62 - 192) & 0xC484F437)) ^ 0x47347E21);
  *(v62 - 168) = v65;
  *(v62 - 192) = -504024833 - v66 + (((v58 ^ 0x43739339) - 1131647801) ^ ((v58 ^ 0xAB9F4C90) + 1415623536) ^ ((v58 ^ 0x76DE77F5) - 1994291189));
  *(v62 - 172) = v60 + 1707 + v66;
  *(v62 - 184) = a58 + 520;
  (*(v61 + 8 * (v60 + 2098)))(v62 - 192);
  v67 = v65 + v74;
  v68 = 1785193651 * ((((v62 - 192) | 0x8D527A08) - (v62 - 192) + ((v62 - 192) & 0x72AD85F0)) ^ 0xEE2F01E);
  *(v62 - 184) = a58 + 792;
  *(v62 - 168) = v65 + v74;
  *(v62 - 192) = -504024833 - v68 + (((v58 ^ 0x2D5219B) - 47522203) ^ ((v58 ^ 0xB433F75A) + 1271662758) ^ ((v58 ^ 0x28D47E9D) - 685014685));
  LODWORD(v65) = v60 + 1707;
  *(v62 - 172) = v60 + 1707 + v68;
  v69 = v60 ^ 0x8CE;
  (*(v61 + 8 * v69))(v62 - 192);
  v70 = v67 + v74;
  v71 = 1785193651 * ((((v62 - 192) | 0x34E92C8) - ((v62 - 192) & 0x34E92C8)) ^ 0x80FE18DE);
  *(v62 - 168) = v70;
  *(v62 - 172) = v65 + v71;
  *(v62 - 184) = a58 + 1064;
  *(v62 - 192) = -504024833 - v71 + (((v58 ^ 0xF043533B) + 264023237) ^ ((v58 ^ 0x4953E9E3) - 1230236131) ^ ((v58 ^ 0x27221284) - 656544388));
  (*(v61 + 8 * v69))(v62 - 192);
  *(v62 - 184) = a58 + 1336;
  *(v62 - 192) = v75 + (((v58 ^ 0x88F546A5) + 1997191515) ^ ((v58 ^ 0x8208BA91) + 2113357167) ^ ((v58 ^ 0x94CF5468) + 1798351768));
  *(v62 - 172) = v76;
  *(v62 - 168) = v70 + v74;
  v72 = (*(v61 + 8 * v69))(v62 - 192);
  return sub_49744(v72);
}

uint64_t sub_49744()
{
  v3 = STACK[0x388];
  STACK[0x478] = (v0 - 411634585);
  return (*(v2 + 8 * (((8 * (v0 == 411634585)) | (16 * (v0 == 411634585))) ^ (v1 - 182))))(v3);
}

uint64_t sub_497D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_4986C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = 1556366573 * ((2 * ((v73 - 192) & 0xAA5EDA8) - (v73 - 192) + 1968837204) ^ 0x11BE31BE);
  *(v73 - 160) = v71 - v74 - 808;
  *(v73 - 144) = &STACK[0x350];
  *(v73 - 152) = &STACK[0x460];
  *(v73 - 184) = a57;
  *(v73 - 176) = &STACK[0x254];
  *(v73 - 192) = a2 - v74 - 145834437;
  *(v73 - 168) = &a71;
  v75 = (*(v72 + 8 * (v71 ^ 0xC57)))(v73 - 192);
  return (*(v72 + 8 * (((*(v73 - 188) == ((v71 - 872) ^ 0x9E32A918)) * (v71 - 537)) ^ v71)))(v75, 0);
}

uint64_t sub_49A4C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  *(v54 - 156) = 1 - v52;
  *(v54 - 164) = v52 + 55969614 + v50;
  *(v54 - 160) = v52 ^ (v50 + 14349220) ^ 0x56;
  *(v54 - 192) = v50 + 14349220 + v52;
  *(v54 - 188) = (v50 + 14349210) ^ v52;
  *(v54 - 184) = (v51 + 1) - v52;
  *(v54 - 176) = (a1 - v50 + 326) + v52;
  v55 = (*(v53 + 8 * a50))(v54 - 192);
  return (*(v53 + 8 * *(v54 - 168)))(v55);
}

uint64_t sub_49AD8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a1 + v5) - ((2 * *(a1 + v5)) & 0x72) + 57;
  return (*(v3 + 8 * (v1 ^ (16 * (((v5 == 0) ^ (v1 - 34)) & 1)))))();
}

uint64_t sub_49B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *v28;
  v30 = *(v28 + 48);
  *(v27 - 176) = (a2 - 1129517488) & 0x43530FBF;
  *(v27 - 112) = veorq_s8(*v29, xmmword_A91F0);
  if (v26)
  {
    v31 = v30 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  v33 = *(v25 + 8 * ((85 * v32) ^ a2));
  *(v27 - 180) = -42900;
  return v33(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_49B88@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 48 * v1 + 36);
  v7 = v5 + v2 >= ((a1 + 1308804156) & 0xB1FD35FF ^ 0x800000DA) || v5 == ((a1 - 605) | 0x188) + 244427025;
  return (*(v4 + 8 * ((51 * v7) ^ a1)))();
}

uint64_t sub_49C00@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v24 = a1 ^ 0x2F5;
  *(v23 - 120) = &a11;
  *(v23 - 112) = a7;
  *(v23 - 104) = &a11;
  *(v23 - 136) = a6;
  *(v23 - 128) = &a21;
  *(v23 - 144) = a1 - 843532609 * ((v23 - 1131951880 - 2 * ((v23 - 144) & 0xBC87C988)) ^ 0xAC3BBED6) + 389;
  v25 = (*(v21 + 8 * (a1 ^ 0x81A)))(v23 - 144);
  return (*(v21 + 8 * ((992 * ((((v22 - 1037285081) < 0x7FFFFFFF) ^ (v24 - 108) ^ 3) & 1)) ^ (v24 - 446))))(v25);
}

uint64_t sub_49D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, int a15, int a16)
{
  v21 = 1898868845 * (*(v16 + 8) - v19) - 1658867620;
  v22 = (v21 ^ (v18 + 1010860749)) & (2 * (v21 & 0xB16884BB)) ^ v21 & 0xB16884BB;
  v23 = ((2 * (v21 ^ 0x5E1087BB)) ^ 0xDEF00600) & (v21 ^ 0x5E1087BB) ^ (2 * (v21 ^ 0x5E1087BB)) & 0xEF780300;
  v24 = v23 ^ 0x21080100;
  v25 = v22 ^ 0xEF780300 ^ (v23 ^ 0xCE600200) & (4 * v22);
  v26 = (4 * v24) & 0xEF780300 ^ 0x42180300 ^ ((4 * v24) ^ 0xBDE00C00) & v24;
  v27 = (16 * v25) & 0xEF780300 ^ v25 ^ ((16 * v25) ^ 0xF7803000) & v26;
  v28 = (16 * v26) & 0xEF780300 ^ 0x8780300 ^ ((16 * v26) ^ 0xF7803000) & v26;
  v29 = (((v27 << 8) & 0xEF780300 ^ v27 ^ ((v27 << 8) ^ 0x78030000) & v28) << 16) & 0x6F780000 ^ (v27 << 8) & 0xEF780300 ^ v27 ^ ((v27 << 8) ^ 0x78030000) & v28 ^ ((((v27 << 8) & 0xEF780300 ^ v27 ^ ((v27 << 8) ^ 0x78030000) & v28) << 16) ^ 0x3000000) & ((v28 << 8) & 0xEF780000 ^ 0x7780000 ^ ((v28 << 8) ^ 0x78030000) & v28);
  v30 = 1388665877 * ((&a13 & 0x775A0F77 | ~(&a13 | 0x775A0F77)) ^ 0x5089264);
  a16 = v30 + v18 + 751;
  a13 = v30 ^ v21 ^ (2 * v29) ^ 0xFC599071;
  a14 = a10;
  v31 = (*(v17 + 8 * (v18 + 1377)))(&a13);
  return (*(v17 + 8 * ((2031 * (a15 == v20)) ^ v18)))(v31);
}

uint64_t sub_49F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, uint64_t a17, char a18)
{
  a16 = v18 + 176694053;
  *(v21 - 128) = &a18;
  *(v21 - 112) = a14;
  *(v21 - 120) = v20 - 143681137 * ((2 * ((v21 - 128) & 0x7BE5A150) - (v21 - 128) + 68837035) ^ 0x6520E9E3) + 348;
  (*(v19 + 8 * (v20 ^ 0xA3D)))(v21 - 128);
  *(v21 - 104) = v20 - 1785193651 * ((-1561065397 - ((v21 - 128) | 0xA2F4084B) + ((v21 - 128) | 0x5D0BF7B4)) ^ 0xDEBB7DA2) + 1323;
  *(v21 - 128) = a14;
  *(v21 - 112) = &a15;
  v22 = (*(v19 + 8 * (v20 + 1511)))(v21 - 128);
  return (*(v19 + 8 * (((*(v21 - 120) <= 0x73B9A872u) * (((v20 + 824686703) & 0xCED847A3) - 670)) ^ v20)))(v22);
}

uint64_t sub_4A0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v12 = *(v10 + 8);
  v13 = ((2 * (*(v12 + ((a2 + ((a1 + a5) << 32)) >> 30)) ^ v5)) << ~v9) | ((*(v12 + 4 * (a1 + a5)) ^ v5) >> v9);
  *(v12 + 4 * a1) = v13 + v5 - ((v13 << a3) & v6);
  return (*(v11 + 8 * (((a1 + 1 == v7) * a4) ^ v8)))();
}

uint64_t sub_4A19C@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, uint64_t a6, unsigned int a7, char *a8, int a9)
{
  v13 = (((&a5 | 0x483DE511) - (&a5 & 0x483DE511)) ^ 0xB3FE520A) * a1;
  a6 = v9;
  a9 = v13 ^ 0x3141F704;
  a7 = -1795156136 - v13;
  a8 = &a3;
  a5 = v11 - v13 + 347;
  v14 = (*(v10 + 8 * (v11 + 2104)))(&a5);
  return (*(v10 + 8 * ((2008 * (*(v9 + 24) == (v11 ^ 0x1C4) + v12 + v11 + 212)) ^ v11)))(v14);
}

uint64_t sub_4A254(uint64_t a1, int a2)
{
  v7 = v6 + 1169;
  v8 = v3 + v4 + a2 + v6 + 1169;
  v9 = v8 + 1361663069 + v5 + ((v7 + 300) ^ 0xDE48FC7B);
  if (v8 > 0xB804A529 != v9 < v7 + 1207653735)
  {
    v10 = v8 > 0xB804A529;
  }

  else
  {
    v10 = v8 + 1207655126 > v9;
  }

  return (*(v2 + 8 * ((229 * !v10) ^ v7)))();
}

uint64_t sub_4A7F8@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 2188));

  return v3(v1);
}

uint64_t sub_4A828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *(&off_C1600 + (v15 ^ 0x467)) - 8;
  v17 = v16[v11[3] ^ 0x32 ^ (v15 - 117) & 0xFE] ^ v11[3];
  v18 = *(&off_C1600 + (v15 ^ 0x4C5)) - 4;
  v19 = v11[14];
  v20 = v18[v11[4] ^ 0xF7] + 39;
  *(v14 - 128) = v13;
  v21 = *(&off_C1600 + v15 - 965) - 8;
  v22 = v21[v19 ^ 0x82];
  v23 = *(&off_C1600 + v15 - 1015);
  v24 = *(v23 + (v11[5] ^ 0x6DLL)) << 16;
  v25 = ((((v21[v11[6]] << 8) ^ 0x9A32600A) & (((v20 ^ 0x2B) << 24) ^ 0xD27AFF0E) | ((v20 ^ 0x2B) << 24) & 0x65000000) ^ 0x48B5B720) & (v24 ^ 0xFF50FFEE);
  v26 = v24 & 0x780000;
  LOBYTE(v24) = (v11[15] - ((2 * v11[15]) & 0x92) - 55) ^ v16[v11[15] ^ 0xFDLL];
  v27 = ((v18[v11[8] ^ 0x70] + 39) ^ 0xFFFFFFEF) << 24;
  v28 = *(v23 + (v11[13] ^ 0xC7));
  v29 = v16[v11[11] ^ 0xD3] ^ v11[11];
  v30 = (((v27 ^ 0x3FFFFFF) & ((v21[v11[10] ^ 0x48] << 8) ^ 0xC5841CC7) | v27 & 0x3A000000) ^ 0xABA7DD6A) & (v29 ^ 0xFFFFFF6E);
  v31 = v29 & 0x52;
  v32 = ((*(v23 + (v11[1] ^ 0x40)) << 16) ^ 0xFEDD1DA7) & (v17 ^ 0xFEFF1D91) | v17 & 0x58;
  v33 = (v18[v11[12] ^ 0xBDLL] + 39) ^ 0x1B;
  v34 = ((v18[v11[12] ^ 0xBDLL] + 39) ^ 0x1B) << 24;
  v35 = (v34 & 0xA8000000 | 0x420306) ^ ((v28 << 16) ^ 0x57B4DC10) & ~v34;
  LODWORD(v23) = (*(v23 + (v11[9] ^ 0x7CLL)) ^ 0x6E) << 16;
  v36 = v23 & 0x2F0000 | ((v31 | v30) ^ 0x56F39EBD) & ~v23;
  v37 = ((((v21[v11[2] ^ 0x87] << 8) ^ 0x1753736C) & (v32 ^ 0xC900E283) | v32 & 0x68AC0093) ^ 0x7FFFDBEF) + (((v18[*v11 ^ 9] + 39) ^ 0x85) << 24);
  v38 = (v11[7] - ((2 * v11[7]) & 0x92) - 55) ^ v16[v11[7] ^ 0x2FLL];
  v39 = (v35 ^ 0x88120E9) & (((v24 ^ 0x1638FF04) & ((v22 << 8) ^ 0x16388757) | v24 & 0xA8) ^ 0x58D3F2ED) ^ v35 & v12;
  v40 = v38 & 0x58 | (v26 ^ 0x7716298D ^ v25) & ~v38;
  v41 = *(&off_C1600 + (v15 ^ 0x4D3)) - 12;
  LODWORD(v16) = *&v41[4 * v28];
  *(v14 - 176) = v40;
  HIDWORD(v42) = v16 ^ 0x5CCDC1A;
  LODWORD(v42) = v16 ^ 0x30000000;
  v43 = *(&off_C1600 + (v15 ^ 0x472)) - 12;
  v44 = -219980569 * *&v43[4 * (v33 ^ 0xB4)] - 1401721694;
  v45 = v24 ^ 0x78u;
  v46 = *(&off_C1600 + (v15 ^ 0x4CC));
  LODWORD(v21) = 690312999 * *(v46 + 4 * v45) - 711674504;
  v47 = v22 ^ 0x1D;
  v48 = *(&off_C1600 + (v15 ^ 0x4C8)) - 12;
  v49 = *&v48[4 * v47];
  *(v14 - 168) = v37;
  *(v14 - 164) = v36;
  v50 = v37 ^ (v42 >> 27) ^ v21 ^ v44 ^ (-36060539 * v49 - 1230097472) ^ 0x1A;
  *(v14 - 184) = v50 ^ v40 ^ 0xA0B96AF5;
  v51 = v36 ^ 0xAD07D00 ^ v50 ^ v40 ^ 0xA0B96AF5;
  *(v14 - 172) = v39;
  v52 = *&v41[4 * (((v51 ^ v39 ^ 0x3EAE215B) >> 16) ^ 0x6B)];
  HIDWORD(v42) = v52 ^ 0x5CCDC1A;
  LODWORD(v42) = v52 ^ 0x30000000;
  v53 = (690312999 * *(v46 + 4 * ((v51 ^ v39) ^ 0x1Au)) - 711674504) ^ (v42 >> 27) ^ (-36060539 * *&v48[4 * (((v51 ^ v39 ^ 0x215B) >> 8) ^ 0xAF)] - 1230097472) ^ (-219980569 * *&v43[4 * (((v51 ^ v39) >> 24) ^ 0x1F)] - 1401721694);
  v54 = v51 ^ v39 ^ 0xCA1CC7D0;
  v55 = v53 ^ v40 ^ 0xA0B96AF5;
  *(v14 - 188) = v51;
  v56 = v55 ^ v51 ^ 0xC1D6411F;
  v57 = (690312999 * *(v46 + 4 * ((v56 ^ v54) ^ 0xABu)) - 711674504) ^ (-219980569 * *&v43[4 * (((v56 ^ v54) >> 24) ^ 0x20)] - 1401721694);
  v58 = *&v41[4 * (((v56 ^ v54) >> 16) ^ 0xBF)];
  HIDWORD(v42) = v58 ^ 0x5CCDC1A;
  LODWORD(v42) = v58 ^ 0x30000000;
  *(v14 - 180) = v50;
  v59 = v57 ^ v53 ^ v50 ^ (-36060539 * *&v48[4 * (((v56 ^ v54) >> 8) ^ 0xE9)] - 1230097472) ^ (v42 >> 27);
  v60 = v59 ^ v55 ^ 0xF78131F4;
  v61 = v60 ^ v54 ^ 0x68E79195;
  v62 = *&v41[4 * (BYTE2(v61) ^ 0xD9)];
  HIDWORD(v42) = v62 ^ 0x5CCDC1A;
  LODWORD(v42) = v62 ^ 0x30000000;
  v63 = (-36060539 * *&v48[4 * (BYTE1(v61) ^ 0x49)] - 1230097472) ^ (690312999 * *(v46 + 4 * ((v60 ^ v54) ^ 0x5Fu)) - 711674504) ^ v59 ^ (v42 >> 27) ^ (-219980569 * *&v43[4 * (((v60 ^ v54) >> 24) ^ 0xBD)] - 1401721694);
  v102 = v60 ^ v56;
  v64 = v63 ^ v60 ^ 0x5F64A794;
  v65 = v64 ^ v102 ^ 0xC733F746;
  v66 = v65 ^ v61;
  v67 = v65 ^ v61 ^ 0x81B0C147;
  v68 = *&v41[4 * (BYTE2(v67) ^ 0xD9)];
  HIDWORD(v42) = v68 ^ 0x5CCDC1A;
  LODWORD(v42) = v68 ^ 0x30000000;
  v69 = (-36060539 * *&v48[4 * (BYTE1(v66) ^ 0x88)] - 1230097472) ^ (v42 >> 27) ^ v63 ^ (690312999 * *(v46 + 4 * (v66 ^ 0x8Du)) - 711674504) ^ (-219980569 * *&v43[4 * (HIBYTE(v66) ^ 0x54)] - 1401721694);
  v70 = v69 ^ v64 ^ 0xD5833601;
  v71 = v70 ^ v65;
  v72 = v70 ^ v65 ^ v67;
  v73 = *&v41[4 * (BYTE2(v72) ^ 0x8C)];
  HIDWORD(v42) = v73 ^ 0x5CCDC1A;
  LODWORD(v42) = v73 ^ 0x30000000;
  v74 = (-36060539 * *&v48[4 * (BYTE1(v72) ^ 0x1E)] - 1230097472) ^ (-219980569 * *&v43[4 * (HIBYTE(v72) ^ 0xE7)] - 1401721694) ^ v69 ^ (v42 >> 27) ^ (690312999 * *(v46 + 4 * (v72 ^ 0xEDu)) - 711674504);
  LODWORD(v101) = v74 ^ v70;
  v75 = v74 ^ v70 ^ 0xE8131F4;
  HIDWORD(v100) = v75 ^ v71;
  v76 = v75 ^ v71 ^ 0xC00207F5;
  v77 = v76 ^ v72;
  v78 = *&v41[4 * (((v77 ^ 0x32555727) >> 16) ^ 0x6B)];
  HIDWORD(v42) = v78 ^ 0x5CCDC1A;
  LODWORD(v42) = v78 ^ 0x30000000;
  HIDWORD(v101) = v74;
  HIDWORD(v99) = (-36060539 * *&v48[4 * (((v77 ^ 0x5727) >> 8) ^ 0x8F)] - 1230097472) ^ (690312999 * *(v46 + 4 * (v77 ^ 0x5Fu)) - 711674504) ^ v74 ^ (v42 >> 27) ^ (-219980569 * *&v43[4 * (HIBYTE(v77) ^ 0x63)] - 1401721694);
  LODWORD(v100) = v77;
  v79 = v77 ^ 0xB6E79195;
  LODWORD(v99) = HIDWORD(v99) ^ 0x5F64A794 ^ v75;
  v80 = v99 ^ v76;
  v81 = v99 ^ v76 ^ v77 ^ 0xB6E79195;
  v82 = *&v41[4 * (BYTE2(v81) ^ 0x8E)];
  HIDWORD(v42) = v82 ^ 0x5CCDC1A;
  LODWORD(v42) = v82 ^ 0x30000000;
  v98 = __PAIR64__(v80, v81);
  v83 = (690312999 * *(v46 + 4 * (v81 ^ 0x18u)) - 711674504) ^ (-36060539 * *&v48[4 * (BYTE1(v81) ^ 0x19)] - 1230097472) ^ (v42 >> 27) ^ (-219980569 * *&v43[4 * (HIBYTE(v81) ^ 0x98)] - 1401721694);
  v84 = v83 ^ v75;
  v85 = v83 ^ v75 ^ v79;
  v86 = (v83 ^ v75 ^ v79) ^ 0xCA;
  v87 = *&v41[4 * (((v85 ^ 0x76E59660) >> 16) ^ 0x3C)];
  HIDWORD(v42) = v87 ^ 0x5CCDC1A;
  LODWORD(v42) = v87 ^ 0x30000000;
  HIDWORD(v97) = v83 ^ HIDWORD(v99) ^ 0x5F64A794;
  v88 = (-219980569 * *&v43[4 * (HIBYTE(v85) ^ 0xD8)] - 1401721694) ^ HIDWORD(v97) ^ (690312999 * *(v46 + 4 * v86) - 711674504) ^ (-36060539 * *&v48[4 * (((v85 ^ 0x9660) >> 8) ^ 0xDF)] - 1230097472) ^ (v42 >> 27);
  *(&v97 + 4) = __PAIR64__(v84, v85);
  HIDWORD(v96) = v88 ^ v80 ^ 0xBFE59660;
  v89 = HIDWORD(v96) ^ v85;
  LODWORD(v96) = v89 ^ 0x52B2C6B2;
  LODWORD(v41) = *&v41[4 * (BYTE2(v89) ^ 0x6B)];
  HIDWORD(v42) = v41 ^ 0x5CCDC1A;
  LODWORD(v42) = v41 ^ 0x30000000;
  LODWORD(v41) = (v42 >> 27) ^ (690312999 * *(v46 + 4 * ((BYTE4(v96) ^ v85) ^ 0x78u)) - 711674504) ^ (-219980569 * *&v43[4 * (BYTE3(v89) ^ 0x87)] - 1401721694) ^ (-36060539 * *&v48[4 * (BYTE1(v89) ^ 0x8F)] - 1230097472);
  v90 = *(&off_C1600 + v15 - 1088) - 4;
  v91 = *(&off_C1600 + v15 - 969) - 4;
  v92 = *(&off_C1600 + (v15 ^ 0x4E1)) - 8;
  HIDWORD(v95) = (((*(v14 - 128) ^ 0x49AA85CB) - 822453979) ^ ((*(v14 - 128) ^ 0x4076211C) - 953745932) ^ ((*(v14 - 128) ^ 0xDC27D2B5) + 1534529115)) - 1568388619;
  LODWORD(v95) = v84 ^ 0xD000000 ^ v41;
  HIDWORD(v94) = v88 ^ v80 ^ 0x64000000 ^ v95;
  LODWORD(v97) = v88;
  LODWORD(v94) = v41 ^ v88;
  return sub_4B474(v90, 210, 23, v91, (*(*(&off_C1600 + (v15 & 0x921F8876)) + (*(v14 - 97) ^ 0xC9) - 8) ^ 0x20 | ((v90[*(v14 - 99) ^ 0x76] ^ 0xCB) << 16) | (((v92[*(v14 - 100) ^ 0x17] - 7) ^ 0x52) << 24) | ((v91[*(v14 - 98) ^ 0xECLL] ^ (*(v14 - 98) + (~(2 * *(v14 - 98)) | 0x2D) - 22) ^ 0xBC) << 8)) ^ 0xD2D2D211, v92, v89, 202, a9, a10, a11, v94, v95, v92, v91, *(&off_C1600 + (v15 & 0x921F8876)) - 8, v90, v96, v97, *(&v97 + 1), v98, v99, v100, v101);
}

uint64_t sub_4B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50)
{
  *(v55 - 136) = v52;
  *(v55 - 128) = v54;
  *(v55 - 152) = 0;
  v56 = *(v55 - 120);
  v57 = (v56 + v54);
  v58 = *(a19 + (v57[13] ^ 0x90));
  v59 = v57[9] ^ 0xD2;
  *(v55 - 148) = v52 ^ 0x188;
  *(v55 - 144) = v52 - 906;
  v60 = v52 ^ 0x188 ^ (v52 - 906) ^ 0x20A | v54;
  *(v55 - 132) = v60;
  v61 = ((v58 ^ 0x78) << 16) | (((*(a16 + (*(v56 + v60) ^ 0x80)) - 7) ^ 0x31) << 24) | ((*(a17 + (v57[14] ^ 5)) ^ (v57[14] - ((2 * v57[14]) & 0xD2) - 23) ^ 0x99) << 8) | *(a18 + (v57[15] ^ 8)) ^ 0x20;
  v62 = *(v55 - 176) ^ v53 ^ 0x4CCD7007 ^ (((*(a17 + (v57[6] ^ 8)) ^ (v57[6] - ((2 * v57[6]) & 0xD2) - 23) ^ 0x19) << 8) | (((*(a16 + (v57[4] ^ 0xC5)) - 7) ^ 0xFFFFFFFB) << 24) | *(a18 + (v57[7] ^ 0xFDLL)) ^ 0x20 | ((*(a19 + (v57[5] ^ 0xF5)) ^ 0xCC) << 16));
  v63 = *(v55 - 168) ^ v51 ^ 0x4D036472 ^ (*(a18 + (v57[3] ^ 0x75)) ^ 0x8D | (((*(a16 + (*v57 ^ 0xB0)) - 7) ^ 0x16) << 24) | ((*(a19 + (v57[1] ^ 0x93)) ^ 6) << 16) | ((*(a17 + (v57[2] ^ 0x1CLL)) ^ (v57[2] - ((2 * v57[2]) & 0xD2) - 23) ^ 0x5D) << 8));
  v64 = *(v55 - 172) ^ a5 ^ 0xBA06F509 ^ v61;
  LODWORD(v59) = *(v55 - 164) ^ v50 ^ 0x56D19C92 ^ (*(a18 + (v57[11] ^ 9)) ^ 0x27 | ((*(a19 + v59) ^ 0xEE) << 16) | ((*(a17 + (v57[10] ^ 0xA9)) ^ (v57[10] - ((2 * v57[10]) & 0xD2) - 23) ^ 0xC2) << 8) | (((*(a16 + (v57[8] ^ 2)) - 7) ^ 0xE2) << 24));
  v65 = *(&off_C1600 + (v52 ^ 0x793)) - 12;
  v66 = *(&off_C1600 + v52 - 1845) - 4;
  v67 = *(&off_C1600 + v52 - 1997);
  v68 = *(v67 + 4 * HIBYTE(v64)) ^ *&v65[4 * ((*(v55 - 176) ^ v53 ^ 0x7007 ^ (((*(a17 + (v57[6] ^ 8)) ^ (v57[6] - ((2 * v57[6]) & 0xD2) - 23) ^ 0x19) << 8) | *(a18 + (v57[7] ^ 0xFDLL)) ^ 0x20)) >> 8)];
  v69 = *&v66[4 * BYTE2(v63)];
  v70 = (v68 ^ 0x65E75148) & 0xC77D617 ^ v68 & 0x11;
  v71 = (v68 ^ 0x65E75148) - 1938303482;
  v72 = *(&off_C1600 + (v52 ^ 0x7B9)) - 12;
  v73 = v71 - 2 * v70;
  v74 = *(v67 + 4 * BYTE3(v59)) ^ 0x65E75148 ^ *&v65[4 * BYTE1(v63)];
  v75 = (*&v72[4 * v64] - 2128772169 - ((2 * *&v72[4 * v64] + 155933538) & 0x18EFAC0C)) ^ *&v66[4 * BYTE2(v62)];
  v76 = (v75 - 2050499068 - ((2 * v75) & 0xB8FBC08)) ^ *(v67 + 4 * HIBYTE(v63));
  v77 = *&v66[4 * BYTE2(v59)] ^ 0x9B00802 ^ *(v67 + 4 * HIBYTE(v62)) ^ (*&v72[4 * v63] - 190468687);
  v78 = *&v65[4 * BYTE1(v59)] ^ *(v55 - 180) ^ (v76 - 534737076 - ((2 * v76) & 0xC0411E98));
  v79 = *&v66[4 * BYTE2(v64)] ^ *(v55 - 188) ^ (v74 - 1938303481 + ~((2 * v74) & 0x18EFAC0C)) ^ (*&v72[4 * v62] - 190468687);
  v80 = *&v65[4 * BYTE1(v64)] ^ *(v55 - 184) ^ (v77 - 534737076 - ((2 * v77) & 0xC0411E98));
  v81 = v80 ^ 0xBF80DD5E;
  v82 = (v78 ^ 0xD7674CCB) >> 24;
  v83 = a50 ^ v69 ^ (*&v72[4 * v59] - 190468687) ^ 0xC33DE088 ^ v73;
  v84 = *&v72[4 * ((a50 ^ v69 ^ (v72[4 * v59] - 79)) ^ 0x88 ^ v73)];
  v85 = *(v67 + 4 * HIBYTE(v83)) ^ 0x9B00802 ^ *&v66[4 * ((v78 ^ 0xD7674CCB) >> 16)];
  v86 = *&v65[4 * ((v79 ^ 0xDD4) >> 8)] ^ (v84 - 725205763 - ((2 * v84 - 380937374) & 0xC0411E98));
  v87 = *&v72[4 * (v80 ^ 0x48)];
  v88 = (v87 + 2053999541 - ((2 * v87 + 155933538) & 0xB8FBC08)) ^ *(v67 + 4 * ((v79 ^ 0x16B10DD4u) >> 24));
  v89 = *&v65[4 * ((v78 ^ 0x4CCB) >> 8)];
  v90 = *&v72[4 * (v78 ^ 0xDD)];
  v91 = (v88 - 534737076 - ((2 * v88) & 0xC0411E98)) ^ v89;
  v92 = (v90 - 725205763 - ((2 * v90 - 380937374) & 0xC0411E98)) ^ *&v65[4 * BYTE1(v83)];
  v93 = *(v67 + 4 * v82) ^ (v86 - 2050499068 - ((2 * v86) & 0xB8FBC08));
  v94 = v85 - 534737076 - ((2 * v85) & 0xC0411E98);
  v95 = (v92 - 2050499068 - ((2 * v92) & 0xB8FBC08)) ^ *(v67 + 4 * HIBYTE(v81));
  v96 = *&v66[4 * ((v79 ^ 0x16B10DD4u) >> 16)];
  v97 = *&v66[4 * BYTE2(v83)] ^ a48 ^ (v91 - 1938303482 - ((2 * v91) & 0x18EFAC0C));
  v98 = __ROR4__(__ROR4__(*&v66[4 * BYTE2(v81)] ^ 0xB9AB301 ^ (v93 - 1938303482 - ((2 * v93) & 0x18EFAC0C)), 5) ^ 0x50D2ECF9, 27);
  v99 = a46 ^ v98 ^ 0x6EDAF696;
  v100 = v94 ^ a47 ^ *&v65[4 * BYTE1(v81)] ^ (*&v72[4 * (v79 ^ 0xC2)] - 190468687);
  v101 = a49 ^ v96 ^ 0x2201ECBC ^ (v95 - 1938303482 - ((2 * v95) & 0x18EFAC0C));
  v102 = *&v72[4 * (v97 ^ 0x37)];
  v103 = (v102 - 2128772169 - ((2 * v102 + 155933538) & 0x18EFAC0C)) ^ *&v66[4 * (((a46 ^ v98) >> 16) ^ 0x45)];
  v104 = *(v67 + 4 * ((v97 ^ 0xD62C0A37) >> 24)) ^ *&v65[4 * BYTE1(v99)];
  v105 = (v103 - 534737076 - ((2 * v103) & 0xC0411E98)) ^ *&v65[4 * BYTE1(v101)];
  v106 = *&v65[4 * ((v97 ^ 0xA37) >> 8)] ^ *&v66[4 * BYTE2(v101)];
  *(v55 - 140) = 209180182;
  v107 = *(v67 + 4 * ((v100 ^ 0xFC47C039) >> 24));
  v108 = *(v67 + 4 * HIBYTE(v101)) ^ *&v66[4 * (BYTE2(v97) ^ 0xB3)] ^ 0x9B00802 ^ (*&v72[4 * ((a46 ^ v98) ^ 0x96)] - 190468687);
  v109 = *&v72[4 * v101] - 190468687;
  v110 = (v106 ^ 0x6C57594A) - 2050499068 - 2 * ((v106 ^ 0x6C57594A) & 0x5C7DE14 ^ v106 & 0x10);
  v111 = *&v72[4 * (v100 ^ 0x39)] - 190468687;
  v112 = *&v65[4 * (BYTE1(v100) ^ 0x87)];
  v113 = ((v104 ^ 0x65E75148) - 1938303482 - 2 * ((v104 ^ 0x65E75148) & 0xC77D616 ^ v104 & 0x10)) ^ a41 ^ *&v66[4 * ((v100 ^ 0xFC47C039) >> 16)] ^ v109;
  v114 = a43 ^ v107 ^ 0x61C6B6CD ^ (v105 - 2050499068 - ((2 * v105) & 0xB8FBC08));
  v115 = v110 ^ a45 ^ *(v67 + 4 * HIBYTE(v99)) ^ v111;
  v116 = v112 ^ a44 ^ (v108 - 534737076 - ((2 * v108) & 0xC0411E98));
  BYTE2(v104) = BYTE2(v116) ^ 0x65;
  v117 = *&v72[4 * (v115 ^ 0xDD)];
  v118 = *&v72[4 * (v116 ^ 0x28)];
  v119 = (v118 + 2053999541 - ((2 * v118 + 155933538) & 0xB8FBC08)) ^ *(v67 + 4 * ((v113 ^ 0x7F82DAABu) >> 24));
  v120 = (v119 - 534737076 - ((2 * v119) & 0xC0411E98)) ^ *&v65[4 * (((v115 ^ 0x35DF) >> 8) ^ 0x79)];
  v121 = (v117 - 725205763 - ((2 * v117 - 380937374) & 0xC0411E98)) ^ *&v65[4 * BYTE1(v114)];
  v122 = (v116 ^ 0x7D650C28) >> 24;
  v123 = *&v65[4 * (BYTE1(v116) ^ 0x4B)] ^ 0x6C57594A ^ *&v66[4 * (((v115 ^ 0x13FC35DF) >> 16) ^ 0x9B)];
  v124 = *&v66[4 * ((v113 ^ 0x7F82DAABu) >> 16)] ^ (v121 - 1938303481 + ~((2 * v121) & 0x18EFAC0C));
  v125 = *(v67 + 4 * HIBYTE(v114));
  v126 = *&v66[4 * BYTE2(v104)] ^ 0x9B00802 ^ *(v67 + 4 * (HIBYTE(v115) ^ 0xBD)) ^ (*&v72[4 * v114] - 190468687);
  v127 = *(v67 + 4 * v122) ^ a40 ^ (v124 - 2050499068 - ((2 * v124) & 0xB8FBC08));
  v128 = *&v66[4 * BYTE2(v114)] ^ a39 ^ (v120 - 1938303482 - ((2 * v120) & 0x18EFAC0C));
  v129 = v127 ^ 0x66654B3E;
  v130 = (v123 - 2050499068 - ((2 * v123) & 0xB8FBC08)) ^ a38 ^ v125 ^ (*&v72[4 * (v113 ^ 0xBD)] - 190468687);
  v131 = a42 ^ *&v65[4 * (BYTE1(v113) ^ 0xDA)] ^ 0xE82DABD ^ (v126 - 534737076 - ((2 * v126) & 0xC0411E98));
  v132 = HIBYTE(v131);
  v133 = (v127 ^ 0x66654B3Eu) >> 24;
  v134 = *&v72[4 * (v127 ^ 0x28)];
  v135 = *(v67 + 4 * v133);
  v136 = (*&v72[4 * v131] - 725205763 - ((2 * *&v72[4 * v131] - 380937374) & 0xC0411E98)) ^ *&v65[4 * ((v130 ^ 0xE61F) >> 8)];
  v137 = (v136 - 2050499068 - ((2 * v136) & 0xB8FBC08)) ^ v135;
  v138 = (v134 - 725205763 - ((2 * v134 - 380937374) & 0xC0411E98)) ^ *&v65[4 * BYTE1(v131)];
  v139 = (v138 - 1938303482 - ((2 * v138) & 0x18EFAC0C)) ^ *&v66[4 * (BYTE2(v130) ^ 0x91)];
  v140 = *(v67 + 4 * ((v130 ^ 0x880EE61F) >> 24)) ^ 0xAE9A088D ^ *&v65[4 * BYTE1(v129)];
  v141 = *&v66[4 * BYTE2(v131)] ^ 0x4C903CC2;
  LODWORD(v59) = *&v72[4 * (v130 ^ 0x1F)];
  LODWORD(v59) = (v59 - 2128772169 - ((2 * v59 + 155933538) & 0x18EFAC0C)) ^ *&v66[4 * BYTE2(v129)];
  v142 = (v59 - 2050499068 - ((2 * v59) & 0xB8FBC08)) ^ *(v67 + 4 * v132);
  v143 = v142 - 534737076 - ((2 * v142) & 0xC0411E98);
  v144 = *&v66[4 * ((v128 ^ 0xA480DD5E) >> 16)];
  LODWORD(v59) = (*&v72[4 * (v128 ^ 0x48)] - 190468687) ^ a34 ^ (v141 + v140 - 2 * (v141 & v140));
  v145 = *(v67 + 4 * ((v128 ^ 0xA480DD5E) >> 24)) ^ a35 ^ (v139 - 2050499068 - ((2 * v139) & 0xB8FBC08));
  v146 = *&v65[4 * ((v128 ^ 0xDD5E) >> 8)] ^ a37 ^ v143;
  v147 = a36 ^ v144 ^ 0x84654B28 ^ (v137 - 1938303482 - ((2 * v137) & 0x18EFAC0C));
  v148 = *&v72[4 * (v146 ^ 0xDD)];
  v149 = *&v66[4 * (BYTE2(v146) ^ 0x67)] ^ *(v67 + 4 * (BYTE3(v59) ^ 0x30)) ^ (*&v72[4 * (v145 ^ 0x6E)] - 190468687);
  v150 = *&v72[4 * (v59 ^ 0x7E)];
  v151 = (v148 + 2053999541 - ((2 * v148 + 155933538) & 0xB8FBC08)) ^ *(v67 + 4 * HIBYTE(v147));
  v152 = (v151 - 1938303482 - ((2 * v151) & 0x18EFAC0C)) ^ *&v66[4 * (((v145 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v153 = *&v66[4 * BYTE2(v147)] ^ (v150 - 2128772169 - ((2 * v150 + 155933538) & 0x18EFAC0C));
  v154 = *&v66[4 * (BYTE2(v59) ^ 0xEE)] ^ (*&v72[4 * v147] - 190468687) ^ *(v67 + 4 * ((v145 ^ 0xD0C9FB6E) >> 24));
  v155 = *&v65[4 * (BYTE1(v59) ^ 0xC3)];
  LODWORD(v59) = (v153 - 2050499068 - ((2 * v153) & 0xB8FBC08)) ^ *(v67 + 4 * (HIBYTE(v146) ^ 0x5F));
  v156 = v59 - 534737076 - ((2 * v59) & 0xC0411E98);
  v157 = *&v65[4 * (BYTE1(v146) ^ 0x4C)] ^ a31 ^ ((v154 ^ 0x9B00802) - 534737076 - 2 * ((v154 ^ 0x9B00802) & 0x60208F4D ^ v154 & 1));
  LODWORD(v59) = ((v149 ^ 0x9B00802) - 534737076 - 2 * ((v149 ^ 0x9B00802) & 0x60208F4D ^ v149 & 1)) ^ a30 ^ *&v65[4 * BYTE1(v147)];
  v158 = *&v65[4 * (BYTE1(v145) ^ 0xBC)] ^ a33 ^ v156;
  v159 = a32 ^ v155 ^ 0x9A674CDD ^ (v152 - 534737076 - ((2 * v152) & 0xC0411E98));
  v160 = *&v72[4 * ((a32 ^ v155) ^ 0xDD ^ (v152 + 76 - ((2 * v152) & 0x98)))];
  v161 = (v160 - 725205763 - ((2 * v160 - 380937374) & 0xC0411E98)) ^ *&v65[4 * ((v158 ^ 0xDAAB) >> 8)];
  v162 = (v161 - 1938303482 - ((2 * v161) & 0x18EFAC0C)) ^ *&v66[4 * ((v59 ^ 0xBFC6B6DB) >> 16)];
  v163 = v162 - 2050499068 - ((2 * v162) & 0xB8FBC08);
  v164 = *&v65[4 * BYTE1(v159)] ^ *(v67 + 4 * ((v59 ^ 0xBFC6B6DB) >> 24)) ^ (*&v72[4 * (v157 ^ 0xE)] - 190468687);
  v165 = *&v65[4 * (BYTE1(v157) ^ 0x2A)] ^ *(v67 + 4 * ((v158 ^ 0x2982DAABu) >> 24)) ^ 0x65E75148;
  v166 = *(v67 + 4 * HIBYTE(v159)) ^ *&v65[4 * ((v59 ^ 0xB6DB) >> 8)];
  v167 = *&v72[4 * (v158 ^ 0xBD)] - 190468687;
  v168 = *&v66[4 * ((v158 ^ 0x2982DAABu) >> 16)] ^ a26 ^ ((v164 ^ 0x65E75148) - 1938303482 - 2 * ((v164 ^ 0x65E75148) & 0xC77D626 ^ v164 & 0x20));
  v169 = a29 ^ *&v66[4 * BYTE2(v159)] ^ (*&v72[4 * (v59 ^ 0xCD)] - 190468687) ^ 0x2674CDD ^ (v165 - 1938303482 - ((2 * v165) & 0x18EFAC0C));
  LODWORD(v59) = a27 ^ *(v67 + 4 * (HIBYTE(v157) ^ 0xA6)) ^ 0xAF54BB9B ^ v163;
  v170 = a28 ^ *&v66[4 * (BYTE2(v157) ^ 0xB3)] ^ v167 ^ 0x2BE67D3F ^ ((v166 ^ 0x65E75148) - 1938303482 - 2 * ((v166 ^ 0x65E75148) & 0xC77D607 ^ v166 & 1));
  v171 = *&v72[4 * (v168 ^ 0x8A)];
  v172 = (*&v72[4 * v59] - 2128772169 - ((2 * *&v72[4 * v59] + 155933538) & 0x18EFAC0C)) ^ *&v66[4 * BYTE2(v169)];
  v173 = (v172 - 534737076 - ((2 * v172) & 0xC0411E98)) ^ *&v65[4 * BYTE1(v170)];
  v174 = *(v67 + 4 * ((v168 ^ 0x44E9778Au) >> 24));
  v175 = v173 - 2050499068 - ((2 * v173) & 0xB8FBC08);
  v176 = *(v67 + 4 * HIBYTE(v170)) ^ *&v65[4 * ((v168 ^ 0x778A) >> 8)];
  v177 = *&v66[4 * BYTE2(v59)];
  v178 = *(v67 + 4 * BYTE3(v59)) ^ *&v65[4 * BYTE1(v169)] ^ 0x65E75148 ^ (*&v72[4 * (v170 ^ 0x16)] - 190468687);
  v179 = *(v67 + 4 * HIBYTE(v169)) ^ (v171 + 2053999541 - ((2 * v171 + 155933538) & 0xB8FBC08));
  v180 = *&v66[4 * (BYTE2(v168) ^ 0x76)];
  v181 = BYTE1(v59);
  LODWORD(v59) = (v179 - 1938303482 - ((2 * v179) & 0x18EFAC0C)) ^ *&v66[4 * BYTE2(v170)];
  v182 = *&v65[4 * v181];
  v183 = v177 ^ a24 ^ (*&v72[4 * v169] - 190468687) ^ ((v176 ^ 0x65E75148) - 1938303482 - 2 * ((v176 ^ 0x65E75148) & *(v55 - 140) ^ v176 & 0x10));
  v184 = v174 ^ a23 ^ v175;
  LODWORD(v59) = a25 ^ v182 ^ 0x26E67D29 ^ (v59 - 534737076 - ((2 * v59) & 0xC0411E98));
  LOBYTE(v176) = v184 ^ 0x58;
  v185 = a27 ^ a24 ^ v180 ^ 0xA254BB9B ^ (v178 - 1938303482 - ((2 * v178) & 0x18EFAC0C));
  v186 = (v184 ^ 0x4BE2758u) >> 24;
  v187 = *&v72[4 * (v183 ^ 0x49)];
  v188 = (*&v72[4 * v59] - 725205763 - ((2 * *&v72[4 * v59] - 380937374) & 0xC0411E98)) ^ *&v65[4 * ((v184 ^ 0x2758) >> 8)];
  v189 = (v187 - 2128772169 - ((2 * v187 + 155933538) & 0x18EFAC0C)) ^ *&v66[4 * (BYTE2(v184) ^ 0x21)];
  v190 = (v189 - 2050499068 - ((2 * v189) & 0xB8FBC08)) ^ *(v67 + 4 * HIBYTE(v185));
  v191 = *(v67 + 4 * (HIBYTE(v183) ^ 0xEF));
  v192 = (v188 - 1938303482 - ((2 * v188) & 0x18EFAC0C)) ^ *&v66[4 * BYTE2(v185)];
  v193 = (*&v72[4 * v176] + 2053999541 - ((2 * *&v72[4 * v176] + 155933538) & 0xB8FBC08)) ^ *(v67 + 4 * BYTE3(v59));
  v194 = (v193 - 534737076 - ((2 * v193) & 0xC0411E98)) ^ *&v65[4 * BYTE1(v185)];
  v195 = *&v65[4 * (BYTE1(v183) ^ 0xEB)] ^ (*&v72[4 * v185] - 190468687) ^ *(v67 + 4 * v186);
  v196 = *&v65[4 * BYTE1(v59)];
  LODWORD(v65) = *&v66[4 * BYTE2(v59)] ^ a20 ^ ((v195 ^ 0x65E75148) - 1938303482 - 2 * ((v195 ^ 0x65E75148) & 0xC77D607 ^ v195 & 1));
  v197 = *&v66[4 * (BYTE2(v183) ^ 3)];
  LODWORD(v66) = v196 ^ a21 ^ (v190 - 534737076 - ((2 * v190) & 0xC0411E98));
  v198 = v197 ^ a22 ^ (v194 - 1938303482 - ((2 * v194) & 0x18EFAC0C));
  LODWORD(v59) = a22 ^ a24 ^ v191 ^ (v192 - 2050499068 - ((2 * v192) & 0xB8FBC08));
  LODWORD(v72) = v59 ^ 0xBD9E3C06;
  v199 = v198 ^ 0xB0693C07;
  v200 = *(v55 - 136);
  v201 = *(&off_C1600 + v200 - 1910);
  v202 = *(v201 + 4 * ((a22 ^ a24 ^ v191 ^ (v192 + 4 - ((2 * v192) & 8))) ^ 7u));
  v203 = BYTE3(v59) ^ 0xD2;
  v204 = *(&off_C1600 + v200 - 1946) - 12;
  v205 = *&v204[4 * v203];
  v206 = *(&off_C1600 + v200 - 1993) - 8;
  v207 = *&v206[4 * ((v66 ^ 0xFAB5) >> 8)];
  HIDWORD(v208) = v207 ^ 0xEB684FA;
  LODWORD(v208) = v207 ^ 0x90000000;
  v209 = (v208 >> 28) ^ (*(v201 + 4 * (v65 ^ 0x16u)) - 1274988042) ^ (1909043885 * *&v204[4 * (HIBYTE(v198) ^ 0xDF)] - 277726023);
  v210 = *&v206[4 * ((v65 ^ 0xF016) >> 8)];
  HIDWORD(v208) = v210 ^ 0xEB684FA;
  LODWORD(v208) = v210 ^ 0x90000000;
  v211 = v208 >> 28;
  v212 = *&v206[4 * BYTE1(v72)];
  HIDWORD(v208) = v212 ^ 0xEB684FA;
  LODWORD(v208) = v212 ^ 0x90000000;
  v213 = *(&off_C1600 + (v200 ^ 0x79E)) - 8;
  v214 = *&v213[4 * ((v66 ^ 0x422CFAB5) >> 16)];
  v215 = *&v213[4 * ((v65 ^ 0xF6BCF016) >> 16)];
  v216 = (v208 >> 28) ^ (*(v201 + 4 * (v66 ^ 0xB5u)) - 1274988042);
  LODWORD(v201) = *(v201 + 4 * v199);
  LODWORD(v67) = *&v213[4 * (BYTE2(v199) ^ 0xF7)];
  v217 = *&v206[4 * BYTE1(v199)];
  LODWORD(v66) = *&v204[4 * ((v66 >> 24) ^ 0x2D)];
  LODWORD(v204) = *&v204[4 * ((v65 >> 24) ^ 0x99)];
  HIDWORD(v208) = v217 ^ 0xEB684FA;
  LODWORD(v208) = v217 ^ 0x90000000;
  LODWORD(v65) = a12 ^ *&v213[4 * BYTE2(v72)] ^ (v209 + 1229638545 - ((2 * v209) & 0x92959722));
  LODWORD(v72) = v214 ^ a14 ^ v211 ^ (v201 - 1274988042) ^ (-277726023 - 1213464643 * v205 - 1172458768 * v205 + 1229638545 - 2 * ((-277726023 - 1213464643 * v205 - 1172458768 * v205) & 0x494ACB97 ^ (-277726023 - 1213464643 * v205) & 6));
  v218 = (v202 - ((2 * v202 + 1744991212) & 0x92959722) - 45349497) ^ a13 ^ v215 ^ (1909043885 * v66 - 277726023) ^ (v208 >> 28);
  v219 = *(&off_C1600 + v200 - 1940);
  LODWORD(v67) = a13 ^ a20 ^ v67 ^ (1909043885 * v204 - 277726023) ^ (v216 + 1229638545 - ((2 * v216) & 0x92959722));
  v57[10] = *(v219 + (BYTE1(v218) ^ 0x79)) ^ 0x56;
  v220 = *(&off_C1600 + v200 - 1866) - 12;
  v57[13] = v220[BYTE2(v67) ^ 0xF0] ^ 0x40;
  v221 = *(&off_C1600 + (v200 ^ 0x74A)) - 4;
  v57[15] = (v221[v67 ^ 0x45] - 90) ^ 0x8F;
  v57[6] = *(v219 + (BYTE1(v72) ^ 0x1BLL)) ^ 0xAA;
  v57[1] = v220[BYTE2(v65) ^ 0x3ELL] ^ 0x26;
  v222 = *(v55 - 128);
  v223 = *(&off_C1600 + (v200 ^ 0x77A)) - 12;
  *(*(v55 - 120) + *(v55 - 132)) = v223[BYTE3(v67) ^ 0x41] ^ 0xE2;
  v57[8] = v223[HIBYTE(v218) ^ 0xB6] ^ 0x24;
  v57[3] = (v221[v65 ^ 0xDFLL] - 90) ^ 0x17;
  v57[14] = *(v219 + (BYTE1(v67) ^ 0x5ELL)) ^ 0xEB;
  v57[11] = (v221[v218 ^ 0x54] - 90) ^ 0x67;
  v57[2] = *(v219 + (BYTE1(v65) ^ 0x13)) ^ 0xA6;
  v57[7] = (v221[v72 ^ 0xDELL] - 90) ^ 0x84;
  v57[5] = v220[BYTE2(v72) ^ 0x7ALL] ^ 0xE1;
  *v57 = v223[(v65 >> 24) ^ 0xB5] ^ 0xC4;
  v57[9] = v220[BYTE2(v218) ^ 0x6FLL] ^ 0x93;
  v57[4] = v223[(v72 >> 24) ^ 0x49] ^ 0xB0;
  v224 = v222 - 181406573 < a15;
  if (a15 < 0xF52FF483 != (v222 - 181406573) < 0xF52FF483)
  {
    v224 = a15 < 0xF52FF483;
  }

  return (*(*(v55 - 160) + 8 * ((3856 * v224) ^ v200)))();
}

uint64_t sub_4CC88@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v12 = a1 + 34;
  *(*(a7 + 96) + 504) = v9 + 1;
  *(*(a7 + 96) + 496) = a9 - 1;
  v13 = 1785193651 * ((-1054383411 - ((v11 - 152) | 0xC12762CD) + ((v11 - 152) | 0x3ED89D32)) ^ 0xBD681724);
  *(v11 - 144) = v11 - 252;
  *(v11 - 136) = (v12 - 875954928) ^ v13;
  *(v11 - 132) = -934608903 - v13;
  v14 = (*(v10 + 8 * (v12 + 1567)))(v11 - 152);
  return (*(v10 + 8 * ((46 * ((v12 ^ 0xE776F76E) + a9 + (*(v11 - 184) & ((v12 + 431838215) & 0xFFF ^ 0x770)) < 0xFFFFFFC0)) ^ v12)))(v14);
}

uint64_t sub_4CEC4(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 29298;
  a1.n128_u8[2] = 114;
  a1.n128_u8[3] = 114;
  a1.n128_u8[4] = 114;
  a1.n128_u8[5] = 114;
  a1.n128_u8[6] = 114;
  a1.n128_u8[7] = 114;
  a2.n128_u16[0] = 14649;
  a2.n128_u8[2] = 57;
  a2.n128_u8[3] = 57;
  a2.n128_u8[4] = 57;
  a2.n128_u8[5] = 57;
  a2.n128_u8[6] = 57;
  a2.n128_u8[7] = 57;
  return sub_4CEDC(a1, a2);
}

uint64_t sub_4D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v24 = v20 ^ 0x64;
  *(v23 - 136) = a13;
  *(v23 - 128) = &a20;
  *(v23 - 120) = &a18;
  *(v23 - 112) = a14;
  *(v23 - 144) = (v20 ^ 0x64) - 843532609 * ((((v23 - 144) | 0xCE7091A8) - (v23 - 144) + ((v23 - 144) & 0x318F6E50)) ^ 0xDECCE6F6) - 238;
  *(v23 - 104) = &a18;
  v25 = (*(v21 + 8 * (v20 ^ 0xA8B)))(v23 - 144);
  return (*(v21 + 8 * ((992 * ((((v22 - 1037285081) < 0x7FFFFFFF) ^ (v24 - 108) ^ 3) & 1)) ^ (v24 - 446))))(v25);
}

uint64_t sub_4D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36, uint64_t a37, int a38)
{
  v42 = __ROR8__((((a7 + 60862954) & 0xFC5F47BF ^ (a4 >> 37) ^ 0x496EC606487DC755) & ((a4 << 27) ^ 0xA961005AFFFFFFFFLL) | (a4 << 27) & 0xB69139F9B0000000) ^ 0x7BE8DE53B269801, 27);
  v43 = v38 ^ a37;
  v44 = ((a7 - 1769) | 0x81u) ^ 0x904E2BDA358C5D8FLL ^ v42 ^ v39;
  v45 = v43 ^ a8;
  v46 = (v44 & 0x9BDC05255871F2F1 ^ (v42 ^ v40 ^ 0x44AB62DB85528D66) & (v42 ^ v39 ^ 0x4D9FE11C727CA8BALL) ^ 0x662FFFFBBF8F0D5FLL) - (v42 ^ v40 ^ 0x2A6AD389AD38837 ^ v44);
  v47 = (v43 ^ a8) & 0xFE9AD5B58A5DDE73 ^ (v43 ^ a8 ^ 0xBF620CE5F986E3E8) & (v43 ^ 0xDC9D474D72B60F80) ^ v42 ^ v40 ^ 0x6E4A044346CDD3EFLL;
  v48 = v42 & 0x69B18E11AF27351ELL ^ v43 ^ a8 ^ (v42 ^ 0xAA33E3067E342906) & (v39 ^ 0x71E273F45C904B5DLL);
  v49 = v43 ^ 0x2D38F5E0EB01BFEBLL ^ v47;
  v50 = v44 ^ v43 & 0xCA042E7C7DC135C4 ^ (v42 ^ v40 ^ 0x15734982A0E24A53) & (v43 ^ 0xDDF86D0707142E0CLL);
  v51 = (v45 ^ 0x409DF31A06791C17) & (v39 ^ 0xFA37580F6F037328);
  v52 = v45 & 0x1D9B5A15634BF294 ^ 0x99521002491014 ^ v51;
  v53 = v50 ^ v47;
  v54 = v50 ^ v47 ^ 0xEADCCAAA0B437F49;
  v55 = v49 & 1;
  if ((v49 & 1u & v51) - 0x6EB5B8560753264BLL - 2 * (v49 & 1u & v51) != 0x914A47A9F8ACD9B5)
  {
    v55 = -v55;
  }

  v56 = (v55 + v52) ^ v49 & 0xFFFFFFFFFFFFFFFELL;
  v57 = v48 ^ v39 ^ v46;
  v58 = v56 ^ 0x5E44C89F06FBDDC9 ^ (8 * (v56 ^ 0x5E44C89F06FBDDC9));
  *(&v59 + 1) = v56 ^ 0x5E44C89F06FBDDC9;
  *&v59 = v56;
  v60 = ((v58 ^ 0x88C0400000842523) & ((v56 >> 61) ^ 0xEBE3C21699CCB7A3) | v58 & 0x141C3DE966334858) ^ (v59 >> 39) & 0x9690913C4DFFFFFFLL ^ (v58 & 0xF7A1ACF7716C0FDDLL ^ 0x1A4ECA34C2A1EC01 ^ (v58 ^ 0x7321A4F771680A9CLL) & ((v56 >> 61) ^ 0xF7A1ACF7716C0FD9)) & (((v56 ^ 0x5E44C89F06FBDDC9) << 25) ^ 0x38F218D503FFFFFFLL);
  v61 = ((v48 << 63) | 0x7FFFFFFFFFFFFFFFLL) & ((v48 >> 6) ^ 0xFE727FB072038BABLL) ^ 0xFE640E8E6EA84465;
  v62 = (v61 - ((2 * v61) & 0x45946C7925736ACLL) + 0x1E2CA363C92B9B56) ^ (v48 >> 1) ^ ((v60 ^ 0x1494191C033324D2) + ((v48 << 58) ^ 0xB400000000000000) - 2 * ((v60 ^ 0x1494191C033324D2) & ((v48 << 58) ^ 0xB400000000000000)));
  v63 = ((v62 ^ 0x1CE284A05C526280) + 0x76AEC749851264E1 - 2 * ((v62 ^ 0x1CE284A05C526280) & 0x76AEC749851264F1 ^ v62 & 0x10)) ^ v48;
  v64 = v63 ^ 0x733288CEAFE1974CLL;
  v65 = v50 ^ (v50 >> 7);
  *(&v59 + 1) = v54;
  *&v59 = v53;
  v66 = v59 >> 28;
  *&v59 = __ROR8__(v54, 19);
  v67 = ((v66 ^ v59 ^ 0xABF94FD003F30FE5) - ((2 * (v66 ^ v59 ^ 0xABF94FD003F30FE5)) & 0x1EA16F12CCCD9F8) + 0xF50B7896666CFCLL) ^ v54;
  v68 = (v57 >> 17) ^ (v57 >> 10);
  v69 = (v68 | (v57 << 54)) ^ 0x7B263965789DA75CLL ^ (((v57 << 47) ^ 0x9242800000000000) - ((2 * ((v57 << 47) ^ 0x9242800000000000)) & 0xB4AC000000000000) + 0x5A5601CEFD0440AALL);
  v70 = (v69 + 0x3238375CDE97302ALL - 2 * (v69 & 0x3238375CDE97302BLL ^ v68 & 1)) ^ v57;
  *&v59 = __ROR8__(__ROR8__(v50, 44) & 0xE0000000000FFFFFLL ^ __ROR8__(v65, 3) ^ 0xBBD797FC21795082, 61);
  v71 = (v50 << 23) ^ (v50 << 57) ^ 0x7A7693BFF68BB5BFLL ^ (v59 - ((2 * v59) & 0x63DCC6C05D145174) + 0x31EE63602E8A28BALL);
  v72 = v67 ^ v71;
  v73 = v70 ^ 0xF35859972EE814AFLL ^ v71;
  v74 = v72 & ~v73;
  v75 = (v63 ^ 0x8CCD7731501E68B3) & (v70 ^ 0xF35859972EE814AFLL);
  v76 = (v60 ^ 0x1494191C033324D2) & (~(2 * v72) + v72);
  v77 = v64 & (v60 ^ 0xEB6BE6E3FCCCDB2DLL) ^ v72;
  v78 = v76 & 0x100000000;
  v79 = v64 ^ (__ROR8__(__ROR8__(v70 ^ 0xF35859972EE814AFLL, 62) ^ 0x25DA1EB034059543, 2) ^ 0x36897853F2FE9AAFLL) & v73;
  if ((v73 & v76 & 0x100000000) != 0)
  {
    v78 = -v78;
  }

  v80 = (v78 + v73) ^ v76 & 0xFFFFFFFEFFFFFFFFLL;
  v81 = v60 ^ v75 ^ v77 ^ 0x43D3D84AE4668A04;
  v82 = v77 ^ v80 ^ 0xAC7C0FF4012565E3;
  v83 = (v79 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v84 = v70 ^ v74 ^ 0xF1D7FC0CF3A0C419 ^ v79;
  v85 = v81 ^ __ROR8__(v81, 61);
  v86 = 0x8000;
  if (((v77 ^ v80) & 0x8000) != 0)
  {
    v86 = -32768;
  }

  v87 = v85 ^ (v81 << 25) ^ (v81 >> 39);
  v88 = v80 ^ 0x9A383CF881807545;
  v89 = v84 ^ __ROR8__(v84, 10) ^ (v84 << 47) ^ (v84 >> 17);
  v90 = v88 ^ (v88 >> 7) ^ ((v88 >> 41) | (v88 << 57)) ^ (v88 << (v83 & 0x17) << (v83 & 0x17 ^ 0x17));
  *(&v91 + 1) = v79 ^ 0x6F45779FA95FC03ALL;
  *&v91 = v79;
  v92 = v83 ^ (v91 >> 6) ^ ((v79 ^ 0x6F45779FA95FC03ALL) & 0x9B6535C14F352826 ^ (v79 << 63) | (v79 ^ 0x6F45779FA95FC03ALL) & 0x649ACA3EB0CAD7D9) ^ v87;
  v93 = v82 ^ (v82 >> 19) ^ ((v86 + v82) >> 28) ^ v90 ^ (((v86 + v82) ^ 0x8000) << 36) ^ (((v86 + v82) ^ 0x8000) << 45);
  v94 = v90 ^ v89;
  v95 = v94 - ((2 * v94) & 0x4BCF7563A6B4D67ELL);
  v96 = v92 ^ 0x1BD15DE7EA57F00 ^ v90 & ~v89;
  v97 = v93 ^ (v92 ^ 0x1BD15DE7EA57F00) & ~v87;
  v98 = v87 & ~v93 ^ v94;
  v99 = v97 + v87 - 2 * (v93 & v87);
  v100 = (v65 >> 3) & 1;
  v101 = v97 ^ 0x6E04C15915AB860ALL ^ v98;
  v102 = v101 >> 19;
  *(&v91 + 1) = (v101 >> 19) & v101 & 0x1A36E0206AEDLL ^ (v101 >> 28) ^ (((v101 >> 19) | v101) & 0xD8807A36E0206AEDLL | (v101 >> 19) & 0x5C91FDF9512 ^ v101 & 0x277F85C91FDF9512);
  *&v91 = (v101 << 36) ^ (v101 << 45) ^ *(&v91 + 1);
  v103 = v99 ^ (v92 ^ 0xFE42EA21815A80FFLL) & v89;
  v104 = v103 ^ 0x3278F838FE43D2BCLL;
  v105 = 33554433 * (v103 ^ 0x3278F838FE43D2BCLL);
  v106 = v93 & ((v95 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0);
  v107 = ((v103 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v103 ^ 0x3278F838FE43D2BCLL));
  v108 = v96 ^ v89 ^ v106 ^ 0x7370AC685030CB36;
  v109 = (v103 >> 39) ^ (v103 >> 61);
  v110 = v98 ^ 0x26974B18501E2B14;
  v111 = v109 ^ (8 * v104) ^ (v105 - v107);
  v112 = v111 ^ 0x64F1F1;
  v113 = v110 ^ (v110 >> 41) ^ (v110 >> 7) ^ (v110 << 23) ^ (v110 << 57);
  v114 = v96 ^ 0x7955EAEC4D48B80CLL ^ (v96 << 63) ^ __ROR8__(v96 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v96 ^ 0x7955EAEC4D48B80CuLL) >> v100 >> (v100 ^ 1u));
  v115 = v111 ^ 0x64F1F1 ^ v114;
  v116 = (v108 >> 17) ^ __ROR8__(v108, 10) ^ __ROR8__(__ROR8__(v108, 14) & 0xFFFC000000000007 ^ __ROR8__(v108, 61), 3);
  v117 = v116 ^ v113;
  *&v91 = __ROR8__(__ROR8__(v113, 7) ^ __ROR8__(__ROR8__(v91 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v118 = v113 & ~v116 ^ v115;
  v119 = v91 ^ 0xBBDB0FB7A00B9120 ^ (v111 ^ 0xFFFFFFFFFF9B0E0ELL) & v114;
  v120 = v111 ^ (((v115 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v115 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v116 ^ 0x425764BB58132BD4 ^ v119;
  v121 = (v91 ^ 0x4424F0485FF46EDFLL) & v112 ^ v116 ^ v113;
  v122 = v119 ^ 0x97F6A7E5F6E8F58ALL ^ v121;
  v123 = (v121 ^ -v121 ^ (0x70C7A8D3F3643DFDLL - (v121 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v124 = v116 ^ 0x44C9D571A5C4A51CLL ^ v118 ^ (v91 ^ 0xBBDB0FB7A00B9120) & ~v117;
  v125 = v118 ^ 0xD3DA1E3360BF843ALL ^ ((v118 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v118 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v127 = __ROR8__(__ROR8__(v120, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v120 ^ (8 * v120) ^ ((v120 >> 61) | (v120 << 25)), 23) ^ 0x735302FC48340548, 41);
  v128 = (v123 >> 7) ^ (v123 >> 41) ^ (v123 << 23) ^ (v123 << 57);
  v129 = v128 ^ v123;
  v130 = v122 ^ (v122 >> 28) ^ (v122 >> 19) ^ (v122 << 36) ^ (v122 << 45) ^ v128 ^ v123;
  v131 = v125 & 0xFFFFFFF7FFFFFFFFLL ^ (v118 << 63) ^ (v125 & 0x800000000 | ((v118 ^ 0xD3DA1E3360BF843ALL) << (v102 & 0x12) << (v102 & 0x12 ^ 0x3A))) ^ v127;
  if (v128 == v123)
  {
    v132 = 0;
  }

  else
  {
    v132 = v124 << 47;
  }

  v133 = v127 ^ 0x7E241A02A439A981;
  v126 = (v124 ^ (v124 >> 10) | (v124 << 54)) ^ (v124 << 54) & v124;
  v134 = (v132 ^ v126 | (v124 << 47)) ^ (v126 & (v124 << 47) & 0xFFFF800000000000 | (v124 >> 17));
  v135 = v131 ^ 0x7E241A02A439A981;
  v136 = v134 & (v131 ^ 0x81DBE5FD5BC6567ELL);
  v137 = v134 ^ v129 ^ v133 & ~v130;
  v138 = (~(2 * v133) + v133) & (v131 ^ 0x7E241A02A439A981) ^ v130;
  v139 = v137 ^ v138 ^ 0x93C23431B76D41FLL;
  *(&v141 + 1) = v139;
  *&v141 = v137 ^ v138;
  v140 = v141 >> 62;
  v142 = v133 ^ 0x6005BE354A5BB0B2 ^ v138;
  v143 = v129 & ~v134 ^ v135;
  v144 = v130 & ~(v134 ^ v129) ^ v134 ^ v143;
  v145 = ((v142 ^ v136) << (v129 & 3) << (v129 & 3 ^ 3)) ^ v142 ^ v136 ^ (((v142 ^ v136) >> 39) ^ ((v142 ^ v136) >> 61) | ((v142 ^ v136) << 25));
  *(&v141 + 1) = v139;
  *&v141 = v137 ^ v138;
  v146 = ((v141 >> 19) ^ __ROR8__(v140 ^ (4 * (v139 >> 28)) ^ 0x406FF36C296024B3, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v147 = v143 ^ 0x6DC4FB0BD4FFFF44 ^ ((v143 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v143 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v143 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v143 << 63));
  v148 = v137 ^ 0x2DB5B6AF87F64351 ^ ((v137 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v137 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v137 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v137 ^ 0x2DB5B6AF87F64351) >> 41);
  v149 = v145 ^ v147;
  v150 = __ROR8__(v144 ^ 0xF374A001D380BDC2, 17) ^ ((v144 ^ 0xF374A001D380BDC2) >> 10) ^ (((v144 ^ 0xF374A001D380BDC2) << 54) | (v144 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v144 ^ 0xF374A001D380BDC2) << 54) & (v144 ^ 0xF374A001D380BDC2) | v144 & 0x20);
  v151 = v148 ^ (v139 << 36) ^ (((2 * v146) & 0xFFFFFFFF18D20D4ALL) + (v146 ^ 0xFFFFFFFF8C6906A5)) ^ v147 & ~v145;
  v152 = v148 & ~v150 ^ v149;
  v153 = v145 ^ v150 & ~v149 ^ 0x62030E578F798D5ALL ^ v151;
  v154 = 2 * (a38 & 1) + (a38 ^ 1u);
  *(&v141 + 1) = v152 ^ 0xC39D9869C05A48AELL;
  *&v141 = v152;
  v155 = (v141 >> 6) ^ v152 ^ 0xC39D9869C05A48AELL;
  *(&v141 + 1) = v152;
  *&v141 = v152 ^ 0xC39D9869C05A48AELL;
  return (*(v41 + 8 * (a7 ^ (502 * (a36 > v154)))))(a1, a2, a3, v155 ^ (v141 >> 1), v154, a5, a6, (8 * v153) ^ (v153 >> 39) ^ ((v153 >> 61) | v153) ^ ((v153 >> 61) & v153 | (v153 << 25)), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

void sub_4E368(uint64_t a1)
{
  v1 = *(a1 + 28) + 143681137 * ((-751875376 - (a1 ^ 0xD366D90D | 0xD32F4AD0) + (a1 ^ 0xD366D90D | 0x2CD0B52F)) ^ 0x9E8CDB6A);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_4E450@<X0>(int a1@<W8>)
{
  v8 = v1;
  v7 = (a1 - 210) ^ (((2 * (&v7 & 0x3E77C1C0) - &v7 + 1099447864) ^ 0x6B431442) * v3);
  (*(v2 + 8 * (a1 ^ 0xBAF)))(&v7);
  return v4 ^ v5;
}

uint64_t sub_4E758@<X0>(unsigned int a1@<W8>)
{
  v9 = v2 < v3;
  v10 = *(v7 + v1);
  v11 = v1 + 1;
  *(v8 - 228 + a1) = v10 + ((v6 - 6) ^ 0x76) - ((2 * v10) & 0x72);
  if (v9 == v11 > v4 + 79)
  {
    v9 = v11 + v3 < v2;
  }

  return (*(v5 + 8 * (v6 ^ (8 * v9))))();
}

uint64_t sub_4E860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v29 = a1[2];
  v36 = *a1;
  v30 = *(a1[4] + 8);
  v31 = a1[4];
  *(v28 - 144) = v27 + 208 - 843532609 * ((v28 + 337474136 - 2 * ((v28 - 144) & 0x141D72E8)) ^ 0x4A105B6);
  *(v28 - 136) = v31;
  *(v28 - 128) = a2;
  v32 = v31;
  *(v28 - 112) = v29;
  *(v28 - 104) = &a26;
  *(v28 - 120) = v30;
  v33 = v29;
  (*(v26 + 8 * (v27 + 1893)))(v28 - 144);
  *(v28 - 144) = v27 + 896639297 * ((-258077509 - ((v28 - 144) | 0xF09E0CBB) + ((v28 - 144) | 0xF61F344)) ^ 0x1BCA653C) + 801;
  *(v28 - 120) = &a26;
  *(v28 - 112) = &a18;
  *(v28 - 136) = v32;
  *(v28 - 128) = v33;
  (*(v26 + 8 * (v27 ^ 0x8C8)))(v28 - 144);
  *(v28 - 112) = v33;
  *(v28 - 104) = &a24;
  *(v28 - 144) = v27 + 208 - 843532609 * ((((2 * (v28 - 144)) | 0xB82FC90C) - (v28 - 144) + 602413946) ^ 0xCCAB93D8);
  *(v28 - 128) = &a18;
  *(v28 - 120) = &a26;
  *(v28 - 136) = v32;
  (*(v26 + 8 * (v27 ^ 0x8AD)))(v28 - 144);
  *(v28 - 144) = v27 + 208 - 843532609 * ((-1880576153 - ((v28 - 144) | 0x8FE8AF67) + ((v28 - 144) | 0x70175098)) ^ 0x60AB27C6);
  *(v28 - 112) = v33;
  *(v28 - 104) = &a10;
  *(v28 - 120) = &a24;
  *(v28 - 136) = v32;
  *(v28 - 128) = &a18;
  (*(v26 + 8 * (v27 ^ 0x8AD)))(v28 - 144);
  *(v28 - 144) = v27 + 208 - 843532609 * ((((2 * (v28 - 144)) | 0xD25892CA) - (v28 - 144) + 382973595) ^ 0xF9903E3B);
  *(v28 - 136) = v32;
  *(v28 - 128) = &a18;
  *(v28 - 120) = &a10;
  *(v28 - 112) = v33;
  *(v28 - 104) = &a20;
  (*(v26 + 8 * (v27 + 1893)))(v28 - 144);
  *(v28 - 120) = &a20;
  *(v28 - 112) = v33;
  *(v28 - 104) = &a22;
  *(v28 - 144) = v27 + 208 - 843532609 * ((((v28 - 144) | 0x9A27378B) + (~(v28 - 144) | 0x65D8C874)) ^ 0x8A9B40D4);
  *(v28 - 136) = v32;
  *(v28 - 128) = &a18;
  (*(v26 + 8 * (v27 ^ 0x8AD)))(v28 - 144);
  *(v28 - 144) = v27 + 208 - 843532609 * ((2 * ((v28 - 144) & 0x7D10D688) - (v28 - 144) - 2098255498) ^ 0x92535E28);
  *(v28 - 136) = v32;
  *(v28 - 128) = &a18;
  *(v28 - 112) = v33;
  *(v28 - 104) = &a16;
  *(v28 - 120) = &a22;
  (*(v26 + 8 * (v27 + 1893)))(v28 - 144);
  *(v28 - 144) = v27 + 208 - 843532609 * ((((v28 - 144) | 0x6F35A693) - (v28 - 144) + ((v28 - 144) & 0x90CA5968)) ^ 0x7F89D1CD);
  *(v28 - 104) = &a14;
  *(v28 - 136) = v32;
  *(v28 - 128) = &a18;
  *(v28 - 120) = &a16;
  *(v28 - 112) = v33;
  (*(v26 + 8 * (v27 + 1893)))(v28 - 144);
  *(v28 - 144) = v27 + 208 - 843532609 * ((((v28 - 144) | 0xC6EF08B7) - ((v28 - 144) & 0xC6EF08B7)) ^ 0xD6537FE9);
  *(v28 - 136) = v32;
  *(v28 - 128) = &a18;
  *(v28 - 120) = &a14;
  *(v28 - 112) = v33;
  *(v28 - 104) = &a18;
  (*(v26 + 8 * (v27 ^ 0x8AD)))(v28 - 144);
  *(v28 - 128) = *v32;
  *(v28 - 136) = v27 - 143681137 * ((((v28 - 144) | 0x7B977CEF) + (~(v28 - 144) | 0x84688310)) ^ 0x1AADCBA6) + 724;
  *(v28 - 144) = &a12;
  (*(v26 + 8 * (v27 ^ 0x8A5)))(v28 - 144);
  *(v28 - 136) = v36;
  *(v28 - 144) = (v27 + 1303) ^ (50899313 * (((v28 - 144) & 0x3BAFD87A | ~((v28 - 144) | 0x3BAFD87A)) ^ 0xEE9B0DFF));
  v34 = (*(v26 + 8 * (v27 + 1914)))(v28 - 144);
  return (*(v26 + 8 * (((((7 * (v27 ^ 0x6B)) ^ ((*(v28 - 140) - 1037285081) < 0x7FFFFFFF)) & 1) * ((v27 ^ 0x9BE) - 1128)) ^ v27)))(v34);
}

void sub_4F128(uint64_t a1)
{
  v1 = 896639297 * ((a1 & 0xF7AA89E7 | ~(a1 | 0xF7AA89E7)) ^ 0x1CFEE060);
  v2 = *(*(a1 + 16) + 12) - 150679381;
  v3 = (*(a1 + 8) ^ v1) - 710794450;
  v4 = (v3 < 0x146EA0AC) ^ (v2 < 0x146EA0AC);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0x146EA0AC;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_4F274()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

void sub_4F36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59)
{
  v62 = STACK[0x368];
  v63 = 1785193651 * ((-1818519402 - ((v61 - 192) | 0x939B9896) + ((v61 - 192) | 0x6C646769)) ^ 0xEFD4ED7F);
  *(v61 - 176) = (v59 - 875954483) ^ v63;
  *(v61 - 172) = -934608903 - v63;
  *(v61 - 184) = v62;
  (*(v60 + 8 * (v59 ^ 0x8EC)))(v61 - 192);
  STACK[0x3E8] = v62;
  STACK[0x3B0] = a59;
  LODWORD(STACK[0x3BC]) = 17;
  JUMPOUT(0x3DD90);
}

uint64_t sub_4F4C4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = *(v1 + v5);
  v7 = ((v5 + (v4 + 882) - 1603) ^ v3) != v2;
  return (*(v6 + 8 * (((4 * v7) | (8 * v7)) ^ v4)))();
}

uint64_t sub_4F6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, char a19, __int16 a20, char a21)
{
  v26 = 1556366573 * ((((2 * (v25 - 160)) | 0xE3F72160) - (v25 - 160) + 235171664) ^ 0x951FB35A);
  STACK[0x260] = &a17;
  STACK[0x248] = &a19;
  *(v25 - 160) = v23 - v26 + ((v24 + v21 + 714594177) & 0xED82B7B7 ^ 0xF74EBA9C);
  *(v25 - 128) = v21 - v26 + 141;
  STACK[0x258] = &a21;
  STACK[0x240] = &a15;
  STACK[0x238] = a13;
  v27 = (*(v22 + 8 * (v21 + 2052)))(v25 - 160);
  return (*(v22 + 8 * ((591 * (*(v25 - 156) == -1640847268)) ^ v21)))(v27);
}

uint64_t sub_4F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = 210068311 * ((v20 - 1370155278 - 2 * ((v20 - 136) & 0xAE55177A)) ^ 0x3C8328DE);
  *(v20 - 136) = v21 + ((2 * v17) & 0xDEDE7EFE) + (v17 ^ 0x6F6F3E85 ^ (11 * (v19 ^ 0x17B))) - 1711550492;
  *(v20 - 132) = (v19 + 1677) ^ v21;
  *(v20 - 128) = &a17;
  v22 = (*(v18 + 8 * (v19 + 1986)))(v20 - 136);
  return sub_4F930(v22);
}

uint64_t sub_4F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 112) = v18 - (((((v19 - 136) | 0x121CFB6C) ^ 0xFFFFFFFE) - (~(v19 - 136) | 0xEDE30493)) ^ 0x6E538E85) * v16 + 1695;
  *(v19 - 120) = a15;
  *(v19 - 136) = a16;
  v20 = (*(v17 + 8 * (v18 + 1883)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 128) > ((v18 + 1103246851) & 0xBE3DC9F7 ^ 0x73B9A987)) * (((v18 - 744964899) & 0x2C67437A) + 398)) ^ v18)))(v20);
}

uint64_t sub_4FCD0()
{
  v4 = (v0 + 1546583861) & 0xA3D0FDB2;
  v5 = (*(v2 + 8 * (v0 + 212)))(*v3);
  return (*(v2 + 8 * ((((v4 ^ 0x553) + 1265 + 9 * (v4 ^ 0x553) - 3627) * (*v1 == 0)) ^ v4)))(v5);
}

void df35957c4e0()
{
  v0 = *(&off_C1600 + (byte_9C85C[(byte_A90E8[(-35 * ((qword_C86F8 + dword_C8700) ^ 0xD2)) - 8] ^ 0xCF) - 12] ^ (-35 * ((qword_C86F8 + dword_C8700) ^ 0xD2))) + 92);
  v1 = *(&off_C1600 + (byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 - *v0) ^ 0xD2))] ^ 0x38] ^ (-35 * ((qword_C86F8 - *v0) ^ 0xD2))) - 164);
  v2 = *(v1 - 4) - *v0 - &v8;
  *v0 = (1865875933 * v2) ^ 0x1E71746347E125D2;
  *(v1 - 4) = 1865875933 * (v2 ^ 0x1E71746347E125D2);
  v7 = 0;
  v10 = 1380333833 * (((&v9 | 0xAA379AF3) - &v9 + (&v9 & 0x55C86508)) ^ 0x14653179) - 1224077185;
  v9 = &v7;
  v3 = *(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C8700) ^ 0xD2)) ^ byte_9C850[byte_A90E0[(-35 * ((qword_C86F8 + dword_C8700) ^ 0xD2))] ^ 0xCF]) + 89) - 8;
  (*&v3[8 * ((-35 * ((*(v1 - 4) - *v0) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((*(v1 - 4) - *v0) ^ 0xD2))] ^ 0x43]) + 18240])(&v9);
  v6 = 0;
  v9 = &v6;
  v10 = 1380333833 * (((&v9 | 0x54653779) - (&v9 & 0x54653779)) ^ 0xEA379CF3) - 1224077185;
  v4 = -35 * (*v0 ^ 0xD2 ^ *(v1 - 4));
  (*&v3[8 * (byte_A01E0[byte_9C95C[v4 - 12] ^ 0x3C] ^ v4) + 18344])(&v9);
  LODWORD(v9) = (1380333833 * (((&v9 | 0xD2F4EE29) + (~&v9 | 0x2D0B11D6)) ^ 0x6CA645A2)) ^ 0x48449A90;
  v5 = -35 * ((*(v1 - 4) + *v0) ^ 0xD2);
  (*&v3[8 * (byte_9C750[byte_A8EE0[v5] ^ 0xE2] ^ v5) + 17800])(&v9);
  __asm { BRAA            X8, X17 }
}

void sub_50274()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x50288);
}

_BYTE *sub_50350(_BYTE *result, unsigned int a2, unint64_t a3)
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

uint64_t sub_5050C(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_5076C(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_50900(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_50AF4(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_50C74(uint64_t a1)
{
  v1 = *(&off_C6C70 + ((107 * (dword_C8B68 ^ 0xF9 ^ qword_C8B98)) ^ byte_AC4E0[byte_B8670[(107 * (dword_C8B68 ^ 0xF9 ^ qword_C8B98))] ^ 0x3A]) - 13);
  v2 = *(v1 - 4);
  v3 = *(&off_C6C70 + (byte_B168C[(byte_AC3E4[(107 * (v2 ^ qword_C8B98 ^ 0xF9)) - 4] ^ 0xCD) - 12] ^ (107 * (v2 ^ qword_C8B98 ^ 0xF9))) - 49);
  v4 = (*(v3 - 4) ^ v2) - &v6;
  *(v1 - 4) = 1010482283 * (v4 + 0x5450BF49BFD4E907);
  *(v3 - 4) = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  v7 = 1104 - 143681137 * (((&v7 | 0x9370951A) - (&v7 & 0x9370951A)) ^ 0x47D78940);
  v8 = a1;
  LOBYTE(v3) = 107 * ((*(v3 - 4) + *(v1 - 4)) ^ 0xF9);
  return (*(*(&off_C6C70 + ((107 * ((qword_C8B98 + dword_C8B68) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((qword_C8B98 + dword_C8B68) ^ 0xF9))] ^ 0x3A]) - 82) + (byte_B4FF4[(byte_B158C[v3 - 12] ^ 0xAD) - 4] ^ v3) + 2029))(&v7);
}

uint64_t sub_50FA8(uint64_t a1)
{
  v1 = *(&off_C6C70 + ((107 * (dword_C8C38 ^ 0xF9 ^ qword_C8B98)) ^ byte_B1680[byte_AC3E0[(107 * (dword_C8C38 ^ 0xF9 ^ qword_C8B98))] ^ 0xD]) - 207);
  v2 = *(&off_C6C70 + (byte_B1680[byte_AC3E0[(107 * ((qword_C8B98 - *v1) ^ 0xF9))] ^ 0xD] ^ (107 * ((qword_C8B98 - *v1) ^ 0xF9))) - 224);
  v3 = (*(v2 - 4) - *v1) ^ &v5;
  *v1 = 1010482283 * v3 - 0x5450BF49BFD4E907;
  *(v2 - 4) = 1010482283 * (v3 ^ 0xABAF40B6402B16F9);
  v7 = 1785193651 * ((((2 * (&v6 ^ 0x8B78F7EF)) | 0x59E945FC) - (&v6 ^ 0x8B78F7EF) - 754230014) ^ 0xB450B931) + 421;
  v6 = a1;
  LODWORD(v2) = 1010482283 * (*v1 ^ 0x402B16F9 ^ *(v2 - 4));
  return (*(*(&off_C6C70 + ((107 * ((qword_C8B98 - dword_C8C38) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((qword_C8B98 - dword_C8C38) ^ 0xF9))] ^ 0xF6]) - 55) + (v2 ^ byte_B1680[byte_AC3E0[v2] ^ 0xD]) + 2028))(&v6);
}

uint64_t sub_51318(uint64_t a1)
{
  v1 = *(&off_C6C70 + ((107 * ((qword_C8B98 - dword_C8B60) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((qword_C8B98 - dword_C8B60) ^ 0xF9))] ^ 0x79]) - 4);
  v2 = *(&off_C6C70 + (byte_AC4E0[byte_B8670[(107 * ((qword_C8B98 - *v1) ^ 0xF9))] ^ 0x79] ^ (107 * ((qword_C8B98 - *v1) ^ 0xF9))) - 22);
  v3 = &v5[*v1 + *(v2 - 4)];
  *v1 = 1010482283 * (v3 + 0x5450BF49BFD4E907);
  *(v2 - 4) = 1010482283 * (v3 ^ 0xABAF40B6402B16F9);
  v6 = a1;
  v7 = (1785193651 * (&v6 ^ 0x13DCEC20)) ^ 0x2C2;
  LOBYTE(v2) = 107 * ((*(v2 - 4) - *v1) ^ 0xF9);
  (*(*(&off_C6C70 + ((107 * (dword_C8B60 ^ 0xF9 ^ qword_C8B98)) ^ byte_AC4E0[byte_B8670[(107 * (dword_C8B60 ^ 0xF9 ^ qword_C8B98))] ^ 0xF6]) - 55) + (v2 ^ byte_AC4E0[byte_B8670[v2] ^ 0x8F]) + 2261))(&v6);
  return v8;
}

uint64_t sub_516E8@<X0>(_OWORD *a1@<X8>)
{
  v6 = a1[1];
  v7 = (v5 + v1);
  *v7 = *a1;
  v7[1] = v6;
  LODWORD(v7) = ((v3 + 1049) ^ 0x71FLL) == (v2 & 0x60);
  return (*(v4 + 8 * (((4 * v7) | (16 * v7)) ^ v3)))();
}

uint64_t sub_51784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = v14 & 0xFFFFFFF8;
  v18 = *(v16 + 8 * ((774 * (((v15 - 931) | 0x278) - 753 == v17)) ^ (v15 - 8)));
  return v18(a1, a2, a3, v17, 774, v18, a7, a8, a9, a10, a11, a12, a13, a14);
}

void Ehn34khqq1jgEJw()
{
  v0 = *(&off_C6C70 + ((107 * ((qword_C8B98 + dword_C8C30) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((qword_C8B98 + dword_C8C30) ^ 0xF9))] ^ 0xF6]) - 15);
  v1 = *(&off_C6C70 + (byte_AC4E0[byte_B8670[(107 * (*v0 ^ qword_C8B98 ^ 0xF9))] ^ 0xF6] ^ (107 * (*v0 ^ qword_C8B98 ^ 0xF9))) - 103);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = 1010482283 * (v2 + 0x5450BF49BFD4E907);
  *(v1 - 4) = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v5[0] = (1037613739 * ((((2 * v5) | 0xB144690A) - v5 + 660458363) ^ 0x9A019FA)) ^ 0x9617D40F;
  LOBYTE(v1) = 107 * ((*(v1 - 4) - *v0) ^ 0xF9);
  v3 = *(&off_C6C70 + ((107 * (dword_C8C30 ^ 0xF9 ^ qword_C8B98)) ^ byte_B4FF0[byte_B1580[(107 * (dword_C8C30 ^ 0xF9 ^ qword_C8B98))] ^ 0xAD]) - 149) - 8;
  (*&v3[8 * (v1 ^ byte_AC4E0[byte_B8670[v1] ^ 0x79]) + 17560])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_51A50()
{
  STACK[0x260] = v1 - 112;
  STACK[0x4F8] = v1 - 112;
  return v0();
}

uint64_t sub_51A6C()
{
  v6 = 17 * LODWORD(STACK[0x2F4]);
  v7 = (v5 + 4 * v0);
  v8 = *v7;
  LODWORD(v7) = 833381725 * ((*(*STACK[0x300] + (*STACK[0x308] & 0x5135FB80)) ^ v7) & 0x7FFFFFFF);
  LODWORD(v7) = v7 ^ (v7 >> 16);
  v9 = 833381725 * v7;
  *(v4 + 4 * v0) ^= v8 ^ ((((v3 - 929) ^ v0) & v0) >> (__clz((v3 - 929) ^ v0 | 1) ^ 0x1F)) & 1 ^ *(*(&off_C6C70 + v3 - 841) + HIBYTE(v9)) ^ *(*(&off_C6C70 + SLODWORD(STACK[0x2EC])) + HIBYTE(v9) - 2) ^ *(*(&off_C6C70 + SLODWORD(STACK[0x2F0])) + HIBYTE(v9) + 1) ^ (v7 * (v6 + 1700592729)) ^ v9 ^ (-471850983 * ((833381725 * v7) >> 24));
  return (*(v2 + 8 * (((((v6 + 881763406) & 0xCB715BAE) + 459) * (v1 == 1)) ^ v6)))();
}

void sub_51BF0(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_51E08(uint64_t a1)
{
  v1 = 1082434553 * ((-2 - ((a1 | 0x87804AFB) + (~a1 | 0x787FB504))) ^ 0xE338438E);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 24) + v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1726767306;
  v5 = v4 - 1726767306 < 0;
  v7 = 1726767306 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_C6C70 + v2 - 301) + ((255 * ((((v2 + 1238) ^ ((v3 - 256085926) < (4 * v7))) & 1) == 0)) ^ v2) - 1))();
}

uint64_t sub_51F64@<X0>(uint64_t a1@<X1>, int a2@<W4>, int a3@<W8>)
{
  v9 = v3 - 2;
  v10 = v4 + 2;
  *(v9 + (a3 ^ (a2 + 354) ^ (a1 + 86))) = (v10 ^ v6) * (v10 + 17);
  *(v9 + 90) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v5 == 2) * v7) ^ a3)))();
}

void sub_523E0(uint64_t a1)
{
  v2 = *(&off_C6C70 + ((107 * ((qword_C8B98 - dword_C8BA8) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((qword_C8B98 - dword_C8BA8) ^ 0xF9))] ^ 0x8F]) + 69);
  v3 = *(v2 - 4);
  v4 = *(&off_C6C70 + ((107 * (v3 ^ qword_C8B98 ^ 0xF9)) ^ byte_AC1E0[byte_B8470[(107 * (v3 ^ qword_C8B98 ^ 0xF9))] ^ 0xB8]) - 9);
  v5 = (*(v4 - 4) + v3) ^ &v9;
  v6 = 1010482283 * v5 - 0x5450BF49BFD4E907;
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_C6C70 + ((107 * (dword_C8BA8 ^ 0xF9 ^ qword_C8B98)) ^ byte_AC4E0[byte_B8670[(107 * (dword_C8BA8 ^ 0xF9 ^ qword_C8B98))] ^ 0xA4]) - 68) - 8;
  (*&v8[8 * (byte_AC4E0[byte_B8670[(107 * ((v7 + v4) ^ 0xF9))] ^ 0x3A] ^ (107 * ((v7 + v4) ^ 0xF9))) + 16392])(*(&off_C6C70 + ((107 * ((v7 - v4) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((v7 - v4) ^ 0xF9))] ^ 0xF6]) + 49), sub_52D28);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_525C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, _BYTE *a12, int a13, char a14, uint64_t a15, uint64_t a16, _BYTE *a17, char *a18, int a19, unsigned int a20)
{
  a20 = v20 + 1252 + 210068311 * (((&a17 | 0x63E96607) - &a17 + (&a17 & 0x9C1699F8)) ^ 0x9162C9EF);
  a17 = a12;
  a18 = &a11;
  (*(v22 + 8 * (v20 + 1958)))(&a17);
  a17 = a12;
  a18 = &a14;
  a20 = v20 + 1252 + 210068311 * ((((2 * &a17) | 0xD326B718) - &a17 - 1771264908) ^ 0x9B18F464);
  (*(v22 + 8 * (v20 + 1958)))(&a17);
  LODWORD(a17) = v20 - 50899313 * ((((&a17 | 0x421F566A) ^ 0xFFFFFFFE) - (~&a17 | 0xBDE0A995)) ^ 0x75816DC3) + 1156;
  a18 = a12;
  v23 = (*(v22 + 8 * (v20 + 1990)))(&a17);
  return (*(v22 + 8 * ((((((23 * (v20 ^ 0x10E)) ^ (a19 == v21)) & 1) == 0) * (((v20 + 1418989340) | 0xA3032203) + 141086164)) ^ v20)))(v23);
}

uint64_t sub_52760@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, unsigned __int8 *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = &STACK[0x18A0] + v57;
  *v60 = *a5;
  *(v60 + 1) = *(a5 + 1);
  *(v60 + 9) = *(a5 + 9);
  *(v60 + 13) = *(a5 + 13);
  v60[15] = a5[15];
  v62 = *a5;
  v61 = *(a5 + 1);
  *(v60 + 2) = v62;
  *(v60 + 3) = v61;
  v63 = *(v59 + 8 * (v58 ^ 0x1BB)) - 12;
  v64 = *(v59 + 8 * (v58 - 299)) - 4;
  v65 = *(v64 + (v60[15] ^ 0x74));
  v66 = *(v59 + 8 * (v58 - 423)) - 8;
  v67 = *(v66 + (v60[2] ^ 0xA4));
  v68 = v67 ^ (v67 >> 5) ^ (v67 >> 3);
  v69 = *(v59 + 8 * (v58 ^ 0x15C)) - 4;
  v70 = *(v69 + (v60[12] ^ 0x28));
  v71 = (((v70 ^ (v70 >> 3) ^ (v70 >> 2) ^ a3) << 24) ^ 0x9CF9803E) & (v65 ^ 0xFFF9F1A6) | v65 & 0xFFFFFFC1;
  v72 = *(v69 + (*v60 ^ 0xBBLL));
  v73 = *(v63 + (v60[13] ^ 0xCFLL));
  v74 = (((v72 ^ (v72 >> 2) ^ ((v72 >> 3) | 0x20) ^ 0x2A) << 24) ^ 0xDCC146C5) & ((v68 << 8) | 0xFFCD00F5);
  v75 = (v68 << 8) & 0xB900;
  v76 = ((19 * v73 + 46) ^ (76 * v73 - 116)) << 16;
  v77 = *(v64 + (v60[3] ^ 0xF1));
  LODWORD(v62) = ((v74 | v75) ^ 0x9D97A420) & (v77 ^ 0xFFDFFFAE);
  v78 = v77 & 0x1A;
  LOBYTE(v77) = *(v63 + (v60[1] ^ a2));
  v79 = (*(v66 + (v60[14] ^ 0xC9)) ^ (*(v66 + (v60[14] ^ 0xC9)) >> 5) ^ (*(v66 + (v60[14] ^ 0xC9)) >> 3)) << 8;
  LODWORD(STACK[0x288]) = v62 & 0x52409144 ^ 0xC79EAAD5 ^ ((((19 * v77 + 46) ^ (76 * v77 - 116)) << 16) ^ 0xADB66EBB) & ((v78 | v62) ^ 0x2BA93D48);
  LODWORD(STACK[0x2D0]) = v79 & 0xFFFFE1FF ^ 0x367E1120 ^ (v79 ^ 0xFFFF7EFF) & ((v76 & 0xEB0000 | (v71 ^ 0x2EED7759) & (v76 ^ 0xFF2FF7FF)) ^ 0x88A0E9BC);
  return sub_820F4(1395934839, 19, 76, 81, a3, 42, 0, a4, a6, a7, a8, a9, a10, a1, a12, a13, a14, a15, a16, STACK[0x590], STACK[0x588], v69, v66, v64, 0x2EFFFFFF8CLL, v63, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

void sub_527C8(uint64_t a1)
{
  v1 = 1388665877 * (((a1 | 0x37BF73D7) - (a1 & 0x37BF73D7)) ^ 0xBA12113B);
  v2 = *(a1 + 48) - v1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5 = 742307843 * ((2 * ((v9 ^ 0x4E936EDF) & 0x2DFAC602) - (v9 ^ 0x4E936EDF) + 1376074237) ^ 0x2B4DA77);
  v6 = (*(a1 + 44) ^ v1) - v5;
  v7 = -1296686805 * (*(a1 + 16) ^ v1);
  v9[1] = *(a1 + 56);
  v9[2] = v3;
  v12 = v4;
  v14 = v6 + 543731998;
  v10 = v7 - v5 - 1084092442;
  v11 = v2 + 1421512341 + v5;
  v9[0] = v4;
  v8 = *(&off_C6C70 + v2 - 101) - 8;
  (*&v8[8 * v2 + 16272])(v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_5294C@<X0>(int a1@<W8>)
{
  v4 = (v1 - 1035336572) & 0x3DB5F536;
  v5 = v2 + a1;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v3 + 8 * (((v6 <= 2 * (v4 ^ 0x221) - 1516) * (((v4 + 563) | 0x412) ^ 0x767)) ^ v4)))();
}

uint64_t sub_529AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0x460];
  v7 = LODWORD(STACK[0x55C]);
  STACK[0x488] = *(v3 + 8 * (v4 - 907));
  STACK[0x4F8] = ((v4 - 1) ^ 0xFFFFFFFFFFFFFF6FLL) + STACK[0x260] + ((v4 + 1194921987) & 0xB8C6EFFC);
  STACK[0x360] = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(v3 + 8 * ((22 * v9) ^ (v4 - 1))))(a1, a2, a3, v7);
}

uint64_t sub_529E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (v7 <= v8 - v9)
  {
    v11 = v8 - v9;
  }

  else
  {
    v11 = v7;
  }

  return (*(v10 + 8 * ((((((a7 + 421655705) & 0xE6DE0CF4) - 299) ^ 0x2CE) * ((v11 + 1) > 0x23)) ^ a7)))(a1, a2, a3, 0);
}

uint64_t sub_52A34(int8x16_t *a1, int8x16_t a2, double a3, double a4, int8x16_t a5)
{
  v10 = (v7 + v6);
  v11 = vaddq_s8(vsubq_s8(v10[1], vandq_s8(vaddq_s8(v10[1], v10[1]), a5)), a2);
  *a1 = vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a5)), a2);
  a1[1] = v11;
  return (*(v8 + 8 * (((v5 == 1515) * v9) ^ v5)))();
}

uint64_t sub_52B0C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = (v3 ^ 0xCF) + *(a1 + v5) - ((2 * *(a1 + v5)) & 0x64) + 61;
  return (*(v4 + 8 * ((112 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_52BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = (v20 - 562) | 0x450;
  v24 = 1785193651 * ((v22 + 1766605422 - 2 * ((v22 - 136) & 0x694C42F6)) ^ 0x7A90AED6);
  *(v22 - 128) = v20 - v24 + 454;
  *(v22 - 124) = (v21 ^ 0x7FBD1A97) - v24 + ((v23 - 8769486) & (2 * v21)) - 287314055;
  *(v22 - 136) = &a17;
  (*(v19 + 8 * (v20 + 1521)))(v22 - 136);
  *(v22 - 120) = a15;
  *(v22 - 128) = v23 - 143681137 * (((v18 | (v22 - 136)) - ((v22 - 136) & v18)) ^ 0xBB00B646) + 15;
  *(v22 - 136) = a16;
  v25 = (*(v19 + 8 * (v23 ^ 0xC47)))(v22 - 136);
  return (*(v19 + 8 * ((477 * (*(v22 - 112) > ((v17 + 20 * (v23 ^ 0x4F6) - 136) ^ (v23 - 178056710) & 0xA9CE9C9u))) ^ v23)))(v25);
}

uint64_t sub_52D28()
{
  v0 = *(&off_C6C70 + ((107 * ((qword_C8B98 + dword_C8BA0) ^ 0xF9)) ^ byte_B4FF0[byte_B1580[(107 * ((qword_C8B98 + dword_C8BA0) ^ 0xF9))] ^ 0x1A]) + 30);
  v1 = *(v0 - 4);
  v2 = *(&off_C6C70 + (byte_AC2E0[byte_B8570[(107 * (v1 ^ qword_C8B98 ^ 0xF9))] ^ 0x16] ^ (107 * (v1 ^ qword_C8B98 ^ 0xF9))) - 184);
  v3 = &v5[v1 + *(v2 - 4)];
  *(v0 - 4) = 1010482283 * v3 - 0x29E5798DF8B489EDLL;
  *(v2 - 4) = 1010482283 * (v3 ^ 0xABAF40B6402B16F9);
  v7 = (1785193651 * ((-2039063195 - (&v6 | 0x86765D65) + (&v6 | 0x7989A29A)) ^ 0x6A554EBA)) ^ 0x2C2;
  LOBYTE(v3) = 107 * (*(v0 - 4) ^ 0xF9 ^ *(v2 - 4));
  v6 = *(&off_C6C70 + (byte_B168C[(byte_AC3E4[v3 - 4] ^ 0xB3) - 12] ^ v3) - 107);
  LOBYTE(v0) = 107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9);
  return (*(*(&off_C6C70 + ((107 * ((qword_C8B98 + dword_C8BA0) ^ 0xF9)) ^ byte_B1680[byte_AC3E0[(107 * ((qword_C8B98 + dword_C8BA0) ^ 0xF9))] ^ 0xCD]) - 1) + (v0 ^ byte_AC2E0[byte_B8570[v0] ^ 0x16]) + 2072))(&v6);
}

void sub_52F6C(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_5313C()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xB3B)))();
  v4 = (v0 - 224);
  STACK[0x4F8] += v4 ^ 0xFFFFFFFFFFFFFD34;
  return (*(v1 + 8 * (v4 ^ (1761 * (v2 == -1261164275)))))(v3);
}

uint64_t sub_5327C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v4 + 16);
  *(v6 - 112) = veorq_s8(**(v4 + 8), xmmword_B8780);
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = *(v3 + 8 * ((117 * v9) ^ a3));
  *(v6 - 140) = -42900;
  return v10(a1, a2);
}

uint64_t sub_53334()
{
  *(v7 - 112) = v6 + 1082434553 * ((((2 * (v7 - 144)) | 0xBB2F7668) - (v7 - 144) - 1570224948) ^ 0xC6D04DBE) + 187;
  *(v7 - 128) = v1;
  *(v7 - 120) = v2;
  *(v7 - 144) = v3;
  *(v7 - 136) = v1;
  (*(v4 + 8 * (v6 + 505)))(v7 - 144);
  v8 = 2066391179 * ((((v7 - 144) | 0x5C2D82AF) - ((v7 - 144) & 0x5C2D82AF)) ^ 0xF30A00B7);
  *(v7 - 144) = v8 + v6 - 1219;
  *(v7 - 128) = (v6 - 1469 + v5 + 718822813) ^ v8;
  *(v7 - 136) = v0;
  v9 = (*(v4 + 8 * (v6 + 497)))(v7 - 144);
  return (*(v4 + 8 * (v6 ^ (16 * (*(v7 - 140) != 262715241)))))(v9);
}

uint64_t sub_5342C()
{
  v4 = (v0 - 1650) | 0x441;
  v5 = v4 ^ 0x7E5;
  (*(v2 + 8 * (v4 ^ 0xC86)))(*STACK[0x280], STACK[0x448], LODWORD(STACK[0x430]));
  v6 = LODWORD(STACK[0x504]);
  v7 = 1564307779 * ((~v1 & 0xD47784044BE05D52 | v1 & 0x2B887BFBB41FA2ADLL) ^ 0xF1B4707EDCED9141);
  *(v3 - 184) = v7;
  *(v3 - 180) = ((v5 - 1668183303) ^ 0x90) + v7;
  *(v3 - 208) = v7 ^ 0x4B2B72D7;
  *(v3 - 192) = v6 + v7;
  *(v3 - 176) = v5 - v7 - 2030745604;
  *(v3 - 216) = v5 - 1668183303 - v7;
  *(v3 - 212) = ((v5 - 1668183303) ^ 0x13) + v7;
  v8 = (*(v2 + 8 * (v5 + 1329)))(v3 - 216);
  return (*(v2 + 8 * *(v3 - 200)))(v8);
}

uint64_t sub_53550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2 - 16);
  *(a1 + a2 - 32) = *(v3 + a2 - 32);
  *(a1 + a2 - 16) = v5;
  return (*(v4 + 8 * ((477 * ((((a2 & 0xFFFFFFE0) == 32) ^ (27 * (v2 ^ 0xB5))) & 1)) ^ (v2 - 180))))();
}

uint64_t sub_535C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = ((v18 & 0xC728A1AE) << SBYTE4(a17)) & (v18 ^ 0xE6229D0E) ^ v18 & 0xC728A1AE;
  v22 = ((2 * (v18 ^ 0x6E339D06)) ^ 0x52367950) & (v18 ^ 0x6E339D06) ^ (2 * (v18 ^ 0x6E339D06)) & 0xA91B3CA8;
  v23 = v22 ^ 0xA90904A8;
  v24 = (v22 ^ 0x800A0800) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xA46CF2A0) & v23 ^ (4 * v23) & 0xA91B3CA8;
  v26 = (v25 ^ 0xA00830A0) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x9130C08)) ^ 0x91B3CA80) & (v25 ^ 0x9130C08) ^ (16 * (v25 ^ 0x9130C08)) & 0xA91B3CA0;
  v28 = v26 ^ 0xA91B3CA8 ^ (v27 ^ 0x81130800) & (v26 << 8);
  HIDWORD(a15) = v18 ^ (2 * ((v28 << 16) & 0x291B0000 ^ v28 ^ ((v28 << 16) ^ 0x3CA80000) & (((v27 ^ 0x28083428) << 8) & 0x291B0000 ^ 0x20030000 ^ (((v27 ^ 0x28083428) << 8) ^ 0x1B3C0000) & (v27 ^ 0x28083428)))) ^ 0xFFFFFFCC;
  return (*(v19 + 8 * ((81 * ((STACK[0x28C] & 0x3F) < 0x3C)) ^ (a4 + 535))))(a1, a2, a3, a4, *(v20 + 8), a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_5378C()
{
  v2 = (*(v0 + 8 * (v1 ^ 0xB93)))(1576, 0x105004009637391);
  STACK[0x378] = v2;
  return (*(v0 + 8 * (((v2 == 0) * (201 * (v1 ^ 0x3E6) + ((v1 + 1483308059) & 0xA79683A4) - 1305)) ^ v1)))();
}

uint64_t sub_5388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v20 + 76 + 742307843 * ((~((v21 - 136) ^ 0x66D1BF4E | 0xA2B0F45B) + (((v21 - 136) ^ 0x66D1BF4E) & 0xA2B0F45B)) ^ 0x25BC39BF) + 1309;
  *(v21 - 136) = &a17;
  *(v21 - 120) = v19;
  v22 = (*(v17 + 8 * ((v20 + 76) ^ 0x93F)))(v21 - 136);
  return (*(v17 + 8 * (((v18 == ((v20 - 141) ^ 0xC4)) * (v20 + 424)) ^ (v20 + 76))))(v22);
}

uint64_t sub_53958@<X0>(uint64_t a1@<X8>)
{
  v6 = (v4 ^ 0x11u) - 641 - 1325;
  *(v1 - 7 + (v6 ^ v3) + v2) = vadd_s8(vsub_s8(*(a1 - 7 + (v6 ^ v3) + v2), vand_s8(vadd_s8(*(a1 - 7 + (v6 ^ v3) + v2), *(a1 - 7 + (v6 ^ v3) + v2)), 0x6464646464646464)), 0x3232323232323232);
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFF8) - 8 != v3) | (16 * ((v2 & 0xFFFFFFF8) - 8 != v3))) ^ v4 ^ 0x11)))();
}

uint64_t sub_53A3C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_53A54(uint64_t a1)
{
  v1 = 2066391179 * ((-2 - ((a1 | 0xDAF47D5D) + (~a1 | 0x250B82A2))) ^ 0x8A2C00BA);
  v2 = *a1 - v1;
  v3 = *(a1 + 16) ^ v1;
  v5 = v3 - 1714952872;
  v4 = v3 - 1714952872 < 0;
  v6 = 1714952872 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 1726767306;
  v4 = v7 - 1726767306 < 0;
  v9 = 1726767306 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_C6C70 + v2 - 406) + ((2478 * ((v6 >> 5) < v9)) ^ v2) - 1))();
}

uint64_t sub_53B5C(uint64_t result)
{
  v1 = 1361651671 * (((result | 0x43FE8A9C55C36F0ALL) - result + (result & 0xBC017563AA3C90F5)) ^ 0x9053F9A586E19F86);
  v2 = *(result + 40) - v1;
  v3 = *result ^ v1;
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = v4 + v1;
  v7 = v5 + v1;
  v8 = *(result + 32) + v1;
  v9 = *(result + 4) + v1;
  v10 = v5 != v4;
  if (v8)
  {
    v10 = v7 >= v6;
  }

  if (v10)
  {
    v2 = v3;
  }

  *(result + 36) = v2 ^ v9;
  return result;
}

uint64_t sub_53C04(uint64_t a1)
{
  v1 = *a1 - 1082434553 * ((994318387 - (a1 | 0x3B441833) + (a1 | 0xC4BBE7CC)) ^ 0x5FFC1146) + 506;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 1726768246;
  v3 = v2 - 1726768246 < 0;
  v5 = 1726768246 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_C6C70 + v1 - 869) + ((67 * (v5 > ((v1 - 506) ^ 0x1B2))) | v1) - 1))();
}

uint64_t sub_53D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  v51 = STACK[0x530];
  STACK[0x458] = *(v50 + 8 * (STACK[0x340] - 846));
  v52 = STACK[0x290];
  STACK[0x5A8] = v51;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v52;
  return (*(v50 + 8 * ((11 * (((((a50 & 0x943EC3BB) + 457) ^ (((((a50 & 0x943EC3BB) + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v51 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ a50 & 0x943EC3BB)))();
}

uint64_t sub_5420C(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  a6.i64[0] = *(v11 + 4);
  a6.i32[2] = *(v11 + 12);
  v13 = vextq_s8(a1, a6, 0xCuLL);
  v14 = a6;
  v14.i32[3] = *(v11 + 16);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a3), vandq_s8(v13, a2)), 1uLL), *(v11 - 908));
  v13.i32[0] = *(v8 + 4 * (*(v11 + 4) & 1));
  v13.i32[1] = *(v8 + 4 * (*(v11 + 8) & v9));
  v13.i32[2] = *(v8 + 4 * (*(v11 + 12) & 1));
  v13.i32[3] = *(v8 + 4 * (v14.i8[12] & 1));
  *v11 = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a4)), a5), v13);
  return (*(v12 + 8 * (((v7 == 4) * v10) ^ v6)))();
}

void sub_542A0(int a1@<W8>)
{
  *v6 = *v2;
  *v5 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x219721AE219721AELL;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) | (((a1 - 679632203) & 0x28825FB7) - 914);
  *(v2 + 16) = 1941292484;
  *(v2 + 20) = v4;
  *v7 = v3;
}

void sub_5485C(_DWORD *a1)
{
  v1 = 1082434553 * ((2 * (a1 & 0x312F7059) - a1 - 825192538) ^ 0x5597792C);
  v2 = a1[1] ^ v1;
  v3 = *a1 ^ v1;
  v5 = (v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 637534208;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_54930@<X0>(unsigned int a1@<W8>)
{
  v5 = a1 + 670899822 < v1 + 239256766;
  if (a1 > ((233 * (v2 ^ 0x381)) ^ (v4 + 164)) != v1 + 239256766 < (v2 + 670898921))
  {
    v5 = v1 + 239256766 < (v2 + 670898921);
  }

  return (*(v3 + 8 * ((1295 * v5) ^ v2)))();
}

uint64_t sub_549A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, int a19, uint64_t a20, char *a21, int a22)
{
  v25 = 742307843 * ((&a17 + 532274142 - 2 * (&a17 & 0x1FB9DBDE)) ^ 0x19B568B);
  a19 = v24 - v25 - 1197042732;
  a17 = v25 - 1023075472;
  a22 = v25 ^ 0x20384770;
  a20 = a12;
  a21 = &a14;
  v26 = (*(v23 + 8 * (v24 + 1934)))(&a17);
  return (*(v23 + 8 * ((39 * (((((v24 ^ 0x1FC) + 330) ^ (a18 == v22)) & 1) == 0)) ^ v24)))(v26);
}

uint64_t sub_54AB0@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x4C4];
  v8 = ((-2138549497 - ((v6 - 216) | 0x80885307) + ((v6 - 216) | 0x7F77ACF8)) ^ 0xABD0B0A2) * v5;
  *(v6 - 216) = v1 - v8 - 2013066669;
  *(v6 - 208) = v4;
  *(v6 - 200) = a1;
  *(v6 - 192) = (v1 + 1066531512) * v3 - v8 + 541753075;
  *(v6 - 188) = v8 + 197060377 * v7 + 1275665887;
  v9 = STACK[0x2B8];
  *(v6 - 184) = STACK[0x2C0];
  *(v6 - 176) = v9;
  v10 = (*(v2 + 8 * (v1 ^ 0x859)))(v6 - 216);
  v11 = *(v6 - 212);
  LODWORD(STACK[0x504]) = v11;
  return (*(v2 + 8 * ((1896 * (v11 == -1261164275)) ^ v1)))(v10);
}

uint64_t sub_54C6C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4E8]) = a1;
  v6 = (*(v2 + 8 * (v1 + 1346)))(v3 + 4, 0);
  v7 = v3[4] + 877119384 - ((2 * v3[4]) & 0x688F8F30);
  v3[1] = v3[6] + 877119384 - ((v3[6] << ((v1 ^ 3) + 93)) & 0x688F8F30);
  v3[2] = v7;
  v8 = (*(v2 + 8 * (v1 + 1309)))(v6);
  v3[3] = v8 + 877119384 - ((2 * v8) & 0x688F8F30);
  v9 = (*(v2 + 8 * (v1 ^ 0xB63)))();
  *v3 = v9 + 877119384 - ((2 * v9) & 0x688F8F30);
  v10 = (1664525 * (*v4 ^ (*v4 >> 30))) ^ v4[1];
  v4[1] = (((*v3 ^ 0xC5ACD47C) + 978529156) ^ ((*v3 ^ 0x7EAF2851) - 2125408337) ^ ((*v3 ^ 0x8F443BB5) + 1891353675)) + 1230503938 + (((v10 ^ 0xD31A3EAF) + 972421435) ^ ((v10 ^ 0x242A5BA1) - 825910219) ^ ((v10 ^ 0xF730650E) + 501195420));
  v11 = STACK[0x338];
  v12 = (v1 ^ 3) + 1853523700 - STACK[0x338];
  *(v5 - 216) = (((v1 ^ 3) + 1853523700) ^ 0x6D) - STACK[0x338];
  *(v5 - 188) = ((v1 ^ 3) + 1853523682) ^ v11;
  *(v5 - 184) = v11 + (v1 ^ 3) + 1212454636;
  *(v5 - 196) = v12;
  *(v5 - 192) = -v11;
  *(v5 - 208) = 2 - v11;
  *(v5 - 176) = v11 + 623;
  v13 = (*(v2 + 8 * ((v1 ^ 3) + 1296)))(v5 - 216);
  return (*(v2 + 8 * *(v5 - 200)))(v13);
}

uint64_t sub_54EBC()
{
  v2 = STACK[0x2F8] & 0x25D4833B;
  *v1 = v1[623] ^ (STACK[0x340] - 309) ^ 0x26E ^ ((((STACK[0x340] - 309) ^ v0) & v0) >> (__clz((STACK[0x340] - 309) ^ v0 | 1) ^ 0x1F)) & 1;
  return sub_70B00(v2);
}

uint64_t sub_54F1C@<X0>(int a1@<W8>)
{
  v6 = v1 + 2;
  v7 = (v2 - 2);
  *v7 = ((v4 - 121) ^ v6) * (v6 + 17);
  *(v7 - 1) = (v6 ^ 0xBB) * (v6 + 18);
  return (*(v5 + 8 * ((62 * (v3 == 2)) ^ a1)))();
}

uint64_t sub_54FDC()
{
  v5 = 1785193651 * ((v4 - 216) ^ 0x13DCEC20);
  *(v4 - 216) = (v1 + 618) ^ v5;
  *(v4 - 200) = v0 - v5 + 1437952498;
  *(v4 - 208) = v3;
  v6 = (*(v2 + 8 * (v1 ^ 0xB7F)))(v4 - 216);
  return (STACK[0x458])(v6);
}

uint64_t sub_5504C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = v3 - 1;
  STACK[0x470] = v8;
  *(a1 + v8) = (v2 + 1 + ((a2 - 124) ^ v5)) * ((v2 + 1) ^ v4);
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ a2)))();
}

uint64_t sub_55058()
{
  v10.val[1].i64[0] = (v3 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + 9) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF ^ 8;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v7 = vqtbl4q_s8(v11, xmmword_A9260).u64[0];
  v8.i64[0] = 0x7373737373737373;
  v8.i64[1] = 0x7373737373737373;
  v10.val[0].i64[0] = (v3 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.val[2].i64[0] = vqtbl4q_s8(v10, xmmword_A9260).u64[0];
  v11.val[2].i64[1] = v7;
  v11.val[0] = vrev64q_s8(vmulq_s8(v11.val[2], v8));
  *(v6 - 15 + v3 - 1) = veorq_s8(veorq_s8(veorq_s8(*(v0 + v10.val[0].i64[0] - 15), *(v6 - 15 + v3 - 1)), veorq_s8(*(v1 + v10.val[0].i64[0] - 15), *(v10.val[0].i64[0] + v2 - 14))), vextq_s8(v11.val[0], v11.val[0], 8uLL));
  return (*(v5 + 8 * ((1102 * (((v4 + 689) | 0x32Eu) - 2014 == (v3 & 0x10))) ^ v4)))();
}

void sub_552E8(uint64_t a1)
{
  v1 = 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_55424@<X0>(int a1@<W4>, unsigned int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v17 = ((a3 | 0x224) + 2138466600) & 0x8089925D;
  v18 = a16 - 1431841876 < (a1 + 1519336754);
  if (a16 - 1431841876 < a2 != a1 + 1519336754 < a2)
  {
    v18 = a1 + 1519336754 < a2;
  }

  return (*(v16 + 8 * ((v18 * (v17 ^ 0x4A7 ^ (v17 - 249) ^ 0x78B)) | v17)))();
}

void sub_55454(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = ((1815990229 - (&a3 | 0x6C3DCFD5) + (&a3 | 0x93C2302A)) ^ 0x801EDC0A) * a1;
  a3 = 1332270173 - v11;
  a6 = v7 - v11;
  a7 = v8 - v11 - 1251;
  a4 = 0;
  a5 = v9;
  (*(v10 + 8 * (v8 + 677)))(&a3);
  sub_679D0();
}

uint64_t sub_55578(int a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 & (((a8 + 136347067) | 0x67441433) - 1291370273) ^ (a2 ^ 0x8BF17611) & (v15 ^ v12) ^ 0xFD9EAFEF;
  v17 = *(v8 + 4 * (*(a5 + v10 + v13) - 45));
  v18 = (((a1 ^ 0xB00A3755) + 1341507755) ^ ((a1 ^ 0x7BEE1768) - 2079201128) ^ ((a1 ^ 0x9D817141) + 1652461247)) + *(a4 + 4 * (v10 + v13)) + ((v16 + v12 - ((2 * v16) & 0xACCAA2F8)) ^ v9) + 1136349886 + (((v17 ^ 0x77A1754) - 125441876) ^ ((v17 ^ 0x73840A08) - 1938033160) ^ ((v17 ^ 0xC02A3451) + 1070975919));
  v19 = *(a7 + v10 + v13);
  LOBYTE(v17) = (v19 + 22) ^ 0x2A;
  v20 = v17 & (2 * ((-23 - v19) & 0xD8)) ^ (-23 - v19) & 0xD8;
  v21 = v18 ^ ((v18 ^ 0x18931DA0) - 1644676847) ^ ((v18 ^ 0x4AC2BC1C) - 810968915) ^ ((v18 ^ 0x563A8104) - 749623883) ^ ((v18 ^ 0x7EFFFBF7) - 74129592) ^ 0x7A94DB4F;
  v22 = (((a2 ^ 0x71197385) - 1897493381) ^ ((a2 ^ 0xC83826B5) + 935844171) ^ ((a2 ^ 0xEF44044C) + 280755124)) - 1116590020 + ((v21 << (((v19 + 22) ^ (2 * (((2 * v17) ^ 0xE0) & v17 & (4 * v20) ^ v20))) & 0x1F ^ 8)) | (v21 >> (a3 - v19)));
  return (*(v11 + 8 * ((959 * (v10 + 1 == v14 + 48)) ^ a8)))(v15, v22 ^ ((v22 ^ 0xA2EAFD52) + 974773358) ^ ((v22 ^ 0xC0DF2F72) + 1479282254) ^ ((v22 ^ 0xF85EF31F) + 1622004257) ^ ((v22 ^ 0xFD67FFFF) + 1704255169) ^ 0x31698FBC);
}

uint64_t sub_558A8()
{
  v4 = *(v2 + 8 * (((v0 == 24) * ((v1 + 574) ^ 0x5ED)) | v1));
  STACK[0x308] = *(v3 + 8 * (v1 - 327));
  STACK[0x300] = *(v3 + 8 * (v1 ^ 0x123)) - 4;
  return v4();
}

uint64_t sub_558B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  *(v18 - 120) = &a12;
  *(v18 - 136) = &a14;
  *(v18 - 128) = v17 - ((182870043 - ((v18 - 136) | 0xAE6601B) + ((v18 - 136) | 0xF5199FE4)) ^ 0x21BE83BE) * v16 - 215;
  v19 = (*(v14 + 8 * (v17 ^ 0xD59)))(v18 - 136);
  return (*(v14 + 8 * ((772 * (*(v18 - 112) + v15 < ((19 * (v17 ^ 0x5AD)) ^ ((v17 ^ 0x293u) - 1058487692)))) ^ v17)))(v19);
}

uint64_t sub_55B4C@<X0>(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a3[3] ^ 0x32;
  v6 = (((*a3 ^ 0x32) << (((a1 + 40) | 0xC) ^ 0x14)) + ((a3[1] ^ 0x32) << 16) + ((a3[2] ^ 0x32) << 8)) | v5;
  **(v3 + 8) = v6 + v4 - 2 * (v6 & 0x34D4291D ^ v5 & 0x10);
  return sub_55BC0();
}

uint64_t sub_55C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 8 * (v26 ^ (v26 + 2005))))(a19 + a20, 0x100004077774924);
  v30 = (*(v27 + 8 * (v28 + v26 + 1621)))();
  *v29 = v30;
  v29[1] = 1812433253 * (((v30 ^ (v30 >> 30) ^ 0x9C9E93D2) + 1516069995) ^ ((v30 ^ (v30 >> 30) ^ 0xBA9880AD) + 2086369046) ^ ((a17 ^ v30 ^ (v30 >> 30) ^ 0x260610BB) - 523901752)) - 485604604;
  return (*(v27 + 8 * (a18 ^ 9)))(v30, 2627638226, 1516069995, 3130556589, 2086369046, 637931707, 3771065544, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_55D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = 1785193651 * ((~(v19 | 0x96B39AB) + (v19 & 0x96B39AB)) ^ 0xE5482A74);
  *(v23 - 128) = v22 - v24 + 1053;
  *(v23 - 124) = 1855785489 - v24;
  *(v23 - 136) = v18;
  (*(v17 + 8 * (v22 + 2120)))(v23 - 136);
  *(v23 - 136) = v20;
  *(v23 - 128) = a17;
  *(v23 - 120) = (v22 + 1651) ^ (1564307779 * a11);
  (*(v17 + 8 * (v22 ^ 0x810)))(v23 - 136);
  *(v23 - 128) = v22 - a10 * v21 + 1156;
  *(v23 - 136) = a17;
  *(v23 - 120) = v18;
  v25 = (*(v17 + 8 * (v22 + 2100)))(v23 - 136);
  return (*(v17 + 8 * (((*(v23 - 112) > 0x43A7A85Fu) * ((v22 ^ 0x4F) + 1261)) ^ v22)))(v25);
}

uint64_t sub_55F30@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v7 = *(*a2 + (v4 - 1941292481)) ^ 0x32;
  v8 = (((v6 - 2021593537) & 0x787F0FF1 ^ *(*a2 + (v4 - 1941292484)) ^ 0x23) << 24) | ((*(*a2 + (v6 ^ 0x8C4A3FDD) + v4) ^ 0x32) << 16) | ((*(*a2 + (v4 - 1941292482)) ^ 0x32) << 8) | v7;
  return (*(v3 + 8 * ((26 * (((v8 + v2 - 2 * (v8 & 0x34D4291D ^ v7 & 0x10)) & 0xFFFFFF ^ 0xD4290D) - (*a1 ^ v5) == -69821931)) ^ v6)))();
}

uint64_t sub_560AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v11 - 124);
  if (v12 == 2)
  {
    return (*(v10 + 8 * ((1624 * (*(v11 - 128) != 19 * (a5 ^ (a5 + 30)) - 646)) ^ (a5 + v9))))(212649602, 212649603, a9);
  }

  if (v12 != 1)
  {
    JUMPOUT(0x56194);
  }

  return (*(v10 + 8 * ((76 * (*(v11 - 128) != 0)) ^ (a5 + v9))))(212649602, 212649603, a9);
}

uint64_t sub_56200@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = a1 + 544;
  v6 = (*(v4 + 8 * (v5 ^ 0xF66)))(**(v3 + 8 * (v5 ^ 0x7AC)), va, ((((v2 - 963435087) & 0xFFFFF000 ^ 0xDA086827) + 305218553) ^ (((v2 - 963435087) & 0xFFFFF000 ^ 0xFD62B7C2) + 895196190) ^ (((((a1 - 1518749659) & 0x5A8647DA) - 635) ^ 0xEF53F724) + ((v2 - 963435087) & 0xFFFFF000 ^ 0x276ADFE5))) + 935777312, 1) != 0;
  return (*(v4 + 8 * ((118 * v6) ^ v5)))();
}

uint64_t sub_562DC(uint64_t result)
{
  if ((v2 + v3 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v4;
  }

  *(v1 + 4) = v6;
  *(result + 24) = 895728756;
  return result;
}

uint64_t sub_5631C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = v6 + 32;
  v10 = ((2 * (v5 ^ (a3 + 1482)) - 1397) ^ v9) + v4;
  v11 = *(a4 + v10 - 15);
  v12 = *(a4 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * ((896 * (v7 == v9)) ^ (a2 + v5 + 1014))))();
}

uint64_t sub_56430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, int a21, char *a22, int a23, int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a21 = 313566482;
  v31 = *(a2 + 8);
  v32 = 1082434553 * ((-1725705386 - (&a22 | 0x9923D356) + (&a22 | 0x66DC2CA9)) ^ 0xFD9BDA23);
  a24 = *(a2 + 4) - 530103060 + v32 + 501;
  a28 = &a21;
  a29 = v31;
  a22 = &a18;
  a25 = &a14;
  a26 = v32 + v29 + 164;
  a27 = &a16;
  v34 = (*(v30 + 8 * (v29 ^ 0x8BBu)))(&a22);
  return (*(v30 + 8 * (((a23 == -1261164275) * (((v29 + 363) ^ 0x170) + ((v29 + 363) | 0xD))) ^ v29)))(v34, a2);
}

uint64_t sub_56594(uint64_t result)
{
  v1 = 1388665877 * (((result | 0x2916B44FED2ABA0BLL) - (result & 0x2916B44FED2ABA0BLL)) ^ 0x1C6C24006087D8E7);
  v2 = *(result + 8) + v1;
  v3 = *(result + 32) ^ v1;
  v4 = v2 == v3;
  v5 = v2 > v3;
  v6 = v4;
  if (((*(result + 20) - v1) & 1) == 0)
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = result;
  }

  else
  {
    v7 = (result + 16);
  }

  *(result + 24) = *v7 ^ v1 ^ (*(result + 4) - v1);
  return result;
}

uint64_t sub_56628@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = a1 ^ 0x1E8u;
  *(a2 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4) = vadd_s8(vsub_s8(*(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4), vand_s8(vadd_s8(*(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4), *(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4)), 0x6464646464646464)), 0x3232323232323232);
  return (*(v2 + 8 * ((1485 * ((v4 & 0xFFFFFFF8) - 8 == v5)) ^ a1)))();
}

uint64_t sub_56790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v64 = *(v63 - 160);
  *(v63 - 128) = *(v63 - 164) ^ 0xCE5920C4;
  *(v63 - 132) = v64 ^ 0x1978C64A;
  *(v63 - 136) = *(v63 - 168) ^ 0x8AA361C;
  *(v63 - 140) = *(v63 - 156) ^ 0xDCB3F494;
  return sub_64EA8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_56804(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v45 = v44[396] ^ ((*v44 & 0x7FFFFFFE | v44[623] & 0x80000000) >> 1);
  v44[623] = (v45 + a4 - ((v45 << (a2 + ((v41 - 116) | 0x50) - 110)) & (((v41 + 1347484827) | 0x9201041) ^ 0x4EB37BDB))) ^ *(v43 + 4 * (*v44 & 1));
  return (*(v42 + 8 * ((212 * (a41 > 0x26F)) ^ v41)))();
}

void sub_56944(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0x8DEF8326) + (~a1 | 0x72107CD9))) ^ 0xFFBD1E35);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_569FC()
{
  v7 = *(v10 + 24);
  v8 = ((((v6 - 144) | 0xD03EDA8A) - (v6 - 144) + ((v6 - 144) & 0x2FC12570)) ^ 0x7F195892) * v5;
  *(v6 - 144) = v11;
  *(v6 - 136) = v8 + v1 + 1665;
  *(v6 - 132) = v8 + 1068377366;
  (*(v4 + 8 * (v1 + 2068)))(v6 - 144);
  *(v6 - 120) = v3;
  *(v6 - 112) = v11;
  *(v6 - 128) = v1 - ((2 * ((v6 - 144) & 0x63063E80) - (v6 - 144) - 1661353608) ^ 0x33DE4360) * v5 + 833;
  *(v6 - 104) = v2;
  *(v6 - 144) = v0;
  *(v6 - 136) = v0;
  (*(v4 + 8 * (v1 ^ 0x84E)))(v6 - 144);
  *(v6 - 128) = (v1 + 1559) ^ (1564307779 * (((v6 - 144) & 0xD90C3F48 | ~((v6 - 144) | 0xD90C3F48)) ^ 0xB1FE0CA4));
  *(v6 - 144) = v7;
  *(v6 - 136) = v0;
  return (*(v4 + 8 * (v1 ^ 0x874)))(v6 - 144);
}

uint64_t sub_56D20@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30)
{
  v34 = 1388665877 * ((0x59000D002C7ACF31 - ((v33 - 152) | 0x59000D002C7ACF31) + a29) ^ 0x938562B05E285222);
  v35 = v33 - 176;
  *(v35 + 56) = v34 ^ 3;
  *(v35 + 32) = (v32 + 1) - v34;
  *(v33 - 136) = a30 ^ v34 ^ 0x32;
  *(v33 - 132) = v34 + 1;
  *(v33 - 124) = (v30 - 2042978751) ^ v34;
  *(v33 - 152) = a30 ^ v34;
  *(v33 - 148) = (a1 ^ 0xCE87C7C) + v34;
  v36 = (*(v31 + 8 * (v30 ^ (v30 + 2147))))(v33 - 152);
  return (*(v31 + 8 * *(v33 - 128)))(v36);
}

uint64_t sub_56DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v21 - 120) = v17 - ((((v21 - 128) | 0xF0638305) - (v21 - 128) + ((v21 - 128) & 0xF9C7CF8)) ^ 0x24C49F5F) * v19 + 186;
  *(v21 - 128) = &a15;
  *(v21 - 112) = &a17;
  v22 = (*(v18 + 8 * (v17 ^ 0xCEA)))(v21 - 128);
  return (*(v18 + 8 * ((533 * (*(v21 - 104) > (v20 + v17 - 337 - 768))) ^ v17)))(v22);
}

uint64_t sub_56E84@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  a6 = (v8 ^ 0x6B) + 210068311 * (((&a3 | 0xE8A0B975) - &a3 + (&a3 & 0x175F4688)) ^ 0x1A2B169D) - 576;
  a3 = a2;
  a4 = a1;
  v9 = (*(v7 + 8 * ((v8 ^ 0x6B) + 130)))(&a3);
  return (*(v7 + 8 * (((((v8 ^ 0x6B ^ (a5 == v6)) & 1) == 0) * ((((v8 ^ 0x6B) - 2116) | 0xA4) ^ 0xBC)) ^ v8 ^ 0x6B)))(v9);
}

uint64_t sub_56F30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v11 = v10;
  if (v5 > 0x12)
  {
    return (*(v7 + 8 * ((1636 * ((*(v6 + 48 * a5 + 40) & 8) == ((((v11 - 644) | 0xD4) + 516) ^ (v11 + 84)))) ^ (v11 - 427))))();
  }

  v11 = v10;
  if (((1 << v5) & 0x50181) == 0)
  {
    return (*(v7 + 8 * ((1636 * ((*(v6 + 48 * a5 + 40) & 8) == ((((v11 - 644) | 0xD4) + 516) ^ (v11 + 84)))) ^ (v11 - 427))))();
  }

  LODWORD(STACK[0x348]) = v9;
  return (*(v7 + 8 * ((23 * ((*(v6 + 48 * a5 + 40) & 1) == ((v10 - 1773427176) & 0x69B456C3) - 128)) ^ (v10 + 234))))(48, a1, a2, a3, a4, 3033803021, 329604862, v8);
}

void sub_57034(uint64_t a1)
{
  v1 = *(a1 + 4) - 843532609 * ((-2 - ((a1 | 0xE4DA0525) + (~a1 | 0x1B25FADA))) ^ 0x4768AE5F);
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 1726767306 < 0)
  {
    v4 = 1726767306 - v3;
  }

  else
  {
    v4 = v3 - 1726767306;
  }

  v7 = v1 + 50899313 * ((2 * (&v6 & 0x4A1C24A0) - &v6 - 1243358369) ^ 0x7D821F09) + 828;
  v6 = v2;
  v5 = *(&off_C6C70 + (v1 ^ 0x1CE)) - 8;
  (*&v5[8 * v1 + 15048])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_57160(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = v7 + 2;
  v14 = (v10 - 2);
  *v14 = (v13 ^ a7) * (v13 + 17);
  *(v14 - 1) = (v13 ^ 0xBB) * (v13 + 18);
  return (*(v12 + 8 * (((v9 + 106 != v11) * a4) ^ v8)))();
}

uint64_t sub_57510()
{
  v5 = 7 * (v0 ^ 0x23B);
  *v7 = (v2 + v5 - 357) ^ v8;
  v11 = v5 - (&v11 ^ 0x8DAD62EC) * v4 + 1139;
  v12 = v10;
  (*(v3 + 8 * (v5 + 1815)))(&v11);
  v12 = v9;
  v11 = (v5 ^ 0x1DB) - (((&v11 ^ 0x8384400 | 0x20039B97) + (&v11 ^ 0x20021203 | 0xDFFC6468)) ^ 0xA59734EE) * v4 + 1306;
  (*(v3 + 8 * ((v5 ^ 0x1DB) + 1982)))(&v11);
  return v1 ^ v2;
}

uint64_t sub_576A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = a3 - 28;
  v16 = ((((v15 ^ 0xA5A70C4) + a12) ^ 0x13A2B942) - 1064193133) ^ ((v15 ^ 0xA5A70C4) + a12) ^ ((((v15 ^ 0xA5A70C4) + a12) ^ 0x6C307D72) - 1090291805) ^ ((((v15 ^ 0xA5A70C4) + a12) ^ 0xAC01DEE0) + 2134037553) ^ ((v12 ^ 0xFF5FE984 ^ ((v15 ^ 0xA5A70C4) + a12)) + 745334064);
  v18 = v16 != 751629615 && ((v15 ^ 0x79B) & v16) == 15;
  v19 = *(v13 + 8 * ((v18 * (v15 ^ 0x7A9)) ^ v15));
  *(v14 - 140) = -42899;
  return v19();
}

uint64_t sub_57798()
{
  *v4 = 513153;
  v6 = *v3;
  v7 = 143681137 * ((2 * ((v5 - 152) & 0x7907226145A9DC60) - (v5 - 152) + 0x6F8DD9EBA562398) ^ 0x17805F996EF13FC2);
  *(v5 - 120) = 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2) + v0 - 288126657;
  v8 = v5 - 176;
  *(v8 + 64) = v7 + 5119;
  *(v8 + 32) = v6 - v7;
  *(v5 - 128) = -143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  *(v5 - 124) = (v0 - 50079159) ^ (143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2));
  *(v5 - 132) = v0 - 50079173 - 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  *(v5 - 152) = ((v0 - 50079173) ^ 0x6F) - 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  v9 = (*(v2 + 8 * (v0 ^ (v1 + 2196))))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 136)))(v9);
}

uint64_t sub_578AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = v15;
  *(v20 - 120) = v17 - (((((v20 - 128) | 0xB2F517AA) ^ 0xFFFFFFFE) - (~(v20 - 128) | 0x4D0AE855)) ^ 0x99ADF40F) * v18 + 523;
  *(v20 - 112) = &a15;
  v21 = (*(v16 + 8 * (v17 ^ 0xBBB)))(v20 - 128);
  return (*(v16 + 8 * (v17 ^ (2 * (((v17 ^ (*(v20 - 104) > (v17 ^ 2 ^ (v19 + 771)))) & 1) == 0)))))(v21);
}

uint64_t sub_57944@<X0>(int a1@<W8>)
{
  v5 = (&STACK[0x248] + v2);
  *v5 = v4;
  v5[1] = v4;
  return (*(v3 + 8 * ((641 * (35 * (a1 ^ 0x5Du) - 229 == (v1 & 0x30))) ^ a1 ^ 0x433)))();
}

uint64_t sub_57A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = 1785193651 * ((((v22 - 136) | 0x2555F3DE) - (v22 - 136) + ((v22 - 136) & 0xDAAA0C20)) ^ 0x36891FFE);
  *(v22 - 128) = v17 - v23 + 991;
  *(v22 - 124) = ((v17 + 227) ^ 0xEEFFAA5B) - v23 + (v21 ^ 0x7F9D5E1D) + ((2 * v21) & 0xFF3ABC3A);
  *(v22 - 136) = &a17;
  (*(v19 + 8 * (v17 + 2058)))(v22 - 136);
  *(v22 - 128) = v17 + 227 - 143681137 * ((~((v22 - 136) | 0xFC9625E1) + ((v22 - 136) & 0xFC9625E1)) ^ 0xD7CEC644) + 867;
  *(v22 - 120) = v20;
  *(v22 - 136) = a16;
  v24 = (*(v19 + 8 * (v17 + 2038)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 112) > ((v17 + 1565826730) & 0xA2AB65BD ^ (v18 + 1299))) * (v17 - 133)) ^ (v17 + 227))))(v24);
}

void sub_57E38(uint64_t a1)
{
  v1 = *(a1 + 8) - 742307843 * ((2 * (a1 & 0x4921A181) - a1 + 920542846) ^ 0x28FCD32B);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_57F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *v11 = v7 - 1;
  v13 = &v11[6 * (v7 - 1098146251)];
  v14 = v13[2];
  LODWORD(STACK[0x53C]) = v13[3];
  STACK[0x3A0] = *(v13 + 2);
  LODWORD(STACK[0x524]) = v13[6];
  v15 = *(v9 + 48 * (v12 + ((v8 + 1695) | 0x60) + v14 - 2144) + 36);
  LODWORD(STACK[0x348]) = v15;
  return (*(v10 + 8 * (((v15 == a7) * (((8 * v8) ^ 0x8F0) + 270)) ^ v8)))();
}

uint64_t sub_57FC4(uint64_t a1, int a2, int a3, int a4)
{
  v8 = *(v5 + 48 * v7 + 36);
  v10 = v8 != a3 && (v8 + a4) < 0x80000003;
  return (*(v6 + 8 * ((v10 * (((158 * (v4 ^ 0x541) + 269485740) | 0x6DA08741) ^ (a2 - 950))) ^ v4)))();
}

void sub_58028(uint64_t a1)
{
  v1 = *(a1 + 12) - 50899313 * ((a1 + 2038787724 - 2 * (a1 & 0x79856E8C)) ^ 0xB1E4AADA);
  v2 = *a1;
  v4[0] = (50899313 * (((v4 | 0x439B0BB4) - v4 + (v4 & 0xBC64F448)) ^ 0x8BFACFE2)) ^ (v1 - 219);
  v5 = v2;
  v3 = *(&off_C6C70 + (v1 ^ 0x482)) - 8;
  (*&v3[8 * (v1 ^ 0xC9B)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_5813C(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 8 * (v3 ^ 0xB85)))(*v6, a2, LODWORD(STACK[0x208]) ^ 0x54FB64AEu, v3 - 1082972259 + v6[13], &STACK[0x5D0], v5, v4, &STACK[0x1888]);
  if (v8 == 268435459)
  {
    return (*(v2 + 8 * ((((((STACK[0x340] - 852) | 0x2A3) - 626) ^ 0xD5) * (LODWORD(STACK[0x26C]) < 3)) ^ (STACK[0x340] + 1178))))(v8, v9);
  }

  if (v8)
  {
    v10 = STACK[0x340];
    v11 = (v8 << (STACK[0x340] + 93)) & 0x69A8521A;
    v12 = 1785193651 * ((((v7 - 216) | 0x512F35CF) - ((v7 - 216) & 0x512F35CF)) ^ 0x42F3D9EF);
    *(v7 - 216) = &STACK[0x504];
    LODWORD(STACK[0x270]) = v8;
    *(v7 - 208) = -1261164275 - v12 + v8 - v11;
    *(v7 - 204) = v10 - v12 - 536;
    v13 = (*(v2 + 8 * (v10 ^ 0xB70)))(v7 - 216);
    return sub_97CC8(v13, v14, v15, v16, 1261138644, -1261164275);
  }

  else
  {
    v18 = STACK[0x340] + 484;
    v19 = STACK[0x340] + 157;
    v20 = v4;
    v21 = STACK[0x340];
    (*(v2 + 8 * (STACK[0x340] + 1315)))(*STACK[0x280], v5, v20);
    v22 = v6[13];
    v23 = ((STACK[0x208] & 0x7FFFFFFF ^ 0xB6916ED4) - 1671353055) ^ ((STACK[0x208] & 0x7FFFFFFF ^ 0xE48DBA5A) - 830604881) ^ ((v18 ^ 0xAC17F65D) + (STACK[0x208] & 0x7FFFFFFF ^ 0x86E7B020));
    v24 = (LODWORD(STACK[0x430]) ^ 0xBBDCEFFF) + 1606156016 + ((2 * LODWORD(STACK[0x430])) & 0x77B9DFFE);
    v25 = (v7 - 216) | 0x9BFA2ABB;
    v26 = 742307843 * ((-1678103877 - v25 + ((v7 - 216) | 0x6405D544)) ^ 0x7A275811);
    *(v7 - 200) = STACK[0x448];
    *(v7 - 192) = &STACK[0x1888];
    v27 = -742307843 * ((-1678103877 - v25 + ((v7 - 216) | 0x6405D544)) ^ 0x7A275811);
    *(v7 - 208) = v24 ^ v26;
    *(v7 - 204) = v27 + 2129113115 * v22 - 101675350;
    *(v7 - 216) = STACK[0x2B0];
    *(v7 - 180) = (v21 - 894) ^ v26;
    *(v7 - 176) = v27 + 2129113115 * v23 + 2091270256;
    v28 = (*(v2 + 8 * (v21 ^ 0xAA7)))(v7 - 216);
    v29 = *(v7 - 184);
    LODWORD(STACK[0x504]) = v29;
    return (*(v2 + 8 * ((327 * (v29 == -1261164275)) ^ v19)))(v28);
  }
}

uint64_t sub_5820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v50 = STACK[0x530];
  STACK[0x3F8] = *(v49 + 8 * (STACK[0x340] - 874));
  STACK[0x4F0] = v50;
  STACK[0x518] = a17;
  v51 = *(v50 + 68) & (((a49 & 0xD60470CF) - 314933776) & 0x12C5875D ^ 0x56B);
  *(v50 + v51) = -78;
  return (*(v49 + 8 * ((1239 * (v51 > 0x37)) ^ a49 & 0xD60470CF)))(a1, 2015, 2037, a4, 1261138644, 2630733904, 50, 100);
}

uint64_t sub_58374()
{
  STACK[0x220] = v1;
  STACK[0x278] = v0;
  STACK[0x228] = v5;
  LODWORD(STACK[0x274]) = v2;
  v7 = 1082434553 * ((v6 - 216) ^ 0x9B47F68A);
  STACK[0x3A8] = 0;
  *(v6 - 200) = &STACK[0x3A8];
  *(v6 - 208) = &STACK[0x43C];
  *(v6 - 184) = 0;
  *(v6 - 216) = v7 ^ 0xA68CCC3A;
  *(v6 - 212) = (v4 - 67) ^ v7;
  v8 = (*(v3 + 8 * (v4 + 1352)))(v6 - 216);
  return (*(v3 + 8 * ((206 * (*(v6 - 192) == 2 * (((v4 - 887) | 0x61A) ^ 0x7C8) - 1261165207)) ^ v4)))(v8);
}

uint64_t sub_58520@<X0>(int a1@<W8>)
{
  v6 = a1 - 27;
  v7 = (((v4 | 0xD6E866FE) - v4 + (v4 & 0x29179900)) ^ 0x4DAF9074) * v1;
  *(v5 - 184) = 0;
  *(v5 - 200) = &STACK[0x460];
  *(v5 - 208) = &STACK[0x55C];
  *(v5 - 216) = v7 ^ 0xA68CCC3F;
  *(v5 - 212) = (a1 + 407) ^ v7;
  v8 = (*(v2 + 8 * (a1 + 1826)))(v5 - 216);
  return (*(v2 + 8 * (((*(v5 - 192) != ((13 * (v6 ^ 0x187)) ^ (v3 + 63))) * (5 * (v6 ^ 0x18F) - 34)) ^ v6)))(v8);
}

uint64_t sub_585E8(int8x16_t a1, int8x16_t a2)
{
  v9 = v3 + 2;
  v10 = v5 + 2;
  v11 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v10[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v10 = v11;
  return (*(v8 + 8 * (((v4 == 32) * v6) ^ (v7 + v2 - 91))))();
}

void sub_58F08(uint64_t a1)
{
  v1 = *(a1 + 20) - 210068311 * (a1 ^ 0xF28BAFE8);
  __asm { BRAA            X9, X17 }
}

void sub_58FC4(int a1@<W8>)
{
  v4 = v2 ^ 0xF5;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  **(v1 + 8) = v3 - ((2 * v3) & 0x8CE65042) + (v4 ^ 0x46732FB0);
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_59050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, unsigned int a28)
{
  v30 = ((a8 + 458) ^ 0xA7B2CD6E) + v29;
  v31 = v30 < 0xA7B2CC5E;
  v32 = v30 > a28;
  if (a28 < 0xA7B2CC5E != v31)
  {
    v32 = v31;
  }

  return (*(v28 + 8 * ((!v32 * a27) ^ (a8 + 2011))))();
}

uint64_t sub_59100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = v18 + 965 + 1082434553 * ((((v21 - 144) | 0x99459B04) - ((v21 - 144) & 0x99459B04)) ^ 0x2026D8E);
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  (*(v19 + 8 * (v18 ^ 0xB0F)))(v21 - 144);
  *(v21 - 112) = v18 + 965 + 1082434553 * ((((v21 - 144) | 0x26A45A25) + (~(v21 - 144) | 0xD95BA5DA)) ^ 0xBDE3ACAE);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  (*(v19 + 8 * (v18 ^ 0xB0F)))(v21 - 144);
  v22 = 2066391179 * ((-281814440 - ((v21 - 144) | 0xEF33DA58) + ((v21 - 144) | 0x10CC25A7)) ^ 0xBFEBA7BF);
  *(v21 - 128) = (((v20 - 996129833) ^ 0xEFBB9FBC) + ((2 * (v20 - 996129833)) & 0xDF773F78) + 1987868478 + ((v18 + 133863513) & 0xF80567BE)) ^ v22;
  *(v21 - 144) = v22 + v18 - 441;
  *(v21 - 136) = a13;
  v23 = (*(v19 + 8 * (v18 ^ 0xB07)))(v21 - 144);
  return (*(v19 + 8 * ((37 * (*(v21 - 140) == ((v18 - 274) | 0x49) + 262714524)) ^ v18)))(v23);
}

uint64_t sub_592CC@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7)
{
  v11 = ((1505657689 - (&a3 | 0x59BE8359) + (&a3 | 0xA6417CA6)) ^ 0xB59D9086) * a1;
  a3 = 1332270185 - v11;
  a6 = 1480580334 - v11;
  a7 = v10 - v11 - 527;
  a4 = &a2;
  a5 = v7;
  v12 = (*(v8 + 8 * (v10 ^ 0xB89)))(&a3);
  return (*(v8 + 8 * ((162 * (*(v7 + 24) == ((v10 + 1255) ^ (v9 + 132)))) ^ v10)))(v12);
}

uint64_t sub_593FC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = (a11 + v11);
  v18 = vaddq_s8(vsubq_s8(v17[1], vandq_s8(vaddq_s8(v17[1], v17[1]), a7)), a8);
  *&STACK[0x248] = vaddq_s8(vsubq_s8(*v17, vandq_s8(vaddq_s8(*v17, *v17), a7)), a8);
  *&STACK[0x258] = v18;
  return (*(v15 + 8 * ((((((v12 ^ 0x4F7u) * v16) ^ v13) == 32) * v14) ^ v12 ^ 0xFC)))(a1, a2, v11 + 64);
}

uint64_t sub_594D4()
{
  v4 = v2 ^ 0x2D6;
  v13 = v2 + 210068311 * ((&v10 + 1582083030 - 2 * (&v10 & 0x5E4CABD6)) ^ 0xACC7043E) + 912;
  v10 = v9;
  v11 = &v8;
  (*(v1 + 8 * (v2 ^ 0xAB2u)))(&v10);
  LODWORD(v10) = v2 - 50899313 * (&v10 ^ 0xC861C456) + 816;
  v11 = v9;
  (*(v1 + 8 * (v2 + 1650)))(&v10);
  if (v12 == (v2 ^ 0x2D6 ^ (v3 + 154)))
  {
    v5 = v8;
  }

  else
  {
    v5 = v12;
  }

  LODWORD(v10) = v2 - ((2 * (&v10 & 0x507F5F0) - &v10 + 2063075855) ^ 0xF75568E3) * v0 + 860;
  v11 = v9;
  (*(v1 + 8 * (v2 + 1536)))(&v10);
  v11 = v7;
  LODWORD(v10) = v4 - (((&v10 | 0xD415C51B) - &v10 + (&v10 & 0x2BEA3AE0)) ^ 0x59B8A7F7) * v0 + 1326;
  (*(v1 + 8 * (v4 + 2002)))(&v10);
  return v5 ^ v3;
}

uint64_t sub_59754(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int8x16_t a23, int32x4_t a24, int8x16_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = vld1q_dup_f32(v34);
  v36.i64[0] = 0x8000000080000000;
  v36.i64[1] = 0x8000000080000000;
  a2.i32[0] = *(v34 + 4 * (v31 - 1500581780) - 1776);
  a2.i32[1] = *(v34 + 8);
  a2.i32[2] = *(v34 + 12);
  v37 = vextq_s8(v35, a2, 0xCuLL);
  v38 = a2;
  v38.i32[3] = *(v34 + 16);
  v39 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v38, a23), vandq_s8(v37, v36)), 1uLL), *(v34 + 1588));
  v37.i32[0] = *(v33 + 4 * (*(v34 + 4 * (v31 - 1500581780) - 1776) & 1));
  v37.i32[1] = *(v33 + 4 * (*(v34 + 8) & 1));
  v37.i32[2] = *(v33 + 4 * (*(v34 + 12) & 1));
  v37.i32[3] = *(v33 + 4 * (v38.i8[12] & 1));
  *v34 = veorq_s8(vaddq_s32(vsubq_s32(v39, vandq_s8(vaddq_s32(v39, v39), a25)), a24), v37);
  return (*(v32 + 8 * ((v31 - 1500581780) ^ 2)))(1500582225, 2794385694, a31, 2346792261, 398617226, 1751, 2895);
}

uint64_t sub_597C0(uint64_t a1, int a2)
{
  v7 = v2 + a1 - v3;
  v8 = *(v7 - 31);
  v9 = v6 + a1 - v3;
  v10.i64[0] = 0x6464646464646464;
  v10.i64[1] = 0x6464646464646464;
  v11.i64[0] = 0x3232323232323232;
  v11.i64[1] = 0x3232323232323232;
  *(v9 - 15) = vaddq_s8(vsubq_s8(*(v7 - 15), vandq_s8(vaddq_s8(*(v7 - 15), *(v7 - 15)), v10)), v11);
  *(v9 - 31) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v10)), v11);
  return (*(v5 + 8 * (((v3 != 288) * ((a2 ^ (4 * v4)) - 834)) ^ v4)))();
}

uint64_t sub_5986C(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 107;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_5988C(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void sub_598A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 8) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x8C1A0);
}

uint64_t sub_59944(uint64_t result)
{
  v1 = 1564307779 * ((((2 * result) | 0x3BE076D6021D91FELL) - result - 0x1DF03B6B010EC8FFLL) ^ 0x3833CF11960304ECLL);
  v2 = *(result + 32) ^ v1;
  v3 = *(result + 36) - v1;
  v4 = *(result + 4) - v1;
  v5 = *(result + 8) ^ v1;
  v6 = *result + v1;
  v7 = *(result + 24) - v1;
  v8 = v5 > v7;
  v9 = v5 == v7;
  v10 = v8;
  if (v2)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3;
  }

  *(result + 16) = v11 ^ v4;
  return result;
}

void sub_599E0(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (2066391179 * ((((2 * a1) | 0xC785A6D2) - a1 - 1673712489) ^ 0xCCE55171));
  v2 = *(a1 + 32);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v10[0] = 0x66EC60CA00000082;
  v10[1] = &v12;
  v9[0] = 0x66EC60CA00000082;
  v9[1] = &v11;
  v6 = v4[1];
  v13 = v10;
  v14 = v6;
  v15 = v1 - 2066391179 * ((2013797641 - (&v13 | 0x78081D09) + (&v13 | 0x87F7E2F6)) ^ 0x28D060EE) + 833;
  v17 = v2;
  v18 = v4;
  v16 = v5;
  v7 = *(&off_C6C70 + (v1 ^ 0xA4)) - 8;
  (*&v7[8 * v1 + 15952])(&v13);
  v8 = *v4;
  v13 = v9;
  v14 = v8;
  v15 = (1564307779 * (&v13 ^ 0x970DCC13)) ^ (v1 + 1559);
  (*&v7[8 * v1 + 15776])(&v13);
  LODWORD(v13) = v1 + 1082434553 * (((&v13 | 0x5D0504A1) - (&v13 & 0x5D0504A1)) ^ 0xC642F22B) + 207;
  v14 = v3;
  (*&v7[8 * (v1 ^ 0x826)])(&v13);
  __asm { BRAA            X8, X17 }
}

void sub_59C3C(uint64_t a1)
{
  v1 = *a1 + 143681137 * ((a1 + 242471276 - 2 * (a1 & 0xE73D16C)) ^ 0xDAD4CD36);
  v2 = *(a1 + 8);
  v3 = *(&off_C6C70 + v1 - 1033) - 8;
  (*&v3[8 * v1 + 8784])(*(&off_C6C70 + (v1 ^ 0x4FF)), sub_52D28);
  __asm { BRAA            X10, X17 }
}

void sub_59D08(uint64_t a1)
{
  v1 = 843532609 * ((a1 + 918077498 - 2 * (a1 & 0x36B8C03A)) ^ 0x6AF594BF);
  v2 = *(a1 + 64) - v1;
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 24) ^ v1;
  v13 = 0x66EC60CA00000040;
  v14 = &v18;
  v9 = 0x66EC60CA00000082;
  v10 = &v19;
  v11 = 0x66EC60CA00000001;
  v12 = &v8;
  v15 = 0x66EC60CA00000082;
  v16 = &v17;
  if (v3 | v4)
  {
    v6 = v5 == 1213870120;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_59EA0(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (v11 + v9 + v12 - 16);
  v15 = vaddq_s8(vsubq_s8(*(a9 + v9 - 16), vandq_s8(vaddq_s8(*(a9 + v9 - 16), *(a9 + v9 - 16)), a4)), a5);
  v14[-1] = vaddq_s8(vsubq_s8(*(a9 + v9 - 32), vandq_s8(vaddq_s8(*(a9 + v9 - 32), *(a9 + v9 - 32)), a4)), a5);
  *v14 = v15;
  return (*(v13 + 8 * ((((v9 & 0xFFFFFFE0) == 32) * (((v10 + 1955013696) & 0x8B78D7F7) + 397)) ^ v10)))();
}

void sub_59F84(uint64_t a1)
{
  v1 = 1785193651 * ((2 * (a1 & 0x70CFEB8A) - a1 - 1892674443) ^ 0x9CECF855);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_5A0B8@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 3 + ((v3 - 16) ^ 0xFFFFFFFFFFFFF913) + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((v3 - 16) | (16 * ((v2 & 0xFFFFFFFC) != 4)))))();
}

uint64_t sub_5A15C(void *a1)
{
  if (*a1)
  {
    v3 = (a1[6] | a1[3]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((((v1 ^ 0x5CB) << 6) - 547054082) & 0x209B634C) - 781)) ^ v1)))();
}

void sub_5A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v8 + 16);
  **(v8 + 8) = v7;
  *v10 = a7;
  *v8 = *(v9 + 24);
}

uint64_t sub_5A438(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17, unsigned int a18)
{
  v19 = a3 + a4 + 1856 + a15 + 26906444;
  v20 = v19 < ((a3 + a4 - 91) | 0x153u) + 26907988;
  v21 = v19 > a18;
  if (a18 < a17 != v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  return (*(v18 + 8 * ((13 * v22) ^ (a3 + a4 + 1034))))();
}

uint64_t sub_5A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v49 = 1361651671 * (((v48 - 216) & 0x903CF2FA | ~((v48 - 216) | 0x903CF2FA)) ^ 0xBCE1FD89);
  *(v48 - 200) = v49 + v46 + 136;
  *(v48 - 152) = v49 + 1934792313;
  *(v48 - 216) = &STACK[0x434];
  *(v48 - 208) = a16;
  *(v48 - 168) = 0;
  *(v48 - 160) = 0;
  *(v48 - 192) = v47;
  *(v48 - 184) = a45;
  v50 = (*(v45 + 8 * (v46 ^ 0xA24)))(v48 - 216);
  v51 = *(v48 - 176);
  LODWORD(STACK[0x5A4]) = v51;
  return (*(v45 + 8 * ((1619 * (v51 == (v46 ^ 0x160) - 1261165207)) ^ v46)))(v50);
}

uint64_t sub_5A5A8()
{
  v2 = (v0 + 1124427618) & 0xBCFA9BF6;
  v3 = STACK[0x3C0];
  v4 = STACK[0x378];
  v5 = (v2 - 6433701) & 0x622967;
  v6 = v2 + 679;
  STACK[0x408] = *(v1 + 8 * v0);
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v1 + 8 * ((v8 * (v5 ^ 0x179)) ^ v6)))();
}

uint64_t sub_5A624(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_5A63C(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_5A864@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x34C]) = v3;
  LODWORD(STACK[0x390]) = a1;
  LODWORD(STACK[0x41C]) = v2;
  LODWORD(STACK[0x42C]) = v6 + 80;
  v7 = STACK[0x5B8];
  v8 = (((v2 ^ 0x57691D37) - 1466506551) ^ ((v2 ^ 0xC680C984) + 964638332) ^ ((((v5 - 2060) | 0x384) ^ 0x38737995) + (v2 ^ 0xC78C85CF))) - 1098546695 + (((*(STACK[0x5B8] + 88) ^ 0x1AF3D9C4) - 452188612) ^ ((*(STACK[0x5B8] + 88) ^ 0xFEE6ED30) + 18420432) ^ ((*(STACK[0x5B8] + 88) ^ 0xB2706588) + 1301256824));
  v9 = (v8 ^ 0xCC2420FF) & (2 * (v8 & 0xEE4520FF)) ^ v8 & 0xEE4520FF;
  v10 = ((2 * (v8 ^ 0x8AE20DB)) ^ 0xCDD60048) & (v8 ^ 0x8AE20DB) ^ (2 * (v8 ^ 0x8AE20DB)) & 0xE6EB0024;
  v11 = v10 ^ 0x22290024;
  v12 = (v10 ^ 0xC0000000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x9BAC0090) & v11 ^ (4 * v11) & 0xE6EB0024;
  v14 = v12 ^ 0xE6EB0024 ^ (v13 ^ 0x82A80000) & (16 * v12);
  v15 = (16 * (v13 ^ 0x64430024)) & 0xE6EB0020 ^ 0x804B0024 ^ ((16 * (v13 ^ 0x64430024)) ^ 0x6EB00240) & (v13 ^ 0x64430024);
  v16 = (v14 << 8) & 0xE6EB0000 ^ v14 ^ ((v14 << 8) ^ 0xEB002400) & v15;
  *(STACK[0x5B8] + 88) = v8 ^ (2 * ((v16 << 16) & 0x66EB0000 ^ v16 ^ ((v16 << 16) ^ 0x240000) & ((v15 << 8) & 0xE6EB0000 ^ 0x4EB0000 ^ ((v15 << 8) ^ 0x6B000000) & v15))) ^ 0xB1B671CB;
  LODWORD(STACK[0x4C0]) = a2;
  LODWORD(STACK[0x438]) = v4;
  v17 = (((a2 ^ 0xDA0B7AE7) + 636781849) ^ ((a2 ^ 0xAB375D7) - 179533271) ^ ((a2 ^ 0x86DD5E4C) + 2032312756)) + (((*(v7 + 72) ^ 0x38E59A8D) - 954571405) ^ ((*(v7 + 72) ^ 0xD350F9C1) + 749667903) ^ ((*(v7 + 72) ^ 0xBDD03230) + 1110429136)) - 11217545;
  v18 = (((v4 ^ 0x414D46FA) - 1095583482) ^ ((v4 ^ 0x3C451D5C) - 1011162460) ^ ((v4 ^ 0x2B6D0ADA) - 728566490)) + (((*(v7 + 76) ^ 0x42903DE3) - 1116749283) ^ ((*(v7 + 76) ^ 0xC3D5C80D) + 1009399795) ^ ((*(v7 + 76) ^ 0xD720A492) + 685726574)) + 603407937;
  v19 = (v18 ^ 0xA68A5E36) & (2 * (v18 & 0x88D35CB7)) ^ v18 & 0x88D35CB7;
  v20 = ((2 * (v18 ^ 0xA7AAE750)) ^ 0x5EF377CE) & (v18 ^ 0xA7AAE750) ^ (2 * (v18 ^ 0xA7AAE750)) & 0x2F79BBE6;
  v21 = v20 ^ 0x21088821;
  v22 = (v20 ^ 0x65133C4) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0xBDE6EF9C) & v21 ^ (4 * v21) & 0x2F79BBE4;
  v24 = (v23 ^ 0x2D60AB80) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x2191063)) ^ 0xF79BBE70) & (v23 ^ 0x2191063) ^ (16 * (v23 ^ 0x2191063)) & 0x2F79BBE0;
  v26 = v24 ^ 0x2F79BBE7 ^ (v25 ^ 0x2719BA00) & (v24 << 8);
  *(v7 + 72) = v17 ^ ((v17 ^ 0x9F805DCE) + 854954063) ^ ((v17 ^ 0xBDD7BA77) + 279083000) ^ ((v17 ^ 0x1F062A21) - 1301026910) ^ ((v17 ^ 0x6FDBFFE7) - 1028771224) ^ 0x4EF6303;
  *(v7 + 76) = v18 ^ (2 * ((v26 << 16) & 0x2F790000 ^ v26 ^ ((v26 << 16) ^ 0x3BE70000) & (((v25 ^ 0x8600187) << 8) & 0x2F790000 ^ 0x6400000 ^ (((v25 ^ 0x8600187) << 8) ^ 0x79BB0000) & (v25 ^ 0x8600187)))) ^ 0xD6877A05;
  v27 = STACK[0x5B8];
  v28 = (((LODWORD(STACK[0x34C]) ^ 0x796D14DF) - 2037191903) ^ ((LODWORD(STACK[0x34C]) ^ 0xD97AE3BC) + 646257732) ^ ((LODWORD(STACK[0x34C]) ^ 0xF672A61F) + 160258529)) + 203661824 + (((*(STACK[0x5B8] + 80) ^ 0x81D631C2) + 2116668990) ^ ((*(STACK[0x5B8] + 80) ^ 0x4A90AF66) - 1250996070) ^ ((*(STACK[0x5B8] + 80) ^ 0x9D23CFD8) + 1658597416));
  v29 = (((LODWORD(STACK[0x390]) ^ 0xF91BBFE7) + 115621913) ^ ((LODWORD(STACK[0x390]) ^ 0x14EE1A1E) - 351148574) ^ ((LODWORD(STACK[0x390]) ^ 0xBB90F485) + 1148128123)) - 1231815175 + (((*(STACK[0x5B8] + 84) ^ 0xE3E50C28) + 471528408) ^ ((*(STACK[0x5B8] + 84) ^ 0x7056F824) - 1884747812) ^ ((*(STACK[0x5B8] + 84) ^ 0xC5D6A570) + 975788688));
  *(v27 + 80) = v28 ^ ((v28 ^ 0x85C4B065) + 627290259) ^ ((v28 ^ 0xB81E5064) + 414797972) ^ ((v28 ^ 0x8D7DE8F6) + 769320962) ^ ((v28 ^ 0xEFFFF7FF) + 1331230473) ^ 0x93DAE74;
  *(v27 + 84) = v29 ^ ((v29 ^ 0x2A75D19) - 191759896) ^ ((v29 ^ 0x7401BAC9) - 2110317000) ^ ((v29 ^ 0x40900328) - 1230592041) ^ ((v29 ^ 0x3FFFBFF9) - 909567224) ^ 0x5FAC0A7D;
  STACK[0x4F8] -= 320;
  return (STACK[0x3D8])();
}

uint64_t sub_5B0A8@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3, unsigned int a4)
{
  v9 = 3 * ((v4 - 1248) ^ 0xB);
  *(v8 - 100) = v9 + 450 + 50899313 * ((v8 - 112) ^ 0xC861C456);
  *(v8 - 112) = a1;
  (*(v6 + 8 * (v9 ^ 0xBE1)))(v8 - 112);
  v10 = *(v8 - 104);
  *(v8 - 100) = v9 + 450 + 50899313 * (((v8 - 112) & 0x44A45AB1 | ~((v8 - 112) | 0x44A45AB1)) ^ 0x733A6118);
  *(v8 - 112) = v5;
  (*(v6 + 8 * (v9 + 1503)))(v8 - 112);
  v11 = ((*(v8 - 104) + v10) * (((v9 - 767) | 0xC0) - 1725545589) + *(v8 - 104) * v10 - 944893855) * v7;
  a4 = (v11 ^ 0x7EFCF7DB) - 403740433 + ((2 * v11) & 0xFDF9EFB6);
  *(v8 - 96) = (v9 + 1015) ^ (1564307779 * ((2 * ((v8 - 112) & 0x643E4990) - (v8 - 112) + 465679980) ^ 0x8CCC7A7F));
  *(v8 - 112) = v5;
  *(v8 - 104) = &a3;
  v12 = (*(v6 + 8 * (v9 + 1428)))(v8 - 112);
  return sub_5B204(v12);
}

uint64_t sub_5B240@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1 ^ 0x5AA;
  v16 = (a1 + 20139728) & 0xFECCACCA;
  v17 = a1 - 1190;
  *(v14 - 104) = a1 + 1082434553 * ((-603942666 - (v13 | 0xDC0090F6) + a4) ^ 0xB8B89983) + 558;
  *(v14 - 136) = a11;
  *(v14 - 128) = v12;
  *(v14 - 120) = v12;
  *(v14 - 112) = a6;
  v18 = (*(v11 + 8 * (a1 + 876)))(v14 - 136);
  return (*(v11 + 8 * (((((a8 >> 1) & a5) != (v16 ^ 0xC8)) * (v15 - 55)) | v17)))(v18);
}

uint64_t sub_5B248(uint64_t a1)
{
  v3 = STACK[0x448];
  v4 = (LODWORD(STACK[0x430]) ^ 0x77DBF77EEFDEFF6BLL) + ((2 * LODWORD(STACK[0x430])) & 0x1DFBDFED6) + ((17 * (v1 ^ 0x761u)) ^ 0x882408811021007BLL);
  STACK[0x470] = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 - 814) ^ 0x4A3)) ^ v1)))(a1, v3);
}

uint64_t sub_5B31C@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v16 = &STACK[0x248] + v13;
  *v16 = a1;
  v16[1] = v12;
  v16[2] = v14;
  *(&STACK[0x248] + (HIDWORD(a4) ^ 0x11DLL) + v13) = v15;
  return sub_958E8(HIDWORD(a4) ^ 0x102u, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_5B360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = 307 * (v13 ^ 0xDE);
  v15 = ((v14 - 1603128684 + (a12 ^ 0x5F8DC507)) ^ ((a12 ^ 0xA6680DDE) + 1503130146) ^ ((a12 ^ 0x4D31E1D4) - (v14 ^ 0x86B) + 16 * (v14 ^ 0x86B) - 1295114918)) + 1247207451;
  v16 = v15 < 0x9582B70E;
  v17 = v15 > 0x9582B70E;
  if (v16)
  {
    v17 = v16;
  }

  return (*(v12 + 8 * ((228 * !v17) ^ v14)))(2999852378, 2791837150, 1503130146, 1247207451);
}

uint64_t sub_5B448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v10 = &STACK[0x5E0] + v9;
  *v10 = 1368544279;
  *(v10 + 1) = 0;
  *(v10 + 4) = 572608532;
  *(v10 + 6) = 1657355148;
  *(&STACK[0x5E0] + v9 + 40) = 1657355148;
  *(v10 + 4) = 0;
  STACK[0x4D8] = &STACK[0x5E0] + v9 + 40;
  *(&STACK[0x5E0] + v9 + 48) = 0;
  STACK[0x550] = &STACK[0x5E0] + v9 + 48;
  *(&STACK[0x5E0] + v9 + 56) = 1657355148;
  *(&STACK[0x5E0] + v9 + 64) = 0;
  STACK[0x420] = &STACK[0x5E0] + v9 + 56;
  STACK[0x4A8] = &STACK[0x5E0] + v9 + 64;
  *(&STACK[0x5E0] + v9 + 72) = 1657355148;
  STACK[0x3E0] = &STACK[0x5E0] + v9 + 72;
  *(&STACK[0x5E0] + v9 + 80) = 0;
  STACK[0x380] = &STACK[0x5E0] + v9 + 80;
  v10[88] = 107;
  *v7 = 1368544279;
  memset((v7 + 4), 50, 20);
  *(v7 + 28) = 0;
  STACK[0x290] = v7 + 28;
  *(v7 + 24) = 1657355148;
  *(v7 + 232) = 0;
  STACK[0x288] = v7 + 232;
  memset((v7 + 436), 50, 40);
  memset((v7 + 1128), 50, 40);
  *(v7 + 1168) = 0u;
  *(v7 + 1184) = 0u;
  return (*(v8 + 8 * a7))(a1, a2, a3, a4, a5, a6, 329604862);
}

uint64_t sub_5B620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, unsigned int a18)
{
  a18 = v18 + 1090264433 + ((v21 + 908907675) & 0xC9D327DD);
  *(v22 - 112) = (v21 + 730) ^ (1564307779 * ((((v22 - 128) | 0x6844822D) + (~(v22 - 128) | 0x97BB7DD2)) ^ 0xFF494E3F));
  *(v22 - 128) = &a15;
  *(v22 - 120) = v19;
  (*(v20 + 8 * (v21 + 1143)))(v22 - 128);
  *(v22 - 128) = v19;
  *(v22 - 120) = v21 - 143681137 * ((((2 * (v22 - 128)) | 0x646EBC3A) - (v22 - 128) + 1304994275) ^ 0x66904247) + 235;
  *(v22 - 112) = &a17;
  v23 = (*(v20 + 8 * (v21 + 1179)))(v22 - 128);
  return (*(v20 + 8 * ((181 * (*(v22 - 104) <= 0x43A7A85Fu)) ^ v21)))(v23);
}

uint64_t sub_5B798@<X0>(uint64_t a1@<X8>)
{
  v8 = (v2 - 1249789826) & 0x4A7E4776;
  v9 = (**(v7 + 8) ^ v3) + (**(v4 + 8) ^ v3);
  **(a1 + 8) = v9 + v3 - ((v9 << (v8 - 117)) & (v6 + 1427));
  return (*(v5 + 8 * ((247 * (v1 != 1)) ^ v8)))();
}

uint64_t sub_5B828(uint64_t a1, uint64_t a2)
{
  v6 = **(a2 + 8) - 42;
  v7 = (v3 & (2 * v6)) + (((v4 - 122) | 0x108) ^ (v2 - 350) ^ v6) == v2;
  return (*(v5 + 8 * (((8 * v7) | (32 * v7)) ^ v4)))();
}

void sub_5B878()
{
  if ((*(v2 + 4) - 1726767307) >= 0x7FFFFFFF)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 2;
  }

  *(v0 + 8) = v3;
}

uint64_t sub_5B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, int a17, uint64_t a18, char *a19, int a20)
{
  v23 = v20 + 38;
  v24 = 742307843 * (((&a15 | 0xE567A8BF) + (~&a15 | 0x1A985740)) ^ 0xFB4525EB);
  a20 = v24 ^ 0x233D6C96;
  a15 = v24 - 1023075472;
  a17 = v23 - v24 - 1197042671;
  a18 = a13;
  a19 = &a11;
  v25 = (*(v22 + 8 * (v23 + 1995)))(&a15);
  return (*(v22 + 8 * (((a16 == v21) * ((8 * (((v23 - 129) | 0x223) ^ 0x282)) ^ 0x7AB)) ^ v23)))(v25);
}

uint64_t sub_5BCBC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  HIDWORD(v14) = a1 ^ 0x665517C;
  LODWORD(v14) = a1 ^ 0x55555555;
  v15 = (a6 ^ 0xA99AAE83) & (v6 ^ 0x600C06E9) ^ a6 & 0x36695795;
  v16 = (v14 >> 27) + (((v8 ^ 0x7F5BFC53) - 2136734803) ^ ((v8 ^ 0x4F252DF7) - 1327836663) ^ ((v8 ^ 0x661B80D8) - 1713078488)) + (v15 & 0xEFDB3BC6 ^ 0x302CC6B9 ^ (v15 ^ 0xDFF7F97E) & (v7 & 0x9890D784 ^ 0x24953D ^ (a6 ^ (a2 - 822770999)) & (v7 ^ v12))) - 1125750377 + (((*(v9 + 4 * (a3 + v11)) ^ 0xCA908619) + 896498151) ^ ((*(v9 + 4 * (a3 + v11)) ^ 0xBAEE0DBB) + 1158804037) ^ ((*(v9 + 4 * (a3 + v11)) ^ 0xC4AAA2AF) + 995450193));
  return (*(v10 + 8 * ((689 * (a3 + 1 == v13 + 20)) ^ a2)))(v16 ^ ((v16 ^ 0x8665F7B3) + 783318330) ^ ((v16 ^ 0x4D5774A7) - 444400082) ^ ((v16 ^ 0xE3F7689A) + 1260577297) ^ ((v16 ^ 0x7FEF9EFB) - 684059534) ^ 0x14F2409);
}

uint64_t sub_5BEE8(unint64_t a1)
{
  STACK[0x4D0] = a1;
  LODWORD(STACK[0x428]) = v3;
  v4 = 7 * ((4 * (v1 ^ 0x680)) ^ 0x325);
  v5 = STACK[0x410];
  v6 = (v4 ^ 0xFFFFFFFFFFFFFC78) + 336;
  STACK[0x368] = v6;
  *(v5 + v6) = (&STACK[0x368] ^ 0xBA) * (&STACK[0x368] + 17);
  return (*(v2 + 8 * ((1277 * (STACK[0x368] == 0)) ^ v4)))();
}

uint64_t sub_5BF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v27 = ((((v26 - 144) | 0x2A8C4F6F) - (v26 - 144) + ((v26 - 144) & 0xD573B090)) ^ 0x85ABCD77) * v22;
  *(v26 - 144) = &a22;
  *(v26 - 136) = v27 + v25 + 1089;
  *(v26 - 132) = v27 + 1068442902;
  v28 = (*(v23 + 8 * (v25 + 1492)))(v26 - 144);
  return (*(v23 + 8 * ((((((v25 - 419) | 0x220) + 2) ^ (v25 - 618209150) & 0x24D91FFA) * (v24 == 0)) | (v25 + 1209))))(v28);
}

uint64_t sub_5C030@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = ((v2 + 874) ^ v5) + a2;
  *(v6 + v8) = *(a1 + v8);
  return (*(v7 + 8 * (((v8 == ((v2 + 874 + v3) & v4) - 58) * (v2 - 13)) ^ (v2 + 996))))();
}

uint64_t sub_5C0FC(_DWORD *a1)
{
  v2 = *a1 ^ (1037613739 * (a1 ^ 0xD1022D7F));
  result = (*(*(&off_C6C70 + (v2 ^ 0x9617D448)) + (v2 ^ 0x9617DC95) - 1))(*(&off_C6C70 + (v2 ^ 0x9617D452)) - 4, sub_6DA34);
  v4 = **(&off_C6C70 + (v2 ^ 0x9617D474));
  if (result)
  {
    v4 = 1261138867;
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_5C1B8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, unint64_t a4@<X5>, int a5@<W6>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int8x16_t a9@<Q4>, int8x16_t a10@<Q5>, int32x4_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v17 = v12 + 4;
  v18 = v13 + 16;
  a8.i64[0] = *(v18 + 4);
  a8.i32[2] = *(v18 + 12);
  v19 = vextq_s8(a7, a8, 0xCuLL);
  v20 = a8;
  v20.i32[3] = *(v16 + 4 * (v17 + (((a6 ^ (a1 + 5)) * a3) ^ a4)));
  v21 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v20, a12), vandq_s8(v19, a9)), 1uLL), *(v18 - 908));
  v19.i32[0] = *(v15 + 4 * (*(v18 + 4) & 1));
  v19.i32[1] = *(v15 + 4 * (*(v18 + 8) & 1));
  v19.i32[2] = *(v15 + 4 * (*(v18 + 12) & 1));
  v19.i32[3] = *(v15 + 4 * (v20.i8[12] & 1));
  *v18 = veorq_s8(vaddq_s32(vsubq_s32(v21, vandq_s8(vaddq_s32(v21, v21), a10)), a11), v19);
  return (*(v14 + 8 * (((v17 == 392) * a5) ^ (a2 + a6 + 175))))();
}

uint64_t sub_5C254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a1 + 24) ^ (1388665877 * (((a1 | 0x3647F9EA) - (a1 | 0xC9B80615) - 910686699) ^ 0xBBEA9B06));
  v19 = 742307843 * ((((2 * &v28) | 0x163644D6) - &v28 - 186327659) ^ 0x1539AF3E);
  v30 = 602092488 - v19;
  v29 = &v27;
  v28 = v18 - v19 - 473373692;
  (*(*(&off_C6C70 + (v18 ^ 0x5B)) + v18 + 2240))(&v28);
  return sub_535C0(100, v20, v21, v18, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_5C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, _BYTE *a16, int a17, char a18, __int16 a19, char a20, _BYTE *a21, char *a22, char *a23, _BYTE *a24)
{
  HIDWORD(a21) = v25 + (((~&a21 & 0xA32B3690) - (~&a21 | 0xA32B3691)) ^ 0xBD09BBC4) * v24 + 739;
  a22 = &a20;
  a23 = &a18;
  a24 = a16;
  (*(v27 + 8 * (v25 + 1716)))(&a21);
  HIDWORD(a23) = v25 + 210068311 * (&a21 ^ 0xF28BAFE8) + 1028;
  a21 = a16;
  a22 = &a12;
  (*(v27 + 8 * (v25 + 1734)))(&a21);
  HIDWORD(a23) = v25 + 210068311 * (&a21 ^ 0xF28BAFE8) + 1028;
  a21 = a16;
  a22 = &a15;
  (*(v27 + 8 * (v25 + 1734)))(&a21);
  LODWORD(a21) = v25 - 50899313 * (&a21 ^ 0xC861C456) + 932;
  a22 = a16;
  v28 = (*(v27 + 8 * (v25 ^ 0xAE6)))(&a21);
  return (*(v27 + 8 * ((1067 * (a23 == v26 + 51 * (v25 ^ 0x20F) - 357)) ^ v25)))(v28);
}

uint64_t sub_5C5E8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 2 * (a4 ^ 0xEF3334FF02300D6ALL);
  v11 = ((a4 ^ 0xEF3334FF02300D6ALL) - (v10 & 0xEF5B77A68B58122ALL) + 0x77ADBBD345AC0915) ^ a3;
  v12 = v11 ^ a1 ^ 0xB1847C999AF7BC6ELL;
  if (((a4 ^ 0xEF3334FF02300D6ALL) & 0x82EE1687ACCADB62) != 0)
  {
    v13 = a4 ^ 0xEF3334FF02300D6ALL;
  }

  else
  {
    v13 = v11 ^ a1 ^ 0xB1847C999AF7BC6ELL;
  }

  v14 = v13 & (a3 ^ 0x39D638B520A44C1ELL);
  v15 = a5 ^ (a7 | (v148 << 32));
  v16 = v8 ^ v15 ^ 0xA0F6A1995EC296E4;
  v17 = ((a4 ^ 0xEF3334FF02300D6ALL) - 0x21AB2F79F13344 - (v10 & 0xFFBCA9A10C1D9978)) ^ v7;
  v18 = v14 ^ v16 ^ 0x3CF986AD46254D3BLL;
  if (v17 == 0x68040451F630332FLL)
  {
    v18 = v16 ^ 0x43067952B9DAB2C4;
  }

  v19 = (v14 ^ v16 ^ 0xED9891E9C940C322) + 2 * (v14 & (v16 ^ 0x6D9891E9C940C322)) - 2 * ((v18 ^ 0x2E9EE8BB709A71E6) & v14);
  v20 = (v16 ^ 0x12676E1636BF3CDDLL) & (a3 ^ 0xD1BCDA9F436F48A2);
  v21 = v16 & 0x17951DD59C34FB43;
  v22 = v16 & 0xD87006A6404BA173 ^ (v16 ^ 0xED9891E9C940C322) & (v15 ^ 0xB3B4E95F649F9A69) ^ v17 ^ 0x4CA8D4CD69877E38;
  v23 = v21 ^ v15 ^ 0xA0F6A1995EC296E4 ^ v20 ^ v22;
  *(&v24 + 1) = v23 ^ 0x85DC954123DBC8CCLL;
  *&v24 = v23;
  v25 = v23 ^ 0x85DC954123DBC8CCLL ^ __ROR8__(v23 ^ 0x85DC954123DBC8CCLL, 61) ^ (v24 >> 39);
  v26 = __ROR8__(__ROR8__(v25 ^ 0x1F8023B6C94E8738 ^ (v19 >> 6) ^ (v19 >> 1) ^ v19 ^ 0x848EAF93308C3BA1 ^ ((v19 ^ 0x848EAF93308C3BA1) << 58) ^ ((v19 ^ 0x848EAF93308C3BA1) << 63) ^ 0xC7B67A763B00CE0FLL, 31) ^ 0x842C347A09874434, 33);
  v27 = a3 ^ 0x8C88747CFC525113 ^ (v12 & 0xFB3E5102089C8525 | (v17 ^ 0x933A5553FEACB60ALL) & (v11 ^ 0x4E7B83666508450BLL));
  v28 = (-v19 ^ (v27 - (v19 ^ v27)) ^ 0x3C1E6AAD233402CBLL ^ (v19 - ((2 * v19) & 0x783CD55A46680596) + 0x3C1E6AAD233402CBLL)) + v27;
  v29 = v28 ^ __ROR8__(v28, 17) ^ (v28 << 54) ^ (v28 >> 10);
  v30 = v15 & 0x3BD047E8AC7C6A7FLL ^ (v17 ^ 0xAC2BBC46A5B3A6AFLL) & (v15 ^ 0x943B1006DB2BC4E5) ^ v12 ^ 0x98DC5FD5E5364DEELL;
  *&v24 = __ROR8__(__ROR8__(v30, 48) ^ 0x2B13308C6A1AAE48, 16);
  v31 = v24 ^ 0x911628FC53A9C027 ^ ((v24 ^ 0x911628FC53A9C027) << 23) ^ (((v24 >> 41) ^ (v24 >> 7) ^ 0xEAEBADAFF0EF964ALL) & (((v24 ^ 0x911628FC53A9C027) << 57) ^ 0x73FFFFFFFFFFFFFFLL) | ((v24 ^ 0x911628FC53A9C027) << 57) & 0x1400000000000000);
  v32 = (v29 & 0x6A2FB5C53305728 | (v31 ^ 0xB6E6DAB3DF8C3C1) & ~v29) ^ v26;
  v33 = v31 ^ 0xEDD231C8B7069357;
  v34 = v29 ^ 0x8401BA65A20C7889 ^ v31 ^ 0xEDD231C8B7069357;
  v35 = v30 ^ v22;
  *(&v24 + 1) = v35 ^ 0x8690FEDFC512279;
  *&v24 = v35;
  v36 = v35 ^ 0x8690FEDFC512279 ^ __ROR8__(v35 ^ 0x8690FEDFC512279, 28) ^ (v24 >> 19) ^ v33;
  *(&v24 + 1) = v34 & 0x19B2BE841E1A7CB1 ^ v29 ^ 0x8401BA65A20C7889 ^ v32 ^ (v34 ^ 0x9BE0E2A5843D80C8) & (v36 ^ 0x5B4028378EBCE62CLL) ^ 0x54F51E67C8C4A5F0;
  *&v24 = v34 & 0x19B2BE841E1A7CB1 ^ v29 ^ 0x8401BA65A20C7889 ^ v32 ^ (v34 ^ 0x9BE0E2A5843D80C8) & (v36 ^ 0x5B4028378EBCE62CLL);
  v37 = v24 >> 17;
  *&v24 = __ROR8__(*(&v24 + 1), 10);
  v38 = ((v37 ^ v24 ^ 0xD6DA16427EB366DALL) - 2 * ((v37 ^ v24 ^ 0xD6DA16427EB366DALL) & 0x3C8CE547BAC5F8ABLL ^ (v37 ^ v24) & 1) + 0x3C8CE547BAC5F8AALL) ^ *(&v24 + 1);
  v39 = v36 & 0x282DBDAEEA7DE4F8 ^ (v36 ^ 0xBD0D694C6F596562) & (v25 ^ 0xD0404A3738C8C3B9) ^ 0x1A3C60AACD98A6AFLL ^ v34;
  v40 = (v39 & 0xF2F0F93CF1701AFDLL ^ 0x9097F5B1C24940B2) & (v39 & 0xD0F06C30E8FE502 ^ 0xF2F9FB3DF77E5EFFLL) | v39 & 0xD0802420C86A500;
  v41 = __ROR8__(v40 ^ 0x807523D053428863, 7);
  *&v24 = __ROR8__(v40 ^ 0x807523D053428863, 41);
  v42 = ((v41 ^ v24 ^ 0xAB5FA1F5FDF76B5DLL) - 2 * ((v41 ^ v24 ^ 0xAB5FA1F5FDF76B5DLL) & 0x5CF2BAE5CC89006ELL ^ (v41 ^ v24) & 2) - 0x230D451A3376FF94) ^ v40 ^ 0x807523D053428863;
  v43 = v25 & 0x5E91F30F2450BD2ELL ^ v36 ^ 0x5F4D8D0123B7DAF1 ^ (v26 ^ 0xAF644E097E3D1FE3) & (v25 ^ 0x79208662D4AD8BELL);
  v44 = v40 ^ v43 ^ ((v40 ^ v43 ^ 0x42E72441891A0B1ALL) >> 19) ^ ((v40 ^ v43 ^ 0x42E72441891A0B1ALL) >> 28) ^ ((v40 ^ v43 ^ 0xD0C8D777ADEEE37CLL) << 36) ^ ((v40 ^ v43 ^ 0xD0C8D777ADEEE37CLL) << 45) ^ 0xBCF6E12E86176E59;
  *(&v24 + 1) = v43 ^ v25 ^ 0x1F8023B6C94E8738;
  *&v24 = v43 ^ v25;
  v45 = (v26 ^ 0xE0A42F9A5925D32) & (v29 ^ 0x11151B40B0209886) ^ v26 & 0x11151B40B0209886 ^ __ROR8__((v24 >> 54) ^ 0x2C8233060D805428, 10);
  LOBYTE(v21) = *(v9 + ((v45 >> 61) ^ 0x52));
  v46 = (v21 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0xB8) + 93) ^ ((v21 ^ (57 - (v21 ^ 0xFA)) ^ 0x36 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0x14) + 11)) + 1) ^ 0x9F) - 62;
  v47 = v46 ^ (v45 >> 39) ^ v45 ^ 0x9D3851BE94ABEA66 ^ (8 * (v45 ^ 0x9D3851BE94ABEA66)) ^ ((v45 ^ 0x9D3851BE94ABEA66) << 25);
  v48 = (v42 - ((2 * v42) & 0x48E51F629851E4ACLL) - 0x5B8D704EB3D70DAALL) ^ v44;
  v49 = v38 ^ 0x147D2CDEEA4;
  v50 = v38 ^ 0x147D2CDEEA4 ^ v42;
  v51 = (~(2 * v48) + v48) & (v47 ^ 0x45B83ECA51117C24) ^ v50;
  v52 = ((v51 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v51 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v51 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v51 ^ 0x26974B18501E2B14) - (((v51 ^ 0x26974B18501E2B14) << 58) & (2 * (v51 ^ 0x26974B18501E2B14))));
  v53 = v32 ^ (v32 << 58) ^ 0xE41231C5A00235DFLL;
  v54 = (v32 >> 1) ^ 0x4C0918E2D0011AEFLL;
  v55 = v54 & 0x100000000000;
  if ((v54 & 0x100000000000 & v53) != 0)
  {
    v55 = -v55;
  }

  v56 = ((v32 << 63) | 0x14EE3DA2DA8E866ALL) ^ (v32 >> 6) ^ v54 & 0xFFFFEFFFFFFFFFFFLL ^ (v55 + v53);
  v57 = ((v38 ^ 0xFFFFFEB82D32115BLL) & v42) - ((2 * ((v38 ^ 0xFFFFFEB82D32115BLL) & v42)) & 0xC1D6ABE6842A518) - 0x79F14AA0CBDEAD74;
  v58 = (v49 - ((2 * v49) & 0x48E51F629851E4ACLL) - 0x5B8D704EB3D70DAALL) ^ v44;
  if (!v46)
  {
    v58 = v48;
  }

  v59 = v57 ^ v47 ^ v56;
  v60 = v38 ^ v58 & ~v50 ^ 0x153BBA291CEE65C6;
  v61 = v59 ^ 0x3373E9F6372DE041;
  v62 = v60 ^ v59 ^ 0x3373E9F6372DE041;
  v63 = __ROR8__(v62, 10);
  v64 = (v62 ^ v63 ^ (v62 >> 17)) + (v62 << 47) - 2 * ((v62 ^ v63 ^ (v62 >> 17)) & (v62 << 47));
  v65 = v59 ^ 0x2C6D141CE4761819;
  v66 = (((2 * (0x34CDB152F4A04500 - ((v59 ^ 0x2C6D141CE4761819) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v59 ^ 0x2C6D141CE4761819) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v59 ^ 0x2C6D141CE4761819) << 58) ^ ((v59 ^ 0x2C6D141CE4761819) - ((((v59 ^ 0x2C6D141CE4761819) << 58) & 0xF800000000000000 ^ (v59 ^ 0x2C6D141CE4761819) & 0xF9BFE541A2368FBELL | (v59 ^ 0x2C6D141CE4761819) & 0x6401ABE5DC97041) ^ ((v59 ^ 0x2C6D141CE4761819) << 58) & 0x400000000000000));
  v67 = v47 & 0xE09B73AB3D6C0569 ^ 0xA00341212C6C0149 ^ (v47 ^ 0xBA47C135AEEE83DBLL) & (v56 ^ 0x761506CEF1628BD4);
  v68 = (v48 ^ -v48 ^ (v67 - (v48 ^ v67))) + v67;
  v69 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v47 ^ (((v47 ^ v56 ^ 0x2CC9B45062E00D66) & v49) - ((2 * ((v47 ^ v56 ^ 0x2CC9B45062E00D66) & v49)) & 0xED97AE78CC7938CALL) + 0x76CBD73C663C9C65) ^ v68 ^ 0x10B11CEC96E32FDLL, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v70 = v69 ^ 0x93DD7BE3C3310A2CLL ^ ((v69 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v69 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v69 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v69 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v71 = (v66 + v65) ^ (v61 << 63) ^ __ROR8__((v65 >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v70, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v72 = v71 & 0xA8F512753D8F931ELL ^ (v65 >> 1) & 0x28F512753D8F931ELL | (v71 ^ (v65 >> 1)) & 0x570AED8AC2706CE1;
  v73 = v72 ^ v52 & ~v64;
  *(&v74 + 1) = v73;
  *&v74 = v73 ^ 0xD3DA1E3360BF843ALL;
  v75 = ((v74 >> 1) ^ v73 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v73 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v74 >> 1) ^ v73 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v73 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v74 + 1) = v73;
  *&v74 = v73 ^ 0xD3DA1E3360BF843ALL;
  v76 = v51 ^ 0x6E04C15915AB860ALL ^ v68 ^ __ROR8__(v51 ^ 0x6E04C15915AB860ALL ^ v68, 19) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v68) << 36) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v68) >> 28) ^ v52;
  v77 = ((v72 ^ v70) + (v72 | ~v70) + 1) ^ v76;
  v78 = v70 ^ v64 & ~v72 ^ 0x425764BB5877DA25 ^ v77;
  v79 = v78 ^ (v78 >> 61) ^ (v78 >> 39) ^ (8 * v78) ^ (v78 << 25);
  v80 = v64 ^ v52;
  v81 = v70 & ~v76 ^ v64 ^ v52;
  v82 = v81 ^ 0xFD;
  v83 = v81 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v81 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v84 = v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77 ^ __ROR8__(v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77, 19) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77) << 36) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77) >> 28);
  *&v74 = __ROR8__((v74 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v79 ^ v75, 3) ^ 0x55413C453664FDCDLL, 61);
  v85 = ((v84 | v83) ^ v83 & v84) & 0x2D23D578E308995FLL | (v84 ^ v83) & 0xD2DC2A871CF766A0;
  v86 = v76 & ~v80;
  v87 = (v74 ^ 0xAA09E229B327EE6ALL) & ~v79 ^ v85;
  v88 = v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73 ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) >> 10) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) << 47) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) << 54) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) >> 17);
  v89 = ((v87 ^ v79) + ((v74 ^ 0x55F61DD64CD81195) & v88) - 2 * ((v87 ^ v79) & (v74 ^ 0x55F61DD64CD81195) & v88)) ^ 0x6005BE354A5BB0B2;
  v90 = v89 >> (v29 & 0x3D) >> (v29 & 0x3D ^ 0x3D);
  v91 = (8 * v89) ^ (v89 >> 39) ^ ((v89 ^ (v89 << 25)) & 0xF21553F3FD140018 ^ v90 & 0x18 | (v89 ^ (v89 << 25)) & 0xDEAAC0C02EBFFE7 ^ v90 & 0xE7);
  v92 = v79 & ~v85 ^ v88 ^ v83;
  v93 = v92 ^ 0x2DB5B6AF87F64351 ^ ((v92 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v92 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v92 ^ 0x2DB5B6AF87F64351) >> 41) | ((v92 ^ 0x2DB5B6AF87F64351) << 57));
  v94 = v92 ^ 0x93C23431B76D41FLL ^ v87;
  v95 = (v94 ^ (v94 >> 28)) + (v94 >> 19) - 2 * ((v94 ^ (v94 >> 28)) & (v94 >> 19));
  v96 = v94 << 36;
  v97 = v95 ^ (v94 << 45);
  v98 = v85 & ~(v88 ^ v83);
  v99 = v97 ^ (v94 << 36);
  v100 = v74 ^ 0xAA09E229B327EE6ALL ^ v83 & ~v88;
  v101 = v99 ^ v93;
  v102 = v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100 ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) >> 10) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) << 47) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) << 54) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) >> 17);
  v103 = v102 ^ v93;
  v104 = v91 & ~(v99 ^ v93) ^ v102 ^ v93;
  v105 = v100 ^ 0x6DC4FB0BD4FFFF44;
  *(&v74 + 1) = v100;
  *&v74 = v100 ^ 0x6DC4FB0BD4FFFF44;
  v106 = (v74 >> 1) ^ v100 ^ 0x6DC4FB0BD4FFFF44 ^ ((v100 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v91;
  v107 = v105 >> 6;
  if (v96 == v97)
  {
    v108 = v107;
  }

  else
  {
    v108 = ~(v107 ^ v106);
  }

  v109 = v106 + v107 - 2 * (v108 & v106);
  v110 = v109 ^ (((~v102 | 0xFFFFFFFFEFFFFFFFLL) - (v102 & 0x4000000000)) ^ v102 & 0xFFFFFFBFEFFFFFFFLL) & v103;
  v111 = __ROR8__(((v101 << (v95 & 0x2B) << (v95 & 0x2B ^ 0x2B)) + (v101 >> 21)) ^ __ROR8__(v109 & ~v91, 21) ^ 0x6D12C2B6EED373A6, 43);
  v112 = v102 & ~v109 ^ v91 ^ v111;
  v113 = v104 ^ 0x5035F38BF1002A3ALL ^ v111;
  v114 = v113 ^ (v113 >> 19);
  v115 = v114 & 0xD99EEE0927173347 ^ (v113 << 45) & 0xD99EE00000000000 | v114 & 0x266111F6D8E8CCB8 ^ (v113 << 45) & 0x2661000000000000;
  v116 = (((v113 << 45) ^ (0xFFFFE00000000000 * v113) ^ (v115 + v114 - 2 * v115)) + v114) ^ (v113 >> 28);
  v117 = v116 & 0x78E134634F73AA70 ^ (v113 << 36) & 0x78E1346000000000 | v116 & 0x871ECB9CB08C558FLL ^ (v113 << 36) & 0x871ECB9000000000;
  v118 = v117 - 0x21AB2F79F13344 - ((2 * v117) & 0xFFBCA9A10C1D9978);
  v145[65] = v118 ^ 0xBC;
  v119 = v112 ^ 0xE013161F571CC4C5 ^ ((v112 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v112 ^ 0xE013161F571CC4C5));
  v120 = v119 ^ (((v112 ^ 0xE013161F571CC4C5) >> 61) | (v112 << 25));
  v121 = *(v144 + ((69 * ((v118 ^ 0xFFDE54D0860ECCBCLL) >> (v116 & 8) >> (v116 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  v122 = (((v121 ^ 0x57) + v121 - 2 * (v121 ^ 0x57)) ^ 0xFE) + v121;
  v145[54] = ((v119 ^ (((v112 ^ 0xE013161F571CC4C5) >> 61) | (v112 << 25))) >> 24) ^ 0x8A;
  v145[28] = BYTE2(v118) ^ 0xE;
  v145[41] = (v122 >> 2) | (v122 << 6);
  v123 = (v118 ^ 0xFFDE54D0860ECCBCLL) >> (v82 & 0x20) >> (v82 & 0x20 ^ 0x20u);
  v145[35] = BYTE1(v119);
  v124 = BYTE6(v118) ^ 0xDE;
  v145[21] = BYTE2(v119);
  v125 = v99 ^ v102;
  if (v103 == -1)
  {
    v126 = 0;
  }

  else
  {
    v126 = v125;
  }

  v145[58] = v123;
  v145[17] = BYTE4(v120) ^ 0x89;
  v145[5] = BYTE3(v118) ^ 0x86;
  v145[47] = BYTE5(v118) ^ 0x54;
  v127 = v110 - ((2 * v110) & 0x5A47EBDAAC1EB792);
  v145[14] = ~v118 >> 56;
  v128 = v127 + 0x2D23F5ED560F5BC9;
  v145[48] = v124;
  v145[16] = (v120 ^ 0x3EAE39898A000000) >> (v112 & 0x28) >> (v112 & 0x28 ^ 0x28);
  v129 = v127 - 0x5BDA183C59819C5ELL;
  v130 = 0x88FE0E29AF90F827;
  if (v128 < 0x88FE0E29AF90F827)
  {
    v129 = v128;
    v130 = 0;
  }

  if (v129)
  {
    v131 = v128;
  }

  else
  {
    v131 = v130;
  }

  *(&v132 + 1) = v131;
  *&v132 = v128;
  v133 = (v132 >> 1) ^ v128;
  v145[6] = v120;
  v134 = *(v9 + (BYTE6(v120) ^ 0xF9));
  v135 = v133 ^ (v131 << 58) ^ (v131 >> 6);
  v145[10] = BYTE1(v135);
  v136 = v102 ^ v126 & v101 ^ 0x29E1AB0124FF49E7 ^ v110;
  *&v132 = __ROR8__(v136, 10);
  v137 = (v136 ^ v132 ^ (v136 << 47)) + (v136 >> 17) - 2 * ((v136 ^ v132 ^ (v136 << 47)) & (v136 >> 17));
  v145[18] = BYTE4(v135);
  v145[25] = BYTE2(v135);
  v145[42] = HIBYTE(v120) ^ 0x3E;
  v145[12] = BYTE5(v135);
  v145[23] = BYTE6(v135);
  v145[44] = v135;
  v145[24] = BYTE3(v135);
  v145[30] = (v134 ^ 0xFA) - 119;
  v145[62] = HIBYTE(v135);
  v145[19] = (v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17));
  v138 = *(v147 + ((((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 8) ^ 0x27) + 279);
  v145[8] = ((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 24;
  v145[33] = ((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 16;
  v145[4] = (v138 ^ BYTE1(v137) ^ 0x2D ^ ((BYTE1(v137) ^ 0x2D) + 72) ^ 0x41) + 15;
  v139 = v104 ^ __ROR8__(v104 ^ 0x4734313A1F2B2857, 41) ^ ((v104 ^ 0x4734313A1F2B2857) >> 7);
  v140 = *(v146 + (((v137 >> 28) & 0xF0 | (v137 >> 36) & 0xF) ^ 0x5C));
  v145[46] = HIBYTE(v137);
  v145[43] = BYTE6(v137);
  v145[38] = BYTE5(v137);
  v145[31] = ((v140 >> 5) | (8 * v140)) ^ 0xC1;
  result = 58;
  LOBYTE(v137) = *(v9 + ((((((4 * v139) | (v139 >> 6)) ^ 0xA) >> 2) | ((((4 * v139) | (v139 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v145[55] = BYTE4(v139) ^ 0x3A;
  v145[34] = BYTE3(v139) ^ 0x1F;
  v145[32] = BYTE1(v139) ^ 0x28;
  v145[15] = (v137 ^ 0xFA) - 119;
  v142 = v139 ^ ((v104 ^ 0x4734313A1F2B2857) << 57);
  v145[7] = (v142 ^ 0x4734313A1F2B2857uLL) >> (v34 & 0x10) >> (v34 & 0x10 ^ 0x10);
  v145[61] = BYTE5(v139) ^ 0x31;
  v145[56] = (*(v9 + (BYTE6(v139) ^ 0x63)) ^ 0xFA) - 119;
  v145[51] = HIBYTE(v142) ^ 0x47;
  *v143 = v148 + 1;
  return result;
}

uint64_t sub_5DBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v24 = v19 ^ 0x720;
  *(v23 - 120) = v24 - (((v20 | (v23 - 128)) - ((v23 - 128) & v20)) ^ 0x5C24A40F) * v21 + 235;
  *(v23 - 128) = v17;
  *(v23 - 112) = &a17;
  v25 = (*(v18 + 8 * (v24 + 1179)))(v23 - 128);
  return (*(v18 + 8 * (((((v24 + 49) ^ (*(v23 - 104) > v22)) & 1) * (((v24 - 698397283) & 0x29A0AEDB) + 28)) ^ v24)))(v25);
}

uint64_t sub_5DBE4@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{
  v12 = (a6 + 16);
  v13 = v8 + 1 - ((v7 + 2) & a4);
  v11[12] = ((v9 - 40) ^ a1 ^ HIBYTE(v13)) - 2 * (((v9 - 40) ^ a1 ^ HIBYTE(v13)) & a5 ^ HIBYTE(v13) & 4) + 50;
  v11[13] = (BYTE2(v13) ^ 0x31) - (a3 & (2 * (BYTE2(v13) ^ 0x31))) + 50;
  v11[14] = (BYTE1(v13) ^ 0x1E) - (a3 & (2 * (BYTE1(v13) ^ 0x1E))) + 50;
  v11[15] = v13 ^ 0x26;
  *(v12 - 15) ^= *v11 ^ a2;
  *(v12 - 14) ^= v11[1] ^ a2;
  *(v12 - 13) ^= v11[2] ^ a2;
  *(v12 - 12) ^= v11[3] ^ a2;
  *(v12 - 11) ^= v11[4] ^ a2;
  *(v12 - 10) ^= v11[5] ^ a2;
  *(v12 - 9) ^= v11[6] ^ a2;
  *(v12 - 8) ^= v11[7] ^ a2;
  *(v12 - 7) ^= v11[8] ^ a2;
  *(v12 - 6) ^= v11[9] ^ a2;
  *(v12 - 5) ^= v11[10] ^ a2;
  *(v12 - 4) ^= v11[11] ^ a2;
  *(v12 - 3) ^= v11[12] ^ a2;
  *(v12 - 2) ^= v11[13] ^ a2;
  *(v12 - 1) ^= v11[14] ^ a2;
  *v12 ^= v11[15] ^ a2;
  return (*(v10 + 8 * ((((v6 + 16) > 0x13F) | (2 * ((v6 + 16) > 0x13F))) ^ (v9 - 307))))();
}

uint64_t sub_5DC40@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 + 1067) ^ 0xFFFFFFFFFFFFF830) + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v4 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((796 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 + 468))))(-2000);
}

uint64_t sub_5DC9C()
{
  v5 = 1388665877 * ((0xE90268FA5CBD5689 - ((v4 - 216) | 0xE90268FA5CBD5689) + STACK[0x328]) ^ 0x2387074A2EEFCB9ALL);
  *(v4 - 208) = (v3 + 1) - v5;
  *(v4 - 188) = (v2 - 542397458) ^ v5;
  v6 = STACK[0x334];
  v7 = v5 - (((v1 | ~(v2 - 309)) & (v2 - 309 - v1) | v1 & ~(v2 - 309)) >= 0) + 2 * LODWORD(STACK[0x334]) + 973282764;
  *(v4 - 184) = v5 ^ 3;
  v8 = LODWORD(STACK[0x330]) ^ v5;
  *(v4 - 216) = v6 ^ v5;
  *(v4 - 212) = v7;
  *(v4 - 200) = v8;
  *(v4 - 196) = v5 + 1;
  v9 = (*(v0 + 8 * SLODWORD(STACK[0x324])))(v4 - 216);
  return (*(v0 + 8 * *(v4 - 192)))(v9);
}

uint64_t sub_5DD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v29 - 144) = &a18;
  *(v29 - 136) = &a18;
  *(v29 - 112) = &a26;
  *(v29 - 104) = a11;
  *(v29 - 120) = a12;
  *(v29 - 128) = v27 - ((v29 - 1435881714 - 2 * ((v29 - 144) & 0xAA6A2F9E)) ^ 0x54DAD86) * v28 + 118;
  (*(v26 + 8 * (v27 + 1279)))(v29 - 144);
  return sub_77150();
}

uint64_t sub_5DE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v21 = STACK[0x3B0];
  STACK[0x580] -= 32;
  *(v21 + 335) = *(a14 + 335) ^ 0xE1 ^ *(*(&off_C6C70 + (a20 ^ 0x4D7)) + 15) ^ *(*(&off_C6C70 + (a20 ^ 0x44C)) + (((a20 - 681) | 0x140u) ^ 0x362) + 11) ^ *(*(&off_C6C70 + (a20 ^ 0x4B3)) + 6) ^ 0x32;
  return (*(v20 + 8 * a20))();
}

uint64_t sub_5E390(uint64_t a1, uint64_t a2)
{
  v5 = *(v4 + 56);
  *(v4 + 56) = v5 + ((v3 - 345246885) & 0x5FBF7BD7) - 1261138646;
  return (*(v2 + 8 * ((663 * ((v5 - 1470670869) < 0xFFFFFFFA)) ^ (v3 - 801))))(a1, a2, 0);
}

uint64_t sub_5E854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = v9 ^ 1;
  if (a8 != ((v8 - 1955) | 0x226) - 703)
  {
    v11 = 1;
  }

  return (*(v10 + 8 * (v11 | v8)))();
}

uint64_t sub_5E880(uint64_t a1)
{
  v6 = v2 + (v1 + 709) - 1642;
  *(a1 + v6) = *(v4 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ (v1 + 428))))();
}

uint64_t sub_5EA0C@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 50;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_5EA40(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_5EA5C@<X0>(int a1@<W8>)
{
  v7 = STACK[0x524];
  v8 = STACK[0x3A0];
  v9 = STACK[0x53C];
  v10 = &v6[6 * v3];
  v10[2] = v5;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v6 = v2 + 1;
  LODWORD(STACK[0x348]) = v1;
  v11 = a1 + 209 + ((a1 + 794) ^ 0x8C073DED) + v1;
  v13 = v11 < 531406499 && v11 >= SLODWORD(STACK[0x2D0]);
  return (*(v4 + 8 * ((26 * v13) ^ a1)))();
}

uint64_t sub_5EAD4(int8x16_t a1, int8x16_t a2)
{
  v8 = (v3 - 32);
  v9 = (v4 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v2 == 32) * v6) | v5)))();
}

uint64_t sub_5EB64@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v7 = *(v6 - 220 + a2 + 72);
  v8 = ((2 * a2) & 0xABBFDBF0) + (a2 ^ 0xD5DFEDF9) + v2;
  *(a1 + v8) = (((v3 + 124) | 0x80) - 52) ^ v7;
  *(a1 + v8 + 1) = (BYTE1(v7) ^ 0x51) + ~(2 * ((BYTE1(v7) ^ 0x51) & 0x3A ^ BYTE1(v7) & 8)) + 51;
  *(a1 + v8 + 2) = (BYTE2(v7) ^ 0x65) - ((2 * (BYTE2(v7) ^ 0x65)) & 0x64) + 50;
  *(a1 + v8 + 3) = (HIBYTE(v7) ^ 0x56) - 2 * ((HIBYTE(v7) ^ 0x56) & 0x33 ^ HIBYTE(v7) & 1) + 50;
  return (*(v5 + 8 * (((a2 + 4 < *(v6 - 128)) * v4) ^ v3)))();
}

uint64_t sub_5ECAC@<X0>(int a1@<W3>, int a2@<W4>, unsigned int a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v24 = (a15 + 24 * v19);
  *v24 = v22;
  v24[1] = a2;
  *&v20[6 * v19 + 4] = v23;
  v24[4] = a17;
  *v20 = a4 + 1;
  return (*(v21 + 8 * ((1209 * (v17 + a1 < (((v18 ^ 0x176) + 862) ^ a3))) ^ v18)))();
}

uint64_t sub_5ED84@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v39 = *(&a24 + a2 + 72);
  v40 = ((2 * a2) & 0xB7AFEFF8) + (a2 ^ 0x5BD7F7FF) + v36;
  *(a1 + v40) = ((v39 >> ((v37 + 104) ^ 0x3E)) ^ 0x56) - ((2 * ((v39 >> ((v37 + 104) ^ 0x3E)) ^ 0x56)) & 0x64) + 50;
  *(a1 + v40 + 1) = (BYTE2(v39) ^ 0x65) - ((2 * (BYTE2(v39) ^ 0x65)) & 0x64) + 50;
  *(a1 + v40 + 2) = (BYTE1(v39) ^ 0x51) - ((2 * (BYTE1(v39) ^ 0x51)) & 0x64) + 50;
  *(a1 + v40 + 3) = v39 ^ 0x4E;
  return (*(v38 + 8 * ((117 * (a2 + 4 < a36)) ^ v37)))();
}

uint64_t sub_5EEF4@<X0>(int a1@<W8>)
{
  v5 = ((&v7 & 0x52E069D0 | ~(&v7 | 0x52E069D0)) ^ 0xBEC37A0F) * a1;
  v8 = 0;
  v9 = v3;
  v7 = 1332270173 - v5;
  v10 = 2017451246 - v5;
  v11 = v1 + 1468 - v5 - 1782;
  result = (*(v4 + 8 * ((v1 + 1468) ^ 0xAE)))(&v7);
  *(v2 + 16) = *(v3 + 24);
  return result;
}

uint64_t sub_5EF74@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v3 + 36 + a2 - 931;
  *(v8 + v2) = *(STACK[0x4C8] + a2);
  v10 = a1 + a2 + 897 < v4;
  if (v4 < v5 != v9 > v7)
  {
    v10 = v4 < v5;
  }

  return (*(v6 + 8 * ((!v10 | (4 * !v10)) ^ v3)))();
}

uint64_t sub_5F020@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q1>, int8x16_t a4@<Q4>, uint64_t a5@<D5>, int8x16_t a6@<Q6>)
{
  v17 = v14 - 16;
  v18 = (v17 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a3 - 1), a4).u64[0];
  v20.i64[1] = a5;
  v21 = vrev64q_s8(vmulq_s8(v20, a6));
  *(v15 + v17) = veorq_s8(veorq_s8(veorq_s8(*(v11 + v18 - 15), *(a2 + v17)), veorq_s8(*(v9 + v18 - 15), *(v10 + v18 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v16 + 8 * (((a1 == 16) * (v13 + 1901)) ^ v12)))();
}

uint64_t sub_5F064@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  v19 = a1 < v15;
  *(&a12 + v12) = *(v18 + v13) - ((2 * *(v18 + v13)) & 0x64) + 50;
  if (v19 == v13 + 1 > v14)
  {
    v19 = (((v17 - 561) | 0x28) ^ (v15 - 44)) + v13 < a1;
  }

  return (*(v16 + 8 * ((116 * !v19) ^ v17)))();
}

uint64_t sub_5F134@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = (&STACK[0x5E0] + STACK[0x260] + (a1 ^ 0xFFFFFFFFFFFFFF7ALL));
  STACK[0x440] = v4;
  *v6 = 0xCDCDCDCDCDCDCDCDLL;
  v6[1] = 0x3232323234323220;
  v7 = 2066391179 * ((1995074501 - ((v5 - 216) | 0x76EA6BC5) + ((v5 - 216) | 0x8915943A)) ^ 0x26321622);
  *(v5 - 216) = (v2 + 68669857) ^ v7;
  *(v5 - 212) = 1525008249 - v7;
  (*(v3 + 8 * (v2 ^ 0xD1)))(v5 - 216);
  LODWORD(STACK[0x528]) = 1657355484;
  v8 = (*(v3 + 8 * (v2 + 91)))(336, 0x100004077774924);
  STACK[0x410] = v8;
  return (*(v3 + 8 * ((v8 == 0) ^ v2)))(v8, v9, v10, v11, v12, v13, v14, v15, a2);
}

uint64_t sub_5F2AC()
{
  v6 = v2 - 1;
  *(v5 + v6) = (v1 ^ 0x26) + *(v0 + v6) - (v3 & (2 * *(v0 + v6)));
  return (*(v4 + 8 * ((v6 == 0) | (8 * (v6 == 0)) | v1)))();
}

void sub_5F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0x3F34D2FB) - 1109938949) ^ v10 ^ ((v10 ^ 0xDAF97A1C) + 1478099998) ^ ((v10 ^ 0xF77FEBFF) + 1973196287) ^ ((v10 ^ 0x6FAECAA9 ^ v11) - 313672472);
  *a9 = (HIBYTE(v12) ^ 0x7D) - ((2 * (HIBYTE(v12) ^ 0x7D)) & 0x64) + 50;
  a9[1] = (BYTE2(v12) ^ 0x1C) - ((2 * (BYTE2(v12) ^ 0x1C)) & 0x64) + 50;
  a9[2] = (((((v10 ^ 0xD2FB) - 21253) ^ v10 ^ ((v10 ^ 0x7A1C) + 1054) ^ ((v10 ^ 0xEBFF) - 27137) ^ ((v10 ^ 0xCAA9 ^ v11) - 17176)) >> 8) ^ 0x81) - ((v12 >> 7) & 0x64) + 50;
  a9[3] = ((v10 ^ 0xFB) - 5) ^ v10 ^ ((v10 ^ 0x1C) + 30) ^ (-v10 - 2) ^ ((v10 ^ 0xA9 ^ v11) - 24) ^ 0xCC;
  v13 = v9 - ((2 * v9) & 0xEC48959136FDE122) + 0x76244AC89B7EF091;
  a9[4] = (HIBYTE(v13) ^ 0x76) - 2 * ((HIBYTE(v13) ^ 0x76) & 0x33 ^ HIBYTE(v13) & 1) + 50;
  a9[5] = (BYTE6(v13) ^ 0x24) - ((2 * (BYTE6(v13) ^ 0x24)) & 0x64) + 50;
  a9[6] = (BYTE5(v13) ^ 0x4A) - ((2 * (BYTE5(v13) ^ 0x4A)) & 0x64) + 50;
  a9[7] = (BYTE4(v13) ^ 0xC8) - ((2 * BYTE4(v13)) & 0x64) + 50;
  a9[8] = (((v9 - ((2 * v9) & 0x36FDE122) - 1686179695) >> 24) ^ 0x9B) + (~(2 * (((v9 - ((2 * v9) & 0x36FDE122) - 1686179695) >> 24) ^ 0x9B)) | 0x9B) + 51;
  a9[9] = (BYTE2(v13) ^ 0x7E) - 2 * ((BYTE2(v13) ^ 0x7E) & 0x33 ^ BYTE2(v13) & 1) + 50;
  a9[10] = (BYTE1(v13) ^ 0xF0) - 2 * ((BYTE1(v13) ^ 0xF0) & 0x3A ^ BYTE1(v13) & 8) + 50;
  a9[11] = (v9 - ((2 * v9) & 0x22) - 111) ^ 0xA3;
  JUMPOUT(0x5EF6CLL);
}

uint64_t sub_5F540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 - 1908470786) & 0x71C0F3EF ^ 0xFFFFFFFFFFFFFD10) + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((19 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))();
}

uint64_t sub_5F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v26 - 120) = v23;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v25;
  *(v26 - 128) = v20 - ((2 * ((v26 - 144) & 0x6A16D4D8) - (v26 - 144) + 367602467) ^ 0xBACEA93B) * v24 + 343;
  *(v26 - 144) = v22;
  *(v26 - 136) = v22;
  (*(v21 + 8 * (v20 + 1504)))(v26 - 144);
  return sub_77150();
}

uint64_t sub_5F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a13;
  a17 = 2066391179 * (((&a15 | 0x9AD2B40) - (&a15 & 0x9AD2B40)) ^ 0xA68AA958) + 668;
  v20 = (*(v19 + 18424))(&a15);
  return (*(v19 + 8 * (((4 * (a15 == v18)) | (16 * (a15 == v18))) ^ v17)))(v20);
}

void sub_5F74C(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = 843532609 * ((((2 * &a3) | 0x49415EF8) - &a3 - 614510460) ^ 0x78EDFBF9);
  a5 = a1;
  a3 = (-467380673 - v6 - ((843044 - (v6 << ((-96 * (v7 ^ 0x5A)) ^ 0xE1))) & 0xBCF5A)) ^ v8;
  a4 = v8 + v7 - 464;
  (*(v5 + 8 * (v7 ^ 0xB20u)))(&a3);
  sub_87264();
}

uint64_t sub_5F984(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t (*a15)(uint64_t, uint64_t, void))
{
  v18 = (((v15 ^ 0xD408C36) - 222334006) ^ ((v15 ^ 0x78F287E) - 126822526) ^ ((v15 ^ 0x5CAAF534) - 1554707764)) + (((*(v17 - 148) ^ 0xE4B2D8A) - 239807882) ^ ((*(v17 - 148) ^ 0xF2AAB43C) + 223693764) ^ ((*(v17 - 148) ^ 0xAA84C8CA) + 1434138422)) - 932548192;
  v19 = (v18 ^ 0xE76C2058) & (2 * (v18 & 0xE4603158)) ^ v18 & 0xE4603158;
  v20 = ((2 * (v18 ^ 0x2FEC0248)) ^ 0x97186620) & (v18 ^ 0x2FEC0248) ^ (2 * (v18 ^ 0x2FEC0248)) & 0xCB8C3310;
  v21 = v20 ^ 0x48841110;
  v22 = (v20 ^ 0x83000200) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x2E30CC40) & v21 ^ (4 * v21) & 0xCB8C3310;
  v24 = (v23 ^ 0xA000000) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC18C3310)) ^ 0xB8C33100) & (v23 ^ 0xC18C3310) ^ (16 * (v23 ^ 0xC18C3310)) & 0xCB8C3310;
  v26 = v24 ^ 0xCB8C3310 ^ (v25 ^ 0x88803100) & (v24 << 8);
  v27 = (((v16 ^ 0x762F9D25) - 1982831909) ^ ((v16 ^ 0xDEC31583) + 557640317) ^ ((v16 ^ 0xFE89D9DA) + 24520230)) + (((*(v17 - 144) ^ 0xCE6B0AE2) + 831845662) ^ ((*(v17 - 144) ^ 0x6FCB324A) - 1875587658) ^ ((*(v17 - 144) ^ 0xF7C569D4) + 138057260)) - 1379710549;
  *(v17 - 148) = v18 ^ (2 * ((v26 << 16) & 0x4B8C0000 ^ v26 ^ ((v26 << 16) ^ 0x33100000) & (((v25 ^ 0x430C0210) << 8) & 0x4B8C0000 ^ 0x438C0000 ^ (((v25 ^ 0x430C0210) << 8) ^ 0xC330000) & (v25 ^ 0x430C0210)))) ^ 0x231D0604;
  *(v17 - 144) = v27 ^ ((v27 ^ 0x20BFC9CC) - 541552511) ^ ((v27 ^ 0xCDBABD4F) + 851305476) ^ ((v27 ^ 0x182A6DCF) - 416467836) ^ ((v27 ^ 0xF5D7BFFF) + 181462708) ^ 0x569DF7CF;
  v28 = (((a7 ^ 0x8EF9CB81) + 1896232063) ^ ((a7 ^ 0xD80DC9B3) + 670185037) ^ ((a7 ^ 0x91534E) - 9524046)) + (((*(v17 - 140) ^ 0x92CA633E) + 1832230082) ^ ((*(v17 - 140) ^ 0xC00079BE) + 1073710658) ^ ((*(v17 - 140) ^ 0x4AF4BFC) - 78597116)) + 395597097;
  v29 = (v28 ^ 0xD1344DCF) & (2 * (v28 & 0x95364DCF)) ^ v28 & 0x95364DCF;
  v30 = ((2 * (v28 ^ 0xD15C5E49)) ^ 0x88D4270C) & (v28 ^ 0xD15C5E49) ^ (2 * (v28 ^ 0xD15C5E49)) & 0x446A1386;
  v31 = v30 ^ 0x442A1082;
  v32 = (v30 ^ 0x400304) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x11A84E18) & v31 ^ (4 * v31) & 0x446A1384;
  v34 = (v33 ^ 0x280200) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x44421186)) ^ 0x46A13860) & (v33 ^ 0x44421186) ^ (16 * (v33 ^ 0x44421186)) & 0x446A1380;
  v36 = v34 ^ 0x446A1386 ^ (v35 ^ 0x44201000) & (v34 << 8);
  v37 = (v36 << 16) & 0x446A0000 ^ v36 ^ ((v36 << 16) ^ 0x13860000) & (((v35 ^ 0x4A0386) << 8) & 0x446A0000 ^ 0x4680000 ^ (((v35 ^ 0x4A0386) << 8) ^ 0x6A130000) & (v35 ^ 0x4A0386));
  v38 = (((a4 ^ 0xC85EA396) + 933321834) ^ ((a4 ^ 0x64798A4C) - 1685686860) ^ ((a4 ^ 0xFA4278A6) + 96307034)) + (((*(v17 - 136) ^ 0xCC7B0383) + 864353405) ^ ((*(v17 - 136) ^ 0x3A548E47) - 978619975) ^ ((*(v17 - 136) ^ 0xA04ADCB8) + 1605706568)) - 1342435896;
  v39 = (v38 ^ 0xF8EE15B5) & (2 * (v38 & 0xFCCE9530)) ^ v38 & 0xFCCE9530;
  v40 = ((2 * (v38 ^ 0x41EE1FB5)) ^ 0x7A41150A) & (v38 ^ 0x41EE1FB5) ^ (2 * (v38 ^ 0x41EE1FB5)) & 0xBD208A84;
  v41 = v40 ^ 0x85208A85;
  v42 = (v40 ^ 0x30000000) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0xF4822A14) & v41 ^ (4 * v41) & 0xBD208A84;
  v44 = (v43 ^ 0xB4000A00) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0x9208081)) ^ 0xD208A850) & (v43 ^ 0x9208081) ^ (16 * (v43 ^ 0x9208081)) & 0xBD208A80;
  v46 = v44 ^ 0xBD208A85 ^ (v45 ^ 0x90008800) & (v44 << 8);
  *(v17 - 140) = v28 ^ (2 * v37) ^ 0x4B833BBF;
  *(v17 - 136) = v38 ^ (2 * ((v46 << 16) & 0x3D200000 ^ v46 ^ ((v46 << 16) ^ 0xA850000) & (((v45 ^ 0x2D200285) << 8) & 0x3D200000 ^ 0x1D200000 ^ (((v45 ^ 0x2D200285) << 8) ^ 0x208A0000) & (v45 ^ 0x2D200285)))) ^ 0xC0EAD146;
  return a15(v17 - 220, a2, a14);
}

uint64_t sub_5FA44(uint64_t a1)
{
  v2 = 742307843 * ((2 * (a1 & 0x686566B6) - a1 - 1751475895) ^ 0x89B8141C);
  v3 = *(a1 + 8) + v2;
  v4 = *(a1 + 32) ^ v2;
  v5 = *a1 - v2;
  v6 = *(a1 + 24);
  v7 = 1365817397 * v4 + 1547213640;
  v8 = (v7 ^ 0x2DE62529) & (2 * (v7 & 0xAD84B52C)) ^ v7 & 0xAD84B52C;
  v9 = ((2 * (v7 ^ 0x27E70539)) ^ 0x14C7602A) & (v7 ^ 0x27E70539) ^ (2 * (v7 ^ 0x27E70539)) & 0x8A63B014;
  v10 = v9 ^ 0x8A209015;
  v11 = (v9 ^ 0x32000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x298EC054) & v10 ^ (4 * v10) & 0x8A63B014;
  v13 = (v12 ^ 0x8028000) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x82613001)) ^ 0xA63B0150) & (v12 ^ 0x82613001) ^ (16 * (v12 ^ 0x82613001)) & 0x8A63B010;
  v15 = v13 ^ 0x8A63B015 ^ (v14 ^ 0x82230000) & (v13 << 8);
  v16 = v7 ^ (2 * ((v15 << 16) & 0xA630000 ^ v15 ^ ((v15 << 16) ^ 0x30150000) & (((v14 ^ 0x840B005) << 8) & 0xA630000 ^ 0x8430000 ^ (((v14 ^ 0x840B005) << 8) ^ 0x63B00000) & (v14 ^ 0x840B005)))) ^ 0xEDBAB1A8;
  v17 = 1564307779 * (((&v19 ^ 0x823EB004) & 0x1692BE1F | ~(&v19 ^ 0x823EB004 | 0x1692BE1F)) ^ 0xFC5E3DF7);
  v20 = *(a1 + 16);
  v19 = v16 + v17;
  v23 = v6;
  v21 = (((v5 ^ 0x4600779F) - 1174435743) ^ ((v5 ^ 0x37AA255A) - 933897562) ^ ((v5 ^ 0xB2AF49B7) + 1297135177)) + v17 - 88065600;
  v22 = v3 - v17 + 1197043342;
  result = (*(*(&off_C6C70 + (v3 ^ 0xB8A69551)) + (v3 ^ 0xB8A69DFC) - 1))(&v19);
  *(a1 + 4) = v24;
  return result;
}

void sub_5FD44(uint64_t a1)
{
  v1 = *(a1 + 32) - 1082434553 * (a1 ^ 0x9B47F68A);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_5FE74@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((2 * *(v1 + v5)) & 0x64) + 50;
  return (*(v4 + 8 * ((3859 * (v5 == ((v2 - 1262890870) & 0x4B462A2D) - 525)) ^ v2)))();
}

uint64_t sub_5FF20(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (((v3 ^ 0x1DF45B96) - 502553494) ^ ((v3 ^ 0x16E588CB) - 384141515) ^ ((v3 ^ 0x5D748221) - 1567916605 + ((a3 + 1844898631) & 0x92090F3F))) + (((v4 ^ 0x25CCEED8) - 634187480) ^ ((v4 ^ 0x81568F02) + 2125033726) ^ ((v4 ^ 0xF2FF30A6) + 218156890));
  LODWORD(STACK[0x2A0]) = (1396006152 - v5) ^ (v5 - 24590127) ^ (((v5 - 24590127) ^ 0x942F7728) + 980331791) ^ (((v5 - 24590127) ^ 0x2060318B) - 1910379602) ^ (((v5 - 24590127) ^ 0x1A0E9C85) - 1269872988) ^ 0x7DB74A5;
  return sub_60074();
}

uint64_t sub_60074@<X0>(int a1@<W0>, int a2@<W7>, uint64_t (*a3)(void)@<X8>)
{
  v8 = (((v5 ^ 0x55601DD4) - 1432362452) ^ ((v5 ^ 0x35DB3517) - 903558423) ^ ((v5 ^ 0x36DE79BF) - 920549823)) + (((a1 ^ 0xC4B40806) + 994834426) ^ ((a1 ^ 0x796A6CB) - 127313611) ^ ((a1 ^ 0x9547FFB1) + 1790443599)) + 735391447;
  v9 = (v8 ^ 0x40F57099) & (2 * (v8 & 0x80F57421)) ^ v8 & 0x80F57421;
  v10 = ((2 * (v8 ^ 0x40BF389B)) ^ 0x80949974) & (v8 ^ 0x40BF389B) ^ (2 * (v8 ^ 0x40BF389B)) & 0xC04A4CBA;
  v11 = v10 ^ 0x404A448A;
  v12 = v10 & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x12932E8) & v11 ^ (4 * v11) & 0xC04A4CB8;
  v14 = (v13 ^ 0x800A0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0xC0424C12)) ^ 0x4A4CBA0) & (v13 ^ 0xC0424C12) ^ (16 * (v13 ^ 0xC0424C12)) & 0xC04A4CB0;
  v16 = v14 ^ 0xC04A4CBA ^ (v15 ^ 0x4800) & (v14 << 8);
  v17 = v8 ^ (2 * ((v16 << 16) & 0x404A0000 ^ v16 ^ ((v16 << 16) ^ 0x4CBA0000) & (((v15 ^ 0xC04A041A) << 8) & 0xC04A0000 ^ (((v15 ^ 0xC04A041A) << 8) ^ 0x4A4C0000) & (v15 ^ 0xC04A041A) ^ 0x20000))) ^ 0xD610BC29;
  v18 = (((v7 ^ 0x99A47EEC) + 1717272852) ^ ((v7 ^ 0x58BAE192) - 1488642450) ^ ((v7 ^ 0x977BCE02) + 1753494014)) + (((v6 ^ 0x8CD9855D) + 1931901603) ^ ((v6 ^ 0xEAE18A7) - 246290599) ^ ((v6 ^ 0xD412CC86) + 736965498)) - 832254577;
  v19 = (v18 ^ 0xDF659165) & (2 * (v18 & 0xDE65D569)) ^ v18 & 0xDE65D569;
  v20 = ((2 * (v18 ^ 0xD7E699F5)) ^ 0x13069938) & (v18 ^ 0xD7E699F5) ^ (2 * (v18 ^ 0xD7E699F5)) & 0x9834C9C;
  v21 = v20 ^ 0x8814484;
  v22 = (v20 ^ 0x1020808) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x260D3270) & v21 ^ (4 * v21) & 0x9834C9C;
  v24 = (v23 ^ 0x10010) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x9824C8C)) ^ 0x9834C9C0) & (v23 ^ 0x9824C8C) ^ (16 * (v23 ^ 0x9824C8C)) & 0x9834C90;
  v26 = v24 ^ 0x9834C9C ^ (v25 ^ 0x8004800) & (v24 << 8);
  LODWORD(STACK[0x290]) = v17;
  LODWORD(STACK[0x294]) = v18 ^ (2 * ((v26 << 16) & 0x9830000 ^ v26 ^ ((v26 << 16) ^ 0x4C9C0000) & (((v25 ^ 0x183041C) << 8) & 0x9830000 ^ 0x8830000 ^ (((v25 ^ 0x183041C) << 8) ^ 0x34C0000) & (v25 ^ 0x183041C)))) ^ 0x8A061D2D;
  v27 = (((v4 ^ 0x93C0EE49) + 1816072631) ^ ((v4 ^ 0x3DB51B45) - 1035279173) ^ ((v4 ^ 0xF810A470) + 133127056)) + (((LODWORD(STACK[0x298]) ^ 0xACCD1FF) - 181195263) ^ ((LODWORD(STACK[0x298]) ^ 0x9C012D58) + 1677644456) ^ ((LODWORD(STACK[0x298]) ^ 0xC0A8ADDB) + 1062687269)) + 442704197;
  v28 = (v27 ^ 0x405729B3) & (2 * (v27 & 0x926781B3)) ^ v27 & 0x926781B3;
  v29 = ((2 * (v27 ^ 0x60DC2BF3)) ^ 0xE5775480) & (v27 ^ 0x60DC2BF3) ^ (2 * (v27 ^ 0x60DC2BF3)) & a2;
  v30 = v29 ^ 0x1288AA40;
  v31 = (v29 ^ 0xC0320000) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0xCAEEA900) & v30 ^ (4 * v30) & a2;
  v33 = v31 ^ a2 ^ (v32 ^ 0xC2AAA800) & (16 * v31);
  v34 = (16 * (v32 ^ 0x30110240)) & a2 ^ 0xD0010A40 ^ ((16 * (v32 ^ 0x30110240)) ^ 0x2BBAA400) & (v32 ^ 0x30110240);
  v35 = (v33 << 8) & (a2 - 64) ^ v33 ^ ((v33 << 8) ^ 0xBBAA4000) & v34;
  v36 = v27 ^ (2 * ((v35 << 16) & 0x72BB0000 ^ v35 ^ ((v35 << 16) ^ 0x2A400000) & ((v34 << 8) & 0x72BB0000 ^ 0x40110000 ^ ((v34 << 8) ^ 0xBBAA0000) & v34))) ^ 0x21844F;
  v37 = (((v3 ^ 0xEC2572C6) + 333090106) ^ ((v3 ^ 0x81C580AB) + 2117762901) ^ ((v3 ^ 0x3B85A311) - 998613777)) + (((LODWORD(STACK[0x29C]) ^ 0x2F737A79) - 796097145) ^ ((LODWORD(STACK[0x29C]) ^ 0x3BA50878) - 1000671352) ^ ((LODWORD(STACK[0x29C]) ^ 0x42B3237D) - 1119036285)) + 742876381;
  v38 = (v37 ^ 0xA8A2BF92) & (2 * (v37 & 0x80833E1B)) ^ v37 & 0x80833E1B;
  v39 = ((2 * (v37 ^ 0xA8A48F92)) ^ 0x504F6312) & (v37 ^ 0xA8A48F92) ^ (2 * (v37 ^ 0xA8A48F92)) & 0x2827B188;
  v40 = v39 ^ 0x28209089;
  v41 = (v39 ^ 0x52000) & (4 * v38) ^ v38;
  v42 = ((4 * v40) ^ 0xA09EC624) & v40 ^ (4 * v40) & 0x2827B188;
  v43 = (v42 ^ 0x20068000) & (16 * v41) ^ v41;
  v44 = ((16 * (v42 ^ 0x8213189)) ^ 0x827B1890) & (v42 ^ 0x8213189) ^ (16 * (v42 ^ 0x8213189)) & 0x2827B180;
  v45 = v43 ^ 0x2827B189 ^ (v44 ^ 0x231000) & (v43 << 8);
  LODWORD(STACK[0x298]) = v36;
  LODWORD(STACK[0x29C]) = v37 ^ (2 * ((v45 << 16) & 0x28270000 ^ v45 ^ ((v45 << 16) ^ 0x31890000) & (((v44 ^ 0x2804A109) << 8) & 0x28270000 ^ 0x8060000 ^ (((v44 ^ 0x2804A109) << 8) ^ 0x27B10000) & (v44 ^ 0x2804A109)))) ^ 0xC6AB0C75;
  return a3();
}

uint64_t sub_60848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, char a43)
{
  if (a43 == 2)
  {
    return (*(v43 + 8 * (((a42 != 0) * ((863 * (a8 ^ 0x24)) ^ 0x6CB)) ^ (a8 + 1688))))(a23);
  }

  if (a43 != 1)
  {
    JUMPOUT(0x6092CLL);
  }

  return (*(v43 + 8 * ((977 * (a42 != a8 - 38)) ^ (a8 + 469))))(a23);
}

uint64_t sub_60978@<X0>(int a1@<W8>, uint64_t a2, char a3, __int16 a4, __int16 a5, char a6, char a7, uint64_t a8, char *a9, char *a10, char a11, uint64_t *a12, int a13, unsigned int a14, int a15)
{
  v18 = 843532609 * ((~&a8 & 0x74270446 | &a8 & 0x8BD8FBB9) ^ 0x286A50C3);
  a8 = *(v15 + 32);
  a9 = &a7;
  a12 = &a2;
  a10 = &a3;
  a13 = (v17 + 1986157456) ^ v18;
  a14 = ((((a1 ^ 0x7D6AB68C) - 2104145548) ^ ((a1 ^ 0x5B43E0EC) - 1531175148) ^ ((a1 ^ 0x81A59A5C) + v17 - 167 + 2119852823)) + 114677510) ^ v18;
  a11 = 65 * ((~&a8 & 0x46 | &a8 & 0xB9) ^ 0xC3) + 60;
  v19 = (*(v16 + 8 * (v17 + 1499)))(&a8);
  return (*(v16 + 8 * ((1077 * (a15 == -1261164275)) ^ v17)))(v19);
}

uint64_t sub_60D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = v20 + 2066391179 * (((&a17 | 0xD88E90BB) - &a17 + (&a17 & 0x27716F40)) ^ 0x77A912A3) + 478;
  a18 = &a12;
  v21 = (*(v19 + 8 * (v20 + 2113)))(&a17);
  return (*(v19 + 8 * (((a17 == ((v20 + 1664859825) & 0x9CC441F5 ^ 0xB4D42868)) * (((v20 + 21927898) | 0x40A12204) - 1106228182)) ^ v20)))(v21);
}

uint64_t sub_60E48@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v25 = 742307843 * ((((v24 - 128) | 0xE932CD9F) - (v24 - 128) + ((v24 - 128) & 0x16CD3260)) ^ 0xF71040CA);
  *(v24 - 120) = &a12;
  *(v24 - 128) = v21 - v25 - 473374142;
  *(v24 - 108) = v21 + 1443 - v25 + a1 - (((v21 + 88) ^ 0x47C665E2) & (2 * a1)) + 602090569;
  v26 = (*(v22 + 8 * (v21 ^ 0x903)))(v24 - 128);
  return (*(v22 + 8 * ((938 * (*v23 - 1368544343 + (a21 & 0x3Fu) < 0xFFFFFFC0)) ^ v21)))(v26);
}

uint64_t sub_60F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v19 = (a9 - 671758740) | 0x117;
  v20 = a9 - 671758251;
  v21 = a9 - 671757072;
  v22 = v18 + 1968681738 < (a17 + 624893072);
  if (v18 + 1968681738 < (v20 ^ (a8 + 198) ^ v19) != a17 + 624893072 < a8)
  {
    v22 = a17 + 624893072 < a8;
  }

  return (*(v17 + 8 * ((22 * !v22) ^ v21)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_61028(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v12 = a6 + 1;
  v13 = v12 < a1;
  if (v9 > a3 != v12 < v11)
  {
    v13 = v9 > a3;
  }

  return (*(v8 + 8 * ((v13 * ((a7 ^ a8) * v10 + 3348)) ^ a7)))();
}

uint64_t sub_6114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, __int16 a31, char a32, char a33)
{
  a33 = *(&a30 + v35);
  v37 = ((v33 + 1894287562) & 0x8F1773FF ^ ((v33 - 1164) + 344)) + v34 == 4;
  return (*(v36 + 8 * (((2 * v37) | (8 * v37)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_611A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v11 = v6 + 32;
  v12 = (v11 ^ a1 ^ ((v7 + 426) | v9)) + v5;
  v13 = *(a2 + v12 - 15);
  v14 = *(a2 + v12 - 31);
  v15 = v4 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a3)), a4);
  return (*(v10 + 8 * ((14 * (v8 != v11)) ^ v7)))();
}

uint64_t sub_611AC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v8 + 1;
  if (v13 == 19)
  {
    v15 = 0;
  }

  else
  {
    v14 = (*(v10 + v13) ^ a3) - (*(v11 + v13) ^ a3);
    v15 = v14 + a4 - (a8 & (2 * v14)) == ((v9 + 194) ^ (a4 + 412));
  }

  v16 = v15;
  return (*(v12 + 8 * ((504 * v16) ^ v9)))();
}

uint64_t sub_611B4()
{
  v4 = 1082434553 * (((v3 - 144) & 0xB78A4088 | ~((v3 - 144) | 0xB78A4088)) ^ 0xD33249FD);
  *(v3 - 136) = v9;
  *(v3 - 128) = v2;
  *(v3 - 120) = v7 - v4 + ((v0 - 1680) ^ 0x9BF0F93B);
  *(v3 - 116) = (v0 - 1458) ^ v4;
  (*(v1 + 8 * (v0 ^ 0xFD7)))(v3 - 144);
  *v6 = v7;
  result = v8;
  *(v8 + 40) = -1261164275;
  return result;
}

uint64_t sub_612E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a9 + v11);
  *(v14 - 1) = v13;
  *v14 = v13;
  return (*(v12 + 8 * (((((((v10 + 1879970782) & 0x8FF1EBF1) - 513) & v9) != 16) * (((((v10 + 1879970782) & 0x8FF1EBF1) - 237) | 0x6B2) - 998)) ^ (v10 + 1879970782) & 0x8FF1EBF1)))();
}

uint64_t sub_61344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = 1785193651 * ((2 * ((v37 - 160) & 0x71CC2098) - (v37 - 160) - 1909203100) ^ 0x9DEF3344);
  STACK[0x2C8] = &a26;
  *(v37 - 144) = a15 - v38 + 212240405;
  *(v37 - 160) = (v35 + 1481) ^ v38;
  v39 = (*(v36 + 8 * (v35 ^ 0x89E)))(v37 - 160);
  v40 = a35 & (((v35 - 69) | 0x400) - 961);
  *(&a26 + v40) = -78;
  return (*(v36 + 8 * ((1351 * (v40 > 0x37)) ^ v35)))(v39);
}

uint64_t sub_614E4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x248] + a2 + 72);
  v6 = (a2 ^ 0x5FF7EFE3 ^ (2 * v3) ^ 0x9A6) + ((2 * a2) & 0xBFEFDFF8) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0x56) - ((2 * (HIBYTE(v5) ^ 0x56)) & 0x64) + 50;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x65) - ((2 * (BYTE2(v5) ^ 0x65)) & 0x64) + 50;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0x51) - ((2 * (BYTE1(v5) ^ 0x51)) & 0x64) + 50;
  *(a1 + v6 + 3) = v5 ^ 0x4E;
  return (*(v4 + 8 * ((52 * (a2 + 4 < LODWORD(STACK[0x2A4]))) ^ v3)))();
}

uint64_t sub_615F4@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 + 843532609 * ((((2 * &v5) | 0x55EA1954) - &v5 + 1426781014) ^ 0xF6B8582F) - 771;
  v7 = v3;
  v8 = v1;
  v5 = v3;
  return (*(a1 + 8 * (v2 + 1151)))(&v5);
}

uint64_t sub_616C0@<X0>(int a1@<W8>)
{
  *v2 = STACK[0x4EC];
  v2[85] = STACK[0x544];
  v2[86] = STACK[0x540];
  v2[87] = STACK[0x3CC];
  v2[88] = STACK[0x4A4];
  return (*(v1 + 8 * (((STACK[0x3D0] == 0) * (4 * (a1 ^ 0x48) - 152 + ((4 * (a1 ^ 0x48) - 1289612341) & 0x4CDDECDB) - 1384)) ^ (4 * (a1 ^ 0x48) - 193))))();
}

uint64_t sub_61824@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10)
{
  a9 = (-117 * (((&a9 | 0x45) - &a9 + (&a9 & 0xB8)) ^ 0x5D)) ^ 0x2B;
  a10 = (a1 + 999) ^ (2066391179 * (((&a9 | 0xB8757545) - &a9 + (&a9 & 0x478A8AB8)) ^ 0x1752F75D));
  v11 = (*(v10 + 8 * (a1 + 1946)))(&a9);
  return sub_6189C(v11);
}

uint64_t sub_618F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x260] = v65;
  *(v62 + 1424) = 0;
  memset((v62 + 1432), 50, 104);
  *(v63 + 96) = v62;
  STACK[0x400] = v63 + 96;
  *(v62 + 476) = 1;
  v66 = STACK[0x360];
  STACK[0x478] = *(v64 + 8 * v61);
  STACK[0x2C8] = v63;
  v67 = STACK[0x4F8];
  v68 = (v61 + 1887) ^ 0x48E;
  v69 = (&STACK[0x5E0] + STACK[0x4F8]);
  STACK[0x4E0] = v69;
  STACK[0x4F8] = v67 + 432;
  LODWORD(STACK[0x300]) = a4;
  LODWORD(STACK[0x53C]) = a4;
  STACK[0x3A0] = v66;
  LODWORD(STACK[0x394]) = -712618048;
  LODWORD(STACK[0x374]) = 1657355148;
  STACK[0x510] = 0;
  LODWORD(STACK[0x524]) = 313566482;
  LODWORD(STACK[0x348]) = a7 + 1;
  *v69 = 1098146250;
  LODWORD(STACK[0x2E0]) = 61642217;
  LODWORD(STACK[0x308]) = v68 - 440216382;
  LODWORD(STACK[0x2D0]) = -1616077123;
  LODWORD(STACK[0x2D8]) = 257946682;
  v71 = *v69 != 1098146250 || LODWORD(STACK[0x348]) != a7 + 4 * ((v61 + 1887) ^ 0x79F) - 932;
  return (*(v64 + 8 * ((v71 * (v68 + 466)) ^ v68)))(a1, a2, a3, a4, a5, a6, a7, 2699484461, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

void sub_61AA0()
{
  v4 = v0;
  v5 = STACK[0x450] + 128;
  STACK[0x530] = v5;
  v6 = 742307843 * ((((v3 - 216) | 0x816BE91D) - ((v3 - 216) & 0x816BE91D)) ^ 0x9F496448);
  *(v3 - 208) = v5;
  *(v3 - 196) = 602092488 - v6;
  *(v3 - 216) = -473373760 - v6 + v0;
  (*(v1 + 8 * (v0 + 2173)))(v3 - 216);
  STACK[0x458] = *(v1 + 8 * v4);
  STACK[0x308] = v2;
  JUMPOUT(0x55A8CLL);
}

uint64_t sub_61B64()
{
  v1 = STACK[0x340] - 872;
  LODWORD(STACK[0x598]) = v0;
  return sub_85618(v1);
}

uint64_t sub_61B88@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ 0xB98CD7DE) + v2;
  *(*(a1 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((609 * (v8 > (v1 + 1))) ^ (v3 - 969568221) & 0x39CA6DBDu)))();
}

uint64_t sub_61CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 128) = v14 - ((((v18 - 136) | 0xDEECC404) - (v18 - 136) + ((v18 - 136) & 0x21133BF8)) ^ 0xA4BD85E) * v17 - 614;
  *(v18 - 136) = a11;
  *(v18 - 120) = &a14;
  v19 = (*(v15 + 8 * (v14 ^ 0xFCA)))(v18 - 136);
  return (*(v15 + 8 * ((((v14 ^ ((v16 + *(v18 - 112) - 1) < 0xE85389C3)) & 1) * ((v14 + 1889433606) & 0x8F6187FB ^ 0x771)) ^ v14)))(v19);
}

uint64_t sub_61E30(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a3 ^ 0x7D8;
  v9 = (((a5 ^ 0x6AC7A2BB) - 1791468219) ^ ((a5 ^ 0x622FC16E) - 1647296878) ^ (((394 * (v8 ^ 0x550)) ^ 0xB164B718) + (a5 ^ 0x4E9B4BF4))) + v7;
  v10 = (((a4 ^ 0xCD33790C) + 852264692) ^ ((a4 ^ 0x2712709B) - 655519899) ^ ((a4 ^ 0xAC5221B6) + 1403903562)) + v7;
  v11 = (v10 < v6) ^ (v9 < v6);
  v12 = v9 < v10;
  if (v11)
  {
    v12 = v10 < v6;
  }

  return (*(v5 + 8 * (((4 * v12) | (8 * v12)) ^ v8)))();
}

uint64_t sub_61FF0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v16) = a1 ^ 0x665517C;
  LODWORD(v16) = a1 ^ 0x55555555;
  v17 = (a2 ^ v12) + (v16 >> 27) + (((v6 ^ v5) + v12 - ((2 * (v6 ^ v5)) & 0xACCAA2F8)) ^ a4) - 14901403 + (((v7 + 774) | 0x180) ^ (v14 + 907) ^ *(v8 + 4 * (a5 + v11)));
  v18 = (v17 ^ 0xA317B061) & (2 * (v17 & 0xCB462271)) ^ v17 & 0xCB462271;
  v19 = ((2 * (v17 ^ 0x271FF0C3)) ^ 0xD8B3A564) & (v17 ^ 0x271FF0C3) ^ (2 * (v17 ^ 0x271FF0C3)) & (v10 + 2);
  v20 = v19 ^ 0x24485292;
  v21 = (v19 ^ 0x48118000) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xB1674AC8) & v20 ^ (4 * v20) & v10;
  v23 = (v22 ^ 0xA0414280) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x4C189032)) ^ 0xC59D2B20) & (v22 ^ 0x4C189032) ^ (16 * (v22 ^ 0x4C189032)) & v10;
  v25 = v24 ^ 0x2840D092;
  v26 = v23 ^ (v10 + 2) ^ (v24 ^ 0xC4190200) & (v23 << 8);
  return (*(v9 + 8 * ((28 * (a5 + 1 != v13 + 80)) ^ v7)))(v17 ^ (2 * ((v26 << 16) & 0x6C590000 ^ v26 ^ ((v26 << 16) ^ 0x52B20000) & ((v25 << 8) & 0x6C590000 ^ 0x24090000 ^ ((v25 << 8) ^ 0x59D20000) & v25))) ^ 0xC5B0D669, a4);
}

void sub_621DC()
{
  STACK[0x288] = 0;
  LODWORD(STACK[0x544]) = 313725005;
  v0 = &STACK[0x5E0] + STACK[0x220];
  v1 = STACK[0x220] + 1712;
  STACK[0x4F8] = v1;
  *v0 = 0x6370646600;
  v0[8] = 1;
  STACK[0x260] = v1;
  STACK[0x290] = (v0 + 9);
  JUMPOUT(0x8548CLL);
}

uint64_t sub_622CC@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 563552687;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 50)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 178)
  {
    v12 = -1261164275;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 37)
    {
      v15 = 2008292077;
    }

    else
    {
      v15 = 2008292076;
    }

    *(result + 16) = 1941292484;
    *(result + 20) = v15;
    *(result + 24) = -1261164275;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0x900)))();
    v12 = 1261138644;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_623A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v20 = (v16 + 1727012092) & 0x990FDF3D;
  *v17 = a1;
  *a4 = a16 ^ (v18 + 295) ^ v20;
  return (*(v19 + 8 * (((((v20 + 763229254) & 0xD28209E5 ^ 0xFFFFFFCA) + ((v20 - 817) | 0x200)) * (a9 == 0)) ^ v20)))();
}

uint64_t sub_62428@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xCCBu));

  return v3(v1);
}

uint64_t sub_6245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = STACK[0x340];
  STACK[0x4F8] -= 1616;
  LODWORD(STACK[0x52C]) = a5 - 154;
  return (*(v5 + 8 * (((STACK[0x3D0] == 0) * (v6 - 152 + ((v6 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v6 - 193))))();
}

uint64_t sub_62514()
{
  v13.val[1].i64[0] = (v3 + 13) & 0xF;
  v13.val[1].i64[1] = (v3 + 12) & 0xF;
  v13.val[2].i64[0] = (v3 + 11) & 0xF;
  v13.val[2].i64[1] = (v3 + 10) & 0xF;
  v13.val[3].i64[0] = (v3 + 9) & 0xF;
  v13.val[3].i64[1] = v3 & 0xF ^ 8;
  v8 = (v3 + v6 - 16);
  v14.val[0].i64[0] = (v3 + 7) & 0xF;
  v14.val[0].i64[1] = (v3 + 6) & 0xF;
  v14.val[1].i64[0] = (v3 + 5) & 0xF;
  v14.val[1].i64[1] = (v3 + 4) & 0xF;
  v14.val[2].i64[0] = (v3 + 3) & 0xF;
  v14.val[2].i64[1] = (v3 + 2) & 0xF;
  v14.val[3].i64[0] = (v3 + 1) & 0xF;
  v14.val[3].i64[1] = v3 & 0xF;
  v9.i64[0] = 0x6161616161616161;
  v9.i64[1] = 0x6161616161616161;
  v10.i64[0] = 0x3232323232323232;
  v10.i64[1] = 0x3232323232323232;
  v13.val[0].i64[0] = v4 & 0xF;
  v13.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.i64[0] = vqtbl4q_s8(v13, xmmword_A9260).u64[0];
  v11.i64[1] = vqtbl4q_s8(v14, xmmword_A9260).u64[0];
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*v8, *(v0 + v13.val[0].i64[0] - 15)), veorq_s8(*(v13.val[0].i64[0] + v1 - 12), *(v13.val[0].i64[0] + v2 - 10))));
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v14.val[0], v14.val[0], 8uLL), v10), vmulq_s8(v11, v9)));
  *v8 = vextq_s8(v14.val[0], v14.val[0], 8uLL);
  return (*(v7 + 8 * (v5 ^ (((v5 + 1020) - (v3 & 0x10) == 1394) << 6))))(v13.val[0].i64[1], 1394 - (v5 + 1020));
}

uint64_t sub_626DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1726767306;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v4 = *(a2 + 8) + (*(a2 + 4) - v3);
  v5 = 50899313 * ((v10 & 0xD24FDAC | ~(v10 | 0xD24FDAC)) ^ 0x3ABAC605);
  v11 = *(a1 + 96) + 528;
  v12 = v4;
  v13 = v5 ^ 0x2D7;
  v10[1] = v5 + v3 + 210866775;
  (*(a3 + 18296))(v10);
  v8 = v10[0];
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v3);
  return v8 ^ 0xB75BE8A7;
}

uint64_t sub_62840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22)
{
  v28 = &a22 + 6 * v24;
  v28[2] = v25;
  v28[3] = a17;
  *(v28 + 2) = a15;
  v28[6] = a20;
  a22 = (a9 ^ 0x116) + v23;
  return (*(v26 + 8 * ((2323 * (a4 + v22 + 15 * (a9 ^ 0x11Au) - 195 < v27)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

uint64_t sub_628FC@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v30 - 192) = v31;
  v32 = v28 + 215;
  v33 = (v28 + 215) ^ 0xF2;
  *(v30 - 116) = v33;
  v34 = *(&off_C6C70 + ((v28 + 215) ^ 0x15D)) - 12;
  v35 = v34[a1[5] ^ 0xE2];
  v36 = *(&off_C6C70 + v28 - 229) - 4;
  v37 = v36[a1[15] ^ 0x92];
  *(v30 - 148) = v29;
  v38 = v36[((a1[7] & 0xC0 ^ 0xFEE1A8275804A472) & (a1[7] & 0x3F ^ 0xFEFDFBF7DF67F7D1) | a1[7] & 0xD) ^ 0xFEE1A8275804A4E3];
  v39 = *(&off_C6C70 + v32 - 269) - 8;
  v40 = (v38 ^ 0x9FFF8D26) & ((v35 << 16) ^ 0x9F538D6E) | v38 & 0x91;
  v41 = ((-1459617792 * v39[a1[4] ^ 0x57] + 436207616) ^ 0xC1AEE8FE) & (v40 ^ 0x60E36591);
  v42 = v40 & 0x5510001;
  v43 = -87 * v39[a1[12] ^ 0x68] + 26;
  v44 = *(&off_C6C70 + (v32 ^ 0x154));
  LOBYTE(v38) = *(v44 + (a1[14] ^ 0xD6)) + 19;
  v45 = ((*(v44 + (a1[6] ^ 0x87)) + 19) ^ 0x30) << 8;
  v46 = (v45 & 0x4100 | (v42 ^ 0x8A1F56E2 ^ v41) & ~v45) ^ 0x35E1BE1C;
  v47 = ((((v43 ^ 0x7E) << 24) ^ 0x7896999E) & ~((v38 ^ 0x27) << 8) & 0x7A107100 | ((v38 ^ 0x27) << 8) & 0x6000) ^ 0x8DE75840 ^ (((((v43 ^ 0x7E) << 24) ^ 0x7896999E) & ~((v38 ^ 0x27) << 8) | ((v38 ^ 0x27) << 8) & 0x6666) ^ 0x85690661) & ((((v34[a1[13] ^ 0xB9] << 16) ^ 0xA5D6614A) & (v33 ^ 0xBFFFF63A ^ v37) | v37 & 0xB5) ^ 0x2001EF85);
  v48 = ((v36[a1[3] ^ 0x29] ^ 0xB8) & 0xFFFF00FF | ((v34[a1[1] ^ 8] ^ 0x8F) << 16) | (((-87 * v39[*a1 ^ 0xE1] + 26) ^ 0xDA) << 24) | (((*(v44 + (a1[2] ^ 0x8FLL)) + 19) ^ 0xD8) << 8)) ^ 0x1B;
  v49 = *(&off_C6C70 + (v32 ^ 0x17E));
  v50 = *(&off_C6C70 + v32 - 290) - 8;
  v51 = (((-87 * v39[a1[8] ^ 0xB9] + 26) ^ 0xBC) << 24) | ((v34[a1[9] ^ 0x3BLL] ^ 0x7E) << 16) | (v36[a1[11] ^ 0x62] ^ 0xFB) & 0xFFFF00FF | (((*(v44 + (a1[10] ^ 0xB7)) + 19) ^ 0xE7) << 8);
  v52 = *(&off_C6C70 + (v32 ^ 0x1BB)) - 12;
  LODWORD(v39) = *&v52[4 * (v43 ^ 0x88)];
  v53 = *(v49 + 4 * (BYTE2(v47) ^ 0xBAu)) ^ *&v50[4 * (v38 ^ 0x7E)] ^ 0x9DE514AB;
  v54 = *(&off_C6C70 + v32 - 437) - 8;
  LODWORD(v37) = *&v54[4 * (v37 ^ 0x26)];
  *(v30 - 208) = v48;
  LODWORD(v39) = v37 ^ v48 ^ (((v53 - ((2 * v53) & 0xFD142FCC) + 2122979302) ^ v39) - ((2 * ((v53 - ((2 * v53) & 0xFD142FCC) + 2122979302) ^ v39)) & 0x53472F04) - 1448896638);
  *(v30 - 196) = v46;
  LODWORD(v37) = v39 ^ v46;
  v55 = v39;
  v242 = v39;
  *(v30 - 200) = v51;
  LODWORD(v39) = v39 ^ v46 ^ v51;
  v56 = v37;
  v248 = v37;
  LODWORD(v37) = v39 ^ v47;
  v57 = v39;
  v240 = v39;
  v254 = (v39 ^ v47);
  LODWORD(v39) = *&v54[4 * (v254 ^ 0x35)] ^ 0xDE04F601;
  LODWORD(v37) = v37 ^ 0xF83672DE;
  *(v30 - 156) = BYTE1(v37);
  LODWORD(v39) = v39 ^ *&v50[4 * (BYTE1(v37) ^ 0x9E)];
  v264 = BYTE3(v37);
  LODWORD(v39) = (v39 - ((2 * v39) & 0xFD142FCC) + 2122979302) ^ *&v52[4 * (BYTE3(v37) ^ 0x86)];
  v260 = BYTE2(v37);
  v247 = BYTE2(v56) ^ 0x5B;
  v284 = v55 ^ *(v49 + 4 * (BYTE2(v37) ^ 0xBAu)) ^ (v39 - ((2 * v39) & 0xD484EA50) - 364743384) ^ v56 ^ 0xA25B684D;
  v58 = v55 ^ *(v49 + 4 * (BYTE2(v37) ^ 0xBAu)) ^ (v39 - ((2 * v39) & 0xD484EA50) - 364743384);
  *(v30 - 204) = v47;
  LODWORD(v39) = (v284 ^ 0xF73EC34E ^ v47 ^ 0x7E4FB786) >> 24;
  *(v30 - 232) = v39;
  v283 = ((v284 ^ 0xF73EC34E ^ v47 ^ 0x7E4FB786) >> 16);
  LODWORD(v44) = *&v52[4 * (v39 ^ 0x86)] ^ *(v49 + 4 * (v283 ^ 0xBAu));
  v279 = ((v284 ^ 0xC34E ^ v47 ^ 0xB786) >> 8);
  v59 = ((v44 ^ 0x94C862CE) + 2007458179 + (~(2 * (v44 ^ 0x94C862CE)) | 0x10B13CF9) + 1) ^ *&v50[4 * (v279 ^ 0x9E)];
  v60 = v284 ^ 0x4E ^ v47;
  *(v30 - 152) = v60;
  v61 = v58 ^ *&v54[4 * (v60 ^ 0x6D)] ^ (v59 - ((2 * v59) & 0x53472F04) - 1448896638);
  *(v30 - 124) = v61;
  v61 ^= 0xFEB4AEEu;
  v62 = v61 ^ v57 ^ 0xF83672DE;
  v63 = v61;
  *(v30 - 172) = v62;
  v64 = v62 ^ v284 ^ 0xF73EC34E ^ v47 ^ 0x7E4FB786;
  *(v30 - 212) = BYTE2(v64);
  v65 = *(v49 + 4 * (BYTE2(v64) ^ 0xBAu));
  *(v30 - 164) = BYTE1(v64);
  LODWORD(v36) = v65 ^ *&v50[4 * (BYTE1(v64) ^ 0x9E)] ^ 0x9DE514AB;
  *(v30 - 168) = HIBYTE(v64);
  LODWORD(v36) = (v36 - ((2 * v36) & 0xFD142FCC) + 2122979302) ^ *&v52[4 * (HIBYTE(v64) ^ 0x86)];
  *(v30 - 160) = v64;
  v66 = v63 ^ *&v54[4 * (v64 ^ 0xEB)];
  *(v30 - 248) = v63;
  v275 = v284 ^ 0xF73EC34E ^ v57 ^ 0xF83672DE;
  v67 = v66 ^ (v36 - ((2 * v36) & 0x53472F04) - 1448896638);
  *(v30 - 132) = v67 ^ v275;
  LODWORD(v36) = v67 ^ v275 ^ 0x598844C8;
  v68 = v36 ^ v64;
  v69 = v36;
  v271 = v36 ^ v64;
  v273 = (v36 ^ v64 ^ 0xCD2CB9A0) >> 24;
  LODWORD(v36) = *&v54[4 * ((v36 ^ v64) ^ 0x83)] ^ *&v52[4 * (v273 ^ 0x86)] ^ 0xD7298064;
  v266 = ((v68 ^ 0xCD5DCD68) >> 16);
  v70 = (v36 - ((2 * v36) & 0xD484EA50) - 364743384) ^ *(v49 + 4 * (v266 ^ 0xBAu));
  v268 = ((v68 ^ 0xCD68) >> 8);
  v71 = (v70 - ((2 * v70) & 0xEF4EC306) + 2007458179) ^ *&v50[4 * (v268 ^ 0x9E)];
  v72 = v63 ^ v284 ^ 0xF73EC34E;
  *(v30 - 240) = v72;
  v72 ^= 0x7E4FB786u;
  *(v30 - 136) = v72;
  *(v30 - 256) = v71 ^ v72;
  v73 = v71 ^ v72 ^ 0xF39A3E26;
  v74 = v73 ^ v64;
  v75 = v73;
  v257 = v67;
  v76 = *&v52[4 * ((v74 >> (v67 & 0x18) >> (v67 & 0x18 ^ 0x18)) ^ 0x86)];
  *(v30 - 252) = BYTE2(v74);
  v291 = v74;
  v77 = *(v49 + 4 * (BYTE2(v74) ^ 0xBAu)) ^ v76;
  v290 = BYTE1(v74);
  LODWORD(v39) = ((v77 ^ 0x94C862CE) - 2 * ((v77 ^ 0x94C862CE) & 0x77A761A3 ^ v77 & 0x20) + 2007458179) ^ *&v50[4 * (BYTE1(v74) ^ 0x9E)];
  v288 = v71 ^ v67;
  v289 = BYTE2(v75);
  v286 = v75 ^ v69;
  LODWORD(v34) = v71 ^ v67 ^ *&v54[4 * ((v75 ^ v69 ^ v68 ^ 0x68) ^ 0x83)] ^ (v39 - ((2 * v39) & 0x53472F04) - 1448896638);
  *(v30 - 140) = v34;
  *(v30 - 224) = v34 ^ 0x53DB0D92;
  LODWORD(v37) = v34 ^ 0x53DB0D92 ^ v75 ^ 0xF73EC34E;
  v237 = v34 ^ 0x53DB0D92 ^ v75;
  LODWORD(v39) = v37 ^ v68 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  v78 = *(v49 + 4 * (BYTE2(v39) ^ 0xBAu));
  v79 = (v37 ^ v68 ^ 0x68);
  *(v30 - 176) = v79;
  v80 = *&v54[4 * (v79 ^ 0x11)] ^ v78;
  v231 = v39 >> 24;
  v81 = ((v80 ^ 0x43E1E2AA) - 2 * ((v80 ^ 0x43E1E2AA) & 0x7E8A17F7 ^ v80 & 0x11) + 2122979302) ^ *&v52[4 * ((v39 >> 24) ^ 0x86)];
  v235 = BYTE1(v39);
  v82 = v34 ^ 0x53DB0D92 ^ *&v50[4 * (BYTE1(v39) ^ 0x9E)] ^ (v81 - ((2 * v81) & 0xEF4EC306) + 2007458179);
  *(v30 - 128) = v82;
  v287 = v75 ^ v69 ^ 0xCD5DCD68;
  v228 = v37 ^ v287;
  v276 = v82 ^ 0x85DB0D92 ^ v237;
  v83 = v82 ^ 0x85DB0D92;
  v193 = v82 ^ 0x85DB0D92;
  v278 = v276 ^ 0x484133B4 ^ v37 ^ v287;
  v84 = v278 ^ 0xBDE5CEDC ^ v39;
  v281 = (v84 ^ 0x29A3E26) >> 24;
  LODWORD(v36) = *&v52[4 * (v281 ^ 0x86)];
  v285 = ((v84 ^ 0x3E26) >> 8);
  v85 = *&v50[4 * (v285 ^ 0x9E)];
  *(v30 - 120) = 0;
  v209 = ((v84 ^ 0x29A3E26) >> 16);
  LODWORD(v36) = ((v36 ^ v85 ^ 0x92D7665) - ((2 * (v36 ^ v85 ^ 0x92D7665)) & 0xD484EA50) - 364743384) ^ *(v49 + 4 * (v209 ^ 0xBAu));
  v198 = v278 ^ 0xDC ^ v39;
  v196 = (v36 - ((2 * v36) & 0x53472F04) - 1448896638) ^ *&v54[4 * (v198 ^ 0xCD)];
  v86 = v276 ^ 0x484133B4 ^ v196 ^ v83;
  *(v30 - 144) = v196 ^ v83;
  v87 = v278 ^ 0xBDE5CEDC ^ v86 ^ 0x19868409;
  LODWORD(v37) = v87 ^ 0xC130088F ^ v84 ^ 0x29A3E26;
  v190 = (v37 ^ 0x7B68C86) >> 24;
  v195 = ((v37 ^ 0x8C86) >> 8);
  v88 = *&v52[4 * (v190 ^ 0x86)] ^ *&v50[4 * (v195 ^ 0x9E)] ^ 0x92D7665;
  v89 = ((v37 ^ 0x7B68C86) >> 16);
  v90 = (v88 - ((2 * v88) & 0xD484EA50) - 364743384) ^ *(v49 + 4 * (v89 ^ 0xBAu));
  HIDWORD(a28) = v87 ^ 0x8F ^ v84 ^ 0x26;
  v210 = v196 ^ v83 ^ *&v54[4 * (HIDWORD(a28) ^ 0x6D)] ^ (v90 - ((2 * v90) & 0x53472F04) - 1448896638);
  v206 = v210 ^ 0x7B68C86 ^ v86 ^ 0x19868409;
  v91 = v206 ^ v87 ^ 0xC130088F ^ 0xC104CD8D ^ v37 ^ 0x7B68C86;
  v217 = (v206 ^ v87 ^ 0x8F) ^ 0x8D ^ v37 ^ 0x86;
  v215 = (v91 ^ 0xA91877A2) >> 24;
  v218 = ((v91 ^ 0x77A2) >> 8);
  v212 = ((v91 ^ 0xA91877A2) >> 16);
  LODWORD(v39) = v254 ^ 0xEF;
  v92 = *(&off_C6C70 + v32 - 281) - 8;
  LODWORD(v37) = (BYTE2(v57) ^ 0xFD84E2D8) - 1223506397 + *&v92[4 * (BYTE2(v57) ^ 0x48)];
  v93 = *(&off_C6C70 + (v32 ^ 0x146)) - 8;
  v94 = ((v247 ^ 0xFD84E273) - 1223506397 + *&v92[4 * (v247 ^ 0xE3)]) ^ (-1974868763 * *&v93[4 * (HIBYTE(v248) ^ 0xE7)] - 1583929207);
  HIDWORD(v223) = v32;
  v95 = *(&off_C6C70 + v32 - 336) - 8;
  v96 = (v37 - ((2 * v37) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v240 ^ 0x33)];
  v97 = (-1974868763 * *&v93[4 * (HIBYTE(v242) ^ 0xCB)] - 1583929207) ^ ((((v242 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v242 ^ 0x6AB66F6C) >> 16) ^ 0x7B)]);
  v98 = *(&off_C6C70 + v32 - 320) - 12;
  v99 = (v94 - ((2 * v94) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (BYTE1(v248) ^ 0x4B)];
  v100 = (v97 - ((2 * v97) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v242 ^ 0x1C)];
  v255 = v99 - ((2 * v99) & 0x666E95BE);
  v101 = (v260 ^ 0xFD84E215) - 1223506397 + *&v92[4 * (v260 ^ 0x85)];
  v261 = *&v98[4 * (BYTE1(v240) ^ 0xE4)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v240) ^ 0x54)] - 1583929207) ^ (v96 - ((2 * v96) & 0x1F22D66A) + 261188405);
  v102 = (-1974868763 * *&v93[4 * (v264 ^ 0xBE)] - 1583929207) ^ *&v95[4 * v39] ^ (v101 - ((2 * v101) & 0x666E95BE) - 1288221985);
  v243 = v100 - ((2 * v100) & 0x1F22D66A);
  v224 = v102 - ((2 * v102) & 0x1F22D66A);
  v103 = *(v30 - 140) ^ 0xB89A99EC;
  v104 = (BYTE2(v103) ^ 0xFD84E2A4) - 1223506397 + *&v92[4 * (BYTE2(v103) ^ 0x34)];
  v105 = v231 ^ 0xB6;
  v106 = *&v93[4 * (HIBYTE(v228) ^ 0xD2)];
  v222 = BYTE1(v228) ^ 0x50;
  LODWORD(v39) = ((((v228 ^ 0xBFAB50FA) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v228 ^ 0xBFAB50FA) >> 16) ^ 0x7B)]) ^ *&v95[4 * (v228 ^ 0x5F)] ^ (-1974868763 * v106 - ((345229770 * v106 + 1127108882) & 0x666E95BE) + 1422816104);
  v232 = v248 ^ 0x25;
  v107 = *&v93[4 * v105];
  v108 = (-1583929207 - 914915627 * v107 - 1059953136 * v107 - 2 * ((-1583929207 - 914915627 * v107 - 1059953136 * v107) & 0xF916B3F ^ (-1583929207 - 914915627 * v107) & 0xA) + 261188405) ^ *&v98[4 * (v235 ^ 0x25)];
  v249 = v108 - ((2 * v108) & 0x666E95BE);
  v109 = *&v98[4 * BYTE1(v103)] ^ (v104 - ((2 * v104) & 0x1F22D66A) + 261188405);
  LODWORD(v36) = (((v237 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 1223506397 + *&v92[4 * (((v237 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v236 = v109 - ((2 * v109) & 0x666E95BE);
  v229 = v39 - ((2 * v39) & 0x1F22D66A);
  v214 = BYTE1(v237) ^ 0x2D;
  v110 = (v36 - ((2 * v36) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v237 ^ 0xA4)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v237) ^ 0x40)] - 1583929207);
  v220 = v110 - ((2 * v110) & 0x1F22D66A);
  v111 = (((v257 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 1223506397 + *&v92[4 * (((v257 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v252 = v67 ^ *(v30 - 136);
  LODWORD(v37) = *&v93[4 * (HIBYTE(v252) ^ 0x39)];
  LODWORD(v37) = (-1583929207 - 914915627 * v37 - 1059953136 * v37 - 2 * ((-1583929207 - 914915627 * v37 - 1059953136 * v37) & 0xF916B37 ^ (-1583929207 - 914915627 * v37) & 2) + 261188405) ^ *&v98[4 * ((v252 ^ 0xDA26) >> 8)];
  LODWORD(v39) = (v266 ^ 0xFD84E284) - 1223506397 + *&v92[4 * (v266 ^ 0x14)];
  v112 = (v111 - ((2 * v111) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v257 ^ 0x7D)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v257) ^ 0x5D)] - 1583929207);
  v201 = *(v30 - 132) ^ 0xAF58D76C;
  v113 = (BYTE2(v201) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (BYTE2(v201) ^ 0x7B)];
  v241 = v37 - 1288221985 + (~(2 * v37) | 0x99916A41);
  LODWORD(v37) = (v113 - ((2 * v113) & 0x666E95BE) - 1288221985) ^ *&v95[4 * ((v67 ^ v275) ^ 0x1C)];
  v204 = v37 - ((2 * v37) & 0x1F22D66A);
  v238 = (((v252 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v252 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  LODWORD(v37) = (v39 - ((2 * v39) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (v268 ^ 0xE5)] ^ (-1974868763 * *&v93[4 * (v273 ^ 0xF0)] - 1583929207);
  v203 = v112 - ((2 * v112) & 0x1F22D66A);
  v258 = v271 ^ 0xC3;
  v274 = v37 - ((2 * v37) & 0x666E95BE);
  LODWORD(v37) = (v283 ^ 0xFD84E219) - 1223506397 + *&v92[4 * (v283 ^ 0x89)];
  v114 = (v37 - ((2 * v37) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (v279 ^ 0x93)];
  v269 = v114 - ((2 * v114) & 0x666E95BE);
  v115 = *&v93[4 * (HIBYTE(v275) ^ 0xDE)];
  LODWORD(v36) = (((v284 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v284 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  LODWORD(v37) = (v36 - ((2 * v36) & 0x1F22D66A) + 261188405) ^ *&v98[4 * ((v284 ^ 0x30D) >> 8)];
  v116 = ((BYTE2(v275) ^ 0xFD84E243) - 1223506397 + *&v92[4 * (BYTE2(v275) ^ 0xD3)]) ^ *&v98[4 * (BYTE1(v275) ^ 0xDB)] ^ (-1974868763 * v115 - ((345229770 * v115 + 53367058) & 0x1F22D66A) - 1322740802);
  v200 = v37 - ((2 * v37) & 0x666E95BE);
  v277 = v116 - ((2 * v116) & 0x666E95BE);
  v117 = (-1974868763 * *&v93[4 * (v190 ^ 0xAC)] - 1583929207) ^ ((v89 ^ 0xFD84E2A8) - 1223506397 + *&v92[4 * (v89 ^ 0x38)]);
  LODWORD(v37) = (v117 - ((2 * v117) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (v195 ^ 0xD9)];
  v118 = (BYTE2(v87) ^ 0xFD84E256) - 1223506397 + *&v92[4 * (BYTE2(v87) ^ 0xC6)];
  LODWORD(v36) = *&v93[4 * ((v196 ^ ~v193) >> 24)];
  v119 = *(v30 - 144) ^ 0xDDA7A6D4;
  LODWORD(v36) = (-1583929207 - 914915627 * v36 - 1059953136 * v36 - 2 * ((-1583929207 - 914915627 * v36 - 1059953136 * v36) & 0xF916B3F ^ (-1583929207 - 914915627 * v36) & 0xA) + 261188405) ^ *&v98[4 * BYTE1(v119)];
  LODWORD(v39) = (v118 - ((2 * v118) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v278 ^ 0xDC ^ v86 ^ 9 ^ 0x67)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v87) ^ 0x3E)] - 1583929207);
  LODWORD(v197) = v37 - ((2 * v37) & 0x666E95BE);
  HIDWORD(v194) = v36 - ((2 * v36) & 0x666E95BE);
  v186 = BYTE1(v86) ^ 0x9E;
  LODWORD(v37) = *&v93[4 * (HIBYTE(v86) ^ 0xCD)];
  LODWORD(v37) = *&v95[4 * (v86 ^ 0xC9)] ^ (-1974868763 * v37 - ((345229770 * v37 + 1127108882) & 0x666E95BE) + 1422816104);
  v191 = v37 - ((2 * v37) & 0x1F22D66A);
  v280 = (BYTE2(v119) ^ 0xFD84E2A5) - 1223506397 + *&v92[4 * (BYTE2(v119) ^ 0x35)];
  v184 = BYTE1(v87) ^ 0x4F;
  v188 = v39 - ((2 * v39) & 0x1F22D66A);
  v272 = (BYTE2(v86) ^ 0xFD84E2FB) - 1223506397 + *&v92[4 * (BYTE2(v86) ^ 0x6B)];
  LODWORD(v36) = *&v93[4 * (HIBYTE(v278) ^ 0x22)];
  LODWORD(v36) = (-1583929207 - 914915627 * v36 - 1059953136 * v36 - 2 * ((-1583929207 - 914915627 * v36 - 1059953136 * v36) & 0xF916B3F ^ (-1583929207 - 914915627 * v36) & 0xA) + 261188405) ^ *&v98[4 * ((v278 ^ 0x4AFA) >> 8)];
  LODWORD(v187) = v278 ^ 0xE4;
  HIDWORD(v197) = v36 - ((2 * v36) & 0x666E95BE);
  v263 = (BYTE2(v278) ^ 0xFD84E223) - 1223506397 + *&v92[4 * (BYTE2(v278) ^ 0xB3)];
  v181 = v281 ^ 0x67;
  v267 = (v209 ^ 0xFD84E291) - 1223506397 + *&v92[4 * (v209 ^ 1)];
  v120 = *(v30 - 128);
  v121 = *&v93[4 * (HIBYTE(v120) ^ 0x82)];
  LODWORD(v37) = ((BYTE2(v193) ^ 0xFD84E2FE) - 1223506397 + *&v92[4 * (BYTE2(v193) ^ 0x6E)]) ^ *&v98[4 * (BYTE1(v120) ^ 5)] ^ (-1583929207 - 914915627 * v121 - 1059953136 * v121 - 2 * ((-1583929207 - 914915627 * v121 - 1059953136 * v121) & 0xF916B3F ^ (-1583929207 - 914915627 * v121) & 0xA) + 261188405);
  v282 = v37 - ((2 * v37) & 0x666E95BE);
  v122 = v206;
  v123 = v206 ^ v87 ^ 0xC130088F;
  v174 = BYTE1(v123) ^ 0x4E;
  LODWORD(v36) = *&v93[4 * (HIBYTE(v123) ^ 0x27)];
  v124 = (-1974868763 * v36 - ((345229770 * v36 + 1127108882) & 0x666E95BE) + 1422816104) ^ *&v95[4 * ((v206 ^ v87 ^ 0x8F) ^ 0x5A)];
  v183 = BYTE1(v210) ^ 0x82;
  LODWORD(v37) = (((v210 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v210 ^ 0xC1698200) >> 16) ^ 0x7B)];
  LODWORD(v37) = (-1974868763 * *&v93[4 * (HIBYTE(v210) ^ 0x60)] - 1583929207) ^ *&v95[4 * (v210 ^ 0x72)] ^ (v37 - ((2 * v37) & 0x666E95BE) - 1288221985);
  v125 = *&v93[4 * (v215 ^ 0x21)];
  v126 = *&v95[4 * (v217 ^ 0x12)] ^ ((v212 ^ 0xFD84E2A2) - 1223506397 + *&v92[4 * (v212 ^ 0x32)]) ^ (-1974868763 * v125 - ((345229770 * v125 + 1127108882) & 0x666E95BE) + 1422816104);
  v207 = v218 ^ 0x7D;
  v178 = v37 - ((2 * v37) & 0x1F22D66A);
  v177 = v126 - ((2 * v126) & 0x1F22D66A);
  v175 = v124 - ((2 * v124) & 0x1F22D66A);
  HIDWORD(v208) = (((v123 ^ 0x68D34E2A) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v123 ^ 0x68D34E2A) >> 16) ^ 0x7B)];
  v127 = *(v30 - 232) ^ 0x32;
  v128 = (BYTE2(v288) ^ 0xFD84E2A2) - 1223506397 + *&v92[4 * (BYTE2(v288) ^ 0x32)];
  v129 = (BYTE2(v287) ^ 0xFD84E216) - 1223506397 + *&v92[4 * (BYTE2(v287) ^ 0x86)];
  v130 = (v129 - ((2 * v129) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v286 ^ 0x15)];
  LODWORD(v39) = (v289 ^ 0xFD84E2B1) - 1223506397 + *&v92[4 * (v289 ^ 0x21)];
  v131 = (v128 - ((2 * v128) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v288 ^ 0x54)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v288) ^ 0xEA)] - 1583929207);
  HIDWORD(v171) = v131 - ((2 * v131) & 0x1F22D66A);
  HIDWORD(a2) = BYTE1(v286) ^ 0xCC;
  LODWORD(v171) = v130 - ((2 * v130) & 0x1F22D66A);
  LODWORD(v172) = *(v30 - 256) ^ 0xB;
  v132 = (v39 - ((2 * v39) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (BYTE1(*(v30 - 256)) ^ 0x56)] ^ (-1974868763 * *&v93[4 * (HIBYTE(*(v30 - 256)) ^ 0x6D)] - 1583929207);
  *(v30 - 232) = v132 - ((2 * v132) & 0x666E95BE);
  LODWORD(v219) = (*(v30 - 252) ^ 0xFD84E2DC) - 1223506397 + *&v92[4 * (*(v30 - 252) ^ 0x4C)];
  v133 = (*(v30 - 212) ^ 0xFD84E246) - 1223506397 + *&v92[4 * (*(v30 - 212) ^ 0xD6)];
  *(v30 - 252) = v133 - ((2 * v133) & 0x1F22D66A);
  LODWORD(v37) = BYTE2(*(v30 - 248));
  v134 = *(v30 - 124);
  LODWORD(v37) = (-1974868763 * *&v93[4 * (HIBYTE(v134) ^ 0x41)] - 1583929207) ^ ((v37 ^ 0xFD84E273) - 1223506397 + *&v92[4 * (v37 ^ 0xE3)]);
  v135 = (v37 - ((2 * v37) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (BYTE1(v134) ^ 0x6F)];
  LODWORD(v37) = BYTE2(*(v30 - 136));
  LODWORD(v37) = (v37 ^ 0xFD84E2B8) - 1223506397 + *&v92[4 * (v37 ^ 0x28)];
  LODWORD(v37) = (v37 - ((2 * v37) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (*(v30 - 240) ^ 0xCE)];
  v136 = v37 - ((2 * v37) & 0x1F22D66A);
  v137 = *(v30 - 172);
  v138 = *&v93[4 * (HIBYTE(*(v30 - 132)) ^ 0xE)];
  v139 = *&v93[4 * (HIBYTE(v284) ^ 0xE6)];
  v140 = *&v93[4 * v127];
  LODWORD(v39) = *&v93[4 * v181];
  v141 = *&v93[4 * (HIBYTE(v122) ^ 0x82)];
  v142 = *&v93[4 * (HIBYTE(v286) ^ 0x5B)];
  LODWORD(v54) = *&v93[4 * (HIBYTE(v291) ^ 0x17)];
  v143 = *&v93[4 * (HIBYTE(v137) ^ 0x18)];
  v144 = *&v93[4 * (*(v30 - 168) ^ 7)];
  v145 = *(v30 - 240);
  LODWORD(v93) = *&v93[4 * (HIBYTE(v145) ^ 0x2E)];
  *(v30 - 212) = -1974868763 * v138 - 1583929207;
  *(v30 - 168) = -1974868763 * v139 - 1583929207;
  LODWORD(v213) = -1974868763 * v39 - 1583929207;
  LODWORD(v211) = -1974868763 * v141 - 1583929207;
  LODWORD(v216) = -1974868763 * v142 - 1583929207;
  HIDWORD(v216) = -1974868763 * v54 - 1583929207;
  HIDWORD(v221) = -1974868763 * v93 - 1583929207;
  HIDWORD(v180) = *&v98[4 * (*(v30 - 156) ^ 0xD0)];
  v246 = *&v98[4 * v222];
  LODWORD(v36) = (-1974868763 * v143 - ((345229770 * v143 + 1127108882) & 0x666E95BE) + 1422816104) ^ *&v95[4 * (v137 ^ 0xBC)];
  LODWORD(v221) = *&v98[4 * v214];
  *(v30 - 156) = *&v98[4 * BYTE1(v201)];
  HIDWORD(v213) = *&v98[4 * v186];
  LODWORD(v194) = *&v98[4 * v184];
  HIDWORD(v192) = *&v98[4 * (v285 ^ 0x72)];
  LODWORD(v37) = (*(v30 - 252) + 261188405) ^ *&v98[4 * (*(v30 - 164) ^ 0xB0)] ^ (-1974868763 * v144 - 1583929207);
  LODWORD(v185) = *&v98[4 * v183];
  HIDWORD(v185) = *&v98[4 * v207];
  v146 = *&v98[4 * v174];
  HIDWORD(v211) = *&v98[4 * (v290 ^ 0x6E)];
  LODWORD(v93) = v135 - ((2 * v135) & 0x666E95BE);
  LODWORD(v208) = *&v98[4 * (BYTE1(v288) ^ 0x83)];
  LODWORD(v189) = *&v98[4 * HIDWORD(a2)];
  *(v30 - 164) = *&v98[4 * (BYTE1(v145) ^ 0x74)];
  LODWORD(v202) = *&v98[4 * (BYTE1(v137) ^ 0xF4)];
  HIDWORD(v173) = v243 + 261188405;
  LODWORD(v173) = v224 + 261188405;
  v244 = v229 + 261188405;
  HIDWORD(v182) = v220 + 261188405;
  v230 = v204 + 261188405;
  HIDWORD(v172) = v203 + 261188405;
  LODWORD(v182) = v191 + 261188405;
  LODWORD(v192) = v188 + 261188405;
  HIDWORD(v179) = v178 + 261188405;
  HIDWORD(v187) = v177 + 261188405;
  v147 = v175 + 261188405;
  LODWORD(v205) = HIDWORD(v171) + 261188405;
  HIDWORD(v202) = v171 + 261188405;
  LODWORD(v223) = v136 + 261188405;
  HIDWORD(v219) = v36 - ((2 * v36) & 0x1F22D66A) + 261188405;
  LODWORD(v176) = *&v95[4 * v232];
  v233 = *&v95[4 * (v252 ^ 0x3D)];
  *(v30 - 176) = (BYTE2(v137) ^ 0xFD84E264) - 1223506397 + *&v92[4 * (BYTE2(v137) ^ 0xF4)];
  LODWORD(v179) = *&v95[4 * v258];
  v148 = *&v95[4 * (*(v30 - 152) ^ 0xC9)];
  *(v30 - 172) = *&v95[4 * (v284 ^ 0x7D)];
  *(v30 - 152) = *&v95[4 * (v275 ^ 0x6A)];
  LODWORD(v180) = *&v95[4 * (HIDWORD(a28) ^ 0xF9)];
  v149 = *&v95[4 * (*(v30 - 144) ^ 0x1C)];
  HIDWORD(v176) = *&v95[4 * (v198 ^ 0x97)];
  v150 = *&v95[4 * (v276 ^ 0xAE)];
  v259 = *&v95[4 * v187];
  HIDWORD(v189) = *&v95[4 * (*(v30 - 128) ^ 0x33)];
  LODWORD(v199) = *&v95[4 * (v291 ^ 0x81)];
  v253 = *&v95[4 * v172];
  LODWORD(v36) = *(v30 - 160) ^ 0xF2;
  *(v30 - 160) = *&v95[4 * (*(v30 - 124) ^ 0x45)];
  *(v30 - 144) = *&v95[4 * v36];
  v151 = (v255 - 1288221985);
  v152 = (v249 - 1288221985);
  v153 = (v236 - 1288221985);
  HIDWORD(v205) = v200 - 1288221985;
  v250 = *(v30 - 232) - 1288221985;
  HIDWORD(v199) = v93 - 1288221985;
  LODWORD(v92) = v37 - ((2 * v37) & 0x666E95BE) - 1288221985;
  v154 = v147 ^ v146 ^ HIDWORD(v208) ^ 0xC38F08C7;
  LODWORD(v39) = v148 ^ (-1974868763 * v140 - 1583929207) ^ 0xADE18B96 ^ (v269 - 1288221985);
  v155 = *(&off_C6C70 + HIDWORD(v223) - 273) - 12;
  v156 = *(&off_C6C70 + HIDWORD(v223) - 436) - 4;
  v157 = *(&off_C6C70 + (HIDWORD(v223) ^ 0x1D1)) - 4;
  v158 = (((v155[*(v30 - 111) ^ 0xD5] - 62) ^ 0xED) << 16) | ((v157[*(v30 - 112) ^ 1] ^ 0xF6) << 24);
  LODWORD(v93) = ((v156[*(v30 - 102) ^ 0x49] ^ 0xF9) << 8) & 0xFF00FFFF | (((v155[*(v30 - 103) ^ 0xB3] - 62) ^ 0x59) << 16);
  v159 = (((v155[*(v30 - 99) ^ 0xDLL] - 62) ^ 0xA9) << 16) | ((v157[*(v30 - 100) ^ 0xCALL] ^ 0x64) << 24);
  v160 = *(v30 - 107) ^ 0x45;
  v161 = ((v156[*(v30 - 106) ^ 0xD5] ^ 0xDA) << 8) | ((v157[*(v30 - 108) ^ 0xC2] ^ 0x3C) << 24);
  *(v30 - 232) = v156;
  *(v30 - 224) = v155;
  v162 = v161 & 0xFF00FFFF | (((v155[v160] - 62) ^ 0x16) << 16);
  v163 = v159 | ((v156[*(v30 - 98) ^ 0xC6] ^ 0xA4) << 8);
  LODWORD(v160) = v158 | ((v156[*(v30 - 110) ^ 0xE7] ^ 0x40) << 8);
  v164 = *(&off_C6C70 + HIDWORD(v223) - 385) - 12;
  v165 = v163 & 0xFFFFFF00 | (53 * v164[*(v30 - 97) ^ 0xCBLL] - 98) ^ 0x79;
  v166 = v160 & 0xFFFFFF00 | (53 * v164[*(v30 - 109) ^ 0x8ALL] - 98) ^ 0xC9u;
  v167 = v162 & 0xFFFFFF00 | (53 * v164[*(v30 - 105) ^ 0xB9] - 98) ^ 0x3C;
  v168 = *(v30 - 104) ^ 0x8ALL;
  v169 = *(v30 - 101) ^ 6;
  *(v30 - 248) = v164;
  *(v30 - 240) = v157;
  LOBYTE(v169) = v164[v169];
  *(v30 - 252) = -98;
  LODWORD(v93) = v93 & 0xFFFFFF00 | (53 * v169 - 98) ^ 0x87 | ((v157[v168] ^ 0x1B) << 24);
  *(v30 - 136) = v166 ^ 0x37373737;
  *(v30 - 132) = v165 ^ 0x37373737;
  *(v30 - 128) = v167 ^ 0x37373737;
  *(v30 - 140) = v93 ^ 0x37373737;
  *(v30 - 256) = v280 ^ v149 ^ (HIDWORD(v194) - 1288221985);
  LODWORD(v155) = v261 - ((2 * v261) & 0x56676152);
  *(v30 - 124) = (((*(v30 - 148) ^ 0x44333B87) + 1999025154) ^ ((*(v30 - 148) ^ 0xCBEB841D) - 117568612) ^ ((*(v30 - 148) ^ 0xFBC19321) - 925623128)) + 117213772;
  HIDWORD(v270) = HIDWORD(v213) ^ v182 ^ v272;
  LODWORD(v270) = v192 ^ v194;
  HIDWORD(v265) = HIDWORD(v176) ^ HIDWORD(v192) ^ v213 ^ v267;
  LODWORD(v265) = v259 ^ v263 ^ (HIDWORD(v197) - 1288221985);
  HIDWORD(v262) = HIDWORD(v189) ^ (v282 - 1288221985);
  LODWORD(v262) = v244 ^ v246;
  HIDWORD(v256) = v221 ^ HIDWORD(v182);
  LODWORD(v256) = v189 ^ (v171 + 261188405) ^ v216;
  HIDWORD(v251) = v253 ^ v250;
  LODWORD(v251) = HIDWORD(v211) ^ v199 ^ HIDWORD(v216) ^ v219;
  HIDWORD(v245) = v208 ^ (HIDWORD(v171) + 261188405);
  LODWORD(v245) = v179 ^ (v274 - 1288221985);
  HIDWORD(v239) = v233 ^ v238 ^ (v241 + 1);
  LODWORD(v239) = *(v30 - 156) ^ *(v30 - 212) ^ v230;
  HIDWORD(v234) = *(v30 - 160) ^ HIDWORD(v199);
  LODWORD(v234) = v202 ^ *(v30 - 176) ^ HIDWORD(v219);
  HIDWORD(v227) = *(v30 - 144) ^ v92;
  LODWORD(v227) = *(v30 - 164) ^ v223 ^ HIDWORD(v221);
  HIDWORD(v226) = *(v30 - 172) ^ HIDWORD(v205) ^ *(v30 - 168);
  LODWORD(v226) = *(v30 - 152) ^ (v277 - 1288221985);
  *(v30 - 212) = v39;
  LODWORD(v225) = v155 + 724807849;
  HIDWORD(v225) = 46032142 - v39 - v154;
  HIDWORD(a28) = HIDWORD(v225) ^ v154;
  return sub_64EA8(4294967198, v152, v166, v153, v151, 926365495, v149, v150, a2, v171, v172, v173, v176, v179, v180, v182, v185, v187, v189, v192, v194, v197, v199, v202, v205, v208, v211, v213, v216, v219, v221, v223, a26, a27, a28, v225, v226, v227, v234, v239, v245, v251, v256, v262, v265, v270);
}

uint64_t sub_64EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v76 - 120) = v74;
  *(v76 - 144) = *(v76 - 124) < 0x4E092D8Au;
  v77 = (*(v76 - 184) + v74);
  v78 = *(v76 - 224);
  v79 = *(v78 + (v77[5] ^ 0x87));
  *(v76 - 152) = v75 + 142;
  v80 = v77[4];
  *(v76 - 176) = 0;
  *(v76 - 172) = (v75 + 142) ^ 0x2AA;
  v82 = *(v76 - 240);
  v81 = *(v76 - 232);
  v83 = *(v76 - 248);
  v84 = *(v76 - 252);
  v85 = (((v79 - 62) ^ 0x74) << 16) | ((*(v82 + ((v75 - 114) ^ 0xC6u ^ v80)) ^ 0x2C) << 24) | ((*(v81 + (v77[6] ^ 0xE2)) ^ 0x86) << 8) | (v84 + 53 * *(v83 + (v77[7] ^ 0xBFLL))) ^ 0xFA;
  v86 = ((v84 + 53 * *(v83 + (v77[15] ^ 0x3CLL))) ^ 0x68 | ((*(v81 + (v77[14] ^ 8)) ^ 0xC2) << 8)) & 0xFF00FFFF | ((*(v82 + (v77[12] ^ 0xBDLL)) ^ 4) << 24) | (((*(v78 + (v77[13] ^ 0xCALL)) - 62) ^ 0xFD) << 16);
  v87 = (v84 + 53 * *(v83 + (v77[3] ^ 0x19))) ^ 0x38 | ((*(v82 + (*v77 ^ 0x50)) ^ 0x19) << 24) | (((*(v78 + (v77[1] ^ 0x1ELL)) - 62) ^ 0x68) << 16) | ((*(v81 + (v77[2] ^ 6)) ^ 0xBE) << 8);
  v88 = ((*(v82 + v77[8]) ^ 0x27) << 24) | (((*(v78 + (v77[9] ^ 0xB0)) - 62) ^ 0x86) << 16) | ((*(v81 + (v77[10] ^ 0x42)) ^ 0x43) << 8) | (v84 + 53 * *(v83 + (v77[11] ^ 0x60))) ^ 0xDA;
  if ((((v84 + 53 * *(v83 + (v77[7] ^ 0xBFLL))) ^ 0xFA) & 2) != 0)
  {
    v89 = -2;
  }

  else
  {
    v89 = 2;
  }

  *(v76 - 164) = v85;
  *(v76 - 160) = v86;
  v90 = a66 ^ v86;
  v91 = a65 ^ (v89 + v85);
  *(v76 - 156) = v88;
  *(v76 - 168) = v87;
  v92 = a63 ^ v87;
  v93 = *(&off_C6C70 + v75 - 242) - 12;
  v94 = *&v93[4 * ((a64 ^ v88) >> 8)];
  HIDWORD(v96) = v94 ^ 0x1309;
  LODWORD(v96) = v94 ^ 0x553F0000;
  v95 = v96 >> 14;
  *(v76 - 116) = v75;
  v97 = *(&off_C6C70 + (v75 & 0x96870AF9));
  v98 = *&v93[4 * BYTE1(v92)];
  v99 = HIBYTE(v92);
  HIDWORD(v96) = v98 ^ 0x1309;
  LODWORD(v96) = v98 ^ 0x553F0000;
  v100 = *(&off_C6C70 + (v75 ^ 0x141)) - 12;
  v101 = (-60143190 - 21582785 * *&v100[4 * (a64 ^ v88)]) ^ (*(v97 + 4 * HIBYTE(v91)) - 1120064789);
  v102 = (-60143190 - 21582785 * *&v100[4 * (a65 ^ (v89 + v85))]) ^ v95;
  v103 = *(&off_C6C70 + v75 - 258) - 8;
  v104 = *&v103[4 * BYTE2(v92)];
  v105 = (*(v97 + 4 * ((a64 ^ v88) >> 24)) - 1120064789) ^ (v96 >> 14);
  v106 = *&v103[4 * BYTE2(v91)];
  v107 = *&v93[4 * BYTE1(v91)];
  HIDWORD(v96) = v107 ^ 0x1309;
  LODWORD(v96) = v107 ^ 0x553F0000;
  v108 = (v105 + 724807849 - ((2 * v105) & 0x56676152)) ^ v106 ^ (-60143190 - 21582785 * *&v100[4 * v90]);
  v109 = (*(v97 + 4 * HIBYTE(v90)) - 1120064789) ^ (v96 >> 14);
  v110 = *&v103[4 * BYTE2(v90)];
  v111 = *&v93[4 * BYTE1(v90)];
  HIDWORD(v96) = v111 ^ 0x1309;
  LODWORD(v96) = v111 ^ 0x553F0000;
  v112 = v109 ^ (-60143190 - 21582785 * *&v100[4 * v92]);
  v113 = a36 ^ (v108 + a38 - 2 * (v108 & a38));
  v114 = a62 ^ v110 ^ (*(v97 + 4 * v99) - 1120064789) ^ 0x8E1E9161 ^ (v102 + 724807849 - ((2 * v102) & 0x56676152));
  v115 = a61 ^ v104 ^ (v96 >> 14) ^ (v101 + 724807849 - ((2 * v101) & 0x56676152)) ^ 0x7A8BED94;
  v116 = a60 ^ *&v103[4 * ((a64 ^ v88) >> 16)] ^ 0x342D1067 ^ (v112 + 724807849 - ((2 * v112) & 0x56676152));
  v117 = *&v93[4 * ((v113 ^ 0xAB13) >> 8)];
  HIDWORD(v96) = v117 ^ 0x1309;
  LODWORD(v96) = v117 ^ 0x553F0000;
  v118 = (v96 >> 14) ^ (*(v97 + 4 * HIBYTE(v114)) - 1120064789);
  v119 = *(v97 + 4 * HIBYTE(v115));
  v120 = (2 * v119 + 2054837718) & 0x56676152;
  v121 = v119 - 395256940;
  v122 = *&v93[4 * ((a60 ^ *&v103[4 * ((a64 ^ v88) >> 16)] ^ 0x1067 ^ (v112 - 20311 - ((2 * v112) & 0x6152))) >> 8)];
  HIDWORD(v96) = v122 ^ 0x1309;
  LODWORD(v96) = v122 ^ 0x553F0000;
  v123 = v96 >> 14;
  v124 = v121 - v120;
  v125 = *(v97 + 4 * ((v113 ^ 0xC04AB13u) >> 24));
  v126 = v125 - 395256940 - ((2 * v125 + 2054837718) & 0x56676152);
  v127 = (-60143190 - 21582785 * *&v100[4 * v114]) ^ (*(v97 + 4 * HIBYTE(v116)) - 1120064789);
  v128 = *&v93[4 * BYTE1(v114)];
  HIDWORD(v96) = v128 ^ 0x1309;
  LODWORD(v96) = v128 ^ 0x553F0000;
  v129 = v96 >> 14;
  v130 = *&v93[4 * BYTE1(v115)];
  HIDWORD(v96) = v130 ^ 0x1309;
  LODWORD(v96) = v130 ^ 0x553F0000;
  v131 = -60143190 - 21582785 * *&v100[4 * ((a60 ^ v103[4 * ((a64 ^ v88) >> 16)]) ^ 0x67 ^ (v112 - 87 - ((2 * v112) & 0x52)))];
  v132 = -60143190 - 21582785 * *&v100[4 * (v113 ^ 0x33)];
  v133 = *&v103[4 * ((v113 ^ 0xC04AB13u) >> 16)];
  v134 = *(v76 - 256) ^ *&v103[4 * BYTE2(v116)] ^ (-60143190 - 21582785 * *&v100[4 * v115]) ^ (v118 + 724807849 - ((2 * v118) & 0x56676152));
  v135 = a59 ^ v133 ^ (v96 >> 14) ^ 0xD9D684A ^ (v127 + 724807849 - ((2 * v127) & 0x56676152));
  v136 = a58 ^ *&v103[4 * BYTE2(v114)] ^ v124 ^ v123 ^ 0x87DD46DC ^ v132;
  v137 = a57 ^ *&v103[4 * BYTE2(v115)] ^ v131 ^ v129 ^ 0x96521C3F ^ v126;
  v138 = *&v93[4 * ((v134 ^ 0xB36B) >> 8)];
  HIDWORD(v96) = v138 ^ 0x1309;
  LODWORD(v96) = v138 ^ 0x553F0000;
  v139 = v96 >> 14;
  v140 = *&v93[4 * BYTE1(v135)];
  HIDWORD(v96) = v140 ^ 0x1309;
  LODWORD(v96) = v140 ^ 0x553F0000;
  v141 = *&v93[4 * BYTE1(v136)];
  v142 = -60143190 - 21582785 * *&v100[4 * v136];
  v143 = (*(v97 + 4 * HIBYTE(v136)) - 1120064789) ^ (v96 >> 14);
  HIDWORD(v96) = v141 ^ 0x1309;
  LODWORD(v96) = v141 ^ 0x553F0000;
  v144 = (-60143190 - 21582785 * *&v100[4 * v135]) ^ v139;
  v145 = v143 ^ (-60143190 - 21582785 * *&v100[4 * v137]);
  v146 = (*(v97 + 4 * HIBYTE(v135)) - 1120064789) ^ (v96 >> 14);
  v147 = *&v93[4 * BYTE1(v137)];
  HIDWORD(v96) = v147 ^ 0x1309;
  LODWORD(v96) = v147 ^ 0x553F0000;
  v148 = *&v103[4 * BYTE2(v135)];
  v149 = v146 ^ (-60143190 - 21582785 * *&v100[4 * (v134 ^ 0x6B)]);
  v150 = a74 ^ *&v103[4 * ((v134 ^ 0x2F7BB36B) >> 16)] ^ (v145 + 724807849 - ((2 * v145) & 0x56676152));
  v151 = a56 ^ *&v103[4 * BYTE2(v137)] ^ 0xB6EFE4B7 ^ (v149 + 724807849 - ((2 * v149) & 0x56676152));
  v152 = a55 ^ *&v103[4 * BYTE2(v136)] ^ (*(v97 + 4 * HIBYTE(v137)) - 1120064789) ^ 0xD8A932B2 ^ (v144 + 724807849 - ((2 * v144) & 0x56676152));
  BYTE2(v115) = BYTE2(v150) ^ 0x6F;
  v153 = a54 ^ v148 ^ (*(v97 + 4 * (HIBYTE(v134) ^ 0xEE)) - 1120064789) ^ 0xDBC82169 ^ (((v96 >> 14) ^ v142) + 724807849 - ((2 * ((v96 >> 14) ^ v142)) & 0x56676152));
  v154 = *&v93[4 * ((a74 ^ *&v103[4 * ((v134 ^ 0x2F7BB36B) >> 16)] ^ (v145 - 20311 - ((2 * v145) & 0x6152)) ^ 0x9E59) >> 8)];
  v155 = *&v93[4 * BYTE1(v153)];
  HIDWORD(v96) = v154 ^ 0x1309;
  LODWORD(v96) = v154 ^ 0x553F0000;
  v156 = v96 >> 14;
  HIDWORD(v96) = v155 ^ 0x1309;
  LODWORD(v96) = v155 ^ 0x553F0000;
  v157 = *&v103[4 * BYTE2(v151)];
  v158 = (-60143190 - 21582785 * *&v100[4 * v152]) ^ (*(v97 + 4 * ((v150 ^ 0xD16F9E59) >> 24)) - 1120064789) ^ (*&v93[4 * BYTE1(v151)] >> 14) ^ (*&v93[4 * BYTE1(v151)] << 18) ^ 0x4C2554FC;
  v159 = (*(v97 + 4 * HIBYTE(v151)) - 1120064789) ^ v156 ^ (-60143190 - 21582785 * *&v100[4 * v153]);
  v160 = (v96 >> 14) ^ (*(v97 + 4 * HIBYTE(v152)) - 1120064789) ^ (-60143190 - 21582785 * *&v100[4 * v151]);
  v161 = *&v100[4 * ((a74 ^ v103[4 * ((v134 ^ 0x2F7BB36B) >> 16)] ^ (v145 - 87 - ((2 * v145) & 0x52))) ^ 0x79)];
  v162 = -21582785 * v161 + 664664659 - ((2104318078 * v161 + 2027197268) & 0x56676152);
  v163 = *&v93[4 * BYTE1(v152)];
  HIDWORD(v96) = v163 ^ 0x1309;
  LODWORD(v96) = v163 ^ 0x553F0000;
  v164 = a73 ^ *&v103[4 * BYTE2(v152)] ^ (v159 + 724807849 - ((2 * v159) & 0x56676152));
  v165 = v164 ^ 0xE0349DAE;
  v166 = a53 ^ *&v103[4 * BYTE2(v115)] ^ 0xF4361671 ^ (v160 + 724807849 - ((2 * v160) & 0x56676152));
  v167 = a72 ^ v157 ^ (*(v97 + 4 * HIBYTE(v153)) - 1120064789) ^ (v96 >> 14) ^ v162;
  v168 = a52 ^ *&v103[4 * BYTE2(v153)] ^ 0x7E1E5010 ^ (v158 + 724807849 - ((2 * v158) & 0x56676152));
  v169 = (v164 ^ 0xE0349DAE) >> 24;
  v170 = (-60143190 - 21582785 * *&v100[4 * (v164 ^ 0x8E)]) ^ (*(v97 + 4 * HIBYTE(v166)) - 1120064789);
  v171 = v170 + 724807849 - ((2 * v170) & 0x56676152);
  v172 = *&v93[4 * BYTE1(v165)];
  HIDWORD(v96) = v172 ^ 0x1309;
  LODWORD(v96) = v172 ^ 0x553F0000;
  v173 = v96 >> 14;
  v174 = *&v93[4 * ((a52 ^ *&v103[4 * BYTE2(v153)] ^ 0x5010 ^ (v158 - 20311 - ((2 * v158) & 0x6152))) >> 8)];
  HIDWORD(v96) = v174 ^ 0x1309;
  LODWORD(v96) = v174 ^ 0x553F0000;
  v175 = v96 >> 14;
  v176 = v173 ^ (-60143190 - 21582785 * *&v100[4 * v166]) ^ (*(v97 + 4 * HIBYTE(v168)) - 1120064789);
  v177 = *&v93[4 * ((v167 ^ 0x500A) >> 8)];
  HIDWORD(v96) = v177 ^ 0x1309;
  LODWORD(v96) = v177 ^ 0x553F0000;
  v178 = v96 >> 14;
  v179 = *&v93[4 * BYTE1(v166)];
  HIDWORD(v96) = v179 ^ 0x1309;
  LODWORD(v96) = v179 ^ 0x553F0000;
  v180 = *&v103[4 * BYTE2(v168)];
  v181 = (-60143190 - 21582785 * *&v100[4 * v168]) ^ (*(v97 + 4 * ((v167 ^ 0x6754500Au) >> 24)) - 1120064789) ^ (v96 >> 14);
  v182 = *&v103[4 * BYTE2(v165)];
  v183 = -60143190 - 21582785 * *&v100[4 * (v167 ^ 0x2A)];
  v184 = a51 ^ v180 ^ v178 ^ v171 ^ 0x541774FA;
  v185 = a50 ^ *&v103[4 * ((v167 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v176 + 724807849 - ((2 * v176) & 0x56676152));
  v186 = a49 ^ *&v103[4 * BYTE2(v166)] ^ (*(v97 + 4 * v169) - 395256940 - ((2 * *(v97 + 4 * v169) + 2054837718) & 0x56676152)) ^ v183 ^ 0xEB532C08 ^ v175;
  v187 = a48 ^ v182 ^ 0x8EB61C45 ^ (v181 + 724807849 - ((2 * v181) & 0x56676152));
  v188 = *&v93[4 * BYTE1(v185)];
  HIDWORD(v96) = v188 ^ 0x1309;
  LODWORD(v96) = v188 ^ 0x553F0000;
  v189 = *&v100[4 * (v184 - ((2 * v184) & 0x40)) + 128];
  v190 = *&v93[4 * ((a48 ^ v182 ^ 0x1C45 ^ (v181 - 20311 - ((2 * v181) & 0x6152))) >> 8)];
  v191 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  HIDWORD(v96) = v190 ^ 0x1309;
  LODWORD(v96) = v190 ^ 0x553F0000;
  v192 = (v96 >> 14) ^ (*(v97 + 4 * HIBYTE(v184)) - 1120064789);
  v193 = *&v93[4 * BYTE1(v184)];
  HIDWORD(v96) = v193 ^ 0x1309;
  LODWORD(v96) = v193 ^ 0x553F0000;
  v194 = v96 >> 14;
  v195 = *&v93[4 * BYTE1(v186)];
  HIDWORD(v96) = v195 ^ 0x1309;
  LODWORD(v96) = v195 ^ 0x553F0000;
  v196 = *(v97 + 4 * HIBYTE(v185)) - 1120064789;
  v197 = *&v103[4 * BYTE2(v185)];
  v198 = a71 ^ *&v103[4 * BYTE2(v186)] ^ v194 ^ (*(v97 + 4 * HIBYTE(v187)) - 1120064789) ^ (-21582785 * *&v100[4 * v185] + 664664659 - ((2104318078 * *&v100[4 * v185] + 2027197268) & 0x56676152));
  v199 = a47 ^ *&v103[4 * BYTE2(v184)] ^ (*(v97 + 4 * HIBYTE(v186)) - 1120064789) ^ v191 ^ (-60143190 - 21582785 * *&v100[4 * v187]) ^ 0x7C892C4A;
  v200 = a46 ^ *&v103[4 * BYTE2(v187)] ^ v196 ^ (v96 >> 14) ^ 0x190B7FE4 ^ (-21582785 * v189 + 664664659 - ((2104318078 * v189 + 2027197268) & 0x56676152));
  v201 = a45 ^ v197 ^ (-60143190 - 21582785 * *&v100[4 * v186]) ^ 0xCFA132BA ^ (v192 + 724807849 - ((2 * v192) & 0x56676152));
  v202 = v198 ^ 0x402CF460;
  v203 = *&v103[4 * BYTE2(v201)];
  v204 = *&v93[4 * BYTE1(v199)];
  HIDWORD(v96) = v204 ^ 0x1309;
  LODWORD(v96) = v204 ^ 0x553F0000;
  v205 = v96 >> 14;
  v206 = *&v93[4 * BYTE1(v201)];
  v207 = HIBYTE(v201);
  HIDWORD(v96) = v206 ^ 0x1309;
  LODWORD(v96) = v206 ^ 0x553F0000;
  v208 = *&v100[4 * (v198 ^ 0x40)];
  v209 = (-60143190 - 21582785 * *&v100[4 * v200]) ^ (*(v97 + 4 * ((v198 ^ 0x402CF460u) >> 24)) - 1120064789) ^ (v96 >> 14);
  v210 = *&v93[4 * BYTE1(v200)];
  HIDWORD(v96) = v210 ^ 0x1309;
  LODWORD(v96) = v210 ^ 0x553F0000;
  v211 = v96 >> 14;
  v212 = (*(v97 + 4 * HIBYTE(v200)) - 1120064789) ^ v205 ^ (-60143190 - 21582785 * *&v100[4 * v201]);
  v213 = (-60143190 - 21582785 * *&v100[4 * v199]) ^ (*(v97 + 4 * v207) - 1120064789);
  v214 = *(v97 + 4 * HIBYTE(v199)) - 1120064789;
  v215 = *&v93[4 * BYTE1(v202)];
  HIDWORD(v96) = v215 ^ 0x1309;
  LODWORD(v96) = v215 ^ 0x553F0000;
  v216 = a44 ^ *&v103[4 * BYTE2(v199)] ^ 0x2655A6B2 ^ (v209 + 724807849 - ((2 * v209) & 0x56676152));
  v217 = a43 ^ *&v103[4 * BYTE2(v200)] ^ (v96 >> 14) ^ 0x354150DE ^ (v213 + 724807849 - ((2 * v213) & 0x56676152));
  v218 = a42 ^ v203 ^ v211 ^ v214 ^ (-21582785 * v208 + 664664659 - ((2104318078 * v208 + 2027197268) & 0x56676152)) ^ 0x6005D395;
  v219 = a41 ^ *&v103[4 * BYTE2(v202)] ^ 0xD6EF510D ^ (v212 + 724807849 - ((2 * v212) & 0x56676152));
  v220 = *&v93[4 * BYTE1(v218)];
  HIDWORD(v96) = v220 ^ 0x1309;
  LODWORD(v96) = v220 ^ 0x553F0000;
  v221 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  v222 = *(v97 + 4 * HIBYTE(v216));
  v223 = (-60143190 - 21582785 * *&v100[4 * v216]) ^ (*(v97 + 4 * HIBYTE(v218)) - 1120064789);
  v224 = v222 - 395256940 - ((2 * v222 + 2054837718) & 0x56676152);
  v225 = -21582785 * *&v100[4 * v218] + 664664659 - ((2104318078 * *&v100[4 * v218] + 2027197268) & 0x56676152);
  v226 = *&v93[4 * BYTE1(v217)];
  HIDWORD(v96) = v226 ^ 0x1309;
  LODWORD(v96) = v226 ^ 0x553F0000;
  v227 = v96 >> 14;
  v228 = *&v93[4 * BYTE1(v216)];
  HIDWORD(v96) = v228 ^ 0x1309;
  LODWORD(v96) = v228 ^ 0x553F0000;
  v229 = v96 >> 14;
  v230 = *&v93[4 * BYTE1(v219)];
  HIDWORD(v96) = v230 ^ 0x1309;
  LODWORD(v96) = v230 ^ 0x553F0000;
  v231 = *&v103[4 * BYTE2(v216)];
  v232 = *&v103[4 * BYTE2(v217)] ^ *(v76 - 212) ^ (v96 >> 14) ^ (v223 + 724807849 - ((2 * v223) & 0x56676152));
  v233 = *&v103[4 * BYTE2(v219)];
  v234 = *(v97 + 4 * HIBYTE(v219)) - 1120064789;
  v235 = *&v103[4 * BYTE2(v218)];
  v236 = *(v97 + 4 * HIBYTE(v217)) - 1120064789;
  BYTE2(v219) = BYTE2(v232) ^ 0x1C;
  v237 = a70 ^ v235 ^ v227 ^ v224 ^ (-60143190 - 21582785 * *&v100[4 * v219]);
  v238 = a40 ^ v231 ^ v234 ^ v221 ^ (-60143190 - 21582785 * *&v100[4 * v217]) ^ 0xDE12593A;
  v239 = a39 ^ v236 ^ v233 ^ v225 ^ v229 ^ 0x8D19C5A6;
  v240 = *&v93[4 * BYTE1(v239)];
  HIDWORD(v96) = v240 ^ 0x1309;
  LODWORD(v96) = v240 ^ 0x553F0000;
  v241 = *&v100[4 * (v232 ^ 0x30)];
  v242 = *&v100[4 * v238];
  v243 = *&v93[4 * ((v232 ^ 0x5930) >> 8)];
  v244 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  HIDWORD(v96) = v243 ^ 0x1309;
  LODWORD(v96) = v243 ^ 0x553F0000;
  v245 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  v246 = *&v93[4 * ((v237 ^ 0x88C) >> 8)];
  v247 = (*(v97 + 4 * (HIBYTE(v232) ^ 0x50)) - 1120064789) ^ (-60143190 - 21582785 * *&v100[4 * (v237 ^ 0x8C)]);
  HIDWORD(v96) = v246 ^ 0x1309;
  LODWORD(v96) = v246 ^ 0x553F0000;
  v248 = v96 >> 14;
  v249 = *&v103[4 * ((v237 ^ 0x857E088C) >> 16)];
  v250 = *(v97 + 4 * HIBYTE(v239)) - 1120064789;
  v251 = *(v97 + 4 * HIBYTE(v238)) - 1120064789;
  LODWORD(v97) = *(v97 + 4 * (HIBYTE(v237) ^ 0x44));
  v252 = *&v93[4 * BYTE1(v238)];
  HIDWORD(v96) = v252 ^ 0x1309;
  LODWORD(v96) = v252 ^ 0x553F0000;
  v253 = a69 ^ v249 ^ v251 ^ (-60143190 - 21582785 * *&v100[4 * v239]) ^ v245;
  LODWORD(v100) = v250 ^ a37 ^ v248 ^ *&v103[4 * BYTE2(v238)] ^ (-60143190 - 21582785 * v241);
  v254 = a68 ^ *&v103[4 * BYTE2(v219)] ^ v244 ^ (-60143190 - 21582785 * v242) ^ (v97 - 1120064789);
  v255 = a67 ^ *&v103[4 * BYTE2(v239)] ^ (v96 >> 14) ^ (v247 + 724807849 - ((2 * v247) & 0x56676152));
  v256 = v255 ^ 0x644667A6;
  LODWORD(v97) = v254 ^ 0x7EC2C88;
  LODWORD(v93) = v253 ^ 0x9A25D878;
  v257 = *(v76 - 116);
  v258 = *(&off_C6C70 + v257 - 152) - 8;
  v259 = *&v258[4 * ((v255 ^ 0x644667A6u) >> 24)];
  HIDWORD(v96) = v259 ^ 0x14;
  LODWORD(v96) = v259 ^ 0xFAE34E80;
  v260 = *(&off_C6C70 + v257 - 143);
  v261 = *(&off_C6C70 + v257 - 203) - 12;
  v262 = ((v254 ^ 0x88) + 1401715492 - ((2 * v254) & 0x48)) ^ *&v261[4 * (v254 ^ 0xDB)] ^ (v96 >> 7);
  v263 = *(v260 + 4 * ((v255 ^ 0x644667A6u) >> 16));
  *(v76 - 148) = ((2 * v263) & 0xBB708860 ^ 0x4EAFFFDF) - 1234739703 + (((v263 ^ 0xDA6A75AF) + 630557265) ^ ((v263 ^ 0xB12E9162) + 1322348190) ^ ((v263 ^ 0x33EBFD15) - 871103765));
  v264 = (v253 ^ 0x78) + 1401715492 - ((2 * (v253 ^ 0x9A25D878)) & 0x48);
  v265 = *(v260 + 4 * BYTE2(v97));
  v266 = *(v260 + 4 * ((v100 ^ 0xAD089B63) >> 16));
  LODWORD(v260) = *(v260 + 4 * ((v253 ^ 0x9A25D878) >> 16));
  v267 = *(&off_C6C70 + (v257 ^ 0x163)) - 8;
  v268 = ((v255 ^ 0xA6) + 1401715492 - 2 * ((v255 ^ 0x644667A6) & 0x2C ^ v255 & 8)) ^ (BYTE1(v97) - 677493334 - ((v97 >> 7) & 0x154)) ^ *&v267[4 * (BYTE1(v97) ^ 0xF5)] ^ *&v261[4 * (v255 ^ 0xF5)];
  v269 = *&v258[4 * ((v253 ^ 0x9A25D878) >> 24)];
  HIDWORD(v96) = v269 ^ 0x14;
  LODWORD(v96) = v269 ^ 0xFAE34E80;
  v270 = ((v100 ^ 0x9B63) >> 8);
  v271 = v270 - 677493334 - (((v100 ^ 0xAD089B63) >> 7) & 0x154);
  v272 = (v96 >> 7) + 1487870424 - ((2 * (v96 >> 7)) & 0xB15E33B0);
  v273 = *&v258[4 * ((v100 >> 24) ^ 0xBD)];
  HIDWORD(v96) = v273 ^ 0x14;
  LODWORD(v96) = v273 ^ 0xFAE34E80;
  v274 = v96 >> 7;
  v275 = *&v261[4 * (v253 ^ 0x2B)];
  v276 = *&v267[4 * (v270 ^ 0xF5)];
  v277 = BYTE1(v93) ^ 0xF5;
  v278 = BYTE1(v93) - 677493334 - ((v93 >> 7) & 0x154);
  LODWORD(v97) = *&v258[4 * BYTE3(v97)];
  HIDWORD(v96) = v97 ^ 0x14;
  LODWORD(v96) = v97 ^ 0xFAE34E80;
  LODWORD(v97) = *(v76 - 140) ^ *(v76 - 200) ^ v260 ^ v274 ^ (v268 + 1487870424 - ((2 * v268) & 0xB15E33B0));
  LODWORD(v93) = *(v76 - 136) ^ *(v76 - 208) ^ v271 ^ v264 ^ v275 ^ v276 ^ (v96 >> 7) ^ *(v76 - 148);
  LODWORD(v258) = *(v76 - 132) ^ *(v76 - 204) ^ v278 ^ v266 ^ *&v267[4 * v277] ^ (v262 + 1487870424 - ((2 * v262) & 0xB15E33B0));
  LODWORD(v100) = *(v76 - 128) ^ *(v76 - 196) ^ v265 ^ ((v100 ^ 0x63) + 1401715492 - 2 * ((v100 ^ 0xAD089B63) & 0x3C ^ v100 & 0x18)) ^ (BYTE1(v256) - 677493334 - ((v256 >> 7) & 0x154)) ^ *&v261[4 * (v100 ^ 0x30)] ^ *&v267[4 * (BYTE1(v256) ^ 0xF5)] ^ v272;
  v279 = *(&off_C6C70 + v257 - 130) - 12;
  v77[3] = v279[(*(v76 - 136) ^ *(v76 - 208) ^ v271 ^ v264 ^ v275 ^ v276 ^ (v96 >> 7) ^ *(v76 - 148)) ^ 0xDFLL] ^ 0xA2;
  v280 = *(&off_C6C70 + v257 - 300) - 4;
  v77[4] = (v280[(v100 >> 24) ^ 0x2CLL] + 121) ^ 0x78;
  *v77 = (v280[(v93 >> 24) ^ 0x57] + 121) ^ 0xC8;
  v281 = *(&off_C6C70 + v257 - 283) - 4;
  v77[13] = (v281[BYTE2(v258) ^ 0x5CLL] + 125) ^ 0xC7;
  v77[11] = v279[v97 ^ 0x46] ^ 0xE6;
  v282 = *(&off_C6C70 + (v257 ^ 0x147)) - 4;
  v77[14] = ((BYTE1(v258) ^ 0xEE) - ((2 * (BYTE1(v258) ^ 0xEE)) & 0x4A) - 91) ^ 0x75 ^ v282[BYTE1(v258)];
  v77[2] = ((BYTE1(v93) ^ 3) - ((2 * (BYTE1(v93) ^ 3)) & 0x4A) - 91) ^ 0x8B ^ v282[BYTE1(v93) ^ 0xE6];
  v77[10] = ((BYTE1(v97) ^ 0xAB) - ((2 * (BYTE1(v97) ^ 0xAB)) & 0x4A) - 91) ^ 0x6D ^ v282[BYTE1(v97) ^ 0x84];
  v77[15] = v279[v258 ^ 0x11] ^ 0x51;
  v77[5] = (v281[BYTE2(v100) ^ 0x44] + 125) ^ 0xE2;
  v77[8] = (v280[BYTE3(v97) ^ 0x26] + 121) ^ 0xA2;
  v77[7] = v279[v100 ^ 0x3DLL] ^ 0x5B;
  v77[12] = (v280[(v258 >> 24) ^ 0x44] + 121) ^ 0x23;
  v77[1] = (v281[BYTE2(v93) ^ 0xA3] + 125) ^ 0x17;
  v283 = *(v76 - 120);
  v77[6] = (BYTE1(v100) - ((v100 >> 7) & 0x4A) - 91) ^ 0xD0 ^ v282[BYTE1(v100) ^ 0x58];
  v77[9] = (v281[BYTE2(v97) ^ 0xF8] + 125) ^ 0x90;
  v284 = (v283 + 1309224346) < *(v76 - 124);
  if (*(v76 - 144) != (v283 + 1309224346) < 0x4E092D8A)
  {
    v284 = *(v76 - 144);
  }

  return (*(*(v76 - 192) + 8 * ((95 * v284) ^ v257)))();
}

uint64_t sub_66560(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x8_t a6, int8x8_t a7)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + v14 + v11 - 60) & 0xF;
  v16.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(a3 + v14) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + v14), *(v7 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v8 - 4), *(v16.val[0].i64[0] + v9 - 2)))), a7), vmul_s8(*&vqtbl4q_s8(v16, a5), a6)));
  return (*(v13 + 8 * (((a1 == v14) * a4) ^ v12)))();
}

uint64_t sub_665B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v17 = 386 * (v15 ^ 0x118);
  v18 = ((a5 - 1657355370 + v17 - 1705) & 0xFFFFFFFC) - a15 != (((v17 - 1898) | 0xC1) ^ 0x9D36C492);
  return (*(v16 + 8 * (((16 * v18) | (v18 << 6)) ^ v17)))();
}

uint64_t sub_666AC(uint64_t a1)
{
  v3 = (*(v1 + 18384))();
  if (v3 == 16)
  {
    v4 = -42029;
  }

  else
  {
    v4 = -42030;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 17656))(a1);
  return v5;
}

uint64_t sub_6670C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v5 = *(v4 + a1);
  v6 = a1 - 1;
  *(a3 + v6) = v5;
  return (*(v3 + 8 * (a2 ^ ((v6 == ((a2 - 22) | 0x18Au) - 1498) << 7))))();
}

uint64_t sub_66780(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, _BYTE *a11, uint64_t a12, _BYTE *a13, uint64_t a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, uint64_t a18, _BYTE *a19, _BYTE *a20, _BYTE *a21, uint64_t a22, _BYTE *a23, uint64_t a24, uint64_t a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, _BYTE *a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  *a11 = v41;
  *a20 = BYTE3(v41);
  a11[1] = BYTE6(a7);
  a9[1] = (((a34 + 73) & 0xF4) + 64) ^ BYTE4(v41);
  a16[20] = v42;
  *a27 = BYTE5(a7);
  a16[64] = BYTE2(v41);
  a16[50] = BYTE3(a8);
  *a21 = BYTE1(v41);
  *a28 = a8;
  a16[26] = BYTE6(a8);
  *a29 = BYTE4(a8);
  a9[2] = BYTE1(a2);
  a16[45] = BYTE5(a8);
  *a30 = HIBYTE(a8);
  a16[11] = BYTE2(a2);
  *a31 = BYTE1(v42);
  *a9 = HIBYTE(a7);
  *a13 = BYTE2(v42);
  a16[52] = BYTE4(v42);
  *a17 = BYTE3(v42);
  v44 = *(a12 + 526 + (((a6 >> 33) & 0x80 | (v42 >> 41) & 0x7F) ^ 0x1D));
  a16[9] = BYTE6(v42);
  *a15 = (((v44 >> 4) | (16 * v44)) ^ 0xB ^ (((v44 >> 4) | (16 * v44)) >> 1) & 0x55) + 95;
  v45 = (*(a10 + (((v42 >> 51) & 0xE0 | (a6 >> 59)) ^ 0xF3)) ^ 0xBC) + 74;
  a16[39] = v40 ^ 0x53;
  *a23 = v45;
  v46 = *(a10 + (((v40 >> 3) & 0xE0 | (v40 >> 11)) ^ 0xEF));
  v47 = (a1 >> 38) ^ 0xB0;
  a16[49] = BYTE5(v40) ^ 0xBB;
  a16[63] = BYTE3(v40) ^ 0xC1;
  a16[13] = BYTE6(v40) ^ 0x15;
  *a19 = BYTE2(v40) ^ 0x1D;
  *a32 = (v46 ^ 0xBC) + 74;
  a16[36] = BYTE4(v40) ^ 0xF2;
  a16[60] = BYTE1(a1) ^ 0x54;
  a16[27] = BYTE2(a1) ^ 0x11;
  a16[40] = (v40 ^ 0x4F15BBF2C11DE053) >> (a2 & 0x38) >> (a2 & 0x38 ^ 0x38u);
  a16[53] = BYTE3(a1) ^ 5;
  a16[59] = a1 ^ 0x4C;
  a16[22] = BYTE4(a1) ^ 0x2D;
  v48 = *(a14 + ((v47 & 0xFC | (a1 >> 46) & 3) ^ 0x97));
  a16[37] = -35 * ((((v47 & 0xFC | (a1 >> 46) & 3) ^ 0x86) - ((2 * v47) & 0xD0) + (v48 ^ 0xB2) + ((2 * v48) & 0x64) + 79) ^ 0x85);
  v49 = *(a12 + 526 + (((a1 >> 41) & 0x80 | (a1 >> 49) & 0x7F) ^ 0x56));
  a16[29] = HIBYTE(a1) ^ 0x30;
  a16[57] = (((v49 >> 4) | (16 * v49)) ^ 0xB) + ((((v49 >> 4) | (16 * v49)) >> 1) & 0x55) - 2 * ((((v49 >> 4) | (16 * v49)) >> 1) & 0x55 & (((v49 >> 4) | (16 * v49)) ^ 0xB)) + 95;
  **a25 = a18 + 1;
  v51 = *a25;
  v52 = ((*(*a25 + 17) << 32) | (*(*a25 + 16) << 40) | (*(*a25 + 30) << 48)) ^ __ROR8__(((*(*a25 + 21) << 51) | (*(*a25 + 35) << 43) | (*(*a25 + 6) << 35) | __ROR8__(*(*a25 + 54), 5)) ^ 0xE2AE42236AE791A4, 35) ^ (*(*a25 + 42) << 56);
  v53 = *(*a25 + 15) | (*(*a25 + 32) << 8) | (*(*a25 + 7) << 16) | (*(*a25 + 34) << 24) | (*(*a25 + 61) << 40);
  v54 = v52 ^ 0x9811A675F89B50C9;
  v55 = *(&off_C6C70 + (a34 ^ 0x3A0));
  v56 = (*(v55 - 2 + (((((69 * v51[55]) - ((69 * v51[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v51[55])) ^ 0xD5)) - 18) ^ 0x57;
  v57 = ((*(*a25 + 51) << 56) | (*(*a25 + 56) << 48)) ^ 0xB4A3F0758D989FABLL ^ (((0xFFFFFFFF00000000 * ((v56 >> 2) | (v56 << 6))) ^ (v53 - (v53 & 0xFFFFFF00FFFFFFFFLL | (((v56 >> 2) | (v56 << 6)) << 32))) ^ ((((v56 >> 2) | (v56 << 6)) << 32) - (((v56 >> 2) << 33) & 0xFFFFFFF7FFFFFFFFLL) - 0x524F0AC4D0490303) ^ 0xADB0F53B2FB6FCFDLL) + v53);
  v61 = ((v51[4] >> 4) | (16 * v51[4])) ^ 0x5CLL;
  v62 = (((*(v55 + 529 + v61) >> 5) | (8 * *(v55 + 529 + v61))) << 8) ^ 0x764DA23C495917ALL;
  LOBYTE(v53) = (*(v55 - 2 + ((69 * *(*a25 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v58 = ((v53 >> 2) | (v53 << 6)) << 32;
  v59 = *(*a25 + 8) << 24;
  v60 = *(*a25 + 33) << 16;
  v63 = ((v59 & 0xDE000000 ^ 0x2F18FF5EE10B7CD6 ^ (v60 & 0xFC0000 ^ 0x75202470ACE09C56 ^ ((v62 & (*(*a25 + 19) ^ 0x2FF5FF73F5DDFFFBLL) | *(*a25 + 19) & 0x85) ^ 0x28B2F164996D5C0) & (v60 ^ 0x3FFFFFFFFFFFFFFFLL)) & (v59 ^ 0x7FFFFFFFFFFFFFFFLL)) & ~v58 | v58 & 0xE400000000) ^ ((v51[38] << 40) | (v51[43] << 48));
  return sub_66F8C(0xFFFFFF0000000000 * v51[12], 250, ((v63 & 0x4AF54021979D7FCDLL ^ (v51[46] << 56) & 0x4A00000000000000 ^ 0xB50ABFFE78638AF2) & ((v51[46] << 56) & 0xB500000000000000 ^ 0xC956176A306B0FDALL ^ v63 & 0xB50ABFDE68628032) | (v63 & 0x4AF54021979D7FCDLL ^ (v51[46] << 56) & 0x4A00000000000000) & 0x2A1400187947005) ^ 0xDED53971F08B6FE8, v57, v54, v62, a40, *(v43 - 176), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_67030@<X0>(int a1@<W8>)
{
  v7 = (a1 + 209724836) & 0xF37FD88F;
  v8 = STACK[0x350];
  v9 = LODWORD(STACK[0x4C4]) ^ 0xCFCDEBEB;
  v10 = (v7 ^ 0x9F9BD757) & (2 * LODWORD(STACK[0x4C4]));
  v11 = 742307843 * ((-383716899 - (v2 | 0xE920F1DD) + (v2 | 0x16DF0E22)) ^ 0x8FD8377);
  *(v6 - 172) = v1 - v11 + 870003632;
  v12 = v9 - v11 + v10 + 830177151;
  *(v6 - 184) = v5;
  v13 = STACK[0x2B8];
  *(v6 - 208) = v3;
  *(v6 - 200) = v13;
  *(v6 - 192) = v12;
  *(v6 - 188) = v11 + a1 + 1421511924;
  *(v6 - 216) = v8;
  v14 = (*(v4 + 8 * (a1 + 1617)))(v6 - 216);
  v15 = *(v6 - 176);
  LODWORD(STACK[0x504]) = v15;
  return (*(v4 + 8 * ((38 * (v15 == ((35 * (((v7 - 128) | 0x82) ^ 0x94)) ^ 0xB4D42A28))) ^ v7)))(v14);
}

uint64_t sub_67168()
{
  v6 = 1564307779 * ((2 * ((v1 - 152) & 0x41AC7EF644526C78) - (v1 - 152) + 0x3E538109BBAD9384) ^ 0x1B9075732CA05F97);
  *(v1 - 160) = -1948175035;
  *(v1 - 156) = 317293978;
  v2 = dword_CA058;
  v3 = v1 - 176;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2 + v6;
  *(v1 - 112) = -2030744672 - 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 120) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 116) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97) - 750401412;
  *(v1 - 152) = -750401434 - 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 148) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97) - 750401524;
  v4 = (*(v0 + 18088))(v1 - 152);
  return (*(v0 + 8 * *(v1 - 136)))(v4);
}

uint64_t sub_67538@<X0>(int a1@<W8>)
{
  v7 = (v1 ^ 0x66F91AA8) + (a1 & 0xCDF23550) - 12648448;
  v8 = ((((v6 - 144) | 0x1EE1D691) - ((v6 - 144) & 0x1EE1D691)) ^ 0xB1C65489) * v4;
  *(v6 - 128) = v7 ^ v8;
  *(v6 - 136) = v5;
  *(v6 - 144) = v8 + v2 - 427;
  v9 = (*(v3 + 8 * (v2 ^ 0xB19)))(v6 - 144);
  return (*(v3 + 8 * (((*(v6 - 140) != 157 * (v2 ^ 0x38E) + 262714299) * ((v2 + 38) ^ 0x3A9)) ^ v2)))(v9);
}

uint64_t sub_6764C(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v45 = v41;
  *v43 = a41 + 513153;
  v46 = *a3;
  v47 = 143681137 * ((v44 - 152) ^ 0x11788207D4A71C5ALL);
  v48 = v45 + 218857968 - v47;
  *(v44 - 128) = -143681137 * ((v44 - 152) ^ 0xD4A71C5A);
  *(v44 - 124) = v47 ^ 0x2B ^ (v45 + 218857968);
  *(v44 - 152) = v48 - 36;
  *(v44 - 132) = v48;
  v49 = v44 - 176;
  *(v49 + 64) = v47 + 5119;
  *(v49 + 32) = v46 - v47;
  *(v44 - 120) = v47 - 288126657 + v45;
  v50 = (*(v42 + 8 * (a2 + v45 + 1605)))(v44 - 152);
  return (*(v42 + 8 * *(v44 - 136)))(v50);
}

uint64_t sub_677A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v4 + 32;
  v10 = (v7 ^ v9) + v3;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a3 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * a1) | v6)))();
}

void sub_67870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v34 - 128) = v30 - ((((v34 - 144) | 0x92ACA6BC) - (v34 - 144) + ((v34 - 144) & 0x6D535940)) ^ 0x3D8B24A4) * v32 + 567;
  *(v34 - 112) = &a30;
  *(v34 - 104) = v33;
  *(v34 - 144) = &a18;
  *(v34 - 136) = &a18;
  *(v34 - 120) = a12;
  (*(v31 + 8 * (v30 ^ 0x940)))(v34 - 144);
  JUMPOUT(0x5DDE8);
}

uint64_t sub_67A28@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, unsigned int a39, unsigned int a40, uint64_t a41, char a42)
{
  v49 = *(v44 + 8 * a6);
  if (a42 == 2)
  {
    return sub_67B88();
  }

  if (a42 != 1)
  {
    return sub_91C8C(a1, a2, a3, a4, a5, v49, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
  }

  v51 = (v42 + v46 + 2077315864);
  v52 = *v51 ^ v43;
  LODWORD(v51) = (((v51[2] ^ v43) << 16) | ((v51[3] ^ v43) << 24)) + ((v51[1] ^ v43) << (a5 - 30)) + v52;
  *(v47 + 4 * (v45 ^ 0x1EF454C6)) = v51 + v48 - 2 * (v51 & 0x34D4291D ^ v52 & 0x10);
  return (*(v44 + 8 * ((87 * ((v46 + 2077315868) < 0x40)) ^ (a5 + 1143))))();
}

uint64_t sub_67B88()
{
  v10 = (v0 + v2 + v6);
  v11 = ((*v10 ^ v3) << 24) | ((v10[1] ^ v3) << 16) | ((v10[2] ^ v3) << 8);
  *(v8 + 4 * (((((v2 ^ 0xE3DE0744) + 1743825828) ^ v2 ^ ((v2 ^ 0x8DF407BA) + 165325662) ^ ((v2 ^ 0x2A14AC9B) - 1371930499) ^ ((v2 ^ 0x3FEFFF7D) - 1144958053)) >> 2) ^ v5)) = (v11 | v10[3] ^ v3) + v9 - 2 * ((v11 | v10[3] ^ v3) & 0x34D4291D ^ (v10[3] ^ v3) & 0x10);
  return (*(v4 + 8 * ((415 * ((v2 + 4 + v6) < 0x40)) ^ v1)))(v7 + 16);
}

uint64_t sub_67C84(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = vdupq_n_s32(0x46732821u);
  *&STACK[0x258] = v5;
  *&STACK[0x268] = v5;
  return (*(v4 + 8 * ((((a3 & 0xFFFFFFF8) != 8) * ((a4 ^ 0x1D2) - 1559)) ^ (a4 - 1185))))();
}

uint64_t sub_67CD8(uint64_t a1, unsigned int a2)
{
  v4 = (v3 - 797405627) & 0x2F876F7C;
  if (((v4 ^ 0x19139C22) + a2) < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -841432684 - a2;
  }

  return (*(v2 + 8 * (((v5 - 1726767307 >= 0) * (((v4 - 138) ^ 0x781) + 623)) ^ v4)))(a1, v5 - 1);
}

uint64_t sub_67D7C@<X0>(uint64_t a1@<X2>, char a2@<W4>, unsigned int a3@<W8>)
{
  v8 = *(v7 - 220 + a3 + 72);
  v9 = ((a3 << ((a2 + v3 + 122) ^ (a2 + 1))) & 0xB3BFEFD8) + (a3 ^ 0xD9DFF7ED) + v5;
  *(a1 + v9) = (HIBYTE(v8) ^ 0x56) - ((2 * (HIBYTE(v8) ^ 0x56)) & 0x64) + 50;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x65) - ((2 * (BYTE2(v8) ^ 0x65)) & 0x64) + 50;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0x51) - ((2 * (BYTE1(v8) ^ 0x51)) & 0x64) + 50;
  *(a1 + v9 + 3) = v8 ^ 0x4E;
  return (*(v6 + 8 * (((a3 + 4 < *(v7 - 128)) * v4) ^ v3)))();
}

uint64_t sub_67E50@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = (v11 + 4 * v9);
  v13 = HIDWORD(a1) + (*v12 ^ v3) + HIDWORD(v5) + v7 * (*(v10 + 4 * v9) ^ v3);
  *(v12 - 1) = v3 + (v4 ^ v6) + v13 - (a2 & (2 * v13)) - 660;
  return (*(v8 + 8 * (((2 * (v9 + 1 == a3)) | (4 * (v9 + 1 == a3))) ^ v4)))();
}

uint64_t sub_67EB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a6 - 32;
  v11 = *(v10 + v8);
  v12 = (a5 - 32 + v8);
  *(v12 - 1) = *(v10 + v8 - 16);
  *v12 = v11;
  return (*(v7 + 8 * ((56 * (((a3 ^ (v9 - 11)) ^ (a4 == 32)) & 1)) ^ a7)))();
}

uint64_t sub_67ECC@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D2>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2).u64[0];
  *a1 = vuzp1_s8(vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0x64006400640064)), 0x32003200320032), 0x64006400640064).u32[0];
  return (*(v4 + 8 * ((28 * ((((v3 ^ 0x1Cu) - 674) ^ 0x209) != 4)) ^ v3 ^ 0x1C)))();
}

uint64_t sub_67F48()
{
  v10 = (v5 - v7 - 1) & (v1 ^ 0x8Du);
  v12.val[0].i64[0] = v10;
  v12.val[0].i64[1] = (v5 - v7 + 14) & 0xF;
  v12.val[1].i64[0] = (v5 - v7 + 13) & 0xF;
  v12.val[1].i64[1] = (v5 - v7 + 12) & 0xF;
  v12.val[2].i64[0] = (v5 - v7 + 11) & 0xF;
  v12.val[2].i64[1] = (v5 - v7 + 10) & 0xF;
  v12.val[3].i64[0] = (v5 - v7 + 9) & 0xF;
  v12.val[3].i64[1] = (v5 - v7) & 0xFLL ^ 8;
  *(v9 + -8 - v7 + v5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v0 + -8 - v7 + v5), *(v2 + v10 - 7)), veor_s8(*(v10 + v3 - 2), *(v10 + v4 - 5)))), 0x3232323232323232), vmul_s8(*&vqtbl4q_s8(v12, xmmword_A91E0), 0x5959595959595959)));
  return (*(v8 + 8 * ((4 * (8 - (v6 & 0x18) == -v7)) | (8 * (8 - (v6 & 0x18) == -v7)) | v1)))(v5 - (v6 & 0x18), xmmword_A91E0);
}

uint64_t sub_680F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v25 = 21 * (v24 ^ 0x3CC);
  v26 = (a22 ^ (a5 + v25 - 1995)) + a23;
  v27 = a19 < a18;
  if (v27 == v26 > 0x181F614D)
  {
    v27 = 61 * (v25 ^ 0x7C4u) + v26 - 404710625 < a19;
  }

  return (*(v23 + 8 * ((!v27 * (((v25 - 1897046780) & 0x71129B7D) - 21)) ^ v25)))(a1, v26, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_68258@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = v24 + 1168;
  v31 = &STACK[0x5E0] + STACK[0x260];
  v32 = a1 + 528;
  v33 = a1 + 800;
  LODWORD(STACK[0x308]) = v26;
  switch(v28)
  {
    case 32:
      v34 = 19;
      break;
    case 20:
      v34 = 15;
      break;
    case 16:
      v34 = 18;
      break;
    default:
      LODWORD(STACK[0x300]) = 0;
      goto LABEL_9;
  }

  LODWORD(STACK[0x300]) = v34;
LABEL_9:
  v35 = STACK[0x340] + 643;
  v36 = (v27 ^ 0xCD5B31E8) + 2063531584 + ((v27 << (STACK[0x340] ^ 0xA5)) & 0x9AB663D0);
  v37 = 843532609 * ((v29 - 216) ^ 0x5C4D5485);
  *(v29 - 152) = v37 + STACK[0x340] - 129;
  *(v29 - 144) = 0;
  *(v29 - 168) = v30;
  *(v29 - 160) = v31;
  *(v29 - 184) = &STACK[0x494];
  *(v29 - 176) = 0;
  *(v29 - 192) = v36 ^ v37;
  *(v29 - 216) = v33;
  *(v29 - 200) = v32;
  v38 = (*(v25 + 8 * a24))(v29 - 216);
  return (*(v25 + 8 * ((450 * (*(v29 - 208) == -1261164275)) ^ v35)))(v38);
}

uint64_t sub_685E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 1073) | 0x96) ^ 0x6FB)) | v3)))();
}

void sub_68618()
{
  v4 = STACK[0x530];
  v5 = 742307843 * ((2 * (((v3 - 216) ^ 0xBBE7F91) & 0x505349E8) - ((v3 - 216) ^ 0xBBE7F91) - 1347635691) ^ 0xBA3044D1);
  *(v3 - 216) = -473373760 - v5 + v0 + 13;
  *(v3 - 208) = v4;
  *(v3 - 196) = 602092488 - v5;
  (*(v1 + 8 * (v0 + 2186)))(v3 - 216);
  STACK[0x458] = *(v1 + 8 * v0);
  STACK[0x308] = v2;
  JUMPOUT(0x686C8);
}

void sub_686D4()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x686E8);
}

uint64_t sub_687A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v46 ^ (v45 + 324);
  v51 = (*(v47 + 8 * (v46 + 1317)))(&a45, 0);
  (*(v47 + 8 * (v46 + 1280)))(v51);
  v52 = (*(v47 + 8 * (v46 + 1280)))();
  v53 = *v48;
  v54 = 1664525 * (((v53 ^ (v53 >> 30) ^ 0x323144CF) - 1284451497) ^ ((v53 ^ (v53 >> 30) ^ 0xAA0FA45C) + 726545350) ^ ((v53 ^ (v53 >> 30) ^ 0x983EE093) + 427783947)) - 362575568;
  v48[1] = ((v52 + 880541013 - ((2 * v52) & 0x68F7FAAA)) ^ 0x347BFD55) + ((v48[1] - ((2 * v48[1]) & 0xD09CCBA2) - 397515311) ^ v54 ^ ((v54 ^ 0xA729E73A) + 872382664) ^ ((v54 ^ 0xFDA9DB3A) + 1769979080) ^ ((v54 ^ 0x7E5C5BBD) - 360039359) ^ ((v54 ^ 0x4FF5FFBF) - 618424253) ^ 0x8367FDD3);
  *(v49 - 124) = (v50 - 2042978751) ^ a35;
  v55 = v49 - 176;
  *(v55 + 32) = 2 - a35;
  v56 = (v50 - 447985790) ^ a35;
  *(v49 - 136) = v56 ^ 0x53;
  *(v49 - 132) = a35 + 1;
  *(v49 - 152) = v56;
  *(v49 - 148) = a35 + v50 - 447985790 - 31;
  *(v55 + 56) = a38;
  v57 = (*(v47 + 8 * (v50 - 1500579948)))(v49 - 152);
  return (*(v47 + 8 * *(v49 - 128)))(v57);
}

uint64_t sub_68A44@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x4E8])++;
  *STACK[0x2D0] = v3 + 513153;
  v4 = *STACK[0x2D8];
  v5 = STACK[0x2A0];
  *(v2 - 188) = (a1 - 542397458) ^ STACK[0x2A0];
  *(v2 - 184) = STACK[0x298];
  *(v2 - 216) = (a1 - 442992481) ^ v5;
  *(v2 - 212) = v5 + a1 - 442992481 + 53;
  *(v2 - 208) = v4 - v5;
  *(v2 - 200) = (a1 - 442992529) ^ v5;
  *(v2 - 196) = v5 | 1;
  v6 = (*(v1 + 8 * (a1 + 1345)))(v2 - 216);
  return (*(v1 + 8 * *(v2 - 192)))(v6);
}

uint64_t sub_68AF0(uint64_t a1)
{
  v1 = *a1 + 1361651671 * (((a1 | 0xB6552830) - a1 + (a1 & 0x49AAD7CF)) ^ 0x6577D8BC);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v1 + 143681137 * (((&v5 | 0x9D5253EB) + (~&v5 | 0x62ADAC14)) ^ 0x49F54FB0) + 562359048;
  v6 = v2;
  v7 = v3;
  return (*(*(&off_C6C70 + (v1 ^ 0xDE7B15FB)) + (v1 ^ 0xDE7B1D4A) - 1))(&v5);
}

void sub_68BF8(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + 420716342 >= (v1 ^ 0x188))
  {
    a1 = -a1;
  }

  sub_8DB34(a1 + v3);
}

void sub_68DB0(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x7695409B) - (a1 & 0x7695409B)) ^ 0xE1988C88);
  __asm { BRAA            X14, X17 }
}

void sub_68E74(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 1726767306 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1726767306;
  }

  else
  {
    v2 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 32) + 843532609 * (((a1 | 0xB1CD8508) - (a1 | 0x4E327AF7) + 1311931127) ^ 0xED80D18D);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_68FA4@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 32);
  if ((a1 - 1726767307) >= 0x7FFFFFFF)
  {
    v7 = -v3;
  }

  else
  {
    v7 = v1;
  }

  v10[1] = v7;
  *(v5 - 120) = (v2 + 522) ^ (1564307779 * ((((v5 - 136) | 0xC622D8A1) - (v5 - 136) + ((v5 - 136) & 0x39DD2758)) ^ 0x512F14B2));
  *(v5 - 136) = v6;
  *(v5 - 128) = v10;
  return (*(v4 + 8 * (v2 ^ 0xC67)))(v5 - 136);
}

uint64_t sub_69150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, int a14, int a15, char *a16, uint64_t a17, char *a18)
{
  v22 = 50899313 * (&a14 ^ 0xC861C456);
  a16 = &a13;
  a17 = v19;
  a18 = &a10;
  a14 = v22 ^ 0x5247F43;
  a15 = (v21 + 392) ^ v22;
  v23 = (*(v20 + 8 * (v21 + 2043)))(&a14);
  return (*(v20 + 8 * ((31 * (*(v19 + 24) != v18)) ^ v21)))(v23);
}

uint64_t sub_692C8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + (v2 ^ 0xC59u);
  *(a1 + v5 - 2128) = *(v3 + v5 - 2128) - ((2 * *(v3 + v5 - 2128)) & 0x64) + 50;
  return (*(v4 + 8 * ((650 * (v5 == 2128)) ^ v2)))();
}

uint64_t sub_6930C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_69334(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v15 = 1564307779 * ((v14 + 493274148 - 2 * ((v14 - 136) & 0x1D66C4AC)) ^ 0x8A6B08BF);
  *(v14 - 136) = v15 + v13 + 1429;
  *(v14 - 128) = &a12;
  *(v14 - 120) = v15 + ((a4 << 6) & 0xCD7CDF80) + ((v13 - 58) ^ (32 * a4) ^ 0xE6BE6DC7) + 2103443132;
  v16 = (*(v12 + 8 * (v13 + 1722)))(v14 - 136);
  return (*(v12 + 8 * ((445 * ((v13 - 1726766985 + *(a9 + 4) - 909) < 0x7FFFFFFF)) ^ v13)))(v16);
}

uint64_t sub_69468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

void sub_694F0(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1785193651 * (((a1 | 0x3A136D46) - a1 + (a1 & 0xC5EC92B9)) ^ 0x29CF8166));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_69614(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v17 = 577 * (a2 ^ 0x6CC);
  *(&a12 + a5) = v12 + v17 + HIDWORD(a1) - (v15 & (2 * HIDWORD(a1))) - 1154;
  return (*(v16 + 8 * ((((v17 ^ 0x485) + 2123 + 38 * (v17 ^ 0x485) + 694) * (v14 + 1 == v13)) ^ v17)))();
}

uint64_t sub_69680(uint64_t a1)
{
  v2 = 143681137 * (a1 ^ 0xD4A71C5A);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 28) - v2;
  v8 = *a1 + 2013066611 + v2;
  v9 = 1037613739 * ((-255044930 - (&v11 | 0xF0CC52BE) + (&v11 | 0xF33AD41)) ^ 0xDE31803E);
  v15 = v9 ^ (v8 + 1568);
  v17 = v6;
  v11 = v9 - 807041751 * v7 + 788322856;
  v13 = v3;
  v14 = v5;
  v12 = v4;
  result = (*(*(&off_C6C70 + v8) + v8 + 2146))(&v11);
  *(a1 + 4) = v16;
  return result;
}

void sub_697B4(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1726767306;
  if (v2 < 0)
  {
    v2 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v1 = *a1 - 2066391179 * ((((2 * a1) | 0x48B2A1A) - a1 + 2109369075) ^ 0x2D621715);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_69910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, char a16, uint64_t a17, _BYTE *a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22)
{
  a20 = &a13;
  a21 = &a16;
  a22 = a18;
  HIDWORD(a19) = v22 + (((&a19 | 0xC656D417) - (&a19 & 0xC656D417)) ^ 0xD8745942) * v23 + 793;
  (*(v24 + 8 * (v22 ^ 0x96E)))(&a19);
  a19 = a18;
  a20 = &a11;
  HIDWORD(a21) = v22 + 210068311 * ((-1481193942 - (&a19 | 0xA7B6C62A) + (&a19 | 0x584939D5)) ^ 0xAAC2963D) + 1082;
  (*(v24 + 8 * (v22 ^ 0x91C)))(&a19);
  a20 = a18;
  LODWORD(a19) = v22 - 50899313 * (((&a19 | 0x3BD61B01) - &a19 + (&a19 & 0xC429E4F8)) ^ 0xF3B7DF57) + 986;
  v25 = (*(v24 + 8 * (v22 + 1820)))(&a19);
  return (*(v24 + 8 * (((a21 == -1261164275) * (((v22 + 1136) | 0x11) ^ 0x29B)) ^ v22)))(v25);
}

void sub_69A78(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  a4 = a1;
  a5 = v7;
  a6 = v8 + 1785193651 * ((((2 * &a3) | 0xE4FFA836) - &a3 + 226503653) ^ 0xE1A3383B) + 584;
  a3 = v7;
  (*(v6 + 8 * (v8 ^ 0x9F7)))(&a3);
  sub_81CA0();
}

uint64_t sub_69B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t *a11, uint64_t a12, unsigned int a13, int a14)
{
  v17 = 1785193651 * (((&a10 | 0xBBAB27D7) - &a10 + (&a10 & 0x4454D828)) ^ 0xA877CBF7);
  a11 = &a9;
  a12 = v14;
  a13 = 2023425342 - v17;
  a14 = v15 - v17 - 550;
  a10 = 1332270177 - v17;
  v18 = (*(v16 + 8 * (v15 ^ 0xB9E)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == -1261164275) * (903 * (v15 ^ 0x37D) + 143)) ^ v15)))(v18);
}

uint64_t sub_69C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = &a17;
  *(v22 - 120) = v19;
  *(v22 - 128) = v21 - ((2 * ((v22 - 136) & 0x46156F40) - (v22 - 136) + 971673789) ^ 0xED4D8CE7) * v20 + 953;
  v23 = (*(v18 + 8 * (v21 ^ 0x9E9)))(v22 - 136);
  return (*(v18 + 8 * ((204 * (((v21 - 1) ^ (*(v22 - 112) > v17 + ((v21 + 1056356739) & 0xC10945EF) - 197)) & 1)) ^ v21)))(v23);
}

uint64_t sub_69E7C@<X0>(char a1@<W1>, char a2@<W7>, uint64_t a3@<X8>)
{
  v8 = *(a3 + v3 + 72);
  v9 = ((v3 << ((v4 + 93) ^ 0xA5)) & 0xB3EFEFF8) + (v3 ^ 0x59F7F7FD) - 1509423101;
  *(v5 + v9) = (a1 ^ HIBYTE(v8)) - (a2 & (2 * (a1 ^ HIBYTE(v8)))) + 50;
  *(v5 + v9 + 1) = (v6 ^ BYTE2(v8)) - (a2 & (2 * (v6 ^ BYTE2(v8)))) + 50;
  *(v5 + v9 + 2) = (BYTE1(v8) ^ 0x51) - (a2 & (2 * (BYTE1(v8) ^ 0x51))) + 50;
  *(v5 + v9 + 3) = v8 ^ 0x4E;
  return (*(v7 + 8 * ((437 * (v3 + 4 < *(a3 + 92))) ^ v4)))();
}

uint64_t sub_69F48()
{
  LODWORD(STACK[0x348]) = v0;
  STACK[0x4F8] -= 432;
  return (STACK[0x478])();
}

uint64_t sub_69FD4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x248] + a2 + 72);
  v7 = ((2 * a2) & 0xCEFFFBF0) + ((v3 + 1736440970) ^ a2) + v2;
  *(a1 + v7) = v6 ^ 0x4E;
  *(a1 + v7 + 1) = (BYTE1(v6) ^ 0x51) + ~(2 * ((BYTE1(v6) ^ 0x51) & 0x3A ^ BYTE1(v6) & 8)) + 51;
  *(a1 + v7 + 2) = (BYTE2(v6) ^ 0x65) - ((2 * (BYTE2(v6) ^ 0x65)) & 0x64) + 50;
  *(a1 + v7 + 3) = (HIBYTE(v6) ^ 0x56) - 2 * ((HIBYTE(v6) ^ 0x56) & 0x33 ^ HIBYTE(v6) & 1) + 50;
  return (*(v5 + 8 * (((a2 + 4 >= LODWORD(STACK[0x2A4])) * v4) ^ v3)))();
}

uint64_t sub_6A570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v20 - ((~((v21 - 136) | 0x93D12884) + ((v21 - 136) & 0x93D12884)) ^ 0xB889CB21) * v17 + 557;
  *(v21 - 120) = &a17;
  *(v21 - 136) = a16;
  v22 = (*(v19 + 8 * (v20 + 1501)))(v21 - 136);
  return (*(v19 + 8 * ((1156 * (*(v21 - 112) > ((v20 + 542) ^ (v18 + 1085)))) ^ v20)))(v22);
}

uint64_t sub_6A608(uint64_t a1, uint64_t a2)
{
  *(a2 + v4 - 1) = ((v2 + v3) ^ v6) * (v2 + v3 + 17);
  v9 = *(v8 + 8 * (((v4 != 1) * v7) ^ v5));
  return v9(v9, a2);
}

uint64_t sub_6A650(int8x8_t a1, int8x8_t a2)
{
  v9 = v2 + 8;
  *(v5 + v9) = vadd_s8(vsub_s8(*(v8 + v9), vand_s8(vadd_s8(*(v8 + v9), *(v8 + v9)), a1)), a2);
  return (*(v7 + 8 * (((v4 != v9) * v6) ^ v3)))();
}

uint64_t sub_6A700@<X0>(int a1@<W8>)
{
  *v1 = v9 ^ v4;
  v7 = a1 ^ v3;
  v13 = v10;
  v12 = v2 - 1388665877 * (((&v12 | 0xC0EEBB05) - (&v12 & 0xC0EEBB05)) ^ 0x4D43D9E9) + a1 + 1469;
  (*(v5 + 8 * (a1 ^ (v3 + 2395))))(&v12);
  v12 = v7 - 1388665877 * ((((&v12 | 0x20300AC0) ^ 0xFFFFFFFE) - (~&v12 | 0xDFCFF53F)) ^ 0x526297D3) + 817;
  v13 = v11;
  (*(v5 + 8 * (v7 + 1493)))(&v12);
  return v6 ^ v4;
}

uint64_t sub_6AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v36 = *(&a19 + v31 + 72);
  v37 = (v36 >> (v35 + ((v33 + 66) | 0x12) + 16)) ^ 0x56;
  v38 = ((2 * v31) & 0xF7AFCFD8) + (v31 ^ 0x7BD7E7ED) + v32;
  *(a1 + v38) = v37 - ((2 * v37) & 0x64) + 50;
  *(a1 + v38 + 1) = (BYTE2(v36) ^ 0x65) - ((2 * (BYTE2(v36) ^ 0x65)) & 0x64) + 50;
  *(a1 + v38 + 2) = (BYTE1(v36) ^ 0x51) - ((2 * (BYTE1(v36) ^ 0x51)) & 0x64) + 50;
  *(a1 + v38 + 3) = v36 ^ 0x4E;
  return (*(v34 + 8 * (((2 * (v31 + 4 < a31)) | (32 * (v31 + 4 < a31))) ^ v33)))();
}

uint64_t sub_6AC90@<X0>(uint64_t a1@<X8>)
{
  v9 = v1 - 1 + (*(*(v7 + 8) + 4 * v2) ^ (v4 + v3 + 509 - 1180));
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((50 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_6AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = (v19 + 510) ^ (1564307779 * ((((2 * (v21 - 136)) | 0x9D5A8418) - (v21 - 136) - 1319977484) ^ 0xD9A08E1F));
  *(v21 - 136) = &a17;
  *(v21 - 128) = a16;
  (*(v18 + 8 * (v19 ^ 0xC6B)))(v21 - 136);
  v22 = 1785193651 * ((2 * ((v21 - 136) & 0x5A883020) - (v21 - 136) - 1518874662) ^ 0xB6AB23FA);
  *(v21 - 136) = a15;
  *(v21 - 128) = v19 - v22 - 88;
  *(v21 - 124) = 1855785489 - v22;
  (*(v18 + 8 * (v19 ^ 0xC33)))(v21 - 136);
  *(v21 - 120) = a15;
  *(v21 - 128) = v19 - ((((v21 - 136) | 0x9C3391) - ((v21 - 136) & 0x9C3391)) ^ 0xD43B2FCB) * v20 + 15;
  *(v21 - 136) = a16;
  v23 = (*(v18 + 8 * (v19 + 959)))(v21 - 136);
  return (*(v18 + 8 * (((*(v21 - 112) > v17) * ((v19 - 1954432291) & 0x747E40E6 ^ (v19 + 1406693074) & 0xAC278CF9 ^ 0x1D5)) ^ v19)))(v23);
}

uint64_t sub_6AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v25 = 143681137 * (((&a15 | 0x1A05EB13) - &a15 + (&a15 & 0xE5FA14E8)) ^ 0xCEA2F749);
  a16 = a13;
  LODWORD(a15) = (((2 * v21) & 0xE79F6F7C) - 591430660 + (v21 ^ 0x73CFB7BE)) ^ v25;
  LODWORD(a17) = 1806 - v25;
  (*(v23 + 18120))(&a15);
  a18 = 618 - ((((2 * &a15) | 0x5FE5C5D4) - &a15 - 804446954) ^ 0x80D560F2) * v24;
  a16 = v20;
  a17 = a13;
  (*(v23 + 17736))(&a15);
  v26 = 1037613739 * (&a15 ^ 0xD1022D7F);
  HIDWORD(a17) = v26 ^ 0x84F;
  a18 = (v19 ^ 0xFDDCD7FF) + ((2 * v19) & 0xFBB9AFFE) - v26 + 2134878719;
  a15 = v18;
  a16 = a13;
  v27 = (*(v23 + 17928))(&a15);
  return (*(v23 + 8 * ((474 * (a17 != v22)) ^ 0xDFu)))(v27);
}

uint64_t sub_6B054()
{
  v1.n128_u64[0] = 0x3232323232323232;
  v1.n128_u64[1] = 0x3232323232323232;
  v2.n128_u64[0] = 0x6464646464646464;
  v2.n128_u64[1] = 0x6464646464646464;
  return sub_80AA8(v0 - 220, v1, vdupq_n_s32(0x34D4291Du), vdupq_n_s32(0xB4D4290D), v2);
}

uint64_t sub_6B060()
{
  v2 = v0 - 554;
  v3 = STACK[0x4D0];
  v4 = (v0 - 1657355702 + LODWORD(STACK[0x428]) - 378);
  STACK[0x4B0] = v4;
  return (*(v1 + 8 * ((172 * (v4 == 0)) ^ v2)))(v3);
}

uint64_t sub_6B0F4@<X0>(unsigned int a1@<W8>)
{
  v8 = (v5 + 4 * v1);
  v9 = v2 & 0x80000000;
  v10 = v1 + 1;
  v11 = *(v5 + 4 * v10);
  v12 = v8[397] ^ ((v11 & 0x7FFFFFFE | v9) >> 1);
  *v8 = (v12 + v3 - ((v12 << ((a1 + 83) & 0xD9 ^ 0x91)) & v6)) ^ *(v7 - 168 + 4 * (v11 & 1));
  return (*(v4 + 8 * ((834 * (v10 == 227)) ^ a1)))();
}

void sub_6B298()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x6B2DCLL);
}

uint64_t sub_6B37C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1428);
  STACK[0x4F8] = STACK[0x260] + 256;
  STACK[0x548] = v1 + 1432;
  if (v3 <= 0x20 && ((1 << v3) & 0x100110000) != 0)
  {
    return (*(v2 + 8 * ((167 * (*(a1 + 476) == ((STACK[0x340] + 643) ^ 0x626))) ^ (STACK[0x340] + 643))))();
  }

  v5 = STACK[0x4F8] - 256;
  STACK[0x260] = v5;
  STACK[0x4F8] = v5;
  return (STACK[0x408])();
}

void sub_6B4CC()
{
  STACK[0x2C8] = STACK[0x288];
  STACK[0x478] = *(v1 + 8 * v0);
  JUMPOUT(0x61980);
}

uint64_t sub_6B52C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x9AB));

  return v3(v1);
}

void sub_6B560(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x4C0]) = a2;
  LODWORD(STACK[0x34C]) = a1;
  LODWORD(STACK[0x438]) = v3;
  LODWORD(STACK[0x390]) = v2;
  LODWORD(STACK[0x42C]) = v4 + 64;
  JUMPOUT(0x5AA9CLL);
}

uint64_t sub_6B668(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  if (a31 == 2)
  {
    return (*(v31 + 8 * (((2 * (((a30 == 0) ^ (a4 ^ (a4 + 57))) & 1)) & 0xDF | (32 * (((a30 == 0) ^ (a4 ^ (a4 + 57))) & 1))) ^ (v32 + a4 + 1111))))(a9);
  }

  if (a31 == 1)
  {
    return (*(v31 + 8 * (((a30 != 0) * ((a4 + 1953720012) & 0x1C2805DF ^ 0x4D7)) ^ (v32 + a4 + 1111))))(a9);
  }

  return sub_6B75C();
}

uint64_t sub_6B75C@<X0>(int a1@<W8>)
{
  v8 = v5 - v1;
  *(v8 + 91) = ((v1 + v3) ^ v4) * (v1 + v3 + 17);
  *(v8 + 90) = (v2 ^ (v1 + v3) ^ 8) * (v1 + v3 + 18);
  return (*(v7 + 8 * (((v1 == 90) * v6) ^ a1)))(0);
}

uint64_t sub_6B7F4@<X0>(int a1@<W2>, int a2@<W3>, unsigned int a3@<W5>, int a4@<W8>)
{
  v7 = *(v5 + 48 * a4 + 36);
  v9 = v7 + a2 < (v4 ^ a3) && v7 != a1 + ((v4 + 882) ^ 5) - 1864;
  return (*(v6 + 8 * ((v4 + 882) ^ (2 * v9))))();
}

uint64_t sub_6B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19)
{
  v25 = 143681137 * ((&a15 - 709854109 - 2 * (&a15 & 0xD5B07C63)) ^ 0x1176039);
  a17 = v24 - v25 + 187;
  LODWORD(a15) = (((2 * v21) & 0xEDBEF7F6) + 1504688063 + (v21 ^ 0xF6DF7F5E ^ (v24 - 513558182) & 0x1E9C44F7)) ^ v25;
  a16 = a13;
  (*(v23 + 8 * (v24 ^ 0xE8A)))(&a15);
  v26 = ((2 * (&a15 & 0x5E054410) - &a15 - 1577403409) ^ 0x70F89690) * v22;
  a18 = (v24 + 508) ^ v26;
  a19 = (v20 ^ 0xFFDFE1FE) + ((2 * v20) & 0xFFBFC3FC) - v26 + 2101125120;
  a15 = v19;
  a16 = a13;
  v27 = (*(v23 + 8 * (v24 + 622)))(&a15);
  return (*(v23 + 8 * ((461 * (a17 == -1261164275)) ^ v24)))(v27);
}

uint64_t sub_6B9AC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((1212 * (v5 == ((136 * (v3 ^ 0x33Cu)) ^ 0x440))) ^ (v3 - 341))))();
}

uint64_t sub_6B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13 = *(v11 + v9 * v10 + 36);
  v15 = v13 - 1925087724 > 552000786 || v13 - 1925087724 < a8;
  v16 = v13 != a7 + ((v8 - 488) | 0x20) + 40 - 592 && v15;
  return (*(v12 + 8 * ((2019 * v16) ^ v8)))();
}

uint64_t sub_6BA50@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, unsigned int a5@<W8>)
{
  v14 = ((v13 >> (6 * (v12 ^ a1) - 60)) ^ (v7 + 509)) + (*(a2 + 4 * v5) ^ a5);
  v15 = v14 - ((5 * (v12 ^ 0x112u) + a3) & (2 * v14)) + a4;
  *(a2 + 4 * v8) = v15 ^ v9;
  *(a2 + 4 * v5) = HIDWORD(v15) ^ v11;
  return (*(v10 + 8 * (v12 ^ (1005 * (v6 + 1 == v5)))))();
}

void sub_6BB2C(uint64_t a1)
{
  v1 = *(a1 + 16) + 143681137 * ((-2 - ((~a1 | 0xA95D22BC) + (a1 | 0x56A2DD43))) ^ 0x7DFA3EE6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_6BC54(uint64_t a1)
{
  v1 = 1785193651 * (a1 ^ 0x13DCEC20);
  v2 = *(a1 + 12) + v1;
  return (*(*(&off_C6C70 + (v2 ^ 0x1CB)) + (v2 ^ (32 * ((((v2 - 1240308176) ^ (((((*(a1 + 8) + v1) ^ 0x29F2AE26) - 703770150) ^ (((*(a1 + 8) + v1) ^ 0xBF8A30DC) + 1081462564) ^ (((*(a1 + 8) + v1) ^ 0x22ACB7F7) - 581744631)) + 886319373 < 0x80000064)) & 1) == 0))) - 1))();
}

uint64_t sub_6BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, int a29, unsigned int a30, unsigned int a31, int a32, char a33)
{
  HIDWORD(a14) = HIDWORD(a11) + 935240061;
  v34.i64[0] = 0x3232323232323232;
  v34.i64[1] = 0x3232323232323232;
  return sub_93B8C(vdupq_n_s32(0x34D4291Du), vdupq_n_s32(0xB4D4290D), v34, a1, a2, 50, a4, 1475, a6, 100, 1007, a9, a10, a11, a12, a13, a14, a15, v33 - 16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_6BEDC()
{
  v3 = 742307843 * ((v2 - 216) ^ 0x1E228D55);
  *(v2 - 208) = STACK[0x530];
  *(v2 - 216) = -473373760 - v3 + v0 + 26;
  *(v2 - 196) = 602092488 - v3;
  (*(v1 + 8 * (v0 + 2199)))(v2 - 216);
  JUMPOUT(0x686ACLL);
}

void sub_6BFDC(uint64_t a1)
{
  v1 = *(a1 + 16) - 1361651671 * ((2 * (a1 & 0xA46929BF) - a1 + 1536611904) ^ 0x88B426CC);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_6C128()
{
  v4 = STACK[0x3A0];
  v5 = 1082434553 * ((~((v3 - 216) | 0x4FDACFB9) + ((v3 - 216) & 0x4FDACFB9)) ^ 0x2B62C6CC);
  *(v3 - 176) = &STACK[0x524];
  *(v3 - 168) = v4;
  *(v3 - 184) = &STACK[0x374];
  *(v3 - 192) = v5 + v2 + 169;
  *(v3 - 204) = v5 + v0 - 530102559;
  *(v3 - 216) = &STACK[0x510];
  *(v3 - 200) = &STACK[0x394];
  v6 = (*(v1 + 8 * (v2 ^ 0x8BE)))(v3 - 216);
  return (*(v1 + 8 * ((1093 * (*(v3 - 208) == (v2 ^ 0xB4D42834 ^ (v2 + 281)))) ^ v2)))(v6);
}

uint64_t sub_6C21C()
{
  STACK[0x218] = v2;
  v3 = *(v0 + 8 * ((290 * (LODWORD(STACK[0x43C]) - 1657357197 < (((v1 - 1400) | 0x405) ^ 0xFFFFFBDD ^ (727 * (v1 ^ 0x619))))) ^ v1));
  STACK[0x210] = &STACK[0x5E0] + STACK[0x278];
  return v3();
}

uint64_t sub_6C2DC()
{
  v0 = *(&off_C6C70 + (byte_B1680[byte_AC3E0[(107 * ((qword_C8B98 - dword_C8BE8) ^ 0xF9))] ^ 0xD6] ^ (107 * ((qword_C8B98 - dword_C8BE8) ^ 0xF9))) + 4);
  v1 = *(v0 - 4);
  v2 = *(&off_C6C70 + ((107 * ((qword_C8B98 - v1) ^ 0xF9)) ^ byte_B1680[byte_AC3E0[(107 * ((qword_C8B98 - v1) ^ 0xF9))] ^ 0xD6]) - 157);
  v3 = 1010482283 * ((*(v2 - 4) + v1) ^ &v7 ^ 0xABAF40B6402B16F9);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  LOBYTE(v3) = 107 * ((v3 - *(v0 - 4)) ^ 0xF9);
  v8 = *(&off_C6C70 + (byte_AC4E0[byte_B8670[v3] ^ 0xA4] ^ v3) + 48);
  v9 = (1785193651 * ((&v8 & 0x51F9934E | ~(&v8 | 0x51F9934E)) ^ 0xBDDA8091)) ^ 0x2C2;
  v4 = *(&off_C6C70 + ((107 * ((qword_C8B98 - dword_C8BE8) ^ 0xF9)) ^ byte_B1680[byte_AC3E0[(107 * ((qword_C8B98 - dword_C8BE8) ^ 0xF9))] ^ 0xCD]) - 1) - 8;
  (*&v4[8 * ((107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9))] ^ 0xF6]) + 17232])(&v8);
  v8 = *(&off_C6C70 + (byte_B4FF0[byte_B1580[(107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))] ^ 0xAD] ^ (107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))) - 220);
  v9 = (1785193651 * ((912259484 - (&v8 | 0x365FF99C) + (&v8 | 0xC9A00663)) ^ 0xDA7CEA43)) ^ 0x2C2;
  (*&v4[8 * ((107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9)) ^ byte_B4FF0[byte_B1580[(107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))] ^ 0xFC]) + 17448])(&v8);
  v5 = 2066391179 * ((((2 * &v8) | 0x8383177C) - &v8 + 1044280386) ^ 0x6EE609A6);
  LOBYTE(v8) = v5 ^ 0x2A;
  HIDWORD(v8) = v5 ^ 0x507;
  LOBYTE(v5) = 107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9);
  return (*&v4[8 * (byte_AC1E8[(byte_B847C[v5 - 12] ^ 0xB8) - 8] ^ v5) + 17616])(&v8);
}

uint64_t sub_6C68C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v6 < v8;
  if (v11 == v7 + 1 > (a6 + 2))
  {
    v11 = v9 + v7 + 2 < v6;
  }

  return (*(v10 + 8 * ((60 * !v11) ^ a1)))();
}

void sub_6C7DC(uint64_t a1)
{
  v1 = 1785193651 * ((((2 * a1) | 0xE946973A) - a1 + 190624867) ^ 0xE77FA7BD);
  v2 = *(a1 + 8) + v1;
  __asm { BRAA            X14, X17 }
}

void sub_6D0A4(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) - 56353480;
  v3 = *(a1 + 12) - v1 - 870039588;
  v4 = v2 < 0xF54C249;
  v5 = v2 > v3;
  if (v3 < 0xF54C249 != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_6D180()
{
  v6 = 1082434553 * ((((v5 - 144) | 0x4B6FCB25) - ((v5 - 144) & 0x4B6FCB25)) ^ 0xD0283DAF);
  *(v5 - 120) = v0 - v6 - 957784556 + ((v3 - 1141) | 0x120);
  *(v5 - 116) = (v3 - 843) ^ v6;
  *(v5 - 136) = v2;
  *(v5 - 128) = v4;
  (*(v1 + 8 * (v3 + 1074)))(v5 - 144);
  result = v10;
  *v9 = v8;
  *(v10 + 8) = -1261164275;
  return result;
}

uint64_t sub_6D250@<X0>(int a1@<W8>)
{
  v10 = v5 >= 0x10;
  v8 = ((25 * (a1 ^ 0x630u) - 435) ^ (11 * (a1 ^ 0x6F6u))) & (v4 + 15);
  v9 = -v7 - v4;
  v10 = v10 && (v9 + v1 + v8 + 1) >= 0x10;
  v11 = v10 && (v9 + v2 + v8 + 6) >= 0x10;
  v12 = v9 + v3 + v8 + 3;
  v14 = !v11 || v12 < 0x10;
  return (*(v6 + 8 * ((v14 | (8 * v14)) ^ a1)))(v4);
}

uint64_t sub_6D684@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W8>)
{
  v8 = a3 + v6 - v4;
  v9 = *(v8 - 31);
  v10 = a2 + v6 - v4;
  v11.i64[0] = 0x6464646464646464;
  v11.i64[1] = 0x6464646464646464;
  v12.i64[0] = 0x3232323232323232;
  v12.i64[1] = 0x3232323232323232;
  *(v10 - 15) = vaddq_s8(vsubq_s8(*(v8 - 15), vandq_s8(vaddq_s8(*(v8 - 15), *(v8 - 15)), v11)), v12);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v11)), v12);
  return (*(v7 + 8 * (((v4 == 96) * (((a4 + 366) | v5) ^ a1)) ^ a4)))();
}

uint64_t sub_6D74C@<X0>(char a1@<W1>, char a2@<W7>, uint64_t a3@<X8>)
{
  v6 = STACK[0x518];
  v7 = *(a3 + 72);
  *v6 = v7 ^ 0x4E;
  v6[1] = (BYTE1(v7) ^ 0x51) + ~(2 * ((BYTE1(v7) ^ 0x51) & 0x3A ^ BYTE1(v7) & 8)) + 51;
  v6[2] = (v4 ^ BYTE2(v7)) - (a2 & (2 * (v4 ^ BYTE2(v7)))) + 50;
  v6[3] = (HIBYTE(v7) ^ a1) - 2 * ((HIBYTE(v7) ^ a1) & 0x33 ^ HIBYTE(v7) & 1) + 50;
  return (*(v5 + 8 * ((3046 * (*(a3 + 92) > 4u)) ^ (v3 - 1027))))();
}

uint64_t sub_6D864@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v12 = (v8 ^ 0x23DC7716) == -1;
  v13 = ((2 * (&a3 & 0x4B36CC30) - &a3 - 1261882417) ^ 0xA715DFEF) * a1;
  a6 = v7 - v13;
  a7 = v11 - v13 - 1234;
  a3 = (((v8 ^ 0x23DC7716) + 1) ^ 0xDF69F4FF) - v13 + (((309 * (v11 ^ 0x629) + 885411093) & 0xCB39B2FB ^ 0xBED3EB84) & (2 * ((v8 ^ 0x23DC7716) + 1))) + 1878974302;
  a4 = &a2;
  a5 = v9;
  v14 = (*(v10 + 8 * (v11 + 694)))(&a3);
  v15 = *(v9 + 24) != -1261164275 || v12;
  return (*(v10 + 8 * ((23 * v15) ^ v11)))(v14);
}

uint64_t sub_6D9A4()
{
  v3 = (*(v1 + 8 * (v0 + 1275)))(v2);
  STACK[0x4F8] = STACK[0x260] - 1712;
  LODWORD(STACK[0x52C]) = 1261138649;
  return (*(v1 + 8 * (((STACK[0x3D0] == 0) * (v0 - 152 + ((v0 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v0 - 193))))(v3);
}

void sub_6DA34()
{
  v0 = *(&off_C6C70 + (byte_AC4E8[(byte_B867C[(107 * ((qword_C8B98 + dword_C8BF0) ^ 0xF9)) - 12] ^ 0x3A) - 8] ^ (107 * ((qword_C8B98 + dword_C8BF0) ^ 0xF9))) - 116);
  v1 = *(&off_C6C70 + (byte_B4FF0[byte_B1580[(107 * ((qword_C8B98 - *v0) ^ 0xF9))] ^ 0xFC] ^ (107 * ((qword_C8B98 - *v0) ^ 0xF9))) - 76);
  v2 = *(v1 - 4) - *v0 - &v7;
  v3 = 1010482283 * (v2 + 0x5450BF49BFD4E907);
  v4 = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = 107 * ((v4 + *v0) ^ 0xF9);
  **(&off_C6C70 + (byte_AC1E8[(byte_B847C[v4 - 12] ^ 1) - 8] ^ v4) - 70) = -1261164275;
  LOBYTE(v4) = 107 * ((*(v1 - 4) + *v0) ^ 0xF9);
  v5 = *(&off_C6C70 + ((107 * (dword_C8BF0 ^ 0xF9 ^ qword_C8B98)) ^ byte_B4EF0[byte_B1480[(107 * (dword_C8BF0 ^ 0xF9 ^ qword_C8B98))] ^ 0xBD]) + 66) - 8;
  v6 = (*&v5[8 * (byte_B168C[(byte_AC3E4[v4 - 4] ^ 0xD6) - 12] ^ v4) + 15896])(512, 0x100004077774924);
  *(*(&off_C6C70 + ((107 * ((*(v1 - 4) + *v0) ^ 0xF9)) ^ byte_B4FF0[byte_B1580[(107 * ((*(v1 - 4) + *v0) ^ 0xF9))] ^ 0x1A]) + 66) - 4) = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_6DF08(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = LOBYTE(STACK[0x2A8]);
  if (v13 == 2)
  {
    return (*(v12 + 8 * (((LODWORD(STACK[0x2A4]) != 0) * (a4 + 24)) ^ (a4 + 1217))))(a12);
  }

  if (v13 == 1)
  {
    return (*(v12 + 8 * ((234 * (LODWORD(STACK[0x2A4]) == ((a4 + 340) ^ 0x170))) ^ (a4 + 340))))(a12);
  }

  return sub_6DFD8(a12);
}

uint64_t sub_6DFD8@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 - v1;
  *(v8 + 91) = ((v1 + v3) ^ v4) * (v1 + v3 + 17);
  *(v8 + 90) = ((v1 + v3) ^ 0xBB) * (v1 + v3 + 18);
  return (*(v7 + 8 * (((v1 + a1 == 118) * v6) ^ v2)))();
}

uint64_t sub_6E068(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = *(v8 + 48 * v5 + 36);
  v11 = v9 != a3 && v9 + a4 < ((v4 + 138060) | (v7 + 3593)) + 1475724912;
  return (*(v6 + 8 * ((44 * v11) ^ v4)))();
}

uint64_t sub_6E0D4@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 + ((v3 - 398) | 0x200) - 516;
  *(*(v1 + 8) + 4 * (v5 + v2)) = (v7 + v4) ^ v6;
  *(v1 + 4) = v8;
  v9 = v8 + v2;
  if (v8 + v2 < 0)
  {
    v9 = -v9;
  }

  return (*(a1 + 8 * ((494 * (((v9 ^ 0xEFFFFFDE) + ((v9 << (((v3 + 102) & 0xEF) + 24)) & 0xDFFFFFBC) + 268435489) > ((((v3 - 398) | 0x200) - 820549388) & 0x30E895EF) - 234)) ^ (((v3 - 398) | 0x200) - 820549388) & 0x30E895EFu)))();
}

uint64_t sub_6E428@<X0>(int a1@<W8>)
{
  v6 = 6 * (a1 ^ 0x1A9);
  (*(v1 + 8 * (a1 ^ 0x923)))(*v8, v4);
  *(v5 - 216) = (v3 + v6 + 343) ^ (1564307779 * ((2 * ((v5 - 216) & 0x390604D0) - (v5 - 216) + 1190787885) ^ 0xD1F4373E));
  result = (*(v1 + 8 * (v6 ^ 0x955)))(v5 - 216);
  *(v2 + 32) = v9;
  return result;
}

uint64_t sub_6E50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 != 1 && a42 != 2)
  {
    JUMPOUT(0x6E670);
  }

  return sub_6E668(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_6E740(uint64_t a1)
{
  v2 = STACK[0x4F0];
  v3 = *(STACK[0x4F0] + 96);
  if (v3 == 2)
  {
    return (*(v1 + 8 * (((*(v2 + 92) == 0) * (((STACK[0x340] - 862) | 0x101) ^ 0x137)) ^ (STACK[0x340] + 147))))(a1, 86);
  }

  if (v3 == 1)
  {
    return (*(v1 + 8 * ((31 * (*(v2 + 92) != ((STACK[0x340] + 965) ^ 0x769))) ^ (STACK[0x340] - 62))))(a1, 86);
  }

  v4 = STACK[0x340] - 27;
  STACK[0x508] = 91;
  *(v2 + 91) = (&STACK[0x508] ^ 0xBA) * (&STACK[0x508] + 17);
  return (*(v1 + 8 * (v4 | (16 * (STACK[0x508] != 0)))))(a1, 86);
}

uint64_t sub_6EF38@<X0>(uint64_t a1@<X8>)
{
  v4 = vdupq_n_s32(0x46732821u);
  v5 = (&STACK[0x240] + 4 * a1);
  *v5 = v4;
  v5[1] = v4;
  return (*(v3 + 8 * ((3861 * (((v1 - 671360770) & 0x2804269B ^ 0x482) == (v2 & 0xFFFFFFFFFFFFFFF8))) ^ (v1 + 642))))();
}

uint64_t sub_6EFB8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *(v13 + 8 * a4);
  v18 = LOBYTE(STACK[0x2A8]);
  if (v18 == 2)
  {
    v21 = (v11 + v14 + 385662593);
    v22 = ((*v21 ^ v16) << 24) | ((v21[1] ^ v16) << 16) | ((v21[2] ^ v16) << 8);
    *v12 = (v22 | v21[3] ^ v16) + v15 - 2 * ((v22 | v21[3] ^ v16) & 0x34D4291D ^ (v21[3] ^ v16) & 0x10);
    return (*(v13 + 8 * ((244 * ((v14 + 385662597) < 0x40)) ^ (a1 + 595))))();
  }

  else if (v18 == 1)
  {
    v19 = (v11 + v14 + 385662593);
    v20 = *v19 ^ v16;
    LODWORD(v19) = ((v19[2] ^ (a1 + 22)) << 16) | ((v19[3] ^ v16) << 24) | v20 | ((v19[1] ^ v16) << 8);
    *v12 = v19 + v15 - 2 * (v19 & 0x34D4291D ^ v20 & 0x10);
    return (*(v13 + 8 * ((495 * ((v14 + 385662597) > 0x3F)) ^ (a1 + 212))))(1410334720, (a1 + 259), 1949302784, a1, 385662593, 873474085, a2, a3, a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    return sub_60074(STACK[0x290], a3, v17);
  }
}

uint64_t sub_6F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  *(*(a13 + 96) + 504) = v35 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v38 = 742307843 * ((v37 - 160) ^ 0x1E228D55);
  *(v37 - 160) = -473373664 - v38;
  *(v37 - 140) = 602092488 - v38;
  STACK[0x2C8] = &a26;
  v39 = (*(v36 + 18152))(v37 - 160);
  return (*(v36 + 8 * ((22 * (a15 - 1657355370 + (a35 & 0x3Fu) + 157 < 0xFFFFFFC0)) ^ 0x306u)))(v39);
}

uint64_t sub_6F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (v8 <= v9)
  {
    v8 = v9;
  }

  return (*(v10 + 8 * (((v8 <= 106 * (a6 ^ 0x2F3u) + a8) * ((a6 + 1215209860) & 0xB7915FA6 ^ 0x423)) ^ a6)))(a1, a2, a3, 0);
}

uint64_t sub_6F528@<X0>(char a1@<W3>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5)
{
  v8 = (a5 + a2);
  v9 = vaddq_s8(vaddq_s8(v7[1], a4), vmvnq_s8(vandq_s8(vaddq_s8(v7[1], v7[1]), a3)));
  v8[-1] = vaddq_s8(vaddq_s8(*v7, a4), vmvnq_s8(vandq_s8(vaddq_s8(*v7, *v7), a3)));
  *v8 = v9;
  return (*(v6 + 8 * ((((a1 & 0x60) == 32) * (((v5 - 353) | 0x18) ^ 0x81)) ^ v5)))();
}

uint64_t sub_6F658()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_6F680@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10.val[0].i64[0] = (v5 - v6 - 1) & 0xF;
  v10.val[0].i64[1] = (v5 - v6 + 14) & 0xF;
  v10.val[1].i64[0] = (v5 - v6 + 13) & 0xF;
  v10.val[1].i64[1] = (v5 - v6 + 12) & 0xF;
  v10.val[2].i64[0] = (v5 - v6 + 11) & 0xF;
  v10.val[2].i64[1] = (v5 - v6 + 10) & 0xF;
  v10.val[3].i64[0] = (v5 - v6 + (((a1 - 83) | 2) ^ 0xAA)) & 0xF;
  v10.val[3].i64[1] = (v5 - v6) & 0xF ^ 8;
  *(v7 + -8 - v6 + v5) = veor_s8(veor_s8(veor_s8(*(v4 + v10.val[0].i64[0] - 7), *(a2 + -8 - v6 + v5)), veor_s8(*(v2 + v10.val[0].i64[0] - 7), *(v3 + v10.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_A91E0), 0x7575757575757575)));
  return (*(v8 + 8 * ((82 * (8 - (v5 & 0x18) == -v6)) ^ a1)))(xmmword_A91E0);
}

uint64_t sub_6F908(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = -18;
  }

  else
  {
    v2 = -20;
  }

  *(a1 + 88) = ((**(a2 + 8) != 0) ^ 0x7F) + v2;
  return 0;
}

uint64_t sub_6F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(a12 + 16) = -v17;
  v23 = 2066391179 * ((v22 - 407170079 - 2 * ((v22 - 136) & 0xE7BB1469)) ^ 0x489C9671);
  *(v22 - 136) = v21;
  *(v22 - 128) = v23 + v20 + 1468;
  *(v22 - 124) = v23 + 1068377366;
  (*(v19 + 8 * (v20 + 1871)))(v22 - 136);
  v24 = 1785193651 * ((v22 - 136) ^ 0x13DCEC20);
  *(v22 - 128) = v20 - v24 + 764;
  *(v22 - 124) = ((v18 << 6) & 0xFF3B16C0) - v24 + ((32 * v18) ^ 0xFF9D8B74) + 1862237852;
  *(v22 - 136) = v21;
  (*(v19 + 8 * (v20 ^ 0x967)))(v22 - 136);
  *(v22 - 136) = &a17;
  *(v22 - 128) = a16;
  *(v22 - 120) = (v20 + 1362) ^ (1564307779 * (((v22 - 136) & 0xAFD64741 | ~((v22 - 136) | 0xAFD64741)) ^ 0xC72474AD));
  (*(v19 + 8 * (v20 ^ 0x93F)))(v22 - 136);
  *(v22 - 120) = v21;
  *(v22 - 136) = a16;
  *(v22 - 128) = v20 - 143681137 * ((v22 - 136) ^ 0xD4A71C5A) + 867;
  v25 = (*(v19 + 8 * (v20 + 1811)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 112) > 0x43A7A85Fu) * (((v20 - 86) ^ 0x47F) - 1261)) ^ v20)))(v25);
}

uint64_t sub_6FB94()
{
  v0.n128_u64[0] = 0x3232323232323232;
  v0.n128_u64[1] = 0x3232323232323232;
  v1.n128_u64[0] = 0x6464646464646464;
  v1.n128_u64[1] = 0x6464646464646464;
  return sub_7E3B0(vdupq_n_s32(0x34D4291Du), v0, vdupq_n_s32(0xB4D4290D), v1);
}

void sub_6FE50(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 563552686;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_6FF1C(_DWORD *a1)
{
  v2 = 843532609 * ((((2 * a1) | 0x7C0848CA) - a1 + 1107024795) ^ 0xE24970E0);
  v3 = a1[10] ^ v2;
  v4 = a1[11] ^ v2;
  v9 = v3 + 1037613739 * ((&v9 & 0xCF13DD99 | ~(&v9 | 0xCF13DD99)) ^ 0xE1EE0F19) + 1084731835;
  v5 = *(&off_C6C70 + (v3 ^ 0x76625E83)) - 8;
  result = (*&v5[8 * (v3 ^ 0x76625615)])(&v9);
  if (v4 > 1615399632)
  {
    if (v4 == 1900612304)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1615399633)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = (*&v5[8 * v3 - 0x3B312B268])(((v3 + 1243828026) & 0x3F7A536Fu) - 1657355514 + *(*(&off_C6C70 + (v3 ^ 0x76625EC2)) + 6 * v7 + 4), 0x100004077774924) != 0;
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1615399629)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1615399632)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[12] = 1261138609;
  return result;
}

uint64_t sub_701B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = &a17;
  *(v21 - 136) = a16;
  *(v21 - 128) = v17 - ((2 * (((v21 - 136) ^ 0x21DDEFBE) & 0x5AC9821C) - ((v21 - 136) ^ 0x21DDEFBE) - 1523155486) ^ 0x504C8E06) * v20 + 1094;
  v22 = (*(v19 + 8 * (v17 + 2038)))(v21 - 136);
  return (*(v19 + 8 * ((476 * (*(v21 - 112) > (v17 ^ 0x16D ^ (v18 + 361)))) ^ v17)))(v22);
}

uint64_t sub_702C0@<X0>(int a1@<W8>)
{
  v7 = v2 + 16;
  v8 = (v2 - 1278442705) & 0x4C337FF4;
  v9 = STACK[0x4E0];
  *(v9 + 392) = v1;
  *(v9 + 396) = STACK[0x374];
  *(v9 + 400) = STACK[0x510];
  *(v9 + 408) = 1368544279 - v4 + LODWORD(STACK[0x524]);
  *(v9 + 416) = v6 + ((v2 - 1445166827) & 0x56237EEA ^ 0xED4F5A6E) + v4;
  v10 = (*(v3 + 48 * a1 + 8))(STACK[0x2C8], v9 + 392);
  return (*(v5 + 8 * ((1156 * (v8 - 1261164275 + v10 - ((2 * v10) & 0x69A8521A) == -1261163343)) ^ v7)))();
}

uint64_t sub_70828(uint64_t a1, int a2, int a3)
{
  v6 = ((2 * a3) ^ 0xB4F1E46A) + v3;
  v7 = a2 + v5 > ((a3 + 1844976559) & 0x9207DD79) + 131958799;
  if (v7 == v6 < 0xF82276B7)
  {
    v7 = a2 + v5 - 131959113 > v6;
  }

  return (*(v4 + 8 * ((84 * !v7) ^ a3)))();
}

uint64_t sub_7095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43, uint64_t a44, int a45, char a46)
{
  v51 = *v49;
  memset((v50 - 192), 50, 16);
  v52 = 1037613739 * (((v50 - 176) & 0xC9E43C28 | ~((v50 - 176) | 0xC9E43C28)) ^ 0xE719EEA8);
  *(v50 - 160) = v51;
  *(v50 - 152) = &a46;
  *(v50 - 176) = v52 + 577928687;
  *(v50 - 136) = &a43;
  *(v50 - 144) = (v46 + 1588) ^ v52;
  *(v50 - 168) = v50 - 192;
  v53 = (*(v47 + 8 * (v46 ^ 0x899)))(v50 - 176);
  return (*(v47 + 8 * ((1830 * (*(v50 - 140) == v48 + ((v46 + 754640457) & 0x13051BCF) - 588)) ^ v46)))(v53);
}

uint64_t sub_70A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x52C]) = v6;
  STACK[0x4F8] = STACK[0x278];
  LODWORD(STACK[0x504]) = v6;
  return sub_97CC8(a1, a2, a3, a4, 1261138644, a6);
}

uint64_t sub_70B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35, uint64_t a36, uint64_t a37, int a38)
{
  v42 = a8 ^ 0x1DA;
  v43 = __ROR8__((((a6 >> (((a8 ^ 0xDA) - 64) & 0xF7 ^ 0xD3u)) ^ 0xD51CC9FD8FEE033DLL) & ((a6 << 27) ^ 0x5C7938C7F7FFFFFFLL) | (((a8 ^ 0x1DAu) + 125886912) ^ 0x2AE336027780E44CLL) & (a6 << 27)) ^ 0x75B8793A887A889ELL, 27);
  v44 = v43 ^ v38 ^ 0xFC24DE1AF118E910;
  v45 = a2 ^ a36 ^ v41;
  v46 = (v44 & 0xE370D22389E963F8 ^ (v43 ^ v40 ^ 0xBE1809339C11E6CBLL) & (v43 ^ v38 ^ 0x9DB354A2D1EB9C7DLL) ^ 0x9EEF7DDFFF1E9E97) - (v43 ^ v40 ^ 0x3CFF51A8350BF05ELL ^ v44);
  v47 = (v43 ^ v40 ^ 0xE05D1F65A59055A1) & (a2 ^ a36 ^ 0xA018715D8E86E82FLL);
  v48 = (a2 ^ a36) & 0xBD35C475B068D092;
  v49 = v45 & 0xE395E631ECE3821ELL ^ (v45 ^ 0xC28210BF701425CBLL) & (a2 ^ a36 ^ 0xBC7268939D9A95CELL) ^ 0x53CB19A0E1104E6DLL ^ v43 ^ v40;
  v50 = v43 & 0x250DA82BBCFED4D6 ^ v45 ^ (v43 ^ 0x282C5FE8B6EFD3A2) & (v38 ^ 0x6F6D5C9E240564F6);
  v51 = v49 ^ a2 ^ a36;
  v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
  v53 = v44 ^ v48 ^ v47;
  v54 = (v45 ^ 0x3D7DEF408FEBDA34) & (v38 ^ 0x5830F6FEB2631256) ^ v45 & 0xEDAFFDB4D5675D89;
  v55 = v53 ^ v49;
  v56 = v53 ^ v49 ^ 0x79D8A72CA7000810;
  v57 = v51 & 1;
  if ((v57 & v54) + 0x1B15E1F1D6857FA7 - 2 * (v57 & v54) != 0x1B15E1F1D6857FA7)
  {
    v57 = -v57;
  }

  v58 = (v57 + (v54 ^ 0x2D2DED0085635800)) ^ v52;
  v59 = (v58 ^ 0x5E2CE3858ED8BD4DLL ^ (8 * (v58 ^ 0x5E2CE3858ED8BD4DLL))) & 0x809545084A0D0A1ALL ^ (v58 >> 39) ^ (v58 ^ 0x5E2CE3858ED8BD4DLL ^ (8 * (v58 ^ 0x5E2CE3858ED8BD4DLL)) ^ 0x20A12F204B23163) & ((v58 >> 61) ^ 0x7F6ABAF7B5F2F5E5) ^ (((v58 ^ 1) & (v58 >> 61) ^ 0x603B8202C80A8B91) & (((v58 ^ 0x5E2CE3858ED8BD4DLL) << 25) ^ 0x5E3975D510DF9F97) | ((v58 ^ 0x5E2CE3858ED8BD4DLL) << 25) & 0x9FC47DFD36000000);
  v60 = v50 ^ 0xE3DD6ACC6D6A5BEBLL ^ (v50 >> 1) ^ (((v50 >> 6) ^ 0x727DC59BA3549D42) & 0x71FC6A90E5FD3DFBLL ^ (((v50 ^ 0xE3DD6ACC6D6A5BEBLL) << 63) | 0x402800804D0DA9) | ((v50 >> 6) ^ 0x727DC59BA3549D42) & 0x203956F1A02C204) ^ ((v59 ^ 0x8A1178A505C68904) + ((v50 << 58) ^ 0x2800000000000000) - 2 * ((v59 ^ 0x8A1178A505C68904) & ((v50 << 58) ^ 0x2800000000000000)));
  v61 = v53 ^ 0xC630E1018CD70509 ^ (v53 >> 7);
  v62 = ((v50 ^ v38 ^ v46) >> 17) ^ ((v50 ^ v38 ^ v46) >> 10) ^ v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48 ^ ((v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48) << 47) ^ ((v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48) << 54);
  *(&v63 + 1) = ~v61;
  *&v63 = v61;
  v64 = ((v53 ^ 0xC630E1018CD70509) << 57) ^ ((v53 ^ 0xC630E1018CD70509) << 23) ^ __ROR8__(__ROR8__(v53, 44) & 0xE0000000000FFFFFLL ^ 0x77AC5EA2FF32C9D4 ^ (v63 >> 3), 61);
  *(&v63 + 1) = v56;
  *&v63 = v55;
  v65 = v56 ^ __ROR8__(v56, 19) ^ (v63 >> 28) ^ v64;
  v66 = v65 ^ 0xC54D8C9E0EDE4C24;
  v67 = v62 ^ 0xCD29F13A99BFB785 ^ v64;
  v68 = (v67 ^ 0xB0F28FB6696C11EDLL) & (v65 ^ 0xC54D8C9E0EDE4C24);
  v69 = v65 & 0xA3913D86965B49F1;
  v70 = (v60 ^ 0xA7BF4AC0C014BDE0) & (v62 ^ 0x4A90D2F7C04E1159);
  v71 = v60 & 0x439ADF6CA31E1892;
  v72 = (v59 ^ 0x8A1178A505C68904) & (~(2 * v66) + v66);
  v73 = v59 & 0x5B8C5E6928BBBA65 ^ v66 ^ (v60 ^ 0x3CCEB561750F87ALL) & (v59 ^ 0x75EE875AFA3976FBLL);
  v74 = (__ROR8__(__ROR8__(v62 ^ 0xCD29F13A99BFB785, 62) ^ 0x8AB89576054BF462, 2) ^ 0xA90458F574653BD6) & (v67 ^ 0xEC9C4DCF00C8A7E3) ^ v67 & 0x30767EF6F027877FLL ^ v60;
  v75 = ((v73 & 0xE0096EE0D8B2C64DLL ^ 0xE9ED0047F43C3665) & (v73 & 0x1FF6911F274D39B2 ^ 0xEA69FEF7DDB6CECDLL) | v73 & 0x1612911803410992) ^ 0xF528C1664501489DLL;
  if ((v72 & 0x100000000 & (v67 ^ 0xEC9C4DCF00C8A7E3)) != 0)
  {
    v76 = -(v72 & 0x100000000);
  }

  else
  {
    v76 = v72 & 0x100000000;
  }

  v77 = (v76 + (v67 ^ 0xEC9C4DCF00C8A7E3)) ^ v72 & 0xFFFFFFFEFFFFFFFFLL;
  v78 = v71 ^ v59 ^ 0x8A1178A505C68904 ^ v70 ^ v75;
  v79 = v78 ^ 0x452028502E95DD85;
  v80 = v75 ^ v77;
  v81 = v80 ^ 0xE0B1C89DB829195ALL;
  v82 = v62 ^ 0xCD29F13A99BFB785 ^ v69 ^ v68 ^ v74;
  v83 = (v80 & 0x8000) == 0;
  v84 = 0x8000;
  if (!v83)
  {
    v84 = -32768;
  }

  v85 = v84 + v81;
  *(&v86 + 1) = v78 ^ 0x18104C7FDE4DCAEFLL;
  *&v86 = v78;
  v87 = (v86 >> 61) - ((2 * (v86 >> 61)) & 0x23FE4DA55827B64CLL);
  *(&v86 + 1) = v82 ^ 0x3A4;
  *&v86 = v82 ^ 0x3FF9AC451E16E000;
  v88 = (v86 >> 10) - ((2 * (v86 >> 10)) & 0x4E0B133AE1A9BE5ELL);
  *(&v86 + 1) = v78 ^ 0x452028502E95DD85;
  *&v86 = v78;
  v89 = (v86 >> 39) ^ 0xCE1E96FC7823FBBELL ^ (v87 - 0x6E00D92D53EC24DALL);
  v90 = (v89 - ((2 * v89) & 0xBA60C85FE1B02ED4) + 0x5D30642FF0D8176ALL) ^ v79;
  *(&v86 + 1) = v82 ^ 0xE0CF29C5A240019;
  *&v86 = v82;
  v91 = (((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17) ^ 0xD6DB1661A6F65024) + 0x31F55ED94432E3BDLL - 2 * (((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17) ^ 0xD6DB1661A6F65024) & 0x31F55ED94432E3BFLL ^ ((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17)) & 2)) ^ v82 ^ 0xE0CF29C5A240019;
  v92 = v77 ^ 0x9A383CF881807545 ^ ((v77 ^ 0x9A383CF881807545) >> 7) ^ (((v77 ^ 0x9A383CF881807545) >> 41) | ((v77 ^ 0x9A383CF881807545) << 57)) ^ ((v77 ^ 0x9A383CF881807545) << ((v74 >> 1) & 0x17 ^ 3) << ((v74 >> 1) & 0x17 ^ 0x14));
  v93 = ((v74 & 0x9B6535C14F352826 ^ (v74 << 63) ^ 0xC7C183457EA140F5) & (v74 & 0x649ACA3EB0CAD7D9 ^ 0xDBFF35E3EF356DB7) | v74 & 0x201A483A804A9708) ^ __ROR8__(v74, 6) ^ 0xCD31DCC01C6AEAE6 ^ v90;
  v94 = (v93 - ((2 * v93) & 0x925BB517DB382142) + 0x492DDA8BED9C10A1) ^ (v74 >> 1);
  v95 = v81 ^ v92 ^ (v81 >> 19) ^ (v85 >> 28) ^ ((v85 ^ 0x8000) << 36) ^ ((v85 ^ 0x8000) << 45);
  v96 = v91 ^ v92;
  v97 = v96 - ((2 * v96) & 0x4BCF7563A6B4D67ELL);
  v98 = v94 ^ 0x43180866D8636D02 ^ v92 & ~v91;
  v99 = (v94 ^ 0x43180866D8636D02) & ~v90 ^ v95;
  v100 = v90 & ~v95 ^ v96;
  v101 = v100 ^ 0x6E04C15915AB860ALL ^ v99;
  *(&v86 + 1) = (v101 >> 19) & v101 & 0x1A36E0206AEDLL ^ (v101 >> 28) ^ (((v101 >> 19) | v101) & 0xD8807A36E0206AEDLL | (v101 >> 19) & 0x5C91FDF9512 ^ v101 & 0x277F85C91FDF9512);
  *&v86 = (v101 << 36) ^ (v101 << 45) ^ *(&v86 + 1);
  v102 = (v90 - 2 * (v90 & v95) + v99) ^ (v94 ^ 0xBCE7F799279C92FDLL) & v91;
  v103 = v95 & ((v97 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ v91 ^ v98 ^ 0x7370AC685030CB36;
  v104 = (v102 >> 39) ^ (v102 >> 61) ^ (8 * (v102 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v102 ^ 0x3278F838FE43D2BCLL) - (((v102 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v102 ^ 0x3278F838FE43D2BCLL))));
  v105 = v104 ^ 0x64F1F1;
  v106 = v100 ^ 0x26974B18501E2B14 ^ ((v100 ^ 0x26974B18501E2B14) >> 41) ^ ((v100 ^ 0x26974B18501E2B14) >> 7) ^ ((v100 ^ 0x26974B18501E2B14) << 23) ^ ((v100 ^ 0x26974B18501E2B14) << 57);
  v107 = v98 ^ 0x7955EAEC4D48B80CLL ^ (v98 << 63) ^ __ROR8__(v98 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v98 ^ 0x7955EAEC4D48B80CuLL) >> ((v61 & 8) == 0) >> ((v61 & 8) != 0));
  v108 = v104 ^ 0x64F1F1 ^ v107;
  v109 = (v103 >> 17) ^ __ROR8__(v103, 10) ^ __ROR8__(__ROR8__(v103, 14) & 0xFFFC000000000007 ^ __ROR8__(v103, 61), 3);
  v110 = v109 ^ v106;
  *&v86 = __ROR8__(__ROR8__(v106, 7) ^ __ROR8__(__ROR8__(v86 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v111 = v106 & ~v109 ^ v108;
  v112 = v86 ^ 0xBBDB0FB7A00B9120 ^ (v104 ^ 0xFFFFFFFFFF9B0E0ELL) & v107;
  v113 = v104 ^ (((v108 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v108 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v109 ^ 0x425764BB58132BD4 ^ v112;
  v114 = (v86 ^ 0x4424F0485FF46EDFLL) & v105 ^ v110;
  v115 = (v114 ^ -v114 ^ (0x70C7A8D3F3643DFDLL - (v114 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v116 = v111 ^ 0xD3DA1E3360BF843ALL ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v117 = v109 ^ 0x44C9D571A5C4A51CLL ^ v111 ^ (v86 ^ 0xBBDB0FB7A00B9120) & ~v110;
  v119 = __ROR8__(__ROR8__(v113, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v113 ^ (8 * v113) ^ ((v113 >> 61) | (v113 << 25)), 23) ^ 0x735302FC48340548, 41);
  v120 = (v115 >> 7) ^ (v115 >> 41) ^ (v115 << 23) ^ (v115 << 57);
  v121 = v120 ^ v115;
  v122 = v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114 ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) >> 28) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) >> 19) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) << 36) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) << 45) ^ v120 ^ v115;
  v123 = v116 & 0xFFFFFFF7FFFFFFFFLL ^ (v111 << 63) ^ (v116 & 0x800000000 | ((v111 ^ 0xD3DA1E3360BF843ALL) << ((v101 >> 19) & 0x12) << ((v101 >> 19) & 0x12 ^ 0x3A))) ^ v119;
  if (v120 == v115)
  {
    v124 = 0;
  }

  else
  {
    v124 = v117 << 47;
  }

  v125 = v119 ^ 0x7E241A02A439A981;
  v118 = (v117 ^ (v117 >> 10) | (v117 << 54)) ^ (v117 << 54) & v117;
  v126 = (v124 ^ v118 | (v117 << 47)) ^ (v118 & (v117 << 47) & 0xFFFF800000000000 | (v117 >> 17));
  v127 = v123 ^ 0x7E241A02A439A981;
  v128 = v126 & (v123 ^ 0x81DBE5FD5BC6567ELL);
  v129 = v126 ^ v121 ^ v125 & ~v122;
  v130 = v122 ^ (~(2 * v125) + v125) & (v123 ^ 0x7E241A02A439A981);
  v131 = v129 ^ v130;
  v132 = v129 ^ v130 ^ 0x93C23431B76D41FLL;
  *(&v133 + 1) = v132;
  *&v133 = v129 ^ v130;
  v134 = v125 ^ 0x6005BE354A5BB0B2 ^ v130;
  v135 = v122 & ~(v126 ^ v121) ^ v126 ^ v121 & ~v126 ^ v127;
  v136 = (v133 >> 62) ^ (4 * (v132 >> 28)) ^ 0x406FF36C296024B3;
  *(&v133 + 1) = v132;
  *&v133 = v131;
  v137 = ((v133 >> 19) ^ __ROR8__(v136, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v138 = v129 ^ 0x2DB5B6AF87F64351 ^ ((v129 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v129 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v129 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v129 ^ 0x2DB5B6AF87F64351) >> 41);
  v139 = (((v134 ^ v128) << (v121 & 3) << (v121 & 3 ^ 3)) ^ v134 ^ v128 ^ (((v134 ^ v128) >> 39) ^ ((v134 ^ v128) >> 61) | ((v134 ^ v128) << 25))) & ~(v138 ^ (v132 << 36) ^ (((2 * v137) & 0xFFFFFFFF18D20D4ALL) + (v137 ^ 0xFFFFFFFF8C6906A5))) ^ __ROR8__(v135 ^ 0xF374A001D380BDC2, 17) ^ ((v135 ^ 0xF374A001D380BDC2) >> 10) ^ (((v135 ^ 0xF374A001D380BDC2) << 54) | (v135 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v135 ^ 0xF374A001D380BDC2) << 54) & (v135 ^ 0xF374A001D380BDC2) | v135 & 0x20) ^ v138;
  return (*(v39 + 8 * (v42 ^ (a35 > 2 * (a38 & 1) + (a38 ^ 1u)))))(v139 ^ __ROR8__(v139 ^ 0x3096EC2D0511544CLL, 7) ^ ((v139 ^ 0x3096EC2D0511544CLL) << 23) ^ ((v139 ^ 0x3096EC2D0511544CLL) >> 41));
}

uint64_t sub_71C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39)
{
  v39 = *(a1 + 36) ^ (742307843 * ((~a1 & 0x6EE94400 | a1 & 0x9116BBFF) ^ 0x70CBC955));
  v40 = 742307843 * (((&v48 | 0x7C782FF7) - (&v48 & 0x7C782FF7)) ^ 0x625AA2A2);
  v48 = v39 - v40 - 473373702;
  v49 = v47;
  v50 = 602092488 - v40;
  v41 = (*(*(&off_C6C70 + v39 + 33) + (v39 ^ 0x8FB) - 1))(&v48);
  return sub_7C62C(v41, v47, v42, 100, v43, v44, v45, v39, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

void sub_71EE8(int a1@<W8>, int a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53)
{
  v59 = *(v57 + 8 * (a1 - 1255));
  v60 = *v59;
  v61 = *(v57 + 8 * (a1 ^ 0x552));
  v62 = *v61;
  a4 = **v61 - 15;
  a5 = v62[1] - 15;
  a6 = v62[2] - 15;
  a7 = v62[3] - 15;
  a8 = v62[4] - 15;
  a9 = v62[5] - 15;
  a10 = v62[6] - 15;
  a11 = v62[7] - 15;
  a12 = v62[8] - 15;
  a13 = v62[9] - 15;
  a14 = v62[10] - 15;
  a15 = v62[11] - 15;
  a16 = v62[12] - 15;
  a17 = v62[13] - 15;
  a18 = v62[14] - 15;
  a19 = v62[15] - 15;
  a20 = v62[16] - 15;
  a21 = v62[17] - 15;
  a22 = v62[18] - 15;
  a23 = v62[19] - 15;
  v63 = *v61;
  a24 = v63[20] - 15;
  a25 = v63[21] - 15;
  a26 = v63[22] - 15;
  a27 = v63[23] - 15;
  a28 = v63[24] - 15;
  a29 = v63[25] - 15;
  a30 = v63[26] - 15;
  a31 = v63[27] - 15;
  a32 = v63[28] - 15;
  a33 = v63[29] - 15;
  v64 = (*(v55 + 8 * (a1 ^ 0xC7D)))(v60, &a4, v53);
  if (v64 == 1102)
  {
    v65 = *v59;
    v66 = *(v57 + 8 * (v56 ^ 0x50B));
    v67 = *(v66 - 4);
    a34 = 9 * *v67 + 97;
    a35 = 9 * v67[1] + (v56 ^ 0x1C);
    a36 = 9 * v67[2] + 97;
    a37 = 9 * v67[3] + 97;
    a38 = 9 * v67[4] + 97;
    a39 = 9 * v67[5] + 97;
    a40 = 9 * v67[6] + 97;
    a41 = 9 * v67[7] + 97;
    a42 = 9 * v67[8] + 97;
    a43 = 9 * v67[9] + 97;
    a44 = 9 * v67[10] + 97;
    a45 = 9 * v67[11] + 97;
    a46 = 9 * v67[12] + 97;
    a47 = 9 * v67[13] + 97;
    a48 = 9 * v67[14] + 97;
    a49 = 9 * v67[15] + 97;
    a50 = 9 * v67[16] + 97;
    v68 = *(v66 - 4);
    a51 = 9 * v68[17] + 97;
    a52 = 9 * v68[18] + 97;
    a53 = 9 * v68[19] + 97;
    v69 = (*(v55 + 8 * (v56 + 899)))(v65, &a34, v53);
    (*(v55 + 8 * ((102 * (v69 != 0)) ^ (v56 - 968))))(v69, v70, v71, v72, v73, v74, v75);
  }

  else
  {
    if (v64)
    {
      JUMPOUT(0x777F0);
    }

    *(v58 + 352) |= ((v56 - 1386) | 0x1C0) - 457;
    *(v58 + 52) = 1470670864;
    (*(v55 + 8 * (v56 ^ 0xDC5)))(*v53, v58 + 340, v58 + 344, v58 + 348, v54);
    sub_777B0();
  }
}

void sub_72318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v9 + 8);
  v12 = (*(v11 + 4 * (v10 - 1)) ^ v5) >> v7;
  *(v11 + 4 * v8) = v12 + v5 - ((v12 << ((6 * (a5 ^ 0x40)) ^ 0x5D)) & v6);
  JUMPOUT(0x7238CLL);
}

uint64_t sub_723DC@<X0>(int a1@<W1>, unsigned int a2@<W7>, unsigned int a3@<W8>)
{
  v13 = (v11 + 4 * v6);
  v14 = HIDWORD(v7) + a2 * (*(v5 + 4 * v6) ^ a3) + (*v13 ^ (a3 + v9 + 1020 - 1689)) + HIDWORD(v3) + v10 * (*(v12 + 4 * v6) ^ a3);
  *(v13 - 1) = v14 + a3 - (a1 & (2 * v14));
  return (*(v8 + 8 * (((4 * (v6 + 1 != v4)) | (32 * (v6 + 1 != v4))) ^ v9)))();
}

uint64_t sub_72630(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = 1785193651 * ((2 * ((v30 - 128) & 0x61346E78) - (v30 - 128) + 516657541) ^ 0xD177DA5);
  *(v30 - 112) = a12 - v32 + (((a1 ^ 0x25) - v31 - 1367814192) ^ (257 * (a1 ^ 0x25)));
  *(v30 - 128) = (a1 + 1505) ^ v32;
  *(v30 - 120) = &a20;
  v33 = (*(v29 + 8 * (a1 ^ 0x8F6)))(v30 - 128);
  v34 = a29 & 0x3F;
  *(&a20 + v34) = -78;
  return (*(v29 + 8 * ((78 * (v34 > 0x37)) ^ a1)))(v33);
}

uint64_t sub_727AC()
{
  v3 = v0 + 182;
  v4 = (v1 & 2) != ((v3 - 38) ^ 0x1DE) - 213;
  return (*(v2 + 8 * ((2 * v4) | (4 * v4) | v3)))();
}

uint64_t sub_72820@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3F0] = -v1;
  v2 = STACK[0x488];
  v3 = a1 - 112;
  STACK[0x260] = v3;
  STACK[0x4F8] = v3;
  return v2();
}

uint64_t sub_7290C@<X0>(int a1@<W8>)
{
  v7 = v6 + v4;
  v8 = (v4 + ((a1 + 60) | 5) - 88) & 0xF;
  v9 = v8 + 1 - v4;
  v10 = v1 + v9;
  v11 = v1 + v8 + 1;
  v12 = v2 + v9;
  v13 = v2 + v8 + 1;
  v14 = v8 + v3 + 2;
  v16 = v11 > v6 && v10 < v7;
  v18 = v13 > v6 && v12 < v7 || v16;
  if (v14 <= v6 || v14 - v4 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 8 * (a1 ^ (16 * v20))))();
}

uint64_t sub_72988@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = (v8 - 1);
  *(a4 + v11) = *(a5 + v11) ^ ((v11 & 0xF) * a2) ^ *(v7 + (v11 & 0xF)) ^ *((v11 & 0xF) + a6 + 5) ^ (v9 + 20) ^ *((v11 & 0xF) + v6 + 1);
  return (*(v10 + 8 * (((v11 == ((6 * ((v9 + 902) ^ a3)) ^ 0x1E)) * a1) ^ (v9 + 494))))();
}

uint64_t sub_72B58@<X0>(int a1@<W8>)
{
  v6 = v1 + 1321;
  v7 = v1 + 1321 - v5 + 1726765185;
  if (v4 > v7)
  {
    v7 = v4;
  }

  *(*(v2 + 8) + 4 * (((v6 - 151034828) & 0x90097EE ^ 0xFFFFFB93) + v7 + a1)) = *(*(v2 + 8) + 4 * (((v6 - 151034828) & 0x90097EE ^ 0xFFFFFFFFFFFFFB93) + v7));
  return (*(v3 + 8 * ((205 * (v7 > 1)) ^ v6)))();
}

uint64_t sub_72C5C@<X0>(unsigned int a1@<W3>, unsigned int a2@<W4>, unint64_t a3@<X5>, _DWORD *a4@<X7>, uint64_t a5@<X8>)
{
  v13 = (a4[1] ^ v5) + (v8 ^ HIDWORD(a3)) + a2 * (*(*(v9 + 8) + 4) ^ v5);
  *a4 = (v13 + ((a1 - 23) ^ v6) - ((v7 + 1207) & (2 * v13))) ^ v11;
  return (*(v10 + 8 * (((a5 == 2) * v12) ^ a1)))();
}

uint64_t sub_72CC8()
{
  v7 = ((((v6 - 144) | 0x3B300661) + (~(v6 - 144) | 0xC4CFF99E)) ^ 0x94178478) * v3;
  *(v6 - 128) = (((2 * (v4 - 996129833)) & 0xED74B5FC) - 276971606 + ((v4 - 996129833) ^ 0x76BA5833 ^ (v1 - 1201))) ^ v7;
  *(v6 - 136) = v5;
  *(v6 - 144) = v7 + v1 - 1441;
  v8 = (*(v0 + 8 * (v1 + 275)))(v6 - 144);
  return (*(v0 + 8 * ((((v1 ^ (*(v6 - 140) == v2)) & 1) == 0) | v1)))(v8);
}

uint64_t sub_72D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x53C]) = STACK[0x374];
  STACK[0x3A0] = STACK[0x510];
  LODWORD(STACK[0x524]) = 313566482;
  return sub_6FDE4(a6, -1261164275);
}

uint64_t sub_72DBC()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_72DE4()
{
  v2 = v0 - 449;
  v3 = (*(v1 + 8 * ((v0 - 449) ^ 0x8C8)))(1576, 0x105004009637391);
  STACK[0x3C0] = v3;
  return (*(v1 + 8 * ((73 * (((v3 == 0) ^ (v2 + 38)) & 1)) ^ v2)))();
}

uint64_t sub_72F44()
{
  v4 = (*(v1 + 8 * (v0 ^ 0xB3B)))();
  LODWORD(STACK[0x52C]) = v2;
  return (*(v1 + 8 * ((((v0 ^ 0xBF4) - 2113) * v3) ^ (v0 - 317))))(v4);
}

uint64_t sub_72F98()
{
  v4 = v3[1];
  v5 = v3[398] ^ v0 ^ ((v3[2] & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ *(&STACK[0x1898] + (v3[2] & 1));
  *v3 = v3[397] ^ v0 ^ ((v4 & 0x7FFFFFFE | *v3 & 0x80000000) >> 1) ^ *(&STACK[0x1898] + (v4 & 1));
  v3[1] = v5;
  return (*(v1 + 8 * (((v2 - 408) | 0x10) ^ 0x21)))(&STACK[0x1898], 1948, 289, 1120, 159);
}

uint64_t sub_72FA0()
{
  *(v2 - 208) = &STACK[0x46C];
  *(v2 - 200) = &STACK[0x558];
  *(v2 - 212) = v1 - 143681137 * ((((v2 - 216) | 0x894AE35) - (v2 - 216) + ((v2 - 216) & 0xF76B51C8)) ^ 0xDC33B26F) - 362;
  *(v2 - 216) = (113 * ((((v2 + 40) | 0x35) - (v2 + 40) + ((v2 + 40) & 0xC8)) ^ 0x6F)) ^ 0x34;
  v3 = (*(v0 + 8 * (v1 + 476)))(v2 - 216);
  v4 = *(v2 - 192);
  LODWORD(STACK[0x504]) = v4;
  return (*(v0 + 8 * ((357 * (v4 == (((v1 ^ 0x729) + 1095) ^ 0xB4D42F18))) ^ v1)))(v3);
}

uint64_t sub_73098@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char *a10, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v23 = 1785193651 * ((1722119212 - ((v22 - 144) | 0x66A5742C) + ((v22 - 144) | 0x995A8BD3)) ^ 0x8A8667F3);
  *(v22 - 144) = v21;
  *(v22 - 136) = v23 + a1 + 310;
  *(v22 - 132) = v19 + v23 - 986202239 + a1 + 787;
  *(v22 - 128) = &a17;
  v24 = (*(v20 + 8 * (a1 + 1343)))(v22 - 144);
  return sub_8D500(v24, v25, v26, v27, v28, v29, v30, v31, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_73158(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v11 = *(v9 + 48 * v6 + 36);
  v13 = v11 != a3 && v11 + a4 < v10;
  return (*(v7 + 8 * ((v13 * (v8 + ((v4 + 1100) ^ (v5 + 1533)) + 105)) ^ v4)))();
}

void sub_7319C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = v6 - 97;
  a4 = v5;
  a5 = (v6 - 114) ^ (1564307779 * (&a3 ^ 0x970DCC13));
  (*(a1 + 8 * ((v6 - 97) ^ 0xF9C)))(&a3);
  *(v7 + 4) = (v8 ^ 0xCDD8C69F) - *(v7 + 4);
  JUMPOUT(0x61650);
}

void sub_7342C(uint64_t a1)
{
  v1 = *(a1 + 24) + 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_73588@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = v3 - 1;
  *(a2 + v8) = *(a1 + v8) - (v6 & (2 * *(a1 + v8))) + 50;
  return (*(v5 + 8 * ((27 * (v8 != (v2 ^ v7 ^ v4))) ^ v2)))();
}

uint64_t sub_736C8()
{
  v2 = STACK[0x340] - 771;
  v3 = (((LODWORD(STACK[0x59C]) ^ 0x11E7EAC3) - 300411587) ^ ((LODWORD(STACK[0x59C]) ^ 0x3F7DCC25) - 1065208869) ^ ((LODWORD(STACK[0x59C]) ^ 0x9A4E0FEB) + 1706160149)) + 1772638746 + (((v1 ^ 0xE51C8EF9) + 451113223) ^ ((v1 ^ 0x563EF5E2) - 1446966754) ^ ((v1 ^ ((STACK[0x340] - 899) | 0x80) ^ 0x7F652B7) - 133583382));
  *(STACK[0x228] + 52) = ((v3 % 0x2710) ^ 0xDEEEFD8D) + 1637734272 + ((2 * (v3 % 0x2710)) & 0x7B1A);
  v4 = STACK[0x5A4];
  STACK[0x4F8] -= 1616;
  LODWORD(STACK[0x52C]) = v4;
  return (*(v0 + 8 * ((1514 * (v4 == -1261164275)) ^ v2)))();
}

uint64_t sub_73980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  ++*(v8 + 52);
  LODWORD(STACK[0x3BC]) = *(v8 + 360);
  STACK[0x4F8] += ((v6 + 1002) | 4u) ^ 0xFFFFFFFFFFFFF086;
  LODWORD(STACK[0x504]) = a6;
  return (*(v7 + 8 * ((78 * (STACK[0x350] == 0)) ^ v6)))();
}

void sub_73A40(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_C6C70 + v1 - 597) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 11992])(32, 0x101004023FF3BD5) == 0) * (((v1 - 92) | 0x89) - 628)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_73AFC()
{
  v3 = LODWORD(STACK[0x524]) - 356556495;
  v4 = ((v0 - 1700345161) < 0xFD700643) ^ (v3 < (((v1 - 503) | 0x10) ^ 0xFD7003CA) + ((v1 + 1713206652) & 0x99E282B3));
  v5 = v3 < v0 - 1700345161;
  if (v4)
  {
    v5 = (v0 - 1700345161) < 0xFD700643;
  }

  return (*(v2 + 8 * (v1 | (2 * v5))))();
}

void sub_73BEC(uint64_t a1)
{
  v1 = *(a1 + 8) - 1785193651 * ((a1 & 0x5CB9D977 | ~(a1 | 0x5CB9D977)) ^ 0xB09ACAA8);
  v2 = *a1;
  v3 = *(&off_C6C70 + v1 - 350) - 8;
  (*&v3[8 * (v1 ^ 0x93F)])(*(&off_C6C70 + v1 - 246), sub_52D28);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_73D20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x64) + 50;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((2034 * v4) ^ 0x390u)))(0);
}

uint64_t sub_73D70(uint64_t a1)
{
  v1 = ((*a1 ^ (50899313 * (a1 ^ 0xC861C456))) + 559) | 6;
  v2 = (v1 ^ 0x99139929) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_C6C70 + (v1 ^ 0x658)) + (((v2 > v1 - 1567) * ((v1 ^ 0x3D7) - 1201)) ^ v1) - 1))();
}

uint64_t sub_73E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v20 = 1785193651 * ((((v19 - 136) ^ 0x58986BCA) + 422353094 - 2 * (((v19 - 136) ^ 0x58986BCA) & 0x192C98C6)) ^ 0x52681F2C);
  *(v19 - 136) = &a14;
  *(v19 - 128) = v14 - v20 - 719;
  *(v19 - 124) = ((v14 - 1378) ^ v16 ^ 0x7EBD892A) - v20 + ((2 * v16) & 0xFD7B1676) - 270565675;
  (*(v15 + 8 * (v14 ^ 0xFBC)))(v19 - 136);
  *(v19 - 136) = a11;
  *(v19 - 128) = v14 - 1378 - ((v19 - 136) ^ 0xD4A71C5A) * v18 + 762;
  *(v19 - 120) = &a12;
  v21 = (*(v15 + 8 * (v14 + 328)))(v19 - 136);
  return (*(v15 + 8 * ((90 * ((((v14 - 401) ^ (*(v19 - 112) + v17 < (((v14 - 1639) | 0x280) ^ 0xFA2A17FD))) & 1) == 0)) ^ (v14 - 1378))))(v21);
}

void CFUnnB0JdUjJ5CNJMkDS()
{
  v0 = *(&off_C6C70 + (byte_AC4E8[(byte_B867C[(107 * (dword_C8C20 ^ 0xF9 ^ qword_C8B98)) - 12] ^ 0xA4) - 8] ^ (107 * (dword_C8C20 ^ 0xF9 ^ qword_C8B98))) + 37);
  v1 = *(&off_C6C70 + (byte_B4EF0[byte_B1480[(107 * ((qword_C8B98 + *v0) ^ 0xF9))] ^ 0xBD] ^ (107 * ((qword_C8B98 + *v0) ^ 0xF9))) + 18);
  v2 = *v0 - &v4 + *(v1 - 4);
  *v0 = 1010482283 * (v2 + 0x5450BF49BFD4E907);
  *(v1 - 4) = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v5[0] = (1037613739 * (v5 ^ 0xD1022D7F)) ^ 0x9617D40F;
  LOBYTE(v1) = 107 * ((*(v1 - 4) + *v0) ^ 0xF9);
  v3 = *(&off_C6C70 + ((107 * (dword_C8C20 ^ 0xF9 ^ qword_C8B98)) ^ byte_B4FF0[byte_B1580[(107 * (dword_C8C20 ^ 0xF9 ^ qword_C8B98))] ^ 0xAD]) - 149) - 8;
  (*&v3[8 * (v1 ^ byte_B4EF0[byte_B1480[v1] ^ 0xBD]) + 17880])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_74260(uint64_t a1)
{
  v2 = *(&off_C6C70 + ((107 * ((qword_C8B98 + dword_C8BB0) ^ 0xF9)) ^ byte_AC2E0[byte_B8570[(107 * ((qword_C8B98 + dword_C8BB0) ^ 0xF9))] ^ 0x16]) - 127);
  v3 = *(v2 - 4);
  v4 = *(&off_C6C70 + (byte_B4EF8[(byte_B1480[(107 * ((qword_C8B98 + v3) ^ 0xF9))] ^ 0xBD) - 8] ^ (107 * ((qword_C8B98 + v3) ^ 0xF9))) + 18);
  v5 = (*(v4 - 4) ^ v3) - &v9;
  v6 = 1010482283 * v5 - 0x5450BF49BFD4E907;
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_C6C70 + ((107 * ((qword_C8B98 - dword_C8BB0) ^ 0xF9)) ^ byte_AC4E0[byte_B8670[(107 * ((qword_C8B98 - dword_C8BB0) ^ 0xF9))] ^ 0x8F]) + 53) - 8;
  (*&v8[8 * (byte_B1680[byte_AC3E0[(107 * ((v7 - v4) ^ 0xF9))] ^ 0xCD] ^ (107 * ((v7 - v4) ^ 0xF9))) + 17040])(*(&off_C6C70 + ((107 * ((v7 + v4) ^ 0xF9)) ^ byte_B1680[byte_AC3E0[(107 * ((v7 + v4) ^ 0xF9))] ^ 0xCD]) + 103), sub_52D28);
  __asm { BRAA            X9, X17 }
}

void sub_7444C(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_74538@<X0>(int a1@<W8>)
{
  v7 = *(v3 + 4 * (v5 - 1));
  *(v3 + 4 * v5) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v3 + 4 * v5)) - v5;
  *(v6 - 120) = v4 + a1 - 288126657;
  v8 = v6 - 176;
  *(v8 + 64) = v4 + 623;
  *(v6 - 152) = ((a1 + 1610053433) ^ 0x61) - v4;
  *(v6 - 132) = a1 + 1610053433 - v4;
  *(v6 - 128) = -v4;
  *(v6 - 124) = (a1 + 1610053457) ^ v4;
  *(v8 + 32) = v5 + 1 - v4;
  v9 = (*(v2 + 8 * (v1 + a1 + 1605)))(v6 - 152);
  return (*(v2 + 8 * *(v6 - 136)))(v9);
}

uint64_t sub_74648@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v7 = v3 - ((2 * v3) & 0x180) - 712618048;
  v8 = *result;
  v9 = *(result + 32);
  v10 = *(result + 16);
  *a2 = v4;
  *v10 = v7;
  *v9 = v6;
  *v8 = v2 + v5;
  *(result + 8) = -1261164275;
  return result;
}

uint64_t sub_747FC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 ^ 0x3A9;
  v9 = ((a1 ^ 0x3A9) + 195) | 0xA;
  v10 = v4[3];
  *(v7 - 116) = v5;
  v11 = *(&off_C6C70 + (v8 ^ 0x463)) - 4;
  v12 = *(&off_C6C70 + v8 - 961) - 4;
  v13 = v11[v10 ^ 0xDE] ^ v10;
  v14 = (v12[v4[4] ^ 0xF7] + 68) ^ 0x18;
  v15 = *(&off_C6C70 + v8 - 956) - 8;
  v16 = v15[v4[14] ^ 0x82];
  v17 = v9;
  v18 = *(&off_C6C70 + v8 - 929) - 8;
  v19 = v18[v4[5] ^ 0x6DLL] << 16;
  v20 = ((((v15[v4[6]] << 8) ^ 0x81C16E80) & ((v14 << 24) ^ 0xA3CBFF80) & 0x81FFFFFF | (((v14 >> 1) & 0x3F) << 25)) ^ 0x45570F5D) & (v19 ^ 0xFFCEFFDD);
  v21 = v19 & 0x690000;
  LOBYTE(v19) = (v4[15] - ((2 * v4[15]) & 8) - 124) ^ v11[v4[15] ^ 0xFDLL];
  v22 = ((v12[v4[8] ^ 0x70] + 68) ^ 0x5E) << 24;
  v23 = v18[v4[13] ^ 0xC7];
  v24 = v11[v4[11] ^ 0xD3] ^ v4[11];
  v25 = ((v18[v4[1] ^ 0x40] << 16) ^ 0x2944739B) & (v13 ^ 0xBFFF77FC) | v13 & 0x64;
  v26 = (v12[v4[12] ^ 0xBDLL] + 68) ^ 0x1B;
  v27 = (v12[v4[12] ^ 0xBDLL] + 68) ^ 0x1B;
  v28 = ((v23 << 16) ^ 0xCF2F87B3) & ~(v26 << 24) & 0xCFFFFFFF | (((v26 >> 4) & 3) << 28);
  LODWORD(v18) = (v18[v4[9] ^ 0x7CLL] ^ 0xD0) << 16;
  v29 = v18 & 0x970000 | ((v24 & 0xA2 | (((v22 ^ 0x30A0FF82) & ((v15[(v4[10] ^ (v9 + 62))] << 8) ^ 0x76A00B82) | v22 & 0x89000000) ^ 0xD1FF97DF) & (v24 ^ 0xFFFFFF83)) ^ 0x9D3704D4) & ~v18;
  v30 = ((((v15[v4[2] ^ 0x87] << 8) ^ 0x7550CEFA) & (v25 ^ 0x5E018C41) | v25 & 0x8AF0005) ^ 0x7DD88BFB) + (((v12[*v4 ^ 9] + 68) ^ 0x85) << 24);
  v31 = (v4[7] - ((2 * v4[7]) & 8) - 124) ^ v11[v4[7] ^ 0x2FLL];
  v32 = (v28 ^ 0x30E4784C) & (((v19 ^ 0xF8ADFF04) & ((v16 << 8) ^ 0xF8AD027D) | v19 & 0x82) ^ 0x5F69DD7E) ^ v28 & 0x583B0000;
  v33 = v31 & 0xA6 | (v21 ^ 0x6007D384 ^ v20) & ~v31;
  v34 = *(&off_C6C70 + (v8 ^ 0x411)) - 8;
  LODWORD(v10) = *&v34[4 * (v23 ^ 0xBE)];
  HIDWORD(v35) = v10 ^ 0x1AA93C9;
  LODWORD(v35) = v10 ^ 0x58000000;
  v36 = *(&off_C6C70 + v8 - 931) - 4;
  v37 = *&v36[4 * (v27 ^ 0xB4)];
  v38 = *(&off_C6C70 + v8 - 1006) - 4;
  v39 = 690312999 * *&v38[4 * (v19 ^ 0x78)] - 85913135;
  v40 = v16 ^ 0xF0;
  v41 = *(&off_C6C70 + (v8 ^ 0x4A2)) - 4;
  v42 = *&v41[4 * v40];
  *(v7 - 168) = v30;
  *(v7 - 164) = v29;
  *(v7 - 176) = v33;
  *(v7 - 172) = v32;
  v33 ^= 0x9A90CB0B;
  v43 = v30 ^ (v35 >> 27) ^ v39 ^ (-219980569 * v37 - 371359334) ^ (-36060539 * v42 + 1423491956) ^ 0x1A;
  *(v7 - 184) = v43 ^ v33;
  v44 = v29 ^ 0x3B685709 ^ v43 ^ v33;
  v45 = v44 ^ v32;
  v46 = *&v34[4 * (((v45 ^ 0x8E8C66C8) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v46 ^ 0x1AA93C9;
  LODWORD(v35) = v46 ^ 0x58000000;
  LODWORD(v10) = (690312999 * *&v38[4 * (v45 ^ 0x89)] - 85913135) ^ (v35 >> 27) ^ (-36060539 * *&v41[4 * (((v45 ^ 0x66C8) >> 8) ^ 0xAF)] + 1423491956) ^ (-219980569 * *&v36[4 * (HIBYTE(v45) ^ 0xAF)] - 371359334);
  v198 = v45;
  v47 = v45 ^ 0x7A3E8043;
  v48 = v10 ^ v33;
  *(v7 - 188) = v44;
  v196 = v10 ^ v33 ^ v44;
  v49 = v196 ^ 0xC1D6411F ^ v45 ^ 0x7A3E8043;
  v50 = *&v34[4 * (BYTE2(v49) ^ 0xBF)];
  HIDWORD(v35) = v50 ^ 0x1AA93C9;
  LODWORD(v35) = v50 ^ 0x58000000;
  v51 = (690312999 * *&v38[4 * (v196 ^ 0x1F ^ v45 ^ 0x43 ^ 0xAB)] - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v49) ^ 0x20)] - 371359334);
  v195 = v49;
  v52 = *&v41[4 * (BYTE1(v49) ^ 0xE9)];
  *(v7 - 180) = v43;
  v194 = v10 ^ v43;
  v53 = v51 ^ v10 ^ v43 ^ (-36060539 * v52 + 1423491956) ^ (v35 >> 27);
  v197 = v48;
  v192 = v53 ^ v48;
  LODWORD(v10) = v53 ^ v48 ^ 0xF78131F4;
  v54 = v10 ^ v47 ^ 0x68E79195;
  v55 = *&v34[4 * (BYTE2(v54) ^ 0xD9)];
  HIDWORD(v35) = v55 ^ 0x1AA93C9;
  LODWORD(v35) = v55 ^ 0x58000000;
  v191 = v10 ^ v47;
  v193 = v53;
  v56 = (-36060539 * *&v41[4 * (BYTE1(v54) ^ 0x49)] + 1423491956) ^ (690312999 * *&v38[4 * ((v10 ^ v47) ^ 0x5F)] - 85913135) ^ v53 ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (((v10 ^ v47) >> 24) ^ 0xBD)] - 371359334);
  v188 = v56 ^ v10;
  v189 = v10 ^ v196 ^ 0xC1D6411F;
  LODWORD(v10) = v56 ^ v10 ^ 0x5F64A794;
  v187 = v10 ^ v189;
  v57 = v10 ^ v189 ^ 0xC733F746;
  v58 = v57 ^ v54;
  v59 = v57 ^ v54 ^ 0x81B0C147;
  v60 = *&v34[4 * (BYTE2(v59) ^ 0xD9)];
  HIDWORD(v35) = v60 ^ 0x1AA93C9;
  LODWORD(v35) = v60 ^ 0x58000000;
  v190 = v56;
  v186 = v58;
  v61 = (-36060539 * *&v41[4 * (BYTE1(v58) ^ 0x88)] + 1423491956) ^ (v35 >> 27) ^ v56 ^ (690312999 * *&v38[4 * (v58 ^ 0x8D)] - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v58) ^ 0x54)] - 371359334);
  v184 = v61 ^ v10;
  LODWORD(v10) = v61 ^ v10 ^ 0xD5833601;
  v62 = v10 ^ v57;
  v63 = v10 ^ v57 ^ v59;
  v64 = *&v34[4 * (BYTE2(v63) ^ 0x8C)];
  HIDWORD(v35) = v64 ^ 0x1AA93C9;
  LODWORD(v35) = v64 ^ 0x58000000;
  v185 = v61;
  v65 = (-36060539 * *&v41[4 * (BYTE1(v63) ^ 0x1E)] + 1423491956) ^ (-219980569 * *&v36[4 * (HIBYTE(v63) ^ 0xE7)] - 371359334) ^ v61 ^ (v35 >> 27) ^ (690312999 * *&v38[4 * (v63 ^ 0xED)] - 85913135);
  LODWORD(v181) = v65 ^ v10;
  LODWORD(v10) = v65 ^ v10 ^ 0xE8131F4;
  v182 = v63;
  v183 = v62;
  HIDWORD(v180) = v10 ^ v62;
  v66 = v10 ^ v62 ^ 0xC00207F5;
  v67 = v66 ^ v63;
  v68 = *&v34[4 * (((v67 ^ 0x32555727) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v68 ^ 0x1AA93C9;
  LODWORD(v35) = v68 ^ 0x58000000;
  HIDWORD(v181) = v65;
  HIDWORD(v179) = (-36060539 * *&v41[4 * (((v67 ^ 0x5727) >> 8) ^ 0x8F)] + 1423491956) ^ (690312999 * *&v38[4 * (v67 ^ 0x5F)] - 85913135) ^ v65 ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (HIBYTE(v67) ^ 0x63)] - 371359334);
  LODWORD(v180) = v67;
  v69 = v67 ^ 0xB6E79195;
  LODWORD(v179) = HIDWORD(v179) ^ 0x5F64A794 ^ v10;
  v70 = v179 ^ v66 ^ v67 ^ 0xB6E79195;
  v71 = *&v34[4 * (BYTE2(v70) ^ 0x8E)];
  HIDWORD(v35) = v71 ^ 0x1AA93C9;
  LODWORD(v35) = v71 ^ 0x58000000;
  LODWORD(v178) = v70;
  v72 = (690312999 * *&v38[4 * (v70 ^ 0x18)] - 85913135) ^ (-36060539 * *&v41[4 * (BYTE1(v70) ^ 0x19)] + 1423491956) ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (HIBYTE(v70) ^ 0x98)] - 371359334);
  v73 = v72 ^ v10;
  v74 = v72 ^ v10 ^ v69;
  v75 = *&v34[4 * (((v74 ^ 0x76E59660) >> 16) ^ 0x3C)];
  HIDWORD(v35) = v75 ^ 0x1AA93C9;
  LODWORD(v35) = v75 ^ 0x58000000;
  HIDWORD(v177) = v72 ^ HIDWORD(v179) ^ 0x5F64A794;
  v76 = (-219980569 * *&v36[4 * (HIBYTE(v74) ^ 0xD8)] - 371359334) ^ HIDWORD(v177) ^ (690312999 * *&v38[4 * (v74 ^ 0xCA)] - 85913135) ^ (-36060539 * *&v41[4 * (((v74 ^ 0x9660) >> 8) ^ 0xDF)] + 1423491956) ^ (v35 >> 27);
  HIDWORD(v178) = v179 ^ v66;
  HIDWORD(v176) = v74;
  HIDWORD(v175) = v76 ^ v179 ^ v66 ^ 0xBFE59660;
  v77 = HIDWORD(v175) ^ v74;
  v78 = *&v38[4 * ((BYTE4(v175) ^ v74) ^ 0x78)];
  LODWORD(v175) = HIDWORD(v175) ^ v74 ^ 0x52B2C6B2;
  v79 = *&v34[4 * (((HIDWORD(v175) ^ v74) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v79 ^ 0x1AA93C9;
  LODWORD(v35) = v79 ^ 0x58000000;
  LODWORD(v11) = (v35 >> 27) ^ (690312999 * v78 - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v77) ^ 0x87)] - 371359334) ^ (-36060539 * *&v41[4 * (BYTE1(v77) ^ 0x8F)] + 1423491956);
  v80 = *(&off_C6C70 + v8 - 1080) - 4;
  v81 = *(&off_C6C70 + v8 - 919);
  v82 = *(&off_C6C70 + (v8 ^ 0x498)) - 12;
  v83 = *(&off_C6C70 + v8 - 1047);
  v174 = v80;
  v84 = (v80[*(v7 - 97) ^ 0xC9] ^ 0xFF | ((*(v81 + (*(v7 - 99) ^ 0x76)) ^ 0xCC) << 16) | (((*(v83 + (*(v7 - 100) ^ 0x17)) - 9) ^ 0x52) << 24) | ((v82[*(v7 - 98) ^ 0xECLL] ^ (*(v7 - 98) - ((2 * *(v7 - 98)) & 0xAE) - 41) ^ 0xBC) << 8)) ^ 0xD2D2D211;
  v85 = (v80[*(v7 - 109) ^ 0x30] ^ 0x8E | ((8 - *(v83 + (*(v7 - 112) ^ 0xF4))) << 24) | ((v82[*(v7 - 110) ^ 0xDELL] ^ (*(v7 - 110) - ((2 * *(v7 - 110)) & 0xAE) - 41) ^ 0x98) << 8) | ((*(v81 + (*(v7 - 111) ^ 0x39)) ^ 0x26) << 16)) ^ 0xD2D2D2D2;
  v86 = (v80[*(v7 - 105) ^ 0xDLL] ^ 0x15 | ((v82[*(v7 - 106) ^ 0x17] ^ (*(v7 - 106) - ((2 * *(v7 - 106)) & 0xAE) - 41) ^ 0xA0) << 8) | ((*(v81 + (*(v7 - 107) ^ 0xEFLL)) ^ 0x7C) << 16) | (((*(v83 + (*(v7 - 108) ^ 0x9CLL)) - 9) ^ 0x1C) << 24)) ^ 0xD2D2D2D2;
  v87 = (v80[*(v7 - 101) ^ 0xCCLL] ^ 0x78 | ((v82[*(v7 - 102) ^ 0x4ELL] ^ (*(v7 - 102) - ((2 * *(v7 - 102)) & 0xAE) - 41) ^ 0x16) << 8) | (((*(v83 + (*(v7 - 104) ^ 9)) - 9) ^ 0xDA) << 24) | ((*(v81 + (*(v7 - 103) ^ 0x1BLL)) ^ 0x70) << 16)) ^ 0xD2D2D2D2;
  HIDWORD(v173) = (((*(v7 - 116) ^ 0xF7FF6FC1) + 506026907) ^ ((*(v7 - 116) ^ 0xF9977F19) + 272714563) ^ ((*(v7 - 116) ^ 0x22A4E5F7) - 881667667)) + 1043720715;
  LODWORD(v177) = v73;
  LODWORD(v173) = v73 ^ 0xD000000 ^ v11;
  HIDWORD(v172) = v76 ^ v179 ^ v66 ^ 0x64000000 ^ v173;
  LODWORD(v176) = v76;
  LODWORD(v172) = v11 ^ v76;
  *(v7 - 160) = v6;
  *(v7 - 116) = 0;
  *(v7 - 140) = 0;
  *(v7 - 136) = v17;
  LODWORD(v11) = (v17 - 207) | 0x240;
  *(v7 - 132) = v11;
  v88 = v6;
  v89 = *(v81 + (v6[13] ^ 0x90));
  v90 = v6[9] ^ 0xD2;
  v91 = (v11 - 1647);
  *(v7 - 128) = v91;
  LODWORD(v10) = ((v89 ^ 0x7F) << 16) | (((*(v83 + (v6[v91] ^ 0x80)) - 9) ^ 0x31) << 24);
  v92 = *(v7 - 176) ^ v86 ^ 0x76E4D1F9 ^ (((v82[v88[6] ^ 8] ^ (v88[6] + (~(2 * v88[6]) | 0x51) - 40) ^ 0x19) << 8) | (((*(v83 + (v88[4] ^ 0xC5)) - 9) ^ 0xFFFFFFFB) << 24) | v80[v88[7] ^ 0xFDLL] ^ 0xFF | ((*(v81 + (v88[5] ^ 0xF5)) ^ 0xCB) << 16));
  v93 = *(v7 - 168) ^ v85 ^ 0x4D036472 ^ (v80[v88[3] ^ 0x75] ^ 0x52 | (((*(v83 + (*v88 ^ 0xB0)) - 9) ^ 0x16) << 24) | ((*(v81 + (v88[1] ^ 0x93)) ^ 1) << 16) | ((v82[v88[2] ^ 0x1CLL] ^ (v88[2] + (~(2 * v88[2]) | 0x51) - 40) ^ 0x5D) << 8));
  LODWORD(v38) = *(v7 - 172) ^ v84 ^ 0xA24B29A ^ (v10 | ((v82[v88[14] ^ 5] ^ (v88[14] - ((2 * v88[14]) & 0xAE) - 41) ^ 0x99) << 8) | v80[v88[15] ^ 8] ^ 0xFF);
  LODWORD(v90) = *(v7 - 164) ^ v87 ^ 0x6769B69B ^ (v80[v88[11] ^ 9] ^ 0xF8 | ((*(v81 + v90) ^ 0xE9) << 16) | ((v82[v88[10] ^ 0xA9] ^ (v88[10] - ((2 * v88[10]) & 0xAE) - 41) ^ 0xC2) << 8) | (((*(v83 + (v88[8] ^ 2)) - 9) ^ 0xE2) << 24));
  v94 = *(&off_C6C70 + v17 - 1281) - 4;
  LODWORD(v10) = *&v94[4 * ((*(v7 - 176) ^ v86 ^ 0xD1F9 ^ (((v82[v88[6] ^ 8] ^ (v88[6] + (~(2 * v88[6]) | 0x51) - 40) ^ 0x19) << 8) | v80[v88[7] ^ 0xFDLL] ^ 0xFF)) >> 8)];
  v95 = *(&off_C6C70 + v17 - 1259) - 4;
  v96 = *(&off_C6C70 + (v17 ^ 0x550)) - 8;
  LODWORD(v10) = *&v96[4 * (v38 >> 24)] ^ v10;
  v97 = *(&off_C6C70 + v17 - 1251) - 4;
  v98 = *&v97[4 * v90] - 190468687;
  LODWORD(v80) = *&v94[4 * BYTE1(v93)] ^ *&v96[4 * BYTE3(v90)];
  LODWORD(v23) = (*&v97[4 * v38] - 541937675 - ((2 * *&v97[4 * v38] - 380937374) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v92)];
  LODWORD(v11) = (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v93)];
  v99 = *&v96[4 * HIBYTE(v92)] ^ *&v95[4 * BYTE2(v90)] ^ (*&v97[4 * v93] - 190468687);
  LODWORD(v11) = *&v94[4 * BYTE1(v90)] ^ *(v7 - 180) ^ (v11 + 1283085937 - ((2 * v11) & 0x98F4ACE2));
  v100 = *&v95[4 * BYTE2(v38)] ^ *(v7 - 188) ^ (*&v97[4 * v92] - 190468687) ^ ((v80 ^ 0x32E473E4) - 351468988 - 2 * ((v80 ^ 0x32E473E4) & 0x6B0D0245 ^ v80 & 1));
  LODWORD(v80) = *&v94[4 * BYTE1(v38)] ^ *(v7 - 184) ^ ((v99 ^ 0x959327D1) + 1283085937 - 2 * ((v99 ^ 0x959327D1) & 0x4C7A5679 ^ v99 & 8));
  LODWORD(v90) = v80 ^ 0xBF80DD5E;
  LODWORD(v38) = (v11 ^ 0xD7674CCB) >> 24;
  v101 = v198 ^ *&v95[4 * BYTE2(v93)] ^ v98 ^ 0x731FA71B ^ ((v10 ^ 0x32E473E4) - 351468988 - 2 * ((v10 ^ 0x32E473E4) & 0x6B0D0257 ^ v10 & 0x13));
  v102 = *&v97[4 * ((v198 ^ v95[4 * BYTE2(v93)] ^ v98) ^ 0x1B ^ ((v10 ^ 0xE4) + 68 - 2 * ((v10 ^ 0xE4) & 0x57 ^ v10 & 0x13)))];
  LODWORD(v91) = (v80 ^ 0xBF80DD5E) >> 24;
  v103 = *&v95[4 * ((v11 ^ 0xD7674CCB) >> 16)] ^ *&v96[4 * HIBYTE(v101)];
  v104 = *&v94[4 * ((v100 ^ 0xDD4) >> 8)] ^ (v102 + 1092617250 - ((2 * v102 - 380937374) & 0x98F4ACE2));
  LODWORD(v80) = *&v97[4 * (v80 ^ 0x48)];
  LODWORD(v80) = (v80 + 1933824838 - ((2 * v80 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * ((v100 ^ 0x16B10DD4) >> 24)];
  LODWORD(v80) = (v80 + 1283085937 - ((2 * v80) & 0x98F4ACE2)) ^ *&v94[4 * ((v11 ^ 0x4CCB) >> 8)];
  LODWORD(v11) = *&v97[4 * (v11 ^ 0xDD)];
  LODWORD(v11) = (v11 + 1092617250 - ((2 * v11 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v198 ^ *&v95[4 * BYTE2(v93)] ^ v98 ^ 0xA71B ^ ((v10 ^ 0x73E4) + 580 - 2 * ((v10 ^ 0x73E4) & 0x257 ^ v10 & 0x13))) >> 8)];
  LODWORD(v38) = *&v96[4 * v38] ^ (v104 + 2124293525 - ((2 * v104) & 0xFD3C4B2A));
  LODWORD(v10) = (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A)) ^ *&v96[4 * v91];
  LODWORD(v11) = *&v95[4 * ((v100 ^ 0x16B10DD4) >> 16)];
  v105 = v10 - 351468988 - ((2 * v10) & 0xD61A0488);
  LODWORD(v80) = *&v95[4 * BYTE2(v101)] ^ v196 ^ (v80 - 351468988 - ((2 * v80) & 0xD61A0488));
  LODWORD(v35) = __ROR4__(__ROR4__(*&v95[4 * BYTE2(v90)] ^ 0xB9AB301 ^ (v38 - 351468988 - ((2 * v38) & 0xD61A0488)), 5) ^ 0x50D2ECF9, 27);
  LODWORD(v10) = v194 ^ v35 ^ 0x6EDAF696;
  v106 = ((v103 ^ 0x959327D1) + 1283085937 - 2 * ((v103 ^ 0x959327D1) & 0x4C7A5675 ^ v103 & 4)) ^ v195 ^ *&v94[4 * BYTE1(v90)] ^ (*&v97[4 * (v100 ^ 0xC2)] - 190468687);
  v107 = v197 ^ v11 ^ 0x2201ECBC ^ v105;
  LODWORD(v38) = BYTE3(v10);
  v108 = *&v97[4 * (v80 ^ 0x37)];
  LODWORD(v23) = (v108 - 541937675 - ((2 * v108 - 380937374) & 0xD61A0488)) ^ *&v95[4 * (((v194 ^ v35) >> 16) ^ 0x45)];
  v109 = *&v96[4 * ((v80 ^ 0xD62C0A37) >> 24)] ^ *&v94[4 * BYTE1(v10)];
  LODWORD(v23) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v107)];
  LODWORD(v11) = *&v94[4 * ((v80 ^ 0xA37) >> 8)] ^ *&v95[4 * BYTE2(v107)];
  v110 = *&v96[4 * ((v106 ^ 0xFC47C039) >> 24)];
  LODWORD(v10) = *&v95[4 * (BYTE2(v80) ^ 0xB3)] ^ (*&v97[4 * ((v194 ^ v35) ^ 0x96)] - 190468687) ^ *&v96[4 * HIBYTE(v107)];
  LODWORD(v90) = *&v97[4 * (v106 ^ 0x39)] - 190468687;
  v111 = *&v94[4 * (BYTE1(v106) ^ 0x87)];
  v112 = ((v109 ^ 0x32E473E4) - 351468988 - 2 * ((v109 ^ 0x32E473E4) & 0x6B0D024C ^ v109 & 8)) ^ v189 ^ *&v95[4 * ((v106 ^ 0xFC47C039) >> 16)] ^ (*&v97[4 * v107] - 190468687);
  v113 = v191 ^ v110 ^ 0x61C6B6CD ^ (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A));
  LODWORD(v90) = ((v11 ^ 0xA7775435) + 2124293525 - 2 * ((v11 ^ 0xA7775435) & 0x7E9E259D ^ v11 & 8)) ^ v193 ^ *&v96[4 * v38] ^ v90;
  LODWORD(v10) = v111 ^ v192 ^ ((v10 ^ 0x959327D1) + 1283085937 - 2 * ((v10 ^ 0x959327D1) & 0x4C7A5673 ^ v10 & 2));
  BYTE2(v38) = BYTE2(v10) ^ 0x65;
  LODWORD(v80) = (v10 ^ 0x7D650C28) >> 24;
  v114 = *&v97[4 * (v90 ^ 0xDD)];
  v115 = *&v97[4 * (v10 ^ 0x28)];
  LODWORD(v23) = (v115 + 1933824838 + ((380937372 - 2 * v115) | 0x2C3B4D5) + 1) ^ *&v96[4 * ((v112 ^ 0x7F82DAABu) >> 24)];
  LODWORD(v23) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * (((v90 ^ 0x35DF) >> 8) ^ 0x79)];
  v116 = (v114 + 1092617250 - ((2 * v114 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v113)];
  LODWORD(v10) = *&v94[4 * (BYTE1(v10) ^ 0x4B)] ^ 0xA7775435 ^ *&v95[4 * (BYTE2(v90) ^ 0x67)];
  LODWORD(v11) = *&v95[4 * ((v112 ^ 0x7F82DAABu) >> 16)] ^ (v116 - 351468988 - ((2 * v116) & 0xD61A0488));
  v117 = v10 + 2124293525 - ((2 * v10) & 0xFD3C4B2A);
  LODWORD(v10) = *&v95[4 * BYTE2(v38)] ^ 0x959327D1 ^ *&v96[4 * (BYTE3(v90) ^ 0xBD)] ^ (*&v97[4 * v113] - 190468687);
  LODWORD(v11) = *&v96[4 * v80] ^ v188 ^ (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A));
  LODWORD(v80) = v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2);
  LODWORD(v10) = *&v95[4 * BYTE2(v113)] ^ v187 ^ (v23 - 351468988 - ((2 * v23) & 0xD61A0488));
  LODWORD(v23) = v11 ^ 0x66654B3E;
  v118 = v117 ^ v186 ^ *&v96[4 * HIBYTE(v113)] ^ (*&v97[4 * (v112 ^ 0xBD)] - 190468687);
  LODWORD(v80) = v190 ^ *&v94[4 * ((v112 ^ 0xDAAB) >> 8)] ^ 0xE82DABD ^ v80;
  v119 = v80 >> 24;
  BYTE2(v112) = BYTE2(v10) ^ 0x80;
  v120 = (v11 ^ 0x66654B3E) >> 24;
  LODWORD(v11) = *&v97[4 * (v11 ^ 0x28)];
  LODWORD(v38) = *&v96[4 * v120];
  v121 = (*&v97[4 * v80] + 1092617250 - ((2 * *&v97[4 * v80] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v118 ^ 0xE61F) >> 8)];
  LODWORD(v38) = (v121 + 2124293525 - ((2 * v121) & 0xFD3C4B2A)) ^ v38;
  v122 = *&v95[4 * BYTE2(v23)];
  LODWORD(v11) = (v11 + 1092617250 - ((2 * v11 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v80)];
  LODWORD(v11) = (v11 - 351468988 - ((2 * v11) & 0xD61A0488)) ^ *&v95[4 * (BYTE2(v118) ^ 0x91)];
  LODWORD(v23) = *&v96[4 * ((v118 ^ 0x880EE61F) >> 24)] ^ 0xF9992A21 ^ *&v94[4 * BYTE1(v23)];
  LODWORD(v80) = *&v95[4 * BYTE2(v80)] ^ 0x2BEAE880;
  LODWORD(v80) = v80 + v23 - 2 * (v80 & v23);
  LODWORD(v23) = *&v96[4 * ((v10 ^ 0xA480DD5E) >> 24)];
  LODWORD(v90) = *&v97[4 * (v118 ^ 0x1F)];
  LODWORD(v90) = (v90 - 541937675 - ((2 * v90 - 380937374) & 0xD61A0488)) ^ v122;
  LODWORD(v90) = (v90 + 2124293525 - ((2 * v90) & 0xFD3C4B2A)) ^ *&v96[4 * v119];
  v123 = *&v94[4 * ((v10 ^ 0xDD5E) >> 8)];
  v124 = v90 + 1283085937 - ((2 * v90) & 0x98F4ACE2);
  LODWORD(v10) = (*&v97[4 * (v10 ^ 0x48)] - 190468687) ^ v182 ^ v80;
  LODWORD(v90) = v23 ^ v183 ^ (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A));
  LODWORD(v11) = v123 ^ v185 ^ v124;
  v125 = v184 ^ *&v95[4 * BYTE2(v112)] ^ 0x84654B28 ^ (v38 - 351468988 - ((2 * v38) & 0xD61A0488));
  v126 = *&v97[4 * (v10 ^ 0x7E)];
  v127 = *&v97[4 * ((v123 ^ v185 ^ v124) ^ 0xDD)];
  v128 = *&v95[4 * (BYTE2(v11) ^ 0x67)] ^ *&v96[4 * (BYTE3(v10) ^ 0x30)] ^ (*&v97[4 * (v90 ^ 0x6E)] - 190468687);
  v129 = (v127 + 1933824838 - ((2 * v127 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v125)];
  LODWORD(v80) = (v129 - 351468988 - ((2 * v129) & 0xD61A0488)) ^ *&v95[4 * (((v90 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v130 = *&v95[4 * BYTE2(v125)] ^ (v126 - 541937675 - ((2 * v126 - 380937374) & 0xD61A0488));
  LODWORD(v23) = *&v95[4 * (BYTE2(v10) ^ 0xEE)] ^ (*&v97[4 * v125] - 190468687) ^ *&v96[4 * ((v90 ^ 0xD0C9FB6E) >> 24)];
  v131 = *&v94[4 * (BYTE1(v10) ^ 0xC3)];
  LODWORD(v38) = v80 + 1283085937 - ((2 * v80) & 0x98F4ACE2);
  LODWORD(v10) = (v130 + 2124293525 - ((2 * v130) & 0xFD3C4B2A)) ^ *&v96[4 * ((v11 >> 24) ^ 0x5F)];
  LODWORD(v80) = v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2);
  LODWORD(v10) = *&v94[4 * (BYTE1(v11) ^ 0x4C)] ^ HIDWORD(v180) ^ ((v23 ^ 0x959327D1) + 1283085937 - 2 * ((v23 ^ 0x959327D1) & 0x4C7A5677 ^ v23 & 6));
  v132 = ((v128 ^ 0x959327D1) + 1283085937 - 2 * ((v128 ^ 0x959327D1) & 0x4C7A567F ^ v128 & 0xE)) ^ v180 ^ *&v94[4 * BYTE1(v125)];
  v133 = *&v94[4 * (BYTE1(v90) ^ 0xBC)] ^ HIDWORD(v181) ^ v80;
  v134 = v181 ^ v131 ^ 0x9A674CDD ^ v38;
  LODWORD(v38) = (*&v97[4 * v134] + 1092617250 - ((2 * *&v97[4 * v134] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v133 ^ 0xDAAB) >> 8)];
  LODWORD(v11) = (v38 - 351468988 - ((2 * v38) & 0xD61A0488)) ^ *&v95[4 * ((v132 ^ 0xBFC6B6DB) >> 16)];
  v135 = v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A);
  LODWORD(v11) = *&v94[4 * BYTE1(v134)] ^ *&v96[4 * ((v132 ^ 0xBFC6B6DB) >> 24)] ^ (*&v97[4 * (v10 ^ 0xE)] - 190468687);
  v136 = *&v96[4 * ((v133 ^ 0x2982DAAB) >> 24)] ^ *&v94[4 * (BYTE1(v10) ^ 0x2A)];
  LODWORD(v80) = *&v96[4 * HIBYTE(v134)] ^ *&v94[4 * ((v132 ^ 0xB6DB) >> 8)];
  v137 = v132 ^ 0xCD;
  v138 = (v136 ^ 0x32E473E4) - 351468988 - 2 * ((v136 ^ 0x32E473E4) & 0x6B0D0256 ^ v136 & 0x12);
  v139 = *&v97[4 * (v133 ^ 0xBD)] - 190468687;
  v140 = *&v95[4 * ((v133 ^ 0x2982DAAB) >> 16)] ^ v178 ^ ((v11 ^ 0x32E473E4) - 351468988 - 2 * ((v11 ^ 0x32E473E4) & 0x6B0D0247 ^ v11 & 3));
  v141 = HIDWORD(v179) ^ *&v95[4 * BYTE2(v134)] ^ (*&v97[4 * v137] - 190468687) ^ 0x2674CDD ^ v138;
  v142 = v179 ^ v66 ^ *&v96[4 * (BYTE3(v10) ^ 0xA6)] ^ 0xAF54BB9B ^ v135;
  LODWORD(v10) = v179 ^ *&v95[4 * (BYTE2(v10) ^ 0xB3)] ^ v139 ^ 0x2BE67D3F ^ ((v80 ^ 0x32E473E4) - 351468988 - 2 * ((v80 ^ 0x32E473E4) & 0x6B0D025F ^ v80 & 0x1B));
  LODWORD(v80) = *&v97[4 * (v140 ^ 0x8A)];
  LODWORD(v23) = (*&v97[4 * v142] - 541937675 - ((2 * *&v97[4 * v142] - 380937374) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v141)];
  LODWORD(v38) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v10)];
  v143 = *&v96[4 * ((v140 ^ 0x44E9778Au) >> 24)];
  LODWORD(v11) = *&v96[4 * BYTE3(v10)] ^ *&v94[4 * ((v140 ^ 0x778A) >> 8)];
  v144 = *&v97[4 * v141];
  LODWORD(v23) = *&v94[4 * BYTE1(v141)] ^ (*&v97[4 * (v10 ^ 0x16)] - 190468687) ^ *&v96[4 * HIBYTE(v142)];
  LODWORD(v80) = *&v96[4 * HIBYTE(v141)] ^ (v80 + 1933824838 - ((2 * v80 - 380937374) & 0xFD3C4B2A));
  v145 = *&v95[4 * (BYTE2(v140) ^ 0x76)];
  LODWORD(v10) = (v80 - 351468988 - ((2 * v80) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v10)];
  v146 = *&v95[4 * BYTE2(v142)] ^ v73 ^ (v144 - 190468687) ^ ((v11 ^ 0x32E473E4) - 351468988 - 2 * ((v11 ^ 0x32E473E4) & 0x6B0D025C ^ v11 & 0x18));
  LODWORD(v90) = v143 ^ HIDWORD(v176) ^ (v38 + 2124293525 - ((2 * v38) & 0xFD3C4B2A));
  v147 = HIDWORD(v177) ^ *&v94[4 * BYTE1(v142)] ^ 0x26E67D29 ^ (v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2));
  LODWORD(v10) = v179 ^ v66 ^ v73 ^ v145 ^ 0xA254BB9B ^ ((v23 ^ 0x32E473E4) - 351468988 - 2 * ((v23 ^ 0x32E473E4) & 0x6B0D0255 ^ v23 & 0x11));
  LODWORD(v80) = (v90 ^ 0x4BE2758) >> 24;
  v148 = *&v97[4 * (v146 ^ 0x49)];
  LODWORD(v23) = (*&v97[4 * v147] + 1092617250 - ((2 * *&v97[4 * v147] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v90 ^ 0x2758) >> 8)];
  LODWORD(v90) = (v148 - 541937675 - ((2 * v148 - 380937374) & 0xD61A0488)) ^ *&v95[4 * (BYTE2(v90) ^ 0x21)];
  LODWORD(v90) = (v90 + 2124293525 - ((2 * v90) & 0xFD3C4B2A)) ^ *&v96[4 * BYTE3(v10)];
  LODWORD(v23) = (v23 - 351468988 - ((2 * v23) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v10)];
  v149 = *&v96[4 * (HIBYTE(v146) ^ 0xEF)];
  LODWORD(v11) = *&v97[4 * ((v143 ^ BYTE4(v176) ^ (v38 - 107 - ((2 * v38) & 0x2A))) ^ 0x58)];
  LODWORD(v11) = (v11 + 1933824838 - ((2 * v11 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v147)];
  LODWORD(v11) = (v11 + 1283085937 - ((2 * v11) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v10)];
  LODWORD(v10) = *&v94[4 * (BYTE1(v146) ^ 0xEB)] ^ (*&v97[4 * v10] - 190468687) ^ *&v96[4 * v80];
  LODWORD(v97) = *&v95[4 * BYTE2(v147)] ^ v175 ^ ((v10 ^ 0x32E473E4) - 351468988 - 2 * ((v10 ^ 0x32E473E4) & 0x6B0D024F ^ v10 & 0xB));
  LODWORD(v10) = *&v95[4 * (BYTE2(v146) ^ 3)];
  v150 = *&v94[4 * BYTE1(v147)] ^ HIDWORD(v175) ^ (v90 + 1283085937 - ((2 * v90) & 0x98F4ACE2));
  LODWORD(v11) = v10 ^ v76 ^ (v11 - 351468988 - ((2 * v11) & 0xD61A0488));
  LODWORD(v80) = v76 ^ v73 ^ v149 ^ (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A));
  LODWORD(v90) = v80 ^ 0xBD9E3C06;
  LODWORD(v96) = v11 ^ 0xB0693C07;
  v151 = *(v7 - 136);
  v152 = *(&off_C6C70 + v151 - 1271) - 12;
  LODWORD(v23) = *&v152[4 * ((v76 ^ v73 ^ v149 ^ (v23 - 107 - ((2 * v23) & 0x2A))) ^ 7)];
  v153 = *(&off_C6C70 + (v151 ^ 0x5BF)) - 4;
  LODWORD(v80) = *&v153[4 * ((v80 >> 24) ^ 0xD2)];
  v154 = 1909043885 * v80 - ((59991386 * v80 + 18354992) & 0x1EE0BD3E);
  v155 = *(&off_C6C70 + (v151 ^ 0x516));
  LODWORD(v80) = *(v155 + 4 * ((v150 ^ 0xFAB5) >> 8));
  HIDWORD(v35) = v80 ^ 0x24E6661;
  LODWORD(v35) = v80 ^ 0xC0000000;
  LODWORD(v11) = (v35 >> 28) ^ (*&v152[4 * (v97 ^ 0x16)] - 927715928) ^ (1909043885 * *&v153[4 * ((v11 >> 24) ^ 0xDF)] - 259257960);
  v156 = *(v155 + 4 * ((v97 ^ 0xF016) >> 8));
  HIDWORD(v35) = v156 ^ 0x24E6661;
  LODWORD(v35) = v156 ^ 0xC0000000;
  v157 = v35 >> 28;
  v158 = *(v155 + 4 * BYTE1(v90));
  LODWORD(v80) = v23 - ((2 * v23 + 292051792) & 0x1EE0BD3E);
  HIDWORD(v35) = v158 ^ 0x24E6661;
  LODWORD(v35) = v158 ^ 0xC0000000;
  v159 = *(&off_C6C70 + v151 - 1208) - 4;
  v160 = *&v159[4 * ((v150 ^ 0x422CFAB5) >> 16)];
  v161 = *&v159[4 * ((v97 ^ 0xF6BCF016) >> 16)];
  LODWORD(v10) = (v35 >> 28) ^ (*&v152[4 * (v150 ^ 0xB5)] - 927715928);
  LODWORD(v152) = *&v152[4 * v96];
  LODWORD(v90) = *&v159[4 * BYTE2(v90)];
  v162 = *&v159[4 * (BYTE2(v96) ^ 0xF7)];
  LODWORD(v96) = *(v155 + 4 * BYTE1(v96));
  v163 = *(v7 - 160);
  v164 = *&v153[4 * (HIBYTE(v150) ^ 0x2D)];
  LODWORD(v159) = *&v153[4 * ((v97 >> 24) ^ 0x99)];
  HIDWORD(v35) = v96 ^ 0x24E6661;
  LODWORD(v35) = v96 ^ 0xC0000000;
  LODWORD(v97) = v172 ^ v90 ^ (v11 + 259022495 - ((2 * v11) & 0x1EE0BD3E));
  LODWORD(v153) = v160 ^ v173 ^ v157 ^ (v152 - 927715928) ^ (v154 - 235465);
  LODWORD(v95) = (v80 - 668693433) ^ HIDWORD(v172) ^ v161 ^ (1909043885 * v164 - 259257960) ^ (v35 >> 28);
  v165 = HIDWORD(v172) ^ v175 ^ v162 ^ (1909043885 * v159 - 259257960) ^ (v10 + 259022495 - ((2 * v10) & 0x1EE0BD3E));
  v166 = *(&off_C6C70 + (v151 ^ 0x58C));
  v88[10] = *(v166 + (BYTE1(v95) ^ 0x79)) ^ 0x1E;
  v167 = *(&off_C6C70 + (v151 ^ 0x56A)) - 12;
  v88[13] = v167[BYTE2(v165) ^ 0xF0] ^ 0xF9;
  v168 = *(&off_C6C70 + v151 - 1247);
  v88[15] = (*(v168 + ((BYTE4(v172) ^ v175 ^ v162 ^ (-83 * v159 - 104) ^ (v10 - 97 - ((2 * v10) & 0x3E))) ^ 0x45)) + 127) ^ 0x8F;
  v88[6] = *(v166 + (BYTE1(v153) ^ 0x1BLL)) ^ 0xE2;
  v88[1] = v167[BYTE2(v97) ^ 0x3ELL] ^ 0x9F;
  v169 = *(&off_C6C70 + v151 - 1273) - 8;
  *(v163 + *(v7 - 128)) = v169[HIBYTE(v165) ^ 0x41] ^ 0x27;
  v88[8] = v169[(v95 >> 24) ^ 0xB6] ^ 0xE1;
  v88[3] = (*(v168 + (v97 ^ 0xDFLL)) + 127) ^ 0x17;
  v88[14] = *(v166 + (BYTE1(v165) ^ 0x5ELL)) ^ 0xA3;
  v88[11] = (*(v168 + (v95 ^ 0x54)) + 127) ^ 0x67;
  v88[2] = *(v166 + (BYTE1(v97) ^ 0x13)) ^ 0xEE;
  LODWORD(v152) = *(v7 - 116);
  v88[7] = (*(v168 + (v153 ^ 0xDELL)) + 127) ^ 0x84;
  v88[5] = v167[BYTE2(v153) ^ 0x7ALL] ^ 0x58;
  *v88 = v169[(v97 >> 24) ^ 0xB5] ^ 1;
  v88[9] = v167[BYTE2(v95) ^ 0x6FLL] ^ 0x2A;
  v88[4] = v169[(v153 >> 24) ^ 0x49] ^ 0x75;
  v170 = (v152 + 55618448) < HIDWORD(v173);
  if (HIDWORD(v173) < 0x350AB80 != (v152 + 55618448) < 0x350AB80)
  {
    v170 = HIDWORD(v173) < 0x350AB80;
  }

  return (*(*(v7 - 152) + 8 * (v151 ^ (4 * !v170))))(HIDWORD(v173), v175, 223, v162, 153, 38692449, v160, &off_C6C70, a2, a3, a4, v172, v173, v83, v82, v81, v174, v175, v176, v177, v178, v179, v180, v181);
}

uint64_t sub_76D24@<X0>(unint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  *a26 = v26;
  v33 = v27 ^ v30 ^ (v30 >> (((a2 - 121) | 0x44) ^ 0xC7));
  v34 = (v33 << ((a2 - 121) ^ 0xD9 ^ (v29 + 5))) & 0x9D2C5680 ^ v33;
  *(*a22 + a1) ^= v28 ^ a2 ^ v32 & (v34 << 15) ^ v34 ^ ((v32 & (v34 << 15) ^ v34) >> 18);
  return (*(v31 + 8 * ((116 * (a1 < 0x1FC)) ^ a2 ^ 0x1AE)))();
}

uint64_t sub_76DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 17336))(a19 + a20, 0x100004077774924);
  v29 = (*(v27 + 17952))();
  *v28 = v29;
  v30 = v29 ^ (v29 >> 30);
  v31 = (v30 ^ 0x85F5489E) + 175377777;
  v32 = 1812433253 * (((v30 ^ 0x2469CBC0) - 1410822609) ^ v31 ^ ((v30 ^ 0xA19C835E) + 773703345)) + 1980334518;
  v28[1] = v32;
  return (*(v27 + 8640))(v32, *(v27 + 8640), v31, 1812433253, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v26, a22, a23, a24, a25, a26);
}

uint64_t sub_76F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v22 - 112) = &a17;
  *(v22 - 120) = v18 - ((v22 - 128 + v19 - 2 * ((v22 - 128) & v19)) ^ 0x9F83A128) * v20 - 196;
  *(v22 - 128) = &a15;
  v23 = (*(v17 + 8 * (v18 + 748)))(v22 - 128);
  return (*(v17 + 8 * ((((*(v22 - 104) + v21) < 0xC25D1D16) * ((v18 - 1058483744) & 0x3F172EFD ^ 0x402)) ^ v18)))(v23);
}

uint64_t sub_76FEC(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v12 = *(v9 + 8);
  v13 = *(v12 + 4 * v11 - 4) ^ (v7 + a2 + 307 - 1307);
  *(v12 + 4 * (a6 - 1)) = ((v13 >> v8) & a4 | (a7 ^ a1) & ~(v13 >> v8)) ^ a1;
  return (*(v10 + 8 * (((v11 > 1) * a5) ^ a2)))();
}

uint64_t sub_76FF4@<X0>(int a1@<W8>)
{
  v5 = *(v3 + a1 * v2 + 36);
  LODWORD(STACK[0x348]) = v5;
  v6 = v5 - 71658207;
  v8 = v6 > -1889536993 && v6 < SLODWORD(STACK[0x2D8]);
  return (*(v4 + 8 * ((v8 * (((v1 + 864) | 8) + ((v1 - 108) | 0x380) - 1489)) ^ v1)))();
}

uint64_t sub_7705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x2E0]) = a7;
  v12 = v7 ^ 0x69;
  LODWORD(STACK[0x1898]) = v8;
  LODWORD(STACK[0x189C]) = -800765707;
  v13 = *(v10 + 8 * ((v7 ^ 0x69) - 801));
  STACK[0x2D0] = v13;
  LODWORD(STACK[0x4E8]) = *v13 - 513152;
  v14 = *(v10 + 8 * (v7 ^ 0x36E));
  STACK[0x2D8] = v14;
  v15 = *v14;
  v16 = STACK[0x2A8];
  LODWORD(v14) = STACK[0x2A8] + v12 + 1255647160;
  *(v11 - 216) = v12 + 1255647160 - STACK[0x2A8];
  *(v11 - 212) = v14 - 52;
  *(v11 - 184) = v16;
  *(v11 - 180) = v14 - 3;
  *(v11 - 176) = -2030745604 - v16 + v12;
  STACK[0x2C8] = v15;
  *(v11 - 208) = v16;
  *(v11 - 192) = v15 + v16;
  v17 = (*(v9 + 8 * (v12 ^ 0xB71)))(v11 - 216);
  return (*(v9 + 8 * *(v11 - 200)))(v17);
}

void sub_771BC(uint64_t a1)
{
  v1 = *(a1 + 24) - 1785193651 * ((-2 - ((a1 | 0xD15DBABD) + (~a1 | 0x2EA24542))) ^ 0x3D7EA962);
  v2 = *(a1 + 16);
  if (*(v2 + 4) - 1726767306 >= 0)
  {
    v3 = *(v2 + 4) - 1726767306;
  }

  else
  {
    v3 = 1726767306 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 1726767306 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 1726767306;
  }

  else
  {
    v4 = 1726767306 - *(*(a1 + 8) + 4);
  }

  v8 = v1 + 50899313 * (((&v7 | 0xEF6AF04F) - &v7 + (&v7 & 0x10950FB0)) ^ 0x270B3419) + 383;
  v7 = v2;
  v5 = *(&off_C6C70 + v1 - 767) - 8;
  (*&v5[8 * v1 + 11488])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_7732C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = v3 + 1065;
  v7 = (*(v5 + 8 * ((v3 + 377) ^ 0xA30)))(**(a1 + 8 * (v3 - 360)), *v4, (v3 + 1065 + v2 + *(v4 + 8)));
  *(v4 + 31) = (&a2 ^ 0xBA) * (&a2 + 17);
  *(v4 + 30) = (&a2 ^ 0xBB) * (&a2 + 18);
  return (*(v5 + 8 * ((3531 * (((v6 - 961) | 0x410) == 1556)) ^ v6)))(v7);
}

uint64_t sub_773CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v36 = *(&a19 + v31 + 72);
  v37 = ((2 * v31) & 0xCABDFBF8) + (v31 ^ 0xE55EFDFC) + v32;
  *(a1 + v37) = v36 ^ 0x4E;
  *(a1 + v37 + 1) = ((v36 >> ((v33 ^ (a4 + 57)) + v35)) ^ 0x51) + ~(2 * (((v36 >> ((v33 ^ (a4 + 57)) + v35)) ^ 0x51) & 0x3A ^ (v36 >> ((v33 ^ (a4 + 57)) + v35)) & 8)) + 51;
  *(a1 + v37 + 2) = (BYTE2(v36) ^ 0x65) - ((2 * (BYTE2(v36) ^ 0x65)) & 0x64) + 50;
  *(a1 + v37 + 3) = (HIBYTE(v36) ^ 0x56) - 2 * ((HIBYTE(v36) ^ 0x56) & 0x33 ^ HIBYTE(v36) & 1) + 50;
  return (*(v34 + 8 * (((8 * (v31 + 4 < a31)) | ((v31 + 4 < a31) << 7)) ^ v33)))();
}

uint64_t sub_77524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6 - 1;
  *(a2 + v10) = *(a5 + v10) - (v7 & (2 * *(a5 + v10))) + 50;
  return (*(v9 + 8 * (((((v5 + 101) ^ (v10 == 0)) & 1) * v8) ^ (v5 - 165))))();
}

uint64_t sub_775DC@<X0>(int a1@<W8>)
{
  v9.val[0].i64[0] = (v4 - v5 - 1) & 0xF;
  v9.val[0].i64[1] = (v4 - v5 + 14) & 0xF;
  v9.val[1].i64[0] = (v4 - v5 + 13) & 0xF;
  v9.val[1].i64[1] = (v4 - v5 + 12) & 0xF;
  v9.val[2].i64[0] = (v4 + a1 - 117 + 25 - v5) & 0xF;
  v9.val[2].i64[1] = (v4 - v5 + 10) & 0xF;
  v9.val[3].i64[0] = (v4 - v5 + 9) & 0xF;
  v9.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(v4 + v7 - 8 - v5) = veor_s8(veor_s8(veor_s8(*(v1 + v9.val[0].i64[0] - 7), *(v4 + v7 - 8 - v5)), veor_s8(*(v2 + v9.val[0].i64[0] - 7), *(v9.val[0].i64[0] + v3 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v9, xmmword_A91E0), 0x7373737373737373)));
  return (*(v6 + 8 * ((435 * (8 - (v4 & 0x18) != -v5)) ^ (a1 - 1408))))(xmmword_A91E0);
}

void sub_777B0()
{
  v4 = *(v0 + 16);
  **(v0 + 8) = *v1;
  *v4 = *v2 - (((v3 + 938) ^ 0x4EC00A9F) & (2 * *v2)) + 660604913;
  *(v0 + 24) = -1261164275;
}

uint64_t sub_77830(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 + 1578)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1501)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_77930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, int a14, int a15, char *a16, uint64_t a17, char *a18)
{
  v22 = 50899313 * ((-355700510 - (&a14 | 0xEACC70E2) + (&a14 | 0x15338F1D)) ^ 0xDD524B4B);
  a17 = v18;
  a18 = &a10;
  a14 = v22 ^ 0x4892673;
  a15 = (v21 + 530) ^ v22;
  a16 = &a13;
  v23 = (*(v19 + 8 * (v21 ^ 0x8FF)))(&a14);
  return (*(v19 + 8 * ((239 * (((v21 - 100) ^ (*(v18 + 24) == v20)) & 1)) ^ v21)))(v23);
}

uint64_t sub_779E4(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v17 = v16 + 4 * v13;
  a6.i64[0] = *(v17 + 4);
  a6.i32[2] = *(v17 + 12);
  v18 = vextq_s8(a1, a6, 0xCuLL);
  v19 = a6;
  v19.i32[3] = *(v16 + 4 * (v13 + 4));
  v20 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v19, a3), vandq_s8(v18, a2)), 1uLL), *(v16 + 4 * (v10 + v13)));
  v18.i32[0] = *(v11 + 4 * (*(v17 + 4) & 1));
  v18.i32[1] = *(v11 + 4 * (*(v17 + 8) & 1));
  v18.i32[2] = *(v11 + 4 * (*(v17 + 12) & 1));
  v18.i32[3] = *(v11 + 4 * (v19.i8[12] & 1));
  *v17 = veorq_s8(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), a4)), a5), v18);
  return (*(v15 + 8 * (((v13 == 220) * v12) ^ (a10 + v14 + 454))))();
}

uint64_t sub_77E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t *a13, char a14, uint64_t a15)
{
  v22 = 1361651671 * ((2 * (&a10 & 0x7D199048) - &a10 - 2098827338) ^ 0x51C49F3A);
  a14 = (((((v21 - 116) & 0xEF ^ 0x32) + (*(v15 + 52) ^ v20 ^ 0xEB)) ^ ((*(v15 + 52) ^ v20 ^ 0x9F) + 97) ^ ((v21 ^ *(v15 + 52) ^ v20 ^ 0x90) - 59)) + 116) ^ (-41 * ((2 * (&a10 & 0x48) - &a10 - 74) ^ 0x3A));
  a15 = v18;
  a13 = &a9;
  a10 = v22 - 542128598 + v19;
  a11 = v21 - v22 + 244;
  v23 = (*(v17 + 8 * (v21 + 2117)))(&a10);
  return (*(v17 + 8 * ((7 * (a12 != v16)) ^ v21)))(v23);
}

uint64_t sub_78008(uint64_t a1, int a2)
{
  v5 = v4 ^ ((a2 - 1362) | 0x4A) ^ 0x4B2BD4BD;
  v6 = ((a2 + 1259021863) & 0xB4F4D7EB ^ 0x1E3AAB8C) + v3;
  v7 = v6 < 0x91F074A2;
  v8 = v6 > v5 - 1846512478;
  if (v7 != v5 > 0x6E0F8B5D)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(v2 + 8 * ((211 * !v9) ^ a2)))();
}

uint64_t sub_78154(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 20) - 18429 * ((2 * (result & 0x51F9) - result - 20986) ^ 0x2353);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1CA;
  v3 = v2 ^ 0xCA;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -1783123828;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xB9A8FAF53120727DLL;
    *(v1 + 80) = 0x4657050ACEDF8D82;
    *(v1 + 92) = v4;
  }

  *(result + 16) = -1797458203;
  return result;
}

uint64_t sub_78214@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  v14 = (a1 - 1022613214) & 0xFB041CFF;
  v15 = a1 + v11;
  a10 = (a1 + 1411914099) ^ (1037613739 * (((&a10 | 0xF6A5DD78) - &a10 + (&a10 & 0x95A2280)) ^ 0x27A7F007));
  v16 = (*(v13 + 8 * (a1 ^ 0x41EFB25Cu)))(&a10);
  return (*(v13 + 8 * ((1488 * (a11 == v12 + v14 - 190)) ^ v15)))(v16);
}

void sub_782C8(uint64_t a1)
{
  v1 = *(a1 + 4) - 742307843 * ((2 * (a1 & 0x782C26B9) - a1 + 131324230) ^ 0x19F15413);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_78390(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v9 = (v5 - 1034) | 0x102;
  *v6 = a1;
  *a5 = v12 ^ (a4 - 46) ^ v9;
  v10 = (v9 ^ 0x781) - 430;
  v15 = (v9 ^ 0x781) - (((&v15 | 0xA385B145) - &v15 + (&v15 & 0x5C7A4EB8)) ^ 0x2E28D3A9) * v7 - 123;
  v16 = v14;
  (*(v8 + 8 * ((v9 ^ 0x781) + 553)))(&v15);
  v15 = v10 - ((((2 * &v15) | 0xA1D710E8) - &v15 + 789870476) ^ 0x5D46EA98) * v7 + 307;
  v16 = v13;
  (*(v8 + 8 * (v10 + 983)))(&v15);
  return 0;
}

uint64_t sub_78574@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 50;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_785A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 622577687;
  v4 = *(a1 + 12) + 2000315973 + ((v2 - 565) | 0x180);
  v5 = v3 < 0x98D18DD3;
  v6 = v3 > v4;
  if (v5 != v4 < 0x98D18DD3)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((!v6 * (((v2 - 1106) | 0xC) - 551)) ^ v2)))();
}

void sub_78668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1785193651 * ((((v18 - 128) | 0xD50291B3) - ((v18 - 128) & 0xD50291B3)) ^ 0xC6DE7D93);
  *(v18 - 128) = &a15;
  *(v18 - 120) = v17 - v19 + 418;
  *(v18 - 116) = ((v17 + 945464124) & 0xC7A55DE1) - v19 + (v15 ^ 0x7F9F5A5B) + ((2 * v15) & 0xFF3EB4B6) - 285365355;
  (*(v16 + 8 * (v17 + 1485)))(v18 - 128);
  JUMPOUT(0x78714);
}

uint64_t sub_787A8()
{
  v7 = v4 ^ 0x970;
  v8 = v5 + v3;
  v9 = (v3 - 1) & 0xF;
  v10 = v0 - v3 + v9 + 1;
  v11 = v0 + v9 + 1;
  v12 = v1 + ((v7 + 1658827935) & 0x9D204BFE ^ 0x1E6) - v3 + v9;
  v13 = v9 + ((v7 + 204) | 0xC3u) + v1 - 719;
  v14 = v9 + v2 + 6;
  v16 = v11 > v5 && v10 < v8;
  if (v12 < v8 && v13 > v5)
  {
    v16 = 1;
  }

  v19 = v14 > v5 && v14 - v3 < v8 || v16;
  return (*(v6 + 8 * ((13 * v19) ^ v7)))();
}

uint64_t sub_788E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((230 * (((v4 == 1726767306) ^ (v3 - 115)) & 1)) ^ v3)))();
}