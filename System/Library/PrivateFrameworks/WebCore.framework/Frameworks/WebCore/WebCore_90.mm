unint64_t p224_point_double(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v7 = *a4;
  v6 = a4[1];
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  v11 = a6[3];
  v12 = (v8 * v8) >> 64;
  v13 = v8 * v8;
  v14 = 2 * v10 * *a6;
  v15 = v9 * v9;
  v16 = v11 * (2 * *a6) + 2 * v10 * v9;
  v17 = v11 * (2 * v9) + v10 * v10;
  v18 = v11 * 2 * v10;
  v19 = v11 * v11;
  v20 = (v11 * v11) >> 64;
  v21 = v11 * v11;
  v22 = (v11 * (2 * v10)) >> 64;
  v23 = v17 + (v21 >> 16);
  *(&v21 + 1) = v22;
  *&v21 = v18;
  v24 = v21 >> 16;
  v25 = v19 << 40;
  v26 = v22 >> 16;
  v27 = (v18 << 40) & 0xFFFE0000000000;
  v29 = 2 * v9 * *a6 - v18;
  v28 = (2 * v9 * *a6 - __PAIR128__(v22, v18)) >> 64;
  v30 = v23 << 40;
  v31 = __CFADD__(v29, v30);
  v32 = v29 + v30;
  if (v31)
  {
    ++v28;
  }

  v33 = v23 >> 16;
  v35 = v15 + v14 - v19;
  v34 = (__PAIR128__(((2 * v10 * *a6) >> 64) + __CFADD__(v15, v14) + ((v9 * v9) >> 64), v15 + v14) - __PAIR128__(v20, v19)) >> 64;
  v36 = v35 + v27;
  if (__CFADD__(v35, v27))
  {
    ++v34;
  }

  v31 = __CFADD__(v36, v33);
  v37 = v36 + v33;
  *(&v39 + 1) = (*(&v23 + 1) >> 16) + v31 + v34 + 0x7FFFFFFFFFFFFF80;
  *&v39 = v37;
  v38 = v39 >> 56;
  v40 = HIBYTE(*(&v39 + 1));
  v41 = (v16 + __PAIR128__(v26, v24)) >> 64;
  v42 = v16 + v24 + v25;
  if (__CFADD__(v16 + v24, v25))
  {
    ++v41;
  }

  v43 = __PAIR128__(v41, v42) + __PAIR128__(v40, v38);
  v44 = ((__PAIR128__(v41, v42) + __PAIR128__(v40, v38)) >> 16) & 0xFFFF0000000000;
  v31 = __CFADD__(v32, v44);
  v45 = v32 + v44;
  if (v31)
  {
    ++v28;
  }

  v46 = (v37 & 0xFFFFFFFFFFFFFFLL) + (*(&v43 + 1) >> 8);
  v47 = __PAIR128__(v12, v13) - (v23 + (v43 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v48 = v45 + (v47 >> 56) - 0x80000000000000;
  v49 = (__PAIR128__(HIBYTE(*(&v47 + 1)) + __CFADD__(v45, (v47 >> 56)) + v28, v45 + (v47 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 56;
  v50 = ((__PAIR128__(HIBYTE(*(&v47 + 1)) + __CFADD__(v45, (v47 >> 56)) + v28, v45 + (v47 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
  v31 = __CFADD__(v46, v49);
  v51 = v46 + v49;
  if (v31)
  {
    ++v50;
  }

  *(&v52 + 1) = v50;
  *&v52 = v51;
  v53 = (v52 >> 56) + (v43 & 0xFFFFFFFFFFFFFFLL);
  v54 = *a5;
  v55 = a5[1];
  v56 = a5[2];
  v57 = a5[3];
  v58 = 2 * v56 * *a5;
  v59 = v57 * (2 * *a5) + 2 * v56 * v55;
  v60 = v57 * (2 * v55) + v56 * v56;
  v61 = v57 * 2 * v56;
  v62 = (v57 * (2 * v56)) >> 64;
  v63 = v57 * v57;
  v64 = (v57 * v57) >> 64;
  *(&v52 + 1) = v64;
  *&v52 = v63;
  v65 = v60 + (v52 >> 16);
  v67 = (2 * v55 * *a5 - __PAIR128__(v62, v61)) >> 64;
  v66 = 2 * v55 * *a5 - v61;
  v68 = (v60 + WORD1(v63)) << 40;
  v31 = __CFADD__(v66, v68);
  v69 = v66 + v68;
  if (v31)
  {
    ++v67;
  }

  v71 = a4[2];
  v70 = a4[3];
  v73 = v55 * v55 + v58;
  v72 = (v55 * v55 + __PAIR128__((2 * v56 * v54) >> 64, v58)) >> 64;
  v74 = (v54 * v54) >> 64;
  v75 = v54 * v54;
  v78 = v63 << 40;
  v77 = __PAIR128__(v72, v73) - __PAIR128__(v64, v63);
  v76 = (__PAIR128__(v72, v73) - __PAIR128__(v64, v63)) >> 64;
  *(&v80 + 1) = v62;
  *&v80 = v61;
  v79 = v80 >> 16;
  v81 = v62 >> 16;
  v82 = (v61 << 40) & 0xFFFE0000000000;
  v83 = v77 + v82;
  if (__CFADD__(v77, v82))
  {
    ++v76;
  }

  v84 = v83 + (v65 >> 16);
  v85 = ((__PAIR128__(v76, v83) + (v65 >> 16)) >> 64) + 0x7FFFFFFFFFFFFF80;
  v86 = HIBYTE(v85);
  *(&v88 + 1) = v85;
  *&v88 = v84;
  v87 = v88 >> 56;
  v90 = v59 + __PAIR128__(v81, v79);
  v89 = (v59 + __PAIR128__(v81, v79)) >> 64;
  v91 = v90 + v78;
  if (__CFADD__(v90, v78))
  {
    ++v89;
  }

  v92 = __PAIR128__(v89, v91) + __PAIR128__(v86, v87);
  v93 = ((__PAIR128__(v89, v91) + __PAIR128__(v86, v87)) >> 16) & 0xFFFF0000000000;
  v31 = __CFADD__(v69, v93);
  v94 = v69 + v93;
  if (v31)
  {
    ++v67;
  }

  v95 = (v84 & 0xFFFFFFFFFFFFFFLL) + (*(&v92 + 1) >> 8);
  v97 = (__PAIR128__(v74, v75) - (v65 + (v92 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
  v96 = v75 - (v65 + (v92 >> 56)) + 0x8000;
  v99 = __PAIR128__(HIBYTE(v97) + __CFADD__(v94, (__PAIR128__(v97, v96) >> 56)) + v67, v94 + (__PAIR128__(v97, v96) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v98 = (__PAIR128__(HIBYTE(v97) + __CFADD__(v94, (__PAIR128__(v97, v96) >> 56)) + v67, v94 + (__PAIR128__(v97, v96) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v100 = __PAIR128__(v98, v99) >> 56;
  v101 = HIBYTE(v98);
  v31 = __CFADD__(v95, v100);
  v102 = v95 + v100;
  if (v31)
  {
    ++v101;
  }

  *(&v103 + 1) = v101;
  *&v103 = v102;
  v104 = (v103 >> 56) + (v92 & 0xFFFFFFFFFFFFFFLL);
  v105 = v102 & 0xFFFFFFFFFFFFFFLL;
  v106 = v96 & 0xFFFFFFFFFFFFFFLL;
  v107 = v99 & 0xFFFFFFFFFFFFFFLL;
  v108 = v104 * v71 + (v102 & 0xFFFFFFFFFFFFFFLL) * v70;
  v109 = (v102 & 0xFFFFFFFFFFFFFFLL) * v71 + (v99 & 0xFFFFFFFFFFFFFFLL) * v70 + v104 * v6 + ((v104 * v70) >> 16);
  v111 = (v96 & 0xFFFFFFFFFFFFFFLL) * v71 + (v99 & 0xFFFFFFFFFFFFFFLL) * v6 + (v102 & 0xFFFFFFFFFFFFFFLL) * v7 - v104 * v70;
  v110 = ((v96 & 0xFFFFFFFFFFFFFFLL) * v71 + (v99 & 0xFFFFFFFFFFFFFFLL) * v6 + (v102 & 0xFFFFFFFFFFFFFFLL) * v7 - v104 * v70) >> 64;
  v112 = (((v103 >> 56) + v92) * v71 + v102 * v70) << 40;
  if (__CFADD__(v111, v112))
  {
    ++v110;
  }

  v113 = __PAIR128__(v110, v111 + v112) + (v109 >> 16);
  v367 = v96 & 0xFFFFFFFFFFFFFFLL;
  v368 = v102 & 0xFFFFFFFFFFFFFFLL;
  v370 = v104;
  v114 = (v107 * v71 + v106 * v70 + v105 * v6 + v104 * v7) >> 64;
  v115 = v107 * v71 + v106 * v70 + v105 * v6 + v104 * v7;
  v116 = (v104 * v70) << 40;
  v31 = __CFADD__(v115, v116);
  v117 = v115 + v116;
  if (v31)
  {
    ++v114;
  }

  v118 = __PAIR128__(v114, v117) + (v108 >> 16);
  *(&v119 + 1) = *(&v113 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v119 = v111 + v112 + (v109 >> 16);
  v120 = v117 + (v108 >> 16) + (v119 >> 56);
  *(&v119 + 1) = (v118 + (v119 >> 56)) >> 64;
  *&v119 = v120;
  v369 = v99 & 0xFFFFFFFFFFFFFFLL;
  v121 = v106 * v7 - (v109 + (v119 >> 56));
  v122 = v106 * v6 + v107 * v7;
  v123 = v48 & 0xFFFFFFFFFFFFFFLL;
  v124 = v51 & 0xFFFFFFFFFFFFFFLL;
  v125 = (v102 * v71 + v99 * v70 + v104 * v6 + ((v104 * v70) >> 16)) << 40;
  v126 = (v113 & 0xFFFFFFFFFFFFFFLL) + (*(&v119 + 1) >> 8);
  *&v119 = v120;
  v127 = v120 & 0xFFFFFFFFFFFFFFLL;
  v128 = (v119 >> 16) & 0xFFFF0000000000;
  v129 = (v122 - v108) >> 64;
  v31 = __CFADD__(v122 - v108, v125);
  v130 = v122 - v108 + v125;
  if (v31)
  {
    ++v129;
  }

  v31 = __CFADD__(v130, v128);
  v131 = v130 + v128;
  if (v31)
  {
    ++v129;
  }

  v361 = v131 + ((v121 + __PAIR128__(0x8000000000000000, 0x8000)) >> 56) - 0x80000000000000;
  v132 = __PAIR128__(v129, v131) + ((v121 + __PAIR128__(0x8000000000000000, 0x8000)) >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v133 = v132 >> 56;
  v31 = __CFADD__(v126, v133);
  v134 = v126 + v133;
  if (v31)
  {
    v135 = HIBYTE(*(&v132 + 1)) + 1;
  }

  else
  {
    v135 = HIBYTE(*(&v132 + 1));
  }

  *(&v136 + 1) = v135;
  *&v136 = v134;
  v137 = (v136 >> 56) + v127;
  v357 = v134;
  v364 = v124;
  v366 = v123;
  v138 = v6 + 0x3FFFBFFFFFFFFFCLL - v123;
  v139 = v124;
  v140 = v71 - v124 + 0x3FFFFFFFFFFFFFCLL;
  v141 = 3 * (v123 + v6);
  v142 = 3 * (v139 + v71);
  v355 = v142 * v138 + v140 * v141;
  v143 = (v142 * v138 + v140 * v141) >> 64;
  v363 = v53;
  v144 = v70 - v53 + 0x3FFFFFFFFFFFFFCLL;
  v145 = 3 * (v70 + v53);
  v146 = v145 * v140 + v144 * v142;
  v147 = v7 + 0x400000000000004 - (v47 & 0xFFFFFFFFFFFFFFLL);
  v148 = 3 * ((v47 & 0xFFFFFFFFFFFFFFLL) + v7);
  v149 = (v142 * v147) >> 64;
  v150 = v142 * v147;
  v151 = (v142 * v140) >> 64;
  v152 = v142 * v140;
  v153 = (v140 * v148) >> 64;
  v154 = v140 * v148;
  v155 = (v148 * v147) >> 64;
  v156 = v148 * v147;
  v157 = (v141 * v147) >> 64;
  v158 = v141 * v147;
  v159 = (v145 * v147) >> 64;
  v160 = v145 * v147;
  v161 = (v138 * v148) >> 64;
  v162 = v138 * v148;
  v163 = (v144 * v148) >> 64;
  v164 = v144 * v148;
  v165 = (v141 * v138) >> 64;
  v166 = v141 * v138;
  v167 = (v144 * v141) >> 64;
  v168 = v144 * v141;
  v169 = v145 * v144;
  v170 = (v145 * v144) >> 64;
  *(&v136 + 1) = v170;
  *&v136 = v169;
  v171 = __PAIR128__(v167, v168) + __PAIR128__(v151, v152) + v145 * v138 + (v136 >> 16);
  v173 = v166 + v154 + v150 - v169;
  v172 = (__PAIR128__(v165, v166) + __PAIR128__(v153, v154) + __PAIR128__(v149, v150) - __PAIR128__(v170, v169)) >> 64;
  v174 = v146 << 40;
  if (__CFADD__(v173, v174))
  {
    ++v172;
  }

  v175 = __PAIR128__(v172, v173 + v174) + (v171 >> 16);
  v176 = __PAIR128__(v143, v355) + __PAIR128__(v163, v164) + __PAIR128__(v159, v160);
  v177 = v169 << 40;
  v31 = __CFADD__(v176, v177);
  v178 = v176 + v177;
  if (v31)
  {
    v179 = *(&v176 + 1) + 1;
  }

  else
  {
    v179 = (__PAIR128__(v143, v355) + __PAIR128__(v163, v164) + __PAIR128__(v159, v160)) >> 64;
  }

  v180 = __PAIR128__(v179, v178) + (v146 >> 16);
  *(&v181 + 1) = *(&v175 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v181 = v175;
  v182 = v180 + (v181 >> 56);
  *(&v181 + 1) = (v180 + (v181 >> 56)) >> 64;
  *&v181 = v182;
  v183 = __PAIR128__(v155, v156) - (v171 + (v181 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v185 = (__PAIR128__(v161, v162) + __PAIR128__(v157, v158) - v146) >> 64;
  v184 = v162 + v158 - v146;
  v186 = v171 << 40;
  v187 = (v175 & 0xFFFFFFFFFFFFFFLL) + (*(&v181 + 1) >> 8);
  *&v181 = v182;
  v188 = v182 & 0xFFFFFFFFFFFFFFLL;
  v189 = (v181 >> 16) & 0xFFFF0000000000;
  v31 = __CFADD__(v184, v186);
  v190 = v184 + v186;
  if (v31)
  {
    ++v185;
  }

  v31 = __CFADD__(v190, v189);
  v191 = v190 + v189;
  if (v31)
  {
    v192 = v185 + 1;
  }

  else
  {
    v192 = v185;
  }

  v193 = __PAIR128__(v192, v191) + (v183 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v194 = v193 >> 56;
  v31 = __CFADD__(v187, v194);
  v195 = v187 + v194;
  if (v31)
  {
    v196 = HIBYTE(*(&v193 + 1)) + 1;
  }

  else
  {
    v196 = HIBYTE(*(&v193 + 1));
  }

  *(&v197 + 1) = v196;
  *&v197 = v195;
  v198 = (v197 >> 56) + v188;
  v199 = 2 * (v193 & 0xFFFFFFFFFFFFFFLL);
  v200 = v195 & 0xFFFFFFFFFFFFFFLL;
  v202 = (v198 * v199 + v200 * v200 + ((v198 * v198) >> 16)) >> 64;
  v201 = v198 * v199 + v200 * v200 + ((v198 * v198) >> 16);
  v203 = v193 & 0xFFFFFFFFFFFFFFLL;
  if (__CFADD__(v198 * v198, 8 * (v357 & 0xFFFFFFFFFFFFFFLL)))
  {
    v204 = ((v198 * v198) >> 64) + 1;
  }

  else
  {
    v204 = (v198 * v198) >> 64;
  }

  v205 = 2 * (v195 & 0xFFFFFFFFFFFFFFLL);
  v206 = v183 & 0xFFFFFFFFFFFFFFLL;
  v207 = v198 * v199 + v200 * v200 + ((v198 * v198) >> 16);
  v209 = (v203 * v203 - __PAIR128__(v204, v198 * v198 + 8 * (v357 & 0xFFFFFFFFFFFFFFLL)) + (v183 & 0xFFFFFFFFFFFFFFLL) * v205 + (v207 >> 16)) >> 64;
  v208 = v203 * v203 - (v198 * v198 + 8 * (v357 & 0xFFFFFFFFFFFFFFLL)) + (v183 & 0xFFFFFFFFFFFFFFLL) * v205 + (v207 >> 16);
  v210 = v198 * v205;
  v211 = ((v198 * v205) << 40) & 0xFFFE0000000000;
  v31 = __CFADD__(v208, v211);
  v212 = v208 + v211;
  if (v31)
  {
    ++v209;
  }

  v31 = v212 >= 0x100;
  v213 = v212 - 256;
  v214 = v31 + v209 + 0x7FFFFFFFFFFFFF80;
  v215 = (v198 * v198) << 40;
  v216 = (v198 * (2 * (v183 & 0xFFFFFFFFFFFFFFLL)) + v203 * v205 - (8 * v137)) >> 64;
  v217 = v198 * 2 * (v183 & 0xFFFFFFFFFFFFFFLL) + v203 * v205 - 8 * v137;
  v31 = __CFADD__(v217, v215);
  v218 = v217 + v215;
  v219 = (v198 * v205) >> 64;
  *(&v221 + 1) = v219;
  *&v221 = v210;
  v220 = v221 >> 16;
  if (v31)
  {
    ++v216;
  }

  *(&v222 + 1) = v214;
  *&v222 = v213;
  v223 = __PAIR128__(v216, v218) + __PAIR128__(v219 >> 16, v220) + (v222 >> 56);
  v224 = (v121 + 0x8000) & 0xFFFFFFFFFFFFFFLL;
  if (v223 < 0x100)
  {
    v225 = *(&v223 + 1);
  }

  else
  {
    v225 = *(&v223 + 1) + 1;
  }

  if (__CFADD__(v201, 8 * v224))
  {
    ++v202;
  }

  *(&v226 + 1) = v225;
  *&v226 = v223 - 256;
  v227 = v206 * v206 - (__PAIR128__(v202, v201 + 8 * v224) + (v226 >> 56)) + __PAIR128__(0x8000000000000001, 33024);
  v31 = __CFADD__(v210, 8 * (v361 & 0xFFFFFFFFFFFFFFLL));
  v228 = v210 + 8 * (v361 & 0xFFFFFFFFFFFFFFLL);
  if (v31)
  {
    ++v219;
  }

  v230 = v206 * v199 - v228;
  v229 = (v206 * v199 - __PAIR128__(v219, v228)) >> 64;
  v231 = (v198 * 2 * v193 + v200 * v200 + ((v198 * v198) >> 16)) << 40;
  v31 = __CFADD__(v230, v231);
  v232 = v230 + v231;
  v233 = (v213 & 0xFFFFFFFFFFFFFFLL) + (v225 >> 8);
  *(&v234 + 1) = v225;
  *&v234 = v223 - 256;
  v235 = (v234 >> 16) & 0xFFFF0000000000;
  if (v31)
  {
    ++v229;
  }

  v31 = __CFADD__(v232, v235);
  v236 = v232 + v235;
  if (v31)
  {
    ++v229;
  }

  v238 = (__PAIR128__(HIBYTE(*(&v227 + 1)) + __CFADD__(v236, (v227 >> 56)) + v229, v236 + (v227 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0xFF7EFFFFFFFFFF00)) >> 64;
  v237 = v236 + (v227 >> 56) - 0x81000000000100;
  v239 = __PAIR128__(v238, v237) >> 56;
  v31 = __CFADD__(v233, v239);
  v240 = v233 + v239;
  *a1 = v227 & 0xFFFFFFFFFFFFFFLL;
  a1[1] = v237 & 0xFFFFFFFFFFFFFFLL;
  v241 = HIBYTE(v238);
  if (v31)
  {
    ++v241;
  }

  *(&v242 + 1) = v241;
  *&v242 = v240;
  a1[2] = v240 & 0xFFFFFFFFFFFFFFLL;
  a1[3] = (v242 >> 56) + ((v223 - 256) & 0xFFFFFFFFFFFFFFLL);
  v243 = *a6 + *a5;
  v244 = a6[1] + a5[1];
  v245 = a6[2] + a5[2];
  v246 = a6[3] + a5[3];
  v247 = 2 * v244;
  v248 = v246 * v246;
  v249 = (v246 * v246) >> 64;
  v251 = (v246 * (2 * v244) + v245 * v245 + ((v246 * v246) >> 16)) >> 64;
  v250 = v246 * 2 * v244 + v245 * v245 + ((v246 * v246) >> 16);
  v252 = 2 * v245;
  v253 = 2 * v245 * v243;
  v31 = __CFADD__(v244 * v244, v253);
  v254 = v244 * v244 + v253;
  v255 = (v246 * (2 * v243)) >> 64;
  v256 = v246 * 2 * v243;
  v257 = v246 * v252;
  v258 = (v246 * v252) >> 64;
  v259 = (v252 * v243) >> 64;
  v260 = (v252 * v244) >> 64;
  v261 = v252 * v244;
  v262 = (__PAIR128__(v259 + v31 + ((v244 * v244) >> 64), v254) - __PAIR128__(v249, v248)) >> 64;
  v263 = (v257 << 40) & 0xFFFE0000000000;
  if (__CFADD__(v254 - v248, v263))
  {
    ++v262;
  }

  *(&v264 + 1) = v251;
  *&v264 = v250;
  v265 = __PAIR128__(v262, v254 - v248 + v263) + (v264 >> 16) - (v368 + v364);
  *(&v264 + 1) = v258;
  *&v264 = v257;
  v267 = (__PAIR128__(v260, v261) + __PAIR128__(v255, v256) + (v264 >> 16)) >> 64;
  v266 = v261 + v256 + (v264 >> 16);
  v268 = v248 << 40;
  v31 = __CFADD__(v266, v268);
  v269 = v266 + v268;
  v270 = v370 + v363;
  if (v31)
  {
    ++v267;
  }

  v31 = v269 >= v270;
  v271 = v269 - v270;
  *(&v273 + 1) = (v265 >= 0x100) + *(&v265 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v273 = v265 - 256;
  v272 = v273 >> 56;
  v274 = v267 - !v31;
  v31 = __CFADD__(v271, v272);
  v275 = v271 + v272;
  v276 = HIBYTE(*(&v273 + 1)) + v31 + v274;
  v277 = v367 + (v47 & 0xFFFFFFFFFFFFFFLL);
  v31 = v275 >= 0x100;
  v278 = v275 - 256;
  if (v31)
  {
    ++v276;
  }

  v31 = __CFADD__(v250, v277);
  v279 = v250 + v277;
  if (v31)
  {
    ++v251;
  }

  *(&v280 + 1) = v276;
  *&v280 = v278;
  v281 = v243 * v243 - (__PAIR128__(v251, v279) + (v280 >> 56)) + __PAIR128__(0x8000000000000001, 33024);
  v31 = __CFADD__(v257, v369 + v366);
  v282 = v257 + v369 + v366;
  v283 = v250 << 40;
  v284 = ((v265 - 256) & 0xFFFFFFFFFFFFFFLL) + (v276 >> 8);
  *(&v280 + 1) = v276;
  *&v280 = v278;
  v285 = v278 & 0xFFFFFFFFFFFFFFLL;
  v286 = (v280 >> 16) & 0xFFFF0000000000;
  if (v31)
  {
    ++v258;
  }

  v288 = v247 * v243 - __PAIR128__(v258, v282);
  v287 = *(&v288 + 1);
  v289 = v288 + v283;
  if (__CFADD__(v288, v283))
  {
    v287 = *(&v288 + 1) + 1;
  }

  v31 = __CFADD__(v289, v286);
  v290 = v289 + v286;
  if (v31)
  {
    ++v287;
  }

  v292 = (__PAIR128__(v287, v290) + (v281 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0xFF7EFFFFFFFFFF00)) >> 64;
  v291 = v290 + (v281 >> 56) - 0x81000000000100;
  v293 = __PAIR128__(v292, v291) >> 56;
  v294 = HIBYTE(v292);
  v31 = __CFADD__(v284, v293);
  v295 = v284 + v293;
  if (v31)
  {
    ++v294;
  }

  *a3 = v281 & 0xFFFFFFFFFFFFFFLL;
  a3[1] = v291 & 0xFFFFFFFFFFFFFFLL;
  *(&v296 + 1) = v294;
  *&v296 = v295;
  a3[2] = v295 & 0xFFFFFFFFFFFFFFLL;
  a3[3] = (v296 >> 56) + v285;
  v297 = 4 * v224 - *a1 + 0x400000000000004;
  v298 = 4 * (v361 & 0xFFFFFFFFFFFFFFLL) - a1[1] + 0x3FFFBFFFFFFFFFCLL;
  v299 = 4 * (v357 & 0xFFFFFFFFFFFFFFLL) - a1[2] + 0x3FFFFFFFFFFFFFCLL;
  v300 = 4 * v137 - a1[3] + 0x3FFFFFFFFFFFFFCLL;
  v365 = v206 * v297;
  v375 = v206 * v298;
  v372 = v203 * v297;
  v353 = v206 * v299;
  v301 = (v200 * v297) >> 64;
  v302 = v200 * v297;
  v362 = v206 * v300;
  v360 = v203 * v299;
  v356 = v198 * v297;
  v358 = (v200 * v298) >> 64;
  v359 = (v198 * v297) >> 64;
  v354 = v200 * v298;
  v303 = (v198 * v298) >> 64;
  v304 = v198 * v298;
  v305 = (v200 * v299) >> 64;
  v306 = v200 * v299;
  v307 = (v198 * v299) >> 64;
  v308 = v198 * v299;
  v309 = (v198 * v300) >> 64;
  v310 = v198 * v300;
  v311 = v369 * (2 * v368) + v370 * (2 * v367);
  v312 = -8 * v370 * 2 * v368;
  v31 = __CFADD__(v312, v308);
  v313 = v312 + v308;
  v314 = v307 + v31 + ((-__PAIR128__(v370 * 2 * v369, 8 * v370) * (2 * v368)) >> 64);
  v31 = __CFADD__(v313, v200 * v300);
  v315 = v313 + v200 * v300;
  v316 = -8 * v370 * v370 + v310;
  result = ((v200 * v300) >> 64) + v31 + v314 + 0xFFFFFFFFFFFFFFLL;
  v318 = ((-__PAIR128__(v370 * 2 * v369, 8 * v370) * v370 + __PAIR128__(v309, v310)) >> 64) + 0xFFFFFFFFFFFFFFLL;
  v319 = -__PAIR128__(v370 * 2 * v369, 8 * v370) * v370 + __PAIR128__(v309, v310) + __PAIR128__(0xFFFFFFFFFFFFFFLL, 0);
  v320 = v304 - 8 * (v370 * 2 * v369 + v368 * v368) + v306 + v203 * v300 + (v319 >> 16);
  v321 = ((__PAIR128__(v303, v304) - (v370 * (2 * v369) + v368 * v368) * 8 + __PAIR128__(v305, v306) + v203 * v300 + (v319 >> 16)) >> 64) + 0xFFFEFFFFFFFFFFLL;
  v322 = v315 << 40;
  v323 = __PAIR128__(v301, v302) - (v367 * (2 * v368) + v369 * v369) * 8 + v203 * v298 + v353 - __PAIR128__(v318, v316);
  *(&v319 + 1) = v321;
  *&v319 = v320;
  v324 = v319 >> 16;
  v31 = __CFADD__(v302 - 8 * (v367 * 2 * v368 + v369 * v369) + v203 * v298 + v353 - v316, v322);
  v325 = v302 - 8 * (v367 * 2 * v368 + v369 * v369) + v203 * v298 + v353 - v316 + v322;
  if (v31)
  {
    v326 = *(&v323 + 1) + 1;
  }

  else
  {
    v326 = *(&v323 + 1);
  }

  v327 = v325 + v324;
  v328 = (v321 >> 16) + __CFADD__(v325, v324) + v326 - 0x7F00000000000081;
  v329 = v316 << 40;
  *(&v330 + 1) = result;
  *&v330 = v315;
  v331 = __PAIR128__(v359, v356) - v311 * 8 + __PAIR128__(v358, v354) + v360 + v362 + (v330 >> 16);
  v31 = __CFADD__(v356 - 8 * v311 + v354 + v360 + v362 + (v330 >> 16), v329);
  v332 = v356 - 8 * v311 + v354 + v360 + v362 + (v330 >> 16) + v329;
  *(&v330 + 1) = v328;
  *&v330 = v327;
  v333 = v330 >> 56;
  if (v31)
  {
    v334 = *(&v331 + 1) + 1;
  }

  else
  {
    v334 = *(&v331 + 1);
  }

  v335 = v332 + v333;
  *(&v336 + 1) = HIBYTE(v328) + __CFADD__(v332, v333) + v334 + 0x100000000000000;
  *&v336 = v332 + v333;
  v337 = __PAIR128__((-8 * v367 * v367) >> 64, -(8 * v367 * v367)) + v365 - (__PAIR128__(v321, v320) + (v336 >> 56)) + __PAIR128__(0x8100000000000000, 0x8000);
  v339 = (__PAIR128__((-8 * v367 * (2 * v369)) >> 64, -(8 * v367 * 2 * v369)) + v372 + v375 - __PAIR128__(result, v315)) >> 64;
  v338 = v372 - 8 * v367 * 2 * v369 + v375 - v315;
  v340 = (v327 & 0xFFFFFFFFFFFFFFLL) + (*(&v336 + 1) >> 8);
  *&v336 = v332 + v333;
  v341 = v320 << 40;
  v342 = (v336 >> 16) & 0xFFFF0000000000;
  v31 = __CFADD__(v338, v341);
  v343 = v338 + v341;
  if (v31)
  {
    ++v339;
  }

  v31 = __CFADD__(v343, v342);
  v344 = v343 + v342;
  if (v31)
  {
    v345 = v339 + 1;
  }

  else
  {
    v345 = v339;
  }

  v346 = (__PAIR128__(HIBYTE(*(&v337 + 1)) + __CFADD__(v344, (v337 >> 56)) + v345, v344 + (v337 >> 56)) + __PAIR128__(0x80FFFFFFFFFFFF7ELL, 0xFF80000000000000)) >> 64;
  v347 = v344 + (v337 >> 56) - 0x80000000000000;
  v348 = __PAIR128__(v346, v347) >> 56;
  v31 = __CFADD__(v340, v348);
  v349 = v340 + v348;
  *a2 = v337 & 0xFFFFFFFFFFFFFFLL;
  a2[1] = v347 & 0xFFFFFFFFFFFFFFLL;
  v350 = v335 & 0xFFFFFFFFFFFFFFLL;
  v351 = HIBYTE(v346);
  if (v31)
  {
    ++v351;
  }

  *(&v352 + 1) = v351;
  *&v352 = v349;
  a2[2] = v349 & 0xFFFFFFFFFFFFFFLL;
  a2[3] = (v352 >> 56) + v350;
  return result;
}

void ec_GFp_nistp224_make_precomp(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = *a2 & 0xFFFFFFFFFFFFFFLL;
  v4 = (a1 + 96);
  *(a1 + 104) = (*a2 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 112) = (*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 120) = (*(a2 + 16) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 128) = *(a2 + 72) & 0xFFFFFFFFFFFFFFLL;
  v5 = (a1 + 128);
  *(a1 + 136) = (*(a2 + 72) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 144) = (*(a2 + 80) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 152) = (*(a2 + 88) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 160) = *(a2 + 144) & 0xFFFFFFFFFFFFFFLL;
  v6 = (a1 + 160);
  *(a1 + 168) = (*(a2 + 144) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 176) = (*(a2 + 152) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 184) = (*(a2 + 160) >> 40) & 0xFFFFFFFFFFFFFFLL;
  v7 = 2;
  do
  {
    while (1)
    {
      v8 = (a1 + v3);
      if (v7)
      {
        break;
      }

      p224_point_double(&v8[12], &v8[14], &v8[16], (a1 + 96 * (v7 >> 1)), (a1 + 96 * (v7 >> 1) + 32), (a1 + 96 * (v7 >> 1) + 64));
      ++v7;
      v3 += 96;
      if (v3 == 1440)
      {
        return;
      }
    }

    p224_point_add(v8 + 12, v8 + 14, &v8[16], v4, v5, v6, 0, v8 + 6, &v8[8], v8 + 10);
    ++v7;
    v3 += 96;
  }

  while (v3 != 1440);
}

uint64_t ec_GFp_nistp256_point_get_affine_coordinates(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 328);
  if (v7 < 1)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v8 = 0;
    v9 = 0;
LABEL_15:
    v22 = v7 - v8;
    v23 = a2 + v8 + 18;
    do
    {
      v24 = *v23++;
      *&v9 |= v24;
      --v22;
    }

    while (v22);
    goto LABEL_17;
  }

  v8 = v7 & 0x7FFFFFFC;
  v17 = (a2 + 10);
  v18 = 0uLL;
  v19 = v8;
  v20 = 0uLL;
  do
  {
    v18 = vorrq_s8(v17[-1], v18);
    v20 = vorrq_s8(*v17, v20);
    v17 += 2;
    v19 -= 4;
  }

  while (v19);
  v21 = vorrq_s8(v20, v18);
  v9 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
  if (v8 != v7)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!*&v9)
  {
LABEL_18:
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/p256.cc.inc", 421);
    return 0;
  }

  memset(v25, 0, sizeof(v25));
  v10 = a2[10];
  *v26 = a2[9];
  v27 = v10;
  *v42 = 0u;
  v43 = 0u;
  *v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  *v36 = 0u;
  v37 = 0u;
  *v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  v31 = 0u;
  fiat_p256_square(v42, v26);
  fiat_p256_mul(v42, v42, v26);
  fiat_p256_square(v40, v42);
  fiat_p256_mul(v40, v40, v26);
  fiat_p256_square(v38, v40);
  fiat_p256_square(v38, v38);
  fiat_p256_square(v38, v38);
  fiat_p256_mul(v38, v38, v40);
  fiat_p256_square(v36, v38);
  fiat_p256_square(v36, v36);
  fiat_p256_square(v36, v36);
  fiat_p256_square(v36, v36);
  fiat_p256_square(v36, v36);
  fiat_p256_square(v36, v36);
  fiat_p256_mul(v36, v36, v38);
  fiat_p256_square(v34, v36);
  fiat_p256_square(v34, v34);
  fiat_p256_square(v34, v34);
  fiat_p256_mul(v34, v34, v40);
  fiat_p256_square(v32, v34);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_square(v32, v32);
  fiat_p256_mul(v32, v32, v34);
  fiat_p256_square(v30, v32);
  fiat_p256_square(v30, v30);
  fiat_p256_mul(v30, v30, v42);
  *v28 = 0u;
  v29 = 0u;
  fiat_p256_square(v28, v30);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_mul(v28, v28, v26);
  v11 = 128;
  do
  {
    fiat_p256_square(v28, v28);
    --v11;
  }

  while (v11);
  fiat_p256_mul(v28, v28, v30);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_mul(v28, v28, v30);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v28, v28);
  fiat_p256_mul(v28, v28, v32);
  fiat_p256_square(v28, v28);
  fiat_p256_square(v25, v28);
  if (a3)
  {
    v12 = a2[1];
    *v42 = *a2;
    v43 = v12;
    fiat_p256_mul(v42, v42, v25);
    v13 = v43;
    *a3 = *v42;
    a3[1] = v13;
  }

  if (a4)
  {
    v14 = *(a2 + 88);
    *v42 = *(a2 + 72);
    v43 = v14;
    fiat_p256_square(v25, v25);
    fiat_p256_mul(v42, v42, v26);
    fiat_p256_mul(v42, v42, v25);
    v15 = v43;
    *a4 = *v42;
    a4[1] = v15;
  }

  return 1;
}

double ec_GFp_nistp256_add(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  *v24 = *a3;
  v25 = v5;
  v6 = *(a3 + 88);
  *v22 = *(a3 + 72);
  v23 = v6;
  v7 = a3[10];
  *v20 = a3[9];
  v21 = v7;
  v8 = *(a4 + 16);
  *v18 = *a4;
  v19 = v8;
  v9 = *(a4 + 88);
  *v16 = *(a4 + 72);
  v17 = v9;
  v10 = *(a4 + 160);
  v15[0] = *(a4 + 144);
  v15[1] = v10;
  fiat_p256_point_add(v24, v22, v20, v24, v22, v20, 0, v18, v16, v15);
  v11 = v25;
  *a2 = *v24;
  a2[1] = v11;
  v12 = v23;
  *(a2 + 72) = *v22;
  *(a2 + 88) = v12;
  result = *v20;
  v14 = v21;
  a2[9] = *v20;
  a2[10] = v14;
  return result;
}

double ec_GFp_nistp256_dbl(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  *v15 = *a3;
  v16 = v4;
  v5 = *(a3 + 88);
  *v13 = *(a3 + 72);
  v14 = v5;
  v6 = a3[10];
  v11 = a3[9];
  v12 = v6;
  fiat_p256_point_double(v15, v13, &v11, v15, v13, &v11);
  v7 = v16;
  *a2 = *v15;
  a2[1] = v7;
  v8 = v14;
  *(a2 + 72) = *v13;
  *(a2 + 88) = v8;
  result = *&v11;
  v10 = v12;
  a2[9] = v11;
  a2[10] = v10;
  return result;
}

double ec_GFp_nistp256_point_mul(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x277D85DE8];
  bzero(v83, 0x660uLL);
  v7 = *(a3 + 16);
  v85[0] = *a3;
  v85[1] = v7;
  v8 = *(a3 + 88);
  v86[0] = *(a3 + 72);
  v86[1] = v8;
  v9 = *(a3 + 144);
  v10 = *(a3 + 160);
  v11 = -1440;
  v12 = 2;
  v87[0] = v9;
  v87[1] = v10;
  do
  {
    while (1)
    {
      v13 = &v83[v11];
      if (v12)
      {
        break;
      }

      fiat_p256_point_double(&v13[102], &v13[104], &v13[106], &v83[96 * (v12 >> 1)], &v83[96 * (v12 >> 1) + 32], &v83[96 * (v12 >> 1) + 64]);
      ++v12;
      v11 += 96;
      if (v12 == 17)
      {
        goto LABEL_5;
      }
    }

    fiat_p256_point_add(v13 + 102, v13 + 104, v13 + 106, v85, v86, v87, 0, v13 + 96, v13 + 98, v13 + 100);
    ++v12;
    v11 += 96;
  }

  while (v12 != 17);
LABEL_5:
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  *v77 = 0u;
  v78 = 0u;
  v14 = 1;
  for (i = 255; i < 0x100; --i)
  {
    if (v14)
    {
      if (-858993459 * i > 0x33333333)
      {
        continue;
      }
    }

    else
    {
      fiat_p256_point_double(v77, &v79, &v81, v77, &v79, &v81);
      if (-858993459 * i > 0x33333333)
      {
        continue;
      }
    }

    if (i <= 0xFB)
    {
      v16 = 32 * ((*(a4 + 8 * ((i + 4) >> 6)) >> (i + 4)) & 1);
      v17 = i + 3;
      goto LABEL_16;
    }

    if (i == 252)
    {
      v16 = 0;
      v17 = 255;
LABEL_16:
      v18 = (16 * ((*(a4 + 8 * (v17 >> 6)) >> v17) & 1)) | v16;
      v19 = i + 2;
LABEL_17:
      v20 = (8 * ((*(a4 + 8 * (v19 >> 6)) >> v19) & 1)) | v18;
      v21 = i + 1;
LABEL_18:
      v20 |= 4 * ((*(a4 + 8 * (v21 >> 6)) >> v21) & 1);
      goto LABEL_19;
    }

    if (i <= 0xFD)
    {
      v18 = 0;
      v19 = 255;
      goto LABEL_17;
    }

    v20 = 0;
    if (i != 255)
    {
      v21 = 255;
      goto LABEL_18;
    }

LABEL_19:
    if ((i - 1) <= 0xFF)
    {
      v22 = (*(a4 + 8 * ((i - 1) >> 6)) >> (i - 1)) & 1;
    }

    else
    {
      v22 = 0;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = (2 * ((*(a4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1)) | v22 | v20;
    v28 = v20 >> 5;
    v29 = v28 - 1;
    v30 = -v28;
    v31 = ((v27 ^ 0x3F) & v30 | v27 & v29) - (((v27 ^ 0x3F) & v30 | v27 & v29) >> 1);
    v32 = 0uLL;
    v33 = &v84;
    v34 = 1632;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    do
    {
      v38 = v31-- != 0;
      v39 = v38;
      v40 = v39 << 63 >> 63;
      v26 = v33[-2].i64[0] & ~v40 | v40 & v26;
      v25 = v33[-2].i64[1] & ~v40 | v40 & v25;
      v24 = v33[-1].i64[0] & ~v40 | v40 & v24;
      v41 = vdupq_n_s64(v40);
      v42 = vdupq_n_s64(~v40);
      v35 = vorrq_s8(vandq_s8(v42, v33[-3]), vandq_s8(v41, v35));
      v32 = vorrq_s8(vandq_s8(v42, v33[-4]), vandq_s8(v41, v32));
      v23 = v33[-1].i64[1] & ~v40 | v40 & v23;
      v44 = *v33;
      v43 = v33[1];
      v33 += 6;
      v37 = vorrq_s8(vandq_s8(v43, v42), vandq_s8(v41, v37));
      v36 = vorrq_s8(vandq_s8(v44, v42), vandq_s8(v41, v36));
      v34 -= 96;
    }

    while (v34);
    *v71 = v32;
    v72 = v35;
    v76[0] = v36;
    v76[1] = v37;
    v38 = __CFADD__(v25, -(-__PAIR128__(v33, v26) >> 64));
    v45 = v25 + -(-__PAIR128__(v33, v26) >> 64);
    v46 = v38;
    v38 = v45 == 0;
    v47 = -v45;
    v49 = (v46 + !v38);
    v48 = v24 + v49;
    v50 = __CFADD__(v24, v49);
    v38 = v48 == 0;
    v51 = -v48;
    v53 = (v50 + !v38);
    v52 = v23 + v53;
    v54 = __CFADD__(v23, v53);
    v38 = v52 == 0;
    v55 = -v52;
    if (v54 + !v38)
    {
      v56 = -1;
    }

    else
    {
      v56 = 0;
    }

    v57 = v56 - v26;
    v38 = __CFADD__(__CFADD__(-v26, v56), v47);
    v58 = __CFADD__(-v26, v56) + v47;
    v38 |= __CFADD__(v56, v58);
    v58 += v56;
    v59 = v55 + __CFADD__(v38, v51) + (v56 & 0xFFFFFFFF00000001);
    v60 = v30;
    v61 = v30 & v57;
    v62 = ~v30;
    v63 = v62 & v26 | v61;
    v64 = v60 & v58 | v62 & v25;
    v65 = v60 & (v38 + v51) | v62 & v24;
    v73.i64[0] = v63;
    v73.i64[1] = v64;
    v66 = v59 & v60 | v62 & v23;
    v74 = v65;
    v75 = v66;
    if (v14)
    {
      v14 = 0;
      *v77 = v32;
      v78 = v35;
      v79.i64[0] = v63;
      v79.i64[1] = v64;
      *&v80 = v65;
      *(&v80 + 1) = v66;
      v81 = v36;
      v82 = v37;
    }

    else
    {
      fiat_p256_point_add(v77, &v79, &v81, v77, &v79, &v81, 0, v71, &v73, v76);
    }
  }

  v67 = v78;
  *a2 = *v77;
  *(a2 + 16) = v67;
  v68 = v80;
  *(a2 + 72) = v79;
  *(a2 + 88) = v68;
  result = *v81.i64;
  v70 = v82;
  *(a2 + 144) = v81;
  *(a2 + 160) = v70;
  return result;
}

double ec_GFp_nistp256_point_mul_base(uint64_t a1, uint64_t a2, uint64x2_t *a3, unint64_t (*a4)[4])
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v17 = a3[1];
  v4 = a3[1].u64[1];
  v5 = a3->u64[1];
  fiat_p256_select_point_affine((v17.i64[1] >> 60) & 8 | (v17.i64[0] >> 61) & 0xFFFFFFFFFFFFFFFCLL | (v16.i64[1] >> 62) & 0xFFFFFFFFFFFFFFFELL | (v16.i64[0] >> 63), &fiat_p256_g_pre_comp[120], v19, a4);
  *v21 = *&v19[0][0];
  v22 = *&v19[0][2];
  v23 = *&v19[1][0];
  v24 = *&v19[1][2];
  v25 = v20[0];
  v26 = v20[1];
  v6 = vorrq_s8(vandq_s8(vshlq_u64(v16, xmmword_273BA7200), xmmword_273B91FC0), vandq_s8(vshlq_u64(v17, xmmword_273BA7210), xmmword_273BA7220));
  fiat_p256_select_point_affine(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)), fiat_p256_g_pre_comp, v19, v7);
  fiat_p256_point_add(v21, &v23, &v25, v21, &v23, &v25, 1, v19, v19[1], v20);
  v8 = 62;
  do
  {
    fiat_p256_point_double(v21, &v23, &v25, v21, &v23, &v25);
    fiat_p256_select_point_affine((v16.i64[0] >> v8) & 1 | (8 * ((v4 >> v8) & 1)) | (4 * ((v17.i64[0] >> v8) & 1)) | (2 * ((v5 >> v8) & 1)), &fiat_p256_g_pre_comp[120], v19, v9);
    fiat_p256_point_add(v21, &v23, &v25, v21, &v23, &v25, 1, v19, v19[1], v20);
    fiat_p256_select_point_affine((v16.i64[0] >> (v8 - 32)) & 1 | (8 * ((v4 >> (v8 - 32)) & 1)) | (4 * ((v17.i64[0] >> (v8 - 32)) & 1)) | (2 * ((v5 >> (v8 - 32)) & 1)), fiat_p256_g_pre_comp, v19, v10);
    fiat_p256_point_add(v21, &v23, &v25, v21, &v23, &v25, 1, v19, v19[1], v20);
    v11 = v8 - 33;
    --v8;
  }

  while (v11 < 0x20);
  v12 = v22;
  *a2 = *v21;
  *(a2 + 16) = v12;
  v13 = v24;
  *(a2 + 72) = v23;
  *(a2 + 88) = v13;
  result = *v25.i64;
  v15 = v26;
  *(a2 + 144) = v25;
  *(a2 + 160) = v15;
  return result;
}

double ec_GFp_nistp256_point_mul_public(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, _DWORD *a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 16);
  *v68 = *a4;
  v69 = v8;
  v9 = *(a4 + 88);
  v70[0] = *(a4 + 72);
  v70[1] = v9;
  v10 = *(a4 + 160);
  v71[0] = *(a4 + 144);
  v71[1] = v10;
  fiat_p256_point_double(v65, v66, v67, v68, v70, v71);
  fiat_p256_point_add(v72, v73, v74, v68, v70, v71, 0, v65, v66, v67);
  fiat_p256_point_add(v75, v76, v77, v72, v73, v74, 0, v65, v66, v67);
  fiat_p256_point_add(v78, v79, v80, v75, v76, v77, 0, v65, v66, v67);
  fiat_p256_point_add(v81, v82, v83, v78, v79, v80, 0, v65, v66, v67);
  fiat_p256_point_add(v84, v85, v86, v81, v82, v83, 0, v65, v66, v67);
  fiat_p256_point_add(v87, v88, v89, v84, v85, v86, 0, v65, v66, v67);
  fiat_p256_point_add(v90, v91, v92, v87, v88, v89, 0, v65, v66, v67);
  v11 = 0;
  v12 = *a5 & 0x1F;
  v13 = *(a1 + 264);
  do
  {
    while (1)
    {
      v14 = v12 - 32;
      if (v11 >= 0xFB)
      {
        v14 = v12 & 0xF;
      }

      if ((v12 & 0x10) == 0)
      {
        v14 = v12;
      }

      if (v12)
      {
        v12 -= v14;
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      v64[v11] = v14;
      v15 = (v11 + 5) >> 6;
      if (v15 >= v13)
      {
        break;
      }

      v12 = 16 * ((*&a5[2 * v15] >> (v11++ + 5)) & 1) + (v12 >> 1);
      if (v11 == 257)
      {
        goto LABEL_12;
      }
    }

    v12 >>= 1;
    ++v11;
  }

  while (v11 != 257);
LABEL_12:
  v62 = 0u;
  v63 = 0u;
  v16 = 1;
  v60 = 0u;
  v61 = 0u;
  *v58 = 0u;
  v59 = 0u;
  for (i = 256; i != -1; --i)
  {
    if (v16)
    {
      if (i > 0x1F)
      {
        goto LABEL_24;
      }
    }

    else
    {
      fiat_p256_point_double(v58, &v60, &v62, v58, &v60, &v62);
      if (i > 0x1F)
      {
        goto LABEL_24;
      }
    }

    v22 = a3[2];
    v21 = a3[3];
    v24 = *a3;
    v23 = a3[1];
    v25 = (8 * ((v21 >> (i + 32)) & 1)) | (4 * ((v22 >> (i + 32)) & 1)) | (2 * ((v23 >> (i + 32)) & 1)) | (*a3 >> (i + 32)) & 1;
    if (v25)
    {
      fiat_p256_point_add(v58, &v60, &v62, v58, &v60, &v62, 1, &fiat_p256_g_pre_comp[8 * v25 + 112], &fiat_p256_g_pre_comp[8 * v25 + 116], kP256FieldR);
      v16 = 0;
    }

    v26 = (8 * ((v21 >> i) & 1)) | (4 * ((v22 >> i) & 1)) | (2 * ((v23 >> i) & 1)) | (v24 >> i) & 1;
    if (v26)
    {
      fiat_p256_point_add(v58, &v60, &v62, v58, &v60, &v62, 1, &fiat_p256_g_pre_comp[8 * v26 - 8], &fiat_p256_g_pre_comp[8 * v26 - 4], kP256FieldR);
      v16 = 0;
    }

LABEL_24:
    v27 = v64[i];
    if (v64[i])
    {
      if (v27 >= 0)
      {
        v28 = v64[i];
      }

      else
      {
        v28 = -v27;
      }

      v29 = &v68[12 * (v28 >> 1)];
      v56 = 0u;
      v57 = 0u;
      if (v27 < 0)
      {
        v31 = v29[4];
        v32 = v29[5];
        v33 = v31 == 0;
        v34 = -v31;
        v35 = !v33 + 96;
        v33 = __CFADD__(v32, v35);
        v36 = v32 + v35;
        v37 = v33;
        v33 = v36 == 0;
        v38 = -v36;
        v39 = v29[6];
        v40 = v29[7];
        v42 = (v37 + !v33);
        v41 = v39 + v42;
        v43 = __CFADD__(v39, v42);
        v33 = v41 == 0;
        v44 = -v41;
        v46 = (v43 + !v33);
        v45 = v40 + v46;
        v47 = __CFADD__(v40, v46);
        v33 = v45 == 0;
        v48 = -v45;
        if (v47 + !v33)
        {
          v49 = -1;
        }

        else
        {
          v49 = 0;
        }

        v33 = __CFADD__(__CFADD__(v34, v49), v38);
        v50 = __CFADD__(v34, v49) + v38;
        *&v56 = v34 + v49;
        *(&v56 + 1) = v49 + v50;
        v57 = __PAIR128__(v49 & 0xFFFFFFFF00000001, v33 | __CFADD__(v49, v50)) + __PAIR128__(v48, v44);
        v30 = &v56;
        if (v16)
        {
          goto LABEL_13;
        }

LABEL_44:
        fiat_p256_point_add(v58, &v60, &v62, v58, &v60, &v62, 0, v29, v30, v29 + 4);
      }

      else
      {
        v30 = (v29 + 4);
        if (!v16)
        {
          goto LABEL_44;
        }

LABEL_13:
        v18 = *(v29 + 1);
        *v58 = *v29;
        v59 = v18;
        v19 = v30[1];
        v60 = *v30;
        v61 = v19;
        v20 = *(v29 + 5);
        v62 = *(v29 + 4);
        v63 = v20;
      }

      v16 = 0;
      continue;
    }
  }

  v51 = v59;
  *a2 = *v58;
  *(a2 + 16) = v51;
  v52 = v61;
  *(a2 + 72) = v60;
  *(a2 + 88) = v52;
  result = *v62.i64;
  v54 = v63;
  *(a2 + 144) = v62;
  *(a2 + 160) = v54;
  return result;
}

BOOL ec_GFp_nistp256_cmp_x_coordinate(uint64_t a1, int8x16_t *a2, uint64_t *a3)
{
  v132 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 328);
  if (v3 < 1)
  {
    return 0;
  }

  if (v3 < 4)
  {
    v5 = 0;
    v6 = 0;
LABEL_7:
    v12 = v3 - v5;
    v13 = &a2[9].i64[v5];
    do
    {
      v14 = *v13++;
      *&v6 |= v14;
      --v12;
    }

    while (v12);
    goto LABEL_9;
  }

  v5 = v3 & 0x7FFFFFFC;
  v7 = a2 + 10;
  v8 = 0uLL;
  v9 = v5;
  v10 = 0uLL;
  do
  {
    v8 = vorrq_s8(v7[-1], v8);
    v10 = vorrq_s8(*v7, v10);
    v7 += 2;
    v9 -= 4;
  }

  while (v9);
  v11 = vorrq_s8(v10, v8);
  v6 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  if (v5 != v3)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!*&v6)
  {
    return 0;
  }

  v16 = a2[10];
  v131[0] = a2[9];
  v131[1] = v16;
  fiat_p256_mul(v131, v131, v131);
  v18 = *(a3 + 1);
  *v129 = *a3;
  v130 = v18;
  fiat_p256_mul(v129, v129, v131);
  v19 = 0;
  v20 = a2[1];
  v127 = *a2;
  v21 = (v127.u64[0] * 0xFFFFFFFF00000001) >> 64;
  v22 = (v127.u64[0] * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v23 = 0xFFFFFFFFLL * v127.i64[0] + __CFADD__(-v127.i64[0], v127.i64[0]) + v22;
  if (__CFADD__(__CFADD__(-v127.i64[0], v127.i64[0]), v22) | __CFADD__(0xFFFFFFFFLL * v127.i64[0], __CFADD__(-v127.i64[0], v127.i64[0]) + v22))
  {
    v24 = ((v127.u64[0] * 0xFFFFFFFFuLL) >> 64) + 1;
  }

  else
  {
    v24 = (v127.u64[0] * 0xFFFFFFFFuLL) >> 64;
  }

  v41 = __CFADD__(v23, v127.i64[1]);
  v25 = v23 + v127.i64[1];
  v26 = v41;
  v27 = 0xFFFFFFFF00000001 * v25;
  v28 = (__PAIR128__(0xFFFFFFFFLL, -1) * v25) >> 64;
  v29 = v26 + __CFADD__(-v25, v25) + v24;
  v41 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  v31 = v41 - 0xFFFFFFFFLL * v127.i64[0];
  v32 = __CFADD__(v41, 0xFFFFFFFF00000001 * v127.i64[0]);
  v41 = __CFADD__(v27, v21);
  v33 = v27 + v21;
  v34 = v41;
  v41 = __CFADD__((v25 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFFLL * v25);
  v128 = v20;
  v35 = (v25 * 0xFFFFFFFF00000001) >> 64;
  v36 = (v25 * 0xFFFFFFFFuLL) >> 64;
  v38 = v41 + v31;
  v41 = __CFADD__(v41, v31) | __CFADD__(v36, v38);
  v37 = v36 + v38;
  v39 = v32 + v41 + v33;
  if (__CFADD__(v41, v33) | __CFADD__(v32, v41 + v33))
  {
    v40 = v34 + 1;
  }

  else
  {
    v40 = v34;
  }

  v41 = __CFADD__(v30, v128.i64[0]);
  v42 = v30 + v128.i64[0];
  v43 = v41;
  v44 = v41 + v37;
  v46 = __CFADD__(v41, v37);
  v41 = __CFADD__(v46, v39);
  v45 = v46 + v39;
  v47 = (v42 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v48 = v35 + v41 + v40;
  v49 = 0xFFFFFFFF * v42;
  v50 = (__PAIR128__(0xFFFFFFFFLL, -1) * v42) >> 64;
  v51 = 0xFFFFFFFF00000001 * v42;
  v52 = v43 + __CFADD__(-v42, v42) + v37;
  v41 = __CFADD__(__CFADD__(__CFADD__(-v42, v42), v44) | __CFADD__(v50, __CFADD__(-v42, v42) + v44), v45);
  v53 = (__CFADD__(__CFADD__(-v42, v42), v44) | __CFADD__(v50, __CFADD__(-v42, v42) + v44)) + v45;
  v54 = v41;
  v41 = __CFADD__(v51, v48);
  v55 = v51 + v48;
  v56 = v41;
  v57 = 0xFFFFFFFF * v42;
  v58 = (v42 * 0xFFFFFFFF00000001) >> 64;
  v59 = (v42 * 0xFFFFFFFFuLL) >> 64;
  v60 = v52 + v47 + v49;
  v41 = __CFADD__(__CFADD__(v47, v49), v53) | __CFADD__(v59, (__PAIR128__(v53, v47) + v57) >> 64);
  v61 = v59 + ((__PAIR128__(v53, v47) + v57) >> 64);
  v62 = v54 + v41 + v55;
  if (__CFADD__(v41, v55) | __CFADD__(v54, v41 + v55))
  {
    v63 = v56 + 1;
  }

  else
  {
    v63 = v56;
  }

  v64 = __CFADD__(v60, v128.i64[1]);
  v65 = v60 + v128.i64[1];
  v66 = v64;
  v67 = v64 + v61;
  v69 = __CFADD__(v64, v61);
  v41 = __CFADD__(v69, v62);
  v68 = v69 + v62;
  v70 = (v65 * 0xFFFFFFFF00000001) >> 64;
  v71 = v58 + v41 + v63;
  v72 = 0xFFFFFFFF00000001 * v65;
  v73 = -v65;
  v74 = (__PAIR128__(0xFFFFFFFFLL, -1) * v65) >> 64;
  if (__CFADD__((v65 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFFLL * v65))
  {
    v75 = ((v65 * 0xFFFFFFFFuLL) >> 64) + 1;
  }

  else
  {
    v75 = (v65 * 0xFFFFFFFFuLL) >> 64;
  }

  v41 = __CFADD__(v73, v65);
  v76 = v66 + __CFADD__(v73, v65) + v61 + v74;
  v78 = __CFADD__(v41, v67) | __CFADD__(v74, v41 + v67);
  v77 = v75 + v78 + v68;
  v80 = __CFADD__(v78, v68) | __CFADD__(v75, v78 + v68);
  v79 = v71 + v80 + v72;
  if (__CFADD__(v80, v72) | __CFADD__(v71, v80 + v72))
  {
    v81 = v70 + 1;
  }

  else
  {
    v81 = v70;
  }

  v82 = v77 - (1 - __CFADD__(v76, 1));
  v83 = v81 - -((v79 - (1 - (__CFADD__(v82, 0xFFFFFFFF00000001) + BYTE8(v82)))) >> 64);
  if (1 == __CFADD__(v83, 0xFFFFFFFFLL) + BYTE8(v83))
  {
    v19 = -1;
    v84 = 0;
  }

  else
  {
    v84 = -1;
  }

  v85 = v19 & (v76 + 1) | v84 & v76;
  v86 = v19 & (v82 - 0xFFFFFFFF) | v84 & v77;
  v87 = v19 & (v79 - (1 - (__CFADD__(v82, 0xFFFFFFFF00000001) + BYTE8(v82)))) | v84 & v79;
  v88 = v19 & (v83 + 0xFFFFFFFF) | v81 & v84;
  v127.i64[0] = v85;
  v127.i64[1] = v86;
  v128.i64[0] = v87;
  v128.i64[1] = v88;
  if (v129[0] == v85 && v129[1] == v86 && v130 == v87 && *(&v130 + 1) == v88)
  {
    return 1;
  }

  v92 = *(a1 + 256);
  if (v3 < 4)
  {
    v93 = 0;
    v94 = v126;
    i = v3;
    do
    {
LABEL_73:
      v112 = *a3++;
      v111 = v112;
      v113 = *v92++;
      v41 = __CFADD__(v111, v113);
      v114 = v111 + v113;
      v115 = v41;
      v41 = __CFADD__(v114, v93);
      v116 = v114 + v93;
      if (v41)
      {
        v93 = 1;
      }

      else
      {
        v93 = v115;
      }

      *v94++ = v116;
      --i;
    }

    while (i);
    goto LABEL_80;
  }

  v93 = 0;
  v94 = v126;
  for (i = v3; i >= 4; i -= 4)
  {
    v96 = a3[1];
    v97 = v92[1];
    v98 = *a3 + *v92;
    v99 = __CFADD__(*a3, *v92);
    v41 = __CFADD__(v98, v93);
    v100 = v98 + v93;
    v101 = v41 || v99;
    v41 = __CFADD__(v101 != 0, v96);
    v102 = (v101 != 0) + v96;
    v41 |= __CFADD__(v97, v102);
    *v94 = v100;
    v94[1] = v97 + v102;
    v103 = a3[2];
    v104 = a3[3];
    v105 = v92[2];
    v106 = v92[3];
    v108 = v41 + v103;
    v41 = __CFADD__(v41, v103) | __CFADD__(v105, v108);
    v107 = v105 + v108;
    v110 = v41;
    v41 = __CFADD__(v41, v104);
    v109 = v110 + v104;
    v41 |= __CFADD__(v106, v109);
    v109 += v106;
    v93 = v41;
    v94[2] = v107;
    v94[3] = v109;
    a3 += 4;
    v92 += 4;
    v94 += 4;
  }

  if (i)
  {
    goto LABEL_73;
  }

LABEL_80:
  if (v93)
  {
    return 0;
  }

  v117 = 0;
  for (j = 0; j != v3; ++j)
  {
    v119 = *(v126 + j);
    v120 = *(*(a1 + 320) + 8 * j);
    v121 = (((v120 ^ v119) - 1) & ~(v120 ^ v119)) >> 63;
    v117 = v121 & v117 | ((((v119 - v120) ^ v119 | v120 ^ v119) ^ v119) >> 63) & ~v121;
  }

  if ((v117 & 0x80000000) == 0)
  {
    return 0;
  }

  *v129 = v126[0];
  v130 = v126[1];
  fiat_p256_mul(v129, v129, v131);
  v122 = v129[0] == v127.i64[0] && v129[1] == v127.i64[1];
  v123 = v122 && v130 == v128.i64[0];
  return v123 && *(&v130 + 1) == v128.i64[1];
}

uint64_t *fiat_p256_mul(uint64_t *result, const unint64_t *a2, unint64_t *a3)
{
  v3 = a2[1];
  v5 = a3[2];
  v4 = a3[3];
  v6 = v4 * *a2;
  v7 = (v5 * *a2) >> 64;
  v8 = v5 * *a2;
  v10 = *a3;
  v9 = a3[1];
  v11 = (v9 * *a2) >> 64;
  v12 = v9 * *a2;
  v13 = v10 * *a2;
  v14 = (v10 * *a2) >> 64;
  v15 = (__PAIR128__(v9, v10) * *a2) >> 64;
  v76 = __CFADD__(__CFADD__(v14, v12), v11) | __CFADD__(v8, __CFADD__(v14, v12) + v11);
  v16 = v8 + __CFADD__(v14, v12) + v11;
  v18 = v76;
  v76 = __CFADD__(v76, v7);
  v17 = v18 + v7;
  v76 |= __CFADD__(v6, v17);
  v17 += v6;
  if (v76)
  {
    v19 = ((v4 * *a2) >> 64) + 1;
  }

  else
  {
    v19 = (v4 * *a2) >> 64;
  }

  v20 = (v13 * 0xFFFFFFFF00000001) >> 64;
  v21 = 0xFFFFFFFF * v13;
  v22 = -(v10 * *a2);
  v23 = (v13 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v24 = (__PAIR128__(0xFFFFFFFFLL, -1) * v13) >> 64;
  v25 = v12 + __CFADD__(v22, v13) + v14;
  v76 = __CFADD__(__CFADD__(__CFADD__(v22, v13), v15) | __CFADD__(v24, __CFADD__(v22, v13) + v15), v16);
  v26 = (__CFADD__(__CFADD__(v22, v13), v15) | __CFADD__(v24, __CFADD__(v22, v13) + v15)) + v16;
  v27 = v76;
  v76 = __CFADD__(v17, 0xFFFFFFFF00000001 * v13);
  v28 = v17 - 0xFFFFFFFF * v13;
  v29 = v76;
  v76 = __CFADD__(v20, v19);
  v30 = v20 + v19;
  v31 = v76;
  v32 = (v5 * v3) >> 64;
  v33 = (v9 * v3) >> 64;
  v34 = v9 * v3;
  v35 = (v10 * v3) >> 64;
  v36 = (__PAIR128__(v9, v10) * v3) >> 64;
  v37 = v5 * v3 + __CFADD__(v35, v9 * v3) + v33;
  v38 = v4 * v3 + (__CFADD__(__CFADD__(v35, v9 * v3), v33) | __CFADD__(v5 * v3, __CFADD__(v35, v9 * v3) + v33)) + v32;
  if (__CFADD__(__CFADD__(__CFADD__(v35, v9 * v3), v33) | __CFADD__(v5 * v3, __CFADD__(v35, v9 * v3) + v33), v32) | __CFADD__(v4 * v3, (__CFADD__(__CFADD__(v35, v9 * v3), v33) | __CFADD__(v5 * v3, __CFADD__(v35, v9 * v3) + v33)) + v32))
  {
    v39 = ((v4 * v3) >> 64) + 1;
  }

  else
  {
    v39 = (v4 * v3) >> 64;
  }

  v40 = (v13 * 0xFFFFFFFFuLL) >> 64;
  v41 = v25 + v23 + v21;
  v76 = __CFADD__(__CFADD__(v23, v21), v26);
  v42 = __CFADD__(v23, v21) + v26;
  v76 |= __CFADD__(v40, v42);
  v42 += v40;
  v44 = v76;
  v76 = __CFADD__(v76, v28);
  v43 = v44 + v28;
  v76 |= __CFADD__(v27, v43);
  v43 += v27;
  v46 = v76;
  v76 = __CFADD__(v76, v30);
  v45 = v46 + v30;
  v76 |= __CFADD__(v29, v45);
  v45 += v29;
  v47 = v10 * v3;
  v48 = v31 + v76 + v39;
  if (__CFADD__(v76, v39) | __CFADD__(v31, v76 + v39))
  {
    v49 = 1;
  }

  else
  {
    v49 = 0;
  }

  v50 = __PAIR128__(v35, v41) + __PAIR128__(v34, v47);
  v51 = ((__PAIR128__(v35, v41) + __PAIR128__(v34, v47)) >> 64) + v42;
  v52 = (__CFADD__(__CFADD__(v41, v47), v36) | __CFADD__(v42, __CFADD__(v41, v47) + v36)) + v37;
  v53 = __CFADD__(__CFADD__(__CFADD__(v41, v47), v36) | __CFADD__(v42, __CFADD__(v41, v47) + v36), v37);
  v76 = __CFADD__(v45, v38);
  v54 = v45 + v38;
  v55 = v76;
  v56 = 0xFFFFFFFF * v50;
  v57 = (v50 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v58 = (__PAIR128__(0xFFFFFFFFLL, -1) * v50) >> 64;
  v76 = __CFADD__(v52, v43);
  v59 = v52 + v43;
  v61 = v76;
  v76 = __CFADD__(v76, v54);
  v60 = v61 + v54;
  v76 |= __CFADD__(v53, v60);
  v60 += v53;
  v62 = v55 + v76 + v48;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v64 = (v50 * 0xFFFFFFFF00000001) >> 64;
  v65 = v42 + __CFADD__(-v50, v50) + *(&v50 + 1);
  v76 = __CFADD__(__CFADD__(__CFADD__(-v50, v50), v51) | __CFADD__(v58, __CFADD__(-v50, v50) + v51), v59);
  v66 = (__CFADD__(__CFADD__(-v50, v50), v51) | __CFADD__(v58, __CFADD__(-v50, v50) + v51)) + v59;
  v67 = v76;
  v76 = __CFADD__(v60, 0xFFFFFFFF00000001 * v50);
  v68 = v60 - 0xFFFFFFFF * v50;
  v69 = v76;
  v76 = __CFADD__(v62, v64);
  v70 = v62 + v64;
  v71 = v76;
  v72 = (v50 * 0xFFFFFFFFuLL) >> 64;
  v76 = __CFADD__(__CFADD__(v57, v56), v66) | __CFADD__(v72, __CFADD__(v57, v56) + v66);
  v73 = v72 + __CFADD__(v57, v56) + v66;
  v75 = v76 + v68;
  v76 = __CFADD__(v76, v68) | __CFADD__(v67, v75);
  v74 = v67 + v75;
  v78 = v76;
  v76 = __CFADD__(v76, v70) | __CFADD__(v69, v76 + v70);
  v77 = v69 + v78 + v70;
  if (v76)
  {
    v79 = v71 + 1;
  }

  else
  {
    v79 = v71;
  }

  v80 = v65 + v57 + v56;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v81 = v49 + v76 + v79;
  v83 = a2[2];
  v82 = a2[3];
  v84 = (v4 * v83) >> 64;
  v85 = v4 * v83;
  v86 = (v5 * v83) >> 64;
  v87 = v5 * v83;
  v88 = (v9 * v83) >> 64;
  v89 = v9 * v83;
  v90 = v10 * v83;
  v91 = (v10 * v83) >> 64;
  v92 = v91 + v89;
  v76 = __CFADD__(__CFADD__(v91, v89), v88) | __CFADD__(v87, __CFADD__(v91, v89) + v88);
  v93 = v87 + __CFADD__(v91, v89) + v88;
  v95 = v76 + v86;
  v76 = __CFADD__(v76, v86) | __CFADD__(v85, v95);
  v94 = v85 + v95;
  if (v76)
  {
    ++v84;
  }

  v96 = __PAIR128__(v91, v80) + __PAIR128__(v89, v90);
  v97 = ((__PAIR128__(v91, v80) + __PAIR128__(v89, v90)) >> 64) + v73;
  v99 = (__CFADD__(__CFADD__(v80, v90), v92) | __CFADD__(v73, __CFADD__(v80, v90) + v92)) + v93;
  v76 = __CFADD__(__CFADD__(__CFADD__(v80, v90), v92) | __CFADD__(v73, __CFADD__(v80, v90) + v92), v93) | __CFADD__(v74, v99);
  v98 = v74 + v99;
  v101 = v76 + v94;
  v76 = __CFADD__(v76, v94) | __CFADD__(v77, v101);
  v100 = v77 + v101;
  v103 = v76;
  v76 = __CFADD__(v76, v84);
  v102 = v103 + v84;
  v104 = v76;
  v105 = v102 + v81;
  v106 = 0xFFFFFFFF00000001 * v96;
  v107 = (v96 * 0xFFFFFFFF00000001) >> 64;
  v108 = (v96 * 0xFFFFFFFFuLL) >> 64;
  v109 = -v96;
  v110 = (__PAIR128__(0xFFFFFFFFLL, -1) * v96) >> 64;
  if (__CFADD__((v96 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v96))
  {
    ++v108;
  }

  v111 = v73 + __CFADD__(v109, v96) + *(&v96 + 1);
  v76 = __CFADD__(__CFADD__(__CFADD__(v109, v96), v97) | __CFADD__(v110, __CFADD__(v109, v96) + v97), v98);
  v112 = (__CFADD__(__CFADD__(v109, v96), v97) | __CFADD__(v110, __CFADD__(v109, v96) + v97)) + v98;
  v76 |= __CFADD__(v108, v112);
  v112 += v108;
  v114 = v76;
  v76 = __CFADD__(v76, v100);
  v113 = v114 + v100;
  v76 |= __CFADD__(v106, v113);
  v113 += v106;
  v115 = v105 + v76 + v107;
  if (__CFADD__(v76, v107) | __CFADD__(v105, v76 + v107))
  {
    v116 = 1;
  }

  else
  {
    v116 = 0;
  }

  v117 = v111 + v110;
  v118 = v104 + __CFADD__(v102, v81) + v116;
  v119 = (v4 * v82) >> 64;
  v120 = v4 * v82;
  v121 = (v5 * v82) >> 64;
  v122 = v5 * v82;
  v123 = (v9 * v82) >> 64;
  v124 = v9 * v82;
  v125 = v10 * v82;
  v126 = (v10 * v82) >> 64;
  v127 = v126 + v124;
  v76 = __CFADD__(__CFADD__(v126, v124), v123) | __CFADD__(v122, __CFADD__(v126, v124) + v123);
  v128 = v122 + __CFADD__(v126, v124) + v123;
  v130 = v76 + v121;
  v76 = __CFADD__(v76, v121) | __CFADD__(v120, v130);
  v129 = v120 + v130;
  if (v76)
  {
    ++v119;
  }

  v76 = __CFADD__(v117, v125);
  v131 = v117 + v125;
  v132 = v124 + v76 + v126;
  v133 = v132 + v112;
  v135 = __CFADD__(v76, v127) | __CFADD__(v112, v76 + v127);
  v76 = __CFADD__(v135, v128);
  v134 = v135 + v128;
  v76 |= __CFADD__(v113, v134);
  v134 += v113;
  v136 = v115 + v76 + v129;
  v137 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v138 = (v131 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v139 = 0xFFFFFFFF * v131;
  v140 = (__PAIR128__(0xFFFFFFFFLL, -1) * v131) >> 64;
  v141 = v112 + __CFADD__(-v131, v131) + v132;
  v76 = __CFADD__(__CFADD__(__CFADD__(-v131, v131), v133) | __CFADD__(v140, __CFADD__(-v131, v131) + v133), v134);
  v142 = (__CFADD__(__CFADD__(-v131, v131), v133) | __CFADD__(v140, __CFADD__(-v131, v131) + v133)) + v134;
  v143 = v76;
  v76 = __CFADD__(v136, 0xFFFFFFFF00000001 * v131);
  v144 = v136 - 0xFFFFFFFF * v131;
  v145 = v76;
  v76 = __CFADD__(v138, v139);
  v146 = v138 + v139;
  v147 = (v131 * 0xFFFFFFFF00000001) >> 64;
  v148 = (v131 * 0xFFFFFFFFuLL) >> 64;
  v150 = v76;
  v76 = __CFADD__(v76, v142);
  v149 = v150 + v142;
  v76 |= __CFADD__(v148, v149);
  v149 += v148;
  v152 = v76;
  v76 = __CFADD__(v76, v144);
  v151 = v152 + v144;
  v76 |= __CFADD__(v143, v151);
  v151 += v143;
  v155 = v76;
  v153 = __CFADD__(v76, v147) | __CFADD__(v145, v76 + v147);
  v154 = v145 + v155 + v147;
  if (v153)
  {
    v156 = 1;
  }

  else
  {
    v156 = 0;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v137);
  v157 = v153 + v119;
  v158 = __CFADD__(v153, v119);
  v76 = __CFADD__(v154, v157 + v118);
  v159 = v154 + v157 + v118;
  if (v76)
  {
    ++v156;
  }

  v160 = v141 + v146;
  v161 = v158 + __CFADD__(v157, v118) + v156;
  v163 = v149 - (1 - __CFADD__(v160, 1));
  v162 = (v149 - __PAIR128__(v157, (1 - __CFADD__(v160, 1)))) >> 64;
  v164 = v159 - __PAIR128__(v158, -((v151 - __PAIR128__(v162, (1 - (__CFADD__(v163, 0xFFFFFFFF00000001) + v162)))) >> 64));
  if (1 - (__CFADD__(v164, 0xFFFFFFFFLL) + BYTE8(v164)) + (v161 < (1 - (__CFADD__(v164, 0xFFFFFFFFLL) + BYTE8(v164)))))
  {
    v165 = 0;
  }

  else
  {
    v165 = -1;
  }

  if (1 - (__CFADD__(v164, 0xFFFFFFFFLL) + BYTE8(v164)) + (v161 < (1 - (__CFADD__(v164, 0xFFFFFFFFLL) + BYTE8(v164)))))
  {
    v166 = -1;
  }

  else
  {
    v166 = 0;
  }

  *result = v165 & (v160 + 1) | v166 & v160;
  result[1] = v165 & (v163 - 0xFFFFFFFF) | v166 & v149;
  result[2] = v165 & (v151 - (1 - (__CFADD__(v163, 0xFFFFFFFF00000001) + v162))) | v166 & v151;
  result[3] = v165 & (v164 + 0xFFFFFFFF) | v166 & v159;
  return result;
}

uint64_t *fiat_p256_square(uint64_t *result, unint64_t *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  v6 = (*a2 * v2) >> 64;
  v158 = *a2 * v2;
  v7 = (*a2 * v3) >> 64;
  v8 = *a2 * v3;
  v9 = (v5 * v4) >> 64;
  v10 = v5 * v4;
  v11 = v5 * v5;
  v12 = (v5 * v5) >> 64;
  v13 = (__PAIR128__(v4, v5) * v5) >> 64;
  v14 = v9 + __CFADD__(v12, v5 * v4) + v5 * v3;
  v15 = v7 + (__CFADD__(__CFADD__(v12, v5 * v4), v5 * v3) | __CFADD__(v9, __CFADD__(v12, v5 * v4) + v5 * v3)) + v158;
  if (__CFADD__(__CFADD__(__CFADD__(v12, v5 * v4), v5 * v3) | __CFADD__(v9, __CFADD__(v12, v5 * v4) + v5 * v3), v158) | __CFADD__(v7, (__CFADD__(__CFADD__(v12, v5 * v4), v5 * v3) | __CFADD__(v9, __CFADD__(v12, v5 * v4) + v5 * v3)) + v158))
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v6;
  }

  v17 = (v11 * 0xFFFFFFFF00000001) >> 64;
  v18 = 0xFFFFFFFFLL * v11;
  v19 = (v11 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v20 = -(v5 * v5);
  v21 = v10 + __CFADD__(v20, v11) + v12;
  v22 = (__CFADD__(__CFADD__(v20, v11), v13) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v11) >> 64, __CFADD__(v20, v11) + v13)) + v14;
  v23 = __CFADD__(__CFADD__(__CFADD__(v20, v11), v13) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v11) >> 64, __CFADD__(v20, v11) + v13), v14);
  v75 = __CFADD__(v15, 0xFFFFFFFF00000001 * v11);
  v24 = v15 - 0xFFFFFFFFLL * v11;
  v25 = v75;
  v75 = __CFADD__(v17, v16);
  v26 = v17 + v16;
  v27 = v75;
  v28 = (v2 * v4) >> 64;
  v29 = v2 * v4;
  v30 = (v3 * v4) >> 64;
  v31 = v3 * v4;
  v32 = v4 * v4;
  v33 = __PAIR128__(v3 * v4, v9) + v4 * v4;
  v35 = __CFADD__(__CFADD__(v9, v4 * v4), v3 * v4) | __CFADD__((v4 * v4) >> 64, __CFADD__(v9, v4 * v4) + v3 * v4);
  v34 = v30 + v35 + v2 * v4;
  if (__CFADD__(v35, v2 * v4) | __CFADD__(v30, v35 + v2 * v4))
  {
    v36 = v28 + 1;
  }

  else
  {
    v36 = (v2 * v4) >> 64;
  }

  v75 = __CFADD__(v19, v18);
  v37 = (v11 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v38 = 0xFFFFFFFFLL * v11;
  v39 = (v11 * 0xFFFFFFFFuLL) >> 64;
  v40 = v21 + v19 + v18;
  v75 = __CFADD__(v75, v22) | __CFADD__(v39, (__PAIR128__(v22, v37) + v38) >> 64);
  v41 = v39 + ((__PAIR128__(v22, v37) + v38) >> 64);
  v43 = v75;
  v75 = __CFADD__(v75, v24);
  v42 = v43 + v24;
  v75 |= __CFADD__(v23, v42);
  v42 += v23;
  v45 = v75;
  v75 = __CFADD__(v75, v26);
  v44 = v45 + v26;
  v75 |= __CFADD__(v25, v44);
  v44 += v25;
  v47 = v75;
  v75 = __CFADD__(v75, v36);
  v46 = v47 + v36;
  v75 |= __CFADD__(v27, v46);
  v46 += v27;
  v48 = v75;
  v75 = __CFADD__(v40, v10);
  v49 = __PAIR128__(v9, v40) + __PAIR128__(v32, v10);
  v50 = ((__PAIR128__(v9, v40) + __PAIR128__(v32, v10)) >> 64) + v41;
  v51 = (__CFADD__(__CFADD__(v40, v10), v33) | __CFADD__(v41, __CFADD__(v40, v10) + v33)) + *(&v33 + 1);
  v52 = __CFADD__(__CFADD__(v75, v33) | __CFADD__(v41, v75 + v33), *(&v33 + 1));
  v75 = __CFADD__(v44, v34);
  v53 = v44 + v34;
  v54 = v75;
  v55 = 0xFFFFFFFF * v49;
  v56 = (v49 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v57 = (__PAIR128__(0xFFFFFFFFLL, -1) * v49) >> 64;
  v75 = __CFADD__(v51, v42);
  v58 = v51 + v42;
  v60 = v75;
  v75 = __CFADD__(v75, v53);
  v59 = v60 + v53;
  v75 |= __CFADD__(v52, v59);
  v59 += v52;
  v61 = v54 + v75 + v46;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v63 = (v49 * 0xFFFFFFFF00000001) >> 64;
  v64 = v41 + __CFADD__(-v49, v49) + *(&v49 + 1);
  v65 = (__CFADD__(__CFADD__(-v49, v49), v50) | __CFADD__(v57, __CFADD__(-v49, v49) + v50)) + v58;
  v66 = __CFADD__(__CFADD__(__CFADD__(-v49, v49), v50) | __CFADD__(v57, __CFADD__(-v49, v49) + v50), v58);
  v75 = __CFADD__(v59, 0xFFFFFFFF00000001 * v49);
  v67 = v59 - 0xFFFFFFFF * v49;
  v68 = v75;
  v75 = __CFADD__(v61, v63);
  v69 = v61 + v63;
  v70 = v75;
  v71 = (v49 * 0xFFFFFFFFuLL) >> 64;
  v75 = __CFADD__(__CFADD__(v56, v55), v65) | __CFADD__(v71, __CFADD__(v56, v55) + v65);
  v72 = v71 + __CFADD__(v56, v55) + v65;
  v74 = v75;
  v75 = __CFADD__(v75, v67);
  v73 = v74 + v67;
  v75 |= __CFADD__(v66, v73);
  v73 += v66;
  v77 = v75;
  v75 = __CFADD__(v75, v69);
  v76 = v77 + v69;
  v75 |= __CFADD__(v68, v76);
  v76 += v68;
  if (v75)
  {
    v78 = v70 + 1;
  }

  else
  {
    v78 = v70;
  }

  v79 = v64 + v56 + v55;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v80 = v48 + v75 + v78;
  v81 = (v2 * v3) >> 64;
  v82 = v2 * v3;
  v83 = (v3 * v3) >> 64;
  v84 = v3 * v3;
  v85 = v7 + v31;
  v75 = __CFADD__(__CFADD__(v7, v31), v84);
  v86 = __CFADD__(v7, v31) + v84;
  v75 |= __CFADD__(v30, v86);
  v86 += v30;
  v87 = v83 + v75 + v82;
  if (__CFADD__(v75, v82) | __CFADD__(v83, v75 + v82))
  {
    v88 = v81 + 1;
  }

  else
  {
    v88 = v81;
  }

  v89 = __PAIR128__(v7, v79) + __PAIR128__(v31, v8);
  v90 = ((__PAIR128__(v7, v79) + __PAIR128__(v31, v8)) >> 64) + v72;
  v92 = (__CFADD__(__CFADD__(v79, v8), v85) | __CFADD__(v72, __CFADD__(v79, v8) + v85)) + v86;
  v75 = __CFADD__(__CFADD__(__CFADD__(v79, v8), v85) | __CFADD__(v72, __CFADD__(v79, v8) + v85), v86) | __CFADD__(v73, v92);
  v91 = v73 + v92;
  v93 = v76 + v75 + v87;
  v94 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v95 = (v89 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v96 = 0xFFFFFFFF * v89;
  v97 = (__PAIR128__(0xFFFFFFFFLL, -1) * v89) >> 64;
  v98 = v72 + __CFADD__(-v89, v89) + *(&v89 + 1);
  v75 = __CFADD__(__CFADD__(__CFADD__(-v89, v89), v90) | __CFADD__(v97, __CFADD__(-v89, v89) + v90), v91);
  v99 = (__CFADD__(__CFADD__(-v89, v89), v90) | __CFADD__(v97, __CFADD__(-v89, v89) + v90)) + v91;
  v100 = v75;
  v75 = __CFADD__(v93, 0xFFFFFFFF00000001 * v89);
  v101 = v93 - 0xFFFFFFFF * v89;
  v102 = v75;
  v75 = __CFADD__(v95, v96);
  v103 = v95 + v96;
  v104 = (v89 * 0xFFFFFFFF00000001) >> 64;
  v105 = (v89 * 0xFFFFFFFFuLL) >> 64;
  v107 = v75;
  v75 = __CFADD__(v75, v99);
  v106 = v107 + v99;
  v75 |= __CFADD__(v105, v106);
  v106 += v105;
  v109 = v75;
  v75 = __CFADD__(v75, v101);
  v108 = v109 + v101;
  v75 |= __CFADD__(v100, v108);
  v108 += v100;
  v112 = v75;
  v110 = __CFADD__(v75, v104) | __CFADD__(v102, v75 + v104);
  v111 = v102 + v112 + v104;
  if (v110)
  {
    v113 = 1;
  }

  else
  {
    v113 = 0;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v94);
  v114 = v110 + v88;
  v115 = __CFADD__(v110, v88);
  v75 = __CFADD__(v111, v114 + v80);
  v116 = v111 + v114 + v80;
  if (v75)
  {
    ++v113;
  }

  v75 = __CFADD__(v114, v80);
  v117 = v98 + v103;
  v118 = v115 + v75 + v113;
  v119 = (v2 * v2) >> 64;
  v120 = v2 * v2;
  v121 = v6 + v29;
  v75 = __CFADD__(__CFADD__(v6, v29), v82) | __CFADD__(v28, __CFADD__(v6, v29) + v82);
  v122 = v28 + __CFADD__(v6, v29) + v82;
  v124 = v75;
  v75 = __CFADD__(v75, v120);
  v123 = v124 + v120;
  v75 |= __CFADD__(v81, v123);
  v123 += v81;
  if (v75)
  {
    ++v119;
  }

  v125 = __PAIR128__(v6, v117) + __PAIR128__(v29, v158);
  v126 = ((__PAIR128__(v6, v117) + __PAIR128__(v29, v158)) >> 64) + v106;
  v75 = __CFADD__(__CFADD__(__CFADD__(v117, v158), v121) | __CFADD__(v106, __CFADD__(v117, v158) + v121), v122) | __CFADD__(v108, (__CFADD__(__CFADD__(v117, v158), v121) | __CFADD__(v106, __CFADD__(v117, v158) + v121)) + v122);
  v127 = v108 + (__CFADD__(__CFADD__(v117, v158), v121) | __CFADD__(v106, __CFADD__(v117, v158) + v121)) + v122;
  v128 = v116 + v75 + v123;
  v129 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v130 = (v125 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v131 = 0xFFFFFFFF * v125;
  v132 = v106 + __CFADD__(-v125, v125) + *(&v125 + 1);
  v133 = (__CFADD__(__CFADD__(-v125, v125), v126) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v125) >> 64, __CFADD__(-v125, v125) + v126)) + v127;
  v75 = __CFADD__(v128, 0xFFFFFFFF00000001 * v125);
  v134 = v128 - 0xFFFFFFFF * v125;
  v135 = v75;
  v75 = __CFADD__(v130, v131);
  v136 = v130 + v131;
  v137 = (v125 * 0xFFFFFFFF00000001) >> 64;
  v138 = (v125 * 0xFFFFFFFFuLL) >> 64;
  v140 = v75;
  v75 = __CFADD__(v75, v133);
  v139 = v140 + v133;
  v75 |= __CFADD__(v138, v139);
  v139 += v138;
  v142 = v75 + v134;
  v141 = *(&v125 + 1) + v142;
  v145 = __CFADD__(v75, v134) | __CFADD__(*(&v125 + 1), v142);
  v143 = __CFADD__(v145, v137) | __CFADD__(v135, v145 + v137);
  v144 = v135 + v145 + v137;
  if (v143)
  {
    v146 = 1;
  }

  else
  {
    v146 = 0;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v129);
  v147 = v143 + v119;
  v148 = __CFADD__(v143, v119);
  v149 = v147 + v118;
  v75 = __CFADD__(v144, v147 + v118);
  v150 = v144 + v147 + v118;
  if (v75)
  {
    ++v146;
  }

  v151 = v132 + v136;
  v152 = v139 - __PAIR128__(v148, (1 - __CFADD__(v151, 1)));
  v153 = v150 - -((v141 - __PAIR128__(v149, (1 - (__CFADD__(v152, 0xFFFFFFFF00000001) + BYTE8(v152))))) >> 64);
  v154 = -(v148 + __CFADD__(v147, v118) + v146 + (v148 + __CFADD__(v147, v118) + v146 < (1 - (__CFADD__(v153, 0xFFFFFFFFLL) + ((v150 - __PAIR128__(v118, -((v141 - __PAIR128__(v149, (1 - (__CFADD__(v152, 0xFFFFFFFF00000001) + BYTE8(v152))))) >> 64))) >> 64)))));
  v155 = v154 == 0;
  if (v154)
  {
    v156 = 0;
  }

  else
  {
    v156 = -1;
  }

  if (v155)
  {
    v157 = 0;
  }

  else
  {
    v157 = -1;
  }

  *result = v156 & (v151 + 1) | v157 & v151;
  result[1] = v156 & (v152 - 0xFFFFFFFF) | v157 & v139;
  result[2] = v156 & (v141 - (1 - (__CFADD__(v152, 0xFFFFFFFF00000001) + BYTE8(v152)))) | v157 & v141;
  result[3] = v156 & (v153 + 0xFFFFFFFFLL) | v157 & v150;
  return result;
}

int8x16_t fiat_p256_point_add(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, unint64_t *a5, int8x16_t *a6, int a7, int8x16_t *a8, int8x16_t *a9, int8x16_t *a10)
{
  v207 = *MEMORY[0x277D85DE8];
  *v205 = 0u;
  v206 = 0u;
  *v203 = 0u;
  v204 = 0u;
  v12 = a6->i64[0];
  v13 = a6->u64[1];
  v15 = a6[1].u64[0];
  v14 = a6[1].i64[1];
  v171 = v13 | a6->i64[0] | v15 | v14;
  v16 = a10->i64[0];
  v17 = a10->u64[1];
  v19 = a10[1].u64[0];
  v18 = a10[1].u64[1];
  v172 = v17 | a10->i64[0] | v19 | v18;
  *v199 = 0u;
  v200 = 0u;
  v20 = fiat_p256_square(v199, a6);
  *v197 = 0u;
  v198 = 0u;
  memset(v196, 0, sizeof(v196));
  *v194 = 0u;
  v195 = 0u;
  if (a7)
  {
    v23 = a4->i64[0];
    v22 = a4->u64[1];
    v197[0] = a4->i64[0];
    v197[1] = v22;
    v25 = a4[1].u64[0];
    v24 = a4[1].u64[1];
    *&v198 = v25;
    *(&v198 + 1) = v24;
    *(&v27 + 1) = v13;
    *&v27 = v12;
    v26 = v27 >> 63;
    *(&v27 + 1) = v15;
    *&v27 = v13;
    v28 = v27 >> 63;
    *(&v27 + 1) = v14;
    *&v27 = v15;
    v29 = v27 >> 63;
    v30 = v29 - __PAIR128__(v20, -((v28 - __PAIR128__(v21, (1 - __CFADD__(v26, 0xFFFFFFFF00000000)))) >> 64));
    if ((v14 < 0) + (v14 >> 63 < (1 - (__CFADD__(v30, 0xFFFFFFFFLL) + BYTE8(v30)))))
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    if ((v14 < 0) + (v14 >> 63 < (1 - (__CFADD__(v30, 0xFFFFFFFFLL) + BYTE8(v30)))))
    {
      v32 = -1;
    }

    else
    {
      v32 = 0;
    }

    v194[0] = v31 & ((2 * v12) | 1) | v32 & (2 * v12);
    v194[1] = v31 & (v26 - 0x100000000) | v32 & v26;
    *&v195 = v31 & (v28 - (1 - __CFADD__(v26, 0xFFFFFFFF00000000))) | v32 & v28;
    *(&v195 + 1) = v31 & (v30 + 0xFFFFFFFF) | v32 & v29;
    v33 = a5;
    v34 = *a5;
    v196[0] = *a5;
    *&v196[1] = *(a5 + 1);
    v196[3] = a5[3];
    v35 = v196[1];
  }

  else
  {
    *v201 = 0uLL;
    v202 = 0uLL;
    fiat_p256_square(v201, a10);
    v36 = fiat_p256_mul(v197, a4, v201);
    v38 = v16 + v12;
    v39 = v13 + __CFADD__(v16, v12) + v17;
    v40 = v15 + (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19;
    v41 = v14 + (__CFADD__(__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17), v19) | __CFADD__(v15, (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19)) + v18;
    if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17), v19) | __CFADD__(v15, (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19), v18) | __CFADD__(v14, (__CFADD__(__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17), v19) | __CFADD__(v15, (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19)) + v18))
    {
      v42 = 1;
    }

    else
    {
      v42 = 0;
    }

    v43 = v39 - __PAIR128__(v37, (1 - __CFADD__(v38, 1)));
    v44 = v41 - __PAIR128__(v36, -((v40 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v43, 0xFFFFFFFF00000001) + BYTE8(v43))))) >> 64));
    v45 = -(v42 + (v42 < (1 - (__CFADD__(v44, 0xFFFFFFFFLL) + BYTE8(v44)))));
    v46 = v45 == 0;
    if (v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = -1;
    }

    if (v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = -1;
    }

    v194[0] = v47 & (v38 + 1) | v48 & v38;
    v194[1] = v47 & (v43 - 0xFFFFFFFF) | v48 & v39;
    *&v195 = v47 & (v40 - (1 - (__CFADD__(v43, 0xFFFFFFFF00000001) + BYTE8(v43)))) | v48 & v40;
    *(&v195 + 1) = v47 & (v44 + 0xFFFFFFFF) | v48 & v41;
    fiat_p256_square(v194, v194);
    v49 = v194[0] - v199[0];
    v50 = v199[1] + -((v194[0] - __PAIR128__(v199[0], v199[0])) >> 64);
    v51 = v194[1] - v50;
    v58 = __CFADD__(v200, -((v194[1] - __PAIR128__(v50, v50)) >> 64));
    v52 = v200 + -((v194[1] - __PAIR128__(v50, v50)) >> 64);
    v53 = v58;
    v54 = v195 - v52;
    v58 = __CFADD__(*(&v200 + 1), -((v195 - __PAIR128__(v53, v52)) >> 64));
    v55 = *(&v200 + 1) + -((v195 - __PAIR128__(v53, v52)) >> 64);
    v56 = v58;
    v57 = *(&v195 + 1) - __PAIR128__(v56, v55);
    v58 = __CFADD__(__CFADD__(v49, *(&v57 + 1)), v51) | __CFADD__(DWORD2(v57), __CFADD__(v49, *(&v57 + 1)) + v51);
    v59 = DWORD2(v57) + __CFADD__(v49, *(&v57 + 1)) + v51;
    v60 = v57 + __CFADD__(v58, v54) + (*(&v57 + 1) & 0xFFFFFFFF00000001);
    v62 = (v49 + *(&v57 + 1) - __PAIR128__(v201[0], v201[0])) >> 64;
    v61 = v49 + *(&v57 + 1) - v201[0];
    v63 = v59 - __PAIR128__(v201[1] + -v62, v201[1] + -v62);
    v64 = (v58 + v54 - __PAIR128__(v202.i64[0] + -BYTE8(v63), v202.i64[0] + -BYTE8(v63))) >> 64;
    if (((v60 - __PAIR128__(v202.i64[1] + -v64, v202.i64[1] + -v64)) >> 64))
    {
      v65 = -1;
    }

    else
    {
      v65 = 0;
    }

    v66 = __CFADD__(v61, v65) + v63;
    v194[0] = v61 + v65;
    v194[1] = v65 + v66;
    v195 = __PAIR128__(v65 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v61, v65), v63) | __CFADD__(v65, v66)) + __PAIR128__(v60 - (v202.i64[1] + -((v58 + v54 - __PAIR128__(v202.i64[0] + -BYTE8(v63), v202.i64[0] + -BYTE8(v63))) >> 64)), v58 + v54 - (v202.i64[0] + -BYTE8(v63)));
    fiat_p256_mul(v196, a10, v201);
    v33 = a5;
    fiat_p256_mul(v196, v196, a5);
    v23 = v197[0];
    v22 = v197[1];
    v24 = *(&v198 + 1);
    v25 = v198;
    v34 = v196[0];
    v35 = v196[1];
  }

  *v201 = 0u;
  v202 = 0u;
  *v192 = 0u;
  v193 = 0u;
  fiat_p256_mul(v192, a8, v199);
  v68 = v192[0] - v23;
  v69 = v192[1] - (v22 + -((v192[0] - __PAIR128__(v67, v23)) >> 64));
  v58 = __CFADD__(v25, -((v192[1] - __PAIR128__(v22 + -((v192[0] - __PAIR128__(v67, v23)) >> 64), v22 + -((v192[0] - __PAIR128__(v67, v23)) >> 64))) >> 64));
  v70 = v25 + -((v192[1] - __PAIR128__(v22 + -((v192[0] - __PAIR128__(v67, v23)) >> 64), v22 + -((v192[0] - __PAIR128__(v67, v23)) >> 64))) >> 64);
  v71 = v58;
  v73 = v193 - v70;
  v72 = (v193 - __PAIR128__(v71, v70)) >> 64;
  v58 = __CFADD__(v24, -v72);
  v74 = v24 + -v72;
  v75 = v58;
  v76 = *(&v193 + 1) - v74;
  if (((*(&v193 + 1) - __PAIR128__(v75, v74)) >> 64))
  {
    v77 = -1;
  }

  else
  {
    v77 = 0;
  }

  v78 = v68 + v77;
  v79 = v77 + __CFADD__(v68, v77) + v69;
  v190[0] = v68 + v77;
  v190[1] = v79;
  v80 = __PAIR128__(v77 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v68, v77), v69) | __CFADD__(v77, __CFADD__(v68, v77) + v69)) + __PAIR128__(v76, v73);
  v191 = __PAIR128__(v77 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v68, v77), v69) | __CFADD__(v77, __CFADD__(v68, v77) + v69)) + __PAIR128__(v76, v73);
  fiat_p256_mul(v201, v190, v194);
  *v188 = 0u;
  v189 = 0u;
  fiat_p256_mul(v188, a6, v199);
  *v186 = 0u;
  v187 = 0u;
  v81 = fiat_p256_mul(v186, a9, v188);
  v84 = v186[0] - v34;
  v85 = v186[1] - (v35 + -((v186[0] - __PAIR128__(v83, v34)) >> 64));
  v58 = __CFADD__(v196[2], -((v186[1] - __PAIR128__(v35 + -((v186[0] - __PAIR128__(v83, v34)) >> 64), v35 + -((v186[0] - __PAIR128__(v83, v34)) >> 64))) >> 64));
  v86 = v196[2] + -((v186[1] - __PAIR128__(v35 + -((v186[0] - __PAIR128__(v83, v34)) >> 64), v35 + -((v186[0] - __PAIR128__(v83, v34)) >> 64))) >> 64);
  v87 = v58;
  v88 = v187 - v86;
  v58 = __CFADD__(v196[3], -((v187 - __PAIR128__(v87, v86)) >> 64));
  v89 = v196[3] + -((v187 - __PAIR128__(v87, v86)) >> 64);
  v90 = v58;
  v91 = *(&v187 + 1) - __PAIR128__(v90, v89);
  *(&v93 + 1) = DWORD2(v91) + __CFADD__(v84, *(&v91 + 1)) + v85;
  *&v93 = v84 + *(&v91 + 1);
  v92 = v93 >> 63;
  *(&v93 + 1) = (__CFADD__(__CFADD__(v84, *(&v91 + 1)), v85) | __CFADD__(DWORD2(v91), __CFADD__(v84, *(&v91 + 1)) + v85)) + v88;
  *&v93 = DWORD2(v91) + __CFADD__(v84, *(&v91 + 1)) + v85;
  v94 = v93 >> 63;
  *(&v93 + 1) = v91 + __CFADD__(__CFADD__(__CFADD__(v84, *(&v91 + 1)), v85) | __CFADD__(DWORD2(v91), __CFADD__(v84, *(&v91 + 1)) + v85), v88) + (*(&v91 + 1) & 0xFFFFFFFF00000001);
  *&v93 = (__CFADD__(__CFADD__(v84, *(&v91 + 1)), v85) | __CFADD__(DWORD2(v91), __CFADD__(v84, *(&v91 + 1)) + v85)) + v88;
  v95 = v93 >> 63;
  v96 = v94 - (1 - __CFADD__(v92, 0xFFFFFFFF00000000));
  v97 = v95 - __PAIR128__(v82, -((v94 - __PAIR128__(v81, (1 - __CFADD__(v92, 0xFFFFFFFF00000000)))) >> 64));
  v98 = v97 + 0xFFFFFFFF;
  if ((v93 < 0) + (*(&v93 + 1) >> 63 < (1 - (__CFADD__(v97, 0xFFFFFFFFLL) + BYTE8(v97)))))
  {
    v99 = 0;
  }

  else
  {
    v99 = -1;
  }

  v182 = ((2 * (v84 + *(&v91 + 1))) | 1) & v99 | (2 * (v84 + *(&v91 + 1))) & *(&v97 + 1);
  v183 = v99 & (v92 - 0x100000000) | *(&v97 + 1) & v92;
  v184 = v99 & v96 | *(&v97 + 1) & v94;
  v185 = v99 & v98 | *(&v97 + 1) & v95;
  v100 = v79 | v78 | v80 | *(&v80 + 1) | v182 | v183 | v184 | v185;
  if (((v172 | -v172) & (v171 | -v171) & ~v100 & (v100 - 1) & 0x8000000000000000) == 0)
  {
    *(&v103 + 1) = v79;
    *&v103 = v78;
    v102 = v103 >> 63;
    *(&v103 + 1) = v80;
    *&v103 = v79;
    v104 = v103 >> 63;
    v105 = v80 >> 63;
    v106 = v105 - __PAIR128__(v98, -((v104 - __PAIR128__(v96, (1 - __CFADD__(v102, 0xFFFFFFFF00000000)))) >> 64));
    if (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + BYTE8(v106)) + (*(&v80 + 1) >> 63 < (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + BYTE8(v106)))))
    {
      v107 = 0;
    }

    else
    {
      v107 = -1;
    }

    if (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + BYTE8(v106)) + (*(&v80 + 1) >> 63 < (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + BYTE8(v106)))))
    {
      v108 = -1;
    }

    else
    {
      v108 = 0;
    }

    v181[0] = v107 & ((2 * v78) | 1) | v108 & (2 * v78);
    v181[1] = v107 & (v102 - 0x100000000) | v108 & v102;
    v181[2] = v107 & (v104 - (1 - __CFADD__(v102, 0xFFFFFFFF00000000))) | v108 & v104;
    v181[3] = v107 & (v106 + 0xFFFFFFFF) | v108 & v105;
    fiat_p256_square(v181, v181);
    v179 = 0u;
    v180 = 0u;
    fiat_p256_mul(&v179, v190, v181);
    *v177 = 0u;
    v178 = 0u;
    fiat_p256_mul(v177, v197, v181);
    fiat_p256_square(v205, &v182);
    v109 = v205[0] - v179;
    v110 = *(&v179 + 1) + -((v205[0] - __PAIR128__(v179, v179)) >> 64);
    v111 = v205[1] - v110;
    v58 = __CFADD__(v180, -((v205[1] - __PAIR128__(v110, v110)) >> 64));
    v112 = v180 + -((v205[1] - __PAIR128__(v110, v110)) >> 64);
    v113 = v58;
    v115 = v206 - v112;
    v114 = (v206 - __PAIR128__(v113, v112)) >> 64;
    v58 = __CFADD__(*(&v180 + 1), -v114);
    v116 = *(&v180 + 1) + -v114;
    v117 = v58;
    if (((*(&v206 + 1) - __PAIR128__(v117, v116)) >> 64))
    {
      v118 = -1;
    }

    else
    {
      v118 = 0;
    }

    v119 = v109 + v118 - v177[0];
    v120 = v118 + __CFADD__(v109, v118) + v111 - __PAIR128__(v177[1] + -((v109 + v118 - __PAIR128__(v115, v177[0])) >> 64), v177[1] + -((v109 + v118 - __PAIR128__(v115, v177[0])) >> 64));
    v122 = ((__CFADD__(__CFADD__(v109, v118), v111) | __CFADD__(v118, __CFADD__(v109, v118) + v111)) + v115 - __PAIR128__(v178 + -BYTE8(v120), v178 + -BYTE8(v120))) >> 64;
    v121 = (__CFADD__(__CFADD__(v109, v118), v111) | __CFADD__(v118, __CFADD__(v109, v118) + v111)) + v115 - (v178 + -BYTE8(v120));
    v123 = ((__PAIR128__(v118 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v109, v118), v111) | __CFADD__(v118, __CFADD__(v109, v118) + v111)) + __PAIR128__(*(&v206 + 1) - v116, v115)) >> 64) - __PAIR128__(*(&v178 + 1) + -v122, *(&v178 + 1) + -v122);
    v124 = v123 + __CFADD__(__CFADD__(__CFADD__(v119, *(&v123 + 1)), v120) | __CFADD__(DWORD2(v123), __CFADD__(v119, *(&v123 + 1)) + v120), v121) + (*(&v123 + 1) & 0xFFFFFFFF00000001);
    LOBYTE(v122) = (v119 + *(&v123 + 1) - __PAIR128__(*(&v123 + 1) & 0xFFFFFFFF00000001, v177[0])) >> 64;
    v125 = v119 + *(&v123 + 1) - v177[0];
    v126 = DWORD2(v123) + __CFADD__(v119, *(&v123 + 1)) + v120 - (v177[1] + -((v119 + *(&v123 + 1) - __PAIR128__(*(&v123 + 1) & 0xFFFFFFFF00000001, v177[0])) >> 64));
    LOBYTE(v122) = (DWORD2(v123) + __CFADD__(v119, *(&v123 + 1)) + v120 - __PAIR128__(v177[1] + -v122, v177[1] + -v122)) >> 64;
    v127 = (__CFADD__(__CFADD__(v119, *(&v123 + 1)), v120) | __CFADD__(DWORD2(v123), __CFADD__(v119, *(&v123 + 1)) + v120)) + v121 - (v178 + -v122);
    LOBYTE(v122) = ((__CFADD__(__CFADD__(v119, *(&v123 + 1)), v120) | __CFADD__(DWORD2(v123), __CFADD__(v119, *(&v123 + 1)) + v120)) + v121 - __PAIR128__(v178 + -v122, v178 + -v122)) >> 64;
    v128 = v124 - (*(&v178 + 1) + -v122);
    if (((v124 - __PAIR128__(*(&v178 + 1) + -v122, *(&v178 + 1) + -v122)) >> 64))
    {
      v129 = -1;
    }

    else
    {
      v129 = 0;
    }

    v130 = v125 + v129;
    v131 = v129 + __CFADD__(v125, v129) + v126;
    v132 = __PAIR128__(v129 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v125, v129), v126) | __CFADD__(v129, __CFADD__(v125, v129) + v126)) + __PAIR128__(v128, v127);
    v134 = v177[0] - (v125 + v129);
    v133 = (v177[0] - __PAIR128__(v128, v125 + v129)) >> 64;
    v135 = v177[1] - __PAIR128__(v131 + -v133, v131 + -v133);
    v136 = (v178 - __PAIR128__(v132 + -BYTE8(v135), v132 + -BYTE8(v135))) >> 64;
    if (((*(&v178 + 1) - __PAIR128__(*(&v132 + 1) + -v136, *(&v132 + 1) + -v136)) >> 64))
    {
      v137 = -1;
    }

    else
    {
      v137 = 0;
    }

    v138 = __CFADD__(v134, v137) + v135;
    v203[0] = v134 + v137;
    v203[1] = v137 + v138;
    v204 = __PAIR128__(v137 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v134, v137), v135) | __CFADD__(v137, v138)) + __PAIR128__(*(&v178 + 1) - (*(&v132 + 1) + -((v178 - __PAIR128__(v132 + -BYTE8(v135), v132 + -BYTE8(v135))) >> 64)), v178 - (v132 + -BYTE8(v135)));
    fiat_p256_mul(v203, v203, &v182);
    *v175 = 0u;
    v176 = 0u;
    fiat_p256_mul(v175, v196, &v179);
    v140 = v203[0] - v175[0];
    v141 = v203[1] - (v175[1] + -((v203[0] - __PAIR128__(v139, v175[0])) >> 64));
    v58 = __CFADD__(v176, -((v203[1] - __PAIR128__(v175[1] + -((v203[0] - __PAIR128__(v139, v175[0])) >> 64), v175[1] + -((v203[0] - __PAIR128__(v139, v175[0])) >> 64))) >> 64));
    v142 = v176 + -((v203[1] - __PAIR128__(v175[1] + -((v203[0] - __PAIR128__(v139, v175[0])) >> 64), v175[1] + -((v203[0] - __PAIR128__(v139, v175[0])) >> 64))) >> 64);
    v143 = v58;
    v144 = (v204 - __PAIR128__(v143, v142)) >> 64;
    v58 = __CFADD__(*(&v176 + 1), -v144);
    v145 = *(&v176 + 1) + -v144;
    v146 = v58;
    v147 = *(&v204 + 1) - __PAIR128__(v146, v145);
    v148 = __CFADD__(v140, *(&v147 + 1)) + v141;
    v149 = __CFADD__(__CFADD__(v140, *(&v147 + 1)), v141) | __CFADD__(DWORD2(v147), v148);
    v150 = v140 + *(&v147 + 1) - __PAIR128__(v175[0], v175[0]);
    v151 = DWORD2(v147) + v148 - __PAIR128__(DWORD2(v147) + v148, v175[1] + -BYTE8(v150));
    v152 = __PAIR128__(*(&v150 + 1) & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v150, *(&v150 + 1)), v151) | __CFADD__(DWORD2(v150), __CFADD__(v150, *(&v150 + 1)) + v151)) + __PAIR128__(v147 + __CFADD__(v149, v204 - v142) + (*(&v147 + 1) & 0xFFFFFFFF00000001) - (*(&v176 + 1) + -((v149 + v204 - v142 - __PAIR128__(v176 + -BYTE8(v151), v176 + -BYTE8(v151))) >> 64)), v149 + v204 - v142 - (v176 + -BYTE8(v151)));
    if (v171)
    {
      v153 = 0;
    }

    else
    {
      v153 = -1;
    }

    if (v171)
    {
      v154 = -1;
    }

    else
    {
      v154 = 0;
    }

    if (v172)
    {
      v155 = 0;
    }

    else
    {
      v155 = -1;
    }

    if (v172)
    {
      v156 = -1;
    }

    else
    {
      v156 = 0;
    }

    v157.i64[0] = v130;
    v157.i64[1] = v131;
    v158 = vdupq_n_s64(v154);
    v159 = vdupq_n_s64(v153);
    v160 = vorrq_s8(vandq_s8(v159, *a8), vandq_s8(v158, v157));
    v161 = vdupq_n_s64(v156);
    v162 = vdupq_n_s64(v155);
    v163 = vorrq_s8(vandq_s8(v162, a4[1]), vandq_s8(v161, vorrq_s8(vandq_s8(v159, a8[1]), vandq_s8(v158, v132))));
    *a1 = vorrq_s8(vandq_s8(v162, *a4), vandq_s8(v161, v160));
    a1[1] = v163;
    v164 = v33->i64[1] & v155 | (a9->i64[1] & v153 | v154 & (DWORD2(v150) + __CFADD__(v150, *(&v150 + 1)) + v151)) & v156;
    v165 = vorrq_s8(vandq_s8(v33[1], v162), vandq_s8(vorrq_s8(vandq_s8(a9[1], v159), vandq_s8(v158, v152)), v161));
    a2->i64[0] = v33->i64[0] & v155 | (a9->i64[0] & v153 | v154 & (v150 + *(&v150 + 1))) & v156;
    a2->i64[1] = v164;
    a2[1] = v165;
    v166 = vorrq_s8(vandq_s8(*a6, v162), vandq_s8(vorrq_s8(vandq_s8(*v201, v158), vandq_s8(*a10, v159)), v161));
    result = vorrq_s8(vandq_s8(a6[1], v162), vandq_s8(vorrq_s8(vandq_s8(v202, v158), vandq_s8(a10[1], v159)), v161));
    *a3 = v166;
    a3[1] = result;
  }

  else
  {

    fiat_p256_point_double(a1, a2, a3, a4, v33, a6);
  }

  return result;
}

uint64_t *fiat_p256_point_double(unint64_t *a1, unint64_t *a2, unint64_t *a3, const unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v253 = *MEMORY[0x277D85DE8];
  *v251 = 0u;
  v252 = 0u;
  memset(v250, 0, sizeof(v250));
  memset(v249, 0, sizeof(v249));
  *v242 = 0u;
  v243 = 0u;
  fiat_p256_square(v251, a6);
  fiat_p256_square(v250, a5);
  fiat_p256_mul(v249, a4, v250);
  v12 = *a4;
  v13 = a4[1];
  v15 = v251[0];
  v14 = v251[1];
  v17 = *a4 - v251[0];
  v18 = __CFADD__(v251[1], -((*a4 - __PAIR128__(v16, v251[0])) >> 64));
  v19 = v251[1] + -((*a4 - __PAIR128__(v16, v251[0])) >> 64);
  v20 = v18;
  v21 = v13 - v19;
  v22 = v252;
  v18 = __CFADD__(v252, -((v13 - __PAIR128__(v20, v19)) >> 64));
  v23 = v252 + -((v13 - __PAIR128__(v20, v19)) >> 64);
  v24 = v18;
  v25 = a4[2];
  v26 = a4[3];
  v27 = v25 - v23;
  v18 = __CFADD__(*(&v252 + 1), -((v25 - __PAIR128__(v24, v23)) >> 64));
  v28 = *(&v252 + 1) + -((v25 - __PAIR128__(v24, v23)) >> 64);
  v29 = v18;
  v30 = v26 - __PAIR128__(v29, v28);
  v31 = __CFADD__(v17, *(&v30 + 1)) + v21;
  v32 = __CFADD__(__CFADD__(v17, *(&v30 + 1)), v21) | __CFADD__(DWORD2(v30), v31);
  v245 = v17 + *(&v30 + 1);
  v246 = DWORD2(v30) + v31;
  v247 = v32 + v27;
  v248 = v30 + __CFADD__(v32, v27) + (*(&v30 + 1) & 0xFFFFFFFF00000001);
  v18 = __CFADD__(v251[0], v12);
  v33 = v251[0] + v12;
  v35 = v18;
  v18 = __CFADD__(v18, v13);
  v34 = v35 + v13;
  v36 = v18;
  v37 = v252 + v25;
  v38 = __CFADD__(v252, v25);
  v39 = *(&v252 + 1) + v26;
  v40 = __CFADD__(*(&v252 + 1), v26);
  v42 = v34 + v251[1];
  v18 = __CFADD__(__CFADD__(v34, v251[1]), v37) | __CFADD__(v36, (__PAIR128__(v37, v34) + v251[1]) >> 64);
  v41 = v36 + ((__PAIR128__(v37, v34) + v251[1]) >> 64);
  v44 = v18 + v39;
  v18 = __CFADD__(v18, v39) | __CFADD__(v38, v44);
  v43 = v38 + v44;
  if (v18)
  {
    v45 = v40 + 1;
  }

  else
  {
    v45 = v40;
  }

  v46 = v42 - __PAIR128__(v26, (1 - __CFADD__(v33, 1)));
  v47 = v43 - -((v41 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46))))) >> 64);
  v48 = -(v45 + (v45 < (1 - (__CFADD__(v47, 0xFFFFFFFFLL) + ((v43 - __PAIR128__(DWORD2(v30), -((v41 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46))))) >> 64))) >> 64)))));
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = -1;
  }

  if (v48)
  {
    v50 = -1;
  }

  else
  {
    v50 = 0;
  }

  v51 = v49 & (v33 + 1) | v50 & v33;
  v52 = v49 & (v46 - 0xFFFFFFFF) | v50 & v42;
  v53 = v49 & (v41 - (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46)))) | v50 & v41;
  v54 = v49 & (v47 + 0xFFFFFFFF) | v50 & v43;
  *(&v56 + 1) = v52;
  *&v56 = v51;
  v55 = v56 >> 63;
  *(&v56 + 1) = v53;
  *&v56 = v52;
  v57 = v56 >> 63;
  *(&v56 + 1) = v54;
  *&v56 = v53;
  v58 = v56 >> 63;
  v59 = v57 - (1 - __CFADD__(v55, 0xFFFFFFFF00000000));
  v60 = v58 - -((v57 - __PAIR128__(v10, (1 - __CFADD__(v55, 0xFFFFFFFF00000000)))) >> 64);
  v61 = 1 - (__CFADD__(v60, 0xFFFFFFFFLL) + ((v58 - __PAIR128__(v11, -((v57 - __PAIR128__(v10, (1 - __CFADD__(v55, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v54 < 0) + (v54 >> 63 < v61))
  {
    v62 = 0;
  }

  else
  {
    v62 = -1;
  }

  if ((v54 < 0) + (v54 >> 63 < v61))
  {
    v63 = -1;
  }

  else
  {
    v63 = 0;
  }

  v64 = ((2 * v51) | 1) & v62 | (2 * v51) & v63;
  v65 = v62 & (v55 - 0x100000000) | v63 & v55;
  v66 = v62 & v59;
  v67 = v62 & v59 | v63 & v57;
  v68 = v63 & v58;
  v69 = v62 & (v60 + 0xFFFFFFFF) | v68;
  v18 = __CFADD__(v64, v51);
  v70 = v64 + v51;
  v72 = v18;
  v18 = __CFADD__(v18, v52);
  v71 = v72 + v52;
  v73 = v18;
  v18 = __CFADD__(v71, v65);
  v74 = v71 + v65;
  v76 = v18;
  v18 = __CFADD__(v18, v53);
  v75 = v76 + v53;
  v18 |= __CFADD__(v73, v75);
  v75 += v73;
  v77 = v18;
  v18 = __CFADD__(v75, v67);
  v78 = v75 + v67;
  v80 = v18;
  v18 = __CFADD__(v18, v54);
  v79 = v80 + v54;
  v18 |= __CFADD__(v77, v79);
  v79 += v77;
  v81 = v18;
  v18 = __CFADD__(v79, v69);
  v82 = v79 + v69;
  if (v18)
  {
    ++v81;
  }

  v83 = v74 - __PAIR128__(v69, (1 - __CFADD__(v70, 1)));
  v84 = v82 - __PAIR128__(v66, -((v78 - __PAIR128__(v68, (1 - (__CFADD__(v83, 0xFFFFFFFF00000001) + BYTE8(v83))))) >> 64));
  if (v81 + (v81 < (1 - (__CFADD__(v84, 0xFFFFFFFFLL) + BYTE8(v84)))))
  {
    v85 = 0;
  }

  else
  {
    v85 = -1;
  }

  v244[0] = v85 & (v70 + 1) | v70 & *(&v84 + 1);
  v244[1] = v85 & (v83 - 0xFFFFFFFF) | *(&v84 + 1) & v74;
  v244[2] = v85 & (v78 - (1 - (__CFADD__(v83, 0xFFFFFFFF00000001) + BYTE8(v83)))) | *(&v84 + 1) & v78;
  v244[3] = v85 & (v84 + 0xFFFFFFFF) | *(&v84 + 1) & v82;
  fiat_p256_mul(v242, &v245, v244);
  fiat_p256_square(a1, v242);
  v86 = *v249 >> 63;
  v87 = *&v249[1] >> 63;
  v88 = *&v249[2] >> 63;
  v92 = v88 - -((v87 - __PAIR128__(v89, (1 - __CFADD__(v86, 0xFFFFFFFF00000000)))) >> 64);
  v91 = (v88 - __PAIR128__(v90, -((v87 - __PAIR128__(v89, (1 - __CFADD__(v86, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v93 = v92 + 0xFFFFFFFF;
  v94 = 1 - (__CFADD__(v92, 0xFFFFFFFFLL) + v91);
  if (((v249[3] & 0x8000000000000000) != 0) + (v249[3] >> 63 < v94))
  {
    v95 = 0;
  }

  else
  {
    v95 = -1;
  }

  if (((v249[3] & 0x8000000000000000) != 0) + (v249[3] >> 63 < v94))
  {
    v96 = -1;
  }

  else
  {
    v96 = 0;
  }

  v97 = v95 & (v86 - 0x100000000) | v96 & v86;
  v98 = v95 & (v87 - (1 - __CFADD__(v86, 0xFFFFFFFF00000000))) | v96 & v87;
  v99 = v95 & v93 | v96 & v88;
  v100 = 2 * (v95 & ((2 * v249[0]) | 1) | v96 & (2 * v249[0]));
  *(&v102 + 1) = v97;
  *&v102 = v95 & ((2 * v249[0]) | 1) | v96 & (2 * v249[0]);
  v101 = v102 >> 63;
  *(&v102 + 1) = v98;
  *&v102 = v97;
  v103 = v102 >> 63;
  *(&v102 + 1) = v99;
  *&v102 = v98;
  v104 = v102 >> 63;
  v106 = v104 - -((v103 - __PAIR128__(v93, (1 - __CFADD__(v101, 0xFFFFFFFF00000000)))) >> 64);
  v105 = (v104 - __PAIR128__(v96, -((v103 - __PAIR128__(v93, (1 - __CFADD__(v101, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v107 = v106 + 0xFFFFFFFF;
  if ((v99 < 0) + (v99 >> 63 < (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + v105))))
  {
    v108 = 0;
  }

  else
  {
    v108 = -1;
  }

  if ((v99 < 0) + (v99 >> 63 < (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + v105))))
  {
    v109 = -1;
  }

  else
  {
    v109 = 0;
  }

  v110 = (v100 | 1) & v108 | v100 & v109;
  *&v238[8] = v108 & (v103 - (1 - __CFADD__(v101, 0xFFFFFFFF00000000))) | v109 & v103;
  *&v238[16] = v108 & v107 | v109 & v104;
  *v238 = v108 & (v101 - 0x100000000) | v109 & v101;
  *(&v112 + 1) = *v238;
  *&v112 = v110;
  v111 = v112 >> 63;
  v113 = *v238 >> 63;
  v114 = *&v238[8] >> 63;
  v115 = v113 - (1 - __CFADD__(v111, 0xFFFFFFFF00000000));
  v117 = v114 - -((v113 - __PAIR128__(v107, (1 - __CFADD__(v111, 0xFFFFFFFF00000000)))) >> 64);
  v116 = (v114 - __PAIR128__(v109, -((v113 - __PAIR128__(v107, (1 - __CFADD__(v111, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v118 = v117 + 0xFFFFFFFF;
  v119 = 1 - (__CFADD__(v117, 0xFFFFFFFFLL) + v116);
  if ((*&v238[16] < 0) + (*&v238[16] >> 63 < v119))
  {
    v120 = 0;
  }

  else
  {
    v120 = -1;
  }

  if ((*&v238[16] < 0) + (*&v238[16] >> 63 < v119))
  {
    v121 = -1;
  }

  else
  {
    v121 = 0;
  }

  v122 = ((2 * v110) | 1) & v120 | (2 * v110) & v121;
  v123 = v120 & (v111 - 0x100000000) | v121 & v111;
  v124 = v120 & v115 | v121 & v113;
  v125 = v120 & v118 | v121 & v114;
  v127 = (*a1 - __PAIR128__(*a1, v122)) >> 64;
  v126 = *a1 - v122;
  LODWORD(v127) = -v127;
  v18 = __CFADD__(v123, v127);
  v128 = v123 + v127;
  v129 = v18;
  v130 = a1[1] - v128;
  v131 = -((a1[1] - __PAIR128__(v129, v128)) >> 64);
  v18 = __CFADD__(v124, v131);
  v132 = v124 + v131;
  v133 = v18;
  v134 = a1[2] - v132;
  v135 = -((a1[2] - __PAIR128__(v133, v132)) >> 64);
  v18 = __CFADD__(v125, v135);
  v136 = v125 + v135;
  v137 = v18;
  v138 = a1[3] - __PAIR128__(v137, v136);
  *a1 = v126 + *(&v138 + 1);
  a1[1] = DWORD2(v138) + __CFADD__(v126, *(&v138 + 1)) + v130;
  a1[2] = (__CFADD__(__CFADD__(v126, *(&v138 + 1)), v130) | __CFADD__(DWORD2(v138), __CFADD__(v126, *(&v138 + 1)) + v130)) + v134;
  a1[3] = v138 + __CFADD__(__CFADD__(__CFADD__(v126, *(&v138 + 1)), v130) | __CFADD__(DWORD2(v138), __CFADD__(v126, *(&v138 + 1)) + v130), v134) + (*(&v138 + 1) & 0xFFFFFFFF00000001);
  v139 = v250[0];
  v237 = v250[1];
  v140 = *v250 + __PAIR128__(v14, v15);
  v141 = v250[3];
  v236 = v250[2];
  v142 = v22 + (__CFADD__(__CFADD__(v139, v15), v237) | __CFADD__(v14, __CFADD__(v139, v15) + v237)) + v250[2];
  v143 = *(&v22 + 1) + (__CFADD__(__CFADD__(__CFADD__(v139, v15), v237) | __CFADD__(v14, __CFADD__(v139, v15) + v237), v236) | __CFADD__(v22, (__CFADD__(__CFADD__(v139, v15), v237) | __CFADD__(v14, __CFADD__(v139, v15) + v237)) + v236)) + v250[3];
  if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(v139, v15), v237) | __CFADD__(v14, __CFADD__(v139, v15) + v237), v236) | __CFADD__(v22, (__CFADD__(__CFADD__(v139, v15), v237) | __CFADD__(v14, __CFADD__(v139, v15) + v237)) + v236), v141) | __CFADD__(*(&v22 + 1), (__CFADD__(__CFADD__(__CFADD__(v139, v15), v237) | __CFADD__(v14, __CFADD__(v139, v15) + v237), v236) | __CFADD__(v22, (__CFADD__(__CFADD__(v139, v15), v237) | __CFADD__(v14, __CFADD__(v139, v15) + v237)) + v236)) + v141))
  {
    v144 = 1;
  }

  else
  {
    v144 = 0;
  }

  v145 = *(&v140 + 1) - __PAIR128__(v115, (1 - __CFADD__(v140, 1)));
  v147 = v143 - -((v142 - __PAIR128__(v118, (1 - (__CFADD__(v145, 0xFFFFFFFF00000001) + BYTE8(v145))))) >> 64);
  v146 = (v143 - __PAIR128__(v121, -((v142 - __PAIR128__(v118, (1 - (__CFADD__(v145, 0xFFFFFFFF00000001) + BYTE8(v145))))) >> 64))) >> 64;
  v148 = v147 + 0xFFFFFFFF;
  v149 = -(v144 + (v144 < (1 - (__CFADD__(v147, 0xFFFFFFFFLL) + v146))));
  v150 = v149 == 0;
  if (v149)
  {
    v151 = 0;
  }

  else
  {
    v151 = -1;
  }

  if (v150)
  {
    v152 = 0;
  }

  else
  {
    v152 = -1;
  }

  v153 = v151 & (v140 + 1) | v152 & v140;
  v154 = v151 & (v145 - 0xFFFFFFFF) | v152 & *(&v140 + 1);
  v155 = v151 & (v142 - (1 - (__CFADD__(v145, 0xFFFFFFFF00000001) + BYTE8(v145)))) | v152 & v142;
  v235 = v151 & v148 | v152 & v143;
  v156 = a6[1];
  v158 = (*a6 + *a5) >> 64;
  v157 = *a6 + *a5;
  v159 = __CFADD__(__CFADD__(*a6, *a5), a5[1]);
  v160 = a5[2];
  v161 = a5[3];
  v162 = a6[2];
  v163 = a6[3];
  v18 = __CFADD__(v162, v160);
  v164 = v162 + v160;
  v165 = v18;
  v18 = __CFADD__(v163, v161);
  v166 = v163 + v161;
  v167 = v18;
  v169 = v158 + v156;
  v18 = __CFADD__(__CFADD__(v158, v156), v164) | __CFADD__(v159, (__PAIR128__(v164, v158) + v156) >> 64);
  v168 = v159 + ((__PAIR128__(v164, v158) + v156) >> 64);
  v170 = v165 + v18 + v166;
  if (__CFADD__(v18, v166) | __CFADD__(v165, v18 + v166))
  {
    v171 = v167 + 1;
  }

  else
  {
    v171 = v167;
  }

  v172 = v169 - __PAIR128__(v167, (1 - __CFADD__(v157, 1)));
  v173 = v170 - __PAIR128__(v152, -((v168 - __PAIR128__(v148, (1 - (__CFADD__(v172, 0xFFFFFFFF00000001) + BYTE8(v172))))) >> 64));
  if (v171 + (v171 < (1 - (__CFADD__(v173, 0xFFFFFFFFLL) + BYTE8(v173)))))
  {
    v174 = 0;
  }

  else
  {
    v174 = -1;
  }

  v245 = v174 & (v157 + 1) | *(&v173 + 1) & v157;
  v246 = v174 & (v172 - 0xFFFFFFFF) | *(&v173 + 1) & v169;
  v247 = v174 & (v168 - (1 - (__CFADD__(v172, 0xFFFFFFFF00000001) + BYTE8(v172)))) | *(&v173 + 1) & v168;
  v248 = v174 & (v173 + 0xFFFFFFFF) | *(&v173 + 1) & v170;
  fiat_p256_square(a3, &v245);
  v178 = *a3 - v153;
  v179 = a3[1] - (v154 + -((*a3 - __PAIR128__(v177, v153)) >> 64));
  v18 = __CFADD__(v155, -((a3[1] - __PAIR128__(v154 + -((*a3 - __PAIR128__(v177, v153)) >> 64), v154 + -((*a3 - __PAIR128__(v177, v153)) >> 64))) >> 64));
  v180 = v155 + -((a3[1] - __PAIR128__(v154 + -((*a3 - __PAIR128__(v177, v153)) >> 64), v154 + -((*a3 - __PAIR128__(v177, v153)) >> 64))) >> 64);
  v181 = v18;
  v182 = a3[2] - v180;
  v18 = __CFADD__(v235, -((a3[2] - __PAIR128__(v181, v180)) >> 64));
  v183 = v235 + -((a3[2] - __PAIR128__(v181, v180)) >> 64);
  v184 = v18;
  v185 = a3[3] - __PAIR128__(v184, v183);
  v186 = __CFADD__(v178, *(&v185 + 1)) + v179;
  v187 = __CFADD__(__CFADD__(v178, *(&v185 + 1)), v179) | __CFADD__(DWORD2(v185), v186);
  *a3 = v178 + *(&v185 + 1);
  a3[1] = DWORD2(v185) + v186;
  a3[2] = v187 + v182;
  a3[3] = v185 + __CFADD__(v187, v182) + (*(&v185 + 1) & 0xFFFFFFFF00000001);
  v188 = a1[1];
  v189 = v110 - *a1;
  v18 = __CFADD__(v188, -((v110 - __PAIR128__(v187 + v182, *a1)) >> 64));
  v190 = v188 + -((v110 - __PAIR128__(v187 + v182, *a1)) >> 64);
  v191 = v18;
  v192 = *v238 - v190;
  v193 = a1[2];
  v194 = a1[3];
  v18 = __CFADD__(v193, -((*v238 - __PAIR128__(v191, v190)) >> 64));
  v195 = v193 + -((*v238 - __PAIR128__(v191, v190)) >> 64);
  v196 = v18;
  v198 = *&v238[8] - v195;
  v197 = (*&v238[8] - __PAIR128__(v196, v195)) >> 64;
  v18 = __CFADD__(v194, -v197);
  v199 = v194 + -v197;
  v200 = v18;
  v201 = *&v238[16] - __PAIR128__(v200, v199);
  v202 = __CFADD__(v189, *(&v201 + 1)) + v192;
  v203 = __CFADD__(__CFADD__(v189, *(&v201 + 1)), v192) | __CFADD__(DWORD2(v201), v202);
  *a2 = v189 + *(&v201 + 1);
  a2[1] = DWORD2(v201) + v202;
  a2[2] = v203 + v198;
  a2[3] = v201 + __CFADD__(v203, v198) + (*(&v201 + 1) & 0xFFFFFFFF00000001);
  *(&v205 + 1) = v237;
  *&v205 = v139;
  v204 = v205 >> 63;
  *(&v205 + 1) = v236;
  *&v205 = v237;
  v206 = v205 >> 63;
  *(&v205 + 1) = v141;
  *&v205 = v236;
  v207 = v205 >> 63;
  v208 = v207 - -((v206 - __PAIR128__(v175, (1 - __CFADD__(v204, 0xFFFFFFFF00000000)))) >> 64);
  v209 = 1 - (__CFADD__(v208, 0xFFFFFFFFLL) + ((v207 - __PAIR128__(v176, -((v206 - __PAIR128__(v175, (1 - __CFADD__(v204, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v141 < 0) + (v141 >> 63 < v209))
  {
    v210 = 0;
  }

  else
  {
    v210 = -1;
  }

  if ((v141 < 0) + (v141 >> 63 < v209))
  {
    v211 = -1;
  }

  else
  {
    v211 = 0;
  }

  v250[0] = v210 & ((2 * v139) | 1) | v211 & (2 * v139);
  v250[1] = v210 & (v204 - 0x100000000) | v211 & v204;
  v250[2] = v210 & (v206 - (1 - __CFADD__(v204, 0xFFFFFFFF00000000))) | v211 & v206;
  v250[3] = v210 & (v208 + 0xFFFFFFFF) | v211 & v207;
  fiat_p256_square(v250, v250);
  result = fiat_p256_mul(a2, v242, a2);
  v213 = *v250 >> 63;
  v214 = *&v250[1] >> 63;
  v215 = *&v250[2] >> 63;
  v218 = v215 - -((v214 - __PAIR128__(v216, (1 - __CFADD__(v213, 0xFFFFFFFF00000000)))) >> 64);
  v219 = 1 - (__CFADD__(v218, 0xFFFFFFFFLL) + ((v215 - __PAIR128__(v217, -((v214 - __PAIR128__(v216, (1 - __CFADD__(v213, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if (((v250[3] & 0x8000000000000000) != 0) + (v250[3] >> 63 < v219))
  {
    v220 = 0;
  }

  else
  {
    v220 = -1;
  }

  if (((v250[3] & 0x8000000000000000) != 0) + (v250[3] >> 63 < v219))
  {
    v221 = -1;
  }

  else
  {
    v221 = 0;
  }

  v222 = v220 & (v213 - 0x100000000) | v221 & v213;
  v223 = v220 & (v214 - (1 - __CFADD__(v213, 0xFFFFFFFF00000000))) | v221 & v214;
  v224 = v220 & (v218 + 0xFFFFFFFF) | v221 & v215;
  v225 = *a2 - (v220 & ((2 * v250[0]) | 1) | v221 & (2 * v250[0]));
  v226 = a2[1] - (v222 + -((*a2 - __PAIR128__(v220 & ((2 * v250[0]) | 1) | v221 & (2 * v250[0]), v220 & ((2 * v250[0]) | 1) | v221 & (2 * v250[0]))) >> 64));
  v227 = -((a2[1] - __PAIR128__(a2[1], v222 + -((*a2 - __PAIR128__(v220 & ((2 * v250[0]) | 1) | v221 & (2 * v250[0]), v220 & ((2 * v250[0]) | 1) | v221 & (2 * v250[0]))) >> 64))) >> 64);
  v18 = __CFADD__(v223, v227);
  v228 = v223 + v227;
  v229 = v18;
  v230 = a2[2] - v228;
  v231 = -((a2[2] - __PAIR128__(v229, v228)) >> 64);
  v18 = __CFADD__(v224, v231);
  v232 = v224 + v231;
  v233 = v18;
  v234 = a2[3] - __PAIR128__(v233, v232);
  *a2 = v225 + *(&v234 + 1);
  a2[1] = DWORD2(v234) + __CFADD__(v225, *(&v234 + 1)) + v226;
  a2[2] = (__CFADD__(__CFADD__(v225, *(&v234 + 1)), v226) | __CFADD__(DWORD2(v234), __CFADD__(v225, *(&v234 + 1)) + v226)) + v230;
  a2[3] = v234 + __CFADD__(__CFADD__(__CFADD__(v225, *(&v234 + 1)), v226) | __CFADD__(DWORD2(v234), __CFADD__(v225, *(&v234 + 1)) + v226), v230) + (*(&v234 + 1) & 0xFFFFFFFF00000001);
  return result;
}

uint64_t fiat_p256_select_point_affine(uint64_t a1, void *a2, const unint64_t (*a3)[2][4], unint64_t (*a4)[4])
{
  *&(*a3)[2][0] = 0u;
  *&(*a3)[2][2] = 0u;
  *&(*a3)[1][0] = 0u;
  *&(*a3)[1][2] = 0u;
  *a3 = 0u;
  *&(*a3)[0][2] = 0u;
  v4 = a1 - 1;
  v5 = a1 != 0;
  if (a1 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & *a2;
  v8 = a2[1] & v6;
  v9 = a2[2] & v6;
  v10 = a2[3] & v6;
  (*a3)[0][0] = v7;
  (*a3)[0][1] = v8;
  (*a3)[0][2] = v9;
  (*a3)[0][3] = v10;
  v11 = a2[4] & v6;
  v12 = a2[5] & v6;
  v13 = a2[6] & v6;
  v14 = a2[7] & v6;
  (*a3)[1][0] = v11;
  (*a3)[1][1] = v12;
  (*a3)[1][2] = v13;
  (*a3)[1][3] = v14;
  if (a1 == 2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if (v4 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17 = v15 & a2[8] | v16 & v7;
  v18 = a2[9] & v15 | v16 & v8;
  v19 = a2[10] & v15 | v16 & v9;
  v20 = a2[11] & v15 | v16 & v10;
  (*a3)[0][0] = v17;
  (*a3)[0][1] = v18;
  (*a3)[0][2] = v19;
  (*a3)[0][3] = v20;
  v21 = a2[12] & v15 | v16 & v11;
  v22 = a2[13] & v15 | v16 & v12;
  v23 = a2[14] & v15 | v16 & v13;
  v24 = a2[15] & v15 | v16 & v14;
  (*a3)[1][0] = v21;
  (*a3)[1][1] = v22;
  (*a3)[1][2] = v23;
  (*a3)[1][3] = v24;
  if (v4 == 2)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  if (v4 == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = -1;
  }

  v27 = v25 & a2[16] | v26 & v17;
  v28 = a2[17] & v25 | v26 & v18;
  v29 = a2[18] & v25 | v26 & v19;
  v30 = a2[19] & v25 | v26 & v20;
  (*a3)[0][0] = v27;
  (*a3)[0][1] = v28;
  (*a3)[0][2] = v29;
  (*a3)[0][3] = v30;
  v31 = a2[20] & v25 | v26 & v21;
  v32 = a2[21] & v25 | v26 & v22;
  v33 = a2[22] & v25 | v26 & v23;
  v34 = a2[23] & v25 | v26 & v24;
  (*a3)[1][0] = v31;
  (*a3)[1][1] = v32;
  (*a3)[1][2] = v33;
  (*a3)[1][3] = v34;
  if (v4 == 3)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  if (v4 == 3)
  {
    v36 = 0;
  }

  else
  {
    v36 = -1;
  }

  v37 = v35 & a2[24] | v36 & v27;
  v38 = a2[25] & v35 | v36 & v28;
  v39 = a2[26] & v35 | v36 & v29;
  v40 = a2[27] & v35 | v36 & v30;
  (*a3)[0][0] = v37;
  (*a3)[0][1] = v38;
  (*a3)[0][2] = v39;
  (*a3)[0][3] = v40;
  v41 = a2[28] & v35 | v36 & v31;
  v42 = a2[29] & v35 | v36 & v32;
  v43 = a2[30] & v35 | v36 & v33;
  v44 = a2[31] & v35 | v36 & v34;
  (*a3)[1][0] = v41;
  (*a3)[1][1] = v42;
  (*a3)[1][2] = v43;
  (*a3)[1][3] = v44;
  if (v4 == 4)
  {
    v45 = -1;
  }

  else
  {
    v45 = 0;
  }

  if (v4 == 4)
  {
    v46 = 0;
  }

  else
  {
    v46 = -1;
  }

  v47 = v45 & a2[32] | v46 & v37;
  v48 = a2[33] & v45 | v46 & v38;
  v49 = a2[34] & v45 | v46 & v39;
  v50 = a2[35] & v45 | v46 & v40;
  (*a3)[0][0] = v47;
  (*a3)[0][1] = v48;
  (*a3)[0][2] = v49;
  (*a3)[0][3] = v50;
  v51 = a2[36] & v45 | v46 & v41;
  v52 = a2[37] & v45 | v46 & v42;
  v53 = a2[38] & v45 | v46 & v43;
  v54 = a2[39] & v45 | v46 & v44;
  (*a3)[1][0] = v51;
  (*a3)[1][1] = v52;
  (*a3)[1][2] = v53;
  (*a3)[1][3] = v54;
  if (v4 == 5)
  {
    v55 = -1;
  }

  else
  {
    v55 = 0;
  }

  if (v4 == 5)
  {
    v56 = 0;
  }

  else
  {
    v56 = -1;
  }

  v57 = v55 & a2[40] | v56 & v47;
  v58 = a2[41] & v55 | v56 & v48;
  v59 = a2[42] & v55 | v56 & v49;
  v60 = a2[43] & v55 | v56 & v50;
  (*a3)[0][0] = v57;
  (*a3)[0][1] = v58;
  (*a3)[0][2] = v59;
  (*a3)[0][3] = v60;
  v61 = a2[44] & v55 | v56 & v51;
  v62 = a2[45] & v55 | v56 & v52;
  v63 = a2[46] & v55 | v56 & v53;
  v64 = a2[47] & v55 | v56 & v54;
  (*a3)[1][0] = v61;
  (*a3)[1][1] = v62;
  (*a3)[1][2] = v63;
  (*a3)[1][3] = v64;
  if (v4 == 6)
  {
    v65 = -1;
  }

  else
  {
    v65 = 0;
  }

  if (v4 == 6)
  {
    v66 = 0;
  }

  else
  {
    v66 = -1;
  }

  v67 = v65 & a2[48] | v66 & v57;
  v68 = a2[49] & v65 | v66 & v58;
  v69 = a2[50] & v65 | v66 & v59;
  v70 = a2[51] & v65 | v66 & v60;
  (*a3)[0][0] = v67;
  (*a3)[0][1] = v68;
  (*a3)[0][2] = v69;
  (*a3)[0][3] = v70;
  v71 = a2[52] & v65 | v66 & v61;
  v72 = a2[53] & v65 | v66 & v62;
  v73 = a2[54] & v65 | v66 & v63;
  v74 = a2[55] & v65 | v66 & v64;
  (*a3)[1][0] = v71;
  (*a3)[1][1] = v72;
  (*a3)[1][2] = v73;
  (*a3)[1][3] = v74;
  if (v4 == 7)
  {
    v75 = -1;
  }

  else
  {
    v75 = 0;
  }

  if (v4 == 7)
  {
    v76 = 0;
  }

  else
  {
    v76 = -1;
  }

  v77 = v75 & a2[56] | v76 & v67;
  v78 = a2[57] & v75 | v76 & v68;
  v79 = a2[58] & v75 | v76 & v69;
  v80 = a2[59] & v75 | v76 & v70;
  (*a3)[0][0] = v77;
  (*a3)[0][1] = v78;
  (*a3)[0][2] = v79;
  (*a3)[0][3] = v80;
  v81 = a2[60] & v75 | v76 & v71;
  v82 = a2[61] & v75 | v76 & v72;
  v83 = a2[62] & v75 | v76 & v73;
  v84 = a2[63] & v75 | v76 & v74;
  (*a3)[1][0] = v81;
  (*a3)[1][1] = v82;
  (*a3)[1][2] = v83;
  (*a3)[1][3] = v84;
  if (v4 == 8)
  {
    v85 = -1;
  }

  else
  {
    v85 = 0;
  }

  if (v4 == 8)
  {
    v86 = 0;
  }

  else
  {
    v86 = -1;
  }

  v87 = v85 & a2[64] | v86 & v77;
  v88 = a2[65] & v85 | v86 & v78;
  v89 = a2[66] & v85 | v86 & v79;
  v90 = a2[67] & v85 | v86 & v80;
  (*a3)[0][0] = v87;
  (*a3)[0][1] = v88;
  (*a3)[0][2] = v89;
  (*a3)[0][3] = v90;
  v91 = a2[68] & v85 | v86 & v81;
  v92 = a2[69] & v85 | v86 & v82;
  v93 = a2[70] & v85 | v86 & v83;
  v94 = a2[71] & v85 | v86 & v84;
  (*a3)[1][0] = v91;
  (*a3)[1][1] = v92;
  (*a3)[1][2] = v93;
  (*a3)[1][3] = v94;
  if (v4 == 9)
  {
    v95 = -1;
  }

  else
  {
    v95 = 0;
  }

  if (v4 == 9)
  {
    v96 = 0;
  }

  else
  {
    v96 = -1;
  }

  v97 = v95 & a2[72] | v96 & v87;
  v98 = a2[73] & v95 | v96 & v88;
  v99 = a2[74] & v95 | v96 & v89;
  v100 = a2[75] & v95 | v96 & v90;
  (*a3)[0][0] = v97;
  (*a3)[0][1] = v98;
  (*a3)[0][2] = v99;
  (*a3)[0][3] = v100;
  v101 = a2[76] & v95 | v96 & v91;
  v102 = a2[77] & v95 | v96 & v92;
  v103 = a2[78] & v95 | v96 & v93;
  v104 = a2[79] & v95 | v96 & v94;
  (*a3)[1][0] = v101;
  (*a3)[1][1] = v102;
  (*a3)[1][2] = v103;
  (*a3)[1][3] = v104;
  if (v4 == 10)
  {
    v105 = -1;
  }

  else
  {
    v105 = 0;
  }

  if (v4 == 10)
  {
    v106 = 0;
  }

  else
  {
    v106 = -1;
  }

  v107 = v105 & a2[80] | v106 & v97;
  v108 = a2[81] & v105 | v106 & v98;
  v109 = a2[82] & v105 | v106 & v99;
  v110 = a2[83] & v105 | v106 & v100;
  (*a3)[0][0] = v107;
  (*a3)[0][1] = v108;
  (*a3)[0][2] = v109;
  (*a3)[0][3] = v110;
  v111 = a2[84] & v105 | v106 & v101;
  v112 = a2[85] & v105 | v106 & v102;
  v113 = a2[86] & v105 | v106 & v103;
  v114 = a2[87] & v105 | v106 & v104;
  (*a3)[1][0] = v111;
  (*a3)[1][1] = v112;
  (*a3)[1][2] = v113;
  (*a3)[1][3] = v114;
  if (v4 == 11)
  {
    v115 = -1;
  }

  else
  {
    v115 = 0;
  }

  if (v4 == 11)
  {
    v116 = 0;
  }

  else
  {
    v116 = -1;
  }

  v117 = v115 & a2[88] | v116 & v107;
  v118 = a2[89] & v115 | v116 & v108;
  v119 = a2[90] & v115 | v116 & v109;
  v120 = a2[91] & v115 | v116 & v110;
  (*a3)[0][0] = v117;
  (*a3)[0][1] = v118;
  (*a3)[0][2] = v119;
  (*a3)[0][3] = v120;
  v121 = a2[92] & v115 | v116 & v111;
  v122 = a2[93] & v115 | v116 & v112;
  v123 = a2[94] & v115 | v116 & v113;
  v124 = a2[95] & v115 | v116 & v114;
  (*a3)[1][0] = v121;
  (*a3)[1][1] = v122;
  (*a3)[1][2] = v123;
  (*a3)[1][3] = v124;
  if (v4 == 12)
  {
    v125 = -1;
  }

  else
  {
    v125 = 0;
  }

  if (v4 == 12)
  {
    v126 = 0;
  }

  else
  {
    v126 = -1;
  }

  v127 = v125 & a2[96] | v126 & v117;
  v128 = a2[97] & v125 | v126 & v118;
  v129 = a2[98] & v125 | v126 & v119;
  v130 = a2[99] & v125 | v126 & v120;
  (*a3)[0][0] = v127;
  (*a3)[0][1] = v128;
  (*a3)[0][2] = v129;
  (*a3)[0][3] = v130;
  v131 = a2[100] & v125 | v126 & v121;
  v132 = a2[101] & v125 | v126 & v122;
  v133 = a2[102] & v125 | v126 & v123;
  v134 = a2[103] & v125 | v126 & v124;
  (*a3)[1][0] = v131;
  (*a3)[1][1] = v132;
  (*a3)[1][2] = v133;
  (*a3)[1][3] = v134;
  if (v4 == 13)
  {
    v135 = -1;
  }

  else
  {
    v135 = 0;
  }

  if (v4 == 13)
  {
    v136 = 0;
  }

  else
  {
    v136 = -1;
  }

  v137 = v135 & a2[104] | v136 & v127;
  v138 = a2[105] & v135 | v136 & v128;
  v139 = a2[106] & v135 | v136 & v129;
  v140 = a2[107] & v135 | v136 & v130;
  (*a3)[0][0] = v137;
  (*a3)[0][1] = v138;
  (*a3)[0][2] = v139;
  (*a3)[0][3] = v140;
  v141 = a2[108] & v135 | v136 & v131;
  v142 = a2[109] & v135 | v136 & v132;
  v143 = a2[110] & v135 | v136 & v133;
  v144 = a2[111] & v135 | v136 & v134;
  (*a3)[1][0] = v141;
  (*a3)[1][1] = v142;
  (*a3)[1][2] = v143;
  (*a3)[1][3] = v144;
  v145 = v4 == 14;
  if (v4 == 14)
  {
    v146 = -1;
  }

  else
  {
    v146 = 0;
  }

  if (v145)
  {
    v147 = 0;
  }

  else
  {
    v147 = -1;
  }

  v148 = a2[113] & v146 | v147 & v138;
  v149 = a2[114] & v146 | v147 & v139;
  result = a2[115] & v146;
  (*a3)[0][0] = v146 & a2[112] | v147 & v137;
  (*a3)[0][1] = v148;
  (*a3)[0][2] = v149;
  (*a3)[0][3] = result | v147 & v140;
  v151 = a2[116] & v146 | v147 & v141;
  v152 = a2[117] & v146 | v147 & v142;
  v153 = a2[118] & v146 | v147 & v143;
  v154 = a2[119];
  (*a3)[1][0] = v151;
  (*a3)[1][1] = v152;
  (*a3)[1][2] = v153;
  (*a3)[1][3] = v154 & v146 | v147 & v144;
  v155 = v5 << 63 >> 63;
  v156 = ~v155 & (*a3)[2][0] | v155 & 1;
  v157 = (*a3)[2][1] & ~v155 | v155 & 0xFFFFFFFF00000000;
  v158 = (*a3)[2][2] & ~v155 | v155;
  v159 = (*a3)[2][3] & ~v155 | v155 & 0xFFFFFFFE;
  (*a3)[2][0] = v156;
  (*a3)[2][1] = v157;
  (*a3)[2][2] = v158;
  (*a3)[2][3] = v159;
  return result;
}

__n128 mlkem::anonymous namespace::mlkem_generate_key_external_seed_no_self_test<3>(char *a1, uint64_t a2, uint64_t a3)
{
  v155 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 16);
  v137[0] = *a3;
  v137[1] = v6;
  v138 = 3;
  v129 = 0;
  v131 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v116.i64[0] = 1;
  v116.i64[1] = 64;
  v130 = 72;
  BORINGSSL_keccak_absorb(&v116, v137, 0x21uLL);
  BORINGSSL_keccak_squeeze(v116.i32, __dst, 0x40uLL);
  v7 = __dst[1];
  *(a2 + 1536) = __dst[0];
  *(a2 + 1552) = v7;
  v116 = v135;
  v117 = v136;
  LOBYTE(v118) = 0;
  LOBYTE(v118) = 1;
  LOBYTE(v118) = 2;
  v139 = v135;
  v140 = v136;
  LOBYTE(v141) = 3;
  LOBYTE(v141) = 4;
  LOBYTE(v141) = 5;
  bzero(a2, 0x600uLL);
  v8 = 0;
  v9 = (a2 + 16);
  v10 = a2 + 3136;
  v11 = 1600;
  v12 = vdupq_n_s32(0x13AFu);
  v13.i64[0] = 0xF2000000F2;
  v13.i64[1] = 0xF2000000F2;
  v14.i64[0] = 0xD000D000D000D00;
  v14.i64[1] = 0xD000D000D000D00;
  v15 = a2;
  do
  {
    v16 = 0;
    do
    {
      v18 = (a2 + v11 + v16 * 2);
      v156 = vld2q_s16(v18);
      v19 = (a2 + v16 * 2 + 6208);
      v159 = vld2q_s16(v19);
      v20 = vmull_u16(*v159.val[1].i8, *v156.val[1].i8);
      v21 = vmull_high_u16(v159.val[1], v156.val[1]);
      v22 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v20.i8, *v12.i8), 0x18uLL), vmull_high_u32(v20, v12), 0x18uLL), v13), *v159.val[1].i8, *v156.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v21.i8, *v12.i8), 0x18uLL), vmull_high_u32(v21, v12), 0x18uLL), v13), v159.val[1], v156.val[1]));
      v23 = vaddq_s16(v22, v14);
      v24 = vorrq_s8(vandq_s8(vcltzq_s16(v23), v22), vmaxq_s16(v23, 0));
      v25 = *v17++;
      v26 = vmull_high_u16(v24, v25);
      v27 = vmlal_u16(vmull_u16(*v24.i8, *v25.i8), *v159.val[0].i8, *v156.val[0].i8);
      v28 = vmlal_high_u16(v26, v159.val[0], v156.val[0]);
      v29 = vuzp1q_s16(vmlaq_s32(v27, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v27.i8, *v12.i8), 0x18uLL), vmull_high_u32(v27, v12), 0x18uLL), v13), vmlaq_s32(v28, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v28.i8, *v12.i8), 0x18uLL), vmull_high_u32(v28, v12), 0x18uLL), v13));
      v30 = vaddq_s16(v29, v14);
      v31 = vmlal_u16(vmull_u16(*v159.val[1].i8, *v156.val[0].i8), *v156.val[1].i8, *v159.val[0].i8);
      v32 = vmlal_high_u16(vmull_high_u16(v159.val[1], v156.val[0]), v156.val[1], v159.val[0]);
      v33 = vuzp1q_s16(vmlaq_s32(v31, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v31.i8, *v12.i8), 0x18uLL), vmull_high_u32(v31, v12), 0x18uLL), v13), vmlaq_s32(v32, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v32.i8, *v12.i8), 0x18uLL), vmull_high_u32(v32, v12), 0x18uLL), v13));
      v34 = vorrq_s8(vandq_s8(vcltzq_s16(v30), v29), vmaxq_s16(v30, 0));
      v156.val[1] = vaddq_s16(v33, v14);
      v156.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v156.val[1]), v33), vmaxq_s16(v156.val[1], 0));
      v35 = &v139.i16[v16];
      vst2q_s16(v35, v156);
      v16 += 16;
    }

    while (v16 != 256);
    v36 = 0;
    v37 = v9;
    do
    {
      v38 = vaddq_s16(*(&v139 + v36), v37[-1]);
      v39 = vaddq_s16(*(&v139 + v36 + 16), *v37);
      v40 = vaddq_s16(v38, v14);
      v41 = vaddq_s16(v39, v14);
      v37[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v40), v38), vmaxq_s16(v40, 0));
      *v37 = vorrq_s8(vandq_s8(vcltzq_s16(v41), v39), vmaxq_s16(v41, 0));
      v37 += 2;
      v36 += 32;
    }

    while (v36 != 512);
    v42 = 0;
    do
    {
      v44 = (v10 + v42 * 2);
      v157 = vld2q_s16(v44);
      v45 = (a2 + 6720 + v42 * 2);
      v160 = vld2q_s16(v45);
      v46 = vmull_u16(*v160.val[1].i8, *v157.val[1].i8);
      v47 = vmull_high_u16(v160.val[1], v157.val[1]);
      v48 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v46.i8, *v12.i8), 0x18uLL), vmull_high_u32(v46, v12), 0x18uLL), v13), *v160.val[1].i8, *v157.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v47.i8, *v12.i8), 0x18uLL), vmull_high_u32(v47, v12), 0x18uLL), v13), v160.val[1], v157.val[1]));
      v49 = vaddq_s16(v48, v14);
      v50 = vorrq_s8(vandq_s8(vcltzq_s16(v49), v48), vmaxq_s16(v49, 0));
      v51 = *v43++;
      v52 = vmull_high_u16(v50, v51);
      v53 = vmlal_u16(vmull_u16(*v50.i8, *v51.i8), *v160.val[0].i8, *v157.val[0].i8);
      v54 = vmlal_high_u16(v52, v160.val[0], v157.val[0]);
      v55 = vuzp1q_s16(vmlaq_s32(v53, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v53.i8, *v12.i8), 0x18uLL), vmull_high_u32(v53, v12), 0x18uLL), v13), vmlaq_s32(v54, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v54.i8, *v12.i8), 0x18uLL), vmull_high_u32(v54, v12), 0x18uLL), v13));
      v56 = vaddq_s16(v55, v14);
      v57 = vmlal_u16(vmull_u16(*v160.val[1].i8, *v157.val[0].i8), *v157.val[1].i8, *v160.val[0].i8);
      v58 = vmlal_high_u16(vmull_high_u16(v160.val[1], v157.val[0]), v157.val[1], v160.val[0]);
      v59 = vuzp1q_s16(vmlaq_s32(v57, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v57.i8, *v12.i8), 0x18uLL), vmull_high_u32(v57, v12), 0x18uLL), v13), vmlaq_s32(v58, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v58.i8, *v12.i8), 0x18uLL), vmull_high_u32(v58, v12), 0x18uLL), v13));
      v60 = vorrq_s8(vandq_s8(vcltzq_s16(v56), v55), vmaxq_s16(v56, 0));
      v157.val[1] = vaddq_s16(v59, v14);
      v157.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v157.val[1]), v59), vmaxq_s16(v157.val[1], 0));
      v61 = &v139.i16[v42];
      vst2q_s16(v61, v157);
      v42 += 16;
    }

    while (v42 != 256);
    for (i = 0; i != 32; i += 2)
    {
      v63 = vaddq_s16(*(&v139 + i * 16), *(v15 + i * 16));
      v64 = vaddq_s16(*(&v139 + i * 16 + 16), v9[i]);
      v65 = vaddq_s16(v63, v14);
      v66 = vaddq_s16(v64, v14);
      *(v15 + i * 16) = vorrq_s8(vandq_s8(vcltzq_s16(v65), v63), vmaxq_s16(v65, 0));
      v9[i] = vorrq_s8(vandq_s8(vcltzq_s16(v66), v64), vmaxq_s16(v66, 0));
    }

    v67 = 0;
    do
    {
      v69 = (a2 + 7232 + v67 * 2);
      v158 = vld2q_s16(v69);
      v70 = (v15 + v67 * 2 + 4672);
      v161 = vld2q_s16(v70);
      v71 = vmull_u16(*v158.val[1].i8, *v161.val[1].i8);
      v72 = vmull_high_u16(v158.val[1], v161.val[1]);
      v73 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v71.i8, *v12.i8), 0x18uLL), vmull_high_u32(v71, v12), 0x18uLL), v13), *v158.val[1].i8, *v161.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v72.i8, *v12.i8), 0x18uLL), vmull_high_u32(v72, v12), 0x18uLL), v13), v158.val[1], v161.val[1]));
      v74 = vaddq_s16(v73, v14);
      v75 = vorrq_s8(vandq_s8(vcltzq_s16(v74), v73), vmaxq_s16(v74, 0));
      v76 = *v68++;
      v77 = vmull_high_u16(v75, v76);
      v78 = vmlal_u16(vmull_u16(*v75.i8, *v76.i8), *v158.val[0].i8, *v161.val[0].i8);
      v79 = vmlal_high_u16(v77, v158.val[0], v161.val[0]);
      v80 = vuzp1q_s16(vmlaq_s32(v78, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v78.i8, *v12.i8), 0x18uLL), vmull_high_u32(v78, v12), 0x18uLL), v13), vmlaq_s32(v79, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v79.i8, *v12.i8), 0x18uLL), vmull_high_u32(v79, v12), 0x18uLL), v13));
      v81 = vaddq_s16(v80, v14);
      v82 = vmlal_u16(vmull_u16(*v158.val[1].i8, *v161.val[0].i8), *v161.val[1].i8, *v158.val[0].i8);
      v83 = vmlal_high_u16(vmull_high_u16(v158.val[1], v161.val[0]), v161.val[1], v158.val[0]);
      v84 = vuzp1q_s16(vmlaq_s32(v82, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v82.i8, *v12.i8), 0x18uLL), vmull_high_u32(v82, v12), 0x18uLL), v13), vmlaq_s32(v83, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v83.i8, *v12.i8), 0x18uLL), vmull_high_u32(v83, v12), 0x18uLL), v13));
      v85 = vorrq_s8(vandq_s8(vcltzq_s16(v81), v80), vmaxq_s16(v81, 0));
      v158.val[1] = vaddq_s16(v84, v14);
      v158.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v158.val[1]), v84), vmaxq_s16(v158.val[1], 0));
      v86 = &v139.i16[v67];
      vst2q_s16(v86, v158);
      v67 += 16;
    }

    while (v67 != 256);
    for (j = 0; j != 32; j += 2)
    {
      v88 = vaddq_s16(*(&v139 + j * 16), *(v15 + j * 16));
      v89 = vaddq_s16(*(&v139 + j * 16 + 16), v9[j]);
      v90 = vaddq_s16(v88, v14);
      v91 = vaddq_s16(v89, v14);
      *(v15 + j * 16) = vorrq_s8(vandq_s8(vcltzq_s16(v90), v88), vmaxq_s16(v90, 0));
      v9[j] = vorrq_s8(vandq_s8(vcltzq_s16(v91), v89), vmaxq_s16(v91, 0));
    }

    ++v8;
    v11 += 512;
    v9 += 32;
    v10 += 512;
    v15 += 512;
  }

  while (v8 != 3);
  v92 = 0;
  v93.i64[0] = 0xD000D000D000D00;
  v93.i64[1] = 0xD000D000D000D00;
  do
  {
    v94 = (a2 + v92);
    v95 = vaddq_s16(*(&v116 + v92), *(a2 + v92));
    v96 = vaddq_s16(*(&v116 + v92 + 16), *(a2 + v92 + 16));
    v97 = vaddq_s16(v95, v93);
    v98 = vaddq_s16(v96, v93);
    *v94 = vorrq_s8(vandq_s8(vcltzq_s16(v97), v95), vmaxq_s16(v97, 0));
    v94[1] = vorrq_s8(vandq_s8(vcltzq_s16(v98), v96), vmaxq_s16(v98, 0));
    v92 += 32;
  }

  while (v92 != 512);
  v99.i64[0] = 0xD000D000D000D00;
  v99.i64[1] = 0xD000D000D000D00;
  do
  {
    v100 = (a2 + v92);
    v101 = vaddq_s16(*(&v116 + v92), *(a2 + v92));
    v102 = vaddq_s16(*(&v116 + v92 + 16), *(a2 + v92 + 16));
    v103 = vaddq_s16(v101, v99);
    v104 = vaddq_s16(v102, v99);
    *v100 = vorrq_s8(vandq_s8(vcltzq_s16(v103), v101), vmaxq_s16(v103, 0));
    v100[1] = vorrq_s8(vandq_s8(vcltzq_s16(v104), v102), vmaxq_s16(v104, 0));
    v92 += 32;
  }

  while (v92 != 1024);
  v105.i64[0] = 0xD000D000D000D00;
  v105.i64[1] = 0xD000D000D000D00;
  do
  {
    v106 = (a2 + v92);
    v107 = vaddq_s16(*(&v116 + v92), *(a2 + v92));
    v108 = vaddq_s16(*(&v116 + v92 + 16), *(a2 + v92 + 16));
    v109 = vaddq_s16(v107, v105);
    v110 = vaddq_s16(v108, v105);
    *v106 = vorrq_s8(vandq_s8(vcltzq_s16(v109), v107), vmaxq_s16(v109, 0));
    v106[1] = vorrq_s8(vandq_s8(vcltzq_s16(v110), v108), vmaxq_s16(v110, 0));
    v92 += 32;
  }

  while (v92 != 1536);
  v114[0] = 0u;
  v114[1] = a1;
  v114[2] = 0x4A0uLL;
  v115 = 0;
  {
    abort();
  }

  v111 = v139.i64[0];
  v112 = *(a2 + 1552);
  *v139.i64[0] = *(a2 + 1536);
  *(v111 + 16) = v112;
  v152 = 0;
  v154 = 0u;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139.i64[0] = 0;
  v139.i64[1] = 32;
  v153 = 136;
  BORINGSSL_keccak_absorb(&v139, a1, 0x4A0uLL);
  BORINGSSL_keccak_squeeze(v139.i32, (a2 + 1568), 0x20uLL);
  result = *(a3 + 32);
  *(a2 + 7760) = *(a3 + 48);
  *(a2 + 7744) = result;
  return result;
}

int *mlkem::anonymous namespace::matrix_expand<3>(uint64_t a1, _OWORD *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v84[0] = *a2;
  v84[1] = v3;
  v85 = 0;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v4 = 0;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v5 = 0;
    do
    {
      v6 = __dst[v5 + 1];
      v7 = __dst[v5] | ((v6 & 0xF) << 8);
      v8 = __dst[v5 + 2];
      if (v7 <= 0xD00)
      {
        *(a1 + 2 * v4++) = v7;
      }

      v9 = (v6 >> 4) | (16 * v8);
      if (v9 <= 0xD00 && v4 <= 255)
      {
        *(a1 + 2 * v4++) = v9;
      }

      if (v5 > 0xA4)
      {
        break;
      }

      v5 += 3;
    }

    while (v4 < 256);
  }

  while (v4 < 256);
  v85 = 256;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v10 = 0;
  v11 = a1 + 512;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v12 = 0;
    do
    {
      v13 = __dst[v12 + 1];
      v14 = __dst[v12] | ((v13 & 0xF) << 8);
      v15 = __dst[v12 + 2];
      if (v14 <= 0xD00)
      {
        *(v11 + 2 * v10++) = v14;
      }

      v16 = (v13 >> 4) | (16 * v15);
      if (v16 <= 0xD00 && v10 <= 255)
      {
        *(v11 + 2 * v10++) = v16;
      }

      if (v12 > 0xA4)
      {
        break;
      }

      v12 += 3;
    }

    while (v10 < 256);
  }

  while (v10 < 256);
  v85 = 512;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v17 = 0;
  v18 = a1 + 1024;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v19 = 0;
    do
    {
      v20 = __dst[v19 + 1];
      v21 = __dst[v19] | ((v20 & 0xF) << 8);
      v22 = __dst[v19 + 2];
      if (v21 <= 0xD00)
      {
        *(v18 + 2 * v17++) = v21;
      }

      v23 = (v20 >> 4) | (16 * v22);
      if (v23 <= 0xD00 && v17 <= 255)
      {
        *(v18 + 2 * v17++) = v23;
      }

      if (v19 > 0xA4)
      {
        break;
      }

      v19 += 3;
    }

    while (v17 < 256);
  }

  while (v17 < 256);
  v85 = 1;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v24 = 0;
  v25 = a1 + 1536;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v26 = 0;
    do
    {
      v27 = __dst[v26 + 1];
      v28 = __dst[v26] | ((v27 & 0xF) << 8);
      v29 = __dst[v26 + 2];
      if (v28 <= 0xD00)
      {
        *(v25 + 2 * v24++) = v28;
      }

      v30 = (v27 >> 4) | (16 * v29);
      if (v30 <= 0xD00 && v24 <= 255)
      {
        *(v25 + 2 * v24++) = v30;
      }

      if (v26 > 0xA4)
      {
        break;
      }

      v26 += 3;
    }

    while (v24 < 256);
  }

  while (v24 < 256);
  v85 = 257;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v31 = 0;
  v32 = a1 + 2048;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v33 = 0;
    do
    {
      v34 = __dst[v33 + 1];
      v35 = __dst[v33] | ((v34 & 0xF) << 8);
      v36 = __dst[v33 + 2];
      if (v35 <= 0xD00)
      {
        *(v32 + 2 * v31++) = v35;
      }

      v37 = (v34 >> 4) | (16 * v36);
      if (v37 <= 0xD00 && v31 <= 255)
      {
        *(v32 + 2 * v31++) = v37;
      }

      if (v33 > 0xA4)
      {
        break;
      }

      v33 += 3;
    }

    while (v31 < 256);
  }

  while (v31 < 256);
  v85 = 513;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v38 = 0;
  v39 = a1 + 2560;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v40 = 0;
    do
    {
      v41 = __dst[v40 + 1];
      v42 = __dst[v40] | ((v41 & 0xF) << 8);
      v43 = __dst[v40 + 2];
      if (v42 <= 0xD00)
      {
        *(v39 + 2 * v38++) = v42;
      }

      v44 = (v41 >> 4) | (16 * v43);
      if (v44 <= 0xD00 && v38 <= 255)
      {
        *(v39 + 2 * v38++) = v44;
      }

      if (v40 > 0xA4)
      {
        break;
      }

      v40 += 3;
    }

    while (v38 < 256);
  }

  while (v38 < 256);
  v85 = 2;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v45 = 0;
  v46 = a1 + 3072;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v47 = 0;
    do
    {
      v48 = __dst[v47 + 1];
      v49 = __dst[v47] | ((v48 & 0xF) << 8);
      v50 = __dst[v47 + 2];
      if (v49 <= 0xD00)
      {
        *(v46 + 2 * v45++) = v49;
      }

      v51 = (v48 >> 4) | (16 * v50);
      if (v51 <= 0xD00 && v45 <= 255)
      {
        *(v46 + 2 * v45++) = v51;
      }

      if (v47 > 0xA4)
      {
        break;
      }

      v47 += 3;
    }

    while (v45 < 256);
  }

  while (v45 < 256);
  v85 = 258;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v52 = 0;
  v53 = a1 + 3584;
  do
  {
    BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v54 = 0;
    do
    {
      v55 = __dst[v54 + 1];
      v56 = __dst[v54] | ((v55 & 0xF) << 8);
      v57 = __dst[v54 + 2];
      if (v56 <= 0xD00)
      {
        *(v53 + 2 * v52++) = v56;
      }

      v58 = (v55 >> 4) | (16 * v57);
      if (v58 <= 0xD00 && v52 <= 255)
      {
        *(v53 + 2 * v52++) = v58;
      }

      if (v54 > 0xA4)
      {
        break;
      }

      v54 += 3;
    }

    while (v52 < 256);
  }

  while (v52 < 256);
  v85 = 514;
  v81 = 0;
  v83 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 2;
  v68 = 0;
  v82 = 168;
  BORINGSSL_keccak_absorb(&v67, v84, 0x22uLL);
  v59 = 0;
  v60 = a1 + 4096;
  do
  {
    result = BORINGSSL_keccak_squeeze(&v67, __dst, 0xA8uLL);
    v62 = 0;
    do
    {
      v63 = __dst[v62 + 1];
      v64 = __dst[v62] | ((v63 & 0xF) << 8);
      v65 = __dst[v62 + 2];
      if (v64 <= 0xD00)
      {
        *(v60 + 2 * v59++) = v64;
      }

      v66 = (v63 >> 4) | (16 * v65);
      if (v66 <= 0xD00 && v59 <= 255)
      {
        *(v60 + 2 * v59++) = v66;
      }

      if (v62 > 0xA4)
      {
        break;
      }

      v62 += 3;
    }

    while (v59 < 256);
  }

  while (v59 < 256);
  return result;
}

int16x8_t *mlkem::anonymous namespace::vector_ntt<3>(int16x8_t *result)
{
  v1 = 1;
  v2 = 256;
  v3 = vdupq_n_s32(0x13AFu);
  v4.i64[0] = 0xF2000000F2;
  v4.i64[1] = 0xF2000000F2;
  v5.i64[0] = 0xD000D000D000D00;
  v5.i64[1] = 0xD000D000D000D00;
  v6 = vdupq_n_s16(0xD01u);
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = v2 >> 1;
    v10 = v2 & 0x1FE;
    v11 = v9 & 0xF8;
    v12 = result;
    v13 = v9;
    do
    {
      v15 = v8;
      if (v2 <= 0xF)
      {
        goto LABEL_9;
      }

      v15 = v8 + v11;
      v16 = vdupq_n_s16(v14);
      v17 = v12;
      v18 = v9 & 0xF8;
      do
      {
        v19 = *(v17 + v10);
        v20 = vmull_u16(*v16.i8, *v19.i8);
        v21 = vmull_high_u16(v16, v19);
        v22 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v20.i8, *v3.i8), 0x18uLL), vmull_high_u32(v20, v3), 0x18uLL), v4), *v16.i8, *v19.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v21.i8, *v3.i8), 0x18uLL), vmull_high_u32(v21, v3), 0x18uLL), v4), v16, v19));
        v23 = vaddq_s16(v22, v5);
        v24 = vorrq_s8(vandq_s8(vcltzq_s16(v23), v22), vmaxq_s16(v23, 0));
        v25 = *v17;
        v26 = vaddq_s16(v24, *v17);
        v27 = vaddq_s16(v26, v5);
        *v17 = vorrq_s8(vandq_s8(vcltzq_s16(v27), v26), vmaxq_s16(v27, 0));
        v28 = vsubq_s16(v25, v24);
        *(v17++ + v10) = vorrq_s8(vandq_s8(vcltzq_s16(v28), vaddq_s16(v28, v6)), vmaxq_s16(v28, 0));
        v18 -= 8;
      }

      while (v18);
      if (v11 != v9)
      {
LABEL_9:
        v29 = v13 - v15;
        v30 = &result->i16[v15];
        v31 = &result->i16[v9 + v15];
        do
        {
          v32 = *v31 * v14 + 62207 * ((5039 * (*v31 * v14)) >> 24);
          v33 = v32 & ((v32 - 3329) >> 15) | (v32 - 3329) & ~((v32 - 3329) >> 31);
          v34 = *v30;
          *v30 = (v33 + *v30) & ((v33 + *v30 - 3329) >> 15) | (v33 + *v30 - 3329) & ~((v33 + *v30 - 3329) >> 15);
          ++v30;
          *v31++ = (v34 - v33 + 3329) & ((v34 - v33) >> 15) | (v34 - v33) & ~((v34 - v33) >> 15);
          --v29;
        }

        while (v29);
      }

      v8 += v10;
      ++v7;
      v13 += v10;
      v12 = (v12 + 4 * (v2 >> 1));
    }

    while (v7 != v1);
    v1 *= 2;
    v2 >>= 1;
  }

  while (v1 < 128);
  v35 = result[32].i64 + 2;
  v36 = 1;
  LODWORD(v37) = 256;
  v38 = vdupq_n_s32(0x13AFu);
  v39.i64[0] = 0xF2000000F2;
  v39.i64[1] = 0xF2000000F2;
  v40.i64[0] = 0xD000D000D000D00;
  v40.i64[1] = 0xD000D000D000D00;
  v41 = vdupq_n_s16(0xD01u);
  do
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = v37 & 0x1FE;
    v37 = v37 >> 1;
    v46 = 4 * v37;
    v47 = result + 32;
    v48 = 1;
    v49 = v37;
    do
    {
      if (v49 <= v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = v49;
      }

      v51 = v44 + v37;
      if (v44 + v37 <= (v44 | 1uLL))
      {
        v52 = v44 + 1;
      }

      else
      {
        v52 = v44 + v37;
      }

      v53 = v52 + -2 * v37 * v43;
      v55 = v44;
      if (v53 < 8)
      {
        goto LABEL_34;
      }

      v56 = v46 * v43;
      v57 = v51 <= (v44 | 1uLL) ? v44 + 1 : v44 + v37;
      v58 = 2 * (v57 + ((v37 << 63) - 2 * v37) * v43) - 2;
      v59 = v35 + v45 + v46 * v43 + v58;
      v60 = v35 + v56 + v58;
      v61 = result[32].u64 + v56 >= v59 || result[32].u64 + v45 + v56 >= v60;
      v55 = v44;
      if (!v61)
      {
        goto LABEL_34;
      }

      v62 = (v50 + v42) & 0xFFFFFFFFFFFFFFF8;
      v55 = v44 + (v53 & 0xFFFFFFFFFFFFFFF8);
      v63 = vdupq_n_s16(v54);
      v64 = v47;
      do
      {
        v65 = *(v64 + v45);
        v66 = vmull_u16(*v63.i8, *v65.i8);
        v67 = vmull_high_u16(v63, v65);
        v68 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v66.i8, *v38.i8), 0x18uLL), vmull_high_u32(v66, v38), 0x18uLL), v39), *v63.i8, *v65.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v67.i8, *v38.i8), 0x18uLL), vmull_high_u32(v67, v38), 0x18uLL), v39), v63, v65));
        v69 = vaddq_s16(v68, v40);
        v70 = vorrq_s8(vandq_s8(vcltzq_s16(v69), v68), vmaxq_s16(v69, 0));
        v71 = *v64;
        v72 = vaddq_s16(v70, *v64);
        v73 = vaddq_s16(v72, v40);
        *v64 = vorrq_s8(vandq_s8(vcltzq_s16(v73), v72), vmaxq_s16(v73, 0));
        v74 = vsubq_s16(v71, v70);
        *(v64++ + v45) = vorrq_s8(vandq_s8(vcltzq_s16(v74), vaddq_s16(v74, v41)), vmaxq_s16(v74, 0));
        v62 -= 8;
      }

      while (v62);
      if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_34:
        v75 = v55 + 256;
        v76 = 2 * (v37 + v55) + 512;
        do
        {
          v77 = *(result->u16 + v76) * v54 + 62207 * ((5039 * (*(result->u16 + v76) * v54)) >> 24);
          v78 = v77 & ((v77 - 3329) >> 15) | (v77 - 3329) & ~((v77 - 3329) >> 31);
          v79 = result->i16[v75];
          result->i16[v75] = (v78 + v79) & ((v78 + v79 - 3329) >> 15) | (v78 + v79 - 3329) & ~((v78 + v79 - 3329) >> 15);
          *(result->i16 + v76) = (v79 - v78 + 3329) & ((v79 - v78) >> 15) | (v79 - v78) & ~((v79 - v78) >> 15);
          v80 = v75 - 255;
          ++v75;
          v76 += 2;
        }

        while (v80 < v51);
      }

      v44 += v45;
      ++v43;
      v49 += v45;
      v48 += v45;
      v42 -= v45;
      v47 = (v47 + v46);
    }

    while (v43 != v36);
    v36 *= 2;
  }

  while (v36 < 128);
  v81 = result[64].i64 + 2;
  v82 = 1;
  v83 = 256;
  v84 = vdupq_n_s32(0x13AFu);
  v85.i64[0] = 0xF2000000F2;
  v85.i64[1] = 0xF2000000F2;
  v86.i64[0] = 0xD000D000D000D00;
  v86.i64[1] = 0xD000D000D000D00;
  v87 = vdupq_n_s16(0xD01u);
  do
  {
    v88 = v83 >> 1;
    if (v82 >= 1)
    {
      v89 = 0;
      v90 = 0;
      v91 = v83 & 0x1FE;
      v92 = 4 * v88;
      v93 = result + 64;
      v94 = -2 * v88;
      do
      {
        v95 = v90 + v88;
        if (v90 + v88 <= (v90 | 1uLL))
        {
          v96 = v90 + 1;
        }

        else
        {
          v96 = v90 + v88;
        }

        v97 = v96 + v94 * v89;
        v99 = v90;
        if (v97 < 8)
        {
          goto LABEL_57;
        }

        v100 = v92 * v89;
        v101 = v95 <= (v90 | 1uLL) ? v90 + 1 : v90 + v88;
        v102 = 2 * (v101 + v94 * v89) - 2;
        v103 = v81 + v91 + v92 * v89 + v102;
        v104 = v81 + v100 + v102;
        v105 = result[64].u64 + v100 >= v103 || result[64].u64 + v91 + v100 >= v104;
        v99 = v90;
        if (!v105)
        {
          goto LABEL_57;
        }

        v99 = v90 + (v97 & 0xFFFFFFFFFFFFFFF8);
        v106 = vdupq_n_s16(v98);
        v107 = v93;
        v108 = v88 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v109 = *(v107 + v91);
          v110 = vmull_u16(*v106.i8, *v109.i8);
          v111 = vmull_high_u16(v106, v109);
          v112 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v110.i8, *v84.i8), 0x18uLL), vmull_high_u32(v110, v84), 0x18uLL), v85), *v106.i8, *v109.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v111.i8, *v84.i8), 0x18uLL), vmull_high_u32(v111, v84), 0x18uLL), v85), v106, v109));
          v113 = vaddq_s16(v112, v86);
          v114 = vorrq_s8(vandq_s8(vcltzq_s16(v113), v112), vmaxq_s16(v113, 0));
          v115 = *v107;
          v116 = vaddq_s16(v114, *v107);
          v117 = vaddq_s16(v116, v86);
          *v107 = vorrq_s8(vandq_s8(vcltzq_s16(v117), v116), vmaxq_s16(v117, 0));
          v118 = vsubq_s16(v115, v114);
          *(v107++ + v91) = vorrq_s8(vandq_s8(vcltzq_s16(v118), vaddq_s16(v118, v87)), vmaxq_s16(v118, 0));
          v108 -= 8;
        }

        while (v108);
        if (v97 != (v97 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_57:
          v119 = v99 + 512;
          v120 = 2 * (v88 + v99) + 1024;
          do
          {
            v121 = *(result->u16 + v120) * v98 + 62207 * ((5039 * (*(result->u16 + v120) * v98)) >> 24);
            v122 = v121 & ((v121 - 3329) >> 15) | (v121 - 3329) & ~((v121 - 3329) >> 31);
            v123 = result->i16[v119];
            result->i16[v119] = (v122 + v123) & ((v122 + v123 - 3329) >> 15) | (v122 + v123 - 3329) & ~((v122 + v123 - 3329) >> 15);
            *(result->i16 + v120) = (v123 - v122 + 3329) & ((v123 - v122) >> 15) | (v123 - v122) & ~((v123 - v122) >> 15);
            v124 = v119 - 511;
            ++v119;
            v120 += 2;
          }

          while (v124 < v95);
        }

        v90 += v91;
        ++v89;
        v93 = (v93 + v92);
      }

      while (v89 != v82);
    }

    v82 *= 2;
    v83 = v88;
  }

  while (v82 < 128);
  return result;
}

int *mlkem::anonymous namespace::scalar_centered_binomial_distribution_eta_2_with_prf(__int16 *a1, char *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v53 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38[0] = 3;
  v38[1] = 0;
  v52 = 136;
  BORINGSSL_keccak_absorb(v38, a2, 0x21uLL);
  result = BORINGSSL_keccak_squeeze(v38, __dst, 0x80uLL);
  v4 = 0;
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x800000008000;
  v6.i64[1] = 0x800000008000;
  v7 = vdupq_n_s32(0xD01u);
  do
  {
    v8 = *&__dst[v4];
    v9 = vqtbl1q_s8(v8, xmmword_273B8E7B0);
    v10 = vqtbl1q_s8(v8, xmmword_273B8E7A0);
    v11 = vqtbl1q_s8(v8, xmmword_273B8E7D0);
    v12 = vqtbl1q_s8(v8, xmmword_273B8E7C0);
    v13 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v9 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v9, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v9, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v9, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
    v14 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v10 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v10, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v10, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v10, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
    v15 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v11 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v11, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v11, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v11, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
    v16 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v12 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v12, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v12, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v12, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
    v17 = vandq_s8(v16, v5);
    v18 = vandq_s8(v15, v5);
    v19 = vandq_s8(v14, v5);
    v20 = vandq_s8(v13, v5);
    v21 = vorrq_s8(vandq_s8(vaddq_s32(v16, v7), vnegq_s32(vshrq_n_u32(v17, 0xFuLL))), vandq_s8(v16, vcgtq_u32(v6, v17)));
    v22 = vorrq_s8(vandq_s8(vaddq_s32(v15, v7), vnegq_s32(vshrq_n_u32(v18, 0xFuLL))), vandq_s8(v15, vcgtq_u32(v6, v18)));
    v56.val[0] = vuzp1q_s16(vorrq_s8(vandq_s8(vaddq_s32(v13, v7), vnegq_s32(vshrq_n_u32(v20, 0xFuLL))), vandq_s8(v13, vcgtq_u32(v6, v20))), vorrq_s8(vandq_s8(vaddq_s32(v14, v7), vnegq_s32(vshrq_n_u32(v19, 0xFuLL))), vandq_s8(v14, vcgtq_u32(v6, v19))));
    v23 = vshrq_n_u8(v8, 4uLL);
    v24 = vqtbl1q_s8(v23, xmmword_273B8E7B0);
    v25 = vqtbl1q_s8(v23, xmmword_273B8E7A0);
    v26 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v24 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v24, 3uLL)), (*&vshrq_n_u32(v24, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v24, 0x1DuLL), 0x1FuLL);
    v27 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v25 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v25, 3uLL)), (*&vshrq_n_u32(v25, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v25, 0x1DuLL), 0x1FuLL);
    v28 = vandq_s8(v27, v5);
    v29 = vandq_s8(v26, v5);
    v56.val[1] = vuzp1q_s16(vorrq_s8(vandq_s8(vaddq_s32(v26, v7), vnegq_s32(vshrq_n_u32(v29, 0xFuLL))), vandq_s8(v26, vcgtq_u32(v6, v29))), vorrq_s8(vandq_s8(vaddq_s32(v27, v7), vnegq_s32(vshrq_n_u32(v28, 0xFuLL))), vandq_s8(v27, vcgtq_u32(v6, v28))));
    v57.val[0] = vuzp1q_s16(v22, v21);
    v30 = vqtbl1q_s8(v23, xmmword_273B8E7D0);
    v31 = vqtbl1q_s8(v23, xmmword_273B8E7C0);
    v32 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v30 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v30, 3uLL)), (*&vshrq_n_u32(v30, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v30, 0x1DuLL), 0x1FuLL);
    v33 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v31 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v31, 3uLL)), (*&vshrq_n_u32(v31, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v31, 0x1DuLL), 0x1FuLL);
    v34 = vandq_s8(v33, v5);
    v35 = vandq_s8(v32, v5);
    v36 = a1 + 32;
    v4 += 16;
    v57.val[1] = vuzp1q_s16(vorrq_s8(vandq_s8(vaddq_s32(v32, v7), vnegq_s32(vshrq_n_u32(v35, 0xFuLL))), vandq_s8(v32, vcgtq_u32(v6, v35))), vorrq_s8(vandq_s8(vaddq_s32(v33, v7), vnegq_s32(vshrq_n_u32(v34, 0xFuLL))), vandq_s8(v33, vcgtq_u32(v6, v34))));
    vst2q_s16(a1, v57);
    v37 = a1 + 16;
    vst2q_s16(v37, v56);
    a1 = v36;
  }

  while (v4 != 128);
  return result;
}

double g_small_factors_init(void)
{
  qword_2808D4528 = &kSmallFactorsLimbs;
  *&result = 0x1100000011;
  *algn_2808D4530 = xmmword_273BA7230;
  return result;
}

uint64_t ensure_fixed_copy(bignum_st **a1, const bignum_st *a, int a3)
{
  if (*a1)
  {
    return 1;
  }

  result = BN_dup(a);
  if (result)
  {
    v6 = result;
    if (bn_resize_words(result, a3))
    {
      *a1 = v6;
      return 1;
    }

    else
    {
      flags = v6->flags;
      if ((flags & 2) == 0)
      {
        d = v6->d;
        if (v6->d)
        {
          v10 = *(d - 1);
          v9 = d - 1;
          v11 = v10 + 8;
          if (v10 != -8)
          {
            bzero(v9, v11);
          }

          free(v9);
          flags = v6->flags;
        }
      }

      if (flags)
      {
        v13 = *&v6[-1].neg;
        p_neg = &v6[-1].neg;
        v14 = v13 + 8;
        if (v13 != -8)
        {
          bzero(p_neg, v14);
        }

        free(p_neg);
        return 0;
      }

      else
      {
        result = 0;
        v6->d = 0;
      }
    }
  }

  return result;
}

uint64_t generate_prime(bignum_st *a1, uint64_t a2, const bignum_st *a3, const bignum_st *a4, const bignum_st *a5, const bignum_st *a6, bignum_ctx *ctx, bn_gencb_st *a8)
{
  if ((a2 & 0x3F) != 0)
  {
    v8 = 68;
    v9 = 857;
LABEL_5:
    ERR_put_error(4, 0, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", v9);
    return 0;
  }

  v10 = a2;
  if (a2 >= 0x3FFFFFF)
  {
    v8 = 128;
    v9 = 894;
    goto LABEL_5;
  }

  top = a3->top;
  if (!top)
  {
LABEL_18:
    v31 = 5 * a2;
    if ((*(ctx + 56) & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  d = a3->d;
  v20 = *a3->d ^ 3;
  if (top >= 2)
  {
    if (top < 5)
    {
      v21 = 1;
LABEL_14:
      v28 = top - v21;
      v29 = &d[v21];
      do
      {
        v30 = *v29++;
        v20 |= v30;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }

    v22 = (top - 1) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = v22 | 1;
    v23 = 0uLL;
    v24 = *a3->d ^ 3uLL;
    v25 = (d + 3);
    v26 = v22;
    do
    {
      v24 = vorrq_s8(v25[-1], v24);
      v23 = vorrq_s8(*v25, v23);
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    v27 = vorrq_s8(v23, v24);
    v20 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    if (top - 1 != v22)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  if (v20 || a3->neg)
  {
    goto LABEL_18;
  }

  v31 = 8 * a2;
  if ((*(ctx + 56) & 1) == 0)
  {
LABEL_19:
    v32 = *(ctx + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v32;
    }

    else
    {
      *(ctx + 28) = 257;
      ERR_clear_error();
    }
  }

LABEL_22:
  result = BN_CTX_get(ctx);
  if (result)
  {
    v33 = result;
    if (a5)
    {
      v34 = a1 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (a1)
    {
      v35 = -1;
    }

    else
    {
      v35 = a5 != 0;
    }

    v214 = v35;
    v215 = v34;
    if (v31 <= 1)
    {
      v31 = 1;
    }

    result = BN_rand(a1, v10, 0, 1);
    if (result)
    {
      v36 = 0;
      v208 = v31 - 1;
      v209 = 0;
      v210 = a8;
      v212 = a6;
      v213 = a5;
      a = v33;
      v218 = a1;
      while (1)
      {
        if (a8)
        {
          result = (a8->arg)(0, v36, a8);
          if (!result)
          {
            goto LABEL_242;
          }
        }

        v36 = (v36 + 1);
        if (!a4)
        {
          goto LABEL_167;
        }

        v219 = v36;
        v39 = v10;
        v40 = a1->top;
        v41 = a4;
        v42 = a4->top;
        v217 = (v40 - v42);
        if (v40 >= v42)
        {
          v43 = a4->top;
        }

        else
        {
          v43 = v40;
        }

        v216 = v43;
        if (v40 <= v42)
        {
          v44 = a4->top;
        }

        else
        {
          v44 = v40;
        }

        if (*(ctx + 56))
        {
          goto LABEL_50;
        }

        v45 = *(ctx + 6);
        if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
        {
          break;
        }

        *(ctx + 28) = 257;
        ERR_clear_error();
        v46 = BN_CTX_get(ctx);
        if (!v46)
        {
LABEL_66:
          v58 = 1;
          goto LABEL_82;
        }

LABEL_51:
        v47 = v46;
        v48 = v44;
        if (a->dmax < v44)
        {
          if (v44 >= 0x800000)
          {
            goto LABEL_64;
          }

          if ((a->flags & 2) != 0)
          {
LABEL_80:
            v56 = 106;
            v57 = 306;
            goto LABEL_81;
          }

          v49 = malloc_type_malloc(8 * v44 + 8, 0xB4E622C9uLL);
          if (!v49)
          {
            goto LABEL_106;
          }

          *v49 = 8 * v44;
          v50 = v49 + 1;
          bzero(v49 + 1, 8 * v44);
          v51 = a->top;
          if (v51)
          {
            memcpy(v50, a->d, 8 * v51);
          }

          v52 = a->d;
          if (a->d)
          {
            v54 = *(v52 - 1);
            v53 = v52 - 1;
            v55 = v54 + 8;
            if (v54 != -8)
            {
              bzero(v53, v55);
            }

            free(v53);
          }

          a->d = v50;
          v48 = v44;
          a->dmax = v44;
          a8 = v210;
          a6 = v212;
        }

        if (v47->dmax >= v48)
        {
          v59 = v47->d;
          a5 = v213;
        }

        else
        {
          if (v48 >= 0x800000)
          {
LABEL_64:
            v56 = 102;
            v57 = 301;
LABEL_81:
            ERR_put_error(3, 0, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", v57);
            v58 = 1;
            a5 = v213;
            goto LABEL_82;
          }

          if ((v47->flags & 2) != 0)
          {
            goto LABEL_80;
          }

          v69 = malloc_type_malloc(8 * v44 + 8, 0xB4E622C9uLL);
          if (!v69)
          {
LABEL_106:
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            v58 = 1;
            a8 = v210;
            a6 = v212;
            a5 = v213;
LABEL_82:
            a4 = v41;
            v10 = v39;
            a1 = v218;
            v76 = a;
            v36 = v219;
            if (*(ctx + 56))
            {
              goto LABEL_158;
            }

            goto LABEL_156;
          }

          *v69 = 8 * v44;
          v70 = (v69 + 1);
          bzero(v69 + 1, 8 * v44);
          v71 = v47->top;
          a5 = v213;
          if (v71)
          {
            memcpy(v70, v47->d, 8 * v71);
          }

          v72 = v47->d;
          if (v47->d)
          {
            v74 = *(v72 - 1);
            v73 = (v72 - 1);
            v75 = v74 + 8;
            if (v74 != -8)
            {
              bzero(v73, v75);
            }

            free(v73);
          }

          v59 = v70;
          v47->d = v70;
          v48 = v44;
          v47->dmax = v44;
          a8 = v210;
        }

        v60 = a->d;
        v61 = v218->d;
        v62 = v216;
        a4 = v41;
        v63 = v41->d;
        if (!v216)
        {
          v64 = 0;
          v10 = v39;
          v36 = v219;
          goto LABEL_101;
        }

        v10 = v39;
        v64 = 0;
        v65 = v216;
        v66 = v63;
        v67 = v218->d;
        v68 = v59;
        if (v216 < 4)
        {
          v36 = v219;
          do
          {
LABEL_94:
            v92 = *v67++;
            v91 = v92;
            v93 = *v66++;
            v78 = v91 >= v93;
            v94 = v91 - v93;
            v95 = !v78;
            v78 = v94 >= v64;
            v96 = v94 - v64;
            if (v78)
            {
              v64 = v95;
            }

            else
            {
              v64 = 1;
            }

            *v68++ = v96;
            --v65;
          }

          while (v65);
          goto LABEL_101;
        }

        v36 = v219;
        do
        {
          v77 = *v67 - *v66;
          v78 = v77 >= v64;
          v79 = v77 - v64;
          v80 = !v78 || *v67 < *v66;
          v78 = !v80;
          *v68 = v79;
          v81 = v67[1];
          v82 = v66[1];
          v83 = v78;
          v78 = __CFSUB__(v81, v82, v78);
          v68[1] = v81 - (v82 + !v83);
          v84 = v67[2];
          v85 = v66[2];
          v86 = v78;
          v78 = __CFSUB__(v84, v85, v78);
          v68[2] = v84 - (v85 + !v86);
          v87 = v67[3];
          v88 = v66[3];
          v90 = v78;
          v78 = __CFSUB__(v87, v88, v78);
          v89 = v87 - (v88 + !v90);
          v64 = !v78;
          v68[3] = v89;
          v67 += 4;
          v66 += 4;
          v68 += 4;
          v65 -= 4;
        }

        while (v65 >= 4);
        if (v65)
        {
          goto LABEL_94;
        }

LABEL_101:
        v97 = v216;
        if (v40 != v42)
        {
          v98 = &v59->u64[v97];
          if ((v217 & 0x80000000) != 0)
          {
            v103 = &v63[v97];
            if (v42 - v40 > 1)
            {
              v104 = (v42 - v40);
            }

            else
            {
              v104 = 1;
            }

            do
            {
              v105 = *v103++;
              v106 = v105 != 0;
              v107 = -v105 - v64;
              v64 = -v105 < v64 || v106;
              *v98++ = v107;
              --v104;
            }

            while (v104);
          }

          else
          {
            v99 = &v61[v97];
            v100 = (v40 - v42);
            do
            {
              v101 = *v99++;
              v102 = v101 - v64;
              v64 = v101 < v64;
              *v98++ = v102;
              --v100;
            }

            while (v100);
          }
        }

        if (!v216)
        {
          v108 = 0;
          goto LABEL_134;
        }

        if (v216 < 4)
        {
          v108 = 0;
          v109 = v61;
          v110 = v63;
          v111 = v60;
          do
          {
LABEL_127:
            v126 = *v110++;
            v125 = v126;
            v127 = *v109++;
            v78 = v125 >= v127;
            v128 = v125 - v127;
            v129 = !v78;
            v78 = v128 >= v108;
            v130 = v128 - v108;
            if (v78)
            {
              v108 = v129;
            }

            else
            {
              v108 = 1;
            }

            *v111++ = v130;
            --v62;
          }

          while (v62);
          goto LABEL_134;
        }

        v108 = 0;
        v109 = v61;
        v110 = v63;
        v111 = v60;
        do
        {
          v112 = *v110 - *v109;
          v78 = v112 >= v108;
          v113 = v112 - v108;
          v114 = !v78 || *v110 < *v109;
          v78 = !v114;
          *v111 = v113;
          v115 = v110[1];
          v116 = v109[1];
          v117 = v78;
          v78 = __CFSUB__(v115, v116, v78);
          v111[1] = v115 - (v116 + !v117);
          v118 = v110[2];
          v119 = v109[2];
          v120 = v78;
          v78 = __CFSUB__(v118, v119, v78);
          v111[2] = v118 - (v119 + !v120);
          v121 = v110[3];
          v122 = v109[3];
          v124 = v78;
          v78 = __CFSUB__(v121, v122, v78);
          v123 = v121 - (v122 + !v124);
          v108 = !v78;
          v111[3] = v123;
          v110 += 4;
          v109 += 4;
          v111 += 4;
          v62 -= 4;
        }

        while (v62 >= 4);
        if (v62)
        {
          goto LABEL_127;
        }

LABEL_134:
        v131 = v40 == v42;
        a1 = v218;
        if (!v131)
        {
          v132 = &v60->u64[v97];
          if (v217 <= 0)
          {
            v138 = -v217;
            v139 = &v63[v97];
            do
            {
              v140 = *v139++;
              v141 = v140 - v108;
              v108 = v140 < v108;
              *v132++ = v141;
              --v138;
            }

            while (v138);
          }

          else
          {
            v133 = &v61[v97];
            v134 = v217;
            do
            {
              v135 = *v133++;
              v136 = v135 != 0;
              v137 = -v135 - v108;
              v108 = -v135 < v108 || v136;
              *v132++ = v137;
              --v134;
            }

            while (v134);
          }
        }

        if (v217 >= 0)
        {
          v142 = v217;
        }

        else
        {
          v142 = -v217;
        }

        v143 = v142 + v216;
        if (v143)
        {
          v144 = v143;
          v145 = -v64;
          v146 = ~v145;
          if (v144 < 4 || v60 < (v59 + 8 * v144) && v59 < (v60 + 8 * v144))
          {
            v147 = 0;
LABEL_152:
            v148 = v147 - v144;
            v149 = v147;
            v150 = &v59->i64[v147];
            v151 = &v60->u64[v149];
            do
            {
              v152 = *v150++;
              *v151 = v152 & v146 | *v151 & v145;
              ++v151;
              v78 = __CFADD__(v148++, 1);
            }

            while (!v78);
            goto LABEL_155;
          }

          v158 = vdupq_n_s64(v145);
          v147 = v144 & 0xFFFFFFFFFFFFFFFCLL;
          v159 = vdupq_n_s64(v146);
          v160 = v60 + 1;
          v161 = v59 + 1;
          v162 = v144 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v163 = vorrq_s8(vandq_s8(*v161, v159), vandq_s8(*v160, v158));
            v160[-1] = vorrq_s8(vandq_s8(v161[-1], v159), vandq_s8(v160[-1], v158));
            *v160 = v163;
            v160 += 2;
            v161 += 2;
            v162 -= 4;
          }

          while (v162);
          if (v147 != v144)
          {
            goto LABEL_152;
          }
        }

LABEL_155:
        v58 = 0;
        v76 = a;
        a->top = v48;
        a6 = v212;
        if (*(ctx + 56))
        {
          goto LABEL_158;
        }

LABEL_156:
        v153 = *(ctx + 4);
        if (!v153)
        {
          goto LABEL_247;
        }

        *(ctx + 6) = *(*(ctx + 3) + 8 * v153 - 8);
        *(ctx + 4) = v153 - 1;
LABEL_158:
        if (v58)
        {
          goto LABEL_241;
        }

        if (!a6)
        {
          goto LABEL_37;
        }

        neg = v76->neg;
        if (neg == a6->neg)
        {
          v155 = BN_ucmp(v76, a6);
          if (neg)
          {
            v156 = -v155;
          }

          else
          {
            v156 = v155;
          }

          if (v156 <= 0)
          {
            goto LABEL_37;
          }

LABEL_167:
          v38 = v214;
          if (!v215)
          {
            v157 = a1->neg;
            if (v157 == a5->neg)
            {
              v37 = BN_ucmp(a1, a5);
              if (v157)
              {
                v38 = -v37;
              }

              else
              {
                v38 = v37;
              }
            }

            else if (v157)
            {
              v38 = -1;
            }

            else
            {
              v38 = 1;
            }
          }

          if (v38 < 1)
          {
            goto LABEL_37;
          }

          v220 = v36;
          v164 = a1;
          v165 = a4;
          v166 = v164->top;
          if (v166 <= 16)
          {
            v167 = 512;
          }

          else
          {
            v167 = 1024;
          }

          v168 = v164;
          if (bn_mod_u16_consttime(v164, 3u))
          {
            v172 = v167 - 2;
            v173 = -1;
            v174 = &word_273BA753C;
            do
            {
              if (!v172)
              {
                goto LABEL_199;
              }

              v175 = *v174++;
              v169 = v175;
              --v173;
              --v172;
            }

            while (bn_mod_u16_consttime(v168, v175));
            if (-v173 >= v167)
            {
              goto LABEL_199;
            }

            a8 = v210;
            a6 = v212;
            a5 = v213;
            if (!v166)
            {
              goto LABEL_195;
            }
          }

          else
          {
            v169 = 3;
            if (!v166)
            {
              goto LABEL_195;
            }
          }

          v170 = v168->d;
          *&v169 ^= *v168->d;
          if (v166 < 2)
          {
            goto LABEL_195;
          }

          if (v166 < 5)
          {
            v171 = 1;
LABEL_193:
            v182 = v166 - v171;
            v183 = &v170[v171];
            do
            {
              v184 = *v183++;
              *&v169 |= v184;
              --v182;
            }

            while (v182);
            goto LABEL_195;
          }

          v176 = (v166 - 1) & 0xFFFFFFFFFFFFFFFCLL;
          v171 = v176 | 1;
          v177 = 0uLL;
          v178 = v169;
          v179 = (v170 + 3);
          v180 = v176;
          do
          {
            v178 = vorrq_s8(v179[-1], v178);
            v177 = vorrq_s8(*v179, v177);
            v179 += 2;
            v180 -= 4;
          }

          while (v180);
          v181 = vorrq_s8(v177, v178);
          v169 = vorr_s8(*v181.i8, *&vextq_s8(v181, v181, 8uLL));
          if (v166 - 1 != v176)
          {
            goto LABEL_193;
          }

LABEL_195:
          if (v169)
          {
            goto LABEL_198;
          }

          if (v168->neg)
          {
            a8 = v210;
            a6 = v212;
            a5 = v213;
LABEL_198:
            a4 = v165;
            a1 = v168;
            v36 = v220;
            goto LABEL_233;
          }

LABEL_199:
          if (pthread_once(&_MergedGlobals, BN_value_one_init))
          {
            goto LABEL_247;
          }

          result = bn_usub_consttime(a, v168, &_MergedGlobals_95);
          if (!result)
          {
            goto LABEL_242;
          }

          a8 = v210;
          a6 = v212;
          a5 = v213;
          if ((*(ctx + 56) & 1) == 0)
          {
            v185 = *(ctx + 6);
            if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
            {
              *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v185;
            }

            else
            {
              *(ctx + 28) = 257;
              ERR_clear_error();
            }
          }

          v223 = 0;
          v186 = BN_CTX_get(ctx);
          if (!v186 || (v187 = v186, !bn_gcd_consttime(v186, &v223, a, a3, ctx)))
          {
            LODWORD(v188) = 0;
            v192 = 1;
LABEL_212:
            a4 = v165;
            a1 = v168;
            v36 = v220;
            goto LABEL_221;
          }

          v188 = v187->top;
          if (!v188)
          {
            v192 = 0;
            goto LABEL_212;
          }

          v189 = v187->d;
          v190 = *v187->d ^ 1 | v223;
          if (v188 < 2)
          {
            a4 = v165;
            a1 = v168;
            v36 = v220;
          }

          else
          {
            a4 = v165;
            if (v188 > 4)
            {
              v193 = (v188 - 1) & 0xFFFFFFFFFFFFFFFCLL;
              v191 = v193 | 1;
              v194 = 0uLL;
              v195 = v190;
              v196 = (v189 + 3);
              v197 = v193;
              a1 = v168;
              do
              {
                v195 = vorrq_s8(v196[-1], v195);
                v194 = vorrq_s8(*v196, v194);
                v196 += 2;
                v197 -= 4;
              }

              while (v197);
              v198 = vorrq_s8(v194, v195);
              v190 = vorr_s8(*v198.i8, *&vextq_s8(v198, v198, 8uLL));
              v36 = v220;
              if (v188 - 1 == v193)
              {
                goto LABEL_220;
              }
            }

            else
            {
              v191 = 1;
              a1 = v168;
              v36 = v220;
            }

            v199 = v188 - v191;
            v200 = &v189[v191];
            do
            {
              v201 = *v200++;
              v190 |= v201;
              --v199;
            }

            while (v199);
          }

LABEL_220:
          v192 = 0;
          LODWORD(v188) = v190 == 0;
LABEL_221:
          if ((*(ctx + 56) & 1) == 0)
          {
            v202 = *(ctx + 4);
            if (!v202)
            {
              goto LABEL_247;
            }

            *(ctx + 6) = *(*(ctx + 3) + 8 * v202 - 8);
            *(ctx + 4) = v202 - 1;
          }

          if (v192)
          {
            goto LABEL_241;
          }

          if (v188)
          {
            v222 = 0;
            v203 = BN_primality_test(&v222, a1, 0, ctx, 0, v210);
            LODWORD(v204) = v207;
            if (v222)
            {
              LODWORD(v204) = 1;
            }

            if (v203)
            {
              v204 = v204;
            }

            else
            {
              v204 = 0;
            }

            if (!v203)
            {
              result = v204;
              if (*(ctx + 56))
              {
                return result;
              }

              goto LABEL_243;
            }

            v207 = v204;
            result = v204;
            if (v222)
            {
              goto LABEL_242;
            }
          }

LABEL_233:
          if (v209 == v208)
          {
            ERR_put_error(4, 0, 141, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 967);
LABEL_241:
            result = 0;
            goto LABEL_242;
          }

          if (a8)
          {
            result = (a8->arg)(2, (v209 + 1), a8);
            if (!result)
            {
              goto LABEL_242;
            }
          }

          ++v209;
          v205 = BN_rand(a1, v10, 0, 1);
          result = 0;
          if (!v205)
          {
            goto LABEL_242;
          }
        }

        else
        {
          if (!neg)
          {
            goto LABEL_167;
          }

LABEL_37:
          result = BN_rand(a1, v10, 0, 1);
          if (!result)
          {
            goto LABEL_242;
          }
        }
      }

      *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v45;
LABEL_50:
      v46 = BN_CTX_get(ctx);
      if (!v46)
      {
        goto LABEL_66;
      }

      goto LABEL_51;
    }
  }

LABEL_242:
  if ((*(ctx + 56) & 1) == 0)
  {
LABEL_243:
    v206 = *(ctx + 4);
    if (!v206)
    {
LABEL_247:
      abort();
    }

    *(ctx + 6) = *(*(ctx + 3) + 8 * v206 - 8);
    *(ctx + 4) = v206 - 1;
  }

  return result;
}

uint64_t bssl::Vector<unsigned long>::MaybeGrow(uint64_t *a1)
{
  v1 = a1[2];
  if (a1[1] < v1)
  {
    return 1;
  }

  if (v1)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/../../mem_internal.h";
      v4 = 69;
      v5 = 333;
      goto LABEL_27;
    }

    if (v1 >> 60)
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/../../mem_internal.h";
      v4 = 69;
      v5 = 339;
LABEL_27:
      ERR_put_error(14, 0, v4, v3, v5);
      return 0;
    }

    v6 = a1;
    v7 = 2 * v1;
    v8 = 16 * v1;
    result = malloc_type_malloc((16 * v1) | 8, 0xB4E622C9uLL);
    if (!result)
    {
LABEL_26:
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v4 = 65;
      v5 = 217;
      goto LABEL_27;
    }
  }

  else
  {
    v6 = a1;
    v7 = 16;
    v8 = 128;
    result = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
    if (!result)
    {
      goto LABEL_26;
    }
  }

  *result = v8;
  v9 = result + 8;
  v10 = v6;
  v13 = v6;
  v11 = *v6;
  v12 = v13[1];
  if (!v12)
  {
    goto LABEL_19;
  }

  v14 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v15 = (result + 8);
  v16 = v11;
  if (v14 < 5)
  {
    goto LABEL_31;
  }

  v15 = (result + 8);
  v16 = v11;
  if ((result - v11 + 8) < 0x20)
  {
    goto LABEL_31;
  }

  v17 = v14 + 1;
  v18 = 8 * (v17 & 0x3FFFFFFFFFFFFFFCLL);
  v15 = (v9 + v18);
  v16 = (v11 + v18);
  v19 = (v11 + 16);
  v20 = (result + 24);
  v21 = v17 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v22 = *v19;
    *(v20 - 1) = *(v19 - 1);
    *v20 = v22;
    v19 += 2;
    v20 += 2;
    v21 -= 4;
  }

  while (v21);
  if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
  {
LABEL_31:
    do
    {
      v23 = *v16++;
      *v15++ = v23;
    }

    while (v16 != (v11 + 8 * v12));
  }

  v24 = v10[1];
  if (v24)
  {
    v25 = v11 - 8;
    while (1)
    {
      v25 += 8;
      if (!v25)
      {
        break;
      }

      if (!--v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (v11)
    {
      v26 = v10;
      v28 = *(v11 - 8);
      v27 = (v11 - 8);
      v29 = v28 + 8;
      if (v28 != -8)
      {
        bzero(v27, v29);
      }

      free(v27);
      v10 = v26;
    }

    *v10 = v9;
    v10[1] = v12;
    result = 1;
    v10[2] = v7;
  }

  return result;
}

void bssl::Vector<std::unique_ptr<bignum_st,bssl::internal::Deleter>>::MaybeGrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= v1)
  {
    if (v1)
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
        v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/../../mem_internal.h";
        v4 = 69;
        v5 = 333;
        goto LABEL_38;
      }

      if (v1 >> 60)
      {
        v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/../../mem_internal.h";
        v4 = 69;
        v5 = 339;
LABEL_38:
        ERR_put_error(14, 0, v4, v3, v5);
        return;
      }

      v6 = 2 * v1;
      v7 = 16 * v1;
      v8 = malloc_type_malloc((16 * v1) | 8, 0xB4E622C9uLL);
      if (!v8)
      {
LABEL_37:
        v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
        v4 = 65;
        v5 = 217;
        goto LABEL_38;
      }
    }

    else
    {
      v6 = 16;
      v7 = 128;
      v8 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
      if (!v8)
      {
        goto LABEL_37;
      }
    }

    *v8 = v7;
    v9 = (v8 + 1);
    v10 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v13 = v8 + 1;
      v14 = *a1;
      if (v12 < 0xD)
      {
        goto LABEL_42;
      }

      if (v10 < &v8[v11 + 1])
      {
        v13 = v8 + 1;
        v14 = *a1;
        if (v9 < &v10[v11])
        {
          goto LABEL_42;
        }
      }

      v15 = v12 + 1;
      v16 = v15 & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (v9 + v16 * 8);
      v14 = &v10[v16];
      v17 = (v10 + 2);
      v18 = v8 + 3;
      v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *(v17 - 1);
        v21 = *v17;
        *(v17 - 1) = 0uLL;
        *v17 = 0uLL;
        *(v18 - 1) = v20;
        *v18 = v21;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_42:
        do
        {
          v22 = *v14;
          *v14++ = 0;
          *v13++ = v22;
        }

        while (v14 != &v10[v11]);
      }

      v23 = v11;
      while (v10)
      {
        v24 = *v10;
        *v10 = 0;
        if (v24)
        {
          v25 = *(v24 + 5);
          if ((v25 & 2) == 0)
          {
            v26 = *v24;
            if (*v24)
            {
              v28 = *(v26 - 8);
              v27 = (v26 - 8);
              v29 = v28 + 8;
              if (v28 != -8)
              {
                bzero(v27, v29);
              }

              free(v27);
              v25 = *(v24 + 5);
            }
          }

          if (v25)
          {
            v31 = *(v24 - 1);
            v30 = v24 - 1;
            v32 = v31 + 8;
            if (v31 != -8)
            {
              bzero(v30, v32);
            }

            free(v30);
          }

          else
          {
            *v24 = 0;
          }
        }

        ++v10;
        if (!--v23)
        {
          v10 = *a1;
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_31:
      if (v10)
      {
        v34 = *(v10 - 1);
        v33 = v10 - 1;
        v35 = v34 + 8;
        if (v34 != -8)
        {
          bzero(v33, v35);
        }

        free(v33);
      }

      *a1 = v9;
      *(a1 + 8) = v11;
      *(a1 + 16) = v6;
    }
  }
}

uint64_t mlkem::anonymous namespace::vector_encode<3>(_BYTE *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v7 = 0;
    v8 = *(a2 + 2 * v3);
    while (1)
    {
      v9 = a3 - v7;
      v10 = 8 - v4;
      if (a3 - v7 < 8 - v4)
      {
        break;
      }

      v4 = 0;
      *v6++ = v5 | v11;
      v5 = 0;
      v7 += v10;
      LOBYTE(v8) = v8 >> v10;
      if (v7 >= a3)
      {
        goto LABEL_2;
      }
    }

    v4 += v9;
LABEL_2:
    ++v3;
  }

  while (v3 != 256);
  if (v4 >= 1)
  {
    *v6 = v5;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = &a1[32 * a3];
  do
  {
    v16 = 0;
    v17 = *(a2 + 512 + 2 * v12);
    while (1)
    {
      v18 = a3 - v16;
      v19 = 8 - v13;
      if (v18 < 8 - v13)
      {
        break;
      }

      v14 = 0;
      v13 = 0;
      v16 += v19;
      LOBYTE(v17) = v17 >> v19;
      if (v16 >= a3)
      {
        goto LABEL_11;
      }
    }

    v13 += v18;
LABEL_11:
    ++v12;
  }

  while (v12 != 256);
  if (v13 >= 1)
  {
    *v15 = v14;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = &a1[a3 << 6];
  v24 = a2 + 1024;
  do
  {
    v25 = 0;
    LODWORD(result) = *(v24 + 2 * v20);
    while (1)
    {
      v27 = a3 - v25;
      v28 = 8 - v21;
      if (v27 < 8 - v21)
      {
        break;
      }

      v22 = 0;
      v21 = 0;
      v25 += v28;
      result = (result >> v28);
      if (v25 >= a3)
      {
        goto LABEL_20;
      }
    }

    v21 += v27;
    result = (result >> v27);
LABEL_20:
    ++v20;
  }

  while (v20 != 256);
  if (v21 >= 1)
  {
    *v23 = v22;
  }

  return result;
}

uint64_t mlkem::anonymous namespace::vector_decode<3>(void *a1, unsigned __int8 *a2, int a3)
{
  if (a3 < 1)
  {
    bzero(a1, 0x600uLL);
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (!v5)
        {
          v11 = *v7++;
          v6 = v11;
          v5 = 8;
        }

        v10 = a3 - v8;
        if (a3 - v8 >= v5)
        {
          v10 = v5;
        }

        v5 -= v10;
        v6 = (v6 >> v10);
        v8 += v10;
      }

      while (v8 < a3);
      if (v9 > 0xD00)
      {
        break;
      }

      *(a1 + v3) = v9;
      v4 = v3++ > 0xFE;
    }

    while (v3 != 256);
    if (!v4)
    {
      return 0;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = &a2[32 * a3];
    do
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if (!v14)
        {
          v20 = *v16++;
          v15 = v20;
          v14 = 8;
        }

        v19 = a3 - v17;
        if (a3 - v17 >= v14)
        {
          v19 = v14;
        }

        v14 -= v19;
        v15 = (v15 >> v19);
        v17 += v19;
      }

      while (v17 < a3);
      if (v18 > 0xD00)
      {
        break;
      }

      *(a1 + v12 + 256) = v18;
      v13 = v12++ > 0xFE;
    }

    while (v12 != 256);
    if (v13)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = &a2[64 * a3];
      do
      {
        v26 = 0;
        v27 = 0;
        do
        {
          if (!v23)
          {
            v29 = *v25++;
            v24 = v29;
            v23 = 8;
          }

          v28 = a3 - v26;
          if (a3 - v26 >= v23)
          {
            v28 = v23;
          }

          v23 -= v28;
          v24 = (v24 >> v28);
          v26 += v28;
        }

        while (v26 < a3);
        if (v27 > 0xD00)
        {
          break;
        }

        *(a1 + v21 + 512) = v27;
        v22 = v21++ > 0xFE;
      }

      while (v21 != 256);
      return v22;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlkem::anonymous namespace::encrypt_cpa<3>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v1527 = v6;
  v1528 = v3;
  v8 = v7;
  v1616 = *MEMORY[0x277D85DE8];
  v9 = v4[1];
  v10 = &v1607;
  v11 = &v1608;
  v1612[0] = *v4;
  v1612[1] = v9;
  v1613 = 0;
  v1613 = 1;
  v1613 = 2;
  v12 = v5[1];
  v1607 = *v5;
  v1608 = v12;
  v1609 = 3;
  v1609 = 4;
  v1609 = 5;
  v13 = v5[1];
  v1610[0] = *v5;
  v1610[1] = v13;
  v1611 = 6;
  v14 = v8 + 1600;
  bzero(&v1607, 0x600uLL);
  v15 = 0;
  v16 = v8 + 2112;
  v17 = v8 + 2624;
  v18 = vdupq_n_s32(0x13AFu);
  v19.i64[0] = 0xF2000000F2;
  v19.i64[1] = 0xF2000000F2;
  v20.i64[0] = 0xD000D000D000D00;
  v20.i64[1] = 0xD000D000D000D00;
  do
  {
    v21 = 0;
    do
    {
      v23 = (v14 + v21 * 2);
      v1619 = vld2q_s16(v23);
      v24 = &v1572[v21 / 8];
      v1626 = vld2q_s16(v24->i16);
      v25 = vmull_u16(*v1626.val[1].i8, *v1619.val[1].i8);
      v26 = vmull_high_u16(v1626.val[1], v1619.val[1]);
      v27 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v25.i8, *v18.i8), 0x18uLL), vmull_high_u32(v25, v18), 0x18uLL), v19), *v1626.val[1].i8, *v1619.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v26.i8, *v18.i8), 0x18uLL), vmull_high_u32(v26, v18), 0x18uLL), v19), v1626.val[1], v1619.val[1]));
      v28 = vaddq_s16(v27, v20);
      v29 = vorrq_s8(vandq_s8(vcltzq_s16(v28), v27), vmaxq_s16(v28, 0));
      v30 = *v22++;
      v31 = vmull_high_u16(v29, v30);
      v32 = vmlal_u16(vmull_u16(*v29.i8, *v30.i8), *v1626.val[0].i8, *v1619.val[0].i8);
      v33 = vmlal_high_u16(v31, v1626.val[0], v1619.val[0]);
      v34 = vuzp1q_s16(vmlaq_s32(v32, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v32.i8, *v18.i8), 0x18uLL), vmull_high_u32(v32, v18), 0x18uLL), v19), vmlaq_s32(v33, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v33.i8, *v18.i8), 0x18uLL), vmull_high_u32(v33, v18), 0x18uLL), v19));
      v35 = vaddq_s16(v34, v20);
      v36 = vmlal_u16(vmull_u16(*v1626.val[1].i8, *v1619.val[0].i8), *v1619.val[1].i8, *v1626.val[0].i8);
      v37 = vmlal_high_u16(vmull_high_u16(v1626.val[1], v1619.val[0]), v1619.val[1], v1626.val[0]);
      v38 = vuzp1q_s16(vmlaq_s32(v36, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v36.i8, *v18.i8), 0x18uLL), vmull_high_u32(v36, v18), 0x18uLL), v19), vmlaq_s32(v37, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v37.i8, *v18.i8), 0x18uLL), vmull_high_u32(v37, v18), 0x18uLL), v19));
      v39 = vorrq_s8(vandq_s8(vcltzq_s16(v35), v34), vmaxq_s16(v35, 0));
      v1619.val[1] = vaddq_s16(v38, v20);
      v1619.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v1619.val[1]), v38), vmaxq_s16(v1619.val[1], 0));
      v40 = &v1575.i16[v21];
      vst2q_s16(v40, v1619);
      v21 += 16;
    }

    while (v21 != 256);
    v41 = 0;
    v42 = v11;
    do
    {
      v43 = vaddq_s16(*(&v1575 + v41), v42[-1]);
      v44 = vaddq_s16(*(&v1575 + v41 + 16), *v42);
      v45 = vaddq_s16(v43, v20);
      v46 = vaddq_s16(v44, v20);
      v42[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v45), v43), vmaxq_s16(v45, 0));
      *v42 = vorrq_s8(vandq_s8(vcltzq_s16(v46), v44), vmaxq_s16(v46, 0));
      v42 += 2;
      v41 += 32;
    }

    while (v41 != 512);
    v47 = 0;
    do
    {
      v49 = (v16 + v47 * 2);
      v1620 = vld2q_s16(v49);
      v50 = &v1572[v47 / 8 + 32];
      v1627 = vld2q_s16(v50->i16);
      v51 = vmull_u16(*v1627.val[1].i8, *v1620.val[1].i8);
      v52 = vmull_high_u16(v1627.val[1], v1620.val[1]);
      v53 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v51.i8, *v18.i8), 0x18uLL), vmull_high_u32(v51, v18), 0x18uLL), v19), *v1627.val[1].i8, *v1620.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v52.i8, *v18.i8), 0x18uLL), vmull_high_u32(v52, v18), 0x18uLL), v19), v1627.val[1], v1620.val[1]));
      v54 = vaddq_s16(v53, v20);
      v55 = vorrq_s8(vandq_s8(vcltzq_s16(v54), v53), vmaxq_s16(v54, 0));
      v56 = *v48++;
      v57 = vmull_high_u16(v55, v56);
      v58 = vmlal_u16(vmull_u16(*v55.i8, *v56.i8), *v1627.val[0].i8, *v1620.val[0].i8);
      v59 = vmlal_high_u16(v57, v1627.val[0], v1620.val[0]);
      v60 = vuzp1q_s16(vmlaq_s32(v58, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v58.i8, *v18.i8), 0x18uLL), vmull_high_u32(v58, v18), 0x18uLL), v19), vmlaq_s32(v59, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v59.i8, *v18.i8), 0x18uLL), vmull_high_u32(v59, v18), 0x18uLL), v19));
      v61 = vaddq_s16(v60, v20);
      v62 = vmlal_u16(vmull_u16(*v1627.val[1].i8, *v1620.val[0].i8), *v1620.val[1].i8, *v1627.val[0].i8);
      v63 = vmlal_high_u16(vmull_high_u16(v1627.val[1], v1620.val[0]), v1620.val[1], v1627.val[0]);
      v64 = vuzp1q_s16(vmlaq_s32(v62, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v62.i8, *v18.i8), 0x18uLL), vmull_high_u32(v62, v18), 0x18uLL), v19), vmlaq_s32(v63, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v63.i8, *v18.i8), 0x18uLL), vmull_high_u32(v63, v18), 0x18uLL), v19));
      v65 = vorrq_s8(vandq_s8(vcltzq_s16(v61), v60), vmaxq_s16(v61, 0));
      v1620.val[1] = vaddq_s16(v64, v20);
      v1620.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v1620.val[1]), v64), vmaxq_s16(v1620.val[1], 0));
      v66 = &v1575.i16[v47];
      vst2q_s16(v66, v1620);
      v47 += 16;
    }

    while (v47 != 256);
    v67 = 0;
    v68 = v11;
    do
    {
      v69 = vaddq_s16(*(&v1575 + v67), v68[-1]);
      v70 = vaddq_s16(*(&v1575 + v67 + 16), *v68);
      v71 = vaddq_s16(v69, v20);
      v72 = vaddq_s16(v70, v20);
      v68[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v71), v69), vmaxq_s16(v71, 0));
      *v68 = vorrq_s8(vandq_s8(vcltzq_s16(v72), v70), vmaxq_s16(v72, 0));
      v68 += 2;
      v67 += 32;
    }

    while (v67 != 512);
    v73 = 0;
    do
    {
      v75 = (v17 + v73 * 2);
      v1621 = vld2q_s16(v75);
      v76 = &v1574[v73];
      v1628 = vld2q_s16(v76);
      v77 = vmull_u16(*v1628.val[1].i8, *v1621.val[1].i8);
      v78 = vmull_high_u16(v1628.val[1], v1621.val[1]);
      v79 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v77.i8, *v18.i8), 0x18uLL), vmull_high_u32(v77, v18), 0x18uLL), v19), *v1628.val[1].i8, *v1621.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v78.i8, *v18.i8), 0x18uLL), vmull_high_u32(v78, v18), 0x18uLL), v19), v1628.val[1], v1621.val[1]));
      v80 = vaddq_s16(v79, v20);
      v81 = vorrq_s8(vandq_s8(vcltzq_s16(v80), v79), vmaxq_s16(v80, 0));
      v82 = *v74++;
      v83 = vmull_high_u16(v81, v82);
      v84 = vmlal_u16(vmull_u16(*v81.i8, *v82.i8), *v1628.val[0].i8, *v1621.val[0].i8);
      v85 = vmlal_high_u16(v83, v1628.val[0], v1621.val[0]);
      v86 = vuzp1q_s16(vmlaq_s32(v84, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v84.i8, *v18.i8), 0x18uLL), vmull_high_u32(v84, v18), 0x18uLL), v19), vmlaq_s32(v85, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v85.i8, *v18.i8), 0x18uLL), vmull_high_u32(v85, v18), 0x18uLL), v19));
      v87 = vaddq_s16(v86, v20);
      v88 = vmlal_u16(vmull_u16(*v1628.val[1].i8, *v1621.val[0].i8), *v1621.val[1].i8, *v1628.val[0].i8);
      v89 = vmlal_high_u16(vmull_high_u16(v1628.val[1], v1621.val[0]), v1621.val[1], v1628.val[0]);
      v90 = vuzp1q_s16(vmlaq_s32(v88, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v88.i8, *v18.i8), 0x18uLL), vmull_high_u32(v88, v18), 0x18uLL), v19), vmlaq_s32(v89, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v89.i8, *v18.i8), 0x18uLL), vmull_high_u32(v89, v18), 0x18uLL), v19));
      v91 = vorrq_s8(vandq_s8(vcltzq_s16(v87), v86), vmaxq_s16(v87, 0));
      v1621.val[1] = vaddq_s16(v90, v20);
      v1621.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v1621.val[1]), v90), vmaxq_s16(v1621.val[1], 0));
      v92 = &v1575.i16[v73];
      vst2q_s16(v92, v1621);
      v73 += 16;
    }

    while (v73 != 256);
    for (i = 0; i != 32; i += 2)
    {
      v94 = vaddq_s16(*(&v1575 + i * 16), v10[i]);
      v95 = vaddq_s16(*(&v1575 + i * 16 + 16), v11[i]);
      v96 = vaddq_s16(v94, v20);
      v97 = vaddq_s16(v95, v20);
      v10[i] = vorrq_s8(vandq_s8(vcltzq_s16(v96), v94), vmaxq_s16(v96, 0));
      v11[i] = vorrq_s8(vandq_s8(vcltzq_s16(v97), v95), vmaxq_s16(v97, 0));
    }

    ++v15;
    v14 += 1536;
    v11 += 32;
    v16 += 1536;
    v17 += 1536;
    v10 += 32;
  }

  while (v15 != 3);
  v98 = 0;
  v99 = vdupq_n_s32(0xD01u);
  v100.i64[0] = 0xD000D000D000D00;
  v100.i64[1] = 0xD000D000D000D00;
  v101 = vdupq_n_s32(0x13AFu);
  v102.i64[0] = 0xF2000000F2;
  v102.i64[1] = 0xF2000000F2;
  v103 = 0uLL;
  v104 = xmmword_273BA7000;
  v105 = xmmword_273BA7030;
  v106 = xmmword_273BA7040;
  v107 = xmmword_273BA7050;
  v108 = xmmword_273BA7060;
  v109 = xmmword_273BA7070;
  v110 = xmmword_273BA7090;
  v111 = xmmword_273BA70A0;
  v112 = xmmword_273BA70B0;
  v113 = xmmword_273BA70C0;
  v114 = xmmword_273BA70F0;
  v115 = &v1607;
  v1530 = v99;
  do
  {
    v116 = 0;
    v117 = (&v1607 + 32 * v98);
    v118 = v115;
    do
    {
      v1642 = vld4q_s16(v118);
      v120 = vmovl_high_u16(v119);
      v121 = vmovl_u16(*v119.i8);
      v122 = vaddq_s16(v1642.val[0], v1642.val[2]);
      v123 = vaddq_s16(v122, v100);
      v124 = vmulq_s32(vaddq_s32(vsubl_u16(*v1642.val[0].i8, *v1642.val[2].i8), v99), v121);
      v125 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1642.val[0], v1642.val[2]), v99), v120);
      v126 = vuzp1q_s16(vmlaq_s32(v124, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v124.i8, *v101.i8), 0x18uLL), vmull_high_u32(v124, v101), 0x18uLL), v102), vmlaq_s32(v125, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v125.i8, *v101.i8), 0x18uLL), vmull_high_u32(v125, v101), 0x18uLL), v102));
      v127 = vaddq_s16(v126, v100);
      v128 = vaddq_s16(v1642.val[1], v1642.val[3]);
      v129 = vaddq_s16(v128, v100);
      v130 = vmulq_s32(vaddq_s32(vsubl_u16(*v1642.val[1].i8, *v1642.val[3].i8), v99), v121);
      v1642.val[0] = vmulq_s32(vaddq_s32(vsubl_high_u16(v1642.val[1], v1642.val[3]), v99), v120);
      v131 = vuzp1q_s16(vmlaq_s32(v130, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v130.i8, *v101.i8), 0x18uLL), vmull_high_u32(v130, v101), 0x18uLL), v102), vmlaq_s32(v1642.val[0], vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1642.val[0].i8, *v101.i8), 0x18uLL), vmull_high_u32(v1642.val[0], v101), 0x18uLL), v102));
      v1642.val[0] = vaddq_s16(v131, v100);
      v1644.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v129), v128), vmaxq_s16(v129, v103));
      v1644.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v123), v122), vmaxq_s16(v123, v103));
      v1644.val[3] = vorrq_s8(vandq_s8(vcltzq_s16(v1642.val[0]), v131), vmaxq_s16(v1642.val[0], v103));
      v1644.val[2] = vorrq_s8(vandq_s8(vcltzq_s16(v127), v126), vmaxq_s16(v127, v103));
      vst4q_s16(v118, v1644);
      v118 += 32;
      v116 += 16;
    }

    while (v116 != 128);
    v132 = 0;
    v133 = &xmmword_273BA9D68;
    v134 = v101;
    do
    {
      v135 = &v115[v132];
      v1631 = *&v115[v132 + 48];
      v1635 = *&v115[v132 + 32];
      v1633 = *&v115[v132 + 16];
      v136 = vqtbl2q_s8(v1635, xmmword_273BA7010);
      v1637 = *&v115[v132];
      v137 = v114;
      v138.i32[0] = vzip1q_s16(v1637.val[0], v1637.val[1]).u32[0];
      v136.i32[3] = vqtbl2q_s8(v1631, v104).i32[3];
      v138.i32[1] = vqtbl2q_s8(v1633, xmmword_273BA7020).i32[1];
      v139.i32[0] = vtrn2q_s16(v1637.val[0], v1637.val[1]).u32[0];
      v139.i32[1] = vzip1q_s16(*&v1633, *(&v1633 + 16)).i32[1];
      v140 = vqtbl2q_s8(v1635, v106);
      v141 = vzip1q_s16(v1635.val[0], v1635.val[1]);
      v140.i32[3] = vqtbl2q_s8(v1631, v105).i32[3];
      LOWORD(v142) = WORD2(*&v115[v132 + 16]);
      HIWORD(v142) = WORD2(*&v115[v132 + 24]);
      v143.i32[0] = vqtbl2q_s8(v1637, v108).u32[0];
      v141.i32[3] = vqtbl2q_s8(v1631, v107).i32[3];
      v144 = vqtbl2q_s8(v1635, v109);
      LODWORD(v145) = vqtbl2q_s8(v1637, xmmword_273BA7080).u32[0];
      v144.i32[3] = vzip1q_s16(*&v1631, *(&v1631 + 16)).i32[3];
      LOWORD(v146) = *&v115[v132 + 36];
      WORD1(v146) = *&v115[v132 + 44];
      HIDWORD(v145) = vtrn2q_s16(*&v1633, *(&v1633 + 16)).i32[1];
      v147.i64[0] = v145;
      v148.i32[0] = vzip2q_s16(v1637.val[0], v1637.val[1]).u32[0];
      v149 = *v133++;
      v150 = vtrn2q_s16(v1635.val[0], v1635.val[1]);
      v151.i32[0] = v148.i32[0];
      v150.i32[3] = vqtbl2q_s8(v1631, v112).i32[3];
      v151.i32[1] = vqtbl2q_s8(v1633, v111).i32[1];
      v152.i32[0] = vqtbl2q_s8(v1637, v113).u32[0];
      v153.i32[0] = v152.i32[0];
      v153.i32[1] = vzip2q_s16(*&v1633, *(&v1633 + 16)).i32[1];
      v143.i32[1] = v142;
      LOWORD(v154) = v1631.val[0].i16[6];
      HIWORD(v154) = v1631.val[1].i16[6];
      v155 = vzip2q_s16(v1635.val[0], v1635.val[1]);
      HIDWORD(v146) = vqtbl2q_s8(v1631, v110).i32[3];
      v156 = __PAIR64__(v154, v155.u32[2]);
      v157 = vqtbl2q_s8(v1635, v137);
      v138.i64[1] = v136.i64[1];
      v158 = vzip2q_s16(v1631.val[0], v1631.val[1]);
      v157.i32[3] = v158.i32[3];
      v159 = vqtbl2q_s8(v1633, xmmword_273BA7100);
      v139.i64[1] = v140.i64[1];
      v136.i64[0] = __PAIR64__(v159.u32[1], vqtbl2q_s8(v1637, xmmword_273BA7110).u32[0]);
      v1538 = v136.i32[0];
      v147.i64[1] = v144.i64[1];
      v155.i32[1] = vqtbl2q_s8(v1631, xmmword_273BA70A0).i32[1];
      v153.i64[1] = v150.i64[1];
      v148.i32[1] = v151.i32[1];
      *v140.i8 = vzip1_s16(*v1631.val[0].i8, *v1631.val[1].i8);
      v136.i64[1] = v157.i64[1];
      v1534 = v136;
      v157.i32[0] = vzip1_s16(*v1635.val[0].i8, *v1635.val[1].i8).u32[0];
      v157.i32[1] = vext_s8(*&v1631, *&v140, 4uLL).i32[1];
      *v144.i8 = vzip1_s16(*v1633.val[0].i8, *v1633.val[1].i8);
      v143.i64[1] = v141.i64[1];
      v141.i32[0] = vzip1_s16(*v1637.val[0].i8, *v1637.val[1].i8).u32[0];
      v141.i32[1] = vext_s8(*&v1633, *&v144, 4uLL).i32[1];
      v160 = vmovl_high_u16(v149);
      v161 = vmovl_u16(*v149.i8);
      v162 = vsubl_u16(*v141.i8, *v148.i8);
      v141.i32[0] = vqtbl2q_s8(v1637, xmmword_273BA70E0).u32[0];
      v151.i64[1] = v146;
      v148.i32[0] = v141.i32[0];
      v148.i32[1] = vqtbl2q_s8(v1633, xmmword_273BA70D0).i32[1];
      v148.i64[1] = v156;
      v163 = vmulq_s32(vaddq_s32(v162, v1530), v161);
      v162.i32[0] = vqtbl2q_s8(v1635, xmmword_273BA70C0).u32[0];
      v162.i32[1] = v158.i32[1];
      v164 = vmulq_s32(vaddq_s32(vsubl_u16(*v157.i8, *v155.i8), v1530), v160);
      v152.i32[1] = v153.i32[1];
      v155.i32[0] = vtrn2_s16(*v1635.val[0].i8, *v1635.val[1].i8).u32[0];
      v155.i32[1] = v140.i32[1];
      v165.i32[0] = vtrn2_s16(*v1637.val[0].i8, *v1637.val[1].i8).u32[0];
      v165.i32[1] = v144.i32[1];
      v1532 = vaddq_s16(v139, v153);
      v166 = vmulq_s32(vaddq_s32(vsubl_u16(v165, v152), v1530), v161);
      v167 = vaddq_s16(v138, v151);
      v168 = vmulq_s32(vaddq_s32(vsubl_u16(*v155.i8, *v162.i8), v1530), v160);
      v144.i32[0] = vqtbl2q_s8(v1635, xmmword_273BA70E0).u32[0];
      v144.i32[1] = vqtbl2q_s8(v1631, xmmword_273BA70D0).i32[1];
      v141.i32[1] = v148.i32[1];
      v157.i16[2] = WORD2(*&v115[v132 + 48]);
      v157.i16[3] = WORD2(*&v115[v132 + 56]);
      v169.i64[0] = 0xF2000000F2;
      v169.i64[1] = 0xF2000000F2;
      v165.i32[0] = vzip2_s16(*v1635.val[0].i8, *v1635.val[1].i8).u32[0];
      v165.i32[1] = v157.i32[1];
      v157.i16[2] = WORD2(*&v115[v132 + 16]);
      v157.i16[3] = WORD2(*&v115[v132 + 24]);
      v155.i32[0] = vzip2_s16(*v1637.val[0].i8, *v1637.val[1].i8).u32[0];
      v155.i32[1] = v157.i32[1];
      v170 = vaddq_s16(v143, v148);
      v171 = vmulq_s32(vaddq_s32(vsubl_u16(*v155.i8, *v141.i8), v1530), v161);
      v172 = vmulq_s32(vaddq_s32(vsubl_u16(v165, *v144.i8), v1530), v160);
      v157.i32[0] = vuzp2_s16(vuzp2_s16(*v1637.val[0].i8, *v1637.val[1].i8), *v1637.val[0].i8).u32[0];
      v162.i32[0] = vuzp2_s16(vuzp2_s16(*v1635.val[0].i8, *v1635.val[1].i8), *v1635.val[0].i8).u32[0];
      v140.i32[0] = vqtbl2q_s8(v1635, xmmword_273BA7110).u32[0];
      v140.i32[1] = vqtbl2q_s8(v1631, xmmword_273BA7100).i32[1];
      v173 = vuzp1q_s16(vmlaq_s32(v166, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v166.i8, *v134.i8), 0x18uLL), vmull_high_u32(v166, v134), 0x18uLL), v169), vmlaq_s32(v168, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v168.i8, *v134.i8), 0x18uLL), vmull_high_u32(v168, v134), 0x18uLL), v169));
      v114 = xmmword_273BA70F0;
      v104 = xmmword_273BA7000;
      v109 = xmmword_273BA7070;
      v162.i32[1] = vzip2_s16(*&v1631, *(&v1631 + 16)).i32[1];
      v1635.val[0] = vuzp1q_s16(vmlaq_s32(v163, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v163.i8, *v134.i8), 0x18uLL), vmull_high_u32(v163, v134), 0x18uLL), v169), vmlaq_s32(v164, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v164.i8, *v134.i8), 0x18uLL), vmull_high_u32(v164, v134), 0x18uLL), v169));
      v166.i64[0] = 0xD000D000D000D00;
      v166.i64[1] = 0xD000D000D000D00;
      v1631.val[1] = vaddq_s16(v167, v166);
      v157.i32[1] = vzip2_s16(*&v1633, *(&v1633 + 16)).i32[1];
      v1631.val[0] = vaddq_s16(v1532, v166);
      v174 = vaddq_s16(v173, v166);
      v1633.val[0] = vaddq_s16(v147, v1534);
      v1633.val[1] = vaddq_s16(v170, v166);
      v1635.val[1] = vaddq_s16(v1633.val[0], v166);
      v175 = vmulq_s32(vaddq_s32(vsubl_u16(*v157.i8, __PAIR64__(v159.u32[1], v1538)), v1530), v161);
      v111 = xmmword_273BA70A0;
      v176 = vmulq_s32(vaddq_s32(vsubl_u16(*v162.i8, *v140.i8), v1530), v160);
      v106 = xmmword_273BA7040;
      v177 = vuzp1q_s16(vmlaq_s32(v171, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v171.i8, *v134.i8), 0x18uLL), vmull_high_u32(v171, v134), 0x18uLL), v169), vmlaq_s32(v172, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v172.i8, *v134.i8), 0x18uLL), vmull_high_u32(v172, v134), 0x18uLL), v169));
      v1637.val[1] = vaddq_s16(v1635.val[0], v166);
      v178 = vaddq_s16(v177, v166);
      v179 = vuzp1q_s16(vmlaq_s32(v175, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v175.i8, *v134.i8), 0x18uLL), vmull_high_u32(v175, v134), 0x18uLL), v169), vmlaq_s32(v176, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v176.i8, *v134.i8), 0x18uLL), vmull_high_u32(v176, v134), 0x18uLL), v169));
      v180 = vaddq_s16(v179, v166);
      v107 = xmmword_273BA7050;
      v181 = vandq_s8(vcltzq_s16(v1635.val[1]), v1633.val[0]);
      v182 = vandq_s8(vcltzq_s16(v1633.val[1]), v170);
      v105 = xmmword_273BA7030;
      v113 = xmmword_273BA70C0;
      v108 = xmmword_273BA7060;
      v110 = xmmword_273BA7090;
      v103 = 0uLL;
      v1637.val[0] = vmaxq_s16(v1633.val[1], 0);
      v1633.val[1] = vmaxq_s16(v1635.val[1], 0);
      v183 = vandq_s8(vcltzq_s16(v1631.val[1]), v167);
      v112 = xmmword_273BA70B0;
      v1635.val[1] = vmaxq_s16(v1631.val[1], 0);
      v1631.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1631.val[0]), v1532), vmaxq_s16(v1631.val[0], 0));
      v1631.val[0] = vorrq_s8(v183, v1635.val[1]);
      v1633.val[1] = vorrq_s8(v181, v1633.val[1]);
      v184 = vandq_s8(vcltzq_s16(v1637.val[1]), v1635.val[0]);
      v185 = vmaxq_s16(v1637.val[1], 0);
      v1633.val[0] = vorrq_s8(v182, v1637.val[0]);
      v186 = vorrq_s8(vandq_s8(vcltzq_s16(v180), v179), vmaxq_s16(v180, 0));
      v1637.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v178), v177), vmaxq_s16(v178, 0));
      v1618.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v174), v173), vmaxq_s16(v174, 0));
      v1618.val[0] = vorrq_s8(v184, v185);
      v187 = vqtbl2q_s8(v1618, xmmword_273BA7040);
      v1635.val[0].i32[0] = vtrn2q_s16(v1631.val[0], v1631.val[1]).u32[0];
      v1635.val[0].i32[1] = vzip1q_s16(*&v1633, *(&v1633 + 16)).i32[1];
      v179.i16[2] = v1633.val[0].i16[2];
      v1635.val[1] = vqtbl2q_s8(v1618, xmmword_273BA7010);
      v1637.val[0].i32[0] = vzip1q_s16(v1631.val[0], v1631.val[1]).u32[0];
      v1637.val[0].i32[1] = vqtbl2q_s8(v1633, xmmword_273BA7020).i32[1];
      v187.i32[3] = vqtbl2q_s8(*(&v1637 + 16), xmmword_273BA7030).i32[3];
      v188 = vzip1q_s16(v1618.val[0], v1618.val[1]);
      v179.i16[3] = v1633.val[1].i16[2];
      v1635.val[1].i32[3] = vqtbl2q_s8(*(&v1637 + 16), xmmword_273BA7000).i32[3];
      v159.i32[0] = vqtbl2q_s8(v1631, xmmword_273BA7060).u32[0];
      v159.i32[1] = v179.i32[1];
      v188.i32[3] = vqtbl2q_s8(*(&v1637 + 16), xmmword_273BA7050).i32[3];
      v189 = vtrn2q_s16(v1618.val[0], v1618.val[1]);
      v190 = vqtbl2q_s8(*(&v1637 + 16), xmmword_273BA7090);
      v191 = vzip1q_s16(v1637.val[1], v186);
      v189.i32[3] = vqtbl2q_s8(*(&v1637 + 16), xmmword_273BA70B0).i32[3];
      v192 = vzip2q_s16(v1637.val[1], v186);
      v193 = vzip2q_s16(v1618.val[0], v1618.val[1]);
      v1637.val[1].i16[7] = v186.i16[6];
      v193.i32[3] = v1637.val[1].i32[3];
      v186.i32[0] = vqtbl2q_s8(v1631, xmmword_273BA70C0).u32[0];
      v186.i32[1] = vzip2q_s16(*&v1633, *(&v1633 + 16)).i32[1];
      v1637.val[1].i16[4] = v1618.val[0].i16[4];
      v1637.val[1].i16[5] = v1618.val[1].i16[4];
      v1637.val[1].i32[3] = v190.i32[3];
      v1635.val[0].i64[1] = v187.i64[1];
      v190.i32[0] = vzip2q_s16(v1631.val[0], v1631.val[1]).u32[0];
      v190.i32[1] = vqtbl2q_s8(v1633, xmmword_273BA70A0).i32[1];
      v159.i64[1] = v188.i64[1];
      v194 = vqtbl2q_s8(v1618, xmmword_273BA7070);
      v194.i32[3] = v191.i32[3];
      v186.i64[1] = v189.i64[1];
      v191.i32[0] = vqtbl2q_s8(v1631, xmmword_273BA7080).u32[0];
      v191.i32[1] = vtrn2q_s16(*&v1633, *(&v1633 + 16)).i32[1];
      v191.i64[1] = v194.i64[1];
      v195 = vqtbl2q_s8(v1618, xmmword_273BA70F0);
      v195.i32[3] = v192.i32[3];
      v190.i64[1] = v1637.val[1].i64[1];
      v192.i32[0] = vqtbl2q_s8(v1631, xmmword_273BA7110).u32[0];
      v192.i32[1] = vqtbl2q_s8(v1633, xmmword_273BA7100).i32[1];
      *(v135 + 2) = v159;
      *(v135 + 3) = v191;
      v192.i64[1] = v195.i64[1];
      v194.i32[0] = vqtbl2q_s8(v1631, xmmword_273BA70E0).u32[0];
      *(v135 + 4) = v190;
      *(v135 + 5) = v186;
      v194.i32[1] = vqtbl2q_s8(v1633, xmmword_273BA70D0).i32[1];
      v194.i64[1] = v193.i64[1];
      *(v135 + 6) = v194;
      *(v135 + 7) = v192;
      v1637.val[0].i64[1] = v1635.val[1].i64[1];
      *v135 = v1637.val[0];
      *(v135 + 1) = v1635.val[0];
      v132 += 64;
    }

    while (v132 != 256);
    v196 = 0;
    v99 = v1530;
    v100.i64[0] = 0xD000D000D000D00;
    v100.i64[1] = 0xD000D000D000D00;
    v101 = v134;
    v102.i64[0] = 0xF2000000F2;
    v102.i64[1] = 0xF2000000F2;
    do
    {
      v197 = &v115[8 * v196];
      v198 = v197[1];
      v199 = vaddq_s16(*v197, v198);
      v200 = vaddq_s16(v199, v100);
      v202 = vmulq_s32(vaddq_s32(vsubl_u16(*v197->i8, *v198.i8), v1530), v201);
      v203 = vmulq_s32(vaddq_s32(vsubl_high_u16(*v197, v198), v1530), v201);
      v204 = vuzp1q_s16(vmlaq_s32(v202, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v202.i8, *v101.i8), 0x18uLL), vmull_high_u32(v202, v101), 0x18uLL), v102), vmlaq_s32(v203, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v203.i8, *v101.i8), 0x18uLL), vmull_high_u32(v203, v101), 0x18uLL), v102));
      v205 = vaddq_s16(v204, v100);
      *v197 = vorrq_s8(vandq_s8(vcltzq_s16(v200), v199), vmaxq_s16(v200, 0));
      v197[1] = vorrq_s8(vandq_s8(vcltzq_s16(v205), v204), vmaxq_s16(v205, 0));
      v196 += 2;
    }

    while (v196 != 32);
    v206 = 0;
    v207 = v117[2];
    v208 = v117[3];
    v209 = v117[1];
    v210 = vaddq_s16(*v117, v207);
    v211 = vaddq_s16(v210, v100);
    v212 = vorrq_s8(vandq_s8(vcltzq_s16(v211), v210), vmaxq_s16(v211, 0));
    v213 = vdupq_n_s16(0x62Fu);
    v214 = vmlsl_high_u16(vmull_high_u16(*v117, v213), v207, v213);
    v215 = vmlsl_u16(vmull_u16(*v117->i8, *v213.i8), *v207.i8, *v213.i8);
    v216 = vdupq_n_s32(0x50692Fu);
    v217 = vaddq_s32(v215, v216);
    v218 = vaddq_s32(v214, v216);
    v219 = vuzp1q_s16(vmlaq_s32(v217, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v217.i8, *v101.i8), 0x18uLL), vmull_high_u32(v217, v101), 0x18uLL), v102), vmlaq_s32(v218, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v218.i8, *v101.i8), 0x18uLL), vmull_high_u32(v218, v101), 0x18uLL), v102));
    v220 = vaddq_s16(v219, v100);
    v221 = vorrq_s8(vandq_s8(vcltzq_s16(v220), v219), vmaxq_s16(v220, 0));
    v222 = vaddq_s16(v209, v208);
    v223 = vaddq_s16(v222, v100);
    *v117 = v212;
    v117[1] = vorrq_s8(vandq_s8(vcltzq_s16(v223), v222), vmaxq_s16(v223, 0));
    v224 = vmlsl_high_u16(vmull_high_u16(v209, v213), v208, v213);
    v225 = vaddq_s32(vmlsl_u16(vmull_u16(*v209.i8, *v213.i8), *v208.i8, *v213.i8), v216);
    v226 = vaddq_s32(v224, v216);
    v227 = vuzp1q_s16(vmlaq_s32(v225, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v225.i8, *v101.i8), 0x18uLL), vmull_high_u32(v225, v101), 0x18uLL), v102), vmlaq_s32(v226, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v226.i8, *v101.i8), 0x18uLL), vmull_high_u32(v226, v101), 0x18uLL), v102));
    v228 = vaddq_s16(v227, v100);
    v117[2] = v221;
    v117[3] = vorrq_s8(vandq_s8(vcltzq_s16(v228), v227), vmaxq_s16(v228, 0));
    v229 = v117[6];
    v230 = v117[7];
    v231 = v117[4];
    v232 = v117[5];
    v233 = vaddq_s16(v231, v229);
    v234 = vaddq_s16(v233, v100);
    v235 = vorrq_s8(vandq_s8(vcltzq_s16(v234), v233), vmaxq_s16(v234, 0));
    v236 = vdupq_n_s16(0xAC8u);
    v237 = vmlsl_high_u16(vmull_high_u16(v231, v236), v229, v236);
    v238 = vmlsl_u16(vmull_u16(*v231.i8, *v236.i8), *v229.i8, *v236.i8);
    v239 = vdupq_n_s32(0x8C32C8u);
    v240 = vaddq_s32(v238, v239);
    v241 = vaddq_s32(v237, v239);
    v242 = vuzp1q_s16(vmlaq_s32(v240, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v240.i8, *v101.i8), 0x18uLL), vmull_high_u32(v240, v101), 0x18uLL), v102), vmlaq_s32(v241, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v241.i8, *v101.i8), 0x18uLL), vmull_high_u32(v241, v101), 0x18uLL), v102));
    v243 = vaddq_s16(v242, v100);
    v244 = vorrq_s8(vandq_s8(vcltzq_s16(v243), v242), vmaxq_s16(v243, 0));
    v245 = vaddq_s16(v232, v230);
    v246 = vaddq_s16(v245, v100);
    v117[4] = v235;
    v117[5] = vorrq_s8(vandq_s8(vcltzq_s16(v246), v245), vmaxq_s16(v246, 0));
    v247 = vmlsl_high_u16(vmull_high_u16(v232, v236), v230, v236);
    v248 = vaddq_s32(vmlsl_u16(vmull_u16(*v232.i8, *v236.i8), *v230.i8, *v236.i8), v239);
    v249 = vaddq_s32(v247, v239);
    v250 = vuzp1q_s16(vmlaq_s32(v248, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v248.i8, *v101.i8), 0x18uLL), vmull_high_u32(v248, v101), 0x18uLL), v102), vmlaq_s32(v249, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v249.i8, *v101.i8), 0x18uLL), vmull_high_u32(v249, v101), 0x18uLL), v102));
    v251 = vaddq_s16(v250, v100);
    v117[6] = v244;
    v117[7] = vorrq_s8(vandq_s8(vcltzq_s16(v251), v250), vmaxq_s16(v251, 0));
    v252 = v117[10];
    v253 = v117[11];
    v254 = v117[8];
    v255 = v117[9];
    v256 = vaddq_s16(v254, v252);
    v257 = vaddq_s16(v256, v100);
    v258 = vorrq_s8(vandq_s8(vcltzq_s16(v257), v256), vmaxq_s16(v257, 0));
    v259.i64[0] = 0x45004500450045;
    v259.i64[1] = 0x45004500450045;
    v260 = vmlsl_high_u16(vmull_high_u16(v254, v259), v252, v259);
    v261 = vmlsl_u16(vmull_u16(*v254.i8, 0x45004500450045), *v252.i8, 0x45004500450045);
    v262 = vdupq_n_s32(0x38145u);
    v263 = vaddq_s32(v261, v262);
    v264 = vaddq_s32(v260, v262);
    v265 = vuzp1q_s16(vmlaq_s32(v263, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v263.i8, *v101.i8), 0x18uLL), vmull_high_u32(v263, v101), 0x18uLL), v102), vmlaq_s32(v264, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v264.i8, *v101.i8), 0x18uLL), vmull_high_u32(v264, v101), 0x18uLL), v102));
    v266 = vaddq_s16(v265, v100);
    v267 = vorrq_s8(vandq_s8(vcltzq_s16(v266), v265), vmaxq_s16(v266, 0));
    v268 = vaddq_s16(v255, v253);
    v269 = vaddq_s16(v268, v100);
    v117[8] = v258;
    v117[9] = vorrq_s8(vandq_s8(vcltzq_s16(v269), v268), vmaxq_s16(v269, 0));
    v270 = vmlsl_high_u16(vmull_high_u16(v255, v259), v253, v259);
    v271 = vaddq_s32(vmlsl_u16(vmull_u16(*v255.i8, 0x45004500450045), *v253.i8, 0x45004500450045), v262);
    v272 = vaddq_s32(v270, v262);
    v273 = vuzp1q_s16(vmlaq_s32(v271, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v271.i8, *v101.i8), 0x18uLL), vmull_high_u32(v271, v101), 0x18uLL), v102), vmlaq_s32(v272, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v272.i8, *v101.i8), 0x18uLL), vmull_high_u32(v272, v101), 0x18uLL), v102));
    v274 = vaddq_s16(v273, v100);
    v117[10] = v267;
    v117[11] = vorrq_s8(vandq_s8(vcltzq_s16(v274), v273), vmaxq_s16(v274, 0));
    v275 = v117[14];
    v276 = v117[15];
    v277 = v117[12];
    v278 = v117[13];
    v279 = vaddq_s16(v277, v275);
    v280 = vaddq_s16(v279, v100);
    v281 = vorrq_s8(vandq_s8(vcltzq_s16(v280), v279), vmaxq_s16(v280, 0));
    v282 = vdupq_n_s16(0x21Fu);
    v283 = vmlsl_high_u16(vmull_high_u16(v277, v282), v275, v282);
    v284 = vmlsl_u16(vmull_u16(*v277.i8, *v282.i8), *v275.i8, *v282.i8);
    v285 = vdupq_n_s32(0x1B951Fu);
    v286 = vaddq_s32(v284, v285);
    v287 = vaddq_s32(v283, v285);
    v288 = vuzp1q_s16(vmlaq_s32(v286, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v286.i8, *v101.i8), 0x18uLL), vmull_high_u32(v286, v101), 0x18uLL), v102), vmlaq_s32(v287, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v287.i8, *v101.i8), 0x18uLL), vmull_high_u32(v287, v101), 0x18uLL), v102));
    v289 = vaddq_s16(v288, v100);
    v290 = vorrq_s8(vandq_s8(vcltzq_s16(v289), v288), vmaxq_s16(v289, 0));
    v291 = vaddq_s16(v278, v276);
    v292 = vaddq_s16(v291, v100);
    v117[12] = v281;
    v117[13] = vorrq_s8(vandq_s8(vcltzq_s16(v292), v291), vmaxq_s16(v292, 0));
    v293 = vmlsl_high_u16(vmull_high_u16(v278, v282), v276, v282);
    v294 = vaddq_s32(vmlsl_u16(vmull_u16(*v278.i8, *v282.i8), *v276.i8, *v282.i8), v285);
    v295 = vaddq_s32(v293, v285);
    v296 = vuzp1q_s16(vmlaq_s32(v294, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v294.i8, *v101.i8), 0x18uLL), vmull_high_u32(v294, v101), 0x18uLL), v102), vmlaq_s32(v295, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v295.i8, *v101.i8), 0x18uLL), vmull_high_u32(v295, v101), 0x18uLL), v102));
    v297 = vaddq_s16(v296, v100);
    v117[14] = v290;
    v117[15] = vorrq_s8(vandq_s8(vcltzq_s16(v297), v296), vmaxq_s16(v297, 0));
    v298 = v117[18];
    v299 = v117[19];
    v300 = v117[16];
    v301 = v117[17];
    v302 = vaddq_s16(v300, v298);
    v303 = vaddq_s16(v302, v100);
    v304 = vorrq_s8(vandq_s8(vcltzq_s16(v303), v302), vmaxq_s16(v303, 0));
    v305 = vdupq_n_s16(0x9E4u);
    v306 = vmlsl_high_u16(vmull_high_u16(v300, v305), v298, v305);
    v307 = vmlsl_u16(vmull_u16(*v300.i8, *v305.i8), *v298.i8, *v305.i8);
    v308 = vdupq_n_s32(0x809DE4u);
    v309 = vaddq_s32(v307, v308);
    v310 = vaddq_s32(v306, v308);
    v311 = vuzp1q_s16(vmlaq_s32(v309, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v309.i8, *v101.i8), 0x18uLL), vmull_high_u32(v309, v101), 0x18uLL), v102), vmlaq_s32(v310, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v310.i8, *v101.i8), 0x18uLL), vmull_high_u32(v310, v101), 0x18uLL), v102));
    v312 = vaddq_s16(v311, v100);
    v313 = vorrq_s8(vandq_s8(vcltzq_s16(v312), v311), vmaxq_s16(v312, 0));
    v314 = vaddq_s16(v301, v299);
    v315 = vaddq_s16(v314, v100);
    v117[16] = v304;
    v117[17] = vorrq_s8(vandq_s8(vcltzq_s16(v315), v314), vmaxq_s16(v315, 0));
    v316 = vmlsl_high_u16(vmull_high_u16(v301, v305), v299, v305);
    v317 = vaddq_s32(vmlsl_u16(vmull_u16(*v301.i8, *v305.i8), *v299.i8, *v305.i8), v308);
    v318 = vaddq_s32(v316, v308);
    v319 = vuzp1q_s16(vmlaq_s32(v317, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v317.i8, *v101.i8), 0x18uLL), vmull_high_u32(v317, v101), 0x18uLL), v102), vmlaq_s32(v318, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v318.i8, *v101.i8), 0x18uLL), vmull_high_u32(v318, v101), 0x18uLL), v102));
    v320 = vaddq_s16(v319, v100);
    v117[18] = v313;
    v117[19] = vorrq_s8(vandq_s8(vcltzq_s16(v320), v319), vmaxq_s16(v320, 0));
    v321 = v117[22];
    v322 = v117[23];
    v323 = v117[20];
    v324 = v117[21];
    v325 = vaddq_s16(v323, v321);
    v326 = vaddq_s16(v325, v100);
    v327 = vorrq_s8(vandq_s8(vcltzq_s16(v326), v325), vmaxq_s16(v326, 0));
    v328 = vdupq_n_s16(0xC40u);
    v329 = vmlsl_high_u16(vmull_high_u16(v323, v328), v321, v328);
    v330 = vmlsl_u16(vmull_u16(*v323.i8, *v328.i8), *v321.i8, *v328.i8);
    v331 = vdupq_n_s32(0x9F4C40u);
    v332 = vaddq_s32(v330, v331);
    v333 = vaddq_s32(v329, v331);
    v334 = vuzp1q_s16(vmlaq_s32(v332, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v332.i8, *v101.i8), 0x18uLL), vmull_high_u32(v332, v101), 0x18uLL), v102), vmlaq_s32(v333, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v333.i8, *v101.i8), 0x18uLL), vmull_high_u32(v333, v101), 0x18uLL), v102));
    v335 = vaddq_s16(v334, v100);
    v336 = vorrq_s8(vandq_s8(vcltzq_s16(v335), v334), vmaxq_s16(v335, 0));
    v337 = vaddq_s16(v324, v322);
    v338 = vaddq_s16(v337, v100);
    v117[20] = v327;
    v117[21] = vorrq_s8(vandq_s8(vcltzq_s16(v338), v337), vmaxq_s16(v338, 0));
    v339 = vmlsl_high_u16(vmull_high_u16(v324, v328), v322, v328);
    v340 = vaddq_s32(vmlsl_u16(vmull_u16(*v324.i8, *v328.i8), *v322.i8, *v328.i8), v331);
    v341 = vaddq_s32(v339, v331);
    v342 = vuzp1q_s16(vmlaq_s32(v340, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v340.i8, *v101.i8), 0x18uLL), vmull_high_u32(v340, v101), 0x18uLL), v102), vmlaq_s32(v341, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v341.i8, *v101.i8), 0x18uLL), vmull_high_u32(v341, v101), 0x18uLL), v102));
    v343 = vaddq_s16(v342, v100);
    v117[22] = v336;
    v117[23] = vorrq_s8(vandq_s8(vcltzq_s16(v343), v342), vmaxq_s16(v343, 0));
    v344 = v117[26];
    v345 = v117[27];
    v346 = v117[24];
    v347 = v117[25];
    v348 = vaddq_s16(v346, v344);
    v349 = vaddq_s16(v348, v100);
    v350 = vorrq_s8(vandq_s8(vcltzq_s16(v349), v348), vmaxq_s16(v349, 0));
    v351 = vdupq_n_s16(0x582u);
    v352 = vmlsl_high_u16(vmull_high_u16(v346, v351), v344, v351);
    v353 = vmlsl_u16(vmull_u16(*v346.i8, *v351.i8), *v344.i8, *v351.i8);
    v354 = vdupq_n_s32(0x479F82u);
    v355 = vaddq_s32(v353, v354);
    v356 = vaddq_s32(v352, v354);
    v357 = vuzp1q_s16(vmlaq_s32(v355, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v355.i8, *v101.i8), 0x18uLL), vmull_high_u32(v355, v101), 0x18uLL), v102), vmlaq_s32(v356, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v356.i8, *v101.i8), 0x18uLL), vmull_high_u32(v356, v101), 0x18uLL), v102));
    v358 = vaddq_s16(v357, v100);
    v359 = vorrq_s8(vandq_s8(vcltzq_s16(v358), v357), vmaxq_s16(v358, 0));
    v360 = vaddq_s16(v347, v345);
    v361 = vaddq_s16(v360, v100);
    v117[24] = v350;
    v117[25] = vorrq_s8(vandq_s8(vcltzq_s16(v361), v360), vmaxq_s16(v361, 0));
    v362 = vmlsl_high_u16(vmull_high_u16(v347, v351), v345, v351);
    v363 = vaddq_s32(vmlsl_u16(vmull_u16(*v347.i8, *v351.i8), *v345.i8, *v351.i8), v354);
    v364 = vaddq_s32(v362, v354);
    v365 = vuzp1q_s16(vmlaq_s32(v363, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v363.i8, *v101.i8), 0x18uLL), vmull_high_u32(v363, v101), 0x18uLL), v102), vmlaq_s32(v364, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v364.i8, *v101.i8), 0x18uLL), vmull_high_u32(v364, v101), 0x18uLL), v102));
    v366 = vaddq_s16(v365, v100);
    v117[26] = v359;
    v117[27] = vorrq_s8(vandq_s8(vcltzq_s16(v366), v365), vmaxq_s16(v366, 0));
    v367 = v117[30];
    v368 = v117[31];
    v369 = v117[28];
    v370 = v117[29];
    v371 = vaddq_s16(v369, v367);
    v372 = vaddq_s16(v371, v100);
    v373 = vorrq_s8(vandq_s8(vcltzq_s16(v372), v371), vmaxq_s16(v372, 0));
    v374 = vdupq_n_s16(0x8DBu);
    v375 = vmlsl_high_u16(vmull_high_u16(v369, v374), v367, v374);
    v376 = vmlsl_u16(vmull_u16(*v369.i8, *v374.i8), *v367.i8, *v374.i8);
    v377 = vdupq_n_s32(0x7327DBu);
    v378 = vaddq_s32(v376, v377);
    v379 = vaddq_s32(v375, v377);
    v380 = vuzp1q_s16(vmlaq_s32(v378, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v378.i8, *v101.i8), 0x18uLL), vmull_high_u32(v378, v101), 0x18uLL), v102), vmlaq_s32(v379, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v379.i8, *v101.i8), 0x18uLL), vmull_high_u32(v379, v101), 0x18uLL), v102));
    v381 = vaddq_s16(v380, v100);
    v382 = vorrq_s8(vandq_s8(vcltzq_s16(v381), v380), vmaxq_s16(v381, 0));
    v383 = vaddq_s16(v370, v368);
    v384 = vaddq_s16(v383, v100);
    v117[28] = v373;
    v117[29] = vorrq_s8(vandq_s8(vcltzq_s16(v384), v383), vmaxq_s16(v384, 0));
    v385 = vmlsl_high_u16(vmull_high_u16(v370, v374), v368, v374);
    v386 = vaddq_s32(vmlsl_u16(vmull_u16(*v370.i8, *v374.i8), *v368.i8, *v374.i8), v377);
    v387 = vaddq_s32(v385, v377);
    v388 = vuzp1q_s16(vmlaq_s32(v386, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v386.i8, *v101.i8), 0x18uLL), vmull_high_u32(v386, v101), 0x18uLL), v102), vmlaq_s32(v387, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v387.i8, *v101.i8), 0x18uLL), vmull_high_u32(v387, v101), 0x18uLL), v102));
    v389 = vaddq_s16(v388, v100);
    v117[30] = v382;
    v117[31] = vorrq_s8(vandq_s8(vcltzq_s16(v389), v388), vmaxq_s16(v389, 0));
    v390 = v117[4];
    v391 = v117[5];
    v392 = v117[1];
    v393 = vaddq_s16(*v117, v390);
    v394 = vaddq_s16(v393, v100);
    v395 = vorrq_s8(vandq_s8(vcltzq_s16(v394), v393), vmaxq_s16(v394, 0));
    v396 = vdupq_n_s16(0x9B1u);
    v397 = vmlsl_high_u16(vmull_high_u16(*v117, v396), v390, v396);
    v398 = vdupq_n_s32(0x7E06B1u);
    v399 = vaddq_s32(vmlsl_u16(vmull_u16(*v117->i8, *v396.i8), *v390.i8, *v396.i8), v398);
    v400 = vaddq_s32(v397, v398);
    v401 = vuzp1q_s16(vmlaq_s32(v399, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v399.i8, *v101.i8), 0x18uLL), vmull_high_u32(v399, v101), 0x18uLL), v102), vmlaq_s32(v400, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v400.i8, *v101.i8), 0x18uLL), vmull_high_u32(v400, v101), 0x18uLL), v102));
    v402 = vaddq_s16(v401, v100);
    v403 = vorrq_s8(vandq_s8(vcltzq_s16(v402), v401), vmaxq_s16(v402, 0));
    v404 = vaddq_s16(v392, v391);
    v405 = vaddq_s16(v404, v100);
    *v117 = v395;
    v117[1] = vorrq_s8(vandq_s8(vcltzq_s16(v405), v404), vmaxq_s16(v405, 0));
    v406 = vmlsl_high_u16(vmull_high_u16(v392, v396), v391, v396);
    v407 = vaddq_s32(vmlsl_u16(vmull_u16(*v392.i8, *v396.i8), *v391.i8, *v396.i8), v398);
    v408 = vaddq_s32(v406, v398);
    v409 = vuzp1q_s16(vmlaq_s32(v407, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v407.i8, *v101.i8), 0x18uLL), vmull_high_u32(v407, v101), 0x18uLL), v102), vmlaq_s32(v408, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v408.i8, *v101.i8), 0x18uLL), vmull_high_u32(v408, v101), 0x18uLL), v102));
    v410 = vaddq_s16(v409, v100);
    v117[4] = v403;
    v117[5] = vorrq_s8(vandq_s8(vcltzq_s16(v410), v409), vmaxq_s16(v410, 0));
    v411 = v117[6];
    v412 = v117[7];
    v413 = v117[2];
    v414 = v117[3];
    v415 = vaddq_s16(v413, v411);
    v416 = vaddq_s16(v415, v100);
    v417 = vorrq_s8(vandq_s8(vcltzq_s16(v416), v415), vmaxq_s16(v416, 0));
    v418 = vmlsl_high_u16(vmull_high_u16(v413, v396), v411, v396);
    v419 = vaddq_s32(vmlsl_u16(vmull_u16(*v413.i8, *v396.i8), *v411.i8, *v396.i8), v398);
    v420 = vaddq_s32(v418, v398);
    v421 = vuzp1q_s16(vmlaq_s32(v419, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v419.i8, *v101.i8), 0x18uLL), vmull_high_u32(v419, v101), 0x18uLL), v102), vmlaq_s32(v420, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v420.i8, *v101.i8), 0x18uLL), vmull_high_u32(v420, v101), 0x18uLL), v102));
    v422 = vaddq_s16(v421, v100);
    v423 = vorrq_s8(vandq_s8(vcltzq_s16(v422), v421), vmaxq_s16(v422, 0));
    v424 = vaddq_s16(v414, v412);
    v425 = vaddq_s16(v424, v100);
    v117[2] = v417;
    v117[3] = vorrq_s8(vandq_s8(vcltzq_s16(v425), v424), vmaxq_s16(v425, 0));
    v426 = vmlsl_high_u16(vmull_high_u16(v414, v396), v412, v396);
    v427 = vaddq_s32(vmlsl_u16(vmull_u16(*v414.i8, *v396.i8), *v412.i8, *v396.i8), v398);
    v428 = vaddq_s32(v426, v398);
    v429 = vuzp1q_s16(vmlaq_s32(v427, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v427.i8, *v101.i8), 0x18uLL), vmull_high_u32(v427, v101), 0x18uLL), v102), vmlaq_s32(v428, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v428.i8, *v101.i8), 0x18uLL), vmull_high_u32(v428, v101), 0x18uLL), v102));
    v430 = vaddq_s16(v429, v100);
    v117[6] = v423;
    v117[7] = vorrq_s8(vandq_s8(vcltzq_s16(v430), v429), vmaxq_s16(v430, 0));
    v431 = v117[12];
    v432 = v117[13];
    v433 = v117[8];
    v434 = v117[9];
    v435 = vaddq_s16(v433, v431);
    v436 = vaddq_s16(v435, v100);
    v437 = vorrq_s8(vandq_s8(vcltzq_s16(v436), v435), vmaxq_s16(v436, 0));
    v438 = vdupq_n_s16(0x598u);
    v439 = vmlsl_high_u16(vmull_high_u16(v433, v438), v431, v438);
    v440 = vdupq_n_s32(0x48BD98u);
    v441 = vaddq_s32(vmlsl_u16(vmull_u16(*v433.i8, *v438.i8), *v431.i8, *v438.i8), v440);
    v442 = vaddq_s32(v439, v440);
    v443 = vuzp1q_s16(vmlaq_s32(v441, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v441.i8, *v101.i8), 0x18uLL), vmull_high_u32(v441, v101), 0x18uLL), v102), vmlaq_s32(v442, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v442.i8, *v101.i8), 0x18uLL), vmull_high_u32(v442, v101), 0x18uLL), v102));
    v444 = vaddq_s16(v443, v100);
    v445 = vorrq_s8(vandq_s8(vcltzq_s16(v444), v443), vmaxq_s16(v444, 0));
    v446 = vaddq_s16(v434, v432);
    v447 = vaddq_s16(v446, v100);
    v117[8] = v437;
    v117[9] = vorrq_s8(vandq_s8(vcltzq_s16(v447), v446), vmaxq_s16(v447, 0));
    v448 = vmlsl_high_u16(vmull_high_u16(v434, v438), v432, v438);
    v449 = vaddq_s32(vmlsl_u16(vmull_u16(*v434.i8, *v438.i8), *v432.i8, *v438.i8), v440);
    v450 = vaddq_s32(v448, v440);
    v451 = vuzp1q_s16(vmlaq_s32(v449, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v449.i8, *v101.i8), 0x18uLL), vmull_high_u32(v449, v101), 0x18uLL), v102), vmlaq_s32(v450, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v450.i8, *v101.i8), 0x18uLL), vmull_high_u32(v450, v101), 0x18uLL), v102));
    v452 = vaddq_s16(v451, v100);
    v117[12] = v445;
    v117[13] = vorrq_s8(vandq_s8(vcltzq_s16(v452), v451), vmaxq_s16(v452, 0));
    v453 = v117[14];
    v454 = v117[15];
    v455 = v117[10];
    v456 = v117[11];
    v457 = vaddq_s16(v455, v453);
    v458 = vaddq_s16(v457, v100);
    v459 = vorrq_s8(vandq_s8(vcltzq_s16(v458), v457), vmaxq_s16(v458, 0));
    v460 = vmlsl_high_u16(vmull_high_u16(v455, v438), v453, v438);
    v461 = vaddq_s32(vmlsl_u16(vmull_u16(*v455.i8, *v438.i8), *v453.i8, *v438.i8), v440);
    v462 = vaddq_s32(v460, v440);
    v463 = vuzp1q_s16(vmlaq_s32(v461, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v461.i8, *v101.i8), 0x18uLL), vmull_high_u32(v461, v101), 0x18uLL), v102), vmlaq_s32(v462, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v462.i8, *v101.i8), 0x18uLL), vmull_high_u32(v462, v101), 0x18uLL), v102));
    v464 = vaddq_s16(v463, v100);
    v465 = vorrq_s8(vandq_s8(vcltzq_s16(v464), v463), vmaxq_s16(v464, 0));
    v466 = vaddq_s16(v456, v454);
    v467 = vaddq_s16(v466, v100);
    v117[10] = v459;
    v117[11] = vorrq_s8(vandq_s8(vcltzq_s16(v467), v466), vmaxq_s16(v467, 0));
    v468 = vmlsl_high_u16(vmull_high_u16(v456, v438), v454, v438);
    v469 = vaddq_s32(vmlsl_u16(vmull_u16(*v456.i8, *v438.i8), *v454.i8, *v438.i8), v440);
    v470 = vaddq_s32(v468, v440);
    v471 = vuzp1q_s16(vmlaq_s32(v469, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v469.i8, *v101.i8), 0x18uLL), vmull_high_u32(v469, v101), 0x18uLL), v102), vmlaq_s32(v470, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v470.i8, *v101.i8), 0x18uLL), vmull_high_u32(v470, v101), 0x18uLL), v102));
    v472 = vaddq_s16(v471, v100);
    v117[14] = v465;
    v117[15] = vorrq_s8(vandq_s8(vcltzq_s16(v472), v471), vmaxq_s16(v472, 0));
    v473 = v117[20];
    v474 = v117[21];
    v475 = v117[16];
    v476 = v117[17];
    v477 = vaddq_s16(v475, v473);
    v478 = vaddq_s16(v477, v100);
    v479 = vorrq_s8(vandq_s8(vcltzq_s16(v478), v477), vmaxq_s16(v478, 0));
    v480 = vdupq_n_s16(0xA8Bu);
    v481 = vmlsl_high_u16(vmull_high_u16(v475, v480), v473, v480);
    v482 = vdupq_n_s32(0x89198Bu);
    v483 = vaddq_s32(vmlsl_u16(vmull_u16(*v475.i8, *v480.i8), *v473.i8, *v480.i8), v482);
    v484 = vaddq_s32(v481, v482);
    v485 = vuzp1q_s16(vmlaq_s32(v483, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v483.i8, *v101.i8), 0x18uLL), vmull_high_u32(v483, v101), 0x18uLL), v102), vmlaq_s32(v484, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v484.i8, *v101.i8), 0x18uLL), vmull_high_u32(v484, v101), 0x18uLL), v102));
    v486 = vaddq_s16(v485, v100);
    v487 = vorrq_s8(vandq_s8(vcltzq_s16(v486), v485), vmaxq_s16(v486, 0));
    v488 = vaddq_s16(v476, v474);
    v489 = vaddq_s16(v488, v100);
    v117[16] = v479;
    v117[17] = vorrq_s8(vandq_s8(vcltzq_s16(v489), v488), vmaxq_s16(v489, 0));
    v490 = vmlsl_high_u16(vmull_high_u16(v476, v480), v474, v480);
    v491 = vaddq_s32(vmlsl_u16(vmull_u16(*v476.i8, *v480.i8), *v474.i8, *v480.i8), v482);
    v492 = vaddq_s32(v490, v482);
    v493 = vuzp1q_s16(vmlaq_s32(v491, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v491.i8, *v101.i8), 0x18uLL), vmull_high_u32(v491, v101), 0x18uLL), v102), vmlaq_s32(v492, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v492.i8, *v101.i8), 0x18uLL), vmull_high_u32(v492, v101), 0x18uLL), v102));
    v494 = vaddq_s16(v493, v100);
    v117[20] = v487;
    v117[21] = vorrq_s8(vandq_s8(vcltzq_s16(v494), v493), vmaxq_s16(v494, 0));
    v495 = v117[22];
    v496 = v117[23];
    v497 = v117[18];
    v498 = v117[19];
    v499 = vaddq_s16(v497, v495);
    v500 = vaddq_s16(v499, v100);
    v501 = vorrq_s8(vandq_s8(vcltzq_s16(v500), v499), vmaxq_s16(v500, 0));
    v502 = vmlsl_high_u16(vmull_high_u16(v497, v480), v495, v480);
    v503 = vaddq_s32(vmlsl_u16(vmull_u16(*v497.i8, *v480.i8), *v495.i8, *v480.i8), v482);
    v504 = vaddq_s32(v502, v482);
    v505 = vuzp1q_s16(vmlaq_s32(v503, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v503.i8, *v101.i8), 0x18uLL), vmull_high_u32(v503, v101), 0x18uLL), v102), vmlaq_s32(v504, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v504.i8, *v101.i8), 0x18uLL), vmull_high_u32(v504, v101), 0x18uLL), v102));
    v506 = vaddq_s16(v505, v100);
    v507 = vorrq_s8(vandq_s8(vcltzq_s16(v506), v505), vmaxq_s16(v506, 0));
    v508 = vaddq_s16(v498, v496);
    v509 = vaddq_s16(v508, v100);
    v117[18] = v501;
    v117[19] = vorrq_s8(vandq_s8(vcltzq_s16(v509), v508), vmaxq_s16(v509, 0));
    v510 = vmlsl_high_u16(vmull_high_u16(v498, v480), v496, v480);
    v511 = vaddq_s32(vmlsl_u16(vmull_u16(*v498.i8, *v480.i8), *v496.i8, *v480.i8), v482);
    v512 = vaddq_s32(v510, v482);
    v513 = vuzp1q_s16(vmlaq_s32(v511, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v511.i8, *v101.i8), 0x18uLL), vmull_high_u32(v511, v101), 0x18uLL), v102), vmlaq_s32(v512, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v512.i8, *v101.i8), 0x18uLL), vmull_high_u32(v512, v101), 0x18uLL), v102));
    v514 = vaddq_s16(v513, v100);
    v117[22] = v507;
    v117[23] = vorrq_s8(vandq_s8(vcltzq_s16(v514), v513), vmaxq_s16(v514, 0));
    v515 = v117[28];
    v516 = v117[29];
    v517 = v117[24];
    v518 = v117[25];
    v519 = vaddq_s16(v517, v515);
    v520 = vaddq_s16(v519, v100);
    v521 = vorrq_s8(vandq_s8(vcltzq_s16(v520), v519), vmaxq_s16(v520, 0));
    v522 = vdupq_n_s16(0x2AFu);
    v523 = vmlsl_high_u16(vmull_high_u16(v517, v522), v515, v522);
    v524 = vdupq_n_s32(0x22E5AFu);
    v525 = vaddq_s32(vmlsl_u16(vmull_u16(*v517.i8, *v522.i8), *v515.i8, *v522.i8), v524);
    v526 = vaddq_s32(v523, v524);
    v527 = vuzp1q_s16(vmlaq_s32(v525, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v525.i8, *v101.i8), 0x18uLL), vmull_high_u32(v525, v101), 0x18uLL), v102), vmlaq_s32(v526, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v526.i8, *v101.i8), 0x18uLL), vmull_high_u32(v526, v101), 0x18uLL), v102));
    v528 = vaddq_s16(v527, v100);
    v529 = vorrq_s8(vandq_s8(vcltzq_s16(v528), v527), vmaxq_s16(v528, 0));
    v530 = vaddq_s16(v518, v516);
    v531 = vaddq_s16(v530, v100);
    v117[24] = v521;
    v117[25] = vorrq_s8(vandq_s8(vcltzq_s16(v531), v530), vmaxq_s16(v531, 0));
    v532 = vmlsl_high_u16(vmull_high_u16(v518, v522), v516, v522);
    v533 = vaddq_s32(vmlsl_u16(vmull_u16(*v518.i8, *v522.i8), *v516.i8, *v522.i8), v524);
    v534 = vaddq_s32(v532, v524);
    v535 = vuzp1q_s16(vmlaq_s32(v533, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v533.i8, *v101.i8), 0x18uLL), vmull_high_u32(v533, v101), 0x18uLL), v102), vmlaq_s32(v534, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v534.i8, *v101.i8), 0x18uLL), vmull_high_u32(v534, v101), 0x18uLL), v102));
    v536 = vaddq_s16(v535, v100);
    v117[28] = v529;
    v117[29] = vorrq_s8(vandq_s8(vcltzq_s16(v536), v535), vmaxq_s16(v536, 0));
    v537 = v117[30];
    v538 = v117[31];
    v539 = v117[26];
    v540 = v117[27];
    v541 = vaddq_s16(v539, v537);
    v542 = vaddq_s16(v541, v100);
    v543 = vorrq_s8(vandq_s8(vcltzq_s16(v542), v541), vmaxq_s16(v542, 0));
    v544 = vmlsl_high_u16(vmull_high_u16(v539, v522), v537, v522);
    v545 = vaddq_s32(vmlsl_u16(vmull_u16(*v539.i8, *v522.i8), *v537.i8, *v522.i8), v524);
    v546 = vaddq_s32(v544, v524);
    v547 = vuzp1q_s16(vmlaq_s32(v545, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v545.i8, *v101.i8), 0x18uLL), vmull_high_u32(v545, v101), 0x18uLL), v102), vmlaq_s32(v546, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v546.i8, *v101.i8), 0x18uLL), vmull_high_u32(v546, v101), 0x18uLL), v102));
    v548 = vaddq_s16(v547, v100);
    v549 = vorrq_s8(vandq_s8(vcltzq_s16(v548), v547), vmaxq_s16(v548, 0));
    v550 = vaddq_s16(v540, v538);
    v551 = vaddq_s16(v550, v100);
    v117[26] = v543;
    v117[27] = vorrq_s8(vandq_s8(vcltzq_s16(v551), v550), vmaxq_s16(v551, 0));
    v552 = vmlsl_high_u16(vmull_high_u16(v540, v522), v538, v522);
    v553 = vaddq_s32(vmlsl_u16(vmull_u16(*v540.i8, *v522.i8), *v538.i8, *v522.i8), v524);
    v554 = vaddq_s32(v552, v524);
    v555 = vuzp1q_s16(vmlaq_s32(v553, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v553.i8, *v101.i8), 0x18uLL), vmull_high_u32(v553, v101), 0x18uLL), v102), vmlaq_s32(v554, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v554.i8, *v101.i8), 0x18uLL), vmull_high_u32(v554, v101), 0x18uLL), v102));
    v556 = vaddq_s16(v555, v100);
    v117[30] = v549;
    v117[31] = vorrq_s8(vandq_s8(vcltzq_s16(v556), v555), vmaxq_s16(v556, 0));
    v557 = v117[8];
    v558 = v117[9];
    v559 = v117[1];
    v560 = vaddq_s16(*v117, v557);
    v561 = vaddq_s16(v560, v100);
    v562 = vorrq_s8(vandq_s8(vcltzq_s16(v561), v560), vmaxq_s16(v561, 0));
    v259.i64[0] = 0x28002800280028;
    v259.i64[1] = 0x28002800280028;
    v563 = vmlsl_high_u16(vmull_high_u16(*v117, v259), v557, v259);
    v564 = vdupq_n_s32(0x20828u);
    v565 = vaddq_s32(vmlsl_u16(vmull_u16(*v117->i8, 0x28002800280028), *v557.i8, 0x28002800280028), v564);
    v566 = vaddq_s32(v563, v564);
    v567 = vuzp1q_s16(vmlaq_s32(v565, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v565.i8, *v101.i8), 0x18uLL), vmull_high_u32(v565, v101), 0x18uLL), v102), vmlaq_s32(v566, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v566.i8, *v101.i8), 0x18uLL), vmull_high_u32(v566, v101), 0x18uLL), v102));
    v568 = vaddq_s16(v567, v100);
    v569 = vorrq_s8(vandq_s8(vcltzq_s16(v568), v567), vmaxq_s16(v568, 0));
    v570 = vaddq_s16(v559, v558);
    v571 = vaddq_s16(v570, v100);
    *v117 = v562;
    v117[1] = vorrq_s8(vandq_s8(vcltzq_s16(v571), v570), vmaxq_s16(v571, 0));
    v572 = vmlsl_high_u16(vmull_high_u16(v559, v259), v558, v259);
    v573 = vaddq_s32(vmlsl_u16(vmull_u16(*v559.i8, 0x28002800280028), *v558.i8, 0x28002800280028), v564);
    v574 = vaddq_s32(v572, v564);
    v575 = vuzp1q_s16(vmlaq_s32(v573, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v573.i8, *v101.i8), 0x18uLL), vmull_high_u32(v573, v101), 0x18uLL), v102), vmlaq_s32(v574, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v574.i8, *v101.i8), 0x18uLL), vmull_high_u32(v574, v101), 0x18uLL), v102));
    v576 = vaddq_s16(v575, v100);
    v117[8] = v569;
    v117[9] = vorrq_s8(vandq_s8(vcltzq_s16(v576), v575), vmaxq_s16(v576, 0));
    v577 = v117[10];
    v578 = v117[11];
    v579 = v117[2];
    v580 = v117[3];
    v581 = vaddq_s16(v579, v577);
    v582 = vaddq_s16(v581, v100);
    v583 = vorrq_s8(vandq_s8(vcltzq_s16(v582), v581), vmaxq_s16(v582, 0));
    v584 = vmlsl_high_u16(vmull_high_u16(v579, v259), v577, v259);
    v585 = vaddq_s32(vmlsl_u16(vmull_u16(*v579.i8, 0x28002800280028), *v577.i8, 0x28002800280028), v564);
    v586 = vaddq_s32(v584, v564);
    v587 = vuzp1q_s16(vmlaq_s32(v585, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v585.i8, *v101.i8), 0x18uLL), vmull_high_u32(v585, v101), 0x18uLL), v102), vmlaq_s32(v586, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v586.i8, *v101.i8), 0x18uLL), vmull_high_u32(v586, v101), 0x18uLL), v102));
    v588 = vaddq_s16(v587, v100);
    v589 = vorrq_s8(vandq_s8(vcltzq_s16(v588), v587), vmaxq_s16(v588, 0));
    v590 = vaddq_s16(v580, v578);
    v591 = vaddq_s16(v590, v100);
    v117[2] = v583;
    v117[3] = vorrq_s8(vandq_s8(vcltzq_s16(v591), v590), vmaxq_s16(v591, 0));
    v592 = vmlsl_high_u16(vmull_high_u16(v580, v259), v578, v259);
    v593 = vaddq_s32(vmlsl_u16(vmull_u16(*v580.i8, 0x28002800280028), *v578.i8, 0x28002800280028), v564);
    v594 = vaddq_s32(v592, v564);
    v595 = vuzp1q_s16(vmlaq_s32(v593, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v593.i8, *v101.i8), 0x18uLL), vmull_high_u32(v593, v101), 0x18uLL), v102), vmlaq_s32(v594, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v594.i8, *v101.i8), 0x18uLL), vmull_high_u32(v594, v101), 0x18uLL), v102));
    v596 = vaddq_s16(v595, v100);
    v117[10] = v589;
    v117[11] = vorrq_s8(vandq_s8(vcltzq_s16(v596), v595), vmaxq_s16(v596, 0));
    v597 = v117[12];
    v598 = v117[13];
    v599 = v117[4];
    v600 = v117[5];
    v601 = vaddq_s16(v599, v597);
    v602 = vaddq_s16(v601, v100);
    v603 = vorrq_s8(vandq_s8(vcltzq_s16(v602), v601), vmaxq_s16(v602, 0));
    v604 = vmlsl_high_u16(vmull_high_u16(v599, v259), v597, v259);
    v605 = vaddq_s32(vmlsl_u16(vmull_u16(*v599.i8, 0x28002800280028), *v597.i8, 0x28002800280028), v564);
    v606 = vaddq_s32(v604, v564);
    v607 = vuzp1q_s16(vmlaq_s32(v605, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v605.i8, *v101.i8), 0x18uLL), vmull_high_u32(v605, v101), 0x18uLL), v102), vmlaq_s32(v606, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v606.i8, *v101.i8), 0x18uLL), vmull_high_u32(v606, v101), 0x18uLL), v102));
    v608 = vaddq_s16(v607, v100);
    v609 = vorrq_s8(vandq_s8(vcltzq_s16(v608), v607), vmaxq_s16(v608, 0));
    v610 = vaddq_s16(v600, v598);
    v611 = vaddq_s16(v610, v100);
    v117[4] = v603;
    v117[5] = vorrq_s8(vandq_s8(vcltzq_s16(v611), v610), vmaxq_s16(v611, 0));
    v612 = vmlsl_high_u16(vmull_high_u16(v600, v259), v598, v259);
    v613 = vaddq_s32(vmlsl_u16(vmull_u16(*v600.i8, 0x28002800280028), *v598.i8, 0x28002800280028), v564);
    v614 = vaddq_s32(v612, v564);
    v615 = vuzp1q_s16(vmlaq_s32(v613, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v613.i8, *v101.i8), 0x18uLL), vmull_high_u32(v613, v101), 0x18uLL), v102), vmlaq_s32(v614, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v614.i8, *v101.i8), 0x18uLL), vmull_high_u32(v614, v101), 0x18uLL), v102));
    v616 = vaddq_s16(v615, v100);
    v117[12] = v609;
    v117[13] = vorrq_s8(vandq_s8(vcltzq_s16(v616), v615), vmaxq_s16(v616, 0));
    v617 = v117[14];
    v618 = v117[15];
    v619 = v117[6];
    v620 = v117[7];
    v621 = vaddq_s16(v619, v617);
    v622 = vaddq_s16(v621, v100);
    v623 = vorrq_s8(vandq_s8(vcltzq_s16(v622), v621), vmaxq_s16(v622, 0));
    v624 = vmlsl_high_u16(vmull_high_u16(v619, v259), v617, v259);
    v625 = vaddq_s32(vmlsl_u16(vmull_u16(*v619.i8, 0x28002800280028), *v617.i8, 0x28002800280028), v564);
    v626 = vaddq_s32(v624, v564);
    v627 = vuzp1q_s16(vmlaq_s32(v625, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v625.i8, *v101.i8), 0x18uLL), vmull_high_u32(v625, v101), 0x18uLL), v102), vmlaq_s32(v626, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v626.i8, *v101.i8), 0x18uLL), vmull_high_u32(v626, v101), 0x18uLL), v102));
    v628 = vaddq_s16(v627, v100);
    v629 = vorrq_s8(vandq_s8(vcltzq_s16(v628), v627), vmaxq_s16(v628, 0));
    v630 = vaddq_s16(v620, v618);
    v631 = vaddq_s16(v630, v100);
    v117[6] = v623;
    v117[7] = vorrq_s8(vandq_s8(vcltzq_s16(v631), v630), vmaxq_s16(v631, 0));
    v632 = vmlsl_high_u16(vmull_high_u16(v620, v259), v618, v259);
    v633 = vaddq_s32(vmlsl_u16(vmull_u16(*v620.i8, 0x28002800280028), *v618.i8, 0x28002800280028), v564);
    v634 = vaddq_s32(v632, v564);
    v635 = vuzp1q_s16(vmlaq_s32(v633, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v633.i8, *v101.i8), 0x18uLL), vmull_high_u32(v633, v101), 0x18uLL), v102), vmlaq_s32(v634, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v634.i8, *v101.i8), 0x18uLL), vmull_high_u32(v634, v101), 0x18uLL), v102));
    v636 = vaddq_s16(v635, v100);
    v117[14] = v629;
    v117[15] = vorrq_s8(vandq_s8(vcltzq_s16(v636), v635), vmaxq_s16(v636, 0));
    v637 = v117[24];
    v638 = v117[25];
    v639 = v117[16];
    v640 = v117[17];
    v641 = vaddq_s16(v639, v637);
    v642 = vaddq_s16(v641, v100);
    v643 = vorrq_s8(vandq_s8(vcltzq_s16(v642), v641), vmaxq_s16(v642, 0));
    v644 = vdupq_n_s16(0x2EDu);
    v645 = vmlsl_high_u16(vmull_high_u16(v639, v644), v637, v644);
    v646 = vdupq_n_s32(0x260BEDu);
    v647 = vaddq_s32(vmlsl_u16(vmull_u16(*v639.i8, *v644.i8), *v637.i8, *v644.i8), v646);
    v648 = vaddq_s32(v645, v646);
    v649 = vuzp1q_s16(vmlaq_s32(v647, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v647.i8, *v101.i8), 0x18uLL), vmull_high_u32(v647, v101), 0x18uLL), v102), vmlaq_s32(v648, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v648.i8, *v101.i8), 0x18uLL), vmull_high_u32(v648, v101), 0x18uLL), v102));
    v650 = vaddq_s16(v649, v100);
    v651 = vorrq_s8(vandq_s8(vcltzq_s16(v650), v649), vmaxq_s16(v650, 0));
    v652 = vaddq_s16(v640, v638);
    v653 = vaddq_s16(v652, v100);
    v117[16] = v643;
    v117[17] = vorrq_s8(vandq_s8(vcltzq_s16(v653), v652), vmaxq_s16(v653, 0));
    v654 = vmlsl_high_u16(vmull_high_u16(v640, v644), v638, v644);
    v655 = vaddq_s32(vmlsl_u16(vmull_u16(*v640.i8, *v644.i8), *v638.i8, *v644.i8), v646);
    v656 = vaddq_s32(v654, v646);
    v657 = vuzp1q_s16(vmlaq_s32(v655, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v655.i8, *v101.i8), 0x18uLL), vmull_high_u32(v655, v101), 0x18uLL), v102), vmlaq_s32(v656, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v656.i8, *v101.i8), 0x18uLL), vmull_high_u32(v656, v101), 0x18uLL), v102));
    v658 = vaddq_s16(v657, v100);
    v117[24] = v651;
    v117[25] = vorrq_s8(vandq_s8(vcltzq_s16(v658), v657), vmaxq_s16(v658, 0));
    v659 = v117[26];
    v660 = v117[27];
    v661 = v117[18];
    v662 = v117[19];
    v663 = vaddq_s16(v661, v659);
    v664 = vaddq_s16(v663, v100);
    v665 = vorrq_s8(vandq_s8(vcltzq_s16(v664), v663), vmaxq_s16(v664, 0));
    v666 = vmlsl_high_u16(vmull_high_u16(v661, v644), v659, v644);
    v667 = vaddq_s32(vmlsl_u16(vmull_u16(*v661.i8, *v644.i8), *v659.i8, *v644.i8), v646);
    v668 = vaddq_s32(v666, v646);
    v669 = vuzp1q_s16(vmlaq_s32(v667, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v667.i8, *v101.i8), 0x18uLL), vmull_high_u32(v667, v101), 0x18uLL), v102), vmlaq_s32(v668, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v668.i8, *v101.i8), 0x18uLL), vmull_high_u32(v668, v101), 0x18uLL), v102));
    v670 = vaddq_s16(v669, v100);
    v671 = vorrq_s8(vandq_s8(vcltzq_s16(v670), v669), vmaxq_s16(v670, 0));
    v672 = vaddq_s16(v662, v660);
    v673 = vaddq_s16(v672, v100);
    v117[18] = v665;
    v117[19] = vorrq_s8(vandq_s8(vcltzq_s16(v673), v672), vmaxq_s16(v673, 0));
    v674 = vmlsl_high_u16(vmull_high_u16(v662, v644), v660, v644);
    v675 = vaddq_s32(vmlsl_u16(vmull_u16(*v662.i8, *v644.i8), *v660.i8, *v644.i8), v646);
    v676 = vaddq_s32(v674, v646);
    v677 = vuzp1q_s16(vmlaq_s32(v675, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v675.i8, *v101.i8), 0x18uLL), vmull_high_u32(v675, v101), 0x18uLL), v102), vmlaq_s32(v676, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v676.i8, *v101.i8), 0x18uLL), vmull_high_u32(v676, v101), 0x18uLL), v102));
    v678 = vaddq_s16(v677, v100);
    v117[26] = v671;
    v117[27] = vorrq_s8(vandq_s8(vcltzq_s16(v678), v677), vmaxq_s16(v678, 0));
    v679 = v117[28];
    v680 = v117[29];
    v681 = v117[20];
    v682 = v117[21];
    v683 = vaddq_s16(v681, v679);
    v684 = vaddq_s16(v683, v100);
    v685 = vorrq_s8(vandq_s8(vcltzq_s16(v684), v683), vmaxq_s16(v684, 0));
    v686 = vmlsl_high_u16(vmull_high_u16(v681, v644), v679, v644);
    v687 = vaddq_s32(vmlsl_u16(vmull_u16(*v681.i8, *v644.i8), *v679.i8, *v644.i8), v646);
    v688 = vaddq_s32(v686, v646);
    v689 = vuzp1q_s16(vmlaq_s32(v687, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v687.i8, *v101.i8), 0x18uLL), vmull_high_u32(v687, v101), 0x18uLL), v102), vmlaq_s32(v688, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v688.i8, *v101.i8), 0x18uLL), vmull_high_u32(v688, v101), 0x18uLL), v102));
    v690 = vaddq_s16(v689, v100);
    v691 = vorrq_s8(vandq_s8(vcltzq_s16(v690), v689), vmaxq_s16(v690, 0));
    v692 = vaddq_s16(v682, v680);
    v693 = vaddq_s16(v692, v100);
    v117[20] = v685;
    v117[21] = vorrq_s8(vandq_s8(vcltzq_s16(v693), v692), vmaxq_s16(v693, 0));
    v694 = vmlsl_high_u16(vmull_high_u16(v682, v644), v680, v644);
    v695 = vaddq_s32(vmlsl_u16(vmull_u16(*v682.i8, *v644.i8), *v680.i8, *v644.i8), v646);
    v696 = vaddq_s32(v694, v646);
    v697 = vuzp1q_s16(vmlaq_s32(v695, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v695.i8, *v101.i8), 0x18uLL), vmull_high_u32(v695, v101), 0x18uLL), v102), vmlaq_s32(v696, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v696.i8, *v101.i8), 0x18uLL), vmull_high_u32(v696, v101), 0x18uLL), v102));
    v698 = vaddq_s16(v697, v100);
    v117[28] = v691;
    v117[29] = vorrq_s8(vandq_s8(vcltzq_s16(v698), v697), vmaxq_s16(v698, 0));
    v699 = v117[30];
    v700 = v117[31];
    v701 = v117[22];
    v702 = v117[23];
    v703 = vaddq_s16(v701, v699);
    v704 = vaddq_s16(v703, v100);
    v705 = vorrq_s8(vandq_s8(vcltzq_s16(v704), v703), vmaxq_s16(v704, 0));
    v706 = vmlsl_high_u16(vmull_high_u16(v701, v644), v699, v644);
    v707 = vaddq_s32(vmlsl_u16(vmull_u16(*v701.i8, *v644.i8), *v699.i8, *v644.i8), v646);
    v708 = vaddq_s32(v706, v646);
    v709 = vuzp1q_s16(vmlaq_s32(v707, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v707.i8, *v101.i8), 0x18uLL), vmull_high_u32(v707, v101), 0x18uLL), v102), vmlaq_s32(v708, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v708.i8, *v101.i8), 0x18uLL), vmull_high_u32(v708, v101), 0x18uLL), v102));
    v710 = vaddq_s16(v709, v100);
    v711 = vorrq_s8(vandq_s8(vcltzq_s16(v710), v709), vmaxq_s16(v710, 0));
    v712 = vaddq_s16(v702, v700);
    v713 = vaddq_s16(v712, v100);
    v117[22] = v705;
    v117[23] = vorrq_s8(vandq_s8(vcltzq_s16(v713), v712), vmaxq_s16(v713, 0));
    v714 = vmlsl_high_u16(vmull_high_u16(v702, v644), v700, v644);
    v715 = vaddq_s32(vmlsl_u16(vmull_u16(*v702.i8, *v644.i8), *v700.i8, *v644.i8), v646);
    v716 = vaddq_s32(v714, v646);
    v717 = vuzp1q_s16(vmlaq_s32(v715, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v715.i8, *v101.i8), 0x18uLL), vmull_high_u32(v715, v101), 0x18uLL), v102), vmlaq_s32(v716, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v716.i8, *v101.i8), 0x18uLL), vmull_high_u32(v716, v101), 0x18uLL), v102));
    v718 = vaddq_s16(v717, v100);
    v117[30] = v711;
    v117[31] = vorrq_s8(vandq_s8(vcltzq_s16(v718), v717), vmaxq_s16(v718, 0));
    do
    {
      v719 = &v115[v206];
      v720 = *&v115[v206 + 128];
      v721 = *&v115[v206];
      v722 = vaddq_s16(v721, v720);
      v723 = vaddq_s16(v722, v100);
      v724 = vdupq_n_s16(0x640u);
      v725 = vmlsl_high_u16(vmull_high_u16(v721, v724), v720, v724);
      v726 = vmlsl_u16(vmull_u16(*v721.i8, *v724.i8), *v720.i8, *v724.i8);
      v727 = vdupq_n_s32(0x514640u);
      v728 = vaddq_s32(v726, v727);
      v729 = vaddq_s32(v725, v727);
      v730 = vuzp1q_s16(vmlaq_s32(v728, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v728.i8, *v101.i8), 0x18uLL), vmull_high_u32(v728, v101), 0x18uLL), v102), vmlaq_s32(v729, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v729.i8, *v101.i8), 0x18uLL), vmull_high_u32(v729, v101), 0x18uLL), v102));
      v731 = vaddq_s16(v730, v100);
      *v719 = vorrq_s8(vandq_s8(vcltzq_s16(v723), v722), vmaxq_s16(v723, 0));
      v719[16] = vorrq_s8(vandq_s8(vcltzq_s16(v731), v730), vmaxq_s16(v731, 0));
      v206 += 8;
    }

    while (v206 != 128);
    for (j = 0; j != 256; j += 8)
    {
      v733 = *&v115[j];
      v734 = vdupq_n_s16(0xCE7u);
      v735 = vmull_u16(*v733.i8, *v734.i8);
      v736 = vmull_high_u16(v733, v734);
      v737 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v735.i8, *v101.i8), 0x18uLL), vmull_high_u32(v735, v101), 0x18uLL), v102), *v733.i8, *v734.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v736.i8, *v101.i8), 0x18uLL), vmull_high_u32(v736, v101), 0x18uLL), v102), v733, v734));
      v738 = vaddq_s16(v737, v100);
      *&v115[j] = vorrq_s8(vandq_s8(vcltzq_s16(v738), v737), vmaxq_s16(v738, 0));
    }

    ++v98;
    v115 += 256;
  }

  while (v98 != 3);
  v739 = 0;
  v740.i64[0] = 0xD000D000D000D00;
  v740.i64[1] = 0xD000D000D000D00;
  do
  {
    v741 = (&v1607 + v739 * 16);
    v742 = vaddq_s16(v1612[v739], *(&v1607 + v739 * 16));
    v743 = vaddq_s16(v1612[v739 + 1], *(&v1607 + v739 * 16 + 16));
    v744 = vaddq_s16(v742, v740);
    v745 = vaddq_s16(v743, v740);
    *v741 = vorrq_s8(vandq_s8(vcltzq_s16(v744), v742), vmaxq_s16(v744, 0));
    v741[1] = vorrq_s8(vandq_s8(vcltzq_s16(v745), v743), vmaxq_s16(v745, 0));
    v739 += 2;
  }

  while (v739 != 32);
  v746.i64[0] = 0xD000D000D000D00;
  v746.i64[1] = 0xD000D000D000D00;
  do
  {
    v747 = (&v1607 + v739 * 16);
    v748 = vaddq_s16(v1612[v739], *(&v1607 + v739 * 16));
    v749 = vaddq_s16(v1612[v739 + 1], *(&v1607 + v739 * 16 + 16));
    v750 = vaddq_s16(v748, v746);
    v751 = vaddq_s16(v749, v746);
    *v747 = vorrq_s8(vandq_s8(vcltzq_s16(v750), v748), vmaxq_s16(v750, 0));
    v747[1] = vorrq_s8(vandq_s8(vcltzq_s16(v751), v749), vmaxq_s16(v751, 0));
    v739 += 2;
  }

  while (v739 != 64);
  v752.i64[0] = 0xD000D000D000D00;
  v752.i64[1] = 0xD000D000D000D00;
  do
  {
    v753 = (&v1607 + v739 * 16);
    v754 = vaddq_s16(v1612[v739], *(&v1607 + v739 * 16));
    v755 = vaddq_s16(v1612[v739 + 1], *(&v1607 + v739 * 16 + 16));
    v756 = vaddq_s16(v754, v752);
    v757 = vaddq_s16(v755, v752);
    *v753 = vorrq_s8(vandq_s8(vcltzq_s16(v756), v754), vmaxq_s16(v756, 0));
    v753[1] = vorrq_s8(vandq_s8(vcltzq_s16(v757), v755), vmaxq_s16(v757, 0));
    v739 += 2;
  }

  while (v739 != 96);
  v758 = 0;
  v759 = &xmmword_273BA9DA8;
  v760 = vdupq_n_s32(0xD01u);
  v761.i64[0] = 0xD000D000D000D00;
  v761.i64[1] = 0xD000D000D000D00;
  v762 = vdupq_n_s32(0x13AFu);
  v763.i64[0] = 0xF2000000F2;
  v763.i64[1] = 0xF2000000F2;
  do
  {
    v764 = &v1575.i16[v758];
    v1643 = vld4q_s16(v764);
    v765 = *v759++;
    v766 = vmovl_high_u16(v765);
    v767 = vmovl_u16(*v765.i8);
    v768 = vaddq_s16(v1643.val[0], v1643.val[2]);
    v769 = vaddq_s16(v768, v761);
    v770 = vmulq_s32(vaddq_s32(vsubl_u16(*v1643.val[0].i8, *v1643.val[2].i8), v760), v767);
    v771 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1643.val[0], v1643.val[2]), v760), v766);
    v772 = vaddq_s16(v1643.val[1], v1643.val[3]);
    v773 = vaddq_s16(v772, v761);
    v774 = vmulq_s32(vaddq_s32(vsubl_u16(*v1643.val[1].i8, *v1643.val[3].i8), v760), v767);
    v775 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1643.val[1], v1643.val[3]), v760), v766);
    v776 = vuzp1q_s16(vmlaq_s32(v770, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v770.i8, *v762.i8), 0x18uLL), vmull_high_u32(v770, v762), 0x18uLL), v763), vmlaq_s32(v771, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v771.i8, *v762.i8), 0x18uLL), vmull_high_u32(v771, v762), 0x18uLL), v763));
    v1643.val[0] = vaddq_s16(v776, v761);
    v777 = vuzp1q_s16(vmlaq_s32(v774, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v774.i8, *v762.i8), 0x18uLL), vmull_high_u32(v774, v762), 0x18uLL), v763), vmlaq_s32(v775, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v775.i8, *v762.i8), 0x18uLL), vmull_high_u32(v775, v762), 0x18uLL), v763));
    v778 = vaddq_s16(v777, v761);
    v1645.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v773), v772), vmaxq_s16(v773, 0));
    v1645.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v769), v768), vmaxq_s16(v769, 0));
    v1645.val[3] = vorrq_s8(vandq_s8(vcltzq_s16(v778), v777), vmaxq_s16(v778, 0));
    v1645.val[2] = vorrq_s8(vandq_s8(vcltzq_s16(v1643.val[0]), v776), vmaxq_s16(v1643.val[0], 0));
    vst4q_s16(v764, v1645);
    v758 += 32;
  }

  while (v758 != 256);
  v779 = 0;
  v780 = &xmmword_273BA9D68;
  v782 = xmmword_273BA7090;
  v781 = xmmword_273BA70B0;
  v784 = xmmword_273BA7050;
  v783 = xmmword_273BA7070;
  v786 = xmmword_273BA7030;
  v785 = xmmword_273BA7060;
  v788 = xmmword_273BA7010;
  v787 = xmmword_273BA7080;
  v789 = xmmword_273BA7040;
  v790 = xmmword_273BA7020;
  do
  {
    v791 = *v780++;
    v792 = (&v1575 + v779 * 8);
    v1617.val[0] = *(&v1581 + v779 * 8);
    v1617.val[1] = *(&v1582 + v779 * 8);
    v1629.val[0] = *(&v1579 + v779 * 8);
    v1629.val[1] = *(&v1580 + v779 * 8);
    v1535 = vmovl_high_u16(v791);
    v1622.val[0] = *(&v1577 + v779 * 8);
    v1622.val[1] = *(&v1578 + v779 * 8);
    v793 = vqtbl2q_s8(v1629, v788);
    v1634 = *&v1575.i8[v779 * 8];
    v794.i32[0] = vzip1q_s16(v1634.val[0], v1634.val[1]).u32[0];
    v793.i32[3] = vqtbl2q_s8(v1617, xmmword_273BA7000).i32[3];
    v794.i32[1] = vqtbl2q_s8(v1622, v790).i32[1];
    v795.i32[0] = vtrn2q_s16(v1634.val[0], v1634.val[1]).u32[0];
    v795.i32[1] = vzip1q_s16(*&v1622, *(&v1622 + 16)).i32[1];
    v796 = vqtbl2q_s8(v1629, v789);
    v797 = vzip1q_s16(v1629.val[0], v1629.val[1]);
    v796.i32[3] = vqtbl2q_s8(v1617, v786).i32[3];
    LOWORD(v798) = WORD2(v1577.i64[v779]);
    HIWORD(v798) = WORD2(v1578.i64[v779]);
    v797.i32[3] = vqtbl2q_s8(v1617, v784).i32[3];
    v799.i32[0] = vqtbl2q_s8(v1634, v785).u32[0];
    v800 = vqtbl2q_s8(v1629, v783);
    v800.i32[3] = vzip1q_s16(*&v1617, *(&v1617 + 16)).i32[3];
    LODWORD(v801) = vqtbl2q_s8(v1634, v787).u32[0];
    LOWORD(v802) = v1579.i64[v779 + 1];
    WORD1(v802) = v1580.i64[v779 + 1];
    HIDWORD(v801) = vtrn2q_s16(*&v1622, *(&v1622 + 16)).i32[1];
    v803.i64[0] = v801;
    v804 = vqtbl2q_s8(v1617, v782);
    v805.i32[0] = vzip2q_s16(v1634.val[0], v1634.val[1]).u32[0];
    v806 = vtrn2q_s16(v1629.val[0], v1629.val[1]);
    v807 = vqtbl2q_s8(v1617, v781);
    v808.i32[0] = v805.i32[0];
    v806.i32[3] = v807.i32[3];
    v809.i32[0] = vqtbl2q_s8(v1634, xmmword_273BA70C0).u32[0];
    v808.i32[1] = vqtbl2q_s8(v1622, xmmword_273BA70A0).i32[1];
    v810.i32[0] = v809.i32[0];
    v810.i32[1] = vzip2q_s16(*&v1622, *(&v1622 + 16)).i32[1];
    LOWORD(v811) = v1617.val[0].i16[6];
    v799.i32[1] = v798;
    HIWORD(v811) = v1617.val[1].i16[6];
    v812 = vzip2q_s16(v1629.val[0], v1629.val[1]);
    v813 = __PAIR64__(v811, v812.u32[2]);
    HIDWORD(v802) = v804.i32[3];
    v814 = vqtbl2q_s8(v1629, xmmword_273BA70F0);
    v815 = vzip2q_s16(v1617.val[0], v1617.val[1]);
    v794.i64[1] = v793.i64[1];
    v814.i32[3] = v815.i32[3];
    v795.i64[1] = v796.i64[1];
    v796.i64[0] = __PAIR64__(vqtbl2q_s8(v1622, xmmword_273BA7100).u32[1], vqtbl2q_s8(v1634, xmmword_273BA7110).u32[0]);
    v803.i64[1] = v800.i64[1];
    v1540 = v803;
    v812.i32[1] = vqtbl2q_s8(v1617, xmmword_273BA70A0).i32[1];
    v805.i32[1] = v808.i32[1];
    v810.i64[1] = v806.i64[1];
    v816 = vzip1_s16(*v1617.val[0].i8, *v1617.val[1].i8);
    v807.i32[0] = vzip1_s16(*v1629.val[0].i8, *v1629.val[1].i8).u32[0];
    v796.i64[1] = v814.i64[1];
    v807.i32[1] = vext_s8(*&v1617, v816, 4uLL).i32[1];
    *v814.i8 = vzip1_s16(*v1622.val[0].i8, *v1622.val[1].i8);
    v799.i64[1] = v797.i64[1];
    v797.i32[0] = vzip1_s16(*v1634.val[0].i8, *v1634.val[1].i8).u32[0];
    v797.i32[1] = vext_s8(*&v1622, *&v814, 4uLL).i32[1];
    v817.i32[0] = vqtbl2q_s8(v1634, xmmword_273BA70E0).u32[0];
    v808.i64[1] = v802;
    v806.i32[0] = v817.i32[0];
    v806.i32[1] = vqtbl2q_s8(v1622, xmmword_273BA70D0).i32[1];
    v806.i64[1] = v813;
    v818 = vdupq_n_s32(0xD01u);
    v819 = vaddq_s32(vsubl_u16(*v807.i8, *v812.i8), v818);
    v820 = vmovl_u16(*v791.i8);
    v821 = vmulq_s32(vaddq_s32(vsubl_u16(*v797.i8, v805), v818), v820);
    v822 = vdupq_n_s32(0x13AFu);
    v812.i32[0] = vqtbl2q_s8(v1629, xmmword_273BA70C0).u32[0];
    v812.i32[1] = v815.i32[1];
    v823 = vmulq_s32(v819, v1535);
    v809.i32[1] = v810.i32[1];
    v819.i32[0] = vtrn2_s16(*v1629.val[0].i8, *v1629.val[1].i8).u32[0];
    v819.i32[1] = v816.i32[1];
    v824.i32[0] = vtrn2_s16(*v1634.val[0].i8, *v1634.val[1].i8).u32[0];
    v824.i32[1] = v814.i32[1];
    v1533 = vaddq_s16(v795, v810);
    v825 = vmulq_s32(vaddq_s32(vsubl_u16(v824, v809), v818), v820);
    v1529 = vaddq_s16(v794, v808);
    v826 = vmulq_s32(vaddq_s32(vsubl_u16(*v819.i8, *v812.i8), v818), v1535);
    v814.i32[0] = vqtbl2q_s8(v1629, xmmword_273BA70E0).u32[0];
    v814.i32[1] = vqtbl2q_s8(v1617, xmmword_273BA70D0).i32[1];
    v817.i32[1] = v806.i32[1];
    LOWORD(v827) = WORD2(v1581.i64[v779]);
    HIWORD(v827) = WORD2(v1582.i64[v779]);
    v828.i64[0] = 0xF2000000F2;
    v828.i64[1] = 0xF2000000F2;
    v800.i32[0] = vzip2_s16(*v1629.val[0].i8, *v1629.val[1].i8).u32[0];
    v800.i32[1] = v827;
    LOWORD(v827) = WORD2(v1577.i64[v779]);
    HIWORD(v827) = WORD2(v1578.i64[v779]);
    v812.i32[0] = vzip2_s16(*v1634.val[0].i8, *v1634.val[1].i8).u32[0];
    v812.i32[1] = v827;
    v829 = vaddq_s16(v799, v806);
    v830 = vaddq_s32(vsubl_u16(*v800.i8, *v814.i8), v818);
    v831 = vmulq_s32(vaddq_s32(vsubl_u16(*v812.i8, v817), v818), v820);
    v832 = vmulq_s32(v830, v1535);
    v830.i32[0] = vuzp2_s16(vuzp2_s16(*v1634.val[0].i8, *v1634.val[1].i8), *v1634.val[0].i8).u32[0];
    v1634.val[0].i32[0] = vuzp2_s16(vuzp2_s16(*v1629.val[0].i8, *v1629.val[1].i8), *v1629.val[0].i8).u32[0];
    v1629.val[0].i32[0] = vqtbl2q_s8(v1629, xmmword_273BA7110).u32[0];
    v1629.val[0].i32[1] = vqtbl2q_s8(v1617, xmmword_273BA7100).i32[1];
    v833 = vuzp1q_s16(vmlaq_s32(v825, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v825.i8, *v822.i8), 0x18uLL), vmull_high_u32(v825, v822), 0x18uLL), v828), vmlaq_s32(v826, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v826.i8, *v822.i8), 0x18uLL), vmull_high_u32(v826, v822), 0x18uLL), v828));
    v781 = xmmword_273BA70B0;
    v785 = xmmword_273BA7060;
    v1634.val[0].i32[1] = vzip2_s16(*&v1617, *(&v1617 + 16)).i32[1];
    v1629.val[1] = vuzp1q_s16(vmlaq_s32(v821, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v821.i8, *v822.i8), 0x18uLL), vmull_high_u32(v821, v822), 0x18uLL), v828), vmlaq_s32(v823, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v823.i8, *v822.i8), 0x18uLL), vmull_high_u32(v823, v822), 0x18uLL), v828));
    v789 = xmmword_273BA7040;
    v830.i32[1] = vzip2_s16(*&v1622, *(&v1622 + 16)).i32[1];
    v1617.val[0] = vaddq_s16(v1540, v796);
    v804.i64[0] = 0xD000D000D000D00;
    v804.i64[1] = 0xD000D000D000D00;
    v1617.val[1] = vaddq_s16(v1529, v804);
    v834 = vaddq_s16(v1533, v804);
    v1622.val[1] = vaddq_s16(v833, v804);
    v1622.val[0] = vsubl_u16(*v1634.val[0].i8, *v1629.val[0].i8);
    v1629.val[0] = vaddq_s16(v829, v804);
    v835 = vaddq_s16(v1617.val[0], v804);
    v1622.val[0] = vaddq_s32(v1622.val[0], v818);
    v836 = vaddq_s32(vsubl_u16(*v830.i8, *v796.i8), v818);
    v787 = xmmword_273BA7080;
    v837 = vmulq_s32(v836, v820);
    v1622.val[0] = vmulq_s32(v1622.val[0], v1535);
    v838 = vuzp1q_s16(vmlaq_s32(v831, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v831.i8, *v822.i8), 0x18uLL), vmull_high_u32(v831, v822), 0x18uLL), v828), vmlaq_s32(v832, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v832.i8, *v822.i8), 0x18uLL), vmull_high_u32(v832, v822), 0x18uLL), v828));
    v784 = xmmword_273BA7050;
    v783 = xmmword_273BA7070;
    v839 = vaddq_s16(v1629.val[1], v804);
    v1622.val[0] = vmlaq_s32(v1622.val[0], vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1622.val[0].i8, *v822.i8), 0x18uLL), vmull_high_u32(v1622.val[0], v822), 0x18uLL), v828);
    v840 = vmlaq_s32(v837, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v837.i8, *v822.i8), 0x18uLL), vmull_high_u32(v837, v822), 0x18uLL), v828);
    v786 = xmmword_273BA7030;
    v1634.val[0] = vaddq_s16(v838, v804);
    v841 = vuzp1q_s16(v840, v1622.val[0]);
    v1634.val[1] = vaddq_s16(v841, v804);
    v842 = vandq_s8(vcltzq_s16(v835), v1617.val[0]);
    v790 = xmmword_273BA7020;
    v788 = xmmword_273BA7010;
    v782 = xmmword_273BA7090;
    v1617.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v834), v1533), vmaxq_s16(v834, 0));
    v843 = vorrq_s8(vandq_s8(vcltzq_s16(v1617.val[1]), v1529), vmaxq_s16(v1617.val[1], 0));
    v1622.val[0] = vorrq_s8(v842, vmaxq_s16(v835, 0));
    v844 = vandq_s8(vcltzq_s16(v839), v1629.val[1]);
    v1617.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1629.val[0]), v829), vmaxq_s16(v1629.val[0], 0));
    v845 = vorrq_s8(vandq_s8(vcltzq_s16(v1634.val[1]), v841), vmaxq_s16(v1634.val[1], 0));
    v1634.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1634.val[0]), v838), vmaxq_s16(v1634.val[0], 0));
    v1629.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1622.val[1]), v833), vmaxq_s16(v1622.val[1], 0));
    v1629.val[0] = vorrq_s8(v844, vmaxq_s16(v839, 0));
    v846 = vqtbl2q_s8(v1629, xmmword_273BA7040);
    v1622.val[1].i32[0] = vtrn2q_s16(v843, v1617.val[0]).u32[0];
    v1622.val[1].i32[1] = vzip1q_s16(*(&v1617 + 16), *&v1622).i32[1];
    v841.i16[2] = v1617.val[1].i16[2];
    v847 = vqtbl2q_s8(v1629, xmmword_273BA7010);
    v1634.val[0].i32[0] = vzip1q_s16(v843, v1617.val[0]).u32[0];
    v1634.val[0].i32[1] = vqtbl2q_s8(*(&v1617 + 16), xmmword_273BA7020).i32[1];
    v846.i32[3] = vqtbl2q_s8(*(&v1634 + 16), xmmword_273BA7030).i32[3];
    v848 = vzip1q_s16(v1629.val[0], v1629.val[1]);
    v841.i16[3] = v1622.val[0].i16[2];
    v847.i32[3] = vqtbl2q_s8(*(&v1634 + 16), xmmword_273BA7000).i32[3];
    v839.i32[0] = vqtbl2q_s8(v1617, xmmword_273BA7060).u32[0];
    v839.i32[1] = v841.i32[1];
    v848.i32[3] = vqtbl2q_s8(*(&v1634 + 16), xmmword_273BA7050).i32[3];
    v849 = vtrn2q_s16(v1629.val[0], v1629.val[1]);
    v850 = vqtbl2q_s8(*(&v1634 + 16), xmmword_273BA7090);
    v851 = vzip1q_s16(v1634.val[1], v845);
    v849.i32[3] = vqtbl2q_s8(*(&v1634 + 16), xmmword_273BA70B0).i32[3];
    v852 = vzip2q_s16(v1634.val[1], v845);
    v853 = vzip2q_s16(v1629.val[0], v1629.val[1]);
    v1634.val[1].i16[7] = v845.i16[6];
    v853.i32[3] = v1634.val[1].i32[3];
    v845.i32[0] = vqtbl2q_s8(v1617, xmmword_273BA70C0).u32[0];
    v845.i32[1] = vzip2q_s16(*(&v1617 + 16), *&v1622).i32[1];
    v1634.val[1].i16[4] = v1629.val[0].i16[4];
    v1634.val[1].i16[5] = v1629.val[1].i16[4];
    v1634.val[1].i32[3] = v850.i32[3];
    v1622.val[1].i64[1] = v846.i64[1];
    v846.i32[0] = vzip2q_s16(v843, v1617.val[0]).u32[0];
    v846.i32[1] = vqtbl2q_s8(*(&v1617 + 16), xmmword_273BA70A0).i32[1];
    v839.i64[1] = v848.i64[1];
    v854 = vqtbl2q_s8(v1629, xmmword_273BA7070);
    v854.i32[3] = v851.i32[3];
    v845.i64[1] = v849.i64[1];
    v850.i32[0] = vqtbl2q_s8(v1617, xmmword_273BA7080).u32[0];
    v850.i32[1] = vtrn2q_s16(*(&v1617 + 16), *&v1622).i32[1];
    v850.i64[1] = v854.i64[1];
    v855 = vqtbl2q_s8(v1629, xmmword_273BA70F0);
    v855.i32[3] = v852.i32[3];
    v846.i64[1] = v1634.val[1].i64[1];
    v852.i32[0] = vqtbl2q_s8(v1617, xmmword_273BA7110).u32[0];
    v852.i32[1] = vqtbl2q_s8(*(&v1617 + 16), xmmword_273BA7100).i32[1];
    v792[2] = v839;
    v792[3] = v850;
    v852.i64[1] = v855.i64[1];
    v849.i32[0] = vqtbl2q_s8(v1617, xmmword_273BA70E0).u32[0];
    v792[4] = v846;
    v792[5] = v845;
    v849.i32[1] = vqtbl2q_s8(*(&v1617 + 16), xmmword_273BA70D0).i32[1];
    v849.i64[1] = v853.i64[1];
    v792[6] = v849;
    v792[7] = v852;
    v1634.val[0].i64[1] = v847.i64[1];
    *v792 = v1634.val[0];
    v792[1] = v1622.val[1];
    v779 += 16;
  }

  while (v779 != 64);
  v856 = 0;
  v857.i64[0] = 0xD000D000D000D00;
  v857.i64[1] = 0xD000D000D000D00;
  v858.i64[0] = 0xF2000000F2;
  v858.i64[1] = 0xF2000000F2;
  do
  {
    v859 = &v1575 + v856;
    v860 = v859[1];
    v861 = vaddq_s16(*v859, v860);
    v862 = vaddq_s16(v861, v857);
    v863 = vsubl_u16(*v859->i8, *v860.i8);
    v864 = vdupq_n_s32(0xD01u);
    v865 = vaddq_s32(vsubl_high_u16(*v859, v860), v864);
    v866 = vaddq_s32(v863, v864);
    v868 = vmulq_s32(v866, v867);
    v869 = vmulq_s32(v865, v867);
    v870 = vdupq_n_s32(0x13AFu);
    v871 = vuzp1q_s16(vmlaq_s32(v868, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v868.i8, *v870.i8), 0x18uLL), vmull_high_u32(v868, v870), 0x18uLL), v858), vmlaq_s32(v869, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v869.i8, *v870.i8), 0x18uLL), vmull_high_u32(v869, v870), 0x18uLL), v858));
    v872 = vaddq_s16(v871, v857);
    *v859 = vorrq_s8(vandq_s8(vcltzq_s16(v862), v861), vmaxq_s16(v862, 0));
    v859[1] = vorrq_s8(vandq_s8(vcltzq_s16(v872), v871), vmaxq_s16(v872, 0));
    v856 += 2;
  }

  while (v856 != 32);
  v873 = 0;
  v874 = v1576;
  v875 = vaddq_s16(v1575, v1577);
  v876.i64[0] = 0xD000D000D000D00;
  v876.i64[1] = 0xD000D000D000D00;
  v877 = vaddq_s16(v875, v876);
  v878 = vorrq_s8(vandq_s8(vcltzq_s16(v877), v875), vmaxq_s16(v877, 0));
  v879 = vdupq_n_s16(0x62Fu);
  v880 = vdupq_n_s32(0x50692Fu);
  v881 = vaddq_s32(vmlsl_u16(vmull_u16(*v1575.i8, *v879.i8), *v1577.i8, *v879.i8), v880);
  v882 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1575, v879), v1577, v879), v880);
  v883 = vdupq_n_s32(0x13AFu);
  v884.i64[0] = 0xF2000000F2;
  v884.i64[1] = 0xF2000000F2;
  v885 = vuzp1q_s16(vmlaq_s32(v881, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v881.i8, *v883.i8), 0x18uLL), vmull_high_u32(v881, v883), 0x18uLL), v884), vmlaq_s32(v882, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v882.i8, *v883.i8), 0x18uLL), vmull_high_u32(v882, v883), 0x18uLL), v884));
  v886 = vaddq_s16(v885, v876);
  v887 = vorrq_s8(vandq_s8(vcltzq_s16(v886), v885), vmaxq_s16(v886, 0));
  v888 = vaddq_s16(v1576, v1578);
  v889 = vaddq_s16(v888, v876);
  v1575 = v878;
  v1576 = vorrq_s8(vandq_s8(vcltzq_s16(v889), v888), vmaxq_s16(v889, 0));
  v890 = vaddq_s32(vmlsl_u16(vmull_u16(*v874.i8, *v879.i8), *v1578.i8, *v879.i8), v880);
  v891 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v874, v879), v1578, v879), v880);
  v892 = vuzp1q_s16(vmlaq_s32(v890, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v890.i8, *v883.i8), 0x18uLL), vmull_high_u32(v890, v883), 0x18uLL), v884), vmlaq_s32(v891, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v891.i8, *v883.i8), 0x18uLL), vmull_high_u32(v891, v883), 0x18uLL), v884));
  v893 = vaddq_s16(v892, v876);
  v1577 = v887;
  v1578 = vorrq_s8(vandq_s8(vcltzq_s16(v893), v892), vmaxq_s16(v893, 0));
  v894 = v1580;
  v895 = vaddq_s16(v1579, v1581);
  v896 = vaddq_s16(v895, v876);
  v897 = vorrq_s8(vandq_s8(vcltzq_s16(v896), v895), vmaxq_s16(v896, 0));
  v898 = vdupq_n_s16(0xAC8u);
  v899 = vdupq_n_s32(0x8C32C8u);
  v900 = vaddq_s32(vmlsl_u16(vmull_u16(*v1579.i8, *v898.i8), *v1581.i8, *v898.i8), v899);
  v901 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1579, v898), v1581, v898), v899);
  v902 = vuzp1q_s16(vmlaq_s32(v900, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v900.i8, *v883.i8), 0x18uLL), vmull_high_u32(v900, v883), 0x18uLL), v884), vmlaq_s32(v901, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v901.i8, *v883.i8), 0x18uLL), vmull_high_u32(v901, v883), 0x18uLL), v884));
  v903 = vaddq_s16(v902, v876);
  v904 = vorrq_s8(vandq_s8(vcltzq_s16(v903), v902), vmaxq_s16(v903, 0));
  v905 = vaddq_s16(v1580, v1582);
  v906 = vaddq_s16(v905, v876);
  v1579 = v897;
  v1580 = vorrq_s8(vandq_s8(vcltzq_s16(v906), v905), vmaxq_s16(v906, 0));
  v907 = vaddq_s32(vmlsl_u16(vmull_u16(*v894.i8, *v898.i8), *v1582.i8, *v898.i8), v899);
  v908 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v894, v898), v1582, v898), v899);
  v909 = vuzp1q_s16(vmlaq_s32(v907, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v907.i8, *v883.i8), 0x18uLL), vmull_high_u32(v907, v883), 0x18uLL), v884), vmlaq_s32(v908, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v908.i8, *v883.i8), 0x18uLL), vmull_high_u32(v908, v883), 0x18uLL), v884));
  v910 = vaddq_s16(v909, v876);
  v1581 = v904;
  v1582 = vorrq_s8(vandq_s8(vcltzq_s16(v910), v909), vmaxq_s16(v910, 0));
  v911 = v1584;
  v912 = vaddq_s16(v1583, v1585);
  v913 = vaddq_s16(v912, v876);
  v914 = vorrq_s8(vandq_s8(vcltzq_s16(v913), v912), vmaxq_s16(v913, 0));
  v913.i64[0] = 0x45004500450045;
  v913.i64[1] = 0x45004500450045;
  v915 = vdupq_n_s32(0x38145u);
  v916 = vaddq_s32(vmlsl_u16(vmull_u16(*v1583.i8, 0x45004500450045), *v1585.i8, 0x45004500450045), v915);
  v917 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1583, v913), v1585, v913), v915);
  v918 = vuzp1q_s16(vmlaq_s32(v916, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v916.i8, *v883.i8), 0x18uLL), vmull_high_u32(v916, v883), 0x18uLL), v884), vmlaq_s32(v917, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v917.i8, *v883.i8), 0x18uLL), vmull_high_u32(v917, v883), 0x18uLL), v884));
  v919 = vaddq_s16(v918, v876);
  v920 = vorrq_s8(vandq_s8(vcltzq_s16(v919), v918), vmaxq_s16(v919, 0));
  v921 = vaddq_s16(v1584, v1586);
  v922 = vaddq_s16(v921, v876);
  v1583 = v914;
  v1584 = vorrq_s8(vandq_s8(vcltzq_s16(v922), v921), vmaxq_s16(v922, 0));
  v923 = vaddq_s32(vmlsl_u16(vmull_u16(*v911.i8, 0x45004500450045), *v1586.i8, 0x45004500450045), v915);
  v924 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v911, v913), v1586, v913), v915);
  v925 = vuzp1q_s16(vmlaq_s32(v923, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v923.i8, *v883.i8), 0x18uLL), vmull_high_u32(v923, v883), 0x18uLL), v884), vmlaq_s32(v924, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v924.i8, *v883.i8), 0x18uLL), vmull_high_u32(v924, v883), 0x18uLL), v884));
  v926 = vaddq_s16(v925, v876);
  v1585 = v920;
  v1586 = vorrq_s8(vandq_s8(vcltzq_s16(v926), v925), vmaxq_s16(v926, 0));
  v927 = v1588;
  v928 = vaddq_s16(v1587, v1589);
  v929 = vaddq_s16(v928, v876);
  v930 = vorrq_s8(vandq_s8(vcltzq_s16(v929), v928), vmaxq_s16(v929, 0));
  v931 = vdupq_n_s16(0x21Fu);
  v932 = vdupq_n_s32(0x1B951Fu);
  v933 = vaddq_s32(vmlsl_u16(vmull_u16(*v1587.i8, *v931.i8), *v1589.i8, *v931.i8), v932);
  v934 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1587, v931), v1589, v931), v932);
  v935 = vuzp1q_s16(vmlaq_s32(v933, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v933.i8, *v883.i8), 0x18uLL), vmull_high_u32(v933, v883), 0x18uLL), v884), vmlaq_s32(v934, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v934.i8, *v883.i8), 0x18uLL), vmull_high_u32(v934, v883), 0x18uLL), v884));
  v936 = vaddq_s16(v935, v876);
  v937 = vorrq_s8(vandq_s8(vcltzq_s16(v936), v935), vmaxq_s16(v936, 0));
  v938 = vaddq_s16(v1588, v1590);
  v939 = vaddq_s16(v938, v876);
  v1587 = v930;
  v1588 = vorrq_s8(vandq_s8(vcltzq_s16(v939), v938), vmaxq_s16(v939, 0));
  v940 = vaddq_s32(vmlsl_u16(vmull_u16(*v927.i8, *v931.i8), *v1590.i8, *v931.i8), v932);
  v941 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v927, v931), v1590, v931), v932);
  v942 = vuzp1q_s16(vmlaq_s32(v940, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v940.i8, *v883.i8), 0x18uLL), vmull_high_u32(v940, v883), 0x18uLL), v884), vmlaq_s32(v941, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v941.i8, *v883.i8), 0x18uLL), vmull_high_u32(v941, v883), 0x18uLL), v884));
  v943 = vaddq_s16(v942, v876);
  v1589 = v937;
  v1590 = vorrq_s8(vandq_s8(vcltzq_s16(v943), v942), vmaxq_s16(v943, 0));
  v944 = v1592;
  v945 = vaddq_s16(v1591, v1593);
  v946 = vaddq_s16(v945, v876);
  v947 = vorrq_s8(vandq_s8(vcltzq_s16(v946), v945), vmaxq_s16(v946, 0));
  v948 = vdupq_n_s16(0x9E4u);
  v949 = vdupq_n_s32(0x809DE4u);
  v950 = vaddq_s32(vmlsl_u16(vmull_u16(*v1591.i8, *v948.i8), *v1593.i8, *v948.i8), v949);
  v951 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1591, v948), v1593, v948), v949);
  v952 = vuzp1q_s16(vmlaq_s32(v950, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v950.i8, *v883.i8), 0x18uLL), vmull_high_u32(v950, v883), 0x18uLL), v884), vmlaq_s32(v951, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v951.i8, *v883.i8), 0x18uLL), vmull_high_u32(v951, v883), 0x18uLL), v884));
  v953 = vaddq_s16(v952, v876);
  v954 = vorrq_s8(vandq_s8(vcltzq_s16(v953), v952), vmaxq_s16(v953, 0));
  v955 = vaddq_s16(v1592, v1594);
  v956 = vaddq_s16(v955, v876);
  v1591 = v947;
  v1592 = vorrq_s8(vandq_s8(vcltzq_s16(v956), v955), vmaxq_s16(v956, 0));
  v957 = vaddq_s32(vmlsl_u16(vmull_u16(*v944.i8, *v948.i8), *v1594.i8, *v948.i8), v949);
  v958 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v944, v948), v1594, v948), v949);
  v959 = vuzp1q_s16(vmlaq_s32(v957, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v957.i8, *v883.i8), 0x18uLL), vmull_high_u32(v957, v883), 0x18uLL), v884), vmlaq_s32(v958, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v958.i8, *v883.i8), 0x18uLL), vmull_high_u32(v958, v883), 0x18uLL), v884));
  v960 = vaddq_s16(v959, v876);
  v1593 = v954;
  v1594 = vorrq_s8(vandq_s8(vcltzq_s16(v960), v959), vmaxq_s16(v960, 0));
  v961 = v1596;
  v962 = vaddq_s16(v1595, v1597);
  v963 = vaddq_s16(v962, v876);
  v964 = vdupq_n_s16(0xC40u);
  v965 = vorrq_s8(vandq_s8(vcltzq_s16(v963), v962), vmaxq_s16(v963, 0));
  v966 = vdupq_n_s32(0x9F4C40u);
  v967 = vaddq_s32(vmlsl_u16(vmull_u16(*v1595.i8, *v964.i8), *v1597.i8, *v964.i8), v966);
  v968 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1595, v964), v1597, v964), v966);
  v969 = vuzp1q_s16(vmlaq_s32(v967, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v967.i8, *v883.i8), 0x18uLL), vmull_high_u32(v967, v883), 0x18uLL), v884), vmlaq_s32(v968, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v968.i8, *v883.i8), 0x18uLL), vmull_high_u32(v968, v883), 0x18uLL), v884));
  v970 = vaddq_s16(v969, v876);
  v971 = vorrq_s8(vandq_s8(vcltzq_s16(v970), v969), vmaxq_s16(v970, 0));
  v972 = vaddq_s16(v1596, v1598);
  v973 = vaddq_s16(v972, v876);
  v1595 = v965;
  v1596 = vorrq_s8(vandq_s8(vcltzq_s16(v973), v972), vmaxq_s16(v973, 0));
  v974 = vaddq_s32(vmlsl_u16(vmull_u16(*v961.i8, *v964.i8), *v1598.i8, *v964.i8), v966);
  v975 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v961, v964), v1598, v964), v966);
  v976 = vuzp1q_s16(vmlaq_s32(v974, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v974.i8, *v883.i8), 0x18uLL), vmull_high_u32(v974, v883), 0x18uLL), v884), vmlaq_s32(v975, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v975.i8, *v883.i8), 0x18uLL), vmull_high_u32(v975, v883), 0x18uLL), v884));
  v977 = vaddq_s16(v976, v876);
  v1597 = v971;
  v1598 = vorrq_s8(vandq_s8(vcltzq_s16(v977), v976), vmaxq_s16(v977, 0));
  v978 = v1600;
  v979 = vaddq_s16(v1599, v1601);
  v980 = vaddq_s16(v979, v876);
  v981 = vorrq_s8(vandq_s8(vcltzq_s16(v980), v979), vmaxq_s16(v980, 0));
  v982 = vdupq_n_s16(0x582u);
  v983 = vdupq_n_s32(0x479F82u);
  v984 = vaddq_s32(vmlsl_u16(vmull_u16(*v1599.i8, *v982.i8), *v1601.i8, *v982.i8), v983);
  v985 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1599, v982), v1601, v982), v983);
  v986 = vuzp1q_s16(vmlaq_s32(v984, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v984.i8, *v883.i8), 0x18uLL), vmull_high_u32(v984, v883), 0x18uLL), v884), vmlaq_s32(v985, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v985.i8, *v883.i8), 0x18uLL), vmull_high_u32(v985, v883), 0x18uLL), v884));
  v987 = vaddq_s16(v986, v876);
  v988 = vorrq_s8(vandq_s8(vcltzq_s16(v987), v986), vmaxq_s16(v987, 0));
  v989 = vaddq_s16(v1600, v1602);
  v990 = vaddq_s16(v989, v876);
  v1599 = v981;
  v1600 = vorrq_s8(vandq_s8(vcltzq_s16(v990), v989), vmaxq_s16(v990, 0));
  v991 = vaddq_s32(vmlsl_u16(vmull_u16(*v978.i8, *v982.i8), *v1602.i8, *v982.i8), v983);
  v992 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v978, v982), v1602, v982), v983);
  v993 = vuzp1q_s16(vmlaq_s32(v991, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v991.i8, *v883.i8), 0x18uLL), vmull_high_u32(v991, v883), 0x18uLL), v884), vmlaq_s32(v992, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v992.i8, *v883.i8), 0x18uLL), vmull_high_u32(v992, v883), 0x18uLL), v884));
  v994 = vaddq_s16(v993, v876);
  v1601 = v988;
  v1602 = vorrq_s8(vandq_s8(vcltzq_s16(v994), v993), vmaxq_s16(v994, 0));
  v995 = v1604;
  v996 = vaddq_s16(v1603, v1605);
  v997 = vaddq_s16(v996, v876);
  v998 = vorrq_s8(vandq_s8(vcltzq_s16(v997), v996), vmaxq_s16(v997, 0));
  v999 = vdupq_n_s16(0x8DBu);
  v1000 = vdupq_n_s32(0x7327DBu);
  v1001 = vaddq_s32(vmlsl_u16(vmull_u16(*v1603.i8, *v999.i8), *v1605.i8, *v999.i8), v1000);
  v1002 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1603, v999), v1605, v999), v1000);
  v1003 = vuzp1q_s16(vmlaq_s32(v1001, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1001.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1001, v883), 0x18uLL), v884), vmlaq_s32(v1002, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1002.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1002, v883), 0x18uLL), v884));
  v1004 = vaddq_s16(v1003, v876);
  v1005 = vorrq_s8(vandq_s8(vcltzq_s16(v1004), v1003), vmaxq_s16(v1004, 0));
  v1006 = vaddq_s16(v1604, v1606);
  v1007 = vaddq_s16(v1006, v876);
  v1603 = v998;
  v1604 = vorrq_s8(vandq_s8(vcltzq_s16(v1007), v1006), vmaxq_s16(v1007, 0));
  v1008 = vaddq_s32(vmlsl_u16(vmull_u16(*v995.i8, *v999.i8), *v1606.i8, *v999.i8), v1000);
  v1009 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v995, v999), v1606, v999), v1000);
  v1010 = vuzp1q_s16(vmlaq_s32(v1008, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1008.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1008, v883), 0x18uLL), v884), vmlaq_s32(v1009, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1009.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1009, v883), 0x18uLL), v884));
  v1011 = vaddq_s16(v1010, v876);
  v1605 = v1005;
  v1606 = vorrq_s8(vandq_s8(vcltzq_s16(v1011), v1010), vmaxq_s16(v1011, 0));
  v1012 = v1576;
  v1013 = vaddq_s16(v1575, v1579);
  v1014 = vaddq_s16(v1013, v876);
  v1015 = vandq_s8(vcltzq_s16(v1014), v1013);
  v1016 = vdupq_n_s16(0x9B1u);
  v1017 = vorrq_s8(v1015, vmaxq_s16(v1014, 0));
  v1018 = vdupq_n_s32(0x7E06B1u);
  v1019 = vaddq_s32(vmlsl_u16(vmull_u16(*v1575.i8, *v1016.i8), *v1579.i8, *v1016.i8), v1018);
  v1020 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1575, v1016), v1579, v1016), v1018);
  v1021 = vuzp1q_s16(vmlaq_s32(v1019, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1019.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1019, v883), 0x18uLL), v884), vmlaq_s32(v1020, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1020.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1020, v883), 0x18uLL), v884));
  v1022 = vaddq_s16(v1021, v876);
  v1023 = vorrq_s8(vandq_s8(vcltzq_s16(v1022), v1021), vmaxq_s16(v1022, 0));
  v1024 = vaddq_s16(v1576, v1580);
  v1025 = vaddq_s16(v1024, v876);
  v1575 = v1017;
  v1576 = vorrq_s8(vandq_s8(vcltzq_s16(v1025), v1024), vmaxq_s16(v1025, 0));
  v1026 = vaddq_s32(vmlsl_u16(vmull_u16(*v1012.i8, *v1016.i8), *v1580.i8, *v1016.i8), v1018);
  v1027 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1012, v1016), v1580, v1016), v1018);
  v1028 = vuzp1q_s16(vmlaq_s32(v1026, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1026.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1026, v883), 0x18uLL), v884), vmlaq_s32(v1027, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1027.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1027, v883), 0x18uLL), v884));
  v1029 = vaddq_s16(v1028, v876);
  v1579 = v1023;
  v1580 = vorrq_s8(vandq_s8(vcltzq_s16(v1029), v1028), vmaxq_s16(v1029, 0));
  v1030 = v1578;
  v1031 = vaddq_s16(v1577, v1581);
  v1032 = vaddq_s16(v1031, v876);
  v1033 = vorrq_s8(vandq_s8(vcltzq_s16(v1032), v1031), vmaxq_s16(v1032, 0));
  v1034 = vaddq_s32(vmlsl_u16(vmull_u16(*v1577.i8, *v1016.i8), *v1581.i8, *v1016.i8), v1018);
  v1035 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1577, v1016), v1581, v1016), v1018);
  v1036 = vuzp1q_s16(vmlaq_s32(v1034, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1034.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1034, v883), 0x18uLL), v884), vmlaq_s32(v1035, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1035.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1035, v883), 0x18uLL), v884));
  v1037 = vaddq_s16(v1036, v876);
  v1038 = vorrq_s8(vandq_s8(vcltzq_s16(v1037), v1036), vmaxq_s16(v1037, 0));
  v1039 = vaddq_s16(v1578, v1582);
  v1040 = vaddq_s16(v1039, v876);
  v1577 = v1033;
  v1578 = vorrq_s8(vandq_s8(vcltzq_s16(v1040), v1039), vmaxq_s16(v1040, 0));
  v1041 = vmlsl_high_u16(vmull_high_u16(v1030, v1016), v1582, v1016);
  v1042 = vaddq_s32(vmlsl_u16(vmull_u16(*v1030.i8, *v1016.i8), *v1582.i8, *v1016.i8), v1018);
  v1043 = vaddq_s32(v1041, v1018);
  v1044 = vuzp1q_s16(vmlaq_s32(v1042, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1042.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1042, v883), 0x18uLL), v884), vmlaq_s32(v1043, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1043.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1043, v883), 0x18uLL), v884));
  v1045 = vaddq_s16(v1044, v876);
  v1581 = v1038;
  v1582 = vorrq_s8(vandq_s8(vcltzq_s16(v1045), v1044), vmaxq_s16(v1045, 0));
  v1046 = v1584;
  v1047 = vaddq_s16(v1583, v1587);
  v1048 = vaddq_s16(v1047, v876);
  v1049 = vorrq_s8(vandq_s8(vcltzq_s16(v1048), v1047), vmaxq_s16(v1048, 0));
  v1050 = vdupq_n_s16(0x598u);
  v1051 = vdupq_n_s32(0x48BD98u);
  v1052 = vaddq_s32(vmlsl_u16(vmull_u16(*v1583.i8, *v1050.i8), *v1587.i8, *v1050.i8), v1051);
  v1053 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1583, v1050), v1587, v1050), v1051);
  v1054 = vuzp1q_s16(vmlaq_s32(v1052, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1052.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1052, v883), 0x18uLL), v884), vmlaq_s32(v1053, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1053.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1053, v883), 0x18uLL), v884));
  v1055 = vaddq_s16(v1054, v876);
  v1056 = vorrq_s8(vandq_s8(vcltzq_s16(v1055), v1054), vmaxq_s16(v1055, 0));
  v1057 = vaddq_s16(v1584, v1588);
  v1058 = vaddq_s16(v1057, v876);
  v1583 = v1049;
  v1584 = vorrq_s8(vandq_s8(vcltzq_s16(v1058), v1057), vmaxq_s16(v1058, 0));
  v1059 = vaddq_s32(vmlsl_u16(vmull_u16(*v1046.i8, *v1050.i8), *v1588.i8, *v1050.i8), v1051);
  v1060 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1046, v1050), v1588, v1050), v1051);
  v1061 = vuzp1q_s16(vmlaq_s32(v1059, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1059.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1059, v883), 0x18uLL), v884), vmlaq_s32(v1060, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1060.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1060, v883), 0x18uLL), v884));
  v1062 = vaddq_s16(v1061, v876);
  v1587 = v1056;
  v1588 = vorrq_s8(vandq_s8(vcltzq_s16(v1062), v1061), vmaxq_s16(v1062, 0));
  v1063 = v1586;
  v1064 = vaddq_s16(v1585, v1589);
  v1065 = vaddq_s16(v1064, v876);
  v1066 = vorrq_s8(vandq_s8(vcltzq_s16(v1065), v1064), vmaxq_s16(v1065, 0));
  v1067 = vaddq_s32(vmlsl_u16(vmull_u16(*v1585.i8, *v1050.i8), *v1589.i8, *v1050.i8), v1051);
  v1068 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1585, v1050), v1589, v1050), v1051);
  v1069 = vuzp1q_s16(vmlaq_s32(v1067, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1067.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1067, v883), 0x18uLL), v884), vmlaq_s32(v1068, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1068.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1068, v883), 0x18uLL), v884));
  v1070 = vaddq_s16(v1069, v876);
  v1071 = vorrq_s8(vandq_s8(vcltzq_s16(v1070), v1069), vmaxq_s16(v1070, 0));
  v1072 = vaddq_s16(v1586, v1590);
  v1073 = vaddq_s16(v1072, v876);
  v1585 = v1066;
  v1586 = vorrq_s8(vandq_s8(vcltzq_s16(v1073), v1072), vmaxq_s16(v1073, 0));
  v1074 = vmlsl_high_u16(vmull_high_u16(v1063, v1050), v1590, v1050);
  v1075 = vaddq_s32(vmlsl_u16(vmull_u16(*v1063.i8, *v1050.i8), *v1590.i8, *v1050.i8), v1051);
  v1076 = vaddq_s32(v1074, v1051);
  v1077 = vuzp1q_s16(vmlaq_s32(v1075, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1075.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1075, v883), 0x18uLL), v884), vmlaq_s32(v1076, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1076.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1076, v883), 0x18uLL), v884));
  v1078 = vaddq_s16(v1077, v876);
  v1589 = v1071;
  v1590 = vorrq_s8(vandq_s8(vcltzq_s16(v1078), v1077), vmaxq_s16(v1078, 0));
  v1079 = v1592;
  v1080 = vaddq_s16(v1591, v1595);
  v1081 = vaddq_s16(v1080, v876);
  v1082 = vorrq_s8(vandq_s8(vcltzq_s16(v1081), v1080), vmaxq_s16(v1081, 0));
  v1083 = vdupq_n_s16(0xA8Bu);
  v1084 = vdupq_n_s32(0x89198Bu);
  v1085 = vaddq_s32(vmlsl_u16(vmull_u16(*v1591.i8, *v1083.i8), *v1595.i8, *v1083.i8), v1084);
  v1086 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1591, v1083), v1595, v1083), v1084);
  v1087 = vuzp1q_s16(vmlaq_s32(v1085, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1085.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1085, v883), 0x18uLL), v884), vmlaq_s32(v1086, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1086.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1086, v883), 0x18uLL), v884));
  v1088 = vaddq_s16(v1087, v876);
  v1089 = vorrq_s8(vandq_s8(vcltzq_s16(v1088), v1087), vmaxq_s16(v1088, 0));
  v1090 = vaddq_s16(v1592, v1596);
  v1091 = vaddq_s16(v1090, v876);
  v1591 = v1082;
  v1592 = vorrq_s8(vandq_s8(vcltzq_s16(v1091), v1090), vmaxq_s16(v1091, 0));
  v1092 = vaddq_s32(vmlsl_u16(vmull_u16(*v1079.i8, *v1083.i8), *v1596.i8, *v1083.i8), v1084);
  v1093 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1079, v1083), v1596, v1083), v1084);
  v1094 = vuzp1q_s16(vmlaq_s32(v1092, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1092.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1092, v883), 0x18uLL), v884), vmlaq_s32(v1093, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1093.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1093, v883), 0x18uLL), v884));
  v1095 = vaddq_s16(v1094, v876);
  v1595 = v1089;
  v1596 = vorrq_s8(vandq_s8(vcltzq_s16(v1095), v1094), vmaxq_s16(v1095, 0));
  v1096 = v1594;
  v1097 = vaddq_s16(v1593, v1597);
  v1098 = vaddq_s16(v1097, v876);
  v1099 = vorrq_s8(vandq_s8(vcltzq_s16(v1098), v1097), vmaxq_s16(v1098, 0));
  v1100 = vaddq_s32(vmlsl_u16(vmull_u16(*v1593.i8, *v1083.i8), *v1597.i8, *v1083.i8), v1084);
  v1101 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1593, v1083), v1597, v1083), v1084);
  v1102 = vuzp1q_s16(vmlaq_s32(v1100, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1100.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1100, v883), 0x18uLL), v884), vmlaq_s32(v1101, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1101.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1101, v883), 0x18uLL), v884));
  v1103 = vaddq_s16(v1102, v876);
  v1104 = vorrq_s8(vandq_s8(vcltzq_s16(v1103), v1102), vmaxq_s16(v1103, 0));
  v1105 = vaddq_s16(v1594, v1598);
  v1106 = vaddq_s16(v1105, v876);
  v1593 = v1099;
  v1594 = vorrq_s8(vandq_s8(vcltzq_s16(v1106), v1105), vmaxq_s16(v1106, 0));
  v1107 = vmlsl_high_u16(vmull_high_u16(v1096, v1083), v1598, v1083);
  v1108 = vaddq_s32(vmlsl_u16(vmull_u16(*v1096.i8, *v1083.i8), *v1598.i8, *v1083.i8), v1084);
  v1109 = vaddq_s32(v1107, v1084);
  v1110 = vuzp1q_s16(vmlaq_s32(v1108, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1108.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1108, v883), 0x18uLL), v884), vmlaq_s32(v1109, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1109.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1109, v883), 0x18uLL), v884));
  v1111 = vaddq_s16(v1110, v876);
  v1597 = v1104;
  v1598 = vorrq_s8(vandq_s8(vcltzq_s16(v1111), v1110), vmaxq_s16(v1111, 0));
  v1112 = v1600;
  v1113 = vaddq_s16(v1599, v1603);
  v1114 = vaddq_s16(v1113, v876);
  v1115 = vandq_s8(vcltzq_s16(v1114), v1113);
  v1116 = vdupq_n_s16(0x2AFu);
  v1117 = vorrq_s8(v1115, vmaxq_s16(v1114, 0));
  v1118 = vdupq_n_s32(0x22E5AFu);
  v1119 = vaddq_s32(vmlsl_u16(vmull_u16(*v1599.i8, *v1116.i8), *v1603.i8, *v1116.i8), v1118);
  v1120 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1599, v1116), v1603, v1116), v1118);
  v1121 = vuzp1q_s16(vmlaq_s32(v1119, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1119.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1119, v883), 0x18uLL), v884), vmlaq_s32(v1120, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1120.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1120, v883), 0x18uLL), v884));
  v1122 = vaddq_s16(v1121, v876);
  v1123 = vorrq_s8(vandq_s8(vcltzq_s16(v1122), v1121), vmaxq_s16(v1122, 0));
  v1124 = vaddq_s16(v1600, v1604);
  v1125 = vaddq_s16(v1124, v876);
  v1599 = v1117;
  v1600 = vorrq_s8(vandq_s8(vcltzq_s16(v1125), v1124), vmaxq_s16(v1125, 0));
  v1126 = vaddq_s32(vmlsl_u16(vmull_u16(*v1112.i8, *v1116.i8), *v1604.i8, *v1116.i8), v1118);
  v1127 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1112, v1116), v1604, v1116), v1118);
  v1128 = vuzp1q_s16(vmlaq_s32(v1126, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1126.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1126, v883), 0x18uLL), v884), vmlaq_s32(v1127, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1127.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1127, v883), 0x18uLL), v884));
  v1129 = vaddq_s16(v1128, v876);
  v1603 = v1123;
  v1604 = vorrq_s8(vandq_s8(vcltzq_s16(v1129), v1128), vmaxq_s16(v1129, 0));
  v1130 = v1602;
  v1131 = vaddq_s16(v1601, v1605);
  v1132 = vaddq_s16(v1131, v876);
  v1133 = vorrq_s8(vandq_s8(vcltzq_s16(v1132), v1131), vmaxq_s16(v1132, 0));
  v1134 = vaddq_s32(vmlsl_u16(vmull_u16(*v1601.i8, *v1116.i8), *v1605.i8, *v1116.i8), v1118);
  v1135 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1601, v1116), v1605, v1116), v1118);
  v1136 = vuzp1q_s16(vmlaq_s32(v1134, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1134.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1134, v883), 0x18uLL), v884), vmlaq_s32(v1135, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1135.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1135, v883), 0x18uLL), v884));
  v1137 = vaddq_s16(v1136, v876);
  v1138 = vorrq_s8(vandq_s8(vcltzq_s16(v1137), v1136), vmaxq_s16(v1137, 0));
  v1139 = vaddq_s16(v1602, v1606);
  v1140 = vaddq_s16(v1139, v876);
  v1601 = v1133;
  v1602 = vorrq_s8(vandq_s8(vcltzq_s16(v1140), v1139), vmaxq_s16(v1140, 0));
  v1141 = vmlsl_high_u16(vmull_high_u16(v1130, v1116), v1606, v1116);
  v1142 = vaddq_s32(vmlsl_u16(vmull_u16(*v1130.i8, *v1116.i8), *v1606.i8, *v1116.i8), v1118);
  v1143 = vaddq_s32(v1141, v1118);
  v1144 = vuzp1q_s16(vmlaq_s32(v1142, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1142.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1142, v883), 0x18uLL), v884), vmlaq_s32(v1143, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1143.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1143, v883), 0x18uLL), v884));
  v1145 = vaddq_s16(v1144, v876);
  v1605 = v1138;
  v1606 = vorrq_s8(vandq_s8(vcltzq_s16(v1145), v1144), vmaxq_s16(v1145, 0));
  v1146 = v1576;
  v1147 = vaddq_s16(v1575, v1583);
  v1148 = vaddq_s16(v1147, v876);
  v1149 = vorrq_s8(vandq_s8(vcltzq_s16(v1148), v1147), vmaxq_s16(v1148, 0));
  v1147.i64[0] = 0x28002800280028;
  v1147.i64[1] = 0x28002800280028;
  v1150 = vdupq_n_s32(0x20828u);
  v1151 = vaddq_s32(vmlsl_u16(vmull_u16(*v1575.i8, 0x28002800280028), *v1583.i8, 0x28002800280028), v1150);
  v1152 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1575, v1147), v1583, v1147), v1150);
  v1153 = vuzp1q_s16(vmlaq_s32(v1151, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1151.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1151, v883), 0x18uLL), v884), vmlaq_s32(v1152, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1152.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1152, v883), 0x18uLL), v884));
  v1154 = vaddq_s16(v1153, v876);
  v1155 = vorrq_s8(vandq_s8(vcltzq_s16(v1154), v1153), vmaxq_s16(v1154, 0));
  v1156 = vaddq_s16(v1576, v1584);
  v1157 = vaddq_s16(v1156, v876);
  v1575 = v1149;
  v1576 = vorrq_s8(vandq_s8(vcltzq_s16(v1157), v1156), vmaxq_s16(v1157, 0));
  v1158 = vaddq_s32(vmlsl_u16(vmull_u16(*v1146.i8, 0x28002800280028), *v1584.i8, 0x28002800280028), v1150);
  v1159 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1146, v1147), v1584, v1147), v1150);
  v1160 = vuzp1q_s16(vmlaq_s32(v1158, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1158.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1158, v883), 0x18uLL), v884), vmlaq_s32(v1159, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1159.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1159, v883), 0x18uLL), v884));
  v1161 = vaddq_s16(v1160, v876);
  v1583 = v1155;
  v1584 = vorrq_s8(vandq_s8(vcltzq_s16(v1161), v1160), vmaxq_s16(v1161, 0));
  v1162 = v1578;
  v1163 = vaddq_s16(v1577, v1585);
  v1164 = vaddq_s16(v1163, v876);
  v1165 = vorrq_s8(vandq_s8(vcltzq_s16(v1164), v1163), vmaxq_s16(v1164, 0));
  v1166 = vaddq_s32(vmlsl_u16(vmull_u16(*v1577.i8, 0x28002800280028), *v1585.i8, 0x28002800280028), v1150);
  v1167 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1577, v1147), v1585, v1147), v1150);
  v1168 = vuzp1q_s16(vmlaq_s32(v1166, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1166.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1166, v883), 0x18uLL), v884), vmlaq_s32(v1167, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1167.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1167, v883), 0x18uLL), v884));
  v1169 = vaddq_s16(v1168, v876);
  v1170 = vorrq_s8(vandq_s8(vcltzq_s16(v1169), v1168), vmaxq_s16(v1169, 0));
  v1171 = vaddq_s16(v1578, v1586);
  v1172 = vaddq_s16(v1171, v876);
  v1577 = v1165;
  v1578 = vorrq_s8(vandq_s8(vcltzq_s16(v1172), v1171), vmaxq_s16(v1172, 0));
  v1173 = vaddq_s32(vmlsl_u16(vmull_u16(*v1162.i8, 0x28002800280028), *v1586.i8, 0x28002800280028), v1150);
  v1174 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1162, v1147), v1586, v1147), v1150);
  v1175 = vuzp1q_s16(vmlaq_s32(v1173, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1173.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1173, v883), 0x18uLL), v884), vmlaq_s32(v1174, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1174.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1174, v883), 0x18uLL), v884));
  v1176 = vaddq_s16(v1175, v876);
  v1585 = v1170;
  v1586 = vorrq_s8(vandq_s8(vcltzq_s16(v1176), v1175), vmaxq_s16(v1176, 0));
  v1177 = v1580;
  v1178 = vaddq_s16(v1579, v1587);
  v1179 = vaddq_s16(v1178, v876);
  v1180 = vorrq_s8(vandq_s8(vcltzq_s16(v1179), v1178), vmaxq_s16(v1179, 0));
  v1181 = vaddq_s32(vmlsl_u16(vmull_u16(*v1579.i8, 0x28002800280028), *v1587.i8, 0x28002800280028), v1150);
  v1182 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1579, v1147), v1587, v1147), v1150);
  v1183 = vuzp1q_s16(vmlaq_s32(v1181, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1181.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1181, v883), 0x18uLL), v884), vmlaq_s32(v1182, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1182.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1182, v883), 0x18uLL), v884));
  v1184 = vaddq_s16(v1183, v876);
  v1185 = vorrq_s8(vandq_s8(vcltzq_s16(v1184), v1183), vmaxq_s16(v1184, 0));
  v1186 = vaddq_s16(v1580, v1588);
  v1187 = vaddq_s16(v1186, v876);
  v1579 = v1180;
  v1580 = vorrq_s8(vandq_s8(vcltzq_s16(v1187), v1186), vmaxq_s16(v1187, 0));
  v1188 = vaddq_s32(vmlsl_u16(vmull_u16(*v1177.i8, 0x28002800280028), *v1588.i8, 0x28002800280028), v1150);
  v1189 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1177, v1147), v1588, v1147), v1150);
  v1190 = vuzp1q_s16(vmlaq_s32(v1188, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1188.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1188, v883), 0x18uLL), v884), vmlaq_s32(v1189, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1189.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1189, v883), 0x18uLL), v884));
  v1191 = vaddq_s16(v1190, v876);
  v1587 = v1185;
  v1588 = vorrq_s8(vandq_s8(vcltzq_s16(v1191), v1190), vmaxq_s16(v1191, 0));
  v1192 = v1582;
  v1193 = vaddq_s16(v1581, v1589);
  v1194 = vaddq_s16(v1193, v876);
  v1195 = vorrq_s8(vandq_s8(vcltzq_s16(v1194), v1193), vmaxq_s16(v1194, 0));
  v1196 = vaddq_s32(vmlsl_u16(vmull_u16(*v1581.i8, 0x28002800280028), *v1589.i8, 0x28002800280028), v1150);
  v1197 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1581, v1147), v1589, v1147), v1150);
  v1198 = vuzp1q_s16(vmlaq_s32(v1196, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1196.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1196, v883), 0x18uLL), v884), vmlaq_s32(v1197, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1197.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1197, v883), 0x18uLL), v884));
  v1199 = vaddq_s16(v1198, v876);
  v1200 = vorrq_s8(vandq_s8(vcltzq_s16(v1199), v1198), vmaxq_s16(v1199, 0));
  v1201 = vaddq_s16(v1582, v1590);
  v1202 = vaddq_s16(v1201, v876);
  v1581 = v1195;
  v1582 = vorrq_s8(vandq_s8(vcltzq_s16(v1202), v1201), vmaxq_s16(v1202, 0));
  v1203 = vmlsl_high_u16(vmull_high_u16(v1192, v1147), v1590, v1147);
  v1204 = vaddq_s32(vmlsl_u16(vmull_u16(*v1192.i8, 0x28002800280028), *v1590.i8, 0x28002800280028), v1150);
  v1205 = vaddq_s32(v1203, v1150);
  v1206 = vuzp1q_s16(vmlaq_s32(v1204, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1204.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1204, v883), 0x18uLL), v884), vmlaq_s32(v1205, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1205.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1205, v883), 0x18uLL), v884));
  v1207 = vaddq_s16(v1206, v876);
  v1589 = v1200;
  v1590 = vorrq_s8(vandq_s8(vcltzq_s16(v1207), v1206), vmaxq_s16(v1207, 0));
  v1208 = v1592;
  v1209 = vaddq_s16(v1591, v1599);
  v1210 = vaddq_s16(v1209, v876);
  v1211 = vorrq_s8(vandq_s8(vcltzq_s16(v1210), v1209), vmaxq_s16(v1210, 0));
  v1212 = vdupq_n_s16(0x2EDu);
  v1213 = vdupq_n_s32(0x260BEDu);
  v1214 = vaddq_s32(vmlsl_u16(vmull_u16(*v1591.i8, *v1212.i8), *v1599.i8, *v1212.i8), v1213);
  v1215 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1591, v1212), v1599, v1212), v1213);
  v1216 = vuzp1q_s16(vmlaq_s32(v1214, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1214.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1214, v883), 0x18uLL), v884), vmlaq_s32(v1215, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1215.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1215, v883), 0x18uLL), v884));
  v1217 = vaddq_s16(v1216, v876);
  v1218 = vorrq_s8(vandq_s8(vcltzq_s16(v1217), v1216), vmaxq_s16(v1217, 0));
  v1219 = vaddq_s16(v1592, v1600);
  v1220 = vaddq_s16(v1219, v876);
  v1591 = v1211;
  v1592 = vorrq_s8(vandq_s8(vcltzq_s16(v1220), v1219), vmaxq_s16(v1220, 0));
  v1221 = vaddq_s32(vmlsl_u16(vmull_u16(*v1208.i8, *v1212.i8), *v1600.i8, *v1212.i8), v1213);
  v1222 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1208, v1212), v1600, v1212), v1213);
  v1223 = vuzp1q_s16(vmlaq_s32(v1221, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1221.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1221, v883), 0x18uLL), v884), vmlaq_s32(v1222, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1222.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1222, v883), 0x18uLL), v884));
  v1224 = vaddq_s16(v1223, v876);
  v1599 = v1218;
  v1600 = vorrq_s8(vandq_s8(vcltzq_s16(v1224), v1223), vmaxq_s16(v1224, 0));
  v1225 = v1594;
  v1226 = vaddq_s16(v1593, v1601);
  v1227 = vaddq_s16(v1226, v876);
  v1228 = vorrq_s8(vandq_s8(vcltzq_s16(v1227), v1226), vmaxq_s16(v1227, 0));
  v1229 = vaddq_s32(vmlsl_u16(vmull_u16(*v1593.i8, *v1212.i8), *v1601.i8, *v1212.i8), v1213);
  v1230 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1593, v1212), v1601, v1212), v1213);
  v1231 = vuzp1q_s16(vmlaq_s32(v1229, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1229.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1229, v883), 0x18uLL), v884), vmlaq_s32(v1230, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1230.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1230, v883), 0x18uLL), v884));
  v1232 = vaddq_s16(v1231, v876);
  v1233 = vorrq_s8(vandq_s8(vcltzq_s16(v1232), v1231), vmaxq_s16(v1232, 0));
  v1234 = vaddq_s16(v1594, v1602);
  v1235 = vaddq_s16(v1234, v876);
  v1593 = v1228;
  v1594 = vorrq_s8(vandq_s8(vcltzq_s16(v1235), v1234), vmaxq_s16(v1235, 0));
  v1236 = vaddq_s32(vmlsl_u16(vmull_u16(*v1225.i8, *v1212.i8), *v1602.i8, *v1212.i8), v1213);
  v1237 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1225, v1212), v1602, v1212), v1213);
  v1238 = vuzp1q_s16(vmlaq_s32(v1236, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1236.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1236, v883), 0x18uLL), v884), vmlaq_s32(v1237, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1237.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1237, v883), 0x18uLL), v884));
  v1239 = vaddq_s16(v1238, v876);
  v1601 = v1233;
  v1602 = vorrq_s8(vandq_s8(vcltzq_s16(v1239), v1238), vmaxq_s16(v1239, 0));
  v1240 = v1596;
  v1241 = vaddq_s16(v1595, v1603);
  v1242 = vaddq_s16(v1241, v876);
  v1243 = vorrq_s8(vandq_s8(vcltzq_s16(v1242), v1241), vmaxq_s16(v1242, 0));
  v1244 = vaddq_s32(vmlsl_u16(vmull_u16(*v1595.i8, *v1212.i8), *v1603.i8, *v1212.i8), v1213);
  v1245 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1595, v1212), v1603, v1212), v1213);
  v1246 = vuzp1q_s16(vmlaq_s32(v1244, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1244.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1244, v883), 0x18uLL), v884), vmlaq_s32(v1245, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1245.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1245, v883), 0x18uLL), v884));
  v1247 = vaddq_s16(v1246, v876);
  v1248 = vorrq_s8(vandq_s8(vcltzq_s16(v1247), v1246), vmaxq_s16(v1247, 0));
  v1249 = vaddq_s16(v1596, v1604);
  v1250 = vaddq_s16(v1249, v876);
  v1595 = v1243;
  v1596 = vorrq_s8(vandq_s8(vcltzq_s16(v1250), v1249), vmaxq_s16(v1250, 0));
  v1251 = vaddq_s32(vmlsl_u16(vmull_u16(*v1240.i8, *v1212.i8), *v1604.i8, *v1212.i8), v1213);
  v1252 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1240, v1212), v1604, v1212), v1213);
  v1253 = vuzp1q_s16(vmlaq_s32(v1251, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1251.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1251, v883), 0x18uLL), v884), vmlaq_s32(v1252, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1252.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1252, v883), 0x18uLL), v884));
  v1254 = vaddq_s16(v1253, v876);
  v1603 = v1248;
  v1604 = vorrq_s8(vandq_s8(vcltzq_s16(v1254), v1253), vmaxq_s16(v1254, 0));
  v1255 = v1598;
  v1256 = vaddq_s16(v1597, v1605);
  v1257 = vaddq_s16(v1256, v876);
  v1258 = vorrq_s8(vandq_s8(vcltzq_s16(v1257), v1256), vmaxq_s16(v1257, 0));
  v1259 = vaddq_s32(vmlsl_u16(vmull_u16(*v1597.i8, *v1212.i8), *v1605.i8, *v1212.i8), v1213);
  v1260 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1597, v1212), v1605, v1212), v1213);
  v1261 = vuzp1q_s16(vmlaq_s32(v1259, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1259.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1259, v883), 0x18uLL), v884), vmlaq_s32(v1260, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1260.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1260, v883), 0x18uLL), v884));
  v1262 = vaddq_s16(v1261, v876);
  v1263 = vorrq_s8(vandq_s8(vcltzq_s16(v1262), v1261), vmaxq_s16(v1262, 0));
  v1264 = vaddq_s16(v1598, v1606);
  v1265 = vaddq_s16(v1264, v876);
  v1597 = v1258;
  v1598 = vorrq_s8(vandq_s8(vcltzq_s16(v1265), v1264), vmaxq_s16(v1265, 0));
  v1266 = vmlsl_high_u16(vmull_high_u16(v1255, v1212), v1606, v1212);
  v1267 = vaddq_s32(vmlsl_u16(vmull_u16(*v1255.i8, *v1212.i8), *v1606.i8, *v1212.i8), v1213);
  v1268 = vaddq_s32(v1266, v1213);
  v1269 = vuzp1q_s16(vmlaq_s32(v1267, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1267.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1267, v883), 0x18uLL), v884), vmlaq_s32(v1268, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1268.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1268, v883), 0x18uLL), v884));
  v1270 = vaddq_s16(v1269, v876);
  v1605 = v1263;
  v1606 = vorrq_s8(vandq_s8(vcltzq_s16(v1270), v1269), vmaxq_s16(v1270, 0));
  do
  {
    v1271 = &v1575.i8[v873];
    v1272 = *(&v1591 + v873);
    v1273 = *(&v1575 + v873);
    v1274 = vaddq_s16(v1273, v1272);
    v1275 = vaddq_s16(v1274, v876);
    v1276 = vdupq_n_s16(0x640u);
    v1277 = vmlsl_high_u16(vmull_high_u16(v1273, v1276), v1272, v1276);
    v1278 = vmlsl_u16(vmull_u16(*v1273.i8, *v1276.i8), *v1272.i8, *v1276.i8);
    v1279 = vdupq_n_s32(0x514640u);
    v1280 = vaddq_s32(v1278, v1279);
    v1281 = vaddq_s32(v1277, v1279);
    v1282 = vuzp1q_s16(vmlaq_s32(v1280, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1280.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1280, v883), 0x18uLL), v884), vmlaq_s32(v1281, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1281.i8, *v883.i8), 0x18uLL), vmull_high_u32(v1281, v883), 0x18uLL), v884));
    v1283 = vaddq_s16(v1282, v876);
    *v1271 = vorrq_s8(vandq_s8(vcltzq_s16(v1275), v1274), vmaxq_s16(v1275, 0));
    v1271[16] = vorrq_s8(vandq_s8(vcltzq_s16(v1283), v1282), vmaxq_s16(v1283, 0));
    v873 += 16;
  }

  while (v873 != 256);
  v1284 = 0;
  v1285 = vdupq_n_s16(0xCE7u);
  v1286 = vdupq_n_s32(0x13AFu);
  v1287.i64[0] = 0xF2000000F2;
  v1287.i64[1] = 0xF2000000F2;
  v1288.i64[0] = 0xD000D000D000D00;
  v1288.i64[1] = 0xD000D000D000D00;
  do
  {
    v1289 = *(&v1575 + v1284);
    v1290 = vmull_u16(*v1289.i8, *v1285.i8);
    v1291 = vmull_high_u16(v1289, v1285);
    v1292 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1290.i8, *v1286.i8), 0x18uLL), vmull_high_u32(v1290, v1286), 0x18uLL), v1287), *v1289.i8, *v1285.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1291.i8, *v1286.i8), 0x18uLL), vmull_high_u32(v1291, v1286), 0x18uLL), v1287), v1289, v1285));
    v1293 = vaddq_s16(v1292, v1288);
    *(&v1575 + v1284) = vorrq_s8(vandq_s8(vcltzq_s16(v1293), v1292), vmaxq_s16(v1293, 0));
    v1284 += 16;
  }

  while (v1284 != 512);
  v1294 = 0;
  v1295.i64[0] = 0xD000D000D000D00;
  v1295.i64[1] = 0xD000D000D000D00;
  do
  {
    v1296 = &v1575.i8[v1294 * 2];
    v1297 = vaddq_s16(*&v1571[v1294], *(&v1575 + v1294 * 2));
    v1298 = vaddq_s16(*&v1571[v1294 + 8], *(&v1575 + v1294 * 2 + 16));
    v1299 = vaddq_s16(v1297, v1295);
    v1300 = vaddq_s16(v1298, v1295);
    *v1296 = vorrq_s8(vandq_s8(vcltzq_s16(v1299), v1297), vmaxq_s16(v1299, 0));
    v1296[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1300), v1298), vmaxq_s16(v1300, 0));
    v1294 += 16;
  }

  while (v1294 != 256);
  v1301 = 0;
  v1302 = *(v1527 + 16);
  v1303.i64[0] = 0x101010101010101;
  v1303.i64[1] = 0x101010101010101;
  v1304 = vandq_s8(vshrq_n_u8(*v1527, 6uLL), v1303);
  v1305 = vandq_s8(vshrq_n_u8(*v1527, 1uLL), v1303);
  v1306 = vandq_s8(*v1527, v1303);
  v1307 = vandq_s8(vshrq_n_u8(*v1527, 2uLL), v1303);
  v1308 = vandq_s8(vshrq_n_u8(*v1527, 3uLL), v1303);
  v1630.val[1] = vmovl_high_u8(v1308);
  v1630.val[0] = vmovl_high_u8(v1307);
  v1632.val[0] = vmovl_high_u8(v1306);
  v1632.val[1] = vmovl_high_u8(v1305);
  v1638.val[1] = vmovl_u8(*v1308.i8);
  v1638.val[0] = vmovl_u8(*v1307.i8);
  v1639.val[0] = vmovl_u8(*v1306.i8);
  v1639.val[1] = vmovl_u8(*v1305.i8);
  v1305.i32[0] = vzip1q_s16(v1639.val[0], v1639.val[1]).u32[0];
  v1305.i32[1] = vqtbl2q_s8(v1638, xmmword_273BA7020).i32[1];
  v1309 = vshrq_n_u8(*v1527, 7uLL);
  v1310 = vandq_s8(vshrq_n_u8(*v1527, 4uLL), v1303);
  v1311 = vandq_s8(vshrq_n_u8(*v1527, 5uLL), v1303);
  v1623.val[1] = vmovl_u8(*v1311.i8);
  v1623.val[0] = vmovl_u8(*v1310.i8);
  v1624.val[0] = vmovl_u8(*v1304.i8);
  v1624.val[1] = vmovl_u8(*v1309.i8);
  v1312 = vqtbl2q_s8(v1623, xmmword_273BA7010);
  v1312.i32[3] = vqtbl2q_s8(v1624, xmmword_273BA7000).i32[3];
  v1305.i64[1] = v1312.i64[1];
  v1541 = v1305;
  v1305.i32[0] = vtrn2q_s16(v1639.val[0], v1639.val[1]).u32[0];
  v1305.i32[1] = vzip1q_s16(*&v1638, *(&v1638 + 16)).i32[1];
  v1313 = vqtbl2q_s8(v1623, xmmword_273BA7040);
  v1313.i32[3] = vqtbl2q_s8(v1624, xmmword_273BA7030).i32[3];
  v1305.i64[1] = v1313.i64[1];
  v1539 = v1305;
  v1308.i16[2] = v1638.val[0].i16[2];
  v1308.i16[3] = v1638.val[1].i16[2];
  v1305.i32[0] = vqtbl2q_s8(v1639, xmmword_273BA7060).u32[0];
  v1305.i32[1] = v1308.i32[1];
  v1314 = vzip1q_s16(v1623.val[0], v1623.val[1]);
  v1314.i32[3] = vqtbl2q_s8(v1624, xmmword_273BA7050).i32[3];
  v1305.i64[1] = v1314.i64[1];
  v1537 = v1305;
  v1305.i32[0] = vqtbl2q_s8(v1639, xmmword_273BA7080).u32[0];
  v1305.i32[1] = vtrn2q_s16(*&v1638, *(&v1638 + 16)).i32[1];
  v1315 = vqtbl2q_s8(v1623, xmmword_273BA7070);
  v1315.i32[3] = vzip1q_s16(*&v1624, *(&v1624 + 16)).i32[3];
  v1305.i64[1] = v1315.i64[1];
  v1536 = v1305;
  v1313.i32[0] = vzip2q_s16(v1639.val[0], v1639.val[1]).u32[0];
  v1313.i32[1] = vqtbl2q_s8(v1638, xmmword_273BA70A0).i32[1];
  LOWORD(v1316) = v1623.val[0].i16[4];
  WORD1(v1316) = v1623.val[1].i16[4];
  v1636.val[1] = vmovl_high_u8(v1311);
  v1636.val[0] = vmovl_high_u8(v1310);
  HIDWORD(v1316) = vqtbl2q_s8(v1624, xmmword_273BA7090).i32[3];
  v1313.i64[1] = v1316;
  v1314.i32[0] = vqtbl2q_s8(v1639, xmmword_273BA70C0).u32[0];
  v1314.i32[1] = vzip2q_s16(*&v1638, *(&v1638 + 16)).i32[1];
  v1317 = vtrn2q_s16(v1623.val[0], v1623.val[1]);
  v1317.i32[3] = vqtbl2q_s8(v1624, xmmword_273BA70B0).i32[3];
  v1314.i64[1] = v1317.i64[1];
  v1531 = v1314;
  v1317.i32[0] = vqtbl2q_s8(v1639, xmmword_273BA70E0).u32[0];
  v1317.i32[1] = vqtbl2q_s8(v1638, xmmword_273BA70D0).i32[1];
  LOWORD(v1318) = v1624.val[0].i16[6];
  HIWORD(v1318) = v1624.val[1].i16[6];
  v1640.val[0] = vmovl_high_u8(v1304);
  v1640.val[1] = vmovl_high_u8(v1309);
  v1319 = vzip2q_s16(v1623.val[0], v1623.val[1]);
  v1319.i32[3] = v1318;
  v1317.i64[1] = v1319.i64[1];
  v1319.i32[0] = vqtbl2q_s8(v1639, xmmword_273BA7110).u32[0];
  v1319.i32[1] = vqtbl2q_s8(v1638, xmmword_273BA7100).i32[1];
  v1638.val[0] = vqtbl2q_s8(v1623, xmmword_273BA70F0);
  v1638.val[0].i32[3] = vzip2q_s16(*&v1624, *(&v1624 + 16)).i32[3];
  v1319.i64[1] = v1638.val[0].i64[1];
  v1638.val[0].i32[0] = vzip1q_s16(v1632.val[0], v1632.val[1]).u32[0];
  v1638.val[0].i32[1] = vqtbl2q_s8(v1630, xmmword_273BA7020).i32[1];
  v1638.val[1] = vqtbl2q_s8(v1636, xmmword_273BA7010);
  v1638.val[1].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA7000).i32[3];
  v1638.val[0].i64[1] = v1638.val[1].i64[1];
  v1639.val[0].i32[0] = vtrn2q_s16(v1632.val[0], v1632.val[1]).u32[0];
  v1639.val[0].i32[1] = vzip1q_s16(*&v1630, *(&v1630 + 16)).i32[1];
  v1638.val[1] = vqtbl2q_s8(v1636, xmmword_273BA7040);
  v1638.val[1].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA7030).i32[3];
  v1639.val[0].i64[1] = v1638.val[1].i64[1];
  v1638.val[1].i16[2] = v1630.val[0].i16[2];
  v1638.val[1].i16[3] = v1630.val[1].i16[2];
  v1639.val[1].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA7060).u32[0];
  v1639.val[1].i32[1] = v1638.val[1].i32[1];
  v1638.val[1] = vzip1q_s16(v1636.val[0], v1636.val[1]);
  v1638.val[1].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA7050).i32[3];
  v1639.val[1].i64[1] = v1638.val[1].i64[1];
  v1309.i32[0] = vqtbl2q_s8(v1632, xmmword_273BA7080).u32[0];
  v1309.i32[1] = vtrn2q_s16(*&v1630, *(&v1630 + 16)).i32[1];
  v1638.val[1] = vqtbl2q_s8(v1636, xmmword_273BA7070);
  v1638.val[1].i32[3] = vzip1q_s16(*&v1640, *(&v1640 + 16)).i32[3];
  v1309.i64[1] = v1638.val[1].i64[1];
  v1638.val[1].i32[0] = vzip2q_s16(v1632.val[0], v1632.val[1]).u32[0];
  v1638.val[1].i32[1] = vqtbl2q_s8(v1630, xmmword_273BA70A0).i32[1];
  LOWORD(v1320) = v1636.val[0].i16[4];
  WORD1(v1320) = v1636.val[1].i16[4];
  HIDWORD(v1320) = vqtbl2q_s8(v1640, xmmword_273BA7090).i32[3];
  v1638.val[1].i64[1] = v1320;
  v1623.val[0].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA70C0).u32[0];
  v1623.val[0].i32[1] = vzip2q_s16(*&v1630, *(&v1630 + 16)).i32[1];
  v1321 = vtrn2q_s16(v1636.val[0], v1636.val[1]);
  v1321.i32[3] = vqtbl2q_s8(v1640, xmmword_273BA70B0).i32[3];
  v1623.val[0].i64[1] = v1321.i64[1];
  v1623.val[1].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA70E0).u32[0];
  v1623.val[1].i32[1] = vqtbl2q_s8(v1630, xmmword_273BA70D0).i32[1];
  v1321.i16[6] = v1640.val[0].i16[6];
  v1321.i16[7] = v1640.val[1].i16[6];
  v1624.val[0] = vzip2q_s16(v1636.val[0], v1636.val[1]);
  v1624.val[0].i32[3] = v1321.i32[3];
  v1623.val[1].i64[1] = v1624.val[0].i64[1];
  v1630.val[0] = vqtbl2q_s8(v1630, xmmword_273BA7100);
  v1630.val[1].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA7110).u32[0];
  v1630.val[1].i32[1] = v1630.val[0].i32[1];
  v1630.val[0] = vqtbl2q_s8(v1636, xmmword_273BA70F0);
  v1630.val[0].i32[3] = vzip2q_s16(*&v1640, *(&v1640 + 16)).i32[3];
  v1630.val[1].i64[1] = v1630.val[0].i64[1];
  v1553 = v1623.val[1];
  v1554 = v1630.val[1];
  v1551 = v1638.val[1];
  v1552 = v1623.val[0];
  v1549 = v1639.val[1];
  v1550 = v1309;
  v1547 = v1638.val[0];
  v1548 = v1639.val[0];
  v1545 = v1317;
  v1546 = v1319;
  v1632.val[1] = vandq_s8(vshrq_n_u8(v1302, 2uLL), v1303);
  v1322 = vandq_s8(vshrq_n_u8(v1302, 3uLL), v1303);
  v1630.val[1] = vmovl_high_u8(v1322);
  v1630.val[0] = vmovl_high_u8(v1632.val[1]);
  v1641.val[1] = vmovl_u8(*v1322.i8);
  v1641.val[0] = vmovl_u8(*v1632.val[1].i8);
  v1639.val[1] = vandq_s8(vshrq_n_u8(v1302, 6uLL), v1303);
  v1323 = vandq_s8(vshrq_n_u8(v1302, 1uLL), v1303);
  v1324 = vandq_s8(vshrq_n_u8(v1302, 4uLL), v1303);
  v1638.val[0] = vandq_s8(vshrq_n_u8(v1302, 5uLL), v1303);
  v1325 = vandq_s8(v1302, v1303);
  v1632.val[0] = vmovl_high_u8(v1325);
  v1632.val[1] = vmovl_high_u8(v1323);
  v1623.val[0] = vmovl_u8(*v1325.i8);
  v1623.val[1] = vmovl_u8(*v1323.i8);
  v1325.i32[0] = vzip1q_s16(v1623.val[0], v1623.val[1]).u32[0];
  v1325.i32[1] = vqtbl2q_s8(v1641, xmmword_273BA7020).i32[1];
  v1326 = vshrq_n_u8(v1302, 7uLL);
  v1624.val[1] = vmovl_u8(*v1638.val[0].i8);
  v1624.val[0] = vmovl_u8(*v1324.i8);
  v1625.val[0] = vmovl_u8(*v1639.val[1].i8);
  v1625.val[1] = vmovl_u8(*v1326.i8);
  v1327 = vqtbl2q_s8(v1624, xmmword_273BA7010);
  v1327.i32[3] = vqtbl2q_s8(v1625, xmmword_273BA7000).i32[3];
  v1325.i64[1] = v1327.i64[1];
  v1327.i32[0] = vtrn2q_s16(v1623.val[0], v1623.val[1]).u32[0];
  v1327.i32[1] = vzip1q_s16(*&v1641, *(&v1641 + 16)).i32[1];
  v1328 = vqtbl2q_s8(v1624, xmmword_273BA7040);
  v1328.i32[3] = vqtbl2q_s8(v1625, xmmword_273BA7030).i32[3];
  v1327.i64[1] = v1328.i64[1];
  v1636.val[0].i16[2] = v1641.val[0].i16[2];
  v1636.val[0].i16[3] = v1641.val[1].i16[2];
  v1328.i32[0] = vqtbl2q_s8(v1623, xmmword_273BA7060).u32[0];
  v1328.i32[1] = v1636.val[0].i32[1];
  v1636.val[0] = vzip1q_s16(v1624.val[0], v1624.val[1]);
  v1636.val[0].i32[3] = vqtbl2q_s8(v1625, xmmword_273BA7050).i32[3];
  v1328.i64[1] = v1636.val[0].i64[1];
  v1636.val[0].i32[0] = vqtbl2q_s8(v1623, xmmword_273BA7080).u32[0];
  v1636.val[0].i32[1] = vtrn2q_s16(*&v1641, *(&v1641 + 16)).i32[1];
  v1636.val[1] = vqtbl2q_s8(v1624, xmmword_273BA7070);
  v1636.val[1].i32[3] = vzip1q_s16(*&v1625, *(&v1625 + 16)).i32[3];
  v1636.val[0].i64[1] = v1636.val[1].i64[1];
  v1636.val[1].i32[0] = vzip2q_s16(v1623.val[0], v1623.val[1]).u32[0];
  v1636.val[1].i32[1] = vqtbl2q_s8(v1641, xmmword_273BA70A0).i32[1];
  v1640.val[0].i16[4] = v1624.val[0].i16[4];
  v1640.val[0].i16[5] = v1624.val[1].i16[4];
  v1639.val[0] = vmovl_high_u8(v1638.val[0]);
  v1638.val[1] = vmovl_high_u8(v1324);
  v1640.val[0].i32[3] = vqtbl2q_s8(v1625, xmmword_273BA7090).i32[3];
  v1636.val[1].i64[1] = v1640.val[0].i64[1];
  v1324.i32[0] = vqtbl2q_s8(v1623, xmmword_273BA70C0).u32[0];
  v1324.i32[1] = vzip2q_s16(*&v1641, *(&v1641 + 16)).i32[1];
  v1638.val[0] = vtrn2q_s16(v1624.val[0], v1624.val[1]);
  v1638.val[0].i32[3] = vqtbl2q_s8(v1625, xmmword_273BA70B0).i32[3];
  v1324.i64[1] = v1638.val[0].i64[1];
  v1638.val[0].i32[0] = vqtbl2q_s8(v1623, xmmword_273BA70E0).u32[0];
  v1638.val[0].i32[1] = vqtbl2q_s8(v1641, xmmword_273BA70D0).i32[1];
  LOWORD(v1329) = v1625.val[0].i16[6];
  HIWORD(v1329) = v1625.val[1].i16[6];
  v1640.val[0] = vmovl_high_u8(v1639.val[1]);
  v1640.val[1] = vmovl_high_u8(v1326);
  v1639.val[1] = vzip2q_s16(v1624.val[0], v1624.val[1]);
  v1639.val[1].i32[3] = v1329;
  v1638.val[0].i64[1] = v1639.val[1].i64[1];
  v1639.val[1].i32[0] = vqtbl2q_s8(v1623, xmmword_273BA7110).u32[0];
  v1639.val[1].i32[1] = vqtbl2q_s8(v1641, xmmword_273BA7100).i32[1];
  v1641.val[0] = vqtbl2q_s8(v1624, xmmword_273BA70F0);
  v1641.val[0].i32[3] = vzip2q_s16(*&v1625, *(&v1625 + 16)).i32[3];
  v1639.val[1].i64[1] = v1641.val[0].i64[1];
  v1641.val[0].i32[0] = vzip1q_s16(v1632.val[0], v1632.val[1]).u32[0];
  v1641.val[0].i32[1] = vqtbl2q_s8(v1630, xmmword_273BA7020).i32[1];
  v1641.val[1] = vqtbl2q_s8(*(&v1638 + 16), xmmword_273BA7010);
  v1641.val[1].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA7000).i32[3];
  v1641.val[0].i64[1] = v1641.val[1].i64[1];
  v1641.val[1].i32[0] = vtrn2q_s16(v1632.val[0], v1632.val[1]).u32[0];
  v1641.val[1].i32[1] = vzip1q_s16(*&v1630, *(&v1630 + 16)).i32[1];
  v1623.val[0] = vqtbl2q_s8(*(&v1638 + 16), xmmword_273BA7040);
  v1623.val[0].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA7030).i32[3];
  v1641.val[1].i64[1] = v1623.val[0].i64[1];
  v1623.val[1].i16[2] = v1630.val[0].i16[2];
  v1623.val[1].i16[3] = v1630.val[1].i16[2];
  v1623.val[0].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA7060).u32[0];
  v1623.val[0].i32[1] = v1623.val[1].i32[1];
  v1624.val[0] = vzip1q_s16(v1638.val[1], v1639.val[0]);
  v1624.val[0].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA7050).i32[3];
  v1623.val[0].i64[1] = v1624.val[0].i64[1];
  v1623.val[1].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA7080).u32[0];
  v1623.val[1].i32[1] = vtrn2q_s16(*&v1630, *(&v1630 + 16)).i32[1];
  v1624.val[0] = vqtbl2q_s8(*(&v1638 + 16), xmmword_273BA7070);
  v1624.val[0].i32[3] = vzip1q_s16(*&v1640, *(&v1640 + 16)).i32[3];
  v1623.val[1].i64[1] = v1624.val[0].i64[1];
  v1624.val[0].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA70C0).u32[0];
  v1624.val[1].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA70E0).u32[0];
  v1625.val[0].i32[0] = vqtbl2q_s8(v1632, xmmword_273BA7110).u32[0];
  v1632.val[0].i32[0] = vzip2q_s16(v1632.val[0], v1632.val[1]).u32[0];
  v1632.val[0].i32[1] = vqtbl2q_s8(v1630, xmmword_273BA70A0).i32[1];
  v1632.val[1].i16[4] = v1638.val[1].i16[4];
  v1632.val[1].i16[5] = v1639.val[0].i16[4];
  v1632.val[1].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA7090).i32[3];
  v1543 = v1313;
  v1632.val[0].i64[1] = v1632.val[1].i64[1];
  v1330 = vqtbl2q_s8(v1630, xmmword_273BA70D0);
  v1331 = vqtbl2q_s8(v1630, xmmword_273BA7100);
  v1624.val[0].i32[1] = vzip2q_s16(*&v1630, *(&v1630 + 16)).i32[1];
  v1630.val[0] = vtrn2q_s16(v1638.val[1], v1639.val[0]);
  v1630.val[0].i32[3] = vqtbl2q_s8(v1640, xmmword_273BA70B0).i32[3];
  v1624.val[0].i64[1] = v1630.val[0].i64[1];
  v1624.val[1].i32[1] = v1330.i32[1];
  v1332 = vqtbl2q_s8(*(&v1638 + 16), xmmword_273BA70F0);
  v1630.val[0] = vzip2q_s16(v1638.val[1], v1639.val[0]);
  v1630.val[1].i16[6] = v1640.val[0].i16[6];
  v1630.val[1].i16[7] = v1640.val[1].i16[6];
  v1630.val[0].i32[3] = v1630.val[1].i32[3];
  v1624.val[1].i64[1] = v1630.val[0].i64[1];
  v1625.val[0].i32[1] = v1331.i32[1];
  v1332.i32[3] = vzip2q_s16(*&v1640, *(&v1640 + 16)).i32[3];
  v1625.val[0].i64[1] = v1332.i64[1];
  v1333 = vdupq_n_s16(0xD01u);
  v1334 = vmull_high_u16(v1541, v1333);
  v1335 = vmull_u16(*v1541.i8, *v1333.i8);
  v1336 = vmull_high_u16(v1539, v1333);
  v1337 = vmull_u16(*v1539.i8, *v1333.i8);
  v1305.i64[0] = 0x100000001;
  v1305.i64[1] = 0x100000001;
  v1542[0] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1335, v1305), v1335, 1uLL), vsraq_n_u32(vandq_s8(v1334, v1305), v1334, 1uLL));
  v1542[1] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1337, v1305), v1337, 1uLL), vsraq_n_u32(vandq_s8(v1336, v1305), v1336, 1uLL));
  v1338 = vmull_high_u16(v1537, v1333);
  v1339 = vmull_u16(*v1537.i8, *v1333.i8);
  v1340 = vmull_high_u16(v1536, v1333);
  v1341 = vmull_u16(*v1536.i8, *v1333.i8);
  v1542[2] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1339, v1305), v1339, 1uLL), vsraq_n_u32(vandq_s8(v1338, v1305), v1338, 1uLL));
  v1542[3] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1341, v1305), v1341, 1uLL), vsraq_n_u32(vandq_s8(v1340, v1305), v1340, 1uLL));
  v1342 = vmull_high_u16(v1543, v1333);
  v1343 = vmull_u16(*v1543.i8, *v1333.i8);
  v1344 = vmull_high_u16(v1531, v1333);
  v1345 = vmull_u16(*v1531.i8, *v1333.i8);
  v1543 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1343, v1305), v1343, 1uLL), vsraq_n_u32(vandq_s8(v1342, v1305), v1342, 1uLL));
  v1544 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1345, v1305), v1345, 1uLL), vsraq_n_u32(vandq_s8(v1344, v1305), v1344, 1uLL));
  v1346 = vmull_high_u16(v1545, v1333);
  v1347 = vmull_u16(*v1545.i8, *v1333.i8);
  v1348 = vmull_high_u16(v1546, v1333);
  v1349 = vmull_u16(*v1546.i8, *v1333.i8);
  v1545 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1347, v1305), v1347, 1uLL), vsraq_n_u32(vandq_s8(v1346, v1305), v1346, 1uLL));
  v1546 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1349, v1305), v1349, 1uLL), vsraq_n_u32(vandq_s8(v1348, v1305), v1348, 1uLL));
  v1350 = vmull_high_u16(v1547, v1333);
  v1351 = vmull_u16(*v1547.i8, *v1333.i8);
  v1352 = vmull_high_u16(v1548, v1333);
  v1353 = vmull_u16(*v1548.i8, *v1333.i8);
  v1547 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1351, v1305), v1351, 1uLL), vsraq_n_u32(vandq_s8(v1350, v1305), v1350, 1uLL));
  v1548 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1353, v1305), v1353, 1uLL), vsraq_n_u32(vandq_s8(v1352, v1305), v1352, 1uLL));
  v1354 = vmull_high_u16(v1549, v1333);
  v1355 = vmull_u16(*v1549.i8, *v1333.i8);
  v1356 = vmull_high_u16(v1550, v1333);
  v1357 = vmull_u16(*v1550.i8, *v1333.i8);
  v1549 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1355, v1305), v1355, 1uLL), vsraq_n_u32(vandq_s8(v1354, v1305), v1354, 1uLL));
  v1550 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1357, v1305), v1357, 1uLL), vsraq_n_u32(vandq_s8(v1356, v1305), v1356, 1uLL));
  v1358 = vmull_high_u16(v1551, v1333);
  v1359 = vmull_u16(*v1551.i8, *v1333.i8);
  v1360 = vmull_high_u16(v1552, v1333);
  v1361 = vmull_u16(*v1552.i8, *v1333.i8);
  v1551 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1359, v1305), v1359, 1uLL), vsraq_n_u32(vandq_s8(v1358, v1305), v1358, 1uLL));
  v1552 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1361, v1305), v1361, 1uLL), vsraq_n_u32(vandq_s8(v1360, v1305), v1360, 1uLL));
  v1362 = vmull_high_u16(v1553, v1333);
  v1363 = vmull_u16(*v1553.i8, *v1333.i8);
  v1364 = vmull_high_u16(v1554, v1333);
  v1365 = vmull_u16(*v1554.i8, *v1333.i8);
  v1553 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1363, v1305), v1363, 1uLL), vsraq_n_u32(vandq_s8(v1362, v1305), v1362, 1uLL));
  v1554 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1365, v1305), v1365, 1uLL), vsraq_n_u32(vandq_s8(v1364, v1305), v1364, 1uLL));
  v1366 = vmull_high_u16(v1325, v1333);
  v1367 = vmull_u16(*v1325.i8, *v1333.i8);
  v1368 = vmull_high_u16(v1327, v1333);
  v1369 = vmull_u16(*v1327.i8, *v1333.i8);
  v1555 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1367, v1305), v1367, 1uLL), vsraq_n_u32(vandq_s8(v1366, v1305), v1366, 1uLL));
  v1556 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1369, v1305), v1369, 1uLL), vsraq_n_u32(vandq_s8(v1368, v1305), v1368, 1uLL));
  v1370 = vmull_high_u16(v1328, v1333);
  v1371 = vmull_u16(*v1328.i8, *v1333.i8);
  v1372 = vmull_high_u16(v1636.val[0], v1333);
  v1373 = vmull_u16(*v1636.val[0].i8, *v1333.i8);
  v1557 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1371, v1305), v1371, 1uLL), vsraq_n_u32(vandq_s8(v1370, v1305), v1370, 1uLL));
  v1558 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1373, v1305), v1373, 1uLL), vsraq_n_u32(vandq_s8(v1372, v1305), v1372, 1uLL));
  v1374 = vmull_high_u16(v1636.val[1], v1333);
  v1375 = vmull_u16(*v1636.val[1].i8, *v1333.i8);
  v1376 = vmull_high_u16(v1324, v1333);
  v1377 = vmull_u16(*v1324.i8, *v1333.i8);
  v1559 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1375, v1305), v1375, 1uLL), vsraq_n_u32(vandq_s8(v1374, v1305), v1374, 1uLL));
  v1560 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1377, v1305), v1377, 1uLL), vsraq_n_u32(vandq_s8(v1376, v1305), v1376, 1uLL));
  v1378 = vmull_high_u16(v1638.val[0], v1333);
  v1379 = vmull_u16(*v1638.val[0].i8, *v1333.i8);
  v1380 = vmull_high_u16(v1639.val[1], v1333);
  v1381 = vmull_u16(*v1639.val[1].i8, *v1333.i8);
  v1561 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1379, v1305), v1379, 1uLL), vsraq_n_u32(vandq_s8(v1378, v1305), v1378, 1uLL));
  v1562 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1381, v1305), v1381, 1uLL), vsraq_n_u32(vandq_s8(v1380, v1305), v1380, 1uLL));
  v1382 = vmull_high_u16(v1641.val[0], v1333);
  v1383 = vmull_u16(*v1641.val[0].i8, *v1333.i8);
  v1384 = vmull_high_u16(v1641.val[1], v1333);
  v1385 = vmull_u16(*v1641.val[1].i8, *v1333.i8);
  v1563 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1383, v1305), v1383, 1uLL), vsraq_n_u32(vandq_s8(v1382, v1305), v1382, 1uLL));
  v1564 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1385, v1305), v1385, 1uLL), vsraq_n_u32(vandq_s8(v1384, v1305), v1384, 1uLL));
  v1386 = vmull_high_u16(v1623.val[0], v1333);
  v1387 = vmull_u16(*v1623.val[0].i8, *v1333.i8);
  v1388 = vmull_high_u16(v1623.val[1], v1333);
  v1389 = vmull_u16(*v1623.val[1].i8, *v1333.i8);
  v1565 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1387, v1305), v1387, 1uLL), vsraq_n_u32(vandq_s8(v1386, v1305), v1386, 1uLL));
  v1566 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1389, v1305), v1389, 1uLL), vsraq_n_u32(vandq_s8(v1388, v1305), v1388, 1uLL));
  v1390 = vmull_high_u16(v1632.val[0], v1333);
  v1391 = vmull_u16(*v1632.val[0].i8, *v1333.i8);
  v1392 = vmull_high_u16(v1624.val[0], v1333);
  v1393 = vmull_u16(*v1624.val[0].i8, *v1333.i8);
  v1567 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1391, v1305), v1391, 1uLL), vsraq_n_u32(vandq_s8(v1390, v1305), v1390, 1uLL));
  v1568 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1393, v1305), v1393, 1uLL), vsraq_n_u32(vandq_s8(v1392, v1305), v1392, 1uLL));
  v1394 = vmull_high_u16(v1624.val[1], v1333);
  v1395 = vmull_u16(*v1624.val[1].i8, *v1333.i8);
  v1396 = vmull_high_u16(v1625.val[0], v1333);
  v1397 = vmull_u16(*v1625.val[0].i8, *v1333.i8);
  v1569 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1395, v1305), v1395, 1uLL), vsraq_n_u32(vandq_s8(v1394, v1305), v1394, 1uLL));
  v1570 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1397, v1305), v1397, 1uLL), vsraq_n_u32(vandq_s8(v1396, v1305), v1396, 1uLL));
  v1398.i64[0] = 0xD000D000D000D00;
  v1398.i64[1] = 0xD000D000D000D00;
  do
  {
    v1399 = &v1575.i8[v1301 * 16];
    v1400 = vaddq_s16(v1542[v1301], *(&v1575 + v1301 * 16));
    v1401 = vaddq_s16(v1542[v1301 + 1], *(&v1575 + v1301 * 16 + 16));
    v1402 = vaddq_s16(v1400, v1398);
    v1403 = vaddq_s16(v1401, v1398);
    *v1399 = vorrq_s8(vandq_s8(vcltzq_s16(v1402), v1400), vmaxq_s16(v1402, 0));
    v1399[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1403), v1401), vmaxq_s16(v1403, 0));
    v1301 += 2;
  }

  while (v1301 != 32);
  v1404 = 0;
  v1405 = vdupq_n_s32(0x13AFu);
  v1406.i64[0] = 0xD0000000D00;
  v1406.i64[1] = 0xD0000000D00;
  v1407 = vdupq_n_s32(0x680u);
  v1408 = vdupq_n_s64(1uLL);
  v1409 = vdupq_n_s32(0x1381u);
  do
  {
    v1410 = *(&v1607 + v1404);
    v1411 = vshll_n_u16(*v1410.i8, 0xAuLL);
    v1412 = vshll_high_n_u16(v1410, 0xAuLL);
    v1413 = vmull_high_u32(v1411, v1405);
    v1414 = vmull_u32(*v1411.i8, *v1405.i8);
    v1415 = vmull_high_u32(v1412, v1405);
    v1416 = vmull_u32(*v1412.i8, *v1405.i8);
    v1417 = vmlaq_s32(v1412, vshrn_high_n_s64(vshrn_n_s64(v1416, 0x18uLL), v1415, 0x18uLL), v1406);
    v1418 = vmlaq_s32(v1411, vshrn_high_n_s64(vshrn_n_s64(v1414, 0x18uLL), v1413, 0x18uLL), v1406);
    v1419 = vcgtq_u32(v1418, v1407);
    v1420.i64[0] = v1419.u32[2];
    v1420.i64[1] = v1419.u32[3];
    v1421 = vandq_s8(v1420, v1408);
    v1420.i64[0] = v1419.u32[0];
    v1420.i64[1] = v1419.u32[1];
    v1422 = vandq_s8(v1420, v1408);
    v1423 = vcgtq_u32(v1417, v1407);
    v1420.i64[0] = v1423.u32[2];
    v1420.i64[1] = v1423.u32[3];
    v1424 = vandq_s8(v1420, v1408);
    v1420.i64[0] = v1423.u32[0];
    v1420.i64[1] = v1423.u32[1];
    v1425 = vsraq_n_u64(vandq_s8(v1420, v1408), v1416, 0x18uLL);
    v1426 = vsraq_n_u64(v1422, v1414, 0x18uLL);
    v1427 = vsraq_n_u64(v1421, v1413, 0x18uLL);
    v1428 = vcgtq_u32(v1417, v1409);
    v1420.i64[0] = v1428.u32[0];
    v1420.i64[1] = v1428.u32[1];
    v1429 = vandq_s8(v1420, v1408);
    v1420.i64[0] = v1428.u32[2];
    v1420.i64[1] = v1428.u32[3];
    v1430 = vandq_s8(v1420, v1408);
    v1431 = vcgtq_u32(v1418, v1409);
    v1420.i64[0] = v1431.u32[0];
    v1420.i64[1] = v1431.u32[1];
    v1432 = vandq_s8(v1420, v1408);
    v1420.i64[0] = v1431.u32[2];
    v1420.i64[1] = v1431.u32[3];
    *(&v1607 + v1404) = *&vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1426, v1432), vaddq_s64(v1427, vandq_s8(v1420, v1408))), vuzp1q_s32(vaddq_s64(v1425, v1429), vaddq_s64(vsraq_n_u64(v1424, v1415, 0x18uLL), v1430))) & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL);
    v1404 += 16;
  }

  while (v1404 != 512);
  v1433 = vdupq_n_s32(0x13AFu);
  v1434.i64[0] = 0xD0000000D00;
  v1434.i64[1] = 0xD0000000D00;
  v1435 = vdupq_n_s32(0x680u);
  v1436 = vdupq_n_s64(1uLL);
  v1437 = vdupq_n_s32(0x1381u);
  do
  {
    v1438 = *(&v1607 + v1404);
    v1439 = vshll_n_u16(*v1438.i8, 0xAuLL);
    v1440 = vshll_high_n_u16(v1438, 0xAuLL);
    v1441 = vmull_high_u32(v1439, v1433);
    v1442 = vmull_u32(*v1439.i8, *v1433.i8);
    v1443 = vmull_high_u32(v1440, v1433);
    v1444 = vmull_u32(*v1440.i8, *v1433.i8);
    v1445 = vmlaq_s32(v1440, vshrn_high_n_s64(vshrn_n_s64(v1444, 0x18uLL), v1443, 0x18uLL), v1434);
    v1446 = vmlaq_s32(v1439, vshrn_high_n_s64(vshrn_n_s64(v1442, 0x18uLL), v1441, 0x18uLL), v1434);
    v1447 = vcgtq_u32(v1446, v1435);
    v1448.i64[0] = v1447.u32[2];
    v1448.i64[1] = v1447.u32[3];
    v1449 = vandq_s8(v1448, v1436);
    v1448.i64[0] = v1447.u32[0];
    v1448.i64[1] = v1447.u32[1];
    v1450 = vandq_s8(v1448, v1436);
    v1451 = vcgtq_u32(v1445, v1435);
    v1448.i64[0] = v1451.u32[2];
    v1448.i64[1] = v1451.u32[3];
    v1452 = vandq_s8(v1448, v1436);
    v1448.i64[0] = v1451.u32[0];
    v1448.i64[1] = v1451.u32[1];
    v1453 = vsraq_n_u64(vandq_s8(v1448, v1436), v1444, 0x18uLL);
    v1454 = vsraq_n_u64(v1450, v1442, 0x18uLL);
    v1455 = vsraq_n_u64(v1449, v1441, 0x18uLL);
    v1456 = vcgtq_u32(v1445, v1437);
    v1448.i64[0] = v1456.u32[0];
    v1448.i64[1] = v1456.u32[1];
    v1457 = vandq_s8(v1448, v1436);
    v1448.i64[0] = v1456.u32[2];
    v1448.i64[1] = v1456.u32[3];
    v1458 = vandq_s8(v1448, v1436);
    v1459 = vcgtq_u32(v1446, v1437);
    v1448.i64[0] = v1459.u32[0];
    v1448.i64[1] = v1459.u32[1];
    v1460 = vandq_s8(v1448, v1436);
    v1448.i64[0] = v1459.u32[2];
    v1448.i64[1] = v1459.u32[3];
    *(&v1607 + v1404) = *&vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1454, v1460), vaddq_s64(v1455, vandq_s8(v1448, v1436))), vuzp1q_s32(vaddq_s64(v1453, v1457), vaddq_s64(vsraq_n_u64(v1452, v1443, 0x18uLL), v1458))) & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL);
    v1404 += 16;
  }

  while (v1404 != 1024);
  v1461 = vdupq_n_s32(0x13AFu);
  v1462.i64[0] = 0xD0000000D00;
  v1462.i64[1] = 0xD0000000D00;
  v1463 = vdupq_n_s32(0x680u);
  v1464 = vdupq_n_s64(1uLL);
  v1465 = vdupq_n_s32(0x1381u);
  do
  {
    v1466 = *(&v1607 + v1404);
    v1467 = vshll_n_u16(*v1466.i8, 0xAuLL);
    v1468 = vshll_high_n_u16(v1466, 0xAuLL);
    v1469 = vmull_high_u32(v1467, v1461);
    v1470 = vmull_u32(*v1467.i8, *v1461.i8);
    v1471 = vmull_high_u32(v1468, v1461);
    v1472 = vmull_u32(*v1468.i8, *v1461.i8);
    v1473 = vmlaq_s32(v1468, vshrn_high_n_s64(vshrn_n_s64(v1472, 0x18uLL), v1471, 0x18uLL), v1462);
    v1474 = vmlaq_s32(v1467, vshrn_high_n_s64(vshrn_n_s64(v1470, 0x18uLL), v1469, 0x18uLL), v1462);
    v1475 = vcgtq_u32(v1474, v1463);
    v1476.i64[0] = v1475.u32[2];
    v1476.i64[1] = v1475.u32[3];
    v1477 = vandq_s8(v1476, v1464);
    v1476.i64[0] = v1475.u32[0];
    v1476.i64[1] = v1475.u32[1];
    v1478 = vandq_s8(v1476, v1464);
    v1479 = vcgtq_u32(v1473, v1463);
    v1476.i64[0] = v1479.u32[2];
    v1476.i64[1] = v1479.u32[3];
    v1480 = vandq_s8(v1476, v1464);
    v1476.i64[0] = v1479.u32[0];
    v1476.i64[1] = v1479.u32[1];
    v1481 = vsraq_n_u64(vandq_s8(v1476, v1464), v1472, 0x18uLL);
    v1482 = vsraq_n_u64(v1478, v1470, 0x18uLL);
    v1483 = vsraq_n_u64(v1477, v1469, 0x18uLL);
    v1484 = vcgtq_u32(v1473, v1465);
    v1476.i64[0] = v1484.u32[0];
    v1476.i64[1] = v1484.u32[1];
    v1485 = vandq_s8(v1476, v1464);
    v1476.i64[0] = v1484.u32[2];
    v1476.i64[1] = v1484.u32[3];
    v1486 = vandq_s8(v1476, v1464);
    v1487 = vcgtq_u32(v1474, v1465);
    v1476.i64[0] = v1487.u32[0];
    v1476.i64[1] = v1487.u32[1];
    v1488 = vandq_s8(v1476, v1464);
    v1476.i64[0] = v1487.u32[2];
    v1476.i64[1] = v1487.u32[3];
    *(&v1607 + v1404) = *&vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1482, v1488), vaddq_s64(v1483, vandq_s8(v1476, v1464))), vuzp1q_s32(vaddq_s64(v1481, v1485), vaddq_s64(vsraq_n_u64(v1480, v1471, 0x18uLL), v1486))) & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL);
    v1404 += 16;
  }

  while (v1404 != 1536);
  v1489 = 0;
  v1490 = vdupq_n_s32(0x13AFu);
  v1491.i64[0] = 0xD0000000D00;
  v1491.i64[1] = 0xD0000000D00;
  v1492 = vdupq_n_s32(0x680u);
  v1493 = vdupq_n_s64(1uLL);
  v1494 = vdupq_n_s32(0x1381u);
  v1495.i64[0] = 0xF000F000F000FLL;
  v1495.i64[1] = 0xF000F000F000FLL;
  do
  {
    v1496 = *(&v1575 + v1489);
    v1497 = vshll_n_u16(*v1496.i8, 4uLL);
    v1498 = vshll_high_n_u16(v1496, 4uLL);
    v1499 = vmull_high_u32(v1497, v1490);
    v1500 = vmull_u32(*v1497.i8, *v1490.i8);
    v1501 = vmull_high_u32(v1498, v1490);
    v1502 = vmull_u32(*v1498.i8, *v1490.i8);
    v1503 = vmlaq_s32(v1498, vshrn_high_n_s64(vshrn_n_s64(v1502, 0x18uLL), v1501, 0x18uLL), v1491);
    v1504 = vmlaq_s32(v1497, vshrn_high_n_s64(vshrn_n_s64(v1500, 0x18uLL), v1499, 0x18uLL), v1491);
    v1505 = vcgtq_u32(v1504, v1492);
    v1506.i64[0] = v1505.u32[2];
    v1506.i64[1] = v1505.u32[3];
    v1507 = vandq_s8(v1506, v1493);
    v1506.i64[0] = v1505.u32[0];
    v1506.i64[1] = v1505.u32[1];
    v1508 = vandq_s8(v1506, v1493);
    v1509 = vcgtq_u32(v1503, v1492);
    v1506.i64[0] = v1509.u32[2];
    v1506.i64[1] = v1509.u32[3];
    v1510 = vandq_s8(v1506, v1493);
    v1506.i64[0] = v1509.u32[0];
    v1506.i64[1] = v1509.u32[1];
    v1511 = vsraq_n_u64(vandq_s8(v1506, v1493), v1502, 0x18uLL);
    v1512 = vsraq_n_u64(v1508, v1500, 0x18uLL);
    v1513 = vsraq_n_u64(v1507, v1499, 0x18uLL);
    v1514 = vcgtq_u32(v1503, v1494);
    v1506.i64[0] = v1514.u32[0];
    v1506.i64[1] = v1514.u32[1];
    v1515 = vandq_s8(v1506, v1493);
    v1506.i64[0] = v1514.u32[2];
    v1506.i64[1] = v1514.u32[3];
    v1516 = vandq_s8(v1506, v1493);
    v1517 = vcgtq_u32(v1504, v1494);
    v1506.i64[0] = v1517.u32[0];
    v1506.i64[1] = v1517.u32[1];
    v1518 = vandq_s8(v1506, v1493);
    v1506.i64[0] = v1517.u32[2];
    v1506.i64[1] = v1517.u32[3];
    *(&v1575 + v1489) = vandq_s8(vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1512, v1518), vaddq_s64(v1513, vandq_s8(v1506, v1493))), vuzp1q_s32(vaddq_s64(v1511, v1515), vaddq_s64(vsraq_n_u64(v1510, v1501, 0x18uLL), v1516))), v1495);
    v1489 += 16;
  }

  while (v1489 != 512);
  v1519 = 0;
  v1520 = 0;
  v1521 = 0;
  v1522 = v1528 + 960;
  do
  {
    LODWORD(result) = 0;
    v1524 = v1575.u16[v1519];
    while (1)
    {
      v1525 = 8 - v1520;
      if (4 - result < 8 - v1520)
      {
        break;
      }

      v1520 = 0;
      *v1522++ = v1521 | v1526;
      v1521 = 0;
      result = (v1525 + result);
      LOBYTE(v1524) = v1524 >> v1525;
      if (result >= 4)
      {
        goto LABEL_56;
      }
    }

    v1520 += 4 - result;
    result = 4;
LABEL_56:
    ++v1519;
  }

  while (v1519 != 256);
  if (v1520 >= 1)
  {
    *v1522 = v1521;
  }

  return result;
}

int16x8_t *mlkem::anonymous namespace::scalar_inner_product<3>(int16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  result[30] = 0u;
  result[31] = 0u;
  result[28] = 0u;
  result[29] = 0u;
  result[26] = 0u;
  result[27] = 0u;
  result[24] = 0u;
  result[25] = 0u;
  result[22] = 0u;
  result[23] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  v5 = vdupq_n_s32(0x13AFu);
  result[2] = 0u;
  result[3] = 0u;
  v6.i64[0] = 0xF2000000F2;
  v6.i64[1] = 0xF2000000F2;
  v7.i64[0] = 0xD000D000D000D00;
  v7.i64[1] = 0xD000D000D000D00;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v8 = (a2 + v3);
    v94 = vld2q_s16(v8);
    v9 = (a3 + v3);
    v97 = vld2q_s16(v9);
    v10 = vmull_u16(*v97.val[1].i8, *v94.val[1].i8);
    v11 = vmull_high_u16(v97.val[1], v94.val[1]);
    v12 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v10.i8, *v5.i8), 0x18uLL), vmull_high_u32(v10, v5), 0x18uLL), v6), *v97.val[1].i8, *v94.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v11.i8, *v5.i8), 0x18uLL), vmull_high_u32(v11, v5), 0x18uLL), v6), v97.val[1], v94.val[1]));
    v13 = vaddq_s16(v12, v7);
    v14 = vorrq_s8(vandq_s8(vcltzq_s16(v13), v12), vmaxq_s16(v13, 0));
    v15 = *v4++;
    v16 = vmull_high_u16(v14, v15);
    v17 = vmlal_u16(vmull_u16(*v14.i8, *v15.i8), *v97.val[0].i8, *v94.val[0].i8);
    v18 = vmlal_high_u16(v16, v97.val[0], v94.val[0]);
    v19 = vuzp1q_s16(vmlaq_s32(v17, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v17.i8, *v5.i8), 0x18uLL), vmull_high_u32(v17, v5), 0x18uLL), v6), vmlaq_s32(v18, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v18.i8, *v5.i8), 0x18uLL), vmull_high_u32(v18, v5), 0x18uLL), v6));
    v20 = vaddq_s16(v19, v7);
    v21 = vmlal_u16(vmull_u16(*v97.val[1].i8, *v94.val[0].i8), *v94.val[1].i8, *v97.val[0].i8);
    v22 = vmlal_high_u16(vmull_high_u16(v97.val[1], v94.val[0]), v94.val[1], v97.val[0]);
    v23 = vuzp1q_s16(vmlaq_s32(v21, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v21.i8, *v5.i8), 0x18uLL), vmull_high_u32(v21, v5), 0x18uLL), v6), vmlaq_s32(v22, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v22.i8, *v5.i8), 0x18uLL), vmull_high_u32(v22, v5), 0x18uLL), v6));
    v24 = vorrq_s8(vandq_s8(vcltzq_s16(v20), v19), vmaxq_s16(v20, 0));
    v94.val[1] = vaddq_s16(v23, v7);
    v94.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v94.val[1]), v23), vmaxq_s16(v94.val[1], 0));
    v25 = &v93[v3];
    vst2q_s16(v25, v94);
    v3 += 32;
  }

  while (v3 != 512);
  v26 = 0;
  v27 = result + 1;
  v28.i64[0] = 0xD000D000D000D00;
  v28.i64[1] = 0xD000D000D000D00;
  do
  {
    v29 = vaddq_s16(*&v93[v26], v27[-1]);
    v30 = vaddq_s16(*&v93[v26 + 16], *v27);
    v31 = vaddq_s16(v29, v28);
    v32 = vaddq_s16(v30, v28);
    v27[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v31), v29), vmaxq_s16(v31, 0));
    *v27 = vorrq_s8(vandq_s8(vcltzq_s16(v32), v30), vmaxq_s16(v32, 0));
    v27 += 2;
    v26 += 32;
  }

  while (v26 != 512);
  v33 = 0;
  v35 = vdupq_n_s32(0x13AFu);
  v36.i64[0] = 0xF2000000F2;
  v36.i64[1] = 0xF2000000F2;
  v37.i64[0] = 0xD000D000D000D00;
  v37.i64[1] = 0xD000D000D000D00;
  do
  {
    v38 = (a2 + 512 + v33);
    v95 = vld2q_s16(v38);
    v39 = (a3 + 512 + v33);
    v98 = vld2q_s16(v39);
    v40 = vmull_u16(*v98.val[1].i8, *v95.val[1].i8);
    v41 = vmull_high_u16(v98.val[1], v95.val[1]);
    v42 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v40.i8, *v35.i8), 0x18uLL), vmull_high_u32(v40, v35), 0x18uLL), v36), *v98.val[1].i8, *v95.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v41.i8, *v35.i8), 0x18uLL), vmull_high_u32(v41, v35), 0x18uLL), v36), v98.val[1], v95.val[1]));
    v43 = vaddq_s16(v42, v37);
    v44 = vorrq_s8(vandq_s8(vcltzq_s16(v43), v42), vmaxq_s16(v43, 0));
    v45 = *v34++;
    v46 = vmull_high_u16(v44, v45);
    v47 = vmlal_u16(vmull_u16(*v44.i8, *v45.i8), *v98.val[0].i8, *v95.val[0].i8);
    v48 = vmlal_high_u16(v46, v98.val[0], v95.val[0]);
    v49 = vuzp1q_s16(vmlaq_s32(v47, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v47.i8, *v35.i8), 0x18uLL), vmull_high_u32(v47, v35), 0x18uLL), v36), vmlaq_s32(v48, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v48.i8, *v35.i8), 0x18uLL), vmull_high_u32(v48, v35), 0x18uLL), v36));
    v50 = vaddq_s16(v49, v37);
    v51 = vmlal_u16(vmull_u16(*v98.val[1].i8, *v95.val[0].i8), *v95.val[1].i8, *v98.val[0].i8);
    v52 = vmlal_high_u16(vmull_high_u16(v98.val[1], v95.val[0]), v95.val[1], v98.val[0]);
    v53 = vuzp1q_s16(vmlaq_s32(v51, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v51.i8, *v35.i8), 0x18uLL), vmull_high_u32(v51, v35), 0x18uLL), v36), vmlaq_s32(v52, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v52.i8, *v35.i8), 0x18uLL), vmull_high_u32(v52, v35), 0x18uLL), v36));
    v54 = vorrq_s8(vandq_s8(vcltzq_s16(v50), v49), vmaxq_s16(v50, 0));
    v95.val[1] = vaddq_s16(v53, v37);
    v95.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v95.val[1]), v53), vmaxq_s16(v95.val[1], 0));
    v55 = &v93[v33];
    vst2q_s16(v55, v95);
    v33 += 32;
  }

  while (v33 != 512);
  v56 = 0;
  v57 = result + 1;
  v58.i64[0] = 0xD000D000D000D00;
  v58.i64[1] = 0xD000D000D000D00;
  do
  {
    v59 = vaddq_s16(*&v93[v56], v57[-1]);
    v60 = vaddq_s16(*&v93[v56 + 16], *v57);
    v61 = vaddq_s16(v59, v58);
    v62 = vaddq_s16(v60, v58);
    v57[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v61), v59), vmaxq_s16(v61, 0));
    *v57 = vorrq_s8(vandq_s8(vcltzq_s16(v62), v60), vmaxq_s16(v62, 0));
    v57 += 2;
    v56 += 32;
  }

  while (v56 != 512);
  v63 = 0;
  v65 = vdupq_n_s32(0x13AFu);
  v66.i64[0] = 0xF2000000F2;
  v66.i64[1] = 0xF2000000F2;
  v67.i64[0] = 0xD000D000D000D00;
  v67.i64[1] = 0xD000D000D000D00;
  do
  {
    v68 = (a2 + 1024 + v63);
    v96 = vld2q_s16(v68);
    v69 = (a3 + 1024 + v63);
    v99 = vld2q_s16(v69);
    v70 = vmull_u16(*v99.val[1].i8, *v96.val[1].i8);
    v71 = vmull_high_u16(v99.val[1], v96.val[1]);
    v72 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v70.i8, *v65.i8), 0x18uLL), vmull_high_u32(v70, v65), 0x18uLL), v66), *v99.val[1].i8, *v96.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v71.i8, *v65.i8), 0x18uLL), vmull_high_u32(v71, v65), 0x18uLL), v66), v99.val[1], v96.val[1]));
    v73 = vaddq_s16(v72, v67);
    v74 = vorrq_s8(vandq_s8(vcltzq_s16(v73), v72), vmaxq_s16(v73, 0));
    v75 = *v64++;
    v76 = vmull_high_u16(v74, v75);
    v77 = vmlal_u16(vmull_u16(*v74.i8, *v75.i8), *v99.val[0].i8, *v96.val[0].i8);
    v78 = vmlal_high_u16(v76, v99.val[0], v96.val[0]);
    v79 = vuzp1q_s16(vmlaq_s32(v77, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v77.i8, *v65.i8), 0x18uLL), vmull_high_u32(v77, v65), 0x18uLL), v66), vmlaq_s32(v78, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v78.i8, *v65.i8), 0x18uLL), vmull_high_u32(v78, v65), 0x18uLL), v66));
    v80 = vaddq_s16(v79, v67);
    v81 = vmlal_u16(vmull_u16(*v99.val[1].i8, *v96.val[0].i8), *v96.val[1].i8, *v99.val[0].i8);
    v82 = vmlal_high_u16(vmull_high_u16(v99.val[1], v96.val[0]), v96.val[1], v99.val[0]);
    v83 = vuzp1q_s16(vmlaq_s32(v81, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v81.i8, *v65.i8), 0x18uLL), vmull_high_u32(v81, v65), 0x18uLL), v66), vmlaq_s32(v82, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v82.i8, *v65.i8), 0x18uLL), vmull_high_u32(v82, v65), 0x18uLL), v66));
    v84 = vorrq_s8(vandq_s8(vcltzq_s16(v80), v79), vmaxq_s16(v80, 0));
    v96.val[1] = vaddq_s16(v83, v67);
    v96.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v96.val[1]), v83), vmaxq_s16(v96.val[1], 0));
    v85 = &v93[v63];
    vst2q_s16(v85, v96);
    v63 += 32;
  }

  while (v63 != 512);
  v86 = 0;
  v87 = result + 1;
  v88.i64[0] = 0xD000D000D000D00;
  v88.i64[1] = 0xD000D000D000D00;
  do
  {
    v89 = vaddq_s16(*&v93[v86], v87[-1]);
    v90 = vaddq_s16(*&v93[v86 + 16], *v87);
    v91 = vaddq_s16(v89, v88);
    v92 = vaddq_s16(v90, v88);
    v87[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v91), v89), vmaxq_s16(v91, 0));
    *v87 = vorrq_s8(vandq_s8(vcltzq_s16(v92), v90), vmaxq_s16(v92, 0));
    v87 += 2;
    v86 += 32;
  }

  while (v86 != 512);
  return result;
}

int BIO_gets(BIO *bp, char *buf, int size)
{
  if (bp && bp->method && (bgets = bp->method->bgets) != 0)
  {
    if (LODWORD(bp->cb_arg))
    {
      if (size < 1)
      {
        return 0;
      }

      else
      {
        result = bgets();
        if (result >= 1)
        {
          bp->next_bio = (bp->next_bio + result);
        }
      }
    }

    else
    {
      ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 106);
      return -2;
    }
  }

  else
  {
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 102);
    return -2;
  }

  return result;
}

int BIO_write(BIO *b, const void *data, int len)
{
  if (b && b->method && (bwrite = b->method->bwrite) != 0)
  {
    if (LODWORD(b->cb_arg))
    {
      if (len < 1)
      {
        return 0;
      }

      else
      {
        result = bwrite();
        if (result >= 1)
        {
          b->prev_bio = (b->prev_bio + result);
        }
      }
    }

    else
    {
      ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
      return -2;
    }
  }

  else
  {
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
    return -2;
  }

  return result;
}

int BIO_puts(BIO *bp, const char *buf)
{
  v4 = strlen(buf);
  if (v4 >> 31)
  {
    ERR_put_error(17, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 155);
    return -1;
  }

  else if (bp && bp->method && (bwrite = bp->method->bwrite) != 0)
  {
    if (LODWORD(bp->cb_arg))
    {
      if (v4)
      {
        result = (bwrite)(bp, buf, v4);
        if (result >= 1)
        {
          bp->prev_bio = (bp->prev_bio + result);
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
      return -2;
    }
  }

  else
  {
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
    return -2;
  }

  return result;
}

uint64_t BIO_flush(uint64_t result)
{
  if (result)
  {
    if (*result && (v1 = *(*result + 48)) != 0)
    {
      return v1();
    }

    else
    {
      ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
      return 4294967294;
    }
  }

  return result;
}

uint64_t BIO_ctrl(uint64_t bp, int cmd, uint64_t larg, void *parg)
{
  if (bp)
  {
    if (*bp && (v5 = *(*bp + 48)) != 0)
    {

      return v5();
    }

    else
    {
      ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
      return -2;
    }
  }

  return bp;
}

BIO *__cdecl BIO_new_mem_buf(void *buf, int len)
{
  v2 = *&len;
  v4 = *&len;
  if ((*&len & 0x8000000000000000) != 0)
  {
    v4 = strlen(buf);
    if (buf)
    {
      goto LABEL_7;
    }
  }

  else if (buf)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    ERR_put_error(17, 0, 111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio_mem.cc", 33);
    return 0;
  }

LABEL_7:
  v6 = malloc_type_malloc(0x50uLL, 0xB4E622C9uLL);
  if (v6)
  {
    v7 = v6;
    *v6 = 72;
    *(v6 + 1) = &mem_method;
    v8 = (v6 + 8);
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 9) = 0;
    *(v6 + 7) = 1;
    *(v6 + 11) = 1;
    *(v6 + 2) = 0;
    v9 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v9)
    {
      *v9 = 24;
      v7[3] = 0x100000001;
      v9[1] = v4;
      v7[6] = v9 + 1;
      v9[2] = buf;
      v9[3] = v4;
      *(v7 + 8) |= 0x200u;
      *(v7 + 10) = 0;
      return v8;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      free(v7);
      return 0;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}