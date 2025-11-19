uint64_t sub_1000F8714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v20 = (a8 - 1834789236);
  v21 = STACK[0x1860] + v20;
  v22 = STACK[0x1880] + v20;
  v23 = (__ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8) + v11) & 0xFBFFFFFFFFFFFFFFLL;
  v24 = v23 ^ a7;
  v25 = v23 ^ v17;
  v26 = (__ROR8__(v24, 8) + v25) ^ v12;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a2;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v13;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a3;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v10;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8) + v11) & 0xFBFFFFFFFFFFFFFFLL;
  v37 = __ROR8__(v36 ^ a7, 8);
  v38 = v36 ^ v17;
  v39 = (v37 + v38) ^ v12;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a2;
  v42 = (__ROR8__(v34, 8) + v35) ^ v16;
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v41, 8) + v43) ^ v13;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a3;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47) | a1;
  v50 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v35, 61));
  v51 = (v14 - ((v48 + v47) | v14) + v49) ^ v9 ^ __ROR8__(v47, 61);
  v52 = (__ROR8__((v14 - ((v48 + v47) | v14) + v49) ^ v9, 8) + v51) ^ v16;
  v53 = __ROR8__(v52, 8);
  v54 = __ROR8__(v51, 61);
  *v22 = ((((a6 & (2 * (v53 + (v52 ^ v54)))) - (v53 + (v52 ^ v54)) + a5) ^ v19) >> (8 * (v22 & 7u))) ^ ((v50 ^ v18) >> (8 * (v21 & 7u))) ^ *v21;
  return (*(STACK[0x1708] + 8 * (((a8 - 1 == v15) * a4) ^ v8)))();
}

uint64_t sub_1000F88B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x2270] = STACK[0x36B0];
  return (*(v4 + 8 * (v5 - 3562)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000F8950@<X0>(int a1@<W8>)
{
  STACK[0x2270] = 0;
  LODWORD(STACK[0x2A3C]) = 1443455193;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1000F8A04@<X0>(uint64_t a1@<X8>)
{
  STACK[0x25F8] = 0x51CE20ABD81C933BLL;
  STACK[0x2118] = 0x2AD95AA8C03345EELL;
  return (*(v2 + 8 * (((30 * (v1 ^ 0x6A1) - 5920) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_1000F8A74@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1318742951;
  STACK[0x1E80] = STACK[0x308];
  LODWORD(STACK[0x2A08]) = 30;
  return (*(v2 + 8 * (v1 ^ 0x77u)))();
}

uint64_t sub_1000F8B9C()
{
  STACK[0x27B8] = 0;
  LODWORD(STACK[0x1B54]) = 1443455193;
  return (*(v1 + 8 * (v0 - 3685)))();
}

uint64_t sub_1000F8C50@<X0>(uint64_t a1@<X8>)
{
  STACK[0x22D8] = 0x51CE20ABD81C933BLL;
  STACK[0x2990] = 0x1E27F51588E7E120;
  return (*(v2 + 8 * (v1 ^ (32 * (((a1 == 0x5A0411E37F4B9882) ^ ((v1 - 95) ^ v1)) & 1u)))))();
}

uint64_t sub_1000F8CB4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1318742951;
  STACK[0x1E80] = STACK[0x348];
  LODWORD(STACK[0x2A08]) = 16;
  return (*(v2 + 8 * (v1 ^ 0x9DAu)))();
}

uint64_t sub_1000F8D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x21A8] = STACK[0x36F0];
  return (*(v4 + 8 * (v5 + 721)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000F8DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x21A8] = STACK[0x3710];
  return (*(v4 + 8 * (v5 - 1273)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000F8F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x2270] = STACK[0x36D0];
  return (*(v4 + 8 * (v5 + 631)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000F8FDC()
{
  STACK[0x2270] = 0;
  LODWORD(STACK[0x2A3C]) = 1443455193;
  return (*(v1 + 8 * (v0 + 339)))();
}

uint64_t sub_1000F9078@<X0>(int a1@<W8>)
{
  v2 = STACK[0x19C0];
  STACK[0x1B80] = STACK[0x19C0];
  return (*(v1 + 8 * (((v2 == 0x1138F6A92264F486) * ((a1 ^ 0x1AF) - 7521)) ^ a1)))();
}

uint64_t sub_1000F9140@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2200] = 0x51CE20ABD81C933BLL;
  STACK[0x2190] = 0x28EEC64BE1EAF79;
  return (*(v2 + 8 * (((((v1 - 2864) ^ 0x1E79) - 6158) * (a1 != 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_1000F91B4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1263592055;
  STACK[0x1E80] = STACK[0x2F0];
  LODWORD(STACK[0x2A08]) = 34;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000F9208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x27B8] = STACK[0x3C70];
  return (*(v4 + 8 * (v5 + 603)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000F92B4()
{
  STACK[0x27B8] = 0;
  LODWORD(STACK[0x1B54]) = 1443455193;
  return (*(v1 + 8 * (v0 - 2732)))();
}

uint64_t sub_1000F9390@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1C58];
  STACK[0x2048] = STACK[0x1C58];
  return (*(v1 + 8 * (((v2 == 0x1138F6A92264F486) * (((a1 ^ 0x287E) - 2958) ^ (a1 + 3090))) ^ a1)))();
}

uint64_t sub_1000F9438@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2950] = 0x51CE20ABD81C933BLL;
  STACK[0x1EE0] = 0x1ED4099F40999A19;
  return (*(v2 + 8 * (((((v1 + 181877055) & 0xF528AE17) + ((v1 - 607617842) & 0x24377CFF) - 7371) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_1000F94CC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1263592055;
  STACK[0x1E80] = STACK[0x248];
  LODWORD(STACK[0x2A08]) = 27;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000F9534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x1FA8] = STACK[0x3C90];
  return (*(v4 + 8 * (v5 + 532)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000F95DC()
{
  STACK[0x1FA8] = 0;
  LODWORD(STACK[0x2704]) = 1443455193;
  return (*(v1 + 8 * (v0 - 4146)))();
}

uint64_t sub_1000F9720()
{
  STACK[0x21A8] = 0;
  LODWORD(STACK[0x1DC4]) = 1443455193;
  return (*(v1 + 8 * (v0 - 1699)))();
}

uint64_t sub_1000F9804@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1AA0] = 0x51CE20ABD81C933BLL;
  STACK[0x2D98] = 0x6ECA154BEB7EB08FLL;
  return (*(v2 + 8 * (((v1 - 1366 + (v1 ^ 0x1BD3) - 7800) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_1000F9884()
{
  STACK[0x21A8] = 0;
  LODWORD(STACK[0x1DC4]) = 1443455193;
  return (*(v1 + 8 * (v0 - 4430)))();
}

uint64_t sub_1000F98A8()
{
  LODWORD(STACK[0x30EC]) = v1;
  STACK[0x1CF8] = *(v2 + 8 * (v0 - 5211));
  return (*(v2 + 8 * ((v0 - 963) ^ 0x1614 ^ (v0 - 5211))))();
}

uint64_t sub_1000F9934()
{
  v2 = *(STACK[0x2048] - 0x1138F6A92264F486);
  STACK[0x21E8] = 0;
  return (*(v1 + 8 * (((v2 == 0x5A0411E37F4B9882) * (((v0 - 4378) | 0x204A) ^ 0x2481)) ^ v0)))();
}

uint64_t sub_1000F99A8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2AD0] = 0x51CE20ABD81C933BLL;
  STACK[0x21A0] = 0x36E5A2BC6B6D01D9;
  return (*(v2 + 8 * ((((((5 * (v1 ^ 0x202C)) ^ (a1 == 0x5A0411E37F4B9882)) & 1) == 0) * ((v1 + 838670765) & 0xCE02C78F ^ 0x7C8)) ^ v1)))();
}

uint64_t sub_1000F9A3C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1263592055;
  STACK[0x1E80] = STACK[0x320];
  LODWORD(STACK[0x2A08]) = 17;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000F9B30@<X0>(int a1@<W8>)
{
  STACK[0x1FA8] = 0;
  LODWORD(STACK[0x2704]) = 1443455193;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1000F9B54()
{
  LODWORD(STACK[0x2E38]) = v1;
  STACK[0x1CF8] = *(v2 + 8 * (v0 - 5216));
  return (*(v2 + 8 * ((v0 - 5216) ^ 0x1629 ^ (v0 - 1688371843) & 0x64A27EBF)))();
}

uint64_t sub_1000F9BAC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1263592055;
  STACK[0x1E80] = STACK[0x370];
  LODWORD(STACK[0x2A08]) = 31;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000F9C04()
{
  v3 = v0 - 7134;
  v4 = (v0 + 1543040417) & 0xA406FF6E;
  v5 = (*(v2 + 8 * ((v0 - 7134) ^ 0x2EBD)))(LODWORD(STACK[0x2704]) - 1443455193 + ((v0 + 691889091) & 0xD6C27BBF) - 669);
  v6 = STACK[0x1708];
  STACK[0x3CB0] = v5;
  if (v5)
  {
    v7 = 68588956;
  }

  else
  {
    v7 = v1;
  }

  LODWORD(STACK[0x3CBC]) = v7;
  return (*(v6 + 8 * (((v5 != 0) * (v4 ^ 0x104D)) ^ v3)))();
}

uint64_t sub_1000F9E70()
{
  v5 = *v0 - (((((v3 ^ 0x14C0) + 210) ^ 0x13ED200D) + 2 * *v0) & 0x38A264E0) + 1179111831;
  v6 = v5 ^ 0xADADCD8B;
  v7 = (2 * v5) & 0x63F9FFF6 ^ 0x20A064E0;
  LODWORD(STACK[0x17A0]) = v6;
  LODWORD(STACK[0x1790]) = v7;
  v8 = *(v4 + 8 * (v3 ^ 0x14C0 | (2 * (v7 + v6 - 14159872 == v1))));
  STACK[0x1900] = v2;
  return v8(0xB581C077348D623CLL, 0xF4F5B660E7FCDC92, 981, 3470461494, 0x89B850AE4630CDAFLL, 0x5EEE4453CA35DABALL, 0x7695A575CC8A36DALL, 0x67B27524BD5288CLL);
}

uint64_t sub_1000FA010@<X0>(int a1@<W8>)
{
  v5 = STACK[0x1900] - v2 > 0xF && v1 + ((15 * (a1 ^ 0x1FE1)) ^ 0xCE03187B) > 7;
  v6 = *(v3 + 8 * ((v5 * (((a1 - 6711) | 0x1003) - 4903)) ^ a1));
  STACK[0x18F0] = v2;
  return v6();
}

uint64_t sub_1000FA078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = *(v13 + 8 * (((4 * (v6 < (v5 ^ 0x82Au) - 7189)) | (16 * (v6 < (v5 ^ 0x82Au) - 7189))) ^ v5));
  *&STACK[0x1800] = vdupq_n_s64(v7);
  *&STACK[0x1810] = vdupq_n_s64(v8);
  *&STACK[0x1820] = vdupq_n_s64(v9);
  *&STACK[0x1830] = vdupq_n_s64(v12);
  *&STACK[0x1840] = vdupq_n_s64(v10);
  *&STACK[0x1850] = vdupq_n_s64(v11);
  *&STACK[0x1860] = vdupq_n_s64(a5);
  *&STACK[0x18A0] = vdupq_n_s64(0x1D27AE2D84AF8428uLL);
  *&STACK[0x1890] = vdupq_n_s64(0x8E93D716C257C214);
  *&STACK[0x1880] = vdupq_n_s64(0x7EAD9557728229EAuLL);
  return v14();
}

uint64_t sub_1000FA1D0(unint64_t a1, int a2, int a3, int a4, int a5, int a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, double a10, double a11, double a12, double a13, int8x16_t a14)
{
  v28 = (a6 + v16);
  v29.i64[0] = v21 + v28;
  v30.i64[0] = v21 + (a4 + v16);
  v29.i64[1] = v21 + (a5 + v16);
  v30.i64[1] = v21 + (a3 + v16);
  v31.i64[0] = v21 + (a2 + v16);
  v32.i64[0] = v21 + (v19 + v16);
  v31.i64[1] = v21 + (v20 + v16);
  v32.i64[1] = v21 + (v18 + v16);
  v33 = vandq_s8(v32, v24);
  v34 = vandq_s8(v31, v24);
  v35 = vandq_s8(v30, v24);
  v36 = vandq_s8(v29, v24);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v25);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v25);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v25);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v25);
  v41 = vsubq_s64(vorrq_s8(v37, v26), vorrq_s8(v37, a8));
  v42 = vsubq_s64(vorrq_s8(v38, v26), vorrq_s8(v38, a8));
  v43 = vsubq_s64(vorrq_s8(v39, v26), vorrq_s8(v39, a8));
  v44 = vsubq_s64(vorrq_s8(v40, v26), vorrq_s8(v40, a8));
  v45 = vaddq_s64(v42, a8);
  v46 = vaddq_s64(v41, a8);
  v47 = veorq_s8(v46, a14);
  v48 = veorq_s8(v45, a14);
  v49 = veorq_s8(v45, *&STACK[0x1800]);
  v50 = veorq_s8(v46, *&STACK[0x1800]);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a7);
  v52 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a7);
  v55 = veorq_s8(v54, v53);
  v56 = veorq_s8(v51, v52);
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), v23);
  v60 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v61 = veorq_s8(v58, v23);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v60);
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v66, v66), *&STACK[0x1810]), v66), *&STACK[0x1820]), *&STACK[0x1830]);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), *&STACK[0x1810]), v65), *&STACK[0x1820]), *&STACK[0x1830]);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v68);
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), *&STACK[0x1840]), v74), *&STACK[0x1850]), *&STACK[0x1860]);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), *&STACK[0x1840]), v73), *&STACK[0x1850]), *&STACK[0x1860]);
  v77 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), a9);
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v84 = veorq_s8(v81, a9);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v27);
  v90 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v91 = veorq_s8(v88, v27);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vdupq_n_s64(a1);
  v96 = vaddq_s64(v43, a8);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v98 = vaddq_s64(v94, v92);
  v133.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), *&STACK[0x18A0])), *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v95)));
  v133.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), *&STACK[0x18A0])), *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v95)));
  v99 = veorq_s8(v96, a14);
  v100 = veorq_s8(v96, *&STACK[0x1800]);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), a7);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v23);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), *&STACK[0x1810]), v105), *&STACK[0x1820]), *&STACK[0x1830]);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), *&STACK[0x1840]), v108), *&STACK[0x1850]), *&STACK[0x1860]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), a9);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v27);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL)));
  v115 = vaddq_s64(v44, a8);
  v133.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), *&STACK[0x18A0])), *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v95)));
  v116 = veorq_s8(v115, a14);
  v117 = veorq_s8(v115, *&STACK[0x1800]);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), a7);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v23);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), *&STACK[0x1810]), v122), *&STACK[0x1820]), *&STACK[0x1830]);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), *&STACK[0x1840]), v125), *&STACK[0x1850]), *&STACK[0x1860]);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), a9);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v27);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL)));
  v133.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(v131, v131), *&STACK[0x18A0])), *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v95)));
  *(v15 + v28) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v133, *&STACK[0x15C0])), *(v21 + v28 - 7));
  return (*(v22 + 8 * (((2 * (v17 == v16)) | (8 * (v17 == v16))) ^ v14)))();
}

uint64_t sub_1000FA874()
{
  *STACK[0x28C8] = 0;
  *v1 = 1443455193;
  return (*(v2 + 8 * (v0 - 1096)))();
}

uint64_t sub_1000FA978@<X0>(int a1@<W8>)
{
  v6 = *(v5 + 8 * a1);
  v7 = *v4;
  STACK[0x2F40] = v6;
  STACK[0x2A60] = v1;
  STACK[0x28C8] = v2;
  STACK[0x2D70] = 0;
  v10 = v7 == 0x5A0411E37F4B9882 || v2 == 0 || v1 == 0;
  return (*(v5 + 8 * ((((((v3 + 1) ^ v10) & 1) == 0) * ((v3 + 2019833102) & 0x879BAFFF ^ 0xCF1)) ^ v3)))();
}

uint64_t sub_1000FAA04@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1C68] = 0x51CE20ABD81C933BLL;
  STACK[0x2160] = 0;
  STACK[0x2830] = 0x6F9800914633EB8BLL;
  return (*(v2 + 8 * (((((v1 - 1746) ^ 0x1E79) - 5774) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_1000FAA74@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = -1960493184;
  STACK[0x1E80] = STACK[0x678];
  LODWORD(STACK[0x2A08]) = 9;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000FAAFC()
{
  v1 = STACK[0xC78];
  v2 = 10 * (STACK[0xC78] ^ 0xD5);
  v3 = *STACK[0x14F0];
  STACK[0x19F8] = STACK[0x2D20];
  LODWORD(STACK[0x2E64]) = STACK[0x21F8];
  v4 = STACK[0x1B28];
  v5 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x1DE8] = v5;
  STACK[0x2C18] = v5 + 16;
  STACK[0x1B28] = v2 + v4 - 2872;
  STACK[0x2640] = v3;
  STACK[0x1C58] = 0;
  STACK[0x3060] = *(v0 + 8 * v1);
  return (*(v0 + 8 * (v1 ^ 0x447)))();
}

uint64_t sub_1000FAC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = *(v9 + 8 * ((LODWORD(STACK[0xAD8]) * (v8 == 68588956)) ^ (a8 - 2049)));
  LODWORD(STACK[0x4194]) = STACK[0xADC];
  return v10();
}

uint64_t sub_1000FAC5C()
{
  v1 = STACK[0x4194];
  LODWORD(STACK[0x4198]) = STACK[0x4194];
  LODWORD(STACK[0x419C]) = (v1 + 401205613) & 0xE8161FE8;
  STACK[0x2000] = STACK[0x24C8];
  STACK[0x2A30] = STACK[0x1CB8];
  LODWORD(STACK[0x2600]) = STACK[0x21FC];
  v2 = STACK[0x1B28];
  v3 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x2720] = v3;
  STACK[0x2710] = v3 + 32;
  STACK[0x1BA0] = v3 + 64;
  STACK[0x28B0] = v3 + 80;
  STACK[0x2DE0] = v3 + 96;
  STACK[0x1B28] = v2 + 128;
  STACK[0x4188] = v3;
  LOBYTE(STACK[0x4187]) = 0;
  v4 = *(v0 + 8 * (v1 + 10069));
  STACK[0x4178] = 32;
  STACK[0x4170] = v4;
  return (*(v0 + 8 * (LODWORD(STACK[0x4198]) + 9990)))();
}

uint64_t sub_1000FAD30()
{
  LODWORD(STACK[0x1770]) = v1;
  v4 = *(v2 + 8 * (v0 + 2094));
  LODWORD(STACK[0x1780]) = v1 & 0xFFFFFFF0;
  LODWORD(STACK[0x1760]) = (v0 - 5861) | 0x88;
  *&STACK[0x17B0] = v3;
  return v4(56);
}

uint64_t sub_1000FADE8@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>, int8x16_t a9@<Q1>, int8x16_t a10@<Q7>)
{
  v28 = (v17 + v14);
  v29.i64[0] = v21 + v28;
  v29.i64[1] = v21 + (v16 + v14);
  v30.i64[0] = v21 + (v11 + v14);
  v31.i64[0] = v21 + (a8 + v14);
  v30.i64[1] = v21 + (v10 + v14);
  v31.i64[1] = v21 + (v13 + v14);
  v32.i64[0] = v21 + (v12 + v14 + a3);
  v32.i64[1] = v21 + (a2 + v14);
  v33 = v32;
  *&STACK[0x17D0] = v32;
  v32.i64[0] = v21 + (v26 + v14);
  v32.i64[1] = v21 + (v20 + v14);
  *&STACK[0x18B0] = v32;
  v32.i64[0] = v21 + (a7 + v14);
  v32.i64[1] = v21 + (a6 + v14);
  *&STACK[0x17F0] = v32;
  v34 = vandq_s8(v31, *&STACK[0x1940]);
  v35 = vandq_s8(v30, *&STACK[0x1940]);
  v36 = vandq_s8(v29, *&STACK[0x1940]);
  v37 = vandq_s8(v33, *&STACK[0x1940]);
  v38 = *&STACK[0x1870];
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x1870]);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x1870]);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x1870]);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x1870]);
  v43 = vsubq_s64(vorrq_s8(v41, v27), vorrq_s8(v41, a9));
  *&STACK[0x17E0] = vsubq_s64(vorrq_s8(v42, v27), vorrq_s8(v42, a9));
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(v40, v27), vorrq_s8(v40, a9)), a9);
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(v39, v27), vorrq_s8(v39, a9)), a9);
  v47 = veorq_s8(v45, a10);
  v48 = veorq_s8(v44, a10);
  v49 = *&STACK[0x1800];
  v50 = veorq_s8(v44, *&STACK[0x1800]);
  v51 = veorq_s8(v45, *&STACK[0x1800]);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v50), *&STACK[0x1690]);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v51), *&STACK[0x1690]);
  v56 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v57 = veorq_s8(v53, v54);
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57);
  v60 = veorq_s8(vaddq_s64(v58, v56), *&STACK[0x16B0]);
  v61 = veorq_s8(v59, *&STACK[0x16B0]);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62);
  v66 = *&STACK[0x1820];
  v67 = *&STACK[0x1830];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), *&STACK[0x1810]), v65), *&STACK[0x1820]), *&STACK[0x1830]);
  v69 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v64, v64), *&STACK[0x1810]), v64), *&STACK[0x1820]), *&STACK[0x1830]);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = veorq_s8(v68, v69);
  v73 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = *&STACK[0x1840];
  v77 = *&STACK[0x1850];
  v78 = *&STACK[0x1860];
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), *&STACK[0x1840]), v75), *&STACK[0x1850]), *&STACK[0x1860]);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), *&STACK[0x1840]), v74), *&STACK[0x1850]), *&STACK[0x1860]);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82);
  v85 = *&STACK[0x1660];
  v86 = veorq_s8(vaddq_s64(v83, v81), *&STACK[0x1660]);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v84, *&STACK[0x1660]);
  v90 = veorq_s8(v89, v88);
  v91 = veorq_s8(v86, v87);
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v91);
  v94 = v27;
  v95 = *&STACK[0x1650];
  v96 = veorq_s8(vaddq_s64(v92, v90), *&STACK[0x1650]);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v98 = veorq_s8(v93, *&STACK[0x1650]);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v100 = vdupq_n_s64(a1);
  v101 = vaddq_s64(v43, a9);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), veorq_s8(v96, v97));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v104 = *&STACK[0x18A0];
  v105 = *&STACK[0x1880];
  v236.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), *&STACK[0x18A0])), *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v100)));
  v236.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), *&STACK[0x18A0])), *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v100)));
  v106 = veorq_s8(v101, a10);
  v107 = veorq_s8(v101, *&STACK[0x1800]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), *&STACK[0x1690]);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = *&STACK[0x16B0];
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), *&STACK[0x16B0]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = *&STACK[0x1810];
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), *&STACK[0x1810]), v113), *&STACK[0x1820]), *&STACK[0x1830]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), *&STACK[0x1840]), v117), *&STACK[0x1850]), *&STACK[0x1860]);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), *&STACK[0x1660]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), *&STACK[0x1650]);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v122.i64[0] = v21 + (v19 + v14);
  v125.i64[0] = v21 + (a5 + v14);
  v125.i64[1] = v21 + (a4 + v14);
  v122.i64[1] = v21 + (v25 + v14);
  v126 = vaddq_s64(v124, v123);
  v127 = vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), *&STACK[0x18A0]));
  v128 = vandq_s8(v122, *&STACK[0x1940]);
  v129 = vaddq_s64(*&STACK[0x17E0], a9);
  v236.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v127, *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v100)));
  v130 = veorq_s8(v129, a10);
  v131 = veorq_s8(v129, *&STACK[0x1800]);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), *&STACK[0x1690]);
  v133 = *&STACK[0x1690];
  v134 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v134), *&STACK[0x16B0]);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), *&STACK[0x1810]), v137), *&STACK[0x1820]), *&STACK[0x1830]);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), *&STACK[0x1840]), v140), *&STACK[0x1850]), *&STACK[0x1860]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), *&STACK[0x1660]);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), *&STACK[0x1650]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vandq_s8(v125, *&STACK[0x1940]);
  v149 = v125;
  v150 = vaddq_s64(v147, v146);
  v151 = *&STACK[0x17F0];
  v152 = vandq_s8(*&STACK[0x17F0], *&STACK[0x1940]);
  v236.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v150, vandq_s8(vaddq_s64(v150, v150), *&STACK[0x18A0])), *&STACK[0x1890]), *&STACK[0x1880]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x17D0], 3uLL), v100)));
  v153 = vandq_s8(*&STACK[0x18B0], *&STACK[0x1940]);
  v154 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v38);
  v158 = vaddq_s64(v156, v38);
  v159 = vaddq_s64(v155, v38);
  v160 = vaddq_s64(v154, v38);
  v161 = vsubq_s64(vorrq_s8(v157, v94), vorrq_s8(v157, a9));
  v162 = vsubq_s64(vorrq_s8(v158, v94), vorrq_s8(v158, a9));
  v163 = vsubq_s64(vorrq_s8(v159, v94), vorrq_s8(v159, a9));
  v164 = vsubq_s64(vorrq_s8(v160, v94), vorrq_s8(v160, a9));
  v165 = vaddq_s64(v162, a9);
  v166 = vaddq_s64(v161, a9);
  v167 = *&STACK[0x1810];
  v168 = *&STACK[0x1890];
  v169 = *&STACK[0x17C0];
  *&STACK[0x17E0] = vqtbl4q_s8(v236, *&STACK[0x17C0]);
  v170 = veorq_s8(v166, a10);
  v236.val[0] = veorq_s8(v165, a10);
  v171 = veorq_s8(v165, v49);
  v172 = veorq_s8(v166, v49);
  v236.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v171), v133);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v172), v133);
  v236.val[3] = v133;
  v175 = veorq_s8(v174, v173);
  v176 = veorq_s8(v236.val[0], v236.val[1]);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v176);
  v236.val[0] = veorq_s8(vaddq_s64(v236.val[1], v175), v110);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v178 = veorq_s8(v177, v110);
  v236.val[2] = v110;
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = veorq_s8(v236.val[0], v236.val[1]);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v180);
  v236.val[0] = vaddq_s64(v236.val[1], v179);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236.val[0], v236.val[0]), v114), v236.val[0]), v66), v67);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v114), v181), v66), v67);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(v236.val[0], v236.val[1]);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v184);
  v236.val[0] = vaddq_s64(v236.val[1], v183);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), v76), v236.val[0]), v77), v78);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v185, v185), v76), v185), v77), v78);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(v236.val[0], v236.val[1]);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v188);
  v236.val[0] = veorq_s8(vaddq_s64(v236.val[1], v187), v85);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v190 = veorq_s8(v189, v85);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = veorq_s8(v236.val[0], v236.val[1]);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v192);
  v236.val[0] = veorq_s8(vaddq_s64(v236.val[1], v191), v95);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v194 = veorq_s8(v193, v95);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = veorq_s8(v236.val[0], v236.val[1]);
  v236.val[1] = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(v163, a9);
  v198 = vaddq_s64(v197, v196);
  v199 = vaddq_s64(v236.val[1], v195);
  v237.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v198, vandq_s8(vaddq_s64(v198, v198), v104)), v168), v105), vnegq_s64(vandq_s8(vshlq_n_s64(v122, 3uLL), v100)));
  v237.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v199, vandq_s8(vaddq_s64(v199, v199), v104)), v168), v105), vnegq_s64(vandq_s8(vshlq_n_s64(v149, 3uLL), v100)));
  v200 = veorq_s8(v236.val[0], a10);
  v201 = veorq_s8(v236.val[0], v49);
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v133);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203), v236.val[2]);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v206, v206), v114), v206), v66), v67);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v209, v209), v76), v209), v77), v78);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211), v85);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), v95);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL)));
  v216 = vaddq_s64(v164, a9);
  v237.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v215, vandq_s8(vaddq_s64(v215, v215), v104)), v168), v105), vnegq_s64(vandq_s8(vshlq_n_s64(v151, 3uLL), v100)));
  v217 = veorq_s8(v216, a10);
  v218 = veorq_s8(v216, v49);
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), v236.val[3]);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v236.val[2]);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v223, v223), v167), v223), v66), v67);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225);
  v227 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v226, v226), v76), v226), v77), v78);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), v85);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v95);
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL)));
  v237.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v232, vandq_s8(vaddq_s64(v232, v232), v104)), v168), v105), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x18B0], 3uLL), v100)));
  v233 = *&STACK[0x17E0];
  v233.i64[1] = vqtbl4q_s8(v237, v169).u64[0];
  v234 = vrev64q_s8(v233);
  *(v23 + v28) = veorq_s8(vextq_s8(v234, v234, 8uLL), *(v21 + v28 - 15));
  return (*(v18 + 8 * (((v24 == v14) * v22) ^ v15)))();
}

uint64_t sub_1000FBA70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v22 = (a4 + a9 + 1486);
  v23 = STACK[0x1900] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 + a7) | v13) - ((v24 + a7) | v15) + (v9 ^ v10 ^ a2);
  v26 = v25 ^ a8;
  v27 = v25 ^ v11;
  v28 = (__ROR8__(v26, 8) + v27) ^ a6;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x96518B1852248A0DLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v12 | (2 * (v32 + v31))) - (v32 + v31) + v14) ^ v20;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = ((v17 & (2 * (v35 + v34))) - (v35 + v34) + v18) ^ a5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v16;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a1;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *(STACK[0x18F0] + v22) = (((v42 + v41 - ((2 * (v42 + v41)) & 0x1D27AE2D84AF8428) - 0x716C28E93DA83DECLL) ^ 0x7EAD9557728229EAuLL) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v21 + 8 * (((a9 - 1 != v19) * a3) ^ (v9 - 2728))))();
}

uint64_t sub_1000FBC24(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t a7, int a8)
{
  STACK[0x3AF0] = STACK[0x1810];
  LODWORD(STACK[0x3AFC]) = STACK[0x1890];
  STACK[0x3B00] = STACK[0x1820];
  STACK[0x2630] = STACK[0x18A0];
  STACK[0x3B08] = STACK[0x18B0];
  STACK[0x3B10] = STACK[0x1860];
  LODWORD(STACK[0x1DA4]) = STACK[0x1880];
  LODWORD(STACK[0x2E74]) = a6;
  LODWORD(STACK[0x3B1C]) = a4;
  STACK[0x3B20] = a5;
  LODWORD(STACK[0x3834]) = STACK[0x18F0];
  STACK[0x3838] = STACK[0x1900];
  STACK[0x3840] = a3;
  STACK[0x3848] = STACK[0x1850];
  LODWORD(STACK[0x1A64]) = STACK[0x1840];
  LODWORD(STACK[0x227C]) = v9;
  LODWORD(STACK[0x3854]) = v8;
  STACK[0x3858] = a7;
  *STACK[0x2B8] = STACK[0x3C30];
  *STACK[0x2C0] = *(STACK[0x2CF8] - 0x56F780AC40F6472FLL) + ((a8 + 3646) ^ 0xA9F6B99B);
  return (*(v10 + 8 * (a8 - 1425)))();
}

uint64_t sub_1000FBDE4()
{
  v5 = v0 + 46;
  *(v1 - 0x56F780AC40F6473BLL) = 0;
  *(v1 - 0x56F780AC40F64733) = 1311677069;
  *(v1 + v3) = 1443455193;
  (*(v4 + 8 * (v0 + 4269)))(v1 - 0x56F780AC40F6473BLL);
  return (*(v4 + 8 * v5))(v2);
}

void sub_1000FC0C8(id a1)
{
  v1 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0F50) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0F50) ^ 0x1C))] ^ 0x7A]) + 139);
  v2 = *(v1 - 412779218);
  v3 = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))] ^ 0xF4] ^ (97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))) + 676);
  v4 = (*(v3 - 1056958627) ^ v2) - &v5;
  *(v1 - 412779218) = 1912442209 * v4 - 0x71B9CF6610DE981CLL;
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  v8 = (662767087 * (((v6 | 0xB1CEB2F5) + (~v6 | 0x4E314D0A)) ^ 0x957DD9B0)) ^ 0x1CE2;
  LOBYTE(v4) = 97 * (*(v1 - 412779218) ^ 0x1C ^ *(v3 - 1056958627));
  v7 = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[v4] ^ 0x7A] ^ v4) + 594) - 611911403;
  LOBYTE(v1) = 97 * ((*(v3 - 1056958627) + *(v1 - 412779218)) ^ 0x1C);
  (*(*(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0F50) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 + dword_1002E0F50) ^ 0x1C))] ^ 0x80]) + 408) + 8 * (byte_10027CAF0[byte_1002C5E50[v1] ^ 2] ^ v1) - 2062658115))(v6);
}

void sub_1000FC358(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *a1 - 199319723 * ((a1 - 449969197 - 2 * (a1 & 0xE52E03D3)) ^ 0x50DEED1B);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000FC434@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = (*(v5 + 8 * (v4 + 5852)))(*(a2 + 4), 26, a1, v3, a1, va);
  return (*(v5 + 8 * (((((v4 + 1128906948) & 0xBCB63F3C) + (v6 ^ 0xD5979DDF) + ((2 * v6) & 0xAB2F3BBE) != -711479025) * (v4 - 4880)) ^ v4)))();
}

void sub_1000FC504(uint64_t a1)
{
  v1 = *(a1 + 8) - 929149733 * ((1086432847 - (a1 | 0x40C1A64F) + (a1 | 0xBF3E59B0)) ^ 0xEE0132DD);
  v2 = *(*(&off_1002DD400 + v1 - 1641) - 544270975);
  v3 = *(&off_1002DD400 + (v1 ^ 0x4AB)) - 2062743291;
  (*&v3[8 * v1 + 71648])(*(&off_1002DD400 + (v1 ^ 0x7D6)) - 515190054, sub_100191B00);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000FC79C()
{
  (*(v2 + 8 * (v3 ^ 0x30EF)))(v0);
  v4 = (*(v2 + 8 * (v3 + 3765)))(v1 - 1297817643, 0);
  return (*(v2 + 8 * ((v4 * (368 * (v3 ^ 0x1AEA) + 7009)) ^ v3)))();
}

uint64_t sub_1000FC800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, unsigned int a17)
{
  a16 = &a13;
  a17 = (v19 ^ 0xA06) - 586739509 * (((&a16 | 0x8545C1D3) - (&a16 & 0x8545C1D3)) ^ 0x73CFC7B6) + 635327380;
  (*(v18 + 8 * (v19 ^ 0x3348)))(&a16);
  v21 = (*(v18 + 8 * ((v19 ^ 0xA06) + 6320)))(a9 - 1514018299, v17 - 1297817643, 0, *(v20 + 8 * ((v19 ^ 0xA06) - 3978)) - 1006386674, &a13, 2);
  return (*(v18 + 8 * (v19 ^ 0xA06)))(v21);
}

uint64_t sub_1000FC8D8()
{
  (*(v1 + 8 * (v2 + 2312)))(*(*(v3 + 8 * (v2 ^ 0x239A)) - 303411959));
  v4 = (*(v1 + 8 * (v2 + 2210)))(v0 - 1297817643, 0);
  return (*(v1 + 8 * ((v4 * ((v2 - 1766242641) & 0x69469EED ^ 0x458)) ^ v2)))();
}

uint64_t sub_1000FC954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned int a17)
{
  a17 = v19 - 586739509 * (((&a16 | 0x10E7149E) - (&a16 & 0x10E7149E)) ^ 0xE66D12FB) + 635323263;
  a16 = &a11;
  (*(v18 + 8 * (v19 ^ 0x8A5)))(&a16);
  v21 = (*(v18 + 8 * (v19 ^ 0x8BB)))(a9 - 1514018299, v17 - 1297817643, 0, *(v20 + 8 * (v19 ^ 0x23ED)) - 23359974, &a11, 2);
  return (*(v18 + 8 * v19))(v21);
}

uint64_t sub_1000FCB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16, int a17, int a18)
{
  v24 = 678427121 * (((&a16 | 0x7850EF12) - &a16 + (&a16 & 0x87AF10E8)) ^ 0xEA8AB508);
  a17 = v24 - 805024752 + v18;
  a18 = v22 + v24;
  a16 = &a15;
  (*(v20 + 8 * (v18 + 8913)))(&a16);
  v25 = (*(v20 + 8 * (v18 + 8888)))(a9 - 1514018299, v19 + v21, 0, *(v23 + 8 * (v18 ^ 0x7F2)) - 1783324770, &a15, 8);
  return (*(v20 + 8 * v18))(v25);
}

uint64_t sub_1000FCBE4()
{
  v4 = *(v1 - 544270975);
  v5 = (*(v0 + 8 * (v2 ^ 0x2E7C)))(v3 - 515190054, sub_100191B00);
  return (*(v0 + 8 * (((((v4 == 0) ^ v2) & 1) * (((v2 - 1939654638) & 0x739CC7FB) - 1965)) ^ v2)))(v5);
}

void sub_1000FCD00(uint64_t a1)
{
  v1 = *(a1 + 32) - 586739509 * (((a1 | 0xEFB2F2BC) - a1 + (a1 & 0x104D0D43)) ^ 0x1938F4D9);
  v2 = veorq_s8(**(a1 + 16), xmmword_1002A9BD0);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000FCE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 160) = *(v6 - 256);
  *(v6 - 159) = *(v6 - 255);
  *(v6 - 151) = *(v6 - 247);
  *(v6 - 147) = *(v6 - 243);
  *(v6 - 145) = *(v6 - 241);
  return (*(a5 + 8 * v5))();
}

uint64_t sub_1000FCE70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a8 == v9;
  }

  else
  {
    v10 = 1;
  }

  v13 = v10 || *a1 == 0 || a1[5] == 0;
  return (*(a5 + 8 * ((v13 * (v8 - 9168)) ^ (v8 + 727))))();
}

uint64_t sub_1000FCEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, int a3@<W8>)
{
  v4 = *(a1 + 8) - a3;
  v6 = v4 != ((v3 - 3921) ^ 0x76F52688) && (v4 & 0xF) == ((v3 - 0x2000) | 0x2000) - 9209;
  return (*(a2 + 8 * ((47 * v6) ^ (v3 - 3938))))();
}

uint64_t sub_1000FD0F4@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X4>, unint64_t a4@<X5>, unint64_t a5@<X7>, int a6@<W8>)
{
  LODWORD(STACK[0x254]) = v7;
  STACK[0x258] = v6;
  STACK[0x270] = a5;
  STACK[0x260] = a4;
  STACK[0x278] = a1;
  v9 = ((a2 - 396783099 - ((2 * a2 + 2) & v8) + 1) & 3) == 1;
  return (*(a3 + 8 * (a6 | v9 | (2 * v9))))();
}

uint64_t sub_1000FD1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0x288] = 0x6C194EDE9C7D5590;
  STACK[0x290] = 0x4A37C95B43735327;
  STACK[0x2A8] = 0x2EB268602F54D14FLL;
  STACK[0x280] = 0xF59520D87DE52B3;
  STACK[0x298] = 0xEDD07C1744D3A60;
  LODWORD(STACK[0x2D4]) = -305331148;
  LODWORD(STACK[0x2D8]) = (v5 + 1886) | 0x401;
  v6 = *(a5 + 8 * (v5 ^ 0x31D7));
  STACK[0x2E8] = a5;
  v7 = v6(1032);
  v8 = STACK[0x2E8];
  STACK[0x2C0] = v7;
  v9 = *(v8 + 8 * ((104 * (v7 != 0)) ^ v5));
  STACK[0x2C8] = 0x1A5648518FD6D612;
  return v9();
}

uint64_t sub_1000FD2FC()
{
  v8 = ((-841390080 * v3) | ((-224806099 * v3 + 968072085) >> 21)) - 1663260672 - 2 * ((((-841390080 * v3) | ((-224806099 * v3 + 968072085) >> 21)) - 1663260672) & 0xC92BBBB ^ ((-224806099 * v3 + 968072085) >> 21) & 1) - 1936540742;
  v9 = (-790140160 * (v5 ^ v6)) | ((-1278154901 * (v5 ^ v6)) >> 24);
  v10 = (v9 - ((2 * v9) & 0x19257174) - 1936540742) ^ v8;
  v11 = ((-2113929216 * v4) | ((-563421631 * v4 + 642606972) >> 7)) - 0x8000000 - 2 * ((((-2113929216 * v4) | ((-563421631 * v4 + 642606972) >> 7)) - 0x8000000) & 0x6A807A25 ^ ((-563421631 * v4 + 642606972) >> 7) & 4) + 1786804769;
  v12 = (634912768 * (v2 ^ v1)) | ((-1633467205 * (v2 ^ v1)) >> 13);
  v13 = ((2 * v12) & 0x65BFEBF8) + (v12 ^ 0x32DFF5FC);
  v14 = ((v10 - ((2 * v10) & 0xD500F442) + 1786804769) ^ v11) - v13 + 853538300;
  v8 ^= 0x8C92BBBA;
  v15 = -1520312137 * v8;
  v16 = 383778816 * v8;
  v17 = ((v11 << 29) ^ 0xC0000000) & 0xE0000000 | ((-157941297 * (v11 ^ 0x6A807A21)) >> 3);
  v18 = ((2 * ((209715200 * v14) | ((-1069111271 * v14) >> 9))) & 0xCFE539FC) + (((209715200 * v14) | ((-1069111271 * v14) >> 9)) ^ 0xE7F29CFE);
  v19 = ((1887441264 * v13) | ((1728577815 * v13 + 2047535708) >> 28)) - 1599167040;
  v20 = ((2 * v19) & 0xFFEFC3FC) + (v19 ^ 0xFFF7E1FE);
  v21 = ((2 * (v17 + 0x20000000)) & 0x5FFFE6BA) + ((v17 + 0x20000000) ^ 0xAFFFF35D);
  v22 = v16 - v20 + (v15 >> 11) - v21 - 939181987 + v18;
  v23 = ((1558446080 * v18) | ((1887262521 * v18 + 530233714) >> 14)) - 439877632;
  v24 = ((2 * v23) & 0xFBFE377E) + (v23 ^ 0x7DFF1BBF);
  v25 = ((2 * ((1006632960 * v22) | ((-1049560241 * v22) >> 6))) & 0x8EFFB8FE) + (((1006632960 * v22) | ((-1049560241 * v22) >> 6)) ^ 0x477FDC7F);
  v26 = (((431098819 * v20 + 1859973510) >> 3) | (1610612736 * v20)) - 308523386 - 2 * (((((431098819 * v20 + 1859973510) >> 3) | (1610612736 * v20)) - 0x40000000) & 0x2D9C4E8F ^ ((431098819 * v20 + 1859973510) >> 3) & 9);
  v27 = ((2013265920 * v21) | ((-564167249 * v21 - 1062126995) >> 5)) + v24 + v25 - 1568602174;
  v28 = (v27 - ((2 * v27) & 0x5B389D0C) + 765218438) ^ v26;
  v29 = ((1191182336 * v25) | ((608769863 * v25 - 226267193) >> 8)) - 956301312 - 2 * ((((1191182336 * v25) | ((608769863 * v25 - 226267193) >> 8)) - 956301312) & 0x3EC1604D ^ ((608769863 * v25 - 226267193) >> 8) & 5) + 1052860488;
  v30 = ((-1056047104 * v28) | ((-227090297 * v28) >> 15)) - 2 * (((-1056047104 * v28) | ((-227090297 * v28) >> 15)) & 0x592B76FD ^ ((-227090297 * v28) >> 15) & 0x20) - 651462947;
  v31 = ((-924231680 * v24) | ((353967403 * v24 - 1889881109) >> 21)) - 710977536;
  v32 = (-1961433440 * (v26 ^ 0x2D9C4E86)) | ((1146664757 * (v26 ^ 0x2D9C4E86)) >> 27);
  v33 = v29 ^ 0x3EC16048;
  v34 = (v29 ^ 0x3EC16048) + v31;
  v35 = (v30 ^ 0xD92B76DD) + ((v32 + v31 - ((2 * (v32 + v31)) & 0x7D82C090) + 1052860488) ^ v29);
  v36 = ((v30 ^ 0x26D48922) + 372127767 * v34 - 494391638) ^ v35;
  v37 = ((2 * v36) & 0xBFFFBE7C) + (v36 ^ 0x5FFFDF3E);
  v38 = -986656437 * v37 - ((174170774 * v37 + 307230124) & 0x31B7725E) - 2113686523;
  v39 = ((2 * (v35 - (v38 ^ 0x18DBB92F))) & 0xFFF977AE) + ((v35 - (v38 ^ 0x18DBB92F)) ^ 0x7FFCBBD7);
  v239 = ((2 * ((v38 ^ 0x18DBB92F) + v33)) & 0xAFDB747A) + (((v38 ^ 0x18DBB92F) + v33) ^ 0xD7EDBA3D);
  v40 = (-2033862160 * v239) | ((2020367263 * v239 + 946447645) >> 28);
  v41 = ((2 * (v40 - 2036706864)) & 0xDFFFB63C) + ((v40 - 2036706864) ^ 0xEFFFDB1E);
  LODWORD(STACK[0x200]) = v39;
  v42 = ((40370176 * v39) | ((-1324654515 * v39 + 21880917) >> 13)) + 44564480;
  v43 = ((2 * v42) & 0xEBBA1FDA) + (v42 ^ 0xF5DD0FED);
  v44 = ((2 * ((-1624542574 * (v38 ^ v30 ^ 0xC1F0CFF2)) | ((-812271287 * (v38 ^ v30 ^ 0xC1F0CFF2)) >> 31))) & 0xFF3FEFFE) + (((-1624542574 * (v38 ^ v30 ^ 0xC1F0CFF2)) | ((-812271287 * (v38 ^ v30 ^ 0xC1F0CFF2)) >> 31)) ^ 0xFF9FF7FF);
  v45 = 1184580965 * v44 + 648441189;
  v46 = ((-1507852288 * v37) | ((-457990863 * v37 + 1673740066) >> 11)) - v44 + v43 - v41 - 570244304;
  v47 = ((-335544320 * v46) | ((1879486651 * v46) >> 6)) - ((2 * ((-335544320 * v46) | ((1879486651 * v46) >> 6))) & 0x1C0DBA3E) + 235330847;
  v48 = ((-854514176 * v41) | ((-127498093 * v41 - 440844858) >> 23)) + 1920699392;
  v49 = v48 - ((2 * v48) & 0x1C0DBA3E) + 235330847;
  v50 = ((-629538816 * v43) | ((1063284029 * v43 - 22328441) >> 15)) - 1760690176;
  v51 = ((2 * v50) & 0xBFAABD5C) + (v50 ^ 0x5FD55EAE);
  v52 = ((1497366528 * v44) | (v45 >> 10)) + 1497366528;
  v53 = 692769873 * v52;
  v54 = v49 ^ v52 ^ v47;
  v55 = ((117721088 * (v47 ^ 0xE06DD1F)) | ((148955273 * (v47 ^ 0xE06DD1F)) >> 21)) - 2 * (((117721088 * (v47 ^ 0xE06DD1F)) | ((148955273 * (v47 ^ 0xE06DD1F)) >> 21)) & 0x7DA3CAFE ^ ((148955273 * (v47 ^ 0xE06DD1F)) >> 21) & 0x12) - 39597332;
  HIDWORD(v56) = v45 >> 10;
  LODWORD(v56) = v53;
  v57 = ((2 * ((-1593835520 * (v54 - v51 + 1607818926)) | ((1573165985 * (v54 - v51 + 1607818926)) >> 8))) & 0x6E39DD9E) + (((-1593835520 * (v54 - v51 + 1607818926)) | ((1573165985 * (v54 - v51 + 1607818926)) >> 8)) ^ 0xB71CEECF);
  v58 = ((-1259470848 * v51) | ((-2029200777 * v51 - 1895247586) >> 15)) - 1573126144;
  v59 = ((2 * v58) & 0xF6A1E792) + (v58 ^ 0xFB50F3C9);
  v60 = v57 - v59 + (v55 ^ ((v56 >> 1) - ((2 * (v56 >> 1)) & 0xFB4795D8) - 39597332)) + 1144259834;
  v61 = ((-2042101760 * v57) | ((-1111355191 * v57 - 1619161223) >> 13)) + 2076704768 - 2 * ((((-2042101760 * v57) | ((-1111355191 * v57 - 1619161223) >> 13)) + 2076704768) & 0x4F8667F ^ ((-1111355191 * v57 - 1619161223) >> 13) & 0xC) - 2064095629;
  v62 = (-603979776 * (v55 ^ 0xFDA3CAEC)) | ((-669949129 * (v55 ^ 0xFDA3CAEC)) >> 6);
  v63 = ((1577058304 * v60) | ((2140181167 * v60) >> 7)) - 2 * (((1577058304 * v60) | ((2140181167 * v60) >> 7)) & 0x46701473 ^ ((2140181167 * v60) >> 7) & 0x12) + 1181750369;
  v64 = v61 ^ 0x84F86673;
  v65 = ((-938352640 * v59) | ((2144747663 * v59 - 540044615) >> 19)) - 229171200 + v62;
  v66 = v63 ^ (v65 - ((2 * v65) & 0x8CE028C2) + 1181750369);
  v67 = (v61 ^ 0x84F86673) + v62 + 341879529 + ((1679741680 - 2 * ((v61 ^ 0x84F86673) + v62)) | 0x731FD73D);
  v68 = (v66 - ((2 * v66) & 0x9F0CCE6) - 2064095629) ^ v61;
  v69 = v68 + (v63 ^ 0x2DA56767 ^ v67);
  v70 = (v69 - 401318114) ^ v68;
  v71 = ((2 * ((1354760192 * (v69 - 401318114 + v64)) | ((-1525342909 * (v69 - 401318114 + v64)) >> 10))) & 0xF7EFDF7E) + (((1354760192 * (v69 - 401318114 + v64)) | ((-1525342909 * (v69 - 401318114 + v64)) >> 10)) ^ 0xFBF7EFBF);
  v72 = ((2 * ((-1912602624 * (v63 ^ 0x46701461 ^ (v69 - 401318114))) | ((-202301881 * (v63 ^ 0x46701461 ^ (v69 - 401318114))) >> 7))) & 0xD77EDAF4) + (((-1912602624 * (v63 ^ 0x46701461 ^ (v69 - 401318114))) | ((-202301881 * (v63 ^ 0x46701461 ^ (v69 - 401318114))) >> 7)) ^ 0xEBBF6D7A);
  v73 = (-2094293261 * v70) >> 29;
  v74 = (425523096 * v70) | v73;
  v75 = (((649110528 * v69) | ((-276190167 * v69 - 1002871858) >> 22)) + v72 - v71 - 171460027) ^ v74;
  v76 = ((1811939328 * v75) | ((1380789339 * v75) >> 6)) - 2 * (((1811939328 * v75) | ((1380789339 * v75) >> 6)) & 0x2DDBC03F ^ ((1380789339 * v75) >> 6) & 0x18) + 769376295;
  v77 = ((-939425792 * v72) | ((1555009539 * v72 - 523823214) >> 17)) - 1949761536;
  v78 = ((2 * v77) & 0x46F6C5AE) + (v77 ^ 0xA37B62D7);
  HIDWORD(v56) = v73;
  LODWORD(v56) = -1440002923 * v74;
  v79 = ((2 * (v56 >> 2)) & 0xFFDF19B4) + ((v56 >> 2) ^ 0xFFEF8CDA);
  v80 = v76 ^ 0x2DDBC027;
  v81 = -830759631 * (v76 ^ 0x2DDBC027);
  v82 = v76 ^ (((-1342177280 * v71) | ((-1877380405 * v71 - 268774005) >> 4)) - 1342177280 - 2 * ((((-1342177280 * v71) | ((-1877380405 * v71 - 268774005) >> 4)) - 1342177280) & 0x2DDBC037 ^ ((-1877380405 * v71 - 268774005) >> 4) & 0x10) + 769376295);
  v83 = ((2 * ((822083584 * v80) | (v81 >> 8))) & 0xBFFEF5DE) + (((822083584 * v80) | (v81 >> 8)) ^ 0x5FFF7AEF);
  v84 = v82 - (v78 + v79) - 1553272911;
  v85 = ((1266155520 * v84) | ((900278639 * v84) >> 13)) - 2 * (((1266155520 * v84) | ((900278639 * v84) >> 13)) & 0x1034611 ^ ((900278639 * v84) >> 13) & 1) + 16991760;
  v86 = (-1132787153 * v79 - 490299398) >> 23;
  v87 = ((2101346304 * v78) | ((-1213110795 * v78 - 716925635) >> 10)) - v83 - 1354794257;
  v88 = ((-166437376 * v79) | v86) - 1925188608;
  v89 = ((v87 - ((2 * v87) & 0x2068C20) + 16991760) ^ v85) - v88;
  v90 = (-2091548678 * (v85 ^ 0x1034610)) | ((-1045774339 * (v85 ^ 0x1034610)) >> 31);
  v91 = ((2 * v90) & 0xBEF5EADA) + (v90 ^ 0x5F7AF56D);
  v92 = ((1191182336 * v83) | ((-1360265657 * v83 - 1731803721) >> 8)) - 1224736768;
  v93 = ((-37908864 * v89) | ((1039891229 * v89) >> 25)) - 2 * (((-37908864 * v89) & 0x6ED0B200 | ((1039891229 * v89) >> 25) & 0x6ED0B21E) ^ ((1039891229 * v89) >> 25) & 4) - 288312806;
  HIDWORD(v56) = v86;
  LODWORD(v56) = -1622734711 * v88;
  v94 = v92 ^ (v56 >> 1);
  v95 = v92 - v91 + 1601893741;
  v91 -= 1601893741;
  v96 = v91 + v94 + (v93 ^ 0xEED0B21A);
  v97 = (1041514969 * ((v93 ^ 0xEED0B21A) + (v95 ^ 0xDA36C1E6))) ^ v96;
  v98 = (v97 - ((2 * v97) & 0xDDA16434) - 288312806) ^ v93;
  v99 = ((2 * ((v97 ^ 0x9A52D3D0) + v91)) & 0xEDD7F77A) + (((v97 ^ 0x9A52D3D0) + v91) ^ 0xF6EBFBBD);
  v100 = ((2 * ((v97 ^ 0x9A52D3D0) + v96)) & 0xC8EEE9F6) + (((v97 ^ 0x9A52D3D0) + v96) ^ 0x647774FB);
  v101 = 5311773 * v100 - 1977876335;
  LODWORD(STACK[0x238]) = v99;
  v102 = HIBYTE(v101);
  v103 = (-1796734976 * (v97 ^ 0x9A52D3D0)) | ((503288477 * (v97 ^ 0x9A52D3D0)) >> 13);
  v104 = ((-1472389120 * v99) | ((423969257 * v99 + 157017083) >> 19)) + 2088722432;
  v105 = v104 - ((2 * v104) & 0x8AFEAA7E) + 1165972799;
  v106 = ((-1694498816 * (v98 ^ 0x9A52D3D0)) | ((-535099749 * (v98 ^ 0x9A52D3D0)) >> 8)) - 2 * (((-1694498816 * (v98 ^ 0x9A52D3D0)) | ((-535099749 * (v98 ^ 0x9A52D3D0)) >> 8)) & 0x3A9E7BFE ^ ((-535099749 * (v98 ^ 0x9A52D3D0)) >> 8) & 0x14) - 1164018710;
  v107 = ((1359813888 * v100) | HIBYTE(v101)) + 469799168;
  v108 = v105 ^ (v103 - ((2 * v103) & 0x8AFEAA7E) + 1165972799);
  v109 = ((v108 - ((2 * v108) & 0x753CF7D4) - 1164018710) ^ v106) + v107;
  v106 ^= 0xBA9E7BEA;
  v110 = ((988807168 * v109) | ((715211695 * v109) >> 12)) - 2 * (((988807168 * v109) | ((715211695 * v109) >> 12)) & 0x19419AAC ^ ((715211695 * v109) >> 12) & 4) - 1723753816;
  v111 = (-862978048 * (v105 ^ 0x457F553F)) | ((-733643575 * (v105 ^ 0x457F553F)) >> 12);
  v112 = (-1594667825 * v106) >> 15;
  v113 = (-1717698560 * v106) | v112;
  HIDWORD(v56) = v102;
  LODWORD(v56) = 372683279 * v107;
  v114 = ((2 * (v56 >> 1)) & 0xA3FFC7F6) + ((v56 >> 1) ^ 0xD1FFE3FB);
  v115 = v114 + 771759109 + (v110 ^ (v111 - 2 * (v111 & 0x19419AA9 ^ ((-733643575 * (v105 ^ 0x457F553F)) >> 12) & 1) - 1723753816)) - v113;
  v116 = -2032769133 * v115;
  v117 = (868843520 * v115) | ((-2032769133 * v115) >> 17);
  v118 = ((73400320 * (v110 ^ 0x99419AA8)) | ((-1187360733 * (v110 ^ 0x99419AA8)) >> 11)) - 2 * (((73400320 * (v110 ^ 0x99419AA8)) | ((-1187360733 * (v110 ^ 0x99419AA8)) >> 11)) & 0x7B21F6BA ^ ((-1187360733 * (v110 ^ 0x99419AA8)) >> 11) & 8) - 81660238;
  HIDWORD(v56) = v112;
  LODWORD(v56) = 1253252641 * v113;
  v119 = ((-1580776448 * v114) | ((-886541871 * v114 - 230877931) >> 22)) - 195800064;
  v120 = ((2 * v119) & 0x6DF3D376) + (v119 ^ 0x36F9E9BB);
  v121 = 922347963 - v120 - v117 + (v118 ^ ((v56 >> 2) - ((2 * (v56 >> 2)) & 0xF643ED64) - 81660238));
  v122 = (-2064646144 * (v118 ^ 0xFB21F6B2)) | ((-345765809 * (v118 ^ 0xFB21F6B2)) >> 12);
  HIDWORD(v56) = v116 >> 17;
  LODWORD(v56) = -460044643 * v117;
  v123 = (v56 >> 2) - ((2 * (v56 >> 2)) & 0xDF50FAFE) - 274170497;
  v124 = ((1359470592 * v120) | ((2121959487 * v120 + 1194730235) >> 19)) - 1000382464 + v122;
  v125 = ((-141033472 * v121) | ((317398771 * v121) >> 13)) - 2 * (((-141033472 * v121) | ((317398771 * v121) >> 13)) & 0x2FAFFAF ^ ((317398771 * v121) >> 13) & 0x20) - 2097479793;
  v126 = (v124 - ((2 * v124) & 0xDF50FAFE) - 274170497) ^ v123;
  v127 = ((v122 - ((2 * v122) & 0xDF50FAFE) - 274170497) ^ v123) + 134417326 + (v125 ^ 0x7D050070);
  v128 = v127 ^ v125 ^ (v126 - ((2 * v126) & 0x5F5FF1E) - 2097479793);
  v129 = ((2 * ((v123 ^ 0xEFA87D7F) - (v128 ^ 0xCD41CF84))) & 0xCE7FFE8A) + (((v123 ^ 0xEFA87D7F) - (v128 ^ 0xCD41CF84)) ^ 0xE73FFF45);
  LODWORD(STACK[0x224]) = v129;
  v130 = (-430964736 * v129) | ((1797693029 * v129 - 1997163577) >> 12);
  v240 = ((2 * ((v128 ^ 0xCD41CF84) + (v125 ^ 0x82FAFF8F))) & 0xF5FFFFDE) + (((v128 ^ 0xCD41CF84) + (v125 ^ 0x82FAFF8F)) ^ 0xFAFFFFEF);
  v131 = ((2 * (v130 + 1013972992)) & 0xEE7FBBEA) + ((v130 + 1013972992) ^ 0x773FDDF5);
  v132 = ((1665531904 * v240) | ((1315451299 * v240 + 1676364755) >> 15)) - 1750728704;
  v133 = ((2 * v132) & 0x7F79DBEE) + (v132 ^ 0xBFBCEDF7);
  v134 = (-872415232 * (v127 ^ 0xCD41CF84)) | ((-1774941709 * (v127 ^ 0xCD41CF84)) >> 6);
  v135 = ((2 * v134) & 0x7F8EBDB8) + (v134 ^ 0xBFC75EDC);
  v136 = (((886251625 * (v128 ^ 0xCD41CF84)) >> 5) | (((v128 ^ 0xCD41CF84) + 8 * v128) << 27)) - v135 + v133 - v131 + 2001358554;
  v137 = ((254094336 * v133) | ((-2122069685 * v133 + 1080711587) >> 22)) - 1452897280;
  v138 = ((2 * v137) & 0xF9CD7FE4) + (v137 ^ 0xFCE6BFF2);
  v139 = ((-891199488 * v135) | ((-432646389 * v135 + 1456089228) >> 19)) + 1158774784;
  v140 = ((2 * v139) & 0x7EFFADCE) + (v139 ^ 0xBF7FD6E7);
  v141 = ((-528482304 * v136) | ((-1413205055 * v136) >> 9)) - 2 * (((-528482304 * v136) | ((-1413205055 * v136) >> 9)) & 0x556EB0FF ^ ((-1413205055 * v136) >> 9) & 0xD) - 714166030;
  v142 = v140 - v138 + 1030154507 + (v141 ^ (((-441122816 * v131) | ((312337845 * v131 + 889907399) >> 16)) - 389611520 - 2 * ((((-441122816 * v131) | ((312337845 * v131 + 889907399) >> 16)) - 389611520) & 0x556EB0FF ^ ((312337845 * v131 + 889907399) >> 16) & 0xD) - 714166030));
  v143 = (-1349941504 * v140) | ((-72382073 * v140 + 883625263) >> 24);
  v144 = ((-1146248192 * v138) | ((-928060567 * v138 - 324264002) >> 22)) - 1333856256 - 2 * ((((-1146248192 * v138) | ((-928060567 * v138 - 324264002) >> 22)) - 1333856256) & 0x52BF65BE ^ ((-928060567 * v138 - 324264002) >> 22) & 0x14);
  v145 = ((-1756628992 * (v141 ^ 0xD56EB0F2)) | ((592636287 * (v141 ^ 0xD56EB0F2)) >> 21)) - 2 * (((-1756628992 * (v141 ^ 0xD56EB0F2)) & 0x52BF6000 | ((592636287 * (v141 ^ 0xD56EB0F2)) >> 21) & 0x52BF65AB) ^ ((592636287 * (v141 ^ 0xD56EB0F2)) >> 21) & 1) - 759208534;
  v146 = ((2 * (v143 - 1425199360)) & 0xE673B4B8) + ((v143 - 1425199360) ^ 0x7339DA5C);
  v147 = ((-341835776 * v142) | ((1543327581 * v142) >> 11)) - 2 * (((-341835776 * v142) | ((1543327581 * v142) >> 11)) & 0x7746E95F ^ ((1543327581 * v142) >> 11) & 0x12) + 2001135949;
  v148 = (((v145 ^ (v144 - 759208534)) - ((2 * (v145 ^ (v144 - 759208534))) & 0xEE8DD29A) + 2001135949) ^ v147) - v146 + 1933171292;
  v149 = (-2130706432 * (v145 ^ 0xD2BF65AA)) | ((-1619104127 * (v145 ^ 0xD2BF65AA)) >> 8);
  v150 = ((2 * ((1879048192 * (v147 ^ 0x7746E94D)) | ((-1931132617 * (v147 ^ 0x7746E94D)) >> 4))) & 0x9BEFD67E) + (((1879048192 * (v147 ^ 0x7746E94D)) | ((-1931132617 * (v147 ^ 0x7746E94D)) >> 4)) ^ 0x4DF7EB3F);
  v151 = ((v149 - v150 + 1308093247) ^ 0xB0571455) - 1847914032;
  v152 = ((-1319304704 * v148) | ((735620737 * v148) >> 23)) - 2 * (((-1319304704 * v148) | ((735620737 * v148) >> 23)) & 0xC144FEE ^ ((735620737 * v148) >> 23) & 6) + 202657768;
  v153 = ((-962579968 * v146) | ((602099737 * v146 + 2005462276) >> 23)) - v149 + v150 - 1008591678 + (v152 ^ 0xF3EBB017);
  v154 = v153 ^ (v151 + (v152 ^ 0xF3EBB017));
  v155 = (v154 - ((2 * v154) & 0x18289FD0) + 202657768) ^ v152;
  v156 = ((2 * (v150 - 1308093247 + (v154 ^ 0xF1968A6A))) & 0xF493FFDE) + ((v150 - 1308093247 + (v154 ^ 0xF1968A6A)) ^ 0xFA49FFEF);
  v241 = ((2 * (v153 - (v154 ^ 0xF1968A6A))) & 0xFD0DF6BE) + ((v153 - (v154 ^ 0xF1968A6A)) ^ 0xFE86FB5F);
  v157 = ((1691867040 * v156) | ((2066136765 * v156 + 2029038221) >> 27)) + 504713632;
  v158 = ((2 * v157) & 0xD9FFFE5E) + (v157 ^ 0x6CFFFF2F);
  v159 = (-752057872 * (v155 ^ 0xF1968A6A)) | ((2100480031 * (v155 ^ 0xF1968A6A)) >> 28);
  v160 = ((2 * v159) & 0xFEDB9272) + (v159 ^ 0xFF6DC939);
  v161 = ((469762048 * v241) | ((-1235425209 * v241 + 882782375) >> 6)) - 1677721600;
  v162 = ((2 * v161) & 0xF639DFCE) + (v161 ^ 0x7B1CEFE7);
  HIDWORD(v56) = 823402857 * (((-1686025664 * (v154 ^ 0xF1968A6A)) | ((2054030633 * (v154 ^ 0xF1968A6A)) >> 26)) + v160 - v162 + v158) - 19230185;
  LODWORD(v56) = HIDWORD(v56);
  v163 = ((2 * (v56 >> 30)) & 0xAFBE79FA) + ((v56 >> 30) ^ 0xD7DF3CFD);
  v164 = ((-1610612736 * v158) | ((1723203149 * v158 + 294952157) >> 3)) - v163 + 2011118845;
  v165 = ((-154140672 * v160) | ((-960131219 * v160 - 67273797) >> 12)) - 1146093568 - 2 * ((((-154140672 * v160) | ((-960131219 * v160 - 67273797) >> 12)) - 1146093568) & 0x6463709F ^ ((-960131219 * v160 - 67273797) >> 12) & 0x16);
  v166 = v164 - 463245175 + (~(2 * v164) | 0x37391EED);
  v167 = -580183149 * v163 - 1734194247;
  v168 = ((-167772160 * v162) | ((1330463611 * v162 - 724285693) >> 7)) + 100663296;
  v169 = ((2 * v168) & 0xF2F9ADAC) + (v168 ^ 0x797CD6D6);
  v165 -= 463245175;
  v170 = v169 - 2038224598 + ((v166 + 1) ^ v165);
  v171 = ((-701028864 * v163) | (v167 >> 23)) + 1150775808;
  v172 = (-1157627904 * (v165 ^ 0xE4637089)) | ((1458549179 * (v165 ^ 0xE4637089)) >> 8);
  v173 = ((-1405766632 * v169) | ((1434891907 * v169 - 1839338370) >> 29)) - 1829805072;
  v174 = ((2 * v173) & 0x77FFF7C4) + (v173 ^ 0x3BFFFBE2);
  v175 = ((-708968448 * v170) | ((-1348343073 * v170) >> 15)) - 2 * (((-708968448 * v170) | ((-1348343073 * v170) >> 15)) & 0x2F72BA27 ^ ((-1348343073 * v170) >> 15) & 1) - 1351435738;
  v176 = v175 ^ (v172 - v171 - ((2 * (v172 - v171)) & 0x5EE5744C) - 1351435738);
  HIDWORD(v56) = v167 >> 23;
  LODWORD(v56) = -1863639063 * v171;
  v177 = v56 >> 2;
  v178 = (1412864000 * (v175 ^ 0xAF72BA26)) | ((-842365229 * (v175 ^ 0xAF72BA26)) >> 21);
  v179 = ((2 * v178) & 0xDDA75E9E) + (v178 ^ 0x6ED3AF4F);
  v180 = (((1744544841 * (v174 - 1006631906 + v176)) >> 5) | (1207959552 * (v174 - 1006631906 + v176))) - 2 * ((((1744544841 * (v174 - 1006631906 + v176)) >> 5) | (1207959552 * (v174 - 1006631906 + v176))) & 0x5D7213DD ^ ((1744544841 * (v174 - 1006631906 + v176)) >> 5) & 0x10) - 579726387;
  v181 = (v177 + 931135488 * v174 + ((202547823 * v174 - 1330068222) >> 9) - v179 - 271339697 - ((2 * (v177 + 931135488 * v174 + ((202547823 * v174 - 1330068222) >> 9) - v179 - 271339697)) & 0xBAE4279A) - 579726387) ^ v180;
  v182 = (v180 ^ 0xDC3E57AE ^ (518181249 * (v177 - v179 + 1859366735) - ((1036362498 * (v177 - v179 + 1859366735)) & 0xBAE4279A) - 579726387)) - v181;
  v183 = ((2 * v182) & 0xFFDDAB7E) + (v182 ^ 0xFFEED5BF);
  v184 = ((2 * ((-1140850688 * ((v180 ^ 0xDD7213CD) - 383405559 * v183 + 878751305)) | ((1331604847 * ((v180 ^ 0xDD7213CD) - 383405559 * v183 + 878751305)) >> 6))) & 0xFFB3F4DA) + (((-1140850688 * ((v180 ^ 0xDD7213CD) - 383405559 * v183 + 878751305)) | ((1331604847 * ((v180 ^ 0xDD7213CD) - 383405559 * v183 + 878751305)) >> 6)) ^ 0x7FD9FA6D);
  v185 = ((2 * ((-568991744 * (v179 + 1556849256 + 383405559 * v183)) | ((678883503 * (v179 + 1556849256 + 383405559 * v183)) >> 19))) & 0xB2ADAA90) + (((-568991744 * (v179 + 1556849256 + 383405559 * v183)) | ((678883503 * (v179 + 1556849256 + 383405559 * v183)) >> 19)) ^ 0x5956D548);
  v186 = ((2 * ((1723769728 * ((383405559 * v183 - 878751305) ^ v181)) | ((885882183 * ((383405559 * v183 - 878751305) ^ v181)) >> 25))) & 0xF5B9FEEE) + (((1723769728 * ((383405559 * v183 - 878751305) ^ v181)) | ((885882183 * ((383405559 * v183 - 878751305) ^ v181)) >> 25)) ^ 0xFADCFF77);
  v187 = ((139395072 * v183) | ((1703675983 * v183 + 1328157199) >> 16)) + v185 - v184 + v186 + 1035281838;
  v188 = ((2 * ((208595292 * v187) | ((-1021593001 * v187) >> 30))) & 0x7E7FAF34) + (((208595292 * v187) | ((-1021593001 * v187) >> 30)) ^ 0xBF3FD79A);
  v189 = ((1606294784 * v184) | ((190823965 * v184 + 520010663) >> 24)) - 21256448;
  v190 = ((2 * v189) & 0xDF3273D0) + (v189 ^ 0xEF9939E8);
  v191 = ((988771072 * v186) | ((-2076512397 * v186 - 1086118773) >> 24)) + 1126468352;
  v192 = ((2 * v191) & 0xD6D7FFDE) + (v191 ^ 0x6B6BFFEF);
  v193 = ((-1610612736 * v185) | ((909772181 * v185 - 872712936) >> 3)) + v190 - v192 + v188 - 1131221395;
  v194 = ((417005568 * v188) | ((516757723 * v188 - 1243996350) >> 16)) + 524419072;
  v195 = v194 - ((2 * v194) & 0x25A55FC) + 19737342;
  v196 = v195 ^ (((-1946165778 * v190) | ((-973082889 * v190 + 691761448) >> 31)) + 1383522896 - 2 * ((((-1946165778 * v190) | ((-973082889 * v190 + 691761448) >> 31)) + 1383522896) & 0x12D2AFF ^ ((-973082889 * v190 + 691761448) >> 31)) + 19737342);
  v197 = ((715309056 * v192) | ((1730194059 * v192 - 846769349) >> 18)) - 724647936;
  v198 = ((2 * v197) & 0x5FCEEDD0) + (v197 ^ 0x2FE776E8);
  v199 = ((-1387514240 * v193) | ((-1386571667 * v193) >> 25)) - 2 * (((-1387514240 * v193) | ((-1386571667 * v193) >> 25)) & 0x7731767F ^ ((-1386571667 * v193) >> 25) & 9) + 1999730294;
  v200 = (-1930315072 * (v195 ^ 0x12D2AFE)) | ((-2043427093 * (v195 ^ 0x12D2AFEu)) >> 26);
  v201 = (-1605361664 * (v199 ^ 0x77317676)) | ((1580008065 * (v199 ^ 0x77317676)) >> 19);
  HIDWORD(v56) = 498802555 * (v198 + ((v196 - ((2 * v196) & 0xEE62ECEC) + 1999730294) ^ v199)) - 789854584;
  LODWORD(v56) = HIDWORD(v56);
  v202 = v201 - ((2 * v201) & 0x5A4703C8) - 1390181916;
  v203 = ((2052957696 * v198) | ((1245523667 * v198 - 2020389176) >> 23)) + 647860224 + v200;
  v204 = (v56 >> 31) - ((2 * (v56 >> 31)) & 0x5F768BAE) - 1346681385;
  v205 = v202 ^ (v203 - ((2 * v203) & 0x5F768BAE) - 1346681385) ^ 0x4EA96062 ^ v204;
  v206 = v204 ^ 0xAFBB45D7;
  v207 = (v204 ^ 0xAFBB45D7) + (((v202 ^ 0xAD2381E4) + v200) ^ 0x206EDDB);
  v208 = (v207 - ((2 * v207) & 0xC715C30C) - 477437562) ^ v205;
  v209 = (v208 ^ 0x9B621F44) - 2 * (((v208 ^ 0x9B621F44) + 546508056) & 0x5D0DDE9B ^ v208 & 2) + 2107698097;
  v210 = v209 ^ v202;
  LODWORD(STACK[0x248]) = v210;
  LODWORD(STACK[0x230]) = v205;
  v211 = ((922273792 * (v210 ^ 0x702E5F7D)) | ((-746135783 * (v210 ^ 0x702E5F7Du)) >> 21)) - 2 * (((922273792 * (v210 ^ 0x702E5F7D)) | ((-746135783 * (v210 ^ 0x702E5F7Du)) >> 21)) & 0x140454FC ^ ((-746135783 * (v210 ^ 0x702E5F7Du)) >> 21) & 0xC);
  v212 = (1275068416 * (v209 ^ v205 ^ 0x3E873F1F)) | ((822932563 * (v209 ^ v205 ^ 0x3E873F1F)) >> 6);
  v213 = ((2 * v212) & 0x75EFDDEE) + (v212 ^ 0xBAF7EEF7);
  v214 = (v209 ^ 0xDD0DDE99) + v206 - ((2 * ((v209 ^ 0xDD0DDE99) + v206)) & 0xB20EACD4) - 653830550;
  v215 = (1594489856 * (v214 ^ 0xD907566A)) | ((353878655 * (v214 ^ 0xD907566A)) >> 22);
  v216 = ((2 * v215) & 0xFFF3BFF2) + (v215 ^ 0xFFF9DFF9);
  v211 += 335828208;
  v217 = (v211 ^ (((-1505755136 * (v209 ^ 0xDD0DDE99)) | ((1164161689 * (v209 ^ 0xDD0DDE99)) >> 10)) - 2 * (((-1505755136 * (v209 ^ 0xDD0DDE99)) | ((1164161689 * (v209 ^ 0xDD0DDE99)) >> 10)) & 0x140454F3 ^ ((1164161689 * (v209 ^ 0xDD0DDE99)) >> 10) & 3) + 335828208)) - v213 - 1157755138;
  v218 = 233327863 * v216 + 952302273;
  v219 = ((-484442112 * (v217 + v216)) | ((1575384857 * (v217 + v216)) >> 11)) - 2 * (((-484442112 * (v217 + v216)) | ((1575384857 * (v217 + v216)) >> 11)) & 0x92E7B5D ^ ((1575384857 * (v217 + v216)) >> 11) & 0x10);
  v220 = ((322813952 * v216) | (v218 >> 18)) - 1095745536;
  v221 = ((-51052232 * v213) | ((1067360295 * v213 + 1231960159) >> 29)) + 1265746680;
  v222 = ((2 * v221) & 0x9FECEF3E) + (v221 ^ 0x4FF6779F);
  v219 += 154041165;
  v223 = v220 - v222 + 1341552543 + (v219 ^ (((1112813568 * (v211 ^ 0x140454F0)) | ((-657185469 * (v211 ^ 0x140454F0)) >> 20)) - 2 * (((1112813568 * (v211 ^ 0x140454F0)) | ((-657185469 * (v211 ^ 0x140454F0)) >> 20)) & 0x92E7B4F ^ ((-657185469 * (v211 ^ 0x140454F0)) >> 20) & 2) + 154041165));
  HIDWORD(v56) = v218 >> 18;
  LODWORD(v56) = -1765392813 * v220;
  v224 = ((1023410176 * (v219 ^ 0x92E7B4D)) | ((1302141757 * (v219 ^ 0x92E7B4D)) >> 8)) - 2 * (((1023410176 * (v219 ^ 0x92E7B4D)) | ((1302141757 * (v219 ^ 0x92E7B4D)) >> 8)) & 0x2EFE9B1 ^ ((1302141757 * (v219 ^ 0x92E7B4D)) >> 8) & 1) - 2098206288;
  v225 = v224 ^ ((v56 >> 1) - ((2 * (v56 >> 1)) & 0x5DFD360) - 2098206288);
  v226 = ((-1473642496 * v222) | ((-1524444139 * v222 - 140868619) >> 15)) + 132775936;
  v227 = ((2 * v226) & 0xFFF15A7C) + (v226 ^ 0xFFF8AD3E);
  v228 = ((-2131755008 * v223) | ((-1711556593 * v223) >> 12)) - 2 * (((-2131755008 * v223) | ((-1711556593 * v223) >> 12)) & 0x3AF20937 ^ ((-1711556593 * v223) >> 12) & 4) + 988940595;
  v229 = v227 + 479938 + ((v225 - ((2 * v225) & 0x75E41266) + 988940595) ^ v228);
  v230 = (1467712512 * (v224 ^ 0x82EFE9B0)) | ((1502994145 * (v224 ^ 0x82EFE9B0)) >> 22);
  v231 = (1874132992 * (v228 ^ 0x3AF20933)) | ((-2045612107 * (v228 ^ 0x3AF20933)) >> 16);
  v232 = ((2 * v231) & 0xFBD797D2) + (v231 ^ 0x7DEBCBE9);
  v233 = ((101392384 * v227) | ((970993753 * v227 - 36690574) >> 19)) - v230 - v232 - 2103833623;
  v234 = (((-696226717 * v229) >> 5) | (402653184 * v229)) - ((2 * (((-696226717 * v229) >> 5) | (402653184 * v229))) & 0x570D9D66) + 730255027;
  v235 = (v233 - ((2 * v233) & 0x570D9D66) + 730255027) ^ v234;
  v234 ^= 0x2B86CEB3u;
  v236 = v235 ^ 0xD190B702 ^ (v234 + ((v230 - 2112605161 + v232) ^ 0x2CCFD0E3));
  v237 = v236 - ((2 * v236 + 48226314) & 0x170B039A) + 1559589330;
  LODWORD(STACK[0x228]) = (v237 ^ 0xF47A7E32) + v232 - ((2 * ((v237 ^ 0xF47A7E32) + v232) + 69756976) & 0x80893484) - 1034367398;
  LODWORD(STACK[0x2B8]) = v237;
  LODWORD(STACK[0x214]) = v98;
  LODWORD(STACK[0x26C]) = HIBYTE(v98) ^ 0x9A;
  LODWORD(STACK[0x250]) = HIBYTE(v214) ^ 0xD9;
  LODWORD(STACK[0x22C]) = v234 - (v237 ^ 0xB8581CD) - ((2 * (v234 - (v237 ^ 0xB8581CD))) & 0x782CB0AA) - 1139386283;
  LODWORD(STACK[0x2A0]) = v98 ^ 0x92381E1F;
  LODWORD(STACK[0x210]) = v128;
  LODWORD(STACK[0x20C]) = HIWORD(v128);
  LODWORD(STACK[0x2B0]) = v214;
  return (*(v7 + 8 * ((v0 - 820910347) & 0x30EE0CFC)))(44, ((v0 - 820910347) & 0x30EE0CFCu) - 2619, -777540106, 4058562947, 3122380082, 6808);
}

uint64_t sub_1000FF9E8(unsigned int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v19 = *(*(v15 + 8 * a2) + 4 * ((v7 ^ v16) & v10 ^ a1) + a3) + ((v7 ^ v16) & v10 ^ v12) + ((v7 ^ v16) & v10 ^ v13) + 2;
  v20 = (v19 - ((2 * v19) & 0xE3D18306) + a4) ^ v14;
  *(v17 + 4 * v7) = v8 ^ (v20 + v9 - (a5 & (2 * v20)));
  return (*(v18 + 8 * (((v11 == 0) * a6) ^ v6)))();
}

uint64_t sub_1000FFA68()
{
  LODWORD(STACK[0x218]) = v1;
  LODWORD(STACK[0x240]) = v0;
  v4 = (v2 - 594921730) & 0x2375E485;
  v5 = 13 * (v2 ^ 0xAAA);
  v6 = (*(v3 + 8 * (v2 + 8440)))(1032);
  v7 = STACK[0x2E8];
  STACK[0x2C8] = v6 + 0x1A5648518FD6D612;
  LODWORD(STACK[0x2D8]) = v4;
  LODWORD(STACK[0x2E0]) = v5;
  return (*(v7 + 8 * (((v6 == 0) * (v5 + v4 - 18448)) ^ v2)))();
}

uint64_t sub_1000FFBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v25 = v14 ^ v24 ^ v8;
  v26 = *(*(a4 + 8 * v10) + 4 * (v25 ^ 2u) - 1245978758);
  v27 = v16 ^ v18 ^ v23 ^ (v21 + v26 - ((2 * v26) & 0xE3D18306) - 236412820);
  v28 = (v27 + 141217231 - ((2 * v27) & 0x10D59B9E)) ^ v22;
  v29 = (v28 + v11 - (v17 & (2 * v28))) ^ a8;
  v30 = (v29 + a7 - (a6 & (2 * v29))) ^ a5;
  *(a1 + 4 * v8) = v19 ^ v25 ^ v12 ^ (v30 + v20 - ((2 * v30) & 0xE05CBEFA));
  return (*(v15 + 8 * (((v9 == 0) * v13) ^ LODWORD(STACK[0x2E0]))))();
}

uint64_t sub_1000FFCD8()
{
  LODWORD(STACK[0x240]) = v3;
  LODWORD(STACK[0x238]) = v1;
  v4 = (v2 - 279) | 0x401;
  v5 = (*(v0 + 8 * (v2 ^ 0x862)))(1032);
  v6 = STACK[0x2E8];
  LODWORD(STACK[0x2D8]) = v4;
  return (*(v6 + 8 * (((v5 != 0) * (v2 ^ 0x519 ^ v4)) ^ v2)))();
}

uint64_t sub_1000FFE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8)
{
  v19 = (v8 ^ a8) ^ *(*(a3 + 8 * v11) + 4 * ((v8 ^ a8) ^ v10) + v12);
  *(a4 + 4 * v8) = v16 ^ a6 ^ v14 ^ (v19 + a7 - ((v19 << v13) & a5));
  return (*(v18 + 8 * (((v9 == 0) * v15) ^ v17)))();
}

uint64_t sub_1000FFEC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  LODWORD(STACK[0x2D8]) = (v4 - 3387) | 0x2001;
  v6 = *(v5 + 8 * (v4 + 6202));
  STACK[0x2E0] = a4;
  v7 = v6(1032) != 0;
  return (*(STACK[0x2E8] + 8 * ((v7 * ((v4 ^ 0x1626) - 1723)) ^ v4)))();
}

uint64_t sub_100100074@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v22 = *(*(a6 + 8 * v11) + 4 * ((v8 ^ v20) ^ v10) + v12);
  v23 = v22 - ((v13 + 2 * v22) & a7) + a1;
  v24 = (v19 + ((((v23 >> a2) ^ (v23 >> 2) ^ a3) - (a7 & (2 * ((v23 >> a2) ^ (v23 >> 2) ^ a3))) + a4) ^ v23) - (v14 & (2 * ((((v23 >> a2) ^ (v23 >> 2) ^ a3) - (a7 & (2 * ((v23 >> a2) ^ (v23 >> 2) ^ a3))) + a4) ^ v23)))) ^ v17;
  *(v15 + 4 * v8) = a5 ^ (v24 + v18 - (v16 & (2 * v24)));
  return (*(v21 + 8 * (v7 | (16 * (v9 != 0)))))();
}

uint64_t sub_100100100()
{
  LODWORD(STACK[0x224]) = v1;
  v3 = v0 + 111;
  LODWORD(STACK[0x2D8]) = (v0 + 111) ^ 0x237D;
  v4 = (*(v2 + 8 * (v0 + 8808)))(1028);
  return (*(STACK[0x2E8] + 8 * (((v4 == 0) * (((v3 ^ 0x237D) - 7075) ^ 0x8AF)) ^ v3)))();
}

uint64_t sub_100100274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  HIDWORD(v17) = *(*(a4 + 8 * v10) + 4 * (a5 ^ (v6 ^ v7) ^ v9) + v11);
  LODWORD(v17) = HIDWORD(v17);
  *(a1 + 4 * v7) = a6 ^ v15 ^ (v17 >> 25) ^ v13 ^ (v12 + 4 * (v17 >> 25));
  return (*(v16 + 8 * ((v8 == 0) ^ v14)))();
}

uint64_t sub_1001002D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = a5 - 2802;
  LODWORD(STACK[0x2D8]) = a5;
  v65 = (*(v63 + 8 * (a5 ^ 0xD74)))(1028);
  return (*(STACK[0x2E8] + 8 * ((31 * (v65 == 0)) ^ v64)))(v65, v66, v67, STACK[0x2E0], 0, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100100408(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, char a8)
{
  v20 = (v8 + a6 - ((v8 << v11) & a5)) ^ a4;
  v21 = *(*(a3 + 8 * v13) + (((v20 - ((2 * v20) & 0x9F) - 49) ^ a8) ^ v12) + v14) - 89;
  *(a7 + 4 * v8) = v18 ^ v16 ^ a1 ^ (v17 + v21 - (v15 & (2 * v21)));
  return (*(v19 + 8 * (((2 * (v9 != 0)) | (8 * (v9 != 0))) ^ v10)))();
}

uint64_t sub_100100490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = 13 * (v7 ^ 0x1292);
  v10 = *(v8 + 8 * (v7 ^ 0x3922));
  STACK[0x218] = a7;
  v11 = v10(1032);
  v12 = STACK[0x2E8];
  STACK[0x2A8] = v11 + 0x2EB268602F54D14FLL;
  LODWORD(STACK[0x2D8]) = v9;
  return (*(v12 + 8 * (((v11 == 0) * ((v9 ^ 0xFFFFC89F) + 218 * (v7 ^ 0x1040))) ^ v7)))();
}

uint64_t sub_1001006BC()
{
  v2 = v0 + 982;
  v3 = (v2 - 4971) | 0x2000;
  v4 = (*(v1 + 8 * (v2 + 4617)))(1028);
  v5 = STACK[0x2E8];
  STACK[0x298] = v4 + 0xEDD07C1744D3A60;
  LODWORD(STACK[0x2D8]) = v3;
  return (*(v5 + 8 * (((v4 != 0) * (v2 - 15189 + v3)) ^ v2)))();
}

uint64_t sub_100100834(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v18 = ((v8 ^ v9) ^ v11) + *(*(a7 + 8 * v13) + 4 * ((v8 ^ v9) ^ v12) + v14);
  *(a1 + 4 * v9) = a3 ^ (v18 + a8 - ((v18 << v15) & a2));
  return (*(v17 + 8 * (((v10 == 0) * a4) ^ v16)))();
}

uint64_t sub_100100894()
{
  v2 = v0 + 3035;
  v3 = 13 * (v2 ^ 0x1CC2);
  LODWORD(STACK[0x2D8]) = v3;
  v4 = (v3 + 55879420) & 0xFCAB3FC6;
  v5 = (*(v1 + 8 * (v2 ^ 0x3772)))(1028);
  v6 = STACK[0x2E8];
  STACK[0x290] = v5 + 0x4A37C95B43735327;
  return (*(v6 + 8 * (((v5 != 0) * (v4 - 2724)) | v2)))();
}

uint64_t sub_100100A58(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v21 = *(*(a7 + 8 * v13) + 4 * ((v9 ^ v8) & v11 ^ v12) + v14);
  v22 = (v19 + v21 * v15 - ((v21 * a2) & v17)) ^ v16;
  *(a1 + 4 * v9) = a4 ^ (v22 + a8 - (a3 & (2 * v22)));
  return (*(v20 + 8 * (((v10 == 0) * a5) ^ v18)))();
}

uint64_t sub_100100AC0()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x8DF)))(1028);
  v3 = STACK[0x2E8];
  STACK[0x288] = v2 + 0x6C194EDE9C7D5590;
  LODWORD(STACK[0x240]) = v0 - 4119;
  LODWORD(STACK[0x2D8]) = v0 + 599;
  return (*(v3 + 8 * (((((v0 - 23) ^ (v2 == 0)) & 1) * ((v0 + 599) ^ 0x241E)) ^ v0)))();
}

uint64_t sub_100100B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v66 + 8 * SLODWORD(STACK[0x240]));
  LODWORD(STACK[0x200]) = 293 * (LODWORD(STACK[0x240]) ^ 0x1180);
  return v67(a1, v65 ^ a65, 664629633, 3780);
}

uint64_t sub_100100C3C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X7>, char a6@<W8>)
{
  v23 = ((v7 + LODWORD(STACK[0x200])) * a6);
  v24 = ((v23 ^ v6 ^ 0xE6) + 19) ^ v20 ^ *(*(a5 + 8 * v11) + (v23 ^ v6 ^ 0x24) + v12);
  v25 = a2 ^ (v24 + v16 - (v13 & (2 * v24)));
  v26 = v21 ^ v18 ^ v19 ^ (v25 + v10 - (v9 & (2 * v25)));
  *(a1 + 4 * ((v7 + LODWORD(STACK[0x200])) * a6)) = v14 ^ v23 ^ v6 ^ 0xE6 ^ a3 ^ (v26 + v15 - (v17 & (2 * v26)));
  return (*(v22 + 8 * (((v8 == 0) * a4) ^ LODWORD(STACK[0x240]))))();
}

uint64_t sub_100100CE8()
{
  v1 = STACK[0x200];
  v2 = (LODWORD(STACK[0x200]) - 1785262204) & 0x6A68FEBD;
  v3 = (*(v0 + 8 * (LODWORD(STACK[0x200]) + 5046)))(1032);
  v4 = STACK[0x2E8];
  LODWORD(STACK[0x2D8]) = v2;
  return (*(v4 + 8 * (((v3 != 0) * (v2 - 8263)) ^ v1)))();
}

uint64_t sub_100100D74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = 22 * (LODWORD(STACK[0x200]) ^ 0x15E1);
  STACK[0x240] = a1;
  v70 = *(v68 + 8 * v69);
  LODWORD(STACK[0x200]) = 129 * (v69 ^ 0x80D);
  return v70(a68);
}

uint64_t sub_100100E90@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  v23 = (a4 ^ v10 ^ v6 ^ 0xD24732C7) + *(*(&off_1002DD400 + v9) + 4 * (a4 ^ v10 ^ v6 ^ 0x1Eu) - 1617062603);
  v24 = (v23 + a5 - (v14 & (2 * v23))) ^ v21;
  v25 = (v24 + v17 - ((v24 << v11) & 0x170B039A)) ^ v20;
  v26 = (v25 + a2 - (v8 & (2 * v25))) ^ v18;
  v27 = (v26 - 653830550 - ((2 * v26) & 0xB20EACD4)) ^ a3;
  v28 = v16 ^ a1 ^ v13 ^ (v27 + v15 - (v19 & (2 * v27)));
  *(STACK[0x240] + 4 * v6) = v12 ^ (v28 + 141217231 - ((2 * v28) & 0x10D59B9E));
  return (*(v22 + 8 * ((6162 * (v7 == 0)) ^ a6)))();
}

uint64_t sub_100100F90()
{
  v1 = STACK[0x200];
  LODWORD(STACK[0x2D8]) = (LODWORD(STACK[0x200]) + 157822836) & 0xF697E7F3;
  v2 = (*(v0 + 8 * (v1 ^ 0x25EC)))(1028);
  v3 = STACK[0x2E8];
  STACK[0x280] = v2 + 0xF59520D87DE52B3;
  return (*(v3 + 8 * (((((v1 + 116) ^ (v2 == 0)) & 1) * ((v1 + 6451878) & 0xFF9DA4C1 ^ 0x2469)) ^ v1)))();
}

uint64_t sub_1001010EC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, int a5@<W6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v19 = (((v7 ^ v17) ^ v12) + v13) ^ *(*(a6 + 8 * v10) + 4 * (a4 ^ (v7 ^ v17) ^ v9) + v11);
  *(a1 + 4 * v7) = v16 ^ a5 ^ a2 ^ (v19 + v14 - (v15 & (2 * v19)));
  return (*(v18 + 8 * (((v8 == 0) * a3) ^ a7)))();
}

uint64_t sub_100101158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unsigned __int8 *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(a8 + 8 * (a6 ^ 0x4C5));
  LODWORD(STACK[0x2D4]) = 0;
  v67 = v66 - 1708094459;
  v68 = *(a8 + 8 * (a6 ^ 0x52F)) - 2131017183;
  v69 = a54;
  v70 = ((*(v66 - 1708094459 + (a54[14] ^ 0x45)) ^ 0x21) << 24) | ((*(v68 + (a54[8] ^ 0xCELL)) ^ 0xDC) << 16);
  v71 = *(a8 + 8 * (a6 - 1695)) - 783863059;
  v72 = *(v71 + (a54[6] ^ 0x34));
  LODWORD(STACK[0x2D8]) = a6 - 1932;
  v73 = v70 & 0xFFFF00FF | ((((a6 + 116) ^ v72) ^ 0xEE) << 8);
  v74 = *(a8 + 8 * (a6 - 1286)) - 1954009498;
  v75 = (v69[2] + (~(2 * v69[2]) | 0x3D) - 30) ^ 0xEB ^ *(v74 + (v69[2] ^ 0xBBLL));
  v76 = (v69[7] - ((2 * v69[7]) & 0xC3) - 31) ^ *(v74 + (v69[7] ^ 0xBBLL)) | ((*(v66 - 1708094459 + (v69[15] ^ 0x45)) ^ 0x21) << 24) | ((*(v68 + (v69[4] ^ 0xCELL)) ^ 0xDC) << 16) | ((*(v71 + (v69[12] ^ 0x34)) ^ 0xEF) << 8);
  v77 = ((*(v66 - 1708094459 + (v69[10] ^ 0x45)) ^ 0x21) << 24) | ((*(v68 + (v69[1] ^ 0xCELL)) ^ 0xDC) << 16) | ((*(v71 + (v69[13] ^ 0x34)) ^ 0xEF) << 8);
  v78 = a54[11];
  LODWORD(STACK[0x2B8]) = a6;
  v79 = *(v74 + (v78 ^ 0xBB));
  v80 = (v78 - ((2 * v78) & 0xC3) - 31);
  LODWORD(v67) = ((*(v67 + (v69[5] ^ 0x45)) ^ 0x21) << 24) | ((*(v68 + (*v69 ^ 0xCELL)) ^ 0xDC) << 16) | ((*(v71 + (v69[3] ^ 0x34)) ^ 0xEF) << 8);
  LODWORD(v68) = *(v74 + (v69[9] ^ 0xBBLL)) ^ (v69[9] - ((2 * v69[9]) & 0xC3) - 31) ^ 0x74;
  LODWORD(STACK[0x250]) = 141217247;
  LODWORD(v67) = (v68 | v67) + 141217231 - 2 * ((v68 | v67) & 0x86ACDDF ^ v68 & 0x10);
  LODWORD(v68) = ((v79 ^ v80 ^ 0x74 | v77) + 141217231 - 2 * ((v79 ^ v80 ^ 0x74 | v77) & 0x86ACDDF ^ (v79 ^ v80 ^ 0x74) & 0x10)) ^ LODWORD(STACK[0x2A0]);
  v81 = STACK[0x2A0];
  v82 = v68 - 653830550 - ((2 * v68) & 0xB20EACD4);
  LODWORD(v69) = STACK[0x2B0];
  v83 = ((v73 | v75) - 653830550 - 2 * ((v73 | v75) & 0x5907566F ^ v75 & 5)) ^ LODWORD(STACK[0x2B0]);
  LODWORD(v68) = LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x2A0]);
  LODWORD(STACK[0x26C]) = v68;
  LODWORD(v68) = v68 ^ v67;
  v84 = (v83 + 141217231 - ((2 * v83) & 0x10D59B9E)) ^ v81;
  LODWORD(v71) = (v76 - ((2 * v76) & 0x9950B362) - 861382223) ^ v68 ^ 0x15AF0FDB ^ v84;
  LODWORD(v71) = (v71 - 653830550 - ((2 * v71) & 0xB20EACD4)) ^ v69;
  v85 = v82 ^ v69;
  v86 = (v71 + 141217231 - ((2 * v71) & 0x10D59B9E)) ^ v81;
  v87 = v85 ^ v86;
  LODWORD(v71) = v87 ^ v84;
  v88 = STACK[0x2C8];
  v89 = STACK[0x280];
  v90 = (v87 - ((2 * v87) & 0x9950B362) - 861382223) ^ v68 ^ 0x15AF0FDB;
  v91 = *(STACK[0x2C8] + 4 * (BYTE3(v68) ^ 0x7C) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(STACK[0x280] + 4 * (BYTE2(v86) ^ 0x4Du) - 0xF59520D87DE52B3);
  v92 = (v91 - ((2 * v91) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v71) ^ 0xBBu) - 0x7DF8D7ACE980A05CLL);
  v93 = STACK[0x298];
  v94 = (v92 - ((2 * v92) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (((v87 - ((2 * v87) & 0x62) - 79) ^ v68 ^ 0xDB) ^ 0x19u) - 0xEDD07C1744D3A60);
  LODWORD(v67) = *(STACK[0x280] + 4 * (BYTE2(v68) ^ 7u) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * (HIBYTE(v90) ^ 0xF1) - 0x1A5648518FD6D612);
  LODWORD(v67) = (v67 - ((2 * v67) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v86) ^ 0x81u) - 0x7DF8D7ACE980A05CLL);
  v95 = (v67 - ((2 * v67) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v71 ^ 0xE5u) - 0xEDD07C1744D3A60);
  LODWORD(v67) = *(STACK[0x280] + 4 * (BYTE2(v90) ^ 0x4Cu) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (BYTE3(v71) ^ 0xFB) - 0x1A5648518FD6D612) ^ 0xC560436F;
  v96 = (v67 - ((2 * v67) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v68) ^ 0x94u) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v74) = *(STACK[0x298] + 4 * (v86 ^ 0x65u) - 0xEDD07C1744D3A60);
  HIDWORD(v97) = (v96 - ((2 * v96) & 0x11C2) + 6369) ^ v74;
  LODWORD(v97) = (v96 - ((2 * v96) & 0xCA11F1C2) - 452396831) ^ v74;
  v98 = *(STACK[0x280] + 4 * (BYTE2(v71) ^ 0xADu) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v86) ^ 0xAB) - 0x1A5648518FD6D612) ^ 0xC560436F;
  v99 = *(a58 + 4 * (BYTE1(v90) ^ 0xE8u) - 0x7DF8D7ACE980A05CLL) ^ 0x75E379BA;
  HIDWORD(v97) = (v97 >> 13) ^ 0x3FC864C0;
  LODWORD(v97) = HIDWORD(v97);
  v100 = v97 >> 19;
  v101 = (v99 + v98 - 2 * (v99 & v98) - ((2 * (v99 + v98 - 2 * (v99 & v98))) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v68 ^ 0x11u) - 0xEDD07C1744D3A60);
  v102 = *(STACK[0x2C8] + 4 * (HIBYTE(v94) ^ 0xE7) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(STACK[0x280] + 4 * (BYTE2(v101) ^ 0x83u) - 0xF59520D87DE52B3);
  LODWORD(v68) = (v102 - ((2 * v102) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v100) ^ 0x5Eu) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v68) = (v68 - ((2 * v68) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v95 ^ 0x54u) - 0xEDD07C1744D3A60);
  LODWORD(v78) = *(STACK[0x280] + 4 * (BYTE2(v94) ^ 0x74u) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * (HIBYTE(v95) ^ 0x82) - 0x1A5648518FD6D612);
  LODWORD(v78) = (v78 - ((2 * v78) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v101) ^ 0xACu) - 0x7DF8D7ACE980A05CLL);
  v103 = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * ((v97 >> 19) ^ 0x1Eu) - 0xEDD07C1744D3A60);
  LODWORD(v78) = HIBYTE(v100) ^ 0x90;
  v104 = *(STACK[0x280] + 4 * (BYTE2(v100) ^ 0xE1u) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v101) ^ 0xB4) - 0x1A5648518FD6D612) ^ 0xC560436F;
  LODWORD(v78) = *(STACK[0x280] + 4 * (BYTE2(v95) ^ 0x85u) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * v78 - 0x1A5648518FD6D612);
  LODWORD(v78) = (v78 - ((2 * v78) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v94) ^ 0x72u) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v78) = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v101 ^ 0x42u) - 0xEDD07C1744D3A60);
  v105 = (v104 - ((2 * v104) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v95) ^ 0x6Fu) - 0x7DF8D7ACE980A05CLL);
  v106 = (v105 - ((2 * v105) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v94 ^ 0xADu) - 0xEDD07C1744D3A60);
  v107 = *(STACK[0x2C8] + 4 * (BYTE3(v68) ^ 0xFD) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(STACK[0x280] + 4 * (BYTE2(v106) ^ 0x62u) - 0xF59520D87DE52B3);
  v108 = (v107 - ((2 * v107) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v78) ^ 0x40u) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v71) = *(STACK[0x280] + 4 * (BYTE2(v68) ^ 0xC1u) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v103) ^ 0xE8) - 0x1A5648518FD6D612) ^ 0xC560436F;
  LODWORD(v67) = (v71 - ((2 * v71) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v106) ^ 0x94u) - 0x7DF8D7ACE980A05CLL);
  v109 = (v108 - ((2 * v108) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v103 ^ 0xCCu) - 0xEDD07C1744D3A60);
  v110 = (v67 - ((2 * v67) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v78 ^ 0x66u) - 0xEDD07C1744D3A60);
  LODWORD(v67) = *(STACK[0x2C8] + 4 * (BYTE3(v78) ^ 0x95) - 0x1A5648518FD6D612) ^ *(STACK[0x280] + 4 * (BYTE2(v103) ^ 0xAFu) - 0xF59520D87DE52B3) ^ 0xC560436F;
  LODWORD(v67) = (v67 + 1977842106 + (~(2 * v67) | 0x14390C8B) + 1) ^ *(a58 + 4 * (BYTE1(v68) ^ 0x5Cu) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v78) = *(STACK[0x2C8] + 4 * (HIBYTE(v106) ^ 0x37) - 0x1A5648518FD6D612) ^ *(STACK[0x280] + 4 * (BYTE2(v78) ^ 0x50u) - 0xF59520D87DE52B3) ^ 0xC560436F;
  LODWORD(v78) = (v78 - ((2 * v78) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v103) ^ 0xF4u) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v78) = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v68 ^ 0x23u) - 0xEDD07C1744D3A60);
  v111 = (v67 - ((2 * v67) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v106 ^ 0x30u) - 0xEDD07C1744D3A60);
  LODWORD(v67) = *(STACK[0x280] + 4 * (BYTE2(v78) ^ 0xDBu) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v109) ^ 0x64) - 0x1A5648518FD6D612) ^ 0xC560436F;
  LODWORD(v67) = (v67 - ((2 * v67) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v111) ^ 0x99u) - 0x7DF8D7ACE980A05CLL);
  v112 = *(STACK[0x2C8] + 4 * (HIBYTE(v110) ^ 0x75) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(STACK[0x280] + 4 * (BYTE2(v109) ^ 0xF2u) - 0xF59520D87DE52B3);
  LODWORD(v74) = (v112 - ((2 * v112) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v78) ^ 0xF8u) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v68) = (v67 - ((2 * v67) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v110 ^ 0x5Fu) - 0xEDD07C1744D3A60);
  v113 = *(STACK[0x280] + 4 * (BYTE2(v110) ^ 0x4Bu) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * (HIBYTE(v111) ^ 0x8A) - 0x1A5648518FD6D612);
  LODWORD(v74) = (v74 - ((2 * v74) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v111 ^ 0xACu) - 0xEDD07C1744D3A60);
  v114 = (v113 - ((2 * v113) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v78 ^ 0xF6u) - 0xEDD07C1744D3A60);
  v115 = (v114 - ((2 * v114) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v109) ^ 0x8Cu) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v78) = *(a58 + 4 * (BYTE1(v110) ^ 0x3Eu) - 0x7DF8D7ACE980A05CLL) ^ 0xA88F6B06 ^ *(STACK[0x2C8] + 4 * (BYTE3(v78) ^ 0x30) - 0x1A5648518FD6D612);
  LODWORD(v78) = (v78 - ((2 * v78) & 0x3018A3A6) + 403460563) ^ *(STACK[0x280] + 4 * (BYTE2(v111) ^ 0xDAu) - 0xF59520D87DE52B3);
  LODWORD(v78) = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v109 ^ 0x5Cu) - 0xEDD07C1744D3A60);
  v116 = (v115 & 0x1000000 | 0xECE0B316) ^ v115 & 0xFEFFFFFF;
  v117 = *(STACK[0x280] + 4 * (BYTE2(v78) ^ 0xDBu) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (BYTE3(v68) ^ 0x2A) - 0x1A5648518FD6D612) ^ 0xC560436F;
  v118 = (v117 - ((2 * v117) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (((v115 ^ 0xB316) >> 8) ^ 0x96u) - 0x7DF8D7ACE980A05CLL);
  v119 = (v118 - ((2 * v118) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v74 ^ 0x2Cu) - 0xEDD07C1744D3A60);
  v120 = *(STACK[0x2C8] + 4 * (BYTE3(v74) ^ 0xB2) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(STACK[0x280] + 4 * (BYTE2(v68) ^ 7u) - 0xF59520D87DE52B3);
  v121 = (v120 - ((2 * v120) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v78) ^ 0x22u) - 0x7DF8D7ACE980A05CLL);
  v122 = (v121 - ((2 * v121) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v116 ^ 0x7Bu) - 0xEDD07C1744D3A60);
  v123 = *(STACK[0x280] + 4 * (BYTE2(v74) ^ 0x13u) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * (HIBYTE(v116) ^ 0x86) - 0x1A5648518FD6D612);
  v124 = (v123 - ((2 * v123) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v68) ^ 0xECu) - 0x7DF8D7ACE980A05CLL);
  v125 = (v124 - ((2 * v124) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v78 ^ 0xE6u) - 0xEDD07C1744D3A60);
  LODWORD(v78) = *(STACK[0x2C8] + 4 * (BYTE3(v78) ^ 8) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(STACK[0x280] + 4 * (BYTE2(v116) ^ 0x84u) - 0xF59520D87DE52B3);
  LODWORD(v78) = (v78 - ((2 * v78) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v74) ^ 0x12u) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v78) = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v68 ^ 0xA4u) - 0xEDD07C1744D3A60);
  LODWORD(v68) = *(STACK[0x280] + 4 * (BYTE2(v122) ^ 0x29u) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * (HIBYTE(v125) ^ 0xBE) - 0x1A5648518FD6D612);
  LODWORD(v68) = (v68 - ((2 * v68) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v119) ^ 0x3Eu) - 0x7DF8D7ACE980A05CLL);
  LODWORD(v74) = (v68 - ((2 * v68) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v78 ^ 0xCCu) - 0xEDD07C1744D3A60);
  v126 = *(STACK[0x280] + 4 * (BYTE2(v125) ^ 0x29u) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (BYTE3(v78) ^ 0xA2) - 0x1A5648518FD6D612) ^ 0xC560436F;
  v127 = (v126 - ((2 * v126) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v122) ^ 0xACu) - 0x7DF8D7ACE980A05CLL);
  v128 = (v127 - ((2 * v127) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v119 ^ 0xCCu) - 0xEDD07C1744D3A60);
  v129 = *(STACK[0x280] + 4 * ~HIWORD(v128) - 0xF59520D87DE52B3) ^ *(a58 + 4 * (BYTE1(v74) ^ 0x42u) - 0x7DF8D7ACE980A05CLL);
  v130 = *(STACK[0x2C8] + 4 * (HIBYTE(v119) ^ 0x3B) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(STACK[0x280] + 4 * (BYTE2(v78) ^ 0x6Fu) - 0xF59520D87DE52B3);
  v131 = (v130 - ((2 * v130) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v125) ^ 0xE3u) - 0x7DF8D7ACE980A05CLL);
  v132 = HIBYTE(v122) ^ 0xF1;
  v133 = (v131 - ((2 * v131) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * ((v121 - ((2 * v121) & 0xC2) - 31) ^ *(STACK[0x298] + 4 * (v116 ^ 0x7Bu) - 0xEDD07C1744D3A60)) - 0xEDD07C1744D3A60);
  v134 = *(STACK[0x280] + 4 * (BYTE2(v119) ^ 3u) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * v132 - 0x1A5648518FD6D612) ^ 0xC560436F;
  LODWORD(v78) = (v134 - ((2 * v134) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v78) ^ 0xF4u) - 0x7DF8D7ACE980A05CLL);
  v135 = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v125 ^ 0x8Fu) - 0xEDD07C1744D3A60);
  LODWORD(v78) = ((v129 ^ 0x6DEF2869) - 2 * ((v129 ^ 0x6DEF2869) & 0x5D6C12BE ^ v129 & 2) - 580119876) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v133) ^ 6) - 0x1A5648518FD6D612);
  v136 = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v135 ^ 0x53u) - 0xEDD07C1744D3A60);
  LODWORD(v78) = *(STACK[0x280] + 4 * (BYTE2(v133) ^ 0xA2u) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v135) ^ 0x8A) - 0x1A5648518FD6D612) ^ 0xC560436F;
  LODWORD(v78) = (v78 - ((2 * v78) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v128) ^ 0x99u) - 0x7DF8D7ACE980A05CLL);
  v137 = *(STACK[0x280] + 4 * (BYTE2(v135) ^ 0x55u) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * (BYTE3(v74) ^ 0xA) - 0x1A5648518FD6D612);
  v138 = (v137 - ((2 * v137) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v133) ^ 0x14u) - 0x7DF8D7ACE980A05CLL);
  v139 = (v78 - ((2 * v78) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v74 ^ 0x11u) - 0xEDD07C1744D3A60);
  v140 = (v138 - ((2 * v138) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v128 ^ 0x9Fu) - 0xEDD07C1744D3A60);
  v141 = *(STACK[0x2C8] + 4 * (HIBYTE(v128) ^ 0x97) - 0x1A5648518FD6D612) ^ *(STACK[0x280] + 4 * (BYTE2(v74) ^ 0x80u) - 0xF59520D87DE52B3) ^ 0xC560436F;
  v142 = (v141 - ((2 * v141) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v135) ^ 0xBFu) - 0x7DF8D7ACE980A05CLL);
  v143 = (v142 - ((2 * v142) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v133 ^ 0x58u) - 0xEDD07C1744D3A60);
  LODWORD(v71) = *(STACK[0x280] + 4 * (BYTE2(v143) ^ 0x7Du) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * (HIBYTE(v136) ^ 0x24) - 0x1A5648518FD6D612);
  v144 = *(STACK[0x280] + 4 * (BYTE2(v136) ^ 0xB6u) - 0xF59520D87DE52B3) ^ *(STACK[0x2C8] + 4 * (HIBYTE(v139) ^ 0xC5) - 0x1A5648518FD6D612) ^ 0xC560436F;
  LODWORD(v71) = (v71 - ((2 * v71) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v140) ^ 4u) - 0x7DF8D7ACE980A05CLL);
  v145 = (v71 - ((2 * v71) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (((v78 - ((2 * v78) & 0xC2) - 31) ^ *(STACK[0x298] + 4 * (v74 ^ 0x11u) - 0xEDD07C1744D3A60)) ^ 0x9Eu) - 0xEDD07C1744D3A60);
  LODWORD(v71) = (v144 - ((2 * v144) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v143) ^ 0x11u) - 0x7DF8D7ACE980A05CLL);
  v146 = (v71 - ((2 * v71) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v140 ^ 0x70u) - 0xEDD07C1744D3A60);
  LODWORD(v71) = *(STACK[0x2C8] + 4 * (HIBYTE(v140) ^ 0x32) - 0x1A5648518FD6D612) ^ *(STACK[0x280] + 4 * (BYTE2(v139) ^ 0x56u) - 0xF59520D87DE52B3) ^ 0xC560436F;
  LODWORD(v71) = (v71 - ((2 * v71) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v136) ^ 0x7Du) - 0x7DF8D7ACE980A05CLL);
  v147 = HIBYTE(v143) ^ 0xA;
  v148 = (v71 - ((2 * v71) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v143 ^ 0xD1u) - 0xEDD07C1744D3A60);
  v149 = *(STACK[0x280] + 4 * (BYTE2(v140) ^ 3u) - 0xF59520D87DE52B3) ^ 0xC560436F ^ *(STACK[0x2C8] + 4 * v147 - 0x1A5648518FD6D612);
  v150 = (v149 - ((2 * v149) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v139) ^ 0xC0u) - 0x7DF8D7ACE980A05CLL);
  v151 = (v150 - ((2 * v150) & 0xCA11F1C2) - 452396831) ^ *(STACK[0x298] + 4 * (v136 ^ 0xBAu) - 0xEDD07C1744D3A60);
  STACK[0x248] = a58 + 4 * (BYTE1(v146) ^ 0xD2u);
  v152 = *(v88 + 4 * (HIBYTE(v145) ^ 3) - 0x1A5648518FD6D612) ^ *(v89 + 4 * (BYTE2(v151) ^ 0x52u) - 0xF59520D87DE52B3) ^ 0xC560436F;
  v153 = (v152 - ((2 * v152) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v148) ^ 0x8Fu) - 0x7DF8D7ACE980A05CLL);
  v154 = (v153 - ((2 * v153) & 0xCA11F1C2) - 452396831) ^ *(v93 + 4 * (v146 ^ 0xA0u) - 0xEDD07C1744D3A60);
  v155 = HIBYTE(v146) ^ 0x53;
  v156 = *(v88 + 4 * (HIBYTE(v148) ^ 0x2D) - 0x1A5648518FD6D612) ^ 0xC560436F ^ *(v89 + 4 * (BYTE2(v146) ^ 0x98u) - 0xF59520D87DE52B3);
  v157 = (v156 - ((2 * v156) & 0xEBC6F374) + 1977842106) ^ *(a58 + 4 * (BYTE1(v145) ^ 0xABu) - 0x7DF8D7ACE980A05CLL);
  v158 = (v157 - ((2 * v157) & 0xCA11F1C2) - 452396831) ^ *(v93 + 4 * (v151 ^ 0xCu) - 0xEDD07C1744D3A60);
  v159 = STACK[0x240];
  v160 = STACK[0x2E0];
  LODWORD(v71) = *(STACK[0x2E0] + 4 * (BYTE1(v158) ^ 0xF0u)) ^ *(STACK[0x240] + 4 * (HIBYTE(v154) ^ 0x2A));
  v161 = (v71 ^ 0x1AE9C5B3) - 2 * ((v71 ^ 0x1AE9C5B3) & 0x40C745EB ^ v71 & 8);
  v162 = *(v89 + 4 * (BYTE2(v145) ^ 0xC6u) - 0xF59520D87DE52B3) ^ *(v88 + 4 * v155 - 0x1A5648518FD6D612);
  v163 = (v162 & 0x8000000 | ((((v162 & 0x8000000u) >> 27) & 1) << 28)) ^ 0xAD7FEDDC;
  v164 = v163 + 2145662588;
  v165 = v163 + 1384124964;
  v166 = -622587340 - v163;
  v167 = *(a58 + 4 * (BYTE1(v151) ^ 0xD3u) - 0x7DF8D7ACE980A05CLL) ^ 0x75E379BA;
  if ((v165 & v167) == 0)
  {
    v166 = v164;
  }

  v168 = ((v162 & 0xF7FFFFFF ^ 0xC560436F ^ (v167 - 761537624 + v166)) - ((2 * (v162 & 0xF7FFFFFF ^ 0xC560436F ^ (v167 - 761537624 + v166))) & 0xCA11F1C2) - 452396831) ^ *(v93 + 4 * (v148 ^ 0x95u) - 0xEDD07C1744D3A60);
  v169 = *(v159 + 4 * (HIBYTE(v168) ^ 0x13)) ^ *(STACK[0x230] + 4 * (BYTE2(v154) ^ 0x4Bu));
  v170 = *(STACK[0x230] + 4 * (BYTE2(v168) ^ 0xE8u)) ^ *(v159 + 4 * (HIBYTE(v158) ^ 0xAC));
  v171 = *(v89 + 4 * (BYTE2(v148) ^ 0xD0u) - 0xF59520D87DE52B3) ^ *(v88 + 4 * (HIBYTE(v151) ^ 0x2A) - 0x1A5648518FD6D612) ^ 0xC560436F;
  v172 = (v171 - ((2 * v171) & 0xEBC6F374) + 1977842106) ^ *(STACK[0x248] - 0x7DF8D7ACE980A05CLL);
  v173 = (v172 - ((2 * v172) & 0xCA11F1C2) - 452396831) ^ *(v93 + 4 * (v145 ^ 0x7Cu) - 0xEDD07C1744D3A60);
  v174 = (v161 + 1086801379) ^ *(STACK[0x230] + 4 * (BYTE2(v173) ^ 0xFu));
  v175 = (v174 + 1334207097 - ((2 * v174) & 0x9F0CC4F2)) ^ *(STACK[0x218] + 4 * (v168 ^ 0x2Fu));
  v176 = ((v169 ^ 0xAB04FD23) - 2 * ((v169 ^ 0xAB04FD23) & 0x712A7D77 ^ v169 & 4) - 248873613) ^ *(v160 + 4 * (BYTE1(v173) ^ 0x15u));
  v177 = ((v170 ^ 0xAB04FD23) - 2 * ((v170 ^ 0xAB04FD23) & 0x712A7D7F ^ v170 & 0xC) - 248873613) ^ *(v160 + 4 * (BYTE1(v154) ^ 0xB5u));
  v178 = HIBYTE(v173) ^ 0x64;
  v179 = (v177 + 1334207097 + (~(2 * v177) | 0x60F33B0D) + 1) ^ *(STACK[0x218] + 4 * (v173 ^ 0xD3u));
  v180 = *(STACK[0x230] + 4 * (BYTE2(v158) ^ 0xBu)) ^ *(v159 + 4 * v178) ^ 0xAB04FD23;
  v181 = *(v160 + 4 * (BYTE1(v168) ^ 0x6Bu)) ^ *(STACK[0x218] + 4 * (v154 ^ 0x4Bu)) ^ (v180 - ((2 * v180) & 0xE254FAE6) - 248873613);
  v182 = (v176 + 1334207097 - ((2 * v176) & 0x9F0CC4F2)) ^ *(STACK[0x218] + 4 * (v158 ^ 0xD4u)) ^ (v175 - ((2 * v175) & 0xEE6E20DA) + 2000097389) ^ v181;
  v183 = v182 ^ 0xF46A21E7 ^ (v179 - ((2 * v179) & 0x99B6A7E6) - 858041357);
  v184 = STACK[0x2B8];
  v185 = *(&off_1002DD400 + (LODWORD(STACK[0x2B8]) ^ 0x529)) - 314790943;
  v186 = v183 ^ v175;
  v187 = *&v185[4 * (((v182 ^ 0x38B17214) >> 16) ^ 0x87)];
  v188 = STACK[0x26C];
  v189 = BYTE2(LODWORD(STACK[0x26C]));
  v190 = *&v185[4 * (v189 ^ 0xBC)];
  v191 = *&v185[4 * (BYTE2(v181) ^ 0x97)];
  v192 = v183 ^ v181;
  v193 = *&v185[4 * (v189 ^ 0xC4)];
  v194 = v183 ^ v181 ^ 0x138EB9F3;
  v195 = *&v185[4 * (BYTE2(v194) ^ 0x8B)];
  v196 = *&v185[4 * (v189 ^ 0xD5)];
  v197 = *&v185[4 * (BYTE2(v186) ^ 0x72)];
  LODWORD(v185) = *&v185[4 * (v189 ^ 0xD0)];
  v198 = 546316463 * v190 + 1890597002;
  v199 = 546316463 * v191 + 1890597002;
  v200 = 546316463 * v193 + 1890597002;
  v201 = 546316463 * v195 + 1890597002;
  LODWORD(STACK[0x228]) = 546316463 * v196 + 1890597002;
  LODWORD(STACK[0x22C]) = 546316463 * v197 + 1890597002;
  LODWORD(STACK[0x238]) = 546316463 * v185 + 1890597002;
  LODWORD(STACK[0x2D8]) |= 0x2400u;
  v202 = v184;
  v203 = *(&off_1002DD400 + (v184 ^ 0x5D2)) - 1771312322;
  v204 = *&v203[4 * ((v182 ^ 0xF19A2F65) >> 24)];
  v205 = (546316463 * v187 + 1890597002) ^ (((4 * v204) ^ 0x53491BF4) * (v204 ^ 0x14D246FD));
  v206 = v205 - ((2 * v205) & 0xB4BD1892) - 631337911;
  v207 = *(&off_1002DD400 + v202 - 1126) - 537314554;
  v208 = (((v182 ^ 0x2F65) >> 8) - (((v182 ^ 0xF19A2F65) >> 7) & 0xA2) + 81);
  v209 = *(&off_1002DD400 + v202 - 1621) - 155485195;
  v210 = v204 ^ *&v207[4 * (v208 ^ 0xD8)] ^ ((v208 ^ 0xD3) + (v208 ^ 0x6BFA1F7F) + 2140184439 - ((2 * ((v208 ^ 0xD3) + (v208 ^ 0x6BFA1F7F))) & 0xD7203EEE)) ^ 0xE8CCAB4 ^ v206;
  v211 = v188;
  v212 = *&v203[4 * (HIBYTE(v188) ^ 0xC6)];
  v213 = v198 ^ (((4 * v212) ^ 0x53491BF4) * (v212 ^ 0x14D246FD)) ^ ((v182 ^ 0xAB) - (v182 ^ 0xE6) - ((2 * ((v182 ^ 0xAB) - (v182 ^ 0xE6))) & 0x33) + 25) ^ v209[v182 ^ 0xE0] ^ v210 & a60 ^ (v210 | a60);
  v214 = (v213 - 396783099 - ((2 * v213) & 0xD0B3240A)) ^ a57;
  v215 = (BYTE1(v188) ^ 0x6BFA1F2F) + (BYTE1(v188) ^ 0x83);
  v216 = v188;
  v217 = ((v188 ^ 0x40) - (v188 ^ 0xD) - ((2 * ((v188 ^ 0x40) - (v188 ^ 0xD))) & 0x33) + 25) ^ v209[v188 ^ 0xBLL] ^ v212 ^ (v215 + 2140184439 - ((2 * v215) & 0xD7203EEE)) ^ *&v207[4 * (BYTE1(v188) ^ 0x88)] ^ (v214 - ((2 * v214) & 0x6A6E6A90) + 892810568);
  v218 = *&v203[4 * ((v181 ^ 0xDB3B2100) >> 24)];
  v219 = (((v181 ^ 0x2100) >> 8) - (((v181 ^ 0xDB3B2100) >> 7) & 0x9A) - 51);
  v220 = v209[v181 ^ 0x85] ^ ((v181 ^ 0xCE) - (v181 ^ 0x83) - ((2 * ((v181 ^ 0xCE) - (v181 ^ 0x83))) & 0x33) + 25);
  v221 = *&v203[4 * (HIBYTE(v188) ^ 0xD2)];
  v222 = ((v219 ^ 0x6BFA1FE3) + (v219 ^ 0x4F) + 2140184439 - ((2 * ((v219 ^ 0x6BFA1FE3) + (v219 ^ 0x4F))) & 0xD7203EEE)) ^ LODWORD(STACK[0x2A0]) ^ *&v207[4 * (v219 ^ 0x44)] ^ (((4 * v218) ^ 0x53491BF4) * (v218 ^ 0x14D246FD)) ^ v199 ^ v221 ^ v200 ^ (v220 + 141217231 - ((2 * v220) & 0xFFFFFF9F)) ^ (4 * (v221 ^ 0x14D246FD) * (v221 ^ 0x14D246FD) - ((8 * (v221 ^ 0x14D246FD) * (v221 ^ 0x14D246FD)) & 0xBFD1A598) + 1609093836);
  v223 = v218 ^ 0xF6274F64 ^ ((v222 ^ 0x8B3A9431) - 2 * ((v222 ^ 0x8B3A9431) & 0x22F5099F ^ v222 & 6) + 586484121);
  v224 = *&v207[4 * (BYTE1(v188) ^ 0x9D)];
  v225 = v217 ^ 0x28;
  LODWORD(STACK[0x224]) = v217 ^ 0x28;
  v226 = STACK[0x2B0];
  v227 = ((v211 ^ 0xE7) - (v211 ^ 0xAA) - ((2 * ((v211 ^ 0xE7) - (v211 ^ 0xAA))) & 0x33) + 25) ^ v209[v188 ^ 0xACLL] ^ LODWORD(STACK[0x2B0]) ^ ((BYTE1(v188) ^ 0x6BFA1F3A) + (BYTE1(v188) ^ 0x96) + 2140184439 - ((2 * ((BYTE1(v188) ^ 0x6BFA1F3A) + (BYTE1(v188) ^ 0x96))) & 0xD7203EEE)) ^ v224 ^ 0x182A11B8 ^ (v223 - 653830550 - ((2 * v223) & 0xB20EACD4));
  LODWORD(STACK[0x248]) = v227;
  v228 = BYTE1(v217) ^ 0x83;
  v229 = HIBYTE(v217) ^ 0x68;
  v230 = STACK[0x2A8];
  v231 = *(a52 + 4 * (BYTE2(v217) ^ 0x69u) - 0x697BD328616FF01ELL) ^ 0xC917DDD8 ^ *(STACK[0x2A8] + 4 * (v217 ^ 0x74u) - 0x2EB268602F54D14FLL);
  v232 = STACK[0x288];
  v233 = (v231 - ((2 * v231) & 0x7ECB047A) - 1083866563) ^ *(STACK[0x288] + 4 * v229 - 0x6C194EDE9C7D5590);
  v234 = STACK[0x290];
  v235 = (v233 - ((2 * v233) & 0x4F10CB52) - 1484233303) ^ *(STACK[0x290] + 4 * v228 - 0x4A37C95B43735327) ^ v227;
  v236 = *&v203[4 * ((v192 ^ 0xF9A9D3A7) >> 24)];
  v237 = (((4 * v236) ^ 0x53491BF4) * (v236 ^ 0x14D246FD)) ^ v201;
  v238 = (((v192 ^ 0xD3A7) >> 8) - ((v192 >> 7) & 0x48) - 92);
  v239 = ((v238 ^ 0x26) + (v238 ^ 0x6BFA1F8A) + 2140184439 - ((2 * ((v238 ^ 0x26) + (v238 ^ 0x6BFA1F8A))) & 0xD7203EEE)) ^ v211 ^ v236 ^ *&v207[4 * (v238 ^ 0x2D)] ^ v209[v194 ^ 0xD1] ^ ((v192 ^ 0x69) - (v192 ^ 0x24) - ((2 * ((v192 ^ 0x69) - (v192 ^ 0x24))) & 0x33) + 25) ^ (v237 - ((2 * v237) & 0x6EF826FA) + 930878333);
  v240 = v239 ^ 0x32C3CE0D;
  v239 ^= 0x32C3CE25u;
  v241 = (v239 - v240) ^ 0xFFFFFFF0;
  v242 = *&v203[4 * ((v211 ^ 0x52798E36) >> 24)];
  v243 = (((v211 ^ 0x8E36) >> 8) - (((v211 ^ 0x52798E36) >> 7) & 0x98) - 52);
  v244 = ((v211 ^ 0xF8) - (v211 ^ 0xB5) + (~(2 * ((v211 ^ 0xF8) - (v211 ^ 0xB5))) | 0xCD) + 26) ^ v209[v216 ^ 0xB3] ^ *&v207[4 * (v243 ^ 0x45)] ^ ((v243 ^ 0x6BFA1FE2) + (v243 ^ 0x4E) + 2140184439 - ((2 * ((v243 ^ 0x6BFA1FE2) + (v243 ^ 0x4E))) & 0xD7203EEE)) ^ LODWORD(STACK[0x228]) ^ (((4 * v242) ^ 0x53491BF4) * (v242 ^ 0x14D246FD)) ^ 0x28 ^ (v241 + v239);
  v245 = (v244 - ((2 * v244) & 0x4C12ECEE) - 1509329289) ^ v242;
  LODWORD(STACK[0x200]) = v245;
  v246 = (v235 - 1804604873 + (~(2 * v235) | 0xD7202B93)) ^ v245 ^ 0x58D5258F;
  v247 = *&v203[4 * ((v186 ^ 0xA3DEC58D) >> 24)];
  v248 = (((v186 ^ 0xC58D) >> 8) - (((v186 ^ 0xA3DEC58D) >> 7) & 0xD8) + 108);
  LODWORD(v203) = *&v203[4 * ((v211 ^ 0x927CB2E5) >> 24)];
  v249 = (((v211 ^ 0xB2E5) >> 8) - (((v211 ^ 0x927CB2E5) >> 7) & 0xD4) + 106);
  LODWORD(v207) = ((v211 ^ 0x2B) - (v211 ^ 0x66) - ((2 * ((v211 ^ 0x2B) - (v211 ^ 0x66))) & 0x33) + 25) ^ v209[v216 ^ 0x60] ^ 0xA43DFF4 ^ ((v249 ^ 0x6BFA1F44) + (v249 ^ 0xE8) + 2140184439 - ((2 * ((v249 ^ 0x6BFA1F44) + (v249 ^ 0xE8))) & 0xD7203EEE)) ^ *&v207[4 * (v248 ^ 0xE5)] ^ ((v248 ^ 0x6BFA1F42) + (v248 ^ 0xEE) + 2140184439 + ((2 * ((v248 ^ 0x6BFA1F42) + (v248 ^ 0xEE))) & 0x3EEE ^ 0x28DFFFFF) + 1) ^ LODWORD(STACK[0x22C]) ^ (((4 * v247) ^ 0x53491BF4) * (v247 ^ 0x14D246FD)) ^ v203 ^ v209[v186 ^ 8] ^ ((v186 ^ 0x43) - (v186 ^ 0xE) - ((2 * ((v186 ^ 0x43) - (v186 ^ 0xE))) & 0x33) + 25) ^ *&v207[4 * (v249 ^ 0xE3)] ^ LODWORD(STACK[0x238]) ^ (4 * (v203 ^ 0x14D246FD) * (v203 ^ 0x14D246FD) - ((8 * (v203 ^ 0x14D246FD) * (v203 ^ 0x14D246FD)) & 0xBD233240) - 560883423);
  v250 = v247 ^ 0xA9CE73C1 ^ (v207 - ((2 * v207) & 0xFA386A78) + 2099000636);
  v251 = (v250 + 141217231 - ((2 * v250) & 0x10D59B9E)) ^ LODWORD(STACK[0x2A0]);
  v252 = v226 ^ 0x66D7BF99 ^ (v251 - 653830550 - ((2 * v251) & 0xB20EACD4));
  LODWORD(STACK[0x238]) = v252;
  v253 = (v246 - ((2 * v246) & 0x2162E9C0) + 280065248) ^ HIDWORD(a63);
  v254 = v235 + 1768847616 - ((2 * v235) & 0xD2DCF200);
  v255 = v252 ^ v246;
  v256 = a63;
  v257 = (a63 ^ 0xD8422EFF ^ v252 ^ v246) + 1768847616 - ((2 * (a63 ^ 0xD8422EFF ^ v252 ^ v246)) & 0xD2DCF200);
  v258 = HIDWORD(a62);
  v259 = ((v225 ^ HIDWORD(a63) ^ 0x78D8F7BC) - 2 * ((v225 ^ HIDWORD(a63) ^ 0x78D8F7BC) & 0x30692F6B ^ (v225 ^ HIDWORD(a63)) & 1) - 1335283862) ^ HIDWORD(a62) ^ v255;
  LODWORD(v207) = *(v234 + 4 * (BYTE1(v259) ^ 0x6Du) - 0x4A37C95B43735327) ^ *(a52 + 4 * (BYTE2(v259) ^ 0x99u) - 0x697BD328616FF01ELL);
  LODWORD(v216) = v259;
  LODWORD(v207) = ((v207 ^ 0xFD7963A8) - 2 * ((v207 ^ 0xFD7963A8) & 0x13E6DBDF ^ v207 & 6) - 1813586983) ^ *(v230 + 4 * ((((v225 ^ BYTE4(a63) ^ 0xBC) - 2 * ((v225 ^ BYTE4(a63) ^ 0xBC) & 0x6B ^ (v225 ^ BYTE4(a63)) & 1) + 106) ^ BYTE4(a62) ^ v255) ^ 0x9Du) - 0x2EB268602F54D14FLL);
  LODWORD(v185) = ((v254 ^ a59) + 417052975 - ((2 * (v254 ^ a59)) & 0x31B7725E)) ^ a63;
  LODWORD(STACK[0x26C]) = v185;
  v516 = v259;
  LODWORD(v207) = *(v232 + 4 * (HIBYTE(v259) ^ 0x72) - 0x6C194EDE9C7D5590) ^ v185 ^ 0xE3B895FD ^ (v207 - ((2 * v207) & 0x7ECB047A) - 1083866563);
  v260 = v257 ^ a59;
  LODWORD(STACK[0x22C]) = v260;
  v522 = (v253 - 1335283862 + (~(2 * v253) | 0x9F2DA12B) + 1) ^ HIDWORD(a62);
  v261 = v207 ^ v522;
  v262 = v207 ^ v522 ^ (v260 - ((2 * v260) & 0xE4967BD4) + 1917533674) ^ 0x91F3A8C9;
  v263 = v207 + 417052975 - ((2 * v207) & 0x31B7725E);
  v264 = (v262 - ((2 * v262) & 0x60D25ED4) - 1335283862) ^ HIDWORD(a62);
  LODWORD(v203) = (((v264 - ((2 * v264) & 0x934D8D38) - 911817060) ^ v216 ^ 0xBB3FAB01) - 2 * (((v264 - ((2 * v264) & 0x934D8D38) - 911817060) ^ v216 ^ 0xBB3FAB01) & 0x10B174E4 ^ ((v264 - ((2 * v264) & 0x934D8D38) - 911817060) ^ v216) & 4) + 280065248) ^ HIDWORD(a63);
  LODWORD(v207) = *(a52 + 4 * BYTE2(v203) - 0x697BD328616FF01ELL) ^ 0xFD7963A8 ^ *(v234 + 4 * (BYTE1(v203) ^ 0xFAu) - 0x4A37C95B43735327);
  v265 = v230;
  LODWORD(v207) = (v207 - ((2 * v207) & 0x27CDB7B2) - 1813586983) ^ *(v230 + 4 * (((((v264 - ((2 * v264) & 0x38) - 100) ^ v216 ^ 1) - 2 * (((v264 - ((2 * v264) & 0x38) - 100) ^ v216 ^ 1) & 0xE4 ^ ((v264 - ((2 * v264) & 0x38) - 100) ^ v216) & 4) - 32) ^ BYTE4(a63)) ^ 0x93u) - 0x2EB268602F54D14FLL);
  v520 = ((v263 ^ v256) + 1768847616 - ((2 * (v263 ^ v256)) & 0xD2DCF200)) ^ a59;
  v512 = v203;
  v266 = v232;
  v267 = *(v232 + 4 * ((v203 >> 24) ^ 0x77) - 0x6C194EDE9C7D5590) ^ v520 ^ 0x8CC22AFE ^ (v207 - ((2 * v207) & 0x7ECB047A) - 1083866563);
  v514 = v261 ^ v255 ^ 0xAFE3280D;
  v524 = ((HIDWORD(a63) ^ 0xF309E1C3 ^ v261) - ((2 * (HIDWORD(a63) ^ 0xF309E1C3 ^ v261)) & 0x60D25ED4) - 1335283862) ^ HIDWORD(a62);
  v268 = v524 ^ 0xC50000DE ^ v267;
  v269 = v268 - ((2 * v268) & 0x60D25ED4);
  v270 = v268 ^ v514;
  v271 = v270 ^ ((v258 ^ 0xC769D5F9 ^ v203) - ((2 * (v258 ^ 0xC769D5F9 ^ v203)) & 0xA1635CAE) - 793661865) ^ 0x9BB1AE57;
  v272 = (v267 + 417052975 - ((2 * v267) & 0x31B7725E)) ^ a63;
  LODWORD(v185) = ((v269 - 1335283862) ^ v258) - ((2 * ((v269 - 1335283862) ^ v258)) & 0x2162E9C0);
  v273 = (v271 - ((2 * v271) & 0x2162E9C0) + 280065248) ^ HIDWORD(a63);
  v274 = *(v234 + 4 * (BYTE1(v273) ^ 0xD0u) - 0x4A37C95B43735327) ^ *(a52 + 4 * (BYTE2(v273) ^ 0xC2u) - 0x697BD328616FF01ELL);
  v275 = ((v274 ^ 0xFD7963A8) - 2 * ((v274 ^ 0xFD7963A8) & 0x3F65823F ^ v274 & 2) - 1083866563) ^ *(v232 + 4 * (HIBYTE(v273) ^ 0x2A) - 0x6C194EDE9C7D5590);
  v494 = v273;
  v276 = *(v265 + 4 * (v273 ^ 0x6Du) - 0x2EB268602F54D14FLL);
  v277 = (v272 + 1768847616 - ((2 * v272) & 0xD2DCF200)) ^ a59;
  LODWORD(STACK[0x228]) = v277;
  v278 = (v275 - ((2 * v275) & 0x27CDB7B2) - 1813586983) ^ v276 ^ v277;
  v499 = ((v256 ^ 0x53DBB92F ^ v270) + 1768847616 - ((2 * (v256 ^ 0x53DBB92F ^ v270)) & 0xD2DCF200)) ^ a59;
  v509 = (v185 + 280065248) ^ HIDWORD(a63);
  v279 = v278 ^ v509 ^ (v499 - ((2 * v499) & 0x487137C6) + 607689699) ^ 0x24389BE3;
  v280 = (v279 - ((2 * v279) & 0x2162E9C0) + 280065248) ^ HIDWORD(a63);
  LODWORD(a64) = v278 ^ v509 ^ v270;
  v281 = (v280 - ((2 * v280) & 0x60D25ED4) - 1335283862) ^ HIDWORD(a62);
  v282 = v273 ^ (v281 - ((2 * v281) & 0x663195A6) - 1290220845);
  v283 = *(v234 + 4 * (BYTE1(v282) ^ 0xCAu) - 0x4A37C95B43735327) ^ *(v265 + 4 * (v282 ^ 0xD3u) - 0x2EB268602F54D14FLL) ^ 0x346EBE70;
  v284 = (v283 + 1525745154 + (~(2 * v283) | 0x4A1DF3FD)) ^ *(a52 + 4 * (BYTE2(v282) ^ 0x18u) - 0x697BD328616FF01ELL);
  LODWORD(a58) = v282;
  v285 = (v284 - ((2 * v284) & 0x7ECB047A) - 1083866563) ^ *(v232 + 4 * (HIBYTE(v282) ^ 0xDF) - 0x6C194EDE9C7D5590);
  v501 = ((v258 ^ 0xB0692F6A ^ v278 ^ v509) - ((2 * (v258 ^ 0xB0692F6A ^ v278 ^ v509)) & 0x2162E9C0) + 280065248) ^ HIDWORD(a63);
  v507 = ((v256 ^ 0x18DBB92F ^ v278) + 1768847616 - ((2 * (v256 ^ 0x18DBB92F ^ v278)) & 0xD2DCF200)) ^ a59;
  v286 = v507 ^ v501 ^ v285;
  LODWORD(v185) = v286 ^ 0x6A000000 ^ a64;
  v287 = v185 ^ 0x4B000000;
  v288 = HIDWORD(a63) ^ 0x2AC2D06D ^ ((v185 ^ 0x4B000000) - ((2 * v185) & 0x2162E9C0) + 280065248);
  v289 = (v286 ^ 0x6A000000) - ((2 * v286) & 0x2162E9C0);
  v290 = -856916950 - (WORD2(a62) & 0x4000 | 0x66763E15);
  if ((v288 & WORD2(a62) & 0x4000) == 0)
  {
    v290 = WORD2(a62) & 0x4000 | 0x66763E15;
  }

  v479 = v278 ^ (v285 - ((2 * v285) & 0xB779E3EC) + 1539109366);
  v291 = ((v289 + 280065248) ^ HIDWORD(a63)) - ((2 * ((v289 + 280065248) ^ HIDWORD(a63))) & 0x60D25ED4);
  v292 = (v288 - 1719025173 + v290) ^ HIDWORD(a62) & 0xFFFFBFFF ^ v282;
  v293 = (v287 + 1768847616 - ((2 * v287) & 0xD2DCF200)) ^ a59;
  v294 = *(v234 + 4 * (BYTE1(v292) ^ 0xE5u) - 0x4A37C95B43735327) ^ *(a52 + 4 * (BYTE2(v292) ^ 0x71u) - 0x697BD328616FF01ELL);
  v295 = ((v294 ^ 0xFD7963A8) - 2 * ((v294 ^ 0xFD7963A8) & 0x13E6DBDB ^ v294 & 2) - 1813586983) ^ *(v265 + 4 * (((v288 - 21 + v290) ^ BYTE4(a62) ^ v282) ^ 0xB9u) - 0x2EB268602F54D14FLL);
  v296 = (v295 - ((2 * v295) & 0x7ECB047A) - 1083866563) ^ *(v232 + 4 * ((v292 ^ 0x371E5B9) >> 24) - 0x6C194EDE9C7D5590) ^ v479;
  v518 = (v293 + 417052975 - ((2 * v293) & 0x31B7725E)) ^ a63;
  v297 = v296 ^ 0x8FD3C5D3;
  v503 = (v291 - 1335283862) ^ HIDWORD(a62);
  v298 = (v503 - ((2 * v503) & 0xA8DE684A) - 730909659) ^ v296 ^ 0x8FD3C5D3;
  v299 = v298 ^ 0x6000000 ^ v518 ^ 0x9A000000;
  v300 = v292 ^ 0x371E5B9 ^ HIDWORD(a63) ^ (v299 - ((2 * v299) & 0x2162E9C0) + 280065248);
  v301 = (v299 + 417052975 - ((2 * v299) & 0x31B7725E)) ^ a63;
  v302 = ((v298 ^ 0x6000000) - ((2 * v298) & 0x2162E9C0) + 280065248) ^ HIDWORD(a63);
  v303 = (a63 ^ 0x436748D9 ^ v296) + 1768847616 - ((2 * (a63 ^ 0x436748D9 ^ v296)) & 0xD2DCF200);
  v304 = v300 - ((2 * v300) & 0x60D25ED4) - 1335283862;
  v305 = v304 ^ HIDWORD(a62);
  v306 = *(v234 + 4 * (BYTE1(v305) ^ 0xD0u) - 0x4A37C95B43735327) ^ *(a52 + 4 * (BYTE2(v305) ^ 0xC2u) - 0x697BD328616FF01ELL);
  v307 = v265;
  v308 = ((v306 ^ 0xFD7963A8) - 2 * ((v306 ^ 0xFD7963A8) & 0x13E6DBDF ^ v306 & 6) - 1813586983) ^ *(v265 + 4 * (((v300 - ((2 * v300) & 0xD4) + 106) ^ BYTE4(a62)) ^ 0x6Du) - 0x2EB268602F54D14FLL);
  v309 = (v308 - ((2 * v308) & 0x7ECB047A) - 1083866563) ^ *(v266 + 4 * (((v304 ^ HIDWORD(a62)) >> 24) ^ 0x18) - 0x6C194EDE9C7D5590);
  v489 = (v301 + 1768847616 - ((2 * v301) & 0xD2DCF200)) ^ a59;
  v310 = v302 - ((2 * v302) & 0x60D25ED4) - 1335283862;
  v492 = v303 ^ a59;
  v506 = v310 ^ HIDWORD(a62);
  v311 = (v489 ^ 0xB0C2D06D) + (v492 ^ v309 ^ v310 ^ HIDWORD(a62) ^ 0x6000000) - 2 * ((v489 ^ 0xB0C2D06D) & (v492 ^ v309 ^ v310 ^ HIDWORD(a62) ^ 0x6000000));
  v312 = (v311 - ((2 * v311) & 0x2162E9C0) + 280065248) ^ HIDWORD(a63);
  v313 = v312 - ((2 * v312) & 0x60D25ED4);
  v314 = v492 ^ v309 ^ v310 ^ 0xB6692F6A;
  v315 = (v313 - 1335283862) ^ v304;
  LODWORD(a54) = (v309 - ((2 * v309) & 0xA8DE684A) - 730909659) ^ v297;
  v316 = (v311 + 417052975 - ((2 * v311) & 0x31B7725E)) ^ a63;
  v317 = *(v234 + 4 * ((((v313 + 12138) ^ (v300 - ((2 * v300) & 0x5ED4) + 12138)) >> 8) ^ 0xD0u) - 0x4A37C95B43735327) ^ *(a52 + 4 * (BYTE2(v315) ^ 0xC2u) - 0x697BD328616FF01ELL);
  v318 = ((v317 ^ 0xFD7963A8) - 2 * ((v317 ^ 0xFD7963A8) & 0x13E6DBDF ^ v317 & 6) - 1813586983) ^ *(v265 + 4 * (((v313 + 106) ^ (v300 - ((2 * v300) & 0xD4) + 106)) ^ 0x6Du) - 0x2EB268602F54D14FLL);
  v319 = (v318 - ((2 * v318) & 0x7ECB047A) - 1083866563) ^ *(v266 + 4 * (HIBYTE(v315) ^ 0x33) - 0x6C194EDE9C7D5590) ^ a54;
  LODWORD(a51) = (v314 - ((2 * v314) & 0x2162E9C0) + 280065248) ^ HIDWORD(a63);
  v320 = (a51 ^ v319 ^ 0x8C000000) - ((2 * (a51 ^ v319)) & 0x2162E9C0);
  LODWORD(a53) = (v316 + 1768847616 - ((2 * v316) & 0xD2DCF200)) ^ a59;
  v321 = a53 ^ a51 ^ v319 ^ 0x24000000;
  v322 = (v321 + 417052975 - ((2 * (a53 ^ a51 ^ v319)) & 0x31B7725E)) ^ a63;
  v323 = v322 + 1768847616 - ((2 * v322) & 0xD2DCF200);
  v324 = ((v320 + 280065248) ^ HIDWORD(a63)) - ((2 * ((v320 + 280065248) ^ HIDWORD(a63))) & 0x60D25ED4);
  v325 = HIDWORD(a62) ^ HIDWORD(a63) ^ v315 ^ v321;
  v326 = (v319 + 1768847616 - ((2 * v319) & 0xD2DCF200)) ^ a59;
  v327 = v326 + 417052975 - ((2 * v326) & 0x31B7725E);
  if ((v325 & 0x40) != 0)
  {
    v328 = 64;
  }

  else
  {
    v328 = -64;
  }

  v329 = *(a52 + 4 * (BYTE2(v325) ^ 0x1Au) - 0x697BD328616FF01ELL) ^ *(v234 + 4 * (BYTE1(v325) ^ 0x8Bu) - 0x4A37C95B43735327) ^ 0xFD7963A8;
  v330 = v266;
  v331 = (v329 - ((2 * v329) & 0x7ECB047A) - 1083866563) ^ *(v266 + 4 * (HIBYTE(v325) ^ 0x10) - 0x6C194EDE9C7D5590);
  v332 = v307;
  v333 = *(v307 + 4 * ((v328 + (v325 ^ 0xE7)) ^ 0x40u) - 0x2EB268602F54D14FLL);
  v334 = v327 ^ a63;
  v335 = (v331 - ((2 * v331) & 0x27CDB7B2) - 1813586983) ^ v333 ^ v327 ^ a63;
  v336 = (v324 - 1335283862) ^ HIDWORD(a62);
  v337 = v336 ^ v335 ^ 0x9000000;
  v338 = (v337 - ((2 * (v336 ^ v335)) & 0x60D25ED4) - 1335283862) ^ HIDWORD(a62);
  v339 = v338 - ((2 * v338) & 0x2162E9C0);
  v478 = v323 ^ a59;
  v340 = v323 ^ a59 ^ v337;
  v341 = v340 ^ 0xC2000000;
  v342 = ((v340 ^ 0xC2000000) + 417052975 - ((2 * v340) & 0x31B7725E)) ^ a63;
  v343 = (v335 + 1768847616 - ((2 * v335) & 0xD2DCF200)) ^ a59;
  v344 = v321 ^ v315 ^ v341;
  v345 = *(v234 + 4 * (BYTE1(v344) ^ 0xD0u) - 0x4A37C95B43735327) ^ *(a52 + 4 * (BYTE2(v344) ^ 0xC2u) - 0x697BD328616FF01ELL);
  v346 = v344;
  v347 = ((v345 ^ 0xFD7963A8) - 1813586983 - 2 * ((v345 ^ 0xFD7963A8) & 0x13E6DBDD ^ v345 & 4)) ^ *(v332 + 4 * (v344 ^ 0x6Du) - 0x2EB268602F54D14FLL);
  v348 = v346;
  v430 = v346;
  v349 = (v343 + 417052975 - ((2 * v343) & 0x31B7725E)) ^ a63;
  v350 = (v347 - ((2 * v347) & 0x7ECB047A) - 1083866563) ^ *(v330 + 4 * (HIBYTE(v346) ^ 0xE5) - 0x6C194EDE9C7D5590) ^ v349;
  v351 = a66 ^ 0x5CF8F36A ^ (v342 + 1768847616 - ((2 * v342) & 0xD2DCF200));
  v352 = ((2 * v292) & 0xAAC9FBDE ^ 0x20C0F846) + (v292 ^ 0xED8583CC);
  v353 = v352 - ((2 * v352 - 1052272844) & 0xDDCE0FEC) + 1334498192;
  LODWORD(STACK[0x2A0]) = v353;
  v475 = 2 * v352 - 1541530564;
  v467 = (v352 - (v475 & 0x54FDE3AA) + 2089680883) ^ 0x99BC21B8 ^ v315;
  LODWORD(v505) = LODWORD(STACK[0x26C]) ^ 0x9635DD64;
  v485 = v509 - ((2 * v509) & 0xDDCE0FEC) + 1860634614;
  v354 = ((2 * ((v353 ^ 0x6EE707F6) - v505)) & 0xB7F6ADDC) + (((v353 ^ 0x6EE707F6) - v505) ^ 0xDBFB56EE);
  v484 = v512 ^ 0xF725192 ^ (v354 - ((2 * (v354 - 1904271176)) & 0xF0E55602) + 116509625);
  v513 = v354 - ((2 * v354 - 873784724) & 0xE3C788B0) - 673623666;
  v355 = (v513 ^ 0x71E3C458) + (v492 ^ 0x55984ED0);
  v476 = v355 - ((2 * v355) & 0x6CEFC044) + 913825826;
  v510 = (v476 ^ 0x3677E022) - 2 * (((v476 ^ 0x3677E022) + 1497060496) & 0x73304199 ^ v355 & 1) - 865364440;
  v356 = v510 ^ LODWORD(STACK[0x200]);
  HIDWORD(v357) = v356 ^ 0xF8A8E21;
  LODWORD(v357) = v356 ^ 0xB0000000;
  v472 = (v492 ^ 0x55984ED0) - ((2 * (v492 ^ 0x55984ED0)) & 0x6CEFC044) + 913825826;
  v488 = (v357 >> 28) ^ 0xC81DE3C6;
  v358 = (v510 ^ 0x73304198) - (v305 ^ 0x14682341) - ((2 * ((v510 ^ 0x73304198) - (v305 ^ 0x14682341))) & 0xA09EC918) + 1347380364;
  LODWORD(STACK[0x200]) = v358;
  v493 = (v358 ^ 0x504F648C) - ((2 * (v358 ^ 0x504F648C) + 718703330) & 0x3548297A) - 804300242;
  v458 = (v305 ^ 0x14682341) - 2 * ((v305 ^ 0x14682341) & 0x504F649C ^ v305 & 0x10) + 1347380364;
  v359 = v350 ^ 0x9000000;
  v470 = v494 ^ 0x1B550207;
  v495 = (v350 ^ 0x9000000) - 2 * ((v350 ^ 0x9000000) & 0x1AA414BF ^ v350 & 2) - 1700522819;
  v360 = ((2 * ((v493 ^ 0x9AA414BD) - v470)) & 0x7FBBCFFE) + (((v493 ^ 0x9AA414BD) - v470) ^ 0xBFDDE7FF);
  v361 = v360 - ((2 * v360 + 1930694722) & 0xD9F65570) - 1501220135;
  LODWORD(STACK[0x26C]) = v361;
  v362 = v489 - ((2 * v489) & 0xD9F65570);
  v363 = (v339 + 280065248) ^ HIDWORD(a63);
  v490 = v363 ^ v359;
  v446 = v362 - 319083848;
  v482 = v351 ^ v363 ^ v359;
  v364 = ((2 * ((v361 ^ 0xECFB2AB8) + (v482 ^ 0x5A261950))) & 0xDDBBDFEE) + (((v361 ^ 0xECFB2AB8) + (v482 ^ 0x5A261950)) ^ 0x6EDDEFF7);
  v365 = v325 ^ 0xB82EC57E ^ (v364 - 2 * ((v364 + 981895404) & 0x28344E9B ^ v364 & 2) - 491071611);
  v463 = v364 - ((2 * v364 + 2118519352) & 0x87F0D902) + 52130205;
  v363 ^= 0xB02CD4AE;
  v461 = v499 - ((2 * v499) & 0x87F0D902) + 1140354177;
  v500 = (v463 ^ 0x43F86C81) - (v479 ^ 0xDB714A81) - ((2 * ((v463 ^ 0x43F86C81) - (v479 ^ 0xDB714A81))) & 0x4F0E4E18) - 1484314868;
  v443 = (v479 ^ 0xDB714A81) - ((2 * (v479 ^ 0xDB714A81)) & 0x4F0E4E18) - 1484314868;
  v497 = (v500 ^ 0xA787270C) + v363 - ((2 * ((v500 ^ 0xA787270C) + v363)) & 0xB65B99CA) + 1529728229;
  v366 = v363 - ((2 * v363) & 0xB65B99CA) + 1529728229;
  v465 = v522 ^ 0x517AC9FF;
  v523 = (v497 ^ 0x5B2DCCE5) - (v516 ^ 0xD1025C8C) - ((2 * ((v497 ^ 0x5B2DCCE5) - (v516 ^ 0xD1025C8C))) & 0x2B0A61D2) - 1786433303;
  v367 = ((2 * ((v523 ^ 0x958530E9) - v465)) & 0xEB6DAB7A) + (((v523 ^ 0x958530E9) - v465) ^ 0x75B6D5BD);
  v455 = (v516 ^ 0xD1025C8C) - 2 * ((v516 ^ 0xD1025C8C) & 0x158530F9 ^ v516 & 0x10) - 1786433303;
  v368 = ((v367 - ((2 * v367 - 1841693884) & 0x968FD6D2) + 342157579) ^ 0xCB47EB69) - (v336 ^ 0xE84A97F6);
  v480 = v368 - ((2 * v368) & 0xD44B3954) + 1780849834;
  v369 = (v336 ^ 0xE84A97F6) - ((2 * (v336 ^ 0xE84A97F6)) & 0xD44B3954) + 1780849834;
  v517 = (v480 ^ 0x6A259CAA) - (v520 ^ 0xDFA40680) - ((2 * ((v480 ^ 0x6A259CAA) - (v520 ^ 0xDFA40680))) & 0xAFFEC014) + 1476354058;
  v450 = (v520 ^ 0xDFA40680) - 2 * ((v520 ^ 0xDFA40680) & 0x57FF600F ^ v520 & 5) + 1476354058;
  v431 = (v517 ^ 0x57FF600A) - ((2 * (v517 ^ 0x57FF600A) - 364858552) & 0xE2CDD524) - 427342794;
  v433 = v514 - ((2 * v514) & 0xE2CDD524) - 244913518;
  v370 = ((2 * ((v431 ^ 0xF166EA92) + (v334 ^ 0x33C8D2FF))) & 0xEAFFB896) + (((v431 ^ 0xF166EA92) + (v334 ^ 0x33C8D2FF)) ^ 0xF57FDC4B);
  LODWORD(v332) = v370 - ((2 * v370 + 658753810) & 0x3C0C7CCA) + 296231662;
  v425 = v501 + 503725669 + (~(2 * v501) | 0xC3F38335);
  v349 ^= 0x43A1418u;
  v521 = (v332 ^ 0x1E063E65) - (v524 ^ 0x524B8286) - ((2 * ((v332 ^ 0x1E063E65) - (v524 ^ 0x524B8286))) & 0x5056F542) - 1473545567;
  v371 = ((2 * ((v521 ^ 0xA82B7AA1) - v349)) & 0x96CD67EE) + (((v521 ^ 0xA82B7AA1) - v349) ^ 0x4B66B3F7);
  v423 = 2 * v371 + 1263009452;
  v437 = LODWORD(STACK[0x224]) ^ 0x363F8DDA ^ (v371 - (v423 & 0xBCAC1D0C) - 2080764452);
  v428 = (v524 ^ 0x524B8286) - ((2 * (v524 ^ 0x524B8286)) & 0x5056F542) - 1473545567;
  v372 = v371 - ((2 * v371 + 425003794) & 0x1ACDC49C) + 168912855;
  v373 = (a64 ^ 0xFBC2D06D) - ((2 * (a64 ^ 0xFBC2D06D)) & 0xBC4C461C) + 1579557646;
  v374 = a58 ^ 0xD27E289D;
  v375 = (v372 ^ 0xD66E24E) + (v507 ^ 0x95643807) - ((2 * ((v372 ^ 0xD66E24E) + (v507 ^ 0x95643807))) & 0xEAEE179C) + 1970736078;
  v376 = (v507 ^ 0x95643807) - ((2 * (v507 ^ 0x95643807)) & 0xEAEE179C) + 1970736078;
  v377 = (v367 - ((2 * v367 - 1841693884) & 0x968FD6D2) + 342157579) ^ v348;
  LODWORD(a58) = (v377 ^ 0x2E853B04) - 396783099 - 2 * ((v377 ^ 0x2E853B04) & 0x68599215 ^ v377 & 0x10);
  v378 = (v375 ^ 0x75770BCE) - v373 - ((2 * ((v375 ^ 0x75770BCE) - v373)) & 0xAAD05EA4) - 714592430;
  LODWORD(STACK[0x224]) = v378;
  v379 = (v378 ^ 0xD5682F52) - (v503 ^ 0x3C682B82) - ((2 * ((v378 ^ 0xD5682F52) - (v503 ^ 0x3C682B82))) & 0xB7CF4914);
  v525 = v365 - 396783099 - ((2 * v365) & 0xD0B3240A);
  v468 = (v351 ^ (v354 - 1856339325)) + 141217231 - ((2 * (v351 ^ (v354 - 1856339325))) & 0x10D59B9E);
  v380 = (v503 ^ 0x3C682B82) - 2 * ((v503 ^ 0x3C682B82) & 0x5BE7A48B ^ v503 & 1);
  v381 = STACK[0x2B0];
  v454 = LODWORD(STACK[0x2B0]) ^ v366 ^ 0xEA8304A1;
  v452 = v364 - ((2 * (v364 + 981895404)) & 0x37E069B2) - 696861243;
  v382 = STACK[0x214];
  LODWORD(a64) = v467 - 396783099 - ((2 * v467) & 0xD0B3240A);
  v440 = ((v371 - 1707193102) ^ a51) + 141217231 - ((2 * ((v371 - 1707193102) ^ a51)) & 0x10D59B9E);
  HIDWORD(v466) = LODWORD(STACK[0x2B0]) ^ v349 ^ 0xE45ECB87 ^ (v371 - 1265021943);
  v438 = LODWORD(STACK[0x2B0]) ^ v369 ^ 0xD33FB074;
  v504 = ((v371 - 1265021943) ^ LODWORD(STACK[0x214])) & 0xCDF7EBC0 | ((v371 + 882461705) ^ LODWORD(STACK[0x214])) & 0x3208143F;
  v508 = ((v370 + 176169909) ^ v334 ^ 0x33C8D2FF) - 653830550 - ((2 * ((v370 + 176169909) ^ v334 ^ 0x33C8D2FF)) & 0xB20EACD4);
  v515 = ((v360 - 650521342) ^ a54) + 141217231 - ((2 * ((v360 - 650521342) ^ a54)) & 0x10D59B9E);
  LODWORD(a51) = v352 - (v475 & 0x37E069B2) + 1845445367;
  v449 = (a53 ^ (v352 - 1994726423)) + 141217231 - ((2 * (a53 ^ (v352 - 1994726423))) & 0x10D59B9E);
  LODWORD(a54) = (LODWORD(STACK[0x26C]) ^ v446) + 141217231 - ((2 * (LODWORD(STACK[0x26C]) ^ v446)) & 0x10D59B9E);
  LODWORD(STACK[0x250]) = (v518 ^ 0x9A000000) + 141217231 - 2 * ((v518 ^ 0x9A000000) & STACK[0x250] ^ v518 & 0x10);
  v442 = ((v360 - 1703689692) ^ v506) + 141217231 - ((2 * ((v360 - 1703689692) ^ v506)) & 0x10D59B9E);
  v383 = LODWORD(STACK[0x210]);
  v519 = v383 ^ v458 ^ 0x6A5FFEAA;
  v447 = v360 - ((2 * (v360 - 650521342)) & 0xB20EACD4) - 1304351892;
  v435 = v381 ^ (v380 - 605576054) ^ 0xB1A7720A;
  LODWORD(v420) = v381 ^ v472 ^ v476 ^ 0xF8DF0F2C;
  LODWORD(a53) = v381 ^ v443 ^ 0x2CCE16A3;
  v459 = v360 + 1075976193;
  v419 = v360 - ((2 * (v360 - 1703689692)) & 0xB20EACD4) + 1937447054;
  LODWORD(v418) = v383 ^ (v352 + 714801681) ^ (v352 + 1034242060) ^ 0x2609C0EC;
  v473 = (v374 ^ v372) - 396783099 - ((2 * (v374 ^ v372)) & 0xD0B3240A);
  v511 = (v375 ^ v376) - 653830550 - ((2 * (v375 ^ v376)) & 0xB20EACD4);
  HIDWORD(v505) = v381 ^ (v373 - ((2 * v373) & 0xAAD05EA4) - 714592430) ^ 0xB398625B;
  v421 = (v332 ^ (v425 + 1)) + 141217231 - ((2 * (v332 ^ (v425 + 1))) & 0x10D59B9E);
  v384 = __PAIR64__(v488, __ROR4__((v360 + 1075976193) ^ v470, 16));
  v426 = (LODWORD(STACK[0x20C]) | (v383 << 16)) ^ v384 ^ 0xFD3787A5;
  v385 = (LODWORD(STACK[0x2A0]) ^ v485) + 141217231 - ((2 * (LODWORD(STACK[0x2A0]) ^ v485)) & 0x10D59B9E);
  v471 = v484 - 396783099 - ((2 * v484) & 0xD0B3240A);
  v386 = v379 - 605576054;
  v387 = (v386 ^ 0xDBE7A48A) + 63176166;
  v388 = (v387 ^ LODWORD(STACK[0x228])) + 141217231 - ((2 * (v387 ^ LODWORD(STACK[0x228]))) & 0x10D59B9E);
  v486 = (v431 ^ v433) + 141217231 - ((2 * (v431 ^ v433)) & 0x10D59B9E);
  v389 = v463;
  v462 = (v463 ^ v461) + 141217231 - ((2 * (v463 ^ v461)) & 0x10D59B9E);
  LODWORD(STACK[0x228]) = (v386 ^ 0xDBE7A48A) - ((2 * v387) & 0xB20EACD4) - 590654384;
  v415 = v381 ^ v428 ^ 0xCFEDBDC3;
  LODWORD(STACK[0x20C]) = v383 ^ v455 ^ 0xA5F7DDE1;
  v444 = v381 ^ v450 ^ 0x7F71CEBA;
  v434 = ((v367 - 1565518509) ^ LODWORD(STACK[0x22C])) + 141217231 - ((2 * ((v367 - 1565518509) ^ LODWORD(STACK[0x22C]))) & 0x10D59B9E);
  LODWORD(STACK[0x22C]) = v371 - (v423 & 0x37E069B2) - 1047251921;
  v456 = v367 - 1974916541 + a62 - 2 * ((v367 + 172567107) & (v382 ^ 0x1A52D3D0));
  HIDWORD(v496) = v381 ^ v465 ^ 0x159766B9 ^ (v367 - 1974916541);
  LODWORD(v384) = v488;
  LODWORD(a62) = (v384 >> 4) + 141217231 - ((2 * (v384 >> 4)) & 0x10D59B9E);
  v417 = v437 - 396783099 - ((2 * v437) & 0xD0B3240A);
  v390 = ((v364 - 2067694056) ^ LODWORD(STACK[0x238])) + 141217231 - ((2 * ((v364 - 2067694056) ^ LODWORD(STACK[0x238]))) & 0x10D59B9E);
  LODWORD(STACK[0x248]) = ((v370 + 1419018034) ^ LODWORD(STACK[0x248])) + 141217231 - ((2 * ((v370 + 1419018034) ^ LODWORD(STACK[0x248]))) & 0x10D59B9E);
  v391 = (a61 - ((2 * a61) & 0x1C591AE6) - 1909682829) ^ v430 ^ 0x6BEE5D1E ^ v482;
  v392 = v391 - ((2 * v391) & 0xE3C788B0);
  v393 = v364 - 1860038647;
  v394 = v364 - 2 * ((v364 - 2067694056) & 0x5907566F ^ v364 & 5) + 1573442690;
  v395 = v381 ^ v505 ^ 0xA75290E9;
  v396 = (v493 ^ v495) - ((2 * (v493 ^ v495)) & 0x2162E9C0) + 280065248;
  v397 = (v490 ^ (v354 - 1504053985)) + 417052975 - ((2 * (v490 ^ (v354 - 1504053985))) & 0x31B7725Eu);
  LODWORD(v424) = v381 ^ 0x845ABD41 ^ v394;
  HIDWORD(v429) = v504 ^ 0x933B8472;
  HIDWORD(v502) = v381 ^ 0xC3F6B260 ^ v431;
  LODWORD(v496) = v382 ^ 0xED7722 ^ v375;
  v398 = (v367 - 1565518509) ^ v381;
  v399 = (-409398032 - (v398 ^ 0x3E9E429A)) ^ ((v398 ^ 0x26F8A995) + 1);
  HIDWORD(v427) = v381 ^ 0x6842E598 ^ (v371 + 1933943645 + ~((2 * (v371 - 1707193102)) & 0xB20EACD4));
  LODWORD(v466) = (v398 ^ 0xD91A7BEA ^ (v399 - ((2 * v399) & 0x3A5B00) + 1912192)) - 409398032;
  HIDWORD(v411) = v381 ^ 0x1BEEB47E ^ v463;
  HIDWORD(v405) = v381 ^ 0xF94ADB7B ^ (v371 - ((2 * (v371 - 1542312103)) & 0xB20EACD4) + 2098824643);
  HIDWORD(v422) = v382 ^ 0x78ECA4F7 ^ v388;
  HIDWORD(v483) = HIDWORD(a62) ^ 0xE0598158 ^ v493;
  HIDWORD(v409) = v382 ^ 0x2D140341 ^ v440;
  HIDWORD(v408) = v381 ^ 0xDD59EC7B ^ v419;
  LODWORD(v406) = v382 ^ 0x1B340F6C ^ v390;
  HIDWORD(v436) = v438 ^ v480;
  LODWORD(v464) = v382 ^ 0x5A95E4CB ^ v480;
  HIDWORD(v439) = v383 ^ 0xF1484E95 ^ v452;
  LODWORD(v451) = v382 ^ 0x86A4769A ^ v385;
  LODWORD(v408) = v382 ^ 0xF4CB04E0 ^ v462;
  HIDWORD(v413) = v383 ^ 0x78B9ABFB ^ (v367 - ((2 * v367 - 1841693884) & 0x968FD6D2) + 342157579);
  LODWORD(v453) = v382 ^ 0x50FBFD3D ^ v421;
  LODWORD(v483) = HIDWORD(a63) ^ 0x6EBAA99D ^ v396;
  HIDWORD(v474) = v454 ^ v497;
  HIDWORD(v487) = v382 ^ 0x4224A0DE ^ v497;
  LODWORD(v401) = a53 ^ v500;
  LODWORD(v413) = v382 ^ 0xE3D44CAA ^ v500;
  LODWORD(v439) = v382 ^ 0xD8543827 ^ v476;
  HIDWORD(a9) = HIDWORD(a62) ^ v482 ^ 0x5A261950 ^ 0x6D8E83C4 ^ v393;
  LODWORD(a53) = HIDWORD(a63) ^ 0xBA9BFB7A ^ v393;
  LODWORD(v412) = a57 ^ 0xBD689D38 ^ v473;
  HIDWORD(v460) = __ROR4__(v426, 16) ^ 0x75B35A6C;
  LODWORD(v427) = v381 ^ 0xD694CE17 ^ v510;
  LODWORD(v498) = v415 ^ v521;
  HIDWORD(v464) = v382 ^ 0x13EE657A ^ v521;
  LODWORD(v474) = v381 ^ 0x5B364401 ^ (v352 - ((2 * (v352 - 1994726423)) & 0xB20EACD4) + 1646410323);
  LODWORD(v414) = v382 ^ 0x3DEDAADF ^ v442;
  LODWORD(v402) = v513 ^ 0x830B58A4 ^ (v392 + 1910752344);
  HIDWORD(v407) = v383 ^ 0x5C910028 ^ v372;
  HIDWORD(v491) = v456 ^ 0x5F68EDD9;
  HIDWORD(v451) = v435 ^ v386;
  LODWORD(v409) = v382 ^ 0x8C0ED641 ^ v386;
  LODWORD(v405) = v382 ^ 0xFBB3A2D3 ^ v468;
  HIDWORD(v441) = v381 ^ 0xC2325D5E ^ v447;
  HIDWORD(v420) = v383 ^ 0x872E9B07 ^ (v354 - 2 * ((v354 - 1904271176) & 0x1BF034DD ^ v354 & 4) + 711939473);
  LODWORD(v448) = a57 ^ 0xFD8BAAAA ^ a58;
  HIDWORD(v403) = v381 ^ 0x30DE9892 ^ v332;
  LODWORD(v491) = v382 ^ 0x49C394DB ^ v449;
  LODWORD(v441) = v381 ^ 0x9016B3EB ^ (v354 - ((2 * (v354 - 1856339325)) & 0xB20EACD4) + 1784797421);
  HIDWORD(v414) = a57 ^ 0x1211D69D ^ (v352 - ((2 * (v352 + 1034242060)) & 0xD0B3240A) + 637458961);
  LODWORD(v457) = v395 ^ (v354 + 604285202);
  LODWORD(v411) = v382 ^ 0x7DB4C11C ^ (v354 + 604285202);
  HIDWORD(v412) = a57 ^ 0x314DD44F ^ v471;
  LODWORD(v404) = v382 ^ 0xEB47DE18 ^ (((v371 - 1542312103) ^ v478) + 141217231 - ((2 * ((v371 - 1542312103) ^ v478)) & 0x10D59B9E));
  HIDWORD(v418) = v382 ^ 0xA7482ADD ^ (v370 + 176169909);
  HIDWORD(v481) = (HIDWORD(a61) - ((2 * HIDWORD(a61)) & 0xE3C788B0) + 1910752344) ^ 0x406467E9 ^ v513;
  LODWORD(v469) = a57 ^ 0x1DC6E6CE ^ v417;
  LODWORD(v407) = v382 ^ 0xB03134D1 ^ a62;
  LODWORD(v436) = v382 ^ 0xAC67EF4C ^ v486;
  LODWORD(v416) = v382 ^ 0xA612FA5B ^ v434;
  HIDWORD(v402) = a66 ^ 0x4EE1DA66 ^ (v354 - ((2 * (v354 - 1504053985)) & 0xD2DCF200) + 264793631);
  HIDWORD(v453) = a63 ^ 0x114D8BA ^ v397;
  HIDWORD(v498) = v444 ^ v517;
  LODWORD(v410) = v382 ^ 0x3A340282 ^ v517;
  LODWORD(v429) = v383 ^ 0xC96F95A9 ^ a51;
  HIDWORD(v404) = a57 ^ 0xBA1035A5 ^ v459;
  LODWORD(v477) = v381 ^ 0x5AB587C3 ^ (v370 - ((2 * (v370 + 1419018034)) & 0xB20EACD4) + 765187484);
  HIDWORD(v448) = v381 ^ 0xA9822D40 ^ LODWORD(STACK[0x2A0]);
  LODWORD(v432) = v519 ^ LODWORD(STACK[0x200]);
  LODWORD(v445) = a57 ^ 0x21B40FA9 ^ LODWORD(STACK[0x200]);
  HIDWORD(v424) = a57 ^ 0xFB331ECE ^ a64;
  HIDWORD(v432) = a57 ^ 0x6300ECB6 ^ v525;
  HIDWORD(v406) = v382 ^ 0xCE16DEBD ^ LODWORD(STACK[0x250]);
  LODWORD(v481) = v382 ^ 0x2F5A83A7 ^ a54;
  LODWORD(v502) = LODWORD(STACK[0x20C]) ^ v523;
  HIDWORD(v416) = a57 ^ 0xD81CF38C ^ v523;
  HIDWORD(v401) = v382 ^ 0xCD253E19 ^ LODWORD(STACK[0x248]);
  HIDWORD(v477) = v383 ^ 0x7EE049F0 ^ LODWORD(STACK[0x22C]);
  HIDWORD(v469) = v381 ^ 0xFD8CC87E ^ LODWORD(STACK[0x26C]);
  LODWORD(v422) = HIDWORD(v505) ^ LODWORD(STACK[0x224]);
  HIDWORD(v445) = v382 ^ 0xB632177C ^ LODWORD(STACK[0x224]);
  LODWORD(v460) = v508 ^ v381;
  LODWORD(v487) = v511 ^ v381;
  HIDWORD(v457) = v381 ^ 0x5A78FF7C;
  HIDWORD(v410) = v381 ^ 0x762C2142 ^ LODWORD(STACK[0x228]);
  LODWORD(v403) = v382 ^ 0x4505228D ^ v515;
  return (*(STACK[0x2E8] + 8 * SLODWORD(STACK[0x2B8])))(v389, v395, v383, STACK[0x2E0], STACK[0x218], v397, v390, v386, a9, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v416, v418, v420, v422, v424, v427, v429, v432, v436, v439, v441, v445, v448, v451, v453, v457, v460, v464, v466, v469, v474, v477, v481, v483, v487, v491, v496, a51, a52, a53, a54, v498, v502, a57, a58, v505, a61, a62, a63, a64);
}

uint64_t sub_100105AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x2B8] = 0x64EDDF5CB747834FLL;
  STACK[0x2A0] = 0x12C6FD536E9967C8;
  STACK[0x2B0] = 0xE61409E223E6C78;
  v11 = STACK[0x2D8];
  v12 = 9 * (LODWORD(STACK[0x2D8]) ^ 0x26BC);
  LODWORD(STACK[0x250]) = v12;
  v13 = (v12 - 6282) | 0x1484;
  LODWORD(STACK[0x26C]) = v11 - 7876;
  v14 = v11 + 1415;
  v17 = v5;
  v18 = v9;
  v19 = v6;
  v20 = v8;
  (*(v10 + 8 * (v11 + 1415)))(STACK[0x298] + v7);
  (*(v10 + 8 * (v11 + 1415)))(STACK[0x288] - 0x6C194EDE9C7D5590);
  (*(v10 + 8 * (v11 + 1415)))(STACK[0x280] - 0xF59520D87DE52B3);
  v11 ^= 0xD89u;
  (*(v10 + 8 * v11))(STACK[0x290] - 0x4A37C95B43735327);
  (*(v10 + 8 * v11))(v17);
  (*(v10 + 8 * v14))(a5);
  (*(v10 + 8 * v11))(STACK[0x2A8] - 0x2EB268602F54D14FLL);
  (*(v10 + 8 * v14))(v19);
  (*(v10 + 8 * v11))(STACK[0x2C0]);
  (*(v10 + 8 * v14))(v18 - 0x697BD328616FF01ELL);
  (*(v10 + 8 * v11))(a4);
  (*(v10 + 8 * v11))(STACK[0x2C8] - 0x1A5648518FD6D612);
  LODWORD(STACK[0x2E0]) = v13;
  return (*(v10 + 8 * ((v20 * (v13 ^ 0xFA)) ^ LODWORD(STACK[0x26C]))))(0, 0);
}

uint64_t sub_100105CF4()
{
  v0 = STACK[0x270];
  v1 = STACK[0x250];
  v2 = *(STACK[0x270] - 0x5560BEA5A6D36A28) ^ 0x3ALL;
  v3 = *(&off_1002DD400 + (LODWORD(STACK[0x250]) ^ 0x1A4E)) - 1337010614;
  v4 = *(&off_1002DD400 + (LODWORD(STACK[0x250]) ^ 0x1A5D)) - 1342700107;
  v5 = *&v4[4 * (((LODWORD(STACK[0x250]) ^ 0x3E) + 99) ^ *(STACK[0x270] - 0x5560BEA5A6D36A2BLL))] ^ 0xA6C66624;
  v6 = *&v4[4 * (*(STACK[0x270] - 0x5560BEA5A6D36A27) ^ 0x60)];
  LODWORD(STACK[0x238]) = v5;
  v7 = *(v0 - 0x5560BEA5A6D36A2FLL);
  LODWORD(STACK[0x230]) = v6 ^ 0xA6C66624;
  v8 = *&v4[4 * (v7 ^ 0xFD)] ^ 0xA6C66624;
  v9 = *(&off_1002DD400 + v1 - 6231) - 53074355;
  v10 = v9[*(v0 - 0x5560BEA5A6D36A22) ^ 0x80];
  v11 = *(v0 - 0x5560BEA5A6D36A30) ^ 0xB5;
  v12 = v9[*(v0 - 0x5560BEA5A6D36A2ALL) ^ 0x1CLL] ^ 0x3D ^ (2 * v5) & 0x62E3CB46;
  v13 = *(&off_1002DD400 + (v1 ^ 0x191F)) - 212380103;
  v14 = *(v0 - 0x5560BEA5A6D36A26);
  v15 = *(v0 - 0x5560BEA5A6D36A23);
  v16 = *&v13[4 * (*(v0 - 0x5560BEA5A6D36A25) ^ 0x52)] + 825725019;
  LODWORD(STACK[0x2C8]) = v8;
  LODWORD(STACK[0x2D4]) = v16;
  v17 = v9[v14 ^ 0x24];
  LODWORD(v14) = *&v4[4 * (v15 ^ 3)] ^ 0xA6C66624;
  v18 = v10 ^ ((2 * v16) | 0x7295F36E);
  LODWORD(STACK[0x2C0]) = v14;
  v19 = (2 * v14) & 0x62E3CB46 ^ 0x3D;
  v20 = *(v0 - 0x5560BEA5A6D36A29);
  LODWORD(STACK[0x22C]) = v17 ^ 0xFB;
  v21 = v12 - ((2 * v12) & 0x14390FA);
  v22 = *(v0 - 0x5560BEA5A6D36A24) ^ 0xB2;
  LODWORD(STACK[0x288]) = v9[*(v0 - 0x5560BEA5A6D36A2ELL) ^ 0x6CLL] ^ 0xFB;
  LODWORD(STACK[0x228]) = ((2 * (v6 ^ 0xA6C66624)) & 0x62E3CB46) - ((4 * (v6 ^ 0xA6C66624)) & 0x1439088) - 1715872643;
  LODWORD(STACK[0x280]) = ((2 * v8) & 0x62E3CB46) - ((4 * v8) & 0x1439088) - 1715872643;
  LODWORD(STACK[0x224]) = v21 - 1715872643;
  LODWORD(STACK[0x2A8]) = (v18 ^ v19) - ((2 * (v18 ^ v19)) & 0x3373B8FA) - 1715872643;
  LODWORD(STACK[0x218]) = *&v3[4 * v2];
  LODWORD(STACK[0x26C]) = *&v3[4 * v11];
  LODWORD(STACK[0x214]) = *&v3[4 * (*(v0 - 0x5560BEA5A6D36A2CLL) ^ 0x3CLL)];
  v23 = *&v13[4 * (v20 ^ 0xE4)] + 825725019;
  STACK[0x2D8] = v0 - 0x5560BEA5A6D36A31;
  v24 = *(v0 - 0x5560BEA5A6D36A31);
  STACK[0x2E0] = v24;
  LODWORD(v15) = *&v13[4 * (v24 ^ 0x92)] + 825725019;
  STACK[0x200] = v3;
  LODWORD(STACK[0x290]) = *&v3[4 * v22];
  v25 = *&v13[4 * (*(v0 - 0x5560BEA5A6D36A2DLL) ^ 0xA1)] + 825725019;
  v26 = *(STACK[0x2E8] + 8 * v1);
  LODWORD(STACK[0x298]) = ((v1 ^ 0x3E) - 6298) | 0x2400;
  LODWORD(STACK[0x210]) = v23;
  LODWORD(STACK[0x248]) = 2 * v23;
  LODWORD(STACK[0x20C]) = v25;
  LODWORD(STACK[0x250]) = 2 * v25;
  LODWORD(STACK[0x254]) = v15;
  LODWORD(STACK[0x240]) = (2 * v15) | 0x7295F36E;
  return v26(3949996664);
}

uint64_t sub_100106270()
{
  v0 = STACK[0x298];
  LODWORD(STACK[0x248]) |= 0x7295F36Eu;
  LODWORD(STACK[0x288]) ^= LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x26C]) ^ LODWORD(STACK[0x254]) ^ LODWORD(STACK[0x240]);
  LODWORD(STACK[0x2C8]) = LODWORD(STACK[0x250]) | 0x7295F36E;
  return (*(STACK[0x2E8] + 8 * (v0 + 247)))(1421242236);
}

uint64_t sub_100106370@<X0>(int a1@<W1>, int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>)
{
  LODWORD(STACK[0x2C0]) ^= LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x290]);
  v7 = *(STACK[0x2E8] + 8 * (v6 - 624));
  v8 = (v6 + 567729022) & 0xDE291FEF;
  LODWORD(STACK[0x2D4]) = v8;
  return v7(v8 - 8046, 3216168432, (a1 + a5 + a2 + v5), 1509870844, 2112789920, a3, a4, 2045);
}

uint64_t sub_100106774(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x2D4]) = 436474296;
  LODWORD(STACK[0x2E0]) = v2 - 3938;
  v3 = v2 - 2554;
  v5 = (*(a2 + 8 * (v2 + 1396)))(1032);
  return (*(a2 + 8 * ((16 * (v5 == 0)) | ((v5 == 0) << 6) | v3)))(0, 0);
}

uint64_t sub_1001067F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, int a57, int a58)
{
  STACK[0x2D8] = v63;
  v65 = LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x20C]);
  LODWORD(STACK[0x210]) ^= LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x228]) ^ LODWORD(STACK[0x22C]) ^ LODWORD(STACK[0x248]);
  LODWORD(STACK[0x20C]) = v65 ^ LODWORD(STACK[0x2C8]);
  v66 = LODWORD(STACK[0x2E0]) ^ 0xA7D;
  v67 = ((((v61 ^ 0x770A316D) + (a57 ^ 0x68B61265)) << (LODWORD(STACK[0x2E0]) ^ 0x9E)) & 0x9FBCA8BA) + (((v61 ^ 0x770A316D) + (a57 ^ 0x68B61265)) ^ 0xCFDE545D);
  v68 = 748962223 * v67 - ((1497924446 * v67 - 670470438) & 0xE5A576AA) - 556305726;
  v69 = ((2 * ((v58 + v60 + 1) ^ a56)) & 0x6BFC95EC ^ 0x6B7494EC) + ((v58 + v60 + 1) ^ a56 ^ 0x88458181);
  v70 = ((2 * ((v59 + 896075869) ^ a55)) & 0xFF7FFADE ^ 0x2D55D252) + ((v59 + 896075869) ^ a55 ^ 0xE95516C6);
  LODWORD(STACK[0x254]) = 1226306839 * v70 - 600047609;
  v71 = ((2 * (v62 ^ a58)) & 0x7ECE877E ^ 0x280E0342) + (v62 ^ a58 ^ 0xABF05E1E);
  LODWORD(STACK[0x258]) = 2076482363 * v71 - 1175273989;
  v72 = -597315639 * v70 - 1825037607;
  HIDWORD(v73) = (v61 ^ 0x770A316D) + (a57 ^ 0x68B61265);
  LODWORD(v73) = -114332585 * v67 - 1647896475;
  v74 = (1267736576 * v69) | ((-125674367 * v69 - 2030054902) >> 19);
  v75 = (-461373440 * v70) | (v72 >> 9);
  v76 = ((2 * (v74 - 96387072)) & 0xFFEBFD9E) + ((v74 - 96387072) ^ 0x7FF5FECF);
  v77 = (-1280311296 * v71) | ((-454272197 * v71 - 1643479557) >> 12);
  v78 = v75 + 1820327936 - 2 * ((v75 + 1820327936) & 0x44C99EAF ^ (v72 >> 9) & 2) + 1154064045;
  v79 = ((2 * (v77 - 542113792)) & 0xFFAFFF6E) + ((v77 - 542113792) ^ 0xFFD7FFB7);
  v80 = v79 + 2621513 + (((v73 >> 1) - 2146827983 + v76 - ((2 * ((v73 >> 1) - 2146827983 + v76)) & 0x89933D5A) + 1154064045) ^ v78);
  v81 = ((2 * ((730333184 * v80) | ((1078437233 * v80) >> 13))) & 0xDA9FFD98) + (((730333184 * v80) | ((1078437233 * v80) >> 13)) ^ 0x6D4FFECC);
  v82 = (792473408 * (v78 ^ 0x44C99EAD)) | ((683471037 * (v78 ^ 0x44C99EADu)) >> 26);
  v83 = ((2 * v82) & 0xADA7BCFA) + (v82 ^ 0x56D3DE7D);
  v84 = ((-666460160 * v79) | ((987677237 * v79 + 567107869) >> 19)) - 1406951424;
  v85 = ((2 * v84) & 0xFDFFDFE6) + (v84 ^ 0x7EFFEFF3);
  v86 = v85 - 1650067616 * v76 + ((-1393741893 * v76 + 1675877835) >> 27) - v83 + v81 - 419452642;
  v87 = (1061775633 * v86) >> 20;
  v88 = ((-1755807744 * v81) | ((-789762383 * v81 + 1762405620) >> 17)) + 377094144;
  v89 = ((2 * v88) & 0xFE9FEEDE) + (v88 ^ 0xFF4FF76F);
  v90 = (-1768878080 * v86) | v87;
  v91 = ((-1372089496 * v85 - 1173816248) & 0xFFFFFFF8 | ((-708382099 * v85 + 927014793) >> 29)) - 2 * (((-1372089496 * v85 - 1173816248) & 0x44BF8998 | ((-708382099 * v85 + 927014793) >> 29) & 0x44BF899B) ^ (-1372089496 * v85 - 1173816248) & 8) - 994080365;
  v92 = ((-218103808 * v83) | ((1278554867 * v83 + 126772569) >> 8)) + v90 - v89 + 1481635695;
  v93 = ((1820753920 * v89) | ((-249767667 * v89 - 1324394403) >> 17)) - 1406238720;
  HIDWORD(v73) = (v92 - ((2 * v92) & 0x897F1326) - 994080365) ^ v91;
  LODWORD(v73) = 908036337 * HIDWORD(v73);
  v94 = ((2 * (v73 >> 4)) & 0xBFBBBEDA) + ((v73 >> 4) ^ 0x5FDDDF6D);
  HIDWORD(v73) = v87;
  LODWORD(v73) = -693474355 * v90;
  v95 = ((2 * (v73 >> 2)) & 0xE6A7F7DE) + ((v73 >> 2) ^ 0x7353FBEF);
  v96 = ((326555080 * (v91 ^ 0xC4BF8993)) | ((1651432121 * (v91 ^ 0xC4BF8993)) >> 29)) - v95 + v93 - v94 - 751707300;
  v97 = v96 - ((2 * v96) & 0xF6709F9E) - 80195633;
  v98 = (v97 ^ 0xFB384FCF) + ((v94 - 1608376173) ^ (v95 + v93 - 158885092));
  v99 = v98 + 129939171;
  v100 = ((v98 + 129939171) ^ v97 ^ 0xFB384FCF) - 2 * (((v98 + 129939171) ^ v97 ^ 0xFB384FCF) & 0x680BAAFB ^ ((v98 + 129939171) ^ v97) & 0x10) - 401888533;
  v101 = v98 + v95;
  v102 = v94 - v98;
  LODWORD(STACK[0x280]) = v101 - 1804944652;
  v103 = (((v101 - 1804944652) ^ (v102 - 1738315344)) - ((2 * ((v101 - 1804944652) ^ (v102 - 1738315344))) & 0xF6709F9E) - 80195633) ^ v97;
  LODWORD(STACK[0x218]) = v100;
  v104 = ((-1207959552 * v102) | ((-65342153 * v102 - 580836144) >> 5)) - 2 * (((-1207959552 * v102) | ((-65342153 * v102 - 580836144) >> 5)) & 0x7D96820F ^ ((-65342153 * v102 - 580836144) >> 5) & 8) - 40467961;
  v105 = ((571080704 * (v101 + 186921961)) | ((390205701 * (v101 + 186921961) + 724459063) >> 15)) - 1133641728;
  v106 = ((2 * v105) & 0x57FDBD3A) + (v105 ^ 0xABFEDE9D);
  v107 = ((2 * ((-1480589312 * (v100 ^ 0xE80BAAEB)) | ((1892763295 * (v100 ^ 0xE80BAAEB)) >> 10))) & 0xCD5FBD72) + (((-1480589312 * (v100 ^ 0xE80BAAEB)) | ((1892763295 * (v100 ^ 0xE80BAAEB)) >> 10)) ^ 0xE6AFDEB9);
  v108 = (((1628750595 * v98 - 1454961239) >> 3) | (1610612736 * v98)) - v106 - 872489315;
  v109 = v107 + 424681799 + ((v108 + 2107015687 + (~(2 * v108) | 0x4D2FBF1) + 1) ^ v104);
  v110 = ((2 * ((656408576 * v109) | ((1679442233 * v109) >> 11))) & 0xE9FF59AE) + (((656408576 * v109) | ((1679442233 * v109) >> 11)) ^ 0x74FFACD7);
  v111 = (-1782855680 * (v104 ^ 0x7D968207)) | ((745715577 * (v104 ^ 0x7D968207)) >> 21);
  v112 = ((2 * v111) & 0xB6FAFBE6) + (v111 ^ 0xDB7D7DF3);
  v113 = -1677721600 * v107 + ((-496949081 * v107 + 1382010193) >> 6) + 1140850688;
  v114 = ((2 * v113) & 0xE76F66EA) + (v113 ^ 0x73B7B375);
  v115 = ((186515456 * v106) | ((-1305901681 * v106 - 1311435443) >> 15)) - v112 - v114 + v110 + 80708753;
  v116 = ((369623040 * v110) | ((1640620737 * v110 - 388373527) >> 13)) + 524812288;
  v117 = ((838860800 * v112) | ((732872985 * v112 - 2002747323) >> 7)) - 1979711488;
  v118 = v116 - ((2 * v116) & 0xA84285BE) + 1411465951;
  v119 = (-1667432448 * v115) | ((1640537245 * v115) >> 16);
  v120 = ((2 * v119) & 0xE99BECD4) + (v119 ^ 0xF4CDF66A);
  v121 = ((-650117120 * v114) | ((2077509477 * v114 - 1847803945) >> 10)) - 171966464 - 2 * ((((-650117120 * v114) | ((2077509477 * v114 - 1847803945) >> 10)) - 171966464) & 0x4F974C6F ^ ((2077509477 * v114 - 1847803945) >> 10) & 0xF) - 812168096;
  v122 = v118 ^ (v117 - ((2 * v117) & 0xA84285BE) + 1411465951);
  v123 = (v122 - v120 - ((2 * (v122 - v120) - 375657260) & 0x9F2E98C0) - 999996726) ^ v121;
  v124 = v121 ^ 0xCF974C60;
  v125 = (1383681976 * (v118 ^ 0x542142DF)) | ((-363910665 * (v118 ^ 0x542142DF)) >> 29);
  v126 = ((-427578368 * v120) | ((796500203 * v120 - 1630368590) >> 22)) + 1244841984;
  v127 = v126 - ((2 * v126) & 0xE7C87C9A) + 1944337997;
  v128 = v125 - 2 * (v125 & 0x73E43E5D ^ (-72 * (v118 ^ 0xDF)) & 0x10) + 1944337997;
  v129 = ((-805306368 * v123) | ((465507821 * v123) >> 4)) - 2 * (((-805306368 * v123) | ((465507821 * v123) >> 4)) & 0x7FBB8375 ^ ((465507821 * v123) >> 4) & 4) - 4488335;
  v130 = ((-1111300096 * v124) | ((1433909341 * v124) >> 21)) - v125 + (v127 ^ 0x8C1BC1B2) + 1;
  v131 = v129 ^ (v130 - ((2 * v130) & 0xFF7706E2) - 4488335);
  v129 ^= 0xFFBB8371;
  v132 = (v129 - 1296636801 * (v128 ^ v127)) ^ 0x4A2FC4C9;
  v133 = v132 - v131 - ((2 * (v132 - v131) + 320760670) & 0x706B7246) + 29683410;
  v134 = v133 ^ v127;
  v135 = ((2 * (v129 - (v133 ^ 0xB835B923))) & 0xBFD9DB7A) + ((v129 - (v133 ^ 0xB835B923)) ^ 0x5FECEDBD);
  v136 = ((-1778384896 * (v134 ^ 0xCBD1876E)) | ((2066301899 * (v134 ^ 0xCBD1876E)) >> 7)) + 777832416 - 2 * (((-1778384896 * (v134 ^ 0xCBD1876E)) | ((2066301899 * (v134 ^ 0xCBD1876E)) >> 7)) & 0x2E5CC7E7 ^ ((2066301899 * (v134 ^ 0xCBD1876E)) >> 7) & 7);
  LODWORD(STACK[0x230]) = v135;
  v137 = ((637534208 * v135) | ((-162758253 * v135 + 1426800505) >> 7)) - 234881024;
  v138 = ((2 * v137) & 0xFFA9C8FA) + (v137 ^ 0xFFD4E47D);
  v139 = ((1652555776 * v132) | ((-1767425851 * v132 + 2115737515) >> 9)) - 713031680;
  v140 = ((2 * v139) & 0x1FB6F5FC) + (v139 ^ 0xFDB7AFE);
  v141 = v136 ^ (((1679088584 * (v133 ^ 0xB835B923)) | ((1283627897 * (v133 ^ 0xB835B923)) >> 29)) + 777832416 - ((1210693520 * (v133 ^ 0xB835B923)) & 0x5CB98FC0));
  v142 = (-1543503872 * (v141 - v140 + 268867201 + v138)) | ((571328937 * (v141 - v140 + 268867201 + v138)) >> 6);
  v143 = ((2 * v142) & 0x67DCB7DA) + (v142 ^ 0xB3EE5BED);
  v144 = ((2104213504 * v138) | ((-692718161 * v138 + 1416310157) >> 18)) - 882688000;
  v145 = ((2 * v144) & 0x7FFFFA36) + (v144 ^ 0xBFFFFD1B);
  v146 = ((-540172288 * v140) | ((761724525 * v140 - 732914214) >> 19)) + 331038720;
  v147 = (((2084306944 * (v136 ^ 0x2E5CC7E0)) | ((1116643087 * (v136 ^ 0x2E5CC7E0)) >> 14)) + v145 - v143 - 202481966) ^ v146;
  v148 = ((-495687072 * v143) | ((-15490221 * v143 - 6730967) >> 27)) - 215390944;
  v149 = ((2 * v148) & 0xF6AEADE2) + (v148 ^ 0xFB5756F1);
  v150 = ((2 * ((272523264 * v147) | ((1741718003 * v147) >> 19))) & 0xFEC6EEFE) + (((272523264 * v147) | ((1741718003 * v147) >> 19)) ^ 0xFF63777F);
  LODWORD(STACK[0x228]) = v103;
  v151 = ((-2021028259 * v146) << (v103 & v64) << (v103 & v64 ^ v64)) | ((-2021028259 * v146) >> 9);
  v152 = ((1166016512 * v145) | ((-1325272949 * v145 + 446513751) >> 9)) + v149 - v150 + 797712526;
  v153 = v151 - ((2 * v151) & 0x60C2C2A0) + 811688272;
  v154 = v153 ^ 0x30616150;
  v155 = (v152 - ((2 * v152) & 0x60C2C2A0) + 811688272) ^ v153;
  v156 = ((-926036480 * v149) | ((-891001113 * v149 - 823622007) >> 23)) - 787672576;
  v157 = ((2 * ((-723544512 * v155) | ((-1353482663 * v155) >> 26))) & 0xFFF3E94E) + (((-723544512 * v155) | ((-1353482663 * v155) >> 26)) ^ 0xFFF9F4A7);
  v158 = ((410779648 * v150) | ((-1406433761 * v150 - 1676472929) >> 14)) + 914096128;
  v159 = ((2 * v158) & 0xFEF6AAFA) + (v158 ^ 0x7F7B557D);
  v160 = (v156 ^ (-332464128 * v154 + ((-1353192401 * v154) >> 16))) + v159 - 2138393124 + v157;
  v161 = 2020142865 * (v156 - v159 + v157) + 127251729;
  LODWORD(STACK[0x224]) = v160;
  v162 = v161 ^ v160 ^ 0xFEDBA942;
  v163 = -1050242423 * v162;
  v164 = -1572864000 * v162;
  v165 = v159 - 2138789245 + v162 - ((2 * (v159 - 2138789245 + v162)) & 0x58064328) + 738402708;
  LODWORD(STACK[0x298]) = v165;
  LODWORD(STACK[0x214]) = v161;
  v166 = v157 + 396121 + v162 - ((2 * (v157 + 396121 + v162)) & 0xBAFBC168) + 1568530612;
  LODWORD(STACK[0x22C]) = v166;
  v167 = (1124073472 * (v165 ^ 0x2C032194)) | ((-1131041981 * (v165 ^ 0x2C032194u)) >> 8);
  v168 = ((2 * v167) & 0xF57FE5F4) + (v167 ^ 0xFABFF2FA);
  v169 = (-920649728 * (v161 ^ 0xFEDBA942)) | ((1746810441 * (v161 ^ 0xFEDBA942)) >> 11);
  v170 = v164 + (v163 >> 10) + 88083718 + v168 - ((2 * (v164 + (v163 >> 10) + 88083718 + v168)) & 0x3676099A);
  v171 = ((200163136 * (v166 ^ 0x5D7DE0B4)) | ((1613740285 * (v166 ^ 0x5D7DE0B4)) >> 26)) - 2 * (((200163136 * (v166 ^ 0x5D7DE0B4)) | ((1613740285 * (v166 ^ 0x5D7DE0B4)) >> 26)) & 0x1B3B04DF ^ ((1613740285 * (v166 ^ 0x5D7DE0B4)) >> 26) & 0x12) + 456852685;
  v172 = ((v170 + 456852685) ^ v171) - ((2 * ((v170 + 456852685) ^ v171)) & 0x16673FFE);
  v173 = v169 - ((2 * v169) & 0x16673FFE) + 187932671;
  v174 = (-408342336 * ((v172 + 187932671) ^ v173)) | ((664708291 * ((v172 + 187932671) ^ v173)) >> 26);
  v175 = ((2 * v174) & 0xDA63B7FE) + (v174 ^ 0xED31DBFF);
  v173 ^= 0xB339FFFu;
  v176 = 260748741 * v173;
  v177 = -983899520 * v173;
  v178 = (398458880 * (v171 ^ 0x1B3B04CD)) | ((-1676578721 * (v171 ^ 0x1B3B04CD)) >> 10);
  v179 = ((2 * v178) & 0x5F6D77BA) + (v178 ^ 0xAFB6BBDD);
  v180 = ((-374693504 * v168) | ((-439134909 * v168 - 1106745710) >> 25)) + v179 - v175 + 1101949218;
  v181 = (v177 & 0xFFFFFF80 | (v176 >> 25)) - ((2 * (v177 & 0xFFFFFF80 | (v176 >> 25))) & 0x77F55AF6) + 1006284155;
  v182 = ((1978089472 * v175) | ((1309005725 * v175 - 1431442531) >> 18)) + 2061975552;
  v183 = ((2 * v182) & 0xE7FF7D9E) + (v182 ^ 0xF3FFBECF);
  HIDWORD(v73) = (v180 - ((2 * v180) & 0x77F55AF6) + 1006284155) ^ v181;
  LODWORD(v73) = 1845923219 * HIDWORD(v73);
  v184 = ((2 * (v73 >> 1)) & 0xF6DDF7DE) + ((v73 >> 1) ^ 0xFB6EFBEF);
  v185 = (867393536 * (v181 ^ 0x3BFAAD7B)) | ((12164507 * (v181 ^ 0x3BFAAD7B)) >> 19);
  v186 = ((2 * v185) & 0xF1BF9FFE) + (v185 ^ 0xF8DFCFFF);
  v187 = 383928693 * v183 + 1375126629;
  v188 = v186 + 1040187392 * v179 + ((-1964142561 * v179 - 510005187) >> 7) - v183 - v184 + 1888414399;
  v189 = ((215385600 * v184) | ((-561616061 * v184 - 1383257229) >> 23)) + 441902592 - 2 * ((((215385600 * v184) | ((-561616061 * v184 - 1383257229) >> 23)) + 441902592) & 0x14B7A48F ^ ((-561616061 * v184 - 1383257229) >> 23) & 2) + 347579533;
  v190 = ((-780140544 * v188) | ((-1553406045 * v188) >> 9)) - ((2 * ((-780140544 * v188) | ((-1553406045 * v188) >> 9))) & 0x54A18B6) + 44371035;
  v191 = ((-1972264960 * v186) | ((-801877107 * v186 - 327236723) >> 19)) + ((782237696 * v183) | (v187 >> 11)) - 1935671296 + (v190 ^ 0xFD5AF3A4) + (v189 ^ 0xEB485B72) - 663642110 + (((v190 ^ 0x2A50C5B) + (v189 ^ (((782237696 * v183) | (v187 >> 11)) - 1935671296 - 2 * ((((782237696 * v183) | (v187 >> 11)) - 1935671296) & 0x14B7A49F ^ (v187 >> 11) & 0x12) + 347579533)) + 146302995) ^ 0xB021773B);
  v192 = 992325121 * v191 - ((1984650242 * v191) & 0x7DA22A3E) - 1093593825;
  LODWORD(STACK[0x250]) = (v134 ^ v99 ^ 0xCBD1876E) - 2 * ((v134 ^ v99 ^ 0xCBD1876E) & 0x60847352 ^ (v134 ^ v99) & 0x10) + 1619292994;
  LODWORD(STACK[0x270]) = v192 ^ v190;
  v193 = (v192 ^ 0xBED1151F) + (v189 ^ 0x14B7A48D) - ((2 * ((v192 ^ 0xBED1151F) + (v189 ^ 0x14B7A48D))) & 0x93823CE2) - 910090639;
  LODWORD(STACK[0x248]) = v134 ^ v68;
  LODWORD(STACK[0x240]) = v193 ^ v133;
  LODWORD(STACK[0x26C]) = v193;
  v194 = *(STACK[0x2E8] + 8 * v66);
  LODWORD(STACK[0x2C8]) = v68;
  return v194(13958);
}

uint64_t sub_100107D5C@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, int a7@<W8>)
{
  v17 = *(*(a3 + 8 * v8) + 4 * (v16 ^ (v9 ^ v7) ^ v11) + v12);
  *(a4 + 4 * v7) = v15 ^ a5 ^ v13 ^ (v17 + a6 - (v14 & (2 * v17)));
  return (*(a2 + 8 * (((v10 == 0) * a1) ^ a7)))();
}

uint64_t sub_100107DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  LODWORD(STACK[0x290]) = a6;
  LODWORD(STACK[0x2E0]) = v6 ^ 0x3636;
  v7 = *(a3 + 8 * (v6 + 1740));
  STACK[0x238] = a5;
  v8 = *(a3 + 8 * ((((v6 ^ (v7(1028) == 0)) & 1) * ((v6 ^ 0x2A62) - 2175)) ^ v6));
  return v8(0, 0);
}

uint64_t sub_100107F30@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v20 = (v8 + ((v18 - 1) ^ v11) - (v9 & v16)) ^ v17;
  v21 = *(*(v15 + 8 * a1) + 4 * (((v20 + (v12 ^ (2 * v20) | 0x55) + 86) ^ v19) ^ v13) + a2);
  *(a8 + 4 * v8) = a5 ^ (v21 - ((a3 + 2 * v21) & v14) + a4);
  return (*(a7 + 8 * (((v10 == 0) * a6) ^ v18)))();
}

uint64_t sub_100107FB4@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v3 = (v2 - 3379) | 0x1008;
  v4 = *(a1 + 8 * (v2 ^ 0x38BF));
  STACK[0x2A8] = a2;
  v6 = v4(1032);
  v7 = STACK[0x2A8];
  STACK[0x2B8] = v6 + 0x64EDDF5CB747834FLL;
  LODWORD(STACK[0x2E0]) = v3;
  return (*(a1 + 8 * (((v6 != 0) * (v3 - 5248)) ^ v2)))(v7, 0);
}

uint64_t sub_10010803C()
{
  v1 = *(STACK[0x2E8] + 8 * (LODWORD(STACK[0x2E0]) - 2643));
  LODWORD(STACK[0x230]) = LODWORD(STACK[0x2E0]) + 1638;
  LODWORD(STACK[0x280]) = v0;
  return v1(1926413141, v0 ^ 0x589AA5u);
}

uint64_t sub_10010813C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v25 = *(*(a4 + 8 * v10) + 4 * (v16 ^ v17 ^ v7 ^ 0x21u) - 394443815);
  v26 = v18 ^ v24 ^ v15 ^ ((v12 & (2 * v25)) + (v13 ^ v25));
  v27 = v11 ^ v21 ^ (v26 - (v22 & (2 * v26)) + a1);
  v28 = a5 ^ v23 ^ (v27 + a6 - (v14 & (2 * v27)));
  *(v19 + 4 * v7) = a2 ^ (v28 + v20 - (v9 & (2 * v28)));
  return (*(a3 + 8 * ((v8 == 0) | (16 * (v8 == 0)) | a7)))();
}

uint64_t sub_1001081DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0x230];
  v6 = (LODWORD(STACK[0x230]) - 564487494) & 0x21A55EDF;
  v8 = (*(a5 + 8 * (LODWORD(STACK[0x230]) + 3696)))(1032);
  LODWORD(STACK[0x2E0]) = v6;
  return (*(a5 + 8 * (((v8 == 0) * ((((v5 - 564487494) ^ 0xDE5AAEF1) - 1740) ^ v6)) ^ v5)))(STACK[0x2A8], 0);
}

uint64_t sub_100108334@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X7>, int a6@<W8>)
{
  HIDWORD(v21) = *(*(v14 + 8 * v9) + 4 * (v15 ^ v16 ^ v6 ^ v8) + v10);
  LODWORD(v21) = HIDWORD(v21);
  v22 = v18 + (v21 >> 31) - (a6 & (2 * (v21 >> 31))) + v11;
  v23 = v12 ^ v19 ^ v13 ^ (v22 >> 5) ^ (v22 >> 4) ^ a1;
  *(v20 + 4 * v6) = v22 ^ a3 ^ (v23 - (a6 & (2 * v23)) + a2);
  return (*(a5 + 8 * (((v7 == 0) * a4) ^ v17)))();
}

uint64_t sub_1001083B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = ((v8 + 574507981) & 0xDDC1B35B) + 1092;
  v11 = *(a8 + 8 * (v8 + 6211));
  STACK[0x298] = v9;
  v13 = v11(1032);
  STACK[0x2B0] = v13 + 0xE61409E223E6C78;
  LODWORD(STACK[0x2E0]) = v10;
  return (*(a8 + 8 * (((v13 == 0) * (v10 ^ 0x140D)) ^ v8)))(STACK[0x2A8], 0);
}

uint64_t sub_100108560(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8 * (v2 + 9299)))(1032);
  STACK[0x2A0] = v4 + 0x12C6FD536E9967C8;
  LODWORD(STACK[0x2E0]) = v2 + 3965;
  return (*(a2 + 8 * (((v4 == 0) * (((v2 ^ 0x1BC8) - 2666) ^ (v2 + 3965))) ^ v2)))(STACK[0x2A8], 0);
}

uint64_t sub_100108734(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x2E0]) = (v2 ^ 0x17CF) + 3728;
  v4 = (*(a2 + 8 * (v2 ^ 0x38B5)))(1028);
  return (*(a2 + 8 * (((v4 == 0) * ((v2 ^ 0x17CF) - 577)) ^ v2)))(STACK[0x2A8], 0);
}

uint64_t sub_100108890(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v20 = *(*(v17 + 8 * v10) + 4 * (((v14 + 2613) | v8) ^ (v6 ^ v15) ^ v9) + v11);
  v21 = (v20 * v12) ^ (2 * ((v20 * v12) ^ (v20 * v13)));
  v22 = a3 ^ (v21 - (a1 & (2 * v21)) + a2);
  *(v18 + 4 * v6) = a5 ^ (v22 + v19 - (a4 & (2 * v22)));
  return (*(v16 + 8 * (((v7 == 0) * a6) ^ v14)))();
}

uint64_t sub_100108910()
{
  LODWORD(STACK[0x2E0]) = v0 + 697;
  v3 = (*(v1 + 8 * (v0 ^ 0x3893)))(1028);
  return (*(v1 + 8 * (((v3 == 0) * ((v0 + 1415657697) & 0xAB9EBF3D ^ 0x9D1)) ^ v0)))(STACK[0x2A8], v2);
}

uint64_t sub_100108984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x2E0];
  v9 = LODWORD(STACK[0x2E0]) ^ 0x3D17;
  v10 = STACK[0x2E8];
  v11 = v6;
  (*(STACK[0x2E8] + 8 * v9))();
  (*(v10 + 8 * (v8 + 5353)))(a2);
  (*(v10 + 8 * v9))(v11);
  (*(v10 + 8 * (v8 + 5353)))(a6);
  (*(v10 + 8 * (v8 + 5353)))(STACK[0x2B0] - 0xE61409E223E6C78);
  (*(v10 + 8 * (v8 + 5353)))(STACK[0x2B8] - 0x64EDDF5CB747834FLL);
  (*(v10 + 8 * v9))(v7 - 0x2EE16FF0ED9EE457);
  (*(v10 + 8 * v9))(STACK[0x2A0] - 0x12C6FD536E9967C8);
  if (LODWORD(STACK[0x2D4]) == v8 - 5279)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4294924411;
  }

  return (*(v10 + 8 * v8))(STACK[0x278], v14);
}

uint64_t sub_100108A98(uint64_t result, int a2)
{
  if ((a2 ^ 0x3F3FE16E) + ((2 * a2) & 0x7E7E80DC) == 1061151086)
  {
    v2 = 68588956;
  }

  else
  {
    v2 = 68543915;
  }

  *(result + 36) = v2;
  return result;
}

uint64_t sub_10010BE30(uint64_t result)
{
  v1 = *(result + 4) ^ (1110906037 * ((((2 * result) | 0xED9F6C22) - result + 154159599) ^ 0x7F88DAA1));
  if (v1 == -210093759 || v1 == -210093748)
  {
    v3 = 53;
  }

  else
  {
    v3 = 52;
  }

  *result = v3;
  return result;
}

void sub_10010BE90(id a1)
{
  v1 = *(&off_1002DD400 + ((97 * (dword_1002E0D10 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295580[byte_10027C8F0[(97 * (dword_1002E0D10 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x45]) + 486);
  v2 = *(v1 - 1925562043);
  v3 = *(&off_1002DD400 + (byte_1002C5F50[byte_1002A9990[(97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))] ^ 0x80] ^ (97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))) + 752);
  v4 = 1912442209 * (&v5[v2 + *(v3 - 1056958627)] ^ 0x71B9CF6610DE981CLL);
  *(v1 - 1925562043) = v4;
  *(v3 - 1056958627) = v4;
  LOBYTE(v4) = 97 * ((v4 - *(v1 - 1925562043)) ^ 0x1C);
  v6 = *(*(&off_1002DD400 + (byte_10027CAF0[byte_1002C5E50[v4] ^ 0x84] ^ v4) + 427) - 1605683619);
  v7 = 929149733 * ((2 * (&v6 & 0x51309E78) - &v6 + 785342854) ^ 0x7FF00AEB) + 1709;
  LOBYTE(v1) = 97 * (*(v1 - 1925562043) ^ 0x1C ^ *(v3 - 1056958627));
  (*(*(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0D10) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 - dword_1002E0D10) ^ 0x1C))] ^ 0xF6]) + 436) + 8 * (byte_100295780[byte_10027CBF0[v1] ^ 0xD4] ^ v1) - 2062659307))(&v6);
}

void sub_10010C11C(_DWORD *a1)
{
  v1 = *a1 ^ (1110906037 * ((2 * (a1 & 0xA309D758) - a1 + 1559636135) ^ 0xD5B14417));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10010C234(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  STACK[0x228] = v23;
  STACK[0x218] = a1;
  v26 = *(v22 + 8 * (v24 + 1353));
  *(v25 - 256) = v22;
  v27 = v26(16);
  v28 = *(v25 - 256);
  STACK[0x270] = 0;
  v29 = *(v28 + 8 * (((v27 == 0) * (((v24 - 8246) | 0x24) - 1058)) | (v24 - 3438)));
  LODWORD(STACK[0x214]) = 68545947;
  LODWORD(STACK[0x32C]) = v24;
  return v29(v27, v30, v31, v32, v33, v34, v35, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_10010C2B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x270] = 0;
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v10 - 208) = a1 + v9;
  return (*(a8 + 8 * (((v8 + 3438) ^ 0x2C6B) + v8 - 5576)))();
}

uint64_t sub_10010C568@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v5 = *(v4 - 208);
  STACK[0x278] = *(a1 + 8 * v2);
  return (*(a1 + 8 * (((v5 != v3) | (16 * (v5 != v3))) ^ (a2 - 150))))();
}

uint64_t sub_10010C5DC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v6 = 313 * (a2 ^ 0x243F);
  v7 = a2 - 5598;
  STACK[0x288] = *(a1 + 8 * v2);
  STACK[0x280] = v3;
  v9 = v3 != v4 && (v5 - 1443455193) < 0xFFFFFFF6;
  return (*(a1 + 8 * ((v9 * (v6 ^ 0x888)) ^ v7)))();
}

uint64_t sub_10010C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x300]) = v9;
  LODWORD(STACK[0x330]) = v8;
  v12 = (*(a8 + 8 * (v10 + 8434)))(32);
  v13 = *(v11 - 256);
  STACK[0x290] = v12 + 0x51CE20ABD81C933BLL;
  return (*(v13 + 8 * (((((v10 + 10) ^ (v12 == 0)) & 1) * (((8 * v10) ^ 0x6040) - 9246)) ^ v10)))();
}

uint64_t sub_10010C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8 + 777;
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(a1 + 16) = v9 + 540060154;
  v13 = (*(a8 + 8 * (v12 ^ 0x2219)))(v9 - 1443464465 + ((v12 + 1926620193) & 0x8D2A347E) + 10);
  v14 = *(v10 - 256);
  *(a1 + 24) = v13;
  return (*(v14 + 8 * (v12 | (32 * (v13 == 0)))))();
}

uint64_t sub_10010C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x240] = v12;
  STACK[0x2B0] = v11;
  LODWORD(STACK[0x230]) = v13;
  v14 = (v10 << ((v8 + 101) & 0x3A ^ 0x39)) + 1408056910;
  LODWORD(STACK[0x200]) = v14;
  LODWORD(STACK[0x310]) = v10 - (v14 & 0xC765C27C) + 229212261;
  LODWORD(STACK[0x2F0]) = 1443455197;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0x300]) - ((2 * LODWORD(STACK[0x300]) + 1408056910) & 0xC765C27C) + 229212261;
  v15 = *(a8 + 8 * ((v8 - 2950) ^ 0x12EA));
  LODWORD(STACK[0x2C0]) = v9 - 7236;
  LODWORD(STACK[0x300]) = LODWORD(STACK[0x330]) ^ 0x49;
  return v15(v13 - ((2 * v13 + 1408056910) & 0xC765C27C) + 229212261, 0x4047F3870E5CC223, 0x6C6988A454026602, 0xFAB71C0E54B706DALL, a5, 0xC4318A842864C03, 0xF11896AF68DDCF6ELL);
}

uint64_t sub_10010C8E0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v10 = *(v4 + 24);
  v11 = __ROR8__((v10 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = v5;
  v13 = ((v11 + v9) | 0xA2229B312F738CC0) - ((v11 + v9) | 0x5DDD64CED08C733FLL) + 0x5DDD64CED08C733FLL;
  v14 = __ROR8__(v13 ^ 0xAF53F5FC7CA59317, 8);
  v13 ^= 0x1BFEDE5218F425C4uLL;
  v15 = (v14 + v13) ^ a4;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (0xA070EEFE36075B38 - ((v17 + v16) | 0xA070EEFE36075B38) + ((v17 + v16) | 0x5F8F1101C9F8A4C7)) ^ 0xC9DE9A199BDC2ECALL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xD38A9EBF6FAA0874) - 0x163AB0A0482AFBC6) ^ 0x2EFBB95CFED94038;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__((((2 * (v23 + v22)) | 0xB5B59E24F4A16DE4) - (v23 + v22) + 0x252530ED85AF490ELL) ^ 0xD699D7BA38D6FAF1, 8);
  v25 = (((2 * (v23 + v22)) | 0xB5B59E24F4A16DE4) - (v23 + v22) + 0x252530ED85AF490ELL) ^ 0xD699D7BA38D6FAF1 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ v7;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0x3EF7DC6160C88618) - (v28 + v27) + 0x608411CF4F9BBCF4) ^ 0x2AFA2E4784E92130;
  v30 = __ROR8__((v10 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v10 + 4) = (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v27, 61))) ^ v6) >> (8 * ((v10 + 4) & 7))) ^ BYTE1(LODWORD(STACK[0x330])) ^ 0xA7;
  v31 = (v30 + v9) ^ 0xB9DC45633787A904;
  v32 = (__ROR8__((v30 + v9) ^ 0xD716ECD53D61FD7, 8) + v31) ^ a4;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v8;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a1;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a2;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v7;
  v41 = __ROR8__(v40, 8);
  v42 = v40 ^ __ROR8__(v39, 61);
  v43 = (((2 * (v41 + v42)) | 0x1E824E7FD8C6CBCELL) - (v41 + v42) + 0x70BED8C0139C9A19) ^ 0x3AC0E748D8EE07DBLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  *(v10 + 5) = LODWORD(STACK[0x300]) ^ (((v45 + v44 - ((2 * (v45 + v44)) & 0x5DC054472D0BC980) - 0x511FD5DC697A1B40) ^ 0x5EDE686226500F3EuLL) >> (8 * ((v10 + 5) & 7)));
  return (*(a3 + 8 * ((v12 - 9214) ^ 0x7CE)))(LODWORD(STACK[0x310]));
}

uint64_t sub_10010CC30(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *(v13 + 24) + v15 - 0x4047F3870E5CC223;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = v8 - (((0x96A5A8A3375C925 - v20) | 0xE3E73D0F9C16A1ACLL) + ((v20 + v18) | 0x1C18C2F063E95E53));
  v22 = __ROR8__(v21 ^ 0xEE9653C2CFC0BE7BLL, 8);
  v21 ^= 0x5A3B786CAB9108A8uLL;
  v23 = (v22 + v21) ^ v16;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = __ROR8__((v25 + v24 - ((2 * (v25 + v24)) & 0x47E36757A390E490) + 0x23F1B3ABD1C87248) ^ 0xB5A038B383ECF845, 8);
  v27 = (v25 + v24 - ((2 * (v25 + v24)) & 0x47E36757A390E490) + 0x23F1B3ABD1C87248) ^ 0xB5A038B383ECF845 ^ __ROR8__(v24, 61);
  v28 = (v26 + v27 - ((2 * (v26 + v27)) & 0xC96D825246A69F1CLL) + 0x64B6C12923534F8ELL) ^ 0xA388372A6A5F0B8CLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xA0D27DCDB70F7796) - (v30 + v29) + 0x2F96C11924784434) ^ 0x23D5D9B166FE0837;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (a3 - ((v33 + v32) | a3) + ((v33 + v32) | 0x9396775BABFD99FDLL)) ^ 0xD0F67F494B5EC98ELL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v11 - ((v36 + v35) | v11) + ((v36 + v35) | 0x7F9E63469A7A075)) ^ 0xB27826435D2AC249;
  v38 = (__ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8) + v18) & 0xF9FFFFFFFFFFFFFFLL;
  v39 = __ROR8__(v38 ^ 0xB716ECD53D61FD7, 8);
  v38 ^= 0xBFDC45633787A904;
  LOBYTE(v37) = (((__ROR8__(v37, 8) + (v37 ^ __ROR8__(v35, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v19 & 7u))) ^ HIBYTE(a1);
  v40 = (v10 - ((v39 + v38) | v10) + ((v39 + v38) | 0x53C292A2A86B328)) ^ 0x5BD26D79E0B36992;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = *(a8 + 8 * v14);
  *v19 = v37 ^ 0x63;
  v43 = (__ROR8__(v40, 8) + v41) ^ v17;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xC73EF603490C4402;
  v46 = __ROR8__(v45, 8);
  v47 = v45 ^ __ROR8__(v44, 61);
  v48 = (v46 + v47) ^ a6;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0xEAACCFDA6BDA5C8ALL) - (v50 + v49) - 0x755667ED35ED2E46) ^ 0xC9C990002AB181C9;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xB581C077348D623CLL;
  v54 = __ROR8__(v53, 8);
  v55 = __ROR8__(v52, 61);
  *(v19 + 1) = (((((2 * (v54 + (v53 ^ v55))) | 0x4F7941F6F7C0CF7CLL) - (v54 + (v53 ^ v55)) - 0x27BCA0FB7BE067BELL) ^ 0xD782E2BACB358C40) >> (8 * ((v19 + 1) & 7))) ^ BYTE2(a1) ^ 0xB2;
  v56 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v57 = (0x96A5A8A3375C925 - v56) & 0x28DC2FE03FC2A4CCLL | (v56 + v18) & 0xD523D01FC03D5B33;
  v58 = v57 ^ 0x27AD412D6C14BB1BLL;
  v57 ^= 0x93006A8308450DC8;
  v59 = __ROR8__(v58, 8);
  v60 = (v12 - ((v59 + v57) | v12) + ((v59 + v57) | 0xE128DBC9577DCABLL)) ^ 0x50FCC9EF5F420611;
  v61 = v60 ^ __ROR8__(v57, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) | 0x568EB83D43A71C0ELL) - (v62 + v61) - 0x2B475C1EA1D38E07) ^ 0xBD16D706F3F7040ALL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xC73EF603490C4402;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ a6;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x43600812E0A35073;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xB581C077348D623CLL;
  *(v19 + 2) = (((__ROR8__(v71, 8) + (v71 ^ __ROR8__(v70, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v19 + 2) & 7))) ^ BYTE1(a1) ^ 0xE1;
  v72 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = v8 - (((0x896A5A8A3375C925 - v72) | 0x5A62C86087E9250ELL) + ((v72 + v18) | 0xA59D379F7816DAF1));
  v74 = v73 ^ 0x5713A6ADD43F3AD9;
  v73 ^= 0xE3BE8D03B06E8C0ALL;
  v75 = __ROR8__(v74, 8);
  v76 = (((2 * (v75 + v73)) & 0x500C176078E0B73CLL) - (v75 + v73) + 0x57F9F44FC38FA461) ^ 0x917B01C09BA7EDBLL;
  v77 = v76 ^ __ROR8__(v73, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ v17;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xC73EF603490C4402;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (v82 + v81 - (a4 & (2 * (v82 + v81))) + v9) ^ a7;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x43600812E0A35073;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xB581C077348D623CLL;
  *(v19 + 3) = a1 ^ (((__ROR8__(v87, 8) + (v87 ^ __ROR8__(v86, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v19 + 3) & 7))) ^ 0x3E;
  return v42(LODWORD(STACK[0x32C]));
}

uint64_t sub_10010D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = STACK[0x330];
  if (LODWORD(STACK[0x330]) == 12350)
  {
    return (*(*(v7 - 256) + 8 * ((v5 + 292) ^ (((v6 == LODWORD(STACK[0x2F0])) << 6) | ((v6 == LODWORD(STACK[0x2F0])) << 7)))))();
  }

  if (v8 == 9164)
  {
    return (*(*(v7 - 256) + 8 * ((4381 * (v6 == v5 + 1443445929)) ^ (v5 - 6272))))(a1, a2, a3, a4, a5, STACK[0x240]);
  }

  v10 = *(v7 - 256);
  if (v8 == 63378)
  {
    return (*(v10 + 8 * ((92 * (((2 * (v6 - (STACK[0x200] & 0x970B2054) - 176410799)) & 0xDFF5EFBC ^ 0x97012014) + ((v6 - (STACK[0x200] & 0x970B2054) - 176410799) ^ 0xA47F67F4) + 2147463082 == ((v5 + 1614614710) & 0x9FC2EFDF ^ 0x6FFA8346))) ^ (v5 - 2953))))(v5);
  }

  else
  {
    return (*(v10 + 8 * (v5 - 6272)))(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_10010FA90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  HIDWORD(a16) = v27;
  v28 = (v24 - 228466914) & 0xD9E1FBE;
  LODWORD(a18) = v25;
  HIDWORD(a13) = v25 + v28 - 1549145976;
  STACK[0x270] = a1;
  return (*(a8 + 8 * (((*(v23 - 0x5A0411E37F4B9882) != 0x51CE20ABD81C933BLL) * ((((v28 - 2121032196) & 0x1E6C5267) - 1619) ^ 0x9B1)) ^ v28)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, v26, a18, a1, a20, a21, a22, a23);
}

uint64_t sub_10010FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * v8);
  *&STACK[0x2E0] = vdupq_n_s64(0x961846080CFECC64);
  *&STACK[0x2F0] = vdupq_n_s64(0xED2B4AEB99146DB4);
  *&STACK[0x200] = vdupq_n_s64(0x96518B1852248A0DLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xC2CD6C5902A67681);
  *&STACK[0x2C0] = vdupq_n_s64(0xCE8E74F140203A82);
  *&STACK[0x260] = vdupq_n_s64(0x994EA89453F324DALL);
  *&STACK[0x300] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  return v9(0x5D07E74F5E63CA88);
}

uint64_t sub_10010FF30@<X0>(int a1@<W3>, int a2@<W5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v31 = a5 ^ 0x2871;
  STACK[0x330] = *(v29 - 0x51CE20ABD81C9323);
  v32 = a5 ^ 0x49;
  v33 = ((a5 ^ 0x2871) - 3563) | 0x2410u;
  v34 = (a29 - 246208155);
  v35 = (v34 << (v32 ^ 0x2Au)) & 0xFDE6F0EELL;
  STACK[0x310] = v35 + (v34 ^ 0x3F6FFFFE7EF37877) - 0x3F6FFFFE7EF37877;
  STACK[0x240] = v33;
  v36 = *(a4 + 8 * (((v33 - 9237) * ((a2 + a1 + 37852003) < 8)) ^ v31));
  return v36(v36, v35, v34 ^ 0x3F6FFFFE7EF37877, 498871312, 0x14B312494547F7FALL, v30, a3, a4, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_100110084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = (v19 + 4877);
  v21 = 0x3F6FFFFE7EF37877 - a19 + STACK[0x330] - a3 - a2;
  STACK[0x240] = v20;
  v22 = *(a8 + 8 * ((91 * (((v19 + 18) ^ (v21 < v20 - 9256)) & 1)) ^ v19));
  return v22((v19 + 3602), v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1001101B8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int8x16_t a25, int8x16_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int64x2_t a39, int8x16_t a40, int8x16_t a41, int8x16_t a42, int8x16_t a43, int64x2_t a44, int8x16_t a45, int8x16_t a46, int8x16_t a47, int8x16_t a48, int8x16_t a49, int8x16_t a50, int8x16_t a51, int64x2_t a52, int8x16_t a53, int64x2_t a54)
{
  v64 = (a1 + v62 + 8);
  v65.i64[0] = v57 + v64;
  v65.i64[1] = v57 + (a2 + v62 + 8);
  v66.i64[0] = v57 + (v58 + v62 + v54 + 8);
  v67.i64[0] = v57 + (a6 + v62 + 8);
  v67.i64[1] = v57 + (v60 + v62 + 8);
  v66.i64[1] = v57 + (v59 + v62 + 8);
  *&STACK[0x240] = v66;
  v68.i64[0] = v57 + (v56 + v62 + 8);
  v68.i64[1] = v57 + (v55 + v62 + 8);
  v69 = vandq_s8(v68, v63);
  v70 = vandq_s8(v67, v63);
  v71 = vandq_s8(v65, v63);
  v72 = vandq_s8(v66, *&STACK[0x300]);
  v73 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v77 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v73, v73), *&STACK[0x2F0]), *&STACK[0x2E0]), v73);
  v78 = vandq_s8(vaddq_s64(vaddq_s64(v76, v76), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v79 = vandq_s8(vaddq_s64(vaddq_s64(v75, v75), *&STACK[0x2F0]), *&STACK[0x2E0]);
  *&STACK[0x230] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v74, v74), *&STACK[0x2F0]), *&STACK[0x2E0]), v74);
  v80 = vaddq_s64(vsubq_s64(v78, v76), a44);
  v81 = vaddq_s64(vsubq_s64(v79, v75), a44);
  v82 = veorq_s8(v81, a41);
  v83 = veorq_s8(v80, a41);
  v84 = veorq_s8(v80, a51);
  v85 = veorq_s8(v81, a51);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84), a50);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85), a50);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v90 = veorq_s8(v86, v87);
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), *&STACK[0x200]);
  v94 = veorq_s8(v92, *&STACK[0x200]);
  v95 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v97 = veorq_s8(v93, v95);
  v98 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v97);
  v100 = vaddq_s64(v98, v96);
  v72.i64[0] = -1;
  v72.i64[1] = -1;
  v101 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v100, a43), a53), veorq_s8(vandq_s8(v100, a40), a48)), v72), *&STACK[0x260]);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v103 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v99, a43), a53), veorq_s8(vandq_s8(v99, a40), a48)), v72), *&STACK[0x260]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v105 = veorq_s8(v101, v102);
  v106 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105);
  v108 = vaddq_s64(v106, v104);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, *&STACK[0x2B0]), vorrq_s8(v107, a39)), a39), *&STACK[0x2C0]);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, *&STACK[0x2B0]), vorrq_s8(v108, a39)), a39), *&STACK[0x2C0]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v112 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v112);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), a45), v114), a52), a49);
  v116 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), a45), v113), a52), a49);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = veorq_s8(v115, v116);
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v119);
  v122 = veorq_s8(vaddq_s64(v120, v118), a42);
  v123 = veorq_s8(v121, a42);
  v124 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v125 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v126 = veorq_s8(v122, v124);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vaddq_s64(v77, a44);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v126);
  v130 = vaddq_s64(v127, v125);
  v167.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), a47), v129), a54), a46), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), a26)));
  v167.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), a47), v130), a54), a46), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), a26)));
  v131 = veorq_s8(v128, a41);
  v132 = veorq_s8(v128, a51);
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), a50);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), *&STACK[0x200]);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v137, a43), a53), veorq_s8(vandq_s8(v137, a40), a48)), v72), *&STACK[0x260]);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v140, *&STACK[0x2B0]), vorrq_s8(v140, a39)), a39), *&STACK[0x2C0]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v143, v143), a45), v143), a52), a49);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), a42);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL)));
  v148 = vaddq_s64(*&STACK[0x230], a44);
  v167.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v147, v147), a47), v147), a54), a46), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), a26)));
  v149 = veorq_s8(v148, a41);
  v150 = veorq_s8(v148, a51);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), a50);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), *&STACK[0x200]);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v155, a43), a53), veorq_s8(vandq_s8(v155, a40), a48)), v72), *&STACK[0x260]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, *&STACK[0x2B0]), vorrq_s8(v158, a39)), a39), *&STACK[0x2C0]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), a45), v161), a52), a49);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a42);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL)));
  v167.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), a47), v165), a54), a46), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), a26)));
  *(a5 + v64 + a4) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v167, a25)), *(v57 + v64 - 7));
  return (*(a7 + 8 * (((v61 == v62) * a8) ^ a3)))();
}

uint64_t sub_1001107C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  v23 = (v22 + 514) | 0x30;
  v24 = (v22 + 462361911) & 0xE470ECFA;
  LODWORD(STACK[0x230]) = v23;
  STACK[0x240] = v24;
  return (*(a8 + 8 * (((v23 + v24 - 16972) * (a21 == v21)) ^ v22)))(a1, a2, a3, 498871312, 0x14B312494547F7FALL, 0xCE8E74F140203A82, 0x5049DE6DBE28F8E9);
}

uint64_t sub_1001109D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int8x16_t a40, int64x2_t a41, int8x16_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, int64x2_t a46, int8x16_t a47, int8x16_t a48, int8x16_t a49, int8x16_t a50, int8x16_t a51, int8x16_t a52, int8x16_t a53, int64x2_t a54, int8x16_t a55, int64x2_t a56)
{
  v72 = (a25 + v61 + 16);
  v73.i64[0] = v58 + v72;
  v73.i64[1] = v58 + (HIDWORD(a25) + v61 + 16);
  v74 = v73;
  v246 = v73;
  v75.i64[0] = v58 + (v71 + v61 + 16);
  v75.i64[1] = v58 + (v70 + v61 + 16);
  v76.i64[0] = v58 + (v69 + v61 + 16);
  v76.i64[1] = v58 + (v68 + v61 + 16);
  v77.i64[0] = v58 + (v67 + v61 + 16);
  v77.i64[1] = v58 + (a4 + v61 + 16);
  v73.i64[0] = v58 + (v66 + v61 + 16);
  v73.i64[1] = v58 + (v65 + v61 + 16);
  *&STACK[0x230] = v73;
  v73.i64[0] = v58 + (v64 + v61 + 16);
  v73.i64[1] = v58 + (v63 + v61 + 16);
  *&STACK[0x240] = v73;
  v73.i64[0] = v58 + (v62 + v61 + 16);
  v73.i64[1] = v58 + (a7 + v61 + 16);
  v248 = v73;
  v78 = vandq_s8(v77, *&STACK[0x300]);
  v79 = vandq_s8(v76, *&STACK[0x300]);
  v80 = vandq_s8(v75, *&STACK[0x300]);
  v81 = vandq_s8(v74, *&STACK[0x300]);
  v82 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v247 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v82, v82), *&STACK[0x2F0]), *&STACK[0x2E0]), v82);
  v86 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v83, v83), *&STACK[0x2F0]), *&STACK[0x2E0]), v83);
  v87 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v85, v85), *&STACK[0x2F0]), *&STACK[0x2E0]), v85), a46);
  v88 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v84, v84), *&STACK[0x2F0]), *&STACK[0x2E0]), v84), a46);
  v89 = veorq_s8(v88, a43);
  v90 = veorq_s8(v87, a43);
  v91 = veorq_s8(v87, a53);
  v92 = veorq_s8(v88, a53);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), a52);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v92), a52);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v97 = veorq_s8(v93, v95);
  v98 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v97);
  v100 = veorq_s8(vaddq_s64(v98, v96), *&STACK[0x200]);
  v101 = veorq_s8(v99, *&STACK[0x200]);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v103 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v104 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v103);
  v106 = vaddq_s64(v104, v102);
  v74.i64[0] = -1;
  v74.i64[1] = -1;
  v107 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v106, a45), a55), veorq_s8(vandq_s8(v106, a42), a50)), v74), *&STACK[0x260]);
  v108 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v105, a45), a55), veorq_s8(vandq_s8(v105, a42), a50)), v74), *&STACK[0x260]);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v110 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v111 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v113 = vaddq_s64(v111, v109);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, *&STACK[0x2B0]), vorrq_s8(v112, a41)), a41), *&STACK[0x2C0]);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, *&STACK[0x2B0]), vorrq_s8(v113, a41)), a41), *&STACK[0x2C0]);
  v116 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v118 = veorq_s8(v114, v116);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v118);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v117);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), a47), v120), a54), a51);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), a47), v119), a54), a51);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v124 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v125 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v124);
  v127 = veorq_s8(vaddq_s64(v125, v123), a44);
  v128 = veorq_s8(v126, a44);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v130 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v131 = veorq_s8(v127, v129);
  v132 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v134 = vdupq_n_s64(v56);
  v135 = vaddq_s64(v86, a46);
  v136 = vaddq_s64(v133, v131);
  v137 = vaddq_s64(v132, v130);
  v249.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), a49), v136), a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(v77, 3uLL), v134)));
  v249.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), a49), v137), a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v134)));
  v138 = veorq_s8(v135, a43);
  v139 = veorq_s8(v135, a53);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), a52);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), *&STACK[0x200]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145.i64[0] = -1;
  v145.i64[1] = -1;
  v146 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v144, a45), a55), veorq_s8(vandq_s8(v144, a42), a50)), v145), *&STACK[0x260]);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v148, *&STACK[0x2B0]), vorrq_s8(v148, a41)), a41), *&STACK[0x2C0]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v151, v151), a47), v151), a54), a51);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), a44);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v154.i64[0] = v58 + (a6 + v61 + 16);
  v154.i64[1] = v58 + (a5 + v61 + 16);
  v157 = vaddq_s64(v156, v155);
  v158 = vsubq_s64(vorrq_s8(vaddq_s64(v157, v157), a49), v157);
  v159 = vandq_s8(v154, *&STACK[0x300]);
  v160 = vaddq_s64(v247, a46);
  v249.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v158, a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v134)));
  v161 = veorq_s8(v160, a43);
  v162 = veorq_s8(v160, a53);
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), a52);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), *&STACK[0x200]);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v167, a45), a55), veorq_s8(vandq_s8(v167, a42), a50)), v145), *&STACK[0x260]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, *&STACK[0x2B0]), vorrq_s8(v170, a41)), a41), *&STACK[0x2C0]);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), a47), v173), a54), a51);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), a44);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v179 = vandq_s8(v248, *&STACK[0x300]);
  v180 = vaddq_s64(v178, v177);
  v181 = vandq_s8(*&STACK[0x240], *&STACK[0x300]);
  v249.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v180, v180), a49), v180), a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(v246, 3uLL), v134)));
  v182 = vandq_s8(*&STACK[0x230], *&STACK[0x300]);
  v183 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v187 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v183, v183), *&STACK[0x2F0]), *&STACK[0x2E0]), v183);
  v188 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v186, v186), *&STACK[0x2F0]), *&STACK[0x2E0]), v186), a46);
  v189 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v185, v185), *&STACK[0x2F0]), *&STACK[0x2E0]), v185), a46);
  v247.i64[0] = vqtbl4q_s8(v249, a40).u64[0];
  v190 = veorq_s8(v189, a43);
  v249.val[1] = veorq_s8(v188, a43);
  v249.val[2] = veorq_s8(v188, a53);
  v191 = veorq_s8(v189, a53);
  v249.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249.val[1], 0x38uLL), v249.val[1], 8uLL), v249.val[2]), a52);
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191), a52);
  v193 = vsraq_n_u64(vshlq_n_s64(v249.val[2], 3uLL), v249.val[2], 0x3DuLL);
  v249.val[2] = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = veorq_s8(v249.val[1], v193);
  v195 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249.val[1], 0x38uLL), v249.val[1], 8uLL), v194);
  v249.val[1] = veorq_s8(vaddq_s64(v195, v249.val[2]), *&STACK[0x200]);
  v197 = vsraq_n_u64(vshlq_n_s64(v249.val[2], 3uLL), v249.val[2], 0x3DuLL);
  v198 = veorq_s8(v196, *&STACK[0x200]);
  v249.val[2] = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v199 = veorq_s8(v249.val[1], v197);
  v200 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249.val[1], 0x38uLL), v249.val[1], 8uLL), v199);
  v249.val[1] = vaddq_s64(v200, v249.val[2]);
  v202.i64[0] = -1;
  v202.i64[1] = -1;
  v203.i64[0] = -1;
  v203.i64[1] = -1;
  v249.val[1] = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v249.val[1], a45), a55), veorq_s8(vandq_s8(v249.val[1], a42), a50)), v202), *&STACK[0x260]);
  v204 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v201, a45), a55), veorq_s8(vandq_s8(v201, a42), a50)), v202), *&STACK[0x260]);
  v205 = vsraq_n_u64(vshlq_n_s64(v249.val[2], 3uLL), v249.val[2], 0x3DuLL);
  v249.val[2] = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v206 = veorq_s8(v249.val[1], v205);
  v207 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249.val[1], 0x38uLL), v249.val[1], 8uLL), v206);
  v249.val[1] = vaddq_s64(v207, v249.val[2]);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v208, *&STACK[0x2B0]), vorrq_s8(v208, a41)), a41), *&STACK[0x2C0]);
  v249.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v249.val[1], *&STACK[0x2B0]), vorrq_s8(v249.val[1], a41)), a41), *&STACK[0x2C0]);
  v249.val[2] = veorq_s8(v249.val[1], vsraq_n_u64(vshlq_n_s64(v249.val[2], 3uLL), v249.val[2], 0x3DuLL));
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v249.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249.val[1], 0x38uLL), v249.val[1], 8uLL), v249.val[2]);
  v249.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v249.val[1], v249.val[1]), a47), v249.val[1]), a54), a51);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v211, v211), a47), v211), a54), a51);
  v213 = vsraq_n_u64(vshlq_n_s64(v249.val[2], 3uLL), v249.val[2], 0x3DuLL);
  v249.val[2] = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v214 = veorq_s8(v249.val[1], v213);
  v215 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249.val[1], 0x38uLL), v249.val[1], 8uLL), v214);
  v249.val[1] = veorq_s8(vaddq_s64(v215, v249.val[2]), a44);
  v217 = vsraq_n_u64(vshlq_n_s64(v249.val[2], 3uLL), v249.val[2], 0x3DuLL);
  v218 = veorq_s8(v216, a44);
  v249.val[2] = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v219 = veorq_s8(v249.val[1], v217);
  v220 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v249.val[1], 0x38uLL), v249.val[1], 8uLL);
  v249.val[1] = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v184, v184), *&STACK[0x2F0]), *&STACK[0x2E0]), v184), a46);
  v222 = vaddq_s64(v221, v219);
  v249.val[2] = vaddq_s64(v220, v249.val[2]);
  v250.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v222, v222), a49), v222), a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), v134)));
  v250.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v249.val[2], v249.val[2]), a49), v249.val[2]), a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(v248, 3uLL), v134)));
  v223 = veorq_s8(v249.val[1], a43);
  v249.val[1] = veorq_s8(v249.val[1], a53);
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v249.val[1]), a52);
  v249.val[1] = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v249.val[1]), *&STACK[0x200]);
  v249.val[1] = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v249.val[1]);
  v227 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v226, a45), a55), veorq_s8(vandq_s8(v226, a42), a50)), v203), *&STACK[0x260]);
  v249.val[1] = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v249.val[1]);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228, *&STACK[0x2B0]), vorrq_s8(v228, a41)), a41), *&STACK[0x2C0]);
  v249.val[1] = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v249.val[1]);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v230, v230), a47), v230), a54), a51);
  v249.val[1] = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v249.val[1]), a44);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL)));
  v249.val[1] = vaddq_s64(v187, a46);
  v250.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), a49), v233), a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), v134)));
  v234 = veorq_s8(v249.val[1], a43);
  v249.val[1] = veorq_s8(v249.val[1], a53);
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v249.val[1]), a52);
  v249.val[1] = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v249.val[1]), *&STACK[0x200]);
  v249.val[1] = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v249.val[1]);
  v238 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v237, a45), a55), veorq_s8(vandq_s8(v237, a42), a50)), v203), *&STACK[0x260]);
  v249.val[1] = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v249.val[1]);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v239, *&STACK[0x2B0]), vorrq_s8(v239, a41)), a41), *&STACK[0x2C0]);
  v249.val[1] = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v249.val[1]);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v241, v241), a47), v241), a54), a51);
  v249.val[1] = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL));
  v243 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v249.val[1]), a44);
  v244 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v249.val[1], 3uLL), v249.val[1], 0x3DuLL)));
  v250.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v244, v244), a49), v244), a56), a48), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x230], 3uLL), v134)));
  v249.val[0].i64[0] = v247.i64[0];
  v249.val[0].i64[1] = vqtbl4q_s8(v250, a40).u64[0];
  v249.val[0] = vrev64q_s8(v249.val[0]);
  *(a1 + v72 + v57) = veorq_s8(vextq_s8(v249.val[0], v249.val[0], 8uLL), *(v58 + v72 - 15));
  return (*(a8 + 8 * (((v60 == v61) * a9) ^ v59)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_10011171C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v21 = (a1 - 1778459249) & 0x6A01273C;
  STACK[0x240] = v21;
  return (*(a8 + 8 * ((((a21 & 8) == v21 - 9272) * ((12 * (a1 ^ 0x1D4F)) ^ 0x24CE)) ^ a1)))();
}

uint64_t sub_100111790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x240];
  LODWORD(STACK[0x230]) = STACK[0x240];
  return (*(a8 + 8 * (v8 - 531)))();
}

uint64_t sub_1001117A8@<X0>(int a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v24 = (v9 + v17);
  v25 = STACK[0x330] + v24;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((2 * v26 - 0x12D4B51466EB924CLL) & 0x961846080CFECC64) - v26 - 0x41A1C879D3099D0DLL;
  v28 = v27 ^ 0x3982B236AA56861ALL;
  v29 = v27 ^ v21;
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x5EEE4453CA35DABALL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v6;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (((v33 + v34) & v20 ^ v22) + ((v33 + v34) & v18 ^ v19) - 1) ^ v23;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v14 - ((v37 + v36) | v14) + ((v37 + v36) | v10)) ^ a3;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((v8 & (2 * (v40 + v39))) - (v40 + v39) + a4) ^ v13;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v12;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  *(v11 + v24 + STACK[0x310]) = ((((a6 | (2 * (v45 + v44))) - (v45 + v44) + a2) ^ v16) >> (8 * (v25 & 7u))) ^ *v25;
  return (*(a5 + 8 * (((v9 - 1 == a1) * v15) ^ v7)))();
}

uint64_t sub_100111980@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = ((v3 - 1530340096) & 0x5B3704E6 ^ 0x23188D54) + a2;
  v5 = 205985962 - *(v2 - 0x51CE20ABD81C932BLL);
  v6 = v4 < (v3 ^ 0x960D2FDD);
  v7 = v4 > v5;
  if (v6 != v5 < 0x960D0DE2)
  {
    v7 = v6;
  }

  return (*(a1 + 8 * ((90 * v7) ^ v3)))();
}

uint64_t sub_100111A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v34 = ((2 * (a33 - 246208155)) & 0x1BFFF65FELL) + ((a33 - 246208155) ^ 0x4DDFF9BDDFFFB2FFLL) + a20;
  v35 = v34 - 0x4DDFF9BDDFFFB2FFLL;
  *v35 = 0;
  *(v34 + (v33 + 7406) - 0x4DDFF9BDDFFFD9BALL) = 0;
  *(v35 + 3) = 0;
  *(((2 * (a33 - 246208151)) & 0x17FFEC5FALL) + ((a33 - 246208151) ^ 0xF6A79FEFBFFF62FDLL) + a20 + 0x958601040009D03) = -9392;
  v36 = ((2 * (a33 - 246208149)) & 0x1BCF775F2) + ((a33 - 246208149) ^ 0xCBDF7D9FDE7BBAF9) + a20 + 0x3420826021844507;
  *v36 = 0;
  *(v36 + 2) = 0;
  *(v36 + 3) = (0x80 - ((32 - 2 * a17) & 0x20 | a17)) ^ 0x70;
  return (*(a8 + 8 * (v33 ^ (29 * ((a18 ^ 0xF5EDEFDF9A956FFFLL) + 2 * a18 == 0xF5EDEFDF9A956FFFLL)))))();
}

uint64_t sub_100111C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 199319723 * ((((v10 - 192) | 0x3C89FF89) + (~(v10 - 192) | 0xC3760076)) ^ 0x89791140);
  *(v10 - 192) = v11 + v9 + 5732;
  *(v10 - 184) = STACK[0x270];
  *(v10 - 176) = v8 - v11 + (v9 ^ 0xB963C2C1);
  *(v10 - 168) = STACK[0x228];
  v12 = (*(a8 + 8 * (v9 ^ 0x3813)))(v10 - 192);
  return (*(*(v10 - 256) + 8 * v9))(v12);
}

uint64_t sub_100111CBC@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = v5 < v2;
  *(v4 + a2) = 0;
  if (v7 == ((v3 - 768215762) & 0x2DCA27BF ^ 0x26BCuLL) + a2 > 0xFFFFFFFF4DA035E0)
  {
    v7 = v2 + a2 + 1 < v5;
  }

  return (*(a1 + 8 * ((!v7 * v6) ^ v3)))();
}

uint64_t sub_100111D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 ^ 0x3714;
  v12 = 1084270361 * ((-523925994 - ((v10 - 192) ^ 0x83CC0E7B | 0xE0C58616) + ((v10 - 192) ^ 0x83CC0E7B | 0x1F3A79E9)) ^ 0x50DF8888);
  *(v10 - 192) = v9 - v12 + (v8 ^ 0x3714) + 85328923;
  *(v10 - 168) = STACK[0x270];
  *(v10 - 184) = STACK[0x228];
  *(v10 - 176) = (v8 ^ 0x3714) - v12 - 2641;
  v13 = (*(a8 + 8 * (v8 ^ 0xCA6)))(v10 - 192);
  return (*(*(v10 - 256) + 8 * v11))(v13);
}

uint64_t sub_100111E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  STACK[0x338] = 0x1FF58764F6B227ECLL;
  v18 = (*(a8 + 8 * (v15 ^ 0x3AF7)))(16);
  v19 = *(v17 - 256);
  STACK[0x260] = v18 + v16;
  v20 = *(v19 + 8 * ((((((v15 - 2232) ^ (v18 == 0)) & 1) == 0) * (v15 - 4782)) ^ v15));
  STACK[0x258] = STACK[0x270];
  HIDWORD(a11) = 1443455193;
  return v20(v18, v21, v22, v23, v24, v25, v26, v19, a9, 0x4DC5C22F5BDB8B24, a11, a12, a13, 0, a15);
}

uint64_t sub_100111EE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  HIDWORD(a11) = 1443455193;
  return (*(a8 + 8 * v15))(a1, a2, a3, a4, a5, 0x1FF58764F6B227ECLL, a7, a8, a9, a10, a11, a12, a13, 0, a15);
}

uint64_t sub_100111F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  STACK[0x258] = v25;
  STACK[0x310] = a6;
  v27 = a6 - 0x1FF587648F5E0AECLL > 0x67541CFF && a6 - 0x1FF587648F5E0AECLL < (a24 - 379489436) + (v24 ^ 0x6754101EuLL);
  v28 = *(a8 + 8 * ((v27 * (v24 ^ 0x2728)) ^ v24));
  LODWORD(STACK[0x300]) = 68588956;
  return v28();
}

uint64_t sub_100112154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (v8 + 4495) | 0x418;
  v16 = (*(a4 + v11) << 24) | (*(a4 + v11 + 1) << 16) | (*(a4 + v11 + 2) << 8) | *(a4 + (v12 ^ 0xE00A789B094DFC2FLL) + a6);
  v17 = (v16 ^ (v15 + 1581992647)) - 138546726 + (v9 & (2 * v16));
  v18 = a2 - 138546726;
  LOWORD(v16) = _byteswap_ushort(*(((2 * (v10 + a6 + 4)) & 0x73F1FFFFBDDFED0ELL) + ((v10 + a6 + 4) ^ 0x79F8FFFFDEEFF687) + a4 - 0x79F8FFFFDEEFF687));
  v19 = (v16 - 2 * (v16 & 0x274B ^ *(((2 * (v10 + a6 + 4)) & 0x73F1FFFFBDDFED0ELL) + ((v10 + a6 + 4) ^ 0x79F8FFFFDEEFF687) + a4 - 0x79F8FFFFDEEFF686) & 2) - 22707);
  switch(v19)
  {
    case 9168:
      return (*(a8 + 8 * (((v13 - 2786) * (v18 == 1443455201)) ^ (v13 - 5506))))(a4);
    case 63382:
      v21 = *(a8 + 8 * (((((v13 - 248834111) & 0xED4C6FF) - 745) * (v17 == 1443455193)) | (v13 - 5930)));
      STACK[0x310] = a3 + 10;
      LODWORD(STACK[0x300]) = 68588956;
      return v21(a1, a2, a3, a4, a5, a6);
    case 12354:
      return (*(a8 + 8 * ((10878 * (v18 == 1114 * (v13 ^ 0x243B) + 1443451855)) ^ (v13 - 5506))))(a4);
    default:
      *(v14 - 224) = STACK[0x260];
      v22 = *(a8 + 8 * ((83 * (v13 ^ 0x2407) - 4389) ^ (v13 - 8187)));
      STACK[0x258] = a4;
      return v22();
  }
}

uint64_t sub_100112698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x230]) = -687084744;
  v10 = *(a8 + 8 * (v8 - 4010));
  STACK[0x220] = v9 - 228;
  return v10(v8);
}

uint64_t sub_100112774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x230]) = -409713498;
  v63 = *(a8 + 8 * (a1 - 4010));
  STACK[0x220] = v62 - 196;
  return v63(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1001127A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v10 - 240);
  STACK[0x2A0] = *(a8 + 8 * v8);
  *(v10 - 248) = 0x51CE20ABD81C933BLL;
  return (*(a8 + 8 * (((16 * (v11 != v9)) | ((v11 != v9) << 6)) ^ (a1 - 5907))))();
}

uint64_t sub_1001127F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * (a1 - 1487));
  STACK[0x240] = v8 - 248;
  return v9();
}

uint64_t sub_100112860@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 8 * v4);
  v8 = *(a3 + 8 * ((115 * ((((a1 - 7208) ^ (a4 == v6)) & 1) == 0)) ^ (a1 - 3974)));
  STACK[0x290] = v5;
  STACK[0x280] = a2;
  STACK[0x200] = v7;
  return v8();
}

void sub_100112948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8 != 68588956)
  {
    if (v8 == 68545953)
    {
      __asm { BRAA            X11, X17 }
    }

    __asm { BRAA            X8, X17 }
  }

  v12 = *(v11 - 216);
  v13 = *(v12 - 0x51CE20ABD81C9333);
  *(v9 - 0x51CE20ABD81C9333) = v13;
  *(v9 - 0x51CE20ABD81C933BLL) = *(v12 - 0x51CE20ABD81C933BLL);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1001142CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a8 + 8 * (v8 ^ 0x356A)))();
  v12 = *(v10 - 256);
  *(v9 - 0x51CE20ABD81C9323) = 0;
  return (*(v12 + 8 * v8))(v11);
}

void sub_1001144D4(uint64_t a1)
{
  v1 = 678427121 * (((a1 | 0x855C6492) - (a1 & 0x855C6492)) ^ 0x17863E88);
  v2 = *(a1 + 32) - v1;
  v3 = *(a1 + 16) ^ v1;
  if (*(a1 + 24))
  {
    v4 = v3 == 1438749912;
  }

  else
  {
    v4 = 1;
  }

  v7 = v4 || *(a1 + 8) == 0 || *(a1 + 40) == 0x31622ABED37A5258;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001145D8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, int a27)
{
  v32 = (((v31 ^ 0x358B) + 5257) ^ 0xE71A854A) + a1;
  v33 = 199319723 * ((&a22 & 0x7CBD4E58 | ~(&a22 | 0x7CBD4E58)) ^ 0x36B25F6F);
  a22 = v33 + 4867 + (v31 ^ 0x358B);
  a23 = v29;
  a24 = v32 + v33;
  a25 = v30;
  a26 = v27;
  v34 = (*(v28 + 8 * (v31 ^ 0xF1E)))(&a22);
  return (*(v28 + 8 * (v31 ^ 0x358B | (32 * (a27 == 68588956)))))(v34);
}

uint64_t sub_10011468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, int a34)
{
  v41 = 199319723 * (&a29 ^ 0xB5F0EEC8);
  a29 = v41 + (v40 ^ 0x338A) + 3332;
  a31 = v39 + v41;
  a30 = v36;
  a32 = v37;
  a33 = v34;
  v42 = (*(v35 + 8 * ((v40 ^ 0x338A) + 5012)))(&a29);
  return (*(v35 + 8 * (((a34 == v38) * ((((v40 ^ 0x338A) - 1024761698) & 0x3D14ADEB) - 9463)) | v40 ^ 0x338A)))(v42);
}

uint64_t sub_100114724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, int a34)
{
  v40 = v39 - 1722;
  v41 = 199319723 * (((&a29 | 0x8A85F27) - &a29 + (&a29 & 0xF757A0D8)) ^ 0xBD58B1EF);
  a31 = v38 + v41;
  a32 = v37;
  a33 = v34;
  a29 = v41 + v40 + 1332;
  a30 = v36;
  v42 = (*(v35 + 8 * (v40 + 3012)))(&a29);
  return (*(v35 + 8 * (((a34 == v40 + 68581196) * ((v40 + 825825163) & 0xCEC6EF2E ^ 0x250E)) | v40)))(v42);
}

uint64_t sub_1001147E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, int a34)
{
  v40 = v39 - 1977;
  v41 = 199319723 * (((~&a29 & 0x5DA7B814) - (~&a29 | 0x5DA7B815)) ^ 0xE85756DD);
  a31 = v38 + v41;
  a29 = v41 + v40 + 3309;
  a32 = v37;
  a33 = v34;
  a30 = v36;
  v42 = (*(v35 + 8 * (v40 + 4989)))(&a29);
  return (*(v35 + 8 * (((a34 == ((v40 + 3699) ^ 0x416B096)) * (v40 - 5723)) ^ v40)))(v42);
}

uint64_t sub_100114888()
{
  v2 = *(*(&off_1002DD400 + ((v1 + 2150) ^ 0x1C52)) - 2136706666);
  if (v2)
  {
    v3 = v2 == 0x510808E226CB14FCLL;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v0 + 8 * ((v4 * (((v1 + 2150) ^ 0x1824) - 1265)) ^ (v1 + 2150))))();
}

uint64_t sub_1001148E8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 2136706674;
  v6 = (*(v3 + 8 * (v2 ^ 0x37D6)))(a1 - 0x510808E226CB14FCLL);
  *(v5 + 8) = v4;
  return (*(v3 + 8 * v2))(v6);
}

uint64_t sub_10011493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(&off_1002DD400 + v15 - 1374);
  (*(v14 + 8 * (v15 + 8912)))(v16 - 515190054, sub_100191B00);
  (*(v14 + 8 * (v15 + 8817)))(*(&off_1002DD400 + v15 - 1563) - 1423619907);
  (*(v14 + 8 * (v15 + 8912)))(v16 - 515190054, sub_100191B00);
  v17 = *(*(&off_1002DD400 + (v15 ^ 0x636)) - 949491762);
  return (*(v14 + 8 * ((58 * (((-81 * (v15 ^ 0xCF) + (v15 ^ 0xD3) + 1) ^ (v17 == 0)) & 1)) ^ v15)))(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100114B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int32x2_t a27, int32x2_t a28)
{
  v34 = *(*(v33 + v30) + (*(a8 + v29) & 0x497D621C));
  a27 = 0;
  a28 = v28;
  v35 = 16777619 * ((1232953884 * v34 + 7) ^ (1232953884 * v34)) % 7;
  v36 = *(&a27 | v35);
  *(&a27 | v35) = 0;
  a27.i8[7] = v36;
  v37 = 16777619 * ((1232953884 * v34 + 6) ^ (1232953884 * v34)) % 6;
  v38 = *(&a27 | v37);
  *(&a27 | v37) = a27.i8[6];
  a27.i8[6] = v38;
  v39 = 16777619 * ((1232953884 * v34 + 5) ^ (1232953884 * v34)) % 5;
  v40 = *(&a27 | v39);
  *(&a27 | v39) = a27.i8[5];
  a27.i8[5] = v40;
  v41 = a27.i8[0];
  a27.i8[0] = a27.i8[4];
  a27.i8[4] = v41;
  v42 = 16777619 * (((1232953884 * v34) | 3) ^ (1232953884 * v34)) % 3;
  v43 = *(&a27 | v42);
  *(&a27 | v42) = a27.i8[3];
  a27.i8[3] = v43;
  v44 = *(a27.i16 + 1);
  a27.i8[2] = a27.i8[0];
  a27.i16[0] = v44;
  v45 = vdup_n_s32(1232953884 * v34);
  v46.i32[0] = v45.i32[0];
  v46.i32[1] = (1232953884 * v34) | 1;
  v47 = veor_s8(vmul_s32(v46, v45), v45);
  a27 = vmla_s32(v47, a27, vdup_n_s32(0x1000193u));
  *&a28 ^= *&a27;
  v48 = vmul_s32(vsub_s32(a28, v47), vdup_n_s32(0x359C449Bu));
  a28 = v48;
  *(a28.i16 + 1) = v48.i16[0];
  a28.i8[0] = v48.i8[2];
  v49 = (&a28 | v42);
  LOBYTE(v44) = *v49;
  *v49 = v48.i8[3];
  a28.i8[3] = v44;
  LOBYTE(v49) = a28.i8[0];
  a28.i8[0] = a28.i8[4];
  a28.i8[4] = v49;
  v50 = (&a28 | v39);
  LOBYTE(v49) = *v50;
  *v50 = a28.i8[5];
  a28.i8[5] = v49;
  v51 = (&a28 | v37);
  LOBYTE(v50) = *v51;
  *v51 = a28.i8[6];
  a28.i8[6] = v50;
  v52 = (&a28 | v35);
  v53 = *v52;
  *v52 = a28.i8[7];
  a28.i8[7] = v53;
  v54 = a28;
  v55 = (1232953884 * a28.i32[0]) ^ v34;
  for (i = 1; i != 5; ++i)
  {
    v57 = 16777619 * ((v55 + i) ^ v55) % i;
    v58 = *(*&v54 + 8 * v57) ^ *(*&v54 + 8 * i);
    *(*&v54 + 8 * i) = v58;
    v59 = *(*&v54 + 8 * v57) ^ v58;
    *(*&v54 + 8 * v57) = v59;
    *(*&v54 + 8 * i) ^= v59;
  }

  v60 = 0;
  v61 = xmmword_1002A9AD0;
  v62 = xmmword_1002A9AE0;
  v63 = xmmword_1002A9AF0;
  v64 = xmmword_1002A9B00;
  v65.i64[0] = 0x9B009B009B009BLL;
  v65.i64[1] = 0x9B009B009B009BLL;
  v66.i64[0] = 0x1000000010;
  v66.i64[1] = 0x1000000010;
  v67 = vdupq_n_s32(v55);
  do
  {
    v68 = *(*&v54 + v60);
    v69 = vmovl_high_u8(v68);
    v70 = vmovl_u8(*v68.i8);
    v81.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v63, v67), vsubq_s32(v63, v67)), v67), vmull_high_u16(v70, v65));
    v81.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v62, v67), vsubq_s32(v62, v67)), v67), vmull_u16(*v69.i8, 0x9B009B009B009BLL));
    v81.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v64, v67), vsubq_s32(v64, v67)), v67), vmull_u16(*v70.i8, 0x9B009B009B009BLL));
    v81.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v61, v67), vsubq_s32(v61, v67)), v67), vmull_high_u16(v69, v65));
    *(*&v54 + v60) = vqtbl4q_s8(v81, xmmword_1002A9B10);
    v60 += 16;
    v64 = vaddq_s32(v64, v66);
    v63 = vaddq_s32(v63, v66);
    v62 = vaddq_s32(v62, v66);
    v61 = vaddq_s32(v61, v66);
  }

  while (v60 != 32);
  v71 = 0;
  v72 = xmmword_1002A9B20;
  v73 = xmmword_1002A9B30;
  v74 = vdupq_n_s32(v55);
  v75 = *&v54 + 32;
  v76.i64[0] = 0x9B009B009B009BLL;
  v76.i64[1] = 0x9B009B009B009BLL;
  v77.i64[0] = 0x800000008;
  v77.i64[1] = 0x800000008;
  do
  {
    v78 = vmovl_u8(*(v75 + v71));
    v80.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v72, v74), vsubq_s32(v72, v74)), v74), vmull_high_u16(v78, v76));
    v80.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v73, v74), vsubq_s32(v73, v74)), v74), vmull_u16(*v78.i8, 0x9B009B009B009BLL));
    *(v75 + v71) = vqtbl2q_s8(v80, xmmword_1002A9B40).u64[0];
    v73 = vaddq_s32(v73, v77);
    v72 = vaddq_s32(v72, v77);
    v71 += 8;
  }

  while (v71 != 8);
  *(a6 + a7) = a28;
  return (*(v31 + 8 * (v32 - 1842)))(v72, v73);
}

uint64_t sub_100114ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(a4 + a5) = v22 + ((v23 - 1930733692) & 0x7314A56F) - 9481;
  (*(v24 + 8 * (v23 ^ 0x1BF)))(v27 + v26, sub_100191B00);
  return (*(v24 + 8 * ((11 * ((((v23 - 780) ^ (*(a22 - 949491762) == 0)) & 1) == 0)) ^ v23)))(*(a22 - 949491762), v28, v29, v30, v31, v32, v33, v34, a9, v25);
}

uint64_t sub_100115124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, int a34)
{
  v42 = *(v34 + a7);
  v37 = *(v34 - 0x2087B04485EAB678);
  v38 = 1110906037 * (((a15 | 0x8AF93B8569AF30E5) - (a15 & 0x8AF93B8569AF30E5)) ^ 0x3762C9F9AD347D95);
  a34 = v38 + v36 + 667167570 + 62;
  v41 = v37;
  a30 = v37 - v38;
  LODWORD(a32) = (v36 + 667167570) ^ v38;
  a33 = v38 + 1443455193;
  LODWORD(a31) = ((v36 + 667167570) ^ 0x464) - v38;
  HIDWORD(a31) = v36 - v38 - 590969807;
  LODWORD(a29) = 1110906037 * (((a15 | 0x69AF30E5) - (a15 & 0x69AF30E5)) ^ 0xAD347D95);
  v39 = (*(v35 + 8 * (v36 ^ 0xCB6)))(&a29);
  return (*(v35 + 8 * SHIDWORD(a32)))(v39, 2705363092, 2851512103, 4294958012, 0x2087B04485EAB71CLL, a20, 0xDF784FBB7A15498CLL, 0xDF784FBB7A15493CLL, v41, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v42, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1001154FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(a8 + v19 - 1) = ((v16 + v18) ^ v22) * (v18 - 108);
  v23 = *(v20 + 8 * (((v19 == 1) * v21) | v17));
  return v23(v23, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001155F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (*(v20 + 8 * a12))(*(v21 + a8) - 0x2B1A0449E8A6C928);
  *(v21 - 0x2087B04485EAB6C4) = 0x2B1A0449E8A6C928;
  return (*(v20 + 8 * (v22 - 1933)))(v23, 2705363092, 2851512103, 4294958012, 0x2087B04485EAB71CLL, a20, 0xDF784FBB7A15498CLL);
}

uint64_t sub_10011569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (*(v20 + 8 * (v22 ^ 0xC21)))(*(v21 - 0x2087B04485EAB68CLL) - 0x2B1A0449E8A6C928);
  *(v21 - 0x2087B04485EAB68CLL) = 0x2B1A0449E8A6C928;
  return (*(v20 + 8 * a13))(v23, 2705363092, 2851512103, 4294958012, 0x2087B04485EAB71CLL, a20, 0xDF784FBB7A15498CLL, 0xDF784FBB7A15493CLL);
}

uint64_t sub_1001159F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, char a30, int a31, unsigned int a32, int a33)
{
  *(a19 + 16) = 646931922;
  *(a19 + 24) = a5;
  v35 = 301143701 * ((2 * (&a29 & 0x69C6C060) - &a29 - 1774633057) ^ 0xED91A2ED);
  a30 = 21 - v35;
  a29 = v35 ^ 0x2D;
  a32 = 875502210 - v35;
  a33 = v34 - v35 + 4094;
  v36 = (*(v33 + 8 * (v34 ^ 0x274A)))(&a29);
  return (*(v33 + 8 * v34))(v36);
}

uint64_t sub_100115AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  (*(v22 + 8 * (v23 + 6265)))(a18 - 515190054, sub_100191B00);
  v24 = ((*(a22 - 949491762) == 0) ^ ((v23 - 38) ^ (v23 - 1))) & 1;
  return (*(v22 + 8 * (v24 | (2 * v24) | v23)))();
}

uint64_t sub_100115C00@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int32x2_t a19, int32x2_t a20)
{
  v24 = 0;
  v25 = *(*(a4 - 543004047) + (*(a5 - 1805449270) & 0x497D621C));
  a19 = 0;
  v26 = 16777619 * ((1232953884 * v25 + 7) ^ (1232953884 * v25)) % 7;
  v27 = 16777619 * ((1232953884 * v25 + 6) ^ (1232953884 * v25)) % 6;
  v28 = 16777619 * ((1232953884 * v25 + 5) ^ (1232953884 * v25)) % 5;
  v29 = *(&a19 | v26);
  *(&a19 | v26) = 0;
  v30 = *(&a19 | v27);
  *(&a19 | v27) = a19.i8[6];
  v31 = *(&a19 | v28);
  *(&a19 | v28) = a19.i8[5];
  a20 = v20;
  v32 = 16777619 * (((1232953884 * v25) | 3) ^ (1232953884 * v25)) % 3;
  v33 = vdup_n_s32(1232953884 * v25);
  v34.i32[0] = v33.i32[0];
  v34.i32[1] = (1232953884 * v25) | 1;
  a19.i8[7] = v29;
  v35 = veor_s8(vmul_s32(v34, v33), v33);
  a19.i8[6] = v30;
  a19.i8[5] = v31;
  v36 = a19.i8[0];
  a19.i8[0] = a19.i8[4];
  a19.i8[4] = v36;
  v37 = *(&a19 | v32);
  *(&a19 | v32) = a19.i8[3];
  a19.i8[3] = v37;
  v38 = *(a19.i16 + 1);
  a19.i8[2] = a19.i8[0];
  a19.i16[0] = v38;
  a19 = vmla_s32(v35, a19, vdup_n_s32(0x1000193u));
  v39 = a20;
  v40 = (1232953884 * a20.i32[0]) ^ v25;
  v41 = vdupq_n_s32(v40);
  v42 = xmmword_1002A9AD0;
  v43 = xmmword_1002A9AE0;
  v44 = xmmword_1002A9AF0;
  v45 = xmmword_1002A9B00;
  v46.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v47.i64[0] = 0x9393939393939393;
  v47.i64[1] = 0x9393939393939393;
  v48.i64[0] = 0x1000000010;
  v48.i64[1] = 0x1000000010;
  do
  {
    v49 = *(*&v39 + v24);
    v70.val[1] = veorq_s8(vqtbl1q_s8(v49, xmmword_1002A9B50), veorq_s8(v41, vmulq_s32(vaddq_s32(v44, v41), vsubq_s32(v44, v41))));
    v70.val[0] = veorq_s8(vqtbl1q_s8(v49, xmmword_1002A9B60), veorq_s8(v41, vmulq_s32(vaddq_s32(v45, v41), vsubq_s32(v45, v41))));
    v70.val[2] = veorq_s8(vqtbl1q_s8(v49, xmmword_1002A9B70), veorq_s8(v41, vmulq_s32(vaddq_s32(v43, v41), vsubq_s32(v43, v41))));
    v70.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v49, xmmword_1002A9B80), v41), vmulq_s32(vaddq_s32(v42, v41), vsubq_s32(v42, v41)));
    *(*&v39 + v24) = vmulq_s8(vqtbl4q_s8(v70, xmmword_1002A9B10), v47);
    v24 += 16;
    v45 = vaddq_s32(v45, v48);
    v44 = vaddq_s32(v44, v48);
    v43 = vaddq_s32(v43, v48);
    v42 = vaddq_s32(v42, v48);
  }

  while (v24 != 32);
  v50 = 0;
  v51 = xmmword_1002A9B20;
  v52 = vdupq_n_s32(v40);
  v53 = xmmword_1002A9B30;
  v54 = *&v39 + 32;
  v55.i64[0] = 0x800000008;
  v55.i64[1] = 0x800000008;
  do
  {
    v46.i64[0] = *(v54 + v50);
    v69.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v46, xmmword_1002A9B50), v52), vmulq_s32(vaddq_s32(v51, v52), vsubq_s32(v51, v52)));
    v69.val[0] = veorq_s8(vqtbl1q_s8(v46, xmmword_1002A9B60), veorq_s8(v52, vmulq_s32(vaddq_s32(v53, v52), vsubq_s32(v53, v52))));
    v46 = vqtbl2q_s8(v69, xmmword_1002A9B40);
    *(v54 + v50) = vmul_s8(*v46.i8, 0x9393939393939393);
    v53 = vaddq_s32(v53, v55);
    v51 = vaddq_s32(v51, v55);
    v50 += 8;
  }

  while (v50 != 8);
  v56 = 4;
  do
  {
    v57 = 16777619 * ((v40 + v56) ^ v40) % v56;
    v58 = *(*&v39 + 8 * v57) ^ *(*&v39 + 8 * v56);
    *(*&v39 + 8 * v56) = v58;
    v59 = *(*&v39 + 8 * v57);
    v60 = v59 ^ v58;
    *(*&v39 + 8 * v57) = v60;
    *(*&v39 + 8 * v56) ^= v60;
    v61 = v56-- + 1;
  }

  while (v61 > 2);
  v62 = a20.i8[v26];
  a20.i8[v26] = a20.i8[7];
  a20.i8[7] = v62;
  v63 = a20.i8[v27];
  a20.i8[v27] = a20.i8[6];
  a20.i8[6] = v63;
  v64 = a20.i8[v28];
  a20.i8[v28] = a20.i8[5];
  a20.i8[5] = v64;
  v65 = a20.i8[0];
  a20.i8[0] = a20.i8[4];
  a20.i8[4] = v65;
  v66 = a20.i8[v32];
  a20.i8[v32] = a20.i8[3];
  a20.i8[3] = v66;
  v67 = *(a20.i16 + 1);
  a20.i8[2] = a20.i8[0];
  a20.i16[0] = v67;
  a20 = vmla_s32(v35, a20, vdup_n_s32(0x1000193u));
  *(v22 + v23) = *&a20 ^ *&a19;
  return (*(v21 + 8 * a2))(v61, v60, v59, &a19 | v28, v29, v30, v31, a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_100116058()
{
  v2 = v1 ^ 9;
  v3 = (*(v0 + 8 * (v2 + 3712)))();
  return (*(v0 + 8 * v2))(v3);
}

uint64_t sub_100116084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(v18 + 8 * (v17 + 8010)))(v19 + v20, sub_100191B00);
  v21 = (*(v18 + 8 * (v17 + 8013)))(a17 - 1423619907);
  return (*(v18 + 8 * v17))(v21);
}

void sub_1001161F0(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (199319723 * ((1198858565 - (a1 | 0x47752145) + (a1 | 0xB88ADEBA)) ^ 0xD7A3072));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100116468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, unsigned int a5@<W5>, int a6@<W8>)
{
  v13 = v10 + (a5 | ((a5 < v6) << 32)) * v9;
  v14 = a1 + v13;
  *v14 = v12;
  *(v14 + 8) = a2;
  *(v7 + v13) = a3;
  return (*(v11 + 8 * (((a5 == v8) * a4) ^ a6)))();
}

uint64_t sub_100116730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, uint64_t a25)
{
  v29 = *(v25 + v27 * a3 - 0x7772EBF04C35A34DLL);
  v30 = 143055461 * (((&a19 | 0x9F84DAE864959A98) - (&a19 & 0x9F84DAE864959A98)) ^ 0x6DDB071E1A03CE05);
  a20 = a8;
  a21 = a14;
  a19 = a13;
  a25 = v29 - v30 + ((v28 + 4900) | 0x110u) - 7970 - 2 * ((v29 + 0x1E5853716F14D110) & 0x632D6F2A0A2230EFLL ^ v29 & 0xE) - 0x7E7A3D6486C906E1;
  a22 = (v28 - 2613) ^ v30;
  a24 = a12 ^ v30;
  v31 = (*(v26 + 8 * (v28 ^ 0x3A77)))(&a19);
  return (*(v26 + 8 * ((15256 * (a23 == 68588956)) ^ v28)))(v31);
}

uint64_t sub_10011687C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v28 = *(v23 - 0x93C9FB87E111F05) + v27 * v24;
  v29 = (v28 - 0x7772EBF04C35A355);
  v30 = *(v28 - 0x7772EBF04C35A34DLL);
  v31 = *(v28 - 0x7772EBF04C35A345);
  LODWORD(v29) = *v29;
  a21 = v22 + (a17 - 1225770739) * v24;
  a22 = v31;
  a20 = v30 + a10;
  LODWORD(a19) = v29 ^ a10;
  HIDWORD(a19) = (v25 - 138) ^ a10;
  a18 = v23;
  (*(a15 + 8 * (v25 ^ 0x2164)))(&a18);
  HIDWORD(a16) += HIBYTE(a17) & ((123 * (v25 ^ 0x91)) ^ 0x30);
  return (*(a15 + 8 * v25))(v26, 0x76033F380F177029, 24, 4295, 898824139, 4294959135, 2178, v22, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1001169D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v22 = (*(v19 + 8 * (v20 + 5483)))(*(v18 - 0x93C9FB87E111F05) - 0x7772EBF04C35A355);
  *(v18 - 0x93C9FB87E111F05) = a8;
  *(v18 - 0x93C9FB87E111F09) = a10;
  *(v18 - 0x93C9FB87E111F0DLL) = a18;
  return (*(v19 + 8 * v20))(v22);
}

void sub_100116A9C(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0B48) ^ 0x1C)) ^ byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 - dword_1002E0B48) ^ 0x1C))] ^ 0xA8]) + 37);
  v3 = *(v2 - 1560801155);
  v4 = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * ((dword_1002E0DA8 - v3) ^ 0x1C))] ^ 0xF4] ^ (97 * ((dword_1002E0DA8 - v3) ^ 0x1C))) + 676);
  v5 = 1912442209 * ((*(v4 - 1056958627) - v3) ^ &v9 ^ 0x71B9CF6610DE981CLL);
  *(v2 - 1560801155) = v5;
  *(v4 - 1056958627) = v5;
  LOBYTE(v5) = 97 * ((v5 + *(v2 - 1560801155)) ^ 0x1C);
  v6 = *(&off_1002DD400 + (((97 * (dword_1002E0B48 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_10027CCF0[byte_1002C6050[(97 * (dword_1002E0B48 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x7A]) | 0x200u)) - 2062743291;
  v7 = (*&v6[8 * (v5 ^ byte_100295680[byte_10027C9F0[v5] ^ 0xF6]) + 85248])(a2);
  v8 = 97 * ((*(v4 - 1056958627) - *(v2 - 1560801155)) ^ 0x1C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100116DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, uint64_t a13)
{
  v17 = *(v14 + 32);
  a11 = v16 + 143055461 * ((((2 * &a11) | 0x374EC49C) - &a11 - 463954510) ^ 0x653136D3) + 4164;
  a12 = v17;
  a13 = v13;
  v18 = (*(v15 + 8 * (v16 ^ 0x3878)))(&a11);
  return (*(v15 + 8 * v16))(v18);
}

void sub_100116E68(uint64_t a1)
{
  v1 = *(a1 + 12) - 662767087 * (((a1 | 0xA101D19E) - (a1 & 0xA101D19E)) ^ 0x85B2BADA);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100116F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v3 + 8 * (v4 + 7184)))(a2);
  *v2 = 0;
  return (*(v3 + 8 * v4))(a1);
}

void sub_100116F8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v13 = 0;
  v14 = 0;
  *&v12[28] = 0;
  v3 = &v11;
  if ((-&v11 & 4) != 0)
  {
    v11 = 0;
    v3 = v12;
  }

  v4 = 32 - (-&v11 & 4);
  if (v4 >= 8)
  {
    v5 = v4 >> 3;
    v6 = ((v4 >> 3) + 7) >> 3;
    if (v4 >> 3 > 3)
    {
      if (v4 >> 3 <= 5)
      {
        if (v5 == 4)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v5 == 6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v4 >> 3 > 1)
    {
      if (v5 == 2)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (!v5)
    {
      goto LABEL_15;
    }

    while (1)
    {
      *v3 = 0;
      v3 += 2;
      if (!--v6)
      {
        break;
      }

LABEL_15:
      *v3 = 0;
      v3 += 2;
LABEL_16:
      *v3 = 0;
      v3 += 2;
LABEL_17:
      *v3 = 0;
      v3 += 2;
LABEL_18:
      *v3 = 0;
      v3 += 2;
LABEL_19:
      *v3 = 0;
      v3 += 2;
LABEL_20:
      *v3 = 0;
      v3 += 2;
LABEL_21:
      *v3 = 0;
      v3 += 2;
    }
  }

  v7 = v1 - 143055461 * ((2 * (a1 & 0x7EEAB83C) - a1 + 18171843) ^ 0x7F83135E);
  v8 = v4 & 7;
  if (v8 <= 3)
  {
    if ((v4 & 7) <= 1)
    {
      if ((v4 & 7) == 0)
      {
LABEL_40:
        v9 = *(&off_1002DD400 + v7 - 8344) - 2062743291;
        v10 = *&v9[8 * (((((v7 + 55) ^ ((*&v9[8 * v7 + 14568])(v2) == 0)) & 1) * (v7 ^ 0x22A3)) ^ v7)];
        __asm { BRAA            X8, X17 }
      }

LABEL_39:
      *v3 = 0;
      goto LABEL_40;
    }

    if (v8 == 2)
    {
LABEL_38:
      *v3 = 0;
      v3 = (v3 + 1);
      goto LABEL_39;
    }

LABEL_37:
    *v3 = 0;
    v3 = (v3 + 1);
    goto LABEL_38;
  }

  if ((v4 & 7) > 5)
  {
    if (v8 != 6)
    {
      *v3 = 0;
      v3 = (v3 + 1);
    }

    *v3 = 0;
    v3 = (v3 + 1);
  }

  else if (v8 == 4)
  {
    goto LABEL_36;
  }

  *v3 = 0;
  v3 = (v3 + 1);
LABEL_36:
  *v3 = 0;
  v3 = (v3 + 1);
  goto LABEL_37;
}

uint64_t sub_100117170(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  (*(v2 + 8 * ((v3 ^ 0x38EC) + 3933)))(v1, va);
  v5 = (*(v2 + 8 * ((v3 ^ 0x38EC) + 4041)))(v1, *(v4 + 8 * ((v3 ^ 0x38EC) - 6017)) - 183299186, va1) == 0;
  return (*(v2 + 8 * ((v5 * (((5 * (v3 ^ 0x260F) + 2059550932) & 0x853DBDD7) - 5491)) ^ v3 ^ 0x38EC)))();
}

uint64_t sub_10011720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, int a25, char *a26, uint64_t a27, int *a28, int a29, uint64_t a30, char *a31)
{
  v34 = a22;
  if (((&a10 ^ &a17) & 4) == 0)
  {
    v38 = &a10;
    v39 = &a17;
    if ((-&a10 & 4) != 0)
    {
      a17 = a10;
      v38 = &a11;
      v39 = &a18;
    }

    v40 = 32 - (-&a10 & 4);
    if (v40 >= 8)
    {
      v41 = v40 >> 3;
      v42 = ((v40 >> 3) + 7) >> 3;
      if (v40 >> 3 > 3)
      {
        if (v40 >> 3 <= 5)
        {
          if (v41 == 4)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        if (v41 == 6)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (v40 >> 3 > 1)
      {
        if (v41 == 2)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (!v41)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v50 = *v38;
        v38 += 8;
        *v39 = v50;
        v39 += 2;
        if (!--v42)
        {
          break;
        }

LABEL_19:
        v43 = *v38;
        v38 += 8;
        *v39 = v43;
        v39 += 2;
LABEL_20:
        v44 = *v38;
        v38 += 8;
        *v39 = v44;
        v39 += 2;
LABEL_21:
        v45 = *v38;
        v38 += 8;
        *v39 = v45;
        v39 += 2;
LABEL_22:
        v46 = *v38;
        v38 += 8;
        *v39 = v46;
        v39 += 2;
LABEL_23:
        v47 = *v38;
        v38 += 8;
        *v39 = v47;
        v39 += 2;
LABEL_24:
        v48 = *v38;
        v38 += 8;
        *v39 = v48;
        v39 += 2;
LABEL_25:
        v49 = *v38;
        v38 += 8;
        *v39 = v49;
        v39 += 2;
      }
    }

    v51 = v40 & 7;
    if (v51 <= 3)
    {
      if (v51 <= 1)
      {
        if (!v51)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      if (v51 == 2)
      {
LABEL_42:
        v57 = *v38++;
        *v39 = v57;
        v39 = (v39 + 1);
LABEL_43:
        *v39 = *v38;
        goto LABEL_44;
      }

LABEL_41:
      v56 = *v38++;
      *v39 = v56;
      v39 = (v39 + 1);
      goto LABEL_42;
    }

    if (v51 > 5)
    {
      if (v51 != 6)
      {
        v52 = *v38++;
        *v39 = v52;
        v39 = (v39 + 1);
      }

      v53 = *v38++;
      *v39 = v53;
      v39 = (v39 + 1);
    }

    else if (v51 == 4)
    {
      goto LABEL_40;
    }

    v54 = *v38++;
    *v39 = v54;
    v39 = (v39 + 1);
LABEL_40:
    v55 = *v38++;
    *v39 = v55;
    v39 = (v39 + 1);
    goto LABEL_41;
  }

  v35 = 0;
  do
  {
    v36 = (&a17 + v35);
    v37 = *(&a10 + v35 + 4);
    *v36 = *(&a10 + v35);
    v36[1] = v37;
    v35 += 8;
  }

  while (v35 != 32);
LABEL_44:
  v58 = 1949688233 * ((~&a25 & 0x45FCAAA968E8C316 | &a25 & 0xBA03555697173CE9) ^ 0xB1CB84878FAF959DLL);
  a28 = &a17;
  a30 = a1;
  a31 = &a15;
  a26 = &a23;
  a27 = v34 - v58;
  a25 = (v33 + 765) ^ v58;
  v59 = (*(v31 + 8 * (v32 + 1897)))(&a25);
  return (*(v31 + 8 * (((a29 == 0) * ((v33 + 1832755548) ^ 0x6D3DAE0C ^ (v33 + 1832755548) & 0x92C25FF7 ^ 0xE12)) ^ v33)))(v59);
}

uint64_t sub_1001174B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  (*(v21 + 8 * (v22 ^ 0x3385)))(v20, v23 + v24, a3, a20);
  v25 = (*(v21 + 8 * (v22 ^ 0x3053)))(v20);
  return (*(v21 + 8 * v22))(v25);
}

uint64_t sub_10011750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  (*(v25 + 8 * (v24 + 4886)))(v23);
  a23 = v24 + 662767087 * (((&a21 | 0x25A24F1) + (~&a21 | 0xFDA5DB0E)) ^ 0x26E94FB4) - 1495;
  a21 = &a14;
  v26 = (*(v25 + 8 * (v24 ^ 0x3CCB)))(&a21);
  return (*(v25 + 8 * v24))(v26);
}

void sub_1001175CC(uint64_t a1)
{
  v4 = *(a1 + 40) == 0x2B1A0449E8A6C928 || *(a1 + 8) == 0 || *a1 == 0x2B1A0449E8A6C928;
  v1 = *(a1 + 16) - 1110906037 * ((~a1 & 0x5EE18530 | a1 & 0xA11E7ACF) ^ 0xD7A6E980);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10011772C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  LODWORD(STACK[0x624]) = v49;
  STACK[0x2F0] = &STACK[0x111BBCE88DD4D1B6];
  STACK[0x318] = &STACK[0x669619EB6CDC2622];
  v53 = *(a1 + 48) + v51 == a9 + v50 - 4356 - 3938;
  v54 = *(a5 + 8 * (v50 ^ 0x22A9)) - 497488119;
  v55 = *(a5 + 8 * (v50 - 7489)) - 40428447;
  v56 = *(a5 + 8 * (v50 - 7623)) - 1468502371;
  STACK[0x2F8] = &STACK[0x6766E6DBB1D64A39];
  STACK[0x2D8] = &STACK[0x6766E6DBB1D64619];
  STACK[0x3A8] = &STACK[0x111BBCE88DD4D32E];
  HIDWORD(a27) = *(a1 + 52) - v51;
  HIDWORD(a41) = v50;
  v57 = *(a8 + 8 * ((v53 * (1657 * (v50 ^ 0x2067) - 3079)) ^ v50));
  STACK[0x628] = a8;
  STACK[0x2A8] = v54;
  STACK[0x2E8] = v55;
  STACK[0x2E0] = v56;
  return v57(a1, 0x6766E6DBB1D63FA1, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a4, &STACK[0x743644F7CD5D8079], &STACK[0x743644F7CD5D83B1], &STACK[0x743644F7CD5D80E9], &STACK[0x743644F7CD5D81C9], &STACK[0x743644F7CD5D8121], &STACK[0x743644F7CD5D8131], &STACK[0x743644F7CD5D7FF9], &STACK[0x743644F7CD5D82D9], a3, a27, &STACK[0x743644F7CD5D7F69], &STACK[0x743644F7CD5D8311], &STACK[0x743644F7CD5D7FC9], &STACK[0x743644F7CD5D8419], &STACK[0x743644F7CD5D8031], &STACK[0x743644F7CD5D84A1], v51, a2, &STACK[0x669619EB6CDC24B2], &STACK[0x743644F7CD5D8001], &STACK[0x743644F7CD5D8061], &STACK[0x669619EB6CDC27F2], v52 + 0x669619EB6CDC1E4ALL, a41, &STACK[0x111BBCE88DD4D0AE], a1, &STACK[0x743644F7CD5D80A1], a45, &STACK[0x111BBCE88DD4D276], &STACK[0x6766E6DBB1D64941], &STACK[0x111BBCE88DD4D3F6], a49);
}

uint64_t sub_1001179B0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  LODWORD(STACK[0x77C]) = a2;
  v3 = (*(a1 + 8 * (v2 ^ 0x26E0)))(49);
  v4 = STACK[0x628];
  STACK[0x9F0] = v3;
  return (*(v4 + 8 * (((v3 == 0) * ((v2 - 3098) ^ 0x14AF)) ^ v2)))();
}

uint64_t sub_100117A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8 - 1280822616 + 189 * (v9 ^ 0xF74u);
  *(a1 + v15) = *(*(&off_1002DD400 + (v9 ^ 0xEF9)) + (v15 & 0xF) - 1023455147) ^ *(v11 + v15) ^ *(*(&off_1002DD400 + v9 - 3594) + (v15 & 0xF) - 995007690) ^ (79 * (v15 & 0xF)) ^ (25 * (v15 & 0xF)) ^ *(*(&off_1002DD400 + (v9 ^ 0xF86)) + (v15 & 0xF) - 1771945786) ^ *(v12 + (v15 & 0xF)) ^ *((v15 & 0xF) + v14 + 6) ^ *(v13 + (v15 & 0xF));
  return (*(a8 + 8 * ((224 * (v8 - 1 == v10)) ^ v9)))();
}

uint64_t sub_100117C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v11 + 1312) = v10;
  LODWORD(STACK[0xAD4]) = v8;
  v12 = (*(a8 + 8 * (v9 + 7311)))(16);
  return (*(STACK[0x628] + 8 * (((v12 == 0) * (5 * (((v9 - 2798) | 0x143) ^ 0x3F2) - 899)) ^ v9)))();
}

uint64_t sub_100117C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v9 + 912) = a1 + a7;
  *(v9 + 392) = *(a8 + 8 * v8);
  return (*(a8 + 8 * (((v8 + 1975) ^ 0xD88) + v8)))();
}

uint64_t sub_100117ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v9 = *(v8 + 912);
  *(v8 + 728) = v9;
  return (*(a7 + 8 * (((v9 == a6) * (((a8 + 1247401206) & 0xB5A60F7F ^ 0xFFFFEC4C) + (a8 ^ 0xE26))) | a8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100117F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 6282)))(32);
  v10 = STACK[0x628];
  STACK[0x968] = v9 + 0x51CE20ABD81C933BLL;
  return (*(v10 + 8 * (((v9 != 0) * (((v8 + 471) ^ 0xFFFFCB7D) + v8 + 5932)) ^ v8)))();
}

uint64_t sub_100117FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(a1 + 16) = 1983515363;
  v10 = (*(a8 + 8 * (v8 + 350)))(26);
  v11 = STACK[0x628];
  *(a1 + 24) = v10;
  return (*(v11 + 8 * ((((((v8 ^ 0xED) + 1) ^ (v10 == 0)) & 1) * (((v8 - 986546244) & 0x3ACD7DF6) - 9669)) ^ v8)))();
}

uint64_t sub_1001180BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v21 = *v12 + v14 - 0x4047F3870E5CC223;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v18 - (((0x96A5A8A3375C925 - v22) | 0xE3E73D0F9C16A1ACLL) + ((v22 + 0x7695A575CC8A36DALL) | 0x1C18C2F063E95E53));
  v24 = __ROR8__(v23 ^ 0xEE9653C2CFC0BE7BLL, 8);
  v23 ^= 0x5A3B786CAB9108A8uLL;
  v25 = (v24 + v23) ^ v13;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0x47E36757A390E490) + 0x23F1B3ABD1C87248) ^ 0xB5A038B383ECF845;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__((v30 + v29 - ((2 * (v30 + v29)) & 0xC96D825246A69F1CLL) + 0x64B6C12923534F8ELL) ^ 0xA388372A6A5F0B8CLL, 8);
  v32 = (v30 + v29 - ((2 * (v30 + v29)) & 0xC96D825246A69F1CLL) + 0x64B6C12923534F8ELL) ^ 0xA388372A6A5F0B8CLL ^ __ROR8__(v29, 61);
  v33 = (((2 * (v31 + v32)) & 0xA0D27DCDB70F7796) - (v31 + v32) + 0x2F96C11924784434) ^ 0x23D5D9B166FE0837;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (a1 - ((v35 + v34) | a1) + ((v35 + v34) | 0x9396775BABFD99FDLL)) ^ 0xD0F67F494B5EC98ELL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (__ROR8__((v21 + 1) & 0xFFFFFFFFFFFFFFF8, 8) + 0x7695A575CC8A36DALL) & 0xF9FFFFFFFFFFFFFFLL;
  v40 = __ROR8__(v39 ^ 0xB716ECD53D61FD7, 8);
  v39 ^= 0xBFDC45633787A904;
  LOBYTE(v36) = (((__ROR8__((v10 - ((v38 + v37) | v10) + ((v38 + v37) | 0x7F9E63469A7A075)) ^ 0xB27826435D2AC249, 8) + ((v10 - ((v38 + v37) | v10) + ((v38 + v37) | 0x7F9E63469A7A075)) ^ 0xB27826435D2AC249 ^ __ROR8__(v37, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v21 & 7u))) ^ HIBYTE(a6);
  v41 = (v9 - ((v40 + v39) | v9) + ((v40 + v39) | 0x53C292A2A86B328)) ^ 0x5BD26D79E0B36992;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = *(a5 + 8 * v15);
  *v21 = v36 ^ 0x63;
  v44 = (__ROR8__(v41, 8) + v42) ^ 0x96518B1852248A0DLL;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v42, 61);
  v47 = (v45 + v46) ^ 0xC73EF603490C4402;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xC4318A842864C03;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = __ROR8__((((2 * (v51 + v50)) & 0xEAACCFDA6BDA5C8ALL) - (v51 + v50) - 0x755667ED35ED2E46) ^ 0xC9C990002AB181C9, 8);
  v53 = (((2 * (v51 + v50)) & 0xEAACCFDA6BDA5C8ALL) - (v51 + v50) - 0x755667ED35ED2E46) ^ 0xC9C990002AB181C9 ^ __ROR8__(v50, 61);
  v54 = (v52 + v53) ^ 0xB581C077348D623CLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  *(v21 + 1) = (((((2 * (v56 + v55)) | 0x4F7941F6F7C0CF7CLL) - (v56 + v55) - 0x27BCA0FB7BE067BELL) ^ 0xD782E2BACB358C40) >> (8 * ((v21 + 1) & 7))) ^ BYTE2(a6) ^ 0xB2;
  v57 = __ROR8__((v21 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v58 = (0x96A5A8A3375C925 - v57) & 0x28DC2FE03FC2A4CCLL | (v57 + 0x7695A575CC8A36DALL) & 0xD523D01FC03D5B33;
  v59 = v58 ^ 0x27AD412D6C14BB1BLL;
  v58 ^= 0x93006A8308450DC8;
  v60 = __ROR8__(v59, 8);
  v61 = (v11 - ((v60 + v58) | v11) + ((v60 + v58) | 0xE128DBC9577DCABLL)) ^ 0x50FCC9EF5F420611;
  v62 = v61 ^ __ROR8__(v58, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) | 0x568EB83D43A71C0ELL) - (v63 + v62) - 0x2B475C1EA1D38E07) ^ 0xBD16D706F3F7040ALL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xC73EF603490C4402;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xC4318A842864C03;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x43600812E0A35073;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xB581C077348D623CLL;
  *(v21 + 2) = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v21 + 2) & 7))) ^ BYTE1(a6) ^ 0xE1;
  v73 = __ROR8__((v21 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = v18 - (((0x896A5A8A3375C925 - v73) | 0x5A62C86087E9250ELL) + ((v73 + 0x7695A575CC8A36DALL) | 0xA59D379F7816DAF1));
  v75 = v74 ^ 0x5713A6ADD43F3AD9;
  v76 = v74 ^ v16;
  v77 = __ROR8__(v75, 8);
  v78 = ((v19 & (2 * (v77 + v76))) - (v77 + v76) + v20) ^ v8;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x96518B1852248A0DLL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xC73EF603490C4402;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (v84 + v83 - (a4 & (2 * (v84 + v83))) + a8) ^ v17;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x43600812E0A35073;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0xB581C077348D623CLL;
  *(v21 + 3) = a6 ^ (((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v88, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v21 + 3) & 7))) ^ 0x3E;
  return v43();
}

uint64_t sub_1001187D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x590];
  if (LODWORD(STACK[0x590]) == 49033)
  {
    return (*(STACK[0x628] + 8 * ((v5 - 2868) ^ (59 * (LODWORD(STACK[0x520]) == LODWORD(STACK[0x5C0]))))))();
  }

  if (v6 == 30757)
  {
    v9 = LODWORD(STACK[0xD78]) - ((2 * LODWORD(STACK[0xD78])) & 0xB1DE0D20) + ((v5 - 734) ^ 0xFFFFF038) + 1492059848;
    return (*(STACK[0x628] + 8 * ((v5 + 4355) ^ (2 * (((2 * v9) & 0xA66FFBE6 ^ 0xA04E0920) + (v9 ^ 0x8BD8FB63) + 1876721309 != 1125416080)))))(a1, a2, 0x2D2B4AEB99146DB4);
  }

  else
  {
    v8 = STACK[0x628];
    if (v6 == 44155)
    {
      return (*(v8 + 8 * ((4529 * (LODWORD(STACK[0xD68]) == v5 + 1443450387)) ^ (v5 - 1074))))(a1, a2, 0x2D2B4AEB99146DB4, a4, a5, 0x5EEE4453CA35DABALL);
    }

    else
    {
      return (*(v8 + 8 * (v5 + 3103)))(a1, a2, 0x2D2B4AEB99146DB4, a4, a5, 0x5EEE4453CA35DABALL);
    }
  }
}

uint64_t sub_10011E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *(a8 + 8 * (a65 + 2121));
  LODWORD(a13) = a1;
  v75 = v67;
  v76 = a2 + a1 + v72;
  *&STACK[0x440] = vdupq_n_s64(0x38uLL);
  *&STACK[0x360] = vdupq_n_s64(0xDBF086EE80E068F2);
  *&STACK[0x370] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(0xF703346ABE37D62CLL);
  *&STACK[0x350] = vdupq_n_s64(0x2887031EB93491BAuLL);
  *&STACK[0x320] = vdupq_n_s64(0x9FC19AABFBDF4258);
  *&STACK[0x330] = vdupq_n_s64(0xD87AD12BCA74F052);
  *&STACK[0x300] = vdupq_n_s64(0x901164E02F7DA9DELL);
  *&STACK[0x430] = vdupq_n_s64(a6);
  *&STACK[0x420] = vdupq_n_s64(a7);
  *&STACK[0x410] = vdupq_n_s64(0x116F6AF236C389A5uLL);
  LODWORD(a53) = v76 - 4;
  *&STACK[0x3F0] = vdupq_n_s64(v66);
  *&STACK[0x400] = vdupq_n_s64(0xCDDCDFD0A442EB54);
  LODWORD(a52) = v76 - 3;
  *&STACK[0x3E0] = vdupq_n_s64(0x5FE6D6472620FEBEuLL);
  *&STACK[0x2C0] = vdupq_n_s64(0xBC2FE40086982889);
  LODWORD(a51) = v76 - 2;
  LODWORD(a50) = v76 - 1;
  *&STACK[0x590] = vdupq_n_s64(0x48BE2CB4D3A6304CuLL);
  *&STACK[0x580] = vdupq_n_s64(0xA6082410042005uLL);
  LODWORD(a49) = v76 + 1;
  LODWORD(a48) = v76 + 2;
  LODWORD(a44) = v76 + 3;
  HIDWORD(v79) = v76 + 4;
  LODWORD(v79) = v76 + 5;
  LODWORD(v78) = a2 + a1 + v65;
  HIDWORD(v78) = v76 + 6;
  *&STACK[0x570] = vdupq_n_s64(0xB741D34B2C59CFB3);
  *&STACK[0x560] = vdupq_n_s64(0x2141C0402041C3B1uLL);
  *&STACK[0x550] = vdupq_n_s64(0x59C50BC947A916EEuLL);
  *&STACK[0x3C0] = vdupq_n_s64(0x3AB1F061BAB4AF22uLL);
  *&STACK[0x3D0] = vdupq_n_s64(v68);
  *&STACK[0x600] = vdupq_n_s64(0x93EE9DA6A9E48E6BLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x102996FD8E8C4846uLL);
  *&STACK[0x540] = vdupq_n_s64(0xA484BD53EADDFE95);
  *&STACK[0x3B0] = vdupq_n_s64(v75);
  *&STACK[0x5F0] = vdupq_n_s64(v70);
  *&STACK[0x290] = vdupq_n_s64(v69);
  *&STACK[0x390] = vdupq_n_s64(v73);
  *&STACK[0x530] = vdupq_n_s64(v71);
  *&STACK[0x280] = xmmword_1002A9AB0;
  return v74(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, __PAIR64__(a2, a3), a13, v78, v79, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_100120638(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = ((v20 | 0x26) ^ v9) + v7;
  v22 = a5 + v21;
  v23 = v21 + a4;
  v24 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (v24 - 0x240F79117F1F970ELL) ^ 0xF703346ABE37D62CLL;
  v26 = (__ROR8__((v24 - 0x240F79117F1F970ELL) ^ 0x2887031EB93491BALL, 8) + v25) ^ 0xD87AD12BCA74F052;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x9FC19AABFBDF4258;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x901164E02F7DA9DELL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((a6 | (2 * (v32 + v31))) - (v32 + v31) + a7) ^ 0x116F6AF236C389A5;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8) + v34;
  v36 = __ROR8__((v23 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = v36 - ((v10 + 2 * v36) & 0x3AB1F061BAB4AF22) - 0x6C116259561B7195;
  v38 = v37 ^ 0x102996FD8E8C4846;
  v37 ^= 0xA484BD53EADDFE95;
  v39 = (__ROR8__(v38, 8) + v37) ^ v8;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = STACK[0x628];
  v43 = (v15 - (v35 | v15) + (v35 | 0xCDDCDFD0A442EB54)) ^ 0x5FE6D6472620FEBELL;
  v44 = v43 ^ __ROR8__(v34, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xBC2FE40086982889;
  v46 = (v11 - ((v41 + v40) | v11) + ((v41 + v40) | v12)) ^ v16;
  v47 = __ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61));
  v48 = v46 ^ __ROR8__(v40, 61);
  v49 = __ROR8__(v46, 8);
  v50 = (((2 * ((v49 + v48) ^ v13)) | 0xCEC3BA60BF30B38CLL) - ((v49 + v48) ^ v13) + 0x189E22CFA067A63ALL) ^ 0xDBC41DA5C13F88D1;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xC4318A842864C03;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((v54 + v53) & v14 ^ 0x85AC010914A24A38) + ((v54 + v53) ^ 0x21116F0695D3183) - (((v54 + v53) ^ 0x21116F0695D3183) & v14)) ^ 0xC6DC1BCB94580A4BLL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (v19 - ((v57 + v56) | v19) + ((v57 + v56) | 0xF94C599D99972866)) ^ 0x4CCD99EAAD1A4A5ALL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  *(v23 + 10) = (((v17 - ((v60 + v59) | v17) + ((v60 + v59) | 0xF265FBA42424344CLL)) ^ 0x25BB9E594F1DFB2) >> (8 * ((v23 + 10) & 7))) ^ ((((v47 & 0xB741D34B2C59CFB3 ^ 0x2141C0402041C3B1) + (v47 & 0x48BE2CB4D3A6304CLL ^ 0xA6082410042005) - 1) ^ 0x59C50BC947A916EELL) >> (8 * (v22 & 7u))) ^ *v22;
  return (*(v42 + 8 * (((v7 == 1867716615) * a1) ^ v18)))();
}

uint64_t sub_100120A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x6C0] = 0x51CE20ABD81C933BLL;
  STACK[0x760] = *(a8 + 8 * v8);
  return (*(a8 + 18416))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
}

uint64_t sub_100120AA8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x610] = v8 - 15;
  v10 = *(STACK[0x628] + 8 * a7);
  LODWORD(STACK[0x600]) = -(a8 & 0xFFFFFFF0);
  LODWORD(STACK[0x5F0]) = a2 + a1 + 268765202;
  LODWORD(STACK[0x5E0]) = a2 + a1 + 268765203;
  LODWORD(STACK[0x5D0]) = a2 + a1 + 268765204;
  return v10(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(0x7695A575CC8A36DAuLL), vdupq_n_s64(0xD716ECD53D61FD7uLL), vdupq_n_s64(0xB9DC45633787A904), vdupq_n_s64(0x5EEE4453CA35DABAuLL), vdupq_n_s64(0x96518B1852248A0DLL), vdupq_n_s64(v9));
}

uint64_t sub_100120C10(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, int a13, int a14, int a15, int a16)
{
  v35 = (v20 + v21 + 16);
  v36.i64[0] = v35 + v16 + 10;
  v37.i64[0] = (a16 + v21 + 16) + v16 + 10;
  v38.i64[0] = (a11 + v21 + 16) + v16 + 10;
  v39.i64[0] = (v19 + v21 + 16) + v16 + 10;
  v40.i64[0] = (v26 + v21 + 16) + v16 + 10;
  v41.i64[0] = (v24 + v21 + 16) + v16 + 10;
  v36.i64[1] = (v18 + v21 + 16) + v16 + 10;
  v37.i64[1] = (v17 + v21 + 16) + v16 + 10;
  v38.i64[1] = (a14 + v21 + 16) + v16 + 10;
  v39.i64[1] = (a13 + v21 + 16) + v16 + 10;
  v40.i64[1] = (v25 + v21 + 16) + v16 + 10;
  v41.i64[1] = (v23 + v21 + 16) + v16 + 10;
  v42.i64[0] = (v22 + v21 + 16) + v16 + 10;
  v42.i64[1] = (LODWORD(STACK[0x5D0]) + v21 + 16) + v16 + 10;
  v43 = vandq_s8(v39, a1);
  v44 = vandq_s8(v38, a1);
  v45 = vandq_s8(v37, a1);
  v46 = vandq_s8(v36, a1);
  v47 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a3);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a3);
  v51 = veorq_s8(v50, a4);
  v52 = veorq_s8(v49, a4);
  v53 = veorq_s8(v49, a5);
  v54 = veorq_s8(v50, a5);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), a6);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54), a6);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), a7);
  v63 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v64 = veorq_s8(v61, a7);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v63);
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), a8);
  v70 = veorq_s8(v68, a8);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(v70, vandq_s8(vaddq_s64(v70, v70), v27)), v28), v29);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(v69, vandq_s8(vaddq_s64(v69, v69), v27)), v28), v29);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v74 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v73), v30);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v74), v30);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v31);
  v83 = veorq_s8(v81, v31);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v32);
  v90 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v91 = veorq_s8(v88, v32);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v96 = vaddq_s64(v48, a3);
  v177.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v95, v93), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a2)));
  v177.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v94, v92), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a2)));
  v97 = veorq_s8(v96, a4);
  v98 = veorq_s8(v96, a5);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), a6);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), a7);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), a8);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v27)), v28), v29);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v30);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v31);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v32);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v110.i64[0] = (LODWORD(STACK[0x5E0]) + v21 + 16) + v16 + 10;
  v110.i64[1] = (LODWORD(STACK[0x5F0]) + v21 + 16) + v16 + 10;
  v113 = vaddq_s64(v112, v111);
  v114 = vandq_s8(v110, a1);
  v115 = vaddq_s64(v47, a3);
  v177.val[1] = vshlq_u64(veorq_s8(v113, v33), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a2)));
  v116 = veorq_s8(v115, a4);
  v117 = veorq_s8(v115, a5);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), a6);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), a7);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), a8);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(v122, vandq_s8(vaddq_s64(v122, v122), v27)), v28), v29);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v30);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v31);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v32);
  v130 = vandq_s8(v42, a1);
  v131 = vandq_s8(v41, a1);
  v177.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL))), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v132 = vandq_s8(v40, a1);
  v133 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), a3);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), a3);
  v132.i64[0] = vqtbl4q_s8(v177, v34).u64[0];
  v177.val[0] = veorq_s8(v136, a4);
  v177.val[1] = veorq_s8(v135, a4);
  v137 = veorq_s8(v135, a5);
  v177.val[2] = veorq_s8(v136, a5);
  v177.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v137), a6);
  v177.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL), v177.val[2]), a6);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v138 = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL));
  v177.val[2] = veorq_s8(v177.val[1], v177.val[3]);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[2]);
  v177.val[1] = veorq_s8(vaddq_s64(v177.val[3], v138), a7);
  v177.val[0] = veorq_s8(v177.val[0], a7);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v139 = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL));
  v177.val[2] = veorq_s8(v177.val[1], v177.val[3]);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[2]);
  v177.val[1] = veorq_s8(vaddq_s64(v177.val[3], v139), a8);
  v177.val[0] = veorq_s8(v177.val[0], a8);
  v177.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v177.val[0], vandq_s8(vaddq_s64(v177.val[0], v177.val[0]), v27)), v28), v29);
  v177.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v177.val[1], vandq_s8(vaddq_s64(v177.val[1], v177.val[1]), v27)), v28), v29);
  v140 = veorq_s8(v177.val[1], vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v177.val[2] = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL));
  v177.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v140), v30);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v177.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL), v177.val[2]), v30);
  v141 = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL));
  v177.val[2] = veorq_s8(v177.val[1], v177.val[3]);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[2]);
  v177.val[1] = veorq_s8(vaddq_s64(v177.val[3], v141), v31);
  v177.val[0] = veorq_s8(v177.val[0], v31);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v142 = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL));
  v177.val[2] = veorq_s8(v177.val[1], v177.val[3]);
  v177.val[3] = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[2]);
  v177.val[1] = veorq_s8(vaddq_s64(v177.val[3], v142), v32);
  v177.val[0] = veorq_s8(v177.val[0], v32);
  v143 = vaddq_s64(v134, a3);
  v177.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), veorq_s8(v177.val[1], vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL))), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v110, 3uLL), a2)));
  v177.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL), veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL))), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a2)));
  v144 = veorq_s8(v143, a4);
  v145 = veorq_s8(v143, a5);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), a6);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), a7);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), a8);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v150, vandq_s8(vaddq_s64(v150, v150), v27)), v28), v29);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), v30);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v31);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), v32);
  v158 = vaddq_s64(v133, a3);
  v177.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL))), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a2)));
  v159 = veorq_s8(v158, a4);
  v160 = veorq_s8(v158, a5);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), a6);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), a7);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), a8);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(v165, vandq_s8(vaddq_s64(v165, v165), v27)), v28), v29);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v30);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v31);
  v171 = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v173 = veorq_s8(v170, v171);
  v174 = veorq_s8(vaddq_s64(v172, v173), v32);
  v177.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL))), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a2)));
  v132.i64[1] = vqtbl4q_s8(v177, v34).u64[0];
  v175 = vrev64q_s8(v132);
  *(v35 + v16 - 5) = veorq_s8(vextq_s8(v175, v175, 8uLL), *(STACK[0x610] + v35));
  return (*(STACK[0x628] + 8 * ((1290 * (LODWORD(STACK[0x600]) == v21)) ^ a15)))();
}

uint64_t sub_10012163C@<X0>(int a1@<W0>, int a2@<W8>)
{
  v10 = (v7 + a1);
  v11 = v10 + v3 + 10;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (v12 + 0x7695A575CC8A36DALL) ^ 0xB9DC45633787A904;
  v14 = (__ROR8__((v12 + 0x7695A575CC8A36DALL) ^ 0xD716ECD53D61FD7, 8) + v13) ^ 0x5EEE4453CA35DABALL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x96518B1852248A0DLL;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (((v17 + v18) ^ v8) - (v9 & (2 * ((v17 + v18) ^ v8))) + v5) ^ v6;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xC4318A842864C03;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x43600812E0A35073;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xB581C077348D623CLL;
  *v11 = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v11 & 7u))) ^ *(v4 + v10);
  return (*(STACK[0x628] + 8 * ((((v7 - 1 == v2) << 11) | ((v7 - 1 == v2) << 12)) ^ a2)))();
}

uint64_t sub_1001217A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x6F8] = 0x51CE20ABD81C933BLL;
  v6 = STACK[0x628];
  STACK[0x760] = *(STACK[0x628] + 8 * (a6 - 4436));
  return (*(v6 + 8 * ((a6 - 3307) ^ 0xC67 ^ (a6 - 4436))))();
}

uint64_t sub_100121810(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v56 = *(STACK[0x628] + 8 * (v49 - 1386));
  *&STACK[0x430] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x5C0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x5B0] = vdupq_n_s64(0x7695A575CC8A36DAuLL);
  *&STACK[0x420] = vdupq_n_s64(0x96A5A8A3375C925uLL);
  HIDWORD(v59) = a3 & 0xFFFFFFF0;
  *&STACK[0x220] = vdupq_n_s64(v55);
  v57 = a4 + v52 + v53;
  *&STACK[0x410] = vdupq_n_s64(a7);
  *&STACK[0x3F0] = vdupq_n_s64(a2);
  *&STACK[0x400] = vdupq_n_s64(a8);
  LODWORD(a49) = v57 - 5;
  *&STACK[0x5A0] = vdupq_n_s64(0x9827780194A34532);
  LODWORD(a48) = v57 - 4;
  *&STACK[0x3D0] = vdupq_n_s64(v54);
  *&STACK[0x3E0] = vdupq_n_s64(0xA6927E4FAE415E17);
  LODWORD(a44) = v57 - 3;
  *&STACK[0x590] = vdupq_n_s64(v50);
  LODWORD(v63) = v57 - 1;
  HIDWORD(v63) = v57 - 2;
  *&STACK[0x3B0] = vdupq_n_s64(0x5B64AA6691E76A3EuLL);
  *&STACK[0x3C0] = vdupq_n_s64(v51);
  *&STACK[0x390] = vdupq_n_s64(0x63A5A39A2714D1C3uLL);
  LODWORD(v62) = v57 + 2;
  HIDWORD(v62) = v57 + 1;
  *&STACK[0x580] = vdupq_n_s64(0xF0EB01C659315F20);
  *&STACK[0x5E0] = vdupq_n_s64(0x78A7F1CD3675070uLL);
  LODWORD(v61) = v57 + 5;
  HIDWORD(v61) = v57 + 3;
  LODWORD(v60) = v57 + 7;
  HIDWORD(v60) = v57 + 6;
  *&STACK[0x570] = vdupq_n_s64(0xF436984B6E1EE393);
  *&STACK[0x5D0] = vdupq_n_s64(0x9FE972D68BE672A4);
  *&STACK[0x5F0] = vdupq_n_s64(0xB00B4694BA0CC6ADLL);
  *&STACK[0x560] = vdupq_n_s64(0xF36B4E865AAF96DELL);
  *&STACK[0x550] = vdupq_n_s64(0x1696A34D4DBEA686uLL);
  *&STACK[0x540] = vdupq_n_s64(0xB4B51A6A6DF5343uLL);
  *&STACK[0x530] = vdupq_n_s64(0x3E0110D8C95E5D55uLL);
  *&STACK[0x210] = vdupq_n_s64(0xC1FEEF2736A1A2AALL);
  *&STACK[0x520] = vdupq_n_s64(a5);
  *&STACK[0x370] = vdupq_n_s64(0x3027198D4276DB70uLL);
  *&STACK[0x380] = vdupq_n_s64(0xBECA91D19252317FLL);
  *&STACK[0x360] = vdupq_n_s64(0x3627198D4276DB70uLL);
  LODWORD(v59) = v49 + 5244;
  HIDWORD(a11) = (v49 + 5244) ^ 0xBCEBA426;
  *&STACK[0x200] = xmmword_1002A9AB0;
  *&STACK[0x510] = vdupq_n_s64(0x3B56774011A0C4A7uLL);
  return v56(a1, a2, a3, a4, a5, a6, 0x66AE28ABA469B592, 0xCCA8EBAA2DCB2536, v59, __PAIR64__(v52, a4), a11, v60, v61, v62, v63, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1001238CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v22 = (a7 + v14);
  v23 = STACK[0x600] + v22;
  v24 = v22 + STACK[0x610];
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((0x96A5A8A3375C925 - v25) & a2) + v25 + 0x7695A575CC8A36DALL - ((v25 + 0x7695A575CC8A36DALL) & a2);
  v27 = v26 ^ v18;
  v28 = v26 ^ a5;
  v29 = __ROR8__(v27, 8);
  v30 = (a4 - ((v29 + v28) | a4) + ((v29 + v28) | a6)) ^ 0xA6927E4FAE415E17;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v13 - ((v32 + v31) | v13) + ((v32 + v31) | 0x9827780194A34532)) ^ v10;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (a1 - ((v35 + v34) | a1) + ((v35 + v34) | v11)) ^ 0x63A5A39A2714D1C3;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) | 0xF0EB01C659315F20) - (v38 + v37) + 0x78A7F1CD3675070) ^ 0xF436984B6E1EE393;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = __ROR8__((((2 * (v41 + v40)) & 0x9FE972D68BE672A4) - (v41 + v40) - 0x4FF4B96B45F33953) ^ 0xF36B4E865AAF96DELL, 8);
  v43 = (((2 * (v41 + v40)) & 0x9FE972D68BE672A4) - (v41 + v40) - 0x4FF4B96B45F33953) ^ 0xF36B4E865AAF96DELL ^ __ROR8__(v40, 61);
  v44 = (v42 + v43 - ((2 * (v42 + v43)) & 0x1696A34D4DBEA686) + 0xB4B51A6A6DF5343) ^ 0xBECA91D19252317FLL;
  v45 = __ROR8__((v24 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = ((0x96A5A8A3375C925 - v45) & 0x3027198D4276DB70) + v45 + 0x7695A575CC8A36DALL - ((v45 + 0x7695A575CC8A36DALL) & 0x3627198D4276DB70);
  v47 = v46 ^ 0x3B56774011A0C4A7;
  v46 ^= 0x8FFB5CEE75F17274;
  v48 = __ROR8__(v47, 8);
  v49 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61));
  v50 = __ROR8__((((2 * (v48 + v46)) | 0x967F9B7D3960DED2) - (v48 + v46) + v21) ^ v15, 8);
  v51 = (((2 * (v48 + v46)) | 0x967F9B7D3960DED2) - (v48 + v46) + v21) ^ v15 ^ __ROR8__(v46, 61);
  v52 = (((2 * (v50 + v51)) & 0x66AE28ABA469B592) - (v50 + v51) - 0x33571455D234DACALL) ^ 0x5AF960B27FEFAF3BLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xC73EF603490C4402;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xC4318A842864C03;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) & 0x8F30E4BAED0244B2) - (v58 + v57) + v19) ^ v9;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  *(v24 + 10) = (((v7 - (v49 | v7) + (v49 | 0x3E0110D8C95E5D55)) ^ 0xCE3F5299798BB6ABLL) >> (8 * (v23 & 7u))) ^ (((__ROR8__((a3 - ((v61 + v60) | a3) + ((v61 + v60) | v12)) ^ v8, 8) + ((a3 - ((v61 + v60) | a3) + ((v61 + v60) | v12)) ^ v8 ^ __ROR8__(v60, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v24 + 10) & 7))) ^ *v23;
  return (*(STACK[0x628] + 8 * (((a7 - 1 != v20) * v16) ^ (v17 + 1841))))();
}

uint64_t sub_100123CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x758] = 0x51CE20ABD81C933BLL;
  v7 = STACK[0x628];
  STACK[0x760] = *(STACK[0x628] + 8 * (v6 - 4444));
  return (*(v7 + 8 * (v6 - 4444 + ((v6 - 4684) | 0x561) + 425)))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
}

uint64_t sub_100123D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(STACK[0x628] + 8 * a6);
  LODWORD(STACK[0x490]) = v7;
  *&STACK[0x5F0] = xmmword_1002A9AB0;
  *&STACK[0x4F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x590]) = v6 + v7 + 72102910;
  LODWORD(STACK[0x580]) = v6 + v7 + 72102911;
  LODWORD(STACK[0x570]) = v6 + v7 + 72102912;
  LODWORD(STACK[0x560]) = v6 + v7 + 72102913;
  LODWORD(STACK[0x550]) = v6 + v7 + 72102914;
  LODWORD(STACK[0x540]) = v6 + v7 + 72102915;
  LODWORD(STACK[0x530]) = v6 + v7 + 72102916;
  LODWORD(STACK[0x520]) = v6 + v7 + 72102917;
  LODWORD(STACK[0x510]) = v6 + v7 + 72102918;
  LODWORD(STACK[0x500]) = v6 + v7 + 72102919;
  return v8((v6 + v7 + 72102907), (v6 + v7 + 72102908), (v6 + v7 + 72102909), (v6 + v7 + 72102921));
}

uint64_t sub_100123EA8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W8>, int64x2_t a6@<Q4>, __n128 a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v32 = (a4 + v17 + 16);
  v33 = (LODWORD(STACK[0x500]) + v17 + 16);
  v34 = (LODWORD(STACK[0x510]) + v17 + 16);
  v35 = (LODWORD(STACK[0x560]) + v17 + 16);
  v36 = (LODWORD(STACK[0x570]) + v17 + 16);
  v37 = (LODWORD(STACK[0x580]) + v17 + 16);
  v38 = (LODWORD(STACK[0x590]) + v17 + 16);
  v57.val[0].i64[0] = v33 + v9 + 10;
  v57.val[0].i64[1] = v34 + v9 + 10;
  *&STACK[0x5C0] = v57.val[0];
  v39.i64[0] = v35 + v9 + 10;
  v39.i64[1] = v36 + v9 + 10;
  v40.i64[0] = v37 + v9 + 10;
  v40.i64[1] = v38 + v9 + 10;
  v41.i64[0] = (a3 + v17 + 16) + v9 + 10;
  v41.i64[1] = (a2 + v17 + 16) + v9 + 10;
  v42.i64[0] = (a1 + v17 + 16) + v9 + 10;
  v42.i64[1] = (v15 + v17 + 16) + v9 + 10;
  v58.val[0].i64[0] = (a4 + v17 + 16) & 0xF;
  v58.val[0].i64[1] = (v12 + v17 + (a5 ^ (v13 + 51)) + 16) & 0xF;
  v43 = (LODWORD(STACK[0x520]) + v17 + 16);
  v58.val[1].i64[0] = v33 & 0xF;
  v58.val[1].i64[1] = v34 & 0xF;
  v44 = (LODWORD(STACK[0x530]) + v17 + 16);
  v58.val[2].i64[0] = (LOBYTE(STACK[0x520]) + v17 + 16) & 0xF;
  v58.val[2].i64[1] = (LOBYTE(STACK[0x530]) + v17 + 16) & 0xF;
  v57.val[0].i64[0] = v35 & 0xF;
  v57.val[0].i64[1] = v36 & 0xF;
  v57.val[1].i64[0] = v37 & 0xF;
  v57.val[1].i64[1] = v38 & 0xF;
  v57.val[2].i64[0] = (a3 + v17 + 16) & 0xF;
  v57.val[2].i64[1] = (a2 + v17 + 16) & 0xF;
  v45 = (LODWORD(STACK[0x540]) + v17 + 16);
  v46 = (LODWORD(STACK[0x550]) + v17 + 16);
  v47 = STACK[0x628];
  v57.val[3].i64[0] = (a1 + v17 + 16) & 0xF;
  v57.val[3].i64[1] = (v15 + v17 + 16) & 0xF;
  v58.val[3].i64[0] = (LOBYTE(STACK[0x540]) + v17 + 16) & 0xF;
  v58.val[3].i64[1] = (LOBYTE(STACK[0x550]) + v17 + 16) & 0xF;
  a7.n128_u64[0] = v32 + v9 + 10;
  *&STACK[0x5B0] = a7;
  v48 = *&STACK[0x5F0];
  *&STACK[0x5E0] = vqtbl4q_s8(v57, *&STACK[0x5F0]);
  v49 = *&STACK[0x4F0];
  v57.val[1] = vandq_s8(v42, *&STACK[0x4F0]);
  v57.val[2] = vandq_s8(v41, *&STACK[0x4F0]);
  *&STACK[0x5D0] = vqtbl4q_s8(v58, v48);
  v57.val[3] = vandq_s8(v40, v49);
  v58.val[0] = vandq_s8(v39, v49);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL);
  v58.val[0] = vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL);
  v57.val[3] = vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL);
  v57.val[2] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL);
  v57.val[1] = vbslq_s8(a8, vsubq_s64(a6, v58.val[1]), vaddq_s64(v58.val[1], v18));
  v50 = vbslq_s8(a8, vsubq_s64(a6, v58.val[0]), vaddq_s64(v58.val[0], v18));
  v57.val[3] = vbslq_s8(a8, vsubq_s64(a6, v57.val[3]), vaddq_s64(v57.val[3], v18));
  v57.val[2] = vbslq_s8(a8, vsubq_s64(a6, v57.val[2]), vaddq_s64(v57.val[2], v18));
  v58.val[2] = veorq_s8(v57.val[2], a9);
  v58.val[3] = veorq_s8(v57.val[3], a9);
  v58.val[1] = veorq_s8(v57.val[3], v20);
  v58.val[0] = veorq_s8(v57.val[2], v20);
  v57.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[2], 0x38uLL), v58.val[2], 8uLL), v58.val[0]);
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[3], 0x38uLL), v58.val[3], 8uLL), v58.val[1]);
  v57.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[2], v57.val[2]), v21), v57.val[2]), v22), v23);
  v57.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[3], v57.val[3]), v21), v57.val[3]), v22), v23);
  v58.val[0] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v58.val[0], 3uLL), v58.val[0], 0x3DuLL));
  v58.val[1] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v58.val[1], 3uLL), v58.val[1], 0x3DuLL));
  v57.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), v58.val[0]), v24);
  v57.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v58.val[1]), v24);
  v58.val[1] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v58.val[1], 3uLL), v58.val[1], 0x3DuLL));
  v58.val[0] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v58.val[0], 3uLL), v58.val[0], 0x3DuLL));
  v58.val[2] = vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL);
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), v58.val[0]);
  v57.val[3] = veorq_s8(vaddq_s64(v58.val[2], v58.val[1]), v25);
  v57.val[2] = veorq_s8(v57.val[2], v25);
  v58.val[0] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v58.val[0], 3uLL), v58.val[0], 0x3DuLL));
  v58.val[1] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v58.val[1], 3uLL), v58.val[1], 0x3DuLL));
  v58.val[2] = vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL);
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), v58.val[1]);
  v57.val[3] = veorq_s8(vaddq_s64(v58.val[2], v58.val[0]), v26);
  v57.val[2] = veorq_s8(v57.val[2], v26);
  v58.val[1] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v58.val[1], 3uLL), v58.val[1], 0x3DuLL));
  v58.val[0] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v58.val[0], 3uLL), v58.val[0], 0x3DuLL));
  v58.val[2] = vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL);
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), v58.val[0]);
  v57.val[3] = veorq_s8(vaddq_s64(v58.val[2], v58.val[1]), v27);
  v58.val[2] = vsraq_n_u64(vshlq_n_s64(v58.val[1], 3uLL), v58.val[1], 0x3DuLL);
  v57.val[2] = veorq_s8(v57.val[2], v27);
  v58.val[1] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v58.val[0], 3uLL), v58.val[0], 0x3DuLL));
  v58.val[0] = veorq_s8(v57.val[3], v58.val[2]);
  v58.val[2] = vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL);
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), v58.val[0]);
  v57.val[3] = vaddq_s64(v58.val[2], v58.val[1]);
  v57.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[3], v57.val[3]), v28), v57.val[3]), v29), v30);
  v57.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[2], v57.val[2]), v28), v57.val[2]), v29), v30);
  v51.i64[0] = v43 + v9 + 10;
  v51.i64[1] = v44 + v9 + 10;
  v58.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v58.val[1], 3uLL), v58.val[1], 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v19)));
  v58.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v58.val[0], 3uLL), v58.val[0], 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v19)));
  v57.val[2] = veorq_s8(v50, a9);
  v57.val[3] = veorq_s8(v50, v20);
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[3]);
  v57.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[2], v57.val[2]), v21), v57.val[2]), v22), v23);
  v57.val[3] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[3], 3uLL), v57.val[3], 0x3DuLL));
  v57.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[3]), v24);
  v57.val[3] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[3], 3uLL), v57.val[3], 0x3DuLL));
  v57.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[3]), v25);
  v57.val[3] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[3], 3uLL), v57.val[3], 0x3DuLL));
  v57.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[3]), v26);
  v57.val[3] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[3], 3uLL), v57.val[3], 0x3DuLL));
  v57.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[3]), v27);
  v57.val[3] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[3], 3uLL), v57.val[3], 0x3DuLL));
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[3]);
  v57.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[2], v57.val[2]), v28), v57.val[2]), v29), v30);
  v41.i64[0] = v45 + v9 + 10;
  v57.val[0] = *&STACK[0x5B0];
  v57.val[0].i64[1] = v12 + v17 + (a5 ^ (v13 + 1331)) + 16 + v9 + 10;
  v41.i64[1] = v46 + v9 + 10;
  v52 = vandq_s8(v41, v49);
  v58.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[3], 3uLL), v57.val[3], 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v19)));
  v57.val[2] = veorq_s8(v57.val[1], a9);
  v57.val[1] = veorq_s8(v57.val[1], v20);
  v57.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[1]);
  v57.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[2], v57.val[2]), v21), v57.val[2]), v22), v23);
  v57.val[1] = veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL));
  v57.val[3] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL);
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), v57.val[1]), v24);
  v57.val[2] = veorq_s8(v57.val[1], v57.val[3]);
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v25);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v26);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v27);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]);
  v57.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[1], v57.val[1]), v28), v57.val[1]), v29), v30);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[3] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL);
  v57.val[1] = vandq_s8(v51, v49);
  v57.val[2] = vaddq_s64(v57.val[3], v57.val[2]);
  v57.val[3] = vandq_s8(*&STACK[0x5C0], v49);
  v58.val[0] = vshlq_u64(veorq_s8(v57.val[2], v31), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v19)));
  v57.val[2] = vandq_s8(v57.val[0], v49);
  v53 = vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL);
  v57.val[3] = vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL);
  v57.val[2] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL);
  v57.val[1] = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v54 = vbslq_s8(a8, vsubq_s64(a6, v57.val[3]), vaddq_s64(v57.val[3], v18));
  v55 = vbslq_s8(a8, vsubq_s64(a6, v53), vaddq_s64(v53, v18));
  v57.val[2] = vbslq_s8(a8, vsubq_s64(a6, v57.val[2]), vaddq_s64(v57.val[2], v18));
  v57.val[1] = vbslq_s8(a8, vsubq_s64(a6, v57.val[1]), vaddq_s64(v57.val[1], v18));
  v53.i64[0] = vqtbl4q_s8(v58, *&STACK[0x5F0]).u64[0];
  v57.val[3] = veorq_s8(v57.val[1], a9);
  v58.val[0] = veorq_s8(v57.val[2], a9);
  v57.val[2] = veorq_s8(v57.val[2], v20);
  v57.val[1] = veorq_s8(v57.val[1], v20);
  v57.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), v57.val[1]);
  v58.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL), v57.val[2]);
  v58.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58.val[0], v58.val[0]), v21), v58.val[0]), v22), v23);
  v57.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[3], v57.val[3]), v21), v57.val[3]), v22), v23);
  v57.val[1] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL));
  v57.val[2] = veorq_s8(v58.val[0], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL);
  v57.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL), v57.val[2]);
  v58.val[0] = veorq_s8(vaddq_s64(v58.val[1], v57.val[1]), v24);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL);
  v57.val[3] = veorq_s8(v57.val[3], v24);
  v57.val[1] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[2] = veorq_s8(v58.val[0], v58.val[1]);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL);
  v57.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL), v57.val[2]);
  v58.val[0] = veorq_s8(vaddq_s64(v58.val[1], v57.val[1]), v25);
  v57.val[3] = veorq_s8(v57.val[3], v25);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL);
  v57.val[1] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[2] = veorq_s8(v58.val[0], v58.val[1]);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL);
  v57.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL), v57.val[2]);
  v58.val[0] = veorq_s8(vaddq_s64(v58.val[1], v57.val[1]), v26);
  v57.val[3] = veorq_s8(v57.val[3], v26);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL);
  v57.val[1] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[2] = veorq_s8(v58.val[0], v58.val[1]);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL);
  v57.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL), v57.val[2]);
  v58.val[0] = veorq_s8(vaddq_s64(v58.val[1], v57.val[1]), v27);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL);
  v57.val[3] = veorq_s8(v57.val[3], v27);
  v57.val[1] = veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[2] = veorq_s8(v58.val[0], v58.val[1]);
  v58.val[1] = vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL);
  v57.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL), v57.val[2]);
  v58.val[0] = vaddq_s64(v58.val[1], v57.val[1]);
  v58.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58.val[0], v58.val[0]), v28), v58.val[0]), v29), v30);
  v57.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[3], v57.val[3]), v28), v57.val[3]), v29), v30);
  v58.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58.val[0], 0x38uLL), v58.val[0], 8uLL), veorq_s8(v58.val[0], vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v19)));
  v58.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[3], 0x38uLL), v57.val[3], 8uLL), veorq_s8(v57.val[3], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v51, 3uLL), v19)));
  v57.val[1] = veorq_s8(v55, a9);
  v57.val[2] = veorq_s8(v55, v20);
  v57.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]);
  v57.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[1], v57.val[1]), v21), v57.val[1]), v22), v23);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v24);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v25);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v26);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v27);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]);
  v57.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[1], v57.val[1]), v28), v57.val[1]), v29), v30);
  v58.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5C0], 3uLL), v19)));
  v57.val[1] = veorq_s8(v54, a9);
  v57.val[2] = veorq_s8(v54, v20);
  v57.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]);
  v57.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[1], v57.val[1]), v21), v57.val[1]), v22), v23);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v24);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v25);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v26);
  v57.val[2] = veorq_s8(v57.val[1], vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL));
  v57.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL), v57.val[2]), v27);
  v57.val[3] = vsraq_n_u64(vshlq_n_s64(v57.val[2], 3uLL), v57.val[2], 0x3DuLL);
  v57.val[2] = vsraq_n_u64(vshlq_n_s64(v57.val[1], 0x38uLL), v57.val[1], 8uLL);
  v57.val[1] = veorq_s8(v57.val[1], v57.val[3]);
  v57.val[2] = vaddq_s64(v57.val[2], v57.val[1]);
  v57.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57.val[2], v57.val[2]), v28), v57.val[2]), v29), v30);
  v58.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57.val[2], 0x38uLL), v57.val[2], 8uLL), veorq_s8(v57.val[2], vsraq_n_u64(vshlq_n_s64(v57.val[1], 3uLL), v57.val[1], 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v57.val[0], 3uLL), v19)));
  v57.val[1].i64[0] = vqtbl4q_s8(v58, *&STACK[0x5F0]).u64[0];
  v57.val[0] = *&STACK[0x5D0];
  v57.val[0].i64[1] = STACK[0x5E0];
  v57.val[1].i64[1] = v53.i64[0];
  v57.val[3].i64[0] = 0x1919191919191919;
  v57.val[3].i64[1] = 0x1919191919191919;
  v57.val[2] = vrev64q_s8(veorq_s8(veorq_s8(*(v10 + (v32 & 0xF) - 15), *(v14 + v32)), veorq_s8(*((v32 & 0xF) + STACK[0x2E0] - 9), *(STACK[0x2E8] + (v32 & 0xF) - 15))));
  v57.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v57.val[2], v57.val[2], 8uLL), vmulq_s8(v57.val[0], v57.val[3])), v57.val[1]));
  *(v32 + v9 - 5) = vextq_s8(v57.val[0], v57.val[0], 8uLL);
  return (*(v47 + 8 * ((46 * (v11 + v17 != 0)) ^ v16)))();
}

uint64_t sub_100124B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v22 = (a6 + v16);
  v23 = v22 + STACK[0x610];
  v24 = __ROR8__((v23 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (a4 - v24) & v19 | (v24 + a9) & v17;
  v26 = __ROR8__(v25 ^ v21, 8);
  v27 = v25 ^ v12;
  v28 = ((v14 & (2 * (v26 + v27))) - (v26 + v27) + v15) ^ v13;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a3;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xC73EF603490C4402;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v10;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v11;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v9 & (2 * (v38 + v37))) - (v38 + v37) + a1) ^ a2;
  *(v23 + 10) = *(STACK[0x2A8] + (v22 & 0xF)) ^ *(v20 + v22) ^ *(STACK[0x2E8] + (v22 & 0xF)) ^ ((v22 & 0xF) * a8) ^ *(STACK[0x2E0] + (v22 & 0xF) + a7) ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v23 + 10) & 7)));
  return (*(STACK[0x628] + 8 * (((a6 != 1922140903) * v18) ^ a5)))();
}

uint64_t sub_100124CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 848) = 0x51CE20ABD81C933BLL;
  v8 = STACK[0x628];
  *(v7 + 168) = *(STACK[0x628] + 8 * v6);
  return (*(v8 + 8 * (((v6 - 951466775) & 0x38B63FE7 ^ 0x20F) + v6)))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
}

uint64_t sub_100124D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x97C]) = a6;
  if (a6 == 68588956)
  {
    v11 = STACK[0x660];
    v12 = *(STACK[0x660] - 0x51CE20ABD81C9333);
    v13 = *(v9 + 688);
    *(v13 - 0x51CE20ABD81C9333) = v12;
    *(v13 - 0x51CE20ABD81C933BLL) = *(v11 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * (((v12 == 0x51CE20ABD81C933BLL) * ((17 * (v8 ^ 0x129C)) ^ 0x537)) ^ (v8 - 3479))))();
  }

  else if (a6 == 68545953)
  {
    return (*(a8 + 8 * (((*(*(v9 + 728) - 0x5A0411E37F4B987ALL) != 0x51CE20ABD81C933BLL) * (v8 - 4701)) ^ (v8 + 3166))))();
  }

  else
  {
    return (*(a8 + 8 * (((((v8 + 1) ^ (*(*(v9 + 688) - 0x51CE20ABD81C9323) == 0)) & 1) * ((v8 ^ 0x3718) - 9623)) ^ (v8 + 5263))))();
  }
}

uint64_t sub_100125238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 ^ 0x9BA;
  v11 = (*(a8 + 8 * (v10 ^ 0x325F)))();
  v12 = STACK[0x628];
  *(v9 - 0x51CE20ABD81C9323) = 0;
  return (*(v12 + 8 * v10))(v11);
}

uint64_t sub_10012538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 912);
  *(v9 + 768) = v10;
  return (*(a8 + 8 * ((((v10 == a7) ^ (v8 - 95)) ^ (7 * (v8 ^ 0xAA))) & 1 ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100125474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 565)))(32);
  v10 = STACK[0x628];
  STACK[0xB68] = v9 + 0x51CE20ABD81C933BLL;
  return (*(v10 + 8 * (((v9 == 0) * ((v8 - 1370926029) & 0x51B69DB6 ^ 0x19F5)) ^ v8)))();
}

uint64_t sub_100125500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(v12 + 1472) = v11;
  *(a1 + 16) = v9 + 1827950616 + ((v10 - 1716) | 0x4C);
  v14 = (*(a8 + 8 * (v10 ^ 0x30B7u)))((v8 + v9 + 849));
  v15 = STACK[0x628];
  *(a1 + 24) = v14;
  return (*(v15 + 8 * (((v14 != 0) * (v10 - 6371)) ^ v10)))();
}

uint64_t sub_1001255B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x804]) = a6;
  if (a6 == 68588956)
  {
    v11 = v9[106];
    v12 = *(v11 - 0x51CE20ABD81C9333);
    v13 = v9[150];
    *(v13 - 0x51CE20ABD81C9333) = v12;
    *(v13 - 0x51CE20ABD81C933BLL) = *(v11 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * (((v12 == 0x51CE20ABD81C933BLL) * ((19 * (v8 ^ 0x1218) + 1282) ^ (v8 + 410))) ^ (v8 - 864))))();
  }

  else if (a6 == 68545953)
  {
    return (*(a8 + 8 * (((*(v9[96] - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL) * (((49 * (LODWORD(STACK[0x624]) ^ 0x12FF)) ^ 0xFFFFFFB4) + ((LODWORD(STACK[0x624]) + 39626521) & 0xFDA34F79))) ^ (LODWORD(STACK[0x624]) + 4222))))();
  }

  else
  {
    return (*(a8 + 8 * (((*(v9[150] - 0x51CE20ABD81C9323) == 0) * (((v8 - 1887) ^ 0x1D47) - 5435)) ^ (v8 + 1910))))();
  }
}

uint64_t sub_100125A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 + 7612)))();
  v11 = STACK[0x628];
  *(v9 - 0x51CE20ABD81C9323) = 0;
  return (*(v11 + 8 * v8))(v10);
}

uint64_t sub_100125B40@<X0>(uint64_t a1@<X7>, void *a2@<X8>)
{
  *(v4 - 0x51CE20ABD81C933BLL) = v2;
  *(v2 - 0x51CE20ABD81C9333) = *a2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_100125C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x640];
  *(v9 + 920) = STACK[0x640];
  LODWORD(STACK[0x634]) = STACK[0xA04];
  return (*(a8 + 8 * ((((v8 + 1911558153) & 0x8E0FEFFD ^ 0x2240) * (v10 == 0)) ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100125C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  LODWORD(STACK[0x884]) = a7;
  LODWORD(STACK[0xB1C]) = 0;
  v10[18] = 0;
  LODWORD(STACK[0x90C]) = 1703714790;
  v10[35] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x814]) = 1443455193;
  v10[26] = 0;
  STACK[0x678] = 0x1138F6A92264F486;
  if (v9)
  {
    v11 = v8 == 1443455193;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  return (*(a6 + 8 * ((v12 * (((v7 ^ 0x291E) + 4861) ^ (v7 - 996))) ^ v7)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100125D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 240) = (v8 - 716) ^ (301143701 * ((((v9 - 240) ^ 0x481ACBBC) + 1623715615 - 2 * (((v9 - 240) ^ 0x481ACBBC) & 0x60C7EF1F)) ^ 0x5375B9D1));
  (*(a8 + 8 * (v8 + 6843)))(v9 - 240);
  *(v9 - 240) = v8 + 143055461 * ((v9 - 240) ^ 0x7E96549D) - 809;
  v10 = (*(STACK[0x628] + 8 * (v8 + 6840)))(v9 - 240);
  return (*(STACK[0x628] + 8 * (((*(v9 - 236) == 68588956) * (79 * (v8 ^ 0xF05) + 344 * (v8 ^ 0xF2E) - 184)) ^ v8)))(v10);
}

uint64_t sub_100125E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 236) = (v8 - 2372) ^ (1084270361 * ((~((v9 - 240) | 0x21C98) + ((v9 - 240) & 0x21C98)) ^ 0x33D41C7D));
  v10 = (*(a8 + 8 * (v8 + 7749)))(v9 - 240);
  return (*(STACK[0x628] + 8 * (((*(v9 - 240) == 68588956) * (((v8 + 1470) ^ 0x312E) - 3719)) ^ v8)))(v10);
}

uint64_t sub_100125EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 240) = (v8 - 1995818896) ^ (251922329 * ((v9 - 240) ^ 0xDA3A80A));
  v10 = (*(a8 + 8 * (v8 + 2392)))(v9 - 240);
  v11 = STACK[0x628];
  v12 = *(v9 - 236);
  v13 = *(&off_1002DD400 + (v8 ^ 0x2365));
  v14 = *(&off_1002DD400 + v8 - 8048);
  if (v12 == 119)
  {
    v15 = v13 - 377375342;
  }

  else
  {
    v15 = v14 - 1606317083;
  }

  STACK[0x788] = v15;
  v16 = (v13 - 377375318);
  v17 = (v14 - 1606317059);
  if (v12 != 119)
  {
    v16 = v17;
  }

  return (*(v11 + 8 * ((54 * (*v16 != (((v8 - 6966) ^ 0x30) & 0xF9))) ^ v8)))(v10);
}

uint64_t sub_100125FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = (v10 + 40);
  v16 = (v11 + 40);
  if (v9 == 119)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *v17;
  v19 = v14[149];
  v14[138] = &a9 + v19 - 0x3A611B21EA74C9C6;
  v14[149] = (((v12 | 6) - 88) ^ 0xF74u) + v19 - 2954;
  v14[136] = v13;
  *v14 = 0x61CEF89FDDA89DF2;
  v14[124] = 0x1138F6A92264F486;
  v14[125] = v18;
  return (*(a8 + 8 * ((98 * (v18 != 0x510808E226CB14FCLL)) ^ (v12 | 6))))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_1001260A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * v8);
  LODWORD(STACK[0x610]) = -2085252650;
  LODWORD(STACK[0x600]) = -1333586555;
  return v9();
}

uint64_t sub_100126184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v10[125];
  *(v9 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  *(v9 - 0x61CEF89FDDA89D8BLL) = *(v11 - 0x510808E226CB14E5);
  *(v9 - 0x61CEF89FDDA89D8CLL) = *(v11 - 0x510808E226CB14E6);
  *(v9 - 0x61CEF89FDDA89D8DLL) = *(v11 - 0x510808E226CB14E7);
  *(v9 - 0x61CEF89FDDA89D8ELL) = *(v11 - 0x510808E226CB14E8);
  *(v9 - 0x61CEF89FDDA89D8FLL) = *(v11 - 0x510808E226CB14E9);
  *(v9 - 0x61CEF89FDDA89D90) = *(v11 - 0x510808E226CB14EALL);
  *(v9 - 0x61CEF89FDDA89D91) = *(v11 - 0x510808E226CB14EBLL);
  *(v9 - 0x61CEF89FDDA89D92) = *(v11 - 0x510808E226CB14ECLL);
  *(v9 - 0x61CEF89FDDA89D93) = *(v11 - 0x510808E226CB14EDLL);
  *(v9 - 0x61CEF89FDDA89D94) = *(v11 - 0x510808E226CB14EELL);
  *(v9 - 0x61CEF89FDDA89D95) = *(v11 - 0x510808E226CB14EFLL);
  *(v9 - 0x61CEF89FDDA89D96) = *(v11 - 0x510808E226CB14F0);
  *(v9 - 0x61CEF89FDDA89D97) = *(v11 - 0x510808E226CB14F1);
  *(v9 - 0x61CEF89FDDA89D98) = *(v11 - 0x510808E226CB14F2);
  *(v9 - 0x61CEF89FDDA89D99) = *(v11 - 0x510808E226CB14F3);
  *(v9 - 0x61CEF89FDDA89D9ALL) = *(v11 - 0x510808E226CB14F4);
  return (*(a8 + 8 * (((*v10 == 0x61CEF89FDDA89DF2) * ((v8 - 6472) ^ 0x7D4 ^ ((v8 - 5198) | 0x104))) ^ v8)))();
}

uint64_t sub_100126560@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
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
  return (*(a1 + 8 * v2))();
}

uint64_t sub_100126A94@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v6 = v5[138];
  *v6 = 0x4DC5C22F5BDB8B24;
  *(v6 + 8) = ((37 * (v3 ^ 0x9F1)) ^ 0x29BC) + (*(a2 - 0x510808E226CB1490) ^ 0xDE2FFFDB) + ((2 * *(a2 - 0x510808E226CB1490)) & 0xBC5FFFB6) + 2010726635;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0x1508CA1EBLL;
  *(v6 + 32) = 1443455197;
  *(v6 + 36) = 1;
  v5[16] = v6 + 0x816EF0467CC3D7FLL;
  LODWORD(STACK[0xB84]) = 0;
  v5[36] = 0x61CEF89FDDA89DF2;
  v7 = (*(a1 + 8 * (v3 + v4)))(128);
  v8 = STACK[0x628];
  STACK[0xB70] = v7 + 0x1138F6A92264F486;
  return (*(v8 + 8 * (((v7 != 0) * v2) ^ v3)))();
}

uint64_t sub_100126C90@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = a2 - 1106;
  v3 = a2 - 3855;
  v4 = (*(a1 + 8 * (a2 + 1963)))(112);
  v5 = STACK[0x628];
  STACK[0x9E8] = v4 + 0x61CEF89FDDA89DF2;
  return (*(v5 + 8 * (((v4 == 0) * (v2 ^ 0xF4A ^ v3)) | v2)))();
}

uint64_t sub_100126D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 1159094972;
  *(a1 + 4) = 408423770;
  *(a1 + 72) = 975819913;
  *(a1 + 76) = 975819913;
  *(a1 + 80) = 17769;
  *(a1 + 8) = v9;
  *(a1 + 16) = v9;
  *(a1 + 24) = v9;
  *(a1 + 32) = v9;
  *(a1 + 40) = v9;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9;
  *(a1 + 64) = v9;
  v12 = *(v11 + 816);
  *(v12 - 0x61CEF89FDDA89D9ELL) = STACK[0x610];
  *(v12 - 0x61CEF89FDDA89D8ALL) = STACK[0x600];
  *(v12 - 0x61CEF89FDDA89D9ALL) = v9;
  *(v12 - 0x61CEF89FDDA89D92) = v9;
  *(v12 - 0x61CEF89FDDA89D86) = 34;
  *(v8 - 0x669619EB6CDC1E4ALL) = v12;
  return (*(a8 + 8 * (v10 + 9)))();
}

uint64_t sub_100126DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x624];
  LODWORD(STACK[0xB18]) = v9;
  return (*(a8 + 8 * ((((4 * v10) ^ 0x48BE) * v8) ^ (v10 - 3313))))();
}

uint64_t sub_100126EE8()
{
  *(v0 - 0x61CEF89FDDA89D8ALL) = -1333586539;
  v3 = STACK[0xBE0];
  *(v0 - 0x61CEF89FDDA89D8BLL) = *(STACK[0xBE0] - 0x510808E226CB14E5);
  *(v0 - 0x61CEF89FDDA89D8CLL) = *(v3 - 0x510808E226CB14E6);
  *(v0 - 0x61CEF89FDDA89D8DLL) = *(v3 - 0x510808E226CB14E7);
  *(v0 - 0x61CEF89FDDA89D8ELL) = *(v3 - 0x510808E226CB14E8);
  *(v0 - 0x61CEF89FDDA89D8FLL) = *(v3 - 0x510808E226CB14E9);
  *(v0 - 0x61CEF89FDDA89D90) = *(v3 - 0x510808E226CB14EALL);
  *(v0 - 0x61CEF89FDDA89D91) = *(v3 - 0x510808E226CB14EBLL);
  *(v0 - 0x61CEF89FDDA89D92) = *(v3 - 0x510808E226CB14ECLL);
  *(v0 - 0x61CEF89FDDA89D93) = *(v3 - 0x510808E226CB14EDLL);
  *(v0 - 0x61CEF89FDDA89D94) = *(v3 - 0x510808E226CB14EELL);
  *(v0 - 0x61CEF89FDDA89D95) = *(v3 - 0x510808E226CB14EFLL);
  *(v0 - 0x61CEF89FDDA89D96) = *(v3 - 0x510808E226CB14F0);
  *(v0 - 0x61CEF89FDDA89D97) = *(v3 - 0x510808E226CB14F1);
  *(v0 - 0x61CEF89FDDA89D98) = *(v3 - 0x510808E226CB14F2);
  *(v0 - 0x61CEF89FDDA89D99) = *(v3 - 0x510808E226CB14F3);
  *(v0 - 0x61CEF89FDDA89D9ALL) = *(v3 - 0x510808E226CB14F4);
  return (*(v2 + 8 * ((78 * (((v1 - 97) ^ (*(v3 - 0x510808E226CB14F8) == (v1 ^ 0xC1))) & 1)) ^ v1)))();
}

uint64_t sub_100127294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x624];
  LODWORD(STACK[0xB18]) = v9;
  return (*(a8 + 8 * ((((((v10 - 3582) | 2) + 14287) ^ (v10 + 778972417) & 0xD191C875) * v8) ^ (v10 + 860))))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
}

uint64_t sub_100127324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x624];
  LODWORD(STACK[0xB18]) = v9;
  return (*(a8 + 8 * ((((v10 - 3575) ^ 0x2A2B) * v8) ^ (v10 - 1193))))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
}

uint64_t sub_100127394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x624];
  LODWORD(STACK[0xB18]) = a6;
  return (*(a8 + 8 * (v8 - 15)))();
}

uint64_t sub_10012747C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 0x61CEF89FDDA89DAALL) = 975819945;
  *(v1 - 0x61CEF89FDDA89DCBLL) = *(a1 - 0x510808E226CB14C5);
  *(v1 - 0x61CEF89FDDA89DCCLL) = *(a1 - 0x510808E226CB14C6);
  *(v1 - 0x61CEF89FDDA89DCDLL) = *(a1 - 0x510808E226CB14C7);
  *(v1 - 0x61CEF89FDDA89DCELL) = *(a1 - 0x510808E226CB14C8);
  *(v1 - 0x61CEF89FDDA89DCFLL) = *(a1 - 0x510808E226CB14C9);
  *(v1 - 0x61CEF89FDDA89DD0) = *(a1 - 0x510808E226CB14CALL);
  *(v1 - 0x61CEF89FDDA89DD1) = *(a1 - 0x510808E226CB14CBLL);
  *(v1 - 0x61CEF89FDDA89DD2) = *(a1 - 0x510808E226CB14CCLL);
  *(v1 - 0x61CEF89FDDA89DD3) = *(a1 - 0x510808E226CB14CDLL);
  *(v1 - 0x61CEF89FDDA89DD4) = *(a1 - 0x510808E226CB14CELL);
  *(v1 - 0x61CEF89FDDA89DD5) = *(a1 - 0x510808E226CB14CFLL);
  *(v1 - 0x61CEF89FDDA89DD6) = *(a1 - 0x510808E226CB14D0);
  *(v1 - 0x61CEF89FDDA89DD7) = *(a1 - 0x510808E226CB14D1);
  *(v1 - 0x61CEF89FDDA89DD8) = *(a1 - 0x510808E226CB14D2);
  *(v1 - 0x61CEF89FDDA89DD9) = *(a1 - 0x510808E226CB14D3);
  *(v1 - 0x61CEF89FDDA89DDALL) = *(a1 - 0x510808E226CB14D4);
  *(v1 - 0x61CEF89FDDA89DDBLL) = *(a1 - 0x510808E226CB14D5);
  *(v1 - 0x61CEF89FDDA89DDCLL) = *(a1 - 0x510808E226CB14D6);
  *(v1 - 0x61CEF89FDDA89DDDLL) = *(a1 - 0x510808E226CB14D7);
  *(v1 - 0x61CEF89FDDA89DDELL) = *(a1 - 0x510808E226CB14D8);
  *(v1 - 0x61CEF89FDDA89DDFLL) = *(a1 - 0x510808E226CB14D9);
  *(v1 - 0x61CEF89FDDA89DE0) = *(a1 - 0x510808E226CB14DALL);
  *(v1 - 0x61CEF89FDDA89DE1) = *(a1 - 0x510808E226CB14DBLL);
  *(v1 - 0x61CEF89FDDA89DE2) = *(a1 - 0x510808E226CB14DCLL);
  *(v1 - 0x61CEF89FDDA89DE3) = *(a1 - 0x510808E226CB14DDLL);
  *(v1 - 0x61CEF89FDDA89DE4) = *(a1 - 0x510808E226CB14DELL);
  *(v1 - 0x61CEF89FDDA89DE5) = *(a1 - 0x510808E226CB14DFLL);
  *(v1 - 0x61CEF89FDDA89DE6) = *(a1 - 0x510808E226CB14E0);
  *(v1 - 0x61CEF89FDDA89DE7) = *(a1 - 0x510808E226CB14E1);
  *(v1 - 0x61CEF89FDDA89DE8) = *(a1 - 0x510808E226CB14E2);
  *(v1 - 0x61CEF89FDDA89DE9) = *(a1 - 0x510808E226CB14E3);
  *(v1 - 0x61CEF89FDDA89DEALL) = *(a1 - 0x510808E226CB14E4);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100127A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55)
{
  v57 = 112 * (a7 ^ 0x1AE6);
  v58 = 7 * (v57 ^ 0x2BB);
  *(v55 - 0x61CEF89FDDA89D9ELL) = *(STACK[0xBE0] - 0x510808E226CB14FCLL);
  v59 = STACK[0x9A8];
  v60 = STACK[0x948];
  v61 = STACK[0x934];
  v62 = *(v56 + 8 * (v57 ^ 0xD38 ^ v58));
  LODWORD(STACK[0xE38]) = v58;
  LODWORD(STACK[0xE3C]) = v57;
  STACK[0xE40] = a55;
  STACK[0xE48] = v59;
  STACK[0xE50] = v60;
  LODWORD(STACK[0xE58]) = v61;
  return v62(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882, v56);
}

uint64_t sub_100127C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v8 - 0x1138F6A92264F47ELL) = a1 + a7;
  return (*(a8 + 8 * (((29 * (v9 ^ 0x988) + ((v9 + 2541) ^ 0xFFFFE46E)) * (v8 == 0x1138F6A92264F486)) ^ v9)))();
}

uint64_t sub_100127D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *v8 = a1 + a7;
  return (*(a8 + 8 * (((STACK[0x738] == 0x816EF0467CC3D7FLL) * ((v9 - 964033307) & 0x3975F6CF ^ 0x12EC)) | v9)))();
}

uint64_t sub_100127E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v12 = *v10;
  v11[123] = *(a6 + 8 * v7);
  v11[59] = v12;
  LODWORD(STACK[0xA58]) = v9;
  v11[129] = v8;
  return (*(a6 + 8 * (((v8 == 0x816EF0467CC3D7FLL) * ((a7 ^ 0x17F7) + 7531)) ^ (a7 - 2958))))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100127FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 & 0xFFFFFFFFBC4DD3A3;
  *(v9 - 240) = (v10 + 6713) ^ (1949688233 * ((v9 - 240) ^ 0xE747568B));
  v11 = (*(a8 + 8 * (v10 + 9756)))(v9 - 240);
  v12 = STACK[0x628];
  STACK[0x840] = *(STACK[0x628] + 8 * v10);
  return (*(v12 + 8 * (v10 ^ 0x9D0)))(v11);
}

uint64_t sub_100128168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 744) = v9;
  *(v10 + 40) = *(a8 + 8 * v8);
  return (*(a8 + 8 * (((v8 + 9835) ^ 0x2D6C) + v8)))();
}

uint64_t sub_100128198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1208) = 0x1138F6A92264F486;
  v10 = STACK[0x6A4];
  *(v9 + 992) = 0x1138F6A92264F486;
  v11 = v10 == ((79 * (v8 ^ 0x1297)) ^ 0x4168EEB);
  return (*(a8 + 8 * (((v11 << 7) | (v11 << 10)) ^ (v8 - 15))))();
}

uint64_t sub_10012825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 - 0x1138F6A92264F47ELL);
  *(v10 + 120) = v11;
  return (*(a8 + 8 * (((v11 != a7) * ((((v8 - 3400) | 0x1213) + 15) ^ 0x12CC)) ^ v8)))();
}

uint64_t sub_100128344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x27F1u)))(32);
  v10 = STACK[0x628];
  STACK[0xA80] = v9 + 0x51CE20ABD81C933BLL;
  return (*(v10 + 8 * (((v9 == 0) * ((((v8 - 3685) | 0x1864) - 1441) ^ 0x1230)) ^ v8)))();
}

uint64_t sub_1001283C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(v11 + 1480) = v10;
  *(a1 + 16) = v8 + 540051864 + ((v9 - 2021765001) & 0x7881B77B);
  v13 = (*(a8 + 8 * (v9 + 4370)))((v8 - 1443455183));
  v14 = STACK[0x628];
  *(a1 + 24) = v13;
  return (*(v14 + 8 * ((228 * (v13 != 0)) ^ v9)))();
}

uint64_t sub_100128488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xA34]) = a6;
  if (a6 == 68588956)
  {
    v11 = v9[1];
    v12 = *(v11 - 0x51CE20ABD81C9333);
    v13 = v9[121];
    *(v13 - 0x51CE20ABD81C9333) = v12;
    *(v13 - 0x51CE20ABD81C933BLL) = *(v11 - 0x51CE20ABD81C933BLL);
    return (*(a8 + 8 * (((v12 == 0x51CE20ABD81C933BLL) * ((v8 - 1239) ^ v8 ^ 0x1F3C)) ^ (v8 - 2668))))();
  }

  else if (a6 == 68545953)
  {
    return (*(a8 + 8 * (((*(v9[15] - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL) * (((v8 - 431138128) & 0x19B29AF7) - 2159)) ^ (v8 + 477))))();
  }

  else
  {
    return (*(a8 + 8 * ((200 * (((*(v9[121] - 0x51CE20ABD81C9323) == 0) ^ (((v8 - 95) ^ 0xD) + 1)) & 1)) ^ (v8 - 2168))))();
  }
}

uint64_t sub_100128924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 + 4284)))();
  v11 = STACK[0x628];
  *(v9 - 0x51CE20ABD81C9323) = 0;
  return (*(v11 + 8 * v8))(v10);
}

uint64_t sub_100128A14@<X0>(uint64_t a1@<X7>, void *a2@<X8>)
{
  *(v4 - 0x51CE20ABD81C933BLL) = v2;
  *(v2 - 0x51CE20ABD81C9333) = *a2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_100128A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (((*(*(v9 + 1000) - 0x510808E226CB14F7) == ((v8 - 52) ^ 0x99)) * (((v8 + 1312) | 0x4DB) ^ 0x377F)) ^ v8));
  LODWORD(STACK[0xE00]) = v8 + 7628;
  return v10();
}

uint64_t sub_100128B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 240) = (v9 + 2235) ^ (1949688233 * ((v10 + 1339460718 - 2 * ((v10 - 240) & 0x4FD68D5E)) ^ 0xA891DBD5));
  v11 = (*(a8 + 8 * (v9 + 5278)))(v10 - 240);
  v12 = STACK[0x628];
  *(v8 - 0x510808E226CB148CLL) = (*(v10 - 232) ^ 0x590F69EC) + ((2 * *(v10 - 232)) & 0xEC7BC5BA ^ 0x4C610422) + ((239 * (v9 ^ 0x14FD)) ^ 0x5FCB7C22);
  return (*(v12 + 8 * v9))(v11);
}

uint64_t sub_100128D98@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(a1 + 8 * ((9051 * (*(*(v2 + 1000) - 0x510808E226CB1494) == ((a2 ^ 0xD4) + 86))) ^ a2));
  LODWORD(STACK[0xE00]) = a2 ^ 0x23D4;
  return v3();
}

uint64_t sub_100128DE0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (16 * a2) ^ 0x9890;
  *(v2 - 0x510808E226CB1488) += v3 - 10447;
  v4 = *(a1 + 8 * a2);
  LODWORD(STACK[0xE00]) = v3;
  return v4();
}

uint64_t sub_100128E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0xE00];
  LODWORD(STACK[0xE04]) = STACK[0xE00];
  LODWORD(STACK[0xE08]) = 94 * (v9 ^ 0x28F6);
  v10 = 277 * (v9 ^ 0x28D3u);
  LODWORD(STACK[0xE0C]) = v10;
  v8[235] = v8[124];
  v11 = v8[149];
  v12 = &STACK[0xEA0] + v11 + v10 - 0x3A611B21EA74DBA5;
  v8[90] = v12;
  v8[236] = v12 + 16;
  v8[3] = v12 + 16;
  STACK[0x638] = (v12 + 48);
  v11 += 80;
  v8[237] = v11;
  v8[149] = v11;
  v8[232] = v12;
  LOBYTE(STACK[0xDF7]) = 0;
  v8[230] = 16;
  v8[229] = *(a8 + 8 * (v9 + 134));
  return (*(a8 + 8 * (LODWORD(STACK[0xE04]) ^ 0x193)))();
}

uint64_t sub_100128ED8()
{
  v1 = *(v0 + 1856);
  v2 = LOBYTE(STACK[0xDF7]);
  v3 = *(v0 + 1840);
  v4 = -v1 & 7;
  if (v4 > v3)
  {
    LODWORD(v4) = *(v0 + 1840);
  }

  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          goto LABEL_20;
        }

        *v1++ = v2;
      }

      *v1++ = v2;
    }

    else if (v4 == 4)
    {
LABEL_16:
      *v1++ = v2;
      goto LABEL_17;
    }

    *v1++ = v2;
    goto LABEL_16;
  }

  switch(v4)
  {
    case 1:
LABEL_19:
      *v1++ = v2;
      break;
    case 2:
LABEL_18:
      *v1++ = v2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *v1++ = v2;
      goto LABEL_18;
  }

LABEL_20:
  v5 = v3 - v4;
  if (v5 >= 8)
  {
    v6 = 0x101010101010101 * v2;
    v7 = ((v5 >> 3) + 7) >> 3;
    v8 = (v5 >> 3) & 7;
    if (v8 > 3)
    {
      if (((v5 >> 3) & 7) <= 5)
      {
        if (v8 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v8 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v5 >> 3) & 7) > 1)
    {
      if (v8 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v8)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *v1 = v6;
      v1 += 8;
      if (!--v7)
      {
        break;
      }

LABEL_32:
      *v1 = v6;
      v1 += 8;
LABEL_33:
      *v1 = v6;
      v1 += 8;
LABEL_34:
      *v1 = v6;
      v1 += 8;
LABEL_35:
      *v1 = v6;
      v1 += 8;
LABEL_36:
      *v1 = v6;
      v1 += 8;
LABEL_37:
      *v1 = v6;
      v1 += 8;
LABEL_38:
      *v1 = v6;
      v1 += 8;
    }
  }

  v9 = v5 & 7;
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 != 6)
      {
        *v1++ = v2;
      }

      *v1++ = v2;
    }

    else if (v9 == 4)
    {
      goto LABEL_53;
    }

    *v1++ = v2;
LABEL_53:
    *v1++ = v2;
LABEL_54:
    *v1++ = v2;
LABEL_55:
    *v1++ = v2;
    goto LABEL_56;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (!v9)
  {
    return (*(v0 + 1832))();
  }

LABEL_56:
  *v1 = v2;
  return (*(v0 + 1832))();
}

uint64_t sub_100129064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[232] = v10[236];
  LOBYTE(STACK[0xDF7]) = 0;
  v11 = *(a8 + 8 * (v9 + 5744));
  v10[230] = 32;
  v10[229] = v11;
  return (*(a8 + 8 * (v8 ^ 0x926)))();
}

uint64_t sub_100129104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0xE80];
  v9 = (*(a8 + 8 * (LODWORD(STACK[0xE80]) ^ 0xE7C)))(128);
  v10 = STACK[0x628];
  STACK[0x938] = v9 + 0x1138F6A92264F486;
  return (*(v10 + 8 * ((4061 * ((((v8 - 9007) ^ (v8 - 1) ^ (v9 == 0)) & 1) == 0)) ^ v8)))();
}

uint64_t sub_100129268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = a7;
  v8[118] = 0;
  LODWORD(STACK[0x7CC]) = 1443455193;
  v8[163] = 0;
  LODWORD(STACK[0xB2C]) = 1703714790;
  v9 = v8[235];
  v8[17] = v9;
  return (*(a8 + 8 * (((v9 == 0x1138F6A92264F486) * (LODWORD(STACK[0xE08]) - 3532)) ^ LODWORD(STACK[0xE04]))))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_1001292D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0xE0C];
  *(v8 + 904) = 0;
  LODWORD(STACK[0x9C4]) = 1703714790;
  return (*(a8 + 8 * (v9 ^ 0x2D35 ^ (15 * (v9 ^ 0x112)))))();
}

uint64_t sub_100129360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * v8);
  LODWORD(STACK[0x600]) = v9 - 2403;
  LODWORD(STACK[0x5E0]) = v9 - 4797;
  LODWORD(STACK[0x5D0]) = v9 - 3389;
  LODWORD(STACK[0x5C0]) = v9 + 170276784;
  LODWORD(STACK[0x5F0]) = v9 - 2033765095;
  return v10();
}

uint64_t sub_100129450@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v9 = v6 | 0x8B0;
  v10 = v5 - ((((v6 | 0x8B0) - 1571) ^ 0xB490AD76) & (2 * v5 - 1951639826)) + 538872659;
  v11 = 1110906037 * ((((v7 - 240) | 0xC58E5AEF) + (~(v7 - 240) | 0x3A71A510)) ^ 0x4CC9365E);
  v8[278] = v2;
  v8[282] = v4;
  *(v7 - 224) = v11 + (v6 | 0x8B0) - 975;
  *(v7 - 240) = v10 ^ v11;
  v8[280] = a2;
  *(v7 - 220) = v11 + 1061841929;
  *(v7 - 208) = (v3 ^ 0x7F75BE5A) - v11 + ((2 * v3) & 0xB8483424) - 67371008;
  v12 = (*(a1 + 8 * ((v6 | 0x8B0) + 4290)))(v7 - 240);
  return (*(STACK[0x628] + 8 * v9))(v12);
}

uint64_t sub_100129764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>)
{
  STACK[0x610] = *(a7 + 8 * v8);
  *(v9 + 1352) = 0;
  return (*(a7 + 8 * ((61 * (*(v9 + 1352) < (a8 ^ 0x1A43u) - 4782)) ^ a8)))(a1, a2, a3, a4, a5, a6, 2957849957, 0x33855C0FF4F1CE42);
}

uint64_t sub_1001299C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = STACK[0x5F0] & 0x7938BC5E;
  v10 = LODWORD(STACK[0x624]) + 5020;
  v11 = v7 == a7;
  if (v7 == a7)
  {
    v12 = 94;
  }

  else
  {
    v12 = 93;
  }

  LOBYTE(STACK[0xB5F]) = v12;
  return (*(v8 + 8 * (((v9 ^ 0xA83) * v11) ^ v10)))();
}

uint64_t sub_100129AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 1272);
  *v10 = 0u;
  v10[1] = 0u;
  return (*(a8 + 8 * (v8 ^ 0x502 ^ (2434 * (v8 ^ 0x3E0)))))();
}

uint64_t sub_100129CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(a3 - 0x1138F6A92264F476) = *(v4 - 0x61CEF89FDDA89DF2);
  *(a3 - 0x1138F6A92264F42ELL) = *(v4 - 0x61CEF89FDDA89DAALL);
  *(a3 - 0x1138F6A92264F42ALL) = *(v4 - 0x61CEF89FDDA89DA6);
  *(a3 - 0x1138F6A92264F426) = *(v4 - 0x61CEF89FDDA89DA2);
  *(a3 - 0x1138F6A92264F425) = *(v4 - 0x61CEF89FDDA89DA1);
  *(a3 - 0x1138F6A92264F40ELL) = *(v4 - 0x61CEF89FDDA89D8ALL);
  *(a3 - 0x1138F6A92264F422) = *(v4 - 0x61CEF89FDDA89D9ELL);
  *(a3 - 0x1138F6A92264F40ALL) = *(v4 - 0x61CEF89FDDA89D86) & 1 ^ 0x9D;
  return (*(a2 + 8 * v3))(a1, a3 - 0x1138F6A92264F44FLL, v4 - 0x61CEF89FDDA89DCBLL, (v3 - 2651), -1012709627, (v3 - 2473), -429847691, 115);
}

uint64_t sub_100129E90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  v15 = (v9 - 1) & 0xF;
  *(a2 + v9) = (v8 - 52) ^ *(a3 + v9) ^ (v15 * a8) ^ *(*(v14 + 8 * a4) + a5 + v15) ^ *(v15 + *(v14 + 8 * a6) + a7 + 2) ^ *(*(v14 + 8 * v10) + v11 + v15) ^ v12;
  return (*(v13 + 8 * (((v9 == -31) | (16 * (v9 == -31))) ^ v8)))();
}

uint64_t sub_100129F58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = STACK[0x628];
  *(a2 + v7) = *(a3 + v7) ^ v5 ^ *(v8 + ((v7 - 1) & 0xF)) ^ *(((v7 - 1) & 0xF) + v9 + 2) ^ (((v7 - 1) & 0xF) * a4) ^ *(a1 + ((v7 - 1) & 0xF)) ^ a5;
  return (*(v10 + 8 * (((8 * (v7 == -31)) | (16 * (v7 == -31))) ^ v6)))();
}

uint64_t sub_10012A11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v9 = *(v8 - 0x61CEF89FDDA89DEELL);
  *(a7 - 0x1138F6A92264F472) = v9;
  return (*(a6 + 8 * (((v9 == 408423770) * (v7 - 3712)) ^ v7)))(a1, a2, a3, a4, a5, 68588956, 0x5A0411E37F4B9882);
}

uint64_t sub_10012A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a3 - 1189454755;
  *(v11 + v12) = *(v10 + v12) ^ *(a1 + v12) ^ (-103 * v12) ^ *(v12 + v8 + 3) ^ *(a2 + v12) ^ 0x1B;
  return (*(a8 + 8 * ((237 * (((v9 + 74) ^ (a3 == 1189454755)) & 1)) ^ v9)))();
}

uint64_t sub_10012A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 + 1280) = *(a8 + 8 * v11);
  *(v12 + 736) = v9;
  STACK[0x6A8] = 0;
  LODWORD(STACK[0x7A4]) = 1641937172;
  LODWORD(STACK[0xB44]) = 1443455193;
  return (*(a8 + 8 * (((v10 == a7) * (((v8 - 1120721981) & 0x42CCDDCF ^ 0xFFFFF066) + ((v8 - 2544) | 0x82))) ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_10012A604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v8 + 7) & 0xF;
  LODWORD(STACK[0x7A4]) = v9 - v11 + 16;
  return (*(a8 + 8 * ((734 * ((v10 - v11 - 6470) + (v8 - 1639512387) < 0xFFFFFFF6)) ^ v10)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_10012A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8 - v10;
  LODWORD(STACK[0xB44]) = v12 + (v11 ^ 0xB98) - 196061982;
  v13 = (*(a8 + 8 * (v11 ^ 0x30D7)))((v9 + v12 + 26));
  v14 = STACK[0x628];
  STACK[0x6A8] = v13;
  STACK[0x2B0] = v13;
  return (*(v14 + 8 * (((v13 != 0) * (((v11 - 5462) | 0x114) ^ 0x5DF)) ^ v11)))();
}

uint64_t sub_10012AC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v13 + v12 - 0x6D14C2605E6645F6;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((2 * v19 - 0x481EF222FE3F2E1CLL) & 0xDCF292637B6AEEE2) - v19 - 0x4A69D0203E95E064;
  v21 = __ROR8__(v20 ^ 0xB901B5D0FB7E1934, 8);
  v20 ^= 0x668582A4FC7D5EA2uLL;
  v22 = (v21 + v20) ^ 0xD87AD12BCA74F052;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = *(a8 + 8 * v16);
  v25 = (__ROR8__(v22, 8) + v23) ^ a2;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a4;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xF3F7DBDA085E5D0ELL) - (v29 + v28) + 0x6041212FBD0D178) ^ 0x2CF0B7826F52AE16;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xD1F1C0AC37998AEALL) + 0x68F8E0561BCCC575) ^ 0xFAC2E9C199AED09FLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0xE2BBCC865B64A0F6) - (v35 + v34) - 0x715DE6432DB2507BLL) ^ 0xCD720243AB2A78F2;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  *v18 = (((a6 - ((v38 + v37) | a6) + ((v38 + v37) | 0xBF5EB888E76D8BA5)) ^ 0xC77C7B2590817EFELL) >> (8 * (v18 & 7u))) ^ HIBYTE(v10) ^ 0x63;
  v39 = __ROR8__((v18 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((v39 - 0x240F79117F1F970ELL) | 0x13AB6A934168D1B5) - ((v39 - 0x240F79117F1F970ELL) | v8) + v8;
  v41 = v40 ^ 0x3B2C698DF85C400FLL;
  v40 ^= 0xE4A85EF9FF5F0799;
  v42 = __ROR8__(v41, 8);
  v43 = (v42 + v40 - ((2 * (v42 + v40)) & 0xEF27830E4C4E4466) - 0x86C3E78D9D8DDCDLL) ^ 0x2FE910ACEC53D261;
  v44 = v43 ^ __ROR8__(v40, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) | 0x3B02E78768F7F00CLL) - (v45 + v44) - 0x1D8173C3B47BF806) ^ 0x8240E9684FA4BA5ELL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0xB74DE82257E8BFA4) + 0x5BA6F4112BF45FD2) ^ 0xCBB790F10489F60CLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x2AF4A59094827F6ELL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x923A0997826215EALL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * (v55 + v54)) & 0xF7F04EF2B6E348C6) - (v55 + v54) - 0x7BF827795B71A464) ^ 0x38283C8622167315;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = __ROR8__(v56, 8);
  *(v18 + 1) = (((a7 - ((v58 + v57) | a7) + ((v58 + v57) | 0xFA3DD0C0E2973B74)) ^ 0x821F136D957BCE2FLL) >> (8 * ((v18 + 1) & 7))) ^ BYTE2(v10) ^ 0xB5;
  v59 = __ROR8__((v18 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = -2 - (((v15 - v59) | 0xD3AF7ADB7EE08812) + ((v59 - 0x240F79117F1F970ELL) | 0x2C508524811F77EDLL));
  v61 = __ROR8__(v60 ^ 0xFB2879C5C7D419A8, 8);
  v60 ^= 0x24AC4EB1C0D75E3EuLL;
  v62 = (((2 * (v61 + v60)) & 0x748754D312A22E04) - (v61 + v60) - 0x3A43AA6989511703) ^ 0x1DC684BDBCDA18AFLL;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ a2;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v11 - ((v66 + v65) | v11) + ((v66 + v65) | 0x39C3805A5760F9F2)) ^ 0xA9D2E4BA781D502CLL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  v70 = __ROR8__((((2 * (v69 + v68)) | 0xA79BDD206F226E2CLL) - (v69 + v68) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878, 8);
  v71 = (((2 * (v69 + v68)) | 0xA79BDD206F226E2CLL) - (v69 + v68) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878 ^ __ROR8__(v68, 61);
  v72 = (v70 + v71) ^ 0x923A0997826215EALL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ v14;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  LOBYTE(v37) = (((((2 * (v76 + v75)) & 0x5C715BFC7CAE6902) - (v76 + v75) + 0x51C75201C1A8CB7ELL) ^ 0x29E591ACB6443E25) >> (8 * ((v18 + 2) & 7))) ^ BYTE1(v10) ^ 0xB;
  v77 = __ROR8__((v18 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v18 + 2) = v37;
  v78 = ((2 * v77 + 0x37E10DDD01C0D1E4) & 0x78FE4AD8FA3B9EA8) - v77 + 0x679053A50201C7B9;
  v79 = v78 ^ 0x6B07D98D3BD6A111;
  v78 ^= 0xB483EEF93CD5E687;
  v80 = (__ROR8__(v79, 8) + v78) ^ 0xD87AD12BCA74F052;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ a2;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a4;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) | 0xE0B9FE80D0CE9B80) - (v86 + v85) + 0xFA300BF9798B240) ^ 0xDAA85AD0FCE532AELL;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((v89 + v88) ^ 0xF182E7DD6525616ELL) - ((2 * ((v89 + v88) ^ 0xF182E7DD6525616ELL)) & 0xB32EBAB8706D558ALL) + 0x59975D5C3836AAC5) ^ 0x3A2FB316DF71DE41;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (a5 - ((v92 + v91) | a5) + ((v92 + v91) | 0xB44CF38193047BF6)) ^ 0x8631781159C537FLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  *(v18 + 3) = v10 ^ v9 ^ (((((2 * (v95 + v94)) | 0x6A77489B32493A54) - (v95 + v94) - 0x353BA44D99249D2ALL) ^ v17) >> (8 * ((v18 + 3) & 7)));
  return v24();
}

uint64_t sub_10012B40C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = STACK[0x624];
  *a1 = v8;
  *v9 = v10;
  return (*(a8 + 8 * (v11 + 2497)))();
}

uint64_t sub_10012B4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = -1343210491 - *(v9 - 0x51CE20ABD81C932BLL);
  v12 = ((v8 - 671270918) < 0x39B6313D) ^ (v11 < ((v10 + 95) ^ 0x39B62CF2u));
  v13 = v8 - 671270918 > v11;
  if (v12)
  {
    v14 = (v8 - 671270918) < 0x39B6313D;
  }

  else
  {
    v14 = v13;
  }

  return (*(a8 + 8 * ((7 * v14) ^ v10)))();
}

uint64_t sub_10012B5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (LODWORD(STACK[0x290]) + v10 - 3060 + v8 - 1239458933);
  STACK[0x610] = (v11 ^ 0x3DDF9DCF8FF67BE7) - 0x540040080004082 + ((2 * v11) & 0x11FECF7CELL);
  return (*(a8 + 8 * ((63 * (v9 + a3 + ((v10 - 718) | 0xB71u) + 52427955 + 1 < 8)) ^ (v10 - 3060))))();
}

uint64_t sub_10012B750(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x3C0]) = 0;
  LODWORD(STACK[0x5E0]) = v8 ^ 0x17AC;
  v9 = *(a8 + 8 * (v8 ^ (4 * (a1 < (v8 ^ 0x17AC ^ v8 ^ 0x9BF ^ 0x1E03u)))));
  LODWORD(STACK[0x3B0]) = a1;
  return v9();
}

uint64_t sub_10012B790(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 8 * SLODWORD(STACK[0x5E0]));
  *&STACK[0x600] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x5D0]) = a1 & 0xFFFFFFF8;
  *&STACK[0x5F0] = xmmword_1002A9AA0;
  return v8();
}

uint64_t sub_10012B91C(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, double a9, int8x16_t a10, int64x2_t a11, int8x16_t a12, int64x2_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16)
{
  v39.i64[0] = v16 + v17 + a4 + (a7 + a3 + 8);
  v39.i64[1] = v16 + v17 + a4 + (a5 + a3 + 8);
  v40.i64[0] = v16 + v17 + a4 + (v20 + a3 + 8);
  v40.i64[1] = v16 + v17 + a4 + (a8 + a3 + 8);
  v41.i64[0] = v16 + v17 + a4 + (v22 + a3 + 8);
  v41.i64[1] = v16 + v17 + a4 + (v21 + a3 + 8);
  v42.i64[0] = v16 + v17 + a4 + a2 + a3 + (a6 ^ (v18 + 287)) + 8;
  v42.i64[1] = v16 + v17 + a4 + (a1 + a3 + 8);
  v43 = vandq_s8(v41, *&STACK[0x600]);
  v44 = vandq_s8(v40, *&STACK[0x600]);
  v45 = vandq_s8(v42, *&STACK[0x600]);
  v46 = vandq_s8(v39, *&STACK[0x600]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a11);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a11);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a11);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), a11);
  v51 = vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), a12), v48);
  v52 = vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), a12), v47);
  v53 = vaddq_s64(v51, a13);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), a12), v50), a13);
  v55 = veorq_s8(v54, a14);
  v56 = veorq_s8(v53, a14);
  v57 = veorq_s8(v53, a15);
  v58 = veorq_s8(v54, a15);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v57), a16);
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58), a16);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v63 = veorq_s8(v59, v60);
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(v66, vandq_s8(vaddq_s64(v66, v66), v25)), v26), v27);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), v25)), v26), v27);
  v69 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), v28), v74), v29), v30);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), v28), v73), v29), v30);
  v77 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v31);
  v83 = veorq_s8(v81, v31);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v32);
  v90 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v91 = veorq_s8(v88, v32);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = vaddq_s64(v94, v92);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v33)), v34), v35);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), v33)), v34), v35);
  v99 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v104 = vaddq_s64(v52, a13);
  v105 = vaddq_s64(v103, v101);
  v106 = vaddq_s64(v102, v100);
  v143.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v36)), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a10)));
  v143.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v106, vandq_s8(vaddq_s64(v106, v106), v36)), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a10)));
  v107 = veorq_s8(v104, a14);
  v108 = veorq_s8(v104, a15);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a16);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), v25)), v26), v27);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), v28), v114), v29), v30);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v31);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v32);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(v121, vandq_s8(vaddq_s64(v121, v121), v33)), v34), v35);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v124 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), a12), v49), a13);
  v143.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v123, vandq_s8(vaddq_s64(v123, v123), v36)), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a10)));
  v125 = veorq_s8(v124, a14);
  v126 = veorq_s8(v124, a15);
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), a16);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(v129, vandq_s8(vaddq_s64(v129, v129), v25)), v26), v27);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), v28), v132), v29), v30);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v31);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v32);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), v33)), v34), v35);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL)));
  v143.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v141, vandq_s8(vaddq_s64(v141, v141), v36)), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a10)));
  *(v41.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v143, *&STACK[0x5F0]));
  return (*(v24 + 8 * ((63 * (v23 == a3)) ^ v19)))();
}

uint64_t sub_10012C194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v11 = *(a2 - 0x51CE20ABD81C9323);
  LODWORD(STACK[0x290]) = v10;
  return (*(a8 + 8 * (((((2407 * (v8 ^ 0x21E5)) ^ 0xE31) - 6451) * ((a7 + a5 + 62324933) < 8)) ^ v8)))(a1, a2, 3556188685, v11, 0xF8BBAAE4CC3892D5, ((2 * (v10 + v9)) & 0x17FDEDCFELL) + ((v10 + v9) ^ 0x77FF8E2FBFEF6E7FLL) - 0x77FF8E2FBFEF6E7FLL, STACK[0x2B0]);
}

uint64_t sub_10012C334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(a50) = a1;
  LODWORD(a48) = v62 - 1825;
  LODWORD(STACK[0x270]) = v62 - 4786;
  v64 = *(a8 + 8 * (v62 - 4786));
  LODWORD(a49) = v63 & 0xFFFFFFF0;
  LODWORD(STACK[0x280]) = -(v63 & 0xFFFFFFF0);
  LODWORD(STACK[0x260]) = a52 + a53 + 62324917;
  LODWORD(STACK[0x250]) = a52 + a53 + 62324918;
  LODWORD(STACK[0x240]) = a52 + a53 + 62324919;
  LODWORD(STACK[0x230]) = a52 + a53 + 62324920;
  LODWORD(STACK[0x220]) = a52 + a53 + 62324921;
  LODWORD(STACK[0x210]) = a52 + a53 + 62324922;
  LODWORD(STACK[0x200]) = a52 + a53 + 62324923;
  LODWORD(a61) = a52 + a53 + 62324930;
  LODWORD(a59) = a52 + a53 + v62 + 62318292;
  LODWORD(a58) = a52 + a53 + 62324932;
  return v64(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_10012C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, int a60, uint64_t a61, int a62, uint64_t a63)
{
  v81 = (a66 + v72 + 16);
  v82 = (a68 + v72 + 16);
  v83 = (a69 + v72 + 16);
  v84 = (v71 + v72 + 16);
  v85.i64[0] = a4 + v81;
  v85.i64[1] = a4 + v82;
  v86.i64[0] = a4 + v83;
  v86.i64[1] = a4 + v84;
  v87.i64[0] = a7 + v81 + a6;
  v87.i64[1] = a7 + v82 + a6;
  v88.i64[0] = a7 + v83 + a6;
  v88.i64[1] = a7 + v84 + a6;
  v89 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v90 = vandq_s8(v86, v89);
  v91 = vandq_s8(v85, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v94 = vdupq_n_s64(0x695A575CC8A36DAuLL);
  *&STACK[0x3C0] = v94;
  v95 = vdupq_n_s64(v77);
  v96 = vdupq_n_s64(a5);
  v97 = vbslq_s8(v96, vsubq_s64(v95, v92), vaddq_s64(v92, v94));
  v98 = vbslq_s8(v96, vsubq_s64(v95, v93), vaddq_s64(v93, v94));
  v99 = v96;
  v100 = vdupq_n_s64(v73);
  *&STACK[0x480] = v100;
  v101 = veorq_s8(v98, v100);
  v102 = veorq_s8(v97, v100);
  v103 = vdupq_n_s64(0x4167EF87FBBF3BD1uLL);
  v104 = veorq_s8(v97, v103);
  v105 = veorq_s8(v98, v103);
  v106 = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v104), v106);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105), v106);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v110 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v113 = vdupq_n_s64(0x9FF680025D795089);
  v114 = vdupq_n_s64(0x60097FFDA286AF76uLL);
  v115 = vdupq_n_s64(0x9A70B1A0F5DDA84uLL);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v113), vorrq_s8(v111, v114)), v114), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v113), vorrq_s8(v112, v114)), v114), v115);
  v118 = v115;
  v119 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v121 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v120);
  v123 = vaddq_s64(v121, v119);
  v124 = vdupq_n_s64(v75);
  v125 = veorq_s8(v123, v124);
  v126 = veorq_s8(v122, v124);
  v127 = v124;
  v128 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v129 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v130 = veorq_s8(v125, v128);
  v131 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v132 = vdupq_n_s64(v74);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v130);
  v134 = veorq_s8(vaddq_s64(v131, v129), v132);
  v135 = veorq_s8(v133, v132);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v137 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v137);
  v140 = vaddq_s64(v138, v136);
  v141 = vdupq_n_s64(0xF837371F58F9BF6CLL);
  v142 = vdupq_n_s64(0x83E464705383204ALL);
  *&STACK[0x570] = v142;
  v143 = vdupq_n_s64(0x3F7B939D4CDF8FC5uLL);
  *&STACK[0x500] = v143;
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v140, v140), v141), v140), v142), v143);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), v141), v139), v142), v143);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v147 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v147);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v150 = vdupq_n_s64(0x3D50F30F384595A6uLL);
  *&STACK[0x560] = v150;
  v151 = vdupq_n_s64(0xE157867863DD352CLL);
  *&STACK[0x580] = v151;
  v152 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v150), v148), v151);
  v153 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v149, v149), v150), v149), v151);
  v154 = vdupq_n_s64(0x54D6460F57505710uLL);
  v155 = veorq_s8(v153, v154);
  *&STACK[0x5D0] = v154;
  v156 = veorq_s8(v152, v154);
  v157 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v158 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v159 = veorq_s8(v155, v157);
  v160 = v89;
  v161 = vandq_s8(v88, v89);
  v162 = vandq_s8(v87, v89);
  v163 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v166 = vdupq_n_s64(0x1BF086EE80E068F2uLL);
  *&STACK[0x440] = v166;
  v167 = vaddq_s64(v165, v166);
  v168 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v169 = vaddq_s64(v163, v166);
  v170 = vdupq_n_s64(v76);
  *&STACK[0x430] = v170;
  v171 = vsubq_s64(v170, v165);
  v172 = vaddq_s64(v168, v159);
  v173 = vdupq_n_s64(0xED72F297E808ACF8);
  v174 = vbslq_s8(v173, vsubq_s64(v170, v163), v169);
  v175 = vdupq_n_s64(0xC5F5F189513C3D42);
  v176 = vaddq_s64(v164, v158);
  v177 = vbslq_s8(v173, v171, v167);
  *&STACK[0x300] = v173;
  v178 = veorq_s8(v174, v175);
  *&STACK[0x600] = v175;
  v179 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v180 = veorq_s8(v177, v175);
  v181 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v182 = vdupq_n_s64(0x1A71C6FD563F7AD4uLL);
  v183 = veorq_s8(v174, v182);
  *&STACK[0x550] = v182;
  v184 = vaddq_s64(v179, v183);
  v185 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v186 = veorq_s8(v177, v182);
  v187 = vdupq_n_s64(v80);
  v188 = veorq_s8(vaddq_s64(v181, v186), v187);
  *&STACK[0x540] = v187;
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v191 = veorq_s8(v184, v187);
  v192 = veorq_s8(v191, v185);
  v193 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v194 = vaddq_s64(v190, v189);
  v195 = vdupq_n_s64(0x6604FF7B30B3B3E2uLL);
  *&STACK[0x530] = v195;
  v196 = vsubq_s64(vorrq_s8(vaddq_s64(v194, v194), v195), v194);
  v197 = vaddq_s64(v193, v192);
  v198 = vsubq_s64(vorrq_s8(vaddq_s64(v197, v197), v195), v197);
  v199 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v200 = vdupq_n_s64(0xCCFD804267A6260FLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v202 = vaddq_s64(v198, v200);
  v203 = v200;
  *&STACK[0x510] = v200;
  v204 = vdupq_n_s64(0xACC3E51663869BA9);
  v205 = veorq_s8(v202, v204);
  v206 = v204;
  *&STACK[0x5E0] = v204;
  v207 = veorq_s8(v205, v201);
  v208 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v209 = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  *&STACK[0x590] = v209;
  v210 = vdupq_n_s64(0x38uLL);
  v211 = vshlq_u64(veorq_s8(v172, v209), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v210)));
  v212 = veorq_s8(vaddq_s64(v196, v203), v206);
  v213 = veorq_s8(v212, v199);
  v214 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v215 = vaddq_s64(v208, v207);
  v216 = vdupq_n_s64(0x26C3D91CAAAAC0CCuLL);
  v217 = vaddq_s64(v214, v213);
  *&STACK[0x490] = v216;
  v218 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v219 = vdupq_n_s64(0x6C9E1371AAAA9F99uLL);
  v220 = vdupq_n_s64(0xFC8F779185D73647);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v217, v217), v216), v217), v219), v220);
  *&STACK[0x5C0] = v220;
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v223 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  *&STACK[0x3E0] = v219;
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v215, v215), v216), v215), v219), v220);
  v225 = veorq_s8(v224, v218);
  v226 = vaddq_s64(v223, v222);
  v227 = vdupq_n_s64(0x8429C13B901A7D44);
  *&STACK[0x610] = v227;
  v228 = vsubq_s64(v226, vandq_s8(vaddq_s64(v226, v226), v227));
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225);
  v230 = vsubq_s64(v229, vandq_s8(vaddq_s64(v229, v229), v227));
  v231 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v232 = vdupq_n_s64(0xC214E09DC80D3EA2);
  v233 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v234 = vaddq_s64(v230, v232);
  *&STACK[0x5A0] = v232;
  v235 = vdupq_n_s64(0xE8E0450D5C8F41CCLL);
  v236 = veorq_s8(v234, v235);
  v237 = v235;
  *&STACK[0x520] = v235;
  v238 = veorq_s8(v236, v233);
  v239 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v240 = veorq_s8(vaddq_s64(v228, v232), v237);
  v241 = veorq_s8(v240, v231);
  v242 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v243 = vaddq_s64(v239, v238);
  v244 = vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL);
  v245 = vaddq_s64(v242, v241);
  v246 = vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL);
  v247 = vdupq_n_s64(v78);
  v248 = veorq_s8(v245, v247);
  v249 = v247;
  *&STACK[0x4D0] = v247;
  v250 = veorq_s8(v248, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v252 = vshlq_u64(veorq_s8(v176, v209), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v210)));
  v253 = veorq_s8(v243, v249);
  v254 = veorq_s8(v253, v244);
  v255 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v256 = vaddq_s64(v251, v250);
  v257 = vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL);
  v258 = vaddq_s64(v255, v254);
  v259 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v260 = vdupq_n_s64(v79);
  v261 = veorq_s8(v258, v260);
  *&STACK[0x5B0] = v260;
  v262 = veorq_s8(v256, v260);
  v263 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), veorq_s8(v262, v257));
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), veorq_s8(v261, v259));
  v265 = vdupq_n_s64(0xE4A245799371E26BLL);
  *&STACK[0x4F0] = v265;
  v266 = vdupq_n_s64(v70);
  v267 = vdupq_n_s64(0x9C8086D4E49D1730);
  *&STACK[0x5F0] = v267;
  *&STACK[0x3D0] = v210;
  v632.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v263, v265), vorrq_s8(v263, v266)), v266), v267), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v210))), v252);
  v632.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v264, v265), vorrq_s8(v264, v266)), v266), v267), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v210))), v211);
  v268 = (a62 + v72 + 16);
  v269 = (a64 + v72 + 16);
  v211.i64[0] = a4 + v268;
  v211.i64[1] = a4 + v269;
  *&STACK[0x2C0] = v160;
  v270 = vandq_s8(v211, v160);
  v271 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v272 = *&STACK[0x3C0];
  v273 = v99;
  v274 = vbslq_s8(v99, vsubq_s64(v95, v271), vaddq_s64(v271, *&STACK[0x3C0]));
  v275 = *&STACK[0x480];
  v276 = veorq_s8(v274, *&STACK[0x480]);
  *&STACK[0x320] = v103;
  *&STACK[0x330] = v113;
  v277 = veorq_s8(v274, v103);
  v278 = vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL);
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), v277), v106);
  v280 = veorq_s8(v279, v278);
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v280);
  *&STACK[0x3F0] = v114;
  *&STACK[0x400] = v118;
  v282 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v281, v113), vorrq_s8(v281, v114)), v114), v118);
  v283 = veorq_s8(v282, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  *&STACK[0x410] = v127;
  v284 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v283), v127);
  v285 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL));
  *&STACK[0x340] = v132;
  v286 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285), v132);
  v287 = veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287);
  *&STACK[0x420] = v141;
  v289 = vsubq_s64(vorrq_s8(vaddq_s64(v288, v288), v141), v288);
  v290 = vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL);
  v288.i64[0] = a7 + v268 + a6;
  v288.i64[1] = a7 + v269 + a6;
  v291 = vandq_s8(v288, v160);
  v292 = vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL);
  v293 = *&STACK[0x570];
  v294 = *&STACK[0x500];
  v295 = veorq_s8(vaddq_s64(v289, *&STACK[0x570]), *&STACK[0x500]);
  v296 = veorq_s8(v295, v290);
  v297 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v298 = vbslq_s8(v173, vsubq_s64(*&STACK[0x430], v292), vaddq_s64(v292, *&STACK[0x440]));
  v299 = vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL);
  v300 = vaddq_s64(v297, v296);
  v301 = veorq_s8(v298, *&STACK[0x600]);
  v302 = veorq_s8(v298, *&STACK[0x550]);
  v303 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v304 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302), *&STACK[0x540]);
  v305 = veorq_s8(v304, v303);
  v306 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305);
  v307 = *&STACK[0x560];
  v308 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v306, v306), *&STACK[0x530]), v306), *&STACK[0x510]), *&STACK[0x5E0]);
  v309 = veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v309);
  v311 = vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL);
  v312 = *&STACK[0x580];
  v313 = *&STACK[0x5D0];
  v314 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v300, v300), *&STACK[0x560]), v300), *&STACK[0x580]), *&STACK[0x5D0]);
  v315 = veorq_s8(v314, v299);
  v316 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v317 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v310, v310), v216), v310), v219), *&STACK[0x5C0]);
  v318 = veorq_s8(v317, v311);
  v319 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL), v318);
  v320 = *&STACK[0x520];
  v321 = veorq_s8(vaddq_s64(vsubq_s64(v319, vandq_s8(vaddq_s64(v319, v319), *&STACK[0x610])), *&STACK[0x5A0]), *&STACK[0x520]);
  v322 = veorq_s8(v321, vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL));
  v323 = *&STACK[0x4D0];
  v324 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322), *&STACK[0x4D0]);
  v325 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v326 = vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL);
  v327 = vaddq_s64(v316, v315);
  v328 = vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL);
  v329 = veorq_s8(vaddq_s64(v326, v325), *&STACK[0x5B0]);
  v330 = *&STACK[0x590];
  v331 = *&STACK[0x3D0];
  v332 = vshlq_u64(veorq_s8(v327, *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v211, 3uLL), *&STACK[0x3D0])));
  v333 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), veorq_s8(v329, v328));
  v334 = vorrq_s8(v333, *&STACK[0x4F0]);
  *&STACK[0x4E0] = v266;
  v632.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v334, vorrq_s8(v333, v266)), v266), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v288, 3uLL), v331))), v332);
  v335 = (a58 + v72 + 16);
  v336 = (a60 + v72 + 16);
  v337 = a4 + v335;
  v332.i64[0] = a4 + v335;
  v332.i64[1] = a4 + v336;
  v338 = *&STACK[0x2C0];
  v339 = vandq_s8(v332, *&STACK[0x2C0]);
  v340 = vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL);
  v341 = vbslq_s8(v273, vsubq_s64(v95, v340), vaddq_s64(v340, v272));
  v342 = veorq_s8(v341, v275);
  v343 = veorq_s8(v341, v103);
  v344 = vsraq_n_u64(vshlq_n_s64(v343, 3uLL), v343, 0x3DuLL);
  v345 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL), v343), v106);
  v346 = veorq_s8(v345, v344);
  v347 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v346);
  v348 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v347, v113), vorrq_s8(v347, *&STACK[0x3F0])), *&STACK[0x3F0]), v118);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v350 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), v349), v127);
  v351 = veorq_s8(v350, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v352 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v351), v132);
  v353 = veorq_s8(v352, vsraq_n_u64(vshlq_n_s64(v351, 3uLL), v351, 0x3DuLL));
  v354 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL), v353);
  v355 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v354, v354), v141), v354), v293), v294);
  v356 = veorq_s8(v355, vsraq_n_u64(vshlq_n_s64(v353, 3uLL), v353, 0x3DuLL));
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL), v356);
  v358 = vsubq_s64(vandq_s8(vaddq_s64(v357, v357), v307), v357);
  v359 = vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL);
  v360 = a7 + v335 + a6;
  v357.i64[0] = v360;
  v357.i64[1] = a7 + v336 + a6;
  v361 = vandq_s8(v357, *&STACK[0x2C0]);
  v362 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v363 = *&STACK[0x440];
  v364 = *&STACK[0x430];
  v365 = *&STACK[0x300];
  v366 = vbslq_s8(*&STACK[0x300], vsubq_s64(*&STACK[0x430], v362), vaddq_s64(v362, *&STACK[0x440]));
  v367 = veorq_s8(v366, *&STACK[0x600]);
  v368 = veorq_s8(v366, *&STACK[0x550]);
  v369 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v370 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL), v368), *&STACK[0x540]);
  v371 = veorq_s8(v370, v369);
  v372 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), v371);
  v373 = vsraq_n_u64(vshlq_n_s64(v371, 3uLL), v371, 0x3DuLL);
  v374 = veorq_s8(vaddq_s64(v358, v312), v313);
  v375 = veorq_s8(v374, v359);
  v376 = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v377 = *&STACK[0x510];
  v378 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v372, v372), *&STACK[0x530]), v372), *&STACK[0x510]), *&STACK[0x5E0]);
  v379 = veorq_s8(v378, v373);
  v380 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL), v379);
  v381 = vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL);
  v382 = vaddq_s64(v376, v375);
  v383 = *&STACK[0x3E0];
  v384 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v380, v380), *&STACK[0x490]), v380), *&STACK[0x3E0]), *&STACK[0x5C0]);
  v385 = veorq_s8(v384, v381);
  v386 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385);
  v387 = veorq_s8(vaddq_s64(vsubq_s64(v386, vandq_s8(vaddq_s64(v386, v386), *&STACK[0x610])), *&STACK[0x5A0]), v320);
  v388 = veorq_s8(v387, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v389 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v387, 0x38uLL), v387, 8uLL), v388), v323);
  v390 = veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v388, 3uLL), v388, 0x3DuLL));
  v391 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL), v390), *&STACK[0x5B0]);
  v392 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL), veorq_s8(v391, vsraq_n_u64(vshlq_n_s64(v390, 3uLL), v390, 0x3DuLL)));
  v393 = v331;
  v394 = vshlq_u64(veorq_s8(v382, v330), vnegq_s64(vandq_s8(vshlq_n_s64(v332, 3uLL), v331)));
  v395 = *&STACK[0x4F0];
  v632.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v392, *&STACK[0x4F0]), vorrq_s8(v392, *&STACK[0x4E0])), *&STACK[0x4E0]), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v357, 3uLL), v393))), v394);
  *&STACK[0x390] = xmmword_1002A9AB0;
  *&STACK[0x3B0] = vqtbl4q_s8(v632, xmmword_1002A9AB0);
  v396 = (a70 + v72 + 16);
  v397 = (LODWORD(STACK[0x200]) + v72 + 16);
  v307.i64[0] = a4 + v396;
  v307.i64[1] = a4 + v397;
  *&STACK[0x380] = v307;
  v398 = v338;
  v399 = vandq_s8(v307, v338);
  v400 = vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL);
  v401 = (LODWORD(STACK[0x210]) + v72 + 16);
  v402 = (LODWORD(STACK[0x220]) + v72 + 16);
  v399.i64[0] = a4 + v401;
  v399.i64[1] = a4 + v402;
  *&STACK[0x360] = v399;
  v403 = vandq_s8(v399, v338);
  v404 = vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL);
  v405 = (LODWORD(STACK[0x230]) + v72 + 16);
  v406 = (LODWORD(STACK[0x240]) + v72 + 16);
  v338.i64[0] = a4 + v405;
  v338.i64[1] = a4 + v406;
  v407 = vandq_s8(v338, v398);
  v408 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v409 = (LODWORD(STACK[0x250]) + v72 + 16);
  v410 = (LODWORD(STACK[0x260]) + v72 + 16);
  v632.val[0].i64[0] = a4 + v409;
  v632.val[0].i64[1] = a4 + v410;
  v411 = vandq_s8(v632.val[0], v398);
  v412 = vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL);
  *&STACK[0x370] = vbslq_s8(v273, vsubq_s64(v95, v400), vaddq_s64(v400, v272));
  v413 = vbslq_s8(v273, vsubq_s64(v95, v404), vaddq_s64(v404, v272));
  v414 = vbslq_s8(v273, vsubq_s64(v95, v408), vaddq_s64(v408, v272));
  v400.i64[0] = a7 + v396 + a6;
  v400.i64[1] = a7 + v397 + a6;
  *&STACK[0x3C0] = v400;
  v415 = vbslq_s8(v273, vsubq_s64(v95, v412), vaddq_s64(v412, v272));
  v416 = vandq_s8(v400, v398);
  v417 = vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL);
  v400.i64[0] = a7 + v401 + a6;
  v400.i64[1] = a7 + v402 + a6;
  *&STACK[0x350] = v400;
  v418 = vandq_s8(v400, v398);
  v419 = vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL);
  v376.i64[0] = a7 + v405 + a6;
  v376.i64[1] = a7 + v406 + a6;
  v275.i64[0] = a7 + v409 + a6;
  v275.i64[1] = a7 + v410 + a6;
  v420 = vandq_s8(v376, v398);
  v421 = vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL);
  v422 = vandq_s8(v275, v398);
  v423 = vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL);
  *&STACK[0x440] = vbslq_s8(v365, vsubq_s64(v364, v417), vaddq_s64(v417, v363));
  *&STACK[0x430] = vbslq_s8(v365, vsubq_s64(v364, v419), vaddq_s64(v419, v363));
  v632.val[2] = vbslq_s8(v365, vsubq_s64(v364, v421), vaddq_s64(v421, v363));
  v632.val[1] = vbslq_s8(v365, vsubq_s64(v364, v423), vaddq_s64(v423, v363));
  v424 = veorq_s8(v414, *&STACK[0x480]);
  v425 = vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL);
  v426 = veorq_s8(v415, *&STACK[0x480]);
  v427 = vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL);
  v428 = veorq_s8(v415, *&STACK[0x320]);
  v429 = vaddq_s64(v427, v428);
  v430 = vsraq_n_u64(vshlq_n_s64(v428, 3uLL), v428, 0x3DuLL);
  v431 = veorq_s8(v414, *&STACK[0x320]);
  v432 = vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL);
  v433 = vaddq_s64(v425, v431);
  v434 = veorq_s8(v429, v106);
  v435 = veorq_s8(v434, v430);
  v436 = vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL);
  v437 = veorq_s8(v433, v106);
  v438 = veorq_s8(v437, v432);
  v439 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL), v438);
  v440 = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v441 = vaddq_s64(v436, v435);
  v442 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v441, *&STACK[0x330]), vorrq_s8(v441, *&STACK[0x3F0])), *&STACK[0x3F0]), *&STACK[0x400]);
  v443 = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v444 = vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL);
  v445 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v439, *&STACK[0x330]), vorrq_s8(v439, *&STACK[0x3F0])), *&STACK[0x3F0]), *&STACK[0x400]);
  v446 = veorq_s8(v445, v440);
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446);
  v448 = vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL);
  v449 = vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL);
  v450 = vaddq_s64(v444, v443);
  v451 = veorq_s8(v447, *&STACK[0x410]);
  v452 = veorq_s8(v451, v448);
  v453 = vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL);
  v454 = veorq_s8(v450, *&STACK[0x410]);
  v455 = veorq_s8(v454, v449);
  v456 = vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL);
  v457 = vaddq_s64(v453, v452);
  v458 = vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL);
  v459 = vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL);
  v460 = veorq_s8(vaddq_s64(v456, v455), *&STACK[0x340]);
  v461 = veorq_s8(v460, v459);
  v462 = vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL);
  v463 = veorq_s8(v457, *&STACK[0x340]);
  v464 = veorq_s8(v463, v458);
  v465 = vsraq_n_u64(vshlq_n_s64(v463, 0x38uLL), v463, 8uLL);
  v466 = vaddq_s64(v462, v461);
  v467 = vaddq_s64(v465, v464);
  v468 = vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL);
  v469 = vsraq_n_u64(vshlq_n_s64(v464, 3uLL), v464, 0x3DuLL);
  v470 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v467, v467), *&STACK[0x420]), v467), *&STACK[0x570]), *&STACK[0x500]);
  v471 = veorq_s8(v470, v469);
  v472 = vsraq_n_u64(vshlq_n_s64(v470, 0x38uLL), v470, 8uLL);
  v473 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v466, v466), *&STACK[0x420]), v466), *&STACK[0x570]), *&STACK[0x500]);
  v474 = veorq_s8(v473, v468);
  v475 = vsraq_n_u64(vshlq_n_s64(v473, 0x38uLL), v473, 8uLL);
  v476 = vaddq_s64(v472, v471);
  v477 = vsubq_s64(vandq_s8(vaddq_s64(v476, v476), *&STACK[0x560]), v476);
  v478 = vsraq_n_u64(vshlq_n_s64(v471, 3uLL), v471, 0x3DuLL);
  v479 = vaddq_s64(v475, v474);
  v480 = vsraq_n_u64(vshlq_n_s64(v474, 3uLL), v474, 0x3DuLL);
  v481 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v479, v479), *&STACK[0x560]), v479), *&STACK[0x580]), *&STACK[0x5D0]);
  v482 = veorq_s8(v481, v480);
  v483 = vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL);
  v484 = veorq_s8(vaddq_s64(v477, *&STACK[0x580]), *&STACK[0x5D0]);
  v485 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484, 0x38uLL), v484, 8uLL), veorq_s8(v484, v478));
  v486 = veorq_s8(v632.val[2], *&STACK[0x600]);
  v487 = vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL);
  v488 = veorq_s8(v632.val[1], *&STACK[0x600]);
  v489 = vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL);
  v490 = veorq_s8(v632.val[2], *&STACK[0x550]);
  v491 = vaddq_s64(v487, v490);
  v492 = vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL);
  v493 = veorq_s8(v632.val[1], *&STACK[0x550]);
  v494 = vsraq_n_u64(vshlq_n_s64(v493, 3uLL), v493, 0x3DuLL);
  v495 = veorq_s8(vaddq_s64(v489, v493), *&STACK[0x540]);
  v496 = veorq_s8(v495, v494);
  v497 = vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL);
  v498 = veorq_s8(v491, *&STACK[0x540]);
  v499 = veorq_s8(v498, v492);
  v500 = vsraq_n_u64(vshlq_n_s64(v498, 0x38uLL), v498, 8uLL);
  v501 = vaddq_s64(v497, v496);
  v502 = vaddq_s64(v500, v499);
  v503 = vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL);
  v504 = vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL);
  v505 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v502, v502), *&STACK[0x530]), v502), v377), *&STACK[0x5E0]);
  v506 = veorq_s8(v505, v504);
  v507 = vsraq_n_u64(vshlq_n_s64(v505, 0x38uLL), v505, 8uLL);
  v508 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v501, v501), *&STACK[0x530]), v501), v377), *&STACK[0x5E0]);
  v509 = veorq_s8(v508, v503);
  v510 = vsraq_n_u64(vshlq_n_s64(v508, 0x38uLL), v508, 8uLL);
  v511 = vaddq_s64(v507, v506);
  v512 = vaddq_s64(v510, v509);
  v513 = vsraq_n_u64(vshlq_n_s64(v506, 3uLL), v506, 0x3DuLL);
  v514 = vsraq_n_u64(vshlq_n_s64(v509, 3uLL), v509, 0x3DuLL);
  v515 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v512, v512), *&STACK[0x490]), v512), v383), *&STACK[0x5C0]);
  v516 = veorq_s8(v515, v514);
  v517 = vsraq_n_u64(vshlq_n_s64(v515, 0x38uLL), v515, 8uLL);
  v518 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v511, v511), *&STACK[0x490]), v511), v383), *&STACK[0x5C0]);
  v519 = veorq_s8(v518, v513);
  v520 = vsraq_n_u64(vshlq_n_s64(v518, 0x38uLL), v518, 8uLL);
  v521 = vaddq_s64(v517, v516);
  v522 = vaddq_s64(v520, v519);
  v523 = vsraq_n_u64(vshlq_n_s64(v516, 3uLL), v516, 0x3DuLL);
  v524 = vaddq_s64(v483, v482);
  v525 = vsraq_n_u64(vshlq_n_s64(v519, 3uLL), v519, 0x3DuLL);
  v526 = veorq_s8(vaddq_s64(vsubq_s64(v522, vandq_s8(vaddq_s64(v522, v522), *&STACK[0x610])), *&STACK[0x5A0]), *&STACK[0x520]);
  v527 = veorq_s8(v526, v525);
  v528 = vsraq_n_u64(vshlq_n_s64(v526, 0x38uLL), v526, 8uLL);
  v529 = vshlq_u64(veorq_s8(v485, *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v338, 3uLL), v393)));
  v530 = veorq_s8(vaddq_s64(vsubq_s64(v521, vandq_s8(vaddq_s64(v521, v521), *&STACK[0x610])), *&STACK[0x5A0]), *&STACK[0x520]);
  v531 = veorq_s8(v530, v523);
  v532 = vsraq_n_u64(vshlq_n_s64(v530, 0x38uLL), v530, 8uLL);
  v533 = vaddq_s64(v528, v527);
  v534 = vsraq_n_u64(vshlq_n_s64(v527, 3uLL), v527, 0x3DuLL);
  v535 = veorq_s8(vaddq_s64(v532, v531), *&STACK[0x4D0]);
  v536 = veorq_s8(v535, vsraq_n_u64(vshlq_n_s64(v531, 3uLL), v531, 0x3DuLL));
  v537 = vsraq_n_u64(vshlq_n_s64(v535, 0x38uLL), v535, 8uLL);
  v538 = veorq_s8(v533, *&STACK[0x4D0]);
  v539 = veorq_s8(v538, v534);
  v540 = vsraq_n_u64(vshlq_n_s64(v538, 0x38uLL), v538, 8uLL);
  v541 = vaddq_s64(v537, v536);
  v542 = vsraq_n_u64(vshlq_n_s64(v536, 3uLL), v536, 0x3DuLL);
  v543 = vaddq_s64(v540, v539);
  v544 = vsraq_n_u64(vshlq_n_s64(v539, 3uLL), v539, 0x3DuLL);
  v545 = veorq_s8(v543, *&STACK[0x5B0]);
  v546 = veorq_s8(v541, *&STACK[0x5B0]);
  v547 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v546, 0x38uLL), v546, 8uLL), veorq_s8(v546, v542));
  v548 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545, 0x38uLL), v545, 8uLL), veorq_s8(v545, v544));
  v631.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v547, v395), vorrq_s8(v547, *&STACK[0x4E0])), *&STACK[0x4E0]), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v275, 3uLL), v393))), vshlq_u64(veorq_s8(v524, *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(v632.val[0], 3uLL), v393))));
  v631.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v548, v395), vorrq_s8(v548, *&STACK[0x4E0])), *&STACK[0x4E0]), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v376, 3uLL), v393))), v529);
  v549 = veorq_s8(v413, *&STACK[0x480]);
  v550 = vsraq_n_u64(vshlq_n_s64(v549, 0x38uLL), v549, 8uLL);
  v551 = veorq_s8(v413, *&STACK[0x320]);
  v552 = vsraq_n_u64(vshlq_n_s64(v551, 3uLL), v551, 0x3DuLL);
  v553 = veorq_s8(vaddq_s64(v550, v551), v106);
  v554 = veorq_s8(v553, v552);
  v555 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v553, 0x38uLL), v553, 8uLL), v554);
  v556 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v555, *&STACK[0x330]), vorrq_s8(v555, *&STACK[0x3F0])), *&STACK[0x3F0]), *&STACK[0x400]);
  v557 = veorq_s8(v556, vsraq_n_u64(vshlq_n_s64(v554, 3uLL), v554, 0x3DuLL));
  v558 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v556, 0x38uLL), v556, 8uLL), v557), *&STACK[0x410]);
  v559 = veorq_s8(v558, vsraq_n_u64(vshlq_n_s64(v557, 3uLL), v557, 0x3DuLL));
  v560 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v558, 0x38uLL), v558, 8uLL), v559), *&STACK[0x340]);
  v561 = veorq_s8(v560, vsraq_n_u64(vshlq_n_s64(v559, 3uLL), v559, 0x3DuLL));
  v562 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v560, 0x38uLL), v560, 8uLL), v561);
  v563 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v562, v562), *&STACK[0x420]), v562), *&STACK[0x570]), *&STACK[0x500]);
  v564 = veorq_s8(v563, vsraq_n_u64(vshlq_n_s64(v561, 3uLL), v561, 0x3DuLL));
  v565 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v563, 0x38uLL), v563, 8uLL), v564);
  v566 = vsraq_n_u64(vshlq_n_s64(v564, 3uLL), v564, 0x3DuLL);
  v567 = veorq_s8(*&STACK[0x430], *&STACK[0x600]);
  v568 = vsraq_n_u64(vshlq_n_s64(v567, 0x38uLL), v567, 8uLL);
  v569 = veorq_s8(*&STACK[0x430], *&STACK[0x550]);
  v570 = vsraq_n_u64(vshlq_n_s64(v569, 3uLL), v569, 0x3DuLL);
  v571 = veorq_s8(vaddq_s64(v568, v569), *&STACK[0x540]);
  v572 = veorq_s8(v571, v570);
  v573 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v571, 0x38uLL), v571, 8uLL), v572);
  v574 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v573, v573), *&STACK[0x530]), v573), *&STACK[0x510]), *&STACK[0x5E0]);
  v575 = veorq_s8(v574, vsraq_n_u64(vshlq_n_s64(v572, 3uLL), v572, 0x3DuLL));
  v576 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v574, 0x38uLL), v574, 8uLL), v575);
  v577 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v565, v565), *&STACK[0x560]), v565), *&STACK[0x580]), *&STACK[0x5D0]);
  v578 = veorq_s8(v577, v566);
  v579 = vsraq_n_u64(vshlq_n_s64(v577, 0x38uLL), v577, 8uLL);
  v580 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v576, v576), *&STACK[0x490]), v576), *&STACK[0x3E0]), *&STACK[0x5C0]);
  v581 = veorq_s8(v580, vsraq_n_u64(vshlq_n_s64(v575, 3uLL), v575, 0x3DuLL));
  v582 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v580, 0x38uLL), v580, 8uLL), v581);
  v583 = vsraq_n_u64(vshlq_n_s64(v581, 3uLL), v581, 0x3DuLL);
  v584 = veorq_s8(vaddq_s64(vsubq_s64(v582, vandq_s8(vaddq_s64(v582, v582), *&STACK[0x610])), *&STACK[0x5A0]), *&STACK[0x520]);
  v585 = veorq_s8(v584, v583);
  v586 = vsraq_n_u64(vshlq_n_s64(v584, 0x38uLL), v584, 8uLL);
  v587 = veorq_s8(vaddq_s64(v579, v578), *&STACK[0x590]);
  v588 = vaddq_s64(v586, v585);
  v589 = vsraq_n_u64(vshlq_n_s64(v585, 3uLL), v585, 0x3DuLL);
  v590 = veorq_s8(v588, *&STACK[0x4D0]);
  v591 = veorq_s8(v590, v589);
  v592 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v590, 0x38uLL), v590, 8uLL), v591), *&STACK[0x5B0]);
  v593 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v592, 0x38uLL), v592, 8uLL), veorq_s8(v592, vsraq_n_u64(vshlq_n_s64(v591, 3uLL), v591, 0x3DuLL)));
  v631.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v593, *&STACK[0x4F0]), vorrq_s8(v593, *&STACK[0x4E0])), *&STACK[0x4E0]), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v393))), vshlq_u64(v587, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v393))));
  v594 = veorq_s8(*&STACK[0x370], *&STACK[0x480]);
  v595 = veorq_s8(*&STACK[0x370], *&STACK[0x320]);
  v596 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v594, 0x38uLL), v594, 8uLL), v595), v106);
  v597 = veorq_s8(v596, vsraq_n_u64(vshlq_n_s64(v595, 3uLL), v595, 0x3DuLL));
  v598 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v596, 0x38uLL), v596, 8uLL), v597);
  v599 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v598, *&STACK[0x330]), vorrq_s8(v598, *&STACK[0x3F0])), *&STACK[0x3F0]), *&STACK[0x400]);
  v600 = veorq_s8(v599, vsraq_n_u64(vshlq_n_s64(v597, 3uLL), v597, 0x3DuLL));
  v601 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v599, 0x38uLL), v599, 8uLL), v600), *&STACK[0x410]);
  v602 = veorq_s8(v601, vsraq_n_u64(vshlq_n_s64(v600, 3uLL), v600, 0x3DuLL));
  v603 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v601, 0x38uLL), v601, 8uLL), v602), *&STACK[0x340]);
  v604 = veorq_s8(v603, vsraq_n_u64(vshlq_n_s64(v602, 3uLL), v602, 0x3DuLL));
  v605 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v603, 0x38uLL), v603, 8uLL), v604);
  v606 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v605, v605), *&STACK[0x420]), v605), *&STACK[0x570]), *&STACK[0x500]);
  v607 = veorq_s8(v606, vsraq_n_u64(vshlq_n_s64(v604, 3uLL), v604, 0x3DuLL));
  v608 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v606, 0x38uLL), v606, 8uLL), v607);
  v609 = vsraq_n_u64(vshlq_n_s64(v607, 3uLL), v607, 0x3DuLL);
  v610 = veorq_s8(*&STACK[0x440], *&STACK[0x600]);
  v611 = veorq_s8(*&STACK[0x440], *&STACK[0x550]);
  v612 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v610, 0x38uLL), v610, 8uLL), v611), *&STACK[0x540]);
  v613 = veorq_s8(v612, vsraq_n_u64(vshlq_n_s64(v611, 3uLL), v611, 0x3DuLL));
  v614 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v612, 0x38uLL), v612, 8uLL), v613);
  v615 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v614, v614), *&STACK[0x530]), v614), *&STACK[0x510]), *&STACK[0x5E0]);
  v616 = veorq_s8(v615, vsraq_n_u64(vshlq_n_s64(v613, 3uLL), v613, 0x3DuLL));
  v617 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v615, 0x38uLL), v615, 8uLL), v616);
  v618 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v617, v617), *&STACK[0x490]), v617), *&STACK[0x3E0]), *&STACK[0x5C0]);
  v619 = veorq_s8(v618, vsraq_n_u64(vshlq_n_s64(v616, 3uLL), v616, 0x3DuLL));
  v620 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v618, 0x38uLL), v618, 8uLL), v619);
  v621 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v608, v608), *&STACK[0x560]), v608), *&STACK[0x580]), *&STACK[0x5D0]);
  v622 = veorq_s8(v621, v609);
  v623 = vsraq_n_u64(vshlq_n_s64(v621, 0x38uLL), v621, 8uLL);
  v624 = veorq_s8(vaddq_s64(vsubq_s64(v620, vandq_s8(vaddq_s64(v620, v620), *&STACK[0x610])), *&STACK[0x5A0]), *&STACK[0x520]);
  v625 = veorq_s8(v624, vsraq_n_u64(vshlq_n_s64(v619, 3uLL), v619, 0x3DuLL));
  v626 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v624, 0x38uLL), v624, 8uLL), v625), *&STACK[0x4D0]);
  v627 = veorq_s8(v626, vsraq_n_u64(vshlq_n_s64(v625, 3uLL), v625, 0x3DuLL));
  v628 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v626, 0x38uLL), v626, 8uLL), v627), *&STACK[0x5B0]);
  v629 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v628, 0x38uLL), v628, 8uLL), veorq_s8(v628, vsraq_n_u64(vshlq_n_s64(v627, 3uLL), v627, 0x3DuLL)));
  v631.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v629, *&STACK[0x4F0]), vorrq_s8(v629, *&STACK[0x4E0])), *&STACK[0x4E0]), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), *&STACK[0x3D0]))), vshlq_u64(veorq_s8(vaddq_s64(v623, v622), *&STACK[0x590]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), *&STACK[0x3D0]))));
  v631.val[0].i64[0] = vqtbl4q_s8(v631, *&STACK[0x390]).u64[0];
  v631.val[1] = *&STACK[0x3B0];
  v631.val[1].i64[1] = v631.val[0].i64[0];
  v631.val[1] = vrev64q_s8(v631.val[1]);
  *(v360 - 15) = veorq_s8(vextq_s8(v631.val[1], v631.val[1], 8uLL), *(v337 - 15));
  return (*(a8 + 8 * ((8113 * (LODWORD(STACK[0x280]) == v72)) ^ LODWORD(STACK[0x270]))))();
}

uint64_t sub_10012DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, int a54)
{
  v56 = *(a8 + 8 * v55);
  LODWORD(STACK[0x590]) = v54 & 0xFFFFFFF8;
  LODWORD(STACK[0x600]) = -(v54 & 0xFFFFFFF8);
  v57 = a52 + 62324925 + a54;
  LODWORD(STACK[0x5F0]) = v57 + 1;
  LODWORD(STACK[0x5E0]) = v57 + 3;
  LODWORD(STACK[0x5D0]) = v57 + 4;
  LODWORD(STACK[0x5C0]) = v57 + 5;
  LODWORD(STACK[0x5B0]) = v57 + 6;
  LODWORD(STACK[0x5A0]) = v57 + 7;
  return v56();
}

uint64_t sub_10012DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v21 = (LODWORD(STACK[0x5A0]) + v15 + 8);
  v22 = (LODWORD(STACK[0x5B0]) + v15 + 8);
  v23 = v10;
  v24 = (LODWORD(STACK[0x5C0]) + v15 + 8);
  v25 = v11;
  v26 = (LODWORD(STACK[0x5D0]) + v15 + 8);
  v27 = a7 + v21 + a6;
  v28.i64[0] = v27;
  v28.i64[1] = a7 + v22 + a6;
  v29 = (LODWORD(STACK[0x5F0]) + v15 + 8);
  v30 = (v16 + v15 + 8);
  v31.i64[0] = a7 + v24 + a6;
  v31.i64[1] = a7 + v26 + a6;
  v32.i64[0] = a7 + v29 + a6;
  v32.i64[1] = a7 + v30 + a6;
  v33 = (LODWORD(STACK[0x5E0]) + v15 + 8);
  v34 = v14 + v15 + ((v13 - 2011) ^ 0xD3F7220D) + 8;
  v35.i64[0] = a7 + v33 + a6;
  v35.i64[1] = a7 + v34 + a6;
  v36.i64[0] = a4 + v21;
  v36.i64[1] = a4 + v22;
  v37.i64[0] = a4 + v24;
  v37.i64[1] = a4 + v26;
  v38.i64[0] = a4 + v29;
  v38.i64[1] = a4 + v30;
  STACK[0x610] = *(a4 + v21 - 7);
  v39.i64[0] = a4 + v33;
  v39.i64[1] = a4 + v34;
  v40 = vandq_s8(v38, v20);
  v41 = vandq_s8(v37, v20);
  v42 = vandq_s8(v36, v20);
  v43 = vandq_s8(v39, v20);
  v44 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v48 = vdupq_n_s64(v23);
  v49 = vaddq_s64(v46, v48);
  v50 = vaddq_s64(v45, v48);
  v51 = vaddq_s64(v44, v48);
  v52 = vaddq_s64(v47, v48);
  v53 = vdupq_n_s64(0x896A5A8A3375C925);
  v54 = vsubq_s64(v53, v46);
  v55 = vsubq_s64(v53, v45);
  v56 = vsubq_s64(v53, v44);
  v57 = vsubq_s64(v53, v47);
  v58 = vdupq_n_s64(0xF8BBAAE4CC3892D5);
  v59 = vbslq_s8(v58, v56, v51);
  v60 = vbslq_s8(v58, v55, v50);
  v61 = vbslq_s8(v58, v54, v49);
  v62 = vbslq_s8(v58, v57, v52);
  v63 = vdupq_n_s64(v9);
  v64 = veorq_s8(v61, v63);
  v65 = veorq_s8(v60, v63);
  v66 = veorq_s8(v59, v63);
  v67 = veorq_s8(v62, v63);
  v68 = vdupq_n_s64(0x4167EF87FBBF3BD1uLL);
  v69 = veorq_s8(v59, v68);
  v70 = veorq_s8(v60, v68);
  v71 = veorq_s8(v61, v68);
  v72 = veorq_s8(v62, v68);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v71);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v70);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v77 = vaddq_s64(v73, v72);
  v78 = vdupq_n_s64(v25);
  v79 = veorq_s8(v76, v78);
  v80 = veorq_s8(v75, v78);
  v81 = veorq_s8(v74, v78);
  v82 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v85 = veorq_s8(v77, v78);
  v86 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v87 = veorq_s8(v80, v84);
  v88 = veorq_s8(v79, v83);
  v89 = veorq_s8(v85, v82);
  v90 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v94 = vaddq_s64(v92, v88);
  v95 = vaddq_s64(v91, v87);
  v96 = vaddq_s64(v90, v86);
  v97 = vaddq_s64(v93, v89);
  v98 = vdupq_n_s64(0x9FF680025D795089);
  v99 = vdupq_n_s64(0x60097FFDA286AF76uLL);
  v100 = vaddq_s64(vsubq_s64(vorrq_s8(v96, v98), vorrq_s8(v96, v99)), v99);
  v101 = vaddq_s64(vsubq_s64(vorrq_s8(v95, v98), vorrq_s8(v95, v99)), v99);
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(v94, v98), vorrq_s8(v94, v99)), v99);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(v97, v98), vorrq_s8(v97, v99)), v99);
  v104 = vdupq_n_s64(0x9A70B1A0F5DDA84uLL);
  v105 = veorq_s8(v102, v104);
  v106 = veorq_s8(v101, v104);
  v107 = veorq_s8(v100, v104);
  v108 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v110 = veorq_s8(v103, v104);
  v111 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v112 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v113 = veorq_s8(v105, v109);
  v114 = veorq_s8(v110, v108);
  v115 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v119 = vaddq_s64(v117, v113);
  v120 = vaddq_s64(v116, v112);
  v121 = vaddq_s64(v115, v111);
  v122 = vdupq_n_s64(0xC73EF603490C4402);
  v123 = veorq_s8(v121, v122);
  v124 = veorq_s8(v120, v122);
  v125 = veorq_s8(v119, v122);
  v126 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v128 = veorq_s8(vaddq_s64(v118, v114), v122);
  v129 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v130 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v131 = veorq_s8(v124, v127);
  v132 = veorq_s8(v123, v126);
  v133 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v132);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v131);
  v137 = vaddq_s64(v134, v130);
  v138 = vdupq_n_s64(0xC4318A842864C03uLL);
  v139 = veorq_s8(vaddq_s64(v133, v129), v138);
  v140 = veorq_s8(v136, v138);
  v141 = veorq_s8(v135, v138);
  v142 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v144 = veorq_s8(v137, v138);
  v145 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v146 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v147 = veorq_s8(v140, v145);
  v148 = veorq_s8(v139, v143);
  v149 = veorq_s8(v144, v142);
  v150 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v148);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v149);
  v154 = vaddq_s64(v151, v147);
  v155 = vaddq_s64(v150, v146);
  v156 = vdupq_n_s64(0xF837371F58F9BF6CLL);
  v157 = vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), v156), v155);
  v158 = vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), v156), v154);
  v159 = vdupq_n_s64(0x83E464705383204ALL);
  v160 = vsubq_s64(vorrq_s8(vaddq_s64(v153, v153), v156), v153);
  v161 = vdupq_n_s64(0x3F7B939D4CDF8FC5uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v163 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v156), v152), v159);
  v164 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v167 = vaddq_s64(v158, v159);
  v168 = vdupq_n_s64(0x3D50F30F384595A6uLL);
  v169 = vandq_s8(v32, v20);
  v170 = vandq_s8(v31, v20);
  v171 = vandq_s8(v28, v20);
  v172 = vaddq_s64(v157, v159);
  v173 = vandq_s8(v35, v20);
  v174 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v176 = vaddq_s64(v160, v159);
  v177 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v178 = vdupq_n_s64(0x1BF086EE80E068F2uLL);
  v179 = veorq_s8(v172, v161);
  v180 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v181 = vaddq_s64(v180, v178);
  v182 = vaddq_s64(v177, v178);
  v183 = vaddq_s64(v175, v178);
  v184 = vaddq_s64(v174, v178);
  v185 = veorq_s8(v167, v161);
  v186 = vdupq_n_s64(v8);
  v187 = vsubq_s64(v186, v180);
  v188 = vsubq_s64(v186, v177);
  v189 = vsubq_s64(v186, v175);
  v190 = veorq_s8(v163, v161);
  v191 = vsubq_s64(v186, v174);
  v192 = vdupq_n_s64(0xED72F297E808ACF8);
  v193 = vbslq_s8(v192, v191, v184);
  v194 = vbslq_s8(v192, v189, v183);
  v195 = veorq_s8(v176, v161);
  v196 = vbslq_s8(v192, v188, v182);
  v197 = vbslq_s8(v192, v187, v181);
  v198 = vdupq_n_s64(0xC5F5F189513C3D42);
  v199 = veorq_s8(v197, v198);
  v200 = veorq_s8(v190, v165);
  v201 = veorq_s8(v196, v198);
  v202 = veorq_s8(v194, v198);
  v203 = veorq_s8(v193, v198);
  v204 = vdupq_n_s64(0x1A71C6FD563F7AD4uLL);
  v205 = veorq_s8(v185, v164);
  v206 = veorq_s8(v193, v204);
  v207 = veorq_s8(v194, v204);
  v208 = veorq_s8(v196, v204);
  v209 = veorq_s8(v197, v204);
  v210 = veorq_s8(v179, v162);
  v211 = vdupq_n_s64(v19);
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v206), v211);
  v213 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v207), v211);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v208), v211);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v209), v211);
  v216 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v217 = veorq_s8(v195, v166);
  v218 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v219 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v220 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v221 = veorq_s8(v213, v218);
  v222 = veorq_s8(v212, v216);
  v223 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v222);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v221);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v220);
  v229 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v230 = vaddq_s64(v224, v219);
  v231 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v232 = vdupq_n_s64(0x6604FF7B30B3B3E2uLL);
  v233 = vsubq_s64(vorrq_s8(vaddq_s64(v227, v227), v232), v227);
  v234 = vdupq_n_s64(0xCCFD804267A6260FLL);
  v235 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v226, v226), v232), v226), v234);
  v236 = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v237 = vaddq_s64(v233, v234);
  v238 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v232), v228), v234);
  v239 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v230, v230), v232), v230), v234);
  v240 = vdupq_n_s64(0xACC3E51663869BA9);
  v241 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v242 = veorq_s8(v239, v240);
  v243 = veorq_s8(v238, v240);
  v244 = veorq_s8(v237, v240);
  v245 = veorq_s8(v235, v240);
  v246 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v247 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v249 = vaddq_s64(v229, v210);
  v250 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v251 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v252 = veorq_s8(v243, v248);
  v253 = vaddq_s64(v225, v205);
  v254 = veorq_s8(v242, v247);
  v255 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v257 = vaddq_s64(v223, v200);
  v258 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v254);
  v259 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v252);
  v261 = vaddq_s64(v256, v251);
  v262 = vaddq_s64(v255, v250);
  v263 = vaddq_s64(v231, v217);
  v264 = vdupq_n_s64(0x26C3D91CAAAAC0CCuLL);
  v265 = vdupq_n_s64(0x6C9E1371AAAA9F99uLL);
  v266 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v258, v258), v264), v258), v265);
  v267 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260, v260), v264), v260), v265);
  v268 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261, v261), v264), v261), v265);
  v269 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v262, v262), v264), v262), v265);
  v270 = vdupq_n_s64(0xFC8F779185D73647);
  v271 = veorq_s8(v269, v270);
  v272 = veorq_s8(v268, v270);
  v273 = veorq_s8(v267, v270);
  v274 = veorq_s8(v266, v270);
  v275 = veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v276 = veorq_s8(v273, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v277 = veorq_s8(v272, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v278 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v279 = vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL);
  v280 = vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL);
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v278);
  v282 = vsubq_s64(vandq_s8(vaddq_s64(v257, v257), v168), v257);
  v283 = vaddq_s64(v280, v277);
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v276);
  v285 = vaddq_s64(v279, v275);
  v286 = vsubq_s64(vandq_s8(vaddq_s64(v253, v253), v168), v253);
  v287 = vdupq_n_s64(0x8429C13B901A7D44);
  v288 = vsubq_s64(vandq_s8(vaddq_s64(v249, v249), v168), v249);
  v289 = vsubq_s64(vandq_s8(vaddq_s64(v263, v263), v168), v263);
  v290 = vdupq_n_s64(0xE157867863DD352CLL);
  v291 = vaddq_s64(v288, v290);
  v292 = vaddq_s64(v286, v290);
  v293 = vaddq_s64(v282, v290);
  v294 = vaddq_s64(v289, v290);
  v295 = vdupq_n_s64(0x38uLL);
  v296 = vdupq_n_s64(0x54D6460F57505710uLL);
  v297 = veorq_s8(v293, v296);
  v298 = veorq_s8(v292, v296);
  v299 = veorq_s8(v291, v296);
  v300 = vdupq_n_s64(0xC214E09DC80D3EA2);
  v301 = veorq_s8(v294, v296);
  v302 = vaddq_s64(vsubq_s64(v281, vandq_s8(vaddq_s64(v281, v281), v287)), v300);
  v303 = vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), v287)), v300);
  v304 = vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), v287)), v300);
  v305 = veorq_s8(v299, v246);
  v306 = vdupq_n_s64(0xE8E0450D5C8F41CCLL);
  v307 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), v287)), v300), v306);
  v308 = veorq_s8(v304, v306);
  v309 = veorq_s8(v303, v306);
  v310 = veorq_s8(v302, v306);
  v311 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL);
  v313 = veorq_s8(v297, v236);
  v314 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v315 = veorq_s8(v309, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL));
  v316 = veorq_s8(v308, v312);
  v317 = veorq_s8(v307, v311);
  v318 = veorq_s8(v301, v259);
  v319 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v320 = vdupq_n_s64(v17);
  v321 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL), v314), v320);
  v322 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL), v315), v320);
  v323 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v316), v320);
  v324 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v317), v320);
  v325 = vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL);
  v326 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v327 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v328 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v329 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v330 = vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL);
  v331 = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  v332 = vandq_s8(vshlq_n_s64(v38, 3uLL), v295);
  v333 = vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v295));
  v334 = vaddq_s64(v319, v305);
  v335 = veorq_s8(v324, v330);
  v336 = veorq_s8(v323, v328);
  v337 = veorq_s8(v322, v327);
  v338 = veorq_s8(v321, v325);
  v339 = vaddq_s64(v329, v318);
  v340 = vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL);
  v341 = veorq_s8(v334, v331);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v336);
  v343 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), veorq_s8(v298, v241)), v331);
  v344 = vdupq_n_s64(v18);
  v345 = veorq_s8(vaddq_s64(v340, v335), v344);
  v346 = veorq_s8(v342, v344);
  v347 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL), v337), v344);
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v338), v344);
  v349 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v350 = veorq_s8(v339, v331);
  v351 = vshlq_u64(veorq_s8(vaddq_s64(v326, v313), v331), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v295)));
  v352 = veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL));
  v353 = veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v354 = vshlq_u64(v343, vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v295)));
  v355 = vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v357 = vshlq_u64(v341, vnegq_s64(v332));
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), veorq_s8(v345, v349));
  v359 = vaddq_s64(v356, v353);
  v360 = vaddq_s64(v355, v352);
  v361 = vshlq_u64(v350, v333);
  v362 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL)));
  v363 = vdupq_n_s64(0xE4A245799371E26BLL);
  v364 = vorrq_s8(v362, v363);
  v365 = vdupq_n_s64(0x1B5DBA866C8E1D94uLL);
  v366 = vsubq_s64(vorrq_s8(v358, v363), vorrq_s8(v358, v365));
  v367 = vsubq_s64(vorrq_s8(v359, v363), vorrq_s8(v359, v365));
  v368 = vaddq_s64(vsubq_s64(vorrq_s8(v360, v363), vorrq_s8(v360, v365)), v365);
  v369 = vdupq_n_s64(0x9C8086D4E49D1730);
  v370 = vshlq_u64(veorq_s8(v368, v369), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v295)));
  v371 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v364, vorrq_s8(v362, v365)), v365), v369), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v295)));
  v373.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v366, v365), v369), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v295))), v357);
  v373.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v367, v365), v369), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v295))), v354);
  v373.val[0] = veorq_s8(v370, v351);
  LODWORD(v21) = LODWORD(STACK[0x600]) == v15;
  v373.val[2] = veorq_s8(v371, v361);
  *(v27 - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v373, v12[170])), STACK[0x610]);
  return (*(a8 + 8 * ((10369 * v21) ^ v13)))();
}

uint64_t sub_10012ED24@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v20 = (a1 + v11 + 961);
  v21 = (a2 + v20);
  v22 = a5 + v20 + a4;
  v23 = __ROR8__((a2 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (v16 - v23) & a3 | (v23 + v9) & 0x744551B33C76D2ALL;
  v25 = v24 ^ v12;
  v24 ^= 0x4167EF87FBBF3BD1uLL;
  v26 = (__ROR8__(v25, 8) + v24) ^ v7;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (a7 - ((v28 + v27) | a7) + ((v28 + v27) | 0x9FF680025D795089)) ^ 0x9A70B1A0F5DDA84;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v14;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v13;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0xF837371F58F9BF6CLL) - (v35 + v34) - 0x7C1B9B8FAC7CDFB6) ^ 0x3F7B939D4CDF8FC5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (v15 - v39) & 0xED72F297E808ACF8 | (v39 + 0x1BF086EE80E068F2) & 0x128D0D6817F75307;
  v41 = v40 ^ 0xC5F5F189513C3D42;
  v40 ^= 0x1A71C6FD563F7AD4uLL;
  v42 = (__ROR8__(v41, 8) + v40) ^ v19;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = ((2 * (v44 + v43)) | 0x6604FF7B30B3B3E2) - (v44 + v43);
  v46 = (((2 * (v38 + v37)) & 0x3D50F30F384595A6) - (v38 + v37) - 0x1EA879879C22CAD4) ^ 0x54D6460F57505710;
  v47 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v37, 61));
  v48 = (v45 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9 ^ __ROR8__(v43, 61);
  v49 = __ROR8__((v45 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9, 8);
  v50 = __ROR8__((((2 * (v49 + v48)) & 0x26C3D91CAAAAC0CCLL) - (v49 + v48) + 0x6C9E1371AAAA9F99) ^ 0xFC8F779185D73647, 8);
  v51 = (((2 * (v49 + v48)) & 0x26C3D91CAAAAC0CCLL) - (v49 + v48) + 0x6C9E1371AAAA9F99) ^ 0xFC8F779185D73647 ^ __ROR8__(v48, 61);
  v52 = (v50 + v51 - ((2 * (v50 + v51)) & 0x8429C13B901A7D44) - 0x3DEB1F6237F2C15ELL) ^ 0xE8E0450D5C8F41CCLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v17;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v18;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  *v22 = (((v8 - ((v58 + v57) | v8) + ((v58 + v57) | 0xE4A245799371E26BLL)) ^ 0x9C8086D4E49D1730) >> (8 * (v22 & 7u))) ^ ((v47 ^ 0xF03E4241B0D5EBFELL) >> (8 * (v21 & 7u))) ^ *v21;
  return (*(a6 + 8 * ((15761 * (v11 == 738777650)) ^ v10)))();
}

uint64_t sub_10012F0D8(int a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x390]) = a2;
  v21 = *(a8 + 8 * (v8 + 130));
  LODWORD(STACK[0x3C0]) = a1 & 0xFFFFFFF0;
  *&STACK[0x600] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x380]) = a3;
  LODWORD(STACK[0x370]) = v10;
  *&STACK[0x550] = vdupq_n_s64(0x38uLL);
  *&STACK[0x540] = vdupq_n_s64(a5);
  *&STACK[0x5F0] = vdupq_n_s64(v11);
  *&STACK[0x530] = vdupq_n_s64(v12);
  LODWORD(STACK[0x520]) = v10 + a3 + 52434966;
  LODWORD(STACK[0x510]) = v10 + a3 + 52434967;
  *&STACK[0x500] = vdupq_n_s64(v15);
  *&STACK[0x4F0] = vdupq_n_s64(v16);
  LODWORD(STACK[0x4E0]) = v10 + a3 + 52434968;
  *&STACK[0x4D0] = vdupq_n_s64(0xD87AD12BCA74F052);
  *&STACK[0x490] = vdupq_n_s64(v17);
  LODWORD(STACK[0x360]) = v8 + 4528;
  *&STACK[0x5E0] = vdupq_n_s64(v13);
  *&STACK[0x480] = vdupq_n_s64(0x241FFCDDCD03031CuLL);
  *&STACK[0x440] = vdupq_n_s64(0x9F71B77C9D5E33DCLL);
  *&STACK[0x5D0] = vdupq_n_s64(0x30472441B150E611uLL);
  *&STACK[0x430] = vdupq_n_s64(0xA05640A19E2D4FCFLL);
  *&STACK[0x5C0] = vdupq_n_s64(0x2AF4A59094827F6EuLL);
  *&STACK[0x5B0] = vdupq_n_s64(0x923A0997826215EALL);
  *&STACK[0x420] = vdupq_n_s64(a4);
  *&STACK[0x410] = vdupq_n_s64(0x50F1A00E103B1273uLL);
  *&STACK[0x3F0] = vdupq_n_s64(v18);
  *&STACK[0x400] = vdupq_n_s64(v9);
  *&STACK[0x3D0] = vdupq_n_s64(v19);
  *&STACK[0x3E0] = vdupq_n_s64(v14);
  *&STACK[0x5A0] = xmmword_1002A9AB0;
  return v21();
}

uint64_t sub_10012F2F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v31.i64[0] = v9 + v10 + v11 + (LODWORD(STACK[0x520]) + v8 + 16);
  v32 = (LODWORD(STACK[0x510]) + v8 + 16);
  v33 = v10 + v11 + (LODWORD(STACK[0x4E0]) + v8 + 16);
  v31.i64[1] = v9 + v10 + v11 + (v22 + v8 + 16);
  *&STACK[0x590] = v31;
  v31.i64[0] = v9 + v33;
  v31.i64[1] = v9 + v10 + v11 + v32;
  *&STACK[0x580] = v31;
  v34.i64[0] = v9 + v10 + v11 + (v14 + v8 + 16);
  v34.i64[1] = v9 + v10 + v11 + (a1 + v8 + 16);
  v35.i64[0] = v9 + v10 + v11 + (v18 + v8 + 16);
  v35.i64[1] = v9 + v10 + v11 + (v17 + v8 + 16);
  v36.i64[0] = v9 + v10 + v11 + (v20 + v8 + 16);
  v36.i64[1] = v9 + v10 + v11 + (v19 + v8 + 16);
  v31.i64[0] = v9 + v10 + v11 + (v12 + v8 + 16);
  v31.i64[1] = v9 + v10 + v11 + (v15 + v8 + 16);
  *&STACK[0x570] = v31;
  v37 = vandq_s8(v31, *&STACK[0x600]);
  v38 = vandq_s8(v36, *&STACK[0x600]);
  v39 = vandq_s8(v35, *&STACK[0x600]);
  v40 = vandq_s8(v34, *&STACK[0x600]);
  v41 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v44 = *&STACK[0x540];
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x540]);
  v46 = vaddq_s64(v43, *&STACK[0x540]);
  v47 = vaddq_s64(v42, *&STACK[0x540]);
  v48 = vaddq_s64(v41, *&STACK[0x540]);
  v49 = vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), *&STACK[0x5F0]), v45);
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), *&STACK[0x5F0]), v47), v30);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), *&STACK[0x5F0]), v48), v30);
  v52 = *&STACK[0x500];
  v53 = veorq_s8(v51, *&STACK[0x500]);
  v54 = veorq_s8(v50, *&STACK[0x500]);
  v55 = veorq_s8(v50, v24);
  v56 = veorq_s8(v51, v24);
  v57 = *&STACK[0x4D0];
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55), *&STACK[0x4D0]);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56), *&STACK[0x4D0]);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v61 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = *&STACK[0x490];
  v66 = *&STACK[0x5E0];
  v67 = *&STACK[0x480];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), *&STACK[0x490])), *&STACK[0x5E0]), *&STACK[0x480]);
  v69 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), *&STACK[0x490])), *&STACK[0x5E0]), *&STACK[0x480]);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v72 = veorq_s8(v68, v69);
  v73 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = *&STACK[0x440];
  v77 = *&STACK[0x5D0];
  v78 = *&STACK[0x430];
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), *&STACK[0x440]), v75), *&STACK[0x5D0]), *&STACK[0x430]);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), *&STACK[0x440]), v74), *&STACK[0x5D0]), *&STACK[0x430]);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82);
  v85 = *&STACK[0x5C0];
  v86 = veorq_s8(vaddq_s64(v83, v81), *&STACK[0x5C0]);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v84, *&STACK[0x5C0]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v90 = veorq_s8(v86, v87);
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = *&STACK[0x5B0];
  v94 = veorq_s8(vaddq_s64(v91, v89), *&STACK[0x5B0]);
  v95 = veorq_s8(v92, *&STACK[0x5B0]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v97 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v97);
  v100 = vaddq_s64(v98, v96);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), v25)), v26), v27);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), v25)), v26), v27);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v104 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v105 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v107.i64[0] = v9 + v10 + v11 + (a7 + v8 + 16);
  v107.i64[1] = v9 + v10 + v11 + (a6 + v8 + 16);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), *&STACK[0x5F0]), v46), v30);
  v109 = vaddq_s64(v106, v104);
  v110 = vaddq_s64(v105, v103);
  v111 = *&STACK[0x3D0];
  v217.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), v28)), v29), *&STACK[0x3D0]), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v23)));
  v217.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), v28)), v29), *&STACK[0x3D0]), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v23)));
  v112 = veorq_s8(v108, *&STACK[0x500]);
  v113 = veorq_s8(v108, v24);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), *&STACK[0x4D0]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v116, vandq_s8(vaddq_s64(v116, v116), *&STACK[0x490])), *&STACK[0x5E0]), *&STACK[0x480]);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), *&STACK[0x440]), v119), *&STACK[0x5D0]), *&STACK[0x430]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), *&STACK[0x5C0]);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), *&STACK[0x5B0]);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), v25)), v26), v27);
  v128.i64[0] = v9 + v10 + v11 + (v13 + v8 + 16);
  v128.i64[1] = v9 + v10 + v11 + (a8 + v8 + 16);
  *&STACK[0x560] = v128;
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL)));
  v130 = vsubq_s64(v129, vandq_s8(vaddq_s64(v129, v129), v28));
  v131 = vandq_s8(v128, *&STACK[0x600]);
  v132 = vaddq_s64(v49, v30);
  v217.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v130, v29), v111), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v23)));
  v133 = veorq_s8(v132, v52);
  v134 = veorq_s8(v132, v24);
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v57);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v65)), v66), v67);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), v76), v140), v77), v78);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v85);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v93);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(v147, vandq_s8(vaddq_s64(v147, v147), v25)), v26), v27);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v151 = v107;
  v152 = vandq_s8(v107, *&STACK[0x600]);
  v153 = vaddq_s64(v150, v149);
  v154 = vandq_s8(*&STACK[0x580], *&STACK[0x600]);
  v217.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v153, vandq_s8(vaddq_s64(v153, v153), v28)), v29), v111), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x570], 3uLL), v23)));
  v155 = vandq_s8(*&STACK[0x590], *&STACK[0x600]);
  v156 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v44);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v44);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v44);
  v160 = vaddq_s64(v156, v44);
  v161 = vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), *&STACK[0x5F0]), v160);
  v162 = vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), *&STACK[0x5F0]), v158);
  v163 = vsubq_s64(vorrq_s8(vaddq_s64(v157, v157), *&STACK[0x5F0]), v157);
  v164 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), *&STACK[0x5F0]), v159), v30);
  v165 = vaddq_s64(v161, v30);
  v34.i64[0] = vqtbl4q_s8(v217, *&STACK[0x5A0]).u64[0];
  v217.val[0] = veorq_s8(v165, v52);
  v217.val[1] = veorq_s8(v164, v52);
  v217.val[2] = veorq_s8(v164, v24);
  v217.val[3] = veorq_s8(v165, v24);
  v217.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[1], 0x38uLL), v217.val[1], 8uLL), v217.val[2]), v57);
  v217.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[0], 0x38uLL), v217.val[0], 8uLL), v217.val[3]), v57);
  v166 = vsraq_n_u64(vshlq_n_s64(v217.val[2], 3uLL), v217.val[2], 0x3DuLL);
  v217.val[2] = veorq_s8(v217.val[0], vsraq_n_u64(vshlq_n_s64(v217.val[3], 3uLL), v217.val[3], 0x3DuLL));
  v217.val[3] = veorq_s8(v217.val[1], v166);
  v167 = vsraq_n_u64(vshlq_n_s64(v217.val[0], 0x38uLL), v217.val[0], 8uLL);
  v217.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[1], 0x38uLL), v217.val[1], 8uLL), v217.val[3]);
  v217.val[1] = vaddq_s64(v167, v217.val[2]);
  v217.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v217.val[1], vandq_s8(vaddq_s64(v217.val[1], v217.val[1]), v65)), *&STACK[0x5E0]), v67);
  v217.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v217.val[0], vandq_s8(vaddq_s64(v217.val[0], v217.val[0]), v65)), *&STACK[0x5E0]), v67);
  v168 = vsraq_n_u64(vshlq_n_s64(v217.val[2], 3uLL), v217.val[2], 0x3DuLL);
  v217.val[2] = veorq_s8(v217.val[0], vsraq_n_u64(vshlq_n_s64(v217.val[3], 3uLL), v217.val[3], 0x3DuLL));
  v217.val[3] = veorq_s8(v217.val[1], v168);
  v169 = vsraq_n_u64(vshlq_n_s64(v217.val[0], 0x38uLL), v217.val[0], 8uLL);
  v217.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[1], 0x38uLL), v217.val[1], 8uLL), v217.val[3]);
  v217.val[1] = vaddq_s64(v169, v217.val[2]);
  v217.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v217.val[1], v217.val[1]), v76), v217.val[1]), *&STACK[0x5D0]), v78);
  v170 = vsraq_n_u64(vshlq_n_s64(v217.val[2], 3uLL), v217.val[2], 0x3DuLL);
  v217.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v217.val[0], v217.val[0]), v76), v217.val[0]), *&STACK[0x5D0]), v78);
  v217.val[2] = veorq_s8(v217.val[0], vsraq_n_u64(vshlq_n_s64(v217.val[3], 3uLL), v217.val[3], 0x3DuLL));
  v217.val[3] = veorq_s8(v217.val[1], v170);
  v171 = vsraq_n_u64(vshlq_n_s64(v217.val[0], 0x38uLL), v217.val[0], 8uLL);
  v217.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[1], 0x38uLL), v217.val[1], 8uLL), v217.val[3]);
  v217.val[1] = veorq_s8(vaddq_s64(v171, v217.val[2]), *&STACK[0x5C0]);
  v217.val[0] = veorq_s8(v217.val[0], *&STACK[0x5C0]);
  v172 = vsraq_n_u64(vshlq_n_s64(v217.val[2], 3uLL), v217.val[2], 0x3DuLL);
  v217.val[2] = veorq_s8(v217.val[0], vsraq_n_u64(vshlq_n_s64(v217.val[3], 3uLL), v217.val[3], 0x3DuLL));
  v217.val[3] = veorq_s8(v217.val[1], v172);
  v173 = vsraq_n_u64(vshlq_n_s64(v217.val[0], 0x38uLL), v217.val[0], 8uLL);
  v217.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[1], 0x38uLL), v217.val[1], 8uLL), v217.val[3]);
  v217.val[1] = veorq_s8(vaddq_s64(v173, v217.val[2]), *&STACK[0x5B0]);
  v217.val[0] = veorq_s8(v217.val[0], *&STACK[0x5B0]);
  v174 = vsraq_n_u64(vshlq_n_s64(v217.val[2], 3uLL), v217.val[2], 0x3DuLL);
  v217.val[2] = veorq_s8(v217.val[0], vsraq_n_u64(vshlq_n_s64(v217.val[3], 3uLL), v217.val[3], 0x3DuLL));
  v217.val[3] = veorq_s8(v217.val[1], v174);
  v175 = vsraq_n_u64(vshlq_n_s64(v217.val[0], 0x38uLL), v217.val[0], 8uLL);
  v217.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[1], 0x38uLL), v217.val[1], 8uLL), v217.val[3]);
  v217.val[1] = vaddq_s64(v175, v217.val[2]);
  v217.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v217.val[1], vandq_s8(vaddq_s64(v217.val[1], v217.val[1]), v25)), v26), v27);
  v217.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v217.val[0], vandq_s8(vaddq_s64(v217.val[0], v217.val[0]), v25)), v26), v27);
  v176 = vsraq_n_u64(vshlq_n_s64(v217.val[2], 3uLL), v217.val[2], 0x3DuLL);
  v217.val[2] = veorq_s8(v217.val[0], vsraq_n_u64(vshlq_n_s64(v217.val[3], 3uLL), v217.val[3], 0x3DuLL));
  v217.val[3] = veorq_s8(v217.val[1], v176);
  v177 = vsraq_n_u64(vshlq_n_s64(v217.val[0], 0x38uLL), v217.val[0], 8uLL);
  v178 = vaddq_s64(v162, v30);
  v217.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217.val[1], 0x38uLL), v217.val[1], 8uLL), v217.val[3]);
  v217.val[1] = vaddq_s64(v177, v217.val[2]);
  v217.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v217.val[0], vandq_s8(vaddq_s64(v217.val[0], v217.val[0]), v28)), v29), v111), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x590], 3uLL), v23)));
  v217.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v217.val[1], vandq_s8(vaddq_s64(v217.val[1], v217.val[1]), v28)), v29), v111), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x580], 3uLL), v23)));
  v179 = veorq_s8(v178, v52);
  v180 = veorq_s8(v178, v24);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v57);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(v183, vandq_s8(vaddq_s64(v183, v183), v65)), *&STACK[0x5E0]), v67);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v186, v186), v76), v186), *&STACK[0x5D0]), v78);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), *&STACK[0x5C0]);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), *&STACK[0x5B0]);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), v25)), v26), v27);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL)));
  v196 = vaddq_s64(v163, v30);
  v217.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v195, vandq_s8(vaddq_s64(v195, v195), v28)), v29), v111), vnegq_s64(vandq_s8(vshlq_n_s64(v151, 3uLL), v23)));
  v197 = veorq_s8(v196, v52);
  v198 = veorq_s8(v196, v24);
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v57);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(v201, vandq_s8(vaddq_s64(v201, v201), v65)), *&STACK[0x5E0]), v67);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), v76), v204), *&STACK[0x5D0]), v78);
  v206 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v208 = veorq_s8(v205, v206);
  v209 = veorq_s8(vaddq_s64(v207, v208), *&STACK[0x5C0]);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), *&STACK[0x5B0]);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(v213, vandq_s8(vaddq_s64(v213, v213), v25)), v26), v27);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL)));
  v217.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v215, vandq_s8(vaddq_s64(v215, v215), v28)), v29), v111), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x560], 3uLL), v23)));
  v34.i64[1] = vqtbl4q_s8(v217, *&STACK[0x5A0]).u64[0];
  v217.val[0] = vrev64q_s8(v34);
  *(v9 + v10 + v11 + (v12 + v8 + 16) - 15) = vextq_s8(v217.val[0], v217.val[0], 8uLL);
  return (*(a5 + 8 * ((12880 * (v21 == v8)) ^ v16)))();
}

uint64_t sub_100130064@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X7>, int a5@<W8>)
{
  v21 = v8 + (v7 + v9) + ((a5 + 1672) ^ v6) + STACK[0x610];
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (v12 | (2 * (v22 + a2))) - (v22 + a2) + v13;
  v24 = v23 ^ v16;
  v25 = v23 ^ v17;
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xD87AD12BCA74F052;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - (v18 & (2 * (v28 + v27))) + v14) ^ 0x241FFCDDCD03031CLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) & 0x9F71B77C9D5E33DCLL) - (v31 + v30) + 0x30472441B150E611) ^ 0xA05640A19E2D4FCFLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x2AF4A59094827F6ELL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x923A0997826215EALL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - (a1 & (2 * (v38 + v37))) + 0x50F1A00E103B1273) ^ v10;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  *v21 = ((v41 + v40 - (v19 & (2 * (v41 + v40))) + v15) ^ v20) >> (8 * (v21 & 7u));
  return (*(a4 + 8 * (((v7 - 1 == a3) * v11) ^ v5)))();
}

uint64_t sub_1001301E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, _DWORD *a57)
{
  *STACK[0x998] = v58;
  *a57 = STACK[0xB44];
  return (*(a8 + 8 * v57))(a1, a2, a3, a4, a5, 68588956);
}

uint64_t sub_100130340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 - 240) = (v11 + 3080) ^ (1949688233 * ((((v12 - 240) | 0x4ECBFBC1) - (v12 - 240) + ((v12 - 240) & 0xB1340438)) ^ 0xA98CAD4A));
  v13 = (*(a8 + 8 * (v11 + 6123)))(v12 - 240);
  v14 = STACK[0x628];
  v15 = STACK[0xF68];
  v16 = v10 + v9 - 1809586883;
  *(v16 + 4021) = STACK[0xF68] ^ (((v11 + 91) | 0x20) + 4);
  *(v16 + 4022) = BYTE1(v15) ^ 0x8B;
  return (*(v14 + 8 * ((117 * (v10 == v8 + 14)) ^ v11)))(v13);
}

uint64_t sub_100130414@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v7 = v5 + v4 + v3;
  *(v7 + 4023) = BYTE2(a2) ^ 0x32;
  *(v7 + 4024) = ((v6 + 1) | 0xC0) ^ HIBYTE(a2) ^ 0x41;
  return (*(a1 + 8 * (v6 ^ (29 * (v4 == v2 + 12)))))();
}

uint64_t sub_100130474@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v3 + 4025) = BYTE4(a2) ^ 0xEB;
  *(v3 + 4026) = BYTE5(a2) ^ 0x99;
  return (*(a1 + 8 * ((((v2 + 1773892057) & 0x964467BB ^ 0xE64) * (v5 == v4 + 10)) ^ v2)))();
}

uint64_t sub_1001304D0@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v7 = v6 + v5 + v4;
  *(v7 + 4027) = (((v2 + 18) | 0x83) + 88) ^ BYTE6(a2);
  *(v7 + 4028) = (a2 >> (v2 + 74)) ^ 0x1A;
  return (*(a1 + 8 * ((v2 - 1564) ^ (1010 * (v5 + 8 != v3 + 16)))))();
}

uint64_t sub_100130604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v11[118];
  v11[51] = v12;
  v13 = v11[17];
  v14 = *(v13 - 0x1138F6A92264F422);
  v15 = *(v13 - 0x1138F6A92264F40ELL);
  v16 = v11[90];
  v17 = 260688507 * LODWORD(STACK[0x7CC]) + 627694782;
  v18 = 295004707 * ((((v10 - 240) | 0x5D13E1A9) + (~(v10 - 240) | 0xA2EC1E56)) ^ 0x354C5535);
  v11[283] = v12;
  v11[281] = v13 + 0x39098F4696F66D3FLL;
  *(v10 - 200) = -295004707 * ((((v10 - 240) | 0x5D13E1A9) + (~(v10 - 240) | 0xA2EC1E56)) ^ 0x354C5535) + 1503467405 * (v14 ^ 0x83B591D1) + 441289160;
  v11[280] = v16;
  v11[278] = v12;
  *(v10 - 184) = v18 + (v15 ^ 0x4F9D6229) + 1994636160 + (((v8 + 3532) ^ 0xFE3CFD96) & (2 * v15) ^ ((v8 ^ 0x71D) + 1610885353));
  *(v10 - 224) = 831984264 - v18;
  *(v10 - 220) = v17 ^ v18;
  *(v10 - 240) = v8 - v18 + 6629;
  v19 = (*(a8 + 8 * (v8 ^ 0x2C7A)))(v10 - 240);
  return (*(STACK[0x628] + 8 * (v8 | (16 * (*(v10 - 236) != v9)))))(v19);
}

uint64_t sub_1001308A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[17];
  v9[252] = v10;
  v11 = *(v10 - 0x1138F6A92264F472);
  if (v11 == 408423770)
  {
    return (*(a8 + 8 * (v8 - 9416 + 2785 * (v8 ^ 0x12CD))))();
  }

  if (v11 == 408423771)
  {
    LODWORD(STACK[0xE28]) = v8 + 3616;
    LODWORD(STACK[0xE2C]) = v8 - 3784;
    v12 = STACK[0x638];
    v9[239] = STACK[0x638];
    v9[232] = v12;
    v9[230] = 32;
    v13 = *(a8 + 8 * (v8 + 5734));
    LOBYTE(STACK[0xDF7]) = 0;
    v9[229] = v13;
    return (*(a8 + 8 * (v8 + 5749)))();
  }

  else
  {
    v15 = *(a8 + 8 * (v8 - 4169));
    LODWORD(STACK[0x9E4]) = 68545952;
    v9[62] = v15;
    return (*(a8 + 8 * (v8 - 553)))();
  }
}

uint64_t sub_100130BB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x230]) = v15;
  STACK[0x250] = v14;
  STACK[0x260] = v13;
  STACK[0x270] = v12;
  STACK[0x2C0] = a1;
  LODWORD(STACK[0x220]) = 1 - v9;
  LODWORD(STACK[0x240]) = (v10 ^ 0xEDE678A4) + v11;
  LODWORD(STACK[0x390]) = 254814609;
  return (*(a8 + 8 * (((*(v8 - 0x5A0411E37F4B9882) == 0x51CE20ABD81C933BLL) * (59 * (v10 ^ 0xFA4) + (v10 ^ 0xFFFFE92D))) ^ v10 ^ 0x524)))();
}

uint64_t sub_100130C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x390]) - 254818225;
  v10 = STACK[0x2C0];
  *(((2 * (LODWORD(STACK[0x390]) - 254814609)) & 0x1BDF37D96) + ((LODWORD(STACK[0x390]) - 254814609) ^ ((v8 ^ 0xB3Fu) + 0x49DF79FFDEF9AEFFLL)) + STACK[0x2C0] - 0x49DF79FFDEF9BECBLL) = 0;
  *(((2 * (v9 + 3620)) & 0x1EEBCD7FALL) + ((v9 + 3620) ^ 0x7EE7BFFEF75E6BFDLL) + v10 - 0x7EE7BFFEF75E6BFDLL) = -9392;
  v11 = STACK[0x230];
  v12 = (16 - LODWORD(STACK[0x230]));
  v13 = LODWORD(STACK[0x230]) + 2 * ((16 - LOBYTE(STACK[0x230])) & 0x12 ^ STACK[0x220] & 2);
  v14 = ((2 * (v9 + 3622)) & 0x13DFB7692) + ((v9 + 3622) ^ 0x6DDF7E979EFDBB49) + v10 - 0x6DDF7E979EFDBB49;
  *v14 = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = (0x80 - v13) ^ 0x70;
  return (*(a8 + 8 * (v8 ^ (464 * ((v12 ^ 0xED7F3F154C9FECDELL) + ((2 * (16 - v11)) & 0x3C) + 0x1280C0EB65BFDD41 == 2992622111)))))();
}

uint64_t sub_100130DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *STACK[0x270] = a1;
  *STACK[0x260] = STACK[0x240];
  return (*(a8 + 8 * v8))();
}

uint64_t sub_100130E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = *(v9 + 1304);
  LODWORD(STACK[0x90C]) = STACK[0xB2C];
  return (*(a8 + 8 * v8))(a1, a2, a3, a4, a5, 68588956);
}

uint64_t sub_100130F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ((2 * v9) ^ 0x4EE6) + v10 + 1513391724;
  v12 = ((v9 - 9704) | 0x100C) - *(v8 - 0x51CE20ABD81C932BLL) + 1209321131;
  v13 = v11 < 0xD1DACEB1;
  v14 = v11 > v12;
  v15 = v13 ^ (v12 < 0xD1DACEB1);
  v16 = v14;
  if (v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  return (*(a8 + 8 * (v17 ^ v9 ^ 1)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100130FA8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v4 + a2) = 0;
  v6 = v5 < v3;
  v7 = a2 + 1;
  if (v6 == v7 > 0xFFFFFFFF4DA035E0)
  {
    v6 = v7 + v3 < v5;
  }

  return (*(a1 + 8 * ((!v6 * (v2 ^ 0x523)) ^ v2)))();
}

uint64_t sub_100131000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x2C0];
  STACK[0x200] = STACK[0x2C0] - 15;
  STACK[0x210] = v9 - 7;
  v10 = *(a8 + 8 * v8);
  *&STACK[0x610] = vdupq_n_s64(0xBE5E37862CF662F3);
  *&STACK[0x370] = xmmword_1002A9AA0;
  *&STACK[0x420] = vdupq_n_s64(0x3D3293A6FD59897EuLL);
  *&STACK[0x380] = vdupq_n_s64(0x38uLL);
  *&STACK[0x400] = xmmword_1002A9AB0;
  *&STACK[0x5D0] = vdupq_n_s64(0xC2CD6C5902A67681);
  *&STACK[0x500] = vdupq_n_s64(0x14B312494547F7FAuLL);
  *&STACK[0x5C0] = vdupq_n_s64(0xCE8E74F140203A82);
  *&STACK[0x5B0] = vdupq_n_s64(0x1329D67F5E8BA89AuLL);
  *&STACK[0x5A0] = vdupq_n_s64(0x994EA89453F324DALL);
  *&STACK[0x4F0] = vdupq_n_s64(0x1B72AFF70A6DE3F8uLL);
  *&STACK[0x5E0] = vdupq_n_s64(0x5F6C432483AE0E2CuLL);
  *&STACK[0x590] = vdupq_n_s64(0xB581C077348D623CLL);
  *&STACK[0x580] = vdupq_n_s64(0x5049DE6DBE28F8E9uLL);
  *&STACK[0x570] = vdupq_n_s64(0xD699DB6D7570100CLL);
  *&STACK[0x560] = vdupq_n_s64(0x1030028110482010uLL);
  *&STACK[0x4E0] = vdupq_n_s64(0x91B223A9B4483437);
  *&STACK[0x4D0] = vdupq_n_s64(0x4E405C160AB740C9uLL);
  *&STACK[0x550] = vdupq_n_s64(0x8D2F9998CE0730C9);
  *&STACK[0x490] = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  *&STACK[0x480] = vdupq_n_s64(0x3982B236AA56861AuLL);
  *&STACK[0x440] = vdupq_n_s64(0x96518B1852248A0DLL);
  *&STACK[0x430] = vdupq_n_s64(0x6E4DDC564BB7CBC8uLL);
  *&STACK[0x410] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x540] = vdupq_n_s64(0x961846080CFECC64);
  *&STACK[0x530] = vdupq_n_s64(0xED2B4AEB99146DB4);
  return v10(1441766815, 0xCE8E74F140203A82, 2853199701, 498871312);
}

uint64_t sub_100131384@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X7>, int a5@<W8>)
{
  v7 = *(v5 - 0x51CE20ABD81C932BLL) - ((v6 + 2 * *(v5 - 0x51CE20ABD81C932BLL)) & 0x5AE6AEE8) + 926502059;
  v8 = ((a5 + 592) ^ 0x5A649650 ^ (2 * v7) & 0xFB7CD93A) + ((a5 + a2) & a1 ^ 0x50CD22F4 ^ v7) + 536723315;
  LODWORD(STACK[0x320]) = v8;
  return (*(a4 + 8 * ((111 * (v8 == a3)) ^ a5)))();
}

uint64_t sub_100131428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x300] = v9;
  STACK[0x600] = *(v9 - 0x51CE20ABD81C9323);
  v12 = ((1928 * (v8 ^ 0x1E7C)) ^ 0xF0CFC84F) + LODWORD(STACK[0x390]);
  STACK[0x5F0] = ((v12 << ((v8 ^ 0x7Cu) - 3)) & 0x1E6E2C8F2) + (v12 ^ 0x3D7FD7CEF3716479) - 0x3D7FD7CEF3716479;
  LODWORD(STACK[0x290]) = v10;
  LODWORD(STACK[0x280]) = v11;
  LODWORD(v12) = v11 + v10 + 37852003;
  LODWORD(STACK[0x2B0]) = v12;
  return (*(a8 + 8 * (v8 ^ (239 * (v12 > 7)))))(STACK[0x2C0], 0x3D3293A6FD59897ELL);
}

uint64_t sub_1001316C8(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = (a4 + v9 + 8);
  v22.i64[0] = v14 + v21;
  v22.i64[1] = v14 + (v17 + v9 + 8);
  v23.i64[0] = v14 + v13 + v9 + (v18 ^ 0xE243D800) + 8;
  v24.i64[0] = v14 + (v16 + v9 + 8);
  v24.i64[1] = v14 + (a2 + v9 + 8);
  v23.i64[1] = v14 + (a3 + v9 + 8);
  *&STACK[0x520] = v23;
  v25.i64[0] = v14 + (v12 + v9 + 8);
  v25.i64[1] = v14 + (v11 + v9 + 8);
  v26 = vandq_s8(v25, v20);
  v27 = vandq_s8(v24, v20);
  v28 = vandq_s8(v22, v20);
  v29 = vandq_s8(v23, v20);
  v30 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v34 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v30, v30), *&STACK[0x530]), *&STACK[0x540]), v30);
  v35 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v31, v31), *&STACK[0x530]), *&STACK[0x540]), v31);
  v36 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v33, v33), *&STACK[0x530]), *&STACK[0x540]), v33), *&STACK[0x610]);
  v37 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v32, v32), *&STACK[0x530]), *&STACK[0x540]), v32), *&STACK[0x610]);
  v38 = veorq_s8(v37, *&STACK[0x480]);
  v39 = veorq_s8(v36, *&STACK[0x480]);
  v40 = veorq_s8(v36, *&STACK[0x550]);
  v41 = veorq_s8(v37, *&STACK[0x550]);
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v40), *&STACK[0x490]);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL);
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v41), *&STACK[0x490]);
  v45 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v46 = veorq_s8(v42, v43);
  v47 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v46);
  v49 = veorq_s8(vaddq_s64(v47, v45), *&STACK[0x440]);
  v50 = veorq_s8(v48, *&STACK[0x440]);
  v51 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = vaddq_s64(v54, v52);
  v54.i64[0] = -1;
  v54.i64[1] = -1;
  v57 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v55, *&STACK[0x4E0]), *&STACK[0x560]), veorq_s8(vandq_s8(v55, *&STACK[0x430]), *&STACK[0x4D0])), v54);
  v58 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v56, *&STACK[0x4E0]), *&STACK[0x560]), veorq_s8(vandq_s8(v56, *&STACK[0x430]), *&STACK[0x4D0])), v54), *&STACK[0x5A0]);
  v59 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v60 = veorq_s8(v57, *&STACK[0x5A0]);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v62 = veorq_s8(v58, v59);
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, *&STACK[0x5D0]), vorrq_s8(v64, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x5C0]);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, *&STACK[0x5D0]), vorrq_s8(v65, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x5C0]);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), *&STACK[0x5E0]), v71), *&STACK[0x580]), *&STACK[0x5B0]);
  v73 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x5E0]), v70), *&STACK[0x580]), *&STACK[0x5B0]);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), *&STACK[0x590]);
  v80 = veorq_s8(v78, *&STACK[0x590]);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(v34, *&STACK[0x610]);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v87 = vaddq_s64(v84, v82);
  v124.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v86, v86), *&STACK[0x570]), v86), *&STACK[0x500]), *&STACK[0x4F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), *&STACK[0x380])));
  v124.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), *&STACK[0x570]), v87), *&STACK[0x500]), *&STACK[0x4F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), *&STACK[0x380])));
  v88 = veorq_s8(v85, *&STACK[0x480]);
  v89 = veorq_s8(v85, *&STACK[0x550]);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), *&STACK[0x490]);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), *&STACK[0x440]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v85.i64[0] = -1;
  v85.i64[1] = -1;
  v95 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v94, *&STACK[0x4E0]), *&STACK[0x560]), veorq_s8(vandq_s8(v94, *&STACK[0x430]), *&STACK[0x4D0])), v85), *&STACK[0x5A0]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, *&STACK[0x5D0]), vorrq_s8(v97, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x5C0]);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), *&STACK[0x5E0]), v100), *&STACK[0x580]), *&STACK[0x5B0]);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), *&STACK[0x590]);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL)));
  v105 = vaddq_s64(v35, *&STACK[0x610]);
  v124.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x570]), v104), *&STACK[0x500]), *&STACK[0x4F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), *&STACK[0x380])));
  v106 = veorq_s8(v105, *&STACK[0x480]);
  v107 = veorq_s8(v105, *&STACK[0x550]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), *&STACK[0x490]);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), *&STACK[0x440]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v112, *&STACK[0x4E0]), *&STACK[0x560]), veorq_s8(vandq_s8(v112, *&STACK[0x430]), *&STACK[0x4D0])), v85), *&STACK[0x5A0]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, *&STACK[0x5D0]), vorrq_s8(v115, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x5C0]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), *&STACK[0x5E0]), v118), *&STACK[0x580]), *&STACK[0x5B0]);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), *&STACK[0x590]);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v124.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), *&STACK[0x570]), v122), *&STACK[0x500]), *&STACK[0x4F0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x520], 3uLL), *&STACK[0x380])));
  *(v15 + v21 + a1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v124, *&STACK[0x370])), *(v14 + v21 - 7));
  return (*(a8 + 8 * (((v19 == v9) * v10) ^ v8)))();
}

uint64_t sub_100131E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x2B0];
  v5 = *(STACK[0x628] + 8 * v3);
  v6 = LODWORD(STACK[0x280]) + 37851995 + LODWORD(STACK[0x290]);
  LODWORD(STACK[0x360]) = v6 + 4;
  LODWORD(STACK[0x350]) = v6 + 5;
  LODWORD(STACK[0x340]) = v6 + 6;
  LODWORD(STACK[0x330]) = v6 + 7;
  return v5(STACK[0x5F0], v4 & 0xFFFFFFF0, a3, 56, LODWORD(STACK[0x320]), -(v4 & 0xFFFFFFF0));
}

uint64_t sub_100131F00@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v22 = (LODWORD(STACK[0x330]) + a7 + 16);
  v23 = (LODWORD(STACK[0x350]) + a7 + 16);
  v24 = LODWORD(STACK[0x360]) + a7;
  v25.i64[0] = v10 + v22;
  v25.i64[1] = v10 + (LODWORD(STACK[0x340]) + a7 + 16);
  v26 = v25;
  *&STACK[0x3C0] = v25;
  v27.i64[0] = v10 + v23;
  v27.i64[1] = v10 + (v24 + 16);
  v28.i64[0] = v10 + (v19 + a7 + 16);
  v28.i64[1] = v10 + (a5 + a7 + 16);
  v25.i64[0] = v10 + (v18 + a7 + 16);
  v25.i64[1] = v10 + (v17 + a7 + 16);
  *&STACK[0x520] = v25;
  v25.i64[0] = v10 + (v16 + a7 + 16);
  v25.i64[1] = v10 + (v15 + a7 + 16);
  *&STACK[0x510] = v25;
  v25.i64[0] = v10 + (v14 + a7 + 16);
  v25.i64[1] = v10 + (v13 + a7 + 16);
  *&STACK[0x3E0] = v25;
  v25.i64[0] = v10 + (v20 + a7 + 16);
  v25.i64[1] = v10 + a3 + a7 + ((4 * v21) ^ v7) + 16;
  v29 = v25;
  *&STACK[0x3D0] = v25;
  v30 = vandq_s8(v28, *&STACK[0x410]);
  v31 = vandq_s8(v27, *&STACK[0x410]);
  v32 = vandq_s8(v26, *&STACK[0x410]);
  v33 = vandq_s8(v29, *&STACK[0x410]);
  v34 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v38 = *&STACK[0x530];
  v39 = *&STACK[0x540];
  *&STACK[0x3F0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v36, v36), *&STACK[0x530]), *&STACK[0x540]), v36);
  v40 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v34, v34), v38), v39), v34);
  v41 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v37, v37), v38), v39), v37), *&STACK[0x610]);
  v42 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v35, v35), v38), v39), v35), *&STACK[0x610]);
  v43 = *&STACK[0x480];
  v44 = veorq_s8(v42, *&STACK[0x480]);
  v45 = veorq_s8(v41, *&STACK[0x480]);
  v46 = veorq_s8(v41, *&STACK[0x550]);
  v47 = veorq_s8(v42, *&STACK[0x550]);
  v48 = *&STACK[0x550];
  v49 = *&STACK[0x490];
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), *&STACK[0x490]);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), *&STACK[0x490]);
  v52 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = *&STACK[0x440];
  v58 = veorq_s8(vaddq_s64(v55, v53), *&STACK[0x440]);
  v59 = veorq_s8(v56, *&STACK[0x440]);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = *&STACK[0x430];
  v66 = *&STACK[0x4D0];
  v67 = *&STACK[0x4E0];
  v68 = *&STACK[0x560];
  v62.i64[0] = -1;
  v62.i64[1] = -1;
  v69 = *&STACK[0x5A0];
  v70 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v64, *&STACK[0x4E0]), *&STACK[0x560]), veorq_s8(vandq_s8(v64, *&STACK[0x430]), *&STACK[0x4D0])), v62), *&STACK[0x5A0]);
  v71 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v63, *&STACK[0x4E0]), *&STACK[0x560]), veorq_s8(vandq_s8(v63, *&STACK[0x430]), *&STACK[0x4D0])), v62), *&STACK[0x5A0]);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = *&STACK[0x5D0];
  v78 = *&STACK[0x420];
  v79 = *&STACK[0x5C0];
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, *&STACK[0x5D0]), vorrq_s8(v75, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x5C0]);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, *&STACK[0x5D0]), vorrq_s8(v76, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x5C0]);
  v82 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v83);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v86, v86), *&STACK[0x5E0]), v86), *&STACK[0x580]), *&STACK[0x5B0]);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v85, v85), *&STACK[0x5E0]), v85), *&STACK[0x580]), *&STACK[0x5B0]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v90 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v90);
  v93 = *&STACK[0x590];
  v94 = veorq_s8(vaddq_s64(v91, v89), *&STACK[0x590]);
  v95 = veorq_s8(v92, *&STACK[0x590]);
  v96 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v101 = vdupq_n_s64(a2);
  v102 = vaddq_s64(v40, *&STACK[0x610]);
  v103 = vaddq_s64(v100, v98);
  v104 = vaddq_s64(v99, v97);
  v105 = *&STACK[0x570];
  v106 = *&STACK[0x500];
  v107 = *&STACK[0x4F0];
  v254.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x570]), v103), *&STACK[0x500]), *&STACK[0x4F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v101)));
  v254.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x570]), v104), *&STACK[0x500]), *&STACK[0x4F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v101)));
  v108 = veorq_s8(v102, *&STACK[0x480]);
  v109 = veorq_s8(v102, *&STACK[0x550]);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), *&STACK[0x490]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), *&STACK[0x440]);
  v114 = veorq_s8(v113, v112);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v104.i64[0] = -1;
  v104.i64[1] = -1;
  v116 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v115, *&STACK[0x4E0]), *&STACK[0x560]), veorq_s8(vandq_s8(v115, *&STACK[0x430]), *&STACK[0x4D0])), v104), *&STACK[0x5A0]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, *&STACK[0x5D0]), vorrq_s8(v118, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x5C0]);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = *&STACK[0x5E0];
  v123 = *&STACK[0x580];
  v124 = *&STACK[0x5B0];
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), *&STACK[0x5E0]), v121), *&STACK[0x580]), *&STACK[0x5B0]);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), *&STACK[0x590]);
  v112.i64[0] = v10 + (v12 + a7 + 16);
  v112.i64[1] = v10 + (a6 + a7 + 16);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL)));
  v129 = vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), *&STACK[0x570]), v128);
  v130 = *&STACK[0x410];
  v131 = vandq_s8(v112, *&STACK[0x410]);
  v132 = vaddq_s64(*&STACK[0x3F0], *&STACK[0x610]);
  v133 = vshlq_n_s64(*&STACK[0x3C0], 3uLL);
  v134 = veorq_s8(vaddq_s64(v129, *&STACK[0x500]), *&STACK[0x4F0]);
  v135 = v101;
  *&STACK[0x3B0] = v101;
  v254.val[0] = vshlq_u64(v134, vnegq_s64(vandq_s8(v133, v101)));
  v136 = veorq_s8(v132, v43);
  v137 = veorq_s8(v132, v48);
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v49);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v57);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141);
  v101.i64[0] = -1;
  v101.i64[1] = -1;
  v143 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v142, v67), v68), veorq_s8(vandq_s8(v142, v65), v66)), v101), v69);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v145, v77), vorrq_s8(v145, v78)), v78), v79);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v122), v148), v123), v124);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v93);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = vandq_s8(*&STACK[0x3E0], v130);
  v155 = vaddq_s64(v153, v152);
  v156 = vandq_s8(*&STACK[0x510], v130);
  v254.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), v105), v155), v106), v107), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), v135)));
  v157 = vandq_s8(*&STACK[0x520], v130);
  v158 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v162 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v158, v158), *&STACK[0x530]), *&STACK[0x540]), v158);
  v163 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v159, v159), *&STACK[0x530]), *&STACK[0x540]), v159);
  v164 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v161, v161), *&STACK[0x530]), *&STACK[0x540]), v161), *&STACK[0x610]);
  v165 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v160, v160), *&STACK[0x530]), *&STACK[0x540]), v160), *&STACK[0x610]);
  v254.val[2].i64[0] = vqtbl4q_s8(v254, *&STACK[0x400]).u64[0];
  v166 = veorq_s8(v165, v43);
  v167 = veorq_s8(v164, v43);
  v168 = veorq_s8(v164, *&STACK[0x550]);
  v169 = veorq_s8(v165, *&STACK[0x550]);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v49);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v169), v49);
  v172 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v173 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v174 = veorq_s8(v170, v172);
  v175 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v174);
  v177 = veorq_s8(vaddq_s64(v175, v173), v57);
  v178 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v179 = veorq_s8(v176, v57);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v181 = veorq_s8(v177, v178);
  v182 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v181);
  v184 = vaddq_s64(v182, v180);
  v185 = v78;
  v254.val[3].i64[0] = -1;
  v254.val[3].i64[1] = -1;
  v186 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v184, v67), *&STACK[0x560]), veorq_s8(vandq_s8(v184, v65), v66)), v254.val[3]), *&STACK[0x5A0]);
  v187 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v183, v67), *&STACK[0x560]), veorq_s8(vandq_s8(v183, v65), v66)), v254.val[3]), *&STACK[0x5A0]);
  v188 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v189 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v190 = veorq_s8(v186, v188);
  v191 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v190);
  v193 = vaddq_s64(v191, v189);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, *&STACK[0x5D0]), vorrq_s8(v192, v78)), v78), *&STACK[0x5C0]);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, *&STACK[0x5D0]), vorrq_s8(v193, v78)), v78), *&STACK[0x5C0]);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v197 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v197);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199, v199), *&STACK[0x5E0]), v199), *&STACK[0x580]), *&STACK[0x5B0]);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), *&STACK[0x5E0]), v198), *&STACK[0x580]), *&STACK[0x5B0]);
  v202 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v203 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v204 = veorq_s8(v200, v202);
  v205 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v204);
  v207 = veorq_s8(vaddq_s64(v205, v203), *&STACK[0x590]);
  v208 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v209 = veorq_s8(v206, *&STACK[0x590]);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v211 = veorq_s8(v207, v208);
  v212 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v213 = vaddq_s64(v163, *&STACK[0x610]);
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v211);
  v215 = vaddq_s64(v212, v210);
  v253.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v214, v214), *&STACK[0x570]), v214), v106), v107), vnegq_s64(vandq_s8(vshlq_n_s64(v112, 3uLL), *&STACK[0x3B0])));
  v253.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v215, v215), *&STACK[0x570]), v215), v106), v107), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), *&STACK[0x3B0])));
  v216 = veorq_s8(v213, v43);
  v217 = veorq_s8(v213, *&STACK[0x550]);
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), v49);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v57);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v212.i64[0] = -1;
  v212.i64[1] = -1;
  v223 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v222, v67), *&STACK[0x560]), veorq_s8(vandq_s8(v222, v65), v66)), v212), *&STACK[0x5A0]);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v225, *&STACK[0x5D0]), vorrq_s8(v225, v185)), v185), *&STACK[0x5C0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228, v228), *&STACK[0x5E0]), v228), *&STACK[0x580]), *&STACK[0x5B0]);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), *&STACK[0x590]);
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL)));
  v233 = vaddq_s64(v162, *&STACK[0x610]);
  v253.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v232, v232), *&STACK[0x570]), v232), v106), v107), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x510], 3uLL), *&STACK[0x3B0])));
  v234 = veorq_s8(v233, v43);
  v235 = veorq_s8(v233, *&STACK[0x550]);
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v49);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), v57);
  v239 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239);
  v241 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v240, v67), *&STACK[0x560]), veorq_s8(vandq_s8(v240, v65), v66)), v212), *&STACK[0x5A0]);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v243, *&STACK[0x5D0]), vorrq_s8(v243, v185)), v185), *&STACK[0x5C0]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v246, v246), *&STACK[0x5E0]), v246), *&STACK[0x580]), *&STACK[0x5B0]);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248), *&STACK[0x590]);
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL)));
  v253.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v250, v250), *&STACK[0x570]), v250), v106), v107), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x520], 3uLL), *&STACK[0x3B0])));
  v254.val[2].i64[1] = vqtbl4q_s8(v253, *&STACK[0x400]).u64[0];
  v251 = vrev64q_s8(v254.val[2]);
  *(v8 + v22 + a1) = veorq_s8(vextq_s8(v251, v251, 8uLL), *(v10 + v22 - 15));
  return (*(v11 + 8 * (((a4 == a7) * v9) ^ v21)))();
}

uint64_t sub_100132D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v23 = (((v7 - 3547) | v22) ^ 0xE243CFA8) + a7;
  v24 = STACK[0x600] + v23;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((2 * v25 - 0x12D4B51466EB924CLL) & v17) - v25 - 0x41A1C879D3099D0DLL;
  v27 = v26 ^ v21;
  v28 = v26 ^ v18;
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x5EEE4453CA35DABALL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v19;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (((v32 + v33) & v12 ^ v15) + ((v32 + v33) & v13 ^ v20) - 1) ^ v10;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (a2 - ((v36 + v35) | a2) + ((v36 + v35) | a6)) ^ v16;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = ((a4 & (2 * (v39 + v38))) - (v39 + v38) + a5) ^ v11;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v9;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  *(a1 + v23 + STACK[0x5F0]) = ((((v14 | (2 * (v44 + v43))) - (v44 + v43) + a3) ^ v8) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(STACK[0x628] + 8 * ((a7 == 498871313) | (2 * (a7 == 498871313)) | v7)))();
}

uint64_t sub_100132F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x8A4]) = a6;
  *(v9 + 40) = *(a8 + 8 * (v8 - 4446));
  return (*(a8 + 8 * ((((v8 + 1641590065) & 0x9E2767DA) - 6789) ^ (v8 - 4446))))();
}

uint64_t sub_100133000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 240) = (v8 - 1995815511) ^ (251922329 * ((((v9 - 240) | 0xCB60991B) - (v9 - 240) + ((v9 - 240) & 0x349F66E0)) ^ 0xC6C33111));
  v10 = (*(a8 + 8 * (v8 + 5777)))(v9 - 240);
  return (*(STACK[0x628] + 8 * (((*(v9 - 236) == 119) * ((v8 + 1175942882) & 0xB9E87FE2 ^ 0x9DB)) ^ v8)))(v10);
}

uint64_t sub_1001330C0()
{
  v7 = 1084270361 * ((v6 - 240) ^ 0xCC29FF1A);
  *(v0 + 2224) = v3;
  *(v0 + 2240) = v2;
  *(v6 - 224) = v5 - 2363 - v7 - 650;
  *(v6 - 240) = v4 - v7 + v5 + 310241047;
  v8 = (*(v1 + 8 * ((v5 - 2363) ^ 0x23F9)))(v6 - 240);
  return (*(STACK[0x628] + 8 * (v5 - 2363)))(v8);
}

uint64_t sub_10013313C()
{
  v7 = 199319723 * ((((v6 - 240) ^ 0x3FD60C00 | 0xBD76481) - (((v6 - 240) ^ 0x3FD60C00) & 0xBD76481)) ^ 0x81F18649);
  *(v0 + 2224) = v3;
  *(v6 - 240) = v7 + v2 + 7723;
  *(v6 - 224) = v5 - v7 + (v2 ^ 0xC6CBBE3A);
  *(v0 + 2240) = v4;
  v8 = (*(v1 + 8 * (v2 + 8152)))(v6 - 240);
  return (*(STACK[0x628] + 8 * v2))(v8);
}

uint64_t sub_100133234@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4[82] = v2;
  LODWORD(STACK[0x934]) = v3;
  v4[165] = 0x510808E226CB14FCLL;
  LODWORD(STACK[0x954]) = 1443455193;
  LODWORD(STACK[0x83C]) = 1443455193;
  v4[146] = 0x1138F6A92264F486;
  v4[94] = 0x61CEF89FDDA89DF2;
  return (*(a1 + 8 * (((3359 * (a2 ^ 0x1FDF) + 9564) * (v2 != 0)) ^ a2)))();
}

uint64_t sub_100133324@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 + 1235;
  *(v2 + 584) = *(a1 + 8 * v3);
  return (*(a1 + 8 * (v3 ^ 0x265 ^ (v3 + 872))))();
}

uint64_t sub_100133398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v7 = STACK[0xB48];
  STACK[0x8F8] = STACK[0xB48];
  return (*(v6 + 8 * (((((v7 == 0x1138F6A92264F486) ^ (a6 + 12)) & 1) * ((a6 + 1977867544) & 0x8A1C12CE ^ 0x132B)) ^ a6)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100133480@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v4 + 520) = 0x51CE20ABD81C933BLL;
  *(v4 + 856) = 0xFEA3CCC300274FDLL;
  return (*(a2 + 8 * ((((((v3 - 457310755) & 0x1B4203A1) + 4429) ^ 0x12CA) * (a3 == a1)) | (v3 + 6632))))();
}

uint64_t sub_100133578@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(*(v2 + 520) - 0x51CE20ABD81C9323);
  *(v2 + 648) = v3;
  return (*(a1 + 8 * (((v3 != 0) * (((a2 + 1055) | 0x286) ^ 0x12D1)) ^ a2)))();
}

uint64_t sub_1001335E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = (v7 - 1983515337);
  v8[186] = v9;
  v10 = v8[107];
  v8[187] = v10;
  return (*(a6 + 8 * ((((v9 - v10 + 0xFEA3CCC300274FDLL) > 9) * (((a7 + 3525) ^ 0xB20) - 3082)) ^ (a7 + 3525))))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100133D80(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, unint64_t a58)
{
  v59 = LODWORD(STACK[0x624]) + 4198;
  v60 = (a4 - 1443455193) + STACK[0x340];
  STACK[0xBF0] = v60 + 10;
  v60 -= 0x298D6343A84BE7E6;
  v61 = v60 < 0xEF3E0B92;
  v62 = v60 > a57;
  if (a58 > 0xFFFFFFFF10C1F46DLL != v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = v62;
  }

  return (*(v58 + 8 * (v59 ^ (114 * v63))))();
}

uint64_t sub_100133E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x560]);
  if (v6 == 49033)
  {
    v7 = a4 != ((LODWORD(STACK[0x624]) - 1840745171) & 0x6DB77AEE ^ 0x56096237);
    return (*(STACK[0x628] + 8 * (((4 * v7) | (32 * v7)) ^ (LODWORD(STACK[0x624]) - 3511))))();
  }

  else
  {
    v9 = STACK[0x628];
    if (v6 == 30757 || v6 == 44155)
    {
      v10 = STACK[0x624];
      STACK[0x7C0] = v5;
      return (*(v9 + 8 * (v10 - 1092)))(a1, a2, a3, a4, a5, 68545951, 0x5A0411E37F4B9882, v9);
    }

    else
    {
      return (*(v9 + 8 * (LODWORD(STACK[0x624]) - 1092)))(a1, a2, a3, a4, a5, 68545950, 0x5A0411E37F4B9882, STACK[0x628]);
    }
  }
}

uint64_t sub_100135C1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0x624];
  LODWORD(STACK[0x91C]) = a4;
  return (*(v4 + 8 * (v5 + 837)))();
}

uint64_t sub_100135C40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xD98] + (a4 - 1443455193) - 0x2BA8F8354E40CBDBLL;
  v6 = v5 < 0x9B0E1470;
  v7 = v5 > STACK[0xD90] + 2601391216u;
  if (STACK[0xD90] > 0xFFFFFFFF64F1EB8FLL != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * (((8 * v7) | (32 * v7)) ^ (LODWORD(STACK[0x624]) - 3072))))();
}

uint64_t sub_100135CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = v9 + 10;
  v12 = LOWORD(STACK[0xC0E]);
  if (v12 == 30757)
  {
    v15 = LODWORD(STACK[0x624]) - 3359;
    v16 = STACK[0x670];
    *(v10 + 1152) = v11;
    LODWORD(STACK[0x84C]) = a4;
    *(v10 + 976) = v16 + a9 - 0x2BA8F835E94EE04BLL;
    return (*(a8 + 8 * v15))();
  }

  else if (v12 == 49033 || v12 == 44155)
  {
    v14 = LODWORD(STACK[0x624]) - 3359;
    *(v10 + 1152) = v11;
    LODWORD(STACK[0x84C]) = a4;
    return (*(a8 + 8 * v14))();
  }

  else
  {
    return sub_100140BC4(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100135D3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xDC8] + (a4 - 1443455193) - 0xCD7A75B4B3E0C68;
  v6 = v5 < 0xDE29CA39;
  v7 = v5 > STACK[0xDC0] + 3727280697u;
  if (STACK[0xDC0] > 0xFFFFFFFF21D635C6 != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((2016 * v7) ^ (LODWORD(STACK[0x624]) + 4397))))();
}

uint64_t sub_100135DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = v9 + 10;
  v12 = LOWORD(STACK[0xBFA]);
  if (v12 == 30757)
  {
    v15 = STACK[0x624];
    v16 = v10[75];
    v10[6] = v11;
    LODWORD(STACK[0xA3C]) = a4;
    v10[127] = v16 + a9 - 0xCD7A75C2967D6A1;
    return (*(a8 + 8 * (v15 - 300)))();
  }

  else if (v12 == 49033 || v12 == 44155)
  {
    v14 = STACK[0x624];
    v10[6] = v11;
    LODWORD(STACK[0xA3C]) = a4;
    return (*(a8 + 8 * (v14 - 300)))();
  }

  else
  {
    return sub_1001414E8(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100135E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x624]) - 3319;
  v7 = LOWORD(STACK[0xC6E]);
  STACK[0x888] = STACK[0xC70];
  return (*(v5 + 8 * (((2 * (v7 != 49033)) | (8 * (v7 != 49033))) ^ v6)))(a1, a2, a3, a4, a5, 68545951);
}

uint64_t sub_100135E8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0x624];
  LODWORD(STACK[0x83C]) = a4;
  return (*(v4 + 8 * (v5 + 3813)))();
}

uint64_t sub_100135EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x624];
  v7 = LOWORD(STACK[0xBEE]);
  STACK[0x7C0] = STACK[0xBF0];
  return (*(v5 + 8 * ((5046 * (v7 == (v6 - 21317))) ^ (v6 - 916))))(a1, a2, a3, a4, a5, 68545951, 0x5A0411E37F4B9882, v5);
}

uint64_t sub_100135F3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xDA8] + (a4 - 1443455193) - 0x1844342ED5071E11;
  v6 = v5 < 0x132403EE;
  v7 = v5 > STACK[0xDA0] + 321127406;
  if (STACK[0xDA0] > 0xFFFFFFFFECDBFC11 != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((94 * !v7) ^ (LODWORD(STACK[0x624]) - 1298))))();
}

uint64_t sub_100135FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v12 = v10 + 10;
  v13 = LOWORD(STACK[0xBFE]);
  if (v13 == 30757)
  {
    v15 = v11[87];
    v11[71] = v12;
    LODWORD(STACK[0x65C]) = a4;
    v11[130] = v15 + v9 - 0x1844342EE82B21FFLL;
    return (*(a8 + 8 * a9))();
  }

  else if (v13 == 49033 || v13 == 44155)
  {
    v11[71] = v12;
    LODWORD(STACK[0x65C]) = a4;
    return (*(a8 + 8 * a9))();
  }

  else
  {
    return sub_10014122C(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100136038(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xDB8] + (a4 - 1443455193) - 0x411626A9FC041112;
  v6 = v5 < 0xC83947A6;
  v7 = v5 > STACK[0xDB0] + 3359197094u;
  if (STACK[0xDB0] > 0xFFFFFFFF37C6B859 != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((210 * v7) ^ (LODWORD(STACK[0x624]) - 3190))))();
}

uint64_t sub_1001360DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = v9 + 10;
  v12 = LOWORD(STACK[0xBFC]);
  if (v12 == 30757)
  {
    v15 = STACK[0x624];
    v16 = *(v10 + 1256);
    *(v10 + 872) = v11;
    LODWORD(STACK[0xA30]) = a4;
    STACK[0x648] = v16 + a9 - 0x411626AAC43D58B8;
    return (*(a8 + 8 * (v15 + 2937)))();
  }

  else if (v12 == 49033 || v12 == 44155)
  {
    v14 = STACK[0x624];
    *(v10 + 872) = v11;
    LODWORD(STACK[0xA30]) = a4;
    return (*(a8 + 8 * (v14 - 3140)))();
  }

  else
  {
    return sub_100141364(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1001361DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xCB0] + (a4 - 1443455193) - 0x2DBC30ACBABD0FF6;
  v6 = v5 < 0xC7C2D882;
  v7 = v5 > STACK[0xCA8] + 3351435394u;
  if (STACK[0xCA8] > 0xFFFFFFFF383D277DLL != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((118 * !v7) ^ (LODWORD(STACK[0x624]) + 1230))))();
}

uint64_t sub_100136284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = v9 + 10;
  v12 = LOWORD(STACK[0xC12]);
  if (v12 == 30757)
  {
    v15 = LODWORD(STACK[0x624]) ^ 0x152F;
    v16 = LODWORD(STACK[0x624]) - 2103;
    v17 = *(v10 + 1080);
    *(v10 + 560) = v11;
    LODWORD(STACK[0x814]) = a4;
    return (*(a8 + 8 * ((39 * ((v15 ^ (v17 + a9 - 0x2DBC30AD827FE878 == 0)) & 1)) ^ v16)))();
  }

  else if (v12 == 49033 || v12 == 44155)
  {
    v14 = STACK[0x624];
    *(v10 + 560) = v11;
    return (*(a8 + 8 * (v14 + 1230)))(a1, a2, a3, a4, a5, 68545951);
  }

  else
  {
    return sub_1001371CC(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1001362DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xC90] + (a4 - 1443455193) - 0xFEA3CCB4FE86F8ALL;
  v6 = v5 < 0xE01A0569;
  v7 = v5 > STACK[0xC88] + 3759801705u;
  if (STACK[0xC88] > 0xFFFFFFFF1FE5FA96 != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * (!v7 | (2 * !v7) | (LODWORD(STACK[0x624]) + 4902))))();
}

uint64_t sub_100136390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = v9 + 10;
  v12 = LOWORD(STACK[0xC10]);
  if (v12 == 30757)
  {
    v15 = STACK[0x624];
    v16 = *(v10 + 648) + a9 - 0xFEA3CCC300274F3;
    *(v10 + 856) = v11;
    LODWORD(STACK[0x814]) = a4;
    return (*(a8 + 8 * ((26 * (((v15 - 17) ^ (v16 == 0)) & 1)) ^ (v15 + 4794))))();
  }

  else if (v12 == 49033 || v12 == 44155)
  {
    v14 = STACK[0x624];
    *(v10 + 856) = v11;
    LODWORD(STACK[0x814]) = a4;
    return (*(a8 + 8 * (v14 - 785)))();
  }

  else
  {
    return sub_100136E3C(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1001363E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xD10] + (a4 - 1443455193) - 0x76B941D7421D3D48;
  v6 = v5 < 0x56C4B044;
  v7 = v5 > STACK[0xD08] + 1455730756;
  if (STACK[0xD08] > 0xFFFFFFFFA93B4FBBLL != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((v7 | (8 * v7)) ^ (LODWORD(STACK[0x624]) - 2925))))();
}

uint64_t sub_100136498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = v9 + 10;
  v12 = LOWORD(STACK[0xC6C]);
  if (v12 == 30757)
  {
    v15 = STACK[0x624];
    v16 = v10[47];
    v10[19] = v11;
    LODWORD(STACK[0xA7C]) = a4;
    v10[39] = v16 + a9 - 0x76B941D798E1ED8CLL;
    return (*(a8 + 8 * (v15 - 1422)))();
  }

  else if (v12 == 49033 || v12 == 44155)
  {
    v14 = STACK[0x624];
    v10[19] = v11;
    LODWORD(STACK[0xA7C]) = a4;
    return (*(a8 + 8 * (v14 - 2918)))();
  }

  else
  {
    return sub_10013B3EC(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1001364F4()
{
  v1 = LODWORD(STACK[0x624]) - 3463;
  v2 = LOWORD(STACK[0xC56]);
  STACK[0x8D8] = STACK[0xC58];
  return (*(v0 + 8 * ((10036 * (v2 == 49033)) ^ v1)))();
}

uint64_t sub_100136534(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0x624];
  LODWORD(STACK[0x83C]) = a4;
  return (*(v4 + 8 * (v5 + 3813)))();
}

uint64_t sub_1001365F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 - 0x510808E226CB148CLL) = STACK[0x83C];
  *(a6 + v7) = v8 + v6 + 118 - 4813;
  return (*(v9 + 8 * v6))(a1, a2, a3, a4, a5, 68588956);
}

uint64_t sub_100136630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(STACK[0x624]) + 1277;
  v9 = LOWORD(STACK[0xC3E]);
  STACK[0xAE8] = STACK[0xC40];
  return (*(v7 + 8 * ((13461 * (v9 == 49033)) ^ v8)))(a1, a2, a3, a4, a5, 68545951, a7, v7);
}

uint64_t sub_10013667C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x624];
  LODWORD(STACK[0x954]) = a4;
  return (*(a8 + 8 * (v8 - 1603)))();
}

uint64_t sub_10013669C()
{
  v1 = STACK[0x624];
  v2 = LOWORD(STACK[0xC2E]);
  STACK[0x698] = STACK[0xC30];
  return (*(v0 + 8 * ((v1 - 2893) ^ (16 * (v2 != 49033)))))();
}

uint64_t sub_100136724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>)
{
  *(v8 + 832) = *(v8 + 1384);
  v10 = LODWORD(STACK[0xC14]) != 1443455193 || LOWORD(STACK[0xC1A]) != 30757;
  return (*(a7 + 8 * ((v10 * ((a8 + 3271) ^ 0x1F7B)) ^ (a8 + 1178))))(a1, a2, a3, a4, a5, a6, 0x5A0411E37F4B9882);
}

uint64_t sub_100136790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = STACK[0xC1C];
  v12[108] = v8;
  LODWORD(STACK[0xD60]) = v11;
  LOWORD(STACK[0xD66]) = v10;
  LODWORD(STACK[0xD68]) = v13;
  LODWORD(STACK[0xD6C]) = STACK[0x91C];
  v12[215] = v12[11];
  v12[78] = v12[133];
  return (*(a8 + 8 * (((683 * (((v9 - 6021) | 0x481) ^ 0xC93) - 1282) * (v8 != a7)) ^ v9)))();
}

uint64_t sub_100136854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0xFF4)))(32);
  v10 = STACK[0x628];
  STACK[0x878] = v9 + 0x51CE20ABD81C933BLL;
  return (*(v10 + 8 * (((v9 != 0) * ((166 * (v8 ^ 0x2668)) ^ 0x1228)) ^ v8)))();
}

uint64_t sub_1001368CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (v9 - 8605) | 0x1A05;
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(v11 + 1728) = v10;
  *(a1 + 16) = v8 + 540060154;
  v14 = (*(a8 + 8 * (v13 ^ 0x375C)))(v8 - 1443455193 + ((v13 - 871194607) & 0x33ED53DFu) - 4769 - 35);
  v15 = STACK[0x628];
  *(a1 + 24) = v14;
  return (*(v15 + 8 * (((16 * (v14 == 0)) | (32 * (v14 == 0))) ^ v13)))();
}

uint64_t sub_100136BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 ^ 0x2E60)))((v8 ^ 0xD76) - 1443462787 + LODWORD(STACK[0x814]) + 29 * (v8 ^ 0x747u) + 69);
  v11 = STACK[0x628];
  STACK[0xCB8] = v10 + 0x2B1A0449E8A6C928;
  if (v10)
  {
    v12 = 68588956;
  }

  else
  {
    v12 = a6;
  }

  LODWORD(STACK[0xCC4]) = v12;
  return (*(v11 + 8 * (((v10 == 0) | (4 * (v10 == 0))) ^ v8)))();
}

uint64_t sub_100136D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a8 + 8 * (v8 + 6596)))((LODWORD(STACK[0x814]) - 1443455193));
  v12 = STACK[0x628];
  STACK[0xC98] = v11 + 0x2B1A0449E8A6C928;
  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = a6;
  }

  LODWORD(STACK[0xCA4]) = v13;
  return (*(v12 + 8 * (((v11 != 0) * (((v8 + 715) ^ 0x46) + ((v8 + 715) | 0x46) - 9503)) ^ v8)))();
}

uint64_t sub_100136E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x624];
  *(v5 + 280) = *(v5 + 1504);
  return (*(STACK[0x628] + 8 * (v6 - 1701)))(a1, a2, a3, a4, a5, LODWORD(STACK[0xCA4]), 0x5A0411E37F4B9882);
}

uint64_t sub_100136E9C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  *(v2 + 280) = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x814]) = 1443455193;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100136F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *(v9 + 352) = 0x51CE20ABD81C933BLL;
  *(v9 + 560) = 0x2DBC30AD827FE882;
  return (*(a7 + 8 * (((a8 == a6) ^ (v8 + 34 + v8 - 54 + 1)) & 1 ^ v8)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100137018@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(*(v2 + 352) - 0x51CE20ABD81C9323);
  *(v2 + 1080) = v3;
  return (*(a1 + 8 * ((199 * (v3 != 0)) ^ a2)))();
}

uint64_t sub_100137088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = a7 - 3013;
  v10 = ((((a7 - 1430) | 0x208) - 1983519476) ^ ((a7 - 5532) | 0x22Du)) + v7;
  v8[190] = v10;
  v11 = v8[70];
  v8[191] = v11;
  return (*(a6 + 8 * ((8060 * ((v10 - v11 + 0x2DBC30AD827FE882) > 9)) ^ v9)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100137148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x624];
  *(v5 + 280) = *(v5 + 1536);
  return (*(STACK[0x628] + 8 * (v6 - 2794)))(a1, a2, a3, a4, a5, LODWORD(STACK[0xCC4]));
}

uint64_t sub_1001371CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 280) = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x814]) = 1443455193;
  return (*(a8 + 8 * (v8 - 389)))();
}

uint64_t sub_1001372A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W8>)
{
  v8 = a7 + 8836;
  v9 = (a7 + 8836) ^ 0x3AAF;
  v10 = (2 * (a7 + 8836)) ^ 0x4654;
  v11 = STACK[0xB48];
  STACK[0xBC0] = STACK[0xB48];
  return (*(v7 + 8 * (((v11 == 0x1138F6A92264F486) * (v9 - 10589 + v10)) ^ v8)))(a1, a2, a3, a4, a5, 68545945, a6, v7);
}

uint64_t sub_100137308@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x1138F6A92264F47ELL);
  *(v3 + 1008) = 0x51CE20ABD81C933BLL;
  STACK[0x698] = 0x11E7A1DCF3B6176BLL;
  return (*(a1 + 8 * (((v4 == 0x5A0411E37F4B9882) * (((v2 - 1311415960) & 0x4E2A8957) - 309)) | v2)))();
}

uint64_t sub_100137440@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0xAA8] - 0x51CE20ABD81C9323);
  STACK[0xA60] = v2;
  return (*(v1 + 8 * ((((149 * (((a1 - 8362) | 0x1284) ^ 0x12C3)) ^ 0x606) * (v2 == 0)) ^ a1)))();
}

uint64_t sub_1001374B8()
{
  v3 = ((v0 - 1177) ^ 0x89C5F7CF) + v1;
  STACK[0xCC8] = v3;
  v4 = STACK[0x698];
  STACK[0xCD0] = STACK[0x698];
  return (*(v2 + 8 * (((v3 - v4 + 0x11E7A1DCF3B6176BLL > 9) * (((v0 - 1937) | 0x12CE) - 2558)) ^ v0)))();
}

uint64_t sub_10013755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0xBC0] - 0x1138F6A92264F486);
  STACK[0x728] = 0x51CE20ABD81C933BLL;
  STACK[0xAE8] = 0x6B490618034E7B0BLL;
  return (*(v7 + 8 * (((v9 == 0x5A0411E37F4B9882) * (((v8 - 4549) | 0x46) ^ 0x10F)) ^ (v8 + 1213))))(a1, a2, a3, a4, a5, 68545945, a7, v7);
}

uint64_t sub_100137680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 112) - 0x51CE20ABD81C9323);
  *(v9 + 96) = v10;
  return (*(a8 + 8 * (((((v8 + 53) ^ (v10 == 0)) & 1) * (2407 * (v8 ^ 0x2694) - 4805)) | v8)))();
}

uint64_t sub_1001376F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v9 = v7 - 1983515337 + ((a7 - 1277) ^ 0x11CEu) - 768;
  v8[196] = v9;
  v10 = v8[134];
  v8[197] = v10;
  return (*(a6 + 8 * ((13012 * ((0x6B490618034E7B0BLL - v10 + v9) > 9)) ^ a7)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_1001377EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v7 = STACK[0xB48];
  STACK[0x868] = STACK[0xB48];
  return (*(v6 + 8 * (((v7 != 0x1138F6A92264F486) * (((a6 ^ 0x1B3F) + 7655) ^ 0x276A)) ^ a6)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100137848()
{
  v3 = *(v1 - 0x1138F6A92264F47ELL);
  STACK[0x6F0] = 0x51CE20ABD81C933BLL;
  STACK[0x8D8] = 0xB4DE6E2F32CE796;
  return (*(v2 + 8 * (((v3 != 0x5A0411E37F4B9882) * (((v0 - 9690) ^ 0xFFFFEC11) + v0 - 5248)) ^ v0)))();
}

uint64_t sub_100137954()
{
  v2 = *(STACK[0x6F0] - 0x51CE20ABD81C9323);
  STACK[0x820] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((7 * (v0 ^ 0x7FF)) ^ (v0 - 548))) ^ v0)))();
}

uint64_t sub_1001379BC@<X0>(int a1@<W8>)
{
  v3 = (v1 - 1983515337);
  STACK[0xCE8] = v3;
  v4 = STACK[0x8D8];
  STACK[0xCF0] = STACK[0x8D8];
  return (*(v2 + 8 * ((1023 * (v3 - v4 + 0xB4DE6E2F32CE796 > ((166 * (a1 ^ 0x55A) - 4686) | 0x252u) - 713)) ^ a1)))();
}

uint64_t sub_100137A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(STACK[0x868] - 0x1138F6A92264F486);
  STACK[0xB98] = 0x51CE20ABD81C933BLL;
  STACK[0x888] = 0x628D6526DD9E5C4DLL;
  return (*(v5 + 8 * (((v7 != 0x5A0411E37F4B9882) * (((v6 + 450041135) & 0xE52CD95E) + 44)) ^ (v6 + 2596))))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100137B9C()
{
  v1 = LODWORD(STACK[0x624]) ^ 0xD67;
  v2 = *(STACK[0xB98] - 0x51CE20ABD81C9323);
  STACK[0xB90] = v2;
  return (*(v0 + 8 * (((v2 != 0) * ((v1 - 369115050) & 0x160032CE ^ 0x12BE)) ^ v1)))();
}

uint64_t sub_100137C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v8 = v6 - 435;
  v9 = (((v8 - 2994) | 0x8A) ^ 0x89C5E7F9) + a6;
  STACK[0xCF8] = v9;
  v10 = STACK[0x888];
  STACK[0xD00] = STACK[0x888];
  return (*(v7 + 8 * (((0x628D6526DD9E5C4DLL - v10 + v9 > 9) * (((v8 + 1327310065) & 0xB0E2BFFB) + 12858)) ^ v8)))(a1, a2, a3, a4, a5, 68545950);
}

uint64_t sub_100137CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x9B0]) = a6;
  STACK[0x6E0] = *(v6 + 8 * (v7 - 4445));
  return (*(v6 + 8 * ((v7 + 5388) ^ (v7 - 4445) ^ 0x2A8E)))();
}

uint64_t sub_100137D48@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = v3[201];
  STACK[0x440] = ((v4 - 0x628D6526DD9E5C49) ^ 0xD8FD7EC3FE7FD375) + 0x7F9BEFFFFBE46DEFLL + ((2 * (v4 - 0x628D6526DD9E5C49)) & 0xB1FAFD87FCFFA6EALL);
  v5 = v3[203] - 0x76B941D798E1ED92;
  STACK[0x430] = (v5 ^ 0x7BDF7FFBFB65EDF7) - 0x234611380101AC93 + ((2 * v5) & 0xF7BEFFF7F6CBDBEELL);
  v6 = v3[199];
  STACK[0x420] = v6;
  STACK[0x410] = ((v6 - 0xB4DE6E2F32CE792) ^ 0x7DD96ECBFFF56B6ELL) - 0x2540000805912A0ALL + ((2 * (v6 - 0xB4DE6E2F32CE792)) & 0xFBB2DD97FFEAD6DCLL);
  v7 = v3[197];
  STACK[0x400] = v7;
  STACK[0x3F0] = ((v7 - 0x6B490618034E7B07) ^ 0xFFB97FFBFAEEE1ECLL) + 0x58DFEEC7FF755F78 + ((2 * (v7 - 0x6B490618034E7B07)) & 0xFF72FFF7F5DDC3D8);
  v8 = v3[195];
  STACK[0x3E0] = v8;
  STACK[0x3D0] = ((v8 - 0x11E7A1DCF3B61767) ^ 0x7AFBEEE7FF754D76) - 0x2262802405110C12 + ((2 * (v8 - 0x11E7A1DCF3B61767)) & 0xF5F7DDCFFEEA9AECLL);
  v9 = v3[212];
  STACK[0x4E0] = v9;
  STACK[0x3C0] = ((v9 - 0xDC2FE20D517D743) ^ 0x5AFDEFDBFB7661FELL) - 0x26481180112209ALL + ((2 * (v9 - 0xDC2FE20D517D743)) & 0xB5FBDFB7F6ECC3FCLL);
  v10 = v3[191] - 0x2DBC30AD827FE87ELL;
  STACK[0x3B0] = (v10 ^ 0x79DFEFEBFEFEE5F4) - 0x21468128049AA490 + ((2 * v10) & 0xF3BFDFD7FDFDCBE8);
  v11 = v3[187] - 0xFEA3CCC300274F9;
  STACK[0x390] = (v11 ^ 0x5ABB6FD3FFEDF177) - 0x22201100589B013 + ((2 * v11) & 0xB576DFA7FFDBE2EELL);
  v12 = v3[220] - 0x2BA8F835E94EE051;
  STACK[0x380] = (v12 ^ 0x7EDF6FFBFA6775F7) - 0x2646013800033493 + ((2 * v12) & 0xFDBEDFF7F4CEEBEELL);
  v13 = v3[222] - 0x1844342EE82B2205;
  STACK[0x370] = (v13 ^ 0x7D9FEEF3FBE477F6) - 0x2506803001803692 + ((2 * v13) & 0xFB3FDDE7F7C8EFECLL);
  v14 = v3[224] - 0x411626AAC43D58BELL;
  STACK[0x360] = (v14 ^ 0x5D9DEEFFFFFDC7E7) - 0x504803C05998683 + ((2 * v14) & 0xBB3BDDFFFFFB8FCELL);
  v15 = v3[226] - 0xCD7A75C2967D6A7;
  STACK[0x350] = (v15 ^ 0x7BBD6EFFFE7D45E5) - 0x2324003C04190481 + ((2 * v15) & 0xF77ADDFFFCFA8BCALL);
  v16 = v3[228];
  STACK[0x340] = v16;
  STACK[0x330] = ((v16 - 0x298D63449789F37ELL) ^ 0x5CFDEEDBFAF4D5FCLL) - 0x464801800909498 + ((2 * (v16 - 0x298D63449789F37ELL)) & 0xB9FBDDB7F5E9ABF8);
  STACK[0x320] = ((v4 - 0x628D6526DD9E5C47) ^ 0xEFFFFC79F40EDEF4) + 0x7F12E7FFDFFD7DE0 + ((2 * (v4 - 0x628D6526DD9E5C47)) & 0xDFFFF8F3E81DBDE8);
  STACK[0x300] = ((v5 + 2) ^ 0xEF36FE7DFCCE7EF6) + 0x7FDBE5FBD73DDDDELL + ((2 * (v5 + 2)) & 0xDE6DFCFBF99CFDECLL);
  STACK[0x2C0] = ((v6 - 0xB4DE6E2F32CE790) ^ 0xFF9BEF7FF77EDCF6) + 0x6F76F4F9DC8D7FDELL + ((2 * (v6 - 0xB4DE6E2F32CE790)) & 0xFF37DEFFEEFDB9ECLL);
  STACK[0x2B0] = ((v7 - 0x6B490618034E7B05) ^ 0xFF36FC7BF5AF5DD4) + 0x6FDBE7FDDE5CFF00 + ((2 * (v7 - 0x6B490618034E7B05)) & 0xFE6DF8F7EB5EBBA8);
  STACK[0x290] = ((v8 - 0x11E7A1DCF3B61765) ^ 0xEF9BECFDFF7C5DF7) + 0x7F76F77BD48FFEDDLL + ((2 * (v8 - 0x11E7A1DCF3B61765)) & 0xDF37D9FBFEF8BBEELL);
  STACK[0x280] = ((v10 + 2) ^ 0x7F7EECFBDD6F5FD7) - 0x106C088209630303 + ((2 * (v10 + 2)) & 0xFEFDD9F7BADEBFAELL);
  STACK[0x270] = ((v9 - 0xDC2FE20D517D741) ^ 0x7F97F57BDC7EFFD7) - 0x108511020872A303 + ((2 * (v9 - 0xDC2FE20D517D741)) & 0xFF2FEAF7B8FDFFAELL);
  STACK[0x260] = ((v11 + 2) ^ 0x7FDAEDFFFEDFDFF6) - 0x10C809862AD38322 + ((2 * (v11 + 2)) & 0xFFB5DBFFFDBFBFECLL);
  STACK[0x250] = ((v12 + 2) ^ 0xFF37FC79F65FDFD6) + 0x6FDAE7FFDDAC7CFELL + ((2 * (v12 + 2)) & 0xFE6FF8F3ECBFBFACLL);
  STACK[0x240] = ((v13 + 2) ^ 0xEFB7E47DFE1C7CF4) + 0x7F5AFFFBD5EFDFE0 + ((2 * (v13 + 2)) & 0xDF6FC8FBFC38F9E8);
  STACK[0x230] = ((v14 + 2) ^ 0xFFD3FCFBFE4C5FD5) + 0x6F3EE77DD5BFFCFFLL + ((2 * (v14 + 2)) & 0xFFA7F9F7FC98BFAALL);
  STACK[0x480] = v4;
  STACK[0x220] = ((v15 + 2) ^ 0x6F7FEE79D75F7CD5) - 0x6D0A0003532001 + ((2 * (v15 + 2)) & 0xDEFFDCF3AEBEF9AALL);
  STACK[0x210] = ((v16 - 0x298D63449789F37CLL) ^ 0x6FFBE67FDC8F7DF4) - 0xE9020608832120 + ((2 * (v16 - 0x298D63449789F37CLL)) & 0xDFF7CCFFB91EFBE8);
  v17 = *(v2 + 8 * a2);
  STACK[0x610] = v3[155];
  STACK[0x550] = v3[47];
  STACK[0x5E0] = v3[45];
  STACK[0x5D0] = v3[12];
  STACK[0x5C0] = v3[117];
  STACK[0x600] = v3[77];
  STACK[0x540] = v3[135];
  STACK[0x530] = v3[81];
  STACK[0x520] = STACK[0x670];
  STACK[0x510] = v3[87];
  STACK[0x500] = v3[157];
  STACK[0x4F0] = v3[75];
  STACK[0x5F0] = v3[154];
  LODWORD(STACK[0x580]) = LOWORD(STACK[0xC6E]);
  LODWORD(STACK[0x5A0]) = LOWORD(STACK[0xC56]);
  LODWORD(STACK[0x5B0]) = LOWORD(STACK[0xC3E]);
  LODWORD(STACK[0x590]) = LOWORD(STACK[0xC2E]);
  LODWORD(STACK[0x570]) = LOWORD(STACK[0xC1A]);
  LODWORD(STACK[0x560]) = LOWORD(STACK[0xBEE]);
  STACK[0x200] = v3[200];
  v18 = v3[211];
  STACK[0x4D0] = v18;
  STACK[0x490] = v18 + 3949354208u;
  return v17(0x84BECE436F5ED46ALL, 0xA8FE1D94DBD82436, 0x5619122FEA32E37, a1, 0x1E013142A69E8FD8);
}

uint64_t sub_100138A54@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = v2 + 2157;
  v5 = (v2 + 109) ^ (v2 + 56);
  v6 = (*(a1 + 8 * ((v2 + 2157) ^ 0x3412)))(a2 - 0x61CEF89FDDA89DF2);
  return (*(STACK[0x628] + 8 * ((104 * (((v3 == 0x669619EB6CDC1E4ALL) ^ v5) & 1)) ^ v4)))(v6);
}

uint64_t sub_100138B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 & 0xBD4383FF;
  v12 = v10[18];
  v13 = STACK[0x90C];
  v14 = *(a8 + 8 * ((v11 + 69) ^ v11));
  LODWORD(STACK[0xE38]) = v11 + 1301;
  LODWORD(STACK[0xE3C]) = v11;
  v10[241] = STACK[0x2D8];
  v10[242] = 0;
  v10[243] = v12;
  LODWORD(STACK[0xE58]) = v13;
  return v14(a1, a2, a3, a4, a5, a6, v9);
}

uint64_t sub_100138BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = STACK[0xE58];
  LODWORD(STACK[0xE5C]) = STACK[0xE58];
  v9[245] = v9[243];
  v9[246] = v9[242];
  v11 = v9[241];
  v9[247] = v11;
  v12 = SLODWORD(STACK[0xE3C]);
  v13 = STACK[0xE38];
  LODWORD(STACK[0xE7C]) = STACK[0xE38];
  LODWORD(STACK[0xE80]) = v13 + 7920;
  LODWORD(STACK[0xE84]) = (v13 + 7920) ^ 0x3533;
  v14 = *(a8 + 8 * v12);
  v9[250] = v14;
  v9[128] = v14;
  v9[100] = v11;
  LODWORD(STACK[0x85C]) = v10;
  v15 = v9[149];
  v16 = &a9 + v15 - 0x3A611B21EA74C9C6;
  v9[159] = v16;
  v15 += 32;
  v9[251] = v15;
  v9[149] = v15;
  STACK[0x650] = v9[245];
  STACK[0x648] = 0;
  v9[127] = 0;
  v9[130] = 0;
  LODWORD(STACK[0x65C]) = 1443455193;
  LODWORD(STACK[0x880]) = 0;
  STACK[0x668] = 0x61CEF89FDDA89DF2;
  v9[122] = 0;
  LODWORD(STACK[0x84C]) = 1443455193;
  v9[232] = v16;
  LOBYTE(STACK[0xDF7]) = 0;
  v9[230] = 32;
  LODWORD(v16) = LODWORD(STACK[0xE7C]) + 8246;
  v9[229] = *(a8 + 8 * (v13 ^ 0x203D));
  return (*(a8 + 8 * v16))();
}

uint64_t sub_100138D64@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0x680] = *(a1 + 8 * v3);
  v7[10] = v2;
  LODWORD(STACK[0x76C]) = v4;
  v7[53] = a2;
  v7[55] = 0x720E0F4AD732A24ALL;
  LODWORD(STACK[0xA38]) = 1443455193;
  STACK[0x688] = 0x4DC5C22F5BDB8B24;
  v7[30] = 0;
  v8 = (*(a1 + 8 * (v5 ^ 0x323D)))(16);
  v9 = STACK[0x628];
  STACK[0x958] = v8 + v6;
  return (*(v9 + 8 * (((((v5 ^ (v8 == 0)) & 1) == 0) * (v5 ^ 0x1BCF)) ^ v5)))();
}

uint64_t sub_100138E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  return (*(a8 + 8 * (v8 ^ 0xAFF)))();
}

uint64_t sub_100138EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v8 = STACK[0x678];
  *(v7 + 1056) = STACK[0x678];
  return (*(a6 + 8 * (((((v8 == 0x1138F6A92264F486) ^ ((a7 ^ 0x5B) + 1)) & 1) * ((a7 + 386877083) & 0xE8F0AE7D ^ 0x435)) ^ a7)))(a1, a2, a3, a4, a5, 68545945);
}

uint64_t sub_100139068@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  if (LODWORD(STACK[0xB1C]))
  {
    v2 = ((a2 + 1470) ^ 0xF4568C87 ^ LODWORD(STACK[0xB1C])) + 264239005 + ((2 * LODWORD(STACK[0xB1C])) & 0xE8AD3BFE) == 68588956;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(a1 + 8 * ((4852 * v3) ^ a2)))();
}

uint64_t sub_10013918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x440]) = v8;
  v10 = v8 - ((v9 + 7150379 + (v8 << (((v9 + 6) | 0x44) - 108))) & 0x6FEA88) + 707695723;
  return (*(a8 + 8 * ((116 * (((2 * v10) & 0xFF3FCBF6 ^ 0x2FCA80) + (v10 ^ 0xFFA810BF) - 68296736 != 2072888795)) ^ v9)))();
}

uint64_t sub_1001393A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(STACK[0x628] + 8 * ((27 * (((v5 < 0x10) ^ (v4 + 34)) & 1)) ^ (v4 + 7100)));
  STACK[0x430] = a4;
  LODWORD(STACK[0x420]) = v5;
  return v6();
}

uint64_t sub_100139414@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, unint64_t a9@<X8>)
{
  LODWORD(STACK[0x3E0]) = v14;
  STACK[0x3C0] = a4 - 15;
  STACK[0x610] = *(STACK[0x628] + 8 * a7);
  LODWORD(STACK[0x410]) = v11 & 0xFFFFFFF0;
  LODWORD(STACK[0x3B0]) = -(v11 & 0xFFFFFFF0);
  LODWORD(STACK[0x400]) = a8;
  LODWORD(STACK[0x3F0]) = v12;
  STACK[0x3D0] = a1;
  *&STACK[0x5D0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x5B0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x600] = vdupq_n_s64(v10);
  *&STACK[0x5A0] = vdupq_n_s64(v13);
  *&STACK[0x590] = vdupq_n_s64(v9);
  *&STACK[0x580] = vdupq_n_s64(a6);
  *&STACK[0x570] = vdupq_n_s64(a5);
  *&STACK[0x560] = vdupq_n_s64(0x5EEE4453CA35DABAuLL);
  *&STACK[0x550] = vdupq_n_s64(a3);
  *&STACK[0x540] = vdupq_n_s64(v16);
  *&STACK[0x530] = vdupq_n_s64(a2);
  *&STACK[0x520] = vdupq_n_s64(0xC73EF603490C4402);
  *&STACK[0x510] = vdupq_n_s64(v17);
  *&STACK[0x500] = vdupq_n_s64(0x9C148812C3BFA1D5);
  *&STACK[0x4F0] = vdupq_n_s64(v15);
  *&STACK[0x4E0] = vdupq_n_s64(0x68134BD320364377uLL);
  *&STACK[0x4D0] = vdupq_n_s64(a9);
  *&STACK[0x490] = vdupq_n_s64(0xB581C077348D623CLL);
  *&STACK[0x480] = vdupq_n_s64(0xF03E4241B0D5EBFELL);
  *&STACK[0x5C0] = xmmword_1002A9AB0;
  return (STACK[0x610])();
}

uint64_t sub_100139624(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, int8x16_t a11, double a12, int64x2_t a13, double a14, int8x16_t a15, int8x16_t a16)
{
  v41 = (v26 + v29 + 16);
  *&v42 = v16 + v41;
  *(&v42 + 1) = v16 + (v28 + v29 + 16);
  *&STACK[0x5F0] = v42;
  v43.i64[0] = v16 + (v17 + v29 + 16);
  v43.i64[1] = v16 + (v25 + v29 + 16);
  v44.i64[0] = v16 + (a6 + v29 + 16);
  v44.i64[1] = v16 + (a4 + v29 + 16);
  v45.i64[0] = v16 + (v18 + v29 + 16);
  v45.i64[1] = v16 + (v20 + v29 + 16);
  v46.i64[0] = v16 + (a5 + v29 + 16);
  v46.i64[1] = v16 + (a3 + v29 + 16);
  v47 = *&STACK[0x5D0];
  v48 = vandq_s8(v46, *&STACK[0x5D0]);
  v49 = vandq_s8(v45, *&STACK[0x5D0]);
  v50 = vandq_s8(v44, *&STACK[0x5D0]);
  v51 = vandq_s8(v43, *&STACK[0x5D0]);
  v52 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v56 = vandq_s8(vaddq_s64(vaddq_s64(v55, v55), *&STACK[0x600]), v32);
  v57 = vandq_s8(vaddq_s64(vaddq_s64(v54, v54), *&STACK[0x600]), v32);
  v58 = vandq_s8(vaddq_s64(vaddq_s64(v53, v53), *&STACK[0x600]), v32);
  v59 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v52, v52), *&STACK[0x600]), v32), v52);
  *&STACK[0x5E0] = v59;
  v60 = vsubq_s64(v58, v53);
  v61 = vaddq_s64(vsubq_s64(v56, v55), a13);
  v62 = vaddq_s64(vsubq_s64(v57, v54), a13);
  v63 = *&STACK[0x580];
  v64 = veorq_s8(v62, *&STACK[0x580]);
  v65 = veorq_s8(v61, *&STACK[0x580]);
  v66 = veorq_s8(v61, a15);
  v67 = veorq_s8(v62, a15);
  v59.i64[0] = v16 + (v24 + v29 + v22 + 16);
  *&STACK[0x610] = v59;
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), a16);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), a16);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70);
  v74 = *&STACK[0x530];
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), v30), v73), v31), *&STACK[0x530]);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v30), v72), v31), *&STACK[0x530]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77), v34);
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78), v34);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v83 = veorq_s8(v79, v80);
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = vaddq_s64(v84, v82);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, v35), vorrq_s8(v85, v33)), v33), v36);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v86, v35), vorrq_s8(v86, v33)), v33), v36);
  v89 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v90);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v93, v93), v37), v93), v38), v39);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), v37), v92), v38), v39);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v97 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v97);
  v100 = veorq_s8(vaddq_s64(v98, v96), v40);
  v101 = veorq_s8(v99, v40);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v103 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v104 = veorq_s8(v100, v102);
  v105 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v102.i64[0] = v16 + (v21 + v29 + 16);
  v102.i64[1] = v16 + (a8 + v29 + 16);
  v107 = vaddq_s64(v60, a13);
  v108 = *&STACK[0x480];
  v206.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v106, v104), *&STACK[0x480]), vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), a11)));
  v206.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v105, v103), *&STACK[0x480]), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), a11)));
  v109 = veorq_s8(v107, v63);
  v110 = veorq_s8(v107, a15);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), a16);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v30), v113), v31), *&STACK[0x530]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v34);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, v35), vorrq_s8(v118, v33)), v33), v36);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v37), v121), v38), v39);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v40);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v124.i64[0] = v16 + (v19 + v29 + 16);
  v127 = *&STACK[0x610];
  v127.i64[1] = v16 + (v27 + v29 + 16);
  *&STACK[0x610] = v127;
  v124.i64[1] = v16 + (a1 + v29 + 16);
  v128 = vaddq_s64(v126, v125);
  v129 = vandq_s8(v124, v47);
  v130 = vaddq_s64(*&STACK[0x5E0], a13);
  v206.val[1] = vshlq_u64(veorq_s8(v128, v108), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), a11)));
  v131 = veorq_s8(v130, v63);
  v132 = veorq_s8(v130, a15);
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), a16);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v135, v135), v30), v135), v31), v74);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v34);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v140, v35), vorrq_s8(v140, v33)), v33), v36);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v37), v143), v38), v39);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v40);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v149 = vandq_s8(v102, v47);
  v150 = vaddq_s64(v148, v147);
  v151 = vandq_s8(*&STACK[0x5F0], v47);
  v206.val[0] = vshlq_u64(veorq_s8(v150, v108), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), a11)));
  v152 = vandq_s8(v127, v47);
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v157 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v153, v153), *&STACK[0x600]), v32), v153);
  v158 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v156, v156), *&STACK[0x600]), v32), v156), a13);
  v159 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v155, v155), *&STACK[0x600]), v32), v155), a13);
  v155.i64[0] = vqtbl4q_s8(v206, *&STACK[0x5C0]).u64[0];
  v206.val[0] = veorq_s8(v159, v63);
  v206.val[1] = veorq_s8(v158, v63);
  v160 = veorq_s8(v158, a15);
  v206.val[2] = veorq_s8(v159, a15);
  v206.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[1], 0x38uLL), v206.val[1], 8uLL), v160), a16);
  v206.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[0], 0x38uLL), v206.val[0], 8uLL), v206.val[2]), a16);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v161 = veorq_s8(v206.val[0], vsraq_n_u64(vshlq_n_s64(v206.val[2], 3uLL), v206.val[2], 0x3DuLL));
  v206.val[2] = veorq_s8(v206.val[1], v206.val[3]);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v206.val[0], 0x38uLL), v206.val[0], 8uLL);
  v206.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[1], 0x38uLL), v206.val[1], 8uLL), v206.val[2]);
  v206.val[1] = vaddq_s64(v206.val[3], v161);
  v206.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v206.val[1], v206.val[1]), v30), v206.val[1]), v31), v74);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v206.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v206.val[0], v206.val[0]), v30), v206.val[0]), v31), v74);
  v162 = veorq_s8(v206.val[0], vsraq_n_u64(vshlq_n_s64(v206.val[2], 3uLL), v206.val[2], 0x3DuLL));
  v206.val[2] = veorq_s8(v206.val[1], v206.val[3]);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v206.val[0], 0x38uLL), v206.val[0], 8uLL);
  v206.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[1], 0x38uLL), v206.val[1], 8uLL), v206.val[2]);
  v206.val[1] = veorq_s8(vaddq_s64(v206.val[3], v162), v34);
  v206.val[0] = veorq_s8(v206.val[0], v34);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v163 = veorq_s8(v206.val[0], vsraq_n_u64(vshlq_n_s64(v206.val[2], 3uLL), v206.val[2], 0x3DuLL));
  v206.val[2] = veorq_s8(v206.val[1], v206.val[3]);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v206.val[0], 0x38uLL), v206.val[0], 8uLL);
  v206.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[1], 0x38uLL), v206.val[1], 8uLL), v206.val[2]);
  v206.val[1] = vaddq_s64(v206.val[3], v163);
  v206.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v206.val[0], v35), vorrq_s8(v206.val[0], v33)), v33), v36);
  v206.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v206.val[1], v35), vorrq_s8(v206.val[1], v33)), v33), v36);
  v164 = veorq_s8(v206.val[1], vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v206.val[2] = veorq_s8(v206.val[0], vsraq_n_u64(vshlq_n_s64(v206.val[2], 3uLL), v206.val[2], 0x3DuLL));
  v206.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[0], 0x38uLL), v206.val[0], 8uLL), v206.val[2]);
  v206.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[1], 0x38uLL), v206.val[1], 8uLL), v164);
  v206.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v206.val[1], v206.val[1]), v37), v206.val[1]), v38), v39);
  v206.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v206.val[0], v206.val[0]), v37), v206.val[0]), v38), v39);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v165 = veorq_s8(v206.val[0], vsraq_n_u64(vshlq_n_s64(v206.val[2], 3uLL), v206.val[2], 0x3DuLL));
  v206.val[2] = veorq_s8(v206.val[1], v206.val[3]);
  v206.val[3] = vsraq_n_u64(vshlq_n_s64(v206.val[0], 0x38uLL), v206.val[0], 8uLL);
  v206.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[1], 0x38uLL), v206.val[1], 8uLL), v206.val[2]);
  v206.val[1] = veorq_s8(vaddq_s64(v206.val[3], v165), v40);
  v206.val[0] = veorq_s8(v206.val[0], v40);
  v166 = vaddq_s64(v157, a13);
  v206.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[1], 0x38uLL), v206.val[1], 8uLL), veorq_s8(v206.val[1], vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL))), v108), vnegq_s64(vandq_s8(vshlq_n_s64(v124, 3uLL), a11)));
  v206.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206.val[0], 0x38uLL), v206.val[0], 8uLL), veorq_s8(v206.val[0], vsraq_n_u64(vshlq_n_s64(v206.val[2], 3uLL), v206.val[2], 0x3DuLL))), v108), vnegq_s64(vandq_s8(vshlq_n_s64(v102, 3uLL), a11)));
  v167 = veorq_s8(v166, v63);
  v168 = veorq_s8(v166, a15);
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), a16);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), v30), v171), v31), v74);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v34);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v35), vorrq_s8(v176, v33)), v33), v36);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v179, v179), v37), v179), v38), v39);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v40);
  v183 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v154, v154), *&STACK[0x600]), v32), v154), a13);
  v206.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL))), v108), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5F0], 3uLL), a11)));
  v184 = veorq_s8(v183, v63);
  v185 = veorq_s8(v183, a15);
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), a16);
  v187 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v189 = veorq_s8(v186, v187);
  v190 = vaddq_s64(v188, v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190, v190), v30), v190), v31), v74);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v34);
  v194 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = veorq_s8(v193, v194);
  v197 = vaddq_s64(v195, v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v197, v35), vorrq_s8(v197, v33)), v33), v36);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v200, v200), v37), v200), v38), v39);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), v40);
  v206.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL))), v108), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x610], 3uLL), a11)));
  v203.i64[0] = vqtbl4q_s8(v206, *&STACK[0x5C0]).u64[0];
  v203.i64[1] = v155.i64[0];
  v206.val[0] = vrev64q_s8(*(v23 + v41));
  v206.val[1].i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v206.val[1].i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v204 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v206.val[0], v206.val[0], 8uLL), v206.val[1]), v203));
  *(v16 + v41 - 15) = vextq_s8(v204, v204, 8uLL);
  return (*(STACK[0x628] + 8 * ((73 * (a2 == v29)) ^ a7)))();
}

uint64_t sub_10013A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = *(STACK[0x628] + 8 * v9);
  LODWORD(STACK[0x600]) = v9 - 5219;
  *&STACK[0x610] = xmmword_1002A9AA0;
  return v10(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v7), vdupq_n_s64(v8), vdupq_n_s64(v6), vdupq_n_s64(a6), vdupq_n_s64(0x5EEE4453CA35DABAuLL), vdupq_n_s64(a5));
}

uint64_t sub_10013A380@<X0>(uint64_t a1@<X0>, int a2@<W4>, int a3@<W5>, int a4@<W7>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int64x2_t a8@<Q2>, int8x16_t a9@<Q3>, int64x2_t a10@<Q4>, int8x16_t a11@<Q5>, int8x16_t a12@<Q6>, int8x16_t a13@<Q7>)
{
  v35 = (v15 + v20);
  v36.i64[0] = a1 + v35;
  v36.i64[1] = a1 + (v14 + v20);
  v37.i64[0] = a1 + (v16 + v20);
  v37.i64[1] = a1 + (a3 + v20);
  v38.i64[0] = a1 + (v22 + v20);
  v38.i64[1] = a1 + (v13 + v20);
  v39.i64[0] = a1 + (v17 + v20);
  v39.i64[1] = a1 + (a4 + v20);
  v40 = vandq_s8(v39, a6);
  v41 = vandq_s8(v38, a6);
  v42 = vandq_s8(v37, a6);
  v43 = vandq_s8(v36, a6);
  v44 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v48 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v44, v44), a8), a9), v44);
  v49 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v45, v45), a8), a9), v45);
  v50 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v47, v47), a8), a9), v47), a10);
  v51 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v46, v46), a8), a9), v46), a10);
  v52 = veorq_s8(v51, a11);
  v53 = veorq_s8(v50, a11);
  v54 = veorq_s8(v50, a13);
  v55 = veorq_s8(v51, a13);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), a12);
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), a12);
  v59 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v60 = veorq_s8(v56, v57);
  v61 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = vaddq_s64(v61, v59);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v23), v63), v24), v25);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), v23), v62), v24), v25);
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), v26);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = veorq_s8(v70, v26);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v72);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, v27), vorrq_s8(v77, v28)), v28), v29);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, v27), vorrq_s8(v78, v28)), v28), v29);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v30), v84), v31), v32);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v30), v83), v31), v32);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = veorq_s8(vaddq_s64(v90, v88), v33);
  v93 = veorq_s8(v91, v33);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v99 = vaddq_s64(v49, a10);
  v135.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v98, v96), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a7)));
  v135.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v97, v95), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a7)));
  v100 = veorq_s8(v99, a11);
  v101 = veorq_s8(v99, a13);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), a12);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v23), v104), v24), v25);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v26);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v27), vorrq_s8(v109, v28)), v28), v29);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), v30), v112), v31), v32);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v33);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL)));
  v117 = vaddq_s64(v48, a10);
  v135.val[1] = vshlq_u64(veorq_s8(v116, v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a7)));
  v118 = veorq_s8(v117, a11);
  v119 = veorq_s8(v117, a13);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), a12);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v23), v122), v24), v25);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v26);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v27), vorrq_s8(v127, v28)), v28), v29);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v30), v130), v31), v32);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v33);
  v135.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a7)));
  *(a1 + v35 - 7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v19 + v35)), 0x1B1B1B1B1B1B1B1BLL), *&vqtbl4q_s8(v135, *&STACK[0x610])));
  return (*(a5 + 8 * (((v21 == v20) * a2) ^ v18)))();
}