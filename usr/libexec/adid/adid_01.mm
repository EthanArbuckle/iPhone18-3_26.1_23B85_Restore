uint64_t sub_10003CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x12D8];
  v9 = STACK[0x12D8] + 9088;
  STACK[0x3270] = *(v7 + 8 * STACK[0x12D8]);
  return (*(v7 + 8 * ((v9 ^ 0x2F18) + v8)))(a1, a2, 0xF03E4241B0D5EBFELL, a4, a5, a6, a7, 0x1902058DF6C30B35);
}

uint64_t sub_10003CE34()
{
  v2 = STACK[0x1700];
  v3 = 1967 * (STACK[0x1700] ^ 0x187B);
  v4 = STACK[0x1700] - 1977;
  v5 = STACK[0x1FE8];
  v6 = STACK[0x2EE8];
  v7 = STACK[0x3CE0];
  v8 = v0 - 240;
  v9 = 929149733 * ((((v0 - 240) | 0xA2BFDC78) - (v0 - 240) + ((v0 - 240) & 0x5D402380)) ^ 0xF380B715);
  *v8 = (STACK[0x1700] + 315) ^ v9;
  *(v8 + 4) = 2011392483 - v9;
  *(v8 + 20) = v9 + 1183132556;
  *(v8 + 8) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v6;
  v10 = (*(v1 + 8 * (v2 ^ 0x31D8)))(v0 - 240);
  v11 = STACK[0x1708];
  LODWORD(v8) = *(v0 - 224);
  LODWORD(STACK[0x3530]) = v8;
  return (*(v11 + 8 * (((v8 == 68588956) * (STACK[0x1148] + v3 + 3898)) ^ v4)))(v10);
}

uint64_t sub_10003CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x1148];
  v9 = STACK[0x1148] ^ 0x24FE;
  STACK[0x3270] = *(v7 + 8 * STACK[0x1148]);
  return (*(v7 + 8 * (v8 - 6430 + v9)))(a1, a2, 0xF03E4241B0D5EBFELL, a4, a5, a6, a7, 0x1902058DF6C30B35);
}

uint64_t sub_10003D03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = (v7 - 3071) | 0xC00;
  v9 = v6 + 1388397650;
  LODWORD(STACK[0x1600]) = v8;
  LODWORD(STACK[0x15B0]) = v9;
  v11 = v9 != v8 - 7221 && (v5 - a5) > 0xF;
  return (*(8 * (v11 ^ v7)))(a1, a2, a3, a4, 0x86F7C88A68AC3C1FLL, 0x9C4BC477DA9FEA72, 0x130A509321622E78);
}

uint64_t sub_10003D104@<X0>(unint64_t a1@<X4>, unint64_t a2@<X5>, unint64_t a3@<X6>, unint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v19 = (v6 - v17 + v16);
  v20 = (v19 - 1);
  v21 = (v19 - 6);
  v22 = (v19 - 7);
  v23 = v5 + v19;
  v24.i64[0] = v5 + v19;
  v24.i64[1] = v5 + v20;
  v25 = a5 + v19;
  v26.i64[0] = a5 + v19;
  v26.i64[1] = a5 + v20;
  v27.i64[0] = v5 + v21;
  v27.i64[1] = v5 + v22;
  v28.i64[0] = a5 + v21;
  v28.i64[1] = a5 + v22;
  v29 = vandq_s8(v24, *&STACK[0x1940]);
  v30 = vandq_s8(v27, *&STACK[0x1940]);
  v31 = *&STACK[0x1940];
  v32 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v34 = vdupq_n_s64(0x33F36A2A44D9E26uLL);
  v35 = vdupq_n_s64(0x709F30FBDB01944uLL);
  *&STACK[0x17B0] = v35;
  v36 = vsubq_s64(v32, vandq_s8(vaddq_s64(vaddq_s64(v32, v32), v34), v35));
  v37 = vsubq_s64(v33, vandq_s8(vaddq_s64(vaddq_s64(v33, v33), v34), v35));
  v38 = vdupq_n_s64(0xA92494D930FEDBB5);
  *&STACK[0x1780] = v38;
  v39 = vaddq_s64(v37, v38);
  v40 = vaddq_s64(v36, v38);
  v41 = vdupq_n_s64(0x759EDACCAE776DBEuLL);
  v42 = vdupq_n_s64(0x796200463F411523uLL);
  v43 = veorq_s8(v40, v41);
  v44 = veorq_s8(v39, v41);
  v45 = veorq_s8(v39, v42);
  v46 = veorq_s8(v40, v42);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v45);
  v49 = vdupq_n_s64(v11);
  *&STACK[0x17E0] = v49;
  v50 = vorrq_s8(v48, v49);
  v51 = vorrq_s8(v47, v49);
  v52 = vdupq_n_s64(0x16061EC7B458F5uLL);
  *&STACK[0x1860] = v52;
  v53 = vaddq_s64(vsubq_s64(v50, vorrq_s8(v48, v52)), v52);
  v54 = vaddq_s64(vsubq_s64(v51, vorrq_s8(v47, v52)), v52);
  v55 = vdupq_n_s64(v15);
  *&STACK[0x1850] = v55;
  v56 = veorq_s8(v54, v55);
  v57 = veorq_s8(v53, v55);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v60 = vdupq_n_s64(0x83272434AA805759);
  *&STACK[0x17D0] = v60;
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58), v60);
  v62 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59), v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v64 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v65 = veorq_s8(v61, v63);
  v66 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v67 = vdupq_n_s64(0xB0556FBA17C811E5);
  *&STACK[0x1840] = v67;
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v65), v67);
  v69 = veorq_s8(vaddq_s64(v66, v64), v67);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = vdupq_n_s64(0x9523A6DF9A387CDELL);
  *&STACK[0x17A0] = v75;
  v76 = vorrq_s8(vaddq_s64(v73, v73), v75);
  v77 = vorrq_s8(vaddq_s64(v74, v74), v75);
  v78 = vdupq_n_s64(0xB56E2C9032E3C191);
  *&STACK[0x1790] = v78;
  v79 = vaddq_s64(vsubq_s64(v76, v73), v78);
  v80 = vaddq_s64(vsubq_s64(v77, v74), v78);
  v81 = vdupq_n_s64(v13);
  *&STACK[0x1830] = v81;
  v82 = veorq_s8(v80, v81);
  v83 = veorq_s8(v79, v81);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vdupq_n_s64(0x3582AE70DBD8C26CuLL);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85), v87);
  v89 = veorq_s8(vaddq_s64(v86, v84), v87);
  v90 = v87;
  v91 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v92 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = veorq_s8(v89, v91);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = vaddq_s64(v94, v92);
  v97 = vdupq_n_s64(0xFD26CA3A4C00D760);
  *&STACK[0x18F0] = v97;
  v98 = vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v97), v96);
  v99 = vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), v97), v95);
  v100 = vdupq_n_s64(v7);
  *&STACK[0x1770] = v100;
  v101 = vdupq_n_s64(a1);
  *&STACK[0x1820] = v101;
  v102 = veorq_s8(vaddq_s64(v98, v100), v101);
  v103 = veorq_s8(vaddq_s64(v99, v100), v101);
  v104 = vdupq_n_s64(v14);
  v105 = vdupq_n_s64(a3);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL)));
  v107 = vandq_s8(v28, v31);
  v108 = vandq_s8(v26, v31);
  v109 = v31;
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL)));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), *&STACK[0x1870]);
  v112 = *&STACK[0x1620];
  v113 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v114 = vandq_s8(v111, *&STACK[0x1620]);
  *&STACK[0x1750] = v104;
  v115 = *&STACK[0x15D0];
  v116 = veorq_s8(v114, *&STACK[0x15D0]);
  v117 = veorq_s8(v113, *&STACK[0x15D0]);
  v118 = *&STACK[0x1610];
  v119 = veorq_s8(v113, *&STACK[0x1610]);
  v120 = veorq_s8(v114, *&STACK[0x1610]);
  v121 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v120);
  v123 = vaddq_s64(v121, v119);
  v124 = vsubq_s64(vorrq_s8(v106, v104), vorrq_s8(v106, v105));
  v125 = vdupq_n_s64(a2);
  *&STACK[0x1760] = v125;
  v126 = vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v125), v123);
  v127 = vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v125), v122);
  v128 = vdupq_n_s64(v8);
  *&STACK[0x18B0] = v128;
  v129 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v131 = vdupq_n_s64(v9);
  v132 = veorq_s8(vaddq_s64(v127, v128), v131);
  *&STACK[0x1880] = v131;
  v133 = veorq_s8(v132, v130);
  v134 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v135 = vsubq_s64(vorrq_s8(v110, v104), vorrq_s8(v110, v105));
  v136 = veorq_s8(vaddq_s64(v126, v128), v131);
  v137 = veorq_s8(v136, v129);
  v138 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v139 = vaddq_s64(v134, v133);
  v140 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v141 = v18;
  v142 = veorq_s8(vaddq_s64(v138, v137), v18);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v144 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v145 = veorq_s8(v139, v18);
  v146 = veorq_s8(v145, v140);
  v147 = vaddq_s64(v144, v143);
  v148 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v150 = *&STACK[0x16F0];
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), *&STACK[0x16F0]);
  v152 = veorq_s8(v151, v149);
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = veorq_s8(v147, *&STACK[0x16F0]);
  v155 = veorq_s8(v154, v148);
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = vaddq_s64(v153, v152);
  v158 = vdupq_n_s64(v10);
  v159 = vaddq_s64(v156, v155);
  *&STACK[0x1710] = v158;
  v160 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v161 = vdupq_n_s64(v12);
  v162 = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v163 = vaddq_s64(vsubq_s64(v159, vandq_s8(vaddq_s64(v159, v159), v158)), v161);
  v164 = v161;
  *&STACK[0x17F0] = v161;
  v165 = vdupq_n_s64(a4);
  v166 = veorq_s8(v163, v165);
  *&STACK[0x1890] = v165;
  v167 = veorq_s8(v166, v162);
  *&STACK[0x1800] = v105;
  v168 = vdupq_n_s64(0x68E9DCA3CBC3AD09uLL);
  *&STACK[0x1810] = v168;
  v169 = vdupq_n_s64(0x38uLL);
  v170 = vshlq_u64(veorq_s8(vaddq_s64(v124, v105), v168), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v169)));
  v171 = veorq_s8(vaddq_s64(v135, v105), v168);
  v172 = v169;
  v173 = vshlq_u64(v171, vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v169)));
  v174 = veorq_s8(vaddq_s64(vsubq_s64(v157, vandq_s8(vaddq_s64(v157, v157), v158)), v164), v165);
  v175 = veorq_s8(v174, v160);
  v176 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v178 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v180 = *&STACK[0x1660];
  v181 = veorq_s8(vaddq_s64(v176, v175), *&STACK[0x1660]);
  v182 = veorq_s8(v181, v179);
  v183 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v184 = veorq_s8(v177, *&STACK[0x1660]);
  v185 = veorq_s8(v184, v178);
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = vaddq_s64(v183, v182);
  v188 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v190 = *&STACK[0x1650];
  v191 = veorq_s8(vaddq_s64(v186, v185), *&STACK[0x1650]);
  v192 = veorq_s8(v187, *&STACK[0x1650]);
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), veorq_s8(v192, v188)), *&STACK[0x16C0]);
  v194 = *&STACK[0x16C0];
  *&STACK[0x18A0] = v172;
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, v189)), v194);
  *&STACK[0x1900] = veorq_s8(v170, vshlq_u64(v195, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v172))));
  *&STACK[0x1910] = v195;
  *&STACK[0x1920] = v170;
  *&STACK[0x1930] = veorq_s8(v173, vshlq_u64(v193, vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v172))));
  v196 = STACK[0x1600];
  v197 = v6 - v17 + ((LODWORD(STACK[0x1600]) - 951) ^ (v16 - 2078));
  v198 = (v19 - 5);
  v199.i64[0] = v5 + v197;
  v199.i64[1] = v5 + v198;
  v200 = v109;
  v201 = vandq_s8(v199, v109);
  v202 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v203 = *&STACK[0x17B0];
  v204 = *&STACK[0x1780];
  v205 = vaddq_s64(vsubq_s64(v202, vandq_s8(vaddq_s64(vaddq_s64(v202, v202), v34), *&STACK[0x17B0])), *&STACK[0x1780]);
  v206 = veorq_s8(v205, v41);
  v207 = veorq_s8(v205, v42);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207);
  v209 = *&STACK[0x17E0];
  v210 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v211 = *&STACK[0x1850];
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v208, *&STACK[0x17E0]), vorrq_s8(v208, *&STACK[0x1860])), *&STACK[0x1860]), *&STACK[0x1850]);
  v213 = veorq_s8(v212, v210);
  v214 = *&STACK[0x17D0];
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), *&STACK[0x17D0]);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v217 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v219 = *&STACK[0x1840];
  v220 = veorq_s8(vaddq_s64(v217, v216), *&STACK[0x1840]);
  v221 = veorq_s8(v220, v218);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = *&STACK[0x17A0];
  v224 = vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL);
  v225 = *&STACK[0x1790];
  v226 = *&STACK[0x1830];
  v227 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v222, v222), *&STACK[0x17A0]), v222), *&STACK[0x1790]), *&STACK[0x1830]);
  v228 = veorq_s8(v227, v224);
  v229 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v230 = vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL);
  v231 = v90;
  v232 = veorq_s8(vaddq_s64(v229, v228), v90);
  v233 = veorq_s8(v232, v230);
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233);
  v235 = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v233.i64[0] = a5 + v197;
  v233.i64[1] = a5 + v198;
  v236 = vandq_s8(v233, v200);
  v237 = *&STACK[0x1870];
  v238 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), *&STACK[0x1870]), v112);
  v239 = v115;
  v240 = veorq_s8(v238, v115);
  v241 = veorq_s8(v238, v118);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241);
  v243 = *&STACK[0x1760];
  v244 = vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL);
  v245 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v242, v242), *&STACK[0x1760]), v242), *&STACK[0x18B0]), *&STACK[0x1880]);
  v246 = veorq_s8(v245, v244);
  v247 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v246), v141);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v249 = *&STACK[0x18F0];
  v250 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v251 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248), v150);
  v252 = veorq_s8(v251, v250);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252);
  v254 = vsubq_s64(v253, vandq_s8(vaddq_s64(v253, v253), v158));
  v255 = vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL);
  v256 = *&STACK[0x1770];
  v257 = *&STACK[0x1820];
  v258 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v234, v234), *&STACK[0x18F0]), v234), *&STACK[0x1770]), *&STACK[0x1820]);
  v259 = veorq_s8(v258, v235);
  v260 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v261 = veorq_s8(vaddq_s64(v254, *&STACK[0x17F0]), *&STACK[0x1890]);
  v262 = veorq_s8(v261, v255);
  v263 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v264 = vaddq_s64(v260, v259);
  v265 = vaddq_s64(v263, v262);
  v266 = vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL);
  v267 = veorq_s8(v265, v180);
  v268 = veorq_s8(v267, v266);
  v269 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v268), v190);
  v270 = *&STACK[0x1750];
  v271 = *&STACK[0x1810];
  v272 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v264, *&STACK[0x1750]), vorrq_s8(v264, *&STACK[0x1800])), *&STACK[0x1800]), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(v199, 3uLL), *&STACK[0x18A0])));
  v273 = (v19 - 2);
  v274 = (v19 - 3);
  v235.i64[0] = v5 + v273;
  v235.i64[1] = v5 + v274;
  v275 = *&STACK[0x1910];
  v276 = *&STACK[0x1930];
  v277 = veorq_s8(v272, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v233, 3uLL), *&STACK[0x18A0]))));
  *&STACK[0x1900] = *&STACK[0x1900];
  *&STACK[0x1910] = v275;
  *&STACK[0x1920] = v277;
  *&STACK[0x1930] = v276;
  v278 = vandq_s8(v235, *&STACK[0x1940]);
  v279 = vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL);
  v280 = vaddq_s64(vsubq_s64(v279, vandq_s8(vaddq_s64(vaddq_s64(v279, v279), v34), v203)), v204);
  v281 = veorq_s8(v280, v41);
  v282 = veorq_s8(v280, v42);
  v283 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), v282);
  v284 = *&STACK[0x1860];
  v285 = vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL);
  v286 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v283, v209), vorrq_s8(v283, *&STACK[0x1860])), *&STACK[0x1860]), v211);
  v287 = veorq_s8(v286, v285);
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287), v214);
  v289 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v290 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v289), v219);
  v291 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL));
  v292 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v291);
  v293 = v225;
  v294 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v292, v292), v223), v292), v225), v226);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL));
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), v231);
  v297 = v231;
  v298 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v299 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), v298);
  v300 = v256;
  v301 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v299, v299), v249), v299), v256), v257);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v303 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v233.i64[0] = a5 + v273;
  v233.i64[1] = a5 + v274;
  v304 = vandq_s8(v233, *&STACK[0x1940]);
  v305 = *&STACK[0x1940];
  v306 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v237), v112);
  v307 = veorq_s8(v306, v239);
  v308 = v239;
  v309 = veorq_s8(v306, v118);
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v309);
  v311 = v243;
  v312 = vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL);
  v313 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v310, v310), v243), v310), *&STACK[0x18B0]), *&STACK[0x1880]);
  v314 = veorq_s8(v313, v312);
  v315 = vaddq_s64(v303, v302);
  v316 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v313, 0x38uLL), v313, 8uLL), v314), *&STACK[0x16B0]);
  v317 = veorq_s8(v316, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL));
  v318 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL), v317), *&STACK[0x16F0]);
  v319 = veorq_s8(v318, vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL));
  v320 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319);
  v321 = *&STACK[0x1710];
  v322 = *&STACK[0x1800];
  v323 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v315, v270), vorrq_s8(v315, *&STACK[0x1800])), *&STACK[0x1800]), v271), vnegq_s64(vandq_s8(vshlq_n_s64(v235, 3uLL), *&STACK[0x18A0])));
  v324 = *&STACK[0x17F0];
  v325 = veorq_s8(vaddq_s64(vsubq_s64(v320, vandq_s8(vaddq_s64(v320, v320), *&STACK[0x1710])), *&STACK[0x17F0]), *&STACK[0x1890]);
  v326 = veorq_s8(v325, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v327 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v326), *&STACK[0x1660]);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL));
  v329 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328), *&STACK[0x1650]);
  v330 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v233, 3uLL), *&STACK[0x18A0])));
  v331 = *&STACK[0x1920];
  v332 = *&STACK[0x1930];
  *&STACK[0x1900] = *&STACK[0x1900];
  *&STACK[0x1910] = veorq_s8(v323, v330);
  *&STACK[0x1920] = v331;
  *&STACK[0x1930] = v332;
  v333 = (v19 - 8);
  v334 = (v19 - 9);
  v330.i64[0] = v5 + v333;
  v330.i64[1] = v5 + v334;
  *&STACK[0x1740] = v330;
  v335 = v305;
  v336 = vandq_s8(v330, v305);
  v337 = vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL);
  v338 = (v19 - 10);
  v339 = (v19 - 11);
  v340 = (v19 - 12);
  v341 = (v19 - 13);
  v336.i64[0] = v5 + v338;
  v336.i64[1] = v5 + v339;
  *&STACK[0x1730] = v336;
  v312.i64[0] = v5 + v340;
  v312.i64[1] = v5 + v341;
  v342 = vandq_s8(v336, v305);
  v343 = vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL);
  v344 = vandq_s8(v312, v305);
  v345 = vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL);
  v346 = (v19 - 14);
  v347 = (v19 - 15);
  v344.i64[0] = v5 + v346;
  v344.i64[1] = v5 + v347;
  *&STACK[0x1720] = v344;
  v348 = vandq_s8(v344, v305);
  v349 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v350 = vaddq_s64(vsubq_s64(v349, vandq_s8(vaddq_s64(vaddq_s64(v349, v349), v34), v203)), v204);
  v351 = vaddq_s64(vsubq_s64(v345, vandq_s8(vaddq_s64(vaddq_s64(v345, v345), v34), v203)), v204);
  v352 = vaddq_s64(vsubq_s64(v343, vandq_s8(vaddq_s64(vaddq_s64(v343, v343), v34), v203)), v204);
  v353 = vaddq_s64(vsubq_s64(v337, vandq_s8(vaddq_s64(vaddq_s64(v337, v337), v34), v203)), v204);
  v354 = veorq_s8(v353, v41);
  v355 = veorq_s8(v352, v41);
  v356 = veorq_s8(v351, v41);
  v357 = veorq_s8(v350, v41);
  v358 = veorq_s8(v350, v42);
  v359 = veorq_s8(v351, v42);
  v360 = veorq_s8(v352, v42);
  v361 = veorq_s8(v353, v42);
  v362 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v361);
  v363 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL), v360);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), v359);
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL), v358);
  v366 = vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL);
  v367 = vaddq_s64(vsubq_s64(vorrq_s8(v365, v209), vorrq_s8(v365, v284)), v284);
  v368 = vaddq_s64(vsubq_s64(vorrq_s8(v364, v209), vorrq_s8(v364, v284)), v284);
  v369 = vaddq_s64(vsubq_s64(vorrq_s8(v363, v209), vorrq_s8(v363, v284)), v284);
  v370 = vaddq_s64(vsubq_s64(vorrq_s8(v362, v209), vorrq_s8(v362, v284)), v284);
  v371 = vsraq_n_u64(vshlq_n_s64(v360, 3uLL), v360, 0x3DuLL);
  v372 = veorq_s8(v370, *&STACK[0x1850]);
  v373 = veorq_s8(v369, *&STACK[0x1850]);
  v374 = veorq_s8(v368, *&STACK[0x1850]);
  v375 = veorq_s8(v367, *&STACK[0x1850]);
  v376 = vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL);
  v377 = veorq_s8(v375, vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL));
  v378 = vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL);
  v379 = veorq_s8(v374, v376);
  v380 = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v381 = veorq_s8(v373, v371);
  v382 = vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL);
  v383 = veorq_s8(v372, v366);
  v384 = vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL);
  v385 = vaddq_s64(v378, v377);
  v386 = vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL);
  v387 = vaddq_s64(v380, v379);
  v388 = vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL);
  v389 = vaddq_s64(v382, v381);
  v390 = vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL);
  v391 = veorq_s8(v385, v214);
  v392 = veorq_s8(v387, v214);
  v393 = veorq_s8(v389, v214);
  v394 = veorq_s8(vaddq_s64(v384, v383), v214);
  v395 = veorq_s8(v394, vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL));
  v396 = vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL);
  v397 = veorq_s8(v393, v390);
  v398 = vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL);
  v399 = veorq_s8(v392, v388);
  v400 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v401 = veorq_s8(v391, v386);
  v402 = vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL);
  v403 = vaddq_s64(v396, v395);
  v404 = vsraq_n_u64(vshlq_n_s64(v395, 3uLL), v395, 0x3DuLL);
  v405 = vaddq_s64(v398, v397);
  v406 = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v407 = vaddq_s64(v400, v399);
  v408 = vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL);
  v409 = vaddq_s64(v402, v401);
  v410 = vsraq_n_u64(vshlq_n_s64(v401, 3uLL), v401, 0x3DuLL);
  v411 = veorq_s8(v403, *&STACK[0x1840]);
  v412 = veorq_s8(v405, *&STACK[0x1840]);
  v413 = veorq_s8(v407, *&STACK[0x1840]);
  v414 = veorq_s8(v409, *&STACK[0x1840]);
  v415 = veorq_s8(v414, v410);
  v416 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v417 = veorq_s8(v413, v408);
  v418 = vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL);
  v419 = veorq_s8(v412, v406);
  v420 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v421 = veorq_s8(v411, v404);
  v422 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL), v421);
  v423 = vaddq_s64(v420, v419);
  v424 = vaddq_s64(v418, v417);
  v425 = vaddq_s64(v416, v415);
  v426 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v422, v422), v223), v422), v293);
  v427 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v423, v423), v223), v423), v293);
  v428 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v424, v424), v223), v424), v293);
  v429 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v425, v425), v223), v425), v293);
  v430 = vsraq_n_u64(vshlq_n_s64(v415, 3uLL), v415, 0x3DuLL);
  v431 = vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL);
  v293.i64[0] = a5 + v346;
  v293.i64[1] = a5 + v347;
  v432 = vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL);
  v433 = veorq_s8(v429, *&STACK[0x1830]);
  v434 = veorq_s8(v428, *&STACK[0x1830]);
  v435 = veorq_s8(v427, *&STACK[0x1830]);
  v436 = veorq_s8(v426, *&STACK[0x1830]);
  v437 = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v421, 3uLL), v421, 0x3DuLL));
  v438 = veorq_s8(v435, v432);
  v439 = veorq_s8(v434, v431);
  v440 = veorq_s8(v433, v430);
  v441 = vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL);
  v237.i64[0] = a5 + v340;
  v237.i64[1] = a5 + v341;
  v442 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v438);
  v443 = veorq_s8(vaddq_s64(v441, v437), v297);
  v444 = veorq_s8(v442, v297);
  v445 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v439), v297);
  v446 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL), v440), v297);
  v447 = vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL);
  v448 = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v449 = vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL);
  v450 = veorq_s8(v446, vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL));
  v451 = veorq_s8(v445, v449);
  v452 = veorq_s8(v444, v448);
  v453 = veorq_s8(v443, v447);
  v454 = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v455 = vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL);
  v456 = vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL);
  *&STACK[0x1850] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL), v453);
  v457 = vaddq_s64(v455, v451);
  v458 = vaddq_s64(v454, v450);
  v459 = *&STACK[0x18F0];
  v460 = vsubq_s64(vorrq_s8(vaddq_s64(v458, v458), *&STACK[0x18F0]), v458);
  v461 = vsubq_s64(vorrq_s8(vaddq_s64(v457, v457), *&STACK[0x18F0]), v457);
  v462 = vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL);
  v463 = vaddq_s64(v456, v452);
  *&STACK[0x1840] = vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL);
  *&STACK[0x1830] = vsubq_s64(vorrq_s8(vaddq_s64(v463, v463), v459), v463);
  *&STACK[0x1860] = vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL);
  v366.i64[0] = a5 + v338;
  v366.i64[1] = a5 + v339;
  v464 = v300;
  v465 = *&STACK[0x1820];
  v466 = veorq_s8(vaddq_s64(v461, v300), *&STACK[0x1820]);
  v600.val[0] = *&STACK[0x1900];
  v600.val[1] = *&STACK[0x1910];
  v600.val[2] = *&STACK[0x1920];
  v600.val[3] = *&STACK[0x1930];
  *&STACK[0x1900] = vqtbl4q_s8(v600, *&STACK[0x17C0]);
  v467 = vandq_s8(v237, v335);
  v468 = vandq_s8(v293, v335);
  v469 = veorq_s8(v466, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v470 = vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL);
  v471 = vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL);
  v472 = vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL);
  v473 = vandq_s8(v366, v335);
  v474 = vsraq_n_u64(vshlq_n_s64(v473, 0x38uLL), v473, 8uLL);
  v475 = vandq_s8(vaddq_s64(v470, *&STACK[0x1870]), *&STACK[0x1620]);
  v476 = veorq_s8(v475, v308);
  v477 = vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL);
  v478 = vandq_s8(vaddq_s64(v471, *&STACK[0x1870]), *&STACK[0x1620]);
  v479 = veorq_s8(v478, v308);
  v480 = vsraq_n_u64(vshlq_n_s64(v479, 0x38uLL), v479, 8uLL);
  v481 = veorq_s8(vaddq_s64(v460, v464), v465);
  v482 = veorq_s8(v481, v462);
  v483 = vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL);
  v484 = veorq_s8(v475, *&STACK[0x1610]);
  v485 = vaddq_s64(v477, v484);
  v486 = vaddq_s64(v483, v482);
  v487 = veorq_s8(v478, *&STACK[0x1610]);
  v488 = vaddq_s64(v480, v487);
  v489 = vaddq_s64(v472, v469);
  v490 = vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL);
  v491 = vsraq_n_u64(vshlq_n_s64(v487, 3uLL), v487, 0x3DuLL);
  v492 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v488, v488), v311), v488), *&STACK[0x18B0]), *&STACK[0x1880]);
  v493 = veorq_s8(v492, v491);
  v494 = vsraq_n_u64(vshlq_n_s64(v492, 0x38uLL), v492, 8uLL);
  v495 = vsubq_s64(vorrq_s8(v486, v270), vorrq_s8(v486, v322));
  v496 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v485, v485), v311), v485), *&STACK[0x18B0]), *&STACK[0x1880]);
  v497 = veorq_s8(v496, v490);
  v498 = vsraq_n_u64(vshlq_n_s64(v496, 0x38uLL), v496, 8uLL);
  v499 = vaddq_s64(v494, v493);
  v500 = vsraq_n_u64(vshlq_n_s64(v493, 3uLL), v493, 0x3DuLL);
  v501 = vsraq_n_u64(vshlq_n_s64(v497, 3uLL), v497, 0x3DuLL);
  v502 = veorq_s8(vaddq_s64(v498, v497), *&STACK[0x16B0]);
  v503 = veorq_s8(v502, v501);
  v504 = vsraq_n_u64(vshlq_n_s64(v502, 0x38uLL), v502, 8uLL);
  v505 = veorq_s8(v499, *&STACK[0x16B0]);
  v506 = veorq_s8(v505, v500);
  v507 = vsraq_n_u64(vshlq_n_s64(v505, 0x38uLL), v505, 8uLL);
  v508 = vaddq_s64(v504, v503);
  v509 = vsraq_n_u64(vshlq_n_s64(v503, 3uLL), v503, 0x3DuLL);
  v510 = vaddq_s64(v507, v506);
  v511 = vsraq_n_u64(vshlq_n_s64(v506, 3uLL), v506, 0x3DuLL);
  v512 = veorq_s8(v510, *&STACK[0x16F0]);
  v513 = veorq_s8(v512, v511);
  v514 = vsraq_n_u64(vshlq_n_s64(v512, 0x38uLL), v512, 8uLL);
  v515 = veorq_s8(v508, *&STACK[0x16F0]);
  v516 = veorq_s8(v515, v509);
  v517 = vsraq_n_u64(vshlq_n_s64(v515, 0x38uLL), v515, 8uLL);
  v518 = vaddq_s64(v514, v513);
  v519 = vaddq_s64(v517, v516);
  v520 = vsraq_n_u64(vshlq_n_s64(v513, 3uLL), v513, 0x3DuLL);
  v521 = vsraq_n_u64(vshlq_n_s64(v516, 3uLL), v516, 0x3DuLL);
  v522 = veorq_s8(vaddq_s64(vsubq_s64(v519, vandq_s8(vaddq_s64(v519, v519), v321)), v324), *&STACK[0x1890]);
  v523 = veorq_s8(v522, v521);
  v524 = vsraq_n_u64(vshlq_n_s64(v522, 0x38uLL), v522, 8uLL);
  v525 = veorq_s8(vaddq_s64(vsubq_s64(v518, vandq_s8(vaddq_s64(v518, v518), v321)), v324), *&STACK[0x1890]);
  v526 = veorq_s8(v525, v520);
  v527 = vsraq_n_u64(vshlq_n_s64(v525, 0x38uLL), v525, 8uLL);
  v528 = vaddq_s64(v524, v523);
  v529 = vsraq_n_u64(vshlq_n_s64(v523, 3uLL), v523, 0x3DuLL);
  v530 = vaddq_s64(v527, v526);
  v531 = vsraq_n_u64(vshlq_n_s64(v526, 3uLL), v526, 0x3DuLL);
  v532 = veorq_s8(v530, *&STACK[0x1660]);
  v533 = veorq_s8(v532, v531);
  v534 = vsraq_n_u64(vshlq_n_s64(v532, 0x38uLL), v532, 8uLL);
  v535 = veorq_s8(v528, *&STACK[0x1660]);
  v536 = veorq_s8(v535, v529);
  v537 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v489, v270), vorrq_s8(v489, v322)), v322), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(v312, 3uLL), *&STACK[0x18A0])));
  v538 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v535, 0x38uLL), v535, 8uLL), v536);
  v539 = vaddq_s64(v534, v533);
  v540 = vsraq_n_u64(vshlq_n_s64(v533, 3uLL), v533, 0x3DuLL);
  v541 = veorq_s8(v538, *&STACK[0x1650]);
  v542 = veorq_s8(v541, vsraq_n_u64(vshlq_n_s64(v536, 3uLL), v536, 0x3DuLL));
  v543 = vsraq_n_u64(vshlq_n_s64(v541, 0x38uLL), v541, 8uLL);
  v544 = veorq_s8(v539, *&STACK[0x1650]);
  v545 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v544, 0x38uLL), v544, 8uLL), veorq_s8(v544, v540));
  v546 = vaddq_s64(v543, v542);
  v547 = vandq_s8(vaddq_s64(v474, *&STACK[0x1870]), *&STACK[0x1620]);
  v599.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v495, v322), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1720], 3uLL), *&STACK[0x18A0]))), vshlq_u64(veorq_s8(v546, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v293, 3uLL), *&STACK[0x18A0]))));
  v599.val[2] = veorq_s8(v537, vshlq_u64(veorq_s8(v545, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v237, 3uLL), *&STACK[0x18A0]))));
  v548 = veorq_s8(v547, v308);
  v549 = veorq_s8(v547, *&STACK[0x1610]);
  v550 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v548, 0x38uLL), v548, 8uLL), v549);
  v551 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v550, v550), v311), v550), *&STACK[0x18B0]), *&STACK[0x1880]);
  v552 = veorq_s8(vaddq_s64(*&STACK[0x1830], v464), v465);
  v553 = veorq_s8(v551, vsraq_n_u64(vshlq_n_s64(v549, 3uLL), v549, 0x3DuLL));
  v554 = vsraq_n_u64(vshlq_n_s64(v551, 0x38uLL), v551, 8uLL);
  v555 = veorq_s8(v552, *&STACK[0x1840]);
  v556 = vsraq_n_u64(vshlq_n_s64(v553, 3uLL), v553, 0x3DuLL);
  v557 = veorq_s8(vaddq_s64(v554, v553), *&STACK[0x16B0]);
  v558 = vsraq_n_u64(vshlq_n_s64(v552, 0x38uLL), v552, 8uLL);
  v559 = veorq_s8(v557, v556);
  v560 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v557, 0x38uLL), v557, 8uLL), v559), *&STACK[0x16F0]);
  v561 = veorq_s8(v560, vsraq_n_u64(vshlq_n_s64(v559, 3uLL), v559, 0x3DuLL));
  v562 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v560, 0x38uLL), v560, 8uLL), v561);
  v563 = vaddq_s64(v558, v555);
  v564 = veorq_s8(vaddq_s64(vsubq_s64(v562, vandq_s8(vaddq_s64(v562, v562), v321)), v324), *&STACK[0x1890]);
  v565 = veorq_s8(v564, vsraq_n_u64(vshlq_n_s64(v561, 3uLL), v561, 0x3DuLL));
  v566 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v564, 0x38uLL), v564, 8uLL), v565), *&STACK[0x1660]);
  v567 = veorq_s8(v566, vsraq_n_u64(vshlq_n_s64(v565, 3uLL), v565, 0x3DuLL));
  v568 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v566, 0x38uLL), v566, 8uLL), v567);
  v569 = vsraq_n_u64(vshlq_n_s64(v567, 3uLL), v567, 0x3DuLL);
  v570 = veorq_s8(v568, *&STACK[0x1650]);
  v571 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v563, v270), vorrq_s8(v563, v322)), v322), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1730], 3uLL), *&STACK[0x18A0])));
  v563.i64[0] = a5 + v333;
  v563.i64[1] = a5 + v334;
  v572 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v570, 0x38uLL), v570, 8uLL), veorq_s8(v570, v569)), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v366, 3uLL), *&STACK[0x18A0])));
  v573 = vandq_s8(v563, *&STACK[0x1940]);
  v599.val[1] = veorq_s8(v571, v572);
  v574 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v573, 0x38uLL), v573, 8uLL), *&STACK[0x1870]), *&STACK[0x1620]);
  v575 = veorq_s8(v574, v308);
  v576 = veorq_s8(v574, *&STACK[0x1610]);
  v577 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v575, 0x38uLL), v575, 8uLL), v576);
  v578 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v577, v577), v311), v577), *&STACK[0x18B0]), *&STACK[0x1880]);
  v579 = veorq_s8(v578, vsraq_n_u64(vshlq_n_s64(v576, 3uLL), v576, 0x3DuLL));
  v580 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v578, 0x38uLL), v578, 8uLL), v579), *&STACK[0x16B0]);
  v581 = veorq_s8(v580, vsraq_n_u64(vshlq_n_s64(v579, 3uLL), v579, 0x3DuLL));
  v582 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(*&STACK[0x1850], *&STACK[0x1850]), *&STACK[0x18F0]), *&STACK[0x1850]), v464), v465);
  v583 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v580, 0x38uLL), v580, 8uLL), v581), *&STACK[0x16F0]);
  v584 = veorq_s8(v583, vsraq_n_u64(vshlq_n_s64(v581, 3uLL), v581, 0x3DuLL));
  v585 = veorq_s8(v582, *&STACK[0x1860]);
  v586 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v583, 0x38uLL), v583, 8uLL), v584);
  v587 = vsraq_n_u64(vshlq_n_s64(v582, 0x38uLL), v582, 8uLL);
  v588 = veorq_s8(vaddq_s64(vsubq_s64(v586, vandq_s8(vaddq_s64(v586, v586), v321)), v324), *&STACK[0x1890]);
  v589 = vaddq_s64(v587, v585);
  v590 = veorq_s8(v588, vsraq_n_u64(vshlq_n_s64(v584, 3uLL), v584, 0x3DuLL));
  v591 = vsraq_n_u64(vshlq_n_s64(v588, 0x38uLL), v588, 8uLL);
  v592 = vsubq_s64(vorrq_s8(v589, v270), vorrq_s8(v589, v322));
  v593 = veorq_s8(vaddq_s64(v591, v590), *&STACK[0x1660]);
  v594 = veorq_s8(v593, vsraq_n_u64(vshlq_n_s64(v590, 3uLL), v590, 0x3DuLL));
  v595 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v593, 0x38uLL), v593, 8uLL), v594), *&STACK[0x1650]);
  v599.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v592, v322), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1740], 3uLL), *&STACK[0x18A0]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v595, 0x38uLL), v595, 8uLL), veorq_s8(v595, vsraq_n_u64(vshlq_n_s64(v594, 3uLL), v594, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v563, 3uLL), *&STACK[0x18A0]))));
  v596 = *&STACK[0x1900];
  v596.i64[1] = vqtbl4q_s8(v599, *&STACK[0x17C0]).u64[0];
  v597 = vrev64q_s8(v596);
  *(v25 - 15) = veorq_s8(vextq_s8(v597, v597, 8uLL), *(v23 - 15));
  return (*(STACK[0x1708] + 8 * ((15725 * (v17 + 16 == LODWORD(STACK[0x15B0]))) ^ v196)))();
}

uint64_t sub_10003E884@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v21 = (v9 + v20);
  v22 = (v8 + v21);
  v23 = (v8 + v21) & 0xFFFFFFFFFFFFFFF8;
  v24 = a8 + v21;
  v25 = __ROR8__(v23, 8);
  v26 = v25 - ((2 * v25 + 0x33F36A2A44D9E26) & 0x709F30FBDB01944) - 0x56DB6B26CF01244BLL;
  v27 = v26 ^ 0x759EDACCAE776DBELL;
  v26 ^= 0x796200463F411523uLL;
  v28 = __ROR8__(v27, 8);
  v29 = __ROR8__((0x16061EC7B458F5 - ((v28 + v26) | 0x16061EC7B458F5) + ((v28 + v26) | v15)) ^ v19, 8);
  v30 = (0x16061EC7B458F5 - ((v28 + v26) | 0x16061EC7B458F5) + ((v28 + v26) | v15)) ^ v19 ^ __ROR8__(v26, 61);
  v31 = (v29 + v30) ^ 0x83272434AA805759;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xB0556FBA17C811E5;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((((2 * (v35 + v34)) | 0x9523A6DF9A387CDELL) - (v35 + v34) - 0x4A91D36FCD1C3E6FLL) ^ v17, 8);
  v37 = (((2 * (v35 + v34)) | 0x9523A6DF9A387CDELL) - (v35 + v34) - 0x4A91D36FCD1C3E6FLL) ^ v17 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ 0x3582AE70DBD8C26CLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) | 0xFD26CA3A4C00D760) - (v40 + v39) + v11) ^ a4;
  v42 = (__ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8) + 0x7695A575CC8A36DALL) & 0xFBFFFFFFFFFFFFFFLL;
  v43 = v42 ^ 0x9716ECD53D61FD7;
  v42 ^= 0xBDDC45633787A904;
  v44 = __ROR8__(v43, 8);
  v45 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61));
  v46 = ((a5 & (2 * (v44 + v42))) - (v44 + v42) + v12) ^ v13;
  v47 = v46 ^ __ROR8__(v42, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ a1;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xC73EF603490C4402;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (v52 + v51 - (v14 & (2 * (v52 + v51))) + v16) ^ a7;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x43600812E0A35073;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xB581C077348D623CLL;
  *v24 = (((a6 - (v45 | a6) + (v45 | v18)) ^ 0x68E9DCA3CBC3AD09) >> (8 * (v22 & 7u))) ^ (((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61))) ^ a2) >> (8 * (v24 & 7u))) ^ *v22;
  return (*(STACK[0x1708] + 8 * (v10 | (32 * (((v10 + 686) ^ a3) + v9 == 756459950)))))();
}

uint64_t sub_10003EC28()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3905)))();
  v3 = STACK[0x1708];
  STACK[0x2DD8] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_10003ECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = STACK[0x1B28];
  STACK[0x44E0] = STACK[0x1B28] - 32;
  STACK[0x1B28] = v7 - 32;
  v8 = *(v6 + 8 * (((v4 ^ 0x3C90) * (v5 == 68588956)) ^ (v4 - 3145)));
  LODWORD(STACK[0x41C0]) = v4 ^ 0x974;
  return v8(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10003ED38@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0x41C0];
  LODWORD(STACK[0x41C4]) = STACK[0x41C0];
  LODWORD(STACK[0x41C8]) = v2 + 3060;
  LODWORD(STACK[0x41CC]) = (v2 - 172) | 0x820;
  STACK[0x41D0] = STACK[0x21A8];
  v3 = STACK[0x2710];
  STACK[0x41D8] = STACK[0x2710];
  v4 = STACK[0x2DE0];
  STACK[0x41E0] = STACK[0x2DE0];
  v5 = STACK[0x40D0] + STACK[0x44E0];
  STACK[0x3720] = v5;
  STACK[0x1B28] = a1;
  STACK[0x2648] = v3;
  STACK[0x2818] = v4;
  STACK[0x4188] = v5;
  LOBYTE(STACK[0x4187]) = 0;
  v6 = *(v1 + 8 * (v2 ^ 0x3869));
  STACK[0x4178] = 32;
  STACK[0x4170] = v6;
  return (*(v1 + 8 * (LODWORD(STACK[0x41C4]) + 6158)))();
}

uint64_t sub_10003EE5C()
{
  v3 = (*(v2 + 8 * (v1 + 4968)))(v0);
  v4 = STACK[0x1708];
  STACK[0x2EE8] = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_10003EF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = v5 + 2167;
  v10 = a5 - 6302 + (v5 + 3048);
  STACK[0x44F8] = v10;
  STACK[0x1B28] = v10;
  v11 = *(v8 + 8 * (((v6 == v7) * ((v5 + 2167) ^ 0x317B)) ^ v5));
  LODWORD(STACK[0x42C8]) = v9;
  return v11(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10003EF98@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0x42C8];
  LODWORD(STACK[0x42CC]) = STACK[0x42C8];
  LODWORD(STACK[0x42D0]) = v2 ^ 0x1884;
  LODWORD(STACK[0x42D4]) = (v2 ^ 0x1884) - 243;
  STACK[0x42D8] = STACK[0x2AD8] - 0x510808E226CB14B4;
  v3 = STACK[0x1FA8];
  STACK[0x42E0] = STACK[0x1FA8];
  v4 = STACK[0x2C18];
  STACK[0x42E8] = STACK[0x2C18];
  v5 = STACK[0x40D0] + STACK[0x44F8];
  STACK[0x3CE8] = v5;
  STACK[0x1B28] = a1;
  STACK[0x25A8] = v3;
  STACK[0x2DC8] = v4;
  STACK[0x4188] = v5;
  LOBYTE(STACK[0x4187]) = 0;
  v6 = *(v1 + 8 * (v2 + 5209));
  STACK[0x4178] = 32;
  STACK[0x4170] = v6;
  return (*(v1 + 8 * (LODWORD(STACK[0x42CC]) ^ 0x3C15)))();
}

uint64_t sub_10003F050()
{
  v1 = STACK[0x44E8];
  *(v1 - 0x202F6D26B0770886) = -92061422;
  *(v1 - 0x202F6D26B0770882) = 1;
  *(v1 - 0x202F6D26B077087ELL) = 0x200000004;
  v2 = STACK[0x4290];
  STACK[0x2A88] = *(v0 + 8 * SLODWORD(STACK[0x4290]));
  return (*(v0 + 8 * (v2 + (LODWORD(STACK[0x4294]) ^ 0x796))))();
}

uint64_t sub_10003F100@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1AC8] = v2;
  STACK[0x2318] = a1;
  LODWORD(STACK[0x309C]) = v1;
  LODWORD(STACK[0x2EAC]) = 0;
  STACK[0x20C0] = 0x61CEF89FDDA89DF2;
  v5 = (*(v4 + 8 * (v3 + 7108)))(128);
  v6 = STACK[0x1708];
  STACK[0x2208] = v5 + 0x1138F6A92264F486;
  return (*(v6 + 8 * (((v5 == 0) * (((114 * (v3 ^ 0xD8A)) ^ 0xFFFFC153) + v3 + 6530)) ^ v3)))();
}

uint64_t sub_10003F2BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0x1900] = a1;
  *(a2 - 0x1138F6A92264F476) = *(v3 - 0x61CEF89FDDA89DF2);
  *(a2 - 0x1138F6A92264F42ELL) = *(v3 - 0x61CEF89FDDA89DAALL);
  *(a2 - 0x1138F6A92264F42ALL) = *(v3 - 0x61CEF89FDDA89DA6);
  *(a2 - 0x1138F6A92264F426) = *(v3 - 0x61CEF89FDDA89DA2);
  *(a2 - 0x1138F6A92264F425) = *(v3 - 0x61CEF89FDDA89DA1);
  *(a2 - 0x1138F6A92264F40ELL) = *(v3 - 0x61CEF89FDDA89D8ALL);
  *(a2 - 0x1138F6A92264F422) = *(v3 - 0x61CEF89FDDA89D9ELL);
  *(a2 - 0x1138F6A92264F40ALL) = *(v3 - 0x61CEF89FDDA89D86) & 1 ^ 0x9D;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_10003F48C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = ((v6 + 2420) + v12) & (v7 + 31);
  *(a2 + v7) = *(a3 + v7) ^ (v16 * v13) ^ *(*(v14 + 8 * a4) + v8 + v16) ^ *(v16 + *(v14 + 8 * (v6 - 3366)) + v9 + 2) ^ *(*(v14 + 8 * (v6 ^ v5)) + v10 + v16) ^ v4;
  return (*(v15 + 8 * (((v7 == -31) * v11) ^ v6)))();
}

uint64_t sub_10003F734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v18 = a3 + v16 + 2252;
  *(v13 + v18) = *(v12 + v18) ^ *(v14 + v18) ^ (v18 * v15) ^ *(v10 + a3 + v16 + (v11 - 1776)) ^ *(a2 + v18) ^ v9;
  return (*(v17 + 8 * (((a3 - 1 == v8) * a8) ^ v11)))();
}

uint64_t sub_10003F790@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = *(v7 - 0x61CEF89FDDA89DEELL);
  *(a7 - 0x1138F6A92264F472) = v10;
  return (*(v9 + 8 * ((28 * (v10 != ((a1 + 7839) ^ 0x1858324A ^ (a1 + 501347888) & 0xE21E197E))) ^ a1)))(STACK[0x1900], a2, a3, a4, 0xDA182461BE0DA49ALL, a5, a6, v8);
}

uint64_t sub_10003FA0C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 - 224;
  v5 = v1 + 1081;
  v6 = 330 * ((v1 - 224) ^ 0x1376);
  v7 = (*(v3 + 8 * ((v1 - 224) ^ 0x3A4E)))(a1 - 0x61CEF89FDDA89DF2);
  return (*(STACK[0x1708] + 8 * ((((v6 ^ 0xFFFFFFEF) + v5) * (v2 == 0x51251B1ADC66E155)) ^ v4)))(v7);
}

uint64_t sub_10003FB48()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2ECF)))((LODWORD(STACK[0x241C]) - 1443455193));
  v3 = STACK[0x1708];
  STACK[0x3188] = v2 + 0x2B1A0449E8A6C928;
  return (*(v3 + 8 * ((((((v0 + 4400) ^ (v2 == 0)) & 1) == 0) * (285 * (v0 ^ 0x758) - 6252)) ^ v0)))();
}

uint64_t sub_10003FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x2BA8] = 0;
  v5 = STACK[0x4284];
  STACK[0x3060] = *(v4 + 8 * SLODWORD(STACK[0x4284]));
  return (*(v4 + 8 * (v5 + 958)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10003FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x2E30] = 0x5A0411E37F4B9882;
  STACK[0x2408] = 0;
  LODWORD(STACK[0x2D2C]) = 1443455193;
  STACK[0x21B0] = 0;
  LODWORD(STACK[0x2A4C]) = 1443455193;
  v5 = STACK[0x44A0];
  STACK[0x1C50] = STACK[0x44A0];
  v7 = v5 != 0x1138F6A92264F486 && STACK[0x4498] != 0x43108F5CB8C6685ELL;
  return (*(v4 + 8 * ((v7 * (LODWORD(STACK[0x44B0]) ^ 0x1852)) ^ LODWORD(STACK[0x44AC]))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10003FDB8()
{
  v1 = STACK[0x44B4];
  STACK[0x1C08] = 0;
  LODWORD(STACK[0x2444]) = 1443455193;
  return (*(v0 + 8 * (((v1 + 1332) ^ 0x34) + v1)))(2086113709, &STACK[0x2444], &STACK[0x1C08]);
}

uint64_t sub_10003FF1C@<X0>(uint64_t a1@<X8>)
{
  v8 = (v5 - 6493) | 0x1070;
  v9 = v4 - (((v4 << ((((v5 - 93) | 0x70) + 5) ^ 0x7F)) - 1951639826) & 0xB490BFB8) + 538872659;
  v10 = v6 - 240;
  v11 = 1110906037 * (((((v6 - 240) | 0xDB03D6E) ^ 0xFFFFFFFE) - (~(v6 - 240) | 0xF24FC291)) ^ 0x7B08AE21);
  *(v10 + 8) = a1;
  *(v10 + 24) = v3;
  *(v10 + 16) = v11 + v8 - 855;
  *(v10 + 20) = v11 + 1061841929;
  *(v10 + 40) = v2;
  *(v10 + 32) = (v1 ^ 0x7FFDBF7F) - v11 + ((2 * v1) & 0xB8483464) - 76284197;
  *v10 = v9 ^ v11;
  v12 = (*(v7 + 8 * (v8 ^ 0x31CA)))(v6 - 240);
  return (*(STACK[0x1708] + 8 * v8))(v12);
}

uint64_t sub_1000402CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  STACK[0x1900] = *(v7 + 8 * v6);
  STACK[0x3560] = 0;
  return (*(v7 + 8 * ((25 * (STACK[0x3560] < (((a6 + 2812) | 0x14u) ^ 0x185EuLL))) ^ a6)))(0x5A95508BC06A4642, a1, a2, a3, a4, a5, 0xD716ECD53D61FD7);
}

uint64_t sub_100040644()
{
  v2 = STACK[0x29A8];
  *v2 = 0u;
  v2[1] = 0u;
  return (*(v1 + 8 * (((v0 + 7795) ^ 0x26C6) + v0)))();
}

uint64_t sub_1000406A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x21A8] = 0;
  LODWORD(STACK[0x1DC4]) = 1443455193;
  STACK[0x2270] = 0;
  LODWORD(STACK[0x2A3C]) = 1443455193;
  LODWORD(STACK[0x1B6C]) = 1443455193;
  STACK[0x2788] = 0x510808E226CB14FCLL;
  STACK[0x19C0] = 0;
  v5 = STACK[0x4198];
  STACK[0x3060] = *(v4 + 8 * SLODWORD(STACK[0x4198]));
  return (*(v4 + 8 * (v5 + (LODWORD(STACK[0x419C]) ^ 0x8CC))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000407B4()
{
  v1 = STACK[0x434C];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x434C]) ^ 0x3234)))(128);
  v3 = STACK[0x1708];
  STACK[0x24E0] = v2 + 0x1138F6A92264F486;
  return (*(v3 + 8 * (((v2 == 0) * (((v1 - 1660591607) & 0x62FAA7C7 ^ 0xFFFFCD87) + (v1 ^ 0x3CB))) ^ v1)))();
}

uint64_t sub_1000409C8@<X0>(int a1@<W8>)
{
  v4 = STACK[0x2F28];
  v5 = STACK[0x510];
  v6 = v2 - 240;
  *v6 = (a1 + 2105773206) ^ STACK[0x510];
  *(v6 + 8) = v5;
  *(v6 + 16) = (v1 + 1500186694) ^ v5;
  *(v6 + 32) = (v1 ^ 0x596B087D) + v5;
  *(v6 + 36) = -v5;
  *(v6 + 40) = (v1 + 1500187794) ^ v5;
  *(v6 + 24) = v4 ^ v5;
  v7 = (*(v3 + 8 * (a1 + 4389)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * *(v2 - 196)))(v7);
}

uint64_t sub_100040B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x258C];
  LODWORD(STACK[0x3738]) = STACK[0x258C];
  STACK[0x1B28] -= 48;
  return (*(v8 + 8 * ((333 * (v9 == ((a8 - 6100) ^ 0x4169536))) ^ (a8 - 4705))))();
}

uint64_t sub_100040BD8()
{
  v2 = v0;
  v3 = (*(v1 + 8 * (v0 ^ 0x292B)))((LODWORD(STACK[0x2C5C]) - 1443455193));
  v4 = STACK[0x1708];
  STACK[0x1B18] = v3;
  return (*(v4 + 8 * (v2 ^ 0x668)))();
}

uint64_t sub_100040F2C(void *a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v1 - 0x1138F6A92264F47ELL) = a1 + 0x5A0411E37F4B9882;
  return (*(v3 + 8 * ((203 * (((v1 == 0x1138F6A92264F486) ^ (v2 + 81 + v2 + 69 + 1)) & 1)) ^ v2)))();
}

uint64_t sub_100040FD0@<X0>(int a1@<W8>)
{
  v2 = a1 | 0x1A20;
  v3 = (*(v1 + 8 * ((a1 | 0x1A20) ^ 0x3333)))(16) == 0;
  return (*(STACK[0x1708] + 8 * ((15 * ((v3 ^ (3 * (v2 ^ 0x1C) + 1)) & 1)) ^ v2)))();
}

uint64_t sub_100041030(void *a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *v1 = a1 + 0x5A0411E37F4B9882;
  if (STACK[0x2318])
  {
    v4 = LODWORD(STACK[0x309C]) == 1601245447;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((v5 * ((6 * (v2 ^ 0x1B68) - 1565126045) & 0x5D49FAFE ^ 0x1835)) ^ (6 * (v2 ^ 0x1B68)))))();
}

uint64_t sub_10004114C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  LODWORD(STACK[0x3CF0]) = 68545945;
  STACK[0x1B28] = STACK[0x44F8];
  return (*(v5 + 8 * a5))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004125C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2ECC)))();
  v3 = STACK[0x1708];
  STACK[0x2960] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000412E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x3CF0]) = v8;
  STACK[0x1B28] -= 32;
  return (*(v9 + 8 * (((v7 - 579) * (v8 == 68588956)) ^ (v7 - 3048))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, STACK[0x1700]);
}

uint64_t sub_100041334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x18F0] = STACK[0x1DE8];
  STACK[0x31D8] = *(v7 + 8 * (v6 - 5891));
  return (*(v7 + 8 * ((((v6 - 5230) | 0x190F) ^ 0x1742) + v6 - 5891)))(a1, a2, a3, a4, a5, a6, 2696541784, 67);
}

uint64_t sub_1000413DC()
{
  v1 = STACK[0x1700] ^ 0x561;
  v2 = STACK[0x1700] - 5875;
  STACK[0x18F0] = STACK[0x2C18];
  return (*(v0 + 8 * (v1 ^ v2 ^ 0x3C5C)))();
}

uint64_t sub_100041734(double a1, __n128 a2)
{
  v4 = *(STACK[0x1708] + 8 * v2);
  v5 = LODWORD(STACK[0x1810]) - 2139052942 + LODWORD(STACK[0x1820]);
  LODWORD(STACK[0x1840]) = v5 + 3466;
  LODWORD(STACK[0x1830]) = v5 + 3467;
  *&STACK[0x1900] = v3;
  *&STACK[0x18A0] = a2;
  return v4((v5 + 3476), (v5 + 3477), (v5 + 1735), 4294967280);
}

uint64_t sub_1000417F0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>, int8x16_t a9@<Q1>, int8x16_t a10@<Q3>, int8x16_t a11@<Q4>, int8x16_t a12@<Q5>, int8x16_t a13@<Q6>, int8x16_t a14@<Q7>)
{
  *&v38 = v22 + (a1 + a4 + 16);
  *(&v38 + 1) = v22 + (v20 + a4 + 16);
  *&STACK[0x1880] = v38;
  v39.i64[0] = v22 + (v19 + a4 + 16);
  v40.i64[0] = v22 + (a7 + a4 + 16);
  v39.i64[1] = v22 + (v17 + a4 + 16);
  v40.i64[1] = v22 + (a6 + a4 + 16);
  *&STACK[0x1850] = v40;
  v41.i64[0] = v22 + (a5 + a4 + 16);
  v41.i64[1] = v22 + (LODWORD(STACK[0x1830]) + a4 + 16);
  v42 = (a3 + a4 + v14 + 16);
  v43.i64[0] = v22 + (LODWORD(STACK[0x1840]) + a4 + 16);
  v43.i64[1] = v22 + (v16 + a4 + 16);
  *&v38 = v22 + v42;
  *(&v38 + 1) = v22 + (a2 + a4 + 16);
  *&STACK[0x1890] = v38;
  v44.i64[0] = v22 + (v27 + a4 + 16);
  v44.i64[1] = v22 + (v26 + a4 + 16);
  v45 = *&STACK[0x1940];
  v46 = vandq_s8(v44, *&STACK[0x1940]);
  v47 = vandq_s8(v43, *&STACK[0x1940]);
  v48 = vandq_s8(v41, *&STACK[0x1940]);
  v49 = vandq_s8(v40, *&STACK[0x1940]);
  v50 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = *&STACK[0x1870];
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), *&STACK[0x1870]);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), *&STACK[0x1870]);
  v55 = vaddq_s64(v51, *&STACK[0x1870]);
  v56 = vaddq_s64(v50, *&STACK[0x1870]);
  *&STACK[0x1860] = vsubq_s64(vorrq_s8(vaddq_s64(v56, v56), a9), v56);
  v57 = vsubq_s64(vorrq_s8(vaddq_s64(v55, v55), a9), v55);
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), a9), v53), *&STACK[0x1900]);
  v59 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), a9), v54), *&STACK[0x1900]);
  v60 = veorq_s8(v59, v29);
  v61 = veorq_s8(v58, v29);
  v62 = veorq_s8(v58, a10);
  v63 = veorq_s8(v59, a10);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, a11), vorrq_s8(v64, a12)), a12), a13);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, a11), vorrq_s8(v65, a12)), a12), a13);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, a14), vorrq_s8(v70, v30)), v30), v31);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, a14), vorrq_s8(v71, v30)), v30), v31);
  v74 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v75);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v32), v78), v33), v34);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v32), v77), v33), v34);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82);
  v85 = vaddq_s64(v83, v81);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v35), vorrq_s8(v84, v36)), v36), v37);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, v35), vorrq_s8(v85, v36)), v36), v37);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = *&STACK[0x1660];
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v89), *&STACK[0x1660]);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90), *&STACK[0x1660]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v95 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v95);
  v98 = *&STACK[0x1650];
  v99 = veorq_s8(vaddq_s64(v96, v94), *&STACK[0x1650]);
  v100 = veorq_s8(v97, *&STACK[0x1650]);
  v101 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v102 = v37;
  v103 = v35;
  v104 = v34;
  v105 = v33;
  v106 = v32;
  v107 = v31;
  v112 = v29;
  v113 = vdupq_n_s64(v15);
  v114 = vaddq_s64(v57, *&STACK[0x1900]);
  v115 = *&STACK[0x16C0];
  v228.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v101), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v113)));
  v228.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v113)));
  v116 = veorq_s8(v114, v29);
  v117 = veorq_s8(v114, a10);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, a11), vorrq_s8(v118, a12)), a12), a13);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, a14), vorrq_s8(v121, v30)), v30), v107);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v106), v124), v105), v104);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v103), vorrq_s8(v127, v36)), v36), v102);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), *&STACK[0x1660]);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), *&STACK[0x1650]);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v132.i64[0] = v22 + (v28 + a4 + 16);
  v132.i64[1] = v22 + (v23 + a4 + 16);
  v135 = vaddq_s64(v134, v133);
  v136 = vandq_s8(v132, v45);
  v137 = vaddq_s64(*&STACK[0x1860], *&STACK[0x1900]);
  v228.val[1] = vshlq_u64(veorq_s8(v135, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v113)));
  v138 = veorq_s8(v137, v29);
  v139 = veorq_s8(v137, a10);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v140, a11), vorrq_s8(v140, a12)), a12), a13);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, a14), vorrq_s8(v143, v30)), v30), v107);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v106), v146), v105), v104);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, v103), vorrq_s8(v149, v36)), v36), v102);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), *&STACK[0x1660]);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), *&STACK[0x1650]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = vandq_s8(v39, v45);
  v158 = vaddq_s64(v156, v155);
  v159 = *&STACK[0x1880];
  v160 = vandq_s8(*&STACK[0x1880], v45);
  v228.val[0] = vshlq_u64(veorq_s8(v158, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1850], 3uLL), v113)));
  v161 = vandq_s8(*&STACK[0x1890], v45);
  v162 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v166 = vaddq_s64(v164, v52);
  v167 = vaddq_s64(v163, v52);
  v168 = vaddq_s64(v162, v52);
  v169 = vaddq_s64(v165, v52);
  v170 = vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), *&STACK[0x18A0]), v169);
  v171 = vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), *&STACK[0x18A0]), v168);
  v172 = vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), *&STACK[0x18A0]), v167);
  v173 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), *&STACK[0x18A0]), v166), *&STACK[0x1900]);
  v174 = vaddq_s64(v172, *&STACK[0x1900]);
  v175 = *&STACK[0x17C0];
  *&STACK[0x1860] = vqtbl4q_s8(v228, *&STACK[0x17C0]);
  v228.val[0] = veorq_s8(v174, v112);
  v228.val[1] = veorq_s8(v173, v112);
  v176 = veorq_s8(v173, a10);
  v177 = veorq_s8(v174, a10);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v177);
  v228.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v176);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[0], a11), vorrq_s8(v228.val[0], a12)), a12), a13);
  v228.val[2] = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[1], a11), vorrq_s8(v228.val[1], a12)), a12), a13);
  v178 = veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(v228.val[0], v228.val[2]);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v179);
  v228.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v178);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[0], a14), vorrq_s8(v228.val[0], v30)), v30), v107);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[1], a14), vorrq_s8(v228.val[1], v30)), v30), v107);
  v180 = veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v181);
  v228.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v180);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228.val[1], v228.val[1]), v106), v228.val[1]), v105), v104);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228.val[0], v228.val[0]), v106), v228.val[0]), v105), v104);
  v228.val[2] = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v182 = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v183 = veorq_s8(v228.val[1], v228.val[2]);
  v228.val[2] = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v183);
  v228.val[1] = vaddq_s64(v228.val[2], v182);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[0], v103), vorrq_s8(v228.val[0], v36)), v36), v102);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[1], v103), vorrq_s8(v228.val[1], v36)), v36), v102);
  v184 = veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = v91;
  v228.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v184), v91);
  v228.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v185), v91);
  v228.val[2] = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v187 = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(v228.val[1], v228.val[2]);
  v228.val[2] = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v188);
  v228.val[1] = veorq_s8(vaddq_s64(v228.val[2], v187), v98);
  v228.val[0] = veorq_s8(v228.val[0], v98);
  v189 = vaddq_s64(v171, *&STACK[0x1900]);
  v228.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v115), vnegq_s64(vandq_s8(vshlq_n_s64(v132, 3uLL), v113)));
  v228.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL))), v115), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v113)));
  v190 = veorq_s8(v189, v112);
  v191 = veorq_s8(v189, a10);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, a11), vorrq_s8(v192, a12)), a12), a13);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195, a14), vorrq_s8(v195, v30)), v30), v107);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), v106), v198), v105), v104);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v201, v103), vorrq_s8(v201, v36)), v36), v102);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203), v186);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205), v98);
  v207 = vaddq_s64(v170, *&STACK[0x1900]);
  v228.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL))), v115), vnegq_s64(vandq_s8(vshlq_n_s64(v159, 3uLL), v113)));
  v208 = veorq_s8(v207, v112);
  v209 = veorq_s8(v207, a10);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v210, a11), vorrq_s8(v210, a12)), a12), a13);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v213, a14), vorrq_s8(v213, v30)), v30), v107);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v216, v216), v106), v216), v105), v104);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, v103), vorrq_s8(v219, v36)), v36), v102);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v186);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v98);
  v228.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL))), v115), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1890], 3uLL), v113)));
  v52.i64[0] = vqtbl4q_s8(v228, v175).u64[0];
  v52.i64[1] = STACK[0x1860];
  v225 = vrev64q_s8(*(v22 + v42 - 15));
  v115.i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v115.i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v226 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v225, v225, 8uLL), v115), v52));
  *(v24 + v42) = vextq_s8(v226, v226, 8uLL);
  return (*(v21 + 8 * (((v25 == a4) * a8) ^ v18)))();
}

uint64_t sub_1000423A8()
{
  v4 = *(v1 + 8 * (((((v0 + 2421) | 0x83A) - 6240) * (v2 == v3)) ^ v0));
  LODWORD(STACK[0x1890]) = v3;
  return v4(0x43600812E0A35073, 1598425511, 0xB581C077348D623CLL, 0x8ACDD87828E2F523, 0x25E7DB9E41F25B65, 0x7B099FCD8BC781DFLL, 2696541784, 67);
}

uint64_t sub_10004256C()
{
  LODWORD(STACK[0x1880]) = v1;
  v2 = LODWORD(STACK[0x1810]) - 2139052942 + LODWORD(STACK[0x1820]);
  return (*(STACK[0x1708] + 8 * v0))(8 - ((((v0 - 185507241) & 0xB0E9D8F) - 7575) & v1), (v0 - 185507241) & 0xB0E9D8F ^ 0x8DFu, (v2 + 3473), (v2 + 3475), (v2 + 3476), (v2 + 3477), (v2 + 3478), (v0 - 185507241) & 0xB0E9D8F ^ 0xA0B9EBDB, *&STACK[0x1870], *&STACK[0x1650], *&STACK[0x1660]);
}

uint64_t sub_100042630@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>, int64x2_t a10@<Q0>, int8x16_t a11@<Q1>, int8x16_t a12@<Q2>, int8x16_t a13@<Q3>, int8x16_t a14@<Q4>, int8x16_t a15@<Q5>, int8x16_t a16@<Q6>, int8x16_t a17@<Q7>)
{
  v38 = (v22 + a7);
  v39.i64[0] = v24 + v38;
  v39.i64[1] = v24 + (v22 + a6);
  v40.i64[0] = v24 + (v22 + a5);
  v40.i64[1] = v24 + (v22 + a4);
  v41.i64[0] = v24 + (v22 + v17 + a8);
  v42.i64[0] = v24 + (v22 + v19);
  v42.i64[1] = v24 + (v22 + v18);
  v41.i64[1] = v24 + (v22 + a3);
  v43 = vandq_s8(v42, v29);
  v44 = vandq_s8(v40, v29);
  v45 = vandq_s8(v39, v29);
  v46 = vandq_s8(v41, v29);
  v47 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v51 = vdupq_n_s64(v23);
  v52 = vaddq_s64(v50, a10);
  v53 = vaddq_s64(v48, a10);
  v54 = vaddq_s64(v47, a10);
  v55 = vaddq_s64(v49, a10);
  v56 = vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v27), v53);
  v57 = vsubq_s64(vorrq_s8(vaddq_s64(v55, v55), v27), v55);
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), v27), v52), v26);
  v59 = vaddq_s64(v56, v26);
  v60 = veorq_s8(v59, v28);
  v61 = veorq_s8(v58, v28);
  v62 = veorq_s8(v58, a13);
  v63 = veorq_s8(v59, a13);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, a14), vorrq_s8(v64, a15)), a15), a16);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, a14), vorrq_s8(v65, a15)), a15), a16);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, a17), vorrq_s8(v70, v30)), v30), v31);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, a17), vorrq_s8(v71, v30)), v30), v31);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v32), v77), v33), v34);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), v32), v76), v33), v34);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = vaddq_s64(v83, v81);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v35), vorrq_s8(v84, v36)), v36), v37);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, v35), vorrq_s8(v85, v36)), v36), v37);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), a12);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v89), a12);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), a11);
  v98 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v99 = veorq_s8(v96, a11);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v101 = veorq_s8(v97, v98);
  v102 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), v27), v54), v26);
  v105 = vaddq_s64(v103, v101);
  v106 = veorq_s8(vaddq_s64(v102, v100), *&STACK[0x16C0]);
  v143.val[3] = vshlq_u64(veorq_s8(v105, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v51)));
  v143.val[1] = vshlq_u64(v106, vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v51)));
  v107 = veorq_s8(v104, v28);
  v108 = veorq_s8(v104, a13);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, a14), vorrq_s8(v109, a15)), a15), a16);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, a17), vorrq_s8(v112, v30)), v30), v31);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v32), v115), v33), v34);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, v35), vorrq_s8(v118, v36)), v36), v37);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), a12);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), a11);
  v124 = vaddq_s64(v57, v26);
  v143.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v51)));
  v125 = veorq_s8(v124, v28);
  v126 = veorq_s8(v124, a13);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, a14), vorrq_s8(v127, a15)), a15), a16);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, a17), vorrq_s8(v130, v30)), v30), v31);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), v32), v133), v33), v34);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v136, v35), vorrq_s8(v136, v36)), v36), v37);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), a12);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), a11);
  v143.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v51)));
  *(v21 + v38) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v24 + v38 - 7)), 0x1B1B1B1B1B1B1B1BLL), *&vqtbl4q_s8(v143, *&STACK[0x15C0])));
  return (*(v25 + 8 * (((v22 != a1) * a9) ^ v20)))((a1 + 8), a2, (a3 - 8), (a4 - 8), (a5 - 8), (a6 - 8), (a7 - 8));
}

uint64_t sub_100042D48@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v23 = (v9 + a7);
  v24 = STACK[0x18F0] + v23;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (a9 | (2 * (v25 + v21))) - (v25 + v21) + a4;
  v27 = v26 ^ v16;
  v28 = v26 ^ v20;
  v29 = __ROR8__(v27, 8);
  v30 = (v15 - ((v29 + v28) | v15) + ((v29 + v28) | a5)) ^ a6;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v22 - ((v32 + v31) | v22) + ((v32 + v31) | v11)) ^ 0xB50EA603A4FF9E2;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) & 0xE7AB20C83DF53F52) - (v35 + v34) + v13) ^ v12;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v14 - ((v38 + v37) | v14) + ((v38 + v37) | v18)) ^ v19;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a1;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a3;
  *(STACK[0x18B0] + v23) = *v24 ^ v17 ^ (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * (v24 & 7u)));
  return (*(STACK[0x1708] + 8 * (((v9 - 1 != a2) * a8) ^ (v10 - 509))))();
}

uint64_t sub_100042EE8()
{
  v1 = STACK[0x1700] + 1185;
  v2 = STACK[0x1700] - 5890;
  STACK[0x18F0] = STACK[0x2DE0];
  return (*(v0 + 8 * (v1 + v2 + 557)))();
}

uint64_t sub_100042F18()
{
  v1 = STACK[0x1700];
  STACK[0x2068] = STACK[0x3D10];
  return (*(v0 + 8 * (v1 - 2188)))();
}

uint64_t sub_100042FAC()
{
  STACK[0x2068] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x2374]) = 1443455193;
  return (*(v1 + 8 * (v0 - 4245)))();
}

uint64_t sub_10004308C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1B88] = 0x51CE20ABD81C933BLL;
  STACK[0x1CD0] = 0x1AA1B925F2471A0ELL;
  return (*(v2 + 8 * ((((v1 - 3622) ^ (v1 + 1105) ^ 0x1E64) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_100043164()
{
  v1 = STACK[0x1700];
  STACK[0x27C0] = STACK[0x3630];
  return (*(v0 + 8 * (v1 + 890)))();
}

uint64_t sub_1000431E8()
{
  STACK[0x27C0] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x2114]) = 1443455193;
  return (*(v1 + 8 * (v0 - 2486)))();
}

uint64_t sub_100043298@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2E10] = 0x51CE20ABD81C933BLL;
  STACK[0x2058] = 0x1D4D73F3D9F9C658;
  return (*(v2 + 8 * (((((v1 - 7689) | 0x1072) - 6208) * (a1 != 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_100043304@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1236501623;
  STACK[0x1E80] = STACK[0x8E0];
  LODWORD(STACK[0x2A08]) = 21;
  return (*(v2 + 8 * (v1 - 4727)))();
}

uint64_t sub_100043370()
{
  v1 = STACK[0x1700];
  STACK[0x27C0] = STACK[0x3650];
  return (*(v0 + 8 * (v1 - 1560)))();
}

uint64_t sub_100043408()
{
  STACK[0x27C0] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x2114]) = 1443455193;
  return (*(v1 + 8 * (v0 - 2458)))();
}

uint64_t sub_1000434B8()
{
  v2 = STACK[0x2180];
  STACK[0x23E0] = STACK[0x2180];
  return (*(v1 + 8 * ((49 * ((((v0 - 2559) ^ 0x1DEB ^ (v2 == 0x1138F6A92264F486)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100043514@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 0x1138F6A92264F47ELL);
  STACK[0x2F08] = 0x51CE20ABD81C933BLL;
  STACK[0x2D10] = 0x1551983481FD8416;
  return (*(v2 + 8 * (((v3 == 0x5A0411E37F4B9882) * ((v1 + 4841) ^ 0x1E58 ^ (v1 + 22145210) & 0xFEAE17B7)) ^ v1)))();
}

uint64_t sub_1000435A8()
{
  v2 = *(STACK[0x23E0] - 0x1138F6A92264F486);
  STACK[0x2538] = 0x51CE20ABD81C933BLL;
  STACK[0x2E28] = 0x5E486119015A244;
  return (*(v1 + 8 * (((v2 == 0x5A0411E37F4B9882) * ((v0 - 4727) ^ 0x629)) ^ (v0 + 1693))))();
}

uint64_t sub_100043638@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1317731269;
  STACK[0x1E80] = STACK[0xC10];
  LODWORD(STACK[0x2A08]) = 11;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10004367C()
{
  v1 = STACK[0x1700];
  STACK[0x2068] = STACK[0x3D30];
  return (*(v0 + 8 * (v1 - 3332)))();
}

uint64_t sub_100043790()
{
  v2 = STACK[0x1CC8];
  STACK[0x1B78] = STACK[0x1CC8];
  return (*(v1 + 8 * (((v2 == 0x1138F6A92264F486) * (518 * (v0 ^ 0x18B9) + ((v0 - 563550782) & 0x219719FF) - 8766)) ^ v0)))();
}

uint64_t sub_100043804@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 0x1138F6A92264F47ELL);
  STACK[0x3180] = 0x51CE20ABD81C933BLL;
  STACK[0x1C40] = 0x2AD718485C838536;
  return (*(v2 + 8 * (((v3 == 0x5A0411E37F4B9882) * (v1 - 8771 + 627 * (v1 ^ 0xA14))) ^ v1)))();
}

uint64_t sub_10004388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X8>)
{
  STACK[0x2438] = a7;
  LODWORD(STACK[0x3028]) = 1394307299;
  STACK[0x1E80] = STACK[0x310];
  LODWORD(STACK[0x2A08]) = 20;
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a5, a6, STACK[0x1700]);
}

uint64_t sub_1000438E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1700] - 4897;
  v5 = STACK[0x964];
  v6 = STACK[0x2CE8] - 0x510808E226CB14C4;
  STACK[0x3200] = *(v3 + 8 * SLODWORD(STACK[0x964]));
  return (*(v3 + 8 * ((v4 ^ 0xD68) + v5)))(a1, v6, a3, 0x69DE7D55A59849C0, 0x4B10C1552D33DB20, 0x44D17CEB6219CF1ELL, 0x6F4D4B6AAF66F045, 0x2C2D43784FC5A036);
}

uint64_t sub_1000439C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1700] ^ 0x1D23;
  v5 = STACK[0x95C];
  v6 = STACK[0x2AD8] - 0x510808E226CB14C4;
  STACK[0x3200] = *(v3 + 8 * SLODWORD(STACK[0x95C]));
  return (*(v3 + 8 * ((v4 + 2662) ^ v5)))(a1, v6, a3, 0x69DE7D55A59849C0, 0x4B10C1552D33DB20, 0x44D17CEB6219CF1ELL, 0x6F4D4B6AAF66F045, 0x2C2D43784FC5A036);
}

uint64_t sub_100043AAC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1317731269;
  STACK[0x1E80] = STACK[0x8C0];
  LODWORD(STACK[0x2A08]) = 22;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100043B54()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x278C)))();
  v3 = STACK[0x1708];
  STACK[0x2888] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_100043FD8()
{
  v1 = STACK[0x278];
  v2 = STACK[0x278] ^ 0x1AFB;
  STACK[0x2F30] = *(v0 + 8 * STACK[0x278]);
  return (*(v0 + 8 * (v1 + v2 - 998)))();
}

uint64_t sub_10004402C@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x3E4C]) = v1;
  STACK[0x3E50] = v2;
  v6 = a1 == 0x5A0411E37F4B9882 || v2 == 0x1E320D4A903DDFC9;
  return (*(v4 + 8 * ((60 * ((((v3 + 2442) ^ v6) & 1) == 0)) ^ v3)))();
}

uint64_t sub_1000440D0@<X0>(unint64_t *a1@<X8>)
{
  v4 = *a1;
  STACK[0x2AF8] = v4;
  return (*(v3 + 8 * ((v1 + 775) | ((((v4 == 0x51CE20ABD81C933BLL) ^ (-65 * (v1 ^ v2)) ^ 0x5B) & 1) << 6))))();
}

uint64_t sub_100044224@<X0>(__int16 a1@<W8>)
{
  v2 = STACK[0x1700] - 5350;
  LOWORD(STACK[0x359E]) = a1;
  return (*(v1 + 8 * (v2 | 0x407)))();
}

uint64_t sub_100044B1C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1700] - 1550;
  v3 = STACK[0x3DF8] + (a1 - 1443455193);
  STACK[0x35A0] = v3 + 10;
  v3 -= 0x7436CD6C9F536535;
  v4 = v3 < 0xCABC3882;
  v5 = v3 > STACK[0x3DF0] + 3401332866u;
  if (v4 != STACK[0x3DF0] > 0xFFFFFFFF3543C77DLL)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((229 * v5) ^ v2)))();
}

uint64_t sub_100044BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, int a6@<W8>)
{
  v8 = LOWORD(STACK[0x359E]);
  if (v8 == 49033)
  {
    return (*(v7 + 8 * ((21 * (a6 != ((a5 - 1194353922) & 0x47304FE7) + 1443454329)) ^ (a5 - 4503))))();
  }

  if (v8 != 30757 && v8 != 44155)
  {
    return sub_1000200EC(a1, a2, a3, a4);
  }

  STACK[0x2F50] = v6;
  return (*(v7 + 8 * (a5 - 4492)))();
}

uint64_t sub_100044D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = STACK[0x1700] + 999;
  v5 = STACK[0x3CC8] + (a3 - 1443455193);
  STACK[0x3518] = v5 + 10;
  v5 -= 0x7917D447049F3654;
  v6 = v5 < 0xC97584F0;
  v7 = v5 > STACK[0x3CC0] + 3379922160u;
  if (v6 != STACK[0x3CC0] > 0xFFFFFFFF368A7B0FLL)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((237 * v7) ^ v4)))(a1, a2, 0xDA182461BE0DA49ALL);
}

uint64_t sub_100044DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = LOWORD(STACK[0x3516]);
  if (v10 == 49033)
  {
    return (*(v9 + 8 * ((5366 * (a8 == ((4 * STACK[0x1700]) ^ 0x6270) + 1443454293)) ^ (STACK[0x1700] - 3069))))();
  }

  if (v10 != 30757 && v10 != 44155)
  {
    return sub_10004E148(a1, a2, a3, a4, a5, a6, a7);
  }

  v12 = STACK[0x1700];
  STACK[0x2820] = v8;
  return (*(v9 + 8 * (v12 - 3069)))();
}

uint64_t sub_1000451A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x1700] + 3136;
  v7 = STACK[0x3688] + (a5 - 1443455193);
  STACK[0x3220] = v7 + 10;
  v7 -= 0x7A09CA3ADF2A6013;
  v8 = v7 < 0x4E10EE40;
  v9 = v7 > STACK[0x3680] + 1309732416;
  if (v8 != STACK[0x3680] > 0xFFFFFFFFB1EF11BFLL)
  {
    v9 = v8;
  }

  return (*(v5 + 8 * ((98 * !v9) ^ v6)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_100045250@<X0>(int a1@<W7>, int a2@<W8>)
{
  v4 = LOWORD(STACK[0x321E]);
  if (v4 == 49033)
  {
    return (*(v3 + 8 * (((((a1 - 5490) | 0x61) - 831) * (a2 == 1443455197)) ^ (a1 - 3055))))();
  }

  if (v4 == 30757 || v4 == 44155)
  {
    STACK[0x2DA8] = v2;
    return (*(v3 + 8 * (a1 - 3055)))();
  }

  else
  {
    v6 = *(STACK[0x2BF0] - 0x1138F6A92264F486);
    STACK[0x26E0] = 0x51CE20ABD81C933BLL;
    STACK[0x1BC0] = 0xF4D64B98663A990;
    return (*(v3 + 8 * (((v6 != 0x5A0411E37F4B9882) * (772 * (a1 ^ 0x1878) - 4620)) ^ (a1 + 757))))();
  }
}

uint64_t sub_10004C398@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1394307299;
  STACK[0x1E80] = STACK[0x878];
  LODWORD(STACK[0x2A08]) = 12;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10004C3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3D88] + (a5 - 1443455193) - 0x7E14C97F3E2618EALL;
  v7 = v6 < 0x4CB7A16A;
  v8 = v6 > STACK[0x3D80] + 1287102826;
  if (STACK[0x3D80] > 0xFFFFFFFFB3485E95 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((39 * !v8) ^ (STACK[0x1700] - 3175))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004C494@<X0>(int a1@<W7>, int a2@<W8>)
{
  v6 = v4 + 10;
  v7 = LOWORD(STACK[0x356E]);
  if (v7 == 30757)
  {
    v8 = STACK[0x1E58];
    STACK[0x1F98] = v6;
    LODWORD(STACK[0x1BB0]) = a2;
    STACK[0x1C90] = v8 + v3 - 0x7E14C97F8ADDBA54;
    return (*(v5 + 8 * (((LODWORD(STACK[0x1F8C]) == a1 - 6270 || (*(STACK[0x24E0] - 0x1138F6A92264F40ALL) & 1) == 0) * (a1 - 6243)) ^ (a1 - 1936))))();
  }

  else if (v7 == 49033 || v7 == 44155)
  {
    STACK[0x1F98] = v6;
    LODWORD(STACK[0x1BB0]) = a2;
    return (*(v5 + 8 * v2))();
  }

  else
  {
    return sub_100055FF0();
  }
}

uint64_t sub_10004C538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = *(v8 - 0x1138F6A92264F486);
  STACK[0x2A78] = 0x51CE20ABD81C933BLL;
  STACK[0x2C98] = 0x7430CB354BE3109ELL;
  return (*(v9 + 8 * (((v10 == 0x5A0411E37F4B9882) * (a8 + ((a8 - 124) ^ 0xA1A) - 10848)) ^ (a8 - 124))))();
}

uint64_t sub_10004C5C8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1330043401;
  STACK[0x1E80] = STACK[0x210];
  LODWORD(STACK[0x2A08]) = 5;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10004C60C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1394307299;
  STACK[0x1E80] = STACK[0x2A8];
  LODWORD(STACK[0x2A08]) = 23;
  return (*(v2 + 8 * (v1 - 496)))();
}

uint64_t sub_10004C654@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x5A0411E37F4B9882) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_10004C6A4@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v4 - 0x1138F6A92264F422) ^ 0xCD47EDD8;
  v8 = (*(v4 - 0x1138F6A92264F40ELL) ^ 0xC57CCADA) - 287360082 + ((2 * *(v4 - 0x1138F6A92264F40ELL)) & 0xEBFFBEBE ^ 0x61062A0A);
  v9 = 301143701 * (((v5 - 240) & 0x695BF78D | ~((v5 - 240) | 0x695BF78D)) ^ 0xED0C9500);
  v10 = v5 - 240;
  *(v10 + 8) = a1;
  *(v10 + 24) = v7 - v9;
  *(v10 + 16) = v9 ^ 0x851992B0;
  *(v10 + 48) = v4 + 0x16E7A4B2981C1BC5;
  *(v10 + 56) = v1;
  *v10 = v8 ^ v9;
  *(v10 + 64) = (v3 + 1381) ^ v9;
  *(v10 + 40) = v2 + v9 + (((v3 + 712) | 0x54C) ^ 0xE824238A);
  *(v10 + 32) = a1;
  v11 = (*(v6 + 8 * (v3 ^ 0x2C1D)))(v5 - 240);
  return (*(STACK[0x1708] + 8 * v3))(v11);
}

uint64_t sub_10004C8A8()
{
  v3 = v0 - 3254;
  v4 = 11 * ((v0 - 3254) ^ 0x1A89);
  v5 = 3135 * ((v0 - 3254) ^ 0x1BD1);
  STACK[0x3170] = v1 - 0x1138F6A92264F47ELL;
  v6 = STACK[0x1C90];
  LODWORD(STACK[0x2874]) = STACK[0x1BB0];
  STACK[0x23F8] = v6;
  STACK[0x1F58] = 0x3D96E241E65B030;
  LODWORD(STACK[0x2470]) = 1443455193;
  STACK[0x2860] = 0x5B67E4B9D3C4B062;
  STACK[0x2558] = 0;
  v7 = (*(v2 + 8 * ((v0 - 3254) ^ 0x3252)))(16);
  v8 = STACK[0x1708];
  STACK[0x2928] = v7 + 0x5A0411E37F4B9882;
  return (*(v8 + 8 * (((((v4 ^ (v7 == 0)) & 1) == 0) * (v5 ^ 0x185C)) ^ v3)))();
}

uint64_t sub_10004C9B4(void *a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10004CA74()
{
  v2 = STACK[0x23F8];
  STACK[0x2228] = STACK[0x23F8];
  return (*(v1 + 8 * (((((v0 + 37584493) & 0xFDC26F9F ^ 0xFFFFE916) + (v0 ^ 0x38EF)) * (v2 == 0)) | v0)))();
}

uint64_t sub_10004CAD4()
{
  STACK[0x3DB0] = v1;
  STACK[0x3DB8] = v0;
  return (*(v3 + 8 * ((((((v2 - 3086) | 0x101) ^ 0x1757) + ((v2 + 2452) | 0x4C)) * (v1 - v0 + 0x3D96E241E65B026 < 0xFFFFFFFFFFFFFFF6)) ^ v2)))();
}

uint64_t sub_10004DCDC()
{
  v2 = STACK[0x1700];
  STACK[0x2860] = v0;
  return (*(v1 + 8 * (v2 - 4969)))();
}

uint64_t sub_10004DCF8()
{
  v1 = STACK[0x1700] - 2926;
  v2 = LOWORD(STACK[0x353E]);
  STACK[0x1C40] = STACK[0x3540];
  return (*(v0 + 8 * ((11159 * (v2 == 49033)) ^ v1)))();
}

uint64_t sub_10004DD44@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1700] - 791;
  LODWORD(STACK[0x23B4]) = a1;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_10004DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x1B78] - 0x1138F6A92264F486);
  STACK[0x2910] = 0x51CE20ABD81C933BLL;
  STACK[0x3168] = 0x4DB3C04EF3268E6DLL;
  return (*(v8 + 8 * (((v9 != 0x5A0411E37F4B9882) * ((v7 + 888663585) & 0xCB07FF67 ^ 0x650)) ^ (v7 + 1672))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10004DE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  STACK[0x2438] = a5;
  LODWORD(STACK[0x3028]) = 1394307299;
  STACK[0x1E80] = STACK[0x490];
  LODWORD(STACK[0x2A08]) = 2;
  return (*(v6 + 8 * v5))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004DE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3CA8] + (a5 - 1443455193) - 0x36E5A2BC3A2355F3;
  v7 = v6 < 0x3149ABDC;
  v8 = v6 > STACK[0x3CA0] + 826911708;
  if (STACK[0x3CA0] > 0xFFFFFFFFCEB65423 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((251 * !v8) ^ (STACK[0x1700] - 1540))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004DF08@<X0>(int a1@<W7>, int a2@<W8>)
{
  v6 = v4 + 10;
  v7 = LOWORD(STACK[0x3514]);
  if (v7 == 30757)
  {
    v9 = STACK[0x2428];
    STACK[0x21A0] = v6;
    LODWORD(STACK[0x2704]) = a2;
    STACK[0x21E8] = v9 + v3 - 0x36E5A2BC6B6D01CFLL;
    return (*(v5 + 8 * v2))();
  }

  else if (v7 == 49033 || v7 == 44155)
  {
    STACK[0x21A0] = v6;
    LODWORD(STACK[0x2704]) = a2;
    return (*(v5 + 8 * (a1 - 2799)))();
  }

  else
  {
    return sub_1000F9A9C();
  }
}

uint64_t sub_10004DF64()
{
  v1 = STACK[0x1700] - 3924;
  v2 = LOWORD(STACK[0x354E]);
  STACK[0x3168] = STACK[0x3550];
  return (*(v0 + 8 * ((11287 * (v2 == 49033)) ^ v1)))();
}

uint64_t sub_10004DFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3C48] + (a5 - 1443455193) - 0x568FFFD81CC134AELL;
  v7 = v6 < 0xEDE4ACDB;
  v8 = v6 > STACK[0x3C40] + 3991186651u;
  if (STACK[0x3C40] > 0xFFFFFFFF121B5324 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((194 * v8) ^ (STACK[0x1700] - 111))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004E08C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x350E]);
  if (v6 == 30757)
  {
    v8 = STACK[0x26F8];
    STACK[0x2BC8] = v5;
    LODWORD(STACK[0x1B54]) = a2;
    return (*(v4 + 8 * (((v8 + v2 - 0x568FFFD90AA5E189 == 0) * (a1 - 6264)) ^ (a1 - 1022))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x2BC8] = v5;
    return (*(v4 + 8 * (a1 - 1016)))();
  }

  else
  {
    return sub_1000F8B9C();
  }
}

uint64_t sub_10004E0DC(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x1700] + 1034;
  v4 = LOWORD(STACK[0x3516]);
  STACK[0x2820] = STACK[0x3518];
  return (*(v2 + 8 * ((13391 * (v4 == 49033)) ^ v3)))(a1, a2, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x26A8] - 0x1138F6A92264F486);
  v10 = STACK[0x2510];
  STACK[0x2AF0] = STACK[0x2510];
  STACK[0x2C50] = 0x51CE20ABD81C933BLL;
  STACK[0x2018] = 0x3E38AFA539089850;
  v12 = v9 == 0x5A0411E37F4B9882 || v10 == 0;
  return (*(v8 + 8 * (((v7 ^ 0x79 ^ v12) & 1 | (32 * ((v7 ^ 0x79 ^ v12) & 1))) ^ (v7 - 102))))(a1, a2, a3, a4, a3, a6, a7, STACK[0x1700]);
}

uint64_t sub_10004E1E8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1317731269;
  STACK[0x1E80] = STACK[0x458];
  LODWORD(STACK[0x2A08]) = 10;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10004E24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x36C8] + (a5 - 1443455193) - 0x2AD95AA856C66BFFLL;
  v7 = v6 < 0x696CD9E5;
  v8 = v6 > STACK[0x36C0] + 1768741349;
  if (STACK[0x36C0] > 0xFFFFFFFF9693261ALL != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((116 * v8) ^ (STACK[0x1700] - 1995))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004E2F4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x324A]);
  if (v6 == 30757)
  {
    v8 = STACK[0x30D0];
    STACK[0x2118] = v5;
    LODWORD(STACK[0x2A3C]) = a2;
    return (*(v4 + 8 * (((v8 + v2 - 0x2AD95AA8C03345E4 == 0) * ((a1 - 531667267) & 0x1FB09FCF ^ 0x20FB)) ^ (a1 + 1906))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x2118] = v5;
    return (*(v4 + 8 * (a1 - 3985)))();
  }

  else
  {
    return sub_1000F8FDC();
  }
}

uint64_t sub_10004E34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x36E8] + (a5 - 1443455193) - 0x28EEC6459C83F80;
  v7 = v6 < 0x64566FEF;
  v8 = v6 > STACK[0x36E0] + 1683386351;
  if (STACK[0x36E0] > 0xFFFFFFFF9BA99010 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((STACK[0x1700] + 770) ^ (2 * !v8))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004E3F4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x324C]);
  if (v6 == 30757)
  {
    v8 = STACK[0x1EA0];
    STACK[0x2190] = v5;
    LODWORD(STACK[0x1DC4]) = a2;
    return (*(v4 + 8 * (((v8 + v2 - 0x28EEC64BE1EAF6FLL == 0) * (a1 - 6056)) ^ (a1 - 3377))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x2190] = v5;
    return (*(v4 + 8 * (a1 - 3299)))();
  }

  else
  {
    return sub_1000F9720();
  }
}

uint64_t sub_10004E44C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1700] - 1522;
  v3 = STACK[0x3DE8] + (a1 - 1443455193);
  STACK[0x3590] = v3 + 10;
  v3 -= 0x5E897A66D350CA23;
  v4 = v3 < 0xF9790D9A;
  v5 = v3 > STACK[0x3DE0] + 4185460122u;
  if (v4 != STACK[0x3DE0] > 0xFFFFFFFF0686F265)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * (!v5 | v2)))();
}

uint64_t sub_10004E4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, int a6@<W8>)
{
  v8 = LOWORD(STACK[0x358E]);
  if (v8 == 30757 || v8 == 49033)
  {
    STACK[0x23A0] = v6;
    return (*(v7 + 8 * ((5594 * (v8 == (a5 - 27651))) ^ (a5 - 3068))))(a1, a2, a3, a4);
  }

  else if (v8 == 44155)
  {
    return (*(v7 + 8 * ((((7 * (a5 ^ 0x18EC)) ^ 0x11CF) * (a6 == 1443455201)) | (a5 - 3068))))(a1, a2, a3, a4);
  }

  else
  {
    return sub_10004F940(a1, a2, a3, a4);
  }
}

uint64_t sub_10004E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  v6 = STACK[0x1700] - 3027;
  v7 = LOWORD(STACK[0x322E]);
  STACK[0x1BC0] = STACK[0x3230];
  return (*(v4 + 8 * ((7395 * (v7 == (v5 - 22773))) ^ v6)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004E664@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x274C]) = a1;
  v3 = *(STACK[0x1E30] - 0x510808E226CB1494) != (((v1 - 77) & 0xA1 ^ 0x35) + ((v1 - 90) & 0x9F));
  return (*(v2 + 8 * (((8 * v3) | (v3 << 7)) ^ v1)))();
}

uint64_t sub_10004E730@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + 1049;
  *(a1 - 0x510808E226CB148CLL) = STACK[0x274C];
  *(a1 - 0x510808E226CB1488) = (v4 ^ 0xCAA) + v1;
  return (*(v3 + 8 * v4))();
}

uint64_t sub_10004E788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3C88] + (a5 - 1443455193) - 0x1ED4099EF296F59ELL;
  v7 = v6 < 0x4E02A471;
  v8 = v6 > STACK[0x3C80] + 1308796017;
  if (STACK[0x3C80] > 0xFFFFFFFFB1FD5B8ELL != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((510 * v8) ^ (STACK[0x1700] - 2460))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004E830@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x3512]);
  if (v6 == 30757)
  {
    v8 = STACK[0x2D40];
    STACK[0x1EE0] = v5;
    LODWORD(STACK[0x2704]) = a2;
    return (*(v4 + 8 * (((v8 + v2 - 0x1ED4099F40999A0FLL != 0) * ((a1 + 689448574) & 0xD6E7DBDF ^ 0x1AE4)) ^ (a1 + 4192))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x1EE0] = v5;
    return (*(v4 + 8 * (a1 + 543)))();
  }

  else
  {
    return sub_1000F95DC();
  }
}

uint64_t sub_10004E888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3708] + (a5 - 1443455193) - 0x6ECA154BDF57B500;
  v7 = v6 < 0xC26FB85;
  v8 = v6 > STACK[0x3700] + 203881349;
  if (STACK[0x3700] > 0xFFFFFFFFF3D9047ALL != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((240 * !v8) ^ (STACK[0x1700] + 242))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004E938@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x324E]);
  if (v6 == 30757)
  {
    v8 = STACK[0x3150];
    STACK[0x2D98] = v5;
    LODWORD(STACK[0x1DC4]) = a2;
    return (*(v4 + 8 * (((v8 + v2 - 0x6ECA154BEB7EB085 == 0) * (a1 - 6034)) ^ (a1 + 3042))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x2D98] = v5;
    return (*(v4 + 8 * (a1 - 1696)))();
  }

  else
  {
    return sub_1000F9884();
  }
}

uint64_t sub_10004E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700] - 685;
  v6 = LOWORD(STACK[0x3526]);
  STACK[0x2018] = STACK[0x3528];
  return (*(v4 + 8 * ((2128 * (v6 == 49033)) ^ v5)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004EA10@<X0>(int a1@<W7>, int a2@<W8>)
{
  *v2 = a2;
  v4 = *(v3 + 8 * (a1 - 2852));
  LODWORD(STACK[0x4298]) = (a1 - 1949440132) & 0x743221FD;
  return v4();
}

uint64_t sub_10004EA44()
{
  v1 = STACK[0x4298];
  LODWORD(STACK[0x429C]) = STACK[0x4298];
  LODWORD(STACK[0x42A0]) = v1 - 5474;
  LODWORD(STACK[0x42A4]) = (v1 - 5622) | 4;
  STACK[0x42A8] = STACK[0x2AD8] - 0x510808E226CB14C4;
  v2 = STACK[0x27B8];
  STACK[0x42B0] = STACK[0x27B8];
  v3 = STACK[0x1DE8];
  STACK[0x42B8] = STACK[0x1DE8];
  v4 = STACK[0x1B28];
  v5 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x3CE0] = v5;
  v4 += 32;
  STACK[0x42C0] = v4;
  STACK[0x1B28] = v4;
  STACK[0x2FF8] = v2;
  STACK[0x2E98] = v3;
  STACK[0x4188] = v5;
  LOBYTE(STACK[0x4187]) = 0;
  v6 = *(v0 + 8 * (v1 ^ 0x8B4));
  STACK[0x4178] = 32;
  STACK[0x4170] = v6;
  return (*(v0 + 8 * (LODWORD(STACK[0x429C]) ^ 0x8E0)))();
}

uint64_t sub_10004EB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3E98] + (a5 - 1443455193) - 0x6F98009118E4F946;
  v7 = v6 < 0x2D4EF23B;
  v8 = v6 > STACK[0x3E90] + 760148539;
  if (STACK[0x3E90] > 0xFFFFFFFFD2B10DC4 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((1019 * v8) ^ (STACK[0x1700] + 2425))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = v8 + 10;
  v12 = LOWORD(STACK[0x31E4]);
  if (v12 == 49033 || v12 == 44155)
  {
    STACK[0x2830] = v11;
    return (*(v10 + 8 * ((214 * (STACK[0x2A60] == 0)) ^ (a8 + 1499))))();
  }

  else if (v12 == 30757)
  {
    STACK[0x2160] = STACK[0x1B98] + v9 - 0x6F9800914633EB81;
    return (*(v10 + 8 * (a8 - 3330)))();
  }

  else
  {
    return sub_1000F9D34();
  }
}

uint64_t sub_10004EC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3648] + (a5 - 1443455193) - 0x1D4D73F39524B167;
  v7 = v6 < 0x44D514E7;
  v8 = v6 > STACK[0x3640] + 1154815207;
  if (STACK[0x3640] > 0xFFFFFFFFBB2AEB18 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((26 * !v8) ^ (STACK[0x1700] - 3731))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004ECF4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v6 = v4 + 10;
  v7 = LOWORD(STACK[0x31E2]);
  if (v7 == 30757)
  {
    v9 = v3 - 0x1D4D73F3D9F9C64ELL;
    v10 = STACK[0x1B58];
    STACK[0x2058] = v6;
    LODWORD(STACK[0x2114]) = a2;
    STACK[0x18F0] = v10 + v9;
    return (*(v5 + 8 * (((v10 + v9 != 0) * (((a1 - 5502) | 0x2082) ^ 0x2390)) ^ (a1 + 3206))))();
  }

  else if (v7 == 49033 || v7 == 44155)
  {
    STACK[0x2058] = v6;
    return (*(v5 + 8 * v2))();
  }

  else
  {
    return sub_100043408();
  }
}

uint64_t sub_10004ED4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3628] + (a5 - 1443455193) - 0x4408DE0CFC978D13;
  v7 = v6 < 0xA7882366;
  v8 = v6 > STACK[0x3620] + 2810717030u;
  if (STACK[0x3620] > 0xFFFFFFFF5877DC99 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * (((2 * !v8) | (16 * !v8)) ^ (STACK[0x1700] - 1496))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004EDEC@<X0>(int a1@<W7>, int a2@<W8>)
{
  v6 = v4 + 10;
  v7 = LOWORD(STACK[0x31D6]);
  if (v7 == 30757)
  {
    v9 = STACK[0x2D08] + v3 - 0x4408DE0DA41FB079;
    STACK[0x18F0] = v9;
    STACK[0x1E38] = v6;
    LODWORD(STACK[0x2114]) = a2;
    return (*(v5 + 8 * (((v9 == 0) * (((a1 - 3438) | 0x10E8) - 7133)) ^ (a1 + 522))))();
  }

  else if (v7 == 49033 || v7 == 44155)
  {
    STACK[0x1E38] = v6;
    return (*(v5 + 8 * v2))();
  }

  else
  {
    return sub_1000431E8();
  }
}

uint64_t sub_10004EE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = STACK[0x3D78] + (a3 - 1443455193) - 0x7BA0A8CB6C896CC0;
  v5 = v4 < 0xBF3597FA;
  v6 = v4 > STACK[0x3D70] + 3207960570u;
  if (STACK[0x3D70] > 0xFFFFFFFF40CA6805 != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((465 * v6) ^ (STACK[0x1700] + 4224))))(a1, a2, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004EF18@<X0>(int a1@<W8>)
{
  v2 = STACK[0x3D28] + (a1 - 1443455193) - 0x1AA1B9254081F1D3;
  v3 = v2 < 0xB1C52831;
  v4 = v2 > STACK[0x3D20] + 2982488113u;
  if (STACK[0x3D20] > 0xFFFFFFFF4E3AD7CELL != v3)
  {
    v4 = v3;
  }

  return (*(v1 + 8 * ((168 * !v4) ^ (STACK[0x1700] + 2815))))();
}

uint64_t sub_10004EFB4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x353C]);
  if (v6 == 30757)
  {
    v8 = v2 - 0x1AA1B925F2471A04;
    v9 = STACK[0x2EC0];
    STACK[0x1CD0] = v5;
    LODWORD(STACK[0x2374]) = a2;
    STACK[0x18F0] = v9 + v8;
    return (*(v4 + 8 * (((v9 + v8 != 0) * ((a1 - 3332) ^ 0x4A6)) ^ (a1 + 3933))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x1CD0] = v5;
    return (*(v4 + 8 * (a1 - 4686)))();
  }

  else
  {
    STACK[0x2068] = 0x2B1A0449E8A6C928;
    LODWORD(STACK[0x2374]) = 1443455193;
    return (*(v4 + 8 * (a1 - 199)))();
  }
}

uint64_t sub_10004F068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x1CEC]) = v5;
  STACK[0x1CF8] = *(v6 + 8 * (v4 - 5280));
  return (*(v6 + 8 * (v4 - 5584 + v4 - 5280)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004F0AC()
{
  v1 = (STACK[0x1700] + 554258045) & 0xDEF69FF6;
  v2 = STACK[0x1700] - 4492;
  v3 = LOWORD(STACK[0x359E]);
  STACK[0x2F50] = STACK[0x35A0];
  return (*(v0 + 8 * (((v3 == 49033) * (v1 ^ 0xE0A)) ^ v2)))();
}

uint64_t sub_10004F160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x36A8] + (a5 - 1443455193) - 0x43BD7D37A99EDEA4;
  v7 = v6 < 0x24BC1A2D;
  v8 = v6 > STACK[0x36A0] + 616307245;
  if (STACK[0x36A0] > 0xFFFFFFFFDB43E5D2 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((235 * v8) ^ (STACK[0x1700] - 3583))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004F208@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x323E]);
  if (v6 == 30757)
  {
    v8 = STACK[0x3118] + v2 - 0x43BD7D37CE5AF8D1;
    STACK[0x2B38] = v5;
    LODWORD(STACK[0x2A3C]) = a2;
    return (*(v4 + 8 * (((v8 == 0) * (((a1 - 5534) | 0x1102) - 4692)) ^ (a1 - 902))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x2B38] = v5;
    LODWORD(STACK[0x2A3C]) = a2;
    return (*(v4 + 8 * (a1 - 776)))();
  }

  else
  {
    return sub_1000F88EC();
  }
}

uint64_t sub_10004F264@<X0>(int a1@<W8>)
{
  v2 = STACK[0x3D08] + (a1 - 1443455193) - 0x921E7F51BE257C4;
  v3 = v2 < 0x89B72B91;
  v4 = v2 > STACK[0x3D00] + 2310482833u;
  if (STACK[0x3D00] > 0xFFFFFFFF7648D46ELL != v3)
  {
    v4 = v3;
  }

  return (*(v1 + 8 * ((231 * !v4) ^ (STACK[0x1700] + 3808))))();
}

uint64_t sub_10004F2F4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x353A]);
  if (v6 == 30757)
  {
    v8 = v2 - 0x921E7F5A5998355;
    v9 = STACK[0x2210];
    STACK[0x2FC8] = v5;
    LODWORD(STACK[0x2374]) = a2;
    STACK[0x18F0] = v9 + v8;
    return (*(v4 + 8 * ((4 * (((v9 + v8 == 0) ^ (a1 + 1)) & 1)) & 0xF7 | (8 * (((v9 + v8 == 0) ^ (a1 + 1)) & 1)) | (a1 + 2322))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x2FC8] = v5;
    return (*(v4 + 8 * (a1 + 2322)))();
  }

  else
  {
    return sub_100042FAC();
  }
}

uint64_t sub_10004F344@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1700] - 4969;
  LODWORD(STACK[0x2470]) = a1;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_10004F360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v6 = STACK[0x3C68] + (a5 - 1443455193) - 0x1E27F5158734843FLL;
  v7 = v6 < 0x1B35CD7;
  v8 = v6 > STACK[0x3C60] + 28531927;
  if (STACK[0x3C60] > 0xFFFFFFFFFE4CA328 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((490 * !v8) ^ (STACK[0x1700] + 3147))))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10004F410@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = v3 + 10;
  v6 = LOWORD(STACK[0x3510]);
  if (v6 == 30757)
  {
    v8 = STACK[0x1A80];
    STACK[0x2990] = v5;
    LODWORD(STACK[0x1B54]) = a2;
    return (*(v4 + 8 * (((v8 + v2 - 0x1E27F51588E7E116 == 0) * (((a1 + 867108705) & 0xCC50FAF7) - 6827)) ^ (a1 + 3020))))();
  }

  else if (v6 == 49033 || v6 == 44155)
  {
    STACK[0x2990] = v5;
    return (*(v4 + 8 * (a1 + 3147)))();
  }

  else
  {
    return sub_1000F92B4();
  }
}

uint64_t sub_10004F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x1F58] = STACK[0x3580];
  v10 = LODWORD(STACK[0x3574]) != 1443455193 || LOWORD(STACK[0x357A]) != ((a8 + 2647) ^ 0x5AF0);
  return (*(v8 + 8 * ((39 * v10) ^ (a8 - 381))))();
}

uint64_t sub_10004F4FC@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x357C];
  STACK[0x23B8] = a1;
  LODWORD(STACK[0x3DC0]) = v3;
  LOWORD(STACK[0x3DC6]) = v2;
  LODWORD(STACK[0x3DC8]) = v5;
  LODWORD(STACK[0x3DCC]) = STACK[0x2470];
  STACK[0x3DD0] = STACK[0x2860];
  STACK[0x2348] = STACK[0x2558];
  return (*(v4 + 8 * (((((v1 + 1356299305) & 0xAF28797F) + ((v1 - 1910031064) & 0x71D8BE9F) - 14046) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_10004F5F8()
{
  v2 = (*(v1 + 8 * (v0 + 7844)))(32);
  v3 = STACK[0x1708];
  STACK[0x3048] = v2 + 0x51CE20ABD81C933BLL;
  return (*(v3 + 8 * ((((v0 ^ (v2 == 0)) & 1) * (v0 ^ 0xAE4)) ^ v0)))();
}

uint64_t sub_10004F670(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  STACK[0x3DD8] = v2;
  *(a1 + 16) = v1 + 540060154 + (((v3 ^ 0x1634) - 7131) | 0x11) - 287;
  v6 = (*(v4 + 8 * (v3 ^ 0x235C)))((v1 - 1443455183));
  v7 = STACK[0x1708];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * ((494 * (v6 != 0)) ^ v3 ^ 0x1634)))();
}

uint64_t sub_10004F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v11 = v9 + 10;
  v12 = LOWORD(STACK[0x355E]);
  if (v12 == 30757)
  {
    v15 = STACK[0x2148];
    STACK[0x2A50] = v11;
    LODWORD(STACK[0x1BB4]) = a8;
    STACK[0x2390] = v15 + v8 - 0x7BA0A8CC2BBF04BALL;
    v16 = *(STACK[0x24E0] - 0x1138F6A92264F472);
    if (v16 == 408423770)
    {
      return (*(v10 + 8 * (STACK[0x1700] - 4714)))(a1, a2, a3, a4, a3);
    }

    else if (v16 == 408423771)
    {
      return (*(v10 + 8 * (((STACK[0x1700] - 3563) ^ 0x1735) + STACK[0x1700] - 5508)))(a1, a2, a3, a4, a3);
    }

    else
    {
      return sub_100055FF0();
    }
  }

  else
  {
    v13 = STACK[0x1700];
    if (v12 == 49033 || v12 == 44155)
    {
      STACK[0x2A50] = v11;
      LODWORD(STACK[0x1BB4]) = a8;
      return (*(v10 + 8 * (v13 - 4137)))(a1, a2, a3, a4, a3, a6, a7, v13);
    }

    else
    {
      return sub_10004EEE4(a1, a2, a3, a4, a5, a6, a7);
    }
  }
}

uint64_t sub_10004F878()
{
  v2 = STACK[0x1700];
  STACK[0x2008] = v0;
  return (*(v1 + 8 * (v2 - 678)))();
}

uint64_t sub_10004FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 735;
  v10 = (*(v8 + 8 * ((a8 - 735) ^ 0x3C1E)))(((a8 - 5695) ^ 0xA9F69D18) + LODWORD(STACK[0x1B54]));
  v11 = STACK[0x1708];
  STACK[0x3C50] = v10;
  if (v10)
  {
    v12 = 68588956;
  }

  else
  {
    v12 = 68545947;
  }

  LODWORD(STACK[0x3C5C]) = v12;
  return (*(v11 + 8 * ((41 * (v10 == 0)) ^ v9)))();
}

uint64_t sub_10004FD84()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x368A)))(LODWORD(STACK[0x2A3C]) + (v0 ^ 0x1D8B) + ((v0 + 1690697891) & 0x9B39E77F ^ 0xA9F69B89));
  v4 = STACK[0x1708];
  STACK[0x36D0] = v3;
  if (v3)
  {
    v5 = 68588956;
  }

  else
  {
    v5 = v1;
  }

  LODWORD(STACK[0x36DC]) = v5;
  return (*(v4 + 8 * ((31 * (v3 == 0)) ^ v0)))();
}

uint64_t sub_10004FF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a8 + 715;
  v11 = (*(v9 + 8 * ((a8 + 715) ^ 0x32C8)))(LODWORD(STACK[0x1DC4]) + a8 - 5594 + ((a8 + 715) ^ 0xA9F687CA));
  v12 = STACK[0x1708];
  STACK[0x36F0] = v11;
  if (v11)
  {
    v13 = 68588956;
  }

  else
  {
    v13 = v8;
  }

  LODWORD(STACK[0x36FC]) = v13;
  return (*(v12 + 8 * ((2 * (v11 == 0)) | (4 * (v11 == 0)) | v10)))();
}

uint64_t sub_100050090()
{
  v3 = (*(v2 + 8 * (v0 + 3749)))(((967 * (v0 ^ 0x1AD8)) ^ 0xA9F6903B) + LODWORD(STACK[0x2704]));
  v4 = STACK[0x1708];
  STACK[0x3C90] = v3;
  if (v3)
  {
    v5 = 68588956;
  }

  else
  {
    v5 = v1;
  }

  LODWORD(STACK[0x3C9C]) = v5;
  return (*(v4 + 8 * (((v3 == 0) * (v0 - 6836)) ^ v0)))();
}

uint64_t sub_100050204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a8 - 1273;
  v11 = (*(v9 + 8 * (a8 + 4355)))(LODWORD(STACK[0x1DC4]) - 1443455193 + ((a8 - 5734) | 0x80u) - 664);
  v12 = STACK[0x1708];
  STACK[0x3710] = v11;
  if (v11)
  {
    v13 = 68588956;
  }

  else
  {
    v13 = v8;
  }

  LODWORD(STACK[0x371C]) = v13;
  return (*(v12 + 8 * (((4 * (v11 != 0)) | (8 * (v11 != 0))) ^ v10)))();
}

uint64_t sub_100050394()
{
  v3 = (*(v2 + 8 * (v1 + 1535)))(((v1 - 8744) ^ 0xA9F69E7D) + LODWORD(STACK[0x2114]));
  v4 = STACK[0x1708];
  STACK[0x3650] = v3 + 0x2B1A0449E8A6C928;
  if (v3)
  {
    v5 = 68588956;
  }

  else
  {
    v5 = v0;
  }

  LODWORD(STACK[0x365C]) = v5;
  return (*(v4 + 8 * (((4 * (v3 != 0)) | (32 * (v3 != 0))) ^ v1)))();
}

uint64_t sub_10005051C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3279)))((LODWORD(STACK[0x2114]) - 1443455193));
  v3 = STACK[0x1708];
  STACK[0x3630] = v2 + 0x2B1A0449E8A6C928;
  if (v2)
  {
    v4 = 68588956;
  }

  else
  {
    v4 = 68545947;
  }

  LODWORD(STACK[0x363C]) = v4;
  return (*(v3 + 8 * ((1991 * (((v2 == 0) ^ (63 * (v0 ^ 0xFD) - 58)) & 1)) ^ v0)))();
}

uint64_t sub_10005077C()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x22FB)))(((v0 + 1895732799) & 0x8F015FCF ^ 0xA9F6989E ^ (11 * (v0 ^ 0xBEA))) + LODWORD(STACK[0x2374]));
  v4 = STACK[0x1708];
  STACK[0x3D30] = v3 + 0x2B1A0449E8A6C928;
  if (v3)
  {
    v5 = 68588956;
  }

  else
  {
    v5 = v1;
  }

  LODWORD(STACK[0x3D3C]) = v5;
  return (*(v4 + 8 * ((239 * (v3 != 0)) ^ v0)))();
}

uint64_t sub_10005095C()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x3A63)))(LODWORD(STACK[0x2A3C]) - 1443455193 + ((v0 - 966248460) & 0x3997B6BBu) - 658);
  v4 = STACK[0x1708];
  STACK[0x36B0] = v3;
  if (v3)
  {
    v5 = 68588956;
  }

  else
  {
    v5 = v1;
  }

  LODWORD(STACK[0x36BC]) = v5;
  return (*(v4 + 8 * (((v3 == 0) * (v0 ^ 0x1418)) ^ v0)))();
}

uint64_t sub_100050ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 ^ 0xE42;
  v10 = (*(v8 + 8 * (a8 ^ 0x31FF)))((((a8 ^ 0xE42) + 1321925049) & 0xB134FE9F ^ 0xA9F691B2) + LODWORD(STACK[0x2374]));
  v11 = STACK[0x1708];
  STACK[0x3D10] = v10 + 0x2B1A0449E8A6C928;
  if (v10)
  {
    v12 = 68588956;
  }

  else
  {
    v12 = 68545947;
  }

  LODWORD(STACK[0x3D1C]) = v12;
  return (*(v11 + 8 * (((v10 == 0) * (v9 - 5576)) ^ v9)))();
}

uint64_t sub_100050CB0()
{
  v3 = (*(v2 + 8 * (v0 + 3754)))(((v0 - 6204) ^ 0xA9F69DBC) + LODWORD(STACK[0x1B54]));
  v4 = STACK[0x1708];
  STACK[0x3C70] = v3;
  if (v3)
  {
    v5 = 68588956;
  }

  else
  {
    v5 = v1;
  }

  LODWORD(STACK[0x3C7C]) = v5;
  return (*(v4 + 8 * ((14 * (v3 == 0)) ^ v0)))();
}

uint64_t sub_100050F80@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 0x51CE20ABD81C933BLL) = v2;
  *(v2 - 0x51CE20ABD81C9333) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(v5 + 8 * (v3 ^ 0x1F2D)))();
}

uint64_t sub_100051074@<X0>(void *a1@<X8>)
{
  *(v3 - 0x51CE20ABD81C933BLL) = v1;
  *(v1 - 0x51CE20ABD81C9333) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_100051168@<X0>(void *a1@<X8>)
{
  *(v3 - 0x51CE20ABD81C933BLL) = v1;
  *(v1 - 0x51CE20ABD81C9333) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_100051248@<X0>(void *a1@<X8>)
{
  *(v3 - 0x51CE20ABD81C933BLL) = v1;
  *(v1 - 0x51CE20ABD81C9333) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_100051328@<X0>(void *a1@<X8>)
{
  *(v3 - 0x51CE20ABD81C933BLL) = v1;
  *(v1 - 0x51CE20ABD81C9333) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000515A4(void *a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  a1[1] = 0x51CE20ABD81C933BLL;
  *(v2 - 0x1138F6A92264F47ELL) = a1 + 0x5A0411E37F4B9882;
  LODWORD(STACK[0x2A00]) = 68588956;
  return (*(v3 + 8 * (v1 - 3800)))();
}

uint64_t sub_100051840()
{
  v2 = (*(v1 + 8 * (v0 + 4880)))();
  v3 = STACK[0x1708];
  *(STACK[0x2300] - 0x51CE20ABD81C9323) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000518EC@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 9176)))(a1 - 0x51CE20ABD81C933BLL);
  v4 = STACK[0x1708];
  STACK[0x2300] = 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_100051BA4()
{
  v2 = (*(v1 + 8 * (v0 + 4305)))();
  v3 = STACK[0x1708];
  *(STACK[0x2AE0] - 0x51CE20ABD81C9323) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_100051C1C@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 5926)))(a1 - 0x51CE20ABD81C933BLL);
  v4 = STACK[0x1708];
  STACK[0x2AE0] = 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * (((LODWORD(STACK[0x2478]) != (v1 ^ 0xA7B) + 68582686) * (v1 - 4604)) ^ v1)))(v3);
}

uint64_t sub_100051F08()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3247)))();
  v3 = STACK[0x1708];
  *(STACK[0x22F0] - 0x51CE20ABD81C9323) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_100051F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * ((v1 ^ 0xF05) + 6992)))(a1 - 0x51CE20ABD81C933BLL);
  v4 = STACK[0x1708];
  STACK[0x22F0] = 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * ((6541 * (LODWORD(STACK[0x2084]) == (((v1 ^ 0xF05) - 2813) ^ 0x1AA0) + 68582686)) ^ v1 ^ 0xF05)))(v3);
}

uint64_t sub_100052278()
{
  v2 = (*(v1 + 8 * (v0 + 4381)))();
  v3 = STACK[0x1708];
  *(STACK[0x1E18] - 0x51CE20ABD81C9323) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000522FC@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 5766)))(a1 - 0x51CE20ABD81C933BLL);
  v4 = STACK[0x1708];
  STACK[0x1E18] = 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * (((LODWORD(STACK[0x2A2C]) == 68588956) * ((v1 ^ 0xADB) - 6169)) ^ v1)))(v3);
}

uint64_t sub_1000525CC()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x238E)))();
  v3 = STACK[0x1708];
  *(STACK[0x1F38] - 0x51CE20ABD81C9323) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_100052668@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v3 + 8 * (v1 ^ 0x256A)))(a1 - 0x51CE20ABD81C933BLL);
  v5 = STACK[0x1708];
  STACK[0x1F38] = v2;
  return (*(v5 + 8 * ((10307 * (LODWORD(STACK[0x2310]) == ((115 * (v1 ^ 0xC0C)) ^ (v1 + 1065988797) & 0xC076597F ^ 0x416AF75))) ^ v1)))(v4);
}

uint64_t sub_10005293C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x38D8)))();
  v3 = STACK[0x1708];
  *(STACK[0x2060] - 0x51CE20ABD81C9323) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000529F4@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 ^ 0x2E8C)))(a1 - 0x51CE20ABD81C933BLL);
  v4 = STACK[0x1708];
  STACK[0x2060] = 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * ((8399 * (LODWORD(STACK[0x2124]) == ((2 * v1) ^ 0x416983B ^ (149 * (v1 ^ 0x7A2))))) ^ v1)))(v3);
}

uint64_t sub_100052D0C()
{
  v2 = (*(v1 + 8 * (v0 + 5108)))();
  v3 = STACK[0x1708];
  *(STACK[0x1A78] - 0x51CE20ABD81C9323) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_100052DA8@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 8139)))(a1 - 0x51CE20ABD81C933BLL);
  v4 = STACK[0x1708];
  STACK[0x1A78] = 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * (((LODWORD(STACK[0x31A4]) == ((v1 - 2121960161) & 0x7E7A99FE) + 68582686) * (v1 + 5220)) ^ v1)))(v3);
}

uint64_t sub_100052E38@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x5A0411E37F4B9882) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_100052F98()
{
  *(v2 - 240) = (v0 + 193) ^ (1949688233 * ((((2 * (v2 - 240)) | 0x1380CD2) - (v2 - 240) - 10225257) ^ 0xE7DB50E2));
  v4 = (*(v3 + 8 * (v0 + 3236)))(v2 - 240);
  v5 = STACK[0x1708];
  *(v1 - 0x510808E226CB148CLL) = v0 - 6688 + (*(v2 - 232) ^ 0x5079F5EC) + ((2 * *(v2 - 232)) & 0xFE96FDBA ^ 0x5E041422) + 1455284003;
  return (*(v5 + 8 * v0))(v4);
}

uint64_t sub_100053214()
{
  *(v2 - 240) = (v0 + 6882) ^ (1949688233 * ((((v2 - 240) | 0x9C73B138) - ((v2 - 240) & 0x9C73B138)) ^ 0x7B34E7B3));
  v4 = (*(v3 + 8 * (v0 + 9925)))(v2 - 240);
  v5 = STACK[0x1708];
  *(v1 - 0x510808E226CB148CLL) = (*(v2 - 232) ^ 0xF9BD7DE8) - 8820224 + (((v0 - 915891179) & 0x36977FB7 ^ 0xAD1FF317) & (2 * *(v2 - 232)) ^ 0xC050422);
  STACK[0x1DD8] = *(v5 + 8 * v0);
  return (*(v5 + 8 * (v0 ^ 0x760)))(v4);
}

uint64_t sub_1000533E4@<X0>(int a1@<W8>)
{
  v3 = *(v1 - 0x1138F6A92264F47ELL);
  STACK[0x26D8] = v3;
  return (*(v2 + 8 * (((v3 == 0x5A0411E37F4B9882) * (((461 * (a1 ^ 0x6C1)) ^ 0xFFFFCB6F) + (a1 ^ 0x1EAC))) ^ a1)))();
}

uint64_t sub_1000534A4@<X0>(int a1@<W8>)
{
  v2 = a1 & 0x986EFDF7;
  v3 = (*(v1 + 8 * ((a1 & 0x986EFDF7) + 7084)))(32);
  v4 = STACK[0x1708];
  STACK[0x1B00] = v3 + 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * (((v3 == 0) * (((v2 - 1235193686) & 0x499F99FE) + ((v2 - 1966689879) & 0x75395DDD) - 13772)) ^ v2)))();
}

uint64_t sub_100053598()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x20FA)))();
  v4 = STACK[0x1708];
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_100053634@<X0>(void *a1@<X8>)
{
  *(v3 - 0x51CE20ABD81C933BLL) = v1;
  *(v1 - 0x51CE20ABD81C9333) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000536E4@<X0>(void *a1@<X8>)
{
  *(v3 - 0x51CE20ABD81C933BLL) = v1;
  *(v1 - 0x51CE20ABD81C9333) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000537D0@<X0>(int a1@<W8>)
{
  v3 = *(v1 - 0x1138F6A92264F47ELL);
  STACK[0x20D0] = v3;
  return (*(v2 + 8 * ((((463 * (a1 ^ 0xD7C)) ^ (114 * (a1 ^ 0xD44)) ^ 0x3A8) * (v3 == 0x5A0411E37F4B9882)) ^ a1)))();
}

uint64_t sub_1000538A4()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x2E26u)))(32);
  v4 = STACK[0x1708];
  STACK[0x27E8] = v3 + 0x51CE20ABD81C933BLL;
  return (*(v4 + 8 * (((((v0 ^ (v3 == 0)) & 1) == 0) * (((v1 + 106) | 0x146A) - 7265)) ^ v1)))();
}

uint64_t sub_10005393C(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(a1 + 16) = 1983515379;
  v4 = (*(v2 + 8 * (v1 ^ 0x35FA)))(42);
  v5 = STACK[0x1708];
  *(a1 + 24) = v4;
  return (*(v5 + 8 * (((((v1 + 26) ^ (v4 == 0)) & 1) * ((55 * (v1 ^ 0x1C09)) ^ 0x1920)) ^ v1)))();
}

uint64_t sub_100053A8C()
{
  v3 = (*(v2 + 8 * (v1 + 3248)))();
  v4 = STACK[0x1708];
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_100053BA4(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  *(a1 + 16) = 1983515379;
  v4 = (*(v2 + 8 * (v1 ^ 0x34DDu)))(42);
  v5 = STACK[0x1708];
  *(a1 + 24) = v4;
  return (*(v5 + 8 * (((v4 != 0) * (((v1 - 7426) | 0x1824) - 6207)) ^ v1)))();
}

uint64_t sub_100053C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x2A38]) = v8;
  STACK[0x2B78] = STACK[0x2928];
  STACK[0x23E8] = *(v9 + 8 * (v7 - 5272));
  return (*(v9 + 8 * (v7 - 5272 + ((v7 - 6206) | 0x882) - 1907)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, STACK[0x1700]);
}

uint64_t sub_100053D70()
{
  v3 = *v1;
  STACK[0x1E08] = *v1;
  return (*(v2 + 8 * (((v3 == 0x5A0411E37F4B9882) * ((3083 * (v0 ^ 0xAA6)) ^ (v0 - 1870768934) & 0x6F81B8FF ^ 0xA)) ^ v0)))();
}

uint64_t sub_100053F30()
{
  v3 = (*(v2 + 8 * (v0 + 6229)))();
  v4 = STACK[0x1708];
  *(v1 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_100053FA4()
{
  v4 = (*(v3 + 8 * (v2 ^ 0x3155)))(v0 - 0x5A0411E37F4B9882);
  v5 = STACK[0x1708];
  *v1 = 0x5A0411E37F4B9882;
  return (*(v5 + 8 * (v2 - 3512)))(v4);
}

uint64_t sub_10005404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x1514];
  STACK[0x23E8] = *(v9 + 8 * SLODWORD(STACK[0x1514]));
  return (*(v9 + 8 * ((((a8 + v8) | 0x10A5) ^ 0x10D0) + v10)))();
}

uint64_t sub_1000541AC()
{
  STACK[0x1860] = STACK[0x2F90];
  STACK[0x1880] = STACK[0x19F0];
  return (*(v1 + 8 * ((((v0 - 681) | 0x1852) ^ 0x1ADE) + v0)))();
}

uint64_t sub_100054454@<X0>(int a1@<W0>, unint64_t a2@<X3>, unint64_t a3@<X5>, unint64_t a4@<X6>, unint64_t a5@<X7>, unint64_t a6@<X8>)
{
  v22 = (v8 - v10 + v6);
  v23.i64[0] = v12 + v22;
  v23.i64[1] = v12 + (a1 + v8 - v10);
  v24.i64[0] = v12 + (v22 - 2);
  v25.i64[0] = v12 + (v22 - 4);
  v24.i64[1] = v12 + (v22 - 3);
  v25.i64[1] = v12 + (v22 - 5);
  v26.i64[0] = v12 + (v22 - 6);
  v26.i64[1] = v12 + (v22 - 7);
  *&v27 = v12 + (v22 - 10);
  *(&v27 + 1) = v12 + (v22 - 11);
  *&STACK[0x1900] = v27;
  v28 = vandq_s8(v26, *&STACK[0x1940]);
  v29 = vandq_s8(v25, *&STACK[0x1940]);
  v30 = vandq_s8(v24, *&STACK[0x1940]);
  v31 = vandq_s8(v23, *&STACK[0x1940]);
  v32 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v36 = vdupq_n_s64(v16);
  v37 = vdupq_n_s64(v7);
  *&STACK[0x18F0] = v36;
  v38 = vandq_s8(vaddq_s64(vaddq_s64(v35, v35), v37), v36);
  v39 = vandq_s8(vaddq_s64(vaddq_s64(v34, v34), v37), v36);
  v40 = vandq_s8(vaddq_s64(vaddq_s64(v33, v33), v37), v36);
  v41 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v32, v32), v37), v36), v32);
  v42 = vsubq_s64(v40, v33);
  v43 = vdupq_n_s64(v17);
  v44 = vaddq_s64(vsubq_s64(v38, v35), v43);
  v45 = vaddq_s64(vsubq_s64(v39, v34), v43);
  v46 = v43;
  v47 = vdupq_n_s64(a4);
  v48 = veorq_s8(v45, v47);
  v49 = veorq_s8(v44, v47);
  v50 = vdupq_n_s64(a2);
  v51 = veorq_s8(v44, v50);
  v52 = veorq_s8(v45, v50);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v51), *&STACK[0x1690]);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52), *&STACK[0x1690]);
  v55 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v56 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v59 = vdupq_n_s64(v20);
  v60 = vsubq_s64(vandq_s8(vaddq_s64(v57, v57), v59), v57);
  v61 = vdupq_n_s64(v21);
  v62 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), v59), v58), v61);
  v63 = vdupq_n_s64(v19);
  v64 = veorq_s8(v62, v63);
  v65 = veorq_s8(vaddq_s64(v60, v61), v63);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v68 = *&STACK[0x16F0];
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), *&STACK[0x16F0]);
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), *&STACK[0x16F0]);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = vdupq_n_s64(a3);
  v77 = vdupq_n_s64(a6);
  v78 = vaddq_s64(vsubq_s64(vorrq_s8(v74, v76), vorrq_s8(v74, v77)), v77);
  v79 = vdupq_n_s64(v18);
  v80 = veorq_s8(v78, v79);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v76), vorrq_s8(v75, v77)), v77), v79);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v82);
  v86 = vdupq_n_s64(a5);
  v87 = vdupq_n_s64(v14);
  v88 = vdupq_n_s64(v15);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v85, v85), v86), v85), v87), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v86), v84), v87), v88);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v92 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v93 = *&STACK[0x1650];
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), *&STACK[0x1650]);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v92), *&STACK[0x1650]);
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v97 = vdupq_n_s64(0x38uLL);
  v98 = vaddq_s64(v42, v46);
  v99 = *&STACK[0x16C0];
  v237.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v96), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v97)));
  v237.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v97)));
  v100 = veorq_s8(v98, v47);
  v101 = veorq_s8(v98, v50);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), *&STACK[0x1690]);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v59), v104), v61), v63);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x16F0]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v76), vorrq_s8(v109, v77)), v77), v79);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), v86), v112), v87), v88);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), *&STACK[0x1650]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v115.i64[0] = v12 + (v22 - 12);
  v115.i64[1] = v12 + (v22 - 13);
  v118 = vaddq_s64(v117, v116);
  v116.i64[0] = v12 + (v22 - 14);
  v116.i64[1] = v12 + (v22 - 15);
  v119 = vaddq_s64(v41, v46);
  v120 = v46;
  v237.val[1] = vshlq_u64(veorq_s8(v118, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v97)));
  v121 = veorq_s8(v119, v47);
  v122 = v47;
  v123 = veorq_s8(v119, v50);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v123), *&STACK[0x1690]);
  v125 = *&STACK[0x1690];
  v126 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v126);
  v128 = v59;
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v59), v127), v61), v63);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), *&STACK[0x16F0]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v133, v76), vorrq_s8(v133, v77)), v77), v79);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), v86), v136), v87), v88);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x1650]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v142 = vandq_s8(v116, *&STACK[0x1940]);
  v143 = vaddq_s64(v141, v140);
  v144 = vandq_s8(v115, *&STACK[0x1940]);
  v237.val[0] = vshlq_u64(veorq_s8(v143, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v97)));
  v145 = *&STACK[0x1900];
  v146 = vandq_s8(*&STACK[0x1900], *&STACK[0x1940]);
  v147 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  *&STACK[0x18A0] = v37;
  v150 = *&STACK[0x18F0];
  v151 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v147, v147), v37), *&STACK[0x18F0]), v147);
  v152 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v149, v149), v37), *&STACK[0x18F0]), v149), v120);
  v153 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v148, v148), v37), *&STACK[0x18F0]), v148), v120);
  v154 = v120;
  v155 = *&STACK[0x17C0];
  *&STACK[0x18B0] = vqtbl4q_s8(v237, *&STACK[0x17C0]);
  v156 = v122;
  v157 = veorq_s8(v153, v122);
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v152, v50);
  v160 = veorq_s8(v153, v50);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v125);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v160), v125);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(v161, v237.val[0]);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v164);
  v166 = vaddq_s64(v237.val[0], v163);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), v128), v166), v61), v63);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), v128), v165), v61), v63);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v170 = veorq_s8(v167, v237.val[0]);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(v237.val[0], v169), v68);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v173 = veorq_s8(v171, v68);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v175 = veorq_s8(v172, v237.val[0]);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v175);
  v177 = vaddq_s64(v237.val[0], v174);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v76), vorrq_s8(v176, v77)), v77), v79);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177, v76), vorrq_s8(v177, v77)), v77), v79);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v181 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v181);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v183, v183), v86), v183), v87), v88);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v182, v182), v86), v182), v87), v88);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v187 = veorq_s8(v184, v237.val[0]);
  v237.val[0] = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(v237.val[0], v186), v93);
  v190 = veorq_s8(v188, v93);
  v191 = vaddq_s64(v151, v154);
  v237.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL))), v99), vnegq_s64(vandq_s8(vshlq_n_s64(v116, 3uLL), v97)));
  v237.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v99), vnegq_s64(vandq_s8(vshlq_n_s64(v115, 3uLL), v97)));
  v192 = veorq_s8(v191, v156);
  v193 = veorq_s8(v191, v50);
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), v125);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), v128), v196), v61), v63);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v68);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v201, v76), vorrq_s8(v201, v77)), v77), v79);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203);
  v205 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v204, v204), v86), v204), v87), v88);
  v207 = veorq_s8(v206, v205);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), v93);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL)));
  v208.i64[0] = v12 + (v22 - 8);
  v208.i64[1] = v12 + (v22 - 9);
  v237.val[1] = vshlq_u64(veorq_s8(v209, v99), vnegq_s64(vandq_s8(vshlq_n_s64(v145, 3uLL), v97)));
  v210 = vandq_s8(v208, *&STACK[0x1940]);
  v211 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v212 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v211, v211), *&STACK[0x18A0]), v150), v211), v154);
  v213 = veorq_s8(v212, v156);
  v214 = veorq_s8(v212, v50);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v125);
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v218 = veorq_s8(v215, v216);
  v219 = vaddq_s64(v217, v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v219, v219), v128), v219), v61), v63);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v68);
  v223 = vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v225 = veorq_s8(v222, v223);
  v226 = vaddq_s64(v224, v225);
  v227 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v226, v76), vorrq_s8(v226, v77)), v77), v79);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229, v229), v86), v229), v87), v88);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v93);
  v237.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL))), v99), vnegq_s64(vandq_s8(vshlq_n_s64(v208, 3uLL), v97)));
  v233 = *&STACK[0x18B0];
  v233.i64[1] = vqtbl4q_s8(v237, v155).u64[0];
  v234 = vrev64q_s8(*(v13 + v22));
  v232.i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v232.i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v235 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v234, v234, 8uLL), v232), v233));
  *(v12 + v22 - 15) = vextq_s8(v235, v235, 8uLL);
  return (*(STACK[0x1708] + 8 * (((v10 + 16 != v9) | (8 * (v10 + 16 != v9))) ^ v11)))();
}

uint64_t sub_10005505C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v24 = v11 + (v9 + v7);
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((a5 + 2 * v25) & a4) - v25 + a2;
  v27 = v26 ^ v21;
  v28 = v26 ^ a1;
  v29 = (__ROR8__(v27, 8) + v28) ^ a3;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = ((v19 & (2 * (v30 + v31))) - (v30 + v31) + v20) ^ v12;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v17;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (a7 - ((v36 + v35) | a7) + ((v36 + v35) | a6)) ^ v13;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = ((v14 | (2 * (v39 + v38))) - (v39 + v38) + v15) ^ v16;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v18;
  *v24 = *(v8 + (v9 + v7)) ^ v22 ^ (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ v23) >> (8 * ((v11 + v9 + v7) & 7)));
  return (*(STACK[0x1708] + 8 * ((127 * (v9 == 2072888796)) ^ v10)))();
}

uint64_t sub_1000551C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 ^ 0x1316;
  v10 = (*(v8 + 8 * (a8 + 4269)))(STACK[0x2CB0] - 0x1138F6A92264F486);
  v11 = STACK[0x1708];
  v12 = STACK[0xA24];
  STACK[0x3060] = *(STACK[0x1708] + 8 * SLODWORD(STACK[0xA24]));
  return (*(v11 + 8 * (v9 ^ v12 ^ 0xF25)))(v10);
}

uint64_t sub_100055374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 3939;
  v10 = (*(v8 + 8 * (a8 ^ 0x3155)))();
  return (*(STACK[0x1708] + 8 * v9))(v10);
}

uint64_t sub_100055414()
{
  v1 = STACK[0x7A8];
  STACK[0x25E0] = STACK[0x2580];
  return (*(v0 + 8 * v1))();
}

uint64_t sub_1000554C8()
{
  v2 = (STACK[0x1700] - 3926) | 0x2C5;
  v3 = STACK[0x1700] - 655;
  LODWORD(STACK[0x2614]) = v0;
  return (*(v1 + 8 * (((v2 ^ LODWORD(STACK[0x568])) * (v0 == 68588956)) ^ v3)))();
}

uint64_t sub_10005551C()
{
  v1 = STACK[0x3E0];
  v2 = (*(v0 + 8 * (v1 + 2068)))(((v1 - 5504) ^ 0xA9F694CA) + LODWORD(STACK[0x1A18]));
  v3 = STACK[0x1708];
  STACK[0x3E58] = v2 + 0x2B1A0449E8A6C928;
  return (*(v3 + 8 * (((v2 != 0) * ((v1 - 7731) ^ 0x339)) ^ v1)))();
}

uint64_t sub_100055650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x1CC8];
  STACK[0x2380] = STACK[0x1CC8];
  return (*(v8 + 8 * (((v9 == 0x1138F6A92264F486) * (((a8 - 6134) | 0x730) - 1880)) | (a8 - 2414))))();
}

uint64_t sub_10005570C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1F18] = 0x51CE20ABD81C933BLL;
  STACK[0x2FC8] = 0x921E7F5A599835FLL;
  return (*(v2 + 8 * (((((v1 ^ 0x3F45) - 4727) ^ 0x678) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_100055778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  STACK[0x2438] = a5;
  LODWORD(STACK[0x3028]) = 1236501623;
  STACK[0x1E80] = a63;
  LODWORD(STACK[0x2A08]) = 32;
  return (*(v64 + 8 * v63))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_100055830@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1C58];
  STACK[0x1AB0] = STACK[0x1C58];
  return (*(v1 + 8 * (((v2 != 0x1138F6A92264F486) * ((((a1 - 1728928278) & 0x670D51F6) - 1056) ^ 0xD61)) ^ a1)))();
}

uint64_t sub_1000558D8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x22B0] = 0x51CE20ABD81C933BLL;
  STACK[0x2BC8] = 0x568FFFD90AA5E193;
  return (*(v2 + 8 * ((((((v1 - 1695) | 0x1046) - 4710) ^ ((v1 - 2262) | 6)) * (a1 == 0x5A0411E37F4B9882)) ^ (v1 + 2104))))();
}

uint64_t sub_100055954@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1318742951;
  STACK[0x1E80] = a57;
  LODWORD(STACK[0x2A08]) = 26;
  return (*(v58 + 8 * v57))();
}

uint64_t sub_1000559F8()
{
  v1 = STACK[0x3C4];
  v2 = LODWORD(STACK[0x3C4]) + 764;
  v3 = STACK[0x2180];
  STACK[0x26C8] = STACK[0x2180];
  return (*(v0 + 8 * (((((v3 == 0x1138F6A92264F486) ^ (v1 - 66)) & 1) * (v2 ^ 0xEBF)) ^ v1)))();
}

uint64_t sub_100055AC4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2360] = 0x51CE20ABD81C933BLL;
  STACK[0x1E38] = 0x4408DE0DA41FB083;
  return (*(v2 + 8 * (((v1 - 6026 + (v1 ^ 0x5EF) - 7755) * (a1 != 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_100055B34@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1236501623;
  STACK[0x1E80] = a58;
  LODWORD(STACK[0x2A08]) = 29;
  return (*(v59 + 8 * v58))();
}

uint64_t sub_100055B98()
{
  LODWORD(STACK[0x3050]) = v1;
  STACK[0x1CF8] = *(v2 + 8 * (v0 - 5223));
  return (*(v2 + 8 * (v0 ^ 0xCC5 ^ (v0 - 5223) ^ 0x1620)))();
}

uint64_t sub_100055C0C()
{
  v1 = STACK[0x794];
  v2 = LODWORD(STACK[0x794]) + 9272;
  STACK[0x1DB8] = *(v0 + 8 * SLODWORD(STACK[0x794]));
  return (*(v0 + 8 * (v1 ^ 0x2BEE ^ v2)))();
}

uint64_t sub_100055C58()
{
  v3 = v0 ^ 0xCC5;
  v4 = v0 - 5215;
  LODWORD(STACK[0x313C]) = v1;
  STACK[0x1CF8] = *(v2 + 8 * v4);
  return (*(v2 + 8 * ((v3 - 4648) ^ v4)))();
}

uint64_t sub_100055CCC@<X0>(int a1@<W8>)
{
  v2 = STACK[0x19C0];
  STACK[0x2D88] = STACK[0x19C0];
  return (*(v1 + 8 * (((v2 != 0x1138F6A92264F486) * (((a1 - 1200703172) & 0x47912E7F) - 3571)) ^ a1)))();
}

uint64_t sub_100055D90@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2AB0] = 0x51CE20ABD81C933BLL;
  STACK[0x2B38] = 0x43BD7D37CE5AF8DBLL;
  return (*(v2 + 8 * ((((v1 - 2919) ^ 0x1E65 ^ (22 * (v1 ^ 0x1073))) * (a1 == 0x5A0411E37F4B9882)) ^ v1)))();
}

uint64_t sub_100055E10@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = 1318742951;
  STACK[0x1E80] = a60;
  LODWORD(STACK[0x2A08]) = 33;
  return (*(v61 + 8 * v60))();
}

uint64_t sub_100055F48()
{
  v3 = *(v1 - 0x1138F6A92264F486);
  STACK[0x29E0] = 0x51CE20ABD81C933BLL;
  STACK[0x2A50] = 0x7BA0A8CC2BBF04C4;
  return (*(v2 + 8 * (((v3 == 0x5A0411E37F4B9882) * (((v0 + 1913553083) & 0x8DF17F3F) - 7789 + 57 * (v0 ^ 0x662))) ^ v0)))();
}

uint64_t sub_100056048()
{
  STACK[0x2E40] = STACK[0x24E0];
  STACK[0x1CF8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (((183 * (v0 ^ 0x40E)) ^ v1) + v0)))();
}

uint64_t sub_1000560E0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2438] = a1;
  LODWORD(STACK[0x3028]) = -1305642101;
  STACK[0x1E80] = STACK[0x630];
  LODWORD(STACK[0x2A08]) = 3;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000561CC()
{
  v1 = STACK[0xDC8];
  STACK[0x1FD0] = *(v0 + 8 * STACK[0xDC8]);
  return (*(v0 + 8 * ((v1 + 3566) ^ v1)))();
}

uint64_t sub_1000562A8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1E60] = a1;
  LODWORD(STACK[0x3E68]) = v6;
  LOWORD(STACK[0x3E6E]) = v2;
  LODWORD(STACK[0x3E70]) = v7;
  LODWORD(STACK[0x3E74]) = v1;
  STACK[0x3E78] = v4;
  STACK[0x3E80] = v5;
  return (*(v8 + 8 * (v3 | ((((((v3 ^ 0x3AE9) + 1) ^ (a1 == 0x5A0411E37F4B9882)) & 1) == 0) << 7))))();
}

uint64_t sub_10005636C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x339F)))(32);
  v3 = STACK[0x1708];
  STACK[0x1EF8] = v2 + 0x51CE20ABD81C933BLL;
  return (*(v3 + 8 * (((v2 == 0) * (v0 - 12838 + ((v0 - 6572) | 0x180C))) ^ v0)))();
}

uint64_t sub_1000563EC(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  STACK[0x3E88] = v3;
  *(a1 + 16) = v1 + 540060154;
  v6 = (*(v4 + 8 * (v2 ^ 0x33FC)))(v1 - 1443455193 + (v2 ^ 0x203u) - 6010 - 250);
  v7 = STACK[0x1708];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 == 0) | (2 * (v6 == 0))) ^ v2)))();
}

uint64_t sub_1000564EC()
{
  v4 = LOWORD(STACK[0x3DC6]);
  v5 = STACK[0x3DC8];
  LODWORD(STACK[0x1850]) = LODWORD(STACK[0x3DCC]) + v1 - ((2 * LODWORD(STACK[0x3DCC]) + 1408056910) & v2);
  LODWORD(STACK[0x18A0]) = v4;
  v6 = STACK[0x3080] - 0x51CE20ABD81C9323;
  v7 = STACK[0x2368] - 0x51CE20ABD81C9323;
  v8 = STACK[0x27E8] - 0x51CE20ABD81C9323;
  v9 = STACK[0x1C70] - 0x51CE20ABD81C9323;
  v10 = STACK[0x1EF8] - 0x51CE20ABD81C9323;
  v11 = LOWORD(STACK[0x3E6E]);
  LODWORD(STACK[0x1880]) = v5;
  LODWORD(STACK[0x1900]) = v5 + v1 - ((2 * v5 + 1408056910) & v2);
  LODWORD(STACK[0x18F0]) = v1 + LODWORD(STACK[0x3CF4]) + ((-1408056912 - 2 * LODWORD(STACK[0x3CF4])) | 0x389A3D83) + 1;
  LODWORD(STACK[0x18B0]) = LODWORD(STACK[0x372C]) + v1 - ((2 * LODWORD(STACK[0x372C]) + 1408056910) & v2);
  v12 = STACK[0x3E70];
  LODWORD(STACK[0x1860]) = STACK[0x3E70];
  LODWORD(STACK[0x1890]) = v12 + v1 - ((2 * v12 + 1408056910) & v2);
  LODWORD(STACK[0x1840]) = LODWORD(STACK[0x3E74]) + v1 - ((2 * LODWORD(STACK[0x3E74]) + 1408056910) & v2);
  return (*(v3 + 8 * (v0 + 3918)))(v6, v7, v8, v11, v9, v10, v11 ^ 0xFFFFC817);
}

uint64_t sub_1000566E4()
{
  v9 = *v3 + v6 - 0x4047F3870E5CC223;
  v10 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = -2 - (((v2 - v10) | 0xE3E73D0F9C16A1ACLL) + ((v10 + v5) | 0x1C18C2F063E95E53));
  v12 = __ROR8__(v11 ^ 0xEE9653C2CFC0BE7BLL, 8);
  v11 ^= 0x5A3B786CAB9108A8uLL;
  v13 = (v12 + v11) ^ v0;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((v15 + v14 - ((2 * (v15 + v14)) & 0x47E36757A390E490) + 0x23F1B3ABD1C87248) ^ 0xB5A038B383ECF845, 8);
  v17 = (v15 + v14 - ((2 * (v15 + v14)) & 0x47E36757A390E490) + 0x23F1B3ABD1C87248) ^ 0xB5A038B383ECF845 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17 - ((2 * (v16 + v17)) & 0xC96D825246A69F1CLL) + 0x64B6C12923534F8ELL) ^ 0xA388372A6A5F0B8CLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0xA0D27DCDB70F7796) - (v20 + v19) + 0x2F96C11924784434) ^ 0x23D5D9B166FE0837;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (0x6C6988A454026602 - ((v23 + v22) | 0x6C6988A454026602) + ((v23 + v22) | 0x9396775BABFD99FDLL)) ^ 0xD0F67F494B5EC98ELL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (0xF80619CB96585F8ALL - ((v26 + v25) | 0xF80619CB96585F8ALL) + ((v26 + v25) | 0x7F9E63469A7A075)) ^ 0xB27826435D2AC249;
  v28 = (__ROR8__((v9 + 1) & 0xFFFFFFFFFFFFFFF8, 8) + v5) & 0xF9FFFFFFFFFFFFFFLL;
  v29 = __ROR8__(v28 ^ 0xB716ECD53D61FD7, 8);
  v30 = ((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v25, 61))) ^ v1) >> (8 * (v9 & 7u));
  v31 = (0xFAC3D6D5D5794CD7 - ((v29 + (v28 ^ 0xBFDC45633787A904)) | 0xFAC3D6D5D5794CD7) + ((v29 + (v28 ^ 0xBFDC45633787A904)) | 0x53C292A2A86B328)) ^ 0x5BD26D79E0B36992;
  v32 = v31 ^ __ROR8__(v28 ^ 0xBFDC45633787A904, 61);
  v33 = *(v7 + 8 * v8);
  *v9 = v30 ^ HIBYTE(v4) ^ 0x63;
  v34 = (__ROR8__(v31, 8) + v32) ^ 0x96518B1852248A0DLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xC73EF603490C4402;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (v37 + v38) ^ 0xC4318A842864C03;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0xEAACCFDA6BDA5C8ALL) - (v41 + v40) - 0x755667ED35ED2E46) ^ 0xC9C990002AB181C9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xB581C077348D623CLL;
  v45 = __ROR8__(v44, 8);
  v46 = __ROR8__(v43, 61);
  *(v9 + 1) = (((((2 * (v45 + (v44 ^ v46))) | 0x4F7941F6F7C0CF7CLL) - (v45 + (v44 ^ v46)) - 0x27BCA0FB7BE067BELL) ^ 0xD782E2BACB358C40) >> (8 * ((v9 + 1) & 7))) ^ BYTE2(v4) ^ 0xB2;
  v47 = __ROR8__((v9 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = (v2 - v47) & 0x28DC2FE03FC2A4CCLL | (v47 + v5) & 0xD523D01FC03D5B33;
  v49 = v48 ^ 0x27AD412D6C14BB1BLL;
  v48 ^= 0x93006A8308450DC8;
  v50 = __ROR8__(v49, 8);
  v51 = (0xF1ED72436A882354 - ((v50 + v48) | 0xF1ED72436A882354) + ((v50 + v48) | 0xE128DBC9577DCABLL)) ^ 0x50FCC9EF5F420611;
  v52 = v51 ^ __ROR8__(v48, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x568EB83D43A71C0ELL) - (v53 + v52) - 0x2B475C1EA1D38E07) ^ 0xBD16D706F3F7040ALL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xC73EF603490C4402;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xC4318A842864C03;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x43600812E0A35073;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xB581C077348D623CLL;
  *(v9 + 2) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v9 + 2) & 7))) ^ BYTE1(v4) ^ 0xE1;
  v63 = __ROR8__((v9 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = -2 - (((0x896A5A8A3375C925 - v63) | 0x5A62C86087E9250ELL) + ((v63 + v5) | 0xA59D379F7816DAF1));
  v65 = v64 ^ 0x5713A6ADD43F3AD9;
  v64 ^= 0xE3BE8D03B06E8C0ALL;
  v66 = __ROR8__(v65, 8);
  v67 = (((2 * (v66 + v64)) & 0x500C176078E0B73CLL) - (v66 + v64) + 0x57F9F44FC38FA461) ^ 0x917B01C09BA7EDBLL;
  v68 = v67 ^ __ROR8__(v64, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x96518B1852248A0DLL;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xC73EF603490C4402;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (v73 + v72 - ((2 * (v73 + v72)) & 0xFAB71C0E54B706DALL) - 0x2A471F8D5A47C93) ^ 0xF11896AF68DDCF6ELL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x43600812E0A35073;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0xB581C077348D623CLL;
  *(v9 + 3) = v4 ^ (((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ 0xF03E4241B0D5EBFELL) >> (8 * ((v9 + 3) & 7))) ^ 0x3E;
  return v33();
}

uint64_t sub_100056DE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 12350)
  {
    return (*(STACK[0x1708] + 8 * ((STACK[0x1700] - 2938) | (8 * (LODWORD(STACK[0x1860]) == v4)) | (32 * (LODWORD(STACK[0x1860]) == v4)))))();
  }

  v6 = STACK[0x1708];
  v7 = STACK[0x1700];
  if (a4 == 9164)
  {
    return (*(v6 + 8 * (((LODWORD(STACK[0x3E70]) == 1443455201) * ((STACK[0x5E4] & 0x8C6399C8) + 14071)) ^ (v7 + 1789))))();
  }

  if (a4 != 63378)
  {
    return (*(v6 + 8 * (v7 - 4907)))();
  }

  v8 = LODWORD(STACK[0x3E88]) - (STACK[0x5E0] & (2 * LODWORD(STACK[0x3E88]))) + 1267044394;
  v9 = ((2 * v8) & 0xDFF5EFBC ^ 0x97012014) + (v8 ^ 0xA47F67F4) + 2147463082 != 1878697864;
  return (*(v6 + 8 * ((4 * v9) | (32 * v9) | (v7 - 3262))))();
}

uint64_t sub_100056FC8()
{
  v6 = *(v4 + 8 * v3);
  v7 = *v5;
  v8 = *v5 + 4;
  v9 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = ((v9 + 0x7695A575CC8A36DALL) | 0xA2229B312F738CC0) - ((v9 + 0x7695A575CC8A36DALL) | 0x5DDD64CED08C733FLL) + 0x5DDD64CED08C733FLL;
  v11 = v10 ^ 0xAF53F5FC7CA59317;
  v10 ^= 0x1BFEDE5218F425C4uLL;
  v12 = (__ROR8__(v11, 8) + v10) ^ 0x5EEE4453CA35DABALL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (0xA070EEFE36075B38 - ((v14 + v13) | 0xA070EEFE36075B38) + ((v14 + v13) | 0x5F8F1101C9F8A4C7)) ^ 0xC9DE9A199BDC2ECALL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0xD38A9EBF6FAA0874) - 0x163AB0A0482AFBC6) ^ 0x2EFBB95CFED94038;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xB5B59E24F4A16DE4) - (v20 + v19) + 0x252530ED85AF490ELL) ^ 0xD699D7BA38D6FAF1;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x43600812E0A35073;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  *(v7 + 4) = v2 ^ 0x6F ^ (((__ROR8__((((2 * (v25 + v24)) | 0x3EF7DC6160C88618) - (v25 + v24) + 0x608411CF4F9BBCF4) ^ 0x2AFA2E4784E92130, 8) + ((((2 * (v25 + v24)) | 0x3EF7DC6160C88618) - (v25 + v24) + 0x608411CF4F9BBCF4) ^ 0x2AFA2E4784E92130 ^ __ROR8__(v24, 61))) ^ v0) >> (8 * (v8 & 7u)));
  v26 = __ROR8__((v7 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (v26 + 0x7695A575CC8A36DALL) ^ 0xB9DC45633787A904;
  v28 = (__ROR8__((v26 + 0x7695A575CC8A36DALL) ^ 0xD716ECD53D61FD7, 8) + v27) ^ 0x5EEE4453CA35DABALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x96518B1852248A0DLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xC73EF603490C4402;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xC4318A842864C03;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x43600812E0A35073;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((((2 * (v38 + v37)) | 0x1E824E7FD8C6CBCELL) - (v38 + v37) + 0x70BED8C0139C9A19) ^ 0x3AC0E748D8EE07DBLL, 8) + ((((2 * (v38 + v37)) | 0x1E824E7FD8C6CBCELL) - (v38 + v37) + 0x70BED8C0139C9A19) ^ 0x3AC0E748D8EE07DBLL ^ __ROR8__(v37, 61));
  *(v7 + 5) = v1 ^ 0x5E ^ (((v39 - ((2 * v39) & 0x5DC054472D0BC980) - 0x511FD5DC697A1B40) ^ 0x5EDE686226500F3EuLL) >> (8 * ((v7 + 5) & 7)));
  return v6();
}

uint64_t sub_100057518(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x18A0];
  if (LODWORD(STACK[0x18A0]) == 49033)
  {
    return (*(STACK[0x1708] + 8 * ((STACK[0x1700] - 3489) ^ (4750 * (LODWORD(STACK[0x1880]) == v2)))))();
  }

  v5 = STACK[0x1708];
  v6 = STACK[0x1700];
  if (v3 == 30757)
  {
    STACK[0x3280] = *(v5 + 8 * SLODWORD(STACK[0x5EC]));
    return (*(v5 + 8 * SLODWORD(STACK[0x5E8])))(a1, a2, 0xB4B51A6A6DF5343);
  }

  else if (v3 == 44155)
  {
    v7 = LODWORD(STACK[0x3DC8]) == ((v6 - 5832) ^ 0x56096157);
    return (*(v5 + 8 * (((32 * v7) | (v7 << 6)) ^ (v6 - 4819))))();
  }

  else
  {
    return sub_10005D31C();
  }
}

uint64_t sub_1000577A0(int a1)
{
  LODWORD(STACK[0x1900]) = v5;
  v6 = *(v4 + 8 * v3);
  LODWORD(STACK[0x18F0]) = v5 & 0xFFFFFFF8;
  v7 = v2 + v1;
  return v6((-8 - a1), (v7 + 268765211), (v7 + 268765212), (v7 + 268765213), (v7 + 268765214), (v7 + 268765215), (v7 + 268765216), (v7 + 268755500));
}

uint64_t sub_10005783C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int8x16_t a10@<Q0>, int8x16_t a11@<Q1>, int64x2_t a12@<Q2>, int8x16_t a13@<Q3>)
{
  v31 = (a8 + a1 + v14 + 8);
  v32.i64[0] = v31 + a9 + 10;
  v33.i64[0] = (a6 + a1 + 8) + a9 + 10;
  v33.i64[1] = (a5 + a1 + 8) + a9 + 10;
  v34.i64[0] = (a4 + a1 + 8) + a9 + 10;
  v32.i64[1] = (a7 + a1 + 8) + a9 + 10;
  v34.i64[1] = (a3 + a1 + 8) + a9 + 10;
  v35.i64[0] = (a2 + a1 + 8) + a9 + 10;
  v35.i64[1] = (v13 + a1 + 8) + a9 + 10;
  v36 = vandq_s8(v35, *&STACK[0x1940]);
  v37 = vandq_s8(v34, *&STACK[0x1940]);
  v38 = vandq_s8(v33, *&STACK[0x1940]);
  v39 = vandq_s8(v32, *&STACK[0x1940]);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v28);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v28);
  v44 = veorq_s8(v43, v29);
  v45 = veorq_s8(v42, v29);
  v46 = veorq_s8(v42, v27);
  v47 = veorq_s8(v43, v27);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), v21);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), v21);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v52 = veorq_s8(v48, v50);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = veorq_s8(vaddq_s64(v53, v51), v24);
  v56 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v57 = veorq_s8(v54, v24);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v55, v56);
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), a10);
  v63 = veorq_s8(v61, a10);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), a11)), a12), a13);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(v62, vandq_s8(vaddq_s64(v62, v62), a11)), a12), a13);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), v25);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), v25);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), v22);
  v76 = veorq_s8(v74, v22);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v30);
  v83 = veorq_s8(v81, v30);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = vdupq_n_s64(v19);
  v86 = vaddq_s64(v41, v28);
  v118.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v84), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v85)));
  v118.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v85)));
  v87 = veorq_s8(v86, v29);
  v88 = veorq_s8(v86, v27);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), v21);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), v24);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), a10);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(v93, vandq_s8(vaddq_s64(v93, v93), a11)), a12), a13);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v25);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v22);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v30);
  v101 = vaddq_s64(v40, v28);
  v118.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v85)));
  v102 = veorq_s8(v101, v29);
  v103 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v104 = veorq_s8(v101, v27);
  v105 = veorq_s8(vaddq_s64(v103, v104), v21);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v24);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a10);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), a11)), a12), a13);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v25);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v22);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v30);
  v118.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v85)));
  *(v31 + a9 + 3) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v118, v23)), *(v15 + v31));
  return (*(v20 + 8 * (((v18 == a1) * v17) ^ v16)))((a1 - 8));
}

uint64_t sub_100057E70(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x684];
  STACK[0x3280] = *(v2 + 8 * SLODWORD(STACK[0x684]));
  return (*(v2 + 8 * ((v3 ^ 0x39AA) + v4 - 1560)))(a1, a2, 0xB4B51A6A6DF5343);
}

uint64_t sub_100058170()
{
  STACK[0x1900] = *v3;
  v5 = v1 + v0 - 2080358335;
  LODWORD(STACK[0x15B0]) = v5;
  return (*(v4 + 8 * (((((v5 < 8) ^ (v2 + 1)) & 1) * (((v2 - 1788) | 0x20C4) - 8364)) ^ v2)))();
}

uint64_t sub_100058264(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = *(v13 + 8 * (((((v5 + 6670) | 0x412) + ((v5 + 5853) ^ 0xFFFFF72D)) * (LODWORD(STACK[0x15B0]) < 0x10)) ^ v5));
  *&STACK[0x18F0] = vdupq_n_s64(v6);
  STACK[0x1540] = v7;
  *&STACK[0x18B0] = vdupq_n_s64(0x2914335B694B705EuLL);
  *&STACK[0x1850] = vdupq_n_s64(v8);
  *&STACK[0x1840] = vdupq_n_s64(a4);
  *&STACK[0x1830] = vdupq_n_s64(v10);
  *&STACK[0x1820] = vdupq_n_s64(v9);
  *&STACK[0x1810] = vdupq_n_s64(v11);
  *&STACK[0x18A0] = vdupq_n_s64(v12);
  *&STACK[0x1800] = vdupq_n_s64(v4);
  *&STACK[0x1890] = vdupq_n_s64(0x5022D6A42BA57F2EuLL);
  *&STACK[0x1880] = vdupq_n_s64(0x2DC50358CAB7AE49uLL);
  *&STACK[0x17F0] = vdupq_n_s64(0xBAD923FFA81E9565);
  *&STACK[0x17E0] = vdupq_n_s64(0x2B17896CEC2FBFA4uLL);
  *&STACK[0x17D0] = vdupq_n_s64(0x6A743B4989E8202DuLL);
  return v14(0);
}

uint64_t sub_100058408(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, int64x2_t a10, int8x16_t a11)
{
  v23 = (a8 + a1 + 8);
  v24.i64[0] = (v15 + a1 + 8) + v12 + 10;
  v24.i64[1] = (a2 + a1 + v14 + 8) + v12 + 10;
  v25.i64[0] = (a4 + a1 + 8) + v12 + 10;
  v25.i64[1] = (a3 + a1 + 8) + v12 + 10;
  v26.i64[0] = (a6 + a1 + 8) + v12 + 10;
  v26.i64[1] = (a5 + a1 + 8) + v12 + 10;
  v27.i64[0] = v23 + v12 + 10;
  v27.i64[1] = (a7 + a1 + 8) + v12 + 10;
  v28 = vandq_s8(v27, *&STACK[0x1940]);
  v29 = vandq_s8(v26, *&STACK[0x1940]);
  v30 = vandq_s8(v25, *&STACK[0x1940]);
  v31 = vandq_s8(v24, *&STACK[0x1940]);
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), a10);
  v33 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), a10);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), a10);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), a10);
  v36 = vsubq_s64(vorrq_s8(vaddq_s64(v32, v32), v19), v32);
  v37 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v34, v34), v19), v34), v21);
  v38 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v35, v35), v19), v35), v21);
  v39 = veorq_s8(v38, v20);
  v40 = veorq_s8(v37, v20);
  v41 = veorq_s8(v37, *&STACK[0x1840]);
  v42 = veorq_s8(v38, *&STACK[0x1840]);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v42);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v41);
  v45 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v44, v44), *&STACK[0x1850]), v44), *&STACK[0x1820]), *&STACK[0x1830]);
  v46 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v43, v43), *&STACK[0x1850]), v43), *&STACK[0x1820]), *&STACK[0x1830]);
  v47 = vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL);
  v48 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v49 = veorq_s8(v45, v47);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v49);
  v52 = vaddq_s64(v50, v48);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(v52, vandq_s8(vaddq_s64(v52, v52), *&STACK[0x1810])), *&STACK[0x18A0]), *&STACK[0x1800]);
  v54 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(v51, vandq_s8(vaddq_s64(v51, v51), *&STACK[0x1810])), *&STACK[0x18A0]), *&STACK[0x1800]);
  v56 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v57 = veorq_s8(v53, v54);
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57);
  v60 = veorq_s8(vaddq_s64(v58, v56), *&STACK[0x1890]);
  v61 = veorq_s8(v59, *&STACK[0x1890]);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, *&STACK[0x1880]), vorrq_s8(v60, v22)), v22), *&STACK[0x17F0]);
  v63 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, *&STACK[0x1880]), vorrq_s8(v61, v22)), v22), *&STACK[0x17F0]);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v66 = veorq_s8(v62, v63);
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), *&STACK[0x1570]);
  v70 = veorq_s8(v68, *&STACK[0x1570]);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), *&STACK[0x17E0]), v76), *&STACK[0x17D0]), *&STACK[0x18B0]);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), *&STACK[0x17E0]), v75), *&STACK[0x17D0]), *&STACK[0x18B0]);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(v77, v78);
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), a11);
  v85 = veorq_s8(v83, a11);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v84, v86);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vdupq_n_s64(v11);
  v91 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v33, v33), v19), v33), *&STACK[0x18F0]);
  v92 = veorq_s8(vaddq_s64(v89, v87), *&STACK[0x16C0]);
  v129.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v90)));
  v129.val[2] = vshlq_u64(v92, vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v90)));
  v93 = veorq_s8(v91, v20);
  v94 = veorq_s8(v91, *&STACK[0x1840]);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), *&STACK[0x1850]), v95), *&STACK[0x1820]), *&STACK[0x1830]);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), *&STACK[0x1810])), *&STACK[0x18A0]), *&STACK[0x1800]);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), *&STACK[0x1890]);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, *&STACK[0x1880]), vorrq_s8(v101, v22)), v22), *&STACK[0x17F0]);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), *&STACK[0x1570]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x17E0]), v106), *&STACK[0x17D0]), *&STACK[0x18B0]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a11);
  v110 = vaddq_s64(v36, *&STACK[0x18F0]);
  v129.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v90)));
  v111 = veorq_s8(v110, v20);
  v112 = veorq_s8(v110, *&STACK[0x1840]);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), *&STACK[0x1850]), v113), *&STACK[0x1820]), *&STACK[0x1830]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v116, vandq_s8(vaddq_s64(v116, v116), *&STACK[0x1810])), *&STACK[0x18A0]), *&STACK[0x1800]);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), *&STACK[0x1890]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, *&STACK[0x1880]), vorrq_s8(v119, v22)), v22), *&STACK[0x17F0]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), *&STACK[0x1570]);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), *&STACK[0x17E0]), v124), *&STACK[0x17D0]), *&STACK[0x18B0]);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), a11);
  v129.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v90)));
  *(v23 + v12 + 3) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v16 + v23)), 0x1B1B1B1B1B1B1B1BLL), *&vqtbl4q_s8(v129, *&STACK[0x15C0])));
  return (*(v18 + 8 * ((56 * (v17 == a1)) ^ v13)))((a1 - 8));
}

uint64_t sub_100059C24(unsigned int a1, int a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x1048]) = a4;
  LODWORD(STACK[0x1050]) = v5;
  LODWORD(STACK[0x1058]) = v6;
  v9 = *(v8 + 8 * ((245 * (a2 + (((a1 - 8956) | 0x923) ^ 0x2CC80BAE) >= ((a1 - 2814) ^ 0x1876))) ^ a1));
  STACK[0x1820] = v4;
  STACK[0x1810] = v7;
  return v9();
}

uint64_t sub_100059DDC@<X0>(unsigned int a1@<W1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v15 = *(v14 + 8 * (v8 ^ (8 * (a1 >= ((v8 + 1823768969) & 0x934B7B7E ^ 0x186E)))));
  *&STACK[0x1790] = vdupq_n_s64(a4);
  *&STACK[0x1490] = vdupq_n_s64(a5);
  *&STACK[0x1410] = vdupq_n_s64(v10);
  *&STACK[0x1460] = vdupq_n_s64(0x9827780194A34532);
  *&STACK[0x1470] = vdupq_n_s64(0xE76F319C687CF3FuLL);
  *&STACK[0x1450] = vdupq_n_s64(v13);
  *&STACK[0x1420] = vdupq_n_s64(0x63A5A39A2714D1C3uLL);
  *&STACK[0x1430] = vdupq_n_s64(v12);
  *&STACK[0x1400] = vdupq_n_s64(0x78A7F1CD3675070uLL);
  *&STACK[0x1780] = vdupq_n_s64(0x3027198D4276DB70uLL);
  *&STACK[0x1770] = vdupq_n_s64(0x3627198D4276DB70uLL);
  *&STACK[0x1440] = vdupq_n_s64(0xB4C03241634F9097);
  *&STACK[0x1880] = vdupq_n_s64(0x8F30E4BAED0244B2);
  *&STACK[0x18A0] = vdupq_n_s64(0xB8678DA2897EDDA6);
  *&STACK[0x1890] = vdupq_n_s64(0xFB0785B069DD8DD5);
  *&STACK[0x18F0] = vdupq_n_s64(0xBD87295834B24C76);
  *&STACK[0x1900] = vdupq_n_s64(a7);
  *&STACK[0x18B0] = vdupq_n_s64(0x806E92F003F2E4AuLL);
  *&STACK[0x1480] = vdupq_n_s64(a8);
  *&STACK[0x14C0] = vdupq_n_s64(a6);
  *&STACK[0x1860] = vdupq_n_s64(0x3E0110D8C95E5D55uLL);
  *&STACK[0x17B0] = vdupq_n_s64(0x15D189ED5685B5D3uLL);
  *&STACK[0x17A0] = vdupq_n_s64(0x66AE28ABA469B592uLL);
  *&STACK[0x17E0] = vdupq_n_s64(0xCE3F5299798BB6ABLL);
  *&STACK[0x1800] = vdupq_n_s64(0x5AF960B27FEFAF3BuLL);
  *&STACK[0x13F0] = vdupq_n_s64(v11);
  *&STACK[0x14B0] = vdupq_n_s64(v9);
  *&STACK[0x17F0] = vdupq_n_s64(0xCCA8EBAA2DCB2536);
  *&STACK[0x14A0] = vdupq_n_s64(a3);
  *&STACK[0x1850] = vdupq_n_s64(0x1696A34D4DBEA686uLL);
  *&STACK[0x1840] = vdupq_n_s64(a2);
  *&STACK[0x17D0] = vdupq_n_s64(0x8FFB5CEE75F17274);
  *&STACK[0x1830] = vdupq_n_s64(0x3B56774011A0C4A7uLL);
  return v15(0);
}

uint64_t sub_10005A108(double a1, __n128 a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, uint64_t a9, int a10)
{
  v18 = *(v11 + 8 * (v10 - 653));
  LODWORD(STACK[0x1040]) = a10 & 0xFFFFFFF0;
  v19 = LODWORD(STACK[0x1058]) + LODWORD(STACK[0x1048]) + LODWORD(STACK[0x1050]);
  *&STACK[0x1080] = a8;
  *&STACK[0x1070] = v12;
  *&STACK[0x1060] = v13;
  *&STACK[0x13E0] = v14;
  *&STACK[0x13C0] = v15;
  *&STACK[0x13D0] = v16;
  *&STACK[0x1090] = v17;
  *&STACK[0x10A0] = a2;
  return v18(v10 ^ 0x25Fu, -(a10 & 0xFFFFFFF0), (v19 - 1125416081), (v19 - 1125422777), 4294967280);
}

uint64_t sub_10005A188@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unint64_t a6@<X8>, int8x16_t a7@<Q3>)
{
  v9 = (a3 + a5 + 16);
  v10 = (a3 + a5 + 15);
  v11 = (a3 + a5 + 14);
  v12 = (a3 + a5 + 13);
  v13 = (a3 + a5 + 12);
  v14 = (a3 + a5 + 11);
  v15 = (a3 + a5 + 10);
  v16 = (a3 + a5 + 8);
  v17 = (a4 + a5 + a1 + 16);
  v18 = (a3 + a5 + 7);
  v19 = STACK[0x1820];
  v20 = STACK[0x1820] + v9;
  v21.i64[0] = v20;
  v21.i64[1] = STACK[0x1820] + v10;
  v22 = v21;
  *&STACK[0x1600] = v21;
  v23 = (a3 + a5 + 6);
  v21.i64[0] = v19 + v11;
  v21.i64[1] = v19 + v12;
  v24 = v21;
  *&STACK[0x15B0] = v21;
  v25 = (a3 + a5 + 5);
  v21.i64[0] = v19 + v13;
  v21.i64[1] = v19 + v14;
  v26 = v21;
  v27 = (a3 + a5 + 4);
  v21.i64[0] = v19 + v15;
  v21.i64[1] = v19 + v17;
  v28 = v21;
  *&STACK[0x1540] = v21;
  v29 = (a3 + a5 + 3);
  v21.i64[0] = v19 + v16;
  v21.i64[1] = v19 + v18;
  v30 = v21;
  *&STACK[0x1740] = v21;
  v31 = (a3 + a5 + 2);
  v21.i64[0] = v19 + v23;
  v21.i64[1] = v19 + v25;
  v32 = v21;
  *&STACK[0x1730] = v21;
  v33 = (a3 + a5 + 1);
  v21.i64[0] = v19 + v27;
  v21.i64[1] = v19 + v29;
  v34 = v21;
  *&STACK[0x1710] = v21;
  v21.i64[0] = v19 + v31;
  v21.i64[1] = v19 + v33;
  v35 = v21;
  *&STACK[0x1720] = v21;
  v21.i64[0] = v15 + v8 + 10;
  v21.i64[1] = v17 + v8 + 10;
  *&STACK[0x10E0] = v21;
  v36.i64[0] = v13 + v8 + 10;
  v37.i64[0] = v11 + v8 + 10;
  v38 = v9 + v8;
  v36.i64[1] = v14 + v8 + 10;
  v21.i64[0] = v38 + 10;
  v37.i64[1] = v12 + v8 + 10;
  v39 = v37;
  *&STACK[0x10C0] = v37;
  v21.i64[1] = v10 + v8 + 10;
  v40 = v21;
  *&STACK[0x10F0] = v21;
  v41 = vandq_s8(v35, *&STACK[0x1940]);
  v42 = vandq_s8(v34, *&STACK[0x1940]);
  v43 = vandq_s8(v32, *&STACK[0x1940]);
  v44 = vandq_s8(v30, *&STACK[0x1940]);
  v45 = vandq_s8(v28, *&STACK[0x1940]);
  v46 = vandq_s8(v26, *&STACK[0x1940]);
  v47 = v26;
  v48 = vandq_s8(v24, *&STACK[0x1940]);
  v49 = vandq_s8(v22, *&STACK[0x1940]);
  v50 = *&STACK[0x1940];
  v51 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v59 = vaddq_s64(v58, *&STACK[0x1870]);
  v60 = vaddq_s64(v57, *&STACK[0x1870]);
  v61 = vaddq_s64(v56, *&STACK[0x1870]);
  v62 = vaddq_s64(v55, *&STACK[0x1870]);
  v63 = vaddq_s64(v54, *&STACK[0x1870]);
  v64 = vaddq_s64(v53, *&STACK[0x1870]);
  v65 = vaddq_s64(v52, *&STACK[0x1870]);
  v66 = vaddq_s64(v51, *&STACK[0x1870]);
  v67 = *&STACK[0x1870];
  v68 = *&STACK[0x1790];
  v69 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v58), *&STACK[0x14A0]), v59), vandq_s8(v59, *&STACK[0x14A0]));
  v70 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v57), *&STACK[0x14A0]), v60), vandq_s8(v60, *&STACK[0x14A0]));
  v71 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v56), *&STACK[0x14A0]), v61), vandq_s8(v61, *&STACK[0x14A0]));
  v72 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v55), *&STACK[0x14A0]), v62), vandq_s8(v62, *&STACK[0x14A0]));
  v73 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v54), *&STACK[0x14A0]), v63), vandq_s8(v63, *&STACK[0x14A0]));
  v74 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v53), *&STACK[0x14A0]), v64), vandq_s8(v64, *&STACK[0x14A0]));
  v75 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v52), *&STACK[0x14A0]), v65), vandq_s8(v65, *&STACK[0x14A0]));
  v76 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v51), *&STACK[0x14A0]), v66), vandq_s8(v66, *&STACK[0x14A0]));
  v77 = veorq_s8(v76, *&STACK[0x1490]);
  v78 = veorq_s8(v75, *&STACK[0x1490]);
  v79 = veorq_s8(v74, *&STACK[0x1490]);
  v80 = veorq_s8(v73, *&STACK[0x1490]);
  v81 = veorq_s8(v72, *&STACK[0x1490]);
  v82 = veorq_s8(v71, *&STACK[0x1490]);
  v83 = veorq_s8(v70, *&STACK[0x1490]);
  v84 = veorq_s8(v69, *&STACK[0x1490]);
  v85 = veorq_s8(v69, a7);
  v86 = veorq_s8(v70, a7);
  v87 = veorq_s8(v71, a7);
  v88 = veorq_s8(v72, a7);
  v89 = veorq_s8(v73, a7);
  v90 = veorq_s8(v74, a7);
  v91 = veorq_s8(v75, a7);
  v92 = veorq_s8(v76, a7);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v92);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v91);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v90);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v89);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v88);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v87);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85);
  v101 = vsubq_s64(vorrq_s8(v98, *&STACK[0x14C0]), vorrq_s8(v98, *&STACK[0x1410]));
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(v100, *&STACK[0x14C0]), vorrq_s8(v100, *&STACK[0x1410])), *&STACK[0x1410]);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v93, *&STACK[0x14C0]), vorrq_s8(v93, *&STACK[0x1410])), *&STACK[0x1410]), *&STACK[0x1080]);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, *&STACK[0x14C0]), vorrq_s8(v94, *&STACK[0x1410])), *&STACK[0x1410]), *&STACK[0x1080]);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, *&STACK[0x14C0]), vorrq_s8(v95, *&STACK[0x1410])), *&STACK[0x1410]), *&STACK[0x1080]);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, *&STACK[0x14C0]), vorrq_s8(v96, *&STACK[0x1410])), *&STACK[0x1410]), *&STACK[0x1080]);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, *&STACK[0x14C0]), vorrq_s8(v97, *&STACK[0x1410])), *&STACK[0x1410]), *&STACK[0x1080]);
  v108 = veorq_s8(vaddq_s64(v101, *&STACK[0x1410]), *&STACK[0x1080]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, *&STACK[0x14C0]), vorrq_s8(v99, *&STACK[0x1410])), *&STACK[0x1410]), *&STACK[0x1080]);
  v110 = veorq_s8(v102, *&STACK[0x1080]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v112 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v113 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v114 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v115 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v116 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v117 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v118 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v118);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v117);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v116);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v115);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v114);
  v127 = vaddq_s64(v121, v113);
  v128 = vaddq_s64(v120, v112);
  v129 = vaddq_s64(v119, v111);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, *&STACK[0x1460]), vorrq_s8(v122, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, *&STACK[0x1460]), vorrq_s8(v123, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, *&STACK[0x1460]), vorrq_s8(v124, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, *&STACK[0x1460]), vorrq_s8(v125, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, *&STACK[0x1460]), vorrq_s8(v126, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, *&STACK[0x1460]), vorrq_s8(v127, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, *&STACK[0x1460]), vorrq_s8(v128, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x1460]), vorrq_s8(v129, *&STACK[0x14B0])), *&STACK[0x14B0]), *&STACK[0x1470]);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v139 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v140 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v141 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v142 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v143 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v144 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v145 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v146 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v145);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v144);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v143);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v142);
  v154 = vaddq_s64(v149, v141);
  v155 = vaddq_s64(v148, v140);
  v156 = vaddq_s64(v147, v139);
  v157 = vaddq_s64(v146, v138);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, *&STACK[0x1450]), vorrq_s8(v150, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v151, *&STACK[0x1450]), vorrq_s8(v151, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v152, *&STACK[0x1450]), vorrq_s8(v152, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, *&STACK[0x1450]), vorrq_s8(v153, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, *&STACK[0x1450]), vorrq_s8(v154, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v163 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, *&STACK[0x1450]), vorrq_s8(v155, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v167 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v156, *&STACK[0x1450]), vorrq_s8(v156, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v157, *&STACK[0x1450]), vorrq_s8(v157, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v171 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v172 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v173 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v174 = veorq_s8(v161, v167);
  v175 = veorq_s8(v160, v165);
  v176 = veorq_s8(v159, v164);
  v177 = veorq_s8(v158, v163);
  v178 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v177);
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v176);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v175);
  v186 = vaddq_s64(v182, v174);
  v187 = vaddq_s64(v181, v173);
  v188 = vaddq_s64(v180, v172);
  v189 = vaddq_s64(v179, v171);
  v190 = vaddq_s64(v178, v170);
  v191 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v183, v183), *&STACK[0x1430]), v183), *&STACK[0x1400]);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v190, v190), *&STACK[0x1430]), v190), *&STACK[0x1400]), *&STACK[0x1070]);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v189, v189), *&STACK[0x1430]), v189), *&STACK[0x1400]), *&STACK[0x1070]);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), *&STACK[0x1430]), v188), *&STACK[0x1400]), *&STACK[0x1070]);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187, v187), *&STACK[0x1430]), v187), *&STACK[0x1400]), *&STACK[0x1070]);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v186, v186), *&STACK[0x1430]), v186), *&STACK[0x1400]), *&STACK[0x1070]);
  v197 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v185, v185), *&STACK[0x1430]), v185), *&STACK[0x1400]), *&STACK[0x1070]);
  v199 = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v184, v184), *&STACK[0x1430]), v184), *&STACK[0x1400]), *&STACK[0x1070]);
  v202 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v203 = veorq_s8(v191, *&STACK[0x1070]);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v205 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v206 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v207 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v208 = veorq_s8(v195, v202);
  v209 = veorq_s8(v194, v200);
  v210 = veorq_s8(v193, v199);
  v211 = veorq_s8(v192, v197);
  v212 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v211);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v210);
  v220 = vaddq_s64(v217, v209);
  v221 = vaddq_s64(v216, v208);
  v222 = vaddq_s64(v215, v207);
  v223 = vaddq_s64(v214, v206);
  v224 = vaddq_s64(v213, v205);
  v225 = vaddq_s64(v212, v204);
  v226 = *&STACK[0x1060];
  *&STACK[0x1120] = vsubq_s64(vandq_s8(vaddq_s64(v225, v225), *&STACK[0x1060]), v225);
  *&STACK[0x1760] = vsubq_s64(vandq_s8(vaddq_s64(v221, v221), v226), v221);
  *&STACK[0x1750] = vsubq_s64(vandq_s8(vaddq_s64(v220, v220), v226), v220);
  *&STACK[0x1150] = vsubq_s64(vandq_s8(vaddq_s64(v219, v219), v226), v219);
  *&STACK[0x1110] = vsubq_s64(vandq_s8(vaddq_s64(v218, v218), v226), v218);
  v227 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), v226), v222), *&STACK[0x13E0]);
  v228 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v223, v223), v226), v223), *&STACK[0x13E0]);
  v229 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v224, v224), v226), v224), *&STACK[0x13E0]);
  *&STACK[0x1100] = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v230 = *&STACK[0x13C0];
  v231 = veorq_s8(v229, *&STACK[0x13C0]);
  v232 = veorq_s8(v228, *&STACK[0x13C0]);
  *&STACK[0x1530] = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  *&STACK[0x1180] = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v233 = veorq_s8(v227, v230);
  *&STACK[0x1130] = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  *&STACK[0x10D0] = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v235 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v236 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v237 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v236);
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v235);
  v240 = vaddq_s64(v237, v234);
  v241 = veorq_s8(vaddq_s64(vsubq_s64(v240, vandq_s8(vaddq_s64(v240, v240), *&STACK[0x1850])), *&STACK[0x1840]), *&STACK[0x13D0]);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), *&STACK[0x1850])), *&STACK[0x1840]), *&STACK[0x13D0]);
  *&STACK[0x10B0] = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v244 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v245 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v246 = vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL);
  v247 = vandq_s8(v39, v50);
  v248 = v36;
  v249 = vandq_s8(v36, v50);
  v250 = vandq_s8(*&STACK[0x10E0], v50);
  v251 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL);
  v254 = vandq_s8(v40, v50);
  v255 = vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL);
  v256 = vaddq_s64(v255, v67);
  v257 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v68, v255), *&STACK[0x1780]), v256), vandq_s8(v256, *&STACK[0x1770]));
  v258 = vaddq_s64(v253, v67);
  v259 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v68, v253), *&STACK[0x1780]), v258), vandq_s8(v258, *&STACK[0x1770]));
  v260 = vaddq_s64(v252, v67);
  v261 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v68, v252), *&STACK[0x1780]), v260), vandq_s8(v260, *&STACK[0x1770]));
  v262 = vaddq_s64(v251, v67);
  v263 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v68, v251), *&STACK[0x1780]), v262), vandq_s8(v262, *&STACK[0x1770]));
  v264 = veorq_s8(v261, *&STACK[0x1830]);
  v265 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v266 = vaddq_s64(v246, v244);
  v267 = veorq_s8(v263, *&STACK[0x1830]);
  v268 = *&STACK[0x17D0];
  v269 = veorq_s8(v261, *&STACK[0x17D0]);
  v270 = vaddq_s64(v265, v269);
  v271 = *&STACK[0x1090];
  v272 = vsubq_s64(vorrq_s8(vaddq_s64(v270, v270), *&STACK[0x1090]), v270);
  v273 = veorq_s8(v263, *&STACK[0x17D0]);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v273);
  v275 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v277 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v274, v274), *&STACK[0x1090]), v274), *&STACK[0x1440]), *&STACK[0x17B0]);
  v278 = veorq_s8(v277, v276);
  v279 = vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL);
  v280 = veorq_s8(vaddq_s64(v272, *&STACK[0x1440]), *&STACK[0x17B0]);
  v281 = veorq_s8(v280, v275);
  v282 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v283 = vaddq_s64(v279, v278);
  v284 = vsubq_s64(vandq_s8(vaddq_s64(v283, v283), *&STACK[0x17A0]), v283);
  v285 = vaddq_s64(v282, v281);
  v286 = vaddq_s64(v245, v243);
  v287 = vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL);
  v289 = *&STACK[0x17F0];
  v290 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v285, v285), *&STACK[0x17A0]), v285), *&STACK[0x17F0]), *&STACK[0x1800]);
  v291 = veorq_s8(v290, v288);
  v292 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v293 = *&STACK[0x10A0];
  v294 = vsubq_s64(vorrq_s8(v266, *&STACK[0x1860]), vorrq_s8(v266, *&STACK[0x10A0]));
  v295 = veorq_s8(vaddq_s64(v284, *&STACK[0x17F0]), *&STACK[0x1800]);
  v296 = veorq_s8(v295, v287);
  v297 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v298 = vaddq_s64(v292, v291);
  v299 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v300 = *&STACK[0x16F0];
  v301 = veorq_s8(vaddq_s64(v297, v296), *&STACK[0x16F0]);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL));
  v303 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v304 = veorq_s8(v298, *&STACK[0x16F0]);
  v305 = veorq_s8(v304, v299);
  v306 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v307 = vaddq_s64(v303, v302);
  v308 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL);
  v310 = veorq_s8(vaddq_s64(v306, v305), *&STACK[0x1570]);
  v311 = veorq_s8(v310, v309);
  v312 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v313 = veorq_s8(v307, *&STACK[0x1570]);
  v314 = veorq_s8(v313, v308);
  v315 = vsraq_n_u64(vshlq_n_s64(v313, 0x38uLL), v313, 8uLL);
  v316 = vaddq_s64(v312, v311);
  v317 = vsubq_s64(vandq_s8(vaddq_s64(v316, v316), *&STACK[0x1880]), v316);
  v318 = vaddq_s64(v315, v314);
  v319 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL);
  v321 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v318, v318), *&STACK[0x1880]), v318), *&STACK[0x18A0]), *&STACK[0x1890]);
  v322 = veorq_s8(v321, v320);
  v323 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v324 = veorq_s8(vaddq_s64(v317, *&STACK[0x18A0]), *&STACK[0x1890]);
  v325 = veorq_s8(v324, v319);
  v326 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325);
  v327 = vaddq_s64(v323, v322);
  v328 = vsubq_s64(vorrq_s8(v286, *&STACK[0x1860]), vorrq_s8(v286, *&STACK[0x10A0]));
  v329 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v327, *&STACK[0x18F0]), vorrq_s8(v327, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v330 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v326, *&STACK[0x18F0]), vorrq_s8(v326, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v331 = vdupq_n_s64(a6);
  v332 = *&STACK[0x17E0];
  v333 = *&STACK[0x16C0];
  v334 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v248, 3uLL), v331)));
  v510.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v294, *&STACK[0x10A0]), *&STACK[0x17E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1540], 3uLL), v331))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x10E0], 3uLL), v331))));
  v510.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v328, *&STACK[0x10A0]), *&STACK[0x17E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v47, 3uLL), v331))), v334);
  v335 = veorq_s8(v259, *&STACK[0x1830]);
  v336 = veorq_s8(v259, *&STACK[0x17D0]);
  v337 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL), v336);
  v338 = *&STACK[0x1440];
  v339 = *&STACK[0x17B0];
  v340 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v337, v337), *&STACK[0x1090]), v337), *&STACK[0x1440]), *&STACK[0x17B0]);
  v341 = veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v341);
  v343 = *&STACK[0x17A0];
  v344 = *&STACK[0x13D0];
  v345 = veorq_s8(vaddq_s64(vsubq_s64(v238, vandq_s8(vaddq_s64(v238, v238), *&STACK[0x1850])), *&STACK[0x1840]), *&STACK[0x13D0]);
  v346 = *&STACK[0x1800];
  v347 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v342, v342), *&STACK[0x17A0]), v342), *&STACK[0x17F0]), *&STACK[0x1800]);
  v348 = veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL));
  v349 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v348), *&STACK[0x16F0]);
  v350 = veorq_s8(v349, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v351 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), veorq_s8(v345, *&STACK[0x10B0]));
  v352 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v349, 0x38uLL), v349, 8uLL), v350);
  v353 = *&STACK[0x1570];
  v354 = veorq_s8(v352, *&STACK[0x1570]);
  v355 = veorq_s8(v354, vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL));
  v356 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v355);
  v357 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v356, v356), *&STACK[0x1880]), v356), *&STACK[0x18A0]), *&STACK[0x1890]);
  v358 = veorq_s8(v357, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL));
  v359 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL), v358);
  v360 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v359, *&STACK[0x18F0]), vorrq_s8(v359, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v361 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v351, *&STACK[0x1860]), vorrq_s8(v351, *&STACK[0x10A0])), *&STACK[0x10A0]), *&STACK[0x17E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x15B0], 3uLL), v331)));
  v234.i64[0] = v31 + v8 + 10;
  v362 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL), veorq_s8(v360, vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x10C0], 3uLL), v331)));
  v40.i64[0] = v27 + v8 + 10;
  v234.i64[1] = v33 + v8 + 10;
  *&STACK[0x10E0] = v234;
  v363 = v29 + v8;
  v364 = STACK[0x1708];
  v40.i64[1] = v363 + 10;
  *&STACK[0x10C0] = v40;
  v365 = *&STACK[0x13E0];
  v366 = *&STACK[0x13C0];
  v367 = veorq_s8(vaddq_s64(*&STACK[0x1120], *&STACK[0x13E0]), *&STACK[0x13C0]);
  v368 = veorq_s8(vaddq_s64(*&STACK[0x1110], *&STACK[0x13E0]), *&STACK[0x13C0]);
  v369 = veorq_s8(v368, *&STACK[0x10D0]);
  v510.val[1] = veorq_s8(v361, v362);
  v370 = veorq_s8(v257, *&STACK[0x1830]);
  v371 = vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL);
  v372 = veorq_s8(v257, v268);
  v373 = vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL);
  v374 = vaddq_s64(v371, v372);
  v375 = veorq_s8(v367, *&STACK[0x1100]);
  v376 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v374, v374), v271), v374), v338), v339);
  v377 = veorq_s8(v376, vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  v378 = vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL);
  v379 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v380 = vsraq_n_u64(vshlq_n_s64(v375, 3uLL), v375, 0x3DuLL);
  v381 = vaddq_s64(v379, v377);
  v382 = vaddq_s64(v378, v375);
  v383 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v381, v381), v343), v381), v289), v346);
  v384 = veorq_s8(v383, vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL));
  v385 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL), v384), v300);
  v386 = veorq_s8(v385, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL));
  v387 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL), v386), v353);
  v388 = v353;
  v389 = veorq_s8(vaddq_s64(vsubq_s64(v382, vandq_s8(vaddq_s64(v382, v382), *&STACK[0x1850])), *&STACK[0x1840]), v344);
  v390 = v344;
  v391 = veorq_s8(v387, vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL));
  v392 = veorq_s8(v389, v380);
  v393 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v387, 0x38uLL), v387, 8uLL), v391);
  v394 = vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL);
  v395 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v393, v393), *&STACK[0x1880]), v393), *&STACK[0x18A0]), *&STACK[0x1890]);
  v396 = veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v289.i64[0] = v23 + v8 + 10;
  v397 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), v396);
  v398 = vaddq_s64(v394, v392);
  v399 = vsubq_s64(vorrq_s8(v398, *&STACK[0x1860]), vorrq_s8(v398, v293));
  v400 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v397, *&STACK[0x18F0]), vorrq_s8(v397, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v346.i64[0] = v16 + v8 + 10;
  v289.i64[1] = v25 + v8 + 10;
  *&STACK[0x1540] = v289;
  v346.i64[1] = v18 + v8 + 10;
  *&STACK[0x15B0] = v346;
  v401 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL), veorq_s8(v400, vsraq_n_u64(vshlq_n_s64(v396, 3uLL), v396, 0x3DuLL)));
  v402 = vandq_s8(v346, *&STACK[0x1940]);
  v403 = vandq_s8(v289, *&STACK[0x1940]);
  v404 = vshlq_u64(veorq_s8(vaddq_s64(v399, v293), v332), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1600], 3uLL), v331)));
  v405 = vandq_s8(v40, *&STACK[0x1940]);
  v510.val[0] = veorq_s8(v404, vshlq_u64(veorq_s8(v401, v333), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x10F0], 3uLL), v331))));
  v406 = vandq_s8(v234, *&STACK[0x1940]);
  v407 = vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL);
  v408 = vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL);
  v409 = vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL);
  v410 = vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL);
  v411 = *&STACK[0x1870];
  v412 = vaddq_s64(v410, *&STACK[0x1870]);
  v413 = *&STACK[0x1790];
  v414 = *&STACK[0x1780];
  v415 = *&STACK[0x1770];
  *&STACK[0x1120] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v410), *&STACK[0x1780]), v412), vandq_s8(v412, *&STACK[0x1770]));
  v416 = vaddq_s64(v409, v411);
  *&STACK[0x1110] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v413, v409), v414), v416), vandq_s8(v416, v415));
  v417 = vaddq_s64(v408, v411);
  v418 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v413, v408), v414), v417), vandq_s8(v417, v415));
  v419 = vaddq_s64(v407, v411);
  v420 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v413, v407), v414), v419), vandq_s8(v419, v415));
  v421 = vaddq_s64(*&STACK[0x1150], v365);
  *&STACK[0x1600] = vqtbl4q_s8(v510, *&STACK[0x17C0]);
  v510.val[0] = veorq_s8(v420, *&STACK[0x1830]);
  v510.val[1] = veorq_s8(v418, *&STACK[0x1830]);
  v422 = veorq_s8(v418, v268);
  v423 = veorq_s8(v421, v366);
  v510.val[2] = vsraq_n_u64(vshlq_n_s64(v510.val[1], 0x38uLL), v510.val[1], 8uLL);
  v510.val[1] = vsraq_n_u64(vshlq_n_s64(v510.val[0], 0x38uLL), v510.val[0], 8uLL);
  v510.val[0] = vaddq_s64(v510.val[2], v422);
  v510.val[3] = veorq_s8(v423, *&STACK[0x1130]);
  v424 = veorq_s8(v420, v268);
  v510.val[1] = vaddq_s64(v510.val[1], v424);
  v510.val[2] = vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL);
  v425 = vsubq_s64(vorrq_s8(vaddq_s64(v510.val[1], v510.val[1]), v271), v510.val[1]);
  v510.val[1] = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v426 = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v427 = vsraq_n_u64(vshlq_n_s64(v510.val[3], 3uLL), v510.val[3], 0x3DuLL);
  v428 = veorq_s8(vaddq_s64(v425, v338), v339);
  v510.val[2] = vaddq_s64(v510.val[2], v510.val[3]);
  v429 = veorq_s8(v428, v426);
  v510.val[3] = vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL);
  v430 = vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL);
  v431 = vaddq_s64(v373, v369);
  v510.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v510.val[0], v510.val[0]), v271), v510.val[0]), v338), v339);
  v510.val[1] = veorq_s8(v510.val[0], v510.val[1]);
  v432 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[0], 0x38uLL), v510.val[0], 8uLL), v510.val[1]);
  v510.val[0] = vsubq_s64(v510.val[2], vandq_s8(vaddq_s64(v510.val[2], v510.val[2]), *&STACK[0x1850]));
  v510.val[2] = vaddq_s64(v510.val[3], v429);
  v433 = v343;
  v510.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v510.val[2], v510.val[2]), v343), v510.val[2]), *&STACK[0x17F0]), *&STACK[0x1800]);
  v510.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v432, v432), v343), v432), *&STACK[0x17F0]), *&STACK[0x1800]);
  v434 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v435 = veorq_s8(v510.val[3], vsraq_n_u64(vshlq_n_s64(v510.val[1], 3uLL), v510.val[1], 0x3DuLL));
  v510.val[1] = veorq_s8(v510.val[2], v434);
  v436 = veorq_s8(vaddq_s64(vsubq_s64(v431, vandq_s8(vaddq_s64(v431, v431), *&STACK[0x1850])), *&STACK[0x1840]), v390);
  v510.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[3], 0x38uLL), v510.val[3], 8uLL), v435), *&STACK[0x16F0]);
  v510.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[2], 0x38uLL), v510.val[2], 8uLL), v510.val[1]), *&STACK[0x16F0]);
  v510.val[0] = veorq_s8(vaddq_s64(v510.val[0], *&STACK[0x1840]), v390);
  v437 = vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL);
  v438 = veorq_s8(v510.val[2], vsraq_n_u64(vshlq_n_s64(v510.val[1], 3uLL), v510.val[1], 0x3DuLL));
  v510.val[1] = veorq_s8(v510.val[3], v437);
  v439 = veorq_s8(v510.val[0], v427);
  v440 = vsraq_n_u64(vshlq_n_s64(v510.val[2], 0x38uLL), v510.val[2], 8uLL);
  v510.val[2] = vsraq_n_u64(vshlq_n_s64(v510.val[3], 0x38uLL), v510.val[3], 8uLL);
  v510.val[3] = vsraq_n_u64(vshlq_n_s64(v510.val[0], 0x38uLL), v510.val[0], 8uLL);
  v510.val[0] = vaddq_s64(v510.val[2], v510.val[1]);
  v510.val[2] = vaddq_s64(v440, v438);
  v441 = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v442 = veorq_s8(v436, v430);
  v510.val[2] = veorq_s8(v510.val[2], v388);
  v510.val[0] = veorq_s8(v510.val[0], v388);
  v443 = veorq_s8(v510.val[0], vsraq_n_u64(vshlq_n_s64(v510.val[1], 3uLL), v510.val[1], 0x3DuLL));
  v510.val[1] = vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL);
  v444 = veorq_s8(v510.val[2], v441);
  v445 = vaddq_s64(v510.val[1], v442);
  v510.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[0], 0x38uLL), v510.val[0], 8uLL), v443);
  v510.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[2], 0x38uLL), v510.val[2], 8uLL), v444);
  v446 = vaddq_s64(v510.val[3], v439);
  v510.val[2] = vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL);
  v510.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v510.val[1], v510.val[1]), *&STACK[0x1880]), v510.val[1]), *&STACK[0x18A0]), *&STACK[0x1890]);
  v510.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v510.val[0], v510.val[0]), *&STACK[0x1880]), v510.val[0]), *&STACK[0x18A0]), *&STACK[0x1890]);
  v447 = veorq_s8(v510.val[0], vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL));
  v448 = veorq_s8(v510.val[1], v510.val[2]);
  v510.val[2] = vsraq_n_u64(vshlq_n_s64(v510.val[0], 0x38uLL), v510.val[0], 8uLL);
  v510.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[1], 0x38uLL), v510.val[1], 8uLL), v448);
  v510.val[1] = vaddq_s64(v510.val[2], v447);
  v510.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v510.val[0], *&STACK[0x18F0]), vorrq_s8(v510.val[0], *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v510.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v510.val[1], *&STACK[0x18F0]), vorrq_s8(v510.val[1], *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v449 = veorq_s8(vaddq_s64(*&STACK[0x1760], v365), v366);
  v510.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v445, *&STACK[0x1860]), vorrq_s8(v445, v293)), v293), v332), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1720], 3uLL), v331))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[1], 0x38uLL), v510.val[1], 8uLL), veorq_s8(v510.val[1], vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x10E0], 3uLL), v331))));
  v510.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v446, *&STACK[0x1860]), vorrq_s8(v446, v293)), v293), v332), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1710], 3uLL), v331))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510.val[0], 0x38uLL), v510.val[0], 8uLL), veorq_s8(v510.val[0], vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x10C0], 3uLL), v331))));
  v450 = veorq_s8(*&STACK[0x1110], *&STACK[0x1830]);
  v451 = veorq_s8(*&STACK[0x1110], v268);
  v452 = veorq_s8(vaddq_s64(*&STACK[0x1750], v365), v366);
  v453 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451);
  v454 = veorq_s8(v452, *&STACK[0x1180]);
  v455 = vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL);
  v456 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v453, v453), v271), v453), v338), v339);
  v457 = vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL);
  v458 = veorq_s8(v456, v455);
  v459 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v458);
  v460 = veorq_s8(v449, *&STACK[0x1530]);
  v461 = vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL);
  v462 = vsraq_n_u64(vshlq_n_s64(v449, 0x38uLL), v449, 8uLL);
  v463 = vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL);
  v464 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v459, v459), v433), v459), *&STACK[0x17F0]), *&STACK[0x1800]);
  v465 = veorq_s8(v464, v461);
  v466 = vaddq_s64(v462, v460);
  v467 = vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL);
  v468 = vaddq_s64(v457, v454);
  v469 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL), v465), *&STACK[0x16F0]);
  v470 = veorq_s8(v469, vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL));
  v471 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL), v470), v388);
  v472 = veorq_s8(v471, vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL));
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v473, v473), *&STACK[0x1880]), v473), *&STACK[0x18A0]), *&STACK[0x1890]);
  v475 = veorq_s8(vaddq_s64(vsubq_s64(v468, vandq_s8(vaddq_s64(v468, v468), *&STACK[0x1850])), *&STACK[0x1840]), v390);
  v476 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v477 = vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL);
  v478 = veorq_s8(v475, v467);
  v479 = vaddq_s64(v477, v476);
  v480 = vsraq_n_u64(vshlq_n_s64(v475, 0x38uLL), v475, 8uLL);
  v481 = vsraq_n_u64(vshlq_n_s64(v476, 3uLL), v476, 0x3DuLL);
  v482 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v479, *&STACK[0x18F0]), vorrq_s8(v479, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v483 = vaddq_s64(v480, v478);
  v510.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v483, *&STACK[0x1860]), vorrq_s8(v483, v293)), v293), v332), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1730], 3uLL), v331))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482, 0x38uLL), v482, 8uLL), veorq_s8(v482, v481)), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1540], 3uLL), v331))));
  v484 = veorq_s8(*&STACK[0x1120], *&STACK[0x1830]);
  v485 = veorq_s8(*&STACK[0x1120], v268);
  v486 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484, 0x38uLL), v484, 8uLL), v485);
  v487 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v486, v486), v271), v486), v338), v339);
  v488 = veorq_s8(v487, vsraq_n_u64(vshlq_n_s64(v485, 3uLL), v485, 0x3DuLL));
  v489 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL), v488);
  v490 = veorq_s8(vaddq_s64(vsubq_s64(v466, vandq_s8(vaddq_s64(v466, v466), *&STACK[0x1850])), *&STACK[0x1840]), v390);
  v491 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v489, v489), v433), v489), *&STACK[0x17F0]), *&STACK[0x1800]);
  v492 = veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL));
  v493 = veorq_s8(v490, v463);
  v494 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492), *&STACK[0x16F0]);
  v495 = vsraq_n_u64(vshlq_n_s64(v490, 0x38uLL), v490, 8uLL);
  v496 = veorq_s8(v494, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v497 = vaddq_s64(v495, v493);
  v498 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v494, 0x38uLL), v494, 8uLL), v496), v388);
  v499 = veorq_s8(v498, vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL));
  v500 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v498, 0x38uLL), v498, 8uLL), v499);
  v501 = vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL);
  v502 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v500, v500), *&STACK[0x1880]), v500), *&STACK[0x18A0]), *&STACK[0x1890]);
  v503 = vsubq_s64(vorrq_s8(v497, *&STACK[0x1860]), vorrq_s8(v497, v293));
  v504 = veorq_s8(v502, v501);
  v505 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v502, 0x38uLL), v502, 8uLL), v504);
  v506 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v505, *&STACK[0x18F0]), vorrq_s8(v505, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v510.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v503, v293), v332), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1740], 3uLL), v331))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v506, 0x38uLL), v506, 8uLL), veorq_s8(v506, vsraq_n_u64(vshlq_n_s64(v504, 3uLL), v504, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x15B0], 3uLL), v331))));
  v507 = *&STACK[0x1600];
  v507.i64[1] = vqtbl4q_s8(v510, *&STACK[0x17C0]).u64[0];
  v508 = vrev64q_s8(v507);
  *(v38 - 5) = veorq_s8(vextq_s8(v508, v508, 8uLL), *(v20 - 15));
  return (*(v364 + 8 * ((14183 * (a2 == a5)) ^ v7)))();
}

uint64_t sub_10005BBAC(int a1, __n128 a2, double a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v10 = (a1 - 4547) | 0x1020;
  v11 = LODWORD(STACK[0x1040]);
  LODWORD(STACK[0x1760]) = v10;
  return (*(v9 + 8 * (((((v8 == v11) ^ (a1 + 104)) & 1) * (v10 - 6255)) ^ a1)))(v11, v8, a8, 0x51690C67EDF393EALL, 0x96A5A8A3375C925, 0x5C1862AABE258C3DLL, 0xF87C3A1C647484ADLL, 0x4278D6A7CB4DB389, a2, *&STACK[0x10A0], a4, a5, a6, *&STACK[0x14B0], *&STACK[0x14C0], *&STACK[0x1080]);
}

uint64_t sub_10005BE08@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W8>, int8x16_t a8@<Q1>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int8x16_t a11@<Q7>)
{
  v28 = (v13 + v16);
  v29 = (a6 + v16);
  v30 = (a5 + v16);
  v31 = (a4 + v16);
  v32 = (a3 + v16);
  v33 = v19 + v28;
  v34.i64[0] = v19 + v28;
  v34.i64[1] = v19 + v29;
  v35 = v34;
  *&STACK[0x1750] = v34;
  v36 = (a2 + v16);
  v34.i64[0] = v19 + v30;
  v34.i64[1] = v19 + v31;
  v37 = v34;
  *&STACK[0x1730] = v34;
  v34.i64[0] = v19 + v32;
  v34.i64[1] = v19 + v36;
  v38 = v34;
  *&STACK[0x1740] = v34;
  v34.i64[0] = v32 + v17 + 10;
  v34.i64[1] = v36 + v17 + 10;
  *&STACK[0x1530] = v34;
  v39.i64[0] = v30 + v17 + 10;
  v40 = a1 + v16 + 17 * (v12 ^ a7);
  v41 = v28 + v17;
  v39.i64[1] = v31 + v17 + 10;
  v34.i64[0] = v41 + 10;
  v34.i64[1] = v29 + v17 + 10;
  v42 = v34;
  *&STACK[0x15B0] = v34;
  v43 = (v14 + v16);
  v44.i64[0] = v19 + v40;
  v44.i64[1] = v19 + v43;
  *&STACK[0x1760] = v44;
  v34.i64[0] = v40 + v17 + 10;
  v34.i64[1] = v43 + v17 + 10;
  v45 = v34;
  *&STACK[0x1600] = v34;
  v46 = *&STACK[0x1940];
  v47 = vandq_s8(v38, *&STACK[0x1940]);
  v48 = vandq_s8(v37, *&STACK[0x1940]);
  v49 = vandq_s8(v35, *&STACK[0x1940]);
  v50 = vandq_s8(v44, *&STACK[0x1940]);
  v51 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v55 = *&STACK[0x1870];
  v56 = vaddq_s64(v54, *&STACK[0x1870]);
  v57 = vaddq_s64(v52, *&STACK[0x1870]);
  v58 = vaddq_s64(v51, *&STACK[0x1870]);
  v59 = vaddq_s64(v53, *&STACK[0x1870]);
  v60 = *&STACK[0x1790];
  v61 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v54), v21), v56), vandq_s8(v56, v21));
  v62 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v52), v21), v57), vandq_s8(v57, v21));
  v63 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v51), v21), v58), vandq_s8(v58, v21));
  v64 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x1790], v53), v21), v59), vandq_s8(v59, v21));
  v65 = veorq_s8(v63, *&STACK[0x1490]);
  v66 = veorq_s8(v62, *&STACK[0x1490]);
  v67 = veorq_s8(v61, *&STACK[0x1490]);
  v68 = veorq_s8(v64, *&STACK[0x1490]);
  v69 = veorq_s8(v61, *&STACK[0x1480]);
  v70 = veorq_s8(v62, *&STACK[0x1480]);
  v71 = veorq_s8(v63, *&STACK[0x1480]);
  v72 = veorq_s8(v64, *&STACK[0x1480]);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v77 = vaddq_s64(v75, v71);
  v78 = vaddq_s64(v74, v70);
  v79 = vaddq_s64(v73, v69);
  v80 = vaddq_s64(v76, v72);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, a10), vorrq_s8(v77, *&STACK[0x1410])), *&STACK[0x1410]), a11);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, a10), vorrq_s8(v78, *&STACK[0x1410])), *&STACK[0x1410]), a11);
  v83 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, a10), vorrq_s8(v79, *&STACK[0x1410])), *&STACK[0x1410]), a11);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v86 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v87 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v80, a10), vorrq_s8(v80, *&STACK[0x1410])), *&STACK[0x1410]), a11);
  v89 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v92 = veorq_s8(v88, v83);
  v93 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v94 = vaddq_s64(v91, v87);
  v95 = vaddq_s64(v90, v86);
  v96 = vaddq_s64(v89, v85);
  v97 = vaddq_s64(v93, v92);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, *&STACK[0x1460]), vorrq_s8(v94, a9)), a9), *&STACK[0x1470]);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, *&STACK[0x1460]), vorrq_s8(v95, a9)), a9), *&STACK[0x1470]);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, *&STACK[0x1460]), vorrq_s8(v96, a9)), a9), *&STACK[0x1470]);
  v101 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v103 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v104 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, *&STACK[0x1460]), vorrq_s8(v97, a9)), a9), *&STACK[0x1470]);
  v106 = veorq_s8(v98, v102);
  v107 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v109 = veorq_s8(v105, v101);
  v110 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v112 = vaddq_s64(v110, v106);
  v113 = vaddq_s64(v111, v109);
  v114 = vaddq_s64(v108, v104);
  v115 = vaddq_s64(v107, v103);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, *&STACK[0x1450]), vorrq_s8(v112, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, *&STACK[0x1450]), vorrq_s8(v114, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, *&STACK[0x1450]), vorrq_s8(v115, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v119 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, *&STACK[0x1450]), vorrq_s8(v113, *&STACK[0x13F0])), *&STACK[0x13F0]), *&STACK[0x1420]);
  v124 = veorq_s8(v118, v122);
  v125 = veorq_s8(v117, v121);
  v126 = veorq_s8(v116, v120);
  v127 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v128 = veorq_s8(v123, v119);
  v129 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v132 = vaddq_s64(v130, v126);
  v133 = vaddq_s64(v129, v125);
  v134 = vaddq_s64(v127, v124);
  v135 = vaddq_s64(v131, v128);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x1430]), v134), *&STACK[0x1400]), v22);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), *&STACK[0x1430]), v133), *&STACK[0x1400]), v22);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), *&STACK[0x1430]), v132), *&STACK[0x1400]), v22);
  v139 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x1430]), v135), *&STACK[0x1400]), v22);
  v143 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v144 = veorq_s8(v138, v141);
  v145 = veorq_s8(v137, v140);
  v146 = veorq_s8(v136, v139);
  v147 = veorq_s8(v142, v143);
  v148 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v146);
  v152 = vaddq_s64(v149, v145);
  v153 = vaddq_s64(v148, v144);
  *&STACK[0x1710] = vaddq_s64(v150, v147);
  v154 = vsubq_s64(vandq_s8(vaddq_s64(v153, v153), v23), v153);
  *&STACK[0x1720] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v156 = vsubq_s64(vandq_s8(vaddq_s64(v152, v152), v23), v152);
  v157 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v159 = vandq_s8(v45, v46);
  v160 = vsubq_s64(vandq_s8(vaddq_s64(v151, v151), v23), v151);
  v161 = vandq_s8(v42, v46);
  v162 = v39;
  v163 = vandq_s8(v39, v46);
  v164 = *&STACK[0x1530];
  v165 = vandq_s8(*&STACK[0x1530], v46);
  v166 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v169 = vaddq_s64(v156, v24);
  v170 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v171 = vaddq_s64(v170, v55);
  v172 = v23;
  v173 = vaddq_s64(v168, v55);
  v174 = vaddq_s64(v167, v55);
  v175 = *&STACK[0x1780];
  v176 = *&STACK[0x1770];
  *&STACK[0x1540] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v60, v170), *&STACK[0x1780]), v171), vandq_s8(v171, *&STACK[0x1770]));
  v177 = vaddq_s64(v166, v55);
  v178 = veorq_s8(vaddq_s64(v154, v24), v25);
  v179 = vsubq_s64(v60, v166);
  v180 = veorq_s8(v169, v25);
  v181 = veorq_s8(vaddq_s64(v160, v24), v25);
  v182 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v60, v168), v175), v173), vandq_s8(v173, v176));
  v183 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v60, v167), v175), v174), vandq_s8(v174, v176));
  v184 = vsubq_s64(vaddq_s64(vandq_s8(v179, v175), v177), vandq_s8(v177, v176));
  v185 = veorq_s8(v181, v158);
  v186 = veorq_s8(v184, *&STACK[0x1830]);
  v187 = veorq_s8(v183, *&STACK[0x1830]);
  v188 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v189 = veorq_s8(v180, v157);
  v190 = veorq_s8(v183, *&STACK[0x17D0]);
  v191 = veorq_s8(v184, *&STACK[0x17D0]);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v191);
  v193 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v194 = vaddq_s64(v188, v190);
  v195 = veorq_s8(v178, v155);
  v196 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192, v192), v27), v192), *&STACK[0x1440]), *&STACK[0x17B0]);
  v198 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v199 = veorq_s8(v197, v196);
  v200 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v189);
  v202 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v194, v194), v27), v194), *&STACK[0x1440]), *&STACK[0x17B0]);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v205 = vaddq_s64(v193, v185);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v207 = vaddq_s64(v200, v199);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207, v207), *&STACK[0x17A0]), v207), *&STACK[0x17F0]), *&STACK[0x1800]);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v206, v206), *&STACK[0x17A0]), v206), *&STACK[0x17F0]), *&STACK[0x1800]);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v211 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), *&STACK[0x16F0]);
  v213 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v211), *&STACK[0x16F0]);
  v214 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v215 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v216 = veorq_s8(v212, v214);
  v217 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v216);
  v219 = veorq_s8(vaddq_s64(vsubq_s64(v205, vandq_s8(vaddq_s64(v205, v205), *&STACK[0x1850])), *&STACK[0x1840]), v26);
  v220 = veorq_s8(vaddq_s64(v217, v215), *&STACK[0x1570]);
  v221 = veorq_s8(v218, *&STACK[0x1570]);
  v222 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(v201, vandq_s8(vaddq_s64(v201, v201), *&STACK[0x1850])), *&STACK[0x1840]), v26);
  v224 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v225 = veorq_s8(v220, v222);
  v226 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v227 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v225);
  v229 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v230 = vaddq_s64(v227, v224);
  v231 = veorq_s8(v219, v202);
  v232 = vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228, v228), *&STACK[0x1880]), v228), *&STACK[0x18A0]), *&STACK[0x1890]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v236 = vaddq_s64(v233, v231);
  v237 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v238 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v230, v230), *&STACK[0x1880]), v230), *&STACK[0x18A0]), *&STACK[0x1890]);
  v239 = veorq_s8(v238, v232);
  v240 = vaddq_s64(v229, v226);
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239);
  v242 = vsubq_s64(vorrq_s8(v236, *&STACK[0x1860]), vorrq_s8(v236, a8));
  v243 = vaddq_s64(v237, v235);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v243, *&STACK[0x18F0]), vorrq_s8(v243, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v245 = vdupq_n_s64(v11);
  v246 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v241, *&STACK[0x18F0]), vorrq_s8(v241, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v300.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v242, a8), *&STACK[0x17E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1740], 3uLL), v245))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v164, 3uLL), v245))));
  v300.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v240, *&STACK[0x1860]), vorrq_s8(v240, a8)), a8), *&STACK[0x17E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1730], 3uLL), v245))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v162, 3uLL), v245))));
  v247 = veorq_s8(v182, *&STACK[0x1830]);
  v248 = veorq_s8(v182, *&STACK[0x17D0]);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = vaddq_s64(v198, v195);
  v251 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v249, v249), v27), v249), *&STACK[0x1440]), *&STACK[0x17B0]);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252);
  v254 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v253, v253), *&STACK[0x17A0]), v253), *&STACK[0x17F0]), *&STACK[0x1800]);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v256 = veorq_s8(vaddq_s64(vsubq_s64(v250, vandq_s8(vaddq_s64(v250, v250), *&STACK[0x1850])), *&STACK[0x1840]), v26);
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255), *&STACK[0x16F0]);
  v258 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v259 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v260 = vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL);
  v261 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v262 = vaddq_s64(v260, v259);
  v263 = vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL);
  v264 = veorq_s8(v262, *&STACK[0x1570]);
  v265 = veorq_s8(v264, v263);
  v266 = vaddq_s64(v261, v258);
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v265);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v267, v267), *&STACK[0x1880]), v267), *&STACK[0x18A0]), *&STACK[0x1890]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269);
  v271 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270, *&STACK[0x18F0]), vorrq_s8(v270, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v300.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v266, *&STACK[0x1860]), vorrq_s8(v266, a8)), a8), *&STACK[0x17E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1750], 3uLL), v245))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x15B0], 3uLL), v245))));
  v272 = veorq_s8(*&STACK[0x1540], *&STACK[0x1830]);
  v273 = veorq_s8(*&STACK[0x1540], *&STACK[0x17D0]);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v273);
  v275 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v274, v274), v27), v274), *&STACK[0x1440]), *&STACK[0x17B0]);
  v276 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v277 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(*&STACK[0x1710], *&STACK[0x1710]), v172), *&STACK[0x1710]), v24), v25);
  v278 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), v276);
  v279 = veorq_s8(v277, *&STACK[0x1720]);
  v280 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v278, v278), *&STACK[0x17A0]), v278), *&STACK[0x17F0]), *&STACK[0x1800]);
  v281 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v282 = vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL);
  v285 = vaddq_s64(v282, v279);
  v286 = veorq_s8(vaddq_s64(v283, v281), *&STACK[0x16F0]);
  v287 = veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287), *&STACK[0x1570]);
  v289 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v290 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v289);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v290, v290), *&STACK[0x1880]), v290), *&STACK[0x18A0]), *&STACK[0x1890]);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x1850])), *&STACK[0x1840]), v26);
  v293 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL));
  v294 = vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL);
  v295 = veorq_s8(v292, v284);
  v296 = vaddq_s64(v294, v293);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v296, *&STACK[0x18F0]), vorrq_s8(v296, *&STACK[0x1900])), *&STACK[0x1900]), *&STACK[0x18B0]);
  v298 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v295);
  v300.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v298, *&STACK[0x1860]), vorrq_s8(v298, a8)), a8), *&STACK[0x17E0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1760], 3uLL), v245))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1600], 3uLL), v245))));
  *(v41 + 3) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v300, *&STACK[0x15C0])), *(v33 - 7));
  return (*(v20 + 8 * (((v18 == v16) * v15) ^ v12)))();
}

uint64_t sub_10005CCA0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v20 = (v7 - 1125416081);
  v21 = STACK[0x1820] + v20;
  v22 = v20 + STACK[0x1810];
  v23 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((a2 - v23) & a1) + v23 + v13 - ((v23 + v13) & a1);
  v25 = __ROR8__(v24 ^ a3, 8);
  v26 = v24 ^ a6;
  v27 = (v12 - ((v25 + v26) | v12) + ((v25 + v26) | a4)) ^ v16;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((v10 - ((v29 + v28) | v10) + ((v29 + v28) | 0x9827780194A34532)) ^ 0xE76F319C687CF3FLL, 8);
  v31 = (v10 - ((v29 + v28) | v10) + ((v29 + v28) | 0x9827780194A34532)) ^ 0xE76F319C687CF3FLL ^ __ROR8__(v28, 61);
  v32 = (v14 - ((v30 + v31) | v14) + ((v30 + v31) | v17)) ^ 0x63A5A39A2714D1C3;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((v15 | (2 * (v34 + v33))) - (v34 + v33) + 0x78A7F1CD3675070) ^ 0xF436984B6E1EE393;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8) + v36;
  v38 = __ROR8__((v22 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((a2 - v38) & 0x3027198D4276DB70) + v38 + v13 - ((v38 + v13) & 0x3627198D4276DB70);
  v40 = v39 ^ 0x3B56774011A0C4A7;
  v39 ^= 0x8FFB5CEE75F17274;
  v41 = __ROR8__(v40, 8);
  v42 = (((2 * v37) & 0x9FE972D68BE672A4) - v37 - 0x4FF4B96B45F33953) ^ 0xF36B4E865AAF96DELL;
  v43 = (((2 * (v41 + v39)) | 0x967F9B7D3960DED2) - (v41 + v39) - 0x4B3FCDBE9CB06F69) ^ 0x15D189ED5685B5D3;
  v44 = v42 ^ __ROR8__(v36, 61);
  v45 = v43 ^ __ROR8__(v39, 61);
  v46 = __ROR8__(v43, 8) + v45;
  v47 = __ROR8__(v42, 8);
  v48 = (((2 * v46) & 0x66AE28ABA469B592) - v46 - 0x33571455D234DACALL) ^ 0x5AF960B27FEFAF3BLL;
  v49 = v48 ^ __ROR8__(v45, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v6;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xC4318A842864C03;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = ((2 * (v54 + v53)) & 0x8F30E4BAED0244B2) - (v54 + v53);
  v56 = (v47 + v44 - ((2 * (v47 + v44)) & 0x1696A34D4DBEA686) + 0xB4B51A6A6DF5343) ^ 0xBECA91D19252317FLL;
  v57 = __ROR8__(v56, 8) + (v56 ^ __ROR8__(v44, 61));
  v58 = (v55 - 0x4798725D7681225ALL) ^ 0xFB0785B069DD8DD5 ^ __ROR8__(v53, 61);
  v59 = __ROR8__((v55 - 0x4798725D7681225ALL) ^ 0xFB0785B069DD8DD5, 8);
  *(v22 + 10) = (((v18 - (v57 | v18) + (v57 | 0x3E0110D8C95E5D55)) ^ 0xCE3F5299798BB6ABLL) >> (8 * (v21 & 7u))) ^ (((__ROR8__((a5 - ((v59 + v58) | a5) + ((v59 + v58) | 0xBD87295834B24C76)) ^ 0x806E92F003F2E4ALL, 8) + ((a5 - ((v59 + v58) | a5) + ((v59 + v58) | 0xBD87295834B24C76)) ^ 0x806E92F003F2E4ALL ^ __ROR8__(v58, 61))) ^ v9) >> (8 * ((v22 + 10) & 7))) ^ *v21;
  return (*(v19 + 8 * ((2406 * (v7 - 1 == v11)) ^ v8)))();
}

uint64_t sub_10005D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1A78] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x2828];
  LODWORD(STACK[0x3028]) = 1318742951;
  STACK[0x1E80] = STACK[0x660];
  LODWORD(STACK[0x2A08]) = 24;
  return (*(v7 + 8 * (v8 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v8);
}

uint64_t sub_10005D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x23D8] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x23B8];
  LODWORD(STACK[0x3028]) = STACK[0x3DC0];
  STACK[0x1E80] = STACK[0x938];
  LODWORD(STACK[0x2A08]) = 7;
  return (*(v7 + 8 * (v8 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v8);
}

uint64_t sub_10005D22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x2060] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x20D0];
  LODWORD(STACK[0x3028]) = 1263592055;
  STACK[0x1E80] = STACK[0x668];
  LODWORD(STACK[0x2A08]) = 25;
  return (*(v7 + 8 * (v8 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v8);
}

uint64_t sub_10005D370()
{
  v3 = (*(v2 + 8 * (v0 + 6548)))();
  v4 = STACK[0x1708];
  *(v1 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_10005D524()
{
  v3 = (*(v2 + 8 * (v1 + 6296)))();
  v4 = STACK[0x1708];
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_10005D6FC@<X0>(unsigned int a1@<W8>)
{
  STACK[0x2800] = 0;
  v2 = *(STACK[0x1C50] - 0x1138F6A92264F47ELL);
  STACK[0x1CB0] = 0;
  LODWORD(STACK[0x1C48]) = 1551548114;
  LODWORD(STACK[0x2F4C]) = 1443455193;
  return (*(v1 + 8 * (((a1 - 1) ^ (v2 == 0x5A0411E37F4B9882)) & 1 ^ a1)))();
}

uint64_t sub_10005D7D4@<X0>(int a1@<W8>)
{
  v4 = ((2 * (((v2 + 2084) | 0x82E) ^ 0x1F4D)) ^ 0xE37CE879) - *(v1 - 0x51CE20ABD81C932BLL);
  v5 = a1 + 699786795 > v4;
  if ((a1 + 699786795) < 0x6D42DB57 != v4 < 0x6D42DB57)
  {
    v5 = (a1 + 699786795) < 0x6D42DB57;
  }

  return (*(v3 + 8 * ((98 * !v5) ^ v2)))();
}

uint64_t sub_10005D900@<X0>(int a1@<W8>)
{
  v3 = (a1 + 14) & 0xF;
  LODWORD(STACK[0x1C48]) = 1551548130 - v3;
  return (*(v2 + 8 * ((7710 * (((v1 + 1691496689) & 0x9B2DEEF2) - v3 - 10240 + (a1 - 1133311276) < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_10005D988@<X0>(int a1@<W8>)
{
  v4 = a1 - v1;
  LODWORD(STACK[0x2F4C]) = v4 + 310143943;
  v5 = (*(v3 + 8 * (v2 + 369)))((v4 - 1133311250));
  v6 = STACK[0x1708];
  STACK[0x1CB0] = v5;
  v7 = (((v2 - 3986) ^ (v2 - 8764) ^ (v5 == 0)) & 1) == 0;
  return (*(v6 + 8 * ((v7 | (4 * v7)) ^ v2)))();
}

uint64_t sub_10005DA20(unint64_t a1)
{
  STACK[0x1810] = a1;
  v4 = *(v3 + 8 * ((52 * (((*(v1 - 0x5A0411E37F4B9882) == 0x51CE20ABD81C933BLL) ^ (v2 - 1)) & 1)) ^ v2));
  *&STACK[0x1770] = vdupq_n_s64(0xD87AD12BCA74F052);
  *&STACK[0x1780] = vdupq_n_s64(0x923A0997826215EALL);
  return v4(80);
}

uint64_t sub_10005DCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 0x51CE20ABD81C932BLL) - ((2 * *(a3 - 0x51CE20ABD81C932BLL) + 327936622) & 0xE2561AD2) - 84868448;
  v7 = ((209 * (v4 ^ 0x2442) + 658330362) & 0xD8C2B4A7 ^ 0xF891DE56) & (2 * v6) ^ 0xE0101A52;
  LODWORD(STACK[0x1008]) = v7;
  return (*(v5 + 8 * (v4 | (2 * (v7 + (v6 ^ 0x8D63F252) + 801102582 != v3)))))();
}

uint64_t sub_10005DD84(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  STACK[0xFF8] = a3;
  STACK[0x1840] = *(a3 - 0x51CE20ABD81C9323);
  LODWORD(STACK[0x1000]) = v5;
  v7 = ((165 * (((v4 - 7325) | 0x1800) ^ 0x1BA5)) ^ 0x893A55D6) + v5;
  STACK[0x1820] = ((2 * v7) & 0x15FFB5DFELL) + (v7 ^ 0x7E7FBF8BAFFDAEFFLL) - 0x7E7FBF8BAFFDAEFFLL;
  LODWORD(STACK[0xFF0]) = a4;
  v8 = LODWORD(STACK[0x1008]) + a4 != -62324926 && (LODWORD(STACK[0x1008]) + a4 + 62324926) < 0xFFFFFFF9;
  return (*(v6 + 8 * (v4 | (2 * v8) | (8 * v8))))(0x5EEE4453CA35DABALL);
}

uint64_t sub_10005DFE0(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v16 = *(v15 + 8 * (((((a2 - 3840) ^ 0xFFFFF7EE) + ((a2 - 3840) | 0x838)) * (v10 > 0xF)) ^ a2));
  *&STACK[0x1480] = vdupq_n_s64(a7);
  *&STACK[0x1790] = vdupq_n_s64(a4);
  *&STACK[0x1420] = vdupq_n_s64(0xC5F5F189513C3D42);
  *&STACK[0x18B0] = vdupq_n_s64(0x26C3D91CAAAAC0CCuLL);
  *&STACK[0x1900] = vdupq_n_s64(0x6C9E1371AAAA9F99uLL);
  *&STACK[0x17E0] = vdupq_n_s64(0xCCFD804267A6260FLL);
  *&STACK[0x1830] = vdupq_n_s64(0xACC3E51663869BA9);
  *&STACK[0x17D0] = vdupq_n_s64(0xE4A245799371E26BLL);
  *&STACK[0x17B0] = vdupq_n_s64(0xBC2FE40086982889);
  *&STACK[0x1470] = vdupq_n_s64(v11);
  *&STACK[0x1460] = vdupq_n_s64(v9);
  *&STACK[0x1450] = vdupq_n_s64(v14);
  *&STACK[0x1440] = vdupq_n_s64(a6);
  *&STACK[0x1430] = vdupq_n_s64(v8);
  *&STACK[0x17A0] = vdupq_n_s64(0xE8E0450D5C8F41CCLL);
  *&STACK[0x18F0] = vdupq_n_s64(0xFC8F779185D73647);
  *&STACK[0x1800] = vdupq_n_s64(0x9C8086D4E49D1730);
  *&STACK[0x18A0] = vdupq_n_s64(0xE157867863DD352CLL);
  *&STACK[0x1850] = vdupq_n_s64(0x8429C13B901A7D44);
  *&STACK[0x17F0] = vdupq_n_s64(0xC214E09DC80D3EA2);
  *&STACK[0x1890] = vdupq_n_s64(0x1A71C6FD563F7AD4uLL);
  *&STACK[0x14A0] = vdupq_n_s64(v13);
  *&STACK[0x1490] = vdupq_n_s64(v12);
  *&STACK[0x1880] = vdupq_n_s64(0x54D6460F57505710uLL);
  *&STACK[0x1860] = vdupq_n_s64(0x6604FF7B30B3B3E2uLL);
  *&STACK[0x1760] = vdupq_n_s64(0xED72F297E808ACF8);
  *&STACK[0x1410] = vdupq_n_s64(0x1BF086EE80E068F2uLL);
  *&STACK[0x1750] = vdupq_n_s64(a8);
  return v16();
}

uint64_t sub_10005E230()
{
  v7 = *(v2 + 8 * (v0 + 1109));
  LODWORD(STACK[0xFE8]) = v1 & 0xFFFFFFF0;
  LODWORD(STACK[0x10B0]) = -(v1 & 0xFFFFFFF0);
  v8 = LODWORD(STACK[0x1008]) + 62324926 + LODWORD(STACK[0xFF0]);
  LODWORD(STACK[0x10A0]) = v8 - 9;
  LODWORD(STACK[0x1090]) = v8 - 8;
  LODWORD(STACK[0x1080]) = v8 - 7;
  LODWORD(STACK[0x1070]) = v8 - 6;
  LODWORD(STACK[0x1060]) = v8 - 5;
  LODWORD(STACK[0x1058]) = v8 - 4;
  LODWORD(STACK[0x1050]) = v8 - 3;
  LODWORD(STACK[0x1048]) = v8 - 2;
  LODWORD(STACK[0x1040]) = v8 - 1267;
  LODWORD(STACK[0x1038]) = v8 + 1;
  LODWORD(STACK[0x1030]) = v8 + 2;
  LODWORD(STACK[0x1028]) = v8 + 3;
  LODWORD(STACK[0x1020]) = v8 + 4;
  LODWORD(STACK[0x1018]) = v8 + 5;
  LODWORD(STACK[0x1010]) = v8 + 6;
  *&STACK[0x10D0] = v3;
  *&STACK[0x13F0] = v4;
  *&STACK[0x1400] = v6;
  LODWORD(STACK[0xFE0]) = v1;
  v9 = STACK[0x1840];
  *&STACK[0x10C0] = v5;
  return v7(v9);
}

uint64_t sub_10005E31C@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W8>)
{
  v10 = (LODWORD(STACK[0x1010]) + v8 + 16);
  v11 = (LODWORD(STACK[0x1018]) + v8 + 16);
  v12 = (LODWORD(STACK[0x1020]) + v8 + 16);
  v13 = (LODWORD(STACK[0x1028]) + v8 + 16);
  v14 = (LODWORD(STACK[0x1030]) + v8 + 16);
  v15 = (LODWORD(STACK[0x1038]) + v8 + 16);
  v16 = (a2 + v8 + 16);
  v17 = (LODWORD(STACK[0x1048]) + v8 + 16);
  v18 = (LODWORD(STACK[0x1050]) + v8 + 16);
  v19 = (LODWORD(STACK[0x1058]) + v8 + 16);
  v20 = (LODWORD(STACK[0x1040]) + v8 + a3 + 16);
  v21 = LODWORD(STACK[0x1060]) + v8;
  v22.i64[0] = a1 + v16;
  v22.i64[1] = a1 + v20;
  v23 = v22;
  *&STACK[0x1540] = v22;
  v24 = (v21 + 16);
  v25 = a1 + v10;
  v22.i64[0] = a1 + v10;
  v22.i64[1] = a1 + v11;
  v26 = v22;
  *&STACK[0x1530] = v22;
  v27 = LODWORD(STACK[0x1070]) + v8;
  v22.i64[0] = a1 + v12;
  v22.i64[1] = a1 + v13;
  v28 = v22;
  *&STACK[0x13C0] = v22;
  v29 = (v27 + 16);
  v22.i64[0] = a1 + v14;
  v22.i64[1] = a1 + v15;
  v30 = v22;
  *&STACK[0x13E0] = v22;
  v31 = LODWORD(STACK[0x1080]) + v8;
  v22.i64[0] = a1 + v17;
  v22.i64[1] = a1 + v18;
  v32 = v22;
  *&STACK[0x1720] = v22;
  v33 = (v31 + 16);
  v22.i64[0] = a1 + v19;
  v22.i64[1] = a1 + v24;
  v34 = v22;
  *&STACK[0x1710] = v22;
  v35 = LODWORD(STACK[0x1090]) + v8;
  v22.i64[0] = a1 + v29;
  v22.i64[1] = a1 + v33;
  v36 = v22;
  *&STACK[0x1600] = v22;
  v37 = (v35 + 16);
  v38 = (LODWORD(STACK[0x10A0]) + v8 + 16);
  v22.i64[0] = a1 + v37;
  v22.i64[1] = a1 + v38;
  v39 = v22;
  *&STACK[0x15B0] = v22;
  v22.i64[0] = v6 + v16 + v5;
  v22.i64[1] = v6 + v20 + v5;
  v40 = v22;
  *&STACK[0x10F0] = v22;
  v41 = v6 + v10 + v5;
  v22.i64[0] = v41;
  v22.i64[1] = v6 + v11 + v5;
  v42 = v22;
  *&STACK[0x10E0] = v22;
  v22.i64[0] = v6 + v12 + v5;
  v22.i64[1] = v6 + v13 + v5;
  v43 = v22;
  v22.i64[0] = v6 + v14 + v5;
  v22.i64[1] = v6 + v15 + v5;
  v44 = v22;
  v45 = vandq_s8(v39, *&STACK[0x1940]);
  v46 = vandq_s8(v36, *&STACK[0x1940]);
  v47 = vandq_s8(v34, *&STACK[0x1940]);
  v48 = vandq_s8(v32, *&STACK[0x1940]);
  v49 = vandq_s8(v30, *&STACK[0x1940]);
  v50 = vandq_s8(v28, *&STACK[0x1940]);
  v51 = vandq_s8(v26, *&STACK[0x1940]);
  v52 = vandq_s8(v23, *&STACK[0x1940]);
  v53 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v60 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v61 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v53), vaddq_s64(v53, *&STACK[0x1440]));
  v62 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v54), vaddq_s64(v54, *&STACK[0x1440]));
  v63 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v55), vaddq_s64(v55, *&STACK[0x1440]));
  v64 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v56), vaddq_s64(v56, *&STACK[0x1440]));
  v65 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v57), vaddq_s64(v57, *&STACK[0x1440]));
  v66 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v58), vaddq_s64(v58, *&STACK[0x1440]));
  v67 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v59), vaddq_s64(v59, *&STACK[0x1440]));
  v68 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v60), vaddq_s64(v60, *&STACK[0x1440]));
  v69 = veorq_s8(v68, *&STACK[0x1460]);
  v70 = veorq_s8(v67, *&STACK[0x1460]);
  v71 = veorq_s8(v66, *&STACK[0x1460]);
  v72 = veorq_s8(v65, *&STACK[0x1460]);
  v73 = veorq_s8(v64, *&STACK[0x1460]);
  v74 = veorq_s8(v63, *&STACK[0x1460]);
  v75 = veorq_s8(v62, *&STACK[0x1460]);
  v76 = veorq_s8(v61, *&STACK[0x1460]);
  v77 = veorq_s8(v61, *&STACK[0x1470]);
  v78 = veorq_s8(v62, *&STACK[0x1470]);
  v79 = veorq_s8(v63, *&STACK[0x1470]);
  v80 = veorq_s8(v64, *&STACK[0x1470]);
  v81 = veorq_s8(v65, *&STACK[0x1470]);
  v82 = veorq_s8(v66, *&STACK[0x1470]);
  v83 = veorq_s8(v67, *&STACK[0x1470]);
  v84 = veorq_s8(v68, *&STACK[0x1470]);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77), *&STACK[0x1690]);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78), *&STACK[0x1690]);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v79), *&STACK[0x1690]);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v80), *&STACK[0x1690]);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v81), *&STACK[0x1690]);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v82), *&STACK[0x1690]);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v83), *&STACK[0x1690]);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v84), *&STACK[0x1690]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v94 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v95 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v96 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v97 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v98 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v99 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v100 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v100);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v99);
  v109 = vaddq_s64(v106, v98);
  v110 = vaddq_s64(v105, v97);
  v111 = vaddq_s64(v104, v96);
  v112 = vaddq_s64(v103, v95);
  v113 = vaddq_s64(v102, v94);
  v114 = vaddq_s64(v101, v93);
  v115 = *&STACK[0x1420];
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, *&STACK[0x10D0]), vorrq_s8(v107, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, *&STACK[0x10D0]), vorrq_s8(v108, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, *&STACK[0x10D0]), vorrq_s8(v109, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, *&STACK[0x10D0]), vorrq_s8(v110, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, *&STACK[0x10D0]), vorrq_s8(v111, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v121 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, *&STACK[0x10D0]), vorrq_s8(v112, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v124 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, *&STACK[0x10D0]), vorrq_s8(v113, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v127 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, *&STACK[0x10D0]), vorrq_s8(v114, *&STACK[0x1480])), *&STACK[0x1480]), *&STACK[0x14A0]);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v132 = veorq_s8(v126, v129);
  v133 = veorq_s8(v123, v128);
  v134 = veorq_s8(v120, v127);
  v135 = veorq_s8(v119, v125);
  v136 = veorq_s8(v118, v124);
  v137 = veorq_s8(v117, v122);
  v138 = veorq_s8(v116, v121);
  v139 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v137);
  v146 = vaddq_s64(v140, v132);
  v147 = veorq_s8(vaddq_s64(v139, v131), *&STACK[0x16F0]);
  v148 = veorq_s8(v146, *&STACK[0x16F0]);
  v149 = veorq_s8(vaddq_s64(v141, v133), *&STACK[0x16F0]);
  v150 = veorq_s8(vaddq_s64(v142, v134), *&STACK[0x16F0]);
  v151 = veorq_s8(vaddq_s64(v143, v135), *&STACK[0x16F0]);
  v152 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v153 = veorq_s8(vaddq_s64(v144, v136), *&STACK[0x16F0]);
  v154 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v156 = veorq_s8(v145, *&STACK[0x16F0]);
  v157 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v138), *&STACK[0x16F0]);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v162 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v163 = veorq_s8(v153, v159);
  v164 = veorq_s8(v151, v158);
  v165 = veorq_s8(v150, v157);
  v166 = veorq_s8(v149, v155);
  v167 = veorq_s8(v148, v154);
  v168 = veorq_s8(v147, v152);
  v169 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v166);
  v175 = vaddq_s64(v173, v165);
  v176 = vaddq_s64(v172, v164);
  v177 = vaddq_s64(v171, v163);
  v178 = vaddq_s64(v170, v162);
  v179 = veorq_s8(vaddq_s64(v169, v161), *&STACK[0x1570]);
  v180 = veorq_s8(v178, *&STACK[0x1570]);
  v181 = veorq_s8(v177, *&STACK[0x1570]);
  v182 = veorq_s8(v176, *&STACK[0x1570]);
  v183 = veorq_s8(v175, *&STACK[0x1570]);
  v184 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v187 = veorq_s8(v174, *&STACK[0x1570]);
  v188 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v167), *&STACK[0x1570]);
  v191 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v168), *&STACK[0x1570]);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v194 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v195 = veorq_s8(v187, v191);
  v196 = veorq_s8(v183, v189);
  v197 = veorq_s8(v182, v188);
  v198 = veorq_s8(v181, v186);
  v199 = veorq_s8(v180, v185);
  v200 = veorq_s8(v179, v184);
  v201 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v200);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v199);
  v207 = vaddq_s64(v204, v198);
  v208 = vaddq_s64(v203, v197);
  v209 = vaddq_s64(v202, v196);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v195);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v194);
  v212 = vaddq_s64(v201, v193);
  v213 = *&STACK[0x1490];
  *&STACK[0x1730] = vsubq_s64(vorrq_s8(vaddq_s64(v212, v212), *&STACK[0x1490]), v212);
  *&STACK[0x1180] = vsubq_s64(vorrq_s8(vaddq_s64(v211, v211), v213), v211);
  *&STACK[0x1740] = vsubq_s64(vorrq_s8(vaddq_s64(v210, v210), v213), v210);
  v214 = *&STACK[0x1410];
  v215 = *&STACK[0x1750];
  *&STACK[0x14C0] = vsubq_s64(vorrq_s8(vaddq_s64(v209, v209), v213), v209);
  *&STACK[0x1100] = vsubq_s64(vorrq_s8(vaddq_s64(v206, v206), v213), v206);
  *&STACK[0x1120] = vsubq_s64(vorrq_s8(vaddq_s64(v205, v205), v213), v205);
  v216 = *&STACK[0x13F0];
  v217 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207, v207), v213), v207), *&STACK[0x13F0]);
  *&STACK[0x1150] = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  *&STACK[0x1130] = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  *&STACK[0x13D0] = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v218 = *&STACK[0x1400];
  v219 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v208, v208), v213), v208), v216), *&STACK[0x1400]);
  *&STACK[0x14B0] = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v220 = veorq_s8(v217, v218);
  v221 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  *&STACK[0x1110] = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v222 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v223 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v223);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v222);
  v226 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v228 = v43;
  v229 = vandq_s8(v43, *&STACK[0x1940]);
  v230 = vandq_s8(v42, *&STACK[0x1940]);
  v231 = vsubq_s64(vandq_s8(vaddq_s64(v224, v224), *&STACK[0x1790]), v224);
  v232 = vandq_s8(v40, *&STACK[0x1940]);
  v233 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v236 = v44;
  v237 = vandq_s8(v44, *&STACK[0x1940]);
  v238 = vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL);
  v239 = vbslq_s8(v9, vsubq_s64(v215, v233), vaddq_s64(v233, v214));
  v240 = vbslq_s8(v9, vsubq_s64(v215, v234), vaddq_s64(v234, v214));
  v241 = vbslq_s8(v9, vsubq_s64(v215, v235), vaddq_s64(v235, v214));
  v242 = vbslq_s8(v9, vsubq_s64(v215, v238), vaddq_s64(v238, v214));
  v243 = v115;
  v244 = veorq_s8(v241, v115);
  v245 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v246 = veorq_s8(vaddq_s64(v231, *&STACK[0x18A0]), *&STACK[0x1880]);
  v247 = veorq_s8(v246, v227);
  v248 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v249 = veorq_s8(v242, v115);
  v250 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v251 = veorq_s8(v241, *&STACK[0x1890]);
  v252 = vaddq_s64(v245, v251);
  v253 = vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL);
  v254 = veorq_s8(v242, *&STACK[0x1890]);
  v255 = *&STACK[0x1770];
  v256 = veorq_s8(vaddq_s64(v250, v254), *&STACK[0x1770]);
  v257 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v258 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v259 = veorq_s8(v252, *&STACK[0x1770]);
  v260 = veorq_s8(v259, v253);
  v261 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v262 = vaddq_s64(v258, v257);
  v263 = vaddq_s64(v261, v260);
  v264 = vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL);
  v265 = vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v225, v225), *&STACK[0x1790]), v225), *&STACK[0x18A0]), *&STACK[0x1880]);
  v267 = veorq_s8(v266, v226);
  v268 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v269 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v263, v263), *&STACK[0x1860]), v263), *&STACK[0x17E0]), *&STACK[0x1830]);
  v270 = veorq_s8(v269, v265);
  v271 = vaddq_s64(v268, v267);
  v272 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v262, v262), *&STACK[0x1860]), v262), *&STACK[0x17E0]), *&STACK[0x1830]);
  v273 = veorq_s8(v272, v264);
  v274 = vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL);
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), v270);
  v276 = vaddq_s64(v274, v273);
  v277 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v279 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v276, v276), *&STACK[0x18B0]), v276), *&STACK[0x1900]), *&STACK[0x18F0]);
  v280 = veorq_s8(v279, v278);
  v281 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v282 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v275, v275), *&STACK[0x18B0]), v275), *&STACK[0x1900]), *&STACK[0x18F0]);
  v283 = veorq_s8(v282, v277);
  v284 = vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL);
  v285 = vaddq_s64(v281, v280);
  v286 = vaddq_s64(v284, v283);
  v287 = vaddq_s64(v248, v247);
  v288 = vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL);
  v289 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v290 = *&STACK[0x17F0];
  v291 = *&STACK[0x17A0];
  v292 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x1850])), *&STACK[0x17F0]), *&STACK[0x17A0]);
  v293 = veorq_s8(v292, v289);
  v294 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x1850])), *&STACK[0x17F0]), *&STACK[0x17A0]);
  v296 = veorq_s8(v295, v288);
  v297 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v298 = vaddq_s64(v294, v293);
  v299 = vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL);
  v300 = vdupq_n_s64(v3);
  v301 = vaddq_s64(v297, v296);
  v302 = vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL);
  v303 = veorq_s8(v301, *&STACK[0x1780]);
  v304 = veorq_s8(v303, v302);
  v305 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v306 = veorq_s8(v298, *&STACK[0x1780]);
  v307 = *&STACK[0x1780];
  v308 = veorq_s8(v306, v299);
  v309 = vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL);
  v310 = vaddq_s64(v305, v304);
  v311 = vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v308, 3uLL), v308, 0x3DuLL);
  v313 = *&STACK[0x17B0];
  v314 = veorq_s8(vaddq_s64(v309, v308), *&STACK[0x17B0]);
  v315 = veorq_s8(v310, *&STACK[0x17B0]);
  v316 = *&STACK[0x16C0];
  v317 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), veorq_s8(v315, v311));
  v318 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), veorq_s8(v314, v312));
  v319 = *&STACK[0x17D0];
  v320 = *&STACK[0x10C0];
  v321 = veorq_s8(vaddq_s64(*&STACK[0x1100], v216), v218);
  v322 = vandq_s8(vshlq_n_s64(v228, 3uLL), v300);
  v323 = *&STACK[0x1800];
  v324 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v318, *&STACK[0x17D0]), vorrq_s8(v318, *&STACK[0x10C0])), *&STACK[0x10C0]), *&STACK[0x1800]), vnegq_s64(v322));
  v493.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v317, *&STACK[0x17D0]), vorrq_s8(v317, *&STACK[0x10C0])), *&STACK[0x10C0]), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(v236, 3uLL), v300))), vshlq_u64(veorq_s8(v287, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x13E0], 3uLL), v300))));
  v493.val[1] = veorq_s8(v324, vshlq_u64(veorq_s8(v271, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x13C0], 3uLL), v300))));
  v325 = veorq_s8(v240, v243);
  v326 = veorq_s8(v240, *&STACK[0x1890]);
  v327 = veorq_s8(v321, v221);
  v328 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v326), *&STACK[0x1770]);
  v329 = veorq_s8(v328, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL));
  v330 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v331 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL);
  v333 = vaddq_s64(v331, v329);
  v334 = vaddq_s64(v330, v327);
  v335 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v333, v333), *&STACK[0x1860]), v333), *&STACK[0x17E0]), *&STACK[0x1830]);
  v336 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL));
  v337 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL), v336);
  v338 = *&STACK[0x1790];
  v339 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v337, v337), *&STACK[0x18B0]), v337), *&STACK[0x1900]), *&STACK[0x18F0]);
  v340 = veorq_s8(v339, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v341 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v340);
  v342 = *&STACK[0x1850];
  v343 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v334, v334), *&STACK[0x1790]), v334), *&STACK[0x18A0]), *&STACK[0x1880]);
  v344 = veorq_s8(vaddq_s64(vsubq_s64(v341, vandq_s8(vaddq_s64(v341, v341), *&STACK[0x1850])), *&STACK[0x17F0]), *&STACK[0x17A0]);
  v345 = veorq_s8(v344, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v346 = veorq_s8(v343, v332);
  v347 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v345), *&STACK[0x1780]);
  v348 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v349 = veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL));
  v350 = vaddq_s64(v348, v346);
  v351 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v349), *&STACK[0x17B0]);
  v352 = vshlq_u64(veorq_s8(v350, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1530], 3uLL), v300)));
  v353 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), veorq_s8(v351, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL)));
  v354 = vsubq_s64(vorrq_s8(v353, *&STACK[0x17D0]), vorrq_s8(v353, *&STACK[0x10C0]));
  v32.i64[0] = v6 + v17 + v5;
  v32.i64[1] = v6 + v18 + v5;
  *&STACK[0x1530] = v32;
  v355 = v323;
  v356 = vshlq_u64(veorq_s8(vaddq_s64(v354, v320), v323), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x10E0], 3uLL), v300)));
  v353.i64[0] = v6 + v19 + v5;
  v353.i64[1] = v6 + v24 + v5;
  *&STACK[0x13E0] = v353;
  v357 = vaddq_s64(*&STACK[0x1120], v216);
  v358 = veorq_s8(vaddq_s64(*&STACK[0x1730], v216), v218);
  v359 = veorq_s8(vaddq_s64(*&STACK[0x1180], v216), v218);
  v360 = veorq_s8(v357, v218);
  v361 = veorq_s8(v360, *&STACK[0x1110]);
  v362 = veorq_s8(v359, *&STACK[0x1130]);
  v363 = veorq_s8(v358, *&STACK[0x1150]);
  v493.val[0] = veorq_s8(v356, v352);
  v364 = veorq_s8(v239, v243);
  v365 = v243;
  v366 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v367 = veorq_s8(v239, *&STACK[0x1890]);
  v368 = vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL);
  v369 = vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL);
  v370 = veorq_s8(vaddq_s64(v366, v367), v255);
  v371 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v372 = veorq_s8(v370, v369);
  v373 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), v372);
  v374 = vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL);
  v375 = vaddq_s64(v368, v361);
  v376 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v373, v373), *&STACK[0x1860]), v373), *&STACK[0x17E0]), *&STACK[0x1830]);
  v377 = veorq_s8(v376, vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  v378 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL), v377);
  v379 = v338;
  v380 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v378, v378), *&STACK[0x18B0]), v378), *&STACK[0x1900]), *&STACK[0x18F0]);
  v381 = veorq_s8(v380, vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL));
  v382 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v381);
  v383 = veorq_s8(vaddq_s64(vsubq_s64(v382, vandq_s8(vaddq_s64(v382, v382), v342)), v290), v291);
  v384 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v375, v375), v338), v375), *&STACK[0x18A0]), *&STACK[0x1880]);
  v385 = veorq_s8(v383, vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL));
  v386 = veorq_s8(v384, vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL));
  v387 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL), v385), v307);
  v388 = veorq_s8(v387, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v389 = vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL);
  v384.i64[0] = v6 + v29 + v5;
  v390 = vaddq_s64(v389, v386);
  v391 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v387, 0x38uLL), v387, 8uLL), v388), v313);
  v392 = veorq_s8(v391, vsraq_n_u64(vshlq_n_s64(v388, 3uLL), v388, 0x3DuLL));
  v393 = vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL);
  v391.i64[0] = v6 + v37 + v5;
  v384.i64[1] = v6 + v33 + v5;
  v391.i64[1] = v6 + v38 + v5;
  v394 = vaddq_s64(v393, v392);
  v395 = vshlq_u64(veorq_s8(v390, v316), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1540], 3uLL), v300)));
  v396 = vandq_s8(v384, *&STACK[0x1940]);
  v397 = vsraq_n_u64(vshlq_n_s64(v363, 3uLL), v363, 0x3DuLL);
  v493.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v394, v319), vorrq_s8(v394, v320)), v320), v355), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x10F0], 3uLL), v300))), v395);
  v398 = vandq_s8(v32, *&STACK[0x1940]);
  v399 = vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL);
  v400 = vandq_s8(v353, *&STACK[0x1940]);
  v401 = vaddq_s64(v374, v363);
  v402 = vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL);
  v403 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v404 = vandq_s8(v391, *&STACK[0x1940]);
  v405 = vaddq_s64(v371, v362);
  v406 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v407 = *&STACK[0x17E0];
  v408 = *&STACK[0x1750];
  v409 = *&STACK[0x1760];
  *&STACK[0x1540] = vbslq_s8(*&STACK[0x1760], vsubq_s64(*&STACK[0x1750], v399), vaddq_s64(v399, v214));
  v410 = vbslq_s8(v409, vsubq_s64(v408, v402), vaddq_s64(v402, v214));
  v411 = vbslq_s8(v409, vsubq_s64(v408, v403), vaddq_s64(v403, v214));
  v412 = vbslq_s8(v409, vsubq_s64(v408, v406), vaddq_s64(v406, v214));
  *&STACK[0x1730] = vqtbl4q_s8(v493, *&STACK[0x17C0]);
  v493.val[0] = veorq_s8(v412, v365);
  v493.val[1] = veorq_s8(v411, v365);
  v413 = veorq_s8(v411, *&STACK[0x1890]);
  v414 = veorq_s8(v412, *&STACK[0x1890]);
  v493.val[3] = vsubq_s64(vandq_s8(vaddq_s64(v401, v401), v379), v401);
  v493.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL), v413), v255);
  v415 = vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL);
  v493.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493.val[0], 0x38uLL), v493.val[0], 8uLL), v414), v255);
  v416 = veorq_s8(v493.val[1], vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL));
  v417 = veorq_s8(v493.val[2], v415);
  v418 = vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL);
  v493.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493.val[2], 0x38uLL), v493.val[2], 8uLL), v417);
  v493.val[2] = vaddq_s64(v418, v416);
  v493.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v493.val[2], v493.val[2]), *&STACK[0x1860]), v493.val[2]), v407), *&STACK[0x1830]);
  v493.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v493.val[1], v493.val[1]), *&STACK[0x1860]), v493.val[1]), v407), *&STACK[0x1830]);
  v493.val[3] = veorq_s8(vaddq_s64(v493.val[3], *&STACK[0x18A0]), *&STACK[0x1880]);
  v419 = veorq_s8(v493.val[1], vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL));
  v420 = veorq_s8(v493.val[2], vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL));
  v421 = veorq_s8(v493.val[3], v397);
  v422 = vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL);
  v493.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493.val[2], 0x38uLL), v493.val[2], 8uLL), v420);
  v493.val[2] = vsraq_n_u64(vshlq_n_s64(v493.val[3], 0x38uLL), v493.val[3], 8uLL);
  v493.val[3] = vaddq_s64(v422, v419);
  v493.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v405, v405), v379), v405), *&STACK[0x18A0]), *&STACK[0x1880]);
  v423 = vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL);
  v424 = veorq_s8(v493.val[0], vsraq_n_u64(vshlq_n_s64(v362, 3uLL), v362, 0x3DuLL));
  v493.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v493.val[1], v493.val[1]), *&STACK[0x18B0]), v493.val[1]), *&STACK[0x1900]), *&STACK[0x18F0]);
  v425 = veorq_s8(v493.val[1], vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL));
  v426 = vsraq_n_u64(vshlq_n_s64(v493.val[0], 0x38uLL), v493.val[0], 8uLL);
  v493.val[0] = vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL);
  v493.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v493.val[3], v493.val[3]), *&STACK[0x18B0]), v493.val[3]), *&STACK[0x1900]), *&STACK[0x18F0]);
  v493.val[3] = veorq_s8(v493.val[1], v423);
  v493.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL), v493.val[3]);
  v493.val[0] = vaddq_s64(v493.val[0], v425);
  v493.val[2] = vaddq_s64(v493.val[2], v421);
  v493.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v493.val[0], vandq_s8(vaddq_s64(v493.val[0], v493.val[0]), *&STACK[0x1850])), v290), v291);
  v493.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v493.val[1], vandq_s8(vaddq_s64(v493.val[1], v493.val[1]), *&STACK[0x1850])), v290), v291);
  v493.val[3] = veorq_s8(v493.val[1], vsraq_n_u64(vshlq_n_s64(v493.val[3], 3uLL), v493.val[3], 0x3DuLL));
  v427 = veorq_s8(v493.val[0], vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL));
  v428 = vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL);
  v493.val[1] = vsraq_n_u64(vshlq_n_s64(v493.val[0], 0x38uLL), v493.val[0], 8uLL);
  v493.val[0] = vshlq_u64(veorq_s8(v493.val[2], *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x15B0], 3uLL), v300)));
  v493.val[2] = veorq_s8(vaddq_s64(v428, v493.val[3]), *&STACK[0x1780]);
  v429 = vsraq_n_u64(vshlq_n_s64(v493.val[3], 3uLL), v493.val[3], 0x3DuLL);
  v493.val[1] = veorq_s8(vaddq_s64(v493.val[1], v427), *&STACK[0x1780]);
  v493.val[3] = veorq_s8(v493.val[1], vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL));
  v430 = veorq_s8(v493.val[2], v429);
  v431 = vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL);
  v493.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493.val[2], 0x38uLL), v493.val[2], 8uLL), v430);
  v493.val[2] = veorq_s8(vaddq_s64(v431, v493.val[3]), v313);
  v493.val[1] = veorq_s8(v493.val[1], v313);
  v432 = vsraq_n_u64(vshlq_n_s64(v493.val[3], 3uLL), v493.val[3], 0x3DuLL);
  v493.val[3] = veorq_s8(v493.val[1], vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL));
  v433 = veorq_s8(v493.val[2], v432);
  v434 = vsraq_n_u64(vshlq_n_s64(v493.val[1], 0x38uLL), v493.val[1], 8uLL);
  v493.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493.val[2], 0x38uLL), v493.val[2], 8uLL), v433);
  v493.val[2] = vaddq_s64(v434, v493.val[3]);
  v493.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v493.val[1], v319), vorrq_s8(v493.val[1], v320)), v320), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(v391, 3uLL), v300))), v493.val[0]);
  v493.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v493.val[2], v319), vorrq_s8(v493.val[2], v320)), v320), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(v384, 3uLL), v300))), vshlq_u64(veorq_s8(vaddq_s64(v426, v424), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1600], 3uLL), v300))));
  v435 = veorq_s8(v410, v365);
  v436 = veorq_s8(v410, *&STACK[0x1890]);
  v437 = veorq_s8(vaddq_s64(*&STACK[0x1740], *&STACK[0x13F0]), *&STACK[0x1400]);
  v438 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v436), v255);
  v439 = vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL);
  v440 = veorq_s8(v437, *&STACK[0x13D0]);
  v441 = veorq_s8(v438, v439);
  v442 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v441);
  v443 = vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL);
  v444 = vsubq_s64(vorrq_s8(vaddq_s64(v442, v442), *&STACK[0x1860]), v442);
  v445 = vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL);
  v446 = vaddq_s64(v443, v440);
  v447 = veorq_s8(vaddq_s64(v444, v407), *&STACK[0x1830]);
  v448 = veorq_s8(v447, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v449 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL), v448);
  v450 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v449, v449), *&STACK[0x18B0]), v449), *&STACK[0x1900]), *&STACK[0x18F0]);
  v451 = veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL));
  v452 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451);
  v453 = veorq_s8(vaddq_s64(vsubq_s64(v452, vandq_s8(vaddq_s64(v452, v452), *&STACK[0x1850])), *&STACK[0x17F0]), v291);
  v454 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v446, v446), *&STACK[0x1790]), v446), *&STACK[0x18A0]), *&STACK[0x1880]);
  v455 = veorq_s8(v453, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v456 = veorq_s8(v454, v445);
  v457 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v455), *&STACK[0x1780]);
  v458 = veorq_s8(v457, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v459 = vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL);
  v460 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v458), v313);
  v461 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL)));
  v493.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v461, v319), vorrq_s8(v461, v320)), v320), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x13E0], 3uLL), v300))), vshlq_u64(veorq_s8(vaddq_s64(v459, v456), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1710], 3uLL), v300))));
  v462 = veorq_s8(*&STACK[0x1540], v365);
  v463 = veorq_s8(*&STACK[0x1540], *&STACK[0x1890]);
  v464 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), v463), *&STACK[0x1770]);
  v465 = vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL);
  v466 = veorq_s8(vaddq_s64(*&STACK[0x14C0], *&STACK[0x13F0]), *&STACK[0x1400]);
  v467 = veorq_s8(v464, v465);
  v468 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL), v467);
  v469 = veorq_s8(v466, *&STACK[0x14B0]);
  v470 = vsraq_n_u64(vshlq_n_s64(v467, 3uLL), v467, 0x3DuLL);
  v471 = vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL);
  v472 = vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL);
  v473 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v468, v468), *&STACK[0x1860]), v468), v407), *&STACK[0x1830]);
  v474 = veorq_s8(v473, v470);
  v475 = vaddq_s64(v471, v469);
  v476 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v473, 0x38uLL), v473, 8uLL), v474);
  v477 = vsubq_s64(vandq_s8(vaddq_s64(v475, v475), *&STACK[0x1790]), v475);
  v478 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v476, v476), *&STACK[0x18B0]), v476), *&STACK[0x1900]), *&STACK[0x18F0]);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v474, 3uLL), v474, 0x3DuLL));
  v480 = veorq_s8(vaddq_s64(v477, *&STACK[0x18A0]), *&STACK[0x1880]);
  v481 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479);
  v482 = veorq_s8(v480, v472);
  v483 = veorq_s8(vaddq_s64(vsubq_s64(v481, vandq_s8(vaddq_s64(v481, v481), *&STACK[0x1850])), *&STACK[0x17F0]), v291);
  v484 = veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v485 = vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL);
  v486 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484), *&STACK[0x1780]);
  v487 = veorq_s8(v486, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL));
  v488 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL), v487), v313);
  v489 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL), veorq_s8(v488, vsraq_n_u64(vshlq_n_s64(v487, 3uLL), v487, 0x3DuLL)));
  v493.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v489, v319), vorrq_s8(v489, v320)), v320), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1530], 3uLL), v300))), vshlq_u64(veorq_s8(vaddq_s64(v485, v482), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1720], 3uLL), v300))));
  v490 = *&STACK[0x1730];
  v490.i64[1] = vqtbl4q_s8(v493, *&STACK[0x17C0]).u64[0];
  v491 = vrev64q_s8(v490);
  *(v41 - 15) = veorq_s8(vextq_s8(v491, v491, 8uLL), *(v25 - 15));
  return (*(v4 + 8 * ((14626 * (LODWORD(STACK[0x10B0]) == v8)) ^ v7)))();
}

uint64_t sub_10005FAAC@<X0>(int a1@<W8>)
{
  v2 = ((a1 - 1914684701) & 0x721FD4FA) + 942;
  v3 = LODWORD(STACK[0xFE0]) == LODWORD(STACK[0xFE8]);
  LODWORD(STACK[0x1740]) = v2;
  return (*(v1 + 8 * (((v2 ^ 0x187A) * v3) ^ a1)))(0x5EEE4453CA35DABALL);
}

uint64_t sub_10005FD20@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, unint64_t a9@<X8>)
{
  v23 = (v15 + a3);
  v24 = (a8 + a3);
  v25 = (a7 + a3);
  v26 = (a6 + a3);
  v27 = (a5 + a3);
  v28 = (v12 + a3);
  v29.i64[0] = v9 + v25 + v10;
  v30 = v9 + v23 + v10;
  v31.i64[0] = v30;
  v31.i64[1] = v9 + v24 + v10;
  v32 = v31;
  *&STACK[0x1600] = v31;
  v29.i64[1] = v9 + v26 + v10;
  v33 = v29;
  *&STACK[0x1540] = v29;
  v31.i64[0] = v9 + v27 + v10;
  v31.i64[1] = v9 + v28 + v10;
  v34 = v31;
  *&STACK[0x14B0] = v31;
  v35 = (v11 + a3);
  v36 = (a4 + a3);
  v31.i64[0] = v9 + v35 + v10;
  v31.i64[1] = v9 + v36 + v10;
  v37 = v31;
  *&STACK[0x14C0] = v31;
  v38 = STACK[0x1708];
  v39 = a1 + v23;
  v31.i64[0] = v39;
  v31.i64[1] = a1 + v24;
  *&STACK[0x1740] = v31;
  v29.i64[0] = a1 + v25;
  v29.i64[1] = a1 + v26;
  *&STACK[0x1730] = v29;
  v40.i64[0] = a1 + v27;
  v40.i64[1] = a1 + v28;
  v41.i64[0] = a1 + v35;
  v41.i64[1] = a1 + v36;
  v42 = vandq_s8(v41, *&STACK[0x1940]);
  v43 = vandq_s8(v40, *&STACK[0x1940]);
  v44 = vandq_s8(v29, *&STACK[0x1940]);
  v45 = vandq_s8(v31, *&STACK[0x1940]);
  v46 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v50 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v46), vaddq_s64(v46, *&STACK[0x1440]));
  v51 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v47), vaddq_s64(v47, *&STACK[0x1440]));
  v52 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v48), vaddq_s64(v48, *&STACK[0x1440]));
  v53 = vbslq_s8(*&STACK[0x1430], vsubq_s64(*&STACK[0x1450], v49), vaddq_s64(v49, *&STACK[0x1440]));
  v54 = veorq_s8(v53, *&STACK[0x1460]);
  v55 = veorq_s8(v52, *&STACK[0x1460]);
  v56 = veorq_s8(v51, *&STACK[0x1460]);
  v57 = veorq_s8(v50, *&STACK[0x1460]);
  v58 = veorq_s8(v50, *&STACK[0x1470]);
  v59 = veorq_s8(v51, *&STACK[0x1470]);
  v60 = veorq_s8(v52, *&STACK[0x1470]);
  v61 = veorq_s8(v53, *&STACK[0x1470]);
  v62 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58), *&STACK[0x1690]);
  v63 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59), *&STACK[0x1690]);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v60), *&STACK[0x1690]);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v61), *&STACK[0x1690]);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v69 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v69);
  v74 = vaddq_s64(v72, v68);
  v75 = vaddq_s64(v71, v67);
  v76 = vaddq_s64(v70, v66);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, v16), vorrq_s8(v73, *&STACK[0x1480])), *&STACK[0x1480]), v19);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v74, v16), vorrq_s8(v74, *&STACK[0x1480])), *&STACK[0x1480]), v19);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v16), vorrq_s8(v75, *&STACK[0x1480])), *&STACK[0x1480]), v19);
  v80 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v16), vorrq_s8(v76, *&STACK[0x1480])), *&STACK[0x1480]), v19);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v84 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v85 = veorq_s8(v78, v81);
  v86 = veorq_s8(v77, v80);
  v87 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v86);
  v91 = veorq_s8(vaddq_s64(v87, v83), *&STACK[0x16F0]);
  v92 = veorq_s8(vaddq_s64(v88, v84), *&STACK[0x16F0]);
  v93 = veorq_s8(vaddq_s64(v89, v85), *&STACK[0x16F0]);
  v94 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v97 = veorq_s8(v90, *&STACK[0x16F0]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v99 = veorq_s8(v93, v96);
  v100 = veorq_s8(v92, v95);
  v101 = veorq_s8(v91, v94);
  v102 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v101);
  v106 = veorq_s8(vaddq_s64(v102, v98), *&STACK[0x1570]);
  v107 = veorq_s8(vaddq_s64(v103, v99), *&STACK[0x1570]);
  v108 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v109 = veorq_s8(vaddq_s64(v104, v100), *&STACK[0x1570]);
  v110 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v111 = veorq_s8(v105, *&STACK[0x1570]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v113 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v114 = veorq_s8(v107, v110);
  v115 = veorq_s8(v106, v108);
  v116 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v115);
  v120 = vaddq_s64(v118, v114);
  v121 = vaddq_s64(v117, v113);
  v122 = vaddq_s64(v116, v112);
  v123 = vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v17), v121);
  v124 = vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v17), v120);
  *&STACK[0x1720] = vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), v17), v119);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v17), v122), v18), v22);
  v126 = veorq_s8(vaddq_s64(v123, v18), v22);
  *&STACK[0x15B0] = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  *&STACK[0x1710] = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v128 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v129 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v131 = vandq_s8(v37, *&STACK[0x1940]);
  v132 = vandq_s8(v34, *&STACK[0x1940]);
  v133 = v22;
  v134 = vandq_s8(v33, *&STACK[0x1940]);
  v135 = vandq_s8(v32, *&STACK[0x1940]);
  v136 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v140 = *&STACK[0x1410];
  v141 = *&STACK[0x1750];
  v142 = *&STACK[0x1760];
  *&STACK[0x1530] = vbslq_s8(*&STACK[0x1760], vsubq_s64(*&STACK[0x1750], v136), vaddq_s64(v136, *&STACK[0x1410]));
  v143 = vaddq_s64(v130, v128);
  v144 = vbslq_s8(v142, vsubq_s64(v141, v137), vaddq_s64(v137, v140));
  v145 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v146 = vbslq_s8(v142, vsubq_s64(v141, v138), vaddq_s64(v138, v140));
  v147 = vbslq_s8(v142, vsubq_s64(v141, v139), vaddq_s64(v139, v140));
  v148 = veorq_s8(v147, *&STACK[0x1420]);
  v149 = veorq_s8(v146, *&STACK[0x1420]);
  v150 = vaddq_s64(v129, v127);
  v151 = veorq_s8(v146, *&STACK[0x1890]);
  v152 = veorq_s8(v147, *&STACK[0x1890]);
  v153 = v18;
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v151);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v152), *&STACK[0x1770]);
  v156 = vsubq_s64(vandq_s8(vaddq_s64(v150, v150), v21), v150);
  v157 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v158 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v159 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v160 = veorq_s8(v154, *&STACK[0x1770]);
  v161 = veorq_s8(v160, v157);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = vaddq_s64(v159, v158);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), *&STACK[0x1860]), v163), *&STACK[0x17E0]), *&STACK[0x1830]);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), *&STACK[0x1860]), v162), *&STACK[0x17E0]), *&STACK[0x1830]);
  v166 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v143, v143), *&STACK[0x1790]), v143), *&STACK[0x18A0]), *&STACK[0x1880]);
  v168 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v169 = veorq_s8(v164, v166);
  v170 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v169);
  v172 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v168);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), *&STACK[0x18B0]), v171), *&STACK[0x1900]), *&STACK[0x18F0]);
  v175 = veorq_s8(vaddq_s64(v156, *&STACK[0x18A0]), *&STACK[0x1880]);
  v176 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v177 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v178 = veorq_s8(v175, v145);
  v179 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), *&STACK[0x18B0]), v173), *&STACK[0x1900]), *&STACK[0x18F0]);
  v181 = veorq_s8(v180, v176);
  v182 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v184 = vaddq_s64(v179, v177);
  v185 = vaddq_s64(vsubq_s64(v183, vandq_s8(vaddq_s64(v183, v183), *&STACK[0x1850])), *&STACK[0x17F0]);
  v186 = vaddq_s64(v182, v178);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(v184, vandq_s8(vaddq_s64(v184, v184), *&STACK[0x1850])), *&STACK[0x17F0]), *&STACK[0x17A0]);
  v188 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v189 = veorq_s8(v185, *&STACK[0x17A0]);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v191 = veorq_s8(v187, v188);
  v192 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v194 = vaddq_s64(v192, v190);
  v195 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v197 = veorq_s8(v194, *&STACK[0x1780]);
  v198 = veorq_s8(vaddq_s64(v193, v191), *&STACK[0x1780]);
  v199 = veorq_s8(v198, v196);
  v200 = veorq_s8(v197, v195);
  v201 = vaddq_s64(v172, v170);
  v202 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v204 = vdupq_n_s64(a9);
  v205 = veorq_s8(vaddq_s64(v202, v199), *&STACK[0x17B0]);
  v206 = veorq_s8(vaddq_s64(v203, v200), *&STACK[0x17B0]);
  v207 = vshlq_u64(veorq_s8(v201, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v204)));
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL)));
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL)));
  v210 = v133;
  v211 = veorq_s8(vaddq_s64(v124, v153), v133);
  v271.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v208, *&STACK[0x17D0]), vorrq_s8(v208, v20)), v20), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x14C0], 3uLL), v204))), v207);
  v271.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v209, *&STACK[0x17D0]), vorrq_s8(v209, v20)), v20), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x14B0], 3uLL), v204))), vshlq_u64(veorq_s8(v186, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v204))));
  v212 = veorq_s8(v144, *&STACK[0x1420]);
  v213 = veorq_s8(v144, *&STACK[0x1890]);
  v214 = veorq_s8(v211, *&STACK[0x15B0]);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), *&STACK[0x1770]);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v217 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v219 = vaddq_s64(v217, v216);
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v214);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v219, v219), *&STACK[0x1860]), v219), *&STACK[0x17E0]), *&STACK[0x1830]);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v223, v223), *&STACK[0x18B0]), v223), *&STACK[0x1900]), *&STACK[0x18F0]);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225);
  v227 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v220, v220), *&STACK[0x1790]), v220), *&STACK[0x18A0]), *&STACK[0x1880]);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(v226, vandq_s8(vaddq_s64(v226, v226), *&STACK[0x1850])), *&STACK[0x17F0]), *&STACK[0x17A0]);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v230 = veorq_s8(v227, v218);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), *&STACK[0x1780]);
  v232 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v233 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v234 = vaddq_s64(v232, v230);
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v233), *&STACK[0x17B0]);
  v236 = vshlq_u64(veorq_s8(v234, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1730], 3uLL), v204)));
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL)));
  v238 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v237, *&STACK[0x17D0]), vorrq_s8(v237, v20)), v20), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1540], 3uLL), v204)));
  v239 = veorq_s8(vaddq_s64(*&STACK[0x1720], v153), v210);
  v271.val[1] = veorq_s8(v238, v236);
  v240 = veorq_s8(*&STACK[0x1530], *&STACK[0x1420]);
  v241 = veorq_s8(*&STACK[0x1530], *&STACK[0x1890]);
  v242 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v243 = veorq_s8(v239, *&STACK[0x1710]);
  v244 = vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL);
  v245 = veorq_s8(vaddq_s64(v242, v241), *&STACK[0x1770]);
  v246 = vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL);
  v247 = veorq_s8(v245, v244);
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v247);
  v249 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v251 = vaddq_s64(v246, v243);
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), *&STACK[0x1860]), v248), *&STACK[0x17E0]), *&STACK[0x1830]);
  v253 = veorq_s8(v252, v249);
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v254, v254), *&STACK[0x18B0]), v254), *&STACK[0x1900]), *&STACK[0x18F0]);
  v256 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v251, v251), *&STACK[0x1790]), v251), *&STACK[0x18A0]), *&STACK[0x1880]);
  v257 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v258 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v257);
  v259 = veorq_s8(v256, v250);
  v260 = veorq_s8(vaddq_s64(vsubq_s64(v258, vandq_s8(vaddq_s64(v258, v258), *&STACK[0x1850])), *&STACK[0x17F0]), *&STACK[0x17A0]);
  v261 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v262 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v263 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v264 = vaddq_s64(v261, v259);
  v265 = veorq_s8(vaddq_s64(v263, v262), *&STACK[0x1780]);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL));
  v267 = vshlq_u64(veorq_s8(v264, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1740], 3uLL), v204)));
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v266), *&STACK[0x17B0]);
  v269 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL)));
  v271.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v269, *&STACK[0x17D0]), vorrq_s8(v269, v20)), v20), *&STACK[0x1800]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1600], 3uLL), v204))), v267);
  *(v30 - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v271, *&STACK[0x15C0])), *(v39 - 7));
  return (*(v38 + 8 * (((v13 == a3) * a2) ^ v14)))();
}

uint64_t sub_1000608AC()
{
  v4 = (v1 + 1358020537) ^ 0x50F1C101;
  LODWORD(STACK[0x1740]) = v4;
  return (*(v3 + 8 * ((((v4 - 1842) ^ (v1 + 1358020537) & 0xAF0E3EFE) * (v0 == v2)) ^ (v1 - 1270))))(0x5EEE4453CA35DABALL);
}

uint64_t sub_100060A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v22 = (v9 - 738777650);
  v23 = STACK[0x1840] + v22;
  v24 = STACK[0x1810] + v22 + STACK[0x1820];
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v18 - v25) & v7 | (v25 + a3) & 0x744551B33C76D2ALL;
  v27 = v26 ^ v8;
  v28 = v26 ^ v11;
  v29 = (__ROR8__(v27, 8) + v28) ^ a1;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((a4 - ((v31 + v30) | a4) + ((v31 + v30) | a6)) ^ v14, 8);
  v33 = (a4 - ((v31 + v30) | a4) + ((v31 + v30) | a6)) ^ v14 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ v15;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xC4318A842864C03;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v13 | (2 * (v38 + v37))) - (v38 + v37);
  v40 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = (v39 + v20) ^ v12;
  v42 = v41 ^ __ROR8__(v37, 61);
  v43 = (a5 - v40) & 0xED72F297E808ACF8 | (v40 + 0x1BF086EE80E068F2) & 0x128D0D6817F75307;
  v44 = __ROR8__(v43 ^ 0xC5F5F189513C3D42, 8);
  v45 = __ROR8__(v41, 8);
  v43 ^= 0x1A71C6FD563F7AD4uLL;
  v46 = (v44 + v43) ^ v16;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v43, 61);
  v49 = ((2 * (v47 + v48)) | 0x6604FF7B30B3B3E2) - (v47 + v48);
  v50 = ((a2 & (2 * (v45 + v42))) - (v45 + v42) - 0x1EA879879C22CAD4) ^ 0x54D6460F57505710;
  v51 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v42, 61));
  v52 = (v49 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9 ^ __ROR8__(v48, 61);
  v53 = __ROR8__((v49 - 0x33027FBD9859D9F1) ^ 0xACC3E51663869BA9, 8);
  v54 = (((2 * (v53 + v52)) & 0x26C3D91CAAAAC0CCLL) - (v53 + v52) + 0x6C9E1371AAAA9F99) ^ 0xFC8F779185D73647;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (v56 + v55 - ((2 * (v56 + v55)) & 0x8429C13B901A7D44) - 0x3DEB1F6237F2C15ELL) ^ 0xE8E0450D5C8F41CCLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v17;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xBC2FE40086982889;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  *v24 = (((v6 - ((v63 + v62) | v6) + ((v63 + v62) | 0xE4A245799371E26BLL)) ^ 0x9C8086D4E49D1730) >> (8 * (v24 & 7u))) ^ ((v51 ^ 0xF03E4241B0D5EBFELL) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v21 + 8 * ((1151 * (v9 - 1 == v19)) ^ v10)))();
}

uint64_t sub_100060D7C()
{
  v6 = *(v3 + 8 * v2);
  LODWORD(STACK[0x1530]) = STACK[0x15B0] & 0xFFFFFFF0;
  v7 = (v0 - 2080358342 + v1);
  LODWORD(STACK[0x1720]) = v7 - 6;
  LODWORD(STACK[0x1710]) = v7 - 5;
  LODWORD(STACK[0x14C0]) = v0;
  LODWORD(STACK[0x14B0]) = v1;
  *&STACK[0x1730] = v5;
  *&STACK[0x1740] = v4;
  return v6((v7 + 3), v2 ^ 0x40Fu, v7, (v0 - 2080365250 + v1 + 64), (v7 + 5), (v7 + 6), 4294967280);
}

uint64_t sub_100060E34@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W8>)
{
  v25.i64[0] = (v21 + a7 + 16) + v12 + 10;
  v25.i64[1] = (v20 + a7 + 16) + v12 + 10;
  v26.i64[0] = (LODWORD(STACK[0x1720]) + a7 + 16) + v12 + 10;
  v27.i64[0] = (v16 + a7 + 16) + v12 + 10;
  v26.i64[1] = (v11 + a7 + 16) + v12 + 10;
  v27.i64[1] = (LODWORD(STACK[0x1710]) + a7 + 16) + v12 + 10;
  *&STACK[0x1770] = v27;
  v28.i64[0] = (v22 + a7 + 16) + v12 + 10;
  v28.i64[1] = (v17 + a7 + 16) + v12 + 10;
  v29 = v28;
  *&STACK[0x1790] = v28;
  v28.i64[0] = (a3 + a7 + 16) + v12 + 10;
  v28.i64[1] = (v13 + a7 + 16) + v12 + 10;
  *&STACK[0x17B0] = v28;
  v28.i64[0] = (a8 + a7 + 16) + v12 + 10;
  v28.i64[1] = (v10 + a7 + 16) + v12 + 10;
  *&STACK[0x17A0] = v28;
  v30 = (a6 + a7 + 16);
  v28.i64[0] = v30 + v12 + 10;
  v28.i64[1] = (a5 + a7 + 16) + v12 + 10;
  *&STACK[0x1860] = v28;
  v31 = vandq_s8(v29, *&STACK[0x1940]);
  v32 = vandq_s8(v27, *&STACK[0x1940]);
  v33 = vandq_s8(v26, *&STACK[0x1940]);
  v34 = vandq_s8(v25, *&STACK[0x1940]);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0x1870]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x1870]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x1870]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x1870]);
  v39 = *&STACK[0x1740];
  v40 = vsubq_s64(vorrq_s8(vaddq_s64(v38, v38), *&STACK[0x1740]), v38);
  v41 = vsubq_s64(vorrq_s8(vaddq_s64(v37, v37), *&STACK[0x1740]), v37);
  v42 = vsubq_s64(vorrq_s8(vaddq_s64(v36, v36), *&STACK[0x1740]), v36);
  *&STACK[0x1780] = vsubq_s64(vorrq_s8(vaddq_s64(v35, v35), *&STACK[0x1740]), v35);
  v43 = vaddq_s64(v41, v23);
  v44 = vaddq_s64(v40, v23);
  v45 = veorq_s8(v44, *&STACK[0x1730]);
  v46 = veorq_s8(v43, *&STACK[0x1730]);
  v47 = veorq_s8(v43, *&STACK[0x1840]);
  v48 = veorq_s8(v44, *&STACK[0x1840]);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v47);
  v51 = *&STACK[0x1850];
  v52 = *&STACK[0x1820];
  v53 = *&STACK[0x1830];
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), *&STACK[0x1850]), v50), *&STACK[0x1820]), *&STACK[0x1830]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v49, v49), *&STACK[0x1850]), v49), *&STACK[0x1820]), *&STACK[0x1830]);
  v56 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v57);
  v61 = *&STACK[0x1810];
  v62 = *&STACK[0x18A0];
  v63 = *&STACK[0x1800];
  v64 = veorq_s8(vaddq_s64(vsubq_s64(v60, vandq_s8(vaddq_s64(v60, v60), *&STACK[0x1810])), *&STACK[0x18A0]), *&STACK[0x1800]);
  v65 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v59, vandq_s8(vaddq_s64(v59, v59), *&STACK[0x1810])), *&STACK[0x18A0]), *&STACK[0x1800]);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v68 = veorq_s8(v64, v65);
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), *&STACK[0x1890]);
  v72 = veorq_s8(v70, *&STACK[0x1890]);
  v73 = *&STACK[0x1880];
  v74 = *&STACK[0x17F0];
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0x1880]), vorrq_s8(v71, v24)), v24), *&STACK[0x17F0]);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, *&STACK[0x1880]), vorrq_s8(v72, v24)), v24), *&STACK[0x17F0]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78);
  v81 = *&STACK[0x1570];
  v82 = veorq_s8(vaddq_s64(v79, v77), *&STACK[0x1570]);
  v83 = veorq_s8(v80, *&STACK[0x1570]);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = *&STACK[0x17E0];
  v90 = *&STACK[0x18B0];
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), *&STACK[0x17E0]), v88), *&STACK[0x17D0]), *&STACK[0x18B0]);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v87, v87), *&STACK[0x17E0]), v87), *&STACK[0x17D0]), *&STACK[0x18B0]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v94 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), *&STACK[0x1650]);
  v98 = veorq_s8(v96, *&STACK[0x1650]);
  v99 = vdupq_n_s64(v9);
  v100 = vaddq_s64(v42, *&STACK[0x18F0]);
  v101 = *&STACK[0x16C0];
  v223.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v99)));
  v223.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v99)));
  v102 = *&STACK[0x1730];
  v103 = veorq_s8(v100, *&STACK[0x1730]);
  v104 = *&STACK[0x1840];
  v105 = veorq_s8(v100, *&STACK[0x1840]);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x1850]), v106), *&STACK[0x1820]), *&STACK[0x1830]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), *&STACK[0x1810])), *&STACK[0x18A0]), *&STACK[0x1800]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = *&STACK[0x1890];
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), *&STACK[0x1890]);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, *&STACK[0x1880]), vorrq_s8(v113, v24)), v24), *&STACK[0x17F0]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), *&STACK[0x1570]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = *&STACK[0x17D0];
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), *&STACK[0x17E0]), v118), *&STACK[0x17D0]), *&STACK[0x18B0]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), *&STACK[0x1650]);
  v123 = *&STACK[0x1650];
  v124.i64[0] = (a4 + a7 + a2 + 16) + v12 + 10;
  v124.i64[1] = (a1 + a7 + 16) + v12 + 10;
  *&STACK[0x1760] = v124;
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL)));
  v126 = *&STACK[0x1940];
  v127 = vandq_s8(*&STACK[0x1860], *&STACK[0x1940]);
  v128 = vaddq_s64(*&STACK[0x1780], *&STACK[0x18F0]);
  v129 = v101;
  v130 = veorq_s8(v125, v101);
  v131 = vshlq_n_s64(*&STACK[0x1770], 3uLL);
  *&STACK[0x1750] = v99;
  v223.val[1] = vshlq_u64(v130, vnegq_s64(vandq_s8(v131, v99)));
  v132 = veorq_s8(v128, v102);
  v133 = veorq_s8(v128, v104);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), v51), v134), v52), v53);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v61)), v62), v63);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v112);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v140, v73), vorrq_s8(v140, v24)), v24), v74);
  v142 = v74;
  v143 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v143), v81);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v89), v146), v119), v90);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v123);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = *&STACK[0x17A0];
  v153 = vandq_s8(*&STACK[0x17A0], v126);
  v154 = vaddq_s64(v151, v150);
  v155 = *&STACK[0x17B0];
  v156 = vandq_s8(*&STACK[0x17B0], v126);
  v223.val[0] = vshlq_u64(veorq_s8(v154, v129), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1790], 3uLL), v99)));
  v157 = vandq_s8(v124, v126);
  v158 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v162 = vaddq_s64(v160, *&STACK[0x1870]);
  v163 = vaddq_s64(v159, *&STACK[0x1870]);
  v164 = vaddq_s64(v158, *&STACK[0x1870]);
  v165 = vaddq_s64(v161, *&STACK[0x1870]);
  *&STACK[0x1780] = vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), v39), v165);
  v166 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), v39), v163), *&STACK[0x18F0]);
  v167 = *&STACK[0x18F0];
  v168 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), v39), v164), *&STACK[0x18F0]);
  *&STACK[0x1790] = vqtbl4q_s8(v223, *&STACK[0x17C0]);
  v223.val[0] = veorq_s8(v168, v102);
  v223.val[1] = veorq_s8(v166, v102);
  v169 = veorq_s8(v166, v104);
  v170 = veorq_s8(v168, v104);
  v171 = v104;
  v223.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[0], 0x38uLL), v223.val[0], 8uLL), v170);
  v223.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[1], 0x38uLL), v223.val[1], 8uLL), v169);
  v223.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v223.val[1], v223.val[1]), v51), v223.val[1]), v52), v53);
  v223.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v223.val[0], v223.val[0]), v51), v223.val[0]), v52), v53);
  v172 = veorq_s8(v223.val[0], vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(v223.val[1], vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v223.val[0], 0x38uLL), v223.val[0], 8uLL);
  v223.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[1], 0x38uLL), v223.val[1], 8uLL), v173);
  v223.val[1] = vaddq_s64(v223.val[2], v172);
  v223.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v223.val[1], vandq_s8(vaddq_s64(v223.val[1], v223.val[1]), v61)), *&STACK[0x18A0]), v63);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v223.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v223.val[0], vandq_s8(vaddq_s64(v223.val[0], v223.val[0]), v61)), *&STACK[0x18A0]), v63);
  v174 = veorq_s8(v223.val[0], vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v175 = veorq_s8(v223.val[1], v223.val[2]);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v223.val[0], 0x38uLL), v223.val[0], 8uLL);
  v223.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[1], 0x38uLL), v223.val[1], 8uLL), v175);
  v223.val[1] = veorq_s8(vaddq_s64(v223.val[2], v174), *&STACK[0x1890]);
  v223.val[0] = veorq_s8(v223.val[0], *&STACK[0x1890]);
  v223.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223.val[1], *&STACK[0x1880]), vorrq_s8(v223.val[1], v24)), v24), v142);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v223.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223.val[0], *&STACK[0x1880]), vorrq_s8(v223.val[0], v24)), v24), v142);
  v176 = veorq_s8(v223.val[0], vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v177 = veorq_s8(v223.val[1], v223.val[2]);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v223.val[0], 0x38uLL), v223.val[0], 8uLL);
  v223.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[1], 0x38uLL), v223.val[1], 8uLL), v177);
  v223.val[1] = veorq_s8(vaddq_s64(v223.val[2], v176), *&STACK[0x1570]);
  v223.val[0] = veorq_s8(v223.val[0], *&STACK[0x1570]);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v178 = veorq_s8(v223.val[0], vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v179 = veorq_s8(v223.val[1], v223.val[2]);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v223.val[0], 0x38uLL), v223.val[0], 8uLL);
  v223.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[1], 0x38uLL), v223.val[1], 8uLL), v179);
  v223.val[1] = vaddq_s64(v223.val[2], v178);
  v223.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v223.val[1], v223.val[1]), v89), v223.val[1]), v119), *&STACK[0x18B0]);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v223.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v223.val[0], v223.val[0]), v89), v223.val[0]), v119), *&STACK[0x18B0]);
  v180 = veorq_s8(v223.val[0], vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v181 = veorq_s8(v223.val[1], v223.val[2]);
  v223.val[2] = vsraq_n_u64(vshlq_n_s64(v223.val[0], 0x38uLL), v223.val[0], 8uLL);
  v223.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[1], 0x38uLL), v223.val[1], 8uLL), v181);
  v223.val[1] = veorq_s8(vaddq_s64(v223.val[2], v180), v123);
  v223.val[0] = veorq_s8(v223.val[0], v123);
  v182 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v39), v162), v167);
  v223.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[1], 0x38uLL), v223.val[1], 8uLL), veorq_s8(v223.val[1], vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v155, 3uLL), *&STACK[0x1750])));
  v223.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223.val[0], 0x38uLL), v223.val[0], 8uLL), veorq_s8(v223.val[0], vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v152, 3uLL), *&STACK[0x1750])));
  v183 = veorq_s8(v182, v102);
  v184 = veorq_s8(v182, v104);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v185, v185), v51), v185), v52), v53);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(v188, vandq_s8(vaddq_s64(v188, v188), v61)), *&STACK[0x18A0]), v63);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), *&STACK[0x1890]);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v191, *&STACK[0x1880]), vorrq_s8(v191, v24)), v24), v142);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), *&STACK[0x1570]);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), v89), v196), v119), *&STACK[0x18B0]);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v123);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL)));
  v201 = vaddq_s64(*&STACK[0x1780], v167);
  v223.val[0] = vshlq_u64(veorq_s8(v200, *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1860], 3uLL), *&STACK[0x1750])));
  v202 = veorq_s8(v201, v102);
  v203 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v204 = veorq_s8(v201, v171);
  v205 = vaddq_s64(v203, v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205, v205), v51), v205), v52), v53);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(v208, vandq_s8(vaddq_s64(v208, v208), v61)), *&STACK[0x18A0]), v63);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), *&STACK[0x1890]);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211, *&STACK[0x1880]), vorrq_s8(v211, v24)), v24), v142);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), *&STACK[0x1570]);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v216, v216), v89), v216), v119), *&STACK[0x18B0]);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), v123);
  v223.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL))), *&STACK[0x16C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1760], 3uLL), *&STACK[0x1750])));
  v218.i64[0] = vqtbl4q_s8(v223, *&STACK[0x17C0]).u64[0];
  v218.i64[1] = STACK[0x1790];
  v220 = vrev64q_s8(*(v18 + v30));
  v102.i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v102.i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v221 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v220, v220, 8uLL), v102), v218));
  *(v30 + v12 - 5) = vextq_s8(v221, v221, 8uLL);
  return (*(v15 + 8 * (((v19 == a7) * v8) ^ v14)))();
}

uint64_t sub_100061C48@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, char a7@<W7>, int a8@<W8>)
{
  v22 = (a8 + a1);
  v23 = v22 + STACK[0x1900];
  v24 = __ROR8__((v23 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (v8 | (2 * (v24 + v20))) - (v24 + v20) + v12;
  v26 = v25 ^ a5;
  v27 = v25 ^ a3;
  v28 = __ROR8__(v26, 8);
  v29 = ((v14 & (2 * (v28 + v27))) - (v28 + v27) + v16) ^ v17;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - (v18 & (2 * (v31 + v30))) + v19) ^ v9;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (a4 - ((v34 + v33) ^ 0x5022D6A42BA57F2ELL | a4) + ((v34 + v33) ^ 0x5022D6A42BA57F2ELL | 0x2DC50358CAB7AE49)) ^ 0xBAD923FFA81E9565;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xC4318A842864C03;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = __ROR8__((((2 * (v39 + v38)) & 0x2B17896CEC2FBFA4) - (v39 + v38) + 0x6A743B4989E8202DLL) ^ 0x2914335B694B705ELL, 8);
  v41 = (((2 * (v39 + v38)) & 0x2B17896CEC2FBFA4) - (v39 + v38) + 0x6A743B4989E8202DLL) ^ 0x2914335B694B705ELL ^ __ROR8__(v38, 61);
  *(v23 + 10) = *(v13 + v22) ^ a7 ^ (((__ROR8__((v40 + v41) ^ v15, 8) + ((v40 + v41) ^ v15 ^ __ROR8__(v41, 61))) ^ v11) >> (8 * ((v23 + 10) & 7)));
  return (*(v21 + 8 * (((a8 - 1 != a2) * a6) ^ (v10 - 1697))))();
}

uint64_t sub_100061DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x2AE0] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x31B8];
  LODWORD(STACK[0x3028]) = 1236501623;
  STACK[0x1E80] = STACK[0x698];
  LODWORD(STACK[0x2A08]) = 13;
  return (*(v4 + 8 * (v5 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_100061E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x22F0] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x26D8];
  LODWORD(STACK[0x3028]) = 1263592055;
  STACK[0x1E80] = STACK[0x6A8];
  LODWORD(STACK[0x2A08]) = 15;
  return (*(v4 + 8 * (v5 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_100061F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x1E18] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x2680];
  LODWORD(STACK[0x3028]) = 1236501623;
  STACK[0x1E80] = STACK[0x6B0];
  LODWORD(STACK[0x2A08]) = 19;
  return (*(v4 + 8 * (v5 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_100062010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x1700];
  STACK[0x1F38] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x2758];
  LODWORD(STACK[0x3028]) = 1318742951;
  STACK[0x1E80] = STACK[0x6A0];
  LODWORD(STACK[0x2A08]) = 14;
  return (*(v4 + 8 * (v5 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_1000620CC()
{
  STACK[0x1900] = v0 - 15;
  v6 = *(v4 + 8 * v3);
  LODWORD(STACK[0x18F0]) = -(v5 & 0xFFFFFFF0);
  v7 = (v2 + 268765210 + v1);
  LODWORD(STACK[0x18B0]) = v7 - 8;
  LODWORD(STACK[0x18A0]) = v7 - 7;
  LODWORD(STACK[0x1890]) = v7 - 6;
  LODWORD(STACK[0x1880]) = v7 - 5;
  return v6((v7 + 5), v7, (v7 + 6), (v7 + 7), 4294967280);
}

uint64_t sub_100062184@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, int8x16_t a9@<Q0>, int8x16_t a10@<Q1>, int64x2_t a11@<Q2>, int8x16_t a12@<Q3>)
{
  v33 = (a4 + a5 + 16);
  v34.i64[0] = v33 + a8 + 10;
  v35.i64[0] = (v12 + a5 + 16) + a8 + 10;
  v36.i64[0] = (v22 + a5 + 16) + a8 + 10;
  v34.i64[1] = (a3 + a5 + 16) + a8 + 10;
  v35.i64[1] = (v14 + a5 + 16) + a8 + 10;
  v36.i64[1] = (a2 + a5 + 16) + a8 + 10;
  v37.i64[0] = (a1 + a5 + 16) + a8 + 10;
  v37.i64[1] = v13 + a5 + ((v15 - 275) ^ v21) + 16 + a8 + 10;
  v38.i64[0] = (v17 + a5 + 16) + a8 + 10;
  v38.i64[1] = (v16 + a5 + 16) + a8 + 10;
  v39.i64[0] = (a7 + a5 + 16) + a8 + 10;
  v39.i64[1] = (a6 + a5 + 16) + a8 + 10;
  v40.i64[0] = (LODWORD(STACK[0x1880]) + a5 + 16) + a8 + 10;
  v40.i64[1] = (LODWORD(STACK[0x1890]) + a5 + 16) + a8 + 10;
  v41 = vandq_s8(v36, v32);
  v42 = vandq_s8(v35, v32);
  v43 = vandq_s8(v34, v32);
  v44 = vandq_s8(v37, v32);
  v45 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v23);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v23);
  v49 = veorq_s8(v48, v24);
  v50 = veorq_s8(v47, v24);
  v51 = veorq_s8(v47, v31);
  v52 = veorq_s8(v48, v31);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51), v26);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52), v26);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v56 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v57 = veorq_s8(v53, v55);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57);
  v60 = veorq_s8(vaddq_s64(v58, v56), v28);
  v61 = veorq_s8(v59, v28);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = veorq_s8(vaddq_s64(v65, v63), a9);
  v68 = veorq_s8(v66, a9);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), a10)), a11), a12);
  v70 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(v67, vandq_s8(vaddq_s64(v67, v67), a10)), a11), a12);
  v73 = veorq_s8(v72, v71);
  v74 = veorq_s8(v69, v70);
  v75 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v29);
  v78 = veorq_s8(v76, v29);
  v79 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v27);
  v85 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v86 = veorq_s8(v83, v27);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v84, v85);
  v89 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = veorq_s8(vaddq_s64(v89, v87), v25);
  v92 = veorq_s8(v90, v25);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v97 = vdupq_n_s64(v18);
  v98 = vaddq_s64(v45, v23);
  v99 = veorq_s8(vaddq_s64(v96, v94), v30);
  v182.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v97)));
  v182.val[2] = vshlq_u64(v99, vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v97)));
  v100 = veorq_s8(v98, v24);
  v101 = veorq_s8(v98, v31);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v26);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v28);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), a9);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(v106, vandq_s8(vaddq_s64(v106, v106), a10)), a11), a12);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v29);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v27);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v25);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v113.i64[0] = (LODWORD(STACK[0x18A0]) + a5 + 16) + a8 + 10;
  v113.i64[1] = (LODWORD(STACK[0x18B0]) + a5 + 16) + a8 + 10;
  v116 = vaddq_s64(v115, v114);
  v117 = vandq_s8(v113, v32);
  v118 = vaddq_s64(v46, v23);
  v182.val[0] = vshlq_u64(veorq_s8(v116, v30), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v97)));
  v119 = veorq_s8(v118, v24);
  v120 = veorq_s8(v118, v31);
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v26);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v28);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), a9);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), a10)), a11), a12);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v29);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v27);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v25);
  v133 = vandq_s8(v40, v32);
  v134 = vandq_s8(v39, v32);
  v182.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL))), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v97)));
  v135 = vandq_s8(v38, v32);
  v136 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v23);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v23);
  v135.i64[0] = vqtbl4q_s8(v182, *&STACK[0x17C0]).u64[0];
  v182.val[0] = veorq_s8(v139, v24);
  v182.val[1] = veorq_s8(v138, v24);
  v140 = veorq_s8(v138, v31);
  v141 = veorq_s8(v139, v31);
  v182.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[1], 0x38uLL), v182.val[1], 8uLL), v140), v26);
  v182.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[0], 0x38uLL), v182.val[0], 8uLL), v141), v26);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v142 = veorq_s8(v182.val[0], vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v143 = veorq_s8(v182.val[1], v182.val[2]);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v182.val[0], 0x38uLL), v182.val[0], 8uLL);
  v182.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[1], 0x38uLL), v182.val[1], 8uLL), v143);
  v182.val[1] = veorq_s8(vaddq_s64(v182.val[2], v142), v28);
  v182.val[0] = veorq_s8(v182.val[0], v28);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v144 = veorq_s8(v182.val[0], vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v145 = veorq_s8(v182.val[1], v182.val[2]);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v182.val[0], 0x38uLL), v182.val[0], 8uLL);
  v182.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[1], 0x38uLL), v182.val[1], 8uLL), v145);
  v182.val[1] = veorq_s8(vaddq_s64(v182.val[2], v144), a9);
  v182.val[0] = veorq_s8(v182.val[0], a9);
  v182.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v182.val[0], vandq_s8(vaddq_s64(v182.val[0], v182.val[0]), a10)), a11), a12);
  v182.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v182.val[1], vandq_s8(vaddq_s64(v182.val[1], v182.val[1]), a10)), a11), a12);
  v146 = veorq_s8(v182.val[1], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = veorq_s8(v182.val[0], vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v182.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[1], 0x38uLL), v182.val[1], 8uLL), v146), v29);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v182.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[0], 0x38uLL), v182.val[0], 8uLL), v147), v29);
  v148 = veorq_s8(v182.val[0], vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v149 = veorq_s8(v182.val[1], v182.val[2]);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v182.val[0], 0x38uLL), v182.val[0], 8uLL);
  v182.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[1], 0x38uLL), v182.val[1], 8uLL), v149);
  v182.val[1] = veorq_s8(vaddq_s64(v182.val[2], v148), v27);
  v182.val[0] = veorq_s8(v182.val[0], v27);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v150 = veorq_s8(v182.val[0], vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v151 = veorq_s8(v182.val[1], v182.val[2]);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v182.val[0], 0x38uLL), v182.val[0], 8uLL);
  v182.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182.val[1], 0x38uLL), v182.val[1], 8uLL), v151);
  v182.val[1] = veorq_s8(vaddq_s64(v182.val[2], v150), v25);
  v182.val[0] = veorq_s8(v182.val[0], v25);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v152 = veorq_s8(v182.val[0], vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v153 = veorq_s8(v182.val[1], v182.val[2]);
  v182.val[2] = vsraq_n_u64(vshlq_n_s64(v182.val[0], 0x38uLL), v182.val[0], 8uLL);
  v182.val[0] = vsraq_n_u64(vshlq_n_s64(v182.val[1], 0x38uLL), v182.val[1], 8uLL);
  v182.val[1] = vaddq_s64(v137, v23);
  v181.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v182.val[0], v153), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v113, 3uLL), v97)));
  v181.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v182.val[2], v152), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v97)));
  v154 = veorq_s8(v182.val[1], v24);
  v182.val[0] = veorq_s8(v182.val[1], v31);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v182.val[0]), v26);
  v182.val[0] = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v182.val[0], 3uLL), v182.val[0], 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v182.val[0]), v28);
  v182.val[0] = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v182.val[0], 3uLL), v182.val[0], 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v182.val[0]), a9);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(v157, vandq_s8(vaddq_s64(v157, v157), a10)), a11), a12);
  v182.val[0] = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v182.val[0], 3uLL), v182.val[0], 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v182.val[0]), v29);
  v182.val[0] = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v182.val[0], 3uLL), v182.val[0], 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v182.val[0]), v27);
  v182.val[0] = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v182.val[0], 3uLL), v182.val[0], 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v182.val[0]), v25);
  v162 = vaddq_s64(v136, v23);
  v181.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v182.val[0], 3uLL), v182.val[0], 0x3DuLL))), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v97)));
  v163 = veorq_s8(v162, v24);
  v164 = veorq_s8(v162, v31);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v26);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v28);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), a9);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(v169, vandq_s8(vaddq_s64(v169, v169), a10)), a11), a12);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v29);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v27);
  v175 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v177 = veorq_s8(v174, v175);
  v178 = veorq_s8(vaddq_s64(v176, v177), v25);
  v181.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL))), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v97)));
  v135.i64[1] = vqtbl4q_s8(v181, *&STACK[0x17C0]).u64[0];
  v179 = vrev64q_s8(v135);
  *(v33 + a8 - 5) = veorq_s8(vextq_s8(v179, v179, 8uLL), *(STACK[0x1900] + v33));
  return (*(v20 + 8 * (((LODWORD(STACK[0x18F0]) == a5) * v19) ^ v15)))();
}

uint64_t sub_100062B88@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 - 1878697865);
  v7 = v6 + a1 + 10;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v8 + 0x7695A575CC8A36DALL) ^ 0xB9DC45633787A904;
  v10 = (__ROR8__((v8 + 0x7695A575CC8A36DALL) ^ 0xD716ECD53D61FD7, 8) + v9) ^ 0x5EEE4453CA35DABALL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x96518B1852248A0DLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((v14 + v13) ^ 0xC68B4938352BAC5DLL) - ((2 * ((v14 + v13) ^ 0xC68B4938352BAC5DLL)) & 0xF4DAF9119A22CE92) - 0x592837732EE98B7) ^ 0xFBD8C3B3B1368F16;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xC4318A842864C03;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x43600812E0A35073;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xB581C077348D623CLL;
  *v7 = (((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61))) ^ v4) >> (8 * (v7 & 7u))) ^ *(v1 + v6);
  return (*(v5 + 8 * ((25 * (v2 == 1878697865)) ^ v3)))();
}

uint64_t sub_100062D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x2300] = 0x51CE20ABD81C933BLL;
  STACK[0x2438] = STACK[0x1E60];
  LODWORD(STACK[0x3028]) = STACK[0x3E68];
  STACK[0x1E80] = STACK[0x930];
  LODWORD(STACK[0x2A08]) = 8;
  return (*(v8 + 8 * (v7 - 4727)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v9);
}

uint64_t sub_100063264@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = a1 + a3 - 0x6D14C2605E6645F6;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((2 * v14 - 0x481EF222FE3F2E1CLL) & 0xDCF292637B6AEEE2) - v14 - 0x4A69D0203E95E064;
  v16 = __ROR8__(v15 ^ 0xB901B5D0FB7E1934, 8);
  v15 ^= 0x668582A4FC7D5EA2uLL;
  v17 = (v16 + v15) ^ v10;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = *(v12 + 8 * a2);
  v20 = (__ROR8__(v17, 8) + v18) ^ 0x9FC19AABFBDF4258;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v18, 61);
  v23 = (v21 + v22) ^ 0x901164E02F7DA9DELL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) & 0xF3F7DBDA085E5D0ELL) - (v25 + v24) + 0x6041212FBD0D178) ^ 0x2CF0B7826F52AE16;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0xD1F1C0AC37998AEALL) + 0x68F8E0561BCCC575) ^ 0xFAC2E9C199AED09FLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) | 0xE2BBCC865B64A0F6) - (v31 + v30) - 0x715DE6432DB2507BLL) ^ 0xCD720243AB2A78F2;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  *v13 = (((0x40A147771892745ALL - ((v34 + v33) | 0x40A147771892745ALL) + ((v34 + v33) | 0xBF5EB888E76D8BA5)) ^ 0xC77C7B2590817EFELL) >> (8 * (v13 & 7u))) ^ HIBYTE(v7) ^ 0x63;
  v35 = __ROR8__((v13 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = ((v35 - 0x240F79117F1F970ELL) | 0x13AB6A934168D1B5) - ((v35 - 0x240F79117F1F970ELL) | 0xEC54956CBE972E4ALL) - 0x13AB6A934168D1B6;
  v37 = v36 ^ 0x3B2C698DF85C400FLL;
  v36 ^= 0xE4A85EF9FF5F0799;
  v38 = __ROR8__(v37, 8);
  v39 = (v38 + v36 - ((2 * (v38 + v36)) & 0xEF27830E4C4E4466) - 0x86C3E78D9D8DDCDLL) ^ 0x2FE910ACEC53D261;
  v40 = v39 ^ __ROR8__(v36, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0x3B02E78768F7F00CLL) - (v41 + v40) - 0x1D8173C3B47BF806) ^ 0x8240E9684FA4BA5ELL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0xB74DE82257E8BFA4) + 0x5BA6F4112BF45FD2) ^ 0xCBB790F10489F60CLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x2AF4A59094827F6ELL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ a6;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) & 0xF7F04EF2B6E348C6) - (v51 + v50) - 0x7BF827795B71A464) ^ 0x38283C8622167315;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  *(v13 + 1) = (((v11 - ((v54 + v53) | v11) + ((v54 + v53) | 0xFA3DD0C0E2973B74)) ^ 0x821F136D957BCE2FLL) >> (8 * ((v13 + 1) & 7))) ^ BYTE2(v7) ^ 0xB5;
  v55 = __ROR8__((v13 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = -2 - (((a7 - v55) | 0xD3AF7ADB7EE08812) + ((v55 - 0x240F79117F1F970ELL) | 0x2C508524811F77EDLL));
  v57 = __ROR8__(v56 ^ 0xFB2879C5C7D419A8, 8);
  v56 ^= 0x24AC4EB1C0D75E3EuLL;
  v58 = (((2 * (v57 + v56)) & 0x748754D312A22E04) - (v57 + v56) - 0x3A43AA6989511703) ^ 0x1DC684BDBCDA18AFLL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x9FC19AABFBDF4258;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (0xC63C7FA5A89F060DLL - ((v62 + v61) | 0xC63C7FA5A89F060DLL) + ((v62 + v61) | 0x39C3805A5760F9F2)) ^ 0xA9D2E4BA781D502CLL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = __ROR8__((((2 * (v65 + v64)) | 0xA79BDD206F226E2CLL) - (v65 + v64) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878, 8);
  v67 = (((2 * (v65 + v64)) | 0xA79BDD206F226E2CLL) - (v65 + v64) + 0x2C32116FC86EC8EALL) ^ 0xF9394B00A3134878 ^ __ROR8__(v64, 61);
  v68 = (v66 + v67) ^ a6;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ v8;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  LOBYTE(v33) = (((((2 * (v72 + v71)) & 0x5C715BFC7CAE6902) - (v72 + v71) + 0x51C75201C1A8CB7ELL) ^ 0x29E591ACB6443E25uLL) >> (8 * ((v13 + 2) & 7))) ^ BYTE1(v7) ^ 0xB;
  v73 = __ROR8__((v13 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v13 + 2) = v33;
  v74 = ((2 * v73 + 0x37E10DDD01C0D1E4) & 0x78FE4AD8FA3B9EA8) - v73 + 0x679053A50201C7B9;
  v75 = v74 ^ 0x6B07D98D3BD6A111;
  v74 ^= 0xB483EEF93CD5E687;
  v76 = (__ROR8__(v75, 8) + v74) ^ v10;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x9FC19AABFBDF4258;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x901164E02F7DA9DELL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * (v82 + v81)) | 0xE0B9FE80D0CE9B80) - (v82 + v81) + 0xFA300BF9798B240) ^ 0xDAA85AD0FCE532AELL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((v85 + v84) ^ 0xF182E7DD6525616ELL) - ((2 * ((v85 + v84) ^ 0xF182E7DD6525616ELL)) & 0xB32EBAB8706D558ALL) + 0x59975D5C3836AAC5) ^ 0x3A2FB316DF71DE41;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (0x4BB30C7E6CFB8409 - ((v88 + v87) | 0x4BB30C7E6CFB8409) + ((v88 + v87) | 0xB44CF38193047BF6)) ^ 0x8631781159C537FLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  *(v13 + 3) = v7 ^ v9 ^ ((((a4 | (2 * (v91 + v90))) - (v91 + v90) + a5) ^ 0x4D1967E0EEC86871) >> (8 * ((v13 + 3) & 7)));
  return v19();
}

uint64_t sub_100063A80()
{
  v8 = STACK[0x1700];
  v9 = STACK[0x1700] + v6;
  *v0 = v1;
  *v2 = v3;
  return (*(v7 + 8 * (v8 + 766)))(v4, v9, v5);
}

uint64_t sub_100063AAC()
{
  v1 = STACK[0x1700] + 539;
  v2 = LODWORD(STACK[0x1C48]) - ((2 * LODWORD(STACK[0x1C48]) + 1191871068) & 0x81088338) + 1678344906;
  v3 = (2 * v2) & 0xF9BFCFB6 ^ 0x81088330;
  LODWORD(STACK[0x15B0]) = v3;
  return (*(v0 + 8 * ((58 * (v3 + (v2 ^ 0x3C5BA647) + 939220286 == 886785305)) ^ v1)))(0x50F1A00E103B1273, 5780, 0xECDE440E96A33AFALL, 0x44D89E9B4D85E6BELL, 0xDDC8704F4232C7F2, 0x24C473B45318064, 0x77BCCCEC6DB88288, 0xBBDE667636DC4144);
}

uint64_t sub_100063C34()
{
  v2 = STACK[0x1700] + 3138;
  v3 = (STACK[0x1700] - 3899) | 0x1084;
  v4 = LODWORD(STACK[0x15B0]) + v0;
  LODWORD(STACK[0x1540]) = v0;
  return (*(v1 + 8 * ((v4 + 52434981 < (v3 ^ 0x19CFu)) | v2)))();
}

uint64_t sub_100063CE4(double a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  LODWORD(STACK[0x1530]) = 0;
  v16 = *(v15 + 8 * ((42 * (((v12 + 40) ^ (v13 < ((v12 - 1319312969) & 0x4EA31CFF ^ 0x186Eu))) & 1)) ^ v12));
  *&STACK[0x18A0] = vdupq_n_s64(a9);
  LODWORD(STACK[0x14C0]) = v13;
  return v16(vdupq_n_s64(a11), a2, a3, a4, vdupq_n_s64(v14), vdupq_n_s64(a8), vdupq_n_s64(a12), vdupq_n_s64(a10));
}

uint64_t sub_100063DD8(__n128 a1, double a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, int a10)
{
  v23 = *(v12 + 8 * (a10 - 4410));
  LODWORD(STACK[0x1530]) = v11 & 0xFFFFFFF0;
  v24 = LODWORD(STACK[0x15B0]) + 52434973 + v10;
  LODWORD(STACK[0x1710]) = v24 - 8;
  LODWORD(STACK[0x1600]) = v24 - 7;
  *&STACK[0x1730] = a5;
  *&STACK[0x18F0] = a8;
  *&STACK[0x1850] = a1;
  *&STACK[0x1750] = a7;
  *&STACK[0x1740] = v14;
  *&STACK[0x1900] = v15;
  *&STACK[0x1880] = v16;
  *&STACK[0x1860] = v17;
  *&STACK[0x1890] = v18;
  *&STACK[0x1790] = v19;
  *&STACK[0x1760] = v20;
  *&STACK[0x17A0] = v21;
  *&STACK[0x17D0] = a6;
  *&STACK[0x17B0] = v13;
  *&STACK[0x1720] = v22;
  return v23();
}

uint64_t sub_100063EB8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v26 = v18 + a8 + v8;
  v27.i64[0] = v26 + (LODWORD(STACK[0x1600]) + v15 + 16);
  v27.i64[1] = v26 + (LODWORD(STACK[0x1710]) + v15 + 16);
  v28.i64[0] = v26 + (a4 + v15 + 16);
  v28.i64[1] = v26 + (a3 + v15 + 16);
  v29.i64[0] = v26 + (a6 + v15 + 16);
  v30.i64[0] = v26 + (v16 + v15 + 16);
  v29.i64[1] = v26 + (a5 + v15 + 16);
  v31 = v29;
  *&STACK[0x1800] = v29;
  v30.i64[1] = v26 + (a7 + v15 + 16);
  v32 = v30;
  *&STACK[0x1810] = v30;
  v30.i64[0] = v26 + (v17 + v15 + 16);
  v30.i64[1] = v26 + (a1 + v15 + 16);
  *&STACK[0x1830] = v30;
  v30.i64[0] = v26 + (v13 + v15 + 16);
  v30.i64[1] = v26 + (v23 + v15 + 16);
  *&STACK[0x1820] = v30;
  v30.i64[0] = v26 + (v11 + v15 + 16);
  v30.i64[1] = v26 + (v10 + v15 + 16);
  *&STACK[0x18B0] = v30;
  v33 = *&STACK[0x1940];
  v34 = vandq_s8(v32, *&STACK[0x1940]);
  v35 = vandq_s8(v31, *&STACK[0x1940]);
  v36 = vandq_s8(v28, *&STACK[0x1940]);
  v37 = vandq_s8(v27, *&STACK[0x1940]);
  v38 = *&STACK[0x1730];
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x1730]);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x1730]);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x1730]);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x1730]);
  *&STACK[0x1840] = vsubq_s64(vorrq_s8(vaddq_s64(v39, v39), v25), v39);
  v43 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v41, v41), v25), v41), v24);
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), v25), v42), v24);
  v45 = *&STACK[0x18A0];
  v46 = veorq_s8(v44, *&STACK[0x18A0]);
  v47 = veorq_s8(v43, *&STACK[0x18A0]);
  v48 = veorq_s8(v43, *&STACK[0x18F0]);
  v49 = veorq_s8(v44, *&STACK[0x18F0]);
  v50 = *&STACK[0x1770];
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), *&STACK[0x1770]);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), *&STACK[0x1770]);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v57 = vaddq_s64(v55, v53);
  v58 = *&STACK[0x1750];
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v57, vandq_s8(vaddq_s64(v57, v57), *&STACK[0x1850])), *&STACK[0x1750]), *&STACK[0x1740]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v56, vandq_s8(vaddq_s64(v56, v56), *&STACK[0x1850])), *&STACK[0x1750]), *&STACK[0x1740]);
  v61 = *&STACK[0x1740];
  v62 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v64 = veorq_s8(v59, v62);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v64);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v67 = *&STACK[0x1860];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), *&STACK[0x1900]), v66), *&STACK[0x1880]), *&STACK[0x1860]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), *&STACK[0x1900]), v65), *&STACK[0x1880]), *&STACK[0x1860]);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71);
  v74 = *&STACK[0x1890];
  v75 = veorq_s8(vaddq_s64(v72, v70), *&STACK[0x1890]);
  v76 = veorq_s8(v73, *&STACK[0x1890]);
  v77 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = *&STACK[0x1780];
  v83 = veorq_s8(vaddq_s64(v80, v78), *&STACK[0x1780]);
  v84 = veorq_s8(v81, *&STACK[0x1780]);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86);
  v89 = vaddq_s64(v87, v85);
  v90 = *&STACK[0x1790];
  v91 = *&STACK[0x1760];
  v92 = *&STACK[0x17A0];
  v93 = veorq_s8(vaddq_s64(vsubq_s64(v89, vandq_s8(vaddq_s64(v89, v89), *&STACK[0x1790])), *&STACK[0x1760]), *&STACK[0x17A0]);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(v88, vandq_s8(vaddq_s64(v88, v88), *&STACK[0x1790])), *&STACK[0x1760]), *&STACK[0x17A0]);
  v95 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vdupq_n_s64(v20);
  v99 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), v25), v40), v24);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, v95));
  v101 = vaddq_s64(v97, v96);
  v102 = *&STACK[0x17D0];
  v103 = *&STACK[0x17B0];
  v104 = v25;
  v105 = v24;
  v106 = *&STACK[0x1720];
  v244.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), *&STACK[0x17D0])), *&STACK[0x17B0]), *&STACK[0x1720]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v98)));
  v244.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), *&STACK[0x17D0])), *&STACK[0x17B0]), *&STACK[0x1720]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v98)));
  v107 = veorq_s8(v99, *&STACK[0x18A0]);
  v108 = *&STACK[0x18F0];
  v109 = veorq_s8(v99, *&STACK[0x18F0]);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v109), *&STACK[0x1770]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = *&STACK[0x1850];
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), *&STACK[0x1850])), *&STACK[0x1750]), *&STACK[0x1740]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = *&STACK[0x1900];
  v118 = *&STACK[0x1880];
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), *&STACK[0x1900]), v116), *&STACK[0x1880]), *&STACK[0x1860]);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), *&STACK[0x1890]);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), *&STACK[0x1780]);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), *&STACK[0x1790])), *&STACK[0x1760]), *&STACK[0x17A0]);
  v31.i64[0] = v26 + v9 + v15 + ((65 * a2) ^ 0xCB24BC3D) + 16;
  v31.i64[1] = v26 + (v12 + v15 + 16);
  *&STACK[0x17F0] = v31;
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL)));
  v128 = vandq_s8(v31, v33);
  v129 = vaddq_s64(*&STACK[0x1840], v105);
  v244.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(v127, v127), v102)), v103), v106), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1800], 3uLL), v98)));
  v130 = veorq_s8(v129, v45);
  v131 = veorq_s8(v129, v108);
  v132 = v108;
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v50);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = v113;
  v137 = veorq_s8(vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), v113)), v58), v61);
  v138 = v61;
  v139 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), v117), v140), v118), v67);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v74);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v82);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(v147, vandq_s8(vaddq_s64(v147, v147), v90)), v91), v92);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v151 = vandq_s8(*&STACK[0x18B0], v33);
  v152 = vaddq_s64(v150, v149);
  v153 = *&STACK[0x1820];
  v154 = vandq_s8(*&STACK[0x1820], v33);
  v244.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v152, vandq_s8(vaddq_s64(v152, v152), v102)), v103), v106), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1810], 3uLL), v98)));
  v155 = *&STACK[0x1830];
  v156 = vandq_s8(*&STACK[0x1830], v33);
  v157 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v38);
  v161 = vaddq_s64(v159, v38);
  v162 = vaddq_s64(v158, v38);
  v163 = vaddq_s64(v157, v38);
  *&STACK[0x1810] = vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v104), v160);
  v164 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v104), v162), v105);
  v165 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), v104), v163), v105);
  *&STACK[0x1840] = vqtbl4q_s8(v244, *&STACK[0x17C0]);
  v166 = v45;
  v167 = veorq_s8(v165, v45);
  v168 = veorq_s8(v164, v166);
  v169 = veorq_s8(v164, v132);
  v170 = veorq_s8(v165, v132);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v50);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v170), v50);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = veorq_s8(v171, v244.val[0]);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v174);
  v176 = vaddq_s64(v244.val[0], v173);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(v176, vandq_s8(vaddq_s64(v176, v176), v136)), v58), v138);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(v175, vandq_s8(vaddq_s64(v175, v175), v136)), v58), v138);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v180 = veorq_s8(v177, v244.val[0]);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v180);
  v182 = vaddq_s64(v244.val[0], v179);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v182, v182), *&STACK[0x1900]), v182), *&STACK[0x1880]), *&STACK[0x1860]);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v181, v181), *&STACK[0x1900]), v181), *&STACK[0x1880]), *&STACK[0x1860]);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v186 = veorq_s8(v183, v244.val[0]);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(v244.val[0], v185), *&STACK[0x1890]);
  v189 = veorq_s8(v187, *&STACK[0x1890]);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v191 = veorq_s8(v188, v244.val[0]);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(v244.val[0], v190), v82);
  v194 = veorq_s8(v192, v82);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v196 = veorq_s8(v193, v244.val[0]);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v196);
  v198 = vaddq_s64(v244.val[0], v195);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(v198, vandq_s8(vaddq_s64(v198, v198), v90)), v91), v92);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), v90)), v91), v92);
  v244.val[0] = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v202 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), v104), v161), v105);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), veorq_s8(v199, v244.val[0]));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v244.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v203, vandq_s8(vaddq_s64(v203, v203), v102)), v103), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v155, 3uLL), v98)));
  v244.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v204, vandq_s8(vaddq_s64(v204, v204), v102)), v103), v106), vnegq_s64(vandq_s8(vshlq_n_s64(v153, 3uLL), v98)));
  v205 = veorq_s8(v202, v166);
  v206 = veorq_s8(v202, *&STACK[0x18F0]);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), v50);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(v209, vandq_s8(vaddq_s64(v209, v209), v136)), v58), v138);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211);
  v213 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v212, v212), *&STACK[0x1900]), v212), *&STACK[0x1880]), *&STACK[0x1860]);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), *&STACK[0x1890]);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), v82);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(v219, vandq_s8(vaddq_s64(v219, v219), v90)), v91), v92);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL)));
  v222 = vaddq_s64(*&STACK[0x1810], v105);
  v244.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v221, vandq_s8(vaddq_s64(v221, v221), v102)), v103), v106), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x18B0], 3uLL), v98)));
  v223 = veorq_s8(v222, v166);
  v224 = veorq_s8(v222, *&STACK[0x18F0]);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), v50);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(v227, vandq_s8(vaddq_s64(v227, v227), v136)), v58), v138);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v230, v230), *&STACK[0x1900]), v230), *&STACK[0x1880]), *&STACK[0x1860]);
  v232 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v234 = veorq_s8(v231, v232);
  v235 = veorq_s8(vaddq_s64(v233, v234), *&STACK[0x1890]);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v82);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), v90)), v91), v92);
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL)));
  v244.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v241, vandq_s8(vaddq_s64(v241, v241), v102)), v103), v106), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x17F0], 3uLL), v98)));
  v241.i64[0] = vqtbl4q_s8(v244, *&STACK[0x17C0]).u64[0];
  v241.i64[1] = STACK[0x1840];
  v242 = vrev64q_s8(v241);
  *(v26 + v9 + v15 + ((65 * a2) ^ 0xCB24BC3D) + 16 - 15) = vextq_s8(v242, v242, 8uLL);
  return (*(v19 + 8 * (((v22 == v15) * v21) ^ v14)))();
}

uint64_t sub_100064CAC()
{
  *&STACK[0x17E0] = v3;
  v4 = *(v2 + 8 * v0);
  LODWORD(STACK[0x18B0]) = v1 & 0xFFFFFFF8;
  return v4();
}

uint64_t sub_100064D44@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X8>, int8x16_t a8@<Q1>, int8x16_t a9@<Q2>, int8x16_t a10@<Q3>, int64x2_t a11@<Q4>, int8x16_t a12@<Q5>, int64x2_t a13@<Q6>, int8x16_t a14@<Q7>)
{
  v38 = v21 + a7 + v14;
  v39.i64[0] = v38 + (a1 + v19 + 8);
  v40.i64[0] = v38 + (a3 + v19 + 8);
  v39.i64[1] = v38 + (v20 + v19 + 8);
  v40.i64[1] = v38 + (a2 + v19 + 8);
  v41.i64[0] = v38 + (a6 + v19 + 8);
  v42.i64[0] = v38 + (a4 + v19 + 8);
  v41.i64[1] = v38 + (a5 + v19 + 8);
  v42.i64[1] = v38 + v15 + v19 + ((v16 - 1801) ^ (v23 + 543)) + 8;
  v43 = vandq_s8(v41, a8);
  v44 = vandq_s8(v40, a8);
  v45 = vandq_s8(v39, a8);
  v46 = vandq_s8(v42, a8);
  v47 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v51 = vaddq_s64(v49, a11);
  v52 = vaddq_s64(v48, a11);
  v53 = vaddq_s64(v47, a11);
  v54 = vaddq_s64(v50, a11);
  v55 = vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), *&STACK[0x17E0]), v52);
  v56 = vsubq_s64(vorrq_s8(vaddq_s64(v51, v51), *&STACK[0x17E0]), v51);
  v57 = vaddq_s64(v55, v27);
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), *&STACK[0x17E0]), v53), v27);
  v59 = veorq_s8(v58, v25);
  v60 = veorq_s8(v57, v25);
  v61 = veorq_s8(v57, a14);
  v62 = veorq_s8(v58, a14);
  v63 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v61), a9);
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62), a9);
  v67 = veorq_s8(v66, v65);
  v68 = veorq_s8(v63, v64);
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(v71, vandq_s8(vaddq_s64(v71, v71), v28)), a13), v29);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(v70, vandq_s8(vaddq_s64(v70, v70), v28)), a13), v29);
  v74 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), v30), v79), v31), v32);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v30), v78), v31), v32);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = veorq_s8(v80, v81);
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v33);
  v88 = veorq_s8(v86, v33);
  v89 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), a10);
  v95 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v96 = veorq_s8(v93, a10);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v94, v95);
  v99 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v98);
  v101 = vaddq_s64(v99, v97);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v34)), v35), v36);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), v34)), v35), v36);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v105 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v106 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v107 = vdupq_n_s64(v17);
  v108 = vaddq_s64(v56, v27);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v105);
  v110 = vaddq_s64(v106, v104);
  v147.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), a12)), v26), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v107)));
  v147.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), a12)), v26), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v107)));
  v111 = veorq_s8(v108, *&STACK[0x18A0]);
  v112 = veorq_s8(v108, a14);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), a9);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), v28)), a13), v29);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v30), v118), v31), v32);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v33);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), a10);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), v34)), v35), v36);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL)));
  v128 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), *&STACK[0x17E0]), v54), v27);
  v147.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(v127, v127), a12)), v26), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v107)));
  v129 = veorq_s8(v128, *&STACK[0x18A0]);
  v130 = veorq_s8(v128, a14);
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), a9);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(v133, vandq_s8(vaddq_s64(v133, v133), v28)), a13), v29);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v30), v136), v31), v32);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v33);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), a10);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(v143, vandq_s8(vaddq_s64(v143, v143), v34)), v35), v36);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL)));
  v147.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v145, vandq_s8(vaddq_s64(v145, v145), a12)), v26), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v107)));
  *(v38 + (a6 + v19 + 8) - 7) = vrev64_s8(*&vqtbl4q_s8(v147, *&STACK[0x15C0]));
  return (*(v24 + 8 * (((v18 == v19) * v22) ^ v16)))();
}

uint64_t sub_100065440@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = v12 + a9 - 0x389F99CF0FF63B65 + (v10 - 886785306);
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (v11 ^ a2) + v9 + (v20 | (2 * (v24 + v17))) - (v24 + v17);
  v26 = v25 ^ a5;
  v27 = v25 ^ a6;
  v28 = (__ROR8__(v26, 8) + v27) ^ v16;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - (a7 & (2 * (v30 + v29))) + a8) ^ v18;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((v19 & (2 * (v33 + v32))) - (v33 + v32) + 0x30472441B150E611) ^ v13;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v15;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x923A0997826215EALL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - (v21 & (2 * (v40 + v39))) + a1) ^ a3;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *v23 = ((v43 + v42 - (a4 & (2 * (v43 + v42))) + 0x226C4F4DA6C2F35FLL) ^ 0x5A4E8CE0D12E0604uLL) >> (8 * (v23 & 7u));
  return (*(v22 + 8 * (((4 * (v10 - 1 != v14)) | (8 * (v10 - 1 != v14))) ^ (v11 - 270))))();
}

uint64_t sub_1000655A8()
{
  STACK[0x2408] = v1;
  LODWORD(STACK[0x2D2C]) = STACK[0x2F4C];
  return (*(v2 + 8 * (((STACK[0x1ED0] == 0) * (((v0 + 1479220709) & 0xA7D4DB7F) - 2100)) ^ v0)))();
}

uint64_t sub_1000656B8()
{
  *(v3 - 240) = (v2 + 5483) ^ (1949688233 * ((((2 * (v3 - 240)) | 0xD015C76A) - (v3 - 240) - 1745544117) ^ 0x8F4DB53E));
  v5 = (*(v4 + 8 * (v2 ^ 0x21D2)))(v3 - 240);
  v6 = STACK[0x1708];
  v7 = *(v3 - 232);
  *(v0 + v1 - 1700953762) = v7 ^ 0x31;
  *(v0 + ((((v2 - 2114800467) & 0x7E0D43FF) - 1700953285) ^ (v2 + 1655516954) & 0x9D52CDFE) + v1) = BYTE1(v7) ^ 0x8B;
  return (*(v6 + 8 * ((205 * (v1 == 1700953776)) ^ v2)))(v5);
}

uint64_t sub_1000657B0@<X0>(int a1@<W8>)
{
  v7 = v2 + v4 + v3;
  *(v7 + 2) = BYTE2(a1) ^ 0x32;
  *(v7 + 3) = HIBYTE(a1) ^ 0xAF;
  return (*(v6 + 8 * ((171 * ((((v5 + 426) ^ (v4 == v1 + 254)) & 1) == 0)) ^ v5)))();
}

uint64_t sub_100065808@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 4) = BYTE4(a1) ^ 0xEB;
  *(v1 + 5) = BYTE5(a1) ^ 0xA0 ^ (75 * ((v2 | 0x88) ^ 0x91));
  return (*(v4 + 8 * ((125 * (v3 == ((v2 | 0x888) ^ 0xF91u) + 241 + 1700953520)) ^ (v2 | 0x888))))();
}

uint64_t sub_100065874@<X0>(unint64_t a1@<X8>)
{
  v6 = v2 + v4 + v3;
  *(v6 + 6) = BYTE6(a1) ^ 0xDB;
  *(v6 + 7) = (a1 >> (((-70 * (v1 ^ 0x28)) ^ 0xA6u) + 60)) ^ 0x1A;
  return (*(v5 + 8 * (v1 ^ (164 * (v4 != 1700953770)))))();
}

uint64_t sub_100065A0C()
{
  v1 = STACK[0x9C8];
  v2 = (STACK[0x9C8] + 7221) | 0x508;
  STACK[0x1C60] = *(v0 + 8 * STACK[0x9C8]);
  return (*(v0 + 8 * ((v2 ^ 0x2D69) + v1)))();
}

uint64_t sub_100065A50()
{
  STACK[0x1E70] = v1;
  STACK[0x1CF8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1621 ^ (v0 + 4261))))();
}

uint64_t sub_100065AC8()
{
  v2 = STACK[0x24B0];
  LODWORD(STACK[0x372C]) = STACK[0x2AB8];
  return (*(v1 + 8 * (((v2 == 0x1138F6A92264F486) * ((v0 ^ 0x2C8) - 6522)) ^ v0)))();
}

uint64_t sub_100065B28()
{
  v3 = *(v1 - 0x1138F6A92264F47ELL);
  STACK[0x31B8] = v3;
  return (*(v2 + 8 * ((88 * (((v3 == 0x5A0411E37F4B9882) ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_100065C44()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3B94)))(32);
  v3 = STACK[0x1708];
  STACK[0x2368] = v2 + 0x51CE20ABD81C933BLL;
  return (*(v3 + 8 * (((v2 != 0) * (((v0 - 2555) ^ 0x1CF7) + ((v0 - 2555) | 0x1064) - 11544)) ^ v0)))();
}

uint64_t sub_100065CC4(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  STACK[0x3730] = v3;
  *(a1 + 16) = v1 + 540060154;
  v6 = (*(v4 + 8 * (v2 ^ 0x3D6C)))(v1 - 1443461287 + ((v2 - 733739758) & 0x2BBBFE7Eu) - 166);
  v7 = STACK[0x1708];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 == 0) | (2 * (v6 == 0))) ^ v2)))();
}

uint64_t sub_100065EE8()
{
  v2 = STACK[0x2520];
  LODWORD(STACK[0x3CF4]) = STACK[0x2814];
  return (*(v1 + 8 * (((v2 == 0x1138F6A92264F486) * (((v0 - 1574) ^ 0x2C37) - 10063)) ^ v0)))();
}

uint64_t sub_100065F48()
{
  v3 = *(v1 - 0x1138F6A92264F47ELL);
  STACK[0x2680] = v3;
  return (*(v2 + 8 * (((((v3 == 0x5A0411E37F4B9882) ^ (5 * (v0 ^ 0xCB))) & 1) * ((3118 * (v0 ^ 0x281C)) ^ 0x1869)) ^ v0)))();
}

uint64_t sub_100066064()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xF54)))(32);
  v3 = STACK[0x1708];
  STACK[0x21D8] = v2 + 0x51CE20ABD81C933BLL;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 - 1432061911) & 0x155B797F ^ 0x184D)) ^ v0)))();
}

uint64_t sub_100066138()
{
  v3 = (*(v2 + 8 * ((v1 - 8042) ^ 0x2F02)))();
  v4 = STACK[0x1708];
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * (v1 - 8042)))(v3);
}

uint64_t sub_1000661B8()
{
  v1 = STACK[0x9C0];
  v2 = STACK[0x9C0] ^ 0x2146;
  STACK[0x1C60] = *(v0 + 8 * STACK[0x9C0]);
  return (*(v0 + 8 * (v1 - 7456 + v2)))();
}

uint64_t sub_100066260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x9B8];
  v6 = (STACK[0x9B8] + 180) | 0x2084;
  STACK[0x1C60] = *(v4 + 8 * STACK[0x9B8]);
  return (*(v4 + 8 * ((v6 - 7200) ^ v5)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_100066364@<X0>(int a1@<W8>)
{
  v3 = *(v1 - 0x1138F6A92264F47ELL);
  STACK[0x2758] = v3;
  return (*(v2 + 8 * (((((14 * ((2 * a1) ^ 0xD97) - 4448) | 0x820) ^ 0x78D) * (v3 == 0x5A0411E37F4B9882)) ^ (2 * a1))))();
}

uint64_t sub_100066428()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x25C0)))(32);
  v3 = STACK[0x1708];
  STACK[0x3080] = v2 + 0x51CE20ABD81C933BLL;
  return (*(v3 + 8 * (((v2 != 0) * ((v0 ^ 0x2BDE) + v0 + 3133 - 16401)) ^ v0)))();
}

uint64_t sub_100066494(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = v1;
  *(a1 + 16) = 1983515363;
  v5 = (*(v3 + 8 * (v2 ^ 0xE1E)))(26);
  v6 = STACK[0x1708];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * (((v5 != 0) * (((v2 ^ 0x2122) + 4545) ^ 0x185E)) | v2)))();
}

uint64_t sub_1000665AC()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xEB4)))();
  v4 = STACK[0x1708];
  *(v0 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_1000666F8()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x3DC5)))();
  v4 = STACK[0x1708];
  *(v1 - 0x51CE20ABD81C9323) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000667B4@<X0>(int a1@<W8>)
{
  v3 = a1 & 0x152793AD;
  v4 = (*(v2 + 8 * ((a1 & 0x152793ADu) + 9990)))(v1 - 0x51CE20ABD81C933BLL);
  return (*(STACK[0x1708] + 8 * v3))(v4);
}

uint64_t sub_100066810(uint64_t a1)
{
  *a1 = 0x51CE20ABD81C933BLL;
  *(a1 + 8) = 0x51CE20ABD81C933BLL;
  STACK[0x3CF8] = v3;
  *(a1 + 16) = v1 + 540060154;
  v6 = (*(v4 + 8 * ((v2 - 2121) ^ 0x370D)))((v1 - 1443455183));
  v7 = STACK[0x1708];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 != 0) * ((v2 - 322) ^ 0x25D8)) ^ (v2 - 2121))))();
}

uint64_t sub_100066A6C()
{
  v2 = v0 - 2205;
  v3 = (*(v1 + 8 * (v0 + 4269)))();
  return (*(STACK[0x1708] + 8 * v2))(v3);
}

uint64_t sub_100066ADC()
{
  v1 = LODWORD(STACK[0x12EC]) ^ 0x3008;
  v2 = 3386 * (LODWORD(STACK[0x12EC]) ^ 0x30FE);
  STACK[0x2F30] = *(v0 + 8 * v1);
  return (*(v0 + 8 * ((v2 - 651) ^ v1)))();
}

uint64_t sub_100066B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x1C50];
  STACK[0x4510] = STACK[0x1C50];
  v10 = *(v9 - 0x1138F6A92264F472);
  if (v10 == 408423770)
  {
    return (*(v8 + 8 * (a8 - 6013 + 43 * (a8 ^ 0x185B) - 50)))(2086113709, &STACK[0x2A4C], &STACK[0x21B0]);
  }

  if (v10 == 408423771)
  {
    LODWORD(STACK[0x44C8]) = STACK[0x574];
    LODWORD(STACK[0x44CC]) = STACK[0x570];
    v11 = STACK[0x1D98];
    STACK[0x44D0] = STACK[0x1D98];
    STACK[0x4188] = v11;
    LOBYTE(STACK[0x4187]) = 0;
    STACK[0x4178] = 32;
    STACK[0x4170] = *(v8 + 8 * SLODWORD(STACK[0x56C]));
    return (*(v8 + 8 * (a8 ^ 0x3166)))();
  }

  else
  {
    LODWORD(STACK[0x2C68]) = 68545952;
    STACK[0x23E8] = *(v8 + 8 * (a8 - 5149));
    return (*(v8 + 8 * ((a8 - 5149) ^ 0x996 ^ ((a8 - 6204) | 0x880))))();
  }
}

uint64_t sub_100067D18()
{
  v2 = STACK[0x1470];
  STACK[0x13C0] = STACK[0x1470] - 15;
  STACK[0x13D0] = v2 - 7;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100067EE8@<X0>(int a1@<W0>, int a2@<W2>, unint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, int a6@<W8>)
{
  STACK[0x1490] = a3;
  STACK[0x18F0] = *(a3 - 0x51CE20ABD81C9323);
  LODWORD(STACK[0x14A0]) = a2;
  STACK[0x18B0] = ((2 * (a2 - 385604356)) & 0x16CE2F4C2) + ((a2 - 385604356) ^ 0x3F6DF5DFB6717A61) - 0x3F6DF5DFB6717A61;
  LODWORD(STACK[0x1460]) = v6;
  LODWORD(STACK[0x1450]) = a4;
  v8 = *(v7 + 8 * ((((((a4 + v6 + 37852003) < 8) ^ (a6 - 105 + a6 + 33 + 1)) & 1) * a1) ^ a6));
  LODWORD(STACK[0x1480]) = a5;
  return v8(0x8D2F9998CE0730C9);
}

uint64_t sub_100068130(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v17 = *(v16 + 8 * ((81 * (v9 < ((8 * v8) ^ 0xA228) + ((v8 + 706) ^ 0xFFFFE836))) ^ v8));
  *&STACK[0x1840] = vdupq_n_s64(a5);
  *&STACK[0x17B0] = vdupq_n_s64(v15);
  *&STACK[0x17A0] = vdupq_n_s64(v13);
  *&STACK[0x1790] = vdupq_n_s64(v14);
  *&STACK[0x1860] = vdupq_n_s64(v12);
  *&STACK[0x1780] = vdupq_n_s64(v10);
  *&STACK[0x17D0] = vdupq_n_s64(a4);
  *&STACK[0x1850] = vdupq_n_s64(v7);
  *&STACK[0x1880] = vdupq_n_s64(0x5049DE6DBE28F8E9uLL);
  *&STACK[0x17F0] = vdupq_n_s64(0x1329D67F5E8BA89AuLL);
  *&STACK[0x17E0] = vdupq_n_s64(0xD699DB6D7570100CLL);
  *&STACK[0x1800] = vdupq_n_s64(0x14B312494547F7FAuLL);
  *&STACK[0x1810] = vdupq_n_s64(0x1B72AFF70A6DE3F8uLL);
  *&STACK[0x1900] = vdupq_n_s64(a1);
  *&STACK[0x1890] = vdupq_n_s64(v11);
  *&STACK[0x18A0] = vdupq_n_s64(a7);
  return v17();
}

uint64_t sub_100068248(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, int a5)
{
  v8 = *(v7 + 8 * v5);
  LODWORD(STACK[0x1820]) = v6 & 0xFFFFFFF8;
  return v8(STACK[0x18B0], (-8 - a5), 11 * (v5 ^ 0xEDDu), a1, a2, a3, *&STACK[0x1650], *&STACK[0x1690]);
}

uint64_t sub_1000682DC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, int64x2_t a10, double a11, int8x16_t a12, int8x16_t a13, int8x16_t a14)
{
  v26 = (v23 + a2 + 8);
  v27.i64[0] = v20 + v26;
  v27.i64[1] = v20 + (v22 + a2 + 8);
  v28.i64[0] = v20 + v21 + a2 + (a3 ^ (v15 + 1053)) + 8;
  v29.i64[0] = v20 + (a8 + a2 + 8);
  v29.i64[1] = v20 + (a7 + a2 + 8);
  v30.i64[0] = v20 + (a5 + a2 + 8);
  v28.i64[1] = v20 + (a6 + a2 + 8);
  *&STACK[0x1830] = v28;
  v30.i64[1] = v20 + (a4 + a2 + 8);
  v31 = STACK[0x1708];
  v32 = vandq_s8(v30, *&STACK[0x1940]);
  v33 = vandq_s8(v29, *&STACK[0x1940]);
  v34 = vandq_s8(v27, *&STACK[0x1940]);
  v35 = vandq_s8(v28, *&STACK[0x1940]);
  v36 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v36, v36), *&STACK[0x1890]), *&STACK[0x18A0]), v36);
  v41 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v39, v39), *&STACK[0x1890]), *&STACK[0x18A0]), v39);
  v42 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v38, v38), *&STACK[0x1890]), *&STACK[0x18A0]), v38);
  v43 = vaddq_s64(v41, a10);
  v44 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v37, v37), *&STACK[0x1890]), *&STACK[0x18A0]), v37), a10);
  v45 = veorq_s8(v44, v24);
  v46 = veorq_s8(v43, v24);
  v47 = veorq_s8(v43, a14);
  v48 = veorq_s8(v44, a14);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v47), a13);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48), a13);
  v53 = veorq_s8(v52, v51);
  v54 = veorq_s8(v49, v50);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v54);
  v57 = veorq_s8(vaddq_s64(v55, v53), *&STACK[0x16B0]);
  v58 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v59 = veorq_s8(v56, *&STACK[0x16B0]);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v58);
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65.i64[0] = -1;
  v65.i64[1] = -1;
  v66 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v64, *&STACK[0x17B0]), *&STACK[0x17A0]), veorq_s8(vandq_s8(v64, v25), *&STACK[0x1840])), v65), *&STACK[0x1790]);
  v67 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v63, *&STACK[0x17B0]), *&STACK[0x17A0]), veorq_s8(vandq_s8(v63, v25), *&STACK[0x1840])), v65), *&STACK[0x1790]);
  v68 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, *&STACK[0x1860]), vorrq_s8(v72, *&STACK[0x1780])), *&STACK[0x1780]), *&STACK[0x17D0]);
  v75 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, *&STACK[0x1860]), vorrq_s8(v73, *&STACK[0x1780])), *&STACK[0x1780]), *&STACK[0x17D0]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v78 = veorq_s8(v74, v75);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), *&STACK[0x1850]), v80), *&STACK[0x1880]), *&STACK[0x17F0]);
  v82 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), *&STACK[0x1850]), v79), *&STACK[0x1880]), *&STACK[0x17F0]);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v81, v82);
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), a12);
  v89 = veorq_s8(v87, a12);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v91 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vdupq_n_s64(v16);
  v94 = vaddq_s64(v40, a10);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91);
  v96 = vaddq_s64(v92, v90);
  v133.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), *&STACK[0x17E0]), v95), *&STACK[0x1800]), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v93)));
  v133.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), *&STACK[0x17E0]), v96), *&STACK[0x1800]), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v93)));
  v97 = veorq_s8(v94, v24);
  v98 = veorq_s8(v94, *&STACK[0x1900]);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), a13);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), *&STACK[0x16B0]);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v103, *&STACK[0x17B0]), *&STACK[0x17A0]), veorq_s8(vandq_s8(v103, v25), *&STACK[0x1840])), v65), *&STACK[0x1790]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, *&STACK[0x1860]), vorrq_s8(v106, *&STACK[0x1780])), *&STACK[0x1780]), *&STACK[0x17D0]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), *&STACK[0x1850]), v109), *&STACK[0x1880]), *&STACK[0x17F0]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), a12);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL)));
  v114 = vaddq_s64(v42, a10);
  v133.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), *&STACK[0x17E0]), v113), *&STACK[0x1800]), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v93)));
  v115 = veorq_s8(v114, v24);
  v116 = veorq_s8(v114, *&STACK[0x1900]);
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), a13);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), *&STACK[0x16B0]);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v121, *&STACK[0x17B0]), *&STACK[0x17A0]), veorq_s8(vandq_s8(v121, v25), *&STACK[0x1840])), v65), *&STACK[0x1790]);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, *&STACK[0x1860]), vorrq_s8(v124, *&STACK[0x1780])), *&STACK[0x1780]), *&STACK[0x17D0]);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x1850]), v127), *&STACK[0x1880]), *&STACK[0x17F0]);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), a12);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL)));
  v133.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), *&STACK[0x17E0]), v131), *&STACK[0x1800]), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1830], 3uLL), v93)));
  *(v19 + v26 + a1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v133, *&STACK[0x15C0])), *(v20 + v26 - 7));
  return (*(v31 + 8 * (((v18 == a2) * v17) ^ v14)))();
}

uint64_t sub_100068A38(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = *(v9 + 8 * (a8 - 265));
  LODWORD(STACK[0x1400]) = v8 & 0xFFFFFFF0;
  v13 = LODWORD(STACK[0x1450]) + LODWORD(STACK[0x1460]);
  LODWORD(STACK[0x1540]) = v13 + 37851992;
  LODWORD(STACK[0x1530]) = v13 + 37851993;
  LODWORD(STACK[0x14C0]) = v13 + 37851994;
  LODWORD(STACK[0x14B0]) = v13 + 37851996;
  *&STACK[0x1710] = v10;
  *&STACK[0x15B0] = v11;
  *&STACK[0x1600] = a2;
  return v12(STACK[0x18B0], (v13 + 37845448), v8, -(v8 & 0xFFFFFFF0), (v13 + 37852000));
}

uint64_t sub_100068AF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W8>, int8x16_t a8@<Q0>)
{
  v24 = (v11 + v12 + 16);
  v25.i64[0] = v14 + v24;
  v25.i64[1] = v14 + a2 + v12 + (a5 ^ v9) + 16;
  v26 = v25;
  *&STACK[0x1750] = v25;
  v25.i64[0] = v14 + (a4 + v12 + 16);
  v25.i64[1] = v14 + (v8 + v12 + 16);
  v27 = v25;
  *&STACK[0x1740] = v25;
  v28.i64[0] = v14 + (a7 + v12 + 16);
  v28.i64[1] = v14 + (v23 + v12 + 16);
  v29.i64[0] = v14 + (LODWORD(STACK[0x14B0]) + v12 + 16);
  v29.i64[1] = v14 + (v17 + v12 + 16);
  v25.i64[0] = v14 + (LODWORD(STACK[0x14C0]) + v12 + 16);
  v25.i64[1] = v14 + (LODWORD(STACK[0x1530]) + v12 + 16);
  *&STACK[0x1830] = v25;
  v25.i64[0] = v14 + (LODWORD(STACK[0x1540]) + v12 + 16);
  v25.i64[1] = v14 + (v22 + v12 + 16);
  *&STACK[0x1820] = v25;
  v25.i64[0] = v14 + (v21 + v12 + 16);
  v25.i64[1] = v14 + (v20 + v12 + 16);
  *&STACK[0x1760] = v25;
  v30 = vandq_s8(v29, *&STACK[0x1940]);
  v31 = vandq_s8(v28, *&STACK[0x1940]);
  v32 = vandq_s8(v27, *&STACK[0x1940]);
  v33 = vandq_s8(v26, *&STACK[0x1940]);
  v34 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v38 = *&STACK[0x1890];
  *&STACK[0x1770] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v34, v34), *&STACK[0x1890]), a8), v34);
  v39 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v35, v35), v38), a8), v35);
  v40 = *&STACK[0x1600];
  v41 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v37, v37), v38), a8), v37), *&STACK[0x1600]);
  v42 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v36, v36), v38), a8), v36), *&STACK[0x1600]);
  v43 = *&STACK[0x1710];
  v44 = veorq_s8(v42, *&STACK[0x1710]);
  v45 = veorq_s8(v41, *&STACK[0x1710]);
  v46 = veorq_s8(v41, *&STACK[0x1900]);
  v47 = veorq_s8(v42, *&STACK[0x1900]);
  v48 = *&STACK[0x1690];
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), *&STACK[0x1690]);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), *&STACK[0x1690]);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = *&STACK[0x16B0];
  v57 = veorq_s8(vaddq_s64(v54, v52), *&STACK[0x16B0]);
  v58 = veorq_s8(v55, *&STACK[0x16B0]);
  v59 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v61 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60);
  v63 = vaddq_s64(v61, v59);
  v64 = *&STACK[0x17A0];
  v65.i64[0] = -1;
  v65.i64[1] = -1;
  v66 = *&STACK[0x1790];
  v67 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v63, *&STACK[0x17B0]), *&STACK[0x17A0]), veorq_s8(vandq_s8(v63, *&STACK[0x15B0]), *&STACK[0x1840])), v65), *&STACK[0x1790]);
  v68 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v62, *&STACK[0x17B0]), *&STACK[0x17A0]), veorq_s8(vandq_s8(v62, *&STACK[0x15B0]), *&STACK[0x1840])), v65), *&STACK[0x1790]);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v71 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = *&STACK[0x1860];
  v75 = *&STACK[0x1780];
  v76 = *&STACK[0x17D0];
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, *&STACK[0x1860]), vorrq_s8(v72, *&STACK[0x1780])), *&STACK[0x1780]), *&STACK[0x17D0]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, *&STACK[0x1860]), vorrq_s8(v73, *&STACK[0x1780])), *&STACK[0x1780]), *&STACK[0x17D0]);
  v79 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v80);
  v84 = *&STACK[0x1850];
  v85 = *&STACK[0x1880];
  v86 = *&STACK[0x17F0];
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), *&STACK[0x1850]), v83), *&STACK[0x1880]), *&STACK[0x17F0]);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), *&STACK[0x1850]), v82), *&STACK[0x1880]), *&STACK[0x17F0]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v90 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v90);
  v93 = *&STACK[0x1650];
  v94 = veorq_s8(vaddq_s64(v91, v89), *&STACK[0x1650]);
  v95 = veorq_s8(v92, *&STACK[0x1650]);
  v96 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v98 = vdupq_n_s64(v10);
  v99 = vaddq_s64(v39, *&STACK[0x1600]);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), veorq_s8(v94, v96));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v97);
  v102 = *&STACK[0x17E0];
  v103 = *&STACK[0x1800];
  v104 = *&STACK[0x1810];
  v214.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), *&STACK[0x17E0]), v100), *&STACK[0x1800]), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v98)));
  v214.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x17E0]), v101), *&STACK[0x1800]), *&STACK[0x1810]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v98)));
  v105 = veorq_s8(v99, *&STACK[0x1710]);
  v106 = veorq_s8(v99, *&STACK[0x1900]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x1690]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), *&STACK[0x16B0]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = *&STACK[0x15B0];
  v113 = *&STACK[0x1840];
  v114 = *&STACK[0x17B0];
  v115 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v111, *&STACK[0x17B0]), *&STACK[0x17A0]), veorq_s8(vandq_s8(v111, *&STACK[0x15B0]), *&STACK[0x1840])), v65), *&STACK[0x1790]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, *&STACK[0x1860]), vorrq_s8(v117, *&STACK[0x1780])), *&STACK[0x1780]), *&STACK[0x17D0]);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), *&STACK[0x1850]), v120), *&STACK[0x1880]), *&STACK[0x17F0]);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), *&STACK[0x1650]);
  v124.i64[0] = v14 + (v19 + v12 + 16);
  v124.i64[1] = v14 + (v18 + v12 + 16);
  *&STACK[0x1730] = v124;
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL)));
  v126 = vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), v102), v125);
  v127 = *&STACK[0x1940];
  v128 = vandq_s8(v124, *&STACK[0x1940]);
  v129 = vaddq_s64(*&STACK[0x1770], v40);
  v130 = vshlq_n_s64(*&STACK[0x1740], 3uLL);
  *&STACK[0x1720] = v98;
  v214.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v126, v103), v104), vnegq_s64(vandq_s8(v130, v98)));
  v131 = veorq_s8(v129, v43);
  v132 = veorq_s8(v129, *&STACK[0x1900]);
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v48);
  v134 = v48;
  v135 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v135), v56);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(vandq_s8(v138, v112), v113);
  v140 = v114;
  v141 = veorq_s8(vandq_s8(v138, v114), v64);
  v142 = v64;
  v143 = veorq_s8(vaddq_s64(vaddq_s64(v141, v139), v65), v66);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v145, v74), vorrq_s8(v145, v75)), v75), v76);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v84), v148), v85), v86);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v93);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = *&STACK[0x1760];
  v155 = vandq_s8(*&STACK[0x1760], v127);
  v156 = vaddq_s64(v153, v152);
  v157 = vandq_s8(*&STACK[0x1820], v127);
  v214.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), v102), v156), v103), v104), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1750], 3uLL), v98)));
  v158 = vandq_s8(*&STACK[0x1830], v127);
  v159 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v163 = *&STACK[0x1890];
  *&STACK[0x1750] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v159, v159), *&STACK[0x1890]), *&STACK[0x18A0]), v159);
  v164 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v160, v160), v163), *&STACK[0x18A0]), v160);
  v165 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v162, v162), v163), *&STACK[0x18A0]), v162), v40);
  v166 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v161, v161), v163), *&STACK[0x18A0]), v161), v40);
  v167 = *&STACK[0x17C0];
  *&STACK[0x1770] = vqtbl4q_s8(v214, *&STACK[0x17C0]);
  v214.val[0] = veorq_s8(v166, v43);
  v214.val[1] = veorq_s8(v165, v43);
  v168 = veorq_s8(v165, *&STACK[0x1900]);
  v214.val[2] = veorq_s8(v166, *&STACK[0x1900]);
  v214.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v168), v134);
  v214.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL), v214.val[2]), v134);
  v169 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v170 = veorq_s8(v214.val[0], vsraq_n_u64(vshlq_n_s64(v214.val[2], 3uLL), v214.val[2], 0x3DuLL));
  v214.val[2] = veorq_s8(v214.val[1], v169);
  v171 = vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL);
  v214.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v214.val[2]);
  v214.val[1] = veorq_s8(vaddq_s64(v171, v170), v56);
  v172 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v214.val[0] = veorq_s8(v214.val[0], v56);
  v173 = veorq_s8(v214.val[0], vsraq_n_u64(vshlq_n_s64(v214.val[2], 3uLL), v214.val[2], 0x3DuLL));
  v214.val[2] = veorq_s8(v214.val[1], v172);
  v174 = vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL);
  v214.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v214.val[2]);
  v214.val[1] = vaddq_s64(v174, v173);
  v175 = v112;
  v214.val[1] = vaddq_s64(veorq_s8(vandq_s8(v214.val[1], v140), v142), veorq_s8(vandq_s8(v214.val[1], v112), *&STACK[0x1840]));
  v176 = veorq_s8(vandq_s8(v214.val[0], v112), *&STACK[0x1840]);
  v177 = v142;
  v214.val[0] = vaddq_s64(veorq_s8(vandq_s8(v214.val[0], v140), v142), v176);
  v176.i64[0] = -1;
  v176.i64[1] = -1;
  v142.i64[0] = -1;
  v142.i64[1] = -1;
  v214.val[1] = veorq_s8(vaddq_s64(v214.val[1], v176), v66);
  v214.val[0] = veorq_s8(vaddq_s64(v214.val[0], v176), v66);
  v178 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v179 = veorq_s8(v214.val[0], vsraq_n_u64(vshlq_n_s64(v214.val[2], 3uLL), v214.val[2], 0x3DuLL));
  v214.val[2] = veorq_s8(v214.val[1], v178);
  v180 = vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL);
  v214.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v214.val[2]);
  v214.val[1] = vaddq_s64(v180, v179);
  v214.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v214.val[0], *&STACK[0x1860]), vorrq_s8(v214.val[0], v75)), v75), v76);
  v214.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v214.val[1], *&STACK[0x1860]), vorrq_s8(v214.val[1], v75)), v75), v76);
  v181 = veorq_s8(v214.val[1], vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v214.val[2] = veorq_s8(v214.val[0], vsraq_n_u64(vshlq_n_s64(v214.val[2], 3uLL), v214.val[2], 0x3DuLL));
  v214.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL), v214.val[2]);
  v214.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v181);
  v214.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v214.val[1], v214.val[1]), *&STACK[0x1850]), v214.val[1]), *&STACK[0x1880]), v86);
  v214.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v214.val[0], v214.val[0]), *&STACK[0x1850]), v214.val[0]), *&STACK[0x1880]), v86);
  v182 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v183 = veorq_s8(v214.val[0], vsraq_n_u64(vshlq_n_s64(v214.val[2], 3uLL), v214.val[2], 0x3DuLL));
  v214.val[2] = veorq_s8(v214.val[1], v182);
  v184 = vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL);
  v214.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v214.val[2]);
  v214.val[1] = veorq_s8(vaddq_s64(v184, v183), v93);
  v185 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v214.val[0] = veorq_s8(v214.val[0], v93);
  v186 = veorq_s8(v214.val[0], vsraq_n_u64(vshlq_n_s64(v214.val[2], 3uLL), v214.val[2], 0x3DuLL));
  v214.val[2] = veorq_s8(v214.val[1], v185);
  v187 = vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL);
  v214.val[0] = vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL);
  v214.val[1] = vaddq_s64(v164, v40);
  v214.val[0] = vaddq_s64(v214.val[0], v214.val[2]);
  v188 = vaddq_s64(v187, v186);
  v213.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v214.val[0], v214.val[0]), v102), v214.val[0]), v103), v104), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1730], 3uLL), *&STACK[0x1720])));
  v213.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), v102), v188), v103), v104), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), *&STACK[0x1720])));
  v189 = veorq_s8(v214.val[1], v43);
  v214.val[0] = veorq_s8(v214.val[1], *&STACK[0x1900]);
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v214.val[0]), v134);
  v214.val[0] = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v214.val[0]), v56);
  v214.val[0] = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v214.val[0]);
  v193 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v192, v140), v177), veorq_s8(vandq_s8(v192, v175), *&STACK[0x1840])), v142), v66);
  v214.val[0] = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v214.val[0]);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v194, *&STACK[0x1860]), vorrq_s8(v194, v75)), v75), v76);
  v214.val[0] = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v214.val[0]);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), *&STACK[0x1850]), v196), *&STACK[0x1880]), v86);
  v214.val[0] = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v214.val[0]), v93);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL)));
  v214.val[0] = vaddq_s64(*&STACK[0x1750], v40);
  v213.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v199, v199), v102), v199), v103), v104), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1820], 3uLL), *&STACK[0x1720])));
  v200 = veorq_s8(v214.val[0], v43);
  v214.val[0] = veorq_s8(v214.val[0], *&STACK[0x1900]);
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v214.val[0]), v134);
  v214.val[0] = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v214.val[0]), v56);
  v214.val[0] = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v214.val[0]);
  v204 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v203, v140), v177), veorq_s8(vandq_s8(v203, v175), *&STACK[0x1840])), v142), v66);
  v214.val[0] = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v214.val[0]);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205, *&STACK[0x1860]), vorrq_s8(v205, v75)), v75), v76);
  v214.val[0] = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v214.val[0]);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207, v207), *&STACK[0x1850]), v207), *&STACK[0x1880]), v86);
  v214.val[0] = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v214.val[0]), v93);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL)));
  v213.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v210, v210), v102), v210), v103), v104), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x1830], 3uLL), *&STACK[0x1720])));
  v211 = *&STACK[0x1770];
  v211.i64[1] = vqtbl4q_s8(v213, v167).u64[0];
  v214.val[0] = vrev64q_s8(v211);
  *(v13 + v24 + a1) = veorq_s8(vextq_s8(v214.val[0], v214.val[0], 8uLL), *(v14 + v24 - 15));
  return (*(v16 + 8 * (((a3 == v12) * v15) ^ a6)))(*&STACK[0x18A0]);
}

uint64_t sub_100069930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, int a7@<W8>)
{
  v23 = (a7 + a6);
  v24 = STACK[0x18F0] + v23;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v14 + 2 * v25) & a5) - v25 + v8;
  v27 = v26 ^ v11;
  v28 = v26 ^ a1;
  v29 = (__ROR8__(v27, 8) + v28) ^ a4;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x96518B1852248A0DLL;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (((v32 + v33) & v21 ^ v19) + ((v32 + v33) & v10 ^ a3) - 1) ^ v20;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v12 - ((v36 + v35) | v12) + ((v36 + v35) | v17)) ^ a2;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = ((v7 & (2 * (v39 + v38))) - (v39 + v38) + 0x5049DE6DBE28F8E9) ^ 0x1329D67F5E8BA89ALL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v15;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  *(v18 + v23 + STACK[0x18B0]) = (((((2 * (v44 + v43)) | 0xD699DB6D7570100CLL) - (v44 + v43) + 0x14B312494547F7FALL) ^ 0x1B72AFF70A6DE3F8) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(v22 + 8 * (((a7 - 1 == v13) * v16) ^ v9)))();
}

uint64_t sub_100069B50@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  v54 = (((2 * v52) & 0x7ADF3BDB8D7F3FFELL) + (v52 ^ 0x3D6F9DEDC6BF9FFFLL) + a1 - 0x3D6F9DEDC6BF9FFFLL);
  v55 = (*v54 << (((a52 + 26) & 0x7Eu) - 70)) | (v54[1] << 48) | (v54[2] << 40) | (v54[3] << 32) | (v54[4] << 24) | (v54[5] << 16) | (v54[6] << 8) | v54[7];
  STACK[0x1D58] = v55 + 0x4DC5C22F5BDB8B24 - ((2 * v55) & 0x9B8B845EB7B71648);
  return (*(v53 + 8 * a52))();
}

uint64_t sub_100069C84()
{
  LODWORD(STACK[0x2F8C]) = v1;
  STACK[0x1A88] = STACK[0x3000];
  STACK[0x23E8] = *(v2 + 8 * (v0 - 5158));
  return (*(v2 + 8 * ((((v0 - 91094423) & 0x56DEDDA) - 1877) ^ (v0 - 5158))))();
}

uint64_t sub_100069D88@<X0>(int a1@<W8>)
{
  v7 = *v5;
  STACK[0x2CC8] = *(v6 + 8 * v3);
  STACK[0x2CB8] = v7;
  LODWORD(STACK[0x2024]) = v4;
  STACK[0x1D78] = v1;
  LODWORD(STACK[0x2BEC]) = a1;
  return (*(v6 + 8 * ((219 * (((v2 - 1) ^ (v1 == 0)) & 1)) ^ (v2 - 4399))))();
}

uint64_t sub_100069EAC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2CAC]) = v2;
  v4 = a1 + 545327819 + ((2 * v1) ^ 0x5182);
  v5 = v4 < 0x7FF23450;
  v6 = v2 + 1803721147 < v4;
  if ((v2 + 1803721147) < 0x7FF23450 != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((3222 * v6) ^ v1)))();
}

uint64_t sub_100069F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v9 + 40 * v8 + 28);
  switch(v11)
  {
    case 1:
      STACK[0x1FD0] = *(v10 + 8 * SLODWORD(STACK[0x61C]));
      return (*(v10 + 8 * (a8 - 2668)))();
    case 3:
      return (*(v10 + 8 * (((*(v9 + 40 * v8 + 16) == 0) * (STACK[0x810] + ((a8 - 4330) ^ 0xFFFFF8A2))) ^ (a8 + 2029))))();
    case 2:
      return (*(v10 + 8 * (((STACK[0x2CB8] == 0x5A0411E37F4B9882) * (LODWORD(STACK[0x818]) ^ 0xA2)) ^ (a8 + 3161))))();
    default:
      return sub_100069CEC();
  }
}

uint64_t sub_10006A1B0()
{
  v1 = STACK[0x810];
  STACK[0x2F30] = *(v0 + 8 * STACK[0x810]);
  return (*(v0 + 8 * (v1 ^ 0x17C2)))();
}

uint64_t sub_10006A3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v9 = a8 + 2867;
  v10 = STACK[0x24B0];
  STACK[0x2E20] = *(v8 + 8 * a8);
  v11 = *(v8 + 8 * (a8 ^ 0x846 ^ (a8 + 2867)));
  LODWORD(STACK[0x4474]) = v9;
  STACK[0x4478] = &STACK[0x2C5C];
  STACK[0x4480] = v10;
  STACK[0x4488] = STACK[0x648];
  LODWORD(STACK[0x4494]) = 1443455199;
  return v11(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10006A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x618];
  v9 = 15 * (LODWORD(STACK[0x618]) ^ 0xBC);
  STACK[0x1DD8] = *(v7 + 8 * SLODWORD(STACK[0x618]));
  return (*(v7 + 8 * ((v9 - 6038) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10006A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x258C]) = v8;
  STACK[0x1CF8] = *(v9 + 8 * (v7 - 5233));
  return (*(v9 + 8 * (v7 - 9901 + ((v7 - 2060796035) & 0x7AD53CBF))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10006A6B8()
{
  v1 = STACK[0x9A4];
  *(STACK[0x2EE0] - 0x510808E226CB1488) = ((LODWORD(STACK[0x9A4]) - 1084216545) & 0x409FCEEE) + *(STACK[0x2EE0] - 0x510808E226CB1488) - 581;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10006A704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v9 = 488 * (a8 ^ 0x241);
  v10 = STACK[0x2520];
  STACK[0x2E20] = *(v8 + 8 * a8);
  v11 = *(v8 + 8 * ((v9 ^ 0x9AD) + a8));
  LODWORD(STACK[0x4474]) = v9;
  STACK[0x4478] = &STACK[0x1C20];
  STACK[0x4480] = v10;
  STACK[0x4488] = STACK[0x650];
  LODWORD(STACK[0x4494]) = 1443455199;
  return v11(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10006A790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x1A2C]) = v8;
  STACK[0x1CF8] = *(v9 + 8 * v7);
  return (*(v9 + 8 * (v7 - 4696 + (v7 ^ 0x1092))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10006A880@<X0>(int a1@<W8>)
{
  v2 = (a1 + 508) | 0x910;
  v3 = STACK[0x2BA8];
  v4 = *(v1 + 8 * a1);
  v5 = *(v1 + 8 * (a1 + v2 - 2153));
  STACK[0x2E20] = v4;
  LODWORD(STACK[0x4474]) = v2;
  STACK[0x4478] = &STACK[0x2690];
  STACK[0x4480] = v3;
  STACK[0x4488] = STACK[0x7F8];
  LODWORD(STACK[0x4494]) = 1443455193;
  return v5();
}

uint64_t sub_10006A9E8()
{
  v1 = STACK[0x80C];
  v2 = 3 * (LODWORD(STACK[0x80C]) ^ 0x8FA);
  STACK[0x1DD8] = *(v0 + 8 * SLODWORD(STACK[0x80C]));
  return (*(v0 + 8 * ((v2 ^ 0x1C4E) + v1)))();
}

uint64_t sub_10006AA28@<X0>(int a1@<W8>)
{
  v2 = (a1 - 1246712451) & 0x4A4F5D7D;
  v3 = STACK[0x19C0];
  v4 = STACK[0x2564];
  STACK[0x2E20] = *(v1 + 8 * a1);
  v5 = *(v1 + 8 * (a1 + 1246));
  LODWORD(STACK[0x4474]) = v2;
  STACK[0x4478] = &STACK[0x2198];
  STACK[0x4480] = v3;
  STACK[0x4488] = STACK[0x800];
  LODWORD(STACK[0x4494]) = (v4 ^ 0xDE9979DD) + 2003822332 + ((v2 ^ 0xBD32FEE2) & (2 * v4));
  return v5();
}

uint64_t sub_10006ABFC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1F28]) = v1;
  v4 = STACK[0xA60];
  v5 = v2 - 240;
  *(v5 + 24) = (STACK[0x1A68] + 0x27EFA9DAA83AB650) ^ STACK[0xA60];
  *(v5 + 40) = (a1 - 1740677560) ^ v4;
  *v5 = (a1 + 2105773206) ^ v4;
  *(v5 + 16) = v4 ^ (a1 - 1740678757) ^ 0x37;
  *(v5 + 8) = STACK[0xA58];
  *(v5 + 32) = a1 - 1740678757 + v4;
  *(v5 + 36) = -v4;
  v6 = (*(v3 + 8 * (a1 + 4389)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * *(v2 - 196)))(v6);
}

uint64_t sub_10006ACF0()
{
  v4 = 301143701 * (v1 ^ 0x1257B2247BA89D72);
  *(v1 + 24) = STACK[0x26A0] ^ v4;
  *(v1 + 8) = v4;
  *(v1 + 16) = v4 ^ (v2 - 6270) ^ 0x6B419E89;
  *v1 = (v2 + 2105773206) ^ v4;
  *(v1 + 32) = ((v2 - 6270) ^ 0x6B419E8F) + v4;
  *(v1 + 36) = -301143701 * (v1 ^ 0x7BA89D72);
  *(v1 + 40) = v4 ^ (v2 - 6270) ^ 0x6B419A74;
  v5 = (*(v0 + 8 * (v2 ^ 0x31DD)))(v3 - 240);
  return (*(STACK[0x1708] + 8 * *(v1 + 44)))(v5);
}

uint64_t sub_10006ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xA54];
  STACK[0x1CF8] = *(v8 + 8 * SLODWORD(STACK[0xA54]));
  return (*(v8 + 8 * (v7 ^ 0xCC5 ^ v9 ^ 0x1639)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL, a6, a7, v7);
}

uint64_t sub_10006AE64()
{
  LODWORD(STACK[0x3508]) = v0;
  v3 = (*(v2 + 8 * (v1 ^ 0x2ABF)))((LODWORD(STACK[0x2C34]) - 1443455193));
  v4 = STACK[0x1708];
  STACK[0x1DF0] = v3;
  return (*(v4 + 8 * (v1 ^ 0x856 ^ (2699 * (v1 ^ 0x33D)))))();
}

uint64_t sub_10006AEF4@<X0>(int a1@<W7>, int a2@<W8>)
{
  LODWORD(STACK[0x3140]) = a2;
  v4 = STACK[0x1BD8] + 0x5897D66535C30F86;
  v5 = v2 - 240;
  v6 = 301143701 * ((v2 - 240) ^ 0x1257B2247BA89D72);
  *v5 = (a1 + 2105773206) ^ v6;
  v7 = LODWORD(STACK[0xA74]) ^ v6;
  *(v5 + 36) = -301143701 * ((v2 - 240) ^ 0x7BA89D72);
  *(v5 + 40) = v7;
  v8 = STACK[0xA70];
  *(v5 + 16) = v6 ^ LODWORD(STACK[0xA70]) ^ 0xD;
  *(v5 + 8) = v6 - 0x7C4E2550E1962752;
  *(v5 + 24) = v4 ^ v6;
  *(v5 + 32) = v8 + v6;
  v9 = (*(v3 + 8 * (a1 + 4389)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * *(v2 - 196)))(v9);
}

uint64_t sub_10006B05C()
{
  v1 = STACK[0x8F0];
  v2 = STACK[0x8F0] ^ 0x10BF;
  STACK[0x1CF8] = *(v0 + 8 * STACK[0x8F0]);
  return (*(v0 + 8 * (v1 - 4659 + v2)))();
}

uint64_t sub_10006B0BC()
{
  v2 = *STACK[0x14F0];
  v3 = STACK[0x2780];
  LODWORD(STACK[0x2814]) = STACK[0x1E44];
  v4 = STACK[0x1B28];
  STACK[0x3100] = STACK[0x40D0] + STACK[0x1B28] + 0x202F6D26B07708EELL;
  STACK[0x1B28] = ((v0 + 1557) | 0x360u) + v4 - 2872;
  STACK[0x1D60] = v2;
  STACK[0x2DF8] = v3;
  STACK[0x28A8] = 0x61CEF89FDDA89DF2;
  STACK[0x2520] = 0;
  STACK[0x3060] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x445)))();
}

uint64_t sub_10006B14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x9E8] & 0xA83589FF;
  LODWORD(STACK[0x20AC]) = v8;
  return (*(v9 + 8 * ((250 * (v8 != ((v10 + 68582691) ^ (a8 - 2012)))) ^ (a8 - 2086))))();
}

uint64_t sub_10006B1EC()
{
  v2 = (*(v1 + 8 * (v0 + 9817)))(LODWORD(STACK[0x1A3C]) - 1443467263 + ((v0 - 397484849) & 0x17B13FA9u) + 3973);
  v3 = STACK[0x1708];
  STACK[0x22C0] = v2;
  return (*(v3 + 8 * (v0 ^ 0x17E1)))();
}

uint64_t sub_10006B2C8()
{
  v2 = (*(v1 + 8 * (v0 + 9805)))((LODWORD(STACK[0x22EC]) - 1443455193));
  v3 = STACK[0x1708];
  STACK[0x1C88] = v2;
  return (*(v3 + 8 * (v0 ^ 0x17FD)))();
}

uint64_t sub_10006B490()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xD5A)))(((570 * (v0 ^ 0x24D0)) ^ 0xA9F68759) + LODWORD(STACK[0x2104]));
  v3 = STACK[0x1708];
  STACK[0x2548] = v2;
  return (*(v3 + 8 * (v0 | (4 * ((((v0 + 983) ^ (v2 == 0)) & 1) == 0)))))();
}

uint64_t sub_10006B51C()
{
  v3 = (*(v2 + 8 * (v1 + 207)))(v0);
  v4 = STACK[0x1708];
  STACK[0x1EC0] = v3 + 0x2B1A0449E8A6C928;
  return (*(v4 + 8 * ((119 * (v3 != 0)) ^ v1)))();
}

uint64_t sub_10006B594()
{
  v5 = (v2 - 228830591) & 0xDA39FBB;
  v6 = STACK[0x2E78];
  v7 = v3 - 240;
  v8 = 678427121 * ((2 * ((v3 - 240) & 0x53A84500) - (v3 - 240) - 1403536648) ^ 0x3E8DE0E2);
  *(v7 + 32) = v8 + v5 + 6735;
  *(v7 + 16) = (((v5 - 4707885) ^ (v5 - 842)) + v1) ^ v8;
  *(v7 + 24) = v6;
  *(v7 + 8) = v0;
  *(v7 + 40) = STACK[0x360];
  (*(v4 + 8 * (v5 ^ 0x23F6u)))(v3 - 240);
  return (*(STACK[0x1708] + 8 * ((6449 * (*(v3 - 240) == 68588956)) ^ v5)))(v6);
}

uint64_t sub_10006B9D4@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 240;
  *(v5 + 4) = (v1 - 3000) ^ (929149733 * ((((2 * (v3 - 240)) | 0x477F87C2) - (v3 - 240) - 599770081) ^ 0x7280A88C));
  *(v5 + 8) = a1;
  v6 = (*(v4 + 8 * (v1 ^ 0x31FC)))(v3 - 240);
  return (*(STACK[0x1708] + 8 * v2))(v6);
}

uint64_t sub_10006BA80@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 - 240;
  *(v4 + 4) = (v1 - 3000) ^ (929149733 * ((v2 - 240) ^ 0x513F6B6D));
  *(v4 + 8) = a1;
  v5 = (*(v3 + 8 * (v1 ^ 0x31FC)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * (v1 + 523)))(v5);
}

uint64_t sub_10006BC6C()
{
  v1 = STACK[0xCC4];
  v2 = (LODWORD(STACK[0xCC4]) - 62) | 0x211;
  LODWORD(STACK[0x224C]) = 1443455193;
  return (*(v0 + 8 * ((((LODWORD(STACK[0x30AC]) - 1443455193) < 0xFFFFFFFC) * (v2 ^ 0x104E)) ^ v1)))();
}

uint64_t sub_10006BCBC()
{
  v4 = ((2 * (v2 + v1 + 4)) & 0xBE97E7BA) + ((v2 + v1 + 4) ^ 0xDF4BF3DD);
  LODWORD(STACK[0x224C]) = ((2 * (v0 ^ 0x1FA6)) ^ 0x76BD7482) + v4;
  LODWORD(STACK[0x3BD4]) = 68588956;
  v5 = (((v0 ^ 0x1FA6) - 2536) ^ 0x118AC64E) + v4;
  v6 = LODWORD(STACK[0x30A8]) - 1639020116;
  v7 = v5 < 0xF0D6B7F6;
  v8 = v5 > v6;
  if (v7 != v6 < 0xF0D6B7F6)
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((88 * !v8) ^ v0)))();
}

uint64_t sub_10006BE68@<X0>(int a1@<W8>)
{
  v4 = v1 - 5751;
  v5 = v1 + 3047;
  STACK[0x2760] = *(v3 + 8 * a1);
  LODWORD(STACK[0x1F78]) = 1443455193;
  LODWORD(STACK[0x2D28]) = 1443455193;
  STACK[0x1AD0] = 0;
  LODWORD(STACK[0x1EEC]) = 1443455193;
  STACK[0x27E0] = 0;
  LODWORD(STACK[0x21CC]) = 1443455193;
  *(v2 - 236) = 809119085 - 678427121 * ((2 * ((v2 - 240) & 0x3B55EA38) - (v2 - 240) + 1151997378) ^ 0xD6704FD8) + v1;
  v6 = (*(v3 + 8 * (v1 + 4419)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * (((*(v2 - 240) == 81) * (v4 ^ 0x21B)) ^ v5)))(v6);
}

uint64_t sub_10006BFA0@<X0>(int a1@<W8>)
{
  v2 = *STACK[0x40D8];
  STACK[0x3BD8] = v2;
  return (*(v1 + 8 * (((v2 == 0x56F780AC40F6473BLL) ^ (a1 - 91)) & 1 | a1)))();
}

uint64_t sub_10006C06C@<X0>(int a1@<W8>)
{
  v4 = v1 + ((a1 - 1510317091) & 0x5A059D7F) - 1154761447;
  v5 = *(v2 - 0x56F780AC40F64733) - 1022977057;
  v6 = v4 < 2522 * ((a1 + 107) ^ 0x178Eu) + 288694968;
  v7 = v4 > v5;
  if (v5 < 0x1135366C != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * (v7 | (2 * v7) | (a1 + 107))))();
}

uint64_t sub_10006C118@<X0>(int a1@<W8>)
{
  STACK[0x3BE8] = v3;
  LODWORD(STACK[0x1EAC]) = a1;
  return (*(v4 + 8 * (((3 * (v1 ^ 0x1B9E) + ((v1 + 2826) ^ 0xFFFFF969)) * (v2 == 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_10006C294@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, unsigned int a6@<W6>, int a7@<W8>)
{
  v14 = (a4 & (2 * (((v9 + v11) & v12 ^ a2) + 2 * a7))) + ((v9 + v10) ^ a3 ^ (((v9 + v11) & v12 ^ a2) + 2 * a7));
  if (v7 < v8 != v14 + a5 < a6)
  {
    v15 = v14 + a5 < a6;
  }

  else
  {
    v15 = v14 + a5 > v7;
  }

  return (*(v13 + 8 * ((v15 * a1) ^ v9)))();
}

uint64_t sub_10006C2F8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1EAC]) = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0x895u)))((v1 + 538009651));
  v5 = STACK[0x1708];
  STACK[0x3BF8] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((v2 - 2198) ^ 0xFFFFE709) + v2 - 8274)) ^ v2)))();
}

uint64_t sub_10006C3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x1B28];
  STACK[0x2A18] = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x1B28] = v9 + (v7 + 2401) - 2792;
  STACK[0x2780] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x1E44]) = 1443455193;
  STACK[0x2F28] = 0;
  LODWORD(STACK[0x1C20]) = 1443455193;
  STACK[0x2618] = 0;
  STACK[0x3060] = *(v8 + 8 * v7);
  return (*(v8 + 8 * (v7 + 943)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x1700]);
}

uint64_t sub_10006C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = a8 - 1218;
  v14 = a8 + 1091;
  v15 = v11 - 240;
  v16 = 301143701 * (((~(v11 - 240) | 0x35C48416) + ((v11 - 240) | 0xCA3B7BE9)) ^ 0xB193E69A);
  *(v15 + 8) = 875502210 - v16;
  *(v15 + 12) = a8 - v16 + 1624;
  *(v15 + 1) = v9 - -107 * (((~(v11 + 16) | 0x16) + ((v11 + 16) | 0xE9)) ^ 0x9A);
  *v15 = (-107 * (((~(v11 + 16) | 0x16) + ((v11 + 16) | 0xE9)) ^ 0x9A)) ^ v8;
  v17 = (*(v12 + 8 * (a8 + 4372)))(v11 - 240);
  v19 = LODWORD(STACK[0x28FC]) - v10 == 1103264941 || *(v11 - 236) == v13 + 68583904;
  return (*(STACK[0x1708] + 8 * ((v19 * (STACK[0xC90] + 15241)) ^ v14)))(v17);
}

uint64_t sub_10006C590()
{
  v1 = STACK[0xC90];
  v2 = STACK[0xC90] ^ 0x1258;
  STACK[0x1F30] = *(v0 + 8 * STACK[0xC90]);
  return (*(v0 + 8 * (v1 + v2 - 2051)))();
}

uint64_t sub_10006C61C@<X0>(int a1@<W7>, int a2@<W8>)
{
  if (a2 == 68543895)
  {
    return (*(v2 + 8 * SLODWORD(STACK[0x23C])))(0x8BAC8FC05ACDC85BLL);
  }

  if (a2 != 68588956)
  {
    return sub_100028C94(a2);
  }

  v4 = LODWORD(STACK[0x244]) | 0x392;
  v5 = a1 - 993;
  v6 = (*(v2 + 8 * SLODWORD(STACK[0x240])))(STACK[0x1170] - 1297817643, 0);
  return (*(STACK[0x1708] + 8 * (((v4 - 889) * (v6 ^ 1)) ^ v5)))();
}

uint64_t sub_10006C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = STACK[0x21D0] - 0x202F6D26B07708EELL;
  *(v71 + 24) = a70 ^ STACK[0x2070] ^ 0xC312A2433E47D1E6 ^ ((v70 - 920) | 0x398u);
  *v71 = -1453004255 - a70 + v70 + 4378;
  *(v71 + 8) = v74;
  *(v71 + 16) = -a70;
  (*(v73 + 8 * (v70 + 9761)))(v72 - 240);
  v75 = (*(STACK[0x1708] + 8 * ((v70 + 4378) ^ 0x3D13)))(STACK[0xD58] - 1514018299, STACK[0x1170] - 1297817643, 0, *(&off_1002DD400 + ((v70 + 4378) ^ 0x14C0)) - 567028939, v74, 18);
  return (*(STACK[0x1708] + 8 * (v70 + 4378)))(v75);
}

uint64_t sub_10006C7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x2780] + 0x28D61DEF89844A73;
  v11 = v8 - 240;
  v12 = 301143701 * ((0xB3D0A8CCCF9DEF9FLL - ((v8 - 240) | 0xB3D0A8CCCF9DEF9FLL) + STACK[0x828]) ^ 0x5E78E5174BCA8D12);
  *(v11 + 8) = v12 + 0x53F02239722B139BLL;
  *v11 = (a8 + 2105773206) ^ v12;
  v13 = STACK[0x824];
  *(v11 + 32) = LODWORD(STACK[0x824]) + v12;
  *(v11 + 36) = -v12;
  *(v11 + 40) = LODWORD(STACK[0x834]) ^ v12;
  *(v11 + 24) = v10 ^ v12;
  *(v11 + 16) = v12 ^ v13 ^ 0x25;
  v14 = (*(v9 + 8 * (a8 ^ 0x31DD)))(v8 - 240);
  return (*(STACK[0x1708] + 8 * *(v8 - 196)))(v14);
}

uint64_t sub_10006C9EC()
{
  LODWORD(STACK[0x1D1C]) = v1;
  STACK[0x1C60] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 - 7468 + ((v0 - 1096) | 0x2582))))();
}

uint64_t sub_10006CA3C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2D90] = v2;
  STACK[0x1B48] = v3;
  STACK[0x3178] = 0;
  LODWORD(STACK[0x1A18]) = 1443455193;
  if (a1)
  {
    v5 = v3 == 0x246608B69D9E9B73;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v4 + 8 * ((((((v1 - 1946904449) ^ v6) & 1) == 0) * ((v1 - 3409) ^ 0x186E)) | v1)))();
}

uint64_t sub_10006CAB4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2E20] = *(v2 + 8 * (v1 & 0x740B43FB));
  v3 = *(v2 + 8 * (((v1 & 0x740B43FB) + 807) ^ v1 & 0x740B43FB));
  LODWORD(STACK[0x4474]) = (v1 & 0x740B43FB) + 2830;
  STACK[0x4478] = &STACK[0x1A18];
  STACK[0x4480] = a1;
  STACK[0x4488] = STACK[0xA08];
  LODWORD(STACK[0x4494]) = 1443455193;
  return v3();
}

uint64_t sub_10006CB10()
{
  v1 = STACK[0x4494];
  STACK[0x4498] = STACK[0x4488];
  STACK[0x44A0] = STACK[0x4480];
  v2 = STACK[0x4478];
  v3 = STACK[0x4474];
  LODWORD(STACK[0x44AC]) = STACK[0x4474];
  LODWORD(STACK[0x44B0]) = (v3 + 782) | 0x818;
  v4 = (v3 - 3159) | 2u;
  LODWORD(STACK[0x44B4]) = v4;
  STACK[0x1B60] = v2;
  LODWORD(STACK[0x2080]) = v1;
  v5 = STACK[0x1B28];
  v6 = STACK[0x40D0] + STACK[0x1B28];
  STACK[0x1ED0] = v6;
  STACK[0x44B8] = v6 + 16;
  STACK[0x2AA0] = v6 + 16;
  STACK[0x1D98] = v6 + 48;
  v7 = (v4 ^ 0x153) + v5;
  STACK[0x44C0] = v7;
  STACK[0x1B28] = v7;
  STACK[0x24F0] = STACK[0x4498];
  STACK[0x4188] = v6;
  LOBYTE(STACK[0x4187]) = 0;
  v8 = *(v0 + 8 * (v3 + 7152));
  STACK[0x4178] = 16;
  STACK[0x4170] = v8;
  return (*(v0 + 8 * (LODWORD(STACK[0x44AC]) ^ 0x2440)))();
}

uint64_t sub_10006CBF4@<X0>(int a1@<W8>)
{
  v4 = v2 - 240;
  v5 = 301143701 * ((0x51236F282B995686 - ((v2 - 240) | 0x51236F282B995686) + STACK[0x840]) ^ 0xBC8B22F3AFCE340BLL);
  *(v4 + 16) = (a1 + 1606040064) ^ v5;
  *(v4 + 8) = v5;
  *(v4 + 24) = ((v1 + 475629345) < 0xFFFFFFFD) ^ v5;
  *(v4 + 36) = -v5;
  *(v4 + 40) = v5 ^ (a1 + 1606040058) ^ 0x4D6;
  *(v4 + 32) = a1 + 1606040058 + v5;
  *v4 = (a1 + 2105773206) ^ v5;
  v6 = (*(v3 + 8 * (a1 + 4389)))(v2 - 240);
  return (*(STACK[0x1708] + 8 * *(v2 - 196)))(v6);
}

uint64_t sub_10006CDA8()
{
  v1 = STACK[0xA98];
  v2 = STACK[0xA98] + 2406;
  v3 = STACK[0x1A68];
  LODWORD(STACK[0x2AB8]) = STACK[0x314C];
  v4 = STACK[0x1B28];
  STACK[0x2838] = STACK[0x40D0] + STACK[0x1B28] + 0x202F6D26B07708EELL;
  STACK[0x1B28] = v2 + v4 - 2872;
  STACK[0x1E88] = STACK[0x1980];
  STACK[0x20A0] = v3;
  STACK[0x2980] = 0x61CEF89FDDA89DF2;
  STACK[0x24B0] = 0;
  STACK[0x3060] = *(v0 + 8 * v1);
  return (*(v0 + 8 * (v1 + 948)))();
}

uint64_t sub_10006CE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x1AD0] = STACK[0x2F28];
  LODWORD(STACK[0x1EEC]) = STACK[0x1C20];
  return (*(v8 + 8 * (a8 - 1801)))();
}

uint64_t sub_10006CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 3 * LODWORD(STACK[0x980]);
  v6 = STACK[0x984];
  STACK[0x1CF8] = *(v4 + 8 * SLODWORD(STACK[0x984]));
  return (*(v4 + 8 * (v6 ^ 0x162D ^ v5)))(a1, a2, a3, a4, 0xDA182461BE0DA49ALL);
}

uint64_t sub_10006D088()
{
  v1 = STACK[0x42C];
  LODWORD(STACK[0x1F88]) = 15;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_10006D0CC()
{
  STACK[0x29C8] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x2A9C]) = 1443455193;
  STACK[0x1BE0] = 0;
  LODWORD(STACK[0x2440]) = 1443455193;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10006D114()
{
  LODWORD(STACK[0x3954]) = v0;
  v3 = *STACK[0x40D8];
  STACK[0x3958] = v3;
  return (*(v2 + 8 * ((84 * (((v1 + 125) ^ (v3 == 0x56F780AC40F6473BLL)) & 1)) ^ v1)))();
}

uint64_t sub_10006D1D0()
{
  v4 = v1 - 724686255;
  v5 = *(v2 - 0x56F780AC40F64733) - 592908135;
  v6 = v4 < 0x2AD78B26;
  v7 = v4 > v5;
  if (v6 != v5 < (v0 ^ 0x2AD796BDu))
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((v7 * ((v0 - 1309) ^ 0x182B)) ^ v0)))();
}

uint64_t sub_10006D25C@<X0>(int a1@<W8>)
{
  STACK[0x3968] = v3;
  LODWORD(STACK[0x2810]) = a1;
  return (*(v4 + 8 * (((19 * (v1 ^ 0xDEC) - 7868) * (v2 == 0x56F780AC40F6473BLL)) ^ v1)))();
}

uint64_t sub_10006D3C4@<X0>(int a1@<W1>, int a2@<W4>, int a3@<W5>, int a4@<W6>, unsigned int a5@<W7>, int a6@<W8>)
{
  v10 = (v8 & (2 * (2 * a6 + 1671613158))) + ((2 * a6 + 1671613158) ^ a4) + a1 + ((6 * (v7 ^ 0x1966) + a2) & a3);
  v11 = v10 < a5;
  v12 = v10 > v6;
  if (v6 < a5 != v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return (*(v9 + 8 * ((45 * v13) ^ v7)))();
}

uint64_t sub_10006D43C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2810]) = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0xA75)))((v1 + 17892417));
  v5 = STACK[0x1708];
  STACK[0x3978] = v4;
  return (*(v5 + 8 * ((2039 * (((v4 == 0) ^ (v2 - 1)) & 1)) ^ v2)))();
}

uint64_t sub_10006D638@<X0>(int a1@<W7>, int a2@<W8>)
{
  if (a2 == 68543895)
  {
    return (*(v2 + 8 * (((LOBYTE(STACK[0x1D6B]) == 24) * (((a1 - 5237) | 0x222) - 1164)) ^ (a1 - 3539))))();
  }

  if (a2 != 68588956)
  {
    return sub_1000AC65C();
  }

  LODWORD(STACK[0x1F88]) = 24;
  return (*(v2 + 8 * (a1 - 4691)))();
}

uint64_t sub_10006D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 - 2859;
  v10 = (*(v8 + 8 * (a8 ^ 0x3155)))();
  return (*(STACK[0x1708] + 8 * v9))(v10);
}

uint64_t sub_10006D720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x1F68] = 0;
  LODWORD(STACK[0x1E98]) = 1443455193;
  STACK[0x2A70] = 0;
  LODWORD(STACK[0x1D24]) = 1443455193;
  return (*(v8 + 8 * (a8 - 3307)))();
}

uint64_t sub_10006D74C@<X0>(int a1@<W8>)
{
  v2 = *STACK[0x40D8];
  STACK[0x3A80] = v2;
  return (*(v1 + 8 * (((v2 != 0x56F780AC40F6473BLL) * ((13 * (((a1 + 8195) | 0x18) ^ 0x28D2)) ^ 0x54E)) ^ a1)))();
}

uint64_t sub_10006D824()
{
  v4 = v0 - 2130490682 + ((v1 - 6303) | 0x864);
  v5 = *(v2 - 0x56F780AC40F64733) - 1998706292;
  v6 = v4 < 0xD70CC419;
  v7 = v4 > v5;
  if (v5 < 0xD70CC419 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((453 * !v7) ^ (v1 - 8126))))();
}

uint64_t sub_10006D9A4()
{
  STACK[0x1D10] = *STACK[0x1F80];
  LODWORD(STACK[0x1F88]) = 25;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10006D9F0()
{
  LODWORD(STACK[0x3974]) = 68543949;
  LODWORD(STACK[0x3984]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10006DA74@<X0>(int a1@<W8>)
{
  v5 = v1 + 4965;
  v6 = (2090 * ((v1 + 4965) ^ 0x1C63) + 136118641) & STACK[0x200];
  STACK[0x3A90] = v3;
  LODWORD(STACK[0x3144]) = a1;
  return (*(v4 + 8 * (((v6 ^ 0x1982) * (v2 == 0x56F780AC40F6473BLL)) | v5)))();
}

uint64_t sub_10006DB1C()
{
  LODWORD(STACK[0x3A9C]) = 68543949;
  LODWORD(STACK[0x3AAC]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10006DBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 6091)))(a1 - 0x2B1A0449E8A6C928);
  v4 = STACK[0x1708];
  STACK[0x29C8] = 0x2B1A0449E8A6C928;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_10006DC90()
{
  v2 = (*(v1 + 8 * (v0 + 6019)))();
  v3 = STACK[0x1708];
  STACK[0x1BE0] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_10006DCC8()
{
  LODWORD(STACK[0x3BF4]) = 68543949;
  LODWORD(STACK[0x3C00]) = 68543949;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10006DDC8@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, unsigned int a5@<W5>, int a6@<W8>)
{
  v9 = (a1 & (2 * (2 * a6 + 1671613158))) + ((2 * a6 + 1671613158) ^ a4);
  if (v6 < a5 != v9 + a2 < a5)
  {
    v10 = v9 + a2 < a5;
  }

  else
  {
    v10 = v9 + a2 > v6;
  }

  return (*(v8 + 8 * (v7 ^ (v10 * a3))))();
}

uint64_t sub_10006DE2C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3144]) = a1;
  v4 = (*(v3 + 8 * (v2 + 2637)))(v1 + 25256799 + ((4 * v2) ^ 0x7C64u));
  v5 = STACK[0x1708];
  STACK[0x3AA0] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((v2 - 1804) | 0x56) - 6089)) ^ v2)))();
}

uint64_t sub_10006E0C8()
{
  v5 = STACK[0x1700] - 1999;
  v6 = STACK[0x1700] + 465;
  LODWORD(STACK[0x28A4]) = v0;
  LODWORD(STACK[0x30AC]) = v1;
  return (*(v4 + 8 * (((v5 ^ 0x162E) * (v2 == v3)) ^ v6)))();
}

uint64_t sub_10006E158@<X0>(int a1@<W8>)
{
  v3 = ((2 * (v1 - 1443455189)) & 0xFFDFF7B6) + ((v1 - 1443455189) ^ 0xFFEFFBDB);
  LODWORD(STACK[0x2F48]) = v3 + 1444504830;
  LODWORD(STACK[0x386C]) = 68588956;
  v4 = v3 + (((a1 ^ 0x798) - 5411) ^ 0x1A6A) - 1143362718;
  v5 = LODWORD(STACK[0x30A8]) + 1765904753;
  v6 = v4 < 0xBBC9BFBB;
  v7 = v4 > v5;
  if (v6 != v5 < 0xBBC9BFBB)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((106 * !v7) ^ a1 ^ 0x798)))();
}

uint64_t sub_10006E260()
{
  v4 = STACK[0x1700];
  v5 = STACK[0x1700] - 327;
  LODWORD(STACK[0x2F7C]) = v0;
  LODWORD(STACK[0x30AC]) = v1;
  return (*(v3 + 8 * (((v4 - 2211) * (v2 == 68588956)) ^ v5)))();
}

uint64_t sub_10006E30C@<X0>(int a1@<W8>)
{
  v4 = (((v1 + a1 + ((v2 + 405413552) & 0xE7D5DF7E ^ 0x608BBFB4) + 1231746909) << ((v2 + 81) ^ 0xA1)) & 0xFFDADBB6) + ((v1 + a1 + ((v2 + 405413552) & 0xE7D5DF7E ^ 0x608BBFB4) + 1231746909) ^ 0xFFED6DDB) - 1776118120;
  v5 = LODWORD(STACK[0x30A8]) + 1132975657;
  v6 = v4 < 0x96100473;
  v7 = v4 > v5;
  if (v5 < 0x96100473 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((47 * !v7) ^ v2)))();
}

uint64_t sub_10006E3F0(int a1, int a2)
{
  STACK[0x1A08] = STACK[0x30A0] + v2;
  LODWORD(STACK[0x30AC]) = ((a1 + 3294) ^ 0x561BEA80) + a2;
  LODWORD(STACK[0x1CE8]) = 1443455193;
  return (*(v3 + 8 * ((126 * ((((a2 + 1217061) < 0xFFFFFFFC) ^ (a1 + 35)) & 1)) ^ a1)))();
}

uint64_t sub_10006E45C@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  v5 = (((a2 + a1 + 4) << (v3 + 62)) & 0xAE32DDFE) + ((a2 + a1 + 4) ^ 0x57196EFF);
  LODWORD(STACK[0x1CE8]) = v5 - 17829414;
  LODWORD(STACK[0x3870]) = 68588956;
  v6 = v5 + 593875780;
  v7 = a3 + 670503929;
  v8 = (v7 < 0x7A7F4243) ^ (v6 < 0x7A7F4243);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0x7A7F4243;
  }

  return (*(v4 + 8 * ((39 * !v9) ^ v3)))();
}

uint64_t sub_10006E540()
{
  v2 = STACK[0x1700] - 4807;
  LODWORD(STACK[0x217C]) = v0;
  LODWORD(STACK[0x30AC]) = STACK[0x224C];
  return (*(v1 + 8 * (((LODWORD(STACK[0x3BD4]) == 68588956) * LODWORD(STACK[0x55C])) ^ v2)))();
}

uint64_t sub_10006E5FC()
{
  v4 = ((((v0 - 6125) | 0x86) - 1126710992) & (2 * (v1 + v2))) + ((v1 + v2) ^ 0x5E6BE2DB) - 13870665;
  v5 = LODWORD(STACK[0x30A8]) + 185601608;
  v6 = (v5 < 0x5D983C92) ^ (v4 < 0x5D983C92);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0x5D983C92;
  }

  return (*(v3 + 8 * (v0 | (16 * !v7))))();
}

uint64_t sub_10006E708()
{
  v1 = 2000 * (STACK[0x1700] ^ 0x187A);
  v2 = STACK[0x1700] - 4669;
  LODWORD(STACK[0x30AC]) = STACK[0x2560];
  return (*(v0 + 8 * ((2815 * (LODWORD(STACK[0x38A8]) == v1 + 68580956)) ^ v2)))();
}

uint64_t sub_10006E768@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x216C]) = v1;
  STACK[0x2DD0] = 0x7453703FA53237A5;
  return (*(v2 + 8 * (a1 ^ (8 * (v1 != (((a1 - 1842) | 0x70) ^ ((a1 - 6464) | 0x2B) ^ 0x56097E8C))))))();
}

uint64_t sub_10006E804(uint64_t a1)
{
  v3 = STACK[0x1700];
  LODWORD(STACK[0x29EC]) = (v1 - 1443455193) % 0x18u + 1443455209;
  STACK[0x1F08] = *(v2 + 8 * SLODWORD(STACK[0x558]));
  return (*(v2 + 8 * (v3 - 3890)))(a1, STACK[0x1680]);
}

uint64_t sub_10006E898()
{
  v2 = STACK[0x1700] + 644;
  LODWORD(STACK[0x1E04]) = v0;
  LODWORD(STACK[0x30AC]) = STACK[0x22A8];
  return (*(v1 + 8 * (((LODWORD(STACK[0x37B4]) == 68588956) * (LODWORD(STACK[0x79C]) + 542)) ^ v2)))(153);
}

uint64_t sub_10006E974(int a1)
{
  v5 = ((2 * (v2 - 1443455193 + v3)) & 0xAEB7EBB6) + ((v2 - 1443455193 + v3) ^ 0xD75BF5DB) - 814559733;
  v6 = LODWORD(STACK[0x30A8]) + 1413911964;
  v7 = (v6 < 0xA6CEC3E6) ^ (v5 < ((v1 - 750361331) & 0x2CB986FFu) - 1496399492);
  v8 = v5 > v6;
  if (v7)
  {
    v8 = v5 < ((v1 - 750361331) & 0x2CB986FFu) - 1496399492;
  }

  return (*(v4 + 8 * ((v8 * a1) ^ v1)))();
}

uint64_t sub_10006EA2C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v8 = v3 + 2125294334;
  v9 = STACK[0x30A0];
  LODWORD(STACK[0x30AC]) = v8;
  STACK[0x2070] = STACK[0x2448];
  STACK[0x1D28] = v9 + v2;
  LODWORD(STACK[0x2D7C]) = a2;
  LODWORD(STACK[0x22BC]) = LODWORD(STACK[0x2700]) + (v5 ^ 0xB8043C16) - ((2 * LODWORD(STACK[0x2700])) & 0x70087CF8);
  v10 = 301143701 * (((v4 ^ 0xCFDEAB69 | 0xA29F843A) - (v4 ^ 0xCFDEAB69 | 0x5D607BC5) + 1566604229) ^ 0x16E9B221);
  *(v4 + 1) = 21 - -107 * (((v4 ^ 0x69 | 0x3A) - (v4 ^ 0x69 | 0xC5) - 59) ^ 0x21);
  *(v4 + 8) = 875502210 - v10;
  *(v4 + 12) = a1 - v10 + 1624;
  *v4 = (-107 * (((v4 ^ 0x69 | 0x3A) - (v4 ^ 0x69 | 0xC5) - 59) ^ 0x21)) ^ 0x2C;
  v11 = (*(v7 + 8 * (v5 ^ 0x2BF8)))(v6 - 240);
  v12 = STACK[0x1708];
  v13 = STACK[0x1B28];
  STACK[0x21D0] = STACK[0x40D0] + STACK[0x1B28] + 0x202F6D26B07708EELL;
  STACK[0x1B28] = v13 + 64;
  STACK[0x2F60] = 0;
  LODWORD(STACK[0x238C]) = 1443455193;
  LODWORD(STACK[0x23F4]) = 1443455193;
  STACK[0x1F30] = *(v12 + 8 * v5);
  return (*(v12 + 8 * (v5 + 2041)))(v11);
}

uint64_t sub_10006EB78()
{
  LODWORD(STACK[0x280C]) = v0;
  LODWORD(STACK[0x30AC]) = STACK[0x3054];
  return (*(v1 + 8 * SLODWORD(STACK[0x544])))();
}

uint64_t sub_10006EBB4()
{
  v1 = STACK[0x1700];
  LODWORD(STACK[0x30AC]) = STACK[0x2D38];
  return (*(v0 + 8 * (v1 - 3686)))();
}

uint64_t sub_10006EC88@<X0>(int a1@<W0>, int a2@<W8>)
{
  v4 = ((2 * (v2 + a1)) & 0xFCDFCFB6) + ((v2 + a1) ^ 0x7E6FE7DB) - 418355968;
  v5 = LODWORD(STACK[0x30A8]) + 318250641;
  v6 = (v5 < 0x65804CDB) ^ (v4 < ((a2 + 213) | 0x1078u) + 1702900829);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < ((a2 + 213) | 0x1078u) + 1702900829;
  }

  return (*(v3 + 8 * ((!v7 | (8 * !v7)) ^ a2)))();
}

uint64_t sub_10006ED2C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = STACK[0x30A0] + v3;
  LODWORD(STACK[0x30AC]) = v4 - 677807874;
  LODWORD(STACK[0x2570]) = LODWORD(STACK[0x232C]) + 1586808225 - ((LODWORD(STACK[0x232C]) << ((((a2 + 117) | 0x51) + 72) ^ 0x3E)) & 0xBD298B42);
  STACK[0x2F80] = v6;
  LODWORD(STACK[0x241C]) = v2;
  STACK[0x3068] = 0;
  LODWORD(STACK[0x2870]) = 1443455193;
  LODWORD(STACK[0x1B24]) = -1;
  return (*(v5 + 8 * ((a2 + 351) ^ (60 * ((a1 ^ 0x75BFDDA9BD7BABEDLL) - 0x75BFDDA94F10171CLL + ((2 * a1) & 0x17AF757DALL) == 1852544209)))))();
}

uint64_t sub_10006EEA8(uint64_t a1, unint64_t a2)
{
  v6 = v2 < a2;
  v7 = v4 - 0x6F107577E7EC0E3BLL + (v3 - 81);
  v8 = v6 ^ (v7 < (v3 + 5991) + 1852536026);
  v9 = v7 < v2;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(v5 + 8 * ((60 * !v6) ^ v3)))();
}

uint64_t sub_10006EF1C()
{
  v3 = (v1 + 639786632) & STACK[0x7F4];
  LODWORD(STACK[0x361C]) = 68588956;
  return (*(v2 + 8 * ((14824 * (v0 == ((v1 - 8014) ^ 0x5609780A ^ v3))) ^ v1)))();
}

uint64_t sub_10006EF88()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2928)))();
  v3 = STACK[0x1708];
  STACK[0x3068] = v2;
  return (*(v3 + 8 * (((v0 - 1680617659) & 0x642C3799 ^ 0x191) + v0)))();
}

uint64_t sub_10006F00C()
{
  v1 = STACK[0x1700];
  LODWORD(STACK[0x30AC]) = STACK[0x279C];
  return (*(v0 + 8 * (v1 - 2354)))();
}

uint64_t sub_10006F12C@<X0>(int a1@<W8>)
{
  v3 = (((v1 - 1443455189) << (((a1 + 69) & 0x7E) - 125)) & 0xBFDBC5F6) + ((v1 - 1443455189) ^ 0x5FEDE2FB);
  LODWORD(STACK[0x19CC]) = v3 - 165970466;
  LODWORD(STACK[0x3610]) = 68588956;
  v3 += 1501189884;
  v4 = LODWORD(STACK[0x30A8]) + 1725959085;
  v5 = v3 < 0xB96839F7;
  v6 = v3 > v4;
  if (v4 < 0xB96839F7 != v5)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((7 * v6) ^ a1)))();
}

uint64_t sub_10006F2A0()
{
  v2 = STACK[0x1700];
  LODWORD(STACK[0x2A04]) = v0;
  LODWORD(STACK[0x30AC]) = STACK[0x19CC];
  return (*(v1 + 8 * (v2 - 961)))();
}

uint64_t sub_10006F370()
{
  v5 = (((v3 + v1 + 4) << ((v0 ^ v2) - 125)) & 0xAFDBEBB6) + ((v3 + v1 + 4) ^ 0xD7EDF5DB);
  LODWORD(STACK[0x3054]) = v5 + 2115726078;
  LODWORD(STACK[0x3614]) = 68588956;
  v5 -= 1319348811;
  v6 = LODWORD(STACK[0x30A8]) + 918691142;
  v7 = v5 < ((v0 - 1324077805) & 0x4EEBC7DE ^ 0x894A49CC);
  v8 = v5 > v6;
  if (v6 < 0x894A4B90 != v7)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((27 * !v8) ^ v0)))();
}

uint64_t sub_10006F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x2A04];
  if (SLODWORD(STACK[0x2A04]) > -603470712)
  {
    if (v9 > 116852871)
    {
      switch(v9)
      {
        case 116852872:
          return (*(v8 + 8 * ((854 * (LODWORD(STACK[0x280C]) == ((a8 - 4258) ^ 0x56096706))) ^ (a8 - 4807))))();
        case 636097859:
          return (*(v8 + 8 * (((LODWORD(STACK[0x280C]) == 1443455194) * LODWORD(STACK[0x20C])) ^ (a8 + 2836))))();
        case 1630835311:
          return (*(v8 + 8 * ((1186 * (LODWORD(STACK[0x280C]) == ((613 * (a8 ^ 0x187B)) ^ 0x56096B23))) ^ (a8 + 529))))();
        default:
          return sub_10001A470();
      }
    }

    else
    {
      switch(v9)
      {
        case -603470711:
          return (*(v8 + 8 * (((LODWORD(STACK[0x280C]) == 1443455194) * (LODWORD(STACK[0x238]) + 2715)) ^ (a8 - 4429))))();
        case -78466363:
          return (*(v8 + 8 * ((2422 * (LODWORD(STACK[0x280C]) == (LODWORD(STACK[0x31C]) ^ 0x5609667D))) ^ (a8 - 4669))))();
        case -28279418:
          LODWORD(STACK[0x4158]) = a8 - 959;
          LODWORD(STACK[0x415C]) = a8 + 2247;
          v11 = STACK[0x2C90] - 0x202F6D26B07708CELL;
          STACK[0x4160] = v11;
          STACK[0x24B8] = 0;
          LODWORD(STACK[0x27FC]) = 1443455193;
          STACK[0x40B8] = &STACK[0x20E4];
          STACK[0x40B0] = v11;
          STACK[0x40A8] = 32;
          STACK[0x40A0] = *(v8 + 8 * SLODWORD(STACK[0x208]));
          return (*(v8 + 8 * (a8 ^ 0x3137)))();
        default:
          return sub_10001A470();
      }
    }
  }

  else if (v9 > -948618940)
  {
    switch(v9)
    {
      case -948618939:
        v12 = *(v8 + 8 * (((LODWORD(STACK[0x280C]) == 1443455194) * ((a8 + 2868) ^ 0x2341)) ^ (a8 - 4669)));
        LODWORD(STACK[0x41F8]) = a8 + 2868;
        return v12();
      case -856558871:
        return (*(v8 + 8 * ((10168 * (LODWORD(STACK[0x280C]) == LODWORD(STACK[0x234]) + 1443448711)) ^ (a8 - 4968))))();
      case -853628571:
        return (*(v8 + 8 * (((LODWORD(STACK[0x280C]) == 1443455194) * (a8 + 1015)) ^ (a8 - 3551))))();
      default:
        return sub_10001A470();
    }
  }

  else
  {
    switch(v9)
    {
      case -1906012735:
        return (*(v8 + 8 * ((15731 * (LODWORD(STACK[0x280C]) == (LODWORD(STACK[0x230]) ^ 0x5609429A))) ^ (a8 + 213))))();
      case -1414555495:
        return (*(v8 + 8 * ((679 * (LODWORD(STACK[0x280C]) == 236 * (a8 ^ 0x1866) + 1443449530)) ^ (a8 - 4807))))();
      case -1187713465:
        return (*(v8 + 8 * (((LODWORD(STACK[0x280C]) == 1443455194) * LODWORD(STACK[0x204])) ^ (a8 + 205))))();
      default:
        return sub_10001A470();
    }
  }
}

uint64_t sub_100070EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  STACK[0x29C8] = 0x2B1A0449E8A6C928;
  LODWORD(STACK[0x2A9C]) = 1443455193;
  STACK[0x1BE0] = 0;
  LODWORD(STACK[0x2440]) = 1443455193;
  LODWORD(STACK[0x2D3C]) = 1443455193;
  return (*(v62 + 8 * ((88 * (LODWORD(STACK[0x30AC]) + ((522 * (a62 ^ 0x2211)) ^ 0xA9F6875F) < ((a62 - 878773918) & 0x3460FCFEu) - 6278)) ^ a62)))();
}

uint64_t sub_100070F90()
{
  v3 = (((v1 - 1443455185) << (((v0 - 56) | 0x3E) - 125)) & 0xEC37D3F6) + ((v1 - 1443455185) ^ 0xF61BE9FB);
  LODWORD(STACK[0x2D3C]) = v3 + (((v0 - 5488) | 0x16) ^ 0x5FED75C0);
  LODWORD(STACK[0x3950]) = 68588956;
  v3 += 1590235076;
  v4 = LODWORD(STACK[0x30A8]) + 39635829;
  v5 = v3 < 0x54E4F9BF;
  v6 = v3 > v4;
  if (v4 < 0x54E4F9BF != v5)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * (v0 | (4 * !v6))))();
}

uint64_t sub_100071160()
{
  v3 = ((2 * (v1 - 1443455185)) & 0xBF9BDBB6) + ((v1 - 1443455185) ^ 0xDFCDEDDB);
  LODWORD(STACK[0x2BDC]) = v3 + 1983607550;
  LODWORD(STACK[0x3B2C]) = 68588956;
  v3 += 2091188116;
  v4 = LODWORD(STACK[0x30A8]) + 166379301;
  v5 = v3 < ((v0 - 4746) | 0x1006u) + 1551029489;
  v6 = v3 > v4;
  if (v5 != v4 < 0x5C72ED6F)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((13 * !v6) ^ v0)))();
}

uint64_t sub_1000712D4()
{
  v3 = v0 + 8916;
  v4 = ((2 * (v1 - 1443455193 + ((55 * (v3 ^ 0x23E0)) ^ 0x1A46) - 564)) & 0xBD9BD9F2) + ((v1 - 1443455193 + ((55 * (v3 ^ 0x23E0)) ^ 0x1A46) - 564) ^ 0xDECDECF9);
  LODWORD(STACK[0x1C2C]) = v4 + 2000384992;
  LODWORD(STACK[0x3868]) = 68588956;
  v4 -= 782387848;
  v5 = LODWORD(STACK[0x30A8]) + 1570993191;
  v6 = v4 < 0xB02BA271;
  v7 = v4 > v5;
  if (v5 < 0xB02BA271 != v6)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * (v7 ^ v3 ^ 1)))();
}

uint64_t sub_10007140C()
{
  v4 = ((2 * ((((v0 - 5360) | 0x102) ^ (v2 - 770)) + v1)) & 0xBF1FF3F2) + (((((v0 - 5360) | 0x102) ^ (v2 - 770)) + v1) ^ 0xDF8FF9F9);
  LODWORD(STACK[0x1FCC]) = v4 + (((v0 - 1684) | 0x81A) ^ 0x76797E9E);
  LODWORD(STACK[0x3A08]) = 68588956;
  v4 -= 77497265;
  v5 = LODWORD(STACK[0x30A8]) - 2006366210;
  v6 = v4 < 0xDAF17648;
  v7 = v4 > v5;
  if (v5 < 0xDAF17648 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((473 * v7) ^ v0)))();
}

uint64_t sub_10007155C()
{
  v3 = v1 ^ 0xD8A;
  v4 = ((2 * (v0 - 1443461287 + (v1 ^ 0xD8A) - 588 - 168)) & 0xEE7ECDB6) + (((v1 ^ 0xD8A) - 6071) ^ 0x773F65C8 ^ (v0 - 1443461287 + (v1 ^ 0xD8A) - 588 - 168));
  LODWORD(STACK[0x295C]) = v4 - 557188610;
  LODWORD(STACK[0x3B68]) = 68588956;
  v4 += 1581212906;
  v5 = LODWORD(STACK[0x30A8]) - 2097767045;
  v6 = v4 < 0xD57ECBC5;
  v7 = v4 > v5;
  if (v5 < 0xD57ECBC5 != v6)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((56 * !v7) ^ v3)))();
}

uint64_t sub_1000716AC@<X0>(int a1@<W8>)
{
  v4 = (((a1 ^ 0x1BA2) - 1093422788) & (2 * (v2 + v1 + 8))) + ((v2 + v1 + 8) ^ 0x5F69E6DD);
  LODWORD(STACK[0x2904]) = v4 - 157320708;
  LODWORD(STACK[0x3918]) = 68588956;
  v4 -= 654027035;
  v5 = LODWORD(STACK[0x30A8]) - 437907592;
  v6 = v4 < ((255 * (a1 ^ 0x7DF)) ^ 0x386E3F3Fu);
  v7 = v4 > v5;
  if (v5 < 0x386E3DC2 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((236 * !v7) ^ a1 ^ 0x1BA2)))();
}

uint64_t sub_100071814@<X0>(unsigned int a1@<W8>)
{
  v5 = (((v2 + v1 + 8) << (a1 + 98)) & 0xEE36FFBE) + ((v2 + v1 + 8) ^ 0xF71B7FDF);
  LODWORD(STACK[0x2ABC]) = v5 + 1592647930;
  LODWORD(STACK[0x3A70]) = 68588956;
  v5 -= 487577071;
  v6 = LODWORD(STACK[0x30A8]) - 2021426266;
  v7 = v5 < ((a1 + 3551) ^ 0xDA0BB18E);
  v8 = v5 > v6;
  if (v6 < 0xDA0BA9F0 != v7)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((!v8 * v3) ^ a1)))();
}

uint64_t sub_100071A20@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W6>, int a5@<W8>)
{
  v10 = (a5 << ((3 * (v6 ^ a4)) ^ v7)) + 1671613158;
  v11 = (a2 & (2 * v10)) + (v10 ^ a1);
  if (v5 < v8 != v11 + a3 < v8)
  {
    v12 = v11 + a3 < v8;
  }

  else
  {
    v12 = v11 + a3 > v5;
  }

  return (*(v9 + 8 * (((2 * !v12) | (4 * !v12)) ^ v6)))();
}

uint64_t sub_100071A9C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x265C]) = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0x3EE5)))(v1 + ((v2 - 5936) | 0x184Au) - 1597944893);
  v5 = STACK[0x1708];
  STACK[0x38D0] = v4;
  return (*(v5 + 8 * ((216 * ((((v2 - 5984) ^ (v4 == 0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_100071BE4()
{
  v2 = v0 + 2342;
  v3 = v0 - 6192;
  STACK[0x1F08] = *(v1 + 8 * v3);
  return (*(v1 + 8 * (v2 ^ v3 ^ 0x28A6)))();
}

uint64_t sub_100071C30()
{
  if (v2)
  {
    v4 = (((v1 + 714) ^ v0) ^ 0x677Du) > 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * (v1 - 1371)) | v1)))();
}

uint64_t sub_100071CE8()
{
  STACK[0x1900] = STACK[0x2620];
  v3 = *(v2 + 8 * (v1 + 2232));
  STACK[0x1880] = v0;
  return v3();
}

uint64_t sub_100071D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (v6)
  {
    v10 = 462745883;
  }

  else
  {
    v10 = *(v8 - 1411607463) + 1;
  }

  *(v8 - 1411607463) = v10;
  STACK[0x1B28] -= 16;
  return (*(v9 + 8 * (v5 ^ 0x13D5)))(a1, v7, LODWORD(STACK[0x18B0]), a4, a5, 238, 4294960097, 58);
}

uint64_t sub_100071E64@<X0>(int a1@<W2>, int a2@<W5>, int a3@<W7>, char a4@<W8>)
{
  v8 = (v5 ^ 0x4133EC62u) >> a4;
  v9 = v8 << (49 * (v4 ^ 0x11) + 116);
  LOBYTE(v8) = v8 + 119;
  *(v6 + (a1 - 849614933)) = v8 - (v9 & 0xEE);
  return (*(v7 + 8 * ((((((v4 - 2190) ^ (a1 - ((v9 & a2) != v8) == 849614932)) & 1) == 0) * a3) ^ v4)))();
}

uint64_t sub_100071F24(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x18B0]) = a3;
  STACK[0x1B28] += 16;
  STACK[0x1890] = *(&off_1002DD400 + v3 - 6267);
  STACK[0x4568] = 0x5901FF70C0094FAFLL;
  v6 = *(&off_1002DD400 + v3 - 5730);
  STACK[0x18A0] = v6;
  v7 = v4 - 240;
  v8 = 1110906037 * ((((v4 - 240) | 0xFFA5719371F3492FLL) - ((v4 - 240) & 0xFFA5719371F3492FLL)) ^ 0x74625C36F8B4259FLL);
  *(v7 + 8) = *(v6 - 1411607463) - v8;
  *v7 = v8;
  *(v7 + 32) = v8 + 462745883;
  *(v7 + 16) = ((v3 + 1374389839) ^ 0x1D) - v8;
  *(v7 + 20) = -590966595 - v8 + v3;
  *(v7 + 40) = ((v3 + 1374389839) ^ 0x4C6) + v8;
  *(v7 + 24) = (v3 + 1374389839) ^ v8;
  v9 = (*(v5 + 8 * (v3 ^ 0x31C2)))(v4 - 240);
  return (*(STACK[0x1708] + 8 * *(v4 - 212)))(v9);
}

uint64_t sub_100072084(uint64_t a1, uint64_t a2)
{
  STACK[0x1860] = v5;
  v6 = v2 - 3586;
  v7 = v2;
  STACK[0x1900] = (*(a2 + 8 * (v2 ^ 0x31FF)))(4);
  v8 = (*(STACK[0x1708] + 8 * (v7 + 4373)))();
  v9 = STACK[0x1708];
  *v3 = v8 - 1054425555 - ((v8 << LODWORD(STACK[0x1500])) & v4);
  return (*(v9 + 8 * v6))(1812423328, 6251, 38);
}

uint64_t sub_100072128@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W8>)
{
  v12 = ((a4 + (~v6 >> 30) - ((~v6 >> 29) & 2)) ^ v6) * (((v9 + a2) | 0x400) + a1);
  *(v10 + 4 * v7) = a5 + v12 - ((v5 + 2 * v12) & v11);
  return (*(v8 + 8 * (((v7 != 623) * a3) ^ v9)))();
}

uint64_t sub_1000721A0()
{
  v3 = (*(v0 + 8 * (v1 ^ 0xF56)))();
  v2[3] = v3 - 2007465191 - ((2 * v3) & 0x10B10632);
  v4 = (*(STACK[0x1708] + 8 * (v1 ^ 0xF56)))();
  v2[1] = v4 - 2007465191 - (((v1 - 3655) ^ 0x10B11E4C) & (2 * v4));
  v5 = (*(STACK[0x1708] + 8 * (v1 ^ 0xF56)))();
  v2[2] = v5 - 2007465191 - ((2 * v5) & 0x10B10632);
  v6 = (*(STACK[0x1708] + 8 * (v1 + 718)))();
  v7 = STACK[0x1708];
  *v2 = v6 - 2007465191 - ((2 * v6) & 0x10B10632);
  LODWORD(STACK[0x18F0]) = STACK[0x1900] + 1;
  return (*(v7 + 8 * v1))();
}

uint64_t sub_100072358(uint64_t a1, int a2)
{
  v11 = v8 - 552715357;
  v12 = (v8 + 449414866);
  v13 = v8 + 1;
  v14 = (a2 + (~*(v3 + 4 * v11) >> 30) - ((~*(v3 + 4 * v11) >> 29) & 2)) ^ *(v3 + 4 * v11);
  v15 = (*(v6 + 4 * v7) ^ v5) + v7 + ((a2 + 1664525 * v14 - ((3329050 * v14) & v4)) ^ *(v3 + 4 * (v13 - 552715357)));
  *(v3 + 4 * (v13 - 552715357)) = v15 + a2 - (v4 & (2 * v15));
  v16 = STACK[0x1678];
  v17 = v10 - 240;
  *(v17 + 28) = ((v9 + 2049249562) ^ 0x1F8) + STACK[0x1678];
  *(v17 + 16) = 1002130221 - v16;
  *(v17 + 32) = v12 - v16;
  *(v17 + 8) = v9 + 2049249562 + v16;
  *(v17 + 12) = (v9 + 2049250539) ^ v16;
  *v17 = -v16;
  *(v17 + 4) = v16 + v9 + 1527339413;
  v18 = (*(v2 + 8 * (v9 ^ 0x31A6)))(v10 - 240);
  return (*(STACK[0x1708] + 8 * *(v10 - 216)))(v18);
}

uint64_t sub_100072504@<X0>(int a1@<W8>)
{
  v5 = 1084270361 * ((~(v2 | 0xD5C3FF9C67E7AD68) + (v2 & 0xD5C3FF9C67E7AD68)) ^ 0x69B0CF915431AD8DLL);
  *(v2 + 24) = v5 ^ 3;
  *v2 = (v3 + 1) - v5;
  *(v2 + 40) = (a1 + 1423678102) ^ v5;
  v6 = v5 + a1 + 1423678102;
  *(v2 + 8) = v6 + 1220;
  *(v2 + 12) = v6 + 81;
  *(v2 + 32) = -1268968379 - v5 + a1;
  *(v2 + 36) = 1 - v5;
  v7 = (*(v1 + 8 * (a1 + 4401)))(v4 - 240);
  return (*(STACK[0x1708] + 8 * *(v2 + 16)))(v7);
}

uint64_t sub_1000726B4@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = v5;
  v8 = v5 + 1;
  v9 = *(v3 + 4 * (v7 - 552715357));
  v10 = (a1 + (~v9 >> 30) - ((~v9 >> 29) & 2)) ^ v9;
  v11 = ((a1 + 1566083941 * v10 - ((-1162799414 * v10) & v4)) ^ *(v3 + 4 * (v8 - 552715357))) - v7;
  *(v3 + 4 * (v8 - 552715357)) = v11 - ((2 * v11 + 1105430712) & v4) - 501710199;
  v12 = (v7 - 1664142783);
  v13 = v6 - 240;
  v14 = 199319723 * ((~((v6 - 240) | 0xA4E5AEB3932487C5) + ((v6 - 240) & 0xA4E5AEB3932487C5)) ^ 0x7CF7F5D5D92B96F2);
  *(v13 + 16) = 3183539868u - v14;
  v15 = a2 + 1558278314 + v14;
  *(v13 + 28) = v15 + 60;
  *(v13 + 32) = v12 - v14;
  *(v13 + 8) = v15;
  *(v13 + 12) = v14 ^ (a2 + 1558278314) ^ 0x4EA;
  *v13 = -199319723 * ((~((v6 - 240) | 0x932487C5) + ((v6 - 240) & 0x932487C5)) ^ 0xD92B96F2);
  *(v13 + 4) = v14 + a2 + 1527339413;
  v16 = (*(v2 + 8 * (a2 ^ 0x31A6)))(v6 - 240);
  return (*(STACK[0x1708] + 8 * *(v6 - 216)))(v16);
}

uint64_t sub_1000728A8()
{
  if (((STACK[0x1860] - v2) | (v2 - STACK[0x1860])) <= ((v2 + 2041056612) & 0x6AC319FE) - 6271)
  {
    v3 = 1093058093;
  }

  else
  {
    v3 = 1093058094;
  }

  *v1 = v3 - (v2 & 0x606904C5);
  v4 = (*(v0 + 8 * (v2 - 462735344)))(STACK[0x1900]);
  return (*(STACK[0x1708] + 8 * (v2 ^ 0x1B94F5C0)))(v4);
}

uint64_t sub_1000729B8@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, unsigned int a4@<W5>, unsigned int a5@<W6>, unsigned int a6@<W7>, int a7@<W8>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>)
{
  v14 = v10 + 4 * v9;
  v15 = v9 + 4;
  a8.i64[0] = *(v14 + 4);
  a8.i32[2] = *(v14 + 12);
  v16 = vextq_s8(a9, a8, 0xCuLL);
  a8.i32[3] = *(v10 + 4 * v15);
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a8, v13), vandq_s8(v16, v12)), 1uLL), vdupq_n_s32(a5));
  v18.i32[0] = *(a3 + 4 * ((*(v14 + 4) & 1) == 0));
  v18.i32[1] = *(a3 + 4 * (a8.i32[1] & ((a7 + 1) ^ a2) ^ 1u));
  v18.i32[2] = *(a3 + 4 * (~a8.i32[2] & 1));
  v18.i32[3] = *(a3 + 4 * ((a8.i8[12] & 1) == 0));
  *v14 = veorq_s8(veorq_s8(veorq_s8(*(v14 + 1588), v18), vdupq_n_s32(a4)), vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), vdupq_n_s32(v11))), vdupq_n_s32(a6)));
  return (*(a1 + 8 * (((v15 == 224) | (2 * (v15 == 224))) ^ a7)))();
}

uint64_t sub_100072A94(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v12 = (v11 + 4 * v10);
  v13 = v10 + 1;
  *v12 = v12[397] ^ a6 ^ *(a4 + 4 * ((*(v11 + 4 * v13) & 1) == 0)) ^ ((a7 ^ ((*(v11 + 4 * v13) & 0x7FFFFFFE | v9 & 0x80000000) >> 1)) + a8 - (((v8 + 2035) ^ a5) & (2 * (a7 ^ ((*(v11 + 4 * v13) & 0x7FFFFFFE | v9 & 0x80000000) >> 1)))));
  return (*(a2 + 8 * (((v13 == 227) * a1) ^ v8)))();
}

uint64_t sub_100072B00(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v8 = (v7 + 908);
  v9 = vld1q_dup_f32(v8);
  return (*(a6 + 8 * v6))(a1, a2, a3, a4, v9);
}

uint64_t sub_100072B3C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int32x4_t a7@<Q2>, int8x16_t a8@<Q3>, int8x16_t a9@<Q4>, int8x16_t a10@<Q5>)
{
  a10.i32[0] = *(v12 + 912);
  a10.i32[1] = *(v12 + a4);
  a10.i32[2] = *(v12 + 920);
  v15 = vextq_s8(a9, a10, 0xCuLL);
  a10.i32[3] = *(v12 + 924);
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a10, v14), vandq_s8(v15, v13)), 1uLL), a5);
  v17.i32[0] = *(a3 + 4 * ((a10.i8[0] & 1) == 0));
  v17.i32[1] = *(a3 + 4 * ((a10.i8[4] & 1) == 0));
  v17.i32[2] = *(a3 + 4 * (~a10.i32[2] & 1));
  v17.i32[3] = *(a3 + 4 * (~a10.i32[3] & 1));
  *(v12 + 908) = veorq_s8(veorq_s8(veorq_s8(*v12, v17), a8), vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a6)), a7));
  return (*(a1 + 8 * (((v11 == 0) * a2) ^ v10)))();
}

uint64_t sub_100072C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = v8 - 595;
  v14 = v8 + 296100094;
  v15 = a7 ^ ((*v9 & 0x7FFFFFFE | v9[623] & 0x80000000) >> 1);
  v9[623] = v9[396] ^ a6 ^ *(a4 + 4 * ((*v9 & 1) == 0)) ^ (v15 + a8 - (v10 & (2 * v15)));
  if ((v11 - 718413012) >= 0xFFFFFD90)
  {
    v16 = v11;
  }

  else
  {
    v16 = 718412388;
  }

  *(STACK[0x1890] - 515823518) = v16 + 1;
  v17 = (*(STACK[0x18A0] - 1411607463) + 283813986);
  v18 = STACK[0x1568];
  v19 = v12 - 240;
  *(v19 + 8) = (v14 ^ 0x4B8) + STACK[0x1568];
  *(v19 + 12) = (v14 ^ 0x58) + v18;
  *v19 = STACK[0x1560];
  *(v19 + 32) = -1268968379 - v18 + v13;
  *(v19 + 36) = 1 - v18;
  *(v19 + 24) = v17 ^ v18;
  *(v19 + 40) = v14 ^ v18;
  v20 = (*(a2 + 8 * (v13 ^ 0x31D1)))(v12 - 240);
  return (*(STACK[0x1708] + 8 * *(v12 - 224)))(v20);
}

uint64_t sub_100072DE8()
{
  v1 = LODWORD(STACK[0x12B0]) | 0x481;
  v2 = STACK[0x12B4];
  STACK[0x1F08] = *(v0 + 8 * SLODWORD(STACK[0x12B4]));
  return (*(v0 + 8 * ((v1 + 7231) ^ v2)))();
}

uint64_t sub_100072F50()
{
  v1 = STACK[0x1700];
  LODWORD(STACK[0x31B4]) += (STACK[0x1700] ^ 0x1D3B) - 1277465655 + LODWORD(STACK[0x2544]);
  return (*(v0 + 8 * (v1 - 1325)))();
}

uint64_t sub_100073104@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v5 = v1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || v3 == (v2 ^ 0x48252076 ^ (v2 + 830317916) & 0xCE825FFF);
  return (*(v4 + 8 * (v7 | (v7 << 7) | v2)))(0);
}

uint64_t sub_10007325C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v3 + v5 - 1996198891 + a3 + 1317;
  v8 = v4 - 1763130670;
  v9 = v7 < (a3 ^ 0x397u) - 552741506;
  v10 = v7 > v8;
  v11 = (v8 < 0xDF0DEDFC) ^ v9;
  v12 = v10;
  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  return (*(v6 + 8 * ((1962 * (v13 ^ 1)) ^ a3)))(0);
}