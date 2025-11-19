uint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = *(a2 + 56);
    v19 = HIDWORD(v18);
    v334 = 2;
    v20 = *(a4 + 8);
    v21 = a3[3];
    v332 = v21.i32[0];
    v330 = v20;
    v328[1] = result;
    v331 = a3[6].i32[1] + v21.i32[1] * HIDWORD(v18);
    v22 = a3[7].u32[1];
    v329 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v333 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v328);
    v327 = 2;
    v23 = *(a5 + 8);
    v24 = a3[3];
    v325 = v24.i32[0];
    v323 = v23;
    v321[1] = v17;
    v324 = a3[6].i32[1] + v24.i32[1] * HIDWORD(v18);
    v25 = a3[7].u32[1];
    v322 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v326 = v25;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v321);
    v320 = 2;
    v26 = *(a6 + 8);
    v27 = a3[3];
    v318 = v27.i32[0];
    v316 = v26;
    v314[1] = v17;
    v317 = a3[6].i32[1] + v27.i32[1] * HIDWORD(v18);
    v28 = a3[7].u32[1];
    v315 = vmin_u32(vmls_s32(*(*(*&v26[5] + 8 * v28) + 16), v26[6], v27), v26[6]).u32[0];
    v319 = v28;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v314);
    v313 = 2;
    v29 = *(a7 + 8);
    v30 = a3[3];
    v311 = v30.i32[0];
    v309 = v29;
    v307[1] = v17;
    v310 = a3[6].i32[1] + v30.i32[1] * HIDWORD(v18);
    v31 = a3[7].u32[1];
    v308 = vmin_u32(vmls_s32(*(*(*&v29[5] + 8 * v31) + 16), v29[6], v30), v29[6]).u32[0];
    v312 = v31;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v307);
    v32 = a3[6].u32[1];
    if (a3[7].u32[0] + v32 < HIDWORD(v18))
    {
      v35 = a3[3].i32[1] * *(a2 + 60);
      v36 = a3[5].u32[1];
      v37 = v36 + a9;
      do
      {
        v331 = v35 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v328);
        v324 = v35 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v321);
        v317 = v35 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v314);
        v310 = v35 + v32;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v307);
        v40.i64[0] = 0xFFFFFFFF00000000;
        v40.i64[1] = 0xFFFFFFFF00000000;
        v41 = v328[0];
        if (v328[0])
        {
          v42 = v321[0];
          if (v321[0])
          {
            v43 = v314[0];
            if (v314[0])
            {
              v44 = v307[0];
              if (v307[0])
              {
                if (v36 >= 0x20)
                {
                  v50 = 0;
                  v48 = 0;
                  v47 = 0;
                  v46 = 0;
                  v45 = 0;
                  v51 = v329 + v328[0];
                  result = v322 + v321[0];
                  v52 = v315 + v314[0];
                  v53 = v308 + v307[0];
                  do
                  {
                    v55 = *(v328[0] + v50);
                    v54 = *(v328[0] + v50 + 16);
                    v57 = *(v51 + v50);
                    v56 = *(v51 + v50 + 16);
                    v58 = vzip1q_s8(v57, v55);
                    v59 = vzip2q_s8(v57, v55);
                    v60 = vzip1q_s8(v56, v54);
                    v61 = vzip2q_s8(v56, v54);
                    v62 = vaddq_s16(vshlq_n_s32(v58, 0x10uLL), v58);
                    v63 = vaddq_s16(vshlq_n_s32(v59, 0x10uLL), v59);
                    v64 = vaddq_s16(vshlq_n_s32(v60, 0x10uLL), v60);
                    v65 = vaddq_s16(vshlq_n_s32(v61, 0x10uLL), v61);
                    v66 = vaddq_s16(vandq_s8(vqtbl1q_s8(v65, xmmword_296B8F090), v40), v65);
                    v67 = vaddq_s16(vandq_s8(vqtbl1q_s8(v64, xmmword_296B8F090), v40), v64);
                    v68 = vaddq_s16(vandq_s8(vqtbl1q_s8(v63, xmmword_296B8F090), v40), v63);
                    v70 = *(v321[0] + v50);
                    v69 = *(v321[0] + v50 + 16);
                    v71 = vaddq_s16(vandq_s8(vqtbl1q_s8(v62, xmmword_296B8F090), v40), v62);
                    v73 = *(result + v50);
                    v72 = *(result + v50 + 16);
                    v74 = vzip1q_s8(v73, v70);
                    v75 = vzip2q_s8(v73, v70);
                    v76 = vzip1q_s8(v72, v69);
                    v77 = vzip2q_s8(v72, v69);
                    v78 = vaddq_s16(vshlq_n_s32(v74, 0x10uLL), v74);
                    v79 = vaddq_s16(vshlq_n_s32(v75, 0x10uLL), v75);
                    v80 = vaddq_s16(vshlq_n_s32(v76, 0x10uLL), v76);
                    v81 = vaddq_s16(vshlq_n_s32(v77, 0x10uLL), v77);
                    v82 = vaddq_s16(vandq_s8(vqtbl1q_s8(v81, xmmword_296B8F090), v40), v81);
                    v83 = vaddq_s16(vandq_s8(vqtbl1q_s8(v80, xmmword_296B8F090), v40), v80);
                    v84 = vaddq_s16(vandq_s8(vqtbl1q_s8(v78, xmmword_296B8F090), v40), v78);
                    v85 = vaddq_s16(vandq_s8(vqtbl1q_s8(v79, xmmword_296B8F090), v40), v79);
                    v87 = *(v314[0] + v50);
                    v86 = *(v314[0] + v50 + 16);
                    v88 = *(v52 + v50);
                    v89 = *(v52 + v50 + 16);
                    v90 = vzip1q_s8(v88, v87);
                    v91 = vzip2q_s8(v88, v87);
                    v92 = vzip1q_s8(v89, v86);
                    v93 = vzip2q_s8(v89, v86);
                    v94 = vaddq_s16(vshlq_n_s32(v90, 0x10uLL), v90);
                    v95 = vaddq_s16(vshlq_n_s32(v91, 0x10uLL), v91);
                    v96 = vaddq_s16(vshlq_n_s32(v92, 0x10uLL), v92);
                    v97 = vaddq_s16(vshlq_n_s32(v93, 0x10uLL), v93);
                    v98 = vaddq_s16(vandq_s8(vqtbl1q_s8(v97, xmmword_296B8F090), v40), v97);
                    v99 = vaddq_s16(vandq_s8(vqtbl1q_s8(v95, xmmword_296B8F090), v40), v95);
                    v100 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v71.i8, 3), v71), vaddq_s16(vdupq_lane_s16(*v68.i8, 3), v68));
                    v101 = vaddq_s16(vandq_s8(vqtbl1q_s8(v94, xmmword_296B8F090), v40), v94);
                    v102 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v67.i8, 3), v67), vaddq_s16(vdupq_lane_s16(*v66.i8, 3), v66));
                    v103 = vaddq_s16(vandq_s8(vqtbl1q_s8(v96, xmmword_296B8F090), v40), v96);
                    v104 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v84.i8, 3), v84), vaddq_s16(vdupq_lane_s16(*v85.i8, 3), v85));
                    v105 = vaddq_s16(vdupq_lane_s16(*v98.i8, 3), v98);
                    v106 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v83.i8, 3), v83), vaddq_s16(vdupq_lane_s16(*v82.i8, 3), v82));
                    v108 = *(v307[0] + v50);
                    v107 = *(v307[0] + v50 + 16);
                    v110 = *(v53 + v50);
                    v109 = *(v53 + v50 + 16);
                    v111 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v101.i8, 3), v101), vaddq_s16(vdupq_lane_s16(*v99.i8, 3), v99));
                    v112 = vzip1q_s8(v110, v108);
                    v113 = vzip2q_s8(v110, v108);
                    v114 = vzip1q_s8(v109, v107);
                    v115 = vzip2q_s8(v109, v107);
                    v116 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v103.i8, 3), v103), v105);
                    v117 = vaddq_s16(vshlq_n_s32(v112, 0x10uLL), v112);
                    v118 = vaddq_s16(vshlq_n_s32(v113, 0x10uLL), v113);
                    v119 = vaddq_s16(v102, v100);
                    v120 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                    v121 = vaddq_s16(vshlq_n_s32(v115, 0x10uLL), v115);
                    v122 = vaddq_s16(v106, v104);
                    v123 = vaddq_s16(vandq_s8(vqtbl1q_s8(v121, xmmword_296B8F090), v40), v121);
                    v124 = vaddq_s16(vandq_s8(vqtbl1q_s8(v120, xmmword_296B8F090), v40), v120);
                    v125 = vaddq_s16(v116, v111);
                    v126 = vaddq_s16(vandq_s8(vqtbl1q_s8(v118, xmmword_296B8F090), v40), v118);
                    v127 = vaddq_s16(vandq_s8(vqtbl1q_s8(v117, xmmword_296B8F090), v40), v117);
                    v48 += v119.u16[7];
                    v39 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v124.i8, 3), v124), vaddq_s16(vdupq_lane_s16(*v123.i8, 3), v123));
                    v38 = vaddq_s16(v39, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v127.i8, 3), v127), vaddq_s16(vdupq_lane_s16(*v126.i8, 3), v126)));
                    v47 += v122.u16[7];
                    v46 += v125.u16[7];
                    v45 += v38.u16[7];
                    v128 = v50 + 64;
                    v50 += 32;
                  }

                  while (v128 <= v36);
                  v49 = v36 & 0xFFFFFFE0;
                }

                else
                {
                  v45 = 0;
                  v46 = 0;
                  v47 = 0;
                  v48 = 0;
                  v49 = 0;
                }

                if ((v49 | 8) <= v36)
                {
                  result = v329 + v328[0];
                  do
                  {
                    v38.i64[0] = *(v328[0] + v49);
                    v39.i64[0] = *(result + v49);
                    v130 = vzip1q_s8(v39, v38);
                    v131 = vaddq_s16(vshlq_n_s32(v130, 0x10uLL), v130);
                    v132 = vextq_s8(v131, v131, 0xCuLL);
                    v133 = vaddq_s16(v132, v131);
                    v134 = v133.u16[3];
                    v133.i64[0] = *(v321[0] + v49);
                    v48 += v133.u16[7] + v134;
                    v132.i64[0] = *(v322 + v321[0] + v49);
                    v135 = vzip1q_s8(v132, v133);
                    v136 = vaddq_s16(vshlq_n_s32(v135, 0x10uLL), v135);
                    v137 = vextq_s8(v136, v136, 0xCuLL);
                    v138 = vaddq_s16(v137, v136);
                    v139 = v138.u16[3];
                    v140 = v138.u16[7] + v47;
                    v138.i64[0] = *(v314[0] + v49);
                    v137.i64[0] = *(v315 + v314[0] + v49);
                    v141 = vzip1q_s8(v137, v138);
                    v142 = vaddq_s16(vshlq_n_s32(v141, 0x10uLL), v141);
                    v143 = vextq_s8(v142, v142, 0xCuLL);
                    v144 = vaddq_s16(v143, v142);
                    v47 = v140 + v139;
                    v145 = v144.u16[3];
                    v144.i64[0] = *(v307[0] + v49);
                    v46 += v144.u16[7] + v145;
                    v143.i64[0] = *(v308 + v307[0] + v49);
                    v146 = vzip1q_s8(v143, v144);
                    v147 = vaddq_s16(vshlq_n_s32(v146, 0x10uLL), v146);
                    v39 = vextq_s8(v147, v147, 0xCuLL);
                    v38 = vaddq_s16(v39, v147);
                    v45 += v38.u16[7] + v38.u16[3];
                    v129 = v49 + 8;
                    v148 = v49 + 16;
                    v49 += 8;
                  }

                  while (v148 <= v36);
                }

                else
                {
                  v129 = v49;
                }

                v306 = a12;
                if (v129 < v36)
                {
                  result = v322 + v321[0];
                  do
                  {
                    v48 += *(v329 + v328[0] + v129) | (*(v328[0] + v129) << 8);
                    v47 += *(result + v129) | (*(v321[0] + v129) << 8);
                    v46 += *(v315 + v314[0] + v129) | (*(v314[0] + v129) << 8);
                    v45 += *(v308 + v307[0] + v129) | (*(v307[0] + v129) << 8);
                    ++v129;
                  }

                  while (v36 != v129);
                  v129 = v36;
                }

                if (v129 + 32 <= v37)
                {
                  v151 = v329 + v328[0];
                  result = v322 + v321[0];
                  v152 = v315 + v314[0];
                  v153 = v308 + v307[0];
                  v154 = a11;
                  do
                  {
                    v156 = *(v41 + v129);
                    v155 = *(v41 + v129 + 16);
                    v158 = *(v151 + v129);
                    v157 = *(v151 + v129 + 16);
                    v159 = vzip2q_s8(v158, v156);
                    v160 = vzip2q_s8(v157, v155);
                    v161 = vzip1q_s8(v157, v155);
                    v162 = vzip1q_s8(v158, v156);
                    v163 = vaddq_s16(vshlq_n_s32(v159, 0x10uLL), v159);
                    v164 = vaddq_s16(vshlq_n_s32(v160, 0x10uLL), v160);
                    v165 = vaddq_s16(vshlq_n_s32(v161, 0x10uLL), v161);
                    v166 = vaddq_s16(vshlq_n_s32(v162, 0x10uLL), v162);
                    v167 = vaddq_s16(vandq_s8(vqtbl1q_s8(v166, xmmword_296B8F090), v40), v166);
                    v168 = vaddq_s16(vandq_s8(vqtbl1q_s8(v165, xmmword_296B8F090), v40), v165);
                    v169 = vaddq_s16(vandq_s8(vqtbl1q_s8(v164, xmmword_296B8F090), v40), v164);
                    v170 = vaddq_s16(vandq_s8(vqtbl1q_s8(v163, xmmword_296B8F090), v40), v163);
                    v171 = vdupq_n_s16(v48);
                    v173 = *(v42 + v129);
                    v172 = *(v42 + v129 + 16);
                    v175 = *(result + v129);
                    v174 = *(result + v129 + 16);
                    v176 = vzip2q_s8(v175, v173);
                    v177 = vzip2q_s8(v174, v172);
                    v178 = vzip1q_s8(v174, v172);
                    v179 = vzip1q_s8(v175, v173);
                    v180 = vaddq_s16(vshlq_n_s32(v176, 0x10uLL), v176);
                    v181 = vaddq_s16(vshlq_n_s32(v177, 0x10uLL), v177);
                    v182 = vaddq_s16(vshlq_n_s32(v178, 0x10uLL), v178);
                    v183 = vaddq_s16(vshlq_n_s32(v179, 0x10uLL), v179);
                    v184 = vaddq_s16(vandq_s8(vqtbl1q_s8(v183, xmmword_296B8F090), v40), v183);
                    v185 = vaddq_s16(vandq_s8(vqtbl1q_s8(v181, xmmword_296B8F090), v40), v181);
                    v186 = vaddq_s16(vandq_s8(vqtbl1q_s8(v180, xmmword_296B8F090), v40), v180);
                    v187 = vaddq_s16(vandq_s8(vqtbl1q_s8(v182, xmmword_296B8F090), v40), v182);
                    v188 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v169.i8, 3), xmmword_296B8F0A0), v169);
                    v189 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v168.i8, 3), xmmword_296B8F0A0), v168);
                    v190 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v167.i8, 3), xmmword_296B8F0A0), v167);
                    v191 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v186.i8, 3), xmmword_296B8F0A0), v186);
                    v192 = vdupq_n_s16(v47);
                    v194 = *(v43 + v129);
                    v193 = *(v43 + v129 + 16);
                    v196 = *(v152 + v129);
                    v195 = *(v152 + v129 + 16);
                    v197 = vzip2q_s8(v196, v194);
                    v198 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v187.i8, 3), xmmword_296B8F0A0), v187);
                    v199 = vzip2q_s8(v195, v193);
                    v200 = vzip1q_s8(v195, v193);
                    v201 = vzip1q_s8(v196, v194);
                    v202 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v184.i8, 3), xmmword_296B8F0A0), v184);
                    v203 = vaddq_s16(vshlq_n_s32(v197, 0x10uLL), v197);
                    v204 = vaddq_s16(vshlq_n_s32(v199, 0x10uLL), v199);
                    v205 = vdupq_laneq_s16(v190, 7);
                    v206 = vaddq_s16(vshlq_n_s32(v200, 0x10uLL), v200);
                    v207 = vaddq_s16(vshlq_n_s32(v201, 0x10uLL), v201);
                    v208 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_296B8F090), v40), v207);
                    v209 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v208.i8, 3), xmmword_296B8F0A0), v208);
                    v210 = vaddq_s16(v190, v171);
                    v211 = vdupq_n_s16(v46);
                    v213 = *(v44 + v129);
                    v212 = *(v44 + v129 + 16);
                    v214 = vdupq_laneq_s16(v202, 7);
                    v216 = *(v153 + v129);
                    v215 = *(v153 + v129 + 16);
                    v217 = vzip1q_s8(v216, v213);
                    v218 = vaddq_s16(vshlq_n_s32(v217, 0x10uLL), v217);
                    v219 = vaddq_s16(v202, v192);
                    v220 = vaddq_s16(vandq_s8(vqtbl1q_s8(v218, xmmword_296B8F090), v40), v218);
                    v221 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v220.i8, 3), xmmword_296B8F0A0), v220);
                    v222 = vaddq_s16(v209, v211);
                    v223 = vdupq_n_s16(v45);
                    v224 = vaddq_s16(v221, v223);
                    v150 = v154 + 128;
                    v225 = v154 + 32;
                    v337.val[0] = vzip1q_s16(v210, v222);
                    v226 = v154 + 48;
                    v227 = v154 + 64;
                    v228 = v154 + 80;
                    v229 = v154 + 96;
                    v230 = v154 + 112;
                    v337.val[1] = vzip1q_s16(v219, v224);
                    vst2q_s16(v154, v337);
                    v231 = v154 + 16;
                    v232 = vaddq_s16(vandq_s8(vqtbl1q_s8(v206, xmmword_296B8F090), v40), v206);
                    v233 = vaddq_s16(vandq_s8(vqtbl1q_s8(v203, xmmword_296B8F090), v40), v203);
                    v234 = vaddq_s16(v205, vaddq_s16(vandq_s8(vdupq_lane_s16(*v170.i8, 3), xmmword_296B8F0A0), v170));
                    v235 = vaddq_s16(vandq_s8(vqtbl1q_s8(v204, xmmword_296B8F090), v40), v204);
                    v236 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v233.i8, 3), xmmword_296B8F0A0), v233);
                    v237 = vaddq_s16(v214, v191);
                    v238 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v232.i8, 3), xmmword_296B8F0A0), v232);
                    v239 = vaddq_s16(vdupq_laneq_s16(v238, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v235.i8, 3), xmmword_296B8F0A0), v235));
                    v240 = vaddq_s16(vdupq_laneq_s16(v209, 7), v236);
                    v241 = vaddq_s16(vaddq_s16(vdupq_laneq_s16(v189, 7), v188), v171);
                    v242 = vaddq_s16(v189, v171);
                    v243 = vaddq_s16(v234, v171);
                    v244 = vdupq_laneq_s16(v234, 7);
                    v245 = vaddq_s16(vaddq_s16(vdupq_laneq_s16(v198, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v185.i8, 3), xmmword_296B8F0A0), v185)), v192);
                    v246 = vaddq_s16(v198, v192);
                    v247 = vaddq_s16(v238, v211);
                    v248 = vzip2q_s8(v216, v213);
                    v249 = vzip2q_s8(v215, v212);
                    v250 = vaddq_s16(v237, v192);
                    v251 = vzip1q_s8(v215, v212);
                    v252 = vaddq_s16(vshlq_n_s32(v248, 0x10uLL), v248);
                    v253 = vdupq_laneq_s16(v237, 7);
                    v254 = vaddq_s16(vshlq_n_s32(v249, 0x10uLL), v249);
                    v255 = vaddq_s16(vshlq_n_s32(v251, 0x10uLL), v251);
                    v256 = vaddq_s16(v239, v211);
                    v257 = vaddq_s16(vandq_s8(vqtbl1q_s8(v255, xmmword_296B8F090), v40), v255);
                    v258 = vaddq_s16(vandq_s8(vqtbl1q_s8(v254, xmmword_296B8F090), v40), v254);
                    v259 = vaddq_s16(v240, v211);
                    v260 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_296B8F090), v40), v252);
                    v261 = vdupq_laneq_s16(v240, 7);
                    v262 = vaddq_s16(v241, v244);
                    v263 = vaddq_s16(v242, v244);
                    v264 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v258.i8, 3), xmmword_296B8F0A0), v258);
                    v265 = vaddq_s16(v245, v253);
                    v266 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v257.i8, 3), xmmword_296B8F0A0), v257);
                    v267 = vaddq_s16(v246, v253);
                    v268 = vaddq_s16(v256, v261);
                    v269 = vaddq_s16(vdupq_laneq_s16(v221, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v260.i8, 3), xmmword_296B8F0A0), v260));
                    v270 = vdupq_laneq_s16(v269, 7);
                    v271 = vaddq_s16(v247, v261);
                    v272 = vaddq_s16(vaddq_s16(vdupq_laneq_s16(v266, 7), v264), v223);
                    v273 = vaddq_s16(v269, v223);
                    v274 = vaddq_s16(v266, v223);
                    v340.val[0] = vzip2q_s16(v243, v259);
                    v340.val[1] = vzip2q_s16(v250, v273);
                    v275 = vaddq_s16(v272, v270);
                    v341.val[0] = vzip1q_s16(v243, v259);
                    v341.val[1] = vzip1q_s16(v250, v273);
                    v342.val[0] = vzip2q_s16(v210, v222);
                    v342.val[1] = vzip2q_s16(v219, v224);
                    v48 = v262.u16[7];
                    vst2q_s16(v231, v342);
                    v47 = v265.u16[7];
                    vst2q_s16(v225, v341);
                    v46 = v268.u16[7];
                    vst2q_s16(v226, v340);
                    v45 = v275.u16[7];
                    v276 = vaddq_s16(v274, v270);
                    v338.val[0] = vzip2q_s16(v262, v268);
                    v338.val[1] = vzip2q_s16(v265, v275);
                    v149 = v129 + 32;
                    v277 = v129 + 64;
                    v339.val[0] = vzip1q_s16(v263, v271);
                    v129 += 32;
                    v339.val[1] = vzip1q_s16(v267, v276);
                    vst2q_s16(v227, v339);
                    v335.val[0] = vzip2q_s16(v263, v271);
                    v335.val[1] = vzip2q_s16(v267, v276);
                    vst2q_s16(v228, v335);
                    v38 = vzip1q_s16(v262, v268);
                    v39 = vzip1q_s16(v265, v275);
                    vst2q_s16(v229, *v38.i8);
                    vst2q_s16(v230, v338);
                    v154 = v150;
                  }

                  while (v277 <= v37);
                }

                else
                {
                  v149 = v129;
                  v150 = a11;
                }

                if (v149 + 8 <= v37)
                {
                  v280 = v329 + v41;
                  result = v322 + v42;
                  v281 = v315 + v43;
                  v282 = v308 + v44;
                  a12 = v306;
                  do
                  {
                    v38.i64[0] = *(v41 + v149);
                    v39.i64[0] = *(v280 + v149);
                    v283 = vzip1q_s8(v39, v38);
                    v284 = vaddq_s16(vshlq_n_s32(v283, 0x10uLL), v283);
                    v285 = vaddq_s16(vandq_s8(vqtbl1q_s8(v284, xmmword_296B8F090), v40), v284);
                    v286 = vandq_s8(vdupq_lane_s16(*v285.i8, 3), xmmword_296B8F0A0);
                    v287 = vdupq_n_s16(v48);
                    v38 = vaddq_s16(vaddq_s16(v285, v287), v286);
                    v48 = v38.u16[7];
                    v286.i64[0] = *(v42 + v149);
                    v287.i64[0] = *(result + v149);
                    v288 = vzip1q_s8(v287, v286);
                    v289 = vaddq_s16(vshlq_n_s32(v288, 0x10uLL), v288);
                    v290 = vaddq_s16(vandq_s8(vqtbl1q_s8(v289, xmmword_296B8F090), v40), v289);
                    v291 = vandq_s8(vdupq_lane_s16(*v290.i8, 3), xmmword_296B8F0A0);
                    v292 = vdupq_n_s16(v47);
                    v39 = vaddq_s16(vaddq_s16(v290, v292), v291);
                    v47 = v39.u16[7];
                    v291.i64[0] = *(v43 + v149);
                    v292.i64[0] = *(v281 + v149);
                    v293 = vzip1q_s8(v292, v291);
                    v294 = vaddq_s16(vshlq_n_s32(v293, 0x10uLL), v293);
                    v295 = vaddq_s16(vandq_s8(vqtbl1q_s8(v294, xmmword_296B8F090), v40), v294);
                    v296 = vandq_s8(vdupq_lane_s16(*v295.i8, 3), xmmword_296B8F0A0);
                    v297 = vdupq_n_s16(v46);
                    v298 = vaddq_s16(vaddq_s16(v295, v297), v296);
                    v46 = v298.u16[7];
                    v296.i64[0] = *(v44 + v149);
                    v297.i64[0] = *(v282 + v149);
                    v299 = vzip1q_s8(v297, v296);
                    v300 = vaddq_s16(vshlq_n_s32(v299, 0x10uLL), v299);
                    v301 = vaddq_s16(vandq_s8(vqtbl1q_s8(v300, xmmword_296B8F090), v40), v300);
                    v302 = vaddq_s16(vaddq_s16(v301, vdupq_n_s16(v45)), vandq_s8(vdupq_lane_s16(*v301.i8, 3), xmmword_296B8F0A0));
                    v45 = v302.u16[7];
                    v336.val[0] = vzip1q_s16(v38, v298);
                    v336.val[1] = vzip1q_s16(v39, v302);
                    v279 = v150 + 32;
                    vst2q_s16(v150, v336);
                    v303 = v150 + 16;
                    v336.val[0] = vzip2q_s16(v38, v298);
                    v336.val[1] = vzip2q_s16(v39, v302);
                    vst2q_s16(v303, v336);
                    v278 = v149 + 8;
                    v304 = v149 + 16;
                    v149 += 8;
                    v150 = v279;
                  }

                  while (v304 <= v37);
                }

                else
                {
                  v278 = v149;
                  v279 = v150;
                  a12 = v306;
                }

                if (v278 < v37)
                {
                  do
                  {
                    v48 += *(v328[0] + v278 + v329) | (*(v328[0] + v278) << 8);
                    v47 += *(v321[0] + v278 + v322) | (*(v321[0] + v278) << 8);
                    v46 += *(v314[0] + v278 + v315) | (*(v314[0] + v278) << 8);
                    LOWORD(v305) = v48;
                    WORD1(v305) = v47;
                    WORD2(v305) = v46;
                    v45 += *(v307[0] + v278 + v308) | (*(v307[0] + v278) << 8);
                    HIWORD(v305) = v45;
                    *v279 = v305;
                    v279 += 4;
                    ++v278;
                  }

                  while (v37 != v278);
                }
              }
            }
          }
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[7].u32[0] < v19);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = *(a2 + 56);
    v19 = HIDWORD(v18);
    v341 = 3;
    v20 = *(a4 + 8);
    v21 = a3[3];
    v339 = v21.i32[0];
    v337 = v20;
    v335[1] = result;
    v338 = a3[6].i32[1] + v21.i32[1] * HIDWORD(v18);
    v22 = a3[7].u32[1];
    v336 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v340 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v335);
    v334 = 3;
    v23 = *(a5 + 8);
    v24 = a3[3];
    v332 = v24.i32[0];
    v330 = v23;
    v328[1] = v17;
    v331 = a3[6].i32[1] + v24.i32[1] * HIDWORD(v18);
    v25 = a3[7].u32[1];
    v329 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v333 = v25;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v328);
    v327 = 3;
    v26 = *(a6 + 8);
    v27 = a3[3];
    v325 = v27.i32[0];
    v323 = v26;
    v321[1] = v17;
    v324 = a3[6].i32[1] + v27.i32[1] * HIDWORD(v18);
    v28 = a3[7].u32[1];
    v322 = vmin_u32(vmls_s32(*(*(*&v26[5] + 8 * v28) + 16), v26[6], v27), v26[6]).u32[0];
    v326 = v28;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v321);
    v320 = 3;
    v29 = *(a7 + 8);
    v30 = a3[3];
    v318 = v30.i32[0];
    v316 = v29;
    v314[1] = v17;
    v317 = a3[6].i32[1] + v30.i32[1] * HIDWORD(v18);
    v31 = a3[7].u32[1];
    v315 = vmin_u32(vmls_s32(*(*(*&v29[5] + 8 * v31) + 16), v29[6], v30), v29[6]).u32[0];
    v319 = v31;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v314);
    v32 = a3[6].u32[1];
    if (a3[7].u32[0] + v32 < HIDWORD(v18))
    {
      v34 = a3[3].i32[1] * *(a2 + 60);
      v35 = a3[5].u32[1];
      v36 = v35 + a9;
      do
      {
        v338 = v34 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v335);
        v331 = v34 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v328);
        v324 = v34 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v321);
        v317 = v34 + v32;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v314);
        v45 = 0uLL;
        v46 = v335[0];
        if (v335[0])
        {
          v47 = v328[0];
          if (v328[0])
          {
            v48 = v321[0];
            if (v321[0])
            {
              v49 = v314[0];
              if (v314[0])
              {
                if (v35 >= 0x20)
                {
                  v56 = v335[0] + 2 * v336;
                  v57 = v336 + v335[0];
                  v58 = v328[0] + 2 * v329;
                  v59 = v329 + v328[0];
                  v60 = v321[0] + 2 * v322;
                  v61 = v322 + v321[0];
                  result = v314[0] + 2 * v315;
                  v62 = v315 + v314[0];
                  v41.i64[0] = 0;
                  v63 = 32;
                  v53.i64[0] = 0;
                  v52.i64[0] = 0;
                  v51 = 0;
                  v65 = xmmword_296B8F000;
                  v64 = xmmword_296B8F050;
                  v66 = xmmword_296B8F0B0;
                  v67 = xmmword_296B8F0C0;
                  v54 = xmmword_296B8F0D0;
                  v55 = xmmword_296B8F020;
                  v69 = xmmword_296B8F0E0;
                  v68 = xmmword_296B8F030;
                  do
                  {
                    v310 = *v53.i8;
                    v312 = v51;
                    v344.val[1] = *(v335[0] + v63 - 32);
                    v346.val[1] = *(v335[0] + v63 - 16);
                    v344.val[0] = *(v56 + v63 - 32);
                    v346.val[0] = *(v56 + v63 - 16);
                    v356.val[1] = vqtbl2q_s8(v344, v64);
                    v71 = *(v57 + v63 - 32);
                    v70 = *(v57 + v63 - 16);
                    v356.val[0] = vqtbl1q_s8(v71, v66);
                    v356.val[0] = vqtbl2q_s8(v356, v55);
                    v358.val[1] = vqtbl2q_s8(v346, v64);
                    v358.val[0] = vqtbl1q_s8(v70, v66);
                    v356.val[1] = vqtbl2q_s8(v358, v55);
                    v358.val[1] = vqtbl2q_s8(v346, v65);
                    v358.val[0] = vqtbl1q_s8(v70, v67);
                    v358.val[0] = vqtbl2q_s8(v358, v55);
                    v72 = vqtbl2q_s8(v344, xmmword_296B8F070);
                    v358.val[1] = vqtbl1q_s8(v71, v54);
                    v358.val[1] = vqtbl2q_s8(*(&v358 + 16), v55);
                    v360.val[1] = vqtbl2q_s8(v344, v65);
                    v360.val[0] = vqtbl1q_s8(v71, v67);
                    v360.val[1] = vqtbl2q_s8(v360, v55);
                    v344.val[1] = vqtbl2q_s8(v344, v68);
                    v344.val[0] = vqtbl1q_s8(v71, v69);
                    v73 = vqtbl2q_s8(v344, v55);
                    v344.val[1] = vqtbl2q_s8(v346, xmmword_296B8F070);
                    v344.val[0] = vqtbl1q_s8(v70, v54);
                    v74 = vqtbl2q_s8(v344, v55);
                    v344.val[1] = vqtbl2q_s8(v346, v68);
                    v344.val[0] = vqtbl1q_s8(v70, v69);
                    v346.val[0] = vqtbl2q_s8(v344, v55);
                    v306 = vaddq_s32(vshlq_n_s64(v356.val[1], 0x20uLL), v356.val[1]);
                    v308 = vaddq_s32(vshlq_n_s64(v356.val[0], 0x20uLL), v356.val[0]);
                    v346.val[1] = vaddq_s32(vshlq_n_s64(v358.val[0], 0x20uLL), v358.val[0]);
                    v356.val[1] = vaddq_s32(vshlq_n_s64(v358.val[1], 0x20uLL), v358.val[1]);
                    v360.val[0] = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                    v75 = vaddq_s32(vshlq_n_s64(v74, 0x20uLL), v74);
                    v346.val[0] = vaddq_s32(vshlq_n_s64(v346.val[0], 0x20uLL), v346.val[0]);
                    v358.val[1] = vaddq_s32(vshlq_n_s64(v360.val[1], 0x20uLL), v360.val[1]);
                    v364.val[1] = *(v328[0] + v63 - 32);
                    v367.val[1] = *(v328[0] + v63 - 16);
                    v76 = *(v59 + v63 - 32);
                    v77 = *(v59 + v63 - 16);
                    v364.val[0] = *(v58 + v63 - 32);
                    v367.val[0] = *(v58 + v63 - 16);
                    v358.val[0] = vqtbl2q_s8(v364, v64);
                    v78 = vqtbl1q_s8(v76, v66);
                    v79 = vdupq_lane_s32(*v346.val[1].i8, 1);
                    v80 = vqtbl2q_s8(v358, xmmword_296B8F020);
                    v358.val[0] = vqtbl2q_s8(v367, v64);
                    v81 = vqtbl1q_s8(v77, v66);
                    v82 = vqtbl2q_s8(v358, xmmword_296B8F020);
                    v358.val[0] = vdupq_lane_s32(*v306.i8, 1);
                    v353.val[1] = vqtbl2q_s8(v367, xmmword_296B8F000);
                    v353.val[0] = vqtbl1q_s8(v77, v67);
                    v353.val[0] = vqtbl2q_s8(v353, xmmword_296B8F020);
                    v83 = vqtbl2q_s8(v364, xmmword_296B8F070);
                    v84 = vdupq_lane_s32(*v308.i8, 1);
                    v353.val[1] = vqtbl1q_s8(v76, xmmword_296B8F0D0);
                    v353.val[1] = vqtbl2q_s8(*(&v353 + 16), xmmword_296B8F020);
                    v355.val[1] = vqtbl2q_s8(v364, xmmword_296B8F000);
                    v355.val[0] = vqtbl1q_s8(v76, xmmword_296B8F0C0);
                    v84.i64[0] = 0;
                    v355.val[0] = vqtbl2q_s8(v355, xmmword_296B8F020);
                    v364.val[1] = vqtbl2q_s8(v364, xmmword_296B8F030);
                    v364.val[0] = vqtbl1q_s8(v76, xmmword_296B8F0E0);
                    v364.val[1] = vqtbl2q_s8(v364, xmmword_296B8F020);
                    v358.val[0].i64[0] = 0;
                    v344.val[1] = vqtbl2q_s8(v367, xmmword_296B8F070);
                    v344.val[0] = vqtbl1q_s8(v77, xmmword_296B8F0D0);
                    v344.val[0] = vqtbl2q_s8(v344, xmmword_296B8F020);
                    v367.val[1] = vqtbl2q_s8(v367, xmmword_296B8F030);
                    v367.val[0] = vqtbl1q_s8(v77, xmmword_296B8F0E0);
                    v344.val[1] = vqtbl2q_s8(v367, xmmword_296B8F020);
                    v85 = vaddq_s32(vdupq_lane_s32(*v358.val[1].i8, 1), v358.val[1]);
                    v358.val[1] = vaddq_s32(vshlq_n_s64(v80, 0x20uLL), v80);
                    v79.i64[0] = 0;
                    v360.val[1] = vaddq_s32(vshlq_n_s64(v82, 0x20uLL), v82);
                    v86 = vaddq_s32(vshlq_n_s64(v353.val[1], 0x20uLL), v353.val[1]);
                    v367.val[1] = vaddq_s32(vshlq_n_s64(v355.val[0], 0x20uLL), v355.val[0]);
                    v344.val[0] = vaddq_s32(vshlq_n_s64(v344.val[0], 0x20uLL), v344.val[0]);
                    v87 = vaddq_s32(vdupq_lane_s32(*v360.val[0].i8, 1), v360.val[0]);
                    v344.val[1] = vaddq_s32(vshlq_n_s64(v344.val[1], 0x20uLL), v344.val[1]);
                    v364.val[0] = vaddq_s32(vdupq_lane_s32(*v75.i8, 1), v75);
                    v364.val[1] = vaddq_s32(vshlq_n_s64(v364.val[1], 0x20uLL), v364.val[1]);
                    v88 = vaddq_s32(vdupq_lane_s32(*v346.val[0].i8, 1), v346.val[0]);
                    v89 = vdupq_lane_s32(*v358.val[1].i8, 1);
                    v89.i64[0] = 0;
                    v90 = vaddq_s32(vshlq_n_s64(v353.val[0], 0x20uLL), v353.val[0]);
                    v360.val[0] = vaddq_s32(vdupq_lane_s32(*v86.i8, 1), v86);
                    v346.val[0] = vaddq_s32(vdupq_lane_s32(*v367.val[1].i8, 1), v367.val[1]);
                    v367.val[0] = vaddq_s32(vdupq_lane_s32(*v364.val[1].i8, 1), v364.val[1]);
                    v364.val[1] = vaddq_s32(vdupq_lane_s32(*v344.val[0].i8, 1), v344.val[0]);
                    v91 = vaddq_s32(vdupq_lane_s32(*v344.val[1].i8, 1), v344.val[1]);
                    v344.val[1] = *(v321[0] + v63 - 32);
                    v350.val[1] = *(v321[0] + v63 - 16);
                    v356.val[0] = vaddq_s32(v87, v85);
                    v92 = *(v61 + v63 - 32);
                    v367.val[1] = *(v61 + v63 - 16);
                    v344.val[0] = *(v60 + v63 - 32);
                    v350.val[0] = *(v60 + v63 - 16);
                    v353.val[0] = vqtbl2q_s8(v344, xmmword_296B8F050);
                    v346.val[0] = vaddq_s32(v367.val[0], v346.val[0]);
                    v93 = vqtbl1q_s8(v92, xmmword_296B8F0B0);
                    v94 = vqtbl2q_s8(v353, xmmword_296B8F020);
                    v353.val[1] = vqtbl2q_s8(v350, xmmword_296B8F050);
                    v353.val[0] = vqtbl1q_s8(v367.val[1], xmmword_296B8F0B0);
                    v353.val[0] = vqtbl2q_s8(v353, xmmword_296B8F020);
                    v346.val[1] = vaddq_s32(v79, v346.val[1]);
                    v355.val[0] = vqtbl2q_s8(v350, xmmword_296B8F000);
                    v353.val[1] = vqtbl1q_s8(v367.val[1], xmmword_296B8F0C0);
                    v353.val[1] = vqtbl2q_s8(*(&v353 + 16), xmmword_296B8F020);
                    v355.val[1] = vqtbl2q_s8(v344, xmmword_296B8F070);
                    v355.val[0] = vqtbl1q_s8(v92, xmmword_296B8F0D0);
                    v355.val[0] = vqtbl2q_s8(v355, xmmword_296B8F020);
                    v343.val[1] = vqtbl2q_s8(v344, xmmword_296B8F000);
                    v343.val[0] = vqtbl1q_s8(v92, xmmword_296B8F0C0);
                    v355.val[1] = vdupq_lane_s32(*v360.val[1].i8, 1);
                    v343.val[0] = vqtbl2q_s8(v343, xmmword_296B8F020);
                    v355.val[1].i64[0] = 0;
                    v344.val[0] = vqtbl2q_s8(v344, xmmword_296B8F030);
                    v343.val[1] = vqtbl1q_s8(v92, xmmword_296B8F0E0);
                    v343.val[1] = vqtbl2q_s8(v344, xmmword_296B8F020);
                    v344.val[1] = vqtbl2q_s8(v350, xmmword_296B8F070);
                    v344.val[0] = vqtbl1q_s8(v367.val[1], xmmword_296B8F0D0);
                    v95 = vdupq_lane_s32(*v90.i8, 1);
                    v344.val[0] = vqtbl2q_s8(v344, xmmword_296B8F020);
                    v95.i64[0] = 0;
                    v350.val[1] = vqtbl2q_s8(v350, xmmword_296B8F030);
                    v96 = vdupq_laneq_s32(v91, 3);
                    v350.val[0] = vqtbl1q_s8(v367.val[1], xmmword_296B8F0E0);
                    v344.val[1] = vqtbl2q_s8(v350, xmmword_296B8F020);
                    v97 = vaddq_s32(vshlq_n_s64(v94, 0x20uLL), v94);
                    v367.val[1] = vaddq_s32(vshlq_n_s64(v353.val[0], 0x20uLL), v353.val[0]);
                    v350.val[1] = vaddq_s32(v84, v308);
                    v98 = vaddq_s32(vshlq_n_s64(v353.val[1], 0x20uLL), v353.val[1]);
                    v99 = vaddq_s32(vshlq_n_s64(v355.val[0], 0x20uLL), v355.val[0]);
                    v67 = xmmword_296B8F0C0;
                    v100 = vaddq_s32(v95, v90);
                    v101 = vaddq_s32(vshlq_n_s64(v343.val[0], 0x20uLL), v343.val[0]);
                    v344.val[1] = vaddq_s32(vshlq_n_s64(v344.val[1], 0x20uLL), v344.val[1]);
                    v65 = xmmword_296B8F000;
                    v350.val[0] = vaddq_s32(vshlq_n_s64(v344.val[0], 0x20uLL), v344.val[0]);
                    v344.val[0] = vdupq_lane_s32(*v98.i8, 1);
                    v358.val[1] = vaddq_s32(v89, v358.val[1]);
                    v343.val[0] = vaddq_s32(vshlq_n_s64(v343.val[1], 0x20uLL), v343.val[1]);
                    v343.val[1] = vdupq_lane_s32(*v367.val[1].i8, 1);
                    v344.val[0].i64[0] = 0;
                    v102 = vaddq_s32(v344.val[0], v98);
                    v343.val[1].i64[0] = 0;
                    v343.val[1] = vaddq_s32(v343.val[1], v367.val[1]);
                    v344.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v356.val[1].i8, 1), v356.val[1]), v350.val[1]);
                    v356.val[1] = vaddq_s32(vdupq_lane_s32(*v99.i8, 1), v99);
                    v64 = xmmword_296B8F050;
                    v367.val[1] = vdupq_lane_s32(*v97.i8, 1);
                    v358.val[0] = vaddq_s32(vdupq_laneq_s32(v364.val[0], 3), vaddq_s32(v358.val[0], v306));
                    v367.val[1].i64[0] = 0;
                    v103 = vaddq_s32(v367.val[1], v97);
                    v104 = vaddq_s32(vdupq_laneq_s32(v88, 3), v346.val[1]);
                    v105 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v344.val[1].i8, 1), v344.val[1]), 3);
                    v344.val[1] = vaddq_s32(v360.val[0], v358.val[1]);
                    v66 = xmmword_296B8F0B0;
                    v358.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v350.val[0].i8, 1), v350.val[0]), 3);
                    v106 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v343.val[0].i8, 1), v343.val[0]), vaddq_s32(vdupq_lane_s32(*v101.i8, 1), v101));
                    v343.val[0] = vaddq_s32(vdupq_laneq_s32(v364.val[1], 3), vaddq_s32(v355.val[1], v360.val[1]));
                    v360.val[1] = *(v314[0] + v63 - 32);
                    v364.val[1] = *(v314[0] + v63 - 16);
                    v367.val[1] = *(v62 + v63 - 32);
                    v367.val[0] = *(v62 + v63 - 16);
                    v107 = vaddq_s32(v96, v100);
                    v360.val[0] = *(result + v63 - 32);
                    v364.val[0] = *(result + v63 - 16);
                    v108 = vqtbl2q_s8(v360, xmmword_296B8F050);
                    v346.val[1] = vqtbl1q_s8(v367.val[1], xmmword_296B8F0B0);
                    v356.val[1] = vaddq_s32(v356.val[1], v103);
                    v109 = vqtbl2q_s8(*(&v346 + 16), xmmword_296B8F020);
                    v110 = vqtbl2q_s8(v364, xmmword_296B8F050);
                    v346.val[1] = vqtbl1q_s8(v367.val[0], xmmword_296B8F0B0);
                    v346.val[1] = vqtbl2q_s8(*(&v346 + 16), xmmword_296B8F020);
                    v350.val[0] = vqtbl2q_s8(v364, xmmword_296B8F000);
                    v343.val[1] = vaddq_s32(v358.val[1], v343.val[1]);
                    v111 = vqtbl1q_s8(v367.val[0], xmmword_296B8F0C0);
                    v358.val[1] = vqtbl2q_s8(v350, xmmword_296B8F020);
                    v350.val[0] = vqtbl2q_s8(v360, xmmword_296B8F070);
                    v112 = vqtbl1q_s8(v367.val[1], xmmword_296B8F0D0);
                    v113 = vqtbl2q_s8(v350, xmmword_296B8F020);
                    v114 = vaddq_s32(v105, v102);
                    v350.val[1] = vqtbl2q_s8(v360, xmmword_296B8F000);
                    v350.val[0] = vqtbl1q_s8(v367.val[1], xmmword_296B8F0C0);
                    v115 = vqtbl2q_s8(v350, xmmword_296B8F020);
                    v358.val[0] = vaddq_s32(v104, v358.val[0]);
                    v360.val[1] = vqtbl2q_s8(v360, xmmword_296B8F030);
                    v360.val[0] = vqtbl1q_s8(v367.val[1], xmmword_296B8F0E0);
                    v360.val[0] = vqtbl2q_s8(v360, xmmword_296B8F020);
                    v350.val[1] = vqtbl2q_s8(v364, xmmword_296B8F070);
                    v350.val[0] = vqtbl1q_s8(v367.val[0], xmmword_296B8F0D0);
                    v344.val[0] = vaddq_s32(v344.val[0], v356.val[0]);
                    v356.val[0] = vqtbl2q_s8(v350, xmmword_296B8F020);
                    v69 = xmmword_296B8F0E0;
                    v68 = xmmword_296B8F030;
                    v116 = vdupq_lane_s32(*v52.i8, 0);
                    v343.val[0] = vaddq_s32(v107, v343.val[0]);
                    v364.val[1] = vqtbl2q_s8(v364, xmmword_296B8F030);
                    v364.val[0] = vqtbl1q_s8(v367.val[0], xmmword_296B8F0E0);
                    v55 = xmmword_296B8F020;
                    v117 = vqtbl2q_s8(v364, xmmword_296B8F020);
                    v344.val[1] = vaddq_s32(v344.val[1], v346.val[0]);
                    v346.val[0] = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
                    v358.val[1] = vaddq_s32(vshlq_n_s64(v358.val[1], 0x20uLL), v358.val[1]);
                    v343.val[1] = vaddq_s32(v114, v343.val[1]);
                    v118 = vaddq_s32(vshlq_n_s64(v115, 0x20uLL), v115);
                    v356.val[0] = vaddq_s32(vshlq_n_s64(v356.val[0], 0x20uLL), v356.val[0]);
                    v119 = vaddq_s32(v356.val[1], v106);
                    v356.val[1] = vaddq_s32(vshlq_n_s64(v117, 0x20uLL), v117);
                    v53 = vdupq_lane_s32(*v356.val[0].i8, 1);
                    v344.val[0] = vaddq_s32(v358.val[0], v344.val[0]);
                    v43 = vaddq_s32(vshlq_n_s64(v360.val[0], 0x20uLL), v360.val[0]);
                    v343.val[0] = vaddq_s32(v343.val[0], v344.val[1]);
                    v344.val[1] = vaddq_s32(vshlq_n_s64(v113, 0x20uLL), v113);
                    v52 = vdupq_lane_s32(*v358.val[1].i8, 1);
                    v120 = vaddq_s32(v343.val[1], v119);
                    v343.val[1] = vaddq_s32(vshlq_n_s64(v346.val[1], 0x20uLL), v346.val[1]);
                    v346.val[1] = vdupq_lane_s32(*v343.val[1].i8, 1);
                    v52.i64[0] = 0;
                    v344.val[0] = vaddq_s32(v344.val[0], vdupq_lane_s32(*v41.i8, 0));
                    v44 = vaddq_s32(v52, v358.val[1]);
                    v121 = vdupq_lane_s32(*v346.val[0].i8, 1);
                    v121.i64[0] = 0;
                    v346.val[1].i64[0] = 0;
                    v343.val[1] = vaddq_s32(v346.val[1], v343.val[1]);
                    v346.val[0] = vaddq_s32(v121, v346.val[0]);
                    v122 = vaddq_s32(v120, v116);
                    v54 = xmmword_296B8F0D0;
                    v346.val[1] = vaddq_s32(vdupq_lane_s32(*v118.i8, 1), v118);
                    v42 = vaddq_s32(vdupq_lane_s32(*v43.i8, 1), v43);
                    v41 = vaddq_s32(vdupq_lane_s32(*v356.val[1].i8, 1), v356.val[1]);
                    v356.val[1] = vdupq_laneq_s32(v41, 3);
                    v41.i32[0] = v344.val[0].i32[3];
                    v344.val[0] = vdupq_laneq_s32(vaddq_s32(v53, v356.val[0]), 3);
                    v40 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v344.val[1].i8, 1), v344.val[1]), v346.val[0]);
                    v53.i32[0] = vaddq_s32(*&v343, vdupq_lane_s32(v310, 0)).i32[3];
                    v343.val[0] = vaddq_s32(vaddq_s32(v356.val[1], v44), vaddq_s32(v344.val[0], v343.val[1]));
                    v39 = vaddq_s32(v40, vaddq_s32(v42, v346.val[1]));
                    v38 = vaddq_s32(v343.val[0], v39);
                    v52.i32[0] = v122.i32[3];
                    v37 = vaddq_s32(v38, vdupq_lane_s32(v312, 0));
                    v63 += 32;
                    v51 = v37.u32[3] | 0xFF01FFFF00000000;
                  }

                  while (v63 <= v35);
                  v50 = v35 & 0xFFFFFFE0;
                  v45 = 0uLL;
                }

                else
                {
                  v50 = 0;
                  v51 = 0;
                  v52.i64[0] = 0;
                  v53.i64[0] = 0;
                  v41.i64[0] = 0;
                  v54 = xmmword_296B8F0D0;
                  v55 = xmmword_296B8F020;
                }

                if ((v50 | 8) <= v35)
                {
                  result = v322 + v321[0];
                  do
                  {
                    v37.i64[0] = *(v335[0] + v50);
                    v38.i64[0] = *(v336 + v335[0] + v50);
                    v39.i64[0] = *(v335[0] + 2 * v336 + v50);
                    v124 = vzip1q_s8(v45, v38);
                    v125 = vzip1q_s8(v39, v37);
                    v126 = vzip1q_s8(v124, v125);
                    v127 = vzip2q_s8(v124, v125);
                    v128 = vaddq_s32(vshlq_n_s64(v126, 0x20uLL), v126);
                    v129 = vaddq_s32(vshlq_n_s64(v127, 0x20uLL), v127);
                    v130 = vdupq_lane_s32(*v129.i8, 1);
                    v40 = vdupq_lane_s32(*v41.i8, 0);
                    v131 = vaddq_s32(*&v130, vaddq_s32(v129, *&v40)).i32[3];
                    v132 = vaddq_s32(vdupq_lane_s32(*v128.i8, 1), v128);
                    v132.i64[0] = *(v328[0] + v50);
                    v41.i32[0] = v131 + v132.i32[3];
                    v130.i64[0] = *(v329 + v328[0] + v50);
                    v128.i64[0] = *(v328[0] + 2 * v329 + v50);
                    v133 = vzip1q_s8(v45, v130);
                    v134 = vzip1q_s8(v128, v132);
                    v135 = vzip1q_s8(v133, v134);
                    v136 = vzip2q_s8(v133, v134);
                    v137 = vaddq_s32(vshlq_n_s64(v135, 0x20uLL), v135);
                    v138 = vaddq_s32(vshlq_n_s64(v136, 0x20uLL), v136);
                    v139 = vdupq_lane_s32(*v138.i8, 1);
                    v140 = vaddq_s32(vdupq_lane_s32(*v137.i8, 1), v137);
                    v141 = vaddq_s32(v139, vaddq_s32(v138, vdupq_lane_s32(*v53.i8, 0)));
                    v141.i64[0] = *(v321[0] + v50);
                    v139.i64[0] = *(result + v50);
                    v142 = v141.i32[3] + v140.i32[3];
                    v140.i64[0] = *(v321[0] + 2 * v322 + v50);
                    v143 = vzip1q_s8(v45, v139);
                    v144 = vzip1q_s8(v140, v141);
                    v145 = vzip1q_s8(v143, v144);
                    v146 = vzip2q_s8(v143, v144);
                    v147 = vaddq_s32(vshlq_n_s64(v146, 0x20uLL), v146);
                    v148 = vdupq_lane_s32(*v147.i8, 1);
                    v149 = vaddq_s32(vshlq_n_s64(v145, 0x20uLL), v145);
                    v150 = vaddq_s32(vdupq_lane_s32(*v149.i8, 1), v149);
                    v151 = vaddq_s32(v148, vaddq_s32(v147, vdupq_lane_s32(*v52.i8, 0)));
                    v53.i32[0] = v142;
                    v151.i64[0] = *(v314[0] + v50);
                    v148.i64[0] = *(v315 + v314[0] + v50);
                    v52.i32[0] = v151.i32[3] + v150.i32[3];
                    v150.i64[0] = *(v314[0] + 2 * v315 + v50);
                    v152 = vzip1q_s8(v45, v148);
                    v153 = vzip1q_s8(v150, v151);
                    v154 = vzip1q_s8(v152, v153);
                    v155 = vzip2q_s8(v152, v153);
                    v156 = vaddq_s32(vshlq_n_s64(v155, 0x20uLL), v155);
                    v38 = vdupq_lane_s32(*v156.i8, 1);
                    v157 = vaddq_s32(vshlq_n_s64(v154, 0x20uLL), v154);
                    v39 = vaddq_s32(vdupq_lane_s32(*v157.i8, 1), v157);
                    v37 = vaddq_s32(v38, vaddq_s32(v156, vdupq_lane_s32(v51, 0)));
                    LODWORD(v51) = v37.i32[3] + v39.i32[3];
                    v123 = v50 + 8;
                    v158 = v50 + 16;
                    v50 += 8;
                  }

                  while (v158 <= v35);
                }

                else
                {
                  v123 = v50;
                }

                if (v123 <= v35)
                {
                  v159 = v35;
                }

                else
                {
                  v159 = v123;
                }

                if (v159 + 32 <= v36)
                {
                  v162 = v335[0] + 2 * v336;
                  v163 = v336 + v335[0];
                  v164 = v328[0] + 2 * v329;
                  v165 = v329 + v328[0];
                  v166 = v321[0] + 2 * v322;
                  result = v322 + v321[0];
                  v167 = v314[0] + 2 * v315;
                  v168 = v315 + v314[0];
                  v169 = a11;
                  do
                  {
                    v351.val[1] = *(v46 + v159);
                    v351.val[0] = *(v162 + v159);
                    v311.val[0] = *(v162 + v159 + 16);
                    v311.val[1] = *(v46 + v159 + 16);
                    v345.val[1] = vqtbl2q_s8(v351, xmmword_296B8F070);
                    v299 = *(v163 + v159);
                    v345.val[0] = vqtbl1q_s8(v299, v54);
                    v170 = vdupq_lane_s32(*v41.i8, 0);
                    v171 = vqtbl2q_s8(v345, v55);
                    v359.val[1] = *(v47 + v159);
                    v359.val[0] = *(v164 + v159);
                    v313.val[0] = *(v164 + v159 + 16);
                    v313.val[1] = *(v47 + v159 + 16);
                    v345.val[0] = vqtbl2q_s8(v359, xmmword_296B8F070);
                    v172 = vqtbl1q_s8(*(v165 + v159), v54);
                    v173 = *(v165 + v159);
                    v174 = vaddq_s32(vshlq_n_s64(v171, 0x20uLL), v171);
                    v175 = vqtbl2q_s8(v345, v55);
                    v176 = vdupq_lane_s32(*v53.i8, 0);
                    v177 = vdupq_lane_s32(*v174.i8, 1);
                    v178 = vaddq_s32(vshlq_n_s64(v175, 0x20uLL), v175);
                    v347.val[1] = *(v48 + v159);
                    v345.val[1] = vdupq_lane_s32(*v178.i8, 1);
                    v347.val[0] = *(v166 + v159);
                    v309.val[0] = *(v166 + v159 + 16);
                    v309.val[1] = *(v48 + v159 + 16);
                    v298 = v347;
                    v342.val[1] = vqtbl2q_s8(v347, xmmword_296B8F070);
                    v177.i64[0] = 0;
                    v297 = *(result + v159);
                    v342.val[0] = vqtbl1q_s8(v297, v54);
                    v342.val[0] = vqtbl2q_s8(v342, v55);
                    v345.val[1].i64[0] = 0;
                    v342.val[0] = vaddq_s32(vshlq_n_s64(v342.val[0], 0x20uLL), v342.val[0]);
                    v347.val[1] = vdupq_lane_s32(*v342.val[0].i8, 1);
                    v347.val[1].i64[0] = 0;
                    v179 = vaddq_s32(v177, v174);
                    v347.val[0] = vdupq_lane_s32(*v52.i8, 0);
                    v362.val[1] = *(v49 + v159);
                    v180 = vaddq_s32(v345.val[1], v178);
                    v362.val[0] = *(v167 + v159);
                    v301 = *(v167 + v159 + 16);
                    v302 = *(v49 + v159 + 16);
                    v296 = v362.val[1];
                    v181 = vqtbl2q_s8(v362, xmmword_296B8F070);
                    v182 = vaddq_s32(v347.val[1], v342.val[0]);
                    v342.val[1] = vqtbl1q_s8(*(v168 + v159), v54);
                    v294 = *(v168 + v159);
                    v342.val[0] = vqtbl2q_s8(*(&v342 + 16), v55);
                    v183 = vaddq_s32(v179, v170);
                    v342.val[1] = vaddq_s32(vshlq_n_s64(v342.val[0], 0x20uLL), v342.val[0]);
                    v184 = vdupq_lane_s32(*v342.val[1].i8, 1);
                    v184.i64[0] = 0;
                    v345.val[1] = vaddq_s32(v180, v176);
                    v185 = vaddq_s32(v182, v347.val[0]);
                    v345.val[0] = vaddq_s32(v184, v342.val[1]);
                    v186 = vdupq_lane_s32(v51, 0);
                    v347.val[1] = vaddq_s32(v345.val[0], v186);
                    v342.val[0] = vzip1q_s32(v183, v185);
                    v342.val[1] = vzip1q_s32(v345.val[1], v347.val[1]);
                    v187 = v169;
                    v304 = *(v165 + v159 + 16);
                    v305 = *(v163 + v159 + 16);
                    v295 = *(result + v159 + 16);
                    v307 = *(v168 + v159 + 16);
                    vst2q_f32(v187, v342);
                    v187 += 8;
                    v342.val[0] = vzip2q_s32(v183, v185);
                    v342.val[1] = vzip2q_s32(v345.val[1], v347.val[1]);
                    vst2q_f32(v187, v342);
                    v342.val[1] = vqtbl2q_s8(v351, xmmword_296B8F050);
                    v342.val[0] = vqtbl1q_s8(v299, xmmword_296B8F0B0);
                    v342.val[0] = vqtbl2q_s8(v342, xmmword_296B8F020);
                    v342.val[0] = vaddq_s32(vshlq_n_s64(v342.val[0], 0x20uLL), v342.val[0]);
                    v342.val[1] = vdupq_lane_s32(*v342.val[0].i8, 1);
                    v342.val[1].i64[0] = 0;
                    v342.val[0] = vaddq_s32(v342.val[1], v342.val[0]);
                    v357.val[1] = vqtbl2q_s8(v359, xmmword_296B8F050);
                    v188 = v173;
                    v357.val[0] = vqtbl1q_s8(v173, xmmword_296B8F0B0);
                    v342.val[1] = vqtbl2q_s8(v357, xmmword_296B8F020);
                    v342.val[1] = vaddq_s32(vshlq_n_s64(v342.val[1], 0x20uLL), v342.val[1]);
                    v189 = vaddq_s32(vdupq_laneq_s32(v179, 3), v342.val[0]);
                    v342.val[0] = vdupq_lane_s32(*v342.val[1].i8, 1);
                    v342.val[0].i64[0] = 0;
                    v342.val[0] = vaddq_s32(v342.val[0], v342.val[1]);
                    v362.val[1] = v298.val[0];
                    v190 = v298.val[1];
                    v357.val[1] = vqtbl2q_s8(*(&v362 + 16), xmmword_296B8F050);
                    v357.val[0] = vqtbl1q_s8(v297, xmmword_296B8F0B0);
                    v342.val[1] = vqtbl2q_s8(v357, xmmword_296B8F020);
                    v342.val[1] = vaddq_s32(vshlq_n_s64(v342.val[1], 0x20uLL), v342.val[1]);
                    v345.val[1] = vdupq_lane_s32(*v342.val[1].i8, 1);
                    v345.val[1].i64[0] = 0;
                    v191 = vaddq_s32(vdupq_laneq_s32(v180, 3), v342.val[0]);
                    v366.val[0] = v362.val[0];
                    v366.val[1] = v296;
                    v357.val[1] = vqtbl2q_s8(v366, xmmword_296B8F050);
                    v357.val[0] = vqtbl1q_s8(v294, xmmword_296B8F0B0);
                    v342.val[0] = vqtbl2q_s8(v357, xmmword_296B8F020);
                    v345.val[1] = vaddq_s32(vdupq_laneq_s32(v182, 3), vaddq_s32(v345.val[1], v342.val[1]));
                    v342.val[0] = vaddq_s32(vshlq_n_s64(v342.val[0], 0x20uLL), v342.val[0]);
                    v342.val[1] = vdupq_lane_s32(*v342.val[0].i8, 1);
                    v342.val[1].i64[0] = 0;
                    v192 = vaddq_s32(vdupq_laneq_s32(v345.val[0], 3), vaddq_s32(v342.val[1], v342.val[0]));
                    v342.val[1] = vaddq_s32(v189, v170);
                    v193 = v170;
                    v345.val[0] = vaddq_s32(v191, v176);
                    v194 = v347.val[0];
                    v357.val[0] = vaddq_s32(v345.val[1], v347.val[0]);
                    v357.val[1] = vaddq_s32(v192, v186);
                    v354.val[0] = vzip2q_s32(v342.val[1], v357.val[0]);
                    v354.val[1] = vzip2q_s32(v345.val[0], v357.val[1]);
                    v342.val[0] = vzip1q_s32(v342.val[1], v357.val[0]);
                    v342.val[1] = vzip1q_s32(v345.val[0], v357.val[1]);
                    v195 = v169 + 16;
                    vst2q_f32(v195, v342);
                    v342.val[1] = vqtbl2q_s8(v351, xmmword_296B8F030);
                    v342.val[0] = vqtbl1q_s8(v299, xmmword_296B8F0E0);
                    v342.val[0] = vqtbl2q_s8(v342, xmmword_296B8F020);
                    v357.val[1] = vqtbl2q_s8(v311, xmmword_296B8F070);
                    v357.val[0] = vqtbl1q_s8(v305, xmmword_296B8F0D0);
                    v342.val[1] = vqtbl2q_s8(v357, xmmword_296B8F020);
                    v357.val[1] = vqtbl2q_s8(v351, xmmword_296B8F000);
                    v357.val[0] = vqtbl1q_s8(v299, xmmword_296B8F0C0);
                    v345.val[0] = vqtbl2q_s8(v357, xmmword_296B8F020);
                    v342.val[0] = vaddq_s32(vshlq_n_s64(v342.val[0], 0x20uLL), v342.val[0]);
                    v342.val[1] = vaddq_s32(vshlq_n_s64(v342.val[1], 0x20uLL), v342.val[1]);
                    v345.val[0] = vaddq_s32(vshlq_n_s64(v345.val[0], 0x20uLL), v345.val[0]);
                    v357.val[0] = vdupq_lane_s32(*v345.val[0].i8, 1);
                    v357.val[0].i64[0] = 0;
                    v357.val[0] = vaddq_s32(v357.val[0], v345.val[0]);
                    v345.val[0] = vdupq_lane_s32(*v342.val[0].i8, 1);
                    v345.val[0].i64[0] = 0;
                    v342.val[0] = vaddq_s32(v345.val[0], v342.val[0]);
                    v345.val[0] = vdupq_lane_s32(*v342.val[1].i8, 1);
                    v345.val[0].i64[0] = 0;
                    v347.val[0] = vaddq_s32(v345.val[0], v342.val[1]);
                    v342.val[1] = vaddq_s32(vdupq_laneq_s32(v342.val[0], 3), v357.val[0]);
                    v352 = v359;
                    v357.val[1] = vqtbl2q_s8(v359, xmmword_296B8F030);
                    v357.val[0] = vqtbl1q_s8(v188, xmmword_296B8F0E0);
                    v357.val[0] = vqtbl2q_s8(v357, xmmword_296B8F020);
                    v359.val[0] = vqtbl2q_s8(v313, xmmword_296B8F070);
                    v357.val[1] = vqtbl1q_s8(v304, xmmword_296B8F0D0);
                    v357.val[1] = vqtbl2q_s8(v359, xmmword_296B8F020);
                    v359.val[1] = vqtbl2q_s8(v352, xmmword_296B8F000);
                    v359.val[0] = vqtbl1q_s8(v188, xmmword_296B8F0C0);
                    v359.val[0] = vqtbl2q_s8(v359, xmmword_296B8F020);
                    v357.val[0] = vaddq_s32(vshlq_n_s64(v357.val[0], 0x20uLL), v357.val[0]);
                    v359.val[0] = vaddq_s32(vshlq_n_s64(v359.val[0], 0x20uLL), v359.val[0]);
                    v362.val[0] = vdupq_lane_s32(*v359.val[0].i8, 1);
                    v357.val[1] = vaddq_s32(vshlq_n_s64(v357.val[1], 0x20uLL), v357.val[1]);
                    v362.val[0].i64[0] = 0;
                    v359.val[0] = vaddq_s32(v362.val[0], v359.val[0]);
                    v359.val[1] = vdupq_lane_s32(*v357.val[0].i8, 1);
                    v359.val[1].i64[0] = 0;
                    v362.val[0] = vdupq_lane_s32(*v357.val[1].i8, 1);
                    v362.val[0].i64[0] = 0;
                    v345.val[0] = vaddq_s32(v362.val[0], v357.val[1]);
                    v357.val[0] = vaddq_s32(v359.val[1], v357.val[0]);
                    v196 = vqtbl2q_s8(*(&v362 + 16), xmmword_296B8F030);
                    v359.val[1] = vqtbl1q_s8(v297, xmmword_296B8F0E0);
                    v357.val[1] = vqtbl2q_s8(*(&v359 + 16), xmmword_296B8F020);
                    v197 = vqtbl2q_s8(v309, xmmword_296B8F070);
                    v359.val[1] = vqtbl1q_s8(v295, xmmword_296B8F0D0);
                    v359.val[1] = vqtbl2q_s8(*(&v359 + 16), xmmword_296B8F020);
                    v361.val[1] = vqtbl2q_s8(*(&v362 + 16), xmmword_296B8F000);
                    v361.val[0] = vqtbl1q_s8(v297, xmmword_296B8F0C0);
                    v361.val[0] = vqtbl2q_s8(v361, xmmword_296B8F020);
                    v357.val[1] = vaddq_s32(vshlq_n_s64(v357.val[1], 0x20uLL), v357.val[1]);
                    v359.val[1] = vaddq_s32(vshlq_n_s64(v359.val[1], 0x20uLL), v359.val[1]);
                    v361.val[0] = vaddq_s32(vshlq_n_s64(v361.val[0], 0x20uLL), v361.val[0]);
                    v361.val[1] = vdupq_lane_s32(*v361.val[0].i8, 1);
                    v361.val[1].i64[0] = 0;
                    v361.val[0] = vaddq_s32(v361.val[1], v361.val[0]);
                    v347.val[1] = vdupq_laneq_s32(v189, 3);
                    v361.val[1] = vaddq_s32(v342.val[1], v347.val[1]);
                    v198 = v193;
                    v342.val[0] = vaddq_s32(vaddq_s32(v342.val[0], v193), v347.val[1]);
                    v342.val[1] = vdupq_lane_s32(*v359.val[1].i8, 1);
                    v342.val[1].i64[0] = 0;
                    v347.val[1] = vdupq_lane_s32(*v357.val[1].i8, 1);
                    v352.val[1] = vaddq_s32(v342.val[1], v359.val[1]);
                    v347.val[1].i64[0] = 0;
                    v347.val[1] = vaddq_s32(v347.val[1], v357.val[1]);
                    v357.val[1] = vaddq_s32(vdupq_laneq_s32(v347.val[1], 3), v361.val[0]);
                    v359.val[1] = vdupq_laneq_s32(v191, 3);
                    v361.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v357.val[0], 3), v359.val[0]), v359.val[1]);
                    v357.val[0] = vaddq_s32(vaddq_s32(v357.val[0], v176), v359.val[1]);
                    v359.val[1] = vqtbl2q_s8(v366, xmmword_296B8F030);
                    v359.val[0] = vqtbl1q_s8(v294, xmmword_296B8F0E0);
                    v359.val[0] = vqtbl2q_s8(v359, xmmword_296B8F020);
                    v363.val[1] = vqtbl2q_s8(v366, xmmword_296B8F000);
                    v363.val[0] = vqtbl1q_s8(v294, xmmword_296B8F0C0);
                    v199 = v169 + 24;
                    v200 = v169 + 32;
                    v201 = v169 + 40;
                    v345.val[1] = vdupq_laneq_s32(v345.val[1], 3);
                    v352.val[0] = v194;
                    v362.val[0] = vaddq_s32(v357.val[1], v345.val[1]);
                    v357.val[1] = vqtbl2q_s8(v363, xmmword_296B8F020);
                    v359.val[0] = vaddq_s32(vshlq_n_s64(v359.val[0], 0x20uLL), v359.val[0]);
                    v359.val[1] = vaddq_s32(vshlq_n_s64(v357.val[1], 0x20uLL), v357.val[1]);
                    v345.val[1] = vaddq_s32(vaddq_s32(v347.val[1], v194), v345.val[1]);
                    v347.val[1] = vdupq_lane_s32(*v359.val[0].i8, 1);
                    v347.val[1].i64[0] = 0;
                    v300 = vdupq_laneq_s32(v361.val[1], 3);
                    v347.val[1] = vaddq_s32(v347.val[1], v359.val[0]);
                    v363.val[0] = vdupq_laneq_s32(v192, 3);
                    v363.val[1] = vaddq_s32(vaddq_s32(v347.val[1], v186), v363.val[0]);
                    v342.val[1] = v198;
                    v293 = v198;
                    v361.val[1] = vaddq_s32(v361.val[1], v198);
                    vst2q_f32(v199, v354);
                    v365.val[0] = vzip1q_s32(v342.val[0], v345.val[1]);
                    v365.val[1] = vzip1q_s32(v357.val[0], v363.val[1]);
                    vst2q_f32(v200, v365);
                    v366.val[1] = vdupq_laneq_s32(v361.val[0], 3);
                    v202 = vaddq_s32(v347.val[0], v342.val[1]);
                    v354.val[0] = v347.val[0];
                    v365.val[0] = vzip2q_s32(v342.val[0], v345.val[1]);
                    v365.val[1] = vzip2q_s32(v357.val[0], v363.val[1]);
                    v342.val[0] = vdupq_lane_s32(*v359.val[1].i8, 1);
                    v345.val[1] = vaddq_s32(v361.val[0], v176);
                    v342.val[1] = v345.val[0];
                    v342.val[0].i64[0] = 0;
                    v354.val[1] = vdupq_laneq_s32(v362.val[0], 3);
                    v342.val[0] = vaddq_s32(vdupq_laneq_s32(v347.val[1], 3), vaddq_s32(v342.val[0], v359.val[1]));
                    v303 = v352.val[0];
                    v361.val[0] = vaddq_s32(v352.val[1], v352.val[0]);
                    v44 = v352.val[1];
                    v342.val[0] = vaddq_s32(v342.val[0], v363.val[0]);
                    v347.val[1] = vaddq_s32(v362.val[0], v352.val[0]);
                    v292 = v186;
                    v362.val[0] = vaddq_s32(v342.val[0], v186);
                    vst2q_f32(v201, v365);
                    v365.val[0] = vzip2q_s32(v361.val[1], v347.val[1]);
                    v365.val[1] = vzip2q_s32(v345.val[1], v362.val[0]);
                    v352.val[1] = vzip1q_s32(v361.val[1], v347.val[1]);
                    v203 = vzip1q_s32(v345.val[1], v362.val[0]);
                    v42 = v301;
                    v43 = v302;
                    v362.val[0] = vqtbl2q_s8(*v42.i8, xmmword_296B8F070);
                    v361.val[1] = vqtbl1q_s8(v307, xmmword_296B8F0D0);
                    v345.val[1] = vaddq_s32(v202, v300);
                    v347.val[1] = vqtbl2q_s8(v362, xmmword_296B8F020);
                    v347.val[1] = vaddq_s32(vshlq_n_s64(v347.val[1], 0x20uLL), v347.val[1]);
                    v361.val[1] = vdupq_lane_s32(*v347.val[1].i8, 1);
                    v357.val[0] = vaddq_s32(vaddq_s32(v345.val[0], v176), v366.val[1]);
                    v362.val[0] = v366.val[1];
                    v361.val[1].i64[0] = 0;
                    v347.val[1] = vaddq_s32(v361.val[1], v347.val[1]);
                    v204 = vdupq_laneq_s32(v342.val[0], 3);
                    v342.val[0] = vaddq_s32(v361.val[0], v354.val[1]);
                    v361.val[0] = vaddq_s32(vaddq_s32(v347.val[1], v186), v204);
                    v363.val[0] = vzip2q_s32(v345.val[1], v342.val[0]);
                    v363.val[1] = vzip2q_s32(v357.val[0], v361.val[0]);
                    v349.val[0] = vzip1q_s32(v345.val[1], v342.val[0]);
                    v349.val[1] = vzip1q_s32(v357.val[0], v361.val[0]);
                    v205 = v169 + 48;
                    vst2q_f32(v205, *(&v352 + 16));
                    v52 = v311.val[0];
                    v366.val[1] = v311.val[1];
                    v361.val[1] = vqtbl2q_s8(*v52.i8, xmmword_296B8F030);
                    v361.val[0] = vqtbl1q_s8(v305, xmmword_296B8F0E0);
                    v342.val[0] = vqtbl2q_s8(v361, xmmword_296B8F020);
                    v361.val[1] = vqtbl2q_s8(*v52.i8, xmmword_296B8F050);
                    v361.val[0] = vqtbl1q_s8(v305, xmmword_296B8F0B0);
                    v345.val[1] = vqtbl2q_s8(v361, xmmword_296B8F020);
                    v345.val[1] = vaddq_s32(vshlq_n_s64(v345.val[1], 0x20uLL), v345.val[1]);
                    v357.val[0] = vdupq_lane_s32(*v345.val[1].i8, 1);
                    v357.val[0].i64[0] = 0;
                    v342.val[0] = vaddq_s32(vshlq_n_s64(v342.val[0], 0x20uLL), v342.val[0]);
                    v357.val[0] = vaddq_s32(v357.val[0], v345.val[1]);
                    v345.val[1] = vdupq_lane_s32(*v342.val[0].i8, 1);
                    v345.val[1].i64[0] = 0;
                    v352.val[0] = vaddq_s32(v345.val[1], v342.val[0]);
                    v206 = v313.val[0];
                    v345.val[0] = v313.val[1];
                    v361.val[1] = vqtbl2q_s8(v345, xmmword_296B8F030);
                    v361.val[0] = vqtbl1q_s8(v304, xmmword_296B8F0E0);
                    v345.val[1] = vqtbl2q_s8(v361, xmmword_296B8F020);
                    v361.val[1] = vqtbl2q_s8(v345, xmmword_296B8F050);
                    v361.val[0] = vqtbl1q_s8(v304, xmmword_296B8F0B0);
                    v361.val[0] = vqtbl2q_s8(v361, xmmword_296B8F020);
                    v361.val[0] = vaddq_s32(vshlq_n_s64(v361.val[0], 0x20uLL), v361.val[0]);
                    v352.val[1] = vdupq_lane_s32(*v361.val[0].i8, 1);
                    v345.val[1] = vaddq_s32(vshlq_n_s64(v345.val[1], 0x20uLL), v345.val[1]);
                    v352.val[1].i64[0] = 0;
                    v361.val[1] = vdupq_lane_s32(*v345.val[1].i8, 1);
                    v361.val[1].i64[0] = 0;
                    v347.val[0] = vaddq_s32(v361.val[1], v345.val[1]);
                    v345.val[0] = vaddq_s32(vdupq_laneq_s32(v354.val[0], 3), v357.val[0]);
                    v357.val[0] = vaddq_s32(vdupq_laneq_s32(v342.val[1], 3), vaddq_s32(v352.val[1], v361.val[0]));
                    v207 = v169 + 56;
                    v208 = v169 + 64;
                    v209 = v169 + 72;
                    v210 = v169 + 80;
                    vst2q_f32(v207, v365);
                    v345.val[1] = v309.val[0];
                    v211 = v309.val[1];
                    v361.val[1] = vqtbl2q_s8(*(&v345 + 16), xmmword_296B8F050);
                    v361.val[0] = vqtbl1q_s8(v295, xmmword_296B8F0B0);
                    v361.val[0] = vqtbl2q_s8(v361, xmmword_296B8F020);
                    v361.val[0] = vaddq_s32(vshlq_n_s64(v361.val[0], 0x20uLL), v361.val[0]);
                    v361.val[1] = vdupq_lane_s32(*v361.val[0].i8, 1);
                    v212 = v169 + 88;
                    v361.val[1].i64[0] = 0;
                    v362.val[1] = vdupq_laneq_s32(v345.val[0], 3);
                    v213 = v169 + 96;
                    v361.val[0] = vaddq_s32(vdupq_laneq_s32(v44, 3), vaddq_s32(v361.val[1], v361.val[0]));
                    v298.val[0] = vdupq_laneq_s32(v357.val[0], 3);
                    v44.i64[1] = v293.i64[1];
                    vst2q_f32(v208, v349);
                    v365.val[1] = vqtbl2q_s8(*v42.i8, xmmword_296B8F050);
                    v365.val[0] = vqtbl1q_s8(v307, xmmword_296B8F0B0);
                    v361.val[1] = vqtbl2q_s8(v365, xmmword_296B8F020);
                    v361.val[1] = vaddq_s32(vshlq_n_s64(v361.val[1], 0x20uLL), v361.val[1]);
                    v345.val[0] = vaddq_s32(vaddq_s32(v345.val[0], v293), v300);
                    v365.val[0] = vdupq_lane_s32(*v361.val[1].i8, 1);
                    v365.val[0].i64[0] = 0;
                    v361.val[1] = vaddq_s32(v365.val[0], v361.val[1]);
                    v357.val[0] = vaddq_s32(vaddq_s32(v357.val[0], v176), v362.val[0]);
                    v365.val[0] = vaddq_s32(vaddq_s32(v361.val[0], v303), v354.val[1]);
                    vst2q_f32(v209, v363);
                    v347.val[1] = vaddq_s32(vdupq_laneq_s32(v347.val[1], 3), v361.val[1]);
                    v361.val[1] = vaddq_s32(vaddq_s32(v347.val[1], v292), v204);
                    v363.val[0] = vzip1q_s32(v345.val[0], v365.val[0]);
                    v363.val[1] = vzip1q_s32(v357.val[0], v361.val[1]);
                    vst2q_f32(v210, v363);
                    v365.val[0] = vzip2q_s32(v345.val[0], v365.val[0]);
                    v365.val[1] = vzip2q_s32(v357.val[0], v361.val[1]);
                    v349.val[1] = vqtbl2q_s8(*(&v345 + 16), xmmword_296B8F030);
                    v352.val[1] = v309.val[0];
                    v214 = v309.val[1];
                    v349.val[0] = vqtbl1q_s8(v295, xmmword_296B8F0E0);
                    v357.val[0] = vqtbl2q_s8(v349, xmmword_296B8F020);
                    v357.val[0] = vaddq_s32(vshlq_n_s64(v357.val[0], 0x20uLL), v357.val[0]);
                    v361.val[1] = vdupq_lane_s32(*v357.val[0].i8, 1);
                    v361.val[1].i64[0] = 0;
                    v357.val[0] = vaddq_s32(v361.val[1], v357.val[0]);
                    v361.val[0] = vdupq_laneq_s32(v361.val[0], 3);
                    v345.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v352.val[0], v362.val[1]), v293), v300);
                    vst2q_f32(v212, v365);
                    v365.val[0] = vqtbl2q_s8(*v42.i8, xmmword_296B8F030);
                    v363.val[1] = vqtbl1q_s8(v307, xmmword_296B8F0E0);
                    v363.val[1] = vqtbl2q_s8(*(&v363 + 16), xmmword_296B8F020);
                    v363.val[1] = vaddq_s32(vshlq_n_s64(v363.val[1], 0x20uLL), v363.val[1]);
                    v363.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v347.val[0], v298.val[0]), v176), v362.val[0]);
                    v365.val[0] = vdupq_lane_s32(*v363.val[1].i8, 1);
                    v365.val[0].i64[0] = 0;
                    v53 = vaddq_s32(v365.val[0], v363.val[1]);
                    v361.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v357.val[0], v361.val[0]), v303), v354.val[1]);
                    v347.val[1] = vdupq_laneq_s32(v347.val[1], 3);
                    v365.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v53, v347.val[1]), v292), v204);
                    v349.val[0] = vzip1q_s32(v345.val[0], v361.val[1]);
                    v349.val[1] = vzip1q_s32(v363.val[0], v365.val[0]);
                    vst2q_f32(v213, v349);
                    v349.val[0] = vzip2q_s32(v345.val[0], v361.val[1]);
                    v349.val[1] = vzip2q_s32(v363.val[0], v365.val[0]);
                    v365.val[1] = vqtbl2q_s8(v311, xmmword_296B8F000);
                    v365.val[0] = vqtbl1q_s8(v305, xmmword_296B8F0C0);
                    v54 = xmmword_296B8F0D0;
                    v345.val[0] = vqtbl2q_s8(v365, xmmword_296B8F020);
                    v345.val[0] = vaddq_s32(vshlq_n_s64(v345.val[0], 0x20uLL), v345.val[0]);
                    v361.val[1] = vdupq_lane_s32(*v345.val[0].i8, 1);
                    v361.val[1].i64[0] = 0;
                    v342.val[0] = vaddq_s32(vdupq_laneq_s32(v352.val[0], 3), vaddq_s32(v361.val[1], v345.val[0]));
                    v365.val[1] = vqtbl2q_s8(v313, xmmword_296B8F000);
                    v365.val[0] = vqtbl1q_s8(v304, xmmword_296B8F0C0);
                    v345.val[0] = vqtbl2q_s8(v365, xmmword_296B8F020);
                    v345.val[0] = vaddq_s32(vshlq_n_s64(v345.val[0], 0x20uLL), v345.val[0]);
                    v361.val[1] = vdupq_lane_s32(*v345.val[0].i8, 1);
                    v361.val[1].i64[0] = 0;
                    v342.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v347.val[0], 3), vaddq_s32(v361.val[1], v345.val[0])), v298.val[0]);
                    v345.val[1] = vqtbl2q_s8(*(&v352 + 16), xmmword_296B8F000);
                    v345.val[0] = vqtbl1q_s8(v295, xmmword_296B8F0C0);
                    v55 = xmmword_296B8F020;
                    v345.val[0] = vqtbl2q_s8(v345, xmmword_296B8F020);
                    v345.val[0] = vaddq_s32(vshlq_n_s64(v345.val[0], 0x20uLL), v345.val[0]);
                    v345.val[1] = vdupq_lane_s32(*v345.val[0].i8, 1);
                    v345.val[1].i64[0] = 0;
                    v37 = vaddq_s32(vaddq_s32(vaddq_s32(v342.val[0], v362.val[1]), v293), v300);
                    v345.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v357.val[0], 3), vaddq_s32(v345.val[1], v345.val[0])), v361.val[0]), v303);
                    v38 = vaddq_s32(vaddq_s32(v342.val[1], v176), v362.val[0]);
                    v215 = vqtbl2q_s8(*v42.i8, xmmword_296B8F000);
                    v345.val[1] = vqtbl1q_s8(v307, xmmword_296B8F0C0);
                    v345.val[1] = vqtbl2q_s8(*(&v345 + 16), xmmword_296B8F020);
                    v345.val[1] = vaddq_s32(vshlq_n_s64(v345.val[1], 0x20uLL), v345.val[1]);
                    v345.val[0] = vaddq_s32(v345.val[0], v354.val[1]);
                    v216 = vdupq_lane_s32(*v345.val[1].i8, 1);
                    v216.i64[0] = 0;
                    v39 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v53, 3), vaddq_s32(v216, v345.val[1])), v347.val[1]), v292), v204);
                    v217 = v169 + 104;
                    v218 = v169 + 112;
                    v219 = v169 + 120;
                    vst2q_f32(v217, v349);
                    v345.val[1] = vzip1q_s32(v37, v345.val[0]);
                    v220 = vzip1q_s32(v38, v39);
                    vst2q_f32(v218, *(&v345 + 16));
                    v40 = vzip2q_s32(v37, v345.val[0]);
                    v41 = vzip2q_s32(v38, v39);
                    vst2q_f32(v219, *v40.i8);
                    v161 = v169 + 128;
                    v160 = v159 + 32;
                    v221 = v159 + 64;
                    v41.i32[0] = v37.i32[3];
                    v53.i32[0] = v38.i32[3];
                    v159 += 32;
                    v52.i64[0] = __PAIR64__(v300.u32[1], v345.val[0].u32[3]);
                    v169 += 128;
                    v51 = __PAIR64__(v307.u32[1], v39.u32[3]);
                  }

                  while (v221 <= v36);
                }

                else
                {
                  v160 = v159;
                  v161 = a11;
                }

                if (v160 + 8 <= v36)
                {
                  v224 = v46 + 2 * v336;
                  v225 = v336 + v46;
                  v226 = v47 + 2 * v329;
                  v227 = v329 + v47;
                  v228 = v48 + 2 * v322;
                  v229 = v322 + v48;
                  result = v49 + 2 * v315;
                  v230 = v315 + v49;
                  do
                  {
                    v37.i64[0] = *(v46 + v160);
                    v38.i64[0] = *(v225 + v160);
                    v39.i64[0] = *(v224 + v160);
                    v231 = vzip1q_s8(0, v38);
                    v232 = vzip1q_s8(v39, v37);
                    v233 = vzip1q_s8(v231, v232);
                    v234 = vzip2q_s8(v231, v232);
                    v235 = vshlq_n_s64(v234, 0x20uLL);
                    v236 = vaddq_s32(vshlq_n_s64(v233, 0x20uLL), v233);
                    v237 = vdupq_lane_s32(*v41.i8, 0);
                    v40.i64[0] = *(v47 + v160);
                    v238 = vaddq_s32(v235, v234);
                    v235.i64[0] = *(v227 + v160);
                    v41.i64[0] = *(v226 + v160);
                    v239 = vdupq_lane_s32(*v238.i8, 1);
                    v240 = vzip1q_s8(0, v235);
                    v241 = vzip1q_s8(v41, v40);
                    v242 = vzip1q_s8(v240, v241);
                    v243 = vzip2q_s8(v240, v241);
                    v244 = vdupq_lane_s32(*v236.i8, 1);
                    v245 = vaddq_s32(vshlq_n_s64(v242, 0x20uLL), v242);
                    v246 = vaddq_s32(vshlq_n_s64(v243, 0x20uLL), v243);
                    v244.i64[0] = 0;
                    v247 = vdupq_lane_s32(*v246.i8, 1);
                    v248 = vdupq_lane_s32(*v245.i8, 1);
                    v239.i64[0] = 0;
                    v248.i64[0] = 0;
                    v249 = vdupq_lane_s32(*v53.i8, 0);
                    v247.i64[0] = 0;
                    v42.i64[0] = *(v48 + v160);
                    v43.i64[0] = *(v229 + v160);
                    v250 = vaddq_s32(v244, v236);
                    v244.i64[0] = *(v228 + v160);
                    v251 = vzip1q_s8(0, v43);
                    v252 = vzip1q_s8(v244, v42);
                    v253 = vzip1q_s8(v251, v252);
                    v254 = vaddq_s32(v239, vaddq_s32(v238, v237));
                    v255 = vzip2q_s8(v251, v252);
                    v256 = vaddq_s32(vshlq_n_s64(v253, 0x20uLL), v253);
                    v257 = vaddq_s32(vshlq_n_s64(v255, 0x20uLL), v255);
                    v258 = vaddq_s32(v248, v245);
                    v259 = vdupq_lane_s32(*v257.i8, 1);
                    v260 = vdupq_lane_s32(*v256.i8, 1);
                    v261 = vdupq_laneq_s32(v250, 3);
                    v260.i64[0] = 0;
                    v259.i64[0] = 0;
                    v262 = vaddq_s32(v250, v237);
                    v263 = vaddq_s32(v247, vaddq_s32(v246, v249));
                    v264 = vaddq_s32(v260, v256);
                    v265 = vdupq_lane_s32(*v52.i8, 0);
                    v266 = vdupq_laneq_s32(v258, 3);
                    v267 = vaddq_s32(v257, v265);
                    v256.i64[0] = *(v49 + v160);
                    v44.i64[0] = *(v230 + v160);
                    v268 = vaddq_s32(v258, v249);
                    v258.i64[0] = *(result + v160);
                    v269 = vzip1q_s8(0, v44);
                    v270 = vzip1q_s8(v258, v256);
                    v271 = vdupq_laneq_s32(v264, 3);
                    v272 = vzip1q_s8(v269, v270);
                    v273 = vzip2q_s8(v269, v270);
                    v274 = vaddq_s32(vshlq_n_s64(v272, 0x20uLL), v272);
                    v275 = vaddq_s32(v264, v265);
                    v276 = vaddq_s32(vshlq_n_s64(v273, 0x20uLL), v273);
                    v277 = vdupq_lane_s32(*v276.i8, 1);
                    v278 = vdupq_lane_s32(*v274.i8, 1);
                    v38 = vaddq_s32(v254, v261);
                    v279 = vaddq_s32(v259, v267);
                    v278.i64[0] = 0;
                    v277.i64[0] = 0;
                    v39 = vaddq_s32(v263, v266);
                    v280 = vaddq_s32(v278, v274);
                    v281 = vdupq_laneq_s32(v280, 3);
                    v282 = vdupq_lane_s32(v51, 0);
                    v283 = vaddq_s32(v279, v271);
                    v284 = vaddq_s32(v280, v282);
                    v41 = vaddq_s32(v277, vaddq_s32(v276, v282));
                    v42 = vzip2q_s32(v262, v275);
                    v44 = vzip1q_s32(v262, v275);
                    v37 = vaddq_s32(v41, v281);
                    v285 = vzip1q_s32(v268, v284);
                    v223 = v161 + 32;
                    v286 = v161 + 16;
                    v287 = v161 + 24;
                    v41.i32[0] = v38.i32[3];
                    vst2q_f32(v161, *v44.i8);
                    v288 = v161 + 8;
                    v53.i32[0] = v39.i32[3];
                    v43 = vzip2q_s32(v268, v284);
                    vst2q_f32(v288, *v42.i8);
                    v52.i32[0] = v283.i32[3];
                    v348.val[0] = vzip1q_s32(v38, v283);
                    v348.val[1] = vzip1q_s32(v39, v37);
                    vst2q_f32(v286, v348);
                    v289 = vzip2q_s32(v38, v283);
                    v40 = vzip2q_s32(v39, v37);
                    vst2q_f32(v287, *(&v40 - 1));
                    LODWORD(v51) = v37.i32[3];
                    v222 = v160 + 8;
                    v290 = v160 + 16;
                    v160 += 8;
                    v161 = v223;
                  }

                  while (v290 <= v36);
                }

                else
                {
                  v222 = v160;
                  v223 = v161;
                }

                if (v222 < v36)
                {
                  do
                  {
                    result = *(v314[0] + v222 + v315);
                    LODWORD(v291) = ((*(v335[0] + v222) << 24) | (*(v335[0] + v222 + v336) << 16) | (*(v335[0] + v222 + 2 * v336) << 8)) + v41.i32[0];
                    DWORD1(v291) = ((*(v328[0] + v222) << 24) | (*(v328[0] + v222 + v329) << 16) | (*(v328[0] + v222 + 2 * v329) << 8)) + v53.i32[0];
                    DWORD2(v291) = ((*(v321[0] + v222) << 24) | (*(v321[0] + v222 + v322) << 16) | (*(v321[0] + v222 + 2 * v322) << 8)) + v52.i32[0];
                    HIDWORD(v291) = ((*(v314[0] + v222) << 24) | (result << 16) | (*(v314[0] + v222 + 2 * v315) << 8)) + v51;
                    *v223 = v291;
                    v223 += 4;
                    ++v222;
                  }

                  while (v36 != v222);
                }
              }
            }
          }
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[7].u32[0] < v19);
    }
  }

  return result;
}

uint64_t TileDecoder_PXR24::ExtractPlane(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = *(a4 + 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 104);
  v15[0] = 0;
  v15[1] = 0;
  v17 = 0;
  v16 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a5, v10, v11, v15);
  if (HIDWORD(v16) && v17)
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = *(v13 + 8) == 0;
      v13 = 3;
      if (v14)
      {
        v13 = 0;
      }
    }

    return (*(&TileDecoder_PXR24::ExtractPlane(void const*,unsigned long,ChannelInfo const&,TileInfo const&,void *,unsigned long,long)const::kFuncTable[v13] + *(*(a4 + 8) + 72)))(a2, a1, a5, a4, LODWORD(v15[0]));
  }

  return result;
}

void CompressedPlanar<unsigned int,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, double **a4, uint64_t a5, uint64_t a6, unsigned int a7, int32x4_t *a8, uint64_t a9)
{
  if (a6)
  {
    v9 = *(a2 + 60);
    v10 = *a4;
    if (*(*a4 + 24))
    {
      LODWORD(v10) = *v10;
    }

    v11 = a3[13];
    if (a3[14] + v11 < v9)
    {
      v12 = a3[11];
      v13 = vdupq_n_s32(v10);
      v14 = v12 + a6;
      v15 = v12 & 0xFFFFFFE0 | 8;
      if (v15 <= v12 + 1)
      {
        v15 = v12 + 1;
      }

      if ((v12 & 0xFFFFFFE0) + ((v15 + ~(v12 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8) > v12)
      {
        v12 = (v12 & 0xFFFFFFE0) + ((v15 + ~(v12 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      }

      do
      {
        v16 = v12;
        v17 = a8;
        if (v12 + 32 <= v14)
        {
          do
          {
            *v17 = v13;
            v17[1] = v13;
            v17[2] = v13;
            v17[3] = v13;
            v17[4] = v13;
            v17[5] = v13;
            v17[6] = v13;
            v17[7] = v13;
            v17 += 8;
            v18 = v16 + 64;
            v16 += 32;
          }

          while (v18 <= v14);
        }

        v19 = v16 + 8;
        while (v19 <= v14)
        {
          *v17 = v13;
          v17[1] = v13;
          v17 += 2;
          v19 = v16 + 16;
          v16 += 8;
        }

        if (v16 < v14)
        {
          v20 = 0;
          v21 = v14 - v16;
          v22 = (v14 - v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v23 = vdupq_n_s64(v21 - 1);
          v24 = &v17->i32[2];
          do
          {
            v25 = vdupq_n_s64(v20);
            v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_296B8F100)));
            if (vuzp1_s16(v26, *v13.i8).u8[0])
            {
              *(v24 - 2) = v10;
            }

            if (vuzp1_s16(v26, *&v13).i8[2])
            {
              *(v24 - 1) = v10;
            }

            if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_296B8F0F0)))).i32[1])
            {
              *v24 = v10;
              v24[1] = v10;
            }

            v20 += 4;
            v24 += 4;
          }

          while (v22 != v20);
        }

        a8 = (a8 + a9);
        v11 += a7;
      }

      while (v11 + a3[14] < v9);
    }
  }
}

void CompressedPlanar<unsigned short,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t **a4, uint64_t a5, uint64_t a6, unsigned int a7, int16x8_t *a8, uint64_t a9)
{
  if (a6)
  {
    v9 = *(a2 + 60);
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v15 = _D0;
    }

    else
    {
      v15 = 32256;
    }

    v16 = a3[13];
    if (a3[14] + v16 < v9)
    {
      v17 = a3[11];
      v18 = v17 + a6;
      v19 = vdupq_n_s16(v15);
      v20 = v17 & 0xFFFFFFE0 | 8;
      if (v20 <= v17 + 1)
      {
        v20 = v17 + 1;
      }

      if ((v17 & 0xFFFFFFE0) + ((v20 + ~(v17 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8) > v17)
      {
        v17 = (v17 & 0xFFFFFFE0) + ((v20 + ~(v17 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      }

      do
      {
        v21 = v17;
        v22 = a8;
        if (v17 + 32 <= v18)
        {
          do
          {
            *v22 = v19;
            v22[1] = v19;
            v22[2] = v19;
            v22[3] = v19;
            v22 += 4;
            v23 = v21 + 64;
            v21 += 32;
          }

          while (v23 <= v18);
        }

        v24 = v21 + 8;
        while (v24 <= v18)
        {
          *v22++ = v19;
          v24 = v21 + 16;
          v21 += 8;
        }

        if (v21 < v18)
        {
          v25 = 0;
          v26 = v18 - v21;
          v27 = (v18 - v21 + 7) & 0xFFFFFFFFFFFFFFF8;
          v28 = vdupq_n_s64(v26 - 1);
          v29 = &v22->i16[4];
          do
          {
            v30 = vdupq_n_s64(v25);
            v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_296B8F100)));
            if (vuzp1_s8(vuzp1_s16(v31, *v19.i8), *v19.i8).u8[0])
            {
              *(v29 - 4) = v15;
            }

            if (vuzp1_s8(vuzp1_s16(v31, *&v19), *&v19).i8[1])
            {
              *(v29 - 3) = v15;
            }

            if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_296B8F0F0)))), *&v19).i8[2])
            {
              *(v29 - 2) = v15;
              *(v29 - 1) = v15;
            }

            v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_296B8F120)));
            if (vuzp1_s8(*&v19, vuzp1_s16(v32, *&v19)).i32[1])
            {
              *v29 = v15;
            }

            if (vuzp1_s8(*&v19, vuzp1_s16(v32, *&v19)).i8[5])
            {
              v29[1] = v15;
            }

            if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_296B8F110))))).i8[6])
            {
              v29[2] = v15;
              v29[3] = v15;
            }

            v25 += 8;
            v29 += 8;
          }

          while (v27 != v25);
        }

        a8 = (a8 + a9);
        v16 += a7;
      }

      while (v16 + a3[14] < v9);
    }
  }
}

uint64_t CompressedPlanar<float,(StreamType)0>(double a1, uint64_t a2, uint64_t a3, unsigned int *a4, double **a5, uint64_t a6, uint64_t a7, unsigned int a8, int32x4_t *a9, uint64_t a10)
{
  if (a7)
  {
    v10 = *(a3 + 60);
    v11 = *a5;
    if (*(*a5 + 24))
    {
      a1 = *v11;
      *&a1 = *v11;
    }

    else
    {
      LODWORD(a1) = 2143289344;
    }

    v12 = a4[13];
    if (a4[14] + v12 < v10)
    {
      v13 = a4[11];
      v14 = vdupq_lane_s32(*&a1, 0);
      v15 = v13 + a7;
      v16 = v13 & 0xFFFFFFE0 | 8;
      if (v16 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      if ((v13 & 0xFFFFFFE0) + ((v16 + ~(v13 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8) > v13)
      {
        v13 = (v13 & 0xFFFFFFE0) + ((v16 + ~(v13 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      }

      do
      {
        v17 = v13;
        v18 = a9;
        if (v13 + 32 <= v15)
        {
          do
          {
            *v18 = v14;
            v18[1] = v14;
            v18[2] = v14;
            v18[3] = v14;
            v18[4] = v14;
            v18[5] = v14;
            v18[6] = v14;
            v18[7] = v14;
            v18 += 8;
            v19 = v17 + 64;
            v17 += 32;
          }

          while (v19 <= v15);
        }

        v20 = v17 + 8;
        while (v20 <= v15)
        {
          *v18 = v14;
          v18[1] = v14;
          v18 += 2;
          v20 = v17 + 16;
          v17 += 8;
        }

        if (v17 < v15)
        {
          v21 = 0;
          v22 = v15 - v17;
          v23 = (v15 - v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v24 = vdupq_n_s64(v22 - 1);
          v25 = &v18->i32[2];
          do
          {
            v26 = vdupq_n_s64(v21);
            v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_296B8F100)));
            if (vuzp1_s16(v27, *&a1).u8[0])
            {
              *(v25 - 2) = LODWORD(a1);
            }

            if (vuzp1_s16(v27, *&a1).i8[2])
            {
              *(v25 - 1) = LODWORD(a1);
            }

            v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_296B8F0F0)));
            if (vuzp1_s16(*&a1, v28).i32[1])
            {
              *v25 = LODWORD(a1);
            }

            v29 = vuzp1_s16(*&a1, v28);
            result = v29.u16[3];
            if (v29.i8[6])
            {
              v25[1] = LODWORD(a1);
            }

            v21 += 4;
            v25 += 4;
          }

          while (v23 != v21);
        }

        a9 = (a9 + a10);
        v12 += a8;
      }

      while (v12 + a4[14] < v10);
    }
  }

  return result;
}

uint64_t CompressedPlanar<unsigned int,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int8x16_t *a8, uint64_t a9)
{
  if (a6)
  {
    v104 = v12;
    v105 = v11;
    v106 = v9;
    v107 = v10;
    v18 = *(a2 + 56);
    v103 = 4;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v101 = v20.i32[0];
    v99 = v19;
    v97[1] = result;
    v100 = a3[6].i32[1] + v20.i32[1] * HIDWORD(v18);
    v21 = a3[7].u32[1];
    v98 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v102 = v21;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v97);
    v22 = a3[6].u32[1];
    if (a3[7].u32[0] + v22 < HIDWORD(v18))
    {
      v23 = a3[3].i32[1] * *(a2 + 60);
      v24 = a3[5].u32[1];
      v25 = v24 + a6;
      do
      {
        v100 = v23 + v22;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v97);
        v30 = v97[0];
        if (v97[0])
        {
          if (v24 >= 0x20)
          {
            v42 = 0;
            v31 = 0;
            v43 = v98 + v97[0];
            v44 = v98 + v97[0] + 2 * v98;
            v45 = v97[0] + 2 * v98;
            v34 = xmmword_296B8F080;
            v33 = xmmword_296B8F070;
            v36 = xmmword_296B8F030;
            v35 = xmmword_296B8F020;
            v38 = xmmword_296B8F000;
            v37 = xmmword_296B8F040;
            v40 = xmmword_296B8F050;
            v39 = xmmword_296B8F010;
            v41 = xmmword_296B8F060;
            do
            {
              v110.val[1] = *(v97[0] + v42);
              v108.val[1] = *(v97[0] + v42 + 16);
              v114.val[1] = *(v43 + v42);
              v112.val[1] = *(v43 + v42 + 16);
              v110.val[0] = *(v45 + v42);
              v108.val[0] = *(v45 + v42 + 16);
              v114.val[0] = *(v44 + v42);
              v112.val[0] = *(v44 + v42 + 16);
              v116.val[1] = vqtbl2q_s8(v108, xmmword_296B8F000);
              v116.val[0] = vqtbl2q_s8(v112, xmmword_296B8F010);
              v116.val[0] = vqtbl2q_s8(v116, xmmword_296B8F020);
              v46 = vqtbl2q_s8(v108, xmmword_296B8F030);
              v116.val[1] = vqtbl2q_s8(v112, xmmword_296B8F040);
              v119.val[1] = vqtbl2q_s8(v108, xmmword_296B8F050);
              v119.val[0] = vqtbl2q_s8(v112, xmmword_296B8F060);
              v116.val[1] = vqtbl2q_s8(*(&v116 + 16), xmmword_296B8F020);
              v47 = vqtbl2q_s8(v119, xmmword_296B8F020);
              v108.val[1] = vqtbl2q_s8(v108, xmmword_296B8F070);
              v108.val[0] = vqtbl2q_s8(v112, xmmword_296B8F080);
              v112.val[1] = vqtbl2q_s8(v110, xmmword_296B8F050);
              v112.val[0] = vqtbl2q_s8(v114, xmmword_296B8F060);
              v108.val[0] = vqtbl2q_s8(v108, xmmword_296B8F020);
              v108.val[1] = vqtbl2q_s8(v112, xmmword_296B8F020);
              v112.val[1] = vqtbl2q_s8(v110, xmmword_296B8F070);
              v112.val[0] = vqtbl2q_s8(v114, xmmword_296B8F080);
              v119.val[1] = vqtbl2q_s8(v110, xmmword_296B8F000);
              v119.val[0] = vqtbl2q_s8(v114, xmmword_296B8F010);
              v112.val[0] = vqtbl2q_s8(v112, xmmword_296B8F020);
              v112.val[1] = vqtbl2q_s8(v119, xmmword_296B8F020);
              v110.val[1] = vqtbl2q_s8(v110, xmmword_296B8F030);
              v110.val[0] = vqtbl2q_s8(v114, xmmword_296B8F040);
              v110.val[0] = vqtbl2q_s8(v110, xmmword_296B8F020);
              v116.val[0] = vaddq_s32(vshlq_n_s64(v116.val[0], 0x20uLL), v116.val[0]);
              v116.val[1] = vaddq_s32(vshlq_n_s64(v116.val[1], 0x20uLL), v116.val[1]);
              v48 = vaddq_s32(vshlq_n_s64(v47, 0x20uLL), v47);
              v108.val[0] = vaddq_s32(vshlq_n_s64(v108.val[0], 0x20uLL), v108.val[0]);
              v108.val[1] = vaddq_s32(vshlq_n_s64(v108.val[1], 0x20uLL), v108.val[1]);
              v112.val[0] = vaddq_s32(vshlq_n_s64(v112.val[0], 0x20uLL), v112.val[0]);
              v112.val[1] = vaddq_s32(vshlq_n_s64(v112.val[1], 0x20uLL), v112.val[1]);
              v110.val[0] = vaddq_s32(vshlq_n_s64(v110.val[0], 0x20uLL), v110.val[0]);
              v28 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v110.val[0].i8, 1), v110.val[0]), vaddq_s32(vdupq_lane_s32(*v112.val[1].i8, 1), v112.val[1]));
              v29 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v116.val[1].i8, 1), v116.val[1]), vaddq_s32(vdupq_lane_s32(*v116.val[0].i8, 1), v116.val[0]));
              v27 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v112.val[0].i8, 1), v112.val[0]), vaddq_s32(vdupq_lane_s32(*v108.val[1].i8, 1), v108.val[1])), v28);
              v26 = vaddq_s32(vaddq_s32(v29, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v108.val[0].i8, 1), v108.val[0]), vaddq_s32(vdupq_lane_s32(*v48.i8, 1), v48))), v27);
              v31 += v26.u32[3];
              v49 = v42 + 64;
              v42 += 32;
            }

            while (v49 <= v24);
            v32 = v24 & 0xFFFFFFE0;
          }

          else
          {
            v31 = 0;
            v32 = 0;
            v34 = xmmword_296B8F080;
            v33 = xmmword_296B8F070;
            v36 = xmmword_296B8F030;
            v35 = xmmword_296B8F020;
            v38 = xmmword_296B8F000;
            v37 = xmmword_296B8F040;
            v40 = xmmword_296B8F050;
            v39 = xmmword_296B8F010;
            v41 = xmmword_296B8F060;
          }

          if ((v32 | 8) <= v24)
          {
            do
            {
              v26.i64[0] = *(v97[0] + v32);
              v27.i64[0] = *(v98 + v97[0] + v32);
              v28.i64[0] = *(v97[0] + 2 * v98 + v32);
              v29.i64[0] = *(v98 + v97[0] + 2 * v98 + v32);
              v51 = vzip1q_s8(v29, v27);
              v52 = vzip1q_s8(v28, v26);
              v53 = vzip1q_s8(v51, v52);
              v54 = vzip2q_s8(v51, v52);
              v55 = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
              v56 = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
              v27 = vdupq_lane_s32(*v56.i8, 1);
              v29 = vdupq_lane_s32(*v55.i8, 1);
              v28 = vaddq_s32(v29, v55);
              v26 = vaddq_s32(v27, v56);
              v31 += v26.i32[3] + v28.i32[3];
              v50 = v32 + 8;
              v57 = v32 + 16;
              v32 += 8;
            }

            while (v57 <= v24);
          }

          else
          {
            v50 = v32;
          }

          v58 = v24 - v50;
          if (v24 > v50)
          {
            v59 = (v50 + v97[0]);
            v60 = &v59[2 * v98];
            v61 = &v59[v98];
            do
            {
              v62 = *v59++;
              v63 = v62 << 24;
              v64 = *v61++;
              v65 = v63 | (v64 << 16);
              v66 = *v60++;
              v31 += v65 | (v66 << 8) | v66;
              --v58;
            }

            while (v58);
            v50 = v24;
          }

          if (v50 + 32 <= v25)
          {
            v69 = v98 + v97[0];
            v70 = v98 + v97[0] + 2 * v98;
            v71 = v97[0] + 2 * v98;
            v72 = a8;
            do
            {
              v109.val[1] = *(v30 + v50);
              v111.val[1] = *(v30 + v50 + 16);
              v113.val[1] = *(v69 + v50);
              v115.val[1] = *(v69 + v50 + 16);
              v109.val[0] = *(v71 + v50);
              v111.val[0] = *(v71 + v50 + 16);
              v113.val[0] = *(v70 + v50);
              v115.val[0] = *(v70 + v50 + 16);
              v117.val[1] = vqtbl2q_s8(v109, v33);
              v117.val[0] = vqtbl2q_s8(v113, v34);
              v117.val[0] = vqtbl2q_s8(v117, v35);
              v73 = vqtbl2q_s8(v109, v36);
              v117.val[1] = vqtbl2q_s8(v113, v37);
              v117.val[1] = vqtbl2q_s8(*(&v117 + 16), v35);
              v118.val[1] = vqtbl2q_s8(v111, v33);
              v118.val[0] = vqtbl2q_s8(v115, v34);
              v118.val[0] = vqtbl2q_s8(v118, v35);
              v74 = vqtbl2q_s8(v111, v36);
              v118.val[1] = vqtbl2q_s8(v115, v37);
              v118.val[1] = vqtbl2q_s8(*(&v118 + 16), v35);
              v120.val[1] = vqtbl2q_s8(v111, v38);
              v120.val[0] = vqtbl2q_s8(v115, v39);
              v120.val[0] = vqtbl2q_s8(v120, v35);
              v111.val[1] = vqtbl2q_s8(v111, v40);
              v111.val[0] = vqtbl2q_s8(v115, v41);
              v111.val[0] = vqtbl2q_s8(v111, v35);
              v115.val[1] = vqtbl2q_s8(v109, v38);
              v115.val[0] = vqtbl2q_s8(v113, v39);
              v111.val[1] = vqtbl2q_s8(v115, v35);
              v109.val[1] = vqtbl2q_s8(v109, v40);
              v109.val[0] = vqtbl2q_s8(v113, v41);
              v109.val[0] = vqtbl2q_s8(v109, v35);
              v117.val[0] = vaddq_s32(vshlq_n_s64(v117.val[0], 0x20uLL), v117.val[0]);
              v117.val[1] = vaddq_s32(vshlq_n_s64(v117.val[1], 0x20uLL), v117.val[1]);
              v118.val[0] = vaddq_s32(vshlq_n_s64(v118.val[0], 0x20uLL), v118.val[0]);
              v115.val[1] = vaddq_s32(vshlq_n_s64(v118.val[1], 0x20uLL), v118.val[1]);
              v115.val[0] = vaddq_s32(vshlq_n_s64(v120.val[0], 0x20uLL), v120.val[0]);
              v111.val[0] = vaddq_s32(vshlq_n_s64(v111.val[0], 0x20uLL), v111.val[0]);
              v111.val[1] = vaddq_s32(vshlq_n_s64(v111.val[1], 0x20uLL), v111.val[1]);
              v109.val[0] = vaddq_s32(vshlq_n_s64(v109.val[0], 0x20uLL), v109.val[0]);
              v109.val[1] = vdupq_lane_s32(*v109.val[0].i8, 1);
              v113.val[0] = vdupq_lane_s32(*v111.val[1].i8, 1);
              v113.val[1] = vdupq_lane_s32(*v111.val[0].i8, 1);
              v118.val[1] = vdupq_lane_s32(*v115.val[0].i8, 1);
              v120.val[0] = vdupq_lane_s32(*v115.val[1].i8, 1);
              v120.val[1] = vdupq_lane_s32(*v118.val[0].i8, 1);
              v75 = vdupq_lane_s32(*v117.val[1].i8, 1);
              v76 = vdupq_lane_s32(*v117.val[0].i8, 1);
              v76.i64[0] = 0;
              v75.i64[0] = 0;
              v120.val[1].i64[0] = 0;
              v120.val[0].i64[0] = 0;
              v118.val[1].i64[0] = 0;
              v113.val[1].i64[0] = 0;
              v113.val[0].i64[0] = 0;
              v109.val[1].i64[0] = 0;
              v109.val[0] = vaddq_s32(v109.val[1], v109.val[0]);
              v109.val[1] = vaddq_s32(v113.val[0], v111.val[1]);
              v111.val[0] = vaddq_s32(v113.val[1], v111.val[0]);
              v111.val[1] = vaddq_s32(v118.val[1], v115.val[0]);
              v113.val[0] = vaddq_s32(v120.val[0], v115.val[1]);
              v113.val[1] = vaddq_s32(v120.val[1], v118.val[0]);
              v115.val[0] = vaddq_s32(v75, v117.val[1]);
              v115.val[1] = vaddq_s32(v76, v117.val[0]);
              v111.val[0] = vaddq_s32(vdupq_laneq_s32(v113.val[1], 3), v111.val[0]);
              v109.val[0] = vaddq_s32(vdupq_laneq_s32(v115.val[1], 3), v109.val[0]);
              v117.val[0] = vdupq_laneq_s32(v109.val[0], 3);
              v117.val[1] = vdupq_laneq_s32(v111.val[0], 3);
              v109.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v115.val[0], 3), v109.val[1]), v117.val[0]);
              v118.val[0] = vdupq_laneq_s32(v109.val[1], 3);
              v118.val[1] = vdupq_n_s32(v31);
              v29 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v113.val[0], 3), v111.val[1]), v117.val[1]), v118.val[1]), v118.val[0]);
              v28 = vaddq_s32(vaddq_s32(v111.val[0], v118.val[1]), v118.val[0]);
              v31 = v29.u32[3];
              *v72 = vaddq_s32(v115.val[1], v118.val[1]);
              v72[1] = vaddq_s32(v109.val[0], v118.val[1]);
              v72[2] = vaddq_s32(vaddq_s32(v115.val[0], v118.val[1]), v117.val[0]);
              v72[3] = vaddq_s32(v109.val[1], v118.val[1]);
              v26 = vaddq_s32(vaddq_s32(v113.val[1], v118.val[1]), v118.val[0]);
              v27 = vaddq_s32(vaddq_s32(vaddq_s32(v113.val[0], v117.val[1]), v118.val[1]), v118.val[0]);
              v68 = v72 + 8;
              v72[6] = v27;
              v72[7] = v29;
              v72[4] = v26;
              v72[5] = v28;
              v67 = v50 + 32;
              v77 = v50 + 64;
              v50 += 32;
              v72 += 8;
            }

            while (v77 <= v25);
          }

          else
          {
            v67 = v50;
            v68 = a8;
          }

          v78 = v67 + 8;
          while (v78 <= v25)
          {
            v26.i64[0] = *(v97[0] + v67);
            v27.i64[0] = *(v97[0] + v67 + v98);
            v28.i64[0] = *(v97[0] + v67 + 2 * v98);
            v29.i64[0] = *(v97[0] + v67 + 3 * v98);
            v79 = vzip1q_s8(v29, v27);
            v80 = vzip1q_s8(v28, v26);
            v81 = vzip1q_s8(v79, v80);
            v82 = vzip2q_s8(v79, v80);
            v83 = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
            v84 = vaddq_s32(vshlq_n_s64(v82, 0x20uLL), v82);
            v27 = vdupq_lane_s32(*v84.i8, 1);
            v85 = vdupq_lane_s32(*v83.i8, 1);
            v85.i64[0] = 0;
            v27.i64[0] = 0;
            v86 = vaddq_s32(v85, v83);
            v29 = vdupq_laneq_s32(v86, 3);
            v87 = vdupq_n_s32(v31);
            v28 = vaddq_s32(v86, v87);
            v26 = vaddq_s32(vaddq_s32(v27, vaddq_s32(v84, v87)), v29);
            v31 = v26.u32[3];
            *v68 = v28;
            v68[1] = v26;
            v68 += 2;
            v78 = v67 + 16;
            v67 += 8;
          }

          if (v67 < v25)
          {
            v88 = v25 - v67;
            v89 = (v67 + v97[0]);
            v90 = (v67 + v97[0] + 2 * v98);
            v91 = (v67 + v97[0] + v98);
            do
            {
              v92 = *v89++;
              v93 = v92 << 24;
              v94 = *v91++;
              v95 = v93 | (v94 << 16);
              v96 = *v90++;
              v31 += v95 | (v96 << 8) | v96;
              v68->i32[0] = v31;
              v68 = (v68 + 4);
              --v88;
            }

            while (v88);
          }
        }

        a8 = (a8 + a9);
        v22 += a7;
      }

      while (v22 + a3[7].u32[0] < HIDWORD(v18));
    }
  }

  return result;
}

uint64_t CompressedPlanar<unsigned short,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int8x16_t *a8, uint64_t a9)
{
  if (a6)
  {
    v103 = v9;
    v104 = v10;
    v16 = *(a2 + 56);
    v102 = 2;
    v17 = *(a4 + 8);
    v18 = a3[3];
    v100 = v18.i32[0];
    v98 = v17;
    v96[1] = result;
    v99 = a3[6].i32[1] + v18.i32[1] * HIDWORD(v16);
    v19 = a3[7].u32[1];
    v97 = vmin_u32(vmls_s32(*(*(*&v17[5] + 8 * v19) + 16), v17[6], v18), v17[6]).u32[0];
    v101 = v19;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v96);
    v20 = a3[6].u32[1];
    if (a3[7].u32[0] + v20 < HIDWORD(v16))
    {
      v21 = a3[3].i32[1] * *(a2 + 60);
      v22 = a3[5].u32[1];
      v23 = v22 + a6;
      do
      {
        v99 = v21 + v20;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v96);
        v26.i64[0] = 0xFFFFFFFF00000000;
        v26.i64[1] = 0xFFFFFFFF00000000;
        v27 = v96[0];
        if (v96[0])
        {
          if (v22 >= 0x20)
          {
            v30 = 0;
            v28 = 0;
            v31 = v97 + v96[0];
            do
            {
              v33 = *(v96[0] + v30);
              v32 = *(v96[0] + v30 + 16);
              v35 = *(v31 + v30);
              v34 = *(v31 + v30 + 16);
              v36 = vzip1q_s8(v35, v33);
              v37 = vzip2q_s8(v35, v33);
              v38 = vzip1q_s8(v34, v32);
              v39 = vzip2q_s8(v34, v32);
              v40 = vaddq_s16(vshlq_n_s32(v36, 0x10uLL), v36);
              v41 = vaddq_s16(vshlq_n_s32(v37, 0x10uLL), v37);
              v42 = vaddq_s16(vshlq_n_s32(v38, 0x10uLL), v38);
              v43 = vaddq_s16(vshlq_n_s32(v39, 0x10uLL), v39);
              v44 = vaddq_s16(vandq_s8(vqtbl1q_s8(v42, xmmword_296B8F090), v26), v42);
              v45 = vaddq_s16(vandq_s8(vqtbl1q_s8(v41, xmmword_296B8F090), v26), v41);
              v46 = vaddq_s16(vandq_s8(vqtbl1q_s8(v40, xmmword_296B8F090), v26), v40);
              v47 = vaddq_s16(vandq_s8(vqtbl1q_s8(v43, xmmword_296B8F090), v26), v43);
              v25 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v46.i8, 3), v46), vaddq_s16(vdupq_lane_s16(*v45.i8, 3), v45));
              v24 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v44.i8, 3), v44), vaddq_s16(vdupq_lane_s16(*v47.i8, 3), v47)), v25);
              v28 += v24.u16[7];
              v48 = v30 + 64;
              v30 += 32;
            }

            while (v48 <= v22);
            v29 = v22 & 0xFFFFFFE0;
          }

          else
          {
            v28 = 0;
            v29 = 0;
          }

          if ((v29 | 8) <= v22)
          {
            do
            {
              v24.i64[0] = *(v96[0] + v29);
              v25.i64[0] = *(v97 + v96[0] + v29);
              v50 = vzip1q_s8(v25, v24);
              v51 = vaddq_s16(vshlq_n_s32(v50, 0x10uLL), v50);
              v25 = vextq_s8(v51, v51, 0xCuLL);
              v24 = vaddq_s16(v25, v51);
              v28 += v24.u16[7] + v24.u16[3];
              v49 = v29 + 8;
              v52 = v29 + 16;
              v29 += 8;
            }

            while (v52 <= v22);
          }

          else
          {
            v49 = v29;
          }

          v53 = v22 - v49;
          if (v22 > v49)
          {
            v54 = (v49 + v96[0] + v97);
            v55 = (v96[0] + v49);
            do
            {
              v57 = *v55++;
              v56 = v57;
              v58 = *v54++;
              v28 += v58 | (v56 << 8);
              --v53;
            }

            while (v53);
            v49 = v22;
          }

          if (v49 + 32 <= v23)
          {
            v61 = v97 + v96[0];
            v62 = a8;
            do
            {
              v64 = *(v27 + v49);
              v63 = *(v27 + v49 + 16);
              v66 = *(v61 + v49);
              v65 = *(v61 + v49 + 16);
              v67 = vzip2q_s8(v66, v64);
              v68 = vzip2q_s8(v65, v63);
              v69 = vzip1q_s8(v65, v63);
              v70 = vzip1q_s8(v66, v64);
              v71 = vaddq_s16(vshlq_n_s32(v67, 0x10uLL), v67);
              v72 = vaddq_s16(vshlq_n_s32(v68, 0x10uLL), v68);
              v73 = vaddq_s16(vshlq_n_s32(v69, 0x10uLL), v69);
              v74 = vaddq_s16(vshlq_n_s32(v70, 0x10uLL), v70);
              v75 = vaddq_s16(vandq_s8(vqtbl1q_s8(v74, xmmword_296B8F090), v26), v74);
              v76 = vaddq_s16(vandq_s8(vqtbl1q_s8(v73, xmmword_296B8F090), v26), v73);
              v77 = vaddq_s16(vandq_s8(vqtbl1q_s8(v72, xmmword_296B8F090), v26), v72);
              v78 = vaddq_s16(vandq_s8(vqtbl1q_s8(v71, xmmword_296B8F090), v26), v71);
              v79 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v76.i8, 3), xmmword_296B8F0A0), v76);
              v80 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v75.i8, 3), xmmword_296B8F0A0), v75);
              v81 = vaddq_s16(vdupq_laneq_s16(v80, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v78.i8, 3), xmmword_296B8F0A0), v78));
              v82 = vdupq_laneq_s16(v81, 7);
              v83 = vdupq_n_s16(v28);
              v84 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v79, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v77.i8, 3), xmmword_296B8F0A0), v77)), v83), v82);
              v28 = v84.u16[7];
              v24 = vaddq_s16(vaddq_s16(v79, v83), v82);
              v25 = vaddq_s16(v80, v83);
              v60 = v62 + 4;
              *v62 = v25;
              v62[1] = vaddq_s16(v81, v83);
              v62[2] = v24;
              v62[3] = v84;
              v59 = v49 + 32;
              v85 = v49 + 64;
              v49 += 32;
              v62 += 4;
            }

            while (v85 <= v23);
          }

          else
          {
            v59 = v49;
            v60 = a8;
          }

          v86 = v59 + 8;
          while (v86 <= v23)
          {
            v24.i64[0] = *(v96[0] + v59);
            v25.i64[0] = *(v96[0] + v59 + v97);
            v87 = vzip1q_s8(v25, v24);
            v88 = vaddq_s16(vshlq_n_s32(v87, 0x10uLL), v87);
            v89 = vaddq_s16(vandq_s8(vqtbl1q_s8(v88, xmmword_296B8F090), v26), v88);
            v25 = vandq_s8(vdupq_lane_s16(*v89.i8, 3), xmmword_296B8F0A0);
            v24 = vaddq_s16(vaddq_s16(v89, vdupq_n_s16(v28)), v25);
            v28 = v24.u16[7];
            *v60++ = v24;
            v86 = v59 + 16;
            v59 += 8;
          }

          if (v59 < v23)
          {
            v90 = v23 - v59;
            v91 = (v59 + v97 + v96[0]);
            v92 = (v96[0] + v59);
            do
            {
              v94 = *v92++;
              v93 = v94;
              v95 = *v91++;
              v28 += v95 | (v93 << 8);
              v60->i16[0] = v28;
              v60 = (v60 + 2);
              --v90;
            }

            while (v90);
          }
        }

        a8 = (a8 + a9);
        v20 += a7;
      }

      while (v20 + a3[7].u32[0] < HIDWORD(v16));
    }
  }

  return result;
}

uint64_t CompressedPlanar<float,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int8x16_t *a8, uint64_t a9)
{
  if (a6)
  {
    v118 = v14;
    v119 = v13;
    v120 = v12;
    v121 = v11;
    v122 = v9;
    v123 = v10;
    v20 = *(a2 + 56);
    v117 = 3;
    v21 = *(a4 + 8);
    v22 = a3[3];
    v115 = v22.i32[0];
    v113 = v21;
    v111[1] = result;
    v114 = a3[6].i32[1] + v22.i32[1] * HIDWORD(v20);
    v23 = a3[7].u32[1];
    v112 = vmin_u32(vmls_s32(*(*(*&v21[5] + 8 * v23) + 16), v21[6], v22), v21[6]).u32[0];
    v116 = v23;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v111);
    v24 = a3[6].u32[1];
    if (a3[7].u32[0] + v24 < HIDWORD(v20))
    {
      v25 = a3[3].i32[1] * *(a2 + 60);
      v26 = a3[5].u32[1];
      v27 = v26 + a6;
      do
      {
        v114 = v25 + v24;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v111);
        v31 = v111[0];
        if (v111[0])
        {
          if (v26 >= 0x20)
          {
            v43 = 0;
            v44 = v111[0] + 2 * v112;
            v45 = v112 + v111[0];
            v33.i64[0] = 0;
            v35 = xmmword_296B8F0D0;
            v34 = xmmword_296B8F070;
            v37 = xmmword_296B8F030;
            v36 = xmmword_296B8F020;
            v39 = xmmword_296B8F000;
            v38 = xmmword_296B8F0E0;
            v41 = xmmword_296B8F050;
            v40 = xmmword_296B8F0C0;
            v42 = xmmword_296B8F0B0;
            do
            {
              v124.val[1] = *(v111[0] + v43);
              v126.val[1] = *(v111[0] + v43 + 16);
              v47 = *(v45 + v43);
              v46 = *(v45 + v43 + 16);
              v124.val[0] = *(v44 + v43);
              v126.val[0] = *(v44 + v43 + 16);
              v128.val[1] = vqtbl2q_s8(v124, xmmword_296B8F050);
              v128.val[0] = vqtbl1q_s8(v47, xmmword_296B8F0B0);
              v48 = vqtbl2q_s8(v128, xmmword_296B8F020);
              v128.val[1] = vqtbl2q_s8(v126, xmmword_296B8F050);
              v128.val[0] = vqtbl1q_s8(v46, xmmword_296B8F0B0);
              v128.val[0] = vqtbl2q_s8(v128, xmmword_296B8F020);
              v49 = vqtbl2q_s8(v126, xmmword_296B8F000);
              v128.val[1] = vqtbl1q_s8(v46, xmmword_296B8F0C0);
              v128.val[1] = vqtbl2q_s8(*(&v128 + 16), xmmword_296B8F020);
              v130.val[1] = vqtbl2q_s8(v124, xmmword_296B8F070);
              v130.val[0] = vqtbl1q_s8(v47, xmmword_296B8F0D0);
              v130.val[0] = vqtbl2q_s8(v130, xmmword_296B8F020);
              v50 = vqtbl2q_s8(v124, xmmword_296B8F000);
              v130.val[1] = vqtbl1q_s8(v47, xmmword_296B8F0C0);
              v124.val[1] = vqtbl2q_s8(v124, xmmword_296B8F030);
              v124.val[0] = vqtbl1q_s8(v47, xmmword_296B8F0E0);
              v132.val[1] = vqtbl2q_s8(v126, xmmword_296B8F070);
              v51 = vqtbl2q_s8(*(&v130 + 16), xmmword_296B8F020);
              v132.val[0] = vqtbl1q_s8(v46, xmmword_296B8F0D0);
              v130.val[1] = vqtbl2q_s8(v132, xmmword_296B8F020);
              v126.val[1] = vqtbl2q_s8(v126, xmmword_296B8F030);
              v126.val[0] = vqtbl1q_s8(v46, xmmword_296B8F0E0);
              v126.val[0] = vqtbl2q_s8(v126, xmmword_296B8F020);
              v124.val[0] = vqtbl2q_s8(v124, xmmword_296B8F020);
              v52 = vaddq_s32(vshlq_n_s64(v48, 0x20uLL), v48);
              v128.val[0] = vaddq_s32(vshlq_n_s64(v128.val[0], 0x20uLL), v128.val[0]);
              v128.val[1] = vaddq_s32(vshlq_n_s64(v128.val[1], 0x20uLL), v128.val[1]);
              v130.val[0] = vaddq_s32(vshlq_n_s64(v130.val[0], 0x20uLL), v130.val[0]);
              v53 = vaddq_s32(vshlq_n_s64(v51, 0x20uLL), v51);
              v124.val[0] = vaddq_s32(vshlq_n_s64(v124.val[0], 0x20uLL), v124.val[0]);
              v126.val[1] = vaddq_s32(vshlq_n_s64(v130.val[1], 0x20uLL), v130.val[1]);
              v124.val[1] = vaddq_s32(vshlq_n_s64(v126.val[0], 0x20uLL), v126.val[0]);
              v132.val[1] = vdupq_lane_s32(*v128.val[1].i8, 1);
              v54 = vdupq_lane_s32(*v128.val[0].i8, 1);
              v55 = vdupq_lane_s32(*v52.i8, 1);
              v55.i64[0] = 0;
              v54.i64[0] = 0;
              v132.val[1].i64[0] = 0;
              v30 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v130.val[0].i8, 1), v130.val[0]), vaddq_s32(v55, v52));
              v29 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v124.val[1].i8, 1), v124.val[1]), 3), vaddq_s32(v132.val[1], v128.val[1])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v126.val[1].i8, 1), v126.val[1]), 3), vaddq_s32(v54, v128.val[0])));
              v28 = vaddq_s32(v29, vaddq_s32(v30, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v124.val[0].i8, 1), v124.val[0]), vaddq_s32(vdupq_lane_s32(*v53.i8, 1), v53))));
              v33 = vaddq_s32(v28, vdupq_lane_s32(*v33.i8, 0));
              v33.i32[0] = v33.i32[3];
              v56 = v43 + 64;
              v43 += 32;
            }

            while (v56 <= v26);
            v32 = v26 & 0xFFFFFFE0;
          }

          else
          {
            v32 = 0;
            v33.i64[0] = 0;
            v35 = xmmword_296B8F0D0;
            v34 = xmmword_296B8F070;
            v37 = xmmword_296B8F030;
            v36 = xmmword_296B8F020;
            v39 = xmmword_296B8F000;
            v38 = xmmword_296B8F0E0;
            v41 = xmmword_296B8F050;
            v40 = xmmword_296B8F0C0;
            v42 = xmmword_296B8F0B0;
          }

          if ((v32 | 8) <= v26)
          {
            do
            {
              v28.i64[0] = *(v111[0] + v32);
              v29.i64[0] = *(v112 + v111[0] + v32);
              v30.i64[0] = *(v111[0] + 2 * v112 + v32);
              v58 = vzip1q_s8(0, v29);
              v59 = vzip1q_s8(v30, v28);
              v60 = vzip1q_s8(v58, v59);
              v61 = vzip2q_s8(v58, v59);
              v28 = vaddq_s32(vshlq_n_s64(v61, 0x20uLL), v61);
              v29 = vdupq_lane_s32(*v28.i8, 1);
              v62 = vaddq_s32(vshlq_n_s64(v60, 0x20uLL), v60);
              v30 = vaddq_s32(vdupq_lane_s32(*v62.i8, 1), v62);
              v33 = vaddq_s32(v29, vaddq_s32(v28, vdupq_lane_s32(*v33.i8, 0)));
              v33.i32[0] = v33.i32[3] + v30.i32[3];
              v57 = v32 + 8;
              v63 = v32 + 16;
              v32 += 8;
            }

            while (v63 <= v26);
          }

          else
          {
            v57 = v32;
          }

          if (v57 <= v26)
          {
            v64 = v26;
          }

          else
          {
            v64 = v57;
          }

          if (v64 + 32 <= v27)
          {
            v67 = v111[0] + 2 * v112;
            v68 = v112 + v111[0];
            v69 = a8;
            do
            {
              v125.val[1] = *(v31 + v64);
              v127.val[1] = *(v31 + v64 + 16);
              v71 = *(v68 + v64);
              v70 = *(v68 + v64 + 16);
              v125.val[0] = *(v67 + v64);
              v127.val[0] = *(v67 + v64 + 16);
              v129.val[1] = vqtbl2q_s8(v125, v34);
              v129.val[0] = vqtbl1q_s8(v71, v35);
              v72 = vqtbl2q_s8(v129, v36);
              v129.val[1] = vqtbl2q_s8(v125, v37);
              v129.val[0] = vqtbl1q_s8(v71, v38);
              v129.val[0] = vqtbl2q_s8(v129, v36);
              v73 = vqtbl2q_s8(v127, v34);
              v129.val[1] = vqtbl1q_s8(v70, v35);
              v129.val[1] = vqtbl2q_s8(*(&v129 + 16), v36);
              v131.val[1] = vqtbl2q_s8(v127, v37);
              v131.val[0] = vqtbl1q_s8(v70, v38);
              v131.val[0] = vqtbl2q_s8(v131, v36);
              v74 = vqtbl2q_s8(v127, v39);
              v131.val[1] = vqtbl1q_s8(v70, v40);
              v131.val[1] = vqtbl2q_s8(*(&v131 + 16), v36);
              v127.val[1] = vqtbl2q_s8(v127, v41);
              v127.val[0] = vqtbl1q_s8(v70, v42);
              v127.val[0] = vqtbl2q_s8(v127, v36);
              v75 = vqtbl2q_s8(v125, v39);
              v127.val[1] = vqtbl1q_s8(v71, v40);
              v127.val[1] = vqtbl2q_s8(*(&v127 + 16), v36);
              v125.val[1] = vqtbl2q_s8(v125, v41);
              v125.val[0] = vqtbl1q_s8(v71, v42);
              v125.val[0] = vqtbl2q_s8(v125, v36);
              v76 = vaddq_s32(vshlq_n_s64(v72, 0x20uLL), v72);
              v129.val[0] = vaddq_s32(vshlq_n_s64(v129.val[0], 0x20uLL), v129.val[0]);
              v129.val[1] = vaddq_s32(vshlq_n_s64(v129.val[1], 0x20uLL), v129.val[1]);
              v131.val[0] = vaddq_s32(vshlq_n_s64(v131.val[0], 0x20uLL), v131.val[0]);
              v131.val[1] = vaddq_s32(vshlq_n_s64(v131.val[1], 0x20uLL), v131.val[1]);
              v127.val[0] = vaddq_s32(vshlq_n_s64(v127.val[0], 0x20uLL), v127.val[0]);
              v127.val[1] = vaddq_s32(vshlq_n_s64(v127.val[1], 0x20uLL), v127.val[1]);
              v125.val[0] = vaddq_s32(vshlq_n_s64(v125.val[0], 0x20uLL), v125.val[0]);
              v125.val[1] = vdupq_lane_s32(*v125.val[0].i8, 1);
              v77 = vdupq_lane_s32(*v127.val[1].i8, 1);
              v78 = vdupq_lane_s32(*v127.val[0].i8, 1);
              v79 = vdupq_lane_s32(*v131.val[1].i8, 1);
              v80 = vdupq_lane_s32(*v131.val[0].i8, 1);
              v81 = vdupq_lane_s32(*v129.val[1].i8, 1);
              v82 = vdupq_lane_s32(*v129.val[0].i8, 1);
              v83 = vdupq_lane_s32(*v76.i8, 1);
              v83.i64[0] = 0;
              v82.i64[0] = 0;
              v81.i64[0] = 0;
              v80.i64[0] = 0;
              v79.i64[0] = 0;
              v78.i64[0] = 0;
              v77.i64[0] = 0;
              v125.val[1].i64[0] = 0;
              v125.val[0] = vaddq_s32(v125.val[1], v125.val[0]);
              v125.val[1] = vaddq_s32(v77, v127.val[1]);
              v127.val[0] = vaddq_s32(v78, v127.val[0]);
              v84 = vaddq_s32(v80, v131.val[0]);
              v85 = vaddq_s32(v82, v129.val[0]);
              v86 = vaddq_s32(v83, v76);
              v129.val[1] = vaddq_s32(v81, v129.val[1]);
              v127.val[0] = vaddq_s32(vdupq_laneq_s32(v129.val[1], 3), v127.val[0]);
              v125.val[0] = vaddq_s32(vdupq_laneq_s32(v86, 3), v125.val[0]);
              v129.val[0] = vdupq_laneq_s32(v125.val[0], 3);
              v125.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v85, 3), v125.val[1]), v129.val[0]);
              v131.val[0] = vdupq_laneq_s32(v127.val[0], 3);
              v127.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v84, 3), vaddq_s32(v79, v131.val[1])), v131.val[0]);
              v87 = vaddq_s32(v84, v131.val[0]);
              v131.val[0] = vdupq_laneq_s32(v125.val[1], 3);
              v88 = vdupq_lane_s32(*v33.i8, 0);
              v129.val[1] = vaddq_s32(v129.val[1], v88);
              v127.val[1] = vaddq_s32(vaddq_s32(v127.val[1], v88), v131.val[0]);
              v89 = vaddq_s32(v87, v88);
              v125.val[1] = vaddq_s32(v125.val[1], v88);
              *v69 = vaddq_s32(v86, v88);
              v69[1] = vaddq_s32(v125.val[0], v88);
              v30 = vaddq_s32(vaddq_s32(v127.val[0], v88), v131.val[0]);
              v33 = vaddq_s32(vaddq_s32(v85, v88), v129.val[0]);
              v69[2] = v33;
              v69[3] = v125.val[1];
              v28 = vaddq_s32(v129.val[1], v131.val[0]);
              v29 = vaddq_s32(v89, v131.val[0]);
              v33.i32[0] = v127.val[1].i32[3];
              v66 = v69 + 8;
              v69[6] = v29;
              v69[7] = v127.val[1];
              v69[4] = v28;
              v69[5] = v30;
              v65 = v64 + 32;
              v90 = v64 + 64;
              v64 += 32;
              v69 += 8;
            }

            while (v90 <= v27);
          }

          else
          {
            v65 = v64;
            v66 = a8;
          }

          v91 = v65 + 8;
          while (v91 <= v27)
          {
            v28.i64[0] = *(v111[0] + v65);
            v29.i64[0] = *(v111[0] + v65 + v112);
            v30.i64[0] = *(v111[0] + v65 + 2 * v112);
            v92 = vzip1q_s8(0, v29);
            v93 = vzip1q_s8(v30, v28);
            v94 = vzip1q_s8(v92, v93);
            v95 = vzip2q_s8(v92, v93);
            v96 = vaddq_s32(vshlq_n_s64(v94, 0x20uLL), v94);
            v97 = vaddq_s32(vshlq_n_s64(v95, 0x20uLL), v95);
            v29 = vdupq_lane_s32(*v97.i8, 1);
            v98 = vdupq_lane_s32(*v96.i8, 1);
            v98.i64[0] = 0;
            v29.i64[0] = 0;
            v99 = vaddq_s32(v98, v96);
            v100 = vdupq_laneq_s32(v99, 3);
            v101 = vdupq_lane_s32(*v33.i8, 0);
            v30 = vaddq_s32(v99, v101);
            v33 = vaddq_s32(v29, vaddq_s32(v97, v101));
            v28 = vaddq_s32(v33, v100);
            v33.i32[0] = v28.i32[3];
            *v66 = v30;
            v66[1] = v28;
            v66 += 2;
            v91 = v65 + 16;
            v65 += 8;
          }

          if (v65 < v27)
          {
            v102 = v27 - v65;
            v103 = (v65 + v111[0]);
            v104 = (v65 + v111[0] + 2 * v112);
            v105 = (v65 + v111[0] + v112);
            do
            {
              v106 = *v103++;
              v107 = v106 << 24;
              v109 = *v105++;
              v108 = v109;
              v110 = *v104++;
              v66->i32[0] = (v107 | (v108 << 16) | (v110 << 8)) + v33.i32[0];
              v66 = (v66 + 4);
              --v102;
            }

            while (v102);
          }
        }

        a8 = (a8 + a9);
        v24 += a7;
      }

      while (v24 + a3[7].u32[0] < HIDWORD(v20));
    }
  }

  return result;
}

void TileDecoder_PXR24::~TileDecoder_PXR24(void **this)
{
  TileDecoder::~TileDecoder(this);

  JUMPOUT(0x29C25E8F0);
}

uint64_t TileDecoder_ScanlineCompressed::Interleave(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[0] = 0;
  v18[1] = 0;
  v20 = 0;
  v19 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a4, a5, a6, v18);
  if (HIDWORD(v19))
  {
    v15 = v20 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(a1 + 64);
    v17 = *(v16[1] + 72);
    if (*(a1 + 72) == 2)
    {
      return (*(&TileDecoder_ScanlineCompressed::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[2] + ((8 * (v17 != 1)) | (32 * (v16[3] != 0)))))(a2, a1, a4, v16, (v16 + 2), v18[0], HIDWORD(v19), a6, a7, a9);
    }

    else
    {
      return (*(&TileDecoder_ScanlineCompressed::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[2] + ((8 * (v17 != 1)) | (32 * (v16[3] != 0)) | ((v16[5] != 0) << 6) | ((v16[7] != 0) << 7))))(a2, a1, a4, v16, (v16 + 2), (v16 + 4), (v16 + 6), v18[0], HIDWORD(v19), a6, a7, a9);
    }
  }

  return result;
}

void CompressedInterleave2<unsigned short,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, unint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *a4;
    if (*(*a4 + 24))
    {
      _D0 = *v11;
    }

    else
    {
      _D0 = NAN;
    }

    v13 = *(v11 + 16);
    if (v13 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v13 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v34) = _H0;
      LOWORD(v34) = _H0;
      LODWORD(_D0) = v34;
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v19 = *a5;
    if (*(*a5 + 24))
    {
      _D1 = *v19;
    }

    else
    {
      _D1 = NAN;
    }

    v21 = HIDWORD(v10);
    v22 = *(v19 + 16);
    if (v22 == 2)
    {
      v23 = _D1;
    }

    else if (v22 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v35) = _H1;
      LOWORD(v35) = _H1;
      v23 = v35;
    }

    else
    {
      LODWORD(v23) = _D1;
      if (v22)
      {
        v23 = *&_D0;
      }
    }

    v25 = *(a3 + 52);
    if (*(a3 + 56) + v25 < v21)
    {
      *(&_D0 + 1) = v23;
      v26 = vdupq_lane_s16(*&_D0, 0);
      v28 = vdupq_lane_s16(*&_D0, 2);
      do
      {
        if (a7 >= 8)
        {
          v31 = 0;
          v30 = a9;
          do
          {
            vst2q_s16(v30, *v26.i8);
            v30 += 16;
            v29 = v31 + 8;
            v32 = v31 + 16;
            v31 += 8;
          }

          while (v32 <= a7);
        }

        else
        {
          v29 = 0;
          v30 = a9;
        }

        _CF = a7 >= v29;
        v33 = a7 - v29;
        if (v33 != 0 && _CF)
        {
          do
          {
            v30[1] = WORD2(_D0);
            *v30 = LOWORD(_D0);
            v30 += 2;
            --v33;
          }

          while (v33);
        }

        a9 = (a9 + a10);
        v25 += a8;
      }

      while (v25 + *(a3 + 56) < v21);
    }
  }
}

void CompressedInterleave2<unsigned int,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, unint64_t a7, unsigned int a8, _OWORD *a9, uint64_t a10)
{
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *a4;
    if (*(*a4 + 24))
    {
      _D0 = *v11;
    }

    else
    {
      _D0 = NAN;
    }

    v13 = *(v11 + 16);
    if (v13 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v13 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v35) = _H0;
      LOWORD(v35) = _H0;
      LODWORD(_D0) = v35;
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v19 = *a5;
    _D1 = *(*a5 + 24) ? *v19 : NAN;
    v21 = HIDWORD(v10);
    v22 = *(v19 + 16);
    if (v22 == 2)
    {
      v24 = _D1;
    }

    else if (v22 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v36) = _H1;
      LOWORD(v36) = _H1;
      v24 = v36;
    }

    else
    {
      v23 = _D1;
      v24 = v22 ? *&_D0 : *&v23;
    }

    v26 = *(a3 + 52);
    if (*(a3 + 56) + v26 < v21)
    {
      *&v27 = __PAIR64__(LODWORD(v24), LODWORD(_D0));
      *(&v27 + 1) = __PAIR64__(LODWORD(v24), LODWORD(_D0));
      *(&_D0 + 1) = v24;
      do
      {
        if (a7 >= 8)
        {
          v31 = 0;
          v32 = a9;
          do
          {
            v30 = v32 + 4;
            *v32 = v27;
            v32[1] = v27;
            v32[2] = v27;
            v32[3] = v27;
            v29 = v31 + 8;
            v33 = v31 + 16;
            v31 += 8;
            v32 += 4;
          }

          while (v33 <= a7);
        }

        else
        {
          v29 = 0;
          v30 = a9;
        }

        _CF = a7 >= v29;
        v34 = a7 - v29;
        if (v34 != 0 && _CF)
        {
          do
          {
            *v30++ = *&_D0;
            --v34;
          }

          while (v34);
        }

        a9 = (a9 + a10);
        v26 += a8;
      }

      while (v26 + *(a3 + 56) < v21);
    }
  }
}

uint64_t CompressedInterleave2<unsigned short,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  v11 = *(a2 + 56);
  if (v11)
  {
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v41, result, a2, a4, a3);
    v17 = *a5;
    _D0 = *(*a5 + 24) ? *v17 : NAN;
    v19 = HIDWORD(v11);
    v20 = *(v17 + 16);
    if (v20 == 2)
    {
      *&v21 = _D0;
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v44) = _H0;
      LOWORD(v44) = _H0;
      v21 = v44;
    }

    else
    {
      v21 = _D0;
    }

    v27 = a3[13];
    if (a3[14] + v27 < v19)
    {
      v29 = a3[7] * *(a2 + 60);
      v30 = v21;
      v31 = vdupq_n_s16(v21);
      do
      {
        v38 = v16;
        v39 = v31;
        v42 = v29 + v27;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v41);
        if (a7 >= 8)
        {
          v36 = 0;
          v35 = a9;
          v31 = v39;
          do
          {
            v32.i64[0] = *(v36 + v41[0]);
            v33.i64[0] = *(v36 + v43 + v41[0]);
            v16 = vzip1q_s8(v32, v33);
            vst2q_s16(v35, *v16.i8);
            v35 += 16;
            v34 = v36 + 8;
            v37 = v36 + 16;
            v36 += 8;
          }

          while (v37 <= a7);
        }

        else
        {
          v34 = 0;
          v35 = a9;
          v16 = v38;
          v31 = v39;
        }

        if (v34 < a7)
        {
          do
          {
            LOBYTE(v40) = *(v34 + v41[0]);
            HIBYTE(v40) = *(v34 + v43 + v41[0]);
            v35[1] = v30;
            *v35 = v40;
            v35 += 2;
            ++v34;
          }

          while (a7 != v34);
        }

        a9 = (a9 + a10);
        v27 += a8;
      }

      while (v27 + a3[14] < v19);
    }
  }

  return result;
}

uint64_t CompressedInterleave2<unsigned int,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t a7, unsigned int a8, float *a9, uint64_t a10)
{
  v11 = *(a2 + 56);
  if (v11)
  {
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v50, result, a2, a4, a3);
    v17 = *a5;
    _D0 = *(*a5 + 24) ? *v17 : NAN;
    v19 = HIDWORD(v11);
    v20 = *(v17 + 16);
    if (v20 == 2)
    {
      *&v21 = _D0;
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v53) = _H0;
      LOWORD(v53) = _H0;
      v21 = v53;
    }

    else
    {
      v21 = _D0;
    }

    v27 = a3[13];
    if (a3[14] + v27 < v19)
    {
      v29 = v21;
      v30 = a3[7] * *(a2 + 60);
      v31 = vdupq_n_s32(v21);
      do
      {
        v48 = v16;
        v49 = v31;
        v51 = v30 + v27;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v50);
        if (a7 >= 8)
        {
          v36 = 0;
          v37 = v50[0];
          v38 = (v52 + v50[0]);
          v39 = a9;
          v31 = v49;
          do
          {
            v40 = *v37++;
            v41 = v40;
            v42 = *v38++;
            v16 = vzip1q_s8(v41, v42);
            v35 = v39 + 16;
            vst2q_f32(v39, *v16.i8);
            v43 = v39 + 8;
            v32 = vzip2q_s8(v41, v42);
            v33 = v49;
            vst2q_f32(v43, *v32.i8);
            v34 = v36 + 8;
            v44 = v36 + 16;
            v36 += 8;
            v39 = v35;
          }

          while (v44 <= a7);
        }

        else
        {
          v34 = 0;
          v35 = a9;
          v16 = v48;
          v31 = v49;
        }

        v45 = a7 - v34;
        if (a7 > v34)
        {
          v46 = 2 * v34;
          do
          {
            v47 = (v46 + v52 + v50[0]);
            v32.i32[0] = *(v46 + v50[0]);
            v32.i8[4] = *(v46 + v50[0] + 1);
            v33.i32[0] = *v47;
            v33.i8[4] = v47[1];
            v32 = vtrn1q_s16(v32, v33);
            v32.i32[0] = vmovn_s16(v32).u32[0];
            v32.i32[1] = v29;
            *v35 = v32.i64[0];
            v35 += 2;
            v46 += 2;
            --v45;
          }

          while (v45);
        }

        a9 = (a9 + a10);
        v27 += a8;
      }

      while (v27 + a3[14] < v19);
    }
  }

  return result;
}

uint64_t CompressedInterleave2<unsigned short,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  v11 = *(a2 + 56);
  if (v11)
  {
    v15 = *a4;
    _D0 = *(*a4 + 24) ? *v15 : NAN;
    v17 = HIDWORD(v11);
    v18 = *(v15 + 16);
    if (v18 == 2)
    {
      *&v19 = _D0;
    }

    else if (v18 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v39[0]) = _H0;
      LOWORD(v39[0]) = _H0;
      v19 = v39[0];
    }

    else
    {
      v19 = _D0;
    }

    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v39, result, a2, a5, a3);
    v26 = a3[13];
    if (a3[14] + v26 < v17)
    {
      v28 = a3[7] * *(a2 + 60);
      v29 = vdupq_n_s16(v19);
      do
      {
        v36 = v29;
        v37 = v25;
        v40 = v28 + v26;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v39);
        if (a7 >= 8)
        {
          v34 = 0;
          v33 = a9;
          v29 = v36;
          do
          {
            v30.i64[0] = *(v34 + v39[0]);
            v31.i64[0] = *(v34 + v41 + v39[0]);
            v25 = vzip1q_s8(v30, v31);
            vst2q_s16(v33, *(&v25 - 1));
            v33 += 16;
            v32 = v34 + 8;
            v35 = v34 + 16;
            v34 += 8;
          }

          while (v35 <= a7);
        }

        else
        {
          v32 = 0;
          v33 = a9;
          v29 = v36;
          v25 = v37;
        }

        if (v32 < a7)
        {
          do
          {
            LOBYTE(v38) = *(v32 + v39[0]);
            HIBYTE(v38) = *(v32 + v41 + v39[0]);
            *v33 = v19;
            v33[1] = v38;
            v33 += 2;
            ++v32;
          }

          while (a7 != v32);
        }

        a9 = (a9 + a10);
        v26 += a8;
      }

      while (v26 + a3[14] < v17);
    }
  }

  return result;
}

uint64_t CompressedInterleave2<unsigned int,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, __n128 _Q0, uint64_t a7, unint64_t a8, unsigned int a9, float *a10, uint64_t a11)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v16 = *a4;
    _Q0.n128_u64[0] = *(*a4 + 24) ? *v16 : 0x7FF8000000000000;
    v17 = HIDWORD(v12);
    v18 = *(v16 + 16);
    if (v18 == 2)
    {
      _Q0.n128_f32[0] = _Q0.n128_f64[0];
    }

    else if (v18 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v47[0]) = _H0;
      LOWORD(v47[0]) = _H0;
      _Q0.n128_u32[0] = v47[0];
    }

    else
    {
      _Q0.n128_u32[0] = _Q0.n128_f64[0];
    }

    v46 = _Q0;
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v47, result, a2, a5, a3);
    v25 = a3[13];
    if (a3[14] + v25 < v17)
    {
      v27 = a3[7] * *(a2 + 60);
      v28 = vdupq_n_s32(v46.n128_u32[0]);
      do
      {
        v44 = v28;
        v45 = v24;
        v48 = v27 + v25;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v47);
        if (a8 >= 8)
        {
          v33 = 0;
          v34 = v47[0];
          v35 = (v49 + v47[0]);
          v36 = a10;
          v28 = v44;
          do
          {
            v37 = *v34++;
            v29 = v37;
            v38 = *v35++;
            v30 = v38;
            v50.val[1] = vzip1q_s8(v29, v38);
            v24 = vzip2q_s8(v29, v38);
            v32 = v36 + 16;
            v50.val[0] = v44;
            vst2q_f32(v36, v50);
            v39 = v36 + 8;
            vst2q_f32(v39, *(&v24 - 1));
            v31 = v33 + 8;
            v40 = v33 + 16;
            v33 += 8;
            v36 = v32;
          }

          while (v40 <= a8);
        }

        else
        {
          v31 = 0;
          v32 = a10;
          v28 = v44;
          v24 = v45;
        }

        v41 = a8 - v31;
        if (a8 > v31)
        {
          v42 = 2 * v31;
          do
          {
            v43 = (v42 + v49 + v47[0]);
            v29.i32[0] = *(v42 + v47[0]);
            v29.i8[4] = *(v42 + v47[0] + 1);
            v30.i32[0] = *v43;
            v30.i8[4] = v43[1];
            v29 = vtrn1q_s16(v29, v30);
            *v29.i8 = vmovn_s16(v29);
            v30 = v46;
            v30.i32[1] = v29.i32[0];
            *v32 = v30.i64[0];
            v32 += 2;
            v42 += 2;
            --v41;
          }

          while (v41);
        }

        a10 = (a10 + a11);
        v25 += a9;
      }

      while (v25 + a3[14] < v17);
    }
  }

  return result;
}

uint64_t CompressedInterleave2<unsigned short,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  v10 = *(a2 + 56);
  if (v10)
  {
    v16 = result;
    v17 = HIDWORD(v10);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v34, result, a2, a4, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v31, v16, a2, a5, a3);
    v18 = a3[13];
    if (a3[14] + v18 < v17)
    {
      v20 = a3[7] * *(a2 + 60);
      do
      {
        v35 = v20 + v18;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v34);
        v32 = v20 + v18;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v31);
        if (a7 >= 8)
        {
          v27 = 0;
          v26 = a9;
          do
          {
            v21.i64[0] = *(v27 + v34[0]);
            v22.i64[0] = *(v27 + v36 + v34[0]);
            v21 = vzip1q_s8(v21, v22);
            v23.i64[0] = *(v27 + v31[0]);
            v24.i64[0] = *(v27 + v33 + v31[0]);
            v22 = vzip1q_s8(v23, v24);
            vst2q_s16(v26, *v21.i8);
            v26 += 16;
            v25 = v27 + 8;
            v28 = v27 + 16;
            v27 += 8;
          }

          while (v28 <= a7);
        }

        else
        {
          v25 = 0;
          v26 = a9;
        }

        if (v25 < a7)
        {
          do
          {
            LOBYTE(v30) = *(v25 + v34[0]);
            HIBYTE(v30) = *(v25 + v36 + v34[0]);
            LOBYTE(v29) = *(v25 + v31[0]);
            HIBYTE(v29) = *(v25 + v33 + v31[0]);
            v26[1] = v29;
            *v26 = v30;
            v26 += 2;
            ++v25;
          }

          while (a7 != v25);
        }

        a9 = (a9 + a10);
        v18 += a8;
      }

      while (v18 + a3[14] < v17);
    }
  }

  return result;
}

uint64_t CompressedInterleave2<unsigned int,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, float *a9, uint64_t a10)
{
  v10 = *(a2 + 56);
  if (v10)
  {
    v16 = result;
    v17 = HIDWORD(v10);
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v49, result, a2, a4, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v46, v16, a2, a5, a3);
    v18 = a3[13];
    if (a3[14] + v18 < v17)
    {
      v20 = a3[7] * *(a2 + 60);
      do
      {
        v50 = v20 + v18;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v49);
        v47 = v20 + v18;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v46);
        if (a7 >= 8)
        {
          v26 = 0;
          v27 = v49[0];
          v28 = v46[0];
          v29 = (v48 + v46[0]);
          v30 = (v51 + v49[0]);
          v31 = a9;
          do
          {
            v32 = *v27++;
            v33 = v32;
            v34 = *v30++;
            v35 = v34;
            v23 = vzip1q_s8(v33, v34);
            v36 = *v28++;
            v37 = v36;
            v38 = *v29++;
            v39 = vzip1q_s8(v37, v38);
            v25 = v31 + 16;
            vst2q_f32(v31, *v23.i8);
            v40 = v31 + 8;
            v21 = vzip2q_s8(v33, v35);
            v22 = vzip2q_s8(v37, v38);
            vst2q_f32(v40, *v21.i8);
            v24 = v26 + 8;
            v41 = v26 + 16;
            v26 += 8;
            v31 = v25;
          }

          while (v41 <= a7);
        }

        else
        {
          v24 = 0;
          v25 = a9;
        }

        v42 = a7 - v24;
        if (a7 > v24)
        {
          v43 = 2 * v24;
          do
          {
            v44 = (v43 + v51 + v49[0]);
            v21.i32[0] = *(v43 + v49[0]);
            v21.i8[4] = *(v43 + v49[0] + 1);
            v22.i32[0] = *v44;
            v22.i8[4] = v44[1];
            v21 = vtrn1q_s16(v21, v22);
            v21.i32[0] = vmovn_s16(v21).u32[0];
            v45 = (v43 + v48 + v46[0]);
            v22.i32[0] = *(v43 + v46[0]);
            v22.i8[4] = *(v43 + v46[0] + 1);
            v23.i32[0] = *v45;
            v23.i8[4] = v45[1];
            v22 = vtrn1q_s16(v22, v23);
            *v22.i8 = vmovn_s16(v22);
            v21.i32[1] = v22.i32[0];
            *v25 = v21.i64[0];
            v25 += 2;
            v43 += 2;
            --v42;
          }

          while (v42);
        }

        a9 = (a9 + a10);
        v18 += a8;
      }

      while (v18 + a3[14] < v17);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v13 = *a4;
    if (*(*a4 + 24))
    {
      _Q0.i64[0] = *v13;
    }

    else
    {
      _Q0.i64[0] = 0x7FF8000000000000;
    }

    v15 = *(v13 + 16);
    if (v15 == 2)
    {
      *_Q0.i32 = *_Q0.i64;
    }

    else if (v15 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v57) = _H0;
      LOWORD(v57) = _H0;
      _Q0.i32[0] = v57;
    }

    else
    {
      _Q0.i32[0] = *_Q0.i64;
    }

    v21 = *a5;
    if (*(*a5 + 24))
    {
      _D1 = *v21;
    }

    else
    {
      _D1 = NAN;
    }

    v23 = *(v21 + 16);
    if (v23 == 2)
    {
      v24 = _D1;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v58) = _H1;
      LOWORD(v58) = _H1;
      v24 = v58;
    }

    else
    {
      LODWORD(v24) = _D1;
      if (v23)
      {
        v24 = *_Q0.i32;
      }
    }

    v26 = *a6;
    if (*(*a6 + 24))
    {
      _D2 = *v26;
    }

    else
    {
      _D2 = NAN;
    }

    v28 = *(v26 + 16);
    if (v28 == 2)
    {
      v29 = _D2;
    }

    else if (v28 == 1)
    {
      __asm { FCVT            H2, D2 }

      HIWORD(v59) = _H2;
      LOWORD(v59) = _H2;
      v29 = v59;
    }

    else
    {
      LODWORD(v29) = _D2;
      if (v28)
      {
        v29 = *_Q0.i32;
      }
    }

    v31 = *a7;
    if (*(*a7 + 24))
    {
      _D3 = *v31;
    }

    else
    {
      _D3 = NAN;
    }

    v33 = HIDWORD(v12);
    v34 = *(v31 + 16);
    if (v34 == 2)
    {
      v35 = _D3;
    }

    else if (v34 == 1)
    {
      __asm { FCVT            H3, D3 }

      HIWORD(v60) = _H3;
      LOWORD(v60) = _H3;
      v35 = v60;
    }

    else
    {
      LODWORD(v35) = _D3;
      if (v34)
      {
        v35 = *_Q0.i32;
      }
    }

    v37 = *(a3 + 52);
    if (*(a3 + 56) + v37 < v33)
    {
      *&_Q0.i32[1] = v24;
      _Q0.i64[1] = __PAIR64__(LODWORD(v35), LODWORD(v29));
      v39 = vmovn_s32(_Q0);
      v40 = vdupq_lane_s16(v39, 0);
      v41 = vdupq_lane_s16(v39, 1);
      v42 = vdupq_lane_s16(v39, 2);
      v43 = vdupq_lane_s16(v39, 3);
      v44 = vzip2q_s16(v40, v42);
      v45 = vzip1q_s16(v40, v42);
      v46 = vzip2q_s16(v41, v43);
      v47 = vzip1q_s16(v41, v43);
      v48 = vuzp1q_s16(_Q0, _Q0);
      do
      {
        if (a9 >= 8)
        {
          v51 = 0;
          v52 = a11;
          do
          {
            v50 = (v52 + 32);
            vst2q_s16(v52, *v45.i8);
            v53 = v52 + 16;
            vst2q_s16(v53, *v44.i8);
            v49 = v51 + 8;
            result = v51 + 16;
            v51 += 8;
            v52 = v50;
          }

          while (result <= a9);
        }

        else
        {
          v49 = 0;
          v50 = a11;
        }

        v55 = v49 | 2;
        while (v55 <= a9)
        {
          *v50++ = v48;
          v55 = v49 + 4;
          v49 += 2;
        }

        _CF = a9 >= v49;
        v56 = a9 - v49;
        if (v56 != 0 && _CF)
        {
          do
          {
            *v50->i8 = v39;
            v50 = (v50 + 8);
            --v56;
          }

          while (v56);
        }

        a11 = (a11 + a12);
        v37 += a10;
      }

      while (v37 + *(a3 + 56) < v33);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v13 = *a4;
    if (*(*a4 + 24))
    {
      *&_Q0 = *v13;
    }

    else
    {
      *&_Q0 = 0x7FF8000000000000;
    }

    v15 = *(v13 + 16);
    if (v15 == 2)
    {
      *&_Q0 = *&_Q0;
    }

    else if (v15 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v54) = _H0;
      LOWORD(v54) = _H0;
      LODWORD(_Q0) = v54;
    }

    else
    {
      LODWORD(_Q0) = *&_Q0;
    }

    v21 = *a5;
    if (*(*a5 + 24))
    {
      _D1 = *v21;
    }

    else
    {
      _D1 = NAN;
    }

    v23 = *(v21 + 16);
    if (v23 == 2)
    {
      v25 = _D1;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v55) = _H1;
      LOWORD(v55) = _H1;
      v25 = v55;
    }

    else
    {
      v24 = _D1;
      if (v23)
      {
        v25 = *&_Q0;
      }

      else
      {
        v25 = *&v24;
      }
    }

    v27 = *a6;
    if (*(*a6 + 24))
    {
      _D3 = *v27;
    }

    else
    {
      _D3 = NAN;
    }

    v29 = *(v27 + 16);
    if (v29 == 2)
    {
      v30 = _D3;
    }

    else if (v29 == 1)
    {
      __asm { FCVT            H3, D3 }

      HIWORD(v56) = _H3;
      LOWORD(v56) = _H3;
      v30 = v56;
    }

    else
    {
      LODWORD(v30) = _D3;
      if (v29)
      {
        v30 = *&_Q0;
      }
    }

    v32 = *a7;
    if (*(*a7 + 24))
    {
      _D4 = *v32;
    }

    else
    {
      _D4 = NAN;
    }

    v34 = HIDWORD(v12);
    v35 = *(v32 + 16);
    if (v35 == 2)
    {
      v37 = _D4;
    }

    else if (v35 == 1)
    {
      __asm { FCVT            H4, D4 }

      HIWORD(v57) = _H4;
      LOWORD(v57) = _H4;
      v37 = v57;
    }

    else
    {
      v36 = _D4;
      if (v35)
      {
        v37 = *&_Q0;
      }

      else
      {
        v37 = *&v36;
      }
    }

    v39 = *(a3 + 52);
    if (*(a3 + 56) + v39 < v34)
    {
      v41 = v30;
      *&v42 = __PAIR64__(LODWORD(v30), _Q0);
      *(&v42 + 1) = v42;
      *&v43 = __PAIR64__(LODWORD(v37), LODWORD(v25));
      *(&v43 + 1) = __PAIR64__(LODWORD(v37), LODWORD(v25));
      v44 = v42;
      v45 = v37;
      *(&_Q0 + 1) = v25;
      *(&_Q0 + 1) = __PAIR64__(LODWORD(v37), LODWORD(v41));
      do
      {
        if (a9 >= 4)
        {
          v48 = 0;
          v49 = a11;
          do
          {
            v47 = v49 + 16;
            vst2q_f32(v49, *&v42);
            v50 = v49 + 8;
            vst2q_f32(v50, *&v42);
            v46 = v48 + 4;
            result = v48 + 8;
            v48 += 4;
            v49 = v47;
          }

          while (result <= a9);
        }

        else
        {
          v46 = 0;
          v47 = a11;
        }

        if (v46 < a9)
        {
          do
          {
            vst2_f32(v47, *(&v25 - 2));
            v47 += 4;
            v52 = v46 + 2;
            ++v46;
          }

          while (v52 <= a9);
        }

        _CF = a9 >= v46;
        v53 = a9 - v46;
        if (v53 != 0 && _CF)
        {
          do
          {
            *v47 = _Q0;
            v47 += 4;
            --v53;
          }

          while (v53);
        }

        a11 = (a11 + a12);
        v39 += a10;
      }

      while (v39 + *(a3 + 56) < v34);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v72, result, a2, a4, a3);
    v21 = *a5;
    if (*(*a5 + 24))
    {
      _D0 = *v21;
    }

    else
    {
      _D0 = NAN;
    }

    v23 = *(v21 + 16);
    if (v23 == 2)
    {
      v24 = _D0;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v75) = _H0;
      LOWORD(v75) = _H0;
      v24 = v75;
    }

    else
    {
      LODWORD(v24) = _D0;
    }

    v30 = *a6;
    if (*(*a6 + 24))
    {
      _D1 = *v30;
    }

    else
    {
      _D1 = NAN;
    }

    v32 = *(v30 + 16);
    if (v32 == 2)
    {
      *&_D1 = _D1;
    }

    else if (v32 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v75) = _H1;
      LOWORD(v75) = _H1;
      *&_D1 = v75;
    }

    else
    {
      LODWORD(_D1) = _D1;
      if (v32)
      {
        *&_D1 = v24;
      }
    }

    v34 = *a7;
    if (*(*a7 + 24))
    {
      _D2 = *v34;
    }

    else
    {
      _D2 = NAN;
    }

    v36 = HIDWORD(v13);
    v37 = *(v34 + 16);
    if (v37 == 2)
    {
      v38 = _D2;
    }

    else if (v37 == 1)
    {
      __asm { FCVT            H2, D2 }

      HIWORD(v75) = _H2;
      LOWORD(v75) = _H2;
      v38 = v75;
    }

    else
    {
      LODWORD(v38) = _D2;
      if (v37)
      {
        v38 = v24;
      }
    }

    v40 = a3[13];
    if (a3[14] + v40 < v36)
    {
      v42 = a3[7] * *(a2 + 60);
      v71 = LOWORD(v24);
      v43 = LOWORD(v24);
      v76.val[1] = vdupq_n_s16(LODWORD(v24));
      v44 = __PAIR64__(LODWORD(v38), LODWORD(_D1));
      v45 = LOWORD(v38);
      v76.val[0] = vdupq_lane_s16(__PAIR64__(LODWORD(v38), LODWORD(_D1)), 2);
      v46 = vqtbl2q_s8(v76, xmmword_296B8F160);
      v47 = xmmword_296B8F170;
      v48 = vqtbl2q_s8(v76, xmmword_296B8F170);
      v49 = vdup_lane_s32(*&_D1, 0);
      LOWORD(v20) = v71;
      WORD1(v20) = v45;
      WORD2(v20) = v71;
      WORD3(v20) = v45;
      v50 = vuzp1_s16(v44, v44);
      v63 = vdupq_lane_s16(v44, 0);
      do
      {
        v64 = v19;
        v65 = v20;
        v66 = v47;
        v67 = v48;
        v68 = v18;
        v69 = v46;
        v73 = v42 + v40;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v72);
        if (a9 >= 8)
        {
          v55 = 0;
          v56 = v72[0];
          v57 = v74 + v72[0];
          v58 = a11;
          v46 = v69;
          v48 = v67;
          do
          {
            v51.i64[0] = *(v56 + v55);
            v52.i64[0] = *(v57 + v55);
            v51 = vzip1q_s8(v51, v52);
            v47 = vzip1q_s16(v51, v63);
            v54 = v58 + 32;
            vst2q_s16(v58, *v47.i8);
            v59 = v58 + 16;
            v18 = vzip2q_s16(v51, v63);
            vst2q_s16(v59, *v18.i8);
            v53 = v55 + 8;
            v60 = v55 + 16;
            v55 += 8;
            v58 = v54;
          }

          while (v60 <= a9);
        }

        else
        {
          v53 = 0;
          v54 = a11;
          v18 = v68;
          v46 = v69;
          v47 = v66;
          v48 = v67;
        }

        v19 = v64;
        v20 = v65;
        if ((v53 | 2) <= a9)
        {
          do
          {
            v61 = (v53 + v74 + v72[0]);
            v51.i32[0] = *(v53 + v72[0]);
            v51.i8[4] = *(v53 + v72[0] + 1);
            v52.i32[0] = *v61;
            v52.i8[4] = v61[1];
            v51 = vtrn1q_s16(v51, v52);
            *v51.i8 = vmovn_s16(v51);
            v51.i16[2] = v51.i16[1];
            v19.val[0] = vtrn1_s16(*v51.i8, v49);
            vst2_s16(v54, v19);
            v54 += 8;
            v62 = v53 + 4;
            v53 += 2;
          }

          while (v62 <= a9);
        }

        if (v53 < a9)
        {
          do
          {
            LOBYTE(v70) = *(v53 + v72[0]);
            HIBYTE(v70) = *(v53 + v74 + v72[0]);
            v51.i16[0] = v70;
            v51.i16[1] = v43;
            *v51.i8 = vzip1_s32(*v51.i8, v50);
            *v54 = v51.i64[0];
            v54 += 4;
            ++v53;
          }

          while (a9 != v53);
        }

        a11 = (a11 + a12);
        v40 += a10;
      }

      while (v40 + a3[14] < v36);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v14 = *(a2 + 56);
  if (v14)
  {
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v71, result, a2, a4, a3);
    v22 = *a5;
    _D0 = *(*a5 + 24) ? *v22 : NAN;
    v24 = *(v22 + 16);
    if (v24 == 2)
    {
      *&v20 = _D0;
    }

    else if (v24 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v74) = _H0;
      LOWORD(v74) = _H0;
      *&v20 = v74;
    }

    else
    {
      LODWORD(v20) = _D0;
    }

    v30 = *a6;
    _D0 = *(*a6 + 24) ? *v30 : NAN;
    v32 = *(v30 + 16);
    if (v32 == 2)
    {
      *v12.i32 = _D0;
    }

    else if (v32 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v74) = _H0;
      LOWORD(v74) = _H0;
      *v12.i32 = v74;
    }

    else
    {
      v12.i32[0] = _D0;
    }

    v34 = *a7;
    _D0 = *(*a7 + 24) ? *v34 : NAN;
    v36 = HIDWORD(v14);
    v37 = *(v34 + 16);
    if (v37 == 2)
    {
      v38 = _D0;
    }

    else if (v37 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v74) = _H0;
      LOWORD(v74) = _H0;
      v38 = v74;
    }

    else
    {
      LODWORD(v38) = _D0;
    }

    v40 = a3[13];
    if (a3[14] + v40 < v36)
    {
      v42 = v20;
      v43 = v38;
      v44 = a3[7] * *(a2 + 60);
      v45.i64[0] = __PAIR64__(LODWORD(v38), v20);
      v45.i64[1] = __PAIR64__(LODWORD(v38), v20);
      *(&v20 + 1) = v38;
      v66 = vdupq_n_s32(v12.u32[0]);
      do
      {
        v67 = v21;
        v68 = v45;
        v69 = v19;
        v70 = v20;
        v72 = v44 + v40;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v71);
        if (a9 >= 4)
        {
          v50 = 0;
          v51 = v71[0];
          v52 = (v73 + v71[0]);
          v53 = a11;
          v45 = v68;
          do
          {
            v54 = *v51++;
            v46.i64[0] = v54;
            v55 = *v52++;
            v47.i64[0] = v55;
            v56 = vzip1q_s8(v46, v47);
            v21 = vzip2q_s32(v56, v66);
            v46 = vzip1q_s32(v56, v66);
            v47 = v68;
            v49 = v53 + 16;
            vst2q_f32(v53, *v46.i8);
            v57 = v53 + 8;
            vst2q_f32(v57, *v21.i8);
            v48 = v50 + 4;
            v58 = v50 + 8;
            v50 += 4;
            v53 = v49;
          }

          while (v58 <= a9);
        }

        else
        {
          v48 = 0;
          v49 = a11;
          v21 = v67;
          v45 = v68;
        }

        v19 = v69;
        v20 = v70;
        if (v48 >= a9)
        {
          v61 = v48;
        }

        else
        {
          v59 = 2 * v48;
          do
          {
            v46.i8[0] = *(v59 + v71[0]);
            v60 = (v59 + v73 + v71[0]);
            v46.i8[4] = *(v59 + v71[0] + 1);
            v46.i8[1] = *v60;
            v46.i8[2] = v46.i8[4];
            v46.i8[3] = v60[1];
            v19.val[0] = vzip1_s32(*v46.i8, v12);
            vst2_f32(v49, v19);
            v49 += 4;
            v61 = v48 + 1;
            v59 += 2;
            v62 = v48 + 2;
            ++v48;
          }

          while (v62 <= a9);
        }

        v63 = a9 - v61;
        if (a9 > v61)
        {
          v64 = 2 * v61;
          do
          {
            v65 = (v64 + v73 + v71[0]);
            v46.i32[0] = *(v64 + v71[0]);
            v46.i8[4] = *(v64 + v71[0] + 1);
            v47.i32[0] = *v65;
            v47.i8[4] = v65[1];
            v46.i32[0] = vmovn_s16(vtrn1q_s16(v46, v47)).u32[0];
            v46.i32[1] = v42;
            v46.i64[1] = __PAIR64__(LODWORD(v43), v12.u32[0]);
            *v49 = v46;
            v49 += 4;
            v64 += 2;
            --v63;
          }

          while (v63);
        }

        a11 = (a11 + a12);
        v40 += a10;
      }

      while (v40 + a3[14] < v36);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    v17 = *a4;
    if (*(*a4 + 24))
    {
      _D0 = *v17;
    }

    else
    {
      _D0 = NAN;
    }

    v19 = *(v17 + 16);
    if (v19 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v19 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v68[0]) = _H0;
      LOWORD(v68[0]) = _H0;
      LODWORD(_D0) = v68[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v66 = *&_D0;
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v68, result, a2, a5, a3);
    v28 = *a6;
    if (*(*a6 + 24))
    {
      _D0 = *v28;
    }

    else
    {
      _D0 = NAN;
    }

    v30 = *(v28 + 16);
    if (v30 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v30 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v71) = _H0;
      LOWORD(v71) = _H0;
      LODWORD(_D0) = v71;
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v32 = *a7;
    if (*(*a7 + 24))
    {
      _D1 = *v32;
    }

    else
    {
      _D1 = NAN;
    }

    v34 = HIDWORD(v13);
    v35 = *(v32 + 16);
    if (v35 == 2)
    {
      *&_D1 = _D1;
    }

    else if (v35 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v71) = _H1;
      LOWORD(v71) = _H1;
      LODWORD(_D1) = v71;
    }

    else
    {
      LODWORD(_D1) = _D1;
      if (v35)
      {
        *&_D1 = *&_D0;
      }
    }

    v37 = a3[13];
    if (a3[14] + v37 < v34)
    {
      v39 = a3[7] * *(a2 + 60);
      v40 = vdupq_n_s16(v66.u32[0]);
      HIDWORD(_D0) = LODWORD(_D1);
      v41 = vdupq_lane_s16(*&_D0, 0);
      v42 = vqtbl2q_s8(*(&v40 - 1), xmmword_296B8F160);
      v43 = vdup_lane_s32(*&_D1, 0);
      v44 = vqtbl2q_s8(*(&v40 - 1), xmmword_296B8F170);
      v26.val[0].i16[0] = v66.i16[0];
      v26.val[0].i16[1] = LOWORD(_D0);
      v26.val[0].i16[2] = v66.i16[0];
      v26.val[0].i16[3] = LOWORD(_D0);
      v45 = vuzp1_s16(*&_D0, *&_D0);
      v59 = vdupq_lane_s16(*&_D0, 2);
      do
      {
        v60 = v26;
        v61 = v27;
        v62 = v44;
        v63 = v40;
        v64 = v42;
        v65 = v25;
        v69 = v39 + v37;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v68);
        if (a9 >= 8)
        {
          v50 = 0;
          v51 = v68[0];
          v52 = v70 + v68[0];
          v53 = a11;
          v42 = v64;
          v44 = v62;
          do
          {
            v46.i64[0] = *(v51 + v50);
            v47.i64[0] = *(v52 + v50);
            v46 = vzip1q_s8(v46, v47);
            v40 = vzip1q_s16(v46, v59);
            v49 = v53 + 32;
            vst2q_s16(v53, *v44.i8);
            v54 = v53 + 16;
            v25 = vzip2q_s16(v46, v59);
            vst2q_s16(v54, *(&v25 - 1));
            v48 = v50 + 8;
            v55 = v50 + 16;
            v50 += 8;
            v53 = v49;
          }

          while (v55 <= a9);
        }

        else
        {
          v48 = 0;
          v49 = a11;
          v42 = v64;
          v25 = v65;
          v44 = v62;
          v40 = v63;
        }

        v26 = v60;
        v27 = v61;
        if ((v48 | 2) <= a9)
        {
          do
          {
            v56 = (v48 + v70 + v68[0]);
            v46.i32[0] = *(v48 + v68[0]);
            v46.i8[4] = *(v48 + v68[0] + 1);
            v47.i32[0] = *v56;
            v47.i8[4] = v56[1];
            v46 = vtrn1q_s16(v46, v47);
            *v46.i8 = vmovn_s16(v46);
            v46.i16[2] = v46.i16[1];
            *&v27 = vtrn1_s16(*v46.i8, v43);
            vst2_s16(v49, v26);
            v49 += 8;
            v57 = v48 + 4;
            v48 += 2;
          }

          while (v57 <= a9);
        }

        if (v48 < a9)
        {
          do
          {
            LOBYTE(v67) = *(v48 + v68[0]);
            HIBYTE(v67) = *(v48 + v70 + v68[0]);
            v58 = v66;
            v58.i16[1] = v67;
            *v49 = vzip1_s32(v58, v45);
            v49 += 4;
            ++v48;
          }

          while (a9 != v48);
        }

        a11 = (a11 + a12);
        v37 += a10;
      }

      while (v37 + a3[14] < v34);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, __n128 _Q0, uint64_t a9, unint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  v15 = *(a2 + 56);
  if (v15)
  {
    v19 = *a4;
    _Q0.n128_u64[0] = *(*a4 + 24) ? *v19 : 0x7FF8000000000000;
    v20 = *(v19 + 16);
    if (v20 == 2)
    {
      _Q0.n128_f32[0] = _Q0.n128_f64[0];
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v72[0]) = _H0;
      LOWORD(v72[0]) = _H0;
      _Q0.n128_u32[0] = v72[0];
    }

    else
    {
      _Q0.n128_u32[0] = _Q0.n128_f64[0];
    }

    v71 = _Q0;
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v72, result, a2, a5, a3);
    v28 = *a6;
    _D0 = *(*a6 + 24) ? *v28 : NAN;
    v30 = *(v28 + 16);
    if (v30 == 2)
    {
      v31 = _D0;
    }

    else if (v30 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v75) = _H0;
      LOWORD(v75) = _H0;
      v31 = v75;
    }

    else
    {
      LODWORD(v31) = _D0;
    }

    v33 = *a7;
    _D1 = *(*a7 + 24) ? *v33 : NAN;
    v35 = HIDWORD(v15);
    v36 = *(v33 + 16);
    if (v36 == 2)
    {
      *v13.i32 = _D1;
    }

    else if (v36 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v75) = _H1;
      LOWORD(v75) = _H1;
      *v13.i32 = v75;
    }

    else
    {
      LODWORD(v37) = _D1;
      *v13.i32 = v36 ? v31 : v37;
    }

    v39 = a3[13];
    if (a3[14] + v39 < v35)
    {
      v41 = v31;
      v42.i64[0] = __PAIR64__(LODWORD(v31), v71.n128_u32[0]);
      v42.i64[1] = __PAIR64__(LODWORD(v31), v71.n128_u32[0]);
      v43 = a3[7] * *(a2 + 60);
      v44 = v71;
      v44.n128_f32[1] = v31;
      v66 = vdupq_n_s32(v13.u32[0]);
      do
      {
        v67 = v44;
        v68 = v27;
        v69 = v42;
        v70 = v26;
        v73 = v43 + v39;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v72);
        if (a10 >= 4)
        {
          v49 = 0;
          v50 = v72[0];
          v51 = (v74 + v72[0]);
          v52 = a12;
          v42 = v69;
          do
          {
            v53 = *v50++;
            v45.i64[0] = v53;
            v54 = *v51++;
            v46.i64[0] = v54;
            v45 = vzip1q_s8(v45, v46);
            v55 = vzip1q_s32(v45, v66);
            v26 = vzip2q_s32(v45, v66);
            v48 = v52 + 16;
            v46 = v69;
            vst2q_f32(v52, *v46.i8);
            v56 = v52 + 8;
            vst2q_f32(v56, *(&v26 - 1));
            v47 = v49 + 4;
            v57 = v49 + 8;
            v49 += 4;
            v52 = v48;
          }

          while (v57 <= a10);
        }

        else
        {
          v47 = 0;
          v48 = a12;
          v42 = v69;
          v26 = v70;
        }

        v44 = v67;
        v27 = v68;
        if (v47 >= a10)
        {
          v61 = v47;
          v59 = v71.n128_u32[0];
        }

        else
        {
          v58 = 2 * v47;
          v59 = v71.n128_u32[0];
          do
          {
            v45.i8[0] = *(v58 + v72[0]);
            v60 = (v58 + v74 + v72[0]);
            v45.i8[4] = *(v58 + v72[0] + 1);
            v45.i8[1] = *v60;
            v45.i8[2] = v45.i8[4];
            v45.i8[3] = v60[1];
            *&v27 = vzip1_s32(*v45.i8, v13);
            vst2_f32(v48, *(&v27 - 8));
            v48 += 4;
            v61 = v47 + 1;
            v58 += 2;
            v62 = v47 + 2;
            ++v47;
          }

          while (v62 <= a10);
        }

        v63 = a10 - v61;
        if (a10 > v61)
        {
          v64 = 2 * v61;
          do
          {
            v65 = (v64 + v74 + v72[0]);
            v45.i32[0] = *(v64 + v72[0]);
            v45.i8[4] = *(v64 + v72[0] + 1);
            v46.i32[0] = *v65;
            v46.i8[4] = v65[1];
            v45 = vtrn1q_s16(v45, v46);
            *v45.i8 = vmovn_s16(v45);
            v46.i64[0] = __PAIR64__(v45.u32[0], v59);
            v46.i64[1] = __PAIR64__(v13.u32[0], LODWORD(v41));
            *v48 = v46;
            v48 += 4;
            v64 += 2;
            --v63;
          }

          while (v63);
        }

        a12 = (a12 + a13);
        v39 += a11;
      }

      while (v39 + a3[14] < v35);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v62, result, a2, a4, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v59, v18, a2, a5, a3);
    v19 = *a6;
    if (*(*a6 + 24))
    {
      _D0 = *v19;
    }

    else
    {
      _D0 = NAN;
    }

    v21 = *(v19 + 16);
    if (v21 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v21 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v65) = _H0;
      LOWORD(v65) = _H0;
      LODWORD(_D0) = v65;
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v27 = *a7;
    if (*(*a7 + 24))
    {
      _D1 = *v27;
    }

    else
    {
      _D1 = NAN;
    }

    v29 = HIDWORD(v12);
    v30 = *(v27 + 16);
    if (v30 == 2)
    {
      *&_D1 = _D1;
    }

    else if (v30 == 1)
    {
      __asm { FCVT            H1, D1 }

      HIWORD(v65) = _H1;
      LOWORD(v65) = _H1;
      LODWORD(_D1) = v65;
    }

    else
    {
      LODWORD(_D1) = _D1;
      if (v30)
      {
        *&_D1 = *&_D0;
      }
    }

    v32 = a3[13];
    if (a3[14] + v32 < v29)
    {
      v34 = a3[7] * *(a2 + 60);
      v35 = vdup_lane_s32(*&_D0, 0);
      v36 = vdup_lane_s32(*&_D1, 0);
      v37 = vuzp1_s16(__PAIR64__(LODWORD(_D1), LODWORD(_D0)), *&_D0);
      v55 = vdupq_lane_s16(__PAIR64__(LODWORD(_D1), LODWORD(_D0)), 2);
      v56 = vdupq_lane_s16(__PAIR64__(LODWORD(_D1), LODWORD(_D0)), 0);
      do
      {
        v63 = v34 + v32;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v62);
        v60 = v34 + v32;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v59);
        if (a9 >= 8)
        {
          v43 = 0;
          v44 = v62[0];
          v45 = v59[0];
          v46 = v64 + v62[0];
          v47 = v61 + v59[0];
          v48 = a11;
          do
          {
            v38.i64[0] = *(v44 + v43);
            v39.i64[0] = *(v46 + v43);
            v40.i64[0] = *(v45 + v43);
            v38 = vzip1q_s8(v38, v39);
            v39.i64[0] = *(v47 + v43);
            v39 = vzip1q_s8(v40, v39);
            v66.val[0] = vzip1q_s16(v38, v56);
            v66.val[1] = vzip1q_s16(v39, v55);
            v42 = v48 + 32;
            vst2q_s16(v48, v66);
            v49 = v48 + 16;
            v40 = vzip2q_s16(v38, v56);
            v66.val[1] = vzip2q_s16(v39, v55);
            vst2q_s16(v49, *v40.i8);
            v41 = v43 + 8;
            v50 = v43 + 16;
            v43 += 8;
            v48 = v42;
          }

          while (v50 <= a9);
        }

        else
        {
          v41 = 0;
          v42 = a11;
        }

        v51 = v41 | 2;
        while (v51 <= a9)
        {
          v52 = (v41 + v64 + v62[0]);
          v38.i32[0] = *(v41 + v62[0]);
          v38.i8[4] = *(v41 + v62[0] + 1);
          v39.i32[0] = *v52;
          v39.i8[4] = v52[1];
          v38 = vtrn1q_s16(v38, v39);
          *v38.i8 = vmovn_s16(v38);
          v38.i16[2] = v38.i16[1];
          v53 = (v41 + v61 + v59[0]);
          v39.i32[0] = *(v41 + v59[0]);
          v39.i8[4] = *(v41 + v59[0] + 1);
          v40.i32[0] = *v53;
          v40.i8[4] = v53[1];
          v39 = vtrn1q_s16(v39, v40);
          *v39.i8 = vmovn_s16(v39);
          v39.i16[2] = v39.i16[1];
          *v40.i8 = vtrn1_s16(*v38.i8, v35);
          v54 = vtrn1_s16(*v39.i8, v36);
          vst2_s16(v42, v40);
          v42 += 8;
          v51 = v41 + 4;
          v41 += 2;
        }

        if (v41 < a9)
        {
          do
          {
            LOBYTE(v58) = *(v41 + v62[0]);
            HIBYTE(v58) = *(v41 + v64 + v62[0]);
            LOBYTE(v57) = *(v41 + v59[0]);
            HIBYTE(v57) = *(v41 + v61 + v59[0]);
            v38.i16[0] = v58;
            v38.i16[1] = v57;
            *v38.i8 = vzip1_s32(*v38.i8, v37);
            *v42 = v38.i64[0];
            v42 += 4;
            ++v41;
          }

          while (a9 != v41);
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[14] < v29);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v14 = *(a2 + 56);
  if (v14)
  {
    v20 = result;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v69, result, a2, a4, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v66, v20, a2, a5, a3);
    v21 = *a6;
    _D0 = *(*a6 + 24) ? *v21 : NAN;
    v23 = *(v21 + 16);
    if (v23 == 2)
    {
      *v12.i32 = _D0;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v72) = _H0;
      LOWORD(v72) = _H0;
      v12.i32[0] = v72;
    }

    else
    {
      v12.i32[0] = _D0;
    }

    v29 = *a7;
    _D0 = *(*a7 + 24) ? *v29 : NAN;
    v31 = HIDWORD(v14);
    v32 = *(v29 + 16);
    if (v32 == 2)
    {
      *v13.i32 = _D0;
    }

    else if (v32 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v72) = _H0;
      LOWORD(v72) = _H0;
      v13.i32[0] = v72;
    }

    else
    {
      v13.i32[0] = _D0;
    }

    v34 = a3[13];
    if (a3[14] + v34 < v31)
    {
      v36 = a3[7] * *(a2 + 60);
      v64 = vdupq_n_s32(v13.u32[0]);
      v65 = vdupq_n_s32(v12.u32[0]);
      do
      {
        v70 = v36 + v34;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v69);
        v67 = v36 + v34;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v66);
        if (a9 >= 4)
        {
          v42 = 0;
          v43 = v69[0];
          v44 = v66[0];
          v45 = (v68 + v66[0]);
          v46 = (v71 + v69[0]);
          v47 = a11;
          do
          {
            v48 = *v43++;
            v37.i64[0] = v48;
            v49 = *v46++;
            v38.i64[0] = v49;
            v50 = *v44++;
            v39.i64[0] = v50;
            v37 = vzip1q_s8(v37, v38);
            v51 = *v45++;
            v38.i64[0] = v51;
            v38 = vzip1q_s8(v39, v38);
            v74.val[0] = vzip1q_s32(v37, v65);
            v74.val[1] = vzip1q_s32(v38, v64);
            v41 = v47 + 16;
            vst2q_f32(v47, v74);
            v52 = v47 + 8;
            v39 = vzip2q_s32(v37, v65);
            v74.val[1] = vzip2q_s32(v38, v64);
            vst2q_f32(v52, *v39.i8);
            v40 = v42 + 4;
            v53 = v42 + 8;
            v42 += 4;
            v47 = v41;
          }

          while (v53 <= a9);
        }

        else
        {
          v40 = 0;
          v41 = a11;
        }

        if (v40 >= a9)
        {
          v57 = v40;
        }

        else
        {
          v54 = 2 * v40;
          do
          {
            v37.i8[0] = *(v54 + v69[0]);
            v37.i8[4] = *(v54 + v69[0] + 1);
            v38.i8[0] = *(v54 + v66[0]);
            v38.i8[4] = *(v54 + v66[0] + 1);
            v55 = (v54 + v71 + v69[0]);
            v37.i8[1] = *v55;
            v56 = (v54 + v68 + v66[0]);
            v37.i8[2] = v37.i8[4];
            v38.i8[1] = *v56;
            v37.i8[3] = v55[1];
            v38.i8[2] = v38.i8[4];
            v38.i8[3] = v56[1];
            v73.val[0] = vzip1_s32(*v37.i8, v12);
            v73.val[1] = vzip1_s32(*v38.i8, v13);
            vst2_f32(v41, v73);
            v41 += 4;
            v57 = v40 + 1;
            v54 += 2;
            v58 = v40 + 2;
            ++v40;
          }

          while (v58 <= a9);
        }

        v59 = a9 - v57;
        if (a9 > v57)
        {
          v60 = 2 * v57;
          do
          {
            v61 = (v60 + v71 + v69[0]);
            v37.i32[0] = *(v60 + v69[0]);
            v37.i8[4] = *(v60 + v69[0] + 1);
            v38.i32[0] = *v61;
            v38.i8[4] = v61[1];
            v62 = (v60 + v68 + v66[0]);
            v39.i32[0] = *(v60 + v66[0]);
            v63 = vtrn1q_s16(v37, v38);
            v39.i8[4] = *(v60 + v66[0] + 1);
            v38.i32[0] = *v62;
            v38.i8[4] = v62[1];
            v37.i32[0] = vmovn_s16(v63).u32[0];
            v38 = vtrn1q_s16(v39, v38);
            *v38.i8 = vmovn_s16(v38);
            v37.i32[1] = v38.i32[0];
            v37.i64[1] = __PAIR64__(v13.u32[0], v12.u32[0]);
            *v41 = v37;
            v41 += 4;
            v60 += 2;
            --v59;
          }

          while (v59);
        }

        a11 = (a11 + a12);
        v34 += a10;
      }

      while (v34 + a3[14] < v31);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, __n128 _Q0, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v14 = *(a2 + 56);
  if (v14)
  {
    v17 = *a4;
    _Q0.n128_u64[0] = *(*a4 + 24) ? *v17 : 0x7FF8000000000000;
    v18 = *(v17 + 16);
    if (v18 == 2)
    {
      _Q0.n128_f32[0] = _Q0.n128_f64[0];
    }

    else if (v18 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v72[0]) = _H0;
      LOWORD(v72[0]) = _H0;
      _Q0.n128_u32[0] = v72[0];
    }

    else
    {
      _Q0.n128_u32[0] = _Q0.n128_f64[0];
    }

    v68 = _Q0;
    v24 = *a5;
    _D0 = *(*a5 + 24) ? *v24 : NAN;
    v26 = *(v24 + 16);
    if (v26 == 2)
    {
      v27 = _D0;
    }

    else if (v26 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v72[0]) = _H0;
      LOWORD(v72[0]) = _H0;
      v27 = *v72;
    }

    else
    {
      LODWORD(v27) = _D0;
    }

    v65 = v27;
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v72, result, a2, a6, a3);
    v32 = *a7;
    _D0 = *(*a7 + 24) ? *v32 : NAN;
    v34 = HIDWORD(v14);
    v35 = *(v32 + 16);
    if (v35 == 2)
    {
      *&v36 = _D0;
    }

    else if (v35 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v75) = _H0;
      LOWORD(v75) = _H0;
      v36 = v75;
    }

    else
    {
      v36 = _D0;
    }

    v38 = a3[13];
    if (a3[14] + v38 < v34)
    {
      v40 = v68;
      v41 = vdupq_lane_s16(__PAIR64__(LODWORD(v65), v68.n128_u32[0]), 2);
      v42 = a3[7] * *(a2 + 60);
      v43 = v36;
      v44 = vdupq_n_s16(v36);
      v45 = vdup_lane_s32(v68.n128_u64[0], 0);
      v46 = vzip2q_s16(v41, v44);
      LOWORD(v30) = LOWORD(v65);
      WORD1(v30) = v43;
      WORD2(v30) = LOWORD(v65);
      v47 = vzip1q_s16(v41, v44);
      WORD3(v30) = v43;
      v61 = vdupq_lane_s16(__PAIR64__(LODWORD(v65), v68.n128_u32[0]), 0);
      v62 = vuzp1_s16(__PAIR64__(LODWORD(v65), v68.n128_u32[0]), *v44.i8).u32[0];
      do
      {
        v63 = v31;
        v64 = v47;
        v66 = v29;
        v67 = v30;
        v69 = v40;
        v70 = v46;
        v73 = v42 + v38;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v72);
        if (a10 >= 8)
        {
          v52 = 0;
          v53 = v72[0];
          v54 = v74 + v72[0];
          v55 = a12;
          v46 = v70;
          v47 = v64;
          do
          {
            v48.i64[0] = *(v53 + v52);
            v49.i64[0] = *(v54 + v52);
            v48 = vzip1q_s8(v48, v49);
            v31 = vzip1q_s16(v61, v48);
            v51 = v55 + 32;
            vst2q_s16(v55, *v31.i8);
            v56 = v55 + 16;
            v40 = vzip2q_s16(v61, v48);
            vst2q_s16(v56, *v40.i8);
            v50 = v52 + 8;
            v57 = v52 + 16;
            v52 += 8;
            v55 = v51;
          }

          while (v57 <= a10);
        }

        else
        {
          v50 = 0;
          v51 = a12;
          v40 = v69;
          v46 = v70;
          v31 = v63;
          v47 = v64;
        }

        v29 = v66;
        v30 = v67;
        if ((v50 | 2) <= a10)
        {
          do
          {
            v58 = (v50 + v74 + v72[0]);
            v48.i32[0] = *(v50 + v72[0]);
            v48.i8[4] = *(v50 + v72[0] + 1);
            v49.i32[0] = *v58;
            v49.i8[4] = v58[1];
            v48 = vtrn1q_s16(v48, v49);
            *v48.i8 = vmovn_s16(v48);
            v48.i16[2] = v48.i16[1];
            v29.val[0] = vtrn1_s16(v45, *v48.i8);
            vst2_s16(v51, v29);
            v51 += 8;
            v59 = v50 + 4;
            v50 += 2;
          }

          while (v59 <= a10);
        }

        if (v50 < a10)
        {
          do
          {
            LOBYTE(v71) = *(v50 + v72[0]);
            HIBYTE(v71) = *(v50 + v74 + v72[0]);
            LODWORD(v60) = v62;
            WORD2(v60) = v71;
            HIWORD(v60) = v43;
            *v51 = v60;
            v51 += 4;
            ++v50;
          }

          while (a10 != v50);
        }

        a12 = (a12 + a13);
        v38 += a11;
      }

      while (v38 + a3[14] < v34);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, __n128 _Q0, __n128 a9, uint64_t a10, unint64_t a11, unsigned int a12, float *a13, uint64_t a14)
{
  v15 = *(a2 + 56);
  if (v15)
  {
    v18 = *a4;
    _D0 = *(*a4 + 24) ? *v18 : NAN;
    v20 = *(v18 + 16);
    if (v20 == 2)
    {
      a9.n128_f32[0] = _D0;
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v71[0]) = _H0;
      LOWORD(v71[0]) = _H0;
      a9.n128_u32[0] = v71[0];
    }

    else
    {
      a9.n128_u32[0] = _D0;
    }

    v26 = *a5;
    _Q0.n128_u64[0] = *(*a5 + 24) ? *v26 : 0x7FF8000000000000;
    v27 = *(v26 + 16);
    v66 = a9.n128_u64[0];
    if (v27 == 2)
    {
      a9.n128_f32[0] = _Q0.n128_f64[0];
    }

    else if (v27 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v71[0]) = _Q0.n128_u16[0];
      LOWORD(v71[0]) = _Q0.n128_u16[0];
      a9.n128_u32[0] = v71[0];
    }

    else
    {
      _Q0.n128_u32[0] = _Q0.n128_f64[0];
      a9.n128_f32[0] = _Q0.n128_f32[0];
    }

    v67 = _Q0;
    v69 = a9;
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v71, result, a2, a6, a3);
    v29 = *a7;
    _D0 = *(*a7 + 24) ? *v29 : NAN;
    v31 = HIDWORD(v15);
    v32 = *(v29 + 16);
    v33 = v67;
    v34 = v69;
    if (v32 == 2)
    {
      v35 = _D0;
    }

    else if (v32 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v74) = _H0;
      LOWORD(v74) = _H0;
      v35 = v74;
    }

    else
    {
      LODWORD(v35) = _D0;
    }

    v37 = a3[13];
    if (a3[14] + v37 < v31)
    {
      v39 = v35;
      v40.i64[0] = __PAIR64__(LODWORD(v35), v69.n128_u32[0]);
      v40.i64[1] = __PAIR64__(LODWORD(v35), v69.n128_u32[0]);
      v41 = a3[7] * *(a2 + 60);
      v34.n128_f32[1] = v35;
      v62 = vdupq_n_s32(v66.u32[0]);
      v63 = __PAIR64__(v69.n128_u32[0], v66.u32[0]);
      do
      {
        v64 = v28;
        v65 = v40;
        v68 = v33;
        v70 = v34;
        v72 = v41 + v37;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v71);
        if (a11 >= 4)
        {
          v46 = 0;
          v47 = v71[0];
          v48 = (v73 + v71[0]);
          v49 = a13;
          v40 = v65;
          do
          {
            v50 = *v47++;
            v42.i64[0] = v50;
            v51 = *v48++;
            v43.i64[0] = v51;
            v52 = vzip1q_s8(v42, v43);
            v28 = vzip2q_s32(v62, v52);
            v42 = vzip1q_s32(v62, v52);
            v43 = v65;
            v45 = v49 + 16;
            vst2q_f32(v49, *v42.i8);
            v53 = v49 + 8;
            vst2q_f32(v53, *v28.i8);
            v44 = v46 + 4;
            v54 = v46 + 8;
            v46 += 4;
            v49 = v45;
          }

          while (v54 <= a11);
        }

        else
        {
          v44 = 0;
          v45 = a13;
          v28 = v64;
          v40 = v65;
        }

        v33 = v68;
        v34 = v70;
        if (v44 >= a11)
        {
          v57 = v44;
        }

        else
        {
          v55 = 2 * v44;
          do
          {
            v42.i8[0] = *(v55 + v71[0]);
            v56 = (v55 + v73 + v71[0]);
            v42.i8[4] = *(v55 + v71[0] + 1);
            v42.i8[1] = *v56;
            v42.i8[2] = v42.i8[4];
            v42.i8[3] = v56[1];
            v33.val[0] = vzip1_s32(v66, *v42.i8);
            vst2_f32(v45, v33);
            v45 += 4;
            v57 = v44 + 1;
            v55 += 2;
            v58 = v44 + 2;
            ++v44;
          }

          while (v58 <= a11);
        }

        v59 = a11 - v57;
        if (a11 > v57)
        {
          v60 = 2 * v57;
          do
          {
            v61 = (v60 + v73 + v71[0]);
            v42.i32[0] = *(v60 + v71[0]);
            v42.i8[4] = *(v60 + v71[0] + 1);
            v43.i32[0] = *v61;
            v43.i8[4] = v61[1];
            v42 = vtrn1q_s16(v42, v43);
            *v42.i8 = vmovn_s16(v42);
            v43.i64[0] = v63;
            v43.i64[1] = __PAIR64__(LODWORD(v39), v42.u32[0]);
            *v45 = v43;
            v45 += 4;
            v60 += 2;
            --v59;
          }

          while (v59);
        }

        a13 = (a13 + a14);
        v37 += a12;
      }

      while (v37 + a3[14] < v31);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v71, result, a2, a4, a3);
    v21 = *a5;
    _Q0.val[0] = *(*a5 + 24) ? *v21 : 0x7FF8000000000000;
    v22 = *(v21 + 16);
    if (v22 == 2)
    {
      *&v20 = *_Q0.val[0].i32;
    }

    else if (v22 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v68[0]) = _Q0.val[0].i16[0];
      LOWORD(v68[0]) = _Q0.val[0].i16[0];
      LODWORD(v20) = v68[0];
    }

    else
    {
      _Q0.val[0].i32[0] = *_Q0.val;
      *&v20 = *_Q0.val[0].i32;
    }

    v62 = _Q0;
    v64 = v20;
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v68, v18, a2, a6, a3);
    v28 = *a7;
    _D0 = *(*a7 + 24) ? *v28 : NAN;
    v30 = *(v28 + 16);
    v31 = v62;
    v32 = v64;
    if (v30 == 2)
    {
      *&v33 = _D0;
    }

    else if (v30 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v74) = _H0;
      LOWORD(v74) = _H0;
      v33 = v74;
    }

    else
    {
      v33 = _D0;
    }

    v35 = a3[13];
    if (a3[14] + v35 < HIDWORD(v12))
    {
      v59 = a3[7] * *(a2 + 60);
      v37 = v64;
      v38 = v33;
      v75.val[1] = vdupq_n_s16(v33);
      v75.val[0] = vdupq_n_s16(v64);
      WORD1(v32) = v38;
      WORD2(v32) = v64;
      v39 = vqtbl2q_s8(v75, xmmword_296B6EDD0);
      WORD3(v32) = v38;
      do
      {
        v60 = v27;
        v61 = v39;
        v63 = v31;
        v65 = v32;
        v72 = v59 + v35;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v71);
        v69 = v59 + v35;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v68);
        if (a9 >= 8)
        {
          v45 = 0;
          v46 = v71[0];
          v47 = v68[0];
          v48 = v73 + v71[0];
          v49 = v70 + v68[0];
          v50 = a11;
          v39 = v61;
          do
          {
            v40.i64[0] = *(v46 + v45);
            v41.i64[0] = *(v48 + v45);
            v51 = vzip1q_s8(v40, v41);
            v41.i64[0] = *(v47 + v45);
            v42.i64[0] = *(v49 + v45);
            v52 = vzip1q_s8(v41, v42);
            v27 = vzip2q_s16(v51, v52);
            v40 = vzip1q_s16(v51, v52);
            v41 = v61;
            v44 = v50 + 32;
            vst2q_s16(v50, *v40.i8);
            v53 = v50 + 16;
            vst2q_s16(v53, *v27.i8);
            v43 = v45 + 8;
            v54 = v45 + 16;
            v45 += 8;
            v50 = v44;
          }

          while (v54 <= a9);
        }

        else
        {
          v43 = 0;
          v44 = a11;
          v27 = v60;
          v39 = v61;
        }

        v31 = v63;
        v32 = v65;
        if ((v43 | 2) <= a9)
        {
          do
          {
            v55 = (v43 + v73 + v71[0]);
            v40.i32[0] = *(v43 + v71[0]);
            v40.i8[4] = *(v43 + v71[0] + 1);
            v41.i32[0] = *v55;
            v41.i8[4] = v55[1];
            v40 = vtrn1q_s16(v40, v41);
            *v40.i8 = vmovn_s16(v40);
            v40.i16[2] = v40.i16[1];
            v56 = (v43 + v70 + v68[0]);
            v41.i32[0] = *(v43 + v68[0]);
            v41.i8[4] = *(v43 + v68[0] + 1);
            v42.i32[0] = *v56;
            v42.i8[4] = v56[1];
            v41 = vtrn1q_s16(v41, v42);
            *v41.i8 = vmovn_s16(v41);
            v41.i16[2] = v41.i16[1];
            v31.val[0] = vtrn1_s16(*v40.i8, *v41.i8);
            vst2_s16(v44, v31);
            v44 += 8;
            v57 = v43 + 4;
            v43 += 2;
          }

          while (v57 <= a9);
        }

        if (v43 < a9)
        {
          do
          {
            LOBYTE(v67) = *(v43 + v71[0]);
            HIBYTE(v67) = *(v43 + v73 + v71[0]);
            LOBYTE(v66) = *(v43 + v68[0]);
            HIBYTE(v66) = *(v43 + v70 + v68[0]);
            LOWORD(v58) = v67;
            WORD1(v58) = v37;
            WORD2(v58) = v66;
            HIWORD(v58) = v38;
            *v44 = v58;
            v44 += 4;
            ++v43;
          }

          while (a9 != v43);
        }

        a11 = (a11 + a12);
        v35 += a10;
      }

      while (v35 + a3[14] < HIDWORD(v12));
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v80, result, a2, a4, a3);
    v21 = *a5;
    _Q0.val[0] = *(*a5 + 24) ? *v21 : 0x7FF8000000000000;
    v22 = *(v21 + 16);
    if (v22 == 2)
    {
      *&v20 = *_Q0.val;
    }

    else if (v22 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v77[0]) = _Q0.val[0].i16[0];
      LOWORD(v77[0]) = _Q0.val[0].i16[0];
      LODWORD(v20) = v77[0];
    }

    else
    {
      _Q0.val[0].i32[0] = *_Q0.val;
      *&v20 = _Q0.val[0].f32[0];
    }

    v73 = _Q0;
    v75 = v20;
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v77, v18, a2, a6, a3);
    v28 = *a7;
    _D0 = *(*a7 + 24) ? *v28 : NAN;
    v30 = HIDWORD(v12);
    v31 = *(v28 + 16);
    v32 = v73;
    v33 = v75;
    if (v31 == 2)
    {
      v34 = _D0;
    }

    else if (v31 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v83) = _H0;
      LOWORD(v83) = _H0;
      v34 = v83;
    }

    else
    {
      LODWORD(v34) = _D0;
    }

    v36 = a3[13];
    if (a3[14] + v36 < v30)
    {
      v38 = v75;
      v39 = v34;
      v40 = a3[7] * *(a2 + 60);
      v41.i64[0] = __PAIR64__(LODWORD(v34), v75);
      v41.i64[1] = __PAIR64__(LODWORD(v34), v75);
      *(&v33 + 1) = v34;
      do
      {
        v71 = v27;
        v72 = v41;
        v74 = v32;
        v76 = v33;
        v81 = v40 + v36;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v80);
        v78 = v40 + v36;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v77);
        if (a9 >= 4)
        {
          v47 = 0;
          v48 = v80[0];
          v49 = v77[0];
          v50 = (v79 + v77[0]);
          v51 = (v82 + v80[0]);
          v52 = a11;
          v41 = v72;
          do
          {
            v53 = *v48++;
            v42.i64[0] = v53;
            v54 = *v51++;
            v43.i64[0] = v54;
            v55 = vzip1q_s8(v42, v43);
            v56 = *v49++;
            v43.i64[0] = v56;
            v57 = *v50++;
            v44.i64[0] = v57;
            v58 = vzip1q_s8(v43, v44);
            v27 = vzip2q_s32(v55, v58);
            v42 = vzip1q_s32(v55, v58);
            v43 = v72;
            v46 = v52 + 16;
            vst2q_f32(v52, *v42.i8);
            v59 = v52 + 8;
            vst2q_f32(v59, *v27.i8);
            v45 = v47 + 4;
            v60 = v47 + 8;
            v47 += 4;
            v52 = v46;
          }

          while (v60 <= a9);
        }

        else
        {
          v45 = 0;
          v46 = a11;
          v27 = v71;
          v41 = v72;
        }

        v32 = v74;
        v33 = v76;
        if (v45 >= a9)
        {
          v64 = v45;
        }

        else
        {
          v61 = 2 * v45;
          do
          {
            v42.i8[0] = *(v61 + v80[0]);
            v42.i8[4] = *(v61 + v80[0] + 1);
            v43.i8[0] = *(v61 + v77[0]);
            v43.i8[4] = *(v61 + v77[0] + 1);
            v62 = (v61 + v82 + v80[0]);
            v42.i8[1] = *v62;
            v63 = (v61 + v79 + v77[0]);
            v42.i8[2] = v42.i8[4];
            v43.i8[1] = *v63;
            v42.i8[3] = v62[1];
            v43.i8[2] = v43.i8[4];
            v43.i8[3] = v63[1];
            v32.val[0] = vzip1_s32(*v42.i8, *v43.i8);
            vst2_f32(v46, v32);
            v46 += 4;
            v64 = v45 + 1;
            v61 += 2;
            v65 = v45 + 2;
            ++v45;
          }

          while (v65 <= a9);
        }

        v66 = a9 - v64;
        if (a9 > v64)
        {
          v67 = 2 * v64;
          do
          {
            v68 = (v67 + v82 + v80[0]);
            v42.i32[0] = *(v67 + v80[0]);
            v42.i8[4] = *(v67 + v80[0] + 1);
            v43.i32[0] = *v68;
            v43.i8[4] = v68[1];
            v69 = (v67 + v79 + v77[0]);
            v44.i32[0] = *(v67 + v77[0]);
            v70 = vtrn1q_s16(v42, v43);
            v44.i8[4] = *(v67 + v77[0] + 1);
            v43.i32[0] = *v69;
            v43.i8[4] = v69[1];
            v42.i32[0] = vmovn_s16(v70).u32[0];
            v43 = vtrn1q_s16(v44, v43);
            *v43.i8 = vmovn_s16(v43);
            v42.i32[1] = v38;
            v42.i64[1] = __PAIR64__(LODWORD(v39), v43.u32[0]);
            *v46 = v42;
            v46 += 4;
            v67 += 2;
            --v66;
          }

          while (v66);
        }

        a11 = (a11 + a12);
        v36 += a10;
      }

      while (v36 + a3[14] < v30);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v17 = result;
    v18 = *a4;
    _D0 = *(*a4 + 24) ? *v18 : NAN;
    v20 = *(v18 + 16);
    if (v20 == 2)
    {
      v21 = _D0;
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v64[0]) = _H0;
      LOWORD(v64[0]) = _H0;
      v21 = *v64;
    }

    else
    {
      LODWORD(v21) = _D0;
    }

    v58 = LODWORD(v21);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v64, result, a2, a5, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v61, v17, a2, a6, a3);
    v27 = *a7;
    _D0 = *(*a7 + 24) ? *v27 : NAN;
    v29 = *(v27 + 16);
    if (v29 == 2)
    {
      *&v30 = _D0;
    }

    else if (v29 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v67) = _H0;
      LOWORD(v67) = _H0;
      v30 = v67;
    }

    else
    {
      v30 = _D0;
    }

    v32 = a3[13];
    if (a3[14] + v32 < HIDWORD(v12))
    {
      v57 = a3[7] * *(a2 + 60);
      v34 = v30;
      v35 = vdup_n_s32(v58);
      v36 = vdup_n_s32(v30);
      v55 = vdupq_n_s16(v30);
      v56 = vdupq_n_s16(v58);
      do
      {
        v65 = v57 + v32;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v64);
        v62 = v57 + v32;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v61);
        if (a9 >= 8)
        {
          v42 = 0;
          v43 = v64[0];
          v44 = v61[0];
          v45 = v66 + v64[0];
          v46 = v63 + v61[0];
          v47 = a11;
          do
          {
            v37.i64[0] = *(v43 + v42);
            v38.i64[0] = *(v45 + v42);
            v39.i64[0] = *(v44 + v42);
            v37 = vzip1q_s8(v37, v38);
            v38.i64[0] = *(v46 + v42);
            v48 = vzip1q_s8(v39, v38);
            v68.val[0] = vzip1q_s16(v56, v48);
            v68.val[1] = vzip1q_s16(v37, v55);
            v41 = v47 + 32;
            vst2q_s16(v47, v68);
            v49 = v47 + 16;
            v38 = vzip2q_s16(v56, v48);
            v39 = vzip2q_s16(v37, v55);
            vst2q_s16(v49, *v38.i8);
            v40 = v42 + 8;
            v50 = v42 + 16;
            v42 += 8;
            v47 = v41;
          }

          while (v50 <= a9);
        }

        else
        {
          v40 = 0;
          v41 = a11;
        }

        v51 = v40 | 2;
        while (v51 <= a9)
        {
          v52 = (v40 + v66 + v64[0]);
          v37.i32[0] = *(v40 + v64[0]);
          v37.i8[4] = *(v40 + v64[0] + 1);
          v38.i32[0] = *v52;
          v38.i8[4] = v52[1];
          v37 = vtrn1q_s16(v37, v38);
          *v37.i8 = vmovn_s16(v37);
          v37.i16[2] = v37.i16[1];
          v53 = (v40 + v63 + v61[0]);
          v38.i32[0] = *(v40 + v61[0]);
          v38.i8[4] = *(v40 + v61[0] + 1);
          v39.i32[0] = *v53;
          v39.i8[4] = v53[1];
          v38 = vtrn1q_s16(v38, v39);
          *v38.i8 = vmovn_s16(v38);
          v38.i16[2] = v38.i16[1];
          *v38.i8 = vtrn1_s16(v35, *v38.i8);
          *v39.i8 = vtrn1_s16(*v37.i8, v36);
          vst2_s16(v41, v38);
          v41 += 8;
          v51 = v40 + 4;
          v40 += 2;
        }

        if (v40 < a9)
        {
          do
          {
            LOBYTE(v60) = *(v40 + v64[0]);
            HIBYTE(v60) = *(v40 + v66 + v64[0]);
            LOBYTE(v59) = *(v40 + v61[0]);
            HIBYTE(v59) = *(v40 + v63 + v61[0]);
            LOWORD(v54) = v58;
            WORD1(v54) = v60;
            WORD2(v54) = v59;
            HIWORD(v54) = v34;
            *v41 = v54;
            v41 += 4;
            ++v40;
          }

          while (a9 != v40);
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[14] < HIDWORD(v12));
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    v18 = result;
    v19 = *a4;
    _D0 = *(*a4 + 24) ? *v19 : NAN;
    v21 = *(v19 + 16);
    if (v21 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v21 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v68[0]) = _H0;
      LOWORD(v68[0]) = _H0;
      LODWORD(_D0) = v68[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v64 = *&_D0;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v68, result, a2, a5, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v65, v18, a2, a6, a3);
    v27 = *a7;
    _D0 = *(*a7 + 24) ? *v27 : NAN;
    v29 = HIDWORD(v13);
    v30 = *(v27 + 16);
    if (v30 == 2)
    {
      *v12.i32 = _D0;
    }

    else if (v30 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v71) = _H0;
      LOWORD(v71) = _H0;
      v12.i32[0] = v71;
    }

    else
    {
      v12.i32[0] = _D0;
    }

    v32 = a3[13];
    if (a3[14] + v32 < v29)
    {
      v34 = a3[7] * *(a2 + 60);
      v62 = vdupq_n_s32(v12.u32[0]);
      v63 = vdupq_n_s32(v64.u32[0]);
      do
      {
        v69 = v34 + v32;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v68);
        v66 = v34 + v32;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v65);
        if (a9 >= 4)
        {
          v40 = 0;
          v41 = v68[0];
          v42 = v65[0];
          v43 = (v67 + v65[0]);
          v44 = (v70 + v68[0]);
          v45 = a11;
          do
          {
            v46 = *v41++;
            v35.i64[0] = v46;
            v47 = *v44++;
            v36.i64[0] = v47;
            v48 = *v42++;
            v37.i64[0] = v48;
            v35 = vzip1q_s8(v35, v36);
            v49 = *v43++;
            v36.i64[0] = v49;
            v50 = vzip1q_s8(v37, v36);
            v73.val[0] = vzip1q_s32(v63, v50);
            v73.val[1] = vzip1q_s32(v35, v62);
            v39 = v45 + 16;
            vst2q_f32(v45, v73);
            v51 = v45 + 8;
            v36 = vzip2q_s32(v63, v50);
            v37 = vzip2q_s32(v35, v62);
            vst2q_f32(v51, *v36.i8);
            v38 = v40 + 4;
            v52 = v40 + 8;
            v40 += 4;
            v45 = v39;
          }

          while (v52 <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        if (v38 >= a9)
        {
          v56 = v38;
        }

        else
        {
          v53 = 2 * v38;
          do
          {
            v35.i8[0] = *(v53 + v68[0]);
            v35.i8[4] = *(v53 + v68[0] + 1);
            v36.i8[0] = *(v53 + v65[0]);
            v36.i8[4] = *(v53 + v65[0] + 1);
            v54 = (v53 + v70 + v68[0]);
            v35.i8[1] = *v54;
            v55 = (v53 + v67 + v65[0]);
            v35.i8[2] = v35.i8[4];
            v36.i8[1] = *v55;
            v35.i8[3] = v54[1];
            v36.i8[2] = v36.i8[4];
            v36.i8[3] = v55[1];
            v72.val[0] = vzip1_s32(v64, *v36.i8);
            v72.val[1] = vzip1_s32(*v35.i8, v12);
            vst2_f32(v39, v72);
            v39 += 4;
            v56 = v38 + 1;
            v53 += 2;
            v57 = v38 + 2;
            ++v38;
          }

          while (v57 <= a9);
        }

        v58 = a9 - v56;
        if (a9 > v56)
        {
          v59 = 2 * v56;
          do
          {
            v60 = (v59 + v70 + v68[0]);
            v35.i32[0] = *(v59 + v68[0]);
            v35.i8[4] = *(v59 + v68[0] + 1);
            v36.i32[0] = *v60;
            v36.i8[4] = v60[1];
            v35 = vtrn1q_s16(v35, v36);
            v61 = (v59 + v67 + v65[0]);
            v36.i32[0] = *(v59 + v65[0]);
            *v35.i8 = vmovn_s16(v35);
            v36.i8[4] = *(v59 + v65[0] + 1);
            v37.i32[0] = *v61;
            v37.i8[4] = v61[1];
            v36 = vtrn1q_s16(v36, v37);
            *v36.i8 = vmovn_s16(v36);
            v37.i64[0] = __PAIR64__(v35.u32[0], v64.u32[0]);
            v37.i64[1] = __PAIR64__(v12.u32[0], v36.u32[0]);
            *v39 = v37;
            v39 += 4;
            v59 += 2;
            --v58;
          }

          while (v58);
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[14] < v29);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v66, result, a2, a4, a3);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v63, v18, a2, a5, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v60, v18, a2, a6, a3);
    v19 = *a7;
    _D0 = *(*a7 + 24) ? *v19 : NAN;
    v21 = *(v19 + 16);
    if (v21 == 2)
    {
      *&v22 = _D0;
    }

    else if (v21 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v69) = _H0;
      LOWORD(v69) = _H0;
      v22 = v69;
    }

    else
    {
      v22 = _D0;
    }

    v28 = *(a3 + 52);
    if (*(a3 + 56) + v28 < HIDWORD(v12))
    {
      v29 = a3;
      v55 = *(v29 + 28) * *(a2 + 60);
      v31 = v22;
      v32 = vdup_n_s32(v22);
      v56 = v29;
      v54 = vdupq_n_s16(v22);
      do
      {
        v67 = v55 + v28;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v66);
        v64 = v55 + v28;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v63);
        v61 = v55 + v28;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v60);
        if (a9 >= 8)
        {
          v39 = 0;
          v40 = v66[0];
          v41 = v63[0];
          v42 = v60[0];
          v43 = v68 + v66[0];
          v44 = v65 + v63[0];
          v45 = v62 + v60[0];
          v46 = a11;
          do
          {
            v33.i64[0] = *(v40 + v39);
            v34.i64[0] = *(v43 + v39);
            v33 = vzip1q_s8(v33, v34);
            v34.i64[0] = *(v41 + v39);
            v35.i64[0] = *(v44 + v39);
            v36.i64[0] = *(v42 + v39);
            v34 = vzip1q_s8(v34, v35);
            v35.i64[0] = *(v45 + v39);
            v47 = vzip1q_s8(v36, v35);
            v70.val[0] = vzip1q_s16(v33, v47);
            v70.val[1] = vzip1q_s16(v34, v54);
            v38 = v46 + 32;
            vst2q_s16(v46, v70);
            v48 = v46 + 16;
            v35 = vzip2q_s16(v33, v47);
            v36 = vzip2q_s16(v34, v54);
            vst2q_s16(v48, *v35.i8);
            v37 = v39 + 8;
            result = v39 + 16;
            v39 += 8;
            v46 = v38;
          }

          while (result <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        v49 = v37 | 2;
        while (v49 <= a9)
        {
          v50 = (v37 + v68 + v66[0]);
          v33.i32[0] = *(v37 + v66[0]);
          v33.i8[4] = *(v37 + v66[0] + 1);
          v34.i32[0] = *v50;
          v34.i8[4] = v50[1];
          v33 = vtrn1q_s16(v33, v34);
          *v33.i8 = vmovn_s16(v33);
          v33.i16[2] = v33.i16[1];
          v51 = (v37 + v65 + v63[0]);
          v34.i32[0] = *(v37 + v63[0]);
          v34.i8[4] = *(v37 + v63[0] + 1);
          v35.i32[0] = *v51;
          v35.i8[4] = v51[1];
          v34 = vtrn1q_s16(v34, v35);
          *v34.i8 = vmovn_s16(v34);
          v34.i16[2] = v34.i16[1];
          v52 = (v37 + v62 + v60[0]);
          v35.i32[0] = *(v37 + v60[0]);
          v35.i8[4] = *(v37 + v60[0] + 1);
          v36.i32[0] = *v52;
          v36.i8[4] = v52[1];
          v35 = vtrn1q_s16(v35, v36);
          *v35.i8 = vmovn_s16(v35);
          v35.i16[2] = v35.i16[1];
          *v35.i8 = vtrn1_s16(*v33.i8, *v35.i8);
          *v36.i8 = vtrn1_s16(*v34.i8, v32);
          vst2_s16(v38, v35);
          v38 += 8;
          v49 = v37 + 4;
          v37 += 2;
        }

        if (v37 < a9)
        {
          do
          {
            LOBYTE(v59) = *(v37 + v66[0]);
            HIBYTE(v59) = *(v37 + v68 + v66[0]);
            LOBYTE(v58) = *(v37 + v63[0]);
            HIBYTE(v58) = *(v37 + v65 + v63[0]);
            LOBYTE(v57) = *(v37 + v60[0]);
            HIBYTE(v57) = *(v37 + v62 + v60[0]);
            LOWORD(v53) = v59;
            WORD1(v53) = v58;
            WORD2(v53) = v57;
            HIWORD(v53) = v31;
            *v38 = v53;
            v38 += 4;
            ++v37;
          }

          while (a9 != v37);
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + *(v56 + 56) < HIDWORD(v12));
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    v19 = result;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v79, result, a2, a4, a3);
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v76, v19, a2, a5, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v73, v19, a2, a6, a3);
    v20 = *a7;
    _D0 = *(*a7 + 24) ? *v20 : NAN;
    v22 = HIDWORD(v13);
    v23 = *(v20 + 16);
    if (v23 == 2)
    {
      *v12.i32 = _D0;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v82) = _H0;
      LOWORD(v82) = _H0;
      v12.i32[0] = v82;
    }

    else
    {
      v12.i32[0] = _D0;
    }

    v29 = a3[13];
    if (a3[14] + v29 < v22)
    {
      v31 = a3[7] * *(a2 + 60);
      v72 = vdupq_n_s32(v12.u32[0]);
      do
      {
        v80 = v31 + v29;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v79);
        v77 = v31 + v29;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v76);
        v74 = v31 + v29;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v73);
        if (a9 >= 4)
        {
          v39 = 0;
          v40 = v79[0];
          v41 = v76[0];
          v42 = v73[0];
          v43 = (v75 + v73[0]);
          v44 = (v78 + v76[0]);
          v45 = (v81 + v79[0]);
          v46 = a11;
          do
          {
            v47 = *v40++;
            v32.i64[0] = v47;
            v48 = *v45++;
            v33.i64[0] = v48;
            v32 = vzip1q_s8(v32, v33);
            v49 = *v41++;
            v33.i64[0] = v49;
            v50 = *v44++;
            v34.i64[0] = v50;
            v51 = *v42++;
            v35.i64[0] = v51;
            v33 = vzip1q_s8(v33, v34);
            v52 = *v43++;
            v34.i64[0] = v52;
            v53 = vzip1q_s8(v35, v34);
            v54 = vzip1q_s32(v32, v53);
            v36 = vzip1q_s32(v33, v72);
            v38 = v46 + 16;
            vst2q_f32(v46, *(&v36 - 1));
            v55 = v46 + 8;
            v34 = vzip2q_s32(v32, v53);
            v35 = vzip2q_s32(v33, v72);
            vst2q_f32(v55, *v34.i8);
            v37 = v39 + 4;
            result = v39 + 8;
            v39 += 4;
            v46 = v38;
          }

          while (result <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        if (v37 >= a9)
        {
          v63 = v37;
        }

        else
        {
          v56 = 2 * v37;
          do
          {
            v34.i8[0] = *(v56 + v79[0]);
            v57 = (v56 + v81 + v79[0]);
            v58 = *v57;
            v35.i8[0] = *(v56 + v76[0]);
            v34.i8[4] = *(v56 + v79[0] + 1);
            v35.i8[4] = *(v56 + v76[0] + 1);
            v59 = v57[1];
            v60 = (v56 + v78 + v76[0]);
            v61 = v60[1];
            v36.i8[0] = *(v56 + v73[0]);
            v34.i8[1] = v58;
            v36.i8[4] = *(v56 + v73[0] + 1);
            v35.i8[1] = *v60;
            v62 = (v56 + v75 + v73[0]);
            v34.i8[2] = v34.i8[4];
            v35.i8[2] = v35.i8[4];
            v34.i8[3] = v59;
            v36.i8[1] = *v62;
            v36.i8[2] = v36.i8[4];
            v35.i8[3] = v61;
            v36.i8[3] = v62[1];
            v83.val[0] = vzip1_s32(*v34.i8, *v36.i8);
            v83.val[1] = vzip1_s32(*v35.i8, v12);
            vst2_f32(v38, v83);
            v38 += 4;
            v63 = v37 + 1;
            v56 += 2;
            v64 = v37 + 2;
            ++v37;
          }

          while (v64 <= a9);
        }

        v65 = a9 - v63;
        if (a9 > v63)
        {
          v66 = 2 * v63;
          do
          {
            v67 = (v66 + v81 + v79[0]);
            v68 = (v67 + 1);
            v32.i32[0] = *(v66 + v79[0]);
            v32.i8[4] = *(v66 + v79[0] + 1);
            v33.i32[0] = *v67;
            v69 = (v66 + v78 + v76[0]);
            v34.i32[0] = *(v66 + v76[0]);
            v33.i8[4] = *v68;
            v34.i8[4] = *(v66 + v76[0] + 1);
            v35.i32[0] = *v69;
            v35.i8[4] = v69[1];
            v70 = vtrn1q_s16(v32, v33);
            v33 = vtrn1q_s16(v34, v35);
            v71 = (v66 + v75 + v73[0]);
            v34.i32[0] = *(v66 + v73[0]);
            v32.i32[0] = vmovn_s16(v70).u32[0];
            v34.i8[4] = *(v66 + v73[0] + 1);
            v35.i32[0] = *v71;
            v35.i8[4] = v71[1];
            *v33.i8 = vmovn_s16(v33);
            v34 = vtrn1q_s16(v34, v35);
            *v34.i8 = vmovn_s16(v34);
            v32.i32[1] = v33.i32[0];
            v32.i64[1] = __PAIR64__(v12.u32[0], v34.u32[0]);
            *v38 = v32;
            v38 += 4;
            v66 += 2;
            --v65;
          }

          while (v65);
        }

        a11 = (a11 + a12);
        v29 += a10;
      }

      while (v29 + a3[14] < v22);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, __n128 _Q0, double a9, uint64_t a10, unint64_t a11, unsigned int a12, __int16 *a13, uint64_t a14)
{
  v15 = *(a2 + 56);
  if (v15)
  {
    v17 = *a4;
    _D0 = *(*a4 + 24) ? *v17 : NAN;
    v19 = *(v17 + 16);
    if (v19 == 2)
    {
      *&a9 = _D0;
    }

    else if (v19 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v70[0]) = _H0;
      LOWORD(v70[0]) = _H0;
      LODWORD(a9) = v70[0];
    }

    else
    {
      LODWORD(a9) = _D0;
    }

    v25 = *a5;
    _Q0.n128_u64[0] = *(*a5 + 24) ? *v25 : 0x7FF8000000000000;
    v26 = *(v25 + 16);
    if (v26 == 2)
    {
      _Q0.n128_f32[0] = _Q0.n128_f64[0];
    }

    else if (v26 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v70[0]) = _H0;
      LOWORD(v70[0]) = _H0;
      _Q0.n128_u32[0] = v70[0];
    }

    else
    {
      _Q0.n128_u32[0] = _Q0.n128_f64[0];
    }

    v64 = _Q0;
    v28 = *a6;
    _D0 = *(*a6 + 24) ? *v28 : NAN;
    v30 = HIDWORD(v15);
    v31 = *(v28 + 16);
    v67 = a9;
    if (v31 == 2)
    {
      v32 = _D0;
    }

    else if (v31 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v70[0]) = _H0;
      LOWORD(v70[0]) = _H0;
      v32 = *v70;
    }

    else
    {
      LODWORD(v32) = _D0;
    }

    v61 = v32;
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v70, result, a2, a7, a3);
    v37 = a3[13];
    if (a3[14] + v37 < v30)
    {
      v39 = a3[7] * *(a2 + 60);
      v40 = v67;
      v73.val[1] = vdupq_n_s16(LODWORD(v67));
      *(&v44 + 1) = v64.n128_u64[1];
      v73.val[0] = vdupq_lane_s16(__PAIR64__(LODWORD(v61), v64.n128_u32[0]), 2);
      v41 = vqtbl2q_s8(v73, xmmword_296B8F160);
      v42 = vqtbl2q_s8(v73, xmmword_296B8F170);
      v43 = vdup_lane_s32(v64.n128_u64[0], 0);
      LOWORD(v44) = LOWORD(v67);
      WORD1(v44) = LOWORD(v61);
      WORD2(v44) = LOWORD(v67);
      WORD3(v44) = LOWORD(v61);
      WORD1(v40) = v64.n128_u16[0];
      WORD2(v40) = LOWORD(v61);
      v68 = v40;
      v58 = vdupq_lane_s16(__PAIR64__(LODWORD(v61), v64.n128_u32[0]), 0);
      do
      {
        v59 = v44;
        v60 = v36;
        v62 = v42;
        v63 = v35;
        v65 = v41;
        v66 = v34;
        v71 = v39 + v37;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v70);
        if (a11 >= 8)
        {
          v49 = 0;
          v50 = v70[0];
          v51 = v72 + v70[0];
          v52 = a13;
          v41 = v65;
          v42 = v62;
          do
          {
            v45.i64[0] = *(v50 + v49);
            v46.i64[0] = *(v51 + v49);
            v45 = vzip1q_s8(v45, v46);
            v35 = vzip1q_s16(v58, v45);
            v48 = v52 + 32;
            vst2q_s16(v52, *(&v35 - 1));
            v53 = v52 + 16;
            v34 = vzip2q_s16(v58, v45);
            vst2q_s16(v53, *(&v34 - 1));
            v47 = v49 + 8;
            v54 = v49 + 16;
            v49 += 8;
            v52 = v48;
          }

          while (v54 <= a11);
        }

        else
        {
          v47 = 0;
          v48 = a13;
          v41 = v65;
          v34 = v66;
          v42 = v62;
          v35 = v63;
        }

        v44 = v59;
        v36 = v60;
        if ((v47 | 2) <= a11)
        {
          do
          {
            v55 = (v47 + v72 + v70[0]);
            v45.i32[0] = *(v47 + v70[0]);
            v45.i8[4] = *(v47 + v70[0] + 1);
            v46.i32[0] = *v55;
            v46.i8[4] = v55[1];
            v45 = vtrn1q_s16(v45, v46);
            *v45.i8 = vmovn_s16(v45);
            v45.i16[2] = v45.i16[1];
            *&v36 = vtrn1_s16(v43, *v45.i8);
            vst2_s16(v48, *(&v36 - 8));
            v48 += 8;
            v56 = v47 + 4;
            v47 += 2;
          }

          while (v56 <= a11);
        }

        if (v47 < a11)
        {
          do
          {
            LOBYTE(v69) = *(v47 + v70[0]);
            HIBYTE(v69) = *(v47 + v72 + v70[0]);
            v57 = v68;
            HIWORD(v57) = v69;
            *v48 = v57;
            v48 += 4;
            ++v47;
          }

          while (a11 != v47);
        }

        a13 = (a13 + a14);
        v37 += a12;
      }

      while (v37 + a3[14] < v30);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, double a8, __n128 a9, uint64_t a10, unint64_t a11, unsigned int a12, float *a13, uint64_t a14)
{
  v16 = *(a2 + 56);
  if (v16)
  {
    v18 = *a4;
    _D0 = *(*a4 + 24) ? *v18 : NAN;
    v20 = *(v18 + 16);
    if (v20 == 2)
    {
      a9.n128_f32[0] = _D0;
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v73[0]) = _H0;
      LOWORD(v73[0]) = _H0;
      a9.n128_u32[0] = v73[0];
    }

    else
    {
      a9.n128_u32[0] = _D0;
    }

    v26 = *a5;
    _D0 = *(*a5 + 24) ? *v26 : NAN;
    v28 = *(v26 + 16);
    if (v28 == 2)
    {
      *v14.i32 = _D0;
    }

    else if (v28 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v73[0]) = _H0;
      LOWORD(v73[0]) = _H0;
      v14.i32[0] = v73[0];
    }

    else
    {
      v14.i32[0] = _D0;
    }

    v30 = *a6;
    _D0 = *(*a6 + 24) ? *v30 : NAN;
    v32 = HIDWORD(v16);
    v33 = *(v30 + 16);
    v71 = a9;
    if (v33 == 2)
    {
      v34 = _D0;
    }

    else if (v33 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v73[0]) = _H0;
      LOWORD(v73[0]) = _H0;
      v34 = *v73;
    }

    else
    {
      LODWORD(v34) = _D0;
    }

    v68 = v34;
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v73, result, a2, a7, a3);
    v38 = a3[13];
    if (a3[14] + v38 < v32)
    {
      v40 = v71;
      v42.i64[0] = __PAIR64__(LODWORD(v68), v71.n128_u32[0]);
      v41 = a3[7] * *(a2 + 60);
      v42.i64[1] = __PAIR64__(LODWORD(v68), v71.n128_u32[0]);
      v43 = v71;
      v43.n128_f32[1] = v68;
      v40.n128_u32[1] = v14.i32[0];
      v40.n128_f32[2] = v68;
      v72 = v40;
      v65 = vdupq_n_s32(v14.u32[0]);
      do
      {
        v66 = v43;
        v67 = v37;
        v69 = v42;
        v70 = v36;
        v74 = v41 + v38;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v73);
        if (a11 >= 4)
        {
          v48 = 0;
          v49 = v73[0];
          v50 = (v75 + v73[0]);
          v51 = a13;
          v42 = v69;
          do
          {
            v52 = *v49++;
            v44.i64[0] = v52;
            v53 = *v50++;
            v45.i64[0] = v53;
            v44 = vzip1q_s8(v44, v45);
            v54 = vzip1q_s32(v65, v44);
            v36 = vzip2q_s32(v65, v44);
            v47 = v51 + 16;
            v45 = v69;
            vst2q_f32(v51, *v45.i8);
            v55 = v51 + 8;
            vst2q_f32(v55, *(&v36 - 1));
            v46 = v48 + 4;
            v56 = v48 + 8;
            v48 += 4;
            v51 = v47;
          }

          while (v56 <= a11);
        }

        else
        {
          v46 = 0;
          v47 = a13;
          v42 = v69;
          v36 = v70;
        }

        v43 = v66;
        v37 = v67;
        if (v46 >= a11)
        {
          v60 = v46;
          v58 = v72;
        }

        else
        {
          v57 = 2 * v46;
          v58 = v72;
          do
          {
            v44.i8[0] = *(v57 + v73[0]);
            v59 = (v57 + v75 + v73[0]);
            v44.i8[4] = *(v57 + v73[0] + 1);
            v44.i8[1] = *v59;
            v44.i8[2] = v44.i8[4];
            v44.i8[3] = v59[1];
            *&v37 = vzip1_s32(v14, *v44.i8);
            vst2_f32(v47, *(&v37 - 8));
            v47 += 4;
            v60 = v46 + 1;
            v57 += 2;
            v61 = v46 + 2;
            ++v46;
          }

          while (v61 <= a11);
        }

        v62 = a11 - v60;
        if (a11 > v60)
        {
          v63 = 2 * v60;
          do
          {
            v64 = (v63 + v75 + v73[0]);
            v44.i32[0] = *(v63 + v73[0]);
            v44.i8[4] = *(v63 + v73[0] + 1);
            v45.i32[0] = *v64;
            v45.i8[4] = v64[1];
            v44 = vtrn1q_s16(v44, v45);
            *v44.i8 = vmovn_s16(v44);
            v45 = v58;
            v45.i32[3] = v44.i32[0];
            *v47 = v45;
            v47 += 4;
            v63 += 2;
            --v62;
          }

          while (v62);
        }

        a13 = (a13 + a14);
        v38 += a12;
      }

      while (v38 + a3[14] < v32);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v63, result, a2, a4, a3);
    v19 = *a5;
    _D0 = *(*a5 + 24) ? *v19 : NAN;
    v21 = *(v19 + 16);
    if (v21 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v21 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v60[0]) = _H0;
      LOWORD(v60[0]) = _H0;
      LODWORD(_D0) = v60[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v58 = *&_D0;
    v27 = *a6;
    _D0 = *(*a6 + 24) ? *v27 : NAN;
    v29 = HIDWORD(v12);
    v30 = *(v27 + 16);
    if (v30 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v30 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v60[0]) = _H0;
      LOWORD(v60[0]) = _H0;
      LODWORD(_D0) = v60[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v57 = *&_D0;
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v60, v18, a2, a7, a3);
    v32 = a3[13];
    if (a3[14] + v32 < v29)
    {
      v34 = a3[7] * *(a2 + 60);
      v35 = vdup_lane_s32(v58, 0);
      v36 = vdup_lane_s32(v57, 0);
      v37 = vuzp1_s16(__PAIR64__(v57.u32[0], v58.u32[0]), __PAIR64__(v57.u32[0], v58.u32[0]));
      v55 = vdupq_lane_s16(__PAIR64__(v57.u32[0], v58.u32[0]), 2);
      v56 = vdupq_lane_s16(__PAIR64__(v57.u32[0], v58.u32[0]), 0);
      do
      {
        v64 = v34 + v32;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v63);
        v61 = v34 + v32;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v60);
        if (a9 >= 8)
        {
          v43 = 0;
          v44 = v63[0];
          v45 = v60[0];
          v46 = v65 + v63[0];
          v47 = v62 + v60[0];
          v48 = a11;
          do
          {
            v38.i64[0] = *(v44 + v43);
            v39.i64[0] = *(v46 + v43);
            v40.i64[0] = *(v45 + v43);
            v38 = vzip1q_s8(v38, v39);
            v39.i64[0] = *(v47 + v43);
            v39 = vzip1q_s8(v40, v39);
            v66.val[0] = vzip1q_s16(v38, v55);
            v66.val[1] = vzip1q_s16(v56, v39);
            v42 = v48 + 32;
            vst2q_s16(v48, v66);
            v49 = v48 + 16;
            v40 = vzip2q_s16(v38, v55);
            v66.val[1] = vzip2q_s16(v56, v39);
            vst2q_s16(v49, *v40.i8);
            v41 = v43 + 8;
            v50 = v43 + 16;
            v43 += 8;
            v48 = v42;
          }

          while (v50 <= a9);
        }

        else
        {
          v41 = 0;
          v42 = a11;
        }

        v51 = v41 | 2;
        while (v51 <= a9)
        {
          v52 = (v41 + v65 + v63[0]);
          v38.i32[0] = *(v41 + v63[0]);
          v38.i8[4] = *(v41 + v63[0] + 1);
          v39.i32[0] = *v52;
          v39.i8[4] = v52[1];
          v38 = vtrn1q_s16(v38, v39);
          *v38.i8 = vmovn_s16(v38);
          v38.i16[2] = v38.i16[1];
          v53 = (v41 + v62 + v60[0]);
          v39.i32[0] = *(v41 + v60[0]);
          v39.i8[4] = *(v41 + v60[0] + 1);
          v40.i32[0] = *v53;
          v40.i8[4] = v53[1];
          v39 = vtrn1q_s16(v39, v40);
          *v39.i8 = vmovn_s16(v39);
          v39.i16[2] = v39.i16[1];
          *v40.i8 = vtrn1_s16(*v38.i8, v36);
          v54 = vtrn1_s16(v35, *v39.i8);
          vst2_s16(v42, v40);
          v42 += 8;
          v51 = v41 + 4;
          v41 += 2;
        }

        if (v41 < a9)
        {
          do
          {
            LOBYTE(v59) = *(v41 + v60[0]);
            HIBYTE(v59) = *(v41 + v62 + v60[0]);
            v38.i8[0] = *(v41 + v63[0]);
            v38.i8[1] = *(v41 + v65 + v63[0]);
            *v38.i8 = vext_s8(vext_s8(*v38.i8, *v38.i8, 2uLL), v37, 6uLL);
            v38.i16[3] = v59;
            *v42 = v38.i64[0];
            v42 += 4;
            ++v41;
          }

          while (a9 != v41);
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[14] < v29);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v14 = *(a2 + 56);
  if (v14)
  {
    v20 = result;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v68, result, a2, a4, a3);
    v21 = *a5;
    _D0 = *(*a5 + 24) ? *v21 : NAN;
    v23 = *(v21 + 16);
    if (v23 == 2)
    {
      *v12.i32 = _D0;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v65[0]) = _H0;
      LOWORD(v65[0]) = _H0;
      v12.i32[0] = v65[0];
    }

    else
    {
      v12.i32[0] = _D0;
    }

    v29 = *a6;
    _D0 = *(*a6 + 24) ? *v29 : NAN;
    v31 = HIDWORD(v14);
    v32 = *(v29 + 16);
    if (v32 == 2)
    {
      *v13.i32 = _D0;
    }

    else if (v32 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v65[0]) = _H0;
      LOWORD(v65[0]) = _H0;
      v13.i32[0] = v65[0];
    }

    else
    {
      v13.i32[0] = _D0;
    }

    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v65, v20, a2, a7, a3);
    v34 = a3[13];
    if (a3[14] + v34 < v31)
    {
      v36 = a3[7] * *(a2 + 60);
      v63 = vdupq_n_s32(v13.u32[0]);
      v64 = vdupq_n_s32(v12.u32[0]);
      do
      {
        v69 = v36 + v34;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v68);
        v66 = v36 + v34;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v65);
        if (a9 >= 4)
        {
          v42 = 0;
          v43 = v68[0];
          v44 = v65[0];
          v45 = (v67 + v65[0]);
          v46 = (v70 + v68[0]);
          v47 = a11;
          do
          {
            v48 = *v43++;
            v37.i64[0] = v48;
            v49 = *v46++;
            v38.i64[0] = v49;
            v50 = *v44++;
            v39.i64[0] = v50;
            v37 = vzip1q_s8(v37, v38);
            v51 = *v45++;
            v38.i64[0] = v51;
            v38 = vzip1q_s8(v39, v38);
            v72.val[0] = vzip1q_s32(v37, v63);
            v72.val[1] = vzip1q_s32(v64, v38);
            v41 = v47 + 16;
            vst2q_f32(v47, v72);
            v52 = v47 + 8;
            v39 = vzip2q_s32(v37, v63);
            v72.val[1] = vzip2q_s32(v64, v38);
            vst2q_f32(v52, *v39.i8);
            v40 = v42 + 4;
            v53 = v42 + 8;
            v42 += 4;
            v47 = v41;
          }

          while (v53 <= a9);
        }

        else
        {
          v40 = 0;
          v41 = a11;
        }

        if (v40 >= a9)
        {
          v57 = v40;
        }

        else
        {
          v54 = 2 * v40;
          do
          {
            v37.i8[0] = *(v54 + v68[0]);
            v37.i8[4] = *(v54 + v68[0] + 1);
            v38.i8[0] = *(v54 + v65[0]);
            v38.i8[4] = *(v54 + v65[0] + 1);
            v55 = (v54 + v70 + v68[0]);
            v37.i8[1] = *v55;
            v56 = (v54 + v67 + v65[0]);
            v37.i8[2] = v37.i8[4];
            v38.i8[1] = *v56;
            v37.i8[3] = v55[1];
            v38.i8[2] = v38.i8[4];
            v38.i8[3] = v56[1];
            v71.val[0] = vzip1_s32(*v37.i8, v13);
            v71.val[1] = vzip1_s32(v12, *v38.i8);
            vst2_f32(v41, v71);
            v41 += 4;
            v57 = v40 + 1;
            v54 += 2;
            v58 = v40 + 2;
            ++v40;
          }

          while (v58 <= a9);
        }

        v59 = a9 - v57;
        if (a9 > v57)
        {
          v60 = 2 * v57;
          do
          {
            v61 = (v60 + v70 + v68[0]);
            v37.i32[0] = *(v60 + v68[0]);
            v37.i8[4] = *(v60 + v68[0] + 1);
            v38.i32[0] = *v61;
            v38.i8[4] = v61[1];
            v37.i32[0] = vmovn_s16(vtrn1q_s16(v37, v38)).u32[0];
            v62 = (v60 + v67 + v65[0]);
            v38.i32[0] = *(v60 + v65[0]);
            v38.i8[4] = *(v60 + v65[0] + 1);
            v39.i32[0] = *v62;
            v39.i8[4] = v62[1];
            v38 = vtrn1q_s16(v38, v39);
            v37.i32[1] = v12.i32[0];
            v37.i32[2] = v13.i32[0];
            *v38.i8 = vmovn_s16(v38);
            v37.i32[3] = v38.i32[0];
            *v41 = v37;
            v41 += 4;
            v60 += 2;
            --v59;
          }

          while (v59);
        }

        a11 = (a11 + a12);
        v34 += a10;
      }

      while (v34 + a3[14] < v31);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, __n128 _Q0, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    v18 = result;
    v19 = *a4;
    _Q0.n128_u64[0] = *(*a4 + 24) ? *v19 : 0x7FF8000000000000;
    v20 = *(v19 + 16);
    if (v20 == 2)
    {
      _Q0.n128_f32[0] = _Q0.n128_f64[0];
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v67[0]) = _H0;
      LOWORD(v67[0]) = _H0;
      _Q0.n128_u32[0] = v67[0];
    }

    else
    {
      _Q0.n128_u32[0] = _Q0.n128_f64[0];
    }

    v61 = _Q0;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v67, result, a2, a5, a3);
    v26 = *a6;
    _D0 = *(*a6 + 24) ? *v26 : NAN;
    v28 = HIDWORD(v13);
    v29 = *(v26 + 16);
    if (v29 == 2)
    {
      *&v30 = _D0;
    }

    else if (v29 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v64[0]) = _H0;
      LOWORD(v64[0]) = _H0;
      v30 = v64[0];
    }

    else
    {
      v30 = _D0;
    }

    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v64, v18, a2, a7, a3);
    v34 = a3[13];
    if (a3[14] + v34 < v28)
    {
      v56 = a3[7] * *(a2 + 60);
      v70.val[1] = vdupq_n_s16(v30);
      v70.val[0] = vdupq_n_s16(v61.n128_u32[0]);
      v36 = vqtbl2q_s8(v70, xmmword_296B6EDD0);
      v37 = v61;
      v37.n128_u16[1] = v30;
      v37.n128_u16[2] = v61.n128_u16[0];
      v37.n128_u16[3] = v30;
      do
      {
        v57 = v37;
        v58 = v33;
        v59 = v36;
        v60 = v32;
        v68 = v56 + v34;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v67);
        v65 = v56 + v34;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v64);
        if (a10 >= 8)
        {
          v43 = 0;
          v44 = v67[0];
          v45 = v64[0];
          v46 = v69 + v67[0];
          v47 = v66 + v64[0];
          v48 = a12;
          v36 = v59;
          do
          {
            v38.i64[0] = *(v44 + v43);
            v39.i64[0] = *(v46 + v43);
            v38 = vzip1q_s8(v38, v39);
            v39.i64[0] = *(v45 + v43);
            v40.i64[0] = *(v47 + v43);
            v39 = vzip1q_s8(v39, v40);
            v49 = vzip1q_s16(v38, v39);
            v32 = vzip2q_s16(v38, v39);
            v42 = v48 + 32;
            v40 = v59;
            vst2q_s16(v48, *v40.i8);
            v50 = v48 + 16;
            vst2q_s16(v50, *(&v32 - 1));
            v41 = v43 + 8;
            v51 = v43 + 16;
            v43 += 8;
            v48 = v42;
          }

          while (v51 <= a10);
        }

        else
        {
          v41 = 0;
          v42 = a12;
          v36 = v59;
          v32 = v60;
        }

        v37 = v57;
        v33 = v58;
        if ((v41 | 2) <= a10)
        {
          do
          {
            v52 = (v41 + v69 + v67[0]);
            v38.i32[0] = *(v41 + v67[0]);
            v38.i8[4] = *(v41 + v67[0] + 1);
            v39.i32[0] = *v52;
            v39.i8[4] = v52[1];
            v38 = vtrn1q_s16(v38, v39);
            *v38.i8 = vmovn_s16(v38);
            v38.i16[2] = v38.i16[1];
            v53 = (v41 + v66 + v64[0]);
            v39.i32[0] = *(v41 + v64[0]);
            v39.i8[4] = *(v41 + v64[0] + 1);
            v40.i32[0] = *v53;
            v40.i8[4] = v53[1];
            v39 = vtrn1q_s16(v39, v40);
            *v39.i8 = vmovn_s16(v39);
            v39.i16[2] = v39.i16[1];
            *&v33 = vtrn1_s16(*v38.i8, *v39.i8);
            vst2_s16(v42, *(&v33 - 8));
            v42 += 8;
            v54 = v41 + 4;
            v41 += 2;
          }

          while (v54 <= a10);
        }

        if (v41 < a10)
        {
          do
          {
            LOBYTE(v63) = *(v41 + v67[0]);
            HIBYTE(v63) = *(v41 + v69 + v67[0]);
            LOBYTE(v62) = *(v41 + v64[0]);
            HIBYTE(v62) = *(v41 + v66 + v64[0]);
            LOWORD(v55) = v61.n128_u16[0];
            WORD1(v55) = v63;
            WORD2(v55) = v30;
            HIWORD(v55) = v62;
            *v42 = v55;
            v42 += 4;
            ++v41;
          }

          while (a10 != v41);
        }

        a12 = (a12 + a13);
        v34 += a11;
      }

      while (v34 + a3[14] < v28);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, __n128 _Q0, uint64_t a9, unint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    v18 = result;
    v19 = *a4;
    _Q0.n128_u64[0] = *(*a4 + 24) ? *v19 : 0x7FF8000000000000;
    v20 = *(v19 + 16);
    if (v20 == 2)
    {
      _Q0.n128_f32[0] = _Q0.n128_f64[0];
    }

    else if (v20 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v74[0]) = _H0;
      LOWORD(v74[0]) = _H0;
      _Q0.n128_u32[0] = v74[0];
    }

    else
    {
      _Q0.n128_u32[0] = _Q0.n128_f64[0];
    }

    v70 = _Q0;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v74, result, a2, a5, a3);
    v26 = *a6;
    _D0 = *(*a6 + 24) ? *v26 : NAN;
    v28 = HIDWORD(v13);
    v29 = *(v26 + 16);
    if (v29 == 2)
    {
      v30 = _D0;
    }

    else if (v29 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v71[0]) = _H0;
      LOWORD(v71[0]) = _H0;
      v30 = *v71;
    }

    else
    {
      LODWORD(v30) = _D0;
    }

    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v71, v18, a2, a7, a3);
    v34 = a3[13];
    if (a3[14] + v34 < v28)
    {
      v36.i64[0] = __PAIR64__(LODWORD(v30), v70.n128_u32[0]);
      v36.i64[1] = __PAIR64__(LODWORD(v30), v70.n128_u32[0]);
      v37 = a3[7] * *(a2 + 60);
      v38 = v70;
      v38.n128_f32[1] = v30;
      do
      {
        v66 = v38;
        v67 = v33;
        v68 = v36;
        v69 = v32;
        v75 = v37 + v34;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v74);
        v72 = v37 + v34;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v71);
        if (a10 >= 4)
        {
          v44 = 0;
          v45 = v74[0];
          v46 = v71[0];
          v47 = (v73 + v71[0]);
          v48 = (v76 + v74[0]);
          v49 = a12;
          v36 = v68;
          do
          {
            v50 = *v45++;
            v39.i64[0] = v50;
            v51 = *v48++;
            v40.i64[0] = v51;
            v39 = vzip1q_s8(v39, v40);
            v52 = *v46++;
            v40.i64[0] = v52;
            v53 = *v47++;
            v41.i64[0] = v53;
            v40 = vzip1q_s8(v40, v41);
            v54 = vzip1q_s32(v39, v40);
            v32 = vzip2q_s32(v39, v40);
            v43 = v49 + 16;
            v41 = v68;
            vst2q_f32(v49, *v41.i8);
            v55 = v49 + 8;
            vst2q_f32(v55, *(&v32 - 1));
            v42 = v44 + 4;
            v56 = v44 + 8;
            v44 += 4;
            v49 = v43;
          }

          while (v56 <= a10);
        }

        else
        {
          v42 = 0;
          v43 = a12;
          v36 = v68;
          v32 = v69;
        }

        v38 = v66;
        v33 = v67;
        if (v42 >= a10)
        {
          v60 = v42;
        }

        else
        {
          v57 = 2 * v42;
          do
          {
            v39.i8[0] = *(v57 + v74[0]);
            v39.i8[4] = *(v57 + v74[0] + 1);
            v40.i8[0] = *(v57 + v71[0]);
            v40.i8[4] = *(v57 + v71[0] + 1);
            v58 = (v57 + v76 + v74[0]);
            v39.i8[1] = *v58;
            v59 = (v57 + v73 + v71[0]);
            v39.i8[2] = v39.i8[4];
            v40.i8[1] = *v59;
            v39.i8[3] = v58[1];
            v40.i8[2] = v40.i8[4];
            v40.i8[3] = v59[1];
            *&v33 = vzip1_s32(*v39.i8, *v40.i8);
            vst2_f32(v43, *(&v33 - 8));
            v43 += 4;
            v60 = v42 + 1;
            v57 += 2;
            v61 = v42 + 2;
            ++v42;
          }

          while (v61 <= a10);
        }

        v62 = a10 - v60;
        if (a10 > v60)
        {
          v63 = 2 * v60;
          do
          {
            v64 = (v63 + v76 + v74[0]);
            v39.i32[0] = *(v63 + v74[0]);
            v39.i8[4] = *(v63 + v74[0] + 1);
            v40.i32[0] = *v64;
            v40.i8[4] = v64[1];
            v39 = vtrn1q_s16(v39, v40);
            v65 = (v63 + v73 + v71[0]);
            v40.i32[0] = *(v63 + v71[0]);
            v40.i8[4] = *(v63 + v71[0] + 1);
            v41.i32[0] = *v65;
            v41.i8[4] = v65[1];
            v40 = vtrn1q_s16(v40, v41);
            v41.i32[0] = v70.n128_u32[0];
            v41.i32[1] = vmovn_s16(v39).u32[0];
            *&v41.i32[2] = v30;
            *v39.i8 = vmovn_s16(v40);
            v41.i32[3] = v39.i32[0];
            *v43 = v41;
            v43 += 4;
            v63 += 2;
            --v62;
          }

          while (v62);
        }

        a12 = (a12 + a13);
        v34 += a11;
      }

      while (v34 + a3[14] < v28);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v68, result, a2, a4, a3);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v65, v18, a2, a5, a3);
    v19 = *a6;
    _D0 = *(*a6 + 24) ? *v19 : NAN;
    v21 = HIDWORD(v12);
    v22 = *(v19 + 16);
    if (v22 == 2)
    {
      *&v23 = _D0;
    }

    else if (v22 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v62[0]) = _H0;
      LOWORD(v62[0]) = _H0;
      v23 = v62[0];
    }

    else
    {
      v23 = _D0;
    }

    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v62, v18, a2, a7, a3);
    v29 = *(a3 + 52);
    if (*(a3 + 56) + v29 < v21)
    {
      v30 = a3;
      v57 = *(v30 + 28) * *(a2 + 60);
      v32 = v23;
      v33 = vdupq_n_s16(v23);
      v34 = vdup_n_s32(v23);
      v58 = v30;
      v56 = v33;
      do
      {
        v69 = v57 + v29;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v68);
        v66 = v57 + v29;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v65);
        v63 = v57 + v29;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v62);
        if (a9 >= 8)
        {
          v41 = 0;
          v42 = v68[0];
          v43 = v65[0];
          v44 = v62[0];
          v45 = v70 + v68[0];
          v46 = v67 + v65[0];
          v47 = v64 + v62[0];
          v48 = a11;
          do
          {
            v35.i64[0] = *(v42 + v41);
            v36.i64[0] = *(v45 + v41);
            v35 = vzip1q_s8(v35, v36);
            v36.i64[0] = *(v43 + v41);
            v37.i64[0] = *(v46 + v41);
            v38.i64[0] = *(v44 + v41);
            v36 = vzip1q_s8(v36, v37);
            v37.i64[0] = *(v47 + v41);
            v37 = vzip1q_s8(v38, v37);
            v71.val[0] = vzip1q_s16(v35, v56);
            v71.val[1] = vzip1q_s16(v36, v37);
            v40 = v48 + 32;
            vst2q_s16(v48, v71);
            v49 = v48 + 16;
            v38 = vzip2q_s16(v35, v56);
            v71.val[1] = vzip2q_s16(v36, v37);
            vst2q_s16(v49, *v38.i8);
            v39 = v41 + 8;
            result = v41 + 16;
            v41 += 8;
            v48 = v40;
          }

          while (result <= a9);
        }

        else
        {
          v39 = 0;
          v40 = a11;
        }

        if ((v39 | 2) <= a9)
        {
          do
          {
            v50 = (v39 + v70 + v68[0]);
            v35.i32[0] = *(v39 + v68[0]);
            v35.i8[4] = *(v39 + v68[0] + 1);
            v36.i32[0] = *v50;
            v36.i8[4] = v50[1];
            v35 = vtrn1q_s16(v35, v36);
            *v35.i8 = vmovn_s16(v35);
            v35.i16[2] = v35.i16[1];
            v51 = (v39 + v67 + v65[0]);
            v36.i32[0] = *(v39 + v65[0]);
            v36.i8[4] = *(v39 + v65[0] + 1);
            v37.i32[0] = *v51;
            v37.i8[4] = v51[1];
            v36 = vtrn1q_s16(v36, v37);
            *v36.i8 = vmovn_s16(v36);
            v36.i16[2] = v36.i16[1];
            v52 = (v39 + v64 + v62[0]);
            v37.i32[0] = *(v39 + v62[0]);
            v37.i8[4] = *(v39 + v62[0] + 1);
            v38.i32[0] = *v52;
            v38.i8[4] = v52[1];
            v37 = vtrn1q_s16(v37, v38);
            *v37.i8 = vmovn_s16(v37);
            v37.i16[2] = v37.i16[1];
            *v38.i8 = vtrn1_s16(*v35.i8, v34);
            v53 = vtrn1_s16(*v36.i8, *v37.i8);
            vst2_s16(v40, v38);
            v40 += 8;
            v54 = v39 + 4;
            v39 += 2;
          }

          while (v54 <= a9);
        }

        if (v39 < a9)
        {
          do
          {
            LOBYTE(v61) = *(v39 + v68[0]);
            HIBYTE(v61) = *(v39 + v70 + v68[0]);
            LOBYTE(v60) = *(v39 + v65[0]);
            HIBYTE(v60) = *(v39 + v67 + v65[0]);
            LOBYTE(v59) = *(v39 + v62[0]);
            HIBYTE(v59) = *(v39 + v64 + v62[0]);
            LOWORD(v55) = v61;
            WORD1(v55) = v60;
            WORD2(v55) = v32;
            HIWORD(v55) = v59;
            *v40 = v55;
            v40 += 4;
            ++v39;
          }

          while (a9 != v39);
        }

        a11 = (a11 + a12);
        v29 += a10;
      }

      while (v29 + *(v58 + 56) < v21);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    v19 = result;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v76, result, a2, a4, a3);
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v73, v19, a2, a5, a3);
    v20 = *a6;
    _D0 = *(*a6 + 24) ? *v20 : NAN;
    v22 = HIDWORD(v13);
    v23 = *(v20 + 16);
    if (v23 == 2)
    {
      *v12.i32 = _D0;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v70[0]) = _H0;
      LOWORD(v70[0]) = _H0;
      v12.i32[0] = v70[0];
    }

    else
    {
      v12.i32[0] = _D0;
    }

    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v70, v19, a2, a7, a3);
    v29 = a3[13];
    if (a3[14] + v29 < v22)
    {
      v31 = a3[7] * *(a2 + 60);
      v69 = vdupq_n_s32(v12.u32[0]);
      do
      {
        v77 = v31 + v29;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v76);
        v74 = v31 + v29;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v73);
        v71 = v31 + v29;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v70);
        if (a9 >= 4)
        {
          v39 = 0;
          v40 = v76[0];
          v41 = v73[0];
          v42 = v70[0];
          v43 = (v72 + v70[0]);
          v44 = (v75 + v73[0]);
          v45 = (v78 + v76[0]);
          v46 = a11;
          do
          {
            v47 = *v40++;
            v32.i64[0] = v47;
            v48 = *v45++;
            v33.i64[0] = v48;
            v32 = vzip1q_s8(v32, v33);
            v49 = *v41++;
            v33.i64[0] = v49;
            v50 = *v44++;
            v34.i64[0] = v50;
            v51 = *v42++;
            v35.i64[0] = v51;
            v33 = vzip1q_s8(v33, v34);
            v52 = *v43++;
            v34.i64[0] = v52;
            v34 = vzip1q_s8(v35, v34);
            v80.val[0] = vzip1q_s32(v32, v69);
            v80.val[1] = vzip1q_s32(v33, v34);
            v38 = v46 + 16;
            vst2q_f32(v46, v80);
            v53 = v46 + 8;
            v35 = vzip2q_s32(v32, v69);
            v36 = vzip2q_s32(v33, v34);
            vst2q_f32(v53, *v35.i8);
            v37 = v39 + 4;
            result = v39 + 8;
            v39 += 4;
            v46 = v38;
          }

          while (result <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        if (v37 >= a9)
        {
          v61 = v37;
        }

        else
        {
          v54 = 2 * v37;
          do
          {
            v34.i8[0] = *(v54 + v76[0]);
            v55 = (v54 + v78 + v76[0]);
            v56 = *v55;
            v35.i8[0] = *(v54 + v73[0]);
            v34.i8[4] = *(v54 + v76[0] + 1);
            v35.i8[4] = *(v54 + v73[0] + 1);
            v57 = v55[1];
            v58 = (v54 + v75 + v73[0]);
            v59 = v58[1];
            v36.i8[0] = *(v54 + v70[0]);
            v34.i8[1] = v56;
            v36.i8[4] = *(v54 + v70[0] + 1);
            v35.i8[1] = *v58;
            v60 = (v54 + v72 + v70[0]);
            v34.i8[2] = v34.i8[4];
            v35.i8[2] = v35.i8[4];
            v34.i8[3] = v57;
            v36.i8[1] = *v60;
            v36.i8[2] = v36.i8[4];
            v35.i8[3] = v59;
            v36.i8[3] = v60[1];
            v79.val[0] = vzip1_s32(*v34.i8, v12);
            v79.val[1] = vzip1_s32(*v35.i8, *v36.i8);
            vst2_f32(v38, v79);
            v38 += 4;
            v61 = v37 + 1;
            v54 += 2;
            v62 = v37 + 2;
            ++v37;
          }

          while (v62 <= a9);
        }

        v63 = a9 - v61;
        if (a9 > v61)
        {
          v64 = 2 * v61;
          do
          {
            v65 = (v64 + v78 + v76[0]);
            v66 = (v65 + 1);
            v32.i32[0] = *(v64 + v76[0]);
            v32.i8[4] = *(v64 + v76[0] + 1);
            v33.i32[0] = *v65;
            v67 = (v64 + v75 + v73[0]);
            v34.i32[0] = *(v64 + v73[0]);
            v33.i8[4] = *v66;
            v34.i8[4] = *(v64 + v73[0] + 1);
            v35.i32[0] = *v67;
            v35.i8[4] = v67[1];
            v32.i32[0] = vmovn_s16(vtrn1q_s16(v32, v33)).u32[0];
            v33 = vtrn1q_s16(v34, v35);
            v68 = (v64 + v72 + v70[0]);
            v34.i32[0] = *(v64 + v70[0]);
            v34.i8[4] = *(v64 + v70[0] + 1);
            v35.i32[0] = *v68;
            v35.i8[4] = v68[1];
            v34 = vtrn1q_s16(v34, v35);
            v32.i32[1] = vmovn_s16(v33).u32[0];
            v32.i32[2] = v12.i32[0];
            *v33.i8 = vmovn_s16(v34);
            v32.i32[3] = v33.i32[0];
            *v38 = v32;
            v38 += 4;
            v64 += 2;
            --v63;
          }

          while (v63);
        }

        a11 = (a11 + a12);
        v29 += a10;
      }

      while (v29 + a3[14] < v22);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v16 = result;
    v17 = *a4;
    _D0 = *(*a4 + 24) ? *v17 : NAN;
    v19 = *(v17 + 16);
    if (v19 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v19 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v64[0]) = _H0;
      LOWORD(v64[0]) = _H0;
      LODWORD(_D0) = v64[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v57 = *&_D0;
    v25 = *a5;
    _D0 = *(*a5 + 24) ? *v25 : NAN;
    v27 = HIDWORD(v12);
    v28 = *(v25 + 16);
    if (v28 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v28 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v64[0]) = _H0;
      LOWORD(v64[0]) = _H0;
      LODWORD(_D0) = v64[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v55 = *&_D0;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v64, result, a2, a6, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v61, v16, a2, a7, a3);
    v30 = a3[13];
    if (a3[14] + v30 < v27)
    {
      v32 = __PAIR64__(v55.u32[0], v57.u32[0]);
      v33 = vdup_lane_s32(v57, 0);
      v34 = vdup_lane_s32(v55, 0);
      v58 = a3[7] * *(a2 + 60);
      v53 = vdupq_lane_s16(v32, 2);
      v54 = vdupq_lane_s16(v32, 0);
      v56 = vuzp1_s16(v32, v32).u32[0];
      do
      {
        v65 = v58 + v30;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v64);
        v62 = v58 + v30;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v61);
        if (a9 >= 8)
        {
          v40 = 0;
          v41 = v64[0];
          v42 = v61[0];
          v43 = v66 + v64[0];
          v44 = v63 + v61[0];
          v45 = a11;
          do
          {
            v35.i64[0] = *(v41 + v40);
            v36.i64[0] = *(v43 + v40);
            v37.i64[0] = *(v42 + v40);
            v35 = vzip1q_s8(v35, v36);
            v36.i64[0] = *(v44 + v40);
            v36 = vzip1q_s8(v37, v36);
            v67.val[0] = vzip1q_s16(v54, v35);
            v67.val[1] = vzip1q_s16(v53, v36);
            v39 = v45 + 32;
            vst2q_s16(v45, v67);
            v46 = v45 + 16;
            v37 = vzip2q_s16(v54, v35);
            v67.val[1] = vzip2q_s16(v53, v36);
            vst2q_s16(v46, *v37.i8);
            v38 = v40 + 8;
            v47 = v40 + 16;
            v40 += 8;
            v45 = v39;
          }

          while (v47 <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        v48 = v38 | 2;
        while (v48 <= a9)
        {
          v49 = (v38 + v66 + v64[0]);
          v35.i32[0] = *(v38 + v64[0]);
          v35.i8[4] = *(v38 + v64[0] + 1);
          v36.i32[0] = *v49;
          v36.i8[4] = v49[1];
          v35 = vtrn1q_s16(v35, v36);
          *v35.i8 = vmovn_s16(v35);
          v35.i16[2] = v35.i16[1];
          v50 = (v38 + v63 + v61[0]);
          v36.i32[0] = *(v38 + v61[0]);
          v36.i8[4] = *(v38 + v61[0] + 1);
          v37.i32[0] = *v50;
          v37.i8[4] = v50[1];
          v36 = vtrn1q_s16(v36, v37);
          *v36.i8 = vmovn_s16(v36);
          v36.i16[2] = v36.i16[1];
          *v37.i8 = vtrn1_s16(v33, *v35.i8);
          v51 = vtrn1_s16(v34, *v36.i8);
          vst2_s16(v39, v37);
          v39 += 8;
          v48 = v38 + 4;
          v38 += 2;
        }

        if (v38 < a9)
        {
          do
          {
            LOBYTE(v60) = *(v38 + v64[0]);
            HIBYTE(v60) = *(v38 + v66 + v64[0]);
            LOBYTE(v59) = *(v38 + v61[0]);
            HIBYTE(v59) = *(v38 + v63 + v61[0]);
            LODWORD(v52) = v56;
            WORD2(v52) = v60;
            HIWORD(v52) = v59;
            *v39 = v52;
            v39 += 4;
            ++v38;
          }

          while (a9 != v38);
        }

        a11 = (a11 + a12);
        v30 += a10;
      }

      while (v30 + a3[14] < v27);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, double a8, int32x2_t a9, uint64_t a10, unint64_t a11, unsigned int a12, float *a13, uint64_t a14)
{
  v14 = *(a2 + 56);
  if (v14)
  {
    v18 = result;
    v19 = *a4;
    _D0 = *(*a4 + 24) ? *v19 : NAN;
    v21 = *(v19 + 16);
    if (v21 == 2)
    {
      *a9.i32 = _D0;
    }

    else if (v21 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v69[0]) = _H0;
      LOWORD(v69[0]) = _H0;
      a9.i32[0] = v69[0];
    }

    else
    {
      a9.i32[0] = _D0;
    }

    v27 = *a5;
    _D0 = *(*a5 + 24) ? *v27 : NAN;
    v29 = HIDWORD(v14);
    v30 = *(v27 + 16);
    v65 = a9;
    if (v30 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v30 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v69[0]) = _H0;
      LOWORD(v69[0]) = _H0;
      LODWORD(_D0) = v69[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v64 = *&_D0;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v69, result, a2, a6, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v66, v18, a2, a7, a3);
    v32 = a3[13];
    if (a3[14] + v32 < v29)
    {
      v34 = a3[7] * *(a2 + 60);
      v62 = vdupq_n_s32(v64.u32[0]);
      v63 = vdupq_n_s32(v65.u32[0]);
      do
      {
        v70 = v34 + v32;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v69);
        v67 = v34 + v32;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v66);
        if (a11 >= 4)
        {
          v41 = 0;
          v42 = v69[0];
          v43 = v66[0];
          v44 = (v68 + v66[0]);
          v45 = (v71 + v69[0]);
          v46 = a13;
          do
          {
            v47 = *v42++;
            v35.i64[0] = v47;
            v48 = *v45++;
            v36.i64[0] = v48;
            v49 = *v43++;
            v37.i64[0] = v49;
            v35 = vzip1q_s8(v35, v36);
            v50 = *v44++;
            v36.i64[0] = v50;
            v36 = vzip1q_s8(v37, v36);
            v73.val[0] = vzip1q_s32(v63, v35);
            v73.val[1] = vzip1q_s32(v62, v36);
            v40 = v46 + 16;
            vst2q_f32(v46, v73);
            v51 = v46 + 8;
            v37 = vzip2q_s32(v63, v35);
            v38 = vzip2q_s32(v62, v36);
            vst2q_f32(v51, *v37.i8);
            v39 = v41 + 4;
            v52 = v41 + 8;
            v41 += 4;
            v46 = v40;
          }

          while (v52 <= a11);
        }

        else
        {
          v39 = 0;
          v40 = a13;
        }

        if (v39 >= a11)
        {
          v56 = v39;
        }

        else
        {
          v53 = 2 * v39;
          do
          {
            v35.i8[0] = *(v53 + v69[0]);
            v35.i8[4] = *(v53 + v69[0] + 1);
            v36.i8[0] = *(v53 + v66[0]);
            v36.i8[4] = *(v53 + v66[0] + 1);
            v54 = (v53 + v71 + v69[0]);
            v35.i8[1] = *v54;
            v55 = (v53 + v68 + v66[0]);
            v35.i8[2] = v35.i8[4];
            v36.i8[1] = *v55;
            v35.i8[3] = v54[1];
            v36.i8[2] = v36.i8[4];
            v36.i8[3] = v55[1];
            v72.val[0] = vzip1_s32(v65, *v35.i8);
            v72.val[1] = vzip1_s32(v64, *v36.i8);
            vst2_f32(v40, v72);
            v40 += 4;
            v56 = v39 + 1;
            v53 += 2;
            v57 = v39 + 2;
            ++v39;
          }

          while (v57 <= a11);
        }

        v58 = a11 - v56;
        if (a11 > v56)
        {
          v59 = 2 * v56;
          do
          {
            v60 = (v59 + v71 + v69[0]);
            v35.i32[0] = *(v59 + v69[0]);
            v35.i8[4] = *(v59 + v69[0] + 1);
            v36.i32[0] = *v60;
            v36.i8[4] = v60[1];
            v61 = (v59 + v68 + v66[0]);
            v37.i32[0] = *(v59 + v66[0]);
            v37.i8[4] = *(v59 + v66[0] + 1);
            v38.i32[0] = *v61;
            v38.i8[4] = v61[1];
            v35 = vtrn1q_s16(v35, v36);
            v36 = vtrn1q_s16(v37, v38);
            v37.i64[0] = __PAIR64__(v64.u32[0], v65.u32[0]);
            v37.i32[2] = vmovn_s16(v35).u32[0];
            *v35.i8 = vmovn_s16(v36);
            v37.i32[3] = v35.i32[0];
            *v40 = v37;
            v40 += 4;
            v59 += 2;
            --v58;
          }

          while (v58);
        }

        a13 = (a13 + a14);
        v32 += a12;
      }

      while (v32 + a3[14] < v29);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v70, result, a2, a4, a3);
    v19 = *a5;
    _D0 = *(*a5 + 24) ? *v19 : NAN;
    v60 = HIDWORD(v12);
    v21 = *(v19 + 16);
    if (v21 == 2)
    {
      *&v22 = _D0;
    }

    else if (v21 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v67[0]) = _H0;
      LOWORD(v67[0]) = _H0;
      v22 = v67[0];
    }

    else
    {
      v22 = _D0;
    }

    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v67, v18, a2, a6, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v64, v18, a2, a7, a3);
    v28 = *(a3 + 52);
    if (*(a3 + 56) + v28 < v60)
    {
      v29 = a3;
      v58 = *(v29 + 28) * *(a2 + 60);
      v31 = v22;
      v32 = vdupq_n_s16(v22);
      v33 = vdup_n_s32(v22);
      v59 = v29;
      v57 = v32;
      do
      {
        v71 = v58 + v28;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v70);
        v68 = v58 + v28;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v67);
        v65 = v58 + v28;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v64);
        if (a9 >= 8)
        {
          v40 = 0;
          v41 = v70[0];
          v42 = v67[0];
          v43 = v64[0];
          v44 = v72 + v70[0];
          v45 = v69 + v67[0];
          v46 = v66 + v64[0];
          v47 = a11;
          do
          {
            v34.i64[0] = *(v41 + v40);
            v35.i64[0] = *(v44 + v40);
            v48 = vzip1q_s8(v34, v35);
            v35.i64[0] = *(v42 + v40);
            v36.i64[0] = *(v45 + v40);
            v37.i64[0] = *(v43 + v40);
            v49 = vzip1q_s8(v35, v36);
            v36.i64[0] = *(v46 + v40);
            v36 = vzip1q_s8(v37, v36);
            v37 = vzip1q_s16(v48, v49);
            v50 = vzip1q_s16(v57, v36);
            v39 = v47 + 32;
            vst2q_s16(v47, *v37.i8);
            v51 = v47 + 16;
            v34 = vzip2q_s16(v48, v49);
            v35 = vzip2q_s16(v57, v36);
            vst2q_s16(v51, *v34.i8);
            v38 = v40 + 8;
            result = v40 + 16;
            v40 += 8;
            v47 = v39;
          }

          while (result <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        v52 = v38 | 2;
        while (v52 <= a9)
        {
          v53 = (v38 + v72 + v70[0]);
          v34.i32[0] = *(v38 + v70[0]);
          v34.i8[4] = *(v38 + v70[0] + 1);
          v35.i32[0] = *v53;
          v35.i8[4] = v53[1];
          v34 = vtrn1q_s16(v34, v35);
          *v34.i8 = vmovn_s16(v34);
          v34.i16[2] = v34.i16[1];
          v54 = (v38 + v69 + v67[0]);
          v35.i32[0] = *(v38 + v67[0]);
          v35.i8[4] = *(v38 + v67[0] + 1);
          v36.i32[0] = *v54;
          v36.i8[4] = v54[1];
          v35 = vtrn1q_s16(v35, v36);
          *v35.i8 = vmovn_s16(v35);
          v35.i16[2] = v35.i16[1];
          v55 = (v38 + v66 + v64[0]);
          v36.i32[0] = *(v38 + v64[0]);
          v36.i8[4] = *(v38 + v64[0] + 1);
          v37.i32[0] = *v55;
          v37.i8[4] = v55[1];
          v36 = vtrn1q_s16(v36, v37);
          *v36.i8 = vmovn_s16(v36);
          v36.i16[2] = v36.i16[1];
          *v34.i8 = vtrn1_s16(*v34.i8, *v35.i8);
          *v35.i8 = vtrn1_s16(v33, *v36.i8);
          vst2_s16(v39, v34);
          v39 += 8;
          v52 = v38 + 4;
          v38 += 2;
        }

        if (v38 < a9)
        {
          do
          {
            LOBYTE(v63) = *(v38 + v70[0]);
            HIBYTE(v63) = *(v38 + v72 + v70[0]);
            LOBYTE(v62) = *(v38 + v67[0]);
            HIBYTE(v62) = *(v38 + v69 + v67[0]);
            LOBYTE(v61) = *(v38 + v64[0]);
            HIBYTE(v61) = *(v38 + v66 + v64[0]);
            LOWORD(v56) = v63;
            WORD1(v56) = v31;
            WORD2(v56) = v62;
            HIWORD(v56) = v61;
            *v39 = v56;
            v39 += 4;
            ++v38;
          }

          while (a9 != v38);
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + *(v59 + 56) < v60);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v13 = *(a2 + 56);
  if (v13)
  {
    v19 = result;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v77, result, a2, a4, a3);
    v20 = *a5;
    _D0 = *(*a5 + 24) ? *v20 : NAN;
    v22 = HIDWORD(v13);
    v23 = *(v20 + 16);
    if (v23 == 2)
    {
      *v12.i32 = _D0;
    }

    else if (v23 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v74[0]) = _H0;
      LOWORD(v74[0]) = _H0;
      v12.i32[0] = v74[0];
    }

    else
    {
      v12.i32[0] = _D0;
    }

    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v74, v19, a2, a6, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v71, v19, a2, a7, a3);
    v29 = a3[13];
    if (a3[14] + v29 < v22)
    {
      v31 = a3[7] * *(a2 + 60);
      v70 = vdupq_n_s32(v12.u32[0]);
      do
      {
        v78 = v31 + v29;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v77);
        v75 = v31 + v29;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v74);
        v72 = v31 + v29;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v71);
        if (a9 >= 4)
        {
          v39 = 0;
          v40 = v77[0];
          v41 = v74[0];
          v42 = v71[0];
          v43 = (v73 + v71[0]);
          v44 = (v76 + v74[0]);
          v45 = (v79 + v77[0]);
          v46 = a11;
          do
          {
            v47 = *v40++;
            v32.i64[0] = v47;
            v48 = *v45++;
            v33.i64[0] = v48;
            v49 = vzip1q_s8(v32, v33);
            v50 = *v41++;
            v33.i64[0] = v50;
            v51 = *v44++;
            v34.i64[0] = v51;
            v52 = *v42++;
            v35.i64[0] = v52;
            v53 = vzip1q_s8(v33, v34);
            v54 = *v43++;
            v34.i64[0] = v54;
            v34 = vzip1q_s8(v35, v34);
            v35 = vzip1q_s32(v49, v53);
            v36 = vzip1q_s32(v70, v34);
            v38 = v46 + 16;
            vst2q_f32(v46, *v35.i8);
            v55 = v46 + 8;
            v32 = vzip2q_s32(v49, v53);
            v33 = vzip2q_s32(v70, v34);
            vst2q_f32(v55, *v32.i8);
            v37 = v39 + 4;
            result = v39 + 8;
            v39 += 4;
            v46 = v38;
          }

          while (result <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        if (v37 >= a9)
        {
          v63 = v37;
        }

        else
        {
          v56 = 2 * v37;
          do
          {
            v34.i8[0] = *(v56 + v77[0]);
            v57 = (v56 + v79 + v77[0]);
            v58 = *v57;
            v35.i8[0] = *(v56 + v74[0]);
            v34.i8[4] = *(v56 + v77[0] + 1);
            v35.i8[4] = *(v56 + v74[0] + 1);
            v59 = v57[1];
            v60 = (v56 + v76 + v74[0]);
            v61 = v60[1];
            v36.i8[0] = *(v56 + v71[0]);
            v34.i8[1] = v58;
            v36.i8[4] = *(v56 + v71[0] + 1);
            v35.i8[1] = *v60;
            v62 = (v56 + v73 + v71[0]);
            v34.i8[2] = v34.i8[4];
            v35.i8[2] = v35.i8[4];
            v34.i8[3] = v59;
            v36.i8[1] = *v62;
            v36.i8[2] = v36.i8[4];
            v35.i8[3] = v61;
            v36.i8[3] = v62[1];
            *v34.i8 = vzip1_s32(*v34.i8, *v35.i8);
            *v35.i8 = vzip1_s32(v12, *v36.i8);
            vst2_f32(v38, v34);
            v38 += 4;
            v63 = v37 + 1;
            v56 += 2;
            v64 = v37 + 2;
            ++v37;
          }

          while (v64 <= a9);
        }

        v65 = a9 - v63;
        if (a9 > v63)
        {
          v66 = 2 * v63;
          do
          {
            v67 = (v66 + v79 + v77[0]);
            v32.i32[0] = *(v66 + v77[0]);
            v32.i8[4] = *(v66 + v77[0] + 1);
            v33.i32[0] = *v67;
            v33.i8[4] = v67[1];
            v68 = (v66 + v76 + v74[0]);
            v34.i32[0] = *(v66 + v74[0]);
            v34.i8[4] = *(v66 + v74[0] + 1);
            v35.i32[0] = *v68;
            v35.i8[4] = v68[1];
            v32.i32[0] = vmovn_s16(vtrn1q_s16(v32, v33)).u32[0];
            v69 = (v66 + v73 + v71[0]);
            v33.i32[0] = *(v66 + v71[0]);
            v34 = vtrn1q_s16(v34, v35);
            v33.i8[4] = *(v66 + v71[0] + 1);
            v35.i32[0] = *v69;
            v35.i8[4] = v69[1];
            *v34.i8 = vmovn_s16(v34);
            v33 = vtrn1q_s16(v33, v35);
            v32.i32[1] = v12.i32[0];
            v32.i32[2] = v34.i32[0];
            *v33.i8 = vmovn_s16(v33);
            v32.i32[3] = v33.i32[0];
            *v38 = v32;
            v38 += 4;
            v66 += 2;
            --v65;
          }

          while (v65);
        }

        a11 = (a11 + a12);
        v29 += a10;
      }

      while (v29 + a3[14] < v22);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v16 = result;
    v17 = *a4;
    _D0 = *(*a4 + 24) ? *v17 : NAN;
    v53 = HIDWORD(v12);
    v19 = *(v17 + 16);
    if (v19 == 2)
    {
      v20 = _D0;
    }

    else if (v19 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v64[0]) = _H0;
      LOWORD(v64[0]) = _H0;
      v20 = *v64;
    }

    else
    {
      LODWORD(v20) = _D0;
    }

    v52 = LODWORD(v20);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v64, result, a2, a5, a3);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v61, v16, a2, a6, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v58, v16, a2, a7, a3);
    v26 = a3[13];
    if (a3[14] + v26 < v53)
    {
      v51 = a3[7] * *(a2 + 60);
      v28 = vdup_n_s32(v52);
      v50 = vdupq_n_s16(v52);
      do
      {
        v65 = v51 + v26;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v64);
        v62 = v51 + v26;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v61);
        v59 = v51 + v26;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v58);
        if (a9 >= 8)
        {
          v35 = 0;
          v36 = v64[0];
          v37 = v61[0];
          v38 = v58[0];
          v39 = v66 + v64[0];
          v40 = v63 + v61[0];
          v41 = v60 + v58[0];
          v42 = a11;
          do
          {
            v29.i64[0] = *(v36 + v35);
            v30.i64[0] = *(v39 + v35);
            v29 = vzip1q_s8(v29, v30);
            v30.i64[0] = *(v37 + v35);
            v31.i64[0] = *(v40 + v35);
            v32.i64[0] = *(v38 + v35);
            v30 = vzip1q_s8(v30, v31);
            v31.i64[0] = *(v41 + v35);
            v31 = vzip1q_s8(v32, v31);
            v67.val[0] = vzip1q_s16(v50, v30);
            v67.val[1] = vzip1q_s16(v29, v31);
            v34 = v42 + 32;
            vst2q_s16(v42, v67);
            v43 = v42 + 16;
            v32 = vzip2q_s16(v50, v30);
            v67.val[1] = vzip2q_s16(v29, v31);
            vst2q_s16(v43, *v32.i8);
            v33 = v35 + 8;
            result = v35 + 16;
            v35 += 8;
            v42 = v34;
          }

          while (result <= a9);
        }

        else
        {
          v33 = 0;
          v34 = a11;
        }

        v44 = v33 | 2;
        while (v44 <= a9)
        {
          v45 = (v33 + v66 + v64[0]);
          v29.i32[0] = *(v33 + v64[0]);
          v29.i8[4] = *(v33 + v64[0] + 1);
          v30.i32[0] = *v45;
          v30.i8[4] = v45[1];
          v29 = vtrn1q_s16(v29, v30);
          *v29.i8 = vmovn_s16(v29);
          v29.i16[2] = v29.i16[1];
          v46 = (v33 + v63 + v61[0]);
          v30.i32[0] = *(v33 + v61[0]);
          v30.i8[4] = *(v33 + v61[0] + 1);
          v31.i32[0] = *v46;
          v31.i8[4] = v46[1];
          v30 = vtrn1q_s16(v30, v31);
          *v30.i8 = vmovn_s16(v30);
          v30.i16[2] = v30.i16[1];
          v47 = (v33 + v60 + v58[0]);
          v31.i32[0] = *(v33 + v58[0]);
          v31.i8[4] = *(v33 + v58[0] + 1);
          v32.i32[0] = *v47;
          v32.i8[4] = v47[1];
          v31 = vtrn1q_s16(v31, v32);
          *v31.i8 = vmovn_s16(v31);
          v31.i16[2] = v31.i16[1];
          *v32.i8 = vtrn1_s16(v28, *v30.i8);
          v48 = vtrn1_s16(*v29.i8, *v31.i8);
          vst2_s16(v34, v32);
          v34 += 8;
          v44 = v33 + 4;
          v33 += 2;
        }

        if (v33 < a9)
        {
          do
          {
            LOBYTE(v57) = *(v33 + v64[0]);
            HIBYTE(v57) = *(v33 + v66 + v64[0]);
            LOBYTE(v56) = *(v33 + v61[0]);
            HIBYTE(v56) = *(v33 + v63 + v61[0]);
            LOBYTE(v55) = *(v33 + v58[0]);
            HIBYTE(v55) = *(v33 + v60 + v58[0]);
            LOWORD(v49) = v52;
            WORD1(v49) = v57;
            WORD2(v49) = v56;
            HIWORD(v49) = v55;
            *v34 = v49;
            v34 += 4;
            ++v33;
          }

          while (a9 != v33);
        }

        a11 = (a11 + a12);
        v26 += a10;
      }

      while (v26 + a3[14] < v53);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v17 = result;
    v18 = *a4;
    _D0 = *(*a4 + 24) ? *v18 : NAN;
    v20 = HIDWORD(v12);
    v21 = *(v18 + 16);
    if (v21 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v21 == 1)
    {
      __asm { FCVT            H0, D0 }

      WORD1(v74[0]) = _H0;
      LOWORD(v74[0]) = _H0;
      LODWORD(_D0) = v74[0];
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v67 = *&_D0;
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v74, result, a2, a5, a3);
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v71, v17, a2, a6, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v68, v17, a2, a7, a3);
    v27 = a3[13];
    if (a3[14] + v27 < v20)
    {
      v29 = a3[7] * *(a2 + 60);
      v66 = vdupq_n_s32(v67.u32[0]);
      do
      {
        v75 = v29 + v27;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v74);
        v72 = v29 + v27;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v71);
        v69 = v29 + v27;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v68);
        if (a9 >= 4)
        {
          v37 = 0;
          v38 = v74[0];
          v39 = v71[0];
          v40 = v68[0];
          v41 = (v70 + v68[0]);
          v42 = (v73 + v71[0]);
          v43 = (v76 + v74[0]);
          v44 = a11;
          do
          {
            v45 = *v38++;
            v30.i64[0] = v45;
            v46 = *v43++;
            v31.i64[0] = v46;
            v30 = vzip1q_s8(v30, v31);
            v47 = *v39++;
            v31.i64[0] = v47;
            v48 = *v42++;
            v32.i64[0] = v48;
            v49 = *v40++;
            v33.i64[0] = v49;
            v31 = vzip1q_s8(v31, v32);
            v50 = *v41++;
            v32.i64[0] = v50;
            v32 = vzip1q_s8(v33, v32);
            v78.val[0] = vzip1q_s32(v66, v31);
            v78.val[1] = vzip1q_s32(v30, v32);
            v36 = v44 + 16;
            vst2q_f32(v44, v78);
            v51 = v44 + 8;
            v33 = vzip2q_s32(v66, v31);
            v34 = vzip2q_s32(v30, v32);
            vst2q_f32(v51, *v33.i8);
            v35 = v37 + 4;
            result = v37 + 8;
            v37 += 4;
            v44 = v36;
          }

          while (result <= a9);
        }

        else
        {
          v35 = 0;
          v36 = a11;
        }

        if (v35 >= a9)
        {
          v59 = v35;
        }

        else
        {
          v52 = 2 * v35;
          do
          {
            v32.i8[0] = *(v52 + v74[0]);
            v53 = (v52 + v76 + v74[0]);
            v54 = *v53;
            v33.i8[0] = *(v52 + v71[0]);
            v32.i8[4] = *(v52 + v74[0] + 1);
            v33.i8[4] = *(v52 + v71[0] + 1);
            v55 = v53[1];
            v56 = (v52 + v73 + v71[0]);
            v57 = v56[1];
            v34.i8[0] = *(v52 + v68[0]);
            v32.i8[1] = v54;
            v34.i8[4] = *(v52 + v68[0] + 1);
            v33.i8[1] = *v56;
            v58 = (v52 + v70 + v68[0]);
            v32.i8[2] = v32.i8[4];
            v33.i8[2] = v33.i8[4];
            v32.i8[3] = v55;
            v34.i8[1] = *v58;
            v34.i8[2] = v34.i8[4];
            v33.i8[3] = v57;
            v34.i8[3] = v58[1];
            v77.val[0] = vzip1_s32(v67, *v33.i8);
            v77.val[1] = vzip1_s32(*v32.i8, *v34.i8);
            vst2_f32(v36, v77);
            v36 += 4;
            v59 = v35 + 1;
            v52 += 2;
            v60 = v35 + 2;
            ++v35;
          }

          while (v60 <= a9);
        }

        v61 = a9 - v59;
        if (a9 > v59)
        {
          v62 = 2 * v59;
          do
          {
            v63 = (v62 + v76 + v74[0]);
            v30.i32[0] = *(v62 + v74[0]);
            v30.i8[4] = *(v62 + v74[0] + 1);
            v31.i32[0] = *v63;
            v31.i8[4] = v63[1];
            v64 = (v62 + v73 + v71[0]);
            v32.i32[0] = *(v62 + v71[0]);
            v32.i8[4] = *(v62 + v71[0] + 1);
            v33.i32[0] = *v64;
            v33.i8[4] = v64[1];
            v30 = vtrn1q_s16(v30, v31);
            v65 = (v62 + v70 + v68[0]);
            v31.i32[0] = *(v62 + v68[0]);
            v31.i8[4] = *(v62 + v68[0] + 1);
            v32 = vtrn1q_s16(v32, v33);
            v33.i32[0] = *v65;
            v33.i8[4] = v65[1];
            v31 = vtrn1q_s16(v31, v33);
            *v32.i8 = vmovn_s16(v32);
            v33.i32[0] = v67.i32[0];
            v33.i32[1] = vmovn_s16(v30).u32[0];
            v33.i32[2] = v32.i32[0];
            *v30.i8 = vmovn_s16(v31);
            v33.i32[3] = v30.i32[0];
            *v36 = v33;
            v36 += 4;
            v62 += 2;
            --v61;
          }

          while (v61);
        }

        a11 = (a11 + a12);
        v27 += a10;
      }

      while (v27 + a3[14] < v20);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v17 = result;
    v18 = HIDWORD(v12);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v61, result, a2, a4, a3);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v58, v17, a2, a5, a3);
    AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v55, v17, a2, a6, a3);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v52, v17, a2, a7, a3);
    v19 = a3[13];
    if (a3[14] + v19 < v18)
    {
      v46 = a3[7] * *(a2 + 60);
      do
      {
        v62 = v46 + v19;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v61);
        v59 = v46 + v19;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v58);
        v56 = v46 + v19;
        AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v55);
        v53 = v46 + v19;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v52);
        if (a9 >= 8)
        {
          v28 = 0;
          v29 = v61[0];
          v30 = v58[0];
          v31 = v63 + v61[0];
          v32 = v52[0];
          v33 = v55[0];
          v34 = v60 + v58[0];
          v35 = v57 + v55[0];
          result = v54 + v52[0];
          v36 = a11;
          do
          {
            v21.i64[0] = *(v29 + v28);
            v22.i64[0] = *(v31 + v28);
            v21 = vzip1q_s8(v21, v22);
            v22.i64[0] = *(v30 + v28);
            v23.i64[0] = *(v34 + v28);
            v22 = vzip1q_s8(v22, v23);
            v23.i64[0] = *(v33 + v28);
            v24.i64[0] = *(v35 + v28);
            v25.i64[0] = *(v32 + v28);
            v23 = vzip1q_s8(v23, v24);
            v24.i64[0] = *(result + v28);
            v24 = vzip1q_s8(v25, v24);
            v64.val[0] = vzip1q_s16(v21, v23);
            v64.val[1] = vzip1q_s16(v22, v24);
            v27 = v36 + 32;
            vst2q_s16(v36, v64);
            v37 = v36 + 16;
            v25 = vzip2q_s16(v21, v23);
            v64.val[1] = vzip2q_s16(v22, v24);
            vst2q_s16(v37, *v25.i8);
            v26 = v28 + 8;
            v38 = v28 + 16;
            v28 += 8;
            v36 = v27;
          }

          while (v38 <= a9);
        }

        else
        {
          v26 = 0;
          v27 = a11;
        }

        if ((v26 | 2) <= a9)
        {
          do
          {
            v39 = (v26 + v63 + v61[0]);
            v21.i32[0] = *(v26 + v61[0]);
            v21.i8[4] = *(v26 + v61[0] + 1);
            v22.i32[0] = *v39;
            v22.i8[4] = v39[1];
            v21 = vtrn1q_s16(v21, v22);
            *v21.i8 = vmovn_s16(v21);
            v21.i16[2] = v21.i16[1];
            v40 = (v26 + v60 + v58[0]);
            v22.i32[0] = *(v26 + v58[0]);
            v22.i8[4] = *(v26 + v58[0] + 1);
            v23.i32[0] = *v40;
            v23.i8[4] = v40[1];
            v22 = vtrn1q_s16(v22, v23);
            *v22.i8 = vmovn_s16(v22);
            v22.i16[2] = v22.i16[1];
            v41 = (v26 + v57 + v55[0]);
            v23.i32[0] = *(v26 + v55[0]);
            v23.i8[4] = *(v26 + v55[0] + 1);
            v24.i32[0] = *v41;
            v24.i8[4] = v41[1];
            v23 = vtrn1q_s16(v23, v24);
            *v23.i8 = vmovn_s16(v23);
            v23.i16[2] = v23.i16[1];
            v42 = (v26 + v54 + v52[0]);
            v24.i32[0] = *(v26 + v52[0]);
            v24.i8[4] = *(v26 + v52[0] + 1);
            v25.i32[0] = *v42;
            v25.i8[4] = v42[1];
            v24 = vtrn1q_s16(v24, v25);
            *v24.i8 = vmovn_s16(v24);
            v24.i16[2] = v24.i16[1];
            *v25.i8 = vtrn1_s16(*v21.i8, *v23.i8);
            v43 = vtrn1_s16(*v22.i8, *v24.i8);
            vst2_s16(v27, v25);
            v27 += 8;
            v44 = v26 + 4;
            v26 += 2;
          }

          while (v44 <= a9);
        }

        if (v26 < a9)
        {
          do
          {
            LOBYTE(v51) = *(v26 + v61[0]);
            HIBYTE(v51) = *(v26 + v63 + v61[0]);
            LOBYTE(v50) = *(v26 + v58[0]);
            HIBYTE(v50) = *(v26 + v60 + v58[0]);
            LOBYTE(v49) = *(v26 + v55[0]);
            HIBYTE(v49) = *(v26 + v57 + v55[0]);
            LOBYTE(v48) = *(v26 + v52[0]);
            HIBYTE(v48) = *(v26 + v54 + v52[0]);
            LOWORD(v45) = v51;
            WORD1(v45) = v50;
            WORD2(v45) = v49;
            HIWORD(v45) = v48;
            *v27 = v45;
            v27 += 4;
            ++v26;
          }

          while (a9 != v26);
        }

        a11 = (a11 + a12);
        v19 += a10;
      }

      while (v19 + a3[14] < v18);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  v12 = *(a2 + 56);
  if (v12)
  {
    v18 = result;
    v19 = HIDWORD(v12);
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v69, result, a2, a4, a3);
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v66, v18, a2, a5, a3);
    AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v63, v18, a2, a6, a3);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v60, v18, a2, a7, a3);
    v20 = a3[13];
    if (a3[14] + v20 < v19)
    {
      v22 = a3[7] * *(a2 + 60);
      do
      {
        v70 = v22 + v20;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v69);
        v67 = v22 + v20;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v66);
        v64 = v22 + v20;
        AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v63);
        v61 = v22 + v20;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v60);
        if (a9 >= 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = v69[0];
          v35 = v66[0];
          v36 = v60[0];
          v37 = v63[0];
          v38 = v62 + v60[0];
          v39 = v65 + v63[0];
          result = v68 + v66[0];
          v40 = v71 + v69[0];
          v41 = a11;
          do
          {
            v23.i64[0] = *(v34 + v32);
            v24.i64[0] = *(v40 + v32);
            v23 = vzip1q_s8(v23, v24);
            v24.i64[0] = *(v35 + v32);
            v25.i64[0] = *(result + v32);
            v24 = vzip1q_s8(v24, v25);
            v25.i64[0] = *(v37 + v32);
            v26.i64[0] = *(v39 + v32);
            v27.i64[0] = *(v36 + v32);
            v25 = vzip1q_s8(v25, v26);
            v26.i64[0] = *(v38 + v32);
            v26 = vzip1q_s8(v27, v26);
            v72.val[0] = vzip1q_s32(v23, v25);
            v72.val[1] = vzip1q_s32(v24, v26);
            v31 = v41 + 16;
            vst2q_f32(v41, v72);
            v42 = v41 + 8;
            v27 = vzip2q_s32(v23, v25);
            v28 = vzip2q_s32(v24, v26);
            vst2q_f32(v42, *v27.i8);
            v30 = v33 + 4;
            v43 = v33 + 8;
            v32 += 8;
            v33 += 4;
            v41 = v31;
          }

          while (v43 <= a9);
        }

        else
        {
          v30 = 0;
          v31 = a11;
        }

        if (v30 >= a9)
        {
          v50 = v30;
        }

        else
        {
          v44 = 2 * v30;
          do
          {
            v24.i8[0] = *(v44 + v69[0]);
            v24.i8[4] = *(v44 + v69[0] + 1);
            v45 = (v44 + v71 + v69[0]);
            v46 = v45[1];
            v26.i8[0] = *(v44 + v66[0]);
            v26.i8[4] = *(v44 + v66[0] + 1);
            v47 = (v44 + v68 + v66[0]);
            v28.i8[0] = *(v44 + v63[0]);
            v28.i8[4] = *(v44 + v63[0] + 1);
            v24.i8[1] = *v45;
            v48 = (v44 + v65 + v63[0]);
            v26.i8[1] = *v47;
            v29.i8[0] = *(v44 + v60[0]);
            v29.i8[4] = *(v44 + v60[0] + 1);
            v24.i8[2] = v24.i8[4];
            v28.i8[1] = *v48;
            v26.i8[2] = v26.i8[4];
            v49 = (v44 + v62 + v60[0]);
            v28.i8[2] = v28.i8[4];
            v24.i8[3] = v46;
            v26.i8[3] = v47[1];
            v29.i8[1] = *v49;
            v29.i8[2] = v29.i8[4];
            v28.i8[3] = v48[1];
            v29.i8[3] = v49[1];
            *v23.i8 = vzip1_s32(*v24.i8, *v28.i8);
            *v24.i8 = vzip1_s32(*v26.i8, v29);
            vst2_f32(v31, v23);
            v31 += 4;
            v50 = v30 + 1;
            v44 += 2;
            v51 = v30 + 2;
            ++v30;
          }

          while (v51 <= a9);
        }

        v52 = a9 - v50;
        if (a9 > v50)
        {
          v53 = 2 * v50;
          do
          {
            v54 = (v53 + v71 + v69[0]);
            v55 = (v54 + 1);
            v23.i32[0] = *(v53 + v69[0]);
            v23.i8[4] = *(v53 + v69[0] + 1);
            v24.i32[0] = *v54;
            v56 = (v53 + v68 + v66[0]);
            v24.i8[4] = *v55;
            v25.i32[0] = *(v53 + v66[0]);
            v25.i8[4] = *(v53 + v66[0] + 1);
            v26.i32[0] = *v56;
            v26.i8[4] = v56[1];
            v57 = vtrn1q_s16(v23, v24);
            v58 = (v53 + v65 + v63[0]);
            v24.i32[0] = *(v53 + v63[0]);
            v25 = vtrn1q_s16(v25, v26);
            v24.i8[4] = *(v53 + v63[0] + 1);
            v26.i32[0] = *v58;
            v26.i8[4] = v58[1];
            v23.i32[0] = vmovn_s16(v57).u32[0];
            *v25.i8 = vmovn_s16(v25);
            v59 = (v53 + v62 + v60[0]);
            v27.i32[0] = *(v53 + v60[0]);
            v24 = vtrn1q_s16(v24, v26);
            v27.i8[4] = *(v53 + v60[0] + 1);
            v26.i32[0] = *v59;
            v26.i8[4] = v59[1];
            v26 = vtrn1q_s16(v27, v26);
            v23.i32[1] = v25.i32[0];
            v23.i32[2] = vmovn_s16(v24).u32[0];
            *v24.i8 = vmovn_s16(v26);
            v23.i32[3] = v24.i32[0];
            *v31 = v23;
            v31 += 4;
            v53 += 2;
            --v52;
          }

          while (v52);
        }

        a11 = (a11 + a12);
        v20 += a10;
      }

      while (v20 + a3[14] < v19);
    }
  }

  return result;
}

uint64_t TileDecoder_ScanlineCompressed::ExtractPlane(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = *(a4 + 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 104);
  v15[0] = 0;
  v15[1] = 0;
  v17 = 0;
  v16 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a5, v10, v11, v15);
  if (HIDWORD(v16) && v17)
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      v13 = 2 * (*(v13 + 8) != 0);
    }

    if (*(*(a4 + 8) + 72) == 1)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    return (TileDecoder_ScanlineCompressed::ExtractPlane(void const*,unsigned long,ChannelInfo const&,TileInfo const&,void *,unsigned long,long)const::kFuncTable[v14])(a2, a1, a5, a4, LODWORD(v15[0]));
  }

  return result;
}

void CompressedPlanar<unsigned short,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, unsigned int a7, int16x8_t *a8, uint64_t a9)
{
  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *a4;
    _D0 = *(*a4 + 24) ? *v10 : NAN;
    v12 = HIDWORD(v9);
    v13 = *(v10 + 16);
    if (v13 == 2)
    {
      *&v14 = _D0;
    }

    else if (v13 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v36) = _H0;
      LOWORD(v36) = _H0;
      v14 = v36;
    }

    else
    {
      v14 = _D0;
    }

    v20 = *(a3 + 52);
    if (*(a3 + 56) + v20 < v12)
    {
      v21 = v14;
      v22 = vdupq_n_s16(v14);
      do
      {
        if (a6 >= 0x20)
        {
          v25 = 0;
          v26 = a8;
          do
          {
            v24 = v26 + 4;
            *v26 = v22;
            v26[1] = v22;
            v26[2] = v22;
            v26[3] = v22;
            v23 = v25 + 32;
            v27 = v25 + 64;
            v25 += 32;
            v26 += 4;
          }

          while (v27 <= a6);
        }

        else
        {
          v23 = 0;
          v24 = a8;
        }

        v28 = v23 | 8;
        while (v28 <= a6)
        {
          *v24++ = v22;
          v28 = v23 + 16;
          v23 += 8;
        }

        v29 = a6 - v23;
        if (a6 > v23)
        {
          v30 = 0;
          v31 = vdupq_n_s64(v29 - 1);
          v32 = &v24->i16[4];
          do
          {
            v33 = vdupq_n_s64(v30);
            v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_296B8F100)));
            if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
            {
              *(v32 - 4) = v21;
            }

            if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
            {
              *(v32 - 3) = v21;
            }

            if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_296B8F0F0)))), *&v22).i8[2])
            {
              *(v32 - 2) = v21;
              *(v32 - 1) = v21;
            }

            v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_296B8F120)));
            if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
            {
              *v32 = v21;
            }

            if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
            {
              v32[1] = v21;
            }

            if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_296B8F110))))).i8[6])
            {
              v32[2] = v21;
              v32[3] = v21;
            }

            v30 += 8;
            v32 += 8;
          }

          while (((v29 + 7) & 0xFFFFFFFFFFFFFFF8) != v30);
        }

        a8 = (a8 + a9);
        v20 += a7;
      }

      while (v20 + *(a3 + 56) < v12);
    }
  }
}

void CompressedPlanar<unsigned int,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, unsigned int a7, int32x4_t *a8, uint64_t a9)
{
  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *a4;
    _D0 = *(*a4 + 24) ? *v10 : NAN;
    v12 = HIDWORD(v9);
    v13 = *(v10 + 16);
    if (v13 == 2)
    {
      *&_D0 = _D0;
    }

    else if (v13 == 1)
    {
      __asm { FCVT            H0, D0 }

      HIWORD(v33) = _H0;
      LOWORD(v33) = _H0;
      LODWORD(_D0) = v33;
    }

    else
    {
      LODWORD(_D0) = _D0;
    }

    v19 = *(a3 + 52);
    if (*(a3 + 56) + v19 < v12)
    {
      v20 = vdupq_n_s32(LODWORD(_D0));
      do
      {
        if (a6 >= 0x20)
        {
          v23 = 0;
          v24 = a8;
          do
          {
            v22 = v24 + 8;
            *v24 = v20;
            v24[1] = v20;
            v24[2] = v20;
            v24[3] = v20;
            v24[4] = v20;
            v24[5] = v20;
            v21 = v23 + 32;
            v25 = v23 + 64;
            v23 += 32;
            v24[6] = v20;
            v24[7] = v20;
            v24 += 8;
          }

          while (v25 <= a6);
        }

        else
        {
          v21 = 0;
          v22 = a8;
        }

        v26 = v21 | 8;
        while (v26 <= a6)
        {
          *v22 = v20;
          v22[1] = v20;
          v22 += 2;
          v26 = v21 + 16;
          v21 += 8;
        }

        v27 = a6 - v21;
        if (a6 > v21)
        {
          v28 = 0;
          v29 = vdupq_n_s64(v27 - 1);
          v30 = &v22->i32[2];
          do
          {
            v31 = vdupq_n_s64(v28);
            v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_296B8F100)));
            if (vuzp1_s16(v32, *&_D0).u8[0])
            {
              *(v30 - 2) = LODWORD(_D0);
            }

            if (vuzp1_s16(v32, *&_D0).i8[2])
            {
              *(v30 - 1) = LODWORD(_D0);
            }

            if (vuzp1_s16(*&_D0, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_296B8F0F0)))).i32[1])
            {
              *v30 = LODWORD(_D0);
              v30[1] = LODWORD(_D0);
            }

            v28 += 4;
            v30 += 4;
          }

          while (((v27 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v28);
        }

        a8 = (a8 + a9);
        v19 += a7;
      }

      while (v19 + *(a3 + 56) < v12);
    }
  }
}