uint64_t sub_100222928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v23 = (v11 + v9);
  v24 = STACK[0x950] + v23;
  v25 = STACK[0x910] + STACK[0x920] + v23;
  v26 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (0x896A5A8A3375C925 - v26) & v12 | (v26 + a2) & v15;
  v28 = v27 ^ v17;
  v29 = v27 ^ v22;
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x5EEE4453CA35DABALL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v8 - ((v32 + v31) | v8) + ((v32 + v31) | v13)) ^ v18, 8);
  v34 = (v8 - ((v32 + v31) | v8) + ((v32 + v31) | v13)) ^ v18 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ 0xC73EF603490C4402;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xC4318A842864C03;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (a7 | (2 * (v39 + v38))) - (v39 + v38);
  v41 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = (v40 + a8) ^ v14;
  v43 = v42 ^ __ROR8__(v38, 61);
  v44 = (0x240F79117F1F970DLL - v41) & 0xED72F297E808ACF8 | (v41 + a4) & v20;
  v45 = __ROR8__(v44 ^ 0xC5F5F189513C3D42, 8);
  v46 = __ROR8__(v42, 8);
  v44 ^= 0x1A71C6FD563F7AD4uLL;
  v47 = (v45 + v44) ^ a5;
  v48 = __ROR8__(v47, 8);
  v49 = v47 ^ __ROR8__(v44, 61);
  v50 = ((2 * (v48 + v49)) | 0x6604FF7B30B3B3E2) - (v48 + v49);
  v51 = (((2 * (v46 + v43)) & 0x3D50F30F384595A6) - (v46 + v43) - 0x1EA879879C22CAD4) ^ v19;
  v52 = __ROR8__(v51, 8) + (v51 ^ __ROR8__(v43, 61));
  v53 = (v50 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9 ^ __ROR8__(v49, 61);
  v54 = __ROR8__((v50 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9, 8);
  v55 = (((2 * (v54 + v53)) & 0x26C3D91CAAAAC0CCLL) - (v54 + v53) + 0x6C9E1371AAAA9F99) ^ 0xFC8F779185D73647;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (v57 + v56 - ((2 * (v57 + v56)) & 0x8429C13B901A7D44) - 0x3DEB1F6237F2C15ELL) ^ 0xE8E0450D5C8F41CCLL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v21;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xBC2FE40086982889;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  *v25 = (((a1 - ((v64 + v63) | a1) + ((v64 + v63) | 0xE4A245799371E26BLL)) ^ 0x9C8086D4E49D1730) >> (8 * (v25 & 7u))) ^ ((v52 ^ 0xF03E4241B0D5EBFELL) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(v16 + 8 * ((79 * (v11 - 1 == a6)) ^ v10)))();
}

uint64_t sub_1002230DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12 = a1 + a4 - 0x6D14C2605E6645F6;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = ((2 * v13 - 0x481EF222FE3F2E1CLL) & 0xDCF292637B6AEEE2) - v13 - 0x4A69D0203E95E064;
  v15 = __ROR8__(v14 ^ 0xB901B5D0FB7E1934, 8);
  v14 ^= 0x668582A4FC7D5EA2uLL;
  v16 = (v15 + v14) ^ v6;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = *(v8 + 8 * a3);
  v19 = (__ROR8__(v16, 8) + v17) ^ 0x9FC19AABFBDF4258;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x901164E02F7DA9DELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xF3F7DBDA085E5D0ELL) - (v23 + v22) + 0x6041212FBD0D178) ^ 0x2CF0B7826F52AE16;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0xD1F1C0AC37998AEALL) + 0x68F8E0561BCCC575) ^ 0xFAC2E9C199AED09FLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) | 0xE2BBCC865B64A0F6) - (v29 + v28) - 0x715DE6432DB2507BLL) ^ 0xCD720243AB2A78F2;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  *v12 = (((0x40A147771892745ALL - ((v32 + v31) | 0x40A147771892745ALL) + ((v32 + v31) | 0xBF5EB888E76D8BA5)) ^ 0xC77C7B2590817EFELL) >> (8 * (v12 & 7u))) ^ HIBYTE(v4) ^ 0x63;
  v33 = __ROR8__((v12 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = ((v33 - 0x240F79117F1F970ELL) | 0x13AB6A934168D1B5) - ((v33 - 0x240F79117F1F970ELL) | v11) + v11;
  v35 = v34 ^ 0x3B2C698DF85C400FLL;
  v34 ^= 0xE4A85EF9FF5F0799;
  v36 = __ROR8__(v35, 8);
  v37 = (v36 + v34 - ((2 * (v36 + v34)) & 0xEF27830E4C4E4466) - 0x86C3E78D9D8DDCDLL) ^ 0x2FE910ACEC53D261;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0x3B02E78768F7F00CLL) - (v39 + v38) - 0x1D8173C3B47BF806) ^ 0x8240E9684FA4BA5ELL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v42 + v41 - ((2 * (v42 + v41)) & 0xB74DE82257E8BFA4) + 0x5BA6F4112BF45FD2) ^ 0xCBB790F10489F60CLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x923A0997826215EALL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((2 * (v49 + v48)) & 0xF7F04EF2B6E348C6) - (v49 + v48) - 0x7BF827795B71A464) ^ 0x38283C8622167315;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  *(v12 + 1) = (((v10 - ((v52 + v51) | v10) + ((v52 + v51) | 0xFA3DD0C0E2973B74)) ^ 0x821F136D957BCE2FLL) >> (8 * ((v12 + 1) & 7))) ^ BYTE2(v4) ^ 0xB5;
  v53 = __ROR8__((v12 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = -2 - (((v9 - v53) | 0xD3AF7ADB7EE08812) + ((v53 - 0x240F79117F1F970ELL) | 0x2C508524811F77EDLL));
  v55 = __ROR8__(v54 ^ 0xFB2879C5C7D419A8, 8);
  v54 ^= 0x24AC4EB1C0D75E3EuLL;
  v56 = (((2 * (v55 + v54)) & 0x748754D312A22E04) - (v55 + v54) - 0x3A43AA6989511703) ^ 0x1DC684BDBCDA18AFLL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x9FC19AABFBDF4258;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (0xC63C7FA5A89F060DLL - ((v60 + v59) | 0xC63C7FA5A89F060DLL) + ((v60 + v59) | 0x39C3805A5760F9F2)) ^ 0xA9D2E4BA781D502CLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = __ROR8__((((2 * (v63 + v62)) | 0xA79BDD206F226E2CLL) - (v63 + v62) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878, 8);
  v65 = (((2 * (v63 + v62)) | 0xA79BDD206F226E2CLL) - (v63 + v62) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878 ^ __ROR8__(v62, 61);
  v66 = (v64 + v65) ^ 0x923A0997826215EALL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ v5;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  LOBYTE(v31) = (((((2 * (v70 + v69)) & 0x5C715BFC7CAE6902) - (v70 + v69) + 0x51C75201C1A8CB7ELL) ^ 0x29E591ACB6443E25) >> (8 * ((v12 + 2) & 7))) ^ BYTE1(v4) ^ 0xB;
  v71 = __ROR8__((v12 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v12 + 2) = v31;
  v72 = ((2 * v71 + 0x37E10DDD01C0D1E4) & 0x78FE4AD8FA3B9EA8) - v71 + 0x679053A50201C7B9;
  v73 = v72 ^ 0x6B07D98D3BD6A111;
  v72 ^= 0xB483EEF93CD5E687;
  v74 = (__ROR8__(v73, 8) + v72) ^ 0xD87AD12BCA74F052;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x9FC19AABFBDF4258;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x901164E02F7DA9DELL;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((2 * (v80 + v79)) | 0xE0B9FE80D0CE9B80) - (v80 + v79) + 0xFA300BF9798B240) ^ 0xDAA85AD0FCE532AELL;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((v83 + v82) ^ 0xF182E7DD6525616ELL) - ((2 * ((v83 + v82) ^ 0xF182E7DD6525616ELL)) & 0xB32EBAB8706D558ALL) + 0x59975D5C3836AAC5) ^ 0x3A2FB316DF71DE41;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (0x4BB30C7E6CFB8409 - ((v86 + v85) | 0x4BB30C7E6CFB8409) + ((v86 + v85) | 0xB44CF38193047BF6)) ^ 0x8631781159C537FLL;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  *(v12 + 3) = v4 ^ 0xE5 ^ (((((2 * (v89 + v88)) | 0x6A77489B32493A54) - (v89 + v88) - 0x353BA44D99249D2ALL) ^ 0x4D1967E0EEC86871) >> (8 * ((v12 + 3) & 7)));
  return v18();
}

uint64_t sub_10022394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  STACK[0x970] = STACK[0xB48];
  v16 = LODWORD(STACK[0xA44]) + ((a5 - 1184) ^ 0x729593E0) - (((LODWORD(STACK[0xA44]) << a15) + 1679988000) & 0x81088338);
  v17 = (2 * v16) & 0xF9BFCFB6 ^ 0x81088330;
  LODWORD(STACK[0x910]) = v17;
  return (*(v15 + 8 * ((31 * (v17 + (v16 ^ 0x3C5BA647) + 939220286 != 886785305)) ^ (a5 + 641))))(19, 0x226C4F4DA6C2F35FLL, 0x24C473B45318064, 0x77BCCCEC6DB88288, 0xBBDE667636DC4144, a6, a7, 0xEA9EE6A3F60CAC90);
}

uint64_t sub_100223B68()
{
  LODWORD(STACK[0x960]) = 0;
  v4 = *(v3 + 8 * ((7 * (v1 < ((v0 + 377205564) & 0xE9843C73) - 6193)) ^ v0));
  *&STACK[0x990] = vdupq_n_s64(v2);
  return v4();
}

uint64_t sub_100223C40()
{
  v3 = v1;
  v4 = LODWORD(STACK[0x910]) + 52434973 + v1 - LODWORD(STACK[0x960]);
  return (*(v2 + 8 * v0))((v0 + 52427832 + v3 + LODWORD(STACK[0x910]) - LODWORD(STACK[0x960]) + 933), (v4 + 2), (v4 + 3), (v4 + 4), (v4 + 5), (v4 + 6), (v4 + 7));
}

uint64_t sub_1002243B0(double a1, double a2, __n128 a3, __n128 a4)
{
  v8 = *(v6 + 8 * (v4 - 7196));
  LODWORD(STACK[0x920]) = LODWORD(STACK[0x910]) + 52434973 + v5 - 7;
  LODWORD(STACK[0x8F0]) = v5;
  *&STACK[0x980] = v7;
  *&STACK[0x9B0] = a3;
  *&STACK[0x9A0] = a4;
  return v8();
}

uint64_t sub_100224468@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, int64x2_t a9@<Q2>, int8x16_t a10@<Q3>, int8x16_t a11@<Q4>, int8x16_t a12@<Q5>, int64x2_t a13@<Q6>, int8x16_t a14@<Q7>)
{
  v41 = *&STACK[0x990];
  *&v42 = v25 + (LODWORD(STACK[0x920]) + a2 + 16) + a8;
  *&v43 = v25 + (a4 + a2 + 16) + a8;
  *&v44 = v25 + (a6 + a2 + 16) + a8;
  v45.i64[0] = v25 + (v29 + a2 + 16) + a8;
  v46.i64[0] = v25 + (v15 + a2 + 16) + a8;
  *(&v42 + 1) = v25 + (v28 + a2 + 16) + a8;
  *&STACK[0x950] = v42;
  *(&v43 + 1) = v25 + (a3 + a2 + 16) + a8;
  *&STACK[0x940] = v43;
  *(&v44 + 1) = v25 + (a5 + a2 + 16) + a8;
  *&STACK[0x960] = v44;
  v45.i64[1] = v25 + (a1 + a2 + 16) + a8;
  v46.i64[1] = v25 + (v17 + a2 + 16) + a8;
  v47.i64[0] = v25 + a8 + (v14 + a2 + v27 + 16);
  v48.i64[0] = v25 + (v20 + a2 + 16) + a8;
  v48.i64[1] = v25 + (v16 + a2 + 16) + a8;
  v47.i64[1] = v25 + (v18 + a2 + 16) + a8;
  v49 = vandq_s8(v47, *&STACK[0x8C0]);
  v50 = vandq_s8(v48, *&STACK[0x8C0]);
  v51 = vandq_s8(v46, *&STACK[0x8C0]);
  v52 = vandq_s8(v45, *&STACK[0x8C0]);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v41);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v41);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v41);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v41);
  v57 = vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), v40), v54);
  v58 = vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v40), v53);
  v59 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v55, v55), v40), v55), a9);
  v60 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v56, v56), v40), v56), a9);
  v61 = veorq_s8(v60, a10);
  v62 = veorq_s8(v59, a10);
  v63 = veorq_s8(v59, a11);
  v64 = veorq_s8(v60, a11);
  v65 = *&STACK[0x840];
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v63), *&STACK[0x840]);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64), *&STACK[0x840]);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(v72, vandq_s8(vaddq_s64(v72, v72), a12)), a13), a14);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(v71, vandq_s8(vaddq_s64(v71, v71), a12)), a13), a14);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v74, v73);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77);
  v80 = vaddq_s64(v78, v76);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), v30), v80), v31), v32);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), v30), v79), v31), v32);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v33);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v89 = veorq_s8(v86, v33);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v88);
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = *&STACK[0x850];
  v95 = veorq_s8(vaddq_s64(v92, v90), *&STACK[0x850]);
  v96 = veorq_s8(v93, *&STACK[0x850]);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v99 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v98);
  v101 = vaddq_s64(v99, v97);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v34)), v35), v36);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), v34)), v35), v36);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v106 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v107 = vdupq_n_s64(v24);
  v108 = vaddq_s64(v57, *&STACK[0x9B0]);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, v103));
  v110 = vaddq_s64(v106, v105);
  v234.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v107)));
  v234.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), v107)));
  v111 = veorq_s8(v108, *&STACK[0x9A0]);
  v112 = veorq_s8(v108, a11);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), *&STACK[0x840]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), a12)), a13), a14);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v30), v118), v31), v32);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v33);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), *&STACK[0x850]);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), v34)), v35), v36);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v124.i64[0] = v25 + (v22 + a2 + 16) + a8;
  v124.i64[1] = v25 + (a7 + a2 + 16) + a8;
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = vandq_s8(v124, *&STACK[0x8C0]);
  v130 = vaddq_s64(v58, *&STACK[0x9B0]);
  v234.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v48, 3uLL), v107)));
  v131 = veorq_s8(v130, *&STACK[0x9A0]);
  v132 = veorq_s8(v130, a11);
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), *&STACK[0x840]);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), a12)), a13), a14);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v138, v138), v30), v138), v31), v32);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v33);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), *&STACK[0x850]);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v145, vandq_s8(vaddq_s64(v145, v145), v34)), v35), v36);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v149 = vandq_s8(*&STACK[0x960], *&STACK[0x8C0]);
  v150 = vaddq_s64(v148, v147);
  v151 = *&STACK[0x940];
  v152 = vandq_s8(*&STACK[0x940], *&STACK[0x8C0]);
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v150, vandq_s8(vaddq_s64(v150, v150), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v47, 3uLL), v107)));
  v153 = *&STACK[0x950];
  v154 = vandq_s8(*&STACK[0x950], *&STACK[0x8C0]);
  v155 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), *&STACK[0x990]);
  v159 = vaddq_s64(v157, *&STACK[0x990]);
  v160 = vaddq_s64(v156, *&STACK[0x990]);
  v161 = vaddq_s64(v155, *&STACK[0x990]);
  v162 = vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), *&STACK[0x980]), v161);
  v163 = vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), *&STACK[0x980]), v160);
  v164 = vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), *&STACK[0x980]), v159);
  *&STACK[0x930] = vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), *&STACK[0x980]), v158);
  v165 = vaddq_s64(v163, *&STACK[0x9B0]);
  v166 = vaddq_s64(v162, *&STACK[0x9B0]);
  v163.i64[0] = vqtbl4q_s8(v234, *&STACK[0x8B0]).u64[0];
  v167 = veorq_s8(v166, *&STACK[0x9A0]);
  v234.val[0] = veorq_s8(v165, *&STACK[0x9A0]);
  v168 = veorq_s8(v165, a11);
  v169 = veorq_s8(v166, a11);
  v234.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v168), v65);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v169), v65);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(v234.val[0], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v172);
  v234.val[0] = vaddq_s64(v234.val[1], v171);
  v234.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v234.val[0], vandq_s8(vaddq_s64(v234.val[0], v234.val[0]), a12)), a13), a14);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(v173, vandq_s8(vaddq_s64(v173, v173), a12)), a13), a14);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = veorq_s8(v234.val[0], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v176);
  v234.val[0] = vaddq_s64(v234.val[1], v175);
  v234.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v234.val[0], v234.val[0]), v30), v234.val[0]), v31), v32);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v30), v177), v31), v32);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = veorq_s8(v234.val[0], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v180);
  v234.val[0] = veorq_s8(vaddq_s64(v234.val[1], v179), v33);
  v182 = veorq_s8(v181, v33);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(v234.val[0], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v184);
  v234.val[0] = veorq_s8(vaddq_s64(v234.val[1], v183), v94);
  v186 = veorq_s8(v185, v94);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(v234.val[0], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v188);
  v234.val[0] = vaddq_s64(v234.val[1], v187);
  v234.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v234.val[0], vandq_s8(vaddq_s64(v234.val[0], v234.val[0]), v34)), v35), v36);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(v189, vandq_s8(vaddq_s64(v189, v189), v34)), v35), v36);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = vaddq_s64(v164, *&STACK[0x9B0]);
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), veorq_s8(v234.val[0], v234.val[1]));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v234.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v153, 3uLL), v107)));
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v194, vandq_s8(vaddq_s64(v194, v194), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v151, 3uLL), v107)));
  v195 = veorq_s8(v192, *&STACK[0x9A0]);
  v196 = veorq_s8(v192, a11);
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), v65);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(v199, vandq_s8(vaddq_s64(v199, v199), a12)), a13), a14);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), v30), v202), v31), v32);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), v33);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), v94);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(v209, vandq_s8(vaddq_s64(v209, v209), v34)), v35), v36);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL)));
  v212 = vaddq_s64(*&STACK[0x930], *&STACK[0x9B0]);
  v234.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x960], 3uLL), v107)));
  v213 = veorq_s8(v212, *&STACK[0x9A0]);
  v214 = veorq_s8(v212, a11);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v65);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(v217, vandq_s8(vaddq_s64(v217, v217), a12)), a13), a14);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v220, v220), v30), v220), v31), v32);
  v222 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v224 = veorq_s8(v221, v222);
  v225 = veorq_s8(vaddq_s64(v223, v224), v33);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226), v94);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(v229, vandq_s8(vaddq_s64(v229, v229), v34)), v35), v36);
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL)));
  v234.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v231, vandq_s8(vaddq_s64(v231, v231), v37)), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v124, 3uLL), v107)));
  v163.i64[1] = vqtbl4q_s8(v234, *&STACK[0x8B0]).u64[0];
  v232 = vrev64q_s8(v163);
  *(v25 + (v20 + a2 + 16) + a8 - 15) = vextq_s8(v232, v232, 8uLL);
  return (*(v23 + 8 * (((v26 == a2) * v21) ^ v19)))();
}

uint64_t sub_100225004(__n128 a1)
{
  v5 = *(v3 + 8 * ((((((v4 + 2592) | 0x30) - 1627) ^ (v4 + 676791268) & 0xD7A8FFFF) * (v2 == v1)) | v4));
  v6 = *&STACK[0x640];
  LODWORD(STACK[0x960]) = v1;
  return v5(19, 0x226C4F4DA6C2F35FLL, 0x24C473B45318064, 0x77BCCCEC6DB88288, 0xBBDE667636DC4144, 0x923A0997826215EALL, 0x50F1A00E103B1273, 0xEA9EE6A3F60CAC90, a1, v6);
}

uint64_t sub_1002251DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = STACK[0x970] + (v10 - 886785306) + a9;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (v11 - 1184) + v9 + (a8 | (2 * (v24 + v14))) - (v24 + v14);
  v26 = v25 ^ v15;
  v27 = v25 ^ a3;
  v28 = (__ROR8__(v26, 8) + v27) ^ v18;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - (a4 & (2 * (v30 + v29))) + a5) ^ v21;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__(((v22 & (2 * (v33 + v32))) - (v33 + v32) + v19) ^ 0xA05640A19E2D4FCFLL, 8);
  v35 = ((v22 & (2 * (v33 + v32))) - (v33 + v32) + v19) ^ 0xA05640A19E2D4FCFLL ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ v17;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a6;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0xA1E3401C207624E6) + a7) ^ v12;
  v42 = __ROR8__(v41, 8);
  v43 = __ROR8__(v39, 61);
  *v23 = ((v42 + (v41 ^ v43) - (v20 & (2 * (v42 + (v41 ^ v43)))) + a2) ^ 0x5A4E8CE0D12E0604) >> (8 * (v23 & 7u));
  return (*(v16 + 8 * (((v10 - 1 != v13) * a1) ^ (v11 - 2377))))();
}

uint64_t sub_100225318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0xCD8] = STACK[0x970];
  LODWORD(STACK[0xA64]) = STACK[0xC34];
  return (*(v5 + 8 * (((((v4 + 1) ^ (STACK[0xAF8] == 0)) & 1) * ((v4 ^ 0x1B99) - 1093)) ^ v4)))(a1, a2, a3, a4, 0x5A2B28E8592ABBB3);
}

uint64_t sub_100225474()
{
  LODWORD(STACK[0x2440]) = (v1 + 1514) ^ (1949688233 * ((v6 - 240) ^ 0xE747568B));
  v7 = (*(v3 + 8 * (v1 ^ 0x3E4D)))(v6 - 240);
  v8 = STACK[0x2448];
  v9 = (v5 + v4 + v0);
  *v9 = STACK[0x2448] ^ 0x31;
  v9[1] = BYTE1(v8) ^ 0x8B;
  return (*(v3 + 8 * (((((((2 * v1) ^ 0x75C) - 9403) | 0x14) + 2935) * (v4 != v2 + 14)) ^ v1)))(v7);
}

uint64_t sub_100225528@<X0>(int a1@<W8>)
{
  v7 = v1 + v4 + v5;
  *(v7 + 2) = BYTE2(a1) ^ 0x32;
  *(v7 + 3) = (v6 - 77) ^ HIBYTE(a1);
  return (*(v3 + 8 * ((458 * (((v4 == v2 + 12) ^ (v6 + 89)) & 1)) ^ v6)))();
}

uint64_t sub_10022557C@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 4) = BYTE4(a1) ^ 0xEB;
  *(v6 + ((v7 - 9383) ^ (v2 + 952)) + v5) = (23 * ((v7 - 22) ^ 0xCB) - 114) ^ BYTE5(a1);
  return (*(v4 + 8 * ((v7 - 1302) ^ (31 * (v5 != v3 + 10)))))();
}

uint64_t sub_1002255E8@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 + v5 + v6;
  *(v7 + 6) = BYTE6(a1) ^ 0xDB;
  *(v7 + 7) = v1 ^ 0x5E ^ HIBYTE(a1) ^ (((v1 + 23) | 0x19) + 20);
  return (*(v4 + 8 * (v1 ^ ((2 * (v5 + 8 == v3 + 16)) | (4 * (v5 + 8 == v3 + 16))))))();
}

uint64_t sub_100225760(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x26C];
  *(a2 + 6664) = (LODWORD(STACK[0x26C]) + 2464) ^ (586739509 * ((((2 * (v3 - 240)) | 0x94DBC868) - (v3 - 240) + 898767820) ^ 0x3CE7E251));
  *(a2 + 6656) = &STACK[0x143F];
  v5 = (*(v2 + 8 * (v4 ^ 0x272D)))(v3 - 240);
  return (*(v2 + 8 * (((LODWORD(STACK[0x2440]) == v4 + 68585597) * ((v4 ^ 0x1A0E) + 1398)) ^ v4)))(v5);
}

uint64_t sub_100225840()
{
  (*(v1 + 8 * (v0 ^ 0x2A70)))(&STACK[0x143F], 4096);
  STACK[0xF28] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((2264 * (v0 ^ 0x3A2) - 1889) ^ v0)))();
}

uint64_t sub_100225968()
{
  v2 = STACK[0x268];
  v3 = LODWORD(STACK[0x268]) + 7949;
  v4 = LODWORD(STACK[0x268]) - 251;
  v5 = STACK[0xCD8];
  STACK[0xAB0] = STACK[0xCD8];
  v6 = STACK[0xAF8];
  v7 = LODWORD(STACK[0xA64]) + (v4 ^ 0x1A81F70E) - ((2 * LODWORD(STACK[0xA64]) + 1408056910) & 0xE116A886);
  v8 = 678427121 * ((((v1 - 240) | 0xA55A35F6) - (v1 - 240) + ((v1 - 240) & 0x5AA5CA08)) ^ 0x37806FEC);
  STACK[0x2450] = STACK[0xE88];
  LODWORD(STACK[0x2440]) = v8 + v2 + 981;
  STACK[0x2448] = v6;
  STACK[0x2458] = v5;
  STACK[0x2468] = v5;
  LODWORD(STACK[0x2470]) = v7 ^ v8;
  LODWORD(STACK[0x2460]) = v8 + 576502221;
  v9 = (*(v0 + 8 * (v2 + 9364)))(v1 - 240);
  return (*(v0 + 8 * ((3442 * (LODWORD(STACK[0x2444]) == (v3 ^ 0x416B1F0))) ^ v2)))(v9);
}

uint64_t sub_100225C90()
{
  v1 = STACK[0x270];
  v2 = 2 * (STACK[0x270] ^ 0xCB8);
  STACK[0xF28] = *(v0 + 8 * STACK[0x270]);
  return (*(v0 + 8 * ((v2 ^ 0x143F) + v1)))();
}

uint64_t sub_100225D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, int a33, int a34)
{
  v35 = STACK[0x9F8];
  STACK[0x12D8] = STACK[0x9F8];
  v36 = *(v35 - 0x1138F6A92264F472);
  if (v36 == 408423770)
  {
    return (*(v34 + 8 * (STACK[0x7E8] - 8965 + ((STACK[0x7E8] + 1672414927) & 0x9C50DFDF) + 1682)))();
  }

  if (v36 != 408423771)
  {
    return sub_100226C18();
  }

  LODWORD(STACK[0x1228]) = a34;
  LODWORD(STACK[0x122C]) = a33;
  v38 = STACK[0xA48];
  STACK[0x1230] = STACK[0xA48];
  STACK[0x11A8] = v38;
  LOBYTE(STACK[0x11A7]) = 0;
  STACK[0x1198] = 32;
  STACK[0x1190] = *(v34 + 8 * a32);
  return (*(v34 + 8 * (STACK[0x7E8] ^ 0xD7B)))();
}

uint64_t sub_100225E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x540] = v10;
  STACK[0x550] = v9;
  v13 = *(v12 + 8 * v7);
  v14 = *(v12 + 8 * (((v11 == a7) * ((35 * (v8 ^ 0xBC0)) ^ 0x1DD1)) ^ v8));
  STACK[0x570] = v13;
  return v14();
}

uint64_t sub_100225F34()
{
  v4 = -738495006 - *(v1 - 0x51CE20ABD81C932BLL);
  v5 = v0 + 939199937 > v4;
  v6 = ((v0 + 939199937) < 0x5DC16B1A) ^ (v4 < 0x5DC16B1A);
  v7 = v5;
  if (v6)
  {
    v8 = (v0 + 939199937) < 0x5DC16B1A;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((!v8 * (((v2 + 111) | 0x11D0) ^ 0x1D89)) ^ v2)))();
}

uint64_t sub_100226054()
{
  v3 = 16 - ((((v1 - 62) ^ 0x55) + v0) & 0xFu);
  STACK[0x580] = v3;
  return (*(v2 + 8 * ((5743 * (v3 + (v0 - 633757017) < ((v1 + 5234) | 0x448u) + 4294957962u)) ^ v1)))();
}

uint64_t sub_1002260CC()
{
  v4 = *(v3 + 8 * (v2 + 1037));
  LODWORD(STACK[0x560]) = v1;
  v5 = v4((v0 - v1 - 633756991));
  STACK[0x5C0] = v5;
  return (*(v3 + 8 * ((240 * (((v5 == 0) ^ ((v2 ^ 0x18) - 39)) & 1)) ^ v2)))();
}

uint64_t sub_10022621C@<X0>(int a1@<W4>, int a2@<W8>)
{
  v3 = STACK[0x5C0];
  *(v3 + ((2 * ((a2 ^ 0xD0981C1A) + a1)) & 0x13FF3EFDELL) + (((a2 ^ 0xD0981C1A) + a1) ^ 0x5BDFFFD59FF9F7EFLL) - 0x5BDFFFD59FF9F7EFLL) = 0;
  *(v3 + ((2 * (a1 - 795344882)) & 0x17F90F5E8) + ((a1 - 795344882) ^ 0x74B79FE7BFC87AF4) - 0x74B79FE7BFC87AF4) = -9392;
  v4 = (32 - 2 * LOBYTE(STACK[0x560])) & 0x20 | LODWORD(STACK[0x560]);
  v5 = v3 + ((2 * (a1 - 795344880)) & 0x1FCF3E4B6) + ((a1 - 795344880) ^ 0xFBDF7A97FE79F25BLL) + 0x420856801860DA5;
  *v5 = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = (0x80 - v4) ^ 0x70;
  v6 = (STACK[0x580] ^ 0xFD6FAFF574DFEFEELL) + ((2 * STACK[0x580]) & 0x1C) + 0x290500B3D7FDA31 == 2992622111;
  return (*(v2 + 8 * (a2 | (2 * v6) | (32 * v6))))(-2992622112);
}

uint64_t sub_1002263AC@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v8 = v5 < v6;
  *(v3 + v4) = 0;
  if (v8 == v4 + 1 > a1)
  {
    v8 = (v2 ^ (v6 - 2308)) + v4 < v5;
  }

  return (*(v7 + 8 * ((2 * !v8) | (32 * !v8) | a2)))();
}

uint64_t sub_100226400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x540] - 0x29E4096E8077F5F4) = a3;
  *STACK[0x550] = STACK[0x530];
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1002264E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = STACK[0x28C];
  v6 = 199319723 * ((v4 + 1850618959 - 2 * ((v4 - 240) & 0x6E4E353F)) ^ 0xDBBEDBF7);
  *(a1 + 6664) = v2 - v6 + (LODWORD(STACK[0x28C]) ^ 0x1105) - 699471418;
  *(a1 + 6648) = v6 + v5 + 3059;
  *(a1 + 6656) = a2;
  *(a1 + 6672) = STACK[0x430];
  v7 = (*(v3 + 8 * (v5 ^ 0x35A0)))(v4 - 240);
  return (*(v3 + 8 * v5))(v7);
}

uint64_t sub_10022661C()
{
  v1 = STACK[0x298];
  STACK[0xC08] = STACK[0xE00];
  LODWORD(STACK[0xE14]) = STACK[0xC88];
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100226660@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = STACK[0x28C];
  v6 = 1084270361 * ((2 * ((v4 - 240) & 0x6A254470) - (v4 - 240) - 1780827252) ^ 0x59F34496);
  *(a1 + 6664) = LODWORD(STACK[0x28C]) - v6 - 5314;
  *(a1 + 6648) = v2 - v6 + (v5 ^ 0x2201255B);
  *(a1 + 6656) = STACK[0x430];
  *(a1 + 6672) = a2;
  v7 = (*(v3 + 8 * (v5 ^ 0x3601)))(v4 - 240);
  return (*(v3 + 8 * v5))(v7);
}

uint64_t sub_1002267C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 480) = v2;
  *(a1 + 836) = v3;
  *(a1 + 672) = a2;
  *(a1 + 856) = 0x4B8875340FDCB899;
  *(a1 + 620) = 1443455193;
  *(a1 + 1064) = 0x4DC5C22F5BDB8B24;
  *(a1 + 1112) = 0;
  v6 = (*(v5 + 8 * (v4 + 7515)))(16);
  STACK[0xA58] = v6 + 0x5A0411E37F4B9882;
  return (*(v5 + 8 * (((v6 == 0) * (1332 * (v4 ^ 0xC21) - 9293)) ^ v4)))();
}

uint64_t sub_1002268A4(void *a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  return (*(v2 + 8 * (v1 ^ 0x133F)))();
}

uint64_t sub_100226A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x450];
  v9 = (LODWORD(STACK[0x450]) + 1185179011) ^ 0x46A46BD2;
  v10 = (LODWORD(STACK[0x450]) + 1185179011) & 0xB95BA4EF;
  v11 = **(a2 + 1904);
  *(a2 + 720) = 0;
  return (*(v7 + 8 * (((v11 == a7) * ((v9 + 4867) ^ v10)) ^ v8)))();
}

uint64_t sub_100226A68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  STACK[0xA28] = 0x51CE20ABD81C933BLL;
  *(a1 + 312) = 0x248C4EB172C9E9B0;
  return (*(v4 + 8 * (((a3 != a2) * (3 * (v3 ^ 0x14DF) - 232)) ^ v3)))();
}

uint64_t sub_100226B30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a4 - 1933;
  v6 = (*(v4 + 8 * SLODWORD(STACK[0x388])))();
  return (*(v4 + 8 * v5))(v6);
}

uint64_t sub_100226BBC()
{
  v1 = STACK[0x458];
  v2 = STACK[0x458] ^ 0x2188;
  STACK[0xE30] = *(v0 + 8 * STACK[0x458]);
  return (*(v0 + 8 * ((v2 - 6413) ^ v1)))();
}

uint64_t sub_100226C18()
{
  v3 = *(v1 + 8 * (v0 - 8659));
  LODWORD(STACK[0xC14]) = v2;
  STACK[0xA18] = v3;
  return (*(v1 + 8 * ((v0 - 8659) ^ 0x4AF)))();
}

uint64_t sub_100226F50(uint64_t a1, uint64_t a2)
{
  *(a2 + 608) = *(a2 + 16);
  v5 = *(v3 + 8 * (v2 - 8662));
  *(a2 + 996) = v4;
  STACK[0xA18] = v5;
  return (*(v3 + 8 * ((v2 - 8662) ^ 0x4A0)))();
}

uint64_t sub_100226F94()
{
  v2 = STACK[0x5C0];
  STACK[0x510] = STACK[0x5C0] - 15;
  STACK[0x520] = v2 - 7;
  return (*(v0 + 8 * (v1 + 876)))();
}

uint64_t sub_100227158@<X0>(unint64_t a1@<X0>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  STACK[0x5F0] = a1;
  STACK[0x980] = *(a1 - 0x51CE20ABD81C9323);
  LODWORD(STACK[0x5E0]) = a3;
  STACK[0x970] = (((((a5 + 1892652756) & 0x8F306DFB) - 231) ^ 0xDEE3EF82) & (2 * (a3 - 795344886))) + ((a3 - 795344886) ^ 0x39FFF7FF6F71E5F7) - 0x39FFF7FF6F71E5F7;
  LODWORD(STACK[0x5A0]) = a2;
  LODWORD(STACK[0x590]) = a4;
  v6 = a2 + a4 + 37852003;
  LODWORD(STACK[0x5B0]) = v6;
  return (*(v5 + 8 * (a5 + 40 * (v6 > 7))))(0xC2CD6C5902A67681, 0x1329D67F5E8BA89ALL, 0x4E405C160AB740C9);
}

uint64_t sub_1002273B0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v20 = *(STACK[0x808] + 8 * ((((v8 + 825153786) & 0xCED1376C ^ (v8 + 4191)) * (LODWORD(STACK[0x5B0]) < 0x10)) | v8));
  *&STACK[0x910] = vdupq_n_s64(v9);
  *&STACK[0x900] = vdupq_n_s64(a8);
  *&STACK[0x960] = vdupq_n_s64(v15);
  *&STACK[0x8F0] = vdupq_n_s64(v19);
  *&STACK[0x8E0] = vdupq_n_s64(v18);
  *&STACK[0x8D0] = vdupq_n_s64(a3);
  *&STACK[0x890] = vdupq_n_s64(v12);
  *&STACK[0x880] = vdupq_n_s64(v17);
  *&STACK[0x950] = vdupq_n_s64(0xED2B4AEB99146DB4);
  *&STACK[0x870] = vdupq_n_s64(v10);
  *&STACK[0x860] = vdupq_n_s64(v14);
  *&STACK[0x850] = vdupq_n_s64(0x5F6C432483AE0E2CuLL);
  *&STACK[0x840] = vdupq_n_s64(a2);
  *&STACK[0x830] = vdupq_n_s64(a1);
  *&STACK[0x820] = vdupq_n_s64(a5);
  *&STACK[0x9B0] = vdupq_n_s64(v16);
  *&STACK[0x9A0] = vdupq_n_s64(v13);
  *&STACK[0x990] = vdupq_n_s64(v11);
  return v20();
}

uint64_t sub_100227538(int a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v17 = (v15 + a3 + 8);
  v18.i64[0] = v10 + v17;
  v18.i64[1] = v10 + (v13 + a3 + v12 + 8);
  v19.i64[0] = v10 + (a1 + a3 + 8);
  v19.i64[1] = v10 + (a7 + a3 + 8);
  v20.i64[0] = v10 + (a6 + a3 + 8);
  v20.i64[1] = v10 + (a5 + a3 + 8);
  v21.i64[0] = v10 + (a4 + a3 + 8);
  v21.i64[1] = v10 + (a2 + a3 + 8);
  v22 = vandq_s8(v21, *&STACK[0x8C0]);
  v23 = vandq_s8(v20, *&STACK[0x8C0]);
  v24 = vandq_s8(v19, *&STACK[0x8C0]);
  v25 = vandq_s8(v18, *&STACK[0x8C0]);
  v26 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v27 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v28 = vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL);
  v29 = vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL);
  v30 = *&STACK[0x950];
  v31 = *&STACK[0x820];
  *&STACK[0x940] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v26, v26), *&STACK[0x950]), *&STACK[0x820]), v26);
  v32 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v29, v29), v30), v31), v29), *&STACK[0x910]);
  v33 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v28, v28), v30), v31), v28), *&STACK[0x910]);
  v34 = veorq_s8(v33, *&STACK[0x860]);
  v35 = veorq_s8(v32, *&STACK[0x860]);
  v36 = veorq_s8(v32, *&STACK[0x8F0]);
  v37 = veorq_s8(v33, *&STACK[0x8F0]);
  v38 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v36), *&STACK[0x7D0]);
  v39 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v37), *&STACK[0x7D0]);
  v40 = vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL);
  v41 = veorq_s8(v39, vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL));
  v42 = veorq_s8(v38, v40);
  v43 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v42);
  v45 = veorq_s8(vaddq_s64(v43, v41), *&STACK[0x680]);
  v46 = vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL);
  v47 = veorq_s8(v44, *&STACK[0x680]);
  v48 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v49 = veorq_s8(v45, v46);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v49);
  v52 = vaddq_s64(v50, v48);
  v53.i64[0] = -1;
  v53.i64[1] = -1;
  v54 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v52, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v52, *&STACK[0x880]), *&STACK[0x8D0])), v53), *&STACK[0x870]);
  v55 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v51, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v51, *&STACK[0x880]), *&STACK[0x8D0])), v53), *&STACK[0x870]);
  v56 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, *&STACK[0x830]), vorrq_s8(v60, v16)), v16), *&STACK[0x960]);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, *&STACK[0x830]), vorrq_s8(v61, v16)), v16), *&STACK[0x960]);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), *&STACK[0x850]), v67), *&STACK[0x900]), *&STACK[0x840]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), *&STACK[0x850]), v66), *&STACK[0x900]), *&STACK[0x840]);
  v70 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), *&STACK[0x7C0]);
  v76 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v77 = veorq_s8(v74, *&STACK[0x7C0]);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v76);
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vdupq_n_s64(v14);
  v82 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v27, v27), v30), v31), v27), *&STACK[0x910]);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v84 = vaddq_s64(v80, v78);
  v121.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), *&STACK[0x9B0]), v83), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v81)));
  v121.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), *&STACK[0x9B0]), v84), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v81)));
  v85 = veorq_s8(v82, *&STACK[0x860]);
  v86 = veorq_s8(v82, *&STACK[0x8F0]);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x7D0]);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), *&STACK[0x680]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v21.i64[0] = -1;
  v21.i64[1] = -1;
  v92 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v91, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v91, *&STACK[0x880]), *&STACK[0x8D0])), v21), *&STACK[0x870]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, *&STACK[0x830]), vorrq_s8(v94, v16)), v16), *&STACK[0x960]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), *&STACK[0x850]), v97), *&STACK[0x900]), *&STACK[0x840]);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), *&STACK[0x7C0]);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL)));
  v102 = vaddq_s64(*&STACK[0x940], *&STACK[0x910]);
  v121.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x9B0]), v101), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v81)));
  v103 = veorq_s8(v102, *&STACK[0x860]);
  v104 = veorq_s8(v102, *&STACK[0x8F0]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), *&STACK[0x7D0]);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x680]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v109, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v109, *&STACK[0x880]), *&STACK[0x8D0])), v21), *&STACK[0x870]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, *&STACK[0x830]), vorrq_s8(v112, v16)), v16), *&STACK[0x960]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), *&STACK[0x850]), v115), *&STACK[0x900]), *&STACK[0x840]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), *&STACK[0x7C0]);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL)));
  v121.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), *&STACK[0x9B0]), v119), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), v81)));
  *(v9 + v17 + a8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v121, *&STACK[0x640])), *(v10 + v17 - 7));
  return (*(STACK[0x808] + 8 * ((31 * (v11 == a3)) ^ v8)))();
}

uint64_t sub_100227CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(STACK[0x808] + 8 * (a6 - 2208));
  v7 = LODWORD(STACK[0x5A0]) + 37851995 + LODWORD(STACK[0x590]);
  LODWORD(STACK[0x790]) = v7 - 3;
  LODWORD(STACK[0x780]) = v7 - 2;
  return v6((v7 + 3), STACK[0x970]);
}

uint64_t sub_100227D70@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  *&v23 = v12 + (v21 + a3 + 16);
  *(&v23 + 1) = v12 + (v19 + a3 + 16);
  *&STACK[0x940] = v23;
  *&v23 = v12 + (a1 + a3 + 16);
  *(&v23 + 1) = v12 + (a4 + a3 + 16);
  *&STACK[0x810] = v23;
  *&v23 = v12 + (v11 + a3 + 16);
  v24 = LODWORD(STACK[0x780]) + a3;
  *(&v23 + 1) = v12 + (a6 + a3 + 16);
  *&STACK[0x920] = v23;
  v25.i64[0] = v12 + (v10 + a3 + 16);
  v25.i64[1] = v12 + (v24 + 16);
  v26.i64[0] = v12 + (LODWORD(STACK[0x790]) + a3 + 16);
  v26.i64[1] = v12 + (a7 + a3 + 16);
  v27 = (v13 + a3 + v14 + 16);
  v28.i64[0] = v12 + (v20 + a3 + 16);
  *&v23 = v12 + v27;
  *(&v23 + 1) = v12 + (a8 + a3 + 16);
  *&STACK[0x930] = v23;
  v28.i64[1] = v12 + (v18 + a3 + 16);
  v29.i64[0] = v12 + (v17 + a3 + 16);
  v29.i64[1] = v12 + (v16 + a3 + 16);
  v30 = *&STACK[0x8C0];
  v31 = vandq_s8(v29, *&STACK[0x8C0]);
  v32 = vandq_s8(v28, *&STACK[0x8C0]);
  v33 = vandq_s8(v26, *&STACK[0x8C0]);
  v34 = vandq_s8(v25, *&STACK[0x8C0]);
  v35 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v39 = *&STACK[0x950];
  v40 = *&STACK[0x820];
  *&STACK[0x7F0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v35, v35), *&STACK[0x950]), *&STACK[0x820]), v35);
  v41 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v36, v36), v39), v40), v36);
  v42 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v38, v38), v39), v40), v38), *&STACK[0x910]);
  v43 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v37, v37), v39), v40), v37), *&STACK[0x910]);
  v44 = veorq_s8(v43, *&STACK[0x860]);
  v45 = veorq_s8(v42, *&STACK[0x860]);
  v46 = veorq_s8(v42, *&STACK[0x8F0]);
  v47 = veorq_s8(v43, *&STACK[0x8F0]);
  v48 = *&STACK[0x7D0];
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), *&STACK[0x7D0]);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), *&STACK[0x7D0]);
  v53 = veorq_s8(v52, v51);
  v54 = veorq_s8(v49, v50);
  v55 = *&STACK[0x680];
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), *&STACK[0x680]);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v54), *&STACK[0x680]);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = vaddq_s64(v60, v58);
  v63 = *&STACK[0x880];
  v64 = *&STACK[0x8D0];
  v65.i64[0] = -1;
  v65.i64[1] = -1;
  v66 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v62, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v62, *&STACK[0x880]), *&STACK[0x8D0])), v65), *&STACK[0x870]);
  v67 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v61, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v61, *&STACK[0x880]), *&STACK[0x8D0])), v65), *&STACK[0x870]);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68);
  v72 = *&STACK[0x830];
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, *&STACK[0x830]), vorrq_s8(v70, v22)), v22), *&STACK[0x960]);
  v74 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0x830]), vorrq_s8(v71, v22)), v22), *&STACK[0x960]);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(v73, v74);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v76);
  v80 = *&STACK[0x850];
  v81 = *&STACK[0x900];
  v82 = *&STACK[0x840];
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), *&STACK[0x850]), v79), *&STACK[0x900]), *&STACK[0x840]);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), *&STACK[0x850]), v78), *&STACK[0x900]), *&STACK[0x840]);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v86 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86);
  v89 = *&STACK[0x7C0];
  v90 = veorq_s8(vaddq_s64(v87, v85), *&STACK[0x7C0]);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v92 = veorq_s8(v88, *&STACK[0x7C0]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v94 = veorq_s8(v90, v91);
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vdupq_n_s64(v8);
  v97 = vaddq_s64(v41, *&STACK[0x910]);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v99 = vaddq_s64(v95, v93);
  v224.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), *&STACK[0x9B0]), v98), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v96)));
  v224.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), *&STACK[0x9B0]), v99), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v96)));
  v100 = *&STACK[0x860];
  v101 = veorq_s8(v97, *&STACK[0x860]);
  v102 = veorq_s8(v97, *&STACK[0x8F0]);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), *&STACK[0x7D0]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), *&STACK[0x680]);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108.i64[0] = -1;
  v108.i64[1] = -1;
  v109 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v107, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v107, *&STACK[0x880]), *&STACK[0x8D0])), v108), *&STACK[0x870]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, *&STACK[0x830]), vorrq_s8(v111, v22)), v22), *&STACK[0x960]);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), *&STACK[0x850]), v114), *&STACK[0x900]), *&STACK[0x840]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), *&STACK[0x7C0]);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL)));
  v119 = vandq_s8(*&STACK[0x920], v30);
  v120 = vaddq_s64(*&STACK[0x7F0], *&STACK[0x910]);
  v224.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), *&STACK[0x9B0]), v118), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v96)));
  v121 = veorq_s8(v120, *&STACK[0x860]);
  v122 = veorq_s8(v120, *&STACK[0x8F0]);
  v123 = *&STACK[0x8F0];
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), *&STACK[0x7D0]);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), *&STACK[0x680]);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = *&STACK[0x890];
  v130 = *&STACK[0x8E0];
  v131 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v128, *&STACK[0x890]), *&STACK[0x8E0]), veorq_s8(vandq_s8(v128, *&STACK[0x880]), *&STACK[0x8D0])), v108), *&STACK[0x870]);
  v132 = *&STACK[0x870];
  v133 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, *&STACK[0x830]), vorrq_s8(v134, v22)), v22), *&STACK[0x960]);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v137, v137), *&STACK[0x850]), v137), *&STACK[0x900]), *&STACK[0x840]);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), *&STACK[0x7C0]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = *&STACK[0x810];
  v144 = vandq_s8(*&STACK[0x810], v30);
  v145 = vaddq_s64(v142, v141);
  v146 = vandq_s8(*&STACK[0x940], v30);
  v224.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), *&STACK[0x9B0]), v145), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v96)));
  v147 = vandq_s8(*&STACK[0x930], v30);
  v148 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v152 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v148, v148), *&STACK[0x950]), v40), v148);
  v153 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v149, v149), *&STACK[0x950]), v40), v149);
  v154 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v151, v151), *&STACK[0x950]), v40), v151), *&STACK[0x910]);
  v155 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v150, v150), *&STACK[0x950]), v40), v150), *&STACK[0x910]);
  v156 = *&STACK[0x910];
  v157 = *&STACK[0x8B0];
  *&STACK[0x7F0] = vqtbl4q_s8(v224, *&STACK[0x8B0]);
  v158 = veorq_s8(v155, v100);
  v224.val[0] = veorq_s8(v154, v100);
  v159 = v100;
  v160 = veorq_s8(v154, v123);
  v161 = veorq_s8(v155, v123);
  v224.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v160), v48);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v161), v48);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(v224.val[0], v224.val[1]);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v164);
  v224.val[0] = veorq_s8(vaddq_s64(v224.val[1], v163), v55);
  v166 = veorq_s8(v165, v55);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(v224.val[0], v224.val[1]);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v168);
  v224.val[0] = vaddq_s64(v224.val[1], v167);
  v40.i64[0] = -1;
  v40.i64[1] = -1;
  v224.val[0] = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v224.val[0], v129), v130), veorq_s8(vandq_s8(v224.val[0], v63), v64)), v40), v132);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v170 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v169, v129), v130), veorq_s8(vandq_s8(v169, v63), v64)), v40), v132);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(v224.val[0], v224.val[1]);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v172);
  v224.val[0] = vaddq_s64(v224.val[1], v171);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, v72), vorrq_s8(v173, v22)), v22), *&STACK[0x960]);
  v224.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224.val[0], v72), vorrq_s8(v224.val[0], v22)), v22), *&STACK[0x960]);
  v175 = veorq_s8(v224.val[0], vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v176 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v176);
  v224.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v175);
  v224.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v224.val[0], v224.val[0]), v80), v224.val[0]), v81), v82);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v80), v177), v81), v82);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = veorq_s8(v224.val[0], v224.val[1]);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v180);
  v224.val[0] = veorq_s8(vaddq_s64(v224.val[1], v179), v89);
  v182 = veorq_s8(v181, v89);
  v224.val[1] = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(v152, v156);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), veorq_s8(v224.val[0], v224.val[1]));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v224.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v185, v185), *&STACK[0x9B0]), v185), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x920], 3uLL), v96)));
  v224.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v186, v186), *&STACK[0x9B0]), v186), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(v143, 3uLL), v96)));
  v187 = veorq_s8(v184, v159);
  v188 = veorq_s8(v184, v123);
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v48);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v55);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v152.i64[0] = -1;
  v152.i64[1] = -1;
  v194 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v193, v129), v130), veorq_s8(vandq_s8(v193, v63), v64)), v152), v132);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v196, v72), vorrq_s8(v196, v22)), v22), *&STACK[0x960]);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199, v199), v80), v199), v81), v82);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v89);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL)));
  v204 = vaddq_s64(v153, v156);
  v224.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v203, v203), *&STACK[0x9B0]), v203), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x940], 3uLL), v96)));
  v205 = veorq_s8(v204, v159);
  v206 = veorq_s8(v204, v123);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), v48);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208), v55);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v212 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v211, v129), v130), veorq_s8(vandq_s8(v211, v63), v64)), v152), v132);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213);
  v215 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v214, v72), vorrq_s8(v214, v22)), v22), *&STACK[0x960]);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v217, v217), v80), v217), v81), v82);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v89);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL)));
  v224.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v221, v221), *&STACK[0x9B0]), v221), *&STACK[0x9A0]), *&STACK[0x990]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x930], 3uLL), v96)));
  v221.i64[0] = vqtbl4q_s8(v224, v157).u64[0];
  v221.i64[1] = STACK[0x7F0];
  v222 = vrev64q_s8(v221);
  *(v9 + v27 + a2) = veorq_s8(vextq_s8(v222, v222, 8uLL), *(v12 + v27 - 15));
  return (*(STACK[0x808] + 8 * ((127 * (v15 != a3)) ^ (a5 - 2233))))();
}

uint64_t sub_100228BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v22 = (a8 - 498871313);
  v23 = STACK[0x980] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * v24 - 0x12D4B51466EB924CLL) & a4) - v24 + v9;
  v26 = __ROR8__(v25 ^ v15, 8);
  v27 = v25 ^ v21;
  v28 = (v26 + v27) ^ 0x5EEE4453CA35DABALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x96518B1852248A0DLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) & v13 ^ v20) + ((v32 + v31) & v19 ^ a3) - 1) ^ v10;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((v18 - ((v35 + v34) | v18) + ((v35 + v34) | a1)) ^ v16, 8);
  v37 = (v18 - ((v35 + v34) | v18) + ((v35 + v34) | a1)) ^ v16 ^ __ROR8__(v34, 61);
  v38 = (((2 * (v36 + v37)) & 0x5F6C432483AE0E2CLL) - (v36 + v37) + a7) ^ a2;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a6;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *(a5 + v22 + STACK[0x970]) = ((((v17 | (2 * (v42 + v41))) - (v42 + v41) + v14) ^ v11) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(STACK[0x808] + 8 * ((60 * (a8 - 1 != v12)) ^ (v8 - 1557))))();
}

uint64_t sub_100228D08(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v35 = (*(v29 + v30) << 24) | (*(v29 + v30 + 1) << 16) | *(v29 + v30 + 3) | (*(v29 + v30 + 2) << (v33 - 100));
  v36 = (v35 ^ 0x5E4B6EFF) - 138546726 + ((2 * v35) & 0xBC96DDFE);
  v37 = v29 + ((2 * (v30 + 4)) & 0x7BBD9FFE7FDFFE94) + ((v30 + 4) ^ 0xFDDECFFF3FEFFF4ALL) + 0x2213000C01000B6;
  v38 = v31 - 138546726;
  v39 = v30 + 10;
  v40 = (_byteswap_ushort(*v37) - 2 * (_byteswap_ushort(*v37) & 0x274B ^ *(v37 + 1) & 2) - 22707);
  switch(v40)
  {
    case 9168:
      return (*(v34 + 8 * ((((5 * a20) ^ 0xE8D) * (v38 == 1443455201)) ^ (a4 - 5775))))();
    case 63382:
      *(a2 + 1112) = v29 + v39;
      *(a2 + 856) = v32 + 10;
      return (*(v34 + 8 * ((a4 - 3577) ^ ((2 * (v36 == 1443455193)) | (8 * (v36 == 1443455193))))))();
    case 12354:
      return (*(v34 + 8 * (((a29 - 885) * (v38 == 1443455197)) ^ (a4 - 5775))))();
    default:
      return sub_100226F50(a1, a2);
  }
}

uint64_t sub_100228E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  v32 = (((2 * v29) & 0x3FB32F779FE775FELL) + (v29 ^ 0x5FD997BBCFF3BAFFLL) + v28 - 0x5FD997BBCFF3BAFFLL);
  LODWORD(v32) = (v32[1] << ((a28 + 114) & 0x7C ^ 0x7C)) | (*v32 << 24) | (v32[2] << 8) | v32[3];
  *(a2 + 620) = (v32 ^ 0x5E4B6EFF) + v30 + ((2 * v32) & 0xBC96DDFE);
  return (*(v31 + 8 * a28))();
}

uint64_t sub_100228FC8(uint64_t a1, uint64_t a2)
{
  v6 = (((2 * v3) & 0x7ADF0FCF57773FBELL) + (v3 ^ 0xFD6F87E7ABBB9FDFLL) + v2);
  v7 = v6[(v4 + 4079) ^ 0x29078185444444DLL] << 56;
  v6 += 0x290781854446022;
  v8 = v7 | (*v6 << 48) | (v6[1] << 40) | (v6[2] << 32) | (v6[3] << 24) | (v6[4] << 16) | (v6[5] << 8) | v6[6];
  *(a2 + 1064) = v8 + 0x4DC5C22F5BDB8B24 - ((2 * v8) & 0x9B8B845EB7B71648);
  return (*(v5 + 8 * v4))();
}

uint64_t sub_1002291D8@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X6>, unsigned int a4@<W8>)
{
  v6 = *(v4 + 40 * a4 + 28);
  switch(v6)
  {
    case 1:
      *(a1 + 1000) = *(v5 + 8 * SLODWORD(STACK[0x210]));
      return (*(v5 + 8 * SLODWORD(STACK[0x20C])))();
    case 3:
      return (*(v5 + 8 * (((((LODWORD(STACK[0x248]) ^ (*(v4 + 40 * a4 + 16) == 0)) & 1) == 0) * LODWORD(STACK[0x204])) ^ LODWORD(STACK[0x208]))))();
    case 2:
      return (*(v5 + 8 * (((*(a1 + 144) == a3) * LODWORD(STACK[0x200])) ^ (a2 - 517))))();
    default:
      return sub_100229290();
  }
}

uint64_t sub_100229344@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v7 = *v5;
  *(a1 + 744) = *(v6 + 8 * v3);
  *(a1 + 144) = v7;
  *(a1 + 292) = v4;
  *(a1 + 712) = v2;
  return (*(v6 + 8 * (((v2 == 0) * (((a2 - 7851) | 0x26) + 2487)) ^ (a2 - 3251))))();
}

uint64_t sub_100229478(uint64_t a1, uint64_t a2)
{
  *(a2 + 648) = v3;
  *(a2 + 200) = *(v4 + 8 * v2);
  return (*(v4 + 8 * (((2 * v2) ^ 0xC1E) + v2)))();
}

uint64_t sub_1002294F0(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x248];
  *(a2 + 1248) = *(v2 + 8 * SLODWORD(STACK[0x248]));
  return (*(v2 + 8 * (v3 ^ 0xDB3)))();
}

uint64_t sub_100229764(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(a2 + 1072) = *v3;
  return (*(v4 + 8 * (((v5 == 0x51CE20ABD81C933BLL) * (((v2 - 5259) | 0x610) - 1611)) ^ v2)))();
}

uint64_t sub_100229810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49)
{
  LODWORD(STACK[0xA04]) = v50;
  if (v50 == 68588956)
  {
    v52 = *(a2 + 640);
    v53 = *(v52 - 0x51CE20ABD81C9333);
    v54 = *(a2 + 1288);
    *(v54 - 0x51CE20ABD81C9333) = v53;
    *(v54 - 0x51CE20ABD81C933BLL) = *(v52 - 0x51CE20ABD81C933BLL);
    return (*(v49 + 8 * (((v53 == 0x51CE20ABD81C933BLL) * ((a49 - 173) ^ 0x1A9F)) ^ (a4 - 2346))))(a1);
  }

  else if (v50 == 68545953)
  {
    return (*(v49 + 8 * (((*(*(a2 + 32) - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL) * a41) ^ (STACK[0x7E8] - 2259))))(a1);
  }

  else
  {
    return sub_100230BC0(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_10022988C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(a1 + v28) = v27;
  *(a1 - 0x5A0411E37F4B9882) = v27;
  return (*(v29 + 8 * a27))();
}

uint64_t sub_10022AC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int16 a5@<W6>, int a6@<W7>, unint64_t a7@<X8>)
{
  if (a5 == 49033)
  {
    return (*(v7 + 8 * ((((a4 - 9135) ^ 0x325) * (a6 == 1443455197)) ^ (a4 - 4727))))();
  }

  if (a5 != 30757 && a5 != 44155)
  {
    return sub_10022BAAC(a1, a2, a3, a4);
  }

  STACK[0xB90] = a7;
  return (*(v7 + 8 * (a4 - 1740)))();
}

uint64_t sub_10022ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x530] > 0xFFFFFFFF6813FAA4;
  v11 = (a8 - 1443455193) + STACK[0x8E0];
  STACK[0xFE8] = v11 + 10;
  v11 -= 0x601096D85F03D58;
  v12 = v11 < 0x97EC055B;
  v13 = v11 > STACK[0x4F0];
  if (v10 != v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(v8 + 8 * ((v9 - 2573) ^ (143 * v14))))();
}

uint64_t sub_10022ADA8@<X0>(unsigned __int16 a1@<W0>, int a2@<W3>, int a3@<W7>, uint64_t a4@<X8>)
{
  if (a1 == 49033)
  {
    return (*(v5 + 8 * ((a2 - 6905) ^ (4834 * (a3 == 1443455197)))))();
  }

  if (a1 != 30757 && a1 != 44155)
  {
    return sub_100237014();
  }

  *(v4 + 136) = a4;
  return (*(v5 + 8 * (a2 - 6905)))();
}

uint64_t sub_10022AEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x520] > 0xFFFFFFFFDE23BAA9;
  v11 = (a8 - 1443455193) + STACK[0x890];
  STACK[0xFD8] = v11 + 10;
  v11 -= 0x84801FA024976DLL;
  v12 = v11 < 0x21DC4556;
  v13 = v11 > STACK[0x4E0];
  if (v10 != v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(v8 + 8 * ((v9 - 5543) ^ (15 * !v14))))();
}

uint64_t sub_10022AF6C@<X0>(int a1@<W3>, unsigned __int16 a2@<W4>, int a3@<W7>, unint64_t a4@<X8>)
{
  if (a2 == 49033)
  {
    return (*(v4 + 8 * ((a1 - 6716) ^ (245 * (a3 == 1443455197)))))();
  }

  if (a2 != 30757 && a2 != 44155)
  {
    return sub_10022BB28();
  }

  STACK[0xF00] = a4;
  return (*(v4 + 8 * ((5572 * (a2 == (a1 - 25827))) ^ (a1 - 7350))))();
}

uint64_t sub_10022B110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = STACK[0x540] > 0xFFFFFFFFA46AF57DLL;
  LODWORD(STACK[0x1004]) = a8;
  v12 = (a8 - 1443455193) + STACK[0x930];
  STACK[0x1008] = v12 + 10;
  v12 -= 0x3581F5419C49F324;
  v13 = v12 < 0x5B950A82;
  v14 = v12 > STACK[0x500];
  if (v11 != v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  return (*(v8 + 8 * ((v10 - 6049) ^ (54 * v15))))(a1, a2, a3, a4, a5, v9);
}

uint64_t sub_10022B1BC(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a3 == 49033)
  {
    return (*(v8 + 8 * ((STACK[0x7E8] - 7527) ^ (27 * (a8 == 1443455197)))))();
  }

  v10 = STACK[0x7E8];
  if (a3 == 30757)
  {
    STACK[0xB78] = STACK[0xDB8] + STACK[0x410];
    return (*(v8 + 8 * (v10 - 3670)))();
  }

  else if (a3 == 44155)
  {
    return (*(v8 + 8 * (((22 * (v10 ^ 0x256D) + 3930) * (a8 == 1443455201)) ^ (v10 - 7527))))();
  }

  else
  {
    return sub_100232AF4();
  }
}

uint64_t sub_10022B288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v12 = a7 + v9 - 0x58996EC3FA644164;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = *v12;
  v15 = (v13 + 0x7695A575CC8A36DALL) ^ 0xB9DC45633787A904;
  v16 = __ROR8__((v13 + 0x7695A575CC8A36DALL) ^ 0xD716ECD53D61FD7, 8);
  v17 = (((2 * (v16 + v15)) & 0x624BDADAAA74ABALL) - (v16 + v15) - 0x3125ED6D553A55ELL) ^ 0xA203E57AE0998018;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v8;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xC73EF603490C4402;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xC4318A842864C03;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = __ROR8__((v25 + v24 - ((2 * (v25 + v24)) & 0x5003ED14F831B848) + 0x2801F68A7C18DC24) ^ 0x6B61FE989CBB8C57, 8);
  v27 = (v25 + v24 - ((2 * (v25 + v24)) & 0x5003ED14F831B848) + 0x2801F68A7C18DC24) ^ 0x6B61FE989CBB8C57 ^ __ROR8__(v24, 61);
  v28 = (v26 + v27) ^ v11;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((((2 * (v30 + v29)) | 0xCE48F2749E5C0FD2) - (v30 + v29) + 0x18DB86C5B0D1F817) ^ 0x171A3B7BFFFBEC17) >> (8 * (v12 & 7u));
  v32 = *++v12;
  LODWORD(v31) = v31 ^ v14;
  v33 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = v33 - ((2 * v33 - 0x12D4B51466EB924CLL) & 0xB7DFF89850010D16) + 0x5285A1C1F48ABD65;
  v35 = v34 ^ 0xD69E92817BD6995CLL;
  v34 ^= 0x6233B92F1F872F8FuLL;
  v36 = __ROR8__(v35, 8);
  v37 = (0xA5F767D9C0170625 - ((v36 + v34) | 0xA5F767D9C0170625) + ((v36 + v34) | 0x5A0898263FE8F9DALL)) ^ 0x4E6DC75F5DD2360;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v8;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xC73EF603490C4402;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xC4318A842864C03;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x43600812E0A35073;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) & 0xF4AEC9395C1B1A24) - (v47 + v46) + 0x5A89B6351F272EDLL) ^ 0xB0295B14657F10D1;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  LODWORD(v12) = (((((2 * ((v50 + v49) ^ 0xE7B07DB10DD4AE3FLL)) & 0xF34443B77C46693ELL) - ((v50 + v49) ^ 0xE7B07DB10DD4AE3FLL) + 0x65DDE2441DCCB60) ^ 0x11D3E1D4FCDD8EA1) >> (8 * (v12 & 7u))) ^ v32 | (v31 << 8);
  return (*(v10 + 8 * a8))(a1, a2, a3, a4, a5, v11, a6, v12 - ((2 * v12) & 0x51FC) + 10494);
}

uint64_t sub_10022BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = ((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFFLL;
  v9 = __ROR8__(((4 * v6) ^ 0xFFFFFFFFFFFFA7A0) & v8, 8);
  v10 = ((2 * (v9 + 0x7695A575CC8A36DALL)) | 0x7022A8743507DD8) - (v9 + 0x7695A575CC8A36DALL) + 0x7C7EEABC5E57C114;
  v11 = __ROR8__(v10 ^ 0x8EF07B8EF27E213BLL, 8);
  v10 ^= 0x3A5D5020962F97E8uLL;
  v12 = (v11 + v10) ^ 0x5EEE4453CA35DABALL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0x4F513D1335A47E20) - 0x58576176652DC0F0) ^ 0x31F91591C8F6B51DLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0xEE177B11139D0738) - (v17 + v16) - 0x770BBD8889CE839DLL) ^ 0x4FCAB4743F3D3861;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xF3F7473F86F5CA98) - 0x6045C603C851AB4) ^ 0xF5B8BB3781FCA94FLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xDDA3D69289101144) - (v23 + v22) + 0x112E14B6BB77F75DLL) ^ 0x524E1CA45BD4A72ELL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((__ROR8__((((2 * (v26 + v25)) | 0xD9466DCEFCC827ECLL) - (v26 + v25) + 0x135CC918819BEC0ALL) ^ 0x5922F6904AE971CALL, 8) + ((((2 * (v26 + v25)) | 0xD9466DCEFCC827ECLL) - (v26 + v25) + 0x135CC918819BEC0ALL) ^ 0x5922F6904AE971CALL ^ __ROR8__(v25, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 1) & 7u))) ^ *v8;
  v28 = __ROR8__((((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFELL) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = -2 - (((0x896A5A8A3375C925 - v28) | 0x44321AA135EA8897) + ((v28 + 0x7695A575CC8A36DALL) | 0xBBCDE55ECA157768));
  v30 = v29 ^ 0x4943746C663C9740;
  v29 ^= 0xFDEE5FC2026D2193;
  v31 = __ROR8__(v30, 8);
  v32 = (((2 * (v31 + v29)) & 0x6614459ADC22974) - (v31 + v29) + 0x7CCF5DD3291EEB45) ^ 0x22211980E32B31FFLL;
  v33 = v32 ^ __ROR8__(v29, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x96518B1852248A0DLL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xC73EF603490C4402;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xC4318A842864C03;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x43600812E0A35073;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ a6;
  v43 = (((((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 2) & 7u))) ^ *(((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFELL)) << 48) | (v27 << 56);
  v44 = __ROR8__((((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFDLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = ((2 * (v44 + 0x7695A575CC8A36DALL)) | 0x3D89FD3E5B4F36E6) - (v44 + 0x7695A575CC8A36DALL) + 0x613B0160D258648DLL;
  v46 = v45 ^ 0x93B590527E7184A4;
  v45 ^= 0x2718BBFC1A203277uLL;
  v47 = __ROR8__(v46, 8);
  v48 = (((v47 + v45) ^ 0x6EF9CB7972F7D80DLL) - ((2 * ((v47 + v45) ^ 0x6EF9CB7972F7D80DLL)) & 0x1EC2CF7D75C5E63ALL) + 0xF6167BEBAE2F31DLL) ^ 0x3F76E8940220F1AALL;
  v49 = v48 ^ __ROR8__(v45, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) | 0xF7534ACDD6F945F0) - (v50 + v49) - 0x7BA9A566EB7CA2F8) ^ 0xEDF82E7EB95828F5;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x1BA9E0074B1D159CLL) - (v53 + v52) - 0xDD4F003A58E8ACELL) ^ 0xCAEA0600EC82CECCLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xC4318A842864C03;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) & 0xA09F02A9E7818DCCLL) - (v58 + v57) - 0x504F8154F3C0C6E7) ^ 0xECD076B9EC9C696ALL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ a6;
  v62 = v43 | (((((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 3) & 7u))) ^ *(((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFDLL)) << 40);
  v63 = __ROR8__((((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFCLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = ((0x896A5A8A3375C925 - v63) & 0xF03564DE4A2EFF7FLL) + v63 + 0x7695A575CC8A36DALL - ((v63 + 0x7695A575CC8A36DALL) & 0xF23564DE4A2EFF7FLL);
  v65 = v64 ^ 0xFF440A1319F8E0A8;
  v64 ^= 0x4BE921BD7DA9567BuLL;
  v66 = (__ROR8__(v65, 8) + v64) ^ 0x5EEE4453CA35DABALL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((v68 + v67) | 0x8D57977FEE61B155) - ((v68 + v67) | 0x72A86880119E4EAALL) + 0x72A86880119E4EAALL) ^ 0x1B061C67BC453B58;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xC73EF603490C4402;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xC4318A842864C03;
  v74 = __ROR8__(v73, 8);
  v75 = v73 ^ __ROR8__(v72, 61);
  v76 = (((2 * (v74 + v75)) & 0xB23A4AA977BD39C4) - (v74 + v75) + 0x26E2DAAB4421631DLL) ^ 0x6582D2B9A482336ELL;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ a6;
  v79 = v62 | (((((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 4) & 7u))) ^ *(((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFCLL)) << 32);
  v80 = __ROR8__((((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFBLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = -2 - (((0x896A5A8A3375C925 - v80) | 0xC798D438AE193AFLL) + ((v80 + 0x695A575CC8A36DALL) | 0xF38672BC751E6C50));
  v82 = v81 ^ 0x108E38ED9378C78;
  v81 ^= 0xB5A5C820BD663AABLL;
  v83 = (__ROR8__(v82, 8) + v81) ^ 0x5EEE4453CA35DABALL;
  v84 = __ROR8__(v83, 8);
  v85 = v83 ^ __ROR8__(v81, 61);
  v86 = (((2 * (v84 + v85)) & 0xD9B416DA3F939AFALL) - (v84 + v85) - 0x6CDA0B6D1FC9CD7ELL) ^ 0x5747F8AB212B88FLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xC73EF603490C4402;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xC4318A842864C03;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0x43600812E0A35073;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (((2 * (v94 + v93)) | 0xA675ACCB9C021760) - (v94 + v93) + 0x2CC5299A31FEF450) ^ 0x66BB1612FA8C698CLL;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = __ROR8__(v95, 8);
  v98 = v79 & 0xFFFFFFFF00FFFFFFLL | (((((v97 + v96 - ((2 * (v97 + v96)) & 0xEAA2714528B31424) - 0xAAEC75D6BA675EELL) ^ 0x56F7AE3248C61ECLL) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 5) & 7u))) ^ *(((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFBLL)) << 24);
  v99 = __ROR8__((((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFALL) & 0xFFFFFFFFFFFFFFF8, 8) + 0x7695A575CC8A36DALL;
  v100 = __ROR8__(v99 ^ 0xD716ECD53D61FD7, 8);
  v99 ^= 0xB9DC45633787A904;
  v101 = (v100 + v99) ^ 0x5EEE4453CA35DABALL;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x96518B1852248A0DLL;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xC73EF603490C4402;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((v107 + v106) | 0x22396B24FBB76355) - ((v107 + v106) | 0xDDC694DB04489CAALL) - 0x22396B24FBB76356) ^ 0x2E7A738CB9312F56;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (v110 + v109 - ((2 * (v110 + v109)) & 0xE869AFCF90BB5730) - 0xBCB281837A25468) ^ 0xB754DFF528FEFBEBLL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ a6;
  v114 = v98 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v113, 8) + (v113 ^ __ROR8__(v112, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 6) & 7u))) ^ *(((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDFALL)) << 16);
  v115 = __ROR8__((((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDF9) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = ((0x896A5A8A3375C925 - v115) & 0xF8089283B9C192E4) + v115 + 0x7695A575CC8A36DALL - ((v115 + 0x7695A575CC8A36DALL) & 0xFE089283B9C192E4);
  v117 = v116 ^ 0xF379FC4EEA178D33;
  v116 ^= 0x47D4D7E08E463BE0uLL;
  v118 = (__ROR8__(v117, 8) + v116) ^ 0x5EEE4453CA35DABALL;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (((2 * (v120 + v119)) | 0x21609E83DC4587FELL) - (v120 + v119) + 0x6F4FB0BE11DD3C01) ^ 0x6E1C459BC0649F2;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = __ROR8__(v121, 8);
  v124 = __ROR8__((((2 * (v123 + v122)) & 0xBCE23B97C77EB07ELL) - (v123 + v122) + 0x218EE2341C40A7C0) ^ 0xE6B01437554CE3C2, 8);
  v125 = (((2 * (v123 + v122)) & 0xBCE23B97C77EB07ELL) - (v123 + v122) + 0x218EE2341C40A7C0) ^ 0xE6B01437554CE3C2 ^ __ROR8__(v122, 61);
  v126 = (((v124 + v125) | 0x3BC85C615A292667) - ((v124 + v125) | 0xC437A39EA5D6D998) - 0x3BC85C615A292668) ^ 0x378B44C918AF6A64;
  v127 = __ROR8__(v126, 8);
  v128 = v126 ^ __ROR8__(v125, 61);
  v129 = (((2 * (v127 + v128)) | 0xAB7076CBB3B7FBCCLL) - (v127 + v128) - 0x55B83B65D9DBFDE6) ^ 0x16D833773978AD95;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ a6;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = v114 & 0xFFFFFFFFFFFF00FFLL | (((((((2 * (v133 + v132)) & 0xF76EA7785CF54C40) - (v133 + v132) - 0x7BB753BC2E7AA621) ^ 0x7476EE026150B221) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 7) & 7u))) ^ *(((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDF9)) << 8);
  v135 = __ROR8__((((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDF8) & 0xFFFFFFFFFFFFFFF8, 8);
  v136 = ((2 * v135 - 0x12D4B51466EB924CLL) & 0xD042A79580470930) - v135 - 0x5EB6F9408CADBB73;
  v137 = v136 ^ 0x1AAFC2F86C0A64B0;
  v136 ^= 0xAE02E956085BD263;
  v138 = (__ROR8__(v137, 8) + v136) ^ 0x5EEE4453CA35DABALL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) | 0x1E4EA62715516756) - (v140 + v139) - 0xF2753138AA8B3ABLL) ^ 0x9976D80BD88C39A6;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0xC73EF603490C4402;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xC4318A842864C03;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (v147 + v146 - ((2 * (v147 + v146)) & 0x7C1DE5B154B81A78) + 0x3E0EF2D8AA5C0D3CLL) ^ 0x7D6EFACA4AFF5D4FLL;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ a6;
  v151 = v134 | ((((__ROR8__(v150, 8) + (v150 ^ __ROR8__(v149, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((2 * LOBYTE(STACK[0x410]) + ~LOBYTE(STACK[0x410]) + LOBYTE(STACK[0xDB8]) + 8) & 7u))) ^ *(((2 * STACK[0x410]) & 0xFDEDFFF672FD7BFELL) + (STACK[0x410] ^ 0x7EF6FFFB397EBDFFLL) + STACK[0xDB8] - 0x7EF6FFFB397EBDF8));
  STACK[0xC68] = v151 + 0x5B67E4B9D3C4B062 - ((2 * v151) & 0xB6CFC973A78960C4);
  return (*(v7 + 8 * v6))();
}

uint64_t sub_10022CA6C(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x9C8] - 0x51CE20ABD81C9323);
  *(a2 + 56) = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((v2 - 8314) ^ 0x5CB) + ((v2 - 8314) | 0x2448) - 10785)) ^ v2)))();
}

uint64_t sub_10022CADC@<X0>(void *a1@<X1>, int a2@<W8>)
{
  v4 = v2 - 1983524661 + ((a2 - 118835073) & 0x71565FDu);
  a1[202] = v4;
  v5 = a1[99];
  a1[203] = v5;
  return (*(v3 + 8 * ((8089 * ((a2 - 1311) + 0x1E70F80E30E69967 - v5 + v4 > 9)) ^ a2)))();
}

uint64_t sub_10022CBE4(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0x9D8] - 0x51CE20ABD81C9323);
  *(a2 + 1080) = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((v2 - 6779) | 0x981) ^ 0x9DF)) ^ v2)))();
}

uint64_t sub_10022CC60@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = ((a2 + 1573938076) & 0xA22FB6EC ^ 0x89C5D15B) + v2;
  *(a1 + 1712) = v4;
  v5 = STACK[0x9D0];
  *(a1 + 1720) = STACK[0x9D0];
  return (*(v3 + 8 * ((6531 * ((a2 ^ 0x902u) + 0x249B7BAEEC27DBC3 - v5 + v4 > 9)) ^ a2)))();
}

uint64_t sub_10022CD78(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x218];
  v4 = *(*(a2 + 160) - 0x51CE20ABD81C9323);
  v5 = (237 * (LODWORD(STACK[0x218]) ^ 0x137B) - 6552) | 0x2064;
  *(a2 + 872) = v4;
  return (*(v2 + 8 * (((v5 - 9149) * (v4 == 0)) ^ v3)))();
}

uint64_t sub_10022CEE0@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0xBB8] - 0x51CE20ABD81C9323);
  STACK[0xF40] = v2;
  return (*(v1 + 8 * (a1 | (4 * (((v2 == 0) ^ ((a1 - 99) ^ (a1 + 24))) & 1)))))();
}

uint64_t sub_10022CF50()
{
  v3 = v0 & 0x29551BF7;
  v4 = ((v0 & 0x29551BF7) - 2204) ^ 0x24BB;
  v5 = (v1 - 1983515337);
  STACK[0x1118] = v5;
  v6 = STACK[0xAD0];
  STACK[0x1120] = STACK[0xAD0];
  return (*(v2 + 8 * (((v5 + 0x601096E1DDC42BDLL - v6 > 9) * (v4 + 962)) ^ v3)))();
}

uint64_t sub_10022D03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(STACK[0x9E8] - 0x51CE20ABD81C9323);
  *(a2 + 1232) = v73;
  return (*(v72 + 8 * (((v73 == 0) * (((a72 ^ 0x175) - 7794) ^ 0x5CE)) ^ a72)))();
}

uint64_t sub_10022D0AC(uint64_t a1, void *a2)
{
  v5 = (v3 - 1983515337);
  a2[194] = v5;
  v6 = a2[42];
  a2[195] = v6;
  return (*(v4 + 8 * (((v5 + 0x7F4169E09DD5DB75 - v6 > (v2 ^ 0x2196u) - 9315) * ((v2 - 1405422412) & 0x53C505F7 ^ 0x34E)) ^ v2)))();
}

uint64_t sub_10022D170(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{
  *(a2 + 580) = v48;
  if (v48 == 68588956)
  {
    v50 = *(a2 + 704);
    v51 = *(v50 - 0x51CE20ABD81C9333);
    v52 = *(a2 + 168);
    *(v52 - 0x51CE20ABD81C9333) = v51;
    *(v52 - 0x51CE20ABD81C933BLL) = *(v50 - 0x51CE20ABD81C933BLL);
    return (*(v47 + 8 * ((((a47 ^ (v51 == 0x51CE20ABD81C933BLL)) & 1) * (((a4 - 874) | 0x4C4) - 9650)) ^ a47)))();
  }

  else if (v48 == 68545953)
  {
    return (*(v47 + 8 * (((*(*(a2 + 240) - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL) * a38) ^ (a4 - 2046))))();
  }

  else
  {
    return sub_1002310DC();
  }
}

uint64_t sub_10022D274@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3 = *(*(a1 + 1216) - 0x51CE20ABD81C9323);
  *(a1 + 192) = v3;
  return (*(v2 + 8 * (((((v3 == 0) ^ (a2 + 112)) & 1) * (a2 ^ 0x2642)) ^ a2)))();
}

uint64_t sub_10022D2D8@<X0>(void *a1@<X1>, int a2@<W8>)
{
  v4 = v2 - 1983524661 + 7 * ((((a2 ^ 0x224C) - 1829) | 0x50) ^ 0x5E8u);
  a1[210] = v4;
  v5 = a1[54];
  a1[211] = v5;
  return (*(v3 + 8 * ((7437 * ((0x55C3FB3EA95A6804 - v5 + v4) > 9)) ^ a2 ^ 0x224C)))();
}

uint64_t sub_10022D3C4(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x220];
  v4 = 5 * (LODWORD(STACK[0x220]) ^ 0x11C7);
  v5 = LODWORD(STACK[0x220]) ^ 0x3613;
  v6 = *(STACK[0xA28] - 0x51CE20ABD81C9323);
  *(a2 + 1328) = v6;
  return (*(v2 + 8 * (((v6 == 0) * (v4 ^ (v5 - 4589))) ^ v3)))();
}

uint64_t sub_10022D548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45)
{
  v46 = *(*(a2 + 1144) - 0x51CE20ABD81C9323);
  *(a2 + 624) = v46;
  return (*(v45 + 8 * (((v46 != 0) * ((a45 ^ 0x33F9) - 14761 + 84 * (a45 ^ 0x26C2))) ^ a45)))();
}

uint64_t sub_10022D5C4(uint64_t a1, void *a2)
{
  v5 = (v3 - 1983515337);
  a2[190] = v5;
  v6 = a2[92];
  a2[191] = v6;
  return (*(v4 + 8 * (((v5 - v6 + ((v2 + 3864) ^ 0x30CDA683401ACDBBuLL) < 0xA) * (((v2 - 590245467) & 0x232E59D7) - 157)) ^ v2)))();
}

uint64_t sub_10022D678(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, unsigned __int8 a41, int a42)
{
  *(a2 + 1228) = v43;
  if (v43 == 68588956)
  {
    v45 = *(a2 + 976);
    v46 = *(v45 - 0x51CE20ABD81C9333);
    v47 = *(a2 + 1256);
    *(v47 - 0x51CE20ABD81C9333) = v46;
    *(v47 - 0x51CE20ABD81C933BLL) = *(v45 - 0x51CE20ABD81C933BLL);
    return (*(v42 + 8 * (((((v46 == 0x51CE20ABD81C933BLL) ^ (a4 - 1)) & 1) * ((a42 & 0x37FC5EF7) - 7866)) ^ (a4 - 1428))))();
  }

  else if (v43 == 68545953)
  {
    return (*(v42 + 8 * ((((a41 ^ (*(STACK[0xC50] - 0x5A0411E37F4B987ALL) == 0x51CE20ABD81C933BLL)) & 1) * a39) ^ a40)))();
  }

  else
  {
    return sub_100230570();
  }
}

uint64_t sub_10022D700@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 0x51CE20ABD81C933BLL) = v1;
  *(v1 - 0x51CE20ABD81C9333) = *(a1 + v4);
  *(a1 + v4) = v1;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_10022D788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56)
{
  v57 = *(*(a2 + 664) - 0x51CE20ABD81C9323);
  *(a2 + 984) = v57;
  return (*(v56 + 8 * (((((a56 ^ (v57 == 0)) & 1) == 0) * a46) ^ a47)))();
}

uint64_t sub_10022D7F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  v57 = v55 - 1983524661 + ((a55 + 6282) | 0x42Cu);
  a2[220] = v57;
  v58 = a2[151];
  a2[221] = v58;
  return (*(v56 + 8 * ((12261 * ((((a55 - 1845) | 0x4Cu) ^ 0x84801FC200DC00uLL) - v58 + v57 > 9)) ^ a55)))();
}

uint64_t sub_10022D8BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, unsigned __int8 a36)
{
  *(a2 + 44) = v37;
  if (v37 == 68588956)
  {
    v39 = *(a2 + 888);
    v40 = *(v39 - 0x51CE20ABD81C9333);
    v41 = *(a2 + 1024);
    *(v41 - 0x51CE20ABD81C9333) = v40;
    *(v41 - 0x51CE20ABD81C933BLL) = *(v39 - 0x51CE20ABD81C933BLL);
    return (*(v36 + 8 * ((((a36 ^ (v40 == 0x51CE20ABD81C933BLL)) & 1) * (a35 & 0xB0F2EBFD ^ 0xB0E)) ^ (a4 - 2605))))();
  }

  else if (v37 == 68545953)
  {
    return (*(v36 + 8 * (((*(STACK[0xA90] - 0x5A0411E37F4B987ALL) != 0x51CE20ABD81C933BLL) * a34) ^ (a4 - 880))))();
  }

  else
  {
    return sub_10022FD70();
  }
}

uint64_t sub_10022D944@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v14 - 0x51CE20ABD81C933BLL) = v13;
  *(v13 - 0x51CE20ABD81C9333) = *a1;
  return (*(v15 + 8 * a13))();
}

uint64_t sub_10022D984(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, unsigned __int8 a48)
{
  if (v49 == 68545953)
  {
    return (*(v48 + 8 * (((*(a2[12] - 0x1138F6A92264F425) == (a48 ^ 0x82)) * a38) ^ a39)))();
  }

  if (v49 != 68588956)
  {
    JUMPOUT(0x100230228);
  }

  v50 = *(a2[37] - 0x51CE20ABD81C9323);
  a2[137] = v50;
  return (*(v48 + 8 * (((v50 == 0) * a36) ^ a37)))();
}

uint64_t sub_10022DA00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v24 = ((3108 * (a22 ^ 0x620)) ^ 0x89C5D15B) + v22;
  a2[188] = v24;
  v25 = a2[86];
  a2[189] = v25;
  return (*(v23 + 8 * ((((0x2DA672EE3CF67AA8 - v25 + v24) > 9) * (((2 * a22) ^ 0xCFA) + 170)) ^ a22)))();
}

uint64_t sub_10022DB08(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x21C];
  v4 = LODWORD(STACK[0x21C]) + 465;
  v5 = *(*(a2 + 1136) - 0x51CE20ABD81C9323);
  *(a2 + 560) = v5;
  return (*(v2 + 8 * (((((v5 == 0) ^ (v3 + 102)) & 1) * (v4 ^ 0x23D0)) ^ v3)))();
}

uint64_t sub_10022DB7C@<X0>(void *a1@<X1>, int a2@<W8>)
{
  v4 = (v2 - 1983515337);
  a1[206] = v4;
  v5 = a1[114];
  a1[207] = v5;
  return (*(v3 + 8 * (((v4 + 0x5A9B89344F4A783CLL - v5 > (a2 + 148) - 9315) * (a2 - 6191)) ^ a2)))();
}

uint64_t sub_10022DC68(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 784) - 0x51CE20ABD81C9323);
  *(a2 + 152) = v4;
  return (*(v3 + 8 * ((7 * ((((v2 + 417) ^ (v4 == 0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_10022DCD0(uint64_t a1, void *a2)
{
  v5 = v3 - 1983524661 + (v2 ^ 0x6A7u);
  a2[192] = v5;
  v6 = a2[29];
  a2[193] = v6;
  return (*(v4 + 8 * ((((0x51EB5D73819A7EB6 - v6 + v5) > 9) * ((v2 - 1731009266) & 0x672CF8FF ^ 0x7E4)) ^ v2)))();
}

uint64_t sub_10022DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x1100] + (a8 - 1443455193) - 0x249B7BAED2322DEELL;
  v11 = v10 < 0x19F5AEAC;
  v12 = v10 > STACK[0x10F8] + 435531436;
  if (STACK[0x10F8] > 0xFFFFFFFFE60A5153 != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * (((2 * v12) | (8 * v12)) ^ (v9 - 3367))))();
}

uint64_t sub_10022DE5C@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W7>, uint64_t a4@<X8>)
{
  v6 = v4 + 10;
  v7 = *(a1 + 1458);
  if (v7 == 30757)
  {
    v9 = *(a1 + 1080);
    STACK[0x9D0] = v6;
    *(a1 + 496) = a3;
    *(a1 + 896) = v9 + a4 - 0x249B7BAEEC27DC9ALL;
    return (*(v5 + 8 * (a2 - 2447)))();
  }

  else if (v7 == 49033 || v7 == 44155)
  {
    STACK[0x9D0] = v6;
    *(a1 + 496) = a3;
    return (*(v5 + 8 * (a2 - 3357)))();
  }

  else
  {
    return sub_100234498();
  }
}

uint64_t sub_10022DEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x1050] + (a8 - 1443455193) - 0x51EB5D73090B37C1;
  v11 = v10 < 0x788F46EB;
  v12 = v10 > STACK[0x1048] + 2022655723;
  if (STACK[0x1048] > 0xFFFFFFFF8770B914 != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((63 * v12) ^ (v9 - 7839))))();
}

uint64_t sub_10022DF84@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W7>, uint64_t a4@<X8>)
{
  v6 = v4 + 10;
  v7 = *(a1 + 1414);
  if (v7 == 49033 || v7 == 44155)
  {
    *(a1 + 232) = v6;
    *(a1 + 1124) = a3;
    return (*(v5 + 8 * (a2 - 4757)))();
  }

  else if (v7 == 30757)
  {
    v8 = *(a1 + 152);
    *(a1 + 232) = v6;
    *(a1 + 1124) = a3;
    *(a1 + 960) = v8 + a4 - 0x51EB5D73819A7EACLL;
    return (*(v5 + 8 * (a2 - 4757)))();
  }

  else
  {
    return sub_1002313C8();
  }
}

uint64_t sub_10022DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x1040] + (a8 - 1443455193) - 0x30CDA6827F9AE8C4;
  v11 = v10 < 0xC0800109;
  v12 = v10 > STACK[0x1038] + 3229614345u;
  if (STACK[0x1038] > 0xFFFFFFFF3F7FFEF6 != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((439 * v12) ^ (v9 - 2445))))();
}

uint64_t sub_10022E0CC@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W7>, uint64_t a4@<X8>)
{
  v6 = v4 + 10;
  v7 = *(a1 + 1412);
  if (v7 == 49033 || v7 == 44155)
  {
    *(a1 + 736) = v6;
    *(a1 + 516) = a3;
    return (*(v5 + 8 * (a2 - 2839)))();
  }

  else if (v7 == 30757)
  {
    v8 = *(a1 + 624);
    *(a1 + 736) = v6;
    *(a1 + 516) = a3;
    *(a1 + 272) = v8 + a4 - 0x30CDA683401AE9CDLL;
    return (*(v5 + 8 * (a2 - 2839)))();
  }

  else
  {
    return sub_100230704();
  }
}

uint64_t sub_10022E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xA14]) = a8;
  v10 = LOWORD(STACK[0xFE6]);
  STACK[0xAD0] = STACK[0xFE8];
  return (*(v8 + 8 * (((v10 == 49033) * (2141 * (v9 ^ 0x246F) - 6202)) ^ (v9 - 6905))))();
}

uint64_t sub_10022E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x10E0] + (a8 - 1443455193) - 0x55C3FB3E5699BDB1;
  v11 = v10 < 0x52C0AA49;
  v12 = v10 > STACK[0x10D8] + 1388358217;
  if (STACK[0x10D8] > 0xFFFFFFFFAD3F55B6 != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((113 * !v12) ^ (v9 - 7355))))();
}

uint64_t sub_10022E380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W7>, uint64_t a5@<X8>)
{
  v7 = v5 + 10;
  v8 = *(a2 + 1482);
  if (v8 == 30757)
  {
    v10 = *(a2 + 192) + a5 - 0x55C3FB3EA95A67FALL;
    *(a2 + 432) = v7;
    *(a2 + 496) = a4;
    *(a2 + 88) = v10;
    return (*(v6 + 8 * (((v10 != 0) * (a3 ^ 0x247E)) | (a3 + 220))))(a1);
  }

  else if (v8 == 49033 || v8 == 44155)
  {
    *(a2 + 432) = v7;
    return (*(v6 + 8 * (a3 - 7355)))(a1);
  }

  else
  {
    return sub_10023434C(a1, a2);
  }
}

uint64_t sub_10022E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x1020] + (a8 - 1443455193) - 0x248C4EB148B0F86BLL;
  v11 = v10 < 0x2A18F13B;
  v12 = v10 > STACK[0x1018] + 706277691;
  if (STACK[0x1018] > 0xFFFFFFFFD5E70EC4 != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((43 * v12) ^ (v9 - 19))))();
}

uint64_t sub_10022E49C@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W7>, uint64_t a4@<X8>)
{
  v6 = v4 + 10;
  v7 = *(a1 + 1372);
  if (v7 == 30757)
  {
    v9 = *(a1 + 1328) + a4 - 0x248C4EB172C9E9A6;
    *(a1 + 312) = v6;
    *(a1 + 500) = a3;
    *(a1 + 720) = v9;
    return (*(v5 + 8 * (((v9 == 0) * ((a2 - 1948067638) & 0x741D1FDF ^ 0x1DF7)) ^ (a2 - 2305))))();
  }

  else if (v7 == 49033 || v7 == 44155)
  {
    *(a1 + 312) = v6;
    return (*(v5 + 8 * (a2 - 4564)))();
  }

  else
  {
    return sub_1002320F4();
  }
}

uint64_t sub_10022E4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xC9C]) = a8;
  v10 = LOWORD(STACK[0xF96]);
  STACK[0xB90] = STACK[0xF98];
  return (*(v8 + 8 * ((v10 == (((v9 - 8300) | 0x83A) - 19633)) | (v9 - 6194))))();
}

uint64_t sub_10022E5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x1060] + (a8 - 1443455193) - 0x7F4169E01884A2C8;
  v11 = v10 < 0x855138A3;
  v12 = v10 > STACK[0x1058] + 2236692643u;
  if (STACK[0x1058] > 0xFFFFFFFF7AAEC75CLL != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((13 * !v12) | (v9 - 3066))))();
}

uint64_t sub_10022E6A0@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W7>, uint64_t a4@<X8>)
{
  v6 = v4 + 10;
  v7 = *(a1 + 1420);
  if (v7 == 49033 || v7 == 44155)
  {
    *(a1 + 336) = v6;
    *(a1 + 968) = a3;
    return (*(v5 + 8 * (a2 - 7794)))();
  }

  else if (v7 == 30757)
  {
    v8 = *(a1 + 1232);
    *(a1 + 336) = v6;
    *(a1 + 968) = a3;
    *(a1 + 352) = v8 + a4 - 0x7F4169E09DD5DB6BLL;
    return (*(v5 + 8 * (a2 - 7794)))();
  }

  else
  {
    return sub_100232320();
  }
}

uint64_t sub_10022E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x1030] + (a8 - 1443455193) - 0x2DA672ED627596FFLL;
  v11 = v10 < 0xDA80E39F;
  v12 = v10 > STACK[0x1028] + 3665879967u;
  if (STACK[0x1028] > 0xFFFFFFFF257F1C60 != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((242 * v12) ^ (v9 - 523))))();
}

uint64_t sub_10022E85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x10C0] + (a8 - 1443455193) - 0x5A9B8933C92930E0;
  v11 = v10 < 0x86214752;
  v12 = v10 > STACK[0x10B8] + 2250327890u;
  if (STACK[0x10B8] > 0xFFFFFFFF79DEB8ADLL != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((97 * v12) ^ (v9 - 179))))();
}

uint64_t sub_10022E92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W7>, uint64_t a5@<X8>)
{
  v7 = v5 + 10;
  v8 = *(a2 + 1484);
  if (v8 == 30757)
  {
    v10 = *(a2 + 560) + a5 - 0x5A9B89344F4A7832;
    *(a2 + 912) = v7;
    *(a2 + 444) = a4;
    *(a2 + 568) = v10;
    return (*(v6 + 8 * (((v10 != 0) * ((a3 - 8093) ^ 0x40D)) ^ (a3 - 244))))(a1);
  }

  else if (v8 == 49033 || v8 == 44155)
  {
    *(a2 + 912) = v7;
    return (*(v6 + 8 * (a3 - 7238)))(a1);
  }

  else
  {
    return sub_10023750C(a1, a2);
  }
}

uint64_t sub_10022EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x10A0] + (a8 - 1443455193) - 0x1E70F80DFCD4228DLL;
  v11 = v10 < 0x341277A0;
  v12 = v10 > STACK[0x1098] + 873625504;
  if (STACK[0x1098] > 0xFFFFFFFFCBED885FLL != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((212 * v12) ^ (v9 - 245))))();
}

uint64_t sub_10022EB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W7>, uint64_t a5@<X8>)
{
  v7 = v5 + 10;
  v8 = *(a2 + 1486);
  if (v8 == 30757)
  {
    v10 = *(a2 + 56) + a5 - 0x1E70F80E30E69A2DLL;
    *(a2 + 792) = v7;
    *(a2 + 444) = a4;
    *(a2 + 1280) = v10;
    return (*(v6 + 8 * (((v10 == 0) * (((a3 - 3180) | 0x67C) ^ 0x1EF6)) ^ (a3 - 5391))))(a1);
  }

  else if (v8 == 49033 || v8 == 44155)
  {
    *(a2 + 792) = v7;
    return (*(v6 + 8 * (a3 - 7805)))(a1);
  }

  else
  {
    return sub_1002373B0(a1, a2);
  }
}

uint64_t sub_10022EBC0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(a1 + 768) = *(a1 + 1472);
  v4 = LODWORD(STACK[0xFFC]) != 1443455193 || LOWORD(STACK[0x1002]) != 30757;
  return (*(v2 + 8 * (((8 * v4) | (16 * v4)) ^ (a2 - 3677))))();
}

uint64_t sub_10022EC10@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v7 = *(v4 + 1468);
  *(v4 + 72) = v2;
  *(v4 + 1584) = v6;
  *(v4 + 1590) = v3;
  *(v4 + 1592) = v7;
  *(v4 + 1596) = *(v4 + 252);
  *(v4 + 1600) = *(v4 + 544);
  *(v4 + 848) = *(v4 + 304);
  return (*(v5 + 8 * ((((3 * ((88 * (a2 ^ 0x2401) + 1020860804) & 0xC326E56F ^ 0x263B)) ^ 0x7F3) * (v2 != a1)) ^ (88 * (a2 ^ 0x2401)))))();
}

uint64_t sub_10022ECF0()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x3440)))(32);
  *(v2 + 1024) = v3 + 0x51CE20ABD81C933BLL;
  return (*(v0 + 8 * ((1010 * (((v1 - 85) ^ 0x55 ^ (v3 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_10022ED60(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(v5 + 1608) = v4;
  *(a1 + 16) = ((v1 - 6748) ^ 0x2030AA27) + v2;
  v7 = (*(v3 + 8 * (v1 ^ 0x37B8)))((v2 - 1443455183));
  *(a1 + 24) = v7;
  return (*(v3 + 8 * (((v7 == 0) * (v1 - 7624)) ^ v1)))();
}

uint64_t sub_10022F1A4@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + 8 * (v2 ^ 0x213D)))(a1 - 0x51CE20ABD81C933BLL);
  STACK[0xD08] = 0x51CE20ABD81C933BLL;
  return (*(v1 + 8 * (((LODWORD(STACK[0xC8C]) == (((v2 - 2002) | 0x2428) ^ 0x416B1F0)) * ((189 * (v2 ^ 0x812)) ^ 0x28E)) ^ v2)))(v3);
}

uint64_t sub_10022F4D8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xC1D)))();
  *(STACK[0xCC8] - 0x51CE20ABD81C9323) = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10022F574@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 ^ 0x3AE9)))(a1 - 0x51CE20ABD81C933BLL);
  STACK[0xCC8] = 0x51CE20ABD81C933BLL;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10022F864()
{
  v2 = (*(v1 + 8 * (v0 + 8185)))();
  *(STACK[0xE18] - 0x51CE20ABD81C9323) = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10022F938@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + 8 * (v2 ^ 0x26AD)))(a1 - 0x51CE20ABD81C933BLL);
  STACK[0xE18] = 0x51CE20ABD81C933BLL;
  return (*(v1 + 8 * ((7204 * (LODWORD(STACK[0xF14]) == ((v2 + 550937327) & 0xDF294FDF ^ 0x416B3A5 ^ ((v2 - 3870) | 0x2404)))) ^ v2)))(v3);
}

uint64_t sub_10022FC6C()
{
  v2 = (*(v1 + 8 * (v0 + 3965)))();
  *(STACK[0xDC0] - 0x51CE20ABD81C9323) = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10022FCE8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 ^ 0xDC8;
  v4 = (v1 ^ 0x3AD4) - 1214;
  v5 = (*(v2 + 8 * (v1 ^ 0x3793)))(a1 - 0x51CE20ABD81C933BLL);
  STACK[0xDC0] = 0x51CE20ABD81C933BLL;
  return (*(v2 + 8 * (((LODWORD(STACK[0xA74]) == 68588956) * (v4 ^ 0x1FA6)) | v3)))(v5);
}

uint64_t sub_10022FDE0()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x85D)))();
  *(v1 - 0x51CE20ABD81C9323) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10022FFE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  STACK[0xA30] = v3;
  *(a1 + 160) = 0x51CE20ABD81C933BLL;
  *(a1 + 596) = 1443455193;
  *(a1 + 328) = 0x3830FBAD5D6B0614;
  v7 = a3 == a2 || v3 == 0;
  return (*(v5 + 8 * ((v7 * (((v4 - 7510) | 0x140) + ((v4 + 1814) ^ 0xFFFFDBDA))) ^ v4)))();
}

uint64_t sub_1002300B8(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x39C];
  *(a2 + 6648) = (LODWORD(STACK[0x39C]) + 7196) ^ (1949688233 * ((((v3 - 240) | 0x698609EA) - ((v3 - 240) & 0x698609EA)) ^ 0x8EC15F61));
  v5 = (*(v2 + 8 * (v4 ^ 0x2803)))(v3 - 240);
  STACK[0xE30] = *(v2 + 8 * v4);
  return (*(v2 + 8 * (v4 ^ 0x705)))(v5);
}

uint64_t sub_1002301F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (v5 == 68545953)
  {
    LODWORD(STACK[0xA40]) = 1917891169 * *(*(a2 + 96) - 0x1138F6A92264F476) - 1356996924;
    return (*(v4 + 8 * (a4 - 900)))();
  }

  else if (v5 == 68588956)
  {
    return (*(v4 + 8 * (a4 - 900)))();
  }

  else
  {
    *(a2 + 868) = v5;
    return (*(v4 + 8 * (a4 - 2257)))();
  }
}

uint64_t sub_100230294(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x3A0];
  v4 = 3755 * (STACK[0x3A0] ^ 0xEE);
  *(a2 + 112) = *(v2 + 8 * STACK[0x3A0]);
  return (*(v2 + 8 * ((v4 ^ 0xDF3) + v3)))();
}

uint64_t sub_100230424@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v4 = *(v2 - 0x1138F6A92264F47ELL);
  STACK[0xC50] = v4;
  return (*(v3 + 8 * (((v4 != a1) * ((a2 ^ 0x1A77) + (a2 ^ 0x9B7) - 5029)) ^ a2)))();
}

uint64_t sub_1002304C4()
{
  v3 = (*(v0 + 8 * (v2 ^ 0x26EE)))(32);
  *(v1 + 1256) = v3 + 0x51CE20ABD81C933BLL;
  return (*(v0 + 8 * (((v3 == 0) * (((1361 * (v2 ^ 0xF6A)) ^ 0xFFFFC6E8) + v2 + 5373)) ^ v2)))();
}

uint64_t sub_1002305DC()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x2450)))();
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100230690@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 0x1138F6A92264F486);
  *(a1 + 1144) = 0x51CE20ABD81C933BLL;
  *(a1 + 736) = 0x30CDA683401AE9D7;
  return (*(v4 + 8 * (((v5 == a3) * (STACK[0x368] ^ 0x159)) ^ (a2 - 2854))))();
}

uint64_t sub_1002307A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a2 + 1124) = 1443455193;
  v10 = *(v9 - 0x1138F6A92264F486);
  *(a2 + 968) = 1443455193;
  *(a2 + 784) = 0x51CE20ABD81C933BLL;
  *(a2 + 232) = 0x51EB5D73819A7EB6;
  return (*(v8 + 8 * (((v10 == a7) * ((((v7 - 2168) | 0x2024) - 8986) ^ (v7 + 2016201459) & 0x87D3297C)) ^ (v7 + 1269))))();
}

uint64_t sub_100230890(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x368];
  v4 = 3 * (STACK[0x368] ^ 0x370);
  *(a2 + 752) = *(v2 + 8 * STACK[0x368]);
  return (*(v2 + 8 * (v3 + v4 - 623)))();
}

uint64_t sub_100230A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W7>, uint64_t a5@<X8>)
{
  v7 = v5 + 10;
  v8 = *(a2 + 1374);
  if (v8 == 30757)
  {
    v10 = *(a2 + 1096) + a5 - 0x2DA672EE3CF67A9ELL;
    *(a2 + 688) = v7;
    *(a2 + 1020) = a4;
    *(a2 + 1104) = v10;
    v11 = *(*(a2 + 96) - 0x1138F6A92264F472);
    if (v11 == 408423770)
    {
      return (*(v6 + 8 * (a3 - 6816)))(a1);
    }

    else if (v11 == 408423771)
    {
      return (*(v6 + 8 * (((a3 - 4903) ^ 0x3BF) + a3 - 8701)))(a1);
    }

    else
    {
      return sub_10023322C(a1, a2);
    }
  }

  else if (v8 == 49033 || v8 == 44155)
  {
    *(a2 + 688) = v7;
    *(a2 + 1020) = a4;
    return (*(v6 + 8 * (a3 - 6816)))(a1);
  }

  else
  {
    return sub_10022E830(a1, a2);
  }
}

uint64_t sub_100230AEC@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26)
{
  *(v27 - 0x51CE20ABD81C933BLL) = v26;
  *(v26 - 0x51CE20ABD81C9333) = *a1;
  return (*(v28 + 8 * a26))();
}

uint64_t sub_100230B70@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(v28 - 0x51CE20ABD81C933BLL) = v27;
  *(v27 - 0x51CE20ABD81C9333) = *(a1 + v29);
  *(a1 + v29) = v27;
  return (*(v30 + 8 * a27))();
}

uint64_t sub_100230C88()
{
  v3 = (*(v1 + 8 * (v2 ^ 0x392C)))();
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v1 + 8 * v2))(v3, &STACK[0xA48]);
}

uint64_t sub_100230DA0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *(a1 + v17) = v16;
  *(a1 - 0x5A0411E37F4B9882) = v16;
  return (*(v18 + 8 * a16))();
}

uint64_t sub_100230E84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, int a3@<W8>)
{
  v5 = *(v3 - 0x1138F6A92264F47ELL);
  *(a1 + 240) = v5;
  return (*(v4 + 8 * (((v5 == a2) * ((a3 ^ 0xFFFFC7C2) + a3 - 1997)) ^ a3)))();
}

uint64_t sub_100230F10()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x2197)))(32);
  STACK[0xAF0] = v2 + 0x51CE20ABD81C933BLL;
  return (*(v0 + 8 * (((v2 != 0) * ((v1 + 6736) ^ 0x2257)) ^ v1)))();
}

uint64_t sub_100230FBC(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(a1 + 16) = 1983515379;
  v4 = (*(v1 + 8 * (v2 ^ 0xBE7)))(42);
  *(a1 + 24) = v4;
  return (*(v1 + 8 * (((4 * ((((((v2 - 1918690153) & 0x725CD77F) + 3567) ^ (v4 == 0)) & 1) == 0)) & 0xF7 | (8 * (((((v2 - 105) & 0x7F) - 17) ^ ~(v4 == 0)) & 1))) ^ v2)))();
}

uint64_t sub_10023113C()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x37CA)))();
  *(v1 - 0x51CE20ABD81C9323) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100231454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(*(a2 + 96) - 0x1138F6A92264F486);
  STACK[0x9E8] = 0x51CE20ABD81C933BLL;
  *(a2 + 336) = 0x7F4169E09DD5DB75;
  return (*(v8 + 8 * (((v9 == a7) * ((((v7 - 10505) | 0x142) + 8958) ^ (v7 - 1197))) ^ v7)))();
}

uint64_t sub_100231564(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a4 ^ 0x3088;
  v6 = a4 ^ 0xDD;
  v7 = 11 * (a4 ^ 0x246E);
  v8 = (*(v4 + 8 * ((a4 ^ 0x3088) + 5277)))((*(a2 + 496) - 1443455193));
  STACK[0x10E8] = v8;
  if (v8)
  {
    v9 = 68588956;
  }

  else
  {
    v9 = 68545947;
  }

  LODWORD(STACK[0x10F4]) = v9;
  return (*(v4 + 8 * ((((v6 ^ (v8 == 0)) & 1) * (v7 + 457)) ^ v5)))();
}

uint64_t sub_1002317B0(uint64_t a1)
{
  v4 = v3 - ((2 * v3 + 334315086) & 0x38A264E0) + 1179111831;
  v5 = v4 ^ 0xADADCD8B;
  v6 = (v4 << (((14 * (v1 ^ 0xA0) + 10) & 0xF5) + 13)) & 0x63F9FFF6 ^ 0x20A064E0;
  LODWORD(STACK[0x870]) = v6;
  LODWORD(STACK[0x880]) = v5;
  return (*(v2 + 8 * ((14 * (v1 ^ 0x1DA0)) | (2 * (v6 + v5 == 838664187)) | (8 * (v6 + v5 == 838664187)))))(a1, 0x96518B1852248A0DLL);
}

uint64_t sub_1002318B4(unint64_t a1)
{
  v5 = *(v3 + 720);
  STACK[0x9A0] = v5;
  v7 = (v2 - 838664187) < 8 || v5 - a1 < 0x10;
  v8 = *(v4 + 8 * (((14 * (((v1 + 4685) | 0x102) ^ 0x21D9) - 9313) * v7) ^ v1));
  STACK[0x9B0] = a1;
  return v8();
}

uint64_t sub_1002319A0()
{
  v3 = *(v2 + 8 * (((6 * (v0 ^ 0x256C) - 11413 + 706 * (v0 ^ 0x2340)) * (v1 < 0x10)) ^ v0));
  LODWORD(STACK[0x860]) = v1;
  return v3();
}

uint64_t sub_1002319F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v10 + 8 * a8);
  LODWORD(STACK[0x990]) = v8 & 0xFFFFFFF8;
  return v11(-(v8 & 0xFFFFFFF8), (LODWORD(STACK[0x870]) + LODWORD(STACK[0x880]) - 838664188), a3, a4, a5, a6, v9 - (v8 & 0xFFFFFFF8));
}

uint64_t sub_100231A74@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W7>, int a8@<W8>)
{
  v29 = (a2 + v15 + 8);
  v30.i64[0] = v8 + (a8 + v15 + 8);
  v31.i64[0] = v8 + v29;
  v31.i64[1] = v8 + (v14 + v15 + 8);
  v32.i64[0] = v8 + (v13 + v15 + 8);
  v32.i64[1] = v8 + (v12 + v15 + 8);
  v33 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v34.i64[0] = v8 + (v11 + v15 + 8);
  v34.i64[1] = v8 + (v10 + v15 + 8);
  v30.i64[1] = v8 + v9 + v15 + 1867 * (a7 ^ 0x2518u) + 8;
  v35 = vandq_s8(v34, v33);
  v36 = vandq_s8(v32, v33);
  v37 = vandq_s8(v31, v33);
  v38 = vandq_s8(v30, v33);
  v39 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v41 = vdupq_n_s64(0x38uLL);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v27);
  v43 = vaddq_s64(v40, v27);
  v44 = vaddq_s64(v39, v27);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v27);
  v46 = vdupq_n_s64(v16);
  v47 = vorrq_s8(v45, v46);
  v48 = vdupq_n_s64(0xF4F5B660E7FCC8A4);
  v49 = vsubq_s64(vorrq_s8(v42, v46), vorrq_s8(v42, v48));
  v50 = vsubq_s64(vorrq_s8(v43, v46), vorrq_s8(v43, v48));
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v44, v46), vorrq_s8(v44, v48)), v48);
  v52 = vaddq_s64(v50, v48);
  v53 = vaddq_s64(v49, v48);
  v54 = vdupq_n_s64(v18);
  v55 = veorq_s8(v53, v54);
  v56 = vaddq_s64(vsubq_s64(v47, vorrq_s8(v45, v48)), v48);
  v57 = veorq_s8(v52, v54);
  v58 = veorq_s8(v51, v54);
  v59 = veorq_s8(v56, v54);
  v60 = vdupq_n_s64(v19);
  v61 = veorq_s8(v56, v60);
  v62 = veorq_s8(v51, v60);
  v63 = veorq_s8(v52, v60);
  v64 = veorq_s8(v53, v60);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v63);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v68 = vaddq_s64(v65, v61);
  v69 = veorq_s8(v67, v26);
  v70 = veorq_s8(v66, v26);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v64), v26);
  v72 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v73 = veorq_s8(v68, v26);
  v74 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v75 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v76 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v77 = veorq_s8(v73, v72);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v74), v28);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v75), v28);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v76), v28);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77), v28);
  v82 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v85 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v86 = veorq_s8(v80, v84);
  v87 = veorq_s8(v79, v83);
  v88 = veorq_s8(v78, v82);
  v89 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v88);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v87);
  v92 = vaddq_s64(v89, v86);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v94 = vdupq_n_s64(a3);
  v95 = vdupq_n_s64(a4);
  v96 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v93, v93), v94), v93), v95);
  v97 = vdupq_n_s64(a5);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), v94), v92), v95), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v91, v91), v94), v91), v95), v97);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v90, v90), v94), v90), v95), v97);
  v101 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v103 = veorq_s8(v96, v97);
  v104 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v105 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v106 = veorq_s8(v99, v104);
  v107 = veorq_s8(v98, v102);
  v108 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v110 = veorq_s8(v103, v101);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v107);
  v112 = vaddq_s64(v109, v106);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v110);
  v114 = vaddq_s64(v108, v105);
  v115 = vdupq_n_s64(a6);
  v116 = vdupq_n_s64(v20);
  v117 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v115), v113), v116);
  v118 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v115), v111), v116);
  v119 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v115), v112), v116);
  v120 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), v115), v114), v116);
  v121 = vdupq_n_s64(v22);
  v122 = veorq_s8(v120, v121);
  v123 = veorq_s8(v119, v121);
  v124 = veorq_s8(v118, v121);
  v125 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v126 = veorq_s8(v117, v121);
  v127 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v129 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v130 = veorq_s8(v124, v128);
  v131 = veorq_s8(v123, v127);
  v132 = veorq_s8(v122, v125);
  v133 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v132);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v129);
  v137 = veorq_s8(vaddq_s64(v133, v130), v24);
  v138 = veorq_s8(vaddq_s64(v134, v131), v24);
  v139 = veorq_s8(v135, v24);
  v140 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v142 = veorq_s8(v136, v24);
  v143 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v144 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v145 = veorq_s8(v138, v143);
  v146 = veorq_s8(v137, v141);
  v147 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v149 = veorq_s8(v142, v140);
  v150 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v149);
  v152 = veorq_s8(vaddq_s64(v147, v144), v23);
  v153 = veorq_s8(vaddq_s64(v148, v145), v23);
  v154 = veorq_s8(vaddq_s64(v150, v146), v23);
  v155 = veorq_s8(v151, v23);
  v156 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v158 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v159 = veorq_s8(v153, v157);
  v160 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, v156));
  v163 = vaddq_s64(v161, v159);
  v164 = vaddq_s64(v160, v158);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL)));
  v166 = vdupq_n_s64(0x1D27AE2D84AF8428uLL);
  v167 = vdupq_n_s64(0x8E93D716C257C214);
  v168 = vdupq_n_s64(0x7EAD9557728229EAuLL);
  v171.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v162, vandq_s8(vaddq_s64(v162, v162), v166)), v167), v168), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v41)));
  v169 = veorq_s8(vaddq_s64(vsubq_s64(v165, vandq_s8(vaddq_s64(v165, v165), v166)), v167), v168);
  v171.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v163, vandq_s8(vaddq_s64(v163, v163), v166)), v167), v168), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v41)));
  v171.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v164, vandq_s8(vaddq_s64(v164, v164), v166)), v167), v168), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v41)));
  v171.val[3] = vshlq_u64(v169, vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v41)));
  *(v21 + v29) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v171, v25)), *(v8 + v29 - 7));
  return (*(v17 + 8 * ((227 * (a1 == v15)) ^ a7)))();
}

uint64_t sub_1002320F4(uint64_t a1, uint64_t a2)
{
  *(a2 + 600) = 0;
  *(a2 + 500) = 1443455193;
  return (*(v3 + 8 * (v2 - 7014)))();
}

uint64_t sub_100232168(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 2768;
  v5 = *(a2 + 944);
  v6 = *(a2 + 600);
  v7 = *(a2 + 500);
  *(a2 + 2204) = v7;
  *(a2 + 412) = v7;
  v8 = *(a2 + 264);
  *(a2 + 48) = &STACK[0x12F0] + v8;
  *(a2 + 208) = &STACK[0x12F0] + v8 + 16;
  *(a2 + 1296) = 0x1138F6A92264F486;
  *(a2 + 1264) = 0;
  *(a2 + 444) = 1443455193;
  *(a2 + 320) = 0;
  *(a2 + 496) = 1443455193;
  *(a2 + 464) = v5;
  v10 = v5 == 0x510808E226CB14FCLL || v6 == 0;
  v11 = *(v3 + 8 * ((76 * v10) ^ v2));
  *(a2 + 2032) = v4;
  return v11();
}

uint64_t sub_100232230(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 2032);
  *(a2 + 2036) = v6;
  *(a2 + 2040) = v6 - 1758;
  *(a2 + 2044) = (v6 - 1758) ^ 0xB42;
  *(a2 + 64) = &STACK[0x12F0] + v3;
  *(a2 + 2048) = v4 + 80;
  *(a2 + 1160) = v2;
  *(a2 + 960) = 0;
  *(a2 + 352) = 0;
  *(a2 + 264) = v4 + 80;
  *(a2 + 272) = 0;
  *(a2 + 516) = 1443455193;
  LODWORD(STACK[0xA40]) = 0;
  *(a2 + 1128) = 0x61CEF89FDDA89DF2;
  *(a2 + 1104) = 0;
  *(a2 + 1020) = 1443455193;
  *(a2 + 1888) = &STACK[0x12F0] + v3;
  LOBYTE(STACK[0x11A7]) = 0;
  v7 = *(v5 + 8 * (v6 + 5102));
  *(a2 + 1872) = 32;
  *(a2 + 1864) = v7;
  return (*(v5 + 8 * (*(a2 + 2036) ^ 0x3C91)))();
}

uint64_t sub_100232418@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  v8 = *(a1 + 352);
  v9 = 199319723 * ((((v7 - 240) | 0x948DAABD) - (v7 - 240) + ((v7 - 240) & 0x6B725540)) ^ 0x217D4475);
  LODWORD(STACK[0x246C]) = v9 + (v4 ^ 0x8FFF3DBB) + ((2 * v4) & 0x1FFE7B76) + 1994317567;
  LODWORD(STACK[0x2450]) = v3 + v9 - ((2 * v3 + 1408056910) & 0xAF94A47A) + ((v5 - 3008) ^ 0x81C0F8A8);
  STACK[0x2460] = v2;
  LODWORD(STACK[0x2470]) = (v5 - 1349) ^ v9;
  STACK[0x2458] = v8;
  STACK[0x2440] = a2;
  STACK[0x2448] = a2;
  v10 = (*(v6 + 8 * (v5 ^ 0x3F85)))(v7 - 240);
  return (*(v6 + 8 * v5))(v10);
}

uint64_t sub_10023250C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8 = v4 & 0xE5B917EF;
  v9 = *(v6 - 0x1138F6A92264F422);
  v10 = (*(v6 - 0x1138F6A92264F40ELL) ^ 0xD47CAE8A) - 2138114 + ((*(v6 - 0x1138F6A92264F40ELL) << (((v4 & 0xEF) + 64) ^ 0xCD)) & 0xC9FF761E ^ 0x4106220A);
  v11 = 301143701 * (((((v7 - 240) | 0x2B4433DA) ^ 0xFFFFFFFE) - (~(v7 - 240) | 0xD4BBCC25)) ^ 0xAF135157);
  *(a1 + 6648) = v10 ^ v11;
  *(a1 + 6688) = v11 + v3 - 400282010;
  *(a1 + 6672) = (v9 ^ 0xCD47EDD8) - v11;
  *(a1 + 6664) = v11 ^ 0x851992B0;
  *(a1 + 6704) = v2;
  *(a1 + 6656) = a2;
  *(a1 + 6680) = a2;
  *(a1 + 6696) = v6 + 0x16E7A4B2981C1BC5;
  *(a1 + 6712) = (v8 - 2639) ^ v11;
  v12 = (*(v5 + 8 * (v8 + 5177)))(v7 - 240);
  return (*(v5 + 8 * v8))(v12);
}

uint64_t sub_100232724()
{
  v2 = v0 & 0x96817F5B;
  v3 = (*(v1 + 8 * ((v0 & 0x96817F5B) + 2862)))(16) != 0;
  return (*(v1 + 8 * ((15 * v3) ^ v2)))();
}

uint64_t sub_1002327C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v9 - 0x1138F6A92264F47ELL) = a1 + a7;
  *(a2 + 868) = 68588956;
  return (*(v8 + 8 * v7))();
}

uint64_t sub_100232948(void *a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_1002329E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 1192);
  *(a2 + 880) = v4;
  return (*(v3 + 8 * ((61 * (((v4 == 0) ^ (v2 - 1)) & 1)) ^ v2)))();
}

uint64_t sub_100232A34()
{
  STACK[0x1068] = v1;
  STACK[0x1070] = v0;
  return (*(v3 + 8 * (((0x3581F541F7DEFDB0 - v0 + v1 - 10 < ((v2 - 6266) ^ 0xFFFFFFFFFFFFFF6CLL)) * ((3108 * ((v2 - 3095) ^ 0xCFE)) ^ 0x30F3)) ^ (v2 - 3095))))();
}

uint64_t sub_100232AF4()
{
  STACK[0xDD0] = STACK[0xDE8];
  v3 = *(v1 + 8 * (v0 - 8667));
  LODWORD(STACK[0xE54]) = v2;
  STACK[0xA18] = v3;
  return (*(v1 + 8 * (v0 - 7734)))();
}

uint64_t sub_100232CC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 1296);
  *(a2 + 424) = v4;
  return (*(v3 + 8 * (((v4 == 0x1138F6A92264F486) * (((v2 - 4799) | 0x168) ^ 0x5E2)) ^ v2)))();
}

uint64_t sub_100232D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 - 0x1138F6A92264F47ELL);
  *(a2 + 1280) = 0;
  return (*(v9 + 8 * (((v10 == a7) * ((((v8 - 1726) ^ 0x39A0) - 4383) ^ 0x1844)) ^ (v8 - 1726))))();
}

uint64_t sub_100232F48(uint64_t a1, uint64_t a2)
{
  v5 = (*(v3 + 8 * (v2 + 9394)))((*(a2 + 444) - 1443455193));
  STACK[0x10C8] = v5;
  if (v5)
  {
    v6 = 68588956;
  }

  else
  {
    v6 = v4;
  }

  LODWORD(STACK[0x10D4]) = v6;
  return (*(v3 + 8 * ((16 * (v5 != 0)) | (32 * (v5 != 0)) | v2)))();
}

uint64_t sub_100232FD0(uint64_t a1, uint64_t a2)
{
  v4 = 2 * (v2 ^ 0x4C1);
  *(a2 + 1448) = *(v3 + 8 * v4);
  return (*(v3 + 8 * (v4 ^ 0x18B2)))();
}

uint64_t sub_1002330BC(uint64_t a1, uint64_t a2)
{
  v4 = (*(v3 + 8 * (v2 ^ 0x37FD)))(((v2 + 1844508903) & 0x920EE8BD) + *(a2 + 444) + ((v2 + 1844508903) ^ 0xC4078865));
  STACK[0x10A8] = v4;
  if (v4)
  {
    v5 = 68588956;
  }

  else
  {
    v5 = 68545947;
  }

  LODWORD(STACK[0x10B4]) = v5;
  return (*(v3 + 8 * ((214 * (v4 == 0)) ^ v2)))();
}

uint64_t sub_100233258(uint64_t a1, uint64_t a2)
{
  STACK[0xA20] = *(a2 + 96);
  *(a2 + 200) = *(v3 + 8 * v2);
  return (*(v3 + 8 * (((v2 + 3687) ^ 0x279) + v2)))();
}

uint64_t sub_100233288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x850]) = v7;
  v10 = *(v8 + 8 * a7);
  v11 = LODWORD(STACK[0x870]) + LODWORD(STACK[0x880]);
  LODWORD(STACK[0x990]) = v11 - 838664202;
  LODWORD(STACK[0x980]) = v11 - 838664201;
  LODWORD(STACK[0x970]) = v11 - 838664200;
  LODWORD(STACK[0x960]) = v11 - 838664199;
  LODWORD(STACK[0x950]) = v11 - 838664198;
  LODWORD(STACK[0x940]) = v11 - 838664197;
  LODWORD(STACK[0x930]) = v11 - 838664196;
  LODWORD(STACK[0x920]) = v11 - 838664195;
  LODWORD(STACK[0x910]) = v11 - 838664193;
  LODWORD(STACK[0x900]) = v11 - 838664192;
  LODWORD(STACK[0x8F0]) = v11 - 838664191;
  LODWORD(STACK[0x8E0]) = v11 - 838664190;
  LODWORD(STACK[0x8D0]) = v11 - 838664189;
  LODWORD(STACK[0x890]) = v11 - 838664194 + a7 - 2112;
  return v10(v9, 0x7EAD9557728229EALL);
}

uint64_t sub_1002333B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8)
{
  v25 = (LODWORD(STACK[0x890]) + a8 + 16);
  v26.i64[0] = v8 + v25;
  v26.i64[1] = v8 + (LODWORD(STACK[0x8D0]) + a8 + 16);
  v27.i64[0] = v8 + (LODWORD(STACK[0x8E0]) + a8 + 16);
  v27.i64[1] = v8 + (LODWORD(STACK[0x8F0]) + a8 + 16);
  v28.i64[0] = v8 + (LODWORD(STACK[0x900]) + a8 + 16);
  v28.i64[1] = v8 + (LODWORD(STACK[0x910]) + a8 + 16);
  v29.i64[0] = v8 + (v10 + a8 + 16);
  v29.i64[1] = v8 + (LODWORD(STACK[0x920]) + a8 + 16);
  v30.i64[0] = v8 + (LODWORD(STACK[0x950]) + a8 + 16);
  v30.i64[1] = v8 + (LODWORD(STACK[0x960]) + a8 + 16);
  v31 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v32 = vandq_s8(v29, v31);
  v33 = vandq_s8(v28, v31);
  v34 = vandq_s8(v27, v31);
  v35 = vandq_s8(v26, v31);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vdupq_n_s64(0x38uLL);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v23);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v23);
  v41 = vdupq_n_s64(v11);
  v42 = vaddq_s64(v37, v23);
  v43 = vaddq_s64(v36, v23);
  v44 = vdupq_n_s64(v17);
  v45 = vsubq_s64(vorrq_s8(v43, v41), vorrq_s8(v43, v44));
  v46 = vaddq_s64(vsubq_s64(vorrq_s8(v42, v41), vorrq_s8(v42, v44)), v44);
  v47 = vaddq_s64(vsubq_s64(vorrq_s8(v40, v41), vorrq_s8(v40, v44)), v44);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(v39, v41), vorrq_s8(v39, v44)), v44);
  v49 = vdupq_n_s64(v12);
  v50 = veorq_s8(v48, v49);
  v51 = vdupq_n_s64(v13);
  v52 = veorq_s8(v47, v49);
  v53 = veorq_s8(v47, v51);
  v54 = veorq_s8(v48, v51);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), v24);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54), v24);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v58), *&STACK[0x680]);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59), *&STACK[0x680]);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = vdupq_n_s64(a3);
  v68 = vdupq_n_s64(a4);
  v69 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), v67), v65), v68);
  v70 = vdupq_n_s64(a5);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v66, v66), v67), v66), v68), v70);
  v72 = veorq_s8(v69, v70);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v74 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v74);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v73);
  v77 = vdupq_n_s64(a6);
  v78 = vsubq_s64(vandq_s8(vaddq_s64(v75, v75), v77), v75);
  v79 = vdupq_n_s64(a1);
  v80 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), v77), v76), v79);
  v81 = vdupq_n_s64(v15);
  v82 = veorq_s8(v80, v81);
  v83 = veorq_s8(vaddq_s64(v78, v79), v81);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v22);
  v89 = veorq_s8(v87, v22);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v95 = veorq_s8(vaddq_s64(v93, v91), v21);
  v96 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v97 = veorq_s8(v94, v21);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v99 = veorq_s8(v95, v96);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = vaddq_s64(v100, v98);
  v103 = vdupq_n_s64(v9);
  v104 = vdupq_n_s64(v14);
  v105 = vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v103)), v104);
  v106 = vdupq_n_s64(a2);
  v234.val[3] = vshlq_u64(veorq_s8(v105, v106), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v38)));
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), v103)), v104), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v38)));
  v107 = veorq_s8(v46, v49);
  v108 = veorq_s8(v46, v51);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), *&STACK[0x7D0]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), *&STACK[0x680]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), v67), v113), v68), v70);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v77), v116), v79), v81);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), *&STACK[0x670]);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), *&STACK[0x7C0]);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v121.i64[0] = v8 + (LODWORD(STACK[0x970]) + a8 + 16);
  v121.i64[1] = v8 + (LODWORD(STACK[0x980]) + a8 + 16);
  v124 = vaddq_s64(v123, v122);
  v125 = vsubq_s64(v124, vandq_s8(vaddq_s64(v124, v124), v103));
  v124.i64[0] = v8 + (LODWORD(STACK[0x990]) + a8 + 16);
  v124.i64[1] = v8 + (v20 + a8 + 16);
  v126 = vaddq_s64(v45, v44);
  v234.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v125, v104), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v38)));
  v127 = veorq_s8(v126, v49);
  v128 = veorq_s8(v126, v51);
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), *&STACK[0x7D0]);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), *&STACK[0x680]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), v67), v133), v68), v70);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v77), v136), v79), v81);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x670]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), *&STACK[0x7C0]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v144 = vandq_s8(v124, v31);
  v145 = vaddq_s64(v143, v142);
  v146 = vandq_s8(v121, v31);
  v234.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v145, vandq_s8(vaddq_s64(v145, v145), v103)), v104), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v38)));
  v147 = vandq_s8(v30, v31);
  v148 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v23);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v23);
  v151 = vaddq_s64(v148, v23);
  v152 = vsubq_s64(vorrq_s8(v149, v41), vorrq_s8(v149, v44));
  v153 = vsubq_s64(vorrq_s8(v151, v41), vorrq_s8(v151, v44));
  v154 = vaddq_s64(vsubq_s64(vorrq_s8(v150, v41), vorrq_s8(v150, v44)), v44);
  v155 = vaddq_s64(v152, v44);
  v150.i64[0] = vqtbl4q_s8(v234, *&STACK[0x8B0]).u64[0];
  v156 = veorq_s8(v155, v49);
  v157 = veorq_s8(v154, v49);
  v158 = veorq_s8(v154, v51);
  v159 = veorq_s8(v155, v51);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x7D0]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v159), *&STACK[0x7D0]);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = veorq_s8(v160, v234.val[0]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(v234.val[0], v162), *&STACK[0x680]);
  v166 = veorq_s8(v164, *&STACK[0x680]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v168 = veorq_s8(v165, v234.val[0]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v168);
  v170 = vaddq_s64(v234.val[0], v167);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v67), v170), v68), v70);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v67), v169), v68), v70);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v174 = veorq_s8(v171, v234.val[0]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v174);
  v176 = vaddq_s64(v234.val[0], v173);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v176, v176), v77), v176), v79), v81);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v77), v175), v79), v81);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v180 = veorq_s8(v177, v234.val[0]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(v234.val[0], v179), *&STACK[0x670]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v183 = veorq_s8(v181, *&STACK[0x670]);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v185 = veorq_s8(v182, v234.val[0]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(v234.val[0], v184), *&STACK[0x7C0]);
  v188 = veorq_s8(v186, *&STACK[0x7C0]);
  v234.val[0] = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v190 = vaddq_s64(v153, v44);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, v234.val[0]));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v234.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v191, vandq_s8(vaddq_s64(v191, v191), v103)), v104), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v124, 3uLL), v38)));
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v192, vandq_s8(vaddq_s64(v192, v192), v103)), v104), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v121, 3uLL), v38)));
  v193 = veorq_s8(v190, v49);
  v194 = veorq_s8(v190, v51);
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), *&STACK[0x7D0]);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), *&STACK[0x680]);
  v199 = veorq_s8(v198, v197);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v200, v200), v67), v200), v68), v70);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), v77), v203), v79), v81);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205), *&STACK[0x670]);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), *&STACK[0x7C0]);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v210 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v208.i64[0] = v8 + (LODWORD(STACK[0x930]) + a8 + 16);
  v208.i64[1] = v8 + (LODWORD(STACK[0x940]) + a8 + 16);
  v211 = vaddq_s64(v210, v209);
  v234.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v103)), v104), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v38)));
  v212 = vandq_s8(v208, v31);
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v23);
  v214 = vaddq_s64(vsubq_s64(vorrq_s8(v213, v41), vorrq_s8(v213, v44)), v44);
  v215 = veorq_s8(v214, v49);
  v216 = veorq_s8(v214, v51);
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), *&STACK[0x7D0]);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), *&STACK[0x680]);
  v221 = veorq_s8(v220, v219);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v222, v222), v67), v222), v68), v70);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v225, v225), v77), v225), v79), v81);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), *&STACK[0x670]);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), *&STACK[0x7C0]);
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL)));
  v234.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v231, vandq_s8(vaddq_s64(v231, v231), v103)), v104), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v208, 3uLL), v38)));
  v150.i64[1] = vqtbl4q_s8(v234, *&STACK[0x8B0]).u64[0];
  v232 = vrev64q_s8(v150);
  *(v18 + v25) = veorq_s8(vextq_s8(v232, v232, 8uLL), *(v8 + v25 - 15));
  return (*(v16 + 8 * ((55 * (v19 == a8)) ^ a7)))();
}

uint64_t sub_10023401C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v18 = (a6 - 824504316);
  v19 = STACK[0x9A0] + v18;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((v20 + v11) | v7) - ((v20 + v11) | a7) + a7;
  v22 = v21 ^ v14;
  v21 ^= 0xB2D60CFC2F849E5FLL;
  v23 = (__ROR8__(v22, 8) + v21) ^ v9;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a1;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((a2 | (2 * (v27 + v26))) - (v27 + v26) + a3) ^ a4;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((a5 & (2 * (v30 + v29))) - (v30 + v29) + v15) ^ v17;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v10;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v13;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *(STACK[0x9B0] + v18) = (((v37 + v36 - ((2 * (v37 + v36)) & 0x1D27AE2D84AF8428) - 0x716C28E93DA83DECLL) ^ 0x7EAD9557728229EAuLL) >> (8 * (v19 & 7u))) ^ *v19;
  return (*(v12 + 8 * ((1822 * (a6 - 1 == v16)) ^ v8)))();
}

uint64_t sub_100234238@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3 = *(a1 + 1296);
  *(a1 + 1240) = v3;
  return (*(v2 + 8 * (((v3 == 0x1138F6A92264F486) * (((a2 + 1457) ^ 0x40) - 1344)) ^ (a2 + 2306))))();
}

uint64_t sub_100234284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 - 0x1138F6A92264F47ELL);
  *(a2 + 88) = 0;
  return (*(v9 + 8 * (((v10 == a7) * (v8 + 8949 + (v8 ^ 0x14C6) - 14775)) | v8)))();
}

uint64_t sub_1002342D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  *(a1 + 1216) = 0x51CE20ABD81C933BLL;
  *(a1 + 432) = 0x55C3FB3EA95A6804;
  return (*(v4 + 8 * ((((((v3 + 1586201807) ^ 0x5E8BAC23) + 8947) ^ (v3 + 1586201807) & 0xA17476FD) * (a3 == a2)) ^ v3)))();
}

uint64_t sub_10023434C(uint64_t a1, uint64_t a2)
{
  *(a2 + 320) = 0;
  *(a2 + 496) = 1443455193;
  return (*(v3 + 8 * (v2 - 7790)))();
}

uint64_t sub_10023437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 - 0x1138F6A92264F486);
  *(a2 + 896) = 0;
  return (*(v9 + 8 * (((v10 == a7) * (((v8 - 3433) | 0x10A0) - 5048)) ^ v8)))();
}

uint64_t sub_1002343D0@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  STACK[0x9D8] = 0x51CE20ABD81C933BLL;
  STACK[0x9D0] = 0x249B7BAEEC27DCA4;
  return (*(v3 + 8 * ((((((v2 + 4041) ^ (a2 == a1)) & 1) == 0) * (((v2 - 5201) | 0x105) - 238)) ^ v2)))();
}

uint64_t sub_10023451C(uint64_t a1, uint64_t a2)
{
  v5 = v2 - 8754;
  v6 = (*(v3 + 8 * (v2 + 561)))(((v2 + 409000557) & 0xE79EFE5F ^ 0xA9F69F3A) + *(a2 + 496));
  STACK[0x1108] = v6;
  if (v6)
  {
    v7 = 68588956;
  }

  else
  {
    v7 = v4;
  }

  LODWORD(STACK[0x1114]) = v7;
  return (*(v3 + 8 * ((93 * (((v6 == 0) ^ (v5 - 1)) & 1)) ^ v5)))();
}

uint64_t sub_100234750(int a1)
{
  LODWORD(STACK[0x550]) = v5;
  LODWORD(STACK[0x560]) = v2;
  v9 = v2 + a1 + (((v1 - 1819) | 0x1202) ^ 0x21191Fu) > 7 && (v4 - v3) > 0xF;
  v10 = *(v6 + 8 * ((113 * v9) ^ v1));
  LODWORD(STACK[0x540]) = v7;
  return v10();
}

uint64_t sub_1002347EC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v12 = *(v8 + 8 * ((76 * (a2 < (v7 ^ 0xBF0 ^ ((v7 - 2768) | 0xB0u)))) ^ v7));
  *&STACK[0x950] = vdupq_n_s64(a6);
  *&STACK[0x9B0] = vdupq_n_s64(v9);
  *&STACK[0x960] = vdupq_n_s64(v10);
  *&STACK[0x9A0] = vdupq_n_s64(a7);
  LODWORD(STACK[0x530]) = a2;
  *&STACK[0x990] = vdupq_n_s64(0xE0BA2357B3D3E8B8);
  *&STACK[0x980] = vdupq_n_s64(v11);
  *&STACK[0x970] = vdupq_n_s64(0x7F9CAC1596C3E05DuLL);
  return v12();
}

uint64_t sub_10023488C(int a1, int a2)
{
  v6 = *(v5 + 8 * v2);
  LODWORD(STACK[0x910]) = a2 & 0xFFFFFFF8;
  v7 = a1 - 1834789236 + LODWORD(STACK[0x550]) + LODWORD(STACK[0x560]) - v3;
  return v6(v4, (v7 - 5), (v7 - 4), (v7 - 3), (v7 - 2), (v7 - 1));
}

uint64_t sub_100234924@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v21 = (v11 + v9);
  v22 = (a6 + v9);
  v23 = (a5 + v9);
  v24 = (a4 + v9);
  v25 = (a3 + v9);
  v26 = (a2 + v9);
  v27.i64[0] = a1 + v25;
  v27.i64[1] = a1 + v26;
  v28.i64[0] = a1 + v23;
  v28.i64[1] = a1 + v24;
  v29.i64[0] = a1 + v21;
  v29.i64[1] = a1 + v22;
  v30.i64[0] = a7 + v23;
  v30.i64[1] = a7 + v24;
  v31 = (v13 + v9);
  v32.i64[0] = a7 + v25;
  v32.i64[1] = a7 + v26;
  v33 = v12 + v9 + ((v7 - 241) | v8);
  v34.i64[0] = a1 + v31;
  v34.i64[1] = a1 + v33;
  *&STACK[0x940] = v34;
  v35 = vandq_s8(v34, v20);
  v36 = vandq_s8(v29, v20);
  v37 = vandq_s8(v28, v20);
  v38 = vandq_s8(v27, v20);
  v39 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v40 = *&STACK[0x8A0];
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x8A0]);
  v42 = vdupq_n_s64(v17);
  v43 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x8A0]), v42);
  v44 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x8A0]), v42);
  v45 = vandq_s8(v41, v42);
  v46 = vdupq_n_s64(v15);
  v47 = vandq_s8(vaddq_s64(v39, *&STACK[0x8A0]), v42);
  v48 = veorq_s8(v45, v46);
  v49 = veorq_s8(v44, v46);
  v50 = veorq_s8(v43, v46);
  v51 = vdupq_n_s64(v18);
  v52 = veorq_s8(v47, v46);
  v53 = veorq_s8(v43, v51);
  v54 = veorq_s8(v44, v51);
  v55 = veorq_s8(v45, v51);
  v56 = veorq_s8(v47, v51);
  v57 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v61 = *&STACK[0x7D0];
  v62 = veorq_s8(vaddq_s64(v57, v53), *&STACK[0x7D0]);
  v63 = veorq_s8(vaddq_s64(v58, v54), *&STACK[0x7D0]);
  v64 = veorq_s8(vaddq_s64(v59, v55), *&STACK[0x7D0]);
  v65 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v66 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v67 = veorq_s8(v60, *&STACK[0x7D0]);
  v68 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v69 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v70 = veorq_s8(v64, v68);
  v71 = veorq_s8(v67, v69);
  v72 = veorq_s8(v63, v66);
  v73 = veorq_s8(v62, v65);
  v74 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v73);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v72);
  v78 = vaddq_s64(v75, v71);
  v79 = *&STACK[0x680];
  v80 = veorq_s8(vaddq_s64(v74, v70), *&STACK[0x680]);
  v81 = veorq_s8(v77, *&STACK[0x680]);
  v82 = veorq_s8(v76, *&STACK[0x680]);
  v83 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v86 = veorq_s8(v78, *&STACK[0x680]);
  v87 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v88 = veorq_s8(v81, v85);
  v89 = veorq_s8(v80, v84);
  v90 = veorq_s8(v86, v83);
  v91 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v95 = vaddq_s64(v92, v88);
  v96 = *&STACK[0x7A0];
  v97 = veorq_s8(vaddq_s64(v91, v87), *&STACK[0x7A0]);
  v98 = veorq_s8(v95, *&STACK[0x7A0]);
  v99 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v100 = veorq_s8(vaddq_s64(v93, v89), *&STACK[0x7A0]);
  v101 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v103 = veorq_s8(vaddq_s64(v94, v90), *&STACK[0x7A0]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v105 = veorq_s8(v100, v102);
  v106 = veorq_s8(v98, v101);
  v107 = veorq_s8(v97, v99);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v105), v19);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v106), v19);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v107), v19);
  v112 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v114 = veorq_s8(v108, v19);
  v115 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v116 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v117 = veorq_s8(v109, v113);
  *&STACK[0x930] = veorq_s8(v114, v112);
  v118 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  *&STACK[0x920] = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v116);
  v120 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v121 = vandq_s8(v32, *&STACK[0x8C0]);
  v122 = vandq_s8(v30, *&STACK[0x8C0]);
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v115), *&STACK[0x670]);
  v124 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v40), v42);
  v125 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v40), v42);
  v126 = veorq_s8(v125, v46);
  v127 = veorq_s8(v124, v46);
  v128 = veorq_s8(v119, *&STACK[0x670]);
  v129 = veorq_s8(v124, v51);
  v130 = veorq_s8(v125, v51);
  v131 = veorq_s8(v128, v120);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v129);
  v133 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v134 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v130), v61);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v137 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = veorq_s8(v132, v61);
  v140 = veorq_s8(v139, v133);
  v141 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v134);
  v144 = vaddq_s64(v138, v136);
  v145 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v148 = veorq_s8(v144, v79);
  v149 = veorq_s8(v142, v79);
  v150 = veorq_s8(v149, v146);
  v151 = veorq_s8(v148, v145);
  v152 = vaddq_s64(v137, v131);
  v153 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v151);
  v155 = veorq_s8(v152, *&STACK[0x7C0]);
  v156 = veorq_s8(vaddq_s64(v153, v150), v96);
  v157 = veorq_s8(v154, v96);
  v158 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v159 = veorq_s8(v143, *&STACK[0x7C0]);
  v160 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v161 = veorq_s8(v156, v158);
  v162 = veorq_s8(v159, v141);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v161);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v160);
  v165 = veorq_s8(v155, v147);
  v166 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v169 = veorq_s8(v164, *&STACK[0x9A0]);
  v170 = veorq_s8(v163, *&STACK[0x9A0]);
  v171 = veorq_s8(v170, v167);
  v172 = veorq_s8(v169, v166);
  v173 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v172);
  v176 = vaddq_s64(v173, v165);
  v177 = vaddq_s64(v174, v171);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, *&STACK[0x950]), vorrq_s8(v175, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177, *&STACK[0x950]), vorrq_s8(v177, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v181 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v182 = vaddq_s64(v168, v162);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v185 = vdupq_n_s64(v14);
  v186 = vshlq_u64(veorq_s8(v176, *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v185)));
  v187 = veorq_s8(vaddq_s64(v183, v180), *&STACK[0x7C0]);
  v188 = veorq_s8(vaddq_s64(v184, v181), *&STACK[0x7C0]);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v190 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v191 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v193 = vshlq_u64(veorq_s8(v182, *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v185)));
  v194 = vaddq_s64(v192, v190);
  v183.i64[0] = a7 + v21;
  v183.i64[1] = a7 + v22;
  v195 = vaddq_s64(v191, v189);
  v258.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), *&STACK[0x990]), v195), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v185))), v193);
  v258.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v194, v194), *&STACK[0x990]), v194), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v185))), v186);
  v196 = vandq_s8(v183, *&STACK[0x8C0]);
  v197 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v40), v42);
  v198 = veorq_s8(v197, v46);
  v199 = veorq_s8(v197, v51);
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v61);
  v201 = veorq_s8(vaddq_s64(v118, v117), *&STACK[0x670]);
  v202 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v204 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v205 = vaddq_s64(v203, v202);
  v206 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v207 = veorq_s8(v205, v79);
  v208 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v209 = veorq_s8(v207, v206);
  v210 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v212 = vaddq_s64(v208, v204);
  v213 = veorq_s8(vaddq_s64(v210, v209), v96);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), *&STACK[0x9A0]);
  v216 = veorq_s8(v212, *&STACK[0x7C0]);
  v217 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v217);
  v219 = veorq_s8(v216, v211);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v218, *&STACK[0x950]), vorrq_s8(v218, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v221 = vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL);
  v222 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v222), *&STACK[0x7C0]);
  v224 = vshlq_u64(veorq_s8(vaddq_s64(v221, v219), *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v185)));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL)));
  v29.i64[0] = a7 + v31;
  v29.i64[1] = a7 + v33;
  v258.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v225, v225), *&STACK[0x990]), v225), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v183, 3uLL), v185))), v224);
  v226 = vandq_s8(v29, *&STACK[0x8C0]);
  v227 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v40), v42);
  v228 = veorq_s8(vaddq_s64(*&STACK[0x920], *&STACK[0x930]), *&STACK[0x670]);
  v229 = veorq_s8(v227, v46);
  v230 = veorq_s8(v227, v51);
  v231 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(*&STACK[0x930], 3uLL), *&STACK[0x930], 0x3DuLL));
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v61);
  v234 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v235 = veorq_s8(v233, v232);
  v236 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v238 = vaddq_s64(v234, v231);
  v239 = veorq_s8(vaddq_s64(v236, v235), v79);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v241 = veorq_s8(v238, *&STACK[0x7C0]);
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v96);
  v243 = veorq_s8(v241, v237);
  v244 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v245 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v246 = vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL);
  v247 = veorq_s8(vaddq_s64(v245, v244), *&STACK[0x9A0]);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = vaddq_s64(v246, v243);
  v251 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v249, *&STACK[0x950]), vorrq_s8(v249, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v253 = vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL);
  v254 = vshlq_u64(veorq_s8(v250, *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x940], 3uLL), v185)));
  v255 = veorq_s8(vaddq_s64(v253, v252), *&STACK[0x7C0]);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL)));
  v258.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v256, v256), *&STACK[0x990]), v256), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v185))), v254);
  *(v183.i64[0] - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v258, *&STACK[0x640])), *(a1 + v21 - 7));
  return (*(v16 + 8 * ((13926 * (v10 == v9)) ^ v7)))();
}

uint64_t sub_100235458@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v9 = (v6 + a2 + 16);
  v10 = LODWORD(STACK[0x580]) + a2;
  v11 = (LODWORD(STACK[0x570]) + a2 + 16);
  v12 = (LODWORD(STACK[0x590]) + a2 + 16);
  v13 = LODWORD(STACK[0x5A0]) + a2;
  v14 = LODWORD(STACK[0x5C0]) + a2;
  v15 = (LODWORD(STACK[0x5B0]) + a2 + 16);
  v16 = (LODWORD(STACK[0x5E0]) + a2 + 16);
  v17 = LODWORD(STACK[0x5F0]) + a2;
  v18 = LODWORD(STACK[0x790]) + a2;
  v19 = (LODWORD(STACK[0x780]) + a2 + 16);
  v20 = (LODWORD(STACK[0x7F0]) + a2 + 16);
  v21 = LODWORD(STACK[0x810]) + a2;
  v22 = (LODWORD(STACK[0x820]) + a2 + 16);
  v23 = (LODWORD(STACK[0x830]) + a2 + 16);
  v24.i64[0] = v5 + v22;
  v24.i64[1] = v5 + v23;
  v25 = v24;
  *&STACK[0x910] = v24;
  v26 = (v21 + 16);
  v24.i64[0] = v5 + v20;
  v24.i64[1] = v5 + v26;
  v27 = v24;
  *&STACK[0x900] = v24;
  v28 = (v18 + 16);
  v24.i64[0] = v5 + v19;
  v24.i64[1] = v5 + v28;
  v29 = v24;
  *&STACK[0x920] = v24;
  v30 = (v17 + 16);
  v24.i64[0] = v5 + v16;
  v24.i64[1] = v5 + v30;
  *&STACK[0x930] = v24;
  v31 = (v14 + 16);
  v32.i64[0] = v5 + v15;
  v32.i64[1] = v5 + v31;
  v33 = (v13 + 16);
  v34.i64[0] = v5 + v12;
  v34.i64[1] = v5 + v33;
  v35 = (v10 + 16);
  v36.i64[0] = v5 + v11;
  v36.i64[1] = v5 + v35;
  v37 = (v3 + a2 + 16);
  v38 = v5 + v9;
  v39.i64[0] = v5 + v9;
  v39.i64[1] = v5 + v37;
  v40 = v39;
  *&STACK[0x8F0] = v39;
  v41 = a1 + v9;
  v39.i64[0] = v41;
  v39.i64[1] = a1 + v37;
  *&STACK[0x940] = v39;
  v42.i64[0] = a1 + v11;
  v42.i64[1] = a1 + v35;
  v43 = *&STACK[0x8C0];
  v44 = vandq_s8(v40, *&STACK[0x8C0]);
  v45 = vandq_s8(v36, *&STACK[0x8C0]);
  v46 = vandq_s8(v34, *&STACK[0x8C0]);
  v47 = vandq_s8(v32, *&STACK[0x8C0]);
  v48 = vandq_s8(v24, *&STACK[0x8C0]);
  v49 = vandq_s8(v29, *&STACK[0x8C0]);
  v50 = vandq_s8(v27, *&STACK[0x8C0]);
  v51 = vandq_s8(v25, *&STACK[0x8C0]);
  v52 = *&STACK[0x8A0];
  v53 = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  v54 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), *&STACK[0x8A0]), v53);
  v55 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), *&STACK[0x8A0]), v53);
  v56 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), *&STACK[0x8A0]), v53);
  v57 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), *&STACK[0x8A0]), v53);
  v58 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), *&STACK[0x8A0]), v53);
  v59 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), *&STACK[0x8A0]), v53);
  v60 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), *&STACK[0x8A0]), v53);
  v61 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), *&STACK[0x8A0]), v53);
  v62 = vdupq_n_s64(0x9716ECD53D61FD7uLL);
  v63 = veorq_s8(v61, v62);
  v64 = veorq_s8(v60, v62);
  v65 = veorq_s8(v59, v62);
  v66 = veorq_s8(v58, v62);
  v67 = veorq_s8(v57, v62);
  v68 = veorq_s8(v56, v62);
  v69 = veorq_s8(v55, v62);
  v70 = vdupq_n_s64(0xBDDC45633787A904);
  v71 = veorq_s8(v54, v62);
  v72 = v62;
  v73 = veorq_s8(v54, v70);
  v74 = veorq_s8(v55, v70);
  v75 = veorq_s8(v56, v70);
  v76 = veorq_s8(v57, v70);
  v77 = veorq_s8(v58, v70);
  v78 = veorq_s8(v59, v70);
  v79 = veorq_s8(v60, v70);
  v80 = veorq_s8(v61, v70);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v73), *&STACK[0x7D0]);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v74), *&STACK[0x7D0]);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v75), *&STACK[0x7D0]);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v76), *&STACK[0x7D0]);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v77), *&STACK[0x7D0]);
  v86 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v78), *&STACK[0x7D0]);
  v88 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v79), *&STACK[0x7D0]);
  v92 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v80), *&STACK[0x7D0]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v95 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v96 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v97 = veorq_s8(v85, v92);
  v98 = veorq_s8(v84, v90);
  v99 = veorq_s8(v83, v89);
  v100 = veorq_s8(v82, v88);
  v101 = veorq_s8(v81, v86);
  v102 = *&STACK[0x680];
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), *&STACK[0x680]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95), *&STACK[0x680]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v96), *&STACK[0x680]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v97), *&STACK[0x680]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v98), *&STACK[0x680]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v99), *&STACK[0x680]);
  v109 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v100), *&STACK[0x680]);
  v112 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v101), *&STACK[0x680]);
  v115 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v116 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v117 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v118 = veorq_s8(v108, v115);
  v119 = veorq_s8(v107, v113);
  v120 = veorq_s8(v106, v112);
  v121 = veorq_s8(v105, v110);
  v122 = veorq_s8(v104, v109);
  v123 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v123);
  v131 = vaddq_s64(v128, v121);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v116), *&STACK[0x7A0]);
  v133 = veorq_s8(vaddq_s64(v124, v117), *&STACK[0x7A0]);
  v134 = veorq_s8(vaddq_s64(v125, v118), *&STACK[0x7A0]);
  v135 = veorq_s8(vaddq_s64(v126, v119), *&STACK[0x7A0]);
  v136 = veorq_s8(vaddq_s64(v127, v120), *&STACK[0x7A0]);
  v137 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v138 = veorq_s8(v131, *&STACK[0x7A0]);
  v139 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(v129, v122), *&STACK[0x7A0]);
  v143 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v144 = veorq_s8(v130, *&STACK[0x7A0]);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v146 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v147 = veorq_s8(v138, v143);
  v148 = veorq_s8(v136, v141);
  v149 = veorq_s8(v135, v140);
  v150 = veorq_s8(v134, v139);
  v151 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v152 = veorq_s8(v132, v137);
  v153 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v152);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v150);
  v161 = veorq_s8(vaddq_s64(v153, v145), *&STACK[0x9A0]);
  v162 = veorq_s8(vaddq_s64(v154, v146), *&STACK[0x9A0]);
  v163 = veorq_s8(vaddq_s64(v155, v147), *&STACK[0x9A0]);
  v164 = veorq_s8(vaddq_s64(v156, v148), *&STACK[0x9A0]);
  v165 = veorq_s8(vaddq_s64(v157, v149), *&STACK[0x9A0]);
  v166 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v167 = veorq_s8(v160, *&STACK[0x9A0]);
  v168 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v169 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v171 = veorq_s8(vaddq_s64(v158, v151), *&STACK[0x9A0]);
  v172 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v173 = veorq_s8(v159, *&STACK[0x9A0]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v175 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  *&STACK[0x880] = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  *&STACK[0x8E0] = veorq_s8(v165, v172);
  v176 = veorq_s8(v164, v170);
  v177 = veorq_s8(v163, v169);
  v178 = veorq_s8(v162, v168);
  v179 = veorq_s8(v161, v166);
  v180 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  *&STACK[0x8D0] = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  *&STACK[0x890] = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v179);
  *&STACK[0x860] = vaddq_s64(v183, v178);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v177);
  *&STACK[0x850] = vaddq_s64(v181, v175);
  *&STACK[0x870] = vaddq_s64(v180, v174);
  *&STACK[0x840] = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v186 = veorq_s8(vaddq_s64(v182, v176), *&STACK[0x670]);
  v187 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v188 = veorq_s8(v185, *&STACK[0x670]);
  v189 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v191 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v192 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v191), *&STACK[0x7C0]);
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v192), *&STACK[0x7C0]);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v197 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v199 = vandq_s8(v42, v43);
  v200 = vandq_s8(*&STACK[0x940], v43);
  v201 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v175.i64[0] = a1 + v12;
  v175.i64[1] = a1 + v33;
  v203 = vaddq_s64(v198, v196);
  v204 = vandq_s8(v175, v43);
  v205 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v183.i64[0] = a1 + v15;
  v183.i64[1] = a1 + v31;
  v206 = vandq_s8(v183, v43);
  v207 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v208 = vandq_s8(vaddq_s64(v205, v52), v53);
  v209 = veorq_s8(v208, v62);
  v210 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v211 = vandq_s8(vaddq_s64(v207, v52), v53);
  v212 = veorq_s8(v211, v62);
  v213 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v214 = veorq_s8(v208, v70);
  v215 = vaddq_s64(v210, v214);
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v217 = veorq_s8(v211, v70);
  v218 = vaddq_s64(v213, v217);
  v219 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v220 = vaddq_s64(v197, v195);
  v221 = veorq_s8(v218, *&STACK[0x7D0]);
  v222 = veorq_s8(v221, v219);
  v223 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v224 = veorq_s8(v215, *&STACK[0x7D0]);
  v225 = veorq_s8(v224, v216);
  v226 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v227 = vaddq_s64(v223, v222);
  v228 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v229 = vshlq_n_s64(v34, 3uLL);
  v230 = vdupq_n_s64(0x38uLL);
  v231 = vshlq_u64(veorq_s8(v203, *&STACK[0x7B0]), vnegq_s64(vandq_s8(v229, v230)));
  v232 = veorq_s8(vaddq_s64(v226, v225), v102);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v234 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v235 = veorq_s8(v227, v102);
  v236 = veorq_s8(v235, v228);
  v237 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v238 = vaddq_s64(v234, v233);
  v239 = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v240 = vaddq_s64(v237, v236);
  v241 = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v242 = veorq_s8(v240, *&STACK[0x7A0]);
  v243 = veorq_s8(v242, v241);
  v244 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v245 = veorq_s8(v238, *&STACK[0x7A0]);
  v246 = veorq_s8(v245, v239);
  v247 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v248 = vaddq_s64(v244, v243);
  v249 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v250 = vaddq_s64(v247, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v252 = veorq_s8(v250, *&STACK[0x9A0]);
  v253 = veorq_s8(v252, v251);
  v254 = veorq_s8(v248, *&STACK[0x9A0]);
  v255 = veorq_s8(v254, v249);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v258 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v257, *&STACK[0x950]), vorrq_s8(v257, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v259 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v260 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v261 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256, *&STACK[0x950]), vorrq_s8(v256, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v262 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v263 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v264 = vaddq_s64(v260, v259);
  v265 = vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL);
  v266 = vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL);
  v267 = vshlq_u64(veorq_s8(v220, *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v230)));
  v268 = veorq_s8(vaddq_s64(v263, v262), *&STACK[0x7C0]);
  v269 = veorq_s8(v264, *&STACK[0x7C0]);
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), veorq_s8(v269, v265));
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), veorq_s8(v268, v266));
  v272 = vsubq_s64(vandq_s8(vaddq_s64(v271, v271), *&STACK[0x990]), v271);
  v273 = vsubq_s64(vandq_s8(vaddq_s64(v270, v270), *&STACK[0x990]), v270);
  v274 = veorq_s8(*&STACK[0x850], *&STACK[0x670]);
  v275 = veorq_s8(*&STACK[0x860], *&STACK[0x670]);
  v276 = veorq_s8(v184, *&STACK[0x670]);
  v277 = veorq_s8(v276, v190);
  v278 = veorq_s8(v275, v189);
  v279 = vandq_s8(vaddq_s64(v202, v52), v53);
  v463.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v272, *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v183, 3uLL), v230))), v267);
  v463.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v273, *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v175, 3uLL), v230))), v231);
  v280 = veorq_s8(v279, v72);
  v281 = v70;
  v282 = veorq_s8(v279, v70);
  v283 = veorq_s8(v274, v187);
  v284 = vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL);
  v285 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v282), *&STACK[0x7D0]);
  v286 = vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL);
  v287 = veorq_s8(v285, v284);
  v288 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v289 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v290 = vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL);
  v291 = veorq_s8(vaddq_s64(v288, v287), v102);
  v292 = veorq_s8(v291, v290);
  v293 = vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL);
  v294 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292);
  v295 = vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL);
  v296 = vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL);
  v297 = veorq_s8(v294, *&STACK[0x7A0]);
  v298 = vaddq_s64(v286, v277);
  v299 = veorq_s8(v297, v295);
  v300 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v299), *&STACK[0x9A0]);
  v301 = veorq_s8(vaddq_s64(v289, v278), *&STACK[0x7C0]);
  v302 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL));
  v303 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v304 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL), v302);
  v305 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v306 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v304, *&STACK[0x950]), vorrq_s8(v304, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v308 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307), *&STACK[0x7C0]);
  v309 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL)));
  v310 = vandq_s8(vaddq_s64(v201, v52), v53);
  v463.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v309, v309), *&STACK[0x990]), v309), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v230))), vshlq_u64(veorq_s8(vaddq_s64(v305, v303), *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v230))));
  v311 = veorq_s8(v310, v72);
  v312 = v72;
  v313 = veorq_s8(v310, v281);
  v314 = veorq_s8(v298, *&STACK[0x7C0]);
  v315 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL), v313), *&STACK[0x7D0]);
  v316 = veorq_s8(v314, v296);
  v317 = veorq_s8(v315, vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL));
  v318 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v319 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v320 = veorq_s8(vaddq_s64(v318, v317), v102);
  v321 = veorq_s8(v320, vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL));
  v322 = vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL);
  v323 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v321), *&STACK[0x7A0]);
  v324 = vaddq_s64(v319, v316);
  v325 = veorq_s8(v323, v322);
  v326 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v325), *&STACK[0x9A0]);
  v327 = veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v328 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v327);
  v329 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v328, *&STACK[0x950]), vorrq_s8(v328, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v330 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL));
  v331 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), v330), *&STACK[0x7C0]);
  v42.i64[0] = a1 + v20;
  v42.i64[1] = a1 + v26;
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v330, 3uLL), v330, 0x3DuLL)));
  v36.i64[0] = a1 + v22;
  v36.i64[1] = a1 + v23;
  v333 = veorq_s8(*&STACK[0x870], *&STACK[0x670]);
  v334 = veorq_s8(v333, *&STACK[0x840]);
  v463.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v332, v332), *&STACK[0x990]), v332), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x940], 3uLL), v230))), vshlq_u64(veorq_s8(v324, *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x8F0], 3uLL), v230))));
  v335 = vandq_s8(v36, v43);
  v336 = vandq_s8(v42, v43);
  v337 = v43;
  v338 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v339 = v52;
  v340 = v53;
  v341 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL), v52), v53);
  v342 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL), v52), v53);
  v463.val[1].i64[0] = vqtbl4q_s8(v463, *&STACK[0x8B0]).u64[0];
  v343 = veorq_s8(v342, v312);
  v344 = veorq_s8(v341, v312);
  v345 = vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL);
  v346 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v347 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v348 = vaddq_s64(v338, v334);
  v349 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v350 = veorq_s8(v341, v281);
  v351 = veorq_s8(v342, v281);
  v352 = vaddq_s64(v293, v283);
  v353 = veorq_s8(vaddq_s64(v345, v350), *&STACK[0x7D0]);
  v354 = veorq_s8(vaddq_s64(v346, v351), *&STACK[0x7D0]);
  v355 = vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL);
  v356 = veorq_s8(v352, *&STACK[0x7C0]);
  v357 = veorq_s8(v354, vsraq_n_u64(vshlq_n_s64(v351, 3uLL), v351, 0x3DuLL));
  v358 = veorq_s8(v353, v355);
  v359 = veorq_s8(v348, *&STACK[0x7C0]);
  v360 = vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL);
  v361 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v362 = vaddq_s64(v360, v357);
  v363 = veorq_s8(v359, v347);
  v364 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v365 = veorq_s8(v362, v102);
  v366 = veorq_s8(vaddq_s64(v361, v358), v102);
  v367 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v368 = veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL));
  v369 = veorq_s8(v365, v364);
  v370 = veorq_s8(v356, v349);
  v371 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v372 = vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL);
  v373 = vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL);
  v374 = veorq_s8(vaddq_s64(v371, v368), *&STACK[0x7A0]);
  v375 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v376 = veorq_s8(vaddq_s64(v372, v369), *&STACK[0x7A0]);
  v377 = veorq_s8(v376, vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL));
  v378 = veorq_s8(v374, v375);
  v379 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v380 = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v381 = vaddq_s64(v379, v377);
  v382 = vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL);
  v383 = vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL);
  v384 = veorq_s8(v381, *&STACK[0x9A0]);
  v385 = veorq_s8(vaddq_s64(v380, v378), *&STACK[0x9A0]);
  v386 = veorq_s8(v385, v383);
  v387 = veorq_s8(v384, v382);
  v388 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v387);
  v389 = vaddq_s64(v367, v363);
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL), v386);
  v391 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v388, *&STACK[0x950]), vorrq_s8(v388, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v392 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v390, *&STACK[0x950]), vorrq_s8(v390, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v393 = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL));
  v394 = veorq_s8(v391, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v395 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL), v393), *&STACK[0x7C0]);
  v396 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL), v394), *&STACK[0x7C0]);
  v397 = vsraq_n_u64(vshlq_n_s64(v393, 3uLL), v393, 0x3DuLL);
  v398 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL));
  v399 = veorq_s8(v395, v397);
  v400 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v401 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), v399);
  v399.i64[0] = a1 + v19;
  v399.i64[1] = a1 + v28;
  v402 = vaddq_s64(v400, v398);
  v464.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v402, v402), *&STACK[0x990]), v402), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v230))), vshlq_u64(veorq_s8(v389, *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x910], 3uLL), v230))));
  v464.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v401, v401), *&STACK[0x990]), v401), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v230))), vshlq_u64(veorq_s8(vaddq_s64(v373, v370), *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x900], 3uLL), v230))));
  v403 = vandq_s8(v399, v337);
  v404 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v339), v340);
  v405 = veorq_s8(v404, v312);
  v406 = veorq_s8(v404, v281);
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406), *&STACK[0x7D0]);
  v408 = veorq_s8(vaddq_s64(*&STACK[0x8D0], *&STACK[0x880]), *&STACK[0x670]);
  v409 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v410 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v411 = veorq_s8(v408, vsraq_n_u64(vshlq_n_s64(*&STACK[0x880], 3uLL), *&STACK[0x880], 0x3DuLL));
  v412 = vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL);
  v413 = veorq_s8(vaddq_s64(v410, v409), v102);
  v414 = vsraq_n_u64(vshlq_n_s64(v408, 0x38uLL), v408, 8uLL);
  v415 = veorq_s8(v413, v412);
  v416 = vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL);
  v417 = vsraq_n_u64(vshlq_n_s64(v411, 3uLL), v411, 0x3DuLL);
  v418 = vaddq_s64(v414, v411);
  v419 = veorq_s8(vaddq_s64(v416, v415), *&STACK[0x7A0]);
  v420 = veorq_s8(v419, vsraq_n_u64(vshlq_n_s64(v415, 3uLL), v415, 0x3DuLL));
  v421 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL), v420), *&STACK[0x9A0]);
  v422 = veorq_s8(v418, *&STACK[0x7C0]);
  v423 = veorq_s8(v421, vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL));
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL), v423);
  v425 = veorq_s8(v422, v417);
  v426 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v424, *&STACK[0x950]), vorrq_s8(v424, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v427 = vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL);
  v428 = veorq_s8(v426, vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL));
  v429 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), v428), *&STACK[0x7C0]);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL), veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v428, 3uLL), v428, 0x3DuLL)));
  v431 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v430, v430), *&STACK[0x990]), v430), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v399, 3uLL), v230)));
  v399.i64[0] = a1 + v16;
  v399.i64[1] = a1 + v30;
  v464.val[1] = veorq_s8(v431, vshlq_u64(veorq_s8(vaddq_s64(v427, v425), *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x920], 3uLL), v230))));
  v432 = vandq_s8(v399, v337);
  v433 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL), v339), v340);
  v434 = veorq_s8(vaddq_s64(*&STACK[0x890], *&STACK[0x8E0]), *&STACK[0x670]);
  v435 = veorq_s8(v433, v312);
  v436 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(*&STACK[0x8E0], 3uLL), *&STACK[0x8E0], 0x3DuLL));
  v437 = veorq_s8(v433, v281);
  v438 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v437);
  v439 = vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL);
  v440 = vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL);
  v441 = vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL);
  v442 = veorq_s8(v438, *&STACK[0x7D0]);
  v443 = vaddq_s64(v439, v436);
  v444 = veorq_s8(v442, v440);
  v445 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v444), v102);
  v446 = veorq_s8(v443, *&STACK[0x7C0]);
  v447 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL));
  v448 = veorq_s8(v446, v441);
  v449 = vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL);
  v450 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v447), *&STACK[0x7A0]);
  v451 = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v452 = veorq_s8(v450, v449);
  v453 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v452), *&STACK[0x9A0]);
  v454 = veorq_s8(v453, vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL));
  v455 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v454);
  v456 = vaddq_s64(v451, v448);
  v457 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v455, *&STACK[0x950]), vorrq_s8(v455, *&STACK[0x9B0])), *&STACK[0x9B0]), *&STACK[0x960]);
  v458 = veorq_s8(v457, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v459 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v458), *&STACK[0x7C0]);
  v460 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL)));
  v464.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v460, v460), *&STACK[0x990]), v460), *&STACK[0x980]), *&STACK[0x970]), vnegq_s64(vandq_s8(vshlq_n_s64(v399, 3uLL), v230))), vshlq_u64(veorq_s8(v456, *&STACK[0x7B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x930], 3uLL), v230))));
  v463.val[1].i64[1] = vqtbl4q_s8(v464, *&STACK[0x8B0]).u64[0];
  v461 = vrev64q_s8(v463.val[1]);
  *(v41 - 15) = veorq_s8(vextq_s8(v461, v461, 8uLL), *(v38 - 15));
  return (*(v8 + 8 * (((v4 + a2 != 0) * a3) ^ v7)))();
}

uint64_t sub_100236988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = (v8 + v10);
  v23 = v11 + v22;
  v24 = v13 + v22;
  v25 = ((v9 - 438) + a8 + __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8)) & 0xFBFFFFFFFFFFFFFFLL;
  v26 = v25 ^ v21;
  v27 = v25 ^ v12;
  v28 = (__ROR8__(v26, 8) + v27) ^ a3;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8) + v14) & 0xFBFFFFFFFFFFFFFFLL;
  v33 = v32 ^ v21;
  v34 = (__ROR8__(v30, 8) + v31) ^ a4;
  v35 = v32 ^ v12;
  v36 = (__ROR8__(v33, 8) + v35) ^ a3;
  v37 = v34 ^ __ROR8__(v31, 61);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v36, 8) + v38) ^ a5;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a4;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v34, 8) + v37) ^ a7;
  v44 = (__ROR8__(v41, 8) + v42) ^ a7;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8) + v45;
  v47 = v43 ^ __ROR8__(v37, 61);
  v48 = v18 - (v46 | v18) + (v46 | a6);
  v49 = *v23;
  v50 = (__ROR8__(v43, 8) + v47) ^ 0x43600812E0A35073;
  v51 = v50 ^ __ROR8__(v47, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v15;
  v53 = __ROR8__(v52, 8) + (v52 ^ __ROR8__(v51, 61));
  v54 = v48 ^ v19 ^ __ROR8__(v45, 61);
  v55 = (__ROR8__(v48 ^ v19, 8) + v54) ^ v15;
  v56 = (v53 ^ v17) >> (8 * (v23 & 7u));
  v57 = __ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61));
  *v24 = (((((2 * v57) & 0xE0BA2357B3D3E8B8) - v57 + v20) ^ 0x7F9CAC1596C3E05DLL) >> (8 * (v24 & 7u))) ^ v56 ^ v49;
  return (*(v16 + 8 * (((8 * (v8 == 1834789236)) | (16 * (v8 == 1834789236))) ^ v9)))();
}

uint64_t sub_100236C50@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(a1 + 320) = 0;
  *(a1 + 496) = 1443455193;
  return (*(v2 + 8 * a2))();
}

uint64_t sub_100236D20(uint64_t a1, void *a2)
{
  v4 = a2[162];
  v5 = a2[58] - 0x510808E226CB1490;
  a2[59] = v5;
  a2[67] = v4;
  v7 = v4 != 0x1138F6A92264F486 && v5 != 0;
  return (*(v3 + 8 * ((v7 * ((((v2 + 577) | 0x44C) - 8480) ^ (v2 - 7490))) ^ v2)))();
}

uint64_t sub_100236E2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 464);
  v5 = *(v3 + 8 * ((5837 * (*(v4 - 0x510808E226CB14F7) == (((v2 + 112) | 0xA8) + 92))) ^ v2));
  *(a2 + 2060) = v2 + 6295;
  *(a2 + 2064) = v4;
  return v5();
}

uint64_t sub_100236E8C@<X0>(void *a1@<X1>, int a2@<W8>)
{
  v4 = a1[162];
  v5 = v2 - 0x510808E226CB1488;
  a1[45] = v5;
  a1[130] = v4;
  if (v5)
  {
    v6 = v4 == 0x1138F6A92264F486;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((500 * ((v7 ^ (9 * (a2 ^ 0xE1) + 5)) & 1)) ^ a2)))();
}

uint64_t sub_100236F08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v8 - 0x1138F6A92264F47ELL);
  a2[79] = v9;
  a2[46] = 0x51CE20ABD81C933BLL;
  LODWORD(STACK[0xA14]) = 1443455193;
  a2[17] = 0x601096E1DDC42BDLL;
  return (*(v10 + 8 * (((((v11 == a7) ^ ((v7 | 8) - 24)) & 1) * (((v7 | 0x1208) + 1671389301) & 0x9C60AC7D ^ 0x24ED)) ^ (v7 | 0x1208))))();
}

uint64_t sub_100237014()
{
  v2 = *(STACK[0xE58] - 0x1138F6A92264F486);
  v3 = STACK[0xBB0];
  STACK[0xAC0] = STACK[0xBB0];
  STACK[0xCE0] = 0x51CE20ABD81C933BLL;
  LODWORD(STACK[0xE28]) = 1443455193;
  STACK[0xF00] = 0x84801FC200DCCDLL;
  v5 = v2 != 0x5A0411E37F4B9882 && v3 != 0;
  return (*(v1 + 8 * ((v5 * (((v0 - 9060) | 0x50) - 260)) ^ (v0 - 7350))))();
}

uint64_t sub_100237174(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 464);
  v5 = *(v3 + 8 * (v2 - 6295));
  *(a2 + 2060) = v2;
  *(a2 + 2064) = v4;
  return v5();
}

uint64_t sub_100237194(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 2064);
  v4 = *(a2 + 2060);
  *(a2 + 2076) = 107 * (v4 ^ 0x2471);
  *(a2 + 2080) = v4 - 7810;
  *(a2 + 2084) = v4 - 5389;
  *(a2 + 2088) = v3 - 0x510808E226CB14C4;
  v5 = *(a2 + 1264);
  *(a2 + 2096) = v5;
  v6 = *(a2 + 48);
  *(a2 + 2104) = v6;
  v7 = *(a2 + 264);
  *(a2 + 2112) = &STACK[0x12F0];
  v8 = &STACK[0x12F0] + v7;
  *(a2 + 2120) = &STACK[0x12F0] + v7;
  v7 += 32;
  *(a2 + 2128) = v7;
  *(a2 + 264) = v7;
  *(a2 + 840) = v5;
  STACK[0xA08] = v6;
  *(a2 + 1888) = v8;
  LOBYTE(STACK[0x11A7]) = 0;
  *(a2 + 1872) = 32;
  *(a2 + 1864) = *(v2 + 8 * (v4 + 1277));
  return (*(v2 + 8 * (v4 ^ 0xD7B)))();
}

uint64_t sub_10023730C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x7E8] - 1474;
  *(a2 + 1264) = *(a2 + 1632);
  return (*(v2 + 8 * v3))();
}

uint64_t sub_1002373B0(uint64_t a1, uint64_t a2)
{
  *(a2 + 1264) = 0;
  *(a2 + 444) = 1443455193;
  return (*(v3 + 8 * (v2 - 5033)))();
}

uint64_t sub_1002373F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 - 0x1138F6A92264F486);
  *(a2 + 568) = 0;
  return (*(v9 + 8 * (((v10 == a7) * (((298 * (v8 ^ 0x1803)) ^ 0xDCC) - 1358)) ^ v8)))();
}

uint64_t sub_100237448@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  *(a1 + 1136) = 0x51CE20ABD81C933BLL;
  *(a1 + 912) = 0x5A9B89344F4A783CLL;
  return (*(v4 + 8 * (((((a3 == a2) ^ (v3 + 72) ^ 0xB) & 1) * (((v3 + 887973704) & 0xCB12B4FD) - 9311)) ^ v3)))();
}

uint64_t sub_10023750C(uint64_t a1, uint64_t a2)
{
  *(a2 + 1264) = 0;
  *(a2 + 444) = 1443455193;
  return (*(v3 + 8 * (v2 - 6173)))();
}

uint64_t sub_10023753C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x7E8] - 3976;
  *(a2 + 320) = *(a2 + 1696);
  return (*(v2 + 8 * v3))();
}

uint64_t sub_1002376DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8 * (((*(*(a2 + 808) - 0x510808E226CB14F7) == (((LODWORD(STACK[0x43C]) - 107) & 0xAE) - 101)) * (((LODWORD(STACK[0x43C]) - 2150) | 0x310) ^ 0x14B3)) ^ LODWORD(STACK[0x43C])));
  *(a2 + 1976) = (LODWORD(STACK[0x43C]) - 391125611) & 0x17501FAE;
  return v3();
}

uint64_t sub_10023777C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(v4 + 8 * (((LODWORD(STACK[0x38C]) - 879) * (v5 == 68588956)) ^ (a4 - 8727)));
  *(a2 + 1976) = STACK[0x38C];
  return v6();
}

uint64_t sub_1002377B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1976);
  *(a2 + 1980) = v3;
  *(a2 + 1984) = 518 * (v3 ^ 0xDBC);
  v4 = (v3 - 3502) | 0x187u;
  *(a2 + 1988) = v4;
  *(a2 + 1992) = *(a2 + 8);
  v5 = *(a2 + 264);
  *(a2 + 2000) = v5;
  *(a2 + 176) = &STACK[0x12F0] + v5;
  *(a2 + 2008) = &STACK[0x12F0] + v5 + 16;
  *(a2 + 1088) = &STACK[0x12F0] + v5 + 16;
  *a2 = &STACK[0x12F0] + v5 + 48;
  *(a2 + 264) = (v4 ^ 0x1D7) + v5;
  *(a2 + 1888) = &STACK[0x12F0] + v5;
  LOBYTE(STACK[0x11A7]) = 0;
  v6 = *(v2 + 8 * (v3 + 7098));
  *(a2 + 1872) = 16;
  *(a2 + 1864) = v6;
  return (*(v2 + 8 * (*(a2 + 1980) + 7017)))();
}

uint64_t sub_1002378B8(uint64_t a1, uint64_t a2)
{
  *(a2 + 684) = v4;
  *(a2 + 200) = *(v2 + 8 * (v3 - 9270));
  return (*(v2 + 8 * (((v3 ^ 0x2A14) - 596) ^ (v3 - 9270))))();
}

uint64_t sub_100237960()
{
  v2 = (*(v1 + 8 * (v0 + 8800)))();
  STACK[0xCA0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100237B18(uint64_t a1)
{
  v2 = *a1 ^ (251922329 * ((a1 & 0xA55D41B2 | ~(a1 | 0xA55D41B2)) ^ 0x57011647));
  v5 = v2 - 1084270361 * (((v4 | 0xBB6AF0F6) - v4 + (v4 & 0x44950F08)) ^ 0x77430FEC) + 1995814053;
  result = (*(*(&off_1002DD400 + (v2 ^ 0x890A5AC0)) + 8 * (v2 ^ 0x890A72ED) - 2062743291))(v4);
  *(a1 + 4) = v4[0];
  return result;
}

void sub_100237C3C()
{
  v0 = __chkstk_darwin();
  v1 = 301143701 * (((v0 | 0xB12AB0B0) - v0 + (v0 & 0x4ED54F4F)) ^ 0xCA822DC2);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100237DDC()
{
  v2 = STACK[0x598];
  (*(v1 + 8 * (v0 ^ 0xEE0)))(STACK[0x598] - 515190054, sub_100191B00);
  (*(v1 + 8 * (v0 ^ 0xE03)))(STACK[0x560] - 1423619907);
  (*(v1 + 8 * (v0 + 608)))(v2 - 515190054, sub_100191B00);
  return (*(v1 + 8 * ((31 * (((107 * (v0 ^ 0x4B) + 1) ^ (*(STACK[0x590] - 949491762) == 0)) & 1)) ^ v0)))();
}

uint64_t sub_100237F34@<X0>(int a1@<W8>)
{
  v3 = *(*(STACK[0x548] - 543004047) + (*(STACK[0x550] - 1805449270) & 0x497D621C));
  STACK[0x9D0] = v1;
  STACK[0x9C8] = 0;
  v4 = 16777619 * ((1232953884 * v3 + 7) ^ (1232953884 * v3)) % 7;
  v5 = *(&STACK[0x9C8] | v4);
  *(&STACK[0x9C8] | v4) = 0;
  LOBYTE(STACK[0x9CF]) = v5;
  v6 = 16777619 * ((1232953884 * v3 + 6) ^ (1232953884 * v3)) % 6;
  v7 = *(&STACK[0x9C8] | v6);
  *(&STACK[0x9C8] | v6) = STACK[0x9CE];
  LOBYTE(STACK[0x9CE]) = v7;
  v8 = 16777619 * ((1232953884 * v3 + 5) ^ (1232953884 * v3)) % 5;
  v9 = *(&STACK[0x9C8] | v8);
  *(&STACK[0x9C8] | v8) = STACK[0x9CD];
  LOBYTE(STACK[0x9CD]) = v9;
  v10 = STACK[0x9C8];
  LOBYTE(STACK[0x9C8]) = STACK[0x9CC];
  LOBYTE(STACK[0x9CC]) = v10;
  v11 = 16777619 * (((1232953884 * v3) | 3) ^ (1232953884 * v3)) % 3;
  v12 = *(&STACK[0x9C8] | v11);
  *(&STACK[0x9C8] | v11) = STACK[0x9CB];
  LOBYTE(STACK[0x9CB]) = v12;
  v13 = STACK[0x9C9];
  LOBYTE(STACK[0x9CA]) = STACK[0x9C8];
  LOWORD(STACK[0x9C8]) = v13;
  v14 = vdup_n_s32(1232953884 * v3);
  v15.i32[0] = v14.i32[0];
  v15.i32[1] = (1232953884 * v3) | 1;
  v16 = veor_s8(vmul_s32(v15, v14), v14);
  STACK[0x9C8] = vmla_s32(v16, STACK[0x9C8], vdup_n_s32(0x1000193u));
  STACK[0x9D0] ^= STACK[0x9C8];
  STACK[0x9D0] = vmul_s32(vsub_s32(STACK[0x9D0], v16), vdup_n_s32(0x359C449Bu));
  v17 = STACK[0x9D2];
  LOWORD(STACK[0x9D1]) = STACK[0x9D0];
  LOBYTE(STACK[0x9D0]) = v17;
  v18 = (&STACK[0x9D0] | v11);
  LOBYTE(v13) = *v18;
  *v18 = STACK[0x9D3];
  LOBYTE(STACK[0x9D3]) = v13;
  LOBYTE(v18) = STACK[0x9D0];
  LOBYTE(STACK[0x9D0]) = STACK[0x9D4];
  LOBYTE(STACK[0x9D4]) = v18;
  v19 = (&STACK[0x9D0] | v8);
  LOBYTE(v18) = *v19;
  *v19 = STACK[0x9D5];
  LOBYTE(STACK[0x9D5]) = v18;
  v20 = (&STACK[0x9D0] | v6);
  LOBYTE(v19) = *v20;
  *v20 = STACK[0x9D6];
  LOBYTE(STACK[0x9D6]) = v19;
  v21 = (&STACK[0x9D0] | v4);
  v22 = *v21;
  *v21 = STACK[0x9D7];
  LOBYTE(STACK[0x9D7]) = v22;
  v23 = STACK[0x9D0];
  v24 = (1232953884 * STACK[0x9D0]) ^ v3;
  for (i = 1; i != 5; ++i)
  {
    v26 = 16777619 * ((v24 + i) ^ v24) % i;
    v27 = *(v23 + 8 * v26) ^ *(v23 + 8 * i);
    *(v23 + 8 * i) = v27;
    v28 = *(v23 + 8 * v26) ^ v27;
    *(v23 + 8 * v26) = v28;
    *(v23 + 8 * i) ^= v28;
  }

  v29 = 0;
  v30 = xmmword_1002A9AD0;
  v31 = xmmword_1002A9AE0;
  v32 = xmmword_1002A9AF0;
  v33 = xmmword_1002A9B00;
  v34.i64[0] = 0x9B009B009B009BLL;
  v34.i64[1] = 0x9B009B009B009BLL;
  v35.i64[0] = 0x1000000010;
  v35.i64[1] = 0x1000000010;
  v36 = vdupq_n_s32(v24);
  do
  {
    v37 = *(v23 + v29);
    v38 = vmovl_high_u8(v37);
    v39 = vmovl_u8(*v37.i8);
    v50.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v32, v36), vsubq_s32(v32, v36)), v36), vmull_high_u16(v39, v34));
    v50.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v31, v36), vsubq_s32(v31, v36)), v36), vmull_u16(*v38.i8, 0x9B009B009B009BLL));
    v50.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v33, v36), vsubq_s32(v33, v36)), v36), vmull_u16(*v39.i8, 0x9B009B009B009BLL));
    v50.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v30, v36), vsubq_s32(v30, v36)), v36), vmull_high_u16(v38, v34));
    *(v23 + v29) = vqtbl4q_s8(v50, xmmword_1002A9B10);
    v29 += 16;
    v33 = vaddq_s32(v33, v35);
    v32 = vaddq_s32(v32, v35);
    v31 = vaddq_s32(v31, v35);
    v30 = vaddq_s32(v30, v35);
  }

  while (v29 != 32);
  v40 = 0;
  v41 = xmmword_1002A9B20;
  v42 = xmmword_1002A9B30;
  v43 = vdupq_n_s32(v24);
  v44 = v23 + 32;
  v45.i64[0] = 0x9B009B009B009BLL;
  v45.i64[1] = 0x9B009B009B009BLL;
  v46.i64[0] = 0x800000008;
  v46.i64[1] = 0x800000008;
  do
  {
    v47 = vmovl_u8(*(v44 + v40));
    v49.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v43), vsubq_s32(v41, v43)), v43), vmull_high_u16(v47, v45));
    v49.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v43), vsubq_s32(v42, v43)), v43), vmull_u16(*v47.i8, 0x9B009B009B009BLL));
    *(v44 + v40) = vqtbl2q_s8(v49, xmmword_1002A9B40).u64[0];
    v42 = vaddq_s32(v42, v46);
    v41 = vaddq_s32(v41, v46);
    v40 += 8;
  }

  while (v40 != 8);
  *(STACK[0x580] - 1292128150) = STACK[0x9D0];
  return (*(v2 + 8 * a1))(v41, v42);
}

uint64_t sub_100238324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + a5) = v5 + 1;
  (*(v7 + 8 * (v6 ^ 0x3739)))(STACK[0x598] - 515190054, sub_100191B00);
  return (*(v7 + 8 * (((*(STACK[0x590] - 949491762) == 0) * (((v6 - 634) | 0x2C0) ^ 0x1E90)) ^ v6)))();
}

uint64_t sub_1002383D4()
{
  STACK[0x540] = -v1;
  v5 = *(v0 + 8 * (v2 - 7150));
  STACK[0x768] = 0;
  STACK[0x5B8] = v5 - 840124507;
  v6 = *(v5 - 840124475);
  STACK[0x708] = v6;
  v7 = *(v4 + 8 * (((v6 == 0x74B7A6D37B83F85BLL) * (5 * (((v2 - 7507) | 0x834) ^ 0xE1C) - 9572)) ^ (v2 - 1421)));
  STACK[0x5B0] = *(v0 + 8 * (v2 - 7352)) - 1742864867;
  STACK[0x5A8] = *(v0 + 8 * (v2 ^ 0x1D8E)) - 63186411;
  STACK[0x5C0] = *(v0 + 8 * (v2 ^ 0x1FCE));
  STACK[0x5A0] = *(v0 + 8 * (v2 - 7570)) - 2143029631;
  LODWORD(STACK[0x53C]) = v2;
  STACK[0x588] = *(v0 + 8 * (v2 ^ 0x1DD0));
  STACK[0x630] = v4;
  LODWORD(STACK[0x61C]) = v3;
  return v7();
}

uint64_t sub_1002384F4()
{
  STACK[0x658] = 224;
  v3 = (*(v2 + 8 * (v0 ^ 0xFFF)))(v1 - 0x74B7A6D37B83F833, &STACK[0xC30]) == 0;
  return (*(v2 + 8 * ((55 * v3) ^ v0)))();
}

uint64_t sub_100238594@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x10C1;
  v4 = a1 ^ 0xC1F;
  v5 = a1 ^ 0x1037;
  v6 = (*(v1 + 8 * ((a1 ^ 0x10C1) + 9294)))(STACK[0x5C0] + v2, 16);
  return (*(v1 + 8 * (((v6 ^ 1) * ((v4 - 5206) ^ v5)) ^ v3)))();
}

uint64_t sub_1002385F0()
{
  *(v3 - 168) = 635328916 - 586739509 * ((((v3 - 176) | 0x675F798E) - ((v3 - 176) & 0x675F798E)) ^ 0x91D57FEB) + v0 + 1385;
  *(v3 - 176) = &STACK[0x7A0];
  (*(v1 + 8 * (v0 ^ 0x2C27)))(v3 - 176);
  v4 = (*(v1 + 8 * (v0 + 9241)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v2, 16, *(&off_1002DD400 + v0 - 1087) - 332492878, &STACK[0x7A0], 2);
  return (*(v1 + 8 * v0))(v4);
}

uint64_t sub_1002386C4()
{
  v2 = v0 - 3611;
  v3 = (*(v1 + 8 * (v2 + 4470)))(STACK[0x5C0] - 1297817643, 16);
  return (*(v1 + 8 * ((v3 * ((v2 - 4570) ^ 0x610)) ^ v2)))();
}

uint64_t sub_100238714()
{
  *(v5 - 176) = &STACK[0xCC0];
  *(v5 - 168) = 295004707 * ((((v5 - 176) | 0x4EE282F1) - ((v5 - 176) | 0xB11D7D0E) - 1323467506) ^ 0x26BD366C) + 2085368327 + v0;
  *(v5 - 160) = v1 ^ (295004707 * ((((v5 - 176) | 0xE0BBC4E44EE282F1) - ((v5 - 176) | 0x1F443B1BB11D7D0ELL) + 0x1F443B1BB11D7D0ELL) ^ 0xF7D872B26BD366CLL));
  (*(v4 + 8 * (v0 + 4457)))(v5 - 176);
  v6 = (*(v4 + 8 * (v0 ^ 0x3197)))(STACK[0x588] - 1514018299, v2 + v3, 16, *(&off_1002DD400 + v0 - 5404) - 1525397283, &STACK[0xCC0], 12);
  return (*(v4 + 8 * v0))(v6);
}

uint64_t sub_100238850()
{
  v4 = (*(v1 + 8 * (v0 ^ 0x2FD2)))();
  v5 = 678427121 * ((((v3 - 176) | 0xC191162D) - ((v3 - 176) & 0xC191162D)) ^ 0x534B4C37);
  v6 = *v4 + v5;
  *(v3 - 168) = v5 - 805025901 + v0 + 1294;
  *(v3 - 164) = v6;
  *(v3 - 176) = &STACK[0xBD0];
  (*(v1 + 8 * (v0 + 9058)))(v3 - 176);
  v7 = (*(v1 + 8 * (v0 ^ 0x2FC9)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v2, 16, *(&off_1002DD400 + (v0 ^ 0x4FB)) - 640358858, &STACK[0xBD0], 8);
  return (*(v1 + 8 * v0))(v7);
}

uint64_t sub_1002389A4()
{
  v3 = *(v1 - 0x74B7A6D37B83F853);
  STACK[0x658] -= 160;
  return (*(v2 + 8 * ((2391 * (v3 == ((((v0 - 79650981) & 0x4BF4FE9) + 4219) ^ v0 ^ 0x3C0u))) ^ v0)))();
}

uint64_t sub_100238A70@<X0>(uint64_t a1@<X8>)
{
  *(v4 + v2) = 0;
  *(v4 + v3) = a1;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_100238B0C()
{
  v6 = 678427121 * ((1319148718 - ((v5 - 176) | 0x4EA09CAE) + ((v5 - 176) | 0xB15F6351)) ^ 0x2385394B);
  *(v5 - 176) = &STACK[0xBC0];
  *(v5 - 168) = v6 - 805025901 + v0 + 441;
  *(v5 - 164) = v6 + v1 - 68598086 + v2;
  (*(v3 + 8 * (v0 + 8205)))(v5 - 176);
  v7 = (*(v3 + 8 * (v0 + 8180)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v4, 16, *(&off_1002DD400 + v0 - 2185) - 646681811, &STACK[0xBC0], 8);
  return (*(v3 + 8 * v0))(v7);
}

uint64_t sub_100238D28()
{
  *(v3 - 176) = &STACK[0x710];
  *(v3 - 168) = v0 - 586739509 * ((1705041283 - ((v3 - 176) | 0x65A0DD83) + ((v3 - 176) | 0x9A5F227C)) ^ 0x6CD52419) + 635328916;
  (*(v1 + 8 * (v0 + 7866)))(v3 - 176);
  v4 = (*(v1 + 8 * (v0 + 7856)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v2, 16, *(&off_1002DD400 + (v0 ^ 0xBC7)) - 818000007, &STACK[0x710], 2);
  return (*(v1 + 8 * v0))(v4);
}

uint64_t sub_100238E6C()
{
  v3 = (v0 + 1549082071) & 0xA3AACEF7;
  v4 = (*(v1 + 8 * (v3 + 9405)))(STACK[0x5C0] + v2, 16);
  return (*(v1 + 8 * ((v4 * ((3947 * (v3 ^ 0x4F7)) ^ 0x14E5)) ^ v3)))();
}

uint64_t sub_100238ED0()
{
  v4 = *(*(v1 + 8 * (v0 + 9403)))();
  v5 = 678427121 * ((-867701644 - ((v3 - 176) | 0xCC47EC74) + ((v3 - 176) | 0x33B8138B)) ^ 0xA1624991);
  *(v3 - 176) = &STACK[0x10B0];
  *(v3 - 168) = v5 - 805025901 + v0 + 1659;
  *(v3 - 164) = v4 + v5;
  (*(v1 + 8 * (v0 + 9423)))(v3 - 176);
  v6 = (*(v1 + 8 * (v0 ^ 0x2D5E)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v2, 16, *(&off_1002DD400 + (v0 ^ 0x7F1)) - 1182760895, &STACK[0x10B0], 8);
  return (*(v1 + 8 * v0))(v6);
}

uint64_t sub_100238FE0()
{
  STACK[0x658] += (v1 - 1526665336) & 0x5AFF1FD6 ^ 0xFFFFFFFFFFFFE1B6;
  v3 = *(v0 - 0x74B7A6D37B83F85BLL);
  v4 = (*(v2 + 8 * (v1 + 6706)))(STACK[0x598] - 515190054, sub_100191B00);
  return (*(v2 + 8 * ((4861 * (v3 == 0)) ^ v1)))(v4);
}

uint64_t sub_100239224()
{
  *(v3 - 176) = &STACK[0x680];
  *(v3 - 168) = v0 - 586739509 * ((((v3 - 176) | 0xDEFF92DA) - ((v3 - 176) & 0xDEFF92DA)) ^ 0x287594BF) + 635324023;
  (*(v1 + 8 * (v0 + 2973)))(v3 - 176);
  v4 = (*(v1 + 8 * (v0 ^ 0x37B3)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v2, 16, *(&off_1002DD400 + v0 - 6856) - 885640435, &STACK[0x680], 2);
  return (*(v1 + 8 * v0))(v4);
}

uint64_t sub_1002392F4()
{
  v4 = *(v2 + v0);
  v5 = (*(v3 + 8 * (v1 ^ 0x263C)))(STACK[0x598] - 515190054, sub_100191B00);
  return (*(v3 + 8 * (((v4 == 0) * ((2 * v1) ^ 0x1F29)) ^ v1)))(v5);
}

uint64_t sub_100239480@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0x948] = a1;
  LODWORD(STACK[0x954]) = v3;
  STACK[0x958] = &STACK[0xBF0] + a2 + 0x2B1A0449E8A6C928;
  STACK[0x960] = &STACK[0xBF0] + a2 + 40;
  STACK[0x968] = &STACK[0xBF0] + a2 + 56;
  STACK[0x970] = &STACK[0xBF0] + a2 + 0x2B1A0449E8A6C970;
  STACK[0x658] = a2 + 96;
  STACK[0x750] = 0x1A3404AE6F02C5F7;
  LODWORD(STACK[0x670]) = 1443455193;
  LODWORD(STACK[0x6EC]) = 2059249624;
  v6 = v3 != 934421573 && a1 != 0;
  return (*(v4 + 8 * ((v6 * (((v2 - 951906259) & 0x38BCFFBC) - 10011)) ^ v2)))();
}

uint64_t sub_10023957C()
{
  v6 = *(v2 + 4) & 0xF000;
  if (v6 == 40960 || v6 == 0x4000)
  {
    v7 = *(v4 + 8 * (((*(v4 + 8 * (v3 + 2780)))(STACK[0x5C0] + v5, 16) * (((v3 - 7802) | 0x800) + 7025)) ^ (v3 - 6625)));
    return v7();
  }

  else
  {
    v9 = (*(v4 + 8 * (v3 ^ 0x34CA)))(v1 + v0, 16);
    return (*(v4 + 8 * ((67 * (v9 < ((v3 - 6392) ^ (v3 - 4874) ^ 0xE12))) ^ (v3 - 1057))))(v9);
  }
}

uint64_t sub_100239760()
{
  v5 = *(*(v3 + 8 * (v0 ^ 0x2C6E)))();
  v6 = 678427121 * ((((v4 - 176) ^ 0x40800401 | 0xB94FD396) + ((v4 - 176) ^ 0x90488386 | 0x46B02C69)) ^ 0x4212DD9C);
  *(v4 - 176) = &STACK[0x10A0];
  *(v4 - 168) = v6 - 805025901 + v0 + 1426;
  *(v4 - 164) = v5 + v6;
  (*(v3 + 8 * (v0 ^ 0x2C1A)))(v4 - 176);
  v7 = (*(v3 + 8 * (v0 ^ 0x2C75)))(STACK[0x588] - 1514018299, v1 + v2, 16, *(&off_1002DD400 + (v0 ^ 0x535)) - 286976950, &STACK[0x10A0], 8);
  return (*(v3 + 8 * v0))(v7);
}

uint64_t sub_1002398F4()
{
  (*(v1 + 8 * (v0 ^ 0x2F6C)))(0, 63);
  v2 = (*(v1 + 8 * (v0 + 8999)))(STACK[0x5C0] - 1297817643, 16);
  return (*(v1 + 8 * (((v2 ^ 1) * ((v0 + 373971020) & 0xE9B5BFFE ^ 0x1EE6)) | v0)))();
}

uint64_t sub_100239974()
{
  v6 = (v2 - 99) | 0x93;
  v7 = 678427121 * ((2 * ((v5 - 176) & 0x3370338) - (v5 - 176) - 53936960) ^ 0x6E12A6DA);
  *(v5 - 168) = v7 - 805025901 + v6 + 1205;
  *(v5 - 164) = v3 + v7;
  *(v5 - 176) = &STACK[0xBE0];
  (*(v4 + 8 * (v6 ^ 0x2F7F)))(v5 - 176);
  v8 = (*(v4 + 8 * (v6 ^ 0x2F10)))(STACK[0x588] - 1514018299, v0 + v1, 16, *(&off_1002DD400 + (v6 ^ 0x6BE)) - 847080926, &STACK[0xBE0], 8);
  return (*(v4 + 8 * v6))(v8);
}

uint64_t sub_100239A8C(int a1)
{
  v5 = *(v3 + 8 * ((((*(v3 + 8 * (v1 ^ 0x224D)))(*(v2 + 96)) != 0) * (746 * ((v1 + 327103411) & 0xEC80DEDB ^ 0x1E51) - 7458)) ^ v1));
  LODWORD(STACK[0x628]) = a1;
  return v5();
}

uint64_t sub_100239AF8(uint64_t a1)
{
  v5 = (*(v4 + 8 * (v1 + 3273)))(v2, a1, *(v3 + 96));
  STACK[0x610] = v3;
  return (*(v4 + 8 * (((v5 == *(v3 + 96)) * ((v1 - 5182) ^ 0xD21 ^ (23 * (v1 ^ 0x1D1B)))) ^ v1)))();
}

uint64_t sub_100239B64()
{
  STACK[0x620] = v2;
  STACK[0x768] = v2;
  v4 = *(v0 - 0x74B7A6D37B83F85BLL);
  (*(v3 + 8 * (v1 + 8387)))(STACK[0x598] - 515190054, sub_100191B00);
  return (*(v3 + 8 * (((v4 == 0) * ((v1 + 5616) ^ 0x178)) ^ v1)))(v4);
}

uint64_t sub_100239C78()
{
  v4 = STACK[0x610];
  *(v1 - 0x74B7A6D37B83F853) = *(STACK[0x610] + 48);
  *(v1 - 0x74B7A6D37B83F84BLL) = (*(v4 + 56) ^ 0xFF93FDFB8EEBFDD7) + 0x7BFEDABEFDDE837ALL + ((*(v4 + 56) << (v0 + 43)) & 0xFF27FBF71DD7FBAELL);
  v5 = *(v1 + v2);
  v6 = (*(v3 + 8 * (v0 + 2771)))(STACK[0x598] - 515190054, sub_100191B00);
  return (*(v3 + 8 * ((4046 * (v5 == 0)) ^ (v0 + 2296))))(v6);
}

uint64_t sub_100239DD4()
{
  v3 = (*(v1 + 8 * (v0 + 2903)))(STACK[0x5C0] + v2, 16);
  STACK[0x620] = 0;
  return (*(v1 + 8 * ((v3 * ((v0 + 2522) ^ (v0 + 123))) ^ v0)))();
}

uint64_t sub_100239E2C()
{
  *(v3 - 168) = 635328916 - 586739509 * ((v3 - 1101471583 - 2 * ((v3 - 176) & 0xBE58E151)) ^ 0x48D2E734) + v0 - 5366 + 406;
  *(v3 - 176) = &STACK[0x690];
  (*(v1 + 8 * (v0 + 2906)))(v3 - 176);
  v4 = (*(v1 + 8 * ((v0 - 5366) ^ 0x20CE)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v2, 16, *(&off_1002DD400 + ((v0 - 5366) ^ 0x9CA)) - 1086673010, &STACK[0x690], 2);
  STACK[0x620] = 0;
  return (*(v1 + 8 * (v0 - 5366)))(v4);
}

uint64_t sub_100239F74()
{
  v5 = STACK[0x610] + 144;
  v6 = 301143701 * ((v4 - 176) ^ 0x1257B2247BA89D72);
  *(v4 - 176) = (v0 - 331702290) ^ v6;
  *(v4 - 168) = v1 ^ v6;
  *(v4 - 160) = v5;
  (*(v2 + 8 * (v0 ^ 0x2F80)))(v4 - 176);
  v7 = (*(v2 + 8 * (v0 ^ 0x2C6F)))(STACK[0x588] - 1514018299, STACK[0x5C0] + v3, 16, *(&off_1002DD400 + (v0 ^ 0x576)) - 1583559119, v5, 12);
  return (*(v2 + 8 * v0))(v7);
}

uint64_t sub_10023A040()
{
  v3 = (*(v2 + 8 * (v0 + 2645)))(v1);
  STACK[0x620] = 0;
  return (*(v2 + 8 * (v0 - 123)))(v3);
}

uint64_t sub_10023A0B8()
{
  v3 = (*(v2 + 8 * (v1 + 2769)))(LODWORD(STACK[0x628]));
  STACK[0x658] -= 160;
  return (*(v2 + 8 * ((125 * (v0 - 934421573 < ((v1 + 1975499813) & 0x8A402FFF) - 2751)) ^ (v1 - 6441))))(v3);
}

uint64_t sub_10023A264(uint64_t a1)
{
  v3 = v1 ^ 0x1430;
  v4 = v1 + 269;
  if (&STACK[0x78C])
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v2 + 8 * ((v6 * (v3 - 2778)) ^ v4)))();
}

uint64_t sub_10023A314()
{
  if ((v3 - 613497492) < 0x1320E9B1 != v0 - 1738325539 < (((v1 ^ 0x1CCE) * v2) ^ 0x1320F767u))
  {
    v5 = v0 - 1738325539 < (((v1 ^ 0x1CCE) * v2) ^ 0x1320F767u);
  }

  else
  {
    v5 = v0 - 1738325539 > (v3 - 613497492);
  }

  return (*(v4 + 8 * ((21 * v5) ^ v1)))();
}

uint64_t sub_10023A3F0(uint64_t a1)
{
  v6 = v4 + v1;
  v7 = *(a1 + (v4 + v1 + 4));
  LOBYTE(STACK[0x78F]) = (v7 ^ 0x6E) + ((2 * v7) & 0xDD) - 4;
  LOBYTE(STACK[0x78E]) = (v3 ^ 0xE8 ^ *(a1 + (v6 + 3)) ^ 0xB7) + ((2 * *(a1 + (v6 + 3))) & 0xDD) - 4;
  LOBYTE(STACK[0x78D]) = (*(a1 + (v6 + 2)) ^ 0x6E) + ((2 * *(a1 + (v6 + 2))) & 0xDD) - 4;
  LOBYTE(STACK[0x78C]) = (*v2 ^ 0x6E) + ((2 * *v2) & 0xDD) - 4;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_10023A490(uint64_t a1)
{
  LOBYTE(STACK[0x78C]) = (*v3 ^ 0x6E) + ((*v3 << (((v2 + 80) ^ 0x80) & 0xA7)) & 0xDC) - 4;
  v6 = v4 + v1;
  v7 = *(a1 + (v4 + v1 + 2));
  LOBYTE(STACK[0x78D]) = (v7 ^ 0x6E) + ((2 * v7) & 0xDD) - 4;
  LOBYTE(STACK[0x78E]) = (*(a1 + (v6 + 3)) ^ 0x6E) + ((2 * *(a1 + (v6 + 3))) & 0xDD) - 4;
  LOBYTE(STACK[0x78F]) = (*(a1 + (v6 + 4)) ^ 0x6E) + ((2 * *(a1 + (v6 + 4))) & 0xDD) - 4;
  return (*(v5 + 8 * v2))();
}

uint64_t sub_10023A5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v7 = *(v6 + 8 * a4);
  STACK[0x608] = *(v4 + 8 * (v5 - 7648)) - 2108892683;
  v8 = *(v4 + 8 * (v5 ^ 0x1C62)) - 817366543;
  v9 = *(v4 + 8 * (v5 ^ 0x1F1E));
  v10 = *(v4 + 8 * (v5 - 7670)) - 612544867;
  STACK[0x620] = v9 - 383698299;
  v11 = *(v4 + 8 * (v5 ^ 0x1EAD)) - 1063915046;
  v12 = *(v4 + 8 * (v5 ^ 0x1F08));
  STACK[0x628] = v12 - 1880046115;
  return v7(a1, a2, a3, v10, 383698299 - v9, 1880046115 - v12, v8, v11);
}

uint64_t sub_10023A730(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  STACK[0x510] = a6;
  STACK[0x518] = a5;
  STACK[0x530] = a4;
  STACK[0x520] = v6;
  LODWORD(STACK[0x52C]) = v7;
  v10 = v7 - 1443455234 < ((v8 - 2197) ^ 0xFFFFE9A6);
  return (*(v9 + 8 * (((8 * v10) | (16 * v10)) ^ (v8 + 2190))))();
}

uint64_t sub_10023A7DC(__n128 a1, __n128 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  LODWORD(STACK[0x5F0]) = v10;
  STACK[0x5C8] = v11;
  STACK[0x5D0] = a10;
  STACK[0x5D8] = a9;
  v13 = STACK[0x958];
  v14 = STACK[0x954];
  v15 = STACK[0x948];
  STACK[0xB68] = STACK[0x948];
  STACK[0xB70] = &STACK[0x6EC];
  LODWORD(STACK[0x600]) = v14 - 786372943;
  STACK[0x5F8] = v15 - 7;
  v16 = *(v12 + 8 * (((2 * a4) ^ 0x12A3) + a4));
  LODWORD(STACK[0x610]) = 68543949;
  a1.n128_u16[0] = 13878;
  a1.n128_u8[2] = 54;
  a1.n128_u8[3] = 54;
  a1.n128_u8[4] = 54;
  a1.n128_u8[5] = 54;
  a1.n128_u8[6] = 54;
  a1.n128_u8[7] = 54;
  a2.n128_u16[0] = 6939;
  a2.n128_u8[2] = 27;
  a2.n128_u8[3] = 27;
  a2.n128_u8[4] = 27;
  a2.n128_u8[5] = 27;
  a2.n128_u8[6] = 27;
  a2.n128_u8[7] = 27;
  v17.n128_u64[0] = 0x3636363636363636;
  v17.n128_u64[1] = 0x3636363636363636;
  v18.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v18.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  STACK[0x5E8] = v15 + 0x2B1A0449E8A6C928;
  STACK[0x5E0] = v13;
  return v16(a1, a2, v17, v18);
}

uint64_t sub_10023A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v10 = v8 + a6 - 557887986 + ((a8 - 1331221644) & 0x4F58D636 ^ 0xAF560324);
  v11 = v10 < 0x8D30AF6;
  v12 = v10 > LODWORD(STACK[0x600]);
  if (LODWORD(STACK[0x600]) < 0x8D30AF6 != v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return (*(v9 + 8 * ((43 * !v13) ^ a8)))(a1, a2, 42);
}

uint64_t sub_10023ABE8()
{
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0x508]) = (v0 ^ 0x1CF) - 4325;
  return v2();
}

uint64_t sub_10023AC24@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W7>, int a5@<W8>, int8x8_t a6@<D0>, int8x8_t a7@<D1>)
{
  v11 = *(STACK[0x5F8] + (a3 - a1 + a2));
  *(v9 + (a3 - a1 + v7)) = vadd_s8(vsub_s8(v11, vand_s8(vadd_s8(v11, v11), a6)), a7);
  return (*(v10 + 8 * ((463 * (v8 + a1 != a5)) ^ a4)))();
}

uint64_t sub_10023ACF4@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W6>, int a5@<W8>)
{
  v11 = *(STACK[0xB68] + (a2 + a3));
  *(v9 + (a3 - 63607687)) = v11 + (a5 ^ v7 ^ 0x29 ^ v8 & (2 * v11)) + 28;
  v13 = a3 + v6 > v5 && a3 + v6 < a1;
  return (*(v10 + 8 * ((v13 * a4) ^ a5)))();
}

uint64_t sub_10023AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, int a9@<W8>, int8x16_t a10@<Q2>, int8x16_t a11@<Q3>)
{
  v16 = STACK[0xB68] + v15;
  v17 = *(v16 - 15);
  v18 = *(v16 - 31);
  v19 = v12 + a8;
  *(v19 - 15) = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a10)), a11);
  *(v19 - 31) = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a10)), a11);
  return (*(v14 + 8 * (((v13 == 0) * a9) ^ v11)))(a1, a2, a3, a4, a5, a6, a7, a8 - 32);
}

uint64_t sub_10023AE80@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  v9 = *(STACK[0xB68] + (v8 + a1));
  *(v6 + (v8 + v3)) = v9 - (v5 & (2 * v9)) + 27;
  return (*(v7 + 8 * (((v8 - 1 == v4) * a2) ^ a3)))();
}

uint64_t sub_10023AFA4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3757)))(176);
  STACK[0x990] = v2 + 0x2087B04485EAB71CLL;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 ^ 0x9DD) + 2463) ^ 0xFFFFC1FC) + (v0 ^ 0x9DD) + 1995)) ^ v0 ^ 0x9DD)))();
}

uint64_t sub_10023B14C()
{
  v4 = STACK[0x8CC];
  if (SLODWORD(STACK[0x8CC]) <= -1187217139)
  {
    if (v4 == -2011983607)
    {
      STACK[0x520] = v0;
      STACK[0x658] += (v2 + 2080170184) & 0x84031C7F ^ 0x1C3ELL;
      return (*(v3 + 8 * (((STACK[0x980] == 0x1A3404AE6F02C5F7) * (((v2 - 5830) | 0xA6) ^ 0x87C)) ^ (v2 + 1688))))();
    }

    if (v4 != -1976985328)
    {
      if (v4 == -1194878485)
      {
        LODWORD(STACK[0x654]) = 1785358954;
        return (*(v3 + 8 * (((STACK[0x980] == 0x1A3404AE6F02C5F7) * (((8 * v2) ^ 0xFFC8) - 2375)) ^ (v2 + 1156))))();
      }

      return (*(v3 + 8 * ((35 * ((LODWORD(STACK[0x670]) - 1443455193) + (v1 - 1443455193) < (46 * (v2 ^ 0x1EBDu)) + 4294962374u)) ^ (v2 - 3220))))();
    }

    return (*(v3 + 8 * (((STACK[0x980] != 0x1A3404AE6F02C5F7) * ((43 * (v2 ^ 0x1EC7)) ^ 0x2A4)) ^ (v2 - 5922))))();
  }

  else if (v4 > 1831808499)
  {
    if (v4 != 1831808500)
    {
      if (v4 == 1983825401)
      {
        return (*(v3 + 8 * (((STACK[0x980] == 0x1A3404AE6F02C5F7) * (((v2 - 7886) | 0x970) ^ 0x995)) ^ (v2 - 2391))))();
      }

      return (*(v3 + 8 * ((35 * ((LODWORD(STACK[0x670]) - 1443455193) + (v1 - 1443455193) < (46 * (v2 ^ 0x1EBDu)) + 4294962374u)) ^ (v2 - 3220))))();
    }

    return (*(v3 + 8 * (((STACK[0x980] != 0x1A3404AE6F02C5F7) * (823 * (v2 ^ 0x1ED2) - 3262)) ^ (v2 + 1359))))();
  }

  else
  {
    if (v4 != -1187217138)
    {
      if (v4 == -444854027)
      {
        return (*(v3 + 8 * (((STACK[0x980] == 0x1A3404AE6F02C5F7) * ((8 * v2) ^ 0xF688)) ^ (v2 - 5704))))();
      }

      return (*(v3 + 8 * ((35 * ((LODWORD(STACK[0x670]) - 1443455193) + (v1 - 1443455193) < (46 * (v2 ^ 0x1EBDu)) + 4294962374u)) ^ (v2 - 3220))))();
    }

    return (*(v3 + 8 * (((STACK[0x980] != 0x1A3404AE6F02C5F7) * ((v2 - 2981) ^ 0x1334)) ^ (v2 - 5470))))();
  }
}

uint64_t sub_10023D050(int a1, unsigned int a2)
{
  v12 = (a2 + v5) & 0xF;
  *(v3 + a2) = *(v11 + v12) ^ *(v4 + a2 + v5) ^ *(v2 + v12) ^ (-37 * (a2 & 0xF)) ^ *(v9 + v12) ^ (-93 * v12) ^ *(v7 + (a2 & 0xF)) ^ *((a2 & 0xF) + v8 + 3) ^ *(v6 + (a2 & 0xF));
  v13 = *(v10 + 8 * ((15734 * (a2 < 0x1F)) ^ a1));
  LODWORD(STACK[0xB18]) = a1 + 799;
  return v13();
}

uint64_t sub_10023D0E8(unsigned int a1)
{
  v13 = (v1 + a1);
  v14 = ((*(*(v10 + v11) + (*(v8 + v9) & v2)) ^ v13) & 0x7FFFFFFF) * v6;
  v15 = (v14 >> ((v7 + 43) ^ 0xB4)) ^ v14;
  HIDWORD(v16) = a1 + v4;
  LODWORD(v16) = v15 * v6;
  v17 = *(v5 + ((v16 >> 24) & 0xFFF)) ^ *(v3 + a1 + v4) ^ (81 * v15);
  v18 = a1 >= 0x3B;
  v19 = a1 + 1;
  v20 = !v18;
  *v13 = v17;
  return (*(v12 + 8 * ((7309 * v20) ^ v7)))(v19);
}

uint64_t sub_10023D1D0()
{
  v1 = STACK[0xA08];
  STACK[0xA20] = STACK[0xA08] + 383;
  *(v1 + 383) = 44;
  *(STACK[0xA08] + 384) = -16;
  v2 = STACK[0xA08];
  STACK[0xA28] = STACK[0xA08] + 385;
  *(v2 + 385) = -96;
  v3 = STACK[0xA08];
  STACK[0xA30] = STACK[0xA08] + 386;
  *(v3 + 386) = -104;
  v4 = STACK[0xA08];
  STACK[0xA38] = STACK[0xA08] + 387;
  *(v4 + 387) = 117;
  *(STACK[0xA08] + 388) = 85;
  *(STACK[0xA08] + 389) = 26;
  *(STACK[0xA08] + 390) = 19;
  v5 = STACK[0xA08];
  STACK[0xA40] = STACK[0xA08] + 391;
  *(v5 + 391) = -82;
  *(STACK[0xA08] + 392) = 15;
  v6 = STACK[0xA08];
  STACK[0xA48] = STACK[0xA08] + 393;
  *(v6 + 393) = 55;
  v7 = STACK[0xA08];
  STACK[0xA50] = STACK[0xA08] + 394;
  *(v7 + 394) = -76;
  *(STACK[0xA08] + 395) = -119;
  *(STACK[0xA08] + 396) = -68;
  *(STACK[0xA08] + 397) = -2;
  *(STACK[0xA08] + 398) = -63;
  v8 = STACK[0xA08];
  STACK[0xA58] = STACK[0xA08] + 399;
  *(v8 + 399) = 69;
  *(STACK[0xA08] + 400) = 24;
  *(STACK[0xA08] + 401) = 40;
  *(STACK[0xA08] + 402) = -8;
  v9 = STACK[0xA08];
  STACK[0xA60] = STACK[0xA08] + 403;
  *(v9 + 403) = -57;
  *(STACK[0xA08] + 404) = -98;
  *(STACK[0xA08] + 405) = 33;
  *(STACK[0xA08] + 406) = 50;
  v10 = STACK[0xA08];
  STACK[0xA68] = STACK[0xA08] + 407;
  *(v10 + 407) = -13;
  v11 = STACK[0xA08];
  STACK[0xA70] = STACK[0xA08] + 408;
  *(v11 + 408) = -34;
  v12 = STACK[0xA08];
  STACK[0xA78] = STACK[0xA08] + 409;
  *(v12 + 409) = 43;
  *(STACK[0xA08] + 410) = 65;
  v13 = STACK[0xA08];
  STACK[0xA80] = STACK[0xA08] + 411;
  *(v13 + 411) = 74;
  *(STACK[0xA08] + 412) = 16;
  v14 = STACK[0xA08];
  STACK[0xA88] = STACK[0xA08] + 413;
  *(v14 + 413) = -46;
  v15 = STACK[0xA08];
  STACK[0xA90] = STACK[0xA08] + 414;
  *(v15 + 414) = 77;
  *(STACK[0xA08] + 415) = -117;
  v16 = STACK[0xA08];
  STACK[0xA98] = STACK[0xA08] + 416;
  *(v16 + 416) = -86;
  *(STACK[0xA08] + 417) = 118;
  v17 = STACK[0xA08];
  STACK[0xAA0] = STACK[0xA08] + 418;
  *(v17 + 418) = 125;
  v18 = STACK[0xA08];
  STACK[0xAA8] = STACK[0xA08] + 419;
  *(v18 + 419) = 54;
  v19 = (STACK[0xA08] + 420);
  STACK[0xAB0] = v19;
  *v19 = -8;
  v20 = STACK[0xA08];
  STACK[0xAB8] = STACK[0xA08] + 421;
  *(v20 + 421) = 73;
  v21 = STACK[0xA08];
  STACK[0xAC0] = STACK[0xA08] + 422;
  *(v21 + 422) = 104;
  *(STACK[0xA08] + 423) = -28;
  *(STACK[0xA08] + 424) = 44;
  v22 = STACK[0xA08];
  STACK[0xAC8] = STACK[0xA08] + 425;
  *(v22 + 425) = 11;
  *(STACK[0xA08] + 426) = -4;
  *(STACK[0xA08] + 427) = -32;
  *(STACK[0xA08] + 428) = -44;
  *(STACK[0xA08] + 429) = -99;
  v23 = STACK[0xA08];
  STACK[0xAD0] = STACK[0xA08] + 430;
  *(v23 + 430) = 42;
  *(STACK[0xA08] + 431) = 47;
  *(STACK[0xA08] + 432) = -36;
  v24 = STACK[0xA08];
  STACK[0xAD8] = STACK[0xA08] + 433;
  *(v24 + 433) = 75;
  v25 = STACK[0xA08];
  STACK[0xAE0] = STACK[0xA08] + 434;
  *(v25 + 434) = -17;
  v26 = STACK[0xA08];
  STACK[0xAE8] = STACK[0xA08] + 435;
  *(v26 + 435) = 3;
  v27 = STACK[0xA08];
  STACK[0xAF0] = STACK[0xA08] + 436;
  *(v27 + 436) = 86;
  v28 = STACK[0xA08];
  STACK[0xAF8] = STACK[0xA08] + 437;
  *(v28 + 437) = 100;
  v29 = (STACK[0xA08] + 438);
  STACK[0xB00] = v29;
  *v29 = -17;
  *(STACK[0xA08] + 439) = -5;
  *(STACK[0xA08] + 440) = -121;
  *(STACK[0xA08] + 441) = 121;
  v30 = (STACK[0xA08] + 442);
  STACK[0xB08] = v30;
  *v30 = -17;
  *(STACK[0xA08] + 443) = 73;
  *(STACK[0xA08] + 444) = 33;
  v31 = STACK[0xA08];
  STACK[0xB10] = STACK[0xA08] + 445;
  *(v31 + 445) = -103;
  *(STACK[0xA08] + 446) = 61;
  return (*(v0 + 8 * ((((LODWORD(STACK[0xA04]) - 1373372504) < 0xF8) * (LODWORD(STACK[0xA00]) + 12925)) ^ LODWORD(STACK[0x9FC]))))();
}

uint64_t sub_10023D6B0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = (v6 + a5 + v10) % v9;
  *(a5 + a6 + a3) = *(STACK[0xB80] + v15) ^ *(v11 + (v15 & 0xF)) ^ *(v13 + (v15 & 0xF)) ^ ((v15 & 0xF) * a1) ^ *(v12 + (v15 & 0xF)) ^ a2;
  return (*(v14 + 8 * (((a5 + 1 == v8 + 319) * a4) ^ v7)))();
}

uint64_t sub_10023D71C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 - 13112) % (((v4 - 7) | 8) ^ 0x933u);
  v7 = *(a1 + (v3 + v1 + 142) % 0x13Fu);
  v8 = *(a1 + (v3 + v1 + 98) % 0x13Fu);
  HIDWORD(v10) = v7 ^ 9;
  LODWORD(v10) = (v7 ^ 0x80) << 24;
  v9 = v10 >> 29;
  HIDWORD(v10) = v8 ^ 1;
  LODWORD(v10) = (v8 ^ 0xFFFFFF8F) << 24;
  v11 = v10 >> 27;
  v12 = *(a1 + (v3 + v1) % 0x13Fu);
  HIDWORD(v10) = ~v12;
  LODWORD(v10) = (v12 ^ 0x88888888) << 24;
  v13 = ((v9 - ((2 * v9) & 0x12) - 119) ^ *(a1 + v6)) + v11 - (v10 >> 25);
  *(a1 + v6) = v13 - ((2 * v13) & 0x12) - 119;
  return (*(v5 + 8 * ((46 * (v3 + 1 == v2 + 1276)) ^ v4)))();
}

uint64_t sub_10023D818(uint64_t a1, char a2)
{
  LODWORD(STACK[0x600]) = 0;
  v6 = STACK[0xA08];
  v7 = *(STACK[0xA08] + 109);
  v8 = *(STACK[0xA08] + 21);
  v9 = STACK[0xA20];
  v10 = STACK[0xA20];
  v11 = (*(STACK[0xA20] + (*(STACK[0xA08] + 40) & 0x3F ^ v3)) & 0x75 | *STACK[0xA98] & 0x8A) ^ 0x36;
  v12 = *(STACK[0xA08] + 52);
  v13 = STACK[0xA18];
  v14 = (*(STACK[0xA08] + 380) ^ 0x3A) & (*STACK[0xAA8] ^ 0xC9) | (*(STACK[0xA18] + (v12 & 0x3F ^ v3)) ^ 0x36) & (*STACK[0xAA8] ^ 0x36);
  v15 = (*(STACK[0xA08] + 94) ^ 0x89) - ((v14 | v11) & 0x2B | v14 & v11);
  *(v6 + 94) = v15 - (a2 & (2 * v15)) - 119;
  v16 = STACK[0xA08];
  STACK[0x5D0] = STACK[0xA08];
  v17 = v16[379];
  v18 = (v16[139] ^ 0x89) & (v17 ^ 0x3A);
  v19 = v17 ^ 0xC5;
  v20 = STACK[0xA10];
  v21 = (*(STACK[0xA10] + (v16[85] & 0x3F ^ v3)) ^ 0x3A) & v19 | v18;
  *(STACK[0xB78] + STACK[0xB98]) ^= (v21 | 0x2A) & (v16[356] ^ 0x3A) | v21 & 0x2A;
  v22 = STACK[0xA08];
  LODWORD(STACK[0x5E8]) = *(v9 + (*(STACK[0xA08] + 157) & 0x3F ^ v3));
  LODWORD(STACK[0x5F8]) = *(v22 + 125);
  LODWORD(STACK[0x5F0]) = *(v9 + (*(v22 + 104) & 0x3F ^ v3));
  LODWORD(STACK[0x5E0]) = *(v22 + 451);
  v23 = STACK[0xA40];
  STACK[0x4E8] = STACK[0xA40];
  *v23 = -54;
  v24 = (*(STACK[0xA08] + 175) ^ 0x89) - (v12 ^ 0x89);
  *(STACK[0xA08] + 175) = v24 + (~(2 * v24) | 0xED) - 118;
  v25 = STACK[0xA08];
  STACK[0x4F0] = STACK[0xA08];
  LODWORD(STACK[0x508]) = *(v13 + (*(v25 + 44) & 0x3F ^ v3));
  *(v25 + 100) = (*(v25 + 100) ^ 0x89) - ((2 * (*(v25 + 100) ^ 0x89) + 26) & a2) - 122;
  LOBYTE(v10) = (*(STACK[0xA08] + 450) ^ 0x36) + (*(v10 + (*(STACK[0xA08] + 17) & 0x3F ^ v3)) ^ 0x36);
  *(STACK[0xA08] + 450) = v10 - ((2 * v10) & 0x6C) + 54;
  v26 = STACK[0xA08];
  STACK[0x5C8] = STACK[0xA08];
  LODWORD(v22) = (v26[101] ^ 0xFFFFFF89) - ((171 * ((v26[479] & 0x8C | *(v20 + (v26[57] & 0x3F ^ v3)) & 0x73) ^ 0x36u)) >> 9);
  v26[101] = v22 - (a2 & (2 * v22)) - 119;
  v27 = STACK[0xA08];
  v28 = STACK[0xA10];
  LODWORD(v22) = *(STACK[0xA10] + (*(STACK[0xA08] + 217) & 0x3F ^ v3)) ^ 0x3A;
  LODWORD(v10) = *(STACK[0xA08] + 352) ^ 0x3A;
  LODWORD(v22) = (*(STACK[0xA08] + 249) ^ 0xFFFFFF89) - ((v10 | v22) & (*(STACK[0xA08] + 462) ^ 0x36) | v10 & v22 | (*(STACK[0xA08] + 7) >> 1) ^ 0x44);
  *(v27 + 249) = v22 - (a2 & (2 * v22)) - 119;
  *(STACK[0xA08] + 30) ^= 0x58u;
  LODWORD(v10) = (v2 - 194672653) & 0xB9A7BF4;
  LODWORD(STACK[0x480]) = v10;
  v29 = (v8 ^ (v2 + 125) | v7 ^ 0x89) & (v10 ^ 0xB87) | (v8 ^ (v2 + 125)) & (v7 ^ 0x89);
  LODWORD(v13) = (v29 ^ 0x252DD7FF) + 2 * v29 - 623761407;
  v30 = STACK[0xA18];
  STACK[0x4E0] = STACK[0xA18];
  v31 = STACK[0xA18];
  v32 = STACK[0xA08];
  v33 = STACK[0xA20];
  LODWORD(v30) = (*(STACK[0xA20] + (*(STACK[0xA08] + 241) & 0x3F ^ v3)) ^ 0x36) & (*(STACK[0xA08] + 373) ^ 0xFFFFFFC5) | (*v30 ^ 0x36) & (*(STACK[0xA08] + 373) ^ 0x3A);
  LODWORD(v30) = (v30 ^ 0x7E) + 4 * (v30 >> 1) - 126;
  *(v32 + 215) = v30 * v30 * v30 + (~(2 * v30 * v30 * v30) | 0xED) - 118;
  LODWORD(STACK[0x4F8]) = v13;
  LODWORD(STACK[0x500]) = v13 * v13;
  *(STACK[0xA08] + 510) = *(v33 + (-(v13 * v13 * v13) & 0x3FLL));
  v34 = STACK[0xA20];
  LOBYTE(v30) = (*(STACK[0xA08] + 146) ^ 0x5B) + 46 + ((2 * (*(STACK[0xA08] + 146) ^ 0x80)) & 0xA4);
  v35 = (*(STACK[0xA08] + 336) & 0xD3 | *(STACK[0xA20] + (*(STACK[0xA08] + 13) & 0x3F ^ v3)) & 0x2C) ^ 0x36;
  LODWORD(v30) = (v35 << ((v30 * v30 * v30) & 7)) ^ (v35 >> (-(v30 * v30 * v30) & 7));
  v36 = STACK[0xB10];
  STACK[0x4D8] = STACK[0xB10];
  *v36 = v30 - ((2 * v30) & 0x6C) + 54;
  v37 = STACK[0xA08];
  v38 = *(STACK[0xA08] + 131) ^ 0x89;
  LODWORD(v10) = *(STACK[0xA08] + 457) ^ 0x36;
  LODWORD(v30) = (v10 | v38) & (*(STACK[0xA08] + 464) ^ 0x36) | v10 & v38;
  LOBYTE(v31) = *(v31 + (*(STACK[0xA08] + 220) & 0x3F ^ v3)) ^ 6 | *(STACK[0xA08] + 344) ^ 2;
  v39 = STACK[0xA50];
  LOBYTE(v31) = ((v30 << (-v31 & 7)) ^ (v30 >> (v31 & 7))) + (*STACK[0xA50] ^ 0x36);
  *STACK[0xA50] = v31 - ((2 * v31) & 0x6C) + 54;
  v40 = STACK[0xA08];
  LODWORD(v31) = (*(STACK[0xA08] + 10) >> 1) ^ 0x44;
  v41 = STACK[0xA18];
  LOBYTE(v30) = *(STACK[0xA18] + (*(STACK[0xA08] + 27) & 0x3F ^ v3)) ^ 0x36;
  LODWORD(v31) = (*(STACK[0xA08] + 67) ^ 0xFFFFFF89) - ((v31 >> ((v30 * v30) & 7)) ^ (v31 << (-(v30 * v30) & 7)));
  *(v40 + 67) = v31 - (a2 & (2 * v31)) - 119;
  v42 = STACK[0xA08];
  LOBYTE(v31) = (*(STACK[0xA08] + 195) ^ 0x89) - (*(v28 + (*(STACK[0xA08] + 136) & 0x3F ^ v3)) & 0xAC ^ 0xC6);
  *(v42 + 195) = v31 - (a2 & (2 * v31)) - 119;
  v43 = STACK[0xA08];
  v44 = STACK[0xA10];
  LODWORD(STACK[0x4C0]) = *(STACK[0xA10] + (*(STACK[0xA08] + 56) & 0x3F ^ v3));
  LODWORD(v33) = *(v34 + (v43[182] & 0x3F ^ v3));
  LOBYTE(v30) = *(v34 + (v43[196] & 0x3F ^ v3));
  LOBYTE(v6) = *(v41 + (*(v6 + 21) & 0x3F ^ v3));
  LOBYTE(v30) = (*(v41 + (v43[127] & 0x3F ^ v3)) ^ 0x36) - ((v6 | v30) & 0x49 | (v6 ^ 0x36) & (v30 ^ 0x36)) + (v43[487] ^ 0x36);
  v43[487] = v30 - ((2 * v30) & 0x6C) + 54;
  v45 = STACK[0xA08];
  v46 = STACK[0xA18];
  LODWORD(v30) = (((*(STACK[0xA08] + 140) & v4) | *(v32 + 373) & 0xD1) ^ 0x18) & ((*(STACK[0xA08] + 329) & 0xFD | (2 * ((*(STACK[0xA18] + (*(STACK[0xA08] + 65) & 0x3F ^ v3)) >> 1) & 1))) ^ 0x3A);
  *STACK[0xAD8] = v30 + (~(2 * v30) | 0x93) + 55;
  *(STACK[0xA08] + 151) = -119;
  LODWORD(v30) = 205 * (~*(STACK[0xA08] + 134) & 0x89 | 0x74);
  v47 = STACK[0xA28];
  STACK[0x4C8] = STACK[0xA28];
  *v47 = (v30 >> 10) - ((v30 >> 9) & 0x6C) + 54;
  v48 = STACK[0xA60];
  STACK[0x488] = STACK[0xA60];
  LODWORD(v48) = 171 * (*v48 ^ 0x36);
  STACK[0x5D8] = v5;
  v49 = (v48 >> 9) & 0x4D;
  v50 = STACK[0xA08];
  v51 = STACK[0xA20];
  v52 = (((*(STACK[0xA20] + (*(STACK[0xA08] + 39) & 0x3F ^ v3)) ^ 0x36) + 50) & 0x32 | v49) + (*v39 ^ 0x36);
  *v39 = v52 - ((2 * v52) & 0x6C) + 54;
  v53 = STACK[0xA08];
  LOBYTE(v44) = (*(STACK[0xA08] + 237) ^ 0x89) + (*(v44 + (*(STACK[0xA08] + 201) & 0x3F ^ v3)) ^ 0xC5);
  v54 = STACK[0xA30];
  STACK[0x4D0] = STACK[0xA30];
  LODWORD(STACK[0x4B0]) = *v54;
  *(v53 + 237) = v44 - (a2 & (2 * v44)) - 119;
  v55 = STACK[0xA08];
  LODWORD(STACK[0x4BC]) = *(v46 + (*(STACK[0xA08] + 120) & 0x3F ^ v3));
  STACK[0x610] = (v33 ^ 0x36) + 13;
  v56 = STACK[0xA58];
  LOBYTE(v51) = (((v55[208] ^ 0x89) + 43) & (*STACK[0x4E8] ^ 0xC9) | ((*(v51 + (((v33 ^ 0x36) + 13) & 0x3F)) >> 1) ^ 0x1B) & (*STACK[0x4E8] ^ 0x36)) + (*STACK[0xA58] ^ 0x36);
  LODWORD(STACK[0x498]) = *(v53 + 465);
  LODWORD(v33) = v55[500];
  LODWORD(STACK[0x4A8]) = v55[456];
  LODWORD(STACK[0x4A0]) = *(v37 + 464);
  *v56 = v51 - ((2 * v51) & 0x6C) + 54;
  v57 = STACK[0xA18];
  LODWORD(v56) = *(STACK[0xA18] + (*(STACK[0xA08] + 162) & 0x3F ^ v3));
  *(STACK[0xA08] + 458) ^= ((v56 | 0x7E) & (*STACK[0xA38] ^ 0x36) | v56 & 0x7E ^ 0x36) >> 1;
  v58 = STACK[0xA20];
  *STACK[0xAB0] ^= ((*(STACK[0xA20] + (*(v45 + 65) & 0x3F ^ v3)) ^ 0x36) + 49) ^ ((171 * (*(v27 + 352) ^ 0x3Au)) >> 9);
  LODWORD(STACK[0x490]) = v33 ^ 0x36;
  LOBYTE(v56) = (v33 ^ 0x36) - (*(STACK[0xA08] + 103) ^ 0x89);
  v55[500] = v56 - ((2 * v56) & 0x6C) + 54;
  LOBYTE(v56) = (*(STACK[0xA08] + 227) ^ 0x89) - ((2 * *(v57 + (*(STACK[0xA08] + 173) & 0x3F ^ v3))) ^ 0x6C);
  *(STACK[0xA08] + 227) = v56 - (a2 & (2 * v56)) - 119;
  v59 = 171 * (LODWORD(STACK[0x4C0]) ^ 0xDCu);
  STACK[0x4C0] = v59;
  v60 = (v59 >> 9) & 0x3F;
  v61 = STACK[0xA18];
  *STACK[0x4E0] ^= *(STACK[0xA18] + v60) ^ 0x36;
  LOBYTE(v60) = (*STACK[0xA90] ^ 0x36) - (*(STACK[0xA08] + 26) ^ 0x89) * (*(STACK[0xA08] + 26) ^ 0x89);
  *STACK[0xA90] = v60 - ((2 * v60) & 0x6C) + 54;
  LODWORD(v58) = *(v58 + (*(v42 + 136) & 0x3F ^ v3));
  LODWORD(v42) = *(STACK[0xA08] + 449) ^ 0x36;
  LODWORD(v58) = (v58 ^ 0x36 | v42) & (*STACK[0xB08] ^ 0x36) | (v58 ^ 0x36) & v42;
  LODWORD(v58) = (v58 | 0x3D) & ((*STACK[0xB00] >> 1) ^ 0x1B) | v58 & 0xBD;
  *STACK[0xAC0] = v58 - ((2 * v58) & 0x6C) + 54;
  LODWORD(v60) = (*(STACK[0xA08] + 92) ^ 0x89) & (*(STACK[0xA08] + 486) ^ 0xFFFFFFC9) | (*(STACK[0xA08] + 486) ^ 2) & 0x8A;
  LODWORD(v42) = 205 * (*(STACK[0xA08] + 155) ^ 0x89);
  LODWORD(v60) = (*(STACK[0xA08] + 459) ^ 0x36) - ((v60 >> (-(v42 >> 10) & 7)) ^ (v60 << ((v42 >> 10) & 7)));
  *(STACK[0xA08] + 459) = v60 + (~(2 * v60) | 0x93) + 55;
  *STACK[0xA78] ^= 0xFDu;
  LOBYTE(v58) = (*STACK[0xA68] ^ 0x36) - 45 * (*STACK[0xAD0] ^ 0x36) * (*STACK[0xAD0] ^ 0x36);
  *STACK[0xA68] = v58 - ((2 * v58) & 0x6C) + 54;
  v62 = STACK[0xA08];
  v63 = STACK[0xA20];
  LODWORD(v58) = *(STACK[0xA20] + (*(STACK[0xA08] + 116) & 0x3F ^ v3));
  v62[96] = (2 * *(v61 + (*(STACK[0x5D0] + 85) & 0x3F ^ v3))) ^ 0x1A;
  v64 = STACK[0xA10];
  LODWORD(v33) = *(v45 + 329);
  LODWORD(v13) = (((v33 ^ 0x3A) & (*(v50 + 39) ^ 0x88)) >> 1) + 102;
  LOBYTE(v61) = (*(v63 + (v13 & 0x3F)) ^ 0x36) & (*(STACK[0xA10] + (*(STACK[0xA08] + 33) & 0x3F ^ v3)) ^ 0x3A) ^ *STACK[0xAF8];
  LODWORD(v63) = v62[340];
  LODWORD(v57) = v62[69];
  *STACK[0xAF8] = v61;
  LODWORD(v60) = (v57 & 0x99999999 ^ 0xFFFFFFEF) & (v63 ^ 0x3A);
  v65 = STACK[0xA08];
  v66 = *(STACK[0xA08] + 239) & 0x3F ^ v3;
  LODWORD(STACK[0x5D0]) = *(v64 + v66);
  v67 = STACK[0xA18];
  STACK[0x4E0] = STACK[0xA18];
  LODWORD(v63) = *(v67 + v66);
  LOBYTE(v66) = *(v67 + (v65[105] & 0x3F ^ v3));
  LODWORD(v67) = v60 | v57 & 0x66666666;
  v68 = STACK[0xAA0];
  LOBYTE(v53) = (*STACK[0x488] ^ 0x36) & (*STACK[0xAA0] ^ 0x49) | (v65[221] ^ v3) & (*STACK[0xAA0] ^ 0x36);
  v65[505] = (v53 & 0x7F) - ((2 * v53) & 0x6C) + ((v65[354] & v65[343] | ~(v65[142] | v65[343])) & 0x80) + 54;
  v69 = STACK[0xA08];
  v70 = STACK[0xA20];
  LODWORD(v45) = *(STACK[0xA20] + (*(STACK[0xA08] + 171) & 0x3F ^ v3));
  LODWORD(STACK[0x4E8]) = (v58 ^ 0xFFFFFFC9) * v67 + 97;
  LODWORD(v58) = v65[148];
  *(STACK[0x4F0] + 44) ^= (*(v69 + 24) ^ 0x89) + ((205 * (v45 ^ 0x36)) >> 10);
  v43[487] ^= ((*(STACK[0xA08] + 137) >> 1) ^ 0x44) & (*(STACK[0xA08] + 353) ^ 0xC5) | (*STACK[0xA48] & 0x73 ^ 0xB6) & (*(STACK[0xA08] + 353) ^ 0x32);
  v71 = STACK[0x630];
  *STACK[0xA70] ^= 3 * ((*(v40 + 67) & 0x90 ^ 0xEF) & (*(STACK[0xA08] + 330) ^ 0x3A) | *(v40 + 67) & 0x6F ^ v3);
  *STACK[0xAE0] = -125;
  *(STACK[0xA08] + 483) ^= 0xBDu;
  LOBYTE(v69) = ((*(v70 + (*(STACK[0xA08] + 37) & 0x3F ^ v3)) & 0x5E | *(v37 + 464) & 0xA1) ^ 0x38) + (*(STACK[0xA08] + 188) ^ 0x89);
  LOBYTE(v70) = v69 - (a2 & (2 * v69)) - 119;
  *(STACK[0xA08] + 188) = v70;
  LOBYTE(v45) = *(STACK[0xA10] + (*(STACK[0xA08] + 193) & 0x3F ^ v3)) ^ 0x3A;
  LOBYTE(v69) = (*STACK[0xAB8] ^ 0x36) - ((v45 | *(STACK[0xA08] + 61) ^ 0x89) & (*(STACK[0xA08] + 467) ^ 0x36) | v45 & (*(STACK[0xA08] + 61) ^ 0x89));
  *STACK[0xAB8] = v69 - ((2 * v69) & 0x6C) + 54;
  LODWORD(v63) = (v66 & 0x39 ^ 0x30) & (v33 ^ 0x38) | (v63 ^ 6 | v58 ^ 0xFFFFFF80) & 0xFFFFFFC6;
  v72 = STACK[0xA08];
  LOBYTE(v58) = (*(STACK[0xA20] + (*(STACK[0xA08] + 159) & 0x3F ^ v3)) ^ 0x36) & ~v63;
  LODWORD(STACK[0x4F0]) = v63;
  *STACK[0xAE8] ^= (v58 | v63 & 0x62 | 0x26) & (*(v72 + 367) ^ 0x3A) | v58 & 0x26 | v63 & 0x22;
  LODWORD(v69) = *(STACK[0xA08] + 480) ^ 0x36;
  LODWORD(v72) = (v69 | v62[116] ^ 0x89) & (*STACK[0xA88] ^ 0x36) | v69 & (v62[116] ^ 0x89);
  LODWORD(v72) = (v72 | (v13 >> 1)) & (*STACK[0x4C8] ^ 0x36) | v72 & (v13 >> 1);
  *STACK[0xA80] = v72 - ((2 * v72) & 0x6C) + 54;
  LODWORD(v58) = (STACK[0x5E0] & 0xA1 ^ 0x20 | STACK[0x5E0] & 0x3E ^ 8) & ((LODWORD(STACK[0x5F0]) ^ 0x36) * (LODWORD(STACK[0x5F0]) ^ 0x36)) ^ 0x4B;
  LODWORD(STACK[0x5F8]) = (-3 - (LODWORD(STACK[0x5E8]) ^ 0x36)) ^ STACK[0x5F8] & 0xFFFFFFC9 ^ 0x51;
  LODWORD(v72) = (0x37u >> (-(STACK[0x4B0] & 7 ^ 6) & 7)) ^ (55 << (STACK[0x4B0] & 7 ^ 6));
  LODWORD(STACK[0x5E8]) = ((v72 | 0x2D) & (LODWORD(STACK[0x498]) ^ 0x36) | v72 & 0x2D) + v58;
  v73 = v70 & 0x3F ^ v3;
  v74 = STACK[0x4E0];
  LODWORD(v73) = *(STACK[0x4E0] + v73);
  HIDWORD(v75) = v73 ^ 2;
  LODWORD(v75) = (v73 ^ 0x34) << 24;
  LODWORD(STACK[0x5F0]) = (v75 >> 26) ^ 0xFFFFFFBD;
  LODWORD(v69) = *(STACK[0xA08] + 494) ^ 0x36;
  LOBYTE(v45) = *(STACK[0xA08] + 4) & 7 ^ 1;
  LODWORD(v69) = (v69 >> (-v45 & 7)) ^ (v69 << v45);
  v76 = *(STACK[0xA08] + 41) & 0x3F ^ v3;
  LOBYTE(v76) = (*(v74 + v76) ^ 0x36 | *(STACK[0xA08] + 247) ^ 0x89) & (*(STACK[0x5C8] + 479) ^ 0x36) | (*(v74 + v76) ^ 0x36) & (*(STACK[0xA08] + 247) ^ 0x89);
  LOBYTE(v76) = ((v76 | v69) & (*STACK[0x4D8] ^ 0x36) | v76 & v69) + (*v68 ^ 0x36);
  *v68 = v76 - ((2 * v76) & 0x6C) + 54;
  LOBYTE(v76) = (*STACK[0xAF0] ^ 0x36) & (*(STACK[0xA08] + 506) ^ 0xC9) | (*(STACK[0xA08] + 506) ^ 0xFE) & 0x23;
  *STACK[0xA60] = v76 * v76 - ((2 * v76 * v76) & 0x6C) + 54;
  LOBYTE(v76) = (*STACK[0xAC8] ^ 0x36) + (*STACK[0x4D0] ^ 0x36) - (*(STACK[0xA08] + 508) & 0x25 ^ v4);
  *STACK[0xAC8] = v76 - ((2 * v76) & 0x6C) + 54;
  LODWORD(v76) = *STACK[0xB90] != 1454882770;
  LODWORD(STACK[0x5E0]) = STACK[0x4C0] >> 9;
  return (*(v71 + 8 * ((25 * v76) ^ v2)))();
}

uint64_t sub_10023EA30(uint64_t a1, uint64_t a2)
{
  v5 = STACK[0x480];
  v6 = v2 ^ v4;
  if ((v2 ^ v4) <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v9 = v6 < ((LODWORD(STACK[0x480]) + 4834) ^ 0x1EDEu) || v7 + (v5 + 1120) - 4197 < 0xFFFFFFFFFFFFFFF0;
  return (*(v3 + 8 * ((2020 * v9) ^ v5)))(a1, a2, 0);
}

uint64_t sub_10023EABC(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  a2.n128_u16[0] = -31355;
  a2.n128_u8[2] = -123;
  a2.n128_u8[3] = -123;
  a2.n128_u8[4] = -123;
  a2.n128_u8[5] = -123;
  a2.n128_u8[6] = -123;
  a2.n128_u8[7] = -123;
  a3.n128_u16[0] = 6168;
  a3.n128_u8[2] = 24;
  a3.n128_u8[3] = 24;
  a3.n128_u8[4] = 24;
  a3.n128_u8[5] = 24;
  a3.n128_u8[6] = 24;
  a3.n128_u8[7] = 24;
  return (*(v10 + 8 * (a10 + 592)))(xmmword_1002A9AA0, a2, a3);
}

uint64_t sub_10023EB08(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18.val[0].i64[0] = a8 & 8;
  v18.val[0].i64[1] = v18.val[0].i64[0] | 1;
  v18.val[1].i64[0] = v18.val[0].i64[0] | 2;
  v18.val[1].i64[1] = v18.val[0].i64[0] | 3;
  v18.val[2].i64[0] = a10 & a8 | 4;
  v18.val[2].i64[1] = v18.val[0].i64[0] | a11;
  v18.val[3].i64[0] = v18.val[0].i64[0] | 6;
  v18.val[3].i64[1] = v18.val[0].i64[0] | 7;
  *(STACK[0xB80] + a8) = veor_s8(veor_s8(veor_s8(veor_s8(*(v14 + v18.val[0].i64[0]), *(v16 + v18.val[0].i64[0])), *(v12 + v18.val[0].i64[0])), a3), vmul_s8(*&vqtbl4q_s8(v18, a1), a2));
  return (*(v15 + 8 * (((a9 == a8) * v13) | v11)))();
}

uint64_t sub_10023EBF0(uint64_t a1, uint64_t a2)
{
  v4 = LODWORD(STACK[0xB34]) - ((2 * LODWORD(STACK[0xB34]) + 1408056910) & 0x44A397BE) + 1279814412;
  LODWORD(STACK[0xB40]) = v4;
  LODWORD(STACK[0xB44]) = v4 + (LODWORD(STACK[0xB20]) ^ 0xFFFFF201);
  v5 = STACK[0x7D0];
  v6 = v3 - 256 + STACK[0x7D0];
  STACK[0xB48] = v6;
  STACK[0xB50] = v6 + 16;
  v7 = v5 + LODWORD(STACK[0xB24]) - 2139;
  STACK[0xB58] = v7;
  STACK[0x7D0] = v7;
  LODWORD(STACK[0x8F4]) = 0;
  STACK[0x918] = STACK[0xBA8];
  v8 = STACK[0xBA0] - 0xC9ADCEB43E63048;
  STACK[0xB60] = &STACK[0x8D8];
  STACK[0x8D8] = v8;
  return (*(v2 + 8 * ((13 * (STACK[0xB38] == 0)) ^ LODWORD(STACK[0xB1C]))))(a1, a2, STACK[0x550], -1805449270, STACK[0x548], -543004047);
}

uint64_t sub_10023ED44()
{
  v2 = STACK[0xB48];
  *STACK[0xB50] = 116;
  *(v2 + 17) = 0xEC2C67863C65906DLL;
  *(STACK[0xB48] + 25) = 5398;
  *(STACK[0xB48] + 27) = -8672;
  *(STACK[0xB48] + 29) = -24547;
  v3 = STACK[0xB48];
  *(v3 + 31) = 84;
  *v3 = 0x2C67863C65906D74;
  *(v3 + 8) = 0x54A01DDE201516ECLL;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10023EED4()
{
  v4 = v0 + 947;
  STACK[0x8E0] = 0x4347A8FF3060F6CFLL;
  STACK[0x910] = 0x93936A1F6680CD1;
  v5 = *(v2 - 0x2F5E77A910FB7962) ^ 0x34;
  v6 = *(&off_1002DD400 + v4 - 3858) - 811677050;
  v7 = v6[((*(v2 - 0x2F5E77A910FB795ELL) ^ -*(v2 - 0x2F5E77A910FB795ELL) ^ (224 - (*(v2 - 0x2F5E77A910FB795ELL) ^ 0xE0u))) + 224) ^ 0xBDLL];
  v8 = *(v2 - 0x2F5E77A910FB7958) ^ 0x24;
  LODWORD(STACK[0x8F4]) = 1017976598;
  v9 = *(&off_1002DD400 + v4 - 3946) - 1268736722;
  v10 = v9[v8];
  v11 = *(v2 - 0x2F5E77A910FB7961) - ((2 * *(v2 - 0x2F5E77A910FB7961)) & 0x66) - 1179122893;
  v12 = (177 - (v11 ^ 0xB9B80382)) ^ ((v11 ^ 0x4647FCCC) + 1);
  v13 = (v12 - ((2 * v12) & 0x73700666) - 1179122893) ^ v11;
  v14 = *(&off_1002DD400 + v4 - 4356) - 2080445230;
  v15 = *(v2 - 0x2F5E77A910FB795CLL) - ((2 * *(v2 - 0x2F5E77A910FB795CLL)) & 0x4A) - 76421595;
  v16 = (1445249364 - (v15 ^ 0xAD552771)) ^ ((v15 ^ 0x48E19DA) + 1);
  LOBYTE(v15) = v9[(((v16 - ((2 * v16) & 0xF6E3CC4A) - 76421595) ^ v15) + 1445249364) ^ 0x5624C13D];
  v17 = *(v2 - 0x2F5E77A910FB795FLL);
  v18 = *(&off_1002DD400 + v4 - 3747) - 2016593899;
  LODWORD(v19) = __ROR4__((*(v2 - 0x2F5E77A910FB795ALL) ^ -*(v2 - 0x2F5E77A910FB795ALL) ^ (3 - (*(v2 - 0x2F5E77A910FB795ALL) ^ 3))) + 3, 5) ^ 0xA744E623;
  HIDWORD(v19) = v19;
  v20 = v7 ^ 0x40 | (((v14[(v13 + 177) ^ 8] + v13 - 96) ^ 0xDA) << 24) | ((v18[v17 ^ 0x8F] ^ ((v17 ^ 0x45) + (v17 ^ 0xD1) + (~(2 * ((v17 ^ 0x45) + (v17 ^ 0xD1))) | 0x49) + 92) ^ 0xF5) << 8);
  v21 = v6[(v19 >> 27) ^ 0xE89CC4C9];
  v22 = *(v2 - 0x2F5E77A910FB7963);
  v23 = v21 & 2 | (((v15 ^ (((8 * v15) ^ 0x60) + 8)) ^ 0x80) << 16);
  v24 = v9[*(v2 - 0x2F5E77A910FB7964) ^ 0x8DLL];
  LODWORD(v22) = v18[v22 ^ 0xB6] ^ ((v22 ^ 0xE8) + (v22 ^ 0x7C) - ((2 * ((v22 ^ 0xE8) + (v22 ^ 0x7C))) & 0xB6) + 91);
  v25 = v6[*(v2 - 0x2F5E77A910FB7956) ^ 0x89] ^ 0xB1;
  v26 = *(v2 - 0x2F5E77A910FB7960) ^ 0x23;
  STACK[0x500] = v9;
  LOBYTE(v26) = (-8 * (v9[v26] ^ 0x73)) ^ v9[v26] ^ 0x73;
  LODWORD(v17) = (v14[*(v2 - 0x2F5E77A910FB795DLL) ^ 0xC1] + (*(v2 - 0x2F5E77A910FB795DLL) ^ 0xC9) - 17) ^ 0x49;
  LODWORD(v26) = ((-65536 * ((v26 & 0x80 | 1) ^ v26 & 0x7F)) ^ __ROR4__((((v26 & 0x80 | 1) ^ v26 & 0x7F) << 8) ^ __ROR4__((v20 ^ 0xF1) - ((v20 & 0xFF00FFFF | (((v26 & 0x80 | 1) ^ v26 & 0x7F) << 16)) ^ 0xF1), 8) ^ 0x6F780DD, 24) ^ 0xF780DD06) + (v20 ^ 0xF1);
  v27 = *(v2 - 0x2F5E77A910FB795BLL);
  v28 = ((*(v2 - 0x2F5E77A910FB7959) ^ 0x32) + v14[*(v2 - 0x2F5E77A910FB7959) ^ 0x3ALL] - 17) ^ 0xBC;
  LODWORD(v9) = v18[v27 ^ 0xC7];
  STACK[0x628] = v2 - 0x2F5E77A910FB7965;
  v29 = *(v2 - 0x2F5E77A910FB7965);
  STACK[0x8E8] = 0x26CE0F71FC42097ELL;
  STACK[0x4F8] = v14;
  v30 = ((v10 ^ 0x14 ^ (((8 * v10) ^ 0x60) + 8)) << 16) | (v28 << 24);
  LOBYTE(v28) = (v14[v29 ^ 0x65] + (v29 ^ 0x6D) - 17) ^ 0x97;
  v31 = *(v2 - 0x2F5E77A910FB7957);
  LOBYTE(v29) = (v31 ^ 0x2B) + (v31 ^ 0xBF);
  STACK[0x920] = 0x4B8DEC0944082CF5;
  STACK[0x900] = 0x52DC16278CC38060;
  v32 = v21 & 0xFFFFFFFD ^ 0xFC;
  v33 = (v17 << 24) | ((v9 ^ ((v27 ^ 0xD) + (v27 ^ 0x99) - ((2 * ((v27 ^ 0xD) + (v27 ^ 0x99))) & 0xB6) + 91) ^ 0xD5) << 8) | v32 | v23;
  LODWORD(STACK[0x620]) = v33 & 0x7999AB23 ^ v32 & 1;
  STACK[0x8D0] = 0x3EF28014ABB6B4C9;
  STACK[0x8F8] = 0;
  STACK[0x508] = v6;
  LODWORD(v5) = v6[v5];
  LODWORD(STACK[0x5F0]) = v22 ^ 0xFE;
  LODWORD(STACK[0x610]) = v5 ^ 0x40;
  LODWORD(STACK[0x600]) = v24 ^ 0x49 ^ (((8 * v24) ^ 0x60) + 8);
  LODWORD(STACK[0x5F8]) = v28;
  STACK[0x4F0] = v18;
  LODWORD(v31) = v18[v31 ^ 0xE1];
  LODWORD(STACK[0x608]) = v33 - 107369694;
  LODWORD(v31) = v31 ^ (v29 - ((2 * v29) & 0xB6) + 91) ^ 0xA5;
  LODWORD(v31) = (v31 << 8) - ((v31 << 9) & 0xFFFFCFFF) + 1393944401;
  LODWORD(STACK[0x5C8]) = v31;
  LODWORD(v31) = v31 ^ 0x5315E751;
  LODWORD(STACK[0x5D0]) = v31;
  LODWORD(v26) = v26 - ((2 * v26) & 0xA8) + 84;
  LODWORD(STACK[0x5E8]) = (2 * v26) & 0x25A2DA86;
  LODWORD(STACK[0x5E0]) = v26 + 315714883;
  LODWORD(STACK[0x5D8]) = v25 - ((2 * v25) & 0xA) + (v31 | v30) + 5 - ((2 * (v25 - ((2 * v25) & 0xA) + (v31 | v30) + 5)) & 0xAAB9F30A) + 1432156549;
  v34 = *STACK[0xB60] - 0x13ECD35942048670;
  LODWORD(STACK[0x4E8]) = LODWORD(STACK[0xB44]) ^ (v1 + 3579);
  return (*(v3 + 8 * v4))(4176325614, 4223614687, 13876, 2654786800, 3745163058, v34);
}

uint64_t sub_10023F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x600]) = LODWORD(STACK[0x5F8]) << 24;
  LODWORD(STACK[0x530]) = LODWORD(STACK[0x5E0]) - LODWORD(STACK[0x5E8]);
  return (*(v7 + 8 * a7))(1224576982, 4294967247, 3378689929, a4, a5, a6, ((a7 - 3137) | 0x1221u) - 4897, 114);
}

uint64_t sub_10023F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x610]) += v8 + v7;
  LODWORD(STACK[0x5E0]) = LODWORD(STACK[0x608]) - 2 * LODWORD(STACK[0x620]);
  v10 = *(v9 + 8 * a7);
  LODWORD(STACK[0x620]) = 6 * (a7 ^ 0x5DB);
  return v10(376315953);
}

uint64_t sub_10023FAC0(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x620];
  LODWORD(STACK[0x52C]) = (LODWORD(STACK[0x610]) + LODWORD(STACK[0x600])) ^ 0x3FFB5B7B;
  return (*(v3 + 8 * (v4 | (32 * (v2 & 1)))))(a1, a2, 1312698288);
}

uint64_t sub_10023FB40@<X0>(int a1@<W1>, char a2@<W8>)
{
  v8 = ((391708672 * v5) | ((1999443801 * v5 + 901089178) >> 16)) - 2019950592;
  v9 = ((2 * v8) & 0xFA6F7FF8) + (v8 ^ 0x7D37BFFC);
  v10 = (((-1244984054 * a1) | ((((((v6 - 851604525) & 0x32C25E5F) + 3196) ^ 0xDAE59C12) * a1) >> 31)) ^ 0xF3FFFFDA) + ((1804999188 * a1) & 0xE7FFFFB4);
  v11 = v9 + 591460816 * v2 + ((-1842081891 * v2 - 1436354937) >> 28) - v10 + 485992526;
  v12 = (-1426063360 * (v3 ^ v4)) | ((-364354133 * (v3 ^ v4)) >> 8);
  v13 = v12 - ((2 * v12) & 0x6C0B4E6) - 2090837389;
  v14 = (v11 - ((2 * v11) & 0x6C0B4E6) - 2090837389) ^ v13;
  v15 = (1778384896 * v14) | ((221200949 * v14) >> 7);
  v13 ^= 0x83605A73;
  v16 = -508015661 * v13;
  v17 = -1033988096 * v13;
  v18 = (1374881792 * v10) | ((-930464159 * v10 + 1350910566) >> 21);
  v19 = ((2 * (v18 + 705900544)) & 0xAF7A7F62) + ((v18 + 705900544) ^ 0x57BD3FB1);
  v20 = (v17 & 0xFFFFF800 | (v16 >> 21)) - 2 * ((v17 & 0x6D35000 | (v16 >> 21) & 0x6D353BF) ^ (v16 >> 21) & 0x18) - 2032970841;
  v21 = v19 - 1472020401 + (v15 ^ (((2097337792 * v9) | ((-1376515241 * v9 - 996283044) >> 26)) + 662394624));
  v22 = (v21 - ((2 * v21) & 0xDA6A74E) - 2032970841) ^ v20;
  HIDWORD(v23) = (221200949 * v14) >> 7;
  LODWORD(v23) = -1870488615 * v15;
  v24 = ((2 * (v23 >> 3)) & 0xF478EDE8) + ((v23 >> 3) ^ 0xFA3C76F4);
  v25 = ((2 * ((-711251968 * v22) | ((-1023757467 * v22) >> 21))) & 0xFBFF15FA) + (((-711251968 * v22) | ((-1023757467 * v22) >> 21)) ^ 0xFDFF8AFD);
  v26 = (-225609728 * (v20 ^ 0x86D353A7)) | ((-641838673 * (v20 ^ 0x86D353A7)) >> 21);
  v27 = ((2 * v26) & 0xD5775FFE) + (v26 ^ 0xEABBAFFF);
  v28 = ((1712604775 * v19 + 1939667401) >> 3) - (v19 << 29) - v24 + v27 + 830553080 + v25;
  v29 = (((-1281765804 * v25 + 236572412) & 0xFFFFFFFC | ((1827042197 * v25 - 1014598721) >> 30)) ^ 0x78B5BFF8) + ((2 * (-1281765804 * v25 + 236572412)) & 0xF16B7FF0);
  HIDWORD(v23) = v23 >> 3;
  LODWORD(v23) = 1751952559 * v24 + 30326580;
  v30 = v23 >> 1;
  v31 = ((2 * ((-1323789376 * v28) | ((1388601935 * v28) >> 26))) & 0xDFFFBADE) + (((-1323789376 * v28) | ((1388601935 * v28) >> 26)) ^ 0xEFFFDD6F);
  v32 = ((((-520093696 * v27) | ((1082980321 * v27 - 1698215967) >> 8)) - 520093696) ^ v30) - v29 - 2001345911 + v31;
  v33 = v32 - ((2 * v32) & 0x735DF206) + 967768323;
  v34 = (v33 ^ 0x39AEF903) + v30 + v29 - 796410836 + v31 - 2 * ((v33 ^ 0x39AEF903) & (v30 + v29 - 796410836 + v31));
  v35 = v34 ^ 0xB1054F15;
  LODWORD(STACK[0x5F0]) = v34;
  v34 ^= 0x22D1BB8Fu;
  v36 = ((2 * (v29 - 2025177080 + v34)) & 0xF6FF7FFA) + ((v29 - 2025177080 + v34) ^ 0x7B7FBFFD);
  v37 = v31 + 268444305 + v34 - ((2 * (v31 + 268444305 + v34)) & 0xD54B9A98) + 1789250892;
  LODWORD(STACK[0x628]) = v35;
  LODWORD(STACK[0x4D0]) = v33;
  v38 = -1918989585 * v36 - 15245107;
  LODWORD(STACK[0x4C8]) = v35 ^ v33;
  v39 = v35 ^ v33 ^ 0xAA7A0D99;
  LODWORD(STACK[0x5E8]) = v37;
  LODWORD(STACK[0x4E0]) = v36;
  v40 = ((366870528 * v36) | (v38 >> 15)) - 1046872064;
  v41 = ((1522545856 * (v37 ^ 0x6AA5CD4C)) | ((-647298861 * (v37 ^ 0x6AA5CD4C)) >> 26)) - 2 * (((1522545856 * (v37 ^ 0x6AA5CD4C)) | ((-647298861 * (v37 ^ 0x6AA5CD4C)) >> 26)) & 0x6D0A677F ^ ((-647298861 * (v37 ^ 0x6AA5CD4C)) >> 26) & 2) + 1829398397;
  v42 = v40 ^ ((261948700 * v34) | ((1139228999 * v34) >> 30));
  v43 = ((2 * ((587032576 * v39) | ((1277452205 * v39) >> 21))) & 0x9FFFBBDC) + (((587032576 * v39) | ((1277452205 * v39) >> 21)) ^ 0xCFFFDDEE);
  v44 = v43 + 805315090 + ((v42 - ((2 * v42) & 0xDA14CEFA) + 1829398397) ^ v41);
  v45 = ((-955470191 * v44) >> (a2 & 2) >> (a2 & 2 ^ 2)) ^ (v44 << 30);
  HIDWORD(v23) = ((-401030450 * (v41 ^ 0x6D0A677D) - ((-802060900 * (v41 ^ 0x6D0A677D)) & 0xDA14CEF8) + 1829398397) ^ v41) + 2 * ((-401030450 * (v41 ^ 0x6D0A677D)) & (v41 ^ 0x6D0A677D));
  LODWORD(v23) = HIDWORD(v23);
  v46 = v23 >> 7;
  v47 = ((2 * v46) & 0xBEF7DFF4) + (v46 ^ 0x5F7BEFFA);
  v48 = ((-128072832 * v43) | ((1576057735 * v43 - 472572546) >> 25)) - 359743744 - 2 * ((((-128072832 * v43) | ((1576057735 * v43 - 472572546) >> 25)) - 359743744) & 0x4F30BDBB ^ ((1576057735 * v43 - 472572546) >> 25) & 0x12) + 1328594345;
  HIDWORD(v23) = v38 >> 15;
  LODWORD(v23) = -594378351 * v40;
  v49 = (((v23 >> 4) - ((2 * (v23 >> 4)) & 0x1AE50F46) - 1921874013) ^ 0x8D7287A3 ^ v45) - 1601957882 + v47;
  v50 = (v49 - ((2 * v49) & 0x9E617B52) + 1328594345) ^ v48;
  v51 = -1420200549 * (v48 ^ 0x4F30BDA9);
  v52 = ((2 * ((213909504 * v45) | ((1684892723 * v45) >> 10))) & 0xDB2FC5FE) + (((213909504 * v45) | ((1684892723 * v45) >> 10)) ^ 0x6D97E2FF);
  HIDWORD(v23) = v46;
  LODWORD(v23) = 1962454661 * v47 + 1699768094;
  v53 = ((2 * ((-1530569024 * v50) | ((-292350597 * v50) >> 26))) & 0x7CD2EFFA) + (((-1530569024 * v50) | ((-292350597 * v50) >> 26)) ^ 0xBE6977FD);
  LODWORD(STACK[0x620]) = v51;
  v54 = ((2 * ((-671088640 * (v48 ^ 0x4F30BDA9)) | (v51 >> 5))) & 0xB3E2B5F4) + (((-671088640 * (v48 ^ 0x4F30BDA9)) | (v51 >> 5)) ^ 0xD9F15AFA);
  v55 = v52 - v54 + (v23 >> 1) - 1376780290 + v53;
  v56 = -2006782649 * v53 + 902856661;
  v57 = ((-1610612736 * v52) | ((-794078851 * v52 - 1649509763) >> 3)) - 1610612736;
  v58 = 281401998 * v53 + 1805713322;
  v59 = (2 * v58) & 0x5FDECBDC;
  v60 = (v58 & 0xFFFFFFFE | (v56 >> 31)) ^ 0x2FEF65EE;
  v61 = 58865459 * v55;
  v62 = (-2110311680 * v55) | ((58865459 * v55) >> 24);
  v63 = v62 - 2 * (v62 & 0x20FF684F ^ HIBYTE(v61) & 0xA) - 1593874363;
  v64 = (v57 + v60 + v59 - 1975110084 + (v63 ^ 0x5F0097BA)) ^ ((v57 ^ (((838860800 * v54) | ((-2050202855 * v54 + 487318) >> 7)) + 738197504)) + v60 + v59 - 804218350 + (v63 ^ 0xA0FF6845));
  LODWORD(STACK[0x610]) = v64 - ((2 * v64 + 1907135446) & 0x99159160) + 90247835;
  v65 = (*(v7 + 8 * (v6 ^ 0xA9D)))(1032);
  STACK[0x608] = v65 + 0x20401EAF3F098A6DLL;
  STACK[0x908] = v65 + 0x20401EAF3F098A6DLL;
  return (*(v7 + 8 * ((1988 * (v65 != 0)) ^ v6)))();
}

uint64_t sub_1002404F8(uint64_t a1)
{
  v9 = LODWORD(STACK[0x610]) ^ 0xCC8AC8B0;
  v10 = v4 - v9 - ((2 * (v4 - v9)) & 0xCA6A7172) + 1697986745;
  LODWORD(STACK[0x460]) = v6 + 1931677375;
  LODWORD(STACK[0x4D8]) = ((v5 ^ 0x6C75A0F5) - 948644172 + v7) ^ (v6 + 1931677375) & 0xFEFFFFFF;
  LODWORD(STACK[0x480]) = v10;
  v11 = (29245440 * ((v6 + 1931677375) ^ 0xA31274AC)) | ((128452345 * ((v6 + 1931677375) ^ 0xA31274AC)) >> 18);
  v12 = ((2 * v11) & 0xB3BEDBFE) + (v11 ^ 0x59DF6DFF);
  v13 = (2131410944 * (v5 ^ 0x6C75A0F5)) | ((1898839083 * (v5 ^ 0x6C75A0F5u)) >> 18);
  v14 = ((2 * v13) & 0xF82FCFCE) + (v13 ^ 0x7C17E7E7);
  v15 = ((-2144116339 * (v10 ^ 0x653538B9)) >> (v3 & 1) >> !(v3 & 1)) + ((v4 - v9) << 31);
  v16 = ((-767331988 * v9) | ((1955650651 * v9) >> 30)) + v14 - (v15 + 457674693) - v12 - 116451875;
  v17 = (-947721273 * v15) >> 20;
  v18 = ((2 * ((1226833920 * v16) | ((1760467529 * v16) >> 11))) & 0xF6FEBFF8) + (((1226833920 * v16) | ((1760467529 * v16) >> 11)) ^ 0xFB7F5FFC);
  v19 = (1046418728 * v18) | ((1741415077 * v18 - 212424044) >> 29);
  v20 = (784101376 * (v15 + 457674693)) | v17;
  v21 = ((-342929408 * v14) | ((-1371621131 * v14 - 494991379) >> 20)) - 260124672;
  v22 = ((2 * v21) & 0xDFC76FFC) + (v21 ^ 0x6FE3B7FE);
  v23 = v20 - 1234317312 - 2 * ((v20 - 1234317312) & 0x682BE43F ^ v17 & 2) + 1747706941;
  v24 = 631504896 * v12 - v22 + ((-905672343 * v12 - 1551733911) >> 14) + 570972162 + v18;
  v25 = (v24 - ((2 * v24) & 0xD057C87A) + 1747706941) ^ v23;
  v26 = v19 - 1699392352 - ((2 * (v19 - 1699392352)) & 0x13F30576) - 1980136773;
  v27 = (1021040219 * v25) >> 3;
  v28 = v27 | (1610612736 * v25);
  v29 = -1888590383 * (v26 ^ 0x89F982BB);
  v30 = -1168759727 * v28;
  v31 = ((-150427704 * v22) | ((-1092545287 * v22 + 652489202) >> 29)) + 924946320;
  v32 = v26 ^ (v31 - ((2 * v31) & 0x13F30576) - 1980136773) ^ v28;
  v33 = (((v23 << 29) ^ 0x40000000) & 0xE0000000 | ((-1404679841 * (v23 ^ 0x682BE43Du)) >> 3)) + 0x20000000;
  v34 = ((2 * v33) & 0x5DF95AF4) + (v33 ^ 0x2EFCAD7A);
  v35 = (-878575616 * (v26 ^ 0x89F982BB)) | (v29 >> 15);
  v36 = ((-348207105 * (v34 - 788311418 + v32)) >> 8) - ((v34 - 788311418 + v32) << 24) - 2 * ((((-348207105 * (v34 - 788311418 + v32)) >> 8) - ((v34 - 788311418 + v32) << 24)) & 0x78B9CD25 ^ ((-348207105 * (v34 - 788311418 + v32)) >> 8) & 4) - 122041055;
  v37 = (__PAIR64__(v27, v30) >> 1) - ((2 * (__PAIR64__(v27, v30) >> 1)) & 0xF96C818E) - 55164729;
  v38 = (v35 - 2 * (v35 & 0x7CB640CF ^ (v29 >> 15) & 8) - 55164729) ^ v37;
  v39 = v36 ^ (((-805306368 - (v34 << 27)) & 0xF8000000 | ((763933023 * v34 + 1098532282) >> 5)) - v35 + (v37 ^ 0xFCB640C7));
  v40 = v39 ^ 0x9C1C8CCC;
  v41 = (v39 ^ 0xF8B9CD21) - 1606118177 * ((1711937301 * v38 - ((-871092694 * v38) & 0xF1739A42) - 122041055) ^ v36);
  v42 = v41 - ((2 * v41 + 729367854) & 0x3B4AD614) + 1935805857;
  LODWORD(STACK[0x440]) = v40;
  v43 = v42 ^ v40;
  v44 = v42 ^ v37;
  LODWORD(STACK[0x490]) = v43;
  v45 = (v36 ^ 0xF8B9CD21) + (v42 ^ 0x1DA56B0A) + ((2 * v42) ^ 0xC4B529EB) + 1;
  LODWORD(STACK[0x4B0]) = v44;
  v46 = ((2 * ((1912602624 * (v44 ^ 0xE1132BCD)) | ((1006599865 * (v44 ^ 0xE1132BCD)) >> 7))) & 0xF7D5F6F8) + (((1912602624 * (v44 ^ 0xE1132BCD)) | ((1006599865 * (v44 ^ 0xE1132BCD)) >> 7)) ^ 0x7BEAFB7C);
  v47 = ((-1649836032 * (((2 * v45) & 0xE786B37A) + (v45 ^ 0xF3C359BD))) | ((-1620100269 * (((2 * v45) & 0xE786B37A) + (v45 ^ 0xF3C359BD)) - 1509402439) >> 17)) + 744259584;
  v48 = ((2 * v47) & 0x3FABE5BE) + (v47 ^ 0x9FD5F2DF);
  v49 = ((-76851200 * (v43 ^ 0x79002AE7)) | ((1191144811 * (v43 ^ 0x79002AE7u)) >> 21)) - 2 * (((-76851200 * (v43 ^ 0x79002AE7)) | ((1191144811 * (v43 ^ 0x79002AE7u)) >> 21)) & 0x52FB84BD ^ ((1191144811 * (v43 ^ 0x79002AE7u)) >> 21) & 4) + 1392215225;
  v50 = ((-603979776 * (v42 ^ 0x1DA56B0A)) | ((-2144693641 * (v42 ^ 0x1DA56B0A)) >> 6)) + v46 - 465628763 + v48;
  v51 = (v50 - ((2 * v50) & 0xA5F70972) + 1392215225) ^ v49;
  v49 ^= 0x52FB84B9u;
  v52 = 1616821217 * v49;
  v53 = ((2 * ((-1998585856 * v51) | ((576484423 * v51) >> 11))) & 0x65F5FE2E) + (((-1998585856 * v51) | ((576484423 * v51) >> 11)) ^ 0xB2FAFF17);
  v54 = -520093696 * v49;
  v55 = (1598600944 * v48) | ((-1779135633 * v48 + 1070636111) >> 28);
  v56 = ((-739182928 * v46) | ((-583069845 * v46 - 2138530004) >> 28)) - v53 - 1148915241;
  v57 = ((2 * (v54 & 0xFF000000 | (v52 >> 8))) & 0xFF9BBD76) + ((v54 & 0xFF000000 | (v52 >> 8)) ^ 0x7FCDDEBB);
  v58 = v55 - 49691408 - ((2 * (v55 - 49691408)) & 0x728FFF50) + 961019816;
  v59 = (v56 - ((2 * v56) & 0x728FFF50) + 961019816) ^ v58;
  v60 = ((2026110976 * v53) | ((-1363075535 * v53 + 1639545497) >> 14)) - 362545152;
  v61 = ((2 * v60) & 0xE9F7AFCE) + (v60 ^ 0xF4FBD7E7);
  v62 = (1950679040 * (2144198331 - v57 + v59)) | ((-703433659 * (2144198331 - v57 + v59)) >> 16);
  v63 = ((2 * v62) & 0xF6FFF7B4) + (v62 ^ 0xFB7FFBDA);
  v64 = ((-1107558400 * v57) | ((-604573825 * v57 + 1698425915) >> 14)) - 1326710784;
  v65 = ((2 * v64) & 0xCF66FF1E) + (v64 ^ 0xE7B37F8F);
  v66 = ((-1677721600 * v61) | ((-1322242969 * v61 - 213881329) >> 6)) + 1006632960;
  v67 = ((-1406660864 * (v58 ^ 0x3947FFA8)) | ((1689004047 * (v58 ^ 0x3947FFA8u)) >> 24)) - v65 - v61 - 516990052 + v63;
  v68 = ((-1445593088 * v63) | ((-271624981 * v63 - 140884254) >> 15)) - 1916534784;
  v69 = ((2 * v68) & 0xFB5577EA) + (v68 ^ 0x7DAABBF5);
  v70 = ((2 * ((-1133514368 * v67) | ((796450787 * v67) >> 25))) & 0x7FE992EE) + (((-1133514368 * v67) | ((796450787 * v67) >> 25)) ^ 0x3FF4C977);
  v71 = -333467003 * (548206427 * (v66 - v69) + 1336292119 - v70) - 2018875181;
  v72 = ((664886852 * v65) | ((166221713 * v65 + 576923393) >> 30)) - v66 + v69 - v70 + 1272359302;
  LODWORD(STACK[0x450]) = v72;
  v73 = v71 ^ v72;
  LODWORD(STACK[0x498]) = v73 ^ 0x971E84F6;
  v74 = ((2 * (v70 - 1073006967 + (v73 ^ 0x23ED940E))) & 0xAAE7DFEC) + ((v70 - 1073006967 + (v73 ^ 0x23ED940E)) ^ 0x5573EFF6);
  v75 = ((2 * (v69 - 2108341236 + (v73 ^ 0xDC126BF1))) & 0xFFB7B9FC) + ((v69 - 2108341236 + (v73 ^ 0xDC126BF1)) ^ 0xFFDBDCFE);
  LODWORD(STACK[0x470]) = v71;
  LODWORD(STACK[0x458]) = v75;
  v76 = ((728236032 * v74) | ((-152386195 * v74 - 1424062910) >> 13)) + 839909376;
  v77 = ((2 * v76) & 0x36AADFFE) + (v76 ^ 0x1B556FFF);
  v78 = ((1527817216 * v75) | ((-1319713751 * v75 - 717020334) >> 22)) + 210585600 - 2 * ((((1527817216 * v75) | ((-1319713751 * v75 - 717020334) >> 22)) + 210585600) & 0x5F01C877 ^ ((-1319713751 * v75 - 717020334) >> 22) & 1) - 553531274;
  v79 = ((2 * ((1305870336 * (v71 ^ 0x23ED940E)) | ((262121195 * (v71 ^ 0x23ED940Eu)) >> 15))) & 0xFFDBEFF8) + (((1305870336 * (v71 ^ 0x23ED940E)) | ((262121195 * (v71 ^ 0x23ED940Eu)) >> 15)) ^ 0xFFEDF7FC);
  v80 = v77 - v79 - 459765763 + (v78 ^ (((1929149024 * (v73 ^ 0x23ED940E)) | ((-2087197741 * (v73 ^ 0x23ED940Eu)) >> 27)) - 2 * (((1929149024 * (v73 ^ 0x23ED940E)) | ((-2087197741 * (v73 ^ 0x23ED940Eu)) >> 27)) & 0x5F01C877 ^ ((-2087197741 * (v73 ^ 0x23ED940Eu)) >> 27) & 1) - 553531274));
  v81 = (-1375731712 * v80) | ((-93900841 * v80) >> 7);
  v82 = ((-145602560 * v79) | ((1461643849 * v79 - 856690396) >> 21)) + 2139693056;
  v83 = ((2 * v82) & 0x98AE3ABE) + (v82 ^ 0x4C571D5F);
  v84 = ((1324986368 * (v78 ^ 0xDF01C876)) | ((-505090149 * (v78 ^ 0xDF01C876)) >> 20)) - v81;
  v85 = ((-1349540864 * v77) | ((1462494185 * v77 - 468126743) >> 22)) + 1674552320 - 2 * ((((-1349540864 * v77) | ((1462494185 * v77 - 468126743) >> 22)) + 1674552320) & 0x1502A426 ^ ((1462494185 * v77 - 468126743) >> 22) & 4) - 1794989022;
  v86 = ((v84 - ((2 * v84) & 0x2A054844) - 1794989022) ^ v85) - v83 + 1280777567;
  v87 = ((-600166567 * v81) << (v1 & 0x18) << (v1 & 0x18 ^ 0x19)) | ((-600166567 * v81) >> 7);
  v88 = v87 - ((2 * v87) & 0xA40AB896);
  v89 = ((-859570176 * v86) | ((437089073 * v86) >> 14)) - 2 * (((-859570176 * v86) | ((437089073 * v86) >> 14)) & 0x56839E57 ^ ((437089073 * v86) >> 14) & 1);
  v90 = -312579745 * (v85 ^ 0x9502A422);
  v91 = -625159490 * (v85 ^ 0x9502A422);
  v92 = v91 & 0xFFFFFFFE | (v90 >> 31);
  v93 = ((178257920 * v83) | ((357498965 * v83 - 876462219) >> 11)) - 291504128 - 2 * ((((178257920 * v83) | ((357498965 * v83 - 876462219) >> 11)) - 291504128) & 0x6F59913F ^ ((357498965 * v83 - 876462219) >> 11) & 0x19);
  v94 = v92 + 1376083019 - 2 * (v92 & 0x52055C4F ^ v91 & 4);
  v95 = (v94 ^ (v88 + 1376083019)) - ((2 * (v94 ^ (v88 + 1376083019))) & 0xAD073CAC) + 1451466326;
  v96 = ((v95 ^ (v89 + 1451466326)) - ((2 * (v95 ^ (v89 + 1451466326))) & 0xDEB3224C) + 1868140838) ^ (v93 + 1868140838);
  v97 = ((((((v89 + 1451466326) << 30) ^ 0x40000000) & 0xC0000000 | ((182644163 * ((v89 + 1451466326) ^ 0x56839E56)) >> 2)) + 0x40000000) ^ 0xBFFFFB5E) + (((182644163 * ((v89 + 1451466326) ^ 0x56839E56)) >> 1) & 0x7FFFF6BC);
  v98 = ((483361280 * ((v88 + 1376083019) ^ 0x52055C4B)) | ((235825089 * ((v88 + 1376083019) ^ 0x52055C4B)) >> 23)) - 1073743010;
  v99 = ((1539696128 * v96) | ((346940147 * v96) >> 23)) - 2 * (((1539696128 * v96) & 0x5AB78200 | ((346940147 * v96) >> 23) & 0x5AB78333) ^ ((346940147 * v96) >> 23) & 0x10) - 625507549;
  v100 = v98 + ((770123912 * ((v93 + 1868140838) ^ 0x6F599126)) | ((633136401 * ((v93 + 1868140838) ^ 0x6F599126)) >> 29)) - v97 + (v99 ^ 0x25487CDC) + 1;
  v101 = (600473431 * ((v98 - v97 - ((2 * (v98 - v97)) & 0xB56F0646) - 625507549) ^ 0xF3A9B561 ^ v99)) ^ v100;
  LODWORD(STACK[0x600]) = v101 ^ 0xC87DA42F;
  HIDWORD(v102) = v99 ^ 0x19A08 ^ v101;
  LODWORD(v102) = v101 ^ 0xC87DA42F ^ (1539696128 * v96 - ((931908608 * v96) & 0x40B77800) + 542883076);
  v103 = ((2 * (v97 + 1073743011 + (v101 ^ 0x17D9E6D4))) & 0xFE7DFBCC) + ((v97 + 1073743011 + (v101 ^ 0x17D9E6D4)) ^ 0xFF3EFDE6);
  v104 = ((2 * (v100 - (v101 ^ 0xE826192B))) & 0x9D7BDDFE) + ((v100 - (v101 ^ 0xE826192B)) ^ 0x4EBDEEFF);
  HIDWORD(v102) = (v102 >> 20) ^ 0x89213C3B;
  LODWORD(v102) = HIDWORD(v102);
  v105 = v102 >> 12;
  LODWORD(STACK[0x4A8]) = v105;
  LODWORD(STACK[0x488]) = v103;
  LODWORD(STACK[0x438]) = v104;
  v106 = ((2113404928 * v103) | ((37556159 * v103 - 1823336602) >> 13)) - 1154482176;
  v107 = ((2 * v106) & 0xA317B2FE) + (v106 ^ 0xD18BD97F);
  v108 = ((-62390272 * v104) | ((1602699145 * v104 + 1964071049) >> 13)) - 1001914368;
  v109 = (-1241513984 * (v105 ^ 0xC3B89213)) | ((595270619 * (v105 ^ 0xC3B89213)) >> 7);
  v110 = ((2 * v109) & 0x7F11BF4E) + (v109 ^ 0x3F88DFA7);
  v111 = ((-280133632 * (v101 ^ 0xE826192B)) | ((-868360549 * (v101 ^ 0xE826192B)) >> 17)) - v107 - v110 + 286570790;
  v112 = v108 + 1684911709 + (~(2 * v108) | 0x37249345) + 1;
  v113 = (v111 - ((2 * v111) & 0xC8DB6CBA) + 1684911709) ^ v112;
  v114 = 740177137 * v107 + 38302577;
  v115 = -503316480 * v107;
  v116 = ((1375780032 * v113) | ((-850918669 * v113) >> 26)) - 2 * (((1375780032 * v113) | ((-850918669 * v113) >> 26)) & 0x68E6F7F ^ ((-850918669 * v113) >> 26) & 9);
  v117 = 652149815 * v110 - 1717545185;
  v118 = ((922231224 * v110) | (v117 >> 29)) - 855459592;
  v119 = (-1488453632 * (v112 ^ 0x646DB65D)) | ((-885828375 * (v112 ^ 0x646DB65Du)) >> 13);
  v120 = ((2 * v119) & 0x7CF8D1FA) + (v119 ^ 0x3E7C68FD);
  v116 -= 2037485706;
  v121 = (((v115 & 0xFE000000 | (v114 >> 7)) - 503316480 - 2 * (((v115 & 0xFE000000 | (v114 >> 7)) - 503316480) & 0x68E6F7F ^ (v114 >> 7) & 9) - 2037485706) ^ v118 ^ v116) - v120 + 1048340733;
  v122 = ((595591168 * v120) | ((1093096007 * v120 - 1772955691) >> 9)) - 360710144;
  HIDWORD(v102) = v117 >> 29;
  LODWORD(v102) = -201068791 * v118;
  v123 = ((2 * v122) & 0xE767FF9E) + (v122 ^ 0x73B3FFCF);
  v124 = ((376705024 * (v116 ^ 0x868E6F76)) | ((-1855887551 * (v116 ^ 0x868E6F76)) >> 20)) - 2 * (((376705024 * (v116 ^ 0x868E6F76)) | ((-1855887551 * (v116 ^ 0x868E6F76)) >> 20)) & 0x4D066F5F ^ ((-1855887551 * (v116 ^ 0x868E6F76)) >> 20) & 0x13) - 855216308;
  v125 = -592463218 * (v124 ^ 0xCD066F4C);
  v126 = v125 & (v124 ^ 0x4D066F4C);
  v127 = (v125 - ((-1184926436 * (v124 ^ 0xCD066F4C)) & 0x9A0CDE98) - 855216308) ^ v124;
  v128 = v124 ^ ((v102 >> 2) - ((2 * (v102 >> 2)) & 0x9A0CDE98) - 855216308);
  v129 = v127 + 2 * v126;
  v130 = ((362384992 * v121) | ((145542259 * v121) >> 27)) - 2 * (((362384992 * v121) | ((145542259 * v121) >> 27)) & 0x73010E9B ^ ((145542259 * v121) >> 27) & 3) + 1929449112;
  v131 = v130 ^ 0x73010E98;
  v132 = v123 - 1941176271 + ((v128 - ((2 * v128) & 0xE6021D30) + 1929449112) ^ v130);
  HIDWORD(v102) = v129;
  LODWORD(v102) = v129;
  v133 = v102 >> 27;
  v134 = v133 - ((2 * v133) & 0x582FE30);
  v135 = v133 ^ (((-1547813498 * v123) | ((-773906749 * v123 - 241638573) >> 31)) - 483277146);
  v136 = ((1120927744 * v131) | ((1040213037 * v131) >> 12)) - 2 * (((1120927744 * v131) | ((1040213037 * v131) >> 12)) & 0x2C17F1E ^ ((1040213037 * v131) >> 12) & 6) - 2101248232;
  v137 = ((1908539392 * v132) | ((-1900103455 * v132) >> 15)) - 2 * (((1908539392 * v132) | ((-1900103455 * v132) >> 15)) & 0x63389C7F ^ ((-1900103455 * v132) >> 15) & 0x18) - 482829209;
  v138 = ((v135 - ((2 * v135) & 0x582FE30) - 2101248232) ^ v136) - (v137 ^ 0xE3389C67);
  v139 = v138 - ((2 * v138) & 0x55B37308) + 718911876;
  v140 = ((v134 - 2101248232) ^ v136) + (v137 ^ 0x1CC76398) + 1811541450 + (v139 ^ 0x2AD9B984);
  LODWORD(STACK[0x430]) = v140;
  v141 = STACK[0x5F0];
  LODWORD(STACK[0x4C0]) = (v140 - ((2 * v140) & 0xC67138CE) - 482829209) ^ v137;
  LODWORD(STACK[0x4BC]) = v74 - 1433661430;
  LODWORD(STACK[0x520]) = HIBYTE(v141) ^ 0x22;
  LODWORD(STACK[0x5F8]) = v42;
  LODWORD(STACK[0x518]) = HIBYTE(v42) ^ 0x1D;
  LODWORD(STACK[0x468]) = v101;
  LODWORD(STACK[0x510]) = HIBYTE(v101) ^ 0xE8;
  LODWORD(STACK[0x620]) = (v140 ^ 0x39E1E9EF) + (v136 ^ 0x82C17F18) - ((2 * ((v140 ^ 0x39E1E9EF) + (v136 ^ 0x82C17F18))) & 0xCEF02ED0) - 411560088;
  LODWORD(STACK[0x4A0]) = v140 ^ 0x65BA91F5;
  LODWORD(STACK[0x448]) = v139;
  LODWORD(STACK[0x478]) = v140 ^ 0x65BA91F5 ^ v139;
  return (*(v8 + 8 * v2))(a1, 4054906434, 3639296490, 3847101462, 14776);
}

uint64_t sub_100241A5C(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v17 = *(*(a7 + 8 * v9) + 4 * ((v11 ^ v8) ^ v13) + v14);
  *(a1 + 4 * v8) = v7 ^ (v17 - (((v17 << v10) + a2) & a3) + a4);
  return (*(v16 + 8 * (((v12 == 0) * a5) ^ v15)))();
}

uint64_t sub_100241AB8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3BD5)))(1032);
  STACK[0x900] = v2 + 0x52DC16278CC38060;
  return (*(v1 + 8 * ((114 * ((((v0 ^ 0xBB) - 100) ^ (v2 == 0)) & 1)) ^ v0)))();
}

uint64_t sub_100241C70(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v20 = (((v10 ^ v17) << 6) | ((v10 ^ v17) >> 2)) ^ v8;
  v21 = (v20 >> v12) & 3 | (4 * (v20 & 0x3F));
  v22 = a8 ^ v16 ^ v21 ^ *(*(a5 + 8 * v14) + 4 * (v21 ^ v13) + v15);
  *(v9 + 4 * v10) = a1 ^ (v22 + a7 - (a6 & (2 * v22)));
  return (*(v19 + 8 * (((v11 == 0) * a2) ^ v18)))();
}

uint64_t sub_100241CE4()
{
  LODWORD(STACK[0x420]) = v0;
  v3 = (*(v2 + 8 * (v1 + 5383)))(1028);
  STACK[0x8E8] = v3 + 0x26CE0F71FC42097ELL;
  return (*(v2 + 8 * (((v3 == 0) * (v1 ^ 0x590 ^ (v1 - 1619) ^ 0x1FF5)) ^ v1)))();
}

uint64_t sub_100241D4C()
{
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0x42C]) = 1088 * (v0 ^ 0x11FC);
  return v2(v0 ^ 0x1017u, -1554478202, 3954022143, 987);
}

uint64_t sub_100241E90(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v26 = (((v9 + v12 - (v10 & v19)) ^ v16) + v24 - (v21 & (2 * ((v9 + v12 - (v10 & v19)) ^ v16)))) ^ v25;
  v27 = ((v26 - (v13 & (2 * v26)) - 102) ^ a8);
  v28 = v27 ^ *(*(a7 + 8 * a1) + 4 * (v27 ^ v14) + a2);
  *(v8 + 4 * v9) = v15 ^ v22 ^ v17 ^ a3 ^ (v28 + v18 - ((2 * v28) & 0xC226579A));
  return (*(v23 + 8 * (((v11 == 0) * a4) ^ v20)))();
}

uint64_t sub_100241F2C()
{
  LODWORD(STACK[0x488]) = v0;
  LODWORD(STACK[0x4E0]) = v1;
  v3 = STACK[0x42C];
  v4 = (*(v2 + 8 * (LODWORD(STACK[0x42C]) + 8437)))(1028);
  STACK[0x8F8] = v4;
  return (*(v2 + 8 * (((v4 != 0) * (23 * (v3 ^ 0x81D) - 3540)) | v3)))();
}

uint64_t sub_1002420C8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W8>)
{
  v20 = (v17 + ((2 * (v9 ^ v16)) ^ v14) + a2) ^ *(*(&off_1002DD400 + v12) + 4 * ((v9 ^ v16) ^ v11) + v13);
  v21 = (v20 + v8 - 2 * (v20 & (v8 + 1) ^ *(*(&off_1002DD400 + v12) + 4 * ((v9 ^ v16) ^ v11) + v13) & 1)) ^ v18;
  v22 = a5 ^ (v21 - (a3 & (2 * v21)) + a4);
  *(a1 + 4 * v9) = a6 ^ (v22 + 1697986745 - (v15 & (2 * v22)));
  return (*(v19 + 8 * (((v10 == 0) * a7) ^ a8)))();
}

uint64_t sub_10024216C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3C80)))(1032);
  STACK[0x8D0] = v2 + 0x3EF28014ABB6B4C9;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 430) ^ v0 ^ 0x1BEE ^ 0x1A7E)) ^ v0)))();
}

uint64_t sub_1002422BC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v16 = (v7 + 497380106 - (v8 & 0x3B4AD614)) ^ LODWORD(STACK[0x5F8]);
  v17 = (v16 + a6 - (a7 & (2 * v16))) ^ LODWORD(STACK[0x628]);
  v18 = *(*(&off_1002DD400 + v12) + 4 * (((v17 - ((v17 << v10) & 8) + 4) ^ LODWORD(STACK[0x600])) ^ v11) + v13);
  v19 = LODWORD(STACK[0x620]) ^ v15 ^ (v18 - 411560088 - ((2 * v18) & 0xCEF02ED0));
  *(a1 + 4 * v7) = a2 ^ (v19 - 1559071572 - ((2 * v19) & 0x4624E958));
  return (*(STACK[0x630] + 8 * (((v9 == 0) * a3) ^ v14)))();
}

uint64_t sub_1002423A4()
{
  v1 = STACK[0x630];
  v2 = (*(STACK[0x630] + 8 * (v0 ^ 0x30C6)))(1032);
  STACK[0x910] = v2 + 0x93936A1F6680CD1;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 4504) | 0x600) ^ 0xFFFFE10A) + v0 - 2157)) ^ v0)))();
}

uint64_t sub_100242500(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v17 = *(*(&off_1002DD400 + v11) + 4 * (LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x510]) ^ v7 ^ v10) + v12);
  v18 = (((v14 + 636) | v9) + a3) ^ LODWORD(STACK[0x4D8]) ^ ((a2 + 16 * v17) * (v17 + v13));
  v19 = (v18 - 863319888 - 2 * (v18 & 0x4C8AC8B3 ^ v6)) ^ LODWORD(STACK[0x610]);
  v20 = a5 ^ LODWORD(STACK[0x4BC]) ^ v16 ^ LODWORD(STACK[0x4C0]) ^ (v17 + a4) ^ (v19 + 1697986745 - (v15 & (2 * v19)));
  v21 = (v20 - 411560088 - ((2 * v20) & 0xCEF02ED0)) ^ LODWORD(STACK[0x620]);
  *(a1 + 4 * v7) = a6 ^ (v21 + 718911876 - ((2 * v21) & 0x55B37308));
  return (*(STACK[0x630] + 8 * (((4 * (v8 == 0)) | (8 * (v8 == 0))) ^ v14)))();
}

uint64_t sub_10024262C()
{
  v1 = STACK[0x630];
  v2 = (*(STACK[0x630] + 8 * (v0 + 2479)))(1028);
  STACK[0x920] = v2 + 0x4B8DEC0944082CF5;
  return (*(v1 + 8 * (((((v0 + 119) ^ (v2 == 0)) & 1) * (((v0 + 1331674805) & 0xB0A02F9F) - 3577)) ^ v0)))();
}

uint64_t sub_1002427A8(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v16 = *(*(&off_1002DD400 + v9) + 4 * (LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x510]) ^ v7 ^ 0x70u) + v10);
  v17 = a1 ^ (v16 - ((v11 + 2 * v16) & v12) + v13);
  v18 = LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x4B0]) ^ (v17 - 518837299 - ((2 * v17) & 0xC226579A));
  v19 = v15 ^ LODWORD(STACK[0x600]) ^ (v18 + 542883076 - ((2 * v18) & 0x40B77A08));
  v20 = a4 ^ (v19 - (a2 & (2 * v19)) + a3);
  v21 = LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x5E8]) ^ (v20 + 1789250892 - ((2 * v20) & 0xD54B9A98));
  *(v6 + 4 * v7) = a5 ^ (v21 + 967768323 - ((2 * v21) & 0x735DF206));
  return (*(STACK[0x630] + 8 * (((v8 == 0) * a6) ^ v14)))();
}

uint64_t sub_1002428CC()
{
  v1 = STACK[0x630];
  v2 = (*(STACK[0x630] + 8 * (v0 ^ 0x266Eu)))(1032);
  STACK[0x8E0] = v2 + 0x4347A8FF3060F6CFLL;
  return (*(v1 + 8 * ((((v0 ^ (v2 == 0)) & 1) * ((1113 * (v0 ^ 0xF1E)) ^ 0x158E)) ^ v0)))();
}

uint64_t sub_100242A64@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W8>)
{
  v15 = *(*(&off_1002DD400 + v11) + 4 * ((v7 ^ v13) ^ v10) + v12) ^ v14;
  v16 = (v15 + 2030054119 - (a1 & (2 * v15))) ^ LODWORD(STACK[0x490]);
  *(v6 + 4 * v7) = a4 ^ (v16 - 1434841703 - ((v16 << (((a6 + 42) | v9) + a2)) & a3));
  return (*(STACK[0x630] + 8 * (((v8 != 0) * a5) ^ a6)))();
}

uint64_t sub_100242B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(STACK[0x630] + 8 * (a7 - 212));
  LODWORD(STACK[0x3A8]) = LODWORD(STACK[0x430]) ^ 0x13C41418;
  return v7();
}

uint64_t sub_100242B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x518]) = a7;
  v9 = v7;
  LODWORD(STACK[0x608]) = 1070359769;
  STACK[0x5D0] = v7 & 0xFFFFFFFE ^ 0x3FCC64D9;
  v10 = *(v8 + (v7 & 0xFFFFFFFE ^ 0x3FCC64D9) - 0x13ECD35942048670) - 49 * (v7 & 0xFE ^ 0xD9) - 37;
  v11 = v7 & 0xFFFFFFF6 ^ 0x3FCC64D9;
  STACK[0x5F0] = v11;
  LODWORD(STACK[0x620]) = (a7 - 5846) | 0x80;
  v12 = STACK[0x500];
  v13 = *(STACK[0x500] + (v10 ^ (((a7 + 42) | 0x80) - 67)));
  v14 = *(STACK[0x500] + ((*(v8 + v11 - 0x13ECD35942048670) - 49 * v11 - 37) ^ 0xC3));
  STACK[0x5C8] = v9 & 0xFFFFFFF4 ^ 0x3FCC64DB;
  v15 = STACK[0x508];
  v16 = *(STACK[0x508] + ((*(v8 + (v9 & 0xFFFFFFF4 ^ 0x3FCC64DB) - 0x13ECD35942048670) - 49 * (v9 & 0xF4 ^ 0xDB) - 37) ^ 0x52)) ^ 0x40;
  v17 = (*(STACK[0x508] + ((*(v8 + (v9 & 0xFFFFFFF4 ^ 0x3FCC64DB) - 0x13ECD35942048670) - 49 * (v9 & 0xF4 ^ 0xDB) - 37) ^ 0x52)) ^ 0x40) & 0xFF00FFFF | (((v14 ^ (((8 * v14) ^ 0x60) + 8)) ^ 0x87) << 16);
  STACK[0x520] = v9 & 0xFFFFFFFC ^ 0x3FCC64DB;
  v18 = *(v15 + ((*(v8 + (v9 & 0xFFFFFFFC ^ 0x3FCC64DB) - 0x13ECD35942048670) - 49 * (v9 & 0xFC ^ 0xDB) - 37) ^ 0x51)) ^ 0x40;
  LODWORD(STACK[0x4D0]) = v18;
  v19 = v18 & 0xFF00FFFF | (((v13 ^ (((8 * v13) ^ 0x60) + 8)) ^ 0x8F) << 16);
  STACK[0x5E8] = v9 & 0xFFFFFFF8 ^ 0x3FCC64DF;
  v20 = *(v15 + ((*(v8 + (v9 & 0xFFFFFFF8 ^ 0x3FCC64DF) - 0x13ECD35942048670) - 49 * (v9 & 0xF8 ^ 0xDF) - 37) ^ 0xB4));
  v21 = v9 & 0xFFFFFFF7 ^ 0x3FCC64D8;
  v22 = STACK[0xB60];
  STACK[0x480] = STACK[0xB60];
  v23 = *v22;
  STACK[0x470] = v21;
  v24 = (((v20 ^ 0x40) - (v20 ^ 0xB1)) ^ 0xFE) + (v20 ^ 0x40);
  v25 = STACK[0x4F8];
  LODWORD(v11) = *(STACK[0x4F8] + ((*(v23 + v21 - 0x13ECD35942048670) - 49 * (v9 & 0xF7 ^ 0xD8) - 37) ^ 0x43)) + ((*(v23 + v21 - 0x13ECD35942048670) - 49 * (v9 & 0xFFFFFFF7 ^ 0x3FCC64D8) - 37) ^ 0x4B);
  STACK[0x4D8] = v9 & 0xFFFFFFFA ^ 0x3FCC64DD;
  LOBYTE(v21) = *(v12 + ((*(v23 + (v9 & 0xFFFFFFFA ^ 0x3FCC64DD) - 0x13ECD35942048670) - 49 * (v9 & 0xFA ^ 0xDD) - 37) ^ 0x18));
  STACK[0x4E0] = v9 & 0xFFFFFFF2 ^ 0x3FCC64DD;
  v26 = (*(v23 + (v9 & 0xFFFFFFF2 ^ 0x3FCC64DD) - 0x13ECD35942048670) - 49 * (v9 & 0xF2 ^ 0xDD) - 37) ^ 0xFCLL;
  v27 = v9 & 0xFFFFFFF3 ^ 0x3FCC64DC;
  STACK[0x488] = v27;
  v28 = *(v12 + v26);
  LODWORD(v26) = v24 | ((v21 ^ 0x43 ^ (((8 * v21) ^ 0x60) + 8)) << 16);
  LOBYTE(v21) = v28 ^ 0x8A ^ (((8 * v28) ^ 0x60) + 8);
  v29 = *(v23 + v27 - 0x13ECD35942048670) - 49 * v27 - 37;
  v30 = v29 ^ 0xFFFFFFB6;
  LODWORD(v12) = (((v29 ^ 0xB6) - (v29 ^ 0xBE)) ^ 0xFFFFFFF0) + (v29 ^ 0xB6);
  STACK[0x510] = v9 & 0xFFFFFFF0 ^ 0x3FCC64DF;
  LOBYTE(v29) = *(v15 + ((*(v8 + (v9 & 0xFFFFFFF0 ^ 0x3FCC64DF) - 0x13ECD35942048670) - 49 * (v9 & 0xF0 ^ 0xDF) - 37) ^ 0x2ALL)) ^ 0x40;
  v31 = (*(v15 + ((*(v8 + (v9 & 0xFFFFFFF0 ^ 0x3FCC64DF) - 0x13ECD35942048670) - 49 * (v9 & 0xF0 ^ 0xDF) - 37) ^ 0x2ALL)) ^ 0x40) & 0xFF00FFFF | (v21 << 16);
  v32 = *(v25 + v12) + v30;
  STACK[0x490] = v9 & 0xFFFFFFFD ^ 0x3FCC64DA;
  LOBYTE(v21) = *(v23 + (v9 & 0xFFFFFFFD ^ 0x3FCC64DA) - 0x13ECD35942048670) - 49 * (v9 & 0xFD ^ 0xDA);
  v33 = v9 & 0xFFFFFFFB ^ 0x3FCC64DC;
  STACK[0x4C8] = v33;
  v34 = *(v25 + ((49 * (v9 & 0xFB ^ 0xDC) - *(v23 + v33 - 0x13ECD35942048670) + 36) ^ 0x2ALL)) + ((49 * v33 - *(v23 + v33 - 0x13ECD35942048670) + 36) ^ 0x22222222);
  v35 = v9 & 0xFFFFFFF9 ^ 0x3FCC64DE;
  STACK[0x4A8] = v35;
  LODWORD(v15) = *(v23 + v35 - 0x13ECD35942048670) - 49 * v35 - 37;
  LODWORD(v15) = v15 - 32 * (v15 >> 4) + 112;
  STACK[0x478] = v9 & 0xFFFFFFF1 ^ 0x3FCC64DE;
  v36 = *(v23 + (v9 & 0xFFFFFFF1 ^ 0x3FCC64DE) - 0x13ECD35942048670) - 49 * (v9 & 0xF1 ^ 0xDE) - 37;
  v37 = v36 - ((2 * v36) & 0xB4);
  v38 = STACK[0x4F0];
  v39 = v9 & 0xFFFFFFF5 ^ 0x3FCC64DA;
  v40 = (((v34 - 17) ^ 0xAF) << 24) | ((*(STACK[0x4F0] + (v15 ^ 0xE3)) ^ ((v15 ^ 0x29) + (v15 ^ 0xBD) + (~(2 * ((v15 ^ 0x29) + (v15 ^ 0xBD))) | 0x49) + 92) ^ 0x41) << 8) | v26;
  LODWORD(v12) = (((v32 - 17) ^ 0xB7) << 24) | ((*(STACK[0x4F0] + ((v37 - 38) ^ 0x5ELL)) ^ 0xDD ^ (2 * (((v37 - 38) ^ 0x14) & (v37 + 90)) - ((4 * (((v37 - 38) ^ 0x14) & (v37 + 90)) + 40) & 0xB4) - 17)) << 8) | v31;
  STACK[0x4C0] = v39;
  v41 = *(v23 + v39 - 0x13ECD35942048670) - 49 * v39;
  LODWORD(STACK[0x468]) = v41;
  v42 = v41 - ((2 * v41 + 54) & 0x50u) + 3;
  STACK[0x460] = v42;
  v43 = *(v38 + (v42 ^ 0xE4)) ^ ((v42 ^ 0xBA) + (v42 ^ 0x2E) - ((2 * ((v42 ^ 0xBA) + (v42 ^ 0x2E))) & 0xB6) + 91);
  LODWORD(STACK[0x3C0]) = v12;
  v44 = (((v11 - 17) ^ 0xE) << 24) | ((v43 ^ 0xFD) << 8) | v17;
  LODWORD(STACK[0x3C8]) = v40;
  LODWORD(STACK[0x3B8]) = v44;
  v45 = v44 + 497380106 - 2 * (v44 & 0x1DA56B0E ^ v16 & 4);
  LOBYTE(v11) = v21 - ((2 * v21 - 74) & 0xCF) + 66;
  LOBYTE(v21) = (v11 ^ 0x68) + (v11 ^ 0xFC);
  LOBYTE(v11) = *(v38 + (v11 ^ 0xA2));
  v46 = v21 + (~(2 * v21) | 0x49) + 92;
  LOBYTE(v21) = v21 ^ 0xB;
  v47 = (v21 - (v11 ^ v46 ^ 0xB)) ^ ((v11 ^ 0xA4) + 1);
  LOBYTE(v11) = ((v47 - ((2 * v47) & 0xB6) + 91) ^ v11) + v21;
  LODWORD(STACK[0x4BC]) = v9;
  v48 = v9 ^ 0x3FCC64D8u;
  STACK[0x4B0] = v48;
  LODWORD(v23) = *(v23 + v48 - 0x13ECD35942048670) - 49 * (v9 ^ 0xFFFFFFD8) - 37;
  LODWORD(v48) = (((*(v25 + (v23 ^ 0x67)) + (v23 ^ 0x6F) - 17) ^ 0xAC) << 24) | (v11 << 8) | v19;
  LODWORD(v23) = v48 & 0x205BBD1C ^ STACK[0x4D0] & 0x18;
  LODWORD(STACK[0x3B0]) = v48;
  LODWORD(v11) = (v12 + 497380106 - 2 * (v12 & 0x1DA56B1F ^ v29 & 0x15)) ^ LODWORD(STACK[0x5F8]);
  v49 = (v40 + 542883076 - 2 * (v40 & 0x205BBD07 ^ v24 & 3)) ^ LODWORD(STACK[0x600]);
  v50 = v49 + 497380106 - ((2 * v49) & 0x3B4AD614);
  LODWORD(v23) = (v48 + 542883076 - 2 * v23) ^ LODWORD(STACK[0x600]);
  LODWORD(v23) = (v23 + 497380106 - ((2 * v23) & 0x3B4AD614)) ^ LODWORD(STACK[0x5F8]);
  v51 = (v23 - 1814760294 - ((2 * v23) & 0x27A9E934)) ^ LODWORD(STACK[0x628]);
  v52 = STACK[0x920];
  v53 = (v11 + 542883076 - ((2 * v11) & 0x40B77A08)) ^ LODWORD(STACK[0x600]);
  v54 = (v53 - 1814760294 - ((2 * v53) & 0x27A9E934)) ^ LODWORD(STACK[0x628]);
  v55 = STACK[0x8E0];
  v56 = STACK[0x8E0];
  v57 = *(STACK[0x8E0] + 4 * (BYTE2(v54) ^ 0x61u) - 0x4347A8FF3060F6CFLL) ^ *(STACK[0x920] + 4 * (HIBYTE(v51) ^ 0x44) - 0x4B8DEC0944082CF5);
  v58 = ((v50 ^ LODWORD(STACK[0x5F8])) - 1814760294 - ((2 * (v50 ^ LODWORD(STACK[0x5F8]))) & 0x27A9E934)) ^ LODWORD(STACK[0x628]);
  LODWORD(v42) = (v57 ^ 0xD97434F4) - 997095658 - 2 * ((v57 ^ 0xD97434F4) & 0x4491871E ^ v57 & 8);
  v59 = *(STACK[0x920] + 4 * (HIBYTE(v58) ^ 0x1F) - 0x4B8DEC0944082CF5) ^ *(STACK[0x8E0] + 4 * (BYTE2(v51) ^ 0x58u) - 0x4347A8FF3060F6CFLL);
  v60 = (v59 ^ 0xD97434F4) - 997095658 - 2 * ((v59 ^ 0xD97434F4) & 0x4491871E ^ v59 & 8);
  v61 = STACK[0x8E8];
  v62 = *(STACK[0x8E8] + 4 * (v51 ^ 0x4Eu) - 0x26CE0F71FC42097ELL);
  v63 = ((v45 ^ LODWORD(STACK[0x5F8])) + 542883076 - ((2 * (v45 ^ LODWORD(STACK[0x5F8]))) & 0x40B77A08)) ^ LODWORD(STACK[0x600]);
  v64 = (v63 - 1814760294 - ((2 * v63) & 0x27A9E934)) ^ LODWORD(STACK[0x628]);
  v65 = STACK[0x900];
  v66 = v42 ^ *(STACK[0x900] + 4 * (BYTE1(v64) ^ 9u) - 0x52DC16278CC38060);
  v67 = (v66 - 1591377848 - ((2 * v66) & 0x424B0090)) ^ *(STACK[0x8E8] + 4 * (v58 ^ 0xA9u) - 0x26CE0F71FC42097ELL);
  LODWORD(v42) = *(STACK[0x8E0] + 4 * (BYTE2(v58) ^ 0x2Eu) - 0x4347A8FF3060F6CFLL) ^ *(STACK[0x920] + 4 * (HIBYTE(v64) ^ 0xD9) - 0x4B8DEC0944082CF5);
  v68 = v42 ^ 0xD97434F4;
  v69 = (v42 ^ 0xD97434F4) & 0x4491871E ^ v42 & 8;
  LODWORD(v15) = *(STACK[0x8E0] + 4 * (BYTE2(v64) ^ 0x81u) - 0x4347A8FF3060F6CFLL) ^ 0xD97434F4 ^ *(STACK[0x920] + 4 * (HIBYTE(v54) ^ 0x6A) - 0x4B8DEC0944082CF5);
  v70 = (v15 - 997095658 - ((2 * v15) & 0x89230E2C)) ^ *(STACK[0x900] + 4 * (BYTE1(v58) ^ 0x98u) - 0x52DC16278CC38060);
  v71 = (v62 & 0x10 | (32 * (((v62 & 0x10) >> 4) & 1))) ^ 0x7E5DFBDB;
  v72 = ((v71 - 2120088539) & v70) == 0;
  v73 = v71 - 168657536;
  v74 = -223447754 - v71;
  if (v72)
  {
    v74 = v73;
  }

  v75 = (v70 - 1951431003 + v74) ^ v62 & 0xFFFFFFEF;
  v76 = *(v55 + 4 * (BYTE2(v75) ^ 0x14u) - 0x4347A8FF3060F6CFLL) ^ *(v52 + 4 * (HIBYTE(v67) ^ 0xA9) - 0x4B8DEC0944082CF5);
  v77 = v60 ^ *(v65 + 4 * (BYTE1(v54) ^ 0xC3u) - 0x52DC16278CC38060);
  v78 = (v77 - 1591377848 - ((2 * v77) & 0x424B0090)) ^ *(v61 + 4 * (v64 ^ 0x75u) - 0x26CE0F71FC42097ELL);
  v79 = *(v65 + 4 * (BYTE1(v75) ^ 0x96u) - 0x52DC16278CC38060) ^ *(v52 + 4 * (HIBYTE(v78) ^ 0x3A) - 0x4B8DEC0944082CF5);
  v80 = (v68 - 997095658 - 2 * v69) ^ *(v65 + 4 * (BYTE1(v51) ^ 0x15u) - 0x52DC16278CC38060);
  v81 = (v80 - 1591377848 - ((2 * v80) & 0x424B0090)) ^ *(v61 + 4 * (((v53 - 102 - ((2 * v53) & 0x34)) ^ LOBYTE(STACK[0x628])) ^ 0x22u) - 0x26CE0F71FC42097ELL);
  v82 = *(v52 + 4 * (HIBYTE(v81) ^ 0x8E) - 0x4B8DEC0944082CF5) ^ *(v55 + 4 * (BYTE2(v78) ^ 0x90u) - 0x4347A8FF3060F6CFLL);
  LODWORD(STACK[0x4D0]) = 1150387991;
  v83 = (v82 ^ 0xD97434F4) - 997095658 - 2 * ((v82 ^ 0xD97434F4) & 0x44918717 ^ v82 & 1);
  v84 = ((v76 ^ 0xD97434F4) - 997095658 - 2 * ((v76 ^ 0xD97434F4) & 0x44918717 ^ v76 & 1)) ^ *(v65 + 4 * (BYTE1(v81) ^ 0xAAu) - 0x52DC16278CC38060);
  v85 = (v84 - 1591377848 - ((2 * v84) & 0x424B0090)) ^ *(v61 + 4 * (v78 ^ 0xADu) - 0x26CE0F71FC42097ELL);
  v86 = ((v79 ^ 0x5B4C7D71) + 1185533587 - 2 * ((v79 ^ 0x5B4C7D71) & 0x46A9CE97 ^ v79 & 4)) ^ *(v55 + 4 * (BYTE2(v67) ^ 0xC6u) - 0x4347A8FF3060F6CFLL);
  v87 = v83 ^ *(v65 + 4 * (BYTE1(v67) ^ 0x39u) - 0x52DC16278CC38060);
  v88 = (v86 - 1591377848 - ((2 * v86) & 0x424B0090)) ^ *(v61 + 4 * (v81 ^ 0x22u) - 0x26CE0F71FC42097ELL);
  v89 = v87 - 1591377848 - ((2 * v87) & 0x424B0090);
  v90 = HIBYTE(v75) ^ 0xB2;
  v91 = v61 + 4 * (v75 ^ 0x74u);
  STACK[0x8E8] = v91;
  LODWORD(v91) = *(v91 - 0x26CE0F71FC42097ELL);
  v92 = v52 + 4 * v90;
  STACK[0x920] = v92;
  v93 = v65 + 4 * (BYTE1(v78) ^ 0xB2u);
  STACK[0x900] = v93;
  LODWORD(v91) = v89 ^ v91;
  v94 = *(v56 + 4 * (BYTE2(v81) ^ 0x47u) - 0x4347A8FF3060F6CFLL) ^ *(v92 - 0x4B8DEC0944082CF5);
  v95 = ((v94 ^ 0xD97434F4) - 997095658 - 2 * ((v94 ^ 0xD97434F4) & 0x4491871E ^ v94 & 8)) ^ *(v93 - 0x52DC16278CC38060);
  v96 = v61 + 4 * (v67 ^ 0xC8u);
  STACK[0x8E8] = v96;
  LODWORD(v92) = (v95 - 1591377848 - ((2 * v95) & 0x424B0090)) ^ *(v96 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v61;
  v97 = v65 + 4 * (BYTE1(v91) ^ 0x18u);
  STACK[0x900] = v97;
  v98 = v52 + 4 * (HIBYTE(v85) ^ 0xDE);
  STACK[0x920] = v98;
  LODWORD(v98) = *(v98 - 0x4B8DEC0944082CF5) ^ *(v56 + 4 * (BYTE2(v92) ^ 0x76u) - 0x4347A8FF3060F6CFLL) ^ 0xD97434F4;
  v99 = v61 + 4 * (v88 ^ 0x65u);
  STACK[0x8E8] = v99;
  v100 = v52 + 4 * (HIBYTE(v88) ^ 0x93);
  STACK[0x920] = v100;
  v101 = *(v99 - 0x26CE0F71FC42097ELL);
  v102 = 4 * (BYTE1(v92) ^ 0xBCu);
  STACK[0x900] = v97 + v102;
  v103 = *(v100 - 0x4B8DEC0944082CF5) ^ *(v56 + 4 * (BYTE2(v85) ^ 0x49u) - 0x4347A8FF3060F6CFLL);
  v104 = (v98 - 1591377848 - ((2 * v98) & 0x424B0090)) ^ __ROR4__(__ROR4__(*(v97 - 0x52DC16278CC38060) ^ 0xE3BD52CF, 12) ^ 0x5D9272CD, 20) ^ v101;
  v105 = v65 + 4 * (BYTE1(v85) ^ 0xCDu);
  STACK[0x900] = v105;
  v106 = v52 + 4 * (BYTE3(v91) ^ 0xB4);
  STACK[0x920] = v106;
  v107 = v61 + 4 * (v91 ^ 0x8Fu);
  STACK[0x8E8] = v107;
  v108 = *(v107 - 0x26CE0F71FC42097ELL) ^ ((v103 ^ 0xD97434F4) - 1591377848 - 2 * ((v103 ^ 0xD97434F4) & 0x21258049 ^ v103 & 1));
  LODWORD(v100) = v108 - 997095658 - ((2 * v108) & 0x89230E2C);
  v109 = STACK[0x8E0];
  v110 = STACK[0x8E0] + 4 * (BYTE2(v91) ^ 0xD7u);
  v111 = *(v106 - 0x4B8DEC0944082CF5) ^ *(STACK[0x8E0] + 4 * (BYTE2(v88) ^ 0x56u) - 0x4347A8FF3060F6CFLL);
  v112 = v52 + 4 * (BYTE3(v92) ^ 0x9D);
  STACK[0x920] = v112;
  v113 = v61 + 4 * (v92 ^ 0x1Eu);
  STACK[0x8E8] = v113;
  v114 = ((v111 ^ 0xD97434F4) - 997095658 - 2 * ((v111 ^ 0xD97434F4) & 0x4491871F ^ v111 & 9)) ^ *(v105 - 0x52DC16278CC38060);
  v115 = (v114 - 1591377848 - ((2 * v114) & 0x424B0090)) ^ *(v113 - 0x26CE0F71FC42097ELL);
  LODWORD(v110) = *(v110 - 0x4347A8FF3060F6CFLL);
  v116 = v65 + 4 * (BYTE1(v88) ^ 0x8Bu);
  STACK[0x900] = v116;
  LODWORD(v116) = ((v110 ^ *(v112 - 0x4B8DEC0944082CF5) ^ 0xD97434F4) - 997095658 - ((2 * (v110 ^ *(v112 - 0x4B8DEC0944082CF5) ^ 0xD97434F4)) & 0x89230E2C)) ^ *(v116 - 0x52DC16278CC38060);
  STACK[0x920] = v52;
  STACK[0x900] = v65;
  v117 = v61 + 4 * (v85 ^ 0xB8u);
  STACK[0x8E8] = v117;
  v118 = (v116 - 1591377848 - ((2 * v116) & 0x424B0090)) ^ *(v117 - 0x26CE0F71FC42097ELL);
  LOBYTE(v117) = STACK[0x460] ^ 0x28 | (LODWORD(STACK[0x468]) + 64);
  LODWORD(v102) = *(v102 + v65 - 0x52DC16278CC38060);
  v119 = v100 ^ v102;
  v120 = (v104 ^ 0x66337B35) >> (v102 & 8) >> (v102 & 8 ^ 8);
  STACK[0x8E8] = v61;
  v121 = v65 + 4 * (BYTE1(v115) ^ 0x93u);
  STACK[0x900] = v121;
  v122 = v52 + 4 * (HIBYTE(v104) ^ 0x66);
  STACK[0x920] = v122;
  LODWORD(v105) = *(v122 - 0x4B8DEC0944082CF5) ^ 0xD97434F4 ^ *(v109 + 4 * (BYTE2(v118) ^ 0xA1u) - 0x4347A8FF3060F6CFLL);
  v72 = v117 == 0;
  v123 = (v105 - 997095658 - ((2 * v105) & 0x89230E2C)) ^ *(v121 - 0x52DC16278CC38060);
  v124 = 4 * (HIBYTE(v119) ^ 0x4D);
  STACK[0x920] = v122 + v124;
  v125 = 4 * (BYTE1(v118) ^ 0xA4u);
  STACK[0x900] = v121 + v125;
  v126 = v119 ^ 0xDDu;
  if (v72)
  {
    v126 = 146;
  }

  v127 = v61 + 4 * v126;
  STACK[0x8E8] = v127;
  LODWORD(v127) = *(v127 - 0x26CE0F71FC42097ELL);
  v128 = v124 + v52;
  STACK[0x920] = v128;
  v129 = v125 + v65;
  STACK[0x900] = v129;
  v130 = 4 * (HIBYTE(v115) ^ 0x27);
  v131 = *(v128 - 0x4B8DEC0944082CF5);
  STACK[0x920] = v128 + v130;
  LODWORD(v128) = v131 ^ *(v109 + 4 * (BYTE2(v104) ^ 0x33u) - 0x4347A8FF3060F6CFLL);
  v132 = (v123 - 1591377848 - ((2 * v123) & 0x424B0090)) ^ v127;
  STACK[0x8E8] = v61;
  LODWORD(v127) = ((v128 ^ 0xD97434F4) - 997095658 - 2 * ((v128 ^ 0xD97434F4) & 0x4491871E ^ v128 & 8)) ^ *(v129 - 0x52DC16278CC38060);
  v133 = v61 + 4 * (v115 ^ 0xEAu);
  STACK[0x8E8] = v133;
  v134 = v65 + 4 * v120;
  STACK[0x900] = v134;
  v135 = v130 + v52;
  STACK[0x920] = v130 + v52;
  LODWORD(v133) = *(v133 - 0x26CE0F71FC42097ELL);
  v136 = 4 * (HIBYTE(v118) ^ 0x29);
  v137 = *(v135 - 0x4B8DEC0944082CF5);
  v138 = *(v134 - 0x52DC16278CC38060);
  STACK[0x920] = v135 + v136;
  v139 = v137 ^ *(v109 + 4 * (BYTE2(v119) ^ 0x1Fu) - 0x4347A8FF3060F6CFLL);
  v140 = 4 * (BYTE1(v119) ^ 0x46u);
  STACK[0x900] = v134 + v140;
  v141 = ((v139 ^ 0xD97434F4) - 997095658 - 2 * ((v139 ^ 0xD97434F4) & 0x44918717 ^ v139 & 1)) ^ v138;
  v142 = (v127 - 1591377848 - ((2 * v127) & 0x424B0090)) ^ v133;
  v143 = v61 + 4 * (v118 ^ 0x91u);
  STACK[0x8E8] = v143;
  v144 = 4 * (v104 ^ 0x35u);
  LODWORD(v134) = *(v143 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v143 + v144;
  v145 = (v141 - 1591377848 - ((2 * v141) & 0x424B0090)) ^ v134;
  LODWORD(v143) = BYTE2(v115) ^ 0x81;
  v146 = STACK[0x8E0];
  v147 = STACK[0x8E0];
  LODWORD(v143) = *(STACK[0x8E0] + 4 * v143 - 0x4347A8FF3060F6CFLL);
  STACK[0x900] = v140 + v65;
  LODWORD(v143) = *(v140 + v65 - 0x52DC16278CC38060) ^ v143;
  STACK[0x920] = v136 + v52;
  v148 = v144 + v61;
  STACK[0x8E8] = v148;
  LODWORD(v143) = v143 ^ *(v136 + v52 - 0x4B8DEC0944082CF5);
  STACK[0x920] = v52;
  LODWORD(v148) = *(v148 - 0x26CE0F71FC42097ELL);
  LODWORD(v143) = (v143 ^ 0xC1C61E50 ^ ((((v148 ^ 0xA1258048) - (v143 ^ v148 ^ 0xBCC033AA)) ^ ((v143 ^ 0xE21A4C1D) + 1)) - ((2 * (((v148 ^ 0xA1258048) - (v143 ^ v148 ^ 0xBCC033AA)) ^ ((v143 ^ 0xE21A4C1D) + 1))) & 0xB8475B64) - 601641550)) + (v148 ^ 0xA1258048);
  v149 = v52 + 4 * (HIBYTE(v132) ^ 0xBF);
  STACK[0x920] = v149;
  v150 = v61 + 4 * (((v127 + 72 - ((2 * v127) & 0x90)) ^ v133) ^ 0xE8u);
  STACK[0x8E8] = v150;
  v151 = v65 + 4 * (BYTE1(v145) ^ 0xD5u);
  STACK[0x900] = v151;
  LODWORD(v149) = *(v149 - 0x4B8DEC0944082CF5) ^ 0xD97434F4 ^ *(v147 + 4 * (BYTE2(v143) ^ 0x20u) - 0x4347A8FF3060F6CFLL);
  v152 = v52 + 4 * (HIBYTE(v142) ^ 0x2B);
  STACK[0x920] = v152;
  LODWORD(v149) = (v149 - 997095658 - ((2 * v149) & 0x89230E2C)) ^ *(v151 - 0x52DC16278CC38060);
  v153 = v65 + 4 * (BYTE1(v143) ^ 0x37u);
  STACK[0x900] = v153;
  LODWORD(v149) = (v149 - 1591377848 - ((2 * v149) & 0x424B0090)) ^ *(v150 - 0x26CE0F71FC42097ELL);
  LODWORD(v146) = *(v146 + 4 * (BYTE2(v132) ^ 0xEEu) - 0x4347A8FF3060F6CFLL);
  LODWORD(v152) = *(v152 - 0x4B8DEC0944082CF5);
  v154 = 4 * (v145 ^ 0x37u);
  STACK[0x8E8] = v150 + v154;
  LODWORD(v146) = v152 ^ v146;
  v155 = v52 + 4 * (HIBYTE(v145) ^ 0x6A);
  STACK[0x920] = v155;
  v156 = 4 * (BYTE1(v132) ^ 0x65u);
  v157 = *(v153 - 0x52DC16278CC38060);
  STACK[0x900] = v153 + v156;
  LODWORD(v146) = ((v146 ^ 0xD97434F4) - 997095658 - 2 * ((v146 ^ 0xD97434F4) & 0x4491871E ^ v146 & 8)) ^ v157;
  v158 = v147 + 4 * (BYTE2(v145) ^ 0x9Eu);
  v159 = v147 + 4 * (BYTE2(v142) ^ 0x2Cu);
  STACK[0x8E8] = v154 + v61;
  LODWORD(v147) = (v146 - 1591377848 - ((2 * v146) & 0x424B0090)) ^ *(v154 + v61 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v61;
  STACK[0x900] = v156 + v65;
  LODWORD(v155) = *(v155 - 0x4B8DEC0944082CF5) ^ 0xD97434F4 ^ *(v159 - 0x4347A8FF3060F6CFLL);
  LODWORD(v158) = *(v158 - 0x4347A8FF3060F6CFLL);
  LODWORD(v146) = *(v156 + v65 - 0x52DC16278CC38060);
  v160 = v52 + 4 * (BYTE3(v143) ^ 0xE);
  STACK[0x920] = v160;
  v161 = v61 + 4 * (v143 ^ 0x7Bu);
  STACK[0x8E8] = v161;
  LODWORD(v161) = *(v161 - 0x26CE0F71FC42097ELL);
  STACK[0x900] = v65;
  LODWORD(v161) = v161 ^ v146 ^ (v155 - 997095658 - ((2 * v155) & 0x89230E2C));
  LODWORD(v158) = (*(v160 - 0x4B8DEC0944082CF5) ^ v158 ^ 0xD97434F4) - 997095658 - 2 * ((*(v160 - 0x4B8DEC0944082CF5) ^ v158 ^ 0xD97434F4) & 0x4491871F ^ (*(v160 - 0x4B8DEC0944082CF5) ^ v158) & 9);
  STACK[0x920] = v52;
  v162 = v65 + 4 * (BYTE1(v142) ^ 0x3Du);
  STACK[0x900] = v162;
  v163 = v61 + 4 * (v132 ^ 0x5Bu);
  STACK[0x8E8] = v163;
  LODWORD(v162) = (v158 ^ *(v162 - 0x52DC16278CC38060)) - 1591377848 - ((2 * (v158 ^ *(v162 - 0x52DC16278CC38060))) & 0x424B0090);
  STACK[0x900] = v65;
  LODWORD(v162) = v162 ^ *(v163 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v61;
  v164 = STACK[0x8E0];
  v165 = STACK[0x8E0];
  LODWORD(v163) = *(STACK[0x8E0] + 4 * (BYTE2(v162) ^ 0xBEu) - 0x4347A8FF3060F6CFLL);
  v166 = v52 + 4 * (BYTE3(v149) ^ 0xC5);
  STACK[0x920] = v166;
  v167 = v65 + 4 * (BYTE1(v161) ^ 0x68u);
  STACK[0x900] = v167;
  LODWORD(v163) = *(v166 - 0x4B8DEC0944082CF5) ^ v163;
  v168 = 4 * (BYTE3(v147) ^ 0x94);
  STACK[0x920] = v166 + v168;
  v169 = v61 + 4 * (v147 ^ 0xB3u);
  STACK[0x8E8] = v169;
  LODWORD(v167) = *(v167 - 0x52DC16278CC38060);
  v170 = 4 * (v161 ^ 0x97u);
  v171 = *(v169 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v169 + v170;
  LODWORD(v163) = ((v163 ^ 0xD97434F4) - 997095658 - 2 * ((v163 ^ 0xD97434F4) & 0x4491871E ^ v163 & 8)) ^ v167;
  STACK[0x920] = v168 + v52;
  LODWORD(v167) = *(v164 + 4 * (BYTE2(v149) ^ 0x3Fu) - 0x4347A8FF3060F6CFLL);
  v172 = (v163 - 1591377848 - ((2 * v163) & 0x424B0090)) ^ v171;
  LODWORD(v163) = *(v168 + v52 - 0x4B8DEC0944082CF5) ^ v167 ^ 0xD97434F4;
  STACK[0x920] = v52;
  v173 = v65 + 4 * (BYTE1(v162) ^ 0xE2u);
  STACK[0x900] = v173;
  v174 = v170 + v61;
  STACK[0x8E8] = v170 + v61;
  v175 = 4 * (BYTE1(v149) ^ 0x78u);
  LODWORD(v170) = *(v173 - 0x52DC16278CC38060);
  STACK[0x900] = v173 + v175;
  LODWORD(v163) = v170 ^ (v163 - 997095658 - ((2 * v163) & 0x89230E2C));
  v176 = v52 + 4 * (BYTE3(v161) ^ 0xE0);
  STACK[0x920] = v176;
  LODWORD(v176) = *(v176 - 0x4B8DEC0944082CF5);
  v177 = v175 + v65;
  STACK[0x900] = v177;
  v178 = *(v174 - 0x26CE0F71FC42097ELL) ^ (v163 - 1591377848 - ((2 * v163) & 0x424B0090));
  LODWORD(v176) = *(v165 + 4 * (BYTE2(v147) ^ 0xC2u) - 0x4347A8FF3060F6CFLL) ^ v176;
  LODWORD(v176) = ((v176 ^ 0xD97434F4) - 997095658 - 2 * ((v176 ^ 0xD97434F4) & 0x4491871F ^ v176 & 9)) ^ *(v177 - 0x52DC16278CC38060);
  v179 = v165 + 4 * (BYTE2(v161) ^ 0x97u);
  LODWORD(v165) = v176 - 1591377848 - ((2 * v176) & 0x424B0090);
  LODWORD(v176) = BYTE3(v162) ^ 0x64;
  v180 = v61 + 4 * (v162 ^ 0x4Cu);
  STACK[0x8E8] = v180;
  v181 = v52 + 4 * v176;
  STACK[0x920] = v181;
  v182 = v165 ^ *(v180 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v61;
  STACK[0x900] = v65;
  LODWORD(v179) = *(v181 - 0x4B8DEC0944082CF5) ^ *(v179 - 0x4347A8FF3060F6CFLL);
  v183 = v65 + 4 * (BYTE1(v147) ^ 0x58u);
  STACK[0x900] = v183;
  v184 = v61 + 4 * (v149 ^ 0x82u);
  STACK[0x8E8] = v184;
  LODWORD(v184) = *(v184 - 0x26CE0F71FC42097ELL);
  STACK[0x920] = v52;
  LODWORD(v183) = ((v179 ^ 0xD97434F4) - 997095658 - 2 * ((v179 ^ 0xD97434F4) & 0x4491871F ^ v179 & 9)) ^ *(v183 - 0x52DC16278CC38060);
  v185 = (v183 - 1591377848 - ((2 * v183) & 0x424B0090)) ^ v184;
  v186 = (v178 ^ 0x51FD2031) - ((2 * (v178 ^ 0x51FD2031) + 346) & 0x52756228) - 1455770943;
  if ((v178 ^ 0x51FD2031) < 0xA5734A53)
  {
    v186 = v178 ^ 0x25;
  }

  v187 = v186 ^ 0x14;
  if ((v178 ^ 0x51FD2031) >= 0xA5734A53)
  {
    v188 = -1519170989;
  }

  else
  {
    v188 = 0;
  }

  v189 = ((2 * (v187 + v188)) & 0x17A) + ((v187 + v188) ^ 0x7B4BBABD);
  STACK[0x8E8] = v61;
  STACK[0x900] = v65;
  v190 = v52 + 4 * ((HIBYTE(v172) ^ 0x79FFFEC5) - 2046820352 + ((v172 >> 23) & 0x1DA ^ 0x50) + 275);
  STACK[0x440] = v190;
  STACK[0x920] = v190;
  v191 = v65 + 4 * ((BYTE1(v182) ^ 0xEEA6E6C3) + 291051917 + ((v182 >> 7) & 0xE6 ^ 0x60));
  STACK[0x458] = v191;
  LODWORD(v190) = *(v190 - 0x4B8DEC0944082CF5);
  STACK[0x900] = v191;
  v192 = 4 * ((BYTE1(v185) ^ 0x2EDFBCB3) - 786414777 + ((v185 >> 7) & 0x172 ^ 0x10));
  v193 = *(v191 - 0x52DC16278CC38060);
  STACK[0x900] = v191 + v192;
  v194 = 4 * (BYTE2(v185) ^ 0xCu);
  STACK[0x448] = v194;
  v195 = STACK[0x8E0];
  v196 = STACK[0x8E0];
  LODWORD(v190) = *(STACK[0x8E0] + v194 - 0x4347A8FF3060F6CFLL) ^ v190;
  LODWORD(STACK[0x3D4]) = 1150387999;
  LODWORD(v190) = ((v190 ^ 0xD97434F4) - 997095658 - 2 * ((v190 ^ 0xD97434F4) & 0x4491871F ^ v190 & 9)) ^ v193;
  v197 = v61 + 4 * (v189 - 2068560573);
  STACK[0x420] = v197;
  STACK[0x8E8] = v197;
  v198 = 4 * (BYTE2(v172) ^ 0xC2u);
  STACK[0x450] = v198;
  LODWORD(v198) = *(v195 + v198 - 0x4347A8FF3060F6CFLL);
  STACK[0x920] = v52;
  LODWORD(v190) = (v190 - 1591377848 - ((2 * v190) & 0x424B0090)) ^ *(v197 - 0x26CE0F71FC42097ELL);
  v199 = v52 + 4 * ((HIBYTE(v178) ^ 0xF777FF27) + 143130762 + ((v178 >> 23) & 0xEC ^ 0xA0));
  STACK[0x920] = v199;
  LODWORD(v198) = *(v199 - 0x4B8DEC0944082CF5) ^ v198;
  v200 = v65 + v192;
  STACK[0x438] = v65 + v192;
  STACK[0x900] = v65 + v192;
  v201 = 4 * ((v182 ^ 0xF976BD13) + ((2 * (v182 & 0x7F)) ^ 0xD8) + 109658753);
  STACK[0x418] = v201;
  v202 = v61 + v201;
  STACK[0x8E8] = v202;
  v203 = v202;
  STACK[0x430] = v202;
  LODWORD(v202) = ((v198 ^ 0xD97434F4) - 997095658 - 2 * ((v198 ^ 0xD97434F4) & 0x4491871F ^ v198 & 9)) ^ *(v200 - 0x52DC16278CC38060);
  STACK[0x900] = v65;
  STACK[0x920] = v52;
  LODWORD(v202) = (v202 - 1591377848 - ((2 * v202) & 0x424B0090)) ^ *(v203 - 0x26CE0F71FC42097ELL);
  v204 = v65 + 4 * ((BYTE1(v172) ^ 0xEFDF1ED3) + 270590212 + ((v172 >> 7) & 0x1F8 ^ 0x58));
  STACK[0x900] = v204;
  STACK[0x3F8] = v204;
  STACK[0x8E8] = v61;
  v205 = 4 * ((HIBYTE(v182) ^ 0x3FFB7FCA) - 1073446687 + ((v182 >> 23) & 0x3E ^ 0x2A));
  STACK[0x3E0] = v205;
  v206 = v52 + v205;
  STACK[0x920] = v52 + v205;
  v207 = 4 * ((HIBYTE(v185) ^ 0xF8FF734E) + 117476501 + ((v185 >> 23) & 0xD6 ^ 0x42));
  v208 = *(v52 + v205 - 0x4B8DEC0944082CF5);
  STACK[0x920] = v52 + v205 + v207;
  v209 = 4 * (BYTE2(v178) ^ 0xFDu);
  STACK[0x408] = v209;
  LODWORD(v195) = v208 ^ *(v195 + v209 - 0x4347A8FF3060F6CFLL);
  v210 = v61 + 4 * ((v185 ^ 0xD6EBFCAD) + 689177538 + ((2 * v185) & 0x7C ^ 0x24));
  STACK[0x3F0] = v210;
  STACK[0x8E8] = v210;
  v211 = ((v195 ^ 0xD97434F4) - 997095658 - 2 * ((v195 ^ 0xD97434F4) & 0x4491871E ^ v195 & 8)) ^ *(v65 + 4 * ((BYTE1(v172) ^ 0xEFDF1ED3) + 270590212 + ((v172 >> 7) & 0x1F8 ^ 0x58)) - 0x52DC16278CC38060);
  v212 = (v211 - 1591377847 + ~((2 * v211) & 0x424B0090)) ^ *(v210 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v61;
  v213 = v65 + 4 * ((BYTE1(v178) ^ 0x7BFDB75F) - 2080225151 + ((v178 >> 7) & 0xFE ^ 0x40));
  STACK[0x400] = v213;
  STACK[0x900] = v213;
  v214 = 4 * (BYTE2(v182) ^ 0x70u);
  STACK[0x3E8] = v214;
  LODWORD(v214) = *(v213 - 0x52DC16278CC38060) ^ *(v196 + v214 - 0x4347A8FF3060F6CFLL);
  v215 = v52 + v207;
  STACK[0x920] = v52 + v207;
  LODWORD(v214) = ((v214 ^ 0x82384985) - 1612842393 - 2 * ((v214 ^ 0x82384985) & 0x1FDDFA77 ^ v214 & 0x10)) ^ *(v52 + v207 - 0x4B8DEC0944082CF5);
  LODWORD(v213) = v190 - ((2 * v190) & 0x5AE88260) - 1384890064 - ((2 * (v190 - ((2 * v190) & 0x5AE88260) - 1384890064)) & 0x6C81BEB6);
  STACK[0x920] = v52;
  v216 = v61 + 4 * ((v172 ^ 0xBBFDBFE6) + 1140998157 + ((2 * v172) & 0x1E6 ^ 0x22));
  STACK[0x3D8] = v216;
  STACK[0x8E8] = v216;
  STACK[0x900] = v65;
  LODWORD(v216) = (v214 - 1591377848 - ((2 * v214) & 0x424B0090)) ^ *(v216 - 0x26CE0F71FC42097ELL);
  v217 = v213 - 1237262501;
  v218 = v52 + 4 * (((v213 - 1237262501) >> 24) ^ 0xB6);
  STACK[0x920] = v218;
  STACK[0x8E8] = v61;
  LODWORD(v218) = *(v196 + 4 * (BYTE2(v216) ^ 0x7Cu) - 0x4347A8FF3060F6CFLL) ^ *(v218 - 0x4B8DEC0944082CF5);
  STACK[0x920] = v52;
  v219 = v61 + 4 * (v202 ^ 0x24u);
  STACK[0x8E8] = v219;
  v220 = v65 + 4 * (BYTE1(v212) ^ 0x90u);
  v221 = *(v219 - 0x26CE0F71FC42097ELL);
  STACK[0x900] = v220;
  v222 = v52 + 4 * (BYTE3(v202) ^ 0x79);
  STACK[0x920] = v222;
  LODWORD(v220) = *(v220 - 0x52DC16278CC38060);
  v223 = 4 * (v212 ^ 0x5Du);
  STACK[0x8E8] = v219 + v223;
  LODWORD(v219) = v220 ^ ((v218 ^ 0xD97434F4) - 997095658 - 2 * ((v218 ^ 0xD97434F4) & 0x4491871E ^ v218 & 8));
  v224 = STACK[0x8E0];
  v225 = STACK[0x8E0];
  LODWORD(v220) = *(STACK[0x8E0] + 4 * (BYTE2(v217) ^ 0x40u) - 0x4347A8FF3060F6CFLL);
  v226 = v65 + 4 * (BYTE1(v216) ^ 0xBAu);
  STACK[0x900] = v226;
  LODWORD(v226) = (*(v226 - 0x52DC16278CC38060) ^ v220 ^ 0x82384985) - 1612842393 - 2 * ((*(v226 - 0x52DC16278CC38060) ^ v220 ^ 0x82384985) & 0x1FDDFA77 ^ (*(v226 - 0x52DC16278CC38060) ^ v220) & 0x10);
  STACK[0x8E8] = v223 + v61;
  v227 = (v219 - 1591377848 - ((2 * v219) & 0x424B0090)) ^ v221;
  v228 = ((v226 ^ *(v222 - 0x4B8DEC0944082CF5)) - 1591377848 - ((2 * (v226 ^ *(v222 - 0x4B8DEC0944082CF5))) & 0x424B0090)) ^ *(v223 + v61 - 0x26CE0F71FC42097ELL);
  v229 = v61 + 4 * ~v216;
  STACK[0x8E8] = v229;
  v230 = *(v224 + 4 * (BYTE2(v202) ^ 0x3Fu) - 0x4347A8FF3060F6CFLL);
  v231 = v52 + 4 * (HIBYTE(v212) ^ 0x84);
  STACK[0x920] = v231;
  v232 = v65 + 4 * (BYTE1(v217) ^ 0xDFu);
  STACK[0x900] = v232;
  v233 = *(v231 - 0x4B8DEC0944082CF5) ^ v230;
  LODWORD(v232) = *(v232 - 0x52DC16278CC38060);
  v234 = 4 * (BYTE3(v216) ^ 0xF0);
  STACK[0x920] = v231 + v234;
  v235 = STACK[0x3D4];
  v236 = ((v233 ^ 0xD97434F4) - 997095658 - 2 * ((v233 ^ 0xD97434F4) & STACK[0x3D4] ^ v233 & 9)) ^ v232;
  STACK[0x900] = v65;
  LODWORD(v229) = *(v229 - 0x26CE0F71FC42097ELL);
  v237 = v65 + 4 * (BYTE1(v202) ^ 0xFu);
  STACK[0x900] = v237;
  v72 = (v236 & 0x8000 & ~v229) == 0;
  v238 = (v236 & 0x8000) + (v229 ^ 0xA1258048);
  v239 = *(v237 - 0x52DC16278CC38060);
  if (v72)
  {
    v240 = 0;
  }

  else
  {
    v240 = -2 * (v236 & 0x8000);
  }

  v241 = v234 + v52;
  STACK[0x920] = v241;
  v242 = *(v241 - 0x4B8DEC0944082CF5) ^ *(v225 + 4 * (BYTE2(v212) ^ 0x8Du) - 0x4347A8FF3060F6CFLL);
  LODWORD(v241) = (v238 + v240) ^ v236 & 0xFFFF7FFF;
  v243 = STACK[0x4D0];
  v244 = ((v242 ^ 0xD97434F4) - 997095658 - 2 * ((v242 ^ 0xD97434F4) & STACK[0x4D0] ^ v242 & 1)) ^ v239;
  STACK[0x920] = v52;
  STACK[0x900] = v65;
  v245 = v61 + 4 * (v217 ^ 0x5Bu);
  STACK[0x8E8] = v245;
  v246 = (v244 - 1591377848 - ((2 * v244) & 0x424B0090)) ^ *(v245 - 0x26CE0F71FC42097ELL);
  v247 = v61 + 4 * (v228 ^ 0x14u);
  STACK[0x8E8] = v247;
  v248 = v52 + 4 * (HIBYTE(v227) ^ 0x59);
  STACK[0x920] = v248;
  LODWORD(v248) = *(v225 + 4 * (BYTE2(v246) ^ 0xF1u) - 0x4347A8FF3060F6CFLL) ^ *(v248 - 0x4B8DEC0944082CF5);
  v249 = v65 + 4 * (BYTE1(v241) ^ 0x9Fu);
  STACK[0x900] = v249;
  LODWORD(v248) = ((v248 ^ 0xD97434F4) - 997095658 - 2 * ((v248 ^ 0xD97434F4) & v235 ^ v248 & 9)) ^ *(v249 - 0x52DC16278CC38060);
  LODWORD(STACK[0x468]) = v248 - 1591377848 - ((2 * v248) & 0x424B0090);
  LODWORD(STACK[0x460]) = *(v247 - 0x26CE0F71FC42097ELL);
  STACK[0x900] = v65;
  v250 = *(v225 + 4 * (BYTE2(v227) ^ 0x95u) - 0x4347A8FF3060F6CFLL);
  STACK[0x8E8] = v61;
  v251 = v52 + 4 * (HIBYTE(v228) ^ 0xD4);
  STACK[0x920] = v251;
  v252 = v243;
  v253 = (*(v251 - 0x4B8DEC0944082CF5) ^ v250 ^ 0xD97434F4) - 997095658 - 2 * ((*(v251 - 0x4B8DEC0944082CF5) ^ v250 ^ 0xD97434F4) & v243 ^ (*(v251 - 0x4B8DEC0944082CF5) ^ v250) & 1);
  STACK[0x920] = v52;
  v254 = v61 + 4 * (v241 ^ 0x79u);
  STACK[0x8E8] = v254;
  v255 = v65 + 4 * (BYTE1(v246) ^ 0x2Au);
  STACK[0x900] = v255;
  LODWORD(STACK[0x42C]) = (v253 ^ *(v255 - 0x52DC16278CC38060)) - 1591377847 + ~((2 * (v253 ^ *(v255 - 0x52DC16278CC38060))) & 0x424B0090);
  LODWORD(STACK[0x428]) = *(v254 - 0x26CE0F71FC42097ELL);
  v256 = v52 + 4 * (BYTE3(v241) ^ 0xFD);
  STACK[0x920] = v256;
  LODWORD(v254) = *(v256 - 0x4B8DEC0944082CF5);
  v257 = STACK[0x8E0];
  v258 = STACK[0x8E0];
  LODWORD(v254) = *(STACK[0x8E0] + 4 * (BYTE2(v228) ^ 0x4Bu) - 0x4347A8FF3060F6CFLL) ^ v254;
  HIDWORD(v259) = v254 ^ 0x197434F4;
  LODWORD(v259) = v254 ^ 0xC0000000;
  HIDWORD(v259) = (v259 >> 29) ^ 0xE4072F03;
  LODWORD(v259) = HIDWORD(v259);
  v260 = v65 + 4 * (BYTE1(v227) ^ 0xFEu);
  STACK[0x900] = v260;
  LODWORD(v254) = ((v259 >> 3) - 997095658 - ((2 * (v259 >> 3)) & 0x89230E2C)) ^ *(v260 - 0x52DC16278CC38060);
  LODWORD(v260) = HIBYTE(v246) ^ 0x74;
  v261 = v61 + 4 * (v246 ^ 0xA2u);
  STACK[0x8E8] = v261;
  STACK[0x900] = v65;
  v262 = v52 + 4 * v260;
  STACK[0x920] = v262;
  LODWORD(STACK[0x414]) = *(v261 - 0x26CE0F71FC42097ELL);
  LODWORD(v241) = *(v262 - 0x4B8DEC0944082CF5) ^ 0xD97434F4 ^ *(v257 + 4 * (BYTE2(v241) ^ 0xB2u) - 0x4347A8FF3060F6CFLL);
  STACK[0x8E8] = v61;
  v263 = STACK[0x440];
  STACK[0x920] = STACK[0x440];
  v264 = *(v263 - 0x4B8DEC0944082CF5);
  v265 = v61 + 4 * (v227 ^ 0xC5u);
  STACK[0x8E8] = v265;
  STACK[0x920] = v52;
  v266 = v65 + 4 * (BYTE1(v228) ^ 0x4Eu);
  STACK[0x900] = v266;
  LODWORD(v241) = *(v266 - 0x52DC16278CC38060) ^ (v241 - 997095658 - ((2 * v241) & 0x89230E2C));
  v267 = v257 + STACK[0x448];
  STACK[0x900] = v65;
  v268 = v241 ^ *(v265 - 0x26CE0F71FC42097ELL);
  LODWORD(v241) = *(v267 - 0x4347A8FF3060F6CFLL);
  v269 = STACK[0x420];
  STACK[0x8E8] = STACK[0x420];
  LODWORD(v267) = *(v269 - 0x26CE0F71FC42097ELL);
  v270 = v269;
  LODWORD(v241) = v241 ^ v264;
  v271 = STACK[0x458];
  STACK[0x900] = STACK[0x458];
  STACK[0x920] = v199;
  v272 = *(v271 - 0x52DC16278CC38060);
  v273 = *(v199 - 0x4B8DEC0944082CF5);
  STACK[0x920] = v199 + STACK[0x3E0];
  STACK[0x8E8] = v270 + STACK[0x418];
  LODWORD(v241) = ((v241 ^ 0xD97434F4) - 997095658 - 2 * ((v241 ^ 0xD97434F4) & v235 ^ v241 & 9)) ^ v272;
  LODWORD(STACK[0x458]) = v254 - 1591377848 - ((2 * v254) & 0x424B0090);
  v274 = (v241 - 1591377848 - ((2 * v241) & 0x424B0090)) ^ v267;
  LODWORD(v241) = *(v258 + STACK[0x450] - 0x4347A8FF3060F6CFLL) ^ v273;
  v275 = STACK[0x438];
  STACK[0x900] = STACK[0x438];
  LODWORD(v241) = ((v241 ^ 0xD97434F4) - 997095658 - 2 * ((v241 ^ 0xD97434F4) & v252 ^ v241 & 1)) ^ *(v275 - 0x52DC16278CC38060);
  STACK[0x920] = v206;
  v276 = STACK[0x430];
  STACK[0x8E8] = STACK[0x430];
  LODWORD(v254) = (v241 - 1591377848 - ((2 * v241) & 0x424B0090)) ^ *(v276 - 0x26CE0F71FC42097ELL);
  LODWORD(v241) = *(v258 + STACK[0x408] - 0x4347A8FF3060F6CFLL) ^ *(v206 - 0x4B8DEC0944082CF5);
  STACK[0x8E8] = v61;
  STACK[0x920] = v215;
  LODWORD(v276) = *(v215 - 0x4B8DEC0944082CF5);
  v277 = STACK[0x3F8];
  STACK[0x900] = STACK[0x3F8];
  LODWORD(v241) = ((v241 ^ 0xD97434F4) - 997095658 - 2 * ((v241 ^ 0xD97434F4) & 0x4491871E ^ v241 & 8)) ^ *(v277 - 0x52DC16278CC38060);
  v278 = STACK[0x3F0];
  STACK[0x8E8] = STACK[0x3F0];
  STACK[0x900] = v65;
  LODWORD(v278) = (v241 - 1591377848 - ((2 * v241) & 0x424B0090)) ^ *(v278 - 0x26CE0F71FC42097ELL);
  LODWORD(v241) = *(v258 + STACK[0x3E8] - 0x4347A8FF3060F6CFLL) ^ v276;
  STACK[0x920] = v52;
  v279 = STACK[0x400];
  STACK[0x900] = STACK[0x400];
  v280 = STACK[0x3D8];
  STACK[0x8E8] = STACK[0x3D8];
  LODWORD(v241) = ((v241 ^ 0xD97434F4) - 997095658 - 2 * ((v241 ^ 0xD97434F4) & v235 ^ v241 & 9)) ^ *(v279 - 0x52DC16278CC38060);
  LODWORD(v241) = (v241 - 1591377848 - ((2 * v241) & 0x424B0090)) ^ *(v280 - 0x26CE0F71FC42097ELL);
  LODWORD(v241) = v241 - ((2 * v241) & 0x944FCA86) - 903355069;
  v281 = v65 + 4 * (BYTE1(v278) ^ 0x90u);
  STACK[0x900] = v281;
  STACK[0x8E8] = v61;
  v282 = v52 + 4 * (HIBYTE(v274) ^ 0xAD);
  STACK[0x920] = v282;
  v283 = STACK[0x8E0];
  v284 = STACK[0x8E0];
  LODWORD(v282) = *(v282 - 0x4B8DEC0944082CF5) ^ 0xD97434F4 ^ *(STACK[0x8E0] + 4 * (BYTE2(v241) ^ 0x5Bu) - 0x4347A8FF3060F6CFLL);
  STACK[0x920] = v52;
  LODWORD(v281) = v282 + (*(v281 - 0x52DC16278CC38060) ^ 0xC4918716) - 2 * (v282 & (*(v281 - 0x52DC16278CC38060) ^ 0x44918716));
  v285 = v61 + 4 * (v254 ^ 0x24u);
  STACK[0x8E8] = v285;
  LODWORD(v281) = (v281 - 1591377848 - ((2 * v281) & 0x424B0090)) ^ *(v285 - 0x26CE0F71FC42097ELL);
  v286 = v52 + 4 * (BYTE3(v254) ^ 0x79);
  STACK[0x920] = v286;
  STACK[0x8E8] = v61;
  LODWORD(v286) = *(v286 - 0x4B8DEC0944082CF5);
  v287 = *(v283 + 4 * (BYTE2(v274) ^ 0x74u) - 0x4347A8FF3060F6CFLL);
  v288 = v52 + 4 * (BYTE3(v278) ^ 0x84);
  STACK[0x920] = v288;
  v289 = v65 + 4 * (BYTE1(v241) ^ 0x5Fu);
  STACK[0x900] = v289;
  v290 = 4 * (BYTE1(v274) ^ 0x41u);
  v291 = *(v289 - 0x52DC16278CC38060);
  STACK[0x900] = v289 + v290;
  LODWORD(v286) = ((v287 ^ v286 ^ 0xD97434F4) - 997095658 - 2 * ((v287 ^ v286 ^ 0xD97434F4) & v252 ^ (v287 ^ v286) & 1)) ^ v291;
  v292 = v61 + 4 * (v278 ^ 0x5Du);
  STACK[0x8E8] = v292;
  LODWORD(v286) = (v286 - 1591377848 - ((2 * v286) & 0x424B0090)) ^ *(v292 - 0x26CE0F71FC42097ELL);
  LODWORD(v283) = *(v288 - 0x4B8DEC0944082CF5) ^ *(v283 + 4 * (BYTE2(v254) ^ 0x3Fu) - 0x4347A8FF3060F6CFLL) ^ 0xD97434F4;
  STACK[0x920] = v52;
  STACK[0x900] = v290 + v65;
  LODWORD(v292) = *(v290 + v65 - 0x52DC16278CC38060);
  v293 = v65 + 4 * (BYTE1(v254) ^ 0xFu);
  STACK[0x900] = v293;
  v294 = v52 + 4 * (BYTE3(v241) ^ 0x3A);
  STACK[0x920] = v294;
  v295 = v61 + 4 * (v241 ^ 0xBCu);
  STACK[0x8E8] = v295;
  LODWORD(v283) = (v283 - 997095658 - ((2 * v283) & 0x89230E2C)) ^ v292;
  LODWORD(v278) = *(v284 + 4 * (BYTE2(v278) ^ 0x8Du) - 0x4347A8FF3060F6CFLL) ^ *(v294 - 0x4B8DEC0944082CF5);
  LODWORD(v295) = (v283 - 1591377848 - ((2 * v283) & 0x424B0090)) ^ *(v295 - 0x26CE0F71FC42097ELL);
  STACK[0x920] = v52;
  v296 = v61 + 4 * (v274 ^ 0x30u);
  STACK[0x8E8] = v296;
  LODWORD(v296) = *(v296 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v61;
  LODWORD(v278) = ((v278 ^ 0xD97434F4) - 997095658 - 2 * ((v278 ^ 0xD97434F4) & 0x4491871E ^ v278 & 8)) ^ *(v293 - 0x52DC16278CC38060);
  LODWORD(v278) = (v278 - 1591377848 - ((2 * v278) & 0x424B0090)) ^ v296;
  STACK[0x900] = v65;
  LODWORD(v284) = *(v284 + 4 * (BYTE2(v278) ^ 0xF1u) - 0x4347A8FF3060F6CFLL);
  v297 = v52 + 4 * (BYTE3(v281) ^ 0x59);
  STACK[0x920] = v297;
  LODWORD(v284) = (v284 ^ *(v297 - 0x4B8DEC0944082CF5) ^ 0xD97434F4) - 997095658 - ((2 * (v284 ^ *(v297 - 0x4B8DEC0944082CF5) ^ 0xD97434F4)) & 0x89230E2C);
  STACK[0x920] = v52;
  v298 = v65 + 4 * (BYTE1(v295) ^ 0x9Fu);
  STACK[0x900] = v298;
  LODWORD(v292) = *(v298 - 0x52DC16278CC38060) ^ 0x337F7A51 ^ v284;
  v299 = STACK[0x8E0];
  v300 = STACK[0x8E0] + 4 * (BYTE2(v281) ^ 0x95u);
  v301 = STACK[0x8E0] + 4 * (BYTE2(v286) ^ 0x4Bu);
  v302 = v61 + 4 * (v286 ^ 0x14u);
  STACK[0x8E8] = v302;
  v303 = v52 + 4 * (BYTE3(v286) ^ 0xD4);
  STACK[0x920] = v303;
  STACK[0x900] = v65;
  LODWORD(v303) = *(v300 - 0x4347A8FF3060F6CFLL) ^ 0xD97434F4 ^ *(v303 - 0x4B8DEC0944082CF5);
  LODWORD(v300) = *(v302 - 0x26CE0F71FC42097ELL);
  v304 = v65 + 4 * (BYTE1(v278) ^ 0x2Au);
  STACK[0x900] = v304;
  v305 = v61 + 4 * (v295 ^ 0x79u);
  STACK[0x8E8] = v305;
  LODWORD(v305) = *(v305 - 0x26CE0F71FC42097ELL);
  STACK[0x8E8] = v61;
  LODWORD(v303) = *(v304 - 0x52DC16278CC38060) ^ (v303 - 997095658 - ((2 * v303) & 0x89230E2C));
  LODWORD(v259) = __ROR4__(v292, 9) ^ 0x2899BFBD;
  HIDWORD(v259) = v259;
  v306 = 4 * (BYTE1(v281) ^ 0xFEu);
  STACK[0x900] = v304 + v306;
  LODWORD(v301) = *(v301 - 0x4347A8FF3060F6CFLL);
  v307 = v52 + 4 * (BYTE3(v295) ^ 0xFD);
  STACK[0x920] = v307;
  LODWORD(v301) = (*(v307 - 0x4B8DEC0944082CF5) ^ v301 ^ 0xD97434F4) - 997095658 - 2 * ((*(v307 - 0x4B8DEC0944082CF5) ^ v301 ^ 0xD97434F4) & v235 ^ (*(v307 - 0x4B8DEC0944082CF5) ^ v301) & 9);
  STACK[0x900] = v306 + v65;
  STACK[0x920] = v52;
  LODWORD(v301) = v301 ^ *(v306 + v65 - 0x52DC16278CC38060);
  LODWORD(v307) = BYTE3(v278) ^ 0x74;
  v308 = v61 + 4 * (v278 ^ 0xA2u);
  STACK[0x8E8] = v308;
  STACK[0x900] = v65;
  LODWORD(v308) = *(v308 - 0x26CE0F71FC42097ELL);
  v309 = v52 + 4 * v307;
  STACK[0x920] = v309;
  STACK[0x8E8] = v61;
  LODWORD(v309) = *(v309 - 0x4B8DEC0944082CF5);
  STACK[0x920] = v52;
  LODWORD(v295) = *(v299 + 4 * (BYTE2(v295) ^ 0xB2u) - 0x4347A8FF3060F6CFLL) ^ v309;
  v310 = v65 + 4 * (BYTE1(v286) ^ 0x4Eu);
  STACK[0x900] = v310;
  LODWORD(v295) = ((v295 ^ 0xD97434F4) - 997095658 - 2 * ((v295 ^ 0xD97434F4) & 0x4491871E ^ v295 & 8)) ^ *(v310 - 0x52DC16278CC38060);
  LODWORD(v310) = v301 - 1591377848 - ((2 * v301) & 0x424B0090);
  LODWORD(v299) = LODWORD(STACK[0x428]) ^ 0x8DDEB0D1 ^ LODWORD(STACK[0x42C]);
  LODWORD(v305) = v305 ^ 0x8DDEB0D1 ^ (v303 - 1591377848 - ((2 * v303) & 0x424B0090));
  LODWORD(v301) = LODWORD(STACK[0x460]) ^ 0x5647EA9F ^ LODWORD(STACK[0x468]);
  LODWORD(v300) = v300 ^ 0x5647EA9F ^ ((v259 >> 23) - 1591377848 - ((2 * (v259 >> 23)) & 0x424B0090));
  LODWORD(v292) = LODWORD(STACK[0x414]) ^ 0x5579348D ^ LODWORD(STACK[0x458]);
  LODWORD(v310) = v308 ^ 0x29F9D16D ^ v310;
  v311 = v61 + 4 * (v281 ^ 0xC5u);
  STACK[0x8E8] = v311;
  LODWORD(v295) = *(v311 - 0x26CE0F71FC42097ELL) ^ 0x8943B5DB ^ (v295 - 1591377848 - ((2 * v295) & 0x424B0090));
  LODWORD(v308) = 1349735155 * ((v299 - v305 - 653642218) ^ 0xAD3F3350);
  LODWORD(v299) = v308 ^ (296164389 * ((v301 - v300 + 996421259) ^ 0x41D3838));
  LODWORD(v292) = -298334753 * ((v292 - v310 + 1662531843) ^ 0xC0544715);
  LODWORD(v308) = ((v308 - v292) ^ 0xF68B8C6D) + 158626707 + ((2 * (v308 - v292)) & 0xED1718DA);
  LODWORD(v311) = -1797169107 * (((v268 ^ 0xA1258048) + (((v268 ^ 0xA1258048) - (v268 ^ 0x28663593)) ^ 0xFFFFFFFE) - v295 + 2082562276) ^ 0x17B6DE5);
  LODWORD(v292) = v311 ^ v292;
  LODWORD(v311) = (v311 ^ v299) + v308;
  LODWORD(v299) = v292 + v299;
  LODWORD(v292) = v299 ^ v292;
  LODWORD(v299) = v299 + v308;
  LODWORD(v311) = v311 + v299;
  LODWORD(v300) = v300 - v299 - ((2 * (v300 - v299) + 1032033784) & 0x4A948904);
  LODWORD(v299) = v311 + v292;
  LODWORD(v308) = v295 + v308 - v299 - ((2 * (v295 + v308 - v299) - 1636013474) & 0xFE7AD0B8);
  LODWORD(v299) = v310 - v299 - ((2 * (v310 - v299) + 1621343982) & 0x591D4EC2) + 1558218456;
  LODWORD(v295) = v305 - v311 - 2 * ((v305 - v311 + 452498628) & 0x47E0EE37 ^ (v305 - v311) & 1) - 489061638;
  v312 = STACK[0x910];
  v313 = STACK[0x8F8];
  LODWORD(v305) = *(STACK[0x8F8] + 4 * (BYTE2(v295) ^ 0xE0u)) ^ 0x78974937 ^ *(STACK[0x910] + 4 * (BYTE3(v299) ^ 0xAC) - 0x93936A1F6680CD1);
  LODWORD(v301) = v300 + 67899262;
  LODWORD(STACK[0x4D0]) = *(STACK[0x8F8] + 4 * (((v300 + 67899262) >> 16) ^ 0x4Au));
  LOWORD(v303) = v308 - 25205;
  LODWORD(v292) = *(v313 + 4 * (((v308 - 830759541) >> 16) ^ 0x3Du));
  LODWORD(v300) = *(v313 + 4 * (BYTE2(v299) ^ 0x8Eu));
  LODWORD(v305) = (v305 + 1349597443 - ((2 * v305) & 0xA0E27206)) ^ *(STACK[0x908] + 4 * (BYTE1(v301) ^ 0x44u) - 0x20401EAF3F098A6DLL);
  LODWORD(v305) = (v305 + 1649310476 - ((2 * v305) & 0xC49CF618)) ^ *(STACK[0x8D0] + 4 * ((v308 - 117) ^ 0x5Cu) - 0x3EF28014ABB6B4C9);
  v314 = v312 + 4 * (BYTE3(v301) ^ 0x25);
  v315 = v312 + 4 * (BYTE3(v295) ^ 0xC7);
  v316 = v312 + 4 * ((830759540 - v308) >> 24);
  v317 = STACK[0x8D0] + 4 * (v295 ^ 0x36u);
  v318 = STACK[0x8D0] + 4 * (v299 ^ 0x61u);
  v319 = STACK[0x8D0] + 4 * (v301 ^ 0x82u);
  v320 = STACK[0x908] + 4 * (BYTE1(v303) ^ 0x68u);
  v321 = STACK[0x908] + 4 * (BYTE1(v295) ^ 0xEEu);
  LODWORD(v295) = (v305 - 107369694 - ((2 * v305) & 0xF3335644)) ^ LODWORD(STACK[0x5E0]);
  v322 = STACK[0x4A0];
  LODWORD(v295) = (v295 + 1549498394 - ((2 * v295) & 0xB8B6F034)) ^ LODWORD(STACK[0x4A0]);
  v323 = *(v314 - 0x93936A1F6680CD1);
  LODWORD(v299) = *(STACK[0x908] + 4 * (BYTE1(v299) ^ 0xA7u) - 0x20401EAF3F098A6DLL);
  LODWORD(v249) = *(v317 - 0x3EF28014ABB6B4C9);
  LODWORD(STACK[0x460]) = *(v315 - 0x93936A1F6680CD1);
  LODWORD(STACK[0x468]) = *(v320 - 0x20401EAF3F098A6DLL);
  v324 = STACK[0x610];
  v325 = STACK[0x498];
  LODWORD(v306) = LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x610]);
  LODWORD(v317) = v306 ^ (v295 - 1259138824 - ((2 * v295) & 0x69E621F0));
  LODWORD(STACK[0x450]) = v317;
  LODWORD(STACK[0x5E0]) = v317 ^ 0xF882F205;
  LODWORD(STACK[0x458]) = *(v318 - 0x3EF28014ABB6B4C9);
  LODWORD(v305) = *(v316 - 0x93936A1F6680CD1);
  v326 = STACK[0x518];
  v327 = *(&off_1002DD400 + LODWORD(STACK[0x518]) - 7675) - 1931884998;
  STACK[0x448] = v327;
  LODWORD(v318) = *(v321 - 0x20401EAF3F098A6DLL);
  LODWORD(v315) = *(v319 - 0x3EF28014ABB6B4C9);
  v328 = *STACK[0x480];
  *(v328 + STACK[0x470] - 0x13ECD35942048670) = *(v327 + (((((v317 ^ 0xF882F205) & 0xE6) + (v317 ^ 0xF882F2E2)) >> 24) ^ 0x1BLL)) ^ ((((((v317 ^ 0xF882F205) & 0xE6) + (v317 ^ 0xF882F2E2)) >> 24) ^ 0x74) - ((2 * (((((v317 ^ 0xF882F205) & 0xE6) + (v317 ^ 0xF882F2E2)) >> 24) ^ 0x74)) & 0x2C) - 74) ^ 0x8E;
  LODWORD(v310) = ((v292 ^ v323 ^ 0x78974937) + 1349597443 - 2 * ((v292 ^ v323 ^ 0x78974937) & 0x5071390B ^ (v292 ^ v323) & 8)) ^ v299;
  LODWORD(v310) = (v310 + 1649310476 - ((2 * v310) & 0xC49CF618)) ^ v249;
  LODWORD(v259) = __ROR4__(LODWORD(STACK[0x3A8]) ^ (v310 + 1549498394 - ((2 * v310) & 0xB8B6F034)), 25) ^ 0x3F42F6BB;
  HIDWORD(v259) = v259;
  LODWORD(v310) = ((v259 >> 7) - 1259138824 - ((2 * (v259 >> 7)) & 0x69E621F0)) ^ v325;
  LODWORD(v299) = (((v310 - 863319888 - ((2 * v310) & 0x99159160)) ^ v324) & 0x93F78299 | ((v310 + 1284163760 - ((2 * v310) & 0x19159160)) ^ v324) & 0x6C087D66) ^ LODWORD(STACK[0x52C]);
  v329 = ((v310 - 80 - ((2 * v310) & 0x60)) ^ v324 ^ LOBYTE(STACK[0x52C])) ^ 0xFDLL;
  v330 = *(&off_1002DD400 + v326 - 7701) - 1920506018;
  *(v328 + STACK[0x520] - 0x13ECD35942048670) = v330[v329] ^ 0x71 ^ (((8 * v330[v329]) & 0xC0) - 126);
  LODWORD(v300) = ((v300 ^ 0x78974937 ^ v305) + 1349597443 - ((2 * (v300 ^ 0x78974937 ^ v305)) & 0xA0E27206)) ^ v318;
  LODWORD(v300) = (v300 + 1649310476 - ((2 * v300) & 0xC49CF618)) ^ v315;
  LODWORD(v300) = (v300 + 1432156549 - ((2 * v300) & 0xAAB9F30A)) ^ LODWORD(STACK[0x5D8]);
  LODWORD(v300) = (v300 + 1549498394 - ((2 * v300) & 0xB8B6F034)) ^ v322;
  LODWORD(v300) = (v300 - 1259138824 - ((2 * v300) & 0x69E621F0)) ^ v325;
  LODWORD(v300) = (v300 - 863319888 - ((2 * v300) & 0x99159160)) ^ v324;
  LODWORD(v300) = v300 - 511992462 - ((2 * v300) & 0xC2F73AE4) + 983586892 - 2 * ((v300 - 511992462 - ((2 * v300) & 0xC2F73AE4)) & 0x3AA0584E ^ (v300 - 511992462) & 2);
  v331 = *(&off_1002DD400 + (v326 ^ 0x1E2C)) - 623923847;
  *(v328 + STACK[0x478] - 0x13ECD35942048670) = v331[BYTE1(v300) ^ 0x70] ^ ((BYTE1(v300) ^ 0x58) + (~(2 * (BYTE1(v300) ^ 0x58)) | 0xE3) + 15) ^ 0x95;
  LODWORD(v317) = STACK[0x450];
  LOBYTE(v315) = v330[LODWORD(STACK[0x450]) ^ 0xFCLL];
  *(v328 + STACK[0x5C8] - 0x13ECD35942048670) = v315 ^ (((8 * v315) & 0xC0) - 126) ^ 0x87;
  v332 = STACK[0x448];
  *(v328 + STACK[0x488] - 0x13ECD35942048670) = *(STACK[0x448] + (BYTE3(v300) ^ 0x32)) ^ ((BYTE3(v300) ^ 0x5D) - ((2 * (BYTE3(v300) ^ 0x5D)) & 0x2C) - 74) ^ 0x61;
  LODWORD(v292) = ((LODWORD(STACK[0x4D0]) ^ 0x78974937 ^ LODWORD(STACK[0x460])) + 1349597443 - ((2 * (LODWORD(STACK[0x4D0]) ^ 0x78974937 ^ LODWORD(STACK[0x460]))) & 0xA0E27206)) ^ LODWORD(STACK[0x468]);
  LODWORD(v292) = (v292 + 1649310476 - ((2 * v292) & 0xC49CF618)) ^ LODWORD(STACK[0x458]);
  LODWORD(v292) = (v292 + 315714883 - ((2 * v292) & 0x25A2DA86)) ^ LODWORD(STACK[0x530]);
  LODWORD(v292) = (v292 + 1549498394 - ((2 * v292) & 0xB8B6F034)) ^ v322;
  LODWORD(v292) = v306 ^ (v292 - 1259138824 - ((2 * v292) & 0x69E621F0));
  *(v328 + STACK[0x490] - 0x13ECD35942048670) = v331[BYTE1(v299) ^ 0x1DLL] ^ (BYTE1(v299) - ((v299 >> 7) & 0x1C) + 14) ^ 2;
  v333 = *(&off_1002DD400 + (v326 ^ 0x1C70)) - 646048347;
  *(v328 + STACK[0x5D0] - 0x13ECD35942048670) = v333[BYTE2(v299) ^ 0x6CLL] ^ 0xEE;
  *(v328 + STACK[0x4A8] - 0x13ECD35942048670) = ((BYTE1(v292) ^ 0x67) - ((2 * (BYTE1(v292) ^ 0x67)) & 0x1C) + 14) ^ 0x52 ^ v331[BYTE1(v292) ^ 0x41];
  v334 = STACK[0xB60];
  v335 = *STACK[0xB60];
  *(v335 + STACK[0x4D8] - 0x13ECD35942048670) = v333[BYTE2(v292) ^ 0xA0] ^ 0x3D;
  *(v335 + STACK[0x4C8] - 0x13ECD35942048670) = ((BYTE3(v292) ^ 0xFA) - ((2 * (BYTE3(v292) ^ 0xFA)) & 0x2C) - 74) ^ *(v332 + (BYTE3(v292) ^ 0x95)) ^ 0x1C;
  v336 = STACK[0x4B0];
  *(v335 + STACK[0x4B0] - 0x13ECD35942048670) = ((BYTE3(v299) ^ 4) - 2 * ((BYTE3(v299) ^ 4) & 0x1E ^ BYTE3(v299) & 8) - 74) ^ 0x32 ^ *(v332 + (BYTE3(v299) ^ 0x6BLL));
  *(v335 + STACK[0x4E0] - 0x13ECD35942048670) = v333[BYTE2(v300) ^ 0xE1] ^ 0x3D;
  *(v335 + STACK[0x5F0] - 0x13ECD35942048670) = v333[BYTE2(v317) ^ 0x1ELL] ^ 0x40;
  *(v335 + STACK[0x5E8] - 0x13ECD35942048670) = v330[v292 ^ 0x49] & 0x9B ^ 0x67 ^ (8 * v330[v292 ^ 0x49]) & 0xC0 ^ ((v330[v292 ^ 0x49] & 0x9B ^ 0x67) - (v330[v292 ^ 0x49] ^ 0x43));
  *(v335 + STACK[0x4C0] - 0x13ECD35942048670) = (BYTE1(LODWORD(STACK[0x5E0])) - ((LODWORD(STACK[0x5E0]) >> 7) & 0x1C) + 14) ^ 0x31 ^ v331[BYTE1(LODWORD(STACK[0x5E0])) ^ 0xC7];
  LOBYTE(v327) = v330[((v300 ^ 0x4C) + ((2 * v300) & 0x10A ^ 0xFFFFFFF7) + 134) ^ 0xCELL];
  *(*v334 + STACK[0x510] - 0x13ECD35942048670) = v327 ^ 0xE5 ^ (((8 * v327) & 0xC0) - 126);
  STACK[0x8E8] = v61;
  STACK[0x900] = v65;
  return (*(STACK[0x630] + 8 * ((23 * (((v336 + 1070359784 - 2 * ((v336 + 16) & STACK[0x608] ^ STACK[0x4BC] & 1)) ^ 0x3FCC64D8u) < LODWORD(STACK[0x4E8]))) ^ (v326 - 5619))))();
}

uint64_t sub_100245DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = LODWORD(STACK[0x620]) + 5506;
  LODWORD(STACK[0x5D8]) = LODWORD(STACK[0x3C0]) ^ (2 * v6) ^ 0x59D206B1;
  LODWORD(STACK[0x52C]) = LODWORD(STACK[0x3B0]) ^ 0xEF5711FF;
  LODWORD(STACK[0x530]) = LODWORD(STACK[0x3C8]) ^ 0xE7828518;
  LODWORD(STACK[0x5E0]) = LODWORD(STACK[0x3B8]) ^ 0xB085E78B;
  return (*(STACK[0x630] + 8 * v6))(a1, a2, a3, a4, a5, a6, (2 * v6) ^ 0x22D2u);
}

uint64_t sub_100245F10()
{
  v5 = v1 - 1443463305 + 40 * (v3 ^ 0xA88) + 3111;
  v6 = v1 + v2 + v0;
  v9 = ((v1 + 119 + 40 * (v3 ^ 0x88) + 39) & 0xFu) <= (v6 & 0xF) && v5 <= v6 && v5 < 0x10;
  return (*(v4 + 8 * ((443 * v9) ^ v3)))();
}

uint64_t sub_100245F7C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (v5 - 1443455194);
  v12 = v6 - a2 - v11 + a5 + 0x10E5FF9B79A3E45BLL + ((2 * a1) ^ 0x39C6u);
  v13 = v7 + 0x2B1A0449E8A6C928 - a2 - v11;
  v14 = v8 + 0x2B1A0449E8A6C928 - a2 - v11;
  v15 = v10 + 0x2B1A0449E8A6C928 - a2 - v11;
  v16 = ((a1 + 406862871) & 0xE7BFB8FD ^ 0x892) & a5;
  v18 = v12 >= 0x10 && (v13 + v16) >= 0x10 && (v14 + v16) >= 0x10;
  v19 = v15 + v16;
  v21 = !v18 || v19 < 0x10;
  return (*(v9 + 8 * ((v21 | (4 * v21)) + a1)))();
}

uint64_t sub_100246080(int a1, double a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  LODWORD(STACK[0x600]) = v14;
  STACK[0x610] = v12 - 7;
  STACK[0x608] = v13 - 7;
  v16 = *(v15 + 8 * a11);
  LODWORD(STACK[0x5F8]) = ((a11 ^ 0x16) - 2390) & v11;
  LODWORD(STACK[0x620]) = a11 ^ 0x16;
  a3.n128_u16[0] = -23645;
  a3.n128_u8[2] = -93;
  a3.n128_u8[3] = -93;
  a3.n128_u8[4] = -93;
  a3.n128_u8[5] = -93;
  a3.n128_u8[6] = -93;
  a3.n128_u8[7] = -93;
  a4.n128_u16[0] = 6939;
  a4.n128_u8[2] = 27;
  a4.n128_u8[3] = 27;
  a4.n128_u8[4] = 27;
  a4.n128_u8[5] = 27;
  a4.n128_u8[6] = 27;
  a4.n128_u8[7] = 27;
  LODWORD(STACK[0x628]) = ((a11 ^ 0x16) - 2121) | 0x1288;
  return v16(-a1, xmmword_1002A9AA0, a3, a4);
}

uint64_t sub_10024612C(int a1, int8x16_t a2, int8x8_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v22.val[0].i64[0] = (a1 + v18) & 0xF;
  v22.val[0].i64[1] = (a1 + v17 + LODWORD(STACK[0x628])) & 0xF;
  v22.val[1].i64[0] = (a1 + v16) & 0xF;
  v22.val[1].i64[1] = (a1 + v15) & 0xF;
  v22.val[2].i64[0] = (a1 + v14) & 0xF;
  v22.val[2].i64[1] = (a1 + v13) & 0xF;
  v22.val[3].i64[0] = (a1 + v12) & 0xF;
  v22.val[3].i64[1] = (a1 + v11) & 0xF;
  v20 = (22 * (a1 != a11)) ^ LODWORD(STACK[0x620]);
  *(STACK[0x608] + (a1 + v19)) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(STACK[0x610] + (a1 + v18)), *(STACK[0x5A8] + v22.val[0].i64[0] - 7)), veor_s8(*(STACK[0x5A0] + v22.val[0].i64[0] - 7), *(STACK[0x5B0] + v22.val[0].i64[0] - 7)))), a4), vmul_s8(*&vqtbl4q_s8(v22, a2), a3)));
  return (*(STACK[0x630] + 8 * v20))();
}

uint64_t sub_100246394()
{
  STACK[0xBD8] = 0x9F0A0AC2B0A49760;
  v3 = STACK[0x610];
  v4 = (*(v1 + 8 * (v0 + 1354)))(STACK[0x610] + 8, STACK[0x610] + 9, (v2 - 1610569971), -1);
  if (v3)
  {
    v5 = STACK[0xB80] == -380;
  }

  else
  {
    v5 = 1;
  }

  v7 = !v5 && v2 - 1610569989 >= (v0 - 9455);
  return (*(v1 + 8 * ((v7 * ((v0 - 1101) ^ 0x2085)) ^ v0)))(v4);
}

uint64_t sub_100246424@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v4 = STACK[0xB80];
  *(v4 + 381) = 0;
  *(v4 + 382) = 0;
  *(STACK[0xB80] + 390) = 0;
  return (*(v2 + 8 * (((v3 - 265570307 == ((v1 + 952213070) & 0xC73E5FFE ^ 0x502B0E3F)) * ((v1 + 1241405284) & 0xB60199FE ^ 0x11CB)) ^ v1)))();
}

uint64_t sub_100246590()
{
  v3 = *(v2 + 8 * v1);
  STACK[0xB98] = v0;
  return v3(v1 ^ 0x1465u, -783229595, (v1 ^ 0x7E1u) - 4563, (v1 ^ 0x3E9u) - 5289, -1646143522, v1 ^ 0x1457u, -2096880239, v1 ^ 0x1498u);
}

uint64_t sub_100246744@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W8>)
{
  *(STACK[0xB88] + (a5 + a1)) ^= *(v9 + (a5 + a1));
  v11 = a5 + a2 < v6;
  if (a6 < v7 != a5 + a2 < a3)
  {
    v11 = a6 < v7;
  }

  return (*(v10 + 8 * ((v11 * a4) ^ v8)))();
}

uint64_t sub_10024679C@<X0>(unsigned int a1@<W8>)
{
  if (LODWORD(STACK[0x52C]) + a1 + 620049742 < 0xD8666FC5 != a1 < ((v1 - 1000440572) & 0x3BA1778Fu) + v2)
  {
    v4 = LODWORD(STACK[0x52C]) + a1 + 620049742 < 0xD8666FC5;
  }

  else
  {
    v4 = LODWORD(STACK[0x52C]) > (v1 ^ 0x560972A2u);
  }

  return (*(v3 + 8 * ((229 * !v4) ^ v1)))();
}

uint64_t sub_100246820@<X0>(unsigned int a1@<W8>)
{
  v9 = v6 ^ v7;
  v10 = v5 < v4;
  v11 = a1 - 1567087006;
  v12 = STACK[0x630];
  *(STACK[0xB88] + v11) ^= (-123 * (v11 & 0xF)) ^ *(STACK[0x5E0] - 0x2B1A0449E8A6C928) ^ *(v1 + (v11 & 0xF)) ^ *(v2 + (v11 & 0xF)) ^ *((v11 & 0xF) + v3 + 1) ^ *(STACK[0x5D8] + (v11 & 0xF)) ^ *(STACK[0x5C8] + (v11 & 0xF)) ^ *(STACK[0x5D0] + (v11 & 0xF)) ^ ((-117 * (v9 ^ 0x93) - 104) * (v11 & 0xF)) ^ 0x1B;
  if (a1 < v8 + 1806 == v10)
  {
    v10 = LODWORD(STACK[0x52C]) > 0x560960DA;
  }

  return (*(v12 + 8 * (v9 ^ (2863 * v10))))();
}

uint64_t sub_100246928@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = (a1 + 746002126) & 0xD388F676;
  v5 = *(v3 + 8 * (((a2 == (a1 ^ 0x19D9) + v2) * (v4 ^ 0x1479)) ^ a1));
  LODWORD(STACK[0x9F8]) = v4;
  return v5();
}

uint64_t sub_1002469CC@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W8>)
{
  v12 = a3 < v5;
  *(STACK[0xB88] + (a2 + v8)) ^= ((a2 - 51) ^ v7) + a2 - 87;
  if (v12 == a2 + v9 < v10)
  {
    v12 = a2 + v9 < v4;
  }

  v13 = *(v11 + 8 * ((!v12 * a1) ^ v3));
  LODWORD(STACK[0x9F8]) = v6;
  return v13();
}

uint64_t sub_100246A38@<X0>(int a1@<W8>)
{
  v3 = STACK[0x9F8];
  LODWORD(STACK[0x9FC]) = STACK[0x9F8];
  LODWORD(STACK[0xA00]) = (v3 + 1546672969) & 0xA3CF917E;
  STACK[0x6D0] = STACK[0xB80] + 0xCAA10EED4673D91;
  LODWORD(STACK[0xA04]) = LODWORD(STACK[0x52C]) + a1 - 1637169695;
  v4 = STACK[0xB78] + v1;
  STACK[0xA08] = v4;
  STACK[0xA10] = v4 + 319;
  STACK[0xA18] = v4 + 447;
  STACK[0x658] = STACK[0xB98] + 448;
  STACK[0x9F0] = *(&off_1002DD400 + (v3 ^ 0x16ED)) - 1645510058;
  STACK[0x9E8] = v4 + 319;
  v5 = *(v2 + 8 * (v3 ^ 0x3D2E));
  STACK[0x9E0] = 64;
  STACK[0x9D8] = v5;
  return (*(v2 + 8 * (v3 + 5270)))();
}

uint64_t sub_100246B2C@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W4>, int a4@<W8>)
{
  v10 = a3 + 2063504937;
  v11 = a3 + 1;
  v12 = (v11 - 1567087006);
  v13 = STACK[0x630];
  *(STACK[0xB88] + v12) ^= *(a1 + (v11 - a4)) ^ *(v4 + (v12 & 0xF)) ^ ((v12 & 0xF) * (v9 - 25)) ^ (-89 * (v12 & 0xF)) ^ *(v5 + (v12 & 0xF)) ^ *((v12 & 0xF) + v6 + 1) ^ *(STACK[0x5D8] + (v12 & 0xF)) ^ *(STACK[0x5C8] + (v12 & 0xF)) ^ *(STACK[0x5D0] + (v12 & 0xF)) ^ 0x1B;
  if (v8 < v7 != v10 < v7)
  {
    v14 = v8 < v7;
  }

  else
  {
    v14 = v10 < v8;
  }

  return (*(v13 + 8 * ((v14 * a2) ^ v9)))();
}

uint64_t sub_100246DF0(uint64_t a1, char a2)
{
  *STACK[0xB88] = ((*STACK[0xB88] ^ 3) + 127) ^ (v5 - 95);
  v13 = v4 == v11 + 1;
  v14 = STACK[0xB80];
  v15 = STACK[0xB80];
  if (v4 == v11 + 1)
  {
    v16 = STACK[0xB80];
  }

  else
  {
    v16 = (v14 + 1);
  }

  if (v4 == v11 + 1)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  v18 = *v17;
  if (v13)
  {
    v19 = v12;
  }

  else
  {
    v19 = v12 + 1;
  }

  if (v13)
  {
    v20 = 0;
  }

  else
  {
    v20 = -123;
  }

  v21 = v18 ^ v20;
  if (v13)
  {
    v22 = v6;
  }

  else
  {
    v22 = v6 + 1;
  }

  *v16 = v21 ^ *v19 ^ *v22 ^ ((v21 ^ *v19 ^ *v22 ^ *v16) - 20);
  v23 = v10[2 % v7] ^ (-123 * (2 % v7)) ^ v12[2 % v7] ^ v6[2 % v7];
  *(v14 + 2 % v7) = v23 ^ ((v23 ^ *(v14 + 2 % v7)) + 111);
  v24 = v10[3 % v7] ^ (-123 * (3 % v7)) ^ v12[3 % v7] ^ v6[3 % v7];
  *(v14 + 3 % v7) = v24 ^ ((v24 ^ *(v14 + 3 % v7)) + a2);
  v25 = v10[4 % v7] ^ (-123 * (4 % v7)) ^ v12[4 % v7] ^ v6[4 % v7];
  *(v15 + 4 % v7) = v25 ^ ((v25 ^ *(v15 + 4 % v7)) - 3);
  v26 = STACK[0xB80];
  v27 = v10[5 % v7] ^ (-123 * (5 % v7)) ^ v12[5 % v7] ^ v6[5 % v7];
  *(STACK[0xB80] + 5 % v7) = v27 ^ ((v27 ^ *(STACK[0xB80] + 5 % v7)) + 17);
  v28 = STACK[0xB90];
  v29 = *STACK[0xB90] ^ v11;
  v30 = 6 % v29;
  v31 = *(&off_1002DD400 + v5 - 5131) - 1543732682;
  v32 = *(&off_1002DD400 + v5 - 4637) - 1759933342;
  v33 = *(&off_1002DD400 + v5 - 4440) - 29049463;
  v34 = v31[v30] ^ (33 * v30) ^ v32[v30 + 3] ^ v33[v30];
  *(v26 + v30) = v34 ^ ((v34 ^ *(v26 + v30)) + v3);
  v35 = 7 % v29;
  LOBYTE(v30) = v31[v35] ^ (33 * v35) ^ v32[v35 + 3] ^ v33[v35];
  v36 = STACK[0xB80];
  *(STACK[0xB80] + v35) = v30 ^ ((v30 ^ *(STACK[0xB80] + v35)) + 47);
  v37 = 8 % v29;
  LOBYTE(v30) = v31[v37] ^ (33 * v37) ^ v32[v37 + 3] ^ v33[v37];
  *(v36 + v37) = v30 ^ (LODWORD(STACK[0x4E8]) + (v30 ^ *(v36 + v37)));
  v38 = 9 % v29;
  LOBYTE(v30) = v31[v38] ^ (33 * v38) ^ v32[v38 + 3] ^ v33[v38];
  v39 = STACK[0xB80];
  *(STACK[0xB80] + v38) = v30 ^ ((v30 ^ *(STACK[0xB80] + v38)) - 118);
  v40 = 0xA % v29;
  LOBYTE(v38) = v31[v40] ^ (33 * v40) ^ v32[v40 + 3] ^ v33[v40];
  *(v39 + v40) = v38 ^ ((v38 ^ *(v39 + v40)) - v9);
  LODWORD(v38) = *v28 ^ v11;
  v41 = 0xB % v38;
  LOBYTE(v30) = v31[v41] ^ (33 * v41) ^ v32[v41 + 3] ^ v33[v41];
  v42 = STACK[0xB80];
  *(STACK[0xB80] + v41) = v30 ^ ((v30 ^ *(STACK[0xB80] + v41)) - 44);
  v43 = 0xC % v38;
  LOBYTE(v30) = v31[v43] ^ (33 * v43) ^ v32[v43 + 3] ^ v33[v43];
  *(v42 + v43) = v30 ^ ((v30 ^ *(v42 + v43)) - v2 + 96);
  v44 = 0xD % v38;
  v45 = STACK[0xB80];
  *(STACK[0xB80] + v44) = v31[v44] ^ (33 * v44) ^ v32[v44 + 3] ^ v33[v44] ^ (((-123 * v44) ^ *(STACK[0xB80] + v44) ^ v10[v44] ^ v12[v44] ^ v6[v44]) + (LODWORD(STACK[0x5D0]) ^ 0x3A));
  v46 = 0xE % v38;
  v47 = *(&off_1002DD400 + v5 - 4602) - 1114487003;
  v48 = *(&off_1002DD400 + (v5 ^ 0x14DE)) - 1092362503;
  v49 = *(&off_1002DD400 + (v5 ^ 0x14F7)) - 1075294030;
  *(v45 + v46) = v47[v46] ^ (43 * v46) ^ v48[v46] ^ v49[v46 + 1] ^ (((33 * v46) ^ *(v45 + v46) ^ v31[v46] ^ v32[v46 + 3] ^ v33[v46]) + 42);
  v50 = STACK[0xB90];
  LODWORD(v45) = *STACK[0xB90] ^ v11;
  v51 = 0xF % v45;
  v52 = STACK[0xB80];
  LOBYTE(v42) = v47[v51] ^ (43 * v51) ^ v48[v51] ^ v49[v51 + 1];
  *(STACK[0xB80] + v51) = v42 ^ ((v42 ^ *(STACK[0xB80] + v51)) - 75);
  v53 = 0x10 % v45;
  *(v52 + v53) = (43 * (v53 & 0xF)) ^ v47[v53 & 0xF] ^ v48[v53 & 0xF] ^ v49[(v53 & 0xF) + 1] ^ (LODWORD(STACK[0x5E8]) + (v48[v53 & 0xF] ^ v47[v53 & 0xF] ^ *(v52 + v53) ^ (43 * (v53 & 0xF)) ^ v49[(v53 & 0xF) + 1]));
  v54 = 0x11 % v45;
  v55 = STACK[0xB80];
  *(STACK[0xB80] + v54) = (43 * (v54 & 0xF)) ^ v47[v54 & 0xF] ^ v48[v54 & 0xF] ^ v49[(v54 & 0xF) + 1] ^ ((v48[v54 & 0xF] ^ v47[v54 & 0xF] ^ *(STACK[0xB80] + v54) ^ (43 * (v54 & 0xF)) ^ v49[(v54 & 0xF) + 1]) + 35);
  v56 = 0x12 % v45;
  *(v55 + v56) = (43 * (v56 & 0xF)) ^ v47[v56 & 0xF] ^ v48[v56 & 0xF] ^ v49[(v56 & 0xF) + 1] ^ ((v48[v56 & 0xF] ^ v47[v56 & 0xF] ^ *(v55 + v56) ^ (43 * (v56 & 0xF)) ^ v49[(v56 & 0xF) + 1]) + LODWORD(STACK[0x5F0]));
  v57 = 0x13 % v45;
  v58 = STACK[0xB80];
  *(STACK[0xB80] + v57) = (43 * (v57 & 0xF)) ^ v47[v57 & 0xF] ^ v48[v57 & 0xF] ^ v49[(v57 & 0xF) + 1] ^ ((v48[v57 & 0xF] ^ v47[v57 & 0xF] ^ *(STACK[0xB80] + v57) ^ (43 * (v57 & 0xF)) ^ v49[(v57 & 0xF) + 1]) + LODWORD(STACK[0x5E0]));
  LODWORD(v55) = *v50 ^ v11;
  v59 = 0x14 % v55;
  *(v58 + v59) = (43 * (v59 & 0xF)) ^ v47[v59 & 0xF] ^ v48[v59 & 0xF] ^ v49[(v59 & 0xF) + 1] ^ ((v48[v59 & 0xF] ^ v47[v59 & 0xF] ^ *(v58 + v59) ^ (43 * (v59 & 0xF)) ^ v49[(v59 & 0xF) + 1]) - 64);
  v60 = 0x15 % v55;
  v61 = STACK[0xB80];
  *(STACK[0xB80] + v60) = (43 * (v60 & 0xF)) ^ v47[v60 & 0xF] ^ v48[v60 & 0xF] ^ v49[(v60 & 0xF) + 1] ^ ((v48[v60 & 0xF] ^ v47[v60 & 0xF] ^ *(STACK[0xB80] + v60) ^ (43 * (v60 & 0xF)) ^ v49[(v60 & 0xF) + 1]) - 26);
  v62 = 0x16 % v55;
  v63 = (v62 & 0xF) + 1;
  LOBYTE(v47) = (v47[v62 & 0xF] ^ *(v61 + v62) ^ v48[v62 & 0xF] ^ (43 * (v62 & 0xF)) ^ v49[v63]) - 95;
  v64 = *(&off_1002DD400 + (v5 ^ 0x15F5)) - 857826442;
  v65 = *(&off_1002DD400 + v5 - 5117) - 1715050878;
  v66 = *(&off_1002DD400 + v5 - 5018) - 932423291;
  *(v61 + v62) = v64[v62 & 0xF] ^ (67 * (v62 & 0xF)) ^ v65[v63] ^ v66[v63] ^ v47;
  v67 = 0x17 % v55;
  v68 = STACK[0xB80];
  v69 = (v67 & 0xF) + 1;
  *(STACK[0xB80] + v67) = (67 * (v67 & 0xF)) ^ v64[v67 & 0xF] ^ v65[v69] ^ v66[v69] ^ ((v65[v69] ^ v64[v67 & 0xF] ^ *(STACK[0xB80] + v67) ^ (67 * (v67 & 0xF)) ^ v66[v69]) + LODWORD(STACK[0x5F8]));
  v70 = STACK[0xB90];
  LODWORD(v67) = *STACK[0xB90] ^ v11;
  v71 = 0x18 % v67;
  *(v68 + v71) = (67 * (v71 & 0xF)) ^ v64[v71 & 0xF] ^ v65[(v71 & 0xF) + 1] ^ v66[(v71 & 0xF) + 1] ^ ((v65[(v71 & 0xF) + 1] ^ v64[v71 & 0xF] ^ *(v68 + v71) ^ (67 * (v71 & 0xF)) ^ v66[(v71 & 0xF) + 1]) - 118);
  v72 = 0x19 % v67;
  v73 = STACK[0xB80];
  *(STACK[0xB80] + v72) = (67 * (v72 & 0xF)) ^ v64[v72 & 0xF] ^ v65[(v72 & 0xF) + 1] ^ v66[(v72 & 0xF) + 1] ^ ((v65[(v72 & 0xF) + 1] ^ v64[v72 & 0xF] ^ *(STACK[0xB80] + v72) ^ (67 * (v72 & 0xF)) ^ v66[(v72 & 0xF) + 1]) - 125);
  v74 = 0x1A % v67;
  *(v73 + v74) = (67 * (v74 & 0xF)) ^ v64[v74 & 0xF] ^ v65[(v74 & 0xF) + 1] ^ v66[(v74 & 0xF) + 1] ^ ((v65[(v74 & 0xF) + 1] ^ v64[v74 & 0xF] ^ *(v73 + v74) ^ (67 * (v74 & 0xF)) ^ v66[(v74 & 0xF) + 1]) + 118);
  v75 = 0x1B % v67;
  v76 = STACK[0xB80];
  v77 = (v75 & 0xF) + 1;
  *(STACK[0xB80] + v75) = (67 * (v75 & 0xF)) ^ v64[v75 & 0xF] ^ v65[v77] ^ v66[v77] ^ ((v65[v77] ^ v64[v75 & 0xF] ^ *(STACK[0xB80] + v75) ^ (67 * (v75 & 0xF)) ^ v66[v77]) + 55);
  v78 = 0x1C % v67;
  *(v76 + v78) = (67 * (v78 & 0xF)) ^ v64[v78 & 0xF] ^ v65[(v78 & 0xF) + 1] ^ v66[(v78 & 0xF) + 1] ^ ((v65[(v78 & 0xF) + 1] ^ v64[v78 & 0xF] ^ *(v76 + v78) ^ (67 * (v78 & 0xF)) ^ v66[(v78 & 0xF) + 1]) + 115);
  LODWORD(v75) = *v70 ^ v11;
  v79 = 0x1D % v75;
  v80 = STACK[0xB80];
  v81 = (v79 & 0xF) + 1;
  *(STACK[0xB80] + v79) = (67 * (v79 & 0xF)) ^ v64[v79 & 0xF] ^ v65[v81] ^ v66[v81] ^ ((v65[v81] ^ v64[v79 & 0xF] ^ *(STACK[0xB80] + v79) ^ (67 * (v79 & 0xF)) ^ v66[v81]) + STACK[0x610]);
  v82 = 0x1E % v75;
  LOBYTE(v56) = v64[v82 & 0xF] ^ *(v80 + v82) ^ v65[(v82 & 0xF) + 1] ^ (67 * (v82 & 0xF)) ^ v66[(v82 & 0xF) + 1];
  v83 = *(&off_1002DD400 + v5 - 5200) - 852770415;
  LOBYTE(v66) = v56 + 81;
  v84 = *(&off_1002DD400 + (v5 ^ 0x152A)) - 658060795;
  v85 = *(&off_1002DD400 + (v5 ^ 0x15F1)) - 195311630;
  *(v80 + v82) = v83[v82 & 0xF] ^ (23 * (v82 & 0xF)) ^ v84[(v82 & 0xF) + 3] ^ v85[v82 & 0xF] ^ v66;
  v86 = 0x1F % v75;
  *(STACK[0xB80] + v86) = (23 * (v86 & 0xF)) ^ v83[v86 & 0xF] ^ v84[(v86 & 0xF) + 3] ^ v85[v86 & 0xF] ^ ((v84[(v86 & 0xF) + 3] ^ v83[v86 & 0xF] ^ *(STACK[0xB80] + v86) ^ (23 * (v86 & 0xF)) ^ v85[v86 & 0xF]) + LODWORD(STACK[0x4F0]));
  return (*(v8 + 8 * v5))(1971139278, 2893085107, 2145518773, 1401882189, -1401882189, 46, 1401882189);
}

uint64_t sub_100247AAC(int a1)
{
  v8 = (a1 - 1971139285) % v1;
  v9 = (a1 - 1971139562 + ((2 * v4) ^ 0x2A34u)) % v1;
  v10 = (a1 - 1971139315) % v1;
  v11 = *((v10 & 0xF) + v3 + 3);
  v12 = *(v2 + (v10 & 0xF)) ^ *(STACK[0xB80] + v10);
  v13 = *(v5 + (v10 & 0xF));
  v14 = v12 ^ -v10 ^ v11;
  v15 = v12 ^ (23 * (((a1 - 1971139315) % v1) & 0xF)) ^ v11;
  v16 = (a1 - 1971139455) % v1;
  v17 = *(v2 + (v16 & 0xF)) ^ *(STACK[0xB80] + v16);
  v18 = *((v16 & 0xF) + v3 + 3);
  LODWORD(v10) = *(v5 + (v16 & 0xF));
  LODWORD(v16) = v17 ^ -v16 ^ v18 ^ v10;
  v19 = (v17 ^ (23 * (((a1 - 1971139455) % v1) & 0xF)) ^ v18 ^ v10) << 24;
  HIDWORD(v21) = *(v2 + (v8 & 0xF)) ^ *(STACK[0xB80] + v8) ^ *((v8 & 0xF) + v3 + 3) ^ (23 * (v8 & 0xF)) ^ *(v5 + (v8 & 0xF));
  LODWORD(v21) = HIDWORD(v21) << 24;
  v20 = v21 >> 31;
  HIDWORD(v21) = v14 ^ v13;
  LODWORD(v21) = (v15 ^ v13) << 24;
  v22 = STACK[0x630];
  *(STACK[0xB80] + v9) ^= (23 * (v9 & 0xF)) ^ (85 * (v9 & 0xF)) ^ *(v2 + (v9 & 0xF)) ^ *((v9 & 0xF) + v3 + 3) ^ *(v5 + (v9 & 0xF)) ^ v20 ^ (v21 >> 26) ^ *(v7 + (v9 & 0xF)) ^ *((v9 & 0xF) + STACK[0x620] + 1) ^ *(STACK[0x628] + (v9 & 0xF)) ^ (__PAIR64__(v16, v19) >> 27);
  return (*(v22 + 8 * ((12444 * (a1 + 1 == v6 + 256)) ^ v4)))();
}

uint64_t sub_100247C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x658] = STACK[0x658] - 8305 + (v6 + 7509);
  v8 = STACK[0x6D0];
  *(v8 - 0xCAA10EED4673C3DLL) = 763990317;
  *(v8 - 0xCAA10EED4673C41) = -2055162102;
  *(v8 - 0xCAA10EED4673C39) = 0x8723B4A20FAB3C2ALL;
  *(v8 - 0xCAA10EED4673C31) = 0x78DC4B5DF054C3D5;
  *(v8 - 0xCAA10EED4673C25) = 0xDE3EF8721351528BLL;
  STACK[0x678] = *(v7 + 8 * v6);
  return (*(v7 + 8 * (v6 + 4017)))(752834767, a2, a3, a4, 1612153118, a6, 2769296451);
}

uint64_t sub_100247D5C()
{
  v5 = v3 < v1;
  *(v4 + v2) = 0;
  if (v5 == (v2 + 1) > 0xFFFFFFFF9059D246)
  {
    v5 = v2 + 1873152102 + (v0 + 2137) < v3;
  }

  return (*(STACK[0x630] + 8 * ((481 * !v5) ^ v0)))();
}

uint64_t sub_100247EF4@<X0>(unsigned int a1@<W6>, uint64_t a2@<X8>)
{
  v6 = v3 ^ 0x176C;
  *(a2 + (v6 ^ a1) + v2) = v5 - 39;
  return (*(v4 + 8 * v6))();
}

uint64_t sub_100247F1C(__n128 a1, uint64_t a2, int a3)
{
  v6.n128_u64[0] = (v3 + v4 + 14) & 0xF;
  v6.n128_u64[1] = (v3 + v4 + 13) & 0xF;
  v7.n128_u64[0] = (v3 + v4 + 12) & 0xF;
  v7.n128_u64[1] = (v3 + v4 + 11) & 0xF;
  v8.n128_u64[0] = (v3 + v4 + 10) & 0xF;
  v8.n128_u64[1] = (v3 + v4 + 9) & 0xF;
  v12.val[0].i64[0] = (v4 + (v3 ^ 8)) & 0xF;
  v12.val[0].i64[1] = (v3 + v4 + 7) & 0xF;
  v12.val[1].i64[0] = (v3 + v4 + 6) & 0xF;
  v12.val[1].i64[1] = (v3 + v4 + 5) & 0xF;
  v12.val[2].i64[0] = (v3 + v4 + 4) & 0xF;
  v12.val[2].i64[1] = (v3 + v4 + 3) & 0xF;
  v12.val[3].i64[0] = (v3 + v4 + 2) & 0xF;
  v12.val[3].i64[1] = (v3 + v4 + 1) & 0xF;
  v9.n128_u64[0] = 0xA3A3A3A3A3A3A3A3;
  v9.n128_u64[1] = 0xA3A3A3A3A3A3A3A3;
  v10.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v10.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  return (*(v5 + 8 * (a3 + 1013)))(a1, v6, v7, v8, xmmword_1002A9AB0, vqtbl4q_s8(v12, xmmword_1002A9AB0), v9, v10);
}

uint64_t sub_10024803C(double a1, __n128 a2, __n128 a3, __n128 a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  v21 = a16 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a2 - 1), a5).u64[0];
  *&v23.i64[1] = a6;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(a12 + a16), *(v17 + v21 - 15)), veorq_s8(*(v18 + v21 - 15), *(v20 + v21 - 15))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a8), vmulq_s8(v23, a7)));
  *(a14 + (v16 + a11)) = vextq_s8(v25, v25, 8uLL);
  return (*(v19 + 8 * ((14 * (a15 == 0)) ^ a10)))();
}

uint64_t sub_100248184(int a1, char a2, int a3, char a4, uint64_t a5, int a6)
{
  v16 = (a3 + v13);
  v17 = a3 - 1;
  *(v7 + (v17 - 1443455193)) = *(v6 + v16) ^ *(v11 + (v16 & 0xF)) ^ *(v12 + (v16 & 0xF)) ^ *(v15 + (v16 & 0xF)) ^ ((v16 & 0xF) * a2) ^ a4;
  return (*(v14 + 8 * (((v17 == (v10 & a1) + v8) * a6) ^ v9)))();
}

uint64_t sub_100248214()
{
  v0 = STACK[0x620];
  LODWORD(STACK[0x8F4]) = 0;
  STACK[0x608] = STACK[0x908];
  return (*(STACK[0x630] + 8 * v0))();
}

uint64_t sub_100248240()
{
  (*(v0 + 8 * (v1 ^ 0x2793)))(STACK[0x920] - 0x4B8DEC0944082CF5);
  (*(v0 + 8 * (v1 + 7021)))(STACK[0x608] - 0x20401EAF3F098A6DLL);
  (*(v0 + 8 * (v1 + 7021)))(STACK[0x8E8] - 0x26CE0F71FC42097ELL);
  (*(v0 + 8 * (v1 ^ 0x2793)))(STACK[0x8D0] - 0x3EF28014ABB6B4C9);
  (*(v0 + 8 * (v1 + 7021)))(STACK[0x8E0] - 0x4347A8FF3060F6CFLL);
  (*(v0 + 8 * (v1 + 7021)))(STACK[0x8F8]);
  (*(v0 + 8 * (v1 ^ 0x2793)))(STACK[0x900] - 0x52DC16278CC38060);
  v2 = (*(v0 + 8 * (v1 ^ 0x2793)))(STACK[0x910] - 0x93936A1F6680CD1);
  return (*(v0 + 8 * v1))(v2);
}

uint64_t sub_1002484A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v7 < v6;
  v12 = STACK[0xB28] + ((59 * (v9 ^ 0xD81)) ^ 0xCA727E25) + v8;
  if (v11 == v8 - 2038991873 < v6)
  {
    v11 = v8 - 2038991873 < v7;
  }

  v13 = 2016189265 * ((v12 ^ *(*(a5 + a6) + (*(a3 + a4) & 0xFFFFFFFFF1C2C9C0))) & 0x7FFFFFFF);
  *v12 ^= *(*(&off_1002DD400 + v9 - 3179) + ((((59 * (v9 ^ 0x81)) ^ 0x25) + v8) & 0xF | (16 * ((2016189265 * (v13 ^ HIWORD(v13))) >> 24))) - 1845909171) ^ (81 * (v13 ^ BYTE2(v13)));
  return (*(v10 + 8 * ((1008 * v11) ^ v9)))();
}

uint64_t sub_100248690()
{
  v3 = STACK[0x6F8];
  *(v2 - 168) = STACK[0x688];
  *(v2 - 160) = v3;
  *(v2 - 176) = v0 - 1949688233 * ((((2 * (v2 - 176)) | 0xA55FE274) - (v2 - 176) - 1387262266) ^ 0xB5E8A7B1) - 6262;
  v4 = (*(v1 + 8 * (v0 + 2045)))(v2 - 176);
  v5 = *(v2 - 152);
  LODWORD(STACK[0x6CC]) = v5;
  return (*(v1 + 8 * (((v5 != 68588956) * ((((v0 - 6267) | 0x1042) + 1300) ^ 0x1D62)) ^ v0)))(v4);
}

uint64_t sub_100248768()
{
  v5 = v0 + 16;
  v6 = *(&off_1002DD400 + v1 - 6077);
  v7 = v6 - 1897114590;
  v8 = v6 - 1897114574;
  v10 = v0 < v2 + 16 && v5 > v2;
  v12 = v5 > v7 && v0 < v8 || v10;
  if (v0 < STACK[0x620] + 17 && v5 > STACK[0x620] + 1)
  {
    v12 = 1;
  }

  if (v0 < v3 + 16 && v5 > v3)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12;
  }

  return (*(v4 + 8 * ((v15 * (((v1 - 5314) | 0x10C6) - 5549)) ^ v1)))();
}

uint64_t sub_100248854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x770];
  v9 = STACK[0x770] - 0x35D98041AE418DDCLL;
  *(v8 - 0x4283913082A8CA19) = 763990317;
  STACK[0x780] = v9;
  *(v8 - 0x4283913082A8CA1DLL) = -2055162102;
  *(v8 - 0x4283913082A8CA15) = 0x8723B4A20FAB3C2ALL;
  *(v8 - 0x4283913082A8CA0DLL) = 0x78DC4B5DF054C3D5;
  *(v8 - 0x4283913082A8CA01) = 0xDE3EF8721351528BLL;
  STACK[0x678] = *(v7 + 8 * v6);
  return (*(v7 + 8 * (v6 + v6 + 7556 - 3729)))(752834767, a2, a3, a4, 1612152879, a6, 2769296451);
}

uint64_t sub_100248A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x648] = v7;
  LODWORD(STACK[0x740]) = a5;
  STACK[0x7C0] = v5;
  STACK[0x610] = v7;
  return (*(v9 + 8 * ((15408 * (a5 + ((v6 + 101) ^ 0x161E) - 1015301926 + ((2 * (*(v7 + v8) & 0x3F)) ^ 0x5A) + (*(v7 + v8) & 0x3F ^ 0xDC6CBDD2) < 0xFFFFFFC0)) ^ v6)))();
}

uint64_t sub_100248AE8(uint64_t a1, int a2, int a3, int a4)
{
  if ((v5 + 596853250) <= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = v5 + 596853250;
  }

  return (*(v6 + 8 * ((((((v4 - a2 - a3 + v7) < 0xF) ^ (a4 + 37)) & 1) * (((a4 - 2125719753) & 0x7EB3F37B) - 4982)) | a4)))((a4 - 67177691) & 0x4010FFB);
}

uint64_t sub_100248BA0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v12 = a3 + a2;
  v13 = v12 + v10;
  if ((v12 + v10) <= 0x40)
  {
    v13 = a7;
  }

  v14 = a8 + v13;
  v15 = ((a6 - 1938) ^ (v9 - 2023)) - v12;
  v18 = ((11 - v8) & 0xFu) < (v14 & 0xF) || v15 < v14 || v14 > 0xF;
  return (*(v11 + 8 * ((v18 * (((a6 - 859) | 0x18C) ^ 0x1170)) ^ a6)))();
}

uint64_t sub_100248C0C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = (v6 + a2 - 1);
  v9 = v8 + STACK[0x610];
  v10 = v9 - 0xCAA10EED4673C81 - v4;
  v11 = (v5 + 1) & 0xF;
  v12 = STACK[0x520] - v11 + v9 - 0xCAA10EED4673C81;
  v13 = v9 - 0xCAA10EED4673C81 + STACK[0x518] - 1;
  v14 = v13 - v11;
  v15 = STACK[0x510] - 0xCAA10EED4673C81;
  v16 = v15 + v9 - v11;
  v17 = v9 - 0xCAA10EED4673C81 + STACK[0x520];
  v24 = v12 > 0xF && v17 > 0xF && v10 >= ((a4 - 4460) | 0x534u) - 1380 && v14 > 0xF && v13 > 0xF && v16 > 0xF && v15 + STACK[0x610] + v8 > 0xF;
  return (*(v7 + 8 * (v24 | (2 * v24) | a4)))((a4 - 1475));
}

uint64_t sub_100248CC0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (v10 + 1) & 0x1FFFFFFF0;
  STACK[0x600] = v11 + v8;
  v12.n128_u64[0] = (v8 + 6) & 0xF;
  v12.n128_u64[1] = (v8 + 7) & 0xF;
  v13.n128_u64[0] = v8 & 0xF ^ 8;
  v13.n128_u64[1] = (v8 + 9) & 0xF;
  v14.n128_u64[0] = (v8 + 10) & 0xF;
  v14.n128_u64[1] = (v8 + 11) & 0xF;
  v17.val[0].i64[0] = (v8 + 12) & 0xF;
  v17.val[0].i64[1] = (v8 + 13) & 0xF;
  v17.val[1].i64[0] = (v8 + 14) & 0xF;
  v17.val[1].i64[1] = (v8 - 1) & 0xF;
  v17.val[2].i64[0] = v8 & 0xF;
  v17.val[2].i64[1] = (v8 + 1) & 0xF;
  v17.val[3].i64[0] = (v8 + 2) & 0xF;
  v17.val[3].i64[1] = (v8 + 3) & 0xF;
  v15.n128_u64[0] = 0x5555555555555555;
  v15.n128_u64[1] = 0x5555555555555555;
  return (*(STACK[0x630] + 8 * v9))((v8 + 5) & 0xF, v11 - 16, v8 + v7, 9187, a6, v6, a1, v12, v13, v14, xmmword_1002A9AB0, vqtbl4q_s8(v17, xmmword_1002A9AB0), v15, xmmword_1002A9BA0);
}

uint64_t sub_100248DCC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int8x16_t *a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v20 = (a3 + v14) & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v22.i64[1] = a12;
  *(a5 + (a3 + v14)) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*a6, *(v16 + v20)), veorq_s8(*(v20 + v19 + 1), *(v17 + v20))), a14), vmulq_s8(v22, a13));
  return (*(v18 + 8 * (((a2 == 0) * a4) ^ v15)))(a1, a2 - 16, a3 + 16);
}

uint64_t sub_100248EA0(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = (a3 + v10) & ((v8 + v9) - 81);
  v17 = v6 + v7 + 2248;
  *(a5 + v17) = *(v11 + v16) ^ *(v5 + a3 + v10) ^ (((v6 + v7 - 56) & 0xF) * a1) ^ *(v16 + v15 + 1) ^ (v16 * a1) ^ *(v12 + v16) ^ *(v11 + (v17 & 0xF)) ^ *((v17 & 0xF) + v15 + 1) ^ *(v12 + (v17 & 0xF));
  return (*(v13 + 8 * ((((v14 + v7 + 1) < 0x40) * a2) ^ v8)))();
}

uint64_t sub_100248F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x6A4]) = v3;
  STACK[0x6B8] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (((v4 + 7281) ^ 0x1297) + v4)))(a1, a2, a3, STACK[0x610]);
}

uint64_t sub_100249064@<X0>(int a1@<W8>)
{
  v4 = STACK[0xB68];
  v5 = STACK[0xB68] + 4;
  v6 = STACK[0x954];
  LODWORD(STACK[0x6B4]) = ((a1 - 1276775643) & 0x4C1A1EDF ^ 0xE177B133) + LODWORD(STACK[0x954]);
  STACK[0x790] = STACK[0x960];
  v7 = v4 + ((13 * (a1 ^ 0xC0E)) ^ 0xC84DD0F4) + v6;
  STACK[0x7A8] = v7;
  v8 = STACK[0xB78] + v1;
  STACK[0x6C0] = v8 + 100;
  STACK[0x748] = v8 + 120;
  STACK[0x658] = v2 - 352;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v3 + 8 * (((2 * v10) | (4 * v10)) ^ a1)))();
}

uint64_t sub_100249118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x638] = a5 + 0xCAA10EED4673C81;
  *(a5 + 96) = -566298511;
  *(a5 + 68) = 763990317;
  *(a5 + 64) = -2055162102;
  *(a5 + 72) = 0x8723B4A20FAB3C2ALL;
  *(a5 + 80) = 0x78DC4B5DF054C3D5;
  *(a5 + 88) = -1422065957;
  *(a5 + 92) = 324096655;
  STACK[0x758] = v5;
  return (*(v8 + 8 * (((v7 - 934429555 + ((v6 - 1015352188) & 0x3C851EFEu) > 0xFFFFFFBF) * (v6 ^ 0xB75)) ^ v6)))();
}

uint64_t sub_10024928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v9 + 8 * v7);
  LODWORD(STACK[0x72C]) = a7;
  STACK[0x6B8] = v10;
  return (*(v9 + 8 * ((v7 + 3686) ^ v7)))(a1, a2, a3, v8);
}

uint64_t sub_1002492D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v7 + 8 * v5);
  LODWORD(STACK[0x5E0]) = v6 - 5624;
  v9 = 473 * (v6 ^ 0x1ED9);
  LODWORD(STACK[0x5F8]) = v6 - 4432;
  LODWORD(STACK[0x600]) = v9;
  LODWORD(STACK[0x5F0]) = v9 ^ 0x1BA5;
  LODWORD(STACK[0x5E8]) = v6 + 1127149061;
  LODWORD(STACK[0x5D8]) = (v6 - 6869) | 0x9E0;
  LODWORD(STACK[0x5D0]) = v6 - 5060;
  LODWORD(STACK[0x5C8]) = v6 - 5473;
  return v8(a1, a2, a3, a4, a5, 4294967207);
}

uint64_t sub_1002493C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  STACK[0x658] += 320;
  v9 = *(a4 + v8);
  LODWORD(STACK[0x7BC]) = v9;
  LODWORD(STACK[0x674]) = *(a4 - 0xCAA10EED4673C35);
  LODWORD(STACK[0x66C]) = *(a4 + v5);
  LODWORD(STACK[0x6C8]) = *(a4 - 0xCAA10EED4673C2DLL);
  v10 = *(a4 - 0xCAA10EED4673C21) ^ 0x73;
  if (v10 == 2)
  {
    return (*(v7 + 8 * SLODWORD(STACK[0x5E0])))();
  }

  if (v10 == 1)
  {
    STACK[0x610] = a4;
    return (*(v7 + 8 * SLODWORD(STACK[0x5D0])))();
  }

  else
  {
    v12 = (*(a4 + v8) ^ v4) + (v9 ^ v4);
    *(a4 + v8) = v12 + v4 - (v6 & (2 * v12));
    v13 = (*(a4 - 0xCAA10EED4673C35) ^ v4) + (LODWORD(STACK[0x674]) ^ v4);
    *(a4 - 0xCAA10EED4673C35) = v13 + v4 - (v6 & (2 * v13));
    v14 = (*(a4 - 0xCAA10EED4673C31) ^ v4) + (LODWORD(STACK[0x66C]) ^ v4);
    *(a4 - 0xCAA10EED4673C31) = v14 + v4 - (v6 & (2 * v14));
    v15 = (*(a4 - 0xCAA10EED4673C2DLL) ^ v4) + (LODWORD(STACK[0x6C8]) ^ v4);
    *(a4 - 0xCAA10EED4673C2DLL) = v15 + v4 - (v6 & (2 * v15));
    STACK[0x658] -= 320;
    return (STACK[0x6B8])();
  }
}

uint64_t sub_10024A258()
{
  v3 = STACK[0x5E8] & 0xBCD0F36F;
  LODWORD(STACK[0x650]) = v0 + 64;
  v4 = (v3 ^ 0x84AC0786) + v0;
  v5 = LODWORD(STACK[0x740]) - 1664791838;
  v6 = v4 < 0xFCDCCB01;
  v7 = v4 > v5;
  if (v6 != v5 < 0xFCDCCB01)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((103 * v7) ^ (v1 - 1565))))();
}

uint64_t sub_10024A324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = LODWORD(STACK[0x6B4]) + 2101180150;
  v9 = a7 + 1008366712 > v8;
  if ((a7 + 1008366712) < 0x96674B38 != v8 < 0x96674B38)
  {
    v9 = (a7 + 1008366712) < 0x96674B38;
  }

  return (*(v7 + 8 * ((!v9 * LODWORD(STACK[0x5F0])) ^ LODWORD(STACK[0x5F8]))))();
}

uint64_t sub_10024A46C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v10 = v8 + a1 < (a5 + 1157143588);
  if (v8 + a1 < a7 != a5 + 1157143588 < a7 + ((v7 + 727616793) & 0xD4A15E3A) - 2602)
  {
    v10 = a5 + 1157143588 < a7 + ((v7 + 727616793) & 0xD4A15E3A) - 2602;
  }

  return (*(v9 + 8 * ((55 * v10) ^ (v7 - 2496))))();
}

uint64_t sub_10024A528@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v16 = v3 < v5;
  v17 = (a3 + v11 + 3553);
  v18 = *(v7 + v17);
  v19 = v17 & v9;
  v20 = STACK[0x630];
  *(v8 + (v4 + v14)) = *(v10 + v19) ^ v18 ^ *(v19 + v15 + 1) ^ (((v4 + v14) & 0xF) * a1) ^ *(v12 + v19) ^ (v19 * a1) ^ *(v10 + ((v4 + v14) & 0xFLL)) ^ *(((v4 + v14) & 0xFLL) + v15 + 1) ^ *(v13 + ((v4 + v14) & 0xFLL));
  if (v16 == (v11 + 752834768) < 0xA5101C43)
  {
    v16 = v11 + 752834768 < v3;
  }

  return (*(v20 + 8 * ((v16 * a2) ^ v6)))();
}

uint64_t sub_10024A5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = (*(STACK[0x610] - 0xCAA10EED4673C3DLL) ^ 0x2D89912D) + a5 - 1612152863;
  v8 = v7 + ((v5 + 440464821) & 0xE5BF1EF6 ^ 0x2D898FFB) - ((2 * v7) & 0x5B13225A);
  *(STACK[0x610] - 0xCAA10EED4673C3DLL) = v8;
  return (*(v6 + 8 * ((10986 * ((v8 ^ 0x2D89912D) < a5 - 1612152863)) ^ v5)))();
}

uint64_t sub_10024A71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = (v8 - 2118997047) & 0x7E4D3F6D;
  v11 = (v8 - 7893) | 0x10E0;
  v12 = v8 - 3621;
  v13 = v10 - 74272837 + a8;
  v14 = a7 - 1167083766 < v13;
  if ((a7 - 1167083766) < 0x14BC8E0A != v13 < 0x14BC8E0A)
  {
    v14 = v13 < 0x14BC8E0A;
  }

  return (*(v9 + 8 * ((v14 * (v11 + 8170)) ^ v12)))();
}

uint64_t sub_10024A804@<X0>(int a1@<W1>, char a2@<W2>, int a3@<W3>, int a4@<W6>, uint64_t a5@<X8>)
{
  v15 = v7 < v6;
  v16 = (a3 + a1);
  *(v10 + v16) = *(v11 + (v16 & 0xF)) ^ *(v9 + (a4 + v13)) ^ *((v16 & 0xF) + v14 + 1) ^ ((v16 & 0xF) * a2) ^ *(a5 + (v16 & 0xF));
  if (v15 == v5 + a4 + 1 < v6)
  {
    v15 = v5 + a4 + 1 < v7;
  }

  return (*(v12 + 8 * (((16 * v15) | (v15 << 6)) ^ v8)))();
}

uint64_t sub_10024A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (*(v9 - 0xCAA10EED4673C3DLL) ^ 0x2D89912D) + a8 - 422171714 + 763990317 - ((v8 ^ 0x5B132857) & (2 * ((*(v9 - 0xCAA10EED4673C3DLL) ^ 0x2D89912D) + a8 - 422171714)));
  *(v9 - 0xCAA10EED4673C3DLL) = v11;
  return (*(v10 + 8 * ((8862 * ((v11 ^ 0x2D89912Du) < a8 - 422171714)) ^ v8)))();
}

uint64_t sub_10024A9A0()
{
  STACK[0x738] = *(v4 + 8 * v0);
  STACK[0x660] = v3;
  v5 = STACK[0x658];
  STACK[0x6D8] = STACK[0xB78] + STACK[0x658];
  STACK[0x658] = v5 + 32;
  STACK[0x720] = v2;
  return (*(v4 + 8 * (((v2 != 0) * ((v1 + 4723) ^ 0x1ECC)) ^ v1)))();
}

uint64_t sub_10024AA2C()
{
  STACK[0x798] = *(v4 + 8 * v2);
  STACK[0x730] = v3;
  STACK[0x718] = v0;
  return (*(v4 + 8 * (((v0 == 0) ^ (v1 + 1)) & 1 ^ v1)))();
}

uint64_t sub_10024AA64()
{
  v7 = ((((v0 - 818554539) & 0x30CA1ED7) + 6226) ^ (v0 + 1527009653) & 0xA4FBBEF6) & *(v4 + v1);
  *(v4 + (v7 ^ 0x2D) - 0xCAA10EED4673C81) = *(v2 + ((v7 ^ 0x2D) & 0xF)) ^ *(((v7 ^ 0x2D) & 0xF) + v6 + 1) ^ *(v3 + ((v7 ^ 0x2D) & 0xF)) ^ (85 * ((v7 ^ 0x2D) & 0xF)) ^ 0x80;
  return (*(v5 + 8 * ((3905 * ((v7 ^ 0x2D) > 0x37)) ^ (v0 - 3601))))();
}

uint64_t sub_10024AB5C()
{
  v3 = 62 - v1;
  if (v1 > 0x3EuLL)
  {
    v3 = 0;
  }

  return (*(v2 + 8 * ((16381 * ((v3 + 1) > 0xF)) ^ (v0 + 8096))))();
}

uint64_t sub_10024ABB8()
{
  v3 = 62 - v0;
  if (v0 > 0x3EuLL)
  {
    v3 = 0;
  }

  v5 = v3 > 0xF || ((14 - v0) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * (((((((v1 ^ 0xDF) - 1459150832) & 0x56F8CAFD) + 5282) ^ 0x1EC1) * v5) ^ v1 ^ 0xDF)))();
}

uint64_t sub_10024AC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v5 + 126 - 25 * (v6 ^ 0x31)) & 0xF;
  v9 = STACK[0x520] - 0xCAA10EED4673C80 + a4 + v4 - v8;
  v10 = STACK[0x518] - 0xCAA10EED4673C81 + a4 + v4 - v8;
  v11 = STACK[0x510] - 0xCAA10EED4673C80 + a4 + v4 - v8;
  v14 = v9 < 8 || v10 < ((v6 - 1983556437) & 0x763ABFF6 ^ 0x1EDEuLL) || v11 < 8;
  return (*(v7 + 8 * ((108 * v14) ^ v6)))();
}

uint64_t sub_10024ACD8(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a2.n128_u16[0] = 21845;
  a2.n128_u8[2] = 85;
  a2.n128_u8[3] = 85;
  a2.n128_u8[4] = 85;
  a2.n128_u8[5] = 85;
  a2.n128_u8[6] = 85;
  a2.n128_u8[7] = 85;
  return (*(v8 + 8 * v7))((v7 - 2) ^ 0x28D9u, v6 - 0xCAA10EED4673C81 + a6 + 1, xmmword_1002A9AA0, a2);
}

uint64_t sub_10024AD40(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4)
{
  v14.val[0].i64[0] = (v4 + v6 + 1) & 0xF;
  v14.val[0].i64[1] = (v8 + v6 + 13) & 0xF;
  v14.val[1].i64[0] = (v8 + v6 + 14) & 0xF;
  v14.val[1].i64[1] = (v8 + v6 - 1) & 0xF;
  v14.val[2].i64[0] = (v8 + v6) & 0xF;
  v14.val[2].i64[1] = (v8 + v6 + 1) & 0xF;
  v14.val[3].i64[0] = (v8 + v6 + 2) & 0xF;
  v14.val[3].i64[1] = (v8 + v6 + (v5 ^ 2)) & 0xF;
  *(a4 + v6) = veor_s8(veor_s8(veor_s8(*(v14.val[0].i64[0] + v12 + 1), *(v9 + v14.val[0].i64[0])), *(v10 + v14.val[0].i64[0])), vmul_s8(*&vqtbl4q_s8(v14, a1), a2));
  return (*(v11 + 8 * (v5 | (2 * (v7 != v6)))))();
}

uint64_t sub_10024B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = (a5 + 12) & 0xF;
  v9 = STACK[0x520] + v5 - 0xCAA10EF1AD71795 + a4 - v8;
  v10 = a4 + v5 + STACK[0x510] - v8;
  v11 = STACK[0x518] + a4 + v5 + -v8 - 0xCAA10EF1AD71796;
  v14 = v9 > 7 && v11 > 7 && v10 + (((v6 + 1197) | 0x1082) ^ 0xF355EF10E528F6BDLL) >= (v6 ^ 0x9AFuLL);
  return (*(v7 + 8 * ((13 * v14) ^ v6)))();
}

uint64_t sub_10024B0E0(uint64_t a1, double a2, __n128 a3, uint64_t a4, int a5, uint64_t a6)
{
  a3.n128_u16[0] = 21845;
  a3.n128_u8[2] = 85;
  a3.n128_u8[3] = 85;
  a3.n128_u8[4] = 85;
  a3.n128_u8[5] = 85;
  a3.n128_u8[6] = 85;
  a3.n128_u8[7] = 85;
  return (*(v9 + 8 * a5))((844 * (a5 ^ 0x6DA) - 1680) | 0x8A5u, (((844 * (a5 ^ 0x6DAu)) ^ 0xFFFFFFFFFFFFF960) & v8) - 8, a6 + v7 + a1, v7 + v6, xmmword_1002A9AA0, a3);
}

uint64_t sub_10024B13C(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, int8x16_t a5, int8x8_t a6)
{
  v14.val[0].i64[0] = (a4 + v7) & 0xF;
  v14.val[0].i64[1] = (v6 + v7 + 13) & 0xF;
  v14.val[1].i64[0] = (v6 + v7 + (a1 ^ 3)) & 0xF;
  v14.val[1].i64[1] = (v6 + v7 - 1) & 0xF;
  v14.val[2].i64[0] = (v6 + v7) & 0xF;
  v14.val[2].i64[1] = (v6 + v7 + 1) & 0xF;
  v14.val[3].i64[0] = (v6 + v7 + 2) & 0xF;
  v14.val[3].i64[1] = (v6 + v7 + 3) & 0xF;
  *(a3 + v7) = veor_s8(veor_s8(veor_s8(*(v14.val[0].i64[0] + v12 + 1), *(v9 + v14.val[0].i64[0])), *(v10 + v14.val[0].i64[0])), vmul_s8(*&vqtbl4q_s8(v14, a5), a6));
  return (*(v11 + 8 * (v8 | ((a2 != v7) << 6))))();
}

uint64_t sub_10024B2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 0xCAA10EED4673C21) ^ 0x73;
  if (v6 == 1)
  {
    v11 = *(a4 - 0xCAA10EED4673C3DLL);
    *(a4 - 0xCAA10EED4673C49) = (8 * v11) ^ 0x8F;
    *(a4 - 0xCAA10EED4673C48) = (v11 >> 5) ^ 0x58;
    *(a4 - 0xCAA10EED4673C47) = (v11 >> 13) ^ 0x1E;
    *(a4 - 0xCAA10EED4673C46) = (v11 >> 21) ^ 0x78;
    v12 = *(a4 - 0xCAA10EED4673C41);
    HIDWORD(v13) = v12 ^ 0xAAAAAAAA;
    LODWORD(v13) = v11 ^ 0x20000000;
    *(a4 - 0xCAA10EED4673C45) = (v13 >> 29) ^ 0x61;
    *(a4 - 0xCAA10EED4673C44) = (v12 >> 5) ^ 0x19;
    *(a4 - 0xCAA10EED4673C43) = (v12 >> 13) ^ 0x23;
    *(a4 - 0xCAA10EED4673C42) = (v12 >> 21) ^ 0x30;
    return (*(v5 + 8 * (v4 - 4920)))();
  }

  else if (v6 == 2)
  {
    v7 = *(a4 - 0xCAA10EED4673C41);
    *(a4 - 0xCAA10EED4673C49) = (v7 >> 21) ^ 0xCB;
    *(a4 - 0xCAA10EED4673C48) = (v7 >> 13) ^ 0xD4;
    *(a4 - 0xCAA10EED4673C47) = (v7 >> 5) ^ 0xEA;
    v8 = *(a4 - 0xCAA10EED4673C3DLL);
    HIDWORD(v9) = v7 ^ 0xAAAAAAAA;
    LODWORD(v9) = v8 ^ 0x20000000;
    *(a4 - 0xCAA10EED4673C46) = (v9 >> 29) ^ 0x14;
    *(a4 - 0xCAA10EED4673C45) = (v8 >> 21) ^ 0xD;
    *(a4 - 0xCAA10EED4673C44) = (v8 >> 13) ^ 0xED;
    *(a4 - 0xCAA10EED4673C43) = (v8 >> 5) ^ 0xAF;
    *(a4 - 0xCAA10EED4673C42) = (8 * v8) ^ 0x74;
    return (*(v5 + 8 * (v4 - 4920)))();
  }

  else
  {
    STACK[0x6B8] = *(v5 + 8 * (v4 - 7765));
    return (*(v5 + 8 * (((v4 - 517) ^ 0x12F4) + v4 - 7765)))(a1, a2, a3, a4, a4 - 0xCAA10EED4673C81);
  }
}

uint64_t sub_10024B878@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v19 = v14 + v10;
  v20 = *(v13 + 4 * ((v14 + v10) >> a1));
  *(v12 + (v14 + v10)) = *(v15 + ((v14 + v10) & 0xE)) ^ *(v18 + ((v14 + v10) & 0xE) + 1) ^ HIBYTE(v20) ^ *(v16 + ((v14 + v10) & 0xE)) ^ (((v14 + v10) & 0xE) * a2) ^ a3;
  *(v12 + (v19 + 1)) = (((v14 + v10 + 1) & 0xF) * a2) ^ BYTE2(v20) ^ *(v15 + ((v19 + 1) & 0xFLL)) ^ *(((v19 + 1) & 0xFLL) + v18 + 1) ^ *(STACK[0x628] + ((v19 + 1) & 0xFLL)) ^ 0xEE;
  v21 = STACK[0x628];
  *(v12 + (v19 + 2)) = (((v14 + v10 + 2) & 0xE) * a2) ^ BYTE1(v20) ^ *(v15 + ((v19 + 2) & 0xELL)) ^ *(v18 + ((v19 + 2) & 0xELL) + 1) ^ *(STACK[0x628] + ((v19 + 2) & 0xELL)) ^ 0x1F;
  v22 = (v14 + v10 + 3);
  *(v12 + v22) = v20 ^ ((v22 & 0xF) * a2) ^ *(v15 + (v22 & 0xF)) ^ *((v22 & 0xF) + v18 + 1) ^ *(v21 + (v22 & 0xF)) ^ a4;
  v23 = *(a8 + v8) + a6;
  v24 = v23 < v9;
  v25 = v14 + a5 < v23;
  if (v14 + a5 < v9 != v24)
  {
    v25 = v24;
  }

  return (*(v17 + 8 * ((v25 * a7) ^ v11)))();
}

uint64_t sub_10024BA30@<X0>(uint64_t a1@<X8>)
{
  v9 = v7 - 1;
  STACK[0x940] = v9;
  *(a1 + v9) = (v3 ^ v2) + (v1 ^ v4) * (v1 + 17) - (v5 & (2 * (v1 ^ v4) * (v1 + 17))) - 122;
  return (*(v8 + 8 * (((STACK[0x940] == 0) * v6) ^ v3)))();
}

uint64_t sub_10024BBB8@<X0>(uint64_t a1@<X8>)
{
  v12 = v4 > 0x6A987B0B;
  *(a1 + (v7 - 259449506)) = *(v8 + ((v7 + 94) & 0xF)) ^ *(v1 + (v7 - 259449506)) ^ *(((v7 + 94) & 0xF) + v11 + 1) ^ *(v9 + ((v7 - 259449506) & 0xFLL)) ^ (((v7 + 94) & 0xF) * (v2 + 9));
  if (v12 == v7 - 2047827373 < v3)
  {
    v12 = v7 - 2047827373 < v5;
  }

  return (*(v10 + 8 * ((v12 * v6) ^ v2)))();
}

uint64_t sub_10024BD60@<X0>(unint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v10 = (v4 + v3 + v5);
  v11 = v6 - (v10 + a3);
  v12 = v9 - (v10 + a3);
  v13 = v7 - (v10 + a3);
  v14 = (19 * (a2 ^ 0x20E1) - 1638) & v10;
  v16 = a1 > 0xF && (v12 + v14 + 1) > 0xF && v11 + v14 >= (((a2 - 5088) | 0x1200u) ^ 0x1EC6uLL);
  v17 = v13 + v14;
  v19 = v16 && v17 > 0xF;
  return (*(v8 + 8 * ((112 * v19) ^ a2)))();
}

uint64_t sub_10024BE40(__n128 a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x5D8]) = v3 + 11;
  STACK[0x610] = v3 & 0xF ^ 8u;
  STACK[0x600] = (v3 + 7) & 0xF;
  STACK[0x5F8] = (v3 + 6) & 0xF;
  STACK[0x5F0] = (v3 + 5) & 0xF;
  STACK[0x5E0] = (v3 + 4) & 0xF;
  STACK[0x5E8] = (v3 + 2) & 0xF;
  v5.n128_u64[0] = STACK[0x610];
  v5.n128_u64[1] = STACK[0x600];
  v6.n128_u64[0] = STACK[0x5F8];
  v6.n128_u64[1] = STACK[0x5F0];
  v7.n128_u64[0] = STACK[0x5E0];
  v7.n128_u64[1] = (v3 + 3) & 0xF;
  v10.val[0].i64[0] = STACK[0x5E8];
  v10.val[0].i64[1] = (v3 + 1) & 0xF;
  v10.val[1].i64[0] = v3 & 0xF;
  v10.val[1].i64[1] = (v3 - 1) & 0xF;
  v10.val[2].i64[0] = (v3 + 14) & 0xF;
  v10.val[2].i64[1] = (v3 + 13) & 0xF;
  v10.val[3].i64[0] = (v3 + 12) & 0xF;
  v10.val[3].i64[1] = STACK[0x5D8] & 0xF;
  v8.n128_u64[0] = 0x5555555555555555;
  v8.n128_u64[1] = 0x5555555555555555;
  return (*(STACK[0x630] + 8 * a3))(v4 & 0xFFFFFFF0, a1, v5, v6, v7, xmmword_1002A9AB0, vqtbl4q_s8(v10, xmmword_1002A9AB0), v8);
}

uint64_t sub_10024BF7C(int a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, double a9, __n128 a10, __n128 a11, __n128 a12, int8x16_t a13, double a14, int8x16_t a15)
{
  v21 = (a8 - a3);
  v22 = (a8 - a3) & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a10 - 1), a13).u64[0];
  *&v24.i64[1] = a14;
  v25 = vrev64q_s8(vmulq_s8(v24, a15));
  *(a7 + v21) = veorq_s8(veorq_s8(veorq_s8(*(v17 + (v21 & 0xF) - 15), *(a4 + v21)), veorq_s8(*((v21 & 0xF) + v20 - 14), *(v18 + (v21 & 0xF) - 15))), vextq_s8(v25, v25, 8uLL));
  return (*(v19 + 8 * (((a3 + v15 + a6 == a1) * v16) ^ a2)))();
}

uint64_t sub_10024C090@<X0>(int a1@<W0>, int a2@<W7>, uint64_t a3@<X8>, __n128 a4@<Q1>)
{
  LODWORD(STACK[0x5F0]) = v6;
  v8 = (a2 - 3216) & v6;
  STACK[0x610] = v4 - 7;
  STACK[0x600] = a3 - 7;
  v9 = *(v7 + 8 * a2);
  LODWORD(STACK[0x5F8]) = v8;
  LODWORD(STACK[0x5E8]) = a2 - 594;
  a4.n128_u16[0] = 21845;
  a4.n128_u8[2] = 85;
  a4.n128_u8[3] = 85;
  a4.n128_u8[4] = 85;
  a4.n128_u8[5] = 85;
  a4.n128_u8[6] = 85;
  a4.n128_u8[7] = 85;
  return v9(-a1, (v5 - v8), xmmword_1002A9AA0, a4);
}

uint64_t sub_10024C110(int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10)
{
  v19 = (a1 + v17);
  v22.val[0].i64[0] = (a1 + v17) & 0xF;
  v22.val[0].i64[1] = (a1 + v15) & 0xF;
  v22.val[1].i64[0] = (a1 + v10) & 0xF ^ 8;
  v22.val[1].i64[1] = (a1 + v14) & 0xF;
  v20 = STACK[0x630];
  v22.val[2].i64[0] = (a1 + a10) & 0xF;
  v22.val[2].i64[1] = (a1 + v11) & 0xF;
  v22.val[3].i64[0] = (a1 + v13) & 0xF;
  v22.val[3].i64[1] = (a1 + v12) & 0xF;
  *(STACK[0x600] + v19) = veor_s8(veor_s8(veor_s8(*(v16 + (v19 & 0xF) - 7), *(STACK[0x610] + v19)), veor_s8(*((v19 & 0xF) + STACK[0x620] - 6), *(STACK[0x628] + (v19 & 0xF) - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v22, a2), a3)));
  return (*(v20 + 8 * ((196 * (a1 != a9)) ^ v18)))();
}

uint64_t sub_10024C2FC()
{
  v3 = STACK[0x6C0];
  v4 = STACK[0x748];
  v5 = STACK[0x790];
  *(v2 - 152) = (v0 + 1274) ^ (295004707 * ((((v2 - 176) | 0x657730EE) - ((v2 - 176) & 0x657730EE)) ^ 0xD288473));
  *(v2 - 160) = v4;
  *(v2 - 176) = v5;
  *(v2 - 144) = v3;
  v6 = (*(v1 + 8 * (v0 + 2853)))(v2 - 176);
  return (*(v1 + 8 * ((76 * (*(v2 - 168) != ((v0 - 1932) ^ 0x41682D6))) ^ (v0 - 1692))))(v6);
}

uint64_t sub_10024C3C4()
{
  v1[16] = v2[16];
  v1[17] = v2[17];
  v1[18] = v2[18];
  v1[19] = v2[19];
  return (*(v3 + 8 * v0))();
}

uint64_t sub_10024C4E4()
{
  STACK[0x658] = v1 - 144;
  if (STACK[0xB68] + (*STACK[0xB70] - 2059249624))
  {
    v3 = STACK[0x968] == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || STACK[0x970] == 0x2B1A0449E8A6C928;
  return (*(v2 + 8 * ((26 * v5) ^ v0)))();
}

uint64_t sub_10024C58C()
{
  STACK[0x620] = v2;
  STACK[0x610] = v0;
  LODWORD(STACK[0x628]) = v1;
  v6 = (*(v5 + 8 * (v3 ^ 0x36DE)))(((v3 - 4957) ^ 0x1E57306Au) + v4);
  STACK[0x7C8] = v6 + 0x1A3404AE6F02C5F7;
  return (*(v5 + 8 * (((v3 ^ (v6 == 0)) & 1 | (((v3 ^ (v6 == 0)) & 1) << 7)) ^ v3)))();
}

uint64_t sub_10024C658(uint64_t a1)
{
  v5 = 1110906037 * ((v4 - 1625224768 - 2 * ((v4 - 176) & 0x9F210A70)) ^ 0x166666C0);
  v6 = STACK[0x620];
  *(v4 - 152) = STACK[0x620];
  *(v4 - 144) = 0x7F57120CD3A4C76ELL;
  *(v4 - 160) = v5 + v2 + 3967;
  *(v4 - 168) = v1 - v5 + 1842294364;
  *(v4 - 164) = v5 ^ 0x3593EA16;
  *(v4 - 176) = v6;
  (*(v3 + 8 * (v2 + 7662)))(v4 - 176);
  return (*(v3 + 8 * (((*(v4 - 156) != 68588956) * ((13 * ((v2 - 922815749) & 0x37011BBB ^ 0x1B08)) ^ 0x15EC)) | v2)))(a1);
}

uint64_t sub_10024C750()
{
  v3 = STACK[0xB78] + STACK[0x658];
  STACK[0x658] += ((v2 ^ 0x3054u) - 229) ^ 0x24D4;
  return (*(v1 + 8 * ((895 * (v0 - 0x2B1A0449E8A6C928 <= v3)) ^ v2)))();
}

uint64_t sub_10024C7FC(uint64_t a1, uint64_t a2)
{
  v8 = STACK[0x540] - a2;
  v10 = (v8 + v2) >= 0x10 && v6 + STACK[0x540] - a2 + (((v4 - 2672) | 0x482u) ^ 0xD4E5FBB61759280ELL) >= 0x10 && (v8 + v5 + 5) >= 0x10;
  v11 = v8 + v3 + 3;
  v13 = !v10 || v11 < 0x10;
  return (*(v7 + 8 * ((39 * v13) ^ v4)))();
}

uint64_t sub_10024CA28()
{
  *(v1 - 0x74B7A6D37B83F853) = 0;
  *(v1 - 0x74B7A6D37B83F84BLL) = 0x7B92D8BA8CCA8151;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10024CB28()
{
  v6 = 678427121 * ((((2 * (v5 - 176)) | 0xE1B99BC0) - (v5 - 176) - 1893518816) ^ 0xE20697FA);
  *(v5 - 176) = &STACK[0xBB0];
  *(v5 - 168) = v6 - 805025901 + v0;
  *(v5 - 164) = v3 - 68598086 + v6 + (v0 ^ 0x1D4B) + 3439;
  (*(v4 + 8 * (v0 + 7764)))(v5 - 176);
  v7 = (*(v4 + 8 * (v0 + 7739)))(STACK[0x588] - 1514018299, v1 + v2, 16, *(&off_1002DD400 + (v0 ^ 0xB61)) - 687141714, &STACK[0xBB0], 8);
  return (*(v4 + 8 * v0))(v7);
}

uint64_t sub_10024CC4C()
{
  v2 = (*(v1 + 8 * (v0 + 6057)))();
  STACK[0x768] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10024CD6C()
{
  STACK[0x9B0] = *(v2 + v3);
  STACK[0x7B0] = v2;
  return (*(v5 + 8 * (((v0 & ~((v1 - 387) ^ (v2 == v4))) * (v1 - 2586)) ^ v1)))();
}

uint64_t sub_10024CE80(int a1)
{
  v3 = STACK[0x5B8];
  *(v3 + 16) = 646931922;
  *(v3 + 24) = v1;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_10024D04C@<X0>(int a1@<W8>)
{
  v3 = 0;
  v4 = *(*(STACK[0x548] - 543004047) + (*(STACK[0x550] - 1805449270) & 0x497D621C));
  STACK[0x9B8] = 0;
  v5 = 16777619 * ((1232953884 * v4 + 7) ^ (1232953884 * v4)) % 7;
  v6 = 16777619 * ((1232953884 * v4 + 6) ^ (1232953884 * v4)) % 6;
  v7 = 16777619 * ((1232953884 * v4 + 5) ^ (1232953884 * v4)) % 5;
  v8 = *(&STACK[0x9B8] | v5);
  *(&STACK[0x9B8] | v5) = STACK[0x9BF];
  v9 = *(&STACK[0x9B8] | v6);
  *(&STACK[0x9B8] | v6) = STACK[0x9BE];
  v10 = *(&STACK[0x9B8] | v7);
  *(&STACK[0x9B8] | v7) = STACK[0x9BD];
  STACK[0x9C0] = v1;
  v11 = 16777619 * (((1232953884 * v4) | 3) ^ (1232953884 * v4)) % 3;
  v12 = vdup_n_s32(1232953884 * v4);
  v13.i32[0] = v12.i32[0];
  v13.i32[1] = (1232953884 * v4) | 1;
  LOBYTE(STACK[0x9BF]) = v8;
  v14 = veor_s8(vmul_s32(v13, v12), v12);
  LOBYTE(STACK[0x9BE]) = v9;
  LOBYTE(STACK[0x9BD]) = v10;
  v15 = STACK[0x9B8];
  LOBYTE(STACK[0x9B8]) = STACK[0x9BC];
  LOBYTE(STACK[0x9BC]) = v15;
  v16 = *(&STACK[0x9B8] | v11);
  *(&STACK[0x9B8] | v11) = STACK[0x9BB];
  LOBYTE(STACK[0x9BB]) = v16;
  v17 = STACK[0x9B9];
  LOBYTE(STACK[0x9BA]) = STACK[0x9B8];
  LOWORD(STACK[0x9B8]) = v17;
  STACK[0x9B8] = vmla_s32(v14, STACK[0x9B8], vdup_n_s32(0x1000193u));
  v18 = STACK[0x9C0];
  v19 = (1232953884 * STACK[0x9C0]) ^ v4;
  v20 = vdupq_n_s32(v19);
  v21 = xmmword_1002A9AD0;
  v22 = xmmword_1002A9AE0;
  v23 = xmmword_1002A9AF0;
  v24 = xmmword_1002A9B00;
  v25.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v26.i64[0] = 0x9393939393939393;
  v26.i64[1] = 0x9393939393939393;
  v27.i64[0] = 0x1000000010;
  v27.i64[1] = 0x1000000010;
  do
  {
    v28 = *(v18 + v3);
    v48.val[1] = veorq_s8(vqtbl1q_s8(v28, xmmword_1002A9B50), veorq_s8(v20, vmulq_s32(vaddq_s32(v23, v20), vsubq_s32(v23, v20))));
    v48.val[0] = veorq_s8(vqtbl1q_s8(v28, xmmword_1002A9B60), veorq_s8(v20, vmulq_s32(vaddq_s32(v24, v20), vsubq_s32(v24, v20))));
    v48.val[2] = veorq_s8(vqtbl1q_s8(v28, xmmword_1002A9B70), veorq_s8(v20, vmulq_s32(vaddq_s32(v22, v20), vsubq_s32(v22, v20))));
    v48.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v28, xmmword_1002A9B80), v20), vmulq_s32(vaddq_s32(v21, v20), vsubq_s32(v21, v20)));
    *(v18 + v3) = vmulq_s8(vqtbl4q_s8(v48, xmmword_1002A9B10), v26);
    v3 += 16;
    v24 = vaddq_s32(v24, v27);
    v23 = vaddq_s32(v23, v27);
    v22 = vaddq_s32(v22, v27);
    v21 = vaddq_s32(v21, v27);
  }

  while (v3 != 32);
  v29 = 0;
  v30 = xmmword_1002A9B20;
  v31 = vdupq_n_s32(v19);
  v32 = xmmword_1002A9B30;
  v33 = v18 + 32;
  v34.i64[0] = 0x800000008;
  v34.i64[1] = 0x800000008;
  do
  {
    v25.i64[0] = *(v33 + v29);
    v47.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v25, xmmword_1002A9B50), v31), vmulq_s32(vaddq_s32(v30, v31), vsubq_s32(v30, v31)));
    v47.val[0] = veorq_s8(vqtbl1q_s8(v25, xmmword_1002A9B60), veorq_s8(v31, vmulq_s32(vaddq_s32(v32, v31), vsubq_s32(v32, v31))));
    v25 = vqtbl2q_s8(v47, xmmword_1002A9B40);
    *(v33 + v29) = vmul_s8(*v25.i8, 0x9393939393939393);
    v32 = vaddq_s32(v32, v34);
    v30 = vaddq_s32(v30, v34);
    v29 += 8;
  }

  while (v29 != 8);
  v35 = 4;
  do
  {
    v36 = 16777619 * ((v19 + v35) ^ v19) % v35;
    v37 = *(v18 + 8 * v36) ^ *(v18 + 8 * v35);
    *(v18 + 8 * v35) = v37;
    v38 = *(v18 + 8 * v36) ^ v37;
    *(v18 + 8 * v36) = v38;
    *(v18 + 8 * v35) ^= v38;
    v39 = v35-- + 1;
  }

  while (v39 > 2);
  v40 = *(&STACK[0x9C0] + v5);
  *(&STACK[0x9C0] + v5) = STACK[0x9C7];
  LOBYTE(STACK[0x9C7]) = v40;
  v41 = *(&STACK[0x9C0] + v6);
  *(&STACK[0x9C0] + v6) = STACK[0x9C6];
  LOBYTE(STACK[0x9C6]) = v41;
  v42 = *(&STACK[0x9C0] + v7);
  *(&STACK[0x9C0] + v7) = STACK[0x9C5];
  LOBYTE(STACK[0x9C5]) = v42;
  v43 = STACK[0x9C0];
  LOBYTE(STACK[0x9C0]) = STACK[0x9C4];
  LOBYTE(STACK[0x9C4]) = v43;
  v44 = *(&STACK[0x9C0] + v11);
  *(&STACK[0x9C0] + v11) = STACK[0x9C3];
  LOBYTE(STACK[0x9C3]) = v44;
  v45 = STACK[0x9C1];
  LOBYTE(STACK[0x9C2]) = STACK[0x9C0];
  LOWORD(STACK[0x9C0]) = v45;
  STACK[0x9C0] = vmla_s32(v14, STACK[0x9C0], vdup_n_s32(0x1000193u));
  *(STACK[0x580] - 1292128150) = STACK[0x9C0] ^ STACK[0x9B8];
  return (*(v2 + 8 * a1))();
}

uint64_t sub_10024D508()
{
  (*(v1 + 8 * (v0 ^ 0x377F)))(STACK[0x598] - 515190054, sub_100191B00);
  v2 = (*(v1 + 8 * (v0 ^ 0x377A)))(STACK[0x560] - 1423619907);
  return (*(v1 + 8 * (v0 - 3934)))(v2);
}

void sub_10024D570()
{
  if (v4 == 68543910)
  {
    v0 = 68543910;
  }

  else
  {
    v0 = 68588956;
  }

  if ((*(v3 + 1) + v2) == 21)
  {
    v1 = v0;
  }

  else
  {
    v1 = v4;
  }

  *(v3 + 4) = v1;
}

uint64_t sub_10024D5F4(uint64_t a1, uint64_t a2)
{
  v8 = &STACK[0xBF0] + a2;
  v9 = &STACK[0xBF0] + a2 + 0x2B1A0449E8A6C928 - v6;
  v10 = &STACK[0xBF0] + a2 - v2;
  v11 = &v8[-v4 - 5];
  v12 = &v8[-v3 - 3];
  v16 = v9 > 0xF && v10 > 0xF && v11 > 0xF && v12 >= (((v5 - 3813) | 0x812u) ^ 0x1EC6uLL);
  return (*(v7 + 8 * ((122 * v16) ^ v5)))();
}

uint64_t sub_10024D6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x7D0] += 16;
  STACK[0x7E8] = v9;
  STACK[0x810] = a1 + 0x77830BBBA4D853CALL;
  STACK[0x7E0] = a8 + 0x56150007E852A006;
  return (*(v10 + 8 * (v8 ^ (3681 * (a7 == a1)))))();
}

uint64_t sub_10024D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v11 = (v10 - 256 + v7);
  *v11 = *a7;
  v11[1] = a7[1];
  v11[2] = a7[2];
  v11[3] = a7[3];
  v11[4] = a7[4];
  v11[5] = a7[5];
  v11[6] = a7[6];
  v11[7] = a7[7];
  v11[8] = a7[8];
  v11[9] = a7[9];
  v11[10] = a7[10];
  v11[11] = a7[11];
  v11[12] = a7[12];
  v11[13] = a7[13];
  v11[14] = a7[14];
  v11[15] = a7[15];
  return (*(v9 + 8 * v8))(a1, a2, a3, a4, a5, a6, v11);
}

uint64_t sub_10024D7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x864]) = 1;
  if (a1)
  {
    v10 = a7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || a8 == 0;
  return (*(v9 + 8 * (((((25 * (v8 ^ 0x55)) ^ v12) & 1) * (((v8 ^ 0x755) + 4341) ^ 0x1129)) ^ v8)))();
}

uint64_t sub_10024D8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  LODWORD(STACK[0x600]) = v8;
  STACK[0x608] = a7;
  STACK[0x888] = 0;
  STACK[0x850] = 0x4C2CD2CC1C0BEF17;
  STACK[0x880] = 0x6DBD7C0F11DC9778;
  STACK[0x858] = 0;
  STACK[0x878] = 0x6677C41C9F90D9BALL;
  STACK[0x820] = 0xCA10C9D6C25FE94;
  STACK[0x800] = 0;
  STACK[0x7F0] = 0x52CE7B6EFB823F09;
  STACK[0x870] = 0xD0EC592E7DECE7;
  STACK[0x8A0] = 0x1239F996712BD8FLL;
  STACK[0x8A8] = 0x460406476BDB2B68;
  STACK[0x898] = 0x6F06F168B51E0639;
  STACK[0x838] = 0x166437AA264C5564;
  STACK[0x840] = 0x2B2CAA2D8CADDB0ALL;
  STACK[0x890] = 0x419DC62E5D3328BCLL;
  STACK[0x7F8] = 0;
  STACK[0x808] = 0;
  LODWORD(STACK[0x620]) = 1753 * (v7 ^ 0xFB8);
  LODWORD(STACK[0x864]) = 46609317;
  STACK[0x8B8] = 0;
  STACK[0x818] = 0x70588A91238395A1;
  STACK[0x8B0] = 0x2B6EB091E8CEE6B1;
  STACK[0x830] = 0;
  STACK[0x828] = 0x253C3AF178F7DB3DLL;
  STACK[0x848] = 0x568C0DE8C6360241;
  STACK[0x868] = 0;
  return (*(v9 + 8 * v7))(571455191, 1407263795, 894569303, 3820236132, 3687320436, 579987621, 3572251880);
}

uint64_t sub_10024DCCC()
{
  LODWORD(STACK[0x620]) = v0;
  v3 = (*(v1 + 8 * (v2 + 7323)))(1032);
  STACK[0x880] = v3 + 0x6DBD7C0F11DC9778;
  return (*(v1 + 8 * ((466 * (v3 != 0)) ^ v2)))();
}

uint64_t sub_10024DD58(uint64_t a1)
{
  v7 = STACK[0x620];
  v8 = ((2105540608 * v4) | ((-530529541 * v4 - 248378127) >> 9)) + 2021654528;
  v9 = ((2 * v8) & 0xBBCFBDCE) + (v8 ^ 0xDDE7DEE7);
  v10 = 822083584 * (LODWORD(STACK[0x620]) ^ 0xE96B05BF) - v9 + ((1988381489 * (LODWORD(STACK[0x620]) ^ 0xE96B05BF)) >> 8) - 572006681;
  v11 = (-1859698688 * v1 + 112214016) & 0xFFFF8000 | ((v6 - 551402339 * v1 + 1564742755) >> 18);
  v12 = v11 - ((2 * v11) & 0x90DD69CC) + 1215231206;
  v13 = ((1029881920 * v3) | ((-1728738559 * v3 + 1384671746) >> 26)) - 1575321472;
  v14 = ((2 * v13) & 0xEEE75676) + (v13 ^ 0xF773AB3B);
  HIDWORD(v15) = v14 + 143414469 + (v12 ^ (v10 - ((2 * v10) & 0x90DDE9CC) + 1215231206));
  LODWORD(v15) = -1010612783 * HIDWORD(v15);
  v16 = ((2 * (v15 >> 2)) & 0x63EC9DCA) + ((v15 >> 2) ^ 0xB1F64EE5);
  v17 = (1544028160 * (v12 ^ 0x486EF4E6)) | ((-1097593983 * (v12 ^ 0x486EF4E6)) >> 13);
  v18 = ((2 * v17) & 0xF77FABB2) + (v17 ^ 0x7BBFD5D9);
  v19 = ((-1610612736 * v14) | ((-908052923 * v14 - 1055627495) >> 3)) + 0x20000000;
  v20 = ((2 * v19) & 0xD3F0FFA6) + (v19 ^ 0x69F87FD3);
  v21 = ((-778439168 * v9) | ((99142907 * v9 + 598761347) >> 23)) - v20 + v18 - 1660853995 + v16;
  HIDWORD(v15) = v16 - 1;
  LODWORD(v15) = -481025015 * v16 + 689636851;
  v22 = ((2 * (v15 >> 2)) & 0xAFD7E6D2) + ((v15 >> 2) ^ 0x57EBF369);
  v23 = ((2 * ((975991808 * v21) | ((1892584221 * v21) >> 22))) & 0xBEBB5DAE) + (((975991808 * v21) | ((1892584221 * v21) >> 22)) ^ 0xDF5DAED7);
  v24 = ((-2003042304 * v20) | ((-665705945 * v20 - 527138597) >> 14)) + 57409536;
  v25 = ((2 * v24) & 0x7BD9D3D2) + (v24 ^ 0xBDECE9E9);
  v26 = v25 + 846568704 * v18 + ((2134013341 * v18 + 54242539) >> 24) + v22 + v23 + 1182162647;
  HIDWORD(v15) = v15 >> 2;
  LODWORD(v15) = 1982184289 * v22 - 1063382473;
  v27 = v15 >> 1;
  v28 = ((1423739776 * v23) | ((-458639081 * v23 + 1397549999) >> 25)) - 1502226560 - 2 * ((((1423739776 * v23) | ((-458639081 * v23 + 1397549999) >> 25)) - 1502226560) & 0x77EDF67F ^ ((-458639081 * v23 + 1397549999) >> 25) & 0x1F) - 135399840;
  v29 = ((2 * ((1831505920 * v26) | ((780587689 * v26) >> 20))) & 0xF3B7F89A) + (((1831505920 * v26) | ((780587689 * v26) >> 20)) ^ 0xF9DBFC4D);
  v30 = -180362909 * (v28 ^ (v27 - 135399840 + (~(2 * v27) | 0x1024133F) + 1)) - v29;
  v28 ^= 0xF7EDF660;
  v31 = ((838860800 * v25) | ((94044697 * v25 + 1828083263) >> 7)) - v27 - v29 + 2010905677 + v28;
  v32 = v31 - ((2 * v31) & 0x208DB9E8) - 1874404108;
  v33 = -244520233 * v30 - (v32 ^ 0x9046DCF4) - 639940949;
  v34 = v33 ^ 0x619D6BAC;
  LODWORD(STACK[0x448]) = v32;
  v35 = v33 ^ 0x619D6BAC ^ v32;
  v36 = ((2 * (v29 + 103023539 + (v33 ^ 0x57792BA))) & 0xFF26CBE2) + ((v29 + 103023539 + (v33 ^ 0x57792BA)) ^ 0x7F9365F1);
  v37 = ((2 * ((v33 ^ 0x57792BA) + v28)) & 0xDB52E5B6) + (((v33 ^ 0x57792BA) + v28) ^ 0xEDA972DB);
  LODWORD(STACK[0x4E8]) = v37;
  LODWORD(STACK[0x4C0]) = v35;
  LODWORD(STACK[0x440]) = v36;
  v38 = ((313418624 * v37) | ((1378180295 * v37 - 1671822397) >> 25)) + 755097984;
  v39 = (((v33 << 31) + ((v33 ^ 0x57792BA) << 28)) & 0xF0000000 | ((202351961 * (v33 ^ 0x57792BA)) >> 4)) + v38;
  v40 = ((-851443712 * v36) | ((-839903435 * v36 - 916242917) >> 10)) - 2034237440 - 2 * ((((-851443712 * v36) | ((-839903435 * v36 - 916242917) >> 10)) - 2034237440) & 0x5B7E759F ^ ((-839903435 * v36 - 916242917) >> 10) & 8) - 612469353;
  v41 = (1006632960 * (v35 ^ 0xF4AC25E2)) | ((-1669572913 * (v35 ^ 0xF4AC25E2)) >> 6);
  v42 = ((2 * v41) & 0xF9FD67EE) + (v41 ^ 0x7CFEB3F7);
  v43 = ((v39 - ((2 * v39) & 0xB6FCEB2E) - 612469353) ^ v40) - v42 + 2097066999;
  v44 = ((2 * ((-283803648 * v43) | ((-1962680789 * v43) >> 17))) & 0xFF4F47FE) + (((-283803648 * v43) | ((-1962680789 * v43) >> 17)) ^ 0x7FA7A3FF);
  HIDWORD(v15) = (1378180295 * v37 - 1671822397) >> 25;
  LODWORD(v15) = -1393375981 * v38;
  v45 = (-1811939328 * (v40 ^ 0xDB7E7597)) | ((1967952357 * (v40 ^ 0xDB7E7597)) >> 6);
  v46 = ((2 * v45) & 0x7FEFEBEE) + (v45 ^ 0x3FF7F5F7);
  v47 = 1885798019 * v44 + 1894126211;
  v48 = (v15 >> 1) + v46 - v44 + 1068477960;
  v49 = ((-2046820352 * v42) | ((-1469084989 * v42 + 1558234331) >> 7)) - 1241513984 - 2 * ((((-2046820352 * v42) | ((-1469084989 * v42 + 1558234331) >> 7)) - 1241513984) & 0x2A9D8DFF ^ ((-1469084989 * v42 + 1558234331) >> 7) & 1) + 714968574;
  v50 = (v48 - ((2 * v48) & 0x553B1BFC) + 714968574) ^ v49;
  v51 = ((-523371258 * v44) | (v47 >> 31)) - 506714874;
  v52 = ((1744830464 * v50) | ((46737933 * v50) >> 5)) - 2 * (((1744830464 * v50) | ((46737933 * v50) >> 5)) & 0x2AD1985F ^ ((46737933 * v50) >> 5) & 4) + 718379099;
  v53 = ((-1610612736 * v46) | ((-1248548707 * v46 + 901255045) >> 3)) - 1610612736 - v51;
  HIDWORD(v15) = 2092692739 * (v49 ^ 0x2A9D8DFE);
  LODWORD(v15) = HIDWORD(v15);
  v54 = ((2 * (v15 >> 31)) & 0xFF7FFFFA) + ((v15 >> 31) ^ 0x7FBFFFFD);
  v55 = v54 - 2143289341 + (v52 ^ (v53 - ((2 * v53) & 0x55A330B6) + 718379099));
  v51 *= 488627013;
  v56 = v47 & 0x80000000 | (v51 >> 1);
  v57 = ((-304611328 * (v52 ^ 0x2AD1985B)) | ((663641531 * (v52 ^ 0x2AD1985B)) >> 13)) - 2 * (((-304611328 * (v52 ^ 0x2AD1985B)) | ((663641531 * (v52 ^ 0x2AD1985B)) >> 13)) & 0x321C0E9F ^ ((663641531 * (v52 ^ 0x2AD1985B)) >> 13) & 2) + 840699549;
  v58 = ((1304084512 * v55) | ((577623553 * v55) >> 27)) - 2 * (((1304084512 * v55) | ((577623553 * v55) >> 27)) & 0x5EF7DF5F ^ ((577623553 * v55) >> 27) & 0xF) + 1593302864;
  v59 = ((((-2112185515 * v54 - 611331585) >> 4) | (1342177280 * v54)) + v56 - 0xFFFFFFF + (v57 ^ 0xCDE3F162)) ^ v58;
  v60 = (v56 - (v51 & 0x64381D3A) + 840699549) ^ 0x3FB1A11A ^ v57;
  v61 = v59 ^ 0x60252025 ^ (v60 - (v58 ^ 0x5EF7DF50) - ((2 * (v60 - (v58 ^ 0x5EF7DF50))) & 0xD61DC710) + 1796137864);
  v62 = v61 - ((2 * v61 + 2026996200) & 0xB61A5FCE) - 1753878309;
  v63 = v62 ^ v57;
  v64 = ((2 * ((v62 ^ 0xDB0D2FE7) + (v58 ^ 0x5EF7DF50))) & 0x55FF7AD6) + (((v62 ^ 0xDB0D2FE7) + (v58 ^ 0x5EF7DF50)) ^ 0x2AFFBD6B);
  v65 = 709582093 * (v62 ^ 0xDB0D2FE7);
  LODWORD(STACK[0x420]) = v62;
  LODWORD(STACK[0x478]) = v59;
  v66 = ((2 * (v62 ^ v59)) & 0x9FE37FF6 ^ 0xBE16166) + (v62 ^ v59 ^ 0x4A0B4F4C);
  v67 = -1025458071 * (v62 ^ v57 ^ 0xE911217A);
  v68 = 1525180416 * (v62 ^ 0xDB0D2FE7);
  LODWORD(STACK[0x520]) = v64;
  v69 = ((897318336 * v64) | ((1423306743 * v64 + 190994627) >> 26)) - 661245760;
  v70 = ((2 * v69) & 0x3D9FDFFE) + (v69 ^ 0x9ECFEFFF);
  LODWORD(STACK[0x490]) = v63;
  HIDWORD(v15) = v63 ^ 2;
  LODWORD(v15) = v67;
  v71 = ((2 * (v15 >> 2)) & 0xBDF6E77E) + ((v15 >> 2) ^ 0xDEFB73BF);
  LODWORD(STACK[0x4D8]) = v66;
  v72 = ((2024800256 * v66) | ((-109652085 * v66 + 1859057079) >> 12)) + 1534066688;
  v73 = ((2 * v72) & 0xBFFBF76E) + (v72 ^ 0x5FFDFBB7);
  v74 = (v68 & 0xFFFFF800 | (v65 >> 21)) + v71 - v70 - v73 + 533886967;
  v75 = ((2 * (((1821846867 * v74) >> 3) | (1610612736 * v74))) & 0xAB77DDFE) + ((((1821846867 * v74) >> 3) | (1610612736 * v74)) ^ 0x55BBEEFF);
  v76 = ((-869269504 * v70) | ((-1036911421 * v70 + 697183427) >> 12)) - 869269504;
  v77 = v76 - ((2 * v76) & 0xC458591E) + 1647062159;
  v78 = ((-1585446912 * v71) | ((-952393917 * v71 + 1363678211) >> 9)) - v75 + 1463545599;
  v79 = ((-699981824 * v73) | ((1227272761 * v73 + 2068035137) >> 19)) + 1992826880 - 2 * ((((-699981824 * v73) | ((1227272761 * v73 + 2068035137) >> 19)) + 1992826880) & 0x7777903C ^ ((1227272761 * v73 + 2068035137) >> 19) & 0x10) - 143159252;
  v80 = (v78 - ((2 * v78) & 0xEEEF2058) - 143159252) ^ v79;
  v81 = (v80 - ((2 * v80) & 0xC458591E) + 1647062159) ^ v77;
  v82 = ((-381681664 * v75) | ((-461059163 * v75 + 1608433829) >> 10)) + 692060160;
  v83 = (-2013812187 * v81) >> 19;
  v84 = ((2 * v82) & 0x7F7FFFBC) + (v82 ^ 0x3FBFFFDE);
  v85 = (-180051968 * v81) | v83;
  v86 = (813694976 * (v79 ^ 0xF777902C)) | ((-145489311 * (v79 ^ 0xF777902C)) >> 9);
  v87 = ((2 * v86) & 0xCD2DD7EC) + (v86 ^ 0xE696EBF6);
  v88 = 1166515829 * v85;
  v89 = ((169951232 * (v77 ^ 0x622C2C8F)) | ((1606690949 * (v77 ^ 0x622C2C8F)) >> 18)) - v84 - v87 - v85 + 643230676;
  v90 = ((-2134900736 * v84) | ((1365652995 * v84 - 1873597338) >> 10)) + 427819008;
  v91 = (__PAIR64__(v83, v88) >> 2) - ((2 * (__PAIR64__(v83, v88) >> 2)) & 0x1099FDE4) + 139263730;
  v92 = v91 ^ (v90 - 2 * (v90 & 0x84CFEF7 ^ ((1365652995 * v84 - 1873597338) >> 10) & 5) + 139263730);
  v93 = v90 ^ (((-1002438656 * v87) | ((-1776551151 * v87 - 1347542358) >> 10)) - 1434451968);
  v94 = ((-1939593216 * v89) | ((1345424517 * v89) >> 21)) - ((2 * ((-1939593216 * v89) | ((1345424517 * v89) >> 21))) & 0xFD378B6E) + 2124137911;
  v95 = v91 ^ (v93 - ((2 * v93) & 0x1099FDE4) + 139263730) ^ v94;
  v96 = ((v94 ^ 0x81643A48) + 1469686981 * v92 - 1794103211) ^ v95;
  v97 = ((2 * v96) & 0x7DB3FFAE ^ 0x7D338B2E) + (v96 ^ 0x40423A60);
  v98 = ((2 * ((v91 ^ 0x84CFEF2) - -1011214981 * v97 - 1141862579)) & 0x6F4EFDF8) + (((v91 ^ 0x84CFEF2) - -1011214981 * v97 - 1141862579) ^ 0xB7A77EFC);
  LODWORD(STACK[0x5D8]) = v98;
  v99 = (v94 ^ 0x7E9BC5B7) - -1011214981 * v97 - 1141862579 - ((2 * ((v94 ^ 0x7E9BC5B7) - -1011214981 * v97 - 1141862579)) & 0xDCF31AAE) + 1853459799;
  v100 = (-2035146752 * (v99 ^ 0x6E798D57)) | ((-559663727 * (v99 ^ 0x6E798D57)) >> 19);
  v101 = ((-7682304 * v98) | ((-1224766777 * v98 + 1297379868) >> 24)) + 1416764416;
  v102 = ((2 * v101) & 0x57F7EDB6) + (v101 ^ 0x2BFBF6DB);
  v103 = (v95 ^ 0x7E9BC5B7 ^ (-1011214981 * v97 + 1141862579)) - ((2 * (v95 ^ 0x7E9BC5B7 ^ (-1011214981 * v97 + 1141862579))) & 0x52A69688) + 693324612;
  LODWORD(STACK[0x498]) = v103;
  v104 = ((1699217408 * v97) | ((-1982198615 * v97 + 1577191185) >> 13)) - v102 + 1686370011;
  v105 = v100 - ((2 * v100) & 0x4CC8FC34) - 1503363558;
  v106 = (v104 - ((2 * v104) & 0x4CC8FC34) - 1503363558) ^ v105;
  v107 = ((630013952 * (v103 ^ 0x29534B44)) | ((-1772317131 * (v103 ^ 0x29534B44u)) >> 18)) - 2 * (((630013952 * (v103 ^ 0x29534B44)) | ((-1772317131 * (v103 ^ 0x29534B44u)) >> 18)) & 0x2B3948FF ^ ((-1772317131 * (v103 ^ 0x29534B44u)) >> 18) & 1) + 725174526;
  v108 = (v106 - ((2 * v106) & 0x567291FC) + 725174526) ^ v107;
  v109 = ((2 * ((-91258880 * v108) | ((-602147553 * v108) >> 17))) & 0x7DFBBFBE) + (((-91258880 * v108) | ((-602147553 * v108) >> 17)) ^ 0x3EFDDFDF);
  v110 = (1884200960 * (v105 ^ 0xA6647E1A)) | ((1231782517 * (v105 ^ 0xA6647E1A)) >> 19);
  v111 = ((2 * v110) & 0xEED4FFBC) + (v110 ^ 0x776A7FDE);
  v112 = ((-745537536 * v102) | ((-138719943 * v102 - 861066691) >> 12)) - v111 - v109 + 1513643965;
  v113 = ((-860745728 * v109) | ((-679687391 * v109 - 675524799) >> 20)) - 990638080;
  v114 = ((1345978368 * (v107 ^ 0x2B3948FE)) | ((100673565 * (v107 ^ 0x2B3948FE)) >> 15)) - 2 * (((1345978368 * (v107 ^ 0x2B3948FE)) | ((100673565 * (v107 ^ 0x2B3948FE)) >> 15)) & 0x1797A5B7 ^ ((100673565 * (v107 ^ 0x2B3948FE)) >> 15) & 0x12) + 395814309;
  v115 = (v112 - ((2 * v112) & 0x2F2F4B4A) + 395814309) ^ v114;
  v116 = ((2 * ((2133590016 * v115) | ((94101451 * v115) >> 14))) & 0xF8D3BDFA) + (((2133590016 * v115) | ((94101451 * v115) >> 14)) ^ 0x7C69DEFD);
  v117 = ((1881234944 * v111) | ((-348647249 * v111 - 207308994) >> 23)) + 1231977472;
  v118 = v113 - ((2 * v113) & 0x8A07CDF6) + 1157883643;
  v119 = v118 ^ 0x4503E6FB;
  v120 = v118 ^ (v117 - ((2 * v117) & 0x8A07CDF6) + 1157883643);
  v121 = (-805306368 * (v114 ^ 0x1797A5A5)) | ((-477714435 * (v114 ^ 0x1797A5A5)) >> 4);
  v122 = ((2 * v121) & 0x5FDEEF7A) + (v121 ^ 0x2FEF77BD);
  v123 = (1534681088 * v119) | ((179493835 * v119) >> 19);
  v124 = v120 - v122 - 1283090240 + v116;
  v125 = ((-1142423552 * v122) | ((-477005955 * v122 - 564351561) >> 13)) - v123 + 1840775168;
  v126 = ((831389696 * v116) | ((2140182727 * v116 + 2080207189) >> 15)) - 492175360 - 2 * ((((831389696 * v116) | ((2140182727 * v116 + 2080207189) >> 15)) - 492175360) & 0x7645711A ^ ((2140182727 * v116 + 2080207189) >> 15) & 2) + 1984262424;
  v127 = ((345481216 * v124) | ((-354376515 * v124) >> 19)) - 2 * (((345481216 * v124) | ((-354376515 * v124) >> 19)) & 0x7B0F36D5 ^ ((-354376515 * v124) >> 19) & 1) + 2064594644;
  v128 = v126 ^ (v125 - ((2 * v125) & 0xEC8AE230) + 1984262424);
  v129 = (v128 - ((2 * v128) & 0xF61E6DA8) + 2064594644) ^ v127;
  v130 = v129 - 744655575 + (v127 ^ 0x3906E58C ^ (v123 - (v126 ^ 0x76457118) - ((2 * (v123 - (v126 ^ 0x76457118))) & 0xF61E6DA8) + 2064594644));
  v131 = ((2 * ((v126 ^ 0x76457118) - (v130 ^ 0xD2E51126))) & 0xFF3F74EE) + (((v126 ^ 0x76457118) - (v130 ^ 0xD2E51126)) ^ 0xFF9FBA77);
  v132 = v7 ^ 0x871288E8 ^ v99;
  LODWORD(STACK[0x3F8]) = v132;
  v133 = v132 ^ v33;
  v134 = v132 ^ v33 ^ 0x57792BA;
  v135 = (v134 - (v7 ^ 0xEC1C9705 ^ v33)) ^ ((v99 ^ 0x918672A8) + 1);
  v136 = ((v135 - ((2 * v135) & 0xDCF31AAE) + 1853459799) ^ v99) + v134;
  LODWORD(STACK[0x400]) = v136 - ((2 * v136) & 0xA2D71EFA) + 1366003581;
  LODWORD(STACK[0x500]) = v131;
  v137 = v130 ^ 0x81AF52A8 ^ (v129 + 1397375886 + (~(2 * v129) | 0x596B78E3) + 1);
  v138 = ((2024156480 * v131) | ((-1511876427 * v131 + 491553245) >> 26)) + 1394636608;
  v139 = ((2 * v138) & 0xDFE76BDC) + (v138 ^ 0xEFF3B5EE);
  LODWORD(STACK[0x42C]) = v130 ^ 0x81AF52A8;
  LODWORD(STACK[0x508]) = v127;
  v140 = v130 ^ 0x81AF52A8 ^ v127;
  LODWORD(STACK[0x5C8]) = v140;
  v141 = ((94814850 * (v130 ^ 0xD2E51126)) | ((-2100076223 * (v130 ^ 0xD2E51126)) >> 31)) - 269240850 - v139;
  v142 = ((1346607152 * v137) | ((1426340227 * v137) >> 28)) - 1223023045 - ((2 * ((1346607152 * v137) | ((1426340227 * v137) >> 28))) & 0x6E344C76);
  v143 = ((-721176860 * (v140 ^ 0x2845755A)) | ((-180294215 * (v140 ^ 0x2845755A)) >> 30)) - 2 * (((-721176860 * (v140 ^ 0x2845755A)) | ((-180294215 * (v140 ^ 0x2845755A)) >> 30)) & 0x5A369FF ^ ((-180294215 * (v140 ^ 0x2845755A)) >> 30)) - 2052888068;
  v144 = (v141 - ((2 * v141) & 0xB46D3F8) - 2052888068) ^ v143;
  v145 = (v144 - ((2 * v144) & 0x6E344C76) - 1223023045) ^ v142;
  v146 = ((2 * ((-544997376 * v145) | ((1692219361 * v145) >> 14))) & 0xAD94FD1E) + (((-544997376 * v145) | ((1692219361 * v145) >> 14)) ^ 0xD6CA7E8F);
  HIDWORD(v15) = v142 - 1;
  LODWORD(v15) = -244451481 * (v142 ^ 0xB71A263B);
  v147 = ((2 * (v15 >> 2)) & 0x9FFFBC5E) + ((v15 >> 2) ^ 0xCFFFDE2F);
  HIDWORD(v15) = 212426625 * (v143 ^ 0x85A369FC);
  LODWORD(v15) = HIDWORD(v15);
  v148 = ((2 * (v15 >> 29)) & 0xCFFEBF74) + ((v15 >> 29) ^ 0xE7FF5FBA);
  v149 = ((-813694976 * v139) | ((-1495028833 * v139 - 2028861650) >> 9)) - v147 + v148 - v146 - 708117244;
  v150 = ((-810074112 * v146) | ((1386954461 * v146 + 822418573) >> 18)) + 1193492480;
  v151 = ((2 * v150) & 0xF7EFDD4E) + (v150 ^ 0x7BF7EEA7);
  v152 = ((2 * ((-2138822448 * v149) | ((-1475853683 * v149) >> 28))) & 0xF6FFD9FE) + (((-2138822448 * v149) | ((-1475853683 * v149) >> 28)) ^ 0xFB7FECFF);
  v153 = ((-823346064 * v148) | ((-1393636409 * v148 + 816322666) >> 28)) + v152 - v151 - 1963358136;
  v154 = ((-616984425 * v147 + 899842631) >> 3) - (v147 << 29);
  v155 = v154 - ((2 * v154) & 0xEC645CF0) - 1775096200;
  v156 = ((-768914288 * v151) | ((1562555593 * v151 - 111529247) >> 28)) - 1784467952;
  v157 = (v153 - ((2 * v153) & 0xEC645CF0) + 1983000184) ^ v155;
  v158 = 747042497 * v157;
  v159 = (-155123712 * v157) | ((747042497 * v157) >> 16);
  v160 = ((1353511152 * v152) | ((-720711921 * v152 + 1709763599) >> 28)) + 1586413808 - 2 * ((((1353511152 * v152) | ((-720711921 * v152 + 1709763599) >> 28)) + 1586413808) & 0x6552ECEA ^ ((-720711921 * v152 + 1709763599) >> 28) & 0xAAAAAAAA) - 447550240;
  v161 = v156 ^ ((825459712 * (v155 ^ 0x76322E78)) | ((1863077089 * (v155 ^ 0x76322E78)) >> 22));
  v162 = v159 - 2 * (v159 & 0x38A8840F ^ HIWORD(v158) & 6) - 1196915703;
  v163 = ((v160 ^ 0xE552ECE0) + v161 - ((2 * ((v160 ^ 0xE552ECE0) + v161)) & 0x71510812) - 1196915703) ^ v162;
  v164 = ((v162 ^ 0xB8A88409) + ((v156 - (v160 ^ 0xE552ECE0)) ^ 0xAF9344FC)) ^ v163;
  v165 = ((2 * v164) & 0x701BFCBE ^ 0x3D0BE) + (v164 ^ 0x7C8C1780);
  v166 = 1283920117 * v165 - ((151921130 * v165 + 87637546) & 0xDD6B1A2) - 1450706970;
  v167 = ((2 * ((v166 ^ 0x6EB58D1) + v163)) & 0xFFFBDF9C) + (((v166 ^ 0x6EB58D1) + v163) ^ 0x7FFDEFCE);
  LODWORD(STACK[0x4A0]) = v160;
  LODWORD(STACK[0x4E0]) = v166 ^ v160;
  v168 = (-841940992 * (v166 ^ v160 ^ 0xE3B9B431)) | ((667143633 * (v166 ^ v160 ^ 0xE3B9B431)) >> 16);
  v169 = ((2 * v168) & 0x5BEF7FF4) + (v168 ^ 0x2DF7BFFA);
  v170 = v166 ^ v162;
  v171 = v166 ^ v162 ^ 0xBE43DCD8;
  LODWORD(STACK[0x4A8]) = v170;
  LODWORD(STACK[0x450]) = v167;
  v172 = ((958398464 * v167) | ((557615561 * v167 - 637437630) >> 11)) + 675282944;
  v173 = ((2 * v172) & 0x79EE7B86) + (v172 ^ 0x3CF73DC3);
  v174 = ((550502400 * v165) | ((1663709709 * v165 + 1929742125) >> 12)) + 1155022854 + v169;
  v175 = (((-161575963 * v171) >> 5) | ((v171 + 4 * v170) << 27)) - 2 * ((((-161575963 * v171) >> 5) | ((v171 + 4 * v170) << 27)) & 0x3A345897 ^ ((-161575963 * v171) >> 5) & 2) + 976509077;
  v176 = ((v174 - ((2 * v174) & 0x7468B12A) + 976509077) ^ v175) - v173 + 1022836163;
  v177 = ((2 * ((1137287048 * v176) | ((-2005322767 * v176) >> 29))) & 0xCB2FFCB6) + (((1137287048 * v176) | ((-2005322767 * v176) >> 29)) ^ 0xE597FE5B);
  v178 = (-738197504 * (v175 ^ 0x3A345895)) | ((-1053810507 * (v175 ^ 0x3A345895)) >> 6);
  v179 = ((2 * v178) & 0x5FFDDDB6) + (v178 ^ 0x2FFEEEDB);
  v180 = ((-1202716672 * v173) | ((-885589115 * v173 + 1104984241) >> 12)) - 1961885696;
  v181 = ((2 * v180) & 0xFBEE79FA) + (v180 ^ 0x7DF73CFD);
  v182 = v179 - (v169 << 29) + ((2073755079 * v169 - 783568214) >> 3) + v181 + v177 - 1401825843;
  v183 = ((1250923520 * v177) | ((-1768774683 * v177 + 1982826393) >> 22)) - 1105304576;
  v184 = ((2 * v183) & 0xF8EFFB6E) + (v183 ^ 0x7C77FDB7);
  v185 = ((2 * ((-939524096 * v182) | ((778252825 * v182) >> 5))) & 0xBE9F6D9E) + (((-939524096 * v182) | ((778252825 * v182) >> 5)) ^ 0x5F4FB6CF);
  v186 = ((1835805952 * v179) | ((-311595987 * v179 - 1859346559) >> 24)) - v184 - v185 + 140981638;
  v187 = ((696187712 * v181) | ((1420164077 * v181 - 1505789241) >> 26)) - 1881230912 - 2 * ((((696187712 * v181) | ((1420164077 * v181 - 1505789241) >> 26)) - 1881230912) & 0x6478A2AF ^ ((1420164077 * v181 - 1505789241) >> 26) & 1) + 1685627566;
  v188 = v187 ^ 0x6478A2AE;
  v189 = (v186 - ((2 * v186) & 0xC8F1455C) + 1685627566) ^ v187;
  v190 = ((-21883392 * v184) | ((-1031841525 * v184 + 1675262499) >> 23)) - 1259059712;
  v191 = ((694111232 * v185) | ((-594913325 * v185 - 359269789) >> 22)) + 1474923520;
  v192 = ((2 * v191) & 0xB0FFE7F0) + (v191 ^ 0xD87FF3F8);
  v193 = v190 ^ ((-1299300352 * v188) | ((1186384441 * v188) >> 18));
  v194 = v190 - v192 - 2068443408;
  v195 = ((176128000 * v189) | ((-1873406721 * v189) >> 17)) - ((2 * ((176128000 * v189) | ((-1873406721 * v189) >> 17))) & 0x59EC89F4) + 754337018;
  v196 = v194 + (v195 ^ 0xD309BB05);
  v197 = v192 + 662703112;
  v198 = v195 ^ (v192 + 662703112 + v193);
  v199 = v198 ^ 0xE9FB222F;
  v200 = v196 ^ v198;
  v201 = ((2 * v200) & 0xFFFEE7CE ^ 0x59EC81C4) + (v200 ^ 0xD309371D);
  v202 = 1835129781 * v201 - ((-624707734 * v201 + 1701503322) & 0xF9902A40) + 796755405;
  v203 = ((2 * ((v202 ^ 0xFCC81520) + v197)) & 0xB7BDDFFE) + (((v202 ^ 0xFCC81520) + v197) ^ 0xDBDEEFFF);
  v204 = ((2 * ((v195 ^ 0x2CF644FA) - (v202 ^ 0xFCC81520))) & 0x5EFD2D36) + (((v195 ^ 0x2CF644FA) - (v202 ^ 0xFCC81520)) ^ 0xAF7E969B);
  HIDWORD(v15) = v200;
  LODWORD(v15) = 868750607 * v201 + 2047754871;
  LODWORD(STACK[0x414]) = v202;
  LODWORD(STACK[0x470]) = v198 ^ 0xE9FB222F;
  LODWORD(STACK[0x4D0]) = v202 ^ v198 ^ 0xE9FB222F;
  LODWORD(STACK[0x468]) = v203;
  v205 = ((v203 << 30) ^ 0xE017A5B0) + ((-705897661 * v203 + 1396968259) >> 2) - (((-705897661 * v203 + 1396968259) >> 1) & 0x402F4B60);
  LODWORD(STACK[0x518]) = v204;
  v206 = ((501666399 * v204 + 708376187) >> 5) - (v204 << 27) - 671088640;
  v207 = ((2 * v206) & 0xFAFFEF7E) + (v206 ^ 0xFD7FF7BF);
  v208 = (v205 ^ ((v15 >> 1) - ((2 * (v15 >> 1)) & 0x402F4B60) + 538420656)) - v207;
  v209 = ((1124073472 * (v202 ^ v199 ^ 0x39C573F5)) | ((-610692541 * (v202 ^ v199 ^ 0x39C573F5)) >> 8)) - 2 * (((1124073472 * (v202 ^ v199 ^ 0x39C573F5)) | ((-610692541 * (v202 ^ v199 ^ 0x39C573F5)) >> 8)) & 0x6AE479AD ^ ((-610692541 * (v202 ^ v199 ^ 0x39C573F5)) >> 8) & 8) - 354125403;
  v210 = (v208 - ((2 * v208 - 83890306) & 0xD5C8F34A) - 396070556) ^ v209;
  v211 = (1957437440 * (v205 ^ 0x2017A5B0)) | ((759407969 * (v205 ^ 0x2017A5B0)) >> 19);
  v212 = ((1333788672 * v207) | ((-1011644257 * v207 - 631592865) >> 9)) + 796917760;
  v213 = ((2 * v212) & 0xBFB5FFDA) + (v212 ^ 0x5FDAFFED);
  v214 = (1897922560 * (v209 ^ 0xEAE479A5)) | ((-298409079 * (v209 ^ 0xEAE479A5)) >> 11);
  v215 = ((2 * v214) & 0x78FAFF74) + (v214 ^ 0xBC7D7FBA);
  v216 = ((-1019040256 * v210) | ((-1209949865 * v210) >> 23)) - 2 * (((-1019040256 * v210) | ((-1209949865 * v210) >> 23)) & 0x7EB3A5E ^ ((-1209949865 * v210) >> 23) & 0x10) + 132856398;
  v217 = v215 - v213 - 1554153421 + (v216 ^ (v211 - ((2 * v211) & 0xFD6749C) + 132856398));
  v218 = ((1727088090 * v213) | ((-1283939603 * v213 - 30074985) >> 31)) - 60149970;
  v219 = ((-1879048192 * v217) | ((-1858585799 * v217) >> 4)) - 1892838328 - (((-1858585799 * v217) >> 3) & 0x1E5B2890);
  v220 = ((1864368128 * (v216 ^ 0x7EB3A4E)) | ((-1682351239 * (v216 ^ 0x7EB3A4E)) >> 11)) - 2 * (((1864368128 * (v216 ^ 0x7EB3A4E)) | ((-1682351239 * (v216 ^ 0x7EB3A4E)) >> 11)) & 0x63CA78BF ^ ((-1682351239 * (v216 ^ 0x7EB3A4E)) >> 11) & 0x10) + 1674213551;
  v221 = v220 ^ (v218 - ((2 * v218) & 0xC794F15E) + 1674213551);
  v222 = ((-1171268633 * v215 - 145252054) >> 3) - (v215 << 29) + 0x40000000;
  v223 = ((2 * v222) & 0xFF97317E) + (v222 ^ 0x7FCB98BF);
  v224 = ((v221 - ((2 * v221) & 0x1E5B2890) - 1892838328) ^ v219) - v223 + 2144049343;
  v225 = (-1883818256 * (v220 ^ 0x63CA78AF)) | ((-1459915921 * (v220 ^ 0x63CA78AF)) >> 28);
  v226 = ((373014528 * (v219 ^ 0x8F2D9448)) | ((1410357487 * (v219 ^ 0x8F2D9448)) >> 18)) - 2 * (((373014528 * (v219 ^ 0x8F2D9448)) | ((1410357487 * (v219 ^ 0x8F2D9448)) >> 18)) & 0x5FD1DB1F ^ ((1410357487 * (v219 ^ 0x8F2D9448)) >> 18) & 0xB) - 539895020;
  v227 = ((1627914240 * v223) | ((-1613812703 * v223 + 1695513441) >> 13)) - v225 - 620232704;
  v228 = ((-545259520 * v224) | ((335439295 * v224) >> 9)) - 2 * (((-545259520 * v224) | ((335439295 * v224) >> 9)) & 0x5DF3C71F ^ ((335439295 * v224) >> 9) & 2) + 1576257309;
  v229 = ((v227 - ((2 * v227) & 0xBFA3B628) - 539895020) ^ v226) - (v228 ^ 0x5DF3C71D);
  v230 = (1209700351 * ((v226 ^ 0xDFD1DB14) + v225) - (v228 ^ 0x5DF3C71D)) ^ v229 ^ 0xF52658B3;
  v231 = v230 - 2 * ((v230 + 635047302) & 0x6B645941 ^ v230 & 1) + 289302214;
  v232 = ((2 * (v229 - (v231 ^ 0x6B645940))) & 0xDEFABBBA) + ((v229 - (v231 ^ 0x6B645940)) ^ 0x6F7D5DDD);
  LODWORD(STACK[0x4BC]) = v226;
  LODWORD(STACK[0x4B0]) = v232;
  v233 = (317416192 * (v231 ^ v226 ^ 0xB4B58254)) | ((-921506973 * (v231 ^ v226 ^ 0xB4B58254)) >> 24);
  v234 = ((2 * v233) & 0x76B7DFAE) + (v233 ^ 0x3B5BEFD7);
  v235 = v231 ^ v228;
  v236 = (726812928 * (v235 ^ 0x36979E5D)) | ((724259401 * (v235 ^ 0x36979E5D)) >> 24);
  v237 = ((2 * v236) & 0x7F55FEB8) + (v236 ^ 0x3FAAFF5C);
  v238 = -1993313077 * v234 + 1041982595;
  v239 = ((-2046422336 * v232) | ((-367519669 * v232 - 960444351) >> 26)) - 1338896320;
  v240 = ((2 * v239) & 0x75BFDDFA) + (v239 ^ 0xBADFEEFD);
  v241 = ((530470840 * (v231 ^ 0x6B645940)) | ((1140050679 * (v231 ^ 0x6B645940u)) >> 29)) + v234 - v237 - v240 - 1087439230;
  v242 = ((-1342177280 * v234) | (v238 >> 4)) + 805306368;
  v243 = ((-687865856 * v237) | ((417906903 * v237 + 1014925756) >> 8)) - 1140850688;
  v244 = ((2 * v243) & 0x77B5FB7E) + (v243 ^ 0xBBDAFDBF);
  v245 = ((1879048192 * v241) | ((-1952790601 * v241) >> 4)) - 2 * (((1879048192 * v241) | ((-1952790601 * v241) >> 4)) & (v2 + 4084) ^ ((-1952790601 * v241) >> 4) & 0x11) - 28741622;
  v246 = v244 + 1143276097 + (v245 ^ (v242 - 2 * (v242 & (v2 + 4088) ^ (v238 >> 4) & 0x15) - 28741622));
  v247 = ((582221824 * v240) | ((-858617683 * v240 + 405477127) >> 14)) + 1545338880 - 2 * ((((582221824 * v240) | ((-858617683 * v240 + 405477127) >> 14)) + 1545338880) & 0x493BE2E ^ ((-858617683 * v240 + 405477127) >> 14) & 0xA) - 2070692316;
  v248 = (v246 - ((2 * v246) & 0x9277C48) - 2070692316) ^ v247;
  v249 = ((2 * ((528482304 * v248) | ((1791941183 * v248) >> 9))) & 0xF7FBD734) + (((528482304 * v248) | ((1791941183 * v248) >> 9)) ^ 0xFBFDEB9A);
  v250 = (1972355296 * (v247 ^ 0x8493BE24)) | ((-743670265 * (v247 ^ 0x8493BE24)) >> 27);
  v251 = ((2 * v250) & 0xFFFEEDE6) + (v250 ^ 0xFFFF76F3);
  v252 = ((1878544384 * (v245 ^ 0xFE49700A)) | ((1977024389 * (v245 ^ 0xFE49700A)) >> 20)) - 2 * (((1878544384 * (v245 ^ 0xFE49700A)) | ((1977024389 * (v245 ^ 0xFE49700A)) >> 20)) & 0x5FEE8F9E ^ ((1977024389 * (v245 ^ 0xFE49700A)) >> 20) & 0x1C) - 538013822;
  v253 = v252 ^ 0xDFEE8F82;
  v254 = (v252 ^ (((-690171904 * v244) | ((-739414579 * v244 - 54166771) >> 20)) + 1471205376 - 2 * ((((-690171904 * v244) | ((-739414579 * v244 - 54166771) >> 20)) + 1471205376) & 0x5FEE8F8F ^ ((-739414579 * v244 - 54166771) >> 20) & 0xD) - 538013822)) - v251 + 67210073 + v249;
  v255 = (126987136 * v253) | ((2081366871 * v253) >> 25);
  v256 = ((-373943482 * v249) | ((-186971741 * v249 + 1263309554) >> 31)) - ((-747886964 * v249 + 758270920) & 0xDEF4CBB0) + 101944252;
  v257 = ((1488161216 * v251) | ((1902300711 * v251 - 1571334405) >> 26)) - v255 - 1781154111 + (v256 ^ 0x90859A27);
  v258 = ((-351797248 * v254) | ((-305013407 * v254) >> 13)) - 2 * (((-351797248 * v254) | ((-305013407 * v254) >> 13)) & 0x2286D8CB ^ ((-305013407 * v254) >> 13) & 2) + 579262665;
  v259 = (v257 - ((2 * v257) & 0x450DB192) + 579262665) ^ v258;
  v260 = v259 - 1122940961 * (((v256 ^ 0x6F7A65D8) + v255 - ((2 * ((v256 ^ 0x6F7A65D8) + v255) + 271896326) & 0x450DB192) + 715210828) ^ v258);
  v261 = STACK[0x864];
  LODWORD(STACK[0x5F8]) = STACK[0x864];
  LODWORD(STACK[0x4C8]) = v261 ^ ((v260 ^ 0x7CBF191A) + v259 - ((2 * ((v260 ^ 0x7CBF191A) + v259)) & 0x18ECA566) - 1938402637);
  LODWORD(STACK[0x52C]) = v33;
  LODWORD(STACK[0x418]) = v133;
  LODWORD(STACK[0x408]) = v133 ^ 0x22D986AE;
  LODWORD(STACK[0x510]) = v260;
  v262 = v260 ^ 0x462775AD;
  LODWORD(STACK[0x4F0]) = v130;
  v263 = v130 ^ 0xE4728F7B ^ v235;
  v264 = *(STACK[0x630] + 8 * v5);
  LODWORD(STACK[0x5E8]) = HIWORD(v99);
  LODWORD(STACK[0x5D0]) = v99;
  LODWORD(STACK[0x488]) = v34;
  LODWORD(STACK[0x438]) = v99 ^ v34;
  LODWORD(STACK[0x480]) = HIBYTE(v166);
  LODWORD(STACK[0x5F0]) = HIWORD(v235);
  LODWORD(STACK[0x4F8]) = v258;
  LODWORD(STACK[0x5E0]) = v262 ^ v256;
  LODWORD(STACK[0x3F0]) = v263;
  LODWORD(STACK[0x428]) = v263 ^ v166;
  LODWORD(STACK[0x530]) = v166;
  LODWORD(STACK[0x610]) = v235;
  LODWORD(STACK[0x430]) = v235 ^ v166;
  LODWORD(STACK[0x460]) = v99 >> 8;
  LODWORD(STACK[0x458]) = v235 >> 8;
  return v264(a1, 172, -1874990090, 3603477120);
}

uint64_t sub_10025059C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(*(a7 + 8 * v13) + 4 * ((v14 ^ v11) ^ a2) + a3);
  *(a1 + 4 * v11) = v8 ^ (v16 + v9 - (a4 & (2 * v16)));
  return (*(a8 + 8 * (((v15 != 0) * v12) ^ v10)))();
}

uint64_t sub_1002505F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 + 440;
  v10 = (v8 - 729072253) & 0x2B74B6DF;
  v11 = (*(a8 + 8 * (v8 + 6010)))(1032);
  v12 = STACK[0x630];
  STACK[0x8B0] = v11 + 0x2B6EB091E8CEE6B1;
  return (*(v12 + 8 * (((v11 != 0) * (v10 - 1626)) ^ v9)))();
}

uint64_t sub_100250670(uint64_t a1)
{
  LODWORD(STACK[0x3B0]) = v2;
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x5F8]) ^ LODWORD(STACK[0x5E0]);
  return (*(v3 + 432 * (v1 ^ 0x1394)))(a1, 702107351, 1768621224, 339420185);
}

uint64_t sub_1002507B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X5>, int a6@<W8>)
{
  HIDWORD(v17) = *(*(a5 + 8 * v10) + 4 * ((v6 ^ v7) ^ v9) + v11);
  LODWORD(v17) = HIDWORD(v17);
  v18 = (v17 >> 3) ^ v15 ^ ((v17 >> 3) >> ((a6 - 55) ^ v12)) & a2;
  *(a1 + 4 * v7) = v14 ^ (v18 + v13 - (a3 & (2 * v18))) ^ a4;
  return (*(v16 + 8 * (((4 * (v8 != 0)) | (8 * (v8 != 0))) ^ a6)))();
}

uint64_t sub_10025082C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3F8A)))(1032);
  v3 = STACK[0x630];
  STACK[0x858] = v2;
  return (*(v3 + 8 * (((v2 != 0) * (((v0 - 821) ^ 0x1594) - 1221)) ^ v0)))();
}

uint64_t sub_100250888(uint64_t a1)
{
  LODWORD(STACK[0x390]) = v4;
  LODWORD(STACK[0x5D8]) = v3;
  LODWORD(STACK[0x378]) = v2;
  return (*(v5 + 8 * v1))(a1, 102, 404665470, 1351281332, LODWORD(STACK[0x5C8]) ^ 0x99204AC8, 3997);
}

uint64_t sub_1002509B8(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v23 = (v6 + v9 + v19 - (v7 & v21)) ^ v16;
  v24 = (v23 + v14 - (v22 & (2 * v23))) ^ v18;
  v25 = *(*(v15 + 8 * v11) + (v24 ^ v10) + v12) ^ v24 ^ a2;
  v26 = (v25 - ((2 * v25) & 0xFC) + a3) ^ v17;
  *(a1 + 4 * v6) = a5 ^ (v26 + v20 - (a4 & (2 * v26)));
  return (*(STACK[0x630] + 8 * (((v8 == 0) * a6) ^ v13)))();
}

uint64_t sub_100250A54()
{
  v1 = STACK[0x630];
  v2 = (*(STACK[0x630] + 8 * (v0 + 836)))(1032);
  STACK[0x8A8] = v2 + 0x460406476BDB2B68;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 274066317) ^ 0x105617E0 ^ (v0 + 274066317) & 0xEFA9FFF7 ^ 0x1785)) ^ v0)))();
}

uint64_t sub_100250BF8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v18) = *(*(a6 + 8 * v11) + 4 * ((v8 ^ v7) ^ v10) + v12);
  LODWORD(v18) = HIDWORD(v18);
  *(a1 + 4 * v8) = a7 ^ v16 ^ (v18 >> 6) ^ a2 ^ ((v18 >> 6) >> v13) & v14;
  return (*(v17 + 8 * (((v9 == 0) * a3) ^ v15)))();
}

uint64_t sub_100250C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5C8]) = a7;
  v9 = (*(v8 + 8 * (v7 + 5231)))(1032);
  v10 = STACK[0x630];
  STACK[0x800] = v9;
  return (*(v10 + 8 * ((30 * (v9 != 0)) ^ v7)))();
}

uint64_t sub_100250CC4(uint64_t a1)
{
  LODWORD(STACK[0x320]) = v4;
  LODWORD(STACK[0x518]) = v3;
  LODWORD(STACK[0x520]) = v6;
  LODWORD(STACK[0x310]) = v5;
  LODWORD(STACK[0x308]) = v2;
  LODWORD(STACK[0x31C]) = LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x5D0]);
  v8 = (LODWORD(STACK[0x500]) + 6309257);
  v9 = *(v7 + 8 * (v1 - 1134));
  LODWORD(STACK[0x510]) = (v1 - 1134) ^ 0x4B2;
  return v9(a1, (v1 - 1134) ^ 0xDEF4DB28, LODWORD(STACK[0x508]), v8);
}

uint64_t sub_100250DC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X6>, int a6@<W7>, int a7@<W8>)
{
  v24 = *(*(a5 + 8 * v10) + 4 * (v16 ^ v7 ^ 0xA7u) - 1526664211) ^ 0xC685BE10;
  v25 = (((v24 >> 2) & 0x15D95F5C ^ v24) + v18 - (a2 & (2 * ((v24 >> 2) & 0x15D95F5C ^ v24)))) ^ v21;
  v26 = (v25 + v11 - (v12 & (2 * v25))) ^ v13;
  v27 = (v26 + 983067831 - ((2 * v26) & 0x7530D96E)) ^ v17;
  v28 = v15 ^ a4 ^ (v27 + v23 - (v22 & (2 * v27)));
  v29 = (v28 + v9 - (v20 & (2 * v28))) ^ a3;
  *(a1 + 4 * v7) = a6 ^ (v29 + v19 - (v14 & (2 * v29))) ^ 0x754BCAF2;
  return (*(STACK[0x630] + 8 * ((3004 * (v8 == 0)) ^ a7)))();
}

uint64_t sub_100250EB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x500]) = a4;
  LODWORD(STACK[0x508]) = v4;
  v5 = STACK[0x510];
  v6 = STACK[0x630];
  v7 = (*(STACK[0x630] + 8 * (LODWORD(STACK[0x510]) + 5451)))(1028);
  STACK[0x898] = v7 + 0x6F06F168B51E0639;
  return (*(v6 + 8 * (((v7 == 0) * ((v5 + 1682447029) & 0x9BB7D77E ^ 0x63C)) ^ v5)))();
}

uint64_t sub_100250F4C(uint64_t a1)
{
  v3 = LODWORD(STACK[0x4E8]) + 307662117;
  v4 = *(v2 + 8 * (v1 - 1279));
  v5 = STACK[0x4E0];
  LODWORD(STACK[0x520]) = v3;
  return v4(a1, v3 ^ v5 ^ 0x8E8B6F4F, 7205);
}

uint64_t sub_100251048@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W8>)
{
  v15 = *(*(a4 + 8 * v10) + 4 * ((v6 ^ v13) & v8 ^ v9) + v11);
  *(a1 + 4 * v6) = a2 ^ (v15 + a5 - (v12 & (2 * v15)));
  return (*(v14 + 8 * (((v7 == 0) * a3) ^ a6)))();
}

uint64_t sub_10025109C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2C2C)))(1028);
  STACK[0x840] = v2 + 0x2B2CAA2D8CADDB0ALL;
  return (*(v1 + 8 * (((v2 == 0) * (((4 * v0) ^ 0xFFFFECBA) + (v0 ^ 0x307))) ^ v0)))();
}

uint64_t sub_10025125C()
{
  v2 = (v0 + 1376866641) & 0xADEE9BFC;
  v3 = (*(v1 + 8 * (v0 ^ 0xF0F)))(1028);
  STACK[0x850] = v3 + 0x4C2CD2CC1C0BEF17;
  LODWORD(STACK[0x5F8]) = v2;
  return (*(v1 + 8 * (((v3 == 0) * (v0 - 14671 + v2)) ^ v0)))();
}

uint64_t sub_1002512F0(uint64_t a1)
{
  LODWORD(STACK[0x518]) = v2;
  LODWORD(STACK[0x4F8]) = v1;
  v4 = *(v3 + 8 * SLODWORD(STACK[0x5F8]));
  LODWORD(STACK[0x510]) = LODWORD(STACK[0x5F8]) - 2256;
  return v4(a1, 2145228488);
}

uint64_t sub_1002513DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, int a4@<W6>, int a5@<W7>, char a6@<W8>)
{
  v25 = *(*(a3 + 8 * v9) + 4 * (((v6 ^ 0x80) * a6) ^ v16 ^ 0x15u) + v10) ^ v19;
  v26 = v14 ^ (v25 - (v11 & (2 * v25)) + v12) ^ v13;
  v27 = (v26 + v22 - (a5 & (2 * v26))) ^ a4;
  v28 = (v27 + v17 - (v18 & (2 * v27))) ^ v21;
  *(a1 + 4 * ((v6 ^ 0x80) * a6)) = v23 ^ v8 ^ ((v6 ^ 0x80) * a6) ^ v16 ^ a2 ^ (v28 + v15 - (v24 & (2 * v28)));
  return (*(v20 + 8 * ((30 * (v7 == 0)) ^ LODWORD(STACK[0x5F8]))))();
}

uint64_t sub_100251484()
{
  v1 = STACK[0x510];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x510]) + 7805)))(1028);
  STACK[0x870] = v2 + 0xD0EC592E7DECE7;
  return (*(v0 + 8 * ((494 * (((v2 == 0) ^ (v1 - 1)) & 1)) ^ v1)))();
}

uint64_t sub_100251678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W8>)
{
  v14 = *(*(a2 + 8 * v9) + 4 * ((v6 ^ a3) ^ v8) + v10);
  *(a1 + 4 * v6) = v11 ^ (v14 + a5 - (a4 & (2 * v14)));
  return (*(v13 + 8 * (((v7 == 0) * v12) ^ a6)))();
}

uint64_t sub_1002516CC()
{
  v2 = (*(v1 + 8 * (v0 + 3053)))(1032);
  STACK[0x808] = v2;
  LODWORD(STACK[0x5F8]) = v0 ^ 0x1435;
  return (*(v1 + 8 * ((46 * (((v2 == 0) ^ ((v0 ^ 0x35) + v0 - 72)) & 1)) ^ v0)))();
}

uint64_t sub_100251748()
{
  v1 = STACK[0x5F8];
  v2 = *(v0 + 8 * SLODWORD(STACK[0x5F8]));
  LODWORD(STACK[0x5E8]) = 3 * (LODWORD(STACK[0x5F8]) ^ 0x864);
  return v2(983067831, 4126064383, 251, 1826270957, 137, 234, 167, v1 ^ 0xBE6u);
}

uint64_t sub_10025188C(int a1, char a2, char a3, char a4, unsigned int a5, char a6, unsigned int a7, int a8)
{
  v25 = v10 - ((v10 << v12) & 0x399A7F12) - 1664270455;
  v26 = a4 - ((v25 & 4 | (8 * ((v25 & 4) != 0))) ^ v15);
  if (((((v25 & 4 | (8 * (((v25 & 4) >> 2) & 1))) ^ v15) + 2057) & v8) == 0)
  {
    v26 = ((v25 & 4 | (8 * ((v25 & 4) != 0))) ^ v15) + a2;
  }

  v27 = *(*(v23 + 8 * a8) + 4 * ((((v25 & a3 ^ a5 ^ (v9 + v26)) - (a6 & (2 * (v25 & a3 ^ a5 ^ (v9 + v26)))) - 11) ^ v22) ^ a7) + v20);
  v28 = (v27 + a1 - (v13 & (2 * v27))) ^ v19;
  *(v14 + 4 * ((v10 - ((v10 << v12) & 0x12) - 119) ^ a5)) = v24 ^ (v28 + v16 - (v17 & (2 * v28))) ^ v21;
  return (*(v18 + 8 * ((127 * (v11 == 0)) ^ LODWORD(STACK[0x5F8]))))();
}

uint64_t sub_100251960()
{
  v1 = STACK[0x5E8];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x5E8]) + 9194)))(1032);
  STACK[0x818] = v2 + 0x70588A91238395A1;
  return (*(v0 + 8 * (((v2 == 0) * (((v1 - 1133817388) & 0x4394AEFE) + 18 * (v1 ^ 0x5DA) - 3029)) ^ v1)))();
}

uint64_t sub_100251A04(uint64_t a1)
{
  v3 = *(v2 + 8 * v1);
  LODWORD(STACK[0x5F0]) = v1 + 3355;
  return v3(a1, 2257335127, 353104820, 2120930640, 990);
}

uint64_t sub_100251AF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X7>, unsigned int a7@<W8>)
{
  v26 = ((v10 ^ 0xDA) * v8);
  v27 = v20 ^ v22 ^ *(*(a6 + 8 * v11) + 4 * (((v18 ^ v26 ^ 6) + v16 - 2 * ((v18 ^ v26 ^ 6) & v16)) ^ 0xFCu) + v12);
  v28 = (v27 - (v13 & (2 * v27)) + v14) ^ v25;
  v29 = v19 ^ v17 ^ (v28 + v9 - ((2 * v28) & 0xD22242F4));
  v30 = 2 * (v10 & 1) + (v10 ^ (a7 + 1));
  *(a1 + 4 * v26) = v24 ^ (v29 + v23 - (v21 & (2 * v29))) ^ a2;
  return (*(v15 + 8 * (((((v30 + a7 - (a3 & (2 * v30))) ^ a7) > a4) * a5) ^ v7)))();
}

uint64_t sub_100251BB4()
{
  LODWORD(STACK[0x5F8]) = v1;
  v2 = STACK[0x5F0];
  v3 = (*(v0 + 8 * (LODWORD(STACK[0x5F0]) + 5800)))(1028);
  STACK[0x868] = v3;
  return (*(v0 + 8 * (((v3 == 0) * (((v2 - 2034472920) & 0x7943A79E ^ 0xFFFFDB2B) + ((v2 - 1719483471) & 0x667D2FDF))) ^ v2)))();
}

uint64_t sub_100251C48(uint64_t a1)
{
  v3 = *(v2 + 8 * v1);
  LODWORD(STACK[0x5F0]) = (v1 ^ 0xAC) - 304;
  return v3(a1, LODWORD(STACK[0x500]), 67, v1 ^ 0x20D9, -937479318, 844082956, 979992861, 17);
}

uint64_t sub_100251D2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, char a9@<W8>)
{
  v23 = *(*(v15 + 8 * a4) + 4 * (((((v10 + v11 - (v12 & 0x5C)) ^ a9 ^ 0xB0) - 2 * (((v10 + v11 - (v12 & 0x5C)) ^ a9 ^ 0xB0) & 0x1E ^ ((v10 + v11 - (v12 & 0x5C)) ^ a9) & 8) + 22) ^ v16) ^ a3) + a5);
  v24 = v23 ^ v19 ^ (((v23 >> 2) ^ (v23 >> 1) ^ a6) - 2 * (((v23 >> 2) ^ (v23 >> 1) ^ a6) & a7 ^ ((v23 >> 2) ^ (v23 >> 1)) & a8) + v18);
  *(a1 + 4 * v11) = a2 ^ v14 ^ v22 ^ (v24 - (v20 & (2 * v24)) + v21);
  return (*(v17 + 8 * ((172 * (v13 != 0)) ^ v9)))();
}

uint64_t sub_100251DF0()
{
  v1 = STACK[0x5F0];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x5F0]) ^ 0x87D)))(1032);
  STACK[0x7F0] = v2 + 0x52CE7B6EFB823F09;
  return (*(v0 + 8 * (((v2 == 0) * ((((v1 - 8456) ^ 0x65E) + 4644) ^ ((v1 - 8456) | 0x18A1))) | v1)))();
}

uint64_t sub_100251F10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v14 = *(*(&off_1002DD400 + v8) + 4 * ((v5 ^ v4) ^ v7) + v9) ^ v13;
  *(a1 + 4 * v5) = LODWORD(STACK[0x4C0]) ^ (v14 + a4 - (v10 & (2 * v14))) ^ v11;
  return (*(STACK[0x630] + 8 * (((v6 == 0) * a2) ^ v12)))();
}

uint64_t sub_100251F7C()
{
  v1 = STACK[0x630];
  v2 = (*(STACK[0x630] + 8 * (v0 + 8076)))(1032);
  STACK[0x8A0] = v2 + 0x1239F996712BD8FLL;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 1209966046) & 0xB7E17B3C) - 7334) ^ 0x5EE)) ^ v0)))();
}

uint64_t sub_1002520A4(uint64_t a1, uint64_t a2, int a3)
{
  v14 = LODWORD(STACK[0x520]) ^ v11 ^ (*(*(&off_1002DD400 + v6) + (v3 ^ v4 ^ v12 ^ 0x1FF8u) + v7) + 64);
  v15 = v8 ^ (v14 - 1874404108 - ((2 * v14) & 0x208DB9E8));
  v16 = (v15 - 447550240 - (v9 & (2 * v15))) ^ LODWORD(STACK[0x4A0]);
  *(a1 + 4 * v4) = LODWORD(STACK[0x4A8]) ^ (a3 + 28) ^ (v16 - 1102848808 - (v10 & (2 * v16)));
  return (*(STACK[0x630] + 8 * ((14 * (v5 == 0)) ^ v13)))();
}

uint64_t sub_10025216C()
{
  v1 = STACK[0x630];
  v2 = (*(STACK[0x630] + 8 * (v0 ^ 0x36AD)))(1028);
  STACK[0x878] = v2 + 0x6677C41C9F90D9BALL;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x1986) - 1627)) ^ v0)))();
}

uint64_t sub_100252264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W8>)
{
  v10 = ((((v4 - 47 - (v5 & 0xA2)) ^ LOBYTE(STACK[0x530])) - (v7 & (2 * ((v4 - 47 - (v5 & 0xA2)) ^ LOBYTE(STACK[0x530])))) + 22) ^ LODWORD(STACK[0x488]));
  v11 = v10 ^ *(*(&off_1002DD400 + v9) + 4 * (v10 ^ v8) + a2);
  *(a1 + 4 * v4) = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x5F8]) ^ a3 ^ (v11 - 384753286 - ((2 * v11) & 0xD22242F4));
  return (*(STACK[0x630] + 8 * ((4 * (v6 == 0)) | (8 * (v6 == 0)) | a4)))();
}

uint64_t sub_100252324()
{
  v1 = STACK[0x630];
  v2 = (*(STACK[0x630] + 8 * (v0 ^ 0x3D47)))(1028);
  STACK[0x890] = v2 + 0x419DC62E5D3328BCLL;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 178767112) & 0xAA7B6F7) + 2) ^ (v0 - 3540))) ^ v0)))();
}

uint64_t sub_10025246C(uint64_t a1, int a2)
{
  v13 = *(*(&off_1002DD400 + v6) + 4 * ((v3 ^ v2) ^ v5) + v7);
  *(a1 + 4 * v3) = v12 ^ LODWORD(STACK[0x4A8]) ^ v9 ^ (v13 - 1102848808 - ((v13 << v8) & v11));
  return (*(STACK[0x630] + 8 * (((v4 == 0) * a2) ^ v10)))();
}

uint64_t sub_100258F14()
{
  v3 = (v1 + 554176359) & 0xDEF7FFBE;
  v4 = (2 * v1) ^ 0x126A;
  (*(v2 + 8 * (v1 + 9002)))(STACK[0x7F0] + v0);
  (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x878] - 0x6677C41C9F90D9BALL);
  (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x870] - 0xD0EC592E7DECE7);
  (*(STACK[0x630] + 8 * (v1 ^ 0x2FD6)))(STACK[0x898] - 0x6F06F168B51E0639);
  (*(STACK[0x630] + 8 * (v1 ^ 0x2FD6)))(STACK[0x818] - 0x70588A91238395A1);
  (*(STACK[0x630] + 8 * (v1 ^ 0x2FD6)))(STACK[0x890] - 0x419DC62E5D3328BCLL);
  (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x8A0] - 0x1239F996712BD8FLL);
  (*(STACK[0x630] + 8 * (v1 ^ 0x2FD6)))(STACK[0x840] - 0x2B2CAA2D8CADDB0ALL);
  (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x850] - 0x4C2CD2CC1C0BEF17);
  (*(STACK[0x630] + 8 * (v1 ^ 0x2FD6)))(STACK[0x808]);
  (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x880] - 0x6DBD7C0F11DC9778);
  (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x868]);
  (*(STACK[0x630] + 8 * (v1 ^ 0x2FD6)))(STACK[0x8B0] - 0x2B6EB091E8CEE6B1);
  (*(STACK[0x630] + 8 * (v1 ^ 0x2FD6)))(STACK[0x8A8] - 0x460406476BDB2B68);
  (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x800]);
  v5 = (*(STACK[0x630] + 8 * (v1 + 9002)))(STACK[0x858]);
  v6 = STACK[0x630];
  v7 = STACK[0x864];
  LODWORD(STACK[0x620]) = v3;
  LODWORD(STACK[0x610]) = v4;
  return (*(v6 + 8 * ((52 * (v7 == ((v3 + 2386) ^ v4))) ^ v1)))(v5);
}

uint64_t sub_100259198()
{
  LODWORD(STACK[0x864]) = 739078469;
  v1 = STACK[0x608];
  v2 = *(STACK[0x608] + 1);
  v3 = STACK[0x620];
  v4 = *(&off_1002DD400 + LODWORD(STACK[0x620]) - 4978) - 1902804079;
  v5 = *&v4[4 * (v2 ^ 0x80)];
  v6 = v2 + 930353883 + (~(2 * v2) | 0xFFFFFE4B);
  v7 = *(STACK[0x608] + 5);
  v8 = *(&off_1002DD400 + (LODWORD(STACK[0x620]) ^ 0x1466)) - 395077279;
  LODWORD(v2) = v8[*(STACK[0x608] + 3) ^ 0x55] ^ 0xFFFFFF94;
  v9 = *&v4[4 * (v7 ^ 0x61)];
  v10 = *STACK[0x608];
  v11 = *(&off_1002DD400 + LODWORD(STACK[0x620]) - 5374) - 738347131;
  v12 = (v7 ^ 0xC9) + 930353883 + (~(2 * (v7 ^ 0xC9)) | 0xFFFFFE4B);
  v13 = *(STACK[0x608] + 15);
  v14 = *(&off_1002DD400 + (LODWORD(STACK[0x620]) ^ 0x14D9)) - 1988779910;
  LODWORD(STACK[0x610]) = __ROR4__(v5 ^ v6 ^ 0xC6BFD45E ^ v10 ^ 0x75 ^ (*&v11[4 * (*(STACK[0x608] + 2) ^ 0x7BLL)] + 694340999) ^ *&v14[4 * (v10 ^ 0xF)] ^ (v2 >> 4) & 3 ^ v2 ^ ((v10 ^ 0x75) - ((2 * (v10 ^ 0x75) + 160) & 0x106) + 406269395), 6) ^ 0x5F6C9CBC;
  LODWORD(v13) = ((v8[v13] ^ 0xFFFFFF94) >> 4) & 3 ^ v8[v13] ^ 0xFFFFFF94;
  v15 = *&v11[4 * (v1[6] ^ 0xE3)] + 694340999;
  v16 = v8[v1[7] ^ 0x68] ^ 0xFFFFFF94;
  v17 = v1[11] ^ 0x13;
  v18 = v1[9];
  STACK[0x500] = v8;
  v19 = ((v8[v17] ^ 0xFFFFFF94) >> 4) & 3 ^ v8[v17] ^ 0x94;
  v20 = *&v4[4 * (v18 ^ 0xC1)];
  v21 = v1[8];
  LODWORD(STACK[0x5E8]) = v21 ^ 0xB4;
  LODWORD(v17) = ((v21 ^ 0xB4) + 80) & 0x87 ^ (v21 ^ 0xB4 | 0x7FFFFFFB);
  v22 = v1[10] ^ 0x3ALL;
  v23 = (v18 - ((2 * v18) & 0x1B4) + 930353882) ^ v20;
  v24 = v1[13];
  LODWORD(STACK[0x5E0]) = v23 ^ *&v14[4 * (v21 ^ 0xCE)];
  v25 = v24 ^ 0xC9;
  v26 = v1[14] ^ 0x16;
  v27 = v1[4];
  LODWORD(v2) = (v24 ^ 0x61) - ((2 * (v24 ^ 0x61)) & 0x1B4);
  v28 = v1[12];
  LODWORD(STACK[0x5C8]) = v27 ^ 0xB4;
  LODWORD(STACK[0x530]) = (2 * (v27 ^ 0xB4) + 160) & 0x106;
  LODWORD(v24) = (v28 ^ 0xA8) - ((2 * (v28 ^ 0xA8)) & 0x158) - 123579220;
  LODWORD(STACK[0x52C]) = v12 ^ v9 ^ v15 ^ (v16 >> 4) & 3 ^ v16;
  STACK[0x508] = v4;
  LODWORD(v2) = *&v4[4 * v25] ^ (v2 + 930353882);
  LODWORD(STACK[0x5D8]) = v19;
  LODWORD(STACK[0x520]) = (2 * v17) ^ 0x84112009;
  LODWORD(STACK[0x5D0]) = *&v11[4 * v22] + 694340999;
  STACK[0x4F8] = v11;
  v29 = *&v11[4 * v26];
  LODWORD(STACK[0x518]) = *&v14[4 * (v27 ^ 0xCE)];
  LODWORD(STACK[0x5F8]) = v24;
  STACK[0x510] = v14;
  v30 = v2 ^ (v29 + 694340999) ^ *&v14[4 * (v24 ^ 0xF8A254D6)] ^ ((v24 ^ 0xF8A254AC) - 1672983084 + (~(2 * (v24 ^ 0xF8A254AC) - 1537248608) | 0x6BCED6F9)) ^ v13;
  LODWORD(STACK[0x5F0]) = v30 - ((2 * v30) & 0xF144A958) - 123579220;
  LODWORD(STACK[0x600]) ^= 0x34E261AAu;
  return (*(v0 + 8 * v3))();
}

uint64_t sub_1002596E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(STACK[0x630] + 8 * a4);
  LODWORD(STACK[0x5C8]) ^= LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x518]) ^ (LODWORD(STACK[0x5C8]) + 406269395 - LODWORD(STACK[0x530]));
  return v4((a4 - 1064));
}

uint64_t sub_100259948()
{
  HIDWORD(v4) = STACK[0x610];
  LODWORD(v4) = STACK[0x610];
  LODWORD(STACK[0x5E0]) = v4 >> 26;
  LODWORD(STACK[0x5F8]) ^= LODWORD(STACK[0x5F0]);
  return (*(v3 + 8 * ((246 * ((v2 + v1) % (v0 - 6739) == 0)) ^ v0)))();
}

uint64_t sub_1002599B8()
{
  LODWORD(STACK[0x610]) = (v0 + 373441252) & 0xE9BDBFFF;
  v2 = (*(v1 + 8 * (v0 ^ 0x3287)))(1032);
  STACK[0x888] = v2;
  STACK[0x620] = v2;
  return (*(v1 + 8 * ((2043 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_100259A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = (((LODWORD(STACK[0x3C0]) ^ 0xFAE80933) + v6 - 147218122) ^ 0xEBDFE30E ^ LODWORD(STACK[0x610])) + ((2 * ((LODWORD(STACK[0x3C0]) ^ 0xFAE80933) + v6 - 147218122)) & 0xD7BFFBB0);
  v14 = LODWORD(STACK[0x3D8]) ^ 0x8ED08AD;
  v15 = ((2 * ((LODWORD(STACK[0x3D4]) ^ 0x53818410) - 585960302 + v9)) & 0xAF9BFADE) + (((LODWORD(STACK[0x3D4]) ^ 0x53818410) - 585960302 + v9) ^ 0x57CDFD6F);
  LODWORD(STACK[0x5D0]) = -1436357849 * v15 - 847544553;
  v16 = v14 + v10 - 612844339;
  LODWORD(STACK[0x4A8]) = -1323154637 * v16 + 1566391322;
  v17 = (LODWORD(STACK[0x3B8]) ^ 0x3E6D071D) + v11 + v7;
  v18 = ((966543324 * v15) | ((1315377655 * v15 - 792519961) >> 30)) + 1124887452;
  v19 = ((2 * v18) & 0xFBF9FFFC) + (v18 ^ 0xFDFCFFFE);
  v20 = ((2013265920 * v16) | ((-1916432785 * v16 + 2092775330) >> 5)) + 0x10000000 - 2 * ((((2013265920 * v16) | ((-1916432785 * v16 + 2092775330) >> 5)) + 0x10000000) & 0xB5D88DE ^ ((-1916432785 * v16 + 2092775330) >> 5) & 8) - 1956804394;
  v21 = ((-824843280 * v17) | ((1290624575 * v17 - 492191164) >> 28)) + 714875968;
  v22 = ((2 * v21) & 0x3FB3BFFA) + (v21 ^ 0x9FD9DFFD);
  v23 = ((1978466304 * v13) | ((64976365 * v13 - 1686747384) >> 16)) + 1225457666 + v19;
  v24 = v22 + 1613111299 + ((v23 - ((2 * v23) & 0x16BB11AC) - 1956804394) ^ v20);
  v25 = ((-1342678089 * v24) >> 3) - (v24 << 29) - 2 * ((((-1342678089 * v24) >> 3) - (v24 << 29)) & 0x236512AF ^ ((-1342678089 * v24) >> 3) & 0xC) - 1553657181;
  v26 = ((2081423360 * v19) | ((2052753345 * v19 + 234360706) >> 12)) - 132120576;
  v27 = (-1909456896 * (v20 ^ 0x8B5D88D6)) | ((2072402147 * (v20 ^ 0x8B5D88D6)) >> 12);
  v28 = ((2 * v27) & 0xFE75BDFE) + (v27 ^ 0x7F3ADEFF);
  v29 = ((2004877312 * v22) | ((1625792239 * v22 + 1309588685) >> 9)) + 1719664640 - 2 * ((((2004877312 * v22) | ((1625792239 * v22 + 1309588685) >> 9)) + 1719664640) & 0x5766DB5D ^ ((1625792239 * v22 + 1309588685) >> 9) & 1) + 1466358620;
  v30 = (v25 ^ (v26 - ((2 * v26) & 0x46CA2546) - 1553657181)) - v28;
  v31 = (v30 - ((2 * v30 - 25838082) & 0xAECDB6B8) - 694044069) ^ v29;
  v32 = (-446479732 * (v25 ^ 0xA36512A3)) | ((-1185361757 * (v25 ^ 0xA36512A3)) >> 30);
  v33 = ((2 * v32) & 0xCEDD7BFE) + (v32 ^ 0xE76EBDFF);
  v34 = ((-573046784 * v31) | ((1401609147 * v31) >> 13)) - 2 * (((-573046784 * v31) | ((1401609147 * v31) >> 13)) & 0x153A051F ^ ((1401609147 * v31) >> 13) & 2) - 1791359715;
  v35 = ((1334651131 * (v29 ^ 0x5766DB5C)) >> 3) | (((v29 ^ 0x5766DB5C) + 2 * v29) << 29);
  v36 = ((2 * v35) & 0xFF4F7EBC) + (v35 ^ 0xFFA7BF5E);
  v37 = ((384303104 * v28) | ((1878328029 * v28 - 1184596003) >> 13)) - v33 - 430522881;
  v38 = v36 + 5783714 + (v34 ^ (v37 - ((2 * v37) & 0x2A740A3A) - 1791359715));
  v39 = ((1519012960 * v33) | ((1523864163 * v33 + 170186851) >> 27)) + 1151011936;
  v40 = (389021696 * (v34 ^ 0x953A051D)) | ((1371521395 * (v34 ^ 0x953A051D)) >> 12);
  v41 = ((2 * v40) & 0x7B7FEF6C) + (v40 ^ 0x3DBFF7B6);
  v42 = ((-756083844 * v38) | ((1958462687 * v38) >> 30)) - 2 * (((-756083844 * v38) | ((1958462687 * v38) >> 30)) & 0x471A42BD ^ ((1958462687 * v38) >> 30) & 1) - 954580292;
  v43 = v42 ^ ((((1817271493 * v36 - 966396758) >> 4) | (1342177280 * v36)) - v39 - v41 - 574621770);
  v44 = v42 ^ 0xC71A42BC;
  v45 = v43 ^ 0xF048B456 ^ (v39 - v41 + 1794017722 + (v42 ^ 0xC71A42BC) - ((2 * (v39 - v41 + 1794017722 + (v42 ^ 0xC71A42BC)) + 706661398) & 0x6EA5EDD4) + 207772917);
  v46 = v41 - v45;
  v47 = v45 + 228721516;
  LODWORD(STACK[0x4D0]) = v43;
  v48 = (v43 ^ 0xC71A42BC ^ (v45 + 228721516)) - ((2 * (v43 ^ 0xC71A42BC ^ (v45 + 228721516))) & 0xABF5A64) - 2057327310;
  v49 = v44 - v45 - 228721516;
  v50 = v49 - ((2 * v49) & 0x7E629C6C) - 1087287754;
  LODWORD(STACK[0x52C]) = v50;
  v51 = v45 * a6 + ((1906004335 * v45 - 356997164) >> 6) + 1342177280;
  HIDWORD(v52) = v49;
  LODWORD(v52) = -1886564115 * (v50 ^ 0xBF314E36);
  v53 = ((2 * (v52 >> 1)) & 0xFFDFFF3E) + ((v52 >> 1) ^ 0x7FEFFF9F);
  v54 = ((1393328128 * v46) | ((2102044185 * v46 - 389911122) >> 17)) + 1463099620 + (~(2 * (((1393328128 * v46) | ((2102044185 * v46 - 389911122) >> 17)) + 920059904)) | 0xBF43BE39);
  v55 = v54 ^ (v51 + 543039716 + (~(2 * v51) | 0xBF43BE39)) ^ (v53 - 2146434975);
  v56 = ((v48 << 28) ^ 0xD0000000) + ((-1219919761 * (v48 ^ 0x855FAD32)) >> 4) + 0x10000000;
  v57 = ((2 * v56) & 0xBBFE77BA) + (v56 ^ 0x5DFF3BDD);
  v58 = (1242664984 * (v57 - 1577008093 + v55)) | ((-1455279613 * (v57 - 1577008093 + v55)) >> 29);
  v59 = ((2 * v58) & 0xFD2CFE5E) + (v58 ^ 0x7E967F2F);
  v60 = ((-751257088 * v53) | ((-2081842083 * v53 + 1096040253) >> 23)) - 1468106240;
  v61 = ((2 * v60) & 0x3AEBFFB2) + (v60 ^ 0x1D75FFD9);
  HIDWORD(v52) = 359988833 * (v54 ^ 0x205E20E3);
  LODWORD(v52) = HIDWORD(v52);
  v62 = (v52 >> 30) + v61 + 1676902648 + v59;
  v63 = ((770391703 * v57 - 250271067) >> 2) - (v57 << 30);
  v64 = v63 + 177398248 + ((2 * v63) & 0x9525C3CE ^ 0x7FFFFFFF);
  v65 = (v62 - ((2 * v62) & 0x9525C3CE) - 896343577) ^ v64;
  v66 = ((2079473664 * v59) | ((382070729 * v59 + 837698329) >> 18)) - 1866055680;
  v67 = ((2 * v66) & 0xD2AFEFF6) + (v66 ^ 0x6957F7FB);
  v68 = ((219414528 * v65) | ((-1829223611 * v65) >> 14)) - 2 * (((219414528 * v65) | ((-1829223611 * v65) >> 14)) & 0x2BA7C53B ^ ((-1829223611 * v65) >> 14) & 1) - 1415068358;
  v69 = (667990272 * (v64 ^ 0xCA92E1E7)) | ((1411895481 * (v64 ^ 0xCA92E1E7)) >> 24);
  v70 = ((2 * v69) & 0x9D7B9FDC) + (v69 ^ 0xCEBDCFEE);
  v71 = ((886177792 * v61) | ((1340545641 * v61 + 449775103) >> 15)) - 1566177275 + v67;
  v72 = v70 + 826421266 + (v68 ^ (v71 - ((2 * v71) & 0x574F8A74) - 1415068358));
  v73 = ((1737490432 * v67) | ((-620730759 * v67 + 1872611421) >> 12)) - 2049966080;
  v74 = ((593494016 * (v68 ^ 0xABA7C53A)) | ((1279766811 * (v68 ^ 0xABA7C53A)) >> 11)) - 2 * (((593494016 * (v68 ^ 0xABA7C53A)) | ((1279766811 * (v68 ^ 0xABA7C53A)) >> 11)) & 0x16D9A19A ^ ((1279766811 * (v68 ^ 0xABA7C53A)) >> 11) & 0x10) + 383361418;
  v75 = ((-469762048 * v72) | ((-377600775 * v72) >> 6)) - 2 * (((-469762048 * v72) | ((-377600775 * v72) >> 6)) & 0x7D014DF ^ ((-377600775 * v72) >> 6) & 6) - 2016406311;
  v76 = 503557773 * v13 - ((1007115546 * v13 + 455131152) & 0x2E841B16) + 617770387;
  LODWORD(STACK[0x4C0]) = 382470667 * v17;
  v77 = ((-208115056 * v70) | ((-1623619927 * v70 + 199043042) >> 28)) - v73 - 1110278624;
  v78 = v74 ^ (v77 - ((2 * v77) & 0x2DB34314) + 383361418) ^ v75;
  v79 = (-602944493 * ((v74 ^ 0xE9265E75) + v73 + (v75 ^ 0x782FEB26)) - 2135680991) ^ v78;
  v80 = ((2 * v79) & 0xBF7F9F8C ^ 0xF200980) + (v79 ^ 0x586FDB1F);
  v81 = 534298029 * v80 - ((1068596058 * v80 - 875113884) & 0xD4FC7F70) - 798381846;
  v82 = (v81 ^ 0xEA7E3FB8) + (v74 ^ 0x16D9A18A) - ((2 * ((v81 ^ 0xEA7E3FB8) + (v74 ^ 0x16D9A18A))) & 0xD741EFD6) - 341772309;
  v83 = (v82 ^ v47 ^ 0xEBA0F7EB) - 2 * ((v82 ^ v47 ^ 0xEBA0F7EB) & 0x2797A4DF ^ (v82 ^ v47) & 0x10);
  v84 = ((2 * ((v75 ^ 0x87D014D9) - (v81 ^ 0xEA7E3FB8))) & 0x5BFFF5F8) + (((v75 ^ 0x87D014D9) - (v81 ^ 0xEA7E3FB8)) ^ 0x2DFFFAFC);
  v85 = 2128476249 * v80 - 1826950102;
  v86 = -256770048 * v80;
  LODWORD(STACK[0x4A0]) = v84;
  v87 = (-1149878272 * (v82 ^ 0xEBA0F7EB)) | ((112651737 * (v82 ^ 0xEBA0F7EB)) >> 18);
  v88 = ((2 * v87) & 0xDFFFDB7E) + (v87 ^ 0xEFFFEDBF);
  LODWORD(STACK[0x490]) = v78;
  LODWORD(STACK[0x4BC]) = v81 ^ v78;
  v89 = (v86 & 0xFFFE0000 | (v85 >> 15)) - 128708031 + v88;
  v90 = (493519872 * (v81 ^ v78 ^ 0x6DAE2B61)) | ((273111713 * (v81 ^ v78 ^ 0x6DAE2B61)) >> 22);
  v91 = ((2 * v90) & 0xD5E5DE6A) + (v90 ^ 0x6AF2EF35);
  v92 = ((-114508420 * v84 + 2087084528) & 0xFFFFFFFC | ((2118856543 * v84 + 1595512956) >> 30)) - 2 * (((-114508420 * v84 + 2087084528) & 0x4557265C | ((2118856543 * v84 + 1595512956) >> 30) & 0x4557265D) ^ (-114508420 * v84 + 2087084528) & 0x14) + 1163339337;
  v93 = v91 - 1794305845 + ((v89 - ((2 * v89) & 0x8AAE4C92) + 1163339337) ^ v92);
  v94 = ((265648768 * v93) | ((-601904395 * v93) >> 25)) - ((2 * ((265648768 * v93) | ((-601904395 * v93) >> 25))) & 0xACA7E81A);
  v95 = (600432640 * (v92 ^ 0x45572649)) | ((-1568072113 * (v92 ^ 0x45572649)) >> 19);
  v96 = ((2 * v95) & 0xDCF2FFE6) + (v95 ^ 0xEE797FF3);
  v97 = v96 + 294027277 + ((v94 + 1448342541) ^ (((98641739 * v88 + 49168395) >> 2) - (v88 << 30) + 374600719 + ((2 * ((((98641739 * v88 + 49168395) >> 2) - (v88 << 30)) & 0x5653F41F ^ ((98641739 * v88 + 49168395) >> 2) & 0x12)) ^ 0x7FFFFFFE)));
  v98 = ((1820721152 * v91) | ((607565379 * v91 + 1663940385) >> 15)) + 1849819136 - 2 * ((((1820721152 * v91) | ((607565379 * v91 + 1663940385) >> 15)) + 1849819136) & 0x6635A0BE ^ ((607565379 * v91 + 1663940385) >> 15) & 0x16) + 1714790568;
  v99 = (v97 - ((2 * v97) & 0xCC6B4150) + 1714790568) ^ v98;
  v98 ^= 0x6635A0A8u;
  v100 = ((2 * ((-504812096 * v99) | ((-1350064969 * v99) >> 26))) & 0xF9EF7552) + (((-504812096 * v99) | ((-1350064969 * v99) >> 26)) ^ 0x7CF7BAA9);
  v101 = (-2057633792 * ((v94 + 1448342541) ^ 0x5653F40D)) | ((1351320923 * ((v94 + 1448342541) ^ 0x5653F40D)) >> 16);
  v102 = ((2 * v101) & 0x9B697FFA) + (v101 ^ 0xCDB4BFFD);
  v103 = -581873953 * v98;
  v104 = (1323237376 * v98) | ((-581873953 * v98) >> 16);
  v105 = ((-977305600 * v96) | ((-1488090241 * v96 - 1205234317) >> 17)) + v102 - 2146630310 + v100;
  v106 = v104 - 2 * (v104 & 0x34E8045C ^ HIWORD(v103) & 8) - 1259862956;
  v107 = (v105 - ((2 * v105) & 0x69D008A8) - 1259862956) ^ v106;
  v108 = ((1468006400 * v102) | ((1884568751 * v102 + 1433237005) >> 9)) + 109051904;
  v109 = v108 ^ ((1412431872 * (v106 ^ 0xB4E80454)) | ((-3545789 * (v106 ^ 0xB4E80454)) >> 12));
  v110 = ((-467957760 * v100) | ((-1214479503 * v100 - 2077876121) >> 21)) + 822294528 - 2 * ((((-467957760 * v100) | ((-1214479503 * v100 - 2077876121) >> 21)) + 822294528) & 0x65232DEF ^ ((-1214479503 * v100 - 2077876121) >> 21) & 3) - 450679316;
  v111 = v110 ^ (v109 - ((2 * v109) & 0xCA465BD8) - 450679316);
  v110 ^= 0xE5232DEC;
  v112 = ((-1447034880 * v107) | ((1570182823 * v107) >> 10)) - 2 * (((-1447034880 * v107) | ((1570182823 * v107) >> 10)) & 0x47BA933E ^ ((1570182823 * v107) >> 10) & 0xA) + 1203409716;
  v113 = v112 ^ 0x47BA9334;
  v114 = (v112 ^ 0x47BA9334) + v111 - ((2 * ((v112 ^ 0x47BA9334) + v111)) & 0x5383A202);
  v115 = ((v114 - 1446915839) ^ 0xA9C1D101) + (v112 ^ 0xD84A1683 ^ (v108 - v110 + 1203409716 + (~(2 * (v108 - v110)) | 0x708AD997) + 1));
  v116 = -1963485897 * v115 + 250783895;
  v115 += 818493345;
  v117 = ((2 * (v115 + v110)) & 0xFE35DCBC) + ((v115 + v110) ^ 0xFF1AEE5E);
  LODWORD(STACK[0x4C8]) = v114 - 1446915839;
  v118 = ((2 * (v115 + v113)) & 0x97AEBDF6) + ((v115 + v113) ^ 0xCBD75EFB);
  v119 = v83 + 664249551;
  LODWORD(STACK[0x488]) = ((v83 + 664249551) ^ 0x2797A4CF) + (LODWORD(STACK[0x3A0]) ^ 0xAA855F7D) - 2 * (((v83 + 664249551) ^ 0x2797A4CF) & (LODWORD(STACK[0x3A0]) ^ 0x2A855F7D));
  v120 = ((1728053248 * v117) | ((-1340081561 * v117 - 1845474258) >> 8)) + 771751936;
  v121 = ((2 * v120) & 0x56FEDB76) + (v120 ^ 0x2B7F6DBB);
  HIDWORD(v52) = v116;
  LODWORD(v52) = v116;
  v122 = (v115 ^ (v114 - 1446915839) ^ 0xA9C1D101) - 2 * ((v115 ^ (v114 - 1446915839) ^ 0xA9C1D101) & 0x657D42A9 ^ (v115 ^ (v114 - 1446915839)) & 8) + 1702707873;
  v123 = (-146800640 * (v122 ^ 0x657D42A1)) | ((-625335331 * (v122 ^ 0x657D42A1)) >> 10);
  v124 = ((2 * v123) & 0xFE3FD7FE) + (v123 ^ 0x7F1FEBFF);
  v125 = ((-1442840576 * v118) | ((1652092501 * v118 + 2072517801) >> 7)) + 1375731712 - 2 * ((((-1442840576 * v118) | ((1652092501 * v118 + 2072517801) >> 7)) + 1375731712) & 0xB4D9A8F ^ ((1652092501 * v118 + 2072517801) >> 7) & 0xC) - 1957848445;
  v126 = (((v52 >> 18) - v121 + 729771451 - ((2 * ((v52 >> 18) - v121 + 729771451)) & 0x169B3506) - 1957848445) ^ v125) - v124 + 2132798463;
  v127 = ((-985268224 * v126) | ((-537599325 * v126) >> 15)) - 2 * (((-985268224 * v126) | ((-537599325 * v126) >> 15)) & 0x2DB21F0F ^ ((-537599325 * v126) >> 15) & 1);
  v128 = ((575157807 * v121 + 1876781227) >> 6) + v121 * a6 - 1409286144 - 2 * ((((575157807 * v121 + 1876781227) >> 6) + v121 * a6 - 1409286144) & 0x4925584E ^ ((575157807 * v121 + 1876781227) >> 6) & 2);
  v129 = ((-718797280 * v124) | ((-1498857423 * v124 - 1970465743) >> 27)) + 1369605664;
  v130 = ((2 * v129) & 0xE3F7B5FE) + (v129 ^ 0x71FBDAFF);
  v131 = ((1261436928 * (v125 ^ 0x8B4D9A83)) | ((567121075 * (v125 ^ 0x8B4D9A83)) >> 12)) - 2 * (((1261436928 * (v125 ^ 0x8B4D9A83)) | ((567121075 * (v125 ^ 0x8B4D9A83)) >> 12)) & 0x4925585F ^ ((567121075 * (v125 ^ 0x8B4D9A83)) >> 12) & 0x13) + 1227184204;
  v132 = (v131 ^ (v128 + 1227184204)) - ((2 * (v131 ^ (v128 + 1227184204))) & 0x5B643E1C);
  v127 -= 1380835570;
  v133 = v127 ^ 0xADB21F0E;
  v134 = v127 ^ (v132 - 1380835570);
  v135 = 1868574023 * v130 + 1829204039;
  v136 = -1115638500 * v130 - 1273118436;
  v137 = v134 - v130 + 1912331007;
  v138 = ((2 * ((-425746304 * v133) | ((-1848819903 * v133) >> 25))) & 0xEDBFEF5E) + (((-425746304 * v133) | ((-1848819903 * v133) >> 25)) ^ 0x76DFF7AF);
  v139 = ((v136 & 0xFFFFFFFC | (v135 >> 30)) ^ 0x73FFFB4C) + ((2 * v136) & 0xE7FFF698);
  v140 = ((-1090519040 * (v131 ^ 0x4925584C)) | ((2034403007 * (v131 ^ 0x4925584C)) >> 8)) - 1994389423 + v138;
  v141 = ((1100987484 * v137) | ((-1872236777 * v137) >> 30)) - 2 * (((1100987484 * v137) | ((-1872236777 * v137) >> 30)) & 0x534227B ^ ((-1872236777 * v137) >> 30) & 2) - 2060180871;
  v142 = ((v140 - ((2 * v140) & 0xA6844F2) - 2060180871) ^ v141) - v139 + 1946155852;
  v143 = ((-201326592 * v138) | ((-833199811 * v138 - 922833843) >> 6)) + 872415232;
  v144 = (65011712 * (v141 ^ 0x85342279)) | ((594802719 * (v141 ^ 0x85342279)) >> 11);
  v145 = ((2 * v144) & 0x5FBFE9FE) + (v144 ^ 0xAFDFF4FF);
  v146 = ((-337892836 * v139) | ((989268615 * v139 + 635273964) >> 30)) - v143 - 409594191 + v145;
  v147 = ((-1849425920 * v142) | ((-240999311 * v142) >> 14)) - 2 * (((-1849425920 * v142) | ((-240999311 * v142) >> 14)) & 0x18502B37 ^ ((-240999311 * v142) >> 14) & 0x11) - 1739576538;
  v148 = v147 ^ (v146 - ((2 * v146) & 0x30A0564C) - 1739576538);
  v149 = ((-296273927 * (v143 - v145 - 1344277249) - ((481193970 * (v143 - v145 - 1344277249)) & 0x30A0564C) - 1739576538) ^ v147) - v148 - 2024601220;
  v150 = v149 - ((2 * v149 - 1308402718) & 0xEA925E10) + 1313529081;
  v151 = v145 + 1344277249 + (v150 ^ 0x75492F08) - ((2 * (v145 + 1344277249 + (v150 ^ 0x75492F08))) & 0xAC0D8098) + 1443283020;
  LODWORD(STACK[0x4E0]) = (v115 ^ 0x5606C04C ^ v151) - ((2 * (v115 ^ 0x5606C04C ^ v151)) & 0xE3657534) - 239945062;
  LODWORD(STACK[0x480]) = (v147 ^ 0xED19042E ^ v150) + 2 * ((v150 ^ 0x75492F08) & (v147 ^ 0x18502B26));
  LODWORD(STACK[0x4B0]) = v150 ^ (v148 - ((2 * v148) & 0xEA925E10) + 1967730440);
  LODWORD(STACK[0x518]) = HIBYTE(v76) ^ 0x97;
  LODWORD(STACK[0x4F0]) = HIBYTE(v81) ^ 0xEA;
  LODWORD(STACK[0x4E8]) = v119;
  LODWORD(STACK[0x530]) = v119 ^ LODWORD(STACK[0x3A8]);
  LODWORD(STACK[0x608]) = v82;
  LODWORD(STACK[0x4D8]) = v82 ^ v76;
  LODWORD(STACK[0x498]) = v82 ^ v76 ^ LODWORD(STACK[0x398]);
  LODWORD(STACK[0x5D8]) = v151;
  LODWORD(STACK[0x520]) = v151 ^ v81;
  return (*(v12 + 8 * (v8 - 3776)))(255, 154, -1263047231, (v8 - 7153), 3405415746, 929876699, 4644);
}

uint64_t sub_10025B1B8@<X0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W8>)
{
  v19 = (v13 ^ v15) ^ *(*(v16 + 8 * v14) + 4 * ((v13 ^ v15) ^ a2) + a3);
  v20 = (v19 + v10 - ((v19 << a4) & a5)) ^ v11;
  *(v17 + 4 * v13) = v9 ^ (v20 + a8 - (v8 & (2 * v20))) ^ a6;
  return (*(v18 + 8 * (((a1 == 0) * a7) ^ v12)))((a1 - 1));
}

uint64_t sub_10025B228()
{
  v2 = v0 + 3579;
  v3 = v0 + 400;
  LODWORD(STACK[0x610]) = (v0 + 400) | 0x1014;
  v4 = (*(v1 + 8 * (v0 + 7235)))(1028);
  v5 = STACK[0x630];
  STACK[0x838] = v4 + 0x166437AA264C5564;
  STACK[0x5F0] = v4;
  return (*(v5 + 8 * (((((v3 ^ (v4 == 0)) & 1) == 0) * ((47 * (v2 ^ 0x1B9E)) ^ 0x20DF)) ^ v2)))();
}

uint64_t sub_10025B2B0()
{
  LODWORD(STACK[0x468]) = v3;
  LODWORD(STACK[0x470]) = v2;
  LODWORD(STACK[0x478]) = v1;
  LODWORD(STACK[0x460]) = v4;
  return (*(v5 + 8 * v0))(-881217870, 1443391511, 257836115, 3501919139, 1796);
}

uint64_t sub_10025B3D0(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v24 = *(*(a7 + 8 * v14) + 4 * (((((v8 + v17 - (v9 & v11)) ^ v20) - (v12 & (2 * ((v8 + v17 - (v9 & v11)) ^ v20))) - 117) ^ v18) ^ v13) + a1) ^ a2;
  *(v22 + 4 * v8) = v19 ^ v16 ^ a4 ^ ((a3 & (v24 >> 4) ^ v24) + a8 - (v21 & (2 * (a3 & (v24 >> 4) ^ v24))));
  return (*(v23 + 8 * (((v10 == 0) * a5) ^ v15)))();
}

uint64_t sub_10025B458()
{
  v2 = 3947 * (v0 ^ 0x26C1);
  v3 = (*(v1 + 8 * (v0 + 690)))(1028);
  v4 = STACK[0x630];
  STACK[0x830] = v3;
  LODWORD(STACK[0x610]) = v2;
  return (*(v4 + 8 * (((((v2 ^ (v3 == 0)) & 1) == 0) * ((v0 - 438) ^ 0x2522)) ^ v0)))();
}

uint64_t sub_10025B4C8()
{
  LODWORD(STACK[0x448]) = v0;
  LODWORD(STACK[0x450]) = v2;
  LODWORD(STACK[0x458]) = v3;
  return (*(v4 + 8 * v1))();
}

uint64_t sub_10025B618@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, char a7@<W8>)
{
  v25 = v17 ^ v24 ^ *(*(a1 + 8 * v10) + 4 * (v21 ^ v22 ^ 0x9E ^ ((v7 + (v20 ^ 0xFD)) * a7)) + v9);
  v26 = (v25 + v19 - (v16 & (2 * v25))) ^ v23;
  v27 = a6 ^ v11 ^ (v26 + a3 - (a4 & (2 * v26)));
  *(a2 + 4 * ((v7 + (v20 ^ 0xFD)) * a7)) = v18 ^ (v27 - (a5 & (2 * v27)) + v12) ^ v13;
  return (*(v14 + 8 * ((30 * (v8 == 0)) ^ v15)))();
}

uint64_t sub_10025B6B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  LODWORD(STACK[0x4C8]) = v4;
  LODWORD(STACK[0x610]) = (v6 ^ 0x18A8) + 5400;
  v7 = *(v5 + 8 * (v6 + 6239));
  STACK[0x4D0] = a4;
  v8 = v7(1032);
  v9 = STACK[0x630];
  STACK[0x8B8] = v8;
  return (*(v9 + 8 * (((v8 == 0) * ((v6 ^ 0x18A8) - 2482)) ^ v6)))();
}

uint64_t sub_10025B84C@<X0>(int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v19 = (a1 + v8) * v7;
  v20 = *(*(a2 + 8 * v11) + 4 * ((v19 ^ v17) ^ v10) + v12) ^ v16;
  *(a3 + 4 * v19) = a6 ^ (v20 + a4 - (a5 & (2 * v20))) ^ v13;
  return (*(v18 + 8 * (((v9 + a1 == a7 + 256) * v14) ^ v15)))();
}

uint64_t sub_10025B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = (v5 - 2120) | 0x1604;
  v8 = *(v6 + 8 * (v5 + 6235));
  STACK[0x3F0] = a5;
  v9 = v8(1032);
  v10 = STACK[0x630];
  STACK[0x7F8] = v9;
  STACK[0x3F8] = v9;
  LODWORD(STACK[0x610]) = v7;
  return (*(v10 + 8 * ((((v5 ^ 0xAD ^ (v9 == 0)) & 1) * (v7 - 7833)) ^ v5)))();
}

uint64_t sub_10025B9D4(unsigned int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = ((v15 - 68 + ((v8 + v19 - (v9 & v17)) ^ v20) - (v11 & (2 * ((v8 + v19 - (v9 & v17)) ^ v20))) + v12) ^ v18);
  *(a8 + 4 * v8) = v16 ^ v21 ^ ((v23 ^ v13) + v14) ^ a4 ^ *(*(a7 + 8 * a2) + 4 * (v23 ^ a1) + a3);
  return (*(v22 + 8 * ((126 * (v10 == 0)) ^ v15)))();
}

uint64_t sub_10025BA5C()
{
  LODWORD(STACK[0x610]) = v0 - 2205;
  v2 = (*(v1 + 8 * (v0 + 514)))(1032);
  v3 = STACK[0x630];
  STACK[0x820] = v2 + 0xCA10C9D6C25FE94;
  return (*(v3 + 8 * (((v2 == 0) * (((v0 - 2056850804) & 0x7A98EED7) - 2250)) ^ v0)))();
}

uint64_t sub_10025BACC()
{
  v2 = *(v1 + 8 * v0);
  v3 = LODWORD(STACK[0x4C0]) - 245867500;
  v4 = STACK[0x4BC];
  LODWORD(STACK[0x52C]) = v3;
  return v2(v3 ^ v4 ^ 0xF67D5081, 493);
}

uint64_t sub_10025BBE8@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, int a4@<W8>)
{
  v15 = *(*(a3 + 8 * v7) + 4 * ((v4 ^ v11) & v6 ^ 7u) + v8) ^ v9;
  *(v13 + 4 * v4) = a1 ^ (((v10 | (2 * v15)) ^ v15) + a4 - 2 * (((v10 | (2 * v15)) ^ v15) & (a4 + 1) ^ v15 & 1));
  return (*(v14 + 8 * (((v5 == 0) * a2) ^ v12)))();
}

uint64_t sub_10025BC54()
{
  LODWORD(STACK[0x610]) = v0 ^ 0x39CC;
  v2 = (*(v1 + 8 * (v0 ^ 0xE6F)))(1032);
  v3 = STACK[0x630];
  STACK[0x848] = v2 + 0x568C0DE8C6360241;
  STACK[0x3E8] = v2;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 ^ 0xFFFFFE61) + (v0 ^ 0x1B5))) ^ v0)))();
}

uint64_t sub_10025BE00()
{
  v2 = (*(v1 + 8 * (v0 + 6488)))(1028);
  v3 = STACK[0x630];
  STACK[0x828] = v2 + 0x253C3AF178F7DB3DLL;
  STACK[0x3B0] = v2;
  LODWORD(STACK[0x610]) = v0 + 3769;
  return (*(v3 + 8 * (((v2 == 0) * ((314 * (v0 ^ 0x101A) + 5731) ^ (v0 + 3769))) ^ v0)))();
}

uint64_t sub_10025BE78()
{
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0x610]) = v0 ^ 0x2F3;
  return v2(STACK[0x3B0], 2142950892, 3218959094, 1102975947, 46);
}

uint64_t sub_10025BF64@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  HIDWORD(v24) = *(*(v20 + 8 * v10) + 4 * (v21 ^ v17 ^ 0xE5 ^ v6 & v8) - 292032979);
  LODWORD(v24) = HIDWORD(v24);
  v25 = v16 ^ v18 ^ (v24 >> 6) ^ ((v9 ^ v13 ^ a6 ^ (8 * (v24 >> 6))) - (v19 & (2 * (v9 ^ v13 ^ a6 ^ (8 * (v24 >> 6))))) + v12);
  v26 = (v25 + v15 - (v11 & (2 * v25))) ^ v23;
  *(a1 + 4 * (v6 & v8)) = v22 ^ (v26 - (a2 & (2 * v26)) + a3) ^ a4;
  return (*(STACK[0x630] + 8 * (((v7 == 0) * a5) ^ v14)))();
}

uint64_t sub_10025C004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61)
{
  v62 = a61 ^ LODWORD(STACK[0x248]);
  LODWORD(STACK[0x3A0]) = a45 ^ LODWORD(STACK[0x2C0]);
  v63 = LODWORD(STACK[0x2A0]) ^ a43;
  v64 = LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x270]);
  v65 = LODWORD(STACK[0x2F0]) ^ a51;
  LODWORD(STACK[0x398]) = LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x288]);
  v66 = LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x488]);
  v67 = STACK[0x610];
  v68 = 1427 * (LODWORD(STACK[0x610]) ^ 0xA66);
  v69 = LODWORD(STACK[0x5E0]) - ((2 * LODWORD(STACK[0x5E0])) & 0xAC0D8098) + 1443278739;
  v70 = STACK[0x5D8];
  v71 = LODWORD(STACK[0x5D8]) ^ (LODWORD(STACK[0x5C8]) + 1443283020 - ((2 * LODWORD(STACK[0x5C8])) & 0xAC0D8098));
  LODWORD(STACK[0x5E0]) = v61 ^ (v71 - 341772309 - ((2 * v71) & 0xD741EFD6)) ^ 0xF9B709CC;
  v72 = v70 ^ (LODWORD(STACK[0x5E8]) + 1443283020 - ((2 * LODWORD(STACK[0x5E8])) & 0xAC0D8098));
  LODWORD(STACK[0x5C8]) = v61 ^ (v72 - 341772309 - ((2 * v72) & 0xD741EFD6)) ^ 0x809C3F16;
  v73 = LODWORD(STACK[0x5F8]) + 1443283020 - ((2 * LODWORD(STACK[0x5F8])) & 0xAC0D8098);
  LODWORD(STACK[0x5E8]) = v61 ^ (((v69 + v68) ^ v70) - 341772309 - ((2 * ((v69 + v68) ^ v70)) & 0xD741EFD6)) ^ 0xD06E189B;
  LODWORD(STACK[0x5D0]) = v61 ^ ((v70 ^ v73) - 341772309 - ((2 * (v70 ^ v73)) & 0xD741EFD6)) ^ 0xFD2F94D0;
  STACK[0x5F8] = STACK[0x810] - 0x77830BBBA4D853CALL;
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x2F8]) ^ 0xCC2EBCBF;
  LODWORD(STACK[0x378]) = LODWORD(STACK[0x278]) ^ 0x7FCB2328;
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x2E8]) ^ 0x22EC29FC;
  LODWORD(STACK[0x31C]) = a47 ^ 0x4E1D4444;
  LODWORD(STACK[0x310]) = LODWORD(STACK[0x2E0]) ^ 0x231FAAB7;
  LODWORD(STACK[0x308]) = a53 ^ 0x580AA9F7;
  LODWORD(STACK[0x300]) ^= 0xCD825A4F;
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x2B8]) ^ 0x5E69842E;
  LODWORD(STACK[0x2F0]) = a57 ^ 0x40357ACD;
  LODWORD(STACK[0x2E8]) = LODWORD(STACK[0x25C]) ^ 0x592023F7;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0x2D0]) ^ 0x69A594E;
  LODWORD(STACK[0x2D8]) ^= 0x43672C16u;
  LODWORD(STACK[0x2D0]) = a49 ^ 0x97CA7C0E;
  LODWORD(STACK[0x2C8]) ^= 0x9C1D4758;
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0x280]) ^ 0x1BD8C5CA;
  LODWORD(STACK[0x2B8]) = a55 ^ 0xC3D6BEEA;
  LODWORD(STACK[0x2B0]) ^= 0x7276AE8Cu;
  LODWORD(STACK[0x2A8]) ^= 0x4F7A759Fu;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x268]) ^ 0x22CCB9F6;
  LODWORD(STACK[0x298]) ^= 0xD5AC815B;
  LODWORD(STACK[0x290]) ^= 0xC8700B77;
  LODWORD(STACK[0x288]) = v66 ^ 0xC432385F;
  LODWORD(STACK[0x280]) = a60 ^ 0xD3BDC7A9;
  v74 = (v62 ^ 0xA90CB72) - ((2 * (v62 ^ 0xA90CB72)) & 0x78F1FFE8) - 1132920844;
  v75 = STACK[0x520];
  LODWORD(STACK[0x278]) = LODWORD(STACK[0x520]) ^ v74;
  LODWORD(STACK[0x270]) = v75 ^ ((v63 ^ 0x2F09AB2C) - ((2 * (v63 ^ 0x2F09AB2C)) & 0x78F1FFE8) - 1132920844);
  LODWORD(STACK[0x268]) = v64 ^ v75;
  LODWORD(STACK[0x260]) = (a41 ^ a39 ^ 0x6725930C) - ((2 * (a41 ^ a39 ^ 0x6725930C)) & 0x66AD062) - 2093651919;
  LODWORD(STACK[0x25C]) = (v65 ^ 0xA51C6527) - ((2 * (v65 ^ 0xA51C6527)) & 0x66AD062) - 2093651919;
  v76 = *(STACK[0x630] + 8 * v67);
  LODWORD(STACK[0x250]) = 2147483635;
  LODWORD(STACK[0x248]) = -2079252455;
  LODWORD(STACK[0x240]) ^= 0xC051C13u;
  return v76();
}

uint64_t sub_10025C48C(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x498]) = a1;
  v86 = (a1 - 1577251011) ^ 0xA1FD1593;
  v87 = (a1 - 1577251011) & 0x5E02FEDF;
  LODWORD(STACK[0x4F0]) = v81 ^ 0x187EE9BB;
  v88 = STACK[0x5F8];
  v89 = (a6 - 52) ^ *(STACK[0x5F8] + (v81 ^ 0x187EE9BBu));
  v90 = ((a6 - 52) ^ *(STACK[0x5F8] + (v81 ^ 0x187EE9BBu)));
  LODWORD(STACK[0x610]) = v87;
  LODWORD(STACK[0x438]) = v86;
  v91 = v83 + v82 + 1572599149 + ((v90 * (v87 ^ 0xA099E353) - a6 + 559642157) ^ ((v90 * (v87 ^ 0xA099E353) - a6 + 559642157) % (v86 ^ 0xB64)));
  v92 = v91 + 1371719025 - ((2 * v91) & 0xA3858AE2);
  v93 = (v84 - 368828734 + ((v84 - 368828734) ^ 0xAE3D3A8E ^ v92) + 1) ^ ((v92 ^ 0xAE3D3A8E) + 1);
  v94 = ((v93 + 1371719025 - ((2 * v93) & 0xA3858AE2)) ^ v92) + v84;
  v95 = (v94 + 1749909225) ^ (v83 - 1278247861);
  v96 = v82 + 305788939 + v94;
  v97 = v84 + 1381080491 + v94;
  v98 = (1444120286 - v82 - v95) ^ v97;
  v99 = v98 + a4 + v97;
  v100 = (v98 + a4) ^ v96;
  v101 = v95 + 616496180 - v98;
  v102 = v81 & 0xFFFFFFFE ^ 0x187EE9BB;
  LODWORD(STACK[0x4C8]) = v102;
  v103 = (v98 - 52) ^ *(v88 + v102);
  v104 = ((v98 - 52) ^ *(v88 + v102)) * a5 - v98 + 338216749;
  v105 = ((v100 + v101 + ((v104 % 0x101) ^ v104)) ^ v99) + v85;
  v106 = v105 + v100;
  v107 = v105 ^ v101;
  v108 = v105 + v99;
  v109 = (v105 - v107 - v106) ^ v108;
  v110 = v109 + a4;
  v111 = v109 + a4 + v108;
  v112 = v107 + 616496180 - v109;
  v113 = ((2 * (v110 ^ v106)) & 0xFFA6DFEE) + (v110 ^ v106 ^ 0xFFD36FF7);
  v114 = v81 & 0xFFFFFFFD ^ 0x187EE9BB;
  LODWORD(STACK[0x518]) = v114;
  v115 = (v109 - 52) ^ *(v88 + v114);
  v116 = (v112 + v113 + 2920457 + (((-1600520827 * v115 - v109 + 338216749) % 0x101) ^ (-1600520827 * v115 - v109 + 338216749))) ^ v111;
  v117 = v116 + v85 + v111;
  v118 = (v116 + v85) ^ v112;
  v119 = (-2920457 - v113 - v118) ^ v117;
  v120 = ((2 * ((v119 - 616496180) ^ (v113 + 2121658416 + v116))) & 0xDDEDBAF6) + ((v119 - 616496180) ^ (v113 + 2121658416 + v116) ^ 0x6EF6DD7B);
  v121 = v119 - 616496180 + v117;
  v122 = v118 + 616496180 - v119;
  v123 = v81 & 0xFFFFFFFC ^ 0x187EE9BB;
  LODWORD(STACK[0x52C]) = v123;
  v124 = (v119 - 52) ^ *(v88 + v123);
  v125 = (v122 + v120 - 1861672315 + (((-1600520827 * v124 - v119 + 338216749) % 0x101) ^ (-1600520827 * v124 - v119 + 338216749))) ^ v121;
  v126 = (v125 + v85) & 0x7FFFFFFF;
  v127 = ((v125 + v85) & 0x80000000) + v122;
  v128 = v125 + v85 + v121;
  v129 = v127 ^ v126;
  v130 = v81 & 0xFFFFFFFB ^ 0x187EE9BF;
  LODWORD(STACK[0x4BC]) = v130;
  v131 = (1861672315 - v120 - (v127 ^ v126)) ^ v128;
  v132 = (v131 - 52) ^ *(v88 + v130);
  v133 = -1600520827 * ((((123 - v120 - v129) ^ v128) - 52) ^ *(v88 + v130)) - v131;
  v134 = v133 - ((2 * v133 + 676433498) & 0x6DB5930A) - 888958798;
  v135 = ((v134 ^ 0xB6DAC985) - 257) % 0x101 - 1227175547 - ((2 * (((v134 ^ 0xB6DAC985) - 257) % 0x101)) & 0x30A);
  v136 = STACK[0x510];
  v137 = *(STACK[0x510] + 4 * (v89 ^ 0x3Cu));
  v89 ^= 0x46u;
  v138 = v89;
  v139 = (2 * v89 + 160) & 0x106;
  v140 = STACK[0x508];
  v141 = *(STACK[0x508] + 4 * (v103 ^ 0x66u));
  v103 ^= 0xCEu;
  v142 = (2 * v103) & 0x1B4;
  v143 = v103 + 930353882;
  if ((v134 ^ 0xB6DAC985) < 0x101)
  {
    v135 = v134;
  }

  v144 = v143 - v142;
  v145 = STACK[0x4F8];
  v146 = ((2 * ((v131 - 616496180) ^ (v120 + 257065644 + v125))) & 0xBEDF7778) + ((v131 - 616496180) ^ (v120 + 257065644 + v125) ^ 0x5F6FBBBC);
  v147 = v131 - 616496180 + v128;
  v148 = STACK[0x500];
  v149 = *(STACK[0x500] + (v124 ^ 0x3CLL)) ^ 0xFFFFFF94;
  LODWORD(STACK[0x448]) = v141 ^ v137 ^ v138 ^ (v138 + 406269395 - v139) ^ (*(STACK[0x4F8] + 4 * (v115 ^ 0xE5u)) + 694340999) ^ v144 ^ (v149 >> 4) & 3 ^ v149;
  v150 = v129 + 616496180 - v131;
  v151 = (v150 + v146 - 1601158076 + (v135 ^ v134)) ^ v147;
  v152 = v151 + 2118737959;
  v153 = v151 + 2118737959 + v147;
  v154 = v146 + 517579883 + v151;
  v155 = v152 ^ v150;
  v156 = (1601158076 - v146 - v155) ^ v153;
  v157 = v81 & 0xFFFFFFFA ^ 0x187EE9BF;
  LODWORD(STACK[0x4B0]) = v157;
  v158 = *(v136 + 4 * (v132 ^ 1u));
  v159 = (v156 - 616496180) ^ v154;
  v160 = v132 ^ 0x7B;
  v161 = v132 ^ 0x7B;
  v162 = v155 + 616496180 - v156;
  v163 = v156 - 616496180 + v153;
  LOBYTE(v147) = (v156 - 52) ^ *(v88 + v157);
  v164 = v147;
  v165 = (v161 + 406269395 - ((2 * v160 + 160) & 0x106)) ^ v158;
  v166 = ((v159 + v162 + (((-1600520827 * v164 - v156 + 338216749) % 0x101u) ^ (-1600520827 * v164 - v156 + 338216749))) ^ v163) + 2118737959;
  v167 = v166 + v163;
  v168 = v166 ^ v162;
  v169 = v166 + v159;
  v170 = (v166 - v168 - v169) ^ v167;
  v171 = v168 + 616496180 - v170;
  v172 = (v170 - 616496180) ^ v169;
  v173 = v81;
  v174 = v81 & 0xFFFFFFF9 ^ 0x187EE9BF;
  LODWORD(STACK[0x4C0]) = v174;
  v175 = *(v140 + 4 * (v147 ^ 0x87u));
  v176 = v170 - 616496180 + v167;
  v177 = v88;
  v178 = (v170 - 52) ^ *(v88 + v174);
  v179 = v165 + 930353882 - ((2 * v165) & 0x6EE825B4);
  v180 = -1600520827 * ((v170 - 52) ^ *(v88 + v174)) - v170 + 338216749;
  v181 = ((v172 + v171 + ((v180 % 0x101) ^ v180)) ^ v176) + 2118737959;
  v182 = v181 + v172;
  v183 = v181 + v176;
  v184 = v181 ^ v171;
  v185 = (-v184 - v172) ^ v183;
  v186 = v185 - 616496180 + v183;
  v187 = v184 + 616496180 - v185;
  v188 = ((2 * ((v185 - 616496180) ^ v182)) & 0x753B79FE) + ((v185 - 616496180) ^ v182 ^ 0xBA9DBCFF);
  v189 = v173 & 0xFFFFFFF8 ^ 0x187EE9BF;
  LODWORD(STACK[0x4A0]) = v189;
  v190 = *(v145 + 4 * (((v178 ^ 0x7F) & 0x89 | v178 & 0x76) ^ 0x5Cu)) + 694340999;
  LOBYTE(v172) = (v185 - 52) ^ *(v88 + v189);
  v191 = (v187 + v188 + 1164067585 + (((-1600520827 * v172 - v185 + 338216749) % 0x101) ^ (-1600520827 * v172 - v185 + 338216749))) ^ v186;
  v192 = v191 + 2118737959 + v186;
  v193 = (v191 + 2118737959) ^ v187;
  v194 = v188 - 1012161752 + v191;
  v195 = (-1164067585 - v188 - v193) ^ v192;
  v196 = v193 + 616496180 - v195;
  v197 = v195 - 616496180 + v192;
  v198 = *(v148 + (v172 ^ 0x8ALL)) ^ 0xFFFFFF94;
  v199 = ((2 * ((v195 - 616496180) ^ v194)) & 0xFDF7D756) + ((v195 - 616496180) ^ v194 ^ 0xFEFBEBAB);
  v200 = v173 & 0xFFFFFFF7 ^ 0x187EE9BB;
  LODWORD(STACK[0x480]) = v200;
  v201 = v190 ^ v175 ^ v161 ^ v179 ^ v164;
  v202 = *(v88 + v200);
  LODWORD(STACK[0x440]) = v201 ^ (v198 >> 4) & 3 ^ v198;
  v203 = (v195 - 52) ^ v202;
  v204 = (v196 + v199 + 17044565 + (((-1600520827 * v203 - v195 + 338216749) % 0x101) ^ (-1600520827 * v203 - v195 + 338216749))) ^ v197;
  v205 = (v204 + 2118737959) ^ v196;
  v206 = v204 + 2118737959 + v197;
  v207 = v199 + 2135782524 + v204;
  v208 = (-17044565 - v199 - v205) ^ v206;
  v209 = v205 + 616496180 - v208;
  v210 = v203 ^ 0x27;
  v211 = v208 - 616496180 + v206;
  v212 = ((2 * ((v208 - 616496180) ^ v207)) & 0x6B5FCF9E) + ((v208 - 616496180) ^ v207 ^ 0xB5AFE7CF);
  v213 = v173 & 0xFFFFFFF6 ^ 0x187EE9BB;
  LODWORD(STACK[0x4A8]) = v213;
  v214 = v210 - 1672983084 + (LODWORD(STACK[0x248]) ^ (2 * (((v203 ^ 0x27) + 80) & 0x8F ^ (v210 | LODWORD(STACK[0x250])))));
  v215 = (v208 - 52) ^ *(v88 + v213);
  v216 = ((v208 - 52) ^ *(v88 + v213));
  v217 = (v209 + v212 + 1246763057 + (((-1600520827 * v216 - v208 + 338216749) % 0x101u) ^ (-1600520827 * v216 - v208 + 338216749))) ^ v211;
  v218 = (v217 + 2118737959) ^ v209;
  v219 = v217 + 2118737959 + v211;
  v220 = (-1246763057 - v212 - v218) ^ v219;
  v221 = v220 - 616496180 + v219;
  v222 = (v220 - 616496180) ^ (v212 - 929466280 + v217);
  v223 = v216 + 930353882 - ((2 * v215) & 0x1B4);
  v224 = v173 & 0xFFFFFFF5 ^ 0x187EE9BB;
  LODWORD(STACK[0x478]) = v224;
  v225 = (v220 - 52) ^ *(v88 + v224);
  v226 = v218 + 616496180 - v220;
  v227 = -1600520827 * (((2 * v225) & 0x1CA) + (((v220 - 52) ^ *(v88 + v224)) ^ 0x677BE7E5)) - v220 + 616496180;
  v228 = ((v222 + v226 + ((v227 % 0x101) ^ v227)) ^ v221) + 2118737959;
  v229 = v228 + v222;
  v230 = v228 + v221;
  v231 = v228 ^ v226;
  v232 = (-v231 - v222) ^ v230;
  v233 = (v232 - 616496180) ^ v229;
  v234 = v232 - 616496180 + v230;
  v235 = v173;
  v236 = v173 & 0xFFFFFFF4 ^ 0x187EE9BB;
  LODWORD(STACK[0x490]) = v236;
  LOBYTE(v222) = (v232 - 52) ^ *(v88 + v236);
  v237 = v231 + 616496180 - v232;
  v238 = ((v233 + v237 + (((-1600520827 * v222 - v232 + 338216749) % 0x101) ^ (-1600520827 * v222 - v232 + 338216749))) ^ v234) + 2118737959;
  v239 = v238 ^ v237;
  v240 = v238 + v233;
  v241 = v238 + v234;
  v242 = (-v239 - v233) ^ v241;
  v243 = ((2 * ((v242 - 616496180) ^ v240)) & 0x97FEAB7A) + ((v242 - 616496180) ^ v240 ^ 0x4BFF55BD);
  v244 = v242 - 616496180 + v241;
  v245 = v173 & 0xFFFFFFF3 ^ 0x187EE9BF;
  LODWORD(STACK[0x488]) = v245;
  v246 = (v242 - 52) ^ *(v88 + v245);
  v247 = STACK[0x510];
  v248 = *(v148 + (v222 ^ 0x85)) ^ 0xFFFFFF94;
  v249 = (v248 >> 4) & 3 ^ v248;
  v250 = v140;
  v251 = v145;
  v252 = *(STACK[0x510] + 4 * (v203 ^ 0x5Du)) ^ 0xC6BFD459 ^ *(v140 + 4 * (v215 ^ 0x87u)) ^ v210 ^ v214 ^ v223 ^ (*(v145 + 4 * (v225 ^ 0x5Au)) + 694340999);
  v253 = v239 + 616496180 - v242;
  v254 = v252 & 0xC63271D3 ^ v249 & 0xD3;
  v255 = v252 & 0x39CD8E2C ^ v249 & 0x2C;
  v256 = (v253 + v243 - 1275024829 + (((-1600520827 * v246 - v242 + 338216749) % 0x101) ^ (-1600520827 * v246 - v242 + 338216749))) ^ v244;
  v257 = (v256 + 2118737959) ^ v253;
  v258 = v256 + 2118737959 + v244;
  v259 = (1275024829 - v243 - v257) ^ v258;
  v260 = (v259 - 616496180) ^ (v243 + 843713130 + v256);
  v261 = v259 - 616496180 + v258;
  v262 = v173 & 0xFFFFFFF2 ^ 0x187EE9BF;
  LODWORD(STACK[0x470]) = v262;
  LOBYTE(v243) = (v259 - 52) ^ *(v177 + v262);
  v263 = v257 + 616496180 - v259;
  v264 = v246 ^ 0x9C;
  v265 = (v264 + 406269395 - ((2 * (v246 ^ 0x9C) + 160) & 0x106)) ^ *(v247 + 4 * (v246 ^ 0xE6u));
  v266 = ((v260 + v263 + (((-1600520827 * v243 - v259 + 338216749) % 0x101) ^ (-1600520827 * v243 - v259 + 338216749))) ^ v261) + 2118737959;
  v267 = v266 + v260;
  v268 = v266 ^ v263;
  v269 = v266 + v261;
  v270 = ((2 * ((v266 - (v266 ^ v263) - v267) ^ v269)) & 0xB6820798) + ((v266 - (v266 ^ v263) - v267) ^ v269 ^ 0xDB4103CC);
  v271 = v268 - v270 + 1750852068 - ((2 * (v268 - v270)) & 0xD0B7C3C8);
  v272 = v265 + 930353882 - ((2 * v265) & 0x6EE825B4);
  v273 = v270 ^ v267;
  LODWORD(STACK[0x468]) = v173;
  LODWORD(v145) = v173 & 0xFFFFFFF1 ^ 0x187EE9BF;
  LODWORD(STACK[0x450]) = v145;
  LODWORD(STACK[0x460]) = 410970559;
  v274 = v177;
  v275 = v270 + v269;
  LOBYTE(v269) = v270 ^ *(v177 + v145);
  v276 = (((-1600520827 * v269 - v270 - 278279431) % 0x101) ^ (-1600520827 * v269 - v270 - 278279431)) + (v270 ^ v267);
  v277 = (v276 + 1750852068 - ((2 * v276) & 0xD0B7C3C8)) ^ v271;
  v271 ^= 0x685BE1E4u;
  v278 = ((v277 + 2 * (v276 & v271)) ^ v275) + 2118737959;
  v279 = v278 + v273;
  v280 = v278 + v275;
  v281 = v271 ^ v278;
  v282 = (v278 - v281 - v279) ^ (v278 + v275);
  LODWORD(v177) = ((2 * ((v282 - 616496180) ^ v279)) & 0x7A5CFBDC) + ((v282 - 616496180) ^ v279 ^ 0x3D2E7DEE);
  v283 = v235 & 0xFFFFFFF0 ^ 0x187EE9BF;
  LODWORD(STACK[0x458]) = v283;
  v284 = v282 - 616496180 + v280;
  LOBYTE(v279) = (v282 - 52) ^ *(v274 + v283);
  v285 = v281 + 616496180 - v282;
  v286 = (v285 + v177 - 1026457070 + (((-1600520827 * v279 - v282 + 338216749) % 0x101) ^ (-1600520827 * v279 - v282 + 338216749))) ^ v284;
  LODWORD(STACK[0x430]) = v286;
  v287 = v286 + 2118737959 + v284;
  v288 = (v286 + 2118737959) ^ v285;
  v289 = (LODWORD(STACK[0x448]) + 1443283020 - ((2 * LODWORD(STACK[0x448])) & 0xAC0D8098)) ^ LODWORD(STACK[0x5D8]);
  v290 = *(v148 + (v279 ^ 0xB7));
  v291 = (*(v251 + 4 * (v269 ^ 0xAAu)) + 694340999) ^ *(v250 + 4 * (v243 ^ 0xBCu)) ^ v264 ^ v272 ^ v243 ^ (v290 ^ (v290 >> 4) & 3) ^ 0xE0;
  v292 = ((v254 | v255) + 1443283020 - 2 * ((v254 | v255) & 0x5606C04E ^ v254 & 2)) ^ LODWORD(STACK[0x5D8]);
  v293 = (v291 + 1443283020 - ((2 * v291) & 0xAC0D8098)) ^ LODWORD(STACK[0x5D8]);
  LODWORD(v250) = (LODWORD(STACK[0x440]) + 1443283020 - ((2 * LODWORD(STACK[0x440])) & 0xAC0D8098)) ^ LODWORD(STACK[0x5D8]);
  v294 = STACK[0x608];
  v295 = (v289 - 341772309 - ((2 * v289) & 0xD741EFD6)) ^ LODWORD(STACK[0x608]);
  v296 = STACK[0x278];
  LODWORD(STACK[0x42C]) = v295;
  v297 = (v250 - 341772309 - ((2 * v250) & 0xD741EFD6)) ^ v294;
  LODWORD(v250) = STACK[0x3A0];
  LODWORD(STACK[0x428]) = v297;
  LODWORD(v250) = ((v250 ^ v297 ^ 0x34F0D05) - 1132920844 - 2 * ((v250 ^ v297 ^ 0x34F0D05) & 0x3C78FFF6 ^ (v250 ^ v297) & 2)) ^ LODWORD(STACK[0x520]);
  v298 = (v292 - 341772309 - ((2 * v292) & 0xD741EFD6)) ^ v294;
  v299 = STACK[0x270];
  LODWORD(STACK[0x420]) = v298;
  v300 = (v299 ^ v298) + 2095250016 - ((2 * (v299 ^ v298)) & 0xF9C5F4C0);
  v301 = STACK[0x4D8];
  v302 = ((v296 ^ v295) + 2095250016 - ((2 * (v296 ^ v295)) & 0xF9C5F4C0)) ^ LODWORD(STACK[0x4D8]);
  v303 = STACK[0x3B0];
  v304 = *(STACK[0x3B0] + 4 * (HIBYTE(v302) ^ 0x4C)) ^ LODWORD(STACK[0x228]);
  v305 = (v293 - 341772309 - ((2 * v293) & 0xD741EFD6)) ^ v294;
  v306 = STACK[0x268];
  LODWORD(STACK[0x418]) = v305;
  v307 = STACK[0x3A8];
  v308 = ((v304 ^ 0x486F4306) + 1543965813 - 2 * ((v304 ^ 0x486F4306) & 0x5C070C7D ^ v304 & 8)) ^ *(STACK[0x3A8] + 4 * (((v306 ^ v305) >> 16) ^ 0x9Eu));
  v309 = v300 ^ v301;
  v310 = STACK[0x3E8];
  v311 = (v308 + 1342312550 - ((2 * v308) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (((v300 ^ v301) >> 8) ^ 0xB8u));
  v312 = (v250 + 2095250016 - ((2 * v250) & 0xF9C5F4C0)) ^ v301;
  LODWORD(v250) = ((v250 + 96 - ((2 * v250) & 0xC0)) ^ v301) ^ 0xD2;
  v313 = STACK[0x5F0];
  v314 = (v311 - 1521132796 - ((2 * v311) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * v250);
  v315 = v314 - ((2 * v314) & 0x5B2824D0);
  v316 = *(v303 + 4 * (HIBYTE(v312) ^ 0x29)) ^ a71;
  v317 = ((v316 ^ 0xA15554E6) + 1978883973 - 2 * ((v316 ^ 0xA15554E6) & 0x75F35F9D ^ v316 & 0x18)) ^ a73;
  v318 = (v317 + 1543965813 - ((2 * v317) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v302) ^ 0x17u));
  v319 = (v318 + 1342312550 - ((2 * v318) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (((v306 ^ v305) >> 8) ^ 0x13u));
  LODWORD(v250) = (v319 - 1521132796 - ((2 * v319) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v309 ^ 0xA1u));
  v320 = *(v303 + 4 * (HIBYTE(v309) ^ 0x4D)) ^ a74;
  v321 = ((v320 ^ 0xE274B926) - 1521132796 - 2 * ((v320 ^ 0xE274B926) & 0x25555B1C ^ v320 & 0x18)) ^ *(STACK[0x5F0] + 4 * ((v306 ^ v305) ^ 0x4Du));
  v322 = (v321 + 1543965813 - ((2 * v321) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v312) ^ 0xF7u));
  v323 = (v322 + 1342312550 - ((2 * v322) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v302) ^ 0xBEu));
  v324 = LODWORD(STACK[0x390]) ^ *(v303 + 4 * (((v306 ^ v305) >> 24) ^ 0xB1));
  v325 = (v324 - ((2 * v324) & 0xA78D4B04) - 741956222) ^ a76;
  v326 = (v325 + 1543965813 - ((2 * v325) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v309) ^ 0xFu));
  v327 = (v326 + 1342312550 - ((2 * v326) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v312) ^ 0xA4u));
  v328 = (v327 - 1521132796 - ((2 * v327) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v302 ^ 0xC3u));
  v329 = (v315 - 1382804888) ^ LODWORD(STACK[0x3E0]);
  v330 = v328 - ((2 * v328) & 0xA380980E) + 1371556871;
  v331 = LODWORD(STACK[0x378]) ^ *(v303 + 4 * (HIBYTE(v329) ^ 0xBC));
  v332 = v330 - ((2 * v330) & 0xDBB628A8) - 304409516;
  v333 = (v331 + 1543965813 - ((2 * v331) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v332) ^ 0xDBu));
  v334 = (v323 - ((2 * v323) & 0x9A4BF880) - 853148608) ^ LODWORD(STACK[0x230]);
  v335 = (v333 + 1342312550 - ((2 * v333) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v334) ^ 0xB9u));
  v336 = (v335 - 1521132796 - ((2 * v335) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v250 ^ 0x9Fu));
  v337 = v336 - ((2 * v336) & 0x4B07C62C);
  v338 = *(v303 + 4 * (BYTE3(v250) ^ 0x44)) ^ a67;
  v339 = ((v338 ^ 0xB35191AC) + 1543965813 - 2 * ((v338 ^ 0xB35191AC) & 0x5C070C77 ^ v338 & 2)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v329) ^ 0x24u));
  v340 = (v339 + 1342312550 - ((2 * v339) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v332) ^ 0x14u));
  v341 = (v340 - 1521132796 - ((2 * v340) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v334 ^ 0x8Eu));
  v342 = v341 - ((2 * v341) & 0x2A8A60F8);
  v343 = *(v303 + 4 * (HIBYTE(v334) ^ 0xCB)) ^ a72;
  v344 = ((v343 ^ 0xCD29E0B6) + 640606654 - 2 * ((v343 ^ 0xCD29E0B6) & 0x262EE1BF ^ v343 & 1)) ^ a57;
  v345 = (v344 - 1521132796 - ((2 * v344) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v332 ^ 0x54u));
  v346 = (v345 + 1543965813 - ((2 * v345) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v250) ^ 0xABu));
  v347 = (v346 + 1342312550 - ((2 * v346) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v329) ^ 0x4Du));
  v348 = *(v303 + 4 * (HIBYTE(v332) ^ 0xED)) ^ LODWORD(STACK[0x260]);
  v349 = (v348 + 1543965813 - ((2 * v348) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v334) ^ 0x1Du));
  v350 = (v349 + 1342312550 - ((2 * v349) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v250) ^ 0xA5u));
  v351 = (v350 - 1521132796 - ((2 * v350) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v329 ^ 0xAEu));
  LODWORD(v250) = (v337 + 629400342) ^ LODWORD(STACK[0x328]);
  v352 = LODWORD(STACK[0x320]) ^ *(v303 + 4 * (BYTE3(v250) ^ 0x50));
  v353 = (v352 - ((2 * v352) & 0x5FF8CE56) - 1342413013) ^ a81;
  v354 = (v353 + 1543965813 - ((2 * v353) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v351) ^ 0x62u));
  v355 = (v354 + 1342312550 - ((2 * v354) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v347) ^ 0x90u));
  v356 = (v342 - 1790627716) ^ LODWORD(STACK[0x338]);
  v357 = (v355 - 1521132796 - ((2 * v355) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (((v342 + 124) ^ LOBYTE(STACK[0x338])) ^ 0xA1u));
  v358 = LODWORD(STACK[0x31C]) ^ *(v303 + 4 * (HIBYTE(v356) ^ 0x75));
  v359 = (v358 - ((2 * v358) & 0x6EC755E6) - 1218204941) ^ a75;
  v360 = (v359 + 1543965813 - ((2 * v359) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v250) ^ 0xF1u));
  v361 = (v360 + 1342312550 - ((2 * v360) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v351) ^ 0xE8u));
  v362 = (v361 - 1521132796 - ((2 * v361) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v347 ^ 0x62u));
  v363 = LODWORD(STACK[0x310]) ^ *(v303 + 4 * (HIBYTE(v347) ^ 0xF8));
  v364 = (v363 + 1543965813 - ((2 * v363) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v356) ^ 0x91u));
  v365 = (v364 + 1342312550 - ((2 * v364) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * (BYTE1(v250) ^ 0xDEu));
  v366 = (v365 - 1521132796 - ((2 * v365) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v351 ^ 0xB9u));
  v367 = LODWORD(STACK[0x308]) ^ *(v303 + 4 * (HIBYTE(v351) ^ 0xF));
  v368 = (v367 + 1543965813 - ((2 * v367) & 0xB80E18EA)) ^ *(STACK[0x3A8] + 4 * (BYTE2(v347) ^ 0x7Eu));
  v369 = (v368 + 1342312550 - ((2 * v368) & 0xA00420CC)) ^ *(STACK[0x3E8] + 4 * ((((v342 + 12412) ^ LOWORD(STACK[0x338])) >> 8) ^ 0xDAu));
  LODWORD(v250) = (v369 - 1521132796 - ((2 * v369) & 0x4AAAB608)) ^ *(STACK[0x5F0] + 4 * (v250 ^ 0x34u));
  LODWORD(STACK[0x448]) = v177;
  LODWORD(STACK[0x440]) = v288;
  LODWORD(v177) = (1026457070 - v177 - v288) ^ v287;
  LODWORD(STACK[0x408]) = v177;
  LODWORD(STACK[0x414]) = v177 + 221425408;
  LODWORD(v177) = v287 + v177 + 221425408;
  LODWORD(STACK[0x400]) = v177;
  v370 = __ROR4__(v357, 14);
  v371 = (v370 ^ 0xFB69E8AC) << ((v177 + 12) & 0xE) << ((v177 + 12) & 0xE ^ 0xE);
  v372 = *(v303 + 4 * (HIBYTE(v371) ^ 0x61)) ^ a59;
  v373 = (v372 ^ 0x73AE42E5) + 1543965813 - 2 * ((v372 ^ 0x73AE42E5) & 0x5C070C7F ^ v372 & 0xA);
  v374 = (v250 + 1702863986 - ((2 * v250) & 0xCAFF48E4)) ^ LODWORD(STACK[0x388]);
  v375 = v373 ^ *(v307 + 4 * (BYTE2(v374) ^ 0x83u));
  v376 = (v366 - ((2 * v366) & 0x547B0810) + 708674568) ^ LODWORD(STACK[0x350]);
  v377 = (v375 + 1342312550 - ((2 * v375) & 0xA00420CC)) ^ *(v310 + 4 * ((((v366 - ((2 * v366) & 0x810) - 31736) ^ LOWORD(STACK[0x350])) >> 8) ^ 0x73u));
  v378 = (v377 - 1521132796 - ((2 * v377) & 0x4AAAB608)) ^ *(v313 + 4 * (v362 ^ 0xCAu));
  v379 = v378 + 813004868 - ((2 * v378) & 0x60EAF088);
  v380 = LODWORD(STACK[0x300]) ^ *(v303 + 4 * (HIBYTE(v362) ^ 0x27));
  v381 = (v380 - ((2 * v380) & 0x740DB628) + 973527828) ^ a51;
  v382 = (v381 + 1543965813 - ((2 * v381) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v371) ^ 0x38u));
  v383 = (v382 + 1342312550 - ((2 * v382) & 0xA00420CC)) ^ *(v310 + 4 * ((((v250 - 23438 - ((2 * v250) & 0x48E4)) ^ LOWORD(STACK[0x388])) >> 8) ^ 0xD2u));
  v384 = (v383 - 1521132796 - ((2 * v383) & 0x4AAAB608)) ^ *(v313 + 4 * (v376 ^ 0x59u));
  v385 = LODWORD(STACK[0x2F8]) ^ *(v303 + 4 * (HIBYTE(v376) ^ 0x68));
  v386 = (v385 + 1543965813 - ((2 * v385) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v362) ^ 0xDu));
  v387 = (v386 + 1342312550 - ((2 * v386) & 0xA00420CC)) ^ *(v310 + 4 * (((v371 | ((v370 ^ 0xFB69E8AC) >> 18)) >> 8) ^ 0x3Au));
  v388 = (v387 - ((2 * v387) & 0x3D9A486A) - 1630723019) ^ a55;
  v389 = (v388 - 1521132796 - ((2 * v388) & 0x4AAAB608)) ^ *(v313 + 4 * (((v250 + 114 - ((2 * v250) & 0xE4)) ^ LOBYTE(STACK[0x388])) ^ 0xBAu));
  v390 = LODWORD(STACK[0x2F0]) ^ *(v307 + 4 * (BYTE2(v376) ^ 0x50u));
  v391 = (v390 - ((2 * v390) & 0x64D25C7C) - 1301729730) ^ a80;
  v392 = (v391 - 2093651919 - ((2 * v391) & 0x66AD062)) ^ *(v303 + 4 * (HIBYTE(v374) ^ 0xB2));
  v393 = (v392 + 1342312550 - ((2 * v392) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v362) ^ 0xEEu));
  v394 = (v393 - 1521132796 - ((2 * v393) & 0x4AAAB608)) ^ *(v313 + 4 * ((v371 | ((v370 ^ 0xFB69E8AC) >> 18)) ^ 0x5Bu));
  v395 = v379 ^ LODWORD(STACK[0x3C8]);
  v396 = *(v303 + 4 * (HIBYTE(v395) ^ 0xA7)) ^ a65;
  v397 = ((v396 ^ 0x9AEFE3D1) + 1543965813 - 2 * ((v396 ^ 0x9AEFE3D1) & 0x5C070C77 ^ v396 & 2)) ^ *(v307 + 4 * (BYTE2(v394) ^ 0x11u));
  v398 = (v397 + 1342312550 - ((2 * v397) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v389) ^ 0x66u));
  v399 = (v398 - 1521132796 - ((2 * v398) & 0x4AAAB608)) ^ *(v313 + 4 * (v384 ^ 0xDu));
  v400 = v399 - 85456589 - ((2 * v399) & 0xF5D01266);
  v401 = LODWORD(STACK[0x2E8]) ^ *(v303 + 4 * (HIBYTE(v384) ^ 0xDA));
  v402 = (v401 + 1543965813 - ((2 * v401) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v395) ^ 0x13u));
  v403 = (v402 + 1342312550 - ((2 * v402) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v394) ^ 0x36u));
  v404 = (v403 - 1521132796 - ((2 * v403) & 0x4AAAB608)) ^ *(v313 + 4 * (v389 ^ 0x5Eu));
  v405 = v404 + 1400996880 - ((2 * v404) & 0xA7030820);
  v406 = *(v307 + 4 * (BYTE2(v384) ^ 0x20u)) ^ 0xC051C13 ^ *(v310 + 4 * (BYTE1(v395) ^ 0xFDu));
  v407 = (v406 - 2093651919 - ((2 * v406) & 0x66AD062)) ^ *(v303 + 4 * (HIBYTE(v389) ^ 0xB5));
  v408 = (v407 - ((2 * v407) & 0xDC18BA30) - 301179624) ^ a78;
  v409 = (v408 - 1521132796 - ((2 * v408) & 0x4AAAB608)) ^ *(v313 + 4 * (v394 ^ 0x27u));
  v410 = *(v303 + 4 * (HIBYTE(v394) ^ 0x3E)) ^ *(v307 + 4 * (BYTE2(v389) ^ 0x60u));
  v411 = ((v410 ^ 0xDF326444) + 1342312550 - 2 * ((v410 ^ 0xDF326444) & 0x5002106E ^ v410 & 8)) ^ *(v310 + 4 * (BYTE1(v384) ^ 0xB3u));
  v412 = (v411 - 1521132796 - ((2 * v411) & 0x4AAAB608)) ^ *(v313 + 4 * (v395 ^ 0x8Fu));
  v413 = (v412 + 1047332637 - ((2 * v412) & 0x7CDA0E3A)) ^ LODWORD(STACK[0x3B8]);
  v414 = v413 - 1155539605 - ((2 * v413) & 0x763FBAD6);
  v415 = v400 ^ LODWORD(STACK[0x3C0]);
  v416 = LODWORD(STACK[0x2E0]) ^ *(v303 + 4 * (HIBYTE(v415) ^ 0x50));
  v417 = v416 - ((2 * v416) & 0x4B567C8);
  v418 = (v409 + 149751981 - ((2 * v409) & 0x11DA115A)) ^ LODWORD(STACK[0x3D8]);
  v419 = v414 ^ LODWORD(STACK[0x358]);
  v420 = LODWORD(STACK[0x240]) ^ *(v307 + 4 * (BYTE2(v419) ^ 0x4Bu)) ^ *(v310 + 4 * (BYTE1(v418) ^ 0x5Bu)) ^ (v417 - 2107984924);
  v421 = v405 ^ LODWORD(STACK[0x3D4]);
  v422 = (v420 - 1521132796 - ((2 * v420) & 0x4AAAB608)) ^ *(v313 + 4 * ((v405 ^ LOBYTE(STACK[0x3D4])) ^ 0xDAu));
  v423 = LODWORD(STACK[0x2D8]) ^ *(v303 + 4 * (HIBYTE(v421) ^ 0x77));
  v424 = (v423 + 1543965813 - ((2 * v423) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v415) ^ 0x8Cu));
  v425 = (v424 + 1342312550 - ((2 * v424) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v419) ^ 0x31u));
  v426 = (v425 - 1521132796 - ((2 * v425) & 0x4AAAB608)) ^ *(v313 + 4 * (v418 ^ 0x94u));
  v427 = v426 - 1855817444 - ((2 * v426) & 0x22C4F238);
  v428 = LODWORD(STACK[0x2D0]) ^ *(v303 + 4 * (HIBYTE(v418) ^ 0xB6));
  v429 = (v428 - ((2 * v428) & 0x3B01F8E) - 2116546617) ^ LODWORD(STACK[0x208]);
  v430 = (v429 + 1543965813 - ((2 * v429) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v421) ^ 0xC8u));
  v431 = (v430 - 1521132796 - ((2 * v430) & 0x4AAAB608)) ^ *(v313 + 4 * ~v419);
  v432 = (v431 + 1342312550 - ((2 * v431) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v415) ^ 0x77u));
  v433 = LODWORD(STACK[0x2C8]) ^ *(v303 + 4 * (HIBYTE(v419) ^ 0x81));
  v434 = (v433 + 1543965813 - ((2 * v433) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v418) ^ 0x37u));
  v435 = (v434 + 1342312550 - ((2 * v434) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v421) ^ 0x1Bu));
  v436 = (v435 - 1521132796 - ((2 * v435) & 0x4AAAB608)) ^ *(v313 + 4 * (v415 ^ 0x38u));
  v437 = (v436 - ((2 * v436) & 0x2A78A6EA) + 356275061) ^ LODWORD(STACK[0x380]);
  v438 = LODWORD(STACK[0x398]) ^ *(v303 + 4 * (HIBYTE(v422) ^ 0x51)) ^ 0x5D0953AA ^ *(v307 + 4 * (BYTE2(v437) ^ 0xB4u));
  v439 = (v438 + 1342312550 - ((2 * v438) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v432) ^ 0x79u));
  v440 = v427 ^ LODWORD(STACK[0x340]);
  v441 = (v439 - 1521132796 - ((2 * v439) & 0x4AAAB608)) ^ *(v313 + 4 * (v440 ^ 0xDu));
  v442 = *(v303 + 4 * (HIBYTE(v440) ^ 0x84)) ^ a69;
  v443 = ((v442 ^ 0x5D7FE80C) + 1906131334 - 2 * ((v442 ^ 0x5D7FE80C) & 0x719D4197 ^ v442 & 0x11)) ^ a77;
  v444 = (v443 + 1543965813 - ((2 * v443) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v422) ^ 0x66u));
  v445 = (v444 + 1342312550 - ((2 * v444) & 0xA00420CC)) ^ *(v310 + 4 * BYTE1(v437));
  LODWORD(v148) = (v445 - 1521132796 - ((2 * v445) & 0x4AAAB608)) ^ *(v313 + 4 * (v432 ^ 0xD0u));
  v446 = LODWORD(STACK[0x2C0]) ^ *(v303 + 4 * (HIBYTE(v432) ^ 8));
  v447 = (v446 + 1543965813 - ((2 * v446) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v440) ^ 0x14u));
  v448 = (v447 - 1521132796 - ((2 * v447) & 0x4AAAB608)) ^ *(v313 + 4 * (v437 ^ 0x14u));
  v449 = (v448 + 1342312550 - ((2 * v448) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v422) ^ 0xBBu));
  v450 = LODWORD(STACK[0x2B8]) ^ *(v303 + 4 * (HIBYTE(v437) ^ 0x52));
  v451 = (v450 + 1543965813 - ((2 * v450) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v432) ^ 0x37u));
  v452 = (v451 + 1342312550 - ((2 * v451) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v440) ^ 0xC3u));
  v453 = (v452 - 1521132796 - ((2 * v452) & 0x4AAAB608)) ^ *(v313 + 4 * (v422 ^ 0x9Eu));
  v454 = *(v303 + 4 * (HIBYTE(v441) ^ 0x7D)) ^ a63;
  v455 = ((v454 ^ 0xC5100B60) - 2 * ((v454 ^ 0xC5100B60) & 0x7784777F ^ v454 & 0xD) - 142313614) ^ LODWORD(STACK[0x220]);
  v456 = v455 + 1543965813 - ((2 * v455) & 0xB80E18EA);
  v457 = (v453 + 1441572700 - ((2 * v453) & 0xABD94EB8)) ^ LODWORD(STACK[0x360]);
  v458 = v456 ^ *(v307 + 4 * (BYTE2(v457) ^ 0x1Bu));
  v459 = (v449 - ((2 * v449) & 0xA4FD3A5C) - 763454162) ^ a53;
  v460 = (v458 + 1342312550 - ((2 * v458) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v459) ^ 0x49u));
  v461 = (v460 - 1521132796 - ((2 * v460) & 0x4AAAB608)) ^ *(v313 + 4 * (v148 ^ 0xF6u));
  v462 = LODWORD(STACK[0x2B0]) ^ *(v303 + 4 * (BYTE3(v148) ^ 0xE9));
  v463 = (v462 + 1543965813 - ((2 * v462) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v441) ^ 0xD0u));
  v464 = (v463 + 1342312550 - ((2 * v463) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v457) ^ 0x6Du));
  v465 = (v464 - 1521132796 - ((2 * v464) & 0x4AAAB608)) ^ *(v313 + 4 * (v459 ^ 0xACu));
  v466 = v465 - ((2 * v465) & 0x1BA53F0);
  v467 = LODWORD(STACK[0x2A8]) ^ *(v303 + 4 * (HIBYTE(v459) ^ 0x2E));
  v468 = (v467 + 1543965813 - ((2 * v467) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v148) ^ 0xAFu));
  v469 = (v468 + 2094703881 + (~(2 * v468) | 0x64AB5EF)) ^ LODWORD(STACK[0x218]);
  v470 = (v469 + 1342312550 - ((2 * v469) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v441) ^ 0x62u));
  v471 = (v470 - 1521132796 - ((2 * v470) & 0x4AAAB608)) ^ *(v313 + 4 * (v457 ^ 0x83u));
  v472 = *(v303 + 4 * (HIBYTE(v457) ^ 0x51)) ^ LODWORD(STACK[0x25C]);
  v473 = (v472 + 1543965813 - ((2 * v472) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v459) ^ 0xCFu));
  v474 = (v473 + 1342312550 - ((2 * v473) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v148) ^ 0x91u));
  v475 = (v474 - 1521132796 - ((2 * v474) & 0x4AAAB608)) ^ *(v313 + 4 * (v441 ^ 0x6Du));
  v476 = LODWORD(STACK[0x2A0]) ^ *(v303 + 4 * (HIBYTE(v461) ^ 0x87));
  v477 = (v476 + 1543965813 - ((2 * v476) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v475) ^ 0xC7u));
  v478 = (v477 + 1342312550 - ((2 * v477) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v471) ^ 0xDAu));
  v479 = (v466 + 14494200) ^ LODWORD(STACK[0x368]);
  v480 = (v478 - 1521132796 - ((2 * v478) & 0x4AAAB608)) ^ *(v313 + 4 * (((v466 - 8) ^ LOBYTE(STACK[0x368])) ^ 0x6Eu));
  v481 = v480 - ((2 * v480) & 0xD7A8391E);
  v482 = LODWORD(STACK[0x298]) ^ *(v303 + 4 * (HIBYTE(v479) ^ 0xF4));
  v483 = (v482 - ((2 * v482) & 0xB4458028) - 635256812) ^ a61;
  v484 = (v483 + 1543965813 - ((2 * v483) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v461) ^ 0x5Du));
  v485 = (v484 + 1342312550 - ((2 * v484) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v475) ^ 0x39u));
  v486 = (v485 - 1521132796 - ((2 * v485) & 0x4AAAB608)) ^ *(v313 + 4 * (v471 ^ 0x74u));
  v487 = *(v310 + 4 * (BYTE1(v461) ^ 0xE0u)) ^ 0xC051C13 ^ *(v307 + 4 * (BYTE2(v479) ^ 0xECu));
  v488 = (v487 - 2093651919 - ((2 * v487) & 0x66AD062)) ^ *(v303 + 4 * (HIBYTE(v471) ^ 0xC5));
  v489 = (v488 - 1521132796 - ((2 * v488) & 0x4AAAB608)) ^ *(v313 + 4 * (v475 ^ 0xD5u));
  v490 = (v489 - ((2 * v489) & 0x8BBA3DA4) - 975364398) ^ a70;
  v491 = LODWORD(STACK[0x290]) ^ *(v303 + 4 * (HIBYTE(v475) ^ 0xC5));
  v492 = (v491 + 1543965813 - ((2 * v491) & 0xB80E18EA)) ^ *(v307 + 4 * (BYTE2(v471) ^ 0x2Au));
  v493 = (v492 + 1342312550 - ((2 * v492) & 0xA00420CC)) ^ *(v310 + 4 * (BYTE1(v479) ^ 0xC8u));
  v494 = (v493 - 1521132796 - ((2 * v493) & 0x4AAAB608)) ^ *(v313 + 4 * (v461 ^ 0xEFu));
  LODWORD(v148) = (v490 - ((2 * v490) & 0x257375F0) + 314161912) ^ LODWORD(STACK[0x370]);
  v495 = v494 - 1381731406 - ((2 * v494) & 0x5B48E764);
  v496 = *(STACK[0x4D0] + 4 * (BYTE3(v148) ^ 0x16)) ^ *(STACK[0x620] + 4 * (BYTE2(v486) ^ 0x82u)) ^ 0xF4F5BD41;
  v497 = (v496 - ((2 * v496) & 0xAF8D95F4) + 1472645882) ^ LODWORD(STACK[0x200]);
  v498 = (v497 - ((2 * v497) & 0x38089F66) - 1677439053) ^ LODWORD(STACK[0x210]);
  v499 = (v481 - 338420593) ^ LODWORD(STACK[0x348]);
  LODWORD(v177) = STACK[0x4E8];
  v500 = (v498 + 664249551 - ((2 * v498) & 0x4F2F499E)) ^ LODWORD(STACK[0x4E8]);
  v501 = *(STACK[0x3F0] + 4 * ((((v481 + 7311) ^ LOWORD(STACK[0x348])) >> 8) ^ 0xE7u)) ^ 0x3AD7D94A;
  v502 = v500 & v501;
  v503 = v500 | v501;
  v504 = v495 ^ LODWORD(STACK[0x330]);
  v505 = v503 ^ *(STACK[0x3F8] + 4 * ((v495 ^ LOBYTE(STACK[0x330])) ^ 0xF7u)) ^ (v502 - 280573430 - ((2 * v502) & 0xDE8D9414));
  v506 = STACK[0x4E0];
  v507 = LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x4E0]) ^ (v505 - ((2 * v505) & 0xEA9EFC00) + 1968143872);
  LODWORD(v310) = STACK[0x498];
  v508 = *(&off_1002DD400 + (LODWORD(STACK[0x498]) ^ 0x1098)) - 1189717314;
  v509 = v508[HIBYTE(v507) ^ 0x38];
  HIDWORD(v510) = v509 ^ 0x10;
  LODWORD(v510) = ~v509 << 24;
  v511 = (v510 >> 29) - ((2 * (v510 >> 29)) & 0x6A) + 53;
  v512 = (v511 >> 3) ^ (((v510 >> 29) - ((2 * (v510 >> 29)) & 0x6A) + 53) >> 1);
  v513 = *(STACK[0x620] + 4 * (BYTE2(v504) ^ 0x6Fu));
  v514 = *(STACK[0x4D0] + 4 * (HIBYTE(v499) ^ 0xCA));
  v515 = *(STACK[0x3F0] + 4 * (BYTE1(v148) ^ 0xE2u));
  LOBYTE(v290) = v512 ^ 0x1C;
  LOBYTE(v250) = (v512 ^ 0x1C) & 0x37 ^ v512 & 2;
  v516 = *(STACK[0x3F8] + 4 * (v486 ^ 0x7Au));
  v517 = *(STACK[0x4D0] + 4 * (HIBYTE(v486) ^ 0x5C));
  v518 = *(STACK[0x620] + 4 * (BYTE2(v499) ^ 0xE1u));
  LOBYTE(v250) = v290 - 2 * v250;
  v519 = HIBYTE(v504) ^ 0xE5;
  v520 = *(STACK[0x3F0] + 4 * (BYTE1(v504) ^ 0xB0u));
  v521 = *(STACK[0x3F8] + 4 * (v148 ^ 2u));
  v522 = *(STACK[0x4D0] + 4 * v519);
  LODWORD(v148) = *(STACK[0x620] + 4 * (BYTE2(v148) ^ 0x5Bu));
  v523 = *(STACK[0x3F0] + 4 * (BYTE1(v486) ^ 0x63u));
  v524 = *(STACK[0x3F8] + 4 * (v499 ^ 0x77u));
  v525 = STACK[0x5F8];
  *(STACK[0x5F8] + LODWORD(STACK[0x480])) = v511 ^ 0xEC ^ (v250 + 53);
  LODWORD(v250) = ((LODWORD(STACK[0x280]) ^ v522) + 1827047471 + (~(2 * (LODWORD(STACK[0x280]) ^ v522)) | 0x2632EFA3)) ^ LODWORD(STACK[0x238]);
  LODWORD(v250) = (v250 - 1576846906 - ((2 * v250) & 0x4406738C)) ^ v148;
  LODWORD(v250) = (v250 + 987224394 - ((2 * v250) & 0x75AFB294)) ^ v523;
  LODWORD(v250) = (v250 - 280573430 - ((2 * v250) & 0xDE8D9414)) ^ v524;
  LODWORD(v250) = (v250 - ((2 * v250) & 0xE056E8FE) + 1881896063) ^ LODWORD(STACK[0x5D0]);
  v526 = v506 ^ v177 ^ (v250 + 664249551 - ((2 * v250) & 0x4F2F499E));
  v527 = *(&off_1002DD400 + v310 - 3651) - 1285805195;
  *(v525 + LODWORD(STACK[0x450])) = v527[((v526 ^ 0x577A) >> 8) ^ 0x80] ^ (((v526 ^ 0x577A) >> 8) + (~((v526 ^ 0xA50C577A) >> 7) | 0x85) - 66) ^ 0x5E;
  *(v525 + LODWORD(STACK[0x478])) = v527[((v507 ^ 0xE241) >> 8) ^ 0xC6] ^ (((v507 ^ 0xE241) >> 8) - (((v507 ^ 0x4F3CE241) >> 7) & 0x7A) - 67) ^ 0x13;
  v528 = ((LODWORD(STACK[0x288]) ^ v517) - 1576846906 - ((2 * (LODWORD(STACK[0x288]) ^ v517)) & 0x4406738C)) ^ v518;
  v529 = (v528 + 987224394 - ((2 * v528) & 0x75AFB294)) ^ v520;
  v530 = (v529 - 280573430 - ((2 * v529) & 0xDE8D9414)) ^ v521;
  v531 = LODWORD(STACK[0x5E0]) ^ v506 ^ (v530 - ((2 * v530) & 0x18D2550A) + 208218757);
  v532 = v508[HIBYTE(v531) ^ 0x47];
  HIDWORD(v510) = v532 ^ 0x10;
  LODWORD(v510) = ~v532 << 24;
  v533 = (v510 >> 29) - ((2 * (v510 >> 29)) & 0x52) + 41;
  LODWORD(v250) = (v533 >> 3) ^ (((v510 >> 29) - ((2 * (v510 >> 29)) & 0x52) + 41) >> 1) ^ 0x11;
  *(v525 + LODWORD(STACK[0x4BC])) = v533 ^ (v250 - ((2 * v250) & 0x52) + 41) ^ 7;
  v534 = ((v514 ^ a79 ^ 0xC5371226) - 1576846906 - 2 * ((v514 ^ a79 ^ 0xC5371226) & 0x220339D7 ^ (v514 ^ a79) & 0x11)) ^ v513;
  v535 = (v534 + 987224394 - ((2 * v534) & 0x75AFB294)) ^ v515;
  v536 = (v535 - 280573430 - ((2 * v535) & 0xDE8D9414)) ^ v516;
  v537 = v506 ^ LODWORD(STACK[0x530]) ^ LODWORD(STACK[0x5E8]) ^ (v536 - ((2 * v536) & 0xC43D87A4) + 1646183378);
  v538 = v508[HIBYTE(v537) ^ 0xF1];
  HIDWORD(v510) = v538 ^ 0x10;
  LODWORD(v510) = ~v538 << 24;
  v539 = (v510 >> 29) - ((2 * (v510 >> 29)) & 0xFFFFFFAC) + 86;
  LODWORD(v250) = (v539 >> 3) ^ (((v510 >> 29) - ((2 * (v510 >> 29)) & 0xAC) + 86) >> 1);
  LODWORD(v313) = STACK[0x4F0];
  *(v525 + v313) = v539 ^ 0x5D ^ ((v250 ^ 0x21) - ((2 * v250) & 0xAC) + 86);
  v540 = v531 ^ 0x9CD134DB;
  v541 = *(&off_1002DD400 + v310 - 3931) - 6924963;
  *(v525 + LODWORD(STACK[0x4B0])) = (((v531 ^ 0x9CD134DB) >> 16) - (((v531 ^ 0x9CD134DB) >> 15) & 0xD2) + 105) ^ v541[((v531 ^ 0x9CD134DB) >> 16) ^ 0x50] ^ 0xDD;
  v542 = v531 ^ 0x5BLL;
  v543 = *(&off_1002DD400 + v310 - 3553) - 337548907;
  *(v525 + LODWORD(STACK[0x4A0])) = v543[v542] ^ 0x81;
  *(v525 + LODWORD(STACK[0x4C8])) = ((BYTE2(v537) ^ 0x9C) - ((2 * (BYTE2(v537) ^ 0x9C)) & 0xD2) + 105) ^ 0xD9 ^ v541[BYTE2(v537) ^ 0x6FLL];
  *(v525 + LODWORD(STACK[0x470])) = v541[((v526 ^ 0xA50C577A) >> 16) ^ 0x8FLL] ^ (((v526 ^ 0xA50C577A) >> 16) - (((v526 ^ 0xA50C577A) >> 15) & 0xD2) + 105) ^ 0x4F;
  *(v525 + LODWORD(STACK[0x490])) = v543[v507 ^ 0x53] ^ 0x85;
  LOBYTE(v250) = (BYTE1(v537) ^ 0x2D) - ((2 * (BYTE1(v537) ^ 0x2D)) & 0x8C) + 70;
  *(v525 + LODWORD(STACK[0x518])) = (v250 - ((2 * v250) & 0x7A) - 67) ^ v527[BYTE1(v537) ^ 0xF3] ^ 0x5F;
  LODWORD(v542) = v508[HIBYTE(v526) ^ 0x9DLL];
  HIDWORD(v510) = v542 ^ 0x10;
  LODWORD(v510) = ~v542 << 24;
  LODWORD(v542) = (v510 >> 29) - ((2 * (v510 >> 29)) & 0xFFFFFFDA) - 19;
  LODWORD(v250) = (v542 >> 3) ^ (((v510 >> 29) - ((2 * (v510 >> 29)) & 0xDA) - 19) >> 1) ^ 0x6B;
  *(v525 + LODWORD(STACK[0x488])) = v542 ^ (v250 - ((2 * v250) & 0xDA) - 19) ^ 0xF9;
  *(v525 + LODWORD(STACK[0x4C0])) = (BYTE1(v540) - ((v540 >> 7) & 0x7A) - 67) ^ 0xDE ^ v527[BYTE1(v540) ^ 0x68];
  *(v525 + LODWORD(STACK[0x52C])) = v543[v537 ^ 0xBALL] ^ 0xD1;
  *(v525 + LODWORD(STACK[0x458])) = v543[v526 ^ 0x9ELL] ^ 0x65;
  *(v525 + LODWORD(STACK[0x4A8])) = (((v507 ^ 0x4F3CE241) >> 16) - (((v507 ^ 0x4F3CE241) >> 15) & 0xD2) + 105) ^ 0xDE ^ v541[((v507 ^ 0x4F3CE241) >> 16) ^ 0x40];
  return (*(STACK[0x630] + 8 * ((118 * (((v313 + 410970571 - 2 * ((v313 + 16) & STACK[0x460] ^ STACK[0x468] & 4)) ^ 0x187EE9BBu) >= LODWORD(STACK[0x600]))) ^ v310)))();
}

uint64_t sub_10025F33C()
{
  v1 = STACK[0x438];
  LODWORD(STACK[0x5D0]) = LODWORD(STACK[0x418]) ^ 0x6DA61AC6;
  LODWORD(STACK[0x5E0]) = LODWORD(STACK[0x428]) ^ 0x188B9A21;
  LODWORD(STACK[0x5C8]) = LODWORD(STACK[0x420]) ^ 0x7CDCF1AA;
  LODWORD(STACK[0x5E8]) = LODWORD(STACK[0x42C]) ^ 0xA8B8C794;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10025F438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a3 - 2121183182;
  *(a7 + v14) = *(v7 + v14) ^ *(v8 + v14) ^ (75 * v14) ^ *(v14 + v10 + 5) ^ *(v14 + v9 + 3) ^ 0x1B;
  return (*(v13 + 8 * ((105 * (((v12 + 1037383432) & 0xC22ABFCC ^ 0xFFFFFFFFFFFFEE7FLL) + a3 == v11)) ^ v12)))();
}

uint64_t sub_10025F5B0()
{
  v1 = LODWORD(STACK[0x610]) - 3516;
  LODWORD(STACK[0x864]) = 0;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10025F5CC()
{
  v1 = STACK[0x610];
  (*(v0 + 8 * (LODWORD(STACK[0x610]) + 2738)))(STACK[0x8B8]);
  (*(v0 + 8 * (v1 + 2738)))(STACK[0x820] - 0xCA10C9D6C25FE94);
  (*(v0 + 8 * (v1 + 2738)))(STACK[0x848] - 0x568C0DE8C6360241);
  (*(v0 + 8 * (v1 + 2738)))(STACK[0x828] - 0x253C3AF178F7DB3DLL);
  (*(v0 + 8 * (v1 ^ 0x375E)))(STACK[0x7F8]);
  (*(v0 + 8 * (v1 + 2738)))(STACK[0x888]);
  (*(v0 + 8 * (v1 + 2738)))(STACK[0x838] - 0x166437AA264C5564);
  v2 = (*(v0 + 8 * (v1 + 2738)))(STACK[0x830]);
  return (*(v0 + 8 * (v1 - 6008)))(v2);
}

uint64_t sub_10025F6F0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x7D0] = v1 - 16;
  STACK[0x658] = a1 - 16;
  return (*(v4 + 8 * ((371 * ((v2 ^ (39 * (v3 ^ 0xC37) - 80031637)) + ((v3 - 925331734) & 0x37277FBB ^ 0x7EFD2559) + ((2 * v2) & 0xF674A0CE) == 2050495943)) ^ v3)))();
}

uint64_t sub_10025F78C()
{
  STACK[0x750] = v1;
  LODWORD(STACK[0x97C]) = STACK[0x628];
  STACK[0x980] = v1;
  LODWORD(STACK[0x77C]) = 0;
  return (*(v2 + 8 * (((((v0 + 1025947203) & 0xC2D945DD) - 173) * (v1 != 0x1A3404AE6F02C5F7)) ^ v0)))();
}

uint64_t sub_10025F8F4()
{
  STACK[0x750] = 0x1A3404AE6F02C5F7;
  LODWORD(STACK[0x97C]) = STACK[0x628];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10025F98C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x98C]) = a1;
  v3 = LODWORD(STACK[0x670]) - 1694775626;
  v4 = LODWORD(STACK[0x97C]) - 1765312802;
  v5 = (v3 < 0xF105278F) ^ (v4 < 0xF105278F);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0xF105278F;
  }

  return (*(v2 + 8 * ((v6 * (((v1 + 992479305) & 0xC4D7FAFE) - 8619)) ^ (v1 - 932))))();
}

uint64_t sub_10025FA18(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v4 + 1273375209 > (a3 + 1202838017);
  if ((a3 + 1202838017) < 0xA1EF8AB2 != v4 + 1273375209 < ((v3 - 7928) | 0x1488u) - 1578142972)
  {
    v7 = v4 + 1273375209 < ((v3 - 7928) | 0x1488u) - 1578142972;
  }

  return (*(v6 + 8 * ((60 * ((v5 == v3 + 68580222) & ~v7)) ^ v3)))();
}

uint64_t sub_10025FCEC@<X0>(unsigned int a1@<W8>)
{
  v4 = v1 - 221187034;
  v5 = a1 + 1222268159;
  v6 = a1 > 0xB725AB00;
  v7 = v6 ^ (v4 < ((((2 * v2) ^ 0x351A) - 283892999) & 0x10EBDEF2 ^ 0x48DA5E5Du));
  v8 = v4 < v5;
  if (!v7)
  {
    v6 = v8;
  }

  return (*(v3 + 8 * ((121 * v6) ^ (v2 + 2532))))();
}

uint64_t sub_10025FEB0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v3 + v4 + 306013443 + ((v5 - 4398) ^ 0xE150984D);
  v8 = v7 < ((v5 - 218) ^ 0x4997427Du);
  v9 = v7 > a3 - 279335942;
  if ((a3 - 279335942) < 0x49975CAB == v8)
  {
    v8 = v9;
  }

  return (*(v6 + 8 * ((122 * !v8) ^ v5)))();
}

uint64_t sub_10025FFF0(uint64_t a1, char a2, char a3, char a4, int a5)
{
  v11 = (v9 + v5);
  v12 = v5 - 1;
  LOBYTE(v11) = *(STACK[0x5A8] + (a1 & v11)) ^ *(v7 + v11) ^ *(STACK[0x5A0] + (a1 & v11)) ^ *(STACK[0x5B0] + (a1 & v11)) ^ ((a1 & v11) * a2);
  *(v6 + (v12 - 1443455193)) = (a4 & (2 * v11)) + (v11 ^ a3);
  return (*(v10 + 8 * (((v12 == 1443455193) * a5) ^ v8)))();
}

uint64_t sub_10026006C()
{
  LODWORD(STACK[0x9A0]) = v1;
  v4 = v1 == 68588956 && LODWORD(STACK[0x77C]) == 0;
  return (*(v2 + 8 * ((30 * ((v4 ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_1002603F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (a3 + v5);
  v9 = STACK[0x5B8];
  if (a3 == v6)
  {
    v8 = (STACK[0x5B8] + 24);
  }

  *v8 = v4;
  *(v9 + 16) = v3 + 3377 + *(v9 + 16) - 6194;
  return (*(v7 + 8 * v3))();
}

uint64_t sub_100260550(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v20 = (v10 + v12 + a2 + v13) & 0xF;
  v21 = *(*(&off_1002DD400 + a5) + v20 + a6);
  v22 = *(*(&off_1002DD400 + a7) + v20 + a8);
  LODWORD(v20) = *(*(&off_1002DD400 + a3) + v20 + a4) ^ *(v11 + (v10 + v12 + a2 + v13)) ^ v20;
  v23 = v21 ^ v22;
  v24 = STACK[0x630];
  *(v9 + (a2 + a1)) = (v20 ^ v23 ^ v14) + (((v20 ^ v23) << v15) & v16) - 5;
  v26 = a2 + v17 > v18 && a2 + v17 < v8;
  return (*(v24 + 8 * ((v26 * v19) ^ v12)))();
}

uint64_t sub_1002606F4@<X0>(int a1@<W8>)
{
  v2 = (((LOBYTE(STACK[0xBB9]) - 106) << (a1 + 93)) + ((LOBYTE(STACK[0xBB8]) - 106) << 56) + ((LOBYTE(STACK[0xBBA]) - 106) << 40) + ((LOBYTE(STACK[0xBBB]) - 106) << 32) + ((LOBYTE(STACK[0xBBC]) - 106) << 24) + ((LOBYTE(STACK[0xBBD]) - 106) << 16) + ((LOBYTE(STACK[0xBBE]) - 106) << 8)) | (LOBYTE(STACK[0xBBF]) - 106);
  *(STACK[0x990] - 0x2087B04485EAB684) = v2 - ((2 * v2) & 0x862544867C8FA4F0) - 0x3CED5DBCC1B82D88;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_100260808@<X0>(int a1@<W8>)
{
  v2 = ((LOBYTE(STACK[0x10A8]) - 106) << 56) | ((LOBYTE(STACK[0x10A9]) - 106) << 48) | ((LOBYTE(STACK[0x10AA]) - 106) << 40) | ((LOBYTE(STACK[0x10AB]) + ((a1 + 94) ^ 0x40)) << 32) | ((LOBYTE(STACK[0x10AC]) - 106) << 24) | ((LOBYTE(STACK[0x10AD]) - 106) << 16) | ((LOBYTE(STACK[0x10AE]) - 106) << 8) | (LOBYTE(STACK[0x10AF]) - 106);
  v3 = v2 - ((2 * v2) & 0x862544867C8FA4F0) - 0x3CED5DBCC1B82D88;
  v4 = STACK[0x990];
  *(STACK[0x990] - 0x2087B04485EAB714) = v3;
  v5 = ((2 * v3) & 0x6FBF65FA8FDBDFFELL ^ 0x62544820C8B84F0) + (v3 ^ 0xF4CD10BE79AA3D87);
  v6 = v5 - 0x37DFB2FD47EDEFFFLL;
  if (v5 == 0x37DFB2FD47EDEFFELL)
  {
    v7 = 546665435;
  }

  else
  {
    v7 = 546665436;
  }

  if (v6 < 0xFFFFFFFFFFFFFFF0)
  {
    v7 = 546665434;
  }

  *(v4 - 0x2087B04485EAB71CLL) = v7;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_100260A54@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x9A8]) = a1 + 1;
  v3 = STACK[0x990];
  STACK[0x6F0] = STACK[0x990];
  return (*(v2 + 8 * ((124 * (((v3 == 0x2087B04485EAB71CLL) ^ (v1 - 110)) & 1)) ^ v1)))();
}

uint64_t sub_100260BA8()
{
  v3 = STACK[0x6F0];
  v4 = (*(v2 + 8 * (v1 ^ 0x37FD)))(*(STACK[0x6F0] - 0x2087B04485EAB6C4) - 0x2B1A0449E8A6C928);
  *(v3 - 0x2087B04485EAB6C4) = v0;
  return (*(v2 + 8 * (v1 - 5713)))(v4);
}

uint64_t sub_100260CE8()
{
  v3 = STACK[0x6F0];
  v4 = (*(v2 + 8 * (v1 ^ 0x37FD)))(*(STACK[0x6F0] - 0x2087B04485EAB68CLL) - 0x2B1A0449E8A6C928);
  *(v3 - 0x2087B04485EAB68CLL) = v0;
  return (*(v2 + 8 * (v1 - 6108)))(v4);
}

uint64_t sub_100260E0C()
{
  v3 = STACK[0x6E0];
  v4 = (*(v2 + 8 * (v1 ^ 0x37FD)))(*(STACK[0x6E0] - 0x2087B04485EAB6C4) - 0x2B1A0449E8A6C928);
  *(v3 - 0x2087B04485EAB6C4) = v0;
  return (*(v2 + 8 * (v1 - 4361)))(v4);
}

uint64_t sub_100260F64()
{
  v3 = STACK[0x6E0];
  v4 = (*(v2 + 8 * (v1 + 2645)))(*(STACK[0x6E0] - 0x2087B04485EAB68CLL) - 0x2B1A0449E8A6C928);
  *(v3 - 0x2087B04485EAB68CLL) = v0;
  return (*(v2 + 8 * (v1 - 4897)))(v4);
}

uint64_t sub_100261078()
{
  v3 = STACK[0x7B0];
  v4 = (*(v2 + 8 * (v1 + 2645)))(*(STACK[0x7B0] - 0x2087B04485EAB6C4) - 0x2B1A0449E8A6C928);
  *(v3 - 0x2087B04485EAB6C4) = v0;
  return (*(v2 + 8 * (v1 - 2476)))(v4, 2851503991);
}

uint64_t sub_1002611B8()
{
  v3 = STACK[0x7B0];
  v4 = (*(v2 + 8 * (v1 + 2645)))(*(STACK[0x7B0] - 0x2087B04485EAB68CLL) - 0x2B1A0449E8A6C928);
  *(v3 - 0x2087B04485EAB68CLL) = v0;
  return (*(v2 + 8 * (v1 - 2342)))(v4);
}

uint64_t sub_100261340@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  STACK[0x938] = v6;
  *(a1 + v6) = ((v1 - 15) ^ v2 ^ v3) * (v2 + 17);
  return (*(v5 + 8 * (((STACK[0x938] != 0) | (2 * (STACK[0x938] != 0))) ^ v1)))();
}

void *sub_1002613F4(unint64_t a1)
{
  v2 = 0x71B9CF6610DE981CLL;
  v3 = *(&off_1002DD400 + (byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 - dword_1002E0CE8) ^ 0x1C))] ^ 0xF6] ^ (97 * ((dword_1002E0DA8 - dword_1002E0CE8) ^ 0x1C))) + 466);
  v4 = *(v3 - 589153439);
  v5 = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * ((dword_1002E0DA8 + v4) ^ 0x1C))] ^ 0x51] ^ (97 * ((dword_1002E0DA8 + v4) ^ 0x1C))) + 662);
  v6 = v4 ^ &v256 ^ *(v5 - 1056958627);
  v7 = 1912442209 * v6 + 0x71B9CF6610DE981CLL;
  v8 = 1912442209 * (v6 ^ 0x71B9CF6610DE981CLL);
  *(v3 - 589153439) = v7;
  *(v5 - 1056958627) = v8;
  LOBYTE(v8) = 97 * ((v8 + *(v3 - 589153439)) ^ 0x1C);
  v9 = *(&off_1002DD400 + (v8 ^ byte_1002C5F50[byte_1002A9990[v8] ^ 0xF6]) + 753);
  v10 = *(v9 - 879950942);
  *(v9 - 879950942) = v10 + 1;
  v254 = v5;
  v255 = v3;
  v11 = *(*(&off_1002DD400 + ((97 * ((*(v5 - 1056958627) + *(v3 - 589153439)) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((*(v5 - 1056958627) + *(v3 - 589153439)) ^ 0x1C))] ^ 0xF6]) + 245) + 8 * (v10 & 1) - 492432090);
  if (!v11)
  {
    return 0;
  }

  v253 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0CE8) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 - dword_1002E0CE8) ^ 0x1C))] ^ 0xF6]) + 436) - 2062743291;
  if ((*(v11 + 880) & 2) != 0 && atomic_exchange((v11 + 884), 1u))
  {
    v12 = 1;
    while (*(v11 + 884) || atomic_exchange((v11 + 884), 1u))
    {
      if ((v12 & 0x3F) == 0)
      {
        v13 = v2;
        (*&v253[8 * ((97 * (*(v255 - 589153439) ^ v2 ^ *(v254 - 1056958627))) ^ byte_100295780[byte_10027CBF0[(97 * (*(v255 - 589153439) ^ v2 ^ *(v254 - 1056958627)))] ^ 0xD4]) + 84192])();
        v2 = v13;
      }

      ++v12;
    }
  }

  v14 = (*(&off_1002DD400 + ((97 * ((*(v254 - 1056958627) + *(v255 - 589153439)) ^ v2)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((*(v254 - 1056958627) + *(v255 - 589153439)) ^ v2))] ^ 0xF6]) + 29) - 1223854258);
  if (a1 <= 0xE0)
  {
    v15 = (a1 + 31) & 0x1F0;
    if (a1 < 0xF)
    {
      v15 = 32;
    }

    v16 = v15 >> 3;
    v17 = *v11;
    v18 = *v11 >> (v15 >> 3);
    if ((v18 & 3) != 0)
    {
      v19 = ((*v11 >> (v15 >> 3)) & 1 | v16) ^ 1;
      v20 = v11 + 8 * (2 * v19);
      v21 = v20 + 72;
      v22 = *(v20 + 88);
      v23 = v22[2];
      if (v21 == v23)
      {
        *v11 = v17 & ~(1 << v19);
      }

      else
      {
        *(v23 + 24) = v21;
        *(v21 + 16) = v23;
      }

      v22[1] = (8 * (v19 & 0x3F)) | 3;
      v41 = &v22[v19];
      v41[1] |= 1uLL;
      *v41 = *v14 ^ v11;
      goto LABEL_93;
    }

    if (v15 > *(v11 + 8))
    {
      if (v18)
      {
        v28 = (v18 << v16) & ((2 << v16) | -(2 << v16));
        v29 = (v28 - 1) & ~v28;
        v30 = (v29 >> 12) & 0x10;
        v31 = v29 >> v30;
        v32 = v30 & 0xFFFFFFF0 | (v31 >> 5) & 0xF;
        v33 = v31 >> ((v31 >> 5) & 8);
        v34 = v32 & 0xFFFFFFF8 | (v33 >> 2) & 7;
        v35 = v33 >> ((v33 >> 2) & 4);
        v36 = (v34 & 0xFFFFFFFC | (v35 >> 1) & 2 | (v35 >> ((v35 >> 1) & 2) >> 1) & 1) + (v35 >> ((v35 >> 1) & 2) >> (((v35 >> ((v35 >> 1) & 2)) & 2) != 0));
        v37 = v11 + 16 * v36;
        v38 = v37 + 72;
        v39 = *(v37 + 88);
        v40 = *(v39 + 16);
        if (v38 == v40)
        {
          *v11 = v17 & ~(1 << v36);
        }

        else
        {
          *(v40 + 24) = v38;
          *(v38 + 16) = v40;
        }

        v131 = 8 * v36;
        v72 = v131 - v15;
        if (v131 - v15 <= 0x1F)
        {
          *(v39 + 8) = v131 | 3;
          v132 = (v39 + v131);
LABEL_218:
          v132[1] |= 1uLL;
          *v132 = *v14 ^ v11;
          result = (v39 + 16);
          goto LABEL_94;
        }

        *(v39 + 8) = v15 | 3;
        v133 = (v39 + v15);
        *v133 = *v14 ^ v11;
        v133[1] = v72 | 1;
        goto LABEL_220;
      }

      v64 = *(v11 + 4);
      if (v64)
      {
        v65 = (v64 - 1) & ~v64;
        v66 = (v65 >> 12) & 0x10;
        v67 = v65 >> v66;
        v68 = v66 & 0xFFFFFFF0 | (v67 >> 5) & 0xF;
        v69 = v67 >> ((v67 >> 5) & 8);
        v70 = v68 & 0xFFFFFFF8 | (v69 >> 2) & 7;
        v71 = v69 >> ((v69 >> 2) & 4);
        v39 = *(v11 + 8 * ((v70 & 0xFFFFFFFC | (v71 >> 1) & 2 | (v71 >> ((v71 >> 1) & 2) >> 1) & 1) + (v71 >> ((v71 >> 1) & 2) >> (((v71 >> ((v71 >> 1) & 2)) & 2) != 0))) + 600);
        v72 = (*(v39 + 8) & 0xFFFFFFFFFFFFFFF8) - v15;
        v73 = 32;
        if (!*(v39 + 32))
        {
          v73 = 40;
        }

        for (i = *(v39 + v73); i; i = *(i + v75))
        {
          if ((*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v15 < v72)
          {
            v39 = i;
            v72 = (*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v15;
          }

          if (*(i + 32))
          {
            v75 = 32;
          }

          else
          {
            v75 = 40;
          }
        }

        v76 = *(v39 + 48);
        v77 = *(v39 + 24);
        if (v77 == v39)
        {
          v151 = (v39 + 40);
          v152 = *(v39 + 40);
          if (v152 || (v151 = (v39 + 32), (v152 = *(v39 + 32)) != 0))
          {
            do
            {
              do
              {
                v153 = v151;
                v77 = v152;
                v151 = v152 + 5;
                v152 = v152[5];
              }

              while (v152);
              v151 = v77 + 4;
              v152 = v77[4];
            }

            while (v152);
            *v153 = 0;
            if (!v76)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v77 = 0;
            if (!v76)
            {
              goto LABEL_216;
            }
          }
        }

        else
        {
          v78 = *(v39 + 16);
          *(v78 + 24) = v77;
          v77[2] = v78;
          if (!v76)
          {
            goto LABEL_216;
          }
        }

        v154 = v11 + 8 * *(v39 + 56);
        if (v39 == *(v154 + 600))
        {
          *(v154 + 600) = v77;
          if (!v77)
          {
            *(v11 + 4) &= ~(1 << *(v39 + 56));
LABEL_216:
            if (v72 <= 0x1F)
            {
              v181 = v72 + v15;
              *(v39 + 8) = v181 | 3;
              v132 = (v39 + v181);
              goto LABEL_218;
            }

            *(v39 + 8) = v15 | 3;
            *(v39 + v15) = *v14 ^ v11;
            v133 = (v39 + v15);
            v133[1] = v72 | 1;
LABEL_220:
            *(v133 + v72) = v72;
            v182 = *(v11 + 8);
            if (v182)
            {
              v183 = *(v11 + 32);
              v184 = v182 >> 3;
              v185 = v11 + ((2 * v182) & 0x7FFFFFFF0) + 72;
              v186 = 1 << v184;
              if ((*v11 & v186) != 0)
              {
                v187 = *(v185 + 16);
              }

              else
              {
                *v11 |= v186;
                v187 = v185;
              }

              *(v185 + 16) = v183;
              *(v187 + 24) = v183;
              *(v183 + 16) = v187;
              *(v183 + 24) = v185;
            }

            *(v11 + 8) = v72;
            *(v11 + 32) = v133;
            result = (v39 + 16);
            goto LABEL_94;
          }
        }

        else
        {
          v155 = 40;
          if (*(v76 + 32) == v39)
          {
            v155 = 32;
          }

          *(v76 + v155) = v77;
          if (!v77)
          {
            goto LABEL_216;
          }
        }

        v77[6] = v76;
        v162 = *(v39 + 32);
        if (v162)
        {
          v77[4] = v162;
          *(v162 + 48) = v77;
        }

        v163 = *(v39 + 40);
        if (v163)
        {
          v77[5] = v163;
          *(v163 + 48) = v77;
        }

        goto LABEL_216;
      }
    }

    goto LABEL_71;
  }

  if (a1 > 0xFFFFFFFFFFFFFF7FLL)
  {
    v15 = -1;
    goto LABEL_71;
  }

  v15 = (a1 + 31) & 0xFFFFFFFFFFFFFFF0;
  v25 = *(v11 + 4);
  v268 = (v11 + 4);
  if (v25)
  {
    v26 = -v15;
    if (a1 <= 0xFFFFE0)
    {
      v42 = (a1 + 31) >> 8;
      v43 = ((v42 + 1048320) >> 16) & 8;
      LODWORD(v42) = v42 << v43;
      LODWORD(v42) = (v42 << (((v42 + 520192) >> 16) & 4) << ((((v42 << (((v42 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v42 + 520192) >> 16) & 4 | v43 | (((v42 << (((v42 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
      v27 = ((v15 >> (v42 + 21)) & 1 | (2 * v42)) + 28;
    }

    else
    {
      v27 = 31;
    }

    v44 = *(v11 + 8 * v27 + 600);
    if (v44)
    {
      v45 = 0;
      v46 = 0;
      v47 = 57 - (v27 >> 1);
      if (v27 == 31)
      {
        LOBYTE(v47) = 0;
      }

      v48 = v15 << v47;
      while (1)
      {
        v51 = (v44[1] & 0xFFFFFFFFFFFFFFF8) - v15;
        if (v51 < v26)
        {
          v45 = v44;
          v26 = (v44[1] & 0xFFFFFFFFFFFFFFF8) - v15;
          if (!v51)
          {
            break;
          }
        }

        v49 = v44[5];
        v44 = v44[(v48 >> 63) + 4];
        if (v49 != v44 && v49 != 0)
        {
          v46 = v49;
        }

        v48 *= 2;
        if (!v44)
        {
          goto LABEL_43;
        }
      }

      v45 = v44;
    }

    else
    {
      v45 = 0;
      v46 = 0;
LABEL_43:
      if (!(v46 | v45))
      {
        v52 = ((2 << v27) | -(2 << v27)) & v25;
        if (!v52)
        {
          goto LABEL_71;
        }

        v45 = 0;
        v53 = (v52 - 1) & ~v52;
        v54 = (v53 >> 12) & 0x10;
        v55 = v53 >> v54;
        v56 = v54 & 0xFFFFFFF0 | (v55 >> 5) & 0xF;
        v57 = v55 >> ((v55 >> 5) & 8);
        v58 = v56 & 0xFFFFFFF8 | (v57 >> 2) & 7;
        v59 = v57 >> ((v57 >> 2) & 4);
        v46 = *(v11 + 8 * ((v58 & 0xFFFFFFFC | (v59 >> 1) & 2 | (v59 >> ((v59 >> 1) & 2) >> 1) & 1) + (v59 >> ((v59 >> 1) & 2) >> (((v59 >> ((v59 >> 1) & 2)) & 2) != 0))) + 600);
      }

      v44 = v46;
      if (!v46)
      {
LABEL_53:
        v269 = v45;
        v270 = v26;
        if (!v45 || v270 >= *(v11 + 8) - v15)
        {
          goto LABEL_71;
        }

        v271 = v269 + v15;
        v61 = v269[6];
        v62 = v269[3];
        if (v62 == v269)
        {
          v134 = v269 + 5;
          v135 = v269[5];
          if (v135 || (v134 = v269 + 4, (v135 = v269[4]) != 0))
          {
            do
            {
              do
              {
                v136 = v134;
                v62 = v135;
                v134 = v135 + 5;
                v135 = v135[5];
              }

              while (v135);
              v134 = v62 + 4;
              v135 = v62[4];
            }

            while (v135);
            *v136 = 0;
            if (!v61)
            {
              goto LABEL_199;
            }
          }

          else
          {
            v62 = 0;
            if (!v61)
            {
              goto LABEL_199;
            }
          }
        }

        else
        {
          v63 = v269[2];
          *(v63 + 24) = v62;
          v62[2] = v63;
          if (!v61)
          {
            goto LABEL_199;
          }
        }

        v137 = v269;
        v138 = v11 + 8 * *(v269 + 14);
        if (v269 == *(v138 + 600))
        {
          *(v138 + 600) = v62;
          if (!v62)
          {
            *v268 &= ~(1 << *(v137 + 14));
LABEL_199:
            if (v270 > 0x1F)
            {
              v170 = v269;
              v269[1] = v15 | 3;
              *(v170 + v15) = *v14 ^ v11;
              v171 = v270;
              v172 = v271;
              *(v271 + 8) = v270 | 1;
              *(v172 + v171) = v171;
              if (v171 > 0xFF)
              {
                v257 = 31;
                if (!(v171 >> 24))
                {
                  v177 = (((v270 >> 8) + 1048320) >> 16) & 8;
                  v178 = (v270 >> 8) << v177;
                  v179 = (v178 << (((v178 + 520192) >> 16) & 4) << ((((v178 << (((v178 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v178 + 520192) >> 16) & 4 | v177 | (((v178 << (((v178 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                  v257 = ((v270 >> (v179 + 21)) & 1 | (2 * v179)) + 28;
                }

                v258 = v257;
                v259 = v11 + 8 * v257 + 600;
                *(v271 + 56) = v257;
                __asm { BRAA            X8, X17 }
              }

              v173 = v171 >> 3;
              v174 = v11 + 16 * (v171 >> 3) + 72;
              v175 = 1 << v173;
              if ((v175 & *v11) != 0)
              {
                v176 = *(v174 + 16);
              }

              else
              {
                *v11 |= v175;
                v176 = v174;
              }

              v180 = v271;
              *(v174 + 16) = v271;
              *(v176 + 24) = v180;
              *(v180 + 16) = v176;
              *(v180 + 24) = v174;
            }

            else
            {
              v167 = v269;
              v168 = v270 + v15;
              v269[1] = v168 | 3;
              v169 = (v167 + v168);
              v169[1] |= 1uLL;
              *v169 = *v14 ^ v11;
            }

            v22 = v269;
            goto LABEL_93;
          }
        }

        else
        {
          v139 = 40;
          if (*(v61 + 32) == v269)
          {
            v139 = 32;
          }

          *(v61 + v139) = v62;
          if (!v62)
          {
            goto LABEL_199;
          }
        }

        v62[6] = v61;
        v140 = v269[4];
        if (v140)
        {
          v62[4] = v140;
          *(v140 + 48) = v62;
        }

        v141 = v269[5];
        if (v141)
        {
          v62[5] = v141;
          *(v141 + 48) = v62;
        }

        goto LABEL_199;
      }
    }

    do
    {
      if ((v44[1] & 0xFFFFFFFFFFFFFFF8) - v15 < v26)
      {
        v45 = v44;
        v26 = (v44[1] & 0xFFFFFFFFFFFFFFF8) - v15;
      }

      if (v44[4])
      {
        v60 = 4;
      }

      else
      {
        v60 = 5;
      }

      v44 = v44[v60];
    }

    while (v44);
    goto LABEL_53;
  }

LABEL_71:
  v272 = v15;
  v79 = *(v11 + 8);
  if (v15 <= v79)
  {
    v85 = v79 - v272;
    v22 = *(v11 + 32);
    if (v79 - v272 < 0x20)
    {
      *(v11 + 8) = 0;
      *(v11 + 32) = 0;
      v22[1] = v79 | 3;
      *(v22 + v79 + 8) |= 1uLL;
    }

    else
    {
      v79 = v272;
      v86 = v22 + v272;
      *(v11 + 32) = v22 + v272;
      *(v11 + 8) = v85;
      *(v86 + 1) = v85 | 1;
      *&v86[v85] = v85;
      v22[1] = v79 | 3;
    }

    *(v22 + v79) = *v14 ^ v11;
    goto LABEL_93;
  }

  v80 = *(v11 + 16);
  v273 = (v11 + 16);
  if (v272 < v80)
  {
    v81 = v272;
    v82 = v80 - v272;
    *v273 = v82;
    v83 = *(v11 + 40);
    v84 = (v83 + v81);
    *(v11 + 40) = v83 + v81;
    v84[1] = v82 | 1;
    *(v83 + 8) = v81 | 3;
    *v84 = *v14 ^ v11;
    result = (v83 + 16);
    goto LABEL_94;
  }

  if (v80)
  {
    if ((*(v11 + 880) & 1) != 0 && v14[3] <= v272)
    {
      v87 = (v14[1] + v272 + 62) & -v14[1];
      v88 = *(v11 + 872);
      if (!v88 || (v89 = *(v11 + 856), v89 + v87 > v89) && v89 + v87 <= v88)
      {
        if (v87 > v272)
        {
          v90 = v2;
          v91 = (*&v253[8 * ((97 * ((*(v254 - 1056958627) + *(v255 - 589153439)) ^ v2)) ^ byte_100295780[byte_10027CBF0[(97 * ((*(v254 - 1056958627) + *(v255 - 589153439)) ^ v2))] ^ 0xD4]) + 84864])(0, (v14[1] + v272 + 62) & -v14[1], 3, 4098, 0xFFFFFFFFLL, 0);
          LOBYTE(v2) = v90;
          if (v91 != -1)
          {
            v92 = -(v91 + 16) & 0xFLL;
            if (((v91 + 16) & 0xF) == 0)
            {
              v92 = 0;
            }

            v22 = (v91 + v92);
            *v22 = v92;
            v22[1] = v87 - v92 - 32;
            v93 = (v91 + v87 - 32);
            *v93 = *v14 ^ v11;
            v93[1] = 11;
            *(v87 + v91 - 16) = 0;
            v94 = *(v11 + 24);
            if (!v94 || v91 < v94)
            {
              *(v11 + 24) = v91;
            }

            v95 = *(v11 + 856) + v87;
            *(v11 + 856) = v95;
            if (v95 > *(v11 + 864))
            {
              *(v11 + 864) = v95;
            }

            goto LABEL_93;
          }
        }
      }
    }
  }

  result = 0;
  v96 = (v14[2] + v272 + 95) & -v14[2];
  if (v96 > v272)
  {
    v97 = *(v11 + 872);
    if (!v97 || (result = 0, v98 = *(v11 + 856), v98 + v96 > v98) && v98 + v96 <= v97)
    {
      v99 = v2;
      v100 = (*&v253[8 * ((97 * (*(v255 - 589153439) ^ v2 ^ *(v254 - 1056958627))) ^ byte_1002C5F50[byte_1002A9990[(97 * (*(v255 - 589153439) ^ v2 ^ *(v254 - 1056958627)))] ^ 0xF6]) + 85752])(0, (v14[2] + v272 + 95) & -v14[2], 3, 4098, 0xFFFFFFFFLL, 0);
      v101 = v99;
      v102 = v100 != -1;
      if (v100 == -1)
      {
        v103 = 0;
      }

      else
      {
        v103 = v96;
      }

      if (v100 == -1)
      {
LABEL_323:
        v251 = 97 * ((*(v254 - 1056958627) + *(v255 - 589153439)) ^ v99);
        v252 = (*&v253[8 * (byte_100295580[byte_10027C8F0[v251] ^ 0xD6] ^ v251) + 84440])();
        result = 0;
        *v252 = 12;
        goto LABEL_94;
      }

      v104 = *(v11 + 856) + v96;
      *(v11 + 856) = v104;
      if (v104 > *(v11 + 864))
      {
        *(v11 + 864) = v104;
      }

      v105 = *(v11 + 40);
      v274 = (v11 + 40);
      if (!v105)
      {
        v142 = *(v11 + 24);
        if (!v142 || v100 < v142)
        {
          *(v11 + 24) = v100;
        }

        *(v11 + 888) = v100;
        *(v11 + 896) = v96;
        *(v11 + 912) = v102;
        v143 = *v14;
        *(v11 + 56) = 4095;
        *(v11 + 64) = v143;
        *(v11 + 96) = v11 + 72;
        *(v11 + 88) = v11 + 72;
        *(v11 + 112) = v11 + 88;
        *(v11 + 104) = v11 + 88;
        *(v11 + 128) = v11 + 104;
        *(v11 + 120) = v11 + 104;
        *(v11 + 144) = v11 + 120;
        *(v11 + 136) = v11 + 120;
        *(v11 + 160) = v11 + 136;
        *(v11 + 152) = v11 + 136;
        *(v11 + 176) = v11 + 152;
        *(v11 + 168) = v11 + 152;
        *(v11 + 192) = v11 + 168;
        *(v11 + 184) = v11 + 168;
        *(v11 + 208) = v11 + 184;
        *(v11 + 200) = v11 + 184;
        *(v11 + 224) = v11 + 200;
        *(v11 + 216) = v11 + 200;
        *(v11 + 240) = v11 + 216;
        *(v11 + 232) = v11 + 216;
        *(v11 + 248) = v11 + 232;
        *(v11 + 256) = v11 + 232;
        *(v11 + 264) = v11 + 248;
        *(v11 + 272) = v11 + 248;
        *(v11 + 280) = v11 + 264;
        *(v11 + 288) = v11 + 264;
        *(v11 + 296) = v11 + 280;
        *(v11 + 304) = v11 + 280;
        *(v11 + 312) = v11 + 296;
        *(v11 + 320) = v11 + 296;
        *(v11 + 328) = v11 + 312;
        *(v11 + 336) = v11 + 312;
        *(v11 + 344) = v11 + 328;
        *(v11 + 352) = v11 + 328;
        *(v11 + 360) = v11 + 344;
        *(v11 + 368) = v11 + 344;
        *(v11 + 376) = v11 + 360;
        *(v11 + 384) = v11 + 360;
        *(v11 + 392) = v11 + 376;
        *(v11 + 400) = v11 + 376;
        *(v11 + 408) = v11 + 392;
        *(v11 + 416) = v11 + 392;
        *(v11 + 424) = v11 + 408;
        *(v11 + 432) = v11 + 408;
        *(v11 + 440) = v11 + 424;
        *(v11 + 448) = v11 + 424;
        *(v11 + 456) = v11 + 440;
        *(v11 + 464) = v11 + 440;
        *(v11 + 472) = v11 + 456;
        *(v11 + 480) = v11 + 456;
        *(v11 + 488) = v11 + 472;
        *(v11 + 504) = v11 + 488;
        *(v11 + 512) = v11 + 488;
        *(v11 + 496) = v11 + 472;
        *(v11 + 528) = v11 + 504;
        *(v11 + 520) = v11 + 504;
        *(v11 + 544) = v11 + 520;
        *(v11 + 536) = v11 + 520;
        *(v11 + 560) = v11 + 536;
        *(v11 + 552) = v11 + 536;
        *(v11 + 576) = v11 + 552;
        *(v11 + 568) = v11 + 552;
        *(v11 + 592) = v11 + 568;
        *(v11 + 584) = v11 + 568;
        v144 = v11 + (*(v11 - 8) & 0xFFFFFFFFFFFFFFF8);
        v145 = v144 - 16;
        if ((v144 & 0xF) != 0)
        {
          v146 = -v144 & 0xFLL;
        }

        else
        {
          v146 = 0;
        }

        v147 = v145 + v146;
        v148 = v100 + v96 - v145 - v146 - 80;
        v149 = v273;
        *v274 = v147;
        *v149 = v148;
        *(v147 + 8) = v148 | 1;
        v150 = (v147 + v148);
        goto LABEL_188;
      }

      v106 = *(v11 + 888);
      v107 = *(v11 + 896);
      if (v100 == v106 + v107 && v105 < v100 && v105 >= v106)
      {
        v157 = *(v11 + 912);
        if ((v157 & 1) != 0 && (v157 & 8) == 0)
        {
          *(v11 + 896) = v107 + v96;
          v158 = v273;
          if (((v105 + 2) & 0xF) != 0)
          {
            v159 = -(v105 + 16) & 0xFLL;
          }

          else
          {
            v159 = 0;
          }

          v160 = v105 + v159;
          v161 = v96 - v159 + *v273;
          *v274 = v160;
          *v158 = v161;
          *(v160 + 1) = v161 | 1;
          v150 = &v160[v161];
LABEL_188:
          *(v150 + 1) = 80;
          *(v11 + 48) = v14[4];
          goto LABEL_321;
        }
      }

      v108 = (v11 + 888);
      if (v100 < *(v11 + 24))
      {
        *(v11 + 24) = v100;
      }

      v109 = *v108;
      v110 = (v11 + 888);
      if (*v108 == v100 + v96)
      {
        v111 = *(v11 + 912);
        v110 = (v11 + 888);
        if (v111)
        {
          v110 = (v11 + 888);
          if ((v111 & 8) == 0)
          {
            *v108 = v100;
            *(v11 + 896) += v96;
            if (((v100 + 16) & 0xF) != 0)
            {
              v112 = -(v100 + 16) & 0xFLL;
            }

            else
            {
              v112 = 0;
            }

            v113 = v100 + v112;
            if (((v109 + 16) & 0xF) != 0)
            {
              v114 = -(v109 + 16) & 0xFLL;
            }

            else
            {
              v114 = 0;
            }

            v115 = v109 + v114;
            v116 = v272;
            v275 = v113;
            v276 = v113 + v272;
            v117 = v109 + v114 - v113 - v272;
            *(v113 + 8) = v272 | 3;
            *(v113 + v116) = *v14 ^ v11;
            if (v115 == *v274)
            {
              v197 = v274;
              v198 = *v273 + v117;
              *v273 = v198;
              v199 = v276;
              *v197 = v276;
              *(v199 + 8) = v198 | 1;
            }

            else
            {
              if (v115 != *(v11 + 32))
              {
                v118 = *(v115 + 8);
                if ((v118 & 3) != 1)
                {
                  goto LABEL_275;
                }

                v119 = v118 & 0xFFFFFFFFFFFFFFF8;
                if (v118 <= 0xFF)
                {
                  v120 = *(v115 + 16);
                  v121 = *(v115 + 24);
                  if (v121 == v120)
                  {
                    *v11 &= ~(1 << (v118 >> 3));
                  }

                  else
                  {
                    *(v120 + 24) = v121;
                    *(v121 + 16) = v120;
                  }

                  goto LABEL_274;
                }

                v202 = *(v115 + 48);
                v203 = *(v115 + 24);
                if (v203 == v115)
                {
                  v205 = (v115 + 40);
                  v206 = *(v115 + 40);
                  if (v206 || (v205 = (v115 + 32), (v206 = *(v115 + 32)) != 0))
                  {
                    do
                    {
                      do
                      {
                        v207 = v205;
                        v203 = v206;
                        v205 = v206 + 5;
                        v206 = v206[5];
                      }

                      while (v206);
                      v205 = v203 + 4;
                      v206 = v203[4];
                    }

                    while (v206);
                    *v207 = 0;
                  }

                  else
                  {
                    v203 = 0;
                  }

                  v101 = v99;
                }

                else
                {
                  v204 = *(v115 + 16);
                  *(v204 + 24) = v203;
                  v203[2] = v204;
                }

                if (!v202)
                {
                  goto LABEL_274;
                }

                v208 = v11 + 8 * *(v115 + 56);
                if (v115 == *(v208 + 600))
                {
                  *(v208 + 600) = v203;
                  if (!v203)
                  {
                    *(v11 + 4) &= ~(1 << *(v115 + 56));
LABEL_274:
                    v115 += v119;
                    v117 += v119;
                    v118 = *(v115 + 8);
LABEL_275:
                    v277 = v117;
                    *(v115 + 8) = v118 & 0xFFFFFFFFFFFFFFFELL;
                    v212 = v276;
                    *(v276 + 8) = v117 | 1;
                    *(v212 + v117) = v117;
                    if (v117 > 0xFF)
                    {
                      v260 = 31;
                      if (!(v117 >> 24))
                      {
                        v217 = (((v277 >> 8) + 1048320) >> 16) & 8;
                        v218 = (v277 >> 8) << v217;
                        v219 = (v218 << (((v218 + 520192) >> 16) & 4) << ((((v218 << (((v218 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v218 + 520192) >> 16) & 4 | v217 | (((v218 << (((v218 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                        v260 = ((v277 >> (v219 + 21)) & 1 | (2 * v219)) + 28;
                      }

                      v261 = v260;
                      v220 = v11 + 8 * v260 + 600;
                      *(v276 + 56) = v260;
                      v262 = v220;
                      v263 = v11 + 4;
                      __asm { BRAA            X8, X17 }
                    }

                    v213 = v117 >> 3;
                    v214 = v11 + 16 * (v117 >> 3) + 72;
                    v215 = 1 << v213;
                    if ((v215 & *v11) != 0)
                    {
                      v216 = *(v214 + 16);
                    }

                    else
                    {
                      *v11 |= v215;
                      v216 = v214;
                    }

                    v221 = v276;
                    *(v214 + 16) = v276;
                    *(v216 + 24) = v221;
                    *(v221 + 16) = v216;
                    *(v221 + 24) = v214;
                    goto LABEL_320;
                  }
                }

                else
                {
                  v209 = 40;
                  if (*(v202 + 32) == v115)
                  {
                    v209 = 32;
                  }

                  *(v202 + v209) = v203;
                  if (!v203)
                  {
                    goto LABEL_274;
                  }
                }

                v203[6] = v202;
                v210 = *(v115 + 32);
                if (v210)
                {
                  v203[4] = v210;
                  *(v210 + 48) = v203;
                }

                v211 = *(v115 + 40);
                v101 = v99;
                if (v211)
                {
                  v203[5] = v211;
                  *(v211 + 48) = v203;
                }

                goto LABEL_274;
              }

              v200 = *(v11 + 8) + v117;
              *(v11 + 8) = v200;
              v201 = v276;
              *(v11 + 32) = v276;
              *(v201 + 8) = v200 | 1;
              *(v201 + v200) = v200;
            }

LABEL_320:
            v22 = v275;
LABEL_93:
            result = v22 + 2;
            goto LABEL_94;
          }
        }
      }

      while (1)
      {
        if (*v110 <= v105)
        {
          v122 = *v110 + v110[1];
          if (v122 > v105)
          {
            break;
          }
        }

        v110 = v110[2];
      }

      if (((v122 - 79) & 0xF) != 0)
      {
        v123 = (79 - v122) & 0xFLL;
      }

      else
      {
        v123 = 0;
      }

      v124 = (v122 + v123 - 95);
      if (v124 < v105 + 4)
      {
        v124 = v105;
      }

      v125 = v124 + 2;
      if (((v100 + 16) & 0xF) != 0)
      {
        v126 = -(v100 + 16) & 0xFLL;
      }

      else
      {
        v126 = 0;
      }

      v127 = v103 - v126;
      v128 = v100 + v126;
      v127 -= 80;
      *v274 = v128;
      *v273 = v127;
      *(v128 + 8) = v127 | 1;
      *(v128 + v127 + 8) = 80;
      *(v11 + 48) = v14[4];
      v124[1] = 51;
      v124[6] = *v14 ^ v11;
      if (((v125 ^ v108) & 7) != 0)
      {
        v129 = 0;
        do
        {
          v130 = &v125[v129 * 8];
          *v130 = v108[v129];
          v130[1] = BYTE1(v108[v129]);
          v130[2] = BYTE2(v108[v129]);
          v130[3] = BYTE3(v108[v129]);
          v130[4] = BYTE4(v108[v129]);
          v130[5] = BYTE5(v108[v129]);
          v130[6] = BYTE6(v108[v129]);
          v130[7] = HIBYTE(v108[v129++]);
        }

        while ((v129 * 8) != 32);
LABEL_309:
        *v108 = v100;
        *(v11 + 896) = v103;
        *(v11 + 912) = v102;
        v237 = v124 + 7;
        *(v11 + 904) = v125;
        do
        {
          *v237++ = 11;
        }

        while (v237 < v122);
        v238 = v124 - v105;
        if (v124 != v105)
        {
          v278 = v105;
          v279 = v124 - v105;
          v124[1] &= ~1uLL;
          v105[1] = v238 | 1;
          *v124 = v238;
          if (v238 > 0xFF)
          {
            v264 = 31;
            if (!(v238 >> 24))
            {
              v242 = (((v279 >> 8) + 1048320) >> 16) & 8;
              v243 = (v279 >> 8) << v242;
              v244 = (v243 << (((v243 + 520192) >> 16) & 4) << ((((v243 << (((v243 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v243 + 520192) >> 16) & 4 | v242 | (((v243 << (((v243 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
              v264 = ((v279 >> (v244 + 21)) & 1 | (2 * v244)) + 28;
            }

            v265 = v264;
            v245 = v11 + 8 * v264 + 600;
            *(v278 + 14) = v264;
            v266 = v245;
            v267 = v11 + 4;
            __asm { BRAA            X8, X17 }
          }

          v239 = v11 + 16 * (v238 >> 3) + 72;
          v240 = 1 << (v238 >> 3);
          if ((v240 & *v11) != 0)
          {
            v241 = *(v11 + 16 * (v238 >> 3) + 88);
          }

          else
          {
            *v11 |= v240;
            v241 = v11 + 16 * (v238 >> 3) + 72;
          }

          v246 = v278;
          *(v239 + 16) = v278;
          *(v241 + 24) = v246;
          v246[2] = v241;
          v246[3] = v239;
        }

LABEL_321:
        if (*v273 > v272)
        {
          v247 = v272;
          v248 = *v273 - v272;
          *v273 = v248;
          v249 = *v274;
          v250 = (*v274 + v247);
          *v274 = v250;
          v250[1] = v248 | 1;
          *(v249 + 8) = v247 | 3;
          *v250 = *v14 ^ v11;
          result = (v249 + 16);
          goto LABEL_94;
        }

        goto LABEL_323;
      }

      v164 = -v108 & 7;
      v165 = (v11 + 888);
      v166 = (v124 + 2);
      if ((-v108 & 7u) <= 3)
      {
        if ((-v108 & 7u) <= 1)
        {
          if (!v164)
          {
LABEL_238:
            v194 = 32 - v164;
            if (v194 >= 8)
            {
              v195 = v194 >> 3;
              v196 = ((v194 >> 3) + 7) >> 3;
              if (v194 >> 3 > 3)
              {
                if (v194 >> 3 <= 5)
                {
                  if (v195 == 4)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_287;
                }

                if (v195 == 6)
                {
                  goto LABEL_286;
                }

                goto LABEL_285;
              }

              if (v194 >> 3 > 1)
              {
                if (v195 == 2)
                {
                  goto LABEL_290;
                }

                goto LABEL_289;
              }

              if (v195)
              {
                goto LABEL_291;
              }

              do
              {
                v222 = *v165;
                v165 += 8;
                *v166 = v222;
                v166 += 8;
LABEL_285:
                v223 = *v165;
                v165 += 8;
                *v166 = v223;
                v166 += 8;
LABEL_286:
                v224 = *v165;
                v165 += 8;
                *v166 = v224;
                v166 += 8;
LABEL_287:
                v225 = *v165;
                v165 += 8;
                *v166 = v225;
                v166 += 8;
LABEL_288:
                v226 = *v165;
                v165 += 8;
                *v166 = v226;
                v166 += 8;
LABEL_289:
                v227 = *v165;
                v165 += 8;
                *v166 = v227;
                v166 += 8;
LABEL_290:
                v228 = *v165;
                v165 += 8;
                *v166 = v228;
                v166 += 8;
LABEL_291:
                v229 = *v165;
                v165 += 8;
                *v166 = v229;
                v166 += 8;
                --v196;
              }

              while (v196);
            }

            v230 = v194 & 7;
            if (v230 <= 3)
            {
              if (v230 <= 1)
              {
                if (!v230)
                {
                  goto LABEL_309;
                }

                goto LABEL_308;
              }

              if (v230 == 2)
              {
LABEL_307:
                v236 = *v165++;
                *v166++ = v236;
LABEL_308:
                *v166 = *v165;
                goto LABEL_309;
              }

LABEL_306:
              v235 = *v165++;
              *v166++ = v235;
              goto LABEL_307;
            }

            if (v230 > 5)
            {
              if (v230 != 6)
              {
                v231 = *v165++;
                *v166++ = v231;
              }

              v232 = *v165++;
              *v166++ = v232;
            }

            else if (v230 == 4)
            {
              goto LABEL_305;
            }

            v233 = *v165++;
            *v166++ = v233;
LABEL_305:
            v234 = *v165++;
            *v166++ = v234;
            goto LABEL_306;
          }

LABEL_237:
          v193 = *v165++;
          *v166++ = v193;
          goto LABEL_238;
        }

        if (v164 == 2)
        {
LABEL_236:
          v192 = *v165++;
          *v166++ = v192;
          goto LABEL_237;
        }

LABEL_235:
        v191 = *v165++;
        *v166++ = v191;
        goto LABEL_236;
      }

      if ((-v108 & 7u) > 5)
      {
        if (v164 != 6)
        {
          v165 = (v11 + 889);
          *v125 = *v108;
          v166 = v124 + 17;
        }

        v188 = *v165++;
        *v166++ = v188;
      }

      else if (v164 == 4)
      {
        goto LABEL_234;
      }

      v189 = *v165++;
      *v166++ = v189;
LABEL_234:
      v190 = *v165++;
      *v166++ = v190;
      goto LABEL_235;
    }
  }

LABEL_94:
  if ((*(v11 + 880) & 2) != 0)
  {
    atomic_store(0, (v11 + 884));
  }

  return result;
}

uint64_t sub_100263378(uint64_t result)
{
  v1 = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[(97 * (dword_1002E0F28 ^ 0x1C ^ dword_1002E0DA8))] ^ 0xCA] ^ (97 * (dword_1002E0F28 ^ 0x1C ^ dword_1002E0DA8))) + 676);
  v2 = *(v1 - 194678166);
  v3 = *(&off_1002DD400 + (byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 - v2) ^ 0x1C))] ^ 0xA8] ^ (97 * ((dword_1002E0DA8 - v2) ^ 0x1C))) + 773);
  v4 = &v87[*(v3 - 1056958627) ^ v2];
  *(v1 - 194678166) = 1912442209 * v4 - 0x71B9CF6610DE981CLL;
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  if (!result)
  {
    return result;
  }

  v5 = (result - 16);
  v83 = (*(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * (*(v1 - 194678166) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 0xF4] ^ (97 * (*(v1 - 194678166) ^ 0x1C ^ *(v3 - 1056958627)))) - 75) - 1223854258);
  v6 = *v83 ^ *(result - 16 + (*(result - 8) & 0xFFFFFFFFFFFFFFF8));
  v86 = *(&off_1002DD400 + (((97 * ((dword_1002E0DA8 + dword_1002E0F28) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0F28) ^ 0x1C))] ^ 0x7A]) | 0x200u)) - 2062743291;
  v84 = v3;
  v85 = v1;
  if ((*(v6 + 0x370) & 2) != 0 && atomic_exchange((v6 + 884), 1u))
  {
    v7 = 1;
    while (*(v6 + 884) || atomic_exchange((v6 + 884), 1u))
    {
      if ((v7 & 0x3F) == 0)
      {
        result = (*&v86[8 * ((97 * ((*(v3 - 1056958627) + *(v1 - 194678166)) ^ 0x1C)) ^ byte_100295680[byte_10027C9F0[(97 * ((*(v3 - 1056958627) + *(v1 - 194678166)) ^ 0x1C))] ^ 0x51]) + 84136])();
        v3 = v84;
        v1 = v85;
      }

      ++v7;
    }
  }

  v8 = v5;
  v9 = v5[1];
  v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  v11 = v5 + (v9 & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 1) == 0)
  {
    v12 = *v5;
    if ((v9 & 2) == 0)
    {
      v13 = v10 + v12 + 32;
      result = (*&v86[8 * ((97 * (*(v1 - 194678166) ^ 0x1C ^ *(v3 - 1056958627))) ^ byte_100295680[byte_10027C9F0[(97 * (*(v1 - 194678166) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 0xF6]) + 84936])(v5 - v12, v13);
      if (!result)
      {
        *(v6 + 856) -= v13;
      }

      goto LABEL_149;
    }

    v8 = (v5 - v12);
    v10 += v12;
    if ((v5 - v12) != *(v6 + 32))
    {
      if (v12 <= 0xFF)
      {
        v21 = v8[2];
        v22 = v8[3];
        if (v22 == v21)
        {
          *v6 &= ~(1 << (v12 >> 3));
        }

        else
        {
          *(v21 + 24) = v22;
          *(v22 + 16) = v21;
        }

        goto LABEL_14;
      }

      v37 = v8[6];
      v38 = v8[3];
      if (v38 == v8)
      {
        v43 = v8 + 5;
        v44 = v8[5];
        if (v44 || (v43 = v8 + 4, (v44 = v8[4]) != 0))
        {
          do
          {
            do
            {
              v45 = v43;
              v38 = v44;
              v43 = v44 + 5;
              v44 = v44[5];
            }

            while (v44);
            v43 = v38 + 4;
            v44 = v38[4];
          }

          while (v44);
          *v45 = 0;
          if (!v37)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v38 = 0;
          if (!v37)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v39 = v8[2];
        *(v39 + 24) = v38;
        v38[2] = v39;
        if (!v37)
        {
          goto LABEL_14;
        }
      }

      v46 = v6 + 8 * *(v8 + 14);
      if (v8 == *(v46 + 600))
      {
        *(v46 + 600) = v38;
        if (!v38)
        {
          *(v6 + 4) &= ~(1 << *(v8 + 14));
          goto LABEL_14;
        }
      }

      else
      {
        v47 = 40;
        if (*(v37 + 32) == v8)
        {
          v47 = 32;
        }

        *(v37 + v47) = v38;
        if (!v38)
        {
          goto LABEL_14;
        }
      }

      v38[6] = v37;
      v53 = v8[4];
      if (v53)
      {
        v38[4] = v53;
        *(v53 + 48) = v38;
      }

      v54 = v8[5];
      if (v54)
      {
        v38[5] = v54;
        *(v54 + 48) = v38;
      }

      goto LABEL_14;
    }

    if ((~*(v11 + 2) & 3) == 0)
    {
      *(v6 + 8) = v10;
      *(v11 + 1) &= ~1uLL;
LABEL_46:
      v8[1] = v10 | 1;
      *(v8 + v10) = v10;
      goto LABEL_149;
    }
  }

LABEL_14:
  v14 = *(v11 + 1);
  if ((v14 & 2) != 0)
  {
    *(v11 + 1) = v14 & 0xFFFFFFFFFFFFFFFELL;
    v8[1] = v10 | 1;
    *(v8 + v10) = v10;
LABEL_21:
    v96 = v10;
    if (v10 > 0xFF)
    {
      v88 = 31;
      if (!(v10 >> 24))
      {
        v23 = (((v96 >> 8) + 1048320) >> 16) & 8;
        v24 = (v96 >> 8) << v23;
        v25 = (v24 << (((v24 + 520192) >> 16) & 4) << ((((v24 << (((v24 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v24 + 520192) >> 16) & 4 | v23 | (((v24 << (((v24 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
        v88 = ((v96 >> (v25 + 21)) & 1 | (2 * v25)) + 28;
      }

      v89 = v88;
      v26 = v6 + 8 * v88 + 600;
      *(v8 + 14) = v88;
      v90 = v26;
      v91 = v6 + 4;
      __asm { BRAA            X8, X17 }
    }

    v17 = v10 >> 3;
    v18 = v6 + 16 * (v10 >> 3) + 72;
    v19 = 1 << v17;
    if ((v19 & *v6) != 0)
    {
      v20 = *(v18 + 16);
    }

    else
    {
      *v6 |= v19;
      v20 = v18;
    }

    *(v18 + 16) = v8;
    *(v20 + 24) = v8;
    v8[2] = v20;
    v8[3] = v18;
    goto LABEL_149;
  }

  if (v11 == *(v6 + 40))
  {
    v27 = (v6 + 16);
    v28 = *(v6 + 16) + v10;
    *(v6 + 16) = v28;
    *(v6 + 40) = v8;
    v8[1] = v28 | 1;
    if (v8 == *(v6 + 32))
    {
      *(v6 + 32) = 0;
      *(v6 + 8) = 0;
    }

    if (v28 <= *(v6 + 48))
    {
      goto LABEL_149;
    }

    v29 = *(v6 + 40);
    if (!v29)
    {
      goto LABEL_149;
    }

    if (*v27 >= 0x51uLL)
    {
      v30 = ((*v27 + v83[2] - 81) / v83[2] - 1) * v83[2];
      v31 = v6 + 888;
      v32 = (v6 + 888);
      do
      {
        if (*v32 <= v29 && *v32 + v32[1] > v29)
        {
          break;
        }

        v32 = v32[2];
      }

      while (v32);
      if ((v32[3] & 9) == 1)
      {
        v33 = v32[1];
        v34 = v33 - v30;
        if (v33 >= v30)
        {
          v35 = *v32;
          v36 = *v32 + v33;
          while (v31 < v35 || v31 >= v36)
          {
            v31 = *(v31 + 16);
            if (!v31)
            {
              result = (*&v86[8 * ((97 * (*(v1 - 194678166) ^ 0x1C ^ *(v3 - 1056958627))) ^ byte_10027CCF0[byte_1002C6050[(97 * (*(v1 - 194678166) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 0x7A]) + 84992])(v35 + v34, ((*v27 + v83[2] - 81) / v83[2] - 1) * v83[2]);
              if (v30)
              {
                if (result)
                {
                  v30 = 0;
                }

                else
                {
                  v32[1] -= v30;
                  *(v6 + 856) -= v30;
                  v57 = *(v6 + 40);
                  if (((v57 + 16) & 0xF) != 0)
                  {
                    v58 = -(v57 + 16) & 0xFLL;
                  }

                  else
                  {
                    v58 = 0;
                  }

                  v59 = v57 + v58;
                  v60 = *(v6 + 16) - v30 - v58;
                  *(v6 + 40) = v59;
                  *(v6 + 16) = v60;
                  *(v59 + 8) = v60 | 1;
                  *(v59 + v60 + 8) = 80;
                  *(v6 + 48) = v83[4];
                }
              }

              v3 = v84;
              v1 = v85;
              goto LABEL_107;
            }
          }
        }
      }
    }

    v30 = 0;
LABEL_107:
    v99 = (v6 + 16);
    v98 = 1;
    v97 = v30;
    v61 = *(v6 + 904);
    if (!v61 || (*(v61 + 24) & 9) != 1 || ((result = *v61, v62 = *(v61 + 8), v63 = *(v61 + 16), v64 = *v61 + 16, (v64 & 0xF) != 0) ? (v65 = -v64 & 0xFLL) : (v65 = 0), (v100 = result + v65, v66 = *(result + v65 + 8), v101 = v66 & 0xFFFFFFFFFFFFFFF8, (v66 & 3) != 1) || v100 + v101 < result + v62 - 80))
    {
      v62 = 0;
LABEL_135:
      *(v6 + 56) = 4095;
      v78 = v98 == 1 && v97 == -v62;
      if (v78 && *v99 > *(v6 + 48))
      {
        *(v6 + 48) = -1;
      }

      goto LABEL_149;
    }

    if (v100 == *(v6 + 32))
    {
      *(v6 + 32) = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      v67 = *(v100 + 48);
      v68 = *(v100 + 24);
      if (v68 == v100)
      {
        v70 = (v100 + 40);
        v71 = *(v100 + 40);
        if (v71 || (v68 = 0, v70 = (v100 + 32), (v71 = *(v100 + 32)) != 0))
        {
          do
          {
            do
            {
              v72 = v70;
              v68 = v71;
              v70 = v71 + 5;
              v71 = v71[5];
            }

            while (v71);
            v70 = v68 + 4;
            v71 = v68[4];
          }

          while (v71);
          *v72 = 0;
        }
      }

      else
      {
        v69 = *(v100 + 16);
        *(v69 + 24) = v68;
        v68[2] = v69;
      }

      if (!v67)
      {
        goto LABEL_143;
      }

      v73 = v100;
      v74 = v6 + 8 * *(v100 + 56);
      if (v100 != *(v74 + 600))
      {
        v75 = 40;
        if (*(v67 + 32) == v100)
        {
          v75 = 32;
        }

        *(v67 + v75) = v68;
        if (!v68)
        {
          goto LABEL_143;
        }

        goto LABEL_130;
      }

      *(v74 + 600) = v68;
      if (v68)
      {
LABEL_130:
        v68[6] = v67;
        v76 = *(v100 + 32);
        if (v76)
        {
          v68[4] = v76;
          *(v76 + 48) = v68;
        }

        v77 = *(v100 + 40);
        if (v77)
        {
          v68[5] = v77;
          *(v77 + 48) = v68;
        }

        goto LABEL_143;
      }

      *(v6 + 4) &= ~(1 << *(v73 + 56));
    }

LABEL_143:
    v79 = 97 * (*(v1 - 194678166) ^ 0x1C ^ *(v3 - 1056958627));
    result = (*&v86[8 * (byte_10027CAF0[byte_1002C5E50[v79] ^ 0x5B] ^ v79) + 84824])();
    if (result)
    {
      v92 = 0;
      if (v66 >= 0x100)
      {
        v92 = 31;
        if (!(v66 >> 24))
        {
          v80 = (((v66 >> 8) + 1048320) >> 16) & 8;
          v81 = (v66 >> 8) << v80;
          v82 = (v81 << (((v81 + 520192) >> 16) & 4) << ((((v81 << (((v81 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v81 + 520192) >> 16) & 4 | v80 | (((v81 << (((v81 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
          v92 = ((v101 >> (v82 + 21)) & 1 | (2 * v82)) + 28;
        }
      }

      v93 = v92;
      v94 = v6 + 8 * v92 + 600;
      *(v100 + 56) = v92;
      v95 = v6 + 4;
      __asm { BRAA            X8, X17 }
    }

    *(v6 + 856) -= v62;
    *(v6 + 904) = v63;
    goto LABEL_135;
  }

  if (v11 == *(v6 + 32))
  {
    v10 += *(v6 + 8);
    *(v6 + 8) = v10;
    *(v6 + 32) = v8;
    goto LABEL_46;
  }

  v10 += v14 & 0xFFFFFFFFFFFFFFF8;
  if (v14 <= 0xFF)
  {
    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v15 == v16)
    {
      *v6 &= ~(1 << (v14 >> 3));
    }

    else
    {
      *(v16 + 24) = v15;
      *(v15 + 16) = v16;
    }

    goto LABEL_93;
  }

  v40 = *(v11 + 6);
  v41 = *(v11 + 3);
  if (v41 == v11)
  {
    v48 = v11 + 40;
    v49 = *(v11 + 5);
    if (v49 || (v48 = v11 + 32, (v49 = *(v11 + 4)) != 0))
    {
      do
      {
        do
        {
          v50 = v48;
          v41 = v49;
          v48 = v49 + 5;
          v49 = v49[5];
        }

        while (v49);
        v48 = v41 + 32;
        v49 = *(v41 + 4);
      }

      while (v49);
      *v50 = 0;
      if (!v40)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v41 = 0;
      if (!v40)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v42 = *(v11 + 2);
    *(v42 + 24) = v41;
    *(v41 + 2) = v42;
    if (!v40)
    {
      goto LABEL_93;
    }
  }

  v51 = v6 + 8 * *(v11 + 14);
  if (v11 == *(v51 + 600))
  {
    *(v51 + 600) = v41;
    if (!v41)
    {
      *(v6 + 4) &= ~(1 << *(v11 + 14));
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  v52 = 40;
  if (*(v40 + 32) == v11)
  {
    v52 = 32;
  }

  *(v40 + v52) = v41;
  if (v41)
  {
LABEL_87:
    *(v41 + 6) = v40;
    v55 = *(v11 + 4);
    if (v55)
    {
      *(v41 + 4) = v55;
      *(v55 + 48) = v41;
    }

    v56 = *(v11 + 5);
    if (v56)
    {
      *(v41 + 5) = v56;
      *(v56 + 48) = v41;
    }
  }

LABEL_93:
  v8[1] = v10 | 1;
  *(v8 + v10) = v10;
  if (v8 != *(v6 + 32))
  {
    goto LABEL_21;
  }

  *(v6 + 8) = v10;
LABEL_149:
  if ((*(v6 + 880) & 2) != 0)
  {
    atomic_store(0, (v6 + 884));
  }

  return result;
}

void sub_100264384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, unsigned int a29, void *a30)
{
  v31 = **(v30 - 152);
  *(v30 - 144) = v31;
  *(v30 - 140) = 1 << a29;
  if (((1 << a29) & v31) != 0)
  {
    v32 = *a30;
    if (a29 == 31)
    {
      LOBYTE(v33) = 0;
    }

    else
    {
      v33 = 57 - (a29 >> 1);
    }

    v34 = *(v30 - 96) << v33;
    while (1)
    {
      v35 = v32;
      if ((v32[1] & 0xFFFFFFFFFFFFFFF8) == *(v30 - 96))
      {
        break;
      }

      v36 = &v32[v34 >> 63];
      v38 = v36[4];
      v37 = v36 + 4;
      v32 = v38;
      v34 *= 2;
      if (!v38)
      {
        v39 = *(v30 - 104);
        *v37 = v39;
        goto LABEL_10;
      }
    }

    v40 = v32[2];
    v41 = *(v30 - 104);
    *(v40 + 24) = v41;
    v35[2] = v41;
    v41[2] = v40;
    v41[3] = v35;
    v41[6] = 0;
  }

  else
  {
    **(v30 - 152) = *(v30 - 140) | *(v30 - 144);
    v35 = a30;
    v39 = *(v30 - 104);
    *a30 = v39;
LABEL_10:
    v39[6] = v35;
    v39[2] = v39;
    v39[3] = v39;
  }

  JUMPOUT(0x100263EF8);
}

void *sub_100264450(void *result)
{
  v1 = *(&off_1002DD400 + ((97 * (dword_1002E0F40 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_10027CCF0[byte_1002C6050[(97 * (dword_1002E0F40 ^ 0x1C ^ dword_1002E0DA8))] ^ 0xDE]) + 197);
  v2 = *(v1 - 1600627594);
  v3 = *(&off_1002DD400 + (byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 + v2) ^ 0x1C))] ^ 0xD4] ^ (97 * ((dword_1002E0DA8 + v2) ^ 0x1C))) + 669);
  v4 = (*(v3 - 1056958627) ^ v2) - &v10;
  *(v1 - 1600627594) = 1912442209 * v4 - 0x71B9CF6610DE981CLL;
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  if (result)
  {
    v5 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0F40) ^ 0x1C)) ^ byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 - dword_1002E0F40) ^ 0x1C))] ^ 0xD4]) + 325) - 2062743291;
    v6 = result;
    (*&v5[8 * (byte_10027CCF0[byte_1002C6050[(97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C))] ^ 0xDE] ^ (97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C))) + 84560])(*result);
    (*&v5[8 * ((97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C))] ^ 7]) + 83344])(v6[2]);
    (*&v5[8 * (byte_100295680[byte_10027C9F0[(97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C))] ^ 0x51] ^ (97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C))) + 83120])(v6[4]);
    (*&v5[8 * (byte_1002C5F50[byte_1002A9990[(97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C))] ^ 0x80] ^ (97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C))) + 83840])(v6[6]);
    (*&v5[8 * ((97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627))) ^ byte_1002C5F50[byte_1002A9990[(97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 0xF6]) + 84064])(v6[8]);
    v7 = 97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C);
    (*&v5[8 * (v7 ^ byte_10027CCF0[byte_1002C6050[v7] ^ 0xDE]) + 84560])(v6[10]);
    (*&v5[8 * (byte_100295580[byte_10027C8F0[(97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 0xD6] ^ (97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627)))) + 83784])(v6[12]);
    (*&v5[8 * ((97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C)) ^ byte_100295780[byte_10027CBF0[(97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C))] ^ 0xD4]) + 83176])(v6[14]);
    (*&v5[8 * ((97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C)) ^ byte_100295680[byte_10027C9F0[(97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C))] ^ 0xF4]) + 83232])(v6[16]);
    (*&v5[8 * ((97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C)) ^ byte_100295780[byte_10027CBF0[(97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C))] ^ 0xD4]) + 83176])(v6[18]);
    (*&v5[8 * ((97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C))] ^ 0x80]) + 83840])(v6[20]);
    (*&v5[8 * ((97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627))) ^ byte_10027CCF0[byte_1002C6050[(97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 7]) + 83344])(v6[22]);
    (*&v5[8 * ((97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((*(v3 - 1056958627) + *(v1 - 1600627594)) ^ 0x1C))] ^ 0xD6]) + 83784])(v6[24]);
    (*&v5[8 * ((97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627))) ^ byte_10027CCF0[byte_1002C6050[(97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 0x7A]) + 84672])(v6[26]);
    (*&v5[8 * ((97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C))] ^ 0xD6]) + 83784])(v6[28]);
    v8 = 97 * ((*(v3 - 1056958627) - *(v1 - 1600627594)) ^ 0x1C);
    (*&v5[8 * (byte_10027CAF0[byte_1002C5E50[v8] ^ 0x5B] ^ v8) + 84504])(v6[30]);
    v9 = *&v5[8 * ((97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627))) ^ byte_100295780[byte_10027CBF0[(97 * (*(v1 - 1600627594) ^ 0x1C ^ *(v3 - 1056958627)))] ^ 0xD4]) + 83176];

    return v9(v6);
  }

  return result;
}

uint64_t sub_100264C0C(uint64_t result, unsigned __int8 *a2, int a3, char a4)
{
  v5 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0B58) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0B58) ^ 0x1C))] ^ 7]) + 535);
  v6 = *(v5 - 1154313438);
  v7 = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * ((dword_1002E0DA8 - v6) ^ 0x1C))] ^ 0x51] ^ (97 * ((dword_1002E0DA8 - v6) ^ 0x1C))) + 662);
  v8 = &v14[*(v7 - 1056958627) ^ v6];
  *(v5 - 1154313438) = 1912442209 * v8 + 0x73F3BA17ADCB0E9CLL;
  *(v7 - 1056958627) = 1912442209 * (v8 ^ 0x71B9CF6610DE981CLL);
  if (a3)
  {
    v10 = a3;
    v11 = result;
    do
    {
      v12 = *a2++;
      v13 = 97 * (*(v5 - 1154313438) ^ 0x1C ^ *(v7 - 1056958627));
      result = (*(*(&off_1002DD400 + ((97 * (dword_1002E0B58 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295580[byte_10027C8F0[(97 * (dword_1002E0B58 ^ 0x1C ^ dword_1002E0DA8))] ^ 0xD6]) + 401) + 8 * (byte_100295580[byte_10027C8F0[v13] ^ 0x45] ^ v13) - 2062659075))(*(*v11 + 16 * (a4 & 0xF)), 0, *(*v11 + 16 * (a4 & 0xF) + 8), v12);
      ++a4;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_100264E60(uint64_t result, unsigned int a2, int a3, char a4)
{
  v4 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0DB0) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0DB0) ^ 0x1C))] ^ 0xCA]) - 18);
  v5 = *(v4 - 1212475278);
  v6 = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 - v5) ^ 0x1C))] ^ 0xDE] ^ (97 * ((dword_1002E0DA8 - v5) ^ 0x1C))) + 842);
  v7 = v5 ^ &v17 ^ *(v6 - 1056958627);
  *(v4 - 1212475278) = (1912442209 * v7) ^ 0x71B9CF6610DE981CLL;
  *(v6 - 1056958627) = 1912442209 * (v7 ^ 0x71B9CF6610DE981CLL);
  if (a3)
  {
    v8 = &v16 ^ a2;
    v9 = v8 ^ a4;
    v10 = v8 + a4;
    if ((a4 & 1) == 0)
    {
      v9 = v10;
    }

    if (*(result + a2) == 1)
    {
      v15 = v9;
    }

    else if (*(result + a2))
    {
      v15 = 0;
    }

    else
    {
      v15 = v9;
    }

    v14 = 2 * a2;
    v11 = (a3 - 1);
    v12 = *(&off_1002DD400 + ((97 * (dword_1002E0DB0 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295580[byte_10027C8F0[(97 * (dword_1002E0DB0 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x92]) + 263) - 2062743291;
    v13 = result;
    (*&v12[8 * ((97 * (*(v4 - 1212475278) ^ 0x1C ^ *(v6 - 1056958627))) ^ byte_10027CCF0[byte_1002C6050[(97 * (*(v4 - 1212475278) ^ 0x1C ^ *(v6 - 1056958627)))] ^ 0xCA]) + 84160])();
    return (*&v12[8 * ((97 * (*(v4 - 1212475278) ^ 0x1C ^ *(v6 - 1056958627))) ^ byte_10027CCF0[byte_1002C6050[(97 * (*(v4 - 1212475278) ^ 0x1C ^ *(v6 - 1056958627)))] ^ 7]) + 83608])(v13, (v14 + 2), v11, v15);
  }

  else
  {
    *(result + a2) = a4;
  }

  return result;
}

uint64_t sub_10026510C(uint64_t result, _BYTE *a2, int a3, char a4)
{
  v4 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0DD0) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 + dword_1002E0DD0) ^ 0x1C))] ^ 0xF6]) + 739);
  v5 = *(v4 - 708632750);
  v6 = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[(97 * (v5 ^ dword_1002E0DA8 ^ 0x1C))] ^ 0x7A] ^ (97 * (v5 ^ dword_1002E0DA8 ^ 0x1C))) + 856);
  v7 = v5 - &v15 + *(v6 - 1056958627);
  *(v4 - 708632750) = 1912442209 * (v7 - 0x71B9CF6610DE981CLL);
  *(v6 - 1056958627) = 1912442209 * (v7 ^ 0x71B9CF6610DE981CLL);
  if (a3)
  {
    v12 = result;
    do
    {
      v13 = a3;
      v14 = a2;
      v9 = result + 16 * (a4 & 0xF);
      v10 = v6;
      v11 = (*(*(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0DD0) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 - dword_1002E0DD0) ^ 0x1C))] ^ 0x80]) + 408) + 8 * ((97 * (*(v4 - 708632750) ^ 0x1C ^ *(v6 - 1056958627))) ^ byte_10027CCF0[byte_1002C6050[(97 * (*(v4 - 708632750) ^ 0x1C ^ *(v6 - 1056958627)))] ^ 0xDE]) - 2062657187))(*v9, 0, *(v9 + 8));
      v6 = v10;
      *v14 = v11;
      a2 = v14 + 1;
      result = v12;
      ++a4;
      a3 = v13 - 1;
    }

    while (v13 != 1);
  }

  return result;
}

uint64_t sub_100265338(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0DC8) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((dword_1002E0DA8 - dword_1002E0DC8) ^ 0x1C))] ^ 0xD6]) - 59);
  v4 = *(v3 - 1035467591);
  v5 = *(&off_1002DD400 + (byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 + v4) ^ 0x1C))] ^ 0xA8] ^ (97 * ((dword_1002E0DA8 + v4) ^ 0x1C))) + 773);
  v6 = *(v5 - 1056958627) - v4 - &v18;
  *(v3 - 1035467591) = 1912442209 * v6 + 0x73F3BA17ADCB0E9CLL;
  *(v5 - 1056958627) = 1912442209 * (v6 ^ 0x71B9CF6610DE981CLL);
  if (a3)
  {
    v17 = 2 * a2;
    v7 = (a3 - 1);
    v8 = 97 * (*(v3 - 1035467591) ^ 0x1C ^ *(v5 - 1056958627));
    v9 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0DC8) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((dword_1002E0DA8 - dword_1002E0DC8) ^ 0x1C))] ^ 0x92]) + 263) - 2062743291;
    v15 = (*&v9[8 * (byte_10027CAF0[byte_1002C5E50[v8] ^ 0x84] ^ v8) + 84832])(a1, (2 * a2) | 1, v7);
    v11 = 97 * ((*(v5 - 1056958627) - *(v3 - 1035467591)) ^ 0x1C);
    v12 = (*&v9[8 * (byte_10027CCF0[byte_1002C6050[v11] ^ 7] ^ v11) + 84888])(a1, (v17 + 2), v7);
    v13 = a2;
    if (*(a1 + a2) == 1)
    {
      return (v12 + v15);
    }

    else if (!*(a1 + a2))
    {
      return (v12 ^ v15);
    }
  }

  else
  {
    return *(a1 + a2);
  }

  return v13;
}

uint64_t sub_1002655E4(uint64_t *a1)
{
  v1 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0F38) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 - dword_1002E0F38) ^ 0x1C))] ^ 0xDE]) + 68);
  v2 = *(v1 - 1709361387);
  v3 = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + v2) ^ 0x1C))] ^ 7] ^ (97 * ((dword_1002E0DA8 + v2) ^ 0x1C))) + 690);
  v4 = &v24[1] + *(v3 - 1056958627) - v2;
  *(v1 - 1709361387) = 1912442209 * v4 - 0x71B9CF6610DE981CLL;
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  v5 = *(&off_1002DD400 + (((97 * ((dword_1002E0DA8 - dword_1002E0F38) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 - dword_1002E0F38) ^ 0x1C))] ^ 0x7A]) | 0x200u));
  v24[0] = *(v5 - 2062658659) ^ a1;
  v6 = v5 - 2062743291;
  v7 = (*(v5 - 2062743291 + 8 * (((97 * ((*(v3 - 1056958627) - *(v1 - 1709361387)) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((*(v3 - 1056958627) - *(v1 - 1709361387)) ^ 0x1C))] ^ 0xDE]) + 10625)))(256);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    *a1 = v7;
    v10 = v7 + 2;
    for (i = 1; ; ++i)
    {
      v12 = v10 + v9 + v24[0] * v24;
      v24[0] = v12;
      v13 = (v8 + v9);
      *(v8 + v9 + 8) = v12 & 3;
      v14 = (v10 + v9) & 3;
      v15 = (*(v6 + 8 * (((97 * ((*(v3 - 1056958627) + *(v1 - 1709361387)) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((*(v3 - 1056958627) + *(v1 - 1709361387)) ^ 0x1C))] ^ 0xDE]) + 10625)))(~(-2 << ((v8 + 2 + v9) & 3)));
      if (!v15)
      {
        break;
      }

      if (v14)
      {
        *v15 = ((v12 * v12) ^ 1) & 1;
        if (v14 != 1)
        {
          v16 = (((v12 * v12) ^ 1) * ((v12 * v12) ^ 1)) ^ 1;
          v15[1] = v16 & 1;
          v17 = (v16 * v16) ^ 1;
          v15[2] = v17 & 1;
          if (v14 != 2)
          {
            v18 = (v17 & 1) == 0;
            v15[3] = v18;
            v15[4] = !v18;
            v15[5] = v18;
            v15[6] = !v18;
          }
        }
      }

      *(v8 + v9) = v15;
      v9 += 16;
      if (v9 == 256)
      {
        return 0;
      }
    }

    *v13 = 0;
    do
    {
      if (*v13)
      {
        v20 = 97 * (*(v1 - 1709361387) ^ 0x1C ^ *(v3 - 1056958627));
        (*(v6 + 8 * ((byte_100295580[byte_10027C8F0[v20] ^ 0x92] ^ v20) + 10335)))();
      }

      v13 -= 2;
    }

    while (i-- > 1);
  }

  v21 = 97 * (*(v1 - 1709361387) ^ 0x1C ^ *(v3 - 1056958627));
  (*(v6 + 8 * ((byte_100295680[byte_10027C9F0[v21] ^ 0xF4] ^ v21) + 10404)))(v8);
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_100265A50(uint64_t result)
{
  v1 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0F58) ^ 0x1C)) ^ byte_1002C5F50[byte_1002A9990[(97 * ((dword_1002E0DA8 - dword_1002E0F58) ^ 0x1C))] ^ 0xF6]) + 501);
  v2 = *(v1 - 2091190746);
  v3 = *(&off_1002DD400 + (byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 - v2) ^ 0x1C))] ^ 7] ^ (97 * ((dword_1002E0DA8 - v2) ^ 0x1C))) + 690);
  v4 = *(v3 - 1056958627) - v2 - &v6;
  *(v1 - 2091190746) = 1912442209 * v4 + 0x73F3BA17ADCB0E9CLL;
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  if (result)
  {
    v5 = 1912442209 * ((*(v3 - 1056958627) - *(v1 - 2091190746)) ^ 0x10DE981C);
    return (*(*(&off_1002DD400 + (((97 * ((dword_1002E0DA8 - dword_1002E0F58) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 - dword_1002E0F58) ^ 0x1C))] ^ 0x7A]) | 0x200u)) + 8 * (byte_1002C5F50[byte_1002A9990[v5] ^ 0x80] ^ v5) - 2062659451))();
  }

  return result;
}

void *sub_100265C04(void *result, char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *result | 1;
    v5 = *result + v4 * a4;
    do
    {
      v6 = *a2++;
      *(*result + (v5 & 0xF)) = v6;
      v5 += v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

double sub_100265C38(unint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a1 | 1;
    v5 = a1 + a4 * (a1 | 1);
    if (a3 < 8 || a1 > 1 || a3 - 1 > 0xF || (~(a4 + a1) & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - ((a4 + a1) & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      v8 = (a1 + (v5 & 0xF));
      for (i = a2 + 2; ; i += 2)
      {
        v10 = v8[1];
        *(i - 1) = *v8;
        *i = v10;
      }
    }

    v6 = a3 & 0x18;
    result = *(a1 + (v5 & 0xF));
    *a2 = result;
    if (v6 != 8)
    {
      result = *(a1 + (v5 & 0xF ^ 8));
      a2[1] = result;
    }

    if (v6 != a3)
    {
      v5 += v6 * v4;
      a2 = (a2 + v6);
      a3 -= v6;
      do
      {
LABEL_3:
        *a2 = *(a1 + (v5 & 0xF));
        a2 = (a2 + 1);
        v5 += v4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_100265D10(uint64_t *a1)
{
  v2 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0D38) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0D38) ^ 0x1C))] ^ 0x7A]) + 354);
  v3 = *(v2 - 1663211995);
  v4 = *(&off_1002DD400 + (byte_10027CAF0[byte_1002C5E50[(97 * ((dword_1002E0DA8 + v3) ^ 0x1C))] ^ 2] ^ (97 * ((dword_1002E0DA8 + v3) ^ 0x1C))) + 697);
  v5 = 1912442209 * ((*(v4 - 1056958627) - v3) ^ &v9 ^ 0x71B9CF6610DE981CLL);
  *(v2 - 1663211995) = v5;
  *(v4 - 1056958627) = v5;
  v6 = (*(*(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0D38) ^ 0x1C)) ^ byte_10027CAF0[byte_1002C5E50[(97 * ((dword_1002E0DA8 + dword_1002E0D38) ^ 0x1C))] ^ 2]) + 353) + 8 * ((97 * (*(v2 - 1663211995) ^ 0x1C ^ v5)) ^ byte_10027CAF0[byte_1002C5E50[(97 * (*(v2 - 1663211995) ^ 0x1C ^ v5))] ^ 0x5B]) - 2062658347))(16);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v7;
  return result;
}

void *sub_100265EC8(void *result)
{
  v1 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0D00) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((dword_1002E0DA8 - dword_1002E0D00) ^ 0x1C))] ^ 0x45]) + 654);
  v2 = *(v1 - 1833896723);
  v3 = *(&off_1002DD400 + (byte_100295780[byte_10027CBF0[(97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))] ^ 0xA8] ^ (97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))) + 773);
  v4 = &v7[v2 + *(v3 - 1056958627)];
  *(v1 - 1833896723) = 1912442209 * v4 + 0x71B9CF6610DE981CLL;
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  if (result)
  {
    do
    {
      v5 = *result;
      v6 = 97 * ((*(v3 - 1056958627) - *(v1 - 1833896723)) ^ 0x1C);
      (*(*(&off_1002DD400 + ((97 * (dword_1002E0D00 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295580[byte_10027C8F0[(97 * (dword_1002E0D00 ^ 0x1C ^ dword_1002E0DA8))] ^ 0xD6]) + 401) + 8 * (byte_100295580[byte_10027C8F0[v6] ^ 0x45] ^ v6) - 2062659339))();
      result = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1002660D8(uint64_t *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      v5 = *v5;
      v6 = v5[1];
      if (v6)
      {
        v7 = v6 == a4;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (!v6)
    {
      v5[1] = a4;
    }

    *(v5 + 16) = v4;
    ++a2;
    ++a4;
  }

  return result;
}

uint64_t *sub_10026611C(uint64_t *result, _BYTE *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = result[1];
    if (v4)
    {
      v5 = v4 == a4;
    }

    else
    {
      v5 = 1;
    }

    v6 = result;
    if (!v5)
    {
      v6 = result;
      do
      {
        v6 = *v6;
        v7 = v6[1];
        if (v7)
        {
          v8 = v7 == a4;
        }

        else
        {
          v8 = 1;
        }
      }

      while (!v8);
    }

    *a2++ = *(v6 + 16);
    ++a4;
  }

  return result;
}

uint64_t sub_100266168(uint64_t *a1)
{
  v1 = (*(&off_1002DD400 + ((97 * (dword_1002E0CF0 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_10027CAF0[byte_1002C5E50[(97 * (dword_1002E0CF0 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x84]) + 215) - 852136951);
  v2 = (*(&off_1002DD400 + ((97 * (*v1 ^ dword_1002E0DA8 ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * (*v1 ^ dword_1002E0DA8 ^ 0x1C))] ^ 0x92]) + 607) - 1056958627);
  v3 = &v10[*v2 - *v1];
  v4 = 1912442209 * v3 + 0x73F3BA17ADCB0E9CLL;
  v5 = 1912442209 * (v3 ^ 0x71B9CF6610DE981CLL);
  *v1 = v4;
  *v2 = v5;
  LOBYTE(v5) = 97 * ((v5 + *v1) ^ 0x1C);
  v6 = *(&off_1002DD400 + ((97 * (dword_1002E0CF0 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_10027CCF0[byte_1002C6050[(97 * (dword_1002E0CF0 ^ 0x1C ^ dword_1002E0DA8))] ^ 7]) + 346) - 2062743291;
  v7 = (*&v6[8 * (byte_100295780[byte_10027CBF0[v5] ^ 0xA8] ^ v5) + 84448])(24);
  if (v7)
  {
    *a1 = v7;
    __asm { BRAA            X8, X17 }
  }

  (*&v6[8 * ((97 * ((*v2 + *v1) ^ 0x1C)) ^ byte_100295680[byte_10027C9F0[(97 * ((*v2 + *v1) ^ 0x1C))] ^ 0xF4]) + 84624])(*a1);
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_100267340(uint64_t result)
{
  v1 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0D30) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 + dword_1002E0D30) ^ 0x1C))] ^ 0xDE]) + 718);
  v2 = *(v1 - 1993835935);
  v3 = *(&off_1002DD400 + (byte_10027CAF0[byte_1002C5E50[(97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))] ^ 2] ^ (97 * (v2 ^ dword_1002E0DA8 ^ 0x1C))) + 697);
  v4 = (*(v3 - 1056958627) ^ v2) - &v6;
  *(v1 - 1993835935) = 1912442209 * (v4 - 0x71B9CF6610DE981CLL);
  *(v3 - 1056958627) = 1912442209 * (v4 ^ 0x71B9CF6610DE981CLL);
  if (result)
  {
    v5 = 1912442209 * ((*(v3 - 1056958627) + *(v1 - 1993835935)) ^ 0x10DE981C);
    return (*(*(&off_1002DD400 + ((97 * (dword_1002E0D30 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295580[byte_10027C8F0[(97 * (dword_1002E0D30 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x45]) + 422) + 8 * (byte_10027CCF0[byte_1002C6050[v5] ^ 0xCA] ^ v5) - 2062659395))();
  }

  return result;
}

void *sub_1002674F8(void *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(*result + (a4++ & 0xF)) = v4;
  }

  return result;
}

double sub_10026751C(uint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 < 8 || a3 - 1 > 0xF || (~a4 & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - (a4 & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      for (i = a2 + 2; ; i += 2)
      {
        v7 = (a1 + (a4 & 0xF));
        v8 = v7[1];
        *(i - 1) = *v7;
        *i = v8;
        a4 += 32;
      }
    }

    v4 = a3 & 0x18;
    result = *(a1 + (a4 & 0xF));
    *a2 = result;
    if (v4 != 8)
    {
      result = *(a1 + ((a4 + 8) & 0xF));
      a2[1] = result;
    }

    if (v4 != a3)
    {
      a4 += v4;
      a2 = (a2 + v4);
      a3 -= v4;
      do
      {
LABEL_3:
        *a2 = *(a1 + (a4 & 0xF));
        a2 = (a2 + 1);
        ++a4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_1002675E4(uint64_t *a1)
{
  v2 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0F48) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((dword_1002E0DA8 + dword_1002E0F48) ^ 0x1C))] ^ 0x92]) - 120);
  v3 = *(v2 - 903975834);
  v4 = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * (v3 ^ dword_1002E0DA8 ^ 0x1C))] ^ 0xF4] ^ (97 * (v3 ^ dword_1002E0DA8 ^ 0x1C))) + 676);
  v5 = 1912442209 * ((*(v4 - 1056958627) - v3) ^ &v9 ^ 0x71B9CF6610DE981CLL);
  *(v2 - 903975834) = v5;
  *(v4 - 1056958627) = v5;
  LOBYTE(v4) = 97 * ((v5 + *(v2 - 903975834)) ^ 0x1C);
  v6 = (*(*(&off_1002DD400 + (((97 * (dword_1002E0F48 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_10027CCF0[byte_1002C6050[(97 * (dword_1002E0F48 ^ 0x1C ^ dword_1002E0DA8))] ^ 0x7A]) | 0x200u)) + 8 * (byte_10027CAF0[byte_1002C5E50[v4] ^ 2] ^ v4) - 2062659451))(16);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1002677B8()
{
  v0 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0D08) ^ 0x1C)) ^ byte_10027CCF0[byte_1002C6050[(97 * ((dword_1002E0DA8 - dword_1002E0D08) ^ 0x1C))] ^ 0x7A]) + 149);
  v1 = *(v0 - 2069066246);
  v2 = *(&off_1002DD400 + (byte_100295680[byte_10027C9F0[(97 * ((dword_1002E0DA8 - v1) ^ 0x1C))] ^ 0xF6] ^ (97 * ((dword_1002E0DA8 - v1) ^ 0x1C))) + 849);
  v3 = (*(v2 - 1056958627) ^ v1) - &v7;
  v4 = 1912442209 * v3 + 0x71B9CF6610DE981CLL;
  v5 = 1912442209 * (v3 ^ 0x71B9CF6610DE981CLL);
  *(v0 - 2069066246) = v4;
  *(v2 - 1056958627) = v5;
  LODWORD(v2) = 1912442209 * (*(v0 - 2069066246) ^ 0x10DE981C ^ v5);
  return (*(*(&off_1002DD400 + ((97 * (dword_1002E0D08 ^ 0x1C ^ dword_1002E0DA8)) ^ byte_100295680[byte_10027C9F0[(97 * (dword_1002E0D08 ^ 0x1C ^ dword_1002E0DA8))] ^ 0xF4]) + 332) + 8 * (byte_10027CCF0[byte_1002C6050[v2] ^ 7] ^ v2) - 2062659507))();
}

uint64_t sub_10026795C()
{
  v0 = *(&off_1002DD400 + ((97 * ((dword_1002E0DA8 + dword_1002E0D28) ^ 0x1C)) ^ byte_100295680[byte_10027C9F0[(97 * ((dword_1002E0DA8 + dword_1002E0D28) ^ 0x1C))] ^ 0xF4]) + 374);
  v1 = *(v0 - 429214227);
  v2 = *(&off_1002DD400 + (byte_100295780[byte_10027CBF0[(97 * ((dword_1002E0DA8 - v1) ^ 0x1C))] ^ 0xD4] ^ (97 * ((dword_1002E0DA8 - v1) ^ 0x1C))) + 669);
  v3 = 1912442209 * ((*(v2 - 1056958627) + v1) ^ &v5 ^ 0x71B9CF6610DE981CLL);
  *(v0 - 429214227) = v3;
  *(v2 - 1056958627) = v3;
  LODWORD(v2) = 1912442209 * (*(v0 - 429214227) ^ 0x10DE981C ^ v3);
  return (*(*(&off_1002DD400 + ((97 * ((dword_1002E0DA8 - dword_1002E0D28) ^ 0x1C)) ^ byte_100295580[byte_10027C8F0[(97 * ((dword_1002E0DA8 - dword_1002E0D28) ^ 0x1C))] ^ 0x92]) + 263) + 8 * (byte_10027CAF0[byte_1002C5E50[v2] ^ 0x5B] ^ v2) - 2062658787))();
}