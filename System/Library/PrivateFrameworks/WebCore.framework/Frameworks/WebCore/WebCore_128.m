uint64_t vpx_sub_pixel_avg_variance32x16_neon(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x16_t *a8, int8x8_t a9, int8x8_t a10)
{
  v325 = *MEMORY[0x277D85DE8];
  if (a3 != 4)
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        v107 = (a1 + a2);
        v108 = *v107;
        v109 = *(a1 + 16 + a2);
        v110 = vrhaddq_u8(vrhaddq_u8(*(a1 + 16), v109), a8[1]);
        v291 = vrhaddq_u8(vrhaddq_u8(*a1, *v107), *a8);
        v292 = v110;
        v111 = (v107 + a2);
        v112 = *v111;
        v113 = v111[1];
        v114 = vrhaddq_u8(vrhaddq_u8(v109, v113), a8[3]);
        v293 = vrhaddq_u8(vrhaddq_u8(v108, *v111), a8[2]);
        v294 = v114;
        v115 = (v111 + a2);
        v116 = *v115;
        v117 = v115[1];
        v118 = vrhaddq_u8(vrhaddq_u8(v113, v117), a8[5]);
        v295 = vrhaddq_u8(vrhaddq_u8(v112, *v115), a8[4]);
        v296 = v118;
        v119 = (v115 + a2);
        v120 = *v119;
        v121 = v119[1];
        v122 = vrhaddq_u8(vrhaddq_u8(v117, v121), a8[7]);
        v297 = vrhaddq_u8(vrhaddq_u8(v116, *v119), a8[6]);
        v298 = v122;
        v123 = (v119 + a2);
        v124 = *v123;
        v125 = v123[1];
        v126 = vrhaddq_u8(vrhaddq_u8(v121, v125), a8[9]);
        v299 = vrhaddq_u8(vrhaddq_u8(v120, *v123), a8[8]);
        v300 = v126;
        v127 = (v123 + a2);
        v128 = *v127;
        v129 = v127[1];
        v130 = vrhaddq_u8(vrhaddq_u8(v125, v129), a8[11]);
        v301 = vrhaddq_u8(vrhaddq_u8(v124, *v127), a8[10]);
        v302 = v130;
        v131 = (v127 + a2);
        v132 = *v131;
        v133 = v131[1];
        v134 = vrhaddq_u8(vrhaddq_u8(v129, v133), a8[13]);
        v303 = vrhaddq_u8(vrhaddq_u8(v128, *v131), a8[12]);
        v304 = v134;
        v135 = (v131 + a2);
        v136 = *v135;
        v137 = v135[1];
        v138 = vrhaddq_u8(vrhaddq_u8(v133, v137), a8[15]);
        v305 = vrhaddq_u8(vrhaddq_u8(v132, *v135), a8[14]);
        v306 = v138;
        v139 = (v135 + a2);
        v140 = *v139;
        v141 = v139[1];
        v142 = vrhaddq_u8(vrhaddq_u8(v137, v141), a8[17]);
        v307 = vrhaddq_u8(vrhaddq_u8(v136, *v139), a8[16]);
        v308 = v142;
        v143 = (v139 + a2);
        v144 = *v143;
        v145 = v143[1];
        v146 = vrhaddq_u8(vrhaddq_u8(v141, v145), a8[19]);
        v309 = vrhaddq_u8(vrhaddq_u8(v140, *v143), a8[18]);
        v310 = v146;
        v147 = (v143 + a2);
        v148 = *v147;
        v149 = v147[1];
        v150 = a8[21];
        v311 = vrhaddq_u8(vrhaddq_u8(v144, *v147), a8[20]);
        v312 = vrhaddq_u8(vrhaddq_u8(v145, v149), v150);
        v151 = (v147 + a2);
        v152 = *v151;
        v153 = a8[23];
        v313 = vrhaddq_u8(vrhaddq_u8(v148, *v151), a8[22]);
        v154 = v151[1];
        v314 = vrhaddq_u8(vrhaddq_u8(v149, v154), v153);
        v155 = (v151 + a2);
        v156 = *v155;
        v157 = a8[25];
        v315 = vrhaddq_u8(vrhaddq_u8(v152, *v155), a8[24]);
        v158 = v155[1];
        v316 = vrhaddq_u8(vrhaddq_u8(v154, v158), v157);
        v159 = (v155 + a2);
        v160 = *v159;
        v161 = a8[27];
        v317 = vrhaddq_u8(vrhaddq_u8(v156, *v159), a8[26]);
        v162 = v159[1];
        v318 = vrhaddq_u8(vrhaddq_u8(v158, v162), v161);
        v163 = (v159 + a2);
        v164 = *v163;
        v165 = a8[29];
        v319 = vrhaddq_u8(vrhaddq_u8(v160, *v163), a8[28]);
        v166 = v163[1];
        v320 = vrhaddq_u8(vrhaddq_u8(v162, v166), v165);
        v167 = (v163 + a2);
        v321 = vrhaddq_u8(vrhaddq_u8(v164, *v167), a8[30]);
        v40 = vrhaddq_u8(v166, v167[1]);
      }

      else
      {
        if (a4)
        {
          v211 = 0;
          a9.i32[0] = 8 - a4;
          a10.i32[0] = a4;
          v212 = *a1;
          v213 = vdupq_lane_s8(a9, 0);
          v214 = vdupq_lane_s8(a10, 0);
          do
          {
            v215 = *(a1 + 16);
            a1 += a2;
            v216 = *a1;
            v217 = (&v291 + v211 * 16);
            v218 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + 16), *v214.i8), *v215.i8, *v213.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + 16), v214), v215, v213), 3uLL), a8[v211 + 1]);
            *v217 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*a1, *v214.i8), *v212.i8, *v213.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*a1, v214), v212, v213), 3uLL), a8[v211]);
            v217[1] = v218;
            v211 += 2;
            v212 = v216;
          }

          while ((v211 * 16) != 512);
          return (vpx_variance32x16)(&v291, 32, a5, a6, a7);
        }

        v10 = vrhaddq_u8(*(a1 + 16), a8[1]);
        v291 = vrhaddq_u8(*a1, *a8);
        v292 = v10;
        v11 = (a1 + a2);
        v12 = vrhaddq_u8(v11[1], a8[3]);
        v293 = vrhaddq_u8(*v11, a8[2]);
        v294 = v12;
        v13 = (v11 + a2);
        v14 = vrhaddq_u8(v13[1], a8[5]);
        v295 = vrhaddq_u8(*v13, a8[4]);
        v296 = v14;
        v15 = (v13 + a2);
        v16 = vrhaddq_u8(v15[1], a8[7]);
        v297 = vrhaddq_u8(*v15, a8[6]);
        v298 = v16;
        v17 = (v15 + a2);
        v18 = vrhaddq_u8(v17[1], a8[9]);
        v299 = vrhaddq_u8(*v17, a8[8]);
        v300 = v18;
        v19 = (v17 + a2);
        v20 = vrhaddq_u8(v19[1], a8[11]);
        v301 = vrhaddq_u8(*v19, a8[10]);
        v302 = v20;
        v21 = (v19 + a2);
        v22 = vrhaddq_u8(v21[1], a8[13]);
        v303 = vrhaddq_u8(*v21, a8[12]);
        v304 = v22;
        v23 = (v21 + a2);
        v24 = vrhaddq_u8(v23[1], a8[15]);
        v305 = vrhaddq_u8(*v23, a8[14]);
        v306 = v24;
        v25 = (v23 + a2);
        v26 = vrhaddq_u8(v25[1], a8[17]);
        v307 = vrhaddq_u8(*v25, a8[16]);
        v308 = v26;
        v27 = (v25 + a2);
        v28 = vrhaddq_u8(v27[1], a8[19]);
        v309 = vrhaddq_u8(*v27, a8[18]);
        v310 = v28;
        v29 = (v27 + a2);
        v30 = vrhaddq_u8(v29[1], a8[21]);
        v311 = vrhaddq_u8(*v29, a8[20]);
        v312 = v30;
        v31 = (v29 + a2);
        v32 = vrhaddq_u8(v31[1], a8[23]);
        v313 = vrhaddq_u8(*v31, a8[22]);
        v314 = v32;
        v33 = (v31 + a2);
        v34 = a8[25];
        v315 = vrhaddq_u8(*v33, a8[24]);
        v316 = vrhaddq_u8(v33[1], v34);
        v35 = (v33 + a2);
        v36 = a8[27];
        v317 = vrhaddq_u8(*v35, a8[26]);
        v318 = vrhaddq_u8(v35[1], v36);
        v37 = (v35 + a2);
        v38 = a8[29];
        v319 = vrhaddq_u8(*v37, a8[28]);
        v320 = vrhaddq_u8(v37[1], v38);
        v39 = (v37 + a2);
        v321 = vrhaddq_u8(*v39, a8[30]);
        v40 = v39[1];
      }

      v72 = vrhaddq_u8(v40, a8[31]);
LABEL_21:
      v322 = v72;
      return (vpx_variance32x16)(&v291, 32, a5, a6, a7);
    }

    v73 = 0;
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v74 = (a1 + 17);
    v75 = vdupq_lane_s8(a9, 0);
    v76 = vdupq_lane_s8(a10, 0);
    if (a4 != 4)
    {
      if (!a4)
      {
        do
        {
          v77 = (&v291 + v73);
          v78 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v74, *v76.i8), *(v74 - 1), *v75.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v74->i8, v76), *(&v74[-1].u32[1] + 3), v75), 3uLL), a8[v73 / 0x10 + 1]);
          *v77 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v74[-2], *v76.i8), *(v74 - 17), *v75.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v74[-2].i8, v76), *(&v74[-3].u32[1] + 3), v75), 3uLL), a8[v73 / 0x10]);
          v77[1] = v78;
          v73 += 32;
          v74 = (v74 + a2);
        }

        while (v73 != 512);
        return (vpx_variance32x16)(&v291, 32, a5, a6, a7);
      }

      do
      {
        v98 = &v291.i8[v73];
        v99 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v74, *v76.i8), *(v74 - 1), *v75.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v74->i8, v76), *(&v74[-1].u32[1] + 3), v75), 3uLL);
        *v98 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v74[-2], *v76.i8), *(v74 - 17), *v75.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v74[-2].i8, v76), *(&v74[-3].u32[1] + 3), v75), 3uLL);
        v98[1] = v99;
        v73 += 32;
        v74 = (v74 + a2);
      }

      while (v73 != 544);
      v100 = 0;
      v75.i32[0] = 8 - a4;
      v76.i32[0] = a4;
      v101 = v291;
      v102 = vdupq_lane_s8(*v75.i8, 0);
      v103 = vdupq_lane_s8(*v76.i8, 0);
      do
      {
        v104 = *(&v293 + v100);
        v105 = (&v259 + v100);
        v106 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v294.i8[v100], *v103.i8), *(&v291 + v100 + 16), *v102.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v294 + v100), v103), *(&v291 + v100 + 16), v102), 3uLL), a8[v100 / 0x10 + 1]);
        *v105 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v104.i8, *v103.i8), *v101.i8, *v102.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v104, v103), v101, v102), 3uLL), a8[v100 / 0x10]);
        v105[1] = v106;
        v100 += 32;
        v101 = v104;
      }

      while (v100 != 512);
      return (vpx_variance32x16)(&v259, 32, a5, a6, a7);
    }

    do
    {
      v79 = &v291.i8[v73];
      v80 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v74, *v76.i8), *(v74 - 1), *v75.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v74->i8, v76), *(&v74[-1].u32[1] + 3), v75), 3uLL);
      *v79 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v74[-2], *v76.i8), *(v74 - 17), *v75.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v74[-2].i8, v76), *(&v74[-3].u32[1] + 3), v75), 3uLL);
      v79[1] = v80;
      v73 += 32;
      v74 = (v74 + a2);
    }

    while (v73 != 544);
    v81 = vrhaddq_u8(vrhaddq_u8(v292, v294), a8[1]);
    v259 = vrhaddq_u8(vrhaddq_u8(v291, v293), *a8);
    v260 = v81;
    v82 = vrhaddq_u8(vrhaddq_u8(v294, v296), a8[3]);
    v261 = vrhaddq_u8(vrhaddq_u8(v293, v295), a8[2]);
    v262 = v82;
    v83 = vrhaddq_u8(vrhaddq_u8(v296, v298), a8[5]);
    v263 = vrhaddq_u8(vrhaddq_u8(v295, v297), a8[4]);
    v264 = v83;
    v84 = vrhaddq_u8(vrhaddq_u8(v298, v300), a8[7]);
    v265 = vrhaddq_u8(vrhaddq_u8(v297, v299), a8[6]);
    v266 = v84;
    v85 = vrhaddq_u8(vrhaddq_u8(v300, v302), a8[9]);
    v267 = vrhaddq_u8(vrhaddq_u8(v299, v301), a8[8]);
    v268 = v85;
    v86 = vrhaddq_u8(vrhaddq_u8(v302, v304), a8[11]);
    v269 = vrhaddq_u8(vrhaddq_u8(v301, v303), a8[10]);
    v270 = v86;
    v87 = vrhaddq_u8(vrhaddq_u8(v304, v306), a8[13]);
    v271 = vrhaddq_u8(vrhaddq_u8(v303, v305), a8[12]);
    v272 = v87;
    v88 = vrhaddq_u8(vrhaddq_u8(v306, v308), a8[15]);
    v273 = vrhaddq_u8(vrhaddq_u8(v305, v307), a8[14]);
    v274 = v88;
    v89 = vrhaddq_u8(vrhaddq_u8(v308, v310), a8[17]);
    v275 = vrhaddq_u8(vrhaddq_u8(v307, v309), a8[16]);
    v276 = v89;
    v90 = vrhaddq_u8(vrhaddq_u8(v310, v312), a8[19]);
    v277 = vrhaddq_u8(vrhaddq_u8(v309, v311), a8[18]);
    v278 = v90;
    v91 = vrhaddq_u8(vrhaddq_u8(v312, v314), a8[21]);
    v279 = vrhaddq_u8(vrhaddq_u8(v311, v313), a8[20]);
    v280 = v91;
    v92 = vrhaddq_u8(vrhaddq_u8(v314, v316), a8[23]);
    v281 = vrhaddq_u8(vrhaddq_u8(v313, v315), a8[22]);
    v282 = v92;
    v93 = vrhaddq_u8(vrhaddq_u8(v316, v318), a8[25]);
    v283 = vrhaddq_u8(vrhaddq_u8(v315, v317), a8[24]);
    v284 = v93;
    v94 = vrhaddq_u8(vrhaddq_u8(v318, v320), a8[27]);
    v285 = vrhaddq_u8(vrhaddq_u8(v317, v319), a8[26]);
    v286 = v94;
    v95 = a8[29];
    v287 = vrhaddq_u8(vrhaddq_u8(v319, v321), a8[28]);
    v288 = vrhaddq_u8(vrhaddq_u8(v320, v322), v95);
    v96 = vrhaddq_u8(vrhaddq_u8(v321, v323), a8[30]);
    v97 = vrhaddq_u8(vrhaddq_u8(v322, v324), a8[31]);
LABEL_23:
    v289 = v96;
    v290 = v97;
    return (vpx_variance32x16)(&v259, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v257 = vrhaddq_u8(*(a1 + 16), *(a1 + 17));
    v291 = vrhaddq_u8(*a1, *(a1 + 1));
    v292 = v257;
    v168 = a1 + a2;
    v169 = vrhaddq_u8(*(v168 + 16), *(v168 + 17));
    v293 = vrhaddq_u8(*v168, *(v168 + 1));
    v294 = v169;
    v170 = v168 + a2;
    v171 = vrhaddq_u8(*(v170 + 16), *(v170 + 17));
    v295 = vrhaddq_u8(*v170, *(v170 + 1));
    v296 = v171;
    v172 = v170 + a2;
    v173 = vrhaddq_u8(*(v172 + 16), *(v172 + 17));
    v297 = vrhaddq_u8(*v172, *(v172 + 1));
    v298 = v173;
    v174 = v172 + a2;
    v175 = vrhaddq_u8(*(v174 + 16), *(v174 + 17));
    v299 = vrhaddq_u8(*v174, *(v174 + 1));
    v300 = v175;
    v176 = v174 + a2;
    v177 = vrhaddq_u8(*(v176 + 16), *(v176 + 17));
    v301 = vrhaddq_u8(*v176, *(v176 + 1));
    v302 = v177;
    v178 = v176 + a2;
    v179 = vrhaddq_u8(*(v178 + 16), *(v178 + 17));
    v303 = vrhaddq_u8(*v178, *(v178 + 1));
    v304 = v179;
    v180 = v178 + a2;
    v181 = vrhaddq_u8(*(v180 + 16), *(v180 + 17));
    v305 = vrhaddq_u8(*v180, *(v180 + 1));
    v306 = v181;
    v182 = v180 + a2;
    v183 = vrhaddq_u8(*(v182 + 16), *(v182 + 17));
    v307 = vrhaddq_u8(*v182, *(v182 + 1));
    v308 = v183;
    v184 = v182 + a2;
    v185 = vrhaddq_u8(*(v184 + 16), *(v184 + 17));
    v309 = vrhaddq_u8(*v184, *(v184 + 1));
    v310 = v185;
    v186 = v184 + a2;
    v187 = vrhaddq_u8(*(v186 + 16), *(v186 + 17));
    v311 = vrhaddq_u8(*v186, *(v186 + 1));
    v312 = v187;
    v188 = v186 + a2;
    v189 = vrhaddq_u8(*(v188 + 16), *(v188 + 17));
    v313 = vrhaddq_u8(*v188, *(v188 + 1));
    v314 = v189;
    v190 = v188 + a2;
    v315 = vrhaddq_u8(*v190, *(v190 + 1));
    v316 = vrhaddq_u8(*(v190 + 16), *(v190 + 17));
    v191 = v190 + a2;
    v317 = vrhaddq_u8(*v191, *(v191 + 1));
    v318 = vrhaddq_u8(*(v191 + 16), *(v191 + 17));
    v192 = v191 + a2;
    v319 = vrhaddq_u8(*v192, *(v192 + 1));
    v320 = vrhaddq_u8(*(v192 + 16), *(v192 + 17));
    v193 = v192 + a2;
    v321 = vrhaddq_u8(*v193, *(v193 + 1));
    v322 = vrhaddq_u8(*(v193 + 16), *(v193 + 17));
    v194 = v193 + a2;
    v323 = vrhaddq_u8(*v194, *(v194 + 1));
    v258 = vrhaddq_u8(*(v194 + 16), *(v194 + 17));
    v195 = vrhaddq_u8(vrhaddq_u8(v257, v169), a8[1]);
    v259 = vrhaddq_u8(vrhaddq_u8(v291, v293), *a8);
    v260 = v195;
    v196 = vrhaddq_u8(vrhaddq_u8(v169, v171), a8[3]);
    v261 = vrhaddq_u8(vrhaddq_u8(v293, v295), a8[2]);
    v262 = v196;
    v197 = vrhaddq_u8(vrhaddq_u8(v171, v173), a8[5]);
    v263 = vrhaddq_u8(vrhaddq_u8(v295, v297), a8[4]);
    v264 = v197;
    v198 = vrhaddq_u8(vrhaddq_u8(v173, v175), a8[7]);
    v265 = vrhaddq_u8(vrhaddq_u8(v297, v299), a8[6]);
    v266 = v198;
    v199 = vrhaddq_u8(vrhaddq_u8(v175, v177), a8[9]);
    v267 = vrhaddq_u8(vrhaddq_u8(v299, v301), a8[8]);
    v268 = v199;
    v200 = vrhaddq_u8(vrhaddq_u8(v177, v179), a8[11]);
    v269 = vrhaddq_u8(vrhaddq_u8(v301, v303), a8[10]);
    v270 = v200;
    v201 = vrhaddq_u8(vrhaddq_u8(v179, v181), a8[13]);
    v271 = vrhaddq_u8(vrhaddq_u8(v303, v305), a8[12]);
    v272 = v201;
    v202 = vrhaddq_u8(vrhaddq_u8(v181, v183), a8[15]);
    v273 = vrhaddq_u8(vrhaddq_u8(v305, v307), a8[14]);
    v274 = v202;
    v203 = vrhaddq_u8(vrhaddq_u8(v183, v185), a8[17]);
    v275 = vrhaddq_u8(vrhaddq_u8(v307, v309), a8[16]);
    v276 = v203;
    v204 = vrhaddq_u8(vrhaddq_u8(v185, v187), a8[19]);
    v277 = vrhaddq_u8(vrhaddq_u8(v309, v311), a8[18]);
    v278 = v204;
    v205 = vrhaddq_u8(vrhaddq_u8(v187, v189), a8[21]);
    v279 = vrhaddq_u8(vrhaddq_u8(v311, v313), a8[20]);
    v280 = v205;
    v206 = vrhaddq_u8(vrhaddq_u8(v189, v316), a8[23]);
    v281 = vrhaddq_u8(vrhaddq_u8(v313, v315), a8[22]);
    v282 = v206;
    v207 = a8[25];
    v283 = vrhaddq_u8(vrhaddq_u8(v315, v317), a8[24]);
    v284 = vrhaddq_u8(vrhaddq_u8(v316, v318), v207);
    v208 = a8[27];
    v285 = vrhaddq_u8(vrhaddq_u8(v317, v319), a8[26]);
    v286 = vrhaddq_u8(vrhaddq_u8(v318, v320), v208);
    v209 = a8[29];
    v287 = vrhaddq_u8(vrhaddq_u8(v319, v321), a8[28]);
    v288 = vrhaddq_u8(vrhaddq_u8(v320, v322), v209);
    v210 = a8[31];
    v96 = vrhaddq_u8(vrhaddq_u8(v321, v323), a8[30]);
    v324 = v258;
    v97 = vrhaddq_u8(vrhaddq_u8(v322, v258), v210);
    goto LABEL_23;
  }

  if (!a4)
  {
    v41 = vrhaddq_u8(vrhaddq_u8(*(a1 + 16), *(a1 + 17)), a8[1]);
    v291 = vrhaddq_u8(vrhaddq_u8(*a1, *(a1 + 1)), *a8);
    v292 = v41;
    v42 = a1 + a2;
    v43 = vrhaddq_u8(vrhaddq_u8(*(v42 + 16), *(v42 + 17)), a8[3]);
    v293 = vrhaddq_u8(vrhaddq_u8(*v42, *(v42 + 1)), a8[2]);
    v294 = v43;
    v44 = v42 + a2;
    v45 = vrhaddq_u8(vrhaddq_u8(*(v44 + 16), *(v44 + 17)), a8[5]);
    v295 = vrhaddq_u8(vrhaddq_u8(*v44, *(v44 + 1)), a8[4]);
    v296 = v45;
    v46 = v44 + a2;
    v47 = vrhaddq_u8(vrhaddq_u8(*(v46 + 16), *(v46 + 17)), a8[7]);
    v297 = vrhaddq_u8(vrhaddq_u8(*v46, *(v46 + 1)), a8[6]);
    v298 = v47;
    v48 = v46 + a2;
    v49 = vrhaddq_u8(vrhaddq_u8(*(v48 + 16), *(v48 + 17)), a8[9]);
    v299 = vrhaddq_u8(vrhaddq_u8(*v48, *(v48 + 1)), a8[8]);
    v300 = v49;
    v50 = v48 + a2;
    v51 = vrhaddq_u8(vrhaddq_u8(*(v50 + 16), *(v50 + 17)), a8[11]);
    v301 = vrhaddq_u8(vrhaddq_u8(*v50, *(v50 + 1)), a8[10]);
    v302 = v51;
    v52 = v50 + a2;
    v53 = vrhaddq_u8(vrhaddq_u8(*(v52 + 16), *(v52 + 17)), a8[13]);
    v303 = vrhaddq_u8(vrhaddq_u8(*v52, *(v52 + 1)), a8[12]);
    v304 = v53;
    v54 = v52 + a2;
    v55 = vrhaddq_u8(vrhaddq_u8(*(v54 + 16), *(v54 + 17)), a8[15]);
    v305 = vrhaddq_u8(vrhaddq_u8(*v54, *(v54 + 1)), a8[14]);
    v306 = v55;
    v56 = v54 + a2;
    v57 = vrhaddq_u8(vrhaddq_u8(*(v56 + 16), *(v56 + 17)), a8[17]);
    v307 = vrhaddq_u8(vrhaddq_u8(*v56, *(v56 + 1)), a8[16]);
    v308 = v57;
    v58 = v56 + a2;
    v59 = vrhaddq_u8(vrhaddq_u8(*(v58 + 16), *(v58 + 17)), a8[19]);
    v309 = vrhaddq_u8(vrhaddq_u8(*v58, *(v58 + 1)), a8[18]);
    v310 = v59;
    v60 = v58 + a2;
    v61 = vrhaddq_u8(vrhaddq_u8(*(v60 + 16), *(v60 + 17)), a8[21]);
    v311 = vrhaddq_u8(vrhaddq_u8(*v60, *(v60 + 1)), a8[20]);
    v312 = v61;
    v62 = v60 + a2;
    v63 = vrhaddq_u8(vrhaddq_u8(*(v62 + 16), *(v62 + 17)), a8[23]);
    v313 = vrhaddq_u8(vrhaddq_u8(*v62, *(v62 + 1)), a8[22]);
    v314 = v63;
    v64 = v62 + a2;
    v65 = a8[25];
    v315 = vrhaddq_u8(vrhaddq_u8(*v64, *(v64 + 1)), a8[24]);
    v316 = vrhaddq_u8(vrhaddq_u8(*(v64 + 16), *(v64 + 17)), v65);
    v66 = v64 + a2;
    v67 = a8[27];
    v317 = vrhaddq_u8(vrhaddq_u8(*v66, *(v66 + 1)), a8[26]);
    v318 = vrhaddq_u8(vrhaddq_u8(*(v66 + 16), *(v66 + 17)), v67);
    v68 = v66 + a2;
    v69 = a8[29];
    v319 = vrhaddq_u8(vrhaddq_u8(*v68, *(v68 + 1)), a8[28]);
    v320 = vrhaddq_u8(vrhaddq_u8(*(v68 + 16), *(v68 + 17)), v69);
    v70 = v68 + a2;
    v71 = a8[31];
    v321 = vrhaddq_u8(vrhaddq_u8(*v70, *(v70 + 1)), a8[30]);
    v72 = vrhaddq_u8(vrhaddq_u8(*(v70 + 16), *(v70 + 17)), v71);
    goto LABEL_21;
  }

  v220 = 0;
  v221 = vrhaddq_u8(*a1, *(a1 + 1));
  v222 = vrhaddq_u8(*(a1 + 16), *(a1 + 17));
  v291 = v221;
  v292 = v222;
  v223 = a1 + a2;
  v224 = vrhaddq_u8(*(v223 + 16), *(v223 + 17));
  v293 = vrhaddq_u8(*v223, *(v223 + 1));
  v294 = v224;
  v225 = v223 + a2;
  v226 = vrhaddq_u8(*(v225 + 16), *(v225 + 17));
  v295 = vrhaddq_u8(*v225, *(v225 + 1));
  v296 = v226;
  v227 = v225 + a2;
  v228 = vrhaddq_u8(*(v227 + 16), *(v227 + 17));
  v297 = vrhaddq_u8(*v227, *(v227 + 1));
  v298 = v228;
  v229 = v227 + a2;
  v230 = vrhaddq_u8(*(v229 + 16), *(v229 + 17));
  v299 = vrhaddq_u8(*v229, *(v229 + 1));
  v300 = v230;
  v231 = v229 + a2;
  v232 = vrhaddq_u8(*(v231 + 16), *(v231 + 17));
  v301 = vrhaddq_u8(*v231, *(v231 + 1));
  v302 = v232;
  v233 = v231 + a2;
  v234 = vrhaddq_u8(*(v233 + 16), *(v233 + 17));
  v303 = vrhaddq_u8(*v233, *(v233 + 1));
  v304 = v234;
  v235 = v233 + a2;
  v236 = vrhaddq_u8(*(v235 + 16), *(v235 + 17));
  v305 = vrhaddq_u8(*v235, *(v235 + 1));
  v306 = v236;
  v237 = v235 + a2;
  v238 = vrhaddq_u8(*(v237 + 16), *(v237 + 17));
  v307 = vrhaddq_u8(*v237, *(v237 + 1));
  v308 = v238;
  v239 = v237 + a2;
  v240 = vrhaddq_u8(*(v239 + 16), *(v239 + 17));
  v309 = vrhaddq_u8(*v239, *(v239 + 1));
  v310 = v240;
  v241 = v239 + a2;
  v242 = vrhaddq_u8(*(v241 + 16), *(v241 + 17));
  v311 = vrhaddq_u8(*v241, *(v241 + 1));
  v312 = v242;
  v243 = v241 + a2;
  v244 = vrhaddq_u8(*(v243 + 16), *(v243 + 17));
  v313 = vrhaddq_u8(*v243, *(v243 + 1));
  v314 = v244;
  v245 = v243 + a2;
  v315 = vrhaddq_u8(*v245, *(v245 + 1));
  v316 = vrhaddq_u8(*(v245 + 16), *(v245 + 17));
  v246 = v245 + a2;
  v317 = vrhaddq_u8(*v246, *(v246 + 1));
  v318 = vrhaddq_u8(*(v246 + 16), *(v246 + 17));
  v247 = v246 + a2;
  v319 = vrhaddq_u8(*v247, *(v247 + 1));
  v320 = vrhaddq_u8(*(v247 + 16), *(v247 + 17));
  v248 = v247 + a2;
  v321 = vrhaddq_u8(*v248, *(v248 + 1));
  v249 = v248 + a2;
  v322 = vrhaddq_u8(*(v248 + 16), *(v248 + 17));
  v323 = vrhaddq_u8(*v249, *(v249 + 1));
  v250 = *(v249 + 17);
  v251 = vrhaddq_u8(*(v249 + 16), v250);
  v324 = v251;
  v251.i32[0] = 8 - a4;
  v250.i32[0] = a4;
  v252 = vdupq_lane_s8(*v251.i8, 0);
  v253 = vdupq_lane_s8(*v250.i8, 0);
  do
  {
    v254 = *(&v293 + v220);
    v255 = (&v259 + v220);
    v256 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v294.i8[v220], *v253.i8), *(&v291 + v220 + 16), *v252.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v294 + v220), v253), *(&v291 + v220 + 16), v252), 3uLL), a8[v220 / 0x10 + 1]);
    *v255 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v254.i8, *v253.i8), *v221.i8, *v252.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v254, v253), v221, v252), 3uLL), a8[v220 / 0x10]);
    v255[1] = v256;
    v220 += 32;
    v221 = v254;
  }

  while (v220 != 512);
  return (vpx_variance32x16)(&v259, 32, a5, a6, a7);
}

uint64_t vpx_sub_pixel_avg_variance32x32_neon(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x16_t *a8, int8x8_t a9, int8x8_t a10)
{
  v281 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v105 = 0;
      v106 = vrhaddq_u8(*(a1 + 16), *(a1 + 17));
      v215 = vrhaddq_u8(*a1, *(a1 + 1));
      v216 = v106;
      v107 = a1 + a2;
      v108 = vrhaddq_u8(*(v107 + 16), *(v107 + 17));
      v217 = vrhaddq_u8(*v107, *(v107 + 1));
      v218 = v108;
      v109 = v107 + a2;
      v110 = vrhaddq_u8(*(v109 + 16), *(v109 + 17));
      v219 = vrhaddq_u8(*v109, *(v109 + 1));
      v220 = v110;
      v111 = v109 + a2;
      v112 = vrhaddq_u8(*(v111 + 16), *(v111 + 17));
      v221 = vrhaddq_u8(*v111, *(v111 + 1));
      v222 = v112;
      v113 = v111 + a2;
      v114 = vrhaddq_u8(*(v113 + 16), *(v113 + 17));
      v223 = vrhaddq_u8(*v113, *(v113 + 1));
      v224 = v114;
      v115 = v113 + a2;
      v116 = vrhaddq_u8(*(v115 + 16), *(v115 + 17));
      v225 = vrhaddq_u8(*v115, *(v115 + 1));
      v226 = v116;
      v117 = v115 + a2;
      v118 = vrhaddq_u8(*(v117 + 16), *(v117 + 17));
      v227 = vrhaddq_u8(*v117, *(v117 + 1));
      v228 = v118;
      v119 = v117 + a2;
      v120 = vrhaddq_u8(*(v119 + 16), *(v119 + 17));
      v229 = vrhaddq_u8(*v119, *(v119 + 1));
      v230 = v120;
      v121 = v119 + a2;
      v122 = vrhaddq_u8(*(v121 + 16), *(v121 + 17));
      v231 = vrhaddq_u8(*v121, *(v121 + 1));
      v232 = v122;
      v123 = v121 + a2;
      v124 = vrhaddq_u8(*(v123 + 16), *(v123 + 17));
      v233 = vrhaddq_u8(*v123, *(v123 + 1));
      v234 = v124;
      v125 = v123 + a2;
      v126 = vrhaddq_u8(*(v125 + 16), *(v125 + 17));
      v235 = vrhaddq_u8(*v125, *(v125 + 1));
      v236 = v126;
      v127 = v125 + a2;
      v128 = vrhaddq_u8(*(v127 + 16), *(v127 + 17));
      v237 = vrhaddq_u8(*v127, *(v127 + 1));
      v238 = v128;
      v129 = v127 + a2;
      v239 = vrhaddq_u8(*v129, *(v129 + 1));
      v240 = vrhaddq_u8(*(v129 + 16), *(v129 + 17));
      v130 = v129 + a2;
      v241 = vrhaddq_u8(*v130, *(v130 + 1));
      v242 = vrhaddq_u8(*(v130 + 16), *(v130 + 17));
      v131 = v130 + a2;
      v243 = vrhaddq_u8(*v131, *(v131 + 1));
      v244 = vrhaddq_u8(*(v131 + 16), *(v131 + 17));
      v132 = v131 + a2;
      v245 = vrhaddq_u8(*v132, *(v132 + 1));
      v246 = vrhaddq_u8(*(v132 + 16), *(v132 + 17));
      v133 = v132 + a2;
      v247 = vrhaddq_u8(*v133, *(v133 + 1));
      v248 = vrhaddq_u8(*(v133 + 16), *(v133 + 17));
      v134 = v133 + a2;
      v249 = vrhaddq_u8(*v134, *(v134 + 1));
      v250 = vrhaddq_u8(*(v134 + 16), *(v134 + 17));
      v135 = v134 + a2;
      v251 = vrhaddq_u8(*v135, *(v135 + 1));
      v252 = vrhaddq_u8(*(v135 + 16), *(v135 + 17));
      v136 = v135 + a2;
      v253 = vrhaddq_u8(*v136, *(v136 + 1));
      v254 = vrhaddq_u8(*(v136 + 16), *(v136 + 17));
      v137 = v136 + a2;
      v255 = vrhaddq_u8(*v137, *(v137 + 1));
      v256 = vrhaddq_u8(*(v137 + 16), *(v137 + 17));
      v138 = v137 + a2;
      v257 = vrhaddq_u8(*v138, *(v138 + 1));
      v258 = vrhaddq_u8(*(v138 + 16), *(v138 + 17));
      v139 = v138 + a2;
      v259 = vrhaddq_u8(*v139, *(v139 + 1));
      v260 = vrhaddq_u8(*(v139 + 16), *(v139 + 17));
      v140 = v139 + a2;
      v261 = vrhaddq_u8(*v140, *(v140 + 1));
      v262 = vrhaddq_u8(*(v140 + 16), *(v140 + 17));
      v141 = v140 + a2;
      v263 = vrhaddq_u8(*v141, *(v141 + 1));
      v264 = vrhaddq_u8(*(v141 + 16), *(v141 + 17));
      v142 = v141 + a2;
      v265 = vrhaddq_u8(*v142, *(v142 + 1));
      v266 = vrhaddq_u8(*(v142 + 16), *(v142 + 17));
      v143 = v142 + a2;
      v267 = vrhaddq_u8(*v143, *(v143 + 1));
      v268 = vrhaddq_u8(*(v143 + 16), *(v143 + 17));
      v144 = v143 + a2;
      v269 = vrhaddq_u8(*v144, *(v144 + 1));
      v270 = vrhaddq_u8(*(v144 + 16), *(v144 + 17));
      v145 = v144 + a2;
      v271 = vrhaddq_u8(*v145, *(v145 + 1));
      v272 = vrhaddq_u8(*(v145 + 16), *(v145 + 17));
      v146 = v145 + a2;
      v273 = vrhaddq_u8(*v146, *(v146 + 1));
      v274 = vrhaddq_u8(*(v146 + 16), *(v146 + 17));
      v147 = v146 + a2;
      v275 = vrhaddq_u8(*v147, *(v147 + 1));
      v276 = vrhaddq_u8(*(v147 + 16), *(v147 + 17));
      v148 = v147 + a2;
      v277 = vrhaddq_u8(*v148, *(v148 + 1));
      v278 = vrhaddq_u8(*(v148 + 16), *(v148 + 17));
      v149 = v148 + a2;
      v279 = vrhaddq_u8(*v149, *(v149 + 1));
      v280 = vrhaddq_u8(*(v149 + 16), *(v149 + 17));
      v150 = v215;
      do
      {
        v151 = *(&v217 + v105);
        v152 = vrhaddq_u8(vrhaddq_u8(*(&v215 + v105 + 16), *(&v218 + v105)), a8[v105 / 0x10 + 1]);
        v153 = &v214[v105];
        *v153 = vrhaddq_u8(vrhaddq_u8(v150, v151), a8[v105 / 0x10]);
        v153[1] = v152;
        v105 += 32;
        v150 = v151;
      }

      while (v105 != 1024);
    }

    else
    {
      v73 = 0;
      if (!a4)
      {
        v74 = (a1 + 17);
        do
        {
          v75 = vrhaddq_u8(vrhaddq_u8(*(v74 - 1), *v74), a8[v73 / 0x10 + 1]);
          v76 = (&v215 + v73);
          *v76 = vrhaddq_u8(vrhaddq_u8(*(v74 - 17), v74[-1]), a8[v73 / 0x10]);
          v76[1] = v75;
          v73 += 32;
          v74 = (v74 + a2);
        }

        while (v73 != 1024);
        return (vpx_variance32x32)(&v215, 32, a5, a6, a7);
      }

      v163 = vrhaddq_u8(*(a1 + 16), *(a1 + 17));
      v215 = vrhaddq_u8(*a1, *(a1 + 1));
      v216 = v163;
      v164 = vrhaddq_u8(*(a1 + a2 + 16), *(a1 + a2 + 17));
      v217 = vrhaddq_u8(*(a1 + a2), *(a1 + a2 + 1));
      v218 = v164;
      v165 = a1 + a2 + a2;
      v166 = vrhaddq_u8(*(v165 + 16), *(v165 + 17));
      v219 = vrhaddq_u8(*v165, *(v165 + 1));
      v220 = v166;
      v167 = v165 + a2;
      v168 = vrhaddq_u8(*(v167 + 16), *(v167 + 17));
      v221 = vrhaddq_u8(*v167, *(v167 + 1));
      v222 = v168;
      v169 = v167 + a2;
      v170 = vrhaddq_u8(*(v169 + 16), *(v169 + 17));
      v223 = vrhaddq_u8(*v169, *(v169 + 1));
      v224 = v170;
      v171 = v169 + a2;
      v172 = vrhaddq_u8(*(v171 + 16), *(v171 + 17));
      v225 = vrhaddq_u8(*v171, *(v171 + 1));
      v226 = v172;
      v173 = v171 + a2;
      v174 = vrhaddq_u8(*(v173 + 16), *(v173 + 17));
      v227 = vrhaddq_u8(*v173, *(v173 + 1));
      v228 = v174;
      v175 = v173 + a2;
      v176 = vrhaddq_u8(*(v175 + 16), *(v175 + 17));
      v229 = vrhaddq_u8(*v175, *(v175 + 1));
      v230 = v176;
      v177 = v175 + a2;
      v178 = vrhaddq_u8(*(v177 + 16), *(v177 + 17));
      v231 = vrhaddq_u8(*v177, *(v177 + 1));
      v232 = v178;
      v179 = v177 + a2;
      v180 = vrhaddq_u8(*(v179 + 16), *(v179 + 17));
      v233 = vrhaddq_u8(*v179, *(v179 + 1));
      v234 = v180;
      v181 = v179 + a2;
      v182 = vrhaddq_u8(*(v181 + 16), *(v181 + 17));
      v235 = vrhaddq_u8(*v181, *(v181 + 1));
      v236 = v182;
      v183 = v181 + a2;
      v184 = vrhaddq_u8(*(v183 + 16), *(v183 + 17));
      v237 = vrhaddq_u8(*v183, *(v183 + 1));
      v238 = v184;
      v185 = v183 + a2;
      v239 = vrhaddq_u8(*v185, *(v185 + 1));
      v240 = vrhaddq_u8(*(v185 + 16), *(v185 + 17));
      v186 = v185 + a2;
      v241 = vrhaddq_u8(*v186, *(v186 + 1));
      v242 = vrhaddq_u8(*(v186 + 16), *(v186 + 17));
      v187 = v186 + a2;
      v243 = vrhaddq_u8(*v187, *(v187 + 1));
      v244 = vrhaddq_u8(*(v187 + 16), *(v187 + 17));
      v188 = v187 + a2;
      v245 = vrhaddq_u8(*v188, *(v188 + 1));
      v246 = vrhaddq_u8(*(v188 + 16), *(v188 + 17));
      v189 = v188 + a2;
      v247 = vrhaddq_u8(*v189, *(v189 + 1));
      v248 = vrhaddq_u8(*(v189 + 16), *(v189 + 17));
      v190 = v189 + a2;
      v249 = vrhaddq_u8(*v190, *(v190 + 1));
      v250 = vrhaddq_u8(*(v190 + 16), *(v190 + 17));
      v191 = v190 + a2;
      v251 = vrhaddq_u8(*v191, *(v191 + 1));
      v252 = vrhaddq_u8(*(v191 + 16), *(v191 + 17));
      v192 = v191 + a2;
      v253 = vrhaddq_u8(*v192, *(v192 + 1));
      v254 = vrhaddq_u8(*(v192 + 16), *(v192 + 17));
      v193 = v192 + a2;
      v255 = vrhaddq_u8(*v193, *(v193 + 1));
      v256 = vrhaddq_u8(*(v193 + 16), *(v193 + 17));
      v194 = v193 + a2;
      v257 = vrhaddq_u8(*v194, *(v194 + 1));
      v258 = vrhaddq_u8(*(v194 + 16), *(v194 + 17));
      v195 = v194 + a2;
      v259 = vrhaddq_u8(*v195, *(v195 + 1));
      v260 = vrhaddq_u8(*(v195 + 16), *(v195 + 17));
      v196 = v195 + a2;
      v261 = vrhaddq_u8(*v196, *(v196 + 1));
      v262 = vrhaddq_u8(*(v196 + 16), *(v196 + 17));
      v197 = v196 + a2;
      v263 = vrhaddq_u8(*v197, *(v197 + 1));
      v264 = vrhaddq_u8(*(v197 + 16), *(v197 + 17));
      v198 = v197 + a2;
      v265 = vrhaddq_u8(*v198, *(v198 + 1));
      v266 = vrhaddq_u8(*(v198 + 16), *(v198 + 17));
      v199 = v198 + a2;
      v267 = vrhaddq_u8(*v199, *(v199 + 1));
      v268 = vrhaddq_u8(*(v199 + 16), *(v199 + 17));
      v200 = v199 + a2;
      v269 = vrhaddq_u8(*v200, *(v200 + 1));
      v270 = vrhaddq_u8(*(v200 + 16), *(v200 + 17));
      v201 = v200 + a2;
      v271 = vrhaddq_u8(*v201, *(v201 + 1));
      v272 = vrhaddq_u8(*(v201 + 16), *(v201 + 17));
      v202 = v201 + a2;
      v273 = vrhaddq_u8(*v202, *(v202 + 1));
      v274 = vrhaddq_u8(*(v202 + 16), *(v202 + 17));
      v203 = v202 + a2;
      v275 = vrhaddq_u8(*v203, *(v203 + 1));
      v276 = vrhaddq_u8(*(v203 + 16), *(v203 + 17));
      v204 = v203 + a2;
      v277 = vrhaddq_u8(*v204, *(v204 + 1));
      v205 = v204 + a2;
      v278 = vrhaddq_u8(*(v204 + 16), *(v204 + 17));
      v279 = vrhaddq_u8(*v205, *(v205 + 1));
      v206 = *(v205 + 17);
      v207 = vrhaddq_u8(*(v205 + 16), v206);
      v280 = v207;
      v207.i32[0] = 8 - a4;
      v206.i32[0] = a4;
      v208 = v215;
      v209 = vdupq_lane_s8(*v207.i8, 0);
      v210 = vdupq_lane_s8(*v206.i8, 0);
      do
      {
        v211 = *(&v217 + v73);
        v212 = &v214[v73];
        v213 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v218.i8[v73], *v210.i8), *(&v215 + v73 + 16), *v209.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v218 + v73), v210), *(&v215 + v73 + 16), v209), 3uLL), a8[v73 / 0x10 + 1]);
        *v212 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v211.i8, *v210.i8), *v208.i8, *v209.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v211, v210), v208, v209), 3uLL), a8[v73 / 0x10]);
        v212[1] = v213;
        v73 += 32;
        v208 = v211;
      }

      while (v73 != 1024);
    }
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        v99 = 0;
        v100 = *a1;
        do
        {
          v101 = *(a1 + 16);
          a1 += a2;
          v102 = *a1;
          v103 = vrhaddq_u8(vrhaddq_u8(v101, *(a1 + 16)), a8[v99 + 1]);
          v104 = (&v215 + v99 * 16);
          *v104 = vrhaddq_u8(vrhaddq_u8(v100, *a1), a8[v99]);
          v104[1] = v103;
          v99 += 2;
          v100 = v102;
        }

        while ((v99 * 16) != 1024);
      }

      else if (a4)
      {
        v154 = 0;
        a9.i32[0] = 8 - a4;
        a10.i32[0] = a4;
        v155 = *a1;
        v156 = vdupq_lane_s8(a9, 0);
        v157 = vdupq_lane_s8(a10, 0);
        do
        {
          v158 = *(a1 + 16);
          a1 += a2;
          v159 = *a1;
          v160 = (&v215 + v154 * 16);
          v161 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + 16), *v157.i8), *v158.i8, *v156.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + 16), v157), v158, v156), 3uLL), a8[v154 + 1]);
          *v160 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*a1, *v157.i8), *v155.i8, *v156.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*a1, v157), v155, v156), 3uLL), a8[v154]);
          v160[1] = v161;
          v154 += 2;
          v155 = v159;
        }

        while ((v154 * 16) != 1024);
      }

      else
      {
        v10 = vrhaddq_u8(*(a1 + 16), a8[1]);
        v215 = vrhaddq_u8(*a1, *a8);
        v216 = v10;
        v11 = (a1 + a2);
        v12 = vrhaddq_u8(v11[1], a8[3]);
        v217 = vrhaddq_u8(*v11, a8[2]);
        v218 = v12;
        v13 = (v11 + a2);
        v14 = vrhaddq_u8(v13[1], a8[5]);
        v219 = vrhaddq_u8(*v13, a8[4]);
        v220 = v14;
        v15 = (v13 + a2);
        v16 = vrhaddq_u8(v15[1], a8[7]);
        v221 = vrhaddq_u8(*v15, a8[6]);
        v222 = v16;
        v17 = (v15 + a2);
        v18 = vrhaddq_u8(v17[1], a8[9]);
        v223 = vrhaddq_u8(*v17, a8[8]);
        v224 = v18;
        v19 = (v17 + a2);
        v20 = vrhaddq_u8(v19[1], a8[11]);
        v225 = vrhaddq_u8(*v19, a8[10]);
        v226 = v20;
        v21 = (v19 + a2);
        v22 = vrhaddq_u8(v21[1], a8[13]);
        v227 = vrhaddq_u8(*v21, a8[12]);
        v228 = v22;
        v23 = (v21 + a2);
        v24 = vrhaddq_u8(v23[1], a8[15]);
        v229 = vrhaddq_u8(*v23, a8[14]);
        v230 = v24;
        v25 = (v23 + a2);
        v26 = vrhaddq_u8(v25[1], a8[17]);
        v231 = vrhaddq_u8(*v25, a8[16]);
        v232 = v26;
        v27 = (v25 + a2);
        v28 = vrhaddq_u8(v27[1], a8[19]);
        v233 = vrhaddq_u8(*v27, a8[18]);
        v234 = v28;
        v29 = (v27 + a2);
        v30 = vrhaddq_u8(v29[1], a8[21]);
        v235 = vrhaddq_u8(*v29, a8[20]);
        v236 = v30;
        v31 = (v29 + a2);
        v32 = vrhaddq_u8(v31[1], a8[23]);
        v237 = vrhaddq_u8(*v31, a8[22]);
        v238 = v32;
        v33 = (v31 + a2);
        v34 = a8[25];
        v239 = vrhaddq_u8(*v33, a8[24]);
        v240 = vrhaddq_u8(v33[1], v34);
        v35 = (v33 + a2);
        v36 = a8[27];
        v241 = vrhaddq_u8(*v35, a8[26]);
        v242 = vrhaddq_u8(v35[1], v36);
        v37 = (v35 + a2);
        v38 = a8[29];
        v243 = vrhaddq_u8(*v37, a8[28]);
        v244 = vrhaddq_u8(v37[1], v38);
        v39 = (v37 + a2);
        v40 = a8[31];
        v245 = vrhaddq_u8(*v39, a8[30]);
        v246 = vrhaddq_u8(v39[1], v40);
        v41 = (v39 + a2);
        v42 = a8[33];
        v247 = vrhaddq_u8(*v41, a8[32]);
        v248 = vrhaddq_u8(v41[1], v42);
        v43 = (v41 + a2);
        v44 = a8[35];
        v249 = vrhaddq_u8(*v43, a8[34]);
        v250 = vrhaddq_u8(v43[1], v44);
        v45 = (v43 + a2);
        v46 = a8[37];
        v251 = vrhaddq_u8(*v45, a8[36]);
        v252 = vrhaddq_u8(v45[1], v46);
        v47 = (v45 + a2);
        v48 = a8[39];
        v253 = vrhaddq_u8(*v47, a8[38]);
        v254 = vrhaddq_u8(v47[1], v48);
        v49 = (v47 + a2);
        v50 = a8[41];
        v255 = vrhaddq_u8(*v49, a8[40]);
        v256 = vrhaddq_u8(v49[1], v50);
        v51 = (v49 + a2);
        v52 = a8[43];
        v257 = vrhaddq_u8(*v51, a8[42]);
        v258 = vrhaddq_u8(v51[1], v52);
        v53 = (v51 + a2);
        v54 = a8[45];
        v259 = vrhaddq_u8(*v53, a8[44]);
        v260 = vrhaddq_u8(v53[1], v54);
        v55 = (v53 + a2);
        v56 = a8[47];
        v261 = vrhaddq_u8(*v55, a8[46]);
        v262 = vrhaddq_u8(v55[1], v56);
        v57 = (v55 + a2);
        v58 = a8[49];
        v263 = vrhaddq_u8(*v57, a8[48]);
        v264 = vrhaddq_u8(v57[1], v58);
        v59 = (v57 + a2);
        v60 = a8[51];
        v265 = vrhaddq_u8(*v59, a8[50]);
        v266 = vrhaddq_u8(v59[1], v60);
        v61 = (v59 + a2);
        v62 = a8[53];
        v267 = vrhaddq_u8(*v61, a8[52]);
        v268 = vrhaddq_u8(v61[1], v62);
        v63 = (v61 + a2);
        v64 = a8[55];
        v269 = vrhaddq_u8(*v63, a8[54]);
        v270 = vrhaddq_u8(v63[1], v64);
        v65 = (v63 + a2);
        v66 = a8[57];
        v271 = vrhaddq_u8(*v65, a8[56]);
        v272 = vrhaddq_u8(v65[1], v66);
        v67 = (v65 + a2);
        v68 = a8[59];
        v273 = vrhaddq_u8(*v67, a8[58]);
        v274 = vrhaddq_u8(v67[1], v68);
        v69 = (v67 + a2);
        v70 = a8[61];
        v275 = vrhaddq_u8(*v69, a8[60]);
        v276 = vrhaddq_u8(v69[1], v70);
        v71 = (v69 + a2);
        v72 = a8[63];
        v277 = vrhaddq_u8(*v71, a8[62]);
        v278 = vrhaddq_u8(v71[1], v72);
      }

      return (vpx_variance32x32)(&v215, 32, a5, a6, a7);
    }

    v77 = 0;
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v78 = (a1 + 17);
    v79 = vdupq_lane_s8(a9, 0);
    v80 = vdupq_lane_s8(a10, 0);
    if (a4 == 4)
    {
      do
      {
        v83 = &v215.i8[v77];
        v84 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v78, *v80.i8), *(v78 - 1), *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v78->i8, v80), *(&v78[-1].u32[1] + 3), v79), 3uLL);
        *v83 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v78[-2], *v80.i8), *(v78 - 17), *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v78[-2].i8, v80), *(&v78[-3].u32[1] + 3), v79), 3uLL);
        v83[1] = v84;
        v77 += 32;
        v78 = (v78 + a2);
      }

      while (v77 != 1056);
      v85 = 0;
      v86 = v215;
      do
      {
        v87 = *(&v217 + v85);
        v88 = vrhaddq_u8(vrhaddq_u8(*(&v215 + v85 + 16), *(&v218 + v85)), a8[v85 / 0x10 + 1]);
        v89 = &v214[v85];
        *v89 = vrhaddq_u8(vrhaddq_u8(v86, v87), a8[v85 / 0x10]);
        v89[1] = v88;
        v85 += 32;
        v86 = v87;
      }

      while (v85 != 1024);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v81 = (&v215 + v77);
          v82 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v78, *v80.i8), *(v78 - 1), *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v78->i8, v80), *(&v78[-1].u32[1] + 3), v79), 3uLL), a8[v77 / 0x10 + 1]);
          *v81 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v78[-2], *v80.i8), *(v78 - 17), *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v78[-2].i8, v80), *(&v78[-3].u32[1] + 3), v79), 3uLL), a8[v77 / 0x10]);
          v81[1] = v82;
          v77 += 32;
          v78 = (v78 + a2);
        }

        while (v77 != 1024);
        return (vpx_variance32x32)(&v215, 32, a5, a6, a7);
      }

      do
      {
        v90 = &v215.i8[v77];
        v91 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v78, *v80.i8), *(v78 - 1), *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v78->i8, v80), *(&v78[-1].u32[1] + 3), v79), 3uLL);
        *v90 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v78[-2], *v80.i8), *(v78 - 17), *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v78[-2].i8, v80), *(&v78[-3].u32[1] + 3), v79), 3uLL);
        v90[1] = v91;
        v77 += 32;
        v78 = (v78 + a2);
      }

      while (v77 != 1056);
      v92 = 0;
      v79.i32[0] = 8 - a4;
      v80.i32[0] = a4;
      v93 = v215;
      v94 = vdupq_lane_s8(*v79.i8, 0);
      v95 = vdupq_lane_s8(*v80.i8, 0);
      do
      {
        v96 = *(&v217 + v92);
        v97 = &v214[v92];
        v98 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v218.i8[v92], *v95.i8), *(&v215 + v92 + 16), *v94.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v218 + v92), v95), *(&v215 + v92 + 16), v94), 3uLL), a8[v92 / 0x10 + 1]);
        *v97 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v96.i8, *v95.i8), *v93.i8, *v94.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v96, v95), v93, v94), 3uLL), a8[v92 / 0x10]);
        v97[1] = v98;
        v92 += 32;
        v93 = v96;
      }

      while (v92 != 1024);
    }
  }

  return (vpx_variance32x32)(v214, 32, a5, a6, a7);
}

uint64_t vpx_sub_pixel_avg_variance32x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v76 = *MEMORY[0x277D85DE8];
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v57 = 0;
      v58 = (v3 + 17);
      do
      {
        v59 = &v75[v57];
        v60 = vrhaddq_u8(*(v58 - 1), *v58);
        *v59 = vrhaddq_u8(*(v58 - 17), v58[-1]);
        v59[1] = v60;
        v57 += 2;
        v58 = (v58 + v4);
      }

      while ((v57 * 16) != 2080);
      v61 = 0;
      v62 = v75[0];
      do
      {
        v63 = v75[v61 + 2];
        v64 = vrhaddq_u8(vrhaddq_u8(v75[v61 + 1], v75[v61 + 3]), *(v10 + v61 * 16 + 16));
        v65 = &v74[v61 * 16];
        *v65 = vrhaddq_u8(vrhaddq_u8(v62, v63), *(v10 + v61 * 16));
        v65[1] = v64;
        v61 += 2;
        v62 = v63;
      }

      while ((v61 * 16) != 2048);
    }

    else
    {
      v17 = 0;
      v18 = (v3 + 17);
      if (!v6)
      {
        do
        {
          v19 = vrhaddq_u8(vrhaddq_u8(*(v18 - 1), *v18), *(v10 + v17 * 16 + 16));
          v20 = &v75[v17];
          *v20 = vrhaddq_u8(vrhaddq_u8(*(v18 - 17), v18[-1]), *(v10 + v17 * 16));
          v20[1] = v19;
          v17 += 2;
          v18 = (v18 + v4);
        }

        while ((v17 * 16) != 2048);
        return (vpx_variance32x64)(v75, 32, v7, v8, v9);
      }

      do
      {
        v21 = &v75[v17];
        v22 = vrhaddq_u8(*(v18 - 17), v18[-1]);
        v23 = vrhaddq_u8(*(v18 - 1), *v18);
        *v21 = v22;
        v21[1] = v23;
        v17 += 2;
        v18 = (v18 + v4);
      }

      while ((v17 * 16) != 2080);
      v24 = 0;
      v22.i32[0] = 8 - v6;
      v23.i32[0] = v6;
      v25 = v75[0];
      v26 = vdupq_lane_s8(*v22.i8, 0);
      v27 = vdupq_lane_s8(*v23.i8, 0);
      do
      {
        v28 = v75[v24 + 2];
        v29 = &v74[v24 * 16];
        v30 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v75[v24 + 3], *v27.i8), *&v75[v24 + 1], *v26.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v75[v24 + 3], v27), v75[v24 + 1], v26), 3uLL), *(v10 + v24 * 16 + 16));
        *v29 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, *v27.i8), *v25.i8, *v26.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v28, v27), v25, v26), 3uLL), *(v10 + v24 * 16));
        v29[1] = v30;
        v24 += 2;
        v25 = v28;
      }

      while ((v24 * 16) != 2048);
    }

    return (vpx_variance32x64)(v74, 32, v7, v8, v9);
  }

  v13 = 0;
  if (v5)
  {
    v11.i32[0] = 8 - v5;
    v12.i32[0] = v5;
    v31 = &v3[1].i8[1];
    v32 = vdupq_lane_s8(v11, 0);
    v33 = vdupq_lane_s8(v12, 0);
    if (v6 == 4)
    {
      do
      {
        v36 = &v75[v13 / 0x10];
        v37 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v31, *v33.i8), *(v31 - 1), *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v31->i8, v33), *(&v31[-1].u32[1] + 3), v32), 3uLL);
        *v36 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v31[-2], *v33.i8), *(v31 - 17), *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v31[-2].i8, v33), *(&v31[-3].u32[1] + 3), v32), 3uLL);
        v36[1] = v37;
        v13 += 32;
        v31 = (v31 + v4);
      }

      while (v13 != 2080);
      v38 = 0;
      v39 = v75[0];
      do
      {
        v40 = v75[v38 + 2];
        v41 = vrhaddq_u8(vrhaddq_u8(v75[v38 + 1], v75[v38 + 3]), *(v10 + v38 * 16 + 16));
        v42 = &v74[v38 * 16];
        *v42 = vrhaddq_u8(vrhaddq_u8(v39, v40), *(v10 + v38 * 16));
        v42[1] = v41;
        v38 += 2;
        v39 = v40;
      }

      while ((v38 * 16) != 2048);
    }

    else
    {
      if (!v6)
      {
        do
        {
          v34 = &v75[v13 / 0x10];
          v35 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v31, *v33.i8), *(v31 - 1), *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v31->i8, v33), *(&v31[-1].u32[1] + 3), v32), 3uLL), *(v10 + v13 + 16));
          *v34 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v31[-2], *v33.i8), *(v31 - 17), *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v31[-2].i8, v33), *(&v31[-3].u32[1] + 3), v32), 3uLL), *(v10 + v13));
          v34[1] = v35;
          v13 += 32;
          v31 = (v31 + v4);
        }

        while (v13 != 2048);
        return (vpx_variance32x64)(v75, 32, v7, v8, v9);
      }

      do
      {
        v43 = &v75[v13 / 0x10];
        v44 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v31, *v33.i8), *(v31 - 1), *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v31->i8, v33), *(&v31[-1].u32[1] + 3), v32), 3uLL);
        *v43 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v31[-2], *v33.i8), *(v31 - 17), *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v31[-2].i8, v33), *(&v31[-3].u32[1] + 3), v32), 3uLL);
        v43[1] = v44;
        v13 += 32;
        v31 = (v31 + v4);
      }

      while (v13 != 2080);
      v45 = 0;
      v32.i32[0] = 8 - v6;
      v33.i32[0] = v6;
      v46 = v75[0];
      v47 = vdupq_lane_s8(*v32.i8, 0);
      v48 = vdupq_lane_s8(*v33.i8, 0);
      do
      {
        v49 = v75[v45 + 2];
        v50 = &v74[v45 * 16];
        v51 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v75[v45 + 3], *v48.i8), *&v75[v45 + 1], *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v75[v45 + 3], v48), v75[v45 + 1], v47), 3uLL), *(v10 + v45 * 16 + 16));
        *v50 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v49.i8, *v48.i8), *v46.i8, *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v49, v48), v46, v47), 3uLL), *(v10 + v45 * 16));
        v50[1] = v51;
        v45 += 2;
        v46 = v49;
      }

      while ((v45 * 16) != 2048);
    }

    return (vpx_variance32x64)(v74, 32, v7, v8, v9);
  }

  if (v6 == 4)
  {
    v52 = *v3;
    do
    {
      v53 = v3[1];
      v3 = (v3 + v4);
      v54 = *v3;
      v55 = vrhaddq_u8(vrhaddq_u8(v53, v3[1]), *(v10 + v13 + 16));
      v56 = &v75[v13 / 0x10];
      *v56 = vrhaddq_u8(vrhaddq_u8(v52, *v3), *(v10 + v13));
      v56[1] = v55;
      v13 += 32;
      v52 = v54;
    }

    while (v13 != 2048);
  }

  else if (v6)
  {
    v11.i32[0] = 8 - v6;
    v12.i32[0] = v6;
    v67 = *v3;
    v68 = vdupq_lane_s8(v11, 0);
    v69 = vdupq_lane_s8(v12, 0);
    do
    {
      v70 = v3[1];
      v3 = (v3 + v4);
      v71 = *v3;
      v72 = &v75[v13 / 0x10];
      v73 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v3[1].i8, *v69.i8), *v70.i8, *v68.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v3[1], v69), v70, v68), 3uLL), *(v10 + v13 + 16));
      *v72 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v3->i8, *v69.i8), *v67.i8, *v68.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v3, v69), v67, v68), 3uLL), *(v10 + v13));
      v72[1] = v73;
      v13 += 32;
      v67 = v71;
    }

    while (v13 != 2048);
  }

  else
  {
    v14 = v3 + 1;
    do
    {
      v15 = &v75[v13 / 0x10];
      v16 = vrhaddq_u8(*v14, *(v10 + v13 + 16));
      *v15 = vrhaddq_u8(v14[-1], *(v10 + v13));
      v15[1] = v16;
      v13 += 32;
      v14 = (v14 + v4);
    }

    while (v13 != 2048);
  }

  return (vpx_variance32x64)(v75, 32, v7, v8, v9);
}

uint64_t vpx_sub_pixel_avg_variance64x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v113[257] = *MEMORY[0x277D85DE8];
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v83 = 0;
      v84 = v3 + 2;
      do
      {
        v85 = &v112[v83];
        v86 = vrhaddq_u8(*(v84 - 1), *(v84 - 15));
        *v85 = vrhaddq_u8(*(v84 - 2), *(v84 - 31));
        v85[1] = v86;
        v87 = vrhaddq_u8(*(v84 + 1), *(v84 + 17));
        v85[2] = vrhaddq_u8(*v84, *(v84 + 1));
        v85[3] = v87;
        v83 += 4;
        v84 = (v84 + v4);
      }

      while ((v83 * 16) != 2112);
      v88 = v112[0];
      v89 = v113;
      v90 = 112;
      do
      {
        v92 = v89[-1];
        v91 = *v89;
        v93 = v89[-2];
        v94 = v89[2];
        v95 = vrhaddq_u8(vrhaddq_u8(v89[-3], v89[1]), *(v10 + v90 - 96));
        v96 = &v111[v90];
        v96[-7] = vrhaddq_u8(vrhaddq_u8(v88, *v89), *(v10 + v90 - 112));
        v96[-6] = v95;
        v97 = vrhaddq_u8(vrhaddq_u8(v92, v89[3]), *(v10 + v90 - 64));
        v96[-5] = vrhaddq_u8(vrhaddq_u8(v93, v94), *(v10 + v90 - 80));
        v96[-4] = v97;
        v90 += 64;
        v89 += 4;
        v88 = v91;
      }

      while (v90 != 2160);
    }

    else
    {
      v18 = 0;
      v19 = v3 + 2;
      if (!v6)
      {
        do
        {
          v20 = &v112[v18 / 0x10];
          v21 = vrhaddq_u8(vrhaddq_u8(*(v19 - 1), *(v19 - 15)), *(v10 + v18 + 16));
          *v20 = vrhaddq_u8(vrhaddq_u8(*(v19 - 2), *(v19 - 31)), *(v10 + v18));
          v20[1] = v21;
          v22 = vrhaddq_u8(vrhaddq_u8(*(v19 + 1), *(v19 + 17)), *(v10 + v18 + 48));
          v20[2] = vrhaddq_u8(vrhaddq_u8(*v19, *(v19 + 1)), *(v10 + v18 + 32));
          v20[3] = v22;
          v18 += 64;
          v19 = (v19 + v4);
        }

        while (v18 != 2048);
        return (vpx_variance64x32)(v112, 64, v7, v8, v9);
      }

      do
      {
        v23 = &v112[v18 / 0x10];
        v24 = vrhaddq_u8(*(v19 - 1), *(v19 - 15));
        *v23 = vrhaddq_u8(*(v19 - 2), *(v19 - 31));
        v23[1] = v24;
        v25 = vrhaddq_u8(*v19, *(v19 + 1));
        v26 = vrhaddq_u8(*(v19 + 1), *(v19 + 17));
        v23[2] = v25;
        v23[3] = v26;
        v18 += 64;
        v19 = (v19 + v4);
      }

      while (v18 != 2112);
      v25.i32[0] = 8 - v6;
      v26.i32[0] = v6;
      v27 = v112[0];
      v28 = v113;
      v29 = 112;
      v30 = vdupq_lane_s8(*v25.i8, 0);
      v31 = vdupq_lane_s8(*v26.i8, 0);
      do
      {
        v33 = v28[-1];
        v32 = *v28;
        v34 = v28[2];
        v35 = v28[-2];
        v36 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28[1].i8, *v31.i8), *v28[-3].i8, *v30.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v28[1], v31), v28[-3], v30), 3uLL), *(v10 + v29 - 96));
        v37 = &v111[v29];
        v37[-7] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28->i8, *v31.i8), *v27.i8, *v30.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v28, v31), v27, v30), 3uLL), *(v10 + v29 - 112));
        v37[-6] = v36;
        v38 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28[3].i8, *v31.i8), *v33.i8, *v30.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v28[3], v31), v33, v30), 3uLL), *(v10 + v29 - 64));
        v37[-5] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v34.i8, *v31.i8), *v35.i8, *v30.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v34, v31), v35, v30), 3uLL), *(v10 + v29 - 80));
        v37[-4] = v38;
        v29 += 64;
        v28 += 4;
        v27 = v32;
      }

      while (v29 != 2160);
    }

    return (vpx_variance64x32)(v111, 64, v7, v8, v9);
  }

  v13 = 0;
  if (v5)
  {
    v11.i32[0] = 8 - v5;
    v12.i32[0] = v5;
    v39 = v3 + 2;
    v40 = vdupq_lane_s8(v11, 0);
    v41 = vdupq_lane_s8(v12, 0);
    if (v6 == 4)
    {
      do
      {
        v45 = &v112[v13 / 0x10];
        v46 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 - 15), *v41.i8), *(v39 - 1), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 - 15), v41), *(v39 - 1), v40), 3uLL);
        *v45 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 - 31), *v41.i8), *(v39 - 2), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 - 31), v41), *(v39 - 2), v40), 3uLL);
        v45[1] = v46;
        v47 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 + 17), *v41.i8), v39[1], *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 + 17), v41), *(v39 + 1), v40), 3uLL);
        v45[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 + 1), *v41.i8), *v39, *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 + 1), v41), *v39, v40), 3uLL);
        v45[3] = v47;
        v13 += 64;
        v39 = (v39 + v4);
      }

      while (v13 != 2112);
      v48 = v112[0];
      v49 = v113;
      v50 = 112;
      do
      {
        v52 = v49[-1];
        v51 = *v49;
        v53 = v49[-2];
        v54 = v49[2];
        v55 = vrhaddq_u8(vrhaddq_u8(v49[-3], v49[1]), *(v10 + v50 - 96));
        v56 = &v111[v50];
        v56[-7] = vrhaddq_u8(vrhaddq_u8(v48, *v49), *(v10 + v50 - 112));
        v56[-6] = v55;
        v57 = vrhaddq_u8(vrhaddq_u8(v52, v49[3]), *(v10 + v50 - 64));
        v56[-5] = vrhaddq_u8(vrhaddq_u8(v53, v54), *(v10 + v50 - 80));
        v56[-4] = v57;
        v50 += 64;
        v49 += 4;
        v48 = v51;
      }

      while (v50 != 2160);
    }

    else
    {
      if (!v6)
      {
        do
        {
          v42 = &v112[v13 / 0x10];
          v43 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 - 15), *v41.i8), *(v39 - 1), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 - 15), v41), *(v39 - 1), v40), 3uLL), *(v10 + v13 + 16));
          *v42 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 - 31), *v41.i8), *(v39 - 2), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 - 31), v41), *(v39 - 2), v40), 3uLL), *(v10 + v13));
          v42[1] = v43;
          v44 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 + 17), *v41.i8), v39[1], *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 + 17), v41), *(v39 + 1), v40), 3uLL), *(v10 + v13 + 48));
          v42[2] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 + 1), *v41.i8), *v39, *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 + 1), v41), *v39, v40), 3uLL), *(v10 + v13 + 32));
          v42[3] = v44;
          v13 += 64;
          v39 = (v39 + v4);
        }

        while (v13 != 2048);
        return (vpx_variance64x32)(v112, 64, v7, v8, v9);
      }

      do
      {
        v58 = &v112[v13 / 0x10];
        v59 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 - 15), *v41.i8), *(v39 - 1), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 - 15), v41), *(v39 - 1), v40), 3uLL);
        *v58 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 - 31), *v41.i8), *(v39 - 2), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 - 31), v41), *(v39 - 2), v40), 3uLL);
        v58[1] = v59;
        v60 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 + 17), *v41.i8), v39[1], *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 + 17), v41), *(v39 + 1), v40), 3uLL);
        v58[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v39 + 1), *v41.i8), *v39, *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v39 + 1), v41), *v39, v40), 3uLL);
        v58[3] = v60;
        v13 += 64;
        v39 = (v39 + v4);
      }

      while (v13 != 2112);
      v40.i32[0] = 8 - v6;
      v41.i32[0] = v6;
      v61 = v112[0];
      v62 = v113;
      v63 = 112;
      v64 = vdupq_lane_s8(*v40.i8, 0);
      v65 = vdupq_lane_s8(*v41.i8, 0);
      do
      {
        v67 = v62[-1];
        v66 = *v62;
        v68 = v62[2];
        v69 = v62[-2];
        v70 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v62[1].i8, *v65.i8), *v62[-3].i8, *v64.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v62[1], v65), v62[-3], v64), 3uLL), *(v10 + v63 - 96));
        v71 = &v111[v63];
        v71[-7] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v62->i8, *v65.i8), *v61.i8, *v64.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v62, v65), v61, v64), 3uLL), *(v10 + v63 - 112));
        v71[-6] = v70;
        v72 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v62[3].i8, *v65.i8), *v67.i8, *v64.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v62[3], v65), v67, v64), 3uLL), *(v10 + v63 - 64));
        v71[-5] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v68.i8, *v65.i8), *v69.i8, *v64.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v68, v65), v69, v64), 3uLL), *(v10 + v63 - 80));
        v71[-4] = v72;
        v63 += 64;
        v62 += 4;
        v61 = v66;
      }

      while (v63 != 2160);
    }

    return (vpx_variance64x32)(v111, 64, v7, v8, v9);
  }

  if (v6 == 4)
  {
    v74 = *v3;
    v73 = (v3 + 2);
    v75 = v74;
    do
    {
      v76 = v73[-1];
      v77 = *v73;
      v78 = v73[1];
      v73 = (v73 + v4);
      v79 = v73[-2];
      v80 = &v112[v13 / 0x10];
      v81 = vrhaddq_u8(vrhaddq_u8(v76, v73[-1]), *(v10 + v13 + 16));
      *v80 = vrhaddq_u8(vrhaddq_u8(v75, v79), *(v10 + v13));
      v80[1] = v81;
      v82 = vrhaddq_u8(vrhaddq_u8(v78, v73[1]), *(v10 + v13 + 48));
      v80[2] = vrhaddq_u8(vrhaddq_u8(v77, *v73), *(v10 + v13 + 32));
      v80[3] = v82;
      v13 += 64;
      v75 = v79;
    }

    while (v13 != 2048);
  }

  else if (v6)
  {
    v11.i32[0] = 8 - v6;
    v12.i32[0] = v6;
    v100 = *v3;
    v99 = (v3 + 2);
    v101 = v100;
    v102 = vdupq_lane_s8(v11, 0);
    v103 = vdupq_lane_s8(v12, 0);
    do
    {
      v104 = *v99[-2].i8;
      v105 = *v99->i8;
      v106 = *v99[2].i8;
      v99 = (v99 + v4);
      v107 = *v99[-4].i8;
      v108 = &v112[v13 / 0x10];
      v109 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v99[-2], *v103.i8), *v104.i8, *v102.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v99[-2].i8, v103), v104, v102), 3uLL), *(v10 + v13 + 16));
      *v108 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v107.i8, *v103.i8), *v101.i8, *v102.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v107, v103), v101, v102), 3uLL), *(v10 + v13));
      v108[1] = v109;
      v110 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v99[2], *v103.i8), *v106.i8, *v102.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v99[2].i8, v103), v106, v102), 3uLL), *(v10 + v13 + 48));
      v108[2] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v99, *v103.i8), *v105.i8, *v102.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v99->i8, v103), v105, v102), 3uLL), *(v10 + v13 + 32));
      v108[3] = v110;
      v13 += 64;
      v101 = v107;
    }

    while (v13 != 2048);
  }

  else
  {
    v14 = (v3 + 2);
    do
    {
      v15 = &v112[v13 / 0x10];
      v16 = vrhaddq_u8(v14[-1], *(v10 + v13 + 16));
      *v15 = vrhaddq_u8(v14[-2], *(v10 + v13));
      v15[1] = v16;
      v17 = vrhaddq_u8(v14[1], *(v10 + v13 + 48));
      v15[2] = vrhaddq_u8(*v14, *(v10 + v13 + 32));
      v15[3] = v17;
      v13 += 64;
      v14 = (v14 + v4);
    }

    while (v13 != 2048);
  }

  return (vpx_variance64x32)(v112, 64, v7, v8, v9);
}

uint64_t vpx_sub_pixel_avg_variance64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v125[513] = *MEMORY[0x277D85DE8];
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v40 = v3 + 2;
      v41 = v124;
      v42 = -65;
      do
      {
        v43 = vrhaddq_u8(*(v40 - 1), *(v40 - 15));
        *v41 = vrhaddq_u8(*(v40 - 2), *(v40 - 31));
        v41[1] = v43;
        v44 = vrhaddq_u8(*(v40 + 1), *(v40 + 17));
        v41[2] = vrhaddq_u8(*v40, *(v40 + 1));
        v41[3] = v44;
        v41 += 4;
        v40 = (v40 + v4);
        v45 = __CFADD__(v42++, 1);
      }

      while (!v45);
      v46 = v124[0];
      v47 = v125;
      v48 = 112;
      do
      {
        v50 = v47[-1];
        v49 = *v47;
        v51 = v47[-2];
        v52 = v47[2];
        v53 = vrhaddq_u8(vrhaddq_u8(v47[-3], v47[1]), *(v10 + v48 - 96));
        v54 = (&v123 + v48);
        v54[-7] = vrhaddq_u8(vrhaddq_u8(v46, *v47), *(v10 + v48 - 112));
        v54[-6] = v53;
        v55 = vrhaddq_u8(vrhaddq_u8(v50, v47[3]), *(v10 + v48 - 64));
        v54[-5] = vrhaddq_u8(vrhaddq_u8(v51, v52), *(v10 + v48 - 80));
        v54[-4] = v55;
        v48 += 64;
        v47 += 4;
        v46 = v49;
      }

      while (v48 != 4208);
    }

    else
    {
      if (!v6)
      {
        v18 = 0;
        v19 = v3 + 2;
        do
        {
          v20 = &v124[v18 / 0x10];
          v21 = vrhaddq_u8(vrhaddq_u8(*(v19 - 1), *(v19 - 15)), *(v10 + v18 + 16));
          *v20 = vrhaddq_u8(vrhaddq_u8(*(v19 - 2), *(v19 - 31)), *(v10 + v18));
          v20[1] = v21;
          v22 = vrhaddq_u8(vrhaddq_u8(*(v19 + 1), *(v19 + 17)), *(v10 + v18 + 48));
          v20[2] = vrhaddq_u8(vrhaddq_u8(*v19, *(v19 + 1)), *(v10 + v18 + 32));
          v20[3] = v22;
          v18 += 64;
          v19 = (v19 + v4);
        }

        while (v18 != 4096);
        return (vpx_variance64x64)(v124, 64, v7, v8, v9);
      }

      v69 = v3 + 2;
      v70 = v124;
      v71 = -65;
      do
      {
        v72 = vrhaddq_u8(*(v69 - 1), *(v69 - 15));
        *v70 = vrhaddq_u8(*(v69 - 2), *(v69 - 31));
        v70[1] = v72;
        v73 = vrhaddq_u8(*v69, *(v69 + 1));
        v74 = vrhaddq_u8(*(v69 + 1), *(v69 + 17));
        v70[2] = v73;
        v70[3] = v74;
        v70 += 4;
        v69 = (v69 + v4);
        v45 = __CFADD__(v71++, 1);
      }

      while (!v45);
      v73.i32[0] = 8 - v6;
      v74.i32[0] = v6;
      v75 = v124[0];
      v76 = v125;
      v77 = 112;
      v78 = vdupq_lane_s8(*v73.i8, 0);
      v79 = vdupq_lane_s8(*v74.i8, 0);
      do
      {
        v81 = v76[-1];
        v80 = *v76;
        v82 = v76[2];
        v83 = v76[-2];
        v84 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v76[1].i8, *v79.i8), *v76[-3].i8, *v78.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v76[1], v79), v76[-3], v78), 3uLL), *(v10 + v77 - 96));
        v85 = (&v123 + v77);
        v85[-7] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v76->i8, *v79.i8), *v75.i8, *v78.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v76, v79), v75, v78), 3uLL), *(v10 + v77 - 112));
        v85[-6] = v84;
        v86 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v76[3].i8, *v79.i8), *v81.i8, *v78.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v76[3], v79), v81, v78), 3uLL), *(v10 + v77 - 64));
        v85[-5] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v82.i8, *v79.i8), *v83.i8, *v78.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v82, v79), v83, v78), 3uLL), *(v10 + v77 - 80));
        v85[-4] = v86;
        v77 += 64;
        v76 += 4;
        v75 = v80;
      }

      while (v77 != 4208);
    }
  }

  else
  {
    if (!v5)
    {
      v13 = 0;
      if (v6 == 4)
      {
        v31 = *v3;
        v30 = (v3 + 2);
        v32 = v31;
        do
        {
          v33 = v30[-1];
          v34 = *v30;
          v35 = v30[1];
          v30 = (v30 + v4);
          v36 = v30[-2];
          v37 = &v124[v13 / 0x10];
          v38 = vrhaddq_u8(vrhaddq_u8(v33, v30[-1]), *(v10 + v13 + 16));
          *v37 = vrhaddq_u8(vrhaddq_u8(v32, v36), *(v10 + v13));
          v37[1] = v38;
          v39 = vrhaddq_u8(vrhaddq_u8(v35, v30[1]), *(v10 + v13 + 48));
          v37[2] = vrhaddq_u8(vrhaddq_u8(v34, *v30), *(v10 + v13 + 32));
          v37[3] = v39;
          v13 += 64;
          v32 = v36;
        }

        while (v13 != 4096);
      }

      else if (v6)
      {
        v11.i32[0] = 8 - v6;
        v12.i32[0] = v6;
        v57 = *v3;
        v56 = (v3 + 2);
        v58 = v57;
        v59 = vdupq_lane_s8(v11, 0);
        v60 = vdupq_lane_s8(v12, 0);
        do
        {
          v61 = *v56[-2].i8;
          v62 = *v56->i8;
          v63 = *v56[2].i8;
          v56 = (v56 + v4);
          v64 = *v56[-4].i8;
          v65 = &v124[v13 / 0x10];
          v66 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v56[-2], *v60.i8), *v61.i8, *v59.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v56[-2].i8, v60), v61, v59), 3uLL), *(v10 + v13 + 16));
          *v65 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v64.i8, *v60.i8), *v58.i8, *v59.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v64, v60), v58, v59), 3uLL), *(v10 + v13));
          v65[1] = v66;
          v67 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v56[2], *v60.i8), *v63.i8, *v59.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v56[2].i8, v60), v63, v59), 3uLL), *(v10 + v13 + 48));
          v65[2] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56, *v60.i8), *v62.i8, *v59.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v56->i8, v60), v62, v59), 3uLL), *(v10 + v13 + 32));
          v65[3] = v67;
          v13 += 64;
          v58 = v64;
        }

        while (v13 != 4096);
      }

      else
      {
        v14 = (v3 + 2);
        do
        {
          v15 = &v124[v13 / 0x10];
          v16 = vrhaddq_u8(v14[-1], *(v10 + v13 + 16));
          *v15 = vrhaddq_u8(v14[-2], *(v10 + v13));
          v15[1] = v16;
          v17 = vrhaddq_u8(v14[1], *(v10 + v13 + 48));
          v15[2] = vrhaddq_u8(*v14, *(v10 + v13 + 32));
          v15[3] = v17;
          v13 += 64;
          v14 = (v14 + v4);
        }

        while (v13 != 4096);
      }

      return (vpx_variance64x64)(v124, 64, v7, v8, v9);
    }

    if (v6 == 4)
    {
      v11.i32[0] = 8 - v5;
      v12.i32[0] = v5;
      v87 = v3 + 2;
      v88 = v124;
      v89 = -65;
      v90 = vdupq_lane_s8(v11, 0);
      v91 = vdupq_lane_s8(v12, 0);
      do
      {
        v92 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v87 - 15), *v91.i8), *(v87 - 1), *v90.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v87 - 15), v91), *(v87 - 1), v90), 3uLL);
        *v88 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v87 - 31), *v91.i8), *(v87 - 2), *v90.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v87 - 31), v91), *(v87 - 2), v90), 3uLL);
        v88[1] = v92;
        v93 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v87 + 17), *v91.i8), v87[1], *v90.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v87 + 17), v91), *(v87 + 1), v90), 3uLL);
        v88[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v87 + 1), *v91.i8), *v87, *v90.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v87 + 1), v91), *v87, v90), 3uLL);
        v88[3] = v93;
        v88 += 4;
        v87 = (v87 + v4);
        v45 = __CFADD__(v89++, 1);
      }

      while (!v45);
      v94 = v124[0];
      v95 = v125;
      v96 = 112;
      do
      {
        v98 = v95[-1];
        v97 = *v95;
        v99 = v95[-2];
        v100 = v95[2];
        v101 = vrhaddq_u8(vrhaddq_u8(v95[-3], v95[1]), *(v10 + v96 - 96));
        v102 = (&v123 + v96);
        v102[-7] = vrhaddq_u8(vrhaddq_u8(v94, *v95), *(v10 + v96 - 112));
        v102[-6] = v101;
        v103 = vrhaddq_u8(vrhaddq_u8(v98, v95[3]), *(v10 + v96 - 64));
        v102[-5] = vrhaddq_u8(vrhaddq_u8(v99, v100), *(v10 + v96 - 80));
        v102[-4] = v103;
        v96 += 64;
        v95 += 4;
        v94 = v97;
      }

      while (v96 != 4208);
    }

    else
    {
      if (!v6)
      {
        v23 = 0;
        v11.i32[0] = 8 - v5;
        v12.i32[0] = v5;
        v24 = v3 + 2;
        v25 = vdupq_lane_s8(v11, 0);
        v26 = vdupq_lane_s8(v12, 0);
        do
        {
          v27 = &v124[v23 / 0x10];
          v28 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v24 - 15), *v26.i8), *(v24 - 1), *v25.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v24 - 15), v26), *(v24 - 1), v25), 3uLL), *(v10 + v23 + 16));
          *v27 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v24 - 31), *v26.i8), *(v24 - 2), *v25.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v24 - 31), v26), *(v24 - 2), v25), 3uLL), *(v10 + v23));
          v27[1] = v28;
          v29 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v24 + 17), *v26.i8), v24[1], *v25.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v24 + 17), v26), *(v24 + 1), v25), 3uLL), *(v10 + v23 + 48));
          v27[2] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v24 + 1), *v26.i8), *v24, *v25.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v24 + 1), v26), *v24, v25), 3uLL), *(v10 + v23 + 32));
          v27[3] = v29;
          v23 += 64;
          v24 = (v24 + v4);
        }

        while (v23 != 4096);
        return (vpx_variance64x64)(v124, 64, v7, v8, v9);
      }

      v11.i32[0] = 8 - v5;
      v12.i32[0] = v5;
      v104 = v3 + 2;
      v105 = v124;
      v106 = -65;
      v107 = vdupq_lane_s8(v11, 0);
      v108 = vdupq_lane_s8(v12, 0);
      do
      {
        v109 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v104 - 15), *v108.i8), *(v104 - 1), *v107.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v104 - 15), v108), *(v104 - 1), v107), 3uLL);
        *v105 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v104 - 31), *v108.i8), *(v104 - 2), *v107.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v104 - 31), v108), *(v104 - 2), v107), 3uLL);
        v105[1] = v109;
        v110 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v104 + 17), *v108.i8), v104[1], *v107.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v104 + 17), v108), *(v104 + 1), v107), 3uLL);
        v105[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v104 + 1), *v108.i8), *v104, *v107.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v104 + 1), v108), *v104, v107), 3uLL);
        v105[3] = v110;
        v105 += 4;
        v104 = (v104 + v4);
        v45 = __CFADD__(v106++, 1);
      }

      while (!v45);
      v107.i32[0] = 8 - v6;
      v108.i32[0] = v6;
      v111 = v124[0];
      v112 = v125;
      v113 = 112;
      v114 = vdupq_lane_s8(*v107.i8, 0);
      v115 = vdupq_lane_s8(*v108.i8, 0);
      do
      {
        v117 = v112[-1];
        v116 = *v112;
        v118 = v112[2];
        v119 = v112[-2];
        v120 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v112[1].i8, *v115.i8), *v112[-3].i8, *v114.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v112[1], v115), v112[-3], v114), 3uLL), *(v10 + v113 - 96));
        v121 = (&v123 + v113);
        v121[-7] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v112->i8, *v115.i8), *v111.i8, *v114.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v112, v115), v111, v114), 3uLL), *(v10 + v113 - 112));
        v121[-6] = v120;
        v122 = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v112[3].i8, *v115.i8), *v117.i8, *v114.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v112[3], v115), v117, v114), 3uLL), *(v10 + v113 - 64));
        v121[-5] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v118.i8, *v115.i8), *v119.i8, *v114.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v118, v115), v119, v114), 3uLL), *(v10 + v113 - 80));
        v121[-4] = v122;
        v113 += 64;
        v112 += 4;
        v111 = v116;
      }

      while (v113 != 4208);
    }
  }

  return (vpx_variance64x64)(&v123, 64, v7, v8, v9);
}

uint64_t vpx_subtract_block_neon(uint64_t result, int a2, uint16x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, uint8x8_t *a7, uint64_t a8)
{
  if (a2 < 17)
  {
    if (a2 < 9)
    {
      if (a2 < 5)
      {
        do
        {
          v18.i32[0] = a5->i32[0];
          v18.i32[1] = *(a5->i32 + a6);
          v19.i32[0] = a7->i32[0];
          v19.i32[1] = *(a7->i32 + a8);
          v20 = vsubl_u8(v18, v19);
          a3->i64[0] = v20.i64[0];
          *(a3->i64 + 2 * a4) = vextq_s8(v20, v20, 8uLL).u64[0];
          a3 = (a3 + 4 * a4);
          a7 = (a7 + 2 * a8);
          a5 = (a5 + 2 * a6);
          result = (result - 2);
        }

        while (result);
      }

      else
      {
        do
        {
          *a3 = vsubl_u8(*a5, *a7);
          a7 = (a7 + a8);
          a5 = (a5 + a6);
          a3 = (a3 + 2 * a4);
          result = (result - 1);
        }

        while (result);
      }
    }

    else
    {
      v16 = a3 + 1;
      do
      {
        v17 = vsubl_high_u8(*a5->i8, *a7->i8);
        v16[-1] = vsubl_u8(*a5, *a7);
        *v16 = v17;
        a7 = (a7 + a8);
        a5 = (a5 + a6);
        v16 = (v16 + 2 * a4);
        result = (result - 1);
      }

      while (result);
    }
  }

  else
  {
    v8 = a3 + 2;
    do
    {
      v9 = v8;
      v10 = 2;
      do
      {
        v11 = *a5[v10 - 2].i8;
        v12 = *a5[v10].i8;
        v13 = *a7[v10 - 2].i8;
        v14 = *a7[v10].i8;
        v9[-2] = vsubl_u8(*v11.i8, *v13.i8);
        v9[-1] = vsubl_high_u8(v11, v13);
        *v9 = vsubl_u8(*v12.i8, *v14.i8);
        v9[1] = vsubl_high_u8(v12, v14);
        v9 += 4;
        v15 = v10 * 8 + 16;
        v10 += 4;
      }

      while (v15 < a2);
      a7 = (a7 + a8);
      a5 = (a5 + a6);
      v8 = (v8 + 2 * a4);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

uint64_t vpx_sum_squares_2d_i16_neon(int16x4_t *a1, int a2, int a3)
{
  if (a3 == 4)
  {
    return vaddlvq_u32(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*(a1 + 2 * a2), *(a1 + 2 * a2)), *a1, *a1), *(a1 + 4 * a2), *(a1 + 4 * a2)), *(a1 + 6 * a2), *(a1 + 6 * a2)));
  }

  v4 = 8 * a2;
  v5 = 14 * a2;
  v6 = 12 * a2;
  v7 = 10 * a2;
  v8 = a2;
  v9 = 6 * a2;
  v10 = 4 * a2;
  v11 = 0uLL;
  v12 = a3;
  v13 = 2 * a2;
  do
  {
    v14 = a3;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = a1;
    do
    {
      v18 = *v17->i8;
      v19 = *&v17->i8[v13];
      v20 = *&v17->i8[v10];
      v21 = *&v17->i8[v9];
      v22 = *v17[v8].i8;
      v23 = *&v17->i8[v7];
      v24 = *&v17->i8[v6];
      v25 = *&v17->i8[v5];
      v15 = vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(v15, *v18.i8, *v18.i8), *v19.i8, *v19.i8), *v20.i8, *v20.i8), *v21.i8, *v21.i8), *v22.i8, *v22.i8), *v23.i8, *v23.i8), *v24.i8, *v24.i8), *v25.i8, *v25.i8);
      v16 = vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(v16, v18, v18), v19, v19), v20, v20), v21, v21), v22, v22), v23, v23), v24, v24), v25, v25);
      v17 += 2;
      v14 -= 8;
    }

    while (v14);
    v11 = vpadalq_u32(vpadalq_u32(v11, v15), v16);
    a1 = (a1 + 2 * v4);
    v12 -= 8;
  }

  while (v12);
  return vaddvq_s64(v11);
}

uint64_t vp8_decoder_create_threads(uint64_t result)
{
  *(result + 10832) = 0;
  *(result + 10848) = 0;
  v1 = *(result + 10836);
  if (v1 >= *(result + 10216))
  {
    v1 = *(result + 10216);
  }

  if (v1 < 2)
  {
    return result;
  }

  v2 = result;
  if (v1 >= 8)
  {
    v1 = 8;
  }

  *(result + 10832) = 1;
  v3 = v1 - 1;
  *(result + 10844) = v3;
  v4 = 8 * v3;
  v5 = malloc_type_malloc(v4 + 23, 0xD93B561uLL);
  if (v5 && (v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0, *(v6 - 8) = v5, v6))
  {
    bzero(((v5 + 23) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v2 + 10944) = v6;
  }

  else
  {
    *(v2 + 10944) = 0;
    vpx_internal_error(v2 + 4384, 2, "Failed to allocate (pbi->h_decoding_thread)");
  }

  v7 = 4 * *(v2 + 10844);
  v8 = malloc_type_malloc(v7 + 23, 0xD93B561uLL);
  if (v8 && (v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0, *(v9 - 8) = v8, v9))
  {
    bzero(((v8 + 23) & 0xFFFFFFFFFFFFFFF0), v7);
    v10 = (v2 + 10952);
    *(v2 + 10952) = v9;
  }

  else
  {
    v10 = (v2 + 10952);
    *(v2 + 10952) = 0;
    vpx_internal_error(v2 + 4384, 2, "Failed to allocate (pbi->h_event_start_decoding)");
  }

  v11 = (4352 * *(v2 + 10844)) | 0x27;
  if (v11 > 0x10000000000 || (v12 = malloc_type_malloc(v11, 0xD93B561uLL)) == 0)
  {
    v15 = (v2 + 10928);
    *(v2 + 10928) = 0;
    goto LABEL_19;
  }

  v13 = v12;
  v14 = ((v12 + 39) & 0xFFFFFFFFFFFFFFE0);
  *(v14 - 1) = v13;
  *(v2 + 10928) = v14;
  if (!v14)
  {
    v15 = (v2 + 10928);
LABEL_19:
    vpx_internal_error(v2 + 4384, 2, "Failed to allocate (pbi->mb_row_di)");
    v14 = *v15;
  }

  bzero(v14, 4352 * *(v2 + 10844));
  v16 = 24 * *(v2 + 10844);
  v17 = malloc_type_malloc(v16 + 23, 0xD93B561uLL);
  if (v17 && (v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0, *(v18 - 8) = v17, v18))
  {
    bzero(((v17 + 23) & 0xFFFFFFFFFFFFFFF0), v16);
    *(v2 + 10936) = v18;
  }

  else
  {
    *(v2 + 10936) = 0;
    vpx_internal_error(v2 + 4384, 2, "Failed to allocate (pbi->de_thread_data)");
  }

  v19 = MEMORY[0x277D85F48];
  result = semaphore_create(*MEMORY[0x277D85F48], (v2 + 10960), 0, 0);
  if (result)
  {
    result = vpx_internal_error(v2 + 4384, 2, "Failed to initialize semaphore");
  }

  if (*(v2 + 10844))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      result = semaphore_create(*v19, (*v10 + v23), 0, 0);
      if (result)
      {
LABEL_31:
        *(v2 + 10848) = v24;
        if (v24 == *(v2 + 10844))
        {
          return result;
        }

        goto LABEL_36;
      }

      vp8_setup_block_dptrs((*(v2 + 10928) + v20));
      v25 = (*(v2 + 10936) + v21);
      *v25 = v24;
      v26 = *(v2 + 10928) + v20;
      v25[1] = v2;
      v25[2] = v26;
      result = pthread_create((*(v2 + 10944) + v22), 0, thread_decoding_proc, v25);
      if (result)
      {
        break;
      }

      ++v24;
      v23 += 4;
      v22 += 8;
      v21 += 24;
      v20 += 4352;
      if (v24 >= *(v2 + 10844))
      {
        goto LABEL_31;
      }
    }

    result = semaphore_destroy(*v19, *(*v10 + v23));
    *(v2 + 10848) = v24;
    if (v24 == *(v2 + 10844))
    {
      return result;
    }

LABEL_36:
    if (!v24)
    {
      semaphore_destroy(*v19, *(v2 + 10960));
    }

    return vpx_internal_error(v2 + 4384, 2, "Failed to create threads");
  }

  else
  {
    *(v2 + 10848) = 0;
  }

  return result;
}

uint64_t thread_decoding_proc(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = 0;
  v5 = 0;
  while (atomic_load_explicit((v2 + 10832), memory_order_acquire))
  {
    if (!MEMORY[0x2743DB140](*(*(v2 + 10952) + 4 * v1)))
    {
      if (!atomic_load_explicit((v2 + 10832), memory_order_acquire))
      {
        return 0;
      }

      *(v3 + 3960) = &v5;
      if (setjmp((v3 + 4160)))
      {
        *(v3 + 4156) = 0;
        MEMORY[0x2743DB130](*(v2 + 10960));
      }

      else
      {
        *(v3 + 4156) = 1;
        mt_decode_mb_rows(v2, v3, v1 + 1);
        *(v3 + 4156) = 0;
      }
    }
  }

  return 0;
}

void vp8mt_de_alloc_temp_buffers(void *a1, int a2)
{
  v4 = a1[1359];
  if (v4)
  {
    free(*(v4 - 8));
  }

  a1[1359] = 0;
  v5 = a1[1360];
  if (v5)
  {
    if (a2 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = *(v5 + v6);
        if (v7)
        {
          free(*(v7 - 8));
          v5 = a1[1360];
        }

        *(v5 + v6) = 0;
        v6 += 8;
      }

      while (8 * a2 != v6);
    }

    free(*(v5 - 8));
    a1[1360] = 0;
  }

  v8 = a1[1361];
  if (v8)
  {
    if (a2 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(v8 + v9);
        if (v10)
        {
          free(*(v10 - 8));
          v8 = a1[1361];
        }

        *(v8 + v9) = 0;
        v9 += 8;
      }

      while (8 * a2 != v9);
    }

    free(*(v8 - 8));
    a1[1361] = 0;
  }

  v11 = a1[1362];
  if (v11)
  {
    if (a2 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(v11 + v12);
        if (v13)
        {
          free(*(v13 - 8));
          v11 = a1[1362];
        }

        *(v11 + v12) = 0;
        v12 += 8;
      }

      while (8 * a2 != v12);
    }

    free(*(v11 - 8));
    a1[1362] = 0;
  }

  v14 = a1[1363];
  if (v14)
  {
    if (a2 >= 1)
    {
      v15 = 0;
      do
      {
        v16 = *(v14 + v15);
        if (v16)
        {
          free(*(v16 - 8));
          v14 = a1[1363];
        }

        *(v14 + v15) = 0;
        v15 += 8;
      }

      while (8 * a2 != v15);
    }

    free(*(v14 - 8));
    a1[1363] = 0;
  }

  v17 = a1[1364];
  if (v17)
  {
    if (a2 >= 1)
    {
      v18 = 0;
      do
      {
        v19 = *(v17 + v18);
        if (v19)
        {
          free(*(v19 - 8));
          v17 = a1[1364];
        }

        *(v17 + v18) = 0;
        v18 += 8;
      }

      while (8 * a2 != v18);
    }

    free(*(v17 - 8));
    a1[1364] = 0;
  }

  v20 = a1[1365];
  if (v20)
  {
    if (a2 >= 1)
    {
      v21 = 0;
      v22 = 8 * a2;
      do
      {
        v23 = *(v20 + v21);
        if (v23)
        {
          free(*(v23 - 8));
          v20 = a1[1365];
        }

        *(v20 + v21) = 0;
        v21 += 8;
      }

      while (v22 != v21);
    }

    free(*(v20 - 8));
    a1[1365] = 0;
  }
}

void vp8mt_alloc_temp_buffers(uint64_t a1, int a2, int a3)
{
  if (!atomic_load_explicit((a1 + 10832), memory_order_acquire))
  {
    return;
  }

  vp8mt_de_alloc_temp_buffers(a1, a3);
  v5 = (a2 + 15) & 0xFFFFFFF0;
  if (v5 > 639)
  {
    if (v5 > 0x500)
    {
      if (v5 > 0xA00)
      {
        v6 = 32;
      }

      else
      {
        v6 = 16;
      }
    }

    else
    {
      v6 = 8;
    }
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 10868) = v6;
  v7 = 4 * *(a1 + 7428) + 23;
  if (v7 > 0x10000000000 || (v8 = malloc_type_malloc(v7, 0xD93B561uLL)) == 0)
  {
    v9 = (a1 + 10872);
    *(a1 + 10872) = 0;
LABEL_15:
    vpx_internal_error(a1 + 4384, 2, "Failed to allocate pbi->mt_current_mb_col");
    v11 = *(a1 + 7428);
    if (v11 < 1)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v9 = (a1 + 10872);
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v10 - 8) = v8;
  *(a1 + 10872) = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 7428);
  if (v11 < 1)
  {
    goto LABEL_18;
  }

LABEL_16:
  v12 = *v9;
  v13 = v11;
  do
  {
    *v12++ = 0;
    --v13;
  }

  while (v13);
LABEL_18:
  if ((v11 & 0x80000000) == 0)
  {
    v14 = 8 * v11;
    v15 = malloc_type_malloc(8 * v11 + 23, 0xD93B561uLL);
    if (v15)
    {
      v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v16 - 8) = v15;
      if (v16)
      {
        bzero(((v15 + 23) & 0xFFFFFFFFFFFFFFF0), v14);
        v17 = (a1 + 10880);
        *(a1 + 10880) = v16;
        v18 = *(a1 + 7428);
        if (v18 <= 0)
        {
          goto LABEL_33;
        }

        goto LABEL_24;
      }
    }
  }

  v17 = (a1 + 10880);
  *(a1 + 10880) = 0;
  vpx_internal_error(a1 + 4384, 2, "Failed to allocate (pbi->mt_yabove_row)");
  v18 = *(a1 + 7428);
  if (v18 > 0)
  {
LABEL_24:
    v19 = 0;
    v20 = v5 + 64;
    v21 = v20 + 23;
    do
    {
      if (v21 >= 0x10000000001)
      {
        v22 = *v17;
      }

      else
      {
        v24 = malloc_type_malloc(v21, 0xD93B561uLL);
        v22 = *v17;
        if (v24)
        {
          v25 = v24;
          v23 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(v23 - 1) = v25;
          *(v22 + 8 * v19) = v23;
          if (v23)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      *(v22 + 8 * v19) = 0;
LABEL_27:
      vpx_internal_error(a1 + 4384, 2, "Failed to allocate pbi->mt_yabove_row[i]");
      v23 = *(*v17 + 8 * v19);
LABEL_28:
      bzero(v23, v20);
      ++v19;
      v18 = *(a1 + 7428);
    }

    while (v19 < v18);
  }

LABEL_33:
  if (v18 <= 0x2000000000)
  {
    v26 = 8 * v18;
    v27 = malloc_type_malloc(8 * v18 + 23, 0xD93B561uLL);
    if (v27)
    {
      v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v28 - 8) = v27;
      if (v28)
      {
        bzero(((v27 + 23) & 0xFFFFFFFFFFFFFFF0), v26);
        v29 = (a1 + 10888);
        *(a1 + 10888) = v28;
        v30 = v5 >> 1;
        v31 = *(a1 + 7428);
        if (v31 <= 0)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }
    }
  }

  v29 = (a1 + 10888);
  *(a1 + 10888) = 0;
  vpx_internal_error(a1 + 4384, 2, "Failed to allocate (pbi->mt_uabove_row)");
  v30 = v5 >> 1;
  v31 = *(a1 + 7428);
  if (v31 > 0)
  {
LABEL_39:
    v32 = 0;
    v33 = v30 + 32;
    v34 = v33 + 23;
    do
    {
      if (v34 >= 0x10000000001)
      {
        v35 = *v29;
      }

      else
      {
        v37 = malloc_type_malloc(v34, 0xD93B561uLL);
        v35 = *v29;
        if (v37)
        {
          v38 = v37;
          v36 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(v36 - 1) = v38;
          *(v35 + 8 * v32) = v36;
          if (v36)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }
      }

      *(v35 + 8 * v32) = 0;
LABEL_42:
      vpx_internal_error(a1 + 4384, 2, "Failed to allocate pbi->mt_uabove_row[i]");
      v36 = *(*v29 + 8 * v32);
LABEL_43:
      bzero(v36, v33);
      ++v32;
      v31 = *(a1 + 7428);
    }

    while (v32 < v31);
  }

LABEL_48:
  if (v31 <= 0x2000000000)
  {
    v39 = 8 * v31;
    v40 = malloc_type_malloc(8 * v31 + 23, 0xD93B561uLL);
    if (v40)
    {
      v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v41 - 8) = v40;
      if (v41)
      {
        bzero(((v40 + 23) & 0xFFFFFFFFFFFFFFF0), v39);
        v42 = (a1 + 10896);
        *(a1 + 10896) = v41;
        v43 = *(a1 + 7428);
        if (v43 <= 0)
        {
          goto LABEL_63;
        }

        goto LABEL_54;
      }
    }
  }

  v42 = (a1 + 10896);
  *(a1 + 10896) = 0;
  vpx_internal_error(a1 + 4384, 2, "Failed to allocate (pbi->mt_vabove_row)");
  v43 = *(a1 + 7428);
  if (v43 > 0)
  {
LABEL_54:
    v44 = 0;
    v45 = v30 + 32;
    v46 = v45 + 23;
    do
    {
      if (v46 >= 0x10000000001)
      {
        v47 = *v42;
      }

      else
      {
        v49 = malloc_type_malloc(v46, 0xD93B561uLL);
        v47 = *v42;
        if (v49)
        {
          v50 = v49;
          v48 = ((v49 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(v48 - 1) = v50;
          *(v47 + 8 * v44) = v48;
          if (v48)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }
      }

      *(v47 + 8 * v44) = 0;
LABEL_57:
      vpx_internal_error(a1 + 4384, 2, "Failed to allocate pbi->mt_vabove_row[i]");
      v48 = *(*v42 + 8 * v44);
LABEL_58:
      bzero(v48, v45);
      ++v44;
      v43 = *(a1 + 7428);
    }

    while (v44 < v43);
  }

LABEL_63:
  if (v43 <= 0x2000000000 && (v51 = 8 * v43, (v52 = malloc_type_malloc(8 * v43 + 23, 0xD93B561uLL)) != 0) && (v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF0, *(v53 - 8) = v52, v53))
  {
    bzero(((v52 + 23) & 0xFFFFFFFFFFFFFFF0), v51);
    v54 = (a1 + 10904);
    *(a1 + 10904) = v53;
    v55 = *(a1 + 7428);
    if (v55 < 1)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v54 = (a1 + 10904);
    *(a1 + 10904) = 0;
    vpx_internal_error(a1 + 4384, 2, "Failed to allocate (pbi->mt_yleft_col)");
    v55 = *(a1 + 7428);
    if (v55 < 1)
    {
      goto LABEL_74;
    }
  }

  for (i = 0; i < v55; ++i)
  {
    while (1)
    {
      v57 = malloc_type_malloc(0x27uLL, 0xD93B561uLL);
      if (v57)
      {
        v58 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF0);
        *(v58 - 1) = v57;
        if (v58)
        {
          break;
        }
      }

      *(*v54 + 8 * i) = 0;
      vpx_internal_error(a1 + 4384, 2, "Failed to allocate pbi->mt_yleft_col[i]");
      ++i;
      v55 = *(a1 + 7428);
      if (i >= v55)
      {
        goto LABEL_74;
      }
    }

    *v58 = 0;
    *(((v57 + 23) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
    *(*v54 + 8 * i) = v58;
    v55 = *(a1 + 7428);
  }

LABEL_74:
  if (v55 > 0x2000000000 || (v59 = 8 * v55, (v60 = malloc_type_malloc(8 * v55 + 23, 0xD93B561uLL)) == 0) || (v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF0, *(v61 - 8) = v60, !v61))
  {
    v62 = (a1 + 10912);
    *(a1 + 10912) = 0;
    vpx_internal_error(a1 + 4384, 2, "Failed to allocate (pbi->mt_uleft_col)");
    v63 = *(a1 + 7428);
    if (v63 < 1)
    {
      goto LABEL_85;
    }

LABEL_80:
    for (j = 0; j < v63; ++j)
    {
      while (1)
      {
        v65 = malloc_type_malloc(0x1FuLL, 0xD93B561uLL);
        if (v65)
        {
          v66 = ((v65 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(v66 - 1) = v65;
          if (v66)
          {
            break;
          }
        }

        *(*v62 + 8 * j) = 0;
        vpx_internal_error(a1 + 4384, 2, "Failed to allocate pbi->mt_uleft_col[i]");
        ++j;
        v63 = *(a1 + 7428);
        if (j >= v63)
        {
          goto LABEL_85;
        }
      }

      *v66 = 0;
      *(*v62 + 8 * j) = v66;
      v63 = *(a1 + 7428);
    }

    goto LABEL_85;
  }

  bzero(((v60 + 23) & 0xFFFFFFFFFFFFFFF0), v59);
  v62 = (a1 + 10912);
  *(a1 + 10912) = v61;
  v63 = *(a1 + 7428);
  if (v63 >= 1)
  {
    goto LABEL_80;
  }

LABEL_85:
  if (v63 <= 0x2000000000 && (v67 = 8 * v63, (v68 = malloc_type_malloc(8 * v63 + 23, 0xD93B561uLL)) != 0) && (v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF0, *(v69 - 8) = v68, v69))
  {
    bzero(((v68 + 23) & 0xFFFFFFFFFFFFFFF0), v67);
    v70 = (a1 + 10920);
    *(a1 + 10920) = v69;
    if (*(a1 + 7428) < 1)
    {
      return;
    }
  }

  else
  {
    v70 = (a1 + 10920);
    *(a1 + 10920) = 0;
    vpx_internal_error(a1 + 4384, 2, "Failed to allocate (pbi->mt_vleft_col)");
    if (*(a1 + 7428) < 1)
    {
      return;
    }
  }

  v71 = 0;
  do
  {
    while (1)
    {
      v72 = malloc_type_malloc(0x1FuLL, 0xD93B561uLL);
      if (v72)
      {
        v73 = ((v72 + 23) & 0xFFFFFFFFFFFFFFF0);
        *(v73 - 1) = v72;
        if (v73)
        {
          break;
        }
      }

      *(*v70 + 8 * v71) = 0;
      vpx_internal_error(a1 + 4384, 2, "Failed to allocate pbi->mt_vleft_col[i]");
      if (++v71 >= *(a1 + 7428))
      {
        return;
      }
    }

    *v73 = 0;
    *(*v70 + 8 * v71++) = v73;
  }

  while (v71 < *(a1 + 7428));
}

void vp8_decoder_remove_threads(uint64_t a1)
{
  if (atomic_load_explicit((a1 + 10832), memory_order_acquire))
  {
    atomic_store(0, (a1 + 10832));
    LODWORD(v2) = *(a1 + 10848);
    v3 = MEMORY[0x277D85F48];
    if (v2 >= 1)
    {
      v4 = 0;
      do
      {
        MEMORY[0x2743DB130](*(*(a1 + 10952) + 4 * v4));
        pthread_join(*(*(a1 + 10944) + 8 * v4++), 0);
        v2 = *(a1 + 10848);
      }

      while (v4 < v2);
      if (v2 >= 1)
      {
        for (i = 0; i < v2; ++i)
        {
          semaphore_destroy(*v3, *(*(a1 + 10952) + 4 * i));
          v2 = *(a1 + 10848);
        }
      }
    }

    if (v2)
    {
      semaphore_destroy(*v3, *(a1 + 10960));
    }

    v6 = *(a1 + 10944);
    if (v6)
    {
      free(*(v6 - 8));
    }

    *(a1 + 10944) = 0;
    v7 = *(a1 + 10952);
    if (v7)
    {
      free(*(v7 - 8));
    }

    *(a1 + 10952) = 0;
    v8 = *(a1 + 10928);
    if (v8)
    {
      free(*(v8 - 8));
    }

    *(a1 + 10928) = 0;
    v9 = *(a1 + 10936);
    if (v9)
    {
      free(*(v9 - 8));
    }

    *(a1 + 10936) = 0;
    v10 = *(a1 + 7428);

    vp8mt_de_alloc_temp_buffers(a1, v10);
  }
}

uint64_t vp8mt_decode_mb_rows(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 7908);
  v5 = *(a1 + 4352);
  if (!v4)
  {
    memset((~v5[4] + *(v5 + 7)), 127, *v5 + 5);
    memset((~v5[9] + *(v5 + 8)), 127, v5[5] + 5);
    memset((~v5[9] + *(v5 + 9)), 127, v5[5] + 5);
    v10 = *(a1 + 10844);
    if (v10 < 1)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  memset((**(a1 + 10880) + 31), 127, *v5 + 5);
  memset((**(a1 + 10888) + 15), 127, (*v5 >> 1) + 5);
  memset((**(a1 + 10896) + 15), 127, (*v5 >> 1) + 5);
  v6 = *(a1 + 7428);
  if (v6 > 1)
  {
    v7 = 1;
    do
    {
      *(*(*(a1 + 10880) + 8 * v7) + 31) = -127;
      *(*(*(a1 + 10888) + 8 * v7) + 15) = -127;
      *(*(*(a1 + 10896) + 8 * v7++) + 15) = -127;
    }

    while (v7 < *(a1 + 7428));
    v6 = *(a1 + 7428);
  }

  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 10904) + 8 * v8);
      *v9 = 0x8181818181818181;
      v9[1] = 0x8181818181818181;
      **(*(a1 + 10912) + 8 * v8) = 0x8181818181818181;
      **(*(a1 + 10920) + 8 * v8++) = 0x8181818181818181;
    }

    while (v8 < *(a1 + 7428));
  }

  vp8_loop_filter_frame_init(a1 + 4384, a1, v4);
  v10 = *(a1 + 10844);
  if (v10 >= 1)
  {
LABEL_12:
    v11 = *(a1 + 10928);
    v12 = 4352 * v10;
    v13 = 0;
    do
    {
      v14 = v11 + v13;
      *(v14 + 4024) = *(a2 + 4024);
      *(v14 + 4032) = *(a2 + 4032);
      *(v14 + 4048) = *(a2 + 4048);
      *(v14 + 3884) = *(a1 + 7412);
      v15 = *(a2 + 3584);
      v16 = *(a2 + 3600);
      v17 = *(a2 + 3616);
      *(v14 + 3632) = *(a2 + 3632);
      *(v14 + 3616) = v17;
      *(v14 + 3600) = v16;
      *(v14 + 3584) = v15;
      v18 = *(a2 + 3552);
      *(v14 + 3568) = *(a2 + 3568);
      *(v14 + 3552) = v18;
      v19 = *(a2 + 3648);
      v20 = *(a2 + 3664);
      v21 = *(a2 + 3680);
      *(v14 + 3696) = *(a2 + 3696);
      *(v14 + 3680) = v21;
      *(v14 + 3664) = v20;
      *(v14 + 3648) = v19;
      v22 = *(a2 + 3712);
      *(v14 + 3728) = *(a2 + 3728);
      *(v14 + 3712) = v22;
      v23 = *(a2 + 3744);
      v24 = *(a2 + 3760);
      v25 = *(a2 + 3776);
      *(v14 + 3792) = *(a2 + 3792);
      *(v14 + 3776) = v25;
      *(v14 + 3760) = v24;
      *(v14 + 3744) = v23;
      v26 = *(a2 + 3808);
      v27 = *(a2 + 3824);
      v28 = *(a2 + 3840);
      *(v14 + 3856) = *(a2 + 3856);
      *(v14 + 3840) = v28;
      *(v14 + 3824) = v27;
      *(v14 + 3808) = v26;
      *(v14 + 3968) = *(a2 + 3968);
      *(v14 + 3971) = *(a2 + 3971);
      *(v11 + v13 + 3975) = *(a2 + 3975);
      *(v11 + v13 + 3989) = *(a2 + 3989);
      *(v11 + v13 + 3997) = *(a2 + 3997);
      *(v11 + v13 + 3983) = *(a2 + 3983);
      *(v14 + 4056) = a1 + 10256;
      v29 = *(a2 + 2048);
      *(v14 + 2064) = *(a2 + 2064);
      *(v14 + 2048) = v29;
      v30 = *(a2 + 2016);
      *(v14 + 2032) = *(a2 + 2032);
      *(v14 + 2016) = v30;
      v31 = *(a2 + 2080);
      *(v14 + 2096) = *(a2 + 2096);
      *(v14 + 2080) = v31;
      v32 = *(a2 + 2112);
      *(v14 + 2128) = *(a2 + 2128);
      *(v14 + 2112) = v32;
      if (*(a1 + 7452))
      {
        v33 = -8;
      }

      else
      {
        v33 = -1;
      }

      *(v14 + 3544) = v33;
      v13 += 4352;
    }

    while (v12 != v13);
  }

LABEL_17:
  if (*(a1 + 7428) >= 1)
  {
    v34 = 0;
    do
    {
      atomic_store(0xFFFFFFFF, (*(a1 + 10872) + 4 * v34++));
    }

    while (v34 < *(a1 + 7428));
  }

  if (*(a1 + 10844))
  {
    v35 = 0;
    do
    {
      v36 = v35;
      MEMORY[0x2743DB130](*(*(a1 + 10952) + 4 * v35));
      v35 = v36 + 1;
    }

    while (v36 + 1 < *(a1 + 10844));
  }

  if (setjmp((a2 + 4160)))
  {
    *(a2 + 4156) = 0;
    *(a2 + 4064) = 1;
    if (*(a1 + 10844))
    {
      v37 = 0;
      do
      {
        v38 = v37;
        MEMORY[0x2743DB140](*(a1 + 10960));
        v37 = v38 + 1;
      }

      while ((v38 + 1) < *(a1 + 10844));
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a2 + 4156) = 1;
    mt_decode_mb_rows(a1, a2, 0);
    *(a2 + 4156) = 0;
    if (*(a1 + 10844) != -1)
    {
      v40 = 0;
      do
      {
        v41 = v40;
        MEMORY[0x2743DB140](*(a1 + 10960));
        v40 = v41 + 1;
      }

      while (v41 + 1 < (*(a1 + 10844) + 1));
    }

    return 0;
  }
}

void mt_decode_mb_rows(uint64_t a1, uint64_t a2, int a3)
{
  v233[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 10868);
  v215 = *(a1 + 7432) + v4;
  v5 = *(a1 + 10212);
  v6 = *(a1 + 4352);
  v7 = *(a1 + 4360);
  v8 = *(v6 + 16);
  v9 = *(v6 + 36);
  v217 = *(v7 + 14);
  v218 = *(v7 + 9);
  v149 = v7;
  v150 = v6;
  v10 = v7[37];
  v216[0] = 0;
  v216[1] = v10;
  v11 = *(a1 + 4368);
  v219 = *(v11 + 56);
  v220 = *(v11 + 72);
  LODWORD(v11) = *(v11 + 148);
  v12 = *(a1 + 4376);
  v221 = *(v12 + 56);
  v222 = *(v12 + 72);
  LODWORD(v12) = *(v12 + 148);
  v216[2] = v11;
  v216[3] = v12;
  v204 = *(v6 + 64);
  v205 = *(v6 + 56);
  v203 = *(v6 + 72);
  *(a2 + 3888) = a3 != 0;
  LODWORD(v12) = *(a1 + 7436);
  *(a2 + 3872) = *(a1 + 7488) + 76 * v12 * a3;
  *(a2 + 3880) = v12;
  v13 = *(a1 + 7428);
  if (v13 <= a3)
  {
    if (*(a1 + 10844) + a3 + 1 >= v13)
    {
      goto LABEL_108;
    }

    return;
  }

  v156 = 1 << v5;
  v196 = a1 + 7508;
  v155 = a1 + 10256;
  v153 = 8 * v9;
  v154 = 16 * v8;
  v199 = v4 - 1;
  v193 = (a2 + 3608);
  v212 = (a2 + 3896);
  v213 = (a2 + 2016);
  v214 = a2 + 1984;
  v186 = a2 + 2144;
  v198 = a1 + 7896;
  v197 = a1 + 7704;
  v195 = 15 * v8;
  v194 = a1 + 7572;
  v180 = a1 + 7768;
  v192 = a1 + 7636;
  v191 = a1 + 7700;
  v175 = 14 * v8;
  v172 = 6 * v9 + 7;
  v185 = -2 * v8;
  v158 = 12 * v8;
  v151 = 4 * v9;
  v157 = (a2 + 2080);
  v178 = (a2 + 2048);
  v176 = 2 * v8;
  v188 = 4 * v8;
  v169 = 6 * v8;
  v170 = 5 * v8;
  v187 = 8 * v8;
  v167 = 9 * v8;
  v168 = 7 * v8;
  v166 = 10 * v8;
  v171 = 3 * v8;
  v164 = 12 * v8;
  v165 = 11 * v8;
  v162 = v9 + 7;
  v163 = 13 * v8;
  v173 = 4 * v9 + 7;
  v174 = 2 * v9 + 7;
  v161 = v174 + v9;
  v160 = v173 + v9;
  v189 = v9;
  v190 = 7 * v9;
  v159 = 7 * v9 + 7;
  v184 = -v8;
  v201 = v8;
  v202 = v4;
  do
  {
    v28 = a3;
    *(a2 + 4056) = v155 + 48 * (a3 % v156);
    v29 = *(a1 + 10872);
    if (a3 <= 0)
    {
      v30 = &v215;
    }

    else
    {
      v30 = (v29 + 4 * a3 - 4);
    }

    v31 = a3 * v154;
    v32 = a3 * v153;
    *(a2 + 3952) = *(a1 + 7960);
    v33 = *(a2 + 3960);
    *(v33 + 8) = 0;
    *v33 = 0;
    *(a2 + 3892) = 0;
    *(a2 + 4012) = -128 * a3;
    *(a2 + 4016) = (*(a1 + 7428) + ~a3) << 7;
    if (!*(a1 + 7908))
    {
      v126 = v205 + v31;
      v127 = v126 - 1;
      *(a2 + 3920) = v126 - 1;
      v128 = v204 + v32;
      v129 = v128 - 1;
      *(a2 + 3928) = v128 - 1;
      v130 = v203 + v32;
      v131 = v130 - 1;
      *(a2 + 3936) = v130 - 1;
      v132 = *(a2 + 3728);
      *(a2 + 3896) = v126 - v132;
      v133 = *(a2 + 3748);
      *(a2 + 3904) = v128 - v133;
      *(a2 + 3912) = v130 - v133;
      *(a2 + 3944) = v132;
      *(a2 + 3948) = v133;
      *(v126 - 1) = -127;
      *(v127 + v132) = -127;
      *(v127 + 2 * v132) = -127;
      *(v127 + 3 * v132) = -127;
      *(v127 + 4 * v132) = -127;
      *(v127 + 5 * v132) = -127;
      *(v127 + 6 * v132) = -127;
      *(v127 + 7 * v132) = -127;
      v134 = 2 * v133;
      *(v127 + 8 * v132) = -127;
      *(v127 + 9 * v132) = -127;
      *(v127 + 10 * v132) = -127;
      *(v127 + 11 * v132) = -127;
      *(v127 + 12 * v132) = -127;
      *(v127 + 13 * v132) = -127;
      *(v127 + 14 * v132) = -127;
      *(v127 - v132 + 16 * v132) = -127;
      v135 = 3 * v133;
      v136 = 4 * v133;
      v137 = 6 * v133;
      *(v128 - 1) = -127;
      *(v129 + v133) = -127;
      *(v129 + v134) = -127;
      *(v129 + v135) = -127;
      *(v129 + v136) = -127;
      v138 = 5 * v133;
      *(v129 + v138) = -127;
      *(v129 + v137) = -127;
      v139 = 7 * v133;
      *(v129 + v139) = -127;
      *(v130 - 1) = -127;
      *(v131 + v133) = -127;
      *(v131 + v134) = -127;
      *(v131 + v135) = -127;
      *(v131 + v136) = -127;
      *(v131 + v138) = -127;
      *(v131 + v137) = -127;
      *(v131 + v139) = -127;
      v200 = (v29 + 4 * v28);
      v152 = v28;
      if (*(a1 + 7432) < 1)
      {
        goto LABEL_101;
      }

LABEL_10:
      v34 = 0;
      v35 = v31;
      v36 = v32;
      v206 = v30;
      while (1)
      {
        if (!((v34 - 1) % v4))
        {
          atomic_store(v34 - 1, v200);
        }

        if (v28 && (v199 & v34) == 0)
        {
            ;
          }
        }

        *(a2 + 4004) = -128 * v34;
        *(a2 + 4008) = (*(a1 + 7432) + ~v34) << 7;
        *(a2 + 3768) = v205 + v35;
        *(a2 + 3776) = v204 + v36;
        *(a2 + 3784) = v203 + v36;
        v37 = *(a2 + 3872);
        v38 = v37[2];
        v39 = *(a2 + 4064) | v216[v37[2]];
        *(a2 + 4064) = v39;
        if (v39)
        {
          if (v28 < *(a1 + 7428))
          {
            do
            {
              v40 = v28;
              v41 = *(a1 + 10872);
              atomic_store(*(a1 + 7432) + v4, (v41 + 4 * v28));
              v28 += *(a1 + 10844) + 1;
            }

            while (v28 < *(a1 + 7428));
            v200 = (v41 + 4 * v40);
          }

          vpx_internal_error(a2 + 4068, 7, "Corrupted reference frame", v149);
          v37 = *(a2 + 3872);
          v38 = v37[2];
        }

        if (v38)
        {
          v42 = &v216[6 * v38 + 4];
          v43 = v42[1];
          *(a2 + 3608) = *v42 + v35;
          *(a2 + 3616) = v43 + v36;
          *(a2 + 3624) = v42[2] + v36;
          if (v37[9])
          {
            goto LABEL_25;
          }
        }

        else
        {
          *v193 = 0;
          v193[1] = 0;
          *(a2 + 3624) = 0;
          if (v37[9])
          {
LABEL_25:
            v44 = *(a2 + 3952);
            v45 = *(a2 + 3960);
            *v44 = 0;
            *v45 = 0;
            v37 = *(a2 + 3872);
            if (!v37[3])
            {
              *(v45 + 8) = 0;
              *(v44 + 8) = 0;
              v37 = *(a2 + 3872);
            }

            goto LABEL_30;
          }
        }

        if ((*(*(a2 + 4056) + 24) - 0x40000000) <= 0xC0000040)
        {
          v46 = vp8_decode_mb_tokens(a1, a2) == 0;
          v37 = *(a2 + 3872);
          v37[9] = v46;
        }

LABEL_30:
        v47 = *v37;
        if (*(a2 + 3968))
        {
          vp8_mb_init_dequantizer(a1, a2);
          v37 = *(a2 + 3872);
        }

        v210 = v36;
        v211 = v35;
        v207 = v47;
        if (v37[2])
        {
          vp8_build_inter_predictors_mb(a2);
          goto LABEL_59;
        }

        v48 = *(a2 + 3904);
        v49 = *(a2 + 3912);
        v50 = *(a2 + 3928);
        v51 = *(a2 + 3936);
        v52 = *(a2 + 3948);
        v53 = *(a2 + 3776);
        v54 = v37[1];
        v231[0] = *v50;
        v223 = *v51;
        v231[1] = v50[v52];
        v224 = v51[v52];
        v55 = *(a2 + 3784);
        v231[2] = v50[2 * v52];
        v225 = v51[2 * v52];
        v232 = v50[3 * v52];
        v226 = v51[3 * v52];
        LOBYTE(v233[0]) = v50[4 * v52];
        v56 = *(a2 + 3748);
        v227 = v51[4 * v52];
        BYTE1(v233[0]) = v50[5 * v52];
        v228 = v51[5 * v52];
        BYTE2(v233[0]) = v50[6 * v52];
        v229 = v51[6 * v52];
        v52 *= 7;
        BYTE3(v233[0]) = v50[v52];
        v230 = v51[v52];
        if (v54)
        {
          v57 = (&pred + 16 * v54);
        }

        else
        {
          v57 = &dc_pred[4 * *(a2 + 3892) + 2 * *(a2 + 3888)];
        }

        v58 = v57[1];
        v58(v53, v56, v48, v231);
        v58(v55, v56, v49, &v223);
        if (v47 == 4)
        {
          if (*(*(a2 + 3872) + 9))
          {
            *v214 = 0;
            *(v214 + 8) = 0;
            *(v214 + 24) = 0;
            *(v214 + 16) = 0;
          }

          v59 = 0;
          v60 = *(a2 + 3728);
          v61 = *(a2 + 3896);
          v62 = *(a2 + 3768) - v60 + 16;
          v63 = *(v61 + 16);
          *(v62 + 4 * v60) = v63;
          *(v62 + 8 * v60) = v63;
          *(v62 + 12 * v60) = *(v61 + 16);
          v64 = v186;
          while (1)
          {
            v69 = *(v64 + 32);
            v70 = (*(a2 + 3768) + v69);
            v71 = *(*(a2 + 3872) + 4 * v59 + 12);
            if (v59 <= 3 && *(a1 + 7908))
            {
              v72 = (v212->i64[0] + v69);
              if ((v59 & 3) != 0)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v72 = (v70 - v60);
              if ((v59 & 3) != 0)
              {
                goto LABEL_51;
              }
            }

            if (*(a1 + 7908))
            {
              v73 = (*(a2 + 3920) + v59);
              v74 = 1;
              if (v59 == 8)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

LABEL_51:
            v73 = v70 - 1;
            v74 = v60;
            if (v59 == 8)
            {
              goto LABEL_53;
            }

LABEL_52:
            v75 = v72;
            if ((v59 & 7) == 4)
            {
LABEL_53:
              v75 = v72;
              if (*(a1 + 7908))
              {
                v75 = (*(a2 + 3920) + v59);
              }
            }

            v76 = *(v75 - 1);
            v223 = *v73;
            v77 = v74;
            v224 = v73[v74];
            v78 = 2 * v74;
            v225 = v73[v78];
            v226 = v73[v78 + v77];
            v233[0] = *v72;
            v232 = v76;
            (*(&pred_0 + v71))(v70, v60, v233, &v223);
            if (*(v214 + v59))
            {
              v79 = *v64;
              if (*(v214 + v59) < 2)
              {
                v65 = vdupq_n_s16(((v213->i16[0] * v79->i16[0]) + 4) >> 3);
                v66.i32[0] = *v70;
                v66.i32[1] = *(v70 + v60);
                v67 = (v70 + v60 + v60);
                v68 = vqmovun_s16(vaddw_u8(v65, v66));
                *v70 = v68.i32[0];
                *(v70 + v60) = v68.i32[1];
                v68.i32[0] = *v67;
                v68.i32[1] = *(v67 + v60);
                *v65.i8 = vqmovun_s16(vaddw_u8(v65, v68));
                *v67 = v65.i32[0];
                *(v67 + v60) = v65.i32[1];
                **v64 = 0;
              }

              else
              {
                vp8_dequant_idct_add_neon(v79, v213, v70, v60);
              }
            }

            ++v59;
            v64 += 56;
            if (v59 == 16)
            {
              goto LABEL_59;
            }
          }
        }

        vp8_build_intra_predictors_mby_s(a2, *(a2 + 3896), *(a2 + 3920), *(a2 + 3944), *(a2 + 3768), *(a2 + 3728));
LABEL_59:
        if (!*(*(a2 + 3872) + 9))
        {
          if (v207 != 4)
          {
            v80 = v213;
            if (v207 != 9)
            {
              v81 = *(a2 + 3488);
              if (*(a2 + 2008) < 2)
              {
                v87 = *(a2 + 2080) * *v81;
                **(a2 + 3496) = v87;
                v88 = (v87 + 3) >> 3;
                *(a2 + 384) = v88;
                *(a2 + 416) = v88;
                *(a2 + 448) = v88;
                *(a2 + 480) = v88;
                *(a2 + 512) = v88;
                *(a2 + 544) = v88;
                *(a2 + 576) = v88;
                *(a2 + 608) = v88;
                *(a2 + 640) = v88;
                *(a2 + 672) = v88;
                *(a2 + 704) = v88;
                *(a2 + 736) = v88;
                *(a2 + 768) = v88;
                *(a2 + 800) = v88;
                *(a2 + 832) = v88;
                *(a2 + 864) = v88;
                v86 = 4;
              }

              else
              {
                v234 = vld2q_s16(v81);
                v82 = v157;
                v235 = vld2q_s16(v82);
                v236.val[0] = vmulq_s16(v235.val[0], v234.val[0]);
                v236.val[1] = vmulq_s16(v235.val[1], v234.val[1]);
                v83 = *(a2 + 3496);
                vst2q_s16(v83, v236);
                v84 = *(a2 + 3496);
                v234.val[1] = *(v84 + 16);
                v235.val[0].i64[0] = vextq_s8(v234.val[1], v234.val[1], 8uLL).u64[0];
                *v235.val[1].i8 = vadd_s16(*v235.val[0].i8, *v84);
                v236.val[0].i64[0] = vextq_s8(*v84, *v84, 8uLL).u64[0];
                *v236.val[1].i8 = vadd_s16(*v234.val[1].i8, *v236.val[0].i8);
                *v234.val[0].i8 = vsub_s16(*v84, *v235.val[0].i8);
                *v234.val[1].i8 = vsub_s16(*v236.val[0].i8, *v234.val[1].i8);
                *v235.val[0].i8 = vadd_s16(*v235.val[1].i8, *v236.val[1].i8);
                *v235.val[1].i8 = vsub_s16(*v235.val[1].i8, *v236.val[1].i8);
                *v236.val[0].i8 = vadd_s16(*v234.val[0].i8, *v234.val[1].i8);
                *v234.val[0].i8 = vsub_s16(*v234.val[0].i8, *v234.val[1].i8);
                *v234.val[1].i8 = vzip1_s32(*v235.val[0].i8, *v235.val[1].i8);
                *v236.val[1].i8 = vzip1_s32(*v236.val[0].i8, *v234.val[0].i8);
                v85 = vtrn1_s16(*v234.val[1].i8, *v236.val[1].i8);
                *v234.val[1].i8 = vtrn2_s16(*v234.val[1].i8, *v236.val[1].i8);
                *v235.val[0].i8 = vzip2_s32(*v235.val[0].i8, *v235.val[1].i8);
                *v234.val[0].i8 = vzip2_s32(*v236.val[0].i8, *v234.val[0].i8);
                *v235.val[1].i8 = vtrn1_s16(*v235.val[0].i8, *v234.val[0].i8);
                *v234.val[0].i8 = vtrn2_s16(*v235.val[0].i8, *v234.val[0].i8);
                *v235.val[0].i8 = vadd_s16(v85, *v234.val[0].i8);
                *v236.val[0].i8 = vadd_s16(*v234.val[1].i8, *v235.val[1].i8);
                v235.val[0].u64[1] = vsub_s16(v85, *v234.val[0].i8);
                v236.val[0].u64[1] = vsub_s16(*v234.val[1].i8, *v235.val[1].i8);
                v235.val[1].i64[0] = 0x3000300030003;
                v235.val[1].i64[1] = 0x3000300030003;
                v234.val[0] = vshrq_n_s16(vaddq_s16(vaddq_s16(v236.val[0], v235.val[0]), v235.val[1]), 3uLL);
                *(a2 + 384) = v234.val[0].i16[0];
                v234.val[1] = vshrq_n_s16(vaddq_s16(vsubq_s16(v235.val[0], v236.val[0]), v235.val[1]), 3uLL);
                *(a2 + 416) = v234.val[0].i16[4];
                *(a2 + 480) = v234.val[1].i16[4];
                *(a2 + 512) = v234.val[0].i16[1];
                *(a2 + 544) = v234.val[0].i16[5];
                *(a2 + 576) = v234.val[1].i16[1];
                *(a2 + 608) = v234.val[1].i16[5];
                *(a2 + 640) = v234.val[0].i16[2];
                *(a2 + 672) = v234.val[0].i16[6];
                *(a2 + 704) = v234.val[1].i16[2];
                *(a2 + 736) = v234.val[1].i16[6];
                *(a2 + 768) = v234.val[0].i16[3];
                *(a2 + 800) = v234.val[0].i16[7];
                *(a2 + 832) = v234.val[1].i16[3];
                *(a2 + 448) = v234.val[1].i16[0];
                *(a2 + 864) = v234.val[1].i16[7];
                v81 = *(a2 + 3488);
                v86 = 32;
              }

              bzero(v81, v86);
              v80 = v178;
            }

            vp8_dequant_idct_add_y_block_neon((a2 + 384), v80, *(a2 + 3768), *(a2 + 3728), v214);
          }

          vp8_dequant_idct_add_uv_block_neon((a2 + 896), (a2 + 2112), *(a2 + 3776), *(a2 + 3784), *(a2 + 3748), (a2 + 2000));
        }

        *(a2 + 3892) = 1;
        *(a2 + 4064) |= (*(*(a2 + 4056) + 24) - 65) < 0x3FFFFFBF;
        *v212 = vaddq_s64(*v212, xmmword_273BC4E30);
        *(a2 + 3912) += 8;
        if (*(a1 + 7908))
        {
          v208 = 0;
          v89 = *(a2 + 3872);
          v90 = *v89;
          if (v90 != 4 && v90 != 9)
          {
            v208 = v89[9] != 0;
          }

          v91 = *(v197 + 16 * v89[11] + 4 * v89[2] + *(v198 + *v89));
          if (v28 != *(a1 + 7428) - 1)
          {
            v92 = 8 * v28 + 8;
            *(*(*(a1 + 10880) + v92) + 16 * v34 + 32) = *(*(a2 + 3768) + v195);
            *(*(*(a1 + 10888) + v92) + 8 * v34 + 16) = *(*(a2 + 3776) + v190);
            *(*(*(a1 + 10896) + v92) + 8 * v34 + 16) = *(*(a2 + 3784) + v190);
          }

          if (v34 == *(a1 + 7432) - 1 || *(*(a2 + 3872) + 78))
          {
            if (v91)
            {
              goto LABEL_77;
            }
          }

          else
          {
            **(*(a1 + 10904) + 8 * v28) = *(*(a2 + 3768) + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 1) = *(*(a2 + 3768) + v201 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 2) = *(*(a2 + 3768) + v176 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 3) = *(*(a2 + 3768) + v171 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 4) = *(*(a2 + 3768) + v188 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 5) = *(*(a2 + 3768) + v170 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 6) = *(*(a2 + 3768) + v169 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 7) = *(*(a2 + 3768) + v168 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 8) = *(*(a2 + 3768) + v187 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 9) = *(*(a2 + 3768) + v167 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 10) = *(*(a2 + 3768) + v166 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 11) = *(*(a2 + 3768) + v165 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 12) = *(*(a2 + 3768) + v164 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 13) = *(*(a2 + 3768) + v163 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 14) = *(*(a2 + 3768) + v175 + 15);
            *(*(*(a1 + 10904) + 8 * v28) + 15) = *(*(a2 + 3768) + v195 + 15);
            **(*(a1 + 10912) + 8 * v28) = *(*(a2 + 3776) + 7);
            **(*(a1 + 10920) + 8 * v28) = *(*(a2 + 3784) + 7);
            *(*(*(a1 + 10912) + 8 * v28) + 1) = *(*(a2 + 3776) + v162);
            *(*(*(a1 + 10920) + 8 * v28) + 1) = *(*(a2 + 3784) + v162);
            *(*(*(a1 + 10912) + 8 * v28) + 2) = *(*(a2 + 3776) + v174);
            *(*(*(a1 + 10920) + 8 * v28) + 2) = *(*(a2 + 3784) + v174);
            *(*(*(a1 + 10912) + 8 * v28) + 3) = *(*(a2 + 3776) + v161);
            *(*(*(a1 + 10920) + 8 * v28) + 3) = *(*(a2 + 3784) + v161);
            *(*(*(a1 + 10912) + 8 * v28) + 4) = *(*(a2 + 3776) + v173);
            *(*(*(a1 + 10920) + 8 * v28) + 4) = *(*(a2 + 3784) + v173);
            *(*(*(a1 + 10912) + 8 * v28) + 5) = *(*(a2 + 3776) + v160);
            *(*(*(a1 + 10920) + 8 * v28) + 5) = *(*(a2 + 3784) + v160);
            *(*(*(a1 + 10912) + 8 * v28) + 6) = *(*(a2 + 3776) + v172);
            *(*(*(a1 + 10920) + 8 * v28) + 6) = *(*(a2 + 3784) + v172);
            *(*(*(a1 + 10912) + 8 * v28) + 7) = *(*(a2 + 3776) + v159);
            *(*(*(a1 + 10920) + 8 * v28) + 7) = *(*(a2 + 3784) + v159);
            if (v91)
            {
LABEL_77:
              if (*(a1 + 7504))
              {
                if (v34)
                {
                  vp8_loop_filter_mbvs_neon(*(a2 + 3768), v201, (v196 + v91));
                }

                if (!v208)
                {
                  vp8_loop_filter_bvs_neon(*(a2 + 3768), v201, (v194 + v91));
                }

                if (v28 >= 1)
                {
                  v93 = *(a2 + 3768);
                  v94 = (v196 + v91);
                  v95 = vld1q_dup_s8(v94);
                  v96 = *(v93 + v185);
                  v97 = (v93 + v185 + v201);
                  v98 = *v97;
                  v99 = &v97->i8[v201];
                  v100 = *(v99 + v201);
                  v101 = vabdq_u8(v98, *v99);
                  v102.i64[0] = 0x8080808080808080;
                  v102.i64[1] = 0x8080808080808080;
                  v103 = veorq_s8(v98, v102);
                  v104 = veorq_s8(*v99, v102);
                  v105 = vcgtq_u8(vqaddq_u8(vqaddq_u8(v101, v101), vshrq_n_u8(vabdq_u8(v96, v100), 1uLL)), v95);
                  v106 = vqsubq_s8(veorq_s8(v96, v102), veorq_s8(v100, v102));
                  v107.i64[0] = 0x303030303030303;
                  v107.i64[1] = 0x303030303030303;
                  v108 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v104.i8, 0x303030303030303), *v103.i8, 0x303030303030303), *v106.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v104, v107), v103, v107), v106)), v105);
                  v100.i64[0] = 0x404040404040404;
                  v100.i64[1] = 0x404040404040404;
                  *v93 = veorq_s8(vqsubq_s8(v104, vshrq_n_s8(vqaddq_s8(v108, v100), 3uLL)), v102);
                  *(v93 + v184) = veorq_s8(vqaddq_s8(v103, vshrq_n_s8(vqaddq_s8(v108, v107), 3uLL)), v102);
                }

                if (!v208)
                {
                  vp8_loop_filter_bhs_neon(*(a2 + 3768), v201, (v194 + v91));
                }
              }

              else
              {
                v109 = *(v180 + (*(a1 + 7412) << 6) + v91);
                if (v34)
                {
                  v110 = *(a2 + 3776);
                  v181 = *(a2 + 3784);
                  v111 = *(v196 + v91);
                  v112 = *(v192 + v91);
                  v113 = *(v191 + v109);
                  vp8_mbloop_filter_vertical_edge_y_neon(*(a2 + 3768), v201, v111, v112, v113);
                  if (v110)
                  {
                    vp8_mbloop_filter_vertical_edge_uv_neon(v110, v189, v111, v112, v113, v181);
                  }
                }

                if (!v208)
                {
                  v114 = *(a2 + 3768);
                  v179 = *(a2 + 3776);
                  v177 = *(a2 + 3784);
                  v115 = *(v194 + v91);
                  v116 = *(v192 + v91);
                  v117 = *(v191 + v109);
                  vp8_loop_filter_vertical_edge_y_neon(v114 + 4, v201, v115, v116, v117);
                  vp8_loop_filter_vertical_edge_y_neon(v114 + 8, v201, v115, v116, v117);
                  vp8_loop_filter_vertical_edge_y_neon(v114 + 12, v201, v115, v116, v117);
                  if (v179)
                  {
                    vp8_loop_filter_vertical_edge_uv_neon(v179 + 4, v189, v115, v116, v117, v177 + 4);
                  }
                }

                if (v28 >= 1)
                {
                  v118 = *(a2 + 3776);
                  v182 = *(a2 + 3784);
                  v119 = *(v192 + v91);
                  v120 = *(v191 + v109);
                  v121 = *(v196 + v91);
                  vp8_mbloop_filter_horizontal_edge_y_neon(*(a2 + 3768), v201, v121, v119, v120);
                  if (v118)
                  {
                    vp8_mbloop_filter_horizontal_edge_uv_neon(v118, v189, v121, v119, v120, v182);
                  }
                }

                if (!v208)
                {
                  v122 = *(a2 + 3768);
                  v209 = *(a2 + 3776);
                  v183 = *(a2 + 3784);
                  v123 = *(v194 + v91);
                  v124 = *(v192 + v91);
                  v125 = *(v191 + v109);
                  vp8_loop_filter_horizontal_edge_y_neon(v122 + v188, v201, v123, v124, v125);
                  vp8_loop_filter_horizontal_edge_y_neon(v122 + v187, v201, v123, v124, v125);
                  vp8_loop_filter_horizontal_edge_y_neon(v122 + v158, v201, v123, v124, v125);
                  if (v209)
                  {
                    vp8_loop_filter_horizontal_edge_uv_neon(v209 + v151, v189, v123, v124, v125, v183 + v151);
                  }
                }
              }
            }
          }
        }

        else
        {
          *(a2 + 3920) = vaddq_s64(*(a2 + 3920), xmmword_273BC4E30);
          *(a2 + 3936) += 8;
        }

        v35 = v211 + 16;
        v36 = v210 + 8;
        *(a2 + 3872) += 76;
        *(a2 + 3952) += 9;
        ++v34;
        v4 = v202;
        v30 = v206;
        if (v34 >= *(a1 + 7432))
        {
          goto LABEL_102;
        }
      }
    }

    *(a2 + 3896) = *(*(a1 + 10880) + 8 * a3) + 32;
    *(a2 + 3904) = *(*(a1 + 10888) + 8 * a3) + 16;
    *(a2 + 3912) = *(*(a1 + 10896) + 8 * a3) + 16;
    *(a2 + 3920) = *(*(a1 + 10904) + 8 * a3);
    *(a2 + 3928) = *(*(a1 + 10912) + 8 * a3);
    *(a2 + 3936) = *(*(a1 + 10920) + 8 * a3);
    *(a2 + 3944) = 0x100000001;
    v200 = (v29 + 4 * a3);
    v152 = a3;
    if (*(a1 + 7432) >= 1)
    {
      goto LABEL_10;
    }

LABEL_101:
    LODWORD(v34) = 0;
LABEL_102:
    if (*(a1 + 7908))
    {
      if (v28 != *(a1 + 7428) - 1)
      {
        v140 = *v149;
        v141 = v140 + 32;
        v142 = v140 >> 1;
        v143 = v142 + 16;
        v144 = 8 * v28 + 8;
        v145 = v142 + 15;
        *(*(*(a1 + 10880) + v144) + v141) = *(*(*(a1 + 10880) + v144) + v140 + 31);
        *(*(*(a1 + 10888) + v144) + v143) = *(*(*(a1 + 10888) + v144) + v142 + 15);
        *(*(*(a1 + 10896) + v144) + v143) = *(*(*(a1 + 10896) + v144) + v142 + 15);
        *(*(*(a1 + 10880) + v144) + v140 + 32 + 1) = *(*(*(a1 + 10880) + v144) + v140 + 31);
        v146 = v142 + 17;
        *(*(*(a1 + 10888) + v144) + v146) = *(*(*(a1 + 10888) + v144) + v142 + 15);
        *(*(*(a1 + 10896) + v144) + v146) = *(*(*(a1 + 10896) + v144) + v142 + 15);
        *(*(*(a1 + 10880) + v144) + v140 + 32 + 2) = *(*(*(a1 + 10880) + v144) + v140 + 31);
        v147 = v142 + 18;
        *(*(*(a1 + 10888) + v144) + v147) = *(*(*(a1 + 10888) + v144) + v142 + 15);
        *(*(*(a1 + 10896) + v144) + v147) = *(*(*(a1 + 10896) + v144) + v142 + 15);
        *(*(*(a1 + 10880) + v144) + v141 + 3) = *(*(*(a1 + 10880) + v144) + v140 + 31);
        v148 = *(*(a1 + 10888) + v144);
        LOBYTE(v141) = *(v148 + v142 + 15);
        v142 += 19;
        *(v148 + v142) = v141;
        *(*(*(a1 + 10896) + v144) + v142) = *(*(*(a1 + 10896) + v144) + v145);
      }
    }

    else
    {
      v15 = (*(a2 + 3768) + 14 * *(v150 + 16));
      v16 = 6 * *(v150 + 36);
      v17 = (*(a2 + 3776) + v16);
      v18 = (*(a2 + 3784) + v16);
      v15[16] = v15[15];
      v17[8] = v17[7];
      v19 = v17 + 8;
      v18[8] = v18[7];
      v20 = v18 + 8;
      v15[17] = v15[15];
      v17[9] = v17[7];
      v18[9] = v18[7];
      v15[18] = v15[15];
      v17[10] = v17[7];
      v18[10] = v18[7];
      v15[19] = v15[15];
      v17[11] = v17[7];
      v18[11] = v18[7];
      v21 = &v15[*(v150 + 16) + 16];
      v22 = *(v150 + 36);
      v23 = &v19[v22];
      v24 = &v20[v22];
      *v21 = *(v21 - 1);
      *v23 = *(v23 - 1);
      *v24 = *(v24 - 1);
      v21[1] = *(v21 - 1);
      v23[1] = *(v23 - 1);
      v24[1] = *(v24 - 1);
      v21[2] = *(v21 - 1);
      v23[2] = *(v23 - 1);
      v24[2] = *(v24 - 1);
      v21[3] = *(v21 - 1);
      v23[3] = *(v23 - 1);
      v24[3] = *(v24 - 1);
    }

    atomic_store(v34 + v4, v200);
    v25 = *(a1 + 10844);
    v26 = *(a2 + 3872) + 76 * (v25 * *(a2 + 3880));
    *(a2 + 3888) = 1;
    *(a2 + 3872) = v26 + 76;
    a3 = v28 + v25 + 1;
    v27 = *(a1 + 7428);
  }

  while (a3 < v27);
  if (v25 + v152 + 1 >= v27)
  {
LABEL_108:
    MEMORY[0x2743DB130](*(a1 + 10960));
  }
}

void vp8_tokenize_mb(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, int8x16_t a5)
{
  v6 = *(a2 + 8096);
  v7 = *v6;
  v8 = 1;
  if (v7 == 4 || v7 == 9)
  {
    v10 = 0;
    v11 = 24;
  }

  else
  {
    a5.i16[0] = 257;
    a5.i8[2] = 1;
    a5.i8[3] = 1;
    a5.i8[4] = 1;
    a5.i8[5] = 1;
    a5.i8[6] = 1;
    a5.i8[7] = 1;
    a5.i8[8] = 1;
    a5.i8[9] = 1;
    a5.i8[10] = 1;
    a5.i8[11] = 1;
    a5.i8[12] = 1;
    a5.i8[13] = 1;
    a5.i8[14] = 1;
    a5.i8[15] = 1;
    v8 = (vmaxvq_u8(vcgtq_s8(*(a2 + 6208), a5)) & 1) == 0;
    v10 = 16;
    v11 = 25;
  }

  v12 = v11 - (v10 | v11 & 1);
  v13 = v10 + v12;
  v14 = v10 | 0x1840;
  v15 = 0;
  do
  {
    a5.i32[0] = *(a2 + v14);
    a5 = vmovl_u8(*a5.i8);
    a5.i32[0] &= 0xFF00FFu;
    a5.i16[2] = a5.u8[4];
    a5.i16[3] = a5.u8[6];
    *a5.i8 = vceqz_s16(*a5.i8);
    v15 = vorn_s8(v15, *a5.i8);
    v14 += 4;
    v12 -= 4;
  }

  while (v12);
  if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v15, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
  {
    v8 = 0;
  }

  if (v11)
  {
    v16 = v11 - v13;
    v17 = (v13 + a2 + 6208);
    do
    {
      if (*v17++)
      {
        v8 = 0;
      }

      --v16;
    }

    while (v16);
  }

  v6[9] = v8;
  if (v8)
  {
    if (*(a1 + 111088))
    {
      if (v7 == 9 || v7 == 4)
      {
        v20 = 8;
      }

      else
      {
        v20 = 9;
      }

      bzero(*(a2 + 8176), v20);
      bzero(*(a2 + 8184), v20);
      ++*(a2 + 8840);
    }

    else
    {

      vp8_stuff_mb(a1, a2, a3);
    }

    return;
  }

  if (v7 != 9 && v7 != 4)
  {
    v25 = *a3;
    v26 = *(a2 + 8176);
    v27 = *(a2 + 8184);
    v28 = *(a2 + 6232);
    v29 = *(v27 + 8) + *(v26 + 8);
    if (!*(a2 + 6232))
    {
      *(v25 + 10) = 11;
      *v25 = a1 + 11 * v29 + 113021;
      ++*(a2 + 48 * v29 + 10040);
      v47 = (v25 + 16);
LABEL_41:
      *a3 = v47;
      *(v27 + 8) = v28;
      *(v26 + 8) = v28;
      v22 = a2;
      v23 = a3;
      v24 = 0;
      goto LABEL_42;
    }

    v30 = *(a2 + 7712);
    v31 = &dct_value_tokens[2 * *v30 + 4096];
    *(v25 + 8) = dct_value_tokens[2 * *v30 + 4097];
    v32 = *v31;
    v33 = a1 + 113021;
    *v25 = a1 + 113021 + 11 * v29;
    v34 = a2 + 9996;
    v35 = a2 + 9996 + 48 * v29;
    v36 = *(v35 + 4 * v32);
    *(v25 + 10) = v32;
    *(v35 + 4 * v32) = v36 + 1;
    *(v25 + 11) = 0;
    v37 = vp8_prev_token_class[v32];
    if (v28 < 2)
    {
      v47 = (v25 + 16);
      v28 = 1u;
    }

    else
    {
      v38 = 0;
      v39 = &byte_273BC5541;
      v40 = &dword_273BC5564;
      do
      {
        v41 = v25 + v38;
        v43 = *v40++;
        v42 = v43;
        LODWORD(v43) = *v39++;
        v44 = &dct_value_tokens[2 * v30[v42] + 4096];
        *(v41 + 24) = v44[1];
        v45 = *v44;
        *(v41 + 26) = v45;
        *(v41 + 16) = v33 + 33 * v43 + 11 * v37;
        *(v41 + 27) = v37 == 0;
        v46 = v34 + 144 * v43 + 48 * v37;
        ++*(v46 + 4 * v45);
        v37 = vp8_prev_token_class[v45];
        v38 += 16;
      }

      while (16 * v28 - 16 != v38);
      v25 += v38;
      v47 = (v25 + 16);
      if (v28 > 0xF)
      {
        goto LABEL_40;
      }
    }

    v48 = vp8_coef_bands[v28];
    *(v25 + 26) = 11;
    *v47 = v33 + 33 * v48 + 11 * v37;
    v49 = v34 + 144 * v48 + 48 * v37;
    ++*(v49 + 44);
    v47 = (v25 + 32);
LABEL_40:
    LOBYTE(v28) = 1;
    goto LABEL_41;
  }

  v22 = a2;
  v23 = a3;
  v24 = 3;
LABEL_42:

  tokenize1st_order_b(v22, v23, v24, a1);
}

uint64_t vp8_stuff_mb(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8176);
  v4 = *(a2 + 8184);
  v5 = **(a2 + 8096);
  if (v5 == 4 || v5 == 9)
  {
    v10 = 0;
    v7 = 3;
  }

  else
  {
    v7 = 0;
    v8 = *a3;
    v9 = v4[8] + v3[8];
    *(v8 + 10) = 11;
    ++*(a2 + 48 * v9 + 10040);
    *v8 = result + 11 * v9 + 113021;
    *a3 = v8 + 16;
    v4[8] = 0;
    v3[8] = 0;
    v10 = 1;
  }

  v11 = 0;
  v12 = result + 112757 + 264 * v7 + (v10 | (32 * v10));
  v13 = a2 + 8844 + 1152 * v7 + 144 * v10;
  do
  {
    v14 = vp8_block2above[v11];
    v15 = vp8_block2left[v11];
    v16 = *a3;
    v17 = v4[v15] + v3[v14];
    *(v16 + 10) = 11;
    *v16 = v12 + 11 * v17;
    ++*(v13 + 48 * v17 + 44);
    *a3 = v16 + 16;
    v4[v15] = 0;
    v3[v14] = 0;
    ++v11;
  }

  while (v11 != 16);
  v18 = *a3;
  v19 = v4[4] + v3[4];
  *(v18 + 10) = 11;
  *v18 = result + 113285 + 11 * v19;
  ++*(a2 + 11148 + 48 * v19 + 44);
  *a3 = v18 + 16;
  v4[4] = 0;
  v3[4] = 0;
  v20 = *a3;
  v21 = v4[4] + v3[5];
  *(v20 + 10) = 11;
  *v20 = result + 113285 + 11 * v21;
  ++*(a2 + 11148 + 48 * v21 + 44);
  *a3 = v20 + 16;
  v4[4] = 0;
  v3[5] = 0;
  v22 = *a3;
  v23 = v4[5] + v3[4];
  *(v22 + 10) = 11;
  *v22 = result + 113285 + 11 * v23;
  ++*(a2 + 11148 + 48 * v23 + 44);
  *a3 = v22 + 16;
  v4[5] = 0;
  v3[4] = 0;
  v24 = *a3;
  v25 = v4[5] + v3[5];
  *(v24 + 10) = 11;
  *v24 = result + 113285 + 11 * v25;
  ++*(a2 + 11148 + 48 * v25 + 44);
  *a3 = v24 + 16;
  v4[5] = 0;
  v3[5] = 0;
  v26 = *a3;
  v27 = v4[6] + v3[6];
  *(v26 + 10) = 11;
  *v26 = result + 113285 + 11 * v27;
  ++*(a2 + 11148 + 48 * v27 + 44);
  *a3 = v26 + 16;
  v4[6] = 0;
  v3[6] = 0;
  v28 = *a3;
  v29 = v4[6] + v3[7];
  *(v28 + 10) = 11;
  *v28 = result + 113285 + 11 * v29;
  ++*(a2 + 11148 + 48 * v29 + 44);
  *a3 = v28 + 16;
  v4[6] = 0;
  v3[7] = 0;
  v30 = *a3;
  v31 = v4[7] + v3[6];
  *(v30 + 10) = 11;
  *v30 = result + 113285 + 11 * v31;
  ++*(a2 + 11148 + 48 * v31 + 44);
  *a3 = v30 + 16;
  v4[7] = 0;
  v3[6] = 0;
  v32 = *a3;
  v33 = v4[7] + v3[7];
  *(v32 + 10) = 11;
  *v32 = result + 113285 + 11 * v33;
  ++*(a2 + 11148 + 48 * v33 + 44);
  *a3 = v32 + 16;
  v4[7] = 0;
  v3[7] = 0;
  return result;
}

uint64_t tokenize1st_order_b(uint64_t result, void *a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  v5 = *a2;
  v6 = (result + 6368);
  v7 = a3 == 0;
  v8 = a4 + 112757;
  v9 = result + 8844;
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v63 = result;
  do
  {
    v13 = vp8_block2above[v4];
    v14 = *v6[5];
    v15 = vp8_block2left[v4];
    v16 = *(result + 8176);
    v17 = *(result + 8184);
    v18 = *(v17 + v15) + *(v16 + v13);
    v19 = v7 || 32 * v7;
    if (v7 >= v14)
    {
      v11 = 0;
      *(v5 + 5) = 11;
      *v5 = v8 + 264 * a3 + v19 + 11 * v18;
      v5 += 2;
      v12 = v9 + 1152 * a3 + 144 * (a3 == 0) + 48 * v18;
      ++*(v12 + 44);
      goto LABEL_6;
    }

    v20 = *v6;
    v21 = &dct_value_tokens[2 * (*v6)[v7] + 4096];
    *(v5 + 4) = dct_value_tokens[2 * (*v6)[v7] + 4097];
    v22 = *v21;
    *(v5 + 10) = v22;
    *v5 = v8 + 264 * a3 + v19 + 11 * v18;
    *(v5 + 11) = 0;
    v23 = v9 + 1152 * a3 + 144 * (a3 == 0) + 48 * v18;
    ++*(v23 + 4 * v22);
    v24 = vp8_prev_token_class[v22];
    if (v10 >= v14)
    {
      v33 = v5 + 2;
      v14 = v10;
LABEL_14:
      v34 = vp8_coef_bands[v14];
      *(v5 + 13) = 11;
      *v33 = v8 + 264 * a3 + 33 * v34 + 11 * v24;
      v35 = v9 + 1152 * a3 + 144 * v34 + 48 * v24;
      ++*(v35 + 44);
      v5 += 4;
      v11 = 1;
      goto LABEL_6;
    }

    v25 = &vp8_coef_bands[v10];
    v26 = v14 - v10;
    v27 = &vp8_default_zig_zag1d[v10];
    do
    {
      v29 = *v27++;
      v28 = v29;
      LODWORD(v29) = *v25++;
      v30 = &dct_value_tokens[2 * *(v20 + 2 * v28) + 4096];
      v5[2] = v8 + 264 * a3 + 33 * v29 + 11 * v24;
      v5 += 2;
      *(v5 + 4) = v30[1];
      v31 = *v30;
      *(v5 + 10) = v31;
      *(v5 + 11) = v24 == 0;
      v32 = v9 + 1152 * a3 + 144 * v29 + 48 * v24;
      ++*(v32 + 4 * v31);
      v24 = vp8_prev_token_class[v31];
      --v26;
    }

    while (v26);
    v33 = v5 + 2;
    if (v14 <= 0xF)
    {
      goto LABEL_14;
    }

    v11 = 1;
    v5 += 2;
LABEL_6:
    result = v63;
    *a2 = v5;
    *(v17 + v15) = v11;
    *(v16 + v13) = v11;
    ++v4;
    v6 += 7;
  }

  while (v4 != 16);
  v36 = a4 + 113285;
  v37 = v63 + 11148;
  v38 = 0x10u;
  do
  {
    v41 = *v6[5];
    v42 = vp8_block2above[v38];
    v43 = vp8_block2left[v38];
    v44 = *(v63 + 8176);
    v45 = *(v63 + 8184);
    v46 = *(v45 + v43) + *(v44 + v42);
    if (!*v6[5])
    {
      v39 = 0;
      *(v5 + 5) = 11;
      *v5 = v36 + 11 * v46;
      ++*(v37 + 48 * v46 + 44);
      v40 = v5 + 2;
      goto LABEL_18;
    }

    v47 = *v6;
    v48 = &dct_value_tokens[2 * **v6 + 4096];
    *(v5 + 4) = dct_value_tokens[2 * **v6 + 4097];
    v49 = *v48;
    *(v5 + 10) = v49;
    *v5 = v36 + 11 * v46;
    *(v5 + 11) = 0;
    ++*(v37 + 48 * v46 + 4 * v49);
    v50 = vp8_prev_token_class[v49];
    if (v41 < 2)
    {
      v40 = v5 + 2;
      v41 = 1u;
    }

    else
    {
      v51 = 0;
      v52 = &byte_273BC5541;
      v53 = &dword_273BC5564;
      do
      {
        v54 = &v5[v51 / 8];
        v56 = *v53++;
        v55 = v56;
        LODWORD(v56) = *v52++;
        v57 = &dct_value_tokens[2 * *(v47 + 2 * v55) + 4096];
        *(v54 + 12) = v57[1];
        v58 = *v57;
        *(v54 + 26) = v58;
        v54[2] = v36 + 33 * v56 + 11 * v50;
        *(v54 + 27) = v50 == 0;
        v59 = v37 + 144 * v56 + 48 * v50;
        ++*(v59 + 4 * v58);
        v50 = vp8_prev_token_class[v58];
        v51 += 16;
      }

      while (16 * v41 - 16 != v51);
      v5 = (v5 + v51);
      v40 = v5 + 2;
      if (v41 > 0xF)
      {
        goto LABEL_27;
      }
    }

    v60 = vp8_coef_bands[v41];
    *(v5 + 13) = 11;
    *v40 = v36 + 33 * v60 + 11 * v50;
    v61 = v37 + 144 * v60 + 48 * v50;
    ++*(v61 + 44);
    v40 = v5 + 4;
LABEL_27:
    v39 = 1;
LABEL_18:
    *a2 = v40;
    *(v45 + v43) = v39;
    *(v44 + v42) = v39;
    ++v38;
    v6 += 7;
    v5 = v40;
  }

  while (v38 != 24);
  return result;
}

uint64_t cost(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = result;
  v9 = *(a3 + (a4 >> 1));
  v10 = a4;
  do
  {
    while (1)
    {
      v12 = *(a2 + v10);
      v13 = (v10 & 1) != 0 ? v9 ^ 0xFF : v9;
      if (v12 <= 0)
      {
        break;
      }

      result = cost(v8, a2, a3);
      v11 = v10++;
      if (v11)
      {
        return result;
      }
    }

    *(v8 + 4 * -v12) = vp8_prob_cost[v13] + a5;
    v14 = v10++;
  }

  while ((v14 & 1) == 0);
  return result;
}

float vpx_get8x8var_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, float *a5, _DWORD *a6)
{
  v6 = vsubl_u8(*a1, *a3);
  v7 = (a1 + a2);
  v8 = (a3 + a4);
  v9 = vsubl_u8(*v7, *v8);
  v10 = (v7 + a2);
  v11 = (v8 + a4);
  v12 = vsubl_u8(*v10, *v11);
  v13 = (v10 + a2);
  v14 = (v11 + a4);
  v15 = vsubl_u8(*v13, *v14);
  v16 = (v13 + a2);
  v17 = (v14 + a4);
  v18 = vsubl_u8(*v16, *v17);
  v19 = (v16 + a2);
  v20 = (v17 + a4);
  v21 = vsubl_u8(*v19, *v20);
  v22 = (v19 + a2);
  v23 = (v20 + a4);
  v24 = vsubl_u8(*v22, *v23);
  v25 = vsubl_u8(*(v22 + a2), *(v23 + a4));
  *a6 = vaddlvq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v9, v6), v12), v21), v25), vaddq_s16(vaddq_s16(v15, v18), v24)));
  result = COERCE_FLOAT(vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v6.i8, *v6.i8), v6, v6), *v9.i8, *v9.i8), v9, v9), *v12.i8, *v12.i8), v12, v12), *v15.i8, *v15.i8), v15, v15), *v18.i8, *v18.i8), v18, v18), *v21.i8, *v21.i8), v21, v21), *v24.i8, *v24.i8), v24, v24), *v25.i8, *v25.i8), v25, v25)));
  *a5 = result;
  return result;
}

float vpx_get16x16var_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, float *a5, _DWORD *a6)
{
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v11 = vsubl_u8(*a1, *a3);
    v12 = vsubl_high_u8(*a1->i8, *a3->i8);
    v6 = vaddq_s16(v11, v6);
    v9 = vaddq_s16(v12, v9);
    v7 = vmlal_s16(vmlal_s16(v7, *v11.i8, *v11.i8), *v12.i8, *v12.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v11, v11), v12, v12);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v10++, 1));
  *a6 = vaddlvq_s16(vaddq_s16(v6, v9));
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v8, v7)));
  *a5 = result;
  return result;
}

uint64_t vpx_variance4x4_neon(__int32 *a1, int a2, __int32 *a3, int a4, _DWORD *a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6.i32[0] = *a3;
  v6.i32[1] = *(a3 + a4);
  v7 = vsubl_u8(v5, v6);
  v8 = (a1 + 2 * a2);
  v9.i32[0] = *v8;
  v9.i32[1] = *(v8 + a2);
  v10 = (a3 + 2 * a4);
  v11.i32[0] = *v10;
  v11.i32[1] = *(v10 + a4);
  v12 = vsubl_u8(v9, v11);
  LODWORD(v10) = vaddlvq_s16(vaddq_s16(v12, v7));
  v7.i32[0] = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v7.i8, *v7.i8), v7, v7), *v12.i8, *v12.i8), v12, v12));
  *a5 = v7.i32[0];
  return v7.i32[0] - ((v10 * v10) >> 4);
}

uint64_t vpx_variance4x8_neon(__int32 *a1, int a2, __int32 *a3, int a4, _DWORD *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7.i32[0] = *a1;
  v7.i32[1] = *(a1 + a2);
  v8.i32[0] = *a3;
  v8.i32[1] = *(a3 + a4);
  v9 = vsubl_u8(v7, v8);
  v10.i32[0] = *(a1 + v5);
  v10.i32[1] = *(a1 + v5 + a2);
  v11.i32[0] = *(a3 + v6);
  v11.i32[1] = *(a3 + v6 + a4);
  v12 = vmlal_high_s16(vmull_s16(*v9.i8, *v9.i8), v9, v9);
  v13 = vsubl_u8(v10, v11);
  v14 = vaddq_s16(v13, v9);
  v15 = vmlal_high_s16(vmlal_s16(v12, *v13.i8, *v13.i8), v13, v13);
  v16 = (a1 + v5 + v5);
  v17 = (a3 + v6 + v6);
  v13.i32[0] = *v16;
  v13.i32[1] = *(v16 + a2);
  v11.i32[0] = *v17;
  v11.i32[1] = *(v17 + a4);
  v18 = vsubl_u8(*v13.i8, v11);
  v19 = vaddq_s16(v14, v18);
  v20 = vmlal_high_s16(vmlal_s16(v15, *v18.i8, *v18.i8), v18, v18);
  v21 = (v16 + v5);
  v18.i32[0] = *v21;
  v18.i32[1] = *(v21 + a2);
  v22 = (v17 + v6);
  v11.i32[0] = *v22;
  v11.i32[1] = *(v22 + a4);
  v23 = vsubl_u8(*v18.i8, v11);
  v19.i32[0] = vaddlvq_s16(vaddq_s16(v19, v23));
  v20.i32[0] = vaddvq_s32(vmlal_high_s16(vmlal_s16(v20, *v23.i8, *v23.i8), v23, v23));
  *a5 = v20.i32[0];
  return v20.i32[0] - ((v19.i32[0] * v19.i32[0]) >> 5);
}

uint64_t vpx_variance8x4_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, _DWORD *a5)
{
  v5 = vsubl_u8(*a1, *a3);
  v6 = (a1 + a2);
  v7 = (a3 + a4);
  v8 = vsubl_u8(*v6, *v7);
  v9 = (v6 + a2);
  v10 = (v7 + a4);
  v11 = vsubl_u8(*v9, *v10);
  v12 = vsubl_u8(*(v9 + a2), *(v10 + a4));
  v13 = vaddlvq_s16(vaddq_s16(vaddq_s16(v8, v5), vaddq_s16(v11, v12)));
  v5.i32[0] = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v8.i8, *v8.i8), v8, v8), *v11.i8, *v11.i8), v11, v11), *v12.i8, *v12.i8), v12, v12));
  *a5 = v5.i32[0];
  return v5.i32[0] - ((v13 * v13) >> 5);
}

uint64_t vpx_variance8x8_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = vsubl_u8(*a1, *a3);
  v6 = (a1 + a2);
  v7 = (a3 + a4);
  v8 = vsubl_u8(*v6, *v7);
  v9 = (v6 + a2);
  v10 = (v7 + a4);
  v11 = vsubl_u8(*v9, *v10);
  v12 = (v9 + a2);
  v13 = (v10 + a4);
  v14 = vsubl_u8(*v12, *v13);
  v15 = (v12 + a2);
  v16 = (v13 + a4);
  v17 = vsubl_u8(*v15, *v16);
  v18 = (v15 + a2);
  v19 = (v16 + a4);
  v20 = vsubl_u8(*v18, *v19);
  v21 = (v18 + a2);
  v22 = (v19 + a4);
  v23 = vsubl_u8(*v21, *v22);
  v24 = vsubl_u8(*(v21 + a2), *(v22 + a4));
  v25 = vaddlvq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v8, v5), v11), v20), v24), vaddq_s16(vaddq_s16(v14, v17), v23)));
  v26 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v8.i8, *v8.i8), v8, v8), *v11.i8, *v11.i8), v11, v11), *v14.i8, *v14.i8), v14, v14), *v17.i8, *v17.i8), v17, v17), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v24.i8, *v24.i8), v24, v24));
  *a5 = v26;
  return v26 - ((v25 * v25) >> 6);
}

uint64_t vpx_variance8x16_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = vsubl_u8(*a1, *a3);
  v6 = (a1 + a2);
  v7 = (a3 + a4);
  v8 = vsubl_u8(*v6, *v7);
  v9 = (v6 + a2);
  v10 = (v7 + a4);
  v11 = vsubl_u8(*v9, *v10);
  v12 = (v9 + a2);
  v13 = (v10 + a4);
  v14 = vsubl_u8(*v12, *v13);
  v15 = (v12 + a2);
  v16 = (v13 + a4);
  v17 = vsubl_u8(*v15, *v16);
  v18 = (v15 + a2);
  v19 = (v16 + a4);
  v20 = vsubl_u8(*v18, *v19);
  v21 = (v18 + a2);
  v22 = (v19 + a4);
  v23 = vsubl_u8(*v21, *v22);
  v24 = (v21 + a2);
  v25 = (v22 + a4);
  v26 = vsubl_u8(*v24, *v25);
  v27 = (v24 + a2);
  v28 = (v25 + a4);
  v29 = vsubl_u8(*v27, *v28);
  v30 = (v27 + a2);
  v31 = (v28 + a4);
  v32 = vsubl_u8(*v30, *v31);
  v33 = (v30 + a2);
  v34 = (v31 + a4);
  v35 = vsubl_u8(*v33, *v34);
  v36 = (v33 + a2);
  v37 = (v34 + a4);
  v38 = vsubl_u8(*v36, *v37);
  v39 = (v36 + a2);
  v40 = (v37 + a4);
  v41 = vsubl_u8(*v39, *v40);
  v42 = (v39 + a2);
  v43 = (v40 + a4);
  v44 = vsubl_u8(*v42, *v43);
  v45 = (v42 + a2);
  v46 = (v43 + a4);
  v47 = vsubl_u8(*v45, *v46);
  v48 = vsubl_u8(*(v45 + a2), *(v46 + a4));
  v49 = vaddlvq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v8, v5), v11), v20), v26), v32), v38), v44), v48), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v14, v17), v23), v29), v35), v41), v47)));
  v50 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v8.i8, *v8.i8), v8, v8), *v11.i8, *v11.i8), v11, v11), *v14.i8, *v14.i8), v14, v14), *v17.i8, *v17.i8), v17, v17), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v26.i8, *v26.i8), v26, v26), *v29.i8, *v29.i8), v29, v29), *v32.i8, *v32.i8), v32, v32), *v35.i8, *v35.i8), v35, v35), *v38.i8, *v38.i8), v38, v38), *v41.i8, *v41.i8), v41, v41), *v44.i8, *v44.i8), v44, v44), *v47.i8, *v47.i8), v47, v47), *v48.i8, *v48.i8), v48, v48));
  *a5 = v50;
  return v50 - ((v49 * v49) >> 7);
}

uint64_t vpx_variance16x8_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 7);
}

uint64_t vpx_variance16x16_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 8);
}

uint64_t vpx_variance16x32_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 9);
}

uint64_t vpx_variance32x16_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = 16;
  do
  {
    v12 = *v9[-2].i8;
    v13 = *v5[-2].i8;
    v14 = vsubl_u8(*v12.i8, *v13.i8);
    v15 = vsubl_high_u8(v12, v13);
    v16 = vaddq_s16(v15, v8);
    v17 = vmlal_s16(vmlal_s16(v6, *v14.i8, *v14.i8), *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(vmlal_high_s16(v10, v14, v14), v15, v15);
    v19 = vsubl_u8(*v9, *v5);
    v20 = vsubl_high_u8(*v9->i8, *v5->i8);
    v7 = vaddq_s16(vaddq_s16(v14, v7), v19);
    v8 = vaddq_s16(v16, v20);
    v6 = vmlal_s16(vmlal_s16(v17, *v19.i8, *v19.i8), *v20.i8, *v20.i8);
    v10 = vmlal_high_s16(vmlal_high_s16(v18, v19, v19), v20, v20);
    v5 = (v5 + a4);
    v9 = (v9 + a2);
    --v11;
  }

  while (v11);
  v21 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v22 = vaddvq_s32(vaddq_s32(v10, v6));
  *a5 = v22;
  return v22 - ((v21 * v21) >> 9);
}

uint64_t vpx_variance32x32_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = 32;
  do
  {
    v12 = *v9[-2].i8;
    v13 = *v5[-2].i8;
    v14 = vsubl_u8(*v12.i8, *v13.i8);
    v15 = vsubl_high_u8(v12, v13);
    v16 = vaddq_s16(v15, v8);
    v17 = vmlal_s16(vmlal_s16(v6, *v14.i8, *v14.i8), *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(vmlal_high_s16(v10, v14, v14), v15, v15);
    v19 = vsubl_u8(*v9, *v5);
    v20 = vsubl_high_u8(*v9->i8, *v5->i8);
    v7 = vaddq_s16(vaddq_s16(v14, v7), v19);
    v8 = vaddq_s16(v16, v20);
    v6 = vmlal_s16(vmlal_s16(v17, *v19.i8, *v19.i8), *v20.i8, *v20.i8);
    v10 = vmlal_high_s16(vmlal_high_s16(v18, v19, v19), v20, v20);
    v5 = (v5 + a4);
    v9 = (v9 + a2);
    --v11;
  }

  while (v11);
  v21 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v22 = vaddvq_s32(vaddq_s32(v10, v6));
  *a5 = v22;
  return v22 - ((v21 * v21) >> 10);
}

uint64_t vpx_variance32x64_neon(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = 64;
  do
  {
    v12 = *v9[-2].i8;
    v13 = *v5[-2].i8;
    v14 = vsubl_u8(*v12.i8, *v13.i8);
    v15 = vsubl_high_u8(v12, v13);
    v16 = vaddq_s16(v15, v8);
    v17 = vmlal_s16(vmlal_s16(v6, *v14.i8, *v14.i8), *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(vmlal_high_s16(v10, v14, v14), v15, v15);
    v19 = vsubl_u8(*v9, *v5);
    v20 = vsubl_high_u8(*v9->i8, *v5->i8);
    v7 = vaddq_s16(vaddq_s16(v14, v7), v19);
    v8 = vaddq_s16(v16, v20);
    v6 = vmlal_s16(vmlal_s16(v17, *v19.i8, *v19.i8), *v20.i8, *v20.i8);
    v10 = vmlal_high_s16(vmlal_high_s16(v18, v19, v19), v20, v20);
    v5 = (v5 + a4);
    v9 = (v9 + a2);
    --v11;
  }

  while (v11);
  v21 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v22 = vaddvq_s32(vaddq_s32(v10, v6));
  *a5 = v22;
  return v22 - ((v21 * v21) >> 11);
}

uint64_t vpx_variance64x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = a1 + 32;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3 + 32;
  v10 = 0uLL;
  v11 = 32;
  do
  {
    v12 = *(v5 - 32);
    v13 = *(v5 - 16);
    v14 = *(v9 - 32);
    v15 = *(v9 - 16);
    v16 = vsubl_u8(*v12.i8, *v14.i8);
    v17 = vsubl_high_u8(v12, v14);
    v18 = vaddq_s16(v17, v8);
    v19 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
    v20 = vmlal_high_s16(vmlal_high_s16(v10, v16, v16), v17, v17);
    v21 = vsubl_u8(*v13.i8, *v15.i8);
    v22 = vsubl_high_u8(v13, v15);
    v23 = *(v5 + 16);
    v24 = *(v9 + 16);
    v25 = vsubl_u8(*v5, *v9);
    v26 = vsubl_high_u8(*v5, *v9);
    v27 = vaddq_s16(vaddq_s16(v16, v7), vaddq_s16(v21, v25));
    v28 = vaddq_s16(v18, vaddq_s16(v22, v26));
    v29 = vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(v19, *v21.i8, *v21.i8), *v22.i8, *v22.i8), *v25.i8, *v25.i8), *v26.i8, *v26.i8);
    v30 = vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(v20, v21, v21), v22, v22), v25, v25), v26, v26);
    v31 = vsubl_u8(*v23.i8, *v24.i8);
    v32 = vsubl_high_u8(v23, v24);
    v7 = vaddq_s16(v27, v31);
    v8 = vaddq_s16(v28, v32);
    v6 = vmlal_s16(vmlal_s16(v29, *v31.i8, *v31.i8), *v32.i8, *v32.i8);
    v10 = vmlal_high_s16(vmlal_high_s16(v30, v31, v31), v32, v32);
    v5 += a2;
    v9 += a4;
    --v11;
  }

  while (v11);
  v33 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v34 = vaddvq_s32(vaddq_s32(v10, v6));
  *a5 = v34;
  return v34 - ((v33 * v33) >> 11);
}

uint64_t vpx_variance64x64_neon(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 32;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = *(a1 + 16);
      v14 = *(a3 + 16);
      v15 = vsubl_u8(*a1, *a3);
      v16 = vsubl_high_u8(*a1, *a3);
      v17 = vaddq_s16(v15, v10);
      v18 = vaddq_s16(v16, v11);
      v19 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v20 = vmlal_high_s16(vmlal_high_s16(v7, v15, v15), v16, v16);
      v21 = vsubl_u8(*v13.i8, *v14.i8);
      v22 = vsubl_high_u8(v13, v14);
      v23 = *(a1 + 32);
      v24 = *(a1 + 48);
      v25 = *(a3 + 32);
      v26 = *(a3 + 48);
      v27 = vsubl_u8(*v23.i8, *v25.i8);
      v28 = vsubl_high_u8(v23, v25);
      v29 = vaddq_s16(v17, vaddq_s16(v21, v27));
      v30 = vaddq_s16(v18, vaddq_s16(v22, v28));
      v31 = vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(v19, *v21.i8, *v21.i8), *v22.i8, *v22.i8), *v27.i8, *v27.i8), *v28.i8, *v28.i8);
      v32 = vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(v20, v21, v21), v22, v22), v27, v27), v28, v28);
      v33 = vsubl_u8(*v24.i8, *v26.i8);
      v34 = vsubl_high_u8(v24, v26);
      v10 = vaddq_s16(v29, v33);
      v11 = vaddq_s16(v30, v34);
      v6 = vmlal_s16(vmlal_s16(v31, *v33.i8, *v33.i8), *v34.i8, *v34.i8);
      v7 = vmlal_high_s16(vmlal_high_s16(v32, v33, v33), v34, v34);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 32;
  }

  while (v5 < 0x40);
  v35 = vaddvq_s32(v8);
  v36 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v36;
  return v36 - ((v35 * v35) >> 12);
}

uint64_t vpx_get4x4sse_cs_neon(__int32 *a1, int a2, __int32 *a3, int a4)
{
  v4.i32[0] = *a1;
  v4.i32[1] = *(a1 + a2);
  v5.i32[0] = *a3;
  v5.i32[1] = *(a3 + a4);
  v6 = (a1 + 2 * a2);
  v7 = (a3 + 2 * a4);
  v8.i32[0] = *v6;
  v8.i32[1] = *(v6 + a2);
  v9.i32[0] = *v7;
  v9.i32[1] = *(v7 + a4);
  v10 = vabdl_u8(v4, v5);
  v11 = vabdl_u8(v8, v9);
  return vaddvq_s32(vmlal_high_u16(vmlal_u16(vmlal_high_u16(vmull_u16(*v10.i8, *v10.i8), v10, v10), *v11.i8, *v11.i8), v11, v11));
}

float vpx_mse16x16_neon(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, float *a5)
{
  v5 = (a1 + a2);
  v6 = (a3 + a4);
  v7 = vabdq_u8(*a1, *a3);
  v8 = *v5;
  v9 = (v5 + a2);
  v10 = *v6;
  v11 = (v6 + a4);
  v12 = vabdq_u8(v8, v10);
  v13 = *v9;
  v14 = (v9 + a2);
  v15 = *v11;
  v16 = (v11 + a4);
  v17 = vabdq_u8(v13, v15);
  v18 = *v14;
  v19 = (v14 + a2);
  v20 = *v16;
  v21 = (v16 + a4);
  v22 = vabdq_u8(v18, v20);
  v23 = *v19;
  v24 = (v19 + a2);
  v25 = *v21;
  v26 = (v21 + a4);
  v27 = vabdq_u8(v23, v25);
  v28 = *v24;
  v29 = (v24 + a2);
  v30 = *v26;
  v31 = (v26 + a4);
  v32 = vabdq_u8(v28, v30);
  v33 = *v29;
  v34 = (v29 + a2);
  v35 = *v31;
  v36 = (v31 + a4);
  v37 = vabdq_u8(v33, v35);
  v38 = *v34;
  v39 = (v34 + a2);
  v40 = *v36;
  v41 = (v36 + a4);
  v42 = vabdq_u8(v38, v40);
  v43 = *v39;
  v44 = (v39 + a2);
  v45 = *v41;
  v46 = (v41 + a4);
  v47 = vabdq_u8(v43, v45);
  v48 = *v44;
  v49 = (v44 + a2);
  v50 = *v46;
  v51 = (v46 + a4);
  v52 = vabdq_u8(v48, v50);
  v53 = *v49;
  v54 = (v49 + a2);
  v55 = *v51;
  v56 = (v51 + a4);
  v57 = vabdq_u8(v53, v55);
  v58 = *v54;
  v59 = (v54 + a2);
  v60 = *v56;
  v61 = (v56 + a4);
  v62 = vabdq_u8(v58, v60);
  v63 = *v59;
  v64 = (v59 + a2);
  v65 = *v61;
  v66 = (v61 + a4);
  v67 = vabdq_u8(v63, v65);
  v68 = *v64;
  v69 = (v64 + a2);
  v70 = *v66;
  v71 = (v66 + a4);
  v72 = vabdq_u8(v68, v70);
  v73 = vabdq_u8(*v69, *v71);
  v74 = vabdq_u8(*(v69 + a2), *(v71 + a4));
  result = COERCE_FLOAT(vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_high_u8(v7, v7)), vmull_u8(*v7.i8, *v7.i8)), vmull_u8(*v12.i8, *v12.i8)), vmull_high_u8(v12, v12)), vmull_u8(*v17.i8, *v17.i8)), vmull_high_u8(v17, v17)), vmull_u8(*v22.i8, *v22.i8)), vmull_high_u8(v22, v22)), vmull_u8(*v27.i8, *v27.i8)), vmull_high_u8(v27, v27)), vmull_u8(*v32.i8, *v32.i8)), vmull_high_u8(v32, v32)), vmull_u8(*v37.i8, *v37.i8)), vmull_high_u8(v37, v37)), vmull_u8(*v42.i8, *v42.i8)), vmull_high_u8(v42, v42)), vmull_u8(*v47.i8, *v47.i8)), vmull_high_u8(v47, v47)), vmull_u8(*v52.i8, *v52.i8)), vmull_high_u8(v52, v52)), vmull_u8(*v57.i8, *v57.i8)), vmull_high_u8(v57, v57)), vmull_u8(*v62.i8, *v62.i8)), vmull_high_u8(v62, v62)), vmull_u8(*v67.i8, *v67.i8)), vmull_high_u8(v67, v67)), vmull_u8(*v72.i8, *v72.i8)), vmull_high_u8(v72, v72)), vmull_u8(*v73.i8, *v73.i8)), vmull_high_u8(v73, v73)), vmull_u8(*v74.i8, *v74.i8)), vmull_high_u8(v74, v74))));
  *a5 = result;
  return result;
}

uint64_t vp8e_init(void *a1, void *a2)
{
  vp8_rtcd();
  vpx_dsp_rtcd();
  vpx_scale_rtcd();
  if (a1[6])
  {
    return 0;
  }

  v5 = malloc_type_malloc(0x2877uLL, 0xD93B561uLL);
  if (!v5)
  {
    return 2;
  }

  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v6 - 8) = v5;
  if (!v6)
  {
    return 2;
  }

  bzero(((v5 + 23) & 0xFFFFFFFFFFFFFFF0), 0x2860uLL);
  a1[6] = v6;
  *(v6 + 8) = a1[4];
  v7 = a1[5];
  if (v7)
  {
    memcpy((v6 + 216), v7, 0x1F8uLL);
    a1[5] = v6 + 216;
  }

  *(v6 + 720) = default_extracfg;
  *(v6 + 736) = unk_273BCE638;
  *(v6 + 752) = xmmword_273BCE648;
  *(v6 + 768) = unk_273BCE658;
  *(v6 + 720) = v6 + 1472;
  v8 = 3 * *(v6 + 228) * *(v6 + 232);
  if (v8 >= 0x8000)
  {
    v9 = v8 & 0xFFFFFFFE;
  }

  else
  {
    v9 = 0x8000;
  }

  *(v6 + 1312) = v9;
  v10 = malloc_type_malloc(v9, 0x35A29542uLL);
  *(v6 + 1304) = v10;
  if (!v10)
  {
    *(v6 + 1312) = 0;
    return 2;
  }

  if (a2)
  {
    v11 = *a2;
  }

  else
  {
    v11 = 1;
  }

  *(a1[6] + 208) = v11;
  vp8_initialize_enc();
  result = validate_config(v6, (v6 + 216), (v6 + 720), 0);
  if (!result)
  {
    *(v6 + 808) = 0;
    v12 = *(v6 + 248);
    if (v12)
    {
      LODWORD(v13) = *(v6 + 248);
      v14 = 10000000 * *(v6 + 244);
      do
      {
        v15 = v13;
        v13 = v14 % v13;
        v14 = v15;
      }

      while (v13);
    }

    else
    {
      LODWORD(v15) = 10000000 * *(v6 + 244);
    }

    *(v6 + 784) = 10000000 * *(v6 + 244) / v15;
    *(v6 + 792) = v12 / v15;
    memcpy(__dst, (v6 + 216), sizeof(__dst));
    v16 = *(v6 + 736);
    v19[0] = *(v6 + 720);
    v19[1] = v16;
    v17 = *(v6 + 768);
    v19[2] = *(v6 + 752);
    v19[3] = v17;
    set_vp8e_config(v6 + 816, __dst, v19, a2);
    compressor = vp8_create_compressor((v6 + 816));
    *(v6 + 1296) = compressor;
    if (compressor)
    {
      return 0;
    }

    *(v6 + 1268) = 0;
    *(v6 + 1288) = 0;
    return 2;
  }

  return result;
}

uint64_t vp8e_destroy(uint64_t a1)
{
  v2 = *(a1 + 1268);
  if (v2 && *(a1 + 1272) == v2 - 1)
  {
    v3 = *(a1 + 1288);
    free(v3[7]);
    free(v3);
  }

  free(*(a1 + 1304));
  vp8_remove_compressor((a1 + 1296));
  free(*(a1 - 8));
  return 0;
}

uint64_t vp8e_encode(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = 0;
  v96 = a5;
  v95 = a3;
  if (*(a1 + 328))
  {
    if (!a2)
    {
LABEL_19:
      if (v97 || (v97 = validate_config(a1, (a1 + 216), (a1 + 720), 1)) != 0)
      {
        *(a1 + 1472) = 0x4000000000;
        if (!v96)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (a6 == 1)
      {
        v17 = 0;
        if (!*(a1 + 864))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v18 = *(a1 + 256);
        if (v18 == 1)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4 * (v18 == 2);
        }

        if (*(a1 + 864) == v17)
        {
LABEL_33:
          v97 = 0;
          *(a1 + 1472) = 0x4000000000;
          if (!v96)
          {
LABEL_34:
            v96 = *(a1 + 10328);
            *(a1 + 10328) = 0;
            if (!v97)
            {
              goto LABEL_35;
            }

            goto LABEL_22;
          }

LABEL_21:
          *(a1 + 10328) = 0;
          if (!v97)
          {
LABEL_35:
            v19 = v96;
            if ((~v96 & 0x480000) != 0 && (v20 = v96, (~v96 & 0x1800000) != 0))
            {
              if ((v96 & 0x230000) != 0)
              {
                if ((v96 & 0x10000) != 0)
                {
                  v35 = 6;
                }

                else
                {
                  v35 = 7;
                }

                if ((v96 & 0x20000) != 0)
                {
                  v35 &= 5u;
                }

                if ((v96 & 0x200000) != 0)
                {
                  v35 &= 3u;
                }

                *(*(a1 + 1296) + 142884) = v35;
              }

              if ((v19 & 0x1CC0000) != 0)
              {
                if ((*&v19 & 0x40000) != 0)
                {
                  v36 = 6;
                }

                else
                {
                  v36 = 7;
                }

                if ((*&v19 & 0x400000) != 0)
                {
                  v36 &= 5u;
                }

                if ((*&v19 & 0x800000) != 0)
                {
                  v36 &= 3u;
                }

                v37 = *(a1 + 1296);
                v37[27893] = 0;
                v37[27894] = 0;
                v37[27892] = v36 & 1;
                if ((v36 & 2) != 0)
                {
                  v37[27893] = 1;
                }

                if (v36 >= 4)
                {
                  v37[27894] = 1;
                }

                v37[45038] = 1;
              }

              if ((v20 & 0x100000) != 0)
              {
                v21 = 0;
                *(*(a1 + 1296) + 111588) = 0;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              *a1 = "Conflicting flags.";
              v21 = 8;
            }

            v97 = v21;
            if (*(a1 + 376) != 1)
            {
LABEL_42:
              if (v97)
              {
                return v97;
              }

              v24 = *(a1 + 1296);
              if (!v24)
              {
                return v97;
              }

              v92 = 0;
              v93 = 0;
              v91 = 0;
              v25 = setjmp((v24 + 108124));
              v30 = *(a1 + 1296);
              v31 = v30 + 27008;
              if (v25)
              {
                v30[27030] = 0;
                v32 = *v31;
                if (*v31)
                {
                  v33 = v30[27009];
                  v34 = v30 + 27010;
                  if (!v33)
                  {
                    v34 = 0;
                  }

                  *a1 = v34;
                }

                return v32;
              }

              v30[27030] = 1;
              v38 = *(a1 + 8);
              if ((v38 & 0x10000) != 0)
              {
                v30[37034] = 1;
                if ((v38 & 0x20000) == 0)
                {
LABEL_77:
                  v39 = v96;
                  if (!a2)
                  {
                    goto LABEL_101;
                  }

LABEL_83:
                  v89 = 0u;
                  v90 = 0u;
                  v87 = 0u;
                  v88 = 0u;
                  memset(v86, 0, sizeof(v86));
                  if (*(a1 + 808))
                  {
                    v40 = *(a1 + 800);
                  }

                  else
                  {
                    v40 = v95;
                    *(a1 + 800) = v95;
                    *(a1 + 808) = 1;
                  }

                  if (v95 < v40)
                  {
                    vpx_internal_error((v30 + 27008), 8, "pts is smaller than initial pts");
                    v40 = *(a1 + 800);
                  }

                  v95 -= v40;
                  v41 = *(a1 + 784);
                  if (v95 > 0x7FFFFFFFFFFFFFFFLL / v41)
                  {
                    vpx_internal_error(*(a1 + 1296) + 108032, 8, "conversion of relative pts to ticks would overflow");
                    v42 = v95 * *(a1 + 784) / *(a1 + 792);
                    v93 = v42;
                    if ((a4 & 0x8000000000000000) == 0)
                    {
LABEL_90:
                      if (v95 <= (a4 ^ 0x7FFFFFFFFFFFFFFFLL))
                      {
LABEL_92:
                        v43 = v95 + a4;
                        v44 = *(a1 + 784);
                        if (v43 > 0x7FFFFFFFFFFFFFFFLL / v44)
                        {
                          vpx_internal_error(*(a1 + 1296) + 108032, 8, "conversion of relative pts + duration to ticks would overflow");
                          v44 = *(a1 + 784);
                        }

                        v45 = v44 * v43 / *(a1 + 792);
                        *(&v86[4] + 1) = *(a2 + 8);
                        v46 = a2[21];
                        LODWORD(v86[1]) = a2[20];
                        DWORD1(v86[2]) = v46;
                        v47 = LODWORD(v86[1]) - a2[3];
                        v92 = v45;
                        *(&v86[3] + 8) = *(a2 + 3);
                        v48.i64[0] = *(a2 + 3);
                        v48.i64[1] = v48.i64[0];
                        v49.i64[0] = 0x100000001;
                        v49.i64[1] = 0x100000001;
                        v86[0] = v48;
                        *(&v86[1] + 4) = vshrq_n_u32(vaddq_s32(v48, v49), 1uLL);
                        DWORD2(v87) = v47 >> 1;
                        v97 = 0;
                        if (vp8_receive_raw_frame(*(a1 + 1296), *(a1 + 1456) | v39 & 1u, v86, v42, v45))
                        {
                          v50 = *(a1 + 1296);
                          v51 = *(v50 + 108032);
                          if (v51)
                          {
                            v52 = *(v50 + 108036);
                            v53 = v50 + 108040;
                            if (!v52)
                            {
                              v53 = 0;
                            }

                            *a1 = v53;
                          }

                          v97 = v51;
                        }

                        *(a1 + 1456) = 0;
LABEL_101:
                        v54 = a2 == 0;
                        v55 = *(a1 + 1304);
                        v56 = v55;
                        v57 = *(a1 + 1312);
                        v58 = a1 + 1480;
                        v94 = 0;
                        v59 = v57;
                        while (1)
                        {
                          result = vp8_get_compressed_data(*(a1 + 1296), &v94, &v91, v56, v55 + v57, &v93, &v92, v54, *&v26, v27, v28, v29);
                          if (result == -1)
                          {
LABEL_122:
                            *(*(a1 + 1296) + 108120) = 0;
                            return v97;
                          }

                          if (result == 7)
                          {
                            break;
                          }

                          v60 = v91;
                          if (v91)
                          {
                            v61 = *(a1 + 1296);
                            v62 = *(a1 + 784);
                            v63 = v62 / 2 - (v62 > 1);
                            v64 = *(a1 + 792);
                            v65 = *(a1 + 800);
                            v66 = v94 & 1 | (v94 << 16);
                            if (*(v61 + 111064))
                            {
                              v67 = v65 + (v63 + v93 * v64) / v62;
                              v68 = (v63 + (v92 - v93) * v64) / v62;
                            }

                            else
                            {
                              v66 |= 4u;
                              v67 = v65 + (v63 + *(v61 + 132040) * v64) / v62 + 1;
                              v68 = 0;
                            }

                            v26 = 0uLL;
                            v70 = *(v61 + 109856);
                            v69 = *(v61 + 109860);
                            if (*(v61 + 148196))
                            {
                              v66 |= 2u;
                            }

                            if (*(v61 + 148164))
                            {
                              v71 = *(v61 + 113860);
                              if (v71 != 31)
                              {
                                v72 = v66 | 8;
                                v73 = 1 << v71;
                                v74 = v61 + 143288;
                                v75 = v73 + 1;
                                v76 = *(a1 + 1476);
                                v77 = *(a1 + 1472);
                                v78 = 0;
                                v79 = v59;
                                v80 = v56;
                                do
                                {
                                  v81 = v77;
                                  v82 = *(v74 + 4 * v78);
                                  if (v75 == 1)
                                  {
                                    v72 &= ~8u;
                                  }

                                  if (v81 < v76)
                                  {
                                    *(a1 + 1472) = v81 + 1;
                                    v83 = v58 + 136 * v81;
                                    *v83 = 0;
                                    *(v83 + 8) = v80;
                                    *(v83 + 16) = v82;
                                    *(v83 + 24) = v67;
                                    *(v83 + 32) = v68;
                                    *(v83 + 40) = v72;
                                    *(v83 + 44) = v78;
                                    *(v83 + 48) = v70;
                                    *(v83 + 60) = 0;
                                    *(v83 + 52) = 0;
                                    *(v83 + 68) = v69;
                                    *(v83 + 72) = 0;
                                    *(v83 + 80) = 0;
                                    *(v83 + 88) = 1;
                                    *(v83 + 89) = 0uLL;
                                    *(v83 + 105) = 0uLL;
                                    ++v81;
                                    *(v83 + 120) = 0uLL;
                                  }

                                  v80 += v82;
                                  v79 -= v82;
                                  ++v78;
                                  v77 = v81;
                                  v59 = v79;
                                  v56 = v80;
                                  --v75;
                                }

                                while (v75);
                              }
                            }

                            else
                            {
                              v84 = *(a1 + 1472);
                              if (v84 < *(a1 + 1476))
                              {
                                *(a1 + 1472) = v84 + 1;
                                v85 = v58 + 136 * v84;
                                *v85 = 0;
                                *(v85 + 8) = v56;
                                *(v85 + 16) = v60;
                                *(v85 + 24) = v67;
                                *(v85 + 32) = v68;
                                *(v85 + 40) = v66;
                                *(v85 + 44) = -1;
                                *(v85 + 48) = v70;
                                *(v85 + 60) = 0;
                                *(v85 + 52) = 0;
                                *(v85 + 68) = v69;
                                *(v85 + 72) = 0;
                                *(v85 + 80) = 0;
                                *(v85 + 88) = 1;
                                *(v85 + 89) = 0uLL;
                                *(v85 + 105) = 0uLL;
                                *(v85 + 120) = 0uLL;
                              }

                              v56 += v60;
                              v59 -= v60;
                            }
                          }

                          if (v59 < *(a1 + 1312) >> 1)
                          {
                            goto LABEL_122;
                          }
                        }

                        *(*(a1 + 1296) + 108120) = 0;
                        return result;
                      }

LABEL_91:
                      vpx_internal_error(*(a1 + 1296) + 108032, 8, "relative pts + duration is too big");
                      goto LABEL_92;
                    }
                  }

                  else
                  {
                    v42 = v95 * v41 / *(a1 + 792);
                    v93 = v42;
                    if ((a4 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_90;
                    }
                  }

                  vpx_internal_error(*(a1 + 1296) + 108032, 8, "duration is too big");
                  if (v95 <= (a4 ^ 0x7FFFFFFFFFFFFFFFLL))
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_91;
                }
              }

              else if ((v38 & 0x20000) == 0)
              {
                goto LABEL_77;
              }

              v30[37041] = 1;
              v39 = v96;
              if (!a2)
              {
                goto LABEL_101;
              }

              goto LABEL_83;
            }

LABEL_39:
            v22 = *(a1 + 380);
            if (v22 == *(a1 + 384))
            {
              v23 = *(a1 + 10320) + 1;
              *(a1 + 10320) = v23;
              if (v23 > v22)
              {
                v96 |= 1uLL;
                *(a1 + 10320) = 1;
              }
            }

            goto LABEL_42;
          }

LABEL_22:
          if (*(a1 + 376) != 1)
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        }
      }

      *(a1 + 864) = v17;
      vp8_change_config(*(a1 + 1296), (a1 + 816));
      goto LABEL_33;
    }

    v9 = *a2;
    if (*a2 == 258 || v9 == 769 || v9 == 265)
    {
      if (a2[6] == *(a1 + 228) && a2[7] == *(a1 + 232))
      {
        v10 = 0;
LABEL_18:
        v97 = v10;
        goto LABEL_19;
      }

      v14 = "Image size must match encoder init configuration size";
    }

    else
    {
      v14 = "Invalid image format. Only YV12, I420 and NV12 images are supported";
    }

    *a1 = v14;
    v10 = 8;
    goto LABEL_18;
  }

  v11 = *(a1 + 1296);
  if (!v11)
  {
    return 1;
  }

  v12 = v11 + 114688;
  if (*(v12 + 28) < 2u)
  {
    return v97;
  }

  v13 = *(v12 + 48);
  if (v13)
  {
    *(v13 + 44) = 1;
    if (!*(v12 + 32))
    {
      *(v13 + 48) = 1;
    }

    return v97;
  }

  return 1;
}

uint64_t vp8e_get_cxdata(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = a1 + 1480;
    *a2 = a1 + 1480;
  }

  if (0xF0F0F0F0F0F0F0F1 * ((result - a1 - 1480) >> 3) >= *(a1 + 1472))
  {
    return 0;
  }

  *a2 = result + 136;
  return result;
}

uint64_t vp8e_set_config(uint64_t a1, _DWORD *a2)
{
  v2 = a2[3];
  if (v2 == *(a1 + 228) && a2[4] == *(a1 + 232))
  {
    v3 = a2[11];
    goto LABEL_4;
  }

  if (a2[11] > 1u || a2[10])
  {
    v4 = "Cannot change width or height after initialization";
    goto LABEL_9;
  }

  v15 = *(*(a1 + 1296) + 148200);
  if (v15)
  {
    v16 = v2 <= v15;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
LABEL_25:
    v4 = "Cannot increase width or height larger than their initial values";
    goto LABEL_9;
  }

  v17 = *(*(a1 + 1296) + 148204);
  if (v17)
  {
    v3 = a2[11];
    if (a2[4] > v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v3 = a2[11];
  }

LABEL_4:
  if (v3 > *(a1 + 260))
  {
    v4 = "Cannot increase lag_in_frames";
LABEL_9:
    *a1 = v4;
    return 8;
  }

  v5 = validate_config(a1, a2, (a1 + 720), 0);
  if (!v5)
  {
    v9 = setjmp((*(a1 + 1296) + 108124));
    v10 = *(a1 + 1296);
    v11 = v10 + 26624;
    if (v9)
    {
      v12 = v10[27008];
      if (v12)
      {
        v13 = v10[27009];
        v14 = v10 + 27010;
        if (!v13)
        {
          v14 = 0;
        }

        *a1 = v14;
      }

      v11[406] = 0;
      return v12;
    }

    else
    {
      v10[27030] = 1;
      memcpy((a1 + 216), a2, 0x1F8uLL);
      memcpy(__dst, a2, sizeof(__dst));
      v18 = *(a1 + 736);
      v20[0] = *(a1 + 720);
      v20[1] = v18;
      v19 = *(a1 + 768);
      v20[2] = *(a1 + 752);
      v20[3] = v19;
      set_vp8e_config(a1 + 816, __dst, v20, 0);
      vp8_change_config(*(a1 + 1296), (a1 + 816));
      v5 = vp8cx_create_encoder_threads(*(a1 + 1296)) != 0;
      *(*(a1 + 1296) + 108120) = 0;
    }
  }

  return v5;
}

double vp8e_get_preview(uint64_t a1, double a2, int32x4_t a3, double a4, double a5, double a6, double a7, int8x16_t a8, int32x4_t a9)
{
  v15 = 0uLL;
  v17 = 0;
  v16 = 0;
  if (*(a1 + 1460))
  {
    LODWORD(v15) = *(a1 + 1460);
    *(&v15 + 4) = *(a1 + 1464);
  }

  result = 0.0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 1296);
  if (!*(v10 + 111576))
  {
    *(v10 + 111144) = *(v10 + 111136);
    if (!vp8_post_proc_frame(v10 + 108032, &v18, &v15, 0.0, a3, a4, a5, a6, a7, a8, a9))
    {
      *(a1 + 1416) = 12;
      *(a1 + 1368) = *(v21 + 8);
      *(a1 + 1384) = *(&v21[1] + 1);
      *(a1 + 1320) = 258;
      *&result = 0x100000001;
      *(a1 + 1360) = 0x100000001;
      v12 = DWORD1(v20);
      *(a1 + 1400) = v19;
      v13 = v18;
      v14 = DWORD1(v18);
      *(a1 + 1344) = v18;
      *(a1 + 1348) = v14;
      *(a1 + 1404) = v12;
      *(a1 + 1408) = v12;
      *(a1 + 1332) = v13;
      *(a1 + 1336) = v14;
    }
  }

  return result;
}

uint64_t vp8e_mr_alloc_mem(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10200403F151E2AuLL);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  v6 = vshr_n_u32(vadd_s32(v3, 0xF0000000FLL), 4uLL);
  v7 = malloc_type_calloc(vmul_lane_s32(v6, v6, 1).u32[0], 0x10uLL, 0x1000040451B5BE8uLL);
  v5[7] = v7;
  if (v7)
  {
    result = 0;
    *a2 = v5;
  }

  else
  {
    free(v5);
    return 2;
  }

  return result;
}

void vp8e_mr_free_mem(void **a1)
{
  free(a1[7]);

  free(a1);
}

uint64_t validate_config(uint64_t a1, _DWORD *a2, _DWORD *a3, int a4)
{
  if ((a2[3] - 1) > 0x3FFE)
  {
    v7 = "g_w out of range [1..16383]";
    goto LABEL_10;
  }

  if ((a2[4] - 1) > 0x3FFE)
  {
    *a1 = "g_h out of range [1..16383]";
    return 8;
  }

  if ((a2[8] - 1) >= 0x3B9ACA00)
  {
    *a1 = "g_timebase.den out of range [1..1000000000]";
    return 8;
  }

  if ((a2[7] - 1) >= 0x3B9ACA00)
  {
    *a1 = "g_timebase.num out of range [1..1000000000]";
    return 8;
  }

  if (a2[2] > 3u)
  {
    *a1 = "g_profile out of range [..3]";
    return 8;
  }

  v4 = a2[30];
  if (v4 > 0x3F)
  {
    *a1 = "rc_max_quantizer out of range [..63]";
    return 8;
  }

  v5 = a2[29];
  if (v5 > v4)
  {
    *a1 = "rc_min_quantizer out of range [..cfg->rc_max_quantizer]";
    return 8;
  }

  if (a2[1] > 0x40u)
  {
    *a1 = "g_threads out of range [..64]";
    return 8;
  }

  if (a2[11])
  {
    *a1 = "g_lag_in_frames out of range [..0]";
    return 8;
  }

  v8 = a2[18];
  if (v8 > 3)
  {
    *a1 = "rc_end_usage out of range [VPX_VBR..VPX_Q]";
    return 8;
  }

  if (a2[31] > 0x64u)
  {
    *a1 = "rc_undershoot_pct out of range [..100]";
    return 8;
  }

  if (a2[32] > 0x64u)
  {
    *a1 = "rc_overshoot_pct out of range [..100]";
    return 8;
  }

  if (a2[36] > 0x64u)
  {
    *a1 = "rc_2pass_vbr_bias_pct out of range [..100]";
    return 8;
  }

  v9 = a2[40];
  if (v9 > 1)
  {
    *a1 = "kf_mode out of range [VPX_KF_DISABLED..VPX_KF_AUTO]";
    return 8;
  }

  if (*(a1 + 208) >= 2u && a2[13])
  {
    *a1 = "rc_resize_allowed out of range [..0]";
    return 8;
  }

  if (a2[12] > 0x64u)
  {
    *a1 = "rc_dropframe_thresh out of range [..100]";
    return 8;
  }

  if (a2[16] > 0x64u)
  {
    *a1 = "rc_resize_up_thresh out of range [..100]";
    return 8;
  }

  if (a2[17] > 0x64u)
  {
    *a1 = "rc_resize_down_thresh out of range [..100]";
    return 8;
  }

  if (a2[10])
  {
    *a1 = "g_pass out of range [VPX_RC_ONE_PASS..VPX_RC_ONE_PASS]";
    return 8;
  }

  if (v9)
  {
    v10 = a2[41];
    if (v10)
    {
      if (v10 != a2[42])
      {
        *a1 = "kf_min_dist not supported in auto mode, use 0 or kf_max_dist instead.";
        return 8;
      }
    }
  }

  if (a3[3] > 1u)
  {
    *a1 = "enable_auto_alt_ref expected BOOLean";
    return 8;
  }

  if ((a3[2] + 16) > 0x20)
  {
    *a1 = "cpu_used out of range [-16..16]";
    return 8;
  }

  if (a3[4] > 6u)
  {
    *a1 = "noise_sensitivity out of range [..6]";
    return 8;
  }

  if (a3[7] > 3u)
  {
    *a1 = "token_partitions out of range [VP8_ONE_TOKENPARTITION..VP8_EIGHT_TOKENPARTITION]";
    return 8;
  }

  if (a3[5] > 7u)
  {
    *a1 = "Sharpness out of range [..7]";
    return 8;
  }

  if (a3[8] > 0xFu)
  {
    *a1 = "arnr_max_frames out of range [0..15]";
    return 8;
  }

  if (a3[9] > 6u)
  {
    *a1 = "arnr_strength out of range [..6]";
    return 8;
  }

  if ((a3[10] - 1) > 2)
  {
    *a1 = "arnr_type out of range [1..3]";
    return 8;
  }

  v11 = a3[12];
  if (v11 > 0x3F)
  {
    *a1 = "cq_level out of range [0..63]";
    return 8;
  }

  if (a3[15] > 2u)
  {
    *a1 = "screen_content_mode out of range [..2]";
    return 8;
  }

  if (a4)
  {
    if (v8 >= 2)
    {
      v7 = "cq_level out of range [cfg->rc_min_quantizer..cfg->rc_max_quantizer]";
      if (v11 < v5 || v11 > v4)
      {
LABEL_10:
        *a1 = v7;
        return 8;
      }
    }
  }

  v12 = a2[54];
  v13 = v12 - 1;
  if (v12 - 1 > 4)
  {
    *a1 = "ts_number_layers out of range [1..5]";
    return 8;
  }

  if (v12 < 2)
  {
    goto LABEL_97;
  }

  if (a2[65] > 0x10u)
  {
    *a1 = "ts_periodicity out of range [..16]";
    return 8;
  }

  v14 = a2[56];
  if (v14 <= a2[55] && a2[28])
  {
    *a1 = "ts_target_bitrate entries are not strictly increasing";
    return 8;
  }

  if (v12 != 2)
  {
    v15 = a2[57];
    if (v15 <= v14 && a2[28])
    {
      *a1 = "ts_target_bitrate entries are not strictly increasing";
      return 8;
    }

    if (v12 != 3)
    {
      v16 = a2[58];
      if (v16 <= v15 && a2[28])
      {
        *a1 = "ts_target_bitrate entries are not strictly increasing";
        return 8;
      }

      if (v12 != 4 && a2[59] <= v16 && a2[28])
      {
        *a1 = "ts_target_bitrate entries are not strictly increasing";
        return 8;
      }
    }
  }

  v17 = a2 + 60;
  if (a2[v13 + 60] != 1)
  {
    *a1 = "ts_rate_decimator[cfg->ts_number_layers - 1] out of range [1..1]";
    return 8;
  }

  v18 = v12 - 3;
  v7 = "ts_rate_decimator factors are not powers of 2";
  while (1)
  {
    v19 = v18 + 1;
    if (v18 == -1)
    {
      break;
    }

    v20 = v17[v18--];
    if (v20 != 2 * v17[v19])
    {
      goto LABEL_10;
    }
  }

  if (a2[66] <= v13)
  {
LABEL_97:
    if (a2[95] > 1u)
    {
      *a1 = "use_vizier_rc_params out of range [0..1]";
      return 8;
    }

    else if ((a2[97] - 1) > 0x3E7)
    {
      *a1 = "active_wq_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[99] - 1) > 0x3E7)
    {
      *a1 = "err_per_mb_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[101] - 1) > 0x3E7)
    {
      *a1 = "sr_default_decay_limit.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[103] - 1) > 0x3E7)
    {
      *a1 = "sr_diff_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[105] - 1) > 0x3E7)
    {
      *a1 = "kf_err_per_mb_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[107] - 1) > 0x3E7)
    {
      *a1 = "kf_frame_min_boost_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[111] - 1) > 0x3E7)
    {
      *a1 = "kf_frame_max_boost_subs_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[113] - 1) > 0x3E7)
    {
      *a1 = "kf_max_total_boost_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[115] - 1) > 0x3E7)
    {
      *a1 = "gf_max_total_boost_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[117] - 1) > 0x3E7)
    {
      *a1 = "gf_frame_max_boost_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[119] - 1) > 0x3E7)
    {
      *a1 = "zm_factor.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[121] - 1) > 0x3E7)
    {
      *a1 = "rd_mult_inter_qp_fac.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[123] - 1) > 0x3E7)
    {
      *a1 = "rd_mult_arf_qp_fac.den out of range [1..1000]";
      return 8;
    }

    else if ((a2[125] - 1) >= 0x3E8)
    {
      *a1 = "rd_mult_key_qp_fac.den out of range [1..1000]";
      return 8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a1 = "ts_layer_id[i] out of range [..cfg->ts_number_layers - 1]";
    return 8;
  }
}

double set_vp8e_config(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + 196) = *(a2 + 4);
  *a1 = *(a2 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a1 + 12) = *(a2 + 28);
  v4 = *(a2 + 40);
  *(a1 + 208) = *(a2 + 36);
  if (!v4)
  {
    v5 = 2;
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    *(a1 + 48) = 5;
    goto LABEL_6;
  }

  if (v4 != 1)
  {
LABEL_6:
    v6 = *(a2 + 44);
    v7 = v6 != 0;
    goto LABEL_9;
  }

  v5 = 3;
LABEL_8:
  v7 = 0;
  v6 = 0;
  *(a1 + 48) = v5;
LABEL_9:
  *(a1 + 60) = v7;
  *(a1 + 64) = v6;
  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  *(a1 + 156) = v8 != 0;
  *(a1 + 160) = v8;
  *(a1 + 144) = v9;
  *(a1 + 148) = vrev64_s32(*(a2 + 64));
  v10 = *(a2 + 72);
  if (v10 <= 3)
  {
    *(a1 + 68) = v10;
  }

  v11 = *(a2 + 112);
  if (v11 >= 0xF4240)
  {
    v11 = 1000000;
  }

  *(a1 + 20) = v11;
  *(a1 + 36) = *(a3 + 52);
  *(a1 + 132) = vrev64_s32(*(a2 + 116));
  *(a1 + 140) = *(a3 + 48);
  *(a1 + 128) = -1;
  *(a1 + 72) = *(a2 + 124);
  v12 = *(a2 + 132);
  v13 = *(a2 + 136);
  v14 = *(a2 + 140);
  *(a1 + 112) = v14;
  *(a1 + 120) = v12;
  *(a1 + 96) = v12;
  *(a1 + 104) = v13;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 164) = *(a2 + 144);
  *(a1 + 172) = *(a2 + 152);
  if (*(a2 + 160) == 1)
  {
    v15 = *(a2 + 168);
    v16 = *(a2 + 164) != v15;
  }

  else
  {
    v16 = 0;
    v15 = *(a2 + 168);
  }

  *(a1 + 52) = v16;
  *(a1 + 56) = v15;
  v17 = *(a2 + 216);
  *(a1 + 252) = v17;
  *(a1 + 384) = *(a2 + 260);
  if (v17 >= 2)
  {
    v18 = *(a2 + 220);
    *(a1 + 272) = *(a2 + 236);
    *(a1 + 256) = v18;
    v19 = *(a2 + 240);
    *(a1 + 336) = *(a2 + 256);
    *(a1 + 320) = v19;
    v20 = *(a2 + 264);
    v21 = *(a2 + 280);
    v22 = *(a2 + 312);
    *(a1 + 420) = *(a2 + 296);
    *(a1 + 436) = v22;
    *(a1 + 388) = v20;
    *(a1 + 404) = v21;
  }

  if (a4)
  {
    *(a1 + 452) = *a4;
    *(a1 + 460) = a4[1];
    *(a1 + 472) = a4[2];
  }

  v23 = *(a3 + 8);
  *(a1 + 32) = v23;
  if (*(a2 + 40) == 1)
  {
    if (v23 <= 4)
    {
      v23 = 4;
    }

    *(a1 + 32) = v23;
  }

  *(a1 + 204) = *(a3 + 24);
  *(a1 + 176) = *(a3 + 12);
  *(a1 + 24) = *(a3 + 16);
  *(a1 + 200) = *(a3 + 28);
  *(a1 + 224) = *(a2 + 80);
  *(a1 + 240) = *a3;
  result = *(a3 + 32);
  *(a1 + 212) = result;
  v25 = *(a3 + 44);
  *(a1 + 220) = *(a3 + 40);
  *(a1 + 248) = v25;
  *(a1 + 44) = *(a3 + 60);
  return result;
}

uint64_t vp8e_set_reference(uint64_t a1, void *a2)
{
  v18 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = 110548;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *&v12[16] = 0u;
  v13 = 0u;
  *&v11[12] = 0u;
  *v12 = 0u;
  *&v12[8] = *(v2 + 14);
  v4.i64[0] = *(v2 + 4);
  v4.i64[1] = v4.i64[0];
  *&v12[24] = *(v2 + 9);
  v5.i64[0] = 0x100000001;
  v5.i64[1] = 0x100000001;
  v9 = v4;
  v10 = 0;
  *v11 = vshrq_n_u32(vaddq_s32(v4, v5), 1uLL);
  v6 = v2[23];
  v10 = v2[22];
  *&v11[16] = v6;
  DWORD2(v14) = (v10 - v2[5]) >> 1;
  v7 = *v2;
  switch(v7)
  {
    case 1:
      goto LABEL_8;
    case 4:
      v3 = 110556;
      goto LABEL_8;
    case 2:
      v3 = 110552;
LABEL_8:
      vp8_yv12_copy_frame_c(v9.i32, *(a1 + 1296) + 160 * *(*(a1 + 1296) + v3) + 109888);
      break;
  }

  return 0;
}

uint64_t vp8e_get_reference(uint64_t a1, void *a2)
{
  v18 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = 110548;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *&v12[16] = 0u;
  v13 = 0u;
  *&v11[12] = 0u;
  *v12 = 0u;
  *&v12[8] = *(v2 + 14);
  v4.i64[0] = *(v2 + 4);
  v4.i64[1] = v4.i64[0];
  *&v12[24] = *(v2 + 9);
  v5.i64[0] = 0x100000001;
  v5.i64[1] = 0x100000001;
  v9 = v4;
  v10 = 0;
  *v11 = vshrq_n_u32(vaddq_s32(v4, v5), 1uLL);
  v6 = v2[23];
  v10 = v2[22];
  *&v11[16] = v6;
  DWORD2(v14) = (v10 - v2[5]) >> 1;
  v7 = *v2;
  switch(v7)
  {
    case 1:
      goto LABEL_8;
    case 4:
      v3 = 110556;
      goto LABEL_8;
    case 2:
      v3 = 110552;
LABEL_8:
      vp8_yv12_copy_frame_c((*(a1 + 1296) + 160 * *(*(a1 + 1296) + v3) + 109888), &v9);
      break;
  }

  return 0;
}

uint64_t vp8e_set_previewpp(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  v5 = *v2;
  *(a1 + 1468) = *(v2 + 2);
  *(a1 + 1460) = v5;
  return result;
}

uint64_t vp8e_set_frame_flags(void *a1, int *a2)
{
  v2 = *a2;
  a1[1291] = v2;
  if ((~v2 & 0x480000) == 0 || (~v2 & 0x1800000) == 0)
  {
    *a1 = "Conflicting flags.";
    return 8;
  }

  else
  {
    if ((v2 & 0x230000) != 0)
    {
      if ((v2 & 0x10000) != 0)
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }

      if ((v2 & 0x20000) != 0)
      {
        v5 &= 5u;
      }

      if ((v2 & 0x200000) != 0)
      {
        v5 &= 3u;
      }

      *(a1[162] + 142884) = v5;
    }

    if ((v2 & 0x1CC0000) != 0)
    {
      if ((v2 & 0x40000) != 0)
      {
        v6 = 6;
      }

      else
      {
        v6 = 7;
      }

      if ((v2 & 0x400000) != 0)
      {
        v6 &= 5u;
      }

      if ((v2 & 0x800000) != 0)
      {
        v7 = v6 & 3;
      }

      else
      {
        v7 = v6;
      }

      v8 = a1[162];
      v8[27893] = 0;
      v8[27894] = 0;
      v8[27892] = v7 & 1;
      if ((v7 & 2) != 0)
      {
        v8[27893] = 1;
      }

      if (v7 >= 4)
      {
        v8[27894] = 1;
      }

      v8[45038] = 1;
    }

    if ((v2 & 0x100000) != 0)
    {
      v9 = a1[162];
      result = 0;
      *(v9 + 111588) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vp8e_set_temporal_layer_id(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 < 0 || v2 >= *(a1 + 432))
  {
    return 8;
  }

  result = 0;
  *(*(a1 + 1296) + 143140) = v2;
  return result;
}

uint64_t vp8e_set_roi_map(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *a2;
  return 8 * (vp8_set_roimap(*(a1 + 1296), *(v2 + 8), *(v2 + 16), *(v2 + 20), (v2 + 24), (v2 + 56), (v2 + 152)) != 0);
}

uint64_t vp8e_set_activemap(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 1296);
  v4 = *(v2 + 8);
  if (*(v3 + 111076) != v4)
  {
    return 8;
  }

  v5 = *(v2 + 12);
  if (*(v3 + 111080) != v5)
  {
    return 8;
  }

  v6 = v3 + 139264;
  v7 = v6 + 3816;
  if (*v2)
  {
    memcpy(*v7, *v2, (v5 * v4));
    result = 0;
    *(v7 + 8) = 1;
  }

  else
  {
    result = 0;
    *(v6 + 3824) = 0;
  }

  return result;
}

uint64_t vp8e_set_scalemode(uint64_t a1, int **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *v2;
  if (*v2 > 3)
  {
    return 8;
  }

  v4 = v2[1];
  v5 = *(a1 + 1296) + 106496;
  *(*(a1 + 1296) + 109864) = v3;
  if (v4 > 3)
  {
    return 8;
  }

  *(v5 + 3372) = v4;
  *(a1 + 1456) |= 1u;
  return 0;
}

uint64_t set_cpu_used(uint64_t a1, int *a2)
{
  v3 = *(a1 + 736);
  v10 = *(a1 + 720);
  v11 = v3;
  v4 = *(a1 + 768);
  v12 = *(a1 + 752);
  v13 = v4;
  __dst[0] = a2 + 2;
  v5 = *a2;
  if (*a2 >= 16)
  {
    v5 = 16;
  }

  if (v5 <= -16)
  {
    v5 = -16;
  }

  DWORD2(v10) = v5;
  result = validate_config(a1, (a1 + 216), &v10, 0);
  if (!result)
  {
    v7 = v11;
    *(a1 + 720) = v10;
    *(a1 + 736) = v7;
    v8 = v13;
    *(a1 + 752) = v12;
    *(a1 + 768) = v8;
    v9 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = v12;
    v14[3] = v13;
    set_vp8e_config(a1 + 816, __dst, v14, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v9;
  }

  return result;
}

uint64_t set_noise_sensitivity(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  LODWORD(v10) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_enable_auto_alt_ref(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  HIDWORD(v9) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_sharpness(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  DWORD1(v10) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_static_thresh(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  DWORD2(v10) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_token_partitions(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  HIDWORD(v10) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t get_quantizer(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(a1 + 1296) + 111104);
  return result;
}

uint64_t get_quantizer64(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = 0;
  while (q_trans[v2] < *(*(a1 + 1296) + 111104))
  {
    if (++v2 == 64)
    {
      LODWORD(v2) = 63;
      break;
    }
  }

  result = 0;
  **a2 = v2;
  return result;
}

uint64_t set_arnr_max_frames(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  LODWORD(v11) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_arnr_strength(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  DWORD1(v11) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_arnr_type(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  DWORD2(v11) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_tuning(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  HIDWORD(v11) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_cq_level(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  LODWORD(v12) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_rc_max_intra_bitrate_pct(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  DWORD1(v12) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t set_screen_content_mode(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  HIDWORD(v12) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t ctrl_set_rc_gf_cbr_boost_pct(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 736);
  v9 = *(a1 + 720);
  v10 = v3;
  v4 = *(a1 + 768);
  v11 = *(a1 + 752);
  v12 = v4;
  __dst[0] = a2 + 2;
  DWORD2(v12) = *a2;
  result = validate_config(a1, (a1 + 216), &v9, 0);
  if (!result)
  {
    v6 = v10;
    *(a1 + 720) = v9;
    *(a1 + 736) = v6;
    v7 = v12;
    *(a1 + 752) = v11;
    *(a1 + 768) = v7;
    v8 = result;
    memcpy(__dst, (a1 + 216), sizeof(__dst));
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    set_vp8e_config(a1 + 816, __dst, v13, 0);
    vp8_change_config(*(a1 + 1296), (a1 + 816));
    return v8;
  }

  return result;
}

uint64_t ctrl_set_rtc_external_ratectrl(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 1296);
  if (*a2)
  {
    *(v2 + 143092) = 0;
    *(v2 + 180156) = 1;
  }

  return 0;
}

uint64_t vp8_init(void *a1)
{
  vp8_rtcd();
  vpx_dsp_rtcd();
  vpx_scale_rtcd();
  if (a1[6])
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x347uLL, 0xD93B561uLL);
  if (!v3)
  {
    return 2;
  }

  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v4 - 8) = v3;
  if (!v4)
  {
    return 2;
  }

  bzero(((v3 + 23) & 0xFFFFFFFFFFFFFFF0), 0x330uLL);
  a1[6] = v4;
  *(v4 + 8) = a1[4];
  *(v4 + 228) = 16;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  v5 = a1[5];
  if (v5)
  {
    v6 = *(v5 + 8);
    *(v4 + 216) = *v5;
    v7 = v4 + 216;
    *(v7 + 8) = v6;
    a1[5] = v7;
  }

  result = 0;
  v8 = a1[6];
  v8[175] = 0;
  v8[174] = v8[2] & 0x40000;
  return result;
}

uint64_t vp8_destroy(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    vp8_decoder_remove_threads(*(a1 + 432));
    vp8_de_alloc_frame_buffers(v2 + 4384);
    free(*(v2 - 8));
    *(a1 + 432) = 0;
  }

  free(*(a1 - 8));
  return 0;
}

uint64_t vp8_peek_si(_BYTE *a1, unsigned int a2, _DWORD *a3)
{
  if (!a2)
  {
    return 8;
  }

  a3[3] = 0;
  if (a2 < 0xA)
  {
    return 5;
  }

  if (*a1)
  {
    return 5;
  }

  a3[3] = 1;
  if (a1[3] != 157 || a1[4] != 1 || a1[5] != 42)
  {
    return 5;
  }

  v3 = a1[6] | ((a1[7] & 0x3F) << 8);
  a3[1] = v3;
  v4 = a1[8] | ((a1[9] & 0x3F) << 8);
  a3[2] = v4;
  if (v4 && v3)
  {
    return 0;
  }

  a3[1] = 0;
  a3[2] = 0;
  return 7;
}

uint64_t vp8_get_si(uint64_t a1, _OWORD *a2)
{
  *a2 = *(a1 + 228);
  *a2 = 16;
  return 0;
}

uint64_t vp8_decode(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v4 = *(a1 + 696);
  if (a2 || (v5 = 0, v4 | a3))
  {
    decoder_instances = 0;
    v6 = *(a1 + 700);
    if (v6)
    {
      if (a2)
      {
        v7 = 0;
      }

      else
      {
        v7 = a3 == 0;
      }

      v8 = v7;
      if (v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(a1 + 768) = 0;
      *(a1 + 736) = 0u;
      *(a1 + 752) = 0u;
      *(a1 + 704) = 0u;
      *(a1 + 720) = 0u;
      *(a1 + 808) = 0;
      *(a1 + 776) = 0u;
      *(a1 + 792) = 0u;
      if (a2)
      {
        v9 = 0;
      }

      else
      {
        v9 = a3 == 0;
      }

      v8 = v9;
      if (v4)
      {
LABEL_11:
        if ((v8 & 1) == 0)
        {
          if (v6 < 9)
          {
            *(a1 + 8 * v6 + 704) = a2;
            *(a1 + 4 * v6 + 776) = a3;
            *(a1 + 700) = v6 + 1;
          }

          else
          {
            *(a1 + 700) = 0;
            return 8;
          }

          return decoder_instances;
        }

        goto LABEL_23;
      }
    }

    if (v8)
    {
      return decoder_instances;
    }

    *(a1 + 704) = a2;
    *(a1 + 776) = a3;
    *(a1 + 700) = 1;
LABEL_23:
    HIDWORD(v75) = *(a1 + 232);
    LODWORD(v75) = *(a1 + 236);
    v10 = *(a1 + 776);
    if (!v10)
    {
      decoder_instances = 8;
      goto LABEL_43;
    }

    v11 = a4;
    v12 = *(a1 + 272);
    if (v12)
    {
      if (v10 >= 0xA)
      {
        v13 = 10;
      }

      else
      {
        v13 = v10;
      }

      v14 = a1;
      v12(*(a1 + 280), *(a1 + 704), v78, v13);
      a1 = v14;
      v15 = v78;
      *(v14 + 240) = 0;
      if (v10 >= 0xA)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v15 = *(a1 + 704);
      *(a1 + 240) = 0;
      if (v10 >= 0xA)
      {
LABEL_29:
        a4 = v11;
        if ((*v15 & 1) == 0)
        {
          *(a1 + 240) = 1;
          if (v15[3] == 157 && v15[4] == 1 && v15[5] == 42)
          {
            v16 = v15[6] | ((v15[7] & 0x3F) << 8);
            *(a1 + 232) = v16;
            v17 = v15[8] | ((v15[9] & 0x3F) << 8);
            *(a1 + 236) = v17;
            if (v17 && v16)
            {
              decoder_instances = 0;
            }

            else
            {
              *(a1 + 232) = 0;
              decoder_instances = 7;
            }

            goto LABEL_43;
          }
        }

        decoder_instances = 5;
LABEL_41:
        if (!*(a1 + 240))
        {
          decoder_instances = 0;
        }

LABEL_43:
        if (*(a1 + 244))
        {
          if (!decoder_instances && !v75 && !*(a1 + 236) && !*(a1 + 232))
          {
            decoder_instances = 7;
            v18 = a1;
            v19 = a4;
            vpx_internal_error(*(a1 + 432) + 4384, 7, "Keyframe / intra-only frame required to reset decoder state");
            a4 = v19;
            a1 = v18;
          }
        }

        else if (!*(a1 + 240))
        {
          decoder_instances = 5;
        }

        if (*(a1 + 232) != __PAIR64__(v75, HIDWORD(v75)))
        {
          v76 = 1;
        }

        if (!decoder_instances && *(a1 + 248))
        {
          v21 = a4;
          v22 = a1;
          v23 = *(a1 + 432);
          if (setjmp(v23 + 1119))
          {
            v23[1118] = 0;
            vp8_decoder_remove_threads(v23);
            return 1;
          }

          v23[1118] = 1;
          v23[2709] = *(v22 + 216);
          vp8_decoder_create_threads(v23);
          if (atomic_load_explicit(v23 + 2708, memory_order_acquire))
          {
            vp8mt_alloc_temp_buffers(v23, v23[1552], v23[1857]);
          }

          a1 = v22;
          *(v22 + 248) = 0;
          v23[1118] = 0;
          a4 = v21;
        }

        v20 = *(a1 + 244);
        if (decoder_instances)
        {
          if (!v20)
          {
            goto LABEL_56;
          }
        }

        else if (!v20)
        {
          v24 = a4;
          v78[0] = *(a1 + 232);
          v78[1] = 9;
          v25 = *(a1 + 8);
          v79 = *(a1 + 216);
          v80 = v25 & 0x20000;
          if (!*(a1 + 252) && (v25 & 0x10000) != 0)
          {
            *(a1 + 256) = 0x40000000BLL;
            *(a1 + 264) = 0;
          }

          v26 = a1;
          decoder_instances = vp8_create_decoder_instances((a1 + 432), v78);
          a1 = v26;
          if (decoder_instances)
          {
            *(v26 + 232) = 0;
            v27 = *(v26 + 244);
          }

          else
          {
            *(v26 + 244) = 1;
            v27 = 1;
          }

          a4 = v24;
          if (!v27)
          {
LABEL_56:
            if (!decoder_instances)
            {
LABEL_73:
              v28 = a4;
              v29 = *(a1 + 432);
              if (!v76)
              {
LABEL_88:
                v61 = a1;
                if (setjmp((v29 + 4476)))
                {
                  *(v29 + 160 * *(v29 + 6900) + 6388) = 1;
                  v62 = *(v29 + 6896);
                  v63 = *(v29 + 6880 + 4 * v62);
                  if (v63 >= 1)
                  {
                    *(v29 + 6880 + 4 * v62) = v63 - 1;
                  }

                  *(v29 + 4472) = 0;
                  if (*(v29 + 11008))
                  {
                    *(v61 + 232) = 0;
                    *(v61 + 248) = 1;
                  }

                  v64 = *(v29 + 4384);
                  if (v64)
                  {
                    v65 = 0;
                    if (*(v29 + 4388))
                    {
                      v65 = v29 + 4392;
                    }

                    *v61 = v65;
                  }

                  return v64;
                }

                else
                {
                  *(v29 + 4472) = 1;
                  v66 = *(v61 + 696);
                  v67 = *(v61 + 712);
                  v68 = *(v61 + 744);
                  *(v29 + 10744) = *(v61 + 728);
                  *(v29 + 10760) = v68;
                  *(v29 + 10712) = v66;
                  *(v29 + 10728) = v67;
                  v69 = *(v61 + 760);
                  v70 = *(v61 + 776);
                  v71 = *(v61 + 792);
                  *(v29 + 10824) = *(v61 + 808);
                  *(v29 + 10792) = v70;
                  *(v29 + 10808) = v71;
                  *(v29 + 10776) = v69;
                  *(v29 + 11008) = 0;
                  *(v61 + 688) = v28;
                  if (vp8dx_receive_compressed_data(v29))
                  {
                    v72 = *(v29 + 4384);
                    if (v72)
                    {
                      v73 = 0;
                      if (*(v29 + 4388))
                      {
                        v73 = v29 + 4392;
                      }

                      *v61 = v73;
                    }

                    decoder_instances = v72;
                  }

                  *(v61 + 700) = 0;
                  *(v29 + 4472) = 0;
                }

                return decoder_instances;
              }

              v30 = a1;
              *(v29 + 6208) = *(a1 + 232);
              if (setjmp((v29 + 4476)))
              {
                *(v29 + 4472) = 0;
                *(v30 + 232) = 0;
                return 0xFFFFFFFFLL;
              }

              *(v29 + 4472) = 1;
              if (*(v29 + 6208) <= 0)
              {
                *(v29 + 6208) = HIDWORD(v75);
                vpx_internal_error(v29 + 4384, 7, "Invalid frame width");
                if (*(v29 + 6212) > 0)
                {
LABEL_78:
                  if (!atomic_load_explicit((v29 + 10832), memory_order_acquire))
                  {
LABEL_80:
                    if (vp8_alloc_frame_buffers(v29 + 4384, *(v29 + 6208), *(v29 + 6212)))
                    {
                      vpx_internal_error(v29 + 4384, 2, "Failed to allocate frame buffers");
                    }

                    v31 = (v29 + 6240 + 160 * *(v29 + 6900));
                    v32 = *v31;
                    *(v29 + 3568) = v31[1];
                    *(v29 + 3552) = v32;
                    v33 = v31[4];
                    *(v29 + 3632) = v31[5];
                    *(v29 + 3616) = v33;
                    v34 = v31[2];
                    *(v29 + 3600) = v31[3];
                    *(v29 + 3584) = v34;
                    v36 = v31[8];
                    v35 = v31[9];
                    v37 = v31[6];
                    *(v29 + 3664) = v31[7];
                    *(v29 + 3648) = v37;
                    *(v29 + 3680) = v36;
                    *(v29 + 3696) = v35;
                    v38 = (v29 + 6240 + 160 * *(v29 + 6896));
                    v39 = v38[1];
                    *(v29 + 3712) = *v38;
                    *(v29 + 3728) = v39;
                    v41 = v38[4];
                    v40 = v38[5];
                    v42 = v38[3];
                    *(v29 + 3744) = v38[2];
                    *(v29 + 3760) = v42;
                    v44 = v38[8];
                    v43 = v38[9];
                    v45 = v38[7];
                    *(v29 + 3808) = v38[6];
                    *(v29 + 3824) = v45;
                    *(v29 + 3840) = v44;
                    *(v29 + 3856) = v43;
                    *(v29 + 3776) = v41;
                    *(v29 + 3792) = v40;
                    if (*(v29 + 10848) >= 1)
                    {
                      v46 = *(v29 + 10928);
                      v47 = 0;
                      v48 = 0;
                      do
                      {
                        v49 = (v46 + v48);
                        v50 = (v29 + 6240 + 160 * *(v29 + 6896));
                        v51 = *v50;
                        v49[233] = v50[1];
                        v49[232] = v51;
                        v52 = v50[2];
                        v53 = v50[3];
                        v54 = v50[4];
                        v49[237] = v50[5];
                        v49[236] = v54;
                        v49[235] = v53;
                        v49[234] = v52;
                        v55 = v50[6];
                        v56 = v50[7];
                        v57 = v50[8];
                        v49[241] = v50[9];
                        v49[240] = v57;
                        v49[239] = v56;
                        v49[238] = v55;
                        v46 = *(v29 + 10928);
                        v58 = (v46 + v48);
                        v59 = *(v46 + v48 + 3728);
                        v58[544] = 0;
                        v58[558] = 4;
                        v58[572] = 8;
                        v58[586] = 12;
                        v58[600] = 4 * v59;
                        v58[614] = 4 * v59 + 4;
                        v58[628] = 4 * v59 + 8;
                        v58[642] = 4 * v59 + 12;
                        v58[656] = 8 * v59;
                        v58[670] = (8 * v59) | 4;
                        v58[684] = 8 * v59 + 8;
                        v58[698] = 8 * v59 + 12;
                        v59 *= 12;
                        v58[712] = v59;
                        v58[726] = v59 + 4;
                        v58[740] = v59 + 8;
                        v58[754] = v59 + 12;
                        v60 = *(v46 + v48 + 3748);
                        v58[768] = 0;
                        v58[824] = 0;
                        v58[782] = 4;
                        v58[838] = 4;
                        v60 *= 4;
                        v58[796] = v60;
                        v58[852] = v60;
                        v60 += 4;
                        v58[810] = v60;
                        v58[866] = v60;
                        ++v47;
                        v48 += 4352;
                      }

                      while (v47 < *(v29 + 10848));
                    }

                    vp8_build_block_doffsets(v29);
                    if (atomic_load_explicit((v29 + 10832), memory_order_acquire))
                    {
                      vp8mt_alloc_temp_buffers(v29, *(v29 + 6208), 0);
                    }

                    *(v29 + 4472) = 0;
                    *(v29 + 6880) = 0;
                    a1 = v30;
                    goto LABEL_88;
                  }

LABEL_79:
                  vp8mt_de_alloc_temp_buffers(v29, *(v29 + 7428));
                  goto LABEL_80;
                }
              }

              else if (*(v29 + 6212) > 0)
              {
                goto LABEL_78;
              }

              *(v29 + 6212) = v75;
              vpx_internal_error(v29 + 4384, 7, "Invalid frame height", v75);
              if (!atomic_load_explicit((v29 + 10832), memory_order_acquire))
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            return decoder_instances;
          }
        }

        *(*(a1 + 432) + 10992) = *(a1 + 272);
        if (!decoder_instances)
        {
          goto LABEL_73;
        }

        return decoder_instances;
      }
    }

    a4 = v11;
    decoder_instances = 5;
    goto LABEL_41;
  }

  return v5;
}

double vp8_get_frame(uint64_t a1, void *a2, double result, int32x4_t a4, double a5, double a6, double a7, double a8, int8x16_t a9, int32x4_t a10)
{
  if (!*a2)
  {
    v12 = *(a1 + 432);
    if (v12)
    {
      v34 = v10;
      v35 = v11;
      result = 0.0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0u;
      v21 = 0.0;
      v22 = 0;
      v24 = 0;
      v23 = 0;
      if (*(a1 + 10))
      {
        result = *(a1 + 256);
        v21 = result;
        LODWORD(v22) = *(a1 + 264);
      }

      if (*(v12 + 10964) != 1 && *(v12 + 7416))
      {
        *(v12 + 10964) = 1;
        if (!vp8_post_proc_frame(v12 + 4384, &v25, &v21, result, a4, a5, a6, a7, a8, a9, a10))
        {
          v15 = *(a1 + 688);
          *(a1 + 288) = 258;
          v17 = v25;
          v16 = DWORD1(v25);
          *(a1 + 304) = (DWORD1(v25) + 79) & 0xFFFFFFF0;
          v18 = v26;
          v19 = DWORD1(v27);
          *(a1 + 300) = v26;
          *(a1 + 320) = v17;
          *(a1 + 312) = v17;
          *(a1 + 324) = v16;
          *(a1 + 316) = v16;
          *(a1 + 328) = 0x100000001;
          result = *(v28 + 1);
          *(a1 + 336) = *(v28 + 8);
          v20 = *(&v29 + 1);
          *(a1 + 352) = *(&v28[1] + 1);
          *(a1 + 360) = 0;
          *(a1 + 368) = v18;
          *(a1 + 372) = v19;
          *(a1 + 376) = v19;
          *(a1 + 380) = v18;
          *(a1 + 308) = 8;
          *(a1 + 384) = 12;
          *(a1 + 392) = v15;
          *(a1 + 400) = v20;
          *(a1 + 408) = 0;
          *a2 = a1 + 288;
        }
      }
    }
  }

  return result;
}

uint64_t vp8_set_reference(uint64_t a1, uint64_t *a2)
{
  v16 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *&v10[16] = 0u;
  v11 = 0u;
  *&v9[12] = 0u;
  *v10 = 0u;
  *&v10[8] = *(v2 + 56);
  *&v10[24] = *(v2 + 72);
  v3.i64[0] = *(v2 + 32);
  v4 = *(v2 + 88);
  *&v9[16] = *(v2 + 92);
  v3.i64[1] = v3.i64[0];
  v5.i64[0] = 0x100000001;
  v5.i64[1] = 0x100000001;
  v7 = v3;
  *v9 = vshrq_n_u32(vaddq_s32(v3, v5), 1uLL);
  v8 = v4;
  DWORD2(v12) = (v4 - v3.i32[0]) >> 1;
  return vp8dx_set_reference(*(a1 + 432), *v2, v7.i32);
}

uint64_t vp8_get_reference(uint64_t a1, void *a2)
{
  v21 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *&v15[16] = 0u;
  v16 = 0u;
  *&v14[16] = 0u;
  *v15 = 0u;
  *&v15[8] = *(v2 + 14);
  *&v15[24] = *(v2 + 9);
  v3 = *(v2 + 4);
  v4.i64[0] = v3;
  v4.i64[1] = v3;
  v5.i64[0] = 0x100000001;
  v5.i64[1] = 0x100000001;
  v6 = vshrq_n_u32(vaddq_s32(v4, v5), 1uLL);
  v13 = v4;
  *v14 = 0;
  *&v14[4] = v6;
  v7 = v2[23];
  *v14 = v2[22];
  *&v14[20] = v7;
  DWORD2(v17) = (*v14 - v3) >> 1;
  v8 = *(a1 + 432);
  v9 = *v2;
  switch(v9)
  {
    case 1:
      v10 = 6900;
      break;
    case 4:
      v10 = 6908;
      break;
    case 2:
      v10 = 6904;
      break;
    default:
      vpx_internal_error(v8 + 4384, 1, "Invalid reference frame", *&v13, *v14, *&v14[16], *v15, *&v15[16], v16, v17, v18, v19, v20);
      return *(v8 + 4384);
  }

  v12 = v8 + 160 * *(v8 + v10);
  if (*(v12 + 6240) == v3 && *(v12 + 6260) == v6.i64[0])
  {
    vp8_yv12_copy_frame_c((v12 + 6240), &v13);
    return *(v8 + 4384);
  }

  vpx_internal_error(v8 + 4384, 1, "Incorrect buffer dimensions", *&v13, *v14, *&v14[16], *v15, *&v15[16], v16, v17, v18, v19, v20);
  return *(v8 + 4384);
}

uint64_t vp8_set_postproc(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  *(a1 + 252) = 1;
  v5 = *v2;
  *(a1 + 264) = *(v2 + 2);
  *(a1 + 256) = v5;
  return result;
}

uint64_t vp8_get_last_ref_updates(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 432);
  if (!v2)
  {
    return 7;
  }

  result = 0;
  **a2 = 2 * v2[1981] + 4 * v2[1982] + v2[1980];
  return result;
}

uint64_t vp8_get_frame_corrupted(uint64_t a1, void *a2)
{
  v2 = *(a1 + 432);
  if (*a2)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 8;
  }

  v5 = *(v2 + 6232);
  if (!v5)
  {
    return 1;
  }

  result = 0;
  **a2 = *(v5 + 148);
  return result;
}

uint64_t vp8_get_last_ref_frame(uint64_t a1, int **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 432);
  if (!v3)
  {
    return 7;
  }

  v4 = *(v3 + 7428);
  if (v4 < 1 || (v5 = *(v3 + 7432), v5 < 1))
  {
    v13 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(v3 + 7488);
    v8 = 76 * (v5 - 1);
    while (2)
    {
      v9 = 2;
      v10 = *(v3 + 7432);
      do
      {
        if (*(v7 + v9) == 3)
        {
          v11 = 4;
          goto LABEL_16;
        }

        v9 += 76;
        --v10;
      }

      while (v10);
      v7 += v8 + 152;
      if (++v6 != v4)
      {
        continue;
      }

      break;
    }

    v11 = 0;
LABEL_16:
    v14 = 0;
    v15 = *(v3 + 7488);
    while (2)
    {
      v16 = 2;
      v17 = *(v3 + 7432);
      do
      {
        if (*(v15 + v16) == 2)
        {
          v18 = 2;
          goto LABEL_23;
        }

        v16 += 76;
        --v17;
      }

      while (v17);
      v15 += v8 + 152;
      if (++v14 != v4)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_23:
    v19 = 0;
    v13 = v18 | v11;
    v20 = *(v3 + 7488);
    while (2)
    {
      v21 = 2;
      v22 = v5;
      do
      {
        if (*(v20 + v21) == 1)
        {
          result = 0;
          *v2 = v13 | 1;
          return result;
        }

        v21 += 76;
        --v22;
      }

      while (v22);
      v20 += v8 + 152;
      if (++v19 != v4)
      {
        continue;
      }

      break;
    }
  }

  result = 0;
  *v2 = v13;
  return result;
}

uint64_t vp8_get_quantizer(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 432);
  if (!v2)
  {
    return 7;
  }

  result = 0;
  **a2 = *(v2 + 7456);
  return result;
}

uint64_t vp8_set_decryptor(uint64_t a1, _OWORD **a2)
{
  if (*a2)
  {
    *(a1 + 272) = **a2;
  }

  else
  {
    *(a1 + 272) = 0u;
  }

  return 0;
}

double vp8_loop_filter_init(uint64_t a1)
{
  v1 = (a1 + 3124);
  v2 = *(a1 + 3532);
  v3 = v2 > 4;
  v4 = v2 > 0;
  v5 = 0;
  v6 = 0;
  if (v2 <= 0)
  {
    do
    {
      v10 = v5 >> v4 >> v3;
      if (v10 <= 1)
      {
        LOBYTE(v10) = 1;
      }

      v1[128] = v10;
      v11 = v6 + v10;
      v1[64] = v11;
      *v1++ = v11 + 4;
      v6 += 2;
      ++v5;
    }

    while (v6 != 128);
  }

  else
  {
    v7 = 9 - v2;
    do
    {
      v8 = v5 >> v4 >> v3;
      if (v8 >= v7)
      {
        v8 = v7;
      }

      if (v8 <= 1)
      {
        LOBYTE(v8) = 1;
      }

      v1[128] = v8;
      v9 = v6 + v8;
      v1[64] = v9;
      *v1++ = v9 + 4;
      v6 += 2;
      ++v5;
    }

    while (v6 != 128);
  }

  v12 = 0;
  *(a1 + 3528) = *(a1 + 3532);
  do
  {
    v13 = a1 + v12;
    if (v12 >= 0x28)
    {
      *(v13 + 3384) = 2;
      *(v13 + 3448) = 3;
    }

    else if (v12 < 0x14)
    {
      if (v12 < 0xF)
      {
        *(v13 + 3384) = 0;
        *(v13 + 3448) = 0;
      }

      else
      {
        *(v13 + 3384) = 1;
        *(v13 + 3448) = 1;
      }
    }

    else
    {
      *(v13 + 3384) = 1;
      *(v13 + 3448) = 2;
    }

    ++v12;
  }

  while (v12 != 64);
  *(a1 + 3512) = 16843009;
  *(a1 + 3516) = 16908800;
  *(a1 + 3520) = 770;
  *&result = 50462976;
  *(a1 + 3316) = 50462976;
  return result;
}

uint64_t vp8_loop_filter_frame_init(uint64_t result, _BYTE *a2, int a3)
{
  v3 = *(result + 3532);
  if (*(result + 3528) != v3)
  {
    v4 = (result + 3124);
    v5 = v3 > 4;
    v6 = v3 > 0;
    v7 = 0;
    v8 = 0;
    if (v3 <= 0)
    {
      do
      {
        v12 = v7 >> v6 >> v5;
        if (v12 <= 1)
        {
          LOBYTE(v12) = 1;
        }

        v4[128] = v12;
        v13 = v8 + v12;
        v4[64] = v13;
        *v4++ = v13 + 4;
        v8 += 2;
        ++v7;
      }

      while (v8 != 128);
    }

    else
    {
      v9 = 9 - v3;
      do
      {
        v10 = v7 >> v6 >> v5;
        if (v10 >= v9)
        {
          v10 = v9;
        }

        if (v10 <= 1)
        {
          LOBYTE(v10) = 1;
        }

        v4[128] = v10;
        v11 = v8 + v10;
        v4[64] = v11;
        *v4++ = v11 + 4;
        v8 += 2;
        ++v7;
      }

      while (v8 != 128);
    }

    *(result + 3528) = *(result + 3532);
  }

  v14 = 0;
  v15 = result + 3320;
  do
  {
    while (1)
    {
      v30 = a3;
      if (a2[3968])
      {
        if (a2[3971] == 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = a3;
        }

        v32 = v31 + a2[v14 + 3979];
        if (v32 >= 63)
        {
          v32 = 63;
        }

        v30 = v32 & ~(v32 >> 31);
      }

      if (a2[3983])
      {
        break;
      }

      v33 = 0x101010101010101 * v30;
      *v15 = v33;
      *(v15 + 8) = v33;
      v15 += 16;
      if (++v14 == 4)
      {
        return result;
      }
    }

    v16 = v30 + a2[3989];
    v17 = v16 + a2[3997];
    if (v17 >= 63)
    {
      v17 = 63;
    }

    *v15 = v17 & ~(v17 >> 31);
    if (v16 >= 63)
    {
      v16 = 63;
    }

    *(v15 + 1) = v16 & ~(v16 >> 31);
    v18 = v30 + a2[3990];
    v19 = v18 + a2[3998];
    if (v19 >= 63)
    {
      v19 = 63;
    }

    *(v15 + 5) = v19 & ~(v19 >> 31);
    v20 = v18 + a2[3999];
    if (v20 >= 63)
    {
      v20 = 63;
    }

    *(v15 + 6) = v20 & ~(v20 >> 31);
    v21 = v18 + a2[4000];
    if (v21 >= 63)
    {
      v21 = 63;
    }

    *(v15 + 7) = v21 & ~(v21 >> 31);
    v22 = v30 + a2[3991];
    v23 = v22 + a2[3998];
    if (v23 >= 63)
    {
      v23 = 63;
    }

    *(v15 + 9) = v23 & ~(v23 >> 31);
    v24 = v22 + a2[3999];
    if (v24 >= 63)
    {
      v24 = 63;
    }

    *(v15 + 10) = v24 & ~(v24 >> 31);
    v25 = v22 + a2[4000];
    if (v25 >= 63)
    {
      v25 = 63;
    }

    *(v15 + 11) = v25 & ~(v25 >> 31);
    v26 = v30 + a2[3992];
    v27 = v26 + a2[3998];
    if (v27 >= 63)
    {
      v27 = 63;
    }

    *(v15 + 13) = v27 & ~(v27 >> 31);
    v28 = v26 + a2[3999];
    if (v28 >= 63)
    {
      v28 = 63;
    }

    *(v15 + 14) = v28 & ~(v28 >> 31);
    v29 = v26 + a2[4000];
    if (v29 >= 63)
    {
      v29 = 63;
    }

    *(v15 + 15) = v29 & ~(v29 >> 31);
    ++v14;
    v15 += 16;
  }

  while (v14 != 4);
  return result;
}

void vp8_loop_filter_row_normal(uint64_t a1, unsigned __int8 *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 3048) >= 1)
  {
    v8 = a8;
    v57 = a1 + 3320;
    v58 = a1 + 3512;
    v12 = *a2;
    v14 = v12 != 4 && v12 != 9 && a2[9] != 0;
    v56 = a1 + 3124;
    v53 = a1 + 3188;
    v55 = a1 + 3252;
    v61 = a1 + 3316;
    v15 = *(v57 + 16 * a2[11] + 4 * a2[2] + *(v58 + *a2));
    v52 = a1 + 3384 + (*(a1 + 3028) << 6);
    if (*(v57 + 16 * a2[11] + 4 * a2[2] + *(v58 + *a2)))
    {
      v16 = *(v52 + v15);
      if (!v14)
      {
        v17 = *(v53 + v15);
        v18 = *(v55 + v15);
        v19 = *(v61 + v16);
        v64 = *(v52 + v15);
        vp8_loop_filter_vertical_edge_y_neon(a6 + 4, a4, v17, v18, v19);
        vp8_loop_filter_vertical_edge_y_neon(a6 + 8, a4, v17, v18, v19);
        v8 = a8;
        v16 = v64;
        vp8_loop_filter_vertical_edge_y_neon(a6 + 12, a4, v17, v18, v19);
        if (a7)
        {
          vp8_loop_filter_vertical_edge_uv_neon(a7 + 4, a5, v17, v18, v19, v8 + 4);
        }
      }

      if (a3 >= 1)
      {
        v21 = *(v56 + v15);
        v22 = *(v55 + v15);
        v23 = *(v61 + v16);
        vp8_mbloop_filter_horizontal_edge_y_neon(a6, a4, v21, v22, v23);
        if (a7)
        {
          vp8_mbloop_filter_horizontal_edge_uv_neon(a7, a5, v21, v22, v23, v8);
        }
      }

      if (!v14)
      {
        v24 = *(v53 + v15);
        v25 = *(v55 + v15);
        v26 = *(v61 + v16);
        v27 = a4;
        vp8_loop_filter_horizontal_edge_y_neon(a6 + 4 * a4, a4, v24, v25, v26);
        vp8_loop_filter_horizontal_edge_y_neon(a6 + 8 * v27, v27, v24, v25, v26);
        vp8_loop_filter_horizontal_edge_y_neon(a6 + 12 * v27, v27, v24, v25, v26);
        if (a7)
        {
          vp8_loop_filter_horizontal_edge_uv_neon(a7 + 4 * a5, a5, v24, v25, v26, v8 + 4 * a5);
        }
      }
    }

    v28 = v55;
    if (*(a1 + 3048) >= 2)
    {
      v29 = v8;
      v30 = a2 + 87;
      v31 = a6 + 28;
      v32 = a7 + 8;
      v33 = v29 + 8;
      v34 = 1;
      do
      {
        v35 = *(v30 - 11);
        v65 = v35 != 4 && v35 != 9 && *(v30 - 2) != 0;
        v37 = *(v58 + *(v30 - 11));
        v38 = v57 + 16 * *v30 + 4 * *(v30 - 9);
        v39 = *(v38 + v37);
        if (*(v38 + v37))
        {
          v40 = *(v56 + v39);
          v41 = *(v28 + v39);
          v60 = *(v52 + v39);
          v42 = *(v61 + v60);
          vp8_mbloop_filter_vertical_edge_y_neon(v31 - 12, a4, v40, v41, v42);
          vp8_mbloop_filter_vertical_edge_uv_neon(v32, a5, v40, v41, v42, v33);
          if (!v65)
          {
            v43 = *(v53 + v39);
            v44 = *(v28 + v39);
            v45 = *(v61 + v60);
            vp8_loop_filter_vertical_edge_y_neon(v31 - 8, a4, v43, v44, v45);
            vp8_loop_filter_vertical_edge_y_neon(v31 - 4, a4, v43, v44, v45);
            v28 = v55;
            vp8_loop_filter_vertical_edge_y_neon(v31, a4, v43, v44, v45);
            vp8_loop_filter_vertical_edge_uv_neon(v32 + 4, a5, v43, v44, v45, v33 + 4);
          }

          if (a3 >= 1)
          {
            v46 = *(v56 + v39);
            v47 = *(v28 + v39);
            v48 = *(v61 + v60);
            vp8_mbloop_filter_horizontal_edge_y_neon(v31 - 12, a4, v46, v47, v48);
            vp8_mbloop_filter_horizontal_edge_uv_neon(v32, a5, v46, v47, v48, v33);
          }

          if (!v65)
          {
            v49 = *(v53 + v39);
            v50 = *(v28 + v39);
            v51 = *(v61 + v60);
            vp8_loop_filter_horizontal_edge_y_neon(v31 + 4 * a4 - 12, a4, v49, v50, v51);
            vp8_loop_filter_horizontal_edge_y_neon(v31 + 8 * a4 - 12, a4, v49, v50, v51);
            v28 = v55;
            vp8_loop_filter_horizontal_edge_y_neon(v31 + 12 * a4 - 12, a4, v49, v50, v51);
            vp8_loop_filter_horizontal_edge_uv_neon(v32 + 4 * a5, a5, v49, v50, v51, v33 + 4 * a5);
          }
        }

        v30 += 76;
        ++v34;
        v31 += 16;
        v32 += 8;
        v33 += 8;
      }

      while (v34 < *(a1 + 3048));
    }
  }
}

void vp8_loop_filter_row_simple(uint64_t a1, unsigned __int8 *a2, int a3, int a4, int8x16_t *a5)
{
  v5 = *(a1 + 3048);
  if (v5 < 1)
  {
    return;
  }

  v107 = a1 + 3124;
  v108 = a1 + 3512;
  v8 = a1 + 3320;
  v103 = a1 + 3188;
  v9 = *a2;
  if (a3 > 0)
  {
    v12 = v9 != 4 && v9 != 9 && a2[9] != 0;
    v13 = *(v108 + v9);
    v14 = v8 + 16 * a2[11] + 4 * a2[2];
    v15 = *(v14 + v13);
    if (*(v14 + v13))
    {
      if (!v12)
      {
        v32 = a2;
        v33 = a5;
        vp8_loop_filter_bvs_neon(a5, a4, (v103 + v15));
        v34 = (v107 + v15);
        v35 = vld1q_dup_s8(v34);
        v36 = (v33 - 2 * a4);
        v37 = *v36;
        v38 = (v36 + a4);
        v39 = *v38;
        v40 = &v38->i8[a4];
        v41 = *(v40 + a4);
        v42 = vabdq_u8(v39, *v40);
        v43.i64[0] = 0x8080808080808080;
        v43.i64[1] = 0x8080808080808080;
        v44 = veorq_s8(v39, v43);
        v45 = veorq_s8(*v40, v43);
        v46 = vcgtq_u8(vqaddq_u8(vqaddq_u8(v42, v42), vshrq_n_u8(vabdq_u8(v37, v41), 1uLL)), v35);
        v47 = vqsubq_s8(veorq_s8(v37, v43), veorq_s8(v41, v43));
        v41.i64[0] = 0x303030303030303;
        v41.i64[1] = 0x303030303030303;
        v48 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v45.i8, 0x303030303030303), *v44.i8, 0x303030303030303), *v47.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v45, v41), v44, v41), v47)), v46);
        v49 = vqaddq_s8(v48, v41);
        v41.i64[0] = 0x404040404040404;
        v41.i64[1] = 0x404040404040404;
        *v33 = veorq_s8(vqsubq_s8(v45, vshrq_n_s8(vqaddq_s8(v48, v41), 3uLL)), v43);
        *(v33 - a4) = veorq_s8(vqaddq_s8(v44, vshrq_n_s8(v49, 3uLL)), v43);
        vp8_loop_filter_bhs_neon(v33, a4, (v103 + v15));
        a2 = v32;
        a5 = v33;
        if (*(a1 + 3048) < 2)
        {
          return;
        }

LABEL_21:
        v50 = 2 * a4;
        v106 = -2 * a4;
        i8 = a5[1].i8;
        v52 = a2 + 87;
        v104 = 2 * a4 - v50;
        v105 = 3 * a4 - v50;
        v53 = a4 - v50;
        v54 = 1;
        do
        {
          v68 = *(v52 - 11);
          v70 = v68 != 4 && v68 != 9 && *(v52 - 2) != 0;
          v71 = *(v108 + *(v52 - 11));
          v72 = v8 + 16 * *v52 + 4 * *(v52 - 9);
          v73 = *(v72 + v71);
          if (*(v72 + v71))
          {
            v74 = (v107 + v73);
            vp8_loop_filter_mbvs_neon(i8, a4, (v107 + v73));
            if (v70)
            {
              v55 = vld1q_dup_s8(v74);
              v56 = *&i8[v106];
              v57 = *&i8[v53];
              v58 = *&i8[v104];
              v59 = *&i8[v105];
              v60 = vabdq_u8(v57, v58);
              v61 = vqaddq_u8(vqaddq_u8(v60, v60), vshrq_n_u8(vabdq_u8(v56, v59), 1uLL));
              v62.i64[0] = 0x8080808080808080;
              v62.i64[1] = 0x8080808080808080;
              v63 = veorq_s8(v57, v62);
              v64 = veorq_s8(v58, v62);
              v65 = vqsubq_s8(veorq_s8(v56, v62), veorq_s8(v59, v62));
              v66.i64[0] = 0x303030303030303;
              v66.i64[1] = 0x303030303030303;
              v67 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v64.i8, 0x303030303030303), *v63.i8, 0x303030303030303), *v65.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v64, v66), v63, v66), v65)), vcgtq_u8(v61, v55));
              v59.i64[0] = 0x404040404040404;
              v59.i64[1] = 0x404040404040404;
              *i8 = veorq_s8(vqsubq_s8(v64, vshrq_n_s8(vqaddq_s8(v67, v59), 3uLL)), v62);
              *&i8[-a4] = veorq_s8(vqaddq_s8(v63, vshrq_n_s8(vqaddq_s8(v67, v66), 3uLL)), v62);
            }

            else
            {
              vp8_loop_filter_bvs_neon(i8, a4, (v103 + v73));
              v75 = vld1q_dup_s8(v74);
              v76 = *&i8[v106];
              v77 = *&i8[v53];
              v78 = *&i8[v104];
              v79 = *&i8[v105];
              v80 = vabdq_u8(v77, v78);
              v81 = vqaddq_u8(vqaddq_u8(v80, v80), vshrq_n_u8(vabdq_u8(v76, v79), 1uLL));
              v82.i64[0] = 0x8080808080808080;
              v82.i64[1] = 0x8080808080808080;
              v83 = veorq_s8(v77, v82);
              v84 = veorq_s8(v78, v82);
              v85 = vqsubq_s8(veorq_s8(v76, v82), veorq_s8(v79, v82));
              v86.i64[0] = 0x303030303030303;
              v86.i64[1] = 0x303030303030303;
              v87 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v84.i8, 0x303030303030303), *v83.i8, 0x303030303030303), *v85.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v84, v86), v83, v86), v85)), vcgtq_u8(v81, v75));
              v79.i64[0] = 0x404040404040404;
              v79.i64[1] = 0x404040404040404;
              *i8 = veorq_s8(vqsubq_s8(v84, vshrq_n_s8(vqaddq_s8(v87, v79), 3uLL)), v82);
              *&i8[-a4] = veorq_s8(vqaddq_s8(v83, vshrq_n_s8(vqaddq_s8(v87, v86), 3uLL)), v82);
              vp8_loop_filter_bhs_neon(i8, a4, (v103 + v73));
            }
          }

          v52 += 76;
          ++v54;
          i8 += 16;
        }

        while (v54 < *(a1 + 3048));
        return;
      }

      v16 = (v107 + v15);
      v17 = vld1q_dup_s8(v16);
      v18 = (a5 - 2 * a4);
      v19 = *v18;
      v20 = (v18 + a4);
      v21 = *v20;
      v22 = &v20->i8[a4];
      v23 = *(v22 + a4);
      v24 = vabdq_u8(v21, *v22);
      v25.i64[0] = 0x8080808080808080;
      v25.i64[1] = 0x8080808080808080;
      v26 = veorq_s8(v21, v25);
      v27 = veorq_s8(*v22, v25);
      v28 = vcgtq_u8(vqaddq_u8(vqaddq_u8(v24, v24), vshrq_n_u8(vabdq_u8(v19, v23), 1uLL)), v17);
      v29 = vqsubq_s8(veorq_s8(v19, v25), veorq_s8(v23, v25));
      v23.i64[0] = 0x303030303030303;
      v23.i64[1] = 0x303030303030303;
      v30 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v27.i8, 0x303030303030303), *v26.i8, 0x303030303030303), *v29.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v27, v23), v26, v23), v29)), v28);
      v31 = vqaddq_s8(v30, v23);
      v23.i64[0] = 0x404040404040404;
      v23.i64[1] = 0x404040404040404;
      *a5 = veorq_s8(vqsubq_s8(v27, vshrq_n_s8(vqaddq_s8(v30, v23), 3uLL)), v25);
      *(a5 - a4) = veorq_s8(vqaddq_s8(v26, vshrq_n_s8(v31, 3uLL)), v25);
    }

    if (*(a1 + 3048) < 2)
    {
      return;
    }

    goto LABEL_21;
  }

  v88 = v9 != 4 && v9 != 9 && a2[9] != 0;
  v89 = *(v108 + v9);
  v90 = v8 + 16 * a2[11] + 4 * a2[2];
  v91 = *(v90 + v89);
  if (*(v90 + v89) && !v88)
  {
    v92 = a2;
    v93 = a5;
    vp8_loop_filter_bvs_neon(a5, a4, (v103 + v91));
    vp8_loop_filter_bhs_neon(v93, a4, (v103 + v91));
    a2 = v92;
    a5 = v93;
    v5 = *(a1 + 3048);
  }

  if (v5 >= 2)
  {
    v94 = a2 + 87;
    v95 = a5[1].i8;
    v96 = 1;
    do
    {
      v97 = *(v94 - 11);
      v99 = v97 != 4 && v97 != 9 && *(v94 - 2) != 0;
      v100 = *(v108 + *(v94 - 11));
      v101 = v8 + 16 * *v94 + 4 * *(v94 - 9);
      v102 = *(v101 + v100);
      if (*(v101 + v100))
      {
        vp8_loop_filter_mbvs_neon(v95, a4, (v107 + v102));
        if (!v99)
        {
          vp8_loop_filter_bvs_neon(v95, a4, (v103 + v102));
          vp8_loop_filter_bhs_neon(v95, a4, (v103 + v102));
        }
      }

      ++v96;
      v94 += 76;
      v95 += 16;
    }

    while (v96 < *(a1 + 3048));
  }
}

void vp8_loop_filter_frame(uint64_t a1, _BYTE *a2, int a3)
{
  v5 = *(a1 + 1848);
  v170 = a1 + 3124;
  v6 = *(a1 + 3044);
  v147 = *(a1 + 3048);
  v7 = *(a1 + 3104);
  v8 = v5[4];
  v9 = v5[9];
  vp8_loop_filter_frame_init(a1, a2, *(a1 + 3524));
  v146 = v5;
  v10 = *(v5 + 7);
  v145 = v6;
  v173 = v8;
  if (*(a1 + 3120))
  {
    if (v6 >= 1 && v147 >= 1)
    {
      v11 = 0;
      v12 = a1 + 3512;
      v13 = a1 + 3320;
      v161 = a1 + 3188;
      v14 = 2 * v8;
      v155 = -2 * v8;
      v156 = 16 * v8;
      v154 = -v8;
      v171 = 16 - v8;
      v166 = 2 * v8 - v14 + 16;
      v168 = 3 * v8 - v14 + 16;
      v163 = v8 - v14 + 16;
      v164 = 16 - v14;
      while (1)
      {
        v15 = *v7;
        v159 = v11;
        v16 = v15 == 4 || v15 == 9;
        if (!v11)
        {
          v87 = !v16 && v7[9] != 0;
          v88 = *(v12 + v15);
          v89 = v13 + 16 * v7[11] + 4 * v7[2];
          v90 = *(v89 + v88);
          if (*(v89 + v88) && !v87)
          {
            vp8_loop_filter_bvs_neon(v10, v8, (v161 + v90));
            vp8_loop_filter_bhs_neon(v10, v8, (v161 + v90));
          }

          v37 = v7;
          v91 = v147 - 1;
          if (v147 != 1)
          {
            do
            {
              v37 = v7 + 76;
              v92 = v7[76];
              v94 = v92 != 4 && v92 != 9 && v7[85] != 0;
              v10 += 16;
              v95 = *(v12 + v7[76]);
              v96 = v13 + 16 * v7[87] + 4 * v7[78];
              v97 = *(v96 + v95);
              if (*(v96 + v95))
              {
                vp8_loop_filter_mbvs_neon(v10, v173, (v170 + v97));
                if (!v94)
                {
                  vp8_loop_filter_bvs_neon(v10, v173, (v161 + v97));
                  vp8_loop_filter_bhs_neon(v10, v173, (v161 + v97));
                }
              }

              v7 = v37;
              --v91;
            }

            while (v91);
          }

          goto LABEL_5;
        }

        v17 = !v16 && v7[9] != 0;
        v18 = *(v12 + v15);
        v19 = v13 + 16 * v7[11] + 4 * v7[2];
        v20 = *(v19 + v18);
        if (!*(v19 + v18))
        {
          goto LABEL_19;
        }

        if (v17)
        {
          break;
        }

        vp8_loop_filter_bvs_neon(v10, v8, (v161 + v20));
        v38 = (v170 + v20);
        v39 = vld1q_dup_s8(v38);
        v40 = *&v10[v155];
        v41 = &v10[v155 + v8];
        v42 = *v41;
        v43 = &v41->i8[v8];
        v44 = *(v43 + v8);
        v45 = vabdq_u8(v42, *v43);
        v46 = vqaddq_u8(vqaddq_u8(v45, v45), vshrq_n_u8(vabdq_u8(v40, v44), 1uLL));
        v47.i64[0] = 0x8080808080808080;
        v47.i64[1] = 0x8080808080808080;
        v48 = veorq_s8(v42, v47);
        v49 = veorq_s8(*v43, v47);
        v50 = vqsubq_s8(veorq_s8(v40, v47), veorq_s8(v44, v47));
        v51.i64[0] = 0x303030303030303;
        v51.i64[1] = 0x303030303030303;
        v52 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v49.i8, 0x303030303030303), *v48.i8, 0x303030303030303), *v50.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v49, v51), v48, v51), v50)), vcgtq_u8(v46, v39));
        v44.i64[0] = 0x404040404040404;
        v44.i64[1] = 0x404040404040404;
        *v10 = veorq_s8(vqsubq_s8(v49, vshrq_n_s8(vqaddq_s8(v52, v44), 3uLL)), v47);
        *&v10[v154] = veorq_s8(vqaddq_s8(v48, vshrq_n_s8(vqaddq_s8(v52, v51), 3uLL)), v47);
        vp8_loop_filter_bhs_neon(v10, v8, (v161 + v20));
        v36 = v147 - 1;
        v37 = v7;
        if (v147 != 1)
        {
          do
          {
LABEL_25:
            v66 = v10;
            v37 = v7 + 76;
            v67 = v7[76];
            v69 = v67 != 4 && v67 != 9 && v7[85] != 0;
            v10 += 16;
            v70 = *(v12 + v7[76]);
            v71 = v13 + 16 * v7[87] + 4 * v7[78];
            v72 = *(v71 + v70);
            if (*(v71 + v70))
            {
              v73 = (v170 + v72);
              vp8_loop_filter_mbvs_neon(v66 + 16, v173, (v170 + v72));
              if (v69)
              {
                v53 = vld1q_dup_s8(v73);
                v54 = *&v66[v164];
                v55 = *&v66[v163];
                v56 = *&v66[v166];
                v57 = *&v66[v168];
                v58 = vabdq_u8(v55, v56);
                v59 = vqaddq_u8(vqaddq_u8(v58, v58), vshrq_n_u8(vabdq_u8(v54, v57), 1uLL));
                v60.i64[0] = 0x8080808080808080;
                v60.i64[1] = 0x8080808080808080;
                v61 = veorq_s8(v55, v60);
                v62 = veorq_s8(v56, v60);
                v63 = vqsubq_s8(veorq_s8(v54, v60), veorq_s8(v57, v60));
                v64.i64[0] = 0x303030303030303;
                v64.i64[1] = 0x303030303030303;
                v65 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v62.i8, 0x303030303030303), *v61.i8, 0x303030303030303), *v63.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v62, v64), v61, v64), v63)), vcgtq_u8(v59, v53));
                v57.i64[0] = 0x404040404040404;
                v57.i64[1] = 0x404040404040404;
                *(v66 + 1) = veorq_s8(vqsubq_s8(v62, vshrq_n_s8(vqaddq_s8(v65, v57), 3uLL)), v60);
                *&v66[v171] = veorq_s8(vqaddq_s8(v61, vshrq_n_s8(vqaddq_s8(v65, v64), 3uLL)), v60);
              }

              else
              {
                vp8_loop_filter_bvs_neon(v66 + 16, v173, (v161 + v72));
                v74 = vld1q_dup_s8(v73);
                v75 = *&v66[v164];
                v76 = *&v66[v163];
                v77 = *&v66[v166];
                v78 = *&v66[v168];
                v79 = vabdq_u8(v76, v77);
                v80 = vqaddq_u8(vqaddq_u8(v79, v79), vshrq_n_u8(vabdq_u8(v75, v78), 1uLL));
                v81.i64[0] = 0x8080808080808080;
                v81.i64[1] = 0x8080808080808080;
                v82 = veorq_s8(v76, v81);
                v83 = veorq_s8(v77, v81);
                v84 = vqsubq_s8(veorq_s8(v75, v81), veorq_s8(v78, v81));
                v85.i64[0] = 0x303030303030303;
                v85.i64[1] = 0x303030303030303;
                v86 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v83.i8, 0x303030303030303), *v82.i8, 0x303030303030303), *v84.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v83, v85), v82, v85), v84)), vcgtq_u8(v80, v74));
                v78.i64[0] = 0x404040404040404;
                v78.i64[1] = 0x404040404040404;
                *(v66 + 1) = veorq_s8(vqsubq_s8(v83, vshrq_n_s8(vqaddq_s8(v86, v78), 3uLL)), v81);
                *&v66[v171] = veorq_s8(vqaddq_s8(v82, vshrq_n_s8(vqaddq_s8(v86, v85), 3uLL)), v81);
                vp8_loop_filter_bhs_neon((v66 + 16), v173, (v161 + v72));
              }
            }

            v7 = v37;
            --v36;
          }

          while (v36);
        }

LABEL_5:
        v10 += v156 - *v146 + 16;
        v7 = v37 + 152;
        v11 = v159 + 1;
        v8 = v173;
        if (v159 + 1 == v145)
        {
          return;
        }
      }

      v21 = (v170 + v20);
      v22 = vld1q_dup_s8(v21);
      v23 = *&v10[v155];
      v24 = &v10[v155 + v8];
      v25 = *v24;
      v26 = &v24->i8[v8];
      v27 = *(v26 + v8);
      v28 = vabdq_u8(v25, *v26);
      v29 = vqaddq_u8(vqaddq_u8(v28, v28), vshrq_n_u8(vabdq_u8(v23, v27), 1uLL));
      v30.i64[0] = 0x8080808080808080;
      v30.i64[1] = 0x8080808080808080;
      v31 = veorq_s8(v25, v30);
      v32 = veorq_s8(*v26, v30);
      v33 = vqsubq_s8(veorq_s8(v23, v30), veorq_s8(v27, v30));
      v34.i64[0] = 0x303030303030303;
      v34.i64[1] = 0x303030303030303;
      v35 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v32.i8, 0x303030303030303), *v31.i8, 0x303030303030303), *v33.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v32, v34), v31, v34), v33)), vcgtq_u8(v29, v22));
      v27.i64[0] = 0x404040404040404;
      v27.i64[1] = 0x404040404040404;
      *v10 = veorq_s8(vqsubq_s8(v32, vshrq_n_s8(vqaddq_s8(v35, v27), 3uLL)), v30);
      *&v10[v154] = veorq_s8(vqaddq_s8(v31, vshrq_n_s8(vqaddq_s8(v35, v34), 3uLL)), v30);
LABEL_19:
      v36 = v147 - 1;
      v37 = v7;
      if (v147 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v165 = v9;
    if (v6 >= 1 && v147 >= 1)
    {
      v153 = 0;
      v98 = *(v5 + 8);
      v99 = *(v5 + 9);
      v143 = 16 * v8;
      v144 = a3;
      v158 = a1 + 3512;
      v142 = 8 * v9;
      v157 = a1 + 3320;
      v141 = a1 + 3384;
      v150 = 4 * v8;
      v151 = a1 + 3188;
      v169 = a1 + 3252;
      v167 = a1 + 3316;
      v149 = 8 * v8;
      v140 = 4 * v9;
      v148 = 12 * v8;
      do
      {
        v103 = *v7;
        v104 = v103 == 4 || v103 == 9;
        v160 = v99;
        v162 = v98;
        v105 = !v104 && v7[9] != 0;
        v106 = *(v157 + 16 * v7[11] + 4 * v7[2] + *(v158 + *v7));
        v152 = v141 + (v144 << 6);
        if (*(v157 + 16 * v7[11] + 4 * v7[2] + *(v158 + *v7)))
        {
          v107 = *(v152 + v106);
          if (!v105)
          {
            v108 = *(v151 + v106);
            v109 = *(v169 + v106);
            v110 = *(v167 + v107);
            vp8_loop_filter_vertical_edge_y_neon((v10 + 4), v8, v108, v109, v110);
            vp8_loop_filter_vertical_edge_y_neon((v10 + 8), v8, v108, v109, v110);
            vp8_loop_filter_vertical_edge_y_neon((v10 + 12), v8, v108, v109, v110);
            if (v162)
            {
              vp8_loop_filter_vertical_edge_uv_neon(v162 + 4, v165, v108, v109, v110, v160 + 4);
            }
          }

          if (v153)
          {
            v111 = *(v170 + v106);
            v112 = *(v169 + v106);
            v113 = *(v167 + v107);
            vp8_mbloop_filter_horizontal_edge_y_neon(v10, v8, v111, v112, v113);
            if (v162)
            {
              vp8_mbloop_filter_horizontal_edge_uv_neon(v162, v165, v111, v112, v113, v160);
            }
          }

          if (!v105)
          {
            v114 = *(v151 + v106);
            v115 = *(v169 + v106);
            v116 = *(v167 + v107);
            vp8_loop_filter_horizontal_edge_y_neon(&v10[v150], v8, v114, v115, v116);
            vp8_loop_filter_horizontal_edge_y_neon(&v10[v149], v8, v114, v115, v116);
            vp8_loop_filter_horizontal_edge_y_neon(&v10[v148], v8, v114, v115, v116);
            if (v162)
            {
              vp8_loop_filter_horizontal_edge_uv_neon(v162 + v140, v165, v114, v115, v116, v160 + v140);
            }
          }
        }

        if (v147 == 1)
        {
          v101 = v160;
          v100 = v162;
        }

        else
        {
          v8 = 0;
          v117 = (v10 + 28);
          v118 = v147 - 1;
          do
          {
            v119 = v7;
            v121 = v7[76];
            v7 += 76;
            v120 = v121;
            v172 = v121 != 4 && v120 != 9 && v119[85] != 0;
            v123 = *(v158 + v120);
            v124 = v157 + 16 * v119[87] + 4 * v119[78];
            v125 = *(v124 + v123);
            if (*(v124 + v123))
            {
              v126 = *(v152 + v125);
              v127 = *(v170 + v125);
              v128 = *(v169 + v125);
              v129 = *(v167 + v126);
              vp8_mbloop_filter_vertical_edge_y_neon(v117 - 12, v173, v127, v128, v129);
              v130 = v165;
              vp8_mbloop_filter_vertical_edge_uv_neon(v162 + v8 + 8, v165, v127, v128, v129, v160 + v8 + 8);
              if (!v172)
              {
                v131 = *(v151 + v125);
                v132 = *(v169 + v125);
                v133 = *(v167 + v126);
                vp8_loop_filter_vertical_edge_y_neon(v117 - 8, v173, v131, v132, v133);
                vp8_loop_filter_vertical_edge_y_neon(v117 - 4, v173, v131, v132, v133);
                v130 = v165;
                vp8_loop_filter_vertical_edge_y_neon(v117, v173, v131, v132, v133);
                vp8_loop_filter_vertical_edge_uv_neon(v162 + v8 + 12, v165, v131, v132, v133, v160 + v8 + 12);
              }

              if (v153)
              {
                v134 = *(v170 + v125);
                v135 = *(v169 + v125);
                v136 = *(v167 + v126);
                vp8_mbloop_filter_horizontal_edge_y_neon(v117 - 12, v173, v134, v135, v136);
                vp8_mbloop_filter_horizontal_edge_uv_neon(v162 + v8 + 8, v130, v134, v135, v136, v160 + v8 + 8);
              }

              if (!v172)
              {
                v137 = *(v151 + v125);
                v138 = *(v169 + v125);
                v139 = *(v167 + v126);
                vp8_loop_filter_horizontal_edge_y_neon(v117 + v150 - 12, v173, v137, v138, v139);
                vp8_loop_filter_horizontal_edge_y_neon(v117 + v149 - 12, v173, v137, v138, v139);
                vp8_loop_filter_horizontal_edge_y_neon(v117 + v148 - 12, v173, v137, v138, v139);
                vp8_loop_filter_horizontal_edge_uv_neon(v162 + v140 + 8 + v8, v165, v137, v138, v139, v160 + v140 + 8 + v8);
              }
            }

            v117 += 16;
            v8 += 8;
            --v118;
          }

          while (v118);
          v10 = (v117 - 28);
          v100 = v162 + v8;
          v101 = v160 + v8;
          v6 = v145;
          LODWORD(v8) = v173;
        }

        v102 = v142 - v146[5];
        v10 += v143 - *v146 + 16;
        v98 = v100 + v102 + 8;
        v99 = v101 + v102 + 8;
        v7 += 152;
        ++v153;
      }

      while (v153 != v6);
    }
  }
}

void vp8_loop_filter_frame_yonly(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = a1;
  v4 = *(a1 + 1848);
  v5 = *(a1 + 3028);
  v6 = *(a1 + 3104);
  vp8_loop_filter_frame_init(a1, a2, a3);
  v7 = v3[761];
  if (v7 >= 1)
  {
    v8 = v3[762];
    if (v8 >= 1)
    {
      v9 = 0;
      v98 = v3 + 878;
      v96 = (v3 + 781);
      v97 = v3 + 830;
      v10 = *(v4 + 7);
      v88 = v3 + 846;
      v89 = v4;
      v94 = v3 + 813;
      v95 = (v3 + 797);
      v93 = v3 + 829;
      v90 = v3;
      v87 = v5;
      do
      {
        if (v8 >= 1)
        {
          v11 = *v6;
          v13 = v11 != 4 && v11 != 9 && v6[9] != 0;
          v14 = *(&v97[4 * v6[11] + v6[2]] + *(v98 + *v6));
          v91 = &v88[16 * v5];
          v92 = v9;
          if (*(&v97[4 * v6[11] + v6[2]] + *(v98 + *v6)))
          {
            if (v3[780])
            {
              if (!v13)
              {
                vp8_loop_filter_bvs_neon(v10, v4[4], &v95[v14]);
              }

              if (v9)
              {
                v15 = v4[4];
                v16 = &v96[v14];
                v17 = vld1q_dup_s8(v16);
                v18 = &v10[-2 * v15];
                v19 = *v18;
                v20 = (v18 + v15);
                v21 = *v20;
                v22 = &v20->i8[v15];
                v23 = *(v22 + v15);
                v24 = vabdq_u8(v21, *v22);
                v25 = vqaddq_u8(vqaddq_u8(v24, v24), vshrq_n_u8(vabdq_u8(v19, v23), 1uLL));
                v26.i64[0] = 0x8080808080808080;
                v26.i64[1] = 0x8080808080808080;
                v27 = veorq_s8(v21, v26);
                v28 = veorq_s8(*v22, v26);
                v29 = vqsubq_s8(veorq_s8(v19, v26), veorq_s8(v23, v26));
                v30.i64[0] = 0x303030303030303;
                v30.i64[1] = 0x303030303030303;
                v31 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v28.i8, 0x303030303030303), *v27.i8, 0x303030303030303), *v29.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v28, v30), v27, v30), v29)), vcgtq_u8(v25, v17));
                v23.i64[0] = 0x404040404040404;
                v23.i64[1] = 0x404040404040404;
                *v10 = veorq_s8(vqsubq_s8(v28, vshrq_n_s8(vqaddq_s8(v31, v23), 3uLL)), v26);
                *&v10[-v15] = veorq_s8(vqaddq_s8(v27, vshrq_n_s8(vqaddq_s8(v31, v30), 3uLL)), v26);
              }

              if (!v13)
              {
                vp8_loop_filter_bhs_neon(v10, v4[4], &v95[v14]);
              }
            }

            else
            {
              v32 = *(v91 + v14);
              if (!v13)
              {
                v33 = v4[4];
                v34 = v95[v14];
                v35 = *(v94 + v14);
                v36 = *(v93 + v32);
                vp8_loop_filter_vertical_edge_y_neon((v10 + 4), v33, v34, v35, v36);
                vp8_loop_filter_vertical_edge_y_neon((v10 + 8), v33, v34, v35, v36);
                v37 = v34;
                v38 = v35;
                v4 = v89;
                v3 = v90;
                v39 = v36;
                v9 = v92;
                vp8_loop_filter_vertical_edge_y_neon((v10 + 12), v33, v37, v38, v39);
              }

              if (v9)
              {
                vp8_mbloop_filter_horizontal_edge_y_neon(v10, v4[4], v96[v14], *(v94 + v14), *(v93 + v32));
              }

              if (!v13)
              {
                v40 = v95[v14];
                v41 = v4[4];
                v42 = *(v94 + v14);
                v43 = *(v93 + v32);
                vp8_loop_filter_horizontal_edge_y_neon(&v10[4 * v41], v41, v40, v42, v43);
                vp8_loop_filter_horizontal_edge_y_neon(&v10[8 * v41], v41, v40, v42, v43);
                v44 = &v10[12 * v41];
                v45 = v41;
                v46 = v42;
                v4 = v89;
                v3 = v90;
                v47 = v43;
                v9 = v92;
                vp8_loop_filter_horizontal_edge_y_neon(v44, v45, v40, v46, v47);
              }
            }
          }

          v10 += 16;
          v6 += 76;
          v8 = v3[762];
          if (v8 >= 2)
          {
            for (i = 1; i < v8; ++i)
            {
              v49 = *v6;
              v51 = v49 != 4 && v49 != 9 && v6[9] != 0;
              v52 = *(v98 + *v6);
              v53 = &v97[4 * v6[11] + v6[2]];
              v54 = *(v53 + v52);
              if (*(v53 + v52))
              {
                if (v3[780])
                {
                  vp8_loop_filter_mbvs_neon(v10, v4[4], &v96[v54]);
                  if (!v51)
                  {
                    vp8_loop_filter_bvs_neon(v10, v4[4], &v95[v54]);
                  }

                  if (v9)
                  {
                    v56 = v4[4];
                    v55 = &v96[v54];
                    v57 = vld1q_dup_s8(v55);
                    v58 = 2 * v56;
                    v59 = *&v10[v56 - v58];
                    v60 = *&v10[2 * v56 - v58];
                    v61 = *&v10[-v58];
                    v62 = *&v10[3 * v56 - v58];
                    v63 = vabdq_u8(v59, v60);
                    v64 = vqaddq_u8(vqaddq_u8(v63, v63), vshrq_n_u8(vabdq_u8(v61, v62), 1uLL));
                    v65.i64[0] = 0x8080808080808080;
                    v65.i64[1] = 0x8080808080808080;
                    v66 = veorq_s8(v59, v65);
                    v67 = veorq_s8(v60, v65);
                    v68 = vqsubq_s8(veorq_s8(v61, v65), veorq_s8(v62, v65));
                    v69.i64[0] = 0x303030303030303;
                    v69.i64[1] = 0x303030303030303;
                    v70 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v67.i8, 0x303030303030303), *v66.i8, 0x303030303030303), *v68.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v67, v69), v66, v69), v68)), vcgtq_u8(v64, v57));
                    v62.i64[0] = 0x404040404040404;
                    v62.i64[1] = 0x404040404040404;
                    *v10 = veorq_s8(vqsubq_s8(v67, vshrq_n_s8(vqaddq_s8(v70, v62), 3uLL)), v65);
                    *&v10[-v56] = veorq_s8(vqaddq_s8(v66, vshrq_n_s8(vqaddq_s8(v70, v69), 3uLL)), v65);
                  }

                  if (!v51)
                  {
                    vp8_loop_filter_bhs_neon(v10, v4[4], &v95[v54]);
                  }
                }

                else
                {
                  v71 = *(v91 + v54);
                  vp8_mbloop_filter_vertical_edge_y_neon(v10, v4[4], v96[v54], *(v94 + v54), *(v93 + v71));
                  if (!v51)
                  {
                    v72 = v4[4];
                    v73 = v95[v54];
                    v74 = *(v94 + v54);
                    v75 = *(v93 + v71);
                    vp8_loop_filter_vertical_edge_y_neon((v10 + 4), v72, v73, v74, v75);
                    vp8_loop_filter_vertical_edge_y_neon((v10 + 8), v72, v73, v74, v75);
                    v76 = v73;
                    v77 = v74;
                    v4 = v89;
                    v3 = v90;
                    v78 = v75;
                    v9 = v92;
                    vp8_loop_filter_vertical_edge_y_neon((v10 + 12), v72, v76, v77, v78);
                  }

                  if (v9)
                  {
                    vp8_mbloop_filter_horizontal_edge_y_neon(v10, v4[4], v96[v54], *(v94 + v54), *(v93 + v71));
                  }

                  if (!v51)
                  {
                    v79 = v95[v54];
                    v80 = v4[4];
                    v81 = *(v94 + v54);
                    v82 = *(v93 + v71);
                    vp8_loop_filter_horizontal_edge_y_neon(&v10[4 * v80], v80, v79, v81, v82);
                    vp8_loop_filter_horizontal_edge_y_neon(&v10[8 * v80], v80, v79, v81, v82);
                    v83 = &v10[12 * v80];
                    v84 = v80;
                    v85 = v81;
                    v4 = v89;
                    v3 = v90;
                    v86 = v82;
                    v9 = v92;
                    vp8_loop_filter_horizontal_edge_y_neon(v83, v84, v79, v85, v86);
                  }
                }
              }

              v10 += 16;
              v6 += 76;
              v8 = v3[762];
            }

            v5 = v87;
          }

          v7 = v3[761];
        }

        v10 = &v10[16 * v4[4] - *v4];
        v6 += 76;
        ++v9;
      }

      while (v9 < v7);
    }
  }
}

void vp8_loop_filter_partial_frame(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *(a1 + 1848);
  v4 = (*v3 >> 4);
  v5 = v3[1] >> 4;
  v128 = *(a1 + 3028);
  vp8_loop_filter_frame_init(a1, a2, a3);
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 7;
  }

  v7 = v6 >> 3;
  if ((v5 + 7) < 0xF)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v127 = v8;
  if (v8 >= 1 && v4 >= 1)
  {
    v10 = v4;
    v11 = 0;
    v12 = a1 + 3512;
    v137 = a1 + 3124;
    v138 = a1 + 3320;
    v135 = a1 + 3188;
    v13 = a1 + 3252;
    v14 = a1 + 3316;
    v15 = v3[1] >> 5;
    LODWORD(v16) = v3[4];
    v17 = (*(v3 + 7) + 16 * v15 * v16);
    v18 = (*(a1 + 3104) + 76 * (v15 + v15 * v10));
    v125 = v10 - 1;
    v126 = v10;
    v132 = v3;
    v133 = a1 + 3252;
    v131 = a1 + 3316;
    while (1)
    {
      v19 = *v18;
      v21 = v19 != 4 && v19 != 9 && v18[9] != 0;
      v22 = *(v138 + 16 * v18[11] + 4 * v18[2] + *(v12 + *v18));
      v134 = a1 + 3384 + (v128 << 6);
      if (!*(v138 + 16 * v18[11] + 4 * v18[2] + *(v12 + *v18)))
      {
        goto LABEL_30;
      }

      if (*(a1 + 3120))
      {
        break;
      }

      v139 = v18;
      v39 = *(v134 + v22);
      if (!v21)
      {
        v116 = *(v135 + v22);
        v130 = v11;
        v117 = *(v133 + v22);
        v118 = *(v14 + v39);
        vp8_loop_filter_vertical_edge_y_neon(v17->i64 + 4, v16, v116, v117, v118);
        vp8_loop_filter_vertical_edge_y_neon(&v17->i64[1], v16, v116, v117, v118);
        vp8_loop_filter_vertical_edge_y_neon(&v17->i64[1] + 4, v16, v116, v117, v118);
        vp8_mbloop_filter_horizontal_edge_y_neon(v17, v132[4], *(v137 + v22), *(v133 + v22), *(v14 + v39));
        v119 = *(v135 + v22);
        v13 = a1 + 3252;
        v120 = v132[4];
        v121 = *(v133 + v22);
        v122 = *(v14 + v39);
        v12 = a1 + 3512;
        vp8_loop_filter_horizontal_edge_y_neon(v17->i64 + 4 * v120, v120, v119, v121, v122);
        vp8_loop_filter_horizontal_edge_y_neon(&v17->i64[v120], v120, v119, v121, v122);
        v123 = v121;
        v11 = v130;
        v124 = v122;
        v3 = v132;
        vp8_loop_filter_horizontal_edge_y_neon(v17->i64 + 12 * v120, v120, v119, v123, v124);
        v18 = v139;
        v10 = v126;
        if (v126 == 1)
        {
          goto LABEL_14;
        }

LABEL_31:
        v129 = v11;
        v59 = &v17[1].i64[1] + 4;
        v60 = v125;
        while (2)
        {
          v76 = v18;
          v78 = v18[76];
          v18 += 76;
          v77 = v78;
          v80 = v78 != 4 && v77 != 9 && v76[85] != 0;
          v81 = *(v12 + v77);
          v82 = v138 + 16 * v76[87] + 4 * v76[78];
          v83 = *(v82 + v81);
          if (*(v82 + v81))
          {
            v141 = v18;
            if (*(a1 + 3120))
            {
              v84 = (v137 + v83);
              vp8_loop_filter_mbvs_neon((v59 - 12), v3[4], (v137 + v83));
              v85 = v3[4];
              if (v80)
              {
                v86 = vld1q_dup_s8(v84);
                v87 = 2 * v85;
                v88 = *(v59 - v87 - 12);
                v89 = *(v59 + v85 - v87 - 12);
                v90 = *(v59 - v87 + 2 * v85 - 12);
                v91 = *(v59 + 3 * v85 - v87 - 12);
                v92 = vabdq_u8(v89, v90);
                v93 = vqaddq_u8(vqaddq_u8(v92, v92), vshrq_n_u8(vabdq_u8(v88, v91), 1uLL));
                v94.i64[0] = 0x8080808080808080;
                v94.i64[1] = 0x8080808080808080;
                v95 = veorq_s8(v89, v94);
                v96 = veorq_s8(v90, v94);
                v97 = vqsubq_s8(veorq_s8(v88, v94), veorq_s8(v91, v94));
                v98.i64[0] = 0x303030303030303;
                v98.i64[1] = 0x303030303030303;
                v99 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v96.i8, 0x303030303030303), *v95.i8, 0x303030303030303), *v97.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v96, v98), v95, v98), v97)), vcgtq_u8(v93, v86));
                v91.i64[0] = 0x404040404040404;
                v91.i64[1] = 0x404040404040404;
                *(v59 - 12) = veorq_s8(vqsubq_s8(v96, vshrq_n_s8(vqaddq_s8(v99, v91), 3uLL)), v94);
                *(v59 - v85 - 12) = veorq_s8(vqaddq_s8(v95, vshrq_n_s8(vqaddq_s8(v99, v98), 3uLL)), v94);
              }

              else
              {
                vp8_loop_filter_bvs_neon((v59 - 12), v85, (v135 + v83));
                v61 = v3[4];
                v62 = vld1q_dup_s8(v84);
                v63 = 2 * v61;
                v64 = *(v59 - v63 - 12);
                v65 = *(v59 + v61 - v63 - 12);
                v66 = *(v59 - v63 + 2 * v61 - 12);
                v67 = *(v59 + 3 * v61 - v63 - 12);
                v68 = vabdq_u8(v65, v66);
                v69 = vqaddq_u8(vqaddq_u8(v68, v68), vshrq_n_u8(vabdq_u8(v64, v67), 1uLL));
                v70.i64[0] = 0x8080808080808080;
                v70.i64[1] = 0x8080808080808080;
                v71 = veorq_s8(v65, v70);
                v72 = veorq_s8(v66, v70);
                v73 = vqsubq_s8(veorq_s8(v64, v70), veorq_s8(v67, v70));
                v74.i64[0] = 0x303030303030303;
                v74.i64[1] = 0x303030303030303;
                v75 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v72.i8, 0x303030303030303), *v71.i8, 0x303030303030303), *v73.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v72, v74), v71, v74), v73)), vcgtq_u8(v69, v62));
                v67.i64[0] = 0x404040404040404;
                v67.i64[1] = 0x404040404040404;
                *(v59 - 12) = veorq_s8(vqsubq_s8(v72, vshrq_n_s8(vqaddq_s8(v75, v67), 3uLL)), v70);
                *(v59 - v61 - 12) = veorq_s8(vqaddq_s8(v71, vshrq_n_s8(vqaddq_s8(v75, v74), 3uLL)), v70);
                vp8_loop_filter_bhs_neon(v59 - 12, v3[4], (v135 + v83));
              }

LABEL_33:
              v18 = v141;
            }

            else
            {
              v100 = *(v134 + v83);
              v101 = v3[4];
              v102 = v14;
              v103 = v3;
              v104 = v102;
              vp8_mbloop_filter_vertical_edge_y_neon(v59 - 12, v101, *(v137 + v83), *(v133 + v83), *(v102 + v100));
              v105 = v103[4];
              if (!v80)
              {
                v107 = *(v135 + v83);
                v108 = *(v133 + v83);
                v109 = *(v104 + v100);
                v110 = v105;
                vp8_loop_filter_vertical_edge_y_neon(v59 - 8, v105, v107, v108, v109);
                vp8_loop_filter_vertical_edge_y_neon(v59 - 4, v110, v107, v108, v109);
                vp8_loop_filter_vertical_edge_y_neon(v59, v110, v107, v108, v109);
                v14 = a1 + 3316;
                vp8_mbloop_filter_horizontal_edge_y_neon(v59 - 12, v132[4], *(v137 + v83), *(v133 + v83), *(v131 + v100));
                v111 = v132[4];
                v112 = *(v135 + v83);
                v113 = *(v133 + v83);
                v114 = *(v131 + v100);
                vp8_loop_filter_horizontal_edge_y_neon(v59 + 4 * v111 - 12, v111, v112, v113, v114);
                vp8_loop_filter_horizontal_edge_y_neon(v59 + 8 * v111 - 12, v111, v112, v113, v114);
                v115 = v114;
                v3 = v132;
                vp8_loop_filter_horizontal_edge_y_neon(v59 + 12 * v111 - 12, v111, v112, v113, v115);
                v12 = a1 + 3512;
                goto LABEL_33;
              }

              v106 = v103;
              v14 = v104;
              vp8_mbloop_filter_horizontal_edge_y_neon(v59 - 12, v105, *(v137 + v83), *(v133 + v83), *(v104 + v100));
              v12 = a1 + 3512;
              v18 = v141;
              v3 = v106;
            }
          }

          v59 += 16;
          if (!--v60)
          {
            v17 = (v59 - 28);
            v10 = v126;
            v11 = v129;
            v13 = a1 + 3252;
            goto LABEL_14;
          }

          continue;
        }
      }

      vp8_mbloop_filter_horizontal_edge_y_neon(v17, v16, *(v137 + v22), *(v13 + v22), *(v14 + v39));
      v3 = v132;
      v18 = v139;
      v10 = v126;
      if (v126 != 1)
      {
        goto LABEL_31;
      }

LABEL_14:
      v16 = v3[4];
      v17 = (&v17[v16 + 1] - *v3);
      v18 += 152;
      if (++v11 == v127)
      {
        return;
      }
    }

    if (v21)
    {
      v23 = (v137 + v22);
      v24 = vld1q_dup_s8(v23);
      v25 = (v17 - 2 * v16);
      v26 = *v25;
      v27 = (v25 + v16);
      v28 = *v27;
      v29 = &v27->i8[v16];
      v30 = *(v29 + v16);
      v31 = vabdq_u8(v28, *v29);
      v32 = vqaddq_u8(vqaddq_u8(v31, v31), vshrq_n_u8(vabdq_u8(v26, v30), 1uLL));
      v33.i64[0] = 0x8080808080808080;
      v33.i64[1] = 0x8080808080808080;
      v34 = veorq_s8(v28, v33);
      v35 = veorq_s8(*v29, v33);
      v36 = vqsubq_s8(veorq_s8(v26, v33), veorq_s8(v30, v33));
      v37.i64[0] = 0x303030303030303;
      v37.i64[1] = 0x303030303030303;
      v38 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v35.i8, 0x303030303030303), *v34.i8, 0x303030303030303), *v36.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v35, v37), v34, v37), v36)), vcgtq_u8(v32, v24));
      v30.i64[0] = 0x404040404040404;
      v30.i64[1] = 0x404040404040404;
      *v17 = veorq_s8(vqsubq_s8(v35, vshrq_n_s8(vqaddq_s8(v38, v30), 3uLL)), v33);
      *(v17 - v16) = veorq_s8(vqaddq_s8(v34, vshrq_n_s8(vqaddq_s8(v38, v37), 3uLL)), v33);
      if (v10 != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    v40 = v16;
    v140 = v18;
    v41 = v10;
    vp8_loop_filter_bvs_neon(v17, v40, (v135 + v22));
    v42 = (v137 + v22);
    v43 = vld1q_dup_s8(v42);
    v44 = v3[4];
    v45 = (v17 - 2 * v44);
    v46 = *v45;
    v47 = (v45 + v44);
    v48 = *v47;
    v49 = &v47->i8[v44];
    v50 = *(v49 + v44);
    v51 = vabdq_u8(v48, *v49);
    v52 = vqaddq_u8(vqaddq_u8(v51, v51), vshrq_n_u8(vabdq_u8(v46, v50), 1uLL));
    v53.i64[0] = 0x8080808080808080;
    v53.i64[1] = 0x8080808080808080;
    v54 = veorq_s8(v48, v53);
    v55 = veorq_s8(*v49, v53);
    v56 = vqsubq_s8(veorq_s8(v46, v53), veorq_s8(v50, v53));
    v57.i64[0] = 0x303030303030303;
    v57.i64[1] = 0x303030303030303;
    v58 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v55.i8, 0x303030303030303), *v54.i8, 0x303030303030303), *v56.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v55, v57), v54, v57), v56)), vcgtq_u8(v52, v43));
    v50.i64[0] = 0x404040404040404;
    v50.i64[1] = 0x404040404040404;
    *v17 = veorq_s8(vqsubq_s8(v55, vshrq_n_s8(vqaddq_s8(v58, v50), 3uLL)), v53);
    *(v17 - v44) = veorq_s8(vqaddq_s8(v54, vshrq_n_s8(vqaddq_s8(v58, v57), 3uLL)), v53);
    v13 = a1 + 3252;
    vp8_loop_filter_bhs_neon(v17, v3[4], (v135 + v22));
    v10 = v41;
    v18 = v140;
LABEL_30:
    if (v10 != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_14;
  }
}