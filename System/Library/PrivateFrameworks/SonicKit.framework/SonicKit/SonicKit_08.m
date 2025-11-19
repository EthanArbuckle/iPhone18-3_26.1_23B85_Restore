void sub_1D4D4EC00(uint64_t a1@<X8>)
{
  v9 = (((2 * a1) & 0x2F5EF6B7FFFF567CLL) + (a1 ^ 0xD7AF7B5BFFFFAB3ELL) + v1);
  v10 = v9[v4 ^ 0x285084A400004309] << 24;
  v9 += 0x285084A4000054C3;
  v11 = v10 | (*v9 << 16) | (v9[1] << 8);
  v12 = (v11 | v9[2]) + 197499219 - 2 * ((v11 | v9[2]) & v5 ^ v9[2] & 0xC);
  v13 = ((2 * (a1 + 4)) & 0x797EFB7FB6F3FE6ELL) + ((a1 + 4) ^ 0x7CBF7DBFDB79FF37) + v1 - 0x7CBF7DBFDB79FF37;
  v14 = (_byteswap_ushort(*v13) - 2 * (_byteswap_ushort(*v13) & 0x3E9E ^ *(v13 + 1) & 0xA) + 16023);
  switch(v14)
  {
    case 28242:
      STACK[0x490] = v1 + v3;
      STACK[0x548] = v2;
      v15 = v12 != ((((v7 + 192710707) & 0xF4837BCD) + 197492010) ^ (v7 - 665889252) & 0x27B093BD);
      (*(v8 + 8 * ((4 * v15) | (16 * v15) | (v7 - 2976))))();
      break;
    case 47636:
      (*(v8 + 8 * ((12772 * (v6 == 298 * (v7 ^ 0x17C3) + 197496843)) ^ (v7 - 1157))))();
      break;
    case 43494:
      (*(v8 + 8 * ((35 * ((((v7 - 342083699) ^ (v6 == 197499223)) & 1) == 0)) ^ (v7 - 2753))))();
      break;
    default:
      sub_1D4D3CB14();
      break;
  }
}

void sub_1D4D4EE58(uint64_t a1@<X8>)
{
  v7 = *(v4 + 120);
  v8 = *(v4 + 100);
  v9 = 914963389 * ((1673253698 - ((v5 - 232) ^ 0x5D50D186 | 0x63BBD342) + ((v5 - 232) ^ 0x5D50D186 | 0x9C442CBD)) ^ 0xEDE84C40);
  *(v5 - 200) = v1;
  *(v5 - 224) = a1;
  *(v5 - 184) = a1;
  *(v5 - 168) = v4 + 104;
  *(v5 - 232) = 1491323843 - v9;
  *(v5 - 176) = v9 + v2 + 2912;
  *(v5 - 208) = v9 + (v7 ^ 0x6FFF3FAB) + ((2 * v7) & 0xDFFE7F56) - 1700136576;
  *(v5 - 216) = (((v3 ^ 0x3C19926E) - 1008308846) ^ ((v3 ^ 0xEBDC32B3) + 337890637) ^ ((v3 ^ 0xDC00398E) + 603965042)) - v9 + 1996137537;
  *(v5 - 192) = (((19 * (v2 ^ 0x61B)) ^ v8 ^ 0xBDFCB889) + ((2 * v8) & 0x7BF97E36) + 1654908670) ^ v9;
  (*(v6 + 8 * (v2 + 8009)))(v5 - 232);
  JUMPOUT(0x1D4D27074);
}

uint64_t sub_1D4D4EFDC()
{
  v1 = STACK[0x848];
  STACK[0x838] = STACK[0x848];
  return (*(((v0 - 1426011080) & 0x54FF1AEA) + 8 * ((((v0 - 1426011080) & 0x54FF1AEA ^ 0xA41) * (v1 == 0)) ^ v0)))();
}

uint64_t sub_1D4D4F3AC()
{
  v4 = *(v2 + 8);
  STACK[0x530] = *(v3 + 8 * v1);
  return (*(v3 + 8 * ((((((v1 + 295288433) & 0xEE6663FE) + 804579327) & 0xD00AF777 ^ 0x3B8) * (v4 == 0)) ^ (v1 + 295288433) & 0xEE6663FE)))();
}

uint64_t sub_1D4D50DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3 == -1768145036 || v3 == 792772863 || v3 == -1651519320)
  {
    JUMPOUT(0x1D4D50EA0);
  }

  return (*(v5 + 8 * ((v4 - 7327) ^ (1816 * ((v6 & 8) == 0)))))(a1, a2, a3, v7 - 224);
}

uint64_t sub_1D4D50FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2 + (v4 + v3 + 1317) - 1368;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((220 * (v7 != 0)) ^ (v5 + v3 + 2559))))();
}

uint64_t sub_1D4D50FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v139 = STACK[0x2E0];
  v64 = *STACK[0x370] + 6;
  v65 = __ROR8__(v64 & 0xFFFFFFFFFFFFFFF8, 8);
  v66 = ((0x6AF7234D0CC131D4 - v65) & 0x435B154A729201BFLL) + v65 - 0x6AF7234D0CC131D5 - ((v65 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v67 = __ROR8__(v66 ^ 0xAB257711D84E66DLL, 8);
  v66 ^= 0xA2F4B2E684729731;
  v68 = (((v67 + v66) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v67 + v66) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xF5A2F1B9B5D0B209;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x5963B6C555D97F1FLL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ a8;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ a7;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8) + v77;
  v79 = __ROR8__((*STACK[0x370] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = (0x6AF7234D0CC131D4 - v79) & 0xC2A16714FA488FC8 | (v79 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v81 = __ROR8__(v80 ^ 0x8B48252F955E681ALL, 8);
  v80 ^= 0x230EC0B80CA81946uLL;
  v82 = (((2 * v78) | 0x36A4398A31861B6ALL) - v78 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v83 = (((2 * (v81 + v80)) & 0xAC7FF88AB7D467A0) - (v81 + v80) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v84 = v83 ^ __ROR8__(v80, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - ((2 * (v85 + v84)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = *(a64 + 8 * (a63 - 1906));
  *v64 = (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v77, 61))) ^ 0xAB3042D228875C41) >> (8 * (v64 & 7u))) ^ HIBYTE(LODWORD(STACK[0x2E0])) ^ 0xDD;
  v89 = (__ROR8__(v86, 8) + v87) ^ 0x5963B6C555D97F1FLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ a8;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) | 0x63B77BB044F1F226) - (v93 + v92) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x1A2AEBE44253AF03;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  *(v64 + 1) = (((v98 + v97 - ((2 * (v98 + v97)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v64 + 1) & 7))) ^ BYTE2(v139) ^ 0x60;
  v99 = __ROR8__((v64 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v100 = ((2 * v99 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v99 + 0x6BC5C09CD998FDFLL;
  v101 = __ROR8__(v100 ^ 0xD22C7A87AFCEB9D8, 8);
  v102 = v100 ^ v134;
  v103 = (v101 + v102) ^ 0xE49D77DF873DBF7ELL;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xF5A2F1B9B5D0B209;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x5963B6C555D97F1FLL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = ((v135 | (2 * (v109 + v108))) - (v109 + v108) + v136) ^ v137;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ a7;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x1A2AEBE44253AF03;
  *(v64 + 2) = (((__ROR8__(v114, 8) + (v114 ^ __ROR8__(v113, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v64 + 2) & 7))) ^ BYTE1(v139) ^ 0xF8;
  v115 = __ROR8__((v64 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = (0xAF7234D0CC131D4 - v115) & a1 | (v115 - 0x6AF7234D0CC131D5) & v138;
  v117 = v116 ^ v132;
  v118 = v116 ^ v133;
  v119 = (__ROR8__(v117, 8) + v118) ^ 0xE49D77DF873DBF7ELL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xF5A2F1B9B5D0B209;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = ((a3 | (2 * (v123 + v122))) - (v123 + v122) + a5) ^ a4;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ a8;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ a7;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0x1A2AEBE44253AF03;
  *(v64 + 3) = v139 ^ a6 ^ (((__ROR8__(v130, 8) + (v130 ^ __ROR8__(v129, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v64 + 3) & 7)));
  return v88();
}

uint64_t sub_1D4D5102C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = LODWORD(STACK[0x390]);
  if (v7 == 17168)
  {
    return (*(STACK[0x3E8] + 8 * ((v6 - 3364) ^ (5409 * (a3 == 197499223)))))();
  }

  if (v7 == 20706 || (v9 = v6, v7 == 33980))
  {
    STACK[0x7B8] = a6;
    v9 = v6;
  }

  v10 = *STACK[0x588];
  STACK[0x860] = 0;
  STACK[0x7B0] = 0;
  return (*(STACK[0x3E8] + 8 * (((v10 == 0) * ((v9 - 4420) ^ 0x314)) ^ (v9 - 722))))();
}

uint64_t sub_1D4D510EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  v19 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v20 = vdupq_n_s64(0x38uLL);
  v21 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v22 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v23 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v24 = vdupq_n_s64(v8);
  v25 = vdupq_n_s64(v7);
  v26 = vdupq_n_s64(v9);
  v27 = vdupq_n_s64(v15);
  v28 = vdupq_n_s64(v10);
  v29 = vdupq_n_s64(v6);
  v30 = vdupq_n_s64(v11);
  v31 = vdupq_n_s64(v17);
  v32 = vdupq_n_s64(a6);
  v33 = vdupq_n_s64(v18);
  v34 = vdupq_n_s64(v16);
  v35.i64[0] = v14 + v12 - v13 - 7;
  v35.i64[1] = v14 + v12 - v13 - 8;
  v36.i64[0] = v14 + v12 - v13 - 5;
  v36.i64[1] = v14 + v12 - v13 - 6;
  v37.i64[0] = v14 + v12 - v13 - 1;
  v37.i64[1] = v14 + v12 - v13 - 2;
  v38.i64[0] = v14 + v12 - v13 + ((a5 - 84) ^ 0xFFFFFFFFFFFFE59BLL);
  v38.i64[1] = v14 + v12 - v13 - 4;
  v39 = vandq_s8(v38, v19);
  v40 = vandq_s8(v37, v19);
  v41 = vandq_s8(v36, v19);
  v42 = vandq_s8(v35, v19);
  v43 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v47 = vaddq_s64(v44, v21);
  v48 = vaddq_s64(v43, v21);
  v49 = veorq_s8(v48, v22);
  v50 = veorq_s8(v47, v22);
  v51 = veorq_s8(v47, v23);
  v52 = veorq_s8(v48, v23);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v53, v24), vorrq_s8(v53, v25)), v25), v26);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, v24), vorrq_s8(v54, v25)), v25), v26);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v57), v27);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58), v27);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, v28), vorrq_s8(v65, v29)), v29), v30);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v28), vorrq_s8(v66, v29)), v29), v30);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v69), v31);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70), v31);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v32);
  v79 = veorq_s8(v77, v32);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v33);
  v86 = veorq_s8(v84, v33);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v92 = vaddq_s64(v45, v21);
  v125.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v91, v89), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v20)));
  v125.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v90, v88), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v20)));
  v93 = veorq_s8(v92, v22);
  v94 = veorq_s8(v92, v23);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v24), vorrq_s8(v95, v25)), v25), v26);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v27);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, v28), vorrq_s8(v100, v29)), v29), v30);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v31);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v32);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v33);
  v108 = vaddq_s64(v46, v21);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v20)));
  v109 = veorq_s8(v108, v22);
  v110 = veorq_s8(v108, v23);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v24), vorrq_s8(v111, v25)), v25), v26);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v27);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v28), vorrq_s8(v116, v29)), v29), v30);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v31);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v32);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v33);
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v20)));
  *(v12 + a1 - 8 - v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v14 + v12 - v13 - 8)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v125, xmmword_1D4E31470)));
  return (*(STACK[0x3E8] + 8 * ((220 * (8 - (v12 & 0xFFFFFFF8) != -v13)) ^ (a5 - 84))))();
}

void sub_1D4D51634(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1D4C7D4C0);
}

void sub_1D4D5167C()
{
  STACK[0x468] = 0;
  STACK[0x700] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x1D4BC9A88);
}

uint64_t sub_1D4D51820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, uint64_t a14)
{
  v19 = 2 * &a12;
  a14 = **(v15 + 512);
  a12 = 1710126949 * (((v19 | 0xDCEB5768) - &a12 + 294278220) ^ 0xDC6EF024) + 8752;
  (*(v14 + 77304))(&a12);
  a13 = (v18 + 4047) ^ ((((v19 | 0xA5E6003C) - &a12 + 755826658) ^ 0x3862701B) * v17);
  v20 = (*(v14 + 77112))(&a12);
  return (*(v14 + 8 * ((9 * (a12 == (v16 ^ 0xFCF))) ^ 0xC71)))(v20);
}

uint64_t sub_1D4D51930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, unsigned int a24)
{
  v28 = ((&a19 & 0xF7BEDF96 | ~(&a19 | 0xF7BEDF96)) ^ 0x5028F30B) * v26;
  a21 = a12;
  a22 = &a15;
  a20 = v28 - 560830745;
  a23 = -654855621 - v28;
  a24 = v28 + v24 + 1674576121;
  v29 = (*(v27 + 8 * (v24 ^ 0x2E39u)))(&a19);
  return (*(v27 + 8 * (((a19 == v25 + ((v24 - 952114683) & 0x1E5D) + 1262) * (((v24 - 2991) | 0x1100) + 1049)) ^ v24)))(v29);
}

uint64_t sub_1D4D51A00()
{
  LOWORD(STACK[0x88E]) = v1;
  LODWORD(STACK[0x380]) = v1;
  return (*(STACK[0x3E8] + 8 * (v2 - 4690)))();
}

uint64_t sub_1D4D51A1C(uint64_t a1)
{
  v5 = (v2 - 932770614) & 0x3798F37A;
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB38] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x13B0F1C9) - 330363337) ^ ((v1 ^ 0x6186374E) - 1636185934) ^ ((v1 ^ 0x79F35FD4) - 2045999007 + ((v5 - 7622) | 0x1241))) + 197499229;
  v6 = (*(v3 + 8 * (v5 ^ 0x6F2u)))();
  *(a1 + 24) = v6;
  return (*(v3 + 8 * ((v6 == 0) ^ v5)))();
}

uint64_t sub_1D4D51B6C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v3 + 8 * ((((v1 ^ 0xBC58326 ^ (3674 * (v2 ^ 0x2306) - 1267545405) ^ 0xB472FD02) == 0) * ((3674 * (v2 ^ 0x2306) - 1267545405) & 0x4B8D3BAF ^ 0x232B)) ^ (3674 * (v2 ^ 0x2306)))))();
}

uint64_t sub_1D4D51C00()
{
  v2 = *(STACK[0x860] + 24);
  STACK[0x4F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 + 1675 + (v0 ^ 0x18B3) - 10119)) ^ v0)))();
}

void sub_1D4D51E24(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1D4C49CB8);
}

uint64_t sub_1D4D51E48@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  STACK[0x5E0] = v58 + (((v60 - 2254) | 0xA01u) ^ 0x1AB7);
  STACK[0x640] = v57 + 80;
  STACK[0x818] = a1;
  STACK[0x618] = 0;
  STACK[0x568] = 0;
  STACK[0x748] = 0;
  LODWORD(STACK[0x7B4]) = 197499219;
  LODWORD(STACK[0x524]) = 0;
  STACK[0x830] = 0;
  STACK[0x660] = 0;
  LODWORD(STACK[0x5F4]) = 197499219;
  v62 = (*(v61 + 8 * (v60 + 3116)))();
  return (*(a57 + 8 * (v60 ^ (215 * (v59 != 0)))))(v62, 16215976);
}

uint64_t sub_1D4D52234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = (v5 ^ v3) + v4;
  *(a1 + v8) = *(a2 + v8);
  return (*(v7 + 8 * (((v8 != 0) * v6) ^ v2)))();
}

uint64_t sub_1D4D5225C()
{
  v2 = *(STACK[0x608] + 24);
  STACK[0x780] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (((v0 - 6412) | 2) ^ 0xA78)) ^ v0)))();
}

uint64_t sub_1D4D52510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v65 = STACK[0x868];
  v66 = STACK[0x7A8];
  v67 = 1824088897 * ((((v64 - 232) | 0xBF6B7031) + (~(v64 - 232) | 0x40948FCE)) ^ 0xE702A352);
  *(v64 - 224) = STACK[0xA58];
  *(v64 - 200) = v66;
  *(v64 - 192) = v65;
  *(v64 - 208) = 1461241532 - v67;
  *(v64 - 216) = v67 - 1304320635;
  *(v64 - 212) = 744417810 - v67 + a63;
  v68 = (*(a64 + 8 * (a63 ^ 0x2FAF)))(v64 - 232);
  v69 = *(v64 - 232);
  LODWORD(STACK[0x8F8]) = v69;
  return (*(a64 + 8 * (((v69 == 16257999) * ((((a63 + 5558) | 0x40D) - 8453) ^ 0x363)) ^ (a63 + 1141))))(v68);
}

uint64_t sub_1D4D52600@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  a6 = a3;
  a7 = a1;
  a5 = (v9 - 2819) ^ (33731311 * ((((2 * &a4) | 0xEDAD54B2) - &a4 + 153703847) ^ 0xCF20607A));
  v10 = (*(v8 + 8 * (v9 + 3530)))(&a4);
  return (*(v8 + 8 * (((a4 != v7) * ((v9 - 2671) ^ 0xD0D)) ^ v9)))(v10);
}

uint64_t sub_1D4D52690@<X0>(unsigned int a1@<W8>)
{
  v3 = (a1 - 960650307) & 0x39424BE7;
  LODWORD(STACK[0x300]) = v3;
  return (*(v2 + 8 * ((187 * (((v3 + ((a1 - 4596) ^ 0xFFFFFE6F)) & v1) != 0)) ^ a1)))();
}

uint64_t sub_1D4D526F4()
{
  v5 = v2 - 1;
  *(v3 + v5) = v1 + 7 + *(v4 + v5) - ((2 * *(v4 + v5)) & 0x78) - 123;
  return (*(v0 + 8 * (v1 | (4 * (v5 != 0)))))();
}

uint64_t sub_1D4D52760(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, unint64_t a8)
{
  v14 = (v11 + 4 * v10);
  v15 = ((v8 + a6) & a7 ^ a8) + v10;
  v16 = *(v11 + 4 * v15);
  v17 = v14[397] ^ ((v16 & 0x7FFFFFFE | v9 & 0x80000000) >> 1);
  *v14 = (v17 + a1 - (a2 & (2 * v17))) ^ *(v13 + 4 * (v16 & 1));
  return (*(v12 + 8 * ((14 * (v15 == 227)) ^ v8)))();
}

uint64_t sub_1D4D52860()
{
  STACK[0xAC8] = v1;
  v3 = STACK[0x700];
  STACK[0xAD0] = STACK[0x700];
  return (*(v2 + 8 * ((6928 * (v1 - v3 > (((v0 ^ 0x1E62u) - 5643) ^ 0x1C9uLL))) ^ v0)))();
}

uint64_t sub_1D4D528B4@<X0>(uint64_t a1@<X8>)
{
  v8 = 956911519 * ((31255041 - ((v6 - 232) ^ 0x965DDD9A | 0x1DCEA01) + ((v6 - 232) ^ 0x965DDD9A | 0xFE2315FE)) ^ 0x82EFB861);
  *(v6 - 216) = ((v2 ^ 0xAFFAFDEF) + 2145375226 + ((v2 << ((v4 - 120) & 0xDA ^ 0x4B)) & 0x18403144)) ^ v8;
  *(v6 - 192) = v8 ^ 0x5A8CE82;
  *(v6 - 188) = (v4 + 305) ^ v8;
  *(v6 - 232) = v5;
  *(v6 - 224) = a1;
  *(v6 - 208) = v3;
  *(v6 - 200) = ((v1 ^ 0x3FF7FDFC) - 1057067040 + ((2 * v1) & 0x7FEFFBF8)) ^ v8;
  v9 = (*(v7 + 8 * (v4 ^ 0x2D49)))(v6 - 232);
  return (STACK[0x3D0])(v9);
}

uint64_t sub_1D4D529D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, int a33, int a34, int a35, int a36)
{
  *v37 = v37[623] + (~((v38 | ~(v36 - 348)) & (v36 - 348 - v38) | v38 & ~(v36 - 348)) >> 31);
  v43 = 1710126949 * ((0x9557F33CB065C338 - ((v42 - 152) | 0x9557F33CB065C338) + a32) ^ 0x2AE681A7D816757);
  *(v40 + 24) = (v41 + 1) - v43;
  *(v42 - 152) = a36 ^ v43;
  *(v42 - 148) = v43;
  *(v42 - 128) = a34 ^ v43;
  *(v42 - 144) = a36 - v43 - 22;
  *(v42 - 140) = a35 - v43;
  *(v40 + 40) = v43 ^ 3;
  v44 = (*(v39 + 8 * a31))(v42 - 152);
  return (*(v39 + 8 * *(v42 - 124)))(v44);
}

uint64_t sub_1D4D52A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = (v52 + 10) & 0xF;
  LODWORD(STACK[0x48C]) = 270786423 - v55;
  return (*(v54 + 8 * ((478 * ((16 - v55) + v52 < 0xFFFFFFF6)) ^ v53)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1D4D52E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((82496230 - (&a12 | 0x4EACAE6) + (&a12 | 0xFB153519)) ^ 0xC90E6E89);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((1846 * (a13 == 16257999)) ^ 0x1017u)))(v14);
}

uint64_t sub_1D4D52F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = v67 ^ 0x31;
  v70 = v68 == 1;
  v71 = v65 + v68 - 1;
  v72 = v68 + a9;
  v73 = v68 + a9 + 9;
  v74 = __ROR8__(v71 & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((2 * (v74 - 0x6AF7234D0CC131D5)) | 0x19C69BDE09677532) - (v74 - 0x6AF7234D0CC131D5) + 0x731CB210FB4C4567;
  v76 = (v69 - 1796739804) & 0x6B180EDA ^ 0xC50A0FD46BA55701 ^ v75;
  v75 ^= 0x6D4CEA43F2532C17uLL;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__((((2 * (v77 + v75)) | 0xE7FEEAD13AAEBCF2) - (v77 + v75) + 0xC008A9762A8A187) ^ 0x176202B71A6AE107, 8);
  v79 = (((2 * (v77 + v75)) | 0xE7FEEAD13AAEBCF2) - (v77 + v75) + 0xC008A9762A8A187) ^ 0x176202B71A6AE107 ^ __ROR8__(v75, 61);
  v80 = ((v66 & (2 * (v78 + v79))) - (v78 + v79) + a1) ^ a2;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x5963B6C555D97F1FLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x61459D2AF01F24F7;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x64C31C027084DE6CLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (v88 + v87 - (a3 & (2 * (v88 + v87))) + a4) ^ a5;
  v90 = ((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v87, 61))) ^ 0xAB3042D228875C41) >> (8 * (v71 & 7u));
  v91 = __ROR8__(v73 & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = (v91 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v93 = (__ROR8__((v91 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v92) ^ 0xE49D77DF873DBF7ELL;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0xF5A2F1B9B5D0B209;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0x5963B6C555D97F1FLL;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x61459D2AF01F24F7;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x64C31C027084DE6CLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x1A2AEBE44253AF03;
  v104 = __ROR8__(v103, 8) + (v103 ^ __ROR8__(v102, 61));
  *(v72 + 9) = v90 ^ (((v104 - (a6 & (2 * v104)) + a7) ^ a8) >> (8 * (v73 & 7u))) ^ *v71;
  v105 = !v70;
  return (*(a65 + 8 * ((49 * v105) ^ v69)))();
}

uint64_t sub_1D4D5332C()
{
  v6 = *v4;
  *(v3 - 1) = *(v4 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1D4D534F0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x67C]) = v1;
  STACK[0x4C8] = STACK[0x668];
  return (*(v2 + 8 * ((3314 * (v1 == (((a1 ^ 0x50B) + 1985612020) & 0x89A5FDC9 ^ 0xF802C7))) ^ ((a1 ^ 0x50B) + 1805))))();
}

uint64_t sub_1D4D53718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x5D8] + 24);
  STACK[0x7A0] = v5;
  return (*(a4 + 8 * (((v5 == 0) * ((v4 - 2631) ^ 0x14F7)) | v4)))();
}

uint64_t sub_1D4D537DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v4 + 1869960751) & 0x4A26CFBF) + 7908)) ^ (v4 + v2))))();
}

uint64_t sub_1D4D538F8@<X0>(int a1@<W8>)
{
  STACK[0x998] = v1;
  v2 = STACK[0x7B8];
  STACK[0x9A0] = STACK[0x7B8];
  return (*(STACK[0x3E8] + 8 * ((140 * (v1 - v2 > ((a1 - 1309) ^ 0x1641u) - 5212)) | a1)))();
}

uint64_t sub_1D4D53978@<X0>(unint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  v58 = LODWORD(STACK[0x330]);
  if (v58 == 17168)
  {
    return (*(v57 + 8 * ((a57 + 836) ^ (8027 * (a2 == 197499223)))))();
  }

  if (v58 == 20706 || (v60 = a57, v58 == 33980))
  {
    STACK[0x638] = a1;
    v60 = a57;
  }

  v61 = *STACK[0x550];
  v62 = STACK[0x8A0];
  STACK[0x400] = STACK[0x8A0];
  STACK[0x508] = 0;
  STACK[0x410] = 0;
  if (v61)
  {
    v63 = v62 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = v63;
  return (*(v57 + 8 * ((v64 * (((v60 - 2617) | 0xE6) ^ 0x8D)) ^ (v60 - 534))))();
}

uint64_t sub_1D4D53A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v9 = (v6 + 1307867319) & 0xB20B7B7F;
  *a6 = v12 >> (((v6 - 73) & 0x7F) - 121);
  v10 = 1185 * (v9 ^ 0xB7D);
  v17 = (v9 + 5404) ^ ((&v15 ^ 0x5869D362) * v7);
  v16 = v14;
  (*(v8 + 8 * (v9 ^ 0x2EF2)))(&v15);
  v16 = v13;
  v17 = (v10 + 4791) ^ (1824088897 * ((&v15 & 0x459FF876 | ~(&v15 | 0x459FF876)) ^ 0xE209D4EB));
  (*(v8 + 8 * (v10 ^ 0x286F)))(&v15);
  return 0;
}

uint64_t sub_1D4D53B80()
{
  *(v6 - 224) = v3 ^ (914963389 * ((v6 - 232) ^ 0x2CFCB17B));
  v7 = (*(v0 + 8 * v5))(v6 - 232);
  v8 = STACK[0x3E8];
  *(v1 + 8) = *(v6 - 232) ^ v4;
  return (*(v8 + 8 * ((v2 + 1340) | 8)))(v7);
}

void sub_1D4D53CE8()
{
  LODWORD(STACK[0x330]) = 197499223;
  STACK[0x370] = STACK[0x778] + 24;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x9A4]) ^ 0xD6A561FA;
  v0 = LOWORD(STACK[0x99E]);
  LODWORD(STACK[0x320]) = v0;
  LODWORD(STACK[0x300]) = v0 ^ 0x4CF9;
  STACK[0x360] = STACK[0x440] + 24;
  v1 = LOWORD(STACK[0xA7E]);
  LODWORD(STACK[0x310]) = v1;
  LODWORD(STACK[0x2F0]) = v1 ^ 0xFFFFA60A;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0xA84]) ^ 0xD6A561FA;
  STACK[0x350] = STACK[0x4C0] + 24;
  STACK[0x340] = STACK[0x7B8] + 24;
  v2 = STACK[0x9A0];
  LODWORD(STACK[0x2C0]) = STACK[0x9A0];
  LODWORD(STACK[0x2E0]) = v2 ^ 0xD6A561FA;
  v3 = STACK[0xA80];
  LODWORD(STACK[0x2B0]) = STACK[0xA80];
  LODWORD(STACK[0x2D0]) = v3 ^ 0xD6A561FA;
  JUMPOUT(0x1D4D1A2DCLL);
}

uint64_t sub_1D4D53D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v25 = v16 - 1;
  v26 = (v14 + v25);
  v27 = __ROR8__((v14 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = a7 - ((v27 + a8) | v22) - ((((a9 + v10) | a6) + 0x6AF7234D0CC131D4 - v27 - 3350) | v21);
  v30 = __ROR8__(v29 ^ a5, 8);
  v31 = v29 ^ v19;
  v32 = (v30 + v31) ^ v24;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__(((v23 & (2 * (v34 + v33))) - (v34 + v33) + v12) ^ v9, 8);
  v36 = ((v23 & (2 * (v34 + v33))) - (v34 + v33) + v12) ^ v9 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36) ^ v20;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a4;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((v41 + v40) & v11 ^ a3) + ((v41 + v40) ^ v18) - (((v41 + v40) ^ v18) & v11)) ^ v15;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x1A2AEBE44253AF03;
  *(a1 + v25 + a2) = (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ v17) >> (8 * (v26 & 7u))) ^ *v26;
  return (*(STACK[0x3E8] + 8 * (((v25 == 0) * v13) ^ a9)))();
}

uint64_t sub_1D4D53F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v26 = ((((2 * &a17) | 0xEE80E9C0) - &a17 + 146770720) ^ 0xAF29A782) * v25;
  a18 = v26 + 739404086;
  a21 = -654855621 - v26;
  a22 = v26 + v24 + 1674571964;
  a19 = a12;
  a20 = &a14;
  v27 = (*(v23 + 8 * (v24 + 2458)))(&a17);
  return (*(v23 + 8 * ((14422 * (a17 == (v22 ^ 0x288) + 16253710)) ^ v24)))(v27);
}

void sub_1D4D540F8(_BYTE *a1@<X8>)
{
  *(v1 + 72) = 32;
  *(v1 + 39) = a1[55];
  *(v1 + 38) = a1[54];
  *(v1 + 37) = a1[53];
  *(v1 + 36) = a1[52];
  *(v1 + 35) = a1[51];
  *(v1 + 34) = a1[50];
  *(v1 + 33) = a1[49];
  *(v1 + 32) = a1[48];
  *(v1 + 31) = a1[47];
  *(v1 + 30) = a1[46];
  *(v1 + 29) = a1[45];
  *(v1 + 28) = a1[44];
  *(v1 + 27) = a1[43];
  *(v1 + 26) = a1[42];
  *(v1 + 25) = a1[41];
  *(v1 + 24) = a1[40];
  *(v1 + 23) = a1[39];
  *(v1 + 22) = a1[38];
  *(v1 + 21) = a1[37];
  *(v1 + 20) = a1[36];
  *(v1 + 19) = a1[35];
  *(v1 + 18) = a1[34];
  *(v1 + 17) = a1[33];
  *(v1 + 16) = a1[32];
  *(v1 + 15) = a1[31];
  *(v1 + 14) = a1[30];
  *(v1 + 13) = a1[29];
  *(v1 + 12) = a1[28];
  *(v1 + 11) = a1[27];
  *(v1 + 10) = a1[26];
  *(v1 + 9) = a1[25];
  *(v1 + 8) = a1[24];
  JUMPOUT(0x1D4C50390);
}

uint64_t sub_1D4D5424C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, unsigned int *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  *a15 = a30 + 1;
  v33 = *a16;
  *(v32 - 112) = a12 ^ 1;
  *(v31 + 16) = a11;
  v34 = a1 - 1566343548 + a12;
  *(v32 - 152) = (a1 + 1745252473) ^ a12;
  *(v32 - 136) = v34;
  *(v32 - 128) = ((a1 - 1566343548) ^ 0x18) + a12;
  *(v32 - 124) = v34 - 111;
  *(v31 + 40) = v33 ^ a12;
  v35 = (*(v30 + 8 * (a1 ^ 0x261A)))(v32 - 152);
  return (*(v30 + 8 * *(v32 - 132)))(v35);
}

uint64_t sub_1D4D542E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = ((&a14 + 831182668 - 2 * (&a14 & 0x318AD74C)) ^ 0x69E3042E) * v19;
  a15 = v22 - 2048112905;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574986;
  a16 = a11;
  a17 = &a10;
  v23 = (*(v20 + 8 * (v21 + 5480)))(&a14);
  return (*(v20 + 8 * ((2942 * (a14 == ((v21 - 3836) | 0x1008) + 16253603)) ^ v21)))(v23);
}

uint64_t sub_1D4D543A4()
{
  v5 = *(v1 + 4 * (v2 - 1));
  *(v1 + 4 * v2) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v1 + 4 * v2)) - v2;
  v6 = 2048652491 * ((v4 - 0x51FF6CCB51695EE2 - 2 * ((v4 - 168) & 0xAE009334AE96A1C6)) ^ 0x7AE41CB81F2736C3);
  v7 = v0 + 1309009960 + v6;
  v8 = v4 - 224;
  *(v8 + 88) = (v2 + 1) ^ v6;
  *(v4 - 152) = v7;
  *(v4 - 168) = (v0 + 1745243958) ^ v6;
  *(v4 - 128) = v6 ^ 1;
  *(v4 - 144) = ((v0 + 1309009960) ^ 1) + v6;
  *(v4 - 140) = v7 + 338;
  *(v8 + 64) = 623 - v6;
  v9 = (*(v3 + 8 * (v0 + 195)))(v4 - 168);
  return (*(v3 + 8 * *(v4 - 148)))(v9);
}

uint64_t sub_1D4D544E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((&a12 - 1660343191 - 2 * (&a12 & 0x9D092C69)) ^ 0xAF1277F9);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((62 * (a13 == 16257999)) ^ 0x99Cu)))(v14);
}

uint64_t sub_1D4D545AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 8 * (v7 ^ 0x38F6u)))();
  v11 = *(v9 - 256);
  *(v8 + 24) = 0;
  return sub_1D4C1D600(v10, v12, v13, v14, v15, v16, v11);
}

void sub_1D4D545DC(unint64_t a1)
{
  STACK[0x958] = a1;
  v1 = STACK[0x798];
  *(v1 + 112) = 197499219;
  *(v1 + 116) = 197499219;
  *(v1 + 108) = 0;
  *(v1 + 104) = 0;
  JUMPOUT(0x1D4CB208CLL);
}

uint64_t sub_1D4D545FC@<X0>(int a1@<W8>)
{
  STACK[0xA78] = v1;
  v3 = STACK[0x648];
  STACK[0xA80] = STACK[0x648];
  return (*(v2 + 8 * ((35 * (((v1 - v3 > 9) ^ ((a1 ^ 0x11) - 110)) & 1)) ^ a1)))();
}

uint64_t sub_1D4D546C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = a9 + v9;
  v21 = a9 + v9 + 9;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8) + ((v10 + 595) ^ 0x9508DCB2F33EC461);
  v23 = v22 ^ 0x49E9423B6F16E7D2;
  v22 ^= 0xE1AFA7ACF6E0968ELL;
  v24 = (__ROR8__(v23, 8) + v22) ^ v17;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = ((v16 & (2 * (v26 + v25))) - (v26 + v25) + a5) ^ a6;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((v29 + v28 - (a7 & (2 * (v29 + v28))) + a8) ^ v15, 8);
  v31 = (v29 + v28 - (a7 & (2 * (v29 + v28))) + a8) ^ v15 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ v18;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) | a2) - ((v34 + v33) | a3) + a3) ^ a4;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x1A2AEBE44253AF03;
  v38 = a9 - 1;
  v39 = (__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ v12;
  *(v20 + 9) = *(v11 + v38) ^ ((((v39 | v14) - (v39 | a1) + a1) ^ v13) >> (8 * (v21 & 7u))) ^ 0x3C;
  return (*(v19 + 8 * ((3163 * (v38 == 0)) ^ v10)))();
}

uint64_t sub_1D4D5480C@<X0>(int a1@<W8>)
{
  result = (*(v1 + 8 * (a1 + 6970)))();
  *(v2 + 8) = v3;
  return result;
}

uint64_t sub_1D4D54870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((2 * (&a14 & 0x744A5920) - &a14 + 196454104) ^ 0x53DC75BA) * v21;
  a15 = v23 - 606002271;
  a16 = a11;
  a17 = &a12;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674578093;
  v24 = (*(v20 + 8 * (v22 ^ 0x2675)))(&a14);
  return (*(v20 + 8 * (((a14 == (v22 ^ 0xA06 ^ (v19 + 1637))) * (v22 + 7829)) ^ v22)))(v24);
}

uint64_t sub_1D4D54934()
{
  v7 = v5 + 8342;
  v8 = *STACK[0x4B0];
  STACK[0x698] = *(v6 + 8 * v5);
  v0 = (v5 + 1339518800) & 0xB0288DE7;
  v1 = (v5 + 8342) ^ 0x2E69;
  STACK[0x6F0] = &STACK[0x524];
  STACK[0x5B0] = 0;
  STACK[0x7C0] = 0;
  if (v8)
  {
    v2 = &STACK[0x524] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(v6 + 8 * ((v3 * (v1 + v0 - 2813)) ^ v7)))();
}

uint64_t sub_1D4D5495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 - 224) = (v5 - 2140801331) ^ (914963389 * ((((v6 - 232) | 0xA07CD5F5) - (v6 - 232) + ((v6 - 232) & 0x5F832A08)) ^ 0x8C80648E));
  v7 = (*(a4 + 8 * (v5 ^ 0x31C3)))(v6 - 232);
  v8 = STACK[0x3E8];
  *v4 = *(v6 - 232) ^ 0xAC;
  return (*(v8 + 8 * (v5 - 2034)))(v7);
}

uint64_t sub_1D4D54A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = 956911519 * (v21 ^ 0x453675DCEA917005);
  LODWORD(a15) = v22 ^ 0x3FE;
  a16 = v19 - ((2 * v19) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v22;
  a17 = a13;
  (*(v20 + 76792))(&a15);
  a17 = a13;
  a15 = v18;
  LODWORD(a16) = 1824088897 * ((((2 * v21) | 0x53A5509E) - v21 + 1445812145) ^ 0xF1BB7B2D) + 2305;
  (*(v20 + 76720))(&a15);
  v23 = 1875091903 * ((2 * (v21 & 0x2B1B8A8) - v21 - 45201577) ^ 0xCB3BC4D4);
  HIDWORD(a15) = ((2 * v17) & 0x76FB6FF4) + (v17 ^ 0x3B7DB7FA) - 459342160 + v23;
  LODWORD(a16) = v23 + 7724;
  a17 = a13;
  v24 = (*(v20 + 77160))(&a15);
  return (*(v20 + 8 * ((4945 * (a15 == 16257999)) ^ 0x9DBu)))(v24);
}

uint64_t sub_1D4D54D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v18 + 2199) ^ (33731311 * (&a13 ^ 0x39F6CA23));
  a15 = a9;
  a16 = &a11;
  (*(v16 + 8 * (v18 + 8548)))(&a13);
  LODWORD(a16) = v18 - 2008441969 * ((((&a13 | 0x9095E7C8) ^ 0xFFFFFFFE) - (~&a13 | 0x6F6A1837)) ^ 0x27F34C39) + 4632;
  a15 = a9;
  v19 = (*(v16 + 8 * (v18 + 8598)))(&a13);
  return (*(v16 + 8 * (((a13 == v17) * ((v18 - 1139925067) & 0x43F1DFE7 ^ 0x25F5)) ^ v18)))(v19);
}

uint64_t sub_1D4D54ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = 1824088897 * (((&a16 | 0x35430471) + (~&a16 | 0xCABCFB8E)) ^ 0x6D2AD712);
  a17 = v23 + 525715759;
  a20 = -654855621 - v23;
  a21 = v23 + 1674579114;
  a18 = a12;
  a19 = &a10;
  v24 = (*(v22 + 76864))(&a16);
  return (*(v22 + 8 * ((7565 * (a16 == v21)) ^ 0x60Au)))(v24);
}

uint64_t sub_1D4D54FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v85 = a8 - 956;
  v86 = STACK[0x210];
  v87 = v82;
  v8 = *(v79 + 24) + v76 - 0x5EA5347A8335DC62;
  v9 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = ((0x6AF7234D0CC131D4 - v9) & a1) + v9 - 0x6AF7234D0CC131D5 - ((v9 - 0x6AF7234D0CC131D5) & a1);
  v11 = __ROR8__(v10 ^ 0xAB257711D84E66DLL, 8);
  v10 ^= 0xA2F4B2E684729731;
  v12 = (((v11 + v10) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v11 + v10) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ v81;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x5963B6C555D97F1FLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v80;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v84;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = __ROR8__((v8 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (0x6AF7234D0CC131D4 - v23) & 0xC2A16714FA488FC8 | (v23 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v25 = __ROR8__(v24 ^ 0x8B48252F955E681ALL, 8);
  v24 ^= 0x230EC0B80CA81946uLL;
  v26 = (((2 * (v25 + v24)) & 0xAC7FF88AB7D467A0) - (v25 + v24) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = *(*(v83 - 256) + 8 * v85);
  v30 = (v28 + v27 - ((2 * (v28 + v27)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v31 = v30 ^ __ROR8__(v27, 61);
  *v8 = (((__ROR8__((((2 * (v21 + v22)) | 0x36A4398A31861B6ALL) - (v21 + v22) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((((2 * (v21 + v22)) | 0x36A4398A31861B6ALL) - (v21 + v22) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v22, 61))) ^ 0xAB3042D228875C41) >> (8 * (v8 & 7u))) ^ HIBYTE(LODWORD(STACK[0x210])) ^ 0xB;
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x5963B6C555D97F1FLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0x63B77BB044F1F226) - (v36 + v35) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v87;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  *(v8 + 1) = (((v41 + v40 - ((2 * (v41 + v40)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v8 + 1) & 7))) ^ BYTE2(v86) ^ 0xC5;
  v42 = __ROR8__((v8 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = ((2 * v42 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v42 + 0x6BC5C09CD998FDFLL;
  v44 = v43 ^ 0xD22C7A87AFCEB9D8;
  v43 ^= 0x7A6A9F103638C884uLL;
  v45 = (__ROR8__(v44, 8) + v43) ^ 0xE49D77DF873DBF7ELL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v81;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x5963B6C555D97F1FLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = __ROR8__((((2 * (v51 + v50)) | 0x316A40512FDE1242) - (v51 + v50) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6, 8);
  v53 = (((2 * (v51 + v50)) | 0x316A40512FDE1242) - (v51 + v50) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6 ^ __ROR8__(v50, 61);
  v54 = (v52 + v53) ^ v84;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v87;
  *(v8 + 2) = (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v8 + 2) & 7))) ^ BYTE1(v86) ^ 0x99;
  v57 = __ROR8__((v8 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v58 = (0xAF7234D0CC131D4 - v57) & a3 | (v57 - 0x6AF7234D0CC131D5) & v75;
  v59 = __ROR8__(v58 ^ a5, 8);
  v60 = v58 ^ v77;
  v61 = (v59 + v60) ^ 0xE49D77DF873DBF7ELL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ v81;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = __ROR8__(((v74 | (2 * (v65 + v64))) - (v65 + v64) + a2) ^ v78, 8);
  v67 = ((v74 | (2 * (v65 + v64))) - (v65 + v64) + a2) ^ v78 ^ __ROR8__(v64, 61);
  v68 = (v66 + v67) ^ 0x61459D2AF01F24F7;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ v84;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ v87;
  *(v8 + 3) = v86 ^ a6 ^ (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v8 + 3) & 7)));
  return v29();
}

uint64_t sub_1D4D55008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = *(STACK[0x588] + 24);
  STACK[0x890] = v72;
  return (*(v71 + 8 * (((v72 == 0) * (((a71 + 2698) ^ 0x359E) - 14397 + ((a71 - 6015) | 0x2103))) ^ (a71 + 2698))))();
}

uint64_t sub_1D4D55060@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8, int a9, char a10, uint64_t a11, int a12, uint64_t a13, char a14, unsigned int a15, uint64_t a16, int *a17, unsigned int a18, char *a19)
{
  a19 = &a7;
  a18 = (v19 + 1169) ^ (1710126949 * ((1196828650 - (&a14 | 0x475627EA) + (&a14 | 0xB8A9D815)) ^ 0x8AB28385));
  a16 = a1;
  a17 = &a10;
  (*(v21 + 8 * (v19 + 7418)))(&a14);
  a16 = a13;
  a17 = &a12;
  a15 = (v19 + 1063) ^ ((((&a14 | 0xF588F6C) - &a14 + (&a14 & 0xF0A77090)) ^ 0x36AE454F) * v20);
  v22 = (*(v21 + 8 * (v19 + 7412)))(&a14);
  return (*(v21 + 8 * ((56 * (((v19 - 24) ^ (a12 == (((v19 - 2131) | 0x8C4) ^ 0x8E6))) & 1)) ^ (v19 + 6633))))(v22);
}

uint64_t sub_1D4D55188@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) + 19 * (v2 ^ 0x9F) - ((2 * *(v3 + v5)) & 0x78) + 31;
  return (*(v4 + 8 * ((92 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1D4D551D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = v10;
  v18 = v14;
  v19 = a4 - 4715;
  v20 = a1 + v15 + a9 + v18;
  v510 = *(v11 + v18 - 16);
  v21.i64[0] = v11 + v18 - 7;
  v21.i64[1] = v11 + v18 - 8;
  v22.i64[0] = v11 + v18 - 5;
  v22.i64[1] = v11 + v18 - 6;
  v23.i64[0] = v20 + v9;
  v23.i64[1] = v20 - 0x67EBC7BE9E6FE604;
  v24.i64[0] = v20 - 0x67EBC7BE9E6FE601;
  v24.i64[1] = v20 - 0x67EBC7BE9E6FE602;
  v25 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v26 = vandq_s8(v22, v25);
  v27 = vandq_s8(v21, v25);
  v28 = vdupq_n_s64(0x38uLL);
  v29 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v30 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL), v29);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), v29);
  v32 = v29;
  v33 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v34 = veorq_s8(v31, v33);
  v35 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x2B0] = v35;
  v36 = veorq_s8(v30, v33);
  v37 = veorq_s8(v30, v35);
  v38 = veorq_s8(v31, v35);
  v512 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v39 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v37), v512);
  v40 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v38), v512);
  v41 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v42 = veorq_s8(v39, vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL));
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v42);
  v45 = vaddq_s64(v43, v41);
  v46 = vdupq_n_s64(0x444F902103838ADEuLL);
  *&STACK[0x2C0] = v46;
  v511 = vdupq_n_s64(0x5DD837EF7E3E3A91uLL);
  v47 = vdupq_n_s64(0x578539A934117766uLL);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), v46), v45), v511), v47);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), v46), v44), v511), v47);
  v50 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v51 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v52 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51);
  v54 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v55 = veorq_s8(vaddq_s64(v52, v50), v54);
  v56 = veorq_s8(v53, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v63 = veorq_s8(vaddq_s64(v60, v58), v62);
  v64 = veorq_s8(v61, v62);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = vdupq_n_s64(0x953D53DE148E1D56);
  v71 = vdupq_n_s64(a3);
  *&STACK[0x200] = v71;
  v72 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v69, v69), v70), v69), v71), v72);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v68, v68), v70), v68), v71), v72);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v80 = veorq_s8(vaddq_s64(v77, v75), v79);
  v81 = veorq_s8(v78, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, v82));
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v83);
  v86 = vdupq_n_s64(0x4AC0565324D70174uLL);
  *&STACK[0x350] = v86;
  v87 = vdupq_n_s64(v12);
  v88 = vdupq_n_s64(0xE1F014810C505D35);
  v89 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, v86), vorrq_s8(v85, v87)), v87), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v28)));
  v90 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v86), vorrq_s8(v84, v87)), v87), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v28)));
  v91 = vandq_s8(v24, v25);
  v92 = vandq_s8(v23, v25);
  v93 = v25;
  v94 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v97 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v98 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v99 = vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(vaddq_s64(v95, v95), v96), v97)), v98);
  v100 = vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(vaddq_s64(v94, v94), v96), v97)), v98);
  v101 = vdupq_n_s64(0xCF99C25E83E78D67);
  v102 = veorq_s8(v100, v101);
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v106 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v107 = veorq_s8(v99, v106);
  v108 = v106;
  *&STACK[0x290] = v106;
  v109 = vaddq_s64(v104, v107);
  v110 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v111 = veorq_s8(v100, v108);
  v112 = vaddq_s64(v105, v111);
  v113 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v114 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v115 = veorq_s8(v112, v114);
  v116 = v114;
  *&STACK[0x2A0] = v114;
  v117 = veorq_s8(v115, v113);
  v118 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v119 = veorq_s8(v109, v116);
  v120 = veorq_s8(v119, v110);
  v121 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v122 = vaddq_s64(v118, v117);
  v123 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v124 = vaddq_s64(v121, v120);
  *&STACK[0x250] = v123;
  v125 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v127 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v128 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v124, v124), v123), v124), v127);
  *&STACK[0x280] = v127;
  v129 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v130 = veorq_s8(v128, v129);
  v131 = v129;
  *&STACK[0x340] = v129;
  v132 = veorq_s8(v130, v126);
  v133 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v123), v122), v127), v131);
  v135 = veorq_s8(v134, v125);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  *&STACK[0x320] = v137;
  v138 = vdupq_n_s64(v13);
  v139 = vsubq_s64(vorrq_s8(v136, v137), vorrq_s8(v136, v138));
  v140 = vaddq_s64(v133, v132);
  v141 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v143 = vaddq_s64(vsubq_s64(vorrq_s8(v140, v137), vorrq_s8(v140, v138)), v138);
  v144 = v138;
  *&STACK[0x2E0] = v138;
  v145 = vdupq_n_s64(0x5C9047B9C167908FuLL);
  v146 = veorq_s8(v143, v145);
  v147 = v145;
  *&STACK[0x2F0] = v145;
  v148 = veorq_s8(v146, v142);
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = veorq_s8(vaddq_s64(v139, v144), v147);
  v151 = veorq_s8(v150, v141);
  v152 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v153 = vaddq_s64(v149, v148);
  v154 = vdupq_n_s64(0x2FB8FA78C5363E4uLL);
  *&STACK[0x330] = v154;
  v155 = vsubq_s64(v153, vandq_s8(vaddq_s64(v153, v153), v154));
  v156 = vaddq_s64(v152, v151);
  v157 = vsubq_s64(v156, vandq_s8(vaddq_s64(v156, v156), v154));
  v158 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v160 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v161 = vaddq_s64(v157, v160);
  *&STACK[0x270] = v160;
  v162 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  v163 = veorq_s8(v161, v162);
  v164 = v162;
  *&STACK[0x310] = v162;
  v165 = veorq_s8(v163, v159);
  v166 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v167 = veorq_s8(vaddq_s64(v155, v160), v164);
  v168 = veorq_s8(v167, v158);
  v169 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v170 = vaddq_s64(v166, v165);
  v171 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  *&STACK[0x300] = v171;
  v172 = vsubq_s64(v170, vandq_s8(vaddq_s64(v170, v170), v171));
  v173 = vaddq_s64(v169, v168);
  v174 = vsubq_s64(v173, vandq_s8(vaddq_s64(v173, v173), v171));
  v175 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v177 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v178 = vaddq_s64(v174, v177);
  *&STACK[0x260] = v177;
  v179 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v180 = veorq_s8(v178, v179);
  v181 = v179;
  *&STACK[0x2D0] = v179;
  v182 = veorq_s8(v180, v176);
  v183 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v184 = veorq_s8(vaddq_s64(v172, v177), v181);
  v185 = veorq_s8(v184, v175);
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = vaddq_s64(v183, v182);
  v188 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v189 = vaddq_s64(v186, v185);
  v190 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v191 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v192 = veorq_s8(v189, v191);
  v193 = v191;
  *&STACK[0x360] = v191;
  v194 = veorq_s8(v192, v190);
  v195 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v196 = veorq_s8(v187, v193);
  v197 = vaddq_s64(v195, v194);
  v198 = vdupq_n_s64(a2);
  *&STACK[0x210] = v198;
  v515.val[3] = veorq_s8(vshlq_u64(veorq_s8(v197, v198), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v28))), v90);
  v515.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), veorq_s8(v196, v188)), v198), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v28))), v89);
  v195.i64[0] = v11 + v18 - 1;
  v195.i64[1] = v11 + v18 - 2;
  v199 = vandq_s8(v195, v93);
  v200 = v32;
  *&STACK[0x220] = v32;
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v32);
  v202 = v33;
  v203 = veorq_s8(v201, v33);
  v204 = *&STACK[0x2B0];
  v205 = *&STACK[0x2C0];
  v206 = veorq_s8(v201, *&STACK[0x2B0]);
  v207 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v206), v512);
  v209 = veorq_s8(v208, v207);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v210, v210), *&STACK[0x2C0]), v210), v511), v47);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v213 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212), v54);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v62);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = *&STACK[0x200];
  v508 = v87;
  v509 = v72;
  v219 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v217, v217), v70), v217), *&STACK[0x200]), v72);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v79);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL)));
  v223 = vaddq_s64(vsubq_s64(vorrq_s8(v222, *&STACK[0x350]), vorrq_s8(v222, v87)), v87);
  *&STACK[0x230] = v96;
  *&STACK[0x240] = v88;
  v224 = vshlq_u64(veorq_s8(v223, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v195, 3uLL), v28)));
  v223.i64[0] = v20 + v17;
  v223.i64[1] = v20 - 0x67EBC7BE9E6FE5FELL;
  v225 = vandq_s8(v223, v93);
  v226 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v513 = v101;
  v227 = vaddq_s64(vsubq_s64(v226, vandq_s8(vaddq_s64(vaddq_s64(v226, v226), v96), v97)), v98);
  v228 = veorq_s8(v227, v101);
  v229 = veorq_s8(v227, *&STACK[0x290]);
  v230 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), *&STACK[0x2A0]);
  v232 = veorq_s8(v231, v230);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), v123), v233), *&STACK[0x280]), *&STACK[0x340]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v237 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, *&STACK[0x320]), vorrq_s8(v236, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241);
  v243 = veorq_s8(vaddq_s64(vsubq_s64(v242, vandq_s8(vaddq_s64(v242, v242), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v244 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244), *&STACK[0x360]);
  v515.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v223, 3uLL), v28))), v224);
  v246 = (v19 - 2074) | 0x1000u;
  v223.i64[0] = v11 + v18 - 3;
  v223.i64[1] = v11 + v18 - 4660 + v246;
  v247 = vandq_s8(v223, v93);
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v200);
  v249 = veorq_s8(v248, v202);
  v250 = veorq_s8(v248, v204);
  v251 = vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL);
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250), v512);
  v253 = veorq_s8(v252, v251);
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v254, v254), v205), v254), v511), v47);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v54);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), v62);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), v70), v261), v218), v72);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v264 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263), v79);
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL)));
  v264.i64[0] = v20 - 0x67EBC7BE9E6FE5FFLL;
  v264.i64[1] = v20 - 0x67EBC7BE9E6FF830 + v246;
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v265, *&STACK[0x350]), vorrq_s8(v265, v87)), v87), v88);
  v267 = v28;
  v268 = vshlq_u64(v266, vnegq_s64(vandq_s8(vshlq_n_s64(v223, 3uLL), v28)));
  v269 = vandq_s8(v264, v93);
  v270 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v271 = vaddq_s64(vsubq_s64(v270, vandq_s8(vaddq_s64(vaddq_s64(v270, v270), v96), v97)), v98);
  v272 = veorq_s8(v271, v513);
  v273 = veorq_s8(v271, *&STACK[0x290]);
  v274 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v275 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v273), *&STACK[0x2A0]);
  v276 = veorq_s8(v275, v274);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), v276);
  v278 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v277, v277), *&STACK[0x250]), v277), *&STACK[0x280]), *&STACK[0x340]);
  v279 = veorq_s8(v278, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL), v279);
  v281 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v280, *&STACK[0x320]), vorrq_s8(v280, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v282 = veorq_s8(v281, vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL));
  v283 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), v282);
  v284 = veorq_s8(vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v285 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL));
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285);
  v287 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v288 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v289 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), v288), *&STACK[0x360]);
  v515.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v264, 3uLL), v28))), v268);
  v196.i64[0] = v11 + v18 - 15;
  v196.i64[1] = v11 + v18 - 16;
  v290 = vandq_s8(v196, v93);
  v291 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v290.i64[0] = v11 + v18 - 13;
  v290.i64[1] = v11 + v18 - 14;
  v292 = vandq_s8(v290, v93);
  v293 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), *&STACK[0x220]);
  v294 = veorq_s8(v293, v202);
  v295 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v296 = vaddq_s64(v291, *&STACK[0x220]);
  v297 = veorq_s8(v296, v202);
  v298 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v299 = veorq_s8(v293, *&STACK[0x2B0]);
  v300 = vaddq_s64(v295, v299);
  v301 = vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL);
  v302 = veorq_s8(v296, *&STACK[0x2B0]);
  v303 = vaddq_s64(v298, v302);
  v304 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v305 = veorq_s8(v303, v512);
  v306 = veorq_s8(v305, v304);
  v307 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v308 = veorq_s8(v300, v512);
  v309 = veorq_s8(v308, v301);
  v310 = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v311 = vaddq_s64(v307, v306);
  v312 = vaddq_s64(v310, v309);
  v313 = vsraq_n_u64(vshlq_n_s64(v306, 3uLL), v306, 0x3DuLL);
  v314 = vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL);
  v315 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v312, v312), *&STACK[0x2C0]), v312), v511), v47);
  v316 = veorq_s8(v315, v314);
  v317 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v318 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v311, v311), *&STACK[0x2C0]), v311), v511), v47);
  v319 = veorq_s8(v318, v313);
  v320 = vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL);
  v321 = vaddq_s64(v317, v316);
  v322 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v323 = veorq_s8(vaddq_s64(v320, v319), v54);
  v324 = veorq_s8(v323, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v325 = vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL);
  v326 = veorq_s8(v321, v54);
  v327 = veorq_s8(v326, v322);
  v328 = vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL);
  v329 = vaddq_s64(v325, v324);
  v330 = vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL);
  v331 = vaddq_s64(v328, v327);
  v332 = vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL);
  v333 = veorq_s8(v331, v62);
  v334 = veorq_s8(v333, v332);
  v335 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v336 = veorq_s8(v329, v62);
  v337 = veorq_s8(v336, v330);
  v338 = vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL);
  v339 = vaddq_s64(v335, v334);
  v340 = vaddq_s64(v338, v337);
  v341 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v342 = vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL);
  v343 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v340, v340), v70), v340), *&STACK[0x200]), v509);
  v344 = veorq_s8(v343, v342);
  v345 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v346 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v339, v339), v70), v339), *&STACK[0x200]), v509);
  v347 = veorq_s8(v346, v341);
  v348 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v349 = vaddq_s64(v345, v344);
  v350 = vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL);
  v351 = vaddq_s64(v348, v347);
  v352 = vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL);
  v353 = veorq_s8(v351, v79);
  v354 = veorq_s8(v349, v79);
  v355 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), veorq_s8(v354, v350));
  v356 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), veorq_s8(v353, v352));
  v357 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v356, *&STACK[0x350]), vorrq_s8(v356, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v290, 3uLL), v267)));
  v358 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v355, *&STACK[0x350]), vorrq_s8(v355, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v196, 3uLL), v267)));
  v290.i64[0] = v20 - 0x67EBC7BE9E6FE60BLL;
  v290.i64[1] = v20 - 0x67EBC7BE9E6FE60CLL;
  v359 = vandq_s8(v290, v93);
  v360 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v359.i64[0] = v20 - 0x67EBC7BE9E6FE609;
  v359.i64[1] = v20 - 0x67EBC7BE9E6FE60ALL;
  v361 = vandq_s8(v359, v93);
  v362 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v363 = vaddq_s64(vsubq_s64(v362, vandq_s8(vaddq_s64(vaddq_s64(v362, v362), *&STACK[0x230]), v97)), v98);
  v364 = veorq_s8(v363, v513);
  v365 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v366 = vaddq_s64(vsubq_s64(v360, vandq_s8(vaddq_s64(vaddq_s64(v360, v360), *&STACK[0x230]), v97)), v98);
  v367 = veorq_s8(v366, v513);
  v368 = vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL);
  v369 = veorq_s8(v363, *&STACK[0x290]);
  v370 = vaddq_s64(v365, v369);
  v371 = vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL);
  v372 = veorq_s8(v366, *&STACK[0x290]);
  v373 = vaddq_s64(v368, v372);
  v374 = vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL);
  v375 = veorq_s8(v373, *&STACK[0x2A0]);
  v376 = veorq_s8(v375, v374);
  v377 = vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL);
  v378 = veorq_s8(v370, *&STACK[0x2A0]);
  v379 = veorq_s8(v378, v371);
  v380 = vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL);
  v381 = vaddq_s64(v377, v376);
  v382 = vaddq_s64(v380, v379);
  v383 = vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL);
  v384 = vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL);
  v385 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v382, v382), *&STACK[0x250]), v382), *&STACK[0x280]), *&STACK[0x340]);
  v386 = veorq_s8(v385, v384);
  v387 = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v388 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v381, v381), *&STACK[0x250]), v381), *&STACK[0x280]), *&STACK[0x340]);
  v389 = veorq_s8(v388, v383);
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389);
  v391 = vaddq_s64(v387, v386);
  v392 = vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL);
  v393 = vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL);
  v394 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v391, *&STACK[0x320]), vorrq_s8(v391, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v395 = veorq_s8(v394, v393);
  v396 = vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL);
  v397 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v390, *&STACK[0x320]), vorrq_s8(v390, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v398 = veorq_s8(v397, v392);
  v399 = vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL);
  v400 = vaddq_s64(v396, v395);
  v401 = vaddq_s64(v399, v398);
  v402 = vsraq_n_u64(vshlq_n_s64(v395, 3uLL), v395, 0x3DuLL);
  v403 = vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL);
  v404 = veorq_s8(vaddq_s64(vsubq_s64(v401, vandq_s8(vaddq_s64(v401, v401), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v405 = veorq_s8(v404, v403);
  v406 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(v400, vandq_s8(vaddq_s64(v400, v400), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v408 = veorq_s8(v407, v402);
  v409 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v410 = vaddq_s64(v406, v405);
  v411 = vaddq_s64(v409, v408);
  v412 = vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL);
  v413 = vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL);
  v414 = veorq_s8(vaddq_s64(vsubq_s64(v411, vandq_s8(vaddq_s64(v411, v411), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v415 = veorq_s8(v414, v413);
  v416 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v417 = veorq_s8(vaddq_s64(vsubq_s64(v410, vandq_s8(vaddq_s64(v410, v410), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v418 = veorq_s8(v417, v412);
  v419 = vsraq_n_u64(vshlq_n_s64(v417, 0x38uLL), v417, 8uLL);
  v420 = vaddq_s64(v416, v415);
  v421 = vsraq_n_u64(vshlq_n_s64(v415, 3uLL), v415, 0x3DuLL);
  v422 = vaddq_s64(v419, v418);
  v423 = vsraq_n_u64(vshlq_n_s64(v418, 3uLL), v418, 0x3DuLL);
  v424 = veorq_s8(v422, *&STACK[0x360]);
  v425 = veorq_s8(v420, *&STACK[0x360]);
  v514.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL), veorq_s8(v424, v423)), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v290, 3uLL), v267))), v358);
  v514.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL), veorq_s8(v425, v421)), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v359, 3uLL), v267))), v357);
  v358.i64[0] = v11 + v18 - 11;
  v358.i64[1] = v11 + v18 - 12;
  v426 = vandq_s8(v358, v93);
  v427 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), *&STACK[0x220]);
  v428 = veorq_s8(v427, v202);
  v429 = veorq_s8(v427, *&STACK[0x2B0]);
  v430 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v431 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v429), v512);
  v432 = veorq_s8(v431, v430);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL), v432);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), *&STACK[0x2C0]), v433), v511), v47);
  v435 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v436 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v435), v54);
  v437 = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v438 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437), v62);
  v439 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v440 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v439);
  v441 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v440, v440), v70), v440), *&STACK[0x200]), v509);
  v442 = veorq_s8(v441, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v443 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL), v442), v79);
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL), veorq_s8(v443, vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL)));
  v445 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, *&STACK[0x350]), vorrq_s8(v444, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), v267)));
  v358.i64[0] = v20 - 0x67EBC7BE9E6FE607;
  v358.i64[1] = v20 - 0x67EBC7BE9E6FE608;
  v446 = vandq_s8(v358, v93);
  v447 = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v448 = vaddq_s64(vsubq_s64(v447, vandq_s8(vaddq_s64(vaddq_s64(v447, v447), *&STACK[0x230]), v97)), v98);
  v449 = veorq_s8(v448, v513);
  v450 = veorq_s8(v448, *&STACK[0x290]);
  v451 = vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL);
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v449, 0x38uLL), v449, 8uLL), v450), *&STACK[0x2A0]);
  v453 = veorq_s8(v452, v451);
  v454 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453);
  v455 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v454, v454), *&STACK[0x250]), v454), *&STACK[0x280]), *&STACK[0x340]);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v457 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456);
  v458 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v457, *&STACK[0x320]), vorrq_s8(v457, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v460 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459);
  v461 = veorq_s8(vaddq_s64(vsubq_s64(v460, vandq_s8(vaddq_s64(v460, v460), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v462 = veorq_s8(v461, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v461, 0x38uLL), v461, 8uLL), v462);
  v464 = veorq_s8(vaddq_s64(vsubq_s64(v463, vandq_s8(vaddq_s64(v463, v463), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v465 = veorq_s8(v464, vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL));
  v466 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL), v465), *&STACK[0x360]);
  v514.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), veorq_s8(v466, vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), v267))), v445);
  v358.i64[0] = v11 + v18 - 9;
  v358.i64[1] = v11 + v18 - 10;
  v467 = vandq_s8(v358, v93);
  v468 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL), *&STACK[0x220]);
  v469 = veorq_s8(v468, v202);
  v470 = veorq_s8(v468, *&STACK[0x2B0]);
  v471 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL), v470), v512);
  v472 = veorq_s8(v471, vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL));
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v473, v473), *&STACK[0x2C0]), v473), v511), v47);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v54);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), v62);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479);
  v481 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v480, v480), v70), v480), *&STACK[0x200]), v509);
  v482 = veorq_s8(v481, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v483 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL), v482), v79);
  v484 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL)));
  v445.i64[0] = v20 - 0x67EBC7BE9E6FE605;
  v445.i64[1] = v20 - 0x67EBC7BE9E6FE606;
  v485 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v484, *&STACK[0x350]), vorrq_s8(v484, v508)), v508), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), v267)));
  v486 = vandq_s8(v445, v93);
  v487 = vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL);
  v488 = vaddq_s64(vsubq_s64(v487, vandq_s8(vaddq_s64(vaddq_s64(v487, v487), *&STACK[0x230]), v97)), v98);
  v489 = veorq_s8(v488, v513);
  v490 = veorq_s8(v488, *&STACK[0x290]);
  v491 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL), v490), *&STACK[0x2A0]);
  v492 = veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL));
  v493 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492);
  v494 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v493, v493), *&STACK[0x250]), v493), *&STACK[0x280]), *&STACK[0x340]);
  v495 = veorq_s8(v494, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v496 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v494, 0x38uLL), v494, 8uLL), v495);
  v497 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v496, *&STACK[0x320]), vorrq_s8(v496, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x2F0]);
  v498 = veorq_s8(v497, vsraq_n_u64(vshlq_n_s64(v495, 3uLL), v495, 0x3DuLL));
  v499 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL), v498);
  v500 = veorq_s8(vaddq_s64(vsubq_s64(v499, vandq_s8(vaddq_s64(v499, v499), *&STACK[0x330])), *&STACK[0x270]), *&STACK[0x310]);
  v501 = veorq_s8(v500, vsraq_n_u64(vshlq_n_s64(v498, 3uLL), v498, 0x3DuLL));
  v502 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL), v501);
  v503 = veorq_s8(vaddq_s64(vsubq_s64(v502, vandq_s8(vaddq_s64(v502, v502), *&STACK[0x300])), *&STACK[0x260]), *&STACK[0x2D0]);
  v504 = veorq_s8(v503, vsraq_n_u64(vshlq_n_s64(v501, 3uLL), v501, 0x3DuLL));
  v505 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v503, 0x38uLL), v503, 8uLL), v504), *&STACK[0x360]);
  v514.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v505, 0x38uLL), v505, 8uLL), veorq_s8(v505, vsraq_n_u64(vshlq_n_s64(v504, 3uLL), v504, 0x3DuLL))), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v445, 3uLL), v267))), v485);
  v505.i64[0] = vqtbl4q_s8(v515, xmmword_1D4E31490).u64[0];
  v505.i64[1] = vqtbl4q_s8(v514, xmmword_1D4E31490).u64[0];
  v506 = vrev64q_s8(v505);
  *(v20 - 0x67EBC7BE9E6FE60CLL) = veorq_s8(vextq_s8(v506, v506, 8uLL), v510);
  return (*(v16 + 8 * ((6443 * ((v18 & 0xFFFFFFF0) == 16)) ^ (v19 + 1308))))(0xE1AFA7ACF6E0968ELL);
}

uint64_t sub_1D4D56C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v22 = (((&a13 | 0xED5A087A) - (&a13 & 0xED5A087A)) ^ 0xB533DB18) * v18;
  a17 = -654855621 - v22;
  a18 = v22 + v21 + 1674571470;
  a14 = v22 - 1659501;
  a15 = a11;
  a16 = &a10;
  v23 = (*(v19 + 8 * (v21 ^ 0x3854)))(&a13);
  return (*(v19 + 8 * (((a13 == v20) * ((v21 ^ 0x144E) + 13627)) ^ v21)))(v23);
}

uint64_t sub_1D4D56D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, char a15, int a16, int a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a25 = &a15;
  a24 = (v25 + 1525) ^ (1710126949 * ((&a20 & 0x4B89DAD6 | ~(&a20 | 0x4B89DAD6)) ^ 0x866D7EB9));
  a22 = a14;
  a23 = &a18;
  (*(v26 + 8 * (v25 ^ 0x227E)))(&a20);
  a22 = a14;
  a23 = &a12;
  a21 = (v25 + 1419) ^ (33731311 * ((&a20 & 0x278901B0 | ~(&a20 | 0x278901B0)) ^ 0xE180346C));
  (*(v26 + 8 * (v25 ^ 0x2278)))(&a20);
  LODWORD(a23) = v25 - 2008441969 * ((&a20 + 529290510 - 2 * (&a20 & 0x1F8C550E)) ^ 0x57150100) + 3852;
  a22 = a14;
  v27 = (*(v26 + 8 * (v25 ^ 0x228A)))(&a20);
  return (*(v26 + 8 * ((6326 * (a20 == ((v25 + 458) ^ 0xF81B14))) ^ v25)))(v27);
}

uint64_t sub_1D4D56EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&STACK[0x220] = vdupq_n_s64(0x38uLL);
  *&STACK[0x390] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x380] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x360] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x310] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x320] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2F0] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x300] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x2D0] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x2E0] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x2B0] = vdupq_n_s64(v5);
  *&STACK[0x2C0] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x340] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x350] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x330] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x290] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x280] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x210] = xmmword_1D4E31490;
  return sub_1D4D53EE4(a1, a2, a3, 0xE79B7CAD81EAE601, a5);
}

uint64_t sub_1D4D57174@<X0>(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v2;
  return (*(STACK[0x3E8] + 8 * ((((((((v3 - 1696806246) & 0x652333DF) - 698) | 0x440) + 2984) | 0x182) - 8471) ^ (((((v3 - 1696806246) & 0x652333DF) - 698) | 0x440) + 214))))();
}

uint64_t sub_1D4D571A0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v4 + 1206706767) & 0x7AEA3BF9) - 2790)) ^ (v4 + a2))))();
}

uint64_t sub_1D4D57344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v8 - 1;
  *(a6 + v11) = *(v6 + v11);
  return (*(v10 + 8 * ((57 * (v11 == (((v9 + v7 + 1668) | 0x80u) ^ 0x24DELL))) ^ (v9 + v7))))();
}

uint64_t sub_1D4D57384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, char *a15, unsigned int a16, unsigned int a17)
{
  v24 = (&a12 ^ v17) * v20;
  a13 = v24 - 1218044670;
  a16 = -654855621 - v24;
  a17 = v24 + v23 + 1674573002;
  a14 = a9;
  a15 = &a10;
  v25 = (*(v18 + 8 * (v23 + 3496)))(&a12);
  return (*(v18 + 8 * (((a12 == v22) * ((v21 - v19 - 3397) ^ 0x1C3)) ^ v23)))(v25);
}

uint64_t sub_1D4D57410@<X0>(int a1@<W6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = LODWORD(STACK[0x350]);
  if (v69 == 17168)
  {
    return (*(a65 + 8 * (a1 ^ (2742 * (a2 == v66 + 4)))))();
  }

  if (v69 == 20706 || (v71 = v67, v69 == 33980))
  {
    STACK[0x6C0] = v65;
    v68 = 16215638;
    v71 = v67;
  }

  return (*(a65 + 8 * ((((v71 - 5865) ^ ((v71 + 2741) | 0x35) ^ 0x39EA) * (v68 == 16257999)) ^ (v71 - 4925))))();
}

void sub_1D4D57500(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, int a6@<W7>, unint64_t a7@<X8>)
{
  STACK[0x288] = v10;
  v13 = (((v8 + 0x5FBEFFFFFFF72050 + v7) & (2 * a7)) + (a7 ^ 0xAFDF7FFFFFFB9577) + a3 + 0x5020800000046A89);
  v14 = (*v13 << 24) | (v13[1] << 16) | (v13[2] << 8);
  v15 = (v14 | v13[3]) + v11 - 2 * ((v14 | v13[3]) & v9 ^ v13[3] & 0xC);
  LOWORD(v14) = _byteswap_ushort(*(((2 * (a7 + 4)) & 0x7B766973FFF7F5AELL) + ((a7 + 4) ^ 0x7DBB34B9FFFBFAD7) + a3 - 0x7DBB34B9FFFBFAD7));
  v16 = (v14 - 2 * (v14 & 0x3E9E ^ *(((2 * (a7 + 4)) & 0x7B766973FFF7F5AELL) + ((a7 + 4) ^ 0x7DBB34B9FFFBFAD7) + a3 - 0x7DBB34B9FFFBFAD6) & 0xA) + 16023);
  switch(v16)
  {
    case 28242:
      v20 = *(a5 + 8 * ((((a6 - 1125691320) & 0x4318AB7F ^ 0x2816) * (v15 == v11)) ^ (a6 + 1170)));
      LODWORD(STACK[0x25C]) = 16257999;
      v20(a1, a2, a3, a4);
      break;
    case 47636:
      v19 = *(a5 + 8 * ((((a6 - 1073032028) & 0x3FF52FED ^ 0x1B62) * (v12 == v11 + 8)) ^ (a6 + 50)));
      STACK[0x2A8] = a3;
      v19();
      break;
    case 43494:
      v17 = v12 == (a6 ^ 0xCAE ^ (v11 - 2205));
      v18 = *(a5 + 8 * ((32 * v17) | (v17 << 8) | (a6 + 4873)));
      STACK[0x2A8] = a3;
      v18();
      break;
    default:
      STACK[0x2A8] = a3;
      sub_1D4D00118(a1, a7);
      break;
  }
}

uint64_t sub_1D4D57748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = (a2 + v2 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * ((v3 + 892161538) ^ 0x3854)) ^ (v4 + v3 + 1179))))();
}

uint64_t sub_1D4D577D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3 + a1;
  v10 = a3 - 1;
  *(v5 + v10) = *(v6 + v10) ^ *(v7 + v10) ^ (47 * v10) ^ *(v9 + 3) ^ *(v3 + v10) ^ 0x3C;
  return (*(v8 + 8 * (((v10 == 0) * (v4 + 8812)) ^ v4)))();
}

uint64_t sub_1D4D57828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15, uint64_t a16)
{
  v20 = 1875091903 * ((2 * (&a13 & 0x11E3E2E0) - &a13 + 1847336223) ^ 0x58699E9C);
  a16 = a11;
  a14 = (v16 ^ 0x2A9EF7BE) + ((v16 << ((2 * ((v19 + 66) ^ 0x91)) ^ 0x9B)) & 0x553DEF7C) - 176308500 + v20;
  a15 = v20 + v19 + 4418 + 80;
  v21 = (*(v17 + 8 * (v19 + 6419)))(&a13);
  return (*(v17 + 8 * ((1002 * (a13 == v18)) ^ (v19 + 4418))))(v21);
}

uint64_t sub_1D4D579E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 + (v5 ^ (v3 + 1621)) - 2715;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 == 0) << 8) | ((v7 == 0) << 12) | (v2 + v5 + 1691))))();
}

uint64_t sub_1D4D57B90()
{
  v2 = *(STACK[0x7D8] + 24);
  STACK[0x398] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 + 3453) ^ 0xFFFFE982) + (v0 ^ 0x491))) ^ v0)))();
}

uint64_t sub_1D4D57BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = *(STACK[0x778] + 24);
  v66 = __ROR8__((v65 + 10) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v67 = __ROR8__(v66 ^ 0x49E9423B6F16E7D2, 8);
  v66 ^= 0xE1AFA7ACF6E0968ELL;
  v68 = __ROR8__((v67 + v66) ^ 0xE49D77DF873DBF7ELL, 8);
  v69 = (v67 + v66) ^ 0xE49D77DF873DBF7ELL ^ __ROR8__(v66, 61);
  v70 = (v68 + v69) ^ 0xF5A2F1B9B5D0B209;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x61459D2AF01F24F7;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v64 + 2612) ^ STACK[0x9A8] ^ 0x32B9C33CFFC0C79FLL;
  v79 = *(a64 + 8 * v64);
  v80 = (((v77 + v76) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v77 + v76) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v81 = v80 ^ __ROR8__(v76, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x1A2AEBE44253AF03;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v65[10] = (((((2 * (v84 + v83)) | 0xC38C36871CFCF294) - (v84 + v83) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v65 + 10) & 7u))) ^ HIBYTE(v78) ^ 0x75;
  v85 = __ROR8__((v65 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v86 = v85 - ((2 * v85 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v87 = v86 ^ 0xD3FC8BFDA5C15E5;
  v86 ^= 0xA5792D2843AA64B9;
  v88 = __ROR8__(v87, 8);
  v89 = (((2 * (v88 + v86)) & 0x172EA68DBB7EC94) - (v88 + v86) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v90 = v89 ^ __ROR8__(v86, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) & 0xD4F2B43A3958542) - (v91 + v90) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x5963B6C555D97F1FLL;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((v96 + v95) | 0x3A57A17B6EDF06BLL) - ((v96 + v95) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x64C31C027084DE6CLL;
  v100 = __ROR8__(v99, 8);
  v101 = v99 ^ __ROR8__(v98, 61);
  v102 = (((v100 + v101) | 0x3F31863D75651161) - ((v100 + v101) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v103 = __ROR8__(v102, 8);
  v104 = __ROR8__(v101, 61);
  v65[11] = (((((2 * (v103 + (v102 ^ v104))) | 0xAB41BFF64D60CE6CLL) - (v103 + (v102 ^ v104)) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v65 + 11) & 7u))) ^ BYTE6(v78) ^ 0x30;
  v105 = (__ROR8__((v65 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v106 = __ROR8__(v105 ^ 0x4DE9423B6F16E7D2, 8);
  v105 ^= 0xE5AFA7ACF6E0968ELL;
  v107 = (v106 + v105 - ((2 * (v106 + v105)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((v109 + v108) | 0x2D1013F9AFD52057) - ((v109 + v108) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x5963B6C555D97F1FLL;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (v114 + v113 - ((2 * (v114 + v113)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x64C31C027084DE6CLL;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x1A2AEBE44253AF03;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v65[12] = (((((2 * (v121 + v120)) & 0xA6AF603E61524BD2) - (v121 + v120) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v65 + 12) & 7u))) ^ BYTE5(v78) ^ 0x26;
  v122 = __ROR8__((v65 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v123 = ((2 * (v122 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v122 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v124 = v123 ^ 0x1780DE40BC839FA3;
  v123 ^= 0xBFC63BD72575EEFFLL;
  v125 = __ROR8__(v124, 8);
  v126 = (((v125 + v123) | 0x524D786A2DAA5236) - ((v125 + v123) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v127 = v126 ^ __ROR8__(v123, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) | 0xC461725543BD74EALL) - (v128 + v127) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x5963B6C555D97F1FLL;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x61459D2AF01F24F7;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((v135 + v134) | 0xD6A77E9273FF605BLL) - ((v135 + v134) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (v138 + v137 - ((2 * (v138 + v137)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v65[13] = (((__ROR8__(v139, 8) + (v139 ^ __ROR8__(v137, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v65 + 13) & 7u))) ^ BYTE4(v78) ^ 0x9B;
  v140 = __ROR8__((v65 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v141 = v140 - ((2 * v140 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v142 = v141 ^ 0x59C38B8127975FAELL;
  v141 ^= 0xF1856E16BE612EF2;
  v143 = (__ROR8__(v142, 8) + v141) ^ 0xE49D77DF873DBF7ELL;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xF5A2F1B9B5D0B209;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0x5963B6C555D97F1FLL;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = __ROR8__(v147, 8);
  v150 = __ROR8__((v149 + v148 - ((2 * (v149 + v148)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v151 = (v149 + v148 - ((2 * (v149 + v148)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v148, 61);
  v152 = (v150 + v151 - ((2 * (v150 + v151)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x1A2AEBE44253AF03;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8);
  v65[14] = (((((v156 + v155) | 0x6B6AF9C6B406ECE7) - ((v156 + v155) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v65 + 14) & 7u))) ^ BYTE3(v78) ^ 0xB0;
  v157 = __ROR8__((v65 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v158 = ((v157 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v157 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v157 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v159 = v158 ^ 0x8A84C36C7E52240;
  v158 ^= 0xA0EEA9A15E13531CLL;
  v160 = (__ROR8__(v159, 8) + v158) ^ 0xE49D77DF873DBF7ELL;
  v161 = v160 ^ __ROR8__(v158, 61);
  v162 = (__ROR8__(v160, 8) + v161) ^ 0xF5A2F1B9B5D0B209;
  v163 = v162 ^ __ROR8__(v161, 61);
  v164 = __ROR8__(v162, 8);
  v165 = __ROR8__((((2 * (v164 + v163)) & 0x7EC0B560615BD22) - (v164 + v163) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v166 = (((2 * (v164 + v163)) & 0x7EC0B560615BD22) - (v164 + v163) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v163, 61);
  v167 = (((v165 + v166) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v165 + v166) ^ 0xFE51A922A5729599) - (((v165 + v166) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v168 = v167 ^ __ROR8__(v166, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (((2 * (v169 + v168)) | 0x81910D2EFE6F15ACLL) - (v169 + v168) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = __ROR8__(v170, 8);
  v173 = (((v172 + v171) | 0x452FEAF2D8983268) - ((v172 + v171) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v174 = v173 ^ __ROR8__(v171, 61);
  v175 = __ROR8__(v173, 8);
  v65[15] = (((v175 + v174 - ((2 * (v175 + v174)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v65 + 15) & 7u))) ^ BYTE2(v78) ^ 0x93;
  v176 = __ROR8__((v65 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v177 = -2 - (((0x6AF7234D0CC131D4 - v176) | 0xB9373BCC9E95648DLL) + ((v176 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v178 = v177 ^ 0xF0DE79F7F183835FLL;
  v177 ^= 0x58989C606875F203uLL;
  v179 = (__ROR8__(v178, 8) + v177) ^ 0xE49D77DF873DBF7ELL;
  v180 = v179 ^ __ROR8__(v177, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ 0xF5A2F1B9B5D0B209;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0x5963B6C555D97F1FLL;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = __ROR8__(v183, 8);
  v186 = (((2 * (v185 + v184)) & 0x24C3B6EDA515D42ALL) - (v185 + v184) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v187 = v186 ^ __ROR8__(v184, 61);
  v188 = __ROR8__(v186, 8);
  v189 = (((v188 + v187) | 0x3A521DF821A27A3ELL) - ((v188 + v187) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v190 = v189 ^ __ROR8__(v187, 61);
  v191 = (__ROR8__(v189, 8) + v190) ^ 0x1A2AEBE44253AF03;
  v192 = __ROR8__(v191, 8);
  v193 = __ROR8__(v190, 61);
  LOBYTE(v190) = (((((2 * (v192 + (v191 ^ v193))) | 0x4D724CAE0D8F11E6) - (v192 + (v191 ^ v193)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v65 + 16) & 7u))) ^ BYTE1(v78) ^ 0x97;
  v194 = __ROR8__((v65 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v65[16] = v190;
  v195 = ((2 * ((v194 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v194 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v196 = v195 ^ 0xDE90BDF0289CA71;
  v195 ^= 0xA5AFEE489B7FBB2DLL;
  v197 = __ROR8__(v196, 8);
  v198 = (((2 * (v197 + v195)) | 0x692CEF71A0CBBC0ELL) - (v197 + v195) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v199 = v198 ^ __ROR8__(v195, 61);
  v200 = __ROR8__(v198, 8);
  v201 = __ROR8__((((2 * (v200 + v199)) & 0xFD81E0C09A12569ALL) - (v200 + v199) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v202 = (((2 * (v200 + v199)) & 0xFD81E0C09A12569ALL) - (v200 + v199) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v199, 61);
  v203 = (v201 + v202) ^ 0x5963B6C555D97F1FLL;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = (__ROR8__(v203, 8) + v204) ^ 0x61459D2AF01F24F7;
  v206 = v205 ^ __ROR8__(v204, 61);
  v207 = __ROR8__(v205, 8);
  v208 = (v207 + v206 - ((2 * (v207 + v206)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v209 = v208 ^ __ROR8__(v206, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (v210 + v209 - ((2 * (v210 + v209)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v65[17] = (((__ROR8__(v211, 8) + (v211 ^ __ROR8__(v209, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v65 + 17) & 7u))) ^ v78 ^ 8;
  return v79();
}

uint64_t sub_1D4D58BBC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 ^ v64) + a26;
  STACK[0x9A8] = v66;
  return (*(v65 + 8 * ((a64 - 1076) ^ (81 * (v66 <= a22)))))();
}

void sub_1D4D58CE8()
{
  LODWORD(STACK[0xA64]) = 16215976;
  STACK[0x640] = v0;
  JUMPOUT(0x1D4C93340);
}

uint64_t sub_1D4D58D14(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  STACK[0x450] = a1;
  STACK[0x470] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((a1 != 0) * (((((v1 + 2054444353) & 0x858BBBBE) + 1709) ^ 0xFFFFE9A4) + ((v1 + 2054444353) & 0x858BBBBE) - 3941)) ^ (v1 + 2054444353) & 0x858BBBBE)))();
}

uint64_t sub_1D4D58E90@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v58 = LODWORD(STACK[0x320]);
  if (v58 == 17168)
  {
    return (*(v57 + 8 * ((a56 + 2903) ^ (14194 * (a1 == 197499223)))))();
  }

  if (v58 == 20706 || v58 == 33980)
  {
    STACK[0x7C0] = v56;
  }

  return (STACK[0x698])();
}

uint64_t sub_1D4D59028()
{
  v1 = LODWORD(STACK[0x3A0]) + 3541;
  LOBYTE(STACK[0x427]) = 0;
  return (*(v0 + 8 * ((45 * (*(STACK[0x5F0] + 92) == ((v1 - 5822) ^ 0x10D))) ^ (v1 - 2930))))();
}

uint64_t sub_1D4D59080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v64 ^ 0x374C)))(32, v65);
  STACK[0x600] = v67;
  return (*(a64 + 8 * (((((v67 == 0) ^ (121 * (v64 ^ 0xE5))) & 1) * (((v64 - 3843) | 0x404) - 1551)) ^ v64)))();
}

void sub_1D4D59124(unint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = ((v13 ^ 0xC9DB72D8C379E9C3) + 0x36248D273C86163DLL) ^ ((v13 ^ 0x27227E518BD9E92DLL) - 0x27227E518BD9E92DLL) ^ (((a5 + 2013134072) & 0xBE9A38DF ^ 0x1106F376FD556CF9) + (v13 ^ 0xEEF90C893432ABC5));
  v20 = (v19 + v15) * (v19 + v14) + ((v19 + v15) * v17 + (v19 + v14) * v16) * v18 + a8;
  v21 = v20 - (((v20 * a1) >> 64) >> 31) * a6;
  v22 = v21 * a7 + (a2 ^ v10) * (a2 ^ v10) + v11;
  v23 = v22 - (((v22 * v12) >> 64) >> 31) * a4;
  *(v9 + a3) = (((v23 * v21) >> 15) - ((2 * ((v23 * v21) >> 15)) & 0x78) + 60) ^ *(v8 + a3);
  *(v9 + (a3 | 1)) = (((v23 * v21) >> 23) - ((2 * ((v23 * v21) >> 23)) & 0x78) + 60) ^ *(v8 + (a3 | 1));
  *(v9 + (a3 | 2)) = (((v23 * v21) >> 31) - ((2 * ((v23 * v21) >> 31)) & 0x78) + 60) ^ *(v8 + (a3 | 2));
  *(v9 + (a3 | 3)) = (((v23 * v21) >> 39) - ((2 * ((v23 * v21) >> 39)) & 0x78) + 60) ^ *(v8 + (a3 | 3));
  JUMPOUT(0x1D4CF19D0);
}

uint64_t sub_1D4D592BC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x928] = v1;
  STACK[0x930] = a1;
  return (*(STACK[0x3E8] + 8 * ((((((v3 | 0x472) ^ 0x49D) + 129) ^ (23 * ((v3 | 0x472) ^ 0x49D))) * (v2 > 9)) ^ (v3 | 0x472))))();
}

uint64_t sub_1D4D593D0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = 956911519 * ((2 * ((v7 - 232) & 0x8F8A8C0) - (v7 - 232) + 1996969787) ^ 0x9D96273E);
  *(v7 - 216) = ((v2 ^ 0xAFFFD9FB) + 2145056750 + ((v2 << ((v5 - 82) ^ 0x64)) & 0x18483164)) ^ v8;
  *(v7 - 208) = v3;
  *(v7 - 192) = v8 ^ 0x5A8CE82;
  *(v7 - 188) = (v5 - 159) ^ v8;
  *(v7 - 232) = v6;
  *(v7 - 224) = a2;
  *(v7 - 200) = ((v4 ^ 0x42FFEFFE) - 1107919394 + ((2 * v4) & 0x85FFDFFC)) ^ v8;
  v9 = (*(a1 + 8 * (v5 ^ 0x2F19)))(v7 - 232);
  return (STACK[0x768])(v9);
}

uint64_t sub_1D4D594F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, int a16, unsigned int a17, uint64_t a18, char *a19)
{
  v22 = v19 - 2460;
  v23 = v19 - 6112;
  a18 = a10;
  a19 = &a12;
  a17 = (v19 - 6112) ^ (33731311 * ((&a16 & 0x99D419B6 | ~(&a16 | 0x99D419B6)) ^ 0x5FDD2C6A));
  v24 = v19 + 237;
  (*(v20 + 8 * v24))(&a16);
  a18 = a10;
  a19 = &a15;
  a17 = v23 ^ (33731311 * (((&a16 ^ 0x1D07B2C1) & 0x8EE988CD | ~(&a16 ^ 0x1D07B2C1 | 0x8EE988CD)) ^ 0x55E70FD0));
  (*(v20 + 8 * v24))(&a16);
  a18 = a10;
  LODWORD(a19) = v22 - 2008441969 * (((&a16 | 0x7C3A0D3) - &a16 + (&a16 & 0xF83C5F28)) ^ 0x4F5AF4DD) - 1219;
  v25 = (*(v20 + 8 * (v22 + 2747)))(&a16);
  return (*(v20 + 8 * (((a16 != v21) * ((3494 * (v22 ^ 0x1AE2)) ^ 0x1AE0)) ^ v22)))(v25);
}

uint64_t sub_1D4D596B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20)
{
  v23 = 1875091903 * ((((2 * &a17) | 0x38674206) - &a17 - 473145603) ^ 0x2A462280);
  a18 = ((2 * a11) & 0xD53D6D5C) + (a11 ^ 0xEA9EB6AE) + 897449980 + v23;
  a19 = v23 + 7724;
  a20 = a13;
  v24 = (*(v21 + 77160))(&a17);
  return (*(v21 + 8 * ((568 * (a17 == v22)) ^ v20)))(v24);
}

uint64_t sub_1D4D5977C()
{
  STACK[0x978] = v1;
  v3 = STACK[0x540];
  STACK[0x980] = STACK[0x540];
  return (*(v2 + 8 * (((v1 - v3 > (v0 - 3538) - 2625) * (v0 ^ 0x1FEC)) ^ v0)))();
}

uint64_t sub_1D4D59894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v28 = 1875091903 * ((2 * (&a16 & 0x98788C8) - &a16 + 1987606321) ^ 0x400DF4B2);
  a19 = a14;
  a17 = (v25 ^ 0xFA3DF6EB) + ((2 * v25) & 0xF47BEDD6) + 635355071 + v28;
  a18 = v27 + 572 + v28;
  (*(v26 + 8 * (v27 ^ 0x3E5D)))(&a16);
  v29 = 1824088897 * ((((2 * &a16) | 0x5DF10506) - &a16 - 788038275) ^ 0x769151E1);
  a16 = v27 - 3395 + v29;
  a18 = (v24 ^ 0xFFADEECA) - v29 + ((v24 << (v27 + 17)) & 0xFF5BDD94) + 1324809152;
  a19 = v23;
  a20 = a14;
  (*(v26 + 8 * (v27 + 2479)))(&a16);
  v30 = 1824088897 * ((&a16 & 0xBFCD9AE2 | ~(&a16 | 0xBFCD9AE2)) ^ 0x185BB67F);
  a19 = v21;
  a20 = a14;
  a16 = v27 - 3395 + v30;
  a18 = (v22 ^ 0xCFFEEACE) + ((2 * v22) & 0x9FFDD59C) - v30 + 2124808124;
  (*(v26 + 8 * (v27 + 2479)))(&a16);
  v31 = 1875091903 * ((&a16 & 0xE51B865B | ~(&a16 | 0xE51B865B)) ^ 0x2C91FA27);
  a19 = a14;
  a17 = (v20 ^ 0xF87CF7BE) + ((2 * v20) & 0xF0F9EF7C) + 664780524 + v31;
  a18 = v27 + 572 + v31;
  v32 = (*(v26 + 8 * (v27 ^ 0x3E5D)))(&a16);
  return (*(v26 + 8 * ((2033 * (a16 == 16257999)) ^ v27)))(v32);
}

void sub_1D4D59D3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(STACK[0x5B0]) = 0;
  v12 = v9 + LODWORD(STACK[0x460]);
  v13 = LODWORD(STACK[0x44C]) - v10;
  LODWORD(STACK[0x508]) = v5;
  v14 = STACK[0x5A0];
  v15 = *(STACK[0x5A0] + ((v12 >> 28) * v8 + 178365 - 961 * ((4469269 * ((v12 >> 28) * v8 + 178365)) >> 32)));
  LODWORD(STACK[0x518]) = v7;
  v16 = v13 - 696513204;
  v17 = *(v14 + (((v12 >> 20) & 0xF) * v8 + 178365 - 961 * ((4469269 * (((v12 >> 20) & 0xF) * v8 + 178365)) >> 32)));
  v18 = *(v14 + ((HIWORD(v12) & 0xF) * v8 + 178365 - 961 * ((4469269 * ((HIWORD(v12) & 0xF) * v8 + 178365)) >> 32)));
  v19 = (v18 ^ 0x2FFF04) & ((v15 << 12) ^ (*(v14 + ((HIBYTE(v12) & 0xF) * v8 + 178365 - 961 * ((4469269 * ((HIBYTE(v12) & 0xF) * v8 + 178365)) >> 32))) << 8) ^ 0x252A36) | v18 & 0xC9;
  v20 = v12 & 0xF;
  v21 = v12;
  LODWORD(STACK[0x590]) = v12;
  v22 = *(v14 + ((v12 >> 12) * v8 + 178365 - 961 * ((4469269 * ((v12 >> 12) * v8 + 178365)) >> 32)));
  v23 = ((v12 >> 8) & 0xF) * v8 + 178365 - 961 * ((4469269 * (((v12 >> 8) & 0xF) * v8 + 178365)) >> 32);
  LOBYTE(v12) = STACK[0x4C0];
  v24 = (((v12 ^ 2) + 1) ^ v12 ^ ((v12 ^ 2) + 2)) & 4;
  v25 = *(v14 + v23);
  v26 = (5 - v12) ^ v12 ^ (v12 + 3) ^ ((v12 ^ 0x9C) + 7) ^ ((v12 ^ 6) + 5);
  v27 = (v17 << 12) ^ (v19 << 8) ^ 0xA4D11F;
  v28 = v27 & (v25 ^ 0xFFFF8C);
  v29 = ((v28 | v25 & 0xE0) << 8) ^ (v22 << 12);
  v30 = *(v14 + (v20 * v8 + 178365 - 961 * ((4469269 * (v20 * v8 + 178365)) >> 32)));
  v31 = v29 ^ 0x52DEBD7;
  v32 = *(v14 + ((v21 >> 4) * v8 + 178365 - 961 * ((4469269 * ((v21 >> 4) * v8 + 178365)) >> 32))) ^ 0xF3;
  LODWORD(STACK[0x520]) = a4;
  v33 = ((v29 ^ 0x4F32F47A) & (v30 ^ 0xFFFFFF0C) | v30 & 0x85) ^ (v32 << ((v24 | 0xE2) ^ (v26 & 4 | 0x40) ^ (v26 | 0x80) & (v24 ^ 0x84) ^ 0x26));
  v34 = *(v14 + ((HIWORD(v16) & 0xF) * v8 + 178365) % ((((HIWORD(v16) & 0xF) * v8 + 178365) & 0x3C1 ^ 0x3C1) + (((HIWORD(v16) & 0xF) * v8 + 178365) & 0x3C1)));
  v35 = (v34 | 0x4FFF00) & ((*(v14 + ((v16 >> 28) * v8 + 178365 - 961 * ((4469269 * ((v16 >> 28) * v8 + 178365)) >> 32))) << 12) ^ (*(v14 + ((HIBYTE(v16) & 0xF) * v8 + 178365 - 961 * ((4469269 * ((HIBYTE(v16) & 0xF) * v8 + 178365)) >> 32))) << 8) ^ 0x41E432) | v34 & 0xCD;
  v36 = *(v14 + (((v16 >> 20) & 0xF) * v8 + 178365 - 961 * ((4469269 * (((v16 >> 20) & 0xF) * v8 + 178365)) >> 32))) << 12;
  v37 = *(v14 + ((v16 >> 12) * v8 + 178365 - 961 * ((4469269 * ((v16 >> 12) * v8 + 178365)) >> 32)));
  v38 = *(v14 + (((v16 >> 8) & 0xF) * v8 + 178365 - 961 * ((4469269 * (((v16 >> 8) & 0xF) * v8 + 178365)) >> 32)));
  v39 = *(v14 + ((v16 >> 4) * v8 + 178365 - 961 * ((4469269 * ((v16 >> 4) * v8 + 178365)) >> 32)));
  v40 = LOBYTE(STACK[0x964]);
  LODWORD(STACK[0x550]) = v40;
  v41 = v36 ^ (v35 << 8) ^ 0x7C654D;
  v42 = ((v41 & (v38 ^ 0xFFFF1C) | v38 & 0xB2) << 8) ^ (v37 << 12);
  v43 = v42 ^ 0xDBEDD755;
  v44 = *(v14 + ((v16 & 0xF) * v8 + 178365 - 961 * ((4469269 * ((v16 & 0xF) * v8 + 178365)) >> 32)));
  v45 = ((((16 * (v44 & 0xF)) ^ 0xFDCFA026) & (v33 & 0xF ^ 0xFDEFF5FD) | v33 & 9) ^ 0xFDCFA01F) * v8;
  v46 = v39 ^ (((v42 ^ 0x5CBB750) & (v44 ^ 0xFFFFFF20) | v44 & 0xA0) >> 4);
  v47 = *(v14 + (v45 + 88665) % 0x3C1);
  v48 = (16 * v40) ^ 0xFC3;
  LODWORD(STACK[0x560]) = v48;
  v49 = (v48 ^ v47) * v8;
  v50 = v49 + 88665;
  v51 = *(v14 + v45 % 0x3C1);
  v52 = *(v14 + (v49 - 961 * ((4469269 * v49) >> 32)));
  v53 = v33 >> 4;
  v54 = (v51 ^ (v52 >> 4) ^ 0xFC) * v8 + 88665;
  v55 = ((((16 * v46) | 0x677C2A0F) & (v53 ^ 0x677C2A47) | (16 * v46) & 0xB0) ^ 0x677C2AC8) * v8;
  v56 = (*(v14 + (v55 + 88665) % 0x3C1) ^ (16 * *(v14 + (v54 - 961 * ((4469269 * v54) >> 32)))) ^ 0xFC3) * v8;
  v57 = v56 + 88665 - 961 * ((4469269 * (v56 + 88665)) >> 32);
  v58 = *(v14 + v55 % 0x3C1) ^ (*(v14 + (v56 - 961 * ((4469269 * v56) >> 32))) >> 4) ^ 0xFC;
  v59 = (v33 >> 8) & 0xF;
  v60 = (((v46 & 0xF0 ^ 0x602C6B58) & (v59 ^ 0x6BEC6BF7) | (v33 >> 8) & 7) ^ 0x602C6B2B) * v8;
  v61 = (*(v14 + (v60 + 88665) % 0x3C1) ^ (16 * *(v14 + (v58 * v8 + 88665 - 961 * ((4469269 * (v58 * v8 + 88665)) >> 32)))) ^ 0xFC3) * v8;
  v62 = *(v14 + (v61 + 88665 - 961 * ((4469269 * (v61 + 88665)) >> 32)));
  LOBYTE(v60) = *(v14 + v60 % 0x3C1) ^ (*(v14 + (v61 - 961 * ((4469269 * v61) >> 32))) >> 4) ^ 0xFC;
  LODWORD(STACK[0x504]) = v9;
  v63 = *(v14 + (v60 * v8 + 88665 - 961 * ((4469269 * (v60 * v8 + 88665)) >> 32)));
  v64 = (((v43 >> 8) & 0xF0 | (v31 >> 12)) ^ 0x12) * v8;
  LODWORD(STACK[0x510]) = v10;
  v65 = *(v14 + (v64 + 88665 - 961 * ((4469269 * (v64 + 88665)) >> 32)));
  LODWORD(STACK[0x524]) = v11;
  v66 = *(v14 + (v64 - 961 * ((4469269 * v64) >> 32)));
  v67 = (v63 ^ 0xF3) << ((v60 & 4 ^ 4) + (v60 & 4));
  v68 = (v65 ^ 0x55D867AE ^ (v67 + 1440245597 - ((2 * v67) & 0x10CEBA))) * v8;
  v69 = *(v14 + (v68 + 88665) % 0x3C1);
  LODWORD(STACK[0x58C]) = HIWORD(v31);
  v70 = *(v14 + v68 % 0x3C1);
  v71 = HIWORD(v31) & 0xF;
  LODWORD(STACK[0x588]) = v71;
  v72 = (v69 << 12) ^ (v62 << 8);
  v73 = (v66 ^ 0xDC ^ ((v70 >> 4) | 0x20)) * v8 + 88665;
  v74 = ((((v43 >> 12) & 0xF0 ^ 0xB58BEB9A) & (v71 ^ 0xB58BEBFF) | HIWORD(v31) & 5) ^ 0xB58BEBDE) * v8;
  v75 = (*(v14 + (v74 + 88665) % 0x3C1) ^ (16 * *(v14 + (v73 - 961 * ((4469269 * v73) >> 32)))) ^ 0xFC3) * v8;
  v76 = v27;
  v77 = v27 >> 12;
  v78 = *(v14 + v74 % 0x3C1) ^ (*(v14 + (v75 - 961 * ((4469269 * v75) >> 32))) >> 4) ^ 0xFC;
  v79 = ((((v41 >> 8) & 0x30 ^ 0xD89F571F) & (v77 ^ 0xD89F5733) | (v41 >> 8) & 0xC0) ^ 0xD89F57B2) * v8;
  v80 = (*(v14 + (v79 + 88665) % 0x3C1) ^ (16 * *(v14 + (v78 * v8 + 88665 - 961 * ((4469269 * (v78 * v8 + 88665)) >> 32)))) ^ 0xFC3) * v8;
  v81 = v80 + 87704;
  v82 = *(v14 + v79 % 0x3C1) ^ (*(v14 + (v80 - 961 * ((4469269 * v80) >> 32))) >> 4) ^ 0xFC;
  v83 = (((v41 >> 12) & 0xF0 | HIWORD(v27) & 0xF) ^ 0x42) * v8;
  v84 = v83 - 961 * ((4469269 * v83) >> 32);
  v85 = (*(v14 + (v83 + 88665 - 961 * ((4469269 * (v83 + 88665)) >> 32))) ^ (16 * *(v14 + (v82 * v8 + 88665 - 961 * ((4469269 * (v82 * v8 + 88665)) >> 32)))) ^ 0xFC3) * v8;
  v86 = v85 + 88665 - 961 * ((4469269 * (v85 + 88665)) >> 32);
  v87 = (16 * *(v14 + v57)) ^ 0x61F47A30;
  v88 = *(v14 + (v50 - 961 * ((4469269 * v50) >> 32))) ^ 0xED257E2E;
  v28 >>= 20;
  v89 = (*(v14 + v84) ^ (*(v14 + (v85 - 961 * ((4469269 * v85) >> 32))) >> 4) ^ 0xFC) * v8 + 88665;
  v90 = (*(v14 + (((HIWORD(v41) & 0xF0 ^ 0x8DDC30AF) & (v28 ^ 0x8DDC30F3) ^ 0x8DDC30F7) * v8 + 88665) % 0x3C1) ^ (16 * *(v14 + (v89 - 961 * ((4469269 * v89) >> 32)))) ^ 0xFC3) * v8 + 88665;
  v91 = v31 >> 12;
  v92 = v31 >> 12;
  v93 = ((((16 * v88) | 0x1ED27A0F) & (v33 & 0xF ^ 0x1ED27ACB) | (16 * v88) & 0x30) ^ 0x1ED27AD0) * v8 + 242190;
  v94 = v87 ^ 0xAEC73979 ^ v72;
  v95 = (v87 ^ v88) & 0xF0 ^ 0xB995BE4;
  v96 = v94 ^ (*(v14 + (v75 + 88665 - 961 * ((4469269 * (v75 + 88665)) >> 32))) << 16);
  v97 = v96 ^ (*(v14 + v81 % 0x3C1) << 20);
  v98 = v97 ^ ((*(v14 + v86) ^ 0xA8) << 24);
  v99 = v98 ^ (*(v14 + (v90 - 961 * ((4469269 * v90) >> 32))) << 28);
  v100 = *(v14 + v93 % 0x3C1);
  v101 = v100 ^ (16 * *(v14 + (((v95 & (v53 ^ 0x1F9F5FFA) | (v33 >> 4) & 0xB) ^ 0xB995B3F) * v8 + 242190) % 0x3C1));
  v102 = (*(v14 + (((((v72 >> 8) & 0xF0 ^ 0x910A2253) & (v92 ^ 0x933FBBF5) | v91 & 0xC) ^ 0x910A2293) * v8 + 242190) % 0x3C1) << 12) ^ (*(v14 + (((((v94 >> 4) & 0xF0 ^ 0xE49EDA4E) & (v59 ^ 0xE49EDAF4) | (v33 >> 8) & 1) ^ 0xE49EDABF) * v8 + 242190) % 0x3C1) << 8);
  v103 = v101 ^ 0x2A1B2C50 ^ v102;
  v104 = v103 ^ (*(v14 + (((((v96 >> 12) & 0xF0 ^ 0xE9745445) & (LODWORD(STACK[0x588]) ^ 0xE97454F9) | STACK[0x58C] & 0xA) ^ 0xE97454B5) * v8 + 242190) % 0x3C1) << 16);
  v105 = (*(v14 + (((((v98 >> 20) & 0xF0 ^ 0x63BA9128) & (HIWORD(v76) & 0xF ^ 0x67BE9FFF) | HIWORD(v76) & 7) ^ 0x63BA919A) * v8 + 242190) % 0x3C1) << 24) ^ (*(v14 + ((((HIWORD(v97) & 0xF0 ^ 0x8EE1C75B) & (v77 ^ 0x8EE1C7FE) | (v76 >> 12) & 4) ^ 0x8EE1C7AB) * v8 + 242190) % 0x3C1) << 20) ^ v104;
  v106 = ((v105 ^ (*(v14 + (((((16 * (v99 >> 28)) ^ 0xBF4BDE23) & (v28 ^ 0xFFEFDFFB) | v28 & 0xC) ^ 0xBF4BDE87) * v8 + 242190) % 0x3C1) << 28)) >> 28) ^ 0xE;
  v107 = *(v14 + (v106 * v8 + 209760 - 961 * ((4469269 * (v106 * v8 + 209760)) >> 32)));
  v108 = v107 >> 4;
  v109 = (HIBYTE(v105) & 0xF ^ 6) * v8 + 209760;
  v110 = 16 * v107;
  v111 = (16 * v107) ^ *(v14 + (v109 - 961 * ((4469269 * v109) >> 32)));
  v112 = ((v105 >> 20) & 0xF ^ 0xD) * v8 + 209760;
  v113 = (HIWORD(v104) & 0xF ^ 7) * v8 + 209760;
  v114 = ((v102 >> 12) ^ 0xC) * v8 + 209760;
  v115 = *(v14 + (v113 - 961 * ((4469269 * v113) >> 32))) << 8;
  v116 = ((*(v14 + (v112 - 961 * ((4469269 * v112) >> 32))) << 12) | (16 * *(v14 + (v114 - 961 * ((4469269 * v114) >> 32))))) ^ *(v14 + (((v103 >> 8) & 0xF) * v8 + 209760 - 961 * ((4469269 * (((v103 >> 8) & 0xF) * v8 + 209760)) >> 32))) ^ (v115 & 0x22002222 | 0x320049) ^ (v115 ^ 0xFF0C10) & ((v111 << 16) ^ 0x7DD10);
  v117 = ((v101 >> 4) ^ 0xC) * v8 + 209760;
  v118 = *(v14 + (v117 - 961 * ((4469269 * v117) >> 32)));
  v119 = *(v14 + ((v100 & 0xF ^ 3) * v8 + 209760 - 961 * ((4469269 * ((v100 & 0xF ^ 3u) * v8 + 209760)) >> 32)));
  v120 = STACK[0x510];
  LODWORD(STACK[0x580]) = LODWORD(STACK[0x508]) - LODWORD(STACK[0x510]);
  LODWORD(STACK[0x54C]) = (LODWORD(STACK[0x524]) - ((2 * LODWORD(STACK[0x524])) & 0x5305E608) - 1451035900) ^ (16 * v118) ^ 0xF8CFA8CB ^ (((v116 << 8) ^ 0xA88DCE8C) & (v119 ^ 0xFFFFFF0E) | v119 & 0x73);
  v121 = STACK[0x504];
  LODWORD(STACK[0x55C]) = a5 - LODWORD(STACK[0x504]);
  v122 = v120 ^ 0xA9949FC5;
  LODWORD(STACK[0x58C]) = v120 ^ 0xA9949FC5;
  LODWORD(STACK[0x538]) = v121 ^ 0xA9949FC5;
  v123 = LODWORD(STACK[0x46C]) + 567322003 + (v121 ^ 0xA9949FC5);
  v122 -= 811225211;
  LODWORD(STACK[0x584]) = v122;
  v124 = LODWORD(STACK[0x45C]) - v122;
  v125 = *(v14 + ((v123 >> 12) * v8 + 178365 - 961 * ((4469269 * ((v123 >> 12) * v8 + 178365)) >> 32)));
  v126 = *(v14 + (((v123 >> 8) & 0xF) * v8 + 178365 - 961 * ((4469269 * (((v123 >> 8) & 0xF) * v8 + 178365)) >> 32)));
  v127 = (*(v14 + ((HIBYTE(v123) & 0xF) * v8 + 178365) % (((v110 & 0x77777777 ^ 0x272B4732) & (v110 ^ 0x272B4342) ^ (((v108 & 3) << 8) | 0xF72FD473)) + 805006416)) << 8) ^ (*(v14 + ((v123 >> 28) * v8 + 178365 - 961 * ((4469269 * ((v123 >> 28) * v8 + 178365)) >> 32))) << 12) ^ (16 * *(v14 + (((v123 >> 20) & 0xF) * v8 + 178365 - 961 * ((4469269 * (((v123 >> 20) & 0xF) * v8 + 178365)) >> 32)))) ^ *(v14 + ((HIWORD(v123) & 0xF) * v8 + 178365 - 961 * ((4469269 * ((HIWORD(v123) & 0xF) * v8 + 178365)) >> 32)));
  LODWORD(STACK[0x57C]) = v127;
  LODWORD(STACK[0x570]) = v123;
  v128 = *(v14 + ((v123 & 0xF) * v8 + 178365 - 961 * ((4469269 * ((v123 & 0xF) * v8 + 178365)) >> 32)));
  v129 = (((v127 << 16) ^ 0xA2BBE465) & ((v126 << 8) ^ 0xFFFF1C67) | (v126 << 8) & 0x1B00) ^ (v125 << 12);
  v130 = (*(v14 + (345 * (HIBYTE(v124) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v124) & 0xF) + 178365)) >> 32))) << 8) ^ (*(v14 + (345 * (v124 >> 28) + 178365 - 961 * ((4469269 * (345 * (v124 >> 28) + 178365)) >> 32))) << 12);
  v131 = *(v14 + (345 * (HIWORD(v124) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v124) & 0xF) + 178365)) >> 32)));
  v132 = (((v130 ^ 0xD6BCA8) & (v131 ^ 0xFFFF5D) | v131 & 0x57) << 8) ^ (*(v14 + (345 * ((v124 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v124 >> 20) & 0xF) + 178365)) >> 32))) << 12);
  v133 = *(v14 + (345 * ((v124 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v124 >> 8) & 0xF) + 178365)) >> 32)));
  v134 = ((v132 ^ 0xC0606996) & (v133 ^ 0xFFFFFF4C) | v133 & 0x69) ^ (16 * *(v14 + (345 * (v124 >> 12) + 178365 - 961 * ((4469269 * (345 * (v124 >> 12) + 178365)) >> 32))));
  v135 = 345 * (v124 >> (((v134 & 0xBC ^ 0x38 | v134 & 0xBC ^ 0x84) + 72) & 0xFC)) + 178365;
  v136 = *(v14 + (345 * (v124 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v124 & 0xF) + 178365)) >> 32)));
  v137 = v128 & 0x54 ^ (16 * *(v14 + ((v123 >> 4) * v8 + 178365 - 961 * ((4469269 * ((v123 >> 4) * v8 + 178365)) >> 32)))) ^ (v129 ^ 0xE372E5CE) & (v128 ^ 0xFFFFFF0C);
  v138 = v136 | (v134 << 8);
  v139 = 345 * ((((16 * (v136 & 0xF)) | 0xFF7D2605) & (v128 & 0xF ^ 0xFF7F3EFC) | v128 & 0xA) ^ 0xFF7D2637);
  v140 = LODWORD(STACK[0x560]) ^ *(v14 + (v139 + 88665) % 0x3C1);
  v141 = v139 % 0x3C1;
  v142 = *(v14 + (v135 - 961 * ((4469269 * v135) >> 32))) ^ (v138 >> 4) ^ 0x4BDFC80;
  v143 = v137 >> 4;
  v144 = *(v14 + v141) ^ (*(v14 + (345 * v140 - 961 * ((4469269 * (345 * v140)) >> 32))) >> 4) ^ 0xFC;
  v145 = 345 * ((((16 * v142) ^ 0x90) & 0x70 ^ 0x990D292F) & (v143 ^ 0x990D2975) ^ ((((16 * v142) ^ 0x90) & 0x80) - 1727190663));
  v146 = (v145 + 88665) % 0x3C1;
  v147 = *(v14 + v145 % 0x3C1);
  v148 = 345 * v140 + 88665 - 961 * ((4469269 * (345 * v140 + 88665)) >> 32);
  v149 = 345 * (*(v14 + v146) ^ (16 * *(v14 + (345 * v144 + 88665 - 961 * ((4469269 * (345 * v144 + 88665)) >> 32)))) ^ 0xFC3);
  v150 = v149 + 88665 - 961 * ((4469269 * (v149 + 88665)) >> 32);
  v151 = 345 * ((v142 & 0xF0 | (v137 >> 8) & 0xF) ^ 0xD);
  v152 = 345 * (v147 ^ (*(v14 + (v149 - 961 * ((4469269 * v149) >> 32))) >> 4) ^ 0xFC) + 88665;
  v153 = 345 * (*(v14 + (v151 + 88665 - 961 * ((4469269 * (v151 + 88665)) >> 32))) ^ (16 * *(v14 + (v152 - 961 * ((4469269 * v152) >> 32)))) ^ 0xFC3);
  v154 = v153 + 88665 - 961 * ((4469269 * (v153 + 88665)) >> 32);
  v155 = *(v14 + (v151 - 961 * ((4469269 * v151) >> 32)));
  v156 = *(v14 + (v153 - 961 * ((4469269 * v153) >> 32)));
  LODWORD(STACK[0x534]) = v129;
  v157 = v129 >> 12;
  LODWORD(STACK[0x548]) = v157;
  v158 = 345 * (v155 ^ (v156 >> 4) ^ 0xFC) + 88665;
  v159 = 345 * ((v134 & 0xF0 ^ 0x616D7F9F) & (v157 ^ 0x616D7FF3) ^ 0x616D7F5F);
  v160 = 345 * (*(v14 + (v159 + 88665) % 0x3C1) ^ (16 * *(v14 + (v158 - 961 * ((4469269 * v158) >> 32)))) ^ 0xFC3);
  v161 = *(v14 + v159 % 0x3C1) ^ (*(v14 + (v160 - 961 * ((4469269 * v160) >> 32))) >> 4);
  v162 = (*(v14 + (v160 + 88665 - 961 * ((4469269 * (v160 + 88665)) >> 32))) << 12) ^ (*(v14 + v154) << 8);
  v163 = HIWORD(v129) & 0xF;
  LODWORD(STACK[0x53C]) = v163;
  v164 = 345 * ((((v134 >> 4) | 0xA498FB0F) & (v163 ^ 0xA498FBCB) | (v134 >> 4) & 0x30) ^ 0xA498FBDC);
  v165 = 345 * (*(v14 + (v164 + 88665) % 0x3C1) ^ (16 * *(v14 + (345 * (v161 ^ 0xFC) + 88665 - 961 * ((4469269 * (345 * (v161 ^ 0xFCu) + 88665)) >> 32)))) ^ 0xFC3);
  v166 = v165 + 88665 - 961 * ((4469269 * (v165 + 88665)) >> 32);
  v167 = 345 * (*(v14 + v164 % 0x3C1) ^ (*(v14 + (v165 - 961 * ((4469269 * v165) >> 32))) >> 4) ^ 0xFC) + 88665;
  v168 = 345 * (((v132 >> 8) & 0xF0 | (v127 >> 4) & 0xF) ^ 0xCC);
  v169 = 345 * (*(v14 + (v168 + 88665 - 961 * ((4469269 * (v168 + 88665)) >> 32))) ^ (16 * *(v14 + (v167 - 961 * ((4469269 * v167) >> 32)))) ^ 0xFC3);
  v170 = v169 + 88665 - 961 * ((4469269 * (v169 + 88665)) >> 32);
  v171 = 345 * (*(v14 + (v168 - 961 * ((4469269 * v168) >> 32))) ^ (*(v14 + (v169 - 961 * ((4469269 * v169) >> 32))) >> 4) ^ 0xFC) + 88665;
  v172 = (*(v14 + v170) << 20) ^ (*(v14 + v166) << 16);
  v173 = 345 * (((v132 >> 12) & 0x40 ^ (BYTE1(v127) & 0xF | 0x4F9FAA40) | (v132 >> 12) & 0xB0) ^ 0x4F9FAA4C);
  v174 = 345 * (*(v14 + (v173 + 88665) % 0x3C1) ^ (16 * *(v14 + (v171 - 961 * ((4469269 * v171) >> 32)))) ^ 0xFC3);
  v175 = v174 + 88665 - 961 * ((4469269 * (v174 + 88665)) >> 32);
  v176 = 345 * (*(v14 + v173 % 0x3C1) ^ (*(v14 + (v174 - 961 * ((4469269 * v174) >> 32))) >> 4) ^ 0xFC) + 88665;
  v177 = STACK[0x57C];
  v178 = LODWORD(STACK[0x57C]) >> 12;
  v179 = *(v14 + (345 * ((((v130 >> 8) & 0xF0 ^ 0x80052063) & (v178 ^ 0x852F3AFF) | 0x28800100) ^ ((v178 ^ 0x852F3AFF) & 0xC | 0xA88521A3)) + 88665) % 0x3C1) ^ (16 * *(v14 + (v176 - 961 * ((4469269 * v176) >> 32))));
  v180 = *(v14 + v148) ^ 0x7BC04BD1;
  v181 = v180 ^ (16 * *(v14 + v150));
  v182 = v162 ^ v181 ^ 0x96AA4018 ^ v172;
  v183 = v182 ^ ((*(v14 + v175) ^ 0x3B) << 24) ^ ((*(v14 + (345 * (v179 ^ 0xFC3) + 88665 - 961 * ((4469269 * (345 * (v179 ^ 0xFC3u) + 88665)) >> 32))) << 28) | 0x628FE97);
  v184 = ((16 * (v180 & 0xF)) ^ 0xA3E7DC89) & (v128 & 0xF ^ 0xA3E7DCF8);
  LODWORD(STACK[0x590]) ^= v6;
  v185 = STACK[0x518];
  v186 = v6 + LODWORD(STACK[0x518]);
  LODWORD(STACK[0x540]) = v186;
  v187 = STACK[0x520];
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x524]) + LODWORD(STACK[0x520]);
  v188 = v187 - LODWORD(STACK[0x580]);
  v189 = STACK[0x55C];
  v190 = STACK[0x538];
  v191 = (v185 - LODWORD(STACK[0x55C])) ^ LODWORD(STACK[0x538]);
  LODWORD(STACK[0x524]) = v191;
  v192 = v188 ^ LODWORD(STACK[0x58C]);
  LODWORD(STACK[0x528]) = v192;
  v193 = *(v14 + (345 * ((v184 | v128 & 6) ^ 0xA3E7DCAB) + 242190) % 0x3C1);
  v194 = v193 ^ (16 * *(v14 + (345 * (((v181 & 0x30 ^ 0x5E23D82F) & (v143 ^ 0x5E23D83A) | v181 & 0xC0) ^ 0x5E23D836u) + 242190) % 0x3C1));
  v195 = v194 ^ (*(v14 + (345 * (((((v162 ^ v181) >> 4) & 0xF0 ^ 0x4671CF3D) & ((v137 >> 8) & 0xF ^ 0xF6F9CFF2) | (v137 >> 8) & 2) ^ 0x4671CF4D) + 242190) % 0x3C1) << 8) ^ 0x25C5862F;
  v196 = (*(v14 + (345 * ((((v182 >> 12) & 0xF0 ^ 0xCA8F94A2) & (LODWORD(STACK[0x53C]) ^ 0xFABFB4FD) | HIWORD(LODWORD(STACK[0x534])) & 0xD) ^ 0xCA8F94C7) + 242190) % 0x3C1) << 16) ^ (*(v14 + (345 * ((((v162 >> 8) & 0xF0 ^ 0xBEBD682A) & (LODWORD(STACK[0x548]) ^ 0xBEBD68F3) | (LODWORD(STACK[0x534]) >> 12) & 5) ^ 0xBEBD68EE) + 242190) % 0x3C1) << 12) ^ v195;
  v197 = (*(v14 + (345 * (((HIWORD(v172) & 0xF0 ^ 0xA68B134B) & ((v127 >> 4) & 0xF ^ 0xF6FFBFF3) | (v177 >> 4) & 4) ^ 0xA68B138F) + 242190) % 0x3C1) << 20) ^ (*(v14 + (345 * (((v183 >> 20) & 0xF0 ^ 0x52D85C3F) & (BYTE1(v127) | 0x52D85CF0) ^ 0x52D85CFC) + 242190) % 0x3C1) << 24) ^ v196 ^ 0x1C4678F8;
  v198 = *(v14 + (345 * (((~HIBYTE(v183) | 0xFFFFFFDF) & (v178 ^ 0x9629FA2E) | HIBYTE(v183) & 0xD0) ^ 0x9629FA32) + 242190) % 0x3C1);
  v199 = v197 ^ (v198 << 28);
  v200 = HIBYTE(v197) & 0xF ^ 5;
  v201 = 345 * ((v197 ^ ~(v198 << 28)) >> 28) + 209760;
  v202 = (v199 ^ 0xF54F3214) >> ((v194 & 0x27 ^ 0x24) + (v194 & 0x27 ^ 3u) - 23);
  v203 = 345 * (((v202 - ((2 * v202) & 0xC0) - 32) >> 4) ^ 0xE) + 209760;
  v204 = (v196 >> 12) ^ 4;
  v205 = *(v14 + (345 * (v202 & 0xF) + 209760 - 961 * ((4469269 * (345 * (v202 & 0xF) + 209760)) >> 32)));
  v206 = (v205 ^ 0xFFFFFF3F) & ((*(v14 + (v201 - 961 * ((4469269 * v201) >> 32))) << 12) ^ (*(v14 + (345 * v200 + 209760 - 961 * ((4469269 * (345 * v200 + 209760)) >> 32))) << 8) ^ 0xF0CC) | v205 & 0x33333333;
  v207 = *(v14 + (345 * v204 + 209760 - 961 * ((4469269 * (345 * v204 + 209760)) >> 32)));
  v208 = *(v14 + (v203 - 961 * ((4469269 * v203) >> 32))) << 12;
  v209 = LODWORD(STACK[0x584]) - v192;
  LODWORD(v202) = v190 - 811225211 - v191;
  LODWORD(STACK[0x57C]) = v202;
  v210 = (v208 | (16 * v207)) ^ *(v14 + (345 * ((v195 >> 8) & 0x21400F ^ 0x21400A) + 209760) % 0x3C1);
  v211 = v206 << 16;
  v212 = 345 * ((v194 >> 4) ^ 0xC) + 209760;
  v213 = *(v14 + (v212 - 961 * ((4469269 * v212) >> 32)));
  v214 = LODWORD(STACK[0x454]) - 916272869 + v202;
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x570]) ^ (v186 + 2115481281);
  v215 = *(v14 + (345 * (v193 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v193 & 0xF ^ 3u) + 209760)) >> 32)));
  LODWORD(v202) = STACK[0x588];
  v216 = 2 * LODWORD(STACK[0x588]);
  LODWORD(STACK[0x53C]) = v216;
  LODWORD(STACK[0x584]) = (v202 - ((v216 + 2083478914) & 0x52D6355E) - 1484600976) ^ (16 * v213) ^ 0xCB602E6C ^ ((v211 ^ (v210 << 8) ^ 0xDECBF883) & (v215 ^ 0xFFFFFF20) | v215 & 0x7C);
  v217 = v190 + 622194310 + v189;
  LODWORD(STACK[0x55C]) = v217;
  v218 = *(v14 + (345 * (v214 >> 28) + 178365 - 961 * ((4469269 * (345 * (v214 >> 28) + 178365)) >> 32)));
  v219 = 345 * (((v205 & 0xF ^ 0xC) + (v205 & 0xF ^ 3)) & HIBYTE(v214)) + 178365;
  v220 = *(v14 + (v219 - 961 * ((4469269 * v219) >> 32)));
  v221 = ((2 * v209) & 0x92C59236) + (v209 ^ 0xC962C91B);
  LODWORD(STACK[0x538]) = v221;
  v222 = LODWORD(STACK[0x480]) - v221 - 1097716589;
  v223 = *(v14 + (345 * ((v214 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v214 >> 20) & 0xF) + 178365)) >> 32)));
  v224 = *(v14 + (345 * (HIWORD(v214) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v214) & 0xF) + 178365)) >> 32)));
  v225 = ((v224 ^ 0x5FFF08) & ((v218 << 12) ^ 0x5C27D9 ^ (v220 << 8))) + (v224 & 0x26);
  v226 = *(v14 + (345 * (v214 >> 12) + 178365 - 961 * ((4469269 * (345 * (v214 >> 12) + 178365)) >> 32)));
  v227 = *(v14 + (345 * ((v214 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v214 >> 8) & 0xF) + 178365)) >> 32)));
  LODWORD(STACK[0x534]) = v214;
  v228 = (v223 << 12) ^ (v225 << 8) ^ 0x2681CA;
  v229 = v228 & (v227 ^ 0xFFFF18);
  v230 = ((v229 | v227 & 0x35) << 8) ^ (v226 << 12);
  v231 = *(v14 + (345 * (v214 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v214 & 0xF) + 178365)) >> 32)));
  v232 = ((v230 ^ 0xB560A5) & (v231 ^ 0xFFFFFF0C) | v231 & 0x5A) ^ (16 * *(v14 + (345 * (v214 >> 4) + 178365 - 961 * ((4469269 * (345 * (v214 >> 4) + 178365)) >> 32))));
  v233 = *(v14 + (345 * (HIWORD(v222) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v222) & 0xF) + 178365)) >> 32)));
  v234 = *(v14 + (345 * (v222 >> 12) + 178365 - 961 * ((4469269 * (345 * (v222 >> 12) + 178365)) >> 32)));
  v235 = (v233 ^ 0x4FFF04) & ((*(v14 + (345 * (v222 >> 28) + 178365 - 961 * ((4469269 * (345 * (v222 >> 28) + 178365)) >> 32))) << 12) ^ (*(v14 + (345 * (HIBYTE(v222) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v222) & 0xF) + 178365)) >> 32))) << 8) ^ 0x429F64) | v233 & 0x9B;
  v236 = *(v14 + (345 * ((v222 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v222 >> 8) & 0xF) + 178365)) >> 32)));
  LOBYTE(v191) = *(v14 + (345 * (v222 >> 4) + 178365 - 961 * ((4469269 * (345 * (v222 >> 4) + 178365)) >> 32)));
  v237 = 345 * (v222 & 0xF) + 178365;
  v238 = (*(v14 + (345 * ((v222 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v222 >> 20) & 0xF) + 178365)) >> 32))) << 12) ^ (v235 << 8) ^ 0x4845D4;
  v239 = v238 & (v236 ^ 0xFFFF2C);
  v240 = (v239 | v236 & 0x2B) << 8;
  v241 = *(v14 + (v237 - 961 * ((4469269 * v237) >> 32)));
  v242 = v240 ^ (v234 << 12);
  v243 = (v242 ^ 0xF6913A60) & (v241 ^ 0xFFFFFF90) | v241 & 0x90;
  v244 = v231 & 0xF;
  v245 = 345 * ((((16 * (v241 & 0xF)) ^ 0x37F95A2A) & (v244 ^ 0xF7FB5BFC) | v231 & 5) ^ 0x37F95A1B);
  LOBYTE(v243) = v191 ^ (v243 >> 4);
  v246 = 345 * (LODWORD(STACK[0x560]) ^ *(v14 + (v245 + 88665) % 0x3C1));
  v247 = v246 + 88665 - 961 * ((4469269 * (v246 + 88665)) >> 32);
  v248 = 345 * (*(v14 + v245 % 0x3C1) ^ (*(v14 + (v246 - 961 * ((4469269 * v246) >> 32))) >> 4) ^ 0xFC) + 88665;
  v249 = 345 * ((((16 * (v243 & 0xF)) ^ 0xCA7D76EE) & ((v232 >> 4) ^ 0xDEFF77F3) | (v232 >> 4) & 1) ^ 0xCA7D762E);
  LOWORD(v247) = *(v14 + v247);
  v250 = *(v14 + (v248 - 961 * ((4469269 * v248) >> 32)));
  v251 = *(v14 + (v249 + 88665) % 0x3C1);
  v252 = LODWORD(STACK[0x58C]) + 622194310 + LODWORD(STACK[0x580]);
  LODWORD(STACK[0x570]) = v252;
  v253 = 345 * (v251 ^ (16 * v250) ^ 0xFC3);
  v254 = v243 & 0xF0;
  v255 = v253 - 961 * ((4469269 * v253) >> 32);
  v256 = v247 ^ (16 * *(v14 + (v253 + 88665 - 961 * ((4469269 * (v253 + 88665)) >> 32))));
  v257 = 345 * (*(v14 + v249 % 0x3C1) ^ (*(v14 + v255) >> 4) ^ 0xFC) + 88665;
  v258 = *(v14 + (v257 - 961 * ((4469269 * v257) >> 32)));
  v259 = (v232 >> 8) & 0xF;
  v260 = 345 * ((v254 ^ 0xE649C2FF) & (v259 ^ 0xFF4BDAFB) ^ 0xE649C2DF);
  v261 = v260 % 0x3C1;
  v262 = *(v14 + (v260 + 88665) % 0x3C1) ^ (16 * v258) ^ 0xFC3;
  v263 = 345 * v262;
  v264 = v230 ^ 0xE8479289;
  v265 = v242 ^ 0x5B83101D;
  if (v262 >= 3)
  {
    v266 = (345 * v262 - 961) % 0x3C1;
  }

  else
  {
    v266 = 345 * v262;
  }

  v267 = *(v14 + v261) ^ (*(v14 + v266) >> 4) ^ 0xFC;
  v268 = 345 * (((v265 >> 8) & 0xF0 | (v264 >> 12)) ^ 0xD5);
  v269 = 345 * (*(v14 + (v268 + 88665 - 961 * ((4469269 * (v268 + 88665)) >> 32))) ^ (16 * *(v14 + (345 * v267 + 88665 - 961 * ((4469269 * (345 * v267 + 88665)) >> 32)))) ^ 0xFC3);
  v270 = v256 ^ (*(v14 + (v263 + 88665 - 961 * ((4469269 * (v263 + 88665)) >> 32))) << 8) ^ 0x1412;
  v271 = *(v14 + (v269 + 88665 - 961 * ((4469269 * (v269 + 88665)) >> 32))) << 12;
  v272 = *(v14 + (v268 - 961 * ((4469269 * v268) >> 32))) ^ (*(v14 + (v269 - 961 * ((4469269 * v269) >> 32))) >> 4);
  v273 = HIWORD(v264) & 0xF;
  v274 = 345 * (v272 ^ 0xFC) + 88665 - 961 * ((4469269 * (345 * (v272 ^ 0xFCu) + 88665)) >> 32);
  v275 = 345 * ((((v265 >> 12) & 0xF0 ^ 0xBA15FF4E) & (v273 ^ 0xBA15FFFC) | HIWORD(v264) & 1) ^ 0xBA15FFAE);
  v276 = (v275 + 88665) % 0x782;
  if (v276 >= 0x3C1)
  {
    v276 -= 961;
  }

  v277 = 345 * (*(v14 + v276) ^ (16 * *(v14 + v274)) ^ 0xFC3);
  v278 = (v271 & 0x2C000 ^ v270 & 0xC4F8 ^ 0xCE3D3B27) & (v270 & 0x3B07 ^ 0xCE336160 ^ v271 & 0xD3000) | (v271 & 0x2C000 ^ v270 & 0xC4F8) & 0x8498;
  v279 = 345 * (*(v14 + v275 % 0x3C1) ^ (*(v14 + (v277 - 961 * ((4469269 * v277) >> 32))) >> 4) ^ 0xFC) + 88665;
  v280 = 345 * (((v238 >> 8) & 0xF0 | (v228 >> 12)) ^ 0x84);
  v281 = 345 * (*(v14 + (v280 + 88665 - 961 * ((4469269 * (v280 + 88665)) >> 32))) ^ (16 * *(v14 + (v279 - 961 * ((4469269 * v279) >> 32)))) ^ 0xFC3);
  v282 = v281 + 88665 - 961 * ((4469269 * (v281 + 88665)) >> 32);
  v283 = 345 * (*(v14 + (v280 - 961 * ((4469269 * v280) >> 32))) ^ (*(v14 + (v281 - 961 * ((4469269 * v281) >> 32))) >> 4) ^ 0xFC) + 88665;
  v284 = 345 * (((v238 >> 12) & 0xF0 | HIWORD(v228) & 0xF) ^ 0xBD);
  v285 = 345 * (*(v14 + (v284 + 88665 - 961 * ((4469269 * (v284 + 88665)) >> 32))) ^ (16 * *(v14 + (v283 - 961 * ((4469269 * v283) >> 32)))) ^ 0xFC3);
  v286 = *(v14 + (v285 - 961 * ((4469269 * v285) >> 32)));
  v287 = 345 * (*(v14 + (v284 - 961 * ((4469269 * v284) >> 32))) ^ (v286 >> 4) ^ 0xFC) + 88665;
  v288 = ((v239 >> 20) ^ 1) << ((v286 & 4 ^ 4) + (v286 & 4));
  v289 = v229 >> 20;
  v290 = *(v14 + (345 * (v289 ^ 0x88876D65 ^ (v288 - 2004390555 - ((2 * v288) & 0x10EDAD2) + 4)) + 88665) % 0x3C1);
  v291 = v285 + 88665 - 961 * ((4469269 * (v285 + 88665)) >> 32);
  v292 = 345 * (v290 ^ (16 * *(v14 + (v287 - 961 * ((4469269 * v287) >> 32)))) ^ 0xFC3) + 88665;
  v293 = v292 - 961 * ((4469269 * v292) >> 32);
  v294 = 345 * ((v244 & 0xFFFFFF0F | (16 * ((v278 ^ 0xD6262BC6) & 0xF))) ^ 0x73) + 242190;
  v295 = v294 - 961 * ((4469269 * v294) >> 32);
  v296 = (345 * (((v256 & 0xF0 ^ 0x9002DA40) & 0x2D2D0 ^ ((v232 >> 4) | 0x68FC2150) | (v256 & 0xF0 ^ 0x9002DA40) & 0x90000820) ^ 0xF8FEFBDC) + 242190) % 0x3C1;
  v297 = (LODWORD(STACK[0x528]) - 1904250375) ^ 0x99FED924;
  v298 = (345 * (((v278 >> 4) & 0x40 ^ (v259 | 0xFD004140) | (v278 >> 4) & 0xB0) ^ 0xFD0041D4) + 242190) % 0x3C1;
  v299 = (LODWORD(STACK[0x524]) - 1904250375) ^ 0x99FED924;
  v300 = *(v14 + (v277 + 88665 - 961 * ((4469269 * (v277 + 88665)) >> 32)));
  v301 = (345 * (((v278 >> 8) | 0x819D8E0F) & ((v264 >> 12) ^ 0x819D8EF1) ^ 0x819D8EF4) + 242190) % 0x3C1;
  v302 = (v278 ^ 0xD6262BC6 ^ (v300 << 16)) >> 12;
  v303 = v299 ^ v217;
  v304 = *(v14 + v282) ^ 0x81BF7BBC;
  v305 = *(v14 + v291) ^ 0x32A84E7B;
  v306 = *(v14 + v295);
  v307 = v306 ^ (16 * *(v14 + v296));
  v308 = v307 ^ (*(v14 + v298) << 8) ^ 0x972F2FDB;
  v309 = *(v14 + v301);
  v310 = 345 * (((v302 & 0xD0 ^ 0x2504024F) & (v273 ^ 0x250402DA) | v302 & 0x20) ^ 0x250402F8) + 242190;
  v311 = (v304 ^ (16 * v305)) & 0xF0;
  v312 = (((v300 ^ (16 * v304)) & 0x20) - 420152106) ^ ((v300 ^ (16 * v304)) & 0xD0 | (v228 >> 12)) ^ 0xE6F4FCD2;
  v313 = v308 ^ (v309 << 12);
  v314 = v313 ^ (*(v14 + v310 % 0x3C1) << 16) ^ 0xAC5BC23A;
  v315 = v314 ^ ((*(v14 + (345 * v312 + 242190) % 0x3C1) ^ 0xC9) << 20);
  v316 = 345 * ((v311 & 0xFFFFFFF0 | HIWORD(v228) & 0xF) ^ 0xCD) + 242190;
  v317 = v305 ^ (16 * *(v14 + v293));
  v318 = v315 ^ (*(v14 + (v316 - 961 * ((4469269 * v316) >> 32))) << 24) ^ 0xE17E21F0;
  v319 = 345 * (((v318 ^ (*(v14 + (345 * (v317 & 0x50 ^ 0x355D02B5 ^ (v317 | 0x355D020F) & (v289 ^ 0x355D02A9)) + 242190) % 0x3C1) << 28)) >> 28) ^ 1) + 209760;
  v320 = 345 * (HIBYTE(v318) & 0xF ^ 0xA) + 209760;
  v321 = 345 * ((v315 >> 20) & 0xF ^ 2) + 209760;
  v322 = 345 * (HIWORD(v314) & 0xF ^ 8) + 209760;
  v323 = *(v14 + (v322 - 961 * ((4469269 * v322) >> 32)));
  v324 = ((v323 | 0x5FFF00) & ((*(v14 + (v319 - 961 * ((4469269 * v319) >> 32))) << 12) ^ 0x59D063 ^ (*(v14 + (v320 - 961 * ((4469269 * v320) >> 32))) << 8))) + (v323 & 0x9C);
  v325 = 345 * ((v313 >> 12) ^ 0xE) + 209760;
  v326 = 345 * ((v308 >> 8) & 0xF ^ 3) + 209760;
  v327 = *(v14 + (v326 - 961 * ((4469269 * v326) >> 32)));
  v328 = *(v14 + (v321 - 961 * ((4469269 * v321) >> 32))) << 12;
  v329 = 345 * ((v307 >> 4) ^ 0xC) + 209760;
  v330 = STACK[0x540];
  v331 = LODWORD(STACK[0x540]) - 376547882;
  v332 = (v328 ^ (v324 << 8) ^ 0xB9B496) & (v327 ^ 0xFFFF24) | v327 & 0x69;
  v333 = *(v14 + (345 * (v306 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v306 & 0xF ^ 3u) + 209760)) >> 32)));
  v334 = STACK[0x57C];
  v335 = v299 + LODWORD(STACK[0x57C]);
  v336 = STACK[0x588];
  LODWORD(STACK[0x58C]) = (LODWORD(STACK[0x588]) - ((LODWORD(STACK[0x53C]) + 1878956) & 0xE3ACE0) + 1778396230) ^ (16 * *(v14 + (v329 - 961 * ((4469269 * v329) >> 32)))) ^ 0x38FEBCBF ^ (((*(v14 + (v325 - 961 * ((4469269 * v325) >> 32))) << 12) ^ (v332 << 8) ^ 0x1DF7A2BF) & (v333 ^ 0xFFFFFF4C) | v333 & 0x40);
  LODWORD(STACK[0x57C]) = v334 + 42830828;
  LODWORD(STACK[0x53C]) = (v297 ^ v252) + v336;
  LODWORD(STACK[0x580]) = LODWORD(STACK[0x534]) ^ v331;
  v337 = (v334 + 42830828) ^ 0xB1537A40;
  LODWORD(STACK[0x588]) = v337;
  v338 = v337 + LODWORD(STACK[0x458]);
  LODWORD(STACK[0x528]) = v303 + v330;
  v339 = STACK[0x538];
  LODWORD(STACK[0x534]) = LODWORD(STACK[0x538]) + v297;
  v339 += 959103697;
  LODWORD(STACK[0x540]) = v339;
  v340 = v339 ^ 0xB1537A40;
  v341 = LODWORD(STACK[0x450]) - (v339 ^ 0xB1537A40) - 1306110211;
  v342 = *(v14 + (345 * (HIWORD(v338) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v338) & 0xF) + 178365)) >> 32)));
  v343 = *(v14 + (345 * ((v338 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v338 >> 8) & 0xF) + 178365)) >> 32)));
  v344 = (*(v14 + (345 * ((v338 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v338 >> 20) & 0xF) + 178365)) >> 32))) << 12) ^ (((v342 ^ 0x1FFF04) & ((*(v14 + (345 * (v338 >> 28) + 178365 - 961 * ((4469269 * (345 * (v338 >> 28) + 178365)) >> 32))) << 12) ^ (*(v14 + (345 * (HIBYTE(v338) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v338) & 0xF) + 178365)) >> 32))) << 8) ^ 0x1F19E4) | v342 & 0x1B) << 8) ^ 0x53C878;
  v345 = v344 & (v343 ^ 0xFFFF88);
  v346 = ((v345 | v343 & 0xFFFFFF87) << 8) ^ (*(v14 + (345 * (v338 >> 12) + 178365 - 961 * ((4469269 * (345 * (v338 >> 12) + 178365)) >> 32))) << 12);
  v347 = *(v14 + (345 * (v338 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v338 & 0xF) + 178365)) >> 32)));
  v348 = ((v346 ^ 0xD62EDD2D) & (v347 ^ 0xFFFFFF4E) | v347 & 0xD2) ^ (16 * *(v14 + (345 * (v338 >> 4) + 178365 - 961 * ((4469269 * (345 * (v338 >> 4) + 178365)) >> 32))));
  v349 = *(v14 + (345 * (HIWORD(v341) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v341) & 0xF) + 178365)) >> 32)));
  v350 = (v349 ^ 0xFFFF0C) & ((*(v14 + (345 * (v341 >> 28) + 178365 - 961 * ((4469269 * (345 * (v341 >> 28) + 178365)) >> 32))) << 12) ^ (*(v14 + (345 * (HIBYTE(v341) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v341) & 0xF) + 178365)) >> 32))) << 8) ^ 0xF97B7C) | v349 & 0xFFFFFF83;
  v351 = 345 * (v341 >> 4) + 178365 - 961 * ((4469269 * (345 * (v341 >> 4) + 178365)) >> 32);
  v352 = *(v14 + (345 * ((v341 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v341 >> 8) & 0xF) + 178365)) >> 32)));
  v353 = *(v14 + (345 * (v341 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v341 & 0xF) + 178365)) >> 32)));
  v354 = (*(v14 + (345 * ((v341 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v341 >> 20) & 0xF) + 178365)) >> 32))) << 12) ^ (v350 << 8) ^ 0xAAEA68;
  v355 = v354 & (v352 ^ 0xFFFF8F);
  v356 = ((v355 | v352 & 0x97) << 8) ^ (*(v14 + (345 * ((LOWORD(STACK[0x450]) - (v339 ^ 0x7A40) + 22269) >> 12) + 178365 - 961 * ((4469269 * (345 * ((LOWORD(STACK[0x450]) - (v339 ^ 0x7A40) + 22269) >> 12) + 178365)) >> 32))) << 12);
  v357 = (v356 ^ 0xC3CC3CD0) & (v353 ^ 0xFFFFFF20) | v353 & 0x20;
  v358 = 345 * ((((16 * (v353 & 0xF)) ^ 0x4D69D1CD) & (v347 & 0xF ^ 0x4D69D1FC) | v347 & 2) ^ 0x4D69D1FF);
  v359 = 345 * (LODWORD(STACK[0x560]) ^ *(v14 + (v358 + 88665) % 0x3C1));
  v360 = v359 + 88665 - 961 * ((4469269 * (v359 + 88665)) >> 32);
  LOBYTE(v351) = *(v14 + v351) ^ (v357 >> 4);
  v361 = 345 * (*(v14 + v358 % 0x3C1) ^ (*(v14 + v359 % (1736398555 * (v348 & 0x40620010 ^ 0xEEB6ACA7 ^ (v348 & 0xE272AC93 ^ 0xCC408B7) & (v348 & 0xE272AC93 ^ 0xBFDCB734)))) >> 4) ^ 0xFC) + 88665;
  v362 = 345 * (((v348 >> 4) | (16 * (v351 & 0xF))) ^ 0xCC);
  v363 = 345 * (*(v14 + (v362 + 88665 - 961 * ((4469269 * (v362 + 88665)) >> 32))) ^ (16 * *(v14 + (v361 - 961 * ((4469269 * v361) >> 32)))) ^ 0xFC3);
  v364 = 345 * (*(v14 + (v362 - 961 * ((4469269 * v362) >> 32))) ^ (*(v14 + (v363 - 961 * ((4469269 * v363) >> 32))) >> 4) ^ 0xFC) + 88665;
  v365 = 345 * ((v351 & 0xF0 | (v348 >> 8) & 0xF) ^ 0x89);
  v366 = v363 + 88665 - 961 * ((4469269 * (v363 + 88665)) >> 32);
  v367 = *(v14 + (v365 + 88665 - 961 * ((4469269 * (v365 + 88665)) >> 32))) ^ (16 * *(v14 + (v364 - 961 * ((4469269 * v364) >> 32))));
  v368 = v365 - 961 * ((4469269 * v365) >> 32);
  v369 = 345 * (v367 ^ 0xFC3);
  v370 = v369 + 88665 - 961 * ((4469269 * (v369 + 88665)) >> 32);
  v371 = 345 * (*(v14 + v368) ^ (*(v14 + (v369 - 961 * ((4469269 * v369) >> 32))) >> 4) ^ 0xFC) + 88665;
  v346 ^= 0xD34D9460;
  v356 ^= 0x900CC444;
  v372 = 345 * (((v356 >> 8) & 0xF0 ^ 0xB42DB85) & ((v346 >> 12) | 0x9B77DBF0) ^ ((v346 >> 12) & 0xA | 0xB42DB85));
  v373 = 345 * (*(v14 + (v372 + 88665) % 0x3C1) ^ (16 * *(v14 + (v371 - 961 * ((4469269 * v371) >> 32)))) ^ 0xFC3);
  v374 = v373 + 88665 - 961 * ((4469269 * (v373 + 88665)) >> 32);
  v375 = 345 * (*(v14 + v372 % 0x3C1) ^ (*(v14 + (v373 - 961 * ((4469269 * v373) >> 32))) >> 4) ^ 0xFC) + 88665;
  v376 = 345 * (((v356 >> 12) & 0xF0 | HIWORD(v346) & 0xF) ^ 0x6D);
  v377 = (*(v14 + v374) << 12) ^ (*(v14 + v370) << 8);
  v378 = 345 * (*(v14 + (v376 + 88665 - 961 * ((4469269 * (v376 + 88665)) >> 32))) ^ (16 * *(v14 + (v375 - 961 * ((4469269 * v375) >> 32)))) ^ 0xFC3);
  v379 = v378 + 88665 - 961 * ((4469269 * (v378 + 88665)) >> 32);
  v380 = 345 * (*(v14 + (v376 - 961 * ((4469269 * v376) >> 32))) ^ (*(v14 + (v378 - 961 * ((4469269 * v378) >> 32))) >> 4) ^ 0xFC) + 88665;
  v381 = 345 * (((v354 >> 8) & 0xF0 | (v344 >> 12)) ^ 0x20);
  v382 = 345 * (*(v14 + (v381 + 88665 - 961 * ((4469269 * (v381 + 88665)) >> 32))) ^ (16 * *(v14 + (v380 - 961 * ((4469269 * v380) >> 32)))) ^ 0xFC3);
  v383 = (*(v14 + (v382 + 88665 - 961 * ((4469269 * (v382 + 88665)) >> 32))) << 20) ^ (*(v14 + v379) << 16);
  v384 = *(v14 + (v381 - 961 * ((4469269 * v381) >> 32))) ^ (*(v14 + (v382 - 961 * ((4469269 * v382) >> 32))) >> 4);
  v385 = HIWORD(v344) & 0xF;
  v386 = 345 * ((((v354 >> 12) & 0xA0 ^ 0x710C512F) & (v385 ^ 0x710C51AB) | (v354 >> 12) & 0x50) ^ 0x710C51FD);
  v387 = *(v14 + (v386 + 88665) % 0x3C1) ^ (16 * *(v14 + (345 * (v384 ^ 0xFC) + 88665 - 961 * ((4469269 * (345 * (v384 ^ 0xFCu) + 88665)) >> 32))));
  v388 = *(v14 + v386 % 0x3C1);
  LOBYTE(v374) = (v388 & 4 ^ 4) + (v388 & 4);
  v389 = 345 * (v387 ^ 0xFC3);
  v345 >>= 20;
  v390 = 345 * (v388 ^ (*(v14 + (v389 - 961 * ((4469269 * v389) >> 32))) >> 4) ^ 0xFC) + 88665;
  v391 = *(v14 + (v390 - 961 * ((4469269 * v390) >> 32)));
  v392 = v389 + 88665 - 961 * ((4469269 * (v389 + 88665)) >> 32);
  v393 = 345 * (*(v14 + (345 * (v345 ^ 0x74410683 ^ ((((v355 >> 20) ^ 1) << v374) + 1950418563 - ((2 * (((v355 >> 20) ^ 1) << v374)) & 0x820D16) + 8)) + 88665) % 0x3C1) ^ (16 * v391) ^ 0xFC3) + 88665;
  v394 = *(v14 + v360);
  v395 = v394 ^ (16 * *(v14 + v366));
  v396 = (345 * ((((16 * (v394 & 0xF)) ^ 0x3039B818) & (v347 & 0xF ^ 0x7F79BAF9) | v347 & 7) ^ 0x3039B82Bu) + 242190) % 0x3C1;
  v397 = v395 ^ 0x1EC4CC84 ^ v377;
  v398 = 16 * ((v396 & 0x82 ^ 0x3882) + (v396 & 0x82)) + 817360;
  v399 = v383 ^ v397;
  v400 = 345 * (((v398 & 0x34930 ^ 0x4A27C7D8 ^ v398 & 0xFF9F0 & (v383 ^ v397 ^ 0xB4970)) & ((v348 >> 4) ^ 0xCEFFFFF1) | (v348 >> 4) & 7) ^ 0x4A27C7DC) + 242190;
  v401 = ((v397 >> 4) & 0xF0 ^ 0x234A199D) & ((v348 >> 8) & 0xF ^ 0x234A19F6) | (v348 >> 8) & 2;
  v402 = *(v14 + v396);
  v403 = v402 ^ (16 * *(v14 + v400 % 0x3C1));
  v404 = v403 ^ 0x662E58AA ^ (*(v14 + (345 * (v401 ^ 0x234A199Du) + 242190) % 0x3C1) << 8);
  v405 = 345 * ((((v377 >> 8) & 0xF0 ^ 0xB557AF2C) & ((v346 >> 12) ^ 0xB557AFFA) | (v346 >> 12) & 3) ^ 0xB557AFED) + 242190;
  v399 ^= 0x42E329AEu;
  v406 = v399 ^ (*(v14 + v392) << 24);
  v407 = (345 * ((((v399 >> 12) | 0x7559FE0F) & (HIWORD(v346) & 0xF ^ 0x7559FE35) | (v399 >> 12) & 0xC0) ^ 0x7559FEB8) + 242190) % 0x3C1;
  v408 = STACK[0x528];
  v409 = LODWORD(STACK[0x528]) - v335 + 539724987;
  v410 = (((v406 >> 20) & 0xF0 ^ 0xAA4ED764) & (v385 ^ 0xEE5FF7F2) | HIWORD(v344) & 0xB) ^ 0xAA4ED766;
  v411 = (v406 ^ (*(v14 + (v393 - 961 * ((4469269 * v393) >> 32))) << 28)) >> 24;
  v412 = STACK[0x53C];
  v413 = STACK[0x534];
  v414 = LODWORD(STACK[0x53C]) - LODWORD(STACK[0x534]);
  v415 = STACK[0x588];
  v416 = v335 - 916272869 + LODWORD(STACK[0x588]);
  LODWORD(STACK[0x518]) = v416;
  v417 = *(v14 + v405 % 0x3C1);
  v418 = v340 + v413;
  LODWORD(STACK[0x520]) = v340 + v413;
  v419 = v404 ^ (v417 << 12);
  v420 = v419 ^ (*(v14 + v407) << 16) ^ 0x9DA8FE53;
  v421 = v420 ^ (*(v14 + (345 * ((HIWORD(v383) & 0xF0 ^ 0xBE64D79E) & ((v344 >> 12) ^ 0xFE7DF7FE) ^ ((v344 >> 12) & 1 | 0xBE64D75E)) + 242190) % 0x3C1) << 20);
  v422 = ((v411 & 0x70 ^ 0x613526F) & (v345 ^ 0x6135278) | v411 & 0x80) ^ 0x61352F0;
  v423 = v421 ^ ((*(v14 + (345 * v410 + 242190) % 0x3C1) ^ 0x11111111) << 24) ^ 0xD3864171;
  v424 = 345 * ((v423 ^ ~(*(v14 + (345 * v422 + 242190) % 0x3C1u) << 28)) >> 28) + 209760;
  v425 = 345 * (HIBYTE(v423) & 0xF ^ 5) + 209760;
  v426 = 345 * ((v421 >> 20) & 0xF ^ 4) + 209760;
  v427 = 345 * (HIWORD(v420) & 0xF ^ 0xA) + 209760;
  v428 = 16 * *(v14 + (v426 - 961 * ((4469269 * v426) >> 32)));
  v429 = *(v14 + (v427 - 961 * ((4469269 * v427) >> 32)));
  v430 = ((v429 ^ 0xFF04) & ((*(v14 + (v424 - 961 * ((4469269 * v424) >> 32))) << 12) ^ (*(v14 + (v425 - 961 * ((4469269 * v425) >> 32))) << 8) ^ 0xAEC5) | v429 & 0x3A) ^ v428;
  v431 = 345 * ((v403 >> 4) ^ 0xC) + 209760;
  v432 = *(v14 + (v431 - 961 * ((4469269 * v431) >> 32)));
  v433 = *(v14 + (345 * (v402 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v402 & 0xF ^ 3u) + 209760)) >> 32)));
  v434 = *(v14 + 345 * (((v428 & 0x260 ^ 0x40) + (v428 & 0x260 ^ 0x220)) & ((v404 >> 8) & 0xF ^ 0x6FE397EB) | ~((v404 >> 8) & 0xF ^ 0x6FE397EB) & 0x6FE397AF) % 0x3C1) << 8;
  v435 = ((((v430 << 16) ^ 0xF1C83568) & (v434 ^ 0xFFFF4669) | v434 & 0xCA00) ^ (*(v14 + (345 * ((v419 >> 12) ^ 9u) + 209760) % (((345 * ((v419 >> 12) ^ 9) + 209760) | (159 - 345 * ((v419 >> 12) ^ 9))) & 0x3C1u)) << 12) ^ 0x991F81F6) & (v433 ^ 0xFFFFFF0C);
  LODWORD(STACK[0x528]) = v415 - 376547882 + v408;
  v436 = v409 ^ v338;
  LODWORD(STACK[0x588]) = (v414 - ((2 * v414 + 1394387884) & 0x5F33D848) + 422068730) ^ (16 * v432) ^ v433 & 0x61 ^ 0x2586A5EB ^ v435;
  LODWORD(STACK[0x524]) = v412 - 376547882 + v340;
  v437 = LODWORD(STACK[0x540]) ^ 0xC244DE74 ^ v418;
  LODWORD(STACK[0x534]) = v437;
  v438 = LODWORD(STACK[0x47C]) - v437;
  v439 = LODWORD(STACK[0x57C]) ^ 0xC244DE74 ^ v416;
  LODWORD(STACK[0x540]) = v439;
  v440 = v439 + LODWORD(STACK[0x470]);
  v438 += 1224377652;
  v441 = *(v14 + (345 * (HIWORD(v440) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v440) & 0xF) + 178365)) >> 32)));
  v442 = *(v14 + (345 * ((v440 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v440 >> 8) & 0xF) + 178365)) >> 32)));
  v443 = (*(v14 + (345 * ((v440 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v440 >> 20) & 0xF) + 178365)) >> 32))) << 12) ^ (((v441 | 0x4FFF00) & ((*(v14 + (345 * (v440 >> 28) + 178365 - 961 * ((4469269 * (345 * (v440 >> 28) + 178365)) >> 32))) << 12) ^ (*(v14 + (345 * (HIBYTE(v440) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v440) & 0xF) + 178365)) >> 32))) << 8) ^ 0x4485B0) | v441 & 0x4F) << 8) ^ 0x816B49;
  v444 = v443 & (v442 ^ 0xFFFFBE);
  v445 = ((v444 | v442 & 0xB6) << 8) ^ (*(v14 + (345 * (v440 >> 12) + 178365 - 961 * ((4469269 * (345 * (v440 >> 12) + 178365)) >> 32))) << 12);
  LOBYTE(v439) = *(v14 + (345 * (v440 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v440 & 0xF) + 178365)) >> 32)));
  v446 = *(v14 + (345 * (HIWORD(v438) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v438) & 0xF) + 178365)) >> 32)));
  v447 = 345 * (v438 >> 4) + 178365 - 961 * ((4469269 * (345 * (v438 >> 4) + 178365)) >> 32);
  v448 = *(v14 + (345 * ((v438 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v438 >> 8) & 0xF) + 178365)) >> 32)));
  v449 = (*(v14 + (345 * ((v438 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v438 >> 20) & 0xF) + 178365)) >> 32))) << 12) ^ (((v446 ^ 0x4FFF0C) & ((*(v14 + (345 * (v438 >> 28) + 178365 - 961 * ((4469269 * (345 * (v438 >> 28) + 178365)) >> 32))) << 12) ^ (*(v14 + (345 * (HIBYTE(v438) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v438) & 0xF) + 178365)) >> 32))) << 8) ^ 0x43850F) | v446 & 0xF0) << 8) ^ 0x3D6764;
  v450 = v449 & (v448 ^ 0xFFFF94) | v448 & 0x9B;
  v451 = v438 & 0xF;
  v452 = (v450 << 8) ^ (*(v14 + (345 * (v438 >> 12) + 178365 - 961 * ((4469269 * (345 * (v438 >> 12) + 178365)) >> 32))) << 12);
  v453 = *(v14 + (345 * v451 + 178365 - 961 * ((4469269 * (345 * v451 + 178365)) >> 32)));
  v454 = (v452 ^ 0xFF3B5820) & (v453 ^ 0xFFFFFFD0) | v453 & 0xD0;
  v455 = v439 & 0xF;
  v456 = *(v14 + (345 * (v440 >> 4) + 178365 - 961 * ((4469269 * (345 * (v440 >> 4) + 178365)) >> 32))) ^ (((v445 ^ 0x54538C10) & (v439 | 0xFFFFFF00) | v439 & 0xE0) >> 4);
  v457 = 345 * ((v455 | (16 * (v453 & 0xF))) ^ 0x33);
  v458 = v457 - 961 * ((4469269 * v457) >> 32);
  v459 = LODWORD(STACK[0x560]) ^ *(v14 + (v457 + 88665 - 961 * ((4469269 * (v457 + 88665)) >> 32)));
  LOBYTE(v457) = *(v14 + v447) ^ (v454 >> 4);
  v459 *= 345;
  LODWORD(STACK[0x53C]) = v459 + 88665 - 961 * ((4469269 * (v459 + 88665)) >> 32);
  v460 = 345 * (*(v14 + v458) ^ (*(v14 + (v459 - 961 * ((4469269 * v459) >> 32))) >> 4) ^ 0xFC) + 88665;
  v461 = 345 * ((((16 * (v457 & 0xF)) ^ 0x281EB126) & (v456 & 0xF ^ 0x28DEBBF3) | v456 & 9) ^ 0x281EB1EE);
  v462 = *(v14 + (v460 - 961 * ((4469269 * v460) >> 32))) ^ 0xF3;
  v463 = 345 * (*(v14 + (v461 + 88665) % 0x3C1) ^ 0x397EA43A ^ (16 * v462 + 964600890 - ((32 * v462) & 0x980) + 143));
  LODWORD(STACK[0x538]) = (v463 + 88665) % 0x3C1;
  v464 = *(v14 + v461 % 0x3C1) ^ (*(v14 + v463 % 0x3C1) >> 4);
  v465 = v456 >> 4;
  v466 = 345 * (((v457 & 0xF0 | 0xA9BFED08) & (v465 ^ 0xABFFEDF6) | (v456 >> 4) & 7) ^ 0xA9BFED08);
  v467 = 345 * (*(v14 + (v466 + 88665) % 0x3C1) ^ (16 * *(v14 + (345 * (v464 ^ 0xFC) + 88665 - 961 * ((4469269 * (345 * (v464 ^ 0xFCu) + 88665)) >> 32)))) ^ 0xFC3);
  v468 = *(v14 + v466 % 0x3C1);
  v469 = *(v14 + (v467 - 961 * ((4469269 * v467) >> 32)));
  LODWORD(STACK[0x510]) = v467 + 88665 - 961 * ((4469269 * (v467 + 88665)) >> 32);
  v470 = 345 * (v468 ^ (v469 >> 4) ^ 0xFC) + 88665;
  v452 ^= 0xF2BE49E6;
  v471 = v445 ^ 0x719F1BAF;
  v472 = (v445 ^ 0x1BAF) >> 12;
  v473 = 345 * ((((v452 >> 8) & 0xF0 ^ 0x3FDF60F2) & (v472 ^ 0x3FFFFFFF) | (v471 >> 12) & 0xD) ^ 0x3FDF607F);
  v474 = 345 * (*(v14 + (v473 + 88665) % 0x3C1) ^ (16 * *(v14 + (v470 - 961 * ((4469269 * v470) >> 32)))) ^ 0xFC3);
  v475 = v474 + 88665 - 961 * ((4469269 * (v474 + 88665)) >> 32);
  v476 = 345 * (*(v14 + v473 % 0x3C1) ^ (*(v14 + (v474 - 961 * ((4469269 * v474) >> 32))) >> 4) ^ 0xFC) + 88665;
  v477 = HIWORD(v471) & 0xF;
  v478 = 345 * ((((v452 >> 12) & 0xF0 ^ 0xE9B960FD) & (v477 ^ 0xE9B960F5) | HIWORD(v471) & 2) ^ 0xE9B9606D);
  v479 = 345 * (*(v14 + (v478 + 88665) % 0x3C1) ^ (16 * *(v14 + (v476 - 961 * ((4469269 * v476) >> 32)))) ^ 0xFC3);
  v480 = v479 + 88665 - 961 * ((4469269 * (v479 + 88665)) >> 32);
  v481 = 345 * (*(v14 + v478 % 0x3C1) ^ (*(v14 + (v479 - 961 * ((4469269 * v479) >> 32))) >> 4) ^ 0xFC) + 88665;
  v482 = 345 * (((v449 >> 8) & 0xF0 | (v443 >> 12)) ^ 0xAA);
  v483 = 345 * (*(v14 + (v482 + 88665 - 961 * ((4469269 * (v482 + 88665)) >> 32))) ^ (16 * *(v14 + (v481 - 961 * ((4469269 * v481) >> 32)))) ^ 0xFC3);
  v484 = v483 + 88665 - 961 * ((4469269 * (v483 + 88665)) >> 32);
  v485 = 345 * (*(v14 + (v482 - 961 * ((4469269 * v482) >> 32))) ^ (*(v14 + (v483 - 961 * ((4469269 * v483) >> 32))) >> 4) ^ 0xFC) + 88665;
  v486 = HIWORD(v443) & 0xF;
  v487 = 345 * ((((v449 >> 12) & 0xB0) - 1857688764) ^ ((v449 >> 12) | 0x9145EB0F) & (v486 ^ 0x9145EB4C));
  v488 = v487 % 0x3C1;
  v489 = 345 * (*(v14 + (v487 + 88665) % 0x3C1) ^ (16 * *(v14 + (v485 - 961 * ((4469269 * v485) >> 32)))) ^ 0xFC3);
  v490 = v489 + 88665 - 961 * ((4469269 * (v489 + 88665)) >> 32);
  v491 = *(v14 + v488) ^ (*(v14 + (v489 - 961 * ((4469269 * v489) >> 32))) >> 4);
  LODWORD(STACK[0x57C]) = v436;
  v492 = 345 * ((v436 & 0x101 ^ 0x101) + (v436 & 0x101) + (v491 ^ 0xFC));
  v493 = HIWORD(v449);
  v494 = v444 >> 20;
  v495 = 345 * (*(v14 + (345 * (((v493 & 0x90 ^ 0xE5DA878F) & ((v444 >> 20) ^ 0xE5DA8794) | v493 & 0x60) ^ 0xE5DA87F8) + 88665) % 0x3C1) ^ (16 * *(v14 + (v492 - 961 * ((4469269 * v492) >> 32)))) ^ 0xFC3) + 88665;
  v496 = *(v14 + LODWORD(STACK[0x53C])) ^ 0xC205AA7D;
  v497 = 345 * ((v455 & 0xFFFFFF0F | (16 * (v496 & 0xF))) ^ 0xE3) + 242190;
  v498 = v497 - 961 * ((4469269 * v497) >> 32);
  v499 = *(v14 + LODWORD(STACK[0x538])) ^ 0x1402F9DF;
  v500 = (345 * ((((v496 ^ (16 * v499)) & 0x60 ^ 0x2CF7272F) & (v456 & 0xF ^ 0x2CF72761) | (v496 ^ (16 * v499)) & 0x90) ^ 0x2CF7276D) + 242190) % 0x3C1;
  v501 = *(v14 + LODWORD(STACK[0x510])) ^ 0xBAB51C12;
  v502 = (345 * ((((v499 ^ (16 * v501)) & 0xF0 ^ 0x99CD1C9) & (v465 ^ 0x99CD1F7) | (v456 >> 4) & 6) ^ 0x99CD1F9) + 242190) % 0x3C1;
  v503 = *(v14 + v475) ^ 0x90E5BCF8;
  v504 = (345 * (((v501 ^ (16 * v503) | 0xF881CC0F) & (v472 ^ 0xF881CC41) | (v501 ^ (16 * v503)) & 0xB0) ^ 0xF881CC5C) + 242190) % 0x3C1;
  v505 = *(v14 + v480) ^ 0xC8B93C8C;
  v506 = (345 * (((v503 ^ (16 * v505) | 0x76CC4E0F) & (v477 ^ 0x76CC4EE3) | (v503 ^ (16 * v505)) & 0x10) ^ 0x76CC4EFB) + 242190) % 0x3C1;
  v507 = *(v14 + v484) ^ 0xB7DA394;
  v508 = (345 * ((((v505 ^ (16 * v507)) & 0xF0 ^ 0xD02DC2D) & ((v443 >> 12) ^ 0x6D26FCF5) | (v443 >> 12) & 2) ^ 0xD02DC2F) + 242190) % 0x3C1;
  v509 = STACK[0x528];
  v510 = STACK[0x518];
  v511 = (LODWORD(STACK[0x55C]) ^ 0x9AEC140E) - 94563726 - LODWORD(STACK[0x528]) - LODWORD(STACK[0x518]);
  LODWORD(STACK[0x538]) = v511;
  v512 = v511 ^ v509;
  v513 = STACK[0x524];
  v514 = STACK[0x520];
  v515 = (LODWORD(STACK[0x570]) ^ 0x9AEC140E) - 94563726 - LODWORD(STACK[0x524]) - LODWORD(STACK[0x520]);
  LODWORD(STACK[0x53C]) = v515;
  v516 = v515 ^ v513;
  LOBYTE(v436) = *(v14 + (v495 - 961 * ((4469269 * v495) >> 32)));
  v517 = *(v14 + v490) ^ 0x8BCEF8EC;
  v518 = *(v14 + v498);
  v519 = v518 ^ (16 * *(v14 + v500));
  v520 = v519 ^ (*(v14 + v502) << 8) ^ 0xC24C9E34;
  v521 = v520 ^ (*(v14 + v504) << 12);
  v522 = (*(v14 + v506) << 16) ^ (*(v14 + v508) << 20) ^ v521 ^ 0x5CBD230E;
  v523 = v522 ^ ((*(v14 + (345 * ((((v507 ^ (16 * v517)) & 0x60) - 1381227110) ^ (v507 ^ (16 * v517) | 0xADAC250F) & (v486 ^ 0xADAC2592)) + 242190) % 0x3C1) ^ 0x77777777) << 24) ^ 0x4CCFAFF9;
  v524 = v523 ^ (*(v14 + (345 * ((((v517 ^ (16 * v436)) & 0xF0 ^ 0x4A40A54A) & (v494 ^ 0x4A40A5F6) | v494 & 5) ^ 0x4A40A56E) + 242190) % 0x3C1) << 28);
  v525 = HIWORD(v522) & 0xF ^ 0xD;
  v526 = 345 * (HIBYTE(v523) & 0xF ^ 9) + 209760;
  v527 = 345 * ((v522 >> 20) & 0xF ^ 3) + 209760;
  v528 = *(v14 + (345 * v525 + 209760 - 961 * ((4469269 * (345 * v525 + 209760)) >> 32)));
  v529 = 345 * ((v521 >> 12) ^ 5) + 209760;
  v530 = *(v14 + (v529 - 961 * ((4469269 * v529) >> 32)));
  v531 = 345 * ((v520 >> 8) & 0xF ^ 2) + 209760;
  v532 = *(v14 + (v531 - 961 * ((4469269 * v531) >> 32)));
  v533 = (v528 | 0xFF00) & ((*(v14 + (345 * ((v524 >> 28) ^ 6) + 209760 - 961 * ((4469269 * (345 * ((v524 >> 28) ^ 6) + 209760)) >> 32))) << 12) ^ (*(v14 + (v526 - 961 * ((4469269 * v526) >> 32))) << 8) ^ 0xF87011) | v528 & 0xEEEEEEEE;
  v534 = *(v14 + (v527 - 961 * ((4469269 * v527) >> 32))) << 12;
  v535 = 345 * ((v519 >> 4) ^ 0xC) + 209760;
  v536 = v512 ^ (v510 - 1548310512);
  LODWORD(STACK[0x570]) = v536;
  v537 = (v534 ^ (v533 << 8) ^ 0x10E9E2) & (v532 ^ 0xFFFF0C) | v532 & 0x1D;
  v538 = *(v14 + (v535 - 961 * ((4469269 * v535) >> 32)));
  v539 = LODWORD(STACK[0x540]) - v536;
  LODWORD(STACK[0x528]) = v539 + v512;
  v540 = *(v14 + (345 * (v518 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v518 & 0xF ^ 3u) + 209760)) >> 32)));
  v541 = v516 ^ (v514 - 1548310512);
  LODWORD(STACK[0x518]) = v541;
  v542 = v539 + v512 + v539;
  LODWORD(STACK[0x500]) = v542;
  v543 = LODWORD(STACK[0x440]) + 872510758 + v542;
  LODWORD(STACK[0x540]) = (v516 - ((2 * v516) & 0x3649B24E) - 1692083929) ^ (v530 << 12) ^ (16 * v538) ^ v540 ^ (v537 << 8);
  v544 = LODWORD(STACK[0x534]) - v541;
  LODWORD(STACK[0x55C]) = v544 + v516;
  v545 = v544 + v516 + v544;
  LODWORD(STACK[0x508]) = v545;
  v546 = LODWORD(STACK[0x488]) - v545;
  v547 = *(v14 + (345 * (HIWORD(v543) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v543) & 0xF) + 178365)) >> 32)));
  v548 = 345 * (v543 >> 12) + 178365 - 961 * ((4469269 * (345 * (v543 >> 12) + 178365)) >> 32);
  v549 = (((v547 ^ 0x7FFF08) & ((*(v14 + (345 * (v543 >> 28) + 178365 - 961 * ((4469269 * (345 * (v543 >> 28) + 178365)) >> 32))) << 12) ^ (*(v14 + (345 * (HIBYTE(v543) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v543) & 0xF) + 178365)) >> 32))) << 8) ^ 0x7989D8) | v547 & 0x27) << 8) ^ (*(v14 + (345 * ((v543 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v543 >> 20) & 0xF) + 178365)) >> 32))) << 12);
  LODWORD(STACK[0x534]) = v549;
  v550 = 345 * ((v548 & 0x205) + ((v543 >> 8) & 0xF) + (v548 & 0x205 ^ 0x205));
  v551 = *(v14 + (v550 - 961 * ((4469269 * v550) >> 32)));
  v552 = v549 ^ 0x6A0591;
  v553 = (v549 ^ 0x6A0591) & (v551 ^ 0xFFFF0E);
  v554 = ((v553 | v551 & 0x6E) << 8) ^ (*(v14 + v548) << 12);
  v555 = *(v14 + (345 * (v543 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v543 & 0xF) + 178365)) >> 32)));
  v556 = ((v554 ^ 0x3B8D9314) & (v555 ^ 0xFFFFFFC7) | v555 & 0xEB) ^ (16 * *(v14 + (345 * (v543 >> 4) + 178365 - 961 * ((4469269 * (345 * (v543 >> 4) + 178365)) >> 32))));
  v557 = (*(v14 + (345 * (HIBYTE(v546) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v546) & 0xF) + 178365)) >> 32))) << 8) ^ (*(v14 + (345 * (v546 >> 28) + 178365 - 961 * ((4469269 * (345 * (v546 >> 28) + 178365)) >> 32))) << 12);
  v558 = 16 * *(v14 + (345 * ((v546 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v546 >> 20) & 0xF) + 178365)) >> 32)));
  v559 = (v558 ^ 0x5FEF17B2) & (v557 ^ 0x5FF01CFF);
  v560 = (v558 ^ 0x9F00) & (v557 ^ 0xE304) ^ v557 & 0x9000;
  v561 = (v557 & 0xE700 | *(v14 + (345 * (HIWORD(v546) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v546) & 0xF) + 178365)) >> 32)))) ^ v559;
  v562 = 345 * (v546 >> 4) + 178365 - 961 * ((4469269 * (345 * (v546 >> 4) + 178365)) >> 32);
  v563 = *(v14 + (345 * ((v546 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v546 >> 8) & 0xF) + 178365)) >> 32)));
  v564 = v560 ^ v561;
  v565 = ((((v560 ^ v561) << 16) ^ 0xDFC46AF9) & ((v563 << 8) ^ 0xFFFF18FD) | (v563 << 8) & 0x9500) ^ (*(v14 + (345 * (v546 >> 12) + 178365 - 961 * ((4469269 * (345 * (v546 >> 12) + 178365)) >> 32))) << 12);
  LOBYTE(v546) = *(v14 + (345 * (v546 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v546 & 0xF) + 178365)) >> 32)));
  v566 = (v565 ^ 0x5C1092E0) & (v546 | 0xFFFFFF00) ^ v546 & 0xE0;
  v567 = 345 * ((((16 * (v546 & 0xF)) ^ 0x55AF2244) & (v555 & 0xF ^ 0x55AF22FE) | v555 & 0xB) ^ 0x55AF2277);
  v568 = v567 % 0x3C1;
  v569 = 345 * (LODWORD(STACK[0x560]) ^ *(v14 + (v567 + 88665) % 0x3C1));
  v570 = v569 + 88665 - 961 * ((4469269 * (v569 + 88665)) >> 32);
  LOBYTE(v567) = *(v14 + v562) ^ (v566 >> 4);
  v571 = 345 * (*(v14 + v568) ^ (*(v14 + (v569 - 961 * ((4469269 * v569) >> 32))) >> 4) ^ 0xFC) + 88665;
  v572 = 345 * (((v556 >> 4) | (16 * (v567 & 0xF))) ^ 0xCC);
  v573 = 345 * (*(v14 + (v572 + 88665 - 961 * ((4469269 * (v572 + 88665)) >> 32))) ^ (16 * *(v14 + (v571 - 961 * ((4469269 * v571) >> 32)))) ^ 0xFC3);
  v574 = v573 + 88665 - 961 * ((4469269 * (v573 + 88665)) >> 32);
  v575 = 345 * (*(v14 + (v572 - 961 * ((4469269 * v572) >> 32))) ^ (*(v14 + (v573 - 961 * ((4469269 * v573) >> 32))) >> 4) ^ 0xFC) + 88665;
  v576 = 345 * ((v567 & 0xF0 | (v556 >> 8) & 0xF) ^ 0x6F);
  v577 = 345 * (*(v14 + (v576 + 88665 - 961 * ((4469269 * (v576 + 88665)) >> 32))) ^ (16 * *(v14 + (v575 - 961 * ((4469269 * v575) >> 32)))) ^ 0xFC3);
  v578 = v577 + 88665 - 961 * ((4469269 * (v577 + 88665)) >> 32);
  v579 = 345 * (*(v14 + (v576 - 961 * ((4469269 * v576) >> 32))) ^ (*(v14 + (v577 - 961 * ((4469269 * v577) >> 32))) >> 4) ^ 0xFC) + 88665;
  v580 = v579 - 961 * ((4469269 * v579) >> 32);
  v581 = v554 ^ 0x5D6142;
  v582 = (v554 ^ 0x6142) >> 12;
  v583 = 345 * ((((v565 >> 8) & 0x50 ^ 0x5EB1951F) & (v582 ^ 0x5EB19551) | (v565 >> 8) & 0xA0) ^ 0x5EB195DB);
  v584 = 345 * (*(v14 + (v583 + 88665) % 0x3C1) ^ (16 * *(v14 + v580)) ^ 0xFC3);
  v585 = v584 + 88665 - 961 * ((4469269 * (v584 + 88665)) >> 32);
  v586 = v584 - 961 * ((4469269 * v584) >> 32);
  v587 = (v565 >> 12) & 0xF0 ^ 0x7E173BF;
  v588 = HIWORD(v581) & 0xF;
  v589 = (v586 & 0x101) + (v586 & 0x101 ^ 0x101) + (*(v14 + v583 % 0x3C1) ^ (*(v14 + v586) >> 4) ^ 0xFC);
  v590 = 345 * (v587 & (v588 ^ 0x67F3FFF3) ^ 0x7E1731F);
  v591 = *(v14 + (345 * v589 - 961 * ((4469269 * (345 * v589)) >> 32)));
  v592 = (*(v14 + v585) << 12) ^ (*(v14 + v578) << 8);
  v593 = 345 * (*(v14 + (v590 + 88665) % 0x3C1) ^ (16 * v591) ^ 0xFC3);
  v594 = v593 + 88665 - 961 * ((4469269 * (v593 + 88665)) >> 32);
  v595 = 345 * (*(v14 + v590 % 0x3C1) ^ (*(v14 + (v593 - 961 * ((4469269 * v593) >> 32))) >> 4) ^ 0xFC) + 88665;
  v596 = 345 * ((v561 & 0xF0 | (LODWORD(STACK[0x534]) >> 12)) ^ 0x7C);
  v597 = 345 * (*(v14 + (v596 + 88665 - 961 * ((4469269 * (v596 + 88665)) >> 32))) ^ (16 * *(v14 + (v595 - 961 * ((4469269 * v595) >> 32)))) ^ 0xFC3);
  v598 = v597 - 961 * ((4469269 * v597) >> 32);
  v599 = (*(v14 + (v597 + 88665 - 961 * ((4469269 * (v597 + 88665)) >> 32))) << 20) ^ (*(v14 + v594) << 16);
  v600 = 345 * (*(v14 + (v596 - 961 * ((4469269 * v596) >> 32))) ^ (*(v14 + v598) >> 4) ^ 0xFC) + 88665;
  v601 = HIWORD(v552) & 0xF;
  v602 = 345 * ((((v564 >> 4) & 0xF0 ^ 0x2FEBBE71) & (v601 ^ 0x7FFFFFF8) | HIWORD(v552) & 0xE) ^ 0x2FEBBECF);
  v603 = 345 * (*(v14 + (v602 + 88665) % 0x3C1) ^ (16 * *(v14 + (v600 - 961 * ((4469269 * v600) >> 32)))) ^ 0xFC3);
  v553 >>= 20;
  v604 = 345 * (*(v14 + v602 % 0x3C1) ^ (*(v14 + (v603 - 961 * ((4469269 * v603) >> 32))) >> 4) ^ 0xFC) + 88665;
  v605 = 345 * (*(v14 + (345 * (((v564 >> 8) & 0xF0 ^ 0x8719375F) & (v553 ^ 0x871937FD) ^ 0x8719370F) + 88665) % 0x3C1) ^ (16 * *(v14 + (v604 - 961 * ((4469269 * v604) >> 32)))) ^ 0xFC3) + 88665;
  v606 = *(v14 + v570) ^ 0xD9A35D36;
  v607 = v606 ^ (16 * *(v14 + v574));
  v608 = v592 ^ v607 ^ 0xEA0F704C ^ v599;
  v609 = v608 ^ ((*(v14 + (v603 + 88665 - 961 * ((4469269 * (v603 + 88665)) >> 32))) ^ 0xE4) << 24) ^ (*(v14 + (v605 - 961 * ((4469269 * v605) >> 32))) << 28);
  v610 = (*(v14 + (345 * ((((v592 >> 8) & 0xF0 ^ 0xA0F0FB74) & (v582 ^ 0xFFF7FFFC) | (v581 >> 12) & 0xB) ^ 0xA0F0FBBE) + 242190) % 0x3C1) << 12) ^ (*(v14 + (345 * (((((v592 ^ v607) >> 4) & 0xF0 ^ 0xBE5DF989) & ((v556 >> 8) & 0xF ^ 0xBF5DF9F6) | (v556 >> 8) & 6) ^ 0xBE5DF99F) + 242190) % 0x3C1) << 8);
  v611 = (345 * ((((v608 >> 12) & 0xF0 ^ 0x5C7BDB87) & (v588 ^ 0x5CFFFFF3) | HIWORD(v581) & 8) ^ 0x5C7BDB8F) + 242190) % 0x3C1;
  v612 = *(v14 + (345 * ((((16 * (v606 & 0xF)) ^ 0xD53F5796) & (v555 & 0xF ^ 0xD53F57FD) | v555 & 9) ^ 0xD53F57C7) + 242190) % 0x3C1);
  v613 = v612 ^ (16 * *(v14 + (345 * (((v607 & 0xF0 ^ 0x1BD594FB) & ((v556 >> 4) ^ 0x9FDD9DF7) | (v556 >> 4) & 4) ^ 0x1BD5940F) + 242190) % 0x3C1));
  v614 = v613 ^ 0x61721B57 ^ v610;
  v615 = v614 ^ (*(v14 + v611) << 16);
  v616 = v615 ^ (*(v14 + (345 * (((HIWORD(v599) & 0xF0 ^ 0xA1CAF791) & ((LODWORD(STACK[0x534]) >> 12) ^ 0xB9FFF7F7) | (LODWORD(STACK[0x534]) >> 12) & 0xE) ^ 0xA1CAF75D) + 242190) % 0x3C1) << 20);
  v617 = v616 ^ ((*(v14 + (345 * ((((v609 >> 20) | 0xC1280F0F) & (v601 ^ 0xC1280F84) | (v609 >> 20) & 0x70) ^ 0xC1280FBB) + 242190) % 0x3C1) ^ 0xBD) << 24) ^ 0x39D89173;
  v618 = v617 ^ ((*(v14 + (345 * ((((16 * (v609 >> 28)) ^ 0xB9089C85) & (v553 ^ 0xBDB8BDFF) | v553 & 0xAAAAAAAA) ^ 0xB9089C97) + 242190) % 0x3C1) ^ 2) << 28);
  v619 = 345 * (v618 >> 28) + 209760 - 961 * ((4469269 * (345 * (v618 >> 28) + 209760)) >> 32);
  v620 = 345 * (HIBYTE(v617) & 0xF ^ 9) + 209760;
  v621 = v620 - 961 * ((4469269 * v620) >> 32);
  v622 = 345 * ((v616 >> 20) & 0xF ^ 0xB) + 209760;
  v623 = v622 - 961 * ((4469269 * v622) >> 32);
  v624 = 345 * (HIWORD(v615) & 0xF ^ 0xE) + 209760;
  v625 = v624 - 961 * ((4469269 * v624) >> 32);
  v626 = STACK[0x538];
  v627 = LODWORD(STACK[0x528]) ^ 0xC69FEEC6;
  v628 = STACK[0x500];
  v629 = LODWORD(STACK[0x500]) ^ (LODWORD(STACK[0x538]) + 933577417);
  v630 = (((*(v14 + v621) << 8) | 0x40) ^ (*(v14 + v619) << 12) ^ 0x15DAC) & (*(v14 + v625) ^ 0x1FF1C) | *(v14 + v625) & 0x13;
  v631 = 345 * ((v610 >> 12) ^ 0xC) + 209760;
  v632 = *(v14 + v623) << 12;
  v633 = (v613 >> 4) ^ 0x26C;
  LODWORD(STACK[0x534]) = v633;
  v634 = *(v14 + (v631 - 961 * ((4469269 * v631) >> 32)));
  v635 = 345 * ((v614 >> 8) & 0xF ^ 7) + 209760;
  v636 = *(v14 + (v635 - 961 * ((4469269 * v635) >> 32)));
  LODWORD(STACK[0x524]) = (v633 & 0x49) + ((v613 >> 4) & 9 ^ 0x111);
  LODWORD(STACK[0x528]) = v629 - v628;
  v637 = 345 * (v612 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v612 & 0xF ^ 3u) + 209760)) >> 32);
  v638 = (v632 ^ (v630 << 8) ^ 0x68C1D9) & (v636 ^ 0xFFFF28) | v636 & 0x26;
  v639 = *(v14 + v637);
  v640 = v626 + 937283 + LODWORD(STACK[0x570]);
  LODWORD(STACK[0x520]) = v640;
  LODWORD(STACK[0x538]) = ((v634 << 12) ^ (v638 << 8) ^ 0x3D538F28) & (v639 ^ 0xFFFFFF5A) | v639 & 0xD7;
  LODWORD(STACK[0x570]) = (v627 + 101452214 + (v637 & 0x24A) + (v637 & 0x24A ^ 0xF9F3F64A)) ^ v543;
  v641 = STACK[0x53C];
  v642 = LODWORD(STACK[0x53C]) + 937283 + LODWORD(STACK[0x518]);
  LODWORD(STACK[0x504]) = v642;
  LODWORD(STACK[0x510]) = v627 + v640;
  LODWORD(STACK[0x518]) = v628 ^ 0x99F73683 ^ (v627 + v640);
  v643 = STACK[0x508];
  v644 = LODWORD(STACK[0x508]) ^ (v641 + 933577417);
  v645 = (LODWORD(STACK[0x55C]) ^ 0xC69FEEC6) + v642;
  LODWORD(STACK[0x4FC]) = v645;
  LODWORD(STACK[0x500]) = v644 - v643;
  LODWORD(STACK[0x53C]) = v643 ^ 0x99F73683 ^ v645;
  LODWORD(STACK[0x534]) = LODWORD(STACK[0x4C0]) + 1513018752;
  LODWORD(STACK[0x4E0]) = 16 * (LODWORD(STACK[0x550]) ^ 0xF3);
  v646 = STACK[0x56C];
  v647 = 52 * (LODWORD(STACK[0x56C]) ^ 0x6EA);
  LODWORD(STACK[0x310]) = v647;
  LODWORD(STACK[0x4DC]) = v647 - 5487;
  STACK[0x4D0] = *(&off_1F5090370 + (v646 ^ 0x79C));
  JUMPOUT(0x1D4D5FB4CLL);
}

uint64_t sub_1D4D61634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = (*(&a10 + v10) ^ 0x6E73F9FF) + 2 * *(&a10 + v10);
  v14 = v13 + ((v11 - 1944) ^ 0x130F74F6) > 0x81836BF2;
  if (v13 < 0x6E73F9FF)
  {
    v14 = 1;
  }

  return (*(v12 + 8 * ((2456 * v14) ^ (v11 - 1944))))();
}

uint64_t sub_1D4D6173C()
{
  LODWORD(STACK[0x5FC]) = 16257999;
  *STACK[0x430] = v1;
  LODWORD(STACK[0x41C]) = 16257999;
  return (*(v3 + 8 * ((124 * ((((((v2 + 2034) ^ 0x2FC9) - 1460) | 8) ^ 0xF81BC7) == 16257999)) ^ (v2 + 2034) ^ 0x2FC9)))();
}

uint64_t sub_1D4D61758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * (((&a12 | 0x3D71331B) - &a12 + (&a12 & 0xC28ECCE0)) ^ 0xF6A688B);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((62 * (a13 != 16257999)) ^ 0x1512u)))(v14);
}

uint64_t sub_1D4D61884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    v13 = *(v12 + 40) == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  return (*(a1 + 8 * ((v14 * ((((a9 + 1178359096) & 0xB9C39F9D) + 1738) ^ 0x1C46)) | a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

void sub_1D4D618D8(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = 1875091903 * ((2 * ((v19 - 232) & 0x462A7AE8) - (v19 - 232) + 970294546) ^ 0xFA00691);
  *(v19 - 208) = a16;
  *(v19 - 224) = v16;
  *(v19 - 216) = a1 - v20 + 461;
  *(v19 - 212) = ((((v17 ^ 0xA8A1D81B) + 1465788389) ^ ((v17 ^ 0xF5064C2C) + 184136660) ^ ((((a1 ^ 0x23) + 1449265433) ^ v17) - 1449266532)) - 2025953222) ^ v20;
  (*(v18 + 8 * (a1 + 8527)))(v19 - 232);
  JUMPOUT(0x1D4D619B4);
}

uint64_t sub_1D4D61A04@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v1 - 1047) | 0x470) - 1399723895) & 0x536E2F29;
  v4 = (((*(a1 + 116) ^ 0x615BE08C) - 1633411212) ^ ((*(a1 + 116) ^ 0xBCF0E847) + 1125062585) ^ ((*(a1 + 116) ^ 0xD66EB4B1 ^ v3) + 697396840)) + 544559425;
  *(a1 + 116) = v4 ^ ((v4 ^ 0xC01EDD70) + 726570339) ^ ((v4 ^ 0xED04840B) + 106220570) ^ ((v4 ^ 0x65A116B) - 318088838) ^ ((v4 ^ 0x3FEFFFFD) - 725633040) ^ 0x1F6A2EBE;
  v5 = STACK[0x978];
  v6 = STACK[0x770];
  v7 = &STACK[0xBB0] + STACK[0x770];
  STACK[0x990] = v7;
  v8 = v7 + 16;
  STACK[0x970] = (v7 + 16);
  STACK[0x628] = (v7 + 48);
  STACK[0x770] = v6 + 80;
  (*(v2 + 8 * (v3 + 87)))();
  v9 = (*(STACK[0x400] + 8 * (v3 ^ 0xA9)))(v8, 0, 32);
  v10 = STACK[0x400];
  STACK[0x858] = 0;
  STACK[0x558] = 0;
  LODWORD(STACK[0x76C]) = 197499219;
  STACK[0x738] = 0;
  LODWORD(STACK[0x6F8]) = 0;
  STACK[0x5B8] = v5;
  return (*(v10 + 8 * (((((v3 - 9353) | 7) - 136) * (v5 == 0)) ^ v3)))(v9);
}

uint64_t sub_1D4D61CA8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = (*(v57 + 8 * (a1 ^ 0x2F89)))();
  *(v56 + 24) = 0;
  return sub_1D4D5799C(v58, v59, v60, v61, v62, v63, v64, v65, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1D4D61CE0@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if (*(v2 + 16) == ((14 * (v3 ^ 0xFC4)) ^ 0x25A8E440))
  {
    v4 = a2 - 1;
  }

  else
  {
    v4 = a2;
  }

  *(result + 16) = v4;
  return result;
}

uint64_t sub_1D4D61D14@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 0x78) + 60;
  return (*(v4 + 8 * (v2 ^ (2 * (v5 == ((v2 + 1056) ^ 0xEADLL))))))();
}

uint64_t sub_1D4D61D54@<X0>(int a1@<W8>)
{
  v3 = a1 + 163;
  v4 = (*(v2 + 8 * (a1 ^ 0x2008)))();
  STACK[0x740] -= 32;
  return (*(v2 + 8 * (((v1 == 16257999) * ((((v3 - 417) ^ 0x46C) + 8193) ^ 0x3CBE)) ^ (v3 - 417))))(v4);
}

uint64_t sub_1D4D61E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a11;
  a17 = 1317436891 * (&a15 ^ 0xB0039876) + 8154;
  v18 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((7327 * (a16 == 16257999)) ^ 0x892u)))(v18);
}

uint64_t sub_1D4D61E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * (((&a14 ^ 0x801478F6 | 0x903C7D21) - (&a14 ^ 0x801478F6) + ((&a14 ^ 0x801478F6) & 0x6FC382DE)) ^ 0xA02B9DA1) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((9704 * (a15 == v17)) ^ 0x700u)))(v18);
}

uint64_t sub_1D4D61FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8)
{
  v12 = v9 - 1;
  v13 = (v12 - 1) & 0xF;
  *(a3 + v12) = *(a4 + v12) ^ (v13 * a8) ^ *(*(&off_1F5090370 + a5) + v13 - 8) ^ *(*(&off_1F5090370 + a6) + v13 - 9) ^ *(*(&off_1F5090370 + a7) + v13) ^ 0x3C;
  return (*(v11 + 8 * (((v12 == -31) * v10) ^ v8)))();
}

uint64_t sub_1D4D62000@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = ((v3 ^ 0xB) + 66) ^ *(a2 + v5);
  return (*(a1 + 8 * ((7581 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D4D62040()
{
  v3 = (v2 + 11306641) & 0xFF537DCD;
  v8[0] = (v2 + 1499266951) ^ (1358806181 * ((-1423186750 - (v8 | 0xAB2BE4C2) + (v8 | 0x54D41B3D)) ^ 0x6BFB77BE));
  (*(v1 + 8 * (v2 ^ 0x313A)))(v8);
  v4 = 1358806181 * ((((v8 | 0xC046F6F6) ^ 0xFFFFFFFE) - (~v8 | 0x3FB90909)) ^ 0x96658A);
  v8[0] = v2 - v4 - 1117232496;
  v8[1] = 1611873091 - v4;
  (*(v1 + 8 * (v2 ^ 0x32FB)))(v8);
  v8[0] = v2 + 1824088897 * (v8 ^ 0x5869D362) + 228;
  (*(v1 + 8 * (v2 + 4297)))(v8);
  v5 = *v7;
  v8[0] = v3 + 1358806181 * ((((2 * v8) | 0x7C2AFBEE) - v8 - 1041595895) ^ 0x13A1174) - 3101;
  v9 = v5;
  result = (*(v1 + 8 * (v3 + 3196)))(v8);
  *v0 = 16257999;
  return result;
}

uint64_t sub_1D4D62320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49)
{
  *(v54 + 16) = v53;
  *(v54 + 20) = v49 ^ 0xE7188B3B;
  *(v54 + 24) = a14 ^ 0x692F2224;
  *(v54 + 560) = a49;
  if (v53 == 8 || v53 == 5)
  {
    *(v54 + 43) = *(v55 - 169) ^ 0x3C;
    *(v54 + 42) = *(v55 - 170) ^ 0x3C;
    *(v54 + 41) = *(v55 - 171) ^ 0x3C;
    *(v54 + 40) = *(v55 - 172) ^ 0x3C;
    *(v54 + 39) = *(v55 - 173) ^ 0x3C;
    *(v54 + 38) = *(v55 - 174) ^ 0x3C;
    *(v54 + 37) = *(v55 - 175) ^ 0x3C;
    *(v54 + 36) = *(v55 - 176) ^ 0x3C;
    *(v54 + 35) = *(v55 - 177) ^ 0x3C;
    *(v54 + 34) = *(v55 - 178) ^ 0x3C;
    *(v54 + 33) = *(v55 - 179) ^ 0x3C;
    *(v54 + 32) = *(v55 - 180) ^ 0x3C;
    *(v54 + 31) = *(v55 - 181) ^ 0x3C;
    *(v54 + 30) = *(v55 - 182) ^ 0x3C;
    *(v54 + 29) = *(v55 - 183) ^ 0x3C;
    *(v54 + 28) = *(v55 - 184) ^ 0x3C;
  }

  *(v55 - 168) = (a44 - 7988) ^ (869295389 * ((2 * ((v55 - 168) & 0x329CC098) - (v55 - 168) - 849133721) ^ 0x7C371334));
  v56 = (*(v52 + 8 * (a44 + 292)))(v55 - 168);
  return (*(v52 + 8 * (((*(v55 - 164) == v50) * (((v51 - 9452) | 0x84D) + 3570)) ^ (a44 - 7327))))(v56);
}

uint64_t sub_1D4D624DC()
{
  v1 = ((2 * ((v0 + 441035857) ^ 0x45D50350)) ^ 0x40C67B0C) & ((v0 + 441035857) ^ 0x45D50350) ^ (2 * ((v0 + 441035857) ^ 0x45D50350)) & 0xA0633D86;
  v2 = ((4 * ((v0 - 4399) ^ 0xA02107B4 ^ v1)) ^ 0x818CF618) & ((v0 - 4399) ^ 0xA02107B4 ^ v1) ^ (4 * ((v0 - 4399) ^ 0xA02107B4 ^ v1)) & 0xA0633D84;
  v3 = (v2 ^ 0x3400) & (16 * ((v1 ^ 0x800) & 0xFC0 | 0x330)) ^ ((v1 ^ 0x800) & 0xFC0 | 0x330);
  v4 = ((16 * (v2 ^ 0x20630986)) ^ 0x633D860) & (v2 ^ 0x20630986) ^ (16 * (v2 ^ 0x20630986)) & 0xA0633D80;
  return (*(STACK[0x3E8] + 8 * ((242 * (((2 * ((((v4 ^ 0xA0402586) << 8) & 0xA0633D00 ^ 0x20200000 ^ (((v4 ^ 0xA0402586) << 8) ^ 0x63300000) & (v4 ^ 0xA0402586)) & (((v4 ^ 0x231000) & (v3 << 8) ^ v3) << 16) ^ (v4 ^ 0x231000) & (v3 << 8) ^ v3)) ^ 0x45D50350) == 3123379504)) ^ (v0 + 1289))))();
}

uint64_t sub_1D4D62710(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  v53 = STACK[0x3E4];
  v54 = (a3 ^ 0xBC59953u) + STACK[0x260];
  STACK[0x8C0] = v54;
  return (*(STACK[0x3E8] + 8 * ((v53 - 344) ^ (26 * (v54 > a53)))))();
}

void sub_1D4D6276C(int a1@<W8>)
{
  v1 = (a1 - 4768) ^ 0x1620u;
  v2 = STACK[0x930];
  v3 = STACK[0x930] + 4;
  STACK[0x3D0] = STACK[0x6E0];
  STACK[0x2E0] = (v3 ^ 0xE76B6AF3B37FAF7FLL) + 0x7ED7D77DFCFFF497 + ((2 * v3) & 0xCED6D5E766FF5EFELL);
  v4 = v2 + (v1 ^ 0x146F);
  STACK[0x2D0] = STACK[0x928];
  v5 = STACK[0x920];
  STACK[0x2C0] = ((STACK[0x920] + 4) ^ 0x6EE3F2F1B2FFB75FLL) - 0x8A0B08002801349 + ((2 * (STACK[0x920] + 4)) & 0xDDC7E5E365FF6EBELL);
  STACK[0x2B0] = ((STACK[0x910] + 4) ^ 0x7EE3E77BFCFFADB7) - 0x18A0A50A4C8009A1 + ((2 * (STACK[0x910] + 4)) & 0xFDC7CEF7F9FF5B6ELL);
  STACK[0x2A0] = ((STACK[0x960] + 4) ^ 0xEFCB6279B07FFFFFLL) + 0x7677DFF7FFFFA417 + ((2 * (STACK[0x960] + 4)) & 0xDF96C4F360FFFFFELL);
  STACK[0x290] = ((STACK[0x980] + 4) ^ 0x7F63E379F7FFFDFFLL) - 0x1920A108478059E9 + ((2 * (STACK[0x980] + 4)) & 0xFEC7C6F3EFFFFBFELL);
  STACK[0x280] = ((STACK[0x900] + 4) ^ 0x7F5F77F1FAFFFC77) - 0x191C35804A805861 + ((2 * (STACK[0x900] + 4)) & 0xFEBEEFE3F5FFF8EELL);
  v6 = STACK[0x9A0];
  STACK[0x270] = ((STACK[0x9A0] + 4) ^ 0xFE576B7FF4FFEC1ELL) + 0x67EBD6F1BB7FB7F8 + ((2 * (STACK[0x9A0] + 4)) & 0xFCAED6FFE9FFD83CLL);
  v7 = STACK[0x9B0];
  STACK[0x250] = ((STACK[0x9B0] + 4) ^ 0x7E776BFDB1FFA6FELL) - 0x1834298C018002E8 + ((2 * (STACK[0x9B0] + 4)) & 0xFCEED7FB63FF4DFCLL);
  STACK[0x230] = ((STACK[0x8F0] + 4) ^ 0xFEDB56F1B47FFC9FLL) + 0x6767EB7FFBFFA777 + ((2 * (STACK[0x8F0] + 4)) & 0xFDB6ADE368FFF93ELL);
  STACK[0x220] = ((STACK[0x9E8] + 4) ^ 0xEFF34A79B07FBF36) + 0x764FF7F7FFFFE4E0 + ((2 * (STACK[0x9E8] + 4)) & 0xDFE694F360FF7E6CLL);
  STACK[0x210] = ((v2 + 6) ^ 0xFB5EBFFBFFFFF3FFLL) + 0x66AFFFBDF8FBFD3ALL + ((2 * (v2 + 6)) & 0xF6BD7FF7FFFFE7FELL);
  STACK[0x200] = ((v5 + 6) ^ 0x6AEFFFBDFAFBF53BLL) - 0x8E1400402000402 + ((2 * (v5 + 6)) & 0xD5DFFF7BF5F7EA76);
  STACK[0x2F0] = v4;
  STACK[0x260] = v6 + 10;
  STACK[0x240] = v7 + 10;
  STACK[0x350] = STACK[0x7A0];
  STACK[0x340] = STACK[0x668];
  STACK[0x310] = STACK[0x740];
  STACK[0x300] = STACK[0x7E8];
  STACK[0x330] = STACK[0x7A8];
  STACK[0x3C0] = STACK[0x478];
  STACK[0x3B0] = STACK[0x4F8];
  STACK[0x320] = STACK[0x520];
  STACK[0x3A0] = STACK[0x790];
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x8DA]);
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x8BE]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x8AE]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x88E]);
  JUMPOUT(0x1D4D24CE0);
}

uint64_t sub_1D4D627CC()
{
  v2 = STACK[0x450];
  STACK[0x570] = STACK[0x530] + 108;
  STACK[0x6D8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 ^ 0x17C0) - 2616)) ^ v0)))();
}

uint64_t sub_1D4D6291C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x789)))(128, 0x10800400FED9166);
  STACK[0x5F0] = v2;
  return (*(v1 + 8 * (((2 * ((((v0 - 7581) ^ (v2 == 0)) & 1) == 0)) & 0xFB | (4 * (((v0 + 99) ^ ~(v2 == 0)) & 1))) ^ v0)))();
}

void sub_1D4D629F4()
{
  *(v3 - 232) = 0;
  *(v3 - 220) = v1 - 869295389 * (((v3 - 232) & 0x59A017C | ~((v3 - 232) | 0x59A017C)) ^ 0x4B31D2D0) - 656017717;
  (*(v0 + 8 * (v1 + 4493)))(v3 - 232);
  v4 = STACK[0x3E8];
  *(v3 - 224) = *v2;
  *(v3 - 232) = v1 + 1358806181 * ((((v3 - 232) | 0xF625ED94) - ((v3 - 232) & 0xF625ED94)) ^ 0xC90A8117) - 1858;
  (*(v4 + 8 * (v1 ^ 0x31D9)))(v3 - 232);
  JUMPOUT(0x1D4CD2B04);
}

uint64_t sub_1D4D62AE4(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a3 & 0x3EF61DBA;
  v10 = (a3 & 0x3EF61DBAu) + 3708;
  v11 = ((a3 & 0x3EF61DBA) - 852217211) & 0x32CBCF73;
  v12 = v7 + v6;
  v13 = (v6 - 1) & 0xF;
  v14 = v13 + 1 - v6;
  v15 = v5 + v14;
  v16 = v5 + v13 + 1;
  v17 = v4 + v14;
  v18 = v4 + v13 + 1;
  v19 = v11 - v6 + v3 + v13 - 3889;
  v20 = v13 + v3 + 2;
  v22 = v16 > v7 && v15 < v12;
  v24 = v18 > v7 && v17 < v12 || v22;
  if (v20 <= v7 || v19 >= v12)
  {
    v26 = v24;
  }

  else
  {
    v26 = 1;
  }

  return (*(v8 + 8 * ((123 * v26) ^ v9)))(v6, v10, v17);
}

uint64_t sub_1D4D62B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 ^ 0x361Au)))();
  *(v5 + 24) = 0;
  return sub_1D4D62BB8(v6);
}

uint64_t sub_1D4D62C28()
{
  (*(v3 + 8 * (v1 ^ 0x32F5)))(v2);
  *v0 = 0;
  return (STACK[0x500])(650262281, 16215976, 3644708849, 4294959218, LODWORD(STACK[0x370]));
}

uint64_t sub_1D4D62CD0@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  STACK[0x2A8] = v3;
  STACK[0x2B0] = v2;
  return (*(a1 + 8 * ((((1871 * (a2 ^ 0x54C)) ^ (283 * (a2 ^ 0x556)) ^ 0xEB2) * (*v4 == 0)) ^ a2 ^ 0x1320)))();
}

uint64_t sub_1D4D62D90()
{
  v2 = *(STACK[0x838] + 24);
  STACK[0x6C0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x15A1) - 1336)) ^ v0)))();
}

void sub_1D4D62EB8()
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v0;
  JUMPOUT(0x1D4C887D0);
}

uint64_t sub_1D4D62F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 - 5011) - 1439) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((1442 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

void sub_1D4D62FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0x3AF3BC60) - 1951880938) ^ v10 ^ ((v10 ^ 0xCB1F27A2) + 2051289816) ^ ((v10 ^ 0x82B78CAF) + 871143899) ^ (((289 * (v11 ^ 0x1799) + 1040183098) ^ v10) - 1935349613);
  *a9 = (HIBYTE(v12) ^ 0x4E) - ((2 * (HIBYTE(v12) ^ 0x4E)) & 0x78) + 60;
  a9[1] = (BYTE2(v12) ^ 0xA4) - 2 * ((BYTE2(v12) ^ 0xA4) & 0x3E ^ BYTE2(v12) & 2) + 60;
  a9[2] = (BYTE1(v12) ^ 0xEA) - ((2 * (BYTE1(v12) ^ 0xEA)) & 0x78) + 60;
  a9[3] = ((v10 ^ 0x60) + 22) ^ v10 ^ ((v10 ^ 0xA2) - 40) ^ ((v10 ^ 0xAF) - 37) ^ (((33 * (v11 ^ 0x99) + 58) ^ v10) - 109) ^ 0xB6;
  v13 = v9 - ((2 * v9) & 0x9166F23208FC5E70) - 0x374C86E6FB81D0C8;
  a9[4] = (HIBYTE(v13) ^ 0xC8) - 2 * ((HIBYTE(v13) ^ 0xC8) & 0x3D ^ HIBYTE(v13) & 1) + 60;
  a9[5] = (BYTE6(v13) ^ 0xB3) - ((2 * (BYTE6(v13) ^ 0xB3)) & 0x78) + 60;
  a9[6] = (BYTE5(v13) ^ 0x79) + (~(2 * (BYTE5(v13) ^ 0x79)) | 0x87) + 61;
  a9[7] = (BYTE4(v13) ^ 0x19) - ((2 * (BYTE4(v13) ^ 0x19)) & 0x78) + 60;
  a9[8] = (((v9 - ((2 * v9) & 0x8FC5E70) + 75378488) >> 24) ^ 4) - 2 * ((((v9 - ((2 * v9) & 0x8FC5E70) + 75378488) >> 24) ^ 4) & 0x3D ^ ((v9 - ((2 * v9) & 0x8FC5E70) + 75378488) >> 24) & 1) + 60;
  a9[9] = (BYTE2(v13) ^ 0x7E) - ((2 * (BYTE2(v13) ^ 0x7E)) & 0x78) + 60;
  a9[10] = (BYTE1(v13) ^ 0x2F) - ((2 * (BYTE1(v13) ^ 0x2F)) & 0x78) + 60;
  a9[11] = (v9 - ((2 * v9) & 0x70) + 56) ^ 4;
  JUMPOUT(0x1D4D49838);
}

void sub_1D4D631C8()
{
  v0 = STACK[0x5E0];
  *v0 = 0u;
  v0[1] = 0u;
  JUMPOUT(0x1D4D631E8);
}

uint64_t sub_1D4D63230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v69 - 224) = v66 ^ (914963389 * ((((v69 - 232) | 0x81C3BB1F) - (v69 - 232) + ((v69 - 232) & 0x7E3C44E0)) ^ 0xAD3F0A64));
  v70 = (*(v64 + 8 * (v65 ^ 0x2FEC)))(v69 - 232);
  *(v68 + 16) = *(v69 - 232) ^ v67;
  return (*(a64 + 8 * (v65 + 1645)))(v70);
}

uint64_t sub_1D4D63350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x6D8];
  STACK[0x4E8] = STACK[0x4E8] + 29 * ((v4 - 2198) ^ 0xBC2u) - 457;
  return (*(a4 + 8 * ((1999 * (v5 == 16257999)) ^ (v4 - 2198))))();
}

uint64_t sub_1D4D63484()
{
  v3 = *(v1 + 8);
  STACK[0x888] = v3;
  return (*(v2 + 8 * ((219 * (v3 != 0)) ^ v0)))();
}

uint64_t sub_1D4D63D18@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, unsigned int a11)
{
  a11 = (v14 + v12) ^ ((((&a9 | 0x755E6C38) - (&a9 & 0x755E6C38)) ^ 0x2D37BF5A) * v15);
  a10 = v11;
  v16 = (*(v13 + 8 * (v14 ^ a1)))(&a9);
  return (*(v13 + 8 * (((a5 == 0) * (((v14 - 1812522252) & 0xE5A5DAE) - 6130)) | (v12 + v14 + 489))))(v16);
}

uint64_t sub_1D4D63E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v26 = 1875091903 * ((&a17 + 1057218865 - 2 * (&a17 & 0x3F03E131)) ^ 0x97662B2);
  a18 = (v23 ^ 0x2E5EBEFA) + ((2 * v23) & 0x5CBD7DF4) - 239208528 + v26;
  a19 = v26 + 7724;
  a20 = a15;
  (*(v24 + 77160))(&a17);
  v27 = 1824088897 * (((&a17 | 0xDF6E575D) - &a17 + (&a17 & 0x2091A8A0)) ^ 0x8707843F);
  a19 = ((2 * v22) & 0xBF6DDFF4) - v27 + (v22 ^ 0xDFB6EFFA) + 1861089936;
  a17 = v27 + 3757;
  a20 = v21;
  a21 = a15;
  v28 = (*(v24 + 77048))(&a17);
  return (*(v24 + 8 * ((7395 * (a18 == v25)) ^ 0x3FBu)))(v28);
}

uint64_t sub_1D4D640F4()
{
  v2 = *(STACK[0x468] + 24);
  STACK[0x870] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 3618) | 1) ^ 0x9BF)) ^ v0)))();
}

uint64_t sub_1D4D6413C(uint64_t a1)
{
  v5 = v1 - 8482 + ((v2 + 1261003298) & 0xB4D6A733);
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((v2 - 1098) ^ (4 * (v5 == 0)))))();
}

uint64_t sub_1D4D64190@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = LOWORD(STACK[0x9CA]);
  if (v67 == 17168)
  {
    goto LABEL_4;
  }

  if (v67 == 33980)
  {
    v69 = STACK[0x890];
    STACK[0x7D0] = v64;
    LODWORD(STACK[0x544]) = a1;
    return (*(v66 + 8 * (((v69 + v65 == 0) * (a64 - 6059)) | (a64 + 2955))))();
  }

  v68 = a64;
  if (v67 == 20706)
  {
LABEL_4:
    STACK[0x7D0] = v64;
    v68 = a64;
  }

  STACK[0x7A8] = 0;
  LODWORD(STACK[0x544]) = 197499219;
  return (*(v66 + 8 * ((85 * (((*STACK[0x4B8] == 0) ^ (((v68 - 2) & 0xB7 ^ 0xF) + 37)) & 1)) ^ (v68 - 2056226818) & 0x7A8F7AB7)))();
}

uint64_t sub_1D4D64274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x9B0] = (v65 + 197491566) ^ v64;
  *(a1 + 16) = (((v64 ^ 0xDBCA8C21) + 607482847) ^ ((v64 ^ 0x90280F1E) + 1876422882) ^ (((((v65 - 7105) | 0x81) + 1076303815) ^ v64) - 1076304492)) + 197499229;
  v67 = (*(a64 + 8 * (v65 + 1981)))();
  *(a1 + 24) = v67;
  return (*(a64 + 8 * ((1007 * (v67 != 0)) ^ v65)))();
}

uint64_t sub_1D4D6435C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v58 = (a1 - 262) | 0x623;
  v59 = STACK[0x6A8];
  v60 = STACK[0x474];
  STACK[0x468] = *(v57 + 8 * a1);
  STACK[0x460] = &STACK[0x580];
  LODWORD(STACK[0x4AC]) = v60;
  STACK[0x840] = v59;
  STACK[0x828] = 0;
  LODWORD(STACK[0x44C]) = 197499219;
  STACK[0x718] = 0x431A33AA2E6D965FLL;
  STACK[0x430] = 0;
  v61 = (*(v57 + 8 * (v58 + 8055)))(16, 0x20040A4A59CD2);
  STACK[0x4A0] = v61;
  return (*(a57 + 8 * (((v61 == 0) * (((v58 + 4573) | 0x704) ^ ((v58 ^ 0xC61) + 5478))) ^ v58)))();
}

uint64_t sub_1D4D64488@<X0>(uint64_t a1@<X2>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v67 = a1 + a3;
  v68 = a1 + a3 + 9;
  v69 = __ROR8__(v68 & ((1317 * (a2 ^ 0x10C1u)) ^ 0xFFFFFFFFFFFFF5B2), 8);
  v70 = v69 - ((2 * v69 + 0x2A11B965E67D9C56) & v60) + v61;
  v71 = v70 ^ v62;
  v72 = v70 ^ v63;
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xE49D77DF873DBF7ELL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xF5A2F1B9B5D0B209;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x5963B6C555D97F1FLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = ((v64 & (2 * (v79 + v78))) - (v79 + v78) + v65) ^ v66;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = a1 - 1;
  v83 = (__ROR8__(v80, 8) + v81) ^ 0x64C31C027084DE6CLL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x1A2AEBE44253AF03;
  *(v67 + 9) = (((__ROR8__(v85, 8) + (v85 ^ __ROR8__(v84, 61))) ^ 0xAB3042D228875C41) >> (8 * (v68 & 7u))) ^ *(v59 + v82);
  return (*(a59 + 8 * ((37 * (v82 == 0)) ^ a2)))();
}

uint64_t sub_1D4D64624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v21 = v7 - 1;
  v22 = __ROR8__((v16 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((a6 - v22) & a7) + v22 - 0x6AF7234D0CC131D5 - ((v22 - 0x6AF7234D0CC131D5) & a7);
  v24 = v23 ^ v13;
  v25 = v23 ^ v14;
  v26 = (__ROR8__(v24, 8) + v25) ^ v17;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = ((a2 | (2 * (v28 + v27))) - (v28 + v27) + v18) ^ a3;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - (a4 & (2 * (v31 + v30))) + a5) ^ v9;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v15;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v12;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v20;
  v39 = __ROR8__(v38, 8);
  v40 = __ROR8__(v37, 61);
  *(a1 + v21) = ((((v11 & (2 * (v39 + (v38 ^ v40)))) - (v39 + (v38 ^ v40)) + v10) ^ 0xE831AF248D427C36) >> (8 * ((v16 + v21) & 7))) ^ *(v16 + v21);
  return (*(v19 + 8 * ((210 * (v21 != 0)) ^ (v8 - 1156))))();
}

uint64_t sub_1D4D652F8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v57 = (a1 ^ 0xBC59953u) + STACK[0x210];
  STACK[0x930] = v57;
  return (*(v56 + 8 * ((a56 + 6657) ^ (26 * (v57 <= a21)))))();
}

uint64_t sub_1D4D65354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1875091903 * ((&a14 + 2088443143 - 2 * (&a14 & 0x7C7B1D07)) ^ 0x4A0E9E84);
  a15 = (v20 ^ 0x793DFFAB) + ((2 * v20) & 0xF27BFF56) - 1495353601 + v23;
  a16 = v23 + 7724;
  a17 = a11;
  (*(v22 + 77160))(&a14);
  v24 = 1824088897 * ((((2 * &a14) | 0x69D59FE2) - &a14 - 887803889) ^ 0x6C831C93);
  a16 = (v19 ^ 0xFEF6FF8A) + ((2 * v19) & 0xFDEDFF14) - v24 + 1336797952;
  a14 = v24 + 3757;
  a17 = v18;
  a18 = a11;
  v25 = (*(v22 + 77048))(&a14);
  return (*(v22 + 8 * ((10204 * (a15 == v21)) ^ 0x5E2u)))(v25);
}

uint64_t sub_1D4D654C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 4484) | 0x1104;
  v6 = ((v5 - 552) ^ 0xFFFFFFFFFFFFE63BLL) + v2;
  *(a1 + v6) = *(a2 + v6);
  return (*(v4 + 8 * ((1920 * (v6 != 0)) ^ v5)))();
}

void sub_1D4D65504()
{
  v3 = 608 * (v0 ^ 0x1775);
  (*(v2 + 8 * (v0 + 3597)))();
  *(v1 + 24) = 0;
  (*(v2 + 8 * (v3 + 8388)))(v1);
  JUMPOUT(0x1D4D65550);
}

uint64_t sub_1D4D655DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, int a16, char a17, uint64_t a18, char a19, __int16 a20, char a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, char *a27)
{
  a27 = &a19;
  a26 = (v27 + 1305607037) ^ (1358806181 * (&a22 ^ 0x3F2F6C83));
  a24 = a18;
  a25 = &a15;
  (*(v28 + 8 * (v27 + 8586)))(&a22);
  a27 = &a13;
  a24 = a18;
  a25 = &a17;
  a26 = (v27 + 1305607037) ^ (1358806181 * (((&a22 | 0x647A185) - (&a22 & 0x647A185)) ^ 0x3968CD06));
  (*(v28 + 8 * (v27 ^ 0x219A)))(&a22);
  a24 = a18;
  a25 = &a21;
  a23 = (v27 + 2132) ^ (33731311 * ((((&a22 | 0x174D279A) ^ 0xFFFFFFFE) - (~&a22 | 0xE8B2D865)) ^ 0xD1441246));
  (*(v28 + 8 * (v27 | 0x2121)))(&a22);
  LODWORD(a25) = v27 - 2008441969 * (&a22 ^ 0x4899540E) + 4565;
  a24 = a18;
  v29 = (*(v28 + 8 * (v27 + 8531)))(&a22);
  return (*(v28 + 8 * (((((v27 + 43) ^ (a22 == 16257999)) & 1) * ((v27 + 1958543477) & 0x1FFB ^ 0x448)) ^ v27)))(v29);
}

uint64_t sub_1D4D65824@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v2 ^ 0xD08E7B03;
  *v3 = a1;
  *v10 = a2;
  v15 = (v7 + 4510) ^ ((&v13 ^ 0x5869D362) * v4);
  v14 = v12;
  v8 = 1097 * ((v7 - 1515) ^ 0x913);
  (*(v5 + 8 * ((v7 - 1515) ^ 0x2C9D)))(&v13);
  v15 = (v8 + 6152) ^ ((&v13 ^ 0x5869D362) * v4);
  v14 = v11;
  (*(v5 + 8 * (v8 ^ 0x2D1E)))(&v13);
  return (v6 - 16257999);
}

uint64_t sub_1D4D658B8()
{
  LODWORD(STACK[0x3F4]) = 16257999;
  *STACK[0x418] = v0;
  LODWORD(STACK[0x824]) = 16257999;
  return (*(v2 + 8 * (((v1 ^ 0x1031) - 6360) ^ 0xDB ^ ((v1 ^ 0x1031) - 4713))))();
}

uint64_t sub_1D4D658F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x478] + 24);
  STACK[0x798] = v4;
  return (*(STACK[0x400] + 8 * ((((((v3 + 712) ^ (v4 == 0)) & 1) == 0) * ((v3 + 1762327589) & 0x96F4FAEB ^ 0x1850)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1D4D65960()
{
  v2 = *(STACK[0x640] + 24);
  STACK[0x920] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((5 * (v0 ^ 0x11D3)) ^ 0xFFFFE03E) + v0 + 1922)) ^ v0)))();
}

uint64_t sub_1D4D659B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71 == (STACK[0x390] & 0x2AD06BFE ^ 0xEC6A1DE8);
  LOBYTE(STACK[0x427]) = v73;
  return (*(v72 + 8 * ((12612 * v73) ^ (a71 - 1580))))();
}

uint64_t sub_1D4D65A34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  STACK[0x5F8] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 == 0) * (((210 * (v1 ^ 0x1E6)) ^ 0xFFFFF466) + 6 * (v1 ^ 0x53))) ^ v1 ^ 0x24A3)))();
}

uint64_t sub_1D4D65B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, __int16 a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25)
{
  a23 = (v27 - 1962) ^ (33731311 * ((&a22 + 1265067111 - 2 * (&a22 & 0x4B676467)) ^ 0x7291AE44));
  a24 = a10;
  a25 = &a12;
  (*(v26 + 8 * (v27 ^ 0x312Fu)))(&a22);
  a24 = a10;
  a25 = &a20;
  a23 = (v27 - 1962) ^ (33731311 * ((2 * (&a22 & 0x1AA66738) - &a22 - 447113018) ^ 0xDCAF52E5));
  (*(v26 + 8 * (v27 + 4387)))(&a22);
  a23 = (v27 - 1962) ^ (33731311 * ((((2 * &a22) | 0x493C83B2) - &a22 - 614351321) ^ 0x1D688BFA));
  a24 = a10;
  a25 = &a14;
  (*(v26 + 8 * (v27 ^ 0x312Fu)))(&a22);
  a23 = (v27 - 1962) ^ (33731311 * ((2 * (&a22 & 0x6861E750) - &a22 - 1751246674) ^ 0xAE68D28D));
  a24 = a10;
  a25 = &a18;
  (*(v26 + 8 * (v27 + 4387)))(&a22);
  a24 = a10;
  a25 = &a16;
  a23 = (v27 - 1962) ^ (33731311 * ((&a22 - 493678348 - 2 * (&a22 & 0xE29310F4)) ^ 0xDB65DAD7));
  (*(v26 + 8 * (v27 ^ 0x312Fu)))(&a22);
  LODWORD(a25) = v27 - 2008441969 * ((&a22 - 1525136382 - 2 * (&a22 & 0xA5184402)) ^ 0xED81100C) + 471;
  a24 = a10;
  v28 = (*(v26 + 8 * (v27 + 4437)))(&a22);
  return (*(v26 + 8 * (((a22 == v25) * ((v27 - 3644) ^ 0xD84)) ^ v27)))(v28);
}

uint64_t sub_1D4D65D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x9D2]) = a7;
  LODWORD(STACK[0x340]) = a7;
  return (*(a72 + 8 * (a71 - 5608)))();
}

uint64_t sub_1D4D65D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a20 = a13;
  a21 = &a17;
  a19 = (v23 - 19) ^ (33731311 * ((2 * ((&a18 ^ 0xA2F137F3) & 0x4E1D1890) - (&a18 ^ 0xA2F137F3) - 1310529685) ^ 0x2AE51ABB));
  (*(v25 + 8 * (v23 + 6330)))(&a18);
  a22 = (v23 + 87) ^ (1710126949 * ((&a18 & 0x1D67650D | ~(&a18 | 0x1D67650D)) ^ 0xD083C162));
  a20 = a13;
  a21 = &a12;
  a23 = &a14;
  (*(v25 + 8 * (v23 ^ 0x29C0)))(&a18);
  a19 = (v23 - 19) ^ (33731311 * (((&a18 | 0x40516AB4) - (&a18 & 0x40516AB4)) ^ 0x79A7A097));
  a20 = a13;
  a21 = &a10;
  (*(v25 + 8 * (v23 + 6330)))(&a18);
  LODWORD(a21) = v23 - 2008441969 * ((((2 * &a18) | 0x71BD1FFA) - &a18 - 954109949) ^ 0x7047DBF3) + 2414;
  a20 = a13;
  v26 = (*(v25 + 8 * (v23 + 6380)))(&a18);
  return (*(v25 + 8 * ((23 * (a18 == v24 + v23 - 724 + 2261)) ^ v23)))(v26);
}

uint64_t sub_1D4D65FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = ~v6 + v3;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v6 + v8 + v7 == v4) | (8 * (v6 + v8 + v7 == v4))) ^ (v2 + v5 + 2041))))();
}

uint64_t sub_1D4D66130@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  *a26 = 1;
  v29 = *v26;
  *(a1 + 64) = a15;
  *(v28 - 144) = a2 + a16 + 295631711;
  *(v28 - 140) = a2 + a16 + 295632584;
  *(a1 + 88) = v29 ^ a16;
  *(v28 - 128) = a16 ^ 1;
  *(v28 - 152) = a2 + a16 + 295631709;
  *(v28 - 168) = (a2 + 1745243958) ^ a16;
  v30 = (*(v27 + 8 * (a2 + 195)))(v28 - 168);
  return (*(v27 + 8 * *(v28 - 148)))(v30);
}

void sub_1D4D66138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x878] = 0;
  STACK[0x908] = *(a72 + 8 * (v72 - 5680));
  JUMPOUT(0x1D4C6FBE0);
}

uint64_t sub_1D4D661B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14)
{
  v19 = 1875091903 * (((&a12 | 0xA191CEF5) - (&a12 & 0xA191CEF5)) ^ 0x97E44D76);
  a14 = a11;
  HIDWORD(a12) = (v17 ^ 0x24DFB6BB) + ((2 * v17) & 0x49BF6D76) - 79888401 + v19;
  a13 = v19 + 7724;
  (*(v18 + 77160))(&a12);
  v20 = 1875091903 * ((-514832813 - (&a12 | 0xE1504653) + (&a12 | 0x1EAFB9AC)) ^ 0x28DA3A2F);
  a14 = a11;
  HIDWORD(a12) = ((2 * HIDWORD(v16)) & 0x7DFDFFF6) + (HIDWORD(v16) ^ 0x3EFEFFFB) - 518146385 + v20;
  a13 = v20 + 7724;
  (*(v18 + 77160))(&a12);
  v21 = 1875091903 * ((&a12 & 0xE18712B3 | ~(&a12 | 0xE18712B3)) ^ 0x280D6ECF);
  a14 = a11;
  HIDWORD(a12) = (v16 ^ 0x371DB7BE) + ((2 * v16) & 0x6E3B6F7C) - 385941780 + v21;
  a13 = v21 + 7724;
  (*(v18 + 77160))(&a12);
  a14 = a11;
  a12 = v15;
  a13 = 1824088897 * ((2 * (&a12 & 0x42C3E28) - &a12 - 70008367) ^ 0xA3BA12B3) + 2305;
  (*(v18 + 76720))(&a12);
  v22 = 1875091903 * (((&a12 | 0x5D792ABA) - (&a12 & 0x5D792ABA)) ^ 0x6B0CA939);
  HIDWORD(a12) = (v14 ^ 0x219FFEBE) + ((2 * v14) & 0x433FFD7C) - 25380884 + v22;
  a13 = v22 + 7724;
  a14 = a11;
  v23 = (*(v18 + 77160))(&a12);
  return (*(v18 + 8 * ((104 * (a12 != 16257999)) ^ 0x72Cu)))(v23);
}

uint64_t sub_1D4D6649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 + 383) ^ (33731311 * ((2 * (&a13 & 0x11FAB5C8) - &a13 - 301643209) ^ 0xD7F38014));
  a15 = a9;
  a16 = &a12;
  (*(v17 + 8 * (v16 ^ 0x2E74)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * (&a13 ^ 0x4899540E) + 2816;
  a15 = a9;
  v19 = (*(v17 + 8 * (v16 ^ 0x2E86)))(&a13);
  return (*(v17 + 8 * ((56 * (a13 == ((v16 - 1971600222) & 0x75843BE9 ^ (v18 + 2172)))) ^ v16)))(v19);
}

uint64_t sub_1D4D66660@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v14 = v5 + a4;
  v15 = v5 - 1;
  v16 = __ROR8__((v4 + v15) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (v13 | (2 * (v16 - 0x6AF7234D0CC131D5))) - (v16 - 0x6AF7234D0CC131D5) + v7;
  v18 = (v6 + 3498) ^ 0xC50A0FD46BA5492ELL ^ v17;
  v19 = v17 ^ v8;
  v20 = __ROR8__(v18, 8);
  v21 = ((v9 | (2 * (v20 + v19))) - (v20 + v19) + v10) ^ v12;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__(((a1 & (2 * (v23 + v22))) - (v23 + v22) + v11) ^ a2, 8);
  v25 = ((a1 & (2 * (v23 + v22))) - (v23 + v22) + v11) ^ a2 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x64C31C027084DE6CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xA5A39F44AA2858D8) + 0x52D1CFA255142C6CLL) ^ 0x48FB24461747836FLL;
  v34 = __ROR8__((v14 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = __ROR8__(v33, 8) + (v33 ^ __ROR8__(v31, 61));
  v36 = (v34 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v37 = (__ROR8__((v34 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v36) ^ 0xE49D77DF873DBF7ELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xF5A2F1B9B5D0B209;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5963B6C555D97F1FLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x61459D2AF01F24F7;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x64C31C027084DE6CLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  *(v14 + 9) = ((v35 ^ 0xAB3042D228875C41) >> (8 * ((v4 + v15) & 7))) ^ (((v49 + v48 - ((2 * (v49 + v48)) & 0xBCFFAF874FA44A5ALL) - 0x2180283C582DDAD3) ^ a3) >> (8 * ((v14 + 9) & 7))) ^ *(v4 + v15);
  return (*(STACK[0x3E8] + 8 * ((4479 * (v15 == 0)) ^ v6)))();
}

uint64_t sub_1D4D668F4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v4 = (*(v2 + 8 * (v1 ^ 0x32FE)))(26, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 + 111) ^ 0x17E0)) ^ v1)))();
}

uint64_t sub_1D4D669F8()
{
  v3 = (*(v2 + 8 * ((v0 ^ 0xDBB) + 7145)))();
  *(v1 + 24) = 0;
  return sub_1D4D66A28(v3);
}

void sub_1D4D66AA0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x320] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x330] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x300] = vdupq_n_s64(v8);
  *&STACK[0x310] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x2E0] = vdupq_n_s64(v10);
  *&STACK[0x2F0] = vdupq_n_s64(v9);
  *&STACK[0x2C0] = vdupq_n_s64(v12);
  *&STACK[0x2D0] = vdupq_n_s64(v11);
  *&STACK[0x2A0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2B0] = vdupq_n_s64(a1);
  *&STACK[0x390] = vdupq_n_s64(a3);
  *&STACK[0x3A0] = vdupq_n_s64(a2);
  *&STACK[0x280] = vdupq_n_s64(a4);
  *&STACK[0x290] = vdupq_n_s64(v13);
  *&STACK[0x270] = vdupq_n_s64(a5);
  *&STACK[0x240] = vdupq_n_s64(v7);
  *&STACK[0x250] = vdupq_n_s64(v6);
  *&STACK[0x380] = xmmword_1D4E31490;
  *&STACK[0x260] = vdupq_n_s64(a6);
  JUMPOUT(0x1D4D66BDCLL);
}

void sub_1D4D67660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x408] = 0;
  STACK[0x3F0] = 0;
  STACK[0x848] = *(a4 + 8 * v4);
  JUMPOUT(0x1D4D67684);
}

uint64_t sub_1D4D67720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v22 = ((2 * (&a13 & 0x4BD730C0) - &a13 + 875089727) ^ 0x6C411C5D) * v19;
  a14 = v22 + 1592977536;
  a15 = a11;
  a16 = &a10;
  a17 = -654855621 - v22;
  a18 = v22 + v21 + 1674576097;
  v23 = (*(v20 + 8 * (v21 ^ 0x2E41u)))(&a13);
  return (*(v20 + 8 * (((a13 == v18) * (((v21 - 1301) | 0x1042) ^ (v21 - 1948471310) & 0x57E7 ^ 0x1235)) ^ v21)))(v23);
}

uint64_t sub_1D4D6784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a22 = (v23 + 1939) ^ (1710126949 * ((&a18 & 0xDD9F1ED1 | ~(&a18 | 0xDD9F1ED1)) ^ 0x107BBABE));
  a23 = &a11;
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v23 + 8188)))(&a18);
  a19 = (v23 + 1833) ^ (33731311 * ((&a18 & 0x32986DAC | ~(&a18 | 0x32986DAC)) ^ 0xF4915870));
  a20 = a10;
  a21 = &a14;
  (*(v24 + 8 * (v23 + 8182)))(&a18);
  LODWORD(a21) = v23 - 2008441969 * (((&a18 ^ 0x37A70492) & 0x9D2183A8 | ~(&a18 ^ 0x37A70492 | 0x9D2183A8)) ^ 0x1DE02CCB) + 4266;
  a20 = a10;
  v26 = (*(v24 + 8 * (v23 + 8232)))(&a18);
  return (*(v24 + 8 * (((a18 == v25) * (((v23 + 5966) ^ 0xE47) - 205)) ^ v23)))(v26);
}

uint64_t sub_1D4D679F0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v26 = a16 - 16;
  v27.i64[0] = a13 + v26 + 11;
  v27.i64[1] = a13 + v26 + 10;
  v28.i64[0] = a13 + v26 + 13;
  v28.i64[1] = a13 + v26 + 12;
  v29.i64[0] = a13 + v26 + 15;
  v29.i64[1] = a13 + v26 + 14;
  v30.i64[0] = a13 + v26 + 21;
  v30.i64[1] = a13 + v26 + 20;
  v31.i64[0] = a13 + v26 + 23;
  v31.i64[1] = a13 + v26 + 22;
  v32.i64[0] = a13 + v26 + 25;
  v32.i64[1] = a13 + v26 + 24;
  v33.i64[0] = a13 + v26 + a14 - 3181;
  v33.i64[1] = a13 + v26 + 18;
  v34 = vandq_s8(v33, a1);
  v35 = vandq_s8(v32, a1);
  v36 = vandq_s8(v31, a1);
  v37 = vandq_s8(v30, a1);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4));
  v43 = vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4));
  v44 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a3), a4)), a5);
  v45 = vaddq_s64(vsubq_s64(v38, vandq_s8(vaddq_s64(vaddq_s64(v38, v38), a3), a4)), a5);
  v46 = veorq_s8(v45, a6);
  v47 = veorq_s8(v44, a6);
  v48 = veorq_s8(v44, a7);
  v49 = veorq_s8(v45, a7);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), a8);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), a8);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = veorq_s8(vaddq_s64(v55, v53), v17);
  v58 = veorq_s8(v56, v17);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = veorq_s8(vaddq_s64(v62, v60), v18);
  v65 = veorq_s8(v63, v18);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v70 = vaddq_s64(v68, v66);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v19), v70), v20), v21);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v19), v69), v20), v21);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v74 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v75 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v22);
  v78 = veorq_s8(v76, v22);
  v79 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v23);
  v85 = veorq_s8(v83, v23);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v80.i64[0] = a13 + v26 + 17;
  v80.i64[1] = a13 + v26 + 16;
  v87 = vaddq_s64(v42, a5);
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v86), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v189.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v88 = veorq_s8(v87, a6);
  v89 = veorq_s8(v87, a7);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), a8);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v17);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v18);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), v19), v96), v20), v21);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v22);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v23);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL)));
  v103 = vandq_s8(v80, a1);
  v104 = vaddq_s64(v43, a5);
  v189.val[0] = vshlq_u64(veorq_s8(v102, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v105 = veorq_s8(v104, a6);
  v106 = veorq_s8(v104, a7);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a8);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v17);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v18);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v19), v113), v20), v21);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v22);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v23);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v121 = vandq_s8(v29, a1);
  v122 = vaddq_s64(v120, v119);
  v123 = vandq_s8(v28, a1);
  v189.val[3] = vshlq_u64(veorq_s8(v122, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v124 = vandq_s8(v27, a1);
  v125 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v129 = vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a3), a4));
  v130 = vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(vaddq_s64(v126, v126), a3), a4)), a5);
  v131 = vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(vaddq_s64(v125, v125), a3), a4)), a5);
  v126.i64[0] = vqtbl4q_s8(v189, v25).u64[0];
  v132 = veorq_s8(v131, a6);
  v189.val[0] = veorq_s8(v130, a6);
  v133 = veorq_s8(v130, a7);
  v134 = veorq_s8(v131, a7);
  v189.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v133), a8);
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v134), a8);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v137);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v136), v17);
  v139 = veorq_s8(v138, v17);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v141);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v140), v18);
  v143 = veorq_s8(v142, v18);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v145);
  v189.val[0] = vaddq_s64(v189.val[1], v144);
  v189.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189.val[0], v189.val[0]), v19), v189.val[0]), v20), v21);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v19), v146), v20), v21);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v149);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v148), v22);
  v151 = veorq_s8(v150, v22);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v153);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v152), v23);
  v155 = veorq_s8(v154, v23);
  v156 = vaddq_s64(v129, a5);
  v189.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  v157 = veorq_s8(v156, a6);
  v158 = veorq_s8(v156, a7);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), a8);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v17);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v18);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), v19), v165), v20), v21);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v22);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v23);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL)));
  v172 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v189.val[1] = vshlq_u64(veorq_s8(v171, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v173 = veorq_s8(v172, a6);
  v174 = veorq_s8(v172, a7);
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), a8);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v17);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v18);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v181, v181), v19), v181), v20), v21);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v22);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v23);
  v189.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a2)));
  v126.i64[1] = vqtbl4q_s8(v189, v25).u64[0];
  v187 = vrev64q_s8(v126);
  *(a13 + v26 + 10) = veorq_s8(vextq_s8(v187, v187, 8uLL), *(a15 + v26));
  return (*(STACK[0x3E8] + 8 * (((a11 + v26 != 0) * v16) ^ a12)))();
}

void sub_1D4D679F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *a8 = v8;
  *v9 = v10;
  JUMPOUT(0x1D4D1567CLL);
}

uint64_t sub_1D4D67A24()
{
  v3 = 457 * (v0 ^ 0xBC2);
  v9 = (v0 + 5329) ^ (1824088897 * (((&v7 | 0x605F177C) - (&v7 & 0x605F177C)) ^ 0x3836C41E));
  v8 = v5;
  (*(v1 + 8 * (v0 ^ 0x2E45)))(&v7);
  v8 = v6;
  v9 = (v3 + 3319) ^ (1824088897 * (&v7 ^ 0x5869D362));
  (*(v1 + 8 * (v3 ^ 0x362F)))(&v7);
  return (v2 - 16257999);
}

uint64_t sub_1D4D67B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v19 - 89) ^ (33731311 * (((&a15 | 0xF9F95082) - (&a15 & 0xF9F95082)) ^ 0xC00F9AA1));
  a17 = a12;
  a18 = &a11;
  (*(v18 + 8 * (v19 + 6260)))(&a15);
  LODWORD(a18) = v19 - 2008441969 * (((&a15 | 0x96C23D70) - &a15 + (&a15 & 0x693DC288)) ^ 0xDE5B697E) + 2344;
  a17 = a12;
  v20 = (*(v18 + 8 * (v19 + 6310)))(&a15);
  return (*(v18 + 8 * ((474 * (a15 != (((v19 - 970) | 0x404) ^ 0xF81EE0))) ^ v19)))(v20);
}

uint64_t sub_1D4D67C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a3 - 1;
  v18 = v9 + v17 + v8;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v14 | (2 * (v19 + 0x2D9C56C6ED9D3E2ELL))) - (v19 + 0x2D9C56C6ED9D3E2ELL) + a6;
  v21 = v20 ^ (139 * (v7 ^ 0x17FAu) + 0x572C57D23556A95);
  v22 = v20 ^ a7;
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__(((v11 & (2 * (v23 + v22))) - (v23 + v22) + v12) ^ v13, 8);
  v25 = ((v11 & (2 * (v23 + v22))) - (v23 + v22) + v12) ^ v13 ^ __ROR8__(v22, 61);
  v26 = ((v15 & (2 * (v24 + v25))) - (v24 + v25) + 0x365717C7E4CB1A76) ^ 0x8BD86B3AFACC8D6DLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v10 - ((v28 + v27) | v10) + ((v28 + v27) | 0x1323CE1A44C5F46ELL)) ^ 0xEEA89D249DAFB75ALL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xAC7DA0564C1838BLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0x2A5861B0BA21BA34) - (v33 + v32) - 0x152C30D85D10DD1BLL) ^ 0x8B436845DC92299CLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x8E4D6ECA343D275ELL;
  *v18 = ((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ 0x51BB4171AFEDC628) >> (8 * (v18 & 7u));
  return (*(v16 + 8 * ((30 * (v17 == 0)) ^ (v7 - 1794))))();
}

uint64_t sub_1D4D67F08()
{
  v2 = *(STACK[0x708] + 24);
  STACK[0x498] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 582641425) ^ 0xDD458DD4) + ((v0 + 582641425) & 0xDD458E7A))) ^ v0)))();
}

uint64_t sub_1D4D67FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = **(&off_1F5090370 + ((v65 + 3996) & 0x8A3C8441));
  *(v66 - 232) = v65 + 3996 + 1710126949 * ((v66 - 1199643003 - 2 * ((v66 - 232) & 0xB87EE76D)) ^ 0x8A65BCFD) + 2122;
  *(v66 - 224) = v67;
  (*(v64 + 8 * ((v65 + 3996) ^ 0x3C59)))(v66 - 232);
  *(v66 - 228) = (v65 - 1451034739) ^ (956911519 * ((v66 - 232) ^ 0xEA917005));
  v68 = (*(a64 + 8 * (v65 + 7005)))(v66 - 232);
  v69 = *(v66 - 232) != ((v65 + 3996) ^ 0x1168) + 538289758;
  return (*(a64 + 8 * (((2 * v69) | (8 * v69)) ^ (v65 + 3996))))(v68);
}

uint64_t sub_1D4D68298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x5C8] + 24);
  STACK[0x740] = v5;
  return (*(a4 + 8 * (((v5 == 0) * ((((v4 - 1212079769) ^ 0xB7C12776) - 1699) ^ (v4 - 1212079769) & 0x483ED7F7)) ^ v4)))();
}

uint64_t sub_1D4D68E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xAF8] = v73;
  v74 = STACK[0x6C0];
  STACK[0xB00] = STACK[0x6C0];
  return (*(a72 + 8 * (((v73 - v74 > 9) * ((((v72 + 2878) | 0x4C2) - 5612) ^ 0x1281)) ^ v72)))();
}

uint64_t sub_1D4D68EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19, int a20)
{
  v21 = 956911519 * ((((2 * &a17) | 0x4E96870C) - &a17 - 659243910) ^ 0xCDDA3383);
  HIDWORD(a17) = v21 + 543642718;
  a18 = v21 ^ 0x61FE7926;
  a19 = 1002199530 - v21;
  a20 = v21 ^ 0x1602;
  (*(v20 + 77008))(&a17);
  a17 = &a13;
  a19 = 1317436891 * ((2 * (&a17 & 0x7F305B58) - &a17 + 13608096) ^ 0xB0CC3CD6) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((1991 * (a18 == 16257999)) ^ 0xB7Eu)))(v22);
}

uint64_t sub_1D4D69030@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8B8];
  v3 = &STACK[0xB60] + STACK[0x740];
  STACK[0x8C8] = v3;
  STACK[0x900] = (v3 + 16);
  STACK[0x7C0] = 0;
  STACK[0x4C8] = 0;
  LODWORD(STACK[0x854]) = 197499219;
  STACK[0x7A8] = 0;
  LODWORD(STACK[0x544]) = 197499219;
  STACK[0x620] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 + 1514598348) & 0xA5B8FDE7) - 2816)) ^ (a1 + 1514598348) & 0xA5B8FDE7)))();
}

uint64_t sub_1D4D690BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x926]) = v73;
  LODWORD(STACK[0x350]) = v73;
  return (*(a72 + 8 * (v74 - 5288)))();
}

uint64_t sub_1D4D690D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, __int16 a12, char a13, uint64_t a14, char a15, __int16 a16, char a17, uint64_t a18, int a19, char a20, int a21, unsigned int a22, uint64_t a23, char *a24)
{
  a22 = (v24 + 1286) ^ (33731311 * ((&a21 & 0x79A0A4ED | ~(&a21 | 0x79A0A4ED)) ^ 0xBFA99131));
  a23 = a18;
  a24 = &a13;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  a23 = a18;
  a24 = &a15;
  a22 = (v24 + 1286) ^ (33731311 * (((&a21 | 0x4CBC5882) - (&a21 & 0x4CBC5882)) ^ 0x754A92A1));
  (*(v26 + 8 * (v24 + 7635)))(&a21);
  a22 = (v24 + 1286) ^ (33731311 * (((&a21 | 0xB5DE600A) - (&a21 & 0xB5DE600A)) ^ 0x8C28AA29));
  a23 = a18;
  a24 = &a20;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  a23 = a18;
  a24 = &a11;
  a22 = (v24 + 1286) ^ (33731311 * ((((&a21 | 0xD2620A1A) ^ 0xFFFFFFFE) - (~&a21 | 0x2D9DF5E5)) ^ 0x146B3FC6));
  (*(v26 + 8 * (v24 + 7635)))(&a21);
  a22 = (v24 + 1286) ^ (33731311 * ((&a21 & 0x5A2894C7 | ~(&a21 | 0x5A2894C7)) ^ 0x9C21A11B));
  a23 = a18;
  a24 = &a17;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  LODWORD(a24) = v24 - 2008441969 * ((1638927686 - (&a21 ^ 0x3D302A96 | 0x61B00D46) + (&a21 ^ 0x3D302A96 | 0x9E4FF2B9)) ^ 0xEBE68C21) + 3719;
  a23 = a18;
  v28 = (*(v26 + 8 * (v24 ^ 0x220D)))(&a21);
  return (*(v26 + 8 * (((a21 == 16257999) * (v25 ^ (v27 - 60))) ^ v24)))(v28);
}

uint64_t sub_1D4D694C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x740] = *(v4 + 8 * v1);
  STACK[0x6B0] = a1;
  LODWORD(STACK[0xA78]) = v3;
  LOWORD(STACK[0xA7E]) = -22045;
  LODWORD(STACK[0xA80]) = 197499223;
  LODWORD(STACK[0xA84]) = v2;
  STACK[0xA88] = 0x431A33AA2E6D965FLL;
  STACK[0xA90] = 0;
  return (*(v4 + 8 * (((a1 == 0) * (6 * (((v1 ^ 0x23F3) + 1773579523) & 0x96493DB7 ^ 0xCA5) - 2597)) ^ v1 ^ 0x23F3)))();
}

uint64_t sub_1D4D694F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v6 - 32);
  v10 = (v7 - 32);
  v11 = *v10;
  *(v9 - 1) = *(v10 - 1);
  *v9 = v11;
  return (*(a4 + 8 * (((v5 == 32) * v8) ^ v4)))();
}

uint64_t sub_1D4D69594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a13 = &a11;
  a15 = v16 + 1317436891 * ((2 * (&a13 & 0x359CA8D0) - &a13 - 899459284) ^ 0x7A60CF5A) + 4928;
  v17 = (*(v15 + 8 * (v16 ^ 0x293F)))(&a13);
  return (*(v15 + 8 * (((a14 == 16257999) * (((v16 + 1616641498) | 0x18010408) ^ 0x785D113A)) ^ v16)))(v17);
}

uint64_t sub_1D4D69648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13, uint64_t a14)
{
  a14 = v15;
  a11 = v14;
  a12 = 2008441969 * ((-377644372 - (&a11 | 0xE97D9AAC) + (&a11 | 0x16826553)) ^ 0x5E1B315D) + 4055;
  (*(v16 + 77384))(&a11);
  return sub_1D4CE2E64(a13);
}

void sub_1D4D69710(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a5 = 1824 - 869295389 * ((&a4 + 1173547721 - 2 * (&a4 & 0x45F2EAC9)) ^ 0xF4A6C69A);
  a4 = a1;
  (*(a2 + 78128))(&a4);
  JUMPOUT(0x1D4CE50D4);
}

uint64_t sub_1D4D6977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *v22 = 0x9908B0DF00000000;
  v25 = 1824088897 * ((a20 + 0x5D0499BBD91DACF1 - 2 * (a20 & 0x5D0499BBD91DACF1)) ^ 0xDFEB0387E12C9C16);
  v22[5] = **(v23 + 8 * (v20 - 741)) ^ v25;
  *(v24 - 112) = (v20 + 1365484860) ^ (1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16));
  *(v24 - 144) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16) + v20 + 1454889199;
  *(v24 - 140) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16) + v20 + 1365484860 + 52;
  *(v24 - 152) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16);
  v22[3] = v25;
  *(v24 - 128) = ((v20 + 1365484860) ^ 0x3AE) - 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16);
  v26 = (*(v21 + 8 * (v20 + 8696)))(v24 - 152);
  return (*(v21 + 8 * *(v24 - 148)))(v26);
}

uint64_t sub_1D4D69984(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(a57 + (((a1 + 681) ^ 0x16EC597CDLL) & (2 * v57)) + (v57 ^ 0x7DEBD9FFB762DBEFLL) - 0x7DEBD9FFB762DBEFLL) = 0;
  *(a57 + ((2 * (v57 + 4)) & 0xDFEFFAB6) + ((v57 + 4) ^ 0x45FBCEBB6FF7FD5BLL) - 0x45FBCEBB6FF7FD5BLL) = -9392;
  v59 = (a41 & 0x45 | (2 * (a41 & 1))) ^ (a41 ^ 0x662027B6) & (2 * (a41 & 0x45));
  v60 = (2 * (a41 ^ 0x662027B6)) & 0x72 ^ 0x11 ^ ((2 * (a41 ^ 0x662027B6)) ^ 0x40A510E6) & (a41 ^ 0x662027B6);
  v61 = (4 * v59) & v60 ^ v59 ^ ((4 * v59) & 0x230 | 0xB042A840);
  v62 = (4 * v60) & 0xBC52EE70 ^ 0xC104633 ^ ((4 * v60) ^ 0x714BB9CC) & v60;
  v63 = (16 * v61) & 0xBC52EE70 ^ v61 ^ ((16 * v61) ^ 0x42A8400) & v62;
  v64 = (16 * v62) & 0xBC52EE70 ^ 0x38500843 ^ ((16 * v62) ^ 0xC52EE730) & v62;
  v65 = v63 ^ (v63 << 8) & 0xBC52EE00 ^ ((v63 << 8) ^ 0x402C4000) & v64 ^ 0x8128233;
  v66 = a41 ^ (2 * ((v65 << 16) & 0x3C520000 ^ v65 ^ ((v65 << 16) ^ 0x6E730000) & ((v64 << 8) & 0x3C520000 ^ 0x2C100000 ^ ((v64 << 8) ^ 0x52EE0000) & v64)));
  v67 = (a57 + ((2 * (v57 + 6)) & 0x1E8FDDF9ALL) + ((v57 + 6) ^ 0xDBEFB97BF47EEFCDLL) + 0x241046840B811033);
  *v67 = HIBYTE(v66) ^ 0xFA;
  v67[1] = BYTE2(v66) ^ 0x73;
  v67[2] = BYTE1(v66) ^ 0x15;
  v67[3] = v66 ^ 0x23;
  return (*(v58 + 8 * (a1 ^ (235 * ((840616331 - a51) - 840616315 < 8)))))(-840616316, 16215976);
}

uint64_t sub_1D4D69C60()
{
  v5 = (*(v4 + 8 * (v3 ^ 0x70E)))();
  result = (*(v4 + 8 * (v3 | 0x4C3)))(v5, v1, 4096);
  if (result >= (((v3 + 720719350) & 0xD50AB5BF) - 9405))
  {
    v2 = 16257999;
  }

  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_1D4D69D58@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v20 = v12 - 1;
  v21 = __ROR8__((v16 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (v21 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v23 = (a2 + 5087) ^ 0xE49D77DF873DA5DELL ^ (__ROR8__((v21 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v22);
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((v17 & (2 * (v25 + v24))) - (v25 + v24) + a3) ^ v15;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0x45B996DFB575EE6) - (v28 + v27) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((a1 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = -2 - (((v18 - v32) | 0x2AB11F016CBDAD66) + ((v32 + 0x1508DCB2F33ECE2BLL) | 0xD54EE0FE93425299));
  v34 = __ROR8__(v33 ^ 0x63585D3A03AB4AB4, 8);
  v33 ^= 0xCB1EB8AD9A5D3BE8;
  v35 = (((2 * (v31 + v30)) & 0xE50EF93BD6C6A2AALL) - (v31 + v30) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v36 = v35 ^ __ROR8__(v30, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x64C31C027084DE6CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = ((v19 | (2 * (v34 + v33))) - (v34 + v33) + v4) ^ v5;
  v40 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  v41 = v39 ^ __ROR8__(v33, 61);
  v42 = (__ROR8__(v39, 8) + v41) ^ 0xF5A2F1B9B5D0B209;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5963B6C555D97F1FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61));
  v47 = (__ROR8__(v44, 8) + v45) ^ v14;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x64C31C027084DE6CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (a4 - ((v51 + v50) ^ v6 | a4) + ((v51 + v50) ^ v6 | v7)) ^ v8;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  *(a1 + v20) = ((((v9 & (2 * (v54 + v53))) - (v54 + v53) + v10) ^ v11) >> (8 * ((a1 + v20) & 7))) ^ *(v16 + v20) ^ (((((2 * v46) & 0x8D3B02A49A14CEA0) - v46 + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v16 + v20) & 7)));
  return (*(v13 + 8 * ((6077 * (v20 == 0)) ^ a2)))();
}

uint64_t sub_1D4D6A080@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *v5 = v3;
  *(v3 + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return (*(a1 + 8 * ((5819 * ((((v4 ^ 0xE4A) + 809317296) & 0xCFC2C1F9 ^ 0xF7FC43) + (((v4 ^ 0xE4A) + 446556976) & 0xE5621F95) == 16257999)) ^ v4 ^ 0xE4A)))();
}

uint64_t sub_1D4D6A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  a21 = v21 - 2008441969 * ((&a19 & 0x1286EABC | ~(&a19 | 0x1286EABC)) ^ 0xA5E0414D) + 3383;
  a20 = a18;
  v24 = (*(v23 + 8 * (v21 ^ 0x2D7D)))(&a19);
  return (*(v23 + 8 * (((a19 == v22) * (v21 ^ 0x1860 ^ v21 ^ 0x196F ^ 0x16E1)) ^ v21)))(v24);
}

uint64_t sub_1D4D6A210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = STACK[0x648];
  STACK[0x6E0] = STACK[0x648];
  return (*(a4 + 8 * (((((v7 ^ (v8 == 0)) & 1) == 0) * (a6 ^ 0x1404)) ^ v6)))();
}

void sub_1D4D6A250(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1D4C0C4E4);
}

void sub_1D4D6A36C(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = *(STACK[0x5F8] + 120);
  v7 = STACK[0x5F8] + 104;
  v8 = 914963389 * ((1660318185 - ((v5 - 232) | 0x62F671E9) + ((v5 - 232) | 0x9D098E16)) ^ 0xB1F53F6D);
  *(v5 - 192) = ((*(STACK[0x5F8] + 100) ^ 0xEAA2A79B) + ((v3 - 1306) ^ 0x35FDFA24) + ((2 * *(STACK[0x5F8] + 100)) & 0xD5454F36)) ^ v8;
  *(v5 - 184) = v2;
  *(v5 - 168) = v7;
  *(v5 - 216) = (((v4 ^ 0xD3803A15) + 746571243) ^ ((v4 ^ 0xCC355F80) + 868917376) ^ ((v4 ^ 0x1470FCC6) - 342949062)) - v8 + 1996137537;
  *(v5 - 208) = v8 + (v6 ^ 0xCEFBBBBB) + ((2 * v6) & 0x9DF77776) + 1001225584;
  *(v5 - 224) = v2;
  *(v5 - 232) = 1491323843 - v8;
  *(v5 - 176) = v8 + v3 + 2153;
  *(v5 - 200) = a2;
  (*(a1 + 8 * (v3 + 7250)))(v5 - 232);
  JUMPOUT(0x1D4D6A4D8);
}

uint64_t sub_1D4D6A6E8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x760] = a1;
  LODWORD(STACK[0x998]) = v3;
  LOWORD(STACK[0x99E]) = v2;
  LODWORD(STACK[0x9A0]) = STACK[0x62C];
  LODWORD(STACK[0x9A4]) = STACK[0x89C];
  STACK[0x9A8] = STACK[0x588];
  STACK[0x750] = STACK[0x4E8];
  return (*(v4 + 8 * (((a1 != 0) * (((2 * v1) ^ 0x44EE) - 349)) ^ v1)))();
}

void sub_1D4D6AB0C()
{
  v2 = v4[3] ^ 0x3C;
  v3 = ((*v4 ^ 0x3C) << 24) | ((v4[1] ^ 0x3C) << 16) | ((v4[2] ^ 0x3C) << 8) | v2;
  **(v0 + 16) = (v3 - 2 * (v3 & 0x11AB605A ^ v2 & 8) - 1851039662) ^ 0x91AB6052;
  *v0 = *(v1 + 24);
}

uint64_t sub_1D4D6AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(v49 - 240) = *v47;
  *(v49 - 239) = v47[1];
  *(v49 - 238) = v47[2];
  *(v49 - 237) = v47[3];
  *(v49 - 236) = v47[4];
  *(v49 - 235) = v47[5];
  *(v49 - 234) = v47[6];
  *(v49 - 233) = v47[7];
  *(v49 - 232) = v47[8];
  *(v49 - 231) = v47[9];
  *(v49 - 230) = v47[10];
  *(v49 - 229) = v47[11];
  *(v49 - 228) = v47[12];
  *(v49 - 227) = v47[13];
  *(v49 - 226) = v47[14];
  *(v49 - 225) = v47[15];
  if (a8)
  {
    v50 = v49 == 240;
  }

  else
  {
    v50 = 1;
  }

  v53 = v50 || *(a1 + 48) == 0 || *(a1 + 64) == 0;
  return (*(v48 + 8 * (v53 ^ v46 ^ 0x292E)))(a1, a2, a3, v49 - 240, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_1D4D6ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x845A2815) - &a14 + (&a14 & 0x7BA5D7E8)) ^ 0xDC33FB77) * v21;
  a16 = a11;
  a17 = &a12;
  a15 = v23 + 1733649567;
  a18 = 1032869496 - v23;
  a19 = v23 + v22 + 1674577608;
  v24 = (*(v20 + 8 * (v22 ^ 0x206A)))(&a14);
  return (*(v20 + 8 * (((a14 == v19) * ((v22 - 523931047) & 0x17CC ^ 0x65B)) ^ v22)))(v24);
}

uint64_t sub_1D4D6AFDC@<X0>(int a1@<W8>)
{
  v2 = STACK[0x5B8];
  v3 = *STACK[0x668];
  STACK[0x800] = *(v1 + 8 * a1);
  STACK[0x6C8] = v3;
  LODWORD(STACK[0x520]) = 1;
  STACK[0x598] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 + 616609973) & 0xDB3F4FEF) + 9476)) ^ (a1 + 2169))))();
}

uint64_t sub_1D4D6B28C()
{
  *(v1 + 108) = 0;
  v3 = STACK[0x788];
  *(v1 + 104) = 16;
  *(v1 + 103) = v3[23];
  *(v1 + 102) = v3[22];
  *(v1 + 101) = v3[21];
  *(v1 + 100) = v3[20];
  *(v1 + 99) = v3[19];
  *(v1 + 98) = v3[18];
  *(v1 + 97) = v3[17];
  *(v1 + 96) = v3[16];
  *(v1 + 95) = v3[15];
  *(v1 + 94) = v3[14];
  *(v1 + 93) = v3[13];
  *(v1 + 92) = v3[12];
  *(v1 + 91) = v3[11];
  *(v1 + 90) = v3[10];
  *(v1 + 89) = v3[9];
  *(v1 + 88) = v3[8];
  return (*(v2 + 8 * (((v3[4] == (v0 ^ 0x69)) * (((v0 - 3337) | 0x693) - 5980)) ^ v0)))();
}

void sub_1D4D6B3D0(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1D4D6B404);
}

void sub_1D4D6B414()
{
  v0 = STACK[0x5D0];
  *v0 = 0u;
  v0[1] = 0u;
  JUMPOUT(0x1D4D6B444);
}

uint64_t sub_1D4D6BB90()
{
  v2 = LOBYTE(STACK[0x77F]);
  LODWORD(STACK[0x800]) = STACK[0x70C];
  return (*(v1 + 8 * (((v2 != ((73 * (((v0 + 78) | 0x20) ^ 0x6C)) ^ 0x48)) * (((((v0 - 4786) | 0x1820) ^ 0x1B6C) + 991) ^ 0x302)) ^ ((v0 - 4786) | 0x1820))))();
}

uint64_t sub_1D4D6BBFC()
{
  v3 = (v2 - 4164) | 0x208;
  *v0 = v7;
  *(v0 + 4) = v11;
  *(v0 + 8) = v9;
  *(v0 + 10) = v10;
  v4 = (v3 - 1022) | 0x2003;
  v14 = (v3 + 6800) ^ (1824088897 * ((((&v12 | 0xCDE9504C) ^ 0xFFFFFFFE) - (~&v12 | 0x3216AFB3)) ^ 0x6A7F7CD1));
  v13 = v6;
  (*(v1 + 8 * (v3 ^ 0x2386)))(&v12);
  v14 = (v4 - 373) ^ (1824088897 * ((2 * (&v12 & 0x1183F450) - &v12 - 293860440) ^ 0xB615D8CA));
  v13 = v8;
  (*(v1 + 8 * (v4 ^ 0x783)))(&v12);
  return 0;
}

void sub_1D4D6BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = STACK[0x930];
  v7 = STACK[0x930] + 4;
  STACK[0x3D0] = STACK[0x6E0];
  STACK[0x2E0] = (v7 ^ 0xE76B6AF3B37FAF7FLL) + 0x7ED7D77DFCFFF497 + ((2 * v7) & 0xCED6D5E766FF5EFELL);
  STACK[0x2D0] = STACK[0x928];
  v8 = STACK[0x920];
  STACK[0x2C0] = ((STACK[0x920] + 4) ^ 0x6EE3F2F1B2FFB75FLL) - 0x8A0B08002801349 + ((2 * (STACK[0x920] + 4)) & 0xDDC7E5E365FF6EBELL);
  STACK[0x2B0] = ((STACK[0x910] + 4) ^ 0x7EE3E77BFCFFADB7) - 0x18A0A50A4C8009A1 + ((2 * (STACK[0x910] + 4)) & 0xFDC7CEF7F9FF5B6ELL);
  STACK[0x2A0] = ((STACK[0x960] + 4) ^ 0xEFCB6279B07FFFFFLL) + 0x7677DFF7FFFFA417 + ((2 * (STACK[0x960] + 4)) & 0xDF96C4F360FFFFFELL);
  STACK[0x290] = ((STACK[0x980] + 4) ^ 0x7F63E379F7FFFDFFLL) - 0x1920A108478059E9 + ((2 * (STACK[0x980] + 4)) & 0xFEC7C6F3EFFFFBFELL);
  STACK[0x280] = ((STACK[0x900] + 4) ^ 0x7F5F77F1FAFFFC77) - 0x191C35804A805861 + ((2 * (STACK[0x900] + 4)) & 0xFEBEEFE3F5FFF8EELL);
  v9 = STACK[0x9A0];
  STACK[0x270] = ((STACK[0x9A0] + 4) ^ 0xFE576B7FF4FFEC1ELL) + 0x67EBD6F1BB7FB7F8 + ((2 * (STACK[0x9A0] + 4)) & 0xFCAED6FFE9FFD83CLL);
  v10 = STACK[0x9B0];
  STACK[0x250] = ((STACK[0x9B0] + 4) ^ 0x7E776BFDB1FFA6FELL) - 0x1834298C018002E8 + ((2 * (STACK[0x9B0] + 4)) & 0xFCEED7FB63FF4DFCLL);
  STACK[0x230] = ((STACK[0x8F0] + 4) ^ 0xFEDB56F1B47FFC9FLL) + 0x6767EB7FFBFFA777 + ((2 * (STACK[0x8F0] + 4)) & 0xFDB6ADE368FFF93ELL);
  STACK[0x220] = ((STACK[0x9E8] + 4) ^ 0xEFF34A79B07FBF36) + 0x764FF7F7FFFFE4E0 + ((2 * (STACK[0x9E8] + 4)) & 0xDFE694F360FF7E6CLL);
  STACK[0x210] = ((v6 + 6) ^ 0xFB5EBFFBFFFFF3FFLL) + 0x66AFFFBDF8FBFD3ALL + ((2 * (v6 + 6)) & 0xF6BD7FF7FFFFE7FELL);
  STACK[0x200] = ((v8 + 6) ^ 0x6AEFFFBDFAFBF53BLL) - 0x8E1400402000402 + ((2 * (v8 + 6)) & 0xD5DFFF7BF5F7EA76);
  STACK[0x2F0] = v6 + ((a6 - 788178173) & 0x2EFAB7F7 ^ 0x14E9);
  STACK[0x260] = v9 + 10;
  STACK[0x240] = v10 + 10;
  STACK[0x350] = STACK[0x7A0];
  STACK[0x340] = STACK[0x668];
  STACK[0x310] = STACK[0x740];
  STACK[0x300] = STACK[0x7E8];
  STACK[0x330] = STACK[0x7A8];
  STACK[0x3C0] = STACK[0x478];
  STACK[0x3B0] = STACK[0x4F8];
  STACK[0x320] = STACK[0x520];
  STACK[0x3A0] = STACK[0x790];
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x8DA]);
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x8BE]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x8AE]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x88E]);
  JUMPOUT(0x1D4D24CE0);
}

uint64_t sub_1D4D6BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  STACK[0x820] = v5;
  if (v7)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(a4 + 8 * ((((((v6 ^ 0x45) + 1) ^ v9) & 1) * ((v6 + 642338432) & 0xD9B6AFFC ^ 0x291)) ^ v6)))();
}

uint64_t sub_1D4D6BD60(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = 1358806181 * (a1 ^ 0x3F2F6C83);
  v2 = *(a1 + 32) ^ v1;
  v3 = *(a1 + 48) + v1;
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = *(a1 + 52) + v1;
  v7 = *(&off_1F5090370 + v2 - 915945387) - 8;
  if (v3 == 726920995 || v3 == 726920992)
  {
    __asm { BRAA            X19, X17 }
  }

  v9 = *(a1 + 8);
  v10 = 33731311 * ((2 * (v13 & 0x67C88B18) - v13 + 406287584) ^ 0x21C1BEC3);
  v14 = *(a1 + 24);
  v15 = v5;
  v13[1] = v6 - v10 - 805185212;
  v17 = v10 + v2 - 915938572;
  v16 = v9;
  v18 = v4;
  result = (*&v7[8 * (v2 ^ 0x36981D35)])(v13);
  *(a1 + 16) = v13[0];
  return result;
}

uint64_t sub_1D4D6C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a2;
  v10 = a4 - 1;
  *(v6 + v10) = *(v7 + v10) ^ *(a1 + v10) ^ (47 * v10) ^ *(v9 + 3) ^ *(v4 + v10) ^ 0x3C;
  return (*(v8 + 8 * ((59 * (v10 == ((v5 + 1461900446) & 0xA8DD1FD5 ^ 0xF11))) ^ v5)))();
}

void sub_1D4D6C0CC()
{
  *&STACK[0x2D0] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x300] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x310] = vdupq_n_s64(v1);
  *&STACK[0x2E0] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  JUMPOUT(0x1D4D6C338);
}

uint64_t sub_1D4D6D85C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  STACK[0x848] = *(a1 + 8 * v4);
  LODWORD(STACK[0x9F4]) = v3;
  STACK[0x9F8] = &STACK[0x758];
  return (*(a1 + 8 * (((a2 == 0) * ((((((v4 + 6065) | 0x44) - 2868) | 0x424) - 2167) ^ 0xB0F)) ^ ((v4 + 6065) | 0x44))))();
}

uint64_t sub_1D4D6D954@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x7F8];
  STACK[0x9B0] = STACK[0x7F8];
  return (*(v2 + 8 * ((2448 * (v1 - v3 > ((a1 - 3125) | 0x1180u) - 5613)) ^ a1)))();
}

uint64_t sub_1D4D6D9A4@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x31A6)))(a1);
  *(STACK[0x790] + 24) = 0;
  return sub_1D4D6D9D0();
}

void sub_1D4D6D9D0()
{
  (*(v1 + 8 * (v0 + 6155)))();
  STACK[0x790] = 0;
  JUMPOUT(0x1D4D6D9FCLL);
}

void df35957c4e0()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 - dword_1EC7E46C8) ^ 0xDF)) ^ byte_1D4E17DB0[byte_1D4E31360[(-85 * ((dword_1EC7E4810 - dword_1EC7E46C8) ^ 0xDF))] ^ 0x1F]) - 58);
  v1 = *(v0 - 4);
  v6 = off_1F5090A88 - 8;
  v2 = off_1F5090418 - 8;
  v3 = *(&off_1F5090370 + (*(off_1F5090418 + (*(off_1F5090A88 + (-85 * ((dword_1EC7E4810 - v1) ^ 0xDF)) - 8) ^ 0x9Bu) - 8) ^ (-85 * ((dword_1EC7E4810 - v1) ^ 0xDF))) + 128);
  v4 = 2054362027 * ((&v9[1] + v1 + *v3) ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v4;
  *v3 = v4;
  v8 = 0;
  v7 = 0;
  v11 = &v7;
  v10[0] = 869295389 * ((1800565523 - (v10 | 0x6B527313) + (v10 | 0x94AD8CEC)) ^ 0x25F9A0BF) + 1903876051;
  LODWORD(v4) = 2054362027 * ((*v3 - *(v0 - 4)) ^ 0x3EF64BDF);
  v5 = *(&off_1F5090370 + ((-85 * (dword_1EC7E46C8 ^ 0xDF ^ dword_1EC7E4810)) ^ byte_1D4E17DB0[byte_1D4E31360[(-85 * (dword_1EC7E46C8 ^ 0xDF ^ dword_1EC7E4810))] ^ 0x1F]) + 191) - 8;
  (*&v5[8 * (*(off_1F5090560 + (*(off_1F5090728 + v4 - 12) ^ 0xE2u) - 12) ^ v4) + 76816])(v10);
  v9[0] = 0;
  v10[0] = 869295389 * ((v10 & 0x6C6D09CE | ~(v10 | 0x6C6D09CE)) ^ 0x22C6DA62) + 1903876051;
  v11 = v9;
  (*&v5[8 * (*(off_1F5090888 + ((*off_1F5090990)[(-85 * ((*v3 - *(v0 - 4)) ^ 0xDF))] ^ 0x21u) - 12) ^ (-85 * ((*v3 - *(v0 - 4)) ^ 0xDF))) + 76024])(v10);
  v10[0] = 476323082 - 1710126949 * ((((v10 | 0x15AA73E0) ^ 0xFFFFFFFE) - (~v10 | 0xEA558C1F)) ^ 0xD84ED78F);
  (*&v5[8 * ((-85 * ((*v3 - *(v0 - 4)) ^ 0xDF)) ^ v2[v6[(-85 * ((*v3 - *(v0 - 4)) ^ 0xDF))] ^ 0xBF]) + 75368])(v10);
  __asm { BRAA            X8, X17 }
}

void sub_1D4D6DFF4(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x7FFD9340) + (~a1 | 0x80026CBF))) ^ 0xB9F4A69C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D6E1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x600] = v4;
  v6 = (*(a4 + 8 * (v5 ^ 0x3765)))(32, 0x103004054B5FA7DLL);
  v7 = STACK[0x3E8];
  STACK[0x4C0] = v6;
  return (*(v7 + 8 * (((v6 == 0) * (((v5 + 414) ^ 0xFFFFFD79) + (v5 ^ 0xA63))) ^ v5)))();
}

void WGrQCCz7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && a5 != 0 && a6 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4D6E8AC()
{
  STACK[0x948] = v1;
  v3 = STACK[0x478];
  STACK[0x950] = STACK[0x478];
  return (*(v2 + 8 * ((3130 * (v1 - v3 > (4 * ((v0 - 1814264284) & 0x2C236F4A ^ 0xA15u)) - 371)) ^ v0)))();
}

uint64_t sub_1D4D6E9D8()
{
  v4 = (*(v3 + 8 * (v0 + 4623)))();
  *v1 = 0;
  return v2(v4);
}

uint64_t sub_1D4D6EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = STACK[0x3F8] - 507;
  v44 = (v41 ^ v42) + a41;
  STACK[0xA10] = v44;
  return (*(STACK[0x400] + 8 * (v43 ^ (29 * (v44 > a34)))))();
}

uint64_t sub_1D4D6EABC()
{
  v5 = (v2 - 1901) - v1 - 1800;
  v6 = *(v0 + v5 - 15);
  v7 = *(v0 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((6347 * (v1 == 96)) ^ v2)))();
}

uint64_t sub_1D4D6EB08@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((v5 - a2 - 712) ^ 0x1F0E)) ^ (v3 + v5 + 3252))))();
}

uint64_t sub_1D4D6EB44@<X0>(int8x16_t *a1@<X8>)
{
  v2.i64[0] = 0x7878787878787878;
  v2.i64[1] = 0x7878787878787878;
  v3 = vsubq_s8(v1[1], vandq_s8(vaddq_s8(v1[1], v1[1]), v2));
  v4 = vandq_s8(vaddq_s8(*v1, *v1), v2);
  v2.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v2.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *a1 = vaddq_s8(vsubq_s8(*v1, v4), v2);
  a1[1] = vaddq_s8(v3, v2);
  return sub_1D4D6EB78();
}

uint64_t sub_1D4D6EB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(v64 + 8 * (v65 ^ 0x34CA)))(v67, 0, 24);
  *(v66 + 104) = 0x1FA834112;
  *(v66 + 112) = 0x200000004;
  STACK[0x5B8] = v67;
  LODWORD(STACK[0x73C]) = 0;
  STACK[0x4D8] = 0;
  v68 = (*(a64 + 8 * (v65 ^ 0x34E8)))(128, 0x10800400FED9166);
  STACK[0x668] = v68;
  return (*(a64 + 8 * (((v68 == 0) * (((v65 - 4416) | 0xA40) ^ 0xA57)) ^ v65)))();
}

void sub_1D4D6EC28(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&STACK[0x310] = vdupq_n_s64(0x731CB210FB4C4567uLL);
  *&STACK[0x320] = vdupq_n_s64(0x19C69BDE09677532uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x6D4CEA43F2532C17uLL);
  *&STACK[0x300] = vdupq_n_s64(v7);
  *&STACK[0x2D0] = vdupq_n_s64(0xC008A9762A8A187uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE7FEEAD13AAEBCF2);
  STACK[0x2C0] = a6 + v8;
  *&STACK[0x2A0] = vdupq_n_s64(v9);
  *&STACK[0x2B0] = vdupq_n_s64(0x176202B71A6AE107uLL);
  *&STACK[0x290] = vdupq_n_s64(a1);
  STACK[0x280] = v6 + v8 - 8512;
  *&STACK[0x260] = vdupq_n_s64(a3);
  *&STACK[0x270] = vdupq_n_s64(a2);
  *&STACK[0x240] = vdupq_n_s64(a5);
  *&STACK[0x250] = vdupq_n_s64(a4);
  *&STACK[0x220] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x230] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x200] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x210] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  JUMPOUT(0x1D4D6EE14);
}

uint64_t sub_1D4D70080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 & 0xDACD8FDA | ~(&a14 | 0xDACD8FDA)) ^ 0x7D5BA347) * v21;
  a15 = v23 + 920149463;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674576251;
  a16 = a12;
  a17 = &a11;
  v24 = (*(v19 + 8 * (v22 ^ 0x2EA7u)))(&a14);
  return (*(v19 + 8 * (((a14 == v20) * ((((v22 - 557378418) & 0x37C7) - 3800) ^ 0x117B)) ^ v22)))(v24);
}

uint64_t sub_1D4D70220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 224) = (v64 - 2140796570) ^ (914963389 * ((v65 - 232) ^ 0x2CFCB17B));
  v67 = (*(v66 + 8 * (v64 + 9178)))(v65 - 232);
  v68 = *(STACK[0x668] + 8);
  STACK[0x5F8] = *(a64 + 8 * v64);
  return (*(a64 + 8 * (((v68 == 0) * (((210 * (v64 ^ 0x1CE)) ^ 0xFFFFF466) + 6 * (v64 ^ 0x7B))) ^ v64 ^ 0x248B)))(v67, 16215976);
}

uint64_t sub_1D4D70344()
{
  v1.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v1.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_1D4D70368((v0 + 2138297564) ^ 0x1866, 9512, v1);
}

uint64_t sub_1D4D70368(uint64_t a1, int a2, int8x16_t a3)
{
  v11 = ~v7 + v5;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = v9 + v11;
  *(v14 - 15) = veorq_s8(v12, a3);
  *(v14 - 31) = veorq_s8(v13, a3);
  return (*(v10 + 8 * (((a1 + v7 == v6) * a2) ^ (v4 + v8 + 1283))))();
}

uint64_t sub_1D4D703B8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x938] = v2;
  v4 = STACK[0x370];
  STACK[0x940] = STACK[0x370];
  return (*(v3 + 8 * ((1532 * (v2 - v4 > (((v1 ^ 0x1B45u) + 5274) ^ a1))) ^ v1)))();
}

void sub_1D4D704A0(uint64_t a1)
{
  v1 = 869295389 * ((~a1 & 0xF52F98AE | a1 & 0xAD06751) ^ 0x447BB4FD);
  v2 = *(a1 + 12) - v1;
  v3 = (*(a1 + 8) - v1);
  if (*a1)
  {
    v4 = v3 == 12299;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

void sub_1D4D705C8()
{
  STACK[0x310] = STACK[0x4E0] + 24;
  v0 = LOWORD(STACK[0x9BE]);
  LODWORD(STACK[0x2C0]) = v0;
  LODWORD(STACK[0x2B0]) = v0 ^ 0xFFFFA60A;
  v1 = STACK[0x9C0];
  LODWORD(STACK[0x2D0]) = 197499223;
  LODWORD(STACK[0x220]) = LODWORD(STACK[0x9C4]) ^ 0xD6A561FA;
  STACK[0x300] = STACK[0x820] + 24;
  v2 = LOWORD(STACK[0x9F6]);
  LODWORD(STACK[0x2A0]) = v2;
  LODWORD(STACK[0x290]) = v2 ^ 0x4CF9;
  v3 = STACK[0x9F8];
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x9FC]) ^ 0xD6A561FA;
  STACK[0x2F0] = STACK[0x6F0] + 24;
  STACK[0x2E0] = STACK[0x470] + 24;
  LODWORD(STACK[0x240]) = v1;
  LODWORD(STACK[0x280]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x230]) = v3;
  LODWORD(STACK[0x270]) = v3 ^ 0xD6A561FA;
  LODWORD(STACK[0x260]) = LODWORD(STACK[0x51C]) ^ 0xD6A561FA;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x8F4]) - ((2 * LODWORD(STACK[0x8F4])) & 0xBAC1F152) - 580847447;
  JUMPOUT(0x1D4BFC8D4);
}

uint64_t sub_1D4D705E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = v20;
  STACK[0x310] = a5 & 0xFFFFFFF8;
  v28 = a16 - (a5 & 0xFFFFFFF8) + 8;
  v29 = a6 + v19 + a1 + v16 + a5 - a16;
  v30 = v17 + a5 - a16;
  v31.i64[0] = v30 - 7;
  v31.i64[1] = v30 - 8;
  v32.i64[0] = v30 - 3;
  v32.i64[1] = v30 - 4;
  v33.i64[0] = v30 - 1;
  v33.i64[1] = v30 - 2;
  v34 = (a3 + 3904) | 0x200u;
  v35.i64[0] = v30 - 5;
  v35.i64[1] = v30 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v36.i64[0] = v29 - 5;
  v36.i64[1] = v29 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v37.i64[0] = v29 - 1;
  v37.i64[1] = v29 - 2;
  v38.i64[0] = v29 - 3;
  v38.i64[1] = v29 - 4;
  v39.i64[0] = v29 - 7;
  v39.i64[1] = v29 - 8;
  v40 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v41 = vandq_s8(v35, v40);
  v42 = vandq_s8(v33, v40);
  v43 = vandq_s8(v32, v40);
  v44 = vandq_s8(v31, v40);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v49 = vdupq_n_s64(0x38uLL);
  v50 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v51 = vaddq_s64(v48, v50);
  v52 = vaddq_s64(v47, v50);
  v53 = vaddq_s64(v46, v50);
  v54 = vaddq_s64(v45, v50);
  v55 = vdupq_n_s64(v27);
  v56 = vdupq_n_s64(0xB30538E1A5AF13B6);
  v57 = vsubq_s64(vorrq_s8(v51, v55), vorrq_s8(v51, v56));
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(v54, v55), vorrq_s8(v54, v56)), v56);
  v59 = vaddq_s64(vsubq_s64(vorrq_s8(v53, v55), vorrq_s8(v53, v56)), v56);
  v60 = vaddq_s64(vsubq_s64(vorrq_s8(v52, v55), vorrq_s8(v52, v56)), v56);
  v61 = vdupq_n_s64(0x513852535460B9BuLL);
  v62 = vaddq_s64(v57, v56);
  v63 = veorq_s8(v62, v61);
  v64 = veorq_s8(v60, v61);
  v65 = veorq_s8(v59, v61);
  v66 = vdupq_n_s64(0xAD5560B2ACB07AC7);
  v67 = veorq_s8(v58, v61);
  v68 = veorq_s8(v58, v66);
  v69 = veorq_s8(v59, v66);
  v70 = veorq_s8(v60, v66);
  v71 = veorq_s8(v62, v66);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v74 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v75 = veorq_s8(vaddq_s64(v72, v68), v74);
  v76 = veorq_s8(v73, v74);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v70), v74);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v71), v74);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v81 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v82 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v82);
  v87 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v88 = veorq_s8(vaddq_s64(v83, v79), v87);
  v89 = veorq_s8(vaddq_s64(v84, v80), v87);
  v90 = veorq_s8(vaddq_s64(v85, v81), v87);
  v91 = veorq_s8(v86, v87);
  v92 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v95 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v96 = veorq_s8(v90, v94);
  v97 = veorq_s8(v89, v93);
  v98 = veorq_s8(v88, v92);
  v99 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v98);
  v103 = vaddq_s64(v101, v97);
  v104 = vaddq_s64(v100, v96);
  v105 = vaddq_s64(v99, v95);
  v106 = vdupq_n_s64(0x68767FB9A21293EuLL);
  v107 = vdupq_n_s64(0x343B3FDCD10949FuLL);
  v108 = vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), v106)), v107);
  v109 = vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v106)), v107);
  v110 = vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v106)), v107);
  v111 = vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v106)), v107);
  v112 = vdupq_n_s64(0x5A20053898C9EB80uLL);
  v113 = veorq_s8(v111, v112);
  v114 = veorq_s8(v110, v112);
  v115 = veorq_s8(v109, v112);
  v116 = veorq_s8(v108, v112);
  v117 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v121 = veorq_s8(v115, v119);
  v122 = veorq_s8(v114, v118);
  v123 = veorq_s8(v113, v117);
  v124 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v123);
  v128 = vaddq_s64(v126, v122);
  v129 = vaddq_s64(v125, v121);
  v130 = vaddq_s64(v124, v120);
  v131 = vdupq_n_s64(0x20842EAD28A8535AuLL);
  v132 = vdupq_n_s64(0xDF7BD152D757ACA5);
  v133 = vaddq_s64(vsubq_s64(vorrq_s8(v130, v131), vorrq_s8(v130, v132)), v132);
  v134 = vaddq_s64(vsubq_s64(vorrq_s8(v129, v131), vorrq_s8(v129, v132)), v132);
  v135 = vaddq_s64(vsubq_s64(vorrq_s8(v128, v131), vorrq_s8(v128, v132)), v132);
  v136 = vaddq_s64(vsubq_s64(vorrq_s8(v127, v131), vorrq_s8(v127, v132)), v132);
  v137 = vdupq_n_s64(0x41C1B387D8B777ADuLL);
  v138 = veorq_s8(v136, v137);
  v139 = veorq_s8(v135, v137);
  v140 = veorq_s8(v134, v137);
  v141 = veorq_s8(v133, v137);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v143 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v144 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v145 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v146 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v145);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v144);
  v150 = vaddq_s64(v147, v143);
  v151 = vaddq_s64(v146, v142);
  v152 = vdupq_n_s64(0x9D61AAA81A10264DLL);
  v153 = vdupq_n_s64(0x629E5557E5EFD9B2uLL);
  v154 = vsubq_s64(vorrq_s8(v148, v152), vorrq_s8(v148, v153));
  v155 = vaddq_s64(vsubq_s64(vorrq_s8(v151, v152), vorrq_s8(v151, v153)), v153);
  v156 = vaddq_s64(vsubq_s64(vorrq_s8(v150, v152), vorrq_s8(v150, v153)), v153);
  v157 = vaddq_s64(vsubq_s64(vorrq_s8(v149, v152), vorrq_s8(v149, v153)), v153);
  v158 = vdupq_n_s64(0xF9A2B6AA6A94F821);
  v159 = veorq_s8(vaddq_s64(v154, v153), v158);
  v160 = veorq_s8(v157, v158);
  v161 = veorq_s8(v156, v158);
  v162 = veorq_s8(v155, v158);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v164 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v165 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v166 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v167 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v168 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v169 = veorq_s8(vaddq_s64(v167, v163), v168);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v164), v168);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v165), v168);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v166), v168);
  v173 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v176 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, v173));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, v174));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, v175));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176);
  v181 = vdupq_n_s64(0x170BF460A85E9EEEuLL);
  v182 = vdupq_n_s64(0xF47A05CFABD0B088);
  v183 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v181), v177), v182);
  v184 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v181), v178), v182);
  v185 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v181), v179), v182);
  v186 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v181), v180), v182);
  v187 = vdupq_n_s64(0x5F4A471D8357ECC9uLL);
  v188 = veorq_s8(v186, v187);
  v189 = veorq_s8(v185, v187);
  v190 = veorq_s8(v184, v187);
  v191 = veorq_s8(v183, v187);
  v192 = vandq_s8(vshlq_n_s64(v31, 3uLL), v49);
  v193 = vandq_s8(vshlq_n_s64(v32, 3uLL), v49);
  v194 = vshlq_u64(v191, vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v49)));
  v195 = vshlq_u64(v190, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v49)));
  v196 = vshlq_u64(v189, vnegq_s64(v193));
  v197 = vshlq_u64(v188, vnegq_s64(v192));
  v198 = vandq_s8(v39, v40);
  v199 = vandq_s8(v38, v40);
  v200 = vandq_s8(v37, v40);
  v201 = vandq_s8(v36, v40);
  v202 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v205 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v207 = vaddq_s64(v206, v205);
  v208 = vaddq_s64(v204, v205);
  v209 = vaddq_s64(v203, v205);
  v210 = vdupq_n_s64(0x29702F06207D0E1CuLL);
  v211 = vaddq_s64(v202, v205);
  v212 = vdupq_n_s64(0x5879FD990C46CAD5uLL);
  v213 = vaddq_s64(vandq_s8(vsubq_s64(v210, v202), v212), v211);
  v214 = vaddq_s64(vandq_s8(vsubq_s64(v210, v203), v212), v209);
  v215 = vaddq_s64(vandq_s8(vsubq_s64(v210, v204), v212), v208);
  v216 = vaddq_s64(vandq_s8(vsubq_s64(v210, v206), v212), v207);
  v217 = vdupq_n_s64(0x5E79FD990C46CAD5uLL);
  v218 = vsubq_s64(v216, vandq_s8(v207, v217));
  v219 = vsubq_s64(v215, vandq_s8(v208, v217));
  v220 = vsubq_s64(v214, vandq_s8(v209, v217));
  v221 = vsubq_s64(v213, vandq_s8(v211, v217));
  v222 = vdupq_n_s64(0x6F262667B511DA8BuLL);
  v223 = veorq_s8(v221, v222);
  v224 = veorq_s8(v220, v222);
  v225 = veorq_s8(v219, v222);
  v226 = veorq_s8(v218, v222);
  v227 = vdupq_n_s64(0xDB58A1A949065591);
  v228 = veorq_s8(v218, v227);
  v229 = veorq_s8(v219, v227);
  v230 = veorq_s8(v220, v227);
  v231 = veorq_s8(v221, v227);
  v232 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v229);
  v234 = vaddq_s64(v232, v228);
  v235 = vdupq_n_s64(0xBC7AB44B3A189480);
  v236 = veorq_s8(v234, v235);
  v237 = veorq_s8(v233, v235);
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v230), v235);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v231), v235);
  v240 = vdupq_n_s64(0xF0BA186BA47F666CLL);
  v241 = vdupq_n_s64(0x87A2F3CA2DC04CCALL);
  v242 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236, v236), v240), v236), v241);
  v243 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), v240), v237), v241);
  v244 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), v240), v238), v241);
  v245 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v239, v239), v240), v239), v241);
  v246 = vdupq_n_s64(a7);
  v247 = veorq_s8(v245, v246);
  v248 = veorq_s8(v244, v246);
  v249 = veorq_s8(v243, v246);
  v250 = veorq_s8(v242, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v253 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v254 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v255 = veorq_s8(v248, v252);
  v256 = veorq_s8(v247, v251);
  v257 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v256);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v255);
  v261 = vaddq_s64(v258, v254);
  v262 = vaddq_s64(v257, v253);
  v263 = vdupq_n_s64(a8);
  v264 = vdupq_n_s64(v22);
  v265 = vdupq_n_s64(v23);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(v262, vandq_s8(vaddq_s64(v262, v262), v263)), v264), v265);
  v267 = veorq_s8(vaddq_s64(vsubq_s64(v261, vandq_s8(vaddq_s64(v261, v261), v263)), v264), v265);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(v260, vandq_s8(vaddq_s64(v260, v260), v263)), v264), v265);
  v269 = veorq_s8(vaddq_s64(vsubq_s64(v259, vandq_s8(vaddq_s64(v259, v259), v263)), v264), v265);
  v270 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL);
  v273 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v274 = veorq_s8(v268, v272);
  v275 = veorq_s8(v267, v271);
  v276 = veorq_s8(v266, v270);
  v277 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v276);
  v281 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v282 = veorq_s8(vaddq_s64(v277, v273), v281);
  v283 = veorq_s8(vaddq_s64(v278, v274), v281);
  v284 = veorq_s8(vaddq_s64(v279, v275), v281);
  v285 = veorq_s8(v280, v281);
  v286 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v287 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v289 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v290 = veorq_s8(v284, v288);
  v291 = veorq_s8(v283, v287);
  v292 = veorq_s8(v282, v286);
  v293 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v294 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v295 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v292);
  v297 = vaddq_s64(v295, v291);
  v298 = vaddq_s64(v294, v290);
  v299 = vaddq_s64(v293, v289);
  v300 = vdupq_n_s64(v24);
  v301 = vdupq_n_s64(v25);
  v302 = vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v300)), v301);
  v303 = vaddq_s64(vsubq_s64(v297, vandq_s8(vaddq_s64(v297, v297), v300)), v301);
  v304 = vaddq_s64(vsubq_s64(v298, vandq_s8(vaddq_s64(v298, v298), v300)), v301);
  v305 = vaddq_s64(vsubq_s64(v299, vandq_s8(vaddq_s64(v299, v299), v300)), v301);
  v306 = vdupq_n_s64(v26);
  v307 = veorq_s8(v305, v306);
  v308 = veorq_s8(v304, v306);
  v309 = veorq_s8(v303, v306);
  v310 = veorq_s8(v302, v306);
  v311 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v314 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v315 = veorq_s8(v309, v313);
  v316 = veorq_s8(v308, v312);
  v317 = veorq_s8(v307, v311);
  v318 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v319 = vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v321 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v317);
  v322 = vaddq_s64(v320, v316);
  v323 = vaddq_s64(v319, v315);
  v324 = vaddq_s64(v318, v314);
  v325 = vdupq_n_s64(v21);
  v326 = vdupq_n_s64(0x2451E0AF25CF2710uLL);
  v327 = vaddq_s64(vsubq_s64(vorrq_s8(v324, v325), vorrq_s8(v324, v326)), v326);
  v328 = vaddq_s64(vsubq_s64(vorrq_s8(v323, v325), vorrq_s8(v323, v326)), v326);
  v329 = vaddq_s64(vsubq_s64(vorrq_s8(v322, v325), vorrq_s8(v322, v326)), v326);
  v330 = vaddq_s64(vsubq_s64(vorrq_s8(v321, v325), vorrq_s8(v321, v326)), v326);
  v331 = vdupq_n_s64(v18);
  v332 = veorq_s8(v330, v331);
  v333 = veorq_s8(v329, v331);
  v334 = veorq_s8(v328, v331);
  v335 = veorq_s8(v327, v331);
  v336 = vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL);
  v337 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v339 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL));
  v340 = veorq_s8(v334, v338);
  v341 = veorq_s8(v333, v337);
  v342 = veorq_s8(v332, v336);
  v343 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v345 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v346 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v342);
  v347 = vaddq_s64(v344, v340);
  v348 = vaddq_s64(v343, v339);
  v349 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v350 = veorq_s8(v348, v349);
  v351 = veorq_s8(v347, v349);
  v352 = veorq_s8(vaddq_s64(v345, v341), v349);
  v353 = veorq_s8(v346, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL)));
  v358 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v359 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), veorq_s8(v351, v355)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v49)));
  v361.val[3] = veorq_s8(vshlq_u64(veorq_s8(v357, v358), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v49))), v197);
  v361.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL), veorq_s8(v352, v356)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v49))), v196);
  v361.val[0] = veorq_s8(v359, v195);
  v361.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), veorq_s8(v350, v354)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v49))), v194);
  *(v29 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v361, xmmword_1D4E31470)), *(v30 - 8));
  return (*(STACK[0x330] + 8 * ((6644 * (v28 == 0)) ^ a3)))();
}

uint64_t sub_1D4D71360()
{
  *(v5 - 224) = v1 ^ (914963389 * ((((2 * (v5 - 232)) | 0xF478A40A) - (v5 - 232) + 96710139) ^ 0xD6C0E37E));
  v6 = (*(v4 + 8 * (v0 ^ 0x326D)))(v5 - 232);
  *(v3 + 16) = *(v5 - 232) ^ v2;
  return (*(v4 + 8 * (v0 + 674)))(v6);
}

uint64_t sub_1D4D71450()
{
  LOWORD(STACK[0x89A]) = v2;
  LODWORD(STACK[0x2B0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5298)))();
}

uint64_t sub_1D4D7152C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51)
{
  v51 = STACK[0x3E4];
  v52 = (a3 ^ 0xBC59953u) + STACK[0x240];
  STACK[0x8B0] = v52;
  return (*(STACK[0x3E8] + 8 * ((v51 - 260) | (8 * (v52 <= a51)))))();
}

uint64_t sub_1D4D71714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, int a13, unsigned int a14)
{
  v18 = 914963389 * (((&a10 | 0xB4866586) - &a10 + (&a10 & 0x4B799A78)) ^ 0x987AD4FD);
  a10 = &a9;
  a12 = v14;
  a13 = (((2 * v17) & 0x32) - 68295680 + (((v16 ^ 0x1D34) + 503206904) ^ v17)) ^ v18;
  a14 = -1686438660 - v18;
  a11 = (v16 - 4185) ^ v18;
  v19 = (*(v15 + 8 * (v16 + 4491)))(&a10);
  return (*(v15 + 8 * ((2708 * (*(v14 + 24) == 16257999)) ^ v16)))(v19);
}

void sub_1D4D71838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  *&STACK[0x380] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x390] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x360] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x370] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  STACK[0x210] = a5 & 0xFFFFFFF8;
  *&STACK[0x340] = vdupq_n_s64(0x6FE9388060F65D57uLL);
  *&STACK[0x350] = vdupq_n_s64(0x202D8EFF3E134550uLL);
  *&STACK[0x320] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x330] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x300] = vdupq_n_s64(0x5B4E7A73A872D06CuLL);
  *&STACK[0x310] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE50EF93BD6C6A2AALL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8D788362149CAEAALL);
  *&STACK[0x2D0] = xmmword_1D4E31470;
  *&STACK[0x2A0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xEC3D1E48E4838A5DLL);
  *&STACK[0x280] = vdupq_n_s64(0x39627EADB2F598AFuLL);
  *&STACK[0x290] = vdupq_n_s64(0x8D3B02A49A14CEA0);
  *&STACK[0x260] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x270] = vdupq_n_s64(0x92523C7F9A72C4EELL);
  *&STACK[0x240] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x220] = vdupq_n_s64(a6);
  *&STACK[0x230] = vdupq_n_s64(a8);
  JUMPOUT(0x1D4D71A94);
}

void sub_1D4D7255C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) - 2008441969 * ((((2 * a1) | 0x66E4568) - a1 - 53945012) ^ 0x4BAE76BA);
  v2 = *(&off_1F5090370 + v1 - 3776) - 8;
  (*&v2[8 * v1 + 44360])(v5, 0, 128);
  v3 = 1710126949 * ((&v6 + 738329364 - 2 * (&v6 & 0x2C020314)) ^ 0x1E195884);
  LODWORD(v7) = v3 ^ (v1 + 940076323);
  HIDWORD(v7) = 1303982150 - v3;
  v6 = v5;
  (*&v2[8 * (v1 ^ 0x2A6A)])(&v6);
  v4 = 31943069 * (&v6 ^ 0x5312319B63A94678);
  v6 = v5;
  v7 = (v4 + 0x605222BC435F6A18) | 1;
  v8 = v1 - v4 + 584252646;
  (*&v2[8 * v1 + 44912])(&v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4D727D4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x518] = *(v3 + 8 * v2);
  LODWORD(STACK[0xAA4]) = -152192876;
  STACK[0xAA8] = &STACK[0x608];
  return (*(v3 + 8 * ((a1 == 0) | (v2 - 2037334234) & 0x796F6082u)))();
}

uint64_t sub_1D4D72908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a2 - 1;
  v18 = v9 + v17 + v8;
  v19 = __ROR8__(v18 & ((4243 * (v7 ^ 0x1467u)) ^ 0xFFFFFFFFFFFFDEDELL), 8);
  v20 = (v19 + a5) ^ a6;
  v21 = __ROR8__((v19 + a5) ^ v16, 8);
  v22 = __ROR8__(((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13, 8);
  v23 = ((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13 ^ __ROR8__(v20, 61);
  v24 = (v10 - ((v22 + v23) | v10) + ((v22 + v23) | v12)) ^ v14;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a7;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF2620266DFD8DE82;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x5C3E923DC79C4710) + 0x2E1F491EE3CE2388) ^ 0x97A1B9D365930275;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x6E1E19DDB33CB23ALL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  *v18 = ((((2 * (v35 + v34)) & 0x93BA3B681E438AC2) - (v35 + v34) + 0x3622E24BF0DE3A9ELL) ^ 0x3102FDB0D852CBCLL) >> (8 * (v18 & 7u));
  return (*(a4 + 8 * ((3146 * (v17 == 0)) ^ (v7 + 613))))();
}

uint64_t sub_1D4D72A8C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2887)))();
  STACK[0x418] = 0;
  return (STACK[0x770])(v2);
}

uint64_t sub_1D4D72AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 2109) ^ ((((&a15 | 0x93B9EC39) - &a15 + (&a15 & 0x6C4613C0)) ^ 0xAA4F261A) * v21);
  a17 = a10;
  a18 = &a12;
  (*(v20 + 8 * (v18 ^ 0x2136)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * (((&a15 ^ 0x709A6727 | 0xD9489401) - ((&a15 ^ 0x709A6727) & 0xD9489401)) ^ 0xE14BA728) + 4542;
  a17 = a10;
  v22 = (*(v20 + 8 * (v18 + 8508)))(&a15);
  return (*(v20 + 8 * ((6862 * (a15 == ((v18 + 1715159448) & 0x1E9F ^ (v19 + 905)))) ^ v18)))(v22);
}

uint64_t sub_1D4D72C24()
{
  v3 = (*(v2 + 8 * (v1 + 3212)))(64, v0);
  STACK[0x760] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 1788240529) & 0x9569A57B) - 8456)) ^ (v1 + 1657))))();
}

void sub_1D4D72C98(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 1875091903 * ((a1 & 0xE8D1405E | ~(a1 | 0xE8D1405E)) ^ 0x215B3C22);
  v3 = v1 - 1710126949 * ((((&v3 | 0x1649C412) ^ 0xFFFFFFFE) - (~&v3 | 0xE9B63BED)) ^ 0xDBAD607D) + 476319409;
  v2 = *(&off_1F5090370 + (v1 ^ 0xF4E)) - 8;
  (*&v2[8 * v1 + 47704])(&v3);
  __asm { BRAA            X8, X17 }
}

void i1IfStf2DSO(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D73014(uint64_t a1)
{
  v7 = *(v3 + 8 * (((v5 - 8844) | 0x1003) ^ 0x370C));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v6 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 5221)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v6 = -42030;
    goto LABEL_7;
  }

  v6 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v6;
  return result;
}

uint64_t sub_1D4D730A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v18 = ((2 * (v14 & 0x7B7D5B721A426FF8) - v14 - 0x7B7D5B721A427000) ^ 0x50662B01540C0705) * v17;
  a12 = *(v16 + 20) - v18 + 0x4BDB88A3AECF6863 + (~(2 * *(v16 + 20)) | 0x6848EEB8A2612F3BLL);
  a10 = v18 - 1219622829 + v13;
  v19 = (*(v12 + 8 * (v13 + 3284)))(&a10);
  if (a11 != 16257999 && a11 != 16215948)
  {
    return (*(v12 + 8 * (((v15 - 6340) * (a11 == 16257999)) ^ (v15 - 3715))))(v19);
  }

  *(v16 + 20) = 0;
  *(v16 + 92) = 203186117;
  v22 = *(v16 + 124);
  if (v22)
  {
    v23 = *(v16 + 116) == ((v15 - 1119) ^ 0x14E1);
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  return (*(v12 + 8 * ((143 * v24) ^ (v15 - 2854))))(v22, v20, v21);
}

uint64_t sub_1D4D73224@<X0>(int a1@<W8>)
{
  v2 = a1 | 0x4B8;
  v3 = (a1 | 0x4B8) ^ 0x1839;
  v4 = *(STACK[0x720] + 24);
  STACK[0x388] = v4;
  return (*(v1 + 8 * (((v4 != 0) * (v3 - 3354)) ^ v2)))();
}

uint64_t sub_1D4D73268(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4) + 956911519 * ((a1 - 1138522822 - 2 * (a1 & 0xBC23853A)) ^ 0x56B2F53F);
  v5 = v2 + 2048652491 * ((-381725712 - (v4 | 0xE93F53F0) + (v4 | 0x16C0AC0F)) ^ 0xA7713B0A) - 1986968849;
  result = (*(*(&off_1F5090370 + (v2 ^ 0x766EDD31)) + (v2 ^ 0x766EF9F1) - 1))(v4);
  *a1 = v4[0];
  return result;
}

void mm0Euuzhc()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 - dword_1EC7E49A8) ^ 0xDF)) ^ byte_1D4E22020[byte_1D4E17AB0[(-85 * ((dword_1EC7E4810 - dword_1EC7E49A8) ^ 0xDF))] ^ 0xEE]) + 144);
  v1 = -85 * ((dword_1EC7E4810 - *v0) ^ 0xDF);
  v2 = *(&off_1F5090370 + (*(off_1F5090418 + (*(off_1F5090A88 + v1 - 8) ^ 1u) - 8) ^ v1) + 14);
  v3 = *v2 - *v0 - &v5;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x36DDAAE8) - v6 + 1226986771) ^ 0x7B390E83);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 + dword_1EC7E49A8) ^ 0xDF)) ^ byte_1D4E29000[byte_1D4E22120[(-85 * ((dword_1EC7E4810 + dword_1EC7E49A8) ^ 0xDF))] ^ 0x9B]) + 206) - 8;
  (*&v4[8 * (*(off_1F5090BE0 + (*(off_1F5090940 + v2) ^ 0x2Au) - 8) ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D735A4@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((14241 * (v7 == (((a2 + v5 + 2114) | 0x335u) ^ 0xBB5))) ^ (v5 + v3))))();
}

void sub_1D4D73698(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x3C5E)))(a1);
  *(STACK[0x618] + 24) = 0;
  JUMPOUT(0x1D4C66080);
}

uint64_t sub_1D4D73710()
{
  STACK[0xA88] = v1;
  v3 = STACK[0x928];
  STACK[0xA90] = STACK[0x928];
  return (*(v2 + 8 * (((v1 - v3 > (v0 ^ 0x9E5u) - 478) * ((v0 ^ 0x1FC9) - 6053)) ^ v0)))();
}

uint64_t sub_1D4D73764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = ((2 * (&a16 & 0xF70C7B8) - &a16 + 1888434244) ^ 0x28E6EB26) * v21;
  a17 = v23 + 982124808;
  a18 = a12;
  a19 = &a14;
  a20 = -654855621 - v23;
  a21 = v23 + a10 + 1674574660;
  v24 = (*(v22 + 8 * (a10 ^ 0x34EE)))(&a16);
  return (*(v22 + 8 * ((13329 * (a16 == ((a10 - 2512) ^ 0xF81459))) ^ a10)))(v24);
}

uint64_t sub_1D4D738E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 104) = veorq_s8(*(v4 + 88), xmmword_1D4E31480);
  v5 = *(v4 + 4);
  *(a1 + 20) = v5;
  return (*(a4 + 8 * (((v5 == ((a2 + 7428) ^ 0x24D7)) * (a2 + 3628)) ^ (a2 - 917))))();
}

uint64_t sub_1D4D73940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 138;
  v6 = (*(a4 + 8 * (v4 + 3326)))(138, 0x100004077774924);
  v7 = STACK[0x3E8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 != 0) * ((((v4 - 5919) | 0x400) + 3808) ^ 0x146E)) | v4)))();
}

uint64_t sub_1D4D73A14()
{
  v3 = STACK[0x6B0];
  *(v1 + 104) = 16;
  *(v1 + 103) = *(v3 + 23);
  *(v1 + 102) = *(v3 + 22);
  *(v1 + 101) = *(v3 + 21);
  *(v1 + 100) = *(v3 + 20);
  *(v1 + 99) = *(v3 + 19);
  *(v1 + 98) = *(v3 + 18);
  *(v1 + 97) = *(v3 + 17);
  *(v1 + 96) = *(v3 + 16);
  *(v1 + 95) = *(v3 + 15);
  *(v1 + 94) = *(v3 + 14);
  *(v1 + 93) = *(v3 + 13);
  *(v1 + 92) = *(v3 + 12);
  *(v1 + 91) = *(v3 + 11);
  *(v1 + 90) = *(v3 + 10);
  *(v1 + 89) = *(v3 + 9);
  *(v1 + 88) = *(v3 + 8);
  *(v1 + 84) = *v3;
  return (*(v2 + 8 * (((*(v3 + 4) == 0) * ((v0 + 458231097) & 0xE4AFF4DF ^ 0x1DE6)) ^ v0)))();
}

void sub_1D4D73B70()
{
  v3 = *(v0 + 40);
  **(v0 + 16) = v2;
  *v3 = v4;
  *(v0 + 56) = v1;
}

uint64_t sub_1D4D73BE0(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1[1] ^ (956911519 * ((2 * (a1 & 0x3B074F9) - a1 - 61895930) ^ 0x16DEFB03));
  v4[1] = v2 + 1710126949 * (((v4 | 0xB6B0CF29) + (~v4 | 0x494F30D6)) ^ 0x84AB94B8) - 1179738666;
  result = (*(*(&off_1F5090370 + (v2 ^ 0xA98300C0)) + (v2 ^ 0xA983240E) - 1))(v4);
  *a1 = v4[0];
  return result;
}

void S12yWPyxCU(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || a3 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4D74C9C()
{
  v3 = STACK[0x580];
  STACK[0x548] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((((v1 ^ 0xAFB) - 13) ^ 0xBFA ^ (((v1 ^ 0xAFB) - 13) | 8) ^ 0xBD8) * (v3 == 0)) ^ v1 ^ 0xAFB)))();
}

uint64_t sub_1D4D74D04@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0xA64]) = v3;
  STACK[0x640] = STACK[0x640] + ((a2 - 1683) | 0x32Au) - 859;
  return (*(v4 + 8 * (a2 ^ (2845 * (v3 == v2)))))(a1, 16215976);
}

uint64_t sub_1D4D75BEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, _DWORD *a63)
{
  *a4 = a1;
  *a63 = a59;
  return a5();
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

void sub_1D4D75D20()
{
  STACK[0x890] = 0;
  STACK[0x7F8] = 0;
  STACK[0x518] = *(v1 + 8 * v0);
  JUMPOUT(0x1D4D3FAF8);
}

uint64_t sub_1D4D75D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v17 = v11 - 1;
  v18 = (__ROR8__((v7 + v17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v19 = v18 ^ 0x4DE9423B6F16E7D2;
  v20 = v18 ^ v14;
  v21 = (__ROR8__(v19, 8) + v20) ^ v15;
  v22 = __ROR8__(v21, 8);
  v23 = __ROR8__(v20, 61);
  v24 = (v22 + (v21 ^ v23) - (((v22 + (v21 ^ v23)) << ((v12 - 1) ^ a7)) & v8) + v9) ^ v10;
  v25 = v24 ^ __ROR8__(v21 ^ v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((a2 | (2 * ((v30 + v29) ^ a1))) - ((v30 + v29) ^ a1) + a3) ^ a4;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1A2AEBE44253AF03;
  *(v7 + v17) = *(v13 + v17) ^ (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + v17) & 7))) ^ 0x3C;
  return (*(v16 + 8 * (v12 ^ (4 * (v17 != 0)))))();
}

void sub_1D4D75E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = STACK[0x930];
  v7 = STACK[0x930] + 4;
  STACK[0x3D0] = STACK[0x6E0];
  STACK[0x2E0] = (v7 ^ 0xE76B6AF3B37FAF7FLL) + 0x7ED7D77DFCFFF497 + ((2 * v7) & 0xCED6D5E766FF5EFELL);
  STACK[0x2D0] = STACK[0x928];
  v8 = STACK[0x920];
  STACK[0x2C0] = ((STACK[0x920] + 4) ^ 0x6EE3F2F1B2FFB75FLL) - 0x8A0B08002801349 + ((2 * (STACK[0x920] + 4)) & 0xDDC7E5E365FF6EBELL);
  STACK[0x2B0] = ((STACK[0x910] + 4) ^ 0x7EE3E77BFCFFADB7) - 0x18A0A50A4C8009A1 + ((2 * (STACK[0x910] + 4)) & 0xFDC7CEF7F9FF5B6ELL);
  STACK[0x2A0] = ((STACK[0x960] + 4) ^ 0xEFCB6279B07FFFFFLL) + 0x7677DFF7FFFFA417 + ((2 * (STACK[0x960] + 4)) & 0xDF96C4F360FFFFFELL);
  STACK[0x290] = ((STACK[0x980] + 4) ^ 0x7F63E379F7FFFDFFLL) - 0x1920A108478059E9 + ((2 * (STACK[0x980] + 4)) & 0xFEC7C6F3EFFFFBFELL);
  STACK[0x280] = ((STACK[0x900] + 4) ^ 0x7F5F77F1FAFFFC77) - 0x191C35804A805861 + ((2 * (STACK[0x900] + 4)) & 0xFEBEEFE3F5FFF8EELL);
  v9 = STACK[0x9A0];
  STACK[0x270] = ((STACK[0x9A0] + 4) ^ 0xFE576B7FF4FFEC1ELL) + 0x67EBD6F1BB7FB7F8 + ((2 * (STACK[0x9A0] + 4)) & 0xFCAED6FFE9FFD83CLL);
  v10 = STACK[0x9B0];
  STACK[0x250] = ((STACK[0x9B0] + 4) ^ 0x7E776BFDB1FFA6FELL) - 0x1834298C018002E8 + ((2 * (STACK[0x9B0] + 4)) & 0xFCEED7FB63FF4DFCLL);
  STACK[0x230] = ((STACK[0x8F0] + 4) ^ 0xFEDB56F1B47FFC9FLL) + 0x6767EB7FFBFFA777 + ((2 * (STACK[0x8F0] + 4)) & 0xFDB6ADE368FFF93ELL);
  STACK[0x220] = ((STACK[0x9E8] + 4) ^ 0xEFF34A79B07FBF36) + 0x764FF7F7FFFFE4E0 + ((2 * (STACK[0x9E8] + 4)) & 0xDFE694F360FF7E6CLL);
  STACK[0x210] = ((v6 + 6) ^ 0xFB5EBFFBFFFFF3FFLL) + 0x66AFFFBDF8FBFD3ALL + ((2 * (v6 + 6)) & 0xF6BD7FF7FFFFE7FELL);
  STACK[0x200] = ((v8 + 6) ^ 0x6AEFFFBDFAFBF53BLL) - 0x8E1400402000402 + ((2 * (v8 + 6)) & 0xD5DFFF7BF5F7EA76);
  STACK[0x2F0] = v6 + ((a6 + 4799) ^ 0x14E9);
  STACK[0x260] = v9 + 10;
  STACK[0x240] = v10 + 10;
  STACK[0x350] = STACK[0x7A0];
  STACK[0x340] = STACK[0x668];
  STACK[0x310] = STACK[0x740];
  STACK[0x300] = STACK[0x7E8];
  STACK[0x330] = STACK[0x7A8];
  STACK[0x3C0] = STACK[0x478];
  STACK[0x3B0] = STACK[0x4F8];
  STACK[0x320] = STACK[0x520];
  STACK[0x3A0] = STACK[0x790];
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x8DA]);
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x8BE]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x8AE]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x88E]);
  JUMPOUT(0x1D4D24CE0);
}

void sub_1D4D75F84(uint64_t a1)
{
  v1 = 1317436891 * (((a1 ^ 0xF854B432) - 292733615 - 2 * ((a1 ^ 0xF854B432) & 0xEE8D3D51)) ^ 0xA6DA1115);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_1D4D7607C()
{
  result = v1;
  *v1 = v2;
  return result;
}

void sub_1D4D76174(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = (((&a3 | 0xF87D1697) + (~&a3 | 0x782E968)) ^ 0xD481A7ED) * a1;
  a4 = (v8 - 3892) ^ v10;
  a3 = 0;
  a6 = v10 ^ 0x19EC40F9;
  a7 = v7 - v10;
  (*(v9 + 8 * (v8 + 4784)))(&a3);
  JUMPOUT(0x1D4D761F0);
}

uint64_t sub_1D4D7622C()
{
  v14 = v10;
  v15 = &v12;
  v13[1] = (v0 + 1339) ^ (33731311 * ((((v13 | 0xA10C6F50) ^ 0xFFFFFFFE) - (~v13 | 0x5EF390AF)) ^ 0x67055A8C));
  (*(v2 + 8 * (v0 + 7688)))(v13);
  LODWORD(v15) = v0 - 2008441969 * ((v13 & 0xD988E45C | ~(v13 | 0xD988E45C)) ^ 0x6EEE4FAD) + 3772;
  v14 = v10;
  (*(v2 + 8 * (v0 + 7738)))(v13);
  if (v13[0] == v4 + v1)
  {
    v5 = -956802065;
  }

  else
  {
    v5 = 1073657839;
  }

  if (v13[0] == v4 + v1)
  {
    v6 = -1913604130;
  }

  else
  {
    v6 = 2147315678;
  }

  if (v13[0] == v4 + v1)
  {
    v7 = 973060064;
  }

  else
  {
    v7 = -1057399840;
  }

  v8 = (v5 ^ v12) + v7 + (v6 & (2 * v12));
  v14 = v10;
  LODWORD(v15) = (v0 + 6457) ^ ((v13 ^ 0x5869D362) * v3);
  (*(v2 + 8 * (v0 + 7723)))(v13);
  v14 = v11;
  LODWORD(v15) = (v4 + 3497) ^ (((v13 & 0xFFE671B1 | ~(v13 | 0xFFE671B1)) ^ 0x58705D2C) * v3);
  (*(v2 + 8 * (v4 ^ 0x377D)))(v13);
  return (v8 - 16257999);
}

uint64_t sub_1D4D76558@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 ^ v64) + a28;
  STACK[0x9B8] = v66;
  return (*(v65 + 8 * ((a64 + 2229) | (v66 <= a23) | (4 * (v66 <= a23)))))();
}

uint64_t sub_1D4D76620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = ((2 * ((&a17 ^ 0x98CBBE13) & 0x21B3E491) - (&a17 ^ 0x98CBBE13) - 565437590) ^ 0x1EEE761B) * v22;
  a21 = -654855621 - v25;
  a22 = v25 + v24 + 1674574563;
  a19 = a16;
  a20 = &a13;
  a18 = v25 - 357109105;
  v26 = (*(v23 + 8 * (v24 + 5057)))(&a17);
  return (*(v23 + 8 * ((13540 * (a17 == ((((v24 - 4119) | 0x400) + 16256664) ^ (v24 - 2624)))) ^ v24)))(v26);
}

uint64_t sub_1D4D767A0(uint64_t a1)
{
  v3 = v1 | 0x912;
  v4 = (*(v2 + 8 * ((v1 | 0x912) + 7184)))(a1, 2631218403) == 0;
  return (*(v2 + 8 * ((v4 ^ ((v3 - 114) ^ (v3 - 1))) & 1 | v3)))();
}

uint64_t sub_1D4D768A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ((v4 - 589) ^ 0xFFFFFFFFFFFFEB9ALL) + v5;
  *(a1 + v7) = *(v6 + v7);
  return (*(a4 + 8 * ((13995 * (v7 == 0)) ^ v4)))();
}

uint64_t sub_1D4D76970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((2 * (&a16 & 0x791754E0) - &a16 + 115911449) ^ 0x5E81787B) * v23;
  a18 = a12;
  a19 = &a14;
  a17 = v24 - 1383858828;
  a20 = -654855621 - v24;
  a21 = v24 + 1674579114;
  v25 = (*(v22 + 76864))(&a16);
  return (*(v22 + 8 * ((2244 * (a16 == 16257999)) ^ v21)))(v25);
}

void sub_1D4D76B14()
{
  STACK[0x748] = 0;
  STACK[0x848] = *(STACK[0x3E8] + 8 * (v0 - 4337));
  JUMPOUT(0x1D4C6D9C4);
}

uint64_t sub_1D4D76BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v2 + 2135574407) & 0x80B5BACE ^ 0xFFFFFFFFFFFFE7B3) + a2;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((58 * ((a2 & 0xFFFFFFE0) == 32)) ^ (v2 - 355))))();
}

uint64_t sub_1D4D76C28@<X0>(int a1@<W8>)
{
  v2 = STACK[0x938];
  LODWORD(STACK[0x52C]) = STACK[0x6B4];
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 - 1)) & 1) * (((a1 - 1171162863) & 0x45CE6CB5) - 699)) ^ a1)))();
}

uint64_t sub_1D4D76DB8()
{
  v3 = LODWORD(STACK[0x2C0]);
  if (v3 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((v2 + 3320) ^ (1744 * (v1 == 197499223)))))();
  }

  if (v3 == 20706 || v3 == 33980)
  {
    STACK[0x448] = v0;
  }

  return (STACK[0x758])();
}

uint64_t sub_1D4D76E6C()
{
  v2 = STACK[0x868];
  STACK[0x510] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 843) ^ (v0 + 8710) ^ 0x2567)) | (v0 + 8710))))();
}

uint64_t sub_1D4D76ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 | 0x3E0A11C6) - &a14 + (&a14 & 0xC1F5EE38)) ^ 0x6663C2A4) * v21;
  a15 = v22 - 1041240636;
  a18 = -654855621 - v22;
  a19 = v22 + v20 + 1674576915;
  a16 = a12;
  a17 = &a11;
  v23 = (*(v19 + 8 * (v20 ^ 0x2D1F)))(&a14);
  return (*(v19 + 8 * ((53 * (a14 == ((v20 - 34246809) & 0x6CF4EFDF ^ (v20 - 573762018) & 0x3DEB ^ 0x6C0C68B0))) ^ v20)))(v23);
}

uint64_t sub_1D4D76FF0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a16 - 16;
  v29.i64[0] = a14 + v28 + 11;
  v29.i64[1] = a14 + v28 + 10;
  v30.i64[0] = a14 + v28 + 13;
  v30.i64[1] = a14 + v28 + 12;
  v31.i64[0] = a14 + v28 + 15;
  v31.i64[1] = a14 + v28 + 14;
  v32.i64[0] = a14 + v28 + 19;
  v32.i64[1] = a14 + v28 + 18;
  v33.i64[0] = a14 + v28 + 21;
  v33.i64[1] = a14 + v28 + 20;
  v34.i64[0] = a14 + v28 + 23;
  v34.i64[1] = a14 + v28 + 22;
  v35.i64[0] = a14 + v28 + 25;
  v35.i64[1] = a14 + v28 + v16 + 16;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v34, a1);
  v38 = vandq_s8(v33, a1);
  v39 = vandq_s8(v32, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4));
  v45 = vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), a3), a4));
  v46 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4)), a5);
  v47 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4)), a5);
  v48 = veorq_s8(v47, a6);
  v49 = veorq_s8(v46, a6);
  v50 = veorq_s8(v46, a7);
  v51 = veorq_s8(v47, a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), a8);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), a8);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), v19);
  v60 = veorq_s8(v58, v19);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = veorq_s8(vaddq_s64(v64, v62), v20);
  v67 = veorq_s8(v65, v20);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v21), v72), v22), v23);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v21), v71), v22), v23);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v24);
  v80 = veorq_s8(v78, v24);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v25);
  v87 = veorq_s8(v85, v25);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v82.i64[0] = a14 + v28 + 17;
  v82.i64[1] = a14 + v28 + 16;
  v89 = vaddq_s64(v44, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v90 = veorq_s8(v89, a6);
  v91 = veorq_s8(v89, a7);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), a8);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v19);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v20);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), v21), v98), v22), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v24);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v25);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL)));
  v105 = vandq_s8(v82, a1);
  v106 = vaddq_s64(v45, a5);
  v191.val[1] = vshlq_u64(veorq_s8(v104, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v107 = veorq_s8(v106, a6);
  v108 = veorq_s8(v106, a7);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v19);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v20);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v21), v115), v22), v23);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v31, a1);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v30, a1);
  v191.val[0] = vshlq_u64(veorq_s8(v124, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v126 = vandq_s8(v29, a1);
  v127 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v131 = vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a3), a4));
  v132 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v133 = vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a3), a4)), a5);
  v128.i64[0] = vqtbl4q_s8(v191, v27).u64[0];
  v134 = veorq_s8(v133, a6);
  v191.val[0] = veorq_s8(v132, a6);
  v135 = veorq_s8(v132, a7);
  v136 = veorq_s8(v133, a7);
  v191.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v135), a8);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v136), a8);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v139);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v138), v19);
  v141 = veorq_s8(v140, v19);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v143);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v142), v20);
  v145 = veorq_s8(v144, v20);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v147);
  v191.val[0] = vaddq_s64(v191.val[1], v146);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[0], v191.val[0]), v21), v191.val[0]), v22), v23);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v21), v148), v22), v23);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v151);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v150), v24);
  v153 = veorq_s8(v152, v24);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v155);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v154), v25);
  v157 = veorq_s8(v156, v25);
  v158 = vaddq_s64(v131, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v159 = veorq_s8(v158, a6);
  v160 = veorq_s8(v158, a7);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), a8);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v19);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v20);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v21), v167), v22), v23);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v24);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v25);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v174 = vaddq_s64(vsubq_s64(v130, vandq_s8(vaddq_s64(vaddq_s64(v130, v130), a3), a4)), a5);
  v191.val[1] = vshlq_u64(veorq_s8(v173, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v175 = veorq_s8(v174, a6);
  v176 = veorq_s8(v174, a7);
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), a8);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v19);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v20);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v21), v183), v22), v23);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v24);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v25);
  v191.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a2)));
  v128.i64[1] = vqtbl4q_s8(v191, v27).u64[0];
  v189 = vrev64q_s8(v128);
  *(a14 + v28 + 10) = veorq_s8(vextq_s8(v189, v189, 8uLL), *(a15 + v28));
  return (*(v18 + 8 * (((a11 + v28 != 0) * v17) ^ a13)))();
}

void sub_1D4D77BC8()
{
  v3 = (((2 * v1) & 0x1FFFF9783B7BF4FELL) + (v1 ^ 0x4FFFFCBC1DBDFA7FLL) + v0 - 0x4FFFFCBC1DBDFA7FLL);
  v4 = (v3[1] << (v2 - 32)) | (*v3 << 56) | (v3[2] << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x8F0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  JUMPOUT(0x1D4D77C84);
}

uint64_t sub_1D4D77CC4()
{
  v3 = (*(v2 + 8 * (v0 + 3865)))(LODWORD(STACK[0x4B4]) ^ 0xBC59953u, 0x100004077774924);
  v4 = STACK[0x330];
  STACK[0x958] = v3;
  if (v3)
  {
    v5 = 16257999;
  }

  else
  {
    v5 = v1 - 5;
  }

  LODWORD(STACK[0x964]) = v5;
  return (*(v4 + 8 * ((102 * (((v3 == 0) ^ ((v0 ^ 0xD1) - 63 * (v0 ^ 0x80))) & 1)) | v0)))();
}

uint64_t sub_1D4D77D78@<X0>(int a1@<W8>)
{
  v6 = LOWORD(STACK[0x99A]);
  if (v6 == 17168)
  {
    goto LABEL_4;
  }

  if (v6 == 33980)
  {
    v8 = STACK[0x438];
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    STACK[0x7C8] = v8 + v2;
    v7 = v3;
    v4 = 16257999;
    return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
  }

  v7 = v3;
  if (v6 == 20706)
  {
LABEL_4:
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    v4 = 16215638;
    v7 = v3;
  }

  return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
}

uint64_t sub_1D4D77E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0x858] = STACK[0x4D8];
  STACK[0x4C8] = 0;
  return (*(v4 + 8 * a4))(a1, a2, a3, v4);
}

uint64_t sub_1D4D77F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8 * (v4 ^ 0x2176)))(LODWORD(STACK[0x7F4]) ^ 0xBC58D36 ^ (v4 - 1180) ^ 0x145Du, 0x100004077774924);
  v6 = STACK[0x3E8];
  STACK[0x968] = v5;
  if (v5)
  {
    v7 = 16257999;
  }

  else
  {
    v7 = 16215971;
  }

  LODWORD(STACK[0x974]) = v7;
  return (*(v6 + 8 * (((v5 != 0) * (((v4 - 1180) | 0x542) ^ 0x54E)) ^ v4)))();
}

void sub_1D4D78080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x210] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(v9);
  *&STACK[0x380] = vdupq_n_s64(v15);
  *&STACK[0x350] = vdupq_n_s64(v10);
  *&STACK[0x360] = vdupq_n_s64(v8);
  *&STACK[0x330] = vdupq_n_s64(v12);
  *&STACK[0x340] = vdupq_n_s64(v11);
  *&STACK[0x310] = vdupq_n_s64(a6);
  *&STACK[0x320] = vdupq_n_s64(v14);
  *&STACK[0x2F0] = vdupq_n_s64(a7);
  *&STACK[0x300] = vdupq_n_s64(v13);
  *&STACK[0x2D0] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xA5A39F44AA2858D8);
  *&STACK[0x2B0] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x2C0] = vdupq_n_s64(0x48FB24461747836FuLL);
  *&STACK[0x290] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x270] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x280] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x250] = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  *&STACK[0x260] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x240] = vdupq_n_s64(0xDE7FD7C3A7D2252DLL);
  *&STACK[0x220] = vdupq_n_s64(a8);
  *&STACK[0x230] = xmmword_1D4E31490;
  JUMPOUT(0x1D4D78250);
}

uint64_t sub_1D4D79514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  STACK[0x3C0] = *(a8 + 24);
  HIDWORD(a35) = a7;
  return (*(a4 + 8 * ((47 * ((v37 ^ v36) < 227 * (v35 ^ 0x16D9u) - 5213)) ^ v35)))(0x5879FD990C46CAD5, a5, 0xD02B2EB47D7683C6, 0x6815975A3EBB41E3, v38, a2, 0xE49D77DF873DBF7ELL, 0x4CFAC71E5A50EC49, a9, a10, a11, a12, a13, a7 ^ 0xF67EFDFFDF195FEFLL, a8, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1D4D79808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((61 * (a13 == v16)) ^ v15)))(v17);
}

uint64_t sub_1D4D79984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&STACK[0x240] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x390] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x380] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x340] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x350] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x320] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x330] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x300] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x310] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x360] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x370] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x2C0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x230] = xmmword_1D4E31490;
  *&STACK[0x2A0] = vdupq_n_s64(v7);
  *&STACK[0x2B0] = vdupq_n_s64(v8);
  return sub_1D4D11D84(2021819248, 0, 0x71C80D200006C20, a4, 0x518DC1691103FE2CLL, a6, a7);
}

void sub_1D4D79B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 ^ 0x8E6;
  *(v6 - 224) = ((v4 ^ 0x14B8) - 2140796667) ^ (914963389 * ((v6 - 232) ^ 0x2CFCB17B));
  (*(a4 + 8 * (v4 ^ 0x3333)))(v6 - 232);
  *(v5 + 112) = *(v6 - 232) ^ (v7 - 1232139380);
  JUMPOUT(0x1D4CE1D40);
}

uint64_t sub_1D4D79C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v7 = v5;
  *(v5 + 8) = *(a4 + 8);
  *(a4 + 8) = v5;
  return (*(v8 + 8 * ((8 * (v6 ^ 0xA4) - 6584) ^ (16 * (((8 * (v6 ^ 0xA4) + 543902687) & 0xDF949BEB ^ 0xF81824) == 16257999)))))(a1, a2, a3, 16257999);
}

uint64_t sub_1D4D79C20()
{
  STACK[0x590] = 0;
  v3 = STACK[0x6F8];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = -126895411;
  STACK[0xA28] = &STACK[0x590];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 - 1789415859) & 0x6AA875C1) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ (v1 - 1789415859) & 0x6AA875C1)))();
}

uint64_t sub_1D4D79C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, _DWORD *a27, void *a28)
{
  v35 = a11 & 0x889E8C11;
  v36 = ((v35 ^ (v30 - 970) ^ 0xFFFFFFFE | v29) & (((v30 - 970) | 0x13FE) - v29) | (v35 ^ (v30 - 970) ^ 0xFFFFFFFE) & v29) >> 31;
  v37 = (a11 & 0x889E8C11) + 2599;
  *a24 = v29 + 1;
  v38 = v28 ^ ((v28 - (a11 & 0x889E8C11) + v30 - 970) >> 11);
  v39 = (((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38 ^ (((((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) >> 18);
  v40 = (v31 + (v34 - 1));
  v41 = -778651209 * ((*(*a28 + (*a27 & 0x148A538C)) ^ v40) & 0x7FFFFFFF);
  v42 = -778651209 * (v41 ^ HIWORD(v41));
  v43 = *(*(v33 + 8 * (v37 ^ 0xA18)) + (v42 >> 24));
  v44 = *(*(v33 + 8 * (v37 ^ 0xABF)) + (((a11 & 0x889E8C11) + 253902330) & 0xF0DDCBB6) - 2479 + (v42 >> 24) - 12);
  v45 = *(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * (v42 >> 24));
  LODWORD(v42) = (*(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * BYTE3(v42)));
  *v40 = v45;
  return (*(v32 + 8 * ((1321 * (v34 == (v42 != 60))) ^ v37)))();
}

uint64_t sub_1D4D79DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, char *a17, int a18, char a19, __int16 a20, char a21, uint64_t a22, int a23, unsigned int a24, char *a25, char *a26, char *a27, char *a28)
{
  a25 = a17;
  a26 = &a19;
  a28 = &a16;
  LODWORD(a27) = (v28 + 242) ^ (((-1186758393 - (&a23 | 0xB9438107) + (&a23 | 0x46BC7EF8)) ^ 0x74A72568) * v31);
  (*(v29 + 8 * (v28 + 6491)))(&a23);
  a27 = a17;
  a25 = &a21;
  LODWORD(a26) = v28 + 956911519 * ((-1668232106 - (&a23 | 0x9C90CC56) + (&a23 | 0x636F33A9)) ^ 0x89FE43AC) + 6196;
  (*(v29 + 8 * (v28 + 6530)))(&a23);
  a25 = a17;
  a26 = &a14;
  a24 = (v28 + 136) ^ (33731311 * ((((2 * &a23) | 0x4587746C) - &a23 - 583252534) ^ 0x1B357015));
  (*(v29 + 8 * (v28 ^ 0x297Du)))(&a23);
  LODWORD(a26) = v28 - 2008441969 * ((&a23 - 924682220 - 2 * (&a23 & 0xC8E27814)) ^ 0x807B2C1A) + 2569;
  a25 = a17;
  v32 = (*(v29 + 8 * (v28 + 6535)))(&a23);
  return (*(v29 + 8 * (((a23 == v30) * ((v28 - 99) ^ 0x973)) ^ v28)))(v32);
}

uint64_t sub_1D4D7A08C()
{
  v1 = *(STACK[0x668] + 24);
  STACK[0x570] = v1;
  return (*(STACK[0x330] + 8 * (((v1 == 0) * (((v0 + 1981207108) & 0x89E93BD7 ^ 0xFFFFF3DB) + ((v0 - 1687) | 0x10D4))) ^ v0)))();
}

uint64_t sub_1D4D7A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v27 = 1824088897 * (((&a19 | 0xF5BECD65) - &a19 + (&a19 & 0xA413298)) ^ 0xADD71E07);
  a21 = (v25 ^ 0x7FB6FEDF) + ((2 * v25) & 0xFF6DFDBE) - v27 - 823268437;
  a19 = v27 + v23 + 764;
  a22 = v24;
  a23 = a12;
  v28 = (*(v26 + 8 * (v23 + 6638)))(&a19);
  return (*(v26 + 8 * ((10840 * (a20 == 2177 * (v23 ^ 0xBB3) + 16253645)) ^ v23)))(v28);
}

void sub_1D4D7A1EC()
{
  v2 = (v0 - 1041) | 0x400;
  STACK[0x3A0] = (v2 ^ 0xFFFFFB5E) & v1;
  LODWORD(STACK[0x3B0]) = v2;
  STACK[0x390] = (v2 + 4115);
  JUMPOUT(0x1D4D7A398);
}

uint64_t sub_1D4D7B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((-1275135746 - (&a14 | 0xB3FEF8FE) + (&a14 | 0x4C010701)) ^ 0x1468D463) * v21;
  a15 = v23 - 85195060;
  a16 = a12;
  a17 = &a10;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674577939;
  v24 = (*(v20 + 8 * (v22 ^ 0x211F)))(&a14);
  return (*(v20 + 8 * (((a14 == ((v22 - 1310437144) & 0xEDF ^ (v19 + 961))) * ((v22 - 698094757) & 0x1EED ^ 0x1B6)) ^ v22)))(v24);
}

uint64_t sub_1D4D7B214@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v2) = 0;
  v6 = v2 < 0xFFFFFFFFCDE53684 && v2 + 840616316 < v1;
  return (*(v4 + 8 * ((v6 * (((24 * (v3 ^ 0x14D9) + 2776) | 0x140) + 22)) ^ (24 * (v3 ^ 0x14D9)))))();
}

uint64_t sub_1D4D7B270@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = v5 + 32;
  v12 = (v11 ^ v8 ^ v4) + v3;
  v13 = *(v9 + v12 - 15);
  v14 = *(v9 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a2)), a3);
  return (*(v10 + 8 * ((120 * (v6 != v11)) ^ v7)))();
}

uint64_t sub_1D4D7B4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = *(v30 + 4 * (v31 - 1));
  *(v30 + 4 * v31) = ((1566083941 * (v35 ^ (v35 >> 30))) ^ *(v30 + 4 * v31)) - v31;
  v36 = 2048652491 * ((0xC81A77718E866EC0 - ((v34 - 152) | 0xC81A77718E866EC0) + a29) ^ 0xE3010702C0C8063ALL);
  *(v34 - 112) = v36 ^ 1;
  v37 = v29 - 2026031905 + v36;
  *(v34 - 152) = (v29 + 1745252473) ^ v36;
  *(v34 - 136) = v37;
  *(v34 - 128) = ((v29 - 2026031905) ^ 0x28) + v36;
  *(v34 - 124) = v37 + 648;
  *(v33 + 16) = 623 - v36;
  *(v33 + 40) = (v31 + 1) ^ v36;
  v38 = (*(v32 + 8 * (v29 ^ 0x261A)))(v34 - 152);
  return (*(v32 + 8 * *(v34 - 132)))(v38);
}

uint64_t sub_1D4D7B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a22 = (v23 + 1305605087) ^ (1358806181 * ((&a18 + 1415417890 - 2 * (&a18 & 0x545D9022)) ^ 0x6B72FCA1));
  a23 = &a14;
  a20 = a10;
  a21 = &a11;
  (*(v24 + 8 * (v23 ^ 0x2E34)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((&a18 - 240232212 - 2 * (&a18 & 0xF1AE58EC)) ^ 0xC85892CF));
  a20 = a10;
  a21 = &a14;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((((2 * &a18) | 0x53B26B7E) - &a18 + 1445382721) ^ 0x902FFF9C));
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a20 = a10;
  LODWORD(a21) = v23 - 2008441969 * (&a18 ^ 0x4899540E) + 2615;
  v25 = (*(v24 + 8 * (v23 ^ 0x2E7D)))(&a18);
  return (*(v24 + 8 * (((a18 == 16257999) * (((11 * (v23 ^ 0xB91) + 3379) | 0xD85) - 1787)) ^ v23)))(v25);
}

uint64_t sub_1D4D7B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * ((((2 * &a15) | 0xA99D4AB2) - &a15 - 1422828889) ^ 0x62BB26DA);
  a18 = a12;
  a16 = (v21 ^ 0xBEBDBFFE) + ((2 * v21) & 0x7D7B7FFC) + 1633613484 + v24;
  a17 = v24 + 7724;
  (*(v22 + 77160))(&a15);
  v25 = 1824088897 * (((&a15 | 0xF210C612) - &a15 + (&a15 & 0xDEF39E8)) ^ 0xAA791570);
  a18 = v19;
  a19 = a12;
  a17 = (v20 ^ 0x6FFEEF9F) - v25 + ((2 * v20) & 0xDFFDDF3E) - 559547669;
  a15 = v25 + 3757;
  v26 = (*(v22 + 77048))(&a15);
  return (*(v22 + 8 * ((9095 * (a16 == v23)) ^ 0x713u)))(v26);
}

uint64_t sub_1D4D7BA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  a20 = a18;
  a21 = v21 - (((&a19 | 0xBEBF446A) - (&a19 & 0xBEBF446A)) ^ 0xF6261064) * v22 + 1907;
  v25 = (*(v24 + 8 * (v21 ^ 0x2B31u)))(&a19);
  return (*(v24 + 8 * (((a19 == (v21 ^ 0x1E2C ^ v23)) * (((v21 + 273846595) & 0xEFAD6E76) + 3561)) ^ v21)))(v25);
}

uint64_t sub_1D4D7BAC0@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x2760;
  v3 = v2 + 7558;
  (*(v1 + 8 * (v2 + 8212)))();
  v4 = STACK[0x400];
  STACK[0x7B0] = 0;
  return (*(v4 + 8 * (((STACK[0x730] != 0) * ((v3 ^ 0x3319) - 4579)) ^ v3)))();
}

uint64_t sub_1D4D7BBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a10;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((3906 * (a13 == v15)) ^ 0x149Eu)))(v16);
}

uint64_t sub_1D4D7BC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v8;
  STACK[0x328] = *v8;
  return (*(v9 + 8 * (((v10 != 0) * ((v7 + 1701929530) & 0x9A8E9BFE ^ 0xA31)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 16215950);
}

uint64_t sub_1D4D7BDD0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (((a3 + 2900) - 7079) ^ a1) + v4;
  *(v5 - 7 + v7) = veor_s8(*(v3 - 7 + v7), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v6 + 8 * ((12817 * ((v4 & 0xFFFFFFF8) - 8 == a1)) ^ a3)))();
}

uint64_t sub_1D4D7C024@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = (a2 + 212) | 0xE80;
  v3 = LODWORD(STACK[0x688]) - 7842 + v2;
  LODWORD(STACK[0x688]) = v3;
  return (*(a1 + 8 * (((v3 != ((v2 - 943646518) & 0x383EDCF7 ^ 0x1465)) * (((v2 - 425520877) & 0x195CDDEF) - 3381)) ^ v2)))();
}

void sub_1D4D7C0B0()
{
  v0 = STACK[0x9A0];
  STACK[0x210] = ((STACK[0x9A0] + 4) ^ 0x7F57DEFBFFFFB5BELL) - 0x19149C8A4F8011A8 + (((STACK[0x9A0] + 4) << ((103 * (v2 ^ 0x48) + 19) ^ 0xF7u)) & 0xFEAFBDF7FFFF6B7CLL);
  v1 = STACK[0x9E8];
  STACK[0x200] = v0 + 10;
  STACK[0x220] = v1 + 10;
  STACK[0x310] = STACK[0x570];
  STACK[0x290] = STACK[0x840];
  STACK[0x300] = STACK[0x588];
  STACK[0x280] = STACK[0x398];
  STACK[0x270] = STACK[0x630];
  STACK[0x260] = STACK[0x7E0];
  STACK[0x250] = STACK[0x360];
  STACK[0x240] = STACK[0x420];
  STACK[0x2F0] = STACK[0x718];
  STACK[0x230] = STACK[0x620];
  STACK[0x2E0] = STACK[0x768];
  LODWORD(STACK[0x2A0]) = LOWORD(STACK[0x8E6]);
  LODWORD(STACK[0x2D0]) = LOWORD(STACK[0x8D6]);
  LODWORD(STACK[0x2B0]) = LOWORD(STACK[0x89A]);
  LODWORD(STACK[0x2C0]) = LOWORD(STACK[0x886]);
  JUMPOUT(0x1D4CFD51CLL);
}

uint64_t sub_1D4D7C198()
{
  v2 = STACK[0x558];
  v3 = STACK[0x528];
  v4 = STACK[0x64C];
  STACK[0x4A0] = 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = !v5 && v4 != ((v0 - 1843) ^ 0x999) - 7279;
  return (*(v1 + 8 * (((2 * v7) | (4 * v7)) ^ v0)))();
}

void sub_1D4D7C210(int a1@<W8>)
{
  v5 = *v2;
  v6 = *(v2 + 4) + a1;
  *(*v2 + v6) = (HIBYTE(v1) ^ 0x9B) - ((2 * (HIBYTE(v1) ^ 0x9B)) & 0x78) + 60;
  *(v5 + v6 + 1) = (BYTE2(v1) ^ 0xF2) - ((2 * (BYTE2(v1) ^ 0xF2)) & 0x78) + 60;
  *(v5 + v6 + 2) = (BYTE1(v1) ^ 0xB) - ((2 * (BYTE1(v1) ^ 0xB)) & 0x78) + 60;
  *(v5 + v6 + 3) = v1 ^ 0x84;
  v7 = *v2;
  v8 = ((v4 ^ 0xD94019CF) + 1062446794) ^ v4 ^ ((v4 ^ 0x614DC877) - 2023852174) ^ ((v4 ^ 0x5D1C6EAE) - 1156591191) ^ ((v4 ^ 0xFCFDFFEF) + 451821802);
  v9 = ((2 * (a1 + *(v2 + 4) + 4)) & 0xABFD9FFE) + ((a1 + *(v2 + 4) + 4) ^ 0x55FECFFF) - 1442762751;
  *(*v2 + v9) = (HIBYTE(v8) ^ 0x19) - 2 * ((HIBYTE(v8) ^ 0x19) & 0x3E ^ HIBYTE(v8) & 2) + 60;
  *(v7 + v9 + 1) = (BYTE2(v8) ^ 0xEC) - 2 * ((BYTE2(v8) ^ 0xEC) & 0x3E ^ BYTE2(v8) & 2) + 60;
  *(v7 + v9 + 2) = (((((v4 ^ 0x19CF) - 22838) ^ v4 ^ ((v4 ^ 0xC877) + 30578) ^ ((v4 ^ 0x6EAE) - 11863) ^ ((v4 ^ 0xFFEF) + 16618)) >> 8) ^ 0x40) - ((v8 >> 7) & 0x78) + 60;
  *(v7 + v9 + 3) = ((v4 ^ 0xCF) - 54) ^ v4 ^ ((v4 ^ 0x77) + 114) ^ ((v4 ^ 0xAE) - 87) ^ ((v4 ^ 0xEF) - 22) ^ 0xC5;
  *(v2 + 4) = v3;
  JUMPOUT(0x1D4C520D0);
}

uint64_t sub_1D4D7C4CC()
{
  STACK[0x748] = 0;
  v3 = STACK[0x378];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = 485375226;
  STACK[0xA28] = &STACK[0x748];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 + 8066) | 0x481) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ ((v1 + 8066) | 0x481))))();
}

void sub_1D4D7CED4(int a1@<W8>)
{
  v4 = (a1 ^ 0x2324) + 8740;
  *(v2 - 224) = ((a1 ^ 0x2324) - 2140796942) ^ (914963389 * ((v2 - 26035230 - 2 * ((v2 - 232) & 0xFE72BCCA)) ^ 0xD28E0DB1));
  (*(v3 + 8 * ((a1 ^ 0x2324) + 8806)))(v2 - 232);
  *(v1 + 112) = v4 ^ *(v2 - 232) ^ 0xB68F0C9B;
  JUMPOUT(0x1D4D76E84);
}

uint64_t sub_1D4D7CFF4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((5372 * (v7 == (v5 - a2) - 3262)) ^ (v3 + v5 + 2442))))();
}

void sub_1D4D7D030(uint64_t a1@<X8>)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1;
  JUMPOUT(0x1D4D7D0B0);
}

uint64_t sub_1D4D7D120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = v17 - 1710126949 * ((1572677594 - (&a15 | 0x5DBD27DA) + (&a15 | 0xA242D825)) ^ 0x905983B5) + 476320890;
  v18 = (*(v16 + 8 * (v17 + 7444)))(&a15);
  return (*(v16 + 8 * (((a16 != 16257999) | (2 * (a16 != 16257999))) ^ v17)))(v18);
}

uint64_t sub_1D4D7D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((&a15 - 84886246 - 2 * (&a15 & 0xFAF0BD1A)) ^ 0xC8EBE68A);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((823 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_1D4D7D65C()
{
  v3 = ((v1 - 223574237) & 0xD537B35) - ((v0 + 474961462) & 0xF ^ (2 * (v0 + 474961462)) & 8 ^ 4) - 4865;
  LODWORD(STACK[0x778]) = v3;
  return (*(v2 + 8 * ((115 * ((v0 ^ 0x7FDFF3FED4AFEF5ALL) + ((2 * v0) & 0x1A95FDEB4) + 2 * v3 + 0x26A49C5B8FD131C7 + (v3 ^ 0x597B6FA59B7EDEDFuLL) < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1D4D7D95C()
{
  v3 = *(v1 + 8);
  STACK[0x6F8] = v3;
  return (*(v2 + 8 * ((((((v0 + 1142129034) & 0xBBEC6B5F) + 651) ^ ((v0 - 4465) | 0x117)) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_1D4D7D9B4(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  v17 = v16 - v14 - 3164;
  *a2 = 0;
  *a3 = 0;
  a13 = v16 - 1710126949 * (((&a13 | 0xA17C00A5) - (&a13 & 0xA17C00A5)) ^ 0x93675B35) + 476319856;
  v18 = (*(v15 + 8 * (v16 + 6410)))(&a13);
  return (*(v15 + 8 * ((4749 * (a14 == (v17 ^ 0x78A51DB3))) ^ v16)))(v18);
}

uint64_t sub_1D4D7DA60@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 228) = (v2 - 476) ^ (33731311 * ((((2 * (v4 - 232)) | 0x524A3E62) - (v4 - 232) + 1457184975) ^ 0x90D3D512));
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x604];
  v5 = (*(v1 + 8 * (v2 + 5873)))(v4 - 232);
  return (*(STACK[0x330] + 8 * (((*(v4 - 232) == ((v2 + 1432457583) & 0xAA9E65FE ^ (v3 + 602))) * ((2 * v2) ^ 0x1C16)) ^ v2)))(v5);
}

uint64_t sub_1D4D7DB18(uint64_t a1)
{
  v6 = (((v3 + v2) | 0x82Eu) ^ 0xFFFFFFFFFFFFF5D1) + v4;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((1004 * (v6 == 0)) ^ (v3 + v2 + 4070))))();
}

uint64_t sub_1D4D7DC38(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v4 + 8 * (((v2 != 0xBC59953) * (((535 * (v3 ^ 0x1632) + 584240574) & 0xDD2D3BEE) + ((535 * (v3 ^ 0x1632)) ^ 0xFFFFF7E5))) ^ (535 * (v3 ^ 0x1632)))))();
}

void sub_1D4D7DC90()
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = xmmword_1D4E31470;
  JUMPOUT(0x1D4D7DDFCLL);
}

uint64_t sub_1D4D7E334(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = 1875091903 * (((&v9 | 0x8BCF3D0F) - (&v9 & 0x8BCF3D0F)) ^ 0xBDBABE8C);
  v14 = a4;
  v15 = a6;
  v16 = v7 ^ ((a2 ^ 0xFEDDB6F3) + 1974886208 + ((2 * a2) & 0xFDBB6DE6));
  v12 = ((2 * a5) & 0xFF6B3FE8) - v7 + (a5 ^ 0x7FB59FF4) - 637534464;
  v13 = v7 + 9377;
  v10 = a1;
  v11 = a3;
  (*(v6 + 76960))(&v9);
  return (v9 - 16257999);
}

uint64_t sub_1D4D7E4C0@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  v2 = (LODWORD(STACK[0x3E4]) - 5141) | 0x40A;
  STACK[0x8E8] = a2;
  v3 = STACK[0x780];
  STACK[0x8F0] = STACK[0x780];
  return (*(a1 + 8 * ((9734 * (a2 - v3 > ((v2 ^ 0x103Fu) - 4661) - 551)) ^ v2)))();
}

uint64_t sub_1D4D7E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((&a14 + 2073060290 - 2 * (&a14 & 0x7B9063C2)) ^ 0xCB93FBB4) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((54 * (a15 != v17)) ^ 0x615)))(v18);
}

uint64_t sub_1D4D7E5FC(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v5 + v3 - 16);
  v8 = (v5 + a1 - 16);
  *(v8 - 1) = *(v5 + v3 - 32);
  *v8 = v7;
  return (*(v6 + 8 * ((1368 * ((a3 + 1898357693) - (v5 & 0xFFFFFFE0) == 8468)) ^ (v4 + a3 + 3662))))();
}

uint64_t sub_1D4D7E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t *a14, char *a15, uint64_t a16, unsigned int a17, int a18)
{
  v21 = v18 - 653;
  v22 = v18 + 114;
  v23 = v18 - 27;
  v24 = v18 - 784;
  v25 = 1317436891 * ((2 * ((&a13 ^ 0x9CDEE4A8) & 0x30E7F470) - (&a13 ^ 0x9CDEE4A8) - 820507767) ^ 0xE3C57757);
  a14 = &a9;
  a15 = &a11;
  a16 = v19;
  a17 = 1602299020 - v25;
  a18 = v24 ^ v25;
  v26 = (*(v20 + 8 * (v21 ^ 0x2FEE)))(&a13);
  return (*(v20 + 8 * (v21 ^ (16 * (((v22 ^ v23) ^ (*(v19 + 24) == 16257999)) & 1)))))(v26);
}

void sub_1D4D7E7AC()
{
  LODWORD(STACK[0x310]) = 0;
  *v0 = 0u;
  v0[1] = 0u;
  JUMPOUT(0x1D4D48404);
}

void sub_1D4D7E828()
{
  STACK[0x7E8] = STACK[0x348];
  STACK[0x670] = *(v1 + 8 * v0);
  JUMPOUT(0x1D4D79734);
}

uint64_t sub_1D4D7E830()
{
  v9 = (v1 + 6486) ^ (1824088897 * (((&v7 | 0x66EE4855) - &v7 + (&v7 & 0x9911B7A8)) ^ 0x3E879B37));
  v8 = v4;
  (*(v2 + 8 * (v1 ^ 0x22C8u)))(&v7);
  v9 = (v1 + 6486) ^ (1824088897 * ((((&v7 | 0x5E4F3F3C) ^ 0xFFFFFFFE) - (~&v7 | 0xA1B0C0C3)) ^ 0xF9D913A1));
  v8 = v6;
  (*(v2 + 8 * ((v1 - 104) ^ 0x2350)))(&v7);
  return (v5 ^ 0xB7F993FF) + 1224638416 + ((v5 << (v0 ^ 0x31)) & 0x6FF327FE) - 16257999;
}

void sub_1D4D7E980()
{
  LODWORD(STACK[0x534]) = v1;
  LODWORD(STACK[0x61C]) = 197499219;
  LODWORD(STACK[0x7E0]) = 197499219;
  LODWORD(STACK[0x844]) = v2;
  STACK[0x4E8] = v0;
  JUMPOUT(0x1D4D7E9A8);
}

uint64_t sub_1D4D7EA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, int a7@<W7>, int a8@<W8>)
{
  if (v8 == 17168)
  {
    return (*(a6 + 8 * ((a7 + 52) ^ (5025 * (a5 == a8 + 4)))))();
  }

  if (v8 == 20706 || v8 == 33980)
  {
    return (*(a6 + 8 * (((((a7 + 51) | 1) + 4376) * (v8 == 17168)) ^ (a7 + 52))))(a1, a2, a3, a4, 197499219);
  }

  LODWORD(STACK[0x268]) = v8;
  return (STACK[0x260])();
}

uint64_t sub_1D4D7ED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36)
{
  v40 = (v38 + ((2 * (v37 + 6)) & 0x6C7E72F77DF7E76CLL) + ((v37 + 6) ^ 0xF63F397BBEFBF3B6) + 0x9C0C68441040C4ALL);
  v41 = (*v40 << 24) | (v40[1] << 16) | (v40[2] << 8);
  return (*(v39 + 8 * ((2037 * ((((v41 | v40[3]) + 197499219 - 2 * ((v41 | v40[3]) & 0xBC5995F ^ v40[3] & 0xC)) ^ 0xBC59953u) + v37 + 10 <= a36)) ^ v36)))();
}

uint64_t sub_1D4D7F074@<X0>(int a1@<W3>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v14 = v9 + 4;
  a4.i64[0] = *(v10 + 4);
  a4.i32[2] = *(v11 + 4 * (v14 + v8));
  v15 = vextq_s8(a3, a4, 0xCuLL);
  v16 = a4;
  v16.i32[3] = *(v10 + 16);
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a6), vandq_s8(v15, a5)), 1uLL), *(v10 - 908));
  v15.i32[0] = *(v13 + 4 * (*(v10 + 4) & 1));
  v15.i32[1] = *(v13 + 4 * (*(v10 + 8) & 1));
  v15.i32[2] = *(v13 + 4 * (*(v11 + 4 * (v14 + v8)) & 1));
  v15.i32[3] = *(v13 + 4 * (v16.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a7)), a8), v15);
  return (*(v12 + 8 * (((v14 == -3245) * a1) ^ a2)))();
}

uint64_t sub_1D4D7F0E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  STACK[0x9B0] = 0;
  STACK[0x520] = 0;
  return (*(STACK[0x400] + 8 * (((((v1 + 841) | 0x20) - 9166) * (v2 != 0)) ^ v1)))();
}

void sub_1D4D7F180(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x394]) = v2;
  JUMPOUT(0x1D4D2D85CLL);
}

uint64_t sub_1D4D7F1A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = v65 ^ a1;
  v67 = *(STACK[0x678] + 24);
  STACK[0x3D0] = v67;
  return (*(a65 + 8 * (((v67 == 0) * ((v65 - 878694419) & 0x345FBFFF ^ (v66 - 4057))) ^ v65)))();
}

uint64_t sub_1D4D7F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x360]);
  switch(v6)
  {
    case 17168:
      return (*(STACK[0x3E8] + 8 * ((v5 - 4071) ^ (146 * (a3 == 197499223)))))();
    case 20706:
      return (*(STACK[0x3E8] + 8 * ((((v5 + 2130862360) & 0x80FD9AF2 ^ 0x1F0D) * (a3 == 197499227)) ^ (v5 - 4071))))();
    case 33980:
      STACK[0x708] = STACK[0x6E0] + STACK[0x2F0];
      JUMPOUT(0x1D4CFAE48);
  }

  return sub_1D4D2A338(a1, a2, a3, a4, a5, v5);
}

void sub_1D4D7F528()
{
  v0 = LOWORD(STACK[0xA4E]);
  v1 = STACK[0xA50];
  LODWORD(STACK[0x370]) = 197499223;
  STACK[0x3B0] = STACK[0x7B0] + 24;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0xA54]) ^ 0xD6A561FA;
  LODWORD(STACK[0x360]) = v0;
  LODWORD(STACK[0x340]) = v0 ^ 0x4CF9;
  STACK[0x3A0] = STACK[0x5F8] + 24;
  v2 = LOWORD(STACK[0xB1E]);
  LODWORD(STACK[0x350]) = v2;
  LODWORD(STACK[0x330]) = v2 ^ 0xFFFFA60A;
  v3 = STACK[0xB20];
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xB24]) ^ 0xD6A561FA;
  STACK[0x390] = STACK[0x580] + 24;
  STACK[0x380] = STACK[0x658] + 24;
  LODWORD(STACK[0x300]) = v1;
  LODWORD(STACK[0x320]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x2F0]) = v3;
  LODWORD(STACK[0x310]) = v3 ^ 0xD6A561FA;
  JUMPOUT(0x1D4C4A548);
}

uint64_t sub_1D4D7F55C()
{
  v4 = (*(v3 + 8 * (v0 + 8394)))();
  *v1 = 0;
  return v2(v4);
}

void sub_1D4D7F580(int a1)
{
  v2 = *(&off_1F5090370 + (a1 ^ 0x903)) - 4;
  *(v1 - 256) = *(&off_1F5090370 + (a1 ^ 0x9F2));
  *(v1 - 248) = v2;
  JUMPOUT(0x1D4D7FCC4);
}

uint64_t sub_1D4D817FC@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v6 = v5 < v3;
  *(v4 + v2) = 0;
  if (v6 == (a2 ^ 0x13F1uLL) + v2 > 0xFFFFFFFFCDE53684)
  {
    v6 = v3 + v2 + 1 < v5;
  }

  return (*(a1 + 8 * ((2044 * v6) ^ a2)))();
}

uint64_t sub_1D4D81860(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA50] = ((v1 - 32) | 0x20u) + 0x5E419F52E8AC3FEELL + (((v2 ^ 0x11A1C2F5AE308480) - 0x11A1C2F5AE308480) ^ ((v2 ^ 0x244643D37C7A7A97) - 0x244643D37C7A7A97) ^ ((v2 ^ 0x35E78126D98F6744) - 0x35E78126D98F6EBELL + ((v1 - 874) ^ 0x27CCu)));
  *(a1 + 16) = (((v2 ^ 0xA004CBBB) + 1610298437) ^ ((v2 ^ 0x40FF2A48) - 1090464328) ^ ((v2 ^ 0xEB3E78A0) + 348227424)) + 197499229;
  v5 = (*(v3 + 8 * (v1 + 386)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((69 * (v5 == 0)) ^ (v1 - 874))))();
}

uint64_t sub_1D4D819D4()
{
  v0 = STACK[0x32C];
  v1 = LOWORD(STACK[0x886]);
  STACK[0x448] = STACK[0x888];
  return (*(STACK[0x330] + 8 * (((v1 == 17168) * (((v0 + 379570601) & 0xE960377E) - 342)) ^ (v0 - 2561))))();
}

void sub_1D4D81A34()
{
  STACK[0x540] = 0;
  STACK[0x690] = 0;
  STACK[0x3D8] = *(STACK[0x330] + 8 * v0);
  JUMPOUT(0x1D4D42224);
}

uint64_t sub_1D4D81ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
{
  v26 = (v23 + 130279740) & 0x40B9E;
  v27 = ((((&a18 | 0xB20D1424) ^ 0xFFFFFFFE) - (~&a18 | 0x4DF2EBDB)) ^ 0x159B38B9) * v24;
  a19 = v27 + 1136829205;
  a22 = -654855621 - v27;
  a23 = v27 + 1674579114;
  a20 = a13;
  a21 = &a16;
  v28 = (*(v25 + 76864))(&a18);
  return (*(v25 + 8 * ((14191 * (a18 == v26 + 16255565)) ^ 0x14A7u)))(v28);
}

uint64_t sub_1D4D81BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  a18 = (33731311 * (((&a17 | 0xBE3FBC99) - (&a17 & 0xBE3FBC99)) ^ 0x87C976BA)) ^ 0xC9C;
  a19 = a15;
  a20 = &a14;
  (*(v21 + 76616))(&a17);
  a19 = a15;
  LODWORD(a20) = 5661 - 2008441969 * ((&a17 + 128911006 - 2 * (&a17 & 0x7AF069E)) ^ 0x4F365290);
  v23 = (*(v21 + 77016))(&a17);
  return (*(v21 + 8 * ((2845 * (a17 == v22)) ^ v20)))(v23);
}

void sub_1D4D81CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x830] = *(a4 + 8 * (v4 - 5051));
  LODWORD(STACK[0x3A0]) = STACK[0x534];
  LODWORD(STACK[0x3B0]) = STACK[0x61C];
  LODWORD(STACK[0x3D0]) = 16215971;
  LODWORD(STACK[0x3C0]) = STACK[0x7E0];
  LODWORD(STACK[0x390]) = v5 ^ 0x1FAA;
  JUMPOUT(0x1D4CFDBA4);
}

uint64_t sub_1D4D81D7C@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 127 - a1;
  v6 = *(v5 - 31);
  v7 = v3 + 127 - a1;
  v8.i64[0] = 0x7878787878787878;
  v8.i64[1] = 0x7878787878787878;
  v9.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v9.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v1 + 8 * (((a1 == 96) * ((v2 - 3176) ^ 0x984)) ^ v2)))();
}

uint64_t sub_1D4D81F78(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *(v5 + a3 + 16);
  v9 = (v6 + a3);
  *v9 = *(v5 + a3);
  v9[1] = v8;
  return (*(v7 + 8 * (((v3 == a3) * a2) ^ v4)))();
}

uint64_t sub_1D4D8203C(uint64_t a1)
{
  *(a1 + 16) = *v2;
  *(a1 + 88) = *(v2 + 72);
  *(a1 + 92) = *(v2 + 76);
  *(a1 + 96) = *(v2 + 80);
  *(a1 + 97) = *(v2 + 81);
  *(a1 + 120) = *(v2 + 104);
  *(a1 + 100) = *(v2 + 84);
  *(a1 + 124) = *(v2 + 108) & (((v1 + 114) & 0x77) - 114);
  return sub_1D4D820C8();
}

uint64_t sub_1D4D820C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, char a7, int a8)
{
  v12 = a3 + v8 - 1312;
  *(v10 + v12) = *(a2 + v12) ^ *(*(v11 + 8 * a4) - 8 + (v12 & 0xF)) ^ *((v12 & 0xF) + *(v11 + 8 * a5) - 12 + 3) ^ ((v12 & 0xF) * a7) ^ *(*(v11 + 8 * a6) + (v12 & 0xF)) ^ 0x3C;
  return (*(STACK[0x3E8] + 8 * (((v12 != 0) * a8) ^ v9)))();
}

uint64_t sub_1D4D821D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v21 = ((&a12 - 200548955 - 2 * (&a12 & 0xF40BDDA5)) ^ 0xAC620EC7) * v18;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674576141;
  a13 = v21 - 179957024;
  v22 = (*(v17 + 8 * (v20 ^ 0x2E15)))(&a12);
  return (*(v17 + 8 * ((52 * (a12 != (((v20 ^ 0xFFB) + 1719) ^ (v19 + 2280)))) ^ v20)))(v22);
}

uint64_t sub_1D4D82308()
{
  v2 = (v0 - 4286) | 0xA01;
  v3 = (STACK[0x900] ^ 0xDE538BA8) & (2 * (STACK[0x900] & 0xDF630BA9)) ^ STACK[0x900] & 0xDF630BA9;
  v4 = v0 ^ 0x909285B7 ^ ((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042;
  v5 = (((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042 ^ 0x7000000) & (4 * v3) ^ v3;
  v6 = ((4 * v4) ^ 0x5ECA410C) & v4 ^ (4 * v4) & 0x97B29040;
  v7 = (v6 ^ 0x16820000) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x81309043)) ^ 0x7B290430) & (v6 ^ 0x81309043) ^ (16 * (v6 ^ 0x81309043)) & 0x97B29040;
  v9 = (STACK[0x900] ^ (2 * ((((v8 ^ 0x84929043) << 8) & 0x17B20000 ^ 0x12900000 ^ (((v8 ^ 0x84929043) << 8) ^ 0xB2900000) & (v8 ^ 0x84929043)) & (((v8 ^ 0x13200000) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x13200000) & (v7 << 8) ^ v7))) == -547157079;
  return (*(v1 + 8 * (((8 * v9) | (16 * v9)) ^ (v0 + 2347))))();
}

uint64_t sub_1D4D824EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v3.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_1D4D82514(a1, 4445, a3, 770041607, v3);
}

uint64_t sub_1D4D82514@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>, int8x16_t a5@<Q0>)
{
  v13 = ~v8 + v5;
  v14 = *(a4 + v13 - 15);
  v15 = *(a4 + v13 - 31);
  v16 = a1 + v13;
  *(v16 - 15) = veorq_s8(v14, a5);
  *(v16 - 31) = veorq_s8(v15, a5);
  return (*(v12 + 8 * ((((((a3 + v7 + 72) | v9) ^ v11) + v8 == v6) * a2) ^ v10)))();
}

uint64_t sub_1D4D82584()
{
  v4 = 1358806181 * ((v3 + 1475160102 - 2 * ((v3 - 120) & 0x57ED289E)) ^ 0x68C2441D);
  *(v3 - 104) = v2;
  *(v3 - 120) = v4 - 1569389450;
  *(v3 - 116) = v4 - 740060536 + v1;
  v5 = (*(v0 + 8 * (v1 ^ 0x2A02)))(v3 - 120);
  return (*(v0 + 8 * (((*(v3 - 112) == 16257999) * ((v1 ^ 0x7A3) + 2657)) ^ v1)))(v5);
}

void sub_1D4D8262C(unint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v19 = ((a2 ^ v10) + v11) ^ ((a2 ^ 0x5AFB426E0B8A3085) - 0x5AFB426E0B8A3085) ^ ((a2 ^ (v9 + v8) ^ 0x72A534C6BE2CFC05) - 0x72A534C6DF106852);
  v20 = v15 + (v19 + v12) * (v19 + v13) - ((((v15 + (v19 + v12) * (v19 + v13)) * v16) >> 64) >> 31) * v17;
  v21 = v20 * v18 + (v14 ^ v7) * (v14 ^ v7) + a4;
  v22 = (v21 - (((v21 * a1) >> 64) >> 31) * a5) * v20;
  *(a6 + a3) = *(v6 + a3) ^ (v22 >> 15) ^ 0x3C;
  *(a6 + (a3 | 1)) = *(v6 + (a3 | 1)) ^ (v22 >> 23) ^ 0x3C;
  *(a6 + (a3 | 2)) = *(v6 + (a3 | 2)) ^ (v22 >> 31) ^ 0x3C;
  *(a6 + (a3 | 3)) = *(v6 + (a3 | 3)) ^ (v22 >> 39) ^ 0x3C;
  JUMPOUT(0x1D4C93614);
}

uint64_t sub_1D4D82790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a12;
  a18 = &a11;
  a16 = (v18 + 1007) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  (*(v19 + 8 * (v18 + 7356)))(&a15);
  a17 = a12;
  LODWORD(a18) = v18 - 2008441969 * ((934883449 - (&a15 | 0x37B93079) + (&a15 | 0xC846CF86)) ^ 0x80DF9B88) + 3440;
  v21 = (*(v19 + 8 * (v18 ^ 0x2D36)))(&a15);
  return (*(v19 + 8 * (((a15 == v20) * ((v18 ^ 0x382) - 2785)) ^ v18)))(v21);
}

uint64_t sub_1D4D828E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 ^ 0x86037F31) & 0xEBD1BD42 | ~(&a14 ^ 0x86037F31 | 0xEBD1BD42)) ^ 0xCA44EEEE) * v19;
  a15 = v22 - 1953920832;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574045;
  a16 = a9;
  a17 = &a12;
  v23 = (*(v20 + 8 * (v21 ^ 0x3645u)))(&a14);
  return (*(v20 + 8 * (((a14 == 16257999) * (((v21 - 4040) | 0x38) ^ 0xCB4)) ^ v21)))(v23);
}

uint64_t sub_1D4D82C3C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26)
{
  v27.n128_u64[0] = 0x7878787878787878;
  v27.n128_u64[1] = 0x7878787878787878;
  v28.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v28.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return (*(v26 + 8 * ((((a18 + 726283800) & 0xD4B5E8DE ^ 0x2AE4) * (a15 < 0xFFFFFFFE)) ^ a18)))(a21, -474, 27, a25, 3953782941, 3904377628, 2443927634, a26, a1, a2, a3, v27, v28);
}

uint64_t sub_1D4D82D3C@<X0>(int a1@<W8>)
{
  STACK[0x998] = v1;
  v2 = STACK[0x698];
  STACK[0x9A0] = STACK[0x698];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > ((6 * (a1 ^ 0x1A7Cu)) ^ 0x15FFuLL)) * (((a1 - 6613) | 0x187) + 14462)) ^ a1)))();
}

uint64_t sub_1D4D82DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, int a45, int a46)
{
  v51 = v50 - 224;
  *(v51 + 88) = v49 | 3;
  *(v51 + 72) = ((v48 + 1) ^ a43 ^ 0xC5A1302D ^ (v46 - (a46 - 8863) >= ~(a46 - 8863))) - v49;
  *(v50 - 144) = (a46 + 1324639579) ^ v49;
  *(v50 - 160) = a43 - v49 + 12;
  *(v50 - 156) = a45 - v49;
  *(v50 - 168) = a43 ^ v49;
  *(v50 - 164) = v49;
  v52 = (*(v47 + 8 * a44))(v50 - 168);
  return (*(v47 + 8 * *(v50 - 140)))(v52);
}

void sub_1D4D82E44()
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v0;
  JUMPOUT(0x1D4C887D0);
}

uint64_t sub_1D4D82E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, char *a14, int a15, char a16, int a17)
{
  v25 = -3 * (*(v17 + 32) + v23);
  v26 = (&a12 ^ 0x321B5B90) * v21;
  a17 = v26 + v20 + 1458;
  a13 = v22;
  a14 = &a10;
  a16 = (&a12 ^ 0x90) * v21 + v25 + 92;
  a15 = v26 + 864028683 + v24;
  v27 = (*(v19 + 8 * (v20 + 6273)))(&a12);
  return (*(v19 + 8 * (((a12 == v18) * (v20 ^ 0x10A0)) ^ v20)))(v27);
}

uint64_t sub_1D4D83064()
{
  (*(v1 + 8 * (v0 + 1166)))();
  v2 = STACK[0x330];
  STACK[0x5E0] = 0;
  return (*(v2 + 8 * (((STACK[0x520] == 0) * ((3437 * (v0 ^ 0x20F4) + 1871) ^ 0x221B)) ^ (3437 * (v0 ^ 0x20F4)))))();
}

void sub_1D4D831C0()
{
  v3 = (((2 * v1) & 0xFEDBD7BBB1BEF9CLL) + (v1 ^ 0x87F6DEBDDD8DF7CELL) + v0 + 0x780921422271FA0CLL);
  v4 = (v3[3622] << 56) | (v3[3623] << 48) | (v3[(2 * (v2 ^ 0x3D14)) ^ 0x2594] << 40) | (v3[3625] << 32) | (v3[3626] << 24) | (v3[3627] << 16) | (v3[3628] << 8) | v3[3629];
  STACK[0x458] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  JUMPOUT(0x1D4D83284);
}

uint64_t sub_1D4D83300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LOWORD(STACK[0x8CE]);
  switch(v7)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v8 = STACK[0x740];
      STACK[0x570] = v4;
      LODWORD(STACK[0x7F4]) = a3;
      return (*(a4 + 8 * (((v8 + v5 != 0) * (((v6 + 750605168) & 0xD3429CFE) - 1109)) ^ (v6 - 689))))();
    case 20706:
LABEL_4:
      STACK[0x570] = v4;
      break;
  }

  *STACK[0x580] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return sub_1D4D6BCF8(a1, a2, a3, a4);
}

void sub_1D4D834A8()
{
  v2 = *(STACK[0x5B8] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 + 352)))(STACK[0x628], 0, 32);
      JUMPOUT(0x1D4C010D0);
    }

    JUMPOUT(0x1D4CB6F30);
  }

  JUMPOUT(0x1D4D83520);
}

uint64_t sub_1D4D835B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = LODWORD(STACK[0x380]);
  if (v7 == 17168)
  {
    return (*(STACK[0x3E8] + 8 * ((v6 - 563) ^ (12428 * (a3 == 197499223)))))();
  }

  if (v7 == 20706 || v7 == 33980)
  {
    STACK[0x620] = a6;
  }

  return (STACK[0x770])(a1, a2, a3, STACK[0x3E8]);
}

uint64_t sub_1D4D83640(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x230] = a1;
  *(v8 - 200) = a1;
  v9 = *(a7 + 8 * ((70 * (LODWORD(STACK[0x25C]) == ((((((v7 - 330) | 0x1A0) - 1442) | 0x84) + 16258553) ^ (((v7 - 330) | 0x1A0) + 1021391274) & 0xC31ECDFF))) ^ ((v7 - 330) | 0x1A0)));
  STACK[0x2A8] = STACK[0x270];
  return v9();
}

uint64_t sub_1D4D836D0()
{
  v1 = *(STACK[0x758] + 24);
  STACK[0x790] = v1;
  return (*(STACK[0x3E8] + 8 * (((v1 == 0) * (((227 * (v0 ^ 0x147F)) ^ 0xFFFFFFCD) + v0 + 8)) ^ v0)))();
}

uint64_t sub_1D4D837DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v24 = ((917997502 - (&a15 | 0x36B787BE) + (&a15 | 0xC9487841)) ^ 0x9121AB23) * v21;
  a16 = v24 - 1540187763;
  a17 = a13;
  a18 = &a10;
  a19 = -654855621 - v24;
  a20 = v24 + v22 + 1674574376;
  v25 = (*(v20 + 8 * (v22 + 4870)))(&a15);
  return (*(v20 + 8 * (((a15 != v23) * ((335 * (v22 ^ 0x1286) + 59) ^ (v22 - 3343))) ^ v22)))(v25);
}

uint64_t sub_1D4D838A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1863741123 - 2 * (&a14 & 0x6F166EC3)) ^ 0xDF15F6B5) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((197 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_1D4D8392C()
{
  v1 = ((v0 + 41341218) & 0xFD8939C9) + 378997690 + (((*(STACK[0x518] + 116) ^ 0x34ECEC58) - 887942232) ^ ((*(STACK[0x518] + 116) ^ 0xFF4A3F24) + 11911388) ^ ((*(STACK[0x518] + 116) ^ 0xC0634A2F) + 1067234769));
  *(STACK[0x518] + 116) = v1 ^ ((v1 ^ 0x79FB7E12) - 1932193269) ^ ((v1 ^ 0xEA9DE919) + 531858690) ^ ((v1 ^ 0xE668EB93) + 323389324) ^ ((v1 ^ 0x7FDFEF7F) - 1963883672) ^ 0x1140AB4;
  return sub_1D4D83A28();
}

uint64_t sub_1D4D83A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x470];
  v6 = STACK[0x4E8];
  v7 = &STACK[0xA00] + STACK[0x4E8];
  STACK[0x440] = v7;
  v8 = v7 + 16;
  STACK[0x798] = (v7 + 16);
  STACK[0x738] = (v7 + 48);
  STACK[0x4E8] = v6 + 80;
  (*(a4 + 8 * (v4 ^ 0x401)))();
  v9 = (*(STACK[0x3E8] + 8 * (v4 ^ 0x401)))(v8, 0, 32);
  v10 = STACK[0x3E8];
  STACK[0x5F0] = 0;
  STACK[0x7F8] = 0;
  LODWORD(STACK[0x6DC]) = 197499219;
  STACK[0x4B0] = 0;
  LODWORD(STACK[0x5EC]) = 0;
  STACK[0x4D0] = v5;
  return (*(v10 + 8 * ((((((v4 + 194469502) & 0xF4688BCF) - 2808) ^ 0xDD) * (v5 != 0)) ^ v4)))(v9);
}

uint64_t sub_1D4D83B2C@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v12 = (((&a3 | 0xC87FE277) - &a3 + (&a3 & 0x37801D88)) ^ 0xE483530C) * a1;
  a5 = v7;
  a3 = &a2;
  a6 = (((v11 + 3518) ^ 0xCB47733D) + v9) ^ v12;
  a7 = -1683109072 - v12;
  a4 = (v11 - 5048) ^ v12;
  v13 = (*(v8 + 8 * (v11 + 3628)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v10 + 3956) * (v11 ^ 0x187C)) ^ v11)))(v13);
}

void sub_1D4D83C30()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1D4D83C5CLL);
}

uint64_t sub_1D4D83D00@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 3203));

  return v3(v1);
}

uint64_t sub_1D4D83DF8@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x210] = a6;
  v66 = *(a6 + 24);
  LODWORD(STACK[0x220]) = a2;
  STACK[0x200] = a2 ^ 0x9DFEFFEEFDFFF39FLL;
  v67 = (v65 ^ a1) < (((a7 ^ 0x32D8) - 2744) | 4u) - 6086;
  v68 = *(a4 + 8 * ((v67 | (4 * v67)) ^ a7 ^ 0x32D8));
  STACK[0x3D0] = v66;
  return v68(a65, ((2 * a2) & 0x1FBFFE73ELL) + (a2 ^ 0x9DFEFFEEFDFFF39FLL) + 0x6201001102000C61, a3, 0x61459D2AF01F24F7, a5, 1280, -2);
}

void sub_1D4D83EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 ^ 0xB7B;
  (*(a4 + 8 * (v4 ^ 0x2B7A)))();
  v7 = STACK[0x3E8];
  *(v5 + 24) = 0;
  (*(v7 + 8 * (v6 ^ 0x2001)))(v5);
  JUMPOUT(0x1D4D47F38);
}

uint64_t sub_1D4D83FAC()
{
  LOWORD(STACK[0x8D6]) = v2;
  LODWORD(STACK[0x2D0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5235)))();
}

uint64_t sub_1D4D83FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1603139409 - 2 * (&a14 & 0x5F8DF751)) ^ 0xEF8E6F27) + 8154;
  v17 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((3661 * (a15 == 16257999)) ^ 0x15EAu)))(v17);
}

uint64_t sub_1D4D840D4()
{
  v2 = (*(v1 + 8 * (v0 + 1573)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x4E0] = v2;
  return (*(v3 + 8 * ((((v0 - 1024360319) & 0x3D0E75F7 ^ 0x8DB ^ ((v0 - 698) | 0x100)) * (v2 != 0)) ^ v0)))();
}

void MaYVT0G(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D841D0@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t sub_1D4D84414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 - 224) = (v5 - 2140796422) ^ (914963389 * ((((v6 - 232) | 0x7F3CA9F7) - (v6 - 232) + ((v6 - 232) & 0x80C35608)) ^ 0x53C0188C));
  v7 = (*(a4 + 8 * (v5 ^ 0x249E)))(v6 - 232);
  v8 = STACK[0x3E8];
  v9 = *(STACK[0x6C0] + 8);
  STACK[0x6B8] = *(STACK[0x3E8] + 8 * v5);
  return (*(v8 + 8 * (((v9 != 0) * (((((v5 + 4812) | 0xA80) ^ 0x1F83) + 4958) ^ 0x144C)) ^ ((v5 + 4812) | 0xA80))))(v7);
}

void sub_1D4D844C8()
{
  v2 = *(STACK[0x800] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 ^ 0x324B)))(STACK[0x4E8], 0, 32);
      JUMPOUT(0x1D4D84518);
    }

    sub_1D4CAC35C();
  }

  else
  {
    STACK[0x498] = *(v1 + 8 * (v0 - 5775));
    sub_1D4CBA4E8();
  }
}

uint64_t sub_1D4D84598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x7F8];
  STACK[0x5C0] = STACK[0x7F8];
  v7 = *(STACK[0x4D0] + 100);
  v8 = STACK[0x440];
  v9 = v4 + 2439 + (*(STACK[0x4D0] + 120) ^ 0x3BF2FDFE) + ((2 * *(STACK[0x4D0] + 120)) & 0x77E5FBFC) - 679501093;
  v10 = 236591001 * (((v4 ^ 0x18B1DEF7 ^ LODWORD(STACK[0x6DC])) - 414307369) ^ ((LODWORD(STACK[0x6DC]) ^ 0x5D502825) - 1565534245) ^ ((LODWORD(STACK[0x6DC]) ^ 0x4E24655F) - 1311008095)) + 179962559;
  v11 = 1358806181 * ((2 * ((v5 - 232) & 0x6C88B710) - (v5 - 232) + 326584558) ^ 0x2C58246D);
  *(v5 - 208) = STACK[0x4D0] + 104;
  *(v5 - 216) = v11 - 1498995465;
  *(v5 - 200) = v11 + v4 - 310;
  *(v5 - 196) = v9 ^ v11;
  *(v5 - 224) = v8;
  *(v5 - 192) = v10 ^ v11;
  *(v5 - 188) = v11 + 1334444757 * v7 + 206659825;
  *(v5 - 184) = v6;
  *(v5 - 176) = v6;
  v12 = (*(a4 + 8 * (v4 ^ 0x2F3D)))(v5 - 232);
  return (*(STACK[0x3E8] + 8 * ((340 * (*(v5 - 232) == 16257999)) ^ v4)))(v12);
}

void TRKYieUV6ptjZFoDvz()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 - dword_1EC7E4820) ^ 0xDF)) ^ byte_1D4E17DB0[byte_1D4E31360[(-85 * ((dword_1EC7E4810 - dword_1EC7E4820) ^ 0xDF))] ^ 0xE9]) - 88);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 + v1) ^ 0xDF)) ^ byte_1D4E22020[byte_1D4E17AB0[(-85 * ((dword_1EC7E4810 + v1) ^ 0xDF))] ^ 0x21]) + 72);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[1] = 1934676430 - 33731311 * (v6 ^ 0x39F6CA23);
  LODWORD(v2) = 2054362027 * ((*v2 - *(v0 - 4)) ^ 0x3EF64BDF);
  v4 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 - dword_1EC7E4820) ^ 0xDF)) ^ byte_1D4E17DB0[byte_1D4E31360[(-85 * ((dword_1EC7E4810 - dword_1EC7E4820) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (*(off_1F5090418 + (*(off_1F5090A88 + v2 - 8) ^ 0xBFu) - 8) ^ v2) + 75264])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D84C98@<X0>(int a1@<W8>)
{
  v1 = (((*(STACK[0x6B0] + 116) ^ 0x5CC190D0) + ((2 * a1) ^ 0xA33E7F08)) ^ ((*(STACK[0x6B0] + 116) ^ 0x5689D319) - 1451873049) ^ ((*(STACK[0x6B0] + 116) ^ 0x18DDA9A) - 26073754)) + 711842995;
  v2 = (v1 ^ 0xF407BA28) & (2 * (v1 & 0xE157BCA1)) ^ v1 & 0xE157BCA1;
  v3 = ((2 * (v1 ^ 0x7605FB28)) ^ 0x2EA48F12) & (v1 ^ 0x7605FB28) ^ (2 * (v1 ^ 0x7605FB28)) & 0x97524788;
  v4 = v3 ^ 0x91524089;
  v5 = (v3 ^ 0x6000700) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x5D491E24) & v4 ^ (4 * v4) & 0x97524788;
  v7 = (v6 ^ 0x15400600) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x82124189)) ^ 0x75247890) & (v6 ^ 0x82124189) ^ (16 * (v6 ^ 0x82124189)) & 0x97524780;
  v9 = v7 ^ 0x97524789 ^ (v8 ^ 0x15004000) & (v7 << 8);
  *(STACK[0x6B0] + 116) = v1 ^ (2 * ((v9 << 16) & 0x17520000 ^ v9 ^ ((v9 << 16) ^ 0x47890000) & (((v8 ^ 0x82520709) << 8) & 0x17520000 ^ 0x5100000 ^ (((v8 ^ 0x82520709) << 8) ^ 0x52470000) & (v8 ^ 0x82520709)))) ^ 0xCA36AAE0;
  return sub_1D4D84E54();
}

uint64_t sub_1D4D84E54()
{
  v2 = STACK[0x868];
  v3 = STACK[0x728];
  v4 = &STACK[0xA30] + STACK[0x728];
  STACK[0x700] = v4;
  v5 = v4 + 16;
  STACK[0x5F0] = (v4 + 16);
  STACK[0x7A0] = (v4 + 48);
  STACK[0x728] = v3 - 5089 + 1723 * (v0 ^ 0x2025u);
  (*(v1 + 8 * (v0 + 1370)))();
  v6 = (*(STACK[0x330] + 8 * (v0 + 1370)))(v5, 0, 32);
  v7 = STACK[0x330];
  STACK[0x3E8] = 0;
  STACK[0x7F0] = 0;
  LODWORD(STACK[0x82C]) = 197499219;
  STACK[0x430] = 0;
  LODWORD(STACK[0x828]) = 0;
  STACK[0x4B8] = v2;
  return (*(v7 + 8 * (((v2 == 0) * (((v0 - 8230) | 0x282) ^ 0x2F4)) ^ v0)))(v6);
}

uint64_t sub_1D4D84F24()
{
  v2 = *STACK[0x4B0];
  STACK[0x858] = 0;
  STACK[0x540] = 0;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x2309) + 1748)) ^ v0)))();
}

uint64_t sub_1D4D84FD8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  LODWORD(STACK[0x90C]) = a1;
  v57 = (a1 ^ 0xBC59953u) + STACK[0x270];
  STACK[0x910] = v57;
  return (*(v56 + 8 * ((a56 + 6368) ^ (30 * (v57 > a19)))))();
}

uint64_t sub_1D4D85084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v65 ^ 0x2004)))(LODWORD(STACK[0x80C]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0x9C8] = v68;
  if (v68)
  {
    a51 = v66;
  }

  LODWORD(STACK[0x9D4]) = a51;
  return (*(a65 + 8 * (((v68 != 0) * ((v65 ^ 0x23B) - 1940)) | v65)))();
}

uint64_t sub_1D4D850F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 != 0) * ((42 * (v3 ^ 0x1E5D)) ^ 0x811)) ^ (v3 - 4223))))();
}

uint64_t sub_1D4D8513C()
{
  STACK[0xA18] = v1;
  v3 = STACK[0x590];
  STACK[0xA20] = STACK[0x590];
  return (*(v2 + 8 * ((54 * (((v1 - v3 > (v0 ^ 0x27Bu) - 416) ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_1D4D85298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x78C]) = v4 - v5 + 26;
  v7 = (*(a4 + 8 * (v6 + 3198)))();
  v8 = STACK[0x3E8];
  STACK[0x828] = v7;
  return (*(v8 + 8 * ((29 * (((v7 == 0) ^ (-77 * (((v6 - 31) | 0x60) ^ 0x67) + 1)) & 1)) ^ v6)))();
}

uint64_t sub_1D4D85330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF4B6 ^ ((v4 ^ 0xE0u) + 716)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((224 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v4 ^ 0xE0)))();
}

void NuRl2rYpg6zLtnsguhi3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5090370 + (*(off_1F5090560 + (*(off_1F5090728 + (-85 * (dword_1EC7E4930 ^ 0xDF ^ dword_1EC7E4810)) - 12) ^ 0xB1u) - 12) ^ (-85 * (dword_1EC7E4930 ^ 0xDF ^ dword_1EC7E4810))) + 203);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5090370 + (*(off_1F5090A10 + (*(off_1F5090968 + (-85 * ((dword_1EC7E4810 + v1) ^ 0xDF)) - 4) ^ 0xADu) - 12) ^ (-85 * ((dword_1EC7E4810 + v1) ^ 0xDF))) + 199);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((184128274 - (v6 | 0xAF99312) + (v6 | 0xF5066CED)) ^ 0xC71D377D);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_1F5090370 + ((-85 * (dword_1EC7E4930 ^ 0xDF ^ dword_1EC7E4810)) ^ byte_1D4E17DB0[byte_1D4E31360[(-85 * (dword_1EC7E4930 ^ 0xDF ^ dword_1EC7E4810))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (*(off_1F5090418 + (*(off_1F5090A88 + v2 - 8) ^ 0x67u) - 8) ^ v2) + 76624])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1D4D855BC(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1D4D824A0);
}

uint64_t sub_1D4D85688()
{
  *(v2 - 228) = v1 - 33731311 * ((((v2 - 232) | 0x614E82E0) - ((v2 - 232) & 0x614E82E0)) ^ 0x58B848C3) + 1934673796;
  v5 = v0;
  v3 = (*(v0 + 8 * (v1 ^ 0x2FDD)))(v2 - 232);
  return (*(v5 + 8 * (((*(v2 - 232) == 16257999) * (v1 - 2202)) | v1)))(v3);
}

uint64_t sub_1D4D85DC0()
{
  v2 = STACK[0x438];
  LODWORD(STACK[0x68C]) = STACK[0x7CC];
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 4184) ^ (v0 - 4211))) ^ v0)))();
}

void sub_1D4D85E90(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = 2008441969 * ((a1 & 0xB41CF87E | ~(a1 | 0xB41CF87E)) ^ 0x37A538F);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 32);
  v4 = ((((*(a1 + 24) - v1) ^ 0x1151993F) - 290560319) ^ (((*(a1 + 24) - v1) ^ 0xC28C3A17) + 1030997481) ^ (((*(a1 + 24) - v1) ^ 0xEAC39360) + 356281504)) - 1539757407;
  v5 = 2008441969 * ((2 * (&v9 & 0x2FBB62E8) - &v9 - 800809705) ^ 0x98DDC919);
  v9 = v5 - 235825323 * (*(a1 + 8) ^ v1) + 118679478;
  v13 = &v8;
  v10 = v3;
  v11 = &v7;
  v12 = v4 ^ v5;
  v14 = v2 - v5 + 2761;
  v6 = *(&off_1F5090370 + v2 - 5360) - 8;
  (*&v6[8 * v2 + 32560])(&v9);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4D860F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (((*(v5 + 16) ^ 0x4E50E979) + 614863233) ^ ((*(v5 + 16) ^ 0xEE517093) - 2069395349) ^ ((*(v5 + 16) ^ 0x5FFE6615) + 889757421)) - 156278046;
  v8 = (((v6 - 5304) | 0x821) ^ 0x8BB86590) + v4 > v7;
  v9 = (v4 > 0x74479616) ^ (v7 < 0x8BB869E9);
  v10 = v8;
  if (v9)
  {
    v11 = v4 > 0x74479616;
  }

  else
  {
    v11 = v10;
  }

  return (*(a4 + 8 * (v11 | (4 * v11) | v6)))();
}

uint64_t sub_1D4D861C8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v3 + 8 * (v2 + 3717)))(16, 0x20040A4A59CD2) != 0;
  return (*(STACK[0x330] + 8 * ((v4 * (((v2 - 4121) | 0x18DA) ^ 0x1FED)) ^ v2)))();
}

void RpUSQN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4D86324()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x161u)))(32, 0x103004054B5FA7DLL);
  STACK[0x7B0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x3308) - 6072)) ^ v0)))();
}

uint64_t sub_1D4D86490@<X0>(int a1@<W8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(v2 + v6) ^ 0x3C;
  return (*(v4 + 8 * (((v6 != 0) * a1) ^ v1)))();
}

uint64_t sub_1D4D870BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (956911519 * (&a12 ^ 0xEA917005)) ^ 0xA98301D7;
  v14 = (*(v13 + 77112))(&a12);
  return (*(v13 + 8 * ((46 * (a12 == 538291946)) ^ 0xFCFu)))(v14);
}

uint64_t sub_1D4D8749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((((&a15 | 0x116EE940) ^ 0xFFFFFFFE) - (~&a15 | 0xEE9116BF)) ^ 0xB6F8C5DD) * v21;
  a19 = 1032869496 - v23;
  a20 = v23 + v22 + 1674577821;
  a16 = v23 + 1723283275;
  a17 = a13;
  a18 = &a10;
  v24 = (*(v20 + 8 * (v22 + 8315)))(&a15);
  return (*(v20 + 8 * (v22 | (16 * (a15 != ((v22 - 1998583382) & 0x771FF9DB) + ((v22 + 915) | 0x346) + 16252758)))))(v24);
}

void sub_1D4D87570(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 956911519 * ((2 * (a1 & 0x98084BF6) - a1 + 1744286729) ^ 0x8D66C40C);
  v4 = 552;
  v6 = 25885 * (((&v5 ^ 0xF2B3 | 0x38E2) - (&v5 ^ 0xF2B3 | 0xC71D) - 14563) ^ 0xE602) + 12303;
  v5 = &v3;
  v7 = v1 + 869295389 * (((&v5 ^ 0x2818F2B3 | 0xF05438E2) - (&v5 ^ 0x2818F2B3 | 0xFABC71D) + 262915869) ^ 0x6918E602) - 8515;
  v2 = *(&off_1F5090370 + (v1 ^ 0x2419)) - 8;
  (*&v2[8 * (v1 ^ 0xEA)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D87794@<X0>(uint64_t a1@<X8>)
{
  v5 = _byteswap_ulong(*(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FAFLL));
  v6 = ((v5 + 197499219 - 2 * (v5 & 0xBC5995F ^ *(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FACLL) & 0xC)) ^ 0xBC59953) + v1 + 10 > v2;
  return (*(v4 + 8 * (((16 * v6) | (v6 << 6)) ^ v3)))();
}

uint64_t sub_1D4D87870@<X0>(uint64_t a1@<X8>)
{
  *v4 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return (*(v6 + 8 * (((((439 * ((v3 - 2039) ^ 0x35B) - 72) | 0x48) ^ 0x2D95) * (v5 == 16257999)) ^ (v3 - 2039))))();
}

uint64_t sub_1D4D8796C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = LOWORD(STACK[0x8CC]);
  if (v8 == 17168)
  {
    goto LABEL_4;
  }

  if (v8 == 33980)
  {
    v10 = STACK[0x7E8];
    STACK[0x3F0] = v4;
    LODWORD(STACK[0x7F4]) = a3;
    return (*(a4 + 8 * (((v10 + v5 != 0) * (v7 - 5206)) ^ (v7 - 498))))();
  }

  v9 = v7;
  if (v8 == 20706)
  {
LABEL_4:
    STACK[0x3F0] = v4;
    v6 = 16215638;
    v9 = v7;
  }

  *STACK[0x820] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return (*(a4 + 8 * (((((v9 - 4741) ^ 0x1585) + ((v9 - 4741) | 0x400) - 6632) * (v6 == 16257999)) ^ (v9 - 2471))))();
}

uint64_t sub_1D4D88414()
{
  STACK[0x958] = v1;
  v3 = STACK[0x700];
  STACK[0x960] = STACK[0x700];
  return (*(v2 + 8 * (((v1 - v3 > ((v0 ^ 0x2A34u) - 5682) - 2625) * (v0 ^ 0xE47)) ^ v0 ^ 0x2A34)))();
}

uint64_t sub_1D4D88480()
{
  STACK[0x948] = v1;
  v3 = STACK[0x6D8];
  STACK[0x950] = STACK[0x6D8];
  return (*(v2 + 8 * (((v1 - v3 > (v0 + 3885) - 5613) * (((v0 - 1444) | 0x48) ^ 0x14B6)) ^ v0)))();
}

uint64_t sub_1D4D88530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((121 * (v6 == (v4 - v2 - 2) - 3483)) ^ (v4 + 1267638684))))();
}

uint64_t sub_1D4D88608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = ((((v17 - 120) | 0xE2C930A7DEE3331BLL) - ((v17 - 120) | 0x1D36CF58211CCCE4) + 0x1D36CF58211CCCE4) ^ 0xB1DB013CBD4A7563) * v16;
  v19 = v18 + v15 + *v10 - (v13 & (2 * *v10));
  *(v17 - 120) = &a10;
  *(v17 - 112) = v19;
  *(v17 - 104) = v14 - v18 + v12;
  v20 = (*(v11 + 8 * (v12 ^ 0x2A12)))(v17 - 120);
  return (*(v11 + 8 * ((8156 * (*(v17 - 100) == 16257999)) ^ v12)))(v20);
}

uint64_t sub_1D4D886C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v65 + 6970)))();
  v68 = STACK[0x614];
  STACK[0x640] = (v65 - 1740) + STACK[0x640] - 974;
  return (*(a64 + 8 * ((12675 * (v68 == v64)) ^ (v65 + 1805))))(v67);
}

void sub_1D4D88718(uint64_t a1)
{
  v1 = *a1 - 1710126949 * ((a1 & 0x515F7A29 | ~(a1 | 0x515F7A29)) ^ 0x9CBBDE46);
  v2 = *(a1 + 8);
  v3 = *(&off_1F5090370 + (v1 ^ 0x2327)) - 8;
  (*&v3[8 * (v1 ^ 0x799)])(*(&off_1F5090370 + (v1 ^ 0x22B3)), sub_1D4C6F1E4);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D4D88938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x3E4];
  v5 = (*(a4 + 8 * (LODWORD(STACK[0x3E4]) ^ 0x31C7)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x3E8] + 8 * ((121 * ((v4 ^ (v5 == 0)) & 1)) ^ (v4 - 1333))))();
}

uint64_t sub_1D4D889BC()
{
  v2 = (*(v1 + 8 * (v0 + 4047)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x470] = v2;
  return (*(v3 + 8 * ((49 * (((v2 == 0) ^ (v0 + 36)) & 1)) ^ v0)))();
}

uint64_t sub_1D4D88A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  HIDWORD(a20) = v53;
  v54 = (*(v52 + 8 * (v51 + 6120)))(&a51, 0);
  (*(v52 + 8 * (v51 + 6063)))(v54);
  v55 = (*(v52 + 8 * (v51 ^ 0x2873)))();
  HIDWORD(a38) = a39 ^ a15;
  return sub_1D4D88B04(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1D4D88B04()
{
  v7 = *(v0 + 4 * (v1 - 1));
  *(v0 + 4 * v1) = (*(v5 + 4 * v4) ^ 0x2DDD12DF) + v4 + ((1664525 * (v7 ^ (v7 >> 30))) ^ *(v0 + 4 * v1));
  v8 = 1710126949 * ((~((v6 - 168) | 0x3FCECA77471D3365) + ((v6 - 168) & 0x3FCECA77471D3365)) ^ 0xA83751518AF9970ALL);
  v9 = v6 - 224;
  *(v9 + 88) = v8 ^ 0x26F;
  *(v9 + 72) = v1 + 1 - v8;
  *(v6 - 160) = v3 - 937004365 - v8 + 13;
  *(v6 - 156) = ((v3 - 937004365) ^ 0x3B9) - v8;
  *(v6 - 168) = (v3 - 937004365) ^ v8;
  *(v6 - 164) = v8;
  *(v6 - 144) = (v3 + 1324639579) ^ v8;
  v10 = (*(v2 + 8 * (v3 + 210)))(v6 - 168);
  return (*(v2 + 8 * *(v6 - 140)))(v10);
}

uint64_t sub_1D4D88C04@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 2188) ^ 0xFFFFFFFFFFFFF744) + v3;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((940 * (v6 == 0)) ^ (a2 + v4 + 3501))))();
}

uint64_t sub_1D4D88C40(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA08] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x1F3CD3FB) - 524080123) ^ ((v1 ^ 0x9DE3C384) + 1646017660) ^ ((v1 ^ 0x891A89B9 ^ ((v2 ^ 0x3FFE) - 2739) ^ 0x1563) + 1994749652)) + 197499229;
  v5 = (*(v3 + 8 * ((v2 ^ 0x3FFE) + 1273)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((19 * (v5 == 0)) ^ v2 ^ 0x3FFE)))();
}

void sub_1D4D88D60()
{
  v3 = ((2 * v1) & 0x3FFDBBDBBB7B3C8ELL) + (v1 ^ 0x1FFEDDEDDDBD9E47) + v0;
  v4 = (*(v3 - 0x1FFEDDEDDDBD9E47) << 56) | (*(v3 + (((v2 - 5278) | 0x965u) ^ 0xE00122122242685FLL)) << 48) | (*(v3 - 0x1FFEDDEDDDBD9E45) << 40) | (*(v3 - 0x1FFEDDEDDDBD9E44) << 32) | (*(v3 - 0x1FFEDDEDDDBD9E43) << 24) | (*(v3 - 0x1FFEDDEDDDBD9E42) << 16) | (*(v3 - 0x1FFEDDEDDDBD9E41) << 8) | *(v3 - 0x1FFEDDEDDDBD9E40);
  STACK[0x7D0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  JUMPOUT(0x1D4D88E2CLL);
}

uint64_t sub_1D4D88E94(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x858] == 0) * (2 * (v2 - 2536) - 11190)) ^ v2)))();
}

uint64_t sub_1D4D88F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((2 * (&a12 & 0x30F538A0) - &a12 + 1326106462) ^ 0xFF095F28) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * (((a13 == v16) * ((v15 - 1655664906) ^ 0x9D509B8E)) ^ v15)))(v17);
}

void sub_1D4D8ACC8(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x9E6A01AA) + (~a1 | 0x6195FE55))) ^ 0x58633476);
  __asm { BRAA            X10, X17 }
}

void pDCGH0ta()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 - dword_1EC7E4978) ^ 0xDF)) ^ byte_1D4E29100[byte_1D4E22220[(-85 * ((dword_1EC7E4810 - dword_1EC7E4978) ^ 0xDF))] ^ 0x2A]) + 163);
  v1 = *(&off_1F5090370 + ((-85 * (*v0 ^ dword_1EC7E4810 ^ 0xDF)) ^ byte_1D4E22020[byte_1D4E17AB0[(-85 * (*v0 ^ dword_1EC7E4810 ^ 0xDF))] ^ 0xEE]) + 85);
  v2 = &v4[*v1 - *v0];
  *v0 = 2054362027 * v2 + 0x1FC86B74B1533AF5;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((v5 + 686639723 - 2 * (v5 & 0x28ED4A6B)) ^ 0x1AF611FB);
  LOBYTE(v1) = -85 * (*v0 ^ 0xDF ^ *v1);
  v3 = *(&off_1F5090370 + ((-85 * ((dword_1EC7E4810 + dword_1EC7E4978) ^ 0xDF)) ^ byte_1D4E29000[byte_1D4E22120[(-85 * ((dword_1EC7E4810 + dword_1EC7E4978) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v3[8 * (*(off_1F5090560 + (*(off_1F5090728 + v1 - 12) ^ 0xE9u) - 12) ^ v1) + 75936])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_1D4D8B058(_DWORD *a1)
{
  v1 = *a1 - 1824088897 * ((-2 - ((~a1 | 0x839EE099) + (a1 | 0x7C611F66))) ^ 0xDBF733FB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D8B13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v5);
  return (*(a4 + 8 * (((v6 == 0) * (((v5 + 37) | 0xC6) + ((v5 + 37) | 0xC6) - 735 + 704)) ^ ((v5 + 37) | 0xC6))))();
}

uint64_t sub_1D4D8B170@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 3584) ^ 0xFFFFFFFFFFFFF1D0) + v3;
  v7 = *(v2 + v6 - 15);
  v8 = *(v2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((5420 * ((v3 & 0xFFFFFFE0) == 32)) ^ (a2 + v4 + 1520))))();
}

uint64_t sub_1D4D8B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 220) = v66 + (((~(v68 - 232) & 0x3A0B8DA8) - (~(v68 - 232) | 0x3A0B8DA9)) ^ 0x62625ECB) * v65 + 1624351959;
  *(v68 - 232) = v64;
  v70 = (*(v69 + 8 * (v66 ^ 0x2C42)))(v68 - 232);
  return (*(a64 + 8 * (((*(v67 + 32) == (v66 - 444) - 2190) * (v66 ^ 0x991)) ^ (v66 + 2495))))(v70);
}

uint64_t sub_1D4D8B398@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v1 + 16) ^ 0x95109AD8) + 1894256436) ^ ((*(v1 + 16) ^ 0xAA36D061) + 1338918283) ^ ((*(v1 + 16) ^ 0xC0D9B546) + 622928046)) - 1967799525;
  v5 = (a1 > 0x5B42D2CF) ^ (v4 < 0xA4BD2D30);
  v6 = a1 - 1531111122 + ((v2 - 1178890415) & 0x46447556) > v4;
  if (v5)
  {
    v6 = a1 > 0x5B42D2CF;
  }

  return (*(v3 + 8 * ((61 * !v6) ^ v2)))();
}

void sub_1D4D8B540(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB);
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v4 = 914963389 * ((1049250315 - (v8 | 0x3E8A4A0B) + (v8 | 0xC175B5F4)) ^ 0xED89048F);
  v5 = *(a1 + 36) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB) - v4;
  v6 = -1048309713 * (*(a1 + 8) ^ (1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB)));
  v14 = *(a1 + 24);
  v12 = v3;
  v9 = v2;
  v10 = v3;
  v13 = (v6 + 925357747) ^ v4;
  v11 = v5 + 997465963;
  v8[0] = v1 - v4 + 1631356711;
  v7 = *(&off_1F5090370 + v1 - 3097) - 8;
  (*&v7[8 * (v1 ^ 0x2880)])(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D8B6D8()
{
  v4 = *(v0 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x6C8];
      STACK[0x5F8] = *(v3 + 8 * (v2 - 2143));
      return (*(v3 + 8 * (((v7 == 0) * (((210 * ((v2 + 6909) ^ 0x2545)) ^ 0xFFFFF466) + 6 * ((v2 + 6909) ^ 0x24F0))) ^ (v2 + 6909))))();
    case 3:
      v6 = *(v0 + 40 * v1 + 16);
      return (*(v3 + 8 * ((250 * (((43 * (v2 ^ 0xA77u) + 0x1A3AF77BE7AB60B8) ^ v6) + ((2 * v6) & 0x3475EEF7CF56D5EELL) != 0x1A3AF77BE7AB6AF7)) ^ (v2 - 254))))();
    case 2:
      return (*(v3 + 8 * (((STACK[0x6C8] != 0) * (((v2 - 673267795) & 0x282137BD) - 435)) ^ (v2 + 3587))))();
    default:
      return (STACK[0x800])();
  }
}

uint64_t sub_1D4D8B8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1117 * (LODWORD(STACK[0x3E4]) ^ 0x1466);
  v5 = STACK[0x86C];
  STACK[0x4E8] = STACK[0x4E8] - 5269 + ((v4 + 1869) | 1u);
  return (*(a4 + 8 * ((6267 * (v5 == ((v4 - 1219358489) & 0x48ADFFFB) + 16250325)) ^ v4)))();
}

uint64_t sub_1D4D8B9DC@<X0>(uint64_t a1@<X8>)
{
  v6 = 1710126949 * ((v4 - 232) ^ 0x321B5B90);
  *(v4 - 204) = 101 * ((v4 + 24) ^ 0x90) + 22;
  *(v4 - 208) = v6 + 636535337 + (((v3 ^ 0x2F414975) - 792807797) ^ ((v3 ^ 0x5CA05111) - 1554010385) ^ (((((((8 * v1) ^ 0x10528) + 1917888382) & 0x8DAF5FFE) + 2015652673) ^ v3) - 2015658295));
  *(v4 - 200) = v6 + v1 - 3720;
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x550];
  v7 = (*(v5 + 8 * (v1 + 1095)))(v4 - 232);
  return (*(STACK[0x330] + 8 * ((26 * (*(v4 - 232) != v2)) ^ v1)))(v7);
}

void sub_1D4D8BB3C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x65C]) = v2;
  JUMPOUT(0x1D4C688F4);
}

void sub_1D4D8BCE8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 2048652491 * ((2 * (a1 & 0x54A06222) - a1 + 727686621) ^ 0x9AEE0AD8);
  v3[1] = v1 - 33731311 * (((v3 | 0xEFE0B918) - (v3 & 0xEFE0B918)) ^ 0xD616733B) + 1934669966;
  v2 = *(&off_1F5090370 + v1 - 6185) - 8;
  (*&v2[8 * (v1 ^ 0x3CD7)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4D8C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = 1317436891 * (((&a19 ^ 0x402030 | 0xF610124F) + (&a19 ^ 0x50101201 | 0x9EFEDB0)) ^ 0xE053AA46) + 8154;
  a19 = &a12;
  v23 = (*(v21 + 77096))(&a19);
  return (*(v21 + 8 * ((13233 * (a20 == ((v22 + 1199) ^ 0xBB1))) ^ 0x1102u)))(v23);
}

_BYTE *sub_1D4D8C1B8(_BYTE *result, unsigned int a2, unint64_t a3)
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

unint64_t sub_1D4D8C32C()
{
  result = qword_1EE08A6E0;
  if (!qword_1EE08A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6E0);
  }

  return result;
}

uint64_t sub_1D4D8C380(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4DCBBA8(a1, a2);
  }

  return a1;
}

uint64_t sub_1D4D8C458(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D4D8C470()
{

  return swift_deallocObject();
}

uint64_t sub_1D4D8C5E8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D4D8C62C()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_185();
    type metadata accessor for ContentManagementPlan.Link();
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; v1 != i; ++i)
    {
      OUTLINED_FUNCTION_110_0();
      *&v3[8 * i] = type metadata accessor for ContentManagementPlan.Link();
    }

    OUTLINED_FUNCTION_214();
    OUTLINED_FUNCTION_224();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_36();
  (*(v5 + 8))(v0 + ((*(v5 + 80) + 56) & ~*(v5 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4D8C778()
{

  return swift_deallocObject();
}

uint64_t sub_1D4D8C7B8()
{

  OUTLINED_FUNCTION_301();

  return swift_deallocObject();
}

uint64_t sub_1D4D8C7F4()
{
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_163_0();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_262();
  v2 = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_45(v2);
  v4 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_262();
  type metadata accessor for ContentManagementPlan.Link.Mode();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D4DA1130(255, &qword_1EE08A670);
    OUTLINED_FUNCTION_164_0();
    sub_1D4E0D210();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v5 = OUTLINED_FUNCTION_310();
      if (!__swift_getEnumTagSinglePayload(v5, v6, AssociatedTypeWitness))
      {
        OUTLINED_FUNCTION_36();
        v7 = OUTLINED_FUNCTION_265();
        v8(v7);
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_198();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CA28()
{

  OUTLINED_FUNCTION_300();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CAF4()
{

  OUTLINED_FUNCTION_305();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CB28()
{

  OUTLINED_FUNCTION_301();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CB5C()
{

  OUTLINED_FUNCTION_300();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CB90()
{

  OUTLINED_FUNCTION_115_0();

  return swift_deallocObject();
}

__n128 sub_1D4D8CBD4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4D8CC8C()
{
  sub_1D4DC51F0(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D4D8CCC8()
{

  return swift_deallocObject();
}

__n128 sub_1D4D8CD14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4D8CE68()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_25_2();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CEAC()
{

  OUTLINED_FUNCTION_305();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CEE0()
{

  OUTLINED_FUNCTION_25_2();

  return swift_deallocObject();
}

uint64_t sub_1D4D8CF70@<X0>(uint64_t *a1@<X8>)
{
  result = Configuration.playerID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4D8CFA0@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.stateRestorationSupported.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4D8CFF8@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.handoffSupported.getter();
  *a1 = result & 1;
  return result;
}

char *sub_1D4D8D1C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

uint64_t sub_1D4D8D1E8(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1, &qword_1EC7E43E8);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D4D8D274()
{

  return swift_deallocObject();
}

uint64_t sub_1D4D8D340(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v16 = 1;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  reply_port = mig_get_reply_port();
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  v15.msgh_bits = -2147478253;
  *&v15.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v15, 3, 0x38u, 0x40u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v15.msgh_id == 71)
  {
    v13 = 4294966988;
  }

  else if (v15.msgh_id == 1300)
  {
    if ((v15.msgh_bits & 0x80000000) != 0)
    {
      v13 = 4294966996;
      if (v16 == 1 && v15.msgh_size == 56 && !v15.msgh_remote_port && HIBYTE(v18) == 1)
      {
        v14 = v19;
        if (v19 == v21)
        {
          *a4 = v17;
          *a5 = v14;
          return 0;
        }
      }
    }

    else if (v15.msgh_size == 36)
    {
      v13 = 4294966996;
      if (HIDWORD(v17))
      {
        if (v15.msgh_remote_port)
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = HIDWORD(v17);
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }
  }

  else
  {
    v13 = 4294966995;
  }

  mach_msg_destroy(&v15);
  return v13;
}

uint64_t sub_1D4D8D530(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1E84C00F0 + (byte_1D4E31F80[byte_1D4E31C60[(-3 * (dword_1EC7E49E8 ^ 0x8A ^ dword_1EC7E49D8))] ^ 7] ^ (-3 * (dword_1EC7E49E8 ^ 0x8A ^ dword_1EC7E49D8))) + 11);
  v3 = *(v2 - 4);
  v4 = *(&off_1E84C00F0 + (byte_1D4E321D4[(byte_1D4E31E8C[(-3 * (v3 ^ dword_1EC7E49D8 ^ 0x8A)) - 12] ^ 0xEA) - 4] ^ (-3 * (v3 ^ dword_1EC7E49D8 ^ 0x8A))) - 188);
  v5 = v3 - &v12 + *v4;
  v6 = 1543604477 * (v5 - 0x45EA3381FA58338ALL);
  v7 = 1543604477 * (v5 ^ 0x45EA3381FA58338ALL);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -3 * (*(v2 - 4) ^ 0x8A ^ v7);
  v8 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 + dword_1EC7E49E8) ^ 0x8A)) ^ byte_1D4E321D0[byte_1D4E31E80[(-3 * ((dword_1EC7E49D8 + dword_1EC7E49E8) ^ 0x8A))] ^ 0xB0]) - 90) - 12;
  v9 = (*&v8[8 * (v7 ^ byte_1D4E31F80[byte_1D4E31C60[v7] ^ 7]) + 23824])(a2);
  v10 = *&v8[8 * (byte_1D4E31558[(byte_1D4E320D0[(-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))] ^ 0xE2) - 8] ^ (-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))) + 22664];

  return v10(v9);
}

uint64_t sub_1D4D8D7BC()
{
  v0 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 - dword_1EC7E49F0) ^ 0x8A)) ^ byte_1D4E31550[byte_1D4E320D0[(-3 * ((dword_1EC7E49D8 - dword_1EC7E49F0) ^ 0x8A))] ^ 0x78]) - 199);
  v1 = *(v0 - 4);
  v2 = *(&off_1E84C00F0 + (byte_1D4E31A60[byte_1D4E31750[(-3 * (v1 ^ dword_1EC7E49D8 ^ 0x8A))] ^ 6] ^ (-3 * (v1 ^ dword_1EC7E49D8 ^ 0x8A))) - 62);
  v3 = 1543604477 * ((*v2 + v1) ^ &v12 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v4 = *(v0 - 4);
  v5 = *(&off_1E84C00F0 + ((-3 * (dword_1EC7E49F0 ^ 0x8A ^ dword_1EC7E49D8)) ^ byte_1D4E31550[byte_1D4E320D0[(-3 * (dword_1EC7E49F0 ^ 0x8A ^ dword_1EC7E49D8))] ^ 0x80]) - 241) - 12;
  (*&v5[8 * (byte_1D4E31550[byte_1D4E320D0[(-3 * ((v3 - v4) ^ 0x8A))] ^ 0xEC] ^ (-3 * ((v3 - v4) ^ 0x8A))) + 22288])(**(&off_1E84C00F0 + (byte_1D4E31960[byte_1D4E31650[(-3 * (v4 ^ 0x8A ^ v3))] ^ 0x90] ^ (-3 * (v4 ^ 0x8A ^ v3))) - 90));
  v6 = -3 * (*(v0 - 4) ^ 0x8A ^ *v2);
  (*&v5[8 * (byte_1D4E31B68[(byte_1D4E31858[v6 - 8] ^ 0xF0) - 8] ^ v6) + 23496])(**(&off_1E84C00F0 + (v6 ^ byte_1D4E31A60[byte_1D4E31750[v6] ^ 0x3F]) - 118));
  v7 = *(v0 - 4);
  v8 = *v2;
  v9 = **(&off_1E84C00F0 + ((-3 * (v7 ^ 0x8A ^ v8)) ^ byte_1D4E31550[byte_1D4E320D0[(-3 * (v7 ^ 0x8A ^ v8))] ^ 0xA9]) - 98);
  v10 = *&v5[8 * ((-3 * ((v8 + v7) ^ 0x8A)) ^ byte_1D4E31960[byte_1D4E31650[(-3 * ((v8 + v7) ^ 0x8A))] ^ 0xC3]) + 23160];

  return v10(v9);
}

uint64_t sub_1D4D8DA94()
{
  swift_getAssociatedTypeWitness();
  result = sub_1D4E0CEE0();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4D8DB48()
{
  OUTLINED_FUNCTION_1();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D8DBE4;

  return sub_1D4D8DCE0();
}

uint64_t sub_1D4D8DBE4()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_1D4D8DCE0()
{
  OUTLINED_FUNCTION_1();
  v1[6] = v0;
  v1[7] = *v0;
  OUTLINED_FUNCTION_0();
  v1[8] = *(*(v2 + 88) + 8);
  OUTLINED_FUNCTION_0();
  v1[9] = *(v3 + 80);
  v1[10] = swift_getAssociatedTypeWitness();
  v4 = sub_1D4E0CEE0();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  sub_1D4E0C870();
  v1[14] = sub_1D4E0C860();
  sub_1D4D8E454();
  v6 = sub_1D4E0CD30();
  v1[15] = v6;
  v1[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D4D8DE48, v6, v5);
}

uint64_t sub_1D4D8DE48()
{
  v1 = v0[10];
  v8 = v0[8];
  v2 = v0[6];
  v3 = *(*v2 + 96);
  v0[17] = v3;
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v1);
  v7 = (*(v8 + 24) + **(v8 + 24));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1D4D8DF90;
  v5 = v0[13];

  return v7(v5);
}

uint64_t sub_1D4D8DF90()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1D4D8E2B4;
  }

  else
  {
    v5 = sub_1D4D8E0CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D4D8E0CC()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[6];

  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  swift_beginAccess();
  (*(v4 + 40))(v6 + v1, v2, v3);
  swift_endAccess();
  sub_1D4D8E4D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D4E0D980;
  sub_1D4E0CF50();
  v0[5] = v6;

  v8 = sub_1D4E0CB00();
  v10 = v9;

  MEMORY[0x1DA6E08D0](0x6C616974696E6920, 0xEF203A3A64657A69);
  v11 = sub_1D4E0D280();
  MEMORY[0x1DA6E08D0](v11);

  MEMORY[0x1DA6E08D0](0x746E756F63634120, 0xE800000000000000);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1D4E0D1C0();

  v12 = v0[1];
  v13 = v0[6];

  return v12(v13);
}

uint64_t sub_1D4D8E2B4()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4D8E328()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_0();
  swift_getAssociatedTypeWitness();
  v3 = sub_1D4E0CEE0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1D4D8E3D8()
{
  sub_1D4D8E328();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1D4D8E454()
{
  result = qword_1EC7E3660;
  if (!qword_1EC7E3660)
  {
    sub_1D4E0C870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3660);
  }

  return result;
}

void sub_1D4D8E4D4()
{
  if (!qword_1EC7E3668[0])
  {
    v0 = sub_1D4E0D150();
    if (!v1)
    {
      atomic_store(v0, qword_1EC7E3668);
    }
  }
}

uint64_t sub_1D4D8E564()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4D8E60C()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D8E6AC;

  return sub_1D4D8E7AC();
}

uint64_t sub_1D4D8E6AC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D4D8E7AC()
{
  v1[3] = v0;
  v1[4] = *v0;
  OUTLINED_FUNCTION_0();
  v3 = *(*(v2 + 88) + 8);
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v7 = swift_task_alloc();
  v1[7] = v7;
  v1[8] = sub_1D4E0C870();
  v1[9] = sub_1D4E0C860();
  v10 = (*(v3 + 24) + **(v3 + 24));
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_1D4D8E9B4;

  return v10(v7, v5, v3);
}

uint64_t sub_1D4D8E9B4()
{
  *(*v1 + 88) = v0;

  sub_1D4D8E454();
  v3 = sub_1D4E0CD30();
  if (v0)
  {
    v4 = sub_1D4D8EC68;
  }

  else
  {
    v4 = sub_1D4D8EB10;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D4D8EB10()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];

  (*(v2 + 32))(v4 + *(*v4 + 96), v1, v3);
  sub_1D4D8E4D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D4E0D980;
  v0[2] = v4;

  v10 = sub_1D4E0CB00();
  v11 = v6;
  MEMORY[0x1DA6E08D0](0x6C616974696E6920, 0xEC00000064657A69);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  sub_1D4E0D1C0();

  v7 = v0[1];
  v8 = v0[3];

  return v7(v8);
}

uint64_t sub_1D4D8EC68()
{

  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4D8ED1C()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1D4D8EDC0()
{
  sub_1D4D8ED1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4D8EE30()
{
  OUTLINED_FUNCTION_154();
  sub_1D4E0CD00();
  return v0;
}

uint64_t FacetBuilding.id.getter(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  OUTLINED_FUNCTION_10();
  v29 = v3;
  v30 = v2;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_48();
  v28 = v5 - v4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_78();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v8 = v7;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00]();
  v10 = &v23 - v9;
  v24 = type metadata accessor for ContentRegistration();
  OUTLINED_FUNCTION_10();
  v12 = v11;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00]();
  v14 = &v23 - v13;
  v15 = swift_checkMetadataState();
  OUTLINED_FUNCTION_10();
  v17 = v16;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00]();
  v19 = &v23 - v18;
  v31 = 0;
  v32 = 0xE000000000000000;
  v20 = v27;
  (*(v26 + 40))(v30);
  (*(AssociatedConformanceWitness + 24))(v15);
  (*(v17 + 8))(v19, v15);
  (*(v8 + 16))(v10, v14, AssociatedTypeWitness);
  (*(v12 + 8))(v14, v24);
  sub_1D4E0D160();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  MEMORY[0x1DA6E08D0](45, 0xE100000000000000);
  (*(v29 + 16))(v28, v20, v30);
  OUTLINED_FUNCTION_105();
  v21 = sub_1D4E0CB20();
  MEMORY[0x1DA6E08D0](v21);

  return v31;
}

uint64_t FacetBuilding.availability.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_142(v1, v2, v3);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_30();
  v0[6] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_101(AssociatedTypeWitness);
  v0[8] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_153();
  v5 = swift_checkMetadataState();
  OUTLINED_FUNCTION_141(v5);
  v0[10] = v6;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4D8F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v13 = OUTLINED_FUNCTION_85();
  v11(v13);
  v14 = OUTLINED_FUNCTION_58();
  v16 = v15(v14);
  v10[13] = v16;
  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_30();
  v17(v18);
  if (v16)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v10[14] = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_137(v19);
    OUTLINED_FUNCTION_32();

    return sub_1D4D8FCFC();
  }

  else
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_135();
    v10[16] = type metadata accessor for FacetBuildingPlan();
    (v11)(a9, a10);
    v23 = OUTLINED_FUNCTION_98();
    v24(v23);
    v25 = OUTLINED_FUNCTION_30();
    v17(v25);
    sub_1D4E0C870();
    v10[17] = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_0_0();
    sub_1D4DA1560(v26, v27);
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32();

    return MEMORY[0x1EEE6DFA0](v28, v29, v30);
  }
}

uint64_t sub_1D4D8F57C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D4D8F674()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4D8F6E8()
{
  OUTLINED_FUNCTION_31();

  *(v0 + 144) = FacetBuildingPlan.__allocating_init(system:)();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_118(v1);

  return FacetBuildingPlan.addFacet<A>(_:)();
}

uint64_t sub_1D4D8F798()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_5();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v3;
  v4[1] = sub_1D4D8F8C8;

  return FacetBuildingPlan.optimize()();
}

uint64_t sub_1D4D8F8C8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v3 + 176) = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_119(v10);

    return sub_1D4D8FCFC();
  }
}

uint64_t sub_1D4D8FA10()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D4D8FB08()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4D8FB7C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4D8FBF4()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4D8FC6C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4D8FCFC()
{
  OUTLINED_FUNCTION_1();
  v1[35] = v2;
  v1[36] = v0;
  v1[33] = v3;
  v1[34] = v4;
  v1[32] = v5;
  OUTLINED_FUNCTION_6(v5, &qword_1EC7E3700);
  v1[37] = v6;
  OUTLINED_FUNCTION_101(v6);
  v1[38] = OUTLINED_FUNCTION_117();
  sub_1D4E0C870();
  v1[39] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v7, v8);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[40] = v9;
  v1[41] = v10;
  v11 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4D8FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = *(v14 + 288);
  if (*(v15 + *(*v15 + 136)) == 1)
  {
    v16 = v14 + 240;
    v17 = *(*v15 + 112);
    OUTLINED_FUNCTION_100();
    v18 = *(v15 + v17);
    v19 = *(v18 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      a9 = v14 + 240;
      v48 = MEMORY[0x1E69E7CC0];
      sub_1D4E0CA10();
      sub_1D4DD831C(0, v19, 0);
      v20 = v48;
      v21 = v18 + 32;
      do
      {
        sub_1D4DA1A88(v21, v14 + 144);
        __swift_project_boxed_opaque_existential_1((v14 + 144), *(v14 + 168));
        sub_1D4E0CF60();
        __swift_destroy_boxed_opaque_existential_1Tm(v14 + 144);
        v22 = *(v14 + 208);
        v23 = *(v14 + 216);
        a10 = v20;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = OUTLINED_FUNCTION_76(v24);
          sub_1D4DD831C(v27, v25 + 1, 1);
        }

        *(v20 + 16) = v25 + 1;
        v26 = v20 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v21 += 40;
        --v19;
      }

      while (v19);

      v16 = v14 + 240;
    }

    sub_1D4E0CF60();
    v28 = *(v14 + 232);
    *(v14 + 240) = *(v14 + 224);
    *(v14 + 248) = v28;
    v29 = swift_task_alloc();
    *(v29 + 16) = v16;
    v30 = sub_1D4D9C008(sub_1D4DA1AE8, v29, v20);

    if (v30)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v14 + 336) = v31;
      *v31 = v32;
      v31[1] = sub_1D4D90190;
      OUTLINED_FUNCTION_32();

      return sub_1D4D94374(v33, v34, v35, v36);
    }

    sub_1D4D9C5A8();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_50();
    *(v14 + 361) = 5;
    sub_1D4E0C880();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_62();
    sub_1D4E0C890();
  }

  else
  {

    sub_1D4D9C5A8();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_50();
    *(v14 + 360) = 1;
    sub_1D4E0C880();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_62();
    sub_1D4E0C890();
  }

  v39 = sub_1D4E0C8C0();
  OUTLINED_FUNCTION_1_0(v39, &qword_1EC7E3768);
  sub_1D4D9E650();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_47();
  sub_1D4E0C8E0();
  swift_willThrow();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4D90190()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v8 + 344) = v7;
  *(v8 + 352) = v0;

  v9 = *(v2 + 328);
  v10 = *(v2 + 320);
  if (v0)
  {
    v11 = sub_1D4D90460;
  }

  else
  {
    v11 = sub_1D4D902C0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1D4D902C0()
{
  v21 = v0;
  v1 = v0[43];

  v0[17] = v1;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[43];
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D4DD82FC(0, v2, 0);
    v3 = v18;
    v5 = v4 + 32;
    do
    {
      sub_1D4DA190C(v5, (v0 + 2));
      v6 = v0[10];
      v7 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
      (*(v7 + 24))(&v19, v6, v7);
      OUTLINED_FUNCTION_16();
      v8 = v19;
      v9 = v20;
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = OUTLINED_FUNCTION_76(v10);
        v17 = v14;
        sub_1D4DD82FC(v13, v11 + 1, 1);
        v8 = v17;
      }

      *(v18 + 16) = v11 + 1;
      v12 = v18 + 24 * v11;
      *(v12 + 32) = v8;
      *(v12 + 48) = v9;
      v5 += 80;
      --v2;
    }

    while (v2);
  }

  sub_1D4D94FCC(v3, v0[32]);

  OUTLINED_FUNCTION_2();
  sub_1D4D9E598();

  OUTLINED_FUNCTION_8();

  return v15();
}

uint64_t sub_1D4D90460()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t FacetBuildingPlan.__allocating_init(system:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_109();
  FacetBuildingPlan.init(system:)(v1);
  return v0;
}

uint64_t FacetBuildingPlan.addFacet<A>(_:)()
{
  OUTLINED_FUNCTION_1();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = OUTLINED_FUNCTION_117();
  sub_1D4E0C870();
  v1[18] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v5, v6);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[19] = v7;
  v1[20] = v8;
  v9 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4D905E8()
{
  OUTLINED_FUNCTION_31();
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 96), *(v0 + 104));
  sub_1D4DA1130(0, &qword_1EC7E36F0);
  OUTLINED_FUNCTION_148();
  if (swift_dynamicCast())
  {
    sub_1D4D8C458((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_1D4D9076C;
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);

    return sub_1D4D93AFC(v3, v5, v7, v2, v6, v1);
  }

  else
  {

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1D4DA1814(v0 + 56, &qword_1EC7E36F8, &qword_1EC7E36F0, &protocol descriptor for FacetBuilding);

    OUTLINED_FUNCTION_37();

    return v9();
  }
}

uint64_t sub_1D4D9076C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_138();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  v4 = *(v0 + 160);
  v5 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D4D9087C, v5, v4);
}

uint64_t sub_1D4D9087C()
{
  OUTLINED_FUNCTION_1();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_37();

  return v1();
}

uint64_t FacetBuildingPlan.optimize()()
{
  OUTLINED_FUNCTION_1();
  v1[77] = v0;
  v2 = *v0;
  v1[78] = *v0;
  OUTLINED_FUNCTION_6(v3, &qword_1EC7E3700);
  v1[79] = v4;
  OUTLINED_FUNCTION_101(v4);
  v1[80] = OUTLINED_FUNCTION_117();
  v1[81] = *(v2 + 80);
  OUTLINED_FUNCTION_13();
  v1[82] = v5;
  v1[83] = OUTLINED_FUNCTION_117();
  sub_1D4E0C870();
  v1[84] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_0_0();
  sub_1D4DA1560(v6, v7);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[85] = v8;
  v1[86] = v9;
  v10 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4D90A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = *(v14 + 616);
  v16 = *v15;
  v17 = *(*v15 + 136);
  *(v14 + 696) = v17;
  if (*(v15 + v17))
  {

    sub_1D4D9C5A8();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_50();
    *(v14 + 808) = 6;
    sub_1D4E0C880();
    v18 = sub_1D4E0C8C0();
    OUTLINED_FUNCTION_1_0(v18, &qword_1EC7E3768);
    sub_1D4D9E650();
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
LABEL_3:
    OUTLINED_FUNCTION_32();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }

  v28 = *(v16 + 120);
  *(v14 + 704) = v28;
  OUTLINED_FUNCTION_100();
  v29 = sub_1D4E0CA10();
  sub_1D4D95354(v29);

  sub_1D4E0CC50();

  sub_1D4DA1130(0, &qword_1EC7E3710);
  *(v14 + 600) = type metadata accessor for FacetCollection();
  *(v14 + 712) = swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_47();
  *(v14 + 720) = sub_1D4E0D020();

  OUTLINED_FUNCTION_93();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v15 + v28);
  if (isUniquelyReferenced_nonNull_native)
  {
    v32 = *(v31 + 16);
    v31 = v15 + v28;
    sub_1D4D9C27C(0, v32);
  }

  else
  {
    OUTLINED_FUNCTION_145();
    *(v15 + v28) = sub_1D4D9C0B8(0, v33, &qword_1EC7E3A68, &qword_1EC7E3748, &protocol descriptor for FacetElement);
  }

  v34 = *(v14 + 616);
  swift_endAccess();
  sub_1D4E0CA10();
  sub_1D4E0CC20();
  OUTLINED_FUNCTION_59();

  *(v14 + 608) = v31;
  *(v14 + 728) = *(*v34 + 96);
  if (v31 == sub_1D4E0CCB0())
  {
    v35 = *(v14 + 616);

    OUTLINED_FUNCTION_87();
    v37 = *(v36 + 112);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_93();
    sub_1D4D9E300();
    sub_1D4E0C9E0();
    swift_endAccess();
    v38 = *(v35 + v37);
    *(v14 + 752) = v38;
    v39 = *(v38 + 16);
    *(v14 + 760) = v39;
    OUTLINED_FUNCTION_87();
    v41 = *(v40 + 128);
    *(v14 + 768) = v41;
    *(v14 + 776) = 0;
    result = sub_1D4E0CA10();
    if (v39)
    {
      if (*(v38 + 16))
      {
        sub_1D4DA1A88(v38 + 32, v14 + 224);
        OUTLINED_FUNCTION_124();
        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        *(v14 + 784) = v42;
        *v42 = v43;
        OUTLINED_FUNCTION_7(v42);
        OUTLINED_FUNCTION_32();

        return sub_1D4D94374(v44, v45, v46, v47);
      }

LABEL_41:
      __break(1u);
      return result;
    }

    v61 = *(v14 + 616);

    OUTLINED_FUNCTION_95();
    v62 = *(v41 + v61);
    v63 = sub_1D4E0CA10();
    sub_1D4D95354(v63);
    OUTLINED_FUNCTION_134();
    sub_1D4E0CC50();
    OUTLINED_FUNCTION_109();

    v64 = sub_1D4D95480(v62);

    OUTLINED_FUNCTION_93();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_113();
    if (v65)
    {
      OUTLINED_FUNCTION_131();
    }

    else
    {
      OUTLINED_FUNCTION_145();
      *v41 = sub_1D4D9C0B8(0, v66, &qword_1EC7E3A48, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
    }

    swift_endAccess();
    v67 = *(v64 + 16);
    if (!v67)
    {
LABEL_35:

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_3();
      sub_1D4D94288();
      swift_endAccess();
      OUTLINED_FUNCTION_129();

      OUTLINED_FUNCTION_8();
      goto LABEL_3;
    }

    v68 = MEMORY[0x1E69E7CC0];
    a10 = v64;
    v69 = v64 + 32;
    while (1)
    {
      sub_1D4DA1A88(v69, v14 + 344);
      v70 = OUTLINED_FUNCTION_42();
      v71(v70);
      v72 = OUTLINED_FUNCTION_149();
      sub_1D4DA1130(v72, &qword_1EC7E3760);
      v73 = OUTLINED_FUNCTION_96();

      __swift_destroy_boxed_opaque_existential_1Tm(v14 + 344);
      OUTLINED_FUNCTION_112();
      if (v74)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v61 > *(v68 + 24) >> 1)
      {
        OUTLINED_FUNCTION_144();
        sub_1D4D9C860();
        v68 = v75;
      }

      if (*(v73 + 16))
      {
        OUTLINED_FUNCTION_70();
        if (v76 != v74)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_53();

        if (v62)
        {
          v77 = *(v68 + 16);
          v74 = __OFADD__(v77, v62);
          v78 = v77 + v62;
          if (v74)
          {
            goto LABEL_39;
          }

          *(v68 + 16) = v78;
        }
      }

      else
      {

        if (v62)
        {
          goto LABEL_37;
        }
      }

      v69 += 40;
      if (!--v67)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_1D4E0CF80();
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_30();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_126();
  sub_1D4E0CC60();
  if ((v34 & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_89();
  sub_1D4E0CCF0();
  sub_1D4D8C458((v14 + 144), v14 + 184);
  v49 = OUTLINED_FUNCTION_139();
  v50(v49);
  __swift_mutable_project_boxed_opaque_existential_1(v14 + 184, *(v14 + 208));
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_15();
  v79 = v51 + *v51;
  v52 = swift_task_alloc();
  *(v14 + 736) = v52;
  *v52 = v14;
  OUTLINED_FUNCTION_41(v52);
  OUTLINED_FUNCTION_32();

  return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, v79, a11, a12, a13, a14);
}

uint64_t sub_1D4D91178()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 744) = v0;

  v7 = OUTLINED_FUNCTION_155();
  v8(v7);
  if (v0)
  {

    OUTLINED_FUNCTION_152();
    v11 = sub_1D4D91F40;
  }

  else
  {
    OUTLINED_FUNCTION_152();
    v11 = sub_1D4D912A0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1D4D912A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = *(v14 + 704);
  v16 = *(v14 + 616);
  v17 = *(v14 + 208);
  v90 = *(v14 + 216);
  v18 = __swift_project_boxed_opaque_existential_1((v14 + 184), v17);
  OUTLINED_FUNCTION_13();
  v20 = v19;
  v21 = swift_task_alloc();
  v89 = *(v20 + 16);
  v89(v21, v18, v17);
  OUTLINED_FUNCTION_93();
  v22 = *(v16 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + v15) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      v86 = *(v14 + 704);
      v87 = *(v14 + 616);
      OUTLINED_FUNCTION_76(v24);
      OUTLINED_FUNCTION_11();
      sub_1D4D9C860();
      v22 = v88;
      *(v87 + v86) = v88;
    }

    v26 = *(v14 + 704);
    v27 = *(v14 + 616);
    v28 = swift_task_alloc();
    v89(v28, v21, v17);
    sub_1D4D9E25C(v25, v28, (v27 + v26), v17, v90, sub_1D4DA1B44);

    v20 += 8;
    v29 = OUTLINED_FUNCTION_90();
    v30(v29);
    *(v27 + v26) = v22;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 184);
    v31 = *(v14 + 608);
    if (v31 != sub_1D4E0CCB0())
    {
      break;
    }

    v32 = *(v14 + 616);

    OUTLINED_FUNCTION_87();
    v34 = *(v33 + 112);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_93();
    sub_1D4D9E300();
    sub_1D4E0C9E0();
    swift_endAccess();
    v35 = *(v32 + v34);
    *(v14 + 752) = v35;
    v36 = *(v35 + 16);
    *(v14 + 760) = v36;
    OUTLINED_FUNCTION_87();
    v38 = *(v37 + 128);
    *(v14 + 768) = v38;
    *(v14 + 776) = 0;
    result = sub_1D4E0CA10();
    if (v36)
    {
      if (*(v35 + 16))
      {
        sub_1D4DA1A88(v35 + 32, v14 + 224);
        OUTLINED_FUNCTION_124();
        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        *(v14 + 784) = v40;
        *v40 = v41;
        OUTLINED_FUNCTION_7(v40);
        OUTLINED_FUNCTION_32();

        return sub_1D4D94374(v42, v43, v44, v45);
      }

LABEL_39:
      __break(1u);
      return result;
    }

    v59 = *(v14 + 616);

    OUTLINED_FUNCTION_95();
    v17 = *(v38 + v59);
    v60 = sub_1D4E0CA10();
    sub_1D4D95354(v60);
    OUTLINED_FUNCTION_134();
    sub_1D4E0CC50();
    OUTLINED_FUNCTION_109();

    v61 = sub_1D4D95480(v17);

    OUTLINED_FUNCTION_93();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_113();
    if (v62)
    {
      OUTLINED_FUNCTION_131();
    }

    else
    {
      OUTLINED_FUNCTION_145();
      *v38 = sub_1D4D9C0B8(0, v63, &qword_1EC7E3A48, &qword_1EC7E3760, &protocol descriptor for FacetElementRequest);
    }

    swift_endAccess();
    v64 = *(v61 + 16);
    if (!v64)
    {
LABEL_30:

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_3();
      sub_1D4D94288();
      swift_endAccess();
      OUTLINED_FUNCTION_129();

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_32();

      return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, v89, v90, a12, a13, a14);
    }

    v21 = MEMORY[0x1E69E7CC0];
    v90 = v61;
    v65 = v61 + 32;
    while (1)
    {
      sub_1D4DA1A88(v65, v14 + 344);
      v66 = OUTLINED_FUNCTION_42();
      v67(v66);
      v68 = OUTLINED_FUNCTION_149();
      sub_1D4DA1130(v68, &qword_1EC7E3760);
      v69 = OUTLINED_FUNCTION_96();

      __swift_destroy_boxed_opaque_existential_1Tm(v14 + 344);
      OUTLINED_FUNCTION_112();
      if (v70)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v59 > *(v21 + 24) >> 1)
      {
        OUTLINED_FUNCTION_144();
        sub_1D4D9C860();
        v21 = v71;
      }

      if (*(v69 + 16))
      {
        OUTLINED_FUNCTION_70();
        if (v72 != v70)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_53();

        if (v17)
        {
          v73 = *(v21 + 16);
          v70 = __OFADD__(v73, v17);
          v74 = v73 + v17;
          if (v70)
          {
            goto LABEL_36;
          }

          *(v21 + 16) = v74;
        }
      }

      else
      {

        if (v17)
        {
          goto LABEL_34;
        }
      }

      v65 += 40;
      if (!--v64)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v83 = *(v14 + 704);
    v84 = *(v14 + 616);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_115();
    sub_1D4D9C860();
    v22 = v85;
    *(v84 + v83) = v85;
  }

  OUTLINED_FUNCTION_30();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_126();
  sub_1D4E0CC60();
  if ((v22 & 1) == 0)
  {
    result = sub_1D4E0CF80();
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_89();
  sub_1D4E0CCF0();
  sub_1D4D8C458((v14 + 144), v14 + 184);
  v47 = OUTLINED_FUNCTION_139();
  v48(v47);
  __swift_mutable_project_boxed_opaque_existential_1(v14 + 184, *(v14 + 208));
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_18();
  v91 = v49 + *v49;
  v50 = swift_task_alloc();
  *(v14 + 736) = v50;
  *v50 = v14;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_32();

  return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, v89, v91, a12, a13, a14);
}