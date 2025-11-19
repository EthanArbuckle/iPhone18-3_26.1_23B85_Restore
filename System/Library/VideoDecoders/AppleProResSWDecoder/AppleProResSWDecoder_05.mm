uint32x4_t *from_444_to_r210<8,8,(AlphaOutputMethod)0,true>(uint32x4_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3E662551u);
    v8 = vdupq_n_s32(0xBD88D377);
    v9 = vdupq_n_s32(0xBCDB0243);
    v10 = vdupq_n_s32(0x3E879762u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v147 = a2 + 8;
    v148 = a2 + 32;
    v149 = a2 + 40;
    v150 = a2 + 64;
    v151 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3E4CE46Du);
    v8 = vdupq_n_s32(0xBDD0BB5A);
    v9 = vdupq_n_s32(0xBD492C18);
    v10 = vdupq_n_s32(0x3E817B8Au);
    if (a4 <= 8)
    {
      v152 = 0;
    }

    else
    {
      v152 = a4 - 8;
    }

    v12 = a4 - v152;
    if (v152)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3E578094u);
  v8 = vdupq_n_s32(0xBDA6FF94);
  v9 = vdupq_n_s32(0xBCC062D8);
  v10 = vdupq_n_s32(0x3E897A02u);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x3E157ABDu);
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v18 = vaddq_s16(*a2, v15);
    v19 = a2[32];
    v20 = a2[40];
    v21 = vcltzq_s16(v18);
    v22 = vzip1q_s16(v18, v21);
    v23 = vzip2q_s16(v18, v21);
    v24 = vcltzq_s16(v19);
    v25 = vcvtq_f32_s32(vzip1q_s16(v19, v24));
    v26 = vcvtq_f32_s32(vzip2q_s16(v19, v24));
    v27 = vcltzq_s16(v20);
    v28 = vcvtq_f32_s32(vzip1q_s16(v20, v27));
    v29 = vcvtq_f32_s32(vzip2q_s16(v20, v27));
    v30 = vmulq_f32(vcvtq_f32_s32(v22), v16);
    v31 = vaddq_f32(v30, vmulq_f32(v7, v28));
    v32 = vaddq_f32(v30, vmulq_f32(v9, v25));
    v33 = vaddq_f32(v30, vmulq_f32(v10, v25));
    v34 = vmulq_f32(vcvtq_f32_s32(v23), v16);
    v35 = vaddq_f32(v32, vmulq_f32(v8, v28));
    v36 = vaddq_f32(v34, vmulq_f32(v7, v29));
    v37 = vaddq_f32(vaddq_f32(v34, vmulq_f32(v9, v26)), vmulq_f32(v8, v29));
    v38 = vaddq_f32(v34, vmulq_f32(v10, v26));
    v39 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v31)), vcvtnq_s32_f32(v36));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), vcvtnq_s32_f32(v37));
    v41 = a2 + 1;
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v33)), vcvtnq_s32_f32(v38));
    v43 = vminq_s16(vmaxq_s16(v39, 0), v17);
    v44 = vminq_s16(vmaxq_s16(v40, 0), v17);
    v45 = vminq_s16(vmaxq_s16(v42, 0), v17);
    v46 = vshlq_n_s32(vzip1q_s16(v43, v7), 0x16uLL);
    v47 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v44, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v43, v7), 0x16uLL));
    v48 = (result + 8 * a3);
    v49 = vrev16q_s8(vorrq_s8(vzip1q_s16(v45, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v44, 0), 0xCuLL), v46), 2uLL)));
    v50 = vrev16q_s8(vorrq_s8(vzip2q_s16(v45, 0), vshrq_n_u32(v47, 2uLL)));
    *result = vsraq_n_u32(vshlq_n_s32(v49, 0x10uLL), v49, 0x10uLL);
    result[1] = vsraq_n_u32(vshlq_n_s32(v50, 0x10uLL), v50, 0x10uLL);
    v51 = vaddq_s16(a2[8], v15);
    v52 = a2[64];
    v53 = a2[72];
    v54 = vcltzq_s16(v51);
    v55 = vzip1q_s16(v51, v54);
    v56 = vzip2q_s16(v51, v54);
    v57 = vcvtq_f32_s32(v55);
    v58 = vcltzq_s16(v52);
    v59 = vcvtq_f32_s32(vzip1q_s16(v52, v58));
    v60 = vcvtq_f32_s32(vzip2q_s16(v52, v58));
    v61 = vcltzq_s16(v53);
    v62 = vcvtq_f32_s32(vzip1q_s16(v53, v61));
    v63 = vcvtq_f32_s32(vzip2q_s16(v53, v61));
    v64 = vmulq_f32(v57, v16);
    v65 = vaddq_f32(v64, vmulq_f32(v9, v59));
    v66 = vaddq_f32(v64, vmulq_f32(v7, v62));
    v67 = vaddq_f32(v64, vmulq_f32(v10, v59));
    v68 = vmulq_f32(vcvtq_f32_s32(v56), v16);
    v69 = vaddq_f32(v68, vmulq_f32(v7, v63));
    v70 = vaddq_f32(vaddq_f32(v68, vmulq_f32(v9, v60)), vmulq_f32(v8, v63));
    v71 = vaddq_f32(v68, vmulq_f32(v10, v60));
    v72 = vcvtnq_s32_f32(v66);
    v73 = vcvtnq_s32_f32(v69);
    v74 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v65, vmulq_f32(v8, v62)))), vcvtnq_s32_f32(v70));
    v75 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v67)), vcvtnq_s32_f32(v71));
    v76 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(v72), v73), 0), v17);
    v77 = vminq_s16(vmaxq_s16(v74, 0), v17);
    v78 = vminq_s16(vmaxq_s16(v75, 0), v17);
    v79 = vshlq_n_s32(vzip1q_s16(v76, v7), 0x16uLL);
    v80 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v77, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v76, v7), 0x16uLL));
    v81 = vrev16q_s8(vorrq_s8(vzip1q_s16(v78, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v77, 0), 0xCuLL), v79), 2uLL)));
    v82 = vrev16q_s8(vorrq_s8(vzip2q_s16(v78, 0), vshrq_n_u32(v80, 2uLL)));
    result[2] = vsraq_n_u32(vshlq_n_s32(v81, 0x10uLL), v81, 0x10uLL);
    result[3] = vsraq_n_u32(vshlq_n_s32(v82, 0x10uLL), v82, 0x10uLL);
    --v12;
    v83 = vaddq_s16(a2[16], v15);
    v84 = a2[48];
    v85 = a2[56];
    v86 = vcltzq_s16(v83);
    v87 = vzip1q_s16(v83, v86);
    v88 = vzip2q_s16(v83, v86);
    v89 = vcltzq_s16(v84);
    v90 = vcvtq_f32_s32(vzip1q_s16(v84, v89));
    v91 = vzip2q_s16(v84, v89);
    v92 = vcvtq_f32_s32(v87);
    v93 = vcvtq_f32_s32(v91);
    v94 = vcltzq_s16(v85);
    v95 = vcvtq_f32_s32(vzip1q_s16(v85, v94));
    v96 = vcvtq_f32_s32(vzip2q_s16(v85, v94));
    v97 = vmulq_f32(v92, v16);
    v98 = vaddq_f32(v97, vmulq_f32(v9, v90));
    v99 = vaddq_f32(v97, vmulq_f32(v7, v95));
    v100 = vaddq_f32(v97, vmulq_f32(v10, v90));
    v101 = vmulq_f32(vcvtq_f32_s32(v88), v16);
    v102 = vaddq_f32(v98, vmulq_f32(v8, v95));
    v103 = vaddq_f32(v101, vmulq_f32(v7, v96));
    v104 = vaddq_f32(v101, vmulq_f32(v9, v93));
    v105 = vaddq_f32(v101, vmulq_f32(v10, v93));
    v106 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v99)), vcvtnq_s32_f32(v103));
    v107 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v102)), vcvtnq_s32_f32(vaddq_f32(v104, vmulq_f32(v8, v96))));
    v108 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v100)), vcvtnq_s32_f32(v105));
    v109 = vminq_s16(vmaxq_s16(v106, 0), v17);
    v110 = vminq_s16(vmaxq_s16(v107, 0), v17);
    v111 = vminq_s16(vmaxq_s16(v108, 0), v17);
    v112 = vshlq_n_s32(vzip1q_s16(v109, v7), 0x16uLL);
    v113 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v110, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v109, v7), 0x16uLL));
    v114 = vrev16q_s8(vorrq_s8(vzip1q_s16(v111, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v110, 0), 0xCuLL), v112), 2uLL)));
    v115 = vrev16q_s8(vorrq_s8(vzip2q_s16(v111, 0), vshrq_n_u32(v113, 2uLL)));
    *v48 = vsraq_n_u32(vshlq_n_s32(v114, 0x10uLL), v114, 0x10uLL);
    v48[1] = vsraq_n_u32(vshlq_n_s32(v115, 0x10uLL), v115, 0x10uLL);
    v116 = vaddq_s16(a2[24], v15);
    v117 = a2[80];
    v118 = a2[88];
    v119 = vcltzq_s16(v116);
    v120 = vzip1q_s16(v116, v119);
    v121 = vzip2q_s16(v116, v119);
    v122 = vcltzq_s16(v117);
    v123 = vcvtq_f32_s32(vzip1q_s16(v117, v122));
    v124 = vcvtq_f32_s32(vzip2q_s16(v117, v122));
    v125 = vcltzq_s16(v118);
    v126 = vcvtq_f32_s32(vzip1q_s16(v118, v125));
    v127 = vcvtq_f32_s32(vzip2q_s16(v118, v125));
    v128 = vmulq_f32(vcvtq_f32_s32(v120), v16);
    v129 = vaddq_f32(v128, vmulq_f32(v7, v126));
    v130 = vaddq_f32(v128, vmulq_f32(v9, v123));
    v131 = vaddq_f32(v128, vmulq_f32(v10, v123));
    v132 = vmulq_f32(vcvtq_f32_s32(v121), v16);
    v133 = vaddq_f32(v130, vmulq_f32(v8, v126));
    v134 = vaddq_f32(v132, vmulq_f32(v7, v127));
    v135 = vaddq_f32(vaddq_f32(v132, vmulq_f32(v9, v124)), vmulq_f32(v8, v127));
    v136 = vaddq_f32(v132, vmulq_f32(v10, v124));
    v137 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v129)), vcvtnq_s32_f32(v134));
    v138 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v133)), vcvtnq_s32_f32(v135));
    result = (result + a3);
    v139 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v131)), vcvtnq_s32_f32(v136));
    v140 = vminq_s16(vmaxq_s16(v137, 0), v17);
    v141 = vminq_s16(vmaxq_s16(v138, 0), v17);
    v142 = vminq_s16(vmaxq_s16(v139, 0), v17);
    v143 = vshlq_n_s32(vzip1q_s16(v140, v7), 0x16uLL);
    v144 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v141, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v140, v7), 0x16uLL));
    v145 = vrev16q_s8(vorrq_s8(vzip1q_s16(v142, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v141, 0), 0xCuLL), v143), 2uLL)));
    v146 = vrev16q_s8(vorrq_s8(vzip2q_s16(v142, 0), vshrq_n_u32(v144, 2uLL)));
    v48[2] = vsraq_n_u32(vshlq_n_s32(v145, 0x10uLL), v145, 0x10uLL);
    v48[3] = vsraq_n_u32(vshlq_n_s32(v146, 0x10uLL), v146, 0x10uLL);
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v147 = v41 + 8;
  v148 = v41 + 32;
  v149 = v41 + 40;
  v150 = v41 + 64;
  v151 = v41 + 72;
  a2 = v41;
  if (v12 >= 1)
  {
LABEL_21:
    v153 = result + 2;
    v154 = v12 + 1;
    v155.i64[0] = 0xE000E000E000E00;
    v155.i64[1] = 0xE000E000E000E00;
    v156 = vdupq_n_s32(0x3E157ABDu);
    v157.i64[0] = 0xFC00FC00FC00FC00;
    v157.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v158 = *a2++;
      v159 = v158;
      v160 = *v148++;
      v161 = v160;
      v162 = *v149++;
      v163 = vaddq_s16(v159, v155);
      v164 = vcltzq_s16(v163);
      v165 = vzip1q_s16(v163, v164);
      v166 = vzip2q_s16(v163, v164);
      v167 = vcltzq_s16(v161);
      v168 = vcvtq_f32_s32(vzip1q_s16(v161, v167));
      v169 = vcvtq_f32_s32(vzip2q_s16(v161, v167));
      v170 = vcltzq_s16(v162);
      v171 = vcvtq_f32_s32(vzip1q_s16(v162, v170));
      v172 = vcvtq_f32_s32(vzip2q_s16(v162, v170));
      v173 = vmulq_f32(vcvtq_f32_s32(v165), v156);
      v174 = vaddq_f32(v173, vmulq_f32(v7, v171));
      v175 = vaddq_f32(v173, vmulq_f32(v9, v168));
      v176 = vaddq_f32(v173, vmulq_f32(v10, v168));
      v177 = vmulq_f32(vcvtq_f32_s32(v166), v156);
      v178 = vaddq_f32(v177, vmulq_f32(v7, v172));
      v179 = vaddq_f32(vaddq_f32(v177, vmulq_f32(v9, v169)), vmulq_f32(v8, v172));
      v180 = vaddq_f32(v177, vmulq_f32(v10, v169));
      v181 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v174)), vcvtnq_s32_f32(v178));
      v182 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v175, vmulq_f32(v8, v171)))), vcvtnq_s32_f32(v179));
      v183 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v176)), vcvtnq_s32_f32(v180));
      v184 = vminq_s16(vmaxq_s16(v181, 0), v157);
      v185 = vminq_s16(vmaxq_s16(v182, 0), v157);
      v186 = vminq_s16(vmaxq_s16(v183, 0), v157);
      v187 = vshlq_n_s32(vzip1q_s16(v184, v7), 0x16uLL);
      v188 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v185, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v184, v7), 0x16uLL));
      v189 = vrev16q_s8(vorrq_s8(vzip1q_s16(v186, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v185, 0), 0xCuLL), v187), 2uLL)));
      v190 = vrev16q_s8(vorrq_s8(vzip2q_s16(v186, 0), vshrq_n_u32(v188, 2uLL)));
      v153[-2] = vsraq_n_u32(vshlq_n_s32(v189, 0x10uLL), v189, 0x10uLL);
      v153[-1] = vsraq_n_u32(vshlq_n_s32(v190, 0x10uLL), v190, 0x10uLL);
      v191 = *v147++;
      v192 = vaddq_s16(v191, v155);
      v193 = *v150++;
      v194 = v193;
      v195 = *v151++;
      v196 = vcltzq_s16(v192);
      v197 = vzip1q_s16(v192, v196);
      v198 = vzip2q_s16(v192, v196);
      v199 = vcltzq_s16(v194);
      v200 = vcvtq_f32_s32(vzip1q_s16(v194, v199));
      v201 = vcvtq_f32_s32(vzip2q_s16(v194, v199));
      v202 = vcltzq_s16(v195);
      v203 = vcvtq_f32_s32(vzip1q_s16(v195, v202));
      v204 = vcvtq_f32_s32(vzip2q_s16(v195, v202));
      v205 = vmulq_f32(vcvtq_f32_s32(v197), v156);
      v206 = vaddq_f32(v205, vmulq_f32(v7, v203));
      v207 = vaddq_f32(v205, vmulq_f32(v9, v200));
      v208 = vaddq_f32(v205, vmulq_f32(v10, v200));
      v209 = vaddq_f32(v207, vmulq_f32(v8, v203));
      v210 = vmulq_f32(vcvtq_f32_s32(v198), v156);
      v211 = vaddq_f32(v210, vmulq_f32(v7, v204));
      v212 = vaddq_f32(vaddq_f32(v210, vmulq_f32(v9, v201)), vmulq_f32(v8, v204));
      v213 = vaddq_f32(v210, vmulq_f32(v10, v201));
      v214 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v206)), vcvtnq_s32_f32(v211));
      v215 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v209)), vcvtnq_s32_f32(v212));
      v216 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v208)), vcvtnq_s32_f32(v213));
      v217 = vminq_s16(vmaxq_s16(v214, 0), v157);
      v218 = vminq_s16(vmaxq_s16(v215, 0), v157);
      v219 = vminq_s16(vmaxq_s16(v216, 0), v157);
      v220 = vshlq_n_s32(vzip1q_s16(v217, v7), 0x16uLL);
      v221 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v218, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v217, v7), 0x16uLL));
      v222 = vrev16q_s8(vorrq_s8(vzip1q_s16(v219, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v218, 0), 0xCuLL), v220), 2uLL)));
      v223 = vrev16q_s8(vorrq_s8(vzip2q_s16(v219, 0), vshrq_n_u32(v221, 2uLL)));
      *v153 = vsraq_n_u32(vshlq_n_s32(v222, 0x10uLL), v222, 0x10uLL);
      v153[1] = vsraq_n_u32(vshlq_n_s32(v223, 0x10uLL), v223, 0x10uLL);
      v153 = (v153 + a3);
      --v154;
    }

    while (v154 > 1);
  }

  return result;
}

int8x16_t *from_444_to_b64a<8,8,(AlphaOutputMethod)1,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x41665E03u);
    v8 = vdupq_n_s32(0xC088F52C);
    v9 = vdupq_n_s32(0xBFDB3836);
    v10 = vdupq_n_s32(0x4187B8C9u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v143 = a2 + 8;
    v144 = a2 + 32;
    v145 = a2 + 40;
    v146 = a2 + 64;
    v147 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x414D16E6u);
    v8 = vdupq_n_s32(0xC0D0EEC4);
    v9 = vdupq_n_s32(0xC0495DA6);
    v10 = vdupq_n_s32(0x41819B6Fu);
    if (a4 <= 8)
    {
      v148 = 0;
    }

    else
    {
      v148 = a4 - 8;
    }

    v12 = a4 - v148;
    if (v148)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x4157B5AAu);
  v8 = vdupq_n_s32(0xC0A728B7);
  v9 = vdupq_n_s32(0xBFC0923C);
  v10 = vdupq_n_s32(0x41899BDFu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x41159F90u);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v18.i64[0] = 0x8000800080008000;
  v18.i64[1] = 0x8000800080008000;
  do
  {
    v19 = (a5 + 8 * a6 + 16);
    v20 = (result + 8 * a3);
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[32];
    v23 = a2[40];
    v24 = vcltzq_s16(v21);
    v25 = vzip1q_s16(v21, v24);
    v26 = vzip2q_s16(v21, v24);
    v27 = vcltzq_s16(v22);
    v28 = vcvtq_f32_s32(vzip1q_s16(v22, v27));
    v29 = vzip2q_s16(v22, v27);
    v30 = vcvtq_f32_s32(v25);
    v31 = vcvtq_f32_s32(v29);
    v32 = vcltzq_s16(v23);
    v33 = vcvtq_f32_s32(vzip1q_s16(v23, v32));
    v34 = vcvtq_f32_s32(vzip2q_s16(v23, v32));
    v35 = vmulq_f32(v30, v16);
    v36 = vaddq_f32(v35, vmulq_f32(v9, v28));
    v37 = vaddq_f32(v35, vmulq_f32(v7, v33));
    v38 = vaddq_f32(v35, vmulq_f32(v10, v28));
    v39 = vmulq_f32(vcvtq_f32_s32(v26), v16);
    v40 = vaddq_f32(v39, vmulq_f32(v7, v34));
    v41 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v38), v17)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v39, vmulq_f32(v10, v31))), v17));
    v42 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v36, vmulq_f32(v8, v33))), v17)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v39, vmulq_f32(v9, v31)), vmulq_f32(v8, v34))), v17)), v18);
    v43 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v37), v17)), vaddq_s32(vcvtnq_s32_f32(v40), v17)), v18);
    v44 = veorq_s8(v41, v18);
    v45 = vzip1q_s16(v43, v44);
    v46 = vzip1q_s16(*a5, v42);
    v47 = vzip2q_s16(*a5, v42);
    v48 = vzip2q_s16(v43, v44);
    *result = vrev16q_s8(vzip1q_s16(v46, v45));
    result[1] = vrev16q_s8(vzip2q_s16(v46, v45));
    result[2] = vrev16q_s8(vzip1q_s16(v47, v48));
    result[3] = vrev16q_s8(vzip2q_s16(v47, v48));
    v49 = vaddq_s16(a2[8], v15);
    v50 = a2[64];
    v51 = a5[1];
    v52 = a2[72];
    v53 = vcltzq_s16(v49);
    v54 = vzip1q_s16(v49, v53);
    v55 = vzip2q_s16(v49, v53);
    v56 = vcltzq_s16(v50);
    v57 = vcvtq_f32_s32(vzip1q_s16(v50, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v50, v56));
    v59 = vcltzq_s16(v52);
    v60 = vcvtq_f32_s32(vzip1q_s16(v52, v59));
    v61 = vcvtq_f32_s32(vzip2q_s16(v52, v59));
    v62 = vmulq_f32(vcvtq_f32_s32(v54), v16);
    v63 = vaddq_f32(v62, vmulq_f32(v7, v60));
    v64 = vaddq_f32(v62, vmulq_f32(v9, v57));
    v65 = vaddq_f32(v62, vmulq_f32(v10, v57));
    v66 = vmulq_f32(vcvtq_f32_s32(v55), v16);
    v67 = vaddq_f32(v66, vmulq_f32(v7, v61));
    v68 = vaddq_f32(vaddq_f32(v66, vmulq_f32(v9, v58)), vmulq_f32(v8, v61));
    v69 = vaddq_f32(v66, vmulq_f32(v10, v58));
    v70 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v63), v17)), vaddq_s32(vcvtnq_s32_f32(v67), v17));
    v71 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v64, vmulq_f32(v8, v60))), v17)), vaddq_s32(vcvtnq_s32_f32(v68), v17));
    v72 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v65), v17)), vaddq_s32(vcvtnq_s32_f32(v69), v17));
    v73 = veorq_s8(v71, v18);
    v74 = vzip1q_s16(v51, v73);
    v75 = veorq_s8(v70, v18);
    v76 = veorq_s8(v72, v18);
    v77 = vzip1q_s16(v75, v76);
    v78 = vzip2q_s16(v51, v73);
    v79 = vzip2q_s16(v75, v76);
    result[4] = vrev16q_s8(vzip1q_s16(v74, v77));
    result[5] = vrev16q_s8(vzip2q_s16(v74, v77));
    result[6] = vrev16q_s8(vzip1q_s16(v78, v79));
    result[7] = vrev16q_s8(vzip2q_s16(v78, v79));
    v80 = a2 + 1;
    --v12;
    a5 = (a5 + a6);
    v81 = vaddq_s16(a2[16], v15);
    v82 = a2[48];
    v83 = v19[-1];
    v84 = a2[56];
    v85 = vcltzq_s16(v81);
    v86 = vzip1q_s16(v81, v85);
    v87 = vzip2q_s16(v81, v85);
    v88 = vcltzq_s16(v82);
    v89 = vcvtq_f32_s32(vzip1q_s16(v82, v88));
    v90 = vcvtq_f32_s32(vzip2q_s16(v82, v88));
    v91 = vcltzq_s16(v84);
    v92 = vcvtq_f32_s32(vzip1q_s16(v84, v91));
    v93 = vcvtq_f32_s32(vzip2q_s16(v84, v91));
    v94 = vmulq_f32(vcvtq_f32_s32(v86), v16);
    v95 = vaddq_f32(v94, vmulq_f32(v7, v92));
    v96 = vaddq_f32(v94, vmulq_f32(v9, v89));
    v97 = vaddq_f32(v94, vmulq_f32(v10, v89));
    v98 = vmulq_f32(vcvtq_f32_s32(v87), v16);
    v99 = vaddq_f32(v98, vmulq_f32(v7, v93));
    v100 = vaddq_f32(vaddq_f32(v98, vmulq_f32(v9, v90)), vmulq_f32(v8, v93));
    v101 = vaddq_f32(v98, vmulq_f32(v10, v90));
    v102 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v95), v17)), vaddq_s32(vcvtnq_s32_f32(v99), v17));
    v103 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v96, vmulq_f32(v8, v92))), v17)), vaddq_s32(vcvtnq_s32_f32(v100), v17));
    v104 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v97), v17)), vaddq_s32(vcvtnq_s32_f32(v101), v17));
    v105 = veorq_s8(v103, v18);
    v106 = vzip1q_s16(v83, v105);
    v107 = veorq_s8(v102, v18);
    v108 = veorq_s8(v104, v18);
    v109 = vzip1q_s16(v107, v108);
    v110 = vzip2q_s16(v83, v105);
    v111 = vzip2q_s16(v107, v108);
    *v20 = vrev16q_s8(vzip1q_s16(v106, v109));
    v20[1] = vrev16q_s8(vzip2q_s16(v106, v109));
    v20[2] = vrev16q_s8(vzip1q_s16(v110, v111));
    v20[3] = vrev16q_s8(vzip2q_s16(v110, v111));
    result = (result + a3);
    v112 = vaddq_s16(a2[24], v15);
    v113 = a2[80];
    v114 = a2[88];
    v115 = vcltzq_s16(v112);
    v116 = vzip1q_s16(v112, v115);
    v117 = vzip2q_s16(v112, v115);
    v118 = vcltzq_s16(v113);
    v119 = vcvtq_f32_s32(vzip1q_s16(v113, v118));
    v120 = vcvtq_f32_s32(vzip2q_s16(v113, v118));
    v121 = vcltzq_s16(v114);
    v122 = vcvtq_f32_s32(vzip1q_s16(v114, v121));
    v123 = vcvtq_f32_s32(vzip2q_s16(v114, v121));
    v124 = vmulq_f32(vcvtq_f32_s32(v116), v16);
    v125 = vaddq_f32(v124, vmulq_f32(v7, v122));
    v126 = vaddq_f32(v124, vmulq_f32(v9, v119));
    v127 = vaddq_f32(v124, vmulq_f32(v10, v119));
    v128 = vmulq_f32(vcvtq_f32_s32(v117), v16);
    v129 = vaddq_f32(v126, vmulq_f32(v8, v122));
    v130 = vaddq_f32(v128, vmulq_f32(v7, v123));
    v131 = vaddq_f32(vaddq_f32(v128, vmulq_f32(v9, v120)), vmulq_f32(v8, v123));
    v132 = vaddq_f32(v128, vmulq_f32(v10, v120));
    v133 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v125), v17)), vaddq_s32(vcvtnq_s32_f32(v130), v17));
    v134 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v129), v17)), vaddq_s32(vcvtnq_s32_f32(v131), v17));
    v135 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v127), v17)), vaddq_s32(vcvtnq_s32_f32(v132), v17));
    v136 = veorq_s8(v134, v18);
    v137 = veorq_s8(v133, v18);
    v138 = veorq_s8(v135, v18);
    v139 = vzip1q_s16(*v19, v136);
    v140 = vzip1q_s16(v137, v138);
    v141 = vzip2q_s16(*v19, v136);
    v142 = vzip2q_s16(v137, v138);
    v20[4] = vrev16q_s8(vzip1q_s16(v139, v140));
    v20[5] = vrev16q_s8(vzip2q_s16(v139, v140));
    v20[6] = vrev16q_s8(vzip1q_s16(v141, v142));
    v20[7] = vrev16q_s8(vzip2q_s16(v141, v142));
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v143 = v80 + 8;
  v144 = v80 + 32;
  v145 = v80 + 40;
  v146 = v80 + 64;
  v147 = v80 + 72;
  a2 = v80;
  if (v12 >= 1)
  {
LABEL_21:
    v149 = v12 + 1;
    v150 = a5 + 1;
    v151 = result + 4;
    v152.i64[0] = 0xE000E000E000E00;
    v152.i64[1] = 0xE000E000E000E00;
    result = 1091936144;
    v153 = vdupq_n_s32(0x41159F90u);
    v154.i64[0] = 0x7F0000007FLL;
    v154.i64[1] = 0x7F0000007FLL;
    v155.i64[0] = 0x8000800080008000;
    v155.i64[1] = 0x8000800080008000;
    do
    {
      v156 = v150[-1];
      v157 = *a2++;
      v158 = vaddq_s16(v157, v152);
      v159 = *v144++;
      v160 = v159;
      v161 = *v145++;
      v162 = vcltzq_s16(v158);
      v163 = vzip1q_s16(v158, v162);
      v164 = vzip2q_s16(v158, v162);
      v165 = vcltzq_s16(v160);
      v166 = vcvtq_f32_s32(vzip1q_s16(v160, v165));
      v167 = vzip2q_s16(v160, v165);
      v168 = vcvtq_f32_s32(v163);
      v169 = vcvtq_f32_s32(v167);
      v170 = vcltzq_s16(v161);
      v171 = vcvtq_f32_s32(vzip1q_s16(v161, v170));
      v172 = vcvtq_f32_s32(vzip2q_s16(v161, v170));
      v173 = vmulq_f32(v168, v153);
      v174 = vaddq_f32(v173, vmulq_f32(v9, v166));
      v175 = vaddq_f32(v173, vmulq_f32(v7, v171));
      v176 = vaddq_f32(v173, vmulq_f32(v10, v166));
      v177 = vmulq_f32(vcvtq_f32_s32(v164), v153);
      v178 = vaddq_f32(v177, vmulq_f32(v7, v172));
      v179 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v176), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v177, vmulq_f32(v10, v169))), v154));
      v180 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v174, vmulq_f32(v8, v171))), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v177, vmulq_f32(v9, v169)), vmulq_f32(v8, v172))), v154)), v155);
      v181 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v175), v154)), vaddq_s32(vcvtnq_s32_f32(v178), v154)), v155);
      v182 = veorq_s8(v179, v155);
      v183 = vzip1q_s16(v181, v182);
      v184 = vzip1q_s16(v156, v180);
      v185 = vzip2q_s16(v156, v180);
      v186 = vzip2q_s16(v181, v182);
      v151[-4] = vrev16q_s8(vzip1q_s16(v184, v183));
      v151[-3] = vrev16q_s8(vzip2q_s16(v184, v183));
      v151[-2] = vrev16q_s8(vzip1q_s16(v185, v186));
      v151[-1] = vrev16q_s8(vzip2q_s16(v185, v186));
      v187 = *v143++;
      v188 = vaddq_s16(v187, v152);
      v189 = *v146++;
      v190 = v189;
      v191 = *v147++;
      v192 = vcltzq_s16(v188);
      v193 = vzip1q_s16(v188, v192);
      v194 = vzip2q_s16(v188, v192);
      v195 = vcltzq_s16(v190);
      v196 = vcvtq_f32_s32(vzip1q_s16(v190, v195));
      v197 = vzip2q_s16(v190, v195);
      v198 = vcvtq_f32_s32(v193);
      v199 = vcvtq_f32_s32(v197);
      v200 = vcltzq_s16(v191);
      v201 = vcvtq_f32_s32(vzip1q_s16(v191, v200));
      v202 = vcvtq_f32_s32(vzip2q_s16(v191, v200));
      v203 = vmulq_f32(v198, v153);
      v204 = vaddq_f32(v203, vmulq_f32(v9, v196));
      v205 = vaddq_f32(v203, vmulq_f32(v7, v201));
      v206 = vaddq_f32(v203, vmulq_f32(v10, v196));
      v207 = vmulq_f32(vcvtq_f32_s32(v194), v153);
      v208 = vaddq_f32(v207, vmulq_f32(v7, v202));
      v209 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v206), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v207, vmulq_f32(v10, v199))), v154));
      v210 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v204, vmulq_f32(v8, v201))), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v207, vmulq_f32(v9, v199)), vmulq_f32(v8, v202))), v154)), v155);
      v211 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v205), v154)), vaddq_s32(vcvtnq_s32_f32(v208), v154)), v155);
      v212 = veorq_s8(v209, v155);
      v213 = vzip1q_s16(v211, v212);
      v214 = vzip1q_s16(*v150, v210);
      v215 = vzip2q_s16(*v150, v210);
      v216 = vzip2q_s16(v211, v212);
      *v151 = vrev16q_s8(vzip1q_s16(v214, v213));
      v151[1] = vrev16q_s8(vzip2q_s16(v214, v213));
      v151[2] = vrev16q_s8(vzip1q_s16(v215, v216));
      v151[3] = vrev16q_s8(vzip2q_s16(v215, v216));
      --v149;
      v150 = (v150 + a6);
      v151 = (v151 + a3);
    }

    while (v149 > 1);
  }

  return result;
}

int8x16_t *from_444_to_b64a<8,8,(AlphaOutputMethod)1,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x41665E03u);
    v8 = vdupq_n_s32(0xC088F52C);
    v9 = vdupq_n_s32(0xBFDB3836);
    v10 = vdupq_n_s32(0x4187B8C9u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v143 = a2 + 8;
    v144 = a2 + 32;
    v145 = a2 + 40;
    v146 = a2 + 64;
    v147 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x414D16E6u);
    v8 = vdupq_n_s32(0xC0D0EEC4);
    v9 = vdupq_n_s32(0xC0495DA6);
    v10 = vdupq_n_s32(0x41819B6Fu);
    if (a4 <= 8)
    {
      v148 = 0;
    }

    else
    {
      v148 = a4 - 8;
    }

    v12 = a4 - v148;
    if (v148)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x4157B5AAu);
  v8 = vdupq_n_s32(0xC0A728B7);
  v9 = vdupq_n_s32(0xBFC0923C);
  v10 = vdupq_n_s32(0x41899BDFu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x41159F90u);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v18.i64[0] = 0x8000800080008000;
  v18.i64[1] = 0x8000800080008000;
  do
  {
    v19 = (a5 + 8 * a6 + 16);
    v20 = (result + 8 * a3);
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[32];
    v23 = a2[40];
    v24 = vcltzq_s16(v21);
    v25 = vzip1q_s16(v21, v24);
    v26 = vzip2q_s16(v21, v24);
    v27 = vcltzq_s16(v22);
    v28 = vcvtq_f32_s32(vzip1q_s16(v22, v27));
    v29 = vzip2q_s16(v22, v27);
    v30 = vcvtq_f32_s32(v25);
    v31 = vcvtq_f32_s32(v29);
    v32 = vcltzq_s16(v23);
    v33 = vcvtq_f32_s32(vzip1q_s16(v23, v32));
    v34 = vcvtq_f32_s32(vzip2q_s16(v23, v32));
    v35 = vmulq_f32(v30, v16);
    v36 = vaddq_f32(v35, vmulq_f32(v9, v28));
    v37 = vaddq_f32(v35, vmulq_f32(v7, v33));
    v38 = vaddq_f32(v35, vmulq_f32(v10, v28));
    v39 = vmulq_f32(vcvtq_f32_s32(v26), v16);
    v40 = vaddq_f32(v39, vmulq_f32(v7, v34));
    v41 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v38), v17)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v39, vmulq_f32(v10, v31))), v17));
    v42 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v36, vmulq_f32(v8, v33))), v17)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v39, vmulq_f32(v9, v31)), vmulq_f32(v8, v34))), v17)), v18);
    v43 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v37), v17)), vaddq_s32(vcvtnq_s32_f32(v40), v17)), v18);
    v44 = veorq_s8(v41, v18);
    v45 = vzip1q_s16(v43, v44);
    v46 = vzip1q_s16(*a5, v42);
    v47 = vzip2q_s16(*a5, v42);
    v48 = vzip2q_s16(v43, v44);
    *result = vrev16q_s8(vzip1q_s16(v46, v45));
    result[1] = vrev16q_s8(vzip2q_s16(v46, v45));
    result[2] = vrev16q_s8(vzip1q_s16(v47, v48));
    result[3] = vrev16q_s8(vzip2q_s16(v47, v48));
    v49 = vaddq_s16(a2[8], v15);
    v50 = a2[64];
    v51 = a5[1];
    v52 = a2[72];
    v53 = vcltzq_s16(v49);
    v54 = vzip1q_s16(v49, v53);
    v55 = vzip2q_s16(v49, v53);
    v56 = vcltzq_s16(v50);
    v57 = vcvtq_f32_s32(vzip1q_s16(v50, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v50, v56));
    v59 = vcltzq_s16(v52);
    v60 = vcvtq_f32_s32(vzip1q_s16(v52, v59));
    v61 = vcvtq_f32_s32(vzip2q_s16(v52, v59));
    v62 = vmulq_f32(vcvtq_f32_s32(v54), v16);
    v63 = vaddq_f32(v62, vmulq_f32(v7, v60));
    v64 = vaddq_f32(v62, vmulq_f32(v9, v57));
    v65 = vaddq_f32(v62, vmulq_f32(v10, v57));
    v66 = vmulq_f32(vcvtq_f32_s32(v55), v16);
    v67 = vaddq_f32(v66, vmulq_f32(v7, v61));
    v68 = vaddq_f32(vaddq_f32(v66, vmulq_f32(v9, v58)), vmulq_f32(v8, v61));
    v69 = vaddq_f32(v66, vmulq_f32(v10, v58));
    v70 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v63), v17)), vaddq_s32(vcvtnq_s32_f32(v67), v17));
    v71 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v64, vmulq_f32(v8, v60))), v17)), vaddq_s32(vcvtnq_s32_f32(v68), v17));
    v72 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v65), v17)), vaddq_s32(vcvtnq_s32_f32(v69), v17));
    v73 = veorq_s8(v71, v18);
    v74 = vzip1q_s16(v51, v73);
    v75 = veorq_s8(v70, v18);
    v76 = veorq_s8(v72, v18);
    v77 = vzip1q_s16(v75, v76);
    v78 = vzip2q_s16(v51, v73);
    v79 = vzip2q_s16(v75, v76);
    result[4] = vrev16q_s8(vzip1q_s16(v74, v77));
    result[5] = vrev16q_s8(vzip2q_s16(v74, v77));
    result[6] = vrev16q_s8(vzip1q_s16(v78, v79));
    result[7] = vrev16q_s8(vzip2q_s16(v78, v79));
    v80 = a2 + 1;
    --v12;
    a5 = (a5 + a6);
    v81 = vaddq_s16(a2[16], v15);
    v82 = a2[48];
    v83 = v19[-1];
    v84 = a2[56];
    v85 = vcltzq_s16(v81);
    v86 = vzip1q_s16(v81, v85);
    v87 = vzip2q_s16(v81, v85);
    v88 = vcltzq_s16(v82);
    v89 = vcvtq_f32_s32(vzip1q_s16(v82, v88));
    v90 = vcvtq_f32_s32(vzip2q_s16(v82, v88));
    v91 = vcltzq_s16(v84);
    v92 = vcvtq_f32_s32(vzip1q_s16(v84, v91));
    v93 = vcvtq_f32_s32(vzip2q_s16(v84, v91));
    v94 = vmulq_f32(vcvtq_f32_s32(v86), v16);
    v95 = vaddq_f32(v94, vmulq_f32(v7, v92));
    v96 = vaddq_f32(v94, vmulq_f32(v9, v89));
    v97 = vaddq_f32(v94, vmulq_f32(v10, v89));
    v98 = vmulq_f32(vcvtq_f32_s32(v87), v16);
    v99 = vaddq_f32(v98, vmulq_f32(v7, v93));
    v100 = vaddq_f32(vaddq_f32(v98, vmulq_f32(v9, v90)), vmulq_f32(v8, v93));
    v101 = vaddq_f32(v98, vmulq_f32(v10, v90));
    v102 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v95), v17)), vaddq_s32(vcvtnq_s32_f32(v99), v17));
    v103 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v96, vmulq_f32(v8, v92))), v17)), vaddq_s32(vcvtnq_s32_f32(v100), v17));
    v104 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v97), v17)), vaddq_s32(vcvtnq_s32_f32(v101), v17));
    v105 = veorq_s8(v103, v18);
    v106 = vzip1q_s16(v83, v105);
    v107 = veorq_s8(v102, v18);
    v108 = veorq_s8(v104, v18);
    v109 = vzip1q_s16(v107, v108);
    v110 = vzip2q_s16(v83, v105);
    v111 = vzip2q_s16(v107, v108);
    *v20 = vrev16q_s8(vzip1q_s16(v106, v109));
    v20[1] = vrev16q_s8(vzip2q_s16(v106, v109));
    v20[2] = vrev16q_s8(vzip1q_s16(v110, v111));
    v20[3] = vrev16q_s8(vzip2q_s16(v110, v111));
    result = (result + a3);
    v112 = vaddq_s16(a2[24], v15);
    v113 = a2[80];
    v114 = a2[88];
    v115 = vcltzq_s16(v112);
    v116 = vzip1q_s16(v112, v115);
    v117 = vzip2q_s16(v112, v115);
    v118 = vcltzq_s16(v113);
    v119 = vcvtq_f32_s32(vzip1q_s16(v113, v118));
    v120 = vcvtq_f32_s32(vzip2q_s16(v113, v118));
    v121 = vcltzq_s16(v114);
    v122 = vcvtq_f32_s32(vzip1q_s16(v114, v121));
    v123 = vcvtq_f32_s32(vzip2q_s16(v114, v121));
    v124 = vmulq_f32(vcvtq_f32_s32(v116), v16);
    v125 = vaddq_f32(v124, vmulq_f32(v7, v122));
    v126 = vaddq_f32(v124, vmulq_f32(v9, v119));
    v127 = vaddq_f32(v124, vmulq_f32(v10, v119));
    v128 = vmulq_f32(vcvtq_f32_s32(v117), v16);
    v129 = vaddq_f32(v126, vmulq_f32(v8, v122));
    v130 = vaddq_f32(v128, vmulq_f32(v7, v123));
    v131 = vaddq_f32(vaddq_f32(v128, vmulq_f32(v9, v120)), vmulq_f32(v8, v123));
    v132 = vaddq_f32(v128, vmulq_f32(v10, v120));
    v133 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v125), v17)), vaddq_s32(vcvtnq_s32_f32(v130), v17));
    v134 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v129), v17)), vaddq_s32(vcvtnq_s32_f32(v131), v17));
    v135 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v127), v17)), vaddq_s32(vcvtnq_s32_f32(v132), v17));
    v136 = veorq_s8(v134, v18);
    v137 = veorq_s8(v133, v18);
    v138 = veorq_s8(v135, v18);
    v139 = vzip1q_s16(*v19, v136);
    v140 = vzip1q_s16(v137, v138);
    v141 = vzip2q_s16(*v19, v136);
    v142 = vzip2q_s16(v137, v138);
    v20[4] = vrev16q_s8(vzip1q_s16(v139, v140));
    v20[5] = vrev16q_s8(vzip2q_s16(v139, v140));
    v20[6] = vrev16q_s8(vzip1q_s16(v141, v142));
    v20[7] = vrev16q_s8(vzip2q_s16(v141, v142));
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v143 = v80 + 8;
  v144 = v80 + 32;
  v145 = v80 + 40;
  v146 = v80 + 64;
  v147 = v80 + 72;
  a2 = v80;
  if (v12 >= 1)
  {
LABEL_21:
    v149 = v12 + 1;
    v150 = a5 + 1;
    v151 = result + 4;
    v152.i64[0] = 0xE000E000E000E00;
    v152.i64[1] = 0xE000E000E000E00;
    result = 1091936144;
    v153 = vdupq_n_s32(0x41159F90u);
    v154.i64[0] = 0x7F0000007FLL;
    v154.i64[1] = 0x7F0000007FLL;
    v155.i64[0] = 0x8000800080008000;
    v155.i64[1] = 0x8000800080008000;
    do
    {
      v156 = v150[-1];
      v157 = *a2++;
      v158 = vaddq_s16(v157, v152);
      v159 = *v144++;
      v160 = v159;
      v161 = *v145++;
      v162 = vcltzq_s16(v158);
      v163 = vzip1q_s16(v158, v162);
      v164 = vzip2q_s16(v158, v162);
      v165 = vcltzq_s16(v160);
      v166 = vcvtq_f32_s32(vzip1q_s16(v160, v165));
      v167 = vzip2q_s16(v160, v165);
      v168 = vcvtq_f32_s32(v163);
      v169 = vcvtq_f32_s32(v167);
      v170 = vcltzq_s16(v161);
      v171 = vcvtq_f32_s32(vzip1q_s16(v161, v170));
      v172 = vcvtq_f32_s32(vzip2q_s16(v161, v170));
      v173 = vmulq_f32(v168, v153);
      v174 = vaddq_f32(v173, vmulq_f32(v9, v166));
      v175 = vaddq_f32(v173, vmulq_f32(v7, v171));
      v176 = vaddq_f32(v173, vmulq_f32(v10, v166));
      v177 = vmulq_f32(vcvtq_f32_s32(v164), v153);
      v178 = vaddq_f32(v177, vmulq_f32(v7, v172));
      v179 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v176), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v177, vmulq_f32(v10, v169))), v154));
      v180 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v174, vmulq_f32(v8, v171))), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v177, vmulq_f32(v9, v169)), vmulq_f32(v8, v172))), v154)), v155);
      v181 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v175), v154)), vaddq_s32(vcvtnq_s32_f32(v178), v154)), v155);
      v182 = veorq_s8(v179, v155);
      v183 = vzip1q_s16(v181, v182);
      v184 = vzip1q_s16(v156, v180);
      v185 = vzip2q_s16(v156, v180);
      v186 = vzip2q_s16(v181, v182);
      v151[-4] = vrev16q_s8(vzip1q_s16(v184, v183));
      v151[-3] = vrev16q_s8(vzip2q_s16(v184, v183));
      v151[-2] = vrev16q_s8(vzip1q_s16(v185, v186));
      v151[-1] = vrev16q_s8(vzip2q_s16(v185, v186));
      v187 = *v143++;
      v188 = vaddq_s16(v187, v152);
      v189 = *v146++;
      v190 = v189;
      v191 = *v147++;
      v192 = vcltzq_s16(v188);
      v193 = vzip1q_s16(v188, v192);
      v194 = vzip2q_s16(v188, v192);
      v195 = vcltzq_s16(v190);
      v196 = vcvtq_f32_s32(vzip1q_s16(v190, v195));
      v197 = vzip2q_s16(v190, v195);
      v198 = vcvtq_f32_s32(v193);
      v199 = vcvtq_f32_s32(v197);
      v200 = vcltzq_s16(v191);
      v201 = vcvtq_f32_s32(vzip1q_s16(v191, v200));
      v202 = vcvtq_f32_s32(vzip2q_s16(v191, v200));
      v203 = vmulq_f32(v198, v153);
      v204 = vaddq_f32(v203, vmulq_f32(v9, v196));
      v205 = vaddq_f32(v203, vmulq_f32(v7, v201));
      v206 = vaddq_f32(v203, vmulq_f32(v10, v196));
      v207 = vmulq_f32(vcvtq_f32_s32(v194), v153);
      v208 = vaddq_f32(v207, vmulq_f32(v7, v202));
      v209 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v206), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v207, vmulq_f32(v10, v199))), v154));
      v210 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v204, vmulq_f32(v8, v201))), v154)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v207, vmulq_f32(v9, v199)), vmulq_f32(v8, v202))), v154)), v155);
      v211 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v205), v154)), vaddq_s32(vcvtnq_s32_f32(v208), v154)), v155);
      v212 = veorq_s8(v209, v155);
      v213 = vzip1q_s16(v211, v212);
      v214 = vzip1q_s16(*v150, v210);
      v215 = vzip2q_s16(*v150, v210);
      v216 = vzip2q_s16(v211, v212);
      *v151 = vrev16q_s8(vzip1q_s16(v214, v213));
      v151[1] = vrev16q_s8(vzip2q_s16(v214, v213));
      v151[2] = vrev16q_s8(vzip1q_s16(v215, v216));
      v151[3] = vrev16q_s8(vzip2q_s16(v215, v216));
      --v149;
      v150 = (v150 + a6);
      v151 = (v151 + a3);
    }

    while (v149 > 1);
  }

  return result;
}

int8x16_t *from_444_to_b64a<8,8,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x41665E03u);
    v8 = vdupq_n_s32(0xC088F52C);
    v9 = vdupq_n_s32(0xBFDB3836);
    v10 = vdupq_n_s32(0x4187B8C9u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v146 = a2 + 8;
    v147 = a2 + 32;
    v148 = a2 + 40;
    v149 = a2 + 64;
    v150 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x414D16E6u);
    v8 = vdupq_n_s32(0xC0D0EEC4);
    v9 = vdupq_n_s32(0xC0495DA6);
    v10 = vdupq_n_s32(0x41819B6Fu);
    if (a4 <= 8)
    {
      v151 = 0;
    }

    else
    {
      v151 = a4 - 8;
    }

    v12 = a4 - v151;
    if (v151)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x4157B5AAu);
  v8 = vdupq_n_s32(0xC0A728B7);
  v9 = vdupq_n_s32(0xBFC0923C);
  v10 = vdupq_n_s32(0x41899BDFu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x41159F90u);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v18.i64[0] = 0x8000800080008000;
  v18.i64[1] = 0x8000800080008000;
  v19.i64[0] = -1;
  v19.i64[1] = -1;
  do
  {
    v20 = a2 + 1;
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[32];
    v23 = a2[40];
    v24 = vcltzq_s16(v21);
    v25 = vzip1q_s16(v21, v24);
    v26 = vzip2q_s16(v21, v24);
    v27 = vcvtq_f32_s32(v25);
    v28 = vcltzq_s16(v22);
    v29 = vcvtq_f32_s32(vzip1q_s16(v22, v28));
    v30 = vcvtq_f32_s32(vzip2q_s16(v22, v28));
    v31 = vcltzq_s16(v23);
    v32 = vcvtq_f32_s32(vzip1q_s16(v23, v31));
    v33 = vcvtq_f32_s32(vzip2q_s16(v23, v31));
    v34 = vmulq_f32(v27, v16);
    v35 = vaddq_f32(v34, vmulq_f32(v9, v29));
    v36 = vaddq_f32(v34, vmulq_f32(v7, v32));
    v37 = vaddq_f32(v34, vmulq_f32(v10, v29));
    v38 = vmulq_f32(vcvtq_f32_s32(v26), v16);
    v39 = vaddq_f32(v38, vmulq_f32(v7, v33));
    v40 = vaddq_f32(vaddq_f32(v38, vmulq_f32(v9, v30)), vmulq_f32(v8, v33));
    v41 = vaddq_f32(v38, vmulq_f32(v10, v30));
    v42 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v36), v17)), vaddq_s32(vcvtnq_s32_f32(v39), v17));
    v43 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v35, vmulq_f32(v8, v32))), v17)), vaddq_s32(vcvtnq_s32_f32(v40), v17));
    v44 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v37), v17)), vaddq_s32(vcvtnq_s32_f32(v41), v17));
    v45 = (result + 8 * a3);
    v46 = veorq_s8(v43, v18);
    v47 = vzip1q_s16(v19, v46);
    v48 = veorq_s8(v42, v18);
    v49 = veorq_s8(v44, v18);
    v50 = vzip1q_s16(v48, v49);
    v51 = vzip2q_s16(v19, v46);
    v52 = vzip2q_s16(v48, v49);
    *result = vrev16q_s8(vzip1q_s16(v47, v50));
    result[1] = vrev16q_s8(vzip2q_s16(v47, v50));
    result[2] = vrev16q_s8(vzip1q_s16(v51, v52));
    result[3] = vrev16q_s8(vzip2q_s16(v51, v52));
    v53 = vaddq_s16(a2[8], v15);
    v54 = a2[64];
    v55 = a2[72];
    v56 = vcltzq_s16(v53);
    v57 = vzip1q_s16(v53, v56);
    v58 = vzip2q_s16(v53, v56);
    v59 = vcltzq_s16(v54);
    v60 = vcvtq_f32_s32(vzip1q_s16(v54, v59));
    v61 = vcvtq_f32_s32(vzip2q_s16(v54, v59));
    v62 = vcltzq_s16(v55);
    v63 = vcvtq_f32_s32(vzip1q_s16(v55, v62));
    v64 = vcvtq_f32_s32(vzip2q_s16(v55, v62));
    v65 = vmulq_f32(vcvtq_f32_s32(v57), v16);
    v66 = vaddq_f32(v65, vmulq_f32(v7, v63));
    v67 = vaddq_f32(v65, vmulq_f32(v9, v60));
    v68 = vaddq_f32(v65, vmulq_f32(v10, v60));
    v69 = vmulq_f32(vcvtq_f32_s32(v58), v16);
    v70 = vaddq_f32(v67, vmulq_f32(v8, v63));
    v71 = vaddq_f32(v69, vmulq_f32(v7, v64));
    v72 = vaddq_f32(vaddq_f32(v69, vmulq_f32(v9, v61)), vmulq_f32(v8, v64));
    v73 = vaddq_f32(v69, vmulq_f32(v10, v61));
    v74 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v66), v17)), vaddq_s32(vcvtnq_s32_f32(v71), v17));
    v75 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v70), v17)), vaddq_s32(vcvtnq_s32_f32(v72), v17));
    v76 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v68), v17)), vaddq_s32(vcvtnq_s32_f32(v73), v17));
    v77 = veorq_s8(v75, v18);
    v78 = veorq_s8(v74, v18);
    v79 = veorq_s8(v76, v18);
    v80 = vzip1q_s16(v19, v77);
    v81 = vzip1q_s16(v78, v79);
    v82 = vzip2q_s16(v19, v77);
    v83 = vzip2q_s16(v78, v79);
    result[4] = vrev16q_s8(vzip1q_s16(v80, v81));
    result[5] = vrev16q_s8(vzip2q_s16(v80, v81));
    result[6] = vrev16q_s8(vzip1q_s16(v82, v83));
    result[7] = vrev16q_s8(vzip2q_s16(v82, v83));
    --v12;
    v84 = vaddq_s16(a2[16], v15);
    v85 = a2[48];
    v86 = a2[56];
    v87 = vcltzq_s16(v84);
    v88 = vzip1q_s16(v84, v87);
    v89 = vzip2q_s16(v84, v87);
    v90 = vcvtq_f32_s32(v88);
    v91 = vcltzq_s16(v85);
    v92 = vcvtq_f32_s32(vzip1q_s16(v85, v91));
    v93 = vcvtq_f32_s32(vzip2q_s16(v85, v91));
    v94 = vcltzq_s16(v86);
    v95 = vcvtq_f32_s32(vzip1q_s16(v86, v94));
    v96 = vcvtq_f32_s32(vzip2q_s16(v86, v94));
    v97 = vmulq_f32(v90, v16);
    v98 = vaddq_f32(v97, vmulq_f32(v9, v92));
    v99 = vaddq_f32(v97, vmulq_f32(v7, v95));
    v100 = vaddq_f32(v97, vmulq_f32(v10, v92));
    v101 = vmulq_f32(vcvtq_f32_s32(v89), v16);
    v102 = vaddq_f32(v101, vmulq_f32(v7, v96));
    v103 = vaddq_f32(vaddq_f32(v101, vmulq_f32(v9, v93)), vmulq_f32(v8, v96));
    v104 = vaddq_f32(v101, vmulq_f32(v10, v93));
    v105 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v99), v17)), vaddq_s32(vcvtnq_s32_f32(v102), v17));
    v106 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v98, vmulq_f32(v8, v95))), v17)), vaddq_s32(vcvtnq_s32_f32(v103), v17));
    v107 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v100), v17)), vaddq_s32(vcvtnq_s32_f32(v104), v17));
    result = (result + a3);
    v108 = veorq_s8(v106, v18);
    v109 = vzip1q_s16(v19, v108);
    v110 = veorq_s8(v105, v18);
    v111 = veorq_s8(v107, v18);
    v112 = vzip1q_s16(v110, v111);
    v113 = vzip2q_s16(v19, v108);
    v114 = vzip2q_s16(v110, v111);
    *v45 = vrev16q_s8(vzip1q_s16(v109, v112));
    v45[1] = vrev16q_s8(vzip2q_s16(v109, v112));
    v45[2] = vrev16q_s8(vzip1q_s16(v113, v114));
    v45[3] = vrev16q_s8(vzip2q_s16(v113, v114));
    v115 = vaddq_s16(a2[24], v15);
    v116 = a2[80];
    v117 = a2[88];
    v118 = vcltzq_s16(v115);
    v119 = vzip1q_s16(v115, v118);
    v120 = vzip2q_s16(v115, v118);
    v121 = vcltzq_s16(v116);
    v122 = vcvtq_f32_s32(vzip1q_s16(v116, v121));
    v123 = vcvtq_f32_s32(vzip2q_s16(v116, v121));
    v124 = vcltzq_s16(v117);
    v125 = vcvtq_f32_s32(vzip1q_s16(v117, v124));
    v126 = vcvtq_f32_s32(vzip2q_s16(v117, v124));
    v127 = vmulq_f32(vcvtq_f32_s32(v119), v16);
    v128 = vaddq_f32(v127, vmulq_f32(v7, v125));
    v129 = vaddq_f32(v127, vmulq_f32(v9, v122));
    v130 = vaddq_f32(v127, vmulq_f32(v10, v122));
    v131 = vmulq_f32(vcvtq_f32_s32(v120), v16);
    v132 = vaddq_f32(v129, vmulq_f32(v8, v125));
    v133 = vaddq_f32(v131, vmulq_f32(v7, v126));
    v134 = vaddq_f32(vaddq_f32(v131, vmulq_f32(v9, v123)), vmulq_f32(v8, v126));
    v135 = vaddq_f32(v131, vmulq_f32(v10, v123));
    v136 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v128), v17)), vaddq_s32(vcvtnq_s32_f32(v133), v17));
    v137 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v132), v17)), vaddq_s32(vcvtnq_s32_f32(v134), v17));
    v138 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v130), v17)), vaddq_s32(vcvtnq_s32_f32(v135), v17));
    v139 = veorq_s8(v137, v18);
    v140 = veorq_s8(v136, v18);
    v141 = veorq_s8(v138, v18);
    v142 = vzip1q_s16(v19, v139);
    v143 = vzip1q_s16(v140, v141);
    v144 = vzip2q_s16(v19, v139);
    v145 = vzip2q_s16(v140, v141);
    v45[4] = vrev16q_s8(vzip1q_s16(v142, v143));
    v45[5] = vrev16q_s8(vzip2q_s16(v142, v143));
    v45[6] = vrev16q_s8(vzip1q_s16(v144, v145));
    v45[7] = vrev16q_s8(vzip2q_s16(v144, v145));
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v146 = v20 + 8;
  v147 = v20 + 32;
  v148 = v20 + 40;
  v149 = v20 + 64;
  v150 = v20 + 72;
  a2 = v20;
  if (v12 >= 1)
  {
LABEL_21:
    v152 = v12 + 1;
    v153 = result + 4;
    v154.i64[0] = 0xE000E000E000E00;
    v154.i64[1] = 0xE000E000E000E00;
    v155 = vdupq_n_s32(0x41159F90u);
    v156.i64[0] = 0x7F0000007FLL;
    v156.i64[1] = 0x7F0000007FLL;
    v157.i64[0] = 0x8000800080008000;
    v157.i64[1] = 0x8000800080008000;
    v158.i64[0] = -1;
    v158.i64[1] = -1;
    do
    {
      v159 = *a2++;
      v160 = vaddq_s16(v159, v154);
      v161 = *v147++;
      v162 = v161;
      v163 = *v148++;
      v164 = vcltzq_s16(v160);
      v165 = vzip1q_s16(v160, v164);
      v166 = vzip2q_s16(v160, v164);
      v167 = vcltzq_s16(v162);
      v168 = vcvtq_f32_s32(vzip1q_s16(v162, v167));
      v169 = vcvtq_f32_s32(vzip2q_s16(v162, v167));
      v170 = vcltzq_s16(v163);
      v171 = vcvtq_f32_s32(vzip1q_s16(v163, v170));
      v172 = vcvtq_f32_s32(vzip2q_s16(v163, v170));
      v173 = vmulq_f32(vcvtq_f32_s32(v165), v155);
      v174 = vaddq_f32(v173, vmulq_f32(v7, v171));
      v175 = vaddq_f32(v173, vmulq_f32(v9, v168));
      v176 = vaddq_f32(v173, vmulq_f32(v10, v168));
      v177 = vaddq_f32(v175, vmulq_f32(v8, v171));
      v178 = vmulq_f32(vcvtq_f32_s32(v166), v155);
      v179 = vaddq_f32(v178, vmulq_f32(v7, v172));
      v180 = vaddq_f32(vaddq_f32(v178, vmulq_f32(v9, v169)), vmulq_f32(v8, v172));
      v181 = vaddq_f32(v178, vmulq_f32(v10, v169));
      v182 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v174), v156)), vaddq_s32(vcvtnq_s32_f32(v179), v156));
      v183 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v177), v156)), vaddq_s32(vcvtnq_s32_f32(v180), v156));
      v184 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v176), v156)), vaddq_s32(vcvtnq_s32_f32(v181), v156));
      v185 = veorq_s8(v183, v157);
      v186 = veorq_s8(v182, v157);
      v187 = vzip1q_s16(v158, v185);
      v188 = veorq_s8(v184, v157);
      v189 = vzip1q_s16(v186, v188);
      v190 = vzip2q_s16(v158, v185);
      v191 = vzip2q_s16(v186, v188);
      v153[-4] = vrev16q_s8(vzip1q_s16(v187, v189));
      v153[-3] = vrev16q_s8(vzip2q_s16(v187, v189));
      v153[-2] = vrev16q_s8(vzip1q_s16(v190, v191));
      v153[-1] = vrev16q_s8(vzip2q_s16(v190, v191));
      v192 = *v146++;
      v193 = vaddq_s16(v192, v154);
      v194 = *v149++;
      v195 = v194;
      v196 = *v150++;
      v197 = vcltzq_s16(v193);
      v198 = vzip1q_s16(v193, v197);
      v199 = vzip2q_s16(v193, v197);
      v200 = vcltzq_s16(v195);
      v201 = vcvtq_f32_s32(vzip1q_s16(v195, v200));
      v202 = vcvtq_f32_s32(vzip2q_s16(v195, v200));
      v203 = vcltzq_s16(v196);
      v204 = vcvtq_f32_s32(vzip1q_s16(v196, v203));
      v205 = vcvtq_f32_s32(vzip2q_s16(v196, v203));
      v206 = vmulq_f32(vcvtq_f32_s32(v198), v155);
      v207 = vaddq_f32(v206, vmulq_f32(v7, v204));
      v208 = vaddq_f32(v206, vmulq_f32(v9, v201));
      v209 = vaddq_f32(v206, vmulq_f32(v10, v201));
      v210 = vmulq_f32(vcvtq_f32_s32(v199), v155);
      v211 = vaddq_f32(v208, vmulq_f32(v8, v204));
      v212 = vaddq_f32(v210, vmulq_f32(v7, v205));
      v213 = vaddq_f32(vaddq_f32(v210, vmulq_f32(v9, v202)), vmulq_f32(v8, v205));
      v214 = vaddq_f32(v210, vmulq_f32(v10, v202));
      v215 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v207), v156)), vaddq_s32(vcvtnq_s32_f32(v212), v156));
      v216 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v211), v156)), vaddq_s32(vcvtnq_s32_f32(v213), v156));
      v217 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v209), v156)), vaddq_s32(vcvtnq_s32_f32(v214), v156));
      v218 = veorq_s8(v216, v157);
      v219 = veorq_s8(v215, v157);
      v220 = veorq_s8(v217, v157);
      v221 = vzip1q_s16(v158, v218);
      v222 = vzip1q_s16(v219, v220);
      v223 = vzip2q_s16(v158, v218);
      v224 = vzip2q_s16(v219, v220);
      *v153 = vrev16q_s8(vzip1q_s16(v221, v222));
      v153[1] = vrev16q_s8(vzip2q_s16(v221, v222));
      v153[2] = vrev16q_s8(vzip1q_s16(v223, v224));
      v153[3] = vrev16q_s8(vzip2q_s16(v223, v224));
      --v152;
      v153 = (v153 + a3);
    }

    while (v152 > 1);
  }

  return result;
}

int8x16_t *from_444_to_b64a<8,8,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x41665E03u);
    v8 = vdupq_n_s32(0xC088F52C);
    v9 = vdupq_n_s32(0xBFDB3836);
    v10 = vdupq_n_s32(0x4187B8C9u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v146 = a2 + 8;
    v147 = a2 + 32;
    v148 = a2 + 40;
    v149 = a2 + 64;
    v150 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x414D16E6u);
    v8 = vdupq_n_s32(0xC0D0EEC4);
    v9 = vdupq_n_s32(0xC0495DA6);
    v10 = vdupq_n_s32(0x41819B6Fu);
    if (a4 <= 8)
    {
      v151 = 0;
    }

    else
    {
      v151 = a4 - 8;
    }

    v12 = a4 - v151;
    if (v151)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x4157B5AAu);
  v8 = vdupq_n_s32(0xC0A728B7);
  v9 = vdupq_n_s32(0xBFC0923C);
  v10 = vdupq_n_s32(0x41899BDFu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x41159F90u);
  v17.i64[0] = 0x7F0000007FLL;
  v17.i64[1] = 0x7F0000007FLL;
  v18.i64[0] = 0x8000800080008000;
  v18.i64[1] = 0x8000800080008000;
  v19.i64[0] = -1;
  v19.i64[1] = -1;
  do
  {
    v20 = a2 + 1;
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[32];
    v23 = a2[40];
    v24 = vcltzq_s16(v21);
    v25 = vzip1q_s16(v21, v24);
    v26 = vzip2q_s16(v21, v24);
    v27 = vcvtq_f32_s32(v25);
    v28 = vcltzq_s16(v22);
    v29 = vcvtq_f32_s32(vzip1q_s16(v22, v28));
    v30 = vcvtq_f32_s32(vzip2q_s16(v22, v28));
    v31 = vcltzq_s16(v23);
    v32 = vcvtq_f32_s32(vzip1q_s16(v23, v31));
    v33 = vcvtq_f32_s32(vzip2q_s16(v23, v31));
    v34 = vmulq_f32(v27, v16);
    v35 = vaddq_f32(v34, vmulq_f32(v9, v29));
    v36 = vaddq_f32(v34, vmulq_f32(v7, v32));
    v37 = vaddq_f32(v34, vmulq_f32(v10, v29));
    v38 = vmulq_f32(vcvtq_f32_s32(v26), v16);
    v39 = vaddq_f32(v38, vmulq_f32(v7, v33));
    v40 = vaddq_f32(vaddq_f32(v38, vmulq_f32(v9, v30)), vmulq_f32(v8, v33));
    v41 = vaddq_f32(v38, vmulq_f32(v10, v30));
    v42 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v36), v17)), vaddq_s32(vcvtnq_s32_f32(v39), v17));
    v43 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v35, vmulq_f32(v8, v32))), v17)), vaddq_s32(vcvtnq_s32_f32(v40), v17));
    v44 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v37), v17)), vaddq_s32(vcvtnq_s32_f32(v41), v17));
    v45 = (result + 8 * a3);
    v46 = veorq_s8(v43, v18);
    v47 = vzip1q_s16(v19, v46);
    v48 = veorq_s8(v42, v18);
    v49 = veorq_s8(v44, v18);
    v50 = vzip1q_s16(v48, v49);
    v51 = vzip2q_s16(v19, v46);
    v52 = vzip2q_s16(v48, v49);
    *result = vrev16q_s8(vzip1q_s16(v47, v50));
    result[1] = vrev16q_s8(vzip2q_s16(v47, v50));
    result[2] = vrev16q_s8(vzip1q_s16(v51, v52));
    result[3] = vrev16q_s8(vzip2q_s16(v51, v52));
    v53 = vaddq_s16(a2[8], v15);
    v54 = a2[64];
    v55 = a2[72];
    v56 = vcltzq_s16(v53);
    v57 = vzip1q_s16(v53, v56);
    v58 = vzip2q_s16(v53, v56);
    v59 = vcltzq_s16(v54);
    v60 = vcvtq_f32_s32(vzip1q_s16(v54, v59));
    v61 = vcvtq_f32_s32(vzip2q_s16(v54, v59));
    v62 = vcltzq_s16(v55);
    v63 = vcvtq_f32_s32(vzip1q_s16(v55, v62));
    v64 = vcvtq_f32_s32(vzip2q_s16(v55, v62));
    v65 = vmulq_f32(vcvtq_f32_s32(v57), v16);
    v66 = vaddq_f32(v65, vmulq_f32(v7, v63));
    v67 = vaddq_f32(v65, vmulq_f32(v9, v60));
    v68 = vaddq_f32(v65, vmulq_f32(v10, v60));
    v69 = vmulq_f32(vcvtq_f32_s32(v58), v16);
    v70 = vaddq_f32(v67, vmulq_f32(v8, v63));
    v71 = vaddq_f32(v69, vmulq_f32(v7, v64));
    v72 = vaddq_f32(vaddq_f32(v69, vmulq_f32(v9, v61)), vmulq_f32(v8, v64));
    v73 = vaddq_f32(v69, vmulq_f32(v10, v61));
    v74 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v66), v17)), vaddq_s32(vcvtnq_s32_f32(v71), v17));
    v75 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v70), v17)), vaddq_s32(vcvtnq_s32_f32(v72), v17));
    v76 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v68), v17)), vaddq_s32(vcvtnq_s32_f32(v73), v17));
    v77 = veorq_s8(v75, v18);
    v78 = veorq_s8(v74, v18);
    v79 = veorq_s8(v76, v18);
    v80 = vzip1q_s16(v19, v77);
    v81 = vzip1q_s16(v78, v79);
    v82 = vzip2q_s16(v19, v77);
    v83 = vzip2q_s16(v78, v79);
    result[4] = vrev16q_s8(vzip1q_s16(v80, v81));
    result[5] = vrev16q_s8(vzip2q_s16(v80, v81));
    result[6] = vrev16q_s8(vzip1q_s16(v82, v83));
    result[7] = vrev16q_s8(vzip2q_s16(v82, v83));
    --v12;
    v84 = vaddq_s16(a2[16], v15);
    v85 = a2[48];
    v86 = a2[56];
    v87 = vcltzq_s16(v84);
    v88 = vzip1q_s16(v84, v87);
    v89 = vzip2q_s16(v84, v87);
    v90 = vcvtq_f32_s32(v88);
    v91 = vcltzq_s16(v85);
    v92 = vcvtq_f32_s32(vzip1q_s16(v85, v91));
    v93 = vcvtq_f32_s32(vzip2q_s16(v85, v91));
    v94 = vcltzq_s16(v86);
    v95 = vcvtq_f32_s32(vzip1q_s16(v86, v94));
    v96 = vcvtq_f32_s32(vzip2q_s16(v86, v94));
    v97 = vmulq_f32(v90, v16);
    v98 = vaddq_f32(v97, vmulq_f32(v9, v92));
    v99 = vaddq_f32(v97, vmulq_f32(v7, v95));
    v100 = vaddq_f32(v97, vmulq_f32(v10, v92));
    v101 = vmulq_f32(vcvtq_f32_s32(v89), v16);
    v102 = vaddq_f32(v101, vmulq_f32(v7, v96));
    v103 = vaddq_f32(vaddq_f32(v101, vmulq_f32(v9, v93)), vmulq_f32(v8, v96));
    v104 = vaddq_f32(v101, vmulq_f32(v10, v93));
    v105 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v99), v17)), vaddq_s32(vcvtnq_s32_f32(v102), v17));
    v106 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v98, vmulq_f32(v8, v95))), v17)), vaddq_s32(vcvtnq_s32_f32(v103), v17));
    v107 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v100), v17)), vaddq_s32(vcvtnq_s32_f32(v104), v17));
    result = (result + a3);
    v108 = veorq_s8(v106, v18);
    v109 = vzip1q_s16(v19, v108);
    v110 = veorq_s8(v105, v18);
    v111 = veorq_s8(v107, v18);
    v112 = vzip1q_s16(v110, v111);
    v113 = vzip2q_s16(v19, v108);
    v114 = vzip2q_s16(v110, v111);
    *v45 = vrev16q_s8(vzip1q_s16(v109, v112));
    v45[1] = vrev16q_s8(vzip2q_s16(v109, v112));
    v45[2] = vrev16q_s8(vzip1q_s16(v113, v114));
    v45[3] = vrev16q_s8(vzip2q_s16(v113, v114));
    v115 = vaddq_s16(a2[24], v15);
    v116 = a2[80];
    v117 = a2[88];
    v118 = vcltzq_s16(v115);
    v119 = vzip1q_s16(v115, v118);
    v120 = vzip2q_s16(v115, v118);
    v121 = vcltzq_s16(v116);
    v122 = vcvtq_f32_s32(vzip1q_s16(v116, v121));
    v123 = vcvtq_f32_s32(vzip2q_s16(v116, v121));
    v124 = vcltzq_s16(v117);
    v125 = vcvtq_f32_s32(vzip1q_s16(v117, v124));
    v126 = vcvtq_f32_s32(vzip2q_s16(v117, v124));
    v127 = vmulq_f32(vcvtq_f32_s32(v119), v16);
    v128 = vaddq_f32(v127, vmulq_f32(v7, v125));
    v129 = vaddq_f32(v127, vmulq_f32(v9, v122));
    v130 = vaddq_f32(v127, vmulq_f32(v10, v122));
    v131 = vmulq_f32(vcvtq_f32_s32(v120), v16);
    v132 = vaddq_f32(v129, vmulq_f32(v8, v125));
    v133 = vaddq_f32(v131, vmulq_f32(v7, v126));
    v134 = vaddq_f32(vaddq_f32(v131, vmulq_f32(v9, v123)), vmulq_f32(v8, v126));
    v135 = vaddq_f32(v131, vmulq_f32(v10, v123));
    v136 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v128), v17)), vaddq_s32(vcvtnq_s32_f32(v133), v17));
    v137 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v132), v17)), vaddq_s32(vcvtnq_s32_f32(v134), v17));
    v138 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v130), v17)), vaddq_s32(vcvtnq_s32_f32(v135), v17));
    v139 = veorq_s8(v137, v18);
    v140 = veorq_s8(v136, v18);
    v141 = veorq_s8(v138, v18);
    v142 = vzip1q_s16(v19, v139);
    v143 = vzip1q_s16(v140, v141);
    v144 = vzip2q_s16(v19, v139);
    v145 = vzip2q_s16(v140, v141);
    v45[4] = vrev16q_s8(vzip1q_s16(v142, v143));
    v45[5] = vrev16q_s8(vzip2q_s16(v142, v143));
    v45[6] = vrev16q_s8(vzip1q_s16(v144, v145));
    v45[7] = vrev16q_s8(vzip2q_s16(v144, v145));
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v146 = v20 + 8;
  v147 = v20 + 32;
  v148 = v20 + 40;
  v149 = v20 + 64;
  v150 = v20 + 72;
  a2 = v20;
  if (v12 >= 1)
  {
LABEL_21:
    v152 = v12 + 1;
    v153 = result + 4;
    v154.i64[0] = 0xE000E000E000E00;
    v154.i64[1] = 0xE000E000E000E00;
    v155 = vdupq_n_s32(0x41159F90u);
    v156.i64[0] = 0x7F0000007FLL;
    v156.i64[1] = 0x7F0000007FLL;
    v157.i64[0] = 0x8000800080008000;
    v157.i64[1] = 0x8000800080008000;
    v158.i64[0] = -1;
    v158.i64[1] = -1;
    do
    {
      v159 = *a2++;
      v160 = vaddq_s16(v159, v154);
      v161 = *v147++;
      v162 = v161;
      v163 = *v148++;
      v164 = vcltzq_s16(v160);
      v165 = vzip1q_s16(v160, v164);
      v166 = vzip2q_s16(v160, v164);
      v167 = vcltzq_s16(v162);
      v168 = vcvtq_f32_s32(vzip1q_s16(v162, v167));
      v169 = vcvtq_f32_s32(vzip2q_s16(v162, v167));
      v170 = vcltzq_s16(v163);
      v171 = vcvtq_f32_s32(vzip1q_s16(v163, v170));
      v172 = vcvtq_f32_s32(vzip2q_s16(v163, v170));
      v173 = vmulq_f32(vcvtq_f32_s32(v165), v155);
      v174 = vaddq_f32(v173, vmulq_f32(v7, v171));
      v175 = vaddq_f32(v173, vmulq_f32(v9, v168));
      v176 = vaddq_f32(v173, vmulq_f32(v10, v168));
      v177 = vaddq_f32(v175, vmulq_f32(v8, v171));
      v178 = vmulq_f32(vcvtq_f32_s32(v166), v155);
      v179 = vaddq_f32(v178, vmulq_f32(v7, v172));
      v180 = vaddq_f32(vaddq_f32(v178, vmulq_f32(v9, v169)), vmulq_f32(v8, v172));
      v181 = vaddq_f32(v178, vmulq_f32(v10, v169));
      v182 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v174), v156)), vaddq_s32(vcvtnq_s32_f32(v179), v156));
      v183 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v177), v156)), vaddq_s32(vcvtnq_s32_f32(v180), v156));
      v184 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v176), v156)), vaddq_s32(vcvtnq_s32_f32(v181), v156));
      v185 = veorq_s8(v183, v157);
      v186 = veorq_s8(v182, v157);
      v187 = vzip1q_s16(v158, v185);
      v188 = veorq_s8(v184, v157);
      v189 = vzip1q_s16(v186, v188);
      v190 = vzip2q_s16(v158, v185);
      v191 = vzip2q_s16(v186, v188);
      v153[-4] = vrev16q_s8(vzip1q_s16(v187, v189));
      v153[-3] = vrev16q_s8(vzip2q_s16(v187, v189));
      v153[-2] = vrev16q_s8(vzip1q_s16(v190, v191));
      v153[-1] = vrev16q_s8(vzip2q_s16(v190, v191));
      v192 = *v146++;
      v193 = vaddq_s16(v192, v154);
      v194 = *v149++;
      v195 = v194;
      v196 = *v150++;
      v197 = vcltzq_s16(v193);
      v198 = vzip1q_s16(v193, v197);
      v199 = vzip2q_s16(v193, v197);
      v200 = vcltzq_s16(v195);
      v201 = vcvtq_f32_s32(vzip1q_s16(v195, v200));
      v202 = vcvtq_f32_s32(vzip2q_s16(v195, v200));
      v203 = vcltzq_s16(v196);
      v204 = vcvtq_f32_s32(vzip1q_s16(v196, v203));
      v205 = vcvtq_f32_s32(vzip2q_s16(v196, v203));
      v206 = vmulq_f32(vcvtq_f32_s32(v198), v155);
      v207 = vaddq_f32(v206, vmulq_f32(v7, v204));
      v208 = vaddq_f32(v206, vmulq_f32(v9, v201));
      v209 = vaddq_f32(v206, vmulq_f32(v10, v201));
      v210 = vmulq_f32(vcvtq_f32_s32(v199), v155);
      v211 = vaddq_f32(v208, vmulq_f32(v8, v204));
      v212 = vaddq_f32(v210, vmulq_f32(v7, v205));
      v213 = vaddq_f32(vaddq_f32(v210, vmulq_f32(v9, v202)), vmulq_f32(v8, v205));
      v214 = vaddq_f32(v210, vmulq_f32(v10, v202));
      v215 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v207), v156)), vaddq_s32(vcvtnq_s32_f32(v212), v156));
      v216 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v211), v156)), vaddq_s32(vcvtnq_s32_f32(v213), v156));
      v217 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v209), v156)), vaddq_s32(vcvtnq_s32_f32(v214), v156));
      v218 = veorq_s8(v216, v157);
      v219 = veorq_s8(v215, v157);
      v220 = veorq_s8(v217, v157);
      v221 = vzip1q_s16(v158, v218);
      v222 = vzip1q_s16(v219, v220);
      v223 = vzip2q_s16(v158, v218);
      v224 = vzip2q_s16(v219, v220);
      *v153 = vrev16q_s8(vzip1q_s16(v221, v222));
      v153[1] = vrev16q_s8(vzip2q_s16(v221, v222));
      v153[2] = vrev16q_s8(vzip1q_s16(v223, v224));
      v153[3] = vrev16q_s8(vzip2q_s16(v223, v224));
      --v152;
      v153 = (v153 + a3);
    }

    while (v152 > 1);
  }

  return result;
}

uint64_t PixelWriter::processMBRow(uint64_t this, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7, unsigned __int8 *a8, double a9, double a10, int8x16_t a11, int8x16_t a12, int32x4_t a13, int16x8_t a14, float32x4_t a15, float32x4_t a16, unsigned int a17, int a18, int a19, unsigned int a20, BOOL a21)
{
  v22 = a7;
  v23 = a6;
  v24 = this;
  v114 = *MEMORY[0x277D85DE8];
  v25 = *(*this + 36);
  if (*(this + 13))
  {
    goto LABEL_45;
  }

  a6 = a17;
  if (v25 > 1937126451)
  {
    if (v25 > 1983000879)
    {
      if (v25 <= 2016687155)
      {
        if (v25 == 1983000880)
        {
          this = convertV216ToV210(a2, a3, v23, a7, a18, a19, a9, a10, a11, a12, a13, a14);
          goto LABEL_45;
        }

        v30 = 2016686642;
LABEL_35:
        if (v25 != v30)
        {
          goto LABEL_45;
        }

LABEL_36:
        this = convertV216ToX422(a2, a3, v23, v22, a8, a17, a18, a19);
        goto LABEL_45;
      }

      if (v25 != 2016687156 && v25 != 2016698739)
      {
        goto LABEL_45;
      }

      v31 = -64;
    }

    else
    {
      if (v25 > 1953903153)
      {
        if (v25 == 1953903154)
        {
          goto LABEL_36;
        }

        v26 = 1953903668;
      }

      else
      {
        if (v25 == 1937126452)
        {
LABEL_43:
          v31 = -1;
          goto LABEL_44;
        }

        v26 = 1949589875;
      }

      if (v25 != v26)
      {
        goto LABEL_45;
      }

      v31 = -16;
    }

LABEL_44:
    this = convertY416ToX444(a2, a3, v23, v22, a8, a17, a18, a19, *(this + 8) == 2, v31);
    goto LABEL_45;
  }

  a7 = a20;
  if (v25 <= 1848848433)
  {
    if (v25 > 1378955370)
    {
      if (v25 == 1378955371)
      {
        if (a18 < 1)
        {
          goto LABEL_45;
        }

        if (a20 == 1)
        {
          v49 = xmmword_2778DE300;
          v50 = xmmword_2778DE310;
        }

        else if (a20 == 9)
        {
          v49 = xmmword_2778DE320;
          v50 = xmmword_2778DE330;
        }

        else
        {
          v49 = xmmword_2778DE340;
          v50 = xmmword_2778DE350;
        }

        if (a19 < 1)
        {
          goto LABEL_45;
        }

        v90 = 0;
        v91 = vdupq_n_s32(0x3C957ABDu);
        v92.i64[0] = 0xFC00FC00FC00FC00;
        v92.i64[1] = 0xFC00FC00FC00FC00;
        v93 = v23;
LABEL_131:
        v94 = 0;
        a16.i64[0] = *a2;
        a16 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a16, xmmword_2778DE360), 0), xmmword_2778DE370));
        v95 = a18;
        v96 = v93;
        v97 = a2;
        while (1)
        {
          if (v95 >= 3)
          {
            v98 = *(v97 + 1);
            v95 -= 2;
          }

          else
          {
            if (v94)
            {
              if (v95 == 1)
              {
                v94->n128_u32[0] = v113;
              }

              a2 += a3;
              v93 = (v93 + v22);
              if (++v90 == a19)
              {
                goto LABEL_45;
              }

              goto LABEL_131;
            }

            v98 = *v97;
            v107 = *v97;
            v94 = v96;
            if (v95 == 1)
            {
              v96 = &v113;
            }

            v97 = &v106;
          }

          v97 += 8;
          v21.i64[0] = v98;
          v21 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v21, xmmword_2778DE360), 0), xmmword_2778DE370));
          v99 = vdupq_lane_s64(vmulq_f32(a16, v91).i64[0], 0);
          v100 = vzip2q_s32(a16, vaddq_f32(a16, v21));
          v101 = vaddq_f32(v99, vmulq_f32(v49, v100));
          v102 = vmulq_f32(v50, v100);
          v103 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v101)), vcvtnq_s32_f32(vaddq_f32(v99, vaddq_f32(v102, vdupq_laneq_s64(v102, 1))))), 0), v92);
          v104 = vzip1q_s16(v103, 0);
          v105 = vrev16q_s8(vorrq_s8(vorrq_s8(vshlq_n_s32(v104, 0x16uLL), vshlq_n_s32(vzip2q_s16(v103, 0), 0xCuLL)), vdupq_laneq_s64(vshlq_n_s32(v104, 2uLL), 1)));
          v96->n128_u64[0] = vsraq_n_u32(vshlq_n_s32(v105, 0x10uLL), v105, 0x10uLL).u64[0];
          v96 = (v96 + 8);
          a16 = v21;
        }
      }

      if (v25 == 1647719521)
      {
        if (*(this + 12) == 1)
        {
          this = from_v216_to_ARGB<(PixelFormat)1647719521,(AlphaOutputMethod)1>(a2, a3, a4, a5, v23, v22, a18, a19, a20);
        }

        else
        {
          this = from_v216_to_ARGB<(PixelFormat)1647719521,(AlphaOutputMethod)2>(a2, a3, v23, v22, a18, a19, a20);
        }
      }
    }

    else if (v25 == 32)
    {
      if (*(this + 12) == 1)
      {
        this = from_v216_to_ARGB<(PixelFormat)32,(AlphaOutputMethod)1>(a2, a3, a4, a5, v23, v22, a18, a19, a9, a10, *a11.i64, *a12.i64, *a13.i64, *a14.i64, a15, a16, a20);
      }

      else
      {
        this = from_v216_to_ARGB<(PixelFormat)32,(AlphaOutputMethod)2>(a2, a3, v23, v22, a18, a19, a20, a9, a10, *a11.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i64, a16);
      }
    }

    else if (v25 == 1111970369)
    {
      if (*(this + 12) == 1)
      {
        this = from_v216_to_ARGB<(PixelFormat)1111970369,(AlphaOutputMethod)1>(a2, a3, a4, a5, v23, v22, a18, a19, a9, a10, *a11.i64, *a12.i64, *a13.i64, *a14.i64, a15, a16, a20);
      }

      else
      {
        this = from_v216_to_ARGB<(PixelFormat)1111970369,(AlphaOutputMethod)2>(a2, a3, v23, v22, a18, a19, a20, a9, a10, *a11.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i64, a16);
      }
    }

    goto LABEL_45;
  }

  if (v25 > 1932812658)
  {
    if (v25 != 1932812659)
    {
      v30 = 1937125938;
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  if (v25 != 1848848434)
  {
    if (v25 != 1915892016 || a18 < 1)
    {
      goto LABEL_45;
    }

    if (a20 == 1)
    {
      v28 = xmmword_2778DE300;
      v29 = xmmword_2778DE310;
    }

    else if (a20 == 9)
    {
      v28 = xmmword_2778DE320;
      v29 = xmmword_2778DE330;
    }

    else
    {
      v28 = xmmword_2778DE340;
      v29 = xmmword_2778DE350;
    }

    if (a19 < 1)
    {
      goto LABEL_45;
    }

    v59 = 0;
    v60 = vdupq_n_s32(0x3C957ABDu);
    v61.i64[0] = 0xFC00FC00FC00FC00;
    v61.i64[1] = 0xFC00FC00FC00FC00;
    v62 = v23;
LABEL_103:
    v63 = 0;
    a16.i64[0] = *a2;
    a16 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a16, xmmword_2778DE360), 0), xmmword_2778DE370));
    v64 = a18;
    v65 = v62;
    v66 = a2;
    while (1)
    {
      if (v64 >= 3)
      {
        v67 = *(v66 + 1);
        v64 -= 2;
      }

      else
      {
        if (v63)
        {
          if (v64 == 1)
          {
            v63->n128_u32[0] = v113;
          }

          a2 += a3;
          v62 = (v62 + v22);
          if (++v59 == a19)
          {
            goto LABEL_45;
          }

          goto LABEL_103;
        }

        v67 = *v66;
        v107 = *v66;
        v63 = v65;
        if (v64 == 1)
        {
          v65 = &v113;
        }

        v66 = &v106;
      }

      v66 += 8;
      v21.i64[0] = v67;
      v21 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v21, xmmword_2778DE360), 0), xmmword_2778DE370));
      v68 = vzip2q_s32(a16, vaddq_f32(a16, v21));
      v69 = vdupq_lane_s64(vmulq_f32(a16, v60).i64[0], 0);
      v70 = vmulq_f32(v28, v68);
      v71 = vmulq_f32(v29, v68);
      v72 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v69, v70))), vcvtnq_s32_f32(vaddq_f32(v69, vaddq_f32(v71, vdupq_laneq_s64(v71, 1))))), 0), v61);
      v73 = vzip1q_s16(v72, 0);
      v74 = vrev16q_s8(vorrq_s8(vorrq_s8(vshlq_n_s32(v73, 0x14uLL), vshlq_n_s32(vzip2q_s16(v72, 0), 0xAuLL)), vdupq_laneq_s64(v73, 1)));
      v65->n128_u64[0] = vsraq_n_u32(vshlq_n_s32(v74, 0x10uLL), v74, 0x10uLL).u64[0];
      v65 = (v65 + 8);
      a16 = v21;
    }
  }

  if (a18 >= 1)
  {
    if (a20 == 1)
    {
      v47 = xmmword_2778DE300;
      v48 = xmmword_2778DE310;
    }

    else if (a20 == 9)
    {
      v47 = xmmword_2778DE320;
      v48 = xmmword_2778DE330;
    }

    else
    {
      v47 = xmmword_2778DE340;
      v48 = xmmword_2778DE350;
    }

    if (a19 >= 1)
    {
      v75 = 0;
      v76 = vdupq_n_s32(0x3C957ABDu);
      v77.i64[0] = 0xFC00FC00FC00FC00;
      v77.i64[1] = 0xFC00FC00FC00FC00;
      v78 = v23;
      do
      {
        v79 = 0;
        a16.i64[0] = *a2;
        a16 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a16, xmmword_2778DE360), 0), xmmword_2778DE370));
        v80 = a18;
        v81 = v78;
        v82 = a2;
        while (1)
        {
          if (v80 >= 3)
          {
            v83 = *(v82 + 1);
            v80 -= 2;
            goto LABEL_119;
          }

          if (v79)
          {
            break;
          }

          v83 = *v82;
          v107 = *v82;
          v79 = v81;
          if (v80 == 1)
          {
            v81 = &v113;
          }

          v82 = &v106;
LABEL_119:
          v82 += 8;
          v21.i64[0] = v83;
          v21 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v21, xmmword_2778DE360), 0), xmmword_2778DE370));
          v84 = vzip2q_s32(a16, vaddq_f32(a16, v21));
          v85 = vdupq_lane_s64(vmulq_f32(a16, v76).i64[0], 0);
          v86 = vaddq_f32(v85, vmulq_f32(v47, v84));
          v87 = vmulq_f32(v48, v84);
          v88 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v86)), vcvtnq_s32_f32(vaddq_f32(v85, vaddq_f32(v87, vdupq_laneq_s64(v87, 1))))), 0), v77);
          v89 = vzip1q_s16(v88, 0);
          v81->n128_u64[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(v89, 0x16uLL), vshlq_n_s32(vzip2q_s16(v88, 0), 0xCuLL)), vdupq_laneq_s64(vshlq_n_s32(v89, 2uLL), 1)).u64[0];
          v81 = (v81 + 8);
          a16 = v21;
        }

        if (v80 == 1)
        {
          v79->n128_u32[0] = v113;
        }

        a2 += a3;
        v78 = (v78 + v22);
        ++v75;
      }

      while (v75 != a19);
    }
  }

LABEL_45:
  if (a21 && v24[2] == 2)
  {
    if (v25 == 1916036716)
    {
      if (a19 >= 1)
      {
        v42 = a18 + 14;
        if (a18 >= 1)
        {
          v42 = a18 - 1;
        }

        if (a18 >= 17)
        {
          v43 = 0;
          v44 = &v23[16].n128_i8[8];
          do
          {
            v45 = v44;
            v46 = (v42 >> 4) + 1;
            do
            {
              v45[-2] = vmul_f32(vadd_f32(v45[-4], *v45), 0x3F0000003F000000);
              --v46;
              v45 += 32;
            }

            while (v46 > 1);
            ++v43;
            v44 = (v44 + v22);
          }

          while (v43 != a19);
        }
      }
    }

    else if (v25 == 2033463606 && a19 >= 1)
    {
      if (a18 >= 1)
      {
        v34 = a18 - 1;
      }

      else
      {
        v34 = a18 + 14;
      }

      v35 = a18 & 0xF;
      if (a18 < 17)
      {
        if ((a18 & 0xF) == 0)
        {
          v51 = &v23[7].n128_i8[14];
          v52 = a19;
          do
          {
            *(v51 - 2) = *(v51 - 10);
            v51 += v22;
            --v52;
          }

          while (v52);
        }
      }

      else
      {
        v36 = v34 >> 4;
        if ((a18 & 0xF) != 0)
        {
          v37 = 0;
          v38 = v36 + 1;
          v39 = &v23[8].n128_u16[3];
          do
          {
            v40 = v39;
            v41 = v38;
            do
            {
              *(v40 - 5) = (*(v40 - 9) + *(v40 - 1) + 1) >> 1;
              *(v40 - 4) = (*(v40 - 8) + *v40 + 1) >> 1;
              --v41;
              v40 += 64;
            }

            while (v41 > 1);
            ++v37;
            v39 = (v39 + v22);
          }

          while (v37 != a19);
        }

        else
        {
          v53 = v36 + 1;
          v54 = &v23[7].n128_u16[2];
          do
          {
            v55 = v54;
            v56 = v53;
            do
            {
              v55[4] = (*v55 + v55[8] + 1) >> 1;
              v55[5] = (v55[1] + v55[9] + 1) >> 1;
              --v56;
              v55 += 64;
            }

            while (v56 > 1);
            *(v55 + 2) = *v55;
            ++v35;
            v54 = (v54 + v22);
          }

          while (v35 != a19);
        }
      }
    }
  }

  v57 = *v24;
  v58 = *(*v24 + 56);
  if (v58)
  {
    v106 = v23;
    LODWORD(v107) = a18;
    v108 = v22;
    v109 = v23;
    v111 = v22;
    v110 = *(v57 + 40);
    v112 = a19;
    return v58(&v106, a2, a3, a4, a5, a6, a7, a8);
  }

  return this;
}

unint64_t *from_v216_to_ARGB<(PixelFormat)32,(AlphaOutputMethod)1>(unint64_t *result, int a2, unsigned __int8 *a3, int a4, int8x8_t *a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15, float32x4_t a16, int a17)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a7 >= 1)
  {
    if (a17 != 1)
    {
      if (a17 == 9)
      {
        v17 = xmmword_2778DE3A0;
        v18 = xmmword_2778DE3B0;
        if (a8 < 1)
        {
          return result;
        }
      }

      else
      {
        v17 = xmmword_2778DE3C0;
        v18 = xmmword_2778DE3D0;
        if (a8 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v17 = xmmword_2778DE380;
    v18 = xmmword_2778DE390;
    if (a8 >= 1)
    {
LABEL_9:
      v19 = 0;
      v20 = vdupq_n_s32(0x3B950A85u);
      do
      {
        v21 = 0;
        v35 = 0;
        a15.i64[0] = *result;
        a15 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a15, xmmword_2778DE360), 0), xmmword_2778DE370));
        v22 = a7;
        v23 = a5;
        v24 = a3;
        v25 = result;
        while (1)
        {
          if (v22 >= 3)
          {
            v26 = v25[1];
            v22 -= 2;
            goto LABEL_13;
          }

          if (v21)
          {
            break;
          }

          v26 = *v25;
          v38 = *v25;
          v25 = &v37;
          if (v22 == 1)
          {
            v35 = *v24;
            v24 = &v35;
            v21 = v23;
            v23 = &v36;
          }

          else
          {
            v21 = v23;
          }

LABEL_13:
          ++v25;
          a16.i64[0] = v26;
          a16 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a16, xmmword_2778DE360), 0), xmmword_2778DE370));
          v27 = vzip2q_s32(a15, vaddq_f32(a15, a16));
          v28 = vdupq_lane_s64(vmulq_f32(a15, v20).i64[0], 0);
          v29 = vaddq_f32(v28, vmulq_f32(v17, v27));
          v30 = vmulq_f32(v18, v27);
          v31 = vaddq_f32(v28, vaddq_f32(v30, vdupq_laneq_s64(v30, 1)));
          v32 = vcvtnq_s32_f32(v29);
          v33 = vcvtnq_s32_f32(v31);
          *v32.i8 = vqmovn_s32(v32);
          v34 = *v24;
          v24 += 2;
          v29.i32[0] = v34;
          *v32.i8 = vuzp1_s16(*v32.i8, vrev32_s16(*v32.i8));
          *v23++ = vqmovun_s16(vzip1q_s16(vzip2q_s16(vdupq_lane_s64(vzip1q_s8(v29, 0).i64[0], 0), vqmovn_high_s32(*v33.i8, v33)), v32));
          a15 = a16;
        }

        if (v22 == 1)
        {
          v21->i32[0] = v36;
        }

        result = (result + a2);
        a5 = (a5 + a6);
        a3 += a4;
        ++v19;
      }

      while (v19 != a8);
    }
  }

  return result;
}

unint64_t *from_v216_to_ARGB<(PixelFormat)32,(AlphaOutputMethod)2>(unint64_t *result, int a2, int8x8_t *a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v16 = xmmword_2778DE3A0;
        v17 = xmmword_2778DE3B0;
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v16 = xmmword_2778DE3C0;
        v17 = xmmword_2778DE3D0;
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v16 = xmmword_2778DE380;
    v17 = xmmword_2778DE390;
    if (a6 >= 1)
    {
LABEL_9:
      v18 = 0;
      v19 = vdupq_n_s32(0x3B950A85u);
      v20.i64[0] = 0xFF00FF00FF00FFLL;
      v20.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v21 = 0;
        a15.i64[0] = *result;
        a15 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a15, xmmword_2778DE360), 0), xmmword_2778DE370));
        v22 = a5;
        v23 = a3;
        v24 = result;
        while (1)
        {
          if (v22 >= 3)
          {
            v25 = v24[1];
            v22 -= 2;
            goto LABEL_13;
          }

          if (v21)
          {
            break;
          }

          v25 = *v24;
          v35 = *v24;
          v21 = v23;
          if (v22 == 1)
          {
            v23 = &v33;
          }

          v24 = &v34;
LABEL_13:
          ++v24;
          v15.i64[0] = v25;
          v15 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v15, xmmword_2778DE360), 0), xmmword_2778DE370));
          v26 = vzip2q_s32(a15, vaddq_f32(a15, v15));
          v27 = vdupq_lane_s64(vmulq_f32(a15, v19).i64[0], 0);
          v28 = vaddq_f32(v27, vmulq_f32(v16, v26));
          v29 = vmulq_f32(v17, v26);
          v30 = vaddq_f32(v27, vaddq_f32(v29, vdupq_laneq_s64(v29, 1)));
          v31 = vcvtnq_s32_f32(v28);
          v32 = vcvtnq_s32_f32(v30);
          *v31.i8 = vqmovn_s32(v31);
          *v31.i8 = vuzp1_s16(*v31.i8, vrev32_s16(*v31.i8));
          *v23++ = vqmovun_s16(vzip1q_s16(vzip2q_s16(v20, vqmovn_high_s32(*v32.i8, v32)), v31));
          a15 = v15;
        }

        if (v22 == 1)
        {
          v21->i32[0] = v33;
        }

        result = (result + a2);
        a3 = (a3 + a4);
        ++v18;
      }

      while (v18 != a6);
    }
  }

  return result;
}

unint64_t *from_v216_to_ARGB<(PixelFormat)1111970369,(AlphaOutputMethod)1>(unint64_t *result, int a2, unsigned __int8 *a3, int a4, int8x8_t *a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15, float32x4_t a16, int a17)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a7 >= 1)
  {
    if (a17 != 1)
    {
      if (a17 == 9)
      {
        v17 = xmmword_2778DE3A0;
        v18 = xmmword_2778DE3B0;
        if (a8 < 1)
        {
          return result;
        }
      }

      else
      {
        v17 = xmmword_2778DE3C0;
        v18 = xmmword_2778DE3D0;
        if (a8 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v17 = xmmword_2778DE380;
    v18 = xmmword_2778DE390;
    if (a8 >= 1)
    {
LABEL_9:
      v19 = 0;
      v20 = vdupq_n_s32(0x3B950A85u);
      do
      {
        v21 = 0;
        v35 = 0;
        a15.i64[0] = *result;
        a15 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a15, xmmword_2778DE360), 0), xmmword_2778DE370));
        v22 = a7;
        v23 = a5;
        v24 = a3;
        v25 = result;
        while (1)
        {
          if (v22 >= 3)
          {
            v26 = v25[1];
            v22 -= 2;
            goto LABEL_13;
          }

          if (v21)
          {
            break;
          }

          v26 = *v25;
          v38 = *v25;
          v25 = &v37;
          if (v22 == 1)
          {
            v35 = *v24;
            v24 = &v35;
            v21 = v23;
            v23 = &v36;
          }

          else
          {
            v21 = v23;
          }

LABEL_13:
          ++v25;
          a16.i64[0] = v26;
          a16 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a16, xmmword_2778DE360), 0), xmmword_2778DE370));
          v27 = vzip2q_s32(a15, vaddq_f32(a15, a16));
          v28 = vdupq_lane_s64(vmulq_f32(a15, v20).i64[0], 0);
          v29 = vaddq_f32(v28, vmulq_f32(v17, v27));
          v30 = vmulq_f32(v18, v27);
          v31 = vaddq_f32(v28, vaddq_f32(v30, vdupq_laneq_s64(v30, 1)));
          v32 = vcvtnq_s32_f32(v29);
          v33 = vcvtnq_s32_f32(v31);
          *v32.i8 = vqmovn_s32(v32);
          v34 = *v24;
          v24 += 2;
          v29.i32[0] = v34;
          *v32.i8 = vzip2_s16(*v32.i8, vext_s8(*v32.i8, *v32.i8, 4uLL));
          *v23++ = vqmovun_s16(vzip1q_s16(v32, vzip2q_s16(vqmovn_high_s32(*v33.i8, v33), vdupq_lane_s64(vzip1q_s8(v29, 0).i64[0], 0))));
          a15 = a16;
        }

        if (v22 == 1)
        {
          v21->i32[0] = v36;
        }

        result = (result + a2);
        a5 = (a5 + a6);
        a3 += a4;
        ++v19;
      }

      while (v19 != a8);
    }
  }

  return result;
}

unint64_t *from_v216_to_ARGB<(PixelFormat)1111970369,(AlphaOutputMethod)2>(unint64_t *result, int a2, int8x8_t *a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v16 = xmmword_2778DE3A0;
        v17 = xmmword_2778DE3B0;
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v16 = xmmword_2778DE3C0;
        v17 = xmmword_2778DE3D0;
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v16 = xmmword_2778DE380;
    v17 = xmmword_2778DE390;
    if (a6 >= 1)
    {
LABEL_9:
      v18 = 0;
      v19 = vdupq_n_s32(0x3B950A85u);
      v20.i64[0] = 0xFF00FF00FF00FFLL;
      v20.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v21 = 0;
        a15.i64[0] = *result;
        a15 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(a15, xmmword_2778DE360), 0), xmmword_2778DE370));
        v22 = a5;
        v23 = a3;
        v24 = result;
        while (1)
        {
          if (v22 >= 3)
          {
            v25 = v24[1];
            v22 -= 2;
            goto LABEL_13;
          }

          if (v21)
          {
            break;
          }

          v25 = *v24;
          v35 = *v24;
          v21 = v23;
          if (v22 == 1)
          {
            v23 = &v33;
          }

          v24 = &v34;
LABEL_13:
          ++v24;
          v15.i64[0] = v25;
          v15 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v15, xmmword_2778DE360), 0), xmmword_2778DE370));
          v26 = vzip2q_s32(a15, vaddq_f32(a15, v15));
          v27 = vdupq_lane_s64(vmulq_f32(a15, v19).i64[0], 0);
          v28 = vaddq_f32(v27, vmulq_f32(v16, v26));
          v29 = vmulq_f32(v17, v26);
          v30 = vaddq_f32(v27, vaddq_f32(v29, vdupq_laneq_s64(v29, 1)));
          v31 = vcvtnq_s32_f32(v28);
          v32 = vcvtnq_s32_f32(v30);
          *v31.i8 = vqmovn_s32(v31);
          *v31.i8 = vzip2_s16(*v31.i8, vext_s8(*v31.i8, *v31.i8, 4uLL));
          *v23++ = vqmovun_s16(vzip1q_s16(v31, vzip2q_s16(vqmovn_high_s32(*v32.i8, v32), v20)));
          a15 = v15;
        }

        if (v22 == 1)
        {
          v21->i32[0] = v33;
        }

        result = (result + a2);
        a3 = (a3 + a4);
        ++v18;
      }

      while (v18 != a6);
    }
  }

  return result;
}

uint64_t *from_v216_to_ARGB<(PixelFormat)1647719521,(AlphaOutputMethod)1>(uint64_t *result, int a2, __int32 *a3, int a4, int8x16_t *a5, int a6, int a7, int a8, int a9)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a7 >= 1)
  {
    if (a9 != 1)
    {
      if (a9 == 9)
      {
        v11 = xmmword_2778DE400;
        v12 = xmmword_2778DE410;
        if (a8 < 1)
        {
          return result;
        }
      }

      else
      {
        v11 = xmmword_2778DE420;
        v12 = xmmword_2778DE430;
        if (a8 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v11 = xmmword_2778DE3E0;
    v12 = xmmword_2778DE3F0;
    if (a8 >= 1)
    {
LABEL_9:
      v13 = 0;
      v14 = vdupq_n_s32(0x3F959F90u);
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16.i64[0] = 0x8000800080008000;
      v16.i64[1] = 0x8000800080008000;
      do
      {
        v17 = 0;
        v31 = 0;
        v9.i64[0] = *result;
        v9 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v9, xmmword_2778DE360), 0), xmmword_2778DE370));
        v18 = a7;
        v19 = a5;
        v20 = a3;
        v21 = result;
        while (1)
        {
          if (v18 >= 3)
          {
            v22 = v21[1];
            v18 -= 2;
            goto LABEL_13;
          }

          if (v17)
          {
            break;
          }

          v22 = *v21;
          v34 = *v21;
          v21 = &v33;
          if (v18 == 1)
          {
            v31 = *v20;
            v20 = &v31;
            v17 = v19;
            v19 = &v32;
          }

          else
          {
            v17 = v19;
          }

LABEL_13:
          ++v21;
          v10.i64[0] = v22;
          v10 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v10, xmmword_2778DE360), 0), xmmword_2778DE370));
          v23 = vzip2q_s32(v9, vaddq_f32(v9, v10));
          v24 = vdupq_lane_s64(vmulq_f32(v9, v14).i64[0], 0);
          v25 = vaddq_f32(v24, vmulq_f32(v11, v23));
          v26 = vmulq_f32(v12, v23);
          v27 = vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v24, vaddq_f32(v26, vdupq_laneq_s64(v26, 1)))), v15);
          v28 = *v20++;
          v29 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v25), v15)), v27);
          v27.i32[0] = v28;
          v30 = veorq_s8(v29, v16);
          *v19++ = vrev16q_s8(vzip1q_s16(vzip2q_s16(vdupq_lane_s64(v27.i64[0], 0), v30), vqtbl1q_s8(v30, xmmword_2778DE440)));
          v9 = v10;
        }

        if (v18 == 1)
        {
          *v17 = v32;
        }

        result = (result + a2);
        a5 = (a5 + a6);
        a3 = (a3 + a4);
        ++v13;
      }

      while (v13 != a8);
    }
  }

  return result;
}

uint64_t *from_v216_to_ARGB<(PixelFormat)1647719521,(AlphaOutputMethod)2>(uint64_t *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v9 = xmmword_2778DE400;
        v10 = xmmword_2778DE410;
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v9 = xmmword_2778DE420;
        v10 = xmmword_2778DE430;
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v9 = xmmword_2778DE3E0;
    v10 = xmmword_2778DE3F0;
    if (a6 >= 1)
    {
LABEL_9:
      v11 = 0;
      v12 = vdupq_n_s32(0x3F959F90u);
      v13.i64[0] = 0x7F0000007FLL;
      v13.i64[1] = 0x7F0000007FLL;
      v14.i64[0] = 0x8000800080008000;
      v14.i64[1] = 0x8000800080008000;
      v15.i64[0] = -1;
      v15.i64[1] = -1;
      do
      {
        v16 = 0;
        v7.i64[0] = *result;
        v7 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v7, xmmword_2778DE360), 0), xmmword_2778DE370));
        v17 = a5;
        v18 = a3;
        v19 = result;
        while (1)
        {
          if (v17 >= 3)
          {
            v20 = v19[1];
            v17 -= 2;
            goto LABEL_13;
          }

          if (v16)
          {
            break;
          }

          v20 = *v19;
          v28 = *v19;
          v16 = v18;
          if (v17 == 1)
          {
            v18 = &v26;
          }

          v19 = &v27;
LABEL_13:
          ++v19;
          v8.i64[0] = v20;
          v8 = vcvtq_f32_s32(vaddq_s32(vzip1q_s16(vqtbl1q_s8(v8, xmmword_2778DE360), 0), xmmword_2778DE370));
          v21 = vzip2q_s32(v7, vaddq_f32(v7, v8));
          v22 = vdupq_lane_s64(vmulq_f32(v7, v12).i64[0], 0);
          v23 = vaddq_f32(v22, vmulq_f32(v9, v21));
          v24 = vmulq_f32(v10, v21);
          v25 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtnq_s32_f32(v23), v13)), vaddq_s32(vcvtnq_s32_f32(vaddq_f32(v22, vaddq_f32(v24, vdupq_laneq_s64(v24, 1)))), v13)), v14);
          *v18++ = vrev16q_s8(vzip1q_s16(vzip2q_s16(v15, v25), vqtbl1q_s8(v25, xmmword_2778DE440)));
          v7 = v8;
        }

        if (v17 == 1)
        {
          *v16 = v26;
        }

        result = (result + a2);
        a3 = (a3 + a4);
        ++v11;
      }

      while (v11 != a6);
    }
  }

  return result;
}

_DWORD *from_422_to_AYUV_UYVY_WxH<(PixelFormat)846624121,(AlphaOutputMethod)0>(_DWORD *result, __int16 *a2, int a3, int a4, unsigned int a5, int a6)
{
  if (a5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (a6 >= 1)
  {
    v7 = a3;
    v8 = a6 * a5;
    v9 = (4 * v8);
    v10 = v8;
    v11 = a4 & ~(a4 >> 31);
    if (a5 == 1)
    {
      v12 = 0;
      v13 = v9;
      v14 = v13 * 2 + v10 * 2;
      v15 = v10 * 2;
      v16 = a6;
      do
      {
        if (!v11)
        {
          break;
        }

        v17.i16[0] = a2[v13];
        v17.i16[1] = a2[v12];
        v17.i16[2] = *(a2 + v14);
        v17.i16[3] = *(a2 + v15);
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v17, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        result = (result + a3);
        --v11;
        ++v12;
        v14 += 2;
        ++v13;
        v15 += 2;
        --v16;
      }

      while (v16);
      v18 = (a2 + v14);
      v19 = (a2 + v15);
      if (a6 <= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = a6;
      }

      v21 = v20 - a6;
      do
      {
        if (!v21)
        {
          break;
        }

        v22 = &v19[v10];
        v23.i16[0] = *v18;
        v23.i16[1] = *v19++;
        v23.i16[2] = v18[v10];
        v23.i16[3] = *v22;
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v23, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        ++v18;
        result = (result + a3);
        --v21;
        --a6;
      }

      while (a6);
    }

    else
    {
      v24 = 0;
      v25 = &a2[v9];
      v26 = &v25[v10];
      v27 = &a2[v10];
      v28 = 2 * a5;
      do
      {
        if (v24 == v11)
        {
          break;
        }

        v29 = *v25++;
        v30.i16[0] = v29;
        v30.i16[1] = *a2;
        v30.i16[2] = *v26++;
        v30.i16[3] = a2[1];
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v30, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        v31 = 1;
        v32 = v6 - 1;
        do
        {
          v33 = *v25++;
          v34.i16[0] = v33;
          v34.i16[1] = *v27;
          v34.i16[2] = *v26++;
          v34.i16[3] = v27[1];
          result[v31++] = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v34, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
          --v32;
        }

        while (v32);
        result = (result + v7);
        a2 = (a2 + v28);
        v27 = (v27 + v28);
        ++v24;
      }

      while (v24 != a6);
      v35 = 0;
      v36 = &v26[v10];
      v37 = &v27[v10];
      if (a6 <= a4)
      {
        v38 = a4;
      }

      else
      {
        v38 = a6;
      }

      v39 = v38 - a6;
      do
      {
        if (v35 == v39)
        {
          break;
        }

        v40 = *v26++;
        v41.i16[0] = v40;
        v41.i16[1] = *v27;
        v41.i16[2] = *v36++;
        v41.i16[3] = v27[1];
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v41, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        v42 = 1;
        do
        {
          v43 = *v26++;
          v44.i16[0] = v43;
          v44.i16[1] = *v37;
          v44.i16[2] = *v36++;
          v44.i16[3] = v37[1];
          result[v42++] = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v44, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        }

        while (v6 != v42);
        result = (result + v7);
        v27 = (v27 + v28);
        v37 = (v37 + v28);
        ++v35;
      }

      while (v35 != a6);
    }
  }

  return result;
}

int8x16_t from_422_to_y408_r408_4xH<false,(AlphaOutputMethod)1,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, uint64_t a5, int a6, unsigned int a7, int8x16_t result)
{
  v8 = a7 >> 1;
  v9 = (4 * v8);
  v10 = (6 * v8);
  v11 = (a7 * a3);
  v12 = a5 + (8 * a6);
  v13 = 8 / a7 * a6;
  v14 = a4 - a7;
  if (a4 <= a7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a4 - a7;
  }

  v16 = a4 - v15;
  if (v15 < 2)
  {
    v59 = a7 >> 1;
    v51 = &a2[v59];
    v58 = &a2[a7 & 0xFFFFFFFE];
    v52 = &v58[v59];
    v53 = &a2[v9];
    v54 = &v53[v59];
    v55 = &a2[v10];
    v56 = &v55[v59];
    v57 = &a1->i8[v11];
    if (!(v16 + v15))
    {
      return result;
    }

LABEL_10:
    if (v15 == 1)
    {
      v60 = vqmovn_high_s16(vqmovn_s16(*v58), *v52);
      *v60.i8 = vmovn_s64(v60);
      v61.i64[0] = 0x8080808080808080;
      v61.i64[1] = 0x8080808080808080;
      v62 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v55), *v56), v61);
      v63.i16[0] = *v12;
      v63.i16[1] = BYTE2(*v12);
      v63.i16[2] = BYTE4(*v12);
      v63.i16[3] = BYTE6(*v12);
      v63.i16[4] = *(v12 + 8);
      v63.i16[5] = BYTE2(*(v12 + 8));
      v63.i16[6] = BYTE12(*v12);
      v63.i16[7] = BYTE14(*v12);
      *v63.i8 = vqmovun_s16(v63);
      v64 = vzip1q_s8(v63, veorq_s8(v60, v61));
      v65 = vzip1q_s8(vzip1q_s8(v62, v62), vzip2q_s8(v62, v62));
      v66 = vzip1q_s16(v64, v65);
      result = vzip2q_s16(v64, v65);
      *v57 = v66;
      v57[1] = result;
      if (v16 < 2)
      {
LABEL_12:
        if (v16 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v16 < 2)
    {
      goto LABEL_12;
    }

    v67 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    do
    {
      v68 = v16;
      v69 = vqmovn_high_s16(vqmovn_s16(a2[v67]), v51[v67]);
      v70 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v53[v67]), v54[v67]), result);
      v71 = vzip1q_s8(v70, v70);
      v72 = vzip2q_s8(v70, v70);
      v73.i16[0] = *a5;
      v73.i16[1] = BYTE2(*a5);
      v73.i16[2] = BYTE4(*a5);
      v73.i16[3] = BYTE6(*a5);
      v73.i16[4] = *(a5 + 8);
      v73.i16[5] = BYTE2(*(a5 + 8));
      v73.i16[6] = BYTE12(*a5);
      v73.i16[7] = BYTE14(*a5);
      v74.i16[0] = *(a5 + v13);
      v74.i16[1] = BYTE2(*(a5 + v13));
      v74.i16[2] = BYTE4(*(a5 + v13));
      v74.i16[3] = BYTE6(*(a5 + v13));
      v74.i16[4] = *(a5 + v13 + 8);
      v74.i16[5] = BYTE2(*(a5 + v13 + 8));
      v74.i16[6] = BYTE12(*(a5 + v13));
      v74.i16[7] = BYTE14(*(a5 + v13));
      v75 = vqmovun_high_s16(vqmovun_s16(v73), v74);
      v76 = veorq_s8(vuzp1q_s32(v69, vrev64q_s32(v69)), result);
      v77 = vzip1q_s8(v75, v76);
      v78 = vzip1q_s8(v71, v72);
      *a1 = vzip1q_s16(v77, v78);
      a1[1] = vzip2q_s16(v77, v78);
      v79 = vzip2q_s8(v75, v76);
      v80 = vzip2q_s8(v71, v72);
      v81 = (a1->i16 + a3);
      vst2_s16(v81, v79);
      v81 += 8;
      a1 = (a1 + 2 * a3);
      *v81 = vzip2q_s16(v79, v80);
      v16 = v68 - 2;
      a5 += 2 * v13;
      ++v67;
    }

    while (v68 > 3);
    a2 = (a2 + v67 * 16);
    v51 = (v51 + v67 * 16);
    v53 = (v53 + v67 * 16);
    v54 = (v54 + v67 * 16);
    if (v68 != 3)
    {
      return result;
    }

LABEL_18:
    v82 = vqmovn_high_s16(vqmovn_s16(*a2), *v51);
    *v82.i8 = vmovn_s64(v82);
    v83.i64[0] = 0x8080808080808080;
    v83.i64[1] = 0x8080808080808080;
    v84 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v53), *v54), v83);
    v85.i16[0] = *a5;
    v85.i16[1] = BYTE2(*a5);
    v85.i16[2] = BYTE4(*a5);
    v85.i16[3] = BYTE6(*a5);
    v85.i16[4] = *(a5 + 8);
    v85.i16[5] = BYTE2(*(a5 + 8));
    v85.i16[6] = BYTE12(*a5);
    v85.i16[7] = BYTE14(*a5);
    *v85.i8 = vqmovun_s16(v85);
    v86 = vzip1q_s8(v85, veorq_s8(v82, v83));
    v87 = vzip1q_s8(vzip1q_s8(v84, v84), vzip2q_s8(v84, v84));
    v88 = vzip1q_s16(v86, v87);
    result = vzip2q_s16(v86, v87);
    *a1 = v88;
    a1[1] = result;
    return result;
  }

  v17 = 2 * v13;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v15 = v14;
  do
  {
    v21 = v15;
    v22 = vqmovn_high_s16(vqmovn_s16(*a2), a2[v8]);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v19]), a2[v8 + v19]), result);
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26.i16[0] = *a5;
    v26.i16[1] = BYTE2(*a5);
    v26.i16[2] = BYTE4(*a5);
    v26.i16[3] = BYTE6(*a5);
    v26.i16[4] = *(a5 + 8);
    v26.i16[5] = BYTE2(*(a5 + 8));
    v26.i16[6] = BYTE12(*a5);
    v26.i16[7] = BYTE14(*a5);
    v27.i16[0] = *(a5 + v13);
    v27.i16[1] = BYTE2(*(a5 + v13));
    v27.i16[2] = BYTE4(*(a5 + v13));
    v27.i16[3] = BYTE6(*(a5 + v13));
    v27.i16[4] = *(a5 + v13 + 8);
    v27.i16[5] = BYTE2(*(a5 + v13 + 8));
    v27.i16[6] = BYTE12(*(a5 + v13));
    v27.i16[7] = BYTE14(*(a5 + v13));
    v28 = vqmovun_high_s16(vqmovun_s16(v26), v27);
    v29 = veorq_s8(vuzp1q_s32(v22, vrev64q_s32(v22)), result);
    v30 = vzip1q_s8(v28, v29);
    v31 = vzip1q_s8(v24, v25);
    *a1 = vzip1q_s16(v30, v31);
    a1[1] = vzip2q_s16(v30, v31);
    v32 = vzip2q_s8(v28, v29);
    v33 = vzip2q_s8(v24, v25);
    v34 = (a1->i16 + a3);
    vst2_s16(v34, v32);
    v34 += 8;
    *v34 = vzip2q_s16(v32, v33);
    v35 = a2[2 * v8];
    v36 = a2[3 * v8];
    v37 = a2[v20];
    v38 = a2[v8 + v20];
    ++a2;
    v39 = (a1->i16 + v11);
    v40 = (a1->i16 + a3 + v11);
    a1 = (a1 + 2 * a3);
    v16 -= 2;
    v41 = vqmovn_high_s16(vqmovn_s16(v35), v36);
    v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v37), v38), result);
    v43 = vzip1q_s8(v42, v42);
    v44 = vzip2q_s8(v42, v42);
    v33.i16[0] = *v12;
    v33.i16[1] = BYTE2(*v12);
    v33.i16[2] = BYTE4(*v12);
    v33.i16[3] = BYTE6(*v12);
    v33.i16[4] = *(v12 + 8);
    v33.i16[5] = BYTE2(*(v12 + 8));
    v33.i16[6] = BYTE12(*v12);
    v33.i16[7] = BYTE14(*v12);
    v38.i16[0] = *(v12 + v13);
    v38.i16[1] = BYTE2(*(v12 + v13));
    v38.i16[2] = BYTE4(*(v12 + v13));
    v38.i16[3] = BYTE6(*(v12 + v13));
    v38.i16[4] = *(v12 + v13 + 8);
    v38.i16[5] = BYTE2(*(v12 + v13 + 8));
    v38.i16[6] = BYTE12(*(v12 + v13));
    v38.i16[7] = BYTE14(*(v12 + v13));
    v45 = vqmovun_high_s16(vqmovun_s16(v33), v38);
    v46 = veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), result);
    v47 = vzip1q_s8(v45, v46);
    v48 = vzip1q_s8(v43, v44);
    vst2_s16(v39, v47);
    v39 += 8;
    *v39 = vzip2q_s16(v47, v48);
    v49 = vzip2q_s8(v45, v46);
    v50 = vzip2q_s8(v43, v44);
    vst2_s16(v40, v49);
    v40 += 8;
    a5 += v17;
    *v40 = vzip2q_s16(v49, v50);
    v15 = v21 - 2;
    v12 += v17;
  }

  while (v21 > 3);
  v51 = &a2[v18];
  v52 = &a2[3 * v8];
  v53 = &a2[v19];
  v54 = &a2[v18 + v19];
  v55 = &a2[v20];
  v56 = &a2[v18 + v20];
  v57 = &a1->i8[v11];
  v58 = &a2[2 * v8];
  if (v16 + v15)
  {
    goto LABEL_10;
  }

  return result;
}

_BYTE *from_422_to_AYUV_UYVY_WxH<(PixelFormat)2033463352,(AlphaOutputMethod)1>(_BYTE *result, __int16 *a2, int a3, int a4, _BYTE *a5, int a6, int a7, int a8)
{
  if (a8 >= 1 && a7 >= 1)
  {
    v8 = 0;
    v9 = (a8 * a7);
    v10 = 8u / a8 * a6;
    v11 = &a2[(4 * v9)];
    v12 = v9;
    v13 = &v11[v9];
    v14 = &a2[v12];
    v15 = 2 * a7;
    v16 = 8u / a7;
    do
    {
      if (v8 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      if (a7 == 1)
      {
        v17 = result + 4;
        v18 = *a2;
        v19 = *v11;
        v20 = *v13;
        *result = *a5;
        if (v18 >= 127)
        {
          v21 = 127;
        }

        else
        {
          v21 = v18;
        }

        if (v21 <= -128)
        {
          LOBYTE(v21) = 0x80;
        }

        result[1] = v21 ^ 0x80;
        if (v19 >= 127)
        {
          v22 = 127;
        }

        else
        {
          v22 = v19;
        }

        if (v22 <= -128)
        {
          LOBYTE(v22) = 0x80;
        }

        result[2] = v22 ^ 0x80;
        if (v20 >= 127)
        {
          v23 = 127;
        }

        else
        {
          v23 = v20;
        }

        if (v23 <= -128)
        {
          LOBYTE(v23) = 0x80;
        }

        result[3] = v23 ^ 0x80;
        v24 = &a5[v16];
      }

      else
      {
        v25 = 0;
        v26 = a7;
        v24 = a5;
        v17 = result;
        do
        {
          v27 = a2[v25];
          v28 = *v11;
          v29 = *v13;
          *v17 = *v24;
          if (v27 >= 127)
          {
            v30 = 127;
          }

          else
          {
            v30 = v27;
          }

          if (v30 <= -128)
          {
            LOBYTE(v30) = 0x80;
          }

          v17[1] = v30 ^ 0x80;
          if (v28 >= 127)
          {
            v31 = 127;
          }

          else
          {
            v31 = v28;
          }

          if (v31 <= -128)
          {
            LOBYTE(v31) = 0x80;
          }

          v17[2] = v31 ^ 0x80;
          if (v29 >= 127)
          {
            v32 = 127;
          }

          else
          {
            v32 = v29;
          }

          if (v32 <= -128)
          {
            LOBYTE(v32) = 0x80;
          }

          v17[3] = v32 ^ 0x80;
          v17 += 4;
          v24 += v16;
          v33 = (v25 * 2) & 2;
          v11 = (v11 + v33);
          v13 = (v13 + v33);
          ++v25;
          --v26;
        }

        while (v26);
      }

      v34 = 0;
      do
      {
        v35 = v14[v34];
        v36 = *v11;
        v37 = *v13;
        if (v35 >= 127)
        {
          v35 = 127;
        }

        if (v35 <= -128)
        {
          LOBYTE(v35) = 0x80;
        }

        if (v36 >= 127)
        {
          v36 = 127;
        }

        if (v36 <= -128)
        {
          LOBYTE(v36) = 0x80;
        }

        if (v37 >= 127)
        {
          v37 = 127;
        }

        if (v37 <= -128)
        {
          LOBYTE(v37) = 0x80;
        }

        v38 = (v34 & 1) != 0 || a7 == 1;
        *v17 = *v24;
        v17[1] = v35 ^ 0x80;
        v17[2] = v36 ^ 0x80;
        v17[3] = v37 ^ 0x80;
        v24 += v16;
        if (v38)
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }

        v11 = (v11 + v39);
        v13 = (v13 + v39);
        ++v34;
        v17 += 4;
      }

      while (a7 != v34);
      result += a3;
      a5 += v10;
      a2 = (a2 + v15);
      v14 = (v14 + v15);
      ++v8;
    }

    while (v8 != a8);
    v40 = 0;
    v41 = &v13[v12];
    v42 = &v14[v12];
    if (a8 <= a4)
    {
      v43 = a4;
    }

    else
    {
      v43 = a8;
    }

    v44 = v43 - a8;
    do
    {
      if (v40 == v44)
      {
        break;
      }

      if (a7 == 1)
      {
        v45 = result + 4;
        v46 = *v14;
        v47 = *v13;
        v48 = *v41;
        *result = *a5;
        if (v46 >= 127)
        {
          v49 = 127;
        }

        else
        {
          v49 = v46;
        }

        if (v49 <= -128)
        {
          LOBYTE(v49) = 0x80;
        }

        result[1] = v49 ^ 0x80;
        if (v47 >= 127)
        {
          v50 = 127;
        }

        else
        {
          v50 = v47;
        }

        if (v50 <= -128)
        {
          LOBYTE(v50) = 0x80;
        }

        result[2] = v50 ^ 0x80;
        if (v48 >= 127)
        {
          v51 = 127;
        }

        else
        {
          v51 = v48;
        }

        if (v51 <= -128)
        {
          LOBYTE(v51) = 0x80;
        }

        result[3] = v51 ^ 0x80;
        v52 = &a5[v16];
      }

      else
      {
        v53 = 0;
        v54 = a7;
        v52 = a5;
        v45 = result;
        do
        {
          v55 = v14[v53];
          v56 = *v13;
          v57 = *v41;
          *v45 = *v52;
          if (v55 >= 127)
          {
            v58 = 127;
          }

          else
          {
            v58 = v55;
          }

          if (v58 <= -128)
          {
            LOBYTE(v58) = 0x80;
          }

          v45[1] = v58 ^ 0x80;
          if (v56 >= 127)
          {
            v59 = 127;
          }

          else
          {
            v59 = v56;
          }

          if (v59 <= -128)
          {
            LOBYTE(v59) = 0x80;
          }

          v45[2] = v59 ^ 0x80;
          if (v57 >= 127)
          {
            v60 = 127;
          }

          else
          {
            v60 = v57;
          }

          if (v60 <= -128)
          {
            LOBYTE(v60) = 0x80;
          }

          v45[3] = v60 ^ 0x80;
          v45 += 4;
          v52 += v16;
          v61 = (v53 * 2) & 2;
          v13 = (v13 + v61);
          v41 = (v41 + v61);
          ++v53;
          --v54;
        }

        while (v54);
      }

      v62 = 0;
      do
      {
        v63 = v42[v62];
        v64 = *v13;
        v65 = *v41;
        if (v63 >= 127)
        {
          v63 = 127;
        }

        if (v63 <= -128)
        {
          LOBYTE(v63) = 0x80;
        }

        if (v64 >= 127)
        {
          v64 = 127;
        }

        if (v64 <= -128)
        {
          LOBYTE(v64) = 0x80;
        }

        if (v65 >= 127)
        {
          v65 = 127;
        }

        if (v65 <= -128)
        {
          LOBYTE(v65) = 0x80;
        }

        v66 = (v62 & 1) != 0 || a7 == 1;
        *v45 = *v52;
        v45[1] = v63 ^ 0x80;
        v45[2] = v64 ^ 0x80;
        v45[3] = v65 ^ 0x80;
        v52 += v16;
        if (v66)
        {
          v67 = 2;
        }

        else
        {
          v67 = 0;
        }

        v13 = (v13 + v67);
        v41 = (v41 + v67);
        ++v62;
        v45 += 4;
      }

      while (a7 != v62);
      result += a3;
      a5 += v10;
      v14 = (v14 + v15);
      ++v40;
      v42 = (v42 + v15);
    }

    while (v40 != a8);
  }

  return result;
}

_BYTE *from_422_to_AYUV_UYVY_WxH<(PixelFormat)2033463352,(AlphaOutputMethod)2>(_BYTE *result, __int16 *a2, int a3, int a4, int a5, int a6)
{
  if (a6 >= 1 && a5 >= 1)
  {
    v6 = 0;
    v7 = (a6 * a5);
    v8 = &a2[(4 * v7)];
    v9 = v7;
    v10 = &a2[v7];
    v11 = &v8[v9];
    v12 = 2 * a5;
    do
    {
      if (v6 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      if (a5 == 1)
      {
        v13 = *a2;
        v14 = *v8;
        v15 = *v11;
        *result = -1;
        if (v13 >= 127)
        {
          v13 = 127;
        }

        if (v13 <= -128)
        {
          LOBYTE(v13) = 0x80;
        }

        result[1] = v13 ^ 0x80;
        if (v14 >= 127)
        {
          v16 = 127;
        }

        else
        {
          v16 = v14;
        }

        if (v16 <= -128)
        {
          LOBYTE(v16) = 0x80;
        }

        result[2] = v16 ^ 0x80;
        if (v15 >= 127)
        {
          v17 = 127;
        }

        else
        {
          v17 = v15;
        }

        if (v17 <= -128)
        {
          LOBYTE(v17) = 0x80;
        }

        result[3] = v17 ^ 0x80;
        v18 = result + 4;
      }

      else
      {
        v19 = 0;
        v20 = a5;
        v18 = result;
        do
        {
          v21 = a2[v19];
          v22 = *v8;
          v23 = *v11;
          *v18 = -1;
          if (v21 >= 127)
          {
            v21 = 127;
          }

          if (v21 <= -128)
          {
            LOBYTE(v21) = 0x80;
          }

          v18[1] = v21 ^ 0x80;
          if (v22 >= 127)
          {
            v24 = 127;
          }

          else
          {
            v24 = v22;
          }

          if (v24 <= -128)
          {
            LOBYTE(v24) = 0x80;
          }

          v18[2] = v24 ^ 0x80;
          if (v23 >= 127)
          {
            v25 = 127;
          }

          else
          {
            v25 = v23;
          }

          if (v25 <= -128)
          {
            LOBYTE(v25) = 0x80;
          }

          v18[3] = v25 ^ 0x80;
          v18 += 4;
          v26 = (v19 * 2) & 2;
          v11 = (v11 + v26);
          v8 = (v8 + v26);
          ++v19;
          --v20;
        }

        while (v20);
      }

      v27 = 0;
      do
      {
        v28 = v10[v27];
        v29 = *v8;
        v30 = *v11;
        if (v28 >= 127)
        {
          v28 = 127;
        }

        if (v28 <= -128)
        {
          LOBYTE(v28) = 0x80;
        }

        if (v29 >= 127)
        {
          v29 = 127;
        }

        if (v29 <= -128)
        {
          LOBYTE(v29) = 0x80;
        }

        if (v30 >= 127)
        {
          v30 = 127;
        }

        if (v30 <= -128)
        {
          LOBYTE(v30) = 0x80;
        }

        v31 = (v27 & 1) != 0 || a5 == 1;
        *v18 = -1;
        v18[1] = v28 ^ 0x80;
        v18[2] = v29 ^ 0x80;
        v18[3] = v30 ^ 0x80;
        if (v31)
        {
          v32 = 2;
        }

        else
        {
          v32 = 0;
        }

        v11 = (v11 + v32);
        v8 = (v8 + v32);
        ++v27;
        v18 += 4;
      }

      while (a5 != v27);
      result += a3;
      a2 = (a2 + v12);
      v10 = (v10 + v12);
      ++v6;
    }

    while (v6 != a6);
    v33 = 0;
    v34 = &v10[v9];
    v35 = &v11[v9];
    if (a6 <= a4)
    {
      v36 = a4;
    }

    else
    {
      v36 = a6;
    }

    v37 = v36 - a6;
    do
    {
      if (v33 == v37)
      {
        break;
      }

      if (a5 == 1)
      {
        v38 = *v10;
        v39 = *v11;
        v40 = *v35;
        *result = -1;
        if (v38 >= 127)
        {
          v38 = 127;
        }

        if (v38 <= -128)
        {
          LOBYTE(v38) = 0x80;
        }

        result[1] = v38 ^ 0x80;
        if (v39 >= 127)
        {
          v41 = 127;
        }

        else
        {
          v41 = v39;
        }

        if (v41 <= -128)
        {
          LOBYTE(v41) = 0x80;
        }

        result[2] = v41 ^ 0x80;
        if (v40 >= 127)
        {
          v42 = 127;
        }

        else
        {
          v42 = v40;
        }

        if (v42 <= -128)
        {
          LOBYTE(v42) = 0x80;
        }

        result[3] = v42 ^ 0x80;
        v43 = result + 4;
      }

      else
      {
        v44 = 0;
        v45 = a5;
        v43 = result;
        do
        {
          v46 = v10[v44];
          v47 = *v11;
          v48 = *v35;
          *v43 = -1;
          if (v46 >= 127)
          {
            v46 = 127;
          }

          if (v46 <= -128)
          {
            LOBYTE(v46) = 0x80;
          }

          v43[1] = v46 ^ 0x80;
          if (v47 >= 127)
          {
            v49 = 127;
          }

          else
          {
            v49 = v47;
          }

          if (v49 <= -128)
          {
            LOBYTE(v49) = 0x80;
          }

          v43[2] = v49 ^ 0x80;
          if (v48 >= 127)
          {
            v50 = 127;
          }

          else
          {
            v50 = v48;
          }

          if (v50 <= -128)
          {
            LOBYTE(v50) = 0x80;
          }

          v43[3] = v50 ^ 0x80;
          v43 += 4;
          v51 = (v44 * 2) & 2;
          v35 = (v35 + v51);
          v11 = (v11 + v51);
          ++v44;
          --v45;
        }

        while (v45);
      }

      v52 = 0;
      do
      {
        v53 = v34[v52];
        v54 = *v11;
        v55 = *v35;
        if (v53 >= 127)
        {
          v53 = 127;
        }

        if (v53 <= -128)
        {
          LOBYTE(v53) = 0x80;
        }

        if (v54 >= 127)
        {
          v54 = 127;
        }

        if (v54 <= -128)
        {
          LOBYTE(v54) = 0x80;
        }

        if (v55 >= 127)
        {
          v55 = 127;
        }

        if (v55 <= -128)
        {
          LOBYTE(v55) = 0x80;
        }

        v56 = (v52 & 1) != 0 || a5 == 1;
        *v43 = -1;
        v43[1] = v53 ^ 0x80;
        v43[2] = v54 ^ 0x80;
        v43[3] = v55 ^ 0x80;
        if (v56)
        {
          v57 = 2;
        }

        else
        {
          v57 = 0;
        }

        v35 = (v35 + v57);
        v11 = (v11 + v57);
        ++v52;
        v43 += 4;
      }

      while (a5 != v52);
      result += a3;
      v10 = (v10 + v12);
      ++v33;
      v34 = (v34 + v12);
    }

    while (v33 != a6);
  }

  return result;
}

int8x16_t from_422_to_y408_r408_4xH<true,(AlphaOutputMethod)1,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, uint64_t a5, int a6, unsigned int a7, int8x16_t result)
{
  v8 = a7 >> 1;
  v9 = (4 * v8);
  v10 = (6 * v8);
  v11 = (a7 * a3);
  v12 = a5 + (8 * a6);
  v13 = 8 / a7 * a6;
  v14 = a4 - a7;
  if (a4 <= a7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a4 - a7;
  }

  v16 = a4 - v15;
  if (v15 < 2)
  {
    v59 = a7 >> 1;
    v51 = &a2[v59];
    v58 = &a2[a7 & 0xFFFFFFFE];
    v52 = &v58[v59];
    v53 = &a2[v9];
    v54 = &v53[v59];
    v55 = &a2[v10];
    v56 = &v55[v59];
    v57 = &a1->i8[v11];
    if (!(v16 + v15))
    {
      return result;
    }

LABEL_10:
    if (v15 == 1)
    {
      v60 = vqmovn_high_s16(vqmovn_s16(*v58), *v52);
      v61.i64[0] = 0x8080808080808080;
      v61.i64[1] = 0x8080808080808080;
      v62.i64[0] = 0x1010101010101010;
      v62.i64[1] = 0x1010101010101010;
      v63 = vqsubq_u8(veorq_s8(vuzp1q_s32(v60, vrev64q_s32(v60)), v61), v62);
      v64 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v55), *v56), v61);
      v62.i16[0] = *v12;
      v62.i16[1] = BYTE2(*v12);
      v62.i16[2] = BYTE4(*v12);
      v62.i16[3] = BYTE6(*v12);
      v62.i16[4] = *(v12 + 8);
      v62.i16[5] = BYTE2(*(v12 + 8));
      v62.i16[6] = BYTE12(*v12);
      v62.i16[7] = BYTE14(*v12);
      *v62.i8 = vqmovun_s16(v62);
      v65 = vzip1q_s8(v62, v63);
      v66 = vzip1q_s8(vzip1q_s8(v64, v64), vzip2q_s8(v64, v64));
      v67 = vzip1q_s16(v65, v66);
      result = vzip2q_s16(v65, v66);
      *v57 = v67;
      v57[1] = result;
      if (v16 < 2)
      {
LABEL_12:
        if (v16 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v16 < 2)
    {
      goto LABEL_12;
    }

    v68 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v69.i64[0] = 0x1010101010101010;
    v69.i64[1] = 0x1010101010101010;
    do
    {
      v70 = v16;
      v71 = vqmovn_high_s16(vqmovn_s16(a2[v68]), v51[v68]);
      v72 = vqsubq_u8(veorq_s8(vuzp1q_s32(v71, vrev64q_s32(v71)), result), v69);
      v73 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v53[v68]), v54[v68]), result);
      v74 = vzip1q_s8(v73, v73);
      v75 = vzip2q_s8(v73, v73);
      v76.i16[0] = *a5;
      v76.i16[1] = BYTE2(*a5);
      v76.i16[2] = BYTE4(*a5);
      v76.i16[3] = BYTE6(*a5);
      v76.i16[4] = *(a5 + 8);
      v76.i16[5] = BYTE2(*(a5 + 8));
      v76.i16[6] = BYTE12(*a5);
      v76.i16[7] = BYTE14(*a5);
      v77.i16[0] = *(a5 + v13);
      v77.i16[1] = BYTE2(*(a5 + v13));
      v77.i16[2] = BYTE4(*(a5 + v13));
      v77.i16[3] = BYTE6(*(a5 + v13));
      v77.i16[4] = *(a5 + v13 + 8);
      v77.i16[5] = BYTE2(*(a5 + v13 + 8));
      v77.i16[6] = BYTE12(*(a5 + v13));
      v77.i16[7] = BYTE14(*(a5 + v13));
      v78 = vqmovun_high_s16(vqmovun_s16(v76), v77);
      v79 = vzip1q_s8(v78, v72);
      v80 = vzip1q_s8(v74, v75);
      *a1 = vzip1q_s16(v79, v80);
      a1[1] = vzip2q_s16(v79, v80);
      v81 = vzip2q_s8(v78, v72);
      v82 = vzip2q_s8(v74, v75);
      v83 = (a1->i16 + a3);
      vst2_s16(v83, v81);
      v83 += 8;
      a1 = (a1 + 2 * a3);
      *v83 = vzip2q_s16(v81, v82);
      v16 = v70 - 2;
      a5 += 2 * v13;
      ++v68;
    }

    while (v70 > 3);
    a2 = (a2 + v68 * 16);
    v51 = (v51 + v68 * 16);
    v53 = (v53 + v68 * 16);
    v54 = (v54 + v68 * 16);
    if (v70 != 3)
    {
      return result;
    }

LABEL_18:
    v84 = vqmovn_high_s16(vqmovn_s16(*a2), *v51);
    v85.i64[0] = 0x8080808080808080;
    v85.i64[1] = 0x8080808080808080;
    v86.i64[0] = 0x1010101010101010;
    v86.i64[1] = 0x1010101010101010;
    v87 = vqsubq_u8(veorq_s8(vuzp1q_s32(v84, vrev64q_s32(v84)), v85), v86);
    v88 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v53), *v54), v85);
    v86.i16[0] = *a5;
    v86.i16[1] = BYTE2(*a5);
    v86.i16[2] = BYTE4(*a5);
    v86.i16[3] = BYTE6(*a5);
    v86.i16[4] = *(a5 + 8);
    v86.i16[5] = BYTE2(*(a5 + 8));
    v86.i16[6] = BYTE12(*a5);
    v86.i16[7] = BYTE14(*a5);
    *v86.i8 = vqmovun_s16(v86);
    v89 = vzip1q_s8(v86, v87);
    v90 = vzip1q_s8(vzip1q_s8(v88, v88), vzip2q_s8(v88, v88));
    v91 = vzip1q_s16(v89, v90);
    result = vzip2q_s16(v89, v90);
    *a1 = v91;
    a1[1] = result;
    return result;
  }

  v17 = 2 * v13;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v21.i64[0] = 0x1010101010101010;
  v21.i64[1] = 0x1010101010101010;
  v15 = v14;
  do
  {
    v22 = vqmovn_high_s16(vqmovn_s16(*a2), a2[v8]);
    v23 = vqsubq_u8(veorq_s8(vuzp1q_s32(v22, vrev64q_s32(v22)), result), v21);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v19]), a2[v8 + v19]), result);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27.i16[0] = *a5;
    v27.i16[1] = BYTE2(*a5);
    v27.i16[2] = BYTE4(*a5);
    v27.i16[3] = BYTE6(*a5);
    v27.i16[4] = *(a5 + 8);
    v27.i16[5] = BYTE2(*(a5 + 8));
    v27.i16[6] = BYTE12(*a5);
    v27.i16[7] = BYTE14(*a5);
    v28.i16[0] = *(a5 + v13);
    v28.i16[1] = BYTE2(*(a5 + v13));
    v28.i16[2] = BYTE4(*(a5 + v13));
    v28.i16[3] = BYTE6(*(a5 + v13));
    v28.i16[4] = *(a5 + v13 + 8);
    v28.i16[5] = BYTE2(*(a5 + v13 + 8));
    v28.i16[6] = BYTE12(*(a5 + v13));
    v28.i16[7] = BYTE14(*(a5 + v13));
    v29 = vqmovun_high_s16(vqmovun_s16(v27), v28);
    v30 = vzip1q_s8(v29, v23);
    v31 = vzip1q_s8(v25, v26);
    *a1 = vzip1q_s16(v30, v31);
    a1[1] = vzip2q_s16(v30, v31);
    v32 = vzip2q_s8(v29, v23);
    v33 = vzip2q_s8(v25, v26);
    v34 = (a1->i16 + a3);
    vst2_s16(v34, v32);
    v34 += 8;
    *v34 = vzip2q_s16(v32, v33);
    v35 = a2[2 * v8];
    v36 = a2[3 * v8];
    v37 = a2[v20];
    v38 = a2[v8 + v20];
    LODWORD(v34) = v15;
    ++a2;
    v39 = (a1->i16 + v11);
    v40 = (a1->i16 + a3 + v11);
    a1 = (a1 + 2 * a3);
    v16 -= 2;
    v41 = vqmovn_high_s16(vqmovn_s16(v35), v36);
    v42 = vqsubq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), result), v21);
    v43 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v37), v38), result);
    v44 = vzip1q_s8(v43, v43);
    v45 = vzip2q_s8(v43, v43);
    v38.i16[0] = *v12;
    v38.i16[1] = BYTE2(*v12);
    v38.i16[2] = BYTE4(*v12);
    v38.i16[3] = BYTE6(*v12);
    v38.i16[4] = *(v12 + 8);
    v38.i16[5] = BYTE2(*(v12 + 8));
    v38.i16[6] = BYTE12(*v12);
    v38.i16[7] = BYTE14(*v12);
    v33.i16[0] = *(v12 + v13);
    v33.i16[1] = BYTE2(*(v12 + v13));
    v33.i16[2] = BYTE4(*(v12 + v13));
    v33.i16[3] = BYTE6(*(v12 + v13));
    v33.i16[4] = *(v12 + v13 + 8);
    v33.i16[5] = BYTE2(*(v12 + v13 + 8));
    v33.i16[6] = BYTE12(*(v12 + v13));
    v33.i16[7] = BYTE14(*(v12 + v13));
    v46 = vqmovun_high_s16(vqmovun_s16(v38), v33);
    v47 = vzip1q_s8(v46, v42);
    v48 = vzip1q_s8(v44, v45);
    vst2_s16(v39, v47);
    v39 += 8;
    *v39 = vzip2q_s16(v47, v48);
    v49 = vzip2q_s8(v46, v42);
    v50 = vzip2q_s8(v44, v45);
    vst2_s16(v40, v49);
    v40 += 8;
    a5 += v17;
    *v40 = vzip2q_s16(v49, v50);
    v15 = v34 - 2;
    v12 += v17;
  }

  while (v34 > 3);
  v51 = &a2[v18];
  v52 = &a2[3 * v8];
  v53 = &a2[v19];
  v54 = &a2[v18 + v19];
  v55 = &a2[v20];
  v56 = &a2[v18 + v20];
  v57 = &a1->i8[v11];
  v58 = &a2[2 * v8];
  if (v16 + v15)
  {
    goto LABEL_10;
  }

  return result;
}

_BYTE *from_422_to_AYUV_UYVY_WxH<(PixelFormat)1916022840,(AlphaOutputMethod)1>(_BYTE *result, __int16 *a2, int a3, int a4, _BYTE *a5, int a6, int a7, int a8)
{
  if (a8 >= 1 && a7 >= 1)
  {
    v8 = 0;
    v9 = (a8 * a7);
    v10 = 8u / a8 * a6;
    v11 = &a2[(4 * v9)];
    v12 = v9;
    v13 = &v11[v9];
    v14 = &a2[v12];
    v15 = 2 * a7;
    v16 = 8u / a7;
    do
    {
      if (v8 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      if (a7 == 1)
      {
        v17 = result + 4;
        v18 = *a2;
        v19 = *v11;
        v20 = *v13;
        *result = *a5;
        v21 = v18 + 112;
        if (v18 > 127)
        {
          v21 = -17;
        }

        if (v18 < -112)
        {
          v21 = 0;
        }

        result[1] = v21;
        if (v19 >= 127)
        {
          v22 = 127;
        }

        else
        {
          v22 = v19;
        }

        if (v22 <= -128)
        {
          LOBYTE(v22) = 0x80;
        }

        result[2] = v22 ^ 0x80;
        if (v20 >= 127)
        {
          v23 = 127;
        }

        else
        {
          v23 = v20;
        }

        if (v23 <= -128)
        {
          LOBYTE(v23) = 0x80;
        }

        result[3] = v23 ^ 0x80;
        v24 = &a5[v16];
      }

      else
      {
        v25 = 0;
        v26 = a7;
        v24 = a5;
        v17 = result;
        do
        {
          v27 = a2[v25];
          v28 = *v11;
          v29 = *v13;
          *v17 = *v24;
          v30 = v27 + 112;
          if (v27 > 127)
          {
            v30 = -17;
          }

          if (v27 < -112)
          {
            v30 = 0;
          }

          v17[1] = v30;
          if (v28 >= 127)
          {
            v31 = 127;
          }

          else
          {
            v31 = v28;
          }

          if (v31 <= -128)
          {
            LOBYTE(v31) = 0x80;
          }

          v17[2] = v31 ^ 0x80;
          if (v29 >= 127)
          {
            v32 = 127;
          }

          else
          {
            v32 = v29;
          }

          if (v32 <= -128)
          {
            LOBYTE(v32) = 0x80;
          }

          v17[3] = v32 ^ 0x80;
          v17 += 4;
          v24 += v16;
          v33 = (v25 * 2) & 2;
          v11 = (v11 + v33);
          v13 = (v13 + v33);
          ++v25;
          --v26;
        }

        while (v26);
      }

      v34 = 0;
      do
      {
        v35 = v14[v34];
        v36 = *v11;
        v37 = *v13;
        v38 = v35 + 112;
        if (v35 > 127)
        {
          v38 = -17;
        }

        if (v35 >= -112)
        {
          v39 = v38;
        }

        else
        {
          v39 = 0;
        }

        if (v36 >= 127)
        {
          v36 = 127;
        }

        if (v36 <= -128)
        {
          LOBYTE(v36) = 0x80;
        }

        if (v37 >= 127)
        {
          v37 = 127;
        }

        if (v37 <= -128)
        {
          LOBYTE(v37) = 0x80;
        }

        v40 = (v34 & 1) != 0 || a7 == 1;
        *v17 = *v24;
        v17[1] = v39;
        v17[2] = v36 ^ 0x80;
        v17[3] = v37 ^ 0x80;
        v24 += v16;
        if (v40)
        {
          v41 = 2;
        }

        else
        {
          v41 = 0;
        }

        v11 = (v11 + v41);
        v13 = (v13 + v41);
        ++v34;
        v17 += 4;
      }

      while (a7 != v34);
      result += a3;
      a5 += v10;
      a2 = (a2 + v15);
      v14 = (v14 + v15);
      ++v8;
    }

    while (v8 != a8);
    v42 = 0;
    v43 = &v13[v12];
    v44 = &v14[v12];
    if (a8 <= a4)
    {
      v45 = a4;
    }

    else
    {
      v45 = a8;
    }

    v46 = v45 - a8;
    do
    {
      if (v42 == v46)
      {
        break;
      }

      if (a7 == 1)
      {
        v47 = result + 4;
        v48 = *v14;
        v49 = *v13;
        v50 = *v43;
        *result = *a5;
        v51 = v48 + 112;
        if (v48 > 127)
        {
          v51 = -17;
        }

        if (v48 < -112)
        {
          v51 = 0;
        }

        result[1] = v51;
        if (v49 >= 127)
        {
          v52 = 127;
        }

        else
        {
          v52 = v49;
        }

        if (v52 <= -128)
        {
          LOBYTE(v52) = 0x80;
        }

        result[2] = v52 ^ 0x80;
        if (v50 >= 127)
        {
          v53 = 127;
        }

        else
        {
          v53 = v50;
        }

        if (v53 <= -128)
        {
          LOBYTE(v53) = 0x80;
        }

        result[3] = v53 ^ 0x80;
        v54 = &a5[v16];
      }

      else
      {
        v55 = 0;
        v56 = a7;
        v54 = a5;
        v47 = result;
        do
        {
          v57 = v14[v55];
          v58 = *v13;
          v59 = *v43;
          *v47 = *v54;
          v60 = v57 + 112;
          if (v57 > 127)
          {
            v60 = -17;
          }

          if (v57 < -112)
          {
            v60 = 0;
          }

          v47[1] = v60;
          if (v58 >= 127)
          {
            v61 = 127;
          }

          else
          {
            v61 = v58;
          }

          if (v61 <= -128)
          {
            LOBYTE(v61) = 0x80;
          }

          v47[2] = v61 ^ 0x80;
          if (v59 >= 127)
          {
            v62 = 127;
          }

          else
          {
            v62 = v59;
          }

          if (v62 <= -128)
          {
            LOBYTE(v62) = 0x80;
          }

          v47[3] = v62 ^ 0x80;
          v47 += 4;
          v54 += v16;
          v63 = (v55 * 2) & 2;
          v13 = (v13 + v63);
          v43 = (v43 + v63);
          ++v55;
          --v56;
        }

        while (v56);
      }

      v64 = 0;
      do
      {
        v65 = v44[v64];
        v66 = *v13;
        v67 = *v43;
        v68 = v65 + 112;
        if (v65 > 127)
        {
          v68 = -17;
        }

        if (v65 >= -112)
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        if (v66 >= 127)
        {
          v66 = 127;
        }

        if (v66 <= -128)
        {
          LOBYTE(v66) = 0x80;
        }

        if (v67 >= 127)
        {
          v67 = 127;
        }

        if (v67 <= -128)
        {
          LOBYTE(v67) = 0x80;
        }

        v70 = (v64 & 1) != 0 || a7 == 1;
        *v47 = *v54;
        v47[1] = v69;
        v47[2] = v66 ^ 0x80;
        v47[3] = v67 ^ 0x80;
        v54 += v16;
        if (v70)
        {
          v71 = 2;
        }

        else
        {
          v71 = 0;
        }

        v13 = (v13 + v71);
        v43 = (v43 + v71);
        ++v64;
        v47 += 4;
      }

      while (a7 != v64);
      result += a3;
      a5 += v10;
      v14 = (v14 + v15);
      ++v42;
      v44 = (v44 + v15);
    }

    while (v42 != a8);
  }

  return result;
}

_BYTE *from_422_to_AYUV_UYVY_WxH<(PixelFormat)1916022840,(AlphaOutputMethod)2>(_BYTE *result, __int16 *a2, int a3, int a4, int a5, int a6)
{
  if (a6 >= 1 && a5 >= 1)
  {
    v6 = 0;
    v7 = (a6 * a5);
    v8 = &a2[(4 * v7)];
    v9 = v7;
    v10 = &a2[v7];
    v11 = &v8[v9];
    v12 = 2 * a5;
    do
    {
      if (v6 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      if (a5 == 1)
      {
        v13 = *a2;
        v14 = *v8;
        v15 = *v11;
        *result = -1;
        v16 = v13 + 112;
        if (v13 > 127)
        {
          v16 = -17;
        }

        if (v13 >= -112)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        result[1] = v17;
        if (v14 >= 127)
        {
          v18 = 127;
        }

        else
        {
          v18 = v14;
        }

        if (v18 <= -128)
        {
          LOBYTE(v18) = 0x80;
        }

        result[2] = v18 ^ 0x80;
        if (v15 >= 127)
        {
          v19 = 127;
        }

        else
        {
          v19 = v15;
        }

        if (v19 <= -128)
        {
          LOBYTE(v19) = 0x80;
        }

        result[3] = v19 ^ 0x80;
        v20 = result + 4;
      }

      else
      {
        v21 = 0;
        v22 = a5;
        v20 = result;
        do
        {
          v23 = a2[v21];
          v24 = *v8;
          v25 = *v11;
          *v20 = -1;
          v26 = v23 + 112;
          if (v23 > 127)
          {
            v26 = -17;
          }

          if (v23 >= -112)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v20[1] = v27;
          if (v24 >= 127)
          {
            v28 = 127;
          }

          else
          {
            v28 = v24;
          }

          if (v28 <= -128)
          {
            LOBYTE(v28) = 0x80;
          }

          v20[2] = v28 ^ 0x80;
          if (v25 >= 127)
          {
            v29 = 127;
          }

          else
          {
            v29 = v25;
          }

          if (v29 <= -128)
          {
            LOBYTE(v29) = 0x80;
          }

          v20[3] = v29 ^ 0x80;
          v20 += 4;
          v30 = (v21 * 2) & 2;
          v11 = (v11 + v30);
          v8 = (v8 + v30);
          ++v21;
          --v22;
        }

        while (v22);
      }

      v31 = 0;
      do
      {
        v32 = v10[v31];
        v33 = *v8;
        v34 = *v11;
        v35 = v32 + 112;
        if (v32 > 127)
        {
          v35 = -17;
        }

        if (v32 >= -112)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        if (v33 >= 127)
        {
          v33 = 127;
        }

        if (v33 <= -128)
        {
          LOBYTE(v33) = 0x80;
        }

        if (v34 >= 127)
        {
          v34 = 127;
        }

        if (v34 <= -128)
        {
          LOBYTE(v34) = 0x80;
        }

        v37 = (v31 & 1) != 0 || a5 == 1;
        *v20 = -1;
        v20[1] = v36;
        v20[2] = v33 ^ 0x80;
        v20[3] = v34 ^ 0x80;
        if (v37)
        {
          v38 = 2;
        }

        else
        {
          v38 = 0;
        }

        v11 = (v11 + v38);
        v8 = (v8 + v38);
        ++v31;
        v20 += 4;
      }

      while (a5 != v31);
      result += a3;
      a2 = (a2 + v12);
      v10 = (v10 + v12);
      ++v6;
    }

    while (v6 != a6);
    v39 = 0;
    v40 = &v10[v9];
    v41 = &v11[v9];
    if (a6 <= a4)
    {
      v42 = a4;
    }

    else
    {
      v42 = a6;
    }

    v43 = v42 - a6;
    do
    {
      if (v39 == v43)
      {
        break;
      }

      if (a5 == 1)
      {
        v44 = *v10;
        v45 = *v11;
        v46 = *v41;
        *result = -1;
        v47 = v44 + 112;
        if (v44 > 127)
        {
          v47 = -17;
        }

        if (v44 >= -112)
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        result[1] = v48;
        if (v45 >= 127)
        {
          v49 = 127;
        }

        else
        {
          v49 = v45;
        }

        if (v49 <= -128)
        {
          LOBYTE(v49) = 0x80;
        }

        result[2] = v49 ^ 0x80;
        if (v46 >= 127)
        {
          v50 = 127;
        }

        else
        {
          v50 = v46;
        }

        if (v50 <= -128)
        {
          LOBYTE(v50) = 0x80;
        }

        result[3] = v50 ^ 0x80;
        v51 = result + 4;
      }

      else
      {
        v52 = 0;
        v53 = a5;
        v51 = result;
        do
        {
          v54 = v10[v52];
          v55 = *v11;
          v56 = *v41;
          *v51 = -1;
          v57 = v54 + 112;
          if (v54 > 127)
          {
            v57 = -17;
          }

          if (v54 >= -112)
          {
            v58 = v57;
          }

          else
          {
            v58 = 0;
          }

          v51[1] = v58;
          if (v55 >= 127)
          {
            v59 = 127;
          }

          else
          {
            v59 = v55;
          }

          if (v59 <= -128)
          {
            LOBYTE(v59) = 0x80;
          }

          v51[2] = v59 ^ 0x80;
          if (v56 >= 127)
          {
            v60 = 127;
          }

          else
          {
            v60 = v56;
          }

          if (v60 <= -128)
          {
            LOBYTE(v60) = 0x80;
          }

          v51[3] = v60 ^ 0x80;
          v51 += 4;
          v61 = (v52 * 2) & 2;
          v41 = (v41 + v61);
          v11 = (v11 + v61);
          ++v52;
          --v53;
        }

        while (v53);
      }

      v62 = 0;
      do
      {
        v63 = v40[v62];
        v64 = *v11;
        v65 = *v41;
        v66 = v63 + 112;
        if (v63 > 127)
        {
          v66 = -17;
        }

        if (v63 >= -112)
        {
          v67 = v66;
        }

        else
        {
          v67 = 0;
        }

        if (v64 >= 127)
        {
          v64 = 127;
        }

        if (v64 <= -128)
        {
          LOBYTE(v64) = 0x80;
        }

        if (v65 >= 127)
        {
          v65 = 127;
        }

        if (v65 <= -128)
        {
          LOBYTE(v65) = 0x80;
        }

        v68 = (v62 & 1) != 0 || a5 == 1;
        *v51 = -1;
        v51[1] = v67;
        v51[2] = v64 ^ 0x80;
        v51[3] = v65 ^ 0x80;
        if (v68)
        {
          v69 = 2;
        }

        else
        {
          v69 = 0;
        }

        v41 = (v41 + v69);
        v11 = (v11 + v69);
        ++v62;
        v51 += 4;
      }

      while (a5 != v62);
      result += a3;
      v10 = (v10 + v12);
      ++v39;
      v40 = (v40 + v12);
    }

    while (v39 != a6);
  }

  return result;
}

int16x8_t *from_422_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>(int16x8_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A717C0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A717C8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v71 = a2;
    v59 = result;
    v67 = a3;
    v55 = a5;
    v63 = a4;
    from_422_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
    a4 = v63;
    a5 = v55;
    result = v59;
    a3 = v67;
    a2 = v71;
    if (atomic_load_explicit(&qword_280A717C8, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A717D0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v73 = a2;
      v61 = result;
      v69 = a3;
      v57 = a5;
      v65 = a4;
      from_422_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
      a4 = v65;
      a5 = v57;
      result = v61;
      a3 = v69;
      a2 = v73;
      if (atomic_load_explicit(&qword_280A717D8, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v72 = a2;
  v60 = result;
  v68 = a3;
  v56 = a5;
  v64 = a4;
  from_422_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
  a4 = v64;
  a5 = v56;
  result = v60;
  a3 = v68;
  a2 = v72;
  if ((atomic_load_explicit(&qword_280A717D0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A717D8, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v74 = a2;
  v62 = result;
  v70 = a3;
  v58 = a5;
  v66 = a4;
  from_422_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
  a4 = v66;
  a5 = v58;
  result = v62;
  a3 = v70;
  a2 = v74;
LABEL_5:
  v5 = xmmword_280A71C00;
  v6 = *algn_280A71C10;
  v7 = 4 * a5;
  if (a4 <= a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - a5;
  }

  v9 = a4 - v8;
  if (v8 < 1)
  {
    v39 = a5;
    v36 = &a2[v39];
    v38 = &a2[v7];
    v37 = &v38[v39];
    if (v9 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v10 = a4 - a5 + 1;
  v11 = a5;
  v12 = (a5 * a3) + 48;
  v13 = 2 * a5;
  v14 = 6 * a5;
  v15 = v7;
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  do
  {
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v5), v6), 3uLL), v16);
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v11], v5), v6), 3uLL), v16);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v5), v6), 3uLL), v16);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v11 + v15], v5), v6), 3uLL), v16);
    v21 = vzip1q_s16(v19, v20);
    v22 = vzip2q_s16(v19, v20);
    *result = vzip1q_s16(v21, v17);
    result[1] = vzip2q_s16(v21, v17);
    result[2] = vzip1q_s16(v22, v18);
    result[3] = vzip2q_s16(v22, v18);
    v23 = a2[v13];
    v24 = a2[v11 + v13];
    v25 = a2[v14];
    v26 = a2[v11 + v14];
    ++a2;
    v27 = (result + v12);
    v28 = (result[-3].i16 + v12);
    result = (result + a3);
    --v9;
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v5), v6), 3uLL), v16);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v24, v5), v6), 3uLL), v16);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v25, v5), v6), 3uLL), v16);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v26, v5), v6), 3uLL), v16);
    v33 = vzip1q_s16(v31, v32);
    v34 = vzip2q_s16(v31, v32);
    vst2_s16(v28, *(&v29 - 8));
    v27[-2] = vzip2q_s16(v33, v29);
    i16 = v27[-1].i16;
    vst2_s16(i16, *(&v30 - 8));
    *v27 = vzip2q_s16(v34, v30);
    --v10;
  }

  while (v10 > 1);
  v36 = &a2[v11];
  v37 = &a2[v11 + v15];
  v38 = &a2[v15];
  if (v9 >= 1)
  {
LABEL_14:
    v40 = v9 + 1;
    v41 = result + 2;
    v42.i64[0] = 0x8000800080008000;
    v42.i64[1] = 0x8000800080008000;
    v43 = result[2].i16;
    do
    {
      v44 = v41[-2].i16;
      v45 = *a2++;
      v46 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v45, v5), v6), 3uLL), v42);
      v47 = *v36++;
      v48 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v5), v6), 3uLL), v42);
      v49 = *v38++;
      v50 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v49, v5), v6), 3uLL), v42);
      v51 = *v37++;
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v51, v5), v6), 3uLL), v42);
      v53 = vzip1q_s16(v50, v52);
      vst2_s16(v44, *(&v46 - 8));
      v54 = vzip2q_s16(v50, v52);
      v41[-1] = vzip2q_s16(v53, v46);
      vst2_s16(v43, *(&v48 - 8));
      v43 = (v43 + a3);
      v41[1] = vzip2q_s16(v54, v48);
      --v40;
      v41 = v43;
    }

    while (v40 > 1);
  }

  return result;
}

int16x8_t *from_422_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>(int16x8_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A717E0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A717E8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v71 = a2;
    v59 = result;
    v67 = a3;
    v55 = a5;
    v63 = a4;
    from_422_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
    a4 = v63;
    a5 = v55;
    result = v59;
    a3 = v67;
    a2 = v71;
    if (atomic_load_explicit(&qword_280A717E8, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A717F0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v73 = a2;
      v61 = result;
      v69 = a3;
      v57 = a5;
      v65 = a4;
      from_422_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
      a4 = v65;
      a5 = v57;
      result = v61;
      a3 = v69;
      a2 = v73;
      if (atomic_load_explicit(&qword_280A717F8, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v72 = a2;
  v60 = result;
  v68 = a3;
  v56 = a5;
  v64 = a4;
  from_422_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
  a4 = v64;
  a5 = v56;
  result = v60;
  a3 = v68;
  a2 = v72;
  if ((atomic_load_explicit(&qword_280A717F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A717F8, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v74 = a2;
  v62 = result;
  v70 = a3;
  v58 = a5;
  v66 = a4;
  from_422_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
  a4 = v66;
  a5 = v58;
  result = v62;
  a3 = v70;
  a2 = v74;
LABEL_5:
  v5 = xmmword_280A71C40;
  v6 = *algn_280A71C50;
  v7 = 4 * a5;
  if (a4 <= a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - a5;
  }

  v9 = a4 - v8;
  if (v8 < 1)
  {
    v39 = a5;
    v36 = &a2[v39];
    v38 = &a2[v7];
    v37 = &v38[v39];
    if (v9 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v10 = a4 - a5 + 1;
  v11 = a5;
  v12 = (a5 * a3) + 48;
  v13 = 2 * a5;
  v14 = 6 * a5;
  v15 = v7;
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  do
  {
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v5), v6), 3uLL), v16);
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v11], v5), v6), 3uLL), v16);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v5), v6), 3uLL), v16);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v11 + v15], v5), v6), 3uLL), v16);
    v21 = vzip1q_s16(v19, v20);
    v22 = vzip2q_s16(v19, v20);
    *result = vzip1q_s16(v21, v17);
    result[1] = vzip2q_s16(v21, v17);
    result[2] = vzip1q_s16(v22, v18);
    result[3] = vzip2q_s16(v22, v18);
    v23 = a2[v13];
    v24 = a2[v11 + v13];
    v25 = a2[v14];
    v26 = a2[v11 + v14];
    ++a2;
    v27 = (result + v12);
    v28 = (result[-3].i16 + v12);
    result = (result + a3);
    --v9;
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v5), v6), 3uLL), v16);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v24, v5), v6), 3uLL), v16);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v25, v5), v6), 3uLL), v16);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v26, v5), v6), 3uLL), v16);
    v33 = vzip1q_s16(v31, v32);
    v34 = vzip2q_s16(v31, v32);
    vst2_s16(v28, *(&v29 - 8));
    v27[-2] = vzip2q_s16(v33, v29);
    i16 = v27[-1].i16;
    vst2_s16(i16, *(&v30 - 8));
    *v27 = vzip2q_s16(v34, v30);
    --v10;
  }

  while (v10 > 1);
  v36 = &a2[v11];
  v37 = &a2[v11 + v15];
  v38 = &a2[v15];
  if (v9 >= 1)
  {
LABEL_14:
    v40 = v9 + 1;
    v41 = result + 2;
    v42.i64[0] = 0x8000800080008000;
    v42.i64[1] = 0x8000800080008000;
    v43 = result[2].i16;
    do
    {
      v44 = v41[-2].i16;
      v45 = *a2++;
      v46 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v45, v5), v6), 3uLL), v42);
      v47 = *v36++;
      v48 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v5), v6), 3uLL), v42);
      v49 = *v38++;
      v50 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v49, v5), v6), 3uLL), v42);
      v51 = *v37++;
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v51, v5), v6), 3uLL), v42);
      v53 = vzip1q_s16(v50, v52);
      vst2_s16(v44, *(&v46 - 8));
      v54 = vzip2q_s16(v50, v52);
      v41[-1] = vzip2q_s16(v53, v46);
      vst2_s16(v43, *(&v48 - 8));
      v43 = (v43 + a3);
      v41[1] = vzip2q_s16(v54, v48);
      --v40;
      v41 = v43;
    }

    while (v40 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6, unsigned int a7)
{
  if (atomic_load_explicit(&qword_280A71880, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71888, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v114 = a3;
    v116 = a5;
    v108 = a6;
    v109 = a2;
    v112 = result;
    v118 = a4;
    from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>();
    a4 = v118;
    result = v112;
    a3 = v114;
    a2 = v109;
    a6 = v108;
    a5 = v116;
    if (atomic_load_explicit(&qword_280A71888, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v115 = a3;
  v117 = a5;
  v110 = a6;
  v111 = a2;
  v113 = result;
  v119 = a4;
  from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>();
  a4 = v119;
  result = v113;
  a3 = v115;
  a2 = v111;
  a6 = v110;
  a5 = v117;
LABEL_3:
  v8 = 4 * a7;
  if (a4 <= a7)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4 - a7;
  }

  v10 = a4 - v9;
  if (v9 < 1)
  {
    v74 = a7;
    v71 = &a2[v74];
    v72 = &a2[v8];
    v73 = &v72[v74];
    if (v10 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v11 = (a7 * a3);
  v12 = a7;
  v13 = 2 * a7;
  v14 = v8;
  v15 = 6 * a7;
  v16 = xmmword_280A71D80;
  v17 = *algn_280A71D90;
  v18 = result + 4;
  v19 = a4 - a7 + 1;
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  i32 = result[4].i32;
  do
  {
    v22 = (a5 + 8 * a6 + 16);
    v23 = v18[-4].i32;
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v14], v16), v17), 3uLL), v20);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v14], v16), v17), 3uLL), v20);
    v26 = vrhaddq_u16(vextq_s8(v24, 0, 2uLL), v24);
    v27 = vrhaddq_u16(vextq_s8(v25, 0, 2uLL), v25);
    v28 = vzip1q_s16(v24, v26);
    v29 = vzip1q_s16(v25, v27);
    v30 = vzip2q_s16(v24, v26);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v16), v17), 3uLL), v20);
    v32 = vzip1q_s16(*a5, v31);
    v33 = vzip2q_s16(*a5, v31);
    v34 = vzip1q_s16(v28, v29);
    v35 = vzip2q_s16(v28, v29);
    vst2_f32(v23, v32);
    v18[-3] = vzip2q_s32(v32, v34);
    v36 = v18[-2].i32;
    vst2_f32(v36, v33);
    v18[-1] = vzip2q_s32(v33, v35);
    v37 = vzip2q_s16(v25, v27);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12], v16), v17), 3uLL), v20);
    v39 = a5[1];
    v40 = vzip1q_s16(v39, v38);
    v41 = vzip2q_s16(v39, v38);
    v42 = vzip1q_s16(v30, v37);
    vst2_f32(i32, v40);
    i32 = (i32 + a3);
    v43 = vzip2q_s16(v30, v37);
    v18[1] = vzip2q_s32(v40, v42);
    v44 = v18[2].i32;
    vst2_f32(v44, v41);
    v18[3] = vzip2q_s32(v41, v43);
    v45 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v16), v17), 3uLL), v20);
    v46 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v15], v16), v17), 3uLL), v20);
    v47 = vrhaddq_u16(vextq_s8(v45, 0, 2uLL), v45);
    v48 = vrhaddq_u16(vextq_s8(v46, 0, 2uLL), v46);
    v49 = vzip1q_s16(v45, v47);
    v50 = vzip1q_s16(v46, v48);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v16), v17), 3uLL), v20);
    v52 = *(a5 + 8 * a6);
    v53 = vzip1q_s16(v52, v51);
    v54 = vzip2q_s16(v52, v51);
    v55 = vzip1q_s16(v49, v50);
    v56 = vzip2q_s16(v49, v50);
    v57 = (v18 + v11);
    v58 = v57[-4].i32;
    vst2_f32(v58, v53);
    v57[-3] = vzip2q_s32(v53, v55);
    v59 = v57[-2].i32;
    vst2_f32(v59, v54);
    v57[-1] = vzip2q_s32(v54, v56);
    v60 = a2[v12 + v13];
    ++a2;
    --v10;
    a5 = (a5 + a6);
    v61 = vzip2q_s16(v45, v47);
    v62 = vzip2q_s16(v46, v48);
    v63 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v60, v16), v17), 3uLL), v20);
    v64 = *v22;
    v65 = vzip1q_s16(*v22, v63);
    v66 = vzip1q_s16(v61, v62);
    v67 = v57;
    vst2_f32(v67, v65);
    v67 += 4;
    v68 = vzip2q_s16(v64, v63);
    v69 = vzip2q_s16(v61, v62);
    v70 = v57[2].i32;
    vst2_f32(v70, v68);
    *v67 = vzip2q_s32(v65, v66);
    v57[3] = vzip2q_s32(v68, v69);
    --v19;
    v18 = i32;
  }

  while (v19 > 1);
  v71 = &a2[v12];
  v72 = &a2[v14];
  v73 = &a2[v12 + v14];
  result = (i32 - 16);
  if (v10 >= 1)
  {
LABEL_12:
    v75 = xmmword_280A71D80;
    v76 = *algn_280A71D90;
    v77 = v10 + 1;
    v78 = a5 + 1;
    v79 = result + 4;
    v80.i64[0] = 0x8000800080008000;
    v80.i64[1] = 0x8000800080008000;
    v81 = result[4].i32;
    do
    {
      v82 = *v72++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v75), v76), 3uLL), v80);
      v84 = *v73++;
      v85 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v84, v75), v76), 3uLL), v80);
      v86 = vrhaddq_u16(vextq_s8(v83, 0, 2uLL), v83);
      v87 = vrhaddq_u16(vextq_s8(v85, 0, 2uLL), v85);
      v88 = vzip1q_s16(v83, v86);
      v89 = vzip1q_s16(v85, v87);
      v90 = *a2++;
      v91 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v90, v75), v76), 3uLL), v80);
      v92 = v78[-1];
      v93 = vzip1q_s16(v92, v91);
      v94 = vzip2q_s16(v92, v91);
      v95 = vzip1q_s16(v88, v89);
      v96 = vzip2q_s16(v88, v89);
      v97 = v79[-4].i32;
      v98 = vzip2q_s16(v83, v86);
      vst2_f32(v97, v93);
      v79[-3] = vzip2q_s32(v93, v95);
      v99 = v79[-2].i32;
      vst2_f32(v99, v94);
      v79[-1] = vzip2q_s32(v94, v96);
      v100 = *v71++;
      v101 = vzip2q_s16(v85, v87);
      v102 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v100, v75), v76), 3uLL), v80);
      v103 = vzip1q_s16(*v78, v102);
      v104 = vzip2q_s16(*v78, v102);
      v105 = vzip1q_s16(v98, v101);
      vst2_f32(v81, v103);
      v81 = (v81 + a3);
      v106 = vzip2q_s16(v98, v101);
      v79[1] = vzip2q_s32(v103, v105);
      v107 = v79[2].i32;
      vst2_f32(v107, v104);
      v79[3] = vzip2q_s32(v104, v106);
      --v77;
      v78 = (v78 + a6);
      v79 = v81;
    }

    while (v77 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6, unsigned int a7)
{
  if (atomic_load_explicit(&qword_280A71890, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71898, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v114 = a3;
    v116 = a5;
    v108 = a6;
    v109 = a2;
    v112 = result;
    v118 = a4;
    from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>();
    a4 = v118;
    result = v112;
    a3 = v114;
    a2 = v109;
    a6 = v108;
    a5 = v116;
    if (atomic_load_explicit(&qword_280A71898, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v115 = a3;
  v117 = a5;
  v110 = a6;
  v111 = a2;
  v113 = result;
  v119 = a4;
  from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>();
  a4 = v119;
  result = v113;
  a3 = v115;
  a2 = v111;
  a6 = v110;
  a5 = v117;
LABEL_3:
  v8 = 4 * a7;
  if (a4 <= a7)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4 - a7;
  }

  v10 = a4 - v9;
  if (v9 < 1)
  {
    v74 = a7;
    v71 = &a2[v74];
    v72 = &a2[v8];
    v73 = &v72[v74];
    if (v10 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v11 = (a7 * a3);
  v12 = a7;
  v13 = 2 * a7;
  v14 = v8;
  v15 = 6 * a7;
  v16 = xmmword_280A71DA0;
  v17 = *algn_280A71DB0;
  v18 = result + 4;
  v19 = a4 - a7 + 1;
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  i32 = result[4].i32;
  do
  {
    v22 = (a5 + 8 * a6 + 16);
    v23 = v18[-4].i32;
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v14], v16), v17), 3uLL), v20);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v14], v16), v17), 3uLL), v20);
    v26 = vrhaddq_u16(vextq_s8(v24, 0, 2uLL), v24);
    v27 = vrhaddq_u16(vextq_s8(v25, 0, 2uLL), v25);
    v28 = vzip1q_s16(v24, v26);
    v29 = vzip1q_s16(v25, v27);
    v30 = vzip2q_s16(v24, v26);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v16), v17), 3uLL), v20);
    v32 = vzip1q_s16(*a5, v31);
    v33 = vzip2q_s16(*a5, v31);
    v34 = vzip1q_s16(v28, v29);
    v35 = vzip2q_s16(v28, v29);
    vst2_f32(v23, v32);
    v18[-3] = vzip2q_s32(v32, v34);
    v36 = v18[-2].i32;
    vst2_f32(v36, v33);
    v18[-1] = vzip2q_s32(v33, v35);
    v37 = vzip2q_s16(v25, v27);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12], v16), v17), 3uLL), v20);
    v39 = a5[1];
    v40 = vzip1q_s16(v39, v38);
    v41 = vzip2q_s16(v39, v38);
    v42 = vzip1q_s16(v30, v37);
    vst2_f32(i32, v40);
    i32 = (i32 + a3);
    v43 = vzip2q_s16(v30, v37);
    v18[1] = vzip2q_s32(v40, v42);
    v44 = v18[2].i32;
    vst2_f32(v44, v41);
    v18[3] = vzip2q_s32(v41, v43);
    v45 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v16), v17), 3uLL), v20);
    v46 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v15], v16), v17), 3uLL), v20);
    v47 = vrhaddq_u16(vextq_s8(v45, 0, 2uLL), v45);
    v48 = vrhaddq_u16(vextq_s8(v46, 0, 2uLL), v46);
    v49 = vzip1q_s16(v45, v47);
    v50 = vzip1q_s16(v46, v48);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v16), v17), 3uLL), v20);
    v52 = *(a5 + 8 * a6);
    v53 = vzip1q_s16(v52, v51);
    v54 = vzip2q_s16(v52, v51);
    v55 = vzip1q_s16(v49, v50);
    v56 = vzip2q_s16(v49, v50);
    v57 = (v18 + v11);
    v58 = v57[-4].i32;
    vst2_f32(v58, v53);
    v57[-3] = vzip2q_s32(v53, v55);
    v59 = v57[-2].i32;
    vst2_f32(v59, v54);
    v57[-1] = vzip2q_s32(v54, v56);
    v60 = a2[v12 + v13];
    ++a2;
    --v10;
    a5 = (a5 + a6);
    v61 = vzip2q_s16(v45, v47);
    v62 = vzip2q_s16(v46, v48);
    v63 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v60, v16), v17), 3uLL), v20);
    v64 = *v22;
    v65 = vzip1q_s16(*v22, v63);
    v66 = vzip1q_s16(v61, v62);
    v67 = v57;
    vst2_f32(v67, v65);
    v67 += 4;
    v68 = vzip2q_s16(v64, v63);
    v69 = vzip2q_s16(v61, v62);
    v70 = v57[2].i32;
    vst2_f32(v70, v68);
    *v67 = vzip2q_s32(v65, v66);
    v57[3] = vzip2q_s32(v68, v69);
    --v19;
    v18 = i32;
  }

  while (v19 > 1);
  v71 = &a2[v12];
  v72 = &a2[v14];
  v73 = &a2[v12 + v14];
  result = (i32 - 16);
  if (v10 >= 1)
  {
LABEL_12:
    v75 = xmmword_280A71DA0;
    v76 = *algn_280A71DB0;
    v77 = v10 + 1;
    v78 = a5 + 1;
    v79 = result + 4;
    v80.i64[0] = 0x8000800080008000;
    v80.i64[1] = 0x8000800080008000;
    v81 = result[4].i32;
    do
    {
      v82 = *v72++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v75), v76), 3uLL), v80);
      v84 = *v73++;
      v85 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v84, v75), v76), 3uLL), v80);
      v86 = vrhaddq_u16(vextq_s8(v83, 0, 2uLL), v83);
      v87 = vrhaddq_u16(vextq_s8(v85, 0, 2uLL), v85);
      v88 = vzip1q_s16(v83, v86);
      v89 = vzip1q_s16(v85, v87);
      v90 = *a2++;
      v91 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v90, v75), v76), 3uLL), v80);
      v92 = v78[-1];
      v93 = vzip1q_s16(v92, v91);
      v94 = vzip2q_s16(v92, v91);
      v95 = vzip1q_s16(v88, v89);
      v96 = vzip2q_s16(v88, v89);
      v97 = v79[-4].i32;
      v98 = vzip2q_s16(v83, v86);
      vst2_f32(v97, v93);
      v79[-3] = vzip2q_s32(v93, v95);
      v99 = v79[-2].i32;
      vst2_f32(v99, v94);
      v79[-1] = vzip2q_s32(v94, v96);
      v100 = *v71++;
      v101 = vzip2q_s16(v85, v87);
      v102 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v100, v75), v76), 3uLL), v80);
      v103 = vzip1q_s16(*v78, v102);
      v104 = vzip2q_s16(*v78, v102);
      v105 = vzip1q_s16(v98, v101);
      vst2_f32(v81, v103);
      v81 = (v81 + a3);
      v106 = vzip2q_s16(v98, v101);
      v79[1] = vzip2q_s32(v103, v105);
      v107 = v79[2].i32;
      vst2_f32(v107, v104);
      v79[3] = vzip2q_s32(v104, v106);
      --v77;
      v78 = (v78 + a6);
      v79 = v81;
    }

    while (v77 > 1);
  }

  return result;
}

_WORD *from_422_to_AYUV_UYVY_WxH<(PixelFormat)2033463606,(AlphaOutputMethod)1>(_WORD *result, __int16 *a2, int a3, int a4, _WORD *a5, int a6, int a7, int a8)
{
  if (a8 >= 1 && a7 >= 1)
  {
    v8 = 0;
    v9 = (a8 * a7);
    v10 = 8u / a8 * a6;
    v11 = &a2[(4 * v9)];
    v12 = v9;
    v13 = &v11[v9];
    v14 = &a2[v12];
    v15 = 2 * a7;
    v16 = 8u / a7;
    do
    {
      if (v8 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      if (a7 == 1)
      {
        v17 = result + 4;
        v18 = *a2;
        v19 = *v11;
        v20 = *v13;
        *result = *a5;
        if (v18 >= 4095)
        {
          v21 = 4095;
        }

        else
        {
          v21 = v18;
        }

        if (v21 <= -4096)
        {
          LOWORD(v21) = -4096;
        }

        result[1] = (8 * v21) ^ 0x8000;
        if (v19 >= 4095)
        {
          v22 = 4095;
        }

        else
        {
          v22 = v19;
        }

        if (v22 <= -4096)
        {
          LOWORD(v22) = -4096;
        }

        result[2] = (8 * v22) ^ 0x8000;
        if (v20 >= 4095)
        {
          v23 = 4095;
        }

        else
        {
          v23 = v20;
        }

        if (v23 <= -4096)
        {
          LOWORD(v23) = -4096;
        }

        result[3] = (8 * v23) ^ 0x8000;
        v24 = &a5[v16];
      }

      else
      {
        v25 = 0;
        v26 = a7;
        v24 = a5;
        v17 = result;
        do
        {
          v27 = a2[v25];
          v28 = *v11;
          v29 = *v13;
          *v17 = *v24;
          if (v27 >= 4095)
          {
            v30 = 4095;
          }

          else
          {
            v30 = v27;
          }

          if (v30 <= -4096)
          {
            LOWORD(v30) = -4096;
          }

          v17[1] = (8 * v30) ^ 0x8000;
          if (v28 >= 4095)
          {
            v31 = 4095;
          }

          else
          {
            v31 = v28;
          }

          if (v31 <= -4096)
          {
            LOWORD(v31) = -4096;
          }

          v17[2] = (8 * v31) ^ 0x8000;
          if (v29 >= 4095)
          {
            v32 = 4095;
          }

          else
          {
            v32 = v29;
          }

          if (v32 <= -4096)
          {
            LOWORD(v32) = -4096;
          }

          v17[3] = (8 * v32) ^ 0x8000;
          v17 += 4;
          v24 += v16;
          v33 = (v25 * 2) & 2;
          v11 = (v11 + v33);
          v13 = (v13 + v33);
          ++v25;
          --v26;
        }

        while (v26);
      }

      v34 = 0;
      do
      {
        v35 = v14[v34];
        v36 = *v11;
        v37 = *v13;
        if (v35 >= 4095)
        {
          v35 = 4095;
        }

        if (v35 <= -4096)
        {
          LOWORD(v35) = -4096;
        }

        if (v36 >= 4095)
        {
          v36 = 4095;
        }

        if (v36 <= -4096)
        {
          LOWORD(v36) = -4096;
        }

        if (v37 >= 4095)
        {
          v37 = 4095;
        }

        if (v37 <= -4096)
        {
          LOWORD(v37) = -4096;
        }

        v38 = (v34 & 1) != 0 || a7 == 1;
        *v17 = *v24;
        v17[1] = (8 * v35) ^ 0x8000;
        v17[2] = (8 * v36) ^ 0x8000;
        v17[3] = (8 * v37) ^ 0x8000;
        v24 += v16;
        if (v38)
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }

        v11 = (v11 + v39);
        v13 = (v13 + v39);
        ++v34;
        v17 += 4;
      }

      while (a7 != v34);
      result = (result + a3);
      a5 = (a5 + v10);
      a2 = (a2 + v15);
      v14 = (v14 + v15);
      ++v8;
    }

    while (v8 != a8);
    v40 = 0;
    v41 = &v13[v12];
    v42 = &v14[v12];
    if (a8 <= a4)
    {
      v43 = a4;
    }

    else
    {
      v43 = a8;
    }

    v44 = v43 - a8;
    do
    {
      if (v40 == v44)
      {
        break;
      }

      if (a7 == 1)
      {
        v45 = result + 4;
        v46 = *v14;
        v47 = *v13;
        v48 = *v41;
        *result = *a5;
        if (v46 >= 4095)
        {
          v49 = 4095;
        }

        else
        {
          v49 = v46;
        }

        if (v49 <= -4096)
        {
          LOWORD(v49) = -4096;
        }

        result[1] = (8 * v49) ^ 0x8000;
        if (v47 >= 4095)
        {
          v50 = 4095;
        }

        else
        {
          v50 = v47;
        }

        if (v50 <= -4096)
        {
          LOWORD(v50) = -4096;
        }

        result[2] = (8 * v50) ^ 0x8000;
        if (v48 >= 4095)
        {
          v51 = 4095;
        }

        else
        {
          v51 = v48;
        }

        if (v51 <= -4096)
        {
          LOWORD(v51) = -4096;
        }

        result[3] = (8 * v51) ^ 0x8000;
        v52 = &a5[v16];
      }

      else
      {
        v53 = 0;
        v54 = a7;
        v52 = a5;
        v45 = result;
        do
        {
          v55 = v14[v53];
          v56 = *v13;
          v57 = *v41;
          *v45 = *v52;
          if (v55 >= 4095)
          {
            v58 = 4095;
          }

          else
          {
            v58 = v55;
          }

          if (v58 <= -4096)
          {
            LOWORD(v58) = -4096;
          }

          v45[1] = (8 * v58) ^ 0x8000;
          if (v56 >= 4095)
          {
            v59 = 4095;
          }

          else
          {
            v59 = v56;
          }

          if (v59 <= -4096)
          {
            LOWORD(v59) = -4096;
          }

          v45[2] = (8 * v59) ^ 0x8000;
          if (v57 >= 4095)
          {
            v60 = 4095;
          }

          else
          {
            v60 = v57;
          }

          if (v60 <= -4096)
          {
            LOWORD(v60) = -4096;
          }

          v45[3] = (8 * v60) ^ 0x8000;
          v45 += 4;
          v52 += v16;
          v61 = (v53 * 2) & 2;
          v13 = (v13 + v61);
          v41 = (v41 + v61);
          ++v53;
          --v54;
        }

        while (v54);
      }

      v62 = 0;
      do
      {
        v63 = v42[v62];
        v64 = *v13;
        v65 = *v41;
        if (v63 >= 4095)
        {
          v63 = 4095;
        }

        if (v63 <= -4096)
        {
          LOWORD(v63) = -4096;
        }

        if (v64 >= 4095)
        {
          v64 = 4095;
        }

        if (v64 <= -4096)
        {
          LOWORD(v64) = -4096;
        }

        if (v65 >= 4095)
        {
          v65 = 4095;
        }

        if (v65 <= -4096)
        {
          LOWORD(v65) = -4096;
        }

        v66 = (v62 & 1) != 0 || a7 == 1;
        *v45 = *v52;
        v45[1] = (8 * v63) ^ 0x8000;
        v45[2] = (8 * v64) ^ 0x8000;
        v45[3] = (8 * v65) ^ 0x8000;
        v52 += v16;
        if (v66)
        {
          v67 = 2;
        }

        else
        {
          v67 = 0;
        }

        v13 = (v13 + v67);
        v41 = (v41 + v67);
        ++v62;
        v45 += 4;
      }

      while (a7 != v62);
      result = (result + a3);
      a5 = (a5 + v10);
      v14 = (v14 + v15);
      ++v40;
      v42 = (v42 + v15);
    }

    while (v40 != a8);
  }

  return result;
}

int32x4_t *from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A718A0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A718A8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a2;
    v98 = result;
    v102 = a3;
    v96 = a5;
    v100 = a4;
    from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>();
    a4 = v100;
    a5 = v96;
    result = v98;
    a3 = v102;
    a2 = v104;
    if (atomic_load_explicit(&qword_280A718A8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v105 = a2;
  v99 = result;
  v103 = a3;
  v97 = a5;
  v101 = a4;
  from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>();
  a4 = v101;
  a5 = v97;
  result = v99;
  a3 = v103;
  a2 = v105;
LABEL_3:
  v5 = 4 * a5;
  if (a4 <= a5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - a5;
  }

  v7 = a4 - v6;
  if (v6 < 1)
  {
    v63 = a5;
    v60 = &a2[v63];
    v61 = &a2[v5];
    v62 = &v61[v63];
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v8 = a5;
  v9 = xmmword_280A71DC0;
  v10 = *algn_280A71DD0;
  v11 = 2 * a5;
  v12 = v5;
  v13 = 6 * a5;
  v14 = a4 - a5 + 1;
  v15 = (a5 * a3) + 64;
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v17.i64[0] = -1;
  v17.i64[1] = -1;
  do
  {
    v18 = (result + v15);
    v19 = (result[-4].i32 + v15);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12], v9), v10), 3uLL), v16);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v8 + v12], v9), v10), 3uLL), v16);
    v22 = vrhaddq_u16(vextq_s8(v20, 0, 2uLL), v20);
    v23 = vrhaddq_u16(vextq_s8(v21, 0, 2uLL), v21);
    v24 = vzip1q_s16(v20, v22);
    v25 = vzip1q_s16(v21, v23);
    v26 = vzip2q_s16(v20, v22);
    v27 = vzip2q_s16(v21, v23);
    v28 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 3uLL), v16);
    v29 = vzip1q_s16(v17, v28);
    v30 = vzip2q_s16(v17, v28);
    v31 = vzip1q_s16(v24, v25);
    v32 = vzip2q_s16(v24, v25);
    *result = vzip1q_s32(v29, v31);
    result[1] = vzip2q_s32(v29, v31);
    result[2] = vzip1q_s32(v30, v32);
    result[3] = vzip2q_s32(v30, v32);
    v33 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v8], v9), v10), 3uLL), v16);
    v34 = vzip1q_s16(v17, v33);
    v35 = vzip2q_s16(v17, v33);
    v36 = vzip1q_s16(v26, v27);
    v37 = vzip2q_s16(v26, v27);
    result[4] = vzip1q_s32(v34, v36);
    result[5] = vzip2q_s32(v34, v36);
    result[6] = vzip1q_s32(v35, v37);
    result[7] = vzip2q_s32(v35, v37);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v9), v10), 3uLL), v16);
    v39 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v8 + v13], v9), v10), 3uLL), v16);
    v40 = vrhaddq_u16(vextq_s8(v38, 0, 2uLL), v38);
    v41 = vrhaddq_u16(vextq_s8(v39, 0, 2uLL), v39);
    v42 = vzip1q_s16(v38, v40);
    v43 = vzip1q_s16(v39, v41);
    v44 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v11], v9), v10), 3uLL), v16);
    v45 = vzip1q_s16(v17, v44);
    v46 = vzip2q_s16(v17, v44);
    v47 = vzip1q_s16(v42, v43);
    vst2_f32(v19, v45);
    v48 = vzip2q_s16(v42, v43);
    v18[-3] = vzip2q_s32(v45, v47);
    v49 = (result[-2].i32 + v15);
    vst2_f32(v49, v46);
    v18[-1] = vzip2q_s32(v46, v48);
    v50 = a2[v8 + v11];
    ++a2;
    result = (result + a3);
    --v7;
    v51 = vzip2q_s16(v38, v40);
    v52 = vzip2q_s16(v39, v41);
    v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v9), v10), 3uLL), v16);
    v54 = vzip1q_s16(v17, v53);
    v55 = vzip2q_s16(v17, v53);
    v56 = vzip1q_s16(v51, v52);
    v57 = vzip2q_s16(v51, v52);
    v58 = v18;
    vst2_f32(v58, v54);
    v58 += 4;
    *v58 = vzip2q_s32(v54, v56);
    i32 = v18[2].i32;
    vst2_f32(i32, v55);
    v18[3] = vzip2q_s32(v55, v57);
    --v14;
  }

  while (v14 > 1);
  v60 = &a2[v8];
  v61 = &a2[v12];
  v62 = &a2[v8 + v12];
  if (v7 >= 1)
  {
LABEL_12:
    v64 = xmmword_280A71DC0;
    v65 = *algn_280A71DD0;
    v66 = v7 + 1;
    v67 = result + 4;
    v68.i64[0] = 0x8000800080008000;
    v68.i64[1] = 0x8000800080008000;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70 = result[4].i32;
    do
    {
      v71 = *v61++;
      v72 = v67[-4].i32;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v71, v64), v65), 3uLL), v68);
      v74 = *v62++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v64), v65), 3uLL), v68);
      v76 = vrhaddq_u16(vextq_s8(v73, 0, 2uLL), v73);
      v77 = vrhaddq_u16(vextq_s8(v75, 0, 2uLL), v75);
      v78 = vzip1q_s16(v73, v76);
      v79 = vzip1q_s16(v75, v77);
      v80 = vzip2q_s16(v73, v76);
      v81 = vzip2q_s16(v75, v77);
      v82 = *a2++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v64), v65), 3uLL), v68);
      v84 = vzip1q_s16(v69, v83);
      v85 = vzip2q_s16(v69, v83);
      v86 = vzip1q_s16(v78, v79);
      v87 = vzip2q_s16(v78, v79);
      vst2_f32(v72, v84);
      v67[-3] = vzip2q_s32(v84, v86);
      v88 = v67[-2].i32;
      vst2_f32(v88, v85);
      v67[-1] = vzip2q_s32(v85, v87);
      v89 = *v60++;
      v90 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v89, v64), v65), 3uLL), v68);
      v91 = vzip1q_s16(v69, v90);
      v92 = vzip1q_s16(v80, v81);
      vst2_f32(v70, v91);
      v70 = (v70 + a3);
      v93 = vzip2q_s16(v69, v90);
      v94 = vzip2q_s16(v80, v81);
      v95 = v67[2].i32;
      vst2_f32(v95, v93);
      v67[1] = vzip2q_s32(v91, v92);
      v67[3] = vzip2q_s32(v93, v94);
      --v66;
      v67 = v70;
    }

    while (v66 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A718B0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A718B8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a2;
    v98 = result;
    v102 = a3;
    v96 = a5;
    v100 = a4;
    from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>();
    a4 = v100;
    a5 = v96;
    result = v98;
    a3 = v102;
    a2 = v104;
    if (atomic_load_explicit(&qword_280A718B8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v105 = a2;
  v99 = result;
  v103 = a3;
  v97 = a5;
  v101 = a4;
  from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>();
  a4 = v101;
  a5 = v97;
  result = v99;
  a3 = v103;
  a2 = v105;
LABEL_3:
  v5 = 4 * a5;
  if (a4 <= a5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - a5;
  }

  v7 = a4 - v6;
  if (v6 < 1)
  {
    v63 = a5;
    v60 = &a2[v63];
    v61 = &a2[v5];
    v62 = &v61[v63];
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v8 = a5;
  v9 = xmmword_280A71DE0;
  v10 = *algn_280A71DF0;
  v11 = 2 * a5;
  v12 = v5;
  v13 = 6 * a5;
  v14 = a4 - a5 + 1;
  v15 = (a5 * a3) + 64;
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v17.i64[0] = -1;
  v17.i64[1] = -1;
  do
  {
    v18 = (result + v15);
    v19 = (result[-4].i32 + v15);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12], v9), v10), 3uLL), v16);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v8 + v12], v9), v10), 3uLL), v16);
    v22 = vrhaddq_u16(vextq_s8(v20, 0, 2uLL), v20);
    v23 = vrhaddq_u16(vextq_s8(v21, 0, 2uLL), v21);
    v24 = vzip1q_s16(v20, v22);
    v25 = vzip1q_s16(v21, v23);
    v26 = vzip2q_s16(v20, v22);
    v27 = vzip2q_s16(v21, v23);
    v28 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 3uLL), v16);
    v29 = vzip1q_s16(v17, v28);
    v30 = vzip2q_s16(v17, v28);
    v31 = vzip1q_s16(v24, v25);
    v32 = vzip2q_s16(v24, v25);
    *result = vzip1q_s32(v29, v31);
    result[1] = vzip2q_s32(v29, v31);
    result[2] = vzip1q_s32(v30, v32);
    result[3] = vzip2q_s32(v30, v32);
    v33 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v8], v9), v10), 3uLL), v16);
    v34 = vzip1q_s16(v17, v33);
    v35 = vzip2q_s16(v17, v33);
    v36 = vzip1q_s16(v26, v27);
    v37 = vzip2q_s16(v26, v27);
    result[4] = vzip1q_s32(v34, v36);
    result[5] = vzip2q_s32(v34, v36);
    result[6] = vzip1q_s32(v35, v37);
    result[7] = vzip2q_s32(v35, v37);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v9), v10), 3uLL), v16);
    v39 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v8 + v13], v9), v10), 3uLL), v16);
    v40 = vrhaddq_u16(vextq_s8(v38, 0, 2uLL), v38);
    v41 = vrhaddq_u16(vextq_s8(v39, 0, 2uLL), v39);
    v42 = vzip1q_s16(v38, v40);
    v43 = vzip1q_s16(v39, v41);
    v44 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v11], v9), v10), 3uLL), v16);
    v45 = vzip1q_s16(v17, v44);
    v46 = vzip2q_s16(v17, v44);
    v47 = vzip1q_s16(v42, v43);
    vst2_f32(v19, v45);
    v48 = vzip2q_s16(v42, v43);
    v18[-3] = vzip2q_s32(v45, v47);
    v49 = (result[-2].i32 + v15);
    vst2_f32(v49, v46);
    v18[-1] = vzip2q_s32(v46, v48);
    v50 = a2[v8 + v11];
    ++a2;
    result = (result + a3);
    --v7;
    v51 = vzip2q_s16(v38, v40);
    v52 = vzip2q_s16(v39, v41);
    v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v9), v10), 3uLL), v16);
    v54 = vzip1q_s16(v17, v53);
    v55 = vzip2q_s16(v17, v53);
    v56 = vzip1q_s16(v51, v52);
    v57 = vzip2q_s16(v51, v52);
    v58 = v18;
    vst2_f32(v58, v54);
    v58 += 4;
    *v58 = vzip2q_s32(v54, v56);
    i32 = v18[2].i32;
    vst2_f32(i32, v55);
    v18[3] = vzip2q_s32(v55, v57);
    --v14;
  }

  while (v14 > 1);
  v60 = &a2[v8];
  v61 = &a2[v12];
  v62 = &a2[v8 + v12];
  if (v7 >= 1)
  {
LABEL_12:
    v64 = xmmword_280A71DE0;
    v65 = *algn_280A71DF0;
    v66 = v7 + 1;
    v67 = result + 4;
    v68.i64[0] = 0x8000800080008000;
    v68.i64[1] = 0x8000800080008000;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70 = result[4].i32;
    do
    {
      v71 = *v61++;
      v72 = v67[-4].i32;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v71, v64), v65), 3uLL), v68);
      v74 = *v62++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v64), v65), 3uLL), v68);
      v76 = vrhaddq_u16(vextq_s8(v73, 0, 2uLL), v73);
      v77 = vrhaddq_u16(vextq_s8(v75, 0, 2uLL), v75);
      v78 = vzip1q_s16(v73, v76);
      v79 = vzip1q_s16(v75, v77);
      v80 = vzip2q_s16(v73, v76);
      v81 = vzip2q_s16(v75, v77);
      v82 = *a2++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v64), v65), 3uLL), v68);
      v84 = vzip1q_s16(v69, v83);
      v85 = vzip2q_s16(v69, v83);
      v86 = vzip1q_s16(v78, v79);
      v87 = vzip2q_s16(v78, v79);
      vst2_f32(v72, v84);
      v67[-3] = vzip2q_s32(v84, v86);
      v88 = v67[-2].i32;
      vst2_f32(v88, v85);
      v67[-1] = vzip2q_s32(v85, v87);
      v89 = *v60++;
      v90 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v89, v64), v65), 3uLL), v68);
      v91 = vzip1q_s16(v69, v90);
      v92 = vzip1q_s16(v80, v81);
      vst2_f32(v70, v91);
      v70 = (v70 + a3);
      v93 = vzip2q_s16(v69, v90);
      v94 = vzip2q_s16(v80, v81);
      v95 = v67[2].i32;
      vst2_f32(v95, v93);
      v67[1] = vzip2q_s32(v91, v92);
      v67[3] = vzip2q_s32(v93, v94);
      --v66;
      v67 = v70;
    }

    while (v66 > 1);
  }

  return result;
}

_WORD *from_422_to_AYUV_UYVY_WxH<(PixelFormat)2033463606,(AlphaOutputMethod)2>(_WORD *result, __int16 *a2, int a3, int a4, int a5, int a6)
{
  if (a6 >= 1 && a5 >= 1)
  {
    v6 = 0;
    v7 = (a6 * a5);
    v8 = &a2[(4 * v7)];
    v9 = v7;
    v10 = &a2[v7];
    v11 = &v8[v9];
    v12 = 2 * a5;
    do
    {
      if (v6 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      if (a5 == 1)
      {
        v13 = *a2;
        v14 = *v8;
        v15 = *v11;
        *result = -1;
        if (v13 >= 4095)
        {
          v13 = 4095;
        }

        if (v13 <= -4096)
        {
          LOWORD(v13) = -4096;
        }

        result[1] = (8 * v13) ^ 0x8000;
        if (v14 >= 4095)
        {
          v16 = 4095;
        }

        else
        {
          v16 = v14;
        }

        if (v16 <= -4096)
        {
          LOWORD(v16) = -4096;
        }

        result[2] = (8 * v16) ^ 0x8000;
        if (v15 >= 4095)
        {
          v17 = 4095;
        }

        else
        {
          v17 = v15;
        }

        if (v17 <= -4096)
        {
          LOWORD(v17) = -4096;
        }

        result[3] = (8 * v17) ^ 0x8000;
        v18 = result + 4;
      }

      else
      {
        v19 = 0;
        v20 = a5;
        v18 = result;
        do
        {
          v21 = a2[v19];
          v22 = *v8;
          v23 = *v11;
          *v18 = -1;
          if (v21 >= 4095)
          {
            v21 = 4095;
          }

          if (v21 <= -4096)
          {
            LOWORD(v21) = -4096;
          }

          v18[1] = (8 * v21) ^ 0x8000;
          if (v22 >= 4095)
          {
            v24 = 4095;
          }

          else
          {
            v24 = v22;
          }

          if (v24 <= -4096)
          {
            LOWORD(v24) = -4096;
          }

          v18[2] = (8 * v24) ^ 0x8000;
          if (v23 >= 4095)
          {
            v25 = 4095;
          }

          else
          {
            v25 = v23;
          }

          if (v25 <= -4096)
          {
            LOWORD(v25) = -4096;
          }

          v18[3] = (8 * v25) ^ 0x8000;
          v18 += 4;
          v26 = (v19 * 2) & 2;
          v11 = (v11 + v26);
          v8 = (v8 + v26);
          ++v19;
          --v20;
        }

        while (v20);
      }

      v27 = 0;
      do
      {
        v28 = v10[v27];
        v29 = *v8;
        v30 = *v11;
        if (v28 >= 4095)
        {
          v28 = 4095;
        }

        if (v28 <= -4096)
        {
          LOWORD(v28) = -4096;
        }

        if (v29 >= 4095)
        {
          v29 = 4095;
        }

        if (v29 <= -4096)
        {
          LOWORD(v29) = -4096;
        }

        if (v30 >= 4095)
        {
          v30 = 4095;
        }

        if (v30 <= -4096)
        {
          LOWORD(v30) = -4096;
        }

        v31 = (v27 & 1) != 0 || a5 == 1;
        *v18 = -1;
        v18[1] = (8 * v28) ^ 0x8000;
        v18[2] = (8 * v29) ^ 0x8000;
        v18[3] = (8 * v30) ^ 0x8000;
        if (v31)
        {
          v32 = 2;
        }

        else
        {
          v32 = 0;
        }

        v11 = (v11 + v32);
        v8 = (v8 + v32);
        ++v27;
        v18 += 4;
      }

      while (a5 != v27);
      result = (result + a3);
      a2 = (a2 + v12);
      v10 = (v10 + v12);
      ++v6;
    }

    while (v6 != a6);
    v33 = 0;
    v34 = &v10[v9];
    v35 = &v11[v9];
    if (a6 <= a4)
    {
      v36 = a4;
    }

    else
    {
      v36 = a6;
    }

    v37 = v36 - a6;
    do
    {
      if (v33 == v37)
      {
        break;
      }

      if (a5 == 1)
      {
        v38 = *v10;
        v39 = *v11;
        v40 = *v35;
        *result = -1;
        if (v38 >= 4095)
        {
          v38 = 4095;
        }

        if (v38 <= -4096)
        {
          LOWORD(v38) = -4096;
        }

        result[1] = (8 * v38) ^ 0x8000;
        if (v39 >= 4095)
        {
          v41 = 4095;
        }

        else
        {
          v41 = v39;
        }

        if (v41 <= -4096)
        {
          LOWORD(v41) = -4096;
        }

        result[2] = (8 * v41) ^ 0x8000;
        if (v40 >= 4095)
        {
          v42 = 4095;
        }

        else
        {
          v42 = v40;
        }

        if (v42 <= -4096)
        {
          LOWORD(v42) = -4096;
        }

        result[3] = (8 * v42) ^ 0x8000;
        v43 = result + 4;
      }

      else
      {
        v44 = 0;
        v45 = a5;
        v43 = result;
        do
        {
          v46 = v10[v44];
          v47 = *v11;
          v48 = *v35;
          *v43 = -1;
          if (v46 >= 4095)
          {
            v46 = 4095;
          }

          if (v46 <= -4096)
          {
            LOWORD(v46) = -4096;
          }

          v43[1] = (8 * v46) ^ 0x8000;
          if (v47 >= 4095)
          {
            v49 = 4095;
          }

          else
          {
            v49 = v47;
          }

          if (v49 <= -4096)
          {
            LOWORD(v49) = -4096;
          }

          v43[2] = (8 * v49) ^ 0x8000;
          if (v48 >= 4095)
          {
            v50 = 4095;
          }

          else
          {
            v50 = v48;
          }

          if (v50 <= -4096)
          {
            LOWORD(v50) = -4096;
          }

          v43[3] = (8 * v50) ^ 0x8000;
          v43 += 4;
          v51 = (v44 * 2) & 2;
          v35 = (v35 + v51);
          v11 = (v11 + v51);
          ++v44;
          --v45;
        }

        while (v45);
      }

      v52 = 0;
      do
      {
        v53 = v34[v52];
        v54 = *v11;
        v55 = *v35;
        if (v53 >= 4095)
        {
          v53 = 4095;
        }

        if (v53 <= -4096)
        {
          LOWORD(v53) = -4096;
        }

        if (v54 >= 4095)
        {
          v54 = 4095;
        }

        if (v54 <= -4096)
        {
          LOWORD(v54) = -4096;
        }

        if (v55 >= 4095)
        {
          v55 = 4095;
        }

        if (v55 <= -4096)
        {
          LOWORD(v55) = -4096;
        }

        v56 = (v52 & 1) != 0 || a5 == 1;
        *v43 = -1;
        v43[1] = (8 * v53) ^ 0x8000;
        v43[2] = (8 * v54) ^ 0x8000;
        v43[3] = (8 * v55) ^ 0x8000;
        if (v56)
        {
          v57 = 2;
        }

        else
        {
          v57 = 0;
        }

        v35 = (v35 + v57);
        v11 = (v11 + v57);
        ++v52;
        v43 += 4;
      }

      while (a5 != v52);
      result = (result + a3);
      v10 = (v10 + v12);
      ++v33;
      v34 = (v34 + v12);
    }

    while (v33 != a6);
  }

  return result;
}

double from_444_to_2vuy_4xH<false>(char *a1, int16x8_t *a2, int a3, int a4, unsigned int a5, int8x16_t a6)
{
  v6 = a5 >> 1;
  v7 = (4 * v6);
  v8 = (6 * v6);
  v9 = (8 * v6);
  v10 = (10 * v6);
  v11 = (a5 * a3);
  v12 = a4 - a5;
  if (a4 <= a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = a4 - a5;
  }

  v14 = a4 - v13;
  if (v13 < 2)
  {
    v56 = a5 >> 1;
    v44 = &a2[v56];
    v55 = &a2[a5 & 0xFFFFFFFE];
    v45 = &v55[v56];
    v46 = &a2[v7];
    v47 = &v46[v56];
    v48 = &a2[v8];
    v49 = &v48[v56];
    v50 = &a2[v9];
    v51 = &v50[v56];
    v52 = &a2[v10];
    v53 = &v52[v56];
    v54 = &a1[v11];
    if (!a4)
    {
      return *a6.i64;
    }

LABEL_10:
    if (v13 == 1)
    {
      a6 = vqmovn_high_s16(vqmovn_s16(*v55), *v45);
      v57 = *&vqmovn_high_s16(vqmovn_s16(*v48), *v52) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *&v57 = vqmovun_s16(v57);
      v58 = *&vqmovn_high_s16(vqmovn_s16(*v49), *v53) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *&v58 = vqmovun_s16(v58);
      v59 = vzip1q_s8(v57, v58);
      v77.val[0] = vmin_u8(vmax_u8(veor_s8(*&vuzp1q_s32(v59, vrev64q_s32(v59)), 0x8080808080808080), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
      *a6.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a6, vrev64q_s32(a6)), 0x8080808080808080), 0x101010101010101);
      v77.val[1] = vmin_u8(*a6.i8, 0xFEFEFEFEFEFEFEFELL);
      vst2_s8(v54, v77);
      if (v14 < 2)
      {
LABEL_12:
        if (v14 != 1)
        {
          return *a6.i64;
        }

        goto LABEL_18;
      }
    }

    else if (v14 < 2)
    {
      goto LABEL_12;
    }

    v60 = 0;
    a6.i16[0] = -32640;
    a6.i8[2] = 0x80;
    a6.i8[3] = 0x80;
    a6.i8[4] = 0x80;
    a6.i8[5] = 0x80;
    a6.i8[6] = 0x80;
    a6.i8[7] = 0x80;
    a6.i8[8] = 0x80;
    a6.i8[9] = 0x80;
    a6.i8[10] = 0x80;
    a6.i8[11] = 0x80;
    a6.i8[12] = 0x80;
    a6.i8[13] = 0x80;
    a6.i8[14] = 0x80;
    a6.i8[15] = 0x80;
    v62.i64[0] = 0x101010101010101;
    v62.i64[1] = 0x101010101010101;
    v63.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v63.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v64 = a1;
    do
    {
      v65 = v14;
      v66 = vqmovn_high_s16(vqmovn_s16(a2[v60]), v44[v60]);
      v67 = v51[v60];
      v68 = vqmovn_high_s16(vqmovn_s16(v47[v60]), v67);
      v69 = *&vqmovn_high_s16(vqmovn_s16(v46[v60]), v50[v60]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *v67.i8 = vqmovun_s16(v69);
      *&v69 = vqmovun_s16((*&v68 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v70 = vzip1q_s8(v67, v69);
      v71 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v66, vrev64q_s32(v66)), a6), v62), v63);
      v72 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v70, vrev64q_s32(v70)), a6), v62), v63);
      vst2_s8(v64, *(&v71 - 8));
      v61 = 2 * a3;
      v64 += v61;
      *&a1[a3] = vzip2q_s8(v72, v71);
      a1 = v64;
      v14 -= 2;
      ++v60;
    }

    while (v65 > 3);
    a2 = (a2 + v60 * 16);
    v44 = (v44 + v60 * 16);
    v46 = (v46 + v60 * 16);
    v47 = (v47 + v60 * 16);
    v50 = (v50 + v60 * 16);
    v51 = (v51 + v60 * 16);
    if (v14 != 1)
    {
      return *a6.i64;
    }

LABEL_18:
    a6 = vqmovn_high_s16(vqmovn_s16(*a2), *v44);
    v73 = *&vqmovn_high_s16(vqmovn_s16(*v46), *v50) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v73 = vqmovun_s16(v73);
    v74 = *&vqmovn_high_s16(vqmovn_s16(*v47), *v51) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v74 = vqmovun_s16(v74);
    v75 = vzip1q_s8(v73, v74);
    v78.val[0] = vmin_u8(vmax_u8(veor_s8(*&vuzp1q_s32(v75, vrev64q_s32(v75)), 0x8080808080808080), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
    *a6.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a6, vrev64q_s32(a6)), 0x8080808080808080), 0x101010101010101);
    v78.val[1] = vmin_u8(*a6.i8, 0xFEFEFEFEFEFEFEFELL);
    vst2_s8(a1, v78);
    return *a6.i64;
  }

  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = 16 * v6 + 16 * v10;
  a6.i16[0] = -32640;
  a6.i8[2] = 0x80;
  a6.i8[3] = 0x80;
  a6.i8[4] = 0x80;
  a6.i8[5] = 0x80;
  a6.i8[6] = 0x80;
  a6.i8[7] = 0x80;
  a6.i8[8] = 0x80;
  a6.i8[9] = 0x80;
  a6.i8[10] = 0x80;
  a6.i8[11] = 0x80;
  a6.i8[12] = 0x80;
  a6.i8[13] = 0x80;
  a6.i8[14] = 0x80;
  a6.i8[15] = 0x80;
  v22.i64[0] = 0x101010101010101;
  v22.i64[1] = 0x101010101010101;
  v23.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v23.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v13 = v12;
  do
  {
    v24 = vqmovn_high_s16(vqmovn_s16(*a2), a2[v6]);
    v25 = a2[v6 + v18];
    v26 = vqmovn_high_s16(vqmovn_s16(a2[v6 + v16]), v25);
    v27 = *&vqmovn_high_s16(vqmovn_s16(a2[v16]), a2[v18]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *v25.i8 = vqmovun_s16(v27);
    *&v27 = vqmovun_s16((*&v26 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v28 = vzip1q_s8(v25, v27);
    v29 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v24, vrev64q_s32(v24)), a6), v22), v23);
    v30 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v28, vrev64q_s32(v28)), a6), v22), v23);
    v31 = a1;
    vst2_s8(v31, *(&v29 - 8));
    v21 = a3 + v11;
    v32 = &v31[v21];
    *&a1[a3] = vzip2q_s8(v30, v29);
    v33 = v13;
    v34 = vqmovn_high_s16(vqmovn_s16(a2[2 * v6]), a2[3 * v6]);
    v35 = a2[v6 + v17];
    v36 = vqmovn_high_s16(vqmovn_s16(a2[v17]), a2[v19]);
    v37 = *(a2++ + v20);
    v38 = &a1[v11];
    a1 += 2 * a3;
    v14 -= 2;
    v39 = vqmovn_high_s16(vqmovn_s16(v35), v37);
    v40 = *&v36 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *v37.i8 = vqmovun_s16(v40);
    *&v40 = vqmovun_s16((*&v39 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v41 = vzip1q_s8(v37, v40);
    v42 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v34, vrev64q_s32(v34)), a6), v22), v23);
    v43 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), a6), v22), v23);
    vst2_s8(v38, *(&v42 - 8));
    *v32 = vzip2q_s8(v43, v42);
    v13 = v33 - 2;
  }

  while (v33 > 3);
  v44 = &a2[v15];
  v45 = &a2[3 * v6];
  v46 = &a2[v16];
  v47 = &a2[v15 + v16];
  v48 = &a2[v17];
  v49 = &a2[v15 + v17];
  v50 = &a2[v18];
  v51 = &a2[v15 + v18];
  v52 = &a2[v19];
  v53 = &a2[v15 + v19];
  v54 = &a1[v11];
  v55 = &a2[2 * v6];
  if (v14 + v13)
  {
    goto LABEL_10;
  }

  return *a6.i64;
}

_DWORD *from_444_to_AYUV_UYVY_WxH<(PixelFormat)846624121,(AlphaOutputMethod)0>(_DWORD *result, __int16 *a2, int a3, int a4, unsigned int a5, int a6)
{
  if (a5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (a6 >= 1)
  {
    v7 = a3;
    v8 = a6 * a5;
    v9 = (4 * v8);
    v10 = v8;
    v11 = a4 & ~(a4 >> 31);
    if (a5 == 1)
    {
      v12 = a6;
      while (v11)
      {
        v13 = &a2[v9 + v10];
        v14 = &a2[v10];
        v15.i16[0] = a2[v9];
        v15.i16[1] = *a2++;
        v15.i16[2] = *v13;
        v16 = v13 + 1;
        v15.i16[3] = *v14;
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v15, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        result = (result + v7);
        --v11;
        if (!--v12)
        {
          v17 = &a2[v8];
          goto LABEL_25;
        }
      }

      v17 = &a2[v10];
      v16 = &a2[v9 + v10];
LABEL_25:
      if (a6 <= a4)
      {
        v38 = a4;
      }

      else
      {
        v38 = a6;
      }

      v39 = v38 - a6;
      do
      {
        if (!v39)
        {
          break;
        }

        v40 = &v17[v10];
        v41.i16[0] = *v16;
        v41.i16[1] = *v17++;
        v41.i16[2] = v16[v10];
        v41.i16[3] = *v40;
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v41, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        result = (result + v7);
        --v39;
        ++v16;
        --a6;
      }

      while (a6);
    }

    else
    {
      v18 = 0;
      v19 = &a2[v9];
      v20 = &v19[v10];
      v21 = &a2[v10];
      v22 = v9;
      v23 = &v19[v22];
      v24 = &v19[v10 + v22];
      v25 = 2 * a5;
      do
      {
        if (v18 == v11)
        {
          break;
        }

        v26.i16[0] = *v19;
        v26.i16[1] = *a2;
        v26.i16[2] = *v20;
        v26.i16[3] = a2[1];
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v26, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        v27 = 1;
        do
        {
          v28.i16[0] = *v23;
          v28.i16[1] = *v21;
          v28.i16[2] = *v24;
          v28.i16[3] = v21[1];
          result[v27++] = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v28, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        }

        while (v6 != v27);
        result = (result + v7);
        a2 = (a2 + v25);
        v21 = (v21 + v25);
        v19 = (v19 + v25);
        v23 = (v23 + v25);
        v20 = (v20 + v25);
        v24 = (v24 + v25);
        ++v18;
      }

      while (v18 != a6);
      v29 = 0;
      v30 = &v20[v10];
      v31 = &v24[v10];
      v32 = &v21[v10];
      if (a6 <= a4)
      {
        v33 = a4;
      }

      else
      {
        v33 = a6;
      }

      v34 = v33 - a6;
      do
      {
        if (v29 == v34)
        {
          break;
        }

        v35.i16[0] = *v20;
        v35.i16[1] = *v21;
        v35.i16[2] = *v30;
        v35.i16[3] = v21[1];
        *result = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v35, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        v36 = 1;
        do
        {
          v37.i16[0] = *v24;
          v37.i16[1] = *v32;
          v37.i16[2] = *v31;
          v37.i16[3] = v32[1];
          result[v36++] = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v37, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
        }

        while (v6 != v36);
        result = (result + v7);
        v21 = (v21 + v25);
        v32 = (v32 + v25);
        v20 = (v20 + v25);
        v24 = (v24 + v25);
        v30 = (v30 + v25);
        v31 = (v31 + v25);
        ++v29;
      }

      while (v29 != a6);
    }
  }

  return result;
}

int8x16_t from_444_to_y408_r408_4xH<false,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, uint64_t a5, int a6, unsigned int a7, int8x16_t result)
{
  v8 = a7 >> 1;
  v9 = (4 * v8);
  v10 = (6 * v8);
  v11 = (8 * v8);
  v12 = (10 * v8);
  v13 = (a7 * a3);
  v14 = a5 + (8 * a6);
  v15 = 8 / a7 * a6;
  v16 = a4 - a7;
  if (a4 <= a7)
  {
    v17 = 0;
  }

  else
  {
    v17 = a4 - a7;
  }

  v18 = a4 - v17;
  if (v17 < 2)
  {
    v71 = a7 >> 1;
    v59 = &a2[v71];
    v70 = &a2[a7 & 0xFFFFFFFE];
    v60 = &v70[v71];
    v61 = &a2[v9];
    v62 = &v61[v71];
    v63 = &a2[v10];
    v64 = &v63[v71];
    v65 = &a2[v11];
    v66 = &v65[v71];
    v67 = &a2[v12];
    v68 = &v67[v71];
    v69 = (a1 + v13);
    if (!(v18 + v17))
    {
      return result;
    }

LABEL_10:
    if (v17 == 1)
    {
      v72.i16[0] = *v14;
      v72.i16[1] = BYTE2(*v14);
      v72.i16[2] = BYTE4(*v14);
      v72.i16[3] = BYTE6(*v14);
      v72.i16[4] = *(v14 + 8);
      v72.i16[5] = BYTE2(*(v14 + 8));
      v72.i16[6] = BYTE12(*v14);
      v72.i16[7] = BYTE14(*v14);
      v73.i16[0] = *(v14 + v15);
      v73.i16[1] = BYTE2(*(v14 + v15));
      v73.i16[2] = BYTE4(*(v14 + v15));
      v73.i16[3] = BYTE6(*(v14 + v15));
      v73.i16[4] = *(v14 + v15 + 8);
      v73.i16[5] = BYTE2(*(v14 + v15 + 8));
      v73.i16[6] = BYTE12(*(v14 + v15));
      v73.i16[7] = BYTE14(*(v14 + v15));
      v74 = vqmovun_high_s16(vqmovun_s16(v72), v73);
      v75 = vuzp1q_s32(v74, vrev64q_s32(v74));
      v73.i64[0] = 0x8080808080808080;
      v73.i64[1] = 0x8080808080808080;
      v76 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v63), *v67), v73);
      v77 = vzip1q_s8(v75, v76);
      v78 = vzip2q_s8(v75, v76);
      v79 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v70), *v60), v73);
      v80 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v64), *v68), v73);
      v81 = vzip1q_s8(v79, v80);
      result = vzip1q_s8(v78, vzip2q_s8(v79, v80));
      *v69 = vzip1q_s8(v77, v81);
      v69[1] = result;
      if (v18 < 2)
      {
LABEL_12:
        if (v18 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v18 < 2)
    {
      goto LABEL_12;
    }

    v82 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    do
    {
      v83 = v18;
      v84.i16[0] = *a5;
      v84.i16[1] = BYTE2(*a5);
      v84.i16[2] = BYTE4(*a5);
      v84.i16[3] = BYTE6(*a5);
      v84.i16[4] = *(a5 + 8);
      v84.i16[5] = BYTE2(*(a5 + 8));
      v84.i16[6] = BYTE12(*a5);
      v84.i16[7] = BYTE14(*a5);
      v85.i16[0] = *(a5 + v15);
      v85.i16[1] = BYTE2(*(a5 + v15));
      v85.i16[2] = BYTE4(*(a5 + v15));
      v85.i16[3] = BYTE6(*(a5 + v15));
      v85.i16[4] = *(a5 + v15 + 8);
      v85.i16[5] = BYTE2(*(a5 + v15 + 8));
      v85.i16[6] = BYTE12(*(a5 + v15));
      v85.i16[7] = BYTE14(*(a5 + v15));
      v86 = vqmovun_high_s16(vqmovun_s16(v84), v85);
      v87 = vuzp1q_s32(v86, vrev64q_s32(v86));
      v88 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v61[v82]), v65[v82]), result);
      v89 = vzip1q_s8(v87, v88);
      v90 = vzip2q_s8(v87, v88);
      v91 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v82]), v59[v82]), result);
      v92 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v62[v82]), v66[v82]), result);
      v93 = vzip1q_s8(v91, v92);
      v94 = vzip2q_s8(v91, v92);
      *a1 = vzip1q_s8(v89, v93);
      a1[1] = vzip1q_s8(v90, v94);
      v95 = (a1 + a3);
      a1 = (a1 + 2 * a3);
      *v95 = vzip2q_s8(v89, v93);
      v95[1] = vzip2q_s8(v90, v94);
      v18 = v83 - 2;
      a5 += 2 * v15;
      ++v82;
    }

    while (v83 > 3);
    a2 = (a2 + v82 * 16);
    v59 = (v59 + v82 * 16);
    v61 = (v61 + v82 * 16);
    v62 = (v62 + v82 * 16);
    v65 = (v65 + v82 * 16);
    v66 = (v66 + v82 * 16);
    if (v83 != 3)
    {
      return result;
    }

LABEL_18:
    v96.i16[0] = *a5;
    v96.i16[1] = BYTE2(*a5);
    v96.i16[2] = BYTE4(*a5);
    v96.i16[3] = BYTE6(*a5);
    v96.i16[4] = *(a5 + 8);
    v96.i16[5] = BYTE2(*(a5 + 8));
    v96.i16[6] = BYTE12(*a5);
    v96.i16[7] = BYTE14(*a5);
    v97.i16[0] = *(a5 + v15);
    v97.i16[1] = BYTE2(*(a5 + v15));
    v97.i16[2] = BYTE4(*(a5 + v15));
    v97.i16[3] = BYTE6(*(a5 + v15));
    v97.i16[4] = *(a5 + v15 + 8);
    v97.i16[5] = BYTE2(*(a5 + v15 + 8));
    v97.i16[6] = BYTE12(*(a5 + v15));
    v97.i16[7] = BYTE14(*(a5 + v15));
    v98 = vqmovun_high_s16(vqmovun_s16(v96), v97);
    v99 = vuzp1q_s32(v98, vrev64q_s32(v98));
    v97.i64[0] = 0x8080808080808080;
    v97.i64[1] = 0x8080808080808080;
    v100 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v61), *v65), v97);
    v101 = vzip1q_s8(v99, v100);
    v102 = vzip2q_s8(v99, v100);
    v103 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v59), v97);
    v104 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v62), *v66), v97);
    v105 = vzip1q_s8(v103, v104);
    result = vzip1q_s8(v102, vzip2q_s8(v103, v104));
    *a1 = vzip1q_s8(v101, v105);
    a1[1] = result;
    return result;
  }

  v19 = 2 * v15;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = 16 * v8 + 16 * v12;
  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v17 = v16;
  do
  {
    v26 = v17;
    v27.i16[0] = *a5;
    v27.i16[1] = BYTE2(*a5);
    v27.i16[2] = BYTE4(*a5);
    v27.i16[3] = BYTE6(*a5);
    v27.i16[4] = *(a5 + 8);
    v27.i16[5] = BYTE2(*(a5 + 8));
    v27.i16[6] = BYTE12(*a5);
    v27.i16[7] = BYTE14(*a5);
    v28.i16[0] = *(a5 + v15);
    v28.i16[1] = BYTE2(*(a5 + v15));
    v28.i16[2] = BYTE4(*(a5 + v15));
    v28.i16[3] = BYTE6(*(a5 + v15));
    v28.i16[4] = *(a5 + v15 + 8);
    v28.i16[5] = BYTE2(*(a5 + v15 + 8));
    v28.i16[6] = BYTE12(*(a5 + v15));
    v28.i16[7] = BYTE14(*(a5 + v15));
    v29 = vqmovun_high_s16(vqmovun_s16(v27), v28);
    v30 = vuzp1q_s32(v29, vrev64q_s32(v29));
    v31 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v21]), a2[v23]), result);
    v32 = vzip1q_s8(v30, v31);
    v33 = vzip2q_s8(v30, v31);
    v34 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[v8]), result);
    v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v8 + v21]), a2[v8 + v23]), result);
    v36 = vzip1q_s8(v34, v35);
    v37 = vzip2q_s8(v34, v35);
    *a1 = vzip1q_s8(v32, v36);
    a1[1] = vzip1q_s8(v33, v37);
    v38 = (a1 + a3);
    *v38 = vzip2q_s8(v32, v36);
    v38[1] = vzip2q_s8(v33, v37);
    v39 = a2[2 * v8];
    v40 = a2[3 * v8];
    v41 = a2[v22];
    v42 = a2[v24];
    v43 = a2[v8 + v22];
    v44 = *(a2++ + v25);
    v45 = &a1->i8[v13];
    v46 = (a1 + a3 + v13);
    a1 = (a1 + 2 * a3);
    v18 -= 2;
    a5 += v19;
    v47 = vqmovn_high_s16(vqmovn_s16(v39), v40);
    v48 = vqmovn_high_s16(vqmovn_s16(v41), v42);
    v49 = vqmovn_high_s16(vqmovn_s16(v43), v44);
    v42.i16[0] = *v14;
    v42.i16[1] = BYTE2(*v14);
    v42.i16[2] = BYTE4(*v14);
    v42.i16[3] = BYTE6(*v14);
    v42.i16[4] = *(v14 + 8);
    v42.i16[5] = BYTE2(*(v14 + 8));
    v42.i16[6] = BYTE12(*v14);
    v42.i16[7] = BYTE14(*v14);
    v43.i16[0] = *(v14 + v15);
    v43.i16[1] = BYTE2(*(v14 + v15));
    v43.i16[2] = BYTE4(*(v14 + v15));
    v43.i16[3] = BYTE6(*(v14 + v15));
    v43.i16[4] = *(v14 + v15 + 8);
    v43.i16[5] = BYTE2(*(v14 + v15 + 8));
    v43.i16[6] = BYTE12(*(v14 + v15));
    v43.i16[7] = BYTE14(*(v14 + v15));
    v50 = vqmovun_high_s16(vqmovun_s16(v42), v43);
    v51 = vuzp1q_s32(v50, vrev64q_s32(v50));
    v52 = veorq_s8(v48, result);
    v53 = vzip1q_s8(v51, v52);
    v54 = vzip2q_s8(v51, v52);
    v55 = veorq_s8(v47, result);
    v56 = veorq_s8(v49, result);
    v57 = vzip1q_s8(v55, v56);
    v58 = vzip2q_s8(v55, v56);
    vst2_s8(v45, v53);
    v45 += 16;
    vst2_s8(v45, v54);
    *v46 = vzip2q_s8(v53, v57);
    v46[1] = vzip2q_s8(v54, v58);
    v17 = v26 - 2;
    v14 += v19;
  }

  while (v26 > 3);
  v59 = &a2[v20];
  v60 = &a2[3 * v8];
  v61 = &a2[v21];
  v62 = &a2[v20 + v21];
  v63 = &a2[v22];
  v64 = &a2[v20 + v22];
  v65 = &a2[v23];
  v66 = &a2[v20 + v23];
  v67 = &a2[v24];
  v68 = &a2[v20 + v24];
  v69 = (a1 + v13);
  v70 = &a2[2 * v8];
  if (v18 + v17)
  {
    goto LABEL_10;
  }

  return result;
}

_BYTE *from_444_to_AYUV_UYVY_WxH<(PixelFormat)2033463352,(AlphaOutputMethod)1>(_BYTE *result, uint64_t a2, int a3, int a4, _BYTE *a5, int a6, int a7, int a8)
{
  if (a8 >= 1 && a7 >= 1)
  {
    v8 = 0;
    v9 = (a8 * a7);
    v10 = 8u / a8 * a6;
    v11 = a3;
    v12 = 2 * (4 * v9);
    v13 = a2 + v12;
    v14 = a2 + v12 + v12;
    v15 = 2 * v9;
    v16 = a2 + v12 + 2 * v9;
    v17 = v16 + v12;
    v18 = a2 + v15;
    v19 = 2 * a7;
    v20 = 8u / a7;
    do
    {
      if (v8 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      v21 = 0;
      v22 = a5;
      v23 = result;
      do
      {
        v24 = *(a2 + 2 * v21);
        v25 = *(v13 + 2 * v21);
        v26 = *(v16 + 2 * v21);
        *v23 = *v22;
        if (v24 >= 127)
        {
          v24 = 127;
        }

        if (v24 <= -128)
        {
          LOBYTE(v24) = 0x80;
        }

        v23[1] = v24 ^ 0x80;
        if (v25 >= 127)
        {
          v27 = 127;
        }

        else
        {
          v27 = v25;
        }

        if (v27 <= -128)
        {
          LOBYTE(v27) = 0x80;
        }

        v23[2] = v27 ^ 0x80;
        if (v26 >= 127)
        {
          v28 = 127;
        }

        else
        {
          v28 = v26;
        }

        if (v28 <= -128)
        {
          LOBYTE(v28) = 0x80;
        }

        v23[3] = v28 ^ 0x80;
        v23 += 4;
        v22 += v20;
        ++v21;
      }

      while (a7 != v21);
      v29 = 0;
      do
      {
        v30 = *(v18 + 2 * v29);
        v31 = *(v14 + 2 * v29);
        v32 = *(v17 + 2 * v29);
        *v23 = *v22;
        if (v30 >= 127)
        {
          v30 = 127;
        }

        if (v30 <= -128)
        {
          LOBYTE(v30) = 0x80;
        }

        v23[1] = v30 ^ 0x80;
        if (v31 >= 127)
        {
          v33 = 127;
        }

        else
        {
          v33 = v31;
        }

        if (v33 <= -128)
        {
          LOBYTE(v33) = 0x80;
        }

        v23[2] = v33 ^ 0x80;
        if (v32 >= 127)
        {
          v34 = 127;
        }

        else
        {
          v34 = v32;
        }

        if (v34 <= -128)
        {
          LOBYTE(v34) = 0x80;
        }

        v23[3] = v34 ^ 0x80;
        v22 += v20;
        ++v29;
        v23 += 4;
      }

      while (a7 != v29);
      result += v11;
      a5 += v10;
      v18 += v19;
      v16 += v19;
      v17 += v19;
      ++v8;
      v13 += v19;
      a2 += v19;
      v14 += v19;
    }

    while (v8 != a8);
    v35 = 0;
    v36 = v16 + v15;
    v37 = v17 + v15;
    v38 = v18 + v15;
    if (a8 > a4)
    {
      a4 = a8;
    }

    v39 = a4 - a8;
    do
    {
      if (v35 == v39)
      {
        break;
      }

      v40 = 0;
      v41 = a5;
      v42 = result;
      do
      {
        v43 = *(v18 + 2 * v40);
        v44 = *(v16 + 2 * v40);
        v45 = *(v36 + 2 * v40);
        *v42 = *v41;
        if (v43 >= 127)
        {
          v43 = 127;
        }

        if (v43 <= -128)
        {
          LOBYTE(v43) = 0x80;
        }

        v42[1] = v43 ^ 0x80;
        if (v44 >= 127)
        {
          v46 = 127;
        }

        else
        {
          v46 = v44;
        }

        if (v46 <= -128)
        {
          LOBYTE(v46) = 0x80;
        }

        v42[2] = v46 ^ 0x80;
        if (v45 >= 127)
        {
          v47 = 127;
        }

        else
        {
          v47 = v45;
        }

        if (v47 <= -128)
        {
          LOBYTE(v47) = 0x80;
        }

        v42[3] = v47 ^ 0x80;
        v42 += 4;
        v41 += v20;
        ++v40;
      }

      while (a7 != v40);
      v48 = 0;
      do
      {
        v49 = *(v38 + 2 * v48);
        v50 = *(v17 + 2 * v48);
        v51 = *(v37 + 2 * v48);
        *v42 = *v41;
        if (v49 >= 127)
        {
          v49 = 127;
        }

        if (v49 <= -128)
        {
          LOBYTE(v49) = 0x80;
        }

        v42[1] = v49 ^ 0x80;
        if (v50 >= 127)
        {
          v52 = 127;
        }

        else
        {
          v52 = v50;
        }

        if (v52 <= -128)
        {
          LOBYTE(v52) = 0x80;
        }

        v42[2] = v52 ^ 0x80;
        if (v51 >= 127)
        {
          v53 = 127;
        }

        else
        {
          v53 = v51;
        }

        if (v53 <= -128)
        {
          LOBYTE(v53) = 0x80;
        }

        v42[3] = v53 ^ 0x80;
        v41 += v20;
        ++v48;
        v42 += 4;
      }

      while (a7 != v48);
      result += v11;
      a5 += v10;
      ++v35;
      v36 += v19;
      v16 += v19;
      v18 += v19;
      v37 += v19;
      v17 += v19;
      v38 += v19;
    }

    while (v35 != a8);
  }

  return result;
}

_BYTE *from_444_to_AYUV_UYVY_WxH<(PixelFormat)2033463352,(AlphaOutputMethod)2>(_BYTE *result, int16x8_t *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = (a6 - 1);
  if (a6 >= 1)
  {
    v192 = a5 - 1;
    if (a5 >= 1)
    {
      v7 = result;
      v8 = 0;
      v9 = a6 * a5;
      v10 = 2 * (4 * v9);
      v11 = &a2->i16[v10 / 2];
      v12 = a2->u64 + v10 + v10;
      v171 = v9;
      v13 = 2 * v9;
      v14 = a2 + 2 * v9 + v10;
      v15 = (v14 + v10);
      v16 = &a2->i16[v9];
      v17 = a4 & ~(a4 >> 31);
      v170 = a5 * v6;
      v18 = a2->u64 + 2 * v170 + 2 * v192 + 2;
      v174 = 4 * (4 * v9);
      v19 = v18 + v174;
      v187 = v18 + v174 + v13;
      v185 = v18 + v13;
      v194 = a3;
      v172 = 4 * v192;
      v169 = a3 * v6;
      v20 = &v7[v172 + 4 + v169];
      v22 = v18 + v10 > v7 && v11 < v20;
      if (v18 + v10 + v13 > v7 && v14 < v20)
      {
        v22 = 1;
      }

      v25 = v18 > v7 && v20 > a2 || v22;
      if (a3 < 0)
      {
        v25 = 1;
      }

      v183 = v25;
      v26 = 2 * (a5 & 0x7FFFFFF0);
      v27 = 4 * (a5 & 0x7FFFFFF0);
      v191 = a5 & 0x7FFFFFF0;
      v181 = &v7[v172 + 8];
      v176 = a5 & 0x7FFFFFF8;
      v177 = a5 & 0x7FFFFFF8;
      v28 = 2 * a5;
      v178 = v13;
      v179 = a2->i64 + v10 + v10;
      v29 = v10 + v13;
      v175 = 4 * v177;
      v30.i64[0] = -1;
      v30.i64[1] = -1;
      v31 = -1;
      v32.i64[0] = 0x8080808080808080;
      v32.i64[1] = 0x8080808080808080;
      v188 = v16;
      v190 = v14 + v10;
      v33 = v179;
      v34 = v16;
      while (v8 != v17)
      {
        if (a5 < 0x10 || (v183 & 1) != 0)
        {
          v35 = 0;
          v36 = 0;
          v37 = v14;
          v38 = v11;
          v39 = a2;
          v40 = v7;
        }

        else
        {
          v83 = 0;
          v37 = (v14 + v26);
          v38 = &v11[v26 / 2];
          v39 = &a2->i16[v26 / 2];
          v40 = &v7[v27];
          v84 = a2;
          do
          {
            v85 = (v84 + v29);
            v86 = (v84 + v10);
            v87 = &v7[v83];
            v89 = *v84;
            v88 = v84[1];
            v84 += 2;
            v90 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v89), v88), v32);
            v91 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v85), v85[1]), v32);
            v92 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v86), v86[1]), v32);
            vst4q_s8(v87, *v30.i8);
            v83 += 64;
          }

          while (v27 != v83);
          v35 = a5 & 0x7FFFFFF0;
          v36 = a5 & 0x7FFFFFF0;
          v42 = v35 - 1;
          if (v191 == a5)
          {
            goto LABEL_44;
          }
        }

        v41 = a5 - v36;
        v42 = v35 + (v192 - v36);
        do
        {
          v44 = *v39++;
          v43 = v44;
          v46 = *v38++;
          v45 = v46;
          v48 = *v37++;
          v47 = v48;
          *v40 = -1;
          if (v43 >= 127)
          {
            v43 = 127;
          }

          if (v43 <= -128)
          {
            LOBYTE(v43) = 0x80;
          }

          v40[1] = v43 ^ 0x80;
          if (v45 >= 127)
          {
            v49 = 127;
          }

          else
          {
            v49 = v45;
          }

          if (v49 <= -128)
          {
            LOBYTE(v49) = 0x80;
          }

          v40[2] = v49 ^ 0x80;
          if (v47 >= 127)
          {
            v50 = 127;
          }

          else
          {
            v50 = v47;
          }

          if (v50 <= -128)
          {
            LOBYTE(v50) = 0x80;
          }

          v40[3] = v50 ^ 0x80;
          v40 += 4;
          --v41;
        }

        while (v41);
LABEL_44:
        if (a5 < 8)
        {
          v51 = 0;
LABEL_46:
          v52 = v15;
          v53 = v33;
          v54 = v34;
          v55 = v40;
LABEL_47:
          v56 = a5 - v51;
          do
          {
            v58 = *v54++;
            v57 = v58;
            v60 = *v53++;
            v59 = v60;
            v62 = *v52++;
            v61 = v62;
            *v55 = -1;
            if (v57 >= 127)
            {
              v57 = 127;
            }

            if (v57 <= -128)
            {
              LOBYTE(v57) = 0x80;
            }

            v55[1] = v57 ^ 0x80;
            if (v59 >= 127)
            {
              v63 = 127;
            }

            else
            {
              v63 = v59;
            }

            if (v63 <= -128)
            {
              LOBYTE(v63) = 0x80;
            }

            v55[2] = v63 ^ 0x80;
            if (v61 >= 127)
            {
              v64 = 127;
            }

            else
            {
              v64 = v61;
            }

            if (v64 <= -128)
            {
              LOBYTE(v64) = 0x80;
            }

            v55[3] = v64 ^ 0x80;
            v55 += 4;
            --v56;
          }

          while (v56);
          goto LABEL_23;
        }

        v51 = 0;
        v65 = v181 + 4 * v42 + v8 * a3;
        v67 = v40 < v19 && v12 < v65;
        v69 = v40 < v185 && v188 < v65;
        v70 = v190 >= v65 || v40 >= v187;
        if (!v70 || v67 || v69)
        {
          goto LABEL_46;
        }

        if (a5 >= 0x10)
        {
          v93 = 0;
          v94 = v40;
          do
          {
            v195.val[1] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*&v34[v93 / 2]), *&v34[v93 / 2 + 8]), v32);
            v195.val[3] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*&v34[v174 / 2 + v93 / 2]), *&v34[v174 / 2 + 8 + v93 / 2]), v32);
            v195.val[2] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + v174 + v93)), *(&a2[1] + v174 + v93)), v32);
            v195.val[0] = v30;
            vst4q_s8(v94, v195);
            v94 += 64;
            v93 += 32;
          }

          while (v26 != v93);
          if (v191 == a5)
          {
            goto LABEL_23;
          }

          v71 = a5 & 0x7FFFFFF0;
          if ((a5 & 8) == 0)
          {
            v55 = &v40[v27];
            v54 = &v34[v26 / 2];
            v53 = &v33[v26 / 2];
            v52 = &v15[v26 / 2];
            v51 = a5 & 0x7FFFFFF0;
            v12 = v179;
            goto LABEL_47;
          }
        }

        else
        {
          v71 = 0;
        }

        v52 = &v15[v176];
        v53 = &v33[v176];
        v54 = &v34[v176];
        v55 = &v40[v175];
        v72 = v71;
        v73 = &v34[v71];
        v74 = &v33[v71];
        v75 = v71 - (a5 & 0x7FFFFFF8);
        v76 = &v40[4 * v71];
        do
        {
          v77 = *v73++;
          v78 = v77;
          v79 = *v74++;
          v80 = veor_s8(vqmovn_s16(v78), 0x8080808080808080);
          v81 = veor_s8(vqmovn_s16(v79), 0x8080808080808080);
          v82 = veor_s8(vqmovn_s16(*&v15[v72]), 0x8080808080808080);
          vst4_s8(v76, *&v31);
          v76 += 32;
          v72 += 8;
          v75 += 8;
        }

        while (v75);
        v51 = a5 & 0x7FFFFFF8;
        v12 = v179;
        if (v177 != a5)
        {
          goto LABEL_47;
        }

LABEL_23:
        v7 += a3;
        a2 = (a2 + v28);
        v34 = (v34 + v28);
        v11 = (v11 + v28);
        v33 = (v33 + v28);
        v14 += v28;
        v15 = (v15 + v28);
        if (++v8 == a6)
        {
          break;
        }
      }

      v95 = 0;
      v96 = v178;
      v97 = (v14 + v178);
      v98 = a4;
      if (a6 > a4)
      {
        v98 = a6;
      }

      v99 = v98 - a6;
      v100 = 2 * (v170 + v192 + v171) + 2;
      v101 = 2 * (v170 + v192) + 2;
      v102 = &v7[v169 + 4 + v172];
      result = v34 + v101;
      v104 = v7 < v14 + v101 && v14 < v102;
      v106 = v7 < v14 + v100 && v97 < v102 || v104;
      if (v7 >= result || v34 >= v102)
      {
        v108 = v106;
      }

      else
      {
        v108 = 1;
      }

      v109 = (v15 + v178);
      v184 = v15 + v101;
      v186 = v15 + v100;
      v182 = v34 + v100;
      if (a3 < 0)
      {
        v110 = 1;
      }

      else
      {
        v110 = v108;
      }

      v180 = v110;
      v111.i64[0] = -1;
      v111.i64[1] = -1;
      v112 = -1;
      v113.i64[0] = 0x8080808080808080;
      v113.i64[1] = 0x8080808080808080;
      v114 = v15;
      v115 = v7;
      v189 = (v34 + v178);
      v116 = (v34 + v178);
      do
      {
        if (v95 == v99)
        {
          return result;
        }

        if (a5 < 0x10 || (v180 & 1) != 0)
        {
          v117 = 0;
          v118 = 0;
          v119 = v97;
          v120 = v14;
          v121 = v34;
          v122 = v115;
        }

        else
        {
          v160 = 0;
          v119 = &v97[v26 / 2];
          v120 = (v14 + v26);
          v121 = &v34[v26 / 2];
          v122 = &v115[v27];
          v161 = a5 & 0x7FFFFFF0;
          v162 = v115;
          do
          {
            v163 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*&v34[v160 / 2]), *&v34[v160 / 2 + 8]), v113);
            v164 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(v14 + v96 + v160)), *(v14 + v96 + v160 + 16)), v113);
            v165 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(v14 + v160)), *(v14 + v160 + 16)), v113);
            vst4q_s8(v162, *v111.i8);
            v162 += 64;
            v160 += 32;
            v161 -= 16;
          }

          while (v161);
          v117 = a5 & 0x7FFFFFF0;
          v118 = a5 & 0x7FFFFFF0;
          v124 = v117 - 1;
          v96 = v178;
          if (v191 == a5)
          {
            goto LABEL_143;
          }
        }

        v123 = a5 - v118;
        v124 = v117 + (v192 - v118);
        do
        {
          v126 = *v121++;
          v125 = v126;
          v128 = *v120++;
          v127 = v128;
          v130 = *v119++;
          v129 = v130;
          *v122 = -1;
          if (v125 >= 127)
          {
            v125 = 127;
          }

          if (v125 <= -128)
          {
            LOBYTE(v125) = 0x80;
          }

          v122[1] = v125 ^ 0x80;
          if (v127 >= 127)
          {
            v131 = 127;
          }

          else
          {
            v131 = v127;
          }

          if (v131 <= -128)
          {
            LOBYTE(v131) = 0x80;
          }

          v122[2] = v131 ^ 0x80;
          if (v129 >= 127)
          {
            v132 = 127;
          }

          else
          {
            v132 = v129;
          }

          if (v132 <= -128)
          {
            LOBYTE(v132) = 0x80;
          }

          v122[3] = v132 ^ 0x80;
          v122 += 4;
          --v123;
        }

        while (v123);
LABEL_143:
        if (a5 < 8)
        {
          v133 = 0;
LABEL_145:
          v134 = v109;
          v135 = v114;
          v136 = v116;
          result = v122;
LABEL_146:
          v137 = a5 - v133;
          do
          {
            v139 = *v136++;
            v138 = v139;
            v141 = *v135++;
            v140 = v141;
            v143 = *v134++;
            v142 = v143;
            *result = -1;
            if (v138 >= 127)
            {
              v138 = 127;
            }

            if (v138 <= -128)
            {
              LOBYTE(v138) = 0x80;
            }

            result[1] = v138 ^ 0x80;
            if (v140 >= 127)
            {
              v144 = 127;
            }

            else
            {
              v144 = v140;
            }

            if (v144 <= -128)
            {
              LOBYTE(v144) = 0x80;
            }

            result[2] = v144 ^ 0x80;
            if (v142 >= 127)
            {
              v145 = 127;
            }

            else
            {
              v145 = v142;
            }

            if (v145 <= -128)
            {
              LOBYTE(v145) = 0x80;
            }

            result[3] = v145 ^ 0x80;
            result += 4;
            --v137;
          }

          while (v137);
          goto LABEL_122;
        }

        v133 = 0;
        v146 = &v7[4 * v124 + 8 + v172 + v95 * v194];
        v148 = v122 < v184 && v15 < v146;
        v150 = v122 < v182 && v189 < v146;
        v151 = (v15 + v178) >= v146 || v122 >= v186;
        if (!v151 || v148 || v150)
        {
          goto LABEL_145;
        }

        if (a5 >= 0x10)
        {
          v166 = 0;
          result = (a5 & 0x7FFFFFF0);
          v167 = v96;
          v168 = v122;
          do
          {
            v196.val[1] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(v34 + v167)), *(v34 + v167 + 16)), v113);
            v196.val[3] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(v114 + v167)), *(v114 + v167 + 16)), v113);
            v196.val[2] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*&v114[v166]), *&v114[v166 + 8]), v113);
            v196.val[0] = v111;
            vst4q_s8(v168, v196);
            v168 += 64;
            v167 += 32;
            v166 += 16;
            result -= 16;
          }

          while (result);
          if (v191 == a5)
          {
            goto LABEL_122;
          }

          v152 = a5 & 0x7FFFFFF0;
          if ((a5 & 8) == 0)
          {
            result = &v122[v27];
            v136 = &v116[v26 / 2];
            v135 = &v114[v26 / 2];
            v134 = &v109[v26 / 2];
            v133 = a5 & 0x7FFFFFF0;
            goto LABEL_146;
          }
        }

        else
        {
          v152 = 0;
        }

        v134 = &v109[v176];
        v135 = &v114[v176];
        v136 = &v116[v176];
        result = &v122[v175];
        v153 = v152;
        v154 = v96 + 2 * v152;
        v155 = v152 - (a5 & 0x7FFFFFF8);
        v156 = &v122[4 * v152];
        do
        {
          v157 = veor_s8(vqmovn_s16(*(v34 + v154)), 0x8080808080808080);
          v158 = veor_s8(vqmovn_s16(*&v114[v153]), 0x8080808080808080);
          v159 = veor_s8(vqmovn_s16(*(v114 + v154)), 0x8080808080808080);
          vst4_s8(v156, *&v112);
          v156 += 32;
          v154 += 16;
          v153 += 8;
          v155 += 8;
        }

        while (v155);
        v133 = a5 & 0x7FFFFFF8;
        if (v177 != a5)
        {
          goto LABEL_146;
        }

LABEL_122:
        v115 += v194;
        v34 = (v34 + v28);
        v116 = (v116 + v28);
        v14 += v28;
        v114 = (v114 + v28);
        v97 = (v97 + v28);
        v109 = (v109 + v28);
        ++v95;
      }

      while (v95 != a6);
    }
  }

  return result;
}

int8x16_t from_444_to_y408_r408_4xH<true,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, uint64_t a5, int a6, unsigned int a7, int8x16_t result)
{
  v8 = a7 >> 1;
  v9 = (4 * v8);
  v10 = (6 * v8);
  v11 = (8 * v8);
  v12 = (10 * v8);
  v13 = (a7 * a3);
  v14 = a5 + (8 * a6);
  v15 = 8 / a7 * a6;
  v16 = a4 - a7;
  if (a4 <= a7)
  {
    v17 = 0;
  }

  else
  {
    v17 = a4 - a7;
  }

  v18 = a4 - v17;
  if (v17 < 2)
  {
    v71 = a7 >> 1;
    v59 = &a2[v71];
    v70 = &a2[a7 & 0xFFFFFFFE];
    v60 = &v70[v71];
    v61 = &a2[v9];
    v62 = &v61[v71];
    v63 = &a2[v10];
    v64 = &v63[v71];
    v65 = &a2[v11];
    v66 = &v65[v71];
    v67 = &a2[v12];
    v68 = &v67[v71];
    v69 = (a1 + v13);
    if (!(v18 + v17))
    {
      return result;
    }

LABEL_10:
    if (v17 == 1)
    {
      v72.i64[0] = 0x8080808080808080;
      v72.i64[1] = 0x8080808080808080;
      v73.i64[0] = 0x1010101010101010;
      v73.i64[1] = 0x1010101010101010;
      v74 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*v70), *v60), v72), v73);
      v73.i16[0] = *v14;
      v73.i16[1] = BYTE2(*v14);
      v73.i16[2] = BYTE4(*v14);
      v73.i16[3] = BYTE6(*v14);
      v73.i16[4] = *(v14 + 8);
      v73.i16[5] = BYTE2(*(v14 + 8));
      v73.i16[6] = BYTE12(*v14);
      v73.i16[7] = BYTE14(*v14);
      v75.i16[0] = *(v14 + v15);
      v75.i16[1] = BYTE2(*(v14 + v15));
      v75.i16[2] = BYTE4(*(v14 + v15));
      v75.i16[3] = BYTE6(*(v14 + v15));
      v75.i16[4] = *(v14 + v15 + 8);
      v75.i16[5] = BYTE2(*(v14 + v15 + 8));
      v75.i16[6] = BYTE12(*(v14 + v15));
      v75.i16[7] = BYTE14(*(v14 + v15));
      v76 = vqmovun_high_s16(vqmovun_s16(v73), v75);
      v77 = vuzp1q_s32(v76, vrev64q_s32(v76));
      v78 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v63), *v67), v72);
      v79 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v64), *v68), v72);
      v80 = vzip1q_s8(v74, v79);
      result = vzip1q_s8(vzip2q_s8(v77, v78), vzip2q_s8(v74, v79));
      *v69 = vzip1q_s8(vzip1q_s8(v77, v78), v80);
      v69[1] = result;
      if (v18 < 2)
      {
LABEL_12:
        if (v18 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v18 < 2)
    {
      goto LABEL_12;
    }

    v81 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v82.i64[0] = 0x1010101010101010;
    v82.i64[1] = 0x1010101010101010;
    do
    {
      v83 = v18;
      v84 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v81]), v59[v81]), result), v82);
      v85.i16[0] = *a5;
      v85.i16[1] = BYTE2(*a5);
      v85.i16[2] = BYTE4(*a5);
      v85.i16[3] = BYTE6(*a5);
      v85.i16[4] = *(a5 + 8);
      v85.i16[5] = BYTE2(*(a5 + 8));
      v85.i16[6] = BYTE12(*a5);
      v85.i16[7] = BYTE14(*a5);
      v86.i16[0] = *(a5 + v15);
      v86.i16[1] = BYTE2(*(a5 + v15));
      v86.i16[2] = BYTE4(*(a5 + v15));
      v86.i16[3] = BYTE6(*(a5 + v15));
      v86.i16[4] = *(a5 + v15 + 8);
      v86.i16[5] = BYTE2(*(a5 + v15 + 8));
      v86.i16[6] = BYTE12(*(a5 + v15));
      v86.i16[7] = BYTE14(*(a5 + v15));
      v87 = vqmovun_high_s16(vqmovun_s16(v85), v86);
      v88 = vuzp1q_s32(v87, vrev64q_s32(v87));
      v89 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v61[v81]), v65[v81]), result);
      v90 = vzip1q_s8(v88, v89);
      v91 = vzip2q_s8(v88, v89);
      v92 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v62[v81]), v66[v81]), result);
      v93 = vzip1q_s8(v84, v92);
      v94 = vzip2q_s8(v84, v92);
      *a1 = vzip1q_s8(v90, v93);
      a1[1] = vzip1q_s8(v91, v94);
      v95 = (a1 + a3);
      a1 = (a1 + 2 * a3);
      *v95 = vzip2q_s8(v90, v93);
      v95[1] = vzip2q_s8(v91, v94);
      v18 = v83 - 2;
      a5 += 2 * v15;
      ++v81;
    }

    while (v83 > 3);
    a2 = (a2 + v81 * 16);
    v59 = (v59 + v81 * 16);
    v61 = (v61 + v81 * 16);
    v62 = (v62 + v81 * 16);
    v65 = (v65 + v81 * 16);
    v66 = (v66 + v81 * 16);
    if (v83 != 3)
    {
      return result;
    }

LABEL_18:
    v96.i64[0] = 0x8080808080808080;
    v96.i64[1] = 0x8080808080808080;
    v97.i64[0] = 0x1010101010101010;
    v97.i64[1] = 0x1010101010101010;
    v98 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v59), v96), v97);
    v97.i16[0] = *a5;
    v97.i16[1] = BYTE2(*a5);
    v97.i16[2] = BYTE4(*a5);
    v97.i16[3] = BYTE6(*a5);
    v97.i16[4] = *(a5 + 8);
    v97.i16[5] = BYTE2(*(a5 + 8));
    v97.i16[6] = BYTE12(*a5);
    v97.i16[7] = BYTE14(*a5);
    v99.i16[0] = *(a5 + v15);
    v99.i16[1] = BYTE2(*(a5 + v15));
    v99.i16[2] = BYTE4(*(a5 + v15));
    v99.i16[3] = BYTE6(*(a5 + v15));
    v99.i16[4] = *(a5 + v15 + 8);
    v99.i16[5] = BYTE2(*(a5 + v15 + 8));
    v99.i16[6] = BYTE12(*(a5 + v15));
    v99.i16[7] = BYTE14(*(a5 + v15));
    v100 = vqmovun_high_s16(vqmovun_s16(v97), v99);
    v101 = vuzp1q_s32(v100, vrev64q_s32(v100));
    v102 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v61), *v65), v96);
    v103 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v62), *v66), v96);
    v104 = vzip1q_s8(v98, v103);
    result = vzip1q_s8(vzip2q_s8(v101, v102), vzip2q_s8(v98, v103));
    *a1 = vzip1q_s8(vzip1q_s8(v101, v102), v104);
    a1[1] = result;
    return result;
  }

  v19 = 2 * v15;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = 16 * v8 + 16 * v12;
  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v26.i64[0] = 0x1010101010101010;
  v26.i64[1] = 0x1010101010101010;
  v17 = v16;
  do
  {
    v27 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[v8]), result), v26);
    v28.i16[0] = *a5;
    v28.i16[1] = BYTE2(*a5);
    v28.i16[2] = BYTE4(*a5);
    v28.i16[3] = BYTE6(*a5);
    v28.i16[4] = *(a5 + 8);
    v28.i16[5] = BYTE2(*(a5 + 8));
    v28.i16[6] = BYTE12(*a5);
    v28.i16[7] = BYTE14(*a5);
    v29.i16[0] = *(a5 + v15);
    v29.i16[1] = BYTE2(*(a5 + v15));
    v29.i16[2] = BYTE4(*(a5 + v15));
    v29.i16[3] = BYTE6(*(a5 + v15));
    v29.i16[4] = *(a5 + v15 + 8);
    v29.i16[5] = BYTE2(*(a5 + v15 + 8));
    v29.i16[6] = BYTE12(*(a5 + v15));
    v29.i16[7] = BYTE14(*(a5 + v15));
    v30 = vqmovun_high_s16(vqmovun_s16(v28), v29);
    v31 = vuzp1q_s32(v30, vrev64q_s32(v30));
    v32 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v21]), a2[v23]), result);
    v33 = vzip1q_s8(v31, v32);
    v34 = vzip2q_s8(v31, v32);
    v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v8 + v21]), a2[v8 + v23]), result);
    v36 = vzip1q_s8(v27, v35);
    v37 = vzip2q_s8(v27, v35);
    *a1 = vzip1q_s8(v33, v36);
    a1[1] = vzip1q_s8(v34, v37);
    v38 = (a1 + a3);
    *v38 = vzip2q_s8(v33, v36);
    v38[1] = vzip2q_s8(v34, v37);
    v39 = a2[2 * v8];
    v40 = a2[3 * v8];
    v41 = a2[v22];
    v42 = a2[v24];
    v43 = a2[v8 + v22];
    v44 = *(a2 + v25);
    LODWORD(v38) = v17;
    ++a2;
    v45 = &a1->i8[v13];
    v46 = (a1 + a3 + v13);
    a1 = (a1 + 2 * a3);
    v18 -= 2;
    a5 += v19;
    v47 = vqmovn_high_s16(vqmovn_s16(v39), v40);
    v48 = vqmovn_high_s16(vqmovn_s16(v41), v42);
    v49 = vqmovn_high_s16(vqmovn_s16(v43), v44);
    v50 = vqsubq_u8(veorq_s8(v47, result), v26);
    v42.i16[0] = *v14;
    v42.i16[1] = BYTE2(*v14);
    v42.i16[2] = BYTE4(*v14);
    v42.i16[3] = BYTE6(*v14);
    v42.i16[4] = *(v14 + 8);
    v42.i16[5] = BYTE2(*(v14 + 8));
    v42.i16[6] = BYTE12(*v14);
    v42.i16[7] = BYTE14(*v14);
    v43.i16[0] = *(v14 + v15);
    v43.i16[1] = BYTE2(*(v14 + v15));
    v43.i16[2] = BYTE4(*(v14 + v15));
    v43.i16[3] = BYTE6(*(v14 + v15));
    v43.i16[4] = *(v14 + v15 + 8);
    v43.i16[5] = BYTE2(*(v14 + v15 + 8));
    v43.i16[6] = BYTE12(*(v14 + v15));
    v43.i16[7] = BYTE14(*(v14 + v15));
    v51 = vqmovun_high_s16(vqmovun_s16(v42), v43);
    v52 = vuzp1q_s32(v51, vrev64q_s32(v51));
    v53 = veorq_s8(v48, result);
    v54 = vzip1q_s8(v52, v53);
    v55 = vzip2q_s8(v52, v53);
    v56 = veorq_s8(v49, result);
    v57 = vzip1q_s8(v50, v56);
    v58 = vzip2q_s8(v50, v56);
    vst2_s8(v45, v54);
    v45 += 16;
    vst2_s8(v45, v55);
    *v46 = vzip2q_s8(v54, v57);
    v46[1] = vzip2q_s8(v55, v58);
    v17 = v38 - 2;
    v14 += v19;
  }

  while (v38 > 3);
  v59 = &a2[v20];
  v60 = &a2[3 * v8];
  v61 = &a2[v21];
  v62 = &a2[v20 + v21];
  v63 = &a2[v22];
  v64 = &a2[v20 + v22];
  v65 = &a2[v23];
  v66 = &a2[v20 + v23];
  v67 = &a2[v24];
  v68 = &a2[v20 + v24];
  v69 = (a1 + v13);
  v70 = &a2[2 * v8];
  if (v18 + v17)
  {
    goto LABEL_10;
  }

  return result;
}

_BYTE *from_444_to_AYUV_UYVY_WxH<(PixelFormat)1916022840,(AlphaOutputMethod)1>(_BYTE *result, uint64_t a2, int a3, int a4, _BYTE *a5, int a6, int a7, int a8)
{
  if (a8 >= 1 && a7 >= 1)
  {
    v8 = 0;
    v9 = (a8 * a7);
    v10 = 8u / a8 * a6;
    v11 = a3;
    v12 = 2 * (4 * v9);
    v13 = a2 + v12;
    v14 = a2 + v12 + v12;
    v15 = 2 * v9;
    v16 = a2 + v12 + 2 * v9;
    v17 = v16 + v12;
    v18 = a2 + v15;
    v19 = 2 * a7;
    v20 = 8u / a7;
    do
    {
      if (v8 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      v21 = 0;
      v22 = a5;
      v23 = result;
      do
      {
        v24 = *(a2 + 2 * v21);
        v25 = *(v13 + 2 * v21);
        v26 = *(v16 + 2 * v21);
        *v23 = *v22;
        v27 = v24 + 112;
        if (v24 > 127)
        {
          v27 = -17;
        }

        if (v24 >= -112)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v23[1] = v28;
        if (v25 >= 127)
        {
          v29 = 127;
        }

        else
        {
          v29 = v25;
        }

        if (v29 <= -128)
        {
          LOBYTE(v29) = 0x80;
        }

        v23[2] = v29 ^ 0x80;
        if (v26 >= 127)
        {
          v30 = 127;
        }

        else
        {
          v30 = v26;
        }

        if (v30 <= -128)
        {
          LOBYTE(v30) = 0x80;
        }

        v23[3] = v30 ^ 0x80;
        v23 += 4;
        v22 += v20;
        ++v21;
      }

      while (a7 != v21);
      v31 = 0;
      do
      {
        v32 = *(v18 + 2 * v31);
        v33 = *(v14 + 2 * v31);
        v34 = *(v17 + 2 * v31);
        *v23 = *v22;
        v35 = v32 + 112;
        if (v32 > 127)
        {
          v35 = -17;
        }

        if (v32 >= -112)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        v23[1] = v36;
        if (v33 >= 127)
        {
          v37 = 127;
        }

        else
        {
          v37 = v33;
        }

        if (v37 <= -128)
        {
          LOBYTE(v37) = 0x80;
        }

        v23[2] = v37 ^ 0x80;
        if (v34 >= 127)
        {
          v38 = 127;
        }

        else
        {
          v38 = v34;
        }

        if (v38 <= -128)
        {
          LOBYTE(v38) = 0x80;
        }

        v23[3] = v38 ^ 0x80;
        v22 += v20;
        ++v31;
        v23 += 4;
      }

      while (a7 != v31);
      result += v11;
      a5 += v10;
      v18 += v19;
      v16 += v19;
      v17 += v19;
      ++v8;
      v13 += v19;
      a2 += v19;
      v14 += v19;
    }

    while (v8 != a8);
    v39 = 0;
    v40 = v16 + v15;
    v41 = v17 + v15;
    v42 = v18 + v15;
    if (a8 > a4)
    {
      a4 = a8;
    }

    v43 = a4 - a8;
    do
    {
      if (v39 == v43)
      {
        break;
      }

      v44 = 0;
      v45 = a5;
      v46 = result;
      do
      {
        v47 = *(v18 + 2 * v44);
        v48 = *(v16 + 2 * v44);
        v49 = *(v40 + 2 * v44);
        *v46 = *v45;
        v50 = v47 + 112;
        if (v47 > 127)
        {
          v50 = -17;
        }

        if (v47 >= -112)
        {
          v51 = v50;
        }

        else
        {
          v51 = 0;
        }

        v46[1] = v51;
        if (v48 >= 127)
        {
          v52 = 127;
        }

        else
        {
          v52 = v48;
        }

        if (v52 <= -128)
        {
          LOBYTE(v52) = 0x80;
        }

        v46[2] = v52 ^ 0x80;
        if (v49 >= 127)
        {
          v53 = 127;
        }

        else
        {
          v53 = v49;
        }

        if (v53 <= -128)
        {
          LOBYTE(v53) = 0x80;
        }

        v46[3] = v53 ^ 0x80;
        v46 += 4;
        v45 += v20;
        ++v44;
      }

      while (a7 != v44);
      v54 = 0;
      do
      {
        v55 = *(v42 + 2 * v54);
        v56 = *(v17 + 2 * v54);
        v57 = *(v41 + 2 * v54);
        *v46 = *v45;
        v58 = v55 + 112;
        if (v55 > 127)
        {
          v58 = -17;
        }

        if (v55 >= -112)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v46[1] = v59;
        if (v56 >= 127)
        {
          v60 = 127;
        }

        else
        {
          v60 = v56;
        }

        if (v60 <= -128)
        {
          LOBYTE(v60) = 0x80;
        }

        v46[2] = v60 ^ 0x80;
        if (v57 >= 127)
        {
          v61 = 127;
        }

        else
        {
          v61 = v57;
        }

        if (v61 <= -128)
        {
          LOBYTE(v61) = 0x80;
        }

        v46[3] = v61 ^ 0x80;
        v45 += v20;
        ++v54;
        v46 += 4;
      }

      while (a7 != v54);
      result += v11;
      a5 += v10;
      ++v39;
      v40 += v19;
      v16 += v19;
      v18 += v19;
      v41 += v19;
      v17 += v19;
      v42 += v19;
    }

    while (v39 != a8);
  }

  return result;
}

int8x16_t from_444_to_y408_r408_4xH<true,(AlphaOutputMethod)2,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, unsigned int a5, int8x16_t result)
{
  v6 = a5 >> 1;
  v7 = (4 * v6);
  v8 = (6 * v6);
  v9 = (8 * v6);
  v10 = (10 * v6);
  v11 = (a5 * a3);
  if (a4 <= a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4 - a5;
  }

  v13 = a4 - v12;
  if (v12 < 2)
  {
    v60 = a5 >> 1;
    v48 = &a2[v60];
    v59 = &a2[a5 & 0xFFFFFFFE];
    v49 = &v59[v60];
    v50 = &a2[v7];
    v51 = &v50[v60];
    v52 = &a2[v8];
    v53 = &v52[v60];
    v54 = &a2[v9];
    v55 = &v54[v60];
    v56 = &a2[v10];
    v57 = &v56[v60];
    v58 = (a1 + v11);
    if (!(v13 + v12))
    {
      return result;
    }

LABEL_10:
    if (v12 == 1)
    {
      v61.i64[0] = 0x8080808080808080;
      v61.i64[1] = 0x8080808080808080;
      v62.i64[0] = 0x1010101010101010;
      v62.i64[1] = 0x1010101010101010;
      v63 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*v59), *v49), v61), v62);
      v64 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v52), *v56), v61);
      v62.i64[0] = -1;
      v62.i64[1] = -1;
      v65 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v53), *v57), v61);
      v66 = vzip1q_s8(v63, v65);
      result = vzip1q_s8(vzip2q_s8(v62, v64), vzip2q_s8(v63, v65));
      *v58 = vzip1q_s8(vzip1q_s8(v62, v64), v66);
      v58[1] = result;
      if (v13 < 2)
      {
LABEL_12:
        if (v13 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v13 < 2)
    {
      goto LABEL_12;
    }

    v67 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v68.i64[0] = 0x1010101010101010;
    v68.i64[1] = 0x1010101010101010;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    do
    {
      v70 = v13;
      v71 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v67]), v48[v67]), result), v68);
      v72 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v50[v67]), v54[v67]), result);
      v73 = vzip1q_s8(v69, v72);
      v74 = vzip2q_s8(v69, v72);
      v75 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v51[v67]), v55[v67]), result);
      v76 = vzip1q_s8(v71, v75);
      v77 = vzip2q_s8(v71, v75);
      *a1 = vzip1q_s8(v73, v76);
      a1[1] = vzip1q_s8(v74, v77);
      v78 = (a1 + a3);
      *v78 = vzip2q_s8(v73, v76);
      v78[1] = vzip2q_s8(v74, v77);
      a1 = (a1 + 2 * a3);
      v13 = v70 - 2;
      ++v67;
    }

    while (v70 > 3);
    a2 = (a2 + v67 * 16);
    v48 = (v48 + v67 * 16);
    v50 = (v50 + v67 * 16);
    v51 = (v51 + v67 * 16);
    v54 = (v54 + v67 * 16);
    v55 = (v55 + v67 * 16);
    if (v70 != 3)
    {
      return result;
    }

LABEL_18:
    v79.i64[0] = 0x8080808080808080;
    v79.i64[1] = 0x8080808080808080;
    v80.i64[0] = 0x1010101010101010;
    v80.i64[1] = 0x1010101010101010;
    v81 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v48), v79), v80);
    v82 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v50), *v54), v79);
    v80.i64[0] = -1;
    v80.i64[1] = -1;
    v83 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v51), *v55), v79);
    v84 = vzip1q_s8(v81, v83);
    result = vzip1q_s8(vzip2q_s8(v80, v82), vzip2q_s8(v81, v83));
    *a1 = vzip1q_s8(vzip1q_s8(v80, v82), v84);
    a1[1] = result;
    return result;
  }

  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v19.i64[0] = 0x1010101010101010;
  v19.i64[1] = 0x1010101010101010;
  v20.i64[0] = -1;
  v20.i64[1] = -1;
  v12 = a4 - a5;
  do
  {
    v21 = v12;
    v22 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[v6]), result), v19);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v15]), a2[v17]), result);
    v24 = vzip1q_s8(v20, v23);
    v25 = vzip2q_s8(v20, v23);
    v26 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v6 + v15]), a2[v6 + v17]), result);
    v27 = vzip1q_s8(v22, v26);
    v28 = vzip2q_s8(v22, v26);
    *a1 = vzip1q_s8(v24, v27);
    a1[1] = vzip1q_s8(v25, v28);
    v29 = (a1 + a3);
    *v29 = vzip2q_s8(v24, v27);
    v29[1] = vzip2q_s8(v25, v28);
    v30 = a2[2 * v6];
    v31 = a2[3 * v6];
    v32 = a2[v16];
    v33 = a2[v18];
    v34 = a2[v6 + v16];
    v35 = a2[v6 + v18];
    ++a2;
    v36 = &a1->i8[v11];
    v37 = (a1 + a3 + v11);
    a1 = (a1 + 2 * a3);
    v13 -= 2;
    v38 = vqmovn_high_s16(vqmovn_s16(v30), v31);
    v39 = vqmovn_high_s16(vqmovn_s16(v32), v33);
    v40 = vqmovn_high_s16(vqmovn_s16(v34), v35);
    v41 = vqsubq_u8(veorq_s8(v38, result), v19);
    v42 = veorq_s8(v39, result);
    v43 = vzip1q_s8(v20, v42);
    v44 = vzip2q_s8(v20, v42);
    v45 = veorq_s8(v40, result);
    v46 = vzip1q_s8(v41, v45);
    v47 = vzip2q_s8(v41, v45);
    vst2_s8(v36, v43);
    v36 += 16;
    vst2_s8(v36, v44);
    *v37 = vzip2q_s8(v43, v46);
    v37[1] = vzip2q_s8(v44, v47);
    v12 = v21 - 2;
  }

  while (v21 > 3);
  v48 = &a2[v14];
  v49 = &a2[3 * v6];
  v50 = &a2[v15];
  v51 = &a2[v14 + v15];
  v52 = &a2[v16];
  v53 = &a2[v14 + v16];
  v54 = &a2[v17];
  v55 = &a2[v14 + v17];
  v56 = &a2[v18];
  v57 = &a2[v14 + v18];
  v58 = (a1 + v11);
  v59 = &a2[2 * v6];
  if (v13 + v12)
  {
    goto LABEL_10;
  }

  return result;
}