uint64_t sub_10013AA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = (a7 + v12);
  v21 = __ROR8__((a1 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v14 + 2 * v21) & v13) - v21 + v9;
  v23 = v22 ^ a6;
  v24 = v22 ^ a5;
  v25 = (__ROR8__(v23, 8) + v24) ^ a8;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = ((a3 & (2 * (v26 + v27))) - (v26 + v27) + v18) ^ a2;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xC73EF603490C4402;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v11 - ((v32 + v31) | v11) + ((v32 + v31) | v19)) ^ 0x9C148812C3BFA1D5;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__(((v17 | (2 * (v35 + v34))) - (v35 + v34) + 0x68134BD320364377) ^ a9, 8);
  v37 = ((v17 | (2 * (v35 + v34))) - (v35 + v34) + 0x68134BD320364377) ^ a9 ^ __ROR8__(v34, 61);
  *(a1 + v20) = *(a4 + v20) ^ v15 ^ (((__ROR8__((v36 + v37) ^ 0xB581C077348D623CLL, 8) + ((v36 + v37) ^ 0xB581C077348D623CLL ^ __ROR8__(v37, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((a1 + a7 + v12) & 7)));
  return (*(STACK[0x628] + 8 * (((a7 != 2072888796) * v16) ^ (v10 + 4049))))();
}

uint64_t sub_10013AB5C(uint64_t a1)
{
  *(v2 + 320) = a1;
  LODWORD(STACK[0xA04]) = STACK[0x440];
  LODWORD(STACK[0xBCC]) = 68588956;
  return (*(STACK[0x628] + 8 * v1))();
}

uint64_t sub_10013AB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 208);
  LODWORD(STACK[0xBCC]) = a6;
  return (*(a8 + 8 * (((((((2 * v8) ^ 0x303E) + 1036500416) & 0xC2383FF6) - 4226) * (v10 == 0)) | v8)))();
}

uint64_t sub_10013ABE0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (a2 - 746814680) & 0x2C837A8F;
  v4 = 1487 * (a2 ^ 0x12CD);
  v5 = a2 + 2705;
  *v2 = 13;
  *(v2 + 4) = 0x4B1808F982DA5774;
  *(v2 + 12) = 0xF7F34165AB24D4AALL;
  *(v2 + 20) = 992672325;
  *(v2 + 24) = -88;
  *(v2 + 28) = 0xE18E981470744563;
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = v6 == 0x510808E226CB14FCLL;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(a1 + 8 * ((v8 * ((v3 + 329) ^ v4)) ^ v5)))();
}

uint64_t sub_10013ACA0@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = (*(a1 + 8 * (v2 + 6078)))(a2 - 0x510808E226CB14FCLL);
  v5 = STACK[0x628];
  *(v3 + 40) = 0x510808E226CB14FCLL;
  return (*(v5 + 8 * v2))(v4);
}

uint64_t sub_10013AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 240) = (v8 - 1071) ^ (301143701 * ((~((v9 - 240) | 0x2FC1934C) + ((v9 - 240) & 0x2FC1934C)) ^ 0xAB96F1C1));
  (*(a8 + 8 * (v8 + 6488)))(v9 - 240);
  v10 = STACK[0xF68];
  *(v9 - 232) = (v8 + 1316) ^ (1110906037 * ((((2 * (v9 - 240)) | 0x15FCE92A) - (v9 - 240) + 1963035499) ^ 0x3B91825));
  STACK[0xF60] = v10;
  (*(STACK[0x628] + 8 * (v8 ^ 0x396F)))(v9 - 240);
  return (*(STACK[0x628] + 8 * ((STACK[0x748] == 0) | v8)))();
}

uint64_t sub_10013AE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (v8 - 2170) | 0x541;
  v10 = (*(a8 + 8 * (v9 ^ 0x2466)))();
  v11 = STACK[0x628];
  STACK[0x748] = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_10013AE98@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0x30BD)))(a2 - 0x2B1A0449E8A6C928);
  v4 = STACK[0x628];
  STACK[0x7D0] = 0x2B1A0449E8A6C928;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_10013B044@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v7[147] = *(a1 + 8 * a2);
  v7[85] = v3;
  LODWORD(STACK[0x8BC]) = v4;
  v7[38] = v2;
  v7[104] = 0xDC2FE20D517D747;
  LODWORD(STACK[0x91C]) = 1443455193;
  v7[11] = 0x5B67E4B9D3C4B062;
  v7[133] = 0;
  v8 = (*(a1 + 8 * (v5 + 4844)))(16);
  v9 = STACK[0x628];
  STACK[0xB00] = v8 + v6;
  return (*(v9 + 8 * ((((v5 ^ (v8 == 0)) & 1) * (((v5 - 3285) | 8) ^ 0x9B2)) ^ v5)))();
}

uint64_t sub_10013B104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_10013B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 712);
  *(v9 + 312) = 0;
  return (*(a8 + 8 * (((v10 == a7) * (((v8 + 5191774) & 0xFFB0A7F7) - 829)) | v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_10013B1E0@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v4 + 368) = 0x51CE20ABD81C933BLL;
  *(v4 + 152) = 0x76B941D798E1ED96;
  return (*(a2 + 8 * ((((v3 + 3975) ^ 0x12F8) * (a3 != a1)) ^ (v3 + 6289))))();
}

uint64_t sub_10013B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 368) - 0x51CE20ABD81C9323);
  *(v9 + 376) = v10;
  return (*(a8 + 8 * ((((((v8 + 1982957246) ^ (v10 == 0)) & 1) == 0) * ((v8 ^ 0xA28) - 1863)) | v8)))();
}

uint64_t sub_10013B33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = ((72 * (a7 ^ 0x763)) ^ 0x89C5F62F) + v7;
  v8[202] = v9;
  v10 = v8[19];
  v8[203] = v10;
  return (*(a6 + 8 * ((9229 * (v9 - v10 + (a7 + 2918) + 0x76B941D798E1DAC8 > 9)) ^ a7)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_10013B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 + 218)))((v8 - 1443469693 + LODWORD(STACK[0xA7C]) + 4093));
  v11 = STACK[0x628];
  STACK[0xD18] = v10 + 0x2B1A0449E8A6C928;
  if (v10)
  {
    v12 = 68588956;
  }

  else
  {
    v12 = a6;
  }

  LODWORD(STACK[0xD24]) = v12;
  return (*(v11 + 8 * ((127 * (((v8 - 32) ^ (v10 == 0)) & 1)) ^ v8)))();
}

uint64_t sub_10013B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x610] = v10;
  STACK[0x400] = *(a8 + 8 * v8);
  v12 = v9 - ((2 * v9 + 1408056910) & 0xCB136036) + 260067138;
  v13 = ((2 * v12) & 0xFEFE9BEE ^ (v11 - 904794792)) + (v12 ^ 0x1AF6FDEC) - 540623952 == 1598425511;
  return (*(a8 + 8 * ((2 * v13) | (32 * v13) | (v11 - 1334))))();
}

uint64_t sub_10013B77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v9 = *(STACK[0x628] + 8 * (v8 + 2 * (a8 >= (((v8 ^ 0x1016) + 4722) ^ (2354 * (v8 ^ 0x1016u))))));
  LODWORD(STACK[0x3F0]) = a8;
  return v9();
}

uint64_t sub_10013B7E4@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, unint64_t a9@<X8>)
{
  LODWORD(STACK[0x3B0]) = v11;
  STACK[0x530] = a7 - 15;
  STACK[0x600] = *(STACK[0x628] + 8 * v20);
  LODWORD(STACK[0x3E0]) = a8 & 0xFFFFFFF0;
  LODWORD(STACK[0x550]) = -(a8 & 0xFFFFFFF0);
  LODWORD(STACK[0x3D0]) = v13;
  LODWORD(STACK[0x3C0]) = v10;
  v21 = v10 + v13 + a1;
  LODWORD(STACK[0x390]) = v21 - 8;
  *&STACK[0x5B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x5A0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x5E0] = vdupq_n_s64(0x7695A575CC8A36DAuLL);
  LODWORD(STACK[0x540]) = v21 - 5;
  *&STACK[0x5D0] = vdupq_n_s64(v14);
  *&STACK[0x590] = vdupq_n_s64(a2);
  *&STACK[0x580] = vdupq_n_s64(v16);
  *&STACK[0x570] = vdupq_n_s64(v9);
  *&STACK[0x560] = vdupq_n_s64(a5);
  *&STACK[0x520] = vdupq_n_s64(v19);
  *&STACK[0x510] = vdupq_n_s64(v17);
  *&STACK[0x500] = vdupq_n_s64(v18);
  *&STACK[0x4F0] = vdupq_n_s64(a3);
  *&STACK[0x4E0] = vdupq_n_s64(a4);
  *&STACK[0x4D0] = vdupq_n_s64(a6);
  *&STACK[0x490] = vdupq_n_s64(v15);
  *&STACK[0x440] = vdupq_n_s64(a9);
  *&STACK[0x430] = vdupq_n_s64(v12);
  *&STACK[0x420] = vdupq_n_s64(0xB581C077348D623CLL);
  *&STACK[0x410] = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  *&STACK[0x480] = xmmword_1002A9AB0;
  return (STACK[0x600])(a9);
}

uint64_t sub_10013BA00(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v38.i64[0] = v14 + (v17 + v22 + 16);
  v38.i64[1] = v14 + (v12 + v22 + v8 + 16);
  v39 = (a5 + v22 + 16);
  v40.i64[0] = v14 + (v21 + v22 + 16);
  v41.i64[0] = v14 + v39;
  v41.i64[1] = v14 + (a8 + v22 + 16);
  v40.i64[1] = v14 + (v20 + v22 + 16);
  v42.i64[0] = v14 + (v19 + v22 + 16);
  *&v43 = v14 + (v18 + v22 + 16);
  v42.i64[1] = v14 + (v10 + v22 + 16);
  *(&v43 + 1) = v14 + (v16 + v22 + 16);
  *&STACK[0x600] = v43;
  *&v43 = v14 + (v13 + v22 + 16);
  *(&v43 + 1) = v14 + (a6 + v22 + 16);
  *&STACK[0x5F0] = v43;
  v44 = *&STACK[0x5B0];
  v45 = vandq_s8(v42, *&STACK[0x5B0]);
  v46 = vandq_s8(v40, *&STACK[0x5B0]);
  v47 = vandq_s8(v41, *&STACK[0x5B0]);
  v48 = vandq_s8(v38, *&STACK[0x5B0]);
  v49 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), *&STACK[0x5E0]);
  v53 = vaddq_s64(v51, *&STACK[0x5E0]);
  v54 = vaddq_s64(v50, *&STACK[0x5E0]);
  v55 = vaddq_s64(v49, *&STACK[0x5E0]);
  v56 = *&STACK[0x5D0];
  *&STACK[0x5C0] = vsubq_s64(vorrq_s8(vaddq_s64(v55, v55), *&STACK[0x5D0]), v55);
  v57 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), v56), v52), v23);
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v56), v53), v23);
  v59 = veorq_s8(v58, *&STACK[0x580]);
  v60 = veorq_s8(v57, *&STACK[0x580]);
  v61 = veorq_s8(v57, *&STACK[0x570]);
  v62 = veorq_s8(v58, *&STACK[0x570]);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v61);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, v25), vorrq_s8(v63, v26)), v26), v27);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, v25), vorrq_s8(v64, v26)), v26), v27);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v69, v29), vorrq_s8(v69, v28)), v28), *&STACK[0x500]);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, v29), vorrq_s8(v70, v28)), v28), *&STACK[0x500]);
  v73 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v74);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v30), v77), v31), v32);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), v30), v76), v31), v32);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, v34), vorrq_s8(v83, v33)), v33), v35);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v34), vorrq_s8(v84, v33)), v33), v35);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), v36);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v88), v36);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = veorq_s8(vaddq_s64(v94, v92), v37);
  v97 = veorq_s8(v95, v37);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v98.i64[0] = v14 + (LODWORD(STACK[0x540]) + v22 + 16);
  v98.i64[1] = v14 + (a4 + v22 + 16);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), v56), v54), v23);
  v202.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v102, v100), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v24)));
  v202.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v101, v99), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v24)));
  v104 = veorq_s8(v103, *&STACK[0x580]);
  v105 = veorq_s8(v103, *&STACK[0x570]);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v25), vorrq_s8(v106, v26)), v26), v27);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v29), vorrq_s8(v109, v28)), v28), *&STACK[0x500]);
  v112 = veorq_s8(v111, v110);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v30), v113), v31), v32);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v34), vorrq_s8(v116, v33)), v33), v35);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v36);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v37);
  v110.i64[0] = v14 + (a3 + v22 + 16);
  v110.i64[1] = v14 + (v15 + v22 + 16);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v123 = vandq_s8(v110, v44);
  v124 = vaddq_s64(*&STACK[0x5C0], v23);
  v202.val[0] = vshlq_u64(veorq_s8(v122, *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v24)));
  v125 = veorq_s8(v124, *&STACK[0x580]);
  v126 = veorq_s8(v124, *&STACK[0x570]);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v25), vorrq_s8(v127, v26)), v26), v27);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, v29), vorrq_s8(v130, v28)), v28), *&STACK[0x500]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), v30), v133), v31), v32);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v136, v34), vorrq_s8(v136, v33)), v33), v35);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v36);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v37);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v144 = vandq_s8(v98, v44);
  v145 = vaddq_s64(v143, v142);
  v146 = vandq_s8(*&STACK[0x5F0], v44);
  v202.val[1] = vshlq_u64(veorq_s8(v145, *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v24)));
  v147 = vandq_s8(*&STACK[0x600], v44);
  v148 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), *&STACK[0x5E0]);
  v152 = vaddq_s64(v150, *&STACK[0x5E0]);
  v153 = vaddq_s64(v149, *&STACK[0x5E0]);
  v154 = vaddq_s64(v148, *&STACK[0x5E0]);
  v155 = vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), *&STACK[0x5D0]), v154);
  v156 = vsubq_s64(vorrq_s8(vaddq_s64(v153, v153), *&STACK[0x5D0]), v153);
  v157 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v151, v151), *&STACK[0x5D0]), v151), v23);
  v158 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), *&STACK[0x5D0]), v152), v23);
  v154.i64[0] = vqtbl4q_s8(v202, *&STACK[0x480]).u64[0];
  v202.val[0] = veorq_s8(v158, *&STACK[0x580]);
  v202.val[1] = veorq_s8(v157, *&STACK[0x580]);
  v202.val[2] = veorq_s8(v157, *&STACK[0x570]);
  v202.val[3] = veorq_s8(v158, *&STACK[0x570]);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[0], v25), vorrq_s8(v202.val[0], v26)), v26), v27);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[1], v25), vorrq_s8(v202.val[1], v26)), v26), v27);
  v202.val[2] = veorq_s8(v202.val[1], vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[0], v29), vorrq_s8(v202.val[0], v28)), v28), *&STACK[0x500]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[1], v29), vorrq_s8(v202.val[1], v28)), v28), *&STACK[0x500]);
  v202.val[2] = veorq_s8(v202.val[1], vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[1], v202.val[1]), v30), v202.val[1]), v31), v32);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[0], v202.val[0]), v30), v202.val[0]), v31), v32);
  v159 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v159);
  v160 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(v160, v202.val[2]);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[0], v34), vorrq_s8(v202.val[0], v33)), v33), v35);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[1], v34), vorrq_s8(v202.val[1], v33)), v33), v35);
  v202.val[2] = veorq_s8(v202.val[1], vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]), v36);
  v202.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]), v36);
  v161 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v161);
  v162 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = veorq_s8(vaddq_s64(v162, v202.val[2]), v37);
  v202.val[0] = veorq_s8(v202.val[0], v37);
  v163 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v164 = vaddq_s64(v156, v23);
  v202.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), veorq_s8(v202.val[1], v163)), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v110, 3uLL), v24)));
  v202.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[2]), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v98, 3uLL), v24)));
  v165 = veorq_s8(v164, *&STACK[0x580]);
  v166 = veorq_s8(v164, *&STACK[0x570]);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, v25), vorrq_s8(v167, v26)), v26), v27);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, v29), vorrq_s8(v170, v28)), v28), *&STACK[0x500]);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), v30), v173), v31), v32);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v34), vorrq_s8(v176, v33)), v33), v35);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v36);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v37);
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL)));
  v183 = vaddq_s64(v155, v23);
  v202.val[1] = vshlq_u64(veorq_s8(v182, *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5F0], 3uLL), v24)));
  v184 = veorq_s8(v183, *&STACK[0x580]);
  v185 = veorq_s8(v183, *&STACK[0x570]);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v25), vorrq_s8(v186, v26)), v26), v27);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189, v29), vorrq_s8(v189, v28)), v28), *&STACK[0x500]);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), v30), v192), v31), v32);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195, v34), vorrq_s8(v195, v33)), v33), v35);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v36);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v37);
  v202.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL))), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x600], 3uLL), v24)));
  v154.i64[1] = vqtbl4q_s8(v202, *&STACK[0x480]).u64[0];
  v202.val[0] = vrev64q_s8(*(v14 + v39 - 15));
  v202.val[1].i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v202.val[1].i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v202.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v202.val[0], v202.val[0], 8uLL), v202.val[1]), v154));
  *(STACK[0x530] + v39) = vextq_s8(v202.val[0], v202.val[0], 8uLL);
  return (*(STACK[0x628] + 8 * (((LODWORD(STACK[0x550]) == v22) * v11) ^ v9)))();
}

uint64_t sub_10013C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v9 = *(STACK[0x628] + 8 * v8);
  *&STACK[0x600] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  STACK[0x5E0] = a7;
  *&STACK[0x5F0] = xmmword_1002A9AA0;
  LODWORD(STACK[0x5D0]) = (v8 - 3671) & a8;
  return v9();
}

uint64_t sub_10013C830@<X0>(uint64_t a1@<X4>, int a2@<W5>, int a3@<W6>, int a4@<W7>, uint64_t a5@<X8>, int8x16_t a6@<Q1>, int64x2_t a7@<Q2>, int8x16_t a8@<Q3>, int64x2_t a9@<Q4>, int8x16_t a10@<Q5>, int8x16_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v36 = (v20 + v15);
  v37.i64[0] = v17 + v36;
  v38.i64[0] = v17 + (v20 + a4);
  v37.i64[1] = v17 + (v20 + v14);
  v38.i64[1] = v17 + (v20 + v21 + v13);
  v39.i64[0] = v17 + (v20 + v19);
  v40.i64[0] = v17 + (v20 + v18);
  v39.i64[1] = v17 + (v20 + a3);
  v40.i64[1] = v17 + (v20 + v16);
  v41 = vandq_s8(v40, *&STACK[0x600]);
  v42 = vandq_s8(v39, *&STACK[0x600]);
  v43 = vandq_s8(v38, *&STACK[0x600]);
  v44 = vandq_s8(v37, *&STACK[0x600]);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), a7);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), a7);
  v49 = vaddq_s64(v46, a7);
  v50 = vaddq_s64(v45, a7);
  v51 = vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), a8), v50);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), a8), v47), a9);
  v53 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), a8), v48), a9);
  v54 = veorq_s8(v53, v22);
  v55 = veorq_s8(v52, v22);
  v56 = veorq_s8(v52, v23);
  v57 = veorq_s8(v53, v23);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, v24), vorrq_s8(v58, a10)), a10), v25);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, v24), vorrq_s8(v59, a10)), a10), v25);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = veorq_s8(v60, v61);
  v65 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v26), vorrq_s8(v66, a11)), a11), v27);
  v69 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, v26), vorrq_s8(v67, a11)), a11), v27);
  v72 = veorq_s8(v71, v70);
  v73 = veorq_s8(v68, v69);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v73);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), v28), v75), v29), v30);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), v28), v74), v29), v30);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = vaddq_s64(v81, v79);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, v31), vorrq_s8(v82, a12)), a12), v32);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, v31), vorrq_s8(v83, a12)), a12), v32);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), v33);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), v33);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v95 = veorq_s8(vaddq_s64(v93, v91), v34);
  v96 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v97 = veorq_s8(v94, v34);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v99 = veorq_s8(v95, v96);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), a8), v49), a9);
  v140.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v101, v99), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a6)));
  v140.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v100, v98), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a6)));
  v103 = veorq_s8(v102, v22);
  v104 = veorq_s8(v102, v23);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v24), vorrq_s8(v105, a10)), a10), v25);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, v26), vorrq_s8(v108, a11)), a11), v27);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v28), v111), v29), v30);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, v31), vorrq_s8(v114, a12)), a12), v32);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v33);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v34);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL)));
  v121 = vaddq_s64(v51, a9);
  v140.val[1] = vshlq_u64(veorq_s8(v120, v35), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a6)));
  v122 = veorq_s8(v121, v22);
  v123 = veorq_s8(v121, v23);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v24), vorrq_s8(v124, a10)), a10), v25);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v26), vorrq_s8(v127, a11)), a11), v27);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v28), v130), v29), v30);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v133, v31), vorrq_s8(v133, a12)), a12), v32);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v33);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v34);
  v140.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL))), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a6)));
  *(a1 + v36) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v17 + v36 - 7)), 0x1B1B1B1B1B1B1B1BLL), *&vqtbl4q_s8(v140, *&STACK[0x5F0])));
  return (*(a5 + 8 * ((120 * (v20 != a2)) ^ v12)))();
}

uint64_t sub_10013CF60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v23 = (v8 + v15);
  v24 = STACK[0x610] + v23;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((2 * (v25 + 0x7695A575CC8A36DALL)) | 0xEA644F0FAE3A15BALL) - (v25 + 0x7695A575CC8A36DALL) + a1;
  v27 = v26 ^ v19;
  v28 = v26 ^ v9;
  v29 = __ROR8__(v27, 8);
  v30 = (v10 - ((v29 + v28) | v10) + ((v29 + v28) | a4)) ^ v22;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v12 - ((v32 + v31) | v12) + ((v32 + v31) | v20)) ^ v21;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = ((a2 & (2 * (v35 + v34))) - (v35 + v34) + a3) ^ a5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v13 - ((v38 + v37) | v13) + ((v38 + v37) | v18)) ^ a8;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v14;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xB581C077348D623CLL;
  *(a6 + v23) = *v24 ^ v16 ^ (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v24 & 7u)));
  return (*(STACK[0x628] + 8 * (((v8 - 4815 + a7 == 1598425511) * v17) ^ v11)))();
}

uint64_t sub_10013D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x624]) - 2684;
  *(v5 + 504) = *(v5 + 1632);
  return (*(STACK[0x628] + 8 * v6))(a1, a2, a3, a4, a5, LODWORD(STACK[0xD24]));
}

uint64_t sub_10013D37C(int a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 + a3;
  v11 = *(v10 - 31);
  v12 = v9 + a3;
  *(v12 - 15) = *(v10 - 15);
  *(v12 - 31) = v11;
  return (*(a8 + 8 * (((a4 == 0) * a5) ^ a1)))();
}

uint64_t sub_10013D558@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  *(v2 + 504) = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0xA7C]) = 1443455193;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_10013D58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x9B4]) = a6;
  *(v9 + 496) = *(a8 + 8 * v8);
  return (*(a8 + 8 * (v8 + ((v8 + 3961) | 0xE) - 1392)))();
}

uint64_t sub_10013D634(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = *(v10 - 0x111BBCE88DD4C9AELL);
  *(v12 + 880) = v13;
  return (*(a8 + 8 * (((v13 == a7) * ((v11 + (v9 ^ v8 ^ a3) * a4) ^ ((v9 ^ v8 ^ a5) * a6))) | v9 ^ v8)))();
}

uint64_t sub_10013D680@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  LODWORD(STACK[0x5E0]) = v6;
  LODWORD(STACK[0x5F0]) = a2;
  LODWORD(STACK[0x600]) = a1;
  LODWORD(STACK[0x610]) = v5;
  return (*(a3 + 8 * (((*(a4 - 0x5A0411E37F4B9882) + v8 == 0x6CA99498E690DFD7) * (v4 + 6548 + v4 + 3026 + v7)) ^ v4)))();
}

uint64_t sub_10013D7B8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 & 0x4CE95CF3;
  v4 = (*(a1 + 8 * ((a2 & 0x4CE95CF3) + 6267)))();
  v5 = STACK[0x628];
  *(v2 - 0x51CE20ABD81C9323) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10013D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * ((v8 - 2267) ^ 0x2282)))();
  v10 = STACK[0x628];
  STACK[0x640] = 0;
  return (*(v10 + 8 * (v8 - 2267)))(v9);
}

uint64_t sub_10013DA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = LODWORD(STACK[0x77C]) - 155559917 == ((2 * (LODWORD(STACK[0x77C]) - 155559917)) & 0xA1409094);
  *(v10 + 1448) = (166 * (v8 ^ 0x2337u)) ^ ((LODWORD(STACK[0x77C]) - 155559917) - ((2 * (LODWORD(STACK[0x77C]) - 155559917)) & 0xA1409094) + v9) ^ 0x29246FE350A05A84;
  v12 = v11;
  return (*(a8 + 8 * ((27 * v12) ^ v8)))();
}

uint64_t sub_10013DCA8@<X0>(uint64_t a1@<X8>, int64x2_t a2@<Q0>, int64x2_t a3@<Q1>, int64x2_t a4@<Q2>, int64x2_t a5@<Q3>, int64x2_t a6@<Q4>, int64x2_t a7@<Q5>, int64x2_t a8@<Q6>, int64x2_t a9@<Q7>)
{
  v18 = veorq_s8(vaddq_s64(a8, v13), v14);
  v41.val[3] = veorq_s8(vaddq_s64(a7, v13), v14);
  v41.val[2] = veorq_s8(vaddq_s64(a2, v13), v14);
  v41.val[1] = veorq_s8(vaddq_s64(a3, v13), v14);
  v19 = veorq_s8(vaddq_s64(a4, v13), v14);
  v20 = vaddq_s64(a8, v15);
  v21 = vaddq_s64(a7, v15);
  v22 = vaddq_s64(a2, v15);
  v23 = vaddq_s64(a3, v15);
  v41.val[0] = veorq_s8(vaddq_s64(a5, v13), v14);
  v24 = vaddq_s64(a4, v15);
  v40.val[0] = vaddq_s64(a5, v15);
  v25 = v41.val[1].i64[0] * v23.i64[0];
  v26 = v41.val[1].i64[1] * v23.i64[1];
  v27 = v41.val[2].i64[1] * v22.i64[1];
  v40.val[0].i64[0] *= v41.val[0].i64[0];
  v28 = v41.val[2].i64[0] * v22.i64[0];
  v40.val[0].i64[1] *= v41.val[0].i64[1];
  v40.val[1].i64[0] = v19.i64[0] * v24.i64[0];
  v41.val[2].i64[0] = v41.val[3].i64[0] * v21.i64[0];
  v29 = v18.i64[1] * v20.i64[1];
  v41.val[2].i64[1] = v41.val[3].i64[1] * v21.i64[1];
  v30 = v18.i64[0] * v20.i64[0];
  v40.val[1].i64[1] = v19.i64[1] * v24.i64[1];
  v31 = veorq_s8(vaddq_s64(a9, v13), v14);
  v32 = vaddq_s64(a9, v15);
  v41.val[1].i64[0] = v30;
  v40.val[2].i64[0] = v25;
  v33 = v31.i64[1] * v32.i64[1];
  v41.val[1].i64[1] = v29;
  v34 = v31.i64[0] * v32.i64[0];
  v35 = veorq_s8(vaddq_s64(a6, v13), v14);
  v40.val[2].i64[1] = v26;
  v36 = vaddq_s64(a6, v15);
  v41.val[0].i64[0] = v34;
  v41.val[0].i64[1] = v33;
  v40.val[3].i64[0] = v28;
  v40.val[3].i64[1] = v27;
  v37 = STACK[0x628];
  v41.val[3].i64[0] = v35.i64[0] * v36.i64[0];
  v41.val[3].i64[1] = v35.i64[1] * v36.i64[1];
  v35.i64[0] = vqtbl4q_s8(v41, v16).u64[0];
  v35.i64[1] = vqtbl4q_s8(v40, v16).u64[0];
  v38 = vrev64q_s8(v35);
  *(v12 + a1) = vextq_s8(v38, v38, 8uLL);
  return (*(v37 + 8 * (v9 ^ (8 * (v11 != v10)))))(vaddq_s64(a2, v17), vaddq_s64(a3, v17), vaddq_s64(a4, v17), vaddq_s64(a5, v17), vaddq_s64(a6, v17), vaddq_s64(a7, v17), vaddq_s64(a8, v17), vaddq_s64(a9, v17));
}

uint64_t sub_10013DED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v8 = a3 - 1;
  *(v7 + 1448) = v8;
  *(a1 + v8) = ((v6 - 125) ^ v5) * (v6 - 108);
  return (*(a2 + 8 * (((v8 != 0) * v3) ^ v4)))();
}

uint64_t sub_10013DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (LODWORD(STACK[0xA7C]) - 1443455193) - ((2 * (LODWORD(STACK[0xA7C]) - 1443455193)) & 0xA1409094) + v9;
  *(v10 + 1424) = v11 ^ v9;
  return (*(a8 + 8 * ((120 * (v11 == (((v8 ^ 0x62Fu) + 4252) ^ (v9 + 1979)) + 656 * (v8 ^ 0x62Fu))) ^ v8)))();
}

uint64_t sub_10013E1F4(uint64_t a1, uint64_t a2, int a3, int64x2_t a4, int64x2_t a5, int64x2_t a6, int64x2_t a7, int64x2_t a8, int64x2_t a9, int64x2_t a10, int64x2_t a11)
{
  v18 = veorq_s8(vaddq_s64(a10, v13), v14);
  v41.val[3] = veorq_s8(vaddq_s64(a9, v13), v14);
  v41.val[2] = veorq_s8(vaddq_s64(a4, v13), v14);
  v41.val[1] = veorq_s8(vaddq_s64(a5, v13), v14);
  v19 = veorq_s8(vaddq_s64(a6, v13), v14);
  v20 = vaddq_s64(a10, v15);
  v21 = vaddq_s64(a9, v15);
  v22 = vaddq_s64(a4, v15);
  v23 = vaddq_s64(a5, v15);
  v41.val[0] = veorq_s8(vaddq_s64(a7, v13), v14);
  v24 = vaddq_s64(a6, v15);
  v40.val[0] = vaddq_s64(a7, v15);
  v25 = v41.val[1].i64[0] * v23.i64[0];
  v26 = v41.val[1].i64[1] * v23.i64[1];
  v27 = v41.val[2].i64[1] * v22.i64[1];
  v40.val[0].i64[0] *= v41.val[0].i64[0];
  v28 = v41.val[2].i64[0] * v22.i64[0];
  v40.val[0].i64[1] *= v41.val[0].i64[1];
  v40.val[1].i64[0] = v19.i64[0] * v24.i64[0];
  v41.val[2].i64[0] = v41.val[3].i64[0] * v21.i64[0];
  v29 = v18.i64[1] * v20.i64[1];
  v41.val[2].i64[1] = v41.val[3].i64[1] * v21.i64[1];
  v30 = v18.i64[0] * v20.i64[0];
  v40.val[1].i64[1] = v19.i64[1] * v24.i64[1];
  v31 = veorq_s8(vaddq_s64(a11, v13), v14);
  v32 = vaddq_s64(a11, v15);
  v41.val[1].i64[0] = v30;
  v40.val[2].i64[0] = v25;
  v33 = STACK[0x628];
  v34 = v31.i64[1] * v32.i64[1];
  v41.val[1].i64[1] = v29;
  v35 = v31.i64[0] * v32.i64[0];
  v36 = veorq_s8(vaddq_s64(a8, v13), v14);
  v40.val[2].i64[1] = v26;
  v37 = vaddq_s64(a8, v15);
  v41.val[0].i64[0] = v35;
  v41.val[0].i64[1] = v34;
  v40.val[3].i64[0] = v28;
  v40.val[3].i64[1] = v27;
  v41.val[3].i64[0] = v36.i64[0] * v37.i64[0];
  v41.val[3].i64[1] = v36.i64[1] * v37.i64[1];
  v36.i64[0] = vqtbl4q_s8(v41, v16).u64[0];
  v36.i64[1] = vqtbl4q_s8(v40, v16).u64[0];
  v38 = vrev64q_s8(v36);
  *(a1 + a2) = vextq_s8(v38, v38, 8uLL);
  return (*(v33 + 8 * (((v12 == 0) * a3) ^ v11)))(vaddq_s64(a4, v17), vaddq_s64(a5, v17), vaddq_s64(a6, v17), vaddq_s64(a7, v17), vaddq_s64(a8, v17), vaddq_s64(a9, v17), vaddq_s64(a10, v17), vaddq_s64(a11, v17));
}

uint64_t sub_10013E418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8 - 1;
  *(v14 + 1424) = v15;
  *(v9 + v15) = ((v12 - 125) ^ v10) * (v12 - 108);
  return (*(a8 + 8 * (((v15 == 0) * v11) ^ v13)))();
}

uint64_t sub_10013E66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v15[60] = a8;
  LODWORD(STACK[0xD28]) = v14;
  LOWORD(STACK[0xD2E]) = v8;
  LODWORD(STACK[0xD30]) = v13;
  LODWORD(STACK[0xD34]) = v9;
  v15[208] = v11;
  v15[209] = v12;
  return (*(a7 + 8 * (((a8 != a6) * ((((v10 + 29) | 0x42) + 4905) ^ (v10 + 942845122) & 0xC7CD65CF)) ^ v10)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_10013E724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 7652)))(32);
  v10 = STACK[0x628];
  STACK[0xB30] = v9 + 0x51CE20ABD81C933BLL;
  return (*(v10 + 8 * (((v9 == 0) * ((((v8 - 2329) | 0x104A) - 102) ^ 0x1238)) ^ v8)))();
}

uint64_t sub_10013E7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(v11 + 1680) = v10;
  *(a1 + 16) = ((v8 - 4711) ^ 0x2030A9FB) + v9;
  v13 = (*(a8 + 8 * (v8 + 5913)))((v9 - 1443455183));
  v14 = STACK[0x628];
  *(a1 + 24) = v13;
  return (*(v14 + 8 * (((v13 == 0) * (v8 - 4681)) ^ v8)))();
}

uint64_t sub_10013E880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x610] = v9[143] - 0x51CE20ABD81C9323;
  v10 = LOWORD(STACK[0xD2E]);
  LODWORD(STACK[0x5B0]) = v10;
  LODWORD(STACK[0x5A0]) = v10 ^ 0xFFFFC817;
  v11 = STACK[0xD30];
  LODWORD(STACK[0x510]) = LODWORD(STACK[0xD34]) - ((2 * LODWORD(STACK[0xD34]) + 1408056910) & 0xC765C27C) + 229212261;
  STACK[0x600] = v9[56] - 0x51CE20ABD81C9323;
  v12 = LOWORD(STACK[0xD66]);
  LODWORD(STACK[0x590]) = v12;
  LODWORD(STACK[0x580]) = v12 ^ 0x47A0;
  v13 = STACK[0xD68];
  LODWORD(STACK[0x500]) = LODWORD(STACK[0xD6C]) - ((2 * LODWORD(STACK[0xD6C]) + 1408056910) & 0xC765C27C) + 229212261;
  STACK[0x5F0] = v9[121] - 0x51CE20ABD81C9323;
  LODWORD(STACK[0x530]) = v11;
  LODWORD(STACK[0x570]) = v11 - ((2 * v11 + 1408056910) & 0xC765C27C) + 229212261;
  LODWORD(STACK[0x520]) = v13;
  LODWORD(STACK[0x560]) = v13 - ((2 * v13 + 1408056910) & 0xC765C27C) + 229212261;
  LODWORD(STACK[0x550]) = LODWORD(STACK[0x634]) - ((2 * LODWORD(STACK[0x634]) + 1408056910) & 0xC765C27C) + 229212261;
  v14 = STACK[0xAD4];
  v15 = (2 * LODWORD(STACK[0xAD4]) - 311119834) & 0xC765C27C;
  STACK[0x5E0] = v9[150] - 0x51CE20ABD81C9323;
  LODWORD(STACK[0x540]) = v14 - v15 + 1517107537;
  STACK[0x5D0] = v9[86] - 0x51CE20ABD81C9323;
  v16 = *(a8 + 8 * (v8 + 570));
  LODWORD(STACK[0x5C0]) = 1443455197;
  return v16(0x6C6988A454026602, 0x5DDD64CED08C733FLL);
}

uint64_t sub_10013EAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x6CC]) = a6;
  if (a6 == 68588956)
  {
    v11 = v9[8];
    v12 = *(v11 - 0x51CE20ABD81C9333);
    v13 = v9[143];
    *(v13 - 0x51CE20ABD81C9333) = v12;
    *(v13 - 0x51CE20ABD81C933BLL) = *(v11 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * ((107 * (((v12 == 0x51CE20ABD81C933BLL) ^ (-115 * (v8 ^ 0xFB))) & 1)) ^ (v8 + 2659))))();
  }

  else if (a6 == 68545953)
  {
    return (*(a8 + 8 * (((*(v9[60] - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL) * ((3 * ((v8 + 2039844097) & 0x866A6BFD ^ 0x8FB)) ^ 0x9A1)) ^ (v8 + 163))))();
  }

  else
  {
    return (*(a8 + 8 * (((4 * (a6 == ((v8 + 5551) ^ 0x416BDE1))) | (32 * (a6 == ((v8 + 5551) ^ 0x416BDE1)))) ^ (v8 - 1650))))(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_10013F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 ^ 0x3395)))();
  v11 = STACK[0x628];
  *(v8 - 0x51CE20ABD81C9323) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_10013F1D4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = (a2 + 5783) + v2 - 0x720E0F4A27669678;
  v6 = v4 > 0xAFCC34B6 && v4 < (a2 + 382) + (v3 - 1703714790) + 2949390571u;
  return (*(a1 + 8 * ((19 * v6) ^ a2)))();
}

uint64_t sub_10013F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xA5C]) = a6;
  v9[66] = v9[84];
  v9[62] = *(a8 + 8 * (v8 - 3990));
  return (*(a8 + 8 * ((v8 - 3990) ^ 0x139D)))();
}

uint64_t sub_10013F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 - 0x1138F6A92264F486);
  *(v10 + 792) = 0x51CE20ABD81C933BLL;
  *(v10 + 1152) = 0x2BA8F835E94EE055;
  return (*(a8 + 8 * (((v11 == 0x5A0411E37F4B9882) * ((v8 ^ 0x1D27) + 3357)) ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_10013F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15 = *(v10 + a7 + 3648);
  v16 = (*(v10 + a7 + 3647) << 24) | (v15 << 16) | (*(v10 + a7 + 3649) << 8) | *(a7 + (a1 ^ a2) + v7);
  v17 = (v16 ^ v9) - 138546726 + (v8 & (2 * v16));
  v18 = *(((2 * (v10 + 3651)) & 0x7B9FDFFE3DD77D20) + ((v10 + 3651) ^ 0xFDCFEFFF1EEBBE90) + a7 + 0x2301000E1144170);
  LOWORD(v16) = *(((2 * (v10 + 3651)) & 0x7B9FDFFE3DD77D20) + ((v10 + 3651) ^ 0xFDCFEFFF1EEBBE90) + a7 + 0x2301000E1144171);
  v19 = v11 - 138546726;
  v20 = v10 + 3657;
  v21 = ((v16 | (v18 << 8)) - 2 * ((v16 | (v18 << 8)) & 0x274B ^ v16 & 2) - 22707);
  switch(v21)
  {
    case 9168:
      return (*(a6 + 8 * ((3793 * (v19 == ((v13 + 1090689953) & 0xBEFD5FFD ^ 0x56096E8C))) ^ (v13 - 3196))))();
    case 63382:
      *(v14 + 240) = a7 + v20;
      *(v14 + 440) = v12 + 10;
      return (*(a6 + 8 * ((104 * (v17 != (((((2 * v13) ^ 0x3650) - 4556) | 0xA2) ^ 0x5609627B))) ^ (v13 - 3344))))();
    case 12354:
      return (*(a6 + 8 * (((((v13 - 1697) | 0x240) - 3690) * (v19 != 1443455197)) ^ (v13 - 3197))))();
    default:
      return sub_10013F3CC(a1, a2, v15, a3, a4, 68545950, a5, a6);
  }
}

uint64_t sub_10013FAA0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = a2 ^ 0x395C;
  v5 = *(v2 - 0x6766E6DBB1D63FA1);
  *(v3 + 32) = v5;
  return (*(a1 + 8 * ((v5 == 0x1138F6A92264F486) ^ v4)))();
}

uint64_t sub_10013FD04@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(v2 + 304);
  *(v2 + 616) = v3;
  return (*(a1 + 8 * (((((2407 * (a2 ^ 0x12CC) + 806036233) & 0xCFF4CF7E) - 1349) * (v3 == 0)) | a2 ^ 0x1FC2)))();
}

uint64_t sub_10013FD68@<X0>(int a1@<W8>)
{
  STACK[0xD50] = v2;
  STACK[0xD58] = v1;
  return (*(v3 + 8 * (((0xDC2FE20D517D747 - v1 + v2 - 10 < (((a1 - 1150) | 0x202u) ^ 0xFFFFFFFFFFFFFD2CLL)) * (83 * (a1 ^ 0x56C) + 4866)) ^ a1)))();
}

uint64_t sub_10013FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x700] = STACK[0xB00];
  v9 = *(v8 + 8 * (v7 - 4037));
  LODWORD(STACK[0x784]) = v6;
  STACK[0x8A8] = v9;
  return (*(v8 + 8 * (v7 - 553)))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882, v8);
}

uint64_t sub_10013FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x724]) = a6;
  if (a6 == 68588956)
  {
    v12 = v10[20];
    v13 = *(v12 - 0x51CE20ABD81C9333);
    v14 = v10[56];
    *(v14 - 0x51CE20ABD81C9333) = v13;
    *(v14 - 0x51CE20ABD81C933BLL) = *(v12 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * (((v13 == 0x51CE20ABD81C933BLL) * ((v8 ^ 0x3A23) - 10226)) ^ (v8 + 5040))))();
  }

  else if (a6 == 68545953)
  {
    return (*(a8 + 8 * (((*(v10[108] - 0x5A0411E37F4B987ALL) != 0x51CE20ABD81C933BLL) * ((v8 - 2220) ^ 0xAEA)) ^ (v8 + 5004))))();
  }

  else
  {
    return (*(a8 + 8 * ((230 * (a6 == v9 + (v8 ^ 0x3507) - 8819 - 1366)) ^ (v8 - 1623))))();
  }
}

uint64_t sub_100140394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 + 5533)))();
  v11 = STACK[0x628];
  *(v8 - 0x51CE20ABD81C9323) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_1001404F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  LODWORD(STACK[0xD84]) = v8;
  *(v11 + 1744) = v10;
  v13 = v10 != 0x743644F7CD5D7909 && a8 != a6;
  return (*(a7 + 8 * ((v13 * ((58 * (v9 ^ 0x5B0)) ^ 0x12C3)) ^ v9)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100140578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;
  *(v10 + 536) = v11;
  return (*(a8 + 8 * (((v11 != 0x51CE20ABD81C933BLL) * (((v9 - 4589) | 0x200) - 642)) ^ (v9 - 279))))(a1, a2, a3, a4, a5, 68545953);
}

uint64_t sub_10014068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 224) - 0x51CE20ABD81C9323);
  *(v9 + 1232) = v10;
  return (*(a8 + 8 * ((90 * (((((v8 ^ 0x1DF4) - 1092) ^ (v10 == 0)) & 1) == 0)) ^ v8)))();
}

uint64_t sub_1001406FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = (v7 - 1983515337);
  v8[227] = v9;
  v10 = v8[33];
  v8[228] = v10;
  return (*(a6 + 8 * ((((v9 + 0x298D63449789F382 - v10) > 9) * (((a7 + 516) | 0x240) + 6917)) ^ a7)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_1001407CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x624]) ^ 0xC89;
  v10 = LODWORD(STACK[0x624]) ^ 0x1293;
  v11 = *(*(v8 + 296) - 0x51CE20ABD81C9323);
  *(v8 + 1256) = v11;
  return (*(a8 + 8 * (((v11 != 0) * (v10 - 1756 + 18 * v10)) ^ v9)))();
}

uint64_t sub_100140850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = ((((a7 - 1668) | 0x12C8) - 1983519897) ^ (7 * (a7 ^ 0x6E4u))) + v7;
  v8[223] = v9;
  v10 = v8[109];
  v8[224] = v10;
  return (*(a6 + 8 * ((5876 * ((v9 - v10 + 0x411626AAC43D58C2) > 9)) ^ a7)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100140938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 184) - 0x51CE20ABD81C9323);
  *(v9 + 600) = v10;
  return (*(a8 + 8 * ((11 * (((v8 ^ 0x31C5 ^ (v10 == 0)) & 1) == 0)) ^ v8)))();
}

uint64_t sub_1001409BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = (v7 - 1983515337);
  v8[225] = v9;
  v10 = v8[6];
  v8[226] = v10;
  return (*(a6 + 8 * ((3397 * (v9 - v10 + (2 * (a7 ^ 0x18C5u)) + 0xCD7A75C2967C3DDLL > ((a7 ^ 0x18C5u) - 1659) - 739)) ^ a7)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100140AAC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(*(v2 + 792) - 0x51CE20ABD81C9323);
  STACK[0x670] = v3;
  return (*(a1 + 8 * ((v3 != 0) ^ a2)))();
}

uint64_t sub_100140AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = (a7 - 2018) | 0x25;
  v10 = (v7 - 1983515337);
  v8[219] = v10;
  v11 = v8[144];
  v8[220] = v11;
  return (*(a6 + 8 * (((v10 - v11 + 0x2BA8F835E94EE055 > ((v9 - 692) ^ 0x2F2uLL)) * ((v9 + 1986260256) & 0x899C1FFE ^ 0x37E)) ^ v9)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100140BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a6 == 68545953)
  {
    return (*(a8 + 8 * ((3493 * (*(*(v8 + 640) - 0x1138F6A92264F425) == (((2 * LOBYTE(STACK[0x624])) ^ 0x68) + 81))) ^ (LODWORD(STACK[0x624]) + 882))))();
  }

  v9 = STACK[0x624];
  if (a6 == 68588956)
  {
    v10 = *(v8 + 640);
    v11 = *(v10 - 0x1138F6A92264F472);
    if (v11 == 408423771)
    {
      return (*(a8 + 8 * ((((v9 + 3610) | 6) - 715) ^ (v9 - 3791))))();
    }

    else if (v11 == 408423770)
    {
      if (*(v10 - 0x1138F6A92264F425) == 69)
      {
        v13 = 68545948;
      }

      else
      {
        v13 = 68545952;
      }

      return (*(a8 + 8 * (LODWORD(STACK[0x624]) + 2623)))(a1, a2, a3, a4, a5, v13);
    }

    else
    {
      return sub_1001419A8(a1, a2, a3, a4, a5, 68545952, a7, a8);
    }
  }

  else
  {
    LODWORD(STACK[0x7BC]) = a6;
    return (*(a8 + 8 * (((a6 == ((v9 + 1367222034) & 0xAE81CF5F) + 68586588) * (v9 - 4318)) ^ (v9 - 3039))))(a1, a2, a3, a4, a5, 68588956);
  }
}

uint64_t sub_100140D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 1112) - 0x51CE20ABD81C9323);
  *(v9 + 696) = v10;
  return (*(a8 + 8 * ((((((v8 + 773715425) & 0xD1E1FEEE) - 1156) ^ (v8 + 1837048320) & 0x9280CDBD) * (v10 == 0)) ^ v8)))();
}

uint64_t sub_100140DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = (v7 - 1983515337);
  v8[221] = v9;
  v10 = v8[71];
  v8[222] = v10;
  return (*(a6 + 8 * ((7980 * (v9 - v10 + (58 * (a7 ^ 0xDEFu)) + 0x1844342EE82B0F3BLL > 9)) ^ a7)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100140FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10[152] = v9;
  v10[28] = 0x51CE20ABD81C933BLL;
  v10[33] = 0x298D63449789F382;
  return (*(a7 + 8 * (((a8 != a6) * ((((v8 - 7574) | 0x120A) - 4469) ^ 0x192)) ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100141078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 == 68545953)
  {
    LODWORD(STACK[0x880]) = ((40 * (v8 ^ 0x120E)) ^ 0x7250AC61) * *(*(v9 + 640) - 0x1138F6A92264F476) - 1356996924;
    return (*(a8 + 8 * (v8 - 1333)))();
  }

  else if (a6 == 68588956)
  {
    return (*(a8 + 8 * (LODWORD(STACK[0x624]) - 1333)))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
  }

  else
  {
    v11 = STACK[0x624];
    LODWORD(STACK[0x7BC]) = a6;
    return (*(a8 + 8 * (v11 - 3039)))();
  }
}

uint64_t sub_10014116C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10 = *(a8 - 0x1138F6A92264F486);
  *(v9 + 1112) = 0x51CE20ABD81C933BLL;
  *(v9 + 568) = 0x1844342EE82B2209;
  return (*(a7 + 8 * (v8 + 6 * (((v8 - 50 + v8 - 126 + 1) ^ (v10 == a6)) & 1))))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_1001412B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xA30]) = 1443455193;
  LODWORD(STACK[0xA3C]) = 1443455193;
  v11 = *(v9 - 0x1138F6A92264F486);
  *(v10 + 296) = 0x51CE20ABD81C933BLL;
  *(v10 + 872) = 0x411626AAC43D58C2;
  return (*(a8 + 8 * (((v11 == 0x5A0411E37F4B9882) * (((v8 - 8981) | 0x12A) ^ 0x186)) ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_1001413E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9[80] - 0x1138F6A92264F486);
  v9[23] = 0x51CE20ABD81C933BLL;
  v9[6] = 0xCD7A75C2967D6ABLL;
  return (*(a8 + 8 * ((15 * (((v10 == 0x5A0411E37F4B9882) ^ ((v8 + 23) ^ (v8 + 78))) & 1)) ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100141490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v8 - 9139) | 0x102;
  *(v9 + 168) = *(a8 + 8 * v10);
  return (*(a8 + 8 * (v10 ^ 0xC1B ^ (v10 + 1245))))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
}

uint64_t sub_1001415B0@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v8 = v4 ^ 0x7AF;
  v9 = *(v5 - 0x1138F6A92264F422) ^ 0xCD47EDD8;
  v10 = (*(v5 - 0x1138F6A92264F40ELL) ^ 0xC75C8EDA) - 318799954 + ((2 * *(v5 - 0x1138F6A92264F40ELL)) & 0xEFBF36BE ^ (((v8 - 4032) | 0x4A0) + 1627790358));
  v11 = 301143701 * ((((2 * (v6 - 240)) | 0x5182D9B8) - (v6 - 240) + 1463718692) ^ 0xD369F1AE);
  v7[283] = v5 + 0x16E7A4B2981C1BC5;
  v7[284] = v2;
  *(v6 - 176) = (v8 - 1495) ^ v11;
  *(v6 - 224) = v11 ^ 0x851992B0;
  *(v6 - 240) = v10 ^ v11;
  *(v6 - 200) = v11 + v3 - 400282010;
  *(v6 - 216) = v9 - v11;
  v7[281] = a2;
  v7[278] = a2;
  v12 = (*(a1 + 8 * (v8 + 6321)))(v6 - 240);
  return (*(STACK[0x628] + 8 * v8))(v12);
}

uint64_t sub_100141780@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v8 = v5 ^ 0x4BF8;
  v9 = v7[127];
  v10 = 199319723 * ((((2 * (v6 - 240)) | 0xE580CBE0) - (v6 - 240) - 1925211632) ^ 0xC7308B38);
  v7[278] = a2;
  v7[277] = a2;
  *(v6 - 224) = v10 + v3 - (((v3 << ((-2 * (v5 ^ 0xEA)) ^ 0xF5)) + 1408056910) & 0xAF94A47A) - 2118061724;
  *(v6 - 196) = v10 + (v4 ^ 0x96FEFEFF) + ((2 * v4) & 0x2DFDFDFE) + 1876893115;
  *(v6 - 192) = ((v5 ^ 0x4BF8) - 205) ^ v10;
  v7[281] = v2;
  v7[280] = v9;
  v11 = (*(a1 + 8 * (v5 ^ 0x70E5)))(v6 - 240);
  return (*(STACK[0x628] + 8 * v8))(v11);
}

uint64_t sub_1001419E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[69] = v9[80];
  v9[5] = *(a8 + 8 * v8);
  return (*(a8 + 8 * (v8 - 7420 + ((v8 + 8593) | 0x502))))();
}

uint64_t sub_100141A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v8 - 0x1138F6A92264F47ELL) = a1 + 0x5A0411E37F4B9882;
  LODWORD(STACK[0x7BC]) = 68588956;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_100141BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(v9 + 40 * v8 + 28);
  switch(v12)
  {
    case 1:
      *(v11 + 392) = *(a8 + 8 * (v10 - 3915));
      return (*(a8 + 8 * (((v10 - 1934) ^ 0xD8E) + v10 - 3915)))();
    case 3:
      return (*(a8 + 8 * (((((*(v9 + 40 * v8 + 16) == 0) ^ (v10 + 59)) & 1) * (((v10 - 4302) | 0x540) ^ 0x757)) ^ (v10 + 1042))))();
    case 2:
      return (*(a8 + 8 * (((*(v11 + 472) == a7) * (v10 - 4734)) ^ (v10 + 970))))(a1, a2, a3, a4, a5, 68545945);
    default:
      return (*(a8 + 8 * (v10 + 1)))(a1, a2, a3, a4, a5, 68545950);
  }
}

void sub_100141D74(id a1)
{
  v1 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0D20) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0D20) ^ 0x1C))] ^ 0x7A]) + 824);
  v2 = *(v1 - 51807427);
  v3 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + v2) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((dword_1002E0DA8 + v2) ^ 0x1C))] ^ 0x45]) + 766);
  v4 = (*(v3 - 1056958627) ^ v2) - &v12;
  v5 = 1912442209 * v4 + 0x73F3BA17ADCB0E9CLL;
  v6 = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  *(v1 - 51807427) = v5;
  *(v3 - 1056958627) = v6;
  LOBYTE(v5) = *(v1 - 51807427);
  v7 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0D20) ^ 0x1C)) ^ byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 - dword_1002E0D20) ^ 0x1C))] ^ 0xD4]) + 325) - 2062743291;
  (*&v7[8 * ((97 * ((v6 - v5) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((v6 - v5) ^ 0x1C))] ^ 0x92]) + 84104])(*(*(&off_1002DD400 + (byte_100295580[byte_10027C8F0[(97 * ((v6 + v5) ^ 0x1C))] ^ 0xD6] ^ (97 * ((v6 + v5) ^ 0x1C))) + 489) - 1605683619));
  v8 = *(v1 - 51807427);
  v9 = *(v3 - 1056958627);
  v10 = *(*(&off_1002DD400 + (byte_100295780[byte_10027CBF0[(97 * ((v9 + v8) ^ 0x1C))] ^ 0xA8] ^ (97 * ((v9 + v8) ^ 0x1C))) + 755) - 223125623);
  v11 = *&v7[8 * (byte_10027CCF0[byte_1002C6050[(97 * (v8 ^ 0x1C ^ v9))] ^ 0xCA] ^ (97 * (v8 ^ 0x1C ^ v9))) + 85320];

  v11(v10);
}

uint64_t sub_100142048(uint64_t a1)
{
  v1 = *(&off_1002DD400 + ((97 * (dword_1002E0CF8 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295680[byte_10027C9F0[(97 * (dword_1002E0CF8 ^ 0x1C ^ dword_1002E0DA8))] ^ 0xF4]) + 393);
  v2 = *(v1 - 1428675934);
  v3 = *(&off_1002DD400 + (byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 - v2) ^ 0x1C))] ^ 0xF6] ^ (97 * ((dword_1002E0DA8 - v2) ^ 0x1C))) + 780);
  v4 = 1912442209 * (v2 ^ &v16 ^ 0x71B9CF6610DE981CLL ^ *(v3 - 1056958627));
  *(v1 - 1428675934) = v4;
  *(v3 - 1056958627) = v4;
  LOBYTE(v4) = 97 * (*(v1 - 1428675934) ^ 0x1C ^ v4);
  v5 = (*(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0CF8) ^ 0x1C)) ^ byte_100295680[byte_10027C9F0[(97 * ((dword_1002E0DA8 + dword_1002E0CF8) ^ 0x1C))] ^ 0xF6]) + 505) - 2062743291);
  v7 = (v5[(byte_10027CAF0[byte_1002C5E50[v4] ^ 0x5B] ^ v4) + 10610])();
  v8 = 97 * (*(v1 - 1428675934) ^ 0x1C ^ *(v3 - 1056958627));
  (v5[(byte_100295780[byte_10027CBF0[v8] ^ 0xD4] ^ v8) + 10422])(v7, 0, 0, &v14, 1, 0);
  result = (v5[((97 * ((*(v3 - 1056958627) - *(v1 - 1428675934)) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((*(v3 - 1056958627) - *(v1 - 1428675934)) ^ 0x1C))] ^ 0xF6]) + 10664])(a1, 1);
  v10 = *(v1 - 1428675934);
  v11 = *(v3 - 1056958627);
  v12 = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[(97 * ((v11 + v10) ^ 0x1C))] ^ 0x7A] ^ (97 * ((v11 + v10) ^ 0x1C))) + 373);
  v13 = *(&off_1002DD400 + ((97 * ((v11 - v10) ^ 0x1C)) ^ byte_100295780[byte_10027CBF0[(97 * ((v11 - v10) ^ 0x1C))] ^ 0xD4]) + 46);
  if (v15 == 65530)
  {
    __asm { BRAA            X8, X17 }
  }

  if (v15 == 65531)
  {
    v5[10665](v12 - 515190054, sub_100191B00);
    (v5[10570])(0x1002E0E08);
    v5[10665](v12 - 515190054, sub_100191B00);
    __asm { BRAA            X8, X17 }
  }

  return result;
}

void sub_1001450B0(uint64_t a1)
{
  v1 = 1949688233 * ((2 * (a1 & 0x71E1E147) - a1 - 1910628680) ^ 0x69594833);
  if (*(a1 + 24))
  {
    v2 = *(a1 + 32) == 0x2B1A0449E8A6C928;
  }

  else
  {
    v2 = 1;
  }

  v7 = !v2 && *(a1 + 8) != 0 && *(a1 + 48) != 0x2B1A0449E8A6C928 && (*(a1 + 44) ^ v1) == 1301474796 && (*a1 - v1 - 1363832758) < 0xFFFFFFF0;
  __asm { BRAA            X15, X17 }
}

uint64_t sub_1001451C8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char a7, uint64_t a8, unsigned int a9, int a10, unsigned int a11)
{
  v19 = 1029623381 * (*(v16 + 4) ^ v15) - 75212483;
  v20 = 1110906037 * ((((2 * &a3) | 0x60C96608) - &a3 - 811905796) ^ 0xB923DFB4);
  a10 = v14 + v20 + 79622451;
  a11 = v20 + (v19 ^ 0xF6EDECDF) + ((2 * v19) & 0xEDDBD9BE) + 1595634682;
  a5 = v20 + v17 + 262;
  a8 = v12;
  a6 = a1;
  a3 = v13;
  a4 = v11;
  a9 = 155559965 - v20;
  a7 = (-75 * ((((2 * &a3) | 8) - &a3 - 4) ^ 0xB4)) ^ 0x4F;
  v21 = (*(v18 + 8 * (v17 + 6182)))(&a3);
  return (*(v18 + 8 * v17))(v21);
}

void sub_1001452EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 16) + 1084270361 * ((2 * (a1 & 0x5B2B8211) - a1 - 1529578002) ^ 0x68FD82F4);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1001453CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  v18 = *v14 + v13;
  a10 = v15;
  a11 = v18 - 2013960730;
  v19 = (*(v16 + 8 * (v17 ^ 0x2D6E)))(*(v12 + 4), 26, &a10, 16, &a10, &a12);
  return (*(v16 + 8 * ((8705 * (a12 == (v17 - 13) - 1864)) ^ v17)))(v19);
}

uint64_t sub_1001456E0(unsigned int a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = v4 + a1;
  v9 = *(v8 - 31);
  v10 = v6 + a1;
  *(v10 - 15) = *(v8 - 15);
  *(v10 - 31) = v9;
  return (*(v7 + 8 * ((14 * (a4 == 0)) ^ v5)))(a1 + a2, a2, a3, (a4 + a3));
}

void sub_100145818(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *a1 + 1949688233 * ((-2 - ((a1 | 0xFD3CBC75) + (~a1 | 0x2C3438A))) ^ 0xE5841501);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100145BD4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = (v21 + 879062600) & 0xCB9A8DBF;
  *(v22 - 104) = v24;
  *(v22 - 100) = v21 + 1004;
  v25 = ((1679540352 * v17) | ((v21 + 1004 - 188205183 * v17 + 734079008) >> 25)) - 526596992;
  v26 = ((2 * v25) & 0xBFFFFDFE) + (v25 ^ 0xDFFFFEFF);
  v27 = ((-1439956992 * v18) | ((-1083905397 * v18 - 545998928) >> 14)) - 557842432 - 2 * ((((-1439956992 * v18) | ((-1083905397 * v18 - 545998928) >> 14)) - 557842432) & 0x2D1B953F ^ ((-5493 * v18 - 18512) >> 14)) - 1390701252;
  v28 = ((-968007936 * v19) | ((-708424353 * v19 + 435806915) >> 24)) - 102579456;
  v29 = ((2 * v28) & 0xFBDDCCDE) + (v28 ^ 0xFDEEE66F);
  v30 = v26 + ((((-805306368 * a1) | ((v24 - 41692451 * a1 + 2048997336) >> 4)) - 805306368 - 2 * ((((-805306368 * a1) | ((v24 - 41692451 * a1 + 2048997336) >> 4)) - 805306368) & 0x2D1B953E ^ ((v24 - 41692451 * a1 + 2048997336) >> 4) & 2) - 1390701252) ^ v27) + 571546258 + v29;
  v31 = ((-1943928832 * v30) | ((-663337455 * v30) >> 15)) - 2 * (((-1943928832 * v30) | ((-663337455 * v30) >> 15)) & 0x47AC0C4D ^ ((-663337455 * v30) >> 15) & 9) + 1202457668;
  v32 = ((-1094309888 * v29) | ((947378373 * v29 - 1625160555) >> 21)) + 270837760;
  v33 = ((2 * v32) & 0xEBF5AF76) + (v32 ^ 0x75FAD7BB);
  v34 = -114565963 * (v31 ^ 0x47AC0C44);
  v35 = ((-1393147904 * v26) | ((1709880281 * v26 + 1889438937) >> 18)) - 1556725760;
  v36 = ((2 * v35) & 0x3FDF7FFC) + (v35 ^ 0x9FEFBFFE);
  v37 = -592117760 * (v31 ^ 0x47AC0C44);
  v38 = (v31 ^ (((83361792 * (v27 ^ 0xAD1B953C)) | ((-614547297 * (v27 ^ 0xAD1B953C)) >> 13)) - 2 * (((83361792 * (v27 ^ 0xAD1B953C)) & 0x47A80000 | ((-614547297 * (v27 ^ 0xAD1B953C)) >> 13) & 0x47AC0C5C) ^ ((-614547297 * (v27 ^ 0xAD1B953C)) >> 13) & 0x18) + 1202457668)) - (v33 + v36) + 367695801;
  v39 = 39715979 * v38;
  v40 = (v37 & 0xFFFF0000 | HIWORD(v34)) - 2 * ((v37 & 0x3BA90000 | HIWORD(v34) & 0xB0CF) ^ HIWORD(v34) & 5) + 1000976586;
  v41 = 304873472 * v38;
  v42 = -1047194101 * v36 + 1230826518;
  v43 = ((2 * (v41 & 0xFFFC0000 | (v39 >> 14))) & 0xF7FF3FBA) + ((v41 & 0xFFFC0000 | (v39 >> 14)) ^ 0xFBFF9FDD);
  v44 = ((-738197504 * v33) | ((1249756853 * v33 + 779867849) >> 6)) + 603979776;
  v45 = ((2 * v44) & 0xAB7AF5DE) + (v44 ^ 0x55BD7AEF);
  v46 = v45 + v43 + (v40 ^ (((-1336410112 * v36) | (v42 >> 13)) + 1622147072 - 2 * ((((-1336410112 * v36) | (v42 >> 13)) + 1622147072) & 0x3BA9B0DE ^ (v42 >> 13) & 0x14) + 1000976586)) + 2 * ((v40 ^ 0x3BA9B0CA) & (((-1336410112 * v36) | (v42 >> 13)) + 1622147072)) - 1371347660;
  HIDWORD(v48) = HIWORD(v34);
  LODWORD(v48) = 205960249 * (v40 ^ 0x3BA9B0CA);
  v47 = v48 >> 1;
  v49 = ((1887436800 * v46) | ((-657542943 * v46) >> 9)) - 2 * (((1887436800 * v46) | ((-657542943 * v46) >> 9)) & 0x58337A9B ^ ((-657542943 * v46) >> 9) & 8) + 1479768723;
  v50 = (((-1080474397 * v43 + 935955209) >> 3) | (1610612736 * v43)) + 0x20000000 - 2 * (((((-1080474397 * v43 + 935955209) >> 3) | (1610612736 * v43)) + 0x20000000) & 0x6B442CD7 ^ ((-1080474397 * v43 + 935955209) >> 3) & 4) - 347853613;
  v51 = v47 ^ (((1728053248 * v45) | ((-1673061785 * v45 - 2046934057) >> 8)) - 687865856);
  v52 = v50 ^ (v51 - ((2 * v51) & 0xD68859A6) - 347853613);
  v53 = (v52 - ((2 * v52) & 0xB066F526) + 1479768723) ^ v49;
  v54 = ((v47 - 347853613 + (~(2 * v47) | 0x2977A659) + 1) ^ 0xB1B5C24C ^ v50) + (v49 ^ 0x58337A93) - v53 + 1991153371;
  HIDWORD(v194) = v50;
  v55 = (v54 - ((2 * v54) & 0xD68859A6) - 347853613) ^ v50;
  v54 ^= 0xEAEBAA1E;
  v56 = ((2 * (v54 + (v49 ^ 0x58337A93))) & 0x7DF977FE) + ((v54 + (v49 ^ 0x58337A93)) ^ 0x3EFCBBFF);
  v57 = ((2 * (v53 - v54)) & 0xF5EFF656) + ((v53 - v54) ^ 0xFAF7FB2B);
  v58 = 282200595 * v56 + 1287132691;
  LODWORD(v192) = v55;
  v59 = ((1145044992 * (v55 ^ 0xEAEBAA1E)) | ((-1473048303 * (v55 ^ 0xEAEBAA1E)) >> 10)) - 2 * (((1145044992 * (v55 ^ 0xEAEBAA1E)) | ((-1473048303 * (v55 ^ 0xEAEBAA1E)) >> 10)) & 0x65FDD53F ^ ((-1473048303 * (v55 ^ 0xEAEBAA1E)) >> 10) & 6) - 436349639;
  LODWORD(v194) = v57;
  v60 = ((-2101084160 * v57) | ((1923850417 * v57 - 1848150203) >> 14)) - 585891840 - 2 * ((((-2101084160 * v57) | ((1923850417 * v57 - 1848150203) >> 14)) - 585891840) & 0x371C6E7F ^ ((1923850417 * v57 - 1848150203) >> 14) & 0x18) - 1222873497;
  v61 = ((2 * (((564401190 * v56) | (v58 >> 31)) - 1720701914)) & 0xBD29EDF6) + ((((564401190 * v56) | (v58 >> 31)) - 1720701914) ^ 0xDE94F6FB);
  v62 = (v59 ^ (((-1462170832 * v54) | ((-1433562957 * v54) >> 28)) - ((2 * ((-1462170832 * v54) | ((-1433562957 * v54) >> 28))) & 0xCBFBAA72) - 436349639)) - v61;
  v59 ^= 0xE5FDD539;
  v63 = -1705316147 * v59;
  v64 = 1807954944 * v59;
  HIDWORD(v48) = 133599845 * ((v62 - ((2 * v62 + 1026158070) & 0x6E38DCCE) - 1783536286) ^ v60);
  LODWORD(v48) = HIDWORD(v48);
  v65 = ((2 * (v48 >> 29)) & 0xFDDFFFB6) + ((v48 >> 29) ^ 0xFEEFFFDB);
  v66 = (((562151207 * v61 + 596515523) << (v58 & 0x13) << (v58 & 0x13 ^ 0x13)) ^ ((562151207 * v61 + 596515523) >> 13)) & 0xFFFFFF80 | ((468873216 * v61 - 508809216) >> 25);
  v67 = ((2 * v66) & 0xDDD56272) + (v66 ^ 0xEEEAB139);
  v68 = 668885237 * v65 - 948698263;
  v69 = (-70508896 * v65) | (v68 >> 27);
  v70 = v68 >> 27;
  v71 = (1651507200 * (v60 ^ 0xB71C6E67)) | ((639051303 * (v60 ^ 0xB71C6E67)) >> 12);
  v72 = ((2 * v71) & 0xD377F7FC) + (v71 ^ 0x69BBFBFE);
  v73 = (v64 & 0xFFFFFC00 | (v63 >> 22)) + v72 + v67 - 1469492498 + v65;
  v74 = ((2 * ((-30801920 * v73) | ((1404698389 * v73) >> 15))) & 0x5BFBCAF6) + (((-30801920 * v73) | ((1404698389 * v73) >> 15)) ^ 0xADFDE57B);
  v75 = ((2018821184 * v72) | ((-1444850927 * v72 - 544019934) >> 26)) - 457537408;
  v76 = ((2 * v75) & 0xFF7ABFFE) + (v75 ^ 0xFFBD5FFF);
  v77 = v69 - 293573344 - 2 * ((v69 - 293573344) & 0x24D228D9 ^ v70 & 8) + 617752785;
  v78 = v76 - v74 - 1371503236 + (v77 ^ (((366379008 * v67) | ((822881197 * v67 - 403330693) >> 17)) - 725778432 - 2 * ((((366379008 * v67) | ((822881197 * v67 - 403330693) >> 17)) - 725778432) & 0x24D228D7 ^ ((822881197 * v67 - 403330693) >> 17) & 6) + 617752785));
  v79 = -1066213931 * v78;
  v80 = (654023568 * (v77 ^ 0x24D228D1)) | ((-764429895 * (v77 ^ 0x24D228D1u)) >> 28);
  v81 = 963570304 * v78;
  v82 = ((-1240989696 * v74) | ((-949995839 * v74 - 1710355387) >> 13)) + 1646788608;
  v83 = v82 - ((2 * v82) & 0x166B4E8A) + 188065605;
  v84 = v81 & 0xFFFFFF80 | (v79 >> 25);
  v85 = v80 - (v83 ^ 0xB35A745);
  v86 = ((77987840 * v76) | ((306578003 * v76 + 1830806099) >> 15)) - 1011548160 + v80 + 15794176;
  v87 = ((v86 - ((2 * v86) & 0x166B4E8A) + 188065605) ^ v83) + v84;
  v88 = v87 - ((2 * v87) & 0xED5C7612) + 1991129865;
  v89 = (((v85 + 1657924205) ^ v84) - ((2 * ((v85 + 1657924205) ^ v84)) & 0xED5C7612) + 1991129865) ^ v88;
  HIDWORD(v196) = v83;
  v197 = v88 ^ (v85 - ((2 * (v85 + 1657924205)) & 0xED5C7612) - 645913226);
  HIDWORD(a17) = (v89 - ((2 * v89) & 0x166B4E8A) + 188065605) ^ v83;
  v90 = (936612377 * (HIDWORD(a17) ^ 0x9D12E3F5)) >> (v70 & 0x55) >> (v70 & 0x55 ^ 0x15);
  v91 = v90 - 1668233216 * (HIDWORD(a17) ^ 0x9D12E3F5);
  v92 = (-1869611008 * (v197 ^ 0x9D12E3F5)) | ((-1199703799 * (v197 ^ 0x9D12E3F5)) >> 12);
  v93 = ((2 * v92) & 0xFF1BADAE) + (v92 ^ 0x7F8DD6D7);
  LODWORD(v196) = ((2 * ((v88 ^ 0x76AE3B09) - (v89 ^ 0x9D12E3F5))) & 0x3DFDFBFE) + (((v88 ^ 0x76AE3B09) - (v89 ^ 0x9D12E3F5)) ^ 0x1EFEFDFF);
  v94 = ((-2134934432 * (v89 ^ 0x9D12E3F5)) | ((-737805341 * (v89 ^ 0x9D12E3F5)) >> 27)) + v93 - 2140002007 + v91;
  v95 = ((-2062016512 * v196) | ((1156327617 * v196 - 419517759) >> 19)) - 715644928 - 2 * ((((-2062016512 * v196) | ((1156327617 * v196 - 419517759) >> 19)) - 715644928) & 0x74C4113E ^ ((1156327617 * v196 - 419517759) >> 19) & 2) + 1959006524;
  v96 = (v94 - ((2 * v94) & 0xE9882278) + 1959006524) ^ v95;
  v97 = ((2 * ((-1311145984 * v96) | ((968188851 * v96) >> 17))) & 0x7FCF8AE4) + (((-1311145984 * v96) | ((968188851 * v96) >> 17)) ^ 0xBFE7C572);
  v98 = (1281359872 * (v95 ^ 0x74C4113C)) | ((-254901661 * (v95 ^ 0x74C4113Cu)) >> 11);
  v99 = ((2 * v98) & 0xE55FEFFA) + (v98 ^ 0x72AFF7FD);
  v100 = ((-340963328 * v93) | ((-292635947 * v93 - 1012791011) >> 20)) + 546426880;
  v101 = ((2 * v100) & 0xF6F7FCFC) + (v100 ^ 0xFB7BFE7E);
  v102 = ((-433975296 * v97) | ((1363042849 * v97 - 1511135154) >> 20)) - 561717248;
  v103 = ((2 * v102) & 0x7F7DE2F6) + (v102 ^ 0xBFBEF17B);
  v104 = ((1946157056 * v90) | ((97207197 * v91) >> 6)) - v101 - v97 - v99 + 773045229;
  v105 = ((2 * (((2060035115 * v104) >> 3) | (1610612736 * v104))) & 0xFC78A42A) + ((((2060035115 * v104) >> 3) | (1610612736 * v104)) ^ 0x7E3C5215);
  v106 = ((1417674752 * v99) | ((1501737129 * v99 + 1809668603) >> 9)) - 41943040;
  v107 = ((2 * v106) & 0xDCDC26FC) + (v106 ^ 0x6E6E137E);
  v108 = ((-352394240 * v101) | ((490389433 * v101 - 772205326) >> 22)) - v107 - v103 - v105 - 1866653938;
  v109 = 2086568423 * v107 - 1298797746;
  v110 = 2047319040 * v107;
  v111 = ((1258291200 * v103) | ((1695130955 * v103 - 1122502153) >> 8)) - 150994944 - 2 * ((((1258291200 * v103) | ((1695130955 * v103 - 1122502153) >> 8)) - 150994944) & 0x200EC76E ^ ((1695130955 * v103 - 1122502153) >> 8) & 8) + 537839462;
  v112 = ((-1260201984 * v105) | ((-449405861 * v105 + 1159464585) >> 21)) - 533444608 - 2 * ((((-1260201984 * v105) | ((-449405861 * v105 + 1159464585) >> 21)) - 533444608) & 0x7B52C04D ^ ((-449405861 * v105 + 1159464585) >> 21) & 4) - 78462903;
  v113 = (v111 ^ 0xDB5C072F ^ v112) + 2 * ((v112 ^ 0x7B52C049) & (v111 ^ 0x200EC766));
  v114 = ((-2127904768 * v108) | ((-593099605 * v108) >> 18)) - 2 * (((-2127904768 * v108) | ((-593099605 * v108) >> 18)) & 0x435C3CA7 ^ ((-593099605 * v108) >> 18) & 5) + 1130118306;
  v115 = (v113 - ((2 * v113 - 967463204) & 0x86B87944) + 646386704) ^ v114;
  v114 ^= 0x435C3CA2u;
  v116 = (v110 & 0xFFFFFC00 | (v109 >> 22)) + (v111 ^ 0xDFF13899) + (v112 ^ 0x4AD3FB6) + v114 + 1470969858;
  v117 = v116 - ((2 * v116) & 0x9420E0C8) - 904892316;
  v118 = (v115 - ((2 * v115 + 1695384172) & 0x9420E0C8) + 2090283418) ^ v117;
  v119 = v118 - ((2 * v118 + 1574151276) & 0x6214B9A6) + 1609838345;
  v120 = (v117 ^ 0x7B1A2CB7 ^ v119) - ((2 * (v117 ^ 0x7B1A2CB7 ^ v119)) & 0xD7D23A42);
  HIDWORD(v193) = ((2 * ((v119 ^ 0xB10A5CD3) + (v112 ^ 0xFB52C049))) & 0xFEC53A9C) + (((v119 ^ 0xB10A5CD3) + (v112 ^ 0xFB52C049)) ^ 0x7F629D4E);
  v199 = ((2 * (v114 - (v119 ^ 0xB10A5CD3))) & 0xEEEDFFBC) + ((v114 - (v119 ^ 0xB10A5CD3)) ^ 0xF776FFDE);
  v121 = ((-287834112 * HIDWORD(v193)) | ((-1697423909 * HIDWORD(v193) - 1607198650) >> 13)) - 1037041664;
  v122 = ((2 * v121) & 0xF1F6BB7C) + (v121 ^ 0x78FB5DBE);
  v123 = ((-1161822208 * v199) | ((590807787 * v199 - 1794022602) >> 10)) - 847249408;
  v124 = ((2 * v123) & 0xEFD6F7FE) + (v123 ^ 0xF7EB7BFF);
  LODWORD(v195) = v120 - 337044191;
  v125 = (343932928 * ((v120 - 337044191) ^ 0xEBE91D21)) | ((830255657 * ((v120 - 337044191) ^ 0xEBE91D21)) >> 9);
  v126 = ((2 * v125) & 0xFEBAF79E) + (v125 ^ 0xFF5D7BCF);
  HIDWORD(v190) = v119 ^ 0xB10A5CD3;
  v127 = ((1479786816 * HIDWORD(v190)) | ((-1855926523 * HIDWORD(v190)) >> 26)) + v126 - v122 - v124 + 1904827886;
  v128 = ((-194955904 * v124) | ((1273545323 * v124 - 662442389) >> 25)) + 1106720128;
  v129 = ((2 * v128) & 0x6EA7CDF6) + (v128 ^ 0x3753E6FB);
  v130 = ((-1476938240 * v127) | ((-1244398629 * v127) >> 23)) - 2 * (((-1476938240 * v127) | ((-1244398629 * v127) >> 23)) & 0x532FA65D ^ ((-1244398629 * v127) >> 23) & 5) - 751851944;
  v131 = (v130 ^ (((897238554 * v122) | ((-1698864371 * v122 + 615891802) >> 31)) - ((1794477108 * v122 - 1831400088) & 0xA65F4CB0) + 479931660)) - v129;
  v132 = ((991629312 * v126) | ((-255610447 * v126 + 1863730913) >> 20)) + 1684934656 - 2 * ((((991629312 * v126) | ((-255610447 * v126 + 1863730913) >> 20)) + 1684934656) & 0xF6D9DA7 ^ ((-255610447 * v126 + 1863730913) >> 20) & 7) - 1888641632;
  v133 = v132 ^ 0x8F6D9DA0;
  HIDWORD(v48) = (v131 - ((2 * v131 + 245878262) & 0x1EDB3B40) - 960396133) ^ v132;
  LODWORD(v48) = 1559565603 * HIDWORD(v48);
  v134 = ((2 * (v48 >> 1)) & 0xFFDFBDF6) + ((v48 >> 1) ^ 0x7FEFDEFB);
  v135 = (-1027013632 * (v130 ^ 0xD32FA658)) | ((1316008513 * (v130 ^ 0xD32FA658)) >> 22);
  v136 = ((2 * v135) & 0xEA5EB7C2) + (v135 ^ 0xF52F5BE1);
  v137 = -340464649 * v133;
  v138 = -629802112 * v133;
  v139 = -15357715 * v136 + 1181173939;
  v140 = ((2 * (v138 & 0xFFFFFF80 | (v137 >> 25))) & 0x5FEBEFEE) + ((v138 & 0xFFFFFF80 | (v137 >> 25)) ^ 0xAFF5F7F7);
  v141 = -30715430 * v136 - 1932619418;
  v142 = ((2097152000 * v129) | ((-1536622467 * v129 + 1930770289) >> 8)) - v140 - v136 - v134 - 1776995629;
  v143 = v141 & 0xFFFFFFFE | (v139 >> 31);
  v144 = ((-2060868864 * v140) | ((-410703453 * v140 - 581333317) >> 24)) - v143 + 1502526208;
  v145 = ((341663552 * v142) | ((-1538165379 * v142) >> 26)) - 2 * (((341663552 * v142) | ((-1538165379 * v142) >> 26)) & 0x38B20C7F ^ ((-1538165379 * v142) >> 26) & 9);
  v146 = ((-1098907648 * v134) | ((-1362505859 * v134 - 444585359) >> 9)) + 947912704 - 2 * ((((-1098907648 * v134) | ((-1362505859 * v134 - 444585359) >> 9)) + 947912704) & 0x2BCF559E ^ ((-1362505859 * v134 - 444585359) >> 9) & 4) + 735008154;
  v147 = v146 ^ (v143 - ((2 * v141) & 0x579EAB34) + 735008154);
  v148 = v145 - 1196290954;
  v149 = ((v145 - 1196290954) ^ 0xB8B20C76) + (v146 ^ (v144 - ((2 * v144) & 0x579EAB34) + 735008154));
  v150 = v149 + ((v147 - ((2 * v147 + 749923278) & 0x716418EC) + 252412509) ^ (v145 - 1196290954));
  v151 = 2 * v150 + 1476912714;
  v150 -= 240717561;
  v152 = v150 - (v151 & 0x8B45FBC4);
  v200 = (v146 ^ 0x2BCF559A) - (v152 ^ 0x45A2FDE2) - ((2 * ((v146 ^ 0x2BCF559A) - (v152 ^ 0x45A2FDE2))) & 0xFC9250E2) + 2118723697;
  v198 = ((2 * ((v152 ^ 0x45A2FDE2) + v149)) & 0xFF4ED2C6) + (((v152 ^ 0x45A2FDE2) + v149) ^ 0xFFA76963);
  LODWORD(v191) = v152 ^ v148;
  HIDWORD(v191) = v152;
  v153 = (-1577058304 * (v152 ^ v148 ^ 0xFD10F194)) | ((-1527493295 * (v152 ^ v148 ^ 0xFD10F194)) >> 7);
  v154 = ((2 * v153) & 0x9F5AFFBC) + (v153 ^ 0x4FAD7FDE);
  v155 = ((-1143799808 * v154) | ((-136594477 * v154 + 44986886) >> 16)) + 1912995840;
  v156 = ((2 * v155) & 0x7FDDA7F4) + (v155 ^ 0xBFEED3FA);
  v157 = ((-275787776 * (v200 ^ 0x7E492871)) | ((-302057219 * (v200 ^ 0x7E492871)) >> 20)) - 2 * (((-275787776 * (v200 ^ 0x7E492871)) | ((-302057219 * (v200 ^ 0x7E492871)) >> 20)) & 0x2D176BF ^ ((-302057219 * (v200 ^ 0x7E492871)) >> 20) & 0x14) - 2100201813;
  HIDWORD(v48) = v150;
  LODWORD(v48) = -913210693 * (v152 ^ 0x45A2FDE2);
  v158 = ((1957650432 * v198) | ((-472144517 * v198 + 1391627887) >> 19)) + 1372446720;
  v159 = ((2 * v158) & 0xFDFFDFF6) + (v158 ^ 0x7EFFEFFB);
  v160 = v154 - v159 + 793931805 + (v157 ^ ((v48 >> 1) - ((2 * (v48 >> 1)) & 0x5A2ED56) - 2100201813));
  v161 = ((2 * ((-1482031104 * v160) | ((-1923886123 * v160) >> 15))) & 0xB7FCDEFE) + (((-1482031104 * v160) | ((-1923886123 * v160) >> 15)) ^ 0xDBFE6F7F);
  v162 = (750184512 * v161) | ((-994911327 * v161 + 961297441) >> 26);
  v163 = (((1720207411 * v159 + 942446847) >> 3) | (1610612736 * v159)) - 0x20000000;
  v164 = ((2 * v163) & 0x7FE83FE2) + (v163 ^ 0x3FF41FF1);
  v165 = -843055104 * (v157 ^ 0x82D176AB) - v156 + ((-1189417161 * (v157 ^ 0x82D176AB)) >> 10) + v164 - v161 + 1543054216;
  v166 = ((-1084407808 * v156) | ((998178165 * v156 + 1297026238) >> 18)) - 1020297216;
  v167 = ((2 * ((1541664768 * v165) | ((-262816193 * v165) >> 20))) & 0x3FEFEFBA) + (((1541664768 * v165) | ((-262816193 * v165) >> 20)) ^ 0x1FF7F7DD);
  v168 = v162 + 1393494080 - ((2 * (v162 + 1393494080)) & 0xAAC970FE) + 1432664191;
  v169 = v167 - 536344541 + (v168 ^ (v166 - ((2 * v166) & 0xAAC970FE) + 1432664191));
  v170 = v169 - ((2 * v169) & 0xAFA4CA46);
  v171 = ((-1011548160 * v164) | ((2056242101 * v164 + 577886107) >> 16)) - 677707776 - 2 * ((((-1011548160 * v164) | ((2056242101 * v164 + 577886107) >> 16)) - 677707776) & 0x57D2653F ^ ((2056242101 * v164 + 577886107) >> 16) & 0x1C) - 674077405;
  v172 = ((-335544320 * v167) | ((302895099 * v167 + 104548177) >> 6)) + 1140850688;
  v173 = (-2013265920 * (v168 ^ 0x5564B87F)) | ((985654417 * (v168 ^ 0x5564B87F)) >> 5);
  v174 = v172 - ((2 * v172) & 0x2A3FE32A) + 354414997;
  v175 = ((1509949440 * ((v170 - 674077405) ^ v171)) | ((-536412755 * ((v170 - 674077405) ^ v171)) >> 7)) - ((2 * ((1509949440 * ((v170 - 674077405) ^ v171)) | ((-536412755 * ((v170 - 674077405) ^ v171)) >> 7))) & 0xF99C7EFA) + 2093891453;
  v176 = (v175 ^ 0x7CCE3F7D) - 1673068353 * ((v173 - ((2 * v173) & 0x2A3FE32A) + 354414997) ^ v174) - 2 * ((v175 ^ 0x7CCE3F7D) & (-1673068353 * ((v173 - ((2 * v173) & 0x2A3FE32A) + 354414997) ^ v174)));
  LODWORD(v193) = ((1844606464 * (v171 ^ 0xD7D26523)) | ((-357107397 * (v171 ^ 0xD7D26523)) >> 23)) - v173 + (v174 ^ 0xEAE00E6A) + 1;
  v177 = (v193 - ((2 * v193) & 0xF99C7EFA) + 2093891453) ^ v175;
  v178 = v177 + 268280035 * v176;
  v179 = (v174 ^ 0x151FF195) + (v178 ^ 0xC235DC59) + ((2 * v178) ^ 0x7B94474D) + 1;
  HIDWORD(v192) = ((2 * v179) & 0x6FFFF7BA) + (v179 ^ 0xB7FFFBDD);
  LODWORD(v190) = v178 ^ v177;
  HIDWORD(v195) = v178 ^ 0xC507D26D;
  v180 = *(v23 + 8 * (v21 + 7160));
  *(v22 - 136) = 0x702C6BC3053EE768;
  *(v22 - 152) = 0x5A0C6F68AE545A6DLL;
  *(v22 - 160) = 0x4BD238C3A2C90E64;
  *(v22 - 144) = 0x2A731EC66193DDA1;
  *(v22 - 128) = 0x1D5D167E398FEC93;
  *(v22 - 120) = 0xDFB8477BE8800AFLL;
  *(v22 - 96) = v23;
  v181 = v180(1028);
  v182 = *(v22 - 96);
  v183 = *(v182 + 8 * ((191 * (v181 == 0)) ^ v21));
  *(v22 - 112) = 0x2F85FCF88F60544DLL;
  return v183(v181, v184, v185, v186, v187, v181, v182, v188, a9, a10, a11, a12, a13, v190, v191, v20, a17, v192, v193, v194, v195, v196);
}

uint64_t sub_100147E00(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = (v8 ^ v9) & v11;
  v21 = v19 ^ v16 ^ *(*(a5 + 8 * v13) + 4 * (v20 ^ v12) + v14);
  *(a6 + 4 * v9) = v17 ^ v20 ^ a1 ^ (v21 + v18 - (v15 & (2 * v21)));
  return (*(a7 + 8 * (((v10 == 0) * a2) ^ a8)))();
}

uint64_t sub_100147E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = (*(a7 + 8 * (v18 + 8176)))(1028);
  v21 = *(v19 - 96);
  *(v19 - 112) = v20 + 0x2F85FCF88F60544DLL;
  v22 = *(v21 + 8 * (((2 * (v20 == 0)) | (4 * (v20 == 0))) ^ (v18 + 477)));
  *(v19 - 104) = v18;
  return v22(v20, v23, v24, v25, v26, a6, v21, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_100148054@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W8>)
{
  HIDWORD(v20) = *(*(v15 + 8 * a3) + 4 * (a7 ^ (v7 + 108) ^ (((v9 + 3427) ^ 0x28E2 ^ v8 ^ v13 ^ v11) + v7 - (a2 & (2 * (v8 ^ v13 ^ v11)) ^ 0x10u))) + a4);
  LODWORD(v20) = HIDWORD(v20);
  v21 = (v20 >> 17) - 2041005625 - ((2 * (v20 >> 17)) & 0xCB1738E);
  v22 = ((v10 ^ v21) + v17 - (v18 & (2 * (v10 ^ v21)))) ^ v14;
  *(a1 + 4 * v11) = v16 ^ (v21 >> 4) ^ (v21 >> 1) ^ a5 ^ (v22 + 1443043285 - ((2 * v22) & 0xAC062FAA));
  return (*(v19 + 8 * (((v12 == 0) * a6) ^ v9)))();
}

uint64_t sub_100148120()
{
  v3 = (v0 - 10058) | 0x805;
  v4 = (*(v2 + 8 * (v0 ^ 0x1BF)))(1028);
  v5 = *(v1 - 96);
  *(v1 - 120) = v4 + 0xDFB8477BE8800AFLL;
  *(v1 - 104) = v3;
  return (*(v5 + 8 * (((v4 != 0) * (v3 ^ (v0 - 7983))) ^ v0)))();
}

uint64_t sub_1001481A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v23 - 100) = a20 + 84411605;
  HIDWORD(a22) = HIDWORD(a18) + 1207960611;
  return (*(a7 + 8 * (v22 - 7258)))(a1, 2970246355, HIDWORD(a21), (v22 - 7258) ^ 0xDABu, 3947113683, 3599260070, 3620878914, 3957923105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100148304@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v25 = v10 & v12 ^ v22 ^ 0xC2;
  v26 = (v25 - (v17 ^ v10 & v12 ^ v22 ^ 0x73)) ^ v9;
  v27 = *(*(v13 + 8 * a4) + 4 * (v16 ^ ((v17 ^ (v26 - ((2 * v26) & 0x1A) + 13) ^ 0xBC) + v25) ^ 0x90u) - 1383160006);
  v28 = v18 ^ v27 ^ 0x88054D6 ^ (((v27 >> 3) ^ (v27 >> 1) ^ 0x6E110EE4) - ((2 * ((v27 >> 3) ^ (v27 >> 1) ^ 0x6E110EE4)) & 0xDBFA3510) - 302179704);
  v29 = v21 ^ v24 ^ a3 ^ (v28 + 120720948 - ((2 * v28) & 0xE641C68));
  v30 = (v29 + a8 - (a7 & (2 * v29))) ^ v20;
  v31 = v15 ^ *(v23 - 100) ^ (v30 + a2 - (v14 & (2 * v30)));
  *(a1 + 4 * (v10 & v12)) = v19 ^ (v31 + a5 - (a6 & (2 * v31)));
  return (*(*(v23 - 96) + 8 * ((10394 * (v11 == 0)) ^ a9)))();
}

uint64_t sub_100148440@<X0>(int a1@<W8>)
{
  v2 = a1 + 3464;
  v3 = a1 - 747;
  v4 = *(v1 - 96);
  v5 = (*(v4 + 8 * ((a1 + 3464) ^ 0x308D)))(1032);
  *(v1 - 128) = v5 + 0x1D5D167E398FEC93;
  *(v1 - 104) = v3;
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 6685 + 1739 * (v2 ^ 0x19FB))) ^ v2)))();
}

uint64_t sub_1001484CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  HIDWORD(v25) = a18 ^ 0xAEBAA1E;
  LODWORD(v25) = ~a18;
  HIDWORD(v25) = (v25 >> 29) ^ 0x6D4956A7;
  LODWORD(v25) = HIDWORD(v25);
  return (*(a7 + 8 * v23))(a1, (v25 >> 3) ^ v24 ^ a23 ^ 0x52D4B4AA, 82);
}

uint64_t sub_100148684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (v7 + 1531957362) & 0xA4B02F0F;
  *(v8 - 104) = v9 - 643;
  v10 = (*(a7 + 8 * (v7 ^ 0x25F3)))(1032);
  v11 = *(v8 - 96);
  *(v8 - 136) = v10 + 0x702C6BC3053EE768;
  return (*(v11 + 8 * (((v10 == 0) * (v9 - 3051)) ^ v7)))();
}

uint64_t sub_100148828@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, unsigned int a8@<W7>, unsigned int a9@<W8>)
{
  v25 = v18 ^ (v10 ^ ((v11 ^ a9) * v9)) ^ 0xC27AAA7E ^ *(*(v20 + 8 * v13) + 4 * ((v10 ^ ((v11 ^ a9) * v9)) ^ 0x58u) - 566395475);
  HIDWORD(v26) = (v25 - ((2 * v25) & 0x16690FC) + a2) ^ v14;
  LODWORD(v26) = (v25 + v15 - ((2 * v25) & v16)) ^ v14;
  HIDWORD(v26) = (v26 >> 25) ^ a3;
  LODWORD(v26) = HIDWORD(v26);
  v27 = ((v26 >> 7) + v21 - (v22 & (2 * (v26 >> 7)))) ^ v12;
  *(a1 + 4 * ((v11 ^ a9) * v9)) = v23 ^ (v27 - (a4 & (2 * v27)) + a5) ^ a6;
  v28 = 2 * (v11 & 1) + (v11 ^ (a9 + 1));
  return (*(a7 + 8 * (((((v28 + a9 - (v24 & (2 * v28))) ^ a9) > a8) * v19) | v17)))();
}

uint64_t sub_100148908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 104) = v7 - 6760;
  v9 = (*(a7 + 8 * (v7 + 1416)))(1028);
  v10 = *(v8 - 96);
  *(v8 - 144) = v9 + 0x2A731EC66193DDA1;
  return (*(v10 + 8 * (((v9 == 0) * (((v7 - 7657) | 0x1199) ^ 0x1788)) ^ v7)))();
}

uint64_t sub_100148AEC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v18 = (((v8 ^ v16) ^ v10) + v11) ^ *(*(a6 + 8 * v13) + 4 * ((v8 ^ v16) ^ v12) + v14);
  *(a1 + 4 * v8) = a2 ^ (v18 + a8 - (v15 & (2 * v18)));
  return (*(a7 + 8 * (((v9 == 0) * a3) ^ v17)))();
}

uint64_t sub_100148B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 104) = v7 ^ 0x21D3;
  v9 = (*(a7 + 8 * (v7 + 287)))(1028);
  v10 = *(v8 - 96);
  *(v8 - 152) = v9 + 0x5A0C6F68AE545A6DLL;
  return (*(v10 + 8 * (((2 * (((((v7 ^ 0x21D3) + 3925) ^ (v9 == 0)) & 1) == 0)) & 0xF7 | (8 * ((((v7 ^ 0xD3) + 85) ^ ~(v9 == 0)) & 1))) ^ v7)))();
}

uint64_t sub_100148CA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W8>)
{
  HIDWORD(v22) = *(*(v16 + 8 * v13) + 4 * (v12 ^ (v10 ^ ((v11 ^ v8) * v9))) - 35372418);
  LODWORD(v22) = HIDWORD(v22);
  v23 = (v22 >> 3) + a8 - ((2 * (v22 >> 3)) & 0xFA53E010);
  v24 = (((v23 >> 5) ^ (v23 >> 4) ^ 0x83BD080) + a8 - 2 * (((v23 >> 5) ^ (v23 >> 4) ^ 0x83BD080) & 0xD29F01D ^ ((v23 >> 5) ^ (v23 >> 4)) & 0x15)) ^ v23;
  v25 = (v24 + a6 - ((2 * v24) & 0x375D5E0A)) ^ a3;
  v26 = (v25 + v15 - ((2 * v25) & 0xFA21E328)) ^ a2;
  *(a1 + 4 * ((v11 ^ v8) * v9)) = v14 ^ (v26 + a5 - (a4 & (2 * v26))) ^ v18;
  v27 = (~(2 * v11) & 2) + (v11 ^ v21);
  return (*(a7 + 8 * (((((v27 + v8 - ((2 * v27) & 0x1B14556A)) ^ v8) > v19) * v20) ^ v17)))();
}

uint64_t sub_100148DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  *(v28 - 104) = (a28 - 7729) ^ 0x15A;
  v29 = (*(a7 + 8 * (a28 ^ 0xE65)))(1032);
  v30 = *(v28 - 96);
  *(v28 - 160) = v29 + 0x4BD238C3A2C90E64;
  return (*(v30 + 8 * ((((a28 - 49) ^ (v29 == 0)) & 1 | (8 * (((a28 - 49) ^ (v29 == 0)) & 1))) ^ a28)))();
}

uint64_t sub_100148F08(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  HIDWORD(v21) = *(*(v18 + 8 * v12) + 4 * ((v9 ^ v16) ^ v11) + v13);
  LODWORD(v21) = HIDWORD(v21);
  v22 = a8 ^ v20 ^ (v17 + v8 + 672 + (v21 >> 5) - (a6 & (2 * (v21 >> 5))) - 2916);
  *(a1 + 4 * v9) = v19 ^ (v22 - (v14 & (2 * v22)) + v15) ^ a2;
  return (*(a7 + 8 * (((v10 != 0) * a3) ^ v8)))();
}

uint64_t sub_100148F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _BYTE *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, int a30, int a31, int a32, int a33)
{
  v37 = *(v33 + 8 * (v34 - 2431)) - 891963390;
  v38 = *(v37 + ((a16[7] - 118) ^ 0x64));
  *(v35 - 104) = (v34 - 736) | 0x101;
  v39 = *(v37 + (((a16[15] ^ 0xDD) + ((2 * a16[15]) & 0xBB) + 69) ^ 0x3ELL));
  v40 = ((v38 ^ 0x20) + (((v34 + 32) | 1) ^ 0x35)) ^ (4 * v38 - 92);
  v41 = *(v33 + 8 * (v34 ^ 0x977)) - 2068432782;
  v42 = 4 * v39 - 92 + (v39 ^ 0x20) - 80 - 2 * ((4 * v39 - 92) & ((v39 ^ 0x20) - 80));
  v43 = *(v33 + 8 * (v34 ^ 0xA3C)) - 1160636395;
  v44 = *(v43 + ((a16[13] + 124) ^ 0x57)) ^ 0xB1;
  v45 = v42 | ((v44 + ((a16[13] + 124) ^ 0xBD) - 2 * (v44 & ((a16[13] + 124) ^ 0xBD))) << 16);
  v46 = *(v33 + 8 * (v34 - 2730)) - 761105095;
  v47 = *(v46 + ((*a16 + 69) ^ 0xD1));
  v48 = ((*(v41 + ((a16[2] - 21) ^ 0x1ELL)) ^ 0x24) << 8) | (((v47 ^ 0x5D) + 2 * (v47 & 0xFFFFFFC8 ^ 0x48) - 4 * (v47 & 0xFFFFFFC8 ^ 0x48)) << 24) | ((*(v43 + ((a16[1] - 104) ^ 0x5BLL)) ^ (a16[1] + ~(2 * ((a16[1] - 104) & 0x25 ^ a16[1] & 4)) + 58) ^ 0x43) << 16);
  LOBYTE(v47) = *(v37 + ((a16[11] - 42) ^ 0x59));
  v49 = ((v47 ^ 0x20) - 80) ^ (4 * v47 - 92);
  v50 = v49 | ((*(v41 + (((a16[10] ^ 0x3E) + ((2 * a16[10]) & 0x7C) + 69) ^ 0x9DLL)) ^ 0x2E) << 8);
  LOBYTE(v47) = *(v37 + ((a16[3] + 62) ^ 6));
  v51 = v48 & 0xFFFFFF00 | (((v47 ^ 0x20) - 80) ^ (4 * v47 - 92));
  LOBYTE(v47) = a16[5] + ((2 * a16[5]) & 0xC ^ 0xF7) + 107;
  v52 = ((*(v46 + ((a16[4] - 111) ^ 0xBELL)) ^ 0x53) << 24) | ((*(v43 + (v47 ^ 0xC4)) ^ v47 & 0x18 ^ ((v47 & 0xE7 ^ 0x86) - ((2 * v47) & 0x42) - 95) ^ 0xCE) << 16) | v40 | ((*(v41 + ((a16[6] + 55) ^ 0xDALL)) ^ 0xCB) << 8);
  LODWORD(v41) = v45 | ((*(v46 + ((a16[12] + 41) ^ 0x73)) ^ 0xD8) << 24) | ((*(v41 + ((a16[14] - 49) ^ 0x6ELL)) ^ 0xBB) << 8);
  v53 = v52 + 120720948 - 2 * (v52 & 0x7320E3E ^ v40 & 0xA);
  v54 = a16[9];
  LODWORD(v43) = ((*(v46 + ((a16[8] - 35) ^ 0xD0)) ^ 0x62) << 24) | ((*(v43 + ((((2 * v54) & 0x60) + (v54 ^ 0x30)) ^ 0x3BLL)) ^ (((2 * v54) & 0x60) + (v54 ^ 0x30) - 2 * ((((2 * v54) & 0x60) + (v54 ^ 0x30)) & 0x29 ^ v54 & 8) - 95) ^ 0x4C) << 16) | v50;
  v55 = (v51 - 818803148 - ((2 * (v51 - 939524096)) & 0xE641C68)) ^ a22;
  LODWORD(v41) = v41 - ((2 * v41) & 0xF3EA129E) - 101381809;
  LODWORD(v46) = a32 ^ v41 ^ 0x3BC0D516;
  LODWORD(v41) = v41 ^ 0xF9F5094F;
  LODWORD(v43) = v43 + 120720948 - 2 * (v43 & 0x7320E36 ^ v49 & 2);
  LODWORD(v37) = ((v41 - v46) ^ ((a32 ^ 0x3DCA23A6) + 1)) + 120720948 - ((2 * ((v41 - v46) ^ ((a32 ^ 0x3DCA23A6) + 1))) & 0xE641C68);
  v56 = (v55 - 1324720941 - ((2 * v55) & 0x6214B9A6)) ^ a33;
  LODWORD(v46) = v56 - ((2 * v56) & 0xE013FF84);
  v57 = ((v53 ^ a22) - 1324720941 - ((2 * (v53 ^ a22)) & 0x6214B9A6)) ^ a33;
  v58 = ((v37 ^ a22) + v41 - 1324720941 - ((2 * ((v37 ^ a22) + v41)) & 0x6214B9A6)) ^ a33;
  LODWORD(v43) = ((v43 ^ a22) - 1324720941 - ((2 * (v43 ^ a22)) & 0x6214B9A6)) ^ a33;
  LODWORD(v41) = v43 - ((2 * v43) & 0xE013FF84);
  v59 = __ROR4__(a31 ^ (v58 - ((2 * v58) & 0xE013FF84) - 267780158) ^ 0xA10EFFA6, 17);
  LODWORD(v43) = (((v59 ^ 0xA58906AF) << 17) - (((v59 ^ 0xA58906AF) << 18) & 0xB6540000) + 1529577247) ^ 0x5B2B7F1F;
  v60 = (v46 - 267780158) ^ a12;
  v61 = (v57 - ((2 * v57) & 0xE013FF84) - 267780158) ^ a12;
  v62 = *(v35 - 160);
  v63 = *(v35 - 120);
  v64 = *(v63 + 4 * (HIBYTE(v60) ^ 0x86) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v61) ^ 0xE4u) - 0x4BD238C3A2C90E64);
  LODWORD(v37) = (v64 ^ 0x369089B0) - 2 * ((v64 ^ 0x369089B0) & 0x3A95AF7F ^ v64 & 1);
  v65 = (v41 - 267780158) ^ a12;
  v66 = *(v62 + 4 * (BYTE2(v65) ^ 0xB8u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v61) ^ 0x1A) - 0xDFB8477BE8800AFLL);
  LODWORD(v41) = (v66 ^ 0x369089B0) - 2 * ((v66 ^ 0x369089B0) & 0x3A95AF7F ^ v66 & 1);
  v67 = ((v59 ^ 0xA58906AF) >> 15) - (((v59 ^ 0xA58906AF) >> 14) & 0xF756) + 697465771;
  v68 = ((v67 ^ 0xD66D8454) + 1) ^ v67 ^ (v43 - (v67 ^ 0x29927BAB | v43));
  v69 = (v68 ^ 0x29927BAB) + v43;
  LODWORD(v43) = (v37 + 982888318) ^ *(a10 + 4 * (BYTE1(v65) ^ 0x96u) - 0xD043202411972F5);
  LODWORD(v41) = (v41 + 982888318) ^ *(a10 + 4 * (BYTE1(v68) ^ 0x7Bu) - 0xD043202411972F5);
  LODWORD(v37) = *(v63 + 4 * (HIBYTE(v65) ^ 0xFD) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * BYTE2(v69) - 0x4BD238C3A2C90E64);
  *(v35 - 100) = -1898304493;
  v70 = *(v35 - 128);
  LODWORD(v43) = (v43 - 1898304493 + (~(2 * v43) | 0xE24BA7DB)) ^ *(v70 + 4 * (v68 ^ 0xABu) - 0x1D5D167E398FEC93);
  v71 = ((v37 ^ 0x369089B0) - 2 * ((v37 ^ 0x369089B0) & 0x3A95AF7F ^ v37 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v60) ^ 0x94u) - 0xD043202411972F5);
  v72 = (v71 - ((2 * v71) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v61 ^ 0x66u) - 0x1D5D167E398FEC93);
  LODWORD(v41) = (v41 - ((2 * v41) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v60 ^ 0x63u) - 0x1D5D167E398FEC93);
  v73 = *(v62 + 4 * (BYTE2(v60) ^ 0xA5u) - 0x4BD238C3A2C90E64) ^ 0x369089B0 ^ *(v63 + 4 * HIBYTE(v69) - 0xDFB8477BE8800AFLL);
  v74 = (v73 - ((2 * v73) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v61) ^ 0x70u) - 0xD043202411972F5);
  v75 = (v74 - ((2 * v74) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v65 ^ 0x8Fu) - 0x1D5D167E398FEC93);
  LODWORD(v37) = *(v62 + 4 * (BYTE2(v41) ^ 0x11u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (BYTE3(v43) ^ 0x90) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  LODWORD(v37) = (v37 - ((2 * v37) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v72) ^ 0x64u) - 0xD043202411972F5);
  v76 = *(v63 + 4 * (HIBYTE(v72) ^ 0x81) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v75) ^ 0xBDu) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  v77 = *(v63 + 4 * (BYTE3(v41) ^ 0x6C) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v72) ^ 0x7Eu) - 0x4BD238C3A2C90E64);
  v78 = (v37 - ((2 * v37) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v75 ^ 0xF1u) - 0x1D5D167E398FEC93);
  LODWORD(v37) = ((v77 ^ 0x369089B0) - 2 * ((v77 ^ 0x369089B0) & 0x3A95AF7F ^ v77 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v75) ^ 0x63u) - 0xD043202411972F5);
  v79 = (v37 - ((2 * v37) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v43 ^ 0xC6u) - 0x1D5D167E398FEC93);
  v80 = *(v63 + 4 * (HIBYTE(v75) ^ 0xE2) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v43) ^ 0x20u) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  v81 = *(a10 + 4 * (BYTE1(v43) ^ 0xBu) - 0xD043202411972F5) ^ (v76 - ((2 * v76) & 0x752B5EFC) + 982888318);
  v82 = (v81 - ((2 * v81) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v41 ^ 0x58u) - 0x1D5D167E398FEC93);
  v83 = (v80 - ((2 * v80) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v41) ^ 0xB5u) - 0xD043202411972F5);
  v84 = (v83 - ((2 * v83) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v72 ^ 0xBEu) - 0x1D5D167E398FEC93);
  v85 = *(v62 + 4 * (BYTE2(v79) ^ 0x80u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v78) ^ 0x40) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v86 = (v85 - ((2 * v85) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v82) ^ 0x35u) - 0xD043202411972F5);
  LODWORD(v43) = (v86 - ((2 * v86) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v84 ^ 0xA5u) - 0x1D5D167E398FEC93);
  LODWORD(v37) = BYTE1(v79) ^ 0x51;
  v87 = *(v62 + 4 * (BYTE2(v82) ^ 0xFEu) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v79) ^ 0x2C) - 0xDFB8477BE8800AFLL) ^ __ROR4__(__ROR4__(*(a10 + 4 * (BYTE1(v84) ^ 0x56u) - 0xD043202411972F5) ^ 0xDE7A29B7, 18) ^ 0xE1B2793B, 14) ^ 0x369089B0;
  LODWORD(v41) = (v87 + *(v35 - 100) + (~(2 * v87) | 0xE24BA7DB)) ^ *(v70 + 4 * (v78 ^ 0xB2u) - 0x1D5D167E398FEC93);
  v88 = *(v62 + 4 * (BYTE2(v84) ^ 0x43u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v82) ^ 0xAD) - 0xDFB8477BE8800AFLL);
  v89 = ((v88 ^ 0x369089B0) - 2 * ((v88 ^ 0x369089B0) & 0x3A95AF7F ^ v88 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v78) ^ 0xE4u) - 0xD043202411972F5);
  v90 = *(v62 + 4 * (BYTE2(v78) ^ 0x91u) - 0x4BD238C3A2C90E64) ^ 0x369089B0 ^ *(v63 + 4 * (HIBYTE(v84) ^ 0x4F) - 0xDFB8477BE8800AFLL);
  v91 = (v89 - ((2 * v89) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v79 ^ 0xEAu) - 0x1D5D167E398FEC93);
  v92 = (v90 - ((2 * v90) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * v37 - 0xD043202411972F5);
  v93 = (v92 - ((2 * v92) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v82 ^ 0x54u) - 0x1D5D167E398FEC93);
  v94 = *(v62 + 4 * (BYTE2(v41) ^ 0x29u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (BYTE3(v43) ^ 0x15) - 0xDFB8477BE8800AFLL);
  v95 = *(a10 + 4 * (BYTE1(v91) ^ 0xC9u) - 0xD043202411972F5);
  v96 = (((((v95 ^ 0x3A95AF7E) - (v94 ^ v95 ^ 0xC0526CE)) ^ ((v94 ^ 0xC96F764F) + 1)) + 915442097 + (~(2 * (((v95 ^ 0x3A95AF7E) - (v94 ^ v95 ^ 0xC0526CE)) ^ ((v94 ^ 0xC96F764F) + 1))) | 0x92DEEC9F)) ^ v94) + (v95 ^ 0x3A95AF7E);
  v97 = (v96 - ((2 * v96) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v93 ^ 0xCDu) - 0x1D5D167E398FEC93);
  v98 = *(v63 + 4 * (BYTE3(v41) ^ 0x39) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v91) ^ 0xD7u) - 0x4BD238C3A2C90E64);
  HIDWORD(v99) = v98 ^ 0x89B0;
  LODWORD(v99) = v98 ^ 0x36900000;
  v100 = *(v63 + 4 * (HIBYTE(v91) ^ 0x94) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v93) ^ 0x94u) - 0x4BD238C3A2C90E64);
  HIDWORD(v99) = (v99 >> 17) ^ 0x870E9501;
  LODWORD(v99) = HIDWORD(v99);
  v498 = v93;
  v101 = ((v99 >> 15) - ((2 * (v99 >> 15)) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v93) ^ 0x9Fu) - 0xD043202411972F5);
  v102 = (v101 - ((2 * v101) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v43 ^ 0xD6u) - 0x1D5D167E398FEC93);
  v103 = BYTE1(v43) ^ 0xAD;
  LODWORD(v43) = *(v63 + 4 * (HIBYTE(v93) ^ 0xDB) - 0xDFB8477BE8800AFLL) ^ 0x369089B0 ^ *(v62 + 4 * (BYTE2(v43) ^ 0xA9u) - 0x4BD238C3A2C90E64);
  v104 = ((v100 ^ 0x369089B0) - 2 * ((v100 ^ 0x369089B0) & 0x3A95AF7F ^ v100 & 1) + 982888318) ^ *(a10 + 4 * v103 - 0xD043202411972F5);
  v105 = (v104 - ((2 * v104) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v41 ^ 0x3Cu) - 0x1D5D167E398FEC93);
  v106 = (v43 - ((2 * v43) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v41) ^ 0xFCu) - 0xD043202411972F5);
  v107 = (v106 - ((2 * v106) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v91 ^ 0x68u) - 0x1D5D167E398FEC93);
  if ((v107 & 0x80) != 0)
  {
    v108 = -128;
  }

  else
  {
    v108 = 128;
  }

  v109 = v108 + v107;
  v110 = *(v62 + 4 * (BYTE2(v102) ^ 0x7Au) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v97) ^ 0x6F) - 0xDFB8477BE8800AFLL);
  v111 = ((v110 ^ 0x369089B0) - 2 * ((v110 ^ 0x369089B0) & 0x3A95AF7F ^ v110 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v105) ^ 0x2Eu) - 0xD043202411972F5);
  v112 = (v111 - ((2 * v111) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v109 ^ 0x13u) - 0x1D5D167E398FEC93);
  v113 = *(v62 + 4 * (BYTE2(v105) ^ 0xAEu) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * ((v102 ^ 0x7C7AE92Bu) >> (v78 & 0x18 ^ 0x10) >> (v78 & 0x18 ^ 8)) - 0xDFB8477BE8800AFLL);
  v114 = *(v62 + 4 * (BYTE2(v109) ^ 0x3Au) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v105) ^ 0xC2) - 0xDFB8477BE8800AFLL);
  v115 = *(a10 + 4 * (BYTE1(v109) ^ 0xB1u) - 0xD043202411972F5);
  HIDWORD(v116) = ((v113 ^ 0x369089B0) - ((2 * (v113 ^ 0x369089B0)) & 0xEFC) + 3966) ^ v115;
  LODWORD(v116) = ((v113 ^ 0x369089B0) - 2 * ((v113 ^ 0x369089B0) & 0x3A95AF7F ^ v113 & 1) + 982888318) ^ v115;
  v117 = BYTE1(v102) ^ 0xE9;
  v118 = ((v114 ^ 0x369089B0) - 2 * ((v114 ^ 0x369089B0) & 0x3A95AF7F ^ v114 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v97) ^ 0x1Bu) - 0xD043202411972F5);
  HIDWORD(v116) = (v116 >> 12) ^ 0x3C379DF9;
  LODWORD(v116) = HIDWORD(v116);
  v119 = ((v116 >> 20) - ((2 * (v116 >> 20)) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v97 ^ 0xAu) - 0x1D5D167E398FEC93);
  v120 = v102 ^ 0x2B;
  v121 = v118 - ((2 * v118) & 0x1DB45824);
  v122 = *(v63 + 4 * (HIBYTE(v109) ^ 0x19) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v97) ^ 0x50u) - 0x4BD238C3A2C90E64);
  v123 = v122 ^ 0x369089B0;
  v124 = v122 & 1;
  v125 = v123 & 0x1A95AF7F ^ v124;
  v126 = v123 & 0x3A95AF7F ^ v124;
  v123 += 982888318;
  v127 = *(a10 + 4 * v117 - 0xD043202411972F5);
  HIDWORD(v116) = (v123 - 2 * v125) ^ v127;
  LODWORD(v116) = (v123 - 2 * v126) ^ v127;
  HIDWORD(v116) = (v116 >> 30) ^ 0xF4B6FCE;
  LODWORD(v116) = HIDWORD(v116);
  v128 = (v121 - 1898304494) ^ *(v70 + 4 * v120 - 0x1D5D167E398FEC93);
  v129 = ((v116 >> 2) + *(v35 - 100) + (~(2 * (v116 >> 2)) | 0xE24BA7DB)) ^ *(v70 + 4 * (v105 ^ 0x5Eu) - 0x1D5D167E398FEC93);
  v130 = *(v63 + 4 * (HIBYTE(v119) ^ 0x50) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v128) ^ 0xDFu) - 0x4BD238C3A2C90E64);
  v131 = *(v63 + 4 * (HIBYTE(v112) ^ 0x7F) - 0xDFB8477BE8800AFLL) ^ 0x369089B0 ^ *(v62 + 4 * (BYTE2(v119) ^ 0xAEu) - 0x4BD238C3A2C90E64);
  v132 = ((v130 ^ 0x369089B0) - 2 * ((v130 ^ 0x369089B0) & 0x3A95AF7F ^ v130 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v129) ^ 0x8Du) - 0xD043202411972F5);
  v133 = (v131 - ((2 * v131) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v128) ^ 0xE7u) - 0xD043202411972F5);
  v134 = v133 - ((2 * v133) & 0x1DB45824);
  v135 = *(v70 + 4 * (v129 ^ 0x4Fu) - 0x1D5D167E398FEC93);
  v136 = ((v134 - 1898304494) ^ v135) & 0x9B06A359;
  v137 = *(v70 + 4 * (v112 ^ 0x47u) - 0x1D5D167E398FEC93);
  v138 = (v134 + 249179154) ^ v135;
  v139 = HIBYTE(v129) ^ 0x71;
  v140 = *(v63 + 4 * (HIBYTE(v128) ^ 0xEB) - 0xDFB8477BE8800AFLL) ^ 0x369089B0 ^ *(v62 + 4 * (BYTE2(v129) ^ 0x37u) - 0x4BD238C3A2C90E64);
  v141 = ((v132 - ((2 * v132) & 0x1DB45824) + 249179154) ^ v137) & 0x456D2E17 | ((v132 - ((2 * v132) & 0x1DB45824) - 1898304494) ^ v137) & 0xBA92D1E8;
  v142 = (v140 - ((2 * v140) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v112) ^ 0x2Eu) - 0xD043202411972F5);
  v143 = (v142 - ((2 * v142) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v119 ^ 0xB2u) - 0x1D5D167E398FEC93);
  v144 = v136 | v138 & 0x64F95CA6;
  v145 = *(v63 + 4 * v139 - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v112) ^ 8u) - 0x4BD238C3A2C90E64);
  v146 = ((v145 ^ 0x369089B0) - 2 * ((v145 ^ 0x369089B0) & 0x3A95AF7F ^ v145 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v119) ^ 0x5Au) - 0xD043202411972F5);
  v147 = (v146 - ((2 * v146) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v128 ^ 0x2Fu) - 0x1D5D167E398FEC93);
  v148 = *(v63 + 4 * (HIBYTE(v144) ^ 0xCB) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v141) ^ 0x41u) - 0x4BD238C3A2C90E64);
  v149 = *(v62 + 4 * (BYTE2(v143) ^ 0x9Eu) - 0x4BD238C3A2C90E64) ^ 0x369089B0 ^ *(v63 + 4 * (HIBYTE(v141) ^ 0xE2) - 0xDFB8477BE8800AFLL);
  v495 = v148 ^ 0x369089B0;
  v150 = *(a10 + 4 * (BYTE1(v147) ^ 0x6Eu) - 0xD043202411972F5) ^ *(v70 + 4 * (v144 ^ 0xECu) - 0x1D5D167E398FEC93) ^ (v149 + 982888319 + (~(2 * v149) | 0x8AD4A103));
  v494 = *(a10 + 4 * (BYTE1(v143) ^ 0x38u) - 0xD043202411972F5);
  v151 = ((v495 - 2 * ((v148 ^ 0x369089B0) & 0x3A95AF7F ^ v148 & 1) + 982888318) ^ v494) - ((2 * ((v495 - 2 * ((v148 ^ 0x369089B0) & 0x3A95AF7F ^ v148 & 1) + 982888318) ^ v494)) & 0x1DB45824);
  LODWORD(v490) = *(v63 + 4 * (HIBYTE(v143) ^ 9) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v147) ^ 0x7Bu) - 0x4BD238C3A2C90E64);
  v493 = *(a10 + 4 * ((((v132 - ((2 * v132) & 0x5824) + 11282) ^ v137) >> 8) ^ 0xDFu) - 0xD043202411972F5);
  HIDWORD(v116) = v493 ^ 0xF7E;
  LODWORD(v116) = v493 ^ 0x3A95A000;
  LODWORD(v491) = *(v62 + 4 * (BYTE2(v144) ^ 0x30u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v147) ^ 0xFB) - 0xDFB8477BE8800AFLL);
  LODWORD(a14) = v150;
  LODWORD(v489) = (v490 ^ 0x369089B0) + 982888318;
  HIDWORD(v489) = *(a10 + 4 * (BYTE1(v144) ^ 0x16u) - 0xD043202411972F5);
  v152 = (v489 - ((2 * (v490 ^ 0x369089B0)) & 0x752B5EFC)) ^ HIDWORD(v489);
  v153 = v152 - ((2 * v152) & 0x1DB45824);
  v154 = ((2 * v150) & 0x4FB3BCE ^ 0xFB4FE7FB) + (v150 ^ 0x8EDA2C12);
  LODWORD(v116) = (((v491 << 20) ^ 0xF485E2DD ^ -((v491 << 20) ^ 0xF485E2DD) ^ (((v491 >> 12) ^ 0x36908) - (__ROR4__(v491, 12) ^ 0xF4868BD5))) + ((v491 >> 12) ^ 0x36908)) ^ (v116 >> 12);
  HIDWORD(v116) = v116;
  v155 = v154 - ((2 * v154 + 83573712) & 0xF707E688) + 2114031916;
  v156 = *(v70 + 4 * (v147 ^ 0xEu) - 0x1D5D167E398FEC93);
  v157 = (v151 - 1898304494) ^ v156;
  v158 = *(v62 + 4 * (BYTE2(v155) ^ 0x83u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v157) ^ 0xE0) - 0xDFB8477BE8800AFLL);
  HIDWORD(a17) = *(v70 + 4 * (v141 ^ 0x9Du) - 0x1D5D167E398FEC93);
  v159 = (v153 - 1898304494) ^ HIDWORD(a17);
  v160 = ((v158 ^ 0x369089B0) - 2 * ((v158 ^ 0x369089B0) & 0x3A95AF7F ^ v158 & 1) + 982888318) ^ *(a10 + 4 * ((((v153 + 11282) ^ WORD2(a17)) >> 8) ^ 0xA5u) - 0xD043202411972F5);
  v161 = *(v63 + 4 * (HIBYTE(v155) ^ 0x7B) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v159) ^ 0xE3u) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  LODWORD(a15) = *(v70 + 4 * (v143 ^ 0xB2u) - 0x1D5D167E398FEC93);
  v162 = ((v116 >> 20) - ((2 * (v116 >> 20)) & 0x1DB45824) - 1898304494) ^ a15;
  v163 = *(a10 + 4 * (((((v116 >> 20) - ((2 * (v116 >> 20)) & 0x5824) + 11282) ^ a15) >> 8) ^ 0x1Du) - 0xD043202411972F5) ^ 0x3A95AF7E;
  v164 = *(v62 + 4 * (BYTE2(v162) ^ 0xB5u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v159) ^ 0xB) - 0xDFB8477BE8800AFLL);
  v165 = (v161 + v163 - 2 * (v161 & v163) - 2 * ((v161 + v163 - 2 * (v161 & v163)) & 0xEDA2C13 ^ (v161 + v163) & 1) - 1898304494) ^ *(v70 + 4 * (((v151 + 18) ^ v156) ^ 0x7Au) - 0x1D5D167E398FEC93);
  v166 = (v160 - ((2 * v160) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * ((((v116 >> 20) - ((2 * (v116 >> 20)) & 0x24) + 18) ^ a15) ^ 0xA3u) - 0x1D5D167E398FEC93);
  v167 = ((v164 ^ 0x369089B0) - 2 * ((v164 ^ 0x369089B0) & 0xEDA2C1B ^ v164 & 9) - 1898304494) ^ *(v70 + 4 * (v155 ^ 0x44u) - 0x1D5D167E398FEC93);
  v168 = v63;
  v169 = *(v62 + 4 * (~(2 * (BYTE2(v157) ^ 0xC3)) + (BYTE2(v157) ^ 0xC3)) - 0x4BD238C3A2C90E64) ^ *(a10 + 4 * (BYTE1(v155) ^ 0xF3u) - 0xD043202411972F5) ^ *(v70 + 4 * (v159 ^ 0x55u) - 0x1D5D167E398FEC93) ^ *(v63 + 4 * (HIBYTE(v162) ^ 0xAE) - 0xDFB8477BE8800AFLL);
  v170 = *(v62 + 4 * (BYTE2(v165) ^ 0xA5u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v166) ^ 0x6A) - 0xDFB8477BE8800AFLL);
  v171 = (v170 ^ 0x369089B0) - 2 * ((v170 ^ 0x369089B0) & 0x3A95AF7F ^ v170 & 1);
  v172 = *(a10 + 4 * ((((v151 + 11282) ^ v156) >> 8) ^ 0x42u) - 0xD043202411972F5);
  v173 = (v167 - ((2 * v167) & 0x752B5EFC) + 982888318) ^ v172;
  v174 = (v171 + 982888318) ^ *(a10 + 4 * ((((v167 - ((2 * v167) & 0x5EFC) - 20610) ^ v172) >> 8) ^ 0xD6u) - 0xD043202411972F5);
  *(v35 - 100) = v174 - ((2 * v174) & 0x1DB45824);
  HIDWORD(v490) = v165;
  v175 = *(v62 + 4 * (BYTE2(v173) ^ 0x46u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v165) ^ 0x68) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v176 = (v175 - ((2 * v175) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v169) ^ 0x17u) - 0xD043202411972F5);
  v499 = v176 - ((2 * v176) & 0x1DB45824);
  HIDWORD(v491) = v169;
  v492 = v166;
  v177 = *(v62 + 4 * (BYTE2(v169) ^ 1u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v173) ^ 0x63) - 0xDFB8477BE8800AFLL);
  v178 = *(v62 + 4 * (BYTE2(v166) ^ 0xD8u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v169) ^ 0x11) - 0xDFB8477BE8800AFLL);
  v179 = ((v177 ^ 0x369089B0) - 2 * ((v177 ^ 0x369089B0) & 0x3A95AF7F ^ v177 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v166) ^ 0xEEu) - 0xD043202411972F5);
  v497 = v179 - ((2 * v179) & 0x1DB45824);
  v180 = ((v178 ^ 0x369089B0) - 2 * ((v178 ^ 0x369089B0) & 0x3A95AF7F ^ v178 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v165) ^ 0x73u) - 0xD043202411972F5);
  v181 = ((v156 ^ 0x8EDA2C12) - (v495 ^ v494 ^ v156 ^ 0xB44F836C)) ^ ((v495 ^ v494 ^ 0xC56A5081) + 1);
  v182 = v495 ^ v494 ^ 0xBDFD5F15 ^ (v181 - ((2 * v181) & 0xED1E0D6) - 2023165845);
  v496 = v180 - ((2 * v180) & 0x1DB45824);
  v183 = v182 + (v156 ^ 0x8EDA2C12);
  v184 = (v489 - 2 * ((v490 ^ 0x369089B0) & 0x3A95AF7F ^ v490 & 1)) ^ HIDWORD(v489);
  v185 = (v184 - ((2 * v184) & 0x1DB45824) - 1898304494) ^ HIDWORD(a17);
  v186 = (v183 ^ 0xE03C427A) >> (v172 & 0x18 ^ 0x18) >> (v172 & 0x18);
  v187 = v185 - ((2 * v185) & 0x17C74AAA) + 199468373 - ((2 * (v185 - ((2 * v185) & 0x17C74AAA) + 199468373)) & 0x30AE0BC2) - 1739127327;
  v188 = ((v493 ^ v491 ^ 0xC0526CE) - ((2 * (v493 ^ v491 ^ 0xC0526CE)) & 0x1DB45824) - 1898304494) ^ a15;
  v189 = *(v62 + 4 * (BYTE2(v150) ^ 0xA7u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * v186 - 0xDFB8477BE8800AFLL);
  v190 = ((v189 ^ 0x369089B0) - 2 * ((v189 ^ 0x369089B0) & 0x3A95AF7F ^ v189 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v187) ^ 5u) - 0xD043202411972F5);
  v191 = *(v63 + 4 * (HIBYTE(v150) ^ 0x8C) - 0xDFB8477BE8800AFLL) ^ 0x369089B0 ^ *(v62 + 4 * (BYTE2(v187) ^ 0x57u) - 0x4BD238C3A2C90E64);
  v192 = (v190 - ((2 * v190) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * ((((v493 ^ v491 ^ 0xCE) - ((2 * (v493 ^ v491 ^ 0xCE)) & 0x24) + 18) ^ a15) ^ 0x5Bu) - 0x1D5D167E398FEC93);
  v193 = *(a10 + 4 * (((((v493 ^ v491 ^ 0x26CE) - ((2 * (v493 ^ v491 ^ 0x26CE)) & 0x5824) + 11282) ^ a15) >> 8) ^ 0xCBu) - 0xD043202411972F5) ^ (v191 - ((2 * v191) & 0x752B5EFC) + 982888318);
  v194 = (v193 - ((2 * v193) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v183 ^ 0x7Au) - 0x1D5D167E398FEC93);
  v195 = *(v62 + 4 * (BYTE2(v188) ^ 0x98u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v187) ^ 0x98) - 0xDFB8477BE8800AFLL);
  v196 = ((v195 ^ 0x369089B0) - 2 * ((v195 ^ 0x369089B0) & 0x3A95AF7F ^ v195 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v183) ^ 0x42u) - 0xD043202411972F5);
  v197 = (v196 - ((2 * v196) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v150 ^ 0xF5u) - 0x1D5D167E398FEC93);
  v198 = *(v62 + 4 * (BYTE2(v183) ^ 0x3Cu) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v188) ^ 0xF0) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v199 = (v198 - ((2 * v198) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v150) ^ 0xB1u) - 0xD043202411972F5);
  v200 = (v199 - ((2 * v199) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v187 ^ 0xE1u) - 0x1D5D167E398FEC93);
  v201 = *(v63 + 4 * (HIBYTE(v192) ^ 0x6A) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v194) ^ 0xA5u) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  v202 = *(v62 + 4 * (BYTE2(v197) ^ 0x46u) - 0x4BD238C3A2C90E64) ^ *(v63 + 4 * (HIBYTE(v194) ^ 0x68) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v203 = (v201 - ((2 * v201) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v197) ^ 0xD6u) - 0xD043202411972F5);
  v204 = (v202 - ((2 * v202) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v200) ^ 0x1Du) - 0xD043202411972F5);
  v205 = v204 - ((2 * v204) & 0x1DB45824);
  v206 = v197 ^ 0xCA;
  v207 = *(v63 + 4 * (HIBYTE(v197) ^ 0x63) - 0xDFB8477BE8800AFLL) ^ 0x8CC4377C ^ *(a10 + 4 * (BYTE1(v192) ^ 0xEEu) - 0xD043202411972F5);
  v208 = (v207 - ((2 * v207) & 0x1822364) - 2134830670) ^ *(v62 + 4 * (BYTE2(v200) ^ 0xDEu) - 0x4BD238C3A2C90E64);
  v209 = *(v63 + 4 * (HIBYTE(v200) ^ 0x93) - 0xDFB8477BE8800AFLL) ^ *(v62 + 4 * (BYTE2(v192) ^ 0xD8u) - 0x4BD238C3A2C90E64);
  v210 = ((v209 ^ 0x369089B0) - 2 * ((v209 ^ 0x369089B0) & 0x3A95AF7F ^ v209 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v194) ^ 0x73u) - 0xD043202411972F5);
  v211 = v70;
  v212 = *(v70 + 4 * (v200 ^ 0x91u) - 0x1D5D167E398FEC93) ^ 0x6CA34E5C ^ (v203 - ((2 * v203) & 0x1DB45824) - 1898304494);
  v213 = *(v70 + 4 * (v192 ^ 0x78u) - 0x1D5D167E398FEC93) ^ (v205 - 1898304494) ^ 0x4063DC3;
  v214 = (*(v70 + 4 * (v492 ^ 0x78u) - 0x1D5D167E398FEC93) ^ 0x4063DC3 ^ (v499 - 1898304494)) - v213 - 53905306;
  v215 = *(v70 + 4 * (v194 ^ 0x9Fu) - 0x1D5D167E398FEC93) ^ 0x6740EB09 ^ (v208 - ((2 * v208) & 0x1DB45824) - 1898304494);
  v216 = v214 - ((2 * v214) & 0x3CE16522) + 510702225;
  v217 = *(v70 + 4 * v206 - 0x1D5D167E398FEC93) ^ 0xF49EF698 ^ (v210 - ((2 * v210) & 0x1DB45824) - 1898304494);
  v218 = ((*(v70 + 4 * (v169 ^ 0x4Du) - 0x1D5D167E398FEC93) ^ 0x6CA34E5C ^ (*(v35 - 100) - 1898304494)) - v212 + 865967923) ^ 0x56F67BB9;
  v219 = -1422477015 * v216 - ((1450013266 * v216) & 0x6DB45C68) + 920268340;
  v220 = (v219 ^ (-1658318191 * v218 - ((978330914 * v218) & 0x6DB45C68) + 920268340)) + 2 * ((v219 ^ 0x36DA2E34) & (-1658318191 * v218));
  v221 = ((*(v70 + 4 * (BYTE4(v490) ^ 0x9Fu) - 0x1D5D167E398FEC93) ^ 0x6740EB09 ^ (v497 - 1898304494)) - v215 - 1853515355) ^ 0xA4C106CD;
  v222 = 48203159 * (((*(v70 + 4 * (v173 ^ 0xCAu) - 0x1D5D167E398FEC93) ^ 0xF49EF698 ^ (v496 - 1898304494)) - v217 + 1796168778) ^ 0x4CF5F7E1);
  v223 = (-1743822563 * v221 - ((807322170 * v221) & 0x6DB45C68) + 920268340) ^ v219;
  v224 = v222 ^ (-1743822563 * v221);
  v225 = v222 - v220;
  v226 = v223 ^ v225;
  v227 = v220 - v224;
  v228 = v227 ^ v224;
  v229 = v226 + v225;
  v230 = v229 + v227;
  v231 = v212 - v230;
  v232 = v230 + v226;
  v233 = v231 - ((2 * v231 + 509763158) & 0x340067BC) - 382639351;
  v234 = (v232 + v228) ^ v229;
  v235 = v213 - v232 - ((2 * (v213 - v232) - 45258980) & 0x927A69D8) - 941365126;
  v236 = v215 - (v232 + v228) - ((2 * (v215 - (v232 + v228)) + 31003774) & 0x126F436);
  v237 = v217 - v234 - ((2 * (v217 - v234) + 59242864) & 0xCE1C709E) + 1758606599;
  v238 = v236 - 1619000230;
  v239 = v236 + 528483418;
  v240 = *(v35 - 112);
  v241 = *(v35 - 144);
  v242 = *(v240 + 4 * (HIBYTE(v233) ^ 0x1A) - 0x2F85FCF88F60544DLL) ^ 0x5068F2A ^ *(v241 + 4 * (BYTE2(v235) ^ 0x3Du) - 0x2A731EC66193DDA1);
  v243 = *(v35 - 152);
  v244 = (v242 - ((2 * v242) & 0x931DD50) + 77131432) ^ *(v243 + 4 * (BYTE1(v238) ^ 0x7Au) - 0x5A0C6F68AE545A6DLL);
  v245 = v244 - ((2 * v244) & 0x9B89FE0A);
  v246 = *(v240 + 4 * (HIBYTE(v235) ^ 0x49) - 0x2F85FCF88F60544DLL) ^ 0x5068F2A ^ *(v241 + 4 * (BYTE2(v238) ^ 0x93u) - 0x2A731EC66193DDA1);
  v247 = (v246 - ((2 * v246) & 0x931DD50) + 77131432) ^ *(v243 + 4 * (BYTE1(v237) ^ 0x38u) - 0x5A0C6F68AE545A6DLL);
  v248 = *(v241 + 4 * (BYTE2(v237) ^ 0xEu) - 0x2A731EC66193DDA1) ^ *(v240 + 4 * HIBYTE(v239) - 0x2F85FCF88F60544DLL) ^ 0x5068F2A;
  v249 = (v248 - ((2 * v248) & 0x931DD50) + 77131432) ^ *(v243 + 4 * (BYTE1(v233) ^ 0x33u) - 0x5A0C6F68AE545A6DLL);
  v250 = (v249 - ((2 * v249) & 0x9B89FE0A) - 842727675) ^ *(*(v35 - 136) + 4 * (v235 ^ 0xECu) - 0x702C6BC3053EE768);
  v251 = v238 ^ 0x1B;
  v252 = *(v35 - 136);
  v253 = (v247 - ((2 * v247) & 0x9B89FE0A) - 842727675) ^ *(v252 + 4 * ((v231 - ((2 * v231 + 86) & 0xBC) + 9) ^ 0xDEu) - 0x702C6BC3053EE768);
  v254 = *(v241 + 4 * BYTE2(v233) - 0x2A731EC66193DDA1) ^ *(v240 + 4 * (HIBYTE(v237) ^ 0xE7) - 0x2F85FCF88F60544DLL);
  v255 = ((v254 ^ 0x5068F2A) - 2 * ((v254 ^ 0x5068F2A) & 0x498EEAD ^ v254 & 5) + 77131432) ^ *(v243 + 4 * (BYTE1(v235) ^ 0x34u) - 0x5A0C6F68AE545A6DLL);
  v256 = (v253 + 1795476705 - ((2 * v253) & 0xD60999C2)) ^ HIDWORD(a12);
  v257 = (((v250 + 1795476705 - ((2 * v250) & 0xD60999C2)) ^ HIDWORD(a12)) + 1168309730 - ((2 * ((v250 + 1795476705 - ((2 * v250) & 0xD60999C2)) ^ HIDWORD(a12))) & 0x8B45FBC4)) ^ HIDWORD(a15);
  v258 = *(v252 + 4 * v251 - 0x702C6BC3053EE768);
  *(v35 - 100) = HIDWORD(a15) ^ a29;
  v259 = HIDWORD(a15) ^ a29 ^ v258 ^ 0xD8B01E17 ^ (v255 - ((2 * v255) & 0x9B89FE0A) - 842727675);
  v260 = (v259 + 1795476705 - ((2 * v259) & 0xD60999C2)) ^ HIDWORD(a12);
  v261 = a32 ^ a11 ^ (v257 + 120090142 + (~(2 * v257) | 0xF1AF23C5));
  v262 = (((v256 + 1168309730 - ((2 * v256) & 0x8B45FBC4)) ^ HIDWORD(a15)) + 120090142 + (~(2 * ((v256 + 1168309730 - ((2 * v256) & 0x8B45FBC4)) ^ HIDWORD(a15))) | 0xF1AF23C5)) ^ a11;
  v263 = (HIDWORD(a14) - (a33 ^ 0x733F808A ^ v261)) ^ ((v261 ^ 0x3DCA23A6) + 1);
  v264 = (v260 - 1324720941 - ((2 * v260) & 0x6214B9A6)) ^ a33;
  v265 = (v262 + 120720948 - ((2 * v262) & 0xE641C68)) ^ a22;
  v266 = (v264 + 120720948 - ((2 * v264) & 0xE641C68)) ^ a22;
  v267 = (v261 ^ 0x6D9A9915 ^ (v263 - ((2 * v263) & 0x5F5E8A98) - 1347467956)) + HIDWORD(a14);
  v268 = (v265 - 1324720941 - ((2 * v265) & 0x6214B9A6)) ^ a33;
  LODWORD(v241) = ((v267 - ((2 * v267) & 0x6013FF84) + 1879703490) ^ a12) & 0x525F9141;
  v269 = *(v252 + 4 * (v237 ^ 0x4Fu) - 0x702C6BC3053EE768) ^ (v245 - 842727675) ^ 0xA8643567 ^ v253;
  v270 = v268 - ((2 * v268) & 0xE013FF84) - 267780158;
  v271 = v266 - ((2 * v266) & 0xE013FF84) - 267780158;
  v272 = (v267 - ((2 * v267) & 0xE013FF84) - 267780158) ^ a12;
  v273 = v272 & 0xADA06EBE | v241;
  v274 = v273 - 2 * ((v272 & 0x2820243E | v241 & 0x2864357F) ^ v272 & 0x18);
  v275 = v271 ^ v270 ^ v273;
  v276 = ((v271 ^ a12) - ((2 * (v271 ^ a12)) & 0x50C86ACE) - 1469827737) ^ v269;
  v277 = *(v35 - 160);
  v278 = *(v277 + 4 * (BYTE2(v276) ^ 0x25u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v275) ^ 0xEB) - 0xDFB8477BE8800AFLL);
  v279 = (v278 ^ 0x369089B0) - 2 * ((v278 ^ 0x369089B0) & 0x3A95AF7F ^ v278 & 1);
  v280 = (v274 - 1469827737) ^ v269;
  v281 = ((v270 ^ a12) - ((2 * (v270 ^ a12)) & 0x50C86ACE) - 1469827737) ^ v269;
  v282 = (((v281 ^ 0x4F161F1C) - (v281 ^ 0xFD27C3CD)) ^ 0xFFFFFFFE) + (v281 ^ 0x4F161F1C);
  v283 = v282 - ((2 * v282) & 0x43C7ACCC) + 568579686;
  v284 = *(v277 + 4 * (BYTE2(v283) ^ 0xE3u) - 0x4BD238C3A2C90E64) ^ *(a10 + 4 * ((((v274 + 13671) ^ v269) >> 8) ^ 0xF8u) - 0xD043202411972F5);
  v285 = (v284 ^ 0xBA54BECC) - 2 * ((v284 ^ 0xBA54BECC) & 0x36519813 ^ v284 & 0x11);
  v286 = *(v168 + 4 * (HIBYTE(v283) ^ 0x21) - 0xDFB8477BE8800AFLL);
  v287 = *(v277 + 4 * (BYTE2(v280) ^ 7u) - 0x4BD238C3A2C90E64);
  v288 = (v287 ^ 0x80C111B2) + (v286 ^ 0xB6519802) - 2 * ((v287 ^ 0xC111B2) & (v286 ^ 0x36519802));
  v289 = (v288 - ((2 * v288) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v275) ^ 0xA2u) - 0xD043202411972F5);
  v290 = *(v70 + 4 * (v276 ^ 0x35u) - 0x1D5D167E398FEC93);
  v291 = -2017378560 - (v290 & 4 | 0x43E09F80);
  if ((v289 & v290 & 4) == 0)
  {
    v291 = v290 & 4 | 0x43E09F80;
  }

  v292 = (v285 - 1236166654) ^ *(v168 + 4 * (HIBYTE(v276) ^ 0xB4) - 0xDFB8477BE8800AFLL);
  v293 = (v292 - ((2 * v292) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v275 ^ 0xF0u) - 0x1D5D167E398FEC93);
  LODWORD(v295) = __ROR4__(v290 & 0xFFFFFFFB ^ 0x8EDA2C12 ^ (v289 - 1138794368 + v291), 6) ^ 0xF7F3791A;
  HIDWORD(v295) = v295;
  v294 = v295 >> 26;
  v296 = *(v277 + 4 * (BYTE2(v294) ^ 0x54u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v293) ^ 0xCE) - 0xDFB8477BE8800AFLL);
  v297 = (v296 ^ 0x369089B0) - 2 * ((v296 ^ 0x369089B0) & 0x3A95AF7F ^ v296 & 1);
  v298 = *(v277 + 4 * (BYTE2(v275) ^ 0xF4u) - 0x4BD238C3A2C90E64) ^ 0x369089B0 ^ *(v168 + 4 * (HIBYTE(v280) ^ 0x39) - 0xDFB8477BE8800AFLL);
  v299 = (v298 - ((2 * v298) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v276) ^ 0x3Du) - 0xD043202411972F5);
  v300 = (v299 - ((2 * v299) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v283 ^ 0x66u) - 0x1D5D167E398FEC93);
  v301 = (v279 + 982888318) ^ *(a10 + 4 * (BYTE1(v283) ^ 0xD6u) - 0xD043202411972F5);
  v302 = (v301 - ((2 * v301) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v280 ^ 0xF8u) - 0x1D5D167E398FEC93);
  v303 = *(v277 + 4 * (BYTE2(v302) ^ 0xF4u) - 0x4BD238C3A2C90E64) ^ 0x369089B0 ^ *(v168 + 4 * (HIBYTE(v300) ^ 0x5D) - 0xDFB8477BE8800AFLL);
  v304 = v300 ^ 0x50;
  v305 = *(a10 + 4 * (BYTE1(v293) ^ 0xB5u) - 0xD043202411972F5) ^ (v303 + 982888319 + (~(2 * v303) | 0x8AD4A103));
  v306 = *(v277 + 4 * (BYTE2(v293) ^ 0xE1u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v302) ^ 0xAF) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v307 = (v297 + 982888318) ^ *(a10 + 4 * (BYTE1(v300) ^ 0xE4u) - 0xD043202411972F5);
  v308 = (v305 - ((2 * v305) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * ((v295 >> 26) ^ 0xD4u) - 0x1D5D167E398FEC93);
  v309 = *(v168 + 4 * (HIBYTE(v294) ^ 0xF6) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v300) ^ 0x52u) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  v310 = *(a10 + 4 * (BYTE1(v294) ^ 0x20u) - 0xD043202411972F5) ^ (v306 - ((2 * v306) & 0x752B5EFC) + 982888318);
  v311 = (v307 - ((2 * v307) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v302 ^ 0xC7u) - 0x1D5D167E398FEC93);
  v312 = (v309 - ((2 * v309) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v302) ^ 0xB2u) - 0xD043202411972F5);
  v313 = (v310 - ((2 * v310) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * v304 - 0x1D5D167E398FEC93);
  v314 = (v312 - ((2 * v312) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v293 ^ 0xBu) - 0x1D5D167E398FEC93);
  v315 = *(v277 + 4 * (BYTE2(v311) ^ 0x65u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v313) ^ 0xAE) - 0xDFB8477BE8800AFLL);
  v316 = *(v277 + 4 * (BYTE2(v313) ^ 0x9Fu) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v308) ^ 0xDA) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v317 = (v316 - ((2 * v316) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v311) ^ 0x9Du) - 0xD043202411972F5);
  v318 = v315 ^ 0x369089B0;
  v319 = (v315 ^ 0x369089B0) & 0x1A95AF7F;
  v320 = v315 & 1;
  v321 = v319 ^ v320;
  v322 = v318 & 0x3A95AF7F ^ v320;
  v318 += 982888318;
  v323 = *(a10 + 4 * (BYTE1(v314) ^ 0x4Du) - 0xD043202411972F5);
  HIDWORD(v295) = v323 ^ (v318 - 2 * v321);
  LODWORD(v295) = v323 ^ (v318 - 2 * v322);
  v324 = (v317 - ((2 * v317) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v314 ^ 0x3Eu) - 0x1D5D167E398FEC93);
  v325 = *(v168 + 4 * (HIBYTE(v311) ^ 0x65) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v314) ^ 0xEDu) - 0x4BD238C3A2C90E64);
  HIDWORD(v295) = (v295 >> 30) ^ 0x6A99BDB3;
  LODWORD(v295) = HIDWORD(v295);
  v326 = ((v295 >> 2) - ((2 * (v295 >> 2)) & 0x1DB45824) - 1898304494) ^ *(v70 + 4 * (v308 ^ 0x6Cu) - 0x1D5D167E398FEC93);
  v327 = ((v325 ^ 0x369089B0) - 2 * ((v325 ^ 0x369089B0) & 0x3A95AF7F ^ v325 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v308) ^ 0xDu) - 0xD043202411972F5);
  v328 = (v327 - ((2 * v327) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v313 ^ 0xB0u) - 0x1D5D167E398FEC93);
  v329 = *(v168 + 4 * (HIBYTE(v314) ^ 0xAB) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v308) ^ 0x20u) - 0x4BD238C3A2C90E64);
  v330 = ((v329 ^ 0x369089B0) - 2 * ((v329 ^ 0x369089B0) & 0x3A95AF7F ^ v329 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v313) ^ 0xECu) - 0xD043202411972F5);
  v331 = (v330 - ((2 * v330) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v311 ^ 0x1Cu) - 0x1D5D167E398FEC93);
  v332 = (((v317 - ((2 * v317) & 0x5824) + 11282) ^ *(v211 + 4 * (v314 ^ 0x3Eu) - 0x1D5D167E398FEC93)) >> 8) ^ 0xA0;
  v333 = *(v168 + 4 * (HIBYTE(v326) ^ 0x40) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v328) ^ 0xC8u) - 0x4BD238C3A2C90E64);
  v334 = *(v168 + 4 * (HIBYTE(v328) ^ 0x90) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v331) ^ 0xF7u) - 0x4BD238C3A2C90E64);
  v335 = *(v168 + 4 * (HIBYTE(v324) ^ 0xEC) - 0xDFB8477BE8800AFLL) ^ 0x369089B0 ^ *(v277 + 4 * (BYTE2(v326) ^ 0x3Au) - 0x4BD238C3A2C90E64);
  v336 = *(a10 + 4 * (BYTE1(v331) ^ 0x36u) - 0xD043202411972F5) ^ ((v333 ^ 0x369089B0) - 2 * ((v333 ^ 0x369089B0) & 0x3A95AF7F ^ v333 & 1) + 982888318);
  v337 = (v335 - ((2 * v335) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v328) ^ 0xD0u) - 0xD043202411972F5);
  v338 = (v337 - ((2 * v337) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v331 ^ 0x95u) - 0x1D5D167E398FEC93);
  v339 = *(v168 + 4 * (HIBYTE(v331) ^ 0x53) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v324) ^ 0x8Du) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  v340 = (v336 - ((2 * v336) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v324 ^ 0xBAu) - 0x1D5D167E398FEC93);
  v341 = v328 ^ 0x88;
  v342 = *(a10 + 4 * v332 - 0xD043202411972F5);
  v343 = (((((v334 ^ 0x369089B0) - (v342 ^ 0xC0526CE ^ v334)) ^ ((v342 ^ 0xC56A5081) + 1)) - ((2 * (((v334 ^ 0x369089B0) - (v342 ^ 0xC0526CE ^ v334)) ^ ((v342 ^ 0xC56A5081) + 1))) & 0x752B5EFC) + 982888318) ^ v342) + (v334 ^ 0x369089B0);
  v344 = (v343 - ((2 * v343) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * ((((v295 >> 2) - ((2 * (v295 >> 2)) & 0x24) + 18) ^ *(v211 + 4 * (v308 ^ 0x6Cu) - 0x1D5D167E398FEC93)) ^ 0x2Du) - 0x1D5D167E398FEC93);
  v345 = *(a10 + 4 * (((((v295 >> 2) - ((2 * (v295 >> 2)) & 0x5824) + 11282) ^ *(v211 + 4 * (v308 ^ 0x6Cu) - 0x1D5D167E398FEC93)) >> 8) ^ 0xB5u) - 0xD043202411972F5) ^ (v339 - ((2 * v339) & 0x752B5EFC) + 982888318);
  v346 = (v345 - ((2 * v345) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * v341 - 0x1D5D167E398FEC93);
  v347 = *(v168 + 4 * (HIBYTE(v338) ^ 0x34) - 0xDFB8477BE8800AFLL) ^ 0x369089B0 ^ *(v277 + 4 * (BYTE2(v340) ^ 0xC1u) - 0x4BD238C3A2C90E64);
  v348 = (v347 - ((2 * v347) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v344) ^ 0x2Du) - 0xD043202411972F5);
  v349 = *(v168 + 4 * (HIBYTE(v340) ^ 0x48) - 0xDFB8477BE8800AFLL) ^ *(a10 + 4 * (BYTE1(v346) ^ 0xF3u) - 0xD043202411972F5) ^ 0x8CC4377C;
  v350 = (v349 - ((2 * v349) & 0x1822364) - 2134830670) ^ *(v277 + 4 * (BYTE2(v344) ^ 0xF3u) - 0x4BD238C3A2C90E64);
  v351 = v340 ^ 0x5E;
  v352 = BYTE1(v340) ^ 0xA9;
  v353 = *(v277 + 4 * (BYTE2(v338) ^ 0xF1u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v346) ^ 0xE1) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v354 = BYTE1(v338) ^ 0xA7;
  v355 = *(v277 + 4 * (BYTE2(v346) ^ 0x1Eu) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v344) ^ 0x63) - 0xDFB8477BE8800AFLL);
  v356 = *(v211 + 4 * (v346 ^ 0x68u) - 0x1D5D167E398FEC93) ^ (v348 - ((2 * v348) & 0x1DB45824) - 1898304494);
  v357 = (v350 - ((2 * v350) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v338 ^ 0xAFu) - 0x1D5D167E398FEC93);
  v358 = ((v355 ^ 0x369089B0) - 2 * ((v355 ^ 0x369089B0) & 0x3A95AF7F ^ v355 & 1) + 982888318) ^ *(a10 + 4 * v354 - 0xD043202411972F5);
  v359 = (v358 - ((2 * v358) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * v351 - 0x1D5D167E398FEC93);
  v360 = (v353 - ((2 * v353) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * v352 - 0xD043202411972F5);
  v361 = (v360 - ((2 * v360) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v344 ^ 0xF2u) - 0x1D5D167E398FEC93);
  v362 = *(v168 + 4 * (HIBYTE(v357) ^ 0x96) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v359) ^ 0x73u) - 0x4BD238C3A2C90E64);
  v363 = *(v211 + 4 * (v361 ^ 0x1Du) - 0x1D5D167E398FEC93) ^ *(v168 + 4 * (HIBYTE(v356) ^ 0x4C) - 0xDFB8477BE8800AFLL) ^ *(a10 + 4 * (BYTE1(v359) ^ 0xFBu) - 0xD043202411972F5) ^ *(v277 + 4 * (BYTE2(v357) ^ 0x2Cu) - 0x4BD238C3A2C90E64);
  v364 = *(a10 + 4 * (BYTE1(v356) ^ 0xDAu) - 0xD043202411972F5);
  v365 = *(v168 + 4 * (HIBYTE(v359) ^ 0x3C) - 0xDFB8477BE8800AFLL);
  v366 = ((v362 ^ 0x369089B0) - 2 * ((v362 ^ 0x369089B0) & 0x3A95AF7F ^ v362 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v361) ^ 0x33u) - 0xD043202411972F5);
  v367 = ((v364 ^ 0x3A95AF7E) - (v364 ^ v365 ^ 0x8CC4377C)) ^ ((v365 ^ 0x49AE67FD) + 1);
  v368 = (v367 - ((2 * v367) & 0x6CA33004) - 1236166654) ^ v365;
  v369 = (v368 + (v364 ^ 0x3A95AF7E) - ((2 * (v368 + (v364 ^ 0x3A95AF7E))) & 0x1822364) - 2134830670) ^ *(v277 + 4 * (BYTE2(v361) ^ 0x3Du) - 0x4BD238C3A2C90E64);
  v370 = *(v211 + 4 * (v356 ^ 0x5Du) - 0x1D5D167E398FEC93);
  HIDWORD(v295) = (v366 - ((2 * v366) & 0x345824) + 5909522) ^ v370;
  LODWORD(v295) = (v366 - ((2 * v366) & 0x1DB45824) - 1898304494) ^ v370;
  v371 = (v369 - ((2 * v369) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v357 ^ 0x23u) - 0x1D5D167E398FEC93);
  v372 = *(v277 + 4 * (BYTE2(v356) ^ 0x21u) - 0x4BD238C3A2C90E64) ^ *(a10 + 4 * (BYTE1(v357) ^ 0x2Du) - 0xD043202411972F5);
  v373 = ((v372 ^ 0xBA54BECC) - 2 * ((v372 ^ 0xBA54BECC) & 0x36519803 ^ v372 & 1) - 1236166654) ^ *(v168 + 4 * (HIBYTE(v361) ^ 0x59) - 0xDFB8477BE8800AFLL);
  v374 = (v373 - ((2 * v373) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v359 ^ 0x28u) - 0x1D5D167E398FEC93);
  LOBYTE(v373) = v364 & 8;
  v375 = (v374 ^ 0x12CB8D0E) >> (v364 & 8 ^ 8);
  HIDWORD(v295) = (v295 >> 23) ^ 0xD37B7ED9;
  LODWORD(v295) = HIDWORD(v295);
  v376 = v295 >> 9;
  v377 = *(v277 + 4 * (BYTE2(v376) ^ 0x98u) - 0x4BD238C3A2C90E64);
  v378 = *(v168 + 4 * (HIBYTE(v363) ^ 0xE7) - 0xDFB8477BE8800AFLL);
  v379 = (v378 ^ 0xB6519802) + (v377 ^ 0x80C111B2);
  v380 = v379 - 2 * ((v378 ^ 0x36519802) & (v377 ^ 0xC111B2));
  v381 = (v380 - 2 * (v380 & 0x3A95AF7F ^ v379 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v371) ^ 0x4Au) - 0xD043202411972F5);
  v382 = (v381 - ((2 * v381) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v374 ^ 0xEu) - 0x1D5D167E398FEC93);
  v383 = *(v168 + 4 * (HIBYTE(v376) ^ 0xE) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v371) ^ 0x1Au) - 0x4BD238C3A2C90E64);
  v384 = ((v383 ^ 0x369089B0) - 2 * ((v383 ^ 0x369089B0) & 0x3A95AF7F ^ v383 & 1) + 982888318) ^ *(a10 + 4 * (v375 >> v373) - 0xD043202411972F5);
  v385 = (v384 - ((2 * v384) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v363 ^ 0x2Du) - 0x1D5D167E398FEC93);
  v386 = *(a10 + 4 * (BYTE1(v363) ^ 0xCu) - 0xD043202411972F5) ^ *(v277 + 4 * (BYTE2(v374) ^ 0xCBu) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v371) ^ 0xC4) - 0xDFB8477BE8800AFLL);
  v387 = *(v168 + 4 * (HIBYTE(v374) ^ 0x12) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v363) ^ 0x72u) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  v388 = *(v211 + 4 * ((v295 >> 9) ^ 0x3Eu) - 0x1D5D167E398FEC93);
  v389 = (v387 - ((2 * v387) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v376) ^ 0x87u) - 0xD043202411972F5);
  LODWORD(v295) = __ROR4__((v389 - ((2 * v389) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v371 ^ 0xE6u) - 0x1D5D167E398FEC93), 7) ^ 0x587B8E1F;
  HIDWORD(v295) = v295;
  v390 = v295 >> 25;
  v391 = (v386 ^ 0x7E48E3A9 ^ ((((v388 ^ 0x8EDA2C12) - (v386 ^ v388 ^ 0x82DF0ADC)) ^ ((v386 ^ 0xF3FAD931) + 1)) - ((2 * (((v388 ^ 0x8EDA2C12) - (v386 ^ v388 ^ 0x82DF0ADC)) ^ ((v386 ^ 0xF3FAD931) + 1))) & 0xE49B8ACE) + 1917699431)) + (v388 ^ 0x8EDA2C12);
  v392 = *(v277 + 4 * (BYTE2(v391) ^ 0xA6u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v385) ^ 0x81) - 0xDFB8477BE8800AFLL);
  v393 = *(v277 + 4 * (BYTE2(v385) ^ 0x19u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v382) ^ 0x86) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v394 = (v393 - ((2 * v393) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v391) ^ 0x10u) - 0xD043202411972F5);
  v395 = *(a10 + 4 * (BYTE1(v390) ^ 0xB0u) - 0xD043202411972F5);
  v396 = v395 ^ 0xC0526CE ^ v392;
  v395 ^= 0x3A95AF7Eu;
  v397 = (v392 ^ 0xC96F764F) + 1;
  v398 = ((v395 - v396) ^ v397) + 915442097 + (~(2 * ((v395 - v396) ^ v397)) | 0x92DEEC9F);
  v399 = (v394 - ((2 * v394) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * ((v295 >> 25) ^ 0x2Du) - 0x1D5D167E398FEC93);
  v400 = v382 ^ 0xAC;
  v401 = ((-(v398 ^ v392) ^ v397) - ((2 * (-(v398 ^ v392) ^ v397)) & 0x6D211360) + 915442096) ^ v392;
  v402 = *(v277 + 4 * (BYTE2(v390) ^ 0x42u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v391) ^ 0x4E) - 0xDFB8477BE8800AFLL);
  v403 = *(v35 - 96);
  v404 = *(v211 + 4 * (v385 ^ 0xE4u) - 0x1D5D167E398FEC93) ^ *(a10 + 4 * (BYTE1(v382) ^ 0x6Du) - 0xD043202411972F5) ^ ((v402 ^ 0x369089B0) - 2 * ((v402 ^ 0x369089B0) & 0x3A95AF7F ^ v402 & 1) + 982888318);
  v405 = v401 + v395;
  v406 = *(v277 + 4 * (BYTE2(v382) ^ 0xC5u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v390) ^ 0x3C) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v407 = (v406 - ((2 * v406) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v385) ^ 0xBDu) - 0xD043202411972F5);
  v408 = (v405 - ((2 * v405) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * v400 - 0x1D5D167E398FEC93);
  v409 = (v407 - ((2 * v407) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v391 ^ 0xC1u) - 0x1D5D167E398FEC93);
  v410 = (-1493927674 - (v404 ^ 0x282E5514)) ^ ((v404 ^ 0x7125D3ED) + 1);
  v411 = v404 ^ 0x2F27C00F ^ (v410 - ((2 * v410) & 0x43FBD83A) - 1577194467);
  v412 = v411 - ((2 * v411 + 233370124) & 0x349FAE48) - 1052487638;
  v413 = *(v277 + 4 * (BYTE2(v408) ^ 0xC9u) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v399) ^ 0x9A) - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v414 = (((v407 - ((2 * v407) & 0x5824) + 11282) ^ *(v211 + 4 * (v391 ^ 0xC1u) - 0x1D5D167E398FEC93)) >> 8) ^ 0x90;
  v415 = (v413 - ((2 * v413) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * (BYTE1(v412) ^ 0xD7u) - 0xD043202411972F5);
  v416 = (v415 - ((2 * v415) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v409 ^ 0x89u) - 0x1D5D167E398FEC93);
  v417 = *(v168 + 4 * (HIBYTE(v408) ^ 0xA5) - 0xDFB8477BE8800AFLL) ^ *(v277 + 4 * (BYTE2(v412) ^ 0x4Fu) - 0x4BD238C3A2C90E64) ^ 0x369089B0;
  v418 = (v417 - ((2 * v417) & 0x752B5EFC) + 982888318) ^ *(a10 + 4 * v414 - 0xD043202411972F5);
  v419 = (v418 - ((2 * v418) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v399 ^ 0x3Au) - 0x1D5D167E398FEC93);
  v420 = *(a10 + 4 * (BYTE1(v408) ^ 0xD7u) - 0xD043202411972F5);
  v421 = HIBYTE(v409) ^ 0x7A;
  v422 = *(v277 + 4 * (BYTE2(v409) ^ 0xECu) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * (HIBYTE(v412) ^ 0x1A) - 0xDFB8477BE8800AFLL);
  v423 = ((v422 ^ 0x369089B0) - 2 * ((v422 ^ 0x369089B0) & 0x3A95AF7F ^ v422 & 1) + 982888318) ^ *(a10 + 4 * (BYTE1(v399) ^ 0xA6u) - 0xD043202411972F5);
  v424 = (v423 - ((2 * v423) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v408 ^ 0x3Fu) - 0x1D5D167E398FEC93);
  v425 = *(v277 + 4 * (BYTE2(v399) ^ 0xDFu) - 0x4BD238C3A2C90E64) ^ *(v168 + 4 * v421 - 0xDFB8477BE8800AFLL) ^ 0x369089B0;
  v426 = (v425 - ((2 * v425) & 0x752B5EFC) + 982888318) ^ v420;
  v427 = (v426 - ((2 * v426) & 0x1DB45824) - 1898304494) ^ *(v211 + 4 * (v412 ^ 0x24u) - 0x1D5D167E398FEC93);
  v429 = *(v35 - 152);
  v428 = *(v35 - 144);
  v430 = *(v429 + 4 * (BYTE1(v424) ^ 0x19u) - 0x5A0C6F68AE545A6DLL) ^ *(v428 + 4 * (BYTE2(v419) ^ 0x28u) - 0x2A731EC66193DDA1);
  v431 = *(v35 - 112);
  v432 = ((v430 ^ 0xA73653F9) - 2 * ((v430 ^ 0xA73653F9) & 0x26A8327F ^ v430 & 4) - 1498926469) ^ *(v431 + 4 * (HIBYTE(v416) ^ 0x5F) - 0x2F85FCF88F60544DLL);
  v433 = v432 - ((2 * v432) & 0x9B89FE0A);
  v434 = *(v431 + 4 * (HIBYTE(v419) ^ 0x57) - 0x2F85FCF88F60544DLL);
  v435 = *(v35 - 136);
  v436 = v434 ^ *(v435 + 4 * (v416 ^ 0x20u) - 0x702C6BC3053EE768) ^ *(v428 + 4 * (BYTE2(v424) ^ 0xD9u) - 0x2A731EC66193DDA1) ^ *(v429 + 4 * (BYTE1(v427) ^ 0x15u) - 0x5A0C6F68AE545A6DLL) ^ 0xCC5A9E87;
  v437 = *(v431 + 4 * (HIBYTE(v424) ^ 0x53) - 0x2F85FCF88F60544DLL) ^ *(v428 + 4 * (BYTE2(v427) ^ 0xF5u) - 0x2A731EC66193DDA1);
  v438 = *(v428 + 4 * (BYTE2(v416) ^ 0xCDu) - 0x2A731EC66193DDA1) ^ *(v431 + 4 * (HIBYTE(v427) ^ 0x72) - 0x2F85FCF88F60544DLL) ^ 0x5068F2A;
  v439 = (v438 - ((2 * v438) & 0x931DD50) + 77131432) ^ *(v429 + 4 * (BYTE1(v419) ^ 0x82u) - 0x5A0C6F68AE545A6DLL);
  v440 = ((v437 ^ 0x5068F2A) - 2 * ((v437 ^ 0x5068F2A) & 0x498EEB8 ^ v437 & 0x10) + 77131432) ^ *(v429 + 4 * (BYTE1(v416) ^ 0x27u) - 0x5A0C6F68AE545A6DLL);
  v441 = (v440 - ((2 * v440) & 0x9B89FE0A) - 842727675) ^ *(v435 + 4 * (v419 ^ 0x72u) - 0x702C6BC3053EE768);
  v442 = (v439 - ((2 * v439) & 0x9B89FE0A) - 842727675) ^ *(v435 + 4 * (v424 ^ 0x69u) - 0x702C6BC3053EE768);
  v443 = (v433 - 842727675) ^ *(v435 + 4 * (v427 ^ 0x7Cu) - 0x702C6BC3053EE768) ^ v436;
  v444 = v442 & 0x40000 ^ 0x5FB7BF6C;
  v445 = v441 ^ v443;
  v446 = ((v444 - 1605615468) & (v441 ^ v443 ^ 0x6E7733F)) == 0;
  v447 = (v441 ^ 0x6E7733F) - ((2 * (v441 ^ 0x6E7733F)) & 0x1AA6A038) + 223563804;
  v448 = v443 - ((2 * v443) & 0x1AA6A038) + 223563804;
  v449 = (-1286594468 - (v445 ^ 0xB5B75363)) ^ ((v445 ^ 0xF9188CC0) + 1);
  v450 = v445 ^ 0x64B7889A;
  v451 = v445 ^ 0x2BEB88E2 ^ (v449 - ((2 * v449) & 0x5A19F7BA) + 755825629);
  v452 = v444 - 154312704;
  v453 = -1238049064 - v444;
  if (v446)
  {
    v453 = v452;
  }

  v454 = v442 ^ 0x30E6A9AD ^ v436 ^ v447;
  v455 = (v442 ^ 0x30E6A9AD ^ v448) + 1795476705 - ((2 * (v442 ^ 0x30E6A9AD ^ v448)) & 0xD60999C2);
  v456 = (v454 ^ v442 & 0xFFFBFFFF ^ (v450 - 1451302764 + v453) ^ 0x3DB1F9B1) + 1795476705 - 2 * ((v454 ^ v442 & 0xFFFBFFFF ^ (v450 - 1451302764 + v453) ^ 0x3DB1F9B1) & 0x6B04CCEF ^ (v454 ^ v442 & 0xFFFBFFFF ^ (v450 - 1451302764 + v453)) & 0xE);
  v457 = (v451 - ((2 * v451 + 1721778360) & 0xD60999C2) + 508882237) ^ HIDWORD(a12);
  v458 = (v454 + 1795476705 - ((2 * v454) & 0xD60999C2)) ^ HIDWORD(a12);
  v459 = (v456 ^ HIDWORD(a12)) + 1168309730 - ((2 * (v456 ^ HIDWORD(a12))) & 0x8B45FBC4);
  v460 = (v455 ^ HIDWORD(a12)) + 1168309730 - ((2 * (v455 ^ HIDWORD(a12))) & 0x8B45FBC4);
  v461 = (v458 + 1168309730 - ((2 * v458) & 0x8B45FBC4)) ^ HIDWORD(a15);
  v462 = *(v35 - 100);
  v463 = v462 ^ (v457 + 1168309730 - ((2 * v457) & 0x8B45FBC4));
  if ((v498 & 0x89ADB0C) != 0)
  {
    v464 = v463 ^ 0x9D120000;
  }

  else
  {
    v464 = 16711680;
  }

  v465 = v464 & (v463 ^ 0x9D120000);
  v466 = v462 ^ v459;
  v467 = (v461 + 120090142 + (~(2 * v461) | 0xF1AF23C5)) ^ a11;
  v468 = BYTE2(v465) - ((v465 >> 15) & 0x7C);
  v469 = v462 ^ v460;
  v470 = v467 - ((2 * v467) & 0x66A040B8) - 1286594468 - 2 * ((v467 - ((2 * v467) & 0x66A040B8) - 1286594468) & 0x68556F3F ^ v467 & 2) - 397054147;
  v471 = *(&off_1002DD400 + v34 - 2164) - 17670483;
  v472 = v471[((v462 ^ v460) >> 24) ^ 0x72] + 29;
  a16[10] = v472 ^ (2 * v472) & 0xBC ^ 6;
  v473 = v471[HIBYTE(v463) ^ 0xC1] + 29;
  a16[14] = v473 ^ (2 * v473) & 0xBC ^ 6;
  v474 = *(&off_1002DD400 + (v34 ^ 0x9F8)) - 1137244967;
  v475 = ((2 * ((v463 >> 8) ^ 0x4C120F)) & 0x18) + ((v463 >> 8) ^ 3);
  a16[6] = v474[BYTE1(v463) ^ 0xF0] ^ (v475 - ((2 * v475) & 0x70) - 72) ^ 6;
  v476 = *(&off_1002DD400 + v34 - 2299) - 1280115706;
  a16[2] = v476[v463 ^ 0xBFLL] ^ 0xF9;
  v477 = *(&off_1002DD400 + (v34 ^ 0x848)) - 1365458071;
  a16[1] = v477[BYTE2(v469) ^ 0xAELL] ^ 0x14;
  a16[7] = v476[v470 ^ 0x8ELL] ^ 0xF9;
  a16[4] = v477[BYTE2(v470) ^ 0xB9] ^ 0x14;
  a16[13] = v474[BYTE1(v469) ^ 0xD0] ^ ((BYTE1(v469) ^ 0x2F) - 2 * (((BYTE1(v469) ^ 0x2F) + 12) & 0x39 ^ (BYTE1(v469) ^ 0x2F) & 1) - 60) ^ 6;
  v478 = v474[((v466 ^ 0xC3A9) >> 8) ^ 0xC8];
  a16[3] = v478 ^ ((((v466 ^ 0xC3A9) >> 8) ^ 0x37) - 2 * (((((v466 ^ 0xC3A9) >> 8) ^ 0x37) + 12) & 0x39 ^ (((v466 ^ 0xC3A9) >> 8) ^ 0x37) & 1) - 60) ^ 6;
  a16[9] = v476[v466 ^ 0x1ALL] ^ 0xF9;
  v479 = v434 & 0x10;
  v480 = v474[BYTE1(v470) ^ 0xA7];
  v481 = (v466 ^ 0x2E42C3A9) >> (v479 ^ 0x10);
  v482 = (v470 >> 8) ^ 0xE85558;
  v483 = (2 * v482 + 24) & 0x70;
  a16[12] = v480 ^ (v482 - v483 - 60) ^ 6;
  LOBYTE(v482) = v471[HIBYTE(v470) ^ 0x65] + 29;
  a16[15] = v482 ^ (2 * v482) & 0xBC ^ 6;
  a16[11] = v476[v469 ^ 0xE3] ^ 0xF9;
  a16[8] = v477[(v468 - 66) ^ 0x52] ^ 0x14;
  *a16 = v477[(v481 >> v479) ^ 0xECLL] ^ 0x14;
  v484 = v471[HIBYTE(v466) ^ 0xA3];
  v485 = (2 * v484 + 58) & 0xFFFFFFB0;
  v484 += 117;
  v486 = v484 - v485;
  HIDWORD(v487) = v484;
  LODWORD(v487) = (v486 ^ 0x58) << 24;
  a16[5] = (2 * v486) & 0xBC ^ 0x6B ^ ((((v487 >> 27) ^ 0xBB) >> 5) | (8 * ((v487 >> 27) ^ 0xBB)));
  HIDWORD(a13) = v490 ^ 0x369089B0;
  return (*(v403 + 8 * v34))(v476, v480, v481, v483, v478, a27, v403, a16, a9, a10, a11, a12, a13, a14, a15, a16, a17, v489, v490, v491);
}

uint64_t sub_10014D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 - 104);
  v9 = v8 + 4709;
  v10 = v8 ^ 0x200D;
  (*(a7 + 8 * (v8 ^ 0x200D)))(a6);
  (*(a7 + 8 * (v8 ^ 0x200D)))(*(v7 - 112) - 0x2F85FCF88F60544DLL);
  (*(a7 + 8 * (v8 ^ 0x200D)))(*(v7 - 136) - 0x702C6BC3053EE768);
  (*(a7 + 8 * (v8 ^ 0x200D)))(*(v7 - 120) - 0xDFB8477BE8800AFLL);
  v8 += 8195;
  (*(a7 + 8 * v8))(*(v7 - 144) - 0x2A731EC66193DDA1);
  (*(a7 + 8 * v8))(*(v7 - 128) - 0x1D5D167E398FEC93);
  (*(a7 + 8 * v8))(*(v7 - 152) - 0x5A0C6F68AE545A6DLL);
  v12 = (*(a7 + 8 * v10))(*(v7 - 160) - 0x4BD238C3A2C90E64);
  return (*(a7 + 8 * v9))(v12);
}

void sub_10014D64C()
{
  if ((v1 ^ 0x9F77F36B) + ((2 * v1) & 0x3EEFE6D6) == -1619528853)
  {
    v2 = 68588956;
  }

  else
  {
    v2 = 68543915;
  }

  *(v0 + 24) = v2;
}

void sub_10014D6A4(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (143055461 * (a1 ^ 0x7E96549D));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10014D96C@<X0>(int a1@<W1>, unsigned int a2@<W2>, int a3@<W5>, uint64_t a4@<X8>)
{
  if (v6 < a2 != v5 + v4 < ((v7 - 319) ^ a1 ^ (v7 + v8) & v9))
  {
    v10 = v5 + v4 < ((v7 - 319) ^ a1 ^ (v7 + v8) & v9);
  }

  else
  {
    v10 = v5 + v4 > v6;
  }

  return (*(a4 + 8 * ((v10 * a3) ^ v7)))();
}

uint64_t sub_10014D9C4@<X0>(unsigned int a1@<W3>, int a2@<W4>, unsigned int a3@<W6>, uint64_t a4@<X8>)
{
  v9 = ((v4 + a2) ^ (a2 + 2680)) + v8 + v6;
  v10 = (a3 < a1) ^ (v9 < a1);
  v11 = v9 < a3;
  if (v10)
  {
    v11 = a3 < a1;
  }

  return (*(a4 + 8 * ((v11 * ((v4 + a2) & v5 ^ v7)) ^ v4)))();
}

uint64_t sub_10014DA20@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v11 = *(a1 + (v9 - 1225770739) * v8);
  if (v11 == 1892425815)
  {
    return (*(a2 + 8 * (((((*(a1 + (v9 - 1225770739) * v8 + 8) - 0x61A7AC8E90EB2EF0) ^ a7) == 0xE32D6F2A0A2230E1) * (v10 - 2234)) | a6)))();
  }

  if (v11 == 1892425813)
  {
    return (*(a2 + 8 * (v7 - 202)))();
  }

  return (*(a2 + 8 * (v7 + 1975)))();
}

uint64_t sub_10014DC3C(uint64_t result)
{
  v1 = 199319723 * ((~result & 0x92D057FC0783FBDBLL | result & 0x6D2FA803F87C0424) ^ 0xB53DF365B2731513);
  v2 = *(result + 8);
  v3 = *(result + 24) ^ v1;
  LODWORD(v1) = *(result + 16) + v1;
  *v2 = 134218240;
  *(v2 + 4) = v3;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1;
  return result;
}

void sub_10014DCB0(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (199319723 * ((2 * (a1 & 0x1670E561) - a1 - 376497506) ^ 0x5C7FF456));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10014DD98@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, int a4)
{
  v6 = a1 | 0x400;
  *(v4 - 0x69E03ED5AB43E13ALL) = 11;
  a3 = ((a1 | 0x400) + 1613) ^ (301143701 * ((&a3 + 936140195 - 2 * (&a3 & 0x37CC5DA3)) ^ 0x4C64C0D1));
  (*(v5 + 8 * ((a1 | 0x400) ^ 0x2FD4)))(&a3);
  a3 = v6 + 143055461 * ((941856403 - (&a3 | 0x38239693) + (&a3 | 0xC7DC696C)) ^ 0xB94A3DF1) + 1520;
  v7 = (*(v5 + 8 * (v6 ^ 0x2FD1)))(&a3);
  return (*(v5 + 8 * (((a4 == ((v6 - 347158095) & 0x14B137D7 ^ 0x416920F)) * (((v6 + 1298137071) & 0xB29FFFFF) + 8544)) ^ v6)))(v7);
}

uint64_t sub_10014DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  a11 = (v12 - 899) ^ (1084270361 * (((&a10 | 0x46A07956) - (&a10 & 0x46A07956)) ^ 0x8A89864C));
  v13 = (*(v11 + 8 * (v12 ^ 0x2C06)))(&a10);
  return (*(v11 + 8 * ((1011 * (a10 != (v12 ^ 0x3F3) + 68587410)) ^ v12)))(v13);
}

uint64_t sub_10014DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(a10) = (v12 + 1220) ^ (301143701 * ((((2 * &a10) | 0x29A139BA) - &a10 + 1798267683) ^ 0xEF7801AF));
  (*(v11 + 8 * (v12 ^ 0x2E4D)))(&a10);
  a10 = a11;
  LODWORD(a11) = (v12 + 3607) ^ (1110906037 * ((&a10 + 1762720663 - 2 * (&a10 & 0x6910FB97)) ^ 0xE0579727));
  v15 = (*(v11 + 8 * (v12 ^ 0x2E7A)))(&a10);
  return (*(v11 + 8 * ((((v14 == 68588956) & v13) * ((v12 + 1321) ^ 0xCFC)) | v12)))(v15);
}

void sub_10014E14C(uint64_t a1)
{
  v1 = *(a1 + 4) - 199319723 * ((a1 & 0x85E1EE1E | ~(a1 | 0x85E1EE1E)) ^ 0xCFEEFF29);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10014E208@<X0>(int a1@<W8>)
{
  v3 = a1 + 4239;
  v4 = a1 - 4091;
  *(v1 - 0x93C9FB87E111F0DLL) = 1498323160;
  *(v1 - 0x93C9FB87E111F09) = -1107194094;
  v5 = (*(v2 + 8 * ((a1 + 4239) ^ 0xE68)))(49152);
  *(v1 - 0x93C9FB87E111F05) = v5 + 0x7772EBF04C35A355;
  return (*(v2 + 8 * (((v5 != 0) * (((v3 ^ 0x30B3) - 4117) ^ v4)) ^ v3)))();
}

uint64_t sub_10014E318@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v3 + a1) + 24 * (v2 + v1);
  *(v8 - 0x7772EBF04C35A355) = 1892425813;
  *(v8 - 0x7772EBF04C35A34DLL) = 0x61A7AC8E90EB2EF0;
  *(v8 - 0x7772EBF04C35A345) = 0x30C548CFE67D1EE4;
  return (*(v4 + 8 * (((v2 + 1 + v1 < (*(v3 + v7) ^ v5)) * (((v6 - 1373) | 0x1558) - 5777)) ^ v6)))();
}

void sub_10014E3EC(id a1)
{
  v1 = *(&off_1002DD400 + ((97 * (dword_1002E0DB8 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295680[byte_10027C9F0[(97 * (dword_1002E0DB8 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x51]) + 271);
  v2 = *(v1 - 720645194);
  v3 = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * ((dword_1002E0DA8 + v2) ^ 0x1C))] ^ 0xF6] ^ (97 * ((dword_1002E0DA8 + v2) ^ 0x1C))) + 849);
  v4 = &v8[1] + v2 + *(v3 - 1056958627);
  *(v1 - 720645194) = 1912442209 * (v4 - 0x71B9CF6610DE981CLL);
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  v7 = 0;
  v8[0] = 4;
  LODWORD(v3) = 1912442209 * (*(v1 - 720645194) ^ 0x10DE981C ^ *(v3 - 1056958627));
  v5 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0DB8) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0DB8) ^ 0x1C))] ^ 0xDE]) + 498) - 2062743291;
  v6 = *&v5[8 * ((29 * ((*&v5[8 * (v3 ^ byte_100295680[byte_10027C9F0[v3] ^ 0xF6]) + 85544])(*(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[v3] ^ 0xCA] ^ v3) + 744) - 720011730, &v7, v8, 0, 0) == 0)) ^ 0x98E)];
  __asm { BRAA            X8, X17 }
}

void sub_10014E654(uint64_t a1)
{
  v1 = *(a1 + 8) - 586739509 * ((~a1 & 0xFC5E07C2 | a1 & 0x3A1F83D) ^ 0xAD401A7);
  v2 = *(&off_1002DD400 + v1 - 3118) - 2062743291;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x27B5)])(16) == 0) * ((v1 ^ 0xE51) + 646 + 3 * (v1 ^ 0xE51) - 935)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10014E994(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  STACK[0x750] = a1 + 0x5A0411E37F4B9882;
  STACK[0xAA0] = *(a8 + 8 * v8);
  return (*(a8 + 8 * (v8 ^ 0x1DA9 ^ (v8 - 733163881) & 0x2BB3387B)))();
}

uint64_t sub_10014EC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x938];
  STACK[0x8E8] = STACK[0x938];
  LODWORD(STACK[0x834]) = STACK[0xA98];
  return (*(a8 + 8 * ((((((v8 - 450347014) & 0x1AD7BFEE) + 7731) ^ ((v8 - 5634) | 0x44)) * (v9 == 0)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10014ECFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  LODWORD(STACK[0x8C8]) = a6;
  LODWORD(STACK[0x69C]) = 0;
  STACK[0x5F0] = 0;
  LODWORD(STACK[0x83C]) = 476266654;
  STACK[0x9B8] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x7A4]) = 1443455193;
  STACK[0x818] = 0;
  STACK[0xA58] = 0x1138F6A92264F486;
  if (v8)
  {
    v9 = v7 == 1443455193;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(a5 + 8 * ((v10 * (((v6 - 3971) | 0x1C2) + ((v6 + 2879) ^ 0xFFFFD462))) ^ v6)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10014ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 232) = (v8 - 396) ^ (301143701 * ((2 * ((v9 - 232) & 0x758AB3B0) - (v9 - 232) + 175459401) ^ 0x71DDD13B));
  (*(a8 + 8 * (v8 ^ 0x243D)))(v9 - 232);
  *(v9 - 232) = v8 + 143055461 * ((v9 - 534568036 - 2 * ((v9 - 232) & 0xE0232484)) ^ 0x9EB57019) - 489;
  v10 = (*(STACK[0x5E0] + 8 * (v8 ^ 0x2438)))(v9 - 232);
  return (*(STACK[0x5E0] + 8 * ((5086 * (*(v9 - 228) == ((2 * v8) ^ 0x4168E5A))) ^ v8)))(v10);
}

uint64_t sub_10014EE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 228) = (v8 - 2925) ^ (1084270361 * ((((2 * (v9 - 232)) | 0x5B7282AE) - (v9 - 232) - 767115607) ^ 0xE190BE4D));
  v10 = (*(a8 + 8 * (v8 ^ 0x241C)))(v9 - 232);
  return (*(STACK[0x5E0] + 8 * ((7420 * (*(v9 - 232) == (v8 ^ 0x1F6B) + 68576902 + ((v8 + 545) | 0xC8A))) ^ v8)))(v10);
}

uint64_t sub_10014EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 232) = (v8 - 1995817928) ^ (251922329 * ((2 * ((v9 - 232) & 0x52B6A1F0) - (v9 - 232) + 759782927) ^ 0x20EAF605));
  v10 = (*(a8 + 8 * (v8 ^ 0x3520)))(v9 - 232);
  v11 = STACK[0x5E0];
  v12 = *(v9 - 228);
  v13 = *(&off_1002DD400 + (v8 ^ 0x1FBD));
  v14 = *(&off_1002DD400 + v8 - 7080);
  if (v12 == (((v8 - 90) ^ 0x3A) + v8 - 37))
  {
    v15 = v13 - 377375342;
  }

  else
  {
    v15 = v14 - 1606317083;
  }

  STACK[0x818] = v15;
  v16 = (v13 - 377375318);
  v17 = (v14 - 1606317059);
  if (v12 != (((v8 - 90) ^ 0x3A) + v8 - 37))
  {
    v16 = v17;
  }

  return (*(v11 + 8 * ((44 * (*v16 == 16)) ^ v8)))(v10);
}

uint64_t sub_10014F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = (v10 + 40);
  v15 = (v11 + 40);
  if (v8 == v9)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *v16;
  v18 = STACK[0xB20];
  STACK[0x708] = &STACK[0xDD0] + STACK[0xB20] + ((v13 - 6066) ^ 0xBE5691671B9A007FLL);
  STACK[0xB20] = v18 + 48;
  STACK[0xAA8] = v12;
  STACK[0x990] = 0x61CEF89FDDA89DF2;
  STACK[0x648] = 0x1138F6A92264F486;
  STACK[0x658] = v17;
  return (*(a8 + 8 * (((v17 != 0x510808E226CB14FCLL) * (395 * (v13 ^ 0x1C60) - 3322)) ^ v13)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10014F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * v8);
  LODWORD(STACK[0x5C0]) = -2085252650;
  LODWORD(STACK[0x5B0]) = -1333586555;
  LODWORD(STACK[0x5D0]) = STACK[0x5D8] + 5292;
  return v9();
}

uint64_t sub_10014F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = STACK[0x658];
  *(v9 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  *(v9 - 0x61CEF89FDDA89D8BLL) = *(v11 - 0x510808E226CB14E5);
  *(v9 - 0x61CEF89FDDA89D8CLL) = *(v11 - 0x510808E226CB14E6);
  *(v9 - 0x61CEF89FDDA89D8DLL) = *(v11 - 0x510808E226CB14E7);
  *(v9 - 0x61CEF89FDDA89D8ELL) = *(v11 - 0x510808E226CB14E8);
  *(v9 - 0x61CEF89FDDA89D8FLL) = *(v11 - 0x510808E226CB14E9);
  *(v9 - 0x61CEF89FDDA89D90) = *(v11 - 0x510808E226CB14EALL);
  *(v9 - 0x61CEF89FDDA89D91) = *(v11 - 0x510808E226CB14EBLL);
  *(v9 + v10) = *(v11 - 0x510808E226CB14ECLL);
  *(v9 - 0x61CEF89FDDA89D93) = *(v11 - 0x510808E226CB14EDLL);
  *(v9 - 0x61CEF89FDDA89D94) = *(v11 - 0x510808E226CB14EELL);
  *(v9 - 0x61CEF89FDDA89D95) = *(v11 - 0x510808E226CB14EFLL);
  *(v9 - 0x61CEF89FDDA89D96) = *(v11 - 0x510808E226CB14F0);
  *(v9 - 0x61CEF89FDDA89D97) = *(v11 - 0x510808E226CB14F1);
  *(v9 - 0x61CEF89FDDA89D98) = *(v11 - 0x510808E226CB14F2);
  *(v9 - 0x61CEF89FDDA89D99) = *(v11 - 0x510808E226CB14F3);
  *(v9 - 0x61CEF89FDDA89D9ALL) = *(v11 - 0x510808E226CB14F4);
  return (*(a8 + 8 * (((STACK[0x990] == 0x61CEF89FDDA89DF2) * (((v8 - 5845) | 0xC20) - 3734)) ^ v8)))();
}

uint64_t sub_10014F604@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v3 - 0x61CEF89FDDA89DAALL) = 975819945;
  *(v3 - 0x61CEF89FDDA89DCBLL) = *(a2 - 0x510808E226CB14C5);
  *(v3 - 0x61CEF89FDDA89DCCLL) = *(a2 - 0x510808E226CB14C6);
  *(v3 - 0x61CEF89FDDA89DCDLL) = *(a2 - 0x510808E226CB14C7);
  *(v3 - 0x61CEF89FDDA89DCELL) = *(a2 - 0x510808E226CB14C8);
  *(v3 - 0x61CEF89FDDA89DCFLL) = *(a2 - 0x510808E226CB14C9);
  *(v3 - 0x61CEF89FDDA89DD0) = *(a2 - 0x510808E226CB14CALL);
  *(v3 - 0x61CEF89FDDA89DD1) = *(a2 - 0x510808E226CB14CBLL);
  *(v3 - 0x61CEF89FDDA89DD2) = *(a2 - 0x510808E226CB14CCLL);
  *(v3 - 0x61CEF89FDDA89DD3) = *(a2 - 0x510808E226CB14CDLL);
  *(v3 - 0x61CEF89FDDA89DD4) = *(a2 - 0x510808E226CB14CELL);
  *(v3 - 0x61CEF89FDDA89DD5) = *(a2 - 0x510808E226CB14CFLL);
  *(v3 - 0x61CEF89FDDA89DD6) = *(a2 - 0x510808E226CB14D0);
  *(v3 - 0x61CEF89FDDA89DD7) = *(a2 - 0x510808E226CB14D1);
  *(v3 - 0x61CEF89FDDA89DD8) = *(a2 - 0x510808E226CB14D2);
  *(v3 - 0x61CEF89FDDA89DD9) = *(a2 - 0x510808E226CB14D3);
  *(v3 - 0x61CEF89FDDA89DDALL) = *(a2 - 0x510808E226CB14D4);
  *(v3 - 0x61CEF89FDDA89DDBLL) = *(a2 - 0x510808E226CB14D5);
  *(v3 - 0x61CEF89FDDA89DDCLL) = *(a2 - 0x510808E226CB14D6);
  *(v3 - 0x61CEF89FDDA89DDDLL) = *(a2 - 0x510808E226CB14D7);
  *(v3 - 0x61CEF89FDDA89DDELL) = *(a2 - 0x510808E226CB14D8);
  *(v3 - 0x61CEF89FDDA89DDFLL) = *(a2 - 0x510808E226CB14D9);
  *(v3 - 0x61CEF89FDDA89DE0) = *(a2 - 0x510808E226CB14DALL);
  *(v3 - 0x61CEF89FDDA89DE1) = *(a2 - 0x510808E226CB14DBLL);
  *(v3 - 0x61CEF89FDDA89DE2) = *(a2 - 0x510808E226CB14DCLL);
  *(v3 - 0x61CEF89FDDA89DE3) = *(a2 - 0x510808E226CB14DDLL);
  *(v3 - 0x61CEF89FDDA89DE4) = *(a2 - 0x510808E226CB14DELL);
  *(v3 - 0x61CEF89FDDA89DE5) = *(a2 - 0x510808E226CB14DFLL);
  *(v3 - 0x61CEF89FDDA89DE6) = *(a2 - 0x510808E226CB14E0);
  *(v3 - 0x61CEF89FDDA89DE7) = *(a2 - 0x510808E226CB14E1);
  *(v3 - 0x61CEF89FDDA89DE8) = *(a2 - 0x510808E226CB14E2);
  *(v3 - 0x61CEF89FDDA89DE9) = *(a2 - 0x510808E226CB14E3);
  *(v3 - 0x61CEF89FDDA89DEALL) = *(a2 - 0x510808E226CB14E4);
  return (*(a1 + 8 * (v2 | 0xC0A)))();
}

uint64_t sub_10014FB40@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = STACK[0x708];
  v4 = STACK[0x708] + 0x3CBB23BF9D4F77B2;
  *v3 = 0x4DC5C22F5BDB8B24;
  *(v3 + 8) = (*(a2 - 0x510808E226CB1490) ^ 0xD73FF2DB) + 2127130110 + ((*(a2 - 0x510808E226CB1490) << ((v2 - 63) ^ 0xF)) & 0xAE7FE5B6);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0x1508CA1EBLL;
  *(v3 + 32) = 1443455197;
  *(v3 + 36) = 1;
  STACK[0x778] = v4;
  LODWORD(STACK[0x8FC]) = 0;
  STACK[0x980] = 0x61CEF89FDDA89DF2;
  v5 = (*(a1 + 8 * (v2 ^ 0x23CC)))(128);
  v6 = STACK[0x5E0];
  STACK[0x678] = v5 + 0x1138F6A92264F486;
  return (*(v6 + 8 * (((4 * (v5 == 0)) | (32 * (v5 == 0))) ^ v2)))();
}

uint64_t sub_10014FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0xB4E)))(112);
  v10 = STACK[0x5E0];
  STACK[0x690] = v9 + 0x61CEF89FDDA89DF2;
  return (*(v10 + 8 * (((v9 == 0) * ((v8 - 6402) ^ 0x636 ^ (v8 - 1345561563) & 0x50338F3F)) ^ v8)))();
}

uint64_t sub_10014FDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 1159094972;
  *(a1 + 4) = 408423770;
  *(a1 + 72) = 975819913;
  *(a1 + 76) = 975819913;
  *(a1 + 80) = 17769;
  *(a1 + 8) = v10;
  *(a1 + 16) = v10;
  *(a1 + 24) = v10;
  *(a1 + 32) = v10;
  *(a1 + 40) = v10;
  *(a1 + 48) = v10;
  *(a1 + 56) = v10;
  *(a1 + 64) = v10;
  v12 = STACK[0x690];
  *(v12 - 0x61CEF89FDDA89D9ELL) = STACK[0x5C0];
  *(v12 - 0x61CEF89FDDA89D8ALL) = STACK[0x5B0];
  *(v12 - 0x61CEF89FDDA89D9ALL) = v10;
  *(v12 + v9) = v10;
  *(v12 - 0x61CEF89FDDA89D86) = 34;
  *(v11 - 0x3C615E798401F4C9) = v12;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_10014FE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 26 * (STACK[0x5D8] ^ 0xF42);
  v11 = STACK[0x5D8] + 2350;
  LODWORD(STACK[0x95C]) = v9;
  return (*(a8 + 8 * (((v10 ^ 0x17E3) * v8) ^ v11)))();
}

uint64_t sub_10014FF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  v11 = STACK[0x710];
  *(v8 - 0x61CEF89FDDA89D8BLL) = *(STACK[0x710] - 0x510808E226CB14E5);
  *(v8 - 0x61CEF89FDDA89D8CLL) = *(v11 - 0x510808E226CB14E6);
  *(v8 - 0x61CEF89FDDA89D8DLL) = *(v11 - 0x510808E226CB14E7);
  *(v8 - 0x61CEF89FDDA89D8ELL) = *(v11 - 0x510808E226CB14E8);
  *(v8 - 0x61CEF89FDDA89D8FLL) = *(v11 - 0x510808E226CB14E9);
  *(v8 - 0x61CEF89FDDA89D90) = *(v11 - 0x510808E226CB14EALL);
  *(v8 - 0x61CEF89FDDA89D91) = *(v11 - 0x510808E226CB14EBLL);
  *(v8 + v10) = *(v11 - 0x510808E226CB14ECLL);
  *(v8 - 0x61CEF89FDDA89D93) = *(v11 - 0x510808E226CB14EDLL);
  *(v8 - 0x61CEF89FDDA89D94) = *(v11 - 0x510808E226CB14EELL);
  *(v8 - 0x61CEF89FDDA89D95) = *(v11 - 0x510808E226CB14EFLL);
  *(v8 - 0x61CEF89FDDA89D96) = *(v11 - 0x510808E226CB14F0);
  *(v8 - 0x61CEF89FDDA89D97) = *(v11 - 0x510808E226CB14F1);
  *(v8 - 0x61CEF89FDDA89D98) = *(v11 - 0x510808E226CB14F2);
  *(v8 - 0x61CEF89FDDA89D99) = *(v11 - 0x510808E226CB14F3);
  *(v8 - 0x61CEF89FDDA89D9ALL) = *(v11 - 0x510808E226CB14F4);
  return (*(a8 + 8 * (((*(v11 - 0x510808E226CB14F8) != (v9 + 127)) * ((v9 + 1071931069) & 0xC01BABFE ^ 0x23AF)) ^ v9)))();
}

uint64_t sub_100150320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 73 * (STACK[0x5D8] ^ 0xE28);
  v11 = (STACK[0x5D8] + 1550151718) & 0xA39A81FF;
  v12 = STACK[0x5D8] - 620;
  LODWORD(STACK[0x95C]) = v9;
  return (*(a8 + 8 * (((v11 + v10 + 2996) * v8) ^ v12)))();
}

uint64_t sub_100150398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x5D8];
  v11 = STACK[0x5D8] + 1565;
  LODWORD(STACK[0x95C]) = v9;
  return (*(a8 + 8 * (((v10 ^ 0x3C7C) * v8) ^ v11)))();
}

uint64_t sub_100150408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x5D8] - 226;
  LODWORD(STACK[0x95C]) = a5;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1001504AC@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v2 - 0x61CEF89FDDA89DAALL) = 975819945;
  *(v2 - 0x61CEF89FDDA89DCBLL) = *(a2 - 0x510808E226CB14C5);
  *(v2 - 0x61CEF89FDDA89DCCLL) = *(a2 - 0x510808E226CB14C6);
  *(v2 - 0x61CEF89FDDA89DCDLL) = *(a2 - 0x510808E226CB14C7);
  *(v2 - 0x61CEF89FDDA89DCELL) = *(a2 - 0x510808E226CB14C8);
  *(v2 - 0x61CEF89FDDA89DCFLL) = *(a2 - 0x510808E226CB14C9);
  *(v2 - 0x61CEF89FDDA89DD0) = *(a2 - 0x510808E226CB14CALL);
  *(v2 - 0x61CEF89FDDA89DD1) = *(a2 - 0x510808E226CB14CBLL);
  *(v2 - 0x61CEF89FDDA89DD2) = *(a2 - 0x510808E226CB14CCLL);
  *(v2 - 0x61CEF89FDDA89DD3) = *(a2 - 0x510808E226CB14CDLL);
  *(v2 - 0x61CEF89FDDA89DD4) = *(a2 - 0x510808E226CB14CELL);
  *(v2 - 0x61CEF89FDDA89DD5) = *(a2 - 0x510808E226CB14CFLL);
  *(v2 - 0x61CEF89FDDA89DD6) = *(a2 - 0x510808E226CB14D0);
  *(v2 - 0x61CEF89FDDA89DD7) = *(a2 - 0x510808E226CB14D1);
  *(v2 - 0x61CEF89FDDA89DD8) = *(a2 - 0x510808E226CB14D2);
  *(v2 - 0x61CEF89FDDA89DD9) = *(a2 - 0x510808E226CB14D3);
  *(v2 - 0x61CEF89FDDA89DDALL) = *(a2 - 0x510808E226CB14D4);
  *(v2 - 0x61CEF89FDDA89DDBLL) = *(a2 - 0x510808E226CB14D5);
  *(v2 - 0x61CEF89FDDA89DDCLL) = *(a2 - 0x510808E226CB14D6);
  *(v2 - 0x61CEF89FDDA89DDDLL) = *(a2 - 0x510808E226CB14D7);
  *(v2 - 0x61CEF89FDDA89DDELL) = *(a2 - 0x510808E226CB14D8);
  *(v2 - 0x61CEF89FDDA89DDFLL) = *(a2 - 0x510808E226CB14D9);
  *(v2 - 0x61CEF89FDDA89DE0) = *(a2 - 0x510808E226CB14DALL);
  *(v2 - 0x61CEF89FDDA89DE1) = *(a2 - 0x510808E226CB14DBLL);
  *(v2 - 0x61CEF89FDDA89DE2) = *(a2 - 0x510808E226CB14DCLL);
  *(v2 - 0x61CEF89FDDA89DE3) = *(a2 - 0x510808E226CB14DDLL);
  *(v2 - 0x61CEF89FDDA89DE4) = *(a2 - 0x510808E226CB14DELL);
  *(v2 - 0x61CEF89FDDA89DE5) = *(a2 - 0x510808E226CB14DFLL);
  *(v2 - 0x61CEF89FDDA89DE6) = *(a2 - 0x510808E226CB14E0);
  *(v2 - 0x61CEF89FDDA89DE7) = *(a2 - 0x510808E226CB14E1);
  *(v2 - 0x61CEF89FDDA89DE8) = *(a2 - 0x510808E226CB14E2);
  *(v2 - 0x61CEF89FDDA89DE9) = *(a2 - 0x510808E226CB14E3);
  *(v2 - 0x61CEF89FDDA89DEALL) = *(a2 - 0x510808E226CB14E4);
  return (*(a1 + 8 * v3))();
}

uint64_t sub_100150A34@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  *(v2 - 0x61CEF89FDDA89D9ELL) = *(STACK[0x710] - 0x510808E226CB14FCLL);
  v3 = STACK[0xA30];
  v4 = STACK[0x9A8];
  v5 = STACK[0x814];
  v6 = *(a1 + 8 * (a2 ^ 0xB0A ^ (a2 + 7123)));
  LODWORD(STACK[0xD58]) = a2 + 7123;
  LODWORD(STACK[0xD5C]) = a2;
  STACK[0xD60] = v4;
  LODWORD(STACK[0xD6C]) = v5;
  STACK[0xD70] = STACK[0x2F8];
  STACK[0xD78] = v3;
  return v6();
}

uint64_t sub_100150BD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v8 - 0x1138F6A92264F47ELL) = a1 + 0x5A0411E37F4B9882;
  return (*(a8 + 8 * (v9 ^ (v8 == 0x1138F6A92264F486))))();
}

uint64_t sub_100150C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (v8 - 928965129) & 0x375EDF3A;
  v10 = (*(a8 + 8 * (v9 ^ 0x3F9Bu)))(16);
  return (*(STACK[0x5E0] + 8 * (((v10 == 0) * ((v9 - 3038) ^ v9 ^ 0x11E6 ^ 0xDFF)) ^ v9)))();
}

uint64_t sub_100150CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *v8 = a1 + 0x5A0411E37F4B9882;
  return (*(a8 + 8 * (((STACK[0x778] != 0x3CBB23BF9D4F77B2) * (((v9 - 552) | 0x620) ^ (v9 + 1050))) ^ v9)))();
}

uint64_t sub_100150DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v10 = *v9;
  STACK[0x9D0] = *(a5 + 8 * v6);
  STACK[0xA20] = v10;
  LODWORD(STACK[0x9B4]) = v8;
  STACK[0x5E8] = v7;
  return (*(a5 + 8 * (((v7 == 0x3CBB23BF9D4F77B2) * (((a6 - 3504) | 0xC48) ^ 0x1528)) ^ (a6 - 1204))))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100150EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 ^ 0x17C1;
  v10 = v8 - 2573;
  STACK[0x988] = *(a8 + 8 * v10);
  return (*(a8 + 8 * ((v9 - 3785) ^ v10)))();
}

uint64_t sub_100150F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 232) = (v8 + 7315) ^ (1949688233 * ((((2 * ((v9 - 232) ^ 0xA5C23E1C)) | 0xD0D3CD68) - ((v9 - 232) ^ 0xA5C23E1C) + 395712844) ^ 0xAAEC8E23));
  v10 = (*(a8 + 8 * (v8 + 10358)))(v9 - 232);
  v11 = STACK[0x5E0];
  STACK[0xAA0] = *(STACK[0x5E0] + 8 * v8);
  return (*(v11 + 8 * (v8 ^ 0x15E3)))(v10);
}

uint64_t sub_10015114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x808] = v9;
  STACK[0x9E8] = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((v8 + 1285) ^ v8)))();
}

uint64_t sub_100151178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x678] = 0x1138F6A92264F486;
  v9 = STACK[0xA9C];
  STACK[0x648] = 0x1138F6A92264F486;
  return (*(a8 + 8 * ((2258 * (v9 == ((2 * v8) ^ 0x3F82) + 68579762)) ^ (v8 + 2010))))();
}

uint64_t sub_100151244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 - 0x1138F6A92264F47ELL);
  STACK[0xAC8] = v10;
  return (*(a8 + 8 * ((((v10 == 0x5A0411E37F4B9882) ^ (v8 - 1)) & 1 | (16 * (((v10 == 0x5A0411E37F4B9882) ^ (v8 - 1)) & 1))) ^ v8)))();
}

uint64_t sub_100151360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 3554)))(32);
  v10 = STACK[0x5E0];
  STACK[0x7C8] = v9 + 0x51CE20ABD81C933BLL;
  return (*(v10 + 8 * (((((v8 - 106) ^ (v9 == 0)) & 1) * ((v8 ^ 0x1CD) - 6684)) ^ v8)))();
}

uint64_t sub_1001513D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  STACK[0xBB0] = v10;
  *(a1 + 16) = v8 + 540056518 + v9 - 3102;
  v12 = (*(a8 + 8 * (v9 ^ 0x33D3)))((v8 - 1443458797 + v9 - 1346 - 1778));
  v13 = STACK[0x5E0];
  *(a1 + 24) = v12;
  return (*(v13 + 8 * (v9 | (8 * (v12 == 0)))))();
}

uint64_t sub_1001514D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *v14 + v16 - 0x4047F3870E5CC223;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v20 - (((0x96A5A8A3375C925 - v23) | 0xE3E73D0F9C16A1ACLL) + ((v23 + 0x7695A575CC8A36DALL) | 0x1C18C2F063E95E53));
  v25 = __ROR8__(v24 ^ 0xEE9653C2CFC0BE7BLL, 8);
  v24 ^= 0x5A3B786CAB9108A8uLL;
  v26 = (v25 + v24) ^ v17;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x47E36757A390E490) + 0x23F1B3ABD1C87248) ^ 0xB5A038B383ECF845;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((v31 + v30 - ((2 * (v31 + v30)) & 0xC96D825246A69F1CLL) + 0x64B6C12923534F8ELL) ^ 0xA388372A6A5F0B8CLL, 8);
  v33 = (v31 + v30 - ((2 * (v31 + v30)) & 0xC96D825246A69F1CLL) + 0x64B6C12923534F8ELL) ^ 0xA388372A6A5F0B8CLL ^ __ROR8__(v30, 61);
  v34 = (((2 * (v32 + v33)) & 0xA0D27DCDB70F7796) - (v32 + v33) + 0x2F96C11924784434) ^ 0x23D5D9B166FE0837;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v15 - ((v36 + v35) | v15) + ((v36 + v35) | 0x9396775BABFD99FDLL)) ^ 0xD0F67F494B5EC98ELL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (__ROR8__((v22 + 1) & 0xFFFFFFFFFFFFFFF8, 8) + 0x7695A575CC8A36DALL) & 0xF9FFFFFFFFFFFFFFLL;
  v41 = __ROR8__(v40 ^ 0xB716ECD53D61FD7, 8);
  v42 = (a5 - ((v41 + (v40 ^ 0xBFDC45633787A904)) | a5) + ((v41 + (v40 ^ 0xBFDC45633787A904)) | 0x53C292A2A86B328)) ^ 0x5BD26D79E0B36992;
  v43 = v42 ^ __ROR8__(v40 ^ 0xBFDC45633787A904, 61);
  v44 = *(v11 + 8 * v13);
  *v22 = (((__ROR8__((a6 - ((v39 + v38) | a6) + ((v39 + v38) | 0x7F9E63469A7A075)) ^ 0xB27826435D2AC249, 8) + ((a6 - ((v39 + v38) | a6) + ((v39 + v38) | 0x7F9E63469A7A075)) ^ 0xB27826435D2AC249 ^ __ROR8__(v38, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v22 & 7u))) ^ HIBYTE(v12) ^ 0x63;
  v45 = (__ROR8__(v42, 8) + v43) ^ 0x96518B1852248A0DLL;
  v46 = __ROR8__(v45, 8);
  v47 = v45 ^ __ROR8__(v43, 61);
  v48 = (v46 + v47) ^ 0xC73EF603490C4402;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v18;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((((2 * (v52 + v51)) & 0xEAACCFDA6BDA5C8ALL) - (v52 + v51) - 0x755667ED35ED2E46) ^ 0xC9C990002AB181C9, 8);
  v54 = (((2 * (v52 + v51)) & 0xEAACCFDA6BDA5C8ALL) - (v52 + v51) - 0x755667ED35ED2E46) ^ 0xC9C990002AB181C9 ^ __ROR8__(v51, 61);
  v55 = (v53 + v54) ^ 0xB581C077348D623CLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  *(v22 + 1) = (((((2 * (v57 + v56)) | 0x4F7941F6F7C0CF7CLL) - (v57 + v56) - 0x27BCA0FB7BE067BELL) ^ 0xD782E2BACB358C40) >> (8 * ((v22 + 1) & 7))) ^ BYTE2(v12) ^ 0xB2;
  v58 = __ROR8__((v22 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (0x96A5A8A3375C925 - v58) & 0x28DC2FE03FC2A4CCLL | (v58 + 0x7695A575CC8A36DALL) & 0xD523D01FC03D5B33;
  v60 = v59 ^ 0x27AD412D6C14BB1BLL;
  v59 ^= 0x93006A8308450DC8;
  v61 = __ROR8__(v60, 8);
  v62 = (a7 - ((v61 + v59) | a7) + ((v61 + v59) | 0xE128DBC9577DCABLL)) ^ 0x50FCC9EF5F420611;
  v63 = v62 ^ __ROR8__(v59, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) | 0x568EB83D43A71C0ELL) - (v64 + v63) - 0x2B475C1EA1D38E07) ^ 0xBD16D706F3F7040ALL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xC73EF603490C4402;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ v18;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x43600812E0A35073;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xB581C077348D623CLL;
  *(v22 + 2) = (((__ROR8__(v73, 8) + (v73 ^ __ROR8__(v72, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v22 + 2) & 7))) ^ BYTE1(v12) ^ 0xE1;
  v74 = __ROR8__((v22 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = v20 - (((0x896A5A8A3375C925 - v74) | v7) + ((v74 + 0x7695A575CC8A36DALL) | 0xA59D379F7816DAF1));
  v76 = v75 ^ v21;
  v77 = v75 ^ a2;
  v78 = __ROR8__(v76, 8);
  v79 = ((v9 & (2 * (v78 + v77))) - (v78 + v77) + a3) ^ a4;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x96518B1852248A0DLL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xC73EF603490C4402;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - (v8 & (2 * (v85 + v84))) + v19) ^ v10;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x43600812E0A35073;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xB581C077348D623CLL;
  *(v22 + 3) = v12 ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v22 + 3) & 7))) ^ 0x3E;
  return v44();
}

uint64_t sub_100151B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x590];
  if (LODWORD(STACK[0x590]) == 12350)
  {
    return (*(STACK[0x5E0] + 8 * ((v4 + 3934) ^ (13 * (LODWORD(STACK[0x520]) != LODWORD(STACK[0x5A0]))))))();
  }

  if (v5 == 9164)
  {
    return (*(STACK[0x5E0] + 8 * (((LODWORD(STACK[0xC50]) == 1443455201) * (v4 ^ 0x38E5)) ^ (v4 + 1075))))(a1, a2, a3, a4, 68545950, 0x5EEE4453CA35DABALL);
  }

  v7 = STACK[0x5E0];
  if (v5 != 63378)
  {
    return (*(v7 + 8 * (v4 - 2310)))(a1, a2, a3, a4, 68545945, 0x5EEE4453CA35DABALL);
  }

  v8 = LODWORD(STACK[0xC68]) - ((2 * LODWORD(STACK[0xC68])) & 0x970B2054) + 1267044394;
  return (*(v7 + 8 * ((124 * (((2 * v8) & 0xDFF5EFBC ^ (v4 - 1761537568)) + (v8 ^ 0xA47F67F4) + 2147463082 == 1878697864)) ^ (v4 + 5512))))();
}

uint64_t sub_100152344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v8 = *(STACK[0x5E0] + 8 * (((a8 >= (((a6 - 3350) | 0x1410) ^ 0x1608u)) * ((a6 - 1424592704) & 0x54E997AF ^ 0x17D4)) ^ a6));
  LODWORD(STACK[0x580]) = a8;
  return v8();
}

uint64_t sub_1001523A0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = *(STACK[0x5E0] + 8 * a7);
  LODWORD(STACK[0x5D0]) = -(a8 & 0xFFFFFFF0);
  v11 = a4 + a3 + v8;
  LODWORD(STACK[0x5C0]) = v11 - 8;
  LODWORD(STACK[0x5B0]) = v11 - 7;
  LODWORD(STACK[0x5A0]) = v11 - 6;
  LODWORD(STACK[0x590]) = v11 - 5;
  return v10(a1, (a7 - 1123409690) & 0x42F5DFBB, vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(0x7695A575CC8A36DAuLL), vdupq_n_s64(0xD716ECD53D61FD7uLL), vdupq_n_s64(0xB9DC45633787A904), vdupq_n_s64(0x5EEE4453CA35DABAuLL), vdupq_n_s64(0x96518B1852248A0DLL), vdupq_n_s64(v9));
}

uint64_t sub_100152514(int a1, int a2, int8x16_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16)
{
  v36 = (v22 + v23 + 16);
  v37.i64[0] = (v19 + v23 + 16) + v16 + 10;
  v38.i64[0] = v36 + v16 + 10;
  v39.i64[0] = (a16 + v23 + 16) + v16 + 10;
  v40.i64[0] = (a14 + v23 + 16) + v16 + 10;
  v41.i64[0] = (v27 + v23 + 16) + v16 + 10;
  v42.i64[0] = (v25 + v23 + 16) + v16 + 10;
  v37.i64[1] = a1 + v23 + (a2 ^ v17) + 16 + v16 + 10;
  v38.i64[1] = (v21 + v23 + 16) + v16 + 10;
  v39.i64[1] = (a13 + v23 + 16) + v16 + 10;
  v40.i64[1] = (v20 + v23 + 16) + v16 + 10;
  v41.i64[1] = (v26 + v23 + 16) + v16 + 10;
  v42.i64[1] = (v24 + v23 + 16) + v16 + 10;
  v43.i64[0] = (LODWORD(STACK[0x590]) + v23 + 16) + v16 + 10;
  v43.i64[1] = (LODWORD(STACK[0x5A0]) + v23 + 16) + v16 + 10;
  v44 = vandq_s8(v40, a3);
  v45 = vandq_s8(v39, a3);
  v46 = vandq_s8(v38, a3);
  v47 = vandq_s8(v37, a3);
  v48 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a5);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a5);
  v52 = veorq_s8(v51, a6);
  v53 = veorq_s8(v50, a6);
  v54 = veorq_s8(v50, a7);
  v55 = veorq_s8(v51, a7);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), a8);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), a8);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), a9);
  v64 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v65 = veorq_s8(v62, a9);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v63, v64);
  v68 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = veorq_s8(vaddq_s64(v68, v66), a10);
  v71 = veorq_s8(v69, a10);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(v71, vandq_s8(vaddq_s64(v71, v71), v28)), v29), v30);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(v70, vandq_s8(vaddq_s64(v70, v70), v28)), v29), v30);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74), v31);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75), v31);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = veorq_s8(vaddq_s64(v81, v79), v32);
  v84 = veorq_s8(v82, v32);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v87 = veorq_s8(v83, v85);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v33);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v92 = veorq_s8(v89, v33);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v91);
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v97 = vaddq_s64(v49, a5);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v96, v94), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a4)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v95, v93), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a4)));
  v98 = veorq_s8(v97, a6);
  v99 = veorq_s8(v97, a7);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), a8);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), a9);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), a10);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v28)), v29), v30);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v31);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v32);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v33);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v111.i64[0] = (LODWORD(STACK[0x5B0]) + v23 + 16) + v16 + 10;
  v111.i64[1] = (LODWORD(STACK[0x5C0]) + v23 + 16) + v16 + 10;
  v114 = vaddq_s64(v113, v112);
  v115 = vandq_s8(v111, a3);
  v116 = vaddq_s64(v48, a5);
  v178.val[0] = vshlq_u64(veorq_s8(v114, v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a4)));
  v117 = veorq_s8(v116, a6);
  v118 = veorq_s8(v116, a7);
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), a8);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), a9);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), a10);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(v123, vandq_s8(vaddq_s64(v123, v123), v28)), v29), v30);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v31);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v32);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v33);
  v131 = vandq_s8(v43, a3);
  v132 = vandq_s8(v42, a3);
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a4)));
  v133 = vandq_s8(v41, a3);
  v134 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), a5);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), a5);
  v133.i64[0] = vqtbl4q_s8(v178, v35).u64[0];
  v178.val[0] = veorq_s8(v137, a6);
  v178.val[1] = veorq_s8(v136, a6);
  v138 = veorq_s8(v136, a7);
  v178.val[2] = veorq_s8(v137, a7);
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v138), a8);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[2]), a8);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v139 = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[2] = veorq_s8(v178.val[1], v178.val[3]);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(v178.val[3], v139), a9);
  v178.val[0] = veorq_s8(v178.val[0], a9);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v140 = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[2] = veorq_s8(v178.val[1], v178.val[3]);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(v178.val[3], v140), a10);
  v178.val[0] = veorq_s8(v178.val[0], a10);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[0], vandq_s8(vaddq_s64(v178.val[0], v178.val[0]), v28)), v29), v30);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[1], vandq_s8(vaddq_s64(v178.val[1], v178.val[1]), v28)), v29), v30);
  v141 = veorq_s8(v178.val[1], vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v141), v31);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[2]), v31);
  v142 = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[2] = veorq_s8(v178.val[1], v178.val[3]);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(v178.val[3], v142), v32);
  v178.val[0] = veorq_s8(v178.val[0], v32);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v143 = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[2] = veorq_s8(v178.val[1], v178.val[3]);
  v178.val[3] = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(v178.val[3], v143), v33);
  v178.val[0] = veorq_s8(v178.val[0], v33);
  v144 = vaddq_s64(v135, a5);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), veorq_s8(v178.val[1], vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v111, 3uLL), a4)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), a4)));
  v145 = veorq_s8(v144, a6);
  v146 = veorq_s8(v144, a7);
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), a8);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), a9);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), a10);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(v151, vandq_s8(vaddq_s64(v151, v151), v28)), v29), v30);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v31);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v32);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v33);
  v159 = vaddq_s64(v134, a5);
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a4)));
  v160 = veorq_s8(v159, a6);
  v161 = veorq_s8(v159, a7);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), a8);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a9);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), a10);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v28)), v29), v30);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v31);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v32);
  v172 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v174 = veorq_s8(v171, v172);
  v175 = veorq_s8(vaddq_s64(v173, v174), v33);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a4)));
  v133.i64[1] = vqtbl4q_s8(v178, v35).u64[0];
  v176 = vrev64q_s8(v133);
  *(v36 + v16 - 5) = veorq_s8(vextq_s8(v176, v176, 8uLL), *(v18 + v36));
  return (*(STACK[0x5E0] + 8 * ((15956 * (LODWORD(STACK[0x5D0]) == v23)) ^ a15)))();
}

uint64_t sub_100152F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *(STACK[0x5E0] + 8 * a5);
  LODWORD(STACK[0x5D0]) = a8 & 0xFFFFFFF8;
  return v9(a1, a1 - (a8 & 0xFFFFFFF8), vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(0x7695A575CC8A36DAuLL), vdupq_n_s64(0xD716ECD53D61FD7uLL), vdupq_n_s64(0xB9DC45633787A904), vdupq_n_s64(0x5EEE4453CA35DABAuLL), vdupq_n_s64(0x96518B1852248A0DLL), vdupq_n_s64(v8));
}

uint64_t sub_100153048@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, int8x16_t a9@<Q0>, int8x16_t a10@<Q1>, int64x2_t a11@<Q2>, int8x16_t a12@<Q3>, int8x16_t a13@<Q4>, int8x16_t a14@<Q5>, int8x16_t a15@<Q6>, int8x16_t a16@<Q7>)
{
  v31 = (v22 + a6 + 8);
  v32.i64[0] = v31 + v16 + 10;
  v32.i64[1] = (v21 + a6 + 8) + v16 + 10;
  v33.i64[0] = (v19 + a6 + 8) + v16 + 10;
  v33.i64[1] = (v18 + a6 + 8) + v16 + 10;
  v34.i64[0] = a1 + a6 + (v20 ^ (v17 + 1394)) + 8 + v16 + 10;
  v35.i64[0] = (a3 + a6 + 8) + v16 + 10;
  v35.i64[1] = (a2 + a6 + 8) + v16 + 10;
  v34.i64[1] = (a7 + a6 + 8) + v16 + 10;
  v36 = vandq_s8(v35, a9);
  v37 = vandq_s8(v33, a9);
  v38 = vandq_s8(v32, a9);
  v39 = vandq_s8(v34, a9);
  v40 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), a11);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), a11);
  v44 = veorq_s8(v43, a12);
  v45 = veorq_s8(v42, a12);
  v46 = veorq_s8(v42, a13);
  v47 = veorq_s8(v43, a13);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), a14);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), a14);
  v51 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v52 = veorq_s8(v48, v49);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = veorq_s8(vaddq_s64(v53, v51), a15);
  v56 = veorq_s8(v54, a15);
  v57 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), a16);
  v63 = veorq_s8(v61, a16);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), v23)), v24), v25);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(v62, vandq_s8(vaddq_s64(v62, v62), v23)), v24), v25);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), v26);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), v26);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), v27);
  v76 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v77 = veorq_s8(v74, v27);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v76);
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v28);
  v83 = veorq_s8(v81, v28);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v89 = vaddq_s64(v40, a11);
  v90 = vaddq_s64(v88, v86);
  v91 = veorq_s8(vaddq_s64(v87, v85), v29);
  v123.val[3] = vshlq_u64(veorq_s8(v90, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a10)));
  v123.val[1] = vshlq_u64(v91, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a10)));
  v92 = veorq_s8(v89, a12);
  v93 = veorq_s8(v89, a13);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), a14);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), a15);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), a16);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), v23)), v24), v25);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v26);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v27);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v28);
  v106 = vaddq_s64(v41, a11);
  v123.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a10)));
  v107 = veorq_s8(v106, a12);
  v108 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v109 = veorq_s8(v106, a13);
  v110 = veorq_s8(vaddq_s64(v108, v109), a14);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), a15);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), a16);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v23)), v24), v25);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v26);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v27);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v28);
  v123.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a10)));
  *(v31 + v16 + 3) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v123, v30)), *(a8 + v31));
  return (*(STACK[0x5E0] + 8 * ((13519 * (a5 == a6)) ^ a4)))();
}

uint64_t sub_100153588@<X0>(int a1@<W1>, int a2@<W8>)
{
  v10 = (v3 + a1 + 2473);
  v11 = v10 + v2 + 10;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (v12 + 0x7695A575CC8A36DALL) ^ 0xB9DC45633787A904;
  v14 = (__ROR8__((v12 + 0x7695A575CC8A36DALL) ^ 0xD716ECD53D61FD7, 8) + v13) ^ 0x5EEE4453CA35DABALL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x96518B1852248A0DLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) ^ v9) - (v8 & (2 * ((v18 + v17) ^ v9))) + v6) ^ v7;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xC4318A842864C03;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x43600812E0A35073;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xB581C077348D623CLL;
  *v11 = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v11 & 7u))) ^ *(v5 + v10);
  return (*(STACK[0x5E0] + 8 * (((a1 != 1878697865) * v4) ^ a2)))();
}

uint64_t sub_1001536F8()
{
  v1 = LODWORD(STACK[0xBB0]) + 1486739445 + (~(2 * LODWORD(STACK[0xBB0])) | 0x4EC45017);
  v2 = ((v1 << (-37 * (v0 ^ 0x25) + 118)) & (v0 - 1593352) ^ 0xB123AE28) + (v1 ^ 0x276E08E2) - 278972176 != 1867716614;
  return (*(STACK[0x5E0] + 8 * (((4 * v2) | (32 * v2)) ^ (v0 + 4825))))();
}

uint64_t sub_100153960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v62 = *(a8 + 8 * (v51 - 3077));
  *&STACK[0x420] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x310] = vdupq_n_s64(v59);
  *&STACK[0x2E0] = vdupq_n_s64(v61);
  HIDWORD(a12) = v53 & 0xFFFFFFF0;
  *&STACK[0x2B0] = vdupq_n_s64(a5);
  *&STACK[0x2C0] = vdupq_n_s64(v56);
  LODWORD(a14) = a1;
  v63 = a1 + a2 + a4;
  *&STACK[0x290] = vdupq_n_s64(v54);
  *&STACK[0x2A0] = vdupq_n_s64(v57);
  *&STACK[0x410] = vdupq_n_s64(a7);
  *&STACK[0x280] = vdupq_n_s64(0x116F6AF236C389A5uLL);
  *&STACK[0x590] = vdupq_n_s64(0xCDDCDFD0A442EB54);
  *&STACK[0x3F0] = vdupq_n_s64(v58);
  *&STACK[0x400] = vdupq_n_s64(v52);
  LODWORD(a50) = v63 - 5;
  LODWORD(a49) = v63 - 4;
  *&STACK[0x580] = vdupq_n_s64(0x5FE6D6472620FEBEuLL);
  *&STACK[0x570] = vdupq_n_s64(v60);
  LODWORD(a48) = v63 - 3;
  LODWORD(a47) = v63 - 2;
  *&STACK[0x5C0] = vdupq_n_s64(0x48BE2CB4D3A6304CuLL);
  *&STACK[0x270] = xmmword_1002A9AB0;
  LODWORD(a46) = v55 + a1 + a2 + v51 + 1714;
  LODWORD(a41) = v63 + 1;
  LODWORD(v67) = v63 + 3;
  HIDWORD(v67) = v63 + 2;
  LODWORD(v66) = v63 + 5;
  HIDWORD(v66) = v63 + 4;
  HIDWORD(v65) = v63 + 6;
  *&STACK[0x560] = vdupq_n_s64(0xA6082410042005uLL);
  *&STACK[0x5B0] = vdupq_n_s64(0xB741D34B2C59CFB3);
  *&STACK[0x5A0] = vdupq_n_s64(0x2141C0402041C3B1uLL);
  LODWORD(v65) = v51 - 3081;
  *&STACK[0x550] = vdupq_n_s64(0x59C50BC947A916EEuLL);
  *&STACK[0x540] = vdupq_n_s64(0x2D2B4AEB99146DB4uLL);
  *&STACK[0x3D0] = vdupq_n_s64(0x93EE9DA6A9E48E6BLL);
  *&STACK[0x3E0] = vdupq_n_s64(0x3AB1F061BAB4AF22uLL);
  *&STACK[0x530] = vdupq_n_s64(0x102996FD8E8C4846uLL);
  *&STACK[0x520] = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  *&STACK[0x510] = vdupq_n_s64(0x4CE6E419F51155A0uLL);
  *&STACK[0x260] = vdupq_n_s64(v50);
  *&STACK[0x3B0] = vdupq_n_s64(0xDAB76F01A735DFADLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xA484BD53EADDFE95);
  *&STACK[0x390] = vdupq_n_s64(0xFB9B3696D7AB9515);
  return v62(a1, a2, a3, a4, v63, a6, a7, a8, a9, a10, a11, a12, __PAIR64__(a3, a2), a14, v65, v66, v67, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_100155768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  *&STACK[0x580] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x570] = vdupq_n_s64(0x38uLL);
  *&STACK[0x360] = vdupq_n_s64(v18);
  *&STACK[0x370] = vdupq_n_s64(v16);
  *&STACK[0x350] = vdupq_n_s64(v13);
  v19 = *(a8 + 8 * v10);
  *&STACK[0x330] = vdupq_n_s64(a5);
  *&STACK[0x310] = vdupq_n_s64(v14);
  *&STACK[0x2E0] = vdupq_n_s64(v12);
  LODWORD(STACK[0x250]) = (v10 ^ 0xFFFFF608) & v11;
  *&STACK[0x2B0] = vdupq_n_s64(v9);
  *&STACK[0x2C0] = vdupq_n_s64(a7);
  *&STACK[0x2A0] = vdupq_n_s64(0x116F6AF236C389A5uLL);
  *&STACK[0x5A0] = vdupq_n_s64(0xCDDCDFD0A442EB54);
  *&STACK[0x560] = vdupq_n_s64(v15);
  *&STACK[0x5C0] = vdupq_n_s64(0x5FE6D6472620FEBEuLL);
  *&STACK[0x590] = vdupq_n_s64(v17);
  *&STACK[0x550] = vdupq_n_s64(0x48BE2CB4D3A6304CuLL);
  *&STACK[0x540] = vdupq_n_s64(0xA6082410042005uLL);
  *&STACK[0x530] = vdupq_n_s64(0xB741D34B2C59CFB3);
  *&STACK[0x290] = vdupq_n_s64(v8);
  *&STACK[0x280] = xmmword_1002A9AA0;
  *&STACK[0x520] = vdupq_n_s64(0x2141C0402041C3B1uLL);
  *&STACK[0x510] = vdupq_n_s64(0x59C50BC947A916EEuLL);
  *&STACK[0x500] = vdupq_n_s64(0x2D2B4AEB99146DB4uLL);
  *&STACK[0x4F0] = vdupq_n_s64(0x3AB1F061BAB4AF22uLL);
  *&STACK[0x4E0] = vdupq_n_s64(0x93EE9DA6A9E48E6BLL);
  *&STACK[0x260] = vdupq_n_s64(0xA484BD53EADDFE95);
  *&STACK[0x270] = vdupq_n_s64(0x102996FD8E8C4846uLL);
  *&STACK[0x4D0] = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  *&STACK[0x4C0] = vdupq_n_s64(0x4CE6E419F51155A0uLL);
  *&STACK[0x4B0] = vdupq_n_s64(0xDAB76F01A735DFADLL);
  *&STACK[0x4A0] = vdupq_n_s64(0xFB9B3696D7AB9515);
  return v19();
}

uint64_t sub_1001559F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = (v12 + v10);
  v26 = (v12 + v22);
  v27 = (v12 + v21);
  v28 = (v12 + v20);
  v29 = (v12 + v19);
  v30 = (v12 + v17);
  v31 = (v12 + v18);
  v32 = (v12 + v16 + v15);
  v33.i64[0] = a6 + v29;
  v33.i64[1] = a6 + v31;
  v34.i64[0] = a6 + v27;
  v34.i64[1] = a6 + v28;
  v35.i64[0] = a6 + v30;
  v36.i64[0] = a6 + v25;
  v36.i64[1] = a6 + v26;
  v37 = v36;
  *&STACK[0x410] = v36;
  v35.i64[1] = a6 + v32;
  *&STACK[0x490] = v35;
  v38.i64[0] = v29 + v8 + 10;
  v38.i64[1] = v31 + v8 + 10;
  v39.i64[0] = v27 + v8 + 10;
  v39.i64[1] = v28 + v8 + 10;
  v36.i64[0] = v25 + v8 + 10;
  v36.i64[1] = v26 + v8 + 10;
  v40 = v36;
  *&STACK[0x420] = v36;
  v41 = *&STACK[0x580];
  v42 = vandq_s8(v35, *&STACK[0x580]);
  v43 = vandq_s8(v37, *&STACK[0x580]);
  v44 = vandq_s8(v34, *&STACK[0x580]);
  v45 = vandq_s8(v33, *&STACK[0x580]);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), *&STACK[0x370]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), *&STACK[0x370]);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), *&STACK[0x370]);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), *&STACK[0x370]);
  v50 = veorq_s8(v49, *&STACK[0x360]);
  v51 = veorq_s8(v48, *&STACK[0x360]);
  v52 = veorq_s8(v47, *&STACK[0x360]);
  v53 = veorq_s8(v46, *&STACK[0x360]);
  v54 = veorq_s8(v46, *&STACK[0x350]);
  v55 = veorq_s8(v47, *&STACK[0x350]);
  v56 = veorq_s8(v48, *&STACK[0x350]);
  v57 = veorq_s8(v49, *&STACK[0x350]);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), *&STACK[0x330]);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), *&STACK[0x330]);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v56), *&STACK[0x330]);
  v62 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v63 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v57), *&STACK[0x330]);
  v66 = veorq_s8(v65, v64);
  v67 = veorq_s8(v61, v63);
  v68 = veorq_s8(v59, v62);
  v69 = veorq_s8(v58, v60);
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v69);
  v74 = veorq_s8(vaddq_s64(v70, v66), *&STACK[0x310]);
  v75 = veorq_s8(vaddq_s64(v71, v67), *&STACK[0x310]);
  v76 = veorq_s8(vaddq_s64(v72, v68), *&STACK[0x310]);
  v77 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v79 = veorq_s8(v73, *&STACK[0x310]);
  v80 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v82 = veorq_s8(v76, v80);
  v83 = veorq_s8(v75, v78);
  v84 = veorq_s8(v74, v77);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v84);
  v89 = veorq_s8(vaddq_s64(v85, v81), *&STACK[0x2E0]);
  v90 = veorq_s8(vaddq_s64(v86, v82), *&STACK[0x2E0]);
  v91 = veorq_s8(vaddq_s64(v87, v83), *&STACK[0x2E0]);
  v92 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v95 = veorq_s8(v88, *&STACK[0x2E0]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v97 = veorq_s8(v91, v94);
  v98 = veorq_s8(v90, v93);
  v99 = veorq_s8(v89, v92);
  v100 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v99);
  v104 = vaddq_s64(v102, v98);
  v105 = vaddq_s64(v101, v97);
  v106 = vaddq_s64(v100, v96);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), *&STACK[0x2C0]), v106), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), *&STACK[0x2C0]), v105), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x2C0]), v104), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v110 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x2C0]), v103), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v114 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v115 = veorq_s8(v108, v111);
  v116 = veorq_s8(v107, v110);
  v117 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v116);
  v121 = vaddq_s64(v119, v115);
  v122 = vaddq_s64(v118, v114);
  *&STACK[0x480] = vaddq_s64(v117, v113);
  v123 = *&STACK[0x560];
  v124 = vsubq_s64(vorrq_s8(v120, *&STACK[0x5A0]), vorrq_s8(v120, *&STACK[0x560]));
  v125 = vsubq_s64(vorrq_s8(v121, *&STACK[0x5A0]), vorrq_s8(v121, *&STACK[0x560]));
  *&STACK[0x430] = vaddq_s64(vsubq_s64(vorrq_s8(v122, *&STACK[0x5A0]), vorrq_s8(v122, *&STACK[0x560])), *&STACK[0x560]);
  v126 = vaddq_s64(v124, v123);
  v127 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v128 = *&STACK[0x5C0];
  v129 = veorq_s8(v126, *&STACK[0x5C0]);
  v130 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  *&STACK[0x470] = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v132 = veorq_s8(vaddq_s64(v125, v123), v128);
  v133 = veorq_s8(v132, v130);
  v134 = veorq_s8(v129, v127);
  v135 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v136 = vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), *&STACK[0x570]));
  v137 = vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x570]));
  v138 = vandq_s8(v40, v41);
  v139 = vandq_s8(v39, v41);
  v140 = vandq_s8(v38, v41);
  v141 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v146 = vaddq_s64(v135, v134);
  v147 = vaddq_s64(vsubq_s64(v145, vandq_s8(vaddq_s64(vaddq_s64(v145, v145), *&STACK[0x500]), *&STACK[0x4F0])), *&STACK[0x4E0]);
  v148 = vaddq_s64(vsubq_s64(v143, vandq_s8(vaddq_s64(vaddq_s64(v143, v143), *&STACK[0x500]), *&STACK[0x4F0])), *&STACK[0x4E0]);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), *&STACK[0x590]);
  v150 = vaddq_s64(vsubq_s64(v142, vandq_s8(vaddq_s64(vaddq_s64(v142, v142), *&STACK[0x500]), *&STACK[0x4F0])), *&STACK[0x4E0]);
  v151 = veorq_s8(v150, v23);
  v152 = veorq_s8(v148, v23);
  v153 = veorq_s8(v148, *&STACK[0x260]);
  v154 = veorq_s8(v150, *&STACK[0x260]);
  v155 = *&STACK[0x260];
  v156 = veorq_s8(v146, *&STACK[0x590]);
  v157 = veorq_s8(v156, v144);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), *&STACK[0x4D0]);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v154), *&STACK[0x4D0]);
  v160 = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v161 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v162 = veorq_s8(v158, v160);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v162);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v161);
  v165 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, *&STACK[0x4C0]), vorrq_s8(v163, v24)), v24), *&STACK[0x4B0]);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, *&STACK[0x4C0]), vorrq_s8(v164, v24)), v24), *&STACK[0x4B0]);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), veorq_s8(v149, v141));
  v170 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v171 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v173 = vaddq_s64(v165, v157);
  v174 = vaddq_s64(v172, v170);
  v175 = *&STACK[0x4A0];
  v176 = veorq_s8(vaddq_s64(v171, v168), *&STACK[0x4A0]);
  v177 = veorq_s8(v174, *&STACK[0x4A0]);
  v178 = *&STACK[0x550];
  v179 = vandq_s8(v173, *&STACK[0x550]);
  v180 = vdupq_n_s64(v9);
  *&STACK[0x400] = v180;
  v181 = vandq_s8(v169, v178);
  v182 = vsubq_s64(vorrq_s8(vaddq_s64(v177, v177), v180), v177);
  v183 = vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), v180), v176);
  v184 = vdupq_n_s64(0x189E22CFA067A63AuLL);
  *&STACK[0x3F0] = v184;
  v185 = vaddq_s64(v183, v184);
  v186 = *&STACK[0x530];
  v187 = vandq_s8(v173, *&STACK[0x530]);
  v188 = vaddq_s64(v182, v184);
  v189 = vdupq_n_s64(0xDBC41DA5C13F88D1);
  v190 = veorq_s8(v188, v189);
  v191 = veorq_s8(v185, v189);
  *&STACK[0x3B0] = v189;
  v192 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v193 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v194 = veorq_s8(v181, *&STACK[0x540]);
  v195 = veorq_s8(v190, v192);
  v196 = vdupq_n_s64(v14);
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v193), v196);
  v198 = veorq_s8(vandq_s8(v169, v186), *&STACK[0x520]);
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v195), v196);
  v200 = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v202 = veorq_s8(v187, *&STACK[0x520]);
  v203 = *&STACK[0x520];
  v204 = veorq_s8(v199, v201);
  v205 = veorq_s8(v197, v200);
  v206 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v207 = vaddq_s64(v202, veorq_s8(v179, *&STACK[0x540]));
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v205);
  v209 = vaddq_s64(v206, v204);
  v210 = vdupq_n_s64(0x21116F0695D3183uLL);
  *&STACK[0x3E0] = v210;
  v211 = vaddq_s64(v198, v194);
  v212 = veorq_s8(v209, v210);
  v213 = veorq_s8(v208, v210);
  v214 = vdupq_n_s64(0x87AD05291DA66BBBLL);
  v126.i64[0] = -1;
  v126.i64[1] = -1;
  v215 = vaddq_s64(v211, v126);
  v216 = vdupq_n_s64(0x85AC010914A24A38);
  *&STACK[0x3D0] = v216;
  v217 = veorq_s8(vandq_s8(v209, v214), v216);
  v218 = vaddq_s64(v207, v126);
  v219 = *&STACK[0x510];
  v220 = veorq_s8(v218, *&STACK[0x510]);
  v221 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v208, v214), v216), v213), vandq_s8(v213, v214));
  v222 = vdupq_n_s64(0xC6DC1BCB94580A4BLL);
  *&STACK[0x5B0] = v222;
  v223 = veorq_s8(v221, v222);
  v224 = veorq_s8(vsubq_s64(vaddq_s64(v217, v212), vandq_s8(v212, v214)), v222);
  v225 = v219;
  v226 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v227 = vshlq_u64(veorq_s8(v215, v219), v136);
  v228 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v229 = vshlq_u64(v220, v137);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v228);
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v226);
  v232 = vdupq_n_s64(0xF94C599D99972866);
  *&STACK[0x3C0] = v232;
  v233 = vdupq_n_s64(0x6B3A6626668D799uLL);
  v234 = vdupq_n_s64(0x4CCD99EAAD1A4A5AuLL);
  v235 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v230, v232), vorrq_s8(v230, v233)), v233), v234);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v231, v232), vorrq_s8(v231, v233)), v233), v234);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL)));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL)));
  v239 = vdupq_n_s64(0xF265FBA42424344CLL);
  v240 = vdupq_n_s64(0xD9A045BDBDBCBB3uLL);
  v241 = vdupq_n_s64(0x25BB9E594F1DFB2uLL);
  *&STACK[0x380] = v241;
  *&STACK[0x390] = v239;
  v306.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v237, v239), vorrq_s8(v237, v240)), v240), v241), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x570]))), v229);
  v306.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v238, v239), vorrq_s8(v238, v240)), v240), v241), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x570]))), v227);
  v242 = veorq_s8(v147, v23);
  v243 = veorq_s8(v147, v155);
  v244 = veorq_s8(*&STACK[0x430], *&STACK[0x5C0]);
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243), *&STACK[0x4D0]);
  v246 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v247 = veorq_s8(v244, v131);
  v248 = veorq_s8(v245, v246);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v248);
  v250 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v252 = vaddq_s64(v250, v247);
  v253 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v249, *&STACK[0x4C0]), vorrq_s8(v249, v24)), v24), *&STACK[0x4B0]);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v255 = veorq_s8(v252, *&STACK[0x590]);
  v256 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v175);
  v257 = veorq_s8(v255, v251);
  v258 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v256, v256), *&STACK[0x400]), v256), *&STACK[0x3F0]), v189);
  v259 = vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL);
  v260 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v261 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v262 = vaddq_s64(v259, v257);
  v263 = veorq_s8(vaddq_s64(v261, v260), v196);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v265 = vaddq_s64(veorq_s8(vandq_s8(v262, *&STACK[0x530]), v203), veorq_s8(vandq_s8(v262, *&STACK[0x550]), *&STACK[0x540]));
  v203.i64[0] = -1;
  v203.i64[1] = -1;
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264);
  v267 = veorq_s8(v266, *&STACK[0x3E0]);
  v268 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v266, v214), *&STACK[0x3D0]), v267), vandq_s8(v267, v214)), *&STACK[0x5B0]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269);
  v271 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270, v232), vorrq_s8(v270, v233)), v233), v234);
  v272 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL)));
  v273 = vsubq_s64(vorrq_s8(v272, v239), vorrq_s8(v272, v240));
  v272.i64[0] = v30 + v8 + 10;
  v272.i64[1] = v32 + v8 + 10;
  v306.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v273, v240), *&STACK[0x380]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x420], 3uLL), *&STACK[0x570]))), vshlq_u64(veorq_s8(vaddq_s64(v265, v203), v225), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), *&STACK[0x570]))));
  v274 = vandq_s8(v272, *&STACK[0x580]);
  v275 = vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL);
  v276 = vaddq_s64(vsubq_s64(v275, vandq_s8(vaddq_s64(vaddq_s64(v275, v275), *&STACK[0x500]), *&STACK[0x4F0])), *&STACK[0x4E0]);
  v277 = veorq_s8(v276, v23);
  v278 = veorq_s8(v276, v155);
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v278), *&STACK[0x4D0]);
  v280 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v281 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v282 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(*&STACK[0x480], *&STACK[0x5A0]), vorrq_s8(*&STACK[0x480], *&STACK[0x560])), *&STACK[0x560]), *&STACK[0x5C0]);
  v283 = vaddq_s64(v281, v280);
  v284 = veorq_s8(v282, *&STACK[0x470]);
  v285 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v283, *&STACK[0x4C0]), vorrq_s8(v283, v24)), v24), *&STACK[0x4B0]);
  v286 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v287 = vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL);
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286), *&STACK[0x4A0]);
  v289 = veorq_s8(vaddq_s64(v287, v284), *&STACK[0x590]);
  v290 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL));
  v291 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v288, v288), *&STACK[0x400]), v288), *&STACK[0x3F0]), *&STACK[0x3B0]);
  v292 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v293 = vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL);
  v294 = veorq_s8(v291, v292);
  v295 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v294), v196);
  v296 = vaddq_s64(v293, v290);
  v297 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL));
  v298 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v297);
  v299 = veorq_s8(v298, *&STACK[0x3E0]);
  v300 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v298, v214), *&STACK[0x3D0]), v299), vandq_s8(v299, v214)), *&STACK[0x5B0]);
  v203.i64[0] = -1;
  v203.i64[1] = -1;
  v301 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL));
  v302 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL), v301);
  v303 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v302, *&STACK[0x3C0]), vorrq_s8(v302, v233)), v233), v234);
  v304 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL), veorq_s8(v303, vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL)));
  v306.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v304, *&STACK[0x390]), vorrq_s8(v304, v240)), v240), *&STACK[0x380]), vnegq_s64(vandq_s8(vshlq_n_s64(v272, 3uLL), *&STACK[0x570]))), vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v296, *&STACK[0x530]), *&STACK[0x520]), veorq_s8(vandq_s8(v296, *&STACK[0x550]), *&STACK[0x540])), v203), *&STACK[0x510]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x490], 3uLL), *&STACK[0x570]))));
  *(v25 + v8 + 3) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v306, *&STACK[0x280])), *(a6 + v25 - 7));
  return (*(a8 + 8 * ((30 * (v12 != v13)) ^ v11)))();
}

uint64_t sub_100156810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>)
{
  v20 = (v6 + v17);
  v21 = a3 + v20;
  v22 = v20 + STACK[0x5D0];
  v23 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8) + (a5 ^ v16 ^ v18);
  v24 = v23 ^ v12;
  v23 ^= 0xF703346ABE37D62CLL;
  v25 = (__ROR8__(v24, 8) + v23) ^ 0xD87AD12BCA74F052;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a2;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = ((a4 | (2 * (v31 + v30))) - (v31 + v30) + v5) ^ 0x116F6AF236C389A5;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8) + v33;
  v35 = __ROR8__((v22 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = v10;
  v37 = v35 - ((2 * v35 + 0x2D2B4AEB99146DB4) & 0x3AB1F061BAB4AF22) - 0x6C116259561B7195;
  v38 = v37 ^ 0x102996FD8E8C4846;
  v37 ^= 0xA484BD53EADDFE95;
  v39 = (__ROR8__(v38, 8) + v37) ^ 0x5EEE4453CA35DABALL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v11 - (v34 | v11) + (v34 | 0xCDDCDFD0A442EB54)) ^ 0x5FE6D6472620FEBELL;
  v43 = v42 ^ __ROR8__(v33, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v7;
  v45 = (v8 - ((v41 + v40) | v8) + ((v41 + v40) | 0x4CE6E419F51155A0)) ^ 0xDAB76F01A735DFADLL;
  v46 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61));
  v47 = v45 ^ __ROR8__(v40, 61);
  v48 = __ROR8__(v45, 8);
  v49 = (((2 * ((v48 + v47) ^ 0xFB9B3696D7AB9515)) | 0xCEC3BA60BF30B38CLL) - ((v48 + v47) ^ 0xFB9B3696D7AB9515) + 0x189E22CFA067A63ALL) ^ 0xDBC41DA5C13F88D1;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v36;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((v53 + v52) & v9 ^ 0x85AC010914A24A38) + ((v53 + v52) ^ 0x21116F0695D3183) - (((v53 + v52) ^ 0x21116F0695D3183) & v9)) ^ 0xC6DC1BCB94580A4BLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = STACK[0x5E0];
  v58 = (v14 - ((v56 + v55) | v14) + ((v56 + v55) | 0xF94C599D99972866)) ^ 0x4CCD99EAAD1A4A5ALL;
  v59 = v58 ^ __ROR8__(v55, 61);
  v60 = __ROR8__(v58, 8);
  *(v22 + 10) = (((v13 - ((v60 + v59) | v13) + ((v60 + v59) | 0xF265FBA42424344CLL)) ^ 0x25BB9E594F1DFB2) >> (8 * ((v22 + 10) & 7))) ^ ((((v46 & 0xB741D34B2C59CFB3 ^ 0x2141C0402041C3B1) + (v46 & 0x48BE2CB4D3A6304CLL ^ 0xA6082410042005) - 1) ^ 0x59C50BC947A916EELL) >> (8 * (v21 & 7u))) ^ *v21;
  return (*(v57 + 8 * (((v6 == 1867716615) * v19) ^ v15)))();
}

uint64_t sub_100156C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x840] = 0x51CE20ABD81C933BLL;
  STACK[0xAF8] = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((((v8 - 276) | 0x2403) ^ 0x2396) + v8)))();
}

uint64_t sub_100156CF8(uint64_t a1, uint64_t a2, int a3)
{
  STACK[0x5D0] = *(STACK[0x858] - 0x51CE20ABD81C9323);
  STACK[0x5C0] = STACK[0xA88];
  return (*(STACK[0x5E0] + 8 * (((v3 ^ 0xF9D ^ (v3 - 604212144) & 0x24038C7F) * ((a3 + v4 + 751305229) < 8)) ^ v3)))();
}

uint64_t sub_1001572A8@<X0>(unint64_t a1@<X7>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int8x16_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (HIDWORD(a7) + v71 + 16);
  v74 = (a8 + v71 + 16);
  v75 = (HIDWORD(a8) + v71 + 16);
  v76 = (a9 + v71 + 16);
  v77 = (HIDWORD(a9) + v71 + 16);
  v78 = (a10 + v71 + 16);
  v79 = (v69 + v71 + 16);
  v80 = (HIDWORD(a10) + v71 + 16);
  v81 = (a11 + v71 + 16);
  v82 = (HIDWORD(a11) + v71 + 16);
  v83 = (a35 + v71 + 16);
  v84 = (a40 + v71 + 16);
  v85 = (a41 + v71 + 16);
  v86.i64[0] = v64 + v73;
  v86.i64[1] = v64 + v74;
  *&STACK[0x2C0] = v86;
  v86.i64[0] = v64 + v75;
  v86.i64[1] = v64 + v76;
  *&STACK[0x2B0] = v86;
  v87 = (a42 + v71 + 16);
  v88.i64[0] = v64 + v77;
  v88.i64[1] = v64 + v78;
  v89.i64[0] = v64 + v79;
  v89.i64[1] = v64 + v80;
  v90 = (a43 + v71 + 16);
  v86.i64[0] = v64 + v81;
  v86.i64[1] = v64 + v82;
  *&STACK[0x330] = v86;
  v86.i64[0] = v64 + v83;
  v86.i64[1] = v64 + v84;
  *&STACK[0x310] = v86;
  v91 = (a44 + v71 + 16);
  v86.i64[0] = v64 + v85;
  v86.i64[1] = v64 + v87;
  v92 = v86;
  v544 = v86;
  v86.i64[0] = v64 + v90;
  v86.i64[1] = v64 + v91;
  *&STACK[0x2E0] = v86;
  v93 = v79 + a2 + 10;
  v94.i64[0] = v93;
  v95 = v80 + a2 + 10;
  v94.i64[1] = v95;
  v96.i64[0] = v77 + a2 + 10;
  v96.i64[1] = v78 + a2 + 10;
  v97 = *&STACK[0x420];
  v541 = vandq_s8(v92, *&STACK[0x420]);
  v98 = vandq_s8(v89, *&STACK[0x420]);
  v99 = vandq_s8(v88, *&STACK[0x420]);
  v100 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = *&STACK[0x570];
  v103 = vaddq_s64(v101, *&STACK[0x570]);
  v104 = vaddq_s64(v100, *&STACK[0x570]);
  v105 = *&STACK[0x410];
  v106 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v101), a45), v103), vandq_s8(v103, a45));
  v107 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v100), a45), v104), vandq_s8(v104, a45));
  v108 = veorq_s8(v107, *&STACK[0x210]);
  v109 = veorq_s8(v106, *&STACK[0x210]);
  v110 = veorq_s8(v106, *&STACK[0x400]);
  v111 = veorq_s8(v107, *&STACK[0x400]);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, *&STACK[0x3F0]), vorrq_s8(v112, *&STACK[0x3E0])), *&STACK[0x3E0]), *&STACK[0x3D0]);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, *&STACK[0x3F0]), vorrq_s8(v113, *&STACK[0x3E0])), *&STACK[0x3E0]), *&STACK[0x3D0]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v117 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v117);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, *&STACK[0x560]), vorrq_s8(v118, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x550]);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, *&STACK[0x560]), vorrq_s8(v119, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x550]);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v123);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v126 = *&STACK[0x390];
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, *&STACK[0x3B0]), vorrq_s8(v124, *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x380]);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, *&STACK[0x3B0]), vorrq_s8(v125, *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x380]);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v130 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v131 = veorq_s8(v127, v129);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v131);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v130);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), *&STACK[0x540]), v133), *&STACK[0x5A0]), *&STACK[0x530]);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), *&STACK[0x540]), v132), *&STACK[0x5A0]), *&STACK[0x530]);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v138 = veorq_s8(v134, v136);
  v139 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v138);
  v141 = vaddq_s64(v139, v137);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), *&STACK[0x590]), v141), *&STACK[0x5B0]), *&STACK[0x520]);
  v143 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), *&STACK[0x590]), v140), *&STACK[0x5B0]), *&STACK[0x520]);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v146 = veorq_s8(v142, v143);
  v147 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v149 = *&STACK[0x580];
  v150 = vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), *&STACK[0x580]));
  v151 = vandq_s8(v96, *&STACK[0x420]);
  v152 = vandq_s8(v94, *&STACK[0x420]);
  v153 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v155 = vaddq_s64(v154, *&STACK[0x570]);
  v156 = vaddq_s64(v153, *&STACK[0x570]);
  v157 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v159 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v154), *&STACK[0x360]), v155), vandq_s8(v155, *&STACK[0x350]));
  v160 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v153), *&STACK[0x360]), v156), vandq_s8(v156, *&STACK[0x350]));
  v161 = *&STACK[0x4D0];
  v162 = veorq_s8(v160, *&STACK[0x4D0]);
  v163 = vdupq_n_s64(v65);
  *&STACK[0x4C0] = v163;
  v164 = vaddq_s64(v148, v146);
  v165 = veorq_s8(v159, v161);
  v166 = veorq_s8(v159, v163);
  v167 = veorq_s8(v160, v163);
  v168 = vaddq_s64(v147, v145);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v167);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v171 = vdupq_n_s64(v66);
  *&STACK[0x2A0] = v171;
  v172 = vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v171), v170);
  v173 = vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v171), v169);
  v174 = vdupq_n_s64(v67);
  *&STACK[0x4B0] = v174;
  v175 = vaddq_s64(v173, v174);
  v176 = *&STACK[0x510];
  v177 = vandq_s8(vaddq_s64(v164, v164), *&STACK[0x510]);
  v178 = vaddq_s64(v172, v174);
  v179 = vdupq_n_s64(v68);
  *&STACK[0x290] = v179;
  v180 = veorq_s8(v178, v179);
  v181 = veorq_s8(v175, v179);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v183 = vsubq_s64(v168, vandq_s8(vaddq_s64(v168, v168), v176));
  v184 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v184);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v187 = vdupq_n_s64(0x66AE28ABA469B592uLL);
  *&STACK[0x4A0] = v187;
  v188 = vaddq_s64(vsubq_s64(v164, v177), *&STACK[0x500]);
  v189 = vsubq_s64(vandq_s8(vaddq_s64(v186, v186), v187), v186);
  v190 = vsubq_s64(vandq_s8(vaddq_s64(v185, v185), v187), v185);
  v191 = vdupq_n_s64(a1);
  v192 = vdupq_n_s64(v70);
  v193 = *&STACK[0x370];
  v194 = veorq_s8(vaddq_s64(v183, *&STACK[0x500]), *&STACK[0x370]);
  *&STACK[0x270] = v192;
  *&STACK[0x280] = v191;
  v195 = veorq_s8(vaddq_s64(v189, v191), v192);
  v196 = veorq_s8(vaddq_s64(v190, v191), v192);
  v197 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v198 = veorq_s8(v188, v193);
  v199 = v193;
  v200 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v201 = veorq_s8(v195, v197);
  v202 = veorq_s8(v198, v158);
  v203 = vdupq_n_s64(0xC73EF603490C4402);
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v200), v203);
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v201), v203);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v207 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v208 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v209 = vdupq_n_s64(0xC4318A842864C03uLL);
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), v209);
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v207), v209);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), veorq_s8(v194, v157));
  v214 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v215 = vaddq_s64(v208, v202);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v214);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v218 = vdupq_n_s64(v72);
  v219 = vorrq_s8(v215, *&STACK[0x4F0]);
  v220 = vorrq_s8(v213, *&STACK[0x4F0]);
  v221 = vdupq_n_s64(0xB8678DA2897EDDA6);
  v222 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v216, v216), v218), v216), v221);
  v223 = vdupq_n_s64(0xFB0785B069DD8DD5);
  *&STACK[0x250] = v223;
  *&STACK[0x260] = v221;
  v224 = *&STACK[0x200];
  v225 = vorrq_s8(v215, *&STACK[0x200]);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v217, v217), v218), v217), v221), v223);
  v227 = veorq_s8(v222, v223);
  v228 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v229 = vorrq_s8(v213, *&STACK[0x200]);
  v230 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v231 = veorq_s8(v226, v228);
  v232 = vsubq_s64(v220, v229);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v231);
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v230);
  v235 = vdupq_n_s64(0xBD87295834B24C76);
  *&STACK[0x490] = v235;
  v236 = vdupq_n_s64(0x4278D6A7CB4DB389uLL);
  *&STACK[0x470] = v236;
  v237 = vaddq_s64(vsubq_s64(vorrq_s8(v234, v235), vorrq_s8(v234, v236)), v236);
  v238 = vaddq_s64(vsubq_s64(vorrq_s8(v233, v235), vorrq_s8(v233, v236)), v236);
  v239 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v241 = veorq_s8(vaddq_s64(vsubq_s64(v219, v225), v224), *&STACK[0x4E0]);
  v242 = *&STACK[0x4E0];
  v243 = vdupq_n_s64(0x806E92F003F2E4AuLL);
  *&STACK[0x480] = v243;
  v244 = veorq_s8(v238, v243);
  v245 = veorq_s8(v237, v243);
  v246 = veorq_s8(v245, v240);
  v247 = vshlq_u64(v241, v150);
  v248 = veorq_s8(v244, v239);
  v249 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v250 = vandq_s8(*&STACK[0x310], v97);
  v251 = vshlq_u64(veorq_s8(vaddq_s64(v232, v224), v242), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v149)));
  v252 = vandq_s8(*&STACK[0x330], v97);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v248);
  v254 = vaddq_s64(v249, v246);
  v255 = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  v256 = vandq_s8(*&STACK[0x2B0], v97);
  *&STACK[0x240] = v255;
  v257 = vshlq_u64(veorq_s8(v253, v255), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v149)));
  v258 = vshlq_u64(veorq_s8(v254, v255), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v149)));
  *&STACK[0x430] = v251;
  *&STACK[0x440] = v258;
  *&STACK[0x450] = veorq_s8(v247, v257);
  *&STACK[0x460] = veorq_s8(v251, v258);
  v259 = vandq_s8(*&STACK[0x2C0], v97);
  v260 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v261 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v262 = vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL);
  v263 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v264 = vsraq_n_u64(vshlq_n_s64(v541, 0x38uLL), v541, 8uLL);
  v265 = vandq_s8(*&STACK[0x2E0], v97);
  v266 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v267 = vaddq_s64(v266, v102);
  v542 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v105, v266), a45), v267), vandq_s8(v267, a45));
  v268 = vaddq_s64(v264, v102);
  v269 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v105, v264), a45), v268), vandq_s8(v268, a45));
  v270 = vaddq_s64(v263, v102);
  v537 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v105, v263), a45), v270), vandq_s8(v270, a45));
  v538 = v269;
  v271 = vaddq_s64(v262, v102);
  v272 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v105, v262), a45), v271), vandq_s8(v271, a45));
  v273 = vaddq_s64(v261, v102);
  v274 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v105, v261), a45), v273), vandq_s8(v273, a45));
  v275 = vaddq_s64(v260, v102);
  v276 = v102;
  v277 = v105;
  v535 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v105, v260), a45), v275), vandq_s8(v275, a45));
  v536 = v272;
  v278 = *&STACK[0x210];
  v279 = veorq_s8(v274, *&STACK[0x210]);
  v280 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v281 = *&STACK[0x3F0];
  v282 = veorq_s8(v274, *&STACK[0x400]);
  v283 = vaddq_s64(v280, v282);
  v284 = vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL);
  v285 = *&STACK[0x3D0];
  v286 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v283, *&STACK[0x3F0]), vorrq_s8(v283, *&STACK[0x3E0])), *&STACK[0x3E0]), *&STACK[0x3D0]);
  v287 = veorq_s8(v286, v284);
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287);
  v289 = *&STACK[0x3B0];
  v290 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v288, *&STACK[0x560]), vorrq_s8(v288, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x550]);
  v291 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v292 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v291);
  v293 = *&STACK[0x380];
  v294 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v292, *&STACK[0x3B0]), vorrq_s8(v292, v126)), v126), *&STACK[0x380]);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL));
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v296, v296), *&STACK[0x540]), v296), *&STACK[0x5A0]), *&STACK[0x530]);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v299 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298);
  v300 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v299, v299), *&STACK[0x590]), v299), *&STACK[0x5B0]), *&STACK[0x520]);
  v301 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v302 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL), v301);
  v303 = vsubq_s64(v302, vandq_s8(vaddq_s64(v302, v302), *&STACK[0x510]));
  v304 = vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL);
  v302.i64[0] = v75 + a2 + 10;
  v302.i64[1] = v76 + a2 + 10;
  v305 = vandq_s8(v302, v97);
  v306 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v307 = vaddq_s64(v306, v276);
  v309 = *&STACK[0x350];
  v308 = *&STACK[0x360];
  v310 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v277, v306), *&STACK[0x360]), v307), vandq_s8(v307, *&STACK[0x350]));
  v311 = *&STACK[0x4D0];
  v312 = veorq_s8(v310, *&STACK[0x4D0]);
  v313 = *&STACK[0x4C0];
  v314 = veorq_s8(v310, *&STACK[0x4C0]);
  v315 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v314);
  v317 = *&STACK[0x290];
  v316 = *&STACK[0x2A0];
  v318 = veorq_s8(vaddq_s64(v303, *&STACK[0x500]), v199);
  v319 = veorq_s8(v318, v304);
  v320 = vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL);
  v321 = vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL);
  v322 = *&STACK[0x4B0];
  v323 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v315, v315), *&STACK[0x2A0]), v315), *&STACK[0x4B0]), *&STACK[0x290]);
  v324 = veorq_s8(v323, v321);
  v325 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v324);
  v326 = *&STACK[0x4A0];
  v327 = vaddq_s64(v320, v319);
  v328 = *&STACK[0x270];
  v329 = *&STACK[0x280];
  v330 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v325, v325), *&STACK[0x4A0]), v325), *&STACK[0x280]), *&STACK[0x270]);
  v331 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL));
  v540 = v203;
  v332 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), v331), v203);
  v333 = veorq_s8(v332, vsraq_n_u64(vshlq_n_s64(v331, 3uLL), v331, 0x3DuLL));
  *&STACK[0x220] = v209;
  *&STACK[0x230] = v218;
  v334 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v333), v209);
  v335 = veorq_s8(v334, vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL));
  v336 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v335);
  v337 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v327, *&STACK[0x4F0]), vorrq_s8(v327, v224)), v224), *&STACK[0x4E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2B0], 3uLL), *&STACK[0x580])));
  v339 = *&STACK[0x250];
  v338 = *&STACK[0x260];
  v340 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v336, v336), v218), v336), *&STACK[0x260]), *&STACK[0x250]);
  v341 = veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL));
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v341);
  v343 = *&STACK[0x490];
  v344 = *&STACK[0x480];
  v345 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v342, *&STACK[0x490]), vorrq_s8(v342, *&STACK[0x470])), *&STACK[0x470]), *&STACK[0x480]);
  v346 = *&STACK[0x240];
  v347 = *&STACK[0x450];
  v348 = *&STACK[0x460];
  v349 = veorq_s8(v337, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), veorq_s8(v345, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v302, 3uLL), *&STACK[0x580]))));
  *&STACK[0x430] = *&STACK[0x430];
  *&STACK[0x440] = v349;
  *&STACK[0x450] = v347;
  *&STACK[0x460] = v348;
  v350 = veorq_s8(v535, v278);
  v351 = v278;
  v352 = *&STACK[0x400];
  v353 = veorq_s8(v535, *&STACK[0x400]);
  v354 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v353);
  v355 = vorrq_s8(v354, v281);
  v356 = *&STACK[0x3E0];
  v357 = veorq_s8(vaddq_s64(vsubq_s64(v355, vorrq_s8(v354, *&STACK[0x3E0])), *&STACK[0x3E0]), v285);
  v358 = veorq_s8(v357, vsraq_n_u64(vshlq_n_s64(v353, 3uLL), v353, 0x3DuLL));
  v359 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL), v358);
  v360 = *&STACK[0x3C0];
  v361 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v359, *&STACK[0x560]), vorrq_s8(v359, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x550]);
  v362 = veorq_s8(v361, vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL));
  v363 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), v362);
  v364 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v363, v289), vorrq_s8(v363, *&STACK[0x390])), *&STACK[0x390]), v293);
  v365 = veorq_s8(v364, vsraq_n_u64(vshlq_n_s64(v362, 3uLL), v362, 0x3DuLL));
  v366 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), v365);
  v367 = *&STACK[0x530];
  v368 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v366, v366), *&STACK[0x540]), v366), *&STACK[0x5A0]), *&STACK[0x530]);
  v369 = veorq_s8(v368, vsraq_n_u64(vshlq_n_s64(v365, 3uLL), v365, 0x3DuLL));
  v370 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL), v369);
  v371 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v370, v370), *&STACK[0x590]), v370), *&STACK[0x5B0]), *&STACK[0x520]);
  v372 = veorq_s8(v371, vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL));
  v373 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL), v372);
  v374 = vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL);
  v372.i64[0] = v73 + a2 + 10;
  v372.i64[1] = v74 + a2 + 10;
  v375 = *&STACK[0x420];
  v376 = vandq_s8(v372, *&STACK[0x420]);
  v377 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v378 = vaddq_s64(v377, *&STACK[0x570]);
  v379 = *&STACK[0x410];
  v380 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v377), v308), v378), vandq_s8(v378, v309));
  v381 = veorq_s8(v380, v311);
  v382 = veorq_s8(v380, v313);
  v383 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v382);
  v384 = vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL);
  v385 = *&STACK[0x510];
  v386 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v383, v383), v316), v383), v322), v317);
  v387 = veorq_s8(v386, v384);
  v388 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387);
  v389 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v388, v388), v326), v388), v329), v328);
  v390 = veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v391 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL), v390);
  v392 = vsraq_n_u64(vshlq_n_s64(v390, 3uLL), v390, 0x3DuLL);
  v393 = *&STACK[0x500];
  v394 = *&STACK[0x370];
  v395 = veorq_s8(vaddq_s64(vsubq_s64(v373, vandq_s8(vaddq_s64(v373, v373), *&STACK[0x510])), *&STACK[0x500]), *&STACK[0x370]);
  v396 = veorq_s8(v395, v374);
  v397 = vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL);
  v398 = veorq_s8(v391, v203);
  v399 = veorq_s8(v398, v392);
  v400 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL), v399), v209);
  v401 = veorq_s8(v400, vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL));
  v402 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL), v401);
  v403 = vaddq_s64(v397, v396);
  v404 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v402, v402), v218), v402), v338), v339);
  v405 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v401, 3uLL), v401, 0x3DuLL));
  v406 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v405);
  v407 = *&STACK[0x4F0];
  v408 = *&STACK[0x200];
  v409 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v403, *&STACK[0x4F0]), vorrq_s8(v403, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x4E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), *&STACK[0x580])));
  v410 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v406, v343), vorrq_s8(v406, *&STACK[0x470])), *&STACK[0x470]), v344);
  v403.i64[0] = v90 + a2 + 10;
  v403.i64[1] = v91 + a2 + 10;
  v411 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL), veorq_s8(v410, vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL))), v346), vnegq_s64(vandq_s8(vshlq_n_s64(v372, 3uLL), *&STACK[0x580])));
  v392.i64[0] = v85 + a2 + 10;
  v392.i64[1] = v87 + a2 + 10;
  v545.val[1] = *&STACK[0x440];
  v545.val[2] = *&STACK[0x450];
  v545.val[3] = *&STACK[0x460];
  v545.val[0] = veorq_s8(v409, v411);
  v412 = veorq_s8(v536, v351);
  v413 = veorq_s8(v537, v351);
  *&STACK[0x430] = vqtbl4q_s8(v545, a64);
  v414 = veorq_s8(v538, v351);
  v545.val[0] = veorq_s8(v542, v351);
  v545.val[1] = veorq_s8(v542, v352);
  v545.val[2] = veorq_s8(v538, v352);
  v415 = veorq_s8(v537, v352);
  v416 = veorq_s8(v536, v352);
  v417 = vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL);
  v545.val[0] = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v545.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), v416);
  v418 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL), v415);
  v545.val[0] = vaddq_s64(v545.val[0], v545.val[2]);
  v419 = vaddq_s64(v417, v545.val[1]);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[3], *&STACK[0x3F0]), vorrq_s8(v545.val[3], v356)), v356), *&STACK[0x3D0]);
  v420 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v418, *&STACK[0x3F0]), vorrq_s8(v418, v356)), v356), *&STACK[0x3D0]);
  v545.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[0], *&STACK[0x3F0]), vorrq_s8(v545.val[0], v356)), v356), *&STACK[0x3D0]);
  v421 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v419, *&STACK[0x3F0]), vorrq_s8(v419, v356)), v356), *&STACK[0x3D0]);
  v545.val[1] = veorq_s8(v421, vsraq_n_u64(vshlq_n_s64(v545.val[1], 3uLL), v545.val[1], 0x3DuLL));
  v545.val[2] = veorq_s8(v545.val[0], vsraq_n_u64(vshlq_n_s64(v545.val[2], 3uLL), v545.val[2], 0x3DuLL));
  v422 = veorq_s8(v420, vsraq_n_u64(vshlq_n_s64(v415, 3uLL), v415, 0x3DuLL));
  v423 = veorq_s8(v545.val[3], vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL));
  v424 = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v425 = vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL);
  v545.val[0] = vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL);
  v426 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL), v423);
  v545.val[0] = vaddq_s64(v545.val[0], v422);
  v545.val[3] = vaddq_s64(v425, v545.val[2]);
  v427 = vaddq_s64(v424, v545.val[1]);
  v428 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v426, *&STACK[0x560]), vorrq_s8(v426, v360)), v360), *&STACK[0x550]);
  v545.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[0], *&STACK[0x560]), vorrq_s8(v545.val[0], v360)), v360), *&STACK[0x550]);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[3], *&STACK[0x560]), vorrq_s8(v545.val[3], v360)), v360), *&STACK[0x550]);
  v429 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v427, *&STACK[0x560]), vorrq_s8(v427, v360)), v360), *&STACK[0x550]);
  v545.val[1] = veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v545.val[1], 3uLL), v545.val[1], 0x3DuLL));
  v545.val[2] = veorq_s8(v545.val[3], vsraq_n_u64(vshlq_n_s64(v545.val[2], 3uLL), v545.val[2], 0x3DuLL));
  v430 = veorq_s8(v545.val[0], vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL));
  v431 = veorq_s8(v428, vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL));
  v432 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v431);
  v545.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL), v430);
  v545.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL), v545.val[2]);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL), v545.val[1]);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v432, *&STACK[0x3B0]), vorrq_s8(v432, *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x380]);
  v545.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[0], *&STACK[0x3B0]), vorrq_s8(v545.val[0], *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x380]);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[3], *&STACK[0x3B0]), vorrq_s8(v545.val[3], *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x380]);
  v435 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v433, *&STACK[0x3B0]), vorrq_s8(v433, *&STACK[0x390])), *&STACK[0x390]), *&STACK[0x380]);
  v545.val[1] = veorq_s8(v435, vsraq_n_u64(vshlq_n_s64(v545.val[1], 3uLL), v545.val[1], 0x3DuLL));
  v545.val[2] = veorq_s8(v545.val[3], vsraq_n_u64(vshlq_n_s64(v545.val[2], 3uLL), v545.val[2], 0x3DuLL));
  v436 = veorq_s8(v545.val[0], vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL));
  v437 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL));
  v438 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v437);
  v545.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL), v436);
  v545.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL), v545.val[2]);
  v439 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v545.val[1]);
  v440 = vsubq_s64(vorrq_s8(vaddq_s64(v438, v438), *&STACK[0x540]), v438);
  v441 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v545.val[0], v545.val[0]), *&STACK[0x540]), v545.val[0]), *&STACK[0x5A0]);
  v545.val[0] = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v545.val[3], v545.val[3]), *&STACK[0x540]), v545.val[3]), *&STACK[0x5A0]);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v439, v439), *&STACK[0x540]), v439), *&STACK[0x5A0]), v367);
  v442 = veorq_s8(v545.val[0], v367);
  v443 = vsraq_n_u64(vshlq_n_s64(v545.val[1], 3uLL), v545.val[1], 0x3DuLL);
  v444 = veorq_s8(v441, v367);
  *&STACK[0x2B0] = vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL);
  *&STACK[0x2C0] = v440;
  v445 = veorq_s8(v444, vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL));
  v545.val[1] = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v545.val[2], 3uLL), v545.val[2], 0x3DuLL));
  v446 = veorq_s8(v545.val[3], v443);
  v545.val[2] = vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL);
  v545.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL), v446);
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v545.val[1]);
  v545.val[2] = vaddq_s64(v545.val[2], v445);
  v539 = vsubq_s64(vandq_s8(vaddq_s64(v545.val[2], v545.val[2]), *&STACK[0x590]), v545.val[2]);
  v448 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v447, v447), *&STACK[0x590]), v447), *&STACK[0x5B0]), *&STACK[0x520]);
  v545.val[2] = vsraq_n_u64(vshlq_n_s64(v445, 3uLL), v445, 0x3DuLL);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v545.val[3], v545.val[3]), *&STACK[0x590]), v545.val[3]), *&STACK[0x5B0]), *&STACK[0x520]);
  v449 = vsraq_n_u64(vshlq_n_s64(v545.val[1], 3uLL), v545.val[1], 0x3DuLL);
  v545.val[1] = veorq_s8(v545.val[3], vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL));
  v450 = veorq_s8(v448, v449);
  v451 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL), v450);
  v545.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL), v545.val[1]);
  v452 = vsubq_s64(v545.val[3], vandq_s8(vaddq_s64(v545.val[3], v545.val[3]), v385));
  v545.val[3] = vsubq_s64(v451, vandq_s8(vaddq_s64(v451, v451), v385));
  v453 = vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL);
  v454 = vandq_s8(v403, v375);
  v455 = vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL);
  v456 = vandq_s8(v392, v375);
  v457 = v375;
  v458 = vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL);
  v456.i64[0] = v83 + a2 + 10;
  v456.i64[1] = v84 + a2 + 10;
  v543 = v456;
  v459 = vandq_s8(v456, v457);
  v460 = vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL);
  v461 = vaddq_s64(v460, *&STACK[0x570]);
  v545.val[0] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v379, v460), v308), v461), vandq_s8(v461, v309));
  v462 = vaddq_s64(v458, *&STACK[0x570]);
  v463 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v379, v458), v308), v462), vandq_s8(v462, v309));
  v464 = vaddq_s64(v455, *&STACK[0x570]);
  v465 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v379, v455), v308), v464), vandq_s8(v464, v309));
  v466 = veorq_s8(v463, *&STACK[0x4D0]);
  v467 = vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL);
  v468 = veorq_s8(v465, *&STACK[0x4D0]);
  v469 = vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL);
  v470 = veorq_s8(v463, *&STACK[0x4C0]);
  v471 = vaddq_s64(v467, v470);
  v545.val[3] = veorq_s8(vaddq_s64(v545.val[3], v393), v394);
  v472 = veorq_s8(v545.val[3], v453);
  v473 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL);
  v545.val[3] = veorq_s8(v465, *&STACK[0x4C0]);
  v474 = vaddq_s64(v469, v545.val[3]);
  v475 = vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL);
  v476 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 3uLL), v545.val[3], 0x3DuLL);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v474, v474), v316), v474), *&STACK[0x4B0]), *&STACK[0x290]);
  v477 = veorq_s8(v545.val[3], v476);
  v478 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v471, v471), v316), v471), *&STACK[0x4B0]), *&STACK[0x290]);
  v479 = veorq_s8(v545.val[3], v475);
  v480 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL);
  v545.val[3] = vaddq_s64(v478, v477);
  v481 = vaddq_s64(v480, v479);
  v482 = vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL);
  v483 = vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL);
  v484 = veorq_s8(vaddq_s64(v452, v393), v394);
  v485 = veorq_s8(v484, vsraq_n_u64(vshlq_n_s64(v545.val[1], 3uLL), v545.val[1], 0x3DuLL));
  v486 = vsraq_n_u64(vshlq_n_s64(v484, 0x38uLL), v484, 8uLL);
  v487 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v481, v481), *&STACK[0x4A0]), v481), *&STACK[0x280]), *&STACK[0x270]);
  v488 = veorq_s8(v487, v483);
  v489 = vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL);
  v490 = vaddq_s64(v486, v485);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v545.val[3], v545.val[3]), *&STACK[0x4A0]), v545.val[3]), *&STACK[0x280]), *&STACK[0x270]);
  v491 = veorq_s8(v545.val[3], v482);
  v492 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL);
  v545.val[3] = vaddq_s64(v489, v488);
  v493 = vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL);
  v494 = veorq_s8(vaddq_s64(v492, v491), v540);
  v495 = veorq_s8(v494, vsraq_n_u64(vshlq_n_s64(v491, 3uLL), v491, 0x3DuLL));
  v496 = vsraq_n_u64(vshlq_n_s64(v494, 0x38uLL), v494, 8uLL);
  v497 = veorq_s8(v545.val[3], v540);
  v545.val[3] = veorq_s8(v497, v493);
  v498 = vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL);
  v499 = vaddq_s64(v496, v495);
  v500 = vsraq_n_u64(vshlq_n_s64(v495, 3uLL), v495, 0x3DuLL);
  v501 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 3uLL), v545.val[3], 0x3DuLL);
  v545.val[3] = veorq_s8(vaddq_s64(v498, v545.val[3]), *&STACK[0x220]);
  v502 = veorq_s8(v545.val[3], v501);
  v503 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL);
  v504 = veorq_s8(v499, *&STACK[0x220]);
  v545.val[3] = veorq_s8(v504, v500);
  v505 = vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL);
  v506 = vaddq_s64(v503, v502);
  v507 = vaddq_s64(v505, v545.val[3]);
  v508 = vaddq_s64(v473, v472);
  v509 = vsraq_n_u64(vshlq_n_s64(v502, 3uLL), v502, 0x3DuLL);
  v510 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 3uLL), v545.val[3], 0x3DuLL);
  v545.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v507, v507), *&STACK[0x230]), v507), *&STACK[0x260]), *&STACK[0x250]);
  v511 = veorq_s8(v545.val[3], v510);
  v512 = vsraq_n_u64(vshlq_n_s64(v545.val[3], 0x38uLL), v545.val[3], 8uLL);
  v545.val[3] = vsubq_s64(vorrq_s8(v490, v407), vorrq_s8(v490, v408));
  v513 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v506, v506), *&STACK[0x230]), v506), *&STACK[0x260]), *&STACK[0x250]);
  v514 = veorq_s8(v513, v509);
  v515 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v513, 0x38uLL), v513, 8uLL), v514);
  v516 = vaddq_s64(v512, v511);
  v517 = vsraq_n_u64(vshlq_n_s64(v514, 3uLL), v514, 0x3DuLL);
  v518 = vsraq_n_u64(vshlq_n_s64(v511, 3uLL), v511, 0x3DuLL);
  v519 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v516, *&STACK[0x490]), vorrq_s8(v516, *&STACK[0x470])), *&STACK[0x470]), *&STACK[0x480]);
  v520 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v515, *&STACK[0x490]), vorrq_s8(v515, *&STACK[0x470])), *&STACK[0x470]), *&STACK[0x480]);
  v521 = v408;
  v522 = veorq_s8(vaddq_s64(v539, *&STACK[0x5B0]), *&STACK[0x520]);
  v546.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v545.val[3], v408), *&STACK[0x4E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2E0], 3uLL), *&STACK[0x580]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v519, 0x38uLL), v519, 8uLL), veorq_s8(v519, v518)), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v403, 3uLL), *&STACK[0x580]))));
  v546.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v508, v407), vorrq_s8(v508, v408)), v408), *&STACK[0x4E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v544, 3uLL), *&STACK[0x580]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v520, 0x38uLL), v520, 8uLL), veorq_s8(v520, v517)), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v392, 3uLL), *&STACK[0x580]))));
  v523 = veorq_s8(v545.val[0], *&STACK[0x4D0]);
  v545.val[2] = veorq_s8(v522, v545.val[2]);
  v545.val[0] = veorq_s8(v545.val[0], *&STACK[0x4C0]);
  v545.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL), v545.val[0]);
  v524 = vsraq_n_u64(vshlq_n_s64(v545.val[2], 3uLL), v545.val[2], 0x3DuLL);
  v525 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v522, 0x38uLL), v522, 8uLL), v545.val[2]);
  v545.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v545.val[3], v545.val[3]), *&STACK[0x2A0]), v545.val[3]), *&STACK[0x4B0]), *&STACK[0x290]);
  v545.val[0] = veorq_s8(v545.val[2], vsraq_n_u64(vshlq_n_s64(v545.val[0], 3uLL), v545.val[0], 0x3DuLL));
  v545.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v545.val[0]);
  v545.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v545.val[2], v545.val[2]), *&STACK[0x4A0]), v545.val[2]), *&STACK[0x280]), *&STACK[0x270]);
  v545.val[0] = veorq_s8(v545.val[2], vsraq_n_u64(vshlq_n_s64(v545.val[0], 3uLL), v545.val[0], 0x3DuLL));
  v545.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v545.val[0]), v540);
  v545.val[0] = veorq_s8(v545.val[2], vsraq_n_u64(vshlq_n_s64(v545.val[0], 3uLL), v545.val[0], 0x3DuLL));
  v545.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v545.val[0]), *&STACK[0x220]);
  v545.val[0] = veorq_s8(v545.val[2], vsraq_n_u64(vshlq_n_s64(v545.val[0], 3uLL), v545.val[0], 0x3DuLL));
  v526 = veorq_s8(vaddq_s64(vsubq_s64(v525, vandq_s8(vaddq_s64(v525, v525), *&STACK[0x510])), *&STACK[0x500]), *&STACK[0x370]);
  v545.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v545.val[0]);
  v545.val[3] = veorq_s8(v526, v524);
  v527 = vsraq_n_u64(vshlq_n_s64(v545.val[0], 3uLL), v545.val[0], 0x3DuLL);
  v545.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v545.val[2], v545.val[2]), *&STACK[0x230]), v545.val[2]), *&STACK[0x260]), *&STACK[0x250]);
  v545.val[0] = vsraq_n_u64(vshlq_n_s64(v526, 0x38uLL), v526, 8uLL);
  v528 = veorq_s8(v545.val[2], v527);
  v545.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v528);
  v529 = vsraq_n_u64(vshlq_n_s64(v528, 3uLL), v528, 0x3DuLL);
  v530 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[2], *&STACK[0x490]), vorrq_s8(v545.val[2], *&STACK[0x470])), *&STACK[0x470]), *&STACK[0x480]);
  v545.val[0] = vaddq_s64(v545.val[0], v545.val[3]);
  v545.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v530, 0x38uLL), v530, 8uLL), veorq_s8(v530, v529));
  v530.i64[0] = v81 + a2 + 10;
  v530.i64[1] = v82 + a2 + 10;
  v546.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[0], *&STACK[0x4F0]), vorrq_s8(v545.val[0], v521)), v521), *&STACK[0x4E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), *&STACK[0x580]))), vshlq_u64(veorq_s8(v545.val[2], *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v543, 3uLL), *&STACK[0x580]))));
  v545.val[0] = vandq_s8(v530, *&STACK[0x420]);
  v545.val[2] = veorq_s8(vaddq_s64(*&STACK[0x2C0], *&STACK[0x5A0]), *&STACK[0x530]);
  v545.val[1] = vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL);
  v545.val[0] = vaddq_s64(v545.val[1], *&STACK[0x570]);
  v545.val[3] = veorq_s8(v545.val[2], *&STACK[0x2B0]);
  v545.val[0] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v545.val[1]), *&STACK[0x360]), v545.val[0]), vandq_s8(v545.val[0], *&STACK[0x350]));
  v531 = veorq_s8(v545.val[0], *&STACK[0x4C0]);
  v545.val[0] = veorq_s8(v545.val[0], *&STACK[0x4D0]);
  v545.val[1] = vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL);
  v545.val[2] = vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL);
  v545.val[0] = vsraq_n_u64(vshlq_n_s64(v545.val[3], 3uLL), v545.val[3], 0x3DuLL);
  v545.val[2] = vaddq_s64(v545.val[2], v531);
  v545.val[1] = vaddq_s64(v545.val[1], v545.val[3]);
  v545.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v545.val[2], v545.val[2]), *&STACK[0x2A0]), v545.val[2]), *&STACK[0x4B0]), *&STACK[0x290]);
  v545.val[3] = veorq_s8(v545.val[2], vsraq_n_u64(vshlq_n_s64(v531, 3uLL), v531, 0x3DuLL));
  v545.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v545.val[3]);
  v545.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v545.val[1], v545.val[1]), *&STACK[0x590]), v545.val[1]), *&STACK[0x5B0]), *&STACK[0x520]);
  v545.val[0] = veorq_s8(v545.val[1], v545.val[0]);
  v545.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v545.val[2], v545.val[2]), *&STACK[0x4A0]), v545.val[2]), *&STACK[0x280]), *&STACK[0x270]);
  v532 = vsraq_n_u64(vshlq_n_s64(v545.val[1], 0x38uLL), v545.val[1], 8uLL);
  v545.val[1] = veorq_s8(v545.val[2], vsraq_n_u64(vshlq_n_s64(v545.val[3], 3uLL), v545.val[3], 0x3DuLL));
  v545.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v545.val[1]), v540);
  v545.val[3] = vsraq_n_u64(vshlq_n_s64(v545.val[1], 3uLL), v545.val[1], 0x3DuLL);
  v545.val[1] = vsraq_n_u64(vshlq_n_s64(v545.val[0], 3uLL), v545.val[0], 0x3DuLL);
  v545.val[0] = vaddq_s64(v532, v545.val[0]);
  v545.val[3] = veorq_s8(v545.val[2], v545.val[3]);
  v545.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v545.val[0], vandq_s8(vaddq_s64(v545.val[0], v545.val[0]), *&STACK[0x510])), *&STACK[0x500]), *&STACK[0x370]);
  v545.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL), v545.val[3]), *&STACK[0x220]);
  v545.val[1] = veorq_s8(v545.val[0], v545.val[1]);
  v545.val[3] = veorq_s8(v545.val[2], vsraq_n_u64(vshlq_n_s64(v545.val[3], 3uLL), v545.val[3], 0x3DuLL));
  v533 = vsraq_n_u64(vshlq_n_s64(v545.val[2], 0x38uLL), v545.val[2], 8uLL);
  v545.val[2] = vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL);
  v545.val[0] = vaddq_s64(v533, v545.val[3]);
  v545.val[1] = vaddq_s64(v545.val[2], v545.val[1]);
  v545.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v545.val[0], v545.val[0]), *&STACK[0x230]), v545.val[0]), *&STACK[0x260]), *&STACK[0x250]);
  v545.val[2] = veorq_s8(v545.val[0], vsraq_n_u64(vshlq_n_s64(v545.val[3], 3uLL), v545.val[3], 0x3DuLL));
  v545.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL), v545.val[2]);
  v545.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[0], *&STACK[0x490]), vorrq_s8(v545.val[0], *&STACK[0x470])), *&STACK[0x470]), *&STACK[0x480]);
  v546.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v545.val[1], *&STACK[0x4F0]), vorrq_s8(v545.val[1], v521)), v521), *&STACK[0x4E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), *&STACK[0x580]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545.val[0], 0x38uLL), v545.val[0], 8uLL), veorq_s8(v545.val[0], vsraq_n_u64(vshlq_n_s64(v545.val[2], 3uLL), v545.val[2], 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v530, 3uLL), *&STACK[0x580]))));
  v545.val[0] = *&STACK[0x430];
  v545.val[0].i64[1] = vqtbl4q_s8(v546, a64).u64[0];
  v545.val[0] = vrev64q_s8(v545.val[0]);
  *(v73 + a2 - 5) = veorq_s8(vextq_s8(v545.val[0], v545.val[0], 8uLL), *(v64 + v73 - 15));
  return (*(STACK[0x5E0] + 8 * ((8178 * (a48 == v71)) ^ a49)))(v82, v81, v84 + a2 + 10, v76, v95, v93, v64 + v91, a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45.i64[0], a45.i64[1], a46, a47, a48, a49, v535.i64[0], v535.i64[1], v536.i64[0], v536.i64[1], v537.i64[0], v537.i64[1]);
}

uint64_t sub_100158F88(unint64_t a1, uint64_t a2, int a3, int a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v19 = *(STACK[0x5E0] + 8 * v17);
  *&STACK[0x5A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3B0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x590] = vdupq_n_s64(0x7695A575CC8A36DAuLL);
  *&STACK[0x580] = vdupq_n_s64(0x96A5A8A3375C925uLL);
  LODWORD(STACK[0x390]) = -(a4 & 0xFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(v15);
  *&STACK[0x380] = vdupq_n_s64(a1);
  *&STACK[0x350] = vdupq_n_s64(a8);
  *&STACK[0x360] = vdupq_n_s64(v16);
  *&STACK[0x330] = vdupq_n_s64(0x783C5E39B8B7B52uLL);
  LODWORD(STACK[0x310]) = a3 + v14 + 751305223;
  *&STACK[0x2E0] = vdupq_n_s64(v11);
  LODWORD(STACK[0x2C0]) = a3 + v14 + 751305224;
  *&STACK[0x2B0] = vdupq_n_s64(v10);
  LODWORD(STACK[0x2A0]) = a3 + v14 + 751305225;
  *&STACK[0x240] = vdupq_n_s64(0x67D887FE6B5CBACDuLL);
  LODWORD(STACK[0x290]) = a3 + v14 + 751305226;
  *&STACK[0x280] = vdupq_n_s64(v8);
  LODWORD(STACK[0x270]) = a3 + v14 + 751305227;
  *&STACK[0x260] = vdupq_n_s64(0xA49B55996E1895C1);
  LODWORD(STACK[0x250]) = a3 + v14 + 751305228;
  *&STACK[0x230] = vdupq_n_s64(0x63A5A39A2714D1C3uLL);
  *&STACK[0x210] = vdupq_n_s64(0x5B64AA6691E76A3EuLL);
  *&STACK[0x220] = vdupq_n_s64(0xF0EB01C659315F20);
  *&STACK[0x570] = vdupq_n_s64(0x78A7F1CD3675070uLL);
  *&STACK[0x560] = vdupq_n_s64(0xF436984B6E1EE393);
  *&STACK[0x550] = vdupq_n_s64(0x9FE972D68BE672A4);
  *&STACK[0x540] = vdupq_n_s64(0xB00B4694BA0CC6ADLL);
  *&STACK[0x530] = vdupq_n_s64(0xF36B4E865AAF96DELL);
  *&STACK[0x5B0] = vdupq_n_s64(0x1696A34D4DBEA686uLL);
  *&STACK[0x520] = vdupq_n_s64(a5);
  *&STACK[0x510] = vdupq_n_s64(a7);
  *&STACK[0x500] = vdupq_n_s64(v12);
  *&STACK[0x200] = vdupq_n_s64(v13);
  *&STACK[0x4F0] = vdupq_n_s64(0x3027198D4276DB70uLL);
  *&STACK[0x4E0] = vdupq_n_s64(v9);
  *&STACK[0x4D0] = vdupq_n_s64(0x3B56774011A0C4A7uLL);
  return v19(v18);
}

uint64_t sub_100159290@<X0>(unint64_t a1@<X0>, int a2@<W3>, unint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = (LODWORD(STACK[0x250]) + a2 + 8);
  v81 = (LODWORD(STACK[0x270]) + a2 + 8);
  v82 = (LODWORD(STACK[0x290]) + a2 + 8);
  v83 = (LODWORD(STACK[0x2A0]) + a2 + 8);
  v84 = (LODWORD(STACK[0x2C0]) + a2 + 8);
  v85 = (LODWORD(STACK[0x310]) + a2 + 8);
  v86 = v66 + v80;
  v87.i64[0] = v66 + v80;
  v87.i64[1] = v66 + v81;
  v88 = v87;
  *&STACK[0x4B0] = v87;
  v89 = (v72 + a2 + 8);
  v90.i64[0] = v66 + v82;
  v90.i64[1] = v66 + v83;
  v91.i64[0] = v66 + v84;
  v91.i64[1] = v66 + v85;
  v87.i64[0] = v66 + v89;
  v92 = v76 + a2 + (v78 ^ 0xBCEB84CB) + 8;
  v93.i64[0] = v84 + a4 + 10;
  v87.i64[1] = v66 + v92;
  v94 = v87;
  *&STACK[0x4C0] = v87;
  v93.i64[1] = v85 + a4 + 10;
  v95.i64[0] = v82 + a4 + 10;
  v96 = v80 + a4;
  v95.i64[1] = v83 + a4 + 10;
  v87.i64[0] = v96 + 10;
  v87.i64[1] = v81 + a4 + 10;
  v97 = v87;
  *&STACK[0x470] = v87;
  v98 = vandq_s8(v91, *&STACK[0x5A0]);
  v99 = vandq_s8(v90, *&STACK[0x5A0]);
  v100 = vandq_s8(v88, *&STACK[0x5A0]);
  v101 = vandq_s8(v94, *&STACK[0x5A0]);
  v102 = *&STACK[0x5A0];
  v103 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v107 = vaddq_s64(v106, *&STACK[0x590]);
  v108 = vaddq_s64(v104, *&STACK[0x590]);
  v109 = vaddq_s64(v103, *&STACK[0x590]);
  v110 = vaddq_s64(v105, *&STACK[0x590]);
  v111 = *&STACK[0x590];
  v112 = *&STACK[0x580];
  v113 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x580], v106), *&STACK[0x380]), v107), vandq_s8(v107, *&STACK[0x380]));
  v114 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x580], v104), *&STACK[0x380]), v108), vandq_s8(v108, *&STACK[0x380]));
  v115 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x580], v103), *&STACK[0x380]), v109), vandq_s8(v109, *&STACK[0x380]));
  v116 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x580], v105), *&STACK[0x380]), v110), vandq_s8(v110, *&STACK[0x380]));
  v117 = veorq_s8(v115, *&STACK[0x370]);
  v118 = veorq_s8(v114, *&STACK[0x370]);
  v119 = veorq_s8(v113, *&STACK[0x370]);
  v120 = veorq_s8(v113, *&STACK[0x360]);
  v121 = veorq_s8(v116, *&STACK[0x370]);
  v122 = veorq_s8(v114, *&STACK[0x360]);
  v123 = veorq_s8(v115, *&STACK[0x360]);
  v124 = veorq_s8(v116, *&STACK[0x360]);
  v125 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v124);
  v129 = vaddq_s64(v127, v123);
  v130 = vaddq_s64(v126, v122);
  v131 = vaddq_s64(v125, v120);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x350]), vorrq_s8(v129, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x2E0]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, *&STACK[0x350]), vorrq_s8(v130, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x2E0]);
  v134 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, *&STACK[0x350]), vorrq_s8(v131, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x2E0]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, *&STACK[0x350]), vorrq_s8(v128, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x2E0]);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v138 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v139 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v140 = veorq_s8(v136, v134);
  v141 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v140);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v139);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v138);
  v145 = vaddq_s64(v141, v137);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, *&STACK[0x2B0]), vorrq_s8(v143, *&STACK[0x240])), *&STACK[0x240]), *&STACK[0x280]);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, *&STACK[0x2B0]), vorrq_s8(v144, *&STACK[0x240])), *&STACK[0x240]), *&STACK[0x280]);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v145, *&STACK[0x2B0]), vorrq_s8(v145, *&STACK[0x240])), *&STACK[0x240]), *&STACK[0x280]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v142, *&STACK[0x2B0]), vorrq_s8(v142, *&STACK[0x240])), *&STACK[0x240]), *&STACK[0x280]);
  v150 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v151 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v152 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v153 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v154 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v152);
  v158 = vaddq_s64(v155, v151);
  v159 = vaddq_s64(v156, v153);
  v160 = vaddq_s64(v154, v150);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v157, *&STACK[0x260]), vorrq_s8(v157, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x230]);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, *&STACK[0x260]), vorrq_s8(v158, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x230]);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, *&STACK[0x260]), vorrq_s8(v160, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x230]);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, *&STACK[0x260]), vorrq_s8(v159, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x230]);
  v165 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v166 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v167 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v168 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v168);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v167);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v166);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v165);
  v173 = vsubq_s64(vorrq_s8(vaddq_s64(v172, v172), *&STACK[0x220]), v172);
  v174 = vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), *&STACK[0x220]), v171);
  v175 = vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), *&STACK[0x220]), v170);
  *&STACK[0x4A0] = vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), *&STACK[0x220]), v169);
  v176 = vaddq_s64(v175, *&STACK[0x570]);
  v177 = vaddq_s64(v174, *&STACK[0x570]);
  v178 = veorq_s8(vaddq_s64(v173, *&STACK[0x570]), *&STACK[0x560]);
  v179 = veorq_s8(v177, *&STACK[0x560]);
  v180 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v181 = veorq_s8(v176, *&STACK[0x560]);
  v182 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  *&STACK[0x490] = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v183 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v184 = veorq_s8(v179, v182);
  v185 = veorq_s8(v178, v180);
  v186 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v185);
  v189 = vaddq_s64(v187, v184);
  v190 = vaddq_s64(v186, v183);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190, v190), *&STACK[0x550]), v190), *&STACK[0x540]), *&STACK[0x530]);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189, v189), *&STACK[0x550]), v189), *&STACK[0x540]), *&STACK[0x530]);
  v193 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), *&STACK[0x550]), v188), *&STACK[0x540]), *&STACK[0x530]);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v197 = veorq_s8(v192, v194);
  *&STACK[0x480] = veorq_s8(v191, v193);
  v198 = vandq_s8(v97, v102);
  v199 = vandq_s8(v95, v102);
  v200 = vandq_s8(v93, v102);
  v201 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v205 = vaddq_s64(v203, v111);
  v206 = vaddq_s64(v202, v111);
  v207 = vaddq_s64(v201, v111);
  v208 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v209 = vandq_s8(vsubq_s64(v112, v203), *&STACK[0x4F0]);
  v210 = vandq_s8(vsubq_s64(v112, v202), *&STACK[0x4F0]);
  v211 = vaddq_s64(vandq_s8(vsubq_s64(v112, v201), *&STACK[0x4F0]), v207);
  v212 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v213 = vaddq_s64(v210, v206);
  v214 = vandq_s8(v207, *&STACK[0x4E0]);
  v215 = vandq_s8(v206, *&STACK[0x4E0]);
  *&STACK[0x420] = vsubq_s64(vaddq_s64(v209, v205), vandq_s8(v205, *&STACK[0x4E0]));
  v216 = vsubq_s64(v213, v215);
  v217 = vsubq_s64(v211, v214);
  v218 = veorq_s8(v217, *&STACK[0x4D0]);
  v219 = veorq_s8(v216, *&STACK[0x4D0]);
  v220 = vdupq_n_s64(v67);
  *&STACK[0x430] = v220;
  v221 = veorq_s8(v216, v220);
  v222 = veorq_s8(v217, v220);
  v223 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v222);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v221);
  v226 = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v227 = vaddq_s64(v208, v197);
  v228 = vdupq_n_s64(v68);
  v229 = vdupq_n_s64(v69);
  *&STACK[0x410] = v229;
  v230 = vaddq_s64(v204, v196);
  v231 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v224, v224), v228), v224), v229);
  v232 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v225, v225), v228), v225), v229);
  v233 = vdupq_n_s64(v70);
  *&STACK[0x400] = v233;
  v234 = veorq_s8(v232, v233);
  v235 = veorq_s8(v231, v233);
  v236 = vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL);
  v237 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v238 = veorq_s8(v234, v236);
  v239 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v238);
  v241 = vaddq_s64(v239, v237);
  v242 = vdupq_n_s64(v71);
  v243 = vdupq_n_s64(a3);
  v244 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v241, v241), v242), v241), v243);
  v245 = vdupq_n_s64(v73);
  v246 = veorq_s8(v244, v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v240, v240), v242), v240), v243), v245);
  v248 = vaddq_s64(vsubq_s64(v227, vandq_s8(vaddq_s64(v227, v227), *&STACK[0x5B0])), *&STACK[0x520]);
  v249 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v250 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v251 = veorq_s8(v246, v249);
  v252 = vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v251);
  v254 = *&STACK[0x510];
  v255 = veorq_s8(vaddq_s64(vsubq_s64(v230, vandq_s8(vaddq_s64(v230, v230), *&STACK[0x5B0])), *&STACK[0x520]), *&STACK[0x510]);
  v256 = vdupq_n_s64(0xC73EF603490C4402);
  *&STACK[0x3F0] = v256;
  v257 = veorq_s8(vaddq_s64(v252, v250), v256);
  v258 = veorq_s8(v253, v256);
  v259 = veorq_s8(v248, v254);
  v260 = vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL);
  v261 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v262 = veorq_s8(v259, v226);
  v263 = veorq_s8(v257, v260);
  v264 = vdupq_n_s64(0xC4318A842864C03uLL);
  *&STACK[0x3E0] = v264;
  v265 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v261), v264);
  v266 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v263), v264);
  v267 = vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL);
  v268 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v269 = veorq_s8(v265, v267);
  v270 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v269);
  v272 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v268);
  v273 = vdupq_n_s64(v79);
  *&STACK[0x3D0] = v273;
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), veorq_s8(v255, v223));
  v275 = vdupq_n_s64(a1);
  v276 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v271, v271), v273), v271), v275);
  v277 = vaddq_s64(v270, v262);
  v278 = vdupq_n_s64(0xFB0785B069DD8DD5);
  v279 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v272, v272), v273), v272), v275), v278);
  v280 = veorq_s8(v276, v278);
  v281 = *&STACK[0x500];
  v282 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v283 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v283);
  v285 = vsubq_s64(vorrq_s8(v274, *&STACK[0x500]), vorrq_s8(v274, a66));
  v286 = vdupq_n_s64(0xBD87295834B24C76);
  v287 = vdupq_n_s64(v74);
  v288 = vsubq_s64(vorrq_s8(v284, v286), vorrq_s8(v284, v287));
  v289 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v282);
  *&STACK[0x3C0] = v286;
  v290 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v291 = vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL);
  v292 = vdupq_n_s64(v75);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v289, v286), vorrq_s8(v289, v287)), v287), v292);
  v294 = veorq_s8(v293, v291);
  v295 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v296 = veorq_s8(vaddq_s64(v288, v287), v292);
  v297 = veorq_s8(v296, v290);
  v298 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v299 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v277, v281), vorrq_s8(v277, a66)), a66), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), *&STACK[0x3B0])));
  v300 = vaddq_s64(v298, v297);
  v301 = vaddq_s64(v295, v294);
  v302 = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  v303 = vshlq_u64(veorq_s8(v300, v302), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), *&STACK[0x3B0])));
  v369.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v285, a66), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), *&STACK[0x3B0]))), vshlq_u64(veorq_s8(v301, v302), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), *&STACK[0x3B0]))));
  v369.val[1] = veorq_s8(v299, v303);
  v304 = veorq_s8(*&STACK[0x420], *&STACK[0x4D0]);
  v305 = veorq_s8(*&STACK[0x420], *&STACK[0x430]);
  v306 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305);
  v307 = vaddq_s64(v212, *&STACK[0x480]);
  v308 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v306, v306), v228), v306), *&STACK[0x410]), *&STACK[0x400]);
  v309 = veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v309);
  v311 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v310, v310), v242), v310), v243), v245);
  v312 = veorq_s8(v311, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v313 = veorq_s8(vaddq_s64(vsubq_s64(v307, vandq_s8(vaddq_s64(v307, v307), *&STACK[0x5B0])), *&STACK[0x520]), *&STACK[0x510]);
  v314 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL), v312), *&STACK[0x3F0]);
  v315 = veorq_s8(v313, vsraq_n_u64(vshlq_n_s64(*&STACK[0x480], 3uLL), *&STACK[0x480], 0x3DuLL));
  v316 = veorq_s8(v314, vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL));
  v317 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v318 = vsraq_n_u64(vshlq_n_s64(v313, 0x38uLL), v313, 8uLL);
  v319 = vaddq_s64(v317, v316);
  v320 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v321 = veorq_s8(v319, *&STACK[0x3E0]);
  v322 = veorq_s8(v321, v320);
  v323 = vaddq_s64(v318, v315);
  v324 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v325 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v324, v324), *&STACK[0x3D0]), v324), v275), v278);
  v326 = veorq_s8(v325, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v327 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v326);
  v328 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v327, v286), vorrq_s8(v327, v287)), v287), v292);
  v286.i64[0] = v89 + a4 + 10;
  v286.i64[1] = v92 + a4 + 10;
  v369.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v323, v281), vorrq_s8(v323, a66)), a66), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4B0], 3uLL), *&STACK[0x3B0]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), veorq_s8(v328, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL))), v302), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x470], 3uLL), *&STACK[0x3B0]))));
  v329 = vandq_s8(v286, *&STACK[0x5A0]);
  v330 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v331 = vaddq_s64(v330, *&STACK[0x590]);
  v332 = veorq_s8(vaddq_s64(*&STACK[0x4A0], *&STACK[0x570]), *&STACK[0x560]);
  v333 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x580], v330), *&STACK[0x4F0]), v331), vandq_s8(v331, *&STACK[0x4E0]));
  v334 = veorq_s8(v333, *&STACK[0x4D0]);
  v335 = veorq_s8(v332, *&STACK[0x490]);
  v336 = veorq_s8(v333, *&STACK[0x430]);
  v337 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v336);
  v338 = vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL);
  v339 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v337, v337), v228), v337), *&STACK[0x410]), *&STACK[0x400]);
  v340 = veorq_s8(v339, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v341 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v340);
  v342 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v343 = vaddq_s64(v338, v335);
  v344 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v341, v341), v242), v341), v243), v245);
  v345 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v346 = vsubq_s64(vandq_s8(vaddq_s64(v343, v343), *&STACK[0x550]), v343);
  v347 = veorq_s8(v344, v345);
  v348 = vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL);
  v349 = veorq_s8(vaddq_s64(v346, *&STACK[0x540]), *&STACK[0x530]);
  v350 = veorq_s8(v349, v342);
  v351 = veorq_s8(vaddq_s64(v348, v347), *&STACK[0x3F0]);
  v352 = vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL);
  v353 = vsraq_n_u64(vshlq_n_s64(v349, 0x38uLL), v349, 8uLL);
  v354 = veorq_s8(v351, v352);
  v355 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v354), *&STACK[0x3E0]);
  v356 = veorq_s8(v355, vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL));
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL), v356);
  v358 = vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL);
  v359 = vaddq_s64(v353, v350);
  v360 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v357, v357), *&STACK[0x3D0]), v357), v275), v278);
  v361 = vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL);
  v362 = vsubq_s64(v359, vandq_s8(vaddq_s64(v359, v359), *&STACK[0x5B0]));
  v363 = veorq_s8(v360, v361);
  v364 = veorq_s8(vaddq_s64(v362, *&STACK[0x520]), *&STACK[0x510]);
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL), v363);
  v366 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v365, *&STACK[0x3C0]), vorrq_s8(v365, v287)), v287), v292);
  v367 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), veorq_s8(v364, v358));
  v369.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v367, *&STACK[0x500]), vorrq_s8(v367, a66)), a66), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4C0], 3uLL), *&STACK[0x3B0]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL), veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v363, 3uLL), v363, 0x3DuLL))), v302), vnegq_s64(vandq_s8(vshlq_n_s64(v286, 3uLL), *&STACK[0x3B0]))));
  *(v96 + 3) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v369, a65)), *(v86 - 7));
  return (*(STACK[0x5E0] + 8 * ((3954 * (LODWORD(STACK[0x390]) == a2)) ^ v77)))();
}

uint64_t sub_10015A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v22 = (v10 + a5);
  v23 = STACK[0x5C0] + v22;
  v24 = v22 + STACK[0x5D0];
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((0x96A5A8A3375C925 - v25) & a3) + v25 + 0x7695A575CC8A36DALL - ((v25 + 0x7695A575CC8A36DALL) & a3);
  v27 = __ROR8__(v26 ^ v18, 8);
  v28 = v26 ^ v19;
  v29 = (v15 - ((v27 + v28) | v15) + ((v27 + v28) | a6)) ^ v14;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((a1 - ((v31 + v30) | a1) + ((v31 + v30) | v12)) ^ v9, 8);
  v33 = (a1 - ((v31 + v30) | a1) + ((v31 + v30) | v12)) ^ v9 ^ __ROR8__(v30, 61);
  v34 = (a2 - ((v32 + v33) | a2) + ((v32 + v33) | 0xA49B55996E1895C1)) ^ 0x63A5A39A2714D1C3;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0xF0EB01C659315F20) - (v36 + v35) + 0x78A7F1CD3675070) ^ 0xF436984B6E1EE393;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8) + v38;
  v40 = __ROR8__((v24 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((0x96A5A8A3375C925 - v40) & 0x3027198D4276DB70) + v40 + 0x7695A575CC8A36DALL - ((v40 + 0x7695A575CC8A36DALL) & v11);
  v42 = v41 ^ 0x3B56774011A0C4A7;
  v41 ^= 0x8FFB5CEE75F17274;
  v43 = __ROR8__(v42, 8);
  v44 = (((2 * v39) & 0x9FE972D68BE672A4) - v39 - 0x4FF4B96B45F33953) ^ 0xF36B4E865AAF96DELL;
  v45 = (((2 * (v43 + v41)) | 0x967F9B7D3960DED2) - (v43 + v41) - 0x4B3FCDBE9CB06F69) ^ 0x15D189ED5685B5D3;
  v46 = v44 ^ __ROR8__(v38, 61);
  v47 = v45 ^ __ROR8__(v41, 61);
  v48 = __ROR8__(v45, 8) + v47;
  v49 = __ROR8__(v44, 8);
  v50 = ((v21 & (2 * v48)) - v48 - 0x33571455D234DACALL) ^ 0x5AF960B27FEFAF3BLL;
  v51 = v50 ^ __ROR8__(v47, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xC73EF603490C4402;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xC4318A842864C03;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = ((2 * (v56 + v55)) & 0x8F30E4BAED0244B2) - (v56 + v55);
  v58 = (v49 + v46 - ((2 * (v49 + v46)) & 0x1696A34D4DBEA686) + 0xB4B51A6A6DF5343) ^ 0xBECA91D19252317FLL;
  v59 = __ROR8__(v58, 8) + (v58 ^ __ROR8__(v46, 61));
  v60 = (v57 + v20) ^ a7 ^ __ROR8__(v55, 61);
  v61 = __ROR8__((v57 + v20) ^ a7, 8);
  *(v24 + 10) = (((v7 - (v59 | v7) + (v59 | 0x3E0110D8C95E5D55)) ^ 0xCE3F5299798BB6ABLL) >> (8 * (v23 & 7u))) ^ (((__ROR8__((a4 - ((v61 + v60) | a4) + ((v61 + v60) | v8)) ^ v13, 8) + ((a4 - ((v61 + v60) | a4) + ((v61 + v60) | v8)) ^ v13 ^ __ROR8__(v60, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v24 + 10) & 7))) ^ *v23;
  return (*(STACK[0x5E0] + 8 * (((v10 == 1125416081) * v17) ^ v16)))();
}

uint64_t sub_10015A668@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v7 = *(a3 - 0x51CE20ABD81C9323);
  v8 = __ROR8__((v7 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((2 * v8 + 0xD2B4AEB99146DB4) & 0xD6A883CE645286CLL) - v8 + 0x2B5166BC05334EFLL;
  v10 = v9 ^ 0x743BD52CDF0B741ELL;
  v9 ^= 0xC096FE82BB5AC2CDLL;
  v11 = __ROR8__(v10, 8);
  v12 = *(a2 + 8 * v3);
  v13 = (0x5AC4CBD654E7BB4DLL - ((v11 + v9) | 0x5AC4CBD654E7BB4DLL) + ((v11 + v9) | 0xA53B3429AB1844B2)) ^ 0xFBD5707A612D9E08;
  v14 = v13 ^ __ROR8__(v9, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0x41F0F1CB2590B8B8) - (v15 + v14) + 0x5F07871A6D37A3A4) ^ 0x36A9F3FDC0ECD651;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xC73EF603490C4402;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xC4318A842864C03;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = __ROR8__((v22 + v21 - ((2 * (v22 + v21)) & 0xD13CA12E00AFE17CLL) + 0x689E50970057F0BELL) ^ 0x2BFE5885E0F4A0CDLL, 8);
  v24 = (v22 + v21 - ((2 * (v22 + v21)) & 0xD13CA12E00AFE17CLL) + 0x689E50970057F0BELL) ^ 0x2BFE5885E0F4A0CDLL ^ __ROR8__(v21, 61);
  v25 = __ROR8__((v7 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v7[10] = (((__ROR8__((v23 + v24) ^ 0xB581C077348D623CLL, 8) + ((v23 + v24) ^ 0xB581C077348D623CLL ^ __ROR8__(v24, 61))) ^ v6) >> (8 * ((v7 + 10) & 7u))) ^ HIBYTE(v4) ^ 0xF6;
  v26 = v25 - ((v5 + 2 * v25) & 0x3BF8D554C6A9BD4ELL) - 0x6B6DEFDFD020EA7FLL;
  v27 = __ROR8__(v26 ^ 0x108D04673082C170, 8);
  v26 ^= 0xA4202FC954D377A3;
  v28 = (((2 * (v27 + v26)) | 0xEC2A442674EE553ALL) - (v27 + v26) + 0x9EADDECC588D563) ^ 0xA8FB6640F042F027;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x96518B1852248A0DLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xC73EF603490C4402;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0x5E027AD58ED68766) - (v34 + v33) + 0x50FEC2953894BC4CLL) ^ 0x5CBDDA3D7A12F04FLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * ((v37 + v36) ^ 0x8AE56A989FE8F736)) | 0x9B76B8B2587F0520) - ((v37 + v36) ^ 0x8AE56A989FE8F736) + 0x3244A3A6D3C07D70) ^ 0x43E3ED3537425D5;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0x620AA0669CF15A16) - 0x4EFAAFCCB18752F5) ^ 0x48490447AF5CF37;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v7[11] = (((0xC91188BF2D04B8C4 - ((v43 + v42) | 0xC91188BF2D04B8C4) + ((v43 + v42) | 0x36EE7740D2FB473BLL)) ^ 0xC6D03501622EACC5) >> (8 * ((v7 + 11) & 7u))) ^ BYTE6(v4) ^ 0x96;
  v44 = __ROR8__((v7 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = v44 - ((2 * v44 + 0x6D2B4AEB99146DB4) & 0x50CE8FB33DC06CBCLL) - 0x610312B0949592C8;
  v46 = v45 ^ 0x25162914CD362989;
  v45 ^= 0x91BB02BAA9679F5ALL;
  v47 = (__ROR8__(v46, 8) + v45) ^ a1;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (0xCF0731C97CD9BF01 - ((v49 + v48) | 0xCF0731C97CD9BF01) + ((v49 + v48) | 0x30F8CE36832640FELL)) ^ 0xA6A9452ED102CAF3;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xC73EF603490C4402;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xC4318A842864C03;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((v56 + v55 - ((2 * (v56 + v55)) & 0x8570FCA475F1E9A0) - 0x3D4781ADC5070B30) ^ 0x81D87640DA5BA4A3, 8);
  v58 = (v56 + v55 - ((2 * (v56 + v55)) & 0x8570FCA475F1E9A0) - 0x3D4781ADC5070B30) ^ 0x81D87640DA5BA4A3 ^ __ROR8__(v55, 61);
  v7[12] = (((__ROR8__((v57 + v58) ^ 0xB581C077348D623CLL, 8) + ((v57 + v58) ^ 0xB581C077348D623CLL ^ __ROR8__(v58, 61))) ^ v6) >> (8 * ((v7 + 12) & 7u))) ^ BYTE5(v4) ^ 0x50;
  v59 = __ROR8__((v7 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = -2 - (((0x896A5A8A3375C925 - v59) | 0x7A9287DBC57770FALL) + ((v59 + 0x7695A575CC8A36DALL) | 0x856D78243A888F05));
  v61 = v60 ^ 0x77E3E91696A16F2DLL;
  v60 ^= 0xC34EC2B8F2F0D9FELL;
  v62 = (__ROR8__(v61, 8) + v60) ^ a1;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x96518B1852248A0DLL;
  v65 = __ROR8__(v64, 8);
  v66 = v64 ^ __ROR8__(v63, 61);
  v67 = (((2 * (v65 + v66)) & 0x8863960F1367925ELL) - (v65 + v66) + 0x3BCE34F8764C36D0) ^ 0xFCF0C2FB3F4072D2;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = __ROR8__((((v69 + v68) ^ 0x4C8CD49D0AD8FD43) - ((2 * ((v69 + v68) ^ 0x4C8CD49D0AD8FD43)) & 0xEEEF4093BA2142C4) - 0x8885FB622EF5E9ELL) ^ 0xB7B86C7C954E1022, 8);
  v71 = (((v69 + v68) ^ 0x4C8CD49D0AD8FD43) - ((2 * ((v69 + v68) ^ 0x4C8CD49D0AD8FD43)) & 0xEEEF4093BA2142C4) - 0x8885FB622EF5E9ELL) ^ 0xB7B86C7C954E1022 ^ __ROR8__(v68, 61);
  v72 = (((2 * (v70 + v71)) | 0xA9475889F5C26496) - (v70 + v71) - 0x54A3AC44FAE1324BLL) ^ 0x17C3A4561A426238;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xB581C077348D623CLL;
  v7[13] = (((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v73, 61))) ^ v6) >> (8 * ((v7 + 13) & 7u))) ^ BYTE4(v4) ^ 0x75;
  v75 = (__ROR8__((v7 + 14) & 0xFFFFFFFFFFFFFFF8, 8) + 0x7695A575CC8A36DALL) & 0xF9FFFFFFFFFFFFFFLL;
  v76 = v75 ^ 0xB716ECD53D61FD7;
  v75 ^= 0xBFDC45633787A904;
  v77 = (__ROR8__(v76, 8) + v75) ^ a1;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x96518B1852248A0DLL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xC73EF603490C4402;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) | 0x8E125D9D77AF0CC8) - (v83 + v82) - 0x47092ECEBBD78664) ^ 0x4B4A3666F951CA67;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x43600812E0A35073;
  v87 = __ROR8__(v86, 8);
  v88 = v86 ^ __ROR8__(v85, 61);
  v89 = (v87 + v88 - ((2 * (v87 + v88)) & 0xDE1756931ADA7142) - 0x10F454B67292C75FLL) ^ 0x5A8A6B3EB9E05A9DLL;
  v7[14] = (((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v88, 61))) ^ v6) >> (8 * ((v7 + 14) & 7u))) ^ BYTE3(v4) ^ 0x8A;
  v90 = __ROR8__((v7 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v91 = -2 - (((0x96A5A8A3375C925 - v90) | 0x9662632A34A2BD10) + ((v90 + 0x7695A575CC8A36DALL) | 0x699D9CD5CB5D42EFLL));
  v92 = v91 ^ 0x9B130DE76774A2C7;
  v91 ^= 0x2FBE264903251414uLL;
  v93 = __ROR8__(v92, 8);
  v94 = __ROR8__((((2 * (v93 + v91)) & 0xD4C9A395ADB4DC32) - (v93 + v91) - 0x6A64D1CAD6DA6E1ALL) ^ 0xCB756A66E3104B5CLL, 8);
  v95 = (((2 * (v93 + v91)) & 0xD4C9A395ADB4DC32) - (v93 + v91) - 0x6A64D1CAD6DA6E1ALL) ^ 0xCB756A66E3104B5CLL ^ __ROR8__(v91, 61);
  v96 = (v94 + v95) ^ 0x96518B1852248A0DLL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (v98 + v97 - ((2 * (v98 + v97)) & 0xD9818D15638E4B22) + 0x6CC0C68AB1C72591) ^ 0xABFE3089F8CB6193;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((2 * (v101 + v100)) & 0x72171B682871E726) - (v101 + v100) - 0x390B8DB41438F394) ^ 0xCAB76AE3A941406FLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x43600812E0A35073;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) & 0xAB2E71EB123AB4A2) - (v106 + v105) + 0x2A68C70A76E2A5AELL) ^ 0x9FE9077D426FC792;
  v7[15] = (((__ROR8__(v107, 8) + (v107 ^ __ROR8__(v105, 61))) ^ v6) >> (8 * ((v7 + 15) & 7u))) ^ BYTE2(v4) ^ 0x47;
  v108 = __ROR8__((v7 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v109 = v108 - ((2 * v108 - 0x12D4B51466EB924CLL) & 0xE24B57D3FE21A3D4) + 0x67BB515FCB9B08C4;
  v110 = v109 ^ 0xFC54C524ACC6CE3DLL;
  v109 ^= 0x48F9EE8AC89778EEuLL;
  v111 = (__ROR8__(v110, 8) + v109) ^ a1;
  v112 = __ROR8__(v111, 8);
  v113 = v111 ^ __ROR8__(v109, 61);
  v114 = (((2 * (v112 + v113)) | 0xA1931F35A31200D4) - (v112 + v113) + 0x2F3670652E76FF96) ^ 0x4698048283AD8A67;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0xC73EF603490C4402;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (v118 + v117 - ((2 * (v118 + v117)) & 0xD9D6F276C466C330) - 0x131486C49DCC9E68) ^ 0xE0A8619320B52D9BLL;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (v121 + v120 - ((2 * (v121 + v120)) & 0x789D63FA0AA89350) - 0x43B14E02FAABB658) ^ 0xFF2EB9EFE5F719DBLL;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xB581C077348D623CLL;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v7[16] = (((((2 * ((v126 + v125) ^ 0x5E0046CBC00F248)) & 0xAA25D988F1F11C8ALL) - ((v126 + v125) ^ 0x5E0046CBC00F248) - 0x5512ECC478F88E46) ^ 0x5F3355168BD2680CLL) >> (8 * ((v7 + 16) & 7u))) ^ BYTE1(v4) ^ 0x88;
  v127 = __ROR8__((v7 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v128 = ((v127 + 0x7695A575CC8A36DALL) | 0xAA5FF6E93AF35BDELL) - ((v127 + 0x7695A575CC8A36DALL) | 0x55A00916C50CA421) + 0x55A00916C50CA421;
  v129 = v128 ^ 0xA72E982469254409;
  v128 ^= 0x1383B38A0D74F2DAuLL;
  v130 = __ROR8__(v129, 8);
  v131 = (0xF9FD08A274825F37 - ((v130 + v128) | 0xF9FD08A274825F37) + ((v130 + v128) | 0x602F75D8B7DA0C8)) ^ 0x58ECB30E41487A72;
  v132 = v131 ^ __ROR8__(v128, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x96518B1852248A0DLL;
  v134 = __ROR8__(v133, 8);
  v135 = v133 ^ __ROR8__(v132, 61);
  v136 = (0xAC065C7B6199FED9 - ((v134 + v135) | 0xAC065C7B6199FED9) + ((v134 + v135) | 0x53F9A3849E660126)) ^ 0x94C75587D76A4524;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xC4318A842864C03;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x43600812E0A35073;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0xB581C077348D623CLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v7[17] = (((0x39F4CAC512D29AC7 - ((v144 + v143) | 0x39F4CAC512D29AC7) + ((v144 + v143) | 0xC60B353AED2D6538)) ^ 0x3635777B5DF88EC6) >> (8 * ((v7 + 17) & 7u))) ^ v4 ^ 0xC1;
  return v12();
}

uint64_t sub_10015B4E4()
{
  STACK[0xA70] = 0x51CE20ABD81C933BLL;
  v1 = STACK[0x5E0];
  STACK[0xAF8] = *(STACK[0x5E0] + 8 * (v0 - 3063));
  return (*(v1 + 8 * ((v0 + 5903) ^ (v0 - 3063) ^ 0x2E57)))();
}

uint64_t sub_10015B534()
{
  STACK[0xAE8] = 0x51CE20ABD81C933BLL;
  v1 = STACK[0x5E0];
  STACK[0xAF8] = *(STACK[0x5E0] + 8 * (v0 - 3075));
  return (*(v1 + 8 * ((((v0 - 2290) | 0x2001) - 6699) ^ (v0 - 3075))))();
}

uint64_t sub_10015B608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x8A4]) = a5;
  if (a5 == 68588956)
  {
    v10 = STACK[0x840];
    v11 = *(STACK[0x840] - 0x51CE20ABD81C9333);
    v12 = STACK[0x7C8];
    *(v12 - 0x51CE20ABD81C9333) = v11;
    *(v12 - 0x51CE20ABD81C933BLL) = *(v10 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * ((220 * (((v11 == 0x51CE20ABD81C933BLL) ^ (v8 - 61)) & 1)) ^ (v8 + 307))))();
  }

  else if (a5 == 68545953)
  {
    return (*(a8 + 8 * (((((-89 * (v8 ^ 0x1D)) ^ (*(STACK[0xAC8] - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL)) & 1) * ((v8 ^ 0xE1D) + 9)) ^ (v8 + 350))))();
  }

  else
  {
    return (*(a8 + 8 * ((((((v8 - 3564) ^ (*(STACK[0x7C8] - 0x51CE20ABD81C9323) == 0)) & 1) == 0) * (((v8 - 2340) | 0x1000) ^ 0x150D)) ^ (v8 + 4020))))();
  }
}

uint64_t sub_10015BAB0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 | 0x1A12;
  v4 = (*(a1 + 8 * ((a2 | 0x1A12) ^ 0x3371)))();
  v5 = STACK[0x5E0];
  *(v2 - 0x51CE20ABD81C9323) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10015BBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (v8 - 1597) | 0xCE1;
  v10 = *(a8 + 8 * (((*(STACK[0x658] - 0x510808E226CB14F7) == 73) * (v9 ^ 0x1127)) ^ v8));
  LODWORD(STACK[0xD20]) = v9;
  return v10();
}

uint64_t sub_10015BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 232) = (v9 + 86) ^ (1949688233 * ((((2 * (v10 - 232)) | 0xDF546830) - (v10 - 232) - 1873425432) ^ 0x88ED6293));
  v11 = (*(a8 + 8 * (v9 + 3129)))(v10 - 232);
  v12 = STACK[0x5E0];
  *(v8 - 0x510808E226CB148CLL) = (*(v10 - 224) ^ (((v9 - 7268) | 0x66) - 118758526)) + ((2 * *(v10 - 224)) & 0xAFB2DFB2 ^ 0xE201622) - 30412544;
  return (*(v12 + 8 * v9))(v11);
}

uint64_t sub_10015BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * ((4221 * (*(STACK[0x658] - 0x510808E226CB1494) == (((v8 ^ 0x77) - 92) ^ 0xC1))) ^ v8 ^ 0x677));
  LODWORD(STACK[0xD20]) = (v8 ^ 0x677) + 1700;
  return v9();
}

uint64_t sub_10015BF20@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 ^ 0x6A4;
  *(v2 - 0x510808E226CB1488) += a2 ^ 0x842;
  v4 = *(a1 + 8 * a2);
  LODWORD(STACK[0xD20]) = v3;
  return v4();
}

uint64_t sub_10015BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = STACK[0xD20];
  LODWORD(STACK[0xD24]) = STACK[0xD20];
  LODWORD(STACK[0xD28]) = (v9 + 720793199) & 0xD50997B9;
  LODWORD(STACK[0xD2C]) = v9 - 3107;
  LODWORD(STACK[0xDC4]) = v9;
  STACK[0xD30] = STACK[0x648];
  v10 = STACK[0xB20];
  v11 = &a9 + STACK[0xB20] - 0x41A96E98E465ED68;
  STACK[0x650] = v11;
  STACK[0xD38] = (v11 + 16);
  STACK[0x740] = (v11 + 16);
  STACK[0x610] = (v11 + 48);
  v10 += 80;
  STACK[0xD40] = v10;
  STACK[0xB20] = v10;
  STACK[0xD18] = v11;
  LOBYTE(STACK[0xD17]) = 0;
  STACK[0xD08] = 16;
  STACK[0xD00] = *(a8 + 8 * (v9 + 6744));
  return (*(a8 + 8 * (LODWORD(STACK[0xD24]) ^ 0x27A7)))();
}

uint64_t sub_10015C010()
{
  v0 = STACK[0xD18];
  v1 = LOBYTE(STACK[0xD17]);
  v2 = STACK[0xD08];
  v3 = -STACK[0xD18] & 7;
  if (v3 > STACK[0xD08])
  {
    LODWORD(v3) = STACK[0xD08];
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

        *v0++ = v1;
      }

      *v0++ = v1;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *v0++ = v1;
      goto LABEL_17;
    }

    *v0++ = v1;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *v0++ = v1;
      break;
    case 2:
LABEL_18:
      *v0++ = v1;
      goto LABEL_19;
    case 3:
LABEL_17:
      *v0++ = v1;
      goto LABEL_18;
  }

LABEL_20:
  v4 = v2 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * v1;
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
      *v0 = v5;
      v0 += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *v0 = v5;
      v0 += 8;
LABEL_33:
      *v0 = v5;
      v0 += 8;
LABEL_34:
      *v0 = v5;
      v0 += 8;
LABEL_35:
      *v0 = v5;
      v0 += 8;
LABEL_36:
      *v0 = v5;
      v0 += 8;
LABEL_37:
      *v0 = v5;
      v0 += 8;
LABEL_38:
      *v0 = v5;
      v0 += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *v0++ = v1;
      }

      *v0++ = v1;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *v0++ = v1;
LABEL_53:
    *v0++ = v1;
LABEL_54:
    *v0++ = v1;
LABEL_55:
    *v0++ = v1;
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

  if (!v8)
  {
    return (STACK[0xD00])();
  }

LABEL_56:
  *v0 = v1;
  return (STACK[0xD00])();
}

uint64_t sub_10015C19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0xD18] = STACK[0xD38];
  LOBYTE(STACK[0xD17]) = 0;
  STACK[0xD08] = 32;
  STACK[0xD00] = *(a8 + 8 * (v8 ^ 0x2751));
  return (*(a8 + 8 * (LODWORD(STACK[0xDC4]) + 6745)))();
}

uint64_t sub_10015C244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0xDA8];
  v9 = (*(a8 + 8 * (LODWORD(STACK[0xDA8]) ^ 0xBD2)))(128);
  v10 = STACK[0x5E0];
  STACK[0xB00] = v9 + 0x1138F6A92264F486;
  return (*(v10 + 8 * ((60 * ((((v8 + 1) ^ (v9 == 0)) & 1) == 0)) ^ v8)))();
}

uint64_t sub_10015C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0xA80] = 0x5A0411E37F4B9882;
  STACK[0x608] = 0;
  LODWORD(STACK[0x7BC]) = 1443455193;
  STACK[0x620] = 0;
  LODWORD(STACK[0x7FC]) = 476266654;
  v8 = STACK[0xD30];
  STACK[0x8D0] = STACK[0xD30];
  return (*(a8 + 8 * (((((v8 == 0x1138F6A92264F486) ^ (LODWORD(STACK[0xD2C]) + 1)) & 1) * (LODWORD(STACK[0xD28]) - 5375)) ^ LODWORD(STACK[0xD24]))))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10015C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x918] = 0;
  LODWORD(STACK[0x6FC]) = 476266654;
  return (*(a8 + 8 * (v8 ^ 0x11F3 ^ (v8 + 1716124833) & 0x99B60BFB)))();
}

uint64_t sub_10015C4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * v8);
  LODWORD(STACK[0x580]) = (v9 - 1842614921) & 0x6DD41ED5;
  LODWORD(STACK[0x5C0]) = v9 - 1843;
  LODWORD(STACK[0x5A0]) = (4 * v9) ^ 0x33EC;
  LODWORD(STACK[0x590]) = v9 ^ 0xE6D;
  LODWORD(STACK[0x5B0]) = v9 ^ 0x558;
  return v10(0);
}

uint64_t sub_10015C5D8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v8 = v5 - ((((v6 + 1369536365) & 0xAE5E8F7F ^ 0x8BAC58DA) + 2 * v5) & 0xB490BFB8) + 538872659;
  v9 = 1110906037 * ((v7 - 278345170 - 2 * ((v7 - 232) & 0xEF68CB16)) ^ 0x662FA7A6);
  *(v7 - 224) = v2;
  *(v7 - 192) = v4;
  *(v7 - 208) = a2;
  *(v7 - 200) = (v3 ^ 0x7F75FEDA) - v9 + ((2 * v3) & 0xB8483524) - 67387520;
  *(v7 - 216) = v9 + v6 + 3547;
  *(v7 - 212) = v9 + 1061841929;
  *(v7 - 232) = v8 ^ v9;
  v10 = (*(a1 + 8 * (v6 + 8812)))(v7 - 232);
  return (*(STACK[0x5E0] + 8 * v6))(v10, 0);
}

uint64_t sub_10015C90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, int a6@<W8>)
{
  STACK[0x5D0] = *(a5 + 8 * v6);
  STACK[0xB38] = 0;
  return (*(a5 + 8 * (((STACK[0xB38] > 0x1F) * ((a6 - 2960) ^ 0xDFB)) ^ a6)))(a1, a2, a5, a3, 1620732618, a4, 2957849957, 0x97B4515816E9F3A8);
}

uint64_t sub_10015CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = STACK[0x5D8] + 838;
  v9 = v7 == ((a7 + 12 * LODWORD(STACK[0x590]) + 1224) ^ LODWORD(STACK[0x5A0]));
  if (v7 == ((a7 + 12 * LODWORD(STACK[0x590]) + 1224) ^ LODWORD(STACK[0x5A0])))
  {
    v10 = 62;
  }

  else
  {
    v10 = 61;
  }

  LOBYTE(STACK[0x8E7]) = v10;
  return (*(a3 + 8 * ((243 * v9) ^ v8)))();
}

uint64_t sub_10015CC18(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = STACK[0x6A8];
  *v10 = a1;
  v10[1] = a1;
  return (*(a9 + 8 * ((v9 + 7112) ^ v9)))();
}

uint64_t sub_10015CDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v8 = (v6 - 3021) | 0x1410;
  v9 = v6 - 612;
  v11 = v7 != 0x61CEF89FDDA89DF2 && a6 != 0x1138F6A92264F486;
  return (*(a5 + 8 * ((v11 * (v8 ^ 0x110E)) ^ v9)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10015CE18@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(a2 - 0x1138F6A92264F476) = *(v3 - 0x61CEF89FDDA89DF2);
  *(a2 - 0x1138F6A92264F42ELL) = *(v3 - 0x61CEF89FDDA89DAALL);
  *(a2 - 0x1138F6A92264F42ALL) = *(v3 - 0x61CEF89FDDA89DA6);
  *(a2 - 0x1138F6A92264F426) = *(v3 - 0x61CEF89FDDA89DA2);
  *(a2 - 0x1138F6A92264F425) = *(v3 - 0x61CEF89FDDA89DA1);
  *(a2 - 0x1138F6A92264F40ELL) = *(v3 - 0x61CEF89FDDA89D8ALL);
  *(a2 - 0x1138F6A92264F422) = *(v3 - 0x61CEF89FDDA89D9ELL);
  *(a2 - 0x1138F6A92264F40ALL) = *(v3 - 0x61CEF89FDDA89D86) & 1 ^ 0x9D;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10015CFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v18 = (v11 - 1) & 0xF;
  *(a4 + v11) = v10 ^ *(a5 + v11) ^ (v18 * v13) ^ *(*(v8 + 8 * a6) + a7 + v18) ^ *(v18 + *(v8 + 8 * a8) + v12 + 2) ^ *(*(v8 + 8 * v14) + v15 + v18) ^ 7;
  return (*(v17 + 8 * (((v11 == -31) * v16) ^ v9)))();
}

uint64_t sub_10015D11C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + v3 + ((v2 - 851421116) & 0x32BF8FDF ^ 0xAF69FE0944BC5D01);
  v6 = v1 + 0x1138F6A92264F486;
  v7 = v6 - 104;
  v8 = *(&off_1002DD400 + (v2 ^ 0x2244)) + v6 - 1303507235;
  v12 = v5 > 0xF && *(&off_1002DD400 + v2 - 8428) + v7 - 1120176494 > 0xF && v8 > 0xF && *(&off_1002DD400 + (v2 ^ 0x214D)) + v7 - 1914183063 > 0xF;
  return (*(v4 + 8 * ((v12 * ((v2 ^ 0x28E4) - 2941)) | v2)))(a1 - 0x1138F6A92264F41ELL);
}

uint64_t sub_10015D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v8 = *(v7 - 0x61CEF89FDDA89DEELL);
  *(a6 - 0x1138F6A92264F472) = v8;
  return (*(a5 + 8 * (((v8 == 408423770) * (((v6 - 3004) | 0xE20) ^ 0x15B4)) ^ v6)))(a1, a2, a3, a4, 68588956);
}

uint64_t sub_10015D3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = STACK[0x5E0];
  *(a1 + v9 - 1189454755) = *(v8 + v9 - 1189454755) ^ *(a4 + v9 - 1189454755) ^ (-103 * (v9 + 93)) ^ *(a6 + v9 - 1189454755) ^ 0x1B ^ *(a2 + v9 - 1189457776 + ((v7 - 994742163) & 0x3B4A8FDD));
  return (*(v10 + 8 * ((109 * (v9 - 1 != v6)) ^ v7)))();
}

uint64_t sub_10015D6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x7D0] = *(a8 + 8 * v8);
  STACK[0x7C0] = v10;
  STACK[0x888] = 0;
  LODWORD(STACK[0xA4C]) = 47620140;
  LODWORD(STACK[0xAC4]) = 1443455193;
  return (*(a8 + 8 * (((v11 == 0x5A0411E37F4B9882) * (((2 * v9) ^ 0x1F18) + ((v9 + 409814363) & 0xE792BF76) - 6939)) ^ v9)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10015D834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 & 0xFFFFFFF0;
  LODWORD(STACK[0xAC4]) = v11 + 40535605 + ((v10 + 1486470243) & 0xA7662E37);
  v12 = (*(a8 + 8 * (v10 ^ 0xA18)))((v10 ^ 0x2CCF ^ (v9 + 2384)) + v11);
  v13 = STACK[0x5E0];
  STACK[0x888] = v12;
  STACK[0x2A0] = v12;
  return (*(v13 + 8 * ((91 * (v12 != 0)) ^ v10)))();
}

uint64_t sub_10015D974(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x290]) = v9;
  v11 = ((2 * (v9 + a1 + 4)) & 0x1651EDDC2) + ((v9 + a1 + 4) ^ 0xE537EF7FB28F6EE1) + STACK[0x2A0] + 0x1AC810804D70911FLL;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((2 * (v12 - 0x240F79117F1F970ELL)) | 0x736287C91C80989CLL) - (v12 - 0x240F79117F1F970ELL) + 0x464EBC1B71BFB3B2;
  v14 = v13 ^ 0x913640FA3774DDF4;
  v13 ^= 0x4EB2778E30779A62uLL;
  v15 = (__ROR8__(v14, 8) + v13) ^ 0xD87AD12BCA74F052;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x9FC19AABFBDF4258;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x901164E02F7DA9DELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((v21 + v20) | 0x5816AD7F37B168FDLL) - ((v21 + v20) | 0xA7E95280C84E9702) - 0x5816AD7F37B168FELL) ^ 0x72E208EFA3331793;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v10;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((v26 + v25) | 0x84BC2A3C87AA0F87) - ((v26 + v25) | 0x7B43D5C37855F078) + 0x7B43D5C37855F078) ^ 0x3893CE3C0132270ELL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  return (*(a8 + 8 * (v8 + 703)))((((((2 * (v29 + v28)) & 0xC210F49574D0C3A0) - (v29 + v28) - 0x61087A4ABA6861D1) ^ 0xE6D54618327B6B74) >> (8 * (v11 & 7u))) ^ 0x50, LODWORD(STACK[0xA4C]) - ((2 * LODWORD(STACK[0xA4C]) - 95240280) & 0xC76A17CA) + 1625189305);
}

uint64_t sub_10015DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = v14 + v13 - 0x6D14C2605E6645F6;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((2 * v20 - 0x481EF222FE3F2E1CLL) & 0xDCF292637B6AEEE2) - v20 - 0x4A69D0203E95E064;
  v22 = __ROR8__(v21 ^ 0xB901B5D0FB7E1934, 8);
  v21 ^= 0x668582A4FC7D5EA2uLL;
  v23 = (v22 + v21) ^ 0xD87AD12BCA74F052;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = *(a8 + 8 * v18);
  v26 = (__ROR8__(v23, 8) + v24) ^ v11;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a3;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xF3F7DBDA085E5D0ELL) - (v30 + v29) + 0x6041212FBD0D178) ^ 0x2CF0B7826F52AE16;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0xD1F1C0AC37998AEALL) + 0x68F8E0561BCCC575) ^ 0xFAC2E9C199AED09FLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0xE2BBCC865B64A0F6) - (v36 + v35) - 0x715DE6432DB2507BLL) ^ 0xCD720243AB2A78F2;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  *v19 = (((a5 - ((v39 + v38) | a5) + ((v39 + v38) | 0xBF5EB888E76D8BA5)) ^ 0xC77C7B2590817EFELL) >> (8 * (v19 & 7u))) ^ HIBYTE(v12) ^ 0x63;
  v40 = __ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((v40 - 0x240F79117F1F970ELL) | 0x13AB6A934168D1B5) - ((v40 - 0x240F79117F1F970ELL) | v9) + v9;
  v42 = v41 ^ 0x3B2C698DF85C400FLL;
  v41 ^= 0xE4A85EF9FF5F0799;
  v43 = __ROR8__(v42, 8);
  v44 = (v43 + v41 - ((2 * (v43 + v41)) & 0xEF27830E4C4E4466) - 0x86C3E78D9D8DDCDLL) ^ 0x2FE910ACEC53D261;
  v45 = v44 ^ __ROR8__(v41, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0x3B02E78768F7F00CLL) - (v46 + v45) - 0x1D8173C3B47BF806) ^ 0x8240E9684FA4BA5ELL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0xB74DE82257E8BFA4) + 0x5BA6F4112BF45FD2) ^ 0xCBB790F10489F60CLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x2AF4A59094827F6ELL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x923A0997826215EALL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) & 0xF7F04EF2B6E348C6) - (v56 + v55) - 0x7BF827795B71A464) ^ 0x38283C8622167315;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  *(v19 + 1) = (((a6 - ((v59 + v58) | a6) + ((v59 + v58) | 0xFA3DD0C0E2973B74)) ^ 0x821F136D957BCE2FLL) >> (8 * ((v19 + 1) & 7))) ^ BYTE2(v12) ^ 0xB5;
  v60 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = -2 - (((v16 - v60) | 0xD3AF7ADB7EE08812) + ((v60 - 0x240F79117F1F970ELL) | 0x2C508524811F77EDLL));
  v62 = __ROR8__(v61 ^ 0xFB2879C5C7D419A8, 8);
  v61 ^= 0x24AC4EB1C0D75E3EuLL;
  v63 = (((2 * (v62 + v61)) & 0x748754D312A22E04) - (v62 + v61) - 0x3A43AA6989511703) ^ 0x1DC684BDBCDA18AFLL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v11;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v10 - ((v67 + v66) | v10) + ((v67 + v66) | 0x39C3805A5760F9F2)) ^ 0xA9D2E4BA781D502CLL;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = __ROR8__((((2 * (v70 + v69)) | 0xA79BDD206F226E2CLL) - (v70 + v69) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878, 8);
  v72 = (((2 * (v70 + v69)) | 0xA79BDD206F226E2CLL) - (v70 + v69) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878 ^ __ROR8__(v69, 61);
  v73 = (v71 + v72) ^ 0x923A0997826215EALL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v15;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  LOBYTE(v38) = (((((2 * (v77 + v76)) & 0x5C715BFC7CAE6902) - (v77 + v76) + 0x51C75201C1A8CB7ELL) ^ 0x29E591ACB6443E25) >> (8 * ((v19 + 2) & 7))) ^ BYTE1(v12) ^ 0xB;
  v78 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v19 + 2) = v38;
  v79 = ((2 * v78 + 0x37E10DDD01C0D1E4) & 0x78FE4AD8FA3B9EA8) - v78 + 0x679053A50201C7B9;
  v80 = v79 ^ 0x6B07D98D3BD6A111;
  v79 ^= 0xB483EEF93CD5E687;
  v81 = (__ROR8__(v80, 8) + v79) ^ 0xD87AD12BCA74F052;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ v11;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ a3;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0xE0B9FE80D0CE9B80) - (v87 + v86) + 0xFA300BF9798B240) ^ 0xDAA85AD0FCE532AELL;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((v90 + v89) ^ 0xF182E7DD6525616ELL) - ((2 * ((v90 + v89) ^ 0xF182E7DD6525616ELL)) & 0xB32EBAB8706D558ALL) + 0x59975D5C3836AAC5) ^ 0x3A2FB316DF71DE41;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (a4 - ((v93 + v92) | a4) + ((v93 + v92) | 0xB44CF38193047BF6)) ^ 0x8631781159C537FLL;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  *(v19 + 3) = v12 ^ v8 ^ (((((2 * (v96 + v95)) | 0x6A77489B32493A54) - (v96 + v95) - 0x353BA44D99249D2ALL) ^ v17) >> (8 * ((v19 + 3) & 7)));
  return v25();
}

uint64_t sub_10015E5C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v10 = STACK[0x5D8];
  *a7 = a1;
  *v8 = v9;
  return (*(a8 + 8 * (v10 + 703)))();
}

uint64_t sub_10015E668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (((v10 - 6555) | 0x19C) ^ 0x85BCED5E) + v8;
  v12 = 1335211988 - *(v9 - 0x51CE20ABD81C932BLL);
  v13 = v11 < 0xD95BAD0C;
  v14 = v11 > v12;
  v15 = (v12 < 0xD95BAD0C) ^ v13;
  v16 = v14;
  if (v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  return (*(a8 + 8 * ((1007 * v17) ^ v10)))();
}

uint64_t sub_10015E6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (STACK[0x5D8] + 1801170471) & 0x94A463FF;
  v9 = STACK[0x5D8] + 5301;
  STACK[0x5D0] = STACK[0x888];
  v10 = LODWORD(STACK[0xA4C]) - (((v8 ^ 0xFA529FF3) + 2 * LODWORD(STACK[0xA4C])) & 0x81088338) - 1112694416;
  v11 = ((2 * v10) & 0xF9BFCFB6 ^ 0x81088330) + (v10 ^ 0x3C5BA647) + 939220286;
  LODWORD(STACK[0x380]) = v11;
  return (*(a8 + 8 * (v9 ^ (2 * (v11 != 886785305)))))();
}

uint64_t sub_10015E96C@<X0>(unsigned int a1@<W1>, uint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0x370]) = 0;
  v3 = (a3 - 188073202) & 0xB35B7CD;
  LODWORD(STACK[0x590]) = v3;
  v4 = *(a2 + 8 * (a3 | (8 * (((a1 < (v3 ^ 0x17DDu)) ^ (a3 + 48)) & 1))));
  LODWORD(STACK[0x360]) = a1;
  return v4();
}

uint64_t sub_10015E9C0@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  STACK[0x550] = *(a7 + 8 * (((a8 - 8401) | 0xA14) + 2737));
  *&STACK[0x500] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x4F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x5B0] = vdupq_n_s64(a4);
  LODWORD(STACK[0x370]) = a2 & 0xFFFFFFF0;
  LODWORD(STACK[0x350]) = a1;
  LODWORD(STACK[0x330]) = v11;
  *&STACK[0x5A0] = vdupq_n_s64(a3);
  *&STACK[0x4E0] = vdupq_n_s64(a5);
  v21 = v11 + a1 + 52434973;
  *&STACK[0x4D0] = vdupq_n_s64(a6);
  *&STACK[0x4C0] = vdupq_n_s64(v12);
  LODWORD(STACK[0x4B0]) = v21 - 6;
  *&STACK[0x4A0] = vdupq_n_s64(0xD87AD12BCA74F052);
  *&STACK[0x490] = vdupq_n_s64(v17);
  LODWORD(STACK[0x480]) = v21 - 5;
  LODWORD(STACK[0x470]) = v21 - 4;
  *&STACK[0x590] = vdupq_n_s64(v18);
  *&STACK[0x580] = vdupq_n_s64(v13);
  *&STACK[0x430] = vdupq_n_s64(v16);
  *&STACK[0x420] = vdupq_n_s64(0x30472441B150E611uLL);
  *&STACK[0x570] = vdupq_n_s64(v10);
  *&STACK[0x560] = vdupq_n_s64(0x2AF4A59094827F6EuLL);
  *&STACK[0x410] = vdupq_n_s64(0x923A0997826215EALL);
  *&STACK[0x3F0] = vdupq_n_s64(v20);
  *&STACK[0x400] = vdupq_n_s64(v9);
  *&STACK[0x3D0] = vdupq_n_s64(v19);
  *&STACK[0x3E0] = vdupq_n_s64(v8);
  *&STACK[0x3B0] = vdupq_n_s64(v15);
  *&STACK[0x3C0] = vdupq_n_s64(v14);
  *&STACK[0x390] = xmmword_1002A9AB0;
  return (STACK[0x550])();
}

uint64_t sub_10015EBA8(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v34 = v10 + v11 + v12;
  v35.i64[0] = v34 + (v21 + v9 + 16);
  v35.i64[1] = v34 + (v22 + v9 + 16);
  v36.i64[0] = v34 + (LODWORD(STACK[0x480]) + v9 + 16);
  v36.i64[1] = v34 + (LODWORD(STACK[0x4B0]) + v9 + 16);
  v37.i64[0] = v34 + (a7 + v9 + 16);
  v37.i64[1] = v34 + (LODWORD(STACK[0x470]) + v9 + 16);
  v38.i64[0] = v34 + (v13 + v9 + 16);
  *&v39 = v34 + (v14 + v9 + 16);
  v38.i64[1] = v34 + (a5 + v9 + 16);
  *&STACK[0x530] = v38;
  *(&v39 + 1) = v34 + (a1 + v9 + 16);
  *&STACK[0x550] = v39;
  *&v39 = v34 + (v18 + v9 + 16);
  *(&v39 + 1) = v34 + (v17 + v9 + 16);
  *&STACK[0x540] = v39;
  v40 = *&STACK[0x500];
  v41 = vandq_s8(v38, *&STACK[0x500]);
  v42 = vandq_s8(v37, *&STACK[0x500]);
  v43 = vandq_s8(v36, *&STACK[0x500]);
  v44 = vandq_s8(v35, *&STACK[0x500]);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), *&STACK[0x5B0]);
  v49 = vaddq_s64(v47, *&STACK[0x5B0]);
  v50 = vaddq_s64(v46, *&STACK[0x5B0]);
  v51 = vaddq_s64(v45, *&STACK[0x5B0]);
  v52 = vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), *&STACK[0x5A0]), v49);
  v53 = vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), *&STACK[0x5A0]), v48);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), *&STACK[0x5A0]), v50), v24);
  v55 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v51, v51), *&STACK[0x5A0]), v51), v24);
  v56 = *&STACK[0x4D0];
  v57 = veorq_s8(v55, *&STACK[0x4D0]);
  v58 = veorq_s8(v54, *&STACK[0x4D0]);
  v59 = veorq_s8(v54, *&STACK[0x4C0]);
  v60 = veorq_s8(v55, *&STACK[0x4C0]);
  v61 = *&STACK[0x4C0];
  v62 = *&STACK[0x4A0];
  v63 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v59), *&STACK[0x4A0]);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60), *&STACK[0x4A0]);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = *&STACK[0x490];
  v71 = *&STACK[0x590];
  v72 = veorq_s8(vaddq_s64(vsubq_s64(v69, vandq_s8(vaddq_s64(v69, v69), *&STACK[0x490])), *&STACK[0x590]), v26);
  v73 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), *&STACK[0x490])), *&STACK[0x590]), v26);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v76 = veorq_s8(v72, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = *&STACK[0x430];
  v81 = *&STACK[0x420];
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), *&STACK[0x430]), v79), *&STACK[0x420]), v33);
  v83 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), *&STACK[0x430]), v78), *&STACK[0x420]), v33);
  v86 = veorq_s8(v85, v84);
  v87 = veorq_s8(v82, v83);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v87);
  v90 = *&STACK[0x560];
  v91 = veorq_s8(vaddq_s64(v88, v86), *&STACK[0x560]);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v93 = veorq_s8(v89, *&STACK[0x560]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v95 = veorq_s8(v91, v92);
  v96 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95);
  v98 = *&STACK[0x410];
  v99 = veorq_s8(vaddq_s64(v96, v94), *&STACK[0x410]);
  v100 = veorq_s8(v97, *&STACK[0x410]);
  v101 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v103 = veorq_s8(v99, v101);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v103);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v102);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v28)), v29), v30);
  v107 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v28)), v29), v30);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v110 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v111.i64[0] = v34 + (a4 + v9 + 16);
  v111.i64[1] = v34 + (v19 + v9 + 16);
  *&STACK[0x510] = v111;
  v112 = vaddq_s64(v52, v24);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), veorq_s8(v106, v107));
  v114 = vaddq_s64(v110, v109);
  v226.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v25)));
  v226.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v25)));
  v115 = veorq_s8(v112, v56);
  v116 = v61;
  v117 = veorq_s8(v112, v61);
  v118 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v117), v62);
  v120 = veorq_s8(v119, v118);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = v71;
  v123 = veorq_s8(vaddq_s64(vsubq_s64(v121, vandq_s8(vaddq_s64(v121, v121), v70)), v71), v26);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v80), v125), v81), v33);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v90);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v98);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(v132, vandq_s8(vaddq_s64(v132, v132), v28)), v29), v30);
  v71.i64[0] = v34 + v8 + v9 + (((v15 + 1036) | 0x519) ^ v16) + 16;
  v71.i64[1] = v34 + (a6 + v9 + 16);
  *&STACK[0x520] = v71;
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL)));
  v135 = vandq_s8(v71, v40);
  v136 = vaddq_s64(v53, v24);
  v226.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(v134, v134), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v25)));
  v137 = veorq_s8(v136, v56);
  v138 = v56;
  v139 = veorq_s8(v136, v116);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v139), v62);
  v141 = v62;
  v142 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(v143, vandq_s8(vaddq_s64(v143, v143), v70)), v122), v26);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v80), v146), v81), v33);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v90);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v98);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(v153, vandq_s8(vaddq_s64(v153, v153), v28)), v29), v30);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = vandq_s8(v111, v40);
  v158 = vaddq_s64(v156, v155);
  v159 = *&STACK[0x540];
  v160 = vandq_s8(*&STACK[0x540], v40);
  v226.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v158, vandq_s8(vaddq_s64(v158, v158), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x530], 3uLL), v25)));
  v161 = *&STACK[0x550];
  v162 = vandq_s8(*&STACK[0x550], v40);
  v163 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), *&STACK[0x5B0]);
  v167 = vaddq_s64(v165, *&STACK[0x5B0]);
  v168 = vaddq_s64(v164, *&STACK[0x5B0]);
  v169 = vaddq_s64(v163, *&STACK[0x5B0]);
  v170 = vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), *&STACK[0x5A0]), v167);
  v171 = vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), *&STACK[0x5A0]), v166);
  v172 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), *&STACK[0x5A0]), v168), v24);
  v173 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), *&STACK[0x5A0]), v169), v24);
  v174 = *&STACK[0x390];
  *&STACK[0x530] = vqtbl4q_s8(v226, *&STACK[0x390]);
  v226.val[0] = veorq_s8(v173, v138);
  v226.val[1] = veorq_s8(v172, v138);
  v226.val[2] = veorq_s8(v172, v116);
  v226.val[3] = veorq_s8(v173, v116);
  v226.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[2]), v141);
  v226.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL), v226.val[3]), v141);
  v175 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v175);
  v176 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = vaddq_s64(v176, v226.val[2]);
  v226.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v226.val[1], vandq_s8(vaddq_s64(v226.val[1], v226.val[1]), v70)), *&STACK[0x590]), *&STACK[0x580]);
  v226.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v226.val[0], vandq_s8(vaddq_s64(v226.val[0], v226.val[0]), v70)), *&STACK[0x590]), *&STACK[0x580]);
  v177 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v177);
  v178 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = vaddq_s64(v178, v226.val[2]);
  v226.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v226.val[1], v226.val[1]), v80), v226.val[1]), v81), *&STACK[0x570]);
  v179 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v226.val[0], v226.val[0]), v80), v226.val[0]), v81), *&STACK[0x570]);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v179);
  v180 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = veorq_s8(vaddq_s64(v180, v226.val[2]), *&STACK[0x560]);
  v226.val[0] = veorq_s8(v226.val[0], *&STACK[0x560]);
  v181 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v181);
  v182 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = veorq_s8(vaddq_s64(v182, v226.val[2]), v98);
  v226.val[0] = veorq_s8(v226.val[0], v98);
  v183 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v183);
  v184 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = vaddq_s64(v184, v226.val[2]);
  v226.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v226.val[1], vandq_s8(vaddq_s64(v226.val[1], v226.val[1]), v28)), v29), v30);
  v226.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v226.val[0], vandq_s8(vaddq_s64(v226.val[0], v226.val[0]), v28)), v29), v30);
  v185 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v185);
  v186 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v187 = vaddq_s64(v170, v24);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = vaddq_s64(v186, v226.val[2]);
  v226.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v226.val[0], vandq_s8(vaddq_s64(v226.val[0], v226.val[0]), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v161, 3uLL), v25)));
  v226.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v226.val[1], vandq_s8(vaddq_s64(v226.val[1], v226.val[1]), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v159, 3uLL), v25)));
  v188 = veorq_s8(v187, v138);
  v189 = veorq_s8(v187, v116);
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), v141);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(v192, vandq_s8(vaddq_s64(v192, v192), v70)), *&STACK[0x590]), *&STACK[0x580]);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), v80), v195), v81), *&STACK[0x570]);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), *&STACK[0x560]);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v98);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(v202, vandq_s8(vaddq_s64(v202, v202), v28)), v29), v30);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL)));
  v205 = vaddq_s64(v171, v24);
  v226.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v204, vandq_s8(vaddq_s64(v204, v204), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x510], 3uLL), v25)));
  v206 = veorq_s8(v205, v138);
  v207 = veorq_s8(v205, v116);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), v141);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(v210, vandq_s8(vaddq_s64(v210, v210), v70)), *&STACK[0x590]), *&STACK[0x580]);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v213, v213), v80), v213), v81), *&STACK[0x570]);
  v215 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v217 = veorq_s8(v214, v215);
  v218 = veorq_s8(vaddq_s64(v216, v217), *&STACK[0x560]);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v98);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(v222, vandq_s8(vaddq_s64(v222, v222), v28)), v29), v30);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL)));
  v226.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v224, vandq_s8(vaddq_s64(v224, v224), v31)), v32), v27), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x520], 3uLL), v25)));
  v226.val[0].i64[0] = vqtbl4q_s8(v226, v174).u64[0];
  v226.val[0].i64[1] = STACK[0x530];
  v226.val[0] = vrev64q_s8(v226.val[0]);
  *(v34 + v8 + v9 + (((v15 + 1036) | 0x519) ^ v16) + 16 - 15) = vextq_s8(v226.val[0], v226.val[0], 8uLL);
  return (*(a8 + 8 * ((23 * (v23 == v9)) ^ v20)))();
}

uint64_t sub_10015F8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x590];
  v9 = *(a8 + 8 * SLODWORD(STACK[0x590]));
  *&STACK[0x5B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x5A0] = xmmword_1002A9AA0;
  LODWORD(STACK[0x580]) = v8 - 4602;
  return v9(0);
}

uint64_t sub_10015FA2C(int a1, double a2, int8x16_t a3, int64x2_t a4, int8x16_t a5, int64x2_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, int a16)
{
  v38 = v16 + v17 + v18;
  v39.i64[0] = v38 + (a13 + a1);
  v39.i64[1] = v38 + (a12 + a1);
  v40.i64[0] = v38 + (a16 + a1);
  v40.i64[1] = v38 + (a15 + a1);
  v41.i64[0] = v38 + (v21 + a1);
  v41.i64[1] = v38 + (v20 + a1);
  v42.i64[0] = v38 + (v22 + a1);
  v42.i64[1] = v38 + (a14 + a1);
  v43 = vandq_s8(v42, *&STACK[0x5B0]);
  v44 = vandq_s8(v41, *&STACK[0x5B0]);
  v45 = vandq_s8(v40, *&STACK[0x5B0]);
  v46 = vandq_s8(v39, *&STACK[0x5B0]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a4);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a4);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a4);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), a4);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), a5), v49), a6);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), a5), v50), a6);
  v53 = veorq_s8(v52, a7);
  v54 = veorq_s8(v51, a7);
  v55 = veorq_s8(v51, a8);
  v56 = veorq_s8(v52, a8);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55), a9);
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56), a9);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v61 = veorq_s8(v57, v58);
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), v24)), v25), v26);
  v66 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), v24)), v25), v26);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(v65, v66);
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v27), v72), v28), v29);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v27), v71), v28), v29);
  v75 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v30);
  v81 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v82 = veorq_s8(v79, v30);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v81);
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v31);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v89 = veorq_s8(v86, v31);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v88);
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(v94, v94), v32)), v33), v34);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v93, vandq_s8(vaddq_s64(v93, v93), v32)), v33), v34);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v99 = veorq_s8(v95, v96);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), a5), v48), a6);
  v103 = vaddq_s64(v101, v99);
  v104 = vaddq_s64(v100, v98);
  v141.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v35)), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a3)));
  v141.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v35)), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a3)));
  v105 = veorq_s8(v102, a7);
  v106 = veorq_s8(v102, a8);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a9);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), v24)), v25), v26);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v27), v112), v28), v29);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v30);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v31);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(v119, vandq_s8(vaddq_s64(v119, v119), v32)), v33), v34);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL)));
  v122 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), a5), v47), a6);
  v141.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v121, vandq_s8(vaddq_s64(v121, v121), v35)), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a3)));
  v123 = veorq_s8(v122, a7);
  v124 = veorq_s8(v122, a8);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), a9);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(v127, v127), v24)), v25), v26);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v27), v130), v28), v29);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v30);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v31);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v32)), v33), v34);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL)));
  v141.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), v35)), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a3)));
  *(v42.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v141, *&STACK[0x5A0]));
  return (*(v23 + 8 * (((a11 == a1) | (2 * (a11 == a1))) ^ v19)))((a1 - 8));
}

uint64_t sub_1001600FC@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v24 = STACK[0x5C0] - 0x389F99CF0FF63B65 + a7 + (v7 + v10 + 3367) + STACK[0x5D0] - 2455;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (a2 | (2 * (v25 + a3))) - (v25 + a3) + a4;
  v27 = v26 ^ a5;
  v28 = v26 ^ v14;
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xD87AD12BCA74F052;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - (v19 & (2 * (v31 + v30))) + v20) ^ v15;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((v18 & (2 * (v34 + v33))) - (v34 + v33) + v22) ^ v13;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x2AF4A59094827F6ELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x923A0997826215EALL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - (v12 & (2 * (v41 + v40))) + v23) ^ v11;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  *v24 = ((v44 + v43 - (v21 & (2 * (v44 + v43))) + v16) ^ v17) >> (8 * ((LOBYTE(STACK[0x5C0]) - 101 + a7 + v7 + v10 + 39 + LOBYTE(STACK[0x5D0]) + 105) & 7));
  return (*(a6 + 8 * (((v10 - 1 == a1) * v9) ^ v8)))();
}

uint64_t sub_100160248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55)
{
  *STACK[0x7C0] = STACK[0x5D0];
  *a55 = STACK[0xAC4];
  return (*(a5 + 8 * a6))(a1, a2, a3, a4, 68588956);
}

uint64_t sub_1001604D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  STACK[0x5D0] = *(v49 - 0x51CE20ABD81C9323);
  LODWORD(STACK[0x290]) = v52;
  return (*(a8 + 8 * (((((v48 - 1430) | 0xE00) ^ 0xDF6) * ((v51 + v50 + 62324933) < 8)) ^ v48)))((v51 + v50 + 62324933), 0xF837371F58F9BF6CLL, 0x1BF086EE80E068F2, (((v52 + a1) << (v48 + 55)) & 0x1DF9EFFDELL) + ((v52 + a1) ^ 0x76DBC87FEFCF7FEFLL) - 0x76DBC87FEFCF7FEFLL, 0xF8BBAAE4CC3892D5, STACK[0x2A0], a7, a6, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1001606F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(a49) = a8;
  v64 = *(STACK[0x5E0] + 8 * (v62 + 3419));
  LODWORD(a48) = a1 & 0xFFFFFFF0;
  LODWORD(STACK[0x280]) = -(a1 & 0xFFFFFFF0);
  v65 = a51 + 62324925 + a55;
  LODWORD(STACK[0x270]) = v65 - 8;
  LODWORD(STACK[0x260]) = v65 - 7;
  LODWORD(STACK[0x250]) = v65 - 6;
  LODWORD(STACK[0x240]) = v65 - 5;
  LODWORD(STACK[0x230]) = v65 - 4;
  LODWORD(STACK[0x220]) = v65 - 3;
  LODWORD(STACK[0x210]) = v65 - 2;
  LODWORD(STACK[0x200]) = v65 - 1;
  LODWORD(a47) = v62;
  LODWORD(a61) = v65 + 6;
  LODWORD(a59) = v65 + 7;
  return v64(a1, a2, STACK[0x5D0], a4, a5, a6, a7, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1001607D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, int a61, uint64_t a62, int a63)
{
  v79 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v80 = (a66 + v77 + 16);
  v81 = (a67 + v77 + 16);
  v82 = (a68 + v77 + 16);
  v83 = (v70 + v77 + 16);
  v84.i64[0] = a3 + v80;
  v84.i64[1] = a3 + v81;
  v85.i64[0] = a3 + v82;
  v85.i64[1] = a3 + v83;
  v86.i64[0] = a6 + v80 + a4;
  v86.i64[1] = a6 + v81 + a4;
  v87.i64[0] = a6 + v82 + a4;
  v87.i64[1] = a6 + v83 + a4;
  v88 = vandq_s8(v85, v79);
  v89 = vandq_s8(v84, v79);
  v90 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vdupq_n_s64(0x695A575CC8A36DAuLL);
  *&STACK[0x380] = v92;
  v93 = vdupq_n_s64(v73);
  *&STACK[0x470] = v93;
  v94 = vdupq_n_s64(a5);
  v95 = vbslq_s8(v94, vsubq_s64(v93, v90), vaddq_s64(v90, v92));
  v96 = vbslq_s8(v94, vsubq_s64(v93, v91), vaddq_s64(v91, v92));
  v97 = vdupq_n_s64(0xF5CAC4299FEE8D02);
  v98 = vdupq_n_s64(v69);
  v99 = veorq_s8(v96, v97);
  v100 = veorq_s8(v95, v97);
  v101 = veorq_s8(v95, v98);
  v102 = veorq_s8(v96, v98);
  v103 = v98;
  v104 = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v104);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v102), v104);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v108 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v108);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v111 = vdupq_n_s64(v74);
  *&STACK[0x4F0] = v111;
  v112 = vdupq_n_s64(0x60097FFDA286AF76uLL);
  v113 = vdupq_n_s64(0x9A70B1A0F5DDA84uLL);
  *&STACK[0x430] = v113;
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v111), vorrq_s8(v109, v112)), v112), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, v111), vorrq_s8(v110, v112)), v112), v113);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v117 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v118 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v117);
  v120 = vaddq_s64(v118, v116);
  v121 = vdupq_n_s64(0xC73EF603490C4402);
  v122 = veorq_s8(v120, v121);
  v123 = v121;
  *&STACK[0x4E0] = v121;
  v124 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v125 = veorq_s8(v119, v123);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v127 = veorq_s8(v122, v124);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v127);
  v130 = vdupq_n_s64(v68);
  v131 = veorq_s8(vaddq_s64(v128, v126), v130);
  v132 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v134 = veorq_s8(v129, v130);
  v135 = veorq_s8(v134, v133);
  v136 = veorq_s8(v131, v132);
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v136);
  v139 = vaddq_s64(v137, v135);
  v140 = vdupq_n_s64(a2);
  *&STACK[0x4D0] = v140;
  v141 = vdupq_n_s64(0x83E464705383204ALL);
  v142 = vdupq_n_s64(0x3F7B939D4CDF8FC5uLL);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), v140), v139), v141), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v138, v138), v140), v138), v141), v142);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v146 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v146);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v149 = vdupq_n_s64(0x3D50F30F384595A6uLL);
  v150 = vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v149), v148);
  v151 = vdupq_n_s64(0xE157867863DD352CLL);
  v152 = vdupq_n_s64(v75);
  v153 = vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v149), v147);
  v154 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v156 = vandq_s8(v87, v79);
  v157 = vaddq_s64(v153, v151);
  v158 = v151;
  *&STACK[0x520] = v151;
  v159 = vandq_s8(v86, v79);
  v160 = v79;
  v161 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v163 = veorq_s8(v157, v152);
  v164 = v152;
  *&STACK[0x510] = v152;
  v165 = vdupq_n_s64(v72);
  v166 = vdupq_n_s64(a8);
  *&STACK[0x410] = v166;
  v167 = veorq_s8(v163, v155);
  v168 = vdupq_n_s64(0xED72F297E808ACF8);
  v169 = vbslq_s8(v168, vsubq_s64(v166, v161), vaddq_s64(v161, v165));
  v170 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v171 = vbslq_s8(v168, vsubq_s64(v166, v162), vaddq_s64(v162, v165));
  *&STACK[0x2B0] = v168;
  v172 = vdupq_n_s64(0xC5F5F189513C3D42);
  v173 = veorq_s8(v169, v172);
  v174 = v172;
  *&STACK[0x5B0] = v172;
  v175 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v176 = veorq_s8(v171, v174);
  v177 = vdupq_n_s64(0x1A71C6FD563F7AD4uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v179 = veorq_s8(v169, v177);
  *&STACK[0x540] = v177;
  v180 = vaddq_s64(v175, v179);
  v181 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v182 = veorq_s8(v171, v177);
  v183 = vaddq_s64(v178, v182);
  v184 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v185 = vdupq_n_s64(v78);
  v186 = veorq_s8(v183, v185);
  v187 = v185;
  *&STACK[0x420] = v185;
  v188 = veorq_s8(v186, v184);
  v189 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v190 = veorq_s8(v180, v187);
  v191 = veorq_s8(v190, v181);
  v192 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v193 = vaddq_s64(v189, v188);
  v194 = vdupq_n_s64(0x6604FF7B30B3B3E2uLL);
  v195 = vaddq_s64(v192, v191);
  *&STACK[0x390] = v194;
  v196 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v197 = veorq_s8(vaddq_s64(v150, v158), v164);
  v198 = veorq_s8(v197, v154);
  v199 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v201 = vdupq_n_s64(0xACC3E51663869BA9);
  v202 = vdupq_n_s64(0xCCFD804267A6260FLL);
  *&STACK[0x4C0] = v202;
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v195, v195), v194), v195), v202), v201);
  *&STACK[0x4B0] = v201;
  v204 = veorq_s8(v203, v200);
  v205 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v206 = vaddq_s64(v199, v198);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193, v193), v194), v193), v202), v201);
  v208 = veorq_s8(v207, v196);
  v209 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v210 = vaddq_s64(v205, v204);
  v211 = vdupq_n_s64(0x26C3D91CAAAAC0CCuLL);
  *&STACK[0x4A0] = v211;
  v212 = vsubq_s64(vandq_s8(vaddq_s64(v210, v210), v211), v210);
  v213 = vaddq_s64(v209, v208);
  v214 = vsubq_s64(vandq_s8(vaddq_s64(v213, v213), v211), v213);
  v215 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  v217 = vdupq_n_s64(0x6C9E1371AAAA9F99uLL);
  v218 = vaddq_s64(v214, v217);
  *&STACK[0x500] = v217;
  v219 = vdupq_n_s64(0xFC8F779185D73647);
  v220 = veorq_s8(v218, v219);
  v221 = v219;
  *&STACK[0x590] = v219;
  v222 = veorq_s8(v220, v216);
  v223 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v224 = veorq_s8(vaddq_s64(v212, v217), v221);
  v225 = veorq_s8(v224, v215);
  v226 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v227 = vaddq_s64(v223, v222);
  v228 = vdupq_n_s64(0x8429C13B901A7D44);
  *&STACK[0x580] = v228;
  v229 = vsubq_s64(v227, vandq_s8(vaddq_s64(v227, v227), v228));
  v230 = vaddq_s64(v226, v225);
  v231 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v232 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v233 = vaddq_s64(v170, v167);
  v234 = vdupq_n_s64(0xC214E09DC80D3EA2);
  v235 = vaddq_s64(vsubq_s64(v230, vandq_s8(vaddq_s64(v230, v230), v228)), v234);
  v236 = v234;
  *&STACK[0x5C0] = v234;
  v237 = vdupq_n_s64(0xE8E0450D5C8F41CCLL);
  v238 = veorq_s8(v235, v237);
  v239 = v237;
  *&STACK[0x570] = v237;
  v240 = veorq_s8(v238, v232);
  v241 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v242 = veorq_s8(vaddq_s64(v229, v236), v239);
  v243 = veorq_s8(v242, v231);
  v244 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v245 = vaddq_s64(v241, v240);
  v246 = vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL);
  v247 = vaddq_s64(v244, v243);
  v248 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v249 = vdupq_n_s64(v76);
  v250 = veorq_s8(v247, v249);
  v251 = v249;
  *&STACK[0x560] = v249;
  v252 = veorq_s8(v250, v248);
  v253 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v254 = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  *&STACK[0x490] = v254;
  v255 = vdupq_n_s64(0x38uLL);
  v256 = vshlq_u64(veorq_s8(v206, v254), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v255)));
  v257 = veorq_s8(v245, v251);
  v258 = veorq_s8(v257, v246);
  v259 = vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL);
  v260 = vaddq_s64(v253, v252);
  v261 = vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL);
  v262 = vshlq_u64(veorq_s8(v233, v254), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v255)));
  v263 = vaddq_s64(v259, v258);
  v264 = vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL);
  v265 = vdupq_n_s64(a7);
  v266 = veorq_s8(v263, v265);
  *&STACK[0x550] = v265;
  v267 = veorq_s8(v260, v265);
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), veorq_s8(v267, v261));
  v269 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), veorq_s8(v266, v264));
  v270 = vdupq_n_s64(0xE4A245799371E26BLL);
  *&STACK[0x530] = v270;
  v271 = vdupq_n_s64(0x1B5DBA866C8E1D94uLL);
  v272 = vdupq_n_s64(0x9C8086D4E49D1730);
  *&STACK[0x5A0] = v272;
  *&STACK[0x480] = v255;
  v638.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v268, v270), vorrq_s8(v268, v271)), v271), v272), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v255))), v262);
  v638.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v269, v270), vorrq_s8(v269, v271)), v271), v272), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v255))), v256);
  v273 = (a63 + v77 + 16);
  v274 = (a65 + v77 + 16);
  v256.i64[0] = a3 + v273;
  v256.i64[1] = a3 + v274;
  v275 = vandq_s8(v256, v160);
  v276 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v277 = *&STACK[0x380];
  v278 = *&STACK[0x470];
  v279 = vbslq_s8(v94, vsubq_s64(*&STACK[0x470], v276), vaddq_s64(v276, *&STACK[0x380]));
  v280 = veorq_s8(v279, v97);
  *&STACK[0x3B0] = v103;
  *&STACK[0x3C0] = v112;
  v281 = veorq_s8(v279, v103);
  v282 = vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL);
  v283 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v281), v104);
  v284 = veorq_s8(v283, v282);
  v285 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), v284);
  v286 = *&STACK[0x4F0];
  v287 = *&STACK[0x430];
  v288 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v285, *&STACK[0x4F0]), vorrq_s8(v285, v112)), v112), *&STACK[0x430]);
  v289 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL));
  v290 = *&STACK[0x4E0];
  v291 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v289), *&STACK[0x4E0]);
  v292 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL));
  *&STACK[0x3D0] = v130;
  *&STACK[0x3E0] = v142;
  v293 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292), v130);
  v294 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v295 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), v294);
  v296 = *&STACK[0x4D0];
  v297 = vsubq_s64(vorrq_s8(vaddq_s64(v295, v295), *&STACK[0x4D0]), v295);
  v298 = v141;
  *&STACK[0x3F0] = v141;
  v299 = veorq_s8(vaddq_s64(v297, v141), v142);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL));
  v301 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300);
  v302 = v149;
  v303 = vsubq_s64(vandq_s8(vaddq_s64(v301, v301), v149), v301);
  v304 = vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL);
  v301.i64[0] = a6 + v273 + a4;
  v301.i64[1] = a6 + v274 + a4;
  v305 = vandq_s8(v301, v160);
  v306 = v160;
  v307 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v308 = vbslq_s8(v168, vsubq_s64(*&STACK[0x410], v307), vaddq_s64(v307, v165));
  v309 = veorq_s8(v308, *&STACK[0x5B0]);
  v310 = veorq_s8(v308, *&STACK[0x540]);
  v311 = vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL);
  v312 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL), v310), *&STACK[0x420]);
  v313 = veorq_s8(v312, v311);
  v314 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v313);
  v315 = vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL);
  v316 = veorq_s8(vaddq_s64(v303, *&STACK[0x520]), *&STACK[0x510]);
  v317 = veorq_s8(v316, v304);
  v318 = vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL);
  v319 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v314, v314), v194), v314), *&STACK[0x4C0]), *&STACK[0x4B0]);
  v320 = veorq_s8(v319, v315);
  v321 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v319, 0x38uLL), v319, 8uLL), v320);
  v322 = vsraq_n_u64(vshlq_n_s64(v320, 3uLL), v320, 0x3DuLL);
  v323 = vaddq_s64(v318, v317);
  v324 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v321, v321), *&STACK[0x4A0]), v321), *&STACK[0x500]), *&STACK[0x590]);
  v325 = veorq_s8(v324, v322);
  v326 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325);
  v327 = veorq_s8(vaddq_s64(vsubq_s64(v326, vandq_s8(vaddq_s64(v326, v326), *&STACK[0x580])), *&STACK[0x5C0]), *&STACK[0x570]);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v329 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328), *&STACK[0x560]);
  v330 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL));
  v331 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), v330), *&STACK[0x550]);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v330, 3uLL), v330, 0x3DuLL)));
  v333 = vshlq_u64(veorq_s8(v323, *&STACK[0x490]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), *&STACK[0x480])));
  v334 = (a59 + v77 + 16);
  v335 = (a61 + v77 + 16);
  v336 = a3 + v334;
  v256.i64[0] = a3 + v334;
  v256.i64[1] = a3 + v335;
  v638.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v332, *&STACK[0x530]), vorrq_s8(v332, v271)), v271), *&STACK[0x5A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v301, 3uLL), *&STACK[0x480]))), v333);
  v337 = vandq_s8(v256, v160);
  v338 = vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL);
  v339 = vbslq_s8(v94, vsubq_s64(v278, v338), vaddq_s64(v338, v277));
  v340 = veorq_s8(v339, v97);
  v341 = veorq_s8(v339, v103);
  v342 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v343 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v341), v104);
  v344 = veorq_s8(v343, v342);
  v345 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL), v344);
  v346 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v345, v286), vorrq_s8(v345, *&STACK[0x3C0])), *&STACK[0x3C0]), v287);
  v347 = veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL));
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), v347), v290);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL));
  v350 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), v349), v130);
  v351 = veorq_s8(v350, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v352 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v351);
  v353 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v352, v352), v296), v352), v298), v142);
  v354 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v351, 3uLL), v351, 0x3DuLL));
  v355 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), v354);
  v356 = vsubq_s64(vandq_s8(vaddq_s64(v355, v355), v302), v355);
  v357 = a6 + v334 + a4;
  v355.i64[0] = v357;
  v355.i64[1] = a6 + v335 + a4;
  v358 = vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL);
  v359 = vandq_s8(v355, v160);
  v360 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v361 = *&STACK[0x410];
  v362 = *&STACK[0x2B0];
  v363 = vbslq_s8(*&STACK[0x2B0], vsubq_s64(*&STACK[0x410], v360), vaddq_s64(v360, v165));
  v364 = veorq_s8(vaddq_s64(v356, *&STACK[0x520]), *&STACK[0x510]);
  v365 = veorq_s8(v364, v358);
  v366 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v367 = veorq_s8(v363, *&STACK[0x5B0]);
  v368 = veorq_s8(v363, *&STACK[0x540]);
  v369 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v370 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL), v368), *&STACK[0x420]);
  v371 = *&STACK[0x420];
  v372 = veorq_s8(v370, v369);
  v373 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), v372);
  v374 = *&STACK[0x390];
  v375 = *&STACK[0x4C0];
  v376 = *&STACK[0x4B0];
  v377 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v373, v373), *&STACK[0x390]), v373), *&STACK[0x4C0]), *&STACK[0x4B0]);
  v378 = veorq_s8(v377, vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  v379 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL), v378);
  v380 = *&STACK[0x4A0];
  v381 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v379, v379), *&STACK[0x4A0]), v379), *&STACK[0x500]), *&STACK[0x590]);
  v382 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  v383 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v382);
  v384 = veorq_s8(vaddq_s64(vsubq_s64(v383, vandq_s8(vaddq_s64(v383, v383), *&STACK[0x580])), *&STACK[0x5C0]), *&STACK[0x570]);
  v385 = veorq_s8(v384, vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL));
  v386 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385);
  v387 = vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL);
  v388 = vaddq_s64(v366, v365);
  v389 = veorq_s8(v386, *&STACK[0x560]);
  v390 = veorq_s8(v389, v387);
  v391 = *&STACK[0x480];
  v392 = vshlq_u64(veorq_s8(v388, *&STACK[0x490]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), *&STACK[0x480])));
  v393 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL), v390), *&STACK[0x550]);
  v394 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), veorq_s8(v393, vsraq_n_u64(vshlq_n_s64(v390, 3uLL), v390, 0x3DuLL)));
  v395 = vorrq_s8(v394, *&STACK[0x530]);
  *&STACK[0x400] = v271;
  v638.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v395, vorrq_s8(v394, v271)), v271), *&STACK[0x5A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v355, 3uLL), v391))), v392);
  *&STACK[0x360] = xmmword_1002A9AB0;
  *&STACK[0x370] = vqtbl4q_s8(v638, xmmword_1002A9AB0);
  v396 = (LODWORD(STACK[0x200]) + v77 + 16);
  v397 = (LODWORD(STACK[0x210]) + v77 + 16);
  v262.i64[0] = a3 + v396;
  v262.i64[1] = a3 + v397;
  *&STACK[0x350] = v262;
  v398 = vandq_s8(v262, v306);
  v399 = vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL);
  v400 = (LODWORD(STACK[0x220]) + v77 + 16);
  v401 = (LODWORD(STACK[0x230]) + v77 + 16);
  v398.i64[0] = a3 + v400;
  v398.i64[1] = a3 + v401;
  *&STACK[0x330] = v398;
  v402 = vandq_s8(v398, v306);
  v403 = vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL);
  v404 = (LODWORD(STACK[0x240]) + v77 + 16);
  v405 = (LODWORD(STACK[0x250]) + v77 + 16);
  v271.i64[0] = a3 + v404;
  v271.i64[1] = a3 + v405;
  v406 = vandq_s8(v271, v306);
  v407 = vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL);
  v408 = (LODWORD(STACK[0x260]) + v77 + 16);
  v409 = (LODWORD(STACK[0x270]) + v77 + 16);
  v638.val[1].i64[0] = a3 + v408;
  v638.val[1].i64[1] = a3 + v409;
  v410 = vandq_s8(v638.val[1], v306);
  v411 = vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL);
  v412 = vaddq_s64(v411, v277);
  v413 = vaddq_s64(v407, v277);
  v414 = vaddq_s64(v403, v277);
  v415 = vsubq_s64(*&STACK[0x470], v411);
  v416 = vsubq_s64(*&STACK[0x470], v407);
  v417 = vsubq_s64(*&STACK[0x470], v403);
  *&STACK[0x380] = vbslq_s8(v94, vsubq_s64(*&STACK[0x470], v399), vaddq_s64(v399, v277));
  v418 = vbslq_s8(v94, v417, v414);
  v419 = vbslq_s8(v94, v416, v413);
  v399.i64[0] = a6 + v396 + a4;
  v399.i64[1] = a6 + v397 + a4;
  *&STACK[0x470] = v399;
  v420 = vbslq_s8(v94, v415, v412);
  v421 = vandq_s8(v399, v306);
  v422 = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v399.i64[0] = a6 + v400 + a4;
  v399.i64[1] = a6 + v401 + a4;
  *&STACK[0x310] = v399;
  v423 = vandq_s8(v399, v306);
  v424 = vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL);
  v414.i64[0] = a6 + v404 + a4;
  v414.i64[1] = a6 + v405 + a4;
  v387.i64[0] = a6 + v408 + a4;
  v387.i64[1] = a6 + v409 + a4;
  v425 = vandq_s8(v414, v306);
  v426 = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v427 = vandq_s8(v387, v306);
  v638.val[3] = vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL);
  *&STACK[0x410] = vbslq_s8(v362, vsubq_s64(v361, v422), vaddq_s64(v422, v165));
  *&STACK[0x2E0] = vbslq_s8(v362, vsubq_s64(v361, v424), vaddq_s64(v424, v165));
  v428 = vbslq_s8(v362, vsubq_s64(v361, v426), vaddq_s64(v426, v165));
  v429 = vbslq_s8(v362, vsubq_s64(v361, v638.val[3]), vaddq_s64(v638.val[3], v165));
  v430 = veorq_s8(v419, v97);
  v431 = vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL);
  v432 = veorq_s8(v420, v97);
  v433 = vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL);
  v434 = veorq_s8(v420, *&STACK[0x3B0]);
  v435 = vaddq_s64(v433, v434);
  v436 = vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL);
  v437 = veorq_s8(v419, *&STACK[0x3B0]);
  v438 = vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL);
  v439 = vaddq_s64(v431, v437);
  *&STACK[0x2C0] = v104;
  v440 = veorq_s8(v435, v104);
  v441 = veorq_s8(v440, v436);
  v442 = vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL);
  v443 = veorq_s8(v439, v104);
  v444 = veorq_s8(v443, v438);
  v445 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL), v444);
  v446 = vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL);
  v447 = vaddq_s64(v442, v441);
  v448 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v447, *&STACK[0x4F0]), vorrq_s8(v447, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x430]);
  v449 = veorq_s8(v448, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v450 = vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL);
  v451 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v445, *&STACK[0x4F0]), vorrq_s8(v445, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x430]);
  v452 = veorq_s8(v451, v446);
  v453 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), v452);
  v454 = vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL);
  v455 = vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL);
  v456 = vaddq_s64(v450, v449);
  v457 = veorq_s8(v453, *&STACK[0x4E0]);
  v458 = veorq_s8(v457, v454);
  v459 = vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL);
  v460 = veorq_s8(v456, *&STACK[0x4E0]);
  v461 = veorq_s8(v460, v455);
  v462 = vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL);
  v463 = vaddq_s64(v459, v458);
  v464 = vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL);
  v465 = vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL);
  v466 = veorq_s8(vaddq_s64(v462, v461), *&STACK[0x3D0]);
  v467 = veorq_s8(v466, v465);
  v468 = vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL);
  v469 = veorq_s8(v463, *&STACK[0x3D0]);
  v470 = veorq_s8(v469, v464);
  v471 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v472 = vaddq_s64(v468, v467);
  v473 = vaddq_s64(v471, v470);
  v474 = vsraq_n_u64(vshlq_n_s64(v467, 3uLL), v467, 0x3DuLL);
  v475 = vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL);
  v476 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v473, v473), *&STACK[0x4D0]), v473), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v477 = veorq_s8(v476, v475);
  v478 = vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL);
  v479 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v472, v472), *&STACK[0x4D0]), v472), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v480 = veorq_s8(v479, v474);
  v481 = vsraq_n_u64(vshlq_n_s64(v479, 0x38uLL), v479, 8uLL);
  v482 = vaddq_s64(v478, v477);
  v483 = vsubq_s64(vandq_s8(vaddq_s64(v482, v482), v302), v482);
  v484 = vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL);
  v485 = vaddq_s64(v481, v480);
  v486 = vsraq_n_u64(vshlq_n_s64(v480, 3uLL), v480, 0x3DuLL);
  v487 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v485, v485), v302), v485), *&STACK[0x520]), *&STACK[0x510]);
  v488 = veorq_s8(v487, v486);
  v489 = vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL);
  v490 = veorq_s8(vaddq_s64(v483, *&STACK[0x520]), *&STACK[0x510]);
  v491 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v490, 0x38uLL), v490, 8uLL), veorq_s8(v490, v484));
  v492 = veorq_s8(v428, *&STACK[0x5B0]);
  v493 = vsraq_n_u64(vshlq_n_s64(v492, 0x38uLL), v492, 8uLL);
  v494 = veorq_s8(v429, *&STACK[0x5B0]);
  v495 = vsraq_n_u64(vshlq_n_s64(v494, 0x38uLL), v494, 8uLL);
  v496 = veorq_s8(v428, *&STACK[0x540]);
  v497 = vaddq_s64(v493, v496);
  v498 = vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL);
  v499 = veorq_s8(v429, *&STACK[0x540]);
  v500 = vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL);
  v501 = veorq_s8(vaddq_s64(v495, v499), v371);
  v502 = veorq_s8(v501, v500);
  v503 = vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL);
  v504 = veorq_s8(v497, v371);
  v505 = veorq_s8(v504, v498);
  v506 = vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL);
  v507 = vaddq_s64(v503, v502);
  v508 = vaddq_s64(v506, v505);
  v509 = vsraq_n_u64(vshlq_n_s64(v502, 3uLL), v502, 0x3DuLL);
  v510 = vsraq_n_u64(vshlq_n_s64(v505, 3uLL), v505, 0x3DuLL);
  v511 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v508, v508), v374), v508), v375), v376);
  v512 = veorq_s8(v511, v510);
  v513 = vsraq_n_u64(vshlq_n_s64(v511, 0x38uLL), v511, 8uLL);
  v514 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v507, v507), v374), v507), v375), v376);
  v515 = veorq_s8(v514, v509);
  v516 = vsraq_n_u64(vshlq_n_s64(v514, 0x38uLL), v514, 8uLL);
  v517 = vaddq_s64(v513, v512);
  v518 = vaddq_s64(v516, v515);
  v519 = vsraq_n_u64(vshlq_n_s64(v512, 3uLL), v512, 0x3DuLL);
  v520 = vsraq_n_u64(vshlq_n_s64(v515, 3uLL), v515, 0x3DuLL);
  v521 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v518, v518), v380), v518), *&STACK[0x500]), *&STACK[0x590]);
  v522 = veorq_s8(v521, v520);
  v523 = vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL);
  v524 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v517, v517), v380), v517), *&STACK[0x500]), *&STACK[0x590]);
  v525 = veorq_s8(v524, v519);
  v526 = vsraq_n_u64(vshlq_n_s64(v524, 0x38uLL), v524, 8uLL);
  v527 = vaddq_s64(v523, v522);
  v528 = vaddq_s64(v526, v525);
  v529 = vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL);
  v530 = vaddq_s64(v489, v488);
  v531 = vsraq_n_u64(vshlq_n_s64(v525, 3uLL), v525, 0x3DuLL);
  v532 = veorq_s8(vaddq_s64(vsubq_s64(v528, vandq_s8(vaddq_s64(v528, v528), *&STACK[0x580])), *&STACK[0x5C0]), *&STACK[0x570]);
  v533 = veorq_s8(v532, v531);
  v534 = vsraq_n_u64(vshlq_n_s64(v532, 0x38uLL), v532, 8uLL);
  v535 = vshlq_u64(veorq_s8(v491, *&STACK[0x490]), vnegq_s64(vandq_s8(vshlq_n_s64(v271, 3uLL), v391)));
  v536 = veorq_s8(vaddq_s64(vsubq_s64(v527, vandq_s8(vaddq_s64(v527, v527), *&STACK[0x580])), *&STACK[0x5C0]), *&STACK[0x570]);
  v537 = veorq_s8(v536, v529);
  v538 = vsraq_n_u64(vshlq_n_s64(v536, 0x38uLL), v536, 8uLL);
  v539 = vaddq_s64(v534, v533);
  v540 = vsraq_n_u64(vshlq_n_s64(v533, 3uLL), v533, 0x3DuLL);
  v541 = veorq_s8(vaddq_s64(v538, v537), *&STACK[0x560]);
  v542 = veorq_s8(v541, vsraq_n_u64(vshlq_n_s64(v537, 3uLL), v537, 0x3DuLL));
  v543 = vsraq_n_u64(vshlq_n_s64(v541, 0x38uLL), v541, 8uLL);
  v544 = veorq_s8(v539, *&STACK[0x560]);
  v545 = veorq_s8(v544, v540);
  v546 = vsraq_n_u64(vshlq_n_s64(v544, 0x38uLL), v544, 8uLL);
  v547 = vaddq_s64(v543, v542);
  v548 = vsraq_n_u64(vshlq_n_s64(v542, 3uLL), v542, 0x3DuLL);
  v549 = vaddq_s64(v546, v545);
  v550 = vsraq_n_u64(vshlq_n_s64(v545, 3uLL), v545, 0x3DuLL);
  v551 = veorq_s8(v549, *&STACK[0x550]);
  v552 = veorq_s8(v547, *&STACK[0x550]);
  v553 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v552, 0x38uLL), v552, 8uLL), veorq_s8(v552, v548));
  v554 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v551, 0x38uLL), v551, 8uLL), veorq_s8(v551, v550));
  v637.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v553, *&STACK[0x530]), vorrq_s8(v553, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x5A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v387, 3uLL), v391))), vshlq_u64(veorq_s8(v530, *&STACK[0x490]), vnegq_s64(vandq_s8(vshlq_n_s64(v638.val[1], 3uLL), v391))));
  v637.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v554, *&STACK[0x530]), vorrq_s8(v554, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x5A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v414, 3uLL), v391))), v535);
  v555 = veorq_s8(v418, v97);
  v556 = vsraq_n_u64(vshlq_n_s64(v555, 0x38uLL), v555, 8uLL);
  v557 = veorq_s8(v418, *&STACK[0x3B0]);
  v558 = vsraq_n_u64(vshlq_n_s64(v557, 3uLL), v557, 0x3DuLL);
  v559 = veorq_s8(vaddq_s64(v556, v557), *&STACK[0x2C0]);
  v560 = veorq_s8(v559, v558);
  v561 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v559, 0x38uLL), v559, 8uLL), v560);
  v562 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v561, *&STACK[0x4F0]), vorrq_s8(v561, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x430]);
  v563 = veorq_s8(v562, vsraq_n_u64(vshlq_n_s64(v560, 3uLL), v560, 0x3DuLL));
  v564 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v562, 0x38uLL), v562, 8uLL), v563), *&STACK[0x4E0]);
  v565 = veorq_s8(v564, vsraq_n_u64(vshlq_n_s64(v563, 3uLL), v563, 0x3DuLL));
  v566 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v564, 0x38uLL), v564, 8uLL), v565), *&STACK[0x3D0]);
  v567 = veorq_s8(v566, vsraq_n_u64(vshlq_n_s64(v565, 3uLL), v565, 0x3DuLL));
  v568 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v566, 0x38uLL), v566, 8uLL), v567);
  v569 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v568, v568), *&STACK[0x4D0]), v568), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v570 = veorq_s8(v569, vsraq_n_u64(vshlq_n_s64(v567, 3uLL), v567, 0x3DuLL));
  v571 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v569, 0x38uLL), v569, 8uLL), v570);
  v572 = vsraq_n_u64(vshlq_n_s64(v570, 3uLL), v570, 0x3DuLL);
  v573 = veorq_s8(*&STACK[0x2E0], *&STACK[0x5B0]);
  v574 = vsraq_n_u64(vshlq_n_s64(v573, 0x38uLL), v573, 8uLL);
  v575 = veorq_s8(*&STACK[0x2E0], *&STACK[0x540]);
  v576 = vsraq_n_u64(vshlq_n_s64(v575, 3uLL), v575, 0x3DuLL);
  v577 = veorq_s8(vaddq_s64(v574, v575), *&STACK[0x420]);
  v578 = veorq_s8(v577, v576);
  v579 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v577, 0x38uLL), v577, 8uLL), v578);
  v580 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v579, v579), v374), v579), *&STACK[0x4C0]), v376);
  v581 = veorq_s8(v580, vsraq_n_u64(vshlq_n_s64(v578, 3uLL), v578, 0x3DuLL));
  v582 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v580, 0x38uLL), v580, 8uLL), v581);
  v583 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v571, v571), v302), v571), *&STACK[0x520]), *&STACK[0x510]);
  v584 = veorq_s8(v583, v572);
  v585 = vsraq_n_u64(vshlq_n_s64(v583, 0x38uLL), v583, 8uLL);
  v586 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v582, v582), *&STACK[0x4A0]), v582), *&STACK[0x500]), *&STACK[0x590]);
  v587 = veorq_s8(v586, vsraq_n_u64(vshlq_n_s64(v581, 3uLL), v581, 0x3DuLL));
  v588 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v586, 0x38uLL), v586, 8uLL), v587);
  v589 = vsraq_n_u64(vshlq_n_s64(v587, 3uLL), v587, 0x3DuLL);
  v590 = veorq_s8(vaddq_s64(vsubq_s64(v588, vandq_s8(vaddq_s64(v588, v588), *&STACK[0x580])), *&STACK[0x5C0]), *&STACK[0x570]);
  v591 = veorq_s8(v590, v589);
  v592 = vsraq_n_u64(vshlq_n_s64(v590, 0x38uLL), v590, 8uLL);
  v593 = veorq_s8(vaddq_s64(v585, v584), *&STACK[0x490]);
  v594 = vaddq_s64(v592, v591);
  v595 = vsraq_n_u64(vshlq_n_s64(v591, 3uLL), v591, 0x3DuLL);
  v596 = veorq_s8(v594, *&STACK[0x560]);
  v597 = veorq_s8(v596, v595);
  v598 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v596, 0x38uLL), v596, 8uLL), v597), *&STACK[0x550]);
  v599 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v598, 0x38uLL), v598, 8uLL), veorq_s8(v598, vsraq_n_u64(vshlq_n_s64(v597, 3uLL), v597, 0x3DuLL)));
  v637.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v599, *&STACK[0x530]), vorrq_s8(v599, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x5A0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), v391))), vshlq_u64(v593, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), v391))));
  v600 = veorq_s8(*&STACK[0x380], v97);
  v601 = veorq_s8(*&STACK[0x380], *&STACK[0x3B0]);
  v602 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v600, 0x38uLL), v600, 8uLL), v601), *&STACK[0x2C0]);
  v603 = veorq_s8(v602, vsraq_n_u64(vshlq_n_s64(v601, 3uLL), v601, 0x3DuLL));
  v604 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v602, 0x38uLL), v602, 8uLL), v603);
  v605 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v604, *&STACK[0x4F0]), vorrq_s8(v604, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x430]);
  v606 = veorq_s8(v605, vsraq_n_u64(vshlq_n_s64(v603, 3uLL), v603, 0x3DuLL));
  v607 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v605, 0x38uLL), v605, 8uLL), v606), *&STACK[0x4E0]);
  v608 = veorq_s8(v607, vsraq_n_u64(vshlq_n_s64(v606, 3uLL), v606, 0x3DuLL));
  v609 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v607, 0x38uLL), v607, 8uLL), v608), *&STACK[0x3D0]);
  v610 = veorq_s8(v609, vsraq_n_u64(vshlq_n_s64(v608, 3uLL), v608, 0x3DuLL));
  v611 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v609, 0x38uLL), v609, 8uLL), v610);
  v612 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v611, v611), *&STACK[0x4D0]), v611), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v613 = veorq_s8(v612, vsraq_n_u64(vshlq_n_s64(v610, 3uLL), v610, 0x3DuLL));
  v614 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v612, 0x38uLL), v612, 8uLL), v613);
  v615 = vsraq_n_u64(vshlq_n_s64(v613, 3uLL), v613, 0x3DuLL);
  v616 = veorq_s8(*&STACK[0x410], *&STACK[0x5B0]);
  v617 = veorq_s8(*&STACK[0x410], *&STACK[0x540]);
  v618 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v616, 0x38uLL), v616, 8uLL), v617), *&STACK[0x420]);
  v619 = veorq_s8(v618, vsraq_n_u64(vshlq_n_s64(v617, 3uLL), v617, 0x3DuLL));
  v620 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v618, 0x38uLL), v618, 8uLL), v619);
  v621 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v620, v620), *&STACK[0x390]), v620), *&STACK[0x4C0]), *&STACK[0x4B0]);
  v622 = veorq_s8(v621, vsraq_n_u64(vshlq_n_s64(v619, 3uLL), v619, 0x3DuLL));
  v623 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v621, 0x38uLL), v621, 8uLL), v622);
  v624 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v623, v623), *&STACK[0x4A0]), v623), *&STACK[0x500]), *&STACK[0x590]);
  v625 = veorq_s8(v624, vsraq_n_u64(vshlq_n_s64(v622, 3uLL), v622, 0x3DuLL));
  v626 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v624, 0x38uLL), v624, 8uLL), v625);
  v627 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v614, v614), v302), v614), *&STACK[0x520]), *&STACK[0x510]);
  v628 = veorq_s8(v627, v615);
  v629 = vsraq_n_u64(vshlq_n_s64(v627, 0x38uLL), v627, 8uLL);
  v630 = veorq_s8(vaddq_s64(vsubq_s64(v626, vandq_s8(vaddq_s64(v626, v626), *&STACK[0x580])), *&STACK[0x5C0]), *&STACK[0x570]);
  v631 = veorq_s8(v630, vsraq_n_u64(vshlq_n_s64(v625, 3uLL), v625, 0x3DuLL));
  v632 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v630, 0x38uLL), v630, 8uLL), v631), *&STACK[0x560]);
  v633 = veorq_s8(v632, vsraq_n_u64(vshlq_n_s64(v631, 3uLL), v631, 0x3DuLL));
  v634 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v632, 0x38uLL), v632, 8uLL), v633), *&STACK[0x550]);
  v635 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v634, 0x38uLL), v634, 8uLL), veorq_s8(v634, vsraq_n_u64(vshlq_n_s64(v633, 3uLL), v633, 0x3DuLL)));
  v637.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v635, *&STACK[0x530]), vorrq_s8(v635, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x5A0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x470], 3uLL), *&STACK[0x480]))), vshlq_u64(veorq_s8(vaddq_s64(v629, v628), *&STACK[0x490]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), *&STACK[0x480]))));
  v637.val[0].i64[0] = vqtbl4q_s8(v637, *&STACK[0x360]).u64[0];
  v637.val[1] = *&STACK[0x370];
  v637.val[1].i64[1] = v637.val[0].i64[0];
  v637.val[1] = vrev64q_s8(v637.val[1]);
  *(v357 - 15) = veorq_s8(vextq_s8(v637.val[1], v637.val[1], 8uLL), *(v336 - 15));
  return (*(STACK[0x5E0] + 8 * ((14780 * (LODWORD(STACK[0x280]) == v77)) ^ v71)))();
}

uint64_t sub_100162188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, int a49, uint64_t a50, int a51)
{
  v51 = (a47 - 4) | 4;
  LODWORD(STACK[0x5C0]) = v51;
  return (*(STACK[0x5E0] + 8 * (((((a47 - 4) ^ 0xFFFFFCF8) + v51) * (a51 == a49)) ^ (a47 - 714))))();
}

uint64_t sub_100162280(int a1)
{
  LODWORD(STACK[0x5A0]) = v1 ^ 0x3D;
  v2 = *(STACK[0x5E0] + 8 * v1);
  LODWORD(STACK[0x590]) = (v1 ^ 0xFFFFEC0A) & a1;
  return v2();
}

uint64_t sub_1001622F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v19 = (v13 + v6);
  v20 = (v13 + a2);
  v21 = (v13 + v8);
  v22 = STACK[0x5A0];
  v23 = v7;
  v24 = (v13 + v14);
  v25 = (v13 + v16);
  v26 = (v13 + v15);
  v27 = v10;
  v28.i64[0] = a6 + v19 + a4;
  v28.i64[1] = a6 + v20 + a4;
  *&STACK[0x5B0] = v28;
  v29.i64[0] = a6 + v21 + a4;
  v29.i64[1] = a6 + v24 + a4;
  *&STACK[0x5C0] = v29;
  v30.i64[0] = a6 + v25 + a4;
  v30.i64[1] = a6 + v26 + a4;
  v31 = (v13 + v12);
  v32 = v13 + v17 + ((v22 + 1271338028) & 0xB438DE0C);
  v33.i64[0] = a6 + v31 + a4;
  v33.i64[1] = a6 + v32 + a4;
  v34 = vdupq_n_s64(0x38uLL);
  v35 = vdupq_n_s64(0x695A575CC8A36DAuLL);
  v36.i64[0] = a3 + v19;
  v36.i64[1] = a3 + v20;
  v37.i64[0] = a3 + v21;
  v37.i64[1] = a3 + v24;
  v38.i64[0] = a3 + v25;
  v38.i64[1] = a3 + v26;
  v39.i64[0] = a3 + v31;
  v39.i64[1] = a3 + v32;
  v40 = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  v41 = vandq_s8(v38, v18);
  v42 = vandq_s8(v37, v18);
  v43 = vandq_s8(v36, v18);
  v44 = vandq_s8(v39, v18);
  v45 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v49 = vaddq_s64(v48, v35);
  v50 = vaddq_s64(v47, v35);
  v51 = vaddq_s64(v45, v35);
  v52 = vdupq_n_s64(0x896A5A8A3375C925);
  v53 = vsubq_s64(v52, v48);
  v54 = vsubq_s64(v52, v47);
  v55 = vaddq_s64(v46, v35);
  v56 = vsubq_s64(v52, v45);
  v57 = vsubq_s64(v52, v46);
  v58 = vdupq_n_s64(0xF8BBAAE4CC3892D5);
  v59 = vbslq_s8(v58, v56, v51);
  v60 = vbslq_s8(v58, v57, v55);
  v61 = vbslq_s8(v58, v54, v50);
  v62 = vbslq_s8(v58, v53, v49);
  v63 = vdupq_n_s64(0xF5CAC4299FEE8D02);
  v64 = veorq_s8(v62, v63);
  v65 = veorq_s8(v61, v63);
  v66 = veorq_s8(v59, v63);
  v67 = veorq_s8(v60, v63);
  v68 = vdupq_n_s64(v11);
  v69 = veorq_s8(v59, v68);
  v70 = veorq_s8(v60, v68);
  v71 = veorq_s8(v61, v68);
  v72 = veorq_s8(v62, v68);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v71);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v76 = vaddq_s64(v73, v70);
  v77 = veorq_s8(v75, v40);
  v78 = veorq_s8(v74, v40);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v72), v40);
  v80 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v81 = veorq_s8(v76, v40);
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v83 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v84 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v85 = veorq_s8(v81, v80);
  v86 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v90 = vaddq_s64(v88, v84);
  v91 = vaddq_s64(v87, v83);
  v92 = vaddq_s64(v86, v82);
  v93 = vaddq_s64(v89, v85);
  v94 = vdupq_n_s64(0x9FF680025D795089);
  v95 = vdupq_n_s64(v23);
  v96 = vaddq_s64(vsubq_s64(vorrq_s8(v92, v94), vorrq_s8(v92, v95)), v95);
  v97 = vaddq_s64(vsubq_s64(vorrq_s8(v91, v94), vorrq_s8(v91, v95)), v95);
  v98 = vaddq_s64(vsubq_s64(vorrq_s8(v90, v94), vorrq_s8(v90, v95)), v95);
  v99 = vaddq_s64(vsubq_s64(vorrq_s8(v93, v94), vorrq_s8(v93, v95)), v95);
  v100 = vdupq_n_s64(0x9A70B1A0F5DDA84uLL);
  v101 = veorq_s8(v98, v100);
  v102 = veorq_s8(v97, v100);
  v103 = veorq_s8(v96, v100);
  v104 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v106 = veorq_s8(v99, v100);
  v107 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v108 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v109 = veorq_s8(v101, v105);
  v110 = veorq_s8(v106, v104);
  v111 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v115 = vaddq_s64(v113, v109);
  v116 = vaddq_s64(v112, v108);
  v117 = vaddq_s64(v111, v107);
  v118 = vdupq_n_s64(0xC73EF603490C4402);
  v119 = veorq_s8(v117, v118);
  v120 = veorq_s8(v116, v118);
  v121 = veorq_s8(v115, v118);
  v122 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v124 = veorq_s8(vaddq_s64(v114, v110), v118);
  v125 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v126 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v127 = veorq_s8(v120, v123);
  v128 = veorq_s8(v119, v122);
  v129 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v128);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v127);
  v133 = vaddq_s64(v130, v126);
  v134 = vdupq_n_s64(0xC4318A842864C03uLL);
  v135 = veorq_s8(vaddq_s64(v129, v125), v134);
  v136 = veorq_s8(v132, v134);
  v137 = veorq_s8(v131, v134);
  v138 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v140 = veorq_s8(v133, v134);
  v141 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v142 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v143 = veorq_s8(v136, v141);
  v144 = veorq_s8(v135, v139);
  v145 = veorq_s8(v140, v138);
  v146 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v144);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v145);
  v150 = vaddq_s64(v147, v143);
  v151 = vaddq_s64(v146, v142);
  v152 = vdupq_n_s64(0xF837371F58F9BF6CLL);
  v153 = vorrq_s8(vaddq_s64(v148, v148), v152);
  v154 = vorrq_s8(vaddq_s64(v150, v150), v152);
  v155 = vorrq_s8(vaddq_s64(v149, v149), v152);
  v156 = vsubq_s64(vorrq_s8(vaddq_s64(v151, v151), v152), v151);
  v157 = vsubq_s64(v154, v150);
  v158 = vsubq_s64(v153, v148);
  v159 = vdupq_n_s64(0x83E464705383204ALL);
  v160 = vsubq_s64(v155, v149);
  v161 = vaddq_s64(v158, v159);
  v162 = vdupq_n_s64(0x3F7B939D4CDF8FC5uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v164 = vaddq_s64(v157, v159);
  v165 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v167 = vaddq_s64(v156, v159);
  v168 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v169 = vandq_s8(v30, v18);
  v170 = vandq_s8(v29, v18);
  v171 = vandq_s8(v28, v18);
  v172 = vandq_s8(v33, v18);
  v173 = vaddq_s64(v160, v159);
  v174 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v176 = veorq_s8(v167, v162);
  v177 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v179 = vdupq_n_s64(0x1BF086EE80E068F2uLL);
  v180 = veorq_s8(v164, v162);
  v181 = vaddq_s64(v178, v179);
  v182 = vaddq_s64(v177, v179);
  v183 = vaddq_s64(v175, v179);
  v184 = vdupq_n_s64(0x240F79117F1F970DuLL);
  v185 = veorq_s8(v161, v162);
  v186 = vaddq_s64(v174, v179);
  v187 = vsubq_s64(v184, v178);
  v188 = vsubq_s64(v184, v177);
  v189 = veorq_s8(v173, v162);
  v190 = vdupq_n_s64(0xED72F297E808ACF8);
  v191 = vbslq_s8(v190, vsubq_s64(v184, v174), v186);
  v192 = vbslq_s8(v190, vsubq_s64(v184, v175), v183);
  v193 = vbslq_s8(v190, v188, v182);
  v194 = veorq_s8(v185, v166);
  v195 = vbslq_s8(v190, v187, v181);
  v196 = vdupq_n_s64(0xC5F5F189513C3D42);
  v197 = veorq_s8(v195, v196);
  v198 = veorq_s8(v193, v196);
  v199 = veorq_s8(v180, v165);
  v200 = veorq_s8(v192, v196);
  v201 = veorq_s8(v191, v196);
  v202 = vdupq_n_s64(0x1A71C6FD563F7AD4uLL);
  v203 = veorq_s8(v191, v202);
  v204 = veorq_s8(v176, v163);
  v205 = veorq_s8(v192, v202);
  v206 = veorq_s8(v193, v202);
  v207 = veorq_s8(v195, v202);
  v208 = vdupq_n_s64(0xD87AD12BCA74F052);
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v203), v208);
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v205), v208);
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v206), v208);
  v212 = veorq_s8(v189, v168);
  v213 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v207), v208);
  v214 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v217 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v218 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v219 = veorq_s8(v211, v216);
  v220 = veorq_s8(v210, v215);
  v221 = veorq_s8(v209, v214);
  v222 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v221);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v220);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v219);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v217);
  v228 = vdupq_n_s64(0x6604FF7B30B3B3E2uLL);
  v229 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v230 = vsubq_s64(vorrq_s8(vaddq_s64(v226, v226), v228), v226);
  v231 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v232 = vdupq_n_s64(0xCCFD804267A6260FLL);
  v233 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v224, v224), v228), v224), v232);
  v234 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v225, v225), v228), v225), v232);
  v235 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v236 = vaddq_s64(v230, v232);
  v237 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v227, v227), v228), v227), v232);
  v238 = vdupq_n_s64(0xACC3E51663869BA9);
  v239 = veorq_s8(v237, v238);
  v240 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v241 = veorq_s8(v236, v238);
  v242 = veorq_s8(v234, v238);
  v243 = veorq_s8(v233, v238);
  v244 = vaddq_s64(v223, v204);
  v245 = vaddq_s64(v222, v199);
  v246 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v247 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v248 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v249 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v250 = vaddq_s64(v218, v194);
  v251 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v249);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v248);
  v254 = vaddq_s64(v229, v212);
  v255 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v247);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v246);
  v257 = vdupq_n_s64(0x26C3D91CAAAAC0CCuLL);
  v258 = vandq_s8(vaddq_s64(v252, v252), v257);
  v259 = vandq_s8(vaddq_s64(v253, v253), v257);
  v260 = vsubq_s64(vandq_s8(vaddq_s64(v256, v256), v257), v256);
  v261 = vsubq_s64(vandq_s8(vaddq_s64(v255, v255), v257), v255);
  v262 = vdupq_n_s64(0x3D50F30F384595A6uLL);
  v263 = vandq_s8(vaddq_s64(v244, v244), v262);
  v264 = vandq_s8(vaddq_s64(v245, v245), v262);
  v265 = vandq_s8(vaddq_s64(v250, v250), v262);
  v266 = vandq_s8(vaddq_s64(v254, v254), v262);
  v267 = vsubq_s64(v259, v253);
  v268 = vdupq_n_s64(0xE157867863DD352CLL);
  v269 = vsubq_s64(v258, v252);
  v270 = vdupq_n_s64(0x6C9E1371AAAA9F99uLL);
  v271 = vaddq_s64(v269, v270);
  v272 = vaddq_s64(v267, v270);
  v273 = vaddq_s64(v261, v270);
  v274 = vaddq_s64(v260, v270);
  v275 = vdupq_n_s64(0xFC8F779185D73647);
  v276 = veorq_s8(v274, v275);
  v277 = vsubq_s64(v264, v245);
  v278 = veorq_s8(v273, v275);
  v279 = veorq_s8(v272, v275);
  v280 = veorq_s8(v271, v275);
  v281 = vsubq_s64(v266, v254);
  v282 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v283 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v284 = veorq_s8(v278, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v285 = veorq_s8(v276, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v286 = vaddq_s64(vsubq_s64(v263, v244), v268);
  v287 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), v285);
  v289 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL), v284);
  v290 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v283);
  v291 = vaddq_s64(v287, v282);
  v292 = vdupq_n_s64(0x8429C13B901A7D44);
  v293 = vdupq_n_s64(0x54D6460F57505710uLL);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(v265, v250), v268), v293);
  v295 = veorq_s8(vaddq_s64(v277, v268), v293);
  v296 = veorq_s8(v286, v293);
  v297 = vdupq_n_s64(0xC214E09DC80D3EA2);
  v298 = veorq_s8(vaddq_s64(v281, v268), v293);
  v299 = vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), v292)), v297);
  v300 = vaddq_s64(vsubq_s64(v289, vandq_s8(vaddq_s64(v289, v289), v292)), v297);
  v301 = veorq_s8(v296, v240);
  v302 = vdupq_n_s64(0xE8E0450D5C8F41CCLL);
  v303 = veorq_s8(vaddq_s64(vsubq_s64(v291, vandq_s8(vaddq_s64(v291, v291), v292)), v297), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v290, vandq_s8(vaddq_s64(v290, v290), v292)), v297), v302);
  v305 = veorq_s8(v300, v302);
  v306 = veorq_s8(v295, v235);
  v307 = veorq_s8(v299, v302);
  v308 = vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v310 = veorq_s8(v294, v231);
  v311 = vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL);
  v312 = veorq_s8(v307, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v313 = veorq_s8(v305, v311);
  v314 = veorq_s8(v304, v309);
  v315 = vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL);
  v316 = veorq_s8(v298, v251);
  v317 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v318 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v319 = veorq_s8(v303, v308);
  v320 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v321 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v322 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v323 = vaddq_s64(v317, v313);
  v324 = vaddq_s64(v315, v312);
  v325 = vdupq_n_s64(0x923A0997826215EALL);
  v326 = veorq_s8(v324, v325);
  v327 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v328 = veorq_s8(v323, v325);
  v329 = veorq_s8(vaddq_s64(v318, v314), v325);
  v330 = veorq_s8(vaddq_s64(v321, v319), v325);
  v331 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v333 = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  v334 = vaddq_s64(v322, v306);
  v335 = vaddq_s64(v320, v301);
  v336 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v337 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL));
  v338 = veorq_s8(v328, vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL));
  v339 = veorq_s8(v326, v331);
  v340 = vaddq_s64(v332, v316);
  v341 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v342 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v343 = veorq_s8(v335, v333);
  v344 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v339);
  v345 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), v337);
  v346 = vdupq_n_s64(0xBC2FE40086982889);
  v347 = veorq_s8(vaddq_s64(v341, v336), v346);
  v348 = veorq_s8(v345, v346);
  v349 = veorq_s8(vaddq_s64(v342, v338), v346);
  v350 = veorq_s8(v344, v346);
  v351 = vshlq_u64(veorq_s8(vaddq_s64(v327, v310), v333), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v34)));
  v352 = veorq_s8(v350, vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL));
  v353 = vshlq_u64(veorq_s8(v334, v333), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v34)));
  v354 = vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL);
  v355 = vshlq_u64(v343, vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v34)));
  v356 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL)));
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL)));
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v349, 0x38uLL), v349, 8uLL), veorq_s8(v349, vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL)));
  v359 = vshlq_u64(veorq_s8(v340, v333), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v34)));
  v360 = vaddq_s64(v354, v352);
  v361 = vdupq_n_s64(0xE4A245799371E26BLL);
  v362 = vorrq_s8(v360, v361);
  v363 = vdupq_n_s64(v27);
  v364 = vsubq_s64(vorrq_s8(v356, v361), vorrq_s8(v356, v363));
  v365 = vaddq_s64(vsubq_s64(vorrq_s8(v358, v361), vorrq_s8(v358, v363)), v363);
  v366 = vaddq_s64(vsubq_s64(vorrq_s8(v357, v361), vorrq_s8(v357, v363)), v363);
  v367 = vdupq_n_s64(0x9C8086D4E49D1730);
  v368 = vandq_s8(vshlq_n_s64(v30, 3uLL), v34);
  v369 = vandq_s8(vshlq_n_s64(*&STACK[0x5C0], 3uLL), v34);
  v370 = vandq_s8(vshlq_n_s64(*&STACK[0x5B0], 3uLL), v34);
  v371 = vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v34));
  v372 = veorq_s8(vaddq_s64(vsubq_s64(v362, vorrq_s8(v360, v363)), v363), v367);
  v373 = vshlq_u64(veorq_s8(v365, v367), vnegq_s64(v370));
  v374 = vshlq_u64(veorq_s8(v366, v367), vnegq_s64(v369));
  v376.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v364, v363), v367), vnegq_s64(v368)), v355);
  v376.val[1] = veorq_s8(v374, v353);
  v376.val[0] = veorq_s8(v373, v351);
  v376.val[2] = veorq_s8(vshlq_u64(v372, v371), v359);
  *(a6 + v19 + a4 - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v376, xmmword_1002A9AA0)), *(a3 + v19 - 7));
  return (*(STACK[0x5E0] + 8 * ((61 * (v13 != v9)) ^ v22)))();
}

uint64_t sub_100163048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  v51 = (18 * (v50 ^ 0x6C2) - 1295835134) & 0x4D3CDFFC;
  v52 = a50 == LODWORD(STACK[0x590]);
  LODWORD(STACK[0x5C0]) = v51;
  return (*(STACK[0x5E0] + 8 * (((v51 + 2698) * v52) ^ v50)))(a1, 0xF837371F58F9BF6CLL, 0x1BF086EE80E068F2, a4, a5, a6, 0xBC2FE40086982889);
}

uint64_t sub_1001631C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = (v12 - 738777650);
  v24 = STACK[0x5D0] + v23;
  v25 = a5 + v23 + a3;
  v26 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (v16 - v26) & a4 | (v26 + v9) & 0x744551B33C76D2ALL;
  v28 = v27 ^ v14;
  v29 = v27 ^ v13;
  v30 = (__ROR8__(v28, 8) + v29) ^ v7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (a7 - ((v32 + v31) | a7) + ((v32 + v31) | v18)) ^ 0x9A70B1A0F5DDA84;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v15;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v11;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = ((a1 | (2 * (v39 + v38))) - (v39 + v38) - 0x7C1B9B8FAC7CDFB6) ^ 0x3F7B939D4CDF8FC5;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = (v17 - v43) & 0xED72F297E808ACF8 | (v43 + a2) & 0x128D0D6817F75307;
  v45 = v44 ^ 0xC5F5F189513C3D42;
  v44 ^= 0x1A71C6FD563F7AD4uLL;
  v46 = (__ROR8__(v45, 8) + v44) ^ v22;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = ((2 * (v48 + v47)) | 0x6604FF7B30B3B3E2) - (v48 + v47);
  v50 = (((2 * (v42 + v41)) & 0x3D50F30F384595A6) - (v42 + v41) - 0x1EA879879C22CAD4) ^ v19;
  v51 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v41, 61));
  v52 = (v49 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9 ^ __ROR8__(v47, 61);
  v53 = __ROR8__((v49 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9, 8);
  v54 = __ROR8__((((2 * (v53 + v52)) & 0x26C3D91CAAAAC0CCLL) - (v53 + v52) + 0x6C9E1371AAAA9F99) ^ 0xFC8F779185D73647, 8);
  v55 = (((2 * (v53 + v52)) & 0x26C3D91CAAAAC0CCLL) - (v53 + v52) + 0x6C9E1371AAAA9F99) ^ 0xFC8F779185D73647 ^ __ROR8__(v52, 61);
  v56 = (v54 + v55 - ((2 * (v54 + v55)) & 0x8429C13B901A7D44) - 0x3DEB1F6237F2C15ELL) ^ 0xE8E0450D5C8F41CCLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v20;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ a6;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  *v25 = (((v8 - ((v62 + v61) | v8) + ((v62 + v61) | 0xE4A245799371E26BLL)) ^ 0x9C8086D4E49D1730) >> (8 * (v25 & 7u))) ^ ((v51 ^ 0xF03E4241B0D5EBFELL) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(STACK[0x5E0] + 8 * ((210 * (v12 - 1 == v21)) ^ v10)))();
}

uint64_t sub_100163584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 - 232) = (v11 - 2148) ^ (1949688233 * (((((v12 - 232) | 0xE75750EE) ^ 0xFFFFFFFE) - (~(v12 - 232) | 0x18A8AF11)) ^ 0xFFEFF99A));
  v13 = (*(a8 + 8 * (v11 + 895)))(v12 - 232);
  v14 = STACK[0x5E0];
  v15 = *(v12 - 224);
  *(v10 + v9 - 1504048534) = v15 ^ 0x31;
  *(v10 + v9 + ((v11 - 481937323) ^ 0xFFFFFFFF451C5418)) = (v11 + 85) & 0x9F ^ BYTE1(v15) ^ 0x98;
  return (*(v14 + 8 * ((62 * (v10 != v8 + 14)) ^ v11)))(v13);
}

uint64_t sub_100163660@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  *(v5 + v4 + v3 + 302) = BYTE2(a2) ^ 0x32;
  *(v3 + ((((v6 + 2735) | 0xE09u) - 1504056723) ^ (v6 - 345583284) & 0x14992BF5) + v4) = HIBYTE(a2) ^ 0xAF;
  return (*(a1 + 8 * (v6 ^ (163 * (v4 == v2 + 12)))))();
}

uint64_t sub_1001636E0@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v3 + 304) = BYTE4(a2) ^ 0xEB;
  *(v3 + 305) = BYTE5(a2) ^ v2 ^ 0x9E ^ 0xCC;
  return (*(a1 + 8 * ((25 * (v4 == (((v2 + 1342) | 0x3A0u) ^ 0x59A5D209))) ^ v2)))();
}

uint64_t sub_100163740@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v6 + v5 + v4 + 306) = BYTE6(a2) ^ 0xDB;
  *(v4 + ((v2 - 974948522) & 0x3A1C7397 ^ (v6 + 4008)) + v5) = HIBYTE(a2) ^ 0x1A;
  return (*(a1 + 8 * (v2 ^ (119 * (v5 + 8 != v3 + 16)))))();
}

uint64_t sub_100163874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x608];
  STACK[0x850] = STACK[0x608];
  v11 = STACK[0x8D0] + 0x39098F4696F66D3FLL;
  v12 = *(STACK[0x8D0] - 0x1138F6A92264F40ELL);
  v13 = STACK[0x650];
  v14 = *(STACK[0x8D0] - 0x1138F6A92264F422) ^ 0x83B591D1;
  v15 = 260688507 * LODWORD(STACK[0x7BC]) + 627694782;
  v16 = 295004707 * ((((v9 - 232) | 0x54E18301) - ((v9 - 232) & 0x54E18301)) ^ 0x3CBE379C);
  *(v9 - 232) = (v8 ^ 0x742) - v16 + 5489;
  *(v9 - 192) = -295004707 * ((((v9 - 232) | 0x54E18301) - ((v9 - 232) & 0x54E18301)) ^ 0x3CBE379C) + v14 * (((v8 ^ 0x742) - 334154168) & 0x13EACE75 ^ 0x599D19B9) + 441289160;
  *(v9 - 184) = v10;
  *(v9 - 216) = 831984264 - v16;
  *(v9 - 212) = v15 ^ v16;
  *(v9 - 224) = v10;
  *(v9 - 208) = v13;
  *(v9 - 200) = v11;
  *(v9 - 176) = v16 + (v12 ^ 0x4EC0A668) + 2008973119 + (((((v8 ^ 0x742) - 1801) | 0x92) ^ 0xFC876525) & (2 * v12) ^ 0x6006230A);
  v17 = (*(a8 + 8 * ((v8 ^ 0x742) + 8194)))(v9 - 232);
  return (*(STACK[0x5E0] + 8 * ((7764 * (*(v9 - 228) == 68588956)) ^ v8 ^ 0x742)))(v17);
}

uint64_t sub_100163B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x8D0];
  STACK[0xDC8] = STACK[0x8D0];
  v10 = *(v9 - 0x1138F6A92264F472);
  if (v10 == 408423770)
  {
    return (*(a8 + 8 * (((v8 - 723) ^ 0x1E15) + v8 - 2898)))();
  }

  if (v10 == 408423771)
  {
    LODWORD(STACK[0xD48]) = (v8 + 512421289) & 0xE1751FEA;
    LODWORD(STACK[0xD4C]) = v8 - 3550;
    v11 = STACK[0x610];
    STACK[0xD50] = STACK[0x610];
    STACK[0xD18] = v11;
    LOBYTE(STACK[0xD17]) = 0;
    v12 = *(a8 + 8 * (v8 ^ 0x2719));
    STACK[0xD08] = 32;
    STACK[0xD00] = v12;
    return (*(a8 + 8 * (v8 ^ 0x2774)))();
  }

  else
  {
    v14 = *(a8 + 8 * (v8 - 2831));
    LODWORD(STACK[0x6D8]) = 68545952;
    STACK[0x998] = v14;
    return (*(a8 + 8 * (v8 - 1040)))();
  }
}

uint64_t sub_100163DAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 + 8 * (v10 + 2227));
  STACK[0x2A0] = a3;
  LODWORD(STACK[0x290]) = v8;
  v12 = v11((v9 - v8 - 2039067451));
  return (*(STACK[0x5E0] + 8 * ((((36 * (((v10 - 2108) | 0x148) ^ 0x19BF)) ^ 0xFF1) * (v12 != 0)) ^ v10)))();
}

uint64_t sub_100163E28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x270] = v13;
  STACK[0x280] = v12;
  STACK[0x2E0] = a1;
  LODWORD(STACK[0x250]) = 11 - v9;
  LODWORD(STACK[0x260]) = v11 - 1562800797;
  LODWORD(STACK[0x390]) = 1861873246;
  return (*(a8 + 8 * ((((3 * ((v10 - 2142151326) & 0x7FAEAEDF ^ 0x20CB)) ^ 0x174A) * (*(v8 - 0x5A0411E37F4B9882) == 0x51CE20ABD81C933BLL)) ^ v10)))();
}

uint64_t sub_100163EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x390]) - 1861876169;
  v10 = STACK[0x2E0];
  *(((2 * (v9 + ((v8 - 4637) | 0x903u))) & 0x1BE33FEDELL) + ((v9 + ((v8 - 4637) | 0x903u)) ^ 0x6FFF7AD7DF19FF6FLL) + STACK[0x2E0] - 0x6FFF7AD7DF19FF6FLL) = 0;
  *(((2 * (v9 + 2927)) & 0x17FFBC3FCLL) + ((v9 + 2927) ^ 0xF4EF9FE7BFFDE1FELL) + v10 + 0xB10601840021E02) = -9392;
  v11 = (16 - LODWORD(STACK[0x290]));
  v12 = STACK[0x290] & 0xFFFFFFCF | (16 * ((((16 - LOBYTE(STACK[0x290])) & 0x18 ^ STACK[0x250] & 8) >> 3) & 3));
  v13 = ((2 * (v9 + 2929)) & 0x1BC7B6DFELL) + ((v9 + 2929) ^ 0xFBDFF997DE3DB6FFLL) + v10 + 0x420066821C24901;
  *v13 = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = (0x80 - v12) ^ 0x70;
  return (*(a8 + 8 * (v8 ^ (49 * ((v11 ^ 0x757F3F9FAF9FEDDFLL) + 2 * v11 == 0x757F3F9FAF9FEDDFLL)))))();
}

uint64_t sub_100164058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *STACK[0x270] = a1;
  *STACK[0x280] = STACK[0x260];
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1001640C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x5F0] = STACK[0x620];
  LODWORD(STACK[0x83C]) = STACK[0x7FC];
  return (*(a8 + 8 * v8))(a1, a2, a3, a4, 68588956);
}

uint64_t sub_100164160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 101 * (v9 ^ 0x1DE6) - *(v8 - 0x51CE20ABD81C932BLL) - 1997714488;
  v12 = v10 - 1725326369 > v11;
  v13 = ((v10 - 1725326369) < 0x12B34F34) ^ (v11 < ((v9 - 883318339) & 0x34A664DDu) + 313731799);
  v14 = v12;
  if (v13)
  {
    v15 = (v10 - 1725326369) < 0x12B34F34;
  }

  else
  {
    v15 = v14;
  }

  return (*(a8 + 8 * ((23 * v15) ^ v9)))();
}

uint64_t sub_100164218@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v6 = v5 < v3;
  *(v4 + a2) = 0;
  v7 = a2 + 1;
  if (v6 == v7 > 0xFFFFFFFF4DA035E0)
  {
    v6 = v7 + v3 < v5;
  }

  return (*(a1 + 8 * ((!v6 * (((v2 - 4965) | 0xA4B) - 2874)) ^ v2)))();
}

uint64_t sub_10016427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * v8);
  v10 = STACK[0x2E0];
  STACK[0x230] = STACK[0x2E0] - 15;
  STACK[0x240] = v10 - 7;
  *&STACK[0x3E0] = xmmword_1002A9AB0;
  *&STACK[0x380] = xmmword_1002A9AA0;
  *&STACK[0x400] = vdupq_n_s64(0x3D3293A6FD59897EuLL);
  *&STACK[0x5A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x360] = vdupq_n_s64(0x38uLL);
  *&STACK[0x590] = vdupq_n_s64(0x1B72AFF70A6DE3F8uLL);
  *&STACK[0x4D0] = vdupq_n_s64(0x994EA89453F324DALL);
  *&STACK[0x4C0] = vdupq_n_s64(0x5F6C432483AE0E2CuLL);
  *&STACK[0x4B0] = vdupq_n_s64(0xCE8E74F140203A82);
  *&STACK[0x580] = vdupq_n_s64(0x1329D67F5E8BA89AuLL);
  *&STACK[0x570] = vdupq_n_s64(0xB581C077348D623CLL);
  *&STACK[0x560] = vdupq_n_s64(0xC2CD6C5902A67681);
  *&STACK[0x4A0] = vdupq_n_s64(0x5049DE6DBE28F8E9uLL);
  *&STACK[0x550] = vdupq_n_s64(0xD699DB6D7570100CLL);
  *&STACK[0x540] = vdupq_n_s64(0x14B312494547F7FAuLL);
  *&STACK[0x530] = vdupq_n_s64(0x1030028110482010uLL);
  *&STACK[0x520] = vdupq_n_s64(0x91B223A9B4483437);
  *&STACK[0x490] = vdupq_n_s64(0x96518B1852248A0DLL);
  *&STACK[0x480] = vdupq_n_s64(0x8D2F9998CE0730C9);
  *&STACK[0x470] = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  *&STACK[0x430] = vdupq_n_s64(0x3982B236AA56861AuLL);
  *&STACK[0x5B0] = vdupq_n_s64(0xED2B4AEB99146DB4);
  *&STACK[0x420] = vdupq_n_s64(0xBE5E37862CF662F3);
  *&STACK[0x3F0] = vdupq_n_s64(0x961846080CFECC64);
  *&STACK[0x510] = vdupq_n_s64(0x4E405C160AB740C9uLL);
  *&STACK[0x410] = vdupq_n_s64(0x6E4DDC564BB7CBC8uLL);
  return v9();
}

uint64_t sub_10016460C@<X0>(int a1@<W1>, char a2@<W5>, uint64_t a3@<X7>, int a4@<W8>)
{
  v9 = *(v8 - 0x51CE20ABD81C932BLL) - ((a1 + 2 * *(v8 - 0x51CE20ABD81C932BLL)) & v6) + 926502059;
  v10 = ((a4 + v4) ^ v5 ^ 0x5A649F90 ^ (v9 << ((a4 + v4) & a2 ^ 0x1D)) & 0xFB7CD93A) + (v9 ^ 0x50CD3BE9) + 536723315;
  LODWORD(STACK[0x350]) = v10;
  return (*(a3 + 8 * ((4072 * (v10 == v7)) ^ a4)))();
}

uint64_t sub_1001646AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x330] = v11;
  STACK[0x5D0] = *(v11 - 0x51CE20ABD81C9323);
  STACK[0x5C0] = ((LODWORD(STACK[0x390]) - 1861873246) ^ 0xFF7FF5E76BF7F90BLL ^ (v8 - 1854)) + ((2 * (LODWORD(STACK[0x390]) - 1861873246)) & 0xD7EFD2E2) + ((v8 + 2202) ^ 0x800A18940836DDLL);
  LODWORD(STACK[0x2C0]) = v9;
  LODWORD(STACK[0x2B0]) = v10;
  v12 = v10 + v9 + 37852003;
  LODWORD(STACK[0x310]) = v12;
  return (*(a8 + 8 * (v8 ^ (126 * (v12 > 7)))))(STACK[0x2E0], 3796095983, a3, a4, a5, 0x5EEE4453CA35DABALL, a7, LODWORD(STACK[0x350]));
}

uint64_t sub_100164890@<X0>(int a1@<W8>)
{
  v1 = a1 + 5466;
  v2 = *(STACK[0x5E0] + 8 * (a1 + 5466));
  LODWORD(STACK[0x370]) = (13 * (v1 ^ 0x17E4)) ^ 0xE243F366;
  return v2();
}

uint64_t sub_10016493C(int a1, int a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, int8x16_t a11, uint64_t a12, int a13)
{
  v29 = (v28 + a13 + 16);
  v30.i64[0] = v14 + (v26 + a13 + 16);
  v31.i64[0] = v14 + v29;
  v31.i64[1] = v14 + (v27 + a13 + 16);
  v32 = v31;
  *&STACK[0x3B0] = v31;
  v30.i64[1] = v14 + (v25 + a13 + 16);
  v33.i64[0] = v14 + (a3 + a13 + 16);
  v31.i64[0] = v14 + (v22 + a13 + 16);
  v33.i64[1] = v14 + (v23 + a13 + 16);
  v31.i64[1] = v14 + (v21 + a13 + 16);
  *&STACK[0x500] = v31;
  v31.i64[0] = v14 + (v20 + a13 + 16);
  v31.i64[1] = v14 + (v19 + a13 + 16);
  *&STACK[0x4F0] = v31;
  v31.i64[0] = v14 + (v17 + a13 + LODWORD(STACK[0x370]) + 16);
  v31.i64[1] = v14 + (v24 + a13 + 16);
  v34 = v31;
  *&STACK[0x3C0] = v31;
  v35 = vandq_s8(v33, a11);
  v36 = vandq_s8(v30, a11);
  v37 = vandq_s8(v32, a11);
  v38 = vandq_s8(v34, a11);
  v39 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v43 = *&STACK[0x5B0];
  v44 = *&STACK[0x3F0];
  *&STACK[0x3D0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v42, v42), *&STACK[0x5B0]), *&STACK[0x3F0]), v42);
  v45 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v39, v39), v43), v44), v39);
  v46 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v41, v41), v43), v44), v41), *&STACK[0x420]);
  v47 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v40, v40), v43), v44), v40), *&STACK[0x420]);
  v48 = *&STACK[0x420];
  v49 = *&STACK[0x430];
  v50 = veorq_s8(v47, *&STACK[0x430]);
  v51 = veorq_s8(v46, *&STACK[0x430]);
  v52 = *&STACK[0x480];
  v53 = veorq_s8(v46, *&STACK[0x480]);
  v54 = veorq_s8(v47, *&STACK[0x480]);
  v55 = *&STACK[0x470];
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v53), *&STACK[0x470]);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54), *&STACK[0x470]);
  v60 = veorq_s8(v59, v58);
  v61 = veorq_s8(v56, v57);
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v61);
  v64 = *&STACK[0x490];
  v65 = veorq_s8(vaddq_s64(v62, v60), *&STACK[0x490]);
  v66 = veorq_s8(v63, *&STACK[0x490]);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67);
  v71 = *&STACK[0x410];
  v72 = *&STACK[0x510];
  v43.i64[0] = -1;
  v43.i64[1] = -1;
  v73 = *&STACK[0x4D0];
  v74 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v70, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v70, *&STACK[0x410]), *&STACK[0x510])), v43), *&STACK[0x4D0]);
  v75 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v69, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v69, *&STACK[0x410]), *&STACK[0x510])), v43), *&STACK[0x4D0]);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v76);
  v80 = *&STACK[0x560];
  v81 = *&STACK[0x400];
  v82 = *&STACK[0x4B0];
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, *&STACK[0x560]), vorrq_s8(v78, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x4B0]);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, *&STACK[0x560]), vorrq_s8(v79, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x4B0]);
  v85 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v87 = veorq_s8(v83, v85);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v86);
  v90 = *&STACK[0x4C0];
  v91 = *&STACK[0x4A0];
  v92 = *&STACK[0x580];
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), *&STACK[0x4C0]), v89), *&STACK[0x4A0]), *&STACK[0x580]);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), *&STACK[0x4C0]), v88), *&STACK[0x4A0]), *&STACK[0x580]);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v96 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v96);
  v99 = *&STACK[0x570];
  v100 = veorq_s8(vaddq_s64(v97, v95), *&STACK[0x570]);
  v101 = veorq_s8(v98, *&STACK[0x570]);
  v102 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v103 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v104 = veorq_s8(v100, v102);
  v105 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v100.i64[0] = v14 + (v18 + a13 + 16);
  v100.i64[1] = v14 + (a6 + a13 + 16);
  *&STACK[0x4E0] = v100;
  v107 = v48;
  v108 = vaddq_s64(v45, v48);
  v109 = vaddq_s64(v106, v104);
  v110 = vaddq_s64(v105, v103);
  v111 = *&STACK[0x360];
  v263.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), *&STACK[0x550]), v109), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x360])));
  v263.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v110, v110), *&STACK[0x550]), v110), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), *&STACK[0x360])));
  v112 = veorq_s8(v108, v49);
  v113 = veorq_s8(v108, v52);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v55);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v64);
  v118 = veorq_s8(v117, v116);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = *&STACK[0x520];
  v121 = *&STACK[0x530];
  v110.i64[0] = -1;
  v110.i64[1] = -1;
  v122 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v119, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v119, v71), v72)), v110), v73);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v80), vorrq_s8(v124, v81)), v81), v82);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = v91;
  v129 = v92;
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v90), v127), v91), v92);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v132 = v99;
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v99);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v131.i64[0] = v14 + (a5 + a13 + 16);
  v131.i64[1] = v14 + (a4 + a13 + 16);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x550]), v135);
  v137 = vandq_s8(v131, *&STACK[0x5A0]);
  v138 = vaddq_s64(*&STACK[0x3D0], v48);
  v263.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v136, *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), *&STACK[0x360])));
  v139 = veorq_s8(v138, v49);
  v140 = veorq_s8(v138, v52);
  v141 = v52;
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v55);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v64);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v52.i64[0] = -1;
  v52.i64[1] = -1;
  v147 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v146, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v146, v71), v72)), v52), v73);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, v80), vorrq_s8(v149, v81)), v81), v82);
  v151 = v82;
  v152 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v152);
  v154 = v128;
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), v90), v153), v128), v129);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), v132);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v160 = vandq_s8(*&STACK[0x4E0], *&STACK[0x5A0]);
  v161 = vaddq_s64(v159, v158);
  v162 = vandq_s8(*&STACK[0x4F0], *&STACK[0x5A0]);
  v263.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), *&STACK[0x550]), v161), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), *&STACK[0x360])));
  v163 = vandq_s8(*&STACK[0x500], *&STACK[0x5A0]);
  v164 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v168 = *&STACK[0x5B0];
  v169 = *&STACK[0x3F0];
  v170 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v164, v164), *&STACK[0x5B0]), *&STACK[0x3F0]), v164);
  *&STACK[0x3C0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v165, v165), *&STACK[0x5B0]), *&STACK[0x3F0]), v165);
  *&STACK[0x3D0] = v170;
  v171 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v167, v167), v168), v169), v167), v107);
  v172 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v166, v166), v168), v169), v166), v107);
  v166.i64[0] = vqtbl4q_s8(v263, *&STACK[0x3E0]).u64[0];
  v173 = veorq_s8(v172, v49);
  v174 = veorq_s8(v171, v49);
  v175 = veorq_s8(v171, v141);
  v176 = veorq_s8(v172, v141);
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v55);
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v176), v55);
  v179 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v180 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v181 = veorq_s8(v177, v179);
  v182 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v181);
  v184 = veorq_s8(vaddq_s64(v182, v180), v64);
  v185 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v186 = veorq_s8(v183, v64);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v188 = veorq_s8(v184, v185);
  v189 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v188);
  v191 = vaddq_s64(v189, v187);
  v192 = v81;
  v193 = v121;
  v189.i64[0] = -1;
  v189.i64[1] = -1;
  v194 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v191, v120), v121), veorq_s8(vandq_s8(v191, v71), *&STACK[0x510])), v189), v73);
  v195 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v190, v120), v121), veorq_s8(vandq_s8(v190, v71), *&STACK[0x510])), v189), v73);
  v196 = v73;
  v197 = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v198 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v199 = veorq_s8(v194, v197);
  v200 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v199);
  v202 = vaddq_s64(v200, v198);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v201, *&STACK[0x560]), vorrq_s8(v201, v81)), v81), v151);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202, *&STACK[0x560]), vorrq_s8(v202, v81)), v81), v151);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v206 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v206);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205);
  v209 = v154;
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v208, v208), v90), v208), v154), *&STACK[0x580]);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207, v207), v90), v207), v154), *&STACK[0x580]);
  v212 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v213 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v214 = veorq_s8(v210, v212);
  v215 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v214);
  v217 = veorq_s8(vaddq_s64(v215, v213), *&STACK[0x570]);
  v218 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v219 = veorq_s8(v216, *&STACK[0x570]);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v221 = veorq_s8(v217, v218);
  v222 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v223 = vaddq_s64(*&STACK[0x3C0], v107);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v221);
  v225 = vaddq_s64(v222, v220);
  v262.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v224, v224), *&STACK[0x550]), v224), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v131, 3uLL), v111)));
  v262.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v225, v225), *&STACK[0x550]), v225), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4E0], 3uLL), v111)));
  v226 = veorq_s8(v223, v49);
  v227 = veorq_s8(v223, v141);
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), v55);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), v64);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231);
  v154.i64[0] = -1;
  v154.i64[1] = -1;
  v233 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v232, v120), v193), veorq_s8(vandq_s8(v232, v71), *&STACK[0x510])), v154), v196);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v235 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235, *&STACK[0x560]), vorrq_s8(v235, v192)), v192), v151);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v238, v238), v90), v238), v209), *&STACK[0x580]);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), *&STACK[0x570]);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL)));
  v243 = vaddq_s64(*&STACK[0x3D0], v107);
  v262.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v242, v242), *&STACK[0x550]), v242), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4F0], 3uLL), v111)));
  v244 = veorq_s8(v243, v49);
  v245 = veorq_s8(v243, v141);
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), v55);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), v64);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249);
  v251 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v250, v120), v193), veorq_s8(vandq_s8(v250, v71), *&STACK[0x510])), v154), v196);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252);
  v254 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v253, *&STACK[0x560]), vorrq_s8(v253, v192)), v192), v151);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255);
  v257 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v256, v256), v90), v256), v209), *&STACK[0x580]);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), *&STACK[0x570]);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL)));
  v262.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v260, v260), *&STACK[0x550]), v260), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x500], 3uLL), v111)));
  v166.i64[1] = vqtbl4q_s8(v262, *&STACK[0x3E0]).u64[0];
  v262.val[1] = vrev64q_s8(v166);
  *(v13 + v29 + v15) = veorq_s8(vextq_s8(v262.val[1], v262.val[1], 8uLL), *(v14 + v29 - 15));
  return (*(STACK[0x5E0] + 8 * (((a2 == a13) * v16) ^ a1)))();
}

uint64_t sub_1001657D0@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W8>, int8x16_t a7@<Q4>)
{
  v19 = (a3 + v8 + 8);
  v20.i64[0] = v9 + v19;
  v20.i64[1] = v9 + (v14 + v8 + 8);
  v21.i64[0] = v9 + (v16 + v8 + 8);
  v21.i64[1] = v9 + (v7 + v8 + 8);
  v22.i64[0] = v9 + (v11 + v8 + 8);
  v23.i64[0] = v9 + (a4 + v8 + 8);
  v23.i64[1] = v9 + (a2 + v8 + 8);
  v22.i64[1] = v9 + a5 + v8 + (((v12 + 1186) | v13) ^ a1) + 8;
  *&STACK[0x500] = v22;
  v24 = vandq_s8(v23, a7);
  v25 = vandq_s8(v21, a7);
  v26 = vandq_s8(v20, a7);
  v27 = vandq_s8(v22, a7);
  v28 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v29 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  *&STACK[0x4F0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v30, v30), v18), v17), v30);
  v32 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v28, v28), v18), v17), v28);
  v33 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v31, v31), v18), v17), v31), *&STACK[0x420]);
  v34 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v29, v29), v18), v17), v29), *&STACK[0x420]);
  v35 = veorq_s8(v34, *&STACK[0x430]);
  v36 = veorq_s8(v33, *&STACK[0x430]);
  v37 = veorq_s8(v33, *&STACK[0x480]);
  v38 = veorq_s8(v34, *&STACK[0x480]);
  v39 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v37), *&STACK[0x470]);
  v40 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v38), *&STACK[0x470]);
  v41 = vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL);
  v42 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v43 = veorq_s8(v39, v41);
  v44 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v43);
  v46 = veorq_s8(vaddq_s64(v44, v42), *&STACK[0x490]);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v48 = veorq_s8(v45, *&STACK[0x490]);
  v49 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v50 = veorq_s8(v46, v47);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = vaddq_s64(v51, v49);
  v51.i64[0] = -1;
  v51.i64[1] = -1;
  v54 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v53, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v53, *&STACK[0x410]), *&STACK[0x510])), v51), *&STACK[0x4D0]);
  v55 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v52, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v52, *&STACK[0x410]), *&STACK[0x510])), v51), *&STACK[0x4D0]);
  v56 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, *&STACK[0x560]), vorrq_s8(v60, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x4B0]);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, *&STACK[0x560]), vorrq_s8(v61, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x4B0]);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), *&STACK[0x4C0]), v67), *&STACK[0x4A0]), *&STACK[0x580]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), *&STACK[0x4C0]), v66), *&STACK[0x4A0]), *&STACK[0x580]);
  v70 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), *&STACK[0x570]);
  v76 = veorq_s8(v74, *&STACK[0x570]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v81 = vdupq_n_s64(0x38uLL);
  v82 = vaddq_s64(v32, *&STACK[0x420]);
  v83 = vaddq_s64(v80, v78);
  v84 = vaddq_s64(v79, v77);
  v121.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), *&STACK[0x550]), v83), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v81)));
  v121.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), *&STACK[0x550]), v84), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v81)));
  v85 = veorq_s8(v82, *&STACK[0x430]);
  v86 = veorq_s8(v82, *&STACK[0x480]);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x470]);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), *&STACK[0x490]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v21.i64[0] = -1;
  v21.i64[1] = -1;
  v92 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v91, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v91, *&STACK[0x410]), *&STACK[0x510])), v21), *&STACK[0x4D0]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, *&STACK[0x560]), vorrq_s8(v94, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x4B0]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), *&STACK[0x4C0]), v97), *&STACK[0x4A0]), *&STACK[0x580]);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), *&STACK[0x570]);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL)));
  v102 = vaddq_s64(*&STACK[0x4F0], *&STACK[0x420]);
  v121.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x550]), v101), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v81)));
  v103 = veorq_s8(v102, *&STACK[0x430]);
  v104 = veorq_s8(v102, *&STACK[0x480]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), *&STACK[0x470]);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x490]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v109, *&STACK[0x520]), *&STACK[0x530]), veorq_s8(vandq_s8(v109, *&STACK[0x410]), *&STACK[0x510])), v21), *&STACK[0x4D0]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, *&STACK[0x560]), vorrq_s8(v112, *&STACK[0x400])), *&STACK[0x400]), *&STACK[0x4B0]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), *&STACK[0x4C0]), v115), *&STACK[0x4A0]), *&STACK[0x580]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), *&STACK[0x570]);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL)));
  v121.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), *&STACK[0x550]), v119), *&STACK[0x540]), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x500], 3uLL), v81)));
  *(v15 + v19 + v10) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v121, *&STACK[0x380])), *(v9 + v19 - 7));
  return (*(STACK[0x5E0] + 8 * ((252 * (a6 == v8)) ^ v12)))();
}

uint64_t sub_100165F94(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v22 = (a8 + a2);
  v23 = STACK[0x5D0] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (v8 ^ v20) + v10 + ((2 * v24 - 0x12D4B51466EB924CLL) & v21) - v24;
  v26 = v25 ^ 0x3982B236AA56861ALL;
  v25 ^= 0x8D2F9998CE0730C9;
  v27 = (__ROR8__(v26, 8) + v25) ^ a6;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v17;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (((v30 + v31) & 0x91B223A9B4483437 ^ v18) + ((v30 + v31) & 0x6E4DDC564BB7CBC8 ^ v19) - 1) ^ v13;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v11 - ((v34 + v33) | v11) + ((v34 + v33) | v16)) ^ v12;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((a7 & (2 * (v37 + v36))) - (v37 + v36) + v14) ^ a3;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xB581C077348D623CLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *(a1 + v22 + STACK[0x5C0]) = ((((a4 | (2 * (v42 + v41))) - (v42 + v41) + a5) ^ v15) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(STACK[0x5E0] + 8 * (((a8 != 498871313) * v9) ^ v8)))();
}

uint64_t sub_1001661A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x934]) = a5;
  STACK[0x9E8] = *(a8 + 8 * (v8 - 2943));
  return (*(a8 + 8 * ((v8 - 1654) ^ (v8 - 2943))))();
}

uint64_t sub_100166260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 232) = (v8 - 1995820448) ^ (251922329 * ((-642371447 - ((v9 - 232) | 0xD9B63089) + ((v9 - 232) | 0x2649CF76)) ^ 0x2BEA677C));
  v10 = (*(a8 + 8 * (v8 + 840)))(v9 - 232);
  return (*(STACK[0x5E0] + 8 * ((202 * (*(v9 - 228) != (((v8 + 22) & 0xB7) + 67))) ^ v8)))(v10);
}

uint64_t sub_10016631C()
{
  v6 = 199319723 * ((2 * ((v5 - 232) & 0x6A553698) - (v5 - 232) - 1783969434) ^ 0x205A27AE);
  *(v5 - 224) = v1;
  *(v5 - 232) = v6 + v4 + 423;
  *(v5 - 208) = v2;
  *(v5 - 216) = v3 - v6 + v4 + 267710650;
  v7 = (*(v0 + 8 * ((v4 - 5682) ^ 0x398E)))(v5 - 232);
  return (*(STACK[0x5E0] + 8 * (v4 - 5682)))(v7);
}

uint64_t sub_1001663C0()
{
  v6 = 1084270361 * ((v5 + 466931305 - 2 * ((v5 - 232) & 0x1BD4CF51)) ^ 0xD7FD304B);
  *(v5 - 208) = v1;
  *(v5 - 216) = v2 - v6 - 2268;
  *(v5 - 232) = v4 - v6 + ((v2 - 593) ^ 0x5BA7549F);
  *(v5 - 224) = v3;
  v7 = (*(v0 + 8 * (v2 ^ 0x3A2F)))(v5 - 232);
  return (*(STACK[0x5E0] + 8 * v2))(v7);
}

uint64_t sub_1001664A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x9A8] = v9;
  LODWORD(STACK[0x814]) = v10;
  STACK[0x710] = 0x510808E226CB14FCLL;
  LODWORD(STACK[0x6C4]) = 1443455193;
  LODWORD(STACK[0x75C]) = 1443455193;
  STACK[0x820] = 0x1138F6A92264F486;
  STACK[0xA30] = 0x61CEF89FDDA89DF2;
  return (*(a8 + 8 * ((((v8 - 5882) ^ 0x2850 ^ (v8 - 1979889327) & 0x7602B78B) * (v9 == 0)) ^ v8)))();
}

uint64_t sub_10016659C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = a2 - 2440;
  STACK[0x968] = *(a1 + 8 * v2);
  return (*(a1 + 8 * (((v2 ^ 0x12BC) - 3301) ^ v2)))();
}

uint64_t sub_100166610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v6 = STACK[0x820];
  STACK[0xB10] = STACK[0x820];
  return (*(a5 + 8 * (((((v6 == 0x1138F6A92264F486) ^ (101 * (a6 ^ 0x6B) + 1)) & 1) * (a6 ^ 0x2852)) ^ a6)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_1001666CC@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0xA28] = 0x51CE20ABD81C933BLL;
  STACK[0x728] = 0x2B53B0056F118FE2;
  return (*(a1 + 8 * (((((v2 ^ 0x14E5) + 3614) ^ (909 * (v2 ^ 0x14E5))) * (a2 == v3)) | v2)))();
}

uint64_t sub_100166728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 + 596;
  STACK[0xAF8] = *(a8 + 8 * v9);
  return (*(a8 + 8 * (v9 + (v9 ^ 0x271B) - 7794)))();
}

uint64_t sub_1001667B0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = *(STACK[0xA28] - 0x51CE20ABD81C9323);
  STACK[0x640] = v2;
  return (*(a1 + 8 * (((((v2 == 0) ^ (a2 - 1)) & 1) * (((a2 + 670144903) & 0x580E5C75) - 4045)) ^ a2)))();
}

uint64_t sub_10016683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v8 ^ 0x89C5E506) + v9;
  STACK[0xBB8] = v10;
  v11 = STACK[0x728];
  STACK[0xBC0] = STACK[0x728];
  return (*(a8 + 8 * (((v10 - v11 + 0x2B53B0056F118FE2 > 9) * ((v8 - 3605) ^ 0x815)) ^ v8)))();
}

uint64_t sub_1001668D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x5D8];
  LOWORD(STACK[0xB9E]) = v8;
  v10 = *(v7 + 8 * (v9 - 2047));
  LODWORD(STACK[0x540]) = v8;
  return v10(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t sub_100167030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, uint64_t a58, unint64_t a59)
{
  v60 = STACK[0x5D8] - 493;
  v61 = (v59 - 1443455193) + STACK[0x3E0];
  STACK[0xB58] = v61 + 10;
  v61 -= 0x1A894D2B7C4D20EFLL;
  v62 = v61 < 0xAEEC9D55;
  v63 = v61 > a57;
  if (a59 > 0xFFFFFFFF511362AALL != v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = v63;
  }

  return (*(a8 + 8 * (v60 ^ (245 * v64))))();
}

uint64_t sub_1001670C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = LODWORD(STACK[0x560]);
  if (v10 == 49033)
  {
    return (*(a8 + 8 * ((STACK[0x5D8] - 386) ^ (10791 * (v9 == 1443455197)))))();
  }

  if (v10 == 30757 || (v12 = STACK[0x5D8], v10 == 44155))
  {
    v13 = STACK[0x5D8] - 386;
    STACK[0x6A0] = v8;
    return (*(a8 + 8 * v13))();
  }

  else
  {
    v14 = *(STACK[0x688] - 0x1138F6A92264F486);
    STACK[0x7D8] = 0x51CE20ABD81C933BLL;
    STACK[0x950] = 0x3509456E1919DB56;
    return (*(a8 + 8 * (((v14 == 0x5A0411E37F4B9882) * ((v12 - 3067) ^ 0x1C1)) ^ (v12 + 4039))))(a1, a2, a3, a4, 68545945);
  }
}

uint64_t sub_10016E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x7D8] - 0x51CE20ABD81C9323);
  STACK[0xA68] = v9;
  return (*(a8 + 8 * (((v9 == 0) * ((v8 - 8319) ^ 0x5B2)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10016E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v8 = (v6 + v7 - 1983522631 + 3658);
  STACK[0xC08] = v8;
  v9 = STACK[0x950];
  STACK[0xC10] = STACK[0x950];
  return (*(a5 + 8 * (((v8 - v9 + 0x3509456E1919DB56 > 9) * ((a6 - 926) ^ 0x2434)) ^ a6)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_10016E85C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = *(STACK[0x618] - 0x51CE20ABD81C9323);
  STACK[0xA00] = v2;
  return (*(a1 + 8 * (((v2 == 0) * ((a2 - 501) ^ 0xE69)) ^ a2)))();
}

uint64_t sub_10016E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v8 - 1983515337);
  STACK[0xC18] = v10;
  v11 = STACK[0x8C0];
  STACK[0xC20] = STACK[0x8C0];
  return (*(a8 + 8 * ((5858 * (v10 - v11 + (((((v9 ^ 0x981) - 417) | 0x820u) - 3089) ^ 0x32B41184E608E680) > 9)) ^ v9 ^ 0x981)))();
}

uint64_t sub_10016E954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x870] - 0x1138F6A92264F486);
  STACK[0xAE0] = 0x51CE20ABD81C933BLL;
  STACK[0xAB8] = 0x3A607973E7BFA43ELL;
  return (*(a8 + 8 * (((v9 != 0x5A0411E37F4B9882) * ((v8 - 3160) ^ 0x1E1)) ^ (v8 + 2397))))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10016EA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0xAE0] - 0x51CE20ABD81C9323);
  STACK[0xAD8] = v9;
  return (*(a8 + 8 * ((211 * (v9 != 0)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10016EAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v7 = (v6 - 1983515337);
  STACK[0xC28] = v7;
  v8 = STACK[0xAB8];
  STACK[0xC30] = STACK[0xAB8];
  return (*(a5 + 8 * ((3911 * (v7 - v8 + ((404 * (((a6 - 917) | 0x24) ^ 0x23Fu)) ^ 0x3A607973E7BFAA0ALL) > 9)) ^ a6)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_10016EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x74C]) = a5;
  STACK[0x9E8] = *(a8 + 8 * (v8 - 2946));
  return (*(a8 + 8 * (v8 + 4295 + v8 - 10276)))();
}

uint64_t sub_10016EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x5F0];
  v10 = STACK[0x83C];
  v11 = *(a8 + 8 * (v8 + (v8 ^ 0x1CE7) - 2344));
  LODWORD(STACK[0xD58]) = v8 ^ 0x1CE7;
  LODWORD(STACK[0xD5C]) = v8;
  STACK[0xD60] = v9;
  LODWORD(STACK[0xD6C]) = v10;
  STACK[0xD70] = STACK[0x308];
  STACK[0xD78] = 0;
  return v11();
}

uint64_t sub_10016EE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  STACK[0xD80] = STACK[0xD78];
  v9 = STACK[0xD70];
  STACK[0xD88] = STACK[0xD70];
  v10 = STACK[0xD6C];
  LODWORD(STACK[0xD94]) = STACK[0xD6C];
  STACK[0xD98] = STACK[0xD60];
  v11 = SLODWORD(STACK[0xD5C]);
  v12 = STACK[0xD58];
  LODWORD(STACK[0xDA4]) = STACK[0xD58];
  v13 = (v12 + 969443715) & 0xC6377A5B;
  LODWORD(STACK[0xDA8]) = v13;
  v14 = *(a8 + 8 * v11);
  LODWORD(STACK[0xDAC]) = v13 - 5151;
  STACK[0xDB0] = v14;
  STACK[0xA40] = v14;
  STACK[0x860] = v9;
  LODWORD(STACK[0x924]) = v10;
  v15 = STACK[0xB20];
  v16 = &a9 + STACK[0xB20] - 0x41A96E98E465ED68;
  STACK[0x6A8] = v16;
  v15 += 32;
  STACK[0xDB8] = v15;
  STACK[0xB20] = v15;
  STACK[0x638] = STACK[0xD98];
  STACK[0x680] = 0;
  STACK[0x8B8] = 0;
  STACK[0x900] = 0;
  LODWORD(STACK[0x9CC]) = 1443455193;
  LODWORD(STACK[0x884]) = 0;
  STACK[0xA38] = 0x61CEF89FDDA89DF2;
  STACK[0xA50] = 0;
  LODWORD(STACK[0x9FC]) = 1443455193;
  STACK[0xD18] = v16;
  LOBYTE(STACK[0xD17]) = 0;
  STACK[0xD08] = 32;
  LODWORD(v16) = LODWORD(STACK[0xDA4]) ^ 0x3734;
  STACK[0xD00] = *(a8 + 8 * (v12 + 2806));
  return (*(a8 + 8 * v16))();
}

uint64_t sub_10016EFA4@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  STACK[0x6E0] = *(a1 + 8 * v3);
  STACK[0x6F0] = v2;
  LODWORD(STACK[0xA0C]) = v4;
  STACK[0xA78] = a2;
  STACK[0x790] = 0x285236155710BC7BLL;
  LODWORD(STACK[0x970]) = 1443455193;
  STACK[0x9F0] = 0x4DC5C22F5BDB8B24;
  STACK[0x770] = 0;
  v6 = (*(a1 + 8 * (v5 ^ 0x302E)))(16);
  v7 = STACK[0x5E0];
  STACK[0xB28] = v6 + 0x5A0411E37F4B9882;
  return (*(v7 + 8 * (((v6 == 0) * ((((v5 - 4495) | 0xC0) ^ 0xFFFFF903) + ((v5 - 2022517496) & 0x788D1F7C))) ^ v5)))();
}

uint64_t sub_10016F07C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_10016F108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v6 = STACK[0xA58];
  STACK[0x8F0] = STACK[0xA58];
  return (*(a5 + 8 * (((v6 != 0x1138F6A92264F486) * ((((a6 - 4227) | 0x208) - 3726) ^ (3 * (a6 ^ 0x2052)))) ^ a6)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_10016F298@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  if (LODWORD(STACK[0x69C]))
  {
    v2 = ((a2 - 291991014) & 0x11676DEF ^ 0xB79EF203) + (LODWORD(STACK[0x69C]) ^ 0x4C7795BC) + ((2 * LODWORD(STACK[0x69C])) & 0x98EF2B78) == (((a2 - 3537) | 0x1280) ^ 0x4168714);
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(a1 + 8 * ((58 * v3) ^ a2)))();
}

uint64_t sub_10016F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x818];
  LODWORD(STACK[0x7EC]) = a5;
  return (*(a8 + 8 * (((v9 == 0) * ((v8 - 1108) ^ 0x1932 ^ (v8 - 536138449) & 0x1FF4D74D)) | v8)))();
}

uint64_t sub_10016F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v9 = 13;
  *(v9 + 4) = 0x4B1808F982DA5774;
  *(v9 + 12) = 0xF7F34165AB24D4AALL;
  *(v9 + 20) = 992672325;
  *(v9 + 24) = -88;
  *(v9 + 28) = 0xE18E981470744563;
  v10 = *(v9 + 40);
  if (v10)
  {
    v11 = v10 == 0x510808E226CB14FCLL;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  return (*(a8 + 8 * ((v12 * ((v8 + 2257) ^ 0x5B1 ^ ((v8 - 3116) | 0x1083))) ^ (v8 + 6488))))();
}

uint64_t sub_10016F4D8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = (*(a1 + 8 * (v2 + 5792)))(a2 - 0x510808E226CB14FCLL);
  v5 = STACK[0x5E0];
  *(v3 + 40) = 0x510808E226CB14FCLL;
  return (*(v5 + 8 * v2))(v4);
}

uint64_t sub_10016F52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 232) = (v8 - 2734) ^ (301143701 * ((((v9 - 232) | 0x592BC574) - (v9 - 232) + ((v9 - 232) & 0xA6D43A88)) ^ 0x22835806));
  (*(a8 + 8 * (v8 ^ 0x3EDB)))(v9 - 232);
  v10 = *(v9 - 224);
  *(v9 - 224) = (v8 - 347) ^ (1110906037 * (((((v9 - 232) | 0x27912426) ^ 0xFFFFFFFE) - (~(v9 - 232) | 0xD86EDBD9)) ^ 0x5129B769));
  *(v9 - 232) = v10;
  (*(STACK[0x5E0] + 8 * (v8 + 4836)))(v9 - 232);
  return (*(STACK[0x5E0] + 8 * (((STACK[0x5F0] == 0) * (v8 - 2647 + v8 - 1764 - 7349)) ^ v8)))();
}

uint64_t sub_10016F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x2585)))();
  v10 = STACK[0x5E0];
  STACK[0x5F0] = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_10016F6A8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 9835)))(a2 - 0x2B1A0449E8A6C928);
  v4 = STACK[0x5E0];
  STACK[0x9B8] = 0x2B1A0449E8A6C928;
  return (*(v4 + 8 * (v2 + 3431)))(v3);
}

uint64_t sub_10016F72C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x430]) = v8;
  v10 = v8 - (((v8 << (17 * (v9 ^ 0x7D) + 82)) + ((v9 - 602101303) & 0x23E357FF ^ 0x6D2CC5)) & 0x6FEA88) + 707695723;
  v11 = ((2 * v10) & 0xFF3FCBF6 ^ 0x2FCA80) + (v10 ^ 0xFFA810BF) - 68296736 == 2072888795;
  v12 = *(a8 + 8 * (v11 | (8 * v11) | v9));
  STACK[0x5D0] = a1;
  return v12(0xC73EF603490C4402);
}

uint64_t sub_10016F7F8(uint64_t a1)
{
  v5 = STACK[0x9B8] - 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x420]) = v2;
  return (*(STACK[0x5E0] + 8 * ((((v1 - 1109747120) & 0x42255C4D ^ 0x1A62 ^ (1212 * (v1 ^ 0x1DAC))) * ((v4 + v2 - 2141185531) < 8)) ^ v1)))(a1, 0xC5609D2670A0A6D0, 0x2FD96859BF937912, 0xD48CBC3E3F6AECFALL, v5, 0x68134BD320364377, v3);
}

uint64_t sub_10016F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *(STACK[0x5E0] + 8 * ((46 * (v6 >= (((47 * (v5 ^ 0x67F) - 5145) | 0x95) ^ 0xDA7u))) ^ v5));
  STACK[0x410] = a5;
  LODWORD(STACK[0x400]) = v6;
  return v7();
}

uint64_t sub_10016FA04@<X0>(unint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X8>)
{
  LODWORD(STACK[0x3E0]) = v11;
  STACK[0x5C0] = *(STACK[0x5E0] + 8 * v16);
  LODWORD(STACK[0x3D0]) = v9 & 0xFFFFFFF0;
  LODWORD(STACK[0x3F0]) = v12;
  *&STACK[0x590] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x580] = vdupq_n_s64(0x38uLL);
  *&STACK[0x570] = vdupq_n_s64(v8);
  *&STACK[0x560] = vdupq_n_s64(v10);
  *&STACK[0x550] = vdupq_n_s64(v13);
  *&STACK[0x540] = vdupq_n_s64(v14);
  *&STACK[0x530] = vdupq_n_s64(v15);
  *&STACK[0x520] = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  *&STACK[0x510] = vdupq_n_s64(0xC5609D2670A0A6D0);
  *&STACK[0x500] = vdupq_n_s64(a6);
  *&STACK[0x4F0] = vdupq_n_s64(v17);
  *&STACK[0x4E0] = vdupq_n_s64(a1);
  *&STACK[0x4D0] = vdupq_n_s64(v6);
  *&STACK[0x4C0] = vdupq_n_s64(v18);
  *&STACK[0x4B0] = vdupq_n_s64(a2);
  *&STACK[0x4A0] = vdupq_n_s64(a5);
  *&STACK[0x490] = vdupq_n_s64(a3);
  *&STACK[0x480] = vdupq_n_s64(0xB581C077348D623CLL);
  *&STACK[0x470] = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  *&STACK[0x5A0] = xmmword_1002A9AB0;
  return (STACK[0x5C0])((v12 + v7 - 2141185544), (v12 + v7 - 2141185536), (v12 + v7 - 2141185542), (v12 + v7 + v16 - 2141194046), 1750, (v12 + v7 - 2141185537), 4294967280, a4 - 15);
}

uint64_t sub_10016FBFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, double a9, double a10, int8x16_t a11, int64x2_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16)
{
  v42 = (v17 + a7 + 16);
  v43.i64[0] = v16 + v42;
  v43.i64[1] = v16 + (v25 + a7 + 16);
  v44.i64[0] = v16 + (v27 + a7 + 16);
  v44.i64[1] = v16 + (v26 + a7 + 16);
  v45.i64[0] = v16 + (a2 + a7 + 16);
  v45.i64[1] = v16 + (a6 + a7 + 16);
  v46.i64[0] = v16 + (v28 + a7 + 16);
  v46.i64[1] = v16 + (a4 + a7 + 16);
  *&v47 = v16 + (v21 + a7 + 16);
  *(&v47 + 1) = v16 + (v19 + a7 + 16);
  *&STACK[0x5C0] = v47;
  v48.i64[0] = v16 + (a3 + a7 + 16);
  v48.i64[1] = v16 + (v22 + a7 + 16);
  v49 = *&STACK[0x590];
  v50 = vandq_s8(v46, *&STACK[0x590]);
  v51 = vandq_s8(v45, *&STACK[0x590]);
  v52 = vandq_s8(v44, *&STACK[0x590]);
  v53 = vandq_s8(v43, *&STACK[0x590]);
  v54 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  *&STACK[0x5B0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v54, v54), v30), a16), v54);
  v58 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v55, v55), v30), a16), v55);
  v59 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v57, v57), v30), a16), v57), a12);
  v60 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v56, v56), v30), a16), v56), a12);
  v61 = veorq_s8(v60, a13);
  v62 = veorq_s8(v59, a13);
  v63 = veorq_s8(v59, a14);
  v64 = veorq_s8(v60, a14);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v63), a15);
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64), a15);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v31), v71), v32), v33);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v31), v70), v32), v33);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v34);
  v79 = veorq_s8(v77, v34);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = vaddq_s64(v83, v81);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v36), vorrq_s8(v84, v35)), v35), v37);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, v36), vorrq_s8(v85, v35)), v35), v37);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v89);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), v38), v92), v39), v40);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v91, v91), v38), v91), v39), v40);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v96 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v96);
  v99 = veorq_s8(vaddq_s64(v97, v95), v41);
  v100 = veorq_s8(v98, v41);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v101.i64[0] = v16 + (a1 + a7 + 16);
  v106 = vaddq_s64(v58, a12);
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v105, v103), *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), a11)));
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v104, v102), *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), a11)));
  v107 = veorq_s8(v106, a13);
  v108 = veorq_s8(v106, a14);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a15);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v31), v111), v32), v33);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v34);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v36), vorrq_s8(v116, v35)), v35), v37);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), v38), v119), v39), v40);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v41);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v122.i64[0] = v16 + (v18 + a7 + 16);
  v101.i64[1] = v16 + (v20 + a7 + 16);
  v122.i64[1] = v16 + (v24 + a7 + 16);
  v125 = vaddq_s64(v124, v123);
  v126 = vandq_s8(v122, v49);
  v127 = vaddq_s64(*&STACK[0x5B0], a12);
  v205.val[1] = vshlq_u64(veorq_s8(v125, *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), a11)));
  v128 = veorq_s8(v127, a13);
  v129 = veorq_s8(v127, a14);
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), a15);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), v31), v132), v32), v33);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v34);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, v36), vorrq_s8(v137, v35)), v35), v37);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v140, v140), v38), v140), v39), v40);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v41);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = vandq_s8(v101, v49);
  v147 = vaddq_s64(v145, v144);
  v148 = vandq_s8(v48, v49);
  v205.val[0] = vshlq_u64(veorq_s8(v147, *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), a11)));
  v149 = vandq_s8(*&STACK[0x5C0], v49);
  v150 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v154 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v150, v150), v30), a16), v150);
  v155 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v151, v151), v30), a16), v151);
  v156 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v153, v153), v30), a16), v153), a12);
  v157 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v152, v152), v30), a16), v152), a12);
  v151.i64[0] = vqtbl4q_s8(v205, *&STACK[0x5A0]).u64[0];
  v205.val[0] = veorq_s8(v157, a13);
  v205.val[1] = veorq_s8(v156, a13);
  v158 = veorq_s8(v156, a14);
  v205.val[2] = veorq_s8(v157, a14);
  v205.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v158), a15);
  v205.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[2]), a15);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v159 = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = vaddq_s64(v205.val[3], v159);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[1], v205.val[1]), v31), v205.val[1]), v32), v33);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[0], v205.val[0]), v31), v205.val[0]), v32), v33);
  v160 = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(v205.val[3], v160), v34);
  v205.val[0] = veorq_s8(v205.val[0], v34);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v161 = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = vaddq_s64(v205.val[3], v161);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[0], v36), vorrq_s8(v205.val[0], v35)), v35), v37);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[1], v36), vorrq_s8(v205.val[1], v35)), v35), v37);
  v162 = veorq_s8(v205.val[1], vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[2]);
  v205.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v162);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[1], v205.val[1]), v38), v205.val[1]), v39), v40);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[0], v205.val[0]), v38), v205.val[0]), v39), v40);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v163 = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(v205.val[3], v163), v41);
  v205.val[0] = veorq_s8(v205.val[0], v41);
  v164 = vaddq_s64(v155, a12);
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), veorq_s8(v205.val[1], vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL))), *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(v122, 3uLL), a11)));
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL))), *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(v101, 3uLL), a11)));
  v165 = veorq_s8(v164, a13);
  v166 = veorq_s8(v164, a14);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), a15);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), v31), v169), v32), v33);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v34);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v174, v36), vorrq_s8(v174, v35)), v35), v37);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v177, v177), v38), v177), v39), v40);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v41);
  v181 = vaddq_s64(v154, a12);
  v205.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL))), *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(v48, 3uLL), a11)));
  v182 = veorq_s8(v181, a13);
  v183 = veorq_s8(v181, a14);
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), a15);
  v185 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = veorq_s8(v184, v185);
  v188 = vaddq_s64(v186, v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), v31), v188), v32), v33);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v34);
  v192 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v194 = veorq_s8(v191, v192);
  v195 = vaddq_s64(v193, v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195, v36), vorrq_s8(v195, v35)), v35), v37);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v198, v198), v38), v198), v39), v40);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200), v41);
  v205.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL))), *&STACK[0x470]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5C0], 3uLL), a11)));
  v151.i64[1] = vqtbl4q_s8(v205, *&STACK[0x5A0]).u64[0];
  v202 = vrev64q_s8(*(a8 + v42));
  v205.val[0].i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v205.val[0].i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v203 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v202, v202, 8uLL), v205.val[0]), v151));
  *(v16 + v42 - 15) = vextq_s8(v203, v203, 8uLL);
  return (*(STACK[0x5E0] + 8 * (((v23 == a7) * a5) ^ v29)))();
}

uint64_t sub_100170820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(STACK[0x5E0] + 8 * v7);
  *&STACK[0x5C0] = xmmword_1002A9AA0;
  return v11(a5 - 7, vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v5), vdupq_n_s64(v6), vdupq_n_s64(v8), vdupq_n_s64(v9), vdupq_n_s64(0x5EEE4453CA35DABAuLL), vdupq_n_s64(v10));
}

uint64_t sub_100170948@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W7>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int64x2_t a7@<Q2>, int8x16_t a8@<Q3>, int64x2_t a9@<Q4>, int8x16_t a10@<Q5>, int8x16_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v36 = (v15 + v22 + a3 + 8);
  v37.i64[0] = v12 + (v13 + v22 + 8);
  v37.i64[1] = v12 + (v20 + v22 + 8);
  v38.i64[0] = v12 + v36;
  v39.i64[0] = v12 + (v16 + v22 + 8);
  v39.i64[1] = v12 + (v19 + v22 + 8);
  v38.i64[1] = v12 + (v14 + v22 + 8);
  v40.i64[0] = v12 + (v17 + v22 + 8);
  v40.i64[1] = v12 + (v23 + v22 + 8);
  v41 = vandq_s8(v40, a5);
  v42 = vandq_s8(v39, a5);
  v43 = vandq_s8(v37, a5);
  v44 = vandq_s8(v38, a5);
  v45 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v49 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v46, v46), a7), a8), v46);
  v50 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v48, v48), a7), a8), v48), a9);
  v51 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v47, v47), a7), a8), v47), a9);
  v52 = veorq_s8(v51, a10);
  v53 = veorq_s8(v50, a10);
  v54 = veorq_s8(v50, a12);
  v55 = veorq_s8(v51, a12);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), a11);
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), a11);
  v59 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v60 = veorq_s8(v56, v57);
  v61 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = vaddq_s64(v61, v59);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v24), v63), v25), v26);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), v24), v62), v25), v26);
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), v27);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = veorq_s8(v70, v27);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v72);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, v28), vorrq_s8(v77, v29)), v29), v30);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, v28), vorrq_s8(v78, v29)), v29), v30);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v31), v84), v32), v33);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v31), v83), v32), v33);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = veorq_s8(vaddq_s64(v90, v88), v34);
  v93 = veorq_s8(v91, v34);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v99 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v45, v45), a7), a8), v45), a9);
  v135.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v98, v96), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a6)));
  v135.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v97, v95), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a6)));
  v100 = veorq_s8(v99, a10);
  v101 = veorq_s8(v99, a12);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), a11);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v24), v104), v25), v26);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v27);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v28), vorrq_s8(v109, v29)), v29), v30);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), v31), v112), v32), v33);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v34);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL)));
  v117 = vaddq_s64(v49, a9);
  v135.val[1] = vshlq_u64(veorq_s8(v116, v35), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a6)));
  v118 = veorq_s8(v117, a10);
  v119 = veorq_s8(v117, a12);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), a11);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v24), v122), v25), v26);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v27);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v28), vorrq_s8(v127, v29)), v29), v30);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v31), v130), v32), v33);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v34);
  v135.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL))), v35), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a6)));
  *(v12 + v36 - 7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(a1 + v36)), 0x1B1B1B1B1B1B1B1BLL), *&vqtbl4q_s8(v135, *&STACK[0x5C0])));
  return (*(a4 + 8 * (((v21 == v22) * a2) ^ v18)))();
}

uint64_t sub_100171000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = (a6 + v9);
  v23 = STACK[0x5D0] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (((v24 << v14) + a7) & v12) - v24 + v17;
  v26 = v25 ^ v18;
  v27 = v25 ^ v19;
  v28 = (__ROR8__(v26, 8) + v27) ^ v11;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xC5609D2670A0A6D0) - (v30 + v29) + a8) ^ v20;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a1;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v10 - ((v35 + v34) | v10) + ((v35 + v34) | v8)) ^ v21;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((a2 | (2 * (v38 + v37))) - (v38 + v37) + a5) ^ a3;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xB581C077348D623CLL;
  *v23 = *(a4 + v22) ^ v15 ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v23 & 7u)));
  return (*(STACK[0x5E0] + 8 * (((a6 == 2072888796) * v16) ^ v13)))();
}

uint64_t sub_100171138()
{
  STACK[0xA10] = STACK[0x5D0];
  LODWORD(STACK[0xA1C]) = STACK[0x430];
  LODWORD(STACK[0x7EC]) = 68588956;
  return (*(STACK[0x5E0] + 8 * v0))();
}

uint64_t sub_1001712B0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x948] = *(a1 + 8 * a2);
  STACK[0x800] = v3;
  LODWORD(STACK[0x8CC]) = v5;
  STACK[0xAF0] = v2;
  STACK[0x8A8] = 0x15752E2B218D9B93;
  LODWORD(STACK[0x838]) = 1443455193;
  STACK[0x718] = 0x5B67E4B9D3C4B062;
  STACK[0xB18] = 0;
  v6 = (*(a1 + 8 * (v4 ^ 0x841)))(16);
  v7 = STACK[0x5E0];
  STACK[0x5F8] = v6 + 0x5A0411E37F4B9882;
  return (*(v7 + 8 * (((v6 != 0) * (((43 * (v4 ^ 0x218D) - 1739) | 0x810) - 3598)) | v4)))();
}

uint64_t sub_100171378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_100171458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v33 - 216) = (v32 - 395) ^ (199319723 * (((v33 - 232) & 0x22E77EA7 | ~((v33 - 232) | 0x22E77EA7)) ^ 0x68E86F90));
  *(v33 - 224) = a32;
  v34 = (*(a8 + 8 * (v32 + 7138)))(v33 - 232);
  return (*(STACK[0x5E0] + 8 * (((*(v33 - 232) == (v32 ^ 0xE45) + 68588954) * ((537 * (v32 ^ 0xE45)) ^ 0x1167)) ^ v32)))(v34);
}

uint64_t sub_10017157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 1110906037 * ((((2 * (v9 - 232)) | 0xB19110E388BE862CLL) - (v9 - 232) - 0x58C88871C45F4316) ^ 0xD30FA5D44D182FA6);
  *(v9 - 200) = LOBYTE(STACK[0x6DF]) + v10;
  *(v9 - 224) = 11 - v10;
  *(v9 - 216) = v8 + 687595074 - 1110906037 * ((((2 * (v9 - 232)) | 0x88BE862C) - (v9 - 232) + 1000389866) ^ 0x4D182FA6) - 18;
  *(v9 - 212) = v8 - 1110906037 * ((((2 * (v9 - 232)) | 0x88BE862C) - (v9 - 232) + 1000389866) ^ 0x4D182FA6) - 590963961;
  *(v9 - 232) = 1110906037 * ((((2 * (v9 - 232)) | 0x88BE862C) - (v9 - 232) + 1000389866) ^ 0x4D182FA6);
  *(v9 - 208) = (v8 + 687595074) ^ (1110906037 * ((((2 * (v9 - 232)) | 0x88BE862C) - (v9 - 232) + 1000389866) ^ 0x4D182FA6));
  *(v9 - 192) = ((v8 + 687595074) ^ 0x4CA) + 1110906037 * ((((2 * (v9 - 232)) | 0x88BE862C) - (v9 - 232) + 1000389866) ^ 0x4D182FA6);
  v11 = (*(a8 + 8 * (v8 + 7048)))(v9 - 232);
  return (*(STACK[0x5E0] + 8 * *(v9 - 204)))(v11);
}

uint64_t sub_10017174C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0x798] = 0x51CE20ABD81C933BLL;
  STACK[0x660] = 0xEA707C00AA2449BLL;
  return (*(a1 + 8 * ((((v2 - 8650) ^ 0x5D9) * (a2 != 0x5A0411E37F4B9882)) ^ v2)))();
}

uint64_t sub_10017187C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v6 = *(STACK[0x798] - 0x51CE20ABD81C9323);
  STACK[0xA90] = v6;
  return (*(a5 + 8 * ((27 * (((v6 == 0) ^ (3 * (a6 ^ 0x16) + 1)) & 1)) ^ a6)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_1001718EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v7 = (v6 - 1983515337);
  STACK[0xC38] = v7;
  v8 = STACK[0x660];
  STACK[0xC40] = STACK[0x660];
  return (*(a5 + 8 * (((v7 - v8 + (((a6 ^ 0x54Eu) - 1697) ^ 0xEA707C00AA246D8) > 9) * ((a6 ^ 0x54E) + 9592)) ^ a6 ^ 0x54E)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_100171998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x9D8] = 0;
  LODWORD(STACK[0xAD4]) = 1443455193;
  return (*(a8 + 8 * (v8 - 563)))();
}

uint64_t sub_1001719BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xB0C]) = a5;
  STACK[0x998] = *(a8 + 8 * v8);
  return (*(a8 + 8 * (v8 ^ 0x6FB ^ (v8 + 2889))))();
}

uint64_t sub_1001719E8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = STACK[0xC40] - 0xEA707C00AA24491;
  STACK[0x4A0] = ((STACK[0xC40] - 0xEA707C00AA24497) ^ 0x789FFED3FA74D1EELL) - 0x200690100010908ALL + (((STACK[0xC40] - 0xEA707C00AA24497) << (((a2 + 40) | 0x30u) - 51)) & 0xF13FFDA7F4E9A3DCLL);
  v3 = STACK[0xC30];
  STACK[0x490] = STACK[0xC30];
  v4 = v3 - 0x3A607973E7BFA43ALL;
  STACK[0x480] = ((v3 - 0x3A607973E7BFA43ALL) ^ 0x5EBDEEC7FAE74F64) - 0x624800400830E00 + ((2 * (v3 - 0x3A607973E7BFA43ALL)) & 0xBD7BDD8FF5CE9EC8);
  v5 = STACK[0xC20];
  STACK[0x470] = STACK[0xC20];
  v5 -= 0x32B41184E608E49FLL;
  STACK[0x430] = (v5 ^ 0xFCB96FFBFAE57577) + 0x5BDFFEC7FF7ECBEDLL + ((2 * v5) & 0xF972DFF7F5CAEAEELL);
  v6 = STACK[0xC10];
  STACK[0x420] = STACK[0xC10];
  v6 -= 0x3509456E1919DB52;
  v7 = STACK[0xC78];
  STACK[0x410] = STACK[0xC78];
  v8 = v7 - 0x15752E2B218D9B8FLL;
  STACK[0x400] = ((v7 - 0x15752E2B218D9B8FLL) ^ 0xFAD97ECFFFE6FDECLL) + 0x5DBFEFF3FA7D4378 + ((2 * (v7 - 0x15752E2B218D9B8FLL)) & 0xF5B2FD9FFFCDFBD8);
  STACK[0x3F0] = (v6 ^ 0x5BDFEEEBFBFF5B7DLL) - 0x3468028019B1A19 + ((2 * v6) & 0xB7BFDDD7F7FEB6FALL);
  v9 = STACK[0xC00];
  STACK[0x3E0] = STACK[0xC00];
  v10 = v9 - 0x1A894D2C2B39BE4ALL;
  STACK[0x3D0] = ((v9 - 0x1A894D2C2B39BE4ALL) ^ 0xDFDD6EEFFBF7F7FDLL) + 0x78BBFFD3FE6C4967 + ((2 * (v9 - 0x1A894D2C2B39BE4ALL)) & 0xBFBADDDFF7EFEFFALL);
  v11 = STACK[0xCA8];
  STACK[0x3C0] = STACK[0xCA8];
  v12 = v11 - 0x2489F54B09F1EF22;
  STACK[0x3B0] = ((v11 - 0x2489F54B09F1EF22) ^ 0x59FF7EDFFAEEC77DLL) - 0x166101C008A8619 + ((2 * (v11 - 0x2489F54B09F1EF22)) & 0xB3FEFDBFF5DD8EFALL);
  v13 = STACK[0xBE0] - 0x5664697B508F21E1;
  STACK[0x390] = (v13 ^ 0xFCFDFFD7FF6449F6) + 0x5B9B6EEBFAFFF76ELL + ((2 * v13) & 0xF9FBFFAFFEC893ECLL);
  v14 = STACK[0xBC0] - 0x2B53B0056F118FDELL;
  STACK[0x380] = (v14 ^ 0xDAD97FFFFF6F61F6) + 0x7DBFEEC3FAF4DF6ELL + ((2 * v14) & 0xB5B2FFFFFEDEC3ECLL);
  v15 = STACK[0xCC8] - 0x346251E3EF40C887;
  STACK[0x370] = (v15 ^ 0x59BBFEF3FE67E1F6) - 0x12290300403A092 + ((2 * v15) & 0xB377FDE7FCCFC3ECLL);
  v16 = STACK[0xCD8] - 0x7BEDAD7D3805B6ELL;
  STACK[0x360] = (v16 ^ 0x789BEEFFFF6C61FDLL) - 0x2002803C05082099 + ((2 * v16) & 0xF137DDFFFED8C3FALL);
  v17 = STACK[0xCE8] - 0x7F7E00CB5203992ALL;
  STACK[0x350] = (v17 ^ 0xDADF6EF7FF75CF76) + 0x7DB9FFCBFAEE71EELL + ((2 * v17) & 0xB5BEDDEFFEEB9EECLL);
  v18 = STACK[0xCF8] - 0x30C0BAF89943E4A1;
  STACK[0x330] = (v18 ^ 0x79BD6EEFFBEFC1F7) - 0x2124002C018B8093 + ((2 * v18) & 0xF37ADDDFF7DF83EELL);
  STACK[0x310] = ((v2 - 4) ^ 0xFFBEECFDF4BD5CDELL) + 0x6F53F77BDF4EFFF6 + ((2 * (v2 - 4)) & 0xFF7DD9FBE97AB9BCLL);
  STACK[0x2E0] = ((v4 + 2) ^ 0x7FD6EFFFFFAFFCF6) - 0x10C40B862BA3A022 + ((2 * (v4 + 2)) & 0xFFADDFFFFF5FF9ECLL);
  STACK[0x2C0] = ((v5 + 2) ^ 0xFFB3FC79DE5F5ED4) + 0x6F5EE7FFF5ACFE00 + ((2 * (v5 + 2)) & 0xFF67F8F3BCBEBDA8);
  STACK[0x2B0] = ((v6 + 2) ^ 0x7F7EECFDFD8CDEF7) - 0x106C088429808223 + ((2 * (v6 + 2)) & 0xFEFDD9FBFB19BDEELL);
  STACK[0x2A0] = ((v8 + 2) ^ 0x7F33FE7FF4DCFCFDLL) - 0x10211A0620D0A029 + ((2 * (v8 + 2)) & 0xFE67FCFFE9B9F9FALL);
  STACK[0x290] = ((v10 + 2) ^ 0xFFD6F67BF61D7DD5) + 0x6F3BEDFDDDEEDEFFLL + ((2 * (v10 + 2)) & 0xFFADECF7EC3AFBAALL);
  STACK[0x280] = ((v12 + 2) ^ 0xEF3FEEF9FDCD7EDCLL) + 0x7FD2F57FD63EDDF8 + ((2 * (v12 + 2)) & 0xDE7FDDF3FB9AFDB8);
  STACK[0x270] = ((v13 + 2) ^ 0x7FFBECFBF54CFEFFLL) - 0x10E908822140A22BLL + ((2 * (v13 + 2)) & 0xFFF7D9F7EA99FDFELL);
  STACK[0x260] = ((v14 + 2) ^ 0x7FDAF7F9DFCF7FD5) - 0x10C813800BC32301 + ((2 * (v14 + 2)) & 0xFFB5EFF3BF9EFFAALL);
  STACK[0x250] = ((v15 + 2) ^ 0x7FD7F77DF4CCFED4) - 0x10C5130420C0A200 + ((2 * (v15 + 2)) & 0xFFAFEEFBE999FDA8);
  STACK[0x240] = ((v16 + 2) ^ 0x6F33FF7FD62DFDF5) - 0x211B060221A121 + ((2 * (v16 + 2)) & 0xDE67FEFFAC5BFBEALL);
  STACK[0x230] = ((v17 + 2) ^ 0xFF17E77DFCCE5ED6) + 0x6FFAFCFBD73DFDFELL + ((2 * (v17 + 2)) & 0xFE2FCEFBF99CBDACLL);
  STACK[0x220] = ((v18 + 2) ^ 0x7FBBE7FBDE5E5CF5) - 0x10A903820A520021 + ((2 * (v18 + 2)) & 0xFF77CFF7BCBCB9EALL);
  v19 = *(a1 + 8 * a2);
  STACK[0x510] = STACK[0xA90];
  STACK[0x5D0] = STACK[0xAD8];
  STACK[0x5C0] = STACK[0xA00];
  STACK[0x5B0] = STACK[0x628];
  STACK[0x5A0] = STACK[0xA68];
  STACK[0x590] = STACK[0x6E8];
  STACK[0x580] = STACK[0x7E0];
  STACK[0x500] = STACK[0x828];
  STACK[0x4F0] = STACK[0x640];
  STACK[0x4E0] = STACK[0x960];
  STACK[0x4D0] = STACK[0x6C8];
  STACK[0x4C0] = STACK[0x760];
  STACK[0x4B0] = STACK[0x8B0];
  LODWORD(STACK[0x540]) = LOWORD(STACK[0xB9E]);
  LODWORD(STACK[0x550]) = LOWORD(STACK[0xB8E]);
  LODWORD(STACK[0x520]) = LOWORD(STACK[0xB66]);
  LODWORD(STACK[0x530]) = LOWORD(STACK[0xB7A]);
  LODWORD(STACK[0x560]) = LOWORD(STACK[0xB56]);
  LODWORD(STACK[0x570]) = LOWORD(STACK[0xB46]);
  v20 = STACK[0xC28];
  STACK[0x210] = STACK[0xC28];
  STACK[0x200] = v20 + 1224279091;
  return v19(0x5619122FEA32E37, 0xAB80F1359213EDE4, 0xA8FE1D94DBD82436, 0x7F17FD7FF5BDFCD8, 0xEF16F77DDEBF5DD5, 4159699193, 1578723296);
}

uint64_t sub_100172650(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 - 0x26DC265C3BB46FC7);
  STACK[0x7A8] = v10;
  return (*(a8 + 8 * (((v10 == 0x5A0411E37F4B9882) * (v8 + a3 + v8 + 884)) | v8)))();
}

uint64_t sub_1001726A0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  LODWORD(STACK[0x5A0]) = a2;
  LODWORD(STACK[0x5B0]) = a1;
  LODWORD(STACK[0x5C0]) = v7;
  LODWORD(STACK[0x5D0]) = v6;
  return (*(a4 + 8 * (((((*(a5 - 0x5A0411E37F4B9882) + v8 == 0x65C2186424616689) ^ (v5 - 1)) & 1) * a3) ^ v5)))();
}

uint64_t sub_1001727F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 + 7432)))();
  v11 = STACK[0x5E0];
  *(v8 - 0x51CE20ABD81C9323) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_100172C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, unint64_t a6@<X8>)
{
  STACK[0x700] = a6;
  LODWORD(STACK[0xC48]) = v12;
  LOWORD(STACK[0xC4E]) = v6;
  LODWORD(STACK[0xC50]) = v10;
  LODWORD(STACK[0xC54]) = v7;
  STACK[0xC58] = v9;
  STACK[0xC60] = v11;
  return (*(a5 + 8 * ((50 * (a6 != 0x5A0411E37F4B9882)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100172D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 9335)))(32);
  v10 = STACK[0x5E0];
  STACK[0x7F0] = v9 + 0x51CE20ABD81C933BLL;
  return (*(v10 + 8 * (((v9 == 0) * (909 * (((v8 + 3878) | 0x100) ^ 0x1534) - 3600)) | v8)))();
}

uint64_t sub_100172DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  STACK[0xC68] = v10;
  *(a1 + 16) = v8 + 540060154;
  v12 = (*(a8 + 8 * (v9 ^ 0x3CB1)))((v8 - 1443455183));
  v13 = STACK[0x5E0];
  *(a1 + 24) = v12;
  return (*(v13 + 8 * (((v12 != 0) | (8 * (v12 != 0))) ^ v9)))();
}

uint64_t sub_100172EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x5D0] = STACK[0x7F0] - 0x51CE20ABD81C9323;
  v9 = LOWORD(STACK[0xC4E]);
  LODWORD(STACK[0x590]) = v9;
  LODWORD(STACK[0x580]) = v9 ^ 0xFFFFC817;
  v10 = STACK[0xC50];
  LODWORD(STACK[0x500]) = LODWORD(STACK[0xC54]) - ((2 * LODWORD(STACK[0xC54]) + 1408056910) & 0xC765C27C) + 229212261;
  STACK[0x5C0] = STACK[0x858] - 0x51CE20ABD81C9323;
  v11 = STACK[0xC88];
  v12 = LODWORD(STACK[0xC8C]) - ((2 * LODWORD(STACK[0xC8C]) + 1408056910) & 0xC765C27C);
  v13 = (2 * LODWORD(STACK[0xC88]) + 1408056910) & 0xC765C27C;
  v14 = LOWORD(STACK[0xC86]);
  v15 = LODWORD(STACK[0x834]) - ((2 * LODWORD(STACK[0x834]) + 1408056910) & 0xC765C27C);
  LODWORD(STACK[0x570]) = v14;
  LODWORD(STACK[0x560]) = v14 ^ 0x47A0;
  LODWORD(STACK[0x4F0]) = v12 + 229212261;
  LODWORD(STACK[0x520]) = v10;
  LODWORD(STACK[0x550]) = v10 - ((2 * v10 + 1408056910) & 0xC765C27C) + 229212261;
  LODWORD(STACK[0x510]) = v11;
  LODWORD(STACK[0x540]) = v11 - v13 + 229212261;
  LODWORD(STACK[0x530]) = v15 + 229212261;
  STACK[0x5B0] = STACK[0x7C8] - 0x51CE20ABD81C9323;
  v16 = *(a8 + 8 * (v8 - 1533));
  LODWORD(STACK[0x5A0]) = 1443455197;
  return v16();
}

uint64_t sub_1001730B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x6F8]) = a5;
  if (a5 == 68588956)
  {
    v10 = STACK[0xAE8];
    v11 = *(STACK[0xAE8] - 0x51CE20ABD81C9333);
    v12 = STACK[0x7F0];
    *(v12 - 0x51CE20ABD81C9333) = v11;
    *(v12 - 0x51CE20ABD81C933BLL) = *(v10 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * (((v11 == 0x51CE20ABD81C933BLL) * (v8 ^ 0x88 ^ (v8 + 1609605501) & 0xA00F5EFF)) ^ (v8 + 2877))))();
  }

  else if (a5 == 68545953)
  {
    return (*(a8 + 8 * (((*(STACK[0x700] - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL) * (((v8 - 412324669) & 0x1893976F) + ((v8 + 1788) ^ 0xFFFFE419))) ^ (v8 + 3011))))();
  }

  else
  {
    return (*(a8 + 8 * ((1007 * (a5 == ((v8 + 1842569611) & 0x922CB1CD ^ 0x416B411))) ^ (v8 + 2994))))();
  }
}

uint64_t sub_1001735E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 ^ 0x3939)))();
  v11 = STACK[0x5E0];
  *(v8 - 0x51CE20ABD81C9323) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_100173770@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  v4 = (a2 ^ 0xD7ADC9EB35022736) + v2;
  v6 = v4 > 0x8C12E784 && v4 < ((a2 ^ 0x189C) + v3 - 476271934) + 2350049157u;
  return (*(a1 + 8 * (a2 | (2 * v6))))();
}

uint64_t sub_100173960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v13 = (*(v8 + a6 + 3635) << 24) | (*(v8 + a6 + v11) << 16) | (*(v8 + a6 + 3637) << 8) | *(v8 + a6 + 3638);
  v14 = (v13 ^ v7) - 138546726 + (v6 & (2 * v13));
  v15 = *(((2 * (v8 + 3639)) & 0x7F99FAFFBDFFFE36) + ((v8 + 3639) ^ 0xFFCCFD7FDEFFFF1BLL) + a6 + 0x330280210000E5);
  LOWORD(v13) = *(((2 * (v8 + 3639)) & 0x7F99FAFFBDFFFE36) + ((v8 + 3639) ^ 0xFFCCFD7FDEFFFF1BLL) + a6 + 0x330280210000E6);
  v16 = v9 - 138546726;
  v17 = v8 + 3645;
  v18 = ((v13 | (v15 << 8)) - 2 * ((v13 | (v15 << 8)) & 0x274B ^ v13 & 2) - 22707);
  switch(v18)
  {
    case 9168:
      return (*(a5 + 8 * (((((v12 - 3636) | 0x2443) - 9227) * (v16 != 1443455201)) ^ (v12 - 1302))))(a1, a2, a3, a4, 68545950);
    case 63382:
      STACK[0x770] = a6 + v17;
      STACK[0x790] = v10 + 10;
      return (*(a5 + 8 * (((v14 == ((v12 - 2619) ^ 0x56096320)) * ((v12 - 90) ^ 0x1B60)) ^ (v12 - 797))))(a1, a2, a3, a4, 68545950);
    case 12354:
      return (*(a5 + 8 * (((v12 ^ 0x275D) * (v16 == 1443455197)) ^ (v12 - 1294))))(a1, a2, a3, a4, 68545950);
    default:
      STACK[0x890] = STACK[0xB28];
      v20 = *(a5 + 8 * (v12 - 2822));
      LODWORD(STACK[0x880]) = 68545950;
      STACK[0x998] = v20;
      return (*(a5 + 8 * (v12 - 1040)))();
  }
}

uint64_t sub_100173DD8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = (((2 * v3) & 0x6FD7BBFF35373FBELL) + (v3 ^ 0x77EBDDFF9A9B9FDFLL) + a2 - 0x77EBDDFF9A9BAAF4);
  v5 = (v4[2837] << 56) | (v4[2838] << 48) | (v4[(v2 - 8967372) & 0x88BB9F] << 40) | (v4[2840] << 32) | (v4[2841] << 24) | (v4[2842] << 16) | (v4[2843] << 8) | v4[2844];
  STACK[0x9F0] = v5 + 0x4DC5C22F5BDB8B24 - ((2 * v5) & 0x9B8B845EB7B71648);
  return (*(a1 + 8 * v2))();
}

uint64_t sub_100173F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (v8 - 533754176) & 0x1FD057FD;
  STACK[0x9A0] = *(a8 + 8 * v9);
  return (*(a8 + 8 * (v9 ^ 0x8CC ^ (v9 + 2271))))();
}

uint64_t sub_100174028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 - 0x506F6A7D2B892A1ALL);
  STACK[0x738] = v10;
  return (*(a8 + 8 * (((v10 == 0x1138F6A92264F486) * ((v9 - 6252) ^ (v9 - 6172))) | v9)))();
}

uint64_t sub_1001741D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0xAF0];
  STACK[0x628] = STACK[0xAF0];
  return (*(a8 + 8 * (((((v9 == 0) ^ (v8 + 1)) & 1) * ((v8 - 6068) ^ 0x642)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100174220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, unint64_t a6@<X8>)
{
  STACK[0xC70] = v7;
  STACK[0xC78] = a6;
  return (*(a5 + 8 * ((7517 * (v7 - a6 + (((v6 + 1460) | 0x220u) ^ 0x15752E2B218D95BDLL) < ((v6 + 1672668410) & 0x9C4D16AD ^ 0xFFFFFFFFFFFFFDFELL))) ^ v6)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_1001743B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x780] = STACK[0x5F8];
  v9 = *(a8 + 8 * (v8 - 2850));
  LODWORD(STACK[0xAB4]) = a5;
  STACK[0x998] = v9;
  return (*(a8 + 8 * (v8 - 1040)))();
}

uint64_t sub_1001743E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x724]) = a5;
  if (a5 == 68588956)
  {
    v10 = STACK[0xA70];
    v11 = *(STACK[0xA70] - 0x51CE20ABD81C9333);
    v12 = STACK[0x858];
    *(v12 - 0x51CE20ABD81C9333) = v11;
    *(v12 - 0x51CE20ABD81C933BLL) = *(v10 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * (((v11 != 0x51CE20ABD81C933BLL) * (((v8 - 1586) | 0x75) ^ 0x878)) ^ (v8 - 1469))))();
  }

  else if (a5 == 68545953)
  {
    return (*(a8 + 8 * (((((v8 - 5) ^ (*(STACK[0x730] - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL)) & 1) * (((v8 - 1326) | 0x51) - 1891)) ^ (v8 + 1215))))();
  }

  else
  {
    return (*(a8 + 8 * ((60 * (a5 == 136 * ((v8 - 811441717) & 0x305D9BFD ^ 0xBF1) + 68587324)) ^ (v8 + 5733))))();
  }
}

uint64_t sub_100174900@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 + 49;
  v4 = (*(a1 + 8 * ((a2 + 49) ^ 0x2505u)))();
  v5 = STACK[0x5E0];
  *(v2 - 0x51CE20ABD81C9323) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_100174994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v9 - 8854) | 0x1609;
  v11 = (*(a8 + 8 * (v10 ^ 0x3FA2)))(v8 - 0x51CE20ABD81C933BLL);
  return (*(STACK[0x5E0] + 8 * v10))(v11);
}

uint64_t sub_100174A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  STACK[0x9E0] = v6;
  STACK[0x940] = 0x51CE20ABD81C933BLL;
  STACK[0x9C0] = 0x2489F54B09F1EF26;
  return (*(a5 + 8 * (((a6 == 0x5A0411E37F4B9882) * (v7 - 6222 + v7 - 6056)) ^ v7)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100174AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == 68545953)
  {
    LODWORD(STACK[0x884]) = ((v8 + 941039943) & 0xC7E8DFAD ^ 0x7250BD48) * *(STACK[0xB00] - 0x1138F6A92264F476) - 1356996924;
    return (*(a8 + 8 * (v8 + 536)))();
  }

  else if (a5 == 68588956)
  {
    return (*(a8 + 8 * (STACK[0x5D8] + 536)))();
  }

  else
  {
    v10 = STACK[0x5D8] - 1265;
    LODWORD(STACK[0x974]) = a5;
    return (*(a8 + 8 * v10))();
  }
}

uint64_t sub_100174B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  LODWORD(STACK[0xCB4]) = v8;
  STACK[0xCB8] = v7;
  v10 = v7 == 0x7FE9B1D3798FC8E3 || a6 == 0x5A0411E37F4B9882;
  return (*(a5 + 8 * ((((((v6 - 5903) ^ v10) & 1) == 0) * (((v6 - 7455) | 0x610) - 3628)) ^ v6)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100174BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  STACK[0x878] = v10;
  return (*(a8 + 8 * (((v10 == 0x51CE20ABD81C933BLL) * (v9 - 9402 + ((v9 + 1015746751) & 0xC374F7FF))) ^ (v9 + 5360))))(a1, a2, a3, a4, 68545953);
}

uint64_t sub_100174CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x940] - 0x51CE20ABD81C9323);
  STACK[0x7E0] = v9;
  return (*(a8 + 8 * (((v9 == 0) * (v8 - 15255 + v8 - 5428)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100174D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v7 = (v6 - 1983515337);
  STACK[0xCA0] = v7;
  v8 = STACK[0x9C0];
  STACK[0xCA8] = STACK[0x9C0];
  return (*(a5 + 8 * ((12376 * (v7 - v8 + (((a6 - 4429) | 0x20u) ^ 0x2489F54B09F1ED0CLL) > (((a6 - 3907) | 0xA20u) ^ 0xE3DuLL))) ^ a6)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_100174E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x630] - 0x51CE20ABD81C9323);
  STACK[0x760] = v9;
  return (*(a8 + 8 * (((v9 == 0) * (((v8 - 603) ^ 0xFFFFF7FF) + v8 - 2624)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100174EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v7 = (v6 - 1983515337);
  STACK[0xCE0] = v7;
  v8 = STACK[0x898];
  STACK[0xCE8] = STACK[0x898];
  return (*(a5 + 8 * ((2299 * (v7 - v8 + 0x7F7E00CB5203992ELL > 1212 * (a6 ^ 0x64Cu) + ((a6 - 1073) ^ 0xFFFFFFFFFFFFF3CBLL))) ^ a6)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_100174FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v6 = *(STACK[0x6B8] - 0x51CE20ABD81C9323);
  STACK[0x960] = v6;
  return (*(a5 + 8 * (((v6 == 0) * (((a6 - 558932612) & 0x21509F7F) - 3512)) ^ a6)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100175048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v7 = (v6 - 1983515337);
  STACK[0xCC0] = v7;
  v8 = STACK[0x768];
  STACK[0xCC8] = STACK[0x768];
  return (*(a5 + 8 * ((3790 * (v7 - v8 + ((a6 - 1477112258) & 0x580AEEBD ^ 0x346251E3EF40C6BFLL) > 9)) ^ (a6 + 12))))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_1001750F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == 68545953)
  {
    return (*(a8 + 8 * (((*(STACK[0xB00] - 0x1138F6A92264F425) == 69) * (((v8 + 2832) ^ 0x22E5) + (v8 ^ 0xA18))) ^ (v8 + 4240))))();
  }

  if (a5 == 68588956)
  {
    v9 = *(STACK[0xB00] - 0x1138F6A92264F472);
    if (v9 == 408423771)
    {
      return (*(a8 + 8 * ((v8 ^ 0x115F) + v8 - 3628)))();
    }

    else if (v9 == 408423770)
    {
      if (*(STACK[0xB00] - 0x1138F6A92264F425) == 69)
      {
        v11 = 68545948;
      }

      else
      {
        v11 = 68545952;
      }

      return (*(a8 + 8 * (STACK[0x5D8] + 1913)))(a1, a2, a3, a4, v11);
    }

    else
    {
      return sub_1001756F8(a1, a2, a3, a4, 68545952, a6, a7, a8);
    }
  }

  else
  {
    LODWORD(STACK[0x974]) = a5;
    return (*(a8 + 8 * (((a5 == ((v8 + 3916) | 2) + 68581402) * (((v8 - 2923) | 0x14) ^ 0x23F9)) ^ (v8 - 1265))))(a1, a2, a3, a4, 68588956);
  }
}

uint64_t sub_100175280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x670] - 0x51CE20ABD81C9323);
  STACK[0x8B0] = v9;
  return (*(a8 + 8 * (((v9 == 0) * ((179 * (v8 ^ 0x1922) - 1888) ^ (606 * (v8 ^ 0x193B)))) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_1001752FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v7 = v6 - 1983515337 + (a6 ^ 0x17B7u) - 538;
  STACK[0xCF0] = v7;
  v8 = STACK[0x848];
  STACK[0xCF8] = STACK[0x848];
  return (*(a5 + 8 * ((3673 * (v7 - v8 + 0x30C0BAF89943E4A5 > (909 * (a6 ^ 0x15A9u)) - 3627)) ^ a6)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_1001753FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x910] - 0x51CE20ABD81C9323);
  STACK[0x6C8] = v9;
  return (*(a8 + 8 * (((v9 == 0) * (((v8 ^ 0x2840) + 249) ^ 0xFF9)) ^ v8)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100175464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v7 = (v6 - 1983515337);
  STACK[0xCD0] = v7;
  v8 = STACK[0x868];
  STACK[0xCD8] = STACK[0x868];
  return (*(a5 + 8 * (((v7 - v8 + ((a6 - 3364) | 4u) + 0x7BEDAD7D3805965 > 9) * ((a6 - 249) ^ 0x1EFF)) ^ a6)))(a1, a2, a3, a4, 68545950);
}

uint64_t sub_100175664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v7 = *(a6 - 0x1138F6A92264F486);
  STACK[0x910] = 0x51CE20ABD81C933BLL;
  STACK[0x868] = 0x7BEDAD7D3805B72;
  return (*(a5 + 8 * (((v7 == 0x5A0411E37F4B9882) * ((((v6 - 1829) | 0x630) - 3031) ^ ((v6 - 3344) | 0x40))) | v6)))(a1, a2, a3, a4, 68545945);
}

uint64_t sub_100175714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x7B0] = STACK[0xB00];
  STACK[0x9E8] = *(a8 + 8 * v8);
  return (*(a8 + 8 * (v8 - 7373 + 1133 * (v8 ^ 0x2DA))))();
}

uint64_t sub_10017589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 40 * v8 + 28);
  switch(v11)
  {
    case 1:
      STACK[0xAA0] = *(a8 + 8 * (v10 - 3355));
      return (*(a8 + 8 * (((v10 - 1522) ^ 0x1BE9) + v10 - 3355)))();
    case 3:
      return (*(a8 + 8 * (((((v10 << 7) ^ 0xFFF8E742) + v10 - 2786) * (*(v9 + 40 * v8 + 16) != 0)) ^ (v10 - 223))))();
    case 2:
      return (*(a8 + 8 * (((STACK[0xA20] == 0x5A0411E37F4B9882) * ((v10 ^ 0xDC2) - 1007)) ^ (v10 + 2701))))();
    default:
      return (*(a8 + 8 * (v10 + 560)))(a1, a2, a3, a4, 68545950);
  }
}

void sub_100175A94(uint64_t a1)
{
  v1 = 929149733 * (((a1 | 0x93154561) - a1 + (a1 & 0x6CEABA9E)) ^ 0xC22A2E0C);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100175B7C()
{
  v3 = v0 - 1545;
  v4 = *(v1 + 8 * (v3 ^ 0x125D)) == 69509366;
  return (*(v2 + 8 * ((v4 | (8 * v4)) ^ v3)))((v3 - 3942) | 0xB31u);
}

uint64_t sub_100175C08(uint64_t a1)
{
  STACK[0x390] = 0xEE4A02AC78F9CE2ALL;
  STACK[0x398] = 0x84752738B815E0BALL;
  STACK[0x380] = 0xEE4A02AC78F9CE2ALL;
  STACK[0x388] = 0x84752738B815E0BALL;
  return (*(v2 + 8 * v1))(a1, &STACK[0x4D33012B1C55BA86]);
}

uint64_t sub_100175C5C()
{
  if (v0)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((((((v2 - 9172) | 0xC7B) + 969) ^ ((v2 - 5312) | 0x80)) * v5) ^ v2)))();
}

uint64_t sub_100175CA4@<X0>(int a1@<W8>)
{
  v4 = ((a1 - 1948315012) ^ v1 ^ 0xFBFFF0C5) + ((2 * (a1 - 1948315012)) & 0xF7FFFF7C);
  v6 = v4 - ((2 * v4 + 134217860) & 0xEE8028D6) != -67108930 && ((v4 - ((2 * v4 - 124) & 0xD6) - 83) & 0xF) == 11;
  return (*(v3 + 8 * (((((v2 - 793) ^ 0x4CF) - 2920) * v6) ^ v2)))();
}

uint64_t sub_100175DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 56 * (v6 ^ 0x19CC);
  v10 = *(v7 + 8 * (v9 - 5706));
  return (*(v8 + 8 * ((57 * (v10 == 554383027)) ^ v9)))(v10 - 554383027, a2, a3, a4, a5, a6, (v9 - 304101789) & 0x12202F7F, 4294924396);
}

uint64_t sub_100175E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  STACK[0x398] = 0x1513D3D632023598;
  *(v50 + 32) = 0x286EF6AB7B01F7BELL;
  STACK[0x390] = 0x286EF6AB7B01F7BELL;
  return (*(v52 + 8 * v51))(*(v52 + 8 * v51), a2, a3, a4, &STACK[0x333C12956353CC1A], a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_100175EB8()
{
  if (v0)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * (((v2 - 4452 + (v2 ^ 0x32DD) - 8078) * v5) ^ v2)))();
}

uint64_t sub_100175EF4@<X0>(int a1@<W8>)
{
  v5 = a1 - (((v2 ^ 0x7BE2B83) + 2026630 * v1) & 0x7C6A4EA) - 1883085583;
  v7 = v5 == 65229429 || (v5 & 0xF) != ((v3 + 864) | 0xC) - 5481;
  return (*(v4 + 8 * ((30 * (((v3 - 7) ^ v7) & 1)) ^ v3)))();
}

uint64_t sub_10017603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  LODWORD(a40) = 0;
  LODWORD(a10) = v59 ^ v60 ^ (a1 - 601698240) & 0x23DD39FD;
  LODWORD(a37) = *(a2 - 0x4D33012B1C55B6E8);
  LODWORD(a38) = *(a2 - 0x4D33012B1C55B6EALL);
  LODWORD(a39) = *(a2 - 0x4D33012B1C55B6EBLL);
  HIDWORD(a42) = 1957229576;
  return (*(v61 + 8 * (a1 + 3472)))(a1, a2, a3, 0xB2CCFED4E3AA490BLL, a5, a6, a7, a8, &a57, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v57 + v58, a42);
}

uint64_t sub_100176198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37, int a38, int a39, int a40, unsigned int a41, int a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, int a52, unsigned int a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57)
{
  v61 = *(v59 - 0x718535270C037BFLL) ^ v57;
  v62 = *(a2 + v60) ^ *(v59 - 0x718535270C037BCLL);
  v94 = *(a2 - 0x4D33012B1C55B6F1) ^ *(v59 - 0x718535270C037BALL);
  v92 = *(a2 - 0x4D33012B1C55B6F4) ^ *(v59 - 0x718535270C037BDLL);
  v63 = *(a2 - 0x4D33012B1C55B6EFLL) ^ *(v59 - 0x718535270C037B8);
  v64 = *(v59 - 0x718535270C037B7) ^ a51;
  v96 = *(v59 - 0x718535270C037B5) ^ a56;
  v95 = *(v59 - 0x718535270C037B6) ^ a49;
  v99 = v58;
  v65 = *(v59 - 0x718535270C037B1) ^ a37;
  LODWORD(a34) = (v58 - 2054718306) & 0x7A787BFC;
  LODWORD(a33) = 4 * v58;
  v100 = ((*(v59 - 0x718535270C037B3) ^ a39) & 0xFFFFFF9B) + ((4 * v58) ^ 0xFFFF8B75) + ((*(v59 - 0x718535270C037B3) ^ a39) & 0x64) - (((*(v59 - 0x718535270C037B3) ^ a39) << (a34 ^ 0x55)) & 0x22);
  v97 = *(v59 - 0x718535270C037B2) ^ a53;
  v66 = *(v59 - 0x718535270C037B4) ^ a41;
  v90 = *(a2 - 0x4D33012B1C55B6F0) ^ *(v59 - 0x718535270C037B9);
  v67 = *(a2 - 0x4D33012B1C55B6E7) ^ *(v59 - 0x718535270C037B0);
  v68 = *(&off_1002DD400 + (v58 ^ 0x184D)) - 1228910287;
  v91 = *(a2 + a4) ^ *(v59 - 0x718535270C037BELL);
  v69 = (v92 ^ 2) - 742697449 - ((2 * (v92 ^ 2)) & 0x2E);
  v98 = *(a2 - 0x4D33012B1C55B6F2) ^ *(v59 - 0x718535270C037BBLL);
  v70 = (*&v68[8 * (v94 ^ 0x8B)] ^ 0x2F) - (v94 ^ 0xFFFFFFC0);
  v71 = (*&v68[8 * (v97 ^ 0x8B)] ^ 0x2F) - (v97 ^ 0xFFFFFFC0);
  v72 = ((*&v68[8 * (v91 ^ 0x8F)] ^ 0x2F) - (v91 ^ 0xFFFFFFC4)) ^ ((*&v68[8 * (v61 ^ 0x8E)] ^ 0x2F) - (v61 ^ 0xFFFFFFC5)) ^ ((*&v68[8 * (v62 ^ 0x18DLL)] ^ 0x2F) - (v62 ^ 0xFFFFFFC6)) ^ ((*&v68[8 * (v98 ^ 0x8A)] ^ 0x2F) - (v98 ^ 0xFFFFFFC1)) ^ v70 ^ ((*&v68[8 * (v90 ^ 0x188)] ^ 0x2F) - (v90 ^ 0xFFFFFFC3)) ^ ((*&v68[8 * (v69 ^ 0xD3BB5699)] ^ 0x2F) - (v69 ^ 0xD3BB56A1 ^ -(v69 ^ 0xD3BB56A1) ^ (115 - (v69 ^ 0xD2))) - 115);
  v73 = v72 ^ ((*&v68[8 * (v63 ^ 0x89)] ^ 0x2F) - (v63 ^ 0xFFFFFFC2)) ^ ((*&v68[8 * (v64 ^ 0x8E)] ^ 0x2F) - (v64 ^ 0xFFFFFFC5)) ^ ((*&v68[8 * (v95 ^ 0x18FLL)] ^ 0x2F) - (v95 ^ 0xFFFFFFC4)) ^ ((*&v68[8 * (v96 ^ 0x18CLL)] ^ 0x2F) - (v96 ^ 0xFFFFFFC7)) ^ ((*&v68[8 * (v66 ^ 0x18DLL)] ^ 0x2F) - (v66 ^ 0xFFFFFFC6)) ^ ((*&v68[8 * (v100 ^ 0x11BLL)] ^ 0x2F) - (v100 ^ 0x50)) ^ v71 ^ ((*&v68[8 * (v65 ^ 0x188)] ^ 0x2F) - (v65 ^ 0xFFFFFFC3)) ^ ((*&v68[8 * (v67 ^ 0x89)] ^ 0x2F) - (v67 ^ 0xFFFFFFC2));
  v74 = v61 ^ 0x66 ^ (v73 + (~(2 * v73) | 0x33) + 103);
  v75 = v91 ^ 0x1B ^ (v74 - ((2 * v74) & 0x36) + 27);
  v76 = v92 ^ 0xFFFFFF9A ^ (v75 + (~(2 * v75) | 0xFFFFFFCB) - 101);
  v77 = v62 ^ 0xFFFFFF88 ^ (v76 - ((2 * v76) & 0x10) - 120);
  v78 = v94 ^ 0xFFFFFFDD ^ (v77 - ((2 * v77) & 0xFFFFFFBA) - 35);
  v93 = v63;
  v79 = v63 ^ 0x49 ^ (v78 - ((2 * v78) & 0xFFFFFF92) + 73);
  v80 = v90 ^ 0x7A ^ (v79 - ((2 * v79) & 0xFFFFFFF4) + 122);
  v81 = v64 ^ (v80 - ((2 * v80) & 0xFFFFFFC7) - 29) ^ 0xFFFFFFE3;
  v82 = v95 ^ 0xFFFFFFA5 ^ (v81 - ((2 * v81) & 0x4A) - 91);
  v83 = v96 ^ (v82 - (v82 >> 5 << 6) - 32) ^ 0xFFFFFFE0;
  v84 = v66 ^ 0xFFFFFFAB ^ (v83 - ((2 * v83) & 0x56) - 85);
  v85 = (v84 - ((2 * v84) & 0x22) - 111) ^ v100;
  v86 = v97 ^ 0x58 ^ (v85 - ((2 * v85) & 0xFFFFFFB0) + 88);
  v87 = v67 ^ v65 ^ (v86 - ((2 * v86) & 0xFFFFFFDA) - 19);
  LOBYTE(v63) = *(*(&off_1002DD400 + v99 - 6193) + ((v87 ^ v98) ^ 0x27) - 520879547);
  v88 = a44;
  LODWORD(a44) = v87 ^ v98 ^ 0xFFFFFFED;
  return (*(a57 + 8 * ((204 * ((a43 & 1) == 0)) ^ (v99 + 2995))))(a57, v88, v62, v97, v71, v70, v61, v94, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v59, v62, v90, v91, v92, a26, a27, a28, a29, a30, a31, a32, a33, a34, v61, v65, v67, v93, v66, ((-90 * (v63 ^ 0x81) - ((76 * (v63 ^ 0x81)) & 0x40) + 33) ^ v63) ^ 0xECu, a44, a45, a46);
}

uint64_t sub_100176B00(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4, unint64_t a5, unsigned __int8 a6, int a7, unsigned __int8 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52)
{
  v61 = *(v59 + ((a7 - 20) & 0x3B ^ 0x8Au ^ v52)) ^ 0x81;
  v62 = *(v59 + (a6 ^ 0x51)) ^ 0xFFFFFF81;
  LODWORD(a30) = (-90 * v62) ^ v62;
  v63 = *(v59 + (v60 ^ 0xCALL)) ^ 0x81;
  v64 = *(v59 + (v54 ^ 0x2FLL)) ^ 0x81;
  v65 = *(v59 + (a35 ^ 0xCALL)) ^ 0x81;
  v66 = (-90 * v64) ^ v64 ^ v65 ^ (-90 * v65);
  v67 = *(v59 + (a26 ^ 0x7CLL)) ^ 0x81;
  LOBYTE(v62) = *(v59 + (v58 ^ 0xCALL)) ^ 0x81;
  v68 = (-90 * v67) ^ v67 ^ v62 ^ (-90 * v62);
  LOBYTE(v62) = *(v59 + (a27 ^ 0xE7)) ^ 0x81;
  v69 = *(v59 + (a3 ^ 0xCALL)) ^ 0x81;
  v70 = (-90 * v62) ^ v62 ^ v69 ^ (-90 * v69);
  LOBYTE(v62) = *(v59 + (v57 ^ 0xBALL)) ^ 0x81;
  v71 = *(v59 + (a8 ^ 0xCALL)) ^ 0x81;
  v72 = *(v59 + (a4 ^ 0xBFLL)) ^ 0x81;
  v73 = *(v59 + (a46 ^ 0xCALL)) ^ 0x81;
  LODWORD(a45) = ((*(v59 + (v53 ^ 0x12)) ^ 0xCD ^ (-90 * (*(v59 + (v53 ^ 0x12)) ^ 1))) << 16) | (((-90 * v62) ^ v62 ^ v71 ^ (-90 * v71)) << 8);
  v74 = *(v59 + (a29 ^ a5)) ^ 0x81;
  v75 = *(v59 + (a39 ^ 0xCALL)) ^ 0x81;
  LOBYTE(v62) = v74 ^ v75 ^ (-90 * v75);
  v76 = *(v59 + (v56 ^ 0xCALL)) ^ 0x81;
  LODWORD(a39) = v68;
  LODWORD(a38) = ((-90 * v63) ^ v63);
  LODWORD(a40) = ((-90 * v72) ^ v72 ^ v73 ^ (-90 * v73));
  return (*(a52 + 8 * a7))(v66, (*(v59 + (a31 ^ 0x12)) ^ v76 ^ (-90 * v76)) ^ 0xCDu ^ (-90 * (*(v59 + (a31 ^ 0x12)) ^ 1)), ((-90 * v61) ^ v61), ((-90 * v74) ^ v62), a50 & 7 ^ 4u, v70 << 16, 1426258200, ((-90 * (*(v59 + (v55 ^ 0xCALL)) ^ 0x81)) ^ *(v59 + (v55 ^ 0xCALL)) ^ 0x81), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v59);
}

uint64_t sub_10017705C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W7>, uint64_t a7@<X8>, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v330 = v57;
  v329[0] = (v57 + 114) & 0xBF;
  v59 = (a5 + ((a6 | (a1 << 8)) ^ a3 | (a39 << 24))) ^ 0xCAF4F037;
  v60 = ((a4 << (v329[0] ^ 0xB1)) + v58 + (a2 | (a41 << 24))) ^ 0x94C350E4;
  v61 = (((a49 + a29) ^ a37) + (a52 << 24)) ^ 0x8881676u;
  v62 = v60 - ((2 * v60) & 0xF1411270) + 0x4B32A7F978A08938;
  v63 = *(a48 + a7);
  v64 = v59 - ((2 * v59) & 0x1D0C65A60) - 0x592FE51C179CD2D0;
  v65 = *(a48 + ((v64 >> 24) ^ 0xA6D01AE3E8));
  v66 = a7 - ((2 * a7) & 0x96C6E648) + 0x104454964B637324;
  v67 = v61 - ((2 * v61) & 0xC39576D6) + 0x2C7AD68A61CABB6BLL;
  v68 = *(a48 + (((a4 << (v329[0] ^ 0xB1)) + v58 + a2) ^ 0xE4u));
  v69 = *(a48 + (BYTE2(v64) ^ 0x63));
  v70 = *(a48 + (BYTE1(v64) ^ 0x2DLL));
  v71 = v63 ^ 0x76;
  v72 = *(&off_1002DD400 + (v57 ^ 0x424)) - 149162238;
  v73 = ((*&v72[4 * (*(a48 + ((v67 >> 24) ^ 0x2C7AD68A61)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ ((((*&v72[4 * (*(a48 + ((v62 >> 24) ^ 0x4B32A7F978)) ^ 0x76)] + 1964184515) << 8) ^ (((*&v72[4 * v71] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ (*&v72[4 * (v65 ^ 0x76)] + 1964184515)) << 16);
  LODWORD(v65) = HIDWORD(v73) + 847288401 - ((2 * HIDWORD(v73)) & 0x650130A2);
  LODWORD(v73) = v73 - 1672892643 - ((2 * v73) & 0x38935E00);
  v74 = (((((*&v72[4 * (*(a48 + v59) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (((a49 + a29) ^ a37) ^ 0x76u)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v66) ^ 0x73)) ^ 0x76)] + 1964184515)) << 8) ^ 0x74C6F9602B00;
  v75 = (*&v72[4 * (v68 ^ 0x76)] + 1964184515);
  v76 = (((v74 + v75) << 8) - ((v74 & v75) << 9)) ^ 0x74B24B2B00;
  v77 = ((*&v72[4 * (*(a48 + (BYTE2(v67) ^ 0xCALL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + ((v66 >> 24) ^ 0x104454964BLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE2(v62) ^ 0xA0)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (v69 ^ 0x76)] + 1964184515)) << 16);
  v78 = ((*&v72[4 * (*(a48 + (BYTE2(v66) ^ 0x63)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE1(v62) ^ 0x89)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (v70 ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v67) ^ 0xBBLL)) ^ 0x76)] + 1964184515)) << 16);
  v79 = HIDWORD(v78) ^ v78 ^ 0x88DA6220;
  v80 = v79 - ((2 * v79) & 0x10D217544) + 0x508015468690BAA2;
  v81 = HIDWORD(v77) ^ v77 ^ 0x4499D7B;
  v82 = v81 - ((2 * v81) & 0xE15BC04ALL) - 0x635CF4EC8F521FDBLL;
  v83 = ((((((v65 ^ 0x32809851) - (v73 ^ 0xAEC9374C ^ v65)) ^ ((v73 ^ 0x63B650E2) + 1)) - 1672892643 - ((2 * (((v65 ^ 0x32809851) - (v73 ^ 0xAEC9374C ^ v65)) ^ ((v73 ^ 0x63B650E2) + 1))) & 0x38935E3A)) ^ v73) + (v65 ^ 0x32809851)) ^ 0x31BD2638;
  v84 = v83 + 0x35D8892C55972BC9 - ((2 * v83) & 0xAB2E5792);
  v85 = (HIDWORD(v76) ^ v76 ^ 0x64F45961) - ((2 * (HIDWORD(v76) ^ v76 ^ 0x64F45961)) & 0x1E8A79BDCLL) + 0x1A54E9FDF453CDEELL;
  v86 = ((*&v72[4 * (*(a48 + (BYTE1(v84) ^ 0x2BLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ ((((*&v72[4 * (*(a48 + (BYTE2(v80) ^ 0x90)) ^ 0x76)] + 1964184515) << 8) ^ (((*&v72[4 * (*(a48 + (BYTE1(v85) ^ 0xCDLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ (*&v72[4 * (*(a48 + ((v82 >> 24) ^ 0x9CA30B1370)) ^ 0x76)] + 1964184515)) << 16);
  v87 = ((*&v72[4 * (*(a48 + (BYTE2(v84) ^ 0x97)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE2(v85) ^ 0x53)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + ((v80 >> 24) ^ 0x5080154686)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + v81) ^ 0x76)] + 1964184515)) << 16);
  v88 = ((*&v72[4 * (*(a48 + v83) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE4(v76) ^ v76 ^ 0x61u)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE1(v80) ^ 0xBALL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE2(v82) ^ 0xADLL)) ^ 0x76)] + 1964184515)) << 16);
  v89 = ((*&v72[4 * (*(a48 + ((v85 >> 24) ^ 0x1A54E9FDF4)) ^ 0x76)] + 1964184515) << 24) ^ 0x74C68DD2602B00 ^ ((*&v72[4 * (*(a48 + v79) ^ 0x76)] + 1964184515) << 16) ^ (((*&v72[4 * (*(a48 + ((v84 ^ 0x35D8892C55972BC9uLL) >> (BYTE1(v66) & 0x18 ^ 0x10u) >> (BYTE1(v66) & 0x18 ^ 8u))) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 32) ^ ((*&v72[4 * (*(a48 + (BYTE1(v82) ^ 0xE0)) ^ 0x76)] + 1964184515) << 8);
  v90 = (HIDWORD(v88) ^ v88 ^ 0xD1BECCCB) - ((2 * (HIDWORD(v88) ^ v88 ^ 0xD1BECCCB)) & 0x176E3628ALL) + 0x7A19D4F6BB71B145;
  v91 = (HIDWORD(v89) ^ v89 ^ 0x1E8AE7C0) - ((2 * (HIDWORD(v89) ^ v89 ^ 0x1E8AE7C0)) & 0xDFF47046) + 0x1F19FF676FFA3823;
  v92 = HIDWORD(v86) ^ v86 ^ 0x85A9262B;
  v93 = HIDWORD(v87) ^ v87 ^ 0x79C84A27;
  v94 = v93 - ((2 * v93) & 0x14558947CLL) - 0x7D8963E85D53B5C2;
  v95 = v92 - ((2 * v92) & 0x143DDA6FCLL) + 0x6725E675A1EED37ELL;
  LODWORD(v82) = *(a48 + (BYTE4(v89) ^ v89 ^ 0xC0u));
  v96 = ((*&v72[4 * (*(a48 + (BYTE2(v94) ^ 0xACLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ ((((*&v72[4 * (*(a48 + (BYTE2(v90) ^ 0x71)) ^ 0x76)] + 1964184515) << 8) ^ (((*&v72[4 * (*(a48 + ((v91 >> 24) ^ 0x1F19FF676FLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ (*&v72[4 * (*(a48 + v92) ^ 0x76)] + 1964184515)) << 16);
  v97 = ((*&v72[4 * (*(a48 + ((v90 >> 24) ^ 0x7A19D4F6BBLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE1(v95) ^ 0xD3)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + ((v94 >> 24) ^ 0x82769C17A2)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (v82 ^ 0x6D ^ -(v82 ^ 0x6D) ^ (27 - (v82 ^ 0x76))) + 108] + 1964184515)) << 16);
  v98 = ((*&v72[4 * (*(a48 + (BYTE2(v91) ^ 0xFALL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE1(v90) ^ 0xB1)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + ((v95 >> 24) ^ 0x6725E675A1)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v94) ^ 0x4ALL)) ^ 0x76)] + 1964184515)) << 16);
  v99 = ((*&v72[4 * (*(a48 + (BYTE4(v88) ^ v88 ^ 0xCBu)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE2(v95) ^ 0xEELL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + v93) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v91) ^ 0x38)) ^ 0x76)] + 1964184515)) << 16);
  v100 = (HIDWORD(v96) ^ v96 ^ 0xF46DD5CB) - ((2 * (HIDWORD(v96) ^ v96 ^ 0xF46DD5CB)) & 0x12D24B496) - 0x15D12DCA696DA5B5;
  v101 = (HIDWORD(v98) ^ v98 ^ 0xDEE2820F) - ((2 * (HIDWORD(v98) ^ v98 ^ 0xDEE2820F)) & 0x599A248A) + 0x3CC00662CCD1245;
  v102 = HIDWORD(v97) ^ v97 ^ 0x1EEC0DB6;
  v103 = v102 - ((2 * v102) & 0x1A8DFB78CLL) - 0x1624B6D32B90243ALL;
  v104 = (((v99 & 0xFFFFFF00 ^ HIDWORD(v99)) >> 26) & 0xFFFFFFFF0000003FLL | (((v99 & 0xFFFFFF00 ^ HIDWORD(v99)) & 0x3FFFFFF) << 6)) ^ 0xCE096E42;
  LODWORD(v91) = (v104 >> 6) + (v104 << 26);
  v105 = *(v56 + (BYTE4(v98) ^ v98 ^ 0xFu));
  v106 = (v91 ^ 0xA6A60C67) - ((2 * (v91 ^ 0xA6A60C67)) & 0x16A16A038) + 0x34F37EEBB50B501CLL;
  v107 = *(v56 + (BYTE1(v100) ^ 0x5ALL));
  v108 = *(v56 + v102);
  v109 = *(v56 + (BYTE2(v103) ^ 0x6FLL));
  v110 = (((((*&v72[4 * (*(v56 + ((v103 >> 24) ^ 0xE9DB492CD4)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v101 >> 24) ^ 0x3CC00662CLL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (v91 ^ 0x67u)) ^ 0x76)] + 1964184515)) << 16) ^ 0x74C68DD2602B00 ^ ((*&v72[4 * (*(v56 + ((v100 >> 24) ^ 0xEA2ED23596)) ^ 0x76)] + 1964184515) << 8);
  v111 = ((*&v72[4 * (*(v56 + (BYTE1(v106) ^ 0x50)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE4(v96) ^ v96 ^ 0xCBu)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (v108 ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (v105 ^ 0x76)] + 1964184515)) << 16);
  v112 = ((*&v72[4 * (*(v56 + (BYTE2(v106) ^ 0xBLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (v107 ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE1(v103) ^ 0xDBLL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE1(v101) ^ 0x12)) ^ 0x76)] + 1964184515)) << 16);
  LODWORD(v90) = *&v72[4 * (v109 ^ 0x76)] + 1964184515;
  v113 = HIDWORD(v110) ^ v110 ^ 0x2AE47045;
  v114 = (HIDWORD(v111) ^ v111 ^ 0x874F64A5) - ((2 * (HIDWORD(v111) ^ v111 ^ 0x874F64A5)) & 0x13B3024D0) + 0x7E4BD3E69D981268;
  v115 = ((*&v72[4 * (*(v56 + (BYTE2(v101) ^ 0xCDLL)) ^ 0x76)] + 1964184515) << 24) ^ 0x74C68DD2602B00 ^ ((*&v72[4 * (*(v56 + ((v106 >> 24) ^ 0x34F37EEBB5)) ^ 0x76)] + 1964184515) << 16) ^ (((v90 & 0x80 | 0x74B24B2B) ^ v90 & 0xFFFFFF7F) << 32) ^ ((*&v72[4 * (*(v56 + (BYTE2(v100) ^ 0x92)) ^ 0x76)] + 1964184515) << 8);
  v116 = *(v56 + v113);
  v117 = HIDWORD(v112) ^ v112 ^ 0x6123BFE7;
  v118 = v117 - ((2 * v117) & 0x1771F2326) - 0x5772855444706E6DLL;
  v119 = (HIDWORD(v115) ^ v115 ^ 0xC8334251) - ((2 * (HIDWORD(v115) ^ v115 ^ 0xC8334251)) & 0xE9A2CD8) - 0x38F465BFF8B2E994;
  v120 = v113 - ((2 * v113) & 0xA5175BA8) - 0x2785E65BAD74522CLL;
  v121 = ((*&v72[4 * (*(v56 + (BYTE1(v114) ^ 0x12)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ ((((*&v72[4 * (*(v56 + (BYTE2(v119) ^ 0x4DLL)) ^ 0x76)] + 1964184515) << 8) ^ (((*&v72[4 * (*(v56 + ((v118 >> 24) ^ 0xA88D7AABBBLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ (*&v72[4 * (v116 ^ 0x76)] + 1964184515)) << 16);
  v122 = ((*&v72[4 * (*(v56 + ((v119 >> 24) ^ 0xC70B9A4007)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE1(v120) ^ 0xADLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE2(v114) ^ 0x98)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + v117) ^ 0x76)] + 1964184515)) << 16);
  v123 = ((*&v72[4 * (*(v56 + (BYTE2(v120) ^ 0x8BLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + ((v114 >> 24) ^ 0x7E4BD3E69DLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE1(v118) ^ 0x91)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE4(v115) ^ v115 ^ 0x51u)) ^ 0x76)] + 1964184515)) << 16);
  v124 = ((*&v72[4 * (*(v56 + (BYTE2(v118) ^ 0x8FLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE1(v119) ^ 0x16)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v120 >> 24) ^ 0xD87A19A452)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE4(v111) ^ v111 ^ 0xA5u)) ^ 0x76)] + 1964184515)) << 16);
  v125 = (HIDWORD(v121) ^ v121 ^ 0x794013DA) - ((2 * (HIDWORD(v121) ^ v121 ^ 0x794013DA)) & 0xE2BE4544) - 0x3718A5D98EA0DD5ELL;
  v126 = HIDWORD(v122) ^ v122 ^ 0x6AA5965;
  v127 = (HIDWORD(v123) ^ v123 ^ 0x5BAD9053) - ((2 * (HIDWORD(v123) ^ v123 ^ 0x5BAD9053)) & 0x107EF1330) - 0x693C1C847C087668;
  v128 = (HIDWORD(v124) ^ v124 ^ 0x69F9E370) - ((2 * (HIDWORD(v124) ^ v124 ^ 0x69F9E370)) & 0x14CF914D6) - 0x19CA5C7359837595;
  v129 = ((((*&v72[4 * (*(v56 + (BYTE4(v123) ^ v123 ^ 0x53u)) ^ 0x76)] + 1964184515) << 8) ^ (((*&v72[4 * (*(v56 + (((HIDWORD(v122) ^ v122 ^ 0x6AA5965) >> (v109 & 8 ^ 8)) >> (v109 & 8))) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ (*&v72[4 * (*(v56 + (BYTE4(v124) ^ v124 ^ 0x70u)) ^ 0x76)] + 1964184515)) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE1(v125) ^ 0x22)) ^ 0x76)] + 1964184515) << 8);
  v130 = ((*&v72[4 * (*(v56 + (BYTE1(v128) ^ 0x8ALL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE2(v125) ^ 0x5FLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + BYTE2(v126)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE1(v127) ^ 0x89)) ^ 0x76)] + 1964184515)) << 16);
  v131 = ((*&v72[4 * (*(v56 + (BYTE2(v127) ^ 0xF7)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE2(v128) ^ 0x7CLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v125 >> 24) ^ 0xC8E75A2671)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (v126 >> 24)) ^ 0x76)] + 1964184515)) << 16);
  v132 = ((*&v72[4 * (*(v56 + ((v127 >> 24) ^ 0x96C3E37B83)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + ((v128 >> 24) ^ 0xE635A38CA6)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE4(v121) ^ v121 ^ 0xDAu)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE4(v122) ^ 0x65)) ^ 0x76)] + 1964184515)) << 16);
  v133 = ((HIDWORD(v129) ^ 0x74C68D) + (v129 ^ 0xD2602B00) - 2 * ((HIDWORD(v129) ^ 0x74C68D) & (v129 ^ 0x52602B00))) ^ 0xA6E23482;
  v134 = HIDWORD(v131) ^ v131 ^ 0xAB5DDC59;
  v135 = v134 - ((2 * v134) & 0xBA52AFFCLL) + 0xB1A4DF95D2957FELL;
  v136 = HIDWORD(v130) ^ v130 ^ 0x2C4FE1C1;
  v137 = *(v56 + v133);
  v138 = v136 - ((2 * v136) & 0x29ACB6F6) + 0x112F2F0414D65B7BLL;
  v139 = *(v56 + (BYTE1(v138) ^ 0x5BLL));
  v140 = HIDWORD(v132) ^ v132 ^ 0x484EE8F8;
  v141 = *(v56 + (BYTE2(v138) ^ 0xD6));
  v142 = v140 - ((2 * v140) & 0x64AEB2E) - 0x7FF3C688FCDA8A69;
  v143 = v140;
  v144 = BYTE1(v142) ^ 0x75;
  v145 = v133 - ((2 * v133) & 0x1C8C68384) + 0x23BA3C0DE46341C2;
  v146 = BYTE1(v145) ^ 0x41;
  v147 = (v138 >> 24) ^ 0x112F2F0414;
  v148 = BYTE2(v142) ^ 0x25;
  v149 = (v145 >> 24) ^ 0x23BA3C0DE4;
  v150 = BYTE2(v145) ^ 0x63;
  v151 = (v142 >> 24) ^ 0x800C397703;
  LODWORD(v142) = *(v56 + v143);
  v152 = *(v56 + v144);
  LODWORD(v144) = *(v56 + ((v135 >> 24) ^ 0xB1A4DF95DLL));
  v153 = ((*&v72[4 * (*(v56 + (BYTE2(v135) ^ 0x29)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (((((v142 ^ 0x6D) - (v142 ^ 0x25AD36CC)) ^ 0xFFFFFFFE) + (v142 ^ 0x6D)) ^ 0x25AD36BA)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (v137 ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (v139 ^ 0x76)] + 1964184515)) << 16);
  v154 = ((*&v72[4 * (*(v56 + v146) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (v141 ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * ((v144 - ((2 * v144) & 0xDA) + 109) ^ 0x1BLL)] + 1964184515) << 8) ^ (*&v72[4 * (v152 ^ 0x76)] + 1964184515)) << 16);
  v155 = ((*&v72[4 * (*(v56 + v150) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (((*(v56 + v147) ^ -*(v56 + v147) ^ (109 - (*(v56 + v147) ^ 0x6D))) + 109) ^ 0x1B)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + v134) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + v148) ^ 0x76)] + 1964184515)) << 16);
  v156 = ((*&v72[4 * (*(v56 + v149) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + v136) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE1(v135) ^ 0x57)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + v151) ^ 0x76)] + 1964184515)) << 16);
  v157 = HIDWORD(v156) ^ v156 ^ 0xCEBB6F96;
  v158 = v157 - ((2 * v157) & 0x1CA90984ELL) + 0x54C071B0E5484C27;
  v159 = (HIDWORD(v154) ^ v154 ^ 0x40FABD10) - ((2 * (HIDWORD(v154) ^ v154 ^ 0x40FABD10)) & 0x8F281796) + 0x4F4448BA47940BCBLL;
  v160 = HIDWORD(v155) ^ v155 ^ 0x6E55D2EB;
  v161 = v160 - ((2 * v160) & 0x45223604) - 0x25BC3544DD6EE4FELL;
  v162 = ((*&v72[4 * (*(v56 + (BYTE2(v159) ^ 0x94)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ ((((*&v72[4 * (*(v56 + (BYTE2(v158) ^ 0x48)) ^ 0x76)] + 1964184515) << 8) ^ (((*&v72[4 * (*(v56 + v160) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ (*&v72[4 * (*(v56 + ((HIDWORD(v153) ^ v153 ^ 0xBC353246) >> 16)) ^ 0x76)] + 1964184515)) << 16);
  LODWORD(v139) = *(v56 + ((v159 >> 24) ^ 0x4F4448BA47));
  v163 = (((*&v72[4 * (*(v56 + (BYTE1(v161) ^ 0x1BLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 32) ^ ((*&v72[4 * ((((v139 - (v139 ^ 0x6D)) ^ 0xFFFFFFFE) + v139) ^ 0x1B)] + 1964184515) << 8) ^ ((*&v72[4 * (*(v56 + (((HIDWORD(v153) ^ v153) >> 24) ^ 0xBCLL)) ^ 0x76)] + 1964184515) << 16) ^ (((*&v72[4 * (*(v56 + ((v158 >> 24) ^ 0x54C071B0E5)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 24);
  v164 = ((*&v72[4 * (*(v56 + v157) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE4(v153) ^ 0x46)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE4(v154) ^ v154 ^ 0x10u)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE2(v161) ^ 0x91)) ^ 0x76)] + 1964184515)) << 16);
  v165 = (((*&v72[4 * (*(v56 + (BYTE1(v159) ^ 0xBLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v161 >> 24) ^ 0xDA43CABB22)) ^ 0x76)] + 1964184515) << 8);
  v166 = ((v163 ^ 0x74C6F9602B00) >> 32) ^ v163 ^ 0x342CC015;
  v167 = v166 - ((2 * v166) & 0x2401B316) - 0x6F1D6233EDFF2675;
  v168 = ((*&v72[4 * (*(v56 + ((WORD2(v153) ^ v153 ^ 0x3246) >> 8)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ ((v165 ^ (*&v72[4 * (*(v56 + (BYTE1(v158) ^ 0x4CLL)) ^ 0x76)] + 1964184515)) << 16);
  v169 = HIDWORD(v164) ^ v164 ^ 0xDB16A39B;
  v170 = v169 - ((2 * v169) & 0x12CA8361ALL) + 0x3DF9C61E96541B0DLL;
  v171 = HIDWORD(v168) ^ v168 ^ 0x3B237834;
  v172 = v171 - ((2 * v171) & 0x4CD6CFFC) + 0x33F7BC38266B67FELL;
  v173 = (HIDWORD(v162) ^ v162 ^ 0x662818BE) - ((2 * (HIDWORD(v162) ^ v162 ^ 0x662818BE)) & 0x188650342) - 0x22DF96EF3BCD7E5FLL;
  v174 = ((*&v72[4 * (*(v56 + (BYTE2(v172) ^ 0x6BLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE1(v173) ^ 0x81)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v167 >> 24) ^ 0x90E29DCC12)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + ((v170 >> 24) ^ 0x3DF9C61E96)) ^ 0x76)] + 1964184515)) << 16);
  v175 = ((*&v72[4 * (*(v56 + ((v172 >> 24) ^ 0x33F7BC3826)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE2(v173) ^ 0x32)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + v166) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + v169) ^ 0x76)] + 1964184515)) << 16);
  v176 = (((((*&v72[4 * (*(v56 + (BYTE1(v170) ^ 0x1BLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 24) ^ ((*&v72[4 * (*(v56 + v171) ^ 0x76)] + 1964184515) << 16) ^ ((*&v72[4 * (*(v56 + ((v173 >> 24) ^ 0xDD206910C4)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE1(v167) ^ 0xD9)) ^ 0x76)] + 1964184515)) << 8) ^ 0x74C68DD2602B00;
  v177 = ((*&v72[4 * (*(v56 + (BYTE2(v170) ^ 0x54)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE1(v172) ^ 0x67)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE4(v162) ^ v162 ^ 0xBEu)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + BYTE2(v167)) ^ 0x76)] + 1964184515)) << 16);
  v178 = (HIDWORD(v176) ^ v176 ^ 0xD000059D) - ((2 * (HIDWORD(v176) ^ v176 ^ 0xD000059D)) & 0x11696A32) + 0x202C185408B4B519;
  v179 = (HIDWORD(v175) ^ v175 ^ 0xF1764C0F) - ((2 * (HIDWORD(v175) ^ v175 ^ 0xF1764C0F)) & 0x18E500EFCLL) - 0x42E0403638D7F882;
  v180 = (HIDWORD(v177) ^ v177 ^ 0x436FA41A) - ((2 * (HIDWORD(v177) ^ v177 ^ 0x436FA41A)) & 0xC83D2BAALL) + 0x4C178569641E95D5;
  LODWORD(v173) = HIDWORD(v174) ^ v174;
  v181 = HIDWORD(v174) ^ v174 ^ 0xFB522CEBLL;
  v182 = ((*&v72[4 * (*(v56 + (BYTE1(v178) ^ 0xB5)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE4(v177) ^ v177 ^ 0x1Au)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (v181 >> 24)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE1(v179) ^ 7)) ^ 0x76)] + 1964184515)) << 16);
  v183 = ((*&v72[4 * (*(v56 + (BYTE2(v178) ^ 0xB4)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE1(v180) ^ 0x95)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE4(v174) ^ 0xEBLL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE2(v179) ^ 0x28)) ^ 0x76)] + 1964184515)) << 16);
  v184 = (((((*&v72[4 * (*(v56 + (BYTE2(v180) ^ 0x1ELL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (((v173 ^ 0xFB522CEB) >> (v107 & 8)) >> (v107 & 8 ^ 8))) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + ((v179 >> 24) ^ 0xBD1FBFC9C7)) ^ 0x76)] + 1964184515)) << 16) ^ ((*&v72[4 * (*(v56 + ((v178 >> 24) ^ 0x202C185408)) ^ 0x76)] + 1964184515) << 8);
  v185 = ((*&v72[4 * (*(v56 + BYTE2(v181)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE4(v175) ^ v175 ^ 0xFu)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE4(v176) ^ v176 ^ 0x9Du)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + ((v180 >> 24) ^ 0x4C17856964)) ^ 0x76)] + 1964184515)) << 16);
  v186 = HIDWORD(v182) ^ v182 ^ 0xC8EDA857;
  v187 = HIDWORD(v184) ^ v184 ^ 0xE989E84A;
  v188 = HIDWORD(v185) ^ v185 ^ 0xBD0751B7;
  v189 = HIDWORD(v183) ^ v183 ^ 0xFE778FE;
  v190 = v187 - ((2 * v187) & 0x7864599E) + 0x570F61E23C322CCFLL;
  v191 = v186 - ((2 * v186) & 0xF49555E) + 0x7F51B43107A4AAAFLL;
  v192 = v188 - ((2 * v188) & 0xC406A028) - 0x34DF90839DFCAFECLL;
  v193 = v189 - ((2 * v189) & 0x75F0FCE8) + 0x5A66D9863AF87E74;
  v194 = (*&v72[4 * (*(v56 + (BYTE2(v192) ^ 3)) ^ 0x76)] + 1964184515);
  v195 = ((*&v72[4 * (*(v56 + (BYTE2(v191) ^ 0xA4)) ^ 0x76)] + 1964184515) << 16) ^ ((*&v72[4 * (*(v56 + v189) ^ 0x76)] + 1964184515) << 8) ^ (__ROR8__(((v194 >> 6) | (v194 << 58)) ^ (4 * ((*&v72[4 * (*(v56 + (BYTE2(v190) ^ 0x32)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu)) ^ 0xC40000004E874023, 58) << 24);
  v196 = ((*&v72[4 * (*(v56 + ((v190 >> 24) ^ 0x570F61E23CLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + ((v192 >> 24) ^ 0xCB206F7C62)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v191 >> 24) ^ 0x7F51B43107)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE1(v193) ^ 0x7ELL)) ^ 0x76)] + 1964184515)) << 16);
  v197 = ((*&v72[4 * (*(v56 + v186) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE2(v193) ^ 0xF8)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + v187) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + v188) ^ 0x76)] + 1964184515)) << 16);
  v198 = (((*&v72[4 * (*(v56 + (BYTE1(v191) ^ 0xAALL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v193 >> 24) ^ 0x5A66D9863ALL)) ^ 0x76)] + 1964184515) << 8);
  v199 = (*&v72[4 * (*(v56 + (BYTE1(v192) ^ 0x50)) ^ 0x76)] + 1964184515);
  v200 = HIDWORD(v196) ^ v196 ^ 0xAA4B12FF;
  v201 = ((v195 ^ 0x13D5168523602B00) >> 32) ^ v195 ^ 0xF198BEE4;
  v202 = v198 ^ (*&v72[4 * (*(v56 + (BYTE1(v190) ^ 0x2CLL)) ^ 0x76)] + 1964184515);
  v203 = ((2 * v199) & 0xF7D4FFEELL) + (v199 ^ 0xDCB3F3FA7BEA7FF7) + 0x4C0C0584158009 + ((v202 << 8) ^ 0x74C68DD2602BLL ^ -((v202 << 8) ^ 0x74C68DD2602BLL) ^ (((2 * v199) & 0xF7D4FFEELL) + (v199 ^ 0xDCB3F3FA7BEA7FF7) + 0x4C0C0584158009 + ((v202 << 8) ^ (((2 * v199) & 0xF7D4FFEELL) + (v199 ^ 0xDCB3F3FA7BEA7FF7) + 0x234C0C0584158009) ^ 0xFF8B39722D9FD4) + 1));
  v204 = v203 << 8;
  v205 = (v203 << 8);
  v206 = (v203 >> 24);
  v207 = (v205 ^ v206 ^ 0x6C6DA99C) - 2 * ((v205 ^ v206 ^ 0x6C6DA99C) & 0x8E9CD577 ^ v206 & 0x22);
  v208 = v201 - ((2 * v201) & 0x1353F30FCLL) + 0x4665B13E9A9F987ELL;
  LODWORD(v193) = v207 - 1902324395;
  v209 = ((v207 + 0x1B5CC4998E9CD555) >> 24) ^ 0x1B5CC4998ELL;
  v210 = (HIDWORD(v197) ^ v197 ^ 0x51A4CB77) - ((2 * (HIDWORD(v197) ^ v197 ^ 0x51A4CB77)) & 0x113116AB0) - 0x65D5900D76774AA8;
  v211 = v200 - ((2 * v200) & 0x19D3FEBD6) + 0x1E87F840CE9FF5EBLL;
  v212 = ((*&v72[4 * (*(v56 + (BYTE1(v208) ^ 0x98)) ^ 0x76)] + 1964184515) << 24) ^ 0x74C68DD2602B00 ^ ((*&v72[4 * (*(v56 + v200) ^ 0x76)] + 1964184515) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE4(v197) ^ v197 ^ 0x77u)) ^ 0x76)] + 1964184515) << 8);
  LODWORD(v173) = *&v72[4 * (*(v56 + (BYTE1(v193) ^ 0xD5)) ^ 0x76)];
  v213 = ((*&v72[4 * (*(v56 + (BYTE2(v208) ^ 0x9FLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (BYTE1(v211) ^ 0xF5)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE1(v210) ^ 0xB5)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE2(v193) ^ 0x9CLL)) ^ 0x76)] + 1964184515)) << 16);
  v214 = ((*&v72[4 * (*(v56 + (BYTE2(v210) ^ 0x88)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + v209) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + ((v208 >> 24) ^ 0x4665B13E9ALL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE2(v211) ^ 0x9FLL)) ^ 0x76)] + 1964184515)) << 16);
  v215 = ((*&v72[4 * (*(v56 + ((v211 >> 24) ^ 0x1E87F840CELL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + ((v210 >> 24) ^ 0x9A2A6FF289)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE4(v204) ^ 0x9CLL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (((v195 ^ 0x13D5168523602B00) >> 32) ^ v195 ^ 0xE4)) ^ 0x76)] + 1964184515)) << 16);
  v216 = ((v212 ^ ((((v173 + 1964184515) ^ (-1964184515 - v173) ^ (1957841707 - ((v173 + 1964184515) ^ 0x74B24B2Bu))) + 1957841707) << 32)) >> 32) ^ v212 ^ 0x5CC06957;
  v217 = HIDWORD(v213) ^ v213 ^ 0xB37BED0D;
  v218 = v217 - ((2 * v217) & 0xF5DDB654) + 0x790872EE7AEEDB2ALL;
  v219 = HIDWORD(v215) ^ v215 ^ 0x872DBF04;
  v220 = v219 - ((2 * v219) & 0x5C088BD8) - 0x41855938D1FBBA14;
  v221 = v216 - ((2 * v216) & 0xB8F0295E) + 0x3682275A5C7814AFLL;
  LODWORD(v209) = HIDWORD(v214) ^ v214;
  v222 = HIDWORD(v214) ^ v214 ^ 0x46D8AF6ALL;
  v223 = ((*&v72[4 * (*(v56 + BYTE2(v222)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + ((v220 >> 24) ^ 0xBE7AA6C72ELL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE2(v221) ^ 0x78)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE2(v218) ^ 0xEELL)) ^ 0x76)] + 1964184515)) << 16);
  v224 = ((*&v72[4 * (*(v56 + ((v221 >> 24) ^ 0x3682275A5CLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + ((v218 >> 24) ^ 0x790872EE7ALL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (v222 >> 24)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + v219) ^ 0x76)] + 1964184515)) << 16);
  v225 = ((*&v72[4 * (*(v56 + (BYTE1(v220) ^ 0x45)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + v216) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + v217) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE4(v214) ^ 0x6ALL)) ^ 0x76)] + 1964184515)) << 16);
  LODWORD(v218) = *(v56 + (BYTE1(v218) ^ 0xDBLL));
  LODWORD(v218) = ((2 * v218) & 0xEA) + (v218 ^ 0xAFFEBB75) + 1342260363;
  v226 = ((*&v72[4 * ((((v218 + (v218 ^ 0x23CC5736) + 1) ^ 0x7FFFFFFE) + v218) & 0x5C33BFFF ^ 0x5C33A8BF)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(v56 + (((v209 ^ 0x46D8AF6A) >> (~v206 & 8)) >> (v206 & 8))) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(v56 + (BYTE2(v220) ^ 4)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(v56 + (BYTE1(v221) ^ 0x14)) ^ 0x76)] + 1964184515)) << 16);
  v227 = HIDWORD(v226) ^ v226 ^ 0x7442EDC5;
  v228 = HIDWORD(v225) ^ v225 ^ 0xBDDBCA6;
  v229 = v227 - ((2 * v227) & 0xB5EA82A2) + 0x96CA77D5AF54151;
  v230 = v228 - ((2 * v228) & 0x14D01DB94) + 0x9009FD2A680EDCALL;
  v231 = (HIDWORD(v223) ^ v223 ^ 0xC6134B45) - 0x14FF57B3360124E2 + (~(2 * (HIDWORD(v223) ^ v223 ^ 0xC6134B45)) | 0xFFFFFFFE6C0249C5);
  v232 = (HIDWORD(v224) ^ v224 ^ 0xCB8955E2) - ((2 * (HIDWORD(v224) ^ v224 ^ 0xCB8955E2)) & 0x100C46BC2) - 0x4F05A1557F9DCA1FLL;
  v233 = ((*&v72[4 * (*(a48 + (BYTE4(v223) ^ v223 ^ 0x45u)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE4(v224) ^ v224 ^ 0xE2u)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE2(v229) ^ 0xF5)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + v228) ^ 0x76)] + 1964184515)) << 16);
  v234 = ((*&v72[4 * (*(a48 + (BYTE1(v231) ^ 0xDBLL)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE1(v232) ^ 0x35)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + ((v229 >> 24) ^ 0x96CA77D5ALL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v230) ^ 0xEDLL)) ^ 0x76)] + 1964184515)) << 16);
  v235 = ((*&v72[4 * (*(a48 + ((v230 >> 24) ^ 0x9009FD2A6)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + ((v231 >> 24) ^ 0xEB00A84CC9)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + ((v232 >> 24) ^ 0xB0FA5EAA80)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v229) ^ 0x41)) ^ 0x76)] + 1964184515)) << 16);
  v236 = ((*&v72[4 * (*(a48 + v227) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + (BYTE2(v230) ^ 0x80)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE2(v231) ^ 0xFELL)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE2(v232) ^ 0x62)) ^ 0x76)] + 1964184515)) << 16);
  v237 = HIDWORD(v236) ^ v236 ^ 0x92B1F6F3;
  v238 = HIDWORD(v235) ^ v235 ^ 0xA064C51B;
  v239 = HIDWORD(v233) ^ v233 ^ 0xA3C8BD31;
  v240 = (HIDWORD(v234) ^ v234 ^ 0x85573DDA) - ((2 * (HIDWORD(v234) ^ v234 ^ 0x85573DDA)) & 0x1A8D00554) + 0x6EC091E5D46802AALL;
  v241 = v237 - ((2 * v237) & 0x1745D34E2) + 0x3FBE1AFBA2E9A71;
  v242 = v239 - ((2 * v239) & 0xDFC93232) - 0x6597C109901B66E7;
  v243 = v238 - ((2 * v238) & 0x3061F5AA) - 0x50794CEFE7CF052BLL;
  v244 = (((((*&v72[4 * (*(a48 + v239) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE2(v240) ^ 0x68)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE2(v241) ^ 0x2ELL)) ^ 0x76)] + 1964184515)) << 16) ^ 0x74C68DD2602B00 ^ ((*&v72[4 * (*(a48 + (BYTE1(v243) ^ 0xFALL)) ^ 0x76)] + 1964184515) << 8);
  v325 = ((*&v72[4 * (*(a48 + ((v240 >> 24) ^ 0x6EC091E5D4)) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + ((v241 >> 24) ^ 0x3FBE1AFBALL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE2(v243) ^ 0x30)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v242) ^ 0x99)) ^ 0x76)] + 1964184515)) << 16);
  v245 = ((*&v72[4 * (*(a48 + v238) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + ((v242 >> 24) ^ 0x9A683EF66FLL)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE1(v240) ^ 2)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * (*(a48 + (BYTE1(v241) ^ 0x9ALL)) ^ 0x76)] + 1964184515)) << 16);
  v246 = *(a48 + (BYTE4(v234) ^ v234 ^ 0xDAu)) ^ 0x76;
  v247 = ((*&v72[4 * (*(a48 + v237) ^ 0x76)] + 1964184515) << 8) ^ 0x74C68DD2602B00 ^ (((((*&v72[4 * (*(a48 + ((v243 >> 24) ^ 0xAF86B31018)) ^ 0x76)] + 1964184515) ^ 0x74B24B2Bu) << 16) ^ ((*&v72[4 * (*(a48 + (BYTE2(v242) ^ 0xE4)) ^ 0x76)] + 1964184515) << 8) ^ (*&v72[4 * v246] + 1964184515)) << 16);
  v328 = HIDWORD(v247) ^ v247 ^ 0xD3332D4A;
  v324 = HIDWORD(v244) ^ v244 ^ 0x3F478E4B;
  v248 = (__ROR8__(a53 - 0x4D33012B1C55B6F6, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x5E6064AEADD930EDLL;
  *(&v250 + 1) = v248 ^ 0x1EE6F9C1E1991981;
  *&v250 = v248 ^ 0x6000000000000000;
  v249 = v250 >> 61;
  v326 = v324 - ((2 * v324) & 0xB7E67480) - 0x63F6F4E9A40CC5C0;
  v251 = __ROR8__(v248 ^ 0x721A234B70AF611CLL, 8) + (v248 ^ 0x7EE6F9C1E1991981);
  *(&v250 + 1) = v251 ^ v249 ^ 0x18C1D9D5BC1A70AFLL;
  *&v250 = v251 ^ ~v249;
  v252 = __ROR8__(v251 ^ 0xF8C1D9D5BC1A70AFLL, 8) + (v251 ^ v249 ^ 0xF8C1D9D5BC1A70AFLL);
  v253 = v252 ^ (v250 >> 61);
  *(&v250 + 1) = v253 ^ 0x3272434AA805759;
  *&v250 = v253 ^ 0x8000000000000000;
  v254 = (v253 ^ 0x83272434AA805759) + __ROR8__(v252 ^ 0x83272434AA805759, 8);
  v255 = (v250 >> 61) ^ v254;
  v256 = (v255 ^ 0xB0556FBA17C811E5) + ((v254 ^ 0xB0556FBA17C811E5) << 56) + ((v254 ^ 0xB0556FBA17C811E5) >> 8);
  *(&v250 + 1) = v255 ^ 0x10556FBA17C811E5;
  *&v250 = v255 ^ 0xBFFFFFFFFFFFFFFFLL;
  v257 = __ROR8__(v256 ^ 0x5B55A1D8894B53BELL, 8);
  v258 = v256 ^ (v250 >> 61);
  *(&v250 + 1) = v258 ^ 0x1B55A1D8894B53BELL;
  *&v250 = v258 ^ 0x4000000000000000;
  v259 = (v258 ^ 0x5B55A1D8894B53BELL) + v257;
  v260 = (v250 >> 61) ^ v259;
  *(&v250 + 1) = v260 ^ 0x1582AE70DBD8C26CLL;
  *&v250 = v260 ^ 0x2000000000000000;
  v261 = v250 >> 61;
  v262 = (__ROR8__(a53 - 0x4D33012B1C55B6EELL, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x5E6064AEADD930EDLL;
  *(&v250 + 1) = v262 ^ 0x1EE6F9C1E1991981;
  *&v250 = v262 ^ 0x6000000000000000;
  v263 = v250 >> 61;
  v264 = __ROR8__(v262 ^ 0x721A234B70AF611CLL, 8) + (v262 ^ 0x7EE6F9C1E1991981);
  *(&v250 + 1) = v264 ^ 0xAF;
  *&v250 = v264 ^ 0xF8C1D9D5BC1A7000;
  v265 = v250 >> 8;
  *(&v250 + 1) = v264 ^ v263 ^ 0x18C1D9D5BC1A70AFLL;
  *&v250 = v264 ^ ~v263;
  v266 = ((v260 ^ 0x3582AE70DBD8C26CLL) + __ROR8__(v259 ^ 0x3582AE70DBD8C26CLL, 8)) ^ 0x7864AD974EAC57AFLL;
  v267 = (v266 ^ v261) + (v266 >> 8);
  v268 = (v264 ^ v263 ^ 0xF8C1D9D5BC1A70AFLL) + v265;
  v269 = v267 + (v266 << 56);
  v270 = v268 ^ (v250 >> 61);
  *(&v250 + 1) = v270 ^ 0x3272434AA805759;
  *&v250 = v270 ^ 0x8000000000000000;
  v271 = (v270 ^ 0x83272434AA805759) + __ROR8__(v268 ^ 0x83272434AA805759, 8);
  v272 = __ROR8__(v271 ^ 0xB0556FBA17C811E5, 8);
  v273 = (v250 >> 61) ^ v271;
  *(&v250 + 1) = v273 ^ 0x10556FBA17C811E5;
  *&v250 = v273 ^ 0xBFFFFFFFFFFFFFFFLL;
  v274 = v272 + (v273 ^ 0xB0556FBA17C811E5);
  v275 = __ROR8__(v274 ^ 0x5B55A1D8894B53BELL, 8);
  v276 = (v250 >> 61) ^ v274;
  *(&v250 + 1) = v276 ^ 0x1B55A1D8894B53BELL;
  *&v250 = v276 ^ 0x4000000000000000;
  v277 = v275 + (v276 ^ 0x5B55A1D8894B53BELL);
  v278 = v277 ^ (v250 >> 61);
  *(&v250 + 1) = v278 ^ 0x1582AE70DBD8C26CLL;
  *&v250 = v278 ^ 0x2000000000000000;
  v279 = v250 >> 61;
  v280 = (((v277 >> 8) ^ 0x3582AE70DBD8C2) + (v278 ^ 0x3582AE70DBD8C26CLL) + ((v277 ^ 0x3582AE70DBD8C26CLL) << (v246 & 0x38) << (~v246 & 0x38))) ^ 0x7864AD974EAC57AFLL;
  v281 = (v269 ^ 0x841C73CF155E7C8ELL) >> (8 * ((a53 + 10) & 7));
  v282 = ((a53 - 0x4D33012B1C55B6E6) >> 8) - 0x5E6064AEADD930EDLL + ((a53 - 0x4D33012B1C55B6E6) >> 3 << 59);
  *(&v250 + 1) = v282 ^ 0x1EE6F9C1E1991981;
  *&v250 = v282 ^ 0x6000000000000000;
  v283 = v250 >> 61;
  v284 = __ROR8__(v282 ^ 0x721A234B70AF611CLL, 8) + (v282 ^ 0x7EE6F9C1E1991981);
  v285 = __ROR8__(v284 ^ 0xF8C1D9D5BC1A70AFLL, 8);
  v286 = v284 ^ v283;
  *(&v250 + 1) = v284 ^ v283 ^ 0x18C1D9D5BC1A70AFLL;
  *&v250 = v284 ^ ~v283;
  v287 = v250 >> 61;
  v288 = (v286 ^ 0xF8C1D9D5BC1A70AFLL) + v285;
  *(&v250 + 1) = v288 ^ 0x59;
  *&v250 = v288 ^ 0x83272434AA805700;
  v289 = v250 >> 8;
  v290 = v288 ^ v287;
  *(&v250 + 1) = v290 ^ 0x3272434AA805759;
  *&v250 = v290 ^ 0x8000000000000000;
  v291 = v250 >> 61;
  v292 = v281 - 0x3A70C2ADE4981C13 - ((2 * v281) & 0x8B1E7AA436CFC7DALL);
  v293 = ((v280 ^ v279) + __ROR8__(v280, 8)) ^ 0x841C73CF155E7C8ELL;
  v294 = (8 * ((a53 + 10) & 7)) ^ 0x3C;
  v295 = (v290 ^ 0x83272434AA805759) + v289;
  *(&v250 + 1) = v295 ^ 0xE5;
  *&v250 = v295 ^ 0xB0556FBA17C81100;
  v296 = v250 >> 8;
  v297 = v295 ^ v291;
  *(&v250 + 1) = v297 ^ 0x10556FBA17C811E5;
  *&v250 = v297 ^ 0xBFFFFFFFFFFFFFFFLL;
  v298 = (v297 ^ 0xB0556FBA17C811E5) + v296;
  v299 = (v298 << 56) ^ 0xBE00000000000000;
  v300 = (v298 >> 8) ^ 0x5B55A1D8894B53;
  v301 = v298 ^ (v250 >> 61);
  *(&v250 + 1) = v301 ^ 0x1B55A1D8894B53BELL;
  *&v250 = v301 ^ 0x4000000000000000;
  v302 = v250 >> 61;
  v303 = v299 + (v301 ^ 0x5B55A1D8894B53BELL) + v300;
  *(&v250 + 1) = v303 ^ 0x6C;
  *&v250 = v303 ^ 0x3582AE70DBD8C200;
  v304 = v250 >> 8;
  v305 = v303 ^ v302;
  *(&v250 + 1) = v303 ^ v302 ^ 0x1582AE70DBD8C26CLL;
  *&v250 = v303 ^ v302 ^ 0x2000000000000000;
  v306 = v250 >> 61;
  v307 = (v292 ^ 0xC58F3D521B67E3EDLL) + 16 * (v293 << v294) + 0x5D29727149EEF7EDLL + ~(2 * (((v292 ^ 0xC58F3D521B67E3EDLL) + 16 * (v293 << v294)) & 0x5D29727149EEF7FELL ^ v292 & 0x12));
  v308 = v328 - ((2 * v328) & 0x147B2E2F8) + 0x59637CEDA3D9717CLL;
  LOBYTE(v292) = *(a51 + ((((v292 ^ 0xED) - ((2 * (v292 ^ 0xED)) & 0x98) - 52) ^ a43) ^ 0xB3u)) ^ 0x81;
  v309 = *(&off_1002DD400 + (v330 ^ 0x757)) - 1708727923;
  DWORD1(v250) = v309[*(a48 + (BYTE2(v308) ^ 0xD9)) ^ (v292 ^ (-90 * v292)) ^ 0xEC];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  v322 = v250 >> 27;
  v323 = (HIDWORD(v245) ^ v245 ^ 0xABEDC357) - ((2 * (HIDWORD(v245) ^ v245 ^ 0xABEDC357)) & 0x13265C73CLL) - 0x6676BC0666CD1C62;
  LOBYTE(v292) = *(a51 + (a43 ^ 0xB6u ^ ((BYTE1(v307) ^ 0xF7) - ((2 * (BYTE1(v307) ^ 0xF7)) & 0x98) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + (BYTE1(v323) ^ 0xE3)) ^ v292 ^ (-90 * v292)) ^ 0xF0];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  v321 = v250 >> 27;
  LOBYTE(v247) = *(a51 + (a43 ^ 0xB7u ^ ((BYTE2(v307) ^ 0xEE) - ((2 * (BYTE2(v307) ^ 0xEE)) & 0x98) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + ((v326 >> 24) ^ 0x9C090B165BLL)) ^ v247 ^ (-90 * v247)) ^ 0x3F];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v280) = v250 >> 27;
  v310 = (HIDWORD(v325) ^ v325 ^ 0xDA3EF815) - ((2 * (HIDWORD(v325) ^ v325 ^ 0xDA3EF815)) & 0x193E38D64) - 0x1C1443AC360E394ELL;
  LOBYTE(v232) = *(a51 + (a43 ^ 0x12u ^ ((BYTE3(v307) ^ 0x49) - ((2 * (BYTE3(v307) ^ 0x49)) & 0x98) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + ((v310 >> 24) ^ 0xE3EBBC53C9)) ^ v232) ^ 0x4F ^ (-90 * v232)];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v232) = v250 >> 27;
  LOBYTE(v302) = *(a51 + (a43 ^ 0xB9u ^ ((BYTE4(v307) ^ 0x71) - ((2 * (BYTE4(v307) ^ 0x71)) & 0x98) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + (BYTE2(v323) ^ 0x32)) ^ v302 ^ (-90 * v302)) ^ 0x66];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  v311 = v250 >> 27;
  LOBYTE(v302) = *(a51 + (a43 ^ 0x23u ^ ((BYTE5(v307) ^ 0x72) - ((2 * (BYTE5(v307) ^ 0x72)) & 0x98) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + v324) ^ v302) ^ 0x9B ^ (-90 * v302)];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v300) = v250 >> 27;
  LOBYTE(v302) = *(a51 + (a43 ^ 0xF0u ^ ((BYTE6(v307) ^ 0x29) - ((2 * (BYTE6(v307) ^ 0x29)) & 0x99) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + (BYTE4(v325) ^ v325 ^ 0x15u)) ^ v302) ^ 0x35 ^ (-90 * v302)];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  v312 = v250 >> 27;
  v313 = (v293 >> (8 * ((a53 + 10) & 7))) + 0x5FFCB0FF47D00BDBLL - ((2 * (v293 >> (8 * ((a53 + 10) & 7)))) & 0xBFF961FE8FA017B6);
  v314 = (v313 ^ 0x5FFCB0FF47D00BDBLL) + 16 * (((__ROR8__(((v305 ^ 0x3582AE70DBD8C26CLL) + v304) ^ 0x7864AD974EAC57AFLL, 8) + (v306 ^ ((v305 ^ 0x3582AE70DBD8C26CLL) + v304) ^ 0x864AD974EAC57AFLL)) ^ 0x41C73CF155E7C8ELL) << v294);
  LOBYTE(v246) = *(a51 + (a43 ^ 0x14u ^ ((HIBYTE(v307) ^ 0x5D) - ((2 * (HIBYTE(v307) ^ 0x5D)) & 0x99) - 52))) ^ 0x81;
  v315 = v314 - 2 * (v314 & 0x26AB31AB7A82B22 ^ (v313 ^ 0x5FFCB0FF47D00BDBLL) & 2);
  DWORD1(v250) = v309[(*(a48 + ((v308 >> 24) ^ 0x59637CEDA3)) ^ v246) ^ 0xB5 ^ (-90 * v246)];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v304) = v250 >> 27;
  LOBYTE(v313) = *(a51 + ((a43 ^ ((v313 ^ 0xDB) - ((2 * (v313 ^ 0xDB)) & 0x98) - 52)) ^ 0xAAu)) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + (BYTE2(v310) ^ 0xF1)) ^ v313 ^ (-90 * v313)) ^ 0x5A];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v313) = v250 >> 27;
  v315 -= 0x7D954CE54857D4E0;
  LOBYTE(v246) = *(a51 + (a43 ^ 0xAFu ^ ((BYTE1(v315) ^ 0x2B) - ((2 * (BYTE1(v315) ^ 0x2B)) & 0x98) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + (BYTE1(v308) ^ 0x71)) ^ v246) ^ 0x6B ^ (-90 * v246)];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v302) = v250 >> 27;
  LOBYTE(v230) = *(a51 + (a43 ^ 0xF0u ^ ((BYTE2(v315) ^ 0xA8) - ((2 * (BYTE2(v315) ^ 0xA8)) & 0x99) - 52))) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + (BYTE4(v245) ^ v245 ^ 0x57u)) ^ v230 ^ (-90 * v230)) ^ 0xF9];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v245) = v250 >> 27;
  LOBYTE(v246) = *(a51 + ((a43 ^ ((BYTE3(v315) ^ 0xB7) - ((2 * (BYTE3(v315) ^ 0xB7)) & 0x98) - 52)) ^ 0x7Cu)) ^ 0x81;
  DWORD1(v250) = v309[(*(a48 + (BYTE2(v326) ^ 0xF3)) ^ v246) ^ 0x91 ^ (-90 * v246)];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LOBYTE(v308) = a43 ^ 0x4C ^ ((BYTE4(v315) ^ 0x1A) - ((2 * (BYTE4(v315) ^ 0x1A)) & 0x98) - 52);
  LOBYTE(v307) = a43 ^ 0xC6 ^ ((BYTE5(v315) ^ 0xB3) - ((2 * BYTE5(v315)) & 0x98) - 52);
  v316 = a43 ^ 0xD1 ^ ((BYTE6(v315) ^ 0x6A) - ((2 * (BYTE6(v315) ^ 0x6A)) & 0x98) - 52);
  v319 = a43 ^ 0xD7 ^ ((HIBYTE(v315) ^ 0xFFFFFF82) - ((2 * HIBYTE(v315)) & 0x9999) - 52);
  LOBYTE(v305) = v322 - ((2 * v322) & 0x16) - 117;
  LOBYTE(v246) = v321 - ((2 * v321) & 0x76) + 59;
  LOBYTE(v232) = v232 - ((2 * v232) & 0xE4) + 114;
  LOBYTE(v230) = v311 - ((2 * v311) & 0x84) - 62;
  v327 = v300 - 76 - ((2 * v300) & 0x68);
  LOBYTE(v300) = (4 * v327) ^ (32 * (v300 - 76)) ^ 0x50;
  LOBYTE(v224) = v312 - ((2 * v312) & 0xD2) - 23;
  LOBYTE(v299) = v304 - ((2 * v304) & 0x74) - 70;
  LOBYTE(v313) = v313 - ((2 * v313) & 0x96);
  LOBYTE(v311) = v313 + 75;
  LOBYTE(v313) = (32 * v313 + 96) ^ (4 * (v313 + 75)) ^ 0x4C;
  v320[0] = v313 - ((2 * v313) & 0x90);
  LOBYTE(v312) = v302 + 60 - ((2 * v302) & 0x78);
  LOBYTE(v313) = (32 * (v302 + 60)) ^ (4 * v312) ^ 0x70;
  v318[0] = v313 - ((2 * v313) & 0x78);
  LOBYTE(v313) = v245 - ((2 * v245) & 0x4A) + 37;
  LODWORD(v306) = (v250 >> 27) - ((2 * (v250 >> 27)) & 0x36) + 27;
  DWORD1(v250) = v309[*(a48 + (BYTE1(v326) ^ 0x3ALL)) ^ *(a51 + v308) ^ 0x81 ^ 0x9D ^ (-90 * (*(a51 + v308) ^ 0x81))];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v302) = v250 >> 27;
  DWORD1(v250) = v309[*(a48 + ((((WORD2(v325) ^ v325 ^ 0xF815) - ((2 * (WORD2(v325) ^ v325 ^ 0xF815)) & 0x8D64) - 14670) >> 8) ^ 0xC6)) ^ *(a51 + v307) ^ 0x81 ^ 0x37 ^ (-90 * (*(a51 + v307) ^ 0x81))];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v245) = v250 >> 27;
  DWORD1(v250) = v309[*(a48 + v328) ^ *(a51 + v316) ^ 0x81 ^ 0x3D ^ (-90 * (*(a51 + v316) ^ 0x81))];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v304) = (v250 >> 27) - ((2 * (v250 >> 27)) & 0xFFFFFFCC) - 26;
  LOBYTE(v315) = v230 ^ 0x92 ^ (((4 * v230) ^ (32 * v230) ^ 0x48) - 2 * (((4 * v230) ^ (32 * v230) ^ 0x48) & 0x44 ^ (4 * v230) & 4) - 62);
  DWORD1(v250) = v309[*(a48 + ((v323 >> 24) ^ 0x998943F999)) ^ *(a51 + v319) ^ 0x81 ^ 0x98 ^ (-90 * (*(a51 + v319) ^ 0x81))];
  LODWORD(v250) = (DWORD1(v250) ^ 0x48) << 24;
  LODWORD(v230) = v250 >> 27;
  *(a53 - 0x4D33012B1C55B6F6) = v305 ^ 0x92 ^ (((32 * v305) ^ (4 * v305) ^ 0x4C) - ((2 * ((32 * v305) ^ (4 * v305) ^ 0x4C)) & 0x10) - 117);
  *(a53 - 0x4D33012B1C55B6EELL) = v311 ^ 0x92 ^ (v320[0] + 75);
  *(a53 - 0x4D33012B1C55B6F5) = v246 ^ 0x92 ^ (((32 * v246) ^ (4 * v246) ^ 0x8C) + (~(2 * ((32 * v246) ^ (4 * v246) ^ 0x8C)) | 0x8F) + 60);
  *(a53 - 0x4D33012B1C55B6F4) = (v280 - 116 - ((2 * v280) & 0x18)) ^ 0x92 ^ (((32 * (v280 - 116)) ^ (4 * (v280 - 116 - ((2 * v280) & 0x18))) ^ 0xB0) - 8 * (v280 & 3) - 116);
  *(a53 - 0x4D33012B1C55B6F3) = v232 ^ 0x92 ^ (((4 * v232) ^ (32 * v232) ^ 0x88) - 2 * (((4 * v232) ^ (32 * v232)) & 0x74 ^ (4 * v232) & 4) + 114);
  *(a53 - 0x4D33012B1C55B6F2) = v315;
  *(a53 - 0x4D33012B1C55B6F1) = v327 ^ 0x92 ^ (v300 - 2 * (v300 & 0x3C ^ (4 * v327) & 8) - 76);
  *(a53 - 0x4D33012B1C55B6F0) = v224 ^ 0x92 ^ (((32 * v224) ^ (4 * v224) ^ 0x84) - ((2 * ((32 * v224) ^ (4 * v224))) & 0xD0) - 23);
  *(a53 - 0x4D33012B1C55B6EFLL) = v299 ^ 0x92 ^ (((32 * v299) ^ (4 * v299) ^ 0xA8) - ((2 * ((32 * v299) ^ (4 * v299) ^ 0xA8)) & 0x70) - 70);
  *(a53 - 0x4D33012B1C55B6E7) = (v230 - ((2 * v230) & 0xA0) - 48) ^ 0x92 ^ (((32 * v230) ^ (4 * (v230 - ((2 * v230) & 0xA0) - 48)) ^ 0x40) - ((2 * ((32 * v230) ^ (4 * (v230 - ((2 * v230) & 0xA0) - 48)) ^ 0x40)) & 0xA0) - 48);
  *(a53 - 0x4D33012B1C55B6EDLL) = v312 ^ 0x92 ^ (v318[0] + 60);
  *(a53 - 0x4D33012B1C55B6ECLL) = v313 ^ 0x92 ^ (((32 * v313) ^ (4 * v313) ^ 0x34) + (~(2 * ((32 * v313) ^ (4 * v313) ^ 0x34)) | 0xB7) + 38);
  *(a53 - 0x4D33012B1C55B6EBLL) = v306 ^ 0x92 ^ ((((32 * v306) | 0xC) ^ (4 * v306)) - ((2 * (((32 * v306) | 0xC) ^ (4 * v306))) & 0x30) + 27);
  *(a53 - 0x4D33012B1C55B6E9) = (v245 - ((2 * v245) & 0x60) - 80) ^ 0x92 ^ (((4 * (v245 - ((2 * v245) & 0x60) - 80)) ^ (32 * v245) ^ 0xC0) - 2 * (((4 * (v245 - ((2 * v245) & 0x60) - 80)) ^ (32 * v245)) & 0x34 ^ (4 * (v245 - ((2 * v245) & 0x60) - 80)) & 4) - 80);
  *(a53 - 0x4D33012B1C55B6EALL) = (v302 - ((2 * v302) & 0x20) + 16) ^ 0x92 ^ (((32 * v302) ^ (4 * (v302 - ((2 * v302) & 0x20) + 16)) ^ 0x40) - ((8 * v302) & 0x20) + 16);
  *(a53 - 0x4D33012B1C55B6E8) = v304 ^ 0x92 ^ (((32 * v304) ^ (4 * v304) ^ 0x58) - ((2 * ((32 * v304) ^ (4 * v304) ^ 0x58)) & 0xCF) - 26);
  return (*(a56 + 8 * (v330 ^ (27 * (a46 - 1957229560 >= a9)))))((v330 + 2292));
}