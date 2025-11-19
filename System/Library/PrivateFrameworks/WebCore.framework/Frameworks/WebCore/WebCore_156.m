int16x8_t *fidentity8x32_row_rect_neon(int16x8_t *result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v4 = vshlq_n_s16(result[1], 2uLL);
  v23[0] = vshlq_n_s16(*result, 2uLL);
  v23[1] = v4;
  v5 = vshlq_n_s16(result[3], 2uLL);
  v23[2] = vshlq_n_s16(result[2], 2uLL);
  v23[3] = v5;
  v6 = vshlq_n_s16(result[5], 2uLL);
  v23[4] = vshlq_n_s16(result[4], 2uLL);
  v23[5] = v6;
  v7 = vshlq_n_s16(result[7], 2uLL);
  v23[6] = vshlq_n_s16(result[6], 2uLL);
  v23[7] = v7;
  v8 = vshlq_n_s16(result[9], 2uLL);
  v23[8] = vshlq_n_s16(result[8], 2uLL);
  v23[9] = v8;
  v9 = vshlq_n_s16(result[11], 2uLL);
  v23[10] = vshlq_n_s16(result[10], 2uLL);
  v23[11] = v9;
  v10 = vshlq_n_s16(result[13], 2uLL);
  v23[12] = vshlq_n_s16(result[12], 2uLL);
  v23[13] = v10;
  v11 = vshlq_n_s16(result[15], 2uLL);
  v23[14] = vshlq_n_s16(result[14], 2uLL);
  v23[15] = v11;
  v12 = vshlq_n_s16(result[17], 2uLL);
  v23[16] = vshlq_n_s16(result[16], 2uLL);
  v23[17] = v12;
  v13 = vshlq_n_s16(result[19], 2uLL);
  v23[18] = vshlq_n_s16(result[18], 2uLL);
  v23[19] = v13;
  v14 = vshlq_n_s16(result[21], 2uLL);
  v23[20] = vshlq_n_s16(result[20], 2uLL);
  v23[21] = v14;
  v15 = vshlq_n_s16(result[23], 2uLL);
  v23[22] = vshlq_n_s16(result[22], 2uLL);
  v23[23] = v15;
  v16 = vshlq_n_s16(result[25], 2uLL);
  v23[24] = vshlq_n_s16(result[24], 2uLL);
  v23[25] = v16;
  v17 = vshlq_n_s16(result[27], 2uLL);
  v23[26] = vshlq_n_s16(result[26], 2uLL);
  v23[27] = v17;
  v18 = vshlq_n_s16(result[29], 2uLL);
  v23[28] = vshlq_n_s16(result[28], 2uLL);
  v23[29] = v18;
  v19 = vshlq_n_s16(result[31], 2uLL);
  v20 = a2 + 1;
  v23[30] = vshlq_n_s16(result[30], 2uLL);
  v23[31] = v19;
  v21 = vdupq_n_s16(0x16A1u);
  do
  {
    v22 = v23[v3];
    v20[-1] = vrshrq_n_s32(vmull_s16(*v22.i8, *v21.i8), 0xCuLL);
    *v20 = vrshrq_n_s32(vmull_high_s16(v22, v21), 0xCuLL);
    ++v3;
    v20 = (v20 + 4 * a3);
  }

  while (v3 != 32);
  return result;
}

int32x4_t fdct32_neon(int32x4_t *a1, int32x4_t *a2)
{
  v2 = a1[2];
  v269 = a1[1];
  v3 = a1[29];
  v273 = a1[30];
  v4 = vqaddq_s32(v269, v273);
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[27];
  v7 = a1[28];
  v9 = vqaddq_s32(v2, v3);
  v10 = vqaddq_s32(v5, v7);
  v11 = a1[5];
  v12 = a1[26];
  v282 = vqaddq_s32(v6, v8);
  v13 = vqaddq_s32(v11, v12);
  v265 = a1[6];
  v267 = a1[25];
  v284 = a1[7];
  v283 = a1[24];
  v14 = vqaddq_s32(v265, v267);
  v15 = a1[21];
  v256 = a1[9];
  v257 = a1[22];
  v16 = vqaddq_s32(v256, v257);
  v18 = a1[12];
  v17 = a1[13];
  v20 = a1[18];
  v19 = a1[19];
  v21 = vqaddq_s32(v18, v19);
  v22 = vqaddq_s32(v17, v20);
  v23 = vqsubq_s32(v17, v20);
  v24 = vqsubq_s32(v18, v19);
  v25 = a1[10];
  v26 = a1[11];
  v27 = a1[20];
  v28 = vqaddq_s32(v26, v27);
  v29 = vqsubq_s32(v26, v27);
  v30 = vqaddq_s32(v25, v15);
  v31 = vqsubq_s32(v25, v15);
  v32 = vqsubq_s32(v11, v12);
  v33 = vqsubq_s32(v6, v8);
  v34 = vqsubq_s32(v5, v7);
  v35 = vqsubq_s32(v2, v3);
  v254 = vqaddq_s32(v9, v22);
  v255 = v21;
  v251 = vqaddq_s32(v13, v30);
  v252 = v28;
  v250 = vqaddq_s32(v14, v16);
  v36 = vqsubq_s32(v14, v16);
  v37 = vqsubq_s32(v13, v30);
  v38 = vqsubq_s32(v9, v22);
  v39 = a1[14];
  v40 = a1[17];
  v258 = a1[15];
  v259 = a1[16];
  v41 = vqaddq_s32(v39, v40);
  v249 = vqaddq_s32(v4, v41);
  v42 = vqsubq_s32(v4, v41);
  v43 = vaddq_s32(v33, v29);
  v44 = vdupq_n_s32(0xFFFFE960);
  v45 = vdupq_n_s32(0x16A0u);
  v46 = vmlaq_s32(vmulq_s32(v29, v44), v33, v45);
  v47 = vaddq_s32(v32, v31);
  v48 = vmlaq_s32(vmulq_s32(v31, v44), v32, v45);
  v49 = vaddq_s32(v38, v37);
  v50 = vmlaq_s32(vmulq_s32(v37, v44), v38, v45);
  v51 = vrshrq_n_s32(v46, 0xDuLL);
  v52 = vqaddq_s32(v24, v51);
  v53 = vqsubq_s32(v24, v51);
  v54 = vrshrq_n_s32(v48, 0xDuLL);
  v55 = vqaddq_s32(v23, v54);
  v56 = vqsubq_s32(v23, v54);
  v57 = vrshrq_n_s32(vmulq_s32(v43, v45), 0xDuLL);
  v58 = vqsubq_s32(v34, v57);
  v59 = vqaddq_s32(v34, v57);
  v60 = vrshrq_n_s32(vmulq_s32(v47, v45), 0xDuLL);
  v61 = vqsubq_s32(v35, v60);
  v62 = vqaddq_s32(v35, v60);
  v63 = vrshrq_n_s32(v50, 0xDuLL);
  v64 = vqaddq_s32(v36, v63);
  v65 = vqsubq_s32(v36, v63);
  v66 = vrshrq_n_s32(vmulq_s32(v49, v45), 0xDuLL);
  v67 = vqsubq_s32(v42, v66);
  v68 = vqaddq_s32(v42, v66);
  v69 = vdupq_n_s32(0x1D90u);
  v70 = vdupq_n_s32(0xC40u);
  v71 = vdupq_n_s32(0xFFFFE270);
  v72 = vmlaq_s32(vmulq_s32(v55, v70), v62, v69);
  v73 = vmlaq_s32(vmulq_s32(v55, v71), v62, v70);
  v264 = vmlaq_s32(vmulq_s32(v52, v70), v59, v69);
  v263 = vmlaq_s32(vmulq_s32(v52, v71), v59, v70);
  v272 = vmlaq_s32(vmulq_s32(v53, v71), v58, v70);
  v74 = vdupq_n_s32(0xFFFFF3C0);
  v271 = vmlaq_s32(vmulq_s32(v53, v74), v58, v71);
  v75 = vmlaq_s32(vmulq_s32(v56, v71), v61, v70);
  v76 = vmlaq_s32(vmulq_s32(v56, v74), v61, v71);
  v262 = a1[31];
  v260 = a1[23];
  v261 = a1[8];
  v253 = vqaddq_s32(*a1, v262);
  v77 = vqaddq_s32(v284, v283);
  v78 = vqaddq_s32(v261, v260);
  v79 = vqaddq_s32(v258, v259);
  v80 = vqaddq_s32(v253, v79);
  v81 = vqaddq_s32(v10, v21);
  v82 = vqaddq_s32(v282, v28);
  v83 = vqaddq_s32(v77, v78);
  v277 = vqaddq_s32(v249, v250);
  v278 = vqaddq_s32(v254, v251);
  v275 = vqaddq_s32(v80, v83);
  v276 = vqaddq_s32(v81, v82);
  v84 = vqsubq_s32(v277, v278);
  v85 = vqsubq_s32(v275, v276);
  v279 = vmlaq_s32(vmulq_s32(v84, v70), v85, v69);
  v280 = vmlaq_s32(vmulq_s32(v84, v71), v85, v70);
  v86 = vmlaq_s32(vmulq_s32(v64, v70), v68, v69);
  v87 = vmlaq_s32(vmulq_s32(v64, v71), v68, v70);
  v88 = vmlaq_s32(vmulq_s32(v65, v71), v67, v70);
  v89 = vmlaq_s32(vmulq_s32(v65, v74), v67, v71);
  v90 = vqsubq_s32(v39, v40);
  v91 = vqsubq_s32(v256, v257);
  v92 = vqsubq_s32(v265, v267);
  v93 = vqsubq_s32(v269, v273);
  v94 = vaddq_s32(v92, v91);
  v281 = v44;
  v95 = vmlaq_s32(vmulq_s32(v91, v44), v92, v45);
  v96 = vqsubq_s32(v81, v82);
  v97 = vqsubq_s32(v254, v251);
  v98 = vqsubq_s32(v249, v250);
  v99 = vqsubq_s32(v80, v83);
  v100 = vaddq_s32(v98, v97);
  v101 = vmlaq_s32(vmulq_s32(v97, v44), v98, v45);
  v102 = vrshrq_n_s32(v95, 0xDuLL);
  v103 = vrshrq_n_s32(v73, 0xDuLL);
  v104 = vqaddq_s32(v90, v102);
  v105 = vqaddq_s32(v104, v103);
  v106 = vqsubq_s32(v104, v103);
  v107 = vrshrq_n_s32(vmulq_s32(v94, v45), 0xDuLL);
  v108 = vrshrq_n_s32(v72, 0xDuLL);
  v109 = vqaddq_s32(v93, v107);
  v110 = vqsubq_s32(v109, v108);
  v111 = vqaddq_s32(v109, v108);
  v112 = vrshrq_n_s32(vmulq_s32(v100, v45), 0xDuLL);
  v113 = vrshrq_n_s32(v101, 0xDuLL);
  v114 = vqaddq_s32(v96, v113);
  v115 = vqaddq_s32(v99, v112);
  v116 = vdupq_n_s32(0x1F64u);
  v117 = vdupq_n_s32(0x640u);
  v270 = vmlaq_s32(vmulq_s32(v114, v117), v115, v116);
  v118 = vdupq_n_s32(0xFFFFE09C);
  v274 = vmlaq_s32(vmulq_s32(v114, v118), v115, v117);
  v119 = vmlaq_s32(vmulq_s32(v105, v117), v111, v116);
  v120 = vmlaq_s32(vmulq_s32(v105, v118), v111, v117);
  v121 = vmlaq_s32(vmulq_s32(v106, v118), v110, v117);
  v122 = vmlaq_s32(vmulq_s32(v106, vdupq_n_s32(0xFFFFF9C0)), v110, v118);
  v123 = vqsubq_s32(v90, v102);
  v124 = vqsubq_s32(v93, v107);
  v125 = vqsubq_s32(v96, v113);
  v126 = vqsubq_s32(v99, v112);
  v127 = vrshrq_n_s32(v76, 0xDuLL);
  v128 = vqsubq_s32(v123, v127);
  v129 = vqaddq_s32(v123, v127);
  v130 = vrshrq_n_s32(v75, 0xDuLL);
  v131 = vqaddq_s32(v124, v130);
  v132 = vqsubq_s32(v124, v130);
  v133 = vdupq_n_s32(0x11C8u);
  v134 = vdupq_n_s32(0x1A9Cu);
  v268 = vmlaq_s32(vmulq_s32(v125, v134), v126, v133);
  v135 = vdupq_n_s32(0xFFFFEE38);
  v266 = vmlaq_s32(vmulq_s32(v125, v135), v126, v134);
  v136 = vmlaq_s32(vmulq_s32(v128, v134), v132, v133);
  v137 = vmlaq_s32(vmulq_s32(v128, v135), v132, v134);
  v138 = vmlaq_s32(vmulq_s32(v129, v135), v131, v134);
  v139 = vmlaq_s32(vmulq_s32(v129, vdupq_n_s32(0xFFFFE564)), v131, v135);
  v140 = vqsubq_s32(v77, v78);
  v141 = vqsubq_s32(v282, v252);
  v142 = vqsubq_s32(v10, v255);
  v143 = vqsubq_s32(v253, v79);
  v144 = vaddq_s32(v142, v141);
  v145 = vmlaq_s32(vmulq_s32(v141, v281), v142, v45);
  v146 = vrshrq_n_s32(vmulq_s32(v144, v45), 0xDuLL);
  v147 = vrshrq_n_s32(v145, 0xDuLL);
  v148 = vrshrq_n_s32(v86, 0xDuLL);
  v149 = vrshrq_n_s32(v87, 0xDuLL);
  v150 = vqaddq_s32(v140, v147);
  v151 = vqaddq_s32(v143, v146);
  v152 = vqaddq_s32(v150, v149);
  v153 = vqaddq_s32(v151, v148);
  v154 = vdupq_n_s32(0x324u);
  v155 = vmlaq_s32(vmulq_s32(v152, v154), v153, vdupq_n_s32(0x1FD8u));
  v156 = vmlaq_s32(vmulq_s32(v152, vdupq_n_s32(0xFFFFE028)), v153, v154);
  v157 = vqsubq_s32(v150, v149);
  v158 = vqsubq_s32(v151, v148);
  v159 = vdupq_n_s32(0x18BCu);
  v160 = vmlaq_s32(vmulq_s32(v157, v159), v158, vdupq_n_s32(0x144Cu));
  v161 = vmlaq_s32(vmulq_s32(v157, vdupq_n_s32(0xFFFFEBB4)), v158, v159);
  v162 = vqsubq_s32(v140, v147);
  v163 = vqsubq_s32(v143, v146);
  v164 = vrshrq_n_s32(v88, 0xDuLL);
  v165 = vrshrq_n_s32(v89, 0xDuLL);
  v166 = vqsubq_s32(v162, v165);
  v167 = vqsubq_s32(v163, v164);
  v168 = vdupq_n_s32(0xF14u);
  v169 = vmlaq_s32(vmulq_s32(v166, v168), v167, vdupq_n_s32(0x1C38u));
  v170 = vmlaq_s32(vmulq_s32(v166, vdupq_n_s32(0xFFFFE3C8)), v167, v168);
  v171 = vqaddq_s32(v162, v165);
  v172 = vqaddq_s32(v163, v164);
  v173 = vdupq_n_s32(0x1EA0u);
  v174 = vmlaq_s32(vmulq_s32(v171, v173), v172, vdupq_n_s32(0x94Cu));
  v175 = vmlaq_s32(vmulq_s32(v171, vdupq_n_s32(0xFFFFF6B4)), v172, v173);
  v176 = vqsubq_s32(v258, v259);
  v177 = vqsubq_s32(v261, v260);
  v178 = vqsubq_s32(v284, v283);
  v179 = vqsubq_s32(*a1, v262);
  v180 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v178, v177), v45), 0xDuLL);
  v181 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v177, v281), v178, v45), 0xDuLL);
  v182 = vrshrq_n_s32(v264, 0xDuLL);
  v183 = vrshrq_n_s32(v263, 0xDuLL);
  v184 = vrshrq_n_s32(v119, 0xDuLL);
  v185 = vrshrq_n_s32(v120, 0xDuLL);
  v186 = vqaddq_s32(v176, v181);
  v187 = vqaddq_s32(v179, v180);
  v188 = vqaddq_s32(v186, v183);
  v189 = vqaddq_s32(v187, v182);
  v190 = vqaddq_s32(v188, v185);
  v191 = vqaddq_s32(v189, v184);
  v192 = vdupq_n_s32(0x190u);
  v193 = vmlaq_s32(vmulq_s32(v190, v192), v191, vdupq_n_s32(0x1FF8u));
  v194 = vmlaq_s32(vmulq_s32(v190, vdupq_n_s32(0xFFFFE008)), v191, v192);
  v195 = vqsubq_s32(v188, v185);
  v196 = vqsubq_s32(v189, v184);
  v197 = vdupq_n_s32(0x17B4u);
  v198 = vmlaq_s32(vmulq_s32(v195, v197), v196, vdupq_n_s32(0x157Cu));
  v199 = vmlaq_s32(vmulq_s32(v195, vdupq_n_s32(0xFFFFEA84)), v196, v197);
  v200 = vqsubq_s32(v186, v183);
  v201 = vqsubq_s32(v187, v182);
  v202 = vrshrq_n_s32(v121, 0xDuLL);
  v203 = vrshrq_n_s32(v122, 0xDuLL);
  v204 = vqsubq_s32(v200, v203);
  v205 = vqsubq_s32(v201, v202);
  v206 = vdupq_n_s32(0xDB0u);
  v207 = vmlaq_s32(vmulq_s32(v204, v206), v205, vdupq_n_s32(0x1CECu));
  v208 = vmlaq_s32(vmulq_s32(v204, vdupq_n_s32(0xFFFFE314)), v205, v206);
  v209 = vqaddq_s32(v200, v203);
  v210 = vdupq_n_s32(0x1E20u);
  v211 = vqaddq_s32(v201, v202);
  v212 = vmlaq_s32(vmulq_s32(v209, v210), v211, vdupq_n_s32(0xAC8u));
  v213 = vmlaq_s32(vmulq_s32(v209, vdupq_n_s32(0xFFFFF538)), v211, v210);
  v214 = vqsubq_s32(v176, v181);
  v215 = vqsubq_s32(v179, v180);
  v216 = vrshrq_n_s32(v272, 0xDuLL);
  v217 = vrshrq_n_s32(v271, 0xDuLL);
  v218 = vrshrq_n_s32(v136, 0xDuLL);
  v219 = vrshrq_n_s32(v137, 0xDuLL);
  v220 = vqsubq_s32(v214, v217);
  v221 = vqsubq_s32(v215, v216);
  v222 = vqaddq_s32(v220, v219);
  v223 = vqaddq_s32(v221, v218);
  v224 = vdupq_n_s32(0x7C8u);
  v225 = vmlaq_s32(vmulq_s32(v222, v224), v223, vdupq_n_s32(0x1F0Cu));
  v226 = vmlaq_s32(vmulq_s32(v222, vdupq_n_s32(0xFFFFE0F4)), v223, v224);
  v227 = vqsubq_s32(v220, v219);
  v228 = vqsubq_s32(v221, v218);
  v229 = vdupq_n_s32(0x1B74u);
  v230 = vmlaq_s32(vmulq_s32(v227, v229), v228, vdupq_n_s32(0x1074u));
  v231 = vmlaq_s32(vmulq_s32(v227, vdupq_n_s32(0xFFFFEF8C)), v228, v229);
  v232 = vqaddq_s32(v214, v217);
  v233 = vqaddq_s32(v215, v216);
  v234 = vrshrq_n_s32(v138, 0xDuLL);
  v235 = vrshrq_n_s32(v139, 0xDuLL);
  v236 = vqsubq_s32(v232, v235);
  v237 = vqsubq_s32(v233, v234);
  v238 = vdupq_n_s32(0x1310u);
  v239 = vmlaq_s32(vmulq_s32(v236, v238), v237, vdupq_n_s32(0x19B4u));
  v240 = vmlaq_s32(vmulq_s32(v236, vdupq_n_s32(0xFFFFE64C)), v237, v238);
  v241 = vqaddq_s32(v232, v235);
  v242 = vdupq_n_s32(0x1FA8u);
  v243 = vqaddq_s32(v233, v234);
  v244 = vmlaq_s32(vmulq_s32(v241, v242), v243, vdupq_n_s32(0x4B4u));
  v245 = vmlaq_s32(vmulq_s32(v241, vdupq_n_s32(0xFFFFFB4C)), v243, v242);
  v246 = vqaddq_s32(v275, v276);
  v247 = vqaddq_s32(v277, v278);
  *a2 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v247, v246), v45), 0xDuLL);
  a2[1] = vrshrq_n_s32(v193, 0xDuLL);
  a2[2] = vrshrq_n_s32(v155, 0xDuLL);
  a2[3] = vrshrq_n_s32(v245, 0xDuLL);
  a2[4] = vrshrq_n_s32(v270, 0xDuLL);
  a2[5] = vrshrq_n_s32(v225, 0xDuLL);
  a2[6] = vrshrq_n_s32(v175, 0xDuLL);
  a2[7] = vrshrq_n_s32(v213, 0xDuLL);
  a2[8] = vrshrq_n_s32(v279, 0xDuLL);
  a2[9] = vrshrq_n_s32(v207, 0xDuLL);
  a2[10] = vrshrq_n_s32(v169, 0xDuLL);
  a2[11] = vrshrq_n_s32(v231, 0xDuLL);
  a2[12] = vrshrq_n_s32(v266, 0xDuLL);
  a2[13] = vrshrq_n_s32(v239, 0xDuLL);
  a2[14] = vrshrq_n_s32(v161, 0xDuLL);
  a2[15] = vrshrq_n_s32(v199, 0xDuLL);
  a2[16] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v246, v45), v247, v281), 0xDuLL);
  a2[17] = vrshrq_n_s32(v198, 0xDuLL);
  a2[18] = vrshrq_n_s32(v160, 0xDuLL);
  a2[19] = vrshrq_n_s32(v240, 0xDuLL);
  a2[20] = vrshrq_n_s32(v268, 0xDuLL);
  a2[21] = vrshrq_n_s32(v230, 0xDuLL);
  a2[22] = vrshrq_n_s32(v170, 0xDuLL);
  a2[23] = vrshrq_n_s32(v208, 0xDuLL);
  a2[24] = vrshrq_n_s32(v280, 0xDuLL);
  a2[25] = vrshrq_n_s32(v212, 0xDuLL);
  a2[26] = vrshrq_n_s32(v174, 0xDuLL);
  a2[27] = vrshrq_n_s32(v226, 0xDuLL);
  a2[28] = vrshrq_n_s32(v274, 0xDuLL);
  a2[29] = vrshrq_n_s32(v244, 0xDuLL);
  result = vrshrq_n_s32(v156, 0xDuLL);
  a2[30] = result;
  a2[31] = vrshrq_n_s32(v194, 0xDuLL);
  return result;
}

int16x4_t fdct4x16_col_neon(int16x4_t *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 2 * a3;
  v5 = (a1 + v4 + v4);
  v6 = *v5;
  v7 = (v5 + v4);
  v8 = *v7;
  v9 = (v7 + v4);
  v10 = *v9;
  v11 = (v9 + v4);
  v12 = *v11;
  v13 = (v11 + v4);
  v14 = *v13;
  v15 = (v13 + v4);
  v16 = *v15;
  v17 = (v15 + v4);
  v18 = *v17;
  v19 = (v17 + v4);
  v20 = *v19;
  v21 = (v19 + v4);
  v22 = *v21;
  v23 = (v21 + v4);
  v24 = *v23;
  v25 = (v23 + v4);
  v26 = *v25;
  v27 = (v25 + v4);
  v28 = *v27;
  v29 = (v27 + v4);
  v30 = vshl_n_s16(*a1, 2uLL);
  v31 = vshl_n_s16(*(a1 + v4), 2uLL);
  v32 = vshl_n_s16(v6, 2uLL);
  v33 = vshl_n_s16(v8, 2uLL);
  v34 = vshl_n_s16(v10, 2uLL);
  v35 = vshl_n_s16(v12, 2uLL);
  v36 = vshl_n_s16(v14, 2uLL);
  v37 = vshl_n_s16(v16, 2uLL);
  v38 = vshl_n_s16(v18, 2uLL);
  v39 = vshl_n_s16(v20, 2uLL);
  v40 = vshl_n_s16(v22, 2uLL);
  v41 = vshl_n_s16(v24, 2uLL);
  v42 = vshl_n_s16(v26, 2uLL);
  v43 = vshl_n_s16(v28, 2uLL);
  v44 = vshl_n_s16(*v29, 2uLL);
  v45 = vshl_n_s16(*(v29 + v4), 2uLL);
  v46 = &av1_cospi_arr_q13_data[16 * a4 - 160];
  v47 = av1_cospi_arr_q13_data[16 * a4 - 159];
  v48 = av1_cospi_arr_q13_data[16 * a4 - 158];
  v49 = av1_cospi_arr_q13_data[16 * a4 - 157];
  v50 = vqadd_s16(v30, v45);
  v51 = vqadd_s16(v31, v44);
  v52 = vqadd_s16(v32, v43);
  v53 = vqadd_s16(v33, v42);
  v54 = vqadd_s16(v34, v41);
  v55 = vqadd_s16(v35, v40);
  v56 = vqadd_s16(v36, v39);
  v57 = vqadd_s16(v37, v38);
  v58 = vqsub_s16(v37, v38);
  v59 = vqsub_s16(v36, v39);
  v60 = vqsub_s16(v35, v40);
  v61 = vqsub_s16(v34, v41);
  v62 = vqsub_s16(v33, v42);
  v63 = vqsub_s16(v32, v43);
  v64 = vqsub_s16(v31, v44);
  v65 = vqsub_s16(v30, v45);
  v66 = vqadd_s16(v50, v57);
  v67 = vqadd_s16(v51, v56);
  v68 = vqadd_s16(v52, v55);
  v69 = vqadd_s16(v53, v54);
  v70 = vqsub_s16(v53, v54);
  v71 = vqsub_s16(v52, v55);
  v72 = vqsub_s16(v51, v56);
  v73 = vqsub_s16(v50, v57);
  v74 = vmlal_lane_s16(vmull_lane_s16(v60, *v46, 1), v63, *v46, 0);
  v75 = vmlal_lane_s16(vmull_lane_s16(v60, *v46, 2), v63, *v46, 1);
  v76 = vqrshrn_n_s32(v74, 0xDuLL);
  *v75.i8 = vqrshrn_n_s32(v75, 0xDuLL);
  *v74.i8 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v61, *v46, 1), v62, *v46, 0), 0xDuLL);
  v77 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v61, *v46, 2), v62, *v46, 1), 0xDuLL);
  v78 = vqadd_s16(v66, v69);
  v79 = vqadd_s16(v67, v68);
  v80 = vqsub_s16(v67, v68);
  v81 = vqsub_s16(v66, v69);
  v82 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v71, *v46, 1), v72, *v46, 0), 0xDuLL);
  v83 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v71, *v46, 2), v72, *v46, 1), 0xDuLL);
  v84 = vqadd_s16(v58, v77);
  v85 = vqadd_s16(v59, *v75.i8);
  v86 = vqsub_s16(v59, *v75.i8);
  v87 = vqsub_s16(v58, v77);
  v88 = vqsub_s16(v65, *v74.i8);
  v89 = vqsub_s16(v64, v76);
  v90 = vqadd_s16(v64, v76);
  v91 = vqadd_s16(v65, *v74.i8);
  v92 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v79, *v46, 2), v78, *v46, 1), 0xDuLL);
  *v75.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v80, *v46->i8, 5), v81, *v46->i8, 4), 0xDuLL);
  v93 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v80, *v46->i8, 6), v81, *v46->i8, 5), 0xDuLL);
  v94 = vqadd_s16(v70, v83);
  v95 = vqsub_s16(v70, v83);
  v96 = vqsub_s16(v73, v82);
  v97 = vqadd_s16(v73, v82);
  v98 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v85, *v46->i8, 5), v90, *v46->i8, 4), 0xDuLL);
  v99 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v85, *v46->i8, 6), v90, *v46->i8, 5), 0xDuLL);
  v100 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v86, *v46->i8, 6), v89, *v46->i8, 5), 0xDuLL);
  v101 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v86, *v46->i8, 7), v89, *v46->i8, 6), 0xDuLL);
  v102 = vmlal_lane_s16(vmull_lane_s16(v94, *v47.i8, 1), v97, *v47.i8, 0);
  v103 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v94, *v47.i8, 2), v97, *v47.i8, 1), 0xDuLL);
  v104 = vmlal_laneq_s16(vmull_laneq_s16(v95, v47, 4), v96, v47, 5);
  v105 = vmlal_laneq_s16(vmull_laneq_s16(v95, v47, 7), v96, v47, 4);
  *v47.i8 = vqrshrn_n_s32(v104, 0xDuLL);
  v106 = vqadd_s16(v84, v99);
  v107 = vqsub_s16(v84, v99);
  *v104.i8 = vqsub_s16(v87, v101);
  v108 = vqadd_s16(v87, v101);
  v109 = vqadd_s16(v88, v100);
  v110 = vqsub_s16(v88, v100);
  v111 = vqsub_s16(v91, v98);
  v112 = vqadd_s16(v91, v98);
  *a2 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v79, *v46, 1), v78, *v46, 0), 0xDuLL);
  a2[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v106, *v48.i8, 1), v112, *v48.i8, 0), 0xDuLL);
  a2[14] = v103;
  a2[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v106, *v48.i8, 2), v112, *v48.i8, 1), 0xDuLL);
  a2[8] = v92;
  a2[9] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v107, v49, 4), v111, v49, 5), 0xDuLL);
  a2[6] = vqrshrn_n_s32(v105, 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v107, v49, 7), v111, v49, 4), 0xDuLL);
  a2[4] = *v75.i8;
  a2[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v104.i8, *v49.i8, 1), v110, *v49.i8, 0), 0xDuLL);
  a2[10] = *v47.i8;
  a2[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v104.i8, *v49.i8, 2), v110, *v49.i8, 1), 0xDuLL);
  a2[12] = v93;
  a2[13] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v108, v48, 4), v109, v48, 5), 0xDuLL);
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v108, v48, 7), v109, v48, 4), 0xDuLL);
  a2[2] = vqrshrn_n_s32(v102, 0xDuLL);
  a2[3] = result;
  return result;
}

int16x4_t fadst4x16_col_neon(int16x4_t *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 2 * a3;
  v5 = (a1 + v4 + v4);
  v6 = *v5;
  v7 = (v5 + v4);
  v8 = *v7;
  v9 = (v7 + v4);
  v10 = *v9;
  v11 = (v9 + v4);
  v12 = *v11;
  v13 = (v11 + v4);
  v14 = *v13;
  v15 = (v13 + v4);
  v16 = *v15;
  v17 = (v15 + v4);
  v18 = *v17;
  v19 = (v17 + v4);
  v20 = *v19;
  v21 = (v19 + v4);
  v22 = *v21;
  v23 = (v21 + v4);
  v24 = *v23;
  v25 = (v23 + v4);
  v26 = *v25;
  v27 = (v25 + v4);
  v28 = *v27;
  v29 = (v27 + v4);
  v30 = vshl_n_s16(*a1, 2uLL);
  v31 = vshl_n_s16(*(a1 + v4), 2uLL);
  v32 = vshl_n_s16(v6, 2uLL);
  v33 = vshl_n_s16(v8, 2uLL);
  v34 = vshl_n_s16(v10, 2uLL);
  v35 = vshl_n_s16(v12, 2uLL);
  v36 = vshl_n_s16(v14, 2uLL);
  v37 = vshl_n_s16(v16, 2uLL);
  v38 = vshl_n_s16(v18, 2uLL);
  v39 = vshl_n_s16(v20, 2uLL);
  v40 = vshl_n_s16(v22, 2uLL);
  v41 = vshl_n_s16(v24, 2uLL);
  v42 = vshl_n_s16(v26, 2uLL);
  v43 = vshl_n_s16(v28, 2uLL);
  v44 = vshl_n_s16(*v29, 2uLL);
  v45 = vshl_n_s16(*(v29 + v4), 2uLL);
  v47 = av1_cospi_arr_q13_data[16 * a4 - 160];
  v46 = av1_cospi_arr_q13_data[16 * a4 - 159];
  v48 = vmlal_lane_s16(vmull_lane_s16(v37, *v47.i8, 3), v38, *v47.i8, 0);
  v49 = vmlal_lane_s16(vmull_lane_s16(v37, *v47.i8, 2), v38, *v47.i8, 3);
  v50 = vqrshrn_n_s32(v48, 0xDuLL);
  *v49.i8 = vqrshrn_n_s32(v49, 0xDuLL);
  *v48.i8 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v41, *v47.i8, 1), v34, *v47.i8, 0), 0xDuLL);
  v51 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v41, *v47.i8, 2), v34, *v47.i8, 1), 0xDuLL);
  v52 = vmlal_lane_s16(vmull_lane_s16(v39, *v47.i8, 1), v36, *v47.i8, 0);
  v53 = vmlal_lane_s16(vmull_lane_s16(v39, *v47.i8, 2), v36, *v47.i8, 1);
  v54 = vqrshrn_n_s32(v52, 0xDuLL);
  *v53.i8 = vqrshrn_n_s32(v53, 0xDuLL);
  v55 = vmlal_lane_s16(vmull_lane_s16(v35, *v47.i8, 3), v40, *v47.i8, 0);
  v56 = vmlal_lane_s16(vmull_lane_s16(v35, *v47.i8, 2), v40, *v47.i8, 3);
  v57 = vqrshrn_n_s32(v55, 0xDuLL);
  v58 = vqrshrn_n_s32(v56, 0xDuLL);
  v59 = vqadd_s16(v30, v50);
  v60 = vqsub_s16(*v49.i8, v45);
  v61 = vqsub_s16(v30, v50);
  *v49.i8 = vqadd_s16(v45, *v49.i8);
  v62 = vqsub_s16(v51, v33);
  v63 = av1_cospi_arr_q13_data[16 * a4 - 156];
  v64 = av1_cospi_arr_q13_data[16 * a4 - 155];
  v65 = vqadd_s16(v42, *v48.i8);
  v66 = vqadd_s16(v33, v51);
  v67 = av1_cospi_arr_q13_data[16 * a4 - 154];
  v68 = av1_cospi_arr_q13_data[16 * a4 - 153];
  v69 = vqsub_s16(v42, *v48.i8);
  *v48.i8 = vqsub_s16(*v53.i8, v31);
  v70 = vqadd_s16(v44, v54);
  v71 = vqadd_s16(v31, *v53.i8);
  *v53.i8 = vqsub_s16(v44, v54);
  v72 = vqadd_s16(v32, v57);
  v73 = vqsub_s16(v58, v43);
  v74 = vqsub_s16(v32, v57);
  v75 = vqadd_s16(v43, v58);
  v76 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v65, v47, 5), v62, v47, 4), 0xDuLL);
  v77 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v65, v47, 6), v62, v47, 5), 0xDuLL);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(v66, v47, 5), v69, v47, 4);
  v79 = vmlal_laneq_s16(vmull_laneq_s16(v66, v47, 6), v69, v47, 5);
  v80 = vqrshrn_n_s32(v78, 0xDuLL);
  *v79.i8 = vqrshrn_n_s32(v79, 0xDuLL);
  v81 = vmlal_laneq_s16(vmull_laneq_s16(v73, v47, 5), v72, v47, 4);
  v82 = vmlal_laneq_s16(vmull_laneq_s16(v73, v47, 6), v72, v47, 5);
  v83 = vqrshrn_n_s32(v81, 0xDuLL);
  *v82.i8 = vqrshrn_n_s32(v82, 0xDuLL);
  v84 = vmlal_laneq_s16(vmull_laneq_s16(v75, v47, 7), v74, v47, 4);
  v85 = vmlal_laneq_s16(vmull_laneq_s16(v75, v47, 6), v74, v47, 7);
  *v47.i8 = vqrshrn_n_s32(v84, 0xDuLL);
  v86 = vqrshrn_n_s32(v85, 0xDuLL);
  *v85.i8 = vqadd_s16(v59, v76);
  *v84.i8 = vqadd_s16(v60, v77);
  v87 = vqadd_s16(v61, v80);
  v88 = vqsub_s16(*v79.i8, *v49.i8);
  v89 = vqsub_s16(v59, v76);
  v90 = vqsub_s16(v60, v77);
  v91 = vqsub_s16(v61, v80);
  *v79.i8 = vqadd_s16(*v49.i8, *v79.i8);
  *v49.i8 = vqadd_s16(*v48.i8, v83);
  v92 = vqadd_s16(v70, *v82.i8);
  v93 = vqsub_s16(v86, v71);
  v94 = vqadd_s16(*v53.i8, *v47.i8);
  v95 = vqsub_s16(*v48.i8, v83);
  *v48.i8 = vqsub_s16(v70, *v82.i8);
  v96 = vqadd_s16(v71, v86);
  *v47.i8 = vqsub_s16(*v53.i8, *v47.i8);
  v97 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v92, *v46.i8, 1), *v49.i8, *v46.i8, 0), 0xDuLL);
  *v49.i8 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v92, *v46.i8, 2), *v49.i8, *v46.i8, 1), 0xDuLL);
  *v53.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v94, v46, 4), v93, v46, 5), 0xDuLL);
  v98 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v94, v46, 7), v93, v46, 4), 0xDuLL);
  v99 = vmlal_lane_s16(vmull_lane_s16(v95, *v46.i8, 0), *v48.i8, *v46.i8, 1);
  v100 = vmlal_lane_s16(vmull_lane_s16(v95, *v46.i8, 3), *v48.i8, *v46.i8, 0);
  *v48.i8 = vqrshrn_n_s32(v99, 0xDuLL);
  *v100.i8 = vqrshrn_n_s32(v100, 0xDuLL);
  v101 = vmlal_laneq_s16(vmull_laneq_s16(v96, v46, 4), *v47.i8, v46, 5);
  v102 = vmlal_laneq_s16(vmull_laneq_s16(v96, v46, 7), *v47.i8, v46, 4);
  *v46.i8 = vqrshrn_n_s32(v101, 0xDuLL);
  *v47.i8 = vqrshrn_n_s32(v102, 0xDuLL);
  *v102.i8 = vqadd_s16(*v85.i8, v97);
  *v101.i8 = vqadd_s16(*v84.i8, *v49.i8);
  v103 = vqadd_s16(v87, *v53.i8);
  v104 = vqadd_s16(v88, v98);
  v105 = vqadd_s16(v89, *v100.i8);
  v106 = vqadd_s16(v90, *v48.i8);
  v107 = vqadd_s16(v91, *v46.i8);
  v108 = vqsub_s16(*v47.i8, *v79.i8);
  v109 = vqsub_s16(*v85.i8, v97);
  *v84.i8 = vqsub_s16(*v84.i8, *v49.i8);
  *v53.i8 = vqsub_s16(v87, *v53.i8);
  v110 = vqsub_s16(v88, v98);
  *v85.i8 = vqsub_s16(v89, *v100.i8);
  *v49.i8 = vqsub_s16(v90, *v48.i8);
  *v46.i8 = vqsub_s16(v91, *v46.i8);
  *v47.i8 = vqadd_s16(*v79.i8, *v47.i8);
  v111 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v63.i8, 1), *v102.i8, *v63.i8, 0), 0xDuLL);
  *v102.i8 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v63.i8, 2), *v102.i8, *v63.i8, 1), 0xDuLL);
  a2[6] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v108, *v68.i8, 2), v107, *v68.i8, 1), 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v84.i8, v68, 4), v109, v68, 5), 0xDuLL);
  a2[8] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v84.i8, v68, 7), v109, v68, 4), 0xDuLL);
  a2[9] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v108, *v68.i8, 1), v107, *v68.i8, 0), 0xDuLL);
  a2[4] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v106, *v67.i8, 2), v105, *v67.i8, 1), 0xDuLL);
  a2[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v110, v67, 4), *v53.i8, v67, 5), 0xDuLL);
  a2[10] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v110, v67, 7), *v53.i8, v67, 4), 0xDuLL);
  a2[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v106, *v67.i8, 1), v105, *v67.i8, 0), 0xDuLL);
  a2[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v104, *v64.i8, 2), v103, *v64.i8, 1), 0xDuLL);
  a2[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, v64, 4), *v85.i8, v64, 5), 0xDuLL);
  a2[12] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, v64, 7), *v85.i8, v64, 4), 0xDuLL);
  a2[13] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v104, *v64.i8, 1), v103, *v64.i8, 0), 0xDuLL);
  a2[14] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v47.i8, v63, 5), *v46.i8, v63, 4), 0xDuLL);
  a2[15] = v111;
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v47.i8, v63, 6), *v46.i8, v63, 5), 0xDuLL);
  *a2 = *v102.i8;
  a2[1] = result;
  return result;
}

int16x4_t fidentity4x16_col_neon(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v3 = 2 * a3;
  v4 = (a1 + v3 + v3);
  v5 = *v4;
  v6 = (v4 + v3);
  v7 = *v6;
  v8 = (v6 + v3);
  v9 = *v8;
  v10 = (v8 + v3);
  v11 = *v10;
  v12 = (v10 + v3);
  v13 = *v12;
  v14 = (v12 + v3);
  v15 = *v14;
  v16 = (v14 + v3);
  v17 = *v16;
  v18 = (v16 + v3);
  v19 = *v18;
  v20 = (v18 + v3);
  v21 = *v20;
  v22 = (v20 + v3);
  v23 = *v22;
  v24 = (v22 + v3);
  v25 = *v24;
  v26 = (v24 + v3);
  v27 = *v26;
  v28 = (v26 + v3);
  v29 = vshl_n_s16(*(a1 + v3), 2uLL);
  v30 = vshl_n_s16(*v28, 2uLL);
  v31 = vshl_n_s16(*(v28 + v3), 2uLL);
  v32 = vdup_n_s16(0x2D42u);
  *a2 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*a1, 2uLL), v32), 0xCuLL);
  a2[1] = vqrshrn_n_s32(vmull_s16(v29, v32), 0xCuLL);
  a2[2] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v5, 2uLL), v32), 0xCuLL);
  a2[3] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v7, 2uLL), v32), 0xCuLL);
  a2[4] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v9, 2uLL), v32), 0xCuLL);
  a2[5] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v11, 2uLL), v32), 0xCuLL);
  a2[6] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v13, 2uLL), v32), 0xCuLL);
  a2[7] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v15, 2uLL), v32), 0xCuLL);
  a2[8] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v17, 2uLL), v32), 0xCuLL);
  a2[9] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v19, 2uLL), v32), 0xCuLL);
  a2[10] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v21, 2uLL), v32), 0xCuLL);
  a2[11] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v23, 2uLL), v32), 0xCuLL);
  a2[12] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v25, 2uLL), v32), 0xCuLL);
  a2[13] = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v27, 2uLL), v32), 0xCuLL);
  result = vqrshrn_n_s32(vmull_s16(v30, v32), 0xCuLL);
  a2[14] = result;
  a2[15] = vqrshrn_n_s32(vmull_s16(v31, v32), 0xCuLL);
  return result;
}

int32x4_t fdct8x4_row_neon(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = av1_cospi_arr_q13_data[16 * a4 - 160];
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = vqaddq_s16(*a1, v6);
  v9 = vqaddq_s16(v5, v7);
  v10 = vqsubq_s16(v5, v7);
  v11 = vqsubq_s16(*a1, v6);
  v12 = vmlal_lane_s16(vmull_lane_s16(*v9.i8, *v4.i8, 1), *v8.i8, *v4.i8, 0);
  v13 = vmlal_high_lane_s16(vmull_high_lane_s16(v9, *v4.i8, 1), v8, *v4.i8, 0);
  v14 = vmlal_lane_s16(vmull_lane_s16(*v9.i8, *v4.i8, 2), *v8.i8, *v4.i8, 1);
  v15 = vmlal_high_lane_s16(vmull_high_lane_s16(v9, *v4.i8, 2), v8, *v4.i8, 1);
  *v8.i8 = vrshrn_n_s32(v14, 0xDuLL);
  v16 = vmlal_laneq_s16(vmull_laneq_s16(*v10.i8, v4, 5), *v11.i8, v4, 4);
  v17 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v10, v4, 5), v11, v4, 4);
  v18 = vmlal_laneq_s16(vmull_laneq_s16(*v10.i8, v4, 6), *v11.i8, v4, 5);
  v19 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v10, v4, 6), v11, v4, 5);
  *a2 = vmovl_s16(vrshrn_n_s32(v12, 0xDuLL));
  a2[1] = vmovl_s16(vrshrn_n_s32(v13, 0xDuLL));
  v20 = (a2 + 4 * a3);
  *v20 = vmovl_s16(vrshrn_n_s32(v16, 0xDuLL));
  v20[1] = vmovl_s16(vrshrn_n_s32(v17, 0xDuLL));
  v21 = (a2 + 8 * a3);
  *v21 = vmovl_s16(*v8.i8);
  v21[1] = vmovl_s16(vrshrn_n_s32(v15, 0xDuLL));
  result = vmovl_s16(vrshrn_n_s32(v18, 0xDuLL));
  v23 = (a2 + 12 * a3);
  *v23 = result;
  v23[1] = vmovl_s16(vrshrn_n_s32(v19, 0xDuLL));
  return result;
}

int32x4_t fadst8x4_row_neon(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = av1_sinpi_arr_q13_data[a4 - 10];
  v5 = a1[1];
  v6 = vqaddq_s16(*a1, v5);
  v8 = a1[2];
  v7 = a1[3];
  v9 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*a1->i8, v4, 0), *v5.i8, v4, 1), *v7.i8, v4, 3), *v8.i8, v4, 2);
  v10 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*a1, v4, 0), v5, v4, 1), v7, v4, 3), v8, v4, 2);
  v11 = vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*a1->i8, v4, 3), *v8.i8, v4, 2), *v5.i8, v4, 0), *v7.i8, v4, 1);
  v12 = vmlal_high_lane_s16(vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmull_high_lane_s16(*a1, v4, 3), v8, v4, 2), v5, v4, 0), v7, v4, 1);
  v13 = vmlsl_lane_s16(vmull_lane_s16(*v6.i8, v4, 2), *v7.i8, v4, 2);
  v14 = vmlsl_high_lane_s16(vmull_high_lane_s16(v6, v4, 2), v7, v4, 2);
  v15 = vmul_s16(v4, 0x3000300030003);
  v16 = vmlal_high_lane_s16(vsubq_s32(v12, v10), v8, v15, 2);
  *a2 = vmovl_s16(vrshrn_n_s32(v9, 0xDuLL));
  a2[1] = vmovl_s16(vrshrn_n_s32(v10, 0xDuLL));
  v17 = (a2 + 4 * a3);
  *v17 = vmovl_s16(vrshrn_n_s32(v13, 0xDuLL));
  v17[1] = vmovl_s16(vrshrn_n_s32(v14, 0xDuLL));
  v18 = (a2 + 8 * a3);
  *v18 = vmovl_s16(vrshrn_n_s32(v11, 0xDuLL));
  v18[1] = vmovl_s16(vrshrn_n_s32(v12, 0xDuLL));
  result = vmovl_s16(vrshrn_n_s32(vmlal_lane_s16(vsubq_s32(v11, v9), *v8.i8, v15, 2), 0xDuLL));
  v20 = (a2 + 12 * a3);
  *v20 = result;
  v20[1] = vmovl_s16(vrshrn_n_s32(v16, 0xDuLL));
  return result;
}

int32x4_t fidentity8x4_row_neon(int16x8_t *a1, int32x4_t *a2, int a3)
{
  v3 = vdupq_n_s16(0x16A1u);
  v4 = a1[1];
  v5 = vqrshrn_n_s32(vmull_high_s16(*a1, v3), 0xCuLL);
  v6 = a1[2];
  v7 = a1[3];
  v8 = vqrshrn_n_s32(vmull_s16(*v7.i8, *v3.i8), 0xCuLL);
  *a2 = vmovl_s16(vqrshrn_n_s32(vmull_s16(*a1->i8, *v3.i8), 0xCuLL));
  a2[1] = vmovl_s16(v5);
  v9 = (a2 + 4 * a3);
  *v9 = vmovl_s16(vqrshrn_n_s32(vmull_s16(*v4.i8, *v3.i8), 0xCuLL));
  v9[1] = vmovl_s16(vqrshrn_n_s32(vmull_high_s16(v4, v3), 0xCuLL));
  v10 = (a2 + 8 * a3);
  *v10 = vmovl_s16(vqrshrn_n_s32(vmull_s16(*v6.i8, *v3.i8), 0xCuLL));
  v10[1] = vmovl_s16(vqrshrn_n_s32(vmull_high_s16(v6, v3), 0xCuLL));
  v11 = (a2 + 12 * a3);
  result = vmovl_s16(vqrshrn_n_s32(vmull_high_s16(v7, v3), 0xCuLL));
  *v11 = vmovl_s16(v8);
  v11[1] = result;
  return result;
}

int32x4_t fdct4x16_row_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = &av1_cospi_arr_q13_data[16 * a4 - 160];
  v5 = a1[1];
  v7 = a1[14];
  v6 = a1[15];
  v8 = vqadd_s16(*a1, v6);
  v9 = vqadd_s16(v5, v7);
  v10 = a1[2];
  v11 = a1[3];
  v13 = a1[12];
  v12 = a1[13];
  v14 = vqadd_s16(v10, v12);
  v15 = vqadd_s16(v11, v13);
  v16 = a1[4];
  v17 = a1[5];
  v19 = a1[10];
  v18 = a1[11];
  v20 = vqadd_s16(v16, v18);
  v21 = vqadd_s16(v17, v19);
  v22 = a1[6];
  v23 = a1[7];
  v25 = a1[8];
  v24 = a1[9];
  v26 = vqadd_s16(v22, v24);
  v27 = vqadd_s16(v23, v25);
  v28 = vqsub_s16(v23, v25);
  v29 = vqsub_s16(v22, v24);
  v30 = vqsub_s16(v17, v19);
  v31 = vqsub_s16(v16, v18);
  v32 = vqsub_s16(v11, v13);
  v33 = vqsub_s16(v10, v12);
  v34 = vqsub_s16(v5, v7);
  v35 = vqsub_s16(*a1, v6);
  v36 = av1_cospi_arr_q13_data[16 * a4 - 159];
  v37 = vqadd_s16(v8, v27);
  v38 = vqadd_s16(v9, v26);
  v39 = vqadd_s16(v14, v21);
  v40 = vqadd_s16(v15, v20);
  v41 = vqsub_s16(v15, v20);
  v42 = vqsub_s16(v14, v21);
  v43 = vqsub_s16(v9, v26);
  v44 = vqsub_s16(v8, v27);
  v45 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v30, *v4, 1), v33, *v4, 0), 0xDuLL);
  v46 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v30, *v4, 2), v33, *v4, 1), 0xDuLL);
  v47 = av1_cospi_arr_q13_data[16 * a4 - 158];
  v48 = av1_cospi_arr_q13_data[16 * a4 - 157];
  v49 = vmlal_lane_s16(vmull_lane_s16(v31, *v4, 1), v32, *v4, 0);
  v50 = vmlal_lane_s16(vmull_lane_s16(v31, *v4, 2), v32, *v4, 1);
  v51 = vqrshrn_n_s32(v49, 0xDuLL);
  *v50.i8 = vqrshrn_n_s32(v50, 0xDuLL);
  *v49.i8 = vqadd_s16(v37, v40);
  v52 = vqadd_s16(v38, v39);
  v53 = vqsub_s16(v38, v39);
  v54 = vqsub_s16(v37, v40);
  v55 = vmlal_lane_s16(vmull_lane_s16(v42, *v4, 1), v43, *v4, 0);
  v56 = vmlal_lane_s16(vmull_lane_s16(v42, *v4, 2), v43, *v4, 1);
  v57 = vqrshrn_n_s32(v55, 0xDuLL);
  *v56.i8 = vqrshrn_n_s32(v56, 0xDuLL);
  *v55.i8 = vqadd_s16(v28, *v50.i8);
  v58 = vqadd_s16(v29, v46);
  v59 = vqsub_s16(v29, v46);
  *v50.i8 = vqsub_s16(v28, *v50.i8);
  v60 = vqsub_s16(v35, v51);
  v61 = vqsub_s16(v34, v45);
  v62 = vqadd_s16(v34, v45);
  v63 = vqadd_s16(v35, v51);
  v64 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v52, *v4, 1), *v49.i8, *v4, 0), 0xDuLL);
  v65 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v52, *v4, 2), *v49.i8, *v4, 1), 0xDuLL);
  v66 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v53, *v4->i8, 5), v54, *v4->i8, 4), 0xDuLL);
  v67 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v53, *v4->i8, 6), v54, *v4->i8, 5), 0xDuLL);
  v68 = vqadd_s16(v41, *v56.i8);
  *v56.i8 = vqsub_s16(v41, *v56.i8);
  v69 = vqsub_s16(v44, v57);
  v70 = vqadd_s16(v44, v57);
  *v49.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v58, *v4->i8, 5), v62, *v4->i8, 4), 0xDuLL);
  v71 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v58, *v4->i8, 6), v62, *v4->i8, 5), 0xDuLL);
  v72 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v59, *v4->i8, 6), v61, *v4->i8, 5), 0xDuLL);
  v73 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v59, *v4->i8, 7), v61, *v4->i8, 6), 0xDuLL);
  v74 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v68, *v36.i8, 1), v70, *v36.i8, 0), 0xDuLL);
  v75 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v68, *v36.i8, 2), v70, *v36.i8, 1), 0xDuLL);
  v76 = vmlal_laneq_s16(vmull_laneq_s16(*v56.i8, v36, 7), v69, v36, 4);
  *v56.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v56.i8, v36, 4), v69, v36, 5), 0xDuLL);
  v77 = vqrshrn_n_s32(v76, 0xDuLL);
  *v36.i8 = vqadd_s16(*v55.i8, v71);
  v78 = vqsub_s16(*v55.i8, v71);
  *v55.i8 = vqsub_s16(*v50.i8, v73);
  v79 = vqadd_s16(*v50.i8, v73);
  *v76.i8 = vqadd_s16(v60, v72);
  *v50.i8 = vqsub_s16(v60, v72);
  v80 = vqsub_s16(v63, *v49.i8);
  v81 = vqadd_s16(v63, *v49.i8);
  *a2 = vmovl_s16(v64);
  *(a2 + 4 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v47.i8, 1), v81, *v47.i8, 0), 0xDuLL));
  *(a2 + 8 * a3) = vmovl_s16(v74);
  *(a2 + 12 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v79, v47, 7), *v76.i8, v47, 4), 0xDuLL));
  a2[a3] = vmovl_s16(v66);
  *(a2 + 20 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v55.i8, *v48.i8, 1), *v50.i8, *v48.i8, 0), 0xDuLL));
  *(a2 + 24 * a3) = vmovl_s16(v77);
  *(a2 + 28 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v78, v48, 7), v80, v48, 4), 0xDuLL));
  a2[2 * a3] = vmovl_s16(v65);
  *(a2 + 36 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v78, v48, 4), v80, v48, 5), 0xDuLL));
  *(a2 + 40 * a3) = vmovl_s16(*v56.i8);
  *(a2 + 44 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v55.i8, *v48.i8, 2), *v50.i8, *v48.i8, 1), 0xDuLL));
  a2[3 * a3] = vmovl_s16(v67);
  *(a2 + 52 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v79, v47, 4), *v76.i8, v47, 5), 0xDuLL));
  *(a2 + 56 * a3) = vmovl_s16(v75);
  result = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v47.i8, 2), v81, *v47.i8, 1), 0xDuLL));
  *(a2 + 60 * a3) = result;
  return result;
}

int32x4_t fadst4x16_row_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v5 = av1_cospi_arr_q13_data[16 * a4 - 160];
  v4 = av1_cospi_arr_q13_data[16 * a4 - 159];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v6, *v5.i8, 3), v8, *v5.i8, 0), 0xDuLL);
  v11 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v6, *v5.i8, 2), v8, *v5.i8, 3), 0xDuLL);
  v13 = a1[10];
  v12 = a1[11];
  v14 = a1[4];
  v15 = a1[5];
  v16 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v12, *v5.i8, 1), v14, *v5.i8, 0), 0xDuLL);
  v17 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v12, *v5.i8, 2), v14, *v5.i8, 1), 0xDuLL);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v9, *v5.i8, 1), v7, *v5.i8, 0), 0xDuLL);
  v19 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v9, *v5.i8, 2), v7, *v5.i8, 1), 0xDuLL);
  v20 = vmlal_lane_s16(vmull_lane_s16(v15, *v5.i8, 2), v13, *v5.i8, 3);
  v21 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v15, *v5.i8, 3), v13, *v5.i8, 0), 0xDuLL);
  v22 = vqrshrn_n_s32(v20, 0xDuLL);
  v23 = a1[1];
  *v20.i8 = vqadd_s16(*a1, v10);
  v25 = a1[14];
  v24 = a1[15];
  v26 = vqsub_s16(v11, v24);
  v27 = vqsub_s16(*a1, v10);
  v28 = vqadd_s16(v24, v11);
  v30 = a1[2];
  v29 = a1[3];
  v31 = vqsub_s16(v17, v29);
  v32 = a1[12];
  v33 = a1[13];
  v34 = vqadd_s16(v32, v16);
  v35 = vqadd_s16(v29, v17);
  v36 = av1_cospi_arr_q13_data[16 * a4 - 156];
  v37 = av1_cospi_arr_q13_data[16 * a4 - 155];
  v38 = vqsub_s16(v32, v16);
  v39 = vqsub_s16(v19, v23);
  v40 = vqadd_s16(v25, v18);
  v41 = av1_cospi_arr_q13_data[16 * a4 - 154];
  v42 = av1_cospi_arr_q13_data[16 * a4 - 153];
  v43 = vqadd_s16(v23, v19);
  v44 = vqsub_s16(v25, v18);
  v45 = vqadd_s16(v30, v21);
  v46 = vqsub_s16(v22, v33);
  v47 = vqsub_s16(v30, v21);
  v48 = vqadd_s16(v33, v22);
  v49 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v34, v5, 5), v31, v5, 4), 0xDuLL);
  v50 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v34, v5, 6), v31, v5, 5), 0xDuLL);
  v51 = vmlal_laneq_s16(vmull_laneq_s16(v35, v5, 6), v38, v5, 5);
  v52 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, v5, 5), v38, v5, 4), 0xDuLL);
  v53 = vqrshrn_n_s32(v51, 0xDuLL);
  v54 = vmlal_laneq_s16(vmull_laneq_s16(v46, v5, 5), v45, v5, 4);
  v55 = vmlal_laneq_s16(vmull_laneq_s16(v46, v5, 6), v45, v5, 5);
  v56 = vqrshrn_n_s32(v54, 0xDuLL);
  *v55.i8 = vqrshrn_n_s32(v55, 0xDuLL);
  v57 = vmlal_laneq_s16(vmull_laneq_s16(v48, v5, 7), v47, v5, 4);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(v48, v5, 6), v47, v5, 7);
  *v5.i8 = vqrshrn_n_s32(v57, 0xDuLL);
  v59 = vqrshrn_n_s32(v58, 0xDuLL);
  *v58.i8 = vqadd_s16(*v20.i8, v49);
  *v57.i8 = vqadd_s16(v26, v50);
  v60 = vqadd_s16(v27, v52);
  v61 = vqsub_s16(v53, v28);
  *v20.i8 = vqsub_s16(*v20.i8, v49);
  v62 = vqsub_s16(v26, v50);
  v63 = vqsub_s16(v27, v52);
  v64 = vqadd_s16(v28, v53);
  v65 = vqadd_s16(v39, v56);
  v66 = vqadd_s16(v40, *v55.i8);
  v67 = vqsub_s16(v59, v43);
  v68 = vqadd_s16(v44, *v5.i8);
  v69 = vqsub_s16(v39, v56);
  *v55.i8 = vqsub_s16(v40, *v55.i8);
  v70 = vqadd_s16(v43, v59);
  *v5.i8 = vqsub_s16(v44, *v5.i8);
  v71 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v66, *v4.i8, 1), v65, *v4.i8, 0), 0xDuLL);
  v72 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v66, *v4.i8, 2), v65, *v4.i8, 1), 0xDuLL);
  v73 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v68, v4, 4), v67, v4, 5), 0xDuLL);
  v74 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v68, v4, 7), v67, v4, 4), 0xDuLL);
  v75 = vmlal_lane_s16(vmull_lane_s16(v69, *v4.i8, 0), *v55.i8, *v4.i8, 1);
  v76 = vmlal_lane_s16(vmull_lane_s16(v69, *v4.i8, 3), *v55.i8, *v4.i8, 0);
  *v55.i8 = vqrshrn_n_s32(v75, 0xDuLL);
  *v76.i8 = vqrshrn_n_s32(v76, 0xDuLL);
  v77 = vmlal_laneq_s16(vmull_laneq_s16(v70, v4, 4), *v5.i8, v4, 5);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(v70, v4, 7), *v5.i8, v4, 4);
  *v4.i8 = vqrshrn_n_s32(v77, 0xDuLL);
  *v77.i8 = vqrshrn_n_s32(v78, 0xDuLL);
  v79 = vqadd_s16(*v58.i8, v71);
  v80 = vqadd_s16(*v57.i8, v72);
  v81 = vqadd_s16(v60, v73);
  v82 = vqadd_s16(v61, v74);
  v83 = vqadd_s16(*v20.i8, *v76.i8);
  v84 = vqadd_s16(v62, *v55.i8);
  v85 = vqadd_s16(v63, *v4.i8);
  v86 = vqsub_s16(*v77.i8, v64);
  v87 = vqsub_s16(*v58.i8, v71);
  *v57.i8 = vqsub_s16(*v57.i8, v72);
  v88 = vqsub_s16(v60, v73);
  v89 = vqsub_s16(v61, v74);
  *v78.i8 = vqsub_s16(*v20.i8, *v76.i8);
  v90 = vqsub_s16(v62, *v55.i8);
  *v5.i8 = vqsub_s16(v63, *v4.i8);
  *v20.i8 = vqadd_s16(v64, *v77.i8);
  *a2 = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v80, *v36.i8, 2), v79, *v36.i8, 1), 0xDuLL));
  *(a2 + 4 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v20.i8, v36, 6), *v5.i8, v36, 5), 0xDuLL));
  *(a2 + 8 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v82, *v37.i8, 2), v81, *v37.i8, 1), 0xDuLL));
  *(a2 + 12 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v90, v37, 4), *v78.i8, v37, 5), 0xDuLL));
  a2[a3] = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v84, *v41.i8, 2), v83, *v41.i8, 1), 0xDuLL));
  *(a2 + 20 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v89, v41, 4), v88, v41, 5), 0xDuLL));
  *(a2 + 24 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v86, *v42.i8, 2), v85, *v42.i8, 1), 0xDuLL));
  *(a2 + 28 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v57.i8, v42, 4), v87, v42, 5), 0xDuLL));
  a2[2 * a3] = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v57.i8, v42, 7), v87, v42, 4), 0xDuLL));
  *(a2 + 36 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v86, *v42.i8, 1), v85, *v42.i8, 0), 0xDuLL));
  *(a2 + 40 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v89, v41, 7), v88, v41, 4), 0xDuLL));
  *(a2 + 44 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v84, *v41.i8, 1), v83, *v41.i8, 0), 0xDuLL));
  a2[3 * a3] = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v90, v37, 7), *v78.i8, v37, 4), 0xDuLL));
  *(a2 + 52 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v82, *v37.i8, 1), v81, *v37.i8, 0), 0xDuLL));
  *(a2 + 56 * a3) = vmovl_s16(vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v20.i8, v36, 5), *v5.i8, v36, 4), 0xDuLL));
  result = vmovl_s16(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v80, *v36.i8, 1), v79, *v36.i8, 0), 0xDuLL));
  *(a2 + 60 * a3) = result;
  return result;
}

int32x4_t fidentity4x16_row_neon(int16x4_t *a1, int32x4_t *a2, int a3)
{
  v3 = vdup_n_s16(0x2D42u);
  v4 = vqrshrn_n_s32(vmull_s16(a1[1], v3), 0xCuLL);
  v5 = vqrshrn_n_s32(vmull_s16(a1[2], v3), 0xCuLL);
  v6 = vqrshrn_n_s32(vmull_s16(a1[3], v3), 0xCuLL);
  v7 = vqrshrn_n_s32(vmull_s16(a1[4], v3), 0xCuLL);
  v8 = vqrshrn_n_s32(vmull_s16(a1[5], v3), 0xCuLL);
  v9 = vqrshrn_n_s32(vmull_s16(a1[6], v3), 0xCuLL);
  v10 = vqrshrn_n_s32(vmull_s16(a1[7], v3), 0xCuLL);
  v11 = vqrshrn_n_s32(vmull_s16(a1[8], v3), 0xCuLL);
  v12 = vqrshrn_n_s32(vmull_s16(a1[9], v3), 0xCuLL);
  v13 = vqrshrn_n_s32(vmull_s16(a1[10], v3), 0xCuLL);
  v14 = vqrshrn_n_s32(vmull_s16(a1[11], v3), 0xCuLL);
  v15 = a1[13];
  v16 = vmull_s16(a1[12], v3);
  v17 = a1[14];
  v18 = a1[15];
  *a2 = vmovl_s16(vqrshrn_n_s32(vmull_s16(*a1, v3), 0xCuLL));
  *(a2 + 4 * a3) = vmovl_s16(v4);
  *(a2 + 8 * a3) = vmovl_s16(v5);
  *(a2 + 12 * a3) = vmovl_s16(v6);
  a2[a3] = vmovl_s16(v7);
  *(a2 + 20 * a3) = vmovl_s16(v8);
  *(a2 + 24 * a3) = vmovl_s16(v9);
  *(a2 + 28 * a3) = vmovl_s16(v10);
  a2[2 * a3] = vmovl_s16(v11);
  *(a2 + 36 * a3) = vmovl_s16(v12);
  *(a2 + 40 * a3) = vmovl_s16(v13);
  *(a2 + 44 * a3) = vmovl_s16(v14);
  a2[3 * a3] = vmovl_s16(vqrshrn_n_s32(v16, 0xCuLL));
  *(a2 + 52 * a3) = vmovl_s16(vqrshrn_n_s32(vmull_s16(v15, v3), 0xCuLL));
  *(a2 + 56 * a3) = vmovl_s16(vqrshrn_n_s32(vmull_s16(v17, v3), 0xCuLL));
  result = vmovl_s16(vqrshrn_n_s32(vmull_s16(v18, v3), 0xCuLL));
  *(a2 + 60 * a3) = result;
  return result;
}

int *av1_idct4(int *result, int *a2, int a3, uint64_t a4)
{
  v4 = *result;
  *a2 = *result;
  v5 = result[2];
  a2[1] = v5;
  v6 = result[1];
  a2[2] = v6;
  v7 = result[3];
  a2[3] = v7;
  v8 = av1_cospi_arr_data[64 * a3 - 608];
  v9 = 1 << (a3 - 1);
  v10 = v9 + v8 * v4;
  v11 = (v10 + v8 * v5) >> a3;
  v12 = (v10 + -(v8 * v5)) >> a3;
  v13 = av1_cospi_arr_data[64 * a3 - 592];
  v14 = av1_cospi_arr_data[64 * a3 - 624];
  v15 = (v9 + v13 * v6 + -(v7 * v14)) >> a3;
  v16 = (v9 + v13 * v7 + v14 * v6) >> a3;
  v17 = v16 + v11;
  v18 = *(a4 + 3);
  v19 = 1 << (v18 - 1);
  v20 = v19 - 1;
  v21 = -v19;
  if (v16 + v11 < v20)
  {
    LODWORD(v20) = v16 + v11;
  }

  if (v17 >= v21)
  {
    LODWORD(v21) = v20;
  }

  if (v18 >= 1)
  {
    v17 = v21;
  }

  *a2 = v17;
  v22 = v15 + v12;
  v23 = *(a4 + 3);
  v24 = 1 << (v23 - 1);
  v25 = v24 - 1;
  v26 = -v24;
  if (v15 + v12 < v25)
  {
    LODWORD(v25) = v15 + v12;
  }

  if (v22 >= v26)
  {
    LODWORD(v26) = v25;
  }

  if (v23 >= 1)
  {
    v22 = v26;
  }

  a2[1] = v22;
  v27 = v12 - v15;
  v28 = *(a4 + 3);
  v29 = 1 << (v28 - 1);
  v30 = v29 - 1;
  v31 = -v29;
  if (v27 < v30)
  {
    LODWORD(v30) = v27;
  }

  if (v27 >= v31)
  {
    LODWORD(v31) = v30;
  }

  if (v28 >= 1)
  {
    v27 = v31;
  }

  a2[2] = v27;
  v32 = v11 - v16;
  v33 = *(a4 + 3);
  v34 = 1 << (v33 - 1);
  v35 = v34 - 1;
  v36 = -v34;
  if (v32 < v35)
  {
    LODWORD(v35) = v32;
  }

  if (v32 >= v36)
  {
    LODWORD(v36) = v35;
  }

  if (v33 >= 1)
  {
    v32 = v36;
  }

  a2[3] = v32;
  return result;
}

uint64_t av1_idct8(int *a1, int *a2, int a3, char *a4)
{
  v4 = *a1;
  *a2 = *a1;
  v5 = a1[4];
  a2[1] = v5;
  v6 = a1[2];
  a2[2] = v6;
  v7 = a1[6];
  a2[3] = v7;
  v8 = a1[1];
  a2[4] = v8;
  v9 = a1[5];
  a2[5] = v9;
  v10 = a1[3];
  a2[6] = v10;
  v11 = a1[7];
  a2[7] = v11;
  v12 = av1_cospi_arr_data[64 * a3 - 584];
  v13 = av1_cospi_arr_data[64 * a3 - 632];
  v14 = 1 << (a3 - 1);
  v15 = (v14 + v12 * v8 + -(v11 * v13)) >> a3;
  v16 = av1_cospi_arr_data[64 * a3 - 616];
  v17 = av1_cospi_arr_data[64 * a3 - 600];
  v18 = (v14 + v16 * v9 + -(v10 * v17)) >> a3;
  v19 = (v14 + v16 * v10 + v17 * v9) >> a3;
  v20 = (v14 + v12 * v11 + v13 * v8) >> a3;
  v21 = av1_cospi_arr_data[64 * a3 - 608];
  v22 = v14 + v21 * v4;
  v23 = (v22 + v21 * v5) >> a3;
  v24 = (v22 + -(v21 * v5)) >> a3;
  *a2 = v23;
  a2[1] = v24;
  v25 = av1_cospi_arr_data[64 * a3 - 592];
  LODWORD(v22) = av1_cospi_arr_data[64 * a3 - 624];
  v26 = (v14 + v25 * v6 + -(v7 * v22)) >> a3;
  v27 = (v14 + v25 * v7 + v22 * v6) >> a3;
  a2[2] = v26;
  a2[3] = v27;
  v28 = v18 + v15;
  v29 = a4[3];
  if (v29 >= 1)
  {
    v30 = 1 << (v29 - 1);
    v31 = v30 - 1;
    v32 = -v30;
    if (v28 < v31)
    {
      LODWORD(v31) = v18 + v15;
    }

    if (v28 >= v32)
    {
      v28 = v31;
    }

    else
    {
      v28 = v32;
    }
  }

  a2[4] = v28;
  result = (v15 - v18);
  v34 = a4[3];
  if (v34 >= 1)
  {
    v35 = 1 << (v34 - 1);
    v36 = v35 - 1;
    v37 = -v35;
    if (result < v36)
    {
      LODWORD(v36) = result;
    }

    if (result >= v37)
    {
      result = v36;
    }

    else
    {
      result = v37;
    }
  }

  a2[5] = result;
  v38 = a4[3];
  v39 = 1 << (v38 - 1);
  v40 = v39 - 1;
  v41 = -v39;
  if (v20 - v19 < v40)
  {
    LODWORD(v40) = v20 - v19;
  }

  if (v20 - v19 >= v41)
  {
    LODWORD(v41) = v40;
  }

  if (v38 >= 1)
  {
    v42 = v41;
  }

  else
  {
    v42 = v20 - v19;
  }

  a2[6] = v42;
  v43 = v19 + v20;
  v44 = a4[3];
  if (v44 >= 1)
  {
    v45 = 1 << (v44 - 1);
    v46 = v45 - 1;
    v47 = -v45;
    if (v43 < v46)
    {
      LODWORD(v46) = v43;
    }

    if (v43 >= v47)
    {
      v43 = v46;
    }

    else
    {
      v43 = v47;
    }
  }

  a2[7] = v43;
  v48 = v27 + v23;
  v49 = a4[4];
  if (v49 <= 0)
  {
    v56 = v26 + v24;
    v59 = v24 - v26;
    v61 = v23 - v27;
  }

  else
  {
    v50 = 1 << (v49 - 1);
    v51 = v50 - 1;
    v52 = -v50;
    if (v48 >= v50 - 1)
    {
      v53 = v50 - 1;
    }

    else
    {
      v53 = v27 + v23;
    }

    if (v48 >= v52)
    {
      v48 = v53;
    }

    else
    {
      v48 = v52;
    }

    v54 = v26 + v24;
    if (v54 >= v51)
    {
      v55 = v51;
    }

    else
    {
      v55 = v26 + v24;
    }

    if (v54 >= v52)
    {
      v56 = v55;
    }

    else
    {
      v56 = v52;
    }

    v57 = v24 - v26;
    if (v57 >= v51)
    {
      v58 = v51;
    }

    else
    {
      v58 = v57;
    }

    if (v57 >= v52)
    {
      v59 = v58;
    }

    else
    {
      v59 = v52;
    }

    v60 = v23 - v27;
    if (v60 >= v51)
    {
      v61 = v51;
    }

    else
    {
      v61 = v60;
    }

    if (v60 < v52)
    {
      v61 = v52;
    }
  }

  v62 = v14 + v42 * v21;
  v63 = (v62 + result * -v21) >> a3;
  v64 = (v62 + result * v21) >> a3;
  v65 = v48 + v43;
  v66 = a4[5];
  if (v66 >= 1)
  {
    v67 = 1 << (v66 - 1);
    result = v67 - 1;
    v68 = -v67;
    if (v65 < result)
    {
      result = v65;
    }

    if (v65 >= v68)
    {
      v65 = result;
    }

    else
    {
      v65 = v68;
    }
  }

  *a2 = v65;
  v69 = v56 + v64;
  v70 = a4[5];
  if (v70 >= 1)
  {
    v71 = 1 << (v70 - 1);
    result = v71 - 1;
    v72 = -v71;
    if (v69 < result)
    {
      result = v69;
    }

    if (v69 >= v72)
    {
      v69 = result;
    }

    else
    {
      v69 = v72;
    }
  }

  a2[1] = v69;
  v73 = v59 + v63;
  v74 = a4[5];
  if (v74 >= 1)
  {
    v75 = 1 << (v74 - 1);
    result = v75 - 1;
    v76 = -v75;
    if (v73 < result)
    {
      result = v73;
    }

    if (v73 >= v76)
    {
      v73 = result;
    }

    else
    {
      v73 = v76;
    }
  }

  a2[2] = v73;
  v77 = v61 + v28;
  v78 = a4[5];
  if (v78 >= 1)
  {
    v79 = 1 << (v78 - 1);
    result = v79 - 1;
    v80 = -v79;
    if (v77 < result)
    {
      result = v77;
    }

    if (v77 >= v80)
    {
      v77 = result;
    }

    else
    {
      v77 = v80;
    }
  }

  a2[3] = v77;
  v81 = v61 - v28;
  v82 = a4[5];
  if (v82 >= 1)
  {
    v83 = 1 << (v82 - 1);
    v84 = v83 - 1;
    v85 = -v83;
    if (v81 < v84)
    {
      LODWORD(v84) = v81;
    }

    if (v81 >= v85)
    {
      v81 = v84;
    }

    else
    {
      v81 = v85;
    }
  }

  a2[4] = v81;
  v86 = v59 - v63;
  v87 = a4[5];
  if (v87 >= 1)
  {
    v88 = 1 << (v87 - 1);
    v89 = v88 - 1;
    v90 = -v88;
    if (v86 < v89)
    {
      LODWORD(v89) = v86;
    }

    if (v86 >= v90)
    {
      v86 = v89;
    }

    else
    {
      v86 = v90;
    }
  }

  a2[5] = v86;
  v91 = v56 - v64;
  v92 = a4[5];
  if (v92 >= 1)
  {
    v93 = 1 << (v92 - 1);
    v94 = v93 - 1;
    v95 = -v93;
    if (v91 < v94)
    {
      LODWORD(v94) = v91;
    }

    if (v91 >= v95)
    {
      v91 = v94;
    }

    else
    {
      v91 = v95;
    }
  }

  a2[6] = v91;
  v96 = v48 - v43;
  v97 = a4[5];
  if (v97 >= 1)
  {
    v98 = 1 << (v97 - 1);
    v99 = v98 - 1;
    v100 = -v98;
    if (v96 < v99)
    {
      LODWORD(v99) = v96;
    }

    if (v96 >= v100)
    {
      v96 = v99;
    }

    else
    {
      v96 = v100;
    }
  }

  a2[7] = v96;
  return result;
}

uint64_t av1_idct16(int *a1, int *a2, int a3, char *a4)
{
  v4 = &av1_cospi_arr_data[64 * a3 - 640];
  v5 = *a1;
  *a2 = *a1;
  v6 = a1[8];
  a2[1] = v6;
  v7 = a1[4];
  a2[2] = v7;
  v8 = a1[12];
  a2[3] = v8;
  v9 = a1[2];
  a2[4] = v9;
  v10 = a1[10];
  a2[5] = v10;
  v11 = a1[6];
  a2[6] = v11;
  v12 = a1[14];
  a2[7] = v12;
  v13 = a1[1];
  a2[8] = v13;
  v14 = a1[9];
  a2[9] = v14;
  v15 = a1[5];
  a2[10] = v15;
  v16 = a1[13];
  a2[11] = v16;
  v17 = a1[3];
  a2[12] = v17;
  v18 = a1[11];
  a2[13] = v18;
  v19 = a1[7];
  a2[14] = v19;
  v20 = a1[15];
  a2[15] = v20;
  v314 = v14;
  v315 = v13;
  v323 = av1_cospi_arr_data[64 * a3 - 580];
  v21 = v323 * v13;
  v22 = 1 << (a3 - 1);
  v311 = v22 + v21 + -(v20 * av1_cospi_arr_data[64 * a3 - 636]);
  v23 = av1_cospi_arr_data[64 * a3 - 612];
  v312 = av1_cospi_arr_data[64 * a3 - 604];
  v313 = av1_cospi_arr_data[64 * a3 - 636];
  v24 = v22 + v23 * v14 + -(v19 * v312);
  v25 = av1_cospi_arr_data[64 * a3 - 596];
  v26 = av1_cospi_arr_data[64 * a3 - 620];
  v27 = v22 + v25 * v15 + -(v18 * v26);
  v28 = av1_cospi_arr_data[64 * a3 - 628];
  v29 = av1_cospi_arr_data[64 * a3 - 588];
  v30 = v22 + v28 * v16 + -(v17 * v29);
  v31 = v29 * v16;
  v32 = v28 * v17;
  v33 = v26 * v15;
  v34 = v25 * v18;
  v316 = v5;
  v317 = v6;
  *a2 = v5;
  a2[1] = v6;
  v321 = v7;
  a2[2] = v7;
  a2[3] = v8;
  v318 = v8;
  v35 = av1_cospi_arr_data[64 * a3 - 584];
  v36 = av1_cospi_arr_data[64 * a3 - 632];
  v319 = (v22 + v35 * v9 + -(v12 * v36)) >> a3;
  a2[4] = v319;
  v37 = av1_cospi_arr_data[64 * a3 - 616];
  v38 = av1_cospi_arr_data[64 * a3 - 600];
  v39 = v22 + v37 * v10 + -(v11 * v38);
  v40 = v22 + v37 * v11 + v38 * v10;
  v41 = v36 * v9;
  v42 = v311 >> a3;
  v43 = v24 >> a3;
  v44 = v27 >> a3;
  v45 = v30 >> a3;
  v46 = v22 + v32;
  v47 = v39 >> a3;
  v48 = v40 >> a3;
  a2[5] = v39 >> a3;
  a2[6] = v40 >> a3;
  v49 = (v22 + v35 * v12 + v41) >> a3;
  a2[7] = v49;
  v50 = v43 + (v311 >> a3);
  v51 = a4[3];
  if (v51 >= 1)
  {
    v52 = 1 << (v51 - 1);
    v53 = v52 - 1;
    v54 = -v52;
    if (v50 < v53)
    {
      LODWORD(v53) = v43 + (v311 >> a3);
    }

    if (v50 >= v54)
    {
      v50 = v53;
    }

    else
    {
      v50 = v54;
    }
  }

  v55 = v23 * v19;
  v56 = v323 * v20;
  v324 = v50;
  a2[8] = v50;
  v57 = v42 - v43;
  v58 = a4[3];
  if (v58 >= 1)
  {
    v59 = 1 << (v58 - 1);
    v60 = v59 - 1;
    v61 = -v59;
    if (v57 < v60)
    {
      LODWORD(v60) = v42 - v43;
    }

    if (v57 >= v61)
    {
      v57 = v60;
    }

    else
    {
      v57 = v61;
    }
  }

  v62 = v22 + v55;
  v63 = v22 + v56;
  v64 = (v46 + v31) >> a3;
  v65 = (v22 + v34 + v33) >> a3;
  a2[9] = v57;
  v66 = v45 - v44;
  v67 = a4[3];
  if (v67 >= 1)
  {
    v68 = 1 << (v67 - 1);
    v69 = v68 - 1;
    v70 = -v68;
    if (v66 < v69)
    {
      LODWORD(v69) = v45 - v44;
    }

    if (v66 >= v70)
    {
      v66 = v69;
    }

    else
    {
      v66 = v70;
    }
  }

  v71 = v62 + v312 * v314;
  a2[10] = v66;
  v72 = v45 + v44;
  v73 = a4[3];
  if (v73 >= 1)
  {
    v74 = 1 << (v73 - 1);
    v75 = v74 - 1;
    v76 = -v74;
    if (v72 < v75)
    {
      LODWORD(v75) = v72;
    }

    if (v72 >= v76)
    {
      v72 = v75;
    }

    else
    {
      v72 = v76;
    }
  }

  v77 = v319;
  v78 = v71 >> a3;
  v79 = (v63 + v313 * v315) >> a3;
  a2[11] = v72;
  v80 = v64 + v65;
  v81 = a4[3];
  if (v81 >= 1)
  {
    v82 = 1 << (v81 - 1);
    v83 = v82 - 1;
    v84 = -v82;
    if (v80 < v83)
    {
      LODWORD(v83) = v64 + v65;
    }

    if (v80 >= v84)
    {
      v80 = v83;
    }

    else
    {
      v80 = v84;
    }
  }

  a2[12] = v80;
  v85 = v64 - v65;
  v86 = a4[3];
  if (v86 >= 1)
  {
    v87 = 1 << (v86 - 1);
    v88 = v87 - 1;
    v89 = -v87;
    if (v85 < v88)
    {
      LODWORD(v88) = v85;
    }

    if (v85 >= v89)
    {
      v85 = v88;
    }

    else
    {
      v85 = v89;
    }
  }

  v90 = a3;
  a2[13] = v85;
  v91 = v79 - v78;
  v92 = a4[3];
  if (v92 >= 1)
  {
    v93 = 1 << (v92 - 1);
    v94 = v93 - 1;
    v95 = -v93;
    if (v91 < v94)
    {
      LODWORD(v94) = v79 - v78;
    }

    if (v91 >= v95)
    {
      v91 = v94;
    }

    else
    {
      v91 = v95;
    }
  }

  a2[14] = v91;
  v96 = v78 + v79;
  v97 = a4[3];
  if (v97 >= 1)
  {
    v98 = 1 << (v97 - 1);
    v99 = v98 - 1;
    v100 = -v98;
    if (v96 < v99)
    {
      LODWORD(v99) = v96;
    }

    if (v96 >= v100)
    {
      v96 = v99;
    }

    else
    {
      v96 = v100;
    }
  }

  v320 = v80;
  a2[15] = v96;
  v101 = v4[32];
  v102 = v22 + v101 * v316;
  v103 = (v102 + v101 * v317) >> v90;
  v104 = (v102 + -(v101 * v317)) >> v90;
  v105 = v4[48];
  v106 = v4[16];
  v107 = (v22 + v105 * v321 + -(v106 * v318)) >> v90;
  v108 = (v22 + v105 * v318 + v106 * v321) >> v90;
  v109 = v47 + v77;
  v110 = a4[4];
  if (v110 <= 0)
  {
    v117 = v77 - v47;
    v120 = v49 - v48;
    v122 = v48 + v49;
  }

  else
  {
    v111 = 1 << (v110 - 1);
    v112 = v111 - 1;
    v113 = -v111;
    if (v109 >= v112)
    {
      v114 = v112;
    }

    else
    {
      v114 = v47 + v77;
    }

    if (v109 >= v113)
    {
      v109 = v114;
    }

    else
    {
      v109 = v113;
    }

    v115 = v77 - v47;
    if (v115 >= v112)
    {
      v116 = v112;
    }

    else
    {
      v116 = v77 - v47;
    }

    if (v115 >= v113)
    {
      v117 = v116;
    }

    else
    {
      v117 = v113;
    }

    v118 = v49 - v48;
    if (v118 >= v112)
    {
      v119 = v112;
    }

    else
    {
      v119 = v49 - v48;
    }

    if (v118 >= v113)
    {
      v120 = v119;
    }

    else
    {
      v120 = v113;
    }

    v121 = v48 + v49;
    if (v121 < v112)
    {
      LODWORD(v112) = v48 + v49;
    }

    if (v121 >= v113)
    {
      v122 = v112;
    }

    else
    {
      v122 = v113;
    }
  }

  v123 = -v106;
  v124 = v108 + v103;
  v125 = a4[5];
  if (v125 >= 1)
  {
    v126 = 1 << (v125 - 1);
    v127 = v126 - 1;
    v128 = -v126;
    if (v124 < v127)
    {
      LODWORD(v127) = v108 + v103;
    }

    if (v124 >= v128)
    {
      v124 = v127;
    }

    else
    {
      v124 = v128;
    }
  }

  v322 = v109;
  *a2 = v124;
  v129 = v107 + v104;
  v130 = a4[5];
  if (v130 >= 1)
  {
    v131 = 1 << (v130 - 1);
    v132 = v131 - 1;
    v133 = -v131;
    if (v129 < v132)
    {
      LODWORD(v132) = v107 + v104;
    }

    if (v129 >= v133)
    {
      v129 = v132;
    }

    else
    {
      v129 = v133;
    }
  }

  a2[1] = v129;
  v134 = v104 - v107;
  v135 = a4[5];
  if (v135 >= 1)
  {
    v136 = 1 << (v135 - 1);
    v137 = v136 - 1;
    v138 = -v136;
    if (v134 < v137)
    {
      LODWORD(v137) = v104 - v107;
    }

    if (v134 >= v138)
    {
      v134 = v137;
    }

    else
    {
      v134 = v138;
    }
  }

  v139 = (v22 + v105 * v91 + v57 * v123) >> v90;
  v140 = (v22 + -(v66 * v105) + v85 * v123) >> v90;
  v141 = -v101;
  a2[2] = v134;
  v142 = v103 - v108;
  v143 = a4[5];
  if (v143 >= 1)
  {
    v144 = 1 << (v143 - 1);
    v145 = v144 - 1;
    v146 = -v144;
    if (v142 < v145)
    {
      LODWORD(v145) = v103 - v108;
    }

    if (v142 >= v146)
    {
      v142 = v145;
    }

    else
    {
      v142 = v146;
    }
  }

  v147 = v105 * v85;
  v148 = v105 * v57;
  a2[3] = v142;
  a2[4] = v322;
  v149 = v22 + v120 * v101;
  v150 = (v149 + v117 * v141) >> v90;
  v151 = (v149 + v117 * v101) >> v90;
  a2[5] = v150;
  a2[6] = v151;
  a2[7] = v122;
  v152 = v72 + v324;
  v153 = a4[5];
  if (v153 >= 1)
  {
    v154 = 1 << (v153 - 1);
    v155 = v154 - 1;
    v156 = -v154;
    if (v152 < v155)
    {
      LODWORD(v155) = v72 + v324;
    }

    if (v152 >= v156)
    {
      v152 = v155;
    }

    else
    {
      v152 = v156;
    }
  }

  v157 = v66 * v123;
  v158 = v106 * v91;
  a2[8] = v152;
  v159 = v139 + v140;
  v160 = a4[5];
  if (v160 >= 1)
  {
    v161 = 1 << (v160 - 1);
    v162 = v161 - 1;
    v163 = -v161;
    if (v159 < v162)
    {
      LODWORD(v162) = v139 + v140;
    }

    if (v159 >= v163)
    {
      v159 = v162;
    }

    else
    {
      v159 = v163;
    }
  }

  v164 = v22 + v147 + v157;
  v165 = v22 + v148 + v158;
  a2[9] = v159;
  v166 = v139 - v140;
  v167 = a4[5];
  if (v167 >= 1)
  {
    v168 = 1 << (v167 - 1);
    v169 = v168 - 1;
    v170 = -v168;
    if (v166 < v169)
    {
      LODWORD(v169) = v139 - v140;
    }

    if (v166 >= v170)
    {
      v166 = v169;
    }

    else
    {
      v166 = v170;
    }
  }

  v171 = v164 >> v90;
  v172 = v165 >> v90;
  a2[10] = v166;
  v173 = v324 - v72;
  v174 = a4[5];
  if (v174 >= 1)
  {
    v175 = 1 << (v174 - 1);
    v176 = v175 - 1;
    v177 = -v175;
    if (v173 < v176)
    {
      LODWORD(v176) = v324 - v72;
    }

    if (v173 >= v177)
    {
      v173 = v176;
    }

    else
    {
      v173 = v177;
    }
  }

  a2[11] = v173;
  v178 = v96 - v320;
  v179 = a4[5];
  if (v179 >= 1)
  {
    v180 = 1 << (v179 - 1);
    v181 = v180 - 1;
    v182 = -v180;
    if (v178 < v181)
    {
      LODWORD(v181) = v96 - v320;
    }

    if (v178 >= v182)
    {
      v178 = v181;
    }

    else
    {
      v178 = v182;
    }
  }

  a2[12] = v178;
  v183 = v172 - v171;
  v184 = a4[5];
  if (v184 >= 1)
  {
    v185 = 1 << (v184 - 1);
    v186 = v185 - 1;
    v187 = -v185;
    if (v183 < v186)
    {
      LODWORD(v186) = v172 - v171;
    }

    if (v183 >= v187)
    {
      v183 = v186;
    }

    else
    {
      v183 = v187;
    }
  }

  a2[13] = v183;
  v188 = v171 + v172;
  v189 = a4[5];
  if (v189 >= 1)
  {
    v190 = 1 << (v189 - 1);
    v191 = v190 - 1;
    v192 = -v190;
    if (v188 < v191)
    {
      LODWORD(v191) = v171 + v172;
    }

    if (v188 >= v192)
    {
      v188 = v191;
    }

    else
    {
      v188 = v192;
    }
  }

  a2[14] = v188;
  v193 = v96 + v320;
  v194 = a4[5];
  if (v194 >= 1)
  {
    v195 = 1 << (v194 - 1);
    v196 = v195 - 1;
    v197 = -v195;
    if (v193 < v196)
    {
      LODWORD(v196) = v193;
    }

    if (v193 >= v197)
    {
      v193 = v196;
    }

    else
    {
      v193 = v197;
    }
  }

  a2[15] = v193;
  v198 = v124 + v122;
  v199 = a4[6];
  if (v199 <= 0)
  {
    v207 = v129 + v151;
    v209 = v134 + v150;
    v211 = v142 + v322;
    v214 = v142 - v322;
    v216 = v134 - v150;
    v218 = v129 - v151;
    v221 = v124 - v122;
  }

  else
  {
    v200 = 1 << (v199 - 1);
    v201 = v200 - 1;
    v202 = v122;
    v203 = -v200;
    if (v198 >= v200 - 1)
    {
      v204 = v200 - 1;
    }

    else
    {
      v204 = v198;
    }

    if (v198 >= v203)
    {
      v198 = v204;
    }

    else
    {
      v198 = v203;
    }

    v205 = v129 + v151;
    if (v205 >= v201)
    {
      v206 = v201;
    }

    else
    {
      v206 = v129 + v151;
    }

    if (v205 >= v203)
    {
      v207 = v206;
    }

    else
    {
      v207 = v203;
    }

    v208 = v134 + v150;
    if (v208 >= v201)
    {
      v209 = v201;
    }

    else
    {
      v209 = v134 + v150;
    }

    if (v208 < v203)
    {
      v209 = v203;
    }

    v210 = v142 + v322;
    if (v210 >= v201)
    {
      v211 = v201;
    }

    else
    {
      v211 = v142 + v322;
    }

    if (v210 < v203)
    {
      v211 = v203;
    }

    v212 = v142 - v322;
    if (v212 >= v201)
    {
      v213 = v201;
    }

    else
    {
      v213 = v142 - v322;
    }

    if (v212 >= v203)
    {
      v214 = v213;
    }

    else
    {
      v214 = v203;
    }

    v215 = v134 - v150;
    if (v215 >= v201)
    {
      v216 = v201;
    }

    else
    {
      v216 = v134 - v150;
    }

    if (v215 < v203)
    {
      v216 = v203;
    }

    v217 = v129 - v151;
    if (v217 >= v201)
    {
      v218 = v201;
    }

    else
    {
      v218 = v129 - v151;
    }

    if (v217 < v203)
    {
      v218 = v203;
    }

    v219 = v124 - v202;
    if (v219 >= v201)
    {
      v220 = v201;
    }

    else
    {
      v220 = v124 - v202;
    }

    if (v219 >= v203)
    {
      v221 = v220;
    }

    else
    {
      v221 = v203;
    }
  }

  v222 = v22 + v183 * v101;
  v223 = v173 * v141;
  v224 = v22 + v178 * v101;
  v225 = v224 + v173 * v101;
  v226 = (v222 + v166 * v101) >> v90;
  v227 = v198 + v193;
  v228 = a4[7];
  if (v228 >= 1)
  {
    v229 = 1 << (v228 - 1);
    v230 = v229 - 1;
    v231 = -v229;
    if (v227 < v230)
    {
      LODWORD(v230) = v198 + v193;
    }

    if (v227 >= v231)
    {
      v227 = v230;
    }

    else
    {
      v227 = v231;
    }
  }

  v232 = v166 * v141;
  v233 = v224 + v223;
  v234 = v225 >> v90;
  *a2 = v227;
  v235 = v207 + v188;
  v236 = a4[7];
  if (v236 >= 1)
  {
    v237 = 1 << (v236 - 1);
    v238 = v237 - 1;
    v239 = -v237;
    if (v235 < v238)
    {
      LODWORD(v238) = v207 + v188;
    }

    if (v235 >= v239)
    {
      v235 = v238;
    }

    else
    {
      v235 = v239;
    }
  }

  v240 = v222 + v232;
  v241 = v233 >> v90;
  a2[1] = v235;
  v242 = v209 + v226;
  v243 = a4[7];
  if (v243 >= 1)
  {
    v244 = 1 << (v243 - 1);
    v245 = v244 - 1;
    v246 = -v244;
    if (v242 < v245)
    {
      LODWORD(v245) = v209 + v226;
    }

    if (v242 >= v246)
    {
      v242 = v245;
    }

    else
    {
      v242 = v246;
    }
  }

  v247 = v240 >> v90;
  a2[2] = v242;
  v248 = v211 + v234;
  v249 = a4[7];
  if (v249 >= 1)
  {
    v250 = 1 << (v249 - 1);
    v251 = v250 - 1;
    v252 = -v250;
    if (v248 < v251)
    {
      LODWORD(v251) = v211 + v234;
    }

    if (v248 >= v252)
    {
      v248 = v251;
    }

    else
    {
      v248 = v252;
    }
  }

  a2[3] = v248;
  v253 = v214 + v241;
  v254 = a4[7];
  if (v254 >= 1)
  {
    v255 = 1 << (v254 - 1);
    v256 = v255 - 1;
    v257 = -v255;
    if (v253 < v256)
    {
      LODWORD(v256) = v214 + v241;
    }

    if (v253 >= v257)
    {
      v253 = v256;
    }

    else
    {
      v253 = v257;
    }
  }

  a2[4] = v253;
  v258 = v216 + v247;
  v259 = a4[7];
  if (v259 >= 1)
  {
    v260 = 1 << (v259 - 1);
    v261 = v260 - 1;
    v262 = -v260;
    if (v258 < v261)
    {
      LODWORD(v261) = v216 + v247;
    }

    if (v258 >= v262)
    {
      v258 = v261;
    }

    else
    {
      v258 = v262;
    }
  }

  a2[5] = v258;
  v263 = v218 + v159;
  v264 = a4[7];
  if (v264 >= 1)
  {
    v265 = 1 << (v264 - 1);
    v266 = v265 - 1;
    v267 = -v265;
    if (v263 < v266)
    {
      LODWORD(v266) = v218 + v159;
    }

    if (v263 >= v267)
    {
      v263 = v266;
    }

    else
    {
      v263 = v267;
    }
  }

  a2[6] = v263;
  v268 = v221 + v152;
  v269 = a4[7];
  if (v269 >= 1)
  {
    v270 = 1 << (v269 - 1);
    v271 = v270 - 1;
    v272 = -v270;
    if (v268 < v271)
    {
      LODWORD(v271) = v221 + v152;
    }

    if (v268 >= v272)
    {
      v268 = v271;
    }

    else
    {
      v268 = v272;
    }
  }

  a2[7] = v268;
  v273 = v221 - v152;
  result = a4[7];
  if (result >= 1)
  {
    v275 = 1 << (result - 1);
    v276 = v275 - 1;
    result = -v275;
    if (v273 < v276)
    {
      LODWORD(v276) = v273;
    }

    if (v273 >= result)
    {
      v273 = v276;
    }

    else
    {
      v273 = result;
    }
  }

  a2[8] = v273;
  v277 = v218 - v159;
  v278 = a4[7];
  if (v278 >= 1)
  {
    v279 = 1 << (v278 - 1);
    result = v279 - 1;
    v280 = -v279;
    if (v277 < result)
    {
      result = v277;
    }

    if (v277 >= v280)
    {
      v277 = result;
    }

    else
    {
      v277 = v280;
    }
  }

  a2[9] = v277;
  v281 = v216 - v247;
  v282 = a4[7];
  if (v282 >= 1)
  {
    v283 = 1 << (v282 - 1);
    v284 = v283 - 1;
    v285 = -v283;
    if (v281 < v284)
    {
      LODWORD(v284) = v281;
    }

    if (v281 >= v285)
    {
      v281 = v284;
    }

    else
    {
      v281 = v285;
    }
  }

  a2[10] = v281;
  v286 = v214 - v241;
  v287 = a4[7];
  if (v287 >= 1)
  {
    v288 = 1 << (v287 - 1);
    v289 = v288 - 1;
    v290 = -v288;
    if (v286 < v289)
    {
      LODWORD(v289) = v214 - v241;
    }

    if (v286 >= v290)
    {
      v286 = v289;
    }

    else
    {
      v286 = v290;
    }
  }

  a2[11] = v286;
  v291 = v211 - v234;
  v292 = a4[7];
  if (v292 >= 1)
  {
    v293 = 1 << (v292 - 1);
    v294 = v293 - 1;
    v295 = -v293;
    if (v291 < v294)
    {
      LODWORD(v294) = v291;
    }

    if (v291 >= v295)
    {
      v291 = v294;
    }

    else
    {
      v291 = v295;
    }
  }

  a2[12] = v291;
  v296 = v209 - v226;
  v297 = a4[7];
  if (v297 >= 1)
  {
    v298 = 1 << (v297 - 1);
    v299 = v298 - 1;
    v300 = -v298;
    if (v296 < v299)
    {
      LODWORD(v299) = v296;
    }

    if (v296 >= v300)
    {
      v296 = v299;
    }

    else
    {
      v296 = v300;
    }
  }

  a2[13] = v296;
  v301 = v207 - v188;
  v302 = a4[7];
  if (v302 >= 1)
  {
    v303 = 1 << (v302 - 1);
    v304 = v303 - 1;
    v305 = -v303;
    if (v301 < v304)
    {
      LODWORD(v304) = v207 - v188;
    }

    if (v301 >= v305)
    {
      v301 = v304;
    }

    else
    {
      v301 = v305;
    }
  }

  a2[14] = v301;
  v306 = v198 - v193;
  v307 = a4[7];
  if (v307 >= 1)
  {
    v308 = 1 << (v307 - 1);
    v309 = v308 - 1;
    v310 = -v308;
    if (v306 < v309)
    {
      LODWORD(v309) = v198 - v193;
    }

    if (v306 >= v310)
    {
      v306 = v309;
    }

    else
    {
      v306 = v310;
    }
  }

  a2[15] = v306;
  return result;
}

uint64_t av1_idct32(int *a1, int *a2, int a3, char *a4)
{
  v4 = &av1_cospi_arr_data[64 * a3 - 640];
  v5 = *a1;
  *a2 = *a1;
  v6 = a1[16];
  a2[1] = v6;
  v7 = a1[8];
  a2[2] = v7;
  v8 = a1[24];
  a2[3] = v8;
  v9 = a1[4];
  a2[4] = v9;
  v10 = a1[20];
  a2[5] = v10;
  v11 = a1[12];
  a2[6] = v11;
  v12 = a1[28];
  a2[7] = v12;
  v13 = a1[2];
  a2[8] = v13;
  v861 = a1[18];
  a2[9] = v861;
  v14 = a1[10];
  a2[10] = v14;
  v15 = a1[26];
  a2[11] = v15;
  v16 = a1[6];
  a2[12] = v16;
  v17 = a1[22];
  a2[13] = v17;
  v18 = a1[14];
  a2[14] = v18;
  v19 = a1[30];
  a2[15] = v19;
  v20 = a1[1];
  a2[16] = v20;
  v21 = a1[17];
  a2[17] = v21;
  v22 = a1[9];
  a2[18] = v22;
  v23 = a1[25];
  a2[19] = v23;
  v748 = a1[5];
  a2[20] = v748;
  v747 = a1[21];
  a2[21] = v747;
  v865 = a1[13];
  a2[22] = v865;
  v858 = a1[29];
  a2[23] = v858;
  v24 = 1 << (a3 - 1);
  v824 = a1[3];
  a2[24] = v824;
  v855 = a1[19];
  a2[25] = v855;
  v746 = a1[11];
  a2[26] = v746;
  v25 = a1[27];
  a2[27] = v25;
  v26 = a1[7];
  a2[28] = v26;
  v27 = a1[23];
  a2[29] = v27;
  v28 = a1[15];
  a2[30] = v28;
  v29 = a1[31];
  a2[31] = v29;
  v831 = v20;
  v759 = av1_cospi_arr_data[64 * a3 - 578];
  v760 = v29;
  v817 = av1_cospi_arr_data[64 * a3 - 638];
  v847 = v24 + v759 * v20 + -(v29 * v817);
  v820 = v21;
  v758 = av1_cospi_arr_data[64 * a3 - 610];
  v787 = av1_cospi_arr_data[64 * a3 - 606];
  v761 = v28;
  v794 = v24 + v758 * v21 + -(v28 * v787);
  v784 = v22;
  v755 = av1_cospi_arr_data[64 * a3 - 594];
  v757 = av1_cospi_arr_data[64 * a3 - 622];
  v790 = v27;
  v766 = v24 + v755 * v22 + -(v27 * v757);
  v773 = v23;
  v754 = av1_cospi_arr_data[64 * a3 - 626];
  v756 = av1_cospi_arr_data[64 * a3 - 590];
  v751 = v26;
  v30 = v24 + v754 * v23 + -(v26 * v756);
  v31 = av1_cospi_arr_data[64 * a3 - 586];
  v32 = av1_cospi_arr_data[64 * a3 - 630];
  v33 = av1_cospi_arr_data[64 * a3 - 618];
  v34 = av1_cospi_arr_data[64 * a3 - 598];
  v839 = av1_cospi_arr_data[64 * a3 - 602];
  v851 = av1_cospi_arr_data[64 * a3 - 614];
  v835 = av1_cospi_arr_data[64 * a3 - 634];
  v843 = av1_cospi_arr_data[64 * a3 - 582];
  v798 = v5;
  *a2 = v5;
  a2[1] = v6;
  v802 = v6;
  v811 = v12;
  v814 = v7;
  a2[2] = v7;
  a2[3] = v8;
  v805 = v8;
  v828 = v9;
  a2[4] = v9;
  a2[5] = v10;
  v808 = v10;
  v781 = v11;
  a2[6] = v11;
  a2[7] = v12;
  v35 = av1_cospi_arr_data[64 * a3 - 580];
  v36 = av1_cospi_arr_data[64 * a3 - 636];
  v775 = (v24 + v35 * v13 + -(v19 * v36)) >> a3;
  a2[8] = v775;
  v37 = av1_cospi_arr_data[64 * a3 - 612];
  v38 = av1_cospi_arr_data[64 * a3 - 604];
  v770 = (v24 + v37 * v861 + -(v18 * v38)) >> a3;
  a2[9] = v770;
  v39 = av1_cospi_arr_data[64 * a3 - 596];
  v40 = av1_cospi_arr_data[64 * a3 - 620];
  v778 = (v24 + v39 * v14 + -(v17 * v40)) >> a3;
  a2[10] = v778;
  v41 = av1_cospi_arr_data[64 * a3 - 628];
  v42 = av1_cospi_arr_data[64 * a3 - 588];
  v43 = v24 + v41 * v15 + -(v16 * v42);
  v44 = v24 + v41 * v16 + v42 * v15;
  v45 = v847 >> a3;
  v46 = v766 >> a3;
  v47 = v30 >> a3;
  v48 = v31;
  LODWORD(v30) = v31 * v748;
  v49 = v33;
  v50 = v24 + v30;
  v51 = v24 + v33 * v747;
  v52 = v43 >> a3;
  v53 = v44 >> a3;
  a2[11] = v52;
  a2[12] = v53;
  v750 = v53;
  v764 = v52;
  v767 = (v24 + v39 * v17 + v40 * v14) >> a3;
  a2[13] = v767;
  a2[14] = (v24 + v37 * v18 + v38 * v861) >> a3;
  v752 = (v24 + v35 * v19 + v36 * v13) >> a3;
  v753 = (v24 + v37 * v18 + v38 * v861) >> a3;
  a2[15] = v752;
  v54 = (v794 >> a3) + (v847 >> a3);
  v55 = a4[3];
  if (v55 >= 1)
  {
    v56 = 1 << (v55 - 1);
    v57 = v56 - 1;
    v58 = -v56;
    if (v54 < v57)
    {
      LODWORD(v57) = (v794 >> a3) + (v847 >> a3);
    }

    if (v54 >= v58)
    {
      v54 = v57;
    }

    else
    {
      v54 = v58;
    }
  }

  v59 = v50 + -(v25 * v32);
  v60 = v51 + -(v746 * v34);
  v848 = v54;
  a2[16] = v54;
  v61 = v45 - (v794 >> a3);
  v62 = a4[3];
  if (v62 >= 1)
  {
    v63 = 1 << (v62 - 1);
    v64 = v63 - 1;
    v65 = -v63;
    if (v61 < v64)
    {
      LODWORD(v64) = v61;
    }

    if (v61 >= v65)
    {
      v61 = v64;
    }

    else
    {
      v61 = v65;
    }
  }

  v66 = v59 >> a3;
  v67 = v60 >> a3;
  a2[17] = v61;
  v68 = v47 - v46;
  v69 = a4[3];
  if (v69 >= 1)
  {
    v70 = 1 << (v69 - 1);
    v71 = v70 - 1;
    v72 = -v70;
    if (v68 < v71)
    {
      LODWORD(v71) = v47 - v46;
    }

    if (v68 >= v72)
    {
      v68 = v71;
    }

    else
    {
      v68 = v72;
    }
  }

  a2[18] = v68;
  v73 = v47 + v46;
  v74 = a4[3];
  v862 = v61;
  if (v74 < 1)
  {
    v78 = v73;
  }

  else
  {
    v75 = 1 << (v74 - 1);
    v76 = v75 - 1;
    v77 = -v75;
    if (v73 < v76)
    {
      LODWORD(v76) = v73;
    }

    if (v73 >= v77)
    {
      v78 = v76;
    }

    else
    {
      v78 = v77;
    }
  }

  v79 = (v24 + v839 * v865 + -(v855 * v851)) >> a3;
  v80 = (v24 + v835 * v858 + -(v824 * v843)) >> a3;
  v795 = v78;
  a2[19] = v78;
  v81 = v67 + v66;
  v82 = a4[3];
  if (v82 >= 1)
  {
    v83 = 1 << (v82 - 1);
    v84 = v83 - 1;
    v85 = -v83;
    if (v81 < v84)
    {
      LODWORD(v84) = v67 + v66;
    }

    if (v81 >= v85)
    {
      v81 = v84;
    }

    else
    {
      v81 = v85;
    }
  }

  a2[20] = v81;
  v86 = v66 - v67;
  v87 = a4[3];
  if (v87 >= 1)
  {
    v88 = 1 << (v87 - 1);
    v89 = v88 - 1;
    v90 = -v88;
    if (v86 < v89)
    {
      LODWORD(v89) = v86;
    }

    if (v86 >= v90)
    {
      v86 = v89;
    }

    else
    {
      v86 = v90;
    }
  }

  v91 = (v24 + v835 * v824 + v843 * v858) >> a3;
  v92 = (v24 + v839 * v855 + v851 * v865) >> a3;
  v844 = v86;
  a2[21] = v86;
  v93 = v80 - v79;
  v94 = a4[3];
  if (v94 >= 1)
  {
    v95 = 1 << (v94 - 1);
    v96 = v95 - 1;
    v97 = -v95;
    if (v93 < v96)
    {
      LODWORD(v96) = v80 - v79;
    }

    if (v93 >= v97)
    {
      v93 = v96;
    }

    else
    {
      v93 = v97;
    }
  }

  v98 = v755 * v790;
  a2[22] = v93;
  v99 = v80 + v79;
  v100 = a4[3];
  v840 = v93;
  if (v100 >= 1)
  {
    v101 = 1 << (v100 - 1);
    v102 = v101 - 1;
    v103 = -v101;
    if (v99 < v102)
    {
      LODWORD(v102) = v99;
    }

    if (v99 >= v103)
    {
      v99 = v102;
    }

    else
    {
      v99 = v103;
    }
  }

  v104 = (v24 + v49 * v746 + v34 * v747) >> a3;
  v105 = (v24 + v48 * v25 + v32 * v748) >> a3;
  a2[23] = v99;
  v106 = v91 + v92;
  v107 = a4[3];
  v825 = v81;
  v791 = v99;
  if (v107 >= 1)
  {
    v108 = 1 << (v107 - 1);
    v109 = v108 - 1;
    v110 = -v108;
    if (v106 < v109)
    {
      LODWORD(v109) = v91 + v92;
    }

    if (v106 >= v110)
    {
      v106 = v109;
    }

    else
    {
      v106 = v110;
    }
  }

  a2[24] = v106;
  v111 = v91 - v92;
  v112 = a4[3];
  if (v112 >= 1)
  {
    v113 = 1 << (v112 - 1);
    v114 = v113 - 1;
    v115 = -v113;
    if (v111 < v114)
    {
      LODWORD(v114) = v111;
    }

    if (v111 >= v115)
    {
      v111 = v114;
    }

    else
    {
      v111 = v115;
    }
  }

  v116 = (v24 + v754 * v751 + v756 * v773) >> a3;
  v117 = (v24 + v98 + v757 * v784) >> a3;
  a2[25] = v111;
  v118 = v105 - v104;
  v119 = a4[3];
  if (v119 >= 1)
  {
    v120 = 1 << (v119 - 1);
    v121 = v120 - 1;
    v122 = -v120;
    if (v118 < v121)
    {
      LODWORD(v121) = v105 - v104;
    }

    if (v118 >= v122)
    {
      v118 = v121;
    }

    else
    {
      v118 = v122;
    }
  }

  a2[26] = v118;
  v123 = v104 + v105;
  v124 = a4[3];
  if (v124 >= 1)
  {
    v125 = 1 << (v124 - 1);
    v126 = v125 - 1;
    v127 = -v125;
    if (v123 < v126)
    {
      LODWORD(v126) = v123;
    }

    if (v123 >= v127)
    {
      v123 = v126;
    }

    else
    {
      v123 = v127;
    }
  }

  v128 = (v24 + v758 * v761 + v787 * v820) >> a3;
  v129 = (v24 + v759 * v760 + v817 * v831) >> a3;
  a2[27] = v123;
  v130 = v116 + v117;
  v131 = a4[3];
  if (v131 >= 1)
  {
    v132 = 1 << (v131 - 1);
    v133 = v132 - 1;
    v134 = -v132;
    if (v130 < v133)
    {
      LODWORD(v133) = v116 + v117;
    }

    if (v130 >= v134)
    {
      v130 = v133;
    }

    else
    {
      v130 = v134;
    }
  }

  a2[28] = v130;
  v135 = v116 - v117;
  v136 = a4[3];
  v774 = v118;
  if (v136 >= 1)
  {
    v137 = 1 << (v136 - 1);
    v138 = v137 - 1;
    v139 = -v137;
    if (v135 < v138)
    {
      LODWORD(v138) = v135;
    }

    if (v135 >= v139)
    {
      v135 = v138;
    }

    else
    {
      v135 = v139;
    }
  }

  v140 = a3;
  a2[29] = v135;
  v141 = v129 - v128;
  v142 = a4[3];
  if (v142 >= 1)
  {
    v143 = 1 << (v142 - 1);
    v144 = v143 - 1;
    v145 = -v143;
    if (v141 < v144)
    {
      LODWORD(v144) = v129 - v128;
    }

    if (v141 >= v145)
    {
      v141 = v144;
    }

    else
    {
      v141 = v145;
    }
  }

  a2[30] = v141;
  v146 = v128 + v129;
  v147 = a4[3];
  v818 = v130;
  if (v147 >= 1)
  {
    v148 = 1 << (v147 - 1);
    v149 = v148 - 1;
    v150 = -v148;
    if (v146 < v149)
    {
      LODWORD(v149) = v128 + v129;
    }

    if (v146 >= v150)
    {
      v146 = v149;
    }

    else
    {
      v146 = v150;
    }
  }

  v832 = v111;
  v785 = v146;
  v788 = v123;
  v821 = v106;
  a2[31] = v146;
  v151 = av1_cospi_arr_data[64 * a3 - 584];
  v152 = av1_cospi_arr_data[64 * a3 - 632];
  v153 = (v24 + v151 * v828 + -(v152 * v811)) >> a3;
  v154 = av1_cospi_arr_data[64 * a3 - 616];
  v155 = av1_cospi_arr_data[64 * a3 - 600];
  v156 = (v24 + v154 * v808 + -(v155 * v781)) >> a3;
  v157 = v24 + v154 * v781 + v155 * v808;
  v158 = v24 + v151 * v811 + v152 * v828;
  v159 = v770 + v775;
  v160 = a4[4];
  if (v160 <= 0)
  {
    v836 = v770 + v775;
    v168 = v775 - v770;
    v171 = v764 - v778;
    v829 = v764 + v778;
    v812 = v750 + v767;
    v180 = v750 - v767;
    v183 = v752 - v753;
    v185 = v753 + v752;
  }

  else
  {
    v161 = 1 << (v160 - 1);
    v162 = v161 - 1;
    v163 = -v161;
    if (v159 >= v162)
    {
      v164 = v162;
    }

    else
    {
      v164 = v770 + v775;
    }

    if (v159 >= v163)
    {
      v165 = v164;
    }

    else
    {
      v165 = v163;
    }

    v836 = v165;
    v166 = v775 - v770;
    if (v166 >= v162)
    {
      v167 = v162;
    }

    else
    {
      v167 = v775 - v770;
    }

    if (v166 >= v163)
    {
      v168 = v167;
    }

    else
    {
      v168 = v163;
    }

    v169 = v764 - v778;
    if (v169 >= v162)
    {
      v170 = v162;
    }

    else
    {
      v170 = v764 - v778;
    }

    if (v169 >= v163)
    {
      v171 = v170;
    }

    else
    {
      v171 = v163;
    }

    v172 = v764 + v778;
    if (v172 >= v162)
    {
      v173 = v162;
    }

    else
    {
      v173 = v764 + v778;
    }

    if (v172 >= v163)
    {
      v174 = v173;
    }

    else
    {
      v174 = v163;
    }

    v829 = v174;
    v175 = v750 + v767;
    if (v175 >= v162)
    {
      v176 = v162;
    }

    else
    {
      v176 = v750 + v767;
    }

    if (v175 >= v163)
    {
      v177 = v176;
    }

    else
    {
      v177 = v163;
    }

    v812 = v177;
    v178 = v750 - v767;
    if (v178 >= v162)
    {
      v179 = v162;
    }

    else
    {
      v179 = v750 - v767;
    }

    if (v178 >= v163)
    {
      v180 = v179;
    }

    else
    {
      v180 = v163;
    }

    v181 = v752 - v753;
    if (v181 >= v162)
    {
      v182 = v162;
    }

    else
    {
      v182 = v752 - v753;
    }

    if (v181 >= v163)
    {
      v183 = v182;
    }

    else
    {
      v183 = v163;
    }

    v184 = v753 + v752;
    if (v184 < v162)
    {
      LODWORD(v162) = v753 + v752;
    }

    if (v184 >= v163)
    {
      v185 = v162;
    }

    else
    {
      v185 = v163;
    }
  }

  v809 = v185;
  v186 = -v152;
  v187 = v157 >> v140;
  v188 = v158 >> v140;
  v776 = v141;
  v852 = v68;
  v189 = -(v68 * v151);
  v190 = v4[32];
  v191 = v24 + v190 * v798;
  v799 = (v191 + v190 * v802) >> v140;
  *a2 = v799;
  a2[1] = (v191 + -(v190 * v802)) >> v140;
  v782 = (v191 + -(v190 * v802)) >> v140;
  v192 = v4[48];
  v866 = v4[16];
  v779 = (v24 + v192 * v814 + -(v866 * v805)) >> v140;
  a2[2] = v779;
  a2[3] = (v24 + v192 * v805 + v866 * v814) >> v140;
  v815 = (v24 + v192 * v805 + v866 * v814) >> v140;
  v193 = v156 + v153;
  v194 = a4[5];
  if (v194 >= 1)
  {
    v195 = 1 << (v194 - 1);
    v196 = v195 - 1;
    v197 = -v195;
    if (v193 < v196)
    {
      LODWORD(v196) = v156 + v153;
    }

    if (v193 >= v197)
    {
      v193 = v196;
    }

    else
    {
      v193 = v197;
    }
  }

  v198 = v24 + v189;
  v803 = v193;
  a2[4] = v193;
  v199 = v153 - v156;
  v200 = a4[5];
  if (v200 >= 1)
  {
    v201 = 1 << (v200 - 1);
    v202 = v201 - 1;
    v203 = -v201;
    if (v199 < v202)
    {
      LODWORD(v202) = v199;
    }

    if (v199 >= v203)
    {
      v199 = v202;
    }

    else
    {
      v199 = v203;
    }
  }

  v204 = v198 + v135 * v186;
  a2[5] = v199;
  v205 = v188 - v187;
  v206 = a4[5];
  if (v206 >= 1)
  {
    v207 = 1 << (v206 - 1);
    v208 = v207 - 1;
    v209 = -v207;
    if (v205 < v208)
    {
      LODWORD(v208) = v188 - v187;
    }

    if (v205 >= v209)
    {
      v205 = v208;
    }

    else
    {
      v205 = v209;
    }
  }

  v210 = (v24 + v151 * v141 + v862 * v186) >> v140;
  v211 = v204 >> v140;
  v212 = -v866;
  a2[6] = v205;
  v213 = v187 + v188;
  v214 = a4[5];
  v768 = v205;
  if (v214 >= 1)
  {
    v215 = 1 << (v214 - 1);
    v216 = v215 - 1;
    v217 = -v215;
    if (v213 < v216)
    {
      LODWORD(v216) = v213;
    }

    if (v213 >= v217)
    {
      v213 = v216;
    }

    else
    {
      v213 = v217;
    }
  }

  v218 = -v155;
  v859 = v213;
  a2[7] = v213;
  a2[8] = v836;
  v762 = (v24 + -(v192 * v171) + v180 * v212) >> v140;
  v765 = (v24 + v192 * v183 + v168 * v212) >> v140;
  a2[9] = v765;
  a2[10] = v762;
  a2[11] = v829;
  a2[12] = v812;
  v219 = (v24 + v192 * v180 + v171 * v212) >> v140;
  v220 = (v24 + v192 * v168 + v866 * v183) >> v140;
  v771 = v219;
  a2[13] = v219;
  a2[14] = v220;
  a2[15] = v809;
  v221 = v795 + v848;
  v222 = a4[5];
  if (v222 >= 1)
  {
    v223 = 1 << (v222 - 1);
    v224 = v223 - 1;
    v225 = -v223;
    if (v221 < v224)
    {
      LODWORD(v224) = v795 + v848;
    }

    if (v221 >= v225)
    {
      v221 = v224;
    }

    else
    {
      v221 = v225;
    }
  }

  v856 = v221;
  a2[16] = v221;
  v226 = v210 + v211;
  v227 = a4[5];
  if (v227 >= 1)
  {
    v228 = 1 << (v227 - 1);
    v229 = v228 - 1;
    v230 = -v228;
    if (v226 < v229)
    {
      LODWORD(v229) = v210 + v211;
    }

    if (v226 >= v230)
    {
      v226 = v229;
    }

    else
    {
      v226 = v230;
    }
  }

  a2[17] = v226;
  v231 = v210 - v211;
  v232 = a4[5];
  if (v232 >= 1)
  {
    v233 = 1 << (v232 - 1);
    v234 = v233 - 1;
    v235 = -v233;
    if (v231 < v234)
    {
      LODWORD(v234) = v210 - v211;
    }

    if (v231 >= v235)
    {
      v231 = v234;
    }

    else
    {
      v231 = v235;
    }
  }

  v236 = v852;
  v237 = (v24 + v154 * v774 + v844 * v218) >> v140;
  v238 = (v24 + -(v840 * v154) + v832 * v218) >> v140;
  v853 = v231;
  a2[18] = v231;
  v239 = v848 - v795;
  v240 = a4[5];
  if (v240 >= 1)
  {
    v241 = 1 << (v240 - 1);
    v242 = v241 - 1;
    v243 = -v241;
    if (v239 < v242)
    {
      LODWORD(v242) = v848 - v795;
    }

    if (v239 >= v243)
    {
      v239 = v242;
    }

    else
    {
      v239 = v243;
    }
  }

  v244 = v154 * v832;
  v245 = v154 * v844;
  v849 = v239;
  a2[19] = v239;
  v246 = v791 - v825;
  v247 = a4[5];
  if (v247 >= 1)
  {
    v248 = 1 << (v247 - 1);
    v249 = v248 - 1;
    v250 = -v248;
    if (v246 < v249)
    {
      LODWORD(v249) = v791 - v825;
    }

    if (v246 >= v250)
    {
      v246 = v249;
    }

    else
    {
      v246 = v250;
    }
  }

  v251 = v24 + v244;
  v252 = v155 * v774;
  v253 = v24 + v245;
  v845 = v246;
  a2[20] = v246;
  v254 = v238 - v237;
  v255 = a4[5];
  if (v255 >= 1)
  {
    v256 = 1 << (v255 - 1);
    v257 = v256 - 1;
    v258 = -v256;
    if (v254 < v257)
    {
      LODWORD(v257) = v238 - v237;
    }

    if (v254 >= v258)
    {
      v254 = v257;
    }

    else
    {
      v254 = v258;
    }
  }

  v259 = v253 + v252;
  a2[21] = v254;
  v260 = v237 + v238;
  v261 = a4[5];
  if (v261 >= 1)
  {
    v262 = 1 << (v261 - 1);
    v263 = v262 - 1;
    v264 = -v262;
    if (v260 < v263)
    {
      LODWORD(v263) = v260;
    }

    if (v260 >= v264)
    {
      v260 = v263;
    }

    else
    {
      v260 = v264;
    }
  }

  v265 = (v251 + v840 * v218) >> v140;
  v266 = v259 >> v140;
  v833 = v260;
  a2[22] = v260;
  v267 = v791 + v825;
  v268 = a4[5];
  if (v268 >= 1)
  {
    v269 = 1 << (v268 - 1);
    v270 = v269 - 1;
    v271 = -v269;
    if (v267 < v270)
    {
      LODWORD(v270) = v791 + v825;
    }

    if (v267 >= v271)
    {
      v267 = v270;
    }

    else
    {
      v267 = v271;
    }
  }

  v841 = v267;
  a2[23] = v267;
  v272 = v788 + v821;
  v273 = a4[5];
  if (v273 >= 1)
  {
    v274 = 1 << (v273 - 1);
    v275 = v274 - 1;
    v276 = -v274;
    if (v272 < v275)
    {
      LODWORD(v275) = v788 + v821;
    }

    if (v272 >= v276)
    {
      v272 = v275;
    }

    else
    {
      v272 = v276;
    }
  }

  v277 = v236 * v186;
  v278 = v24 + v151 * v135;
  v806 = v272;
  a2[24] = v272;
  v279 = v265 + v266;
  v280 = a4[5];
  if (v280 >= 1)
  {
    v281 = 1 << (v280 - 1);
    v282 = v281 - 1;
    v283 = -v281;
    if (v279 < v282)
    {
      LODWORD(v282) = v265 + v266;
    }

    if (v279 >= v283)
    {
      v279 = v282;
    }

    else
    {
      v279 = v283;
    }
  }

  v284 = v836;
  v285 = v278 + v277;
  a2[25] = v279;
  v286 = v265 - v266;
  v287 = a4[5];
  if (v287 >= 1)
  {
    v288 = 1 << (v287 - 1);
    v289 = v288 - 1;
    v290 = -v288;
    if (v286 < v289)
    {
      LODWORD(v289) = v286;
    }

    if (v286 >= v290)
    {
      v286 = v289;
    }

    else
    {
      v286 = v290;
    }
  }

  v291 = v285 >> v140;
  v292 = (v24 + v151 * v862 + v152 * v776) >> v140;
  a2[26] = v286;
  LODWORD(v293) = v821 - v788;
  v294 = a4[5];
  if (v294 >= 1)
  {
    v295 = 1 << (v294 - 1);
    v293 = v295 - 1;
    v296 = -v295;
    if (v821 - v788 < v293)
    {
      LODWORD(v293) = v821 - v788;
    }

    if (v821 - v788 < v296)
    {
      LODWORD(v293) = v296;
    }
  }

  v297 = v829;
  v863 = v293;
  a2[27] = v293;
  v298 = v785 - v818;
  v299 = a4[5];
  if (v299 >= 1)
  {
    v300 = 1 << (v299 - 1);
    v301 = v300 - 1;
    v302 = -v300;
    if (v298 < v301)
    {
      LODWORD(v301) = v785 - v818;
    }

    if (v298 >= v302)
    {
      v298 = v301;
    }

    else
    {
      v298 = v302;
    }
  }

  a2[28] = v298;
  v303 = v292 - v291;
  v304 = a4[5];
  if (v304 >= 1)
  {
    v305 = 1 << (v304 - 1);
    v306 = v305 - 1;
    v307 = -v305;
    if (v303 < v306)
    {
      LODWORD(v306) = v292 - v291;
    }

    if (v303 >= v307)
    {
      v303 = v306;
    }

    else
    {
      v303 = v307;
    }
  }

  a2[29] = v303;
  v308 = v291 + v292;
  v309 = a4[5];
  if (v309 >= 1)
  {
    v310 = 1 << (v309 - 1);
    v311 = v310 - 1;
    v312 = -v310;
    if (v308 < v311)
    {
      LODWORD(v311) = v308;
    }

    if (v308 >= v312)
    {
      v308 = v311;
    }

    else
    {
      v308 = v312;
    }
  }

  v830 = v308;
  a2[30] = v308;
  v313 = v785 + v818;
  v314 = a4[5];
  if (v314 >= 1)
  {
    v315 = 1 << (v314 - 1);
    v316 = v315 - 1;
    v317 = -v315;
    if (v313 < v316)
    {
      LODWORD(v316) = v785 + v818;
    }

    if (v313 >= v317)
    {
      v313 = v316;
    }

    else
    {
      v313 = v317;
    }
  }

  v822 = v254;
  v826 = v313;
  a2[31] = v313;
  v318 = v815 + v799;
  v319 = a4[6];
  if (v319 <= 0)
  {
    v326 = v779 + v782;
    v329 = v782 - v779;
    LODWORD(v322) = v799 - v815;
  }

  else
  {
    v320 = 1 << (v319 - 1);
    v321 = v320 - 1;
    v322 = -v320;
    if (v318 >= v321)
    {
      v323 = v321;
    }

    else
    {
      v323 = v815 + v799;
    }

    if (v318 >= v322)
    {
      v318 = v323;
    }

    else
    {
      v318 = v322;
    }

    v324 = v779 + v782;
    if (v324 >= v321)
    {
      v325 = v321;
    }

    else
    {
      v325 = v779 + v782;
    }

    if (v324 >= v322)
    {
      v326 = v325;
    }

    else
    {
      v326 = v322;
    }

    v327 = v782 - v779;
    if (v327 >= v321)
    {
      v328 = v321;
    }

    else
    {
      v328 = v782 - v779;
    }

    if (v327 >= v322)
    {
      v329 = v328;
    }

    else
    {
      v329 = v322;
    }

    v330 = v799 - v815;
    if (v330 < v321)
    {
      LODWORD(v321) = v799 - v815;
    }

    if (v330 >= v322)
    {
      LODWORD(v322) = v321;
    }
  }

  v331 = v298;
  v332 = v24 + v768 * v190;
  v333 = v332 + v199 * -v190;
  v334 = (v332 + v199 * v190) >> v140;
  v335 = v836 + v297;
  if (v319 <= 0)
  {
    v837 = v836 + v297;
    v819 = v765 + v762;
    v346 = v765 - v762;
    v349 = v284 - v297;
    v800 = v809 - v812;
    v354 = v220 - v771;
    v816 = v771 + v220;
    v359 = v809 + v812;
  }

  else
  {
    v336 = 1 << (v319 - 1);
    v337 = v336 - 1;
    v338 = -v336;
    v339 = v335;
    if (v335 >= v337)
    {
      v335 = v337;
    }

    if (v339 >= v338)
    {
      v340 = v335;
    }

    else
    {
      v340 = v338;
    }

    v837 = v340;
    v341 = v765 + v762;
    if (v341 >= v337)
    {
      v342 = v337;
    }

    else
    {
      v342 = v765 + v762;
    }

    if (v341 >= v338)
    {
      v343 = v342;
    }

    else
    {
      v343 = v338;
    }

    v819 = v343;
    v344 = v765 - v762;
    if (v344 >= v337)
    {
      v345 = v337;
    }

    else
    {
      v345 = v765 - v762;
    }

    if (v344 >= v338)
    {
      v346 = v345;
    }

    else
    {
      v346 = v338;
    }

    v347 = v284 - v297;
    if (v347 >= v337)
    {
      v348 = v337;
    }

    else
    {
      v348 = v284 - v297;
    }

    if (v347 >= v338)
    {
      v349 = v348;
    }

    else
    {
      v349 = v338;
    }

    v350 = v809 - v812;
    if (v350 >= v337)
    {
      v351 = v337;
    }

    else
    {
      v351 = v809 - v812;
    }

    if (v350 >= v338)
    {
      v352 = v351;
    }

    else
    {
      v352 = v338;
    }

    v800 = v352;
    v353 = v220 - v771;
    if (v353 >= v337)
    {
      v354 = v337;
    }

    else
    {
      v354 = v220 - v771;
    }

    if (v353 < v338)
    {
      v354 = v338;
    }

    v355 = v771 + v220;
    if (v355 >= v337)
    {
      v356 = v337;
    }

    else
    {
      v356 = v355;
    }

    if (v355 >= v338)
    {
      v357 = v356;
    }

    else
    {
      v357 = v338;
    }

    v816 = v357;
    v358 = v809 + v812;
    if (v358 < v337)
    {
      LODWORD(v337) = v809 + v812;
    }

    if (v358 >= v338)
    {
      v359 = v337;
    }

    else
    {
      v359 = v338;
    }
  }

  v360 = v333 >> v140;
  v361 = v318 + v859;
  v362 = a4[7];
  if (v362 >= 1)
  {
    v363 = 1 << (v362 - 1);
    v364 = v363 - 1;
    v365 = -v363;
    if (v361 < v364)
    {
      LODWORD(v364) = v318 + v859;
    }

    if (v361 >= v365)
    {
      v361 = v364;
    }

    else
    {
      v361 = v365;
    }
  }

  v366 = v331;
  *a2 = v361;
  v367 = v326 + v334;
  v368 = a4[7];
  v369 = v303;
  if (v368 >= 1)
  {
    v370 = 1 << (v368 - 1);
    v371 = v370 - 1;
    v372 = -v370;
    if (v367 < v371)
    {
      LODWORD(v371) = v326 + v334;
    }

    if (v367 >= v372)
    {
      v367 = v371;
    }

    else
    {
      v367 = v372;
    }
  }

  v789 = v367;
  a2[1] = v367;
  v373 = v329 + v360;
  v374 = a4[7];
  if (v374 >= 1)
  {
    v375 = 1 << (v374 - 1);
    v376 = v375 - 1;
    v377 = -v375;
    if (v373 < v376)
    {
      LODWORD(v376) = v329 + v360;
    }

    if (v373 >= v377)
    {
      v373 = v376;
    }

    else
    {
      v373 = v377;
    }
  }

  v786 = v373;
  a2[2] = v373;
  LODWORD(v378) = v322 + v803;
  v379 = a4[7];
  if (v379 >= 1)
  {
    v380 = 1 << (v379 - 1);
    v378 = v380 - 1;
    v381 = -v380;
    if (v322 + v803 < v378)
    {
      LODWORD(v378) = v322 + v803;
    }

    if (v322 + v803 < v381)
    {
      LODWORD(v378) = v381;
    }
  }

  v382 = v863;
  v383 = -v192;
  v783 = v378;
  a2[3] = v378;
  v384 = v322 - v803;
  v385 = a4[7];
  v864 = -v190;
  if (v385 >= 1)
  {
    v386 = 1 << (v385 - 1);
    v387 = v386 - 1;
    v388 = -v386;
    if (v384 < v387)
    {
      LODWORD(v387) = v384;
    }

    if (v384 >= v388)
    {
      v384 = v387;
    }

    else
    {
      v384 = v388;
    }
  }

  v792 = v361;
  v796 = v279;
  a2[4] = v384;
  v389 = v329 - v360;
  v390 = a4[7];
  v391 = v226;
  if (v390 >= 1)
  {
    v392 = 1 << (v390 - 1);
    v393 = v392 - 1;
    v394 = -v392;
    if (v389 < v393)
    {
      LODWORD(v393) = v389;
    }

    if (v389 >= v394)
    {
      v389 = v393;
    }

    else
    {
      v389 = v394;
    }
  }

  a2[5] = v389;
  v395 = v326 - v334;
  v396 = a4[7];
  if (v396 >= 1)
  {
    v397 = 1 << (v396 - 1);
    v398 = v397 - 1;
    v399 = -v397;
    if (v395 < v398)
    {
      LODWORD(v398) = v395;
    }

    if (v395 >= v399)
    {
      v395 = v398;
    }

    else
    {
      v395 = v399;
    }
  }

  v400 = v24 + v845 * v383;
  v401 = v24 + v822 * v383 + v286 * v212;
  a2[6] = v395;
  v402 = v318 - v859;
  v403 = a4[7];
  if (v403 >= 1)
  {
    v404 = 1 << (v403 - 1);
    v405 = v404 - 1;
    v406 = -v404;
    if (v402 < v405)
    {
      LODWORD(v405) = v402;
    }

    if (v402 >= v406)
    {
      v402 = v405;
    }

    else
    {
      v402 = v406;
    }
  }

  v407 = v400 + v382 * v212;
  v408 = (v24 + v853 * v212 + v303 * v192) >> v140;
  v409 = v401 >> v140;
  a2[7] = v402;
  a2[8] = v837;
  v410 = v24 + v354 * v190;
  a2[9] = v819;
  a2[10] = (v410 + v346 * v864) >> v140;
  v772 = (v410 + v346 * v864) >> v140;
  v411 = v24 + v800 * v190;
  v813 = v190;
  v777 = (v411 + v349 * v864) >> v140;
  v780 = (v411 + v349 * v190) >> v140;
  a2[11] = v777;
  a2[12] = v780;
  v412 = (v410 + v346 * v190) >> v140;
  a2[13] = v412;
  a2[14] = v816;
  v413 = v359;
  a2[15] = v359;
  v414 = v841 + v856;
  v415 = a4[7];
  if (v415 >= 1)
  {
    v416 = 1 << (v415 - 1);
    v417 = v416 - 1;
    v418 = -v416;
    if (v414 < v417)
    {
      LODWORD(v417) = v841 + v856;
    }

    if (v414 >= v418)
    {
      v414 = v417;
    }

    else
    {
      v414 = v418;
    }
  }

  v419 = (v24 + v849 * v212 + v366 * v192) >> v140;
  v420 = v407 >> v140;
  v810 = v414;
  a2[16] = v414;
  v421 = v833 + v391;
  v422 = a4[7];
  if (v422 >= 1)
  {
    v423 = 1 << (v422 - 1);
    v424 = v423 - 1;
    v425 = -v423;
    if (v421 < v424)
    {
      LODWORD(v424) = v833 + v391;
    }

    if (v421 >= v425)
    {
      v421 = v424;
    }

    else
    {
      v421 = v425;
    }
  }

  v804 = v421;
  a2[17] = v421;
  v426 = v408 + v409;
  v427 = a4[7];
  if (v427 >= 1)
  {
    v428 = 1 << (v427 - 1);
    v429 = v428 - 1;
    v430 = -v428;
    if (v426 < v429)
    {
      LODWORD(v429) = v408 + v409;
    }

    if (v426 >= v430)
    {
      v426 = v429;
    }

    else
    {
      v426 = v430;
    }
  }

  a2[18] = v426;
  v431 = (v419 + v420);
  v432 = a4[7];
  if (v432 >= 1)
  {
    v433 = 1 << (v432 - 1);
    v434 = v433 - 1;
    v435 = -v433;
    if (v431 < v434)
    {
      LODWORD(v434) = v419 + v420;
    }

    if (v431 >= v435)
    {
      v431 = v434;
    }

    else
    {
      v431 = v435;
    }
  }

  a2[19] = v431;
  v436 = v419 - v420;
  v437 = a4[7];
  v860 = v431;
  if (v437 >= 1)
  {
    v438 = 1 << (v437 - 1);
    v439 = v438 - 1;
    v440 = -v438;
    if (v436 < v439)
    {
      LODWORD(v439) = v436;
    }

    if (v436 >= v440)
    {
      v436 = v439;
    }

    else
    {
      v436 = v440;
    }
  }

  v441 = v822 * v212;
  a2[20] = v436;
  v442 = v408 - v409;
  v443 = a4[7];
  if (v443 >= 1)
  {
    v444 = 1 << (v443 - 1);
    v445 = v444 - 1;
    v446 = -v444;
    if (v442 < v445)
    {
      LODWORD(v445) = v408 - v409;
    }

    if (v442 >= v446)
    {
      v442 = v445;
    }

    else
    {
      v442 = v446;
    }
  }

  v823 = v442;
  v801 = v426;
  v447 = v845 * v212;
  v448 = v849 * v192;
  v449 = v286 * v192;
  v450 = v24 + v441;
  v451 = v369 * v866;
  v452 = v24 + v853 * v192;
  a2[21] = v442;
  v453 = v391 - v833;
  v454 = a4[7];
  if (v454 >= 1)
  {
    v455 = 1 << (v454 - 1);
    v456 = v455 - 1;
    v457 = -v455;
    if (v453 < v456)
    {
      LODWORD(v456) = v391 - v833;
    }

    if (v453 >= v457)
    {
      v453 = v456;
    }

    else
    {
      v453 = v457;
    }
  }

  v458 = v806;
  v459 = v382 * v192;
  v460 = v24 + v447;
  v461 = v366 * v866;
  v462 = v24 + v448;
  v463 = v450 + v449;
  v464 = v452 + v451;
  a2[22] = v453;
  v465 = v856 - v841;
  v466 = a4[7];
  if (v466 >= 1)
  {
    v467 = 1 << (v466 - 1);
    v468 = v467 - 1;
    v469 = -v467;
    if (v465 < v468)
    {
      LODWORD(v468) = v856 - v841;
    }

    if (v465 >= v469)
    {
      v465 = v468;
    }

    else
    {
      v465 = v469;
    }
  }

  v470 = v460 + v459;
  v471 = v462 + v461;
  v472 = v463 >> v140;
  v473 = v464 >> v140;
  a2[23] = v465;
  v474 = v826 - v806;
  v475 = a4[7];
  if (v475 >= 1)
  {
    v476 = 1 << (v475 - 1);
    v477 = v476 - 1;
    v478 = -v476;
    if (v474 < v477)
    {
      LODWORD(v477) = v826 - v806;
    }

    if (v474 >= v478)
    {
      v474 = v477;
    }

    else
    {
      v474 = v478;
    }
  }

  v479 = v470 >> v140;
  v480 = v471 >> v140;
  a2[24] = v474;
  v481 = v830 - v796;
  v482 = a4[7];
  if (v482 >= 1)
  {
    v483 = 1 << (v482 - 1);
    v484 = v483 - 1;
    v485 = -v483;
    if (v481 < v484)
    {
      LODWORD(v484) = v830 - v796;
    }

    if (v481 >= v485)
    {
      v481 = v484;
    }

    else
    {
      v481 = v485;
    }
  }

  a2[25] = v481;
  v486 = v473 - v472;
  v487 = a4[7];
  if (v487 >= 1)
  {
    v488 = 1 << (v487 - 1);
    v489 = v488 - 1;
    v490 = -v488;
    if (v486 < v489)
    {
      LODWORD(v489) = v473 - v472;
    }

    if (v486 >= v490)
    {
      v486 = v489;
    }

    else
    {
      v486 = v490;
    }
  }

  a2[26] = v486;
  v491 = v480 - v479;
  v492 = a4[7];
  if (v492 >= 1)
  {
    v493 = 1 << (v492 - 1);
    v494 = v493 - 1;
    v495 = -v493;
    if (v491 < v494)
    {
      LODWORD(v494) = v480 - v479;
    }

    if (v491 >= v495)
    {
      v491 = v494;
    }

    else
    {
      v491 = v495;
    }

    v458 = v806;
  }

  a2[27] = v491;
  v496 = v480 + v479;
  v497 = a4[7];
  if (v497 >= 1)
  {
    v498 = 1 << (v497 - 1);
    v499 = v498 - 1;
    v500 = -v498;
    if (v496 < v499)
    {
      LODWORD(v499) = v496;
    }

    if (v496 >= v500)
    {
      v496 = v499;
    }

    else
    {
      v496 = v500;
    }
  }

  a2[28] = v496;
  v501 = v473 + v472;
  v502 = a4[7];
  if (v502 >= 1)
  {
    v503 = 1 << (v502 - 1);
    v504 = v503 - 1;
    v505 = -v503;
    if (v501 < v504)
    {
      LODWORD(v504) = v501;
    }

    if (v501 >= v505)
    {
      v501 = v504;
    }

    else
    {
      v501 = v505;
    }
  }

  v857 = v501;
  a2[29] = v501;
  v506 = v830 + v796;
  v507 = a4[7];
  if (v507 >= 1)
  {
    v508 = 1 << (v507 - 1);
    v509 = v508 - 1;
    v510 = -v508;
    if (v506 < v509)
    {
      LODWORD(v509) = v830 + v796;
    }

    if (v506 >= v510)
    {
      v506 = v509;
    }

    else
    {
      v506 = v510;
    }
  }

  v511 = v792;
  v854 = v506;
  a2[30] = v506;
  v512 = v826 + v458;
  v513 = a4[7];
  if (v513 >= 1)
  {
    v514 = 1 << (v513 - 1);
    v515 = v514 - 1;
    v516 = -v514;
    if (v512 < v515)
    {
      LODWORD(v515) = v826 + v458;
    }

    if (v512 >= v516)
    {
      v512 = v515;
    }

    else
    {
      v512 = v516;
    }
  }

  v769 = v465;
  v807 = v453;
  v867 = v496;
  a2[31] = v512;
  v517 = v792 + v413;
  v518 = a4[8];
  if (v518 <= 0)
  {
    v850 = v789 + v816;
    v846 = v786 + v412;
    v842 = v783 + v780;
    v834 = v384 + v777;
    v763 = v389 + v772;
    v793 = v395 + v819;
    v797 = v402 + v837;
    v827 = v402 - v837;
    v549 = v395 - v819;
    v838 = v389 - v772;
    v555 = v384 - v777;
    v558 = v783 - v780;
    v560 = v786 - v412;
    v563 = v789 - v816;
    v566 = v511 - v413;
  }

  else
  {
    v519 = 1 << (v518 - 1);
    v520 = v519 - 1;
    v521 = -v519;
    if (v517 >= v519 - 1)
    {
      v522 = v519 - 1;
    }

    else
    {
      v522 = v792 + v413;
    }

    if (v517 >= v521)
    {
      v517 = v522;
    }

    else
    {
      v517 = -v519;
    }

    v523 = v789 + v816;
    if (v523 >= v520)
    {
      v524 = v520;
    }

    else
    {
      v524 = v789 + v816;
    }

    if (v523 >= v521)
    {
      v525 = v524;
    }

    else
    {
      v525 = v521;
    }

    v850 = v525;
    v526 = v786 + v412;
    if (v526 >= v520)
    {
      v527 = v520;
    }

    else
    {
      v527 = v786 + v412;
    }

    if (v526 >= v521)
    {
      v528 = v527;
    }

    else
    {
      v528 = v521;
    }

    v846 = v528;
    v529 = v783 + v780;
    if (v529 >= v520)
    {
      v530 = v520;
    }

    else
    {
      v530 = v783 + v780;
    }

    if (v529 >= v521)
    {
      v531 = v530;
    }

    else
    {
      v531 = v521;
    }

    v842 = v531;
    v532 = v384 + v777;
    if (v532 >= v520)
    {
      v533 = v520;
    }

    else
    {
      v533 = v384 + v777;
    }

    if (v532 >= v521)
    {
      v534 = v533;
    }

    else
    {
      v534 = v521;
    }

    v834 = v534;
    v535 = v389 + v772;
    if (v535 >= v520)
    {
      v536 = v520;
    }

    else
    {
      v536 = v389 + v772;
    }

    if (v535 >= v521)
    {
      v537 = v536;
    }

    else
    {
      v537 = v521;
    }

    v763 = v537;
    v538 = v395 + v819;
    if (v538 >= v520)
    {
      v539 = v520;
    }

    else
    {
      v539 = v395 + v819;
    }

    if (v538 >= v521)
    {
      v540 = v539;
    }

    else
    {
      v540 = v521;
    }

    v793 = v540;
    v541 = v402 + v837;
    if (v541 >= v520)
    {
      v542 = v520;
    }

    else
    {
      v542 = v402 + v837;
    }

    if (v541 >= v521)
    {
      v543 = v542;
    }

    else
    {
      v543 = v521;
    }

    v797 = v543;
    v544 = v402 - v837;
    if (v544 >= v520)
    {
      v545 = v520;
    }

    else
    {
      v545 = v402 - v837;
    }

    if (v544 >= v521)
    {
      v546 = v545;
    }

    else
    {
      v546 = v521;
    }

    v827 = v546;
    v547 = v395 - v819;
    if (v395 - v819 >= v520)
    {
      v548 = v520;
    }

    else
    {
      v548 = v395 - v819;
    }

    if (v547 >= v521)
    {
      v549 = v548;
    }

    else
    {
      v549 = v521;
    }

    v550 = v389 - v772;
    if (v550 >= v520)
    {
      v551 = v520;
    }

    else
    {
      v551 = v389 - v772;
    }

    if (v550 >= v521)
    {
      v552 = v551;
    }

    else
    {
      v552 = v521;
    }

    v838 = v552;
    v553 = v384 - v777;
    if (v553 >= v520)
    {
      v554 = v520;
    }

    else
    {
      v554 = v384 - v777;
    }

    if (v553 >= v521)
    {
      v555 = v554;
    }

    else
    {
      v555 = v521;
    }

    v556 = v783 - v780;
    if (v556 >= v520)
    {
      v557 = v520;
    }

    else
    {
      v557 = v783 - v780;
    }

    if (v556 >= v521)
    {
      v558 = v557;
    }

    else
    {
      v558 = v521;
    }

    v559 = v786 - v412;
    if (v559 >= v520)
    {
      v560 = v520;
    }

    else
    {
      v560 = v786 - v412;
    }

    if (v559 < v521)
    {
      v560 = v521;
    }

    v561 = v789 - v816;
    if (v561 >= v520)
    {
      v562 = v520;
    }

    else
    {
      v562 = v789 - v816;
    }

    if (v561 >= v521)
    {
      v563 = v562;
    }

    else
    {
      v563 = v521;
    }

    v564 = v511 - v413;
    if (v564 >= v520)
    {
      v565 = v520;
    }

    else
    {
      v565 = v511 - v413;
    }

    if (v564 >= v521)
    {
      v566 = v565;
    }

    else
    {
      v566 = v521;
    }
  }

  v567 = v24 + v491 * v813;
  v568 = v517 + v512;
  v569 = a4[9];
  v570 = v517;
  if (v569 >= 1)
  {
    v571 = 1 << (v569 - 1);
    v572 = v571 - 1;
    v573 = -v571;
    if (v568 < v572)
    {
      LODWORD(v572) = v517 + v512;
    }

    if (v568 >= v573)
    {
      v568 = v572;
    }

    else
    {
      v568 = v573;
    }
  }

  v574 = v481 * v813;
  v575 = v24 + v486 * v813;
  *a2 = v568;
  v576 = v850 + v854;
  v577 = a4[9];
  if (v577 >= 1)
  {
    v578 = 1 << (v577 - 1);
    v579 = v578 - 1;
    v580 = -v578;
    if (v576 < v579)
    {
      LODWORD(v579) = v850 + v854;
    }

    if (v576 >= v580)
    {
      v576 = v579;
    }

    else
    {
      v576 = v580;
    }
  }

  v581 = v24 + v574;
  v582 = (v567 + v436 * v813) >> v140;
  a2[1] = v576;
  v583 = v846 + v857;
  v584 = a4[9];
  if (v584 >= 1)
  {
    v585 = 1 << (v584 - 1);
    v586 = v585 - 1;
    v587 = -v585;
    if (v583 < v586)
    {
      LODWORD(v586) = v846 + v857;
    }

    if (v583 >= v587)
    {
      v583 = v586;
    }

    else
    {
      v583 = v587;
    }
  }

  v588 = v24 + v474 * v813;
  v589 = (v575 + v823 * v813) >> v140;
  a2[2] = v583;
  v590 = v842 + v867;
  v591 = a4[9];
  if (v591 >= 1)
  {
    v592 = 1 << (v591 - 1);
    v593 = v592 - 1;
    v594 = -v592;
    if (v590 < v593)
    {
      LODWORD(v593) = v842 + v867;
    }

    if (v590 >= v594)
    {
      v590 = v593;
    }

    else
    {
      v590 = v594;
    }
  }

  v595 = (v581 + v453 * v813) >> v140;
  a2[3] = v590;
  v596 = v834 + v582;
  v597 = a4[9];
  if (v597 >= 1)
  {
    v598 = 1 << (v597 - 1);
    v599 = v598 - 1;
    v600 = -v598;
    if (v596 < v599)
    {
      LODWORD(v599) = v834 + v582;
    }

    if (v596 >= v600)
    {
      v596 = v599;
    }

    else
    {
      v596 = v600;
    }
  }

  v601 = v588 + v769 * v864;
  v602 = (v588 + v769 * v813) >> v140;
  a2[4] = v596;
  v603 = v763 + v589;
  v604 = a4[9];
  if (v604 >= 1)
  {
    v605 = 1 << (v604 - 1);
    v606 = v605 - 1;
    v607 = -v605;
    if (v603 < v606)
    {
      LODWORD(v606) = v763 + v589;
    }

    if (v603 >= v607)
    {
      v603 = v606;
    }

    else
    {
      v603 = v607;
    }
  }

  v608 = v581 + v807 * v864;
  v609 = v601 >> v140;
  a2[5] = v603;
  v610 = v793 + v595;
  v611 = a4[9];
  if (v611 >= 1)
  {
    v612 = 1 << (v611 - 1);
    v613 = v612 - 1;
    v614 = -v612;
    if (v610 < v613)
    {
      LODWORD(v613) = v793 + v595;
    }

    if (v610 >= v614)
    {
      v610 = v613;
    }

    else
    {
      v610 = v614;
    }
  }

  v615 = v575 + v823 * v864;
  v616 = v608 >> v140;
  a2[6] = v610;
  v617 = v797 + v602;
  v618 = a4[9];
  if (v618 >= 1)
  {
    v619 = 1 << (v618 - 1);
    v620 = v619 - 1;
    v621 = -v619;
    if (v617 < v620)
    {
      LODWORD(v620) = v797 + v602;
    }

    if (v617 >= v621)
    {
      v617 = v620;
    }

    else
    {
      v617 = v621;
    }
  }

  v622 = v567 + v436 * v864;
  v623 = v615 >> v140;
  a2[7] = v617;
  v624 = v827 + v609;
  v625 = a4[9];
  if (v625 >= 1)
  {
    v626 = 1 << (v625 - 1);
    v627 = v626 - 1;
    v628 = -v626;
    if (v624 < v627)
    {
      LODWORD(v627) = v827 + v609;
    }

    if (v624 >= v628)
    {
      v624 = v627;
    }

    else
    {
      v624 = v628;
    }
  }

  v629 = v622 >> v140;
  a2[8] = v624;
  v630 = v549 + v616;
  v631 = a4[9];
  if (v631 >= 1)
  {
    v632 = 1 << (v631 - 1);
    v633 = v632 - 1;
    v634 = -v632;
    if (v630 < v633)
    {
      LODWORD(v633) = v549 + v616;
    }

    if (v630 >= v634)
    {
      v630 = v633;
    }

    else
    {
      v630 = v634;
    }
  }

  a2[9] = v630;
  v635 = v838 + v623;
  v636 = a4[9];
  if (v636 >= 1)
  {
    v637 = 1 << (v636 - 1);
    v638 = v637 - 1;
    v639 = -v637;
    if (v635 < v638)
    {
      LODWORD(v638) = v838 + v623;
    }

    if (v635 >= v639)
    {
      v635 = v638;
    }

    else
    {
      v635 = v639;
    }
  }

  a2[10] = v635;
  v640 = v555 + v629;
  v641 = a4[9];
  if (v641 >= 1)
  {
    v642 = 1 << (v641 - 1);
    v643 = v642 - 1;
    v644 = -v642;
    if (v640 < v643)
    {
      LODWORD(v643) = v555 + v629;
    }

    if (v640 >= v644)
    {
      v640 = v643;
    }

    else
    {
      v640 = v644;
    }
  }

  a2[11] = v640;
  v645 = v558 + v860;
  v646 = a4[9];
  if (v646 >= 1)
  {
    v647 = 1 << (v646 - 1);
    v648 = v647 - 1;
    v649 = -v647;
    if (v645 < v648)
    {
      LODWORD(v648) = v558 + v860;
    }

    if (v645 >= v649)
    {
      v645 = v648;
    }

    else
    {
      v645 = v649;
    }
  }

  a2[12] = v645;
  v650 = v560 + v801;
  v651 = a4[9];
  if (v651 >= 1)
  {
    v652 = 1 << (v651 - 1);
    v653 = v652 - 1;
    v654 = -v652;
    if (v650 < v653)
    {
      LODWORD(v653) = v560 + v801;
    }

    if (v650 >= v654)
    {
      v650 = v653;
    }

    else
    {
      v650 = v654;
    }
  }

  a2[13] = v650;
  v655 = v563 + v804;
  v656 = a4[9];
  if (v656 >= 1)
  {
    v657 = 1 << (v656 - 1);
    v658 = v657 - 1;
    v659 = -v657;
    if (v655 < v658)
    {
      LODWORD(v658) = v563 + v804;
    }

    if (v655 >= v659)
    {
      v655 = v658;
    }

    else
    {
      v655 = v659;
    }
  }

  a2[14] = v655;
  v660 = v566 + v810;
  v661 = a4[9];
  if (v661 >= 1)
  {
    v662 = 1 << (v661 - 1);
    v663 = v662 - 1;
    v664 = -v662;
    if (v660 < v663)
    {
      LODWORD(v663) = v566 + v810;
    }

    if (v660 >= v664)
    {
      v660 = v663;
    }

    else
    {
      v660 = v664;
    }
  }

  a2[15] = v660;
  v665 = v566 - v810;
  v666 = a4[9];
  if (v666 >= 1)
  {
    v667 = 1 << (v666 - 1);
    v668 = v667 - 1;
    v669 = -v667;
    if (v665 < v668)
    {
      LODWORD(v668) = v566 - v810;
    }

    if (v665 >= v669)
    {
      v665 = v668;
    }

    else
    {
      v665 = v669;
    }
  }

  a2[16] = v665;
  v670 = v563 - v804;
  v671 = a4[9];
  if (v671 >= 1)
  {
    v672 = 1 << (v671 - 1);
    v673 = v672 - 1;
    v674 = -v672;
    if (v670 < v673)
    {
      LODWORD(v673) = v563 - v804;
    }

    if (v670 >= v674)
    {
      v670 = v673;
    }

    else
    {
      v670 = v674;
    }
  }

  result = v860;
  a2[17] = v670;
  v676 = v560 - v801;
  v677 = a4[9];
  if (v677 >= 1)
  {
    v678 = 1 << (v677 - 1);
    v679 = v678 - 1;
    v680 = -v678;
    if (v676 < v679)
    {
      LODWORD(v679) = v676;
    }

    if (v676 >= v680)
    {
      v676 = v679;
    }

    else
    {
      v676 = v680;
    }
  }

  a2[18] = v676;
  v681 = v558 - v860;
  v682 = a4[9];
  if (v682 >= 1)
  {
    v683 = 1 << (v682 - 1);
    v684 = v683 - 1;
    v685 = -v683;
    if (v681 < v684)
    {
      LODWORD(v684) = v558 - v860;
    }

    if (v681 >= v685)
    {
      v681 = v684;
    }

    else
    {
      v681 = v685;
    }
  }

  a2[19] = v681;
  v686 = v555 - v629;
  v687 = a4[9];
  if (v687 >= 1)
  {
    v688 = 1 << (v687 - 1);
    v689 = v688 - 1;
    v690 = -v688;
    if (v686 < v689)
    {
      LODWORD(v689) = v686;
    }

    if (v686 >= v690)
    {
      v686 = v689;
    }

    else
    {
      v686 = v690;
    }
  }

  a2[20] = v686;
  v691 = v838 - v623;
  v692 = a4[9];
  if (v692 >= 1)
  {
    v693 = 1 << (v692 - 1);
    v694 = v693 - 1;
    v695 = -v693;
    if (v691 < v694)
    {
      LODWORD(v694) = v691;
    }

    if (v691 >= v695)
    {
      v691 = v694;
    }

    else
    {
      v691 = v695;
    }
  }

  a2[21] = v691;
  v696 = v549 - v616;
  v697 = a4[9];
  if (v697 >= 1)
  {
    v698 = 1 << (v697 - 1);
    v699 = v698 - 1;
    v700 = -v698;
    if (v696 < v699)
    {
      LODWORD(v699) = v696;
    }

    if (v696 >= v700)
    {
      v696 = v699;
    }

    else
    {
      v696 = v700;
    }
  }

  a2[22] = v696;
  v701 = v827 - v609;
  v702 = a4[9];
  if (v702 >= 1)
  {
    v703 = 1 << (v702 - 1);
    v704 = v703 - 1;
    v705 = -v703;
    if (v701 < v704)
    {
      LODWORD(v704) = v827 - v609;
    }

    if (v701 >= v705)
    {
      v701 = v704;
    }

    else
    {
      v701 = v705;
    }
  }

  a2[23] = v701;
  v706 = v797 - v602;
  v707 = a4[9];
  if (v707 >= 1)
  {
    v708 = 1 << (v707 - 1);
    v709 = v708 - 1;
    v710 = -v708;
    if (v706 < v709)
    {
      LODWORD(v709) = v797 - v602;
    }

    if (v706 >= v710)
    {
      v706 = v709;
    }

    else
    {
      v706 = v710;
    }
  }

  a2[24] = v706;
  v711 = v793 - v595;
  v712 = a4[9];
  if (v712 >= 1)
  {
    v713 = 1 << (v712 - 1);
    v714 = v713 - 1;
    v715 = -v713;
    if (v711 < v714)
    {
      LODWORD(v714) = v711;
    }

    if (v711 >= v715)
    {
      v711 = v714;
    }

    else
    {
      v711 = v715;
    }
  }

  a2[25] = v711;
  v716 = v763 - v589;
  v717 = a4[9];
  if (v717 >= 1)
  {
    v718 = 1 << (v717 - 1);
    v719 = v718 - 1;
    v720 = -v718;
    if (v716 < v719)
    {
      LODWORD(v719) = v716;
    }

    if (v716 >= v720)
    {
      v716 = v719;
    }

    else
    {
      v716 = v720;
    }
  }

  a2[26] = v716;
  v721 = v834 - v582;
  v722 = a4[9];
  if (v722 >= 1)
  {
    v723 = 1 << (v722 - 1);
    v724 = v723 - 1;
    v725 = -v723;
    if (v721 < v724)
    {
      LODWORD(v724) = v834 - v582;
    }

    if (v721 >= v725)
    {
      v721 = v724;
    }

    else
    {
      v721 = v725;
    }
  }

  a2[27] = v721;
  v726 = v842 - v867;
  v727 = a4[9];
  if (v727 >= 1)
  {
    v728 = 1 << (v727 - 1);
    v729 = v728 - 1;
    v730 = -v728;
    if (v726 < v729)
    {
      LODWORD(v729) = v842 - v867;
    }

    if (v726 >= v730)
    {
      v726 = v729;
    }

    else
    {
      v726 = v730;
    }
  }

  a2[28] = v726;
  v731 = v846 - v857;
  v732 = a4[9];
  if (v732 >= 1)
  {
    v733 = 1 << (v732 - 1);
    v734 = v733 - 1;
    v735 = -v733;
    if (v731 < v734)
    {
      LODWORD(v734) = v846 - v857;
    }

    if (v731 >= v735)
    {
      v731 = v734;
    }

    else
    {
      v731 = v735;
    }
  }

  a2[29] = v731;
  v736 = v850 - v854;
  v737 = a4[9];
  if (v737 >= 1)
  {
    v738 = 1 << (v737 - 1);
    v739 = v738 - 1;
    v740 = -v738;
    if (v736 < v739)
    {
      LODWORD(v739) = v850 - v854;
    }

    if (v736 >= v740)
    {
      v736 = v739;
    }

    else
    {
      v736 = v740;
    }
  }

  a2[30] = v736;
  v741 = v570 - v512;
  v742 = a4[9];
  if (v742 >= 1)
  {
    v743 = 1 << (v742 - 1);
    v744 = v743 - 1;
    v745 = -v743;
    if (v741 < v744)
    {
      LODWORD(v744) = v570 - v512;
    }

    if (v741 >= v745)
    {
      v741 = v744;
    }

    else
    {
      v741 = v745;
    }
  }

  a2[31] = v741;
  return result;
}

int *av1_iadst4(int *result, _DWORD *a2, int a3)
{
  v3 = *result;
  v4 = result[1];
  v5 = result[2];
  v6 = result[3];
  if (v4 | *result | v5 | v6)
  {
    v7 = &av1_sinpi_arr_data + 20 * a3;
    v8 = *(v7 - 49);
    v9 = *(v7 - 48);
    v10 = v8 * v3;
    v11 = v9 * v3;
    v12 = *(v7 - 47);
    LODWORD(v7) = *(v7 - 46);
    v13 = v12 * v4;
    v14 = v12 * (v3 - v5 + v6);
    v15 = v10 + v9 * v6 + v7 * v5;
    v16 = 1 << (a3 - 1);
    v17 = v11 - v7 * v6 - v8 * v5;
    a2[2] = (v16 + v14) >> a3;
    a2[3] = (v16 + v17 - v13 + v15) >> a3;
    *a2 = (v16 + v15 + v13) >> a3;
    a2[1] = (v16 + v17 + v13) >> a3;
  }

  else
  {
    a2[2] = 0;
    a2[3] = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t av1_iadst8(int *a1, _DWORD *a2, int a3, uint64_t a4)
{
  v4 = &av1_cospi_arr_data[64 * a3 - 640];
  v5 = a1[7];
  *a2 = v5;
  v6 = *a1;
  a2[1] = *a1;
  v7 = a1[5];
  a2[2] = v7;
  v8 = a1[2];
  a2[3] = v8;
  v9 = a1[3];
  a2[4] = v9;
  v10 = a1[4];
  a2[5] = v10;
  v11 = a1[1];
  v12 = 1 << (a3 - 1);
  a2[6] = v11;
  v13 = a1[6];
  a2[7] = v13;
  v14 = av1_cospi_arr_data[64 * a3 - 636];
  v15 = av1_cospi_arr_data[64 * a3 - 580];
  v16 = v12 + v14 * v5 + v15 * v6;
  v17 = v12 + -(v6 * v14) + v15 * v5;
  v18 = v16 >> a3;
  v19 = v17 >> a3;
  LODWORD(v17) = av1_cospi_arr_data[64 * a3 - 620];
  LODWORD(v16) = av1_cospi_arr_data[64 * a3 - 596];
  v20 = (v12 + v17 * v7 + v16 * v8) >> a3;
  v21 = v12 + -(v8 * v17) + v16 * v7;
  v22 = av1_cospi_arr_data[64 * a3 - 604];
  v23 = av1_cospi_arr_data[64 * a3 - 612];
  v24 = (v12 + v22 * v9 + v23 * v10) >> a3;
  v25 = (v12 + -(v10 * v22) + v23 * v9) >> a3;
  v26 = av1_cospi_arr_data[64 * a3 - 588];
  v27 = av1_cospi_arr_data[64 * a3 - 628];
  v28 = (v12 + v26 * v11 + v27 * v13) >> a3;
  v29 = v12 + -(v13 * v26) + v27 * v11;
  v30 = v24 + v18;
  v31 = *(a4 + 3);
  if (v31 >= 1)
  {
    v32 = 1 << (v31 - 1);
    v33 = v32 - 1;
    v34 = -v32;
    if (v30 < v33)
    {
      LODWORD(v33) = v24 + v18;
    }

    if (v30 >= v34)
    {
      v30 = v33;
    }

    else
    {
      v30 = v34;
    }
  }

  v35 = v21 >> a3;
  v36 = v29 >> a3;
  *a2 = v30;
  v37 = v25 + v19;
  v38 = *(a4 + 3);
  if (v38 >= 1)
  {
    v39 = 1 << (v38 - 1);
    v40 = v39 - 1;
    v41 = -v39;
    if (v37 < v40)
    {
      LODWORD(v40) = v25 + v19;
    }

    if (v37 >= v41)
    {
      v37 = v40;
    }

    else
    {
      v37 = v41;
    }
  }

  a2[1] = v37;
  v42 = v28 + v20;
  v43 = *(a4 + 3);
  if (v43 >= 1)
  {
    v44 = 1 << (v43 - 1);
    v45 = v44 - 1;
    v46 = -v44;
    if (v42 < v45)
    {
      LODWORD(v45) = v28 + v20;
    }

    if (v42 >= v46)
    {
      v42 = v45;
    }

    else
    {
      v42 = v46;
    }
  }

  a2[2] = v42;
  v47 = v36 + v35;
  v48 = *(a4 + 3);
  if (v48 >= 1)
  {
    v49 = 1 << (v48 - 1);
    v50 = v49 - 1;
    v51 = -v49;
    if (v47 < v50)
    {
      LODWORD(v50) = v36 + v35;
    }

    if (v47 >= v51)
    {
      v47 = v50;
    }

    else
    {
      v47 = v51;
    }
  }

  a2[3] = v47;
  v52 = v18 - v24;
  v53 = *(a4 + 3);
  if (v53 >= 1)
  {
    v54 = 1 << (v53 - 1);
    v55 = v54 - 1;
    v56 = -v54;
    if (v52 < v55)
    {
      LODWORD(v55) = v52;
    }

    if (v52 >= v56)
    {
      v52 = v55;
    }

    else
    {
      v52 = v56;
    }
  }

  a2[4] = v52;
  v57 = v19 - v25;
  v58 = *(a4 + 3);
  if (v58 >= 1)
  {
    v59 = 1 << (v58 - 1);
    v60 = v59 - 1;
    v61 = -v59;
    if (v57 < v60)
    {
      LODWORD(v60) = v57;
    }

    if (v57 >= v61)
    {
      v57 = v60;
    }

    else
    {
      v57 = v61;
    }
  }

  a2[5] = v57;
  v62 = v20 - v28;
  v63 = *(a4 + 3);
  if (v63 >= 1)
  {
    v64 = 1 << (v63 - 1);
    v65 = v64 - 1;
    v66 = -v64;
    if (v62 < v65)
    {
      LODWORD(v65) = v62;
    }

    if (v62 >= v66)
    {
      v62 = v65;
    }

    else
    {
      v62 = v66;
    }
  }

  a2[6] = v62;
  v67 = v35 - v36;
  v68 = *(a4 + 3);
  if (v68 >= 1)
  {
    v69 = 1 << (v68 - 1);
    v70 = v69 - 1;
    v71 = -v69;
    if (v67 < v70)
    {
      LODWORD(v70) = v67;
    }

    if (v67 >= v71)
    {
      v67 = v70;
    }

    else
    {
      v67 = v71;
    }
  }

  v72 = a3;
  a2[7] = v67;
  v73 = av1_cospi_arr_data[64 * a3 - 624];
  v74 = av1_cospi_arr_data[64 * a3 - 592];
  v75 = v74 * v57;
  v76 = v12 + v73 * v52;
  v77 = -(v57 * v73);
  v78 = -(v62 * v74);
  v79 = v12 + v73 * v67;
  v80 = v73 * v62;
  v81 = v42 + v30;
  v82 = *(a4 + 5);
  if (v82 >= 1)
  {
    v83 = 1 << (v82 - 1);
    v84 = v83 - 1;
    v85 = -v83;
    if (v81 < v84)
    {
      LODWORD(v84) = v42 + v30;
    }

    if (v81 >= v85)
    {
      v81 = v84;
    }

    else
    {
      v81 = v85;
    }
  }

  v86 = v74 * v52;
  v87 = v74 * v67;
  v88 = v76 + v75;
  v89 = v79 + v78;
  *a2 = v81;
  v90 = v47 + v37;
  v91 = *(a4 + 5);
  if (v91 >= 1)
  {
    v92 = 1 << (v91 - 1);
    v93 = v92 - 1;
    v94 = -v92;
    if (v90 < v93)
    {
      LODWORD(v93) = v47 + v37;
    }

    if (v90 >= v94)
    {
      v90 = v93;
    }

    else
    {
      v90 = v94;
    }
  }

  v95 = v12 + v77 + v86;
  v96 = v12 + v80 + v87;
  v97 = v88 >> v72;
  v98 = v89 >> v72;
  a2[1] = v90;
  v99 = v30 - v42;
  v100 = *(a4 + 5);
  if (v100 >= 1)
  {
    v101 = 1 << (v100 - 1);
    v102 = v101 - 1;
    v103 = -v101;
    if (v99 < v102)
    {
      LODWORD(v102) = v99;
    }

    if (v99 >= v103)
    {
      v99 = v102;
    }

    else
    {
      v99 = v103;
    }
  }

  v104 = v95 >> v72;
  v105 = v96 >> v72;
  a2[2] = v99;
  v106 = v37 - v47;
  v107 = *(a4 + 5);
  if (v107 >= 1)
  {
    v108 = 1 << (v107 - 1);
    v109 = v108 - 1;
    v110 = -v108;
    if (v106 < v109)
    {
      LODWORD(v109) = v106;
    }

    if (v106 >= v110)
    {
      v106 = v109;
    }

    else
    {
      v106 = v110;
    }
  }

  a2[3] = v106;
  v111 = v98 + v97;
  v112 = *(a4 + 5);
  if (v112 >= 1)
  {
    v113 = 1 << (v112 - 1);
    v114 = v113 - 1;
    v115 = -v113;
    if (v111 < v114)
    {
      LODWORD(v114) = v98 + v97;
    }

    if (v111 >= v115)
    {
      v111 = v114;
    }

    else
    {
      v111 = v115;
    }
  }

  a2[4] = v111;
  v116 = v104 + v105;
  v117 = *(a4 + 5);
  if (v117 >= 1)
  {
    v118 = 1 << (v117 - 1);
    v119 = v118 - 1;
    v120 = -v118;
    if (v116 < v119)
    {
      LODWORD(v119) = v104 + v105;
    }

    if (v116 >= v120)
    {
      v116 = v119;
    }

    else
    {
      v116 = v120;
    }
  }

  a2[5] = v116;
  v121 = v97 - v98;
  v122 = *(a4 + 5);
  v123 = 1 << (v122 - 1);
  v124 = v123 - 1;
  v125 = -v123;
  if (v121 < v124)
  {
    LODWORD(v124) = v121;
  }

  if (v121 >= v125)
  {
    LODWORD(v125) = v124;
  }

  if (v122 >= 1)
  {
    v121 = v125;
  }

  a2[6] = v121;
  v126 = v104 - v105;
  v127 = *(a4 + 5);
  v128 = 1 << (v127 - 1);
  v129 = v128 - 1;
  v130 = -v128;
  if (v126 < v129)
  {
    LODWORD(v129) = v126;
  }

  if (v126 >= v130)
  {
    LODWORD(v130) = v129;
  }

  if (v127 >= 1)
  {
    v126 = v130;
  }

  v131 = v4[32];
  v132 = v12 + v131 * v99;
  result = (v132 + v131 * v106) >> v72;
  v134 = v12 + v131 * v121;
  *a2 = v81;
  a2[1] = -v111;
  a2[2] = (v134 + v131 * v126) >> v72;
  a2[3] = -result;
  a2[4] = (v132 + -(v131 * v106)) >> v72;
  a2[5] = -((v134 + -(v131 * v126)) >> v72);
  a2[6] = v116;
  a2[7] = -v90;
  return result;
}

uint64_t av1_iadst16(int *a1, _DWORD *a2, int a3, char *a4)
{
  v4 = &av1_cospi_arr_data[64 * a3 - 640];
  v5 = a1[15];
  *a2 = v5;
  v6 = *a1;
  a2[1] = *a1;
  v7 = a1[13];
  a2[2] = v7;
  v8 = a1[2];
  a2[3] = v8;
  v9 = a1[11];
  a2[4] = v9;
  v10 = a1[4];
  a2[5] = v10;
  v11 = a1[9];
  a2[6] = v11;
  v12 = a1[6];
  a2[7] = v12;
  v13 = a1[7];
  a2[8] = v13;
  v14 = a1[8];
  a2[9] = v14;
  v15 = a1[5];
  a2[10] = v15;
  v16 = a1[10];
  a2[11] = v16;
  v17 = a1[3];
  a2[12] = v17;
  v18 = a1[12];
  a2[13] = v18;
  v19 = a1[1];
  a2[14] = v19;
  v20 = a1[14];
  a2[15] = v20;
  v21 = av1_cospi_arr_data[64 * a3 - 638];
  v22 = av1_cospi_arr_data[64 * a3 - 578];
  v23 = 1 << (a3 - 1);
  v24 = (v23 + v21 * v5 + v22 * v6) >> a3;
  v25 = v23 + -(v6 * v21);
  v26 = av1_cospi_arr_data[64 * a3 - 630];
  v27 = v25 + v22 * v5;
  LODWORD(v25) = av1_cospi_arr_data[64 * a3 - 586];
  v406 = v27 >> a3;
  v409 = (v23 + v26 * v7 + v25 * v8) >> a3;
  v28 = v23 + -(v8 * v26) + v25 * v7;
  LODWORD(v27) = av1_cospi_arr_data[64 * a3 - 622];
  v29 = av1_cospi_arr_data[64 * a3 - 594];
  v30 = v29 * v10;
  v31 = v23 + v27 * v9;
  v32 = -(v10 * v27);
  v33 = av1_cospi_arr_data[64 * a3 - 614];
  v34 = av1_cospi_arr_data[64 * a3 - 602];
  LODWORD(v27) = av1_cospi_arr_data[64 * a3 - 606];
  LODWORD(v25) = av1_cospi_arr_data[64 * a3 - 610];
  v35 = (v23 + v27 * v13 + v25 * v14) >> a3;
  v404 = (v23 + -(v14 * v27) + v25 * v13) >> a3;
  LODWORD(v27) = av1_cospi_arr_data[64 * a3 - 598];
  v36 = av1_cospi_arr_data[64 * a3 - 618];
  v405 = (v23 + v27 * v15 + v36 * v16) >> a3;
  v37 = v23 + -(v16 * v27) + v36 * v15;
  LODWORD(v25) = av1_cospi_arr_data[64 * a3 - 590];
  v38 = av1_cospi_arr_data[64 * a3 - 626];
  v39 = v38 * v18;
  v40 = v23 + v25 * v17;
  v41 = -(v18 * v25);
  v42 = av1_cospi_arr_data[64 * a3 - 582];
  v43 = av1_cospi_arr_data[64 * a3 - 634];
  v403 = v24;
  v44 = v35 + v24;
  v45 = a4[3];
  if (v45 >= 1)
  {
    v46 = 1 << (v45 - 1);
    v47 = v46 - 1;
    v48 = -v46;
    if (v44 < v47)
    {
      LODWORD(v47) = v44;
    }

    if (v44 >= v48)
    {
      v44 = v47;
    }

    else
    {
      v44 = v48;
    }
  }

  v49 = v33 * v11;
  v50 = v42 * v19;
  v51 = v29 * v9;
  v52 = v23 + v32;
  v53 = v38 * v17;
  v54 = v31 + v30;
  v55 = v40 + v39;
  v56 = v28 >> a3;
  v57 = v37 >> a3;
  *a2 = v44;
  v58 = v404 + v406;
  v59 = a4[3];
  if (v59 >= 1)
  {
    v60 = 1 << (v59 - 1);
    v61 = v60 - 1;
    v62 = -v60;
    if (v58 < v61)
    {
      LODWORD(v61) = v404 + v406;
    }

    if (v58 >= v62)
    {
      v58 = v61;
    }

    else
    {
      v58 = v62;
    }
  }

  v63 = -(v12 * v33);
  v64 = -(v20 * v42);
  v65 = v34 * v12;
  v66 = v23 + v49;
  v67 = v43 * v20;
  v68 = v23 + v50;
  v69 = v52 + v51;
  v70 = v23 + v41 + v53;
  v71 = v54 >> a3;
  v72 = v55 >> a3;
  v412 = v58;
  a2[1] = v58;
  v73 = v405 + v409;
  v74 = a4[3];
  if (v74 >= 1)
  {
    v75 = 1 << (v74 - 1);
    v76 = v75 - 1;
    v77 = -v75;
    if (v73 < v76)
    {
      LODWORD(v76) = v405 + v409;
    }

    if (v73 >= v77)
    {
      v73 = v76;
    }

    else
    {
      v73 = v77;
    }
  }

  v78 = v34 * v11;
  v79 = v43 * v19;
  v80 = v68 + v67;
  v81 = v69 >> a3;
  v82 = v70 >> a3;
  v411 = v73;
  a2[2] = v73;
  v83 = v57 + v56;
  v84 = a4[3];
  if (v84 >= 1)
  {
    v85 = 1 << (v84 - 1);
    v86 = v85 - 1;
    v87 = -v85;
    if (v83 < v86)
    {
      LODWORD(v86) = v57 + v56;
    }

    if (v83 >= v87)
    {
      v83 = v86;
    }

    else
    {
      v83 = v87;
    }
  }

  v88 = v23 + v63 + v78;
  v89 = v23 + v64 + v79;
  v90 = (v66 + v65) >> a3;
  v91 = v80 >> a3;
  a2[3] = v83;
  v92 = v72 + v71;
  v93 = a4[3];
  if (v93 >= 1)
  {
    v94 = 1 << (v93 - 1);
    v95 = v94 - 1;
    v96 = -v94;
    if (v92 < v95)
    {
      LODWORD(v95) = v72 + v71;
    }

    if (v92 >= v96)
    {
      v92 = v95;
    }

    else
    {
      v92 = v96;
    }
  }

  v97 = v88 >> a3;
  v98 = v89 >> a3;
  a2[4] = v92;
  v99 = v82 + v81;
  v100 = a4[3];
  if (v100 >= 1)
  {
    v101 = 1 << (v100 - 1);
    v102 = v101 - 1;
    v103 = -v101;
    if (v99 < v102)
    {
      LODWORD(v102) = v82 + v81;
    }

    if (v99 >= v103)
    {
      v99 = v102;
    }

    else
    {
      v99 = v103;
    }
  }

  a2[5] = v99;
  v104 = v91 + v90;
  v105 = a4[3];
  if (v105 >= 1)
  {
    v106 = 1 << (v105 - 1);
    v107 = v106 - 1;
    v108 = -v106;
    if (v104 < v107)
    {
      LODWORD(v107) = v91 + v90;
    }

    if (v104 >= v108)
    {
      v104 = v107;
    }

    else
    {
      v104 = v108;
    }
  }

  a2[6] = v104;
  v109 = v98 + v97;
  v110 = a4[3];
  if (v110 >= 1)
  {
    v111 = 1 << (v110 - 1);
    v112 = v111 - 1;
    v113 = -v111;
    if (v109 < v112)
    {
      LODWORD(v112) = v98 + v97;
    }

    if (v109 >= v113)
    {
      v109 = v112;
    }

    else
    {
      v109 = v113;
    }
  }

  v408 = v109;
  a2[7] = v109;
  v114 = v403 - v35;
  v115 = a4[3];
  if (v115 >= 1)
  {
    v116 = 1 << (v115 - 1);
    v117 = v116 - 1;
    v118 = -v116;
    if (v114 < v117)
    {
      LODWORD(v117) = v114;
    }

    if (v114 >= v118)
    {
      v114 = v117;
    }

    else
    {
      v114 = v118;
    }
  }

  a2[8] = v114;
  v119 = v406 - v404;
  v120 = a4[3];
  v413 = v44;
  if (v120 >= 1)
  {
    v121 = 1 << (v120 - 1);
    v122 = v121 - 1;
    v123 = -v121;
    if (v119 < v122)
    {
      LODWORD(v122) = v406 - v404;
    }

    if (v119 >= v123)
    {
      v119 = v122;
    }

    else
    {
      v119 = v123;
    }
  }

  a2[9] = v119;
  v124 = v409 - v405;
  v125 = a4[3];
  if (v125 >= 1)
  {
    v126 = 1 << (v125 - 1);
    v127 = v126 - 1;
    v128 = -v126;
    if (v124 < v127)
    {
      LODWORD(v127) = v409 - v405;
    }

    if (v124 >= v128)
    {
      v124 = v127;
    }

    else
    {
      v124 = v128;
    }
  }

  a2[10] = v124;
  v129 = v56 - v57;
  v130 = a4[3];
  if (v130 >= 1)
  {
    v131 = 1 << (v130 - 1);
    v132 = v131 - 1;
    v133 = -v131;
    if (v129 < v132)
    {
      LODWORD(v132) = v129;
    }

    if (v129 >= v133)
    {
      v129 = v132;
    }

    else
    {
      v129 = v133;
    }
  }

  a2[11] = v129;
  v134 = v71 - v72;
  v135 = a4[3];
  if (v135 >= 1)
  {
    v136 = 1 << (v135 - 1);
    v137 = v136 - 1;
    v138 = -v136;
    if (v134 < v137)
    {
      LODWORD(v137) = v71 - v72;
    }

    if (v134 >= v138)
    {
      v134 = v137;
    }

    else
    {
      v134 = v138;
    }
  }

  a2[12] = v134;
  v139 = v81 - v82;
  v140 = a4[3];
  if (v140 >= 1)
  {
    v141 = 1 << (v140 - 1);
    v142 = v141 - 1;
    v143 = -v141;
    if (v139 < v142)
    {
      LODWORD(v142) = v139;
    }

    if (v139 >= v143)
    {
      v139 = v142;
    }

    else
    {
      v139 = v143;
    }
  }

  a2[13] = v139;
  v144 = v90 - v91;
  v145 = a4[3];
  if (v145 >= 1)
  {
    v146 = 1 << (v145 - 1);
    v147 = v146 - 1;
    v148 = -v146;
    if (v144 < v147)
    {
      LODWORD(v147) = v90 - v91;
    }

    if (v144 >= v148)
    {
      v144 = v147;
    }

    else
    {
      v144 = v148;
    }
  }

  a2[14] = v144;
  v149 = v97 - v98;
  v150 = a4[3];
  if (v150 >= 1)
  {
    v151 = 1 << (v150 - 1);
    v152 = v151 - 1;
    v153 = -v151;
    if (v149 < v152)
    {
      LODWORD(v152) = v149;
    }

    if (v149 >= v153)
    {
      v149 = v152;
    }

    else
    {
      v149 = v153;
    }
  }

  a2[15] = v149;
  v154 = av1_cospi_arr_data[64 * a3 - 632];
  v155 = av1_cospi_arr_data[64 * a3 - 584];
  v156 = av1_cospi_arr_data[64 * a3 - 600];
  v157 = av1_cospi_arr_data[64 * a3 - 616];
  v158 = v92 + v413;
  v159 = a4[5];
  if (v159 >= 1)
  {
    v160 = 1 << (v159 - 1);
    v161 = v160 - 1;
    v162 = -v160;
    if (v158 < v161)
    {
      LODWORD(v161) = v92 + v413;
    }

    if (v158 >= v162)
    {
      v158 = v161;
    }

    else
    {
      v158 = v162;
    }
  }

  v410 = v158;
  *a2 = v158;
  v163 = v99 + v412;
  v164 = a4[5];
  if (v164 >= 1)
  {
    v165 = 1 << (v164 - 1);
    v166 = v165 - 1;
    v167 = -v165;
    if (v163 < v166)
    {
      LODWORD(v166) = v99 + v412;
    }

    if (v163 >= v167)
    {
      v163 = v166;
    }

    else
    {
      v163 = v167;
    }
  }

  a2[1] = v163;
  v168 = v104 + v411;
  v169 = a4[5];
  v407 = v163;
  if (v169 >= 1)
  {
    v170 = 1 << (v169 - 1);
    v171 = v170 - 1;
    v172 = -v170;
    if (v168 < v171)
    {
      LODWORD(v171) = v104 + v411;
    }

    if (v168 >= v172)
    {
      v168 = v171;
    }

    else
    {
      v168 = v172;
    }
  }

  v173 = v154 * v114;
  v174 = v154 * v139;
  a2[2] = v168;
  v175 = v83;
  v176 = v408 + v83;
  v177 = a4[5];
  if (v177 >= 1)
  {
    v178 = 1 << (v177 - 1);
    v179 = v178 - 1;
    v180 = -v178;
    if (v176 < v179)
    {
      LODWORD(v179) = v408 + v83;
    }

    if (v176 >= v180)
    {
      v176 = v179;
    }

    else
    {
      v176 = v180;
    }
  }

  v181 = -(v119 * v154);
  v182 = v154 * v134;
  v183 = a3;
  v184 = v155 * v119;
  v185 = v23 + v173;
  v186 = -(v134 * v155);
  v187 = v23 + v174;
  a2[3] = v176;
  v188 = v413 - v92;
  v189 = a4[5];
  if (v189 >= 1)
  {
    v190 = 1 << (v189 - 1);
    v191 = v190 - 1;
    v192 = -v190;
    if (v188 < v191)
    {
      LODWORD(v191) = v188;
    }

    if (v188 >= v192)
    {
      v188 = v191;
    }

    else
    {
      v188 = v192;
    }
  }

  v193 = v156 * v124;
  v194 = v156 * v149;
  v195 = v155 * v114;
  v196 = v23 + v181;
  v197 = v155 * v139;
  v198 = v23 + v182;
  v199 = v185 + v184;
  v200 = v187 + v186;
  a2[4] = v188;
  v201 = v412 - v99;
  v202 = a4[5];
  if (v202 >= 1)
  {
    v203 = 1 << (v202 - 1);
    v204 = v203 - 1;
    v205 = -v203;
    if (v201 < v204)
    {
      LODWORD(v204) = v201;
    }

    if (v201 >= v205)
    {
      v201 = v204;
    }

    else
    {
      v201 = v205;
    }
  }

  v206 = -(v129 * v156);
  v207 = v156 * v144;
  v208 = v157 * v129;
  v209 = v23 + v193;
  v210 = -(v144 * v157);
  v211 = v23 + v194;
  v212 = v196 + v195;
  v213 = v198 + v197;
  v214 = v199 >> v183;
  v215 = v200 >> v183;
  a2[5] = v201;
  v216 = v411 - v104;
  v217 = a4[5];
  if (v217 >= 1)
  {
    v218 = 1 << (v217 - 1);
    v219 = v218 - 1;
    v220 = -v218;
    if (v216 < v219)
    {
      LODWORD(v219) = v411 - v104;
    }

    if (v216 >= v220)
    {
      v216 = v219;
    }

    else
    {
      v216 = v220;
    }
  }

  v221 = v157 * v124;
  v222 = v209 + v208;
  v223 = v211 + v210;
  v224 = v212 >> v183;
  v225 = v213 >> v183;
  a2[6] = v216;
  v226 = v175 - v408;
  v227 = a4[5];
  if (v227 >= 1)
  {
    v228 = 1 << (v227 - 1);
    v229 = v228 - 1;
    v230 = -v228;
    if (v226 < v229)
    {
      LODWORD(v229) = v226;
    }

    if (v226 >= v230)
    {
      v226 = v229;
    }

    else
    {
      v226 = v230;
    }
  }

  v231 = v176;
  v232 = v23 + v206 + v221;
  v233 = v23 + v207 + v157 * v149;
  v234 = v222 >> v183;
  v235 = v223 >> v183;
  a2[7] = v226;
  v236 = v215 + v214;
  v237 = a4[5];
  v238 = v407;
  if (v237 >= 1)
  {
    v239 = 1 << (v237 - 1);
    v240 = v239 - 1;
    v241 = -v239;
    if (v236 < v240)
    {
      LODWORD(v240) = v215 + v214;
    }

    if (v236 >= v241)
    {
      v236 = v240;
    }

    else
    {
      v236 = v241;
    }
  }

  v242 = v232 >> v183;
  v243 = v233 >> v183;
  a2[8] = v236;
  v244 = v224 + v225;
  v245 = a4[5];
  if (v245 >= 1)
  {
    v246 = 1 << (v245 - 1);
    v247 = v246 - 1;
    v248 = -v246;
    if (v244 < v247)
    {
      LODWORD(v247) = v224 + v225;
    }

    if (v244 >= v248)
    {
      v244 = v247;
    }

    else
    {
      v244 = v248;
    }
  }

  a2[9] = v244;
  v249 = v235 + v234;
  v250 = a4[5];
  if (v250 >= 1)
  {
    v251 = 1 << (v250 - 1);
    v252 = v251 - 1;
    v253 = -v251;
    if (v249 < v252)
    {
      LODWORD(v252) = v235 + v234;
    }

    if (v249 >= v253)
    {
      v249 = v252;
    }

    else
    {
      v249 = v253;
    }
  }

  a2[10] = v249;
  v254 = v242 + v243;
  v255 = a4[5];
  if (v255 >= 1)
  {
    v256 = 1 << (v255 - 1);
    v257 = v256 - 1;
    v258 = -v256;
    if (v254 < v257)
    {
      LODWORD(v257) = v242 + v243;
    }

    if (v254 >= v258)
    {
      v254 = v257;
    }

    else
    {
      v254 = v258;
    }
  }

  a2[11] = v254;
  v259 = v214 - v215;
  v260 = a4[5];
  if (v260 >= 1)
  {
    v261 = 1 << (v260 - 1);
    v262 = v261 - 1;
    v263 = -v261;
    if (v259 < v262)
    {
      LODWORD(v262) = v214 - v215;
    }

    if (v259 >= v263)
    {
      v259 = v262;
    }

    else
    {
      v259 = v263;
    }
  }

  a2[12] = v259;
  v264 = v224 - v225;
  v265 = a4[5];
  if (v265 >= 1)
  {
    v266 = 1 << (v265 - 1);
    v267 = v266 - 1;
    v268 = -v266;
    if (v264 < v267)
    {
      LODWORD(v267) = v264;
    }

    if (v264 >= v268)
    {
      v264 = v267;
    }

    else
    {
      v264 = v268;
    }
  }

  a2[13] = v264;
  v269 = v234 - v235;
  v270 = a4[5];
  if (v270 >= 1)
  {
    v271 = 1 << (v270 - 1);
    v272 = v271 - 1;
    v273 = -v271;
    if (v269 < v272)
    {
      LODWORD(v272) = v234 - v235;
    }

    if (v269 >= v273)
    {
      v269 = v272;
    }

    else
    {
      v269 = v273;
    }
  }

  a2[14] = v269;
  v274 = v242 - v243;
  v275 = a4[5];
  if (v275 >= 1)
  {
    v276 = 1 << (v275 - 1);
    v277 = v276 - 1;
    v278 = -v276;
    if (v274 < v277)
    {
      LODWORD(v277) = v242 - v243;
    }

    if (v274 >= v278)
    {
      v274 = v277;
    }

    else
    {
      v274 = v278;
    }
  }

  a2[15] = v274;
  v279 = v4[16];
  v280 = v4[48];
  v281 = v280 * v201;
  v282 = v23 + v279 * v188;
  v283 = -(v279 * v201);
  v284 = -(v280 * v216);
  v285 = v279 * v216;
  v286 = v168 + v410;
  v287 = a4[7];
  if (v287 >= 1)
  {
    v288 = 1 << (v287 - 1);
    v289 = v288 - 1;
    v290 = -v288;
    if (v286 < v289)
    {
      LODWORD(v289) = v168 + v410;
    }

    if (v286 >= v290)
    {
      v286 = v289;
    }

    else
    {
      v286 = v290;
    }
  }

  v291 = v280 * v188;
  v292 = v23 + v283;
  v293 = v280 * v226;
  v294 = v23 + v285;
  v295 = v282 + v281;
  v296 = v23 + v279 * v226 + v284;
  *a2 = v286;
  v297 = v231 + v407;
  v298 = a4[7];
  if (v298 >= 1)
  {
    v299 = 1 << (v298 - 1);
    v300 = v299 - 1;
    v301 = -v299;
    if (v297 < v300)
    {
      LODWORD(v300) = v231 + v407;
    }

    if (v297 >= v301)
    {
      v297 = v300;
    }

    else
    {
      v297 = v301;
    }
  }

  v302 = v292 + v291;
  v303 = v295 >> v183;
  v304 = v296 >> v183;
  a2[1] = v297;
  v305 = v410 - v168;
  v306 = a4[7];
  if (v306 >= 1)
  {
    v307 = 1 << (v306 - 1);
    v308 = v307 - 1;
    v309 = -v307;
    if (v305 < v308)
    {
      LODWORD(v308) = v410 - v168;
    }

    if (v305 >= v309)
    {
      v305 = v308;
    }

    else
    {
      v305 = v309;
    }

    v238 = v407;
  }

  v310 = v302 >> v183;
  v311 = (v294 + v293) >> v183;
  a2[2] = v305;
  v312 = v238 - v231;
  v313 = a4[7];
  if (v313 >= 1)
  {
    v314 = 1 << (v313 - 1);
    v315 = v314 - 1;
    v316 = -v314;
    if (v312 < v315)
    {
      LODWORD(v315) = v312;
    }

    if (v312 >= v316)
    {
      v312 = v315;
    }

    else
    {
      v312 = v316;
    }
  }

  a2[3] = v312;
  v317 = v304 + v303;
  v318 = a4[7];
  if (v318 >= 1)
  {
    v319 = 1 << (v318 - 1);
    v320 = v319 - 1;
    v321 = -v319;
    if (v317 < v320)
    {
      LODWORD(v320) = v304 + v303;
    }

    if (v317 >= v321)
    {
      v317 = v320;
    }

    else
    {
      v317 = v321;
    }
  }

  a2[4] = v317;
  result = (v310 + v311);
  v323 = a4[7];
  if (v323 >= 1)
  {
    v324 = 1 << (v323 - 1);
    v325 = v324 - 1;
    v326 = -v324;
    if (result < v325)
    {
      LODWORD(v325) = v310 + v311;
    }

    if (result >= v326)
    {
      result = v325;
    }

    else
    {
      result = v326;
    }
  }

  a2[5] = result;
  v327 = v303 - v304;
  v328 = a4[7];
  if (v328 >= 1)
  {
    v329 = 1 << (v328 - 1);
    v330 = v329 - 1;
    v331 = -v329;
    if (v327 < v330)
    {
      LODWORD(v330) = v327;
    }

    if (v327 >= v331)
    {
      v327 = v330;
    }

    else
    {
      v327 = v331;
    }
  }

  v332 = v279 * v259;
  v333 = v279 * v274;
  a2[6] = v327;
  v334 = v310 - v311;
  v335 = a4[7];
  if (v335 >= 1)
  {
    v336 = 1 << (v335 - 1);
    v337 = v336 - 1;
    v338 = -v336;
    if (v334 < v337)
    {
      LODWORD(v337) = v334;
    }

    if (v334 >= v338)
    {
      v334 = v337;
    }

    else
    {
      v334 = v338;
    }
  }

  v339 = -(v279 * v264);
  v340 = v279 * v269;
  v341 = v280 * v264;
  v342 = v23 + v332;
  v343 = -(v280 * v269);
  v344 = v23 + v333;
  a2[7] = v334;
  v345 = v249 + v236;
  v346 = a4[7];
  if (v346 >= 1)
  {
    v347 = 1 << (v346 - 1);
    v348 = v347 - 1;
    v349 = -v347;
    if (v345 < v348)
    {
      LODWORD(v348) = v249 + v236;
    }

    if (v345 >= v349)
    {
      v345 = v348;
    }

    else
    {
      v345 = v349;
    }
  }

  v350 = v280 * v259;
  v351 = v23 + v339;
  v352 = v280 * v274;
  v353 = v23 + v340;
  v354 = v342 + v341;
  v355 = v344 + v343;
  a2[8] = v345;
  v356 = v254 + v244;
  v357 = a4[7];
  if (v357 >= 1)
  {
    v358 = 1 << (v357 - 1);
    v359 = v358 - 1;
    v360 = -v358;
    if (v356 < v359)
    {
      LODWORD(v359) = v254 + v244;
    }

    if (v356 >= v360)
    {
      v356 = v359;
    }

    else
    {
      v356 = v360;
    }
  }

  v361 = v353 + v352;
  v362 = v354 >> v183;
  v363 = v355 >> v183;
  a2[9] = v356;
  v364 = v236 - v249;
  v365 = a4[7];
  if (v365 >= 1)
  {
    v366 = 1 << (v365 - 1);
    v367 = v366 - 1;
    v368 = -v366;
    if (v364 < v367)
    {
      LODWORD(v367) = v364;
    }

    if (v364 >= v368)
    {
      v364 = v367;
    }

    else
    {
      v364 = v368;
    }
  }

  v369 = (v351 + v350) >> v183;
  v370 = v361 >> v183;
  a2[10] = v364;
  v371 = v244 - v254;
  v372 = a4[7];
  if (v372 >= 1)
  {
    v373 = 1 << (v372 - 1);
    v374 = v373 - 1;
    v375 = -v373;
    if (v371 < v374)
    {
      LODWORD(v374) = v371;
    }

    if (v371 >= v375)
    {
      v371 = v374;
    }

    else
    {
      v371 = v375;
    }
  }

  a2[11] = v371;
  v376 = v363 + v362;
  v377 = a4[7];
  if (v377 >= 1)
  {
    v378 = 1 << (v377 - 1);
    v379 = v378 - 1;
    v380 = -v378;
    if (v376 < v379)
    {
      LODWORD(v379) = v363 + v362;
    }

    if (v376 >= v380)
    {
      v376 = v379;
    }

    else
    {
      v376 = v380;
    }
  }

  a2[12] = v376;
  v381 = v369 + v370;
  v382 = a4[7];
  if (v382 >= 1)
  {
    v383 = 1 << (v382 - 1);
    v384 = v383 - 1;
    v385 = -v383;
    if (v381 < v384)
    {
      LODWORD(v384) = v369 + v370;
    }

    if (v381 >= v385)
    {
      v381 = v384;
    }

    else
    {
      v381 = v385;
    }
  }

  a2[13] = v381;
  v386 = v362 - v363;
  v387 = a4[7];
  if (v387 >= 1)
  {
    v388 = 1 << (v387 - 1);
    v389 = v388 - 1;
    v390 = -v388;
    if (v386 < v389)
    {
      LODWORD(v389) = v386;
    }

    if (v386 >= v390)
    {
      v386 = v389;
    }

    else
    {
      v386 = v390;
    }
  }

  a2[14] = v386;
  v391 = v369 - v370;
  v392 = a4[7];
  if (v392 >= 1)
  {
    v393 = 1 << (v392 - 1);
    v394 = v393 - 1;
    v395 = -v393;
    if (v391 < v394)
    {
      LODWORD(v394) = v391;
    }

    if (v391 >= v395)
    {
      v391 = v394;
    }

    else
    {
      v391 = v395;
    }
  }

  v396 = v4[32];
  v397 = v23 + v396 * v305;
  v398 = (v397 + v396 * v312) >> v183;
  v399 = (v397 + -(v396 * v312)) >> v183;
  v400 = v23 + v396 * v327;
  v401 = v23 + v396 * v364;
  v402 = v23 + v396 * v386;
  *a2 = v286;
  a2[1] = -v345;
  a2[2] = v376;
  a2[3] = -v317;
  a2[4] = (v400 + v396 * v334) >> v183;
  a2[5] = -((v402 + v396 * v391) >> v183);
  a2[6] = (v401 + v396 * v371) >> v183;
  a2[7] = -v398;
  a2[8] = v399;
  a2[9] = -((v401 + -(v396 * v371)) >> v183);
  a2[10] = (v402 + -(v396 * v391)) >> v183;
  a2[11] = -((v400 + -(v396 * v334)) >> v183);
  a2[12] = result;
  a2[13] = -v381;
  a2[14] = v356;
  a2[15] = -v297;
  return result;
}

int *av1_iidentity4_c(int *result, _DWORD *a2)
{
  *a2 = (5793 * *result + 2048) >> 12;
  a2[1] = (5793 * result[1] + 2048) >> 12;
  a2[2] = (5793 * result[2] + 2048) >> 12;
  a2[3] = (5793 * result[3] + 2048) >> 12;
  return result;
}

_DWORD *av1_iidentity8_c(_DWORD *result, _DWORD *a2)
{
  *a2 = 2 * *result;
  a2[1] = 2 * result[1];
  a2[2] = 2 * result[2];
  a2[3] = 2 * result[3];
  a2[4] = 2 * result[4];
  a2[5] = 2 * result[5];
  a2[6] = 2 * result[6];
  a2[7] = 2 * result[7];
  return result;
}

int *av1_iidentity16_c(int *result, _DWORD *a2)
{
  *a2 = (11586 * *result + 2048) >> 12;
  a2[1] = (11586 * result[1] + 2048) >> 12;
  a2[2] = (11586 * result[2] + 2048) >> 12;
  a2[3] = (11586 * result[3] + 2048) >> 12;
  a2[4] = (11586 * result[4] + 2048) >> 12;
  a2[5] = (11586 * result[5] + 2048) >> 12;
  a2[6] = (11586 * result[6] + 2048) >> 12;
  a2[7] = (11586 * result[7] + 2048) >> 12;
  a2[8] = (11586 * result[8] + 2048) >> 12;
  a2[9] = (11586 * result[9] + 2048) >> 12;
  a2[10] = (11586 * result[10] + 2048) >> 12;
  a2[11] = (11586 * result[11] + 2048) >> 12;
  a2[12] = (11586 * result[12] + 2048) >> 12;
  a2[13] = (11586 * result[13] + 2048) >> 12;
  a2[14] = (11586 * result[14] + 2048) >> 12;
  a2[15] = (11586 * result[15] + 2048) >> 12;
  return result;
}

uint64_t av1_idct64(int *a1, int *a2, int a3, char *a4)
{
  v4 = *a1;
  *a2 = *a1;
  v2069 = a1[32];
  a2[1] = v2069;
  v2074 = a1[16];
  a2[2] = v2074;
  v5 = a1[48];
  a2[3] = v5;
  v6 = a1[8];
  a2[4] = v6;
  v7 = a1[40];
  a2[5] = v7;
  v8 = a1[24];
  a2[6] = v8;
  v9 = a1[56];
  a2[7] = v9;
  v10 = a1[4];
  a2[8] = v10;
  v11 = a1[36];
  a2[9] = v11;
  v12 = a1[20];
  a2[10] = v12;
  v13 = a1[52];
  a2[11] = v13;
  v14 = a1[12];
  a2[12] = v14;
  v15 = a1[44];
  a2[13] = v15;
  v16 = a1[28];
  a2[14] = v16;
  v17 = a1[60];
  a2[15] = v17;
  v2030 = a1[2];
  a2[16] = v2030;
  v2009 = a1[34];
  a2[17] = v2009;
  v1775 = a1[18];
  a2[18] = v1775;
  v1780 = a1[50];
  a2[19] = v1780;
  v1798 = a1[10];
  a2[20] = v1798;
  v1815 = a1[42];
  a2[21] = v1815;
  v1852 = a1[26];
  a2[22] = v1852;
  v1857 = a1[58];
  a2[23] = v1857;
  v18 = 1 << (a3 - 1);
  v1761 = a1[6];
  a2[24] = v1761;
  v1756 = a1[38];
  a2[25] = v1756;
  v1742 = a1[22];
  a2[26] = v1742;
  v1736 = a1[54];
  a2[27] = v1736;
  v19 = a1[14];
  a2[28] = v19;
  v1714 = a1[46];
  a2[29] = v1714;
  v1862 = a1[30];
  a2[30] = v1862;
  v20 = a1[62];
  a2[31] = v20;
  v21 = v20;
  v1712 = v20;
  v22 = a1[1];
  a2[32] = v22;
  v23 = a1[33];
  a2[33] = v23;
  v24 = a1[17];
  a2[34] = v24;
  v25 = a1[49];
  a2[35] = v25;
  v2089 = a1[9];
  a2[36] = v2089;
  v2085 = a1[41];
  a2[37] = v2085;
  v2077 = a1[25];
  a2[38] = v2077;
  v2066 = a1[57];
  a2[39] = v2066;
  v1820 = a1[5];
  a2[40] = v1820;
  v2001 = a1[37];
  a2[41] = v2001;
  v1975 = a1[21];
  a2[42] = v1975;
  v1960 = a1[53];
  a2[43] = v1960;
  v1719 = a1[13];
  a2[44] = v1719;
  v1965 = a1[45];
  a2[45] = v1965;
  v1912 = a1[29];
  a2[46] = v1912;
  v1907 = a1[61];
  a2[47] = v1907;
  v1717 = a1[3];
  a2[48] = v1717;
  v1893 = a1[35];
  a2[49] = v1893;
  v1718 = a1[19];
  a2[50] = v1718;
  v1970 = a1[51];
  a2[51] = v1970;
  v1824 = a1[11];
  a2[52] = v1824;
  v1940 = a1[43];
  a2[53] = v1940;
  v1794 = a1[27];
  a2[54] = v1794;
  v1979 = a1[59];
  a2[55] = v1979;
  v2013 = a1[7];
  a2[56] = v2013;
  v2005 = a1[39];
  a2[57] = v2005;
  v2063 = a1[23];
  a2[58] = v2063;
  v2058 = a1[55];
  a2[59] = v2058;
  v26 = a1[15];
  a2[60] = v26;
  v27 = a1[47];
  a2[61] = v27;
  v28 = a1[31];
  a2[62] = v28;
  v29 = a1[63];
  a2[63] = v29;
  v1803 = v22;
  v1727 = av1_cospi_arr_data[64 * a3 - 577];
  v1728 = v29;
  v1732 = av1_cospi_arr_data[64 * a3 - 639];
  v1747 = v18 + v1727 * v22 + -(v29 * v1732);
  v1790 = v23;
  v1726 = av1_cospi_arr_data[64 * a3 - 609];
  v1730 = v25;
  v1731 = av1_cospi_arr_data[64 * a3 - 607];
  v1729 = v28;
  v1807 = v24;
  v1721 = av1_cospi_arr_data[64 * a3 - 593];
  v1724 = v26;
  v1725 = av1_cospi_arr_data[64 * a3 - 623];
  v1734 = v18 + v1721 * v24 + -(v27 * v1725);
  v1720 = av1_cospi_arr_data[64 * a3 - 625];
  v1722 = av1_cospi_arr_data[64 * a3 - 591];
  v1723 = v27;
  v1715 = v18 + v1720 * v25 + -(v26 * v1722);
  v2039 = av1_cospi_arr_data[64 * a3 - 585];
  v2053 = av1_cospi_arr_data[64 * a3 - 631];
  v2035 = av1_cospi_arr_data[64 * a3 - 617];
  v2049 = av1_cospi_arr_data[64 * a3 - 599];
  v1987 = av1_cospi_arr_data[64 * a3 - 601];
  v1996 = av1_cospi_arr_data[64 * a3 - 615];
  v1983 = av1_cospi_arr_data[64 * a3 - 633];
  v1991 = av1_cospi_arr_data[64 * a3 - 583];
  v1945 = av1_cospi_arr_data[64 * a3 - 581];
  v1955 = av1_cospi_arr_data[64 * a3 - 635];
  v1936 = av1_cospi_arr_data[64 * a3 - 613];
  v1950 = av1_cospi_arr_data[64 * a3 - 603];
  v1922 = av1_cospi_arr_data[64 * a3 - 597];
  v1931 = av1_cospi_arr_data[64 * a3 - 619];
  v1917 = av1_cospi_arr_data[64 * a3 - 629];
  v1927 = av1_cospi_arr_data[64 * a3 - 587];
  v1888 = av1_cospi_arr_data[64 * a3 - 589];
  v1903 = av1_cospi_arr_data[64 * a3 - 627];
  v1883 = av1_cospi_arr_data[64 * a3 - 621];
  v1898 = av1_cospi_arr_data[64 * a3 - 595];
  v1871 = av1_cospi_arr_data[64 * a3 - 605];
  v1879 = av1_cospi_arr_data[64 * a3 - 611];
  v1867 = av1_cospi_arr_data[64 * a3 - 637];
  v1875 = av1_cospi_arr_data[64 * a3 - 579];
  v2043 = v4;
  *a2 = v4;
  a2[1] = v2069;
  a2[2] = v2074;
  a2[3] = v5;
  v2046 = v5;
  v1849 = v6;
  a2[4] = v6;
  a2[5] = v7;
  v1842 = v7;
  v1838 = v8;
  a2[6] = v8;
  a2[7] = v9;
  v1846 = v9;
  v2081 = v10;
  a2[8] = v10;
  a2[9] = v11;
  v2026 = v11;
  v1833 = v12;
  a2[10] = v12;
  a2[11] = v13;
  v1828 = v13;
  v1811 = v14;
  a2[12] = v14;
  a2[13] = v15;
  v1785 = v15;
  v2022 = v16;
  a2[14] = v16;
  a2[15] = v17;
  v2018 = v17;
  v1713 = av1_cospi_arr_data[64 * a3 - 578];
  v1711 = av1_cospi_arr_data[64 * a3 - 638];
  v1766 = (v18 + v1713 * v2030 + -(v21 * v1711)) >> a3;
  a2[16] = v1766;
  v1709 = av1_cospi_arr_data[64 * a3 - 606];
  v1710 = av1_cospi_arr_data[64 * a3 - 610];
  v1752 = (v18 + v1710 * v2009 + -(v1862 * v1709)) >> a3;
  a2[17] = v1752;
  v30 = av1_cospi_arr_data[64 * a3 - 594];
  v31 = av1_cospi_arr_data[64 * a3 - 622];
  v1708 = (v18 + v30 * v1775 + -(v1714 * v31)) >> a3;
  a2[18] = v1708;
  v32 = av1_cospi_arr_data[64 * a3 - 626];
  v33 = av1_cospi_arr_data[64 * a3 - 590];
  v1707 = (v18 + v32 * v1780 + -(v19 * v33)) >> a3;
  a2[19] = v1707;
  v34 = av1_cospi_arr_data[64 * a3 - 586];
  v35 = av1_cospi_arr_data[64 * a3 - 630];
  v1706 = (v18 + v34 * v1798 + -(v1736 * v35)) >> a3;
  a2[20] = v1706;
  v36 = av1_cospi_arr_data[64 * a3 - 618];
  v37 = av1_cospi_arr_data[64 * a3 - 598];
  v1705 = (v18 + v36 * v1815 + -(v1742 * v37)) >> a3;
  a2[21] = v1705;
  v38 = av1_cospi_arr_data[64 * a3 - 602];
  v39 = av1_cospi_arr_data[64 * a3 - 614];
  v1771 = (v18 + v38 * v1852 + -(v1756 * v39)) >> a3;
  a2[22] = v1771;
  v40 = av1_cospi_arr_data[64 * a3 - 634];
  v41 = av1_cospi_arr_data[64 * a3 - 582];
  v42 = v18 + v40 * v1857 + -(v1761 * v41);
  v43 = v18 + v40 * v1761 + v41 * v1857;
  v44 = v18 + v38 * v1756 + v39 * v1852;
  v45 = v18 + v36 * v1742 + v37 * v1815;
  v46 = v18 + v34 * v1736 + v35 * v1798;
  v47 = v18 + v32 * v19 + v33 * v1780;
  v48 = v18;
  v49 = v18 + v1710 * v1862 + v1709 * v2009;
  v50 = v1747 >> a3;
  v51 = (v18 + v1726 * v23 + -(v28 * v1731)) >> a3;
  v52 = v1734 >> a3;
  v53 = v1715 >> a3;
  a2[23] = v42 >> a3;
  a2[24] = v43 >> a3;
  v1739 = v43 >> a3;
  v1735 = v42 >> a3;
  v1737 = v44 >> a3;
  a2[25] = v44 >> a3;
  a2[26] = v45 >> a3;
  v1748 = v45 >> a3;
  v1743 = v46 >> a3;
  a2[27] = v46 >> a3;
  a2[28] = v47 >> a3;
  v1762 = v47 >> a3;
  v1757 = (v18 + v30 * v1714 + v31 * v1775) >> a3;
  a2[29] = v1757;
  a2[30] = v49 >> a3;
  v1781 = v49 >> a3;
  v1776 = (v18 + v1713 * v1712 + v1711 * v2030) >> a3;
  a2[31] = v1776;
  v54 = v51 + v50;
  v55 = a4[3];
  if (v55 >= 1)
  {
    v56 = 1 << (v55 - 1);
    v57 = v56 - 1;
    v58 = -v56;
    if (v54 < v57)
    {
      LODWORD(v57) = v51 + v50;
    }

    if (v54 >= v58)
    {
      v54 = v57;
    }

    else
    {
      v54 = v58;
    }
  }

  a2[32] = v54;
  v59 = v50 - v51;
  v60 = a4[3];
  v1863 = v54;
  if (v60 >= 1)
  {
    v61 = 1 << (v60 - 1);
    v62 = v61 - 1;
    v63 = -v61;
    if (v59 < v62)
    {
      LODWORD(v62) = v59;
    }

    if (v59 >= v63)
    {
      v59 = v62;
    }

    else
    {
      v59 = v63;
    }
  }

  v64 = (v18 + v2039 * v2089 + -(v2058 * v2053)) >> a3;
  v65 = (v18 + v2035 * v2085 + -(v2063 * v2049)) >> a3;
  a2[33] = v59;
  v66 = v53 - v52;
  v67 = a4[3];
  if (v67 >= 1)
  {
    v68 = 1 << (v67 - 1);
    v69 = v68 - 1;
    v70 = -v68;
    if (v66 < v69)
    {
      LODWORD(v69) = v53 - v52;
    }

    if (v66 >= v70)
    {
      v66 = v69;
    }

    else
    {
      v66 = v70;
    }
  }

  a2[34] = v66;
  v71 = v53 + v52;
  v72 = a4[3];
  if (v72 >= 1)
  {
    v73 = 1 << (v72 - 1);
    v74 = v73 - 1;
    v75 = -v73;
    if (v71 < v74)
    {
      LODWORD(v74) = v71;
    }

    if (v71 >= v75)
    {
      v71 = v74;
    }

    else
    {
      v71 = v75;
    }
  }

  v76 = (v48 + v1987 * v2077 + -(v2005 * v1996)) >> a3;
  v77 = (v48 + v1983 * v2066 + -(v2013 * v1991)) >> a3;
  a2[35] = v71;
  v78 = v65 + v64;
  v79 = a4[3];
  v1816 = v71;
  if (v79 >= 1)
  {
    v80 = 1 << (v79 - 1);
    v81 = v80 - 1;
    v82 = -v80;
    if (v78 < v81)
    {
      LODWORD(v81) = v65 + v64;
    }

    if (v78 >= v82)
    {
      v78 = v81;
    }

    else
    {
      v78 = v82;
    }
  }

  a2[36] = v78;
  v83 = v64 - v65;
  v84 = a4[3];
  v1858 = v78;
  if (v84 >= 1)
  {
    v85 = 1 << (v84 - 1);
    v86 = v85 - 1;
    v87 = -v85;
    if (v83 < v86)
    {
      LODWORD(v86) = v64 - v65;
    }

    if (v83 >= v87)
    {
      v83 = v86;
    }

    else
    {
      v83 = v87;
    }
  }

  v88 = (v48 + v1945 * v1820 + -(v1979 * v1955)) >> a3;
  v89 = (v48 + v1936 * v2001 + -(v1794 * v1950)) >> a3;
  a2[37] = v83;
  v90 = v77 - v76;
  v91 = a4[3];
  if (v91 >= 1)
  {
    v92 = 1 << (v91 - 1);
    v93 = v92 - 1;
    v94 = -v92;
    if (v90 < v93)
    {
      LODWORD(v93) = v77 - v76;
    }

    if (v90 >= v94)
    {
      v90 = v93;
    }

    else
    {
      v90 = v94;
    }
  }

  a2[38] = v90;
  v95 = v77 + v76;
  v96 = a4[3];
  if (v96 >= 1)
  {
    v97 = 1 << (v96 - 1);
    v98 = v97 - 1;
    v99 = -v97;
    if (v95 < v98)
    {
      LODWORD(v98) = v95;
    }

    if (v95 >= v99)
    {
      v95 = v98;
    }

    else
    {
      v95 = v99;
    }
  }

  v100 = (v48 + v1922 * v1975 + -(v1940 * v1931)) >> a3;
  v101 = (v48 + v1917 * v1960 + -(v1824 * v1927)) >> a3;
  a2[39] = v95;
  v102 = v89 + v88;
  v103 = a4[3];
  if (v103 >= 1)
  {
    v104 = 1 << (v103 - 1);
    v105 = v104 - 1;
    v106 = -v104;
    if (v102 < v105)
    {
      LODWORD(v105) = v89 + v88;
    }

    if (v102 >= v106)
    {
      v102 = v105;
    }

    else
    {
      v102 = v106;
    }
  }

  a2[40] = v102;
  v107 = v88 - v89;
  v108 = a4[3];
  v2031 = v66;
  if (v108 >= 1)
  {
    v109 = 1 << (v108 - 1);
    v110 = v109 - 1;
    v111 = -v109;
    if (v107 < v110)
    {
      LODWORD(v110) = v107;
    }

    if (v107 >= v111)
    {
      v107 = v110;
    }

    else
    {
      v107 = v111;
    }
  }

  v112 = (v48 + v1888 * v1719 + -(v1970 * v1903)) >> a3;
  v113 = (v48 + v1883 * v1965 + -(v1718 * v1898)) >> a3;
  a2[41] = v107;
  v114 = v101 - v100;
  v115 = a4[3];
  if (v115 >= 1)
  {
    v116 = 1 << (v115 - 1);
    v117 = v116 - 1;
    v118 = -v116;
    if (v114 < v117)
    {
      LODWORD(v117) = v101 - v100;
    }

    if (v114 >= v118)
    {
      v114 = v117;
    }

    else
    {
      v114 = v118;
    }
  }

  a2[42] = v114;
  v119 = v101 + v100;
  v120 = a4[3];
  v1799 = v95;
  if (v120 < 1)
  {
    LODWORD(v122) = v119;
  }

  else
  {
    v121 = 1 << (v120 - 1);
    v122 = v121 - 1;
    v123 = -v121;
    if (v119 < v122)
    {
      LODWORD(v122) = v119;
    }

    if (v119 < v123)
    {
      LODWORD(v122) = v123;
    }
  }

  v124 = v1879 * v1912;
  v125 = (v48 + v1871 * v1912 + -(v1893 * v1879)) >> a3;
  v126 = (v48 + v1867 * v1907 + -(v1717 * v1875)) >> a3;
  v1913 = v122;
  a2[43] = v122;
  v127 = v113 + v112;
  v128 = a4[3];
  if (v128 >= 1)
  {
    v129 = 1 << (v128 - 1);
    v130 = v129 - 1;
    v131 = -v129;
    if (v127 < v130)
    {
      LODWORD(v130) = v113 + v112;
    }

    if (v127 >= v131)
    {
      v127 = v130;
    }

    else
    {
      v127 = v131;
    }
  }

  v132 = v1888 * v1970;
  a2[44] = v127;
  v133 = v112 - v113;
  v134 = a4[3];
  if (v134 >= 1)
  {
    v135 = 1 << (v134 - 1);
    v136 = v135 - 1;
    v137 = -v135;
    if (v133 < v136)
    {
      LODWORD(v136) = v133;
    }

    if (v133 >= v137)
    {
      v133 = v136;
    }

    else
    {
      v133 = v137;
    }
  }

  v138 = (v48 + v1867 * v1717 + v1875 * v1907) >> a3;
  v139 = (v48 + v1871 * v1893 + v124) >> a3;
  a2[45] = v133;
  v140 = v126 - v125;
  v141 = a4[3];
  if (v141 >= 1)
  {
    v142 = 1 << (v141 - 1);
    v143 = v142 - 1;
    v144 = -v142;
    if (v140 < v143)
    {
      LODWORD(v143) = v126 - v125;
    }

    if (v140 >= v144)
    {
      v140 = v143;
    }

    else
    {
      v140 = v144;
    }
  }

  a2[46] = v140;
  v145 = v126 + v125;
  v146 = a4[3];
  v1971 = v133;
  if (v146 >= 1)
  {
    v147 = 1 << (v146 - 1);
    v148 = v147 - 1;
    v149 = -v147;
    if (v145 < v148)
    {
      LODWORD(v148) = v145;
    }

    if (v145 >= v149)
    {
      v145 = v148;
    }

    else
    {
      v145 = v149;
    }
  }

  v150 = (v48 + v1883 * v1718 + v1898 * v1965) >> a3;
  v151 = (v48 + v132 + v1903 * v1719) >> a3;
  a2[47] = v145;
  v152 = v138 + v139;
  v153 = a4[3];
  if (v153 >= 1)
  {
    v154 = 1 << (v153 - 1);
    v155 = v154 - 1;
    v156 = -v154;
    if (v152 < v155)
    {
      LODWORD(v155) = v138 + v139;
    }

    if (v152 >= v156)
    {
      v152 = v155;
    }

    else
    {
      v152 = v156;
    }
  }

  a2[48] = v152;
  v157 = v138 - v139;
  v158 = a4[3];
  if (v158 >= 1)
  {
    v159 = 1 << (v158 - 1);
    v160 = v159 - 1;
    v161 = -v159;
    if (v157 < v160)
    {
      LODWORD(v160) = v157;
    }

    if (v157 >= v161)
    {
      v157 = v160;
    }

    else
    {
      v157 = v161;
    }
  }

  v162 = (v48 + v1917 * v1824 + v1927 * v1960) >> a3;
  v163 = (v48 + v1922 * v1940 + v1931 * v1975) >> a3;
  a2[49] = v157;
  v164 = v151 - v150;
  v165 = a4[3];
  if (v165 >= 1)
  {
    v166 = 1 << (v165 - 1);
    v167 = v166 - 1;
    v168 = -v166;
    if (v164 < v167)
    {
      LODWORD(v167) = v151 - v150;
    }

    if (v164 >= v168)
    {
      v164 = v167;
    }

    else
    {
      v164 = v168;
    }
  }

  v1932 = v164;
  a2[50] = v164;
  v169 = v150 + v151;
  v170 = a4[3];
  v1966 = v140;
  if (v170 >= 1)
  {
    v171 = 1 << (v170 - 1);
    v172 = v171 - 1;
    v173 = -v171;
    if (v169 < v172)
    {
      LODWORD(v172) = v169;
    }

    if (v169 >= v173)
    {
      v169 = v172;
    }

    else
    {
      v169 = v173;
    }
  }

  v174 = (v48 + v1936 * v1794 + v1950 * v2001) >> a3;
  v175 = (v48 + v1945 * v1979 + v1955 * v1820) >> a3;
  a2[51] = v169;
  v176 = v162 + v163;
  v177 = a4[3];
  if (v177 >= 1)
  {
    v178 = 1 << (v177 - 1);
    v179 = v178 - 1;
    v180 = -v178;
    if (v176 < v179)
    {
      LODWORD(v179) = v162 + v163;
    }

    if (v176 >= v180)
    {
      v176 = v179;
    }

    else
    {
      v176 = v180;
    }
  }

  a2[52] = v176;
  LODWORD(v181) = v162 - v163;
  v182 = a4[3];
  if (v182 >= 1)
  {
    v183 = v181;
    v184 = 1 << (v182 - 1);
    v181 = v184 - 1;
    v185 = -v184;
    if (v183 < v181)
    {
      LODWORD(v181) = v183;
    }

    if (v183 < v185)
    {
      LODWORD(v181) = v185;
    }
  }

  v186 = (v48 + v1983 * v2013 + v1991 * v2066) >> a3;
  v187 = (v48 + v1987 * v2005 + v1996 * v2077) >> a3;
  v1923 = v181;
  a2[53] = v181;
  LODWORD(v181) = v175 - v174;
  v188 = a4[3];
  v1941 = v157;
  if (v188 >= 1)
  {
    v189 = 1 << (v188 - 1);
    v181 = v189 - 1;
    v190 = -v189;
    if (v175 - v174 < v181)
    {
      LODWORD(v181) = v175 - v174;
    }

    if (v175 - v174 < v190)
    {
      LODWORD(v181) = v190;
    }
  }

  v1918 = v181;
  a2[54] = v181;
  v191 = v174 + v175;
  v192 = a4[3];
  if (v192 >= 1)
  {
    v193 = 1 << (v192 - 1);
    v194 = v193 - 1;
    v195 = -v193;
    if (v191 < v194)
    {
      LODWORD(v194) = v191;
    }

    if (v191 >= v195)
    {
      v191 = v194;
    }

    else
    {
      v191 = v195;
    }
  }

  v196 = (v48 + v2035 * v2063 + v2049 * v2085) >> a3;
  v197 = (v48 + v2039 * v2058 + v2053 * v2089) >> a3;
  v1961 = v191;
  a2[55] = v191;
  v198 = v186 + v187;
  v199 = a4[3];
  if (v199 >= 1)
  {
    v200 = 1 << (v199 - 1);
    v201 = v200 - 1;
    v202 = -v200;
    if (v198 < v201)
    {
      LODWORD(v201) = v186 + v187;
    }

    if (v198 >= v202)
    {
      v198 = v201;
    }

    else
    {
      v198 = v202;
    }
  }

  a2[56] = v198;
  v203 = v186 - v187;
  v204 = a4[3];
  if (v204 >= 1)
  {
    v205 = 1 << (v204 - 1);
    v206 = v205 - 1;
    v207 = -v205;
    if (v203 < v206)
    {
      LODWORD(v206) = v203;
    }

    if (v203 >= v207)
    {
      v203 = v206;
    }

    else
    {
      v203 = v207;
    }
  }

  v208 = (v48 + v1720 * v1724 + v1722 * v1730) >> a3;
  v209 = (v48 + v1721 * v1723 + v1725 * v1807) >> a3;
  a2[57] = v203;
  v210 = v197 - v196;
  v211 = a4[3];
  if (v211 >= 1)
  {
    v212 = 1 << (v211 - 1);
    v213 = v212 - 1;
    v214 = -v212;
    if (v210 < v213)
    {
      LODWORD(v213) = v197 - v196;
    }

    if (v210 >= v214)
    {
      v210 = v213;
    }

    else
    {
      v210 = v214;
    }
  }

  a2[58] = v210;
  v215 = v196 + v197;
  v216 = a4[3];
  if (v216 >= 1)
  {
    v217 = 1 << (v216 - 1);
    v218 = v217 - 1;
    v219 = -v217;
    if (v215 < v218)
    {
      LODWORD(v218) = v215;
    }

    if (v215 >= v219)
    {
      v215 = v218;
    }

    else
    {
      v215 = v219;
    }
  }

  v220 = v1828;
  v221 = (v48 + v1726 * v1729 + v1731 * v1790) >> a3;
  v222 = (v48 + v1727 * v1728 + v1732 * v1803) >> a3;
  v1946 = v215;
  a2[59] = v215;
  v223 = v208 + v209;
  v224 = a4[3];
  if (v224 >= 1)
  {
    v225 = 1 << (v224 - 1);
    v226 = v225 - 1;
    v227 = -v225;
    if (v223 < v226)
    {
      LODWORD(v226) = v208 + v209;
    }

    if (v223 >= v227)
    {
      v223 = v226;
    }

    else
    {
      v223 = v227;
    }
  }

  a2[60] = v223;
  v228 = v208 - v209;
  v229 = a4[3];
  if (v229 >= 1)
  {
    v230 = 1 << (v229 - 1);
    v231 = v230 - 1;
    v232 = -v230;
    if (v228 < v231)
    {
      LODWORD(v231) = v228;
    }

    if (v228 >= v232)
    {
      v228 = v231;
    }

    else
    {
      v228 = v232;
    }
  }

  v233 = a3;
  v1876 = v228;
  a2[61] = v228;
  v234 = v222 - v221;
  v235 = a4[3];
  if (v235 >= 1)
  {
    v236 = 1 << (v235 - 1);
    v237 = v236 - 1;
    v238 = -v236;
    if (v234 < v237)
    {
      LODWORD(v237) = v222 - v221;
    }

    if (v234 >= v238)
    {
      v234 = v237;
    }

    else
    {
      v234 = v238;
    }
  }

  v1894 = v234;
  a2[62] = v234;
  v239 = v221 + v222;
  v240 = a4[3];
  v1908 = v127;
  v1821 = v176;
  v1825 = v152;
  v1804 = v223;
  v1808 = v198;
  if (v240 >= 1)
  {
    v241 = 1 << (v240 - 1);
    v242 = v241 - 1;
    v243 = -v241;
    if (v239 < v242)
    {
      LODWORD(v242) = v221 + v222;
    }

    if (v239 >= v243)
    {
      v239 = v242;
    }

    else
    {
      v239 = v243;
    }
  }

  v244 = v1833;
  v1884 = v210;
  v1899 = v203;
  v1997 = v107;
  v1872 = v90;
  v2014 = v83;
  v2036 = v59;
  v1791 = v239;
  a2[63] = v239;
  v2064 = av1_cospi_arr_data[64 * a3 - 580];
  v2067 = av1_cospi_arr_data[64 * a3 - 636];
  v245 = (v48 + v2064 * v2081 + -(v2067 * v2018)) >> a3;
  v2054 = av1_cospi_arr_data[64 * a3 - 612];
  v2059 = av1_cospi_arr_data[64 * a3 - 604];
  v246 = (v48 + v2054 * v2026 + -(v2059 * v2022)) >> a3;
  v247 = av1_cospi_arr_data[64 * a3 - 596];
  v248 = av1_cospi_arr_data[64 * a3 - 620];
  v249 = v48 + v247 * v1833 + -(v248 * v1785);
  v250 = av1_cospi_arr_data[64 * a3 - 628];
  v2050 = av1_cospi_arr_data[64 * a3 - 588];
  v1733 = v247;
  v251 = v247 * v1785;
  v252 = v1752 + v1766;
  v253 = a4[4];
  v2010 = v114;
  v1853 = v102;
  v1889 = v145;
  if (v253 <= 0)
  {
    v1988 = v1752 + v1766;
    v1834 = v1766 - v1752;
    v1829 = v1707 - v1708;
    v1956 = v1707 + v1708;
    v1980 = v1705 + v1706;
    v1786 = v1706 - v1705;
    v1767 = v1735 - v1771;
    v1951 = v1735 + v1771;
    v1976 = v1739 + v1737;
    v289 = v1739 - v1737;
    v292 = v1743 - v1748;
    v1937 = v1748 + v1743;
    v1928 = v1762 + v1757;
    v301 = v1762 - v1757;
    v304 = v1776 - v1781;
    LODWORD(v256) = v1781 + v1776;
  }

  else
  {
    v254 = 1 << (v253 - 1);
    v255 = v254 - 1;
    v256 = -v254;
    if (v252 >= v254 - 1)
    {
      v257 = v254 - 1;
    }

    else
    {
      v257 = v1752 + v1766;
    }

    if (v252 >= v256)
    {
      v258 = v257;
    }

    else
    {
      v258 = -v254;
    }

    v1988 = v258;
    v259 = v1766 - v1752;
    if (v259 >= v255)
    {
      v260 = v255;
    }

    else
    {
      v260 = v1766 - v1752;
    }

    if (v259 >= v256)
    {
      v261 = v260;
    }

    else
    {
      v261 = v256;
    }

    v1834 = v261;
    v262 = a2[18];
    v263 = a2[19];
    v264 = v263 - v262;
    if (v264 >= v255)
    {
      v265 = v255;
    }

    else
    {
      v265 = v263 - v262;
    }

    if (v264 >= v256)
    {
      v266 = v265;
    }

    else
    {
      v266 = v256;
    }

    v1829 = v266;
    v267 = v263 + v262;
    if (v267 >= v255)
    {
      v268 = v255;
    }

    else
    {
      v268 = v267;
    }

    if (v267 >= v256)
    {
      v269 = v268;
    }

    else
    {
      v269 = v256;
    }

    v1956 = v269;
    v270 = a2[20];
    v271 = a2[21];
    v272 = v271 + v270;
    if (v272 >= v255)
    {
      v273 = v255;
    }

    else
    {
      v273 = v271 + v270;
    }

    if (v272 >= v256)
    {
      v274 = v273;
    }

    else
    {
      v274 = v256;
    }

    v1980 = v274;
    v275 = v270 - v271;
    if (v275 >= v255)
    {
      v276 = v255;
    }

    else
    {
      v276 = v275;
    }

    if (v275 >= v256)
    {
      v277 = v276;
    }

    else
    {
      v277 = v256;
    }

    v1786 = v277;
    v278 = v1735 - v1771;
    if (v278 >= v255)
    {
      v279 = v255;
    }

    else
    {
      v279 = v1735 - v1771;
    }

    if (v278 >= v256)
    {
      v280 = v279;
    }

    else
    {
      v280 = v256;
    }

    v1767 = v280;
    v281 = v1735 + v1771;
    if (v281 >= v255)
    {
      v282 = v255;
    }

    else
    {
      v282 = v1735 + v1771;
    }

    if (v281 >= v256)
    {
      v283 = v282;
    }

    else
    {
      v283 = v256;
    }

    v1951 = v283;
    v284 = v1737 + v1739;
    if (v284 >= v255)
    {
      v285 = v255;
    }

    else
    {
      v285 = v1737 + v1739;
    }

    if (v284 >= v256)
    {
      v286 = v285;
    }

    else
    {
      v286 = v256;
    }

    v1976 = v286;
    v287 = v1739 - v1737;
    if (v287 >= v255)
    {
      v288 = v255;
    }

    else
    {
      v288 = v1739 - v1737;
    }

    if (v287 >= v256)
    {
      v289 = v288;
    }

    else
    {
      v289 = v256;
    }

    v290 = v1743 - v1748;
    if (v290 >= v255)
    {
      v291 = v255;
    }

    else
    {
      v291 = v1743 - v1748;
    }

    if (v290 >= v256)
    {
      v292 = v291;
    }

    else
    {
      v292 = v256;
    }

    v293 = v1743 + v1748;
    if (v293 >= v255)
    {
      v294 = v255;
    }

    else
    {
      v294 = v1743 + v1748;
    }

    if (v293 >= v256)
    {
      v295 = v294;
    }

    else
    {
      v295 = v256;
    }

    v1937 = v295;
    v296 = v1757 + v1762;
    if (v296 >= v255)
    {
      v297 = v255;
    }

    else
    {
      v297 = v1757 + v1762;
    }

    if (v296 >= v256)
    {
      v298 = v297;
    }

    else
    {
      v298 = v256;
    }

    v1928 = v298;
    v299 = v1762 - v1757;
    if (v299 >= v255)
    {
      v300 = v255;
    }

    else
    {
      v300 = v1762 - v1757;
    }

    if (v299 >= v256)
    {
      v301 = v300;
    }

    else
    {
      v301 = v256;
    }

    v302 = v1776 - v1781;
    if (v302 >= v255)
    {
      v303 = v255;
    }

    else
    {
      v303 = v1776 - v1781;
    }

    if (v302 >= v256)
    {
      v304 = v303;
    }

    else
    {
      v304 = v256;
    }

    v305 = v1776 + v1781;
    if (v305 >= v255)
    {
      v306 = v255;
    }

    else
    {
      v306 = v1776 + v1781;
    }

    if (v305 >= v256)
    {
      LODWORD(v256) = v306;
    }
  }

  v1904 = v256;
  v1992 = av1_cospi_arr_data[64 * a3 - 620];
  v307 = v248 * v244;
  v308 = v48 + v251;
  v309 = v249 >> a3;
  v310 = (v48 + v250 * v220 + -(v2050 * v1811)) >> a3;
  *a2 = v2043;
  a2[1] = v2069;
  a2[2] = v2074;
  a2[3] = v2046;
  v311 = av1_cospi_arr_data[64 * a3 - 584];
  v2040 = av1_cospi_arr_data[64 * a3 - 632];
  v1777 = (v48 + v311 * v1849 + -(v2040 * v1846)) >> a3;
  a2[4] = v1777;
  v312 = av1_cospi_arr_data[64 * a3 - 616];
  v313 = av1_cospi_arr_data[64 * a3 - 600];
  v314 = (v48 + v312 * v1842 + -(v313 * v1838)) >> a3;
  v2078 = v313;
  v2086 = v312;
  v315 = (v48 + v312 * v1838 + v313 * v1842) >> a3;
  a2[5] = v314;
  a2[6] = v315;
  v1782 = v315;
  v2090 = v311;
  v1772 = (v48 + v311 * v1846 + v2040 * v1849) >> a3;
  a2[7] = v1772;
  v316 = v246 + v245;
  v317 = a4[5];
  v2095 = 1 << (a3 - 1);
  if (v317 >= 1)
  {
    v318 = 1 << (v317 - 1);
    v319 = v318 - 1;
    v320 = -v318;
    if (v316 < v319)
    {
      LODWORD(v319) = v246 + v245;
    }

    if (v316 >= v320)
    {
      v316 = v319;
    }

    else
    {
      v316 = v320;
    }
  }

  a2[8] = v316;
  v321 = v245 - v246;
  v322 = a4[5];
  if (v322 >= 1)
  {
    v323 = 1 << (v322 - 1);
    v324 = v323 - 1;
    v325 = -v323;
    if (v321 < v324)
    {
      LODWORD(v324) = v321;
    }

    if (v321 >= v325)
    {
      v321 = v324;
    }

    else
    {
      v321 = v325;
    }
  }

  v326 = (v48 + v250 * v1811 + v2050 * v220) >> a3;
  v327 = (v308 + v307) >> a3;
  v1984 = v321;
  a2[9] = v321;
  v328 = v310 - v309;
  v329 = a4[5];
  if (v329 >= 1)
  {
    v330 = 1 << (v329 - 1);
    v331 = v330 - 1;
    v332 = -v330;
    if (v328 < v331)
    {
      LODWORD(v331) = v310 - v309;
    }

    if (v328 >= v332)
    {
      v328 = v331;
    }

    else
    {
      v328 = v332;
    }
  }

  a2[10] = v328;
  v333 = v310 + v309;
  v334 = a4[5];
  if (v334 >= 1)
  {
    v335 = 1 << (v334 - 1);
    v336 = v335 - 1;
    v337 = -v335;
    if (v333 < v336)
    {
      LODWORD(v336) = v333;
    }

    if (v333 >= v337)
    {
      v333 = v336;
    }

    else
    {
      v333 = v337;
    }
  }

  v338 = -v2067;
  v339 = (v48 + v2054 * v2022 + v2059 * v2026) >> a3;
  v340 = (v48 + v2064 * v2018 + v2067 * v2081) >> a3;
  v2002 = v333;
  a2[11] = v333;
  v341 = v326 + v327;
  v342 = a4[5];
  if (v342 >= 1)
  {
    v343 = 1 << (v342 - 1);
    v344 = v343 - 1;
    v345 = -v343;
    if (v341 < v344)
    {
      LODWORD(v344) = v326 + v327;
    }

    if (v341 >= v345)
    {
      v341 = v344;
    }

    else
    {
      v341 = v345;
    }
  }

  a2[12] = v341;
  v346 = v326 - v327;
  v347 = a4[5];
  if (v347 >= 1)
  {
    v348 = 1 << (v347 - 1);
    v349 = v348 - 1;
    v350 = -v348;
    if (v346 < v349)
    {
      LODWORD(v349) = v346;
    }

    if (v346 >= v350)
    {
      v346 = v349;
    }

    else
    {
      v346 = v350;
    }
  }

  v1868 = v346;
  a2[13] = v346;
  v351 = v340 - v339;
  v352 = a4[5];
  v2006 = v341;
  if (v352 >= 1)
  {
    v353 = 1 << (v352 - 1);
    v354 = v353 - 1;
    v355 = -v353;
    if (v351 < v354)
    {
      LODWORD(v354) = v340 - v339;
    }

    if (v351 >= v355)
    {
      v351 = v354;
    }

    else
    {
      v351 = v355;
    }
  }

  v356 = (v48 + v2064 * v1894 + v2036 * v338) >> a3;
  v357 = (v48 + -(v2031 * v2064) + v1876 * v338) >> a3;
  v2082 = -v2040;
  v2019 = -v2078;
  a2[14] = v351;
  v358 = v339 + v340;
  v359 = a4[5];
  v1880 = v351;
  if (v359 >= 1)
  {
    v360 = 1 << (v359 - 1);
    v361 = v360 - 1;
    v362 = -v360;
    if (v358 < v361)
    {
      LODWORD(v361) = v358;
    }

    if (v358 >= v362)
    {
      v358 = v361;
    }

    else
    {
      v358 = v362;
    }
  }

  v363 = -v2059;
  v1812 = v358;
  a2[15] = v358;
  a2[16] = v1988;
  v1738 = (v48 + -(v2090 * v1829) + v301 * v2082) >> a3;
  v1740 = (v48 + v2090 * v304 + v1834 * v2082) >> a3;
  a2[17] = v1740;
  a2[18] = v1738;
  a2[19] = v1956;
  a2[20] = v1980;
  v1744 = (v48 + -(v2086 * v1767) + v289 * v2019) >> a3;
  v1749 = (v48 + v2086 * v292 + v1786 * v2019) >> a3;
  a2[21] = v1749;
  a2[22] = v1744;
  a2[23] = v1951;
  a2[24] = v1976;
  v1753 = (v48 + v2086 * v1786 + v2078 * v292) >> a3;
  v1758 = (v48 + v2086 * v289 + v1767 * v2019) >> a3;
  a2[25] = v1758;
  a2[26] = v1753;
  a2[27] = v1937;
  a2[28] = v1928;
  v1763 = (v48 + v2090 * v1834 + v2040 * v304) >> a3;
  v1768 = (v48 + v2090 * v301 + v1829 * v2082) >> a3;
  a2[29] = v1768;
  a2[30] = v1763;
  a2[31] = v1904;
  v364 = v1816 + v1863;
  v365 = a4[5];
  if (v365 >= 1)
  {
    v366 = 1 << (v365 - 1);
    v367 = v366 - 1;
    v368 = -v366;
    if (v364 < v367)
    {
      LODWORD(v367) = v1816 + v1863;
    }

    if (v364 >= v368)
    {
      v364 = v367;
    }

    else
    {
      v364 = v368;
    }
  }

  v369 = v2014;
  v370 = v1992;
  a2[32] = v364;
  v371 = v356 + v357;
  v372 = a4[5];
  v1787 = v316;
  if (v372 >= 1)
  {
    v373 = 1 << (v372 - 1);
    v374 = v373 - 1;
    v375 = -v373;
    if (v371 < v374)
    {
      LODWORD(v374) = v356 + v357;
    }

    if (v371 >= v375)
    {
      v371 = v374;
    }

    else
    {
      v371 = v375;
    }
  }

  a2[33] = v371;
  v376 = v356 - v357;
  v377 = a4[5];
  if (v377 >= 1)
  {
    v378 = 1 << (v377 - 1);
    v379 = v378 - 1;
    v380 = -v378;
    if (v376 < v379)
    {
      LODWORD(v379) = v376;
    }

    if (v376 >= v380)
    {
      v376 = v379;
    }

    else
    {
      v376 = v380;
    }
  }

  v381 = v1997;
  v382 = (v48 + v2054 * v1884 + v2014 * v363) >> a3;
  v383 = (v48 + -(v1872 * v2054) + v1899 * v363) >> a3;
  a2[34] = v376;
  v384 = v1863 - v1816;
  v385 = a4[5];
  v1839 = v371;
  if (v385 >= 1)
  {
    v386 = 1 << (v385 - 1);
    v387 = v386 - 1;
    v388 = -v386;
    if (v384 < v387)
    {
      LODWORD(v387) = v1863 - v1816;
    }

    if (v384 >= v388)
    {
      v384 = v387;
    }

    else
    {
      v384 = v388;
    }
  }

  v389 = -v1992;
  v2027 = v384;
  a2[35] = v384;
  v390 = v1799 - v1858;
  v391 = a4[5];
  if (v391 >= 1)
  {
    v392 = 1 << (v391 - 1);
    v393 = v392 - 1;
    v394 = -v392;
    if (v390 < v393)
    {
      LODWORD(v393) = v1799 - v1858;
    }

    if (v390 >= v394)
    {
      v390 = v393;
    }

    else
    {
      v390 = v394;
    }
  }

  v2023 = v390;
  a2[36] = v390;
  v395 = v383 - v382;
  v396 = a4[5];
  if (v396 >= 1)
  {
    v397 = 1 << (v396 - 1);
    v398 = v397 - 1;
    v399 = -v397;
    if (v395 < v398)
    {
      LODWORD(v398) = v383 - v382;
    }

    if (v395 >= v399)
    {
      v395 = v398;
    }

    else
    {
      v395 = v399;
    }
  }

  a2[37] = v395;
  v400 = v382 + v383;
  v401 = a4[5];
  if (v401 >= 1)
  {
    v402 = 1 << (v401 - 1);
    v403 = v402 - 1;
    v404 = -v402;
    if (v400 < v403)
    {
      LODWORD(v403) = v400;
    }

    if (v400 >= v404)
    {
      v400 = v403;
    }

    else
    {
      v400 = v404;
    }
  }

  v405 = (v48 + v1733 * v1918 + v1997 * v389) >> a3;
  v406 = (v48 + -(v2010 * v1733) + v1923 * v389) >> a3;
  a2[38] = v400;
  v407 = v1799 + v1858;
  v408 = a4[5];
  v1817 = v400;
  if (v408 >= 1)
  {
    v409 = 1 << (v408 - 1);
    v410 = v409 - 1;
    v411 = -v409;
    if (v407 < v410)
    {
      LODWORD(v410) = v1799 + v1858;
    }

    if (v407 >= v411)
    {
      v407 = v410;
    }

    else
    {
      v407 = v411;
    }
  }

  v2015 = v395;
  v412 = -v2050;
  v1993 = v407;
  a2[39] = v407;
  v413 = v1913 + v1853;
  v414 = a4[5];
  if (v414 >= 1)
  {
    v415 = 1 << (v414 - 1);
    v416 = v415 - 1;
    v417 = -v415;
    if (v413 < v416)
    {
      LODWORD(v416) = v1913 + v1853;
    }

    if (v413 >= v417)
    {
      v413 = v416;
    }

    else
    {
      v413 = v417;
    }
  }

  a2[40] = v413;
  v418 = v405 + v406;
  v419 = a4[5];
  if (v419 >= 1)
  {
    v420 = 1 << (v419 - 1);
    v421 = v420 - 1;
    v422 = -v420;
    if (v418 < v421)
    {
      LODWORD(v421) = v405 + v406;
    }

    if (v418 >= v422)
    {
      v418 = v421;
    }

    else
    {
      v418 = v422;
    }
  }

  a2[41] = v418;
  v423 = v405 - v406;
  v424 = a4[5];
  if (v424 >= 1)
  {
    v425 = 1 << (v424 - 1);
    v426 = v425 - 1;
    v427 = -v425;
    if (v423 < v426)
    {
      LODWORD(v426) = v423;
    }

    if (v423 >= v427)
    {
      v423 = v426;
    }

    else
    {
      v423 = v427;
    }
  }

  v428 = (v48 + v250 * v1932 + v1971 * v412) >> a3;
  v429 = (v48 + -(v1966 * v250) + v1941 * v412) >> a3;
  v1998 = v423;
  a2[42] = v423;
  v430 = v1853 - v1913;
  v431 = a4[5];
  if (v431 >= 1)
  {
    v432 = 1 << (v431 - 1);
    v433 = v432 - 1;
    v434 = -v432;
    if (v430 < v433)
    {
      LODWORD(v433) = v1853 - v1913;
    }

    if (v430 >= v434)
    {
      v430 = v433;
    }

    else
    {
      v430 = v434;
    }
  }

  v1854 = v328;
  v1835 = v418;
  v435 = v250 * v1971;
  v1972 = v430;
  a2[43] = v430;
  v436 = v1889 - v1908;
  v437 = a4[5];
  if (v437 >= 1)
  {
    v438 = 1 << (v437 - 1);
    v439 = v438 - 1;
    v440 = -v438;
    if (v436 < v439)
    {
      LODWORD(v439) = v1889 - v1908;
    }

    if (v436 >= v440)
    {
      v436 = v439;
    }

    else
    {
      v436 = v440;
    }
  }

  v441 = v1966 * v412;
  v442 = v48 + v435;
  v1967 = v436;
  a2[44] = v436;
  v443 = v429 - v428;
  v444 = a4[5];
  if (v444 >= 1)
  {
    v445 = 1 << (v444 - 1);
    v446 = v445 - 1;
    v447 = -v445;
    if (v443 < v446)
    {
      LODWORD(v446) = v429 - v428;
    }

    if (v443 >= v447)
    {
      v443 = v446;
    }

    else
    {
      v443 = v447;
    }
  }

  v448 = v48 + v250 * v1941 + v441;
  a2[45] = v443;
  v449 = v428 + v429;
  v450 = a4[5];
  if (v450 >= 1)
  {
    v451 = 1 << (v450 - 1);
    v452 = v451 - 1;
    v453 = -v451;
    if (v449 < v452)
    {
      LODWORD(v452) = v449;
    }

    if (v449 >= v453)
    {
      v449 = v452;
    }

    else
    {
      v449 = v453;
    }
  }

  v454 = v448 >> a3;
  v455 = (v442 + v2050 * v1932) >> a3;
  v1914 = v449;
  a2[46] = v449;
  v456 = v1889 + v1908;
  v457 = a4[5];
  if (v457 >= 1)
  {
    v458 = 1 << (v457 - 1);
    v459 = v458 - 1;
    v460 = -v458;
    if (v456 < v459)
    {
      LODWORD(v459) = v1889 + v1908;
    }

    if (v456 >= v460)
    {
      v456 = v459;
    }

    else
    {
      v456 = v460;
    }
  }

  v1942 = v456;
  a2[47] = v456;
  v461 = v169 + v1825;
  v462 = a4[5];
  if (v462 >= 1)
  {
    v463 = 1 << (v462 - 1);
    v464 = v463 - 1;
    v465 = -v463;
    if (v461 < v464)
    {
      LODWORD(v464) = v169 + v1825;
    }

    if (v461 >= v465)
    {
      v461 = v464;
    }

    else
    {
      v461 = v465;
    }
  }

  v1909 = v443;
  v466 = v2010 * v389;
  v467 = v48 + v1733 * v381;
  a2[48] = v461;
  v468 = v454 + v455;
  v469 = a4[5];
  if (v469 >= 1)
  {
    v470 = 1 << (v469 - 1);
    v471 = v470 - 1;
    v472 = -v470;
    if (v468 < v471)
    {
      LODWORD(v471) = v454 + v455;
    }

    if (v468 >= v472)
    {
      v468 = v471;
    }

    else
    {
      v468 = v472;
    }
  }

  a2[49] = v468;
  v473 = v454 - v455;
  v474 = a4[5];
  if (v474 >= 1)
  {
    v475 = 1 << (v474 - 1);
    v476 = v475 - 1;
    v477 = -v475;
    if (v473 < v476)
    {
      LODWORD(v476) = v473;
    }

    if (v473 >= v477)
    {
      v473 = v476;
    }

    else
    {
      v473 = v477;
    }
  }

  v478 = (v48 + v1733 * v1923 + v466) >> a3;
  v479 = (v467 + v370 * v1918) >> a3;
  v1890 = v473;
  a2[50] = v473;
  v480 = v1825 - v169;
  v481 = a4[5];
  if (v481 >= 1)
  {
    v482 = 1 << (v481 - 1);
    v483 = v482 - 1;
    v484 = -v482;
    if (v480 < v483)
    {
      LODWORD(v483) = v1825 - v169;
    }

    if (v480 >= v484)
    {
      v480 = v483;
    }

    else
    {
      v480 = v484;
    }
  }

  v485 = v2054 * v1899;
  v486 = v2054 * v369;
  v1900 = v480;
  a2[51] = v480;
  v487 = v1961 - v1821;
  v488 = a4[5];
  if (v488 >= 1)
  {
    v489 = 1 << (v488 - 1);
    v490 = v489 - 1;
    v491 = -v489;
    if (v487 < v490)
    {
      LODWORD(v490) = v1961 - v1821;
    }

    if (v487 >= v491)
    {
      v487 = v490;
    }

    else
    {
      v487 = v491;
    }
  }

  v2055 = v376;
  v492 = v1872 * v363;
  v493 = v48 + v485;
  v494 = v48 + v486;
  v1873 = v487;
  a2[52] = v487;
  v495 = v479 - v478;
  v496 = a4[5];
  if (v496 >= 1)
  {
    v497 = 1 << (v496 - 1);
    v498 = v497 - 1;
    v499 = -v497;
    if (v495 < v498)
    {
      LODWORD(v498) = v479 - v478;
    }

    if (v495 >= v499)
    {
      v495 = v498;
    }

    else
    {
      v495 = v499;
    }
  }

  a2[53] = v495;
  v500 = v478 + v479;
  v501 = a4[5];
  if (v501 >= 1)
  {
    v502 = 1 << (v501 - 1);
    v503 = v502 - 1;
    v504 = -v502;
    if (v500 < v503)
    {
      LODWORD(v503) = v500;
    }

    if (v500 >= v504)
    {
      v500 = v503;
    }

    else
    {
      v500 = v504;
    }
  }

  v505 = (v493 + v492) >> a3;
  v506 = (v494 + v2059 * v1884) >> a3;
  a2[54] = v500;
  v507 = v1961 + v1821;
  v508 = a4[5];
  if (v508 >= 1)
  {
    v509 = 1 << (v508 - 1);
    v510 = v509 - 1;
    v511 = -v509;
    if (v507 < v510)
    {
      LODWORD(v510) = v1961 + v1821;
    }

    if (v507 >= v511)
    {
      v507 = v510;
    }

    else
    {
      v507 = v511;
    }
  }

  v1919 = v507;
  a2[55] = v507;
  v512 = v1946 + v1808;
  v513 = a4[5];
  v1859 = v495;
  if (v513 >= 1)
  {
    v514 = 1 << (v513 - 1);
    v515 = v514 - 1;
    v516 = -v514;
    if (v512 < v515)
    {
      LODWORD(v515) = v1946 + v1808;
    }

    if (v512 >= v516)
    {
      v512 = v515;
    }

    else
    {
      v512 = v516;
    }
  }

  a2[56] = v512;
  v517 = v505 + v506;
  v518 = a4[5];
  if (v518 >= 1)
  {
    v519 = 1 << (v518 - 1);
    v520 = v519 - 1;
    v521 = -v519;
    if (v517 < v520)
    {
      LODWORD(v520) = v505 + v506;
    }

    if (v517 >= v521)
    {
      v517 = v520;
    }

    else
    {
      v517 = v521;
    }
  }

  a2[57] = v517;
  v522 = v505 - v506;
  v523 = a4[5];
  if (v523 >= 1)
  {
    v524 = 1 << (v523 - 1);
    v525 = v524 - 1;
    v526 = -v524;
    if (v522 < v525)
    {
      LODWORD(v525) = v522;
    }

    if (v522 >= v526)
    {
      v522 = v525;
    }

    else
    {
      v522 = v526;
    }
  }

  v527 = (v48 + v2064 * v1876 + v2031 * -v2067) >> a3;
  v528 = (v48 + v2064 * v2036 + v2067 * v1894) >> a3;
  v1885 = v522;
  a2[58] = v522;
  v529 = v1808 - v1946;
  v530 = a4[5];
  if (v530 >= 1)
  {
    v531 = 1 << (v530 - 1);
    v532 = v531 - 1;
    v533 = -v531;
    if (v529 < v532)
    {
      LODWORD(v532) = v1808 - v1946;
    }

    if (v529 >= v533)
    {
      v529 = v532;
    }

    else
    {
      v529 = v533;
    }
  }

  v1895 = v529;
  a2[59] = v529;
  v534 = v1791 - v1804;
  v535 = a4[5];
  if (v535 >= 1)
  {
    v536 = 1 << (v535 - 1);
    v537 = v536 - 1;
    v538 = -v536;
    if (v534 < v537)
    {
      LODWORD(v537) = v1791 - v1804;
    }

    if (v534 >= v538)
    {
      v534 = v537;
    }

    else
    {
      v534 = v538;
    }
  }

  v1877 = v534;
  a2[60] = v534;
  v539 = v528 - v527;
  v540 = a4[5];
  if (v540 >= 1)
  {
    v541 = 1 << (v540 - 1);
    v542 = v541 - 1;
    v543 = -v541;
    if (v539 < v542)
    {
      LODWORD(v542) = v528 - v527;
    }

    if (v539 >= v543)
    {
      v539 = v542;
    }

    else
    {
      v539 = v543;
    }
  }

  a2[61] = v539;
  v544 = v527 + v528;
  v545 = a4[5];
  if (v545 >= 1)
  {
    v546 = 1 << (v545 - 1);
    v547 = v546 - 1;
    v548 = -v546;
    if (v544 < v547)
    {
      LODWORD(v547) = v544;
    }

    if (v544 >= v548)
    {
      v544 = v547;
    }

    else
    {
      v544 = v548;
    }
  }

  a2[62] = v544;
  v549 = v1791 + v1804;
  v550 = a4[5];
  v1864 = v539;
  if (v550 >= 1)
  {
    v551 = 1 << (v550 - 1);
    v552 = v551 - 1;
    v553 = -v551;
    if (v549 < v552)
    {
      LODWORD(v552) = v1791 + v1804;
    }

    if (v549 >= v553)
    {
      v549 = v552;
    }

    else
    {
      v549 = v553;
    }
  }

  v1805 = v544;
  v1809 = v500;
  v1826 = v517;
  v1843 = v512;
  v1800 = v549;
  a2[63] = v549;
  v554 = av1_cospi_arr_data[64 * a3 - 608];
  v555 = v48 + v554 * v2043;
  v556 = (v555 + v554 * v2069) >> a3;
  v557 = v555 + -(v554 * v2069);
  v558 = av1_cospi_arr_data[64 * a3 - 592];
  v559 = av1_cospi_arr_data[64 * a3 - 624];
  v560 = v48 + v558 * v2074 + -(v559 * v2046);
  v2093 = v559;
  v561 = (v48 + v558 * v2046 + v559 * v2074) >> a3;
  v562 = v314 + v1777;
  v563 = a4[6];
  if (v563 <= 0)
  {
    v1962 = v314 + v1777;
    v571 = v1777 - v314;
    v574 = v1772 - v1782;
    LODWORD(v566) = v1782 + v1772;
  }

  else
  {
    v564 = 1 << (v563 - 1);
    v565 = v564 - 1;
    v566 = -v564;
    if (v562 >= v565)
    {
      v567 = v565;
    }

    else
    {
      v567 = v314 + v1777;
    }

    if (v562 >= v566)
    {
      v568 = v567;
    }

    else
    {
      v568 = v566;
    }

    v1962 = v568;
    v569 = v1777 - v314;
    if (v569 >= v565)
    {
      v570 = v565;
    }

    else
    {
      v570 = v1777 - v314;
    }

    if (v569 >= v566)
    {
      v571 = v570;
    }

    else
    {
      v571 = v566;
    }

    v572 = v1772 - v1782;
    if (v572 >= v565)
    {
      v573 = v565;
    }

    else
    {
      v573 = v1772 - v1782;
    }

    if (v572 >= v566)
    {
      v574 = v573;
    }

    else
    {
      v574 = v566;
    }

    v575 = v1772 + v1782;
    if (v575 < v565)
    {
      LODWORD(v565) = v1772 + v1782;
    }

    if (v575 >= v566)
    {
      LODWORD(v566) = v565;
    }
  }

  v1924 = v566;
  v2032 = v461;
  v576 = v557 >> a3;
  v577 = v560 >> a3;
  v578 = v1988 + v1956;
  v1830 = v468;
  if (v563 <= 0)
  {
    v2060 = v1988 + v1956;
    v1947 = v1740 + v1738;
    v2070 = v1740 - v1738;
    v592 = v1988 - v1956;
    v595 = v1951 - v1980;
    v598 = v1744 - v1749;
    v1933 = v1749 + v1744;
    v1957 = v1980 + v1951;
    v2044 = v1976 + v1937;
    v1952 = v1758 + v1753;
    v613 = v1758 - v1753;
    v616 = v1976 - v1937;
    v619 = v1904 - v1928;
    v622 = v1763 - v1768;
    v1938 = v1768 + v1763;
    LODWORD(v581) = v1904 + v1928;
  }

  else
  {
    v579 = 1 << (v563 - 1);
    v580 = v579 - 1;
    v581 = -v579;
    if (v578 >= v580)
    {
      v582 = v580;
    }

    else
    {
      v582 = v1988 + v1956;
    }

    if (v578 >= v581)
    {
      v583 = v582;
    }

    else
    {
      v583 = v581;
    }

    v2060 = v583;
    v584 = v1740 + v1738;
    if (v584 >= v580)
    {
      v585 = v580;
    }

    else
    {
      v585 = v1740 + v1738;
    }

    if (v584 >= v581)
    {
      v586 = v585;
    }

    else
    {
      v586 = v581;
    }

    v1947 = v586;
    v587 = v1740 - v1738;
    if (v587 >= v580)
    {
      v588 = v580;
    }

    else
    {
      v588 = v1740 - v1738;
    }

    if (v587 >= v581)
    {
      v589 = v588;
    }

    else
    {
      v589 = v581;
    }

    v2070 = v589;
    v590 = v1988 - v1956;
    if (v590 >= v580)
    {
      v591 = v580;
    }

    else
    {
      v591 = v1988 - v1956;
    }

    if (v590 >= v581)
    {
      v592 = v591;
    }

    else
    {
      v592 = v581;
    }

    v593 = v1951 - v1980;
    if (v593 >= v580)
    {
      v594 = v580;
    }

    else
    {
      v594 = v1951 - v1980;
    }

    if (v593 >= v581)
    {
      v595 = v594;
    }

    else
    {
      v595 = v581;
    }

    v596 = v1744 - v1749;
    if (v596 >= v580)
    {
      v597 = v580;
    }

    else
    {
      v597 = v1744 - v1749;
    }

    if (v596 >= v581)
    {
      v598 = v597;
    }

    else
    {
      v598 = v581;
    }

    v599 = v1749 + v1744;
    if (v599 >= v580)
    {
      v600 = v580;
    }

    else
    {
      v600 = v1749 + v1744;
    }

    if (v599 >= v581)
    {
      v601 = v600;
    }

    else
    {
      v601 = v581;
    }

    v1933 = v601;
    v602 = v1951 + v1980;
    if (v602 >= v580)
    {
      v603 = v580;
    }

    else
    {
      v603 = v1951 + v1980;
    }

    if (v602 >= v581)
    {
      v604 = v603;
    }

    else
    {
      v604 = v581;
    }

    v1957 = v604;
    v605 = v1937 + v1976;
    if (v605 >= v580)
    {
      v606 = v580;
    }

    else
    {
      v606 = v1937 + v1976;
    }

    if (v605 >= v581)
    {
      v607 = v606;
    }

    else
    {
      v607 = v581;
    }

    v2044 = v607;
    v608 = v1758 + v1753;
    if (v608 >= v580)
    {
      v609 = v580;
    }

    else
    {
      v609 = v1758 + v1753;
    }

    if (v608 >= v581)
    {
      v610 = v609;
    }

    else
    {
      v610 = v581;
    }

    v1952 = v610;
    v611 = v1758 - v1753;
    if (v611 >= v580)
    {
      v612 = v580;
    }

    else
    {
      v612 = v1758 - v1753;
    }

    if (v611 >= v581)
    {
      v613 = v612;
    }

    else
    {
      v613 = v581;
    }

    v614 = v1976 - v1937;
    if (v614 >= v580)
    {
      v615 = v580;
    }

    else
    {
      v615 = v1976 - v1937;
    }

    if (v614 >= v581)
    {
      v616 = v615;
    }

    else
    {
      v616 = v581;
    }

    v617 = v1904 - v1928;
    if (v617 >= v580)
    {
      v618 = v580;
    }

    else
    {
      v618 = v1904 - v1928;
    }

    if (v617 >= v581)
    {
      v619 = v618;
    }

    else
    {
      v619 = v581;
    }

    v620 = v1763 - v1768;
    if (v620 >= v580)
    {
      v621 = v580;
    }

    else
    {
      v621 = v1763 - v1768;
    }

    if (v620 >= v581)
    {
      v622 = v621;
    }

    else
    {
      v622 = v581;
    }

    if (v1768 + v1763 >= v580)
    {
      v623 = v580;
    }

    else
    {
      v623 = v1768 + v1763;
    }

    if (v1768 + v1763 >= v581)
    {
      v624 = v623;
    }

    else
    {
      v624 = v581;
    }

    v1938 = v624;
    v625 = v1904 + v1928;
    if (v625 < v580)
    {
      LODWORD(v580) = v1904 + v1928;
    }

    if (v625 >= v581)
    {
      LODWORD(v581) = v580;
    }
  }

  v1929 = v581;
  v626 = -v2093;
  v627 = v561 + v556;
  v628 = a4[7];
  v1847 = v413;
  v1850 = v364;
  if (v628 < 1)
  {
    v632 = v561 + v556;
  }

  else
  {
    v629 = 1 << (v628 - 1);
    v630 = v629 - 1;
    v631 = -v629;
    if (v627 < v630)
    {
      LODWORD(v630) = v561 + v556;
    }

    if (v627 >= v631)
    {
      v632 = v630;
    }

    else
    {
      v632 = v631;
    }
  }

  v1795 = v632;
  *a2 = v632;
  v633 = v577 + v576;
  v634 = a4[7];
  if (v634 >= 1)
  {
    v635 = 1 << (v634 - 1);
    v636 = v635 - 1;
    v637 = -v635;
    if (v633 < v636)
    {
      LODWORD(v636) = v577 + v576;
    }

    if (v633 >= v637)
    {
      v633 = v636;
    }

    else
    {
      v633 = v637;
    }
  }

  a2[1] = v633;
  v638 = v576 - v577;
  v639 = a4[7];
  if (v639 >= 1)
  {
    v640 = 1 << (v639 - 1);
    v641 = v640 - 1;
    v642 = -v640;
    if (v638 < v641)
    {
      LODWORD(v641) = v638;
    }

    if (v638 >= v642)
    {
      v638 = v641;
    }

    else
    {
      v638 = v642;
    }
  }

  v643 = v1787;
  v644 = (v2095 + v558 * v1880 + v1984 * v626) >> a3;
  v645 = (v2095 + -(v558 * v1854) + v1868 * v626) >> a3;
  a2[2] = v638;
  v646 = v556 - v561;
  v647 = a4[7];
  if (v647 >= 1)
  {
    v648 = 1 << (v647 - 1);
    v649 = v648 - 1;
    v650 = -v648;
    if (v646 < v649)
    {
      LODWORD(v649) = v646;
    }

    if (v646 >= v650)
    {
      v646 = v649;
    }

    else
    {
      v646 = v650;
    }
  }

  v1783 = v646;
  v1788 = v638;
  a2[3] = v646;
  a2[4] = v1962;
  v2065 = -v554;
  v651 = v2095 + v574 * v554;
  v1773 = (v651 + v571 * -v554) >> a3;
  v1778 = (v651 + v571 * v554) >> a3;
  a2[5] = v1773;
  a2[6] = v1778;
  a2[7] = v1924;
  v652 = v2002 + v643;
  v653 = a4[7];
  if (v653 >= 1)
  {
    v654 = 1 << (v653 - 1);
    v655 = v654 - 1;
    v656 = -v654;
    if (v652 < v655)
    {
      LODWORD(v655) = v2002 + v643;
    }

    if (v652 >= v656)
    {
      v652 = v655;
    }

    else
    {
      v652 = v656;
    }
  }

  v657 = v1854 * v626;
  v1855 = v652;
  a2[8] = v652;
  v658 = v644 + v645;
  v659 = a4[7];
  if (v659 >= 1)
  {
    v660 = 1 << (v659 - 1);
    v661 = v660 - 1;
    v662 = -v660;
    if (v658 < v661)
    {
      LODWORD(v661) = v644 + v645;
    }

    if (v658 >= v662)
    {
      v658 = v661;
    }

    else
    {
      v658 = v662;
    }
  }

  v1792 = v633;
  v663 = v2095 + v558 * v1868 + v657;
  a2[9] = v658;
  v664 = v644 - v645;
  v665 = a4[7];
  if (v665 >= 1)
  {
    v666 = 1 << (v665 - 1);
    v667 = v666 - 1;
    v668 = -v666;
    if (v664 < v667)
    {
      LODWORD(v667) = v664;
    }

    if (v664 >= v668)
    {
      v664 = v667;
    }

    else
    {
      v664 = v668;
    }
  }

  v669 = v663 >> a3;
  v670 = (v2095 + v558 * v1984 + v2093 * v1880) >> a3;
  a2[10] = v664;
  v671 = v643 - v2002;
  v672 = a4[7];
  if (v672 >= 1)
  {
    v673 = 1 << (v672 - 1);
    v674 = v673 - 1;
    v675 = -v673;
    if (v671 < v674)
    {
      LODWORD(v674) = v643 - v2002;
    }

    if (v671 >= v675)
    {
      v671 = v674;
    }

    else
    {
      v671 = v675;
    }
  }

  v676 = -v2090;
  v1869 = v671;
  a2[11] = v671;
  v677 = v1812 - v2006;
  v678 = a4[7];
  v1881 = v664;
  if (v678 >= 1)
  {
    v679 = 1 << (v678 - 1);
    v680 = v679 - 1;
    v681 = -v679;
    if (v677 < v680)
    {
      LODWORD(v680) = v1812 - v2006;
    }

    if (v677 >= v681)
    {
      v677 = v680;
    }

    else
    {
      v677 = v681;
    }
  }

  v682 = v2015 * v676;
  v1769 = v677;
  a2[12] = v677;
  v683 = v670 - v669;
  v684 = a4[7];
  v1822 = v658;
  if (v684 >= 1)
  {
    v685 = 1 << (v684 - 1);
    v686 = v685 - 1;
    v687 = -v685;
    if (v683 < v686)
    {
      LODWORD(v686) = v670 - v669;
    }

    if (v683 >= v687)
    {
      v683 = v686;
    }

    else
    {
      v683 = v687;
    }
  }

  v688 = v2023 * v676;
  v689 = v2095 + v682;
  a2[13] = v683;
  v690 = v669 + v670;
  v691 = a4[7];
  v1764 = v683;
  if (v691 >= 1)
  {
    v692 = 1 << (v691 - 1);
    v693 = v692 - 1;
    v694 = -v692;
    if (v690 < v693)
    {
      LODWORD(v693) = v690;
    }

    if (v690 >= v694)
    {
      v690 = v693;
    }

    else
    {
      v690 = v694;
    }
  }

  v695 = v2095 + v688;
  v696 = v689 + v1885 * v2082;
  v697 = -v558;
  v2051 = v690;
  a2[14] = v690;
  v698 = v1812 + v2006;
  v699 = a4[7];
  if (v699 >= 1)
  {
    v700 = 1 << (v699 - 1);
    v701 = v700 - 1;
    v702 = -v700;
    if (v698 < v701)
    {
      LODWORD(v701) = v1812 + v2006;
    }

    if (v698 >= v702)
    {
      v698 = v701;
    }

    else
    {
      v698 = v702;
    }
  }

  v703 = v2095 + v619 * v558 + v592 * v626;
  v704 = v2095 + v616 * v626 + v595 * v697;
  v2075 = -v558;
  v705 = v2095 + v613 * v626 + v598 * v697;
  v706 = v2095 + v613 * v558 + v598 * v626;
  v707 = v2095 + v616 * v558 + v595 * v626;
  v708 = v2095 + v619 * v2093 + v592 * v558;
  v2047 = v698;
  a2[15] = v698;
  a2[16] = v2060;
  v709 = (v2095 + v622 * v558 + v2070 * v626) >> a3;
  a2[17] = v1947;
  a2[18] = v709;
  v710 = v703 >> a3;
  v711 = v704 >> a3;
  a2[19] = v703 >> a3;
  a2[20] = v704 >> a3;
  v712 = v705 >> a3;
  a2[21] = v705 >> a3;
  a2[22] = v1933;
  a2[23] = v1957;
  a2[24] = v2044;
  a2[25] = v1952;
  a2[26] = v706 >> a3;
  v1759 = v706 >> a3;
  v1745 = v708 >> a3;
  v1750 = v707 >> a3;
  a2[27] = v707 >> a3;
  a2[28] = v708 >> a3;
  v1754 = (v2095 + v622 * v2093 + v2070 * v558) >> a3;
  a2[29] = v1754;
  a2[30] = v1938;
  a2[31] = v1929;
  v713 = v1993 + v1850;
  v714 = a4[7];
  v715 = (v2095 + v2055 * v2082 + v1864 * v2090) >> a3;
  v716 = v696 >> a3;
  if (v714 >= 1)
  {
    v717 = 1 << (v714 - 1);
    v718 = v717 - 1;
    v719 = -v717;
    if (v713 < v718)
    {
      LODWORD(v718) = v1993 + v1850;
    }

    if (v713 >= v719)
    {
      v713 = v718;
    }

    else
    {
      v713 = v719;
    }
  }

  v720 = -v2078;
  v721 = (v2095 + v2027 * v2082 + v1877 * v2090) >> a3;
  v722 = (v695 + v1895 * v2082) >> a3;
  v2071 = v713;
  a2[32] = v713;
  v723 = v1817 + v1839;
  v724 = a4[7];
  if (v724 >= 1)
  {
    v725 = 1 << (v724 - 1);
    v726 = v725 - 1;
    v727 = -v725;
    if (v723 < v726)
    {
      LODWORD(v726) = v1817 + v1839;
    }

    if (v723 >= v727)
    {
      v723 = v726;
    }

    else
    {
      v723 = v727;
    }
  }

  v2037 = v723;
  a2[33] = v723;
  v728 = v715 + v716;
  v729 = a4[7];
  if (v729 >= 1)
  {
    v730 = 1 << (v729 - 1);
    v731 = v730 - 1;
    v732 = -v730;
    if (v728 < v731)
    {
      LODWORD(v731) = v715 + v716;
    }

    if (v728 >= v732)
    {
      v728 = v731;
    }

    else
    {
      v728 = v732;
    }
  }

  v2011 = v728;
  a2[34] = v728;
  v733 = v721 + v722;
  v734 = a4[7];
  if (v734 >= 1)
  {
    v735 = 1 << (v734 - 1);
    v736 = v735 - 1;
    v737 = -v735;
    if (v733 < v736)
    {
      LODWORD(v736) = v721 + v722;
    }

    if (v733 >= v737)
    {
      v733 = v736;
    }

    else
    {
      v733 = v737;
    }
  }

  v738 = -v2086;
  a2[35] = v733;
  v739 = v721 - v722;
  v740 = a4[7];
  v1989 = v733;
  if (v740 >= 1)
  {
    v741 = 1 << (v740 - 1);
    v742 = v741 - 1;
    v743 = -v741;
    if (v739 < v742)
    {
      LODWORD(v742) = v739;
    }

    if (v739 >= v743)
    {
      v739 = v742;
    }

    else
    {
      v739 = v743;
    }
  }

  v2007 = v739;
  a2[36] = v739;
  v744 = v715 - v716;
  v745 = a4[7];
  if (v745 >= 1)
  {
    v746 = 1 << (v745 - 1);
    v747 = v746 - 1;
    v748 = -v746;
    if (v744 < v747)
    {
      LODWORD(v747) = v744;
    }

    if (v744 >= v748)
    {
      v744 = v747;
    }

    else
    {
      v744 = v748;
    }
  }

  v749 = v2095 + v1909 * v738;
  v2003 = v744;
  a2[37] = v744;
  v750 = v1839 - v1817;
  v751 = a4[7];
  if (v751 >= 1)
  {
    v752 = 1 << (v751 - 1);
    v753 = v752 - 1;
    v754 = -v752;
    if (v750 < v753)
    {
      LODWORD(v753) = v1839 - v1817;
    }

    if (v750 >= v754)
    {
      v750 = v753;
    }

    else
    {
      v750 = v754;
    }
  }

  a2[38] = v750;
  v755 = v1850 - v1993;
  v756 = a4[7];
  if (v756 >= 1)
  {
    v757 = 1 << (v756 - 1);
    v758 = v757 - 1;
    v759 = -v757;
    if (v755 < v758)
    {
      LODWORD(v758) = v1850 - v1993;
    }

    if (v755 >= v759)
    {
      v755 = v758;
    }

    else
    {
      v755 = v759;
    }
  }

  v760 = v2095 + v1967 * v738 + v1900 * v2019;
  v761 = (v2095 + v1998 * v2019 + v1859 * v2086) >> a3;
  v762 = (v749 + v1890 * v2019) >> a3;
  v2020 = v755;
  a2[39] = v755;
  v763 = v1942 - v1847;
  v764 = a4[7];
  if (v764 >= 1)
  {
    v765 = 1 << (v764 - 1);
    v766 = v765 - 1;
    v767 = -v765;
    if (v763 < v766)
    {
      LODWORD(v766) = v1942 - v1847;
    }

    if (v763 >= v767)
    {
      v763 = v766;
    }

    else
    {
      v763 = v767;
    }
  }

  v768 = v2032;
  v769 = (v2095 + v1972 * v720 + v1873 * v2086) >> a3;
  v770 = v760 >> a3;
  v1994 = v763;
  a2[40] = v763;
  v771 = v1914 - v1835;
  v772 = a4[7];
  if (v772 >= 1)
  {
    v773 = 1 << (v772 - 1);
    v774 = v773 - 1;
    v775 = -v773;
    if (v771 < v774)
    {
      LODWORD(v774) = v1914 - v1835;
    }

    if (v771 >= v775)
    {
      v771 = v774;
    }

    else
    {
      v771 = v775;
    }
  }

  v1985 = v771;
  a2[41] = v771;
  v776 = v762 - v761;
  v777 = a4[7];
  if (v777 >= 1)
  {
    v778 = 1 << (v777 - 1);
    v779 = v778 - 1;
    v780 = -v778;
    if (v776 < v779)
    {
      LODWORD(v779) = v762 - v761;
    }

    if (v776 >= v780)
    {
      v776 = v779;
    }

    else
    {
      v776 = v780;
    }
  }

  v1981 = v776;
  a2[42] = v776;
  v781 = v770 - v769;
  v782 = a4[7];
  if (v782 >= 1)
  {
    v783 = 1 << (v782 - 1);
    v784 = v783 - 1;
    v785 = -v783;
    if (v781 < v784)
    {
      LODWORD(v784) = v770 - v769;
    }

    if (v781 >= v785)
    {
      v781 = v784;
    }

    else
    {
      v781 = v785;
    }
  }

  a2[43] = v781;
  v786 = v769 + v770;
  v787 = a4[7];
  if (v787 >= 1)
  {
    v788 = 1 << (v787 - 1);
    v789 = v788 - 1;
    v790 = -v788;
    if (v786 < v789)
    {
      LODWORD(v789) = v786;
    }

    if (v786 >= v790)
    {
      v786 = v789;
    }

    else
    {
      v786 = v790;
    }
  }

  a2[44] = v786;
  v791 = v761 + v762;
  v792 = a4[7];
  v1977 = v781;
  if (v792 >= 1)
  {
    v793 = 1 << (v792 - 1);
    v794 = v793 - 1;
    v795 = -v793;
    if (v791 < v794)
    {
      LODWORD(v794) = v791;
    }

    if (v791 >= v795)
    {
      v791 = v794;
    }

    else
    {
      v791 = v795;
    }
  }

  a2[45] = v791;
  v796 = v1914 + v1835;
  v797 = a4[7];
  v1840 = v786;
  v1818 = v791;
  if (v797 >= 1)
  {
    v798 = 1 << (v797 - 1);
    v799 = v798 - 1;
    v800 = -v798;
    if (v796 < v799)
    {
      LODWORD(v799) = v1914 + v1835;
    }

    if (v796 >= v800)
    {
      v796 = v799;
    }

    else
    {
      v796 = v800;
    }
  }

  v801 = v2023;
  a2[46] = v796;
  v802 = v1942 + v1847;
  v803 = a4[7];
  if (v803 >= 1)
  {
    v804 = 1 << (v803 - 1);
    v805 = v804 - 1;
    v806 = -v804;
    if (v802 < v805)
    {
      LODWORD(v805) = v1942 + v1847;
    }

    if (v802 >= v806)
    {
      v802 = v805;
    }

    else
    {
      v802 = v806;
    }
  }

  v807 = v2060;
  v808 = (v2095 + v1909 * v720 + v1890 * v2086) >> a3;
  v809 = (v2095 + v1998 * v2086 + v1859 * v2078) >> a3;
  v1943 = v802;
  a2[47] = v802;
  v810 = v1919 + v2032;
  v811 = a4[7];
  if (v811 >= 1)
  {
    v812 = 1 << (v811 - 1);
    v813 = v812 - 1;
    v814 = -v812;
    if (v810 < v813)
    {
      LODWORD(v813) = v1919 + v2032;
    }

    if (v810 >= v814)
    {
      v810 = v813;
    }

    else
    {
      v810 = v814;
    }
  }

  v815 = (v2095 + v1967 * v720 + v1900 * v2086) >> v233;
  v816 = (v2095 + v1972 * v2086 + v1873 * v2078) >> v233;
  v2033 = v810;
  a2[48] = v810;
  v817 = v1809 + v1830;
  v818 = a4[7];
  if (v818 >= 1)
  {
    v819 = 1 << (v818 - 1);
    v820 = v819 - 1;
    v821 = -v819;
    if (v817 < v820)
    {
      LODWORD(v820) = v1809 + v1830;
    }

    if (v817 >= v821)
    {
      v817 = v820;
    }

    else
    {
      v817 = v821;
    }
  }

  v2024 = v817;
  a2[49] = v817;
  v822 = v809 + v808;
  v823 = a4[7];
  if (v823 >= 1)
  {
    v824 = 1 << (v823 - 1);
    v825 = v824 - 1;
    v826 = -v824;
    if (v822 < v825)
    {
      LODWORD(v825) = v809 + v808;
    }

    if (v822 >= v826)
    {
      v822 = v825;
    }

    else
    {
      v822 = v826;
    }
  }

  v1999 = v822;
  a2[50] = v822;
  v827 = v816 + v815;
  v828 = a4[7];
  if (v828 >= 1)
  {
    v829 = 1 << (v828 - 1);
    v830 = v829 - 1;
    v831 = -v829;
    if (v827 < v830)
    {
      LODWORD(v830) = v816 + v815;
    }

    if (v827 >= v831)
    {
      v827 = v830;
    }

    else
    {
      v827 = v831;
    }
  }

  a2[51] = v827;
  v832 = v815 - v816;
  v833 = a4[7];
  if (v833 >= 1)
  {
    v834 = 1 << (v833 - 1);
    v835 = v834 - 1;
    v836 = -v834;
    if (v832 < v835)
    {
      LODWORD(v835) = v815 - v816;
    }

    if (v832 >= v836)
    {
      v832 = v835;
    }

    else
    {
      v832 = v836;
    }
  }

  v837 = v2015 * v2082;
  v1905 = v832;
  a2[52] = v832;
  v838 = v808 - v809;
  v839 = a4[7];
  if (v839 >= 1)
  {
    v840 = 1 << (v839 - 1);
    v841 = v840 - 1;
    v842 = -v840;
    if (v838 < v841)
    {
      LODWORD(v841) = v838;
    }

    if (v838 >= v842)
    {
      v838 = v841;
    }

    else
    {
      v838 = v842;
    }
  }

  v2016 = v827;
  v843 = v801 * v2082;
  v844 = v2095 + v837;
  a2[53] = v838;
  v845 = v1830 - v1809;
  v846 = a4[7];
  v1910 = v838;
  if (v846 >= 1)
  {
    v847 = 1 << (v846 - 1);
    v848 = v847 - 1;
    v849 = -v847;
    if (v845 < v848)
    {
      LODWORD(v848) = v1830 - v1809;
    }

    if (v845 >= v849)
    {
      v845 = v848;
    }

    else
    {
      v845 = v849;
    }
  }

  v850 = v2095 + v843;
  v851 = v844 + v1885 * v2090;
  a2[54] = v845;
  v852 = v768 - v1919;
  v853 = a4[7];
  if (v853 >= 1)
  {
    v854 = 1 << (v853 - 1);
    v855 = v854 - 1;
    v856 = -v854;
    if (v852 < v855)
    {
      LODWORD(v855) = v768 - v1919;
    }

    if (v852 >= v856)
    {
      v852 = v855;
    }

    else
    {
      v852 = v856;
    }
  }

  v857 = v850 + v1895 * v2090;
  v858 = v2095 + v2027 * v2090 + v1877 * v2040;
  v859 = v851 >> v233;
  v860 = (v2095 + v2055 * v2090 + v1864 * v2040) >> v233;
  v2028 = v852;
  a2[55] = v852;
  v861 = v1800 - v1843;
  v862 = a4[7];
  if (v862 >= 1)
  {
    v863 = 1 << (v862 - 1);
    v864 = v863 - 1;
    v865 = -v863;
    if (v861 < v864)
    {
      LODWORD(v864) = v1800 - v1843;
    }

    if (v861 >= v865)
    {
      v861 = v864;
    }

    else
    {
      v861 = v865;
    }
  }

  v866 = v857 >> v233;
  v867 = v858 >> v233;
  v1920 = v861;
  a2[56] = v861;
  v868 = v1805 - v1826;
  v869 = a4[7];
  if (v869 >= 1)
  {
    v870 = 1 << (v869 - 1);
    v871 = v870 - 1;
    v872 = -v870;
    if (v868 < v871)
    {
      LODWORD(v871) = v1805 - v1826;
    }

    if (v868 >= v872)
    {
      v868 = v871;
    }

    else
    {
      v868 = v872;
    }
  }

  v1901 = v868;
  a2[57] = v868;
  v873 = v860 - v859;
  v874 = a4[7];
  if (v874 >= 1)
  {
    v875 = 1 << (v874 - 1);
    v876 = v875 - 1;
    v877 = -v875;
    if (v873 < v876)
    {
      LODWORD(v876) = v860 - v859;
    }

    if (v873 >= v877)
    {
      v873 = v876;
    }

    else
    {
      v873 = v877;
    }
  }

  v1896 = v873;
  a2[58] = v873;
  v878 = v867 - v866;
  v879 = a4[7];
  if (v879 >= 1)
  {
    v880 = 1 << (v879 - 1);
    v881 = v880 - 1;
    v882 = -v880;
    if (v878 < v881)
    {
      LODWORD(v881) = v867 - v866;
    }

    if (v878 >= v882)
    {
      v878 = v881;
    }

    else
    {
      v878 = v882;
    }
  }

  a2[59] = v878;
  v883 = v867 + v866;
  v884 = a4[7];
  v1891 = v878;
  if (v884 >= 1)
  {
    v885 = 1 << (v884 - 1);
    v886 = v885 - 1;
    v887 = -v885;
    if (v883 < v886)
    {
      LODWORD(v886) = v883;
    }

    if (v883 >= v887)
    {
      v883 = v886;
    }

    else
    {
      v883 = v887;
    }
  }

  a2[60] = v883;
  v888 = v860 + v859;
  v889 = a4[7];
  if (v889 >= 1)
  {
    v890 = 1 << (v889 - 1);
    v891 = v890 - 1;
    v892 = -v890;
    if (v888 < v891)
    {
      LODWORD(v891) = v888;
    }

    if (v888 >= v892)
    {
      v888 = v891;
    }

    else
    {
      v888 = v892;
    }
  }

  v893 = v1957;
  a2[61] = v888;
  v894 = v1805 + v1826;
  v895 = a4[7];
  if (v895 >= 1)
  {
    v896 = 1 << (v895 - 1);
    v897 = v896 - 1;
    v898 = -v896;
    if (v894 < v897)
    {
      LODWORD(v897) = v1805 + v1826;
    }

    if (v894 >= v898)
    {
      v894 = v897;
    }

    else
    {
      v894 = v898;
    }
  }

  a2[62] = v894;
  v899 = v1800 + v1843;
  v900 = a4[7];
  v1844 = v888;
  v1836 = v894;
  v1915 = v845;
  if (v900 >= 1)
  {
    v901 = 1 << (v900 - 1);
    v902 = v901 - 1;
    v903 = -v901;
    if (v899 < v902)
    {
      LODWORD(v902) = v899;
    }

    if (v899 >= v903)
    {
      v899 = v902;
    }

    else
    {
      v899 = v903;
    }
  }

  v2068 = v554;
  v1886 = v883;
  v2041 = v750;
  v1831 = v899;
  a2[63] = v899;
  v904 = v1795 + v1924;
  v905 = a4[8];
  v1813 = v796;
  if (v905 <= 0)
  {
    v2091 = v1795 + v1924;
    v913 = v1792 + v1778;
    v916 = v1788 + v1773;
    v919 = v1783 + v1962;
    v922 = v1783 - v1962;
    v925 = v1788 - v1773;
    v928 = v1792 - v1778;
    v930 = v1795 - v1924;
  }

  else
  {
    v906 = 1 << (v905 - 1);
    v907 = v906 - 1;
    v908 = -v906;
    if (v904 >= v906 - 1)
    {
      v909 = v906 - 1;
    }

    else
    {
      v909 = v1795 + v1924;
    }

    if (v904 >= v908)
    {
      v910 = v909;
    }

    else
    {
      v910 = -v906;
    }

    v2091 = v910;
    v911 = v1792 + v1778;
    if (v911 >= v907)
    {
      v912 = v907;
    }

    else
    {
      v912 = v1792 + v1778;
    }

    if (v911 >= v908)
    {
      v913 = v912;
    }

    else
    {
      v913 = v908;
    }

    v914 = v1788 + v1773;
    if (v914 >= v907)
    {
      v915 = v907;
    }

    else
    {
      v915 = v1788 + v1773;
    }

    if (v914 >= v908)
    {
      v916 = v915;
    }

    else
    {
      v916 = v908;
    }

    v917 = v1783 + v1962;
    if (v917 >= v907)
    {
      v918 = v907;
    }

    else
    {
      v918 = v1783 + v1962;
    }

    if (v917 >= v908)
    {
      v919 = v918;
    }

    else
    {
      v919 = v908;
    }

    v920 = v1783 - v1962;
    if (v920 >= v907)
    {
      v921 = v907;
    }

    else
    {
      v921 = v1783 - v1962;
    }

    if (v920 >= v908)
    {
      v922 = v921;
    }

    else
    {
      v922 = v908;
    }

    v923 = v1788 - v1773;
    if (v923 >= v907)
    {
      v924 = v907;
    }

    else
    {
      v924 = v1788 - v1773;
    }

    if (v923 >= v908)
    {
      v925 = v924;
    }

    else
    {
      v925 = v908;
    }

    v926 = v1792 - v1778;
    if (v926 >= v907)
    {
      v927 = v907;
    }

    else
    {
      v927 = v1792 - v1778;
    }

    if (v926 >= v908)
    {
      v928 = v927;
    }

    else
    {
      v928 = v908;
    }

    v929 = v1795 - v1924;
    if (v929 < v907)
    {
      LODWORD(v907) = v1795 - v1924;
    }

    if (v929 >= v908)
    {
      v930 = v907;
    }

    else
    {
      v930 = v908;
    }
  }

  v931 = v2095 + v1764 * v2068;
  v932 = v2095 + v1769 * v2068;
  v933 = v2060 + v1957;
  if (v905 <= 0)
  {
    v1973 = v2060 + v1957;
    v1958 = v1947 + v1933;
    v1963 = v709 + v712;
    v1968 = v710 + v711;
    v2061 = v710 - v711;
    v2056 = v709 - v712;
    v1948 = v1947 - v1933;
    v958 = v807 - v893;
    v1934 = v1929 - v2044;
    v1865 = v1938 - v1952;
    v1860 = v1754 - v1759;
    v969 = v1745 - v1750;
    v2079 = v1745 + v1750;
    v2083 = v1754 + v1759;
    v2087 = v1952 + v1938;
    v980 = v1929 + v2044;
  }

  else
  {
    v934 = 1 << (v905 - 1);
    v935 = v934 - 1;
    v936 = -v934;
    if (v933 >= v935)
    {
      v937 = v935;
    }

    else
    {
      v937 = v2060 + v1957;
    }

    if (v933 >= v936)
    {
      v938 = v937;
    }

    else
    {
      v938 = v936;
    }

    v1973 = v938;
    v939 = v1947 + v1933;
    if (v939 >= v935)
    {
      v940 = v935;
    }

    else
    {
      v940 = v1947 + v1933;
    }

    if (v939 >= v936)
    {
      v941 = v940;
    }

    else
    {
      v941 = v936;
    }

    v1958 = v941;
    v942 = v712 + v709;
    if (v942 >= v935)
    {
      v943 = v935;
    }

    else
    {
      v943 = v712 + v709;
    }

    if (v942 >= v936)
    {
      v944 = v943;
    }

    else
    {
      v944 = v936;
    }

    v1963 = v944;
    v945 = v710 + v711;
    if (v945 >= v935)
    {
      v946 = v935;
    }

    else
    {
      v946 = v710 + v711;
    }

    if (v945 >= v936)
    {
      v947 = v946;
    }

    else
    {
      v947 = v936;
    }

    v1968 = v947;
    v948 = v710 - v711;
    if (v948 >= v935)
    {
      v949 = v935;
    }

    else
    {
      v949 = v710 - v711;
    }

    if (v948 >= v936)
    {
      v950 = v949;
    }

    else
    {
      v950 = v936;
    }

    v2061 = v950;
    v951 = v709 - v712;
    if (v951 >= v935)
    {
      v952 = v935;
    }

    else
    {
      v952 = v709 - v712;
    }

    if (v951 >= v936)
    {
      v953 = v952;
    }

    else
    {
      v953 = v936;
    }

    v2056 = v953;
    v954 = v1947 - v1933;
    if (v954 >= v935)
    {
      v955 = v935;
    }

    else
    {
      v955 = v1947 - v1933;
    }

    if (v954 >= v936)
    {
      v956 = v955;
    }

    else
    {
      v956 = v936;
    }

    v1948 = v956;
    v957 = v807 - v893;
    if (v957 >= v935)
    {
      v958 = v935;
    }

    else
    {
      v958 = v807 - v893;
    }

    if (v957 < v936)
    {
      v958 = v936;
    }

    v959 = v1929 - v2044;
    if (v959 >= v935)
    {
      v960 = v935;
    }

    else
    {
      v960 = v1929 - v2044;
    }

    if (v959 >= v936)
    {
      v961 = v960;
    }

    else
    {
      v961 = v936;
    }

    v1934 = v961;
    v962 = v1938 - v1952;
    if (v962 >= v935)
    {
      v963 = v935;
    }

    else
    {
      v963 = v1938 - v1952;
    }

    if (v962 >= v936)
    {
      v964 = v963;
    }

    else
    {
      v964 = v936;
    }

    v1865 = v964;
    v965 = v1754 - v1759;
    if (v965 >= v935)
    {
      v966 = v935;
    }

    else
    {
      v966 = v1754 - v1759;
    }

    if (v965 >= v936)
    {
      v967 = v966;
    }

    else
    {
      v967 = v936;
    }

    v1860 = v967;
    v968 = v1745 - v1750;
    if (v968 >= v935)
    {
      v969 = v935;
    }

    else
    {
      v969 = v1745 - v1750;
    }

    if (v968 < v936)
    {
      v969 = v936;
    }

    v970 = v1750 + v1745;
    if (v970 >= v935)
    {
      v971 = v935;
    }

    else
    {
      v971 = v1750 + v1745;
    }

    if (v970 >= v936)
    {
      v972 = v971;
    }

    else
    {
      v972 = v936;
    }

    v2079 = v972;
    v973 = v1754 + v1759;
    if (v973 >= v935)
    {
      v974 = v935;
    }

    else
    {
      v974 = v1754 + v1759;
    }

    if (v973 >= v936)
    {
      v975 = v974;
    }

    else
    {
      v975 = v936;
    }

    v2083 = v975;
    v976 = v1952 + v1938;
    if (v976 >= v935)
    {
      v977 = v935;
    }

    else
    {
      v977 = v1952 + v1938;
    }

    if (v976 >= v936)
    {
      v978 = v977;
    }

    else
    {
      v978 = v936;
    }

    v2087 = v978;
    v979 = v1929 + v2044;
    if (v979 < v935)
    {
      LODWORD(v935) = v1929 + v2044;
    }

    if (v979 >= v936)
    {
      v980 = v935;
    }

    else
    {
      v980 = v936;
    }
  }

  v1953 = v980;
  v981 = (v931 + v1881 * v2068) >> v233;
  v982 = v2091 + v2047;
  v983 = a4[9];
  if (v983 >= 1)
  {
    v984 = 1 << (v983 - 1);
    v985 = v984 - 1;
    v986 = -v984;
    if (v982 < v985)
    {
      LODWORD(v985) = v2091 + v2047;
    }

    if (v982 >= v986)
    {
      v982 = v985;
    }

    else
    {
      v982 = v986;
    }
  }

  v987 = v932 + v1869 * v2065;
  v988 = (v932 + v1869 * v2068) >> v233;
  *a2 = v982;
  v989 = v913 + v2051;
  v990 = a4[9];
  v1796 = v982;
  if (v990 >= 1)
  {
    v991 = 1 << (v990 - 1);
    v992 = v991 - 1;
    v993 = -v991;
    if (v989 < v992)
    {
      LODWORD(v992) = v913 + v2051;
    }

    if (v989 >= v993)
    {
      v989 = v992;
    }

    else
    {
      v989 = v993;
    }
  }

  v994 = v931 + v1881 * v2065;
  v995 = v987 >> v233;
  a2[1] = v989;
  v996 = v916 + v981;
  v997 = a4[9];
  if (v997 >= 1)
  {
    v998 = 1 << (v997 - 1);
    v999 = v998 - 1;
    v1000 = -v998;
    if (v996 < v999)
    {
      LODWORD(v999) = v916 + v981;
    }

    if (v996 >= v1000)
    {
      v996 = v999;
    }

    else
    {
      v996 = v1000;
    }
  }

  v1001 = v994 >> v233;
  a2[2] = v996;
  v1002 = v919 + v988;
  v1003 = a4[9];
  if (v1003 >= 1)
  {
    v1004 = 1 << (v1003 - 1);
    v1005 = v1004 - 1;
    v1006 = -v1004;
    if (v1002 < v1005)
    {
      LODWORD(v1005) = v919 + v988;
    }

    if (v1002 >= v1006)
    {
      v1002 = v1005;
    }

    else
    {
      v1002 = v1006;
    }
  }

  a2[3] = v1002;
  v1007 = v922 + v995;
  v1008 = a4[9];
  if (v1008 >= 1)
  {
    v1009 = 1 << (v1008 - 1);
    v1010 = v1009 - 1;
    v1011 = -v1009;
    if (v1007 < v1010)
    {
      LODWORD(v1010) = v922 + v995;
    }

    if (v1007 >= v1011)
    {
      v1007 = v1010;
    }

    else
    {
      v1007 = v1011;
    }
  }

  a2[4] = v1007;
  v1012 = v925 + v1001;
  v1013 = a4[9];
  if (v1013 >= 1)
  {
    v1014 = 1 << (v1013 - 1);
    v1015 = v1014 - 1;
    v1016 = -v1014;
    if (v1012 < v1015)
    {
      LODWORD(v1015) = v925 + v1001;
    }

    if (v1012 >= v1016)
    {
      v1012 = v1015;
    }

    else
    {
      v1012 = v1016;
    }
  }

  v1925 = v1012;
  a2[5] = v1012;
  v1017 = v928 + v1822;
  v1018 = a4[9];
  if (v1018 >= 1)
  {
    v1019 = 1 << (v1018 - 1);
    v1020 = v1019 - 1;
    v1021 = -v1019;
    if (v1017 < v1020)
    {
      LODWORD(v1020) = v928 + v1822;
    }

    if (v1017 >= v1021)
    {
      v1017 = v1020;
    }

    else
    {
      v1017 = v1021;
    }
  }

  v1810 = v1017;
  a2[6] = v1017;
  v1022 = v1855;
  LODWORD(v1023) = v930 + v1855;
  v1024 = a4[9];
  if (v1024 >= 1)
  {
    v1025 = 1 << (v1024 - 1);
    v1026 = v1025 - 1;
    v1023 = -v1025;
    if (v930 + v1855 < v1026)
    {
      LODWORD(v1026) = v930 + v1855;
    }

    v1022 = v1855;
    if (v930 + v1855 >= v1023)
    {
      LODWORD(v1023) = v1026;
    }
  }

  v1882 = v989;
  v1806 = v1023;
  a2[7] = v1023;
  v1027 = v930 - v1022;
  v1028 = a4[9];
  if (v1028 >= 1)
  {
    v1029 = 1 << (v1028 - 1);
    v1030 = v1029 - 1;
    v1031 = -v1029;
    if (v1027 < v1030)
    {
      LODWORD(v1030) = v1027;
    }

    if (v1027 >= v1031)
    {
      v1027 = v1030;
    }

    else
    {
      v1027 = v1031;
    }
  }

  v1801 = v1027;
  a2[8] = v1027;
  v1032 = v928 - v1822;
  v1033 = a4[9];
  if (v1033 >= 1)
  {
    v1034 = 1 << (v1033 - 1);
    v1035 = v1034 - 1;
    v1036 = -v1034;
    if (v1032 < v1035)
    {
      LODWORD(v1035) = v928 - v1822;
    }

    if (v1032 >= v1036)
    {
      v1032 = v1035;
    }

    else
    {
      v1032 = v1036;
    }
  }

  a2[9] = v1032;
  v1037 = v925 - v1001;
  v1038 = a4[9];
  if (v1038 >= 1)
  {
    v1039 = 1 << (v1038 - 1);
    v1040 = v1039 - 1;
    v1041 = -v1039;
    if (v1037 < v1040)
    {
      LODWORD(v1040) = v1037;
    }

    if (v1037 >= v1041)
    {
      v1037 = v1040;
    }

    else
    {
      v1037 = v1041;
    }
  }

  a2[10] = v1037;
  v1042 = v922 - v995;
  v1043 = a4[9];
  if (v1043 >= 1)
  {
    v1044 = 1 << (v1043 - 1);
    v1045 = v1044 - 1;
    v1046 = -v1044;
    if (v1042 < v1045)
    {
      LODWORD(v1045) = v1042;
    }

    if (v1042 >= v1046)
    {
      v1042 = v1045;
    }

    else
    {
      v1042 = v1046;
    }
  }

  v1793 = v1037;
  a2[11] = v1042;
  v1047 = v919 - v988;
  v1048 = a4[9];
  if (v1048 >= 1)
  {
    v1049 = 1 << (v1048 - 1);
    v1050 = v1049 - 1;
    v1051 = -v1049;
    if (v1047 < v1050)
    {
      LODWORD(v1050) = v919 - v988;
    }

    if (v1047 >= v1051)
    {
      v1047 = v1050;
    }

    else
    {
      v1047 = v1051;
    }
  }

  v1784 = v1047;
  v1789 = v1042;
  a2[12] = v1047;
  v1052 = v916 - v981;
  v1053 = a4[9];
  if (v1053 >= 1)
  {
    v1054 = 1 << (v1053 - 1);
    v1055 = v1054 - 1;
    v1056 = -v1054;
    if (v1052 < v1055)
    {
      LODWORD(v1055) = v916 - v981;
    }

    if (v1052 >= v1056)
    {
      v1052 = v1055;
    }

    else
    {
      v1052 = v1056;
    }
  }

  v1779 = v1052;
  a2[13] = v1052;
  v1057 = v913 - v2051;
  v1058 = a4[9];
  v1874 = v1002;
  if (v1058 >= 1)
  {
    v1059 = 1 << (v1058 - 1);
    v1060 = v1059 - 1;
    v1061 = -v1059;
    if (v1057 < v1060)
    {
      LODWORD(v1060) = v913 - v2051;
    }

    if (v1057 >= v1061)
    {
      v1057 = v1060;
    }

    else
    {
      v1057 = v1061;
    }
  }

  v1774 = v1057;
  a2[14] = v1057;
  v1062 = v2091 - v2047;
  v1063 = a4[9];
  v1878 = v996;
  v1870 = v1007;
  v1823 = v1032;
  if (v1063 >= 1)
  {
    v1064 = 1 << (v1063 - 1);
    v1065 = v1064 - 1;
    v1066 = -v1064;
    if (v1062 < v1065)
    {
      LODWORD(v1065) = v2091 - v2047;
    }

    if (v1062 >= v1066)
    {
      v1062 = v1065;
    }

    else
    {
      v1062 = v1066;
    }
  }

  v1067 = v2095 + v969 * v2068;
  v2092 = v233;
  v1068 = (v1067 + v2061 * v2065) >> v233;
  a2[15] = v1062;
  a2[16] = v1973;
  a2[17] = v1958;
  a2[18] = v1963;
  a2[19] = v1968;
  a2[20] = v1068;
  v1751 = v1068;
  v1069 = v2095 + v1860 * v2068;
  v1070 = v2095 + v1865 * v2068;
  v1746 = (v1069 + v2056 * v2065) >> v2092;
  a2[21] = v1746;
  a2[22] = (v1070 + v1948 * v2065) >> v2092;
  v1755 = (v1070 + v1948 * v2065) >> v2092;
  v1071 = v2095 + v1934 * v2068;
  v1760 = (v1071 + v958 * v2065) >> v2092;
  v1765 = (v1071 + v958 * v2068) >> v2092;
  a2[23] = v1760;
  a2[24] = v1765;
  v1072 = v1069 + v2056 * v2068;
  v1770 = (v1070 + v1948 * v2068) >> v2092;
  a2[25] = v1770;
  a2[26] = v1072 >> v2092;
  v1861 = v1072 >> v2092;
  v1866 = (v1067 + v2061 * v2068) >> v2092;
  a2[27] = v1866;
  a2[28] = v2079;
  a2[29] = v2083;
  a2[30] = v2087;
  a2[31] = v980;
  v1073 = v1943 + v2071;
  v1074 = a4[9];
  if (v1074 >= 1)
  {
    v1075 = 1 << (v1074 - 1);
    v1076 = v1075 - 1;
    v1077 = -v1075;
    if (v1073 < v1076)
    {
      LODWORD(v1076) = v1943 + v2071;
    }

    if (v1073 >= v1077)
    {
      v1073 = v1076;
    }

    else
    {
      v1073 = v1077;
    }
  }

  a2[32] = v1073;
  LODWORD(v1078) = v1813 + v2037;
  v1079 = a4[9];
  if (v1079 >= 1)
  {
    v1080 = 1 << (v1079 - 1);
    v1081 = v1080 - 1;
    v1078 = -v1080;
    if (v1813 + v2037 < v1081)
    {
      LODWORD(v1081) = v1813 + v2037;
    }

    if (v1813 + v2037 >= v1078)
    {
      LODWORD(v1078) = v1081;
    }
  }

  v1082 = (v2095 + v2007 * v626 + v1891 * v558) >> v2092;
  v1083 = (v2095 + v1977 * v2075 + v1905 * v626) >> v2092;
  v2057 = v1078;
  a2[33] = v1078;
  v1084 = v1818 + v2011;
  v1085 = a4[9];
  if (v1085 >= 1)
  {
    v1086 = 1 << (v1085 - 1);
    v1087 = v1086 - 1;
    v1088 = -v1086;
    if (v1084 < v1087)
    {
      LODWORD(v1087) = v1818 + v2011;
    }

    if (v1084 >= v1088)
    {
      v1084 = v1087;
    }

    else
    {
      v1084 = v1088;
    }
  }

  v1089 = (v2095 + v2003 * v626 + v1896 * v558) >> v2092;
  v1090 = (v2095 + v1981 * v2075 + v1910 * v626) >> v2092;
  a2[34] = v1084;
  v1091 = v1840 + v1989;
  v1092 = a4[9];
  if (v1092 >= 1)
  {
    v1093 = 1 << (v1092 - 1);
    v1094 = v1093 - 1;
    v1095 = -v1093;
    if (v1091 < v1094)
    {
      LODWORD(v1094) = v1840 + v1989;
    }

    if (v1091 >= v1095)
    {
      v1091 = v1094;
    }

    else
    {
      v1091 = v1095;
    }
  }

  v1096 = (v2095 + v2041 * v626 + v1901 * v558) >> v2092;
  v1097 = (v2095 + v1985 * v2075 + v1915 * v626) >> v2092;
  a2[35] = v1091;
  v1098 = v1082 + v1083;
  v1099 = a4[9];
  if (v1099 >= 1)
  {
    v1100 = 1 << (v1099 - 1);
    v1101 = v1100 - 1;
    v1102 = -v1100;
    if (v1098 < v1101)
    {
      LODWORD(v1101) = v1082 + v1083;
    }

    if (v1098 >= v1102)
    {
      v1098 = v1101;
    }

    else
    {
      v1098 = v1102;
    }
  }

  v1103 = (v2095 + v2020 * v626 + v1920 * v558) >> v2092;
  v1104 = (v2095 + v1994 * v2075 + v2028 * v626) >> v2092;
  v1851 = v1098;
  a2[36] = v1098;
  v1105 = v1089 + v1090;
  v1106 = a4[9];
  if (v1106 >= 1)
  {
    v1107 = 1 << (v1106 - 1);
    v1108 = v1107 - 1;
    v1109 = -v1107;
    if (v1105 < v1108)
    {
      LODWORD(v1108) = v1089 + v1090;
    }

    if (v1105 >= v1109)
    {
      v1105 = v1108;
    }

    else
    {
      v1105 = v1109;
    }
  }

  a2[37] = v1105;
  v1110 = v1096 + v1097;
  v1111 = a4[9];
  if (v1111 >= 1)
  {
    v1112 = 1 << (v1111 - 1);
    v1113 = v1112 - 1;
    v1114 = -v1112;
    if (v1110 < v1113)
    {
      LODWORD(v1113) = v1096 + v1097;
    }

    if (v1110 >= v1114)
    {
      v1110 = v1113;
    }

    else
    {
      v1110 = v1114;
    }
  }

  v2048 = v1110;
  a2[38] = v1110;
  v1115 = v1103 + v1104;
  v1116 = a4[9];
  if (v1116 >= 1)
  {
    v1117 = 1 << (v1116 - 1);
    v1118 = v1117 - 1;
    v1119 = -v1117;
    if (v1115 < v1118)
    {
      LODWORD(v1118) = v1103 + v1104;
    }

    if (v1115 >= v1119)
    {
      v1115 = v1118;
    }

    else
    {
      v1115 = v1119;
    }
  }

  a2[39] = v1115;
  v1120 = v1103 - v1104;
  v1121 = a4[9];
  if (v1121 >= 1)
  {
    v1122 = 1 << (v1121 - 1);
    v1123 = v1122 - 1;
    v1124 = -v1122;
    if (v1120 < v1123)
    {
      LODWORD(v1123) = v1120;
    }

    if (v1120 >= v1124)
    {
      v1120 = v1123;
    }

    else
    {
      v1120 = v1124;
    }
  }

  a2[40] = v1120;
  v1125 = v1096 - v1097;
  v1126 = a4[9];
  if (v1126 >= 1)
  {
    v1127 = 1 << (v1126 - 1);
    v1128 = v1127 - 1;
    v1129 = -v1127;
    if (v1125 < v1128)
    {
      LODWORD(v1128) = v1125;
    }

    if (v1125 >= v1129)
    {
      v1125 = v1128;
    }

    else
    {
      v1125 = v1129;
    }
  }

  a2[41] = v1125;
  v1130 = v1089 - v1090;
  v1131 = a4[9];
  if (v1131 >= 1)
  {
    v1132 = 1 << (v1131 - 1);
    v1133 = v1132 - 1;
    v1134 = -v1132;
    if (v1130 < v1133)
    {
      LODWORD(v1133) = v1089 - v1090;
    }

    if (v1130 >= v1134)
    {
      v1130 = v1133;
    }

    else
    {
      v1130 = v1134;
    }
  }

  a2[42] = v1130;
  v1135 = v1082 - v1083;
  v1136 = a4[9];
  if (v1136 >= 1)
  {
    v1137 = 1 << (v1136 - 1);
    v1138 = v1137 - 1;
    v1139 = -v1137;
    if (v1135 < v1138)
    {
      LODWORD(v1138) = v1135;
    }

    if (v1135 >= v1139)
    {
      v1135 = v1138;
    }

    else
    {
      v1135 = v1139;
    }
  }

  v1140 = v1905;
  v1939 = v1135;
  a2[43] = v1135;
  v1141 = v1989 - v1840;
  v1142 = a4[9];
  if (v1142 >= 1)
  {
    v1143 = 1 << (v1142 - 1);
    v1144 = v1143 - 1;
    v1145 = -v1143;
    if (v1141 < v1144)
    {
      LODWORD(v1144) = v1989 - v1840;
    }

    if (v1141 >= v1145)
    {
      v1141 = v1144;
    }

    else
    {
      v1141 = v1145;
    }
  }

  v1935 = v1141;
  a2[44] = v1141;
  v1146 = v2011 - v1818;
  v1147 = a4[9];
  if (v1147 >= 1)
  {
    v1148 = 1 << (v1147 - 1);
    v1149 = v1148 - 1;
    v1150 = -v1148;
    if (v1146 < v1149)
    {
      LODWORD(v1149) = v2011 - v1818;
    }

    if (v1146 >= v1150)
    {
      v1146 = v1149;
    }

    else
    {
      v1146 = v1150;
    }
  }

  v1949 = v1130;
  v1930 = v1146;
  a2[45] = v1146;
  v1151 = v2037 - v1813;
  v1152 = a4[9];
  v1848 = v1105;
  v2076 = v1120;
  if (v1152 >= 1)
  {
    v1153 = 1 << (v1152 - 1);
    v1154 = v1153 - 1;
    v1155 = -v1153;
    if (v1151 < v1154)
    {
      LODWORD(v1154) = v2037 - v1813;
    }

    if (v1151 >= v1155)
    {
      v1151 = v1154;
    }

    else
    {
      v1151 = v1155;
    }
  }

  v1906 = v1151;
  a2[46] = v1151;
  v1156 = v2071 - v1943;
  v1157 = a4[9];
  v2062 = v1073;
  v1827 = v1125;
  if (v1157 >= 1)
  {
    v1158 = 1 << (v1157 - 1);
    v1159 = v1158 - 1;
    v1160 = -v1158;
    if (v1156 < v1159)
    {
      LODWORD(v1159) = v2071 - v1943;
    }

    if (v1156 >= v1160)
    {
      v1156 = v1159;
    }

    else
    {
      v1156 = v1160;
    }
  }

  a2[47] = v1156;
  v1161 = v1831 - v2033;
  v1162 = a4[9];
  v2052 = v1091;
  v2045 = v1115;
  if (v1162 >= 1)
  {
    v1163 = 1 << (v1162 - 1);
    v1164 = v1163 - 1;
    v1165 = -v1163;
    if (v1161 < v1164)
    {
      LODWORD(v1164) = v1831 - v2033;
    }

    if (v1161 >= v1165)
    {
      v1161 = v1164;
    }

    else
    {
      v1161 = v1165;
    }
  }

  a2[48] = v1161;
  v1166 = v1836 - v2024;
  v1167 = a4[9];
  v1856 = v1084;
  if (v1167 >= 1)
  {
    v1168 = 1 << (v1167 - 1);
    v1169 = v1168 - 1;
    v1170 = -v1168;
    if (v1166 < v1169)
    {
      LODWORD(v1169) = v1836 - v2024;
    }

    if (v1166 >= v1170)
    {
      v1166 = v1169;
    }

    else
    {
      v1166 = v1170;
    }
  }

  v1171 = (v2095 + v1977 * v626 + v1140 * v558) >> v2092;
  v1172 = (v2095 + v2007 * v558 + v1891 * v2093) >> v2092;
  a2[49] = v1166;
  LODWORD(v1173) = v1844 - v1999;
  v1174 = a4[9];
  if (v1174 >= 1)
  {
    v1175 = 1 << (v1174 - 1);
    v1176 = v1175 - 1;
    v1173 = -v1175;
    if (v1844 - v1999 < v1176)
    {
      LODWORD(v1176) = v1844 - v1999;
    }

    if (v1844 - v1999 >= v1173)
    {
      LODWORD(v1173) = v1176;
    }
  }

  v1177 = (v2095 + v1981 * v626 + v1910 * v558) >> v2092;
  v1178 = (v2095 + v2003 * v558 + v1896 * v2093) >> v2092;
  v1741 = v1173;
  a2[50] = v1173;
  v1179 = v1886 - v2016;
  v1180 = a4[9];
  if (v1180 >= 1)
  {
    v1181 = 1 << (v1180 - 1);
    v1182 = v1181 - 1;
    v1183 = -v1181;
    if (v1179 < v1182)
    {
      LODWORD(v1182) = v1886 - v2016;
    }

    if (v1179 >= v1183)
    {
      v1179 = v1182;
    }

    else
    {
      v1179 = v1183;
    }
  }

  v1184 = v2095 + v1994 * v626 + v2028 * v558;
  v1185 = v2095 + v2020 * v558 + v1920 * v2093;
  v1186 = (v2095 + v1985 * v626 + v1915 * v558) >> v2092;
  v1187 = (v2095 + v2041 * v558 + v1901 * v2093) >> v2092;
  a2[51] = v1179;
  v1188 = v1172 - v1171;
  v1189 = a4[9];
  if (v1189 >= 1)
  {
    v1190 = 1 << (v1189 - 1);
    v1191 = v1190 - 1;
    v1192 = -v1190;
    if (v1188 < v1191)
    {
      LODWORD(v1191) = v1172 - v1171;
    }

    if (v1188 >= v1192)
    {
      v1188 = v1191;
    }

    else
    {
      v1188 = v1192;
    }
  }

  v1193 = v1184 >> v2092;
  v1194 = v1185 >> v2092;
  a2[52] = v1188;
  v1195 = v1178 - v1177;
  v1196 = a4[9];
  if (v1196 >= 1)
  {
    v1197 = 1 << (v1196 - 1);
    v1198 = v1197 - 1;
    v1199 = -v1197;
    if (v1195 < v1198)
    {
      LODWORD(v1198) = v1178 - v1177;
    }

    if (v1195 >= v1199)
    {
      v1195 = v1198;
    }

    else
    {
      v1195 = v1199;
    }
  }

  a2[53] = v1195;
  v1200 = v1187 - v1186;
  v1201 = a4[9];
  if (v1201 >= 1)
  {
    v1202 = 1 << (v1201 - 1);
    v1203 = v1202 - 1;
    v1204 = -v1202;
    if (v1200 < v1203)
    {
      LODWORD(v1203) = v1187 - v1186;
    }

    if (v1200 >= v1204)
    {
      v1200 = v1203;
    }

    else
    {
      v1200 = v1204;
    }
  }

  v1205 = v1801;
  a2[54] = v1200;
  v1206 = v1194 - v1193;
  v1207 = a4[9];
  if (v1207 >= 1)
  {
    v1208 = 1 << (v1207 - 1);
    v1209 = v1208 - 1;
    v1210 = -v1208;
    if (v1206 < v1209)
    {
      LODWORD(v1209) = v1194 - v1193;
    }

    if (v1206 >= v1210)
    {
      v1206 = v1209;
    }

    else
    {
      v1206 = v1210;
    }
  }

  v1211 = v2095;
  a2[55] = v1206;
  v1212 = v1194 + v1193;
  v1213 = a4[9];
  if (v1213 >= 1)
  {
    v1214 = 1 << (v1213 - 1);
    v1215 = v1214 - 1;
    v1216 = -v1214;
    if (v1212 < v1215)
    {
      LODWORD(v1215) = v1212;
    }

    if (v1212 >= v1216)
    {
      v1212 = v1215;
    }

    else
    {
      v1212 = v1216;
    }
  }

  a2[56] = v1212;
  v1217 = v1187 + v1186;
  v1218 = a4[9];
  if (v1218 >= 1)
  {
    v1219 = 1 << (v1218 - 1);
    v1220 = v1219 - 1;
    v1221 = -v1219;
    if (v1217 < v1220)
    {
      LODWORD(v1220) = v1217;
    }

    if (v1217 >= v1221)
    {
      v1217 = v1220;
    }

    else
    {
      v1217 = v1221;
    }
  }

  v2042 = v1217;
  a2[57] = v1217;
  v1222 = v1178 + v1177;
  v1223 = a4[9];
  if (v1223 >= 1)
  {
    v1224 = 1 << (v1223 - 1);
    v1225 = v1224 - 1;
    v1226 = -v1224;
    if (v1222 < v1225)
    {
      LODWORD(v1225) = v1178 + v1177;
    }

    if (v1222 >= v1226)
    {
      v1222 = v1225;
    }

    else
    {
      v1222 = v1226;
    }
  }

  v2038 = v1222;
  a2[58] = v1222;
  v1227 = v1172 + v1171;
  v1228 = a4[9];
  v1819 = v1156;
  if (v1228 >= 1)
  {
    v1229 = 1 << (v1228 - 1);
    v1230 = v1229 - 1;
    v1231 = -v1229;
    if (v1227 < v1230)
    {
      LODWORD(v1230) = v1227;
    }

    if (v1227 >= v1231)
    {
      v1227 = v1230;
    }

    else
    {
      v1227 = v1231;
    }
  }

  a2[59] = v1227;
  v1232 = v1886 + v2016;
  v1233 = a4[9];
  if (v1233 >= 1)
  {
    v1234 = 1 << (v1233 - 1);
    v1235 = v1234 - 1;
    v1236 = -v1234;
    if (v1232 < v1235)
    {
      LODWORD(v1235) = v1886 + v2016;
    }

    if (v1232 >= v1236)
    {
      v1232 = v1235;
    }

    else
    {
      v1232 = v1236;
    }
  }

  a2[60] = v1232;
  v1237 = v1844 + v1999;
  v1238 = a4[9];
  if (v1238 >= 1)
  {
    v1239 = 1 << (v1238 - 1);
    v1240 = v1239 - 1;
    v1241 = -v1239;
    if (v1237 < v1240)
    {
      LODWORD(v1240) = v1844 + v1999;
    }

    if (v1237 >= v1241)
    {
      v1237 = v1240;
    }

    else
    {
      v1237 = v1241;
    }
  }

  v1242 = v2076;
  v1814 = v1166;
  a2[61] = v1237;
  v1243 = v1836 + v2024;
  v1244 = a4[9];
  if (v1244 >= 1)
  {
    v1245 = 1 << (v1244 - 1);
    v1246 = v1245 - 1;
    v1247 = -v1245;
    if (v1243 < v1246)
    {
      LODWORD(v1246) = v1836 + v2024;
    }

    if (v1243 >= v1247)
    {
      v1243 = v1246;
    }

    else
    {
      v1243 = v1247;
    }
  }

  v1248 = v1925;
  a2[62] = v1243;
  v1249 = v1831 + v2033;
  v1250 = a4[9];
  if (v1250 >= 1)
  {
    v1251 = 1 << (v1250 - 1);
    v1252 = v1251 - 1;
    v1253 = -v1251;
    if (v1249 < v1252)
    {
      LODWORD(v1252) = v1831 + v2033;
    }

    if (v1249 >= v1253)
    {
      v1249 = v1252;
    }

    else
    {
      v1249 = v1253;
    }
  }

  v1802 = v1195;
  v1832 = v1179;
  v1837 = v1161;
  v2034 = v1249;
  a2[63] = v1249;
  v1254 = v1796 + v1953;
  v1255 = a4[10];
  v1887 = v1243;
  v1892 = v1227;
  v1897 = v1212;
  if (v1255 <= 0)
  {
    v1349 = v1796 - v1953;
    v1954 = v1062 + v1973;
    v1974 = v1062 - v1973;
    v1978 = v1774 + v1958;
    v1959 = v1774 - v1958;
    v1982 = v1779 + v1963;
    v1964 = v1779 - v1963;
    v1986 = v1784 + v1968;
    v1841 = v1784 - v1968;
    v1990 = v1789 + v1751;
    v1969 = v1789 - v1751;
    v1995 = v1793 + v1746;
    v1944 = v1793 - v1746;
    v2000 = v1823 + v1755;
    v1926 = v1823 - v1755;
    v2004 = v1205 + v1760;
    v1921 = v1205 - v1760;
    v2008 = v1806 + v1765;
    v1916 = v1806 - v1765;
    v2012 = v1810 + v1770;
    v1911 = v1810 - v1770;
    v2017 = v1248 + v1861;
    v1337 = v1248 - v1861;
    v2021 = v1870 + v1866;
    v1902 = v1870 - v1866;
    v2025 = v1874 + v2079;
    v2080 = v1874 - v2079;
    v2029 = v1878 + v2083;
    v1344 = v1878 - v2083;
    v2094 = v1882 + v2087;
    v1347 = v1882 - v2087;
  }

  else
  {
    v1797 = v1796 - v1953;
    v1256 = 1 << (v1255 - 1);
    v1257 = v1256 - 1;
    v1258 = -v1256;
    if (v1254 >= v1256 - 1)
    {
      v1259 = v1256 - 1;
    }

    else
    {
      v1259 = v1254;
    }

    if (v1254 >= v1258)
    {
      v1260 = v1259;
    }

    else
    {
      v1260 = -v1256;
    }

    v2072 = v1260;
    v1261 = v1882 + v2087;
    if (v1261 >= v1257)
    {
      v1262 = v1257;
    }

    else
    {
      v1262 = v1882 + v2087;
    }

    if (v1261 >= v1258)
    {
      v1263 = v1262;
    }

    else
    {
      v1263 = v1258;
    }

    v2094 = v1263;
    v1264 = v2083 + v1878;
    if (v1264 >= v1257)
    {
      v1265 = v1257;
    }

    else
    {
      v1265 = v2083 + v1878;
    }

    if (v1264 >= v1258)
    {
      v1266 = v1265;
    }

    else
    {
      v1266 = v1258;
    }

    v2029 = v1266;
    v1267 = v1874 + v2079;
    if (v1267 >= v1257)
    {
      v1268 = v1257;
    }

    else
    {
      v1268 = v1874 + v2079;
    }

    if (v1267 >= v1258)
    {
      v1269 = v1268;
    }

    else
    {
      v1269 = v1258;
    }

    v2025 = v1269;
    v1270 = v1870 + v1866;
    if (v1270 >= v1257)
    {
      v1271 = v1257;
    }

    else
    {
      v1271 = v1870 + v1866;
    }

    if (v1270 >= v1258)
    {
      v1272 = v1271;
    }

    else
    {
      v1272 = v1258;
    }

    v2021 = v1272;
    v1273 = v1925 + v1861;
    if (v1273 >= v1257)
    {
      v1274 = v1257;
    }

    else
    {
      v1274 = v1925 + v1861;
    }

    if (v1273 >= v1258)
    {
      v1275 = v1274;
    }

    else
    {
      v1275 = v1258;
    }

    v2017 = v1275;
    v1276 = v1810 + v1770;
    if (v1276 >= v1257)
    {
      v1277 = v1257;
    }

    else
    {
      v1277 = v1810 + v1770;
    }

    if (v1276 >= v1258)
    {
      v1278 = v1277;
    }

    else
    {
      v1278 = v1258;
    }

    v2012 = v1278;
    v1279 = v1806 + v1765;
    if (v1279 >= v1257)
    {
      v1280 = v1257;
    }

    else
    {
      v1280 = v1806 + v1765;
    }

    if (v1279 >= v1258)
    {
      v1281 = v1280;
    }

    else
    {
      v1281 = v1258;
    }

    v2008 = v1281;
    v1282 = v1205 + v1760;
    if (v1282 >= v1257)
    {
      v1283 = v1257;
    }

    else
    {
      v1283 = v1205 + v1760;
    }

    if (v1282 >= v1258)
    {
      v1284 = v1283;
    }

    else
    {
      v1284 = v1258;
    }

    v2004 = v1284;
    v1285 = v1823 + v1755;
    if (v1285 >= v1257)
    {
      v1286 = v1257;
    }

    else
    {
      v1286 = v1823 + v1755;
    }

    if (v1285 >= v1258)
    {
      v1287 = v1286;
    }

    else
    {
      v1287 = v1258;
    }

    v2000 = v1287;
    v1288 = v1793 + v1746;
    if (v1288 >= v1257)
    {
      v1289 = v1257;
    }

    else
    {
      v1289 = v1793 + v1746;
    }

    if (v1288 >= v1258)
    {
      v1290 = v1289;
    }

    else
    {
      v1290 = v1258;
    }

    v1995 = v1290;
    v1291 = v1789 + v1751;
    if (v1291 >= v1257)
    {
      v1292 = v1257;
    }

    else
    {
      v1292 = v1789 + v1751;
    }

    if (v1291 >= v1258)
    {
      v1293 = v1292;
    }

    else
    {
      v1293 = v1258;
    }

    v1990 = v1293;
    v1294 = v1968 + v1784;
    if (v1294 >= v1257)
    {
      v1295 = v1257;
    }

    else
    {
      v1295 = v1968 + v1784;
    }

    if (v1294 >= v1258)
    {
      v1296 = v1295;
    }

    else
    {
      v1296 = v1258;
    }

    v1986 = v1296;
    v1297 = v1779 + v1963;
    if (v1297 >= v1257)
    {
      v1298 = v1257;
    }

    else
    {
      v1298 = v1779 + v1963;
    }

    if (v1297 >= v1258)
    {
      v1299 = v1298;
    }

    else
    {
      v1299 = v1258;
    }

    v1982 = v1299;
    v1300 = v1925;
    v1301 = v1958 + v1774;
    if (v1301 >= v1257)
    {
      v1302 = v1257;
    }

    else
    {
      v1302 = v1958 + v1774;
    }

    if (v1301 >= v1258)
    {
      v1303 = v1302;
    }

    else
    {
      v1303 = v1258;
    }

    v1978 = v1303;
    v1304 = v1062 + v1973;
    if (v1304 >= v1257)
    {
      v1305 = v1257;
    }

    else
    {
      v1305 = v1062 + v1973;
    }

    v1306 = v1062 - v1973;
    if (v1304 >= v1258)
    {
      v1307 = v1305;
    }

    else
    {
      v1307 = v1258;
    }

    v1954 = v1307;
    if (v1306 >= v1257)
    {
      v1308 = v1257;
    }

    else
    {
      v1308 = v1306;
    }

    v1309 = v1306 < v1258;
    v1310 = v1774 - v1958;
    if (v1309)
    {
      v1308 = v1258;
    }

    v1974 = v1308;
    if (v1310 >= v1257)
    {
      v1311 = v1257;
    }

    else
    {
      v1311 = v1774 - v1958;
    }

    v1309 = v1310 < v1258;
    v1312 = v1779 - v1963;
    if (v1309)
    {
      v1311 = v1258;
    }

    v1959 = v1311;
    if (v1312 >= v1257)
    {
      v1313 = v1257;
    }

    else
    {
      v1313 = v1779 - v1963;
    }

    v1309 = v1312 < v1258;
    v1314 = v1784 - v1968;
    if (v1309)
    {
      v1315 = v1258;
    }

    else
    {
      v1315 = v1313;
    }

    v1964 = v1315;
    if (v1314 >= v1257)
    {
      v1316 = v1257;
    }

    else
    {
      v1316 = v1784 - v1968;
    }

    v1317 = v1789 - v1751;
    if (v1314 >= v1258)
    {
      v1318 = v1316;
    }

    else
    {
      v1318 = v1258;
    }

    v1841 = v1318;
    if (v1317 >= v1257)
    {
      v1319 = v1257;
    }

    else
    {
      v1319 = v1789 - v1751;
    }

    v1309 = v1317 < v1258;
    v1320 = v1793 - v1746;
    if (v1309)
    {
      v1319 = v1258;
    }

    v1969 = v1319;
    if (v1320 >= v1257)
    {
      v1321 = v1257;
    }

    else
    {
      v1321 = v1793 - v1746;
    }

    v1309 = v1320 < v1258;
    v1322 = v1823 - v1755;
    v1211 = v2095;
    if (v1309)
    {
      v1321 = v1258;
    }

    v1944 = v1321;
    if (v1322 >= v1257)
    {
      v1323 = v1257;
    }

    else
    {
      v1323 = v1823 - v1755;
    }

    v1309 = v1322 < v1258;
    v1324 = v1205 - v1760;
    if (v1309)
    {
      v1325 = v1258;
    }

    else
    {
      v1325 = v1323;
    }

    v1926 = v1325;
    if (v1324 >= v1257)
    {
      v1326 = v1257;
    }

    else
    {
      v1326 = v1205 - v1760;
    }

    v1309 = v1324 < v1258;
    v1327 = v1806 - v1765;
    if (v1309)
    {
      v1328 = v1258;
    }

    else
    {
      v1328 = v1326;
    }

    v1921 = v1328;
    if (v1327 >= v1257)
    {
      v1329 = v1257;
    }

    else
    {
      v1329 = v1806 - v1765;
    }

    v1309 = v1327 < v1258;
    v1330 = v1810 - v1770;
    v1254 = v2072;
    if (v1309)
    {
      v1331 = v1258;
    }

    else
    {
      v1331 = v1329;
    }

    v1916 = v1331;
    if (v1330 >= v1257)
    {
      v1332 = v1257;
    }

    else
    {
      v1332 = v1810 - v1770;
    }

    v1309 = v1330 < v1258;
    v1333 = v1300 - v1861;
    v1212 = v1897;
    if (v1309)
    {
      v1334 = v1258;
    }

    else
    {
      v1334 = v1332;
    }

    v1911 = v1334;
    if (v1333 >= v1257)
    {
      v1335 = v1257;
    }

    else
    {
      v1335 = v1333;
    }

    v1309 = v1333 < v1258;
    v1336 = v1870 - v1866;
    if (v1309)
    {
      v1337 = v1258;
    }

    else
    {
      v1337 = v1335;
    }

    if (v1336 >= v1257)
    {
      v1338 = v1257;
    }

    else
    {
      v1338 = v1870 - v1866;
    }

    v1309 = v1336 < v1258;
    v1339 = v1874 - v2079;
    if (v1309)
    {
      v1340 = v1258;
    }

    else
    {
      v1340 = v1338;
    }

    v1902 = v1340;
    if (v1339 >= v1257)
    {
      v1341 = v1257;
    }

    else
    {
      v1341 = v1874 - v2079;
    }

    v1309 = v1339 < v1258;
    v1342 = v1878 - v2083;
    if (v1309)
    {
      v1343 = v1258;
    }

    else
    {
      v1343 = v1341;
    }

    v2080 = v1343;
    if (v1342 >= v1257)
    {
      v1344 = v1257;
    }

    else
    {
      v1344 = v1878 - v2083;
    }

    v1309 = v1342 < v1258;
    v1345 = v1882 - v2087;
    v1242 = v2076;
    if (v1309)
    {
      v1344 = v1258;
    }

    if (v1345 >= v1257)
    {
      v1346 = v1257;
    }

    else
    {
      v1346 = v1882 - v2087;
    }

    if (v1345 >= v1258)
    {
      v1347 = v1346;
    }

    else
    {
      v1347 = v1258;
    }

    if (v1797 >= v1257)
    {
      v1348 = v1257;
    }

    else
    {
      v1348 = v1797;
    }

    if (v1797 >= v1258)
    {
      v1349 = v1348;
    }

    else
    {
      v1349 = v1258;
    }

    v1243 = v1887;
    v1227 = v1892;
  }

  v2073 = v1254;
  v1350 = v1254 + v2034;
  v1351 = a4[11];
  if (v1351 >= 1)
  {
    v1352 = 1 << (v1351 - 1);
    v1353 = v1352 - 1;
    v1354 = -v1352;
    if (v1350 < v1353)
    {
      LODWORD(v1353) = v1254 + v2034;
    }

    if (v1350 >= v1354)
    {
      v1350 = v1353;
    }

    else
    {
      v1350 = v1354;
    }
  }

  *a2 = v1350;
  v1355 = v2094 + v1243;
  v1356 = a4[11];
  if (v1356 >= 1)
  {
    v1357 = 1 << (v1356 - 1);
    v1358 = v1357 - 1;
    v1359 = -v1357;
    if (v1355 < v1358)
    {
      LODWORD(v1358) = v2094 + v1243;
    }

    if (v1355 >= v1359)
    {
      v1355 = v1358;
    }

    else
    {
      v1355 = v1359;
    }
  }

  a2[1] = v1355;
  v1360 = v2029 + v1237;
  v1361 = a4[11];
  v1845 = v1237;
  if (v1361 >= 1)
  {
    v1362 = 1 << (v1361 - 1);
    v1363 = v1362 - 1;
    v1364 = -v1362;
    if (v1360 < v1363)
    {
      LODWORD(v1363) = v2029 + v1237;
    }

    if (v1360 >= v1364)
    {
      v1360 = v1363;
    }

    else
    {
      v1360 = v1364;
    }
  }

  a2[2] = v1360;
  v2088 = v1232;
  v1365 = v2025 + v1232;
  v1366 = a4[11];
  if (v1366 >= 1)
  {
    v1367 = 1 << (v1366 - 1);
    v1368 = v1367 - 1;
    v1369 = -v1367;
    if (v1365 < v1368)
    {
      LODWORD(v1368) = v2025 + v1232;
    }

    if (v1365 >= v1369)
    {
      v1365 = v1368;
    }

    else
    {
      v1365 = v1369;
    }
  }

  v1370 = v1211 + v1206 * v2068;
  v1371 = v1242 * v2068;
  a2[3] = v1365;
  v1372 = v2021 + v1227;
  v1373 = a4[11];
  if (v1373 >= 1)
  {
    v1374 = 1 << (v1373 - 1);
    v1375 = v1374 - 1;
    v1376 = -v1374;
    if (v1372 < v1375)
    {
      LODWORD(v1375) = v2021 + v1227;
    }

    if (v1372 >= v1376)
    {
      v1372 = v1375;
    }

    else
    {
      v1372 = v1376;
    }
  }

  v1377 = v1211 + v1200 * v2068;
  a2[4] = v1372;
  v1378 = v2017 + v2038;
  v1379 = a4[11];
  if (v1379 >= 1)
  {
    v1380 = 1 << (v1379 - 1);
    v1381 = v1380 - 1;
    v1382 = -v1380;
    if (v1378 < v1381)
    {
      LODWORD(v1381) = v2017 + v2038;
    }

    if (v1378 >= v1382)
    {
      v1378 = v1381;
    }

    else
    {
      v1378 = v1382;
    }
  }

  v1383 = v1211 + v1802 * v2068;
  v1384 = (v1370 + v1371) >> v2092;
  a2[5] = v1378;
  v1385 = v2012 + v2042;
  v1386 = a4[11];
  v1387 = v1349;
  if (v1386 >= 1)
  {
    v1388 = 1 << (v1386 - 1);
    v1389 = v1388 - 1;
    v1390 = -v1388;
    if (v1385 < v1389)
    {
      LODWORD(v1389) = v2012 + v2042;
    }

    if (v1385 >= v1390)
    {
      v1385 = v1389;
    }

    else
    {
      v1385 = v1390;
    }
  }

  v1391 = v1211 + v1188 * v2068;
  v1392 = (v1377 + v1827 * v2068) >> v2092;
  a2[6] = v1385;
  v1393 = v2008 + v1212;
  v1394 = a4[11];
  if (v1394 >= 1)
  {
    v1395 = 1 << (v1394 - 1);
    v1396 = v1395 - 1;
    v1397 = -v1395;
    if (v1393 < v1396)
    {
      LODWORD(v1396) = v2008 + v1212;
    }

    if (v1393 >= v1397)
    {
      v1393 = v1396;
    }

    else
    {
      v1393 = v1397;
    }
  }

  v1398 = v2095 + v1832 * v2068;
  v1399 = v1391 + v1939 * v2068;
  v1400 = (v1383 + v1949 * v2068) >> v2092;
  a2[7] = v1393;
  v1401 = v2004 + v1384;
  v1402 = a4[11];
  if (v1402 >= 1)
  {
    v1403 = 1 << (v1402 - 1);
    v1404 = v1403 - 1;
    v1405 = -v1403;
    if (v1401 < v1404)
    {
      LODWORD(v1404) = v2004 + v1384;
    }

    if (v1401 >= v1405)
    {
      v1401 = v1404;
    }

    else
    {
      v1401 = v1405;
    }
  }

  v1406 = v2095 + v1741 * v2068;
  a2[8] = v1401;
  v1407 = v2000 + v1392;
  v1408 = a4[11];
  if (v1408 >= 1)
  {
    v1409 = 1 << (v1408 - 1);
    v1410 = v1409 - 1;
    v1411 = -v1409;
    if (v1407 < v1410)
    {
      LODWORD(v1410) = v2000 + v1392;
    }

    if (v1407 >= v1411)
    {
      v1407 = v1410;
    }

    else
    {
      v1407 = v1411;
    }
  }

  v1412 = v2095 + v1814 * v2068;
  v1413 = (v1398 + v1935 * v2068) >> v2092;
  a2[9] = v1407;
  v1414 = v1995 + v1400;
  v1415 = a4[11];
  if (v1415 >= 1)
  {
    v1416 = 1 << (v1415 - 1);
    v1417 = v1416 - 1;
    v1418 = -v1416;
    if (v1414 < v1417)
    {
      LODWORD(v1417) = v1995 + v1400;
    }

    if (v1414 >= v1418)
    {
      v1414 = v1417;
    }

    else
    {
      v1414 = v1418;
    }
  }

  v1419 = v2095 + v1837 * v2068;
  v1420 = (v1406 + v1930 * v2068) >> v2092;
  a2[10] = v1414;
  v2096 = v1399 >> v2092;
  v1421 = v1990 + (v1399 >> v2092);
  v1422 = a4[11];
  v1423 = (v1383 + v1949 * v2068) >> v2092;
  if (v1422 >= 1)
  {
    v1424 = 1 << (v1422 - 1);
    v1425 = v1424 - 1;
    v1426 = -v1424;
    if (v1421 < v1425)
    {
      LODWORD(v1425) = v1421;
    }

    if (v1421 >= v1426)
    {
      v1421 = v1425;
    }

    else
    {
      v1421 = v1426;
    }
  }

  v1427 = (v1412 + v1906 * v2068) >> v2092;
  a2[11] = v1421;
  v1428 = v1986 + v1413;
  v1429 = a4[11];
  if (v1429 >= 1)
  {
    v1430 = 1 << (v1429 - 1);
    v1431 = v1430 - 1;
    v1432 = -v1430;
    if (v1428 < v1431)
    {
      LODWORD(v1431) = v1986 + v1413;
    }

    if (v1428 >= v1432)
    {
      v1428 = v1431;
    }

    else
    {
      v1428 = v1432;
    }
  }

  v1433 = v1419 + v1819 * v2065;
  v1434 = (v1419 + v1819 * v2068) >> v2092;
  a2[12] = v1428;
  v1435 = v1982 + v1420;
  v1436 = a4[11];
  if (v1436 >= 1)
  {
    v1437 = 1 << (v1436 - 1);
    v1438 = v1437 - 1;
    v1439 = -v1437;
    if (v1435 < v1438)
    {
      LODWORD(v1438) = v1982 + v1420;
    }

    if (v1435 >= v1439)
    {
      v1435 = v1438;
    }

    else
    {
      v1435 = v1439;
    }
  }

  v1440 = v1412 + v1906 * v2065;
  v1441 = v1433 >> v2092;
  a2[13] = v1435;
  v1442 = v1978 + v1427;
  v1443 = a4[11];
  if (v1443 >= 1)
  {
    v1444 = 1 << (v1443 - 1);
    v1445 = v1444 - 1;
    v1446 = -v1444;
    if (v1442 < v1445)
    {
      LODWORD(v1445) = v1978 + v1427;
    }

    if (v1442 >= v1446)
    {
      v1442 = v1445;
    }

    else
    {
      v1442 = v1446;
    }
  }

  v1447 = v1406 + v1930 * v2065;
  v1448 = v1440 >> v2092;
  a2[14] = v1442;
  v1449 = v1954 + v1434;
  v1450 = a4[11];
  if (v1450 >= 1)
  {
    v1451 = 1 << (v1450 - 1);
    v1452 = v1451 - 1;
    v1453 = -v1451;
    if (v1449 < v1452)
    {
      LODWORD(v1452) = v1954 + v1434;
    }

    if (v1449 >= v1453)
    {
      v1449 = v1452;
    }

    else
    {
      v1449 = v1453;
    }
  }

  v1454 = v1398 + v1935 * v2065;
  v1455 = v1447 >> v2092;
  a2[15] = v1449;
  v1456 = v1974 + v1441;
  v1457 = a4[11];
  if (v1457 >= 1)
  {
    v1458 = 1 << (v1457 - 1);
    v1459 = v1458 - 1;
    v1460 = -v1458;
    if (v1456 < v1459)
    {
      LODWORD(v1459) = v1974 + v1441;
    }

    if (v1456 >= v1460)
    {
      v1456 = v1459;
    }

    else
    {
      v1456 = v1460;
    }
  }

  v1461 = v1391 + v1939 * v2065;
  result = v1454 >> v2092;
  a2[16] = v1456;
  v1463 = v1959 + v1448;
  v1464 = a4[11];
  v2084 = (v1377 + v1827 * v2068) >> v2092;
  if (v1464 >= 1)
  {
    v1465 = 1 << (v1464 - 1);
    v1466 = v1465 - 1;
    v1467 = -v1465;
    if (v1463 < v1466)
    {
      LODWORD(v1466) = v1959 + v1448;
    }

    if (v1463 >= v1467)
    {
      v1463 = v1466;
    }

    else
    {
      v1463 = v1467;
    }
  }

  v1468 = v1383 + v1949 * v2065;
  v1469 = v1461 >> v2092;
  a2[17] = v1463;
  v1470 = v1964 + v1455;
  v1471 = a4[11];
  if (v1471 >= 1)
  {
    v1472 = 1 << (v1471 - 1);
    v1473 = v1472 - 1;
    v1474 = -v1472;
    if (v1470 < v1473)
    {
      LODWORD(v1473) = v1964 + v1455;
    }

    if (v1470 >= v1474)
    {
      v1470 = v1473;
    }

    else
    {
      v1470 = v1474;
    }
  }

  v1475 = v1377 + v1827 * v2065;
  v1476 = v1468 >> v2092;
  a2[18] = v1470;
  v1477 = v1841 + result;
  v1478 = a4[11];
  if (v1478 >= 1)
  {
    v1479 = 1 << (v1478 - 1);
    v1480 = v1479 - 1;
    v1481 = -v1479;
    if (v1477 < v1480)
    {
      LODWORD(v1480) = v1841 + result;
    }

    if (v1477 >= v1481)
    {
      v1477 = v1480;
    }

    else
    {
      v1477 = v1481;
    }
  }

  v1482 = v1370 + v2076 * v2065;
  v1483 = v1475 >> v2092;
  a2[19] = v1477;
  v1484 = v1969 + v1469;
  v1485 = a4[11];
  if (v1485 >= 1)
  {
    v1486 = 1 << (v1485 - 1);
    v1487 = v1486 - 1;
    v1488 = -v1486;
    if (v1484 < v1487)
    {
      LODWORD(v1487) = v1969 + v1469;
    }

    if (v1484 >= v1488)
    {
      v1484 = v1487;
    }

    else
    {
      v1484 = v1488;
    }
  }

  v1489 = v1482 >> v2092;
  a2[20] = v1484;
  v1490 = v1944 + v1476;
  v1491 = a4[11];
  if (v1491 >= 1)
  {
    v1492 = 1 << (v1491 - 1);
    v1493 = v1492 - 1;
    v1494 = -v1492;
    if (v1490 < v1493)
    {
      LODWORD(v1493) = v1944 + v1476;
    }

    if (v1490 >= v1494)
    {
      v1490 = v1493;
    }

    else
    {
      v1490 = v1494;
    }
  }

  a2[21] = v1490;
  v1495 = v1926 + v1483;
  v1496 = a4[11];
  if (v1496 >= 1)
  {
    v1497 = 1 << (v1496 - 1);
    v1498 = v1497 - 1;
    v1499 = -v1497;
    if (v1495 < v1498)
    {
      LODWORD(v1498) = v1926 + v1483;
    }

    if (v1495 >= v1499)
    {
      v1495 = v1498;
    }

    else
    {
      v1495 = v1499;
    }
  }

  a2[22] = v1495;
  v1500 = v1921 + v1489;
  v1501 = a4[11];
  if (v1501 >= 1)
  {
    v1502 = 1 << (v1501 - 1);
    v1503 = v1502 - 1;
    v1504 = -v1502;
    if (v1500 < v1503)
    {
      LODWORD(v1503) = v1921 + v1489;
    }

    if (v1500 >= v1504)
    {
      v1500 = v1503;
    }

    else
    {
      v1500 = v1504;
    }
  }

  a2[23] = v1500;
  v1505 = v1916 + v2045;
  v1506 = a4[11];
  if (v1506 >= 1)
  {
    v1507 = 1 << (v1506 - 1);
    v1508 = v1507 - 1;
    v1509 = -v1507;
    if (v1505 < v1508)
    {
      LODWORD(v1508) = v1916 + v2045;
    }

    if (v1505 >= v1509)
    {
      v1505 = v1508;
    }

    else
    {
      v1505 = v1509;
    }
  }

  a2[24] = v1505;
  v1510 = v1911 + v2048;
  v1511 = a4[11];
  if (v1511 >= 1)
  {
    v1512 = 1 << (v1511 - 1);
    v1513 = v1512 - 1;
    v1514 = -v1512;
    if (v1510 < v1513)
    {
      LODWORD(v1513) = v1911 + v2048;
    }

    if (v1510 >= v1514)
    {
      v1510 = v1513;
    }

    else
    {
      v1510 = v1514;
    }
  }

  a2[25] = v1510;
  v1515 = v1337 + v1848;
  v1516 = a4[11];
  if (v1516 >= 1)
  {
    v1517 = 1 << (v1516 - 1);
    v1518 = v1517 - 1;
    v1519 = -v1517;
    if (v1515 < v1518)
    {
      LODWORD(v1518) = v1337 + v1848;
    }

    if (v1515 >= v1519)
    {
      v1515 = v1518;
    }

    else
    {
      v1515 = v1519;
    }
  }

  a2[26] = v1515;
  v1520 = v1902 + v1851;
  v1521 = a4[11];
  if (v1521 >= 1)
  {
    v1522 = 1 << (v1521 - 1);
    v1523 = v1522 - 1;
    v1524 = -v1522;
    if (v1520 < v1523)
    {
      LODWORD(v1523) = v1902 + v1851;
    }

    if (v1520 >= v1524)
    {
      v1520 = v1523;
    }

    else
    {
      v1520 = v1524;
    }
  }

  a2[27] = v1520;
  v1525 = v2080 + v2052;
  v1526 = a4[11];
  if (v1526 >= 1)
  {
    v1527 = 1 << (v1526 - 1);
    v1528 = v1527 - 1;
    v1529 = -v1527;
    if (v1525 < v1528)
    {
      LODWORD(v1528) = v2080 + v2052;
    }

    if (v1525 >= v1529)
    {
      v1525 = v1528;
    }

    else
    {
      v1525 = v1529;
    }
  }

  a2[28] = v1525;
  v1530 = v1344 + v1856;
  v1531 = a4[11];
  if (v1531 >= 1)
  {
    v1532 = 1 << (v1531 - 1);
    v1533 = v1532 - 1;
    v1534 = -v1532;
    if (v1530 < v1533)
    {
      LODWORD(v1533) = v1344 + v1856;
    }

    if (v1530 >= v1534)
    {
      v1530 = v1533;
    }

    else
    {
      v1530 = v1534;
    }
  }

  a2[29] = v1530;
  v1535 = v1347 + v2057;
  v1536 = a4[11];
  if (v1536 >= 1)
  {
    v1537 = 1 << (v1536 - 1);
    v1538 = v1537 - 1;
    v1539 = -v1537;
    if (v1535 < v1538)
    {
      LODWORD(v1538) = v1347 + v2057;
    }

    if (v1535 >= v1539)
    {
      v1535 = v1538;
    }

    else
    {
      v1535 = v1539;
    }
  }

  a2[30] = v1535;
  v1540 = v1387 + v2062;
  v1541 = a4[11];
  if (v1541 >= 1)
  {
    v1542 = 1 << (v1541 - 1);
    v1543 = v1542 - 1;
    v1544 = -v1542;
    if (v1540 < v1543)
    {
      LODWORD(v1543) = v1387 + v2062;
    }

    if (v1540 >= v1544)
    {
      v1540 = v1543;
    }

    else
    {
      v1540 = v1544;
    }
  }

  a2[31] = v1540;
  v1545 = v1387 - v2062;
  v1546 = a4[11];
  if (v1546 >= 1)
  {
    v1547 = 1 << (v1546 - 1);
    v1548 = v1547 - 1;
    v1549 = -v1547;
    if (v1545 < v1548)
    {
      LODWORD(v1548) = v1387 - v2062;
    }

    if (v1545 >= v1549)
    {
      v1545 = v1548;
    }

    else
    {
      v1545 = v1549;
    }
  }

  a2[32] = v1545;
  v1550 = v1347 - v2057;
  v1551 = a4[11];
  if (v1551 >= 1)
  {
    v1552 = 1 << (v1551 - 1);
    v1553 = v1552 - 1;
    v1554 = -v1552;
    if (v1550 < v1553)
    {
      LODWORD(v1553) = v1347 - v2057;
    }

    if (v1550 >= v1554)
    {
      v1550 = v1553;
    }

    else
    {
      v1550 = v1554;
    }
  }

  a2[33] = v1550;
  v1555 = v1344 - v1856;
  v1556 = a4[11];
  if (v1556 >= 1)
  {
    v1557 = 1 << (v1556 - 1);
    v1558 = v1557 - 1;
    v1559 = -v1557;
    if (v1555 < v1558)
    {
      LODWORD(v1558) = v1555;
    }

    if (v1555 >= v1559)
    {
      v1555 = v1558;
    }

    else
    {
      v1555 = v1559;
    }
  }

  a2[34] = v1555;
  v1560 = v2080 - v2052;
  v1561 = a4[11];
  if (v1561 >= 1)
  {
    v1562 = 1 << (v1561 - 1);
    v1563 = v1562 - 1;
    v1564 = -v1562;
    if (v1560 < v1563)
    {
      LODWORD(v1563) = v2080 - v2052;
    }

    if (v1560 >= v1564)
    {
      v1560 = v1563;
    }

    else
    {
      v1560 = v1564;
    }
  }

  a2[35] = v1560;
  v1565 = v1902 - v1851;
  v1566 = a4[11];
  if (v1566 >= 1)
  {
    v1567 = 1 << (v1566 - 1);
    v1568 = v1567 - 1;
    v1569 = -v1567;
    if (v1565 < v1568)
    {
      LODWORD(v1568) = v1902 - v1851;
    }

    if (v1565 >= v1569)
    {
      v1565 = v1568;
    }

    else
    {
      v1565 = v1569;
    }
  }

  a2[36] = v1565;
  v1570 = v1337 - v1848;
  v1571 = a4[11];
  if (v1571 >= 1)
  {
    v1572 = 1 << (v1571 - 1);
    v1573 = v1572 - 1;
    v1574 = -v1572;
    if (v1570 < v1573)
    {
      LODWORD(v1573) = v1337 - v1848;
    }

    if (v1570 >= v1574)
    {
      v1570 = v1573;
    }

    else
    {
      v1570 = v1574;
    }
  }

  a2[37] = v1570;
  v1575 = v1911 - v2048;
  v1576 = a4[11];
  if (v1576 >= 1)
  {
    v1577 = 1 << (v1576 - 1);
    v1578 = v1577 - 1;
    v1579 = -v1577;
    if (v1575 < v1578)
    {
      LODWORD(v1578) = v1911 - v2048;
    }

    if (v1575 >= v1579)
    {
      v1575 = v1578;
    }

    else
    {
      v1575 = v1579;
    }
  }

  a2[38] = v1575;
  v1580 = v1916 - v2045;
  v1581 = a4[11];
  if (v1581 >= 1)
  {
    v1582 = 1 << (v1581 - 1);
    v1583 = v1582 - 1;
    v1584 = -v1582;
    if (v1580 < v1583)
    {
      LODWORD(v1583) = v1916 - v2045;
    }

    if (v1580 >= v1584)
    {
      v1580 = v1583;
    }

    else
    {
      v1580 = v1584;
    }
  }

  a2[39] = v1580;
  v1585 = v1921 - v1489;
  v1586 = a4[11];
  if (v1586 >= 1)
  {
    v1587 = 1 << (v1586 - 1);
    v1588 = v1587 - 1;
    v1589 = -v1587;
    if (v1585 < v1588)
    {
      LODWORD(v1588) = v1585;
    }

    if (v1585 >= v1589)
    {
      v1585 = v1588;
    }

    else
    {
      v1585 = v1589;
    }
  }

  a2[40] = v1585;
  v1590 = v1926 - v1483;
  v1591 = a4[11];
  if (v1591 >= 1)
  {
    v1592 = 1 << (v1591 - 1);
    v1593 = v1592 - 1;
    v1594 = -v1592;
    if (v1590 < v1593)
    {
      LODWORD(v1593) = v1926 - v1483;
    }

    if (v1590 >= v1594)
    {
      v1590 = v1593;
    }

    else
    {
      v1590 = v1594;
    }
  }

  a2[41] = v1590;
  v1595 = v1944 - v1476;
  v1596 = a4[11];
  if (v1596 >= 1)
  {
    v1597 = 1 << (v1596 - 1);
    v1598 = v1597 - 1;
    v1599 = -v1597;
    if (v1595 < v1598)
    {
      LODWORD(v1598) = v1595;
    }

    if (v1595 >= v1599)
    {
      v1595 = v1598;
    }

    else
    {
      v1595 = v1599;
    }
  }

  a2[42] = v1595;
  v1600 = v1969 - v1469;
  v1601 = a4[11];
  if (v1601 >= 1)
  {
    v1602 = 1 << (v1601 - 1);
    v1603 = v1602 - 1;
    v1604 = -v1602;
    if (v1600 < v1603)
    {
      LODWORD(v1603) = v1969 - v1469;
    }

    if (v1600 >= v1604)
    {
      v1600 = v1603;
    }

    else
    {
      v1600 = v1604;
    }
  }

  a2[43] = v1600;
  v1605 = v1841 - result;
  v1606 = a4[11];
  if (v1606 >= 1)
  {
    v1607 = 1 << (v1606 - 1);
    v1608 = v1607 - 1;
    v1609 = -v1607;
    if (v1605 < v1608)
    {
      LODWORD(v1608) = v1841 - result;
    }

    if (v1605 >= v1609)
    {
      v1605 = v1608;
    }

    else
    {
      v1605 = v1609;
    }
  }

  a2[44] = v1605;
  v1610 = v1964 - v1455;
  v1611 = a4[11];
  if (v1611 >= 1)
  {
    v1612 = 1 << (v1611 - 1);
    v1613 = v1612 - 1;
    v1614 = -v1612;
    if (v1610 < v1613)
    {
      LODWORD(v1613) = v1964 - v1455;
    }

    if (v1610 >= v1614)
    {
      v1610 = v1613;
    }

    else
    {
      v1610 = v1614;
    }
  }

  a2[45] = v1610;
  v1615 = v1959 - v1448;
  v1616 = a4[11];
  if (v1616 >= 1)
  {
    v1617 = 1 << (v1616 - 1);
    v1618 = v1617 - 1;
    v1619 = -v1617;
    if (v1615 < v1618)
    {
      LODWORD(v1618) = v1959 - v1448;
    }

    if (v1615 >= v1619)
    {
      v1615 = v1618;
    }

    else
    {
      v1615 = v1619;
    }
  }

  a2[46] = v1615;
  v1620 = v1974 - v1441;
  v1621 = a4[11];
  if (v1621 >= 1)
  {
    v1622 = 1 << (v1621 - 1);
    v1623 = v1622 - 1;
    v1624 = -v1622;
    if (v1620 < v1623)
    {
      LODWORD(v1623) = v1974 - v1441;
    }

    if (v1620 >= v1624)
    {
      v1620 = v1623;
    }

    else
    {
      v1620 = v1624;
    }
  }

  a2[47] = v1620;
  v1625 = v1954 - v1434;
  v1626 = a4[11];
  if (v1626 >= 1)
  {
    v1627 = 1 << (v1626 - 1);
    v1628 = v1627 - 1;
    v1629 = -v1627;
    if (v1625 < v1628)
    {
      LODWORD(v1628) = v1954 - v1434;
    }

    if (v1625 >= v1629)
    {
      v1625 = v1628;
    }

    else
    {
      v1625 = v1629;
    }
  }

  a2[48] = v1625;
  v1630 = v1978 - v1427;
  v1631 = a4[11];
  if (v1631 >= 1)
  {
    v1632 = 1 << (v1631 - 1);
    v1633 = v1632 - 1;
    v1634 = -v1632;
    if (v1630 < v1633)
    {
      LODWORD(v1633) = v1630;
    }

    if (v1630 >= v1634)
    {
      v1630 = v1633;
    }

    else
    {
      v1630 = v1634;
    }
  }

  a2[49] = v1630;
  v1635 = v1982 - v1420;
  v1636 = a4[11];
  if (v1636 >= 1)
  {
    v1637 = 1 << (v1636 - 1);
    v1638 = v1637 - 1;
    v1639 = -v1637;
    if (v1635 < v1638)
    {
      LODWORD(v1638) = v1635;
    }

    if (v1635 >= v1639)
    {
      v1635 = v1638;
    }

    else
    {
      v1635 = v1639;
    }
  }

  a2[50] = v1635;
  v1640 = v1986 - v1413;
  v1641 = a4[11];
  if (v1641 >= 1)
  {
    v1642 = 1 << (v1641 - 1);
    v1643 = v1642 - 1;
    v1644 = -v1642;
    if (v1640 < v1643)
    {
      LODWORD(v1643) = v1986 - v1413;
    }

    if (v1640 >= v1644)
    {
      v1640 = v1643;
    }

    else
    {
      v1640 = v1644;
    }
  }

  a2[51] = v1640;
  v1645 = v1990 - v2096;
  v1646 = a4[11];
  if (v1646 >= 1)
  {
    v1647 = 1 << (v1646 - 1);
    v1648 = v1647 - 1;
    v1649 = -v1647;
    if (v1645 < v1648)
    {
      LODWORD(v1648) = v1990 - v2096;
    }

    if (v1645 >= v1649)
    {
      v1645 = v1648;
    }

    else
    {
      v1645 = v1649;
    }
  }

  a2[52] = v1645;
  v1650 = v1995 - v1423;
  v1651 = a4[11];
  if (v1651 >= 1)
  {
    v1652 = 1 << (v1651 - 1);
    v1653 = v1652 - 1;
    v1654 = -v1652;
    if (v1650 < v1653)
    {
      LODWORD(v1653) = v1995 - v1423;
    }

    if (v1650 >= v1654)
    {
      v1650 = v1653;
    }

    else
    {
      v1650 = v1654;
    }
  }

  a2[53] = v1650;
  v1655 = v2000 - v2084;
  v1656 = a4[11];
  if (v1656 >= 1)
  {
    v1657 = 1 << (v1656 - 1);
    v1658 = v1657 - 1;
    v1659 = -v1657;
    if (v1655 < v1658)
    {
      LODWORD(v1658) = v2000 - v2084;
    }

    if (v1655 >= v1659)
    {
      v1655 = v1658;
    }

    else
    {
      v1655 = v1659;
    }
  }

  a2[54] = v1655;
  v1660 = v2004 - v1384;
  v1661 = a4[11];
  if (v1661 >= 1)
  {
    v1662 = 1 << (v1661 - 1);
    v1663 = v1662 - 1;
    v1664 = -v1662;
    if (v1660 < v1663)
    {
      LODWORD(v1663) = v2004 - v1384;
    }

    if (v1660 >= v1664)
    {
      v1660 = v1663;
    }

    else
    {
      v1660 = v1664;
    }
  }

  a2[55] = v1660;
  v1665 = v2008 - v1897;
  v1666 = a4[11];
  if (v1666 >= 1)
  {
    v1667 = 1 << (v1666 - 1);
    v1668 = v1667 - 1;
    v1669 = -v1667;
    if (v1665 < v1668)
    {
      LODWORD(v1668) = v2008 - v1897;
    }

    if (v1665 >= v1669)
    {
      v1665 = v1668;
    }

    else
    {
      v1665 = v1669;
    }
  }

  a2[56] = v1665;
  v1670 = v2012 - v2042;
  v1671 = a4[11];
  if (v1671 >= 1)
  {
    v1672 = 1 << (v1671 - 1);
    v1673 = v1672 - 1;
    v1674 = -v1672;
    if (v1670 < v1673)
    {
      LODWORD(v1673) = v2012 - v2042;
    }

    if (v1670 >= v1674)
    {
      v1670 = v1673;
    }

    else
    {
      v1670 = v1674;
    }
  }

  a2[57] = v1670;
  v1675 = v2017 - v2038;
  v1676 = a4[11];
  if (v1676 >= 1)
  {
    v1677 = 1 << (v1676 - 1);
    v1678 = v1677 - 1;
    v1679 = -v1677;
    if (v1675 < v1678)
    {
      LODWORD(v1678) = v2017 - v2038;
    }

    if (v1675 >= v1679)
    {
      v1675 = v1678;
    }

    else
    {
      v1675 = v1679;
    }
  }

  a2[58] = v1675;
  v1680 = v2021 - v1892;
  v1681 = a4[11];
  if (v1681 >= 1)
  {
    v1682 = 1 << (v1681 - 1);
    v1683 = v1682 - 1;
    v1684 = -v1682;
    if (v1680 < v1683)
    {
      LODWORD(v1683) = v2021 - v1892;
    }

    if (v1680 >= v1684)
    {
      v1680 = v1683;
    }

    else
    {
      v1680 = v1684;
    }
  }

  a2[59] = v1680;
  v1685 = v2025 - v2088;
  v1686 = a4[11];
  if (v1686 >= 1)
  {
    v1687 = 1 << (v1686 - 1);
    v1688 = v1687 - 1;
    v1689 = -v1687;
    if (v1685 < v1688)
    {
      LODWORD(v1688) = v2025 - v2088;
    }

    if (v1685 >= v1689)
    {
      v1685 = v1688;
    }

    else
    {
      v1685 = v1689;
    }
  }

  a2[60] = v1685;
  v1690 = v2029 - v1845;
  v1691 = a4[11];
  if (v1691 >= 1)
  {
    v1692 = 1 << (v1691 - 1);
    v1693 = v1692 - 1;
    v1694 = -v1692;
    if (v1690 < v1693)
    {
      LODWORD(v1693) = v2029 - v1845;
    }

    if (v1690 >= v1694)
    {
      v1690 = v1693;
    }

    else
    {
      v1690 = v1694;
    }
  }

  a2[61] = v1690;
  v1695 = v2094 - v1887;
  v1696 = a4[11];
  if (v1696 >= 1)
  {
    v1697 = 1 << (v1696 - 1);
    v1698 = v1697 - 1;
    v1699 = -v1697;
    if (v1695 < v1698)
    {
      LODWORD(v1698) = v2094 - v1887;
    }

    if (v1695 >= v1699)
    {
      v1695 = v1698;
    }

    else
    {
      v1695 = v1699;
    }
  }

  a2[62] = v1695;
  v1700 = v2073 - v2034;
  v1701 = a4[11];
  if (v1701 >= 1)
  {
    v1702 = 1 << (v1701 - 1);
    v1703 = v1702 - 1;
    v1704 = -v1702;
    if (v1700 < v1703)
    {
      LODWORD(v1703) = v2073 - v2034;
    }

    if (v1700 >= v1704)
    {
      v1700 = v1703;
    }

    else
    {
      v1700 = v1704;
    }
  }

  a2[63] = v1700;
  return result;
}