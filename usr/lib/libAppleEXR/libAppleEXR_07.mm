unint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t a5, uint64_t **a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v16 = result;
    v17 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v18 = _D0;
    }

    else
    {
      v18 = 32256;
    }

    v206 = 2;
    v24 = *(a5 + 8);
    v25 = a3[3];
    v204 = v25.i32[0];
    v202 = v24;
    v200[1] = result;
    v203 = a3[6].i32[1] + v25.i32[1] * v17;
    v26 = a3[7].u32[1];
    v201 = vmin_u32(vmls_s32(*(*(*&v24[5] + 8 * v26) + 16), v24[6], v25), v24[6]).u32[0];
    v205 = v26;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v200);
    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v27 = _D0;
    }

    else
    {
      v27 = 32256;
    }

    v199 = 2;
    v29 = *(a7 + 8);
    v30 = a3[3];
    v197 = v30.i32[0];
    v195 = v29;
    v193[1] = v16;
    v196 = a3[6].i32[1] + v30.i32[1] * v17;
    v31 = a3[7].u32[1];
    v194 = vmin_u32(vmls_s32(*(*(*&v29[5] + 8 * v31) + 16), v29[6], v30), v29[6]).u32[0];
    v198 = v31;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v193);
    v33 = a3[6].u32[1];
    if (a3[7].u32[0] + v33 < v17)
    {
      v35 = a3[3].i32[1] * *(a2 + 60);
      v36 = a3[5].u32[1];
      v37 = v36 + a9;
      v207.val[1] = vdupq_n_s16(v27);
      v207.val[0] = vdupq_n_s16(v18);
      v38 = vqtbl2q_s8(v207, xmmword_296B6EDD0);
      do
      {
        v191 = v38;
        v192 = v32;
        v203 = v35 + v33;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v200);
        v196 = v35 + v33;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v193);
        v41.i64[0] = 0xFFFFFFFF00000000;
        v41.i64[1] = 0xFFFFFFFF00000000;
        v38 = v191;
        v32 = v192;
        v42 = v200[0];
        if (v200[0])
        {
          v43 = v193[0];
          if (v193[0])
          {
            if (v36 >= 0x20)
            {
              v47 = 0;
              v45 = 0;
              v44 = 0;
              v48 = v201 + v200[0];
              v49 = v194 + v193[0];
              do
              {
                v51 = *(v200[0] + v47);
                v50 = *(v200[0] + v47 + 16);
                v53 = *(v48 + v47);
                v52 = *(v48 + v47 + 16);
                v54 = vzip1q_s8(v53, v51);
                v55 = vzip2q_s8(v53, v51);
                v56 = vzip1q_s8(v52, v50);
                v57 = vzip2q_s8(v52, v50);
                v58 = vaddq_s16(vshlq_n_s32(v54, 0x10uLL), v54);
                v59 = vaddq_s16(vshlq_n_s32(v55, 0x10uLL), v55);
                v60 = vaddq_s16(vshlq_n_s32(v56, 0x10uLL), v56);
                v61 = vaddq_s16(vshlq_n_s32(v57, 0x10uLL), v57);
                v62 = vaddq_s16(vandq_s8(vqtbl1q_s8(v61, xmmword_296B8F090), v41), v61);
                v63 = vaddq_s16(vandq_s8(vqtbl1q_s8(v60, xmmword_296B8F090), v41), v60);
                v64 = vaddq_s16(vandq_s8(vqtbl1q_s8(v59, xmmword_296B8F090), v41), v59);
                v65 = vaddq_s16(vandq_s8(vqtbl1q_s8(v58, xmmword_296B8F090), v41), v58);
                v67 = *(v193[0] + v47);
                v66 = *(v193[0] + v47 + 16);
                v69 = *(v49 + v47);
                v68 = *(v49 + v47 + 16);
                v70 = vzip1q_s8(v69, v67);
                v71 = vzip2q_s8(v69, v67);
                v72 = vzip1q_s8(v68, v66);
                v73 = vzip2q_s8(v68, v66);
                v74 = vaddq_s16(vshlq_n_s32(v70, 0x10uLL), v70);
                v75 = vaddq_s16(vshlq_n_s32(v71, 0x10uLL), v71);
                v76 = vaddq_s16(vshlq_n_s32(v72, 0x10uLL), v72);
                v77 = vaddq_s16(vshlq_n_s32(v73, 0x10uLL), v73);
                v78 = vaddq_s16(vandq_s8(vqtbl1q_s8(v77, xmmword_296B8F090), v41), v77);
                v79 = vaddq_s16(vandq_s8(vqtbl1q_s8(v76, xmmword_296B8F090), v41), v76);
                v80 = vaddq_s16(vandq_s8(vqtbl1q_s8(v75, xmmword_296B8F090), v41), v75);
                v81 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v65.i8, 3), v65), vaddq_s16(vdupq_lane_s16(*v64.i8, 3), v64));
                v82 = vaddq_s16(vandq_s8(vqtbl1q_s8(v74, xmmword_296B8F090), v41), v74);
                v83 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*&v63, 3), v63), vaddq_s16(vdupq_lane_s16(*&v62, 3), v62)), v81).u16[7];
                v40 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v79.i8, 3), v79), vaddq_s16(vdupq_lane_s16(*v78.i8, 3), v78));
                v39 = vaddq_s16(v40, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v82.i8, 3), v82), vaddq_s16(vdupq_lane_s16(*v80.i8, 3), v80)));
                v45 += v83;
                v44 += v39.u16[7];
                v84 = v47 + 64;
                v47 += 32;
              }

              while (v84 <= v36);
              v46 = v36 & 0xFFFFFFE0;
            }

            else
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
            }

            if ((v46 | 8) <= v36)
            {
              do
              {
                v39.i64[0] = *(v200[0] + v46);
                v40.i64[0] = *(v201 + v200[0] + v46);
                v86 = vzip1q_s8(v40, v39);
                v87 = vaddq_s16(vshlq_n_s32(v86, 0x10uLL), v86);
                v88 = vextq_s8(v87, v87, 0xCuLL);
                v89 = vaddq_s16(v88, v87);
                v90 = v89.u16[3];
                v89.i64[0] = *(v193[0] + v46);
                v45 += v89.u16[7] + v90;
                v88.i64[0] = *(v194 + v193[0] + v46);
                v91 = vzip1q_s8(v88, v89);
                v92 = vaddq_s16(vshlq_n_s32(v91, 0x10uLL), v91);
                v40 = vextq_s8(v92, v92, 0xCuLL);
                v39 = vaddq_s16(v40, v92);
                v44 += v39.u16[7] + v39.u16[3];
                v85 = v46 + 8;
                v93 = v46 + 16;
                v46 += 8;
              }

              while (v93 <= v36);
            }

            else
            {
              v85 = v46;
            }

            v94 = v36 - v85;
            if (v36 > v85)
            {
              v95 = (v85 + v200[0] + v201);
              v96 = (v200[0] + v85);
              v97 = (v85 + v193[0] + v194);
              v98 = (v193[0] + v85);
              do
              {
                v100 = *v96++;
                v99 = v100;
                v101 = *v95++;
                v102 = v101 | (v99 << 8);
                v103 = *v98++;
                result = v103;
                v45 += v102;
                v104 = *v97++;
                v44 += v104 | (result << 8);
                --v94;
              }

              while (v94);
              v85 = v36;
            }

            if (v85 + 32 <= v37)
            {
              v107 = v201 + v200[0];
              v108 = v194 + v193[0];
              v109 = a11;
              do
              {
                v111 = *(v42 + v85);
                v110 = *(v42 + v85 + 16);
                v113 = *(v107 + v85);
                v112 = *(v107 + v85 + 16);
                v114 = vzip2q_s8(v113, v111);
                v115 = vzip2q_s8(v112, v110);
                v116 = vzip1q_s8(v112, v110);
                v117 = vzip1q_s8(v113, v111);
                v118 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                v119 = vaddq_s16(vshlq_n_s32(v115, 0x10uLL), v115);
                v120 = vaddq_s16(vshlq_n_s32(v116, 0x10uLL), v116);
                v121 = vaddq_s16(vshlq_n_s32(v117, 0x10uLL), v117);
                v122 = vaddq_s16(vandq_s8(vqtbl1q_s8(v121, xmmword_296B8F090), v41), v121);
                v123 = vaddq_s16(vandq_s8(vqtbl1q_s8(v119, xmmword_296B8F090), v41), v119);
                v124 = vaddq_s16(vandq_s8(vqtbl1q_s8(v118, xmmword_296B8F090), v41), v118);
                v125 = vaddq_s16(vandq_s8(vqtbl1q_s8(v120, xmmword_296B8F090), v41), v120);
                v126 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v125.i8, 3), xmmword_296B8F0A0), v125);
                v127 = vdupq_n_s16(v45);
                v129 = *(v43 + v85);
                v128 = *(v43 + v85 + 16);
                v130 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v122.i8, 3), xmmword_296B8F0A0), v122);
                v132 = *(v108 + v85);
                v131 = *(v108 + v85 + 16);
                v133 = vzip2q_s8(v132, v129);
                v134 = vdupq_laneq_s16(v130, 7);
                v135 = vzip2q_s8(v131, v128);
                v136 = vzip1q_s8(v131, v128);
                v137 = vzip1q_s8(v132, v129);
                v138 = vdupq_laneq_s16(v126, 7);
                v139 = vaddq_s16(vshlq_n_s32(v133, 0x10uLL), v133);
                v140 = vaddq_s16(vshlq_n_s32(v135, 0x10uLL), v135);
                v141 = vaddq_s16(v126, v127);
                v142 = vaddq_s16(vshlq_n_s32(v136, 0x10uLL), v136);
                v143 = vaddq_s16(vshlq_n_s32(v137, 0x10uLL), v137);
                v144 = vaddq_s16(v130, v127);
                v145 = vaddq_s16(v138, vaddq_s16(vandq_s8(vdupq_lane_s16(*v123.i8, 3), xmmword_296B8F0A0), v123));
                v146 = vaddq_s16(vandq_s8(vqtbl1q_s8(v142, xmmword_296B8F090), v41), v142);
                v147 = vaddq_s16(vandq_s8(vqtbl1q_s8(v140, xmmword_296B8F090), v41), v140);
                v148 = vaddq_s16(vandq_s8(vqtbl1q_s8(v139, xmmword_296B8F090), v41), v139);
                v149 = vaddq_s16(v134, vaddq_s16(vandq_s8(vdupq_lane_s16(*v124.i8, 3), xmmword_296B8F0A0), v124));
                v150 = vdupq_laneq_s16(v149, 7);
                v151 = vaddq_s16(vandq_s8(vqtbl1q_s8(v143, xmmword_296B8F090), v41), v143);
                v152 = vaddq_s16(v145, v127);
                v153 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v148.i8, 3), xmmword_296B8F0A0), v148);
                v154 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v146.i8, 3), xmmword_296B8F0A0), v146);
                v155 = vaddq_s16(v149, v127);
                v156 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v151.i8, 3), xmmword_296B8F0A0), v151);
                v157 = vaddq_s16(v152, v150);
                v158 = vaddq_s16(vdupq_laneq_s16(v156, 7), v153);
                v159 = vdupq_laneq_s16(v158, 7);
                v160 = vdupq_n_s16(v44);
                v161 = vaddq_s16(v141, v150);
                v162 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v154, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v147.i8, 3), xmmword_296B8F0A0), v147)), v160), v159);
                v45 = v157.u16[7];
                v163 = vaddq_s16(vaddq_s16(v154, v160), v159);
                v164 = vaddq_s16(v158, v160);
                v165 = vaddq_s16(v156, v160);
                v210.val[1] = vzip1q_s16(v144, v165);
                v166 = v109 + 32;
                v32 = vzip2q_s16(v157, v162);
                v167 = v109 + 48;
                v168 = v109 + 64;
                v169 = v109 + 80;
                v170 = v109 + 96;
                v171 = v109 + 112;
                v210.val[0] = v191;
                v172 = v109;
                vst2q_s16(v172, v210);
                v172 += 16;
                v210.val[1] = vzip1q_s16(v155, v164);
                v210.val[0] = v191;
                vst2q_s16(v166, v210);
                v209.val[1] = vzip2q_s16(v155, v164);
                v209.val[0] = v191;
                vst2q_s16(v167, v209);
                v209.val[1] = vzip1q_s16(v161, v163);
                v209.val[0] = v191;
                vst2q_s16(v168, v209);
                v209.val[0] = vzip2q_s16(v161, v163);
                v173 = v191;
                vst2q_s16(v169, v209);
                v209.val[0] = vzip1q_s16(v157, v162);
                v174 = v191;
                vst2q_s16(v170, v209);
                v40 = vzip2q_s16(v144, v165);
                v39 = v191;
                vst2q_s16(v172, *v39.i8);
                v44 = v162.u16[7];
                vst2q_s16(v171, *(&v32 - 1));
                v106 = v109 + 128;
                v105 = v85 + 32;
                result = v85 + 64;
                v85 += 32;
                v109 += 128;
              }

              while (result <= v37);
            }

            else
            {
              v105 = v85;
              v106 = a11;
            }

            if (v105 + 8 <= v37)
            {
              v177 = v201 + v42;
              v178 = v194 + v43;
              do
              {
                v39.i64[0] = *(v42 + v105);
                v40.i64[0] = *(v177 + v105);
                v179 = vzip1q_s8(v40, v39);
                v180 = vaddq_s16(vshlq_n_s32(v179, 0x10uLL), v179);
                v181 = vaddq_s16(vandq_s8(vqtbl1q_s8(v180, xmmword_296B8F090), v41), v180);
                v182 = vandq_s8(vdupq_lane_s16(*v181.i8, 3), xmmword_296B8F0A0);
                v183 = vdupq_n_s16(v45);
                v184 = vaddq_s16(vaddq_s16(v181, v183), v182);
                v45 = v184.u16[7];
                v182.i64[0] = *(v43 + v105);
                v183.i64[0] = *(v178 + v105);
                v185 = vzip1q_s8(v183, v182);
                v186 = vaddq_s16(vshlq_n_s32(v185, 0x10uLL), v185);
                v187 = vaddq_s16(vandq_s8(vqtbl1q_s8(v186, xmmword_296B8F090), v41), v186);
                v188 = vaddq_s16(vaddq_s16(v187, vdupq_n_s16(v44)), vandq_s8(vdupq_lane_s16(*v187.i8, 3), xmmword_296B8F0A0));
                v44 = v188.u16[7];
                v208.val[1] = vzip1q_s16(v184, v188);
                v176 = v106 + 32;
                v208.val[0] = v191;
                vst2q_s16(v106, v208);
                v189 = v106 + 16;
                v40 = vzip2q_s16(v184, v188);
                v39 = v191;
                vst2q_s16(v189, *v39.i8);
                v175 = v105 + 8;
                result = v105 + 16;
                v105 += 8;
                v106 = v176;
              }

              while (result <= v37);
            }

            else
            {
              v175 = v105;
              v176 = v106;
            }

            if (v175 < v37)
            {
              do
              {
                v45 += *(v200[0] + v175 + v201) | (*(v200[0] + v175) << 8);
                LOWORD(v190) = v18;
                WORD1(v190) = v45;
                WORD2(v190) = v27;
                v44 += *(v193[0] + v175 + v194) | (*(v193[0] + v175) << 8);
                HIWORD(v190) = v44;
                *v176 = v190;
                v176 += 4;
                ++v175;
              }

              while (v37 != v175);
            }
          }
        }

        a11 = (a11 + a12);
        v33 += a10;
      }

      while (v33 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v16 = result;
    v17 = HIDWORD(*(a2 + 56));
    v18 = *(*a4 + 24) ? **a4 : NAN;
    v191 = v18;
    v208 = 3;
    v19 = *(a5 + 8);
    v20 = a3[3];
    v206 = v20.i32[0];
    v204 = v19;
    v202[1] = result;
    v205 = a3[6].i32[1] + v20.i32[1] * v17;
    v21 = a3[7].u32[1];
    v203 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v207 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v202);
    v22 = *(*a6 + 24) ? **a6 : NAN;
    v190 = v22;
    v201 = 3;
    v23 = *(a7 + 8);
    v24 = a3[3];
    v199 = v24.i32[0];
    v197 = v23;
    v195[1] = v16;
    v198 = a3[6].i32[1] + v24.i32[1] * v17;
    v25 = a3[7].u32[1];
    v196 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v200 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
    v26 = a3[6].u32[1];
    if (a3[7].u32[0] + v26 < v17)
    {
      v28 = a3[3].i32[1] * *(a2 + 60);
      v29 = a3[5].u32[1];
      v30 = v29 + a9;
      v31.i64[0] = __PAIR64__(LODWORD(v190), LODWORD(v191));
      v31.i64[1] = __PAIR64__(LODWORD(v190), LODWORD(v191));
      v193 = v31;
      do
      {
        v205 = v28 + v26;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v202);
        v198 = v28 + v26;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
        v36 = 0uLL;
        v37 = v202[0];
        if (v202[0])
        {
          v38 = v195[0];
          if (v195[0])
          {
            if (v29 >= 0x20)
            {
              v42 = 0;
              v43 = v202[0] + 2 * v203;
              v44 = v203 + v202[0];
              v45 = v195[0] + 2 * v196;
              v46 = v196 + v195[0];
              v40.i64[0] = 0;
              v194 = 0;
              v41 = xmmword_296B8F020;
              do
              {
                v209.val[1] = *(v202[0] + v42);
                v212.val[1] = *(v202[0] + v42 + 16);
                v209.val[0] = *(v43 + v42);
                v212.val[0] = *(v43 + v42 + 16);
                v214.val[1] = vqtbl2q_s8(v209, xmmword_296B8F050);
                v48 = *(v44 + v42);
                v47 = *(v44 + v42 + 16);
                v214.val[0] = vqtbl1q_s8(v48, xmmword_296B8F0B0);
                v214.val[0] = vqtbl2q_s8(v214, v41);
                v219.val[1] = vqtbl2q_s8(v212, xmmword_296B8F050);
                v219.val[0] = vqtbl1q_s8(v47, xmmword_296B8F0B0);
                v214.val[1] = vqtbl2q_s8(v219, v41);
                v219.val[1] = vqtbl2q_s8(v212, xmmword_296B8F000);
                v219.val[0] = vqtbl1q_s8(v47, xmmword_296B8F0C0);
                v219.val[0] = vqtbl2q_s8(v219, v41);
                v49 = vqtbl2q_s8(v209, xmmword_296B8F070);
                v219.val[1] = vqtbl1q_s8(v48, xmmword_296B8F0D0);
                v219.val[1] = vqtbl2q_s8(*(&v219 + 16), v41);
                v221.val[1] = vqtbl2q_s8(v209, xmmword_296B8F000);
                v221.val[0] = vqtbl1q_s8(v48, xmmword_296B8F0C0);
                v221.val[0] = vqtbl2q_s8(v221, v41);
                v209.val[1] = vqtbl2q_s8(v209, xmmword_296B8F030);
                v209.val[0] = vqtbl1q_s8(v48, xmmword_296B8F0E0);
                v50 = vqtbl2q_s8(v209, v41);
                v209.val[1] = vqtbl2q_s8(v212, xmmword_296B8F070);
                v209.val[0] = vqtbl1q_s8(v47, xmmword_296B8F0D0);
                v221.val[1] = vqtbl2q_s8(v209, v41);
                v209.val[1] = vqtbl2q_s8(v212, xmmword_296B8F030);
                v209.val[0] = vqtbl1q_s8(v47, xmmword_296B8F0E0);
                v212.val[1] = vqtbl2q_s8(v209, v41);
                v209.val[0] = vaddq_s32(vshlq_n_s64(v214.val[0], 0x20uLL), v214.val[0]);
                v209.val[1] = vaddq_s32(vshlq_n_s64(v214.val[1], 0x20uLL), v214.val[1]);
                v212.val[0] = vaddq_s32(vshlq_n_s64(v219.val[0], 0x20uLL), v219.val[0]);
                v219.val[1] = vaddq_s32(vshlq_n_s64(v219.val[1], 0x20uLL), v219.val[1]);
                v51 = vaddq_s32(vshlq_n_s64(v50, 0x20uLL), v50);
                v214.val[1] = vaddq_s32(vshlq_n_s64(v221.val[1], 0x20uLL), v221.val[1]);
                v212.val[1] = vaddq_s32(vshlq_n_s64(v212.val[1], 0x20uLL), v212.val[1]);
                v221.val[0] = vaddq_s32(vshlq_n_s64(v221.val[0], 0x20uLL), v221.val[0]);
                v223.val[1] = *(v195[0] + v42);
                v225.val[1] = *(v195[0] + v42 + 16);
                v53 = *(v46 + v42);
                v52 = *(v46 + v42 + 16);
                v223.val[0] = *(v45 + v42);
                v225.val[0] = *(v45 + v42 + 16);
                v228.val[1] = vqtbl2q_s8(v223, xmmword_296B8F050);
                v228.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0B0);
                v221.val[1] = vdupq_lane_s32(*v212.val[0].i8, 1);
                v228.val[0] = vqtbl2q_s8(v228, v41);
                v216.val[1] = vqtbl2q_s8(v225, xmmword_296B8F050);
                v216.val[0] = vqtbl1q_s8(v52, xmmword_296B8F0B0);
                v228.val[1] = vqtbl2q_s8(v216, v41);
                v216.val[1] = vqtbl2q_s8(v225, xmmword_296B8F000);
                v216.val[0] = vqtbl1q_s8(v52, xmmword_296B8F0C0);
                v54 = vqtbl2q_s8(v216, v41);
                v216.val[1] = vqtbl2q_s8(v223, xmmword_296B8F070);
                v216.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0D0);
                v216.val[0] = vqtbl2q_s8(v216, v41);
                v55 = vqtbl2q_s8(v223, xmmword_296B8F000);
                v216.val[1] = vqtbl1q_s8(v53, xmmword_296B8F0C0);
                v56 = vqtbl2q_s8(*(&v216 + 16), xmmword_296B8F020);
                v41 = xmmword_296B8F020;
                v216.val[1] = vdupq_lane_s32(*v209.val[1].i8, 1);
                v223.val[1] = vqtbl2q_s8(v223, xmmword_296B8F030);
                v223.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0E0);
                v219.val[0] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v225, xmmword_296B8F070);
                v223.val[0] = vqtbl1q_s8(v52, xmmword_296B8F0D0);
                v57 = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v225, xmmword_296B8F030);
                v223.val[0] = vqtbl1q_s8(v52, xmmword_296B8F0E0);
                v225.val[0] = vdupq_lane_s32(*v209.val[0].i8, 1);
                v225.val[0].i64[0] = 0;
                v216.val[1].i64[0] = 0;
                v221.val[1].i64[0] = 0;
                v214.val[0] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[0] = vaddq_s32(vshlq_n_s64(v228.val[0], 0x20uLL), v228.val[0]);
                v223.val[1] = vaddq_s32(vshlq_n_s64(v228.val[1], 0x20uLL), v228.val[1]);
                v58 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v51.i8, 1), v51), vaddq_s32(vdupq_lane_s32(*v221.val[0].i8, 1), v221.val[0]));
                v221.val[0] = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
                v225.val[1] = vaddq_s32(vshlq_n_s64(v216.val[0], 0x20uLL), v216.val[0]);
                v212.val[0] = vaddq_s32(v221.val[1], v212.val[0]);
                v221.val[1] = vaddq_s32(vshlq_n_s64(v56, 0x20uLL), v56);
                v59 = vaddq_s32(vshlq_n_s64(v57, 0x20uLL), v57);
                v214.val[0] = vaddq_s32(vshlq_n_s64(v214.val[0], 0x20uLL), v214.val[0]);
                v219.val[0] = vaddq_s32(vshlq_n_s64(v219.val[0], 0x20uLL), v219.val[0]);
                v60 = vdupq_lane_s32(*v221.val[0].i8, 1);
                v209.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v219.val[1].i8, 1), v219.val[1]), vaddq_s32(v225.val[0], v209.val[0]));
                v60.i64[0] = 0;
                v219.val[1] = vaddq_s32(v60, v221.val[0]);
                v221.val[0] = vdupq_lane_s32(*v223.val[1].i8, 1);
                v209.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v214.val[1].i8, 1), v214.val[1]), 3), vaddq_s32(v216.val[1], v209.val[1]));
                v221.val[0].i64[0] = 0;
                v35 = vaddq_s32(v221.val[0], v223.val[1]);
                v223.val[1] = vdupq_lane_s32(*v223.val[0].i8, 1);
                v223.val[1].i64[0] = 0;
                v209.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v212.val[1].i8, 1), v212.val[1]), 3), v212.val[0]), v209.val[1]), vaddq_s32(v209.val[0], v58));
                v34 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v225.val[1].i8, 1), v225.val[1]), vaddq_s32(v223.val[1], v223.val[0]));
                v33 = vaddq_s32(v34, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v219.val[0].i8, 1), v219.val[0]), vaddq_s32(vdupq_lane_s32(*v221.val[1].i8, 1), v221.val[1])));
                v61 = v42 + 64;
                v40.i32[0] = vaddq_s32(*&v209, vdupq_lane_s32(*&v40, 0)).i32[3];
                v32 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v214.val[0].i8, 1), v214.val[0]), 3), v219.val[1]), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v59.i8, 1), v59), 3), v35)), v33);
                v42 += 32;
                v62 = vaddq_s32(v32, vdupq_lane_s32(v194, 0));
                v62.i32[0] = v62.i32[3];
                v194 = *v62.i8;
              }

              while (v61 <= v29);
              v39 = v29 & 0xFFFFFFE0;
              v36 = 0uLL;
            }

            else
            {
              v39 = 0;
              v194 = 0;
              v40.i64[0] = 0;
              v41 = xmmword_296B8F020;
            }

            if ((v39 | 8) <= v29)
            {
              do
              {
                v32.i64[0] = *(v202[0] + v39);
                v33.i64[0] = *(v203 + v202[0] + v39);
                v34.i64[0] = *(v202[0] + 2 * v203 + v39);
                v64 = vzip1q_s8(v36, v33);
                v65 = vzip1q_s8(v34, v32);
                v66 = vzip1q_s8(v64, v65);
                v67 = vzip2q_s8(v64, v65);
                v68 = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                v69 = vdupq_lane_s32(*v68.i8, 1);
                v70 = vaddq_s32(vshlq_n_s64(v66, 0x20uLL), v66);
                v71 = vaddq_s32(vdupq_lane_s32(*v70.i8, 1), v70);
                v72 = vaddq_s32(v69, vaddq_s32(v68, vdupq_lane_s32(*v40.i8, 0)));
                v68.i64[0] = *(v195[0] + v39);
                v69.i64[0] = *(v196 + v195[0] + v39);
                v40.i32[0] = v72.i32[3] + v71.i32[3];
                v71.i64[0] = *(v195[0] + 2 * v196 + v39);
                v73 = vzip1q_s8(v36, v69);
                v74 = vzip1q_s8(v71, v68);
                v75 = vzip1q_s8(v73, v74);
                v76 = vzip2q_s8(v73, v74);
                v32 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
                v33 = vdupq_lane_s32(*v32.i8, 1);
                v77 = vaddq_s32(vshlq_n_s64(v75, 0x20uLL), v75);
                v34 = vaddq_s32(vdupq_lane_s32(*v77.i8, 1), v77);
                v78 = vaddq_s32(v33, vaddq_s32(v32, vdupq_lane_s32(v194, 0)));
                v78.i32[0] = v78.i32[3] + v34.i32[3];
                v194 = *v78.i8;
                v63 = v39 + 8;
                v79 = v39 + 16;
                v39 += 8;
              }

              while (v79 <= v29);
            }

            else
            {
              v63 = v39;
            }

            if (v63 <= v29)
            {
              v80 = v29;
            }

            else
            {
              v80 = v63;
            }

            if (v80 + 32 <= v30)
            {
              v83 = v202[0] + 2 * v203;
              v84 = v203 + v202[0];
              v85 = v195[0] + 2 * v196;
              v86 = v196 + v195[0];
              v87 = a11;
              do
              {
                v210.val[1] = *(v37 + v80);
                v213.val[1] = *(v37 + v80 + 16);
                v210.val[0] = *(v83 + v80);
                v213.val[0] = *(v83 + v80 + 16);
                v215.val[1] = vqtbl2q_s8(v210, xmmword_296B8F070);
                v89 = *(v84 + v80);
                v88 = *(v84 + v80 + 16);
                v215.val[0] = vqtbl1q_s8(v89, xmmword_296B8F0D0);
                v220.val[1] = vqtbl2q_s8(v210, xmmword_296B8F030);
                v215.val[0] = vqtbl2q_s8(v215, v41);
                v220.val[0] = vqtbl1q_s8(v89, xmmword_296B8F0E0);
                v215.val[1] = vqtbl2q_s8(v220, v41);
                v220.val[1] = vqtbl2q_s8(v213, xmmword_296B8F070);
                v220.val[0] = vqtbl1q_s8(v88, xmmword_296B8F0D0);
                v222.val[1] = vqtbl2q_s8(v213, xmmword_296B8F030);
                v220.val[0] = vqtbl2q_s8(v220, v41);
                v222.val[0] = vqtbl1q_s8(v88, xmmword_296B8F0E0);
                v220.val[1] = vqtbl2q_s8(v222, v41);
                v222.val[1] = vqtbl2q_s8(v213, xmmword_296B8F000);
                v222.val[0] = vqtbl1q_s8(v88, xmmword_296B8F0C0);
                v213.val[1] = vqtbl2q_s8(v213, xmmword_296B8F050);
                v222.val[0] = vqtbl2q_s8(v222, v41);
                v213.val[0] = vqtbl1q_s8(v88, xmmword_296B8F0B0);
                v90 = vqtbl2q_s8(v213, v41);
                v213.val[1] = vqtbl2q_s8(v210, xmmword_296B8F000);
                v213.val[0] = vqtbl1q_s8(v89, xmmword_296B8F0C0);
                v210.val[1] = vqtbl2q_s8(v210, xmmword_296B8F050);
                v91 = vqtbl2q_s8(v213, v41);
                v210.val[0] = vqtbl1q_s8(v89, xmmword_296B8F0B0);
                v92 = vqtbl2q_s8(v210, v41);
                v213.val[0] = vaddq_s32(vshlq_n_s64(v215.val[0], 0x20uLL), v215.val[0]);
                v213.val[1] = vaddq_s32(vshlq_n_s64(v215.val[1], 0x20uLL), v215.val[1]);
                v210.val[1] = vaddq_s32(vshlq_n_s64(v220.val[0], 0x20uLL), v220.val[0]);
                v210.val[0] = vaddq_s32(vshlq_n_s64(v220.val[1], 0x20uLL), v220.val[1]);
                v93 = vaddq_s32(vshlq_n_s64(v222.val[0], 0x20uLL), v222.val[0]);
                v222.val[1] = vaddq_s32(vshlq_n_s64(v90, 0x20uLL), v90);
                v94 = vaddq_s32(vshlq_n_s64(v91, 0x20uLL), v91);
                v222.val[0] = vaddq_s32(vshlq_n_s64(v92, 0x20uLL), v92);
                v95 = vdupq_lane_s32(*v222.val[0].i8, 1);
                v96 = vdupq_lane_s32(*v94.i8, 1);
                v97 = vdupq_lane_s32(*v222.val[1].i8, 1);
                v220.val[1] = vdupq_lane_s32(*v93.i8, 1);
                v220.val[0] = vdupq_lane_s32(*v210.val[0].i8, 1);
                v98 = vdupq_lane_s32(*v210.val[1].i8, 1);
                v215.val[0] = vdupq_lane_s32(*v213.val[1].i8, 1);
                v215.val[1] = vdupq_lane_s32(*v213.val[0].i8, 1);
                v215.val[1].i64[0] = 0;
                v215.val[0].i64[0] = 0;
                v98.i64[0] = 0;
                v220.val[0].i64[0] = 0;
                v220.val[1].i64[0] = 0;
                v97.i64[0] = 0;
                v96.i64[0] = 0;
                v192 = vdupq_lane_s32(*v40.i8, 0);
                v95.i64[0] = 0;
                v226.val[1] = *(v38 + v80);
                v227.val[1] = *(v38 + v80 + 16);
                v100 = *(v86 + v80);
                v99 = *(v86 + v80 + 16);
                v222.val[0] = vaddq_s32(v95, v222.val[0]);
                v226.val[0] = *(v85 + v80);
                v227.val[0] = *(v85 + v80 + 16);
                v217.val[1] = vqtbl2q_s8(v226, xmmword_296B8F070);
                v217.val[0] = vqtbl1q_s8(v100, xmmword_296B8F0D0);
                v101 = vaddq_s32(v96, v94);
                v102 = vqtbl2q_s8(v217, v41);
                v217.val[1] = vqtbl2q_s8(v226, xmmword_296B8F030);
                v217.val[0] = vqtbl1q_s8(v100, xmmword_296B8F0E0);
                v103 = vqtbl2q_s8(v217, v41);
                v217.val[1] = vqtbl2q_s8(v227, xmmword_296B8F070);
                v222.val[1] = vaddq_s32(v97, v222.val[1]);
                v217.val[0] = vqtbl1q_s8(v99, xmmword_296B8F0D0);
                v104 = vqtbl2q_s8(v217, v41);
                v217.val[1] = vqtbl2q_s8(v227, xmmword_296B8F030);
                v217.val[0] = vqtbl1q_s8(v99, xmmword_296B8F0E0);
                v217.val[0] = vqtbl2q_s8(v217, v41);
                v105 = vaddq_s32(v220.val[1], v93);
                v106 = vqtbl2q_s8(v227, xmmword_296B8F000);
                v217.val[1] = vqtbl1q_s8(v99, xmmword_296B8F0C0);
                v220.val[1] = vqtbl2q_s8(*(&v217 + 16), xmmword_296B8F020);
                v227.val[1] = vqtbl2q_s8(v227, xmmword_296B8F050);
                v227.val[0] = vqtbl1q_s8(v99, xmmword_296B8F0B0);
                v210.val[0] = vaddq_s32(v220.val[0], v210.val[0]);
                v220.val[0] = vqtbl2q_s8(v227, xmmword_296B8F020);
                v227.val[1] = vqtbl2q_s8(v226, xmmword_296B8F000);
                v227.val[0] = vqtbl1q_s8(v100, xmmword_296B8F0C0);
                v227.val[0] = vqtbl2q_s8(v227, xmmword_296B8F020);
                v226.val[1] = vqtbl2q_s8(v226, xmmword_296B8F050);
                v210.val[1] = vaddq_s32(v98, v210.val[1]);
                v226.val[0] = vqtbl1q_s8(v100, xmmword_296B8F0B0);
                v107 = vqtbl2q_s8(v226, xmmword_296B8F020);
                v215.val[0] = vaddq_s32(v215.val[0], v213.val[1]);
                v40 = vaddq_s32(v215.val[1], v213.val[0]);
                v108 = vaddq_s32(vshlq_n_s64(v102, 0x20uLL), v102);
                v109 = vaddq_s32(vshlq_n_s64(v103, 0x20uLL), v103);
                v110 = vaddq_s32(vshlq_n_s64(v217.val[0], 0x20uLL), v217.val[0]);
                v220.val[0] = vaddq_s32(vshlq_n_s64(v220.val[0], 0x20uLL), v220.val[0]);
                v226.val[1] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v111 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                v226.val[0] = vdupq_lane_s32(*v111.i8, 1);
                v227.val[0] = vdupq_lane_s32(*v226.val[1].i8, 1);
                v227.val[1] = vdupq_lane_s32(*v220.val[0].i8, 1);
                v213.val[1] = vaddq_s32(vshlq_n_s64(v220.val[1], 0x20uLL), v220.val[1]);
                v220.val[1] = vdupq_lane_s32(*v213.val[1].i8, 1);
                v217.val[0] = vdupq_lane_s32(*v110.i8, 1);
                v112 = vaddq_s32(vshlq_n_s64(v104, 0x20uLL), v104);
                v113 = vdupq_lane_s32(*v112.i8, 1);
                v217.val[1] = vdupq_lane_s32(*v109.i8, 1);
                v213.val[0] = vaddq_s32(vdupq_laneq_s32(v210.val[1], 3), v222.val[1]);
                v222.val[1] = vdupq_lane_s32(*v108.i8, 1);
                v222.val[1].i64[0] = 0;
                v114 = vaddq_s32(vdupq_laneq_s32(v215.val[0], 3), v101);
                v217.val[1].i64[0] = 0;
                v113.i64[0] = 0;
                v222.val[0] = vaddq_s32(vdupq_laneq_s32(v40, 3), v222.val[0]);
                v217.val[0].i64[0] = 0;
                v226.val[0].i64[0] = 0;
                v115 = vdupq_laneq_s32(v222.val[0], 3);
                v116 = vaddq_s32(v226.val[0], v111);
                v227.val[0].i64[0] = 0;
                v226.val[1] = vaddq_s32(v227.val[0], v226.val[1]);
                v35 = vdupq_laneq_s32(v213.val[0], 3);
                v117 = vaddq_s32(v40, v192);
                v220.val[1].i64[0] = 0;
                v227.val[1].i64[0] = 0;
                v226.val[0] = vaddq_s32(v222.val[0], v192);
                v213.val[1] = vaddq_s32(v220.val[1], v213.val[1]);
                v118 = vaddq_s32(v217.val[0], v110);
                v119 = vaddq_s32(v113, v112);
                v227.val[0] = vaddq_s32(v217.val[1], v109);
                v120 = vaddq_s32(v114, v115);
                v218.val[0] = v193;
                v121 = vaddq_s32(v222.val[1], v108);
                v41 = xmmword_296B8F020;
                v122 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v210.val[0], 3), v105), v35);
                v123 = vdupq_laneq_s32(v120, 3);
                v222.val[0] = vaddq_s32(vdupq_laneq_s32(v119, 3), vaddq_s32(v227.val[1], v220.val[0]));
                v217.val[0] = vaddq_s32(vdupq_laneq_s32(v121, 3), v116);
                v227.val[1] = vdupq_laneq_s32(v217.val[0], 3);
                v220.val[1] = vaddq_s32(v122, v192);
                v226.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v227.val[0], 3), v226.val[1]), v227.val[1]);
                v220.val[0] = vdupq_laneq_s32(v222.val[0], 3);
                v124 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v118, 3), v213.val[1]), v220.val[0]);
                v213.val[1] = vaddq_s32(v220.val[1], v123);
                v220.val[1] = vdupq_laneq_s32(v226.val[1], 3);
                v222.val[1] = vdupq_lane_s32(v194, 0);
                v125 = vaddq_s32(vaddq_s32(v124, v222.val[1]), v220.val[1]);
                v126 = vaddq_s32(v217.val[0], v222.val[1]);
                v127 = vaddq_s32(v121, v222.val[1]);
                v218.val[1] = vzip2q_s32(v213.val[1], v125);
                v217.val[1] = vzip1q_s32(v117, v127);
                v128 = v87 + 16;
                v217.val[0] = v193;
                v129 = v87;
                vst2q_f32(v129, v217);
                v129 += 8;
                v217.val[1] = vzip1q_s32(v226.val[0], v126);
                vst2q_f32(v128, v217);
                v215.val[0] = vaddq_s32(vaddq_s32(v215.val[0], v192), v115);
                v130 = vaddq_s32(vaddq_s32(v227.val[0], v222.val[1]), v227.val[1]);
                v131 = v87 + 24;
                v132 = v87 + 32;
                v227.val[1] = vzip2q_s32(v226.val[0], v126);
                v227.val[0] = v193;
                vst2q_f32(v131, v227);
                v227.val[1] = vzip1q_s32(v215.val[0], v130);
                vst2q_f32(v132, v227);
                v227.val[1] = vzip2q_s32(v117, v127);
                v227.val[0] = v193;
                vst2q_f32(v129, v227);
                v133 = v87 + 40;
                v134 = v87 + 48;
                v135 = vaddq_s32(v120, v192);
                v136 = vaddq_s32(v226.val[1], v222.val[1]);
                v226.val[0] = vzip2q_s32(v215.val[0], v130);
                v137 = v193;
                vst2q_f32(v133, v226);
                v226.val[0] = vzip1q_s32(v135, v136);
                v138 = v193;
                vst2q_f32(v134, v226);
                v139 = v87 + 56;
                v140 = v87 + 64;
                v210.val[1] = vaddq_s32(vaddq_s32(v210.val[1], v192), v123);
                v36 = vaddq_s32(vaddq_s32(v119, v222.val[1]), v220.val[1]);
                v224.val[1] = vzip2q_s32(v135, v136);
                v224.val[0] = v193;
                vst2q_f32(v139, v224);
                v224.val[1] = vzip1q_s32(v210.val[1], v36);
                v224.val[0] = v193;
                vst2q_f32(v140, v224);
                v141 = v87 + 72;
                v142 = v87 + 80;
                v213.val[0] = vaddq_s32(vaddq_s32(v213.val[0], v192), v123);
                v222.val[0] = vaddq_s32(vaddq_s32(v222.val[0], v222.val[1]), v220.val[1]);
                v224.val[1] = vzip2q_s32(v210.val[1], v36);
                v224.val[0] = v193;
                vst2q_f32(v141, v224);
                v224.val[1] = vzip1q_s32(v213.val[0], v222.val[0]);
                v224.val[0] = v193;
                vst2q_f32(v142, v224);
                v143 = vaddq_s32(vaddq_s32(vaddq_s32(v210.val[0], v35), v192), v123);
                v210.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v118, v220.val[0]), v222.val[1]), v220.val[1]);
                v144 = v87 + 88;
                v145 = v87 + 96;
                v213.val[0] = vzip2q_s32(v213.val[0], v222.val[0]);
                v210.val[1] = v193;
                vst2q_f32(v144, *(&v210 + 16));
                v34 = vzip1q_s32(v143, v210.val[0]);
                v33 = v193;
                vst2q_f32(v145, *v33.i8);
                v146 = v87 + 104;
                v147 = v87 + 112;
                v210.val[0] = vzip2q_s32(v143, v210.val[0]);
                v148 = v193;
                vst2q_f32(v146, v210);
                v32 = vzip1q_s32(v213.val[1], v125);
                v149 = v193;
                vst2q_f32(v147, *(&v32 - 1));
                v82 = v87 + 128;
                v150 = v87 + 120;
                v81 = v80 + 32;
                vst2q_f32(v150, v218);
                result = v80 + 64;
                v80 += 32;
                v40.i32[0] = v213.val[1].i32[3];
                v87 = v82;
                v125.i32[0] = v125.i32[3];
                v194 = *v125.i8;
              }

              while (result <= v30);
            }

            else
            {
              v81 = v80;
              v82 = a11;
            }

            if (v81 + 8 <= v30)
            {
              v153 = v37 + 2 * v203;
              v154 = v203 + v37;
              v155 = v38 + 2 * v196;
              v156 = v196 + v38;
              do
              {
                v32.i64[0] = *(v37 + v81);
                v33.i64[0] = *(v154 + v81);
                v34.i64[0] = *(v153 + v81);
                v157 = vzip1q_s8(0, v33);
                v158 = vzip1q_s8(v34, v32);
                v159 = vzip1q_s8(v157, v158);
                v160 = vzip2q_s8(v157, v158);
                v161 = vshlq_n_s64(v160, 0x20uLL);
                v162 = vaddq_s32(vshlq_n_s64(v159, 0x20uLL), v159);
                v163 = vaddq_s32(v161, v160);
                v164 = vdupq_lane_s32(*v40.i8, 0);
                v161.i64[0] = *(v38 + v81);
                v165 = vdupq_lane_s32(*v163.i8, 1);
                v36.i64[0] = *(v156 + v81);
                v35.i64[0] = *(v155 + v81);
                v166 = vdupq_lane_s32(*v162.i8, 1);
                v167 = vaddq_s32(v163, v164);
                v168 = vzip1q_s8(0, v36);
                v169 = vzip1q_s8(v35, v161);
                v170 = vzip1q_s8(v168, v169);
                v166.i64[0] = 0;
                v171 = vzip2q_s8(v168, v169);
                v172 = vaddq_s32(vshlq_n_s64(v170, 0x20uLL), v170);
                v165.i64[0] = 0;
                v173 = vaddq_s32(vshlq_n_s64(v171, 0x20uLL), v171);
                v174 = vdupq_lane_s32(*v173.i8, 1);
                v175 = vdupq_lane_s32(*v172.i8, 1);
                v176 = vaddq_s32(v166, v162);
                v175.i64[0] = 0;
                v174.i64[0] = 0;
                v177 = vdupq_laneq_s32(v176, 3);
                v35 = vaddq_s32(v175, v172);
                v178 = vdupq_lane_s32(v194, 0);
                v179 = vaddq_s32(v176, v164);
                v180 = vaddq_s32(v165, v167);
                v181 = vaddq_s32(v35, v178);
                v182 = vaddq_s32(v174, vaddq_s32(v173, v178));
                v36 = vzip1q_s32(v179, v181);
                v211.val[1] = vzip2q_s32(v179, v181);
                v152 = v82 + 32;
                v183 = v193;
                v184 = v82 + 16;
                v185 = v82 + 24;
                v186 = vaddq_s32(v180, v177);
                vst2q_f32(v82, *(&v36 - 1));
                v187 = v82 + 8;
                v188 = vaddq_s32(v182, vdupq_laneq_s32(v35, 3));
                v211.val[0] = v193;
                vst2q_f32(v187, v211);
                v40.i32[0] = v186.i32[3];
                v34 = vzip1q_s32(v186, v188);
                v211.val[0] = v193;
                vst2q_f32(v184, *(&v34 - 1));
                v33 = vzip2q_s32(v186, v188);
                v32 = v193;
                vst2q_f32(v185, *v32.i8);
                v188.i32[0] = v188.i32[3];
                v194 = *v188.i8;
                v151 = v81 + 8;
                result = v81 + 16;
                v81 += 8;
                v82 = v152;
              }

              while (result <= v30);
            }

            else
            {
              v151 = v81;
              v152 = v82;
            }

            if (v151 < v30)
            {
              do
              {
                *&v189 = v191;
                DWORD1(v189) = ((*(v202[0] + v151) << 24) | (*(v202[0] + v151 + v203) << 16) | (*(v202[0] + v151 + 2 * v203) << 8)) + v40.i32[0];
                *(&v189 + 1) = __PAIR64__(((*(v195[0] + v151) << 24) | (*(v195[0] + v151 + v196) << 16) | (*(v195[0] + v151 + 2 * v196) << 8)) + v194.i32[0], LODWORD(v190));
                *v152 = v189;
                v152 += 4;
                ++v151;
              }

              while (v30 != v151);
            }
          }
        }

        a11 = (a11 + a12);
        v26 += a10;
      }

      while (v26 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v262 = 4;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v260 = v20.i32[0];
    v258 = v19;
    v256[1] = result;
    v259 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v257 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v261 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v256);
    v255 = 4;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v253 = v23.i32[0];
    v251 = v22;
    v249[1] = v17;
    v252 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v250 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v254 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v249);
    if (*(*a6 + 24))
    {
      LODWORD(a6) = **a6;
    }

    v248 = 4;
    v25 = *(a7 + 8);
    v26 = a3[3];
    v246 = v26.i32[0];
    v244 = v25;
    v242[1] = v17;
    v245 = a3[6].i32[1] + v26.i32[1] * v18;
    v27 = a3[7].u32[1];
    v243 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v247 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v242);
    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v18)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a9;
      v33 = 0x1800000010;
      v34 = 0x1000000018;
      v241 = vdupq_n_s32(a6);
      do
      {
        v259 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v256);
        v252 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v249);
        v245 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v242);
        v44 = v241;
        v45 = v256[0];
        if (v256[0])
        {
          v46 = v249[0];
          if (v249[0])
          {
            v47 = v242[0];
            if (v242[0])
            {
              v223 = v34;
              v224 = v33;
              v48 = 0;
              if (v31 >= 0x20)
              {
                v55 = v257 + v256[0];
                v56 = v257 + v256[0] + 2 * v257;
                v57 = v256[0] + 2 * v257;
                v58 = v250 + v249[0];
                v59 = v250 + v249[0] + 2 * v250;
                v60 = v249[0] + 2 * v250;
                result = v243 + v242[0];
                v61 = v243 + v242[0] + 2 * v243;
                v62 = v242[0] + 2 * v243;
                v50 = 0uLL;
                v63 = 32;
                v65 = xmmword_296B8F040;
                v64 = xmmword_296B8F020;
                v52 = xmmword_296B8F000;
                v51 = xmmword_296B8F060;
                v54 = xmmword_296B8F050;
                v53 = xmmword_296B8F080;
                do
                {
                  v239.val[0] = v50;
                  v268.val[1] = *(v256[0] + v63 - 32);
                  v278.val[1] = *(v256[0] + v63 - 16);
                  v280.val[1] = *(v55 + v63 - 32);
                  v282.val[1] = *(v55 + v63 - 16);
                  v268.val[0] = *(v57 + v63 - 32);
                  v278.val[0] = *(v57 + v63 - 16);
                  v280.val[0] = *(v56 + v63 - 32);
                  v282.val[0] = *(v56 + v63 - 16);
                  v263.val[1] = vqtbl2q_s8(v268, xmmword_296B8F030);
                  v263.val[0] = vqtbl2q_s8(v280, v65);
                  v263.val[0] = vqtbl2q_s8(v263, v64);
                  v66 = vqtbl2q_s8(v268, v52);
                  v263.val[1] = vqtbl2q_s8(v280, xmmword_296B8F010);
                  v263.val[1] = vqtbl2q_s8(*(&v263 + 16), v64);
                  v265.val[1] = vqtbl2q_s8(v268, xmmword_296B8F070);
                  v265.val[0] = vqtbl2q_s8(v280, v53);
                  v265.val[0] = vqtbl2q_s8(v265, v64);
                  v268.val[1] = vqtbl2q_s8(v268, v54);
                  v268.val[0] = vqtbl2q_s8(v280, v51);
                  v268.val[0] = vqtbl2q_s8(v268, v64);
                  v67 = vqtbl2q_s8(v278, v52);
                  v268.val[1] = vqtbl2q_s8(v282, xmmword_296B8F010);
                  v268.val[1] = vqtbl2q_s8(*(&v268 + 16), v64);
                  v280.val[1] = vqtbl2q_s8(v278, v54);
                  v280.val[0] = vqtbl2q_s8(v282, v51);
                  v68 = vqtbl2q_s8(v280, v64);
                  v280.val[1] = vqtbl2q_s8(v278, xmmword_296B8F070);
                  v280.val[0] = vqtbl2q_s8(v282, v53);
                  v69 = vqtbl2q_s8(v280, v64);
                  v278.val[1] = vqtbl2q_s8(v278, xmmword_296B8F030);
                  v278.val[0] = vqtbl2q_s8(v282, v65);
                  v265.val[1] = vqtbl2q_s8(v278, v64);
                  v285.val[1] = *(v249[0] + v63 - 32);
                  v286.val[1] = *(v249[0] + v63 - 16);
                  v288.val[1] = *(v58 + v63 - 32);
                  v270.val[1] = *(v58 + v63 - 16);
                  v285.val[0] = *(v60 + v63 - 32);
                  v286.val[0] = *(v60 + v63 - 16);
                  v237 = vaddq_s32(vshlq_n_s64(v263.val[0], 0x20uLL), v263.val[0]);
                  v288.val[0] = *(v59 + v63 - 32);
                  v270.val[0] = *(v59 + v63 - 16);
                  v272.val[1] = vqtbl2q_s8(v285, xmmword_296B8F030);
                  v272.val[0] = vqtbl2q_s8(v288, xmmword_296B8F040);
                  v235 = vaddq_s32(vshlq_n_s64(v263.val[1], 0x20uLL), v263.val[1]);
                  v70 = vqtbl2q_s8(v272, xmmword_296B8F020);
                  v272.val[1] = vqtbl2q_s8(v285, xmmword_296B8F000);
                  v272.val[0] = vqtbl2q_s8(v288, xmmword_296B8F010);
                  v71 = vqtbl2q_s8(v272, xmmword_296B8F020);
                  v272.val[1] = vqtbl2q_s8(v285, xmmword_296B8F070);
                  v272.val[0] = vqtbl2q_s8(v288, v53);
                  v282.val[1] = vqtbl2q_s8(v272, xmmword_296B8F020);
                  v285.val[0] = vqtbl2q_s8(v285, v54);
                  v72 = vqtbl2q_s8(v288, v51);
                  v285.val[0] = vqtbl2q_s8(v285, xmmword_296B8F020);
                  v231 = vaddq_s32(vshlq_n_s64(v268.val[0], 0x20uLL), v268.val[0]);
                  v288.val[1] = vqtbl2q_s8(v286, xmmword_296B8F000);
                  v288.val[0] = vqtbl2q_s8(v270, xmmword_296B8F010);
                  v282.val[0] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v288.val[1] = vqtbl2q_s8(v286, v54);
                  v288.val[0] = vqtbl2q_s8(v270, v51);
                  v268.val[1] = vaddq_s32(vshlq_n_s64(v268.val[1], 0x20uLL), v268.val[1]);
                  v280.val[1] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v288.val[1] = vqtbl2q_s8(v286, xmmword_296B8F070);
                  v288.val[0] = vqtbl2q_s8(v270, v53);
                  v288.val[0] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v286.val[0] = vqtbl2q_s8(v286, xmmword_296B8F030);
                  v73 = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
                  v285.val[1] = vqtbl2q_s8(v270, xmmword_296B8F040);
                  v280.val[0] = vqtbl2q_s8(*(&v285 + 16), xmmword_296B8F020);
                  v74 = vaddq_s32(vshlq_n_s64(v69, 0x20uLL), v69);
                  v75 = vaddq_s32(vshlq_n_s64(v265.val[1], 0x20uLL), v265.val[1]);
                  v265.val[1] = vaddq_s32(vshlq_n_s64(v70, 0x20uLL), v70);
                  v76 = vaddq_s32(vshlq_n_s64(v71, 0x20uLL), v71);
                  v77 = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v270.val[0] = vaddq_s32(vshlq_n_s64(v285.val[0], 0x20uLL), v285.val[0]);
                  v278.val[1] = vaddq_s32(vshlq_n_s64(v282.val[0], 0x20uLL), v282.val[0]);
                  v278.val[0] = vaddq_s32(vshlq_n_s64(v280.val[1], 0x20uLL), v280.val[1]);
                  v285.val[0] = vaddq_s32(vshlq_n_s64(v288.val[0], 0x20uLL), v288.val[0]);
                  v282.val[0] = vaddq_s32(vshlq_n_s64(v280.val[0], 0x20uLL), v280.val[0]);
                  *v280.val[0].i8 = vdup_lane_s32(*v278.val[0].i8, 1);
                  v280.val[1].i64[0] = vextq_s8(v278.val[0], v278.val[0], 8uLL).u64[0];
                  *v77.i8 = vadd_s32(vadd_s32(vadd_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL)), vadd_s32(*v270.val[0].i8, *&vextq_s8(v270.val[0], v270.val[0], 8uLL))), vadd_s32(vadd_s32(*v265.val[1].i8, *&vextq_s8(v265.val[1], v265.val[1], 8uLL)), vadd_s32(*v76.i8, *&vextq_s8(v76, v76, 8uLL))));
                  v288.val[1] = *(v242[0] + v63 - 32);
                  v78 = *(v242[0] + v63 - 16);
                  v272.val[1] = *(result + v63 - 32);
                  v270.val[1] = *(result + v63 - 16);
                  v288.val[0] = *(v62 + v63 - 32);
                  v286.val[1] = *(v62 + v63 - 16);
                  v272.val[0] = *(v61 + v63 - 32);
                  v270.val[0] = *(v61 + v63 - 16);
                  v285.val[1] = vaddq_s32(vdupq_lane_s32(*v282.val[0].i8, 1), v282.val[0]);
                  v282.val[1] = vqtbl2q_s8(*(&v286 + 16), xmmword_296B8F000);
                  v282.val[0] = vqtbl2q_s8(v270, xmmword_296B8F010);
                  v273.val[1] = vqtbl2q_s8(*(&v286 + 16), xmmword_296B8F030);
                  v273.val[0] = vqtbl2q_s8(v270, xmmword_296B8F040);
                  v275.val[1] = vqtbl2q_s8(*(&v286 + 16), xmmword_296B8F050);
                  v275.val[0] = vqtbl2q_s8(v270, xmmword_296B8F060);
                  v286.val[1] = vqtbl2q_s8(*(&v286 + 16), xmmword_296B8F070);
                  v286.val[0] = vqtbl2q_s8(v270, xmmword_296B8F080);
                  v270.val[1] = vqtbl2q_s8(v288, xmmword_296B8F050);
                  *v278.val[0].i8 = vadd_s32(vdup_lane_s32(*v278.val[1].i8, 1), *&vextq_s8(v278.val[1], v278.val[1], 8uLL));
                  v270.val[0] = vqtbl2q_s8(v272, xmmword_296B8F060);
                  v79 = vqtbl2q_s8(v288, xmmword_296B8F070);
                  v265.val[1] = vqtbl2q_s8(v272, xmmword_296B8F080);
                  v263.val[1] = vqtbl2q_s8(v288, xmmword_296B8F000);
                  v263.val[0] = vqtbl2q_s8(v272, xmmword_296B8F010);
                  v288.val[0] = vqtbl2q_s8(v288, xmmword_296B8F030);
                  v80 = vqtbl2q_s8(v272, xmmword_296B8F040);
                  v65 = xmmword_296B8F040;
                  v37 = vaddq_s32(vshlq_n_s64(v265.val[0], 0x20uLL), v265.val[0]);
                  v268.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v285.val[0].i8, 1), v285.val[0]), 3);
                  *v278.val[1].i8 = vadd_s32(*&vextq_s8(v268.val[0], v268.val[0], 8uLL), vadd_s32(*v280.val[0].i8, *v280.val[1].i8));
                  v268.val[0] = vdupq_laneq_s32(v285.val[1], 3);
                  *v278.val[0].i8 = vadd_s32(*&vextq_s8(v268.val[0], v268.val[0], 8uLL), *v278.val[0].i8);
                  v268.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v74.i8, 1), v74), 3);
                  v40 = vextq_s8(v268.val[0], v268.val[0], 8uLL);
                  *v40.i8 = vadd_s32(*v40.i8, vadd_s32(vdup_lane_s32(*v73.i8, 1), *&vextq_s8(v73, v73, 8uLL)));
                  v81 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v75.i8, 1), v75), 3);
                  *v268.val[1].i8 = vadd_s32(*&vextq_s8(v81, v81, 8uLL), vadd_s32(vdup_lane_s32(*v268.val[1].i8, 1), *&vextq_s8(v268.val[1], v268.val[1], 8uLL)));
                  v82 = vqtbl2q_s8(v282, xmmword_296B8F020);
                  v83 = vqtbl2q_s8(v273, xmmword_296B8F020);
                  v54 = xmmword_296B8F050;
                  v53 = xmmword_296B8F080;
                  v280.val[0] = vqtbl2q_s8(v275, xmmword_296B8F020);
                  v52 = xmmword_296B8F000;
                  v51 = xmmword_296B8F060;
                  v280.val[1] = vqtbl2q_s8(v286, xmmword_296B8F020);
                  v50.i64[1] = v239.val[0].i64[1];
                  v282.val[0] = vqtbl2q_s8(v270, xmmword_296B8F020);
                  v64 = xmmword_296B8F020;
                  *v278.val[0].i8 = vadd_s32(*v278.val[0].i8, *v278.val[1].i8);
                  v265.val[1] = vqtbl2q_s8(*(&v265 + 16), xmmword_296B8F020);
                  v263.val[0] = vqtbl2q_s8(v263, xmmword_296B8F020);
                  v263.val[1] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v84 = vaddq_s32(vshlq_n_s64(v82, 0x20uLL), v82);
                  v85 = vaddq_s32(vshlq_n_s64(v83, 0x20uLL), v83);
                  v86 = vaddq_s32(vshlq_n_s64(v280.val[0], 0x20uLL), v280.val[0]);
                  v278.val[1] = vaddq_s32(vshlq_n_s64(v280.val[1], 0x20uLL), v280.val[1]);
                  v280.val[0] = vaddq_s32(vshlq_n_s64(v282.val[0], 0x20uLL), v282.val[0]);
                  v265.val[1] = vaddq_s32(vshlq_n_s64(v265.val[1], 0x20uLL), v265.val[1]);
                  v263.val[0] = vaddq_s32(vshlq_n_s64(v263.val[0], 0x20uLL), v263.val[0]);
                  v263.val[1] = vaddq_s32(vshlq_n_s64(v263.val[1], 0x20uLL), v263.val[1]);
                  v41 = vaddq_s32(vdupq_lane_s32(*v85.i8, 1), v85);
                  v42 = vaddq_s32(vdupq_lane_s32(*v86.i8, 1), v86);
                  v43 = vaddq_s32(vdupq_lane_s32(*v278.val[1].i8, 1), v278.val[1]);
                  v263.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v263.val[1].i8, 1), v263.val[1]), vaddq_s32(vdupq_lane_s32(*v263.val[0].i8, 1), v263.val[0]));
                  v36 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v265.val[1].i8, 1), v265.val[1]), vaddq_s32(vdupq_lane_s32(*v280.val[0].i8, 1), v280.val[0]));
                  v39 = vaddq_s32(v41, vaddq_s32(vdupq_lane_s32(*v84.i8, 1), v84));
                  v38 = vaddq_s32(v39, vaddq_s32(v43, v42));
                  v35 = vaddq_s32(v38, vaddq_s32(v36, v263.val[0]));
                  *v36.i8 = vadd_s32(vadd_s32(*v268.val[1].i8, *v40.i8), vadd_s32(vadd_s32(vadd_s32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), vadd_s32(*v231.i8, *&vextq_s8(v231, v231, 8uLL))), vadd_s32(vadd_s32(*v237.i8, *&vextq_s8(v237, v237, 8uLL)), vadd_s32(*v235.i8, *&vextq_s8(v235, v235, 8uLL)))));
                  *v35.i8 = vzip2_s32(*v36.i8, vadd_s32(*v278.val[0].i8, *v77.i8));
                  *v50.i8 = vadd_s32(*v35.i8, *v239.val[0].i8);
                  v48 += v35.u32[3];
                  v63 += 32;
                }

                while (v63 <= v31);
                v49 = v31 & 0xFFFFFFE0;
                v44 = v241;
                v34 = v223;
                v33 = v224;
              }

              else
              {
                v49 = 0;
                v50.i64[0] = 0;
                v52 = xmmword_296B8F000;
                v51 = xmmword_296B8F060;
                v54 = xmmword_296B8F050;
                v53 = xmmword_296B8F080;
              }

              v87 = xmmword_296B8F010;
              if ((v49 | 8) <= v31)
              {
                result = v249[0] + 2 * v250;
                do
                {
                  v35.i64[0] = *(v256[0] + v49);
                  v36.i64[0] = *(v257 + v256[0] + v49);
                  v37.i64[0] = *(v256[0] + 2 * v257 + v49);
                  v38.i64[0] = *(v257 + v256[0] + 2 * v257 + v49);
                  v89 = vzip1q_s8(v38, v36);
                  v90 = vzip1q_s8(v37, v35);
                  v91 = vzip1q_s8(v89, v90);
                  v92 = vzip2q_s8(v89, v90);
                  v93 = vshlq_n_s64(v92, 0x20uLL);
                  v94 = vshlq_n_s64(v91, 0x20uLL);
                  v95 = vaddq_s32(v94, v91);
                  v96 = vaddq_s32(v93, v92);
                  v93.i64[0] = *(v249[0] + v49);
                  v94.i64[0] = *(v250 + v249[0] + v49);
                  v39.i64[0] = *(result + v49);
                  v40.i64[0] = *(v250 + v249[0] + 2 * v250 + v49);
                  v97 = vzip1q_s8(v40, v94);
                  v98 = vzip1q_s8(v39, v93);
                  v99 = vzip1q_s8(v97, v98);
                  v100 = vzip2q_s8(v97, v98);
                  v40 = vshlq_n_s64(v99, 0x20uLL);
                  v39 = vaddq_s32(v40, v99);
                  v101 = vaddq_s32(vshlq_n_s64(v100, 0x20uLL), v100);
                  *v96.i8 = vadd_s32(vzip2_s32(vadd_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL)), vadd_s32(*v101.i8, *&vextq_s8(v101, v101, 8uLL))), *v50.i8);
                  v102 = vextq_s8(v39, v39, 8uLL);
                  v103 = vextq_s8(v95, v95, 8uLL);
                  *v50.i8 = vadd_s32(*v96.i8, vzip2_s32(vadd_s32(*v95.i8, *v103.i8), vadd_s32(*v39.i8, *v102.i8)));
                  v96.i64[0] = *(v242[0] + v49);
                  v102.i64[0] = *(v243 + v242[0] + v49);
                  v95.i64[0] = *(v242[0] + 2 * v243 + v49);
                  v103.i64[0] = *(v243 + v242[0] + 2 * v243 + v49);
                  v104 = vzip1q_s8(v103, v102);
                  v105 = vzip1q_s8(v95, v96);
                  v106 = vzip1q_s8(v104, v105);
                  v107 = vzip2q_s8(v104, v105);
                  v108 = vaddq_s32(vshlq_n_s64(v106, 0x20uLL), v106);
                  v109 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                  v36 = vdupq_lane_s32(*v109.i8, 1);
                  v38 = vdupq_lane_s32(*v108.i8, 1);
                  v37 = vaddq_s32(v38, v108);
                  v35 = vaddq_s32(v36, v109);
                  v48 += v35.i32[3] + v37.i32[3];
                  v88 = v49 + 8;
                  v110 = v49 + 16;
                  v49 += 8;
                }

                while (v110 <= v31);
              }

              else
              {
                v88 = v49;
              }

              if (v88 < v31)
              {
                do
                {
                  v35.i8[0] = *(v257 + v256[0] + v88);
                  v35.i8[4] = *(v249[0] + v88);
                  v36.i8[0] = *(v256[0] + v88);
                  v36.i8[4] = *(v250 + v249[0] + v88);
                  v111 = vshl_u32(vand_s8(*v36.i8, 0xFF000000FFLL), v34);
                  v112 = vorr_s8(v111, vshl_u32(vand_s8(*v35.i8, 0xFF000000FFLL), v33));
                  v111.i8[0] = *(v256[0] + 2 * v257 + v88);
                  v111.i8[4] = *(v249[0] + 2 * v250 + v88);
                  v113 = vand_s8(v111, 0xFF000000FFLL);
                  *v36.i8 = vorr_s8(vshl_n_s32(v113, 8uLL), v113);
                  *v35.i8 = vorr_s8(v112, *v36.i8);
                  *v50.i8 = vadd_s32(*v35.i8, *v50.i8);
                  v114 = *(v242[0] + 2 * v243 + v88);
                  result = (*(v242[0] + v88) << 24) | (*(v243 + v242[0] + v88) << 16) | (v114 << 8) | v114;
                  v48 += result;
                  ++v88;
                }

                while (v31 != v88);
                v88 = v31;
              }

              if (v88 + 32 <= v32)
              {
                v118 = v257 + v256[0];
                v119 = v257 + v256[0] + 2 * v257;
                v120 = v256[0] + 2 * v257;
                v121 = v250 + v249[0];
                v122 = v250 + v249[0] + 2 * v250;
                v123 = v249[0] + 2 * v250;
                result = v243 + v242[0];
                v124 = v243 + v242[0] + 2 * v243;
                v125 = v242[0] + 2 * v243;
                v117 = a11;
                v41 = xmmword_296B8F070;
                v126 = xmmword_296B8F030;
                v127 = xmmword_296B8F040;
                do
                {
                  v264.val[1] = *(v45 + v88);
                  v266.val[1] = *(v45 + v88 + 16);
                  v264.val[0] = *(v120 + v88);
                  v266.val[0] = *(v120 + v88 + 16);
                  v269.val[1] = vqtbl2q_s8(v264, v41);
                  v277.val[1] = *(v118 + v88);
                  v279.val[1] = *(v118 + v88 + 16);
                  v277.val[0] = *(v119 + v88);
                  v279.val[0] = *(v119 + v88 + 16);
                  v269.val[0] = vqtbl2q_s8(v277, v53);
                  v232 = vqtbl2q_s8(v277, v127);
                  v233 = vqtbl2q_s8(v264, v126);
                  v238.val[0] = vqtbl2q_s8(v279, v53);
                  v238.val[1] = vqtbl2q_s8(v266, v41);
                  v236.val[0] = vqtbl2q_s8(v279, v127);
                  v236.val[1] = vqtbl2q_s8(v266, v126);
                  v128 = v52;
                  v240.val[0] = vqtbl2q_s8(v279, v87);
                  v240.val[1] = vqtbl2q_s8(v266, v52);
                  v234.val[0] = vqtbl2q_s8(v279, v51);
                  v234.val[1] = vqtbl2q_s8(v266, v54);
                  v129 = vqtbl2q_s8(v269, xmmword_296B8F020);
                  v230.val[0] = vqtbl2q_s8(v277, v87);
                  v230.val[1] = vqtbl2q_s8(v264, v52);
                  v281.val[1] = vqtbl2q_s8(v264, v54);
                  v281.val[0] = vqtbl2q_s8(v277, v51);
                  v287.val[1] = *(v46 + v88);
                  v289.val[1] = *(v46 + v88 + 16);
                  v287.val[0] = *(v123 + v88);
                  v266.val[0] = vqtbl2q_s8(v287, v41);
                  v130 = vaddq_s32(vshlq_n_s64(v129, 0x20uLL), v129);
                  v274.val[1] = *(v121 + v88);
                  v276.val[1] = *(v121 + v88 + 16);
                  v274.val[0] = *(v122 + v88);
                  v264.val[0] = vdupq_lane_s32(*v130.i8, 1);
                  v264.val[1] = vqtbl2q_s8(v274, xmmword_296B8F080);
                  v264.val[1] = vqtbl2q_s8(*(&v264 + 16), xmmword_296B8F020);
                  v269.val[0] = vaddq_s32(vshlq_n_s64(v264.val[1], 0x20uLL), v264.val[1]);
                  v264.val[0].i64[0] = 0;
                  v284.val[1] = *(v47 + v88);
                  v264.val[0] = vaddq_s32(v264.val[0], v130);
                  v284.val[0] = *(v125 + v88);
                  v277.val[1] = *(result + v88);
                  v277.val[0] = *(v124 + v88);
                  v131 = vqtbl2q_s8(v284, v41);
                  v269.val[1] = vqtbl2q_s8(v277, xmmword_296B8F080);
                  v266.val[1] = vqtbl2q_s8(*(&v269 + 16), xmmword_296B8F020);
                  v266.val[1] = vaddq_s32(vshlq_n_s64(v266.val[1], 0x20uLL), v266.val[1]);
                  v269.val[1] = vdupq_lane_s32(*v269.val[0].i8, 1);
                  v269.val[1].i64[0] = 0;
                  v132 = vdupq_lane_s32(*v266.val[1].i8, 1);
                  v132.i64[0] = 0;
                  v133 = vaddq_s32(v269.val[1], v269.val[0]);
                  v134 = vaddq_s32(v132, v266.val[1]);
                  v289.val[0] = *(v123 + v88 + 16);
                  v276.val[0] = *(v122 + v88 + 16);
                  v228 = *(v125 + v88 + 16);
                  v229 = *(v47 + v88 + 16);
                  v227.val[0] = *(v124 + v88 + 16);
                  v227.val[1] = *(result + v88 + 16);
                  v135 = vdupq_lane_s32(*v50.i8, 0);
                  v136 = vdupq_lane_s32(*v50.i8, 1);
                  v266.val[1] = vaddq_s32(v264.val[0], v135);
                  v137 = v264.val[0];
                  v269.val[0] = vaddq_s32(v133, v136);
                  v138 = vdupq_n_s32(v48);
                  v269.val[1] = vaddq_s32(v134, v138);
                  v279.val[0] = vzip1q_s32(v266.val[1], v241);
                  v279.val[1] = vzip1q_s32(v269.val[0], v269.val[1]);
                  v139 = v117;
                  vst2q_f32(v139, v279);
                  v139 += 8;
                  v43 = vzip2q_s32(v266.val[1], v241);
                  v279.val[1] = vzip2q_s32(v269.val[0], v269.val[1]);
                  vst2q_f32(v139, *v43.i8);
                  v140 = vqtbl2q_s8(v289, xmmword_296B8F070);
                  v269.val[1] = vqtbl2q_s8(v276, xmmword_296B8F080);
                  v269.val[0] = vqtbl2q_s8(v289, xmmword_296B8F030);
                  v266.val[1] = vqtbl2q_s8(v276, xmmword_296B8F040);
                  v225 = vqtbl2q_s8(v276, xmmword_296B8F010);
                  v226 = vqtbl2q_s8(v289, v128);
                  v289.val[1] = vqtbl2q_s8(v289, xmmword_296B8F050);
                  v289.val[0] = vqtbl2q_s8(v276, xmmword_296B8F060);
                  v276.val[1] = vqtbl2q_s8(v287, xmmword_296B8F030);
                  v276.val[0] = vqtbl2q_s8(v274, xmmword_296B8F040);
                  v264.val[0] = vqtbl2q_s8(v287, v128);
                  v141 = vqtbl2q_s8(v274, xmmword_296B8F010);
                  v287.val[1] = vqtbl2q_s8(v287, xmmword_296B8F050);
                  v287.val[0] = vqtbl2q_s8(v274, xmmword_296B8F060);
                  v281.val[0] = vqtbl2q_s8(v281, xmmword_296B8F020);
                  v281.val[0] = vaddq_s32(vshlq_n_s64(v281.val[0], 0x20uLL), v281.val[0]);
                  v274.val[1] = vqtbl2q_s8(v284, xmmword_296B8F030);
                  v274.val[0] = vqtbl2q_s8(v277, xmmword_296B8F040);
                  v266.val[0] = vqtbl2q_s8(v284, v128);
                  v264.val[1] = vqtbl2q_s8(v277, xmmword_296B8F010);
                  v284.val[0] = vqtbl2q_s8(v284, xmmword_296B8F050);
                  v284.val[1] = vdupq_lane_s32(*v281.val[0].i8, 1);
                  v281.val[1] = vqtbl2q_s8(v277, xmmword_296B8F060);
                  v284.val[1].i64[0] = 0;
                  v277.val[0] = vaddq_s32(v284.val[1], v281.val[0]);
                  v277.val[1] = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v277.val[1] = vaddq_s32(vshlq_n_s64(v277.val[1], 0x20uLL), v277.val[1]);
                  v281.val[0] = vdupq_lane_s32(*v277.val[1].i8, 1);
                  v281.val[0].i64[0] = 0;
                  v277.val[1] = vaddq_s32(v281.val[0], v277.val[1]);
                  v281.val[0] = vqtbl2q_s8(*(&v281 + 16), xmmword_296B8F020);
                  v281.val[0] = vaddq_s32(vshlq_n_s64(v281.val[0], 0x20uLL), v281.val[0]);
                  v277.val[0] = vaddq_s32(vdupq_laneq_s32(v137, 3), v277.val[0]);
                  v281.val[1] = vdupq_lane_s32(*v281.val[0].i8, 1);
                  v281.val[1].i64[0] = 0;
                  v277.val[1] = vaddq_s32(vdupq_laneq_s32(v133, 3), v277.val[1]);
                  v281.val[0] = vaddq_s32(vdupq_laneq_s32(v134, 3), vaddq_s32(v281.val[1], v281.val[0]));
                  v281.val[1] = vaddq_s32(v277.val[0], v135);
                  v284.val[0] = vaddq_s32(v277.val[1], v136);
                  v284.val[1] = vaddq_s32(v281.val[0], v138);
                  v287.val[0] = vzip2q_s32(v281.val[1], v241);
                  v287.val[1] = vzip2q_s32(v284.val[0], v284.val[1]);
                  v271.val[0] = vzip1q_s32(v281.val[1], v241);
                  v271.val[1] = vzip1q_s32(v284.val[0], v284.val[1]);
                  v142 = v117 + 16;
                  vst2q_f32(v142, v271);
                  v281.val[1] = v232;
                  v284.val[0] = v233;
                  v281.val[1] = vqtbl2q_s8(*(&v281 + 16), xmmword_296B8F020);
                  v284.val[0] = vqtbl2q_s8(v230, xmmword_296B8F020);
                  v284.val[0] = vaddq_s32(vshlq_n_s64(v284.val[0], 0x20uLL), v284.val[0]);
                  v271.val[0] = vdupq_lane_s32(*v284.val[0].i8, 1);
                  v281.val[1] = vaddq_s32(vshlq_n_s64(v281.val[1], 0x20uLL), v281.val[1]);
                  v271.val[0].i64[0] = 0;
                  v284.val[0] = vaddq_s32(v271.val[0], v284.val[0]);
                  v284.val[1] = vdupq_lane_s32(*v281.val[1].i8, 1);
                  v284.val[1].i64[0] = 0;
                  v284.val[1] = vaddq_s32(v284.val[1], v281.val[1]);
                  v281.val[1] = vqtbl2q_s8(v276, xmmword_296B8F020);
                  v143 = vqtbl2q_s8(v264, xmmword_296B8F020);
                  v144 = vaddq_s32(vshlq_n_s64(v143, 0x20uLL), v143);
                  v264.val[0] = vdupq_lane_s32(*v144.i8, 1);
                  v264.val[0].i64[0] = 0;
                  v281.val[1] = vaddq_s32(vshlq_n_s64(v281.val[1], 0x20uLL), v281.val[1]);
                  v145 = vaddq_s32(v264.val[0], v144);
                  v264.val[0] = vdupq_lane_s32(*v281.val[1].i8, 1);
                  v264.val[0].i64[0] = 0;
                  v271.val[0] = vaddq_s32(v264.val[0], v281.val[1]);
                  v264.val[0] = vqtbl2q_s8(v274, xmmword_296B8F020);
                  v264.val[1] = vqtbl2q_s8(*(&v264 + 16), xmmword_296B8F020);
                  v266.val[0] = vaddq_s32(vdupq_laneq_s32(v284.val[1], 3), v284.val[0]);
                  v264.val[0] = vaddq_s32(vshlq_n_s64(v264.val[0], 0x20uLL), v264.val[0]);
                  v264.val[1] = vaddq_s32(vshlq_n_s64(v264.val[1], 0x20uLL), v264.val[1]);
                  v281.val[1] = vdupq_lane_s32(*v264.val[0].i8, 1);
                  v281.val[1].i64[0] = 0;
                  v284.val[0] = vaddq_s32(v281.val[1], v264.val[0]);
                  v264.val[0] = vdupq_lane_s32(*v264.val[1].i8, 1);
                  v264.val[0].i64[0] = 0;
                  v281.val[1] = vaddq_s32(vdupq_laneq_s32(v284.val[0], 3), vaddq_s32(v264.val[0], v264.val[1]));
                  v277.val[0] = vdupq_laneq_s32(v277.val[0], 3);
                  v277.val[1] = vdupq_laneq_s32(v277.val[1], 3);
                  v264.val[0] = vaddq_s32(v266.val[0], v277.val[0]);
                  v264.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v271.val[0], 3), v145), v277.val[1]);
                  v146 = vdupq_laneq_s32(v281.val[0], 3);
                  v266.val[0] = vaddq_s32(v281.val[1], v146);
                  v271.val[1] = vaddq_s32(v264.val[0], v135);
                  v279.val[1] = v136;
                  v147 = vaddq_s32(v264.val[1], v136);
                  v274.val[0] = vaddq_s32(v266.val[0], v138);
                  v281.val[0] = vzip2q_s32(v271.val[1], v241);
                  v281.val[1] = vzip2q_s32(v147, v274.val[0]);
                  v274.val[1] = vzip1q_s32(v271.val[1], v241);
                  v276.val[0] = vzip1q_s32(v147, v274.val[0]);
                  v43.i64[1] = 0xFF13FF03FF12FF02;
                  v127 = xmmword_296B8F040;
                  v148 = v117 + 24;
                  vst2q_f32(v148, v287);
                  v277.val[0] = vaddq_s32(vaddq_s32(v284.val[1], v135), v277.val[0]);
                  v284.val[1] = vaddq_s32(v271.val[0], v279.val[1]);
                  v126 = xmmword_296B8F030;
                  v277.val[1] = vaddq_s32(v284.val[1], v277.val[1]);
                  v149 = vaddq_s32(vaddq_s32(v284.val[0], v138), v146);
                  v284.val[0] = vzip2q_s32(v277.val[0], v241);
                  v284.val[1] = vzip2q_s32(v277.val[1], v149);
                  v287.val[0] = vzip1q_s32(v277.val[0], v241);
                  v287.val[1] = vzip1q_s32(v277.val[1], v149);
                  v150 = vqtbl2q_s8(v238, xmmword_296B8F020);
                  v277.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                  v277.val[1] = vqtbl2q_s8(v234, xmmword_296B8F020);
                  v151 = v117 + 32;
                  vst2q_f32(v151, v287);
                  v287.val[1] = vaddq_s32(vshlq_n_s64(v150, 0x20uLL), v150);
                  v277.val[1] = vaddq_s32(vshlq_n_s64(v277.val[1], 0x20uLL), v277.val[1]);
                  v287.val[0] = vdupq_lane_s32(*v277.val[1].i8, 1);
                  v152 = vaddq_s32(vshlq_n_s64(v277.val[0], 0x20uLL), v277.val[0]);
                  v277.val[0] = vdupq_lane_s32(*v152.i8, 1);
                  v287.val[0].i64[0] = 0;
                  v277.val[1] = vaddq_s32(v287.val[0], v277.val[1]);
                  v287.val[0] = vdupq_lane_s32(*v287.val[1].i8, 1);
                  v287.val[0].i64[0] = 0;
                  v277.val[0].i64[0] = 0;
                  v153 = vaddq_s32(v277.val[0], v152);
                  v277.val[0] = vaddq_s32(v287.val[0], v287.val[1]);
                  v269.val[1] = vqtbl2q_s8(*(&v269 + 16), xmmword_296B8F020);
                  v266.val[1] = vqtbl2q_s8(*(&v266 + 16), xmmword_296B8F020);
                  v269.val[0] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v269.val[1] = vaddq_s32(vshlq_n_s64(v269.val[1], 0x20uLL), v269.val[1]);
                  v269.val[0] = vaddq_s32(vshlq_n_s64(v269.val[0], 0x20uLL), v269.val[0]);
                  v154 = vaddq_s32(vdupq_laneq_s32(v277.val[0], 3), v277.val[1]);
                  v155 = v117 + 40;
                  vst2q_f32(v155, v284);
                  v284.val[0] = vdupq_lane_s32(*v269.val[0].i8, 1);
                  v284.val[1] = vdupq_lane_s32(*v269.val[1].i8, 1);
                  v284.val[1].i64[0] = 0;
                  v277.val[1] = vaddq_s32(vshlq_n_s64(v266.val[1], 0x20uLL), v266.val[1]);
                  v284.val[0].i64[0] = 0;
                  v266.val[1] = vdupq_laneq_s32(v154, 3);
                  v269.val[1] = vaddq_s32(v284.val[1], v269.val[1]);
                  v269.val[0] = vaddq_s32(vdupq_laneq_s32(v269.val[1], 3), vaddq_s32(v284.val[0], v269.val[0]));
                  v284.val[0] = vdupq_lane_s32(*v277.val[1].i8, 1);
                  v284.val[0].i64[0] = 0;
                  v264.val[0] = vdupq_laneq_s32(v264.val[0], 3);
                  v156 = v117 + 48;
                  vst2q_f32(v156, *(&v274 + 16));
                  v51 = xmmword_296B8F060;
                  v50 = v228;
                  v157 = v229;
                  v287.val[1] = vqtbl2q_s8(*v50.i8, xmmword_296B8F070);
                  v287.val[0] = vqtbl2q_s8(v227, xmmword_296B8F080);
                  v284.val[1] = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v264.val[1] = vdupq_laneq_s32(v264.val[1], 3);
                  v284.val[1] = vaddq_s32(vshlq_n_s64(v284.val[1], 0x20uLL), v284.val[1]);
                  v287.val[0] = vdupq_lane_s32(*v284.val[1].i8, 1);
                  v287.val[0].i64[0] = 0;
                  v277.val[0] = vaddq_s32(vaddq_s32(v277.val[0], v135), v264.val[0]);
                  v269.val[1] = vaddq_s32(vaddq_s32(v269.val[1], v279.val[1]), v264.val[1]);
                  v284.val[1] = vaddq_s32(v287.val[0], v284.val[1]);
                  v266.val[0] = vdupq_laneq_s32(v266.val[0], 3);
                  v287.val[0] = vaddq_s32(vaddq_s32(v284.val[1], v138), v266.val[0]);
                  v158 = v117 + 56;
                  vst2q_f32(v158, v281);
                  v281.val[0] = vzip1q_s32(v277.val[0], v241);
                  v281.val[1] = vzip1q_s32(v269.val[1], v287.val[0]);
                  v159 = v117 + 64;
                  vst2q_f32(v159, v281);
                  v281.val[1] = vqtbl2q_s8(*v50.i8, xmmword_296B8F050);
                  v281.val[0] = vqtbl2q_s8(v227, xmmword_296B8F060);
                  v281.val[0] = vqtbl2q_s8(v281, xmmword_296B8F020);
                  v281.val[0] = vaddq_s32(vshlq_n_s64(v281.val[0], 0x20uLL), v281.val[0]);
                  v287.val[1] = vzip2q_s32(v277.val[0], v241);
                  v289.val[0] = vzip2q_s32(v269.val[1], v287.val[0]);
                  v269.val[1] = vdupq_lane_s32(*v281.val[0].i8, 1);
                  v269.val[1].i64[0] = 0;
                  v269.val[1] = vaddq_s32(v269.val[1], v281.val[0]);
                  v281.val[0] = vdupq_laneq_s32(v269.val[0], 3);
                  v160 = vaddq_s32(vaddq_s32(v154, v135), v264.val[0]);
                  v269.val[0] = vaddq_s32(vaddq_s32(v269.val[0], v279.val[1]), v264.val[1]);
                  v269.val[1] = vaddq_s32(vdupq_laneq_s32(v284.val[1], 3), v269.val[1]);
                  v281.val[1] = vaddq_s32(vaddq_s32(v269.val[1], v138), v266.val[0]);
                  v161 = v117 + 72;
                  vst2q_f32(v161, *(&v287 + 16));
                  v287.val[0] = vzip1q_s32(v160, v241);
                  v287.val[1] = vzip1q_s32(v269.val[0], v281.val[1]);
                  v162 = v117 + 80;
                  vst2q_f32(v162, v287);
                  v277.val[1] = vaddq_s32(v284.val[0], v277.val[1]);
                  v287.val[1] = vqtbl2q_s8(*v50.i8, xmmword_296B8F030);
                  v287.val[0] = vqtbl2q_s8(v227, xmmword_296B8F040);
                  v42 = vaddq_s32(vaddq_s32(vaddq_s32(v153, v266.val[1]), v135), v264.val[0]);
                  v284.val[1] = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v284.val[1] = vaddq_s32(vshlq_n_s64(v284.val[1], 0x20uLL), v284.val[1]);
                  v287.val[0] = vdupq_lane_s32(*v284.val[1].i8, 1);
                  v284.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v277.val[1], v281.val[0]), v279.val[1]), v264.val[1]);
                  v287.val[0].i64[0] = 0;
                  v284.val[1] = vaddq_s32(v287.val[0], v284.val[1]);
                  v269.val[1] = vdupq_laneq_s32(v269.val[1], 3);
                  v287.val[0] = vzip2q_s32(v160, v241);
                  v287.val[1] = vzip2q_s32(v269.val[0], v281.val[1]);
                  v163 = v117 + 88;
                  vst2q_f32(v163, v287);
                  v269.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v284.val[1], v269.val[1]), v138), v266.val[0]);
                  v287.val[0] = vzip2q_s32(v42, v241);
                  v287.val[1] = vzip2q_s32(v284.val[0], v269.val[0]);
                  v289.val[0] = vzip1q_s32(v42, v241);
                  v289.val[1] = vzip1q_s32(v284.val[0], v269.val[0]);
                  v164 = v117 + 96;
                  vst2q_f32(v164, v289);
                  v87 = xmmword_296B8F010;
                  v165 = v117 + 104;
                  vst2q_f32(v165, v287);
                  v52 = xmmword_296B8F000;
                  v284.val[0] = vqtbl2q_s8(*v50.i8, xmmword_296B8F000);
                  v281.val[1] = vqtbl2q_s8(v227, xmmword_296B8F010);
                  v54 = xmmword_296B8F050;
                  v53 = xmmword_296B8F080;
                  v269.val[0] = vqtbl2q_s8(v240, xmmword_296B8F020);
                  v269.val[0] = vaddq_s32(vshlq_n_s64(v269.val[0], 0x20uLL), v269.val[0]);
                  v166 = vdupq_lane_s32(*v269.val[0].i8, 1);
                  v166.i64[0] = 0;
                  v167 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v153, 3), vaddq_s32(v166, v269.val[0])), v266.val[1]);
                  v266.val[1] = v225;
                  v269.val[0] = v226;
                  v266.val[1] = vqtbl2q_s8(*(&v266 + 16), xmmword_296B8F020);
                  v266.val[1] = vaddq_s32(vshlq_n_s64(v266.val[1], 0x20uLL), v266.val[1]);
                  v269.val[0] = vdupq_lane_s32(*v266.val[1].i8, 1);
                  v269.val[0].i64[0] = 0;
                  v266.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v277.val[1], 3), vaddq_s32(v269.val[0], v266.val[1])), v281.val[0]);
                  v269.val[0] = vqtbl2q_s8(*(&v281 + 16), xmmword_296B8F020);
                  v269.val[0] = vaddq_s32(vshlq_n_s64(v269.val[0], 0x20uLL), v269.val[0]);
                  v168 = vdupq_lane_s32(*v269.val[0].i8, 1);
                  v168.i64[0] = 0;
                  v269.val[0] = vaddq_s32(v168, v269.val[0]);
                  v41 = xmmword_296B8F070;
                  v35 = vaddq_s32(vaddq_s32(v167, v135), v264.val[0]);
                  v264.val[0] = vdupq_laneq_s32(v284.val[1], 3);
                  v44 = v241;
                  v40 = vaddq_s32(vaddq_s32(vaddq_s32(v264.val[0], v269.val[0]), v269.val[1]), v138);
                  v36 = vaddq_s32(vaddq_s32(v266.val[1], v279.val[1]), v264.val[1]);
                  v264.val[1] = vaddq_s32(v40, v266.val[0]);
                  v48 = v264.val[1].u32[3];
                  v266.val[0] = vzip1q_s32(v35, v241);
                  v169 = v117 + 112;
                  v266.val[1] = vzip1q_s32(v36, v264.val[1]);
                  vst2q_f32(v169, v266);
                  v266.val[0] = vzip2q_s32(v35, v241);
                  v266.val[1] = vzip2q_s32(v36, v264.val[1]);
                  v170 = v117 + 120;
                  vst2q_f32(v170, v266);
                  v37 = vextq_s8(v36, v36, 8uLL);
                  v38 = vextq_s8(v35, v35, 8uLL);
                  *v50.i8 = vzip2_s32(*v38.i8, *v37.i8);
                  v117 += 128;
                  v171 = v88 + 64;
                  v88 += 32;
                }

                while (v171 <= v32);
                v116 = v36.u32[3];
                v115 = v35.u32[3];
                v34 = v223;
                v33 = v224;
              }

              else
              {
                v115 = v50.i32[0];
                v116 = v50.u32[1];
                v117 = a11;
              }

              if (v88 + 8 <= v32)
              {
                v174 = v257 + v45;
                v175 = v257 + v45 + 2 * v257;
                v176 = v45 + 2 * v257;
                v177 = v250 + v46;
                result = v250 + v46 + 2 * v250;
                v178 = v46 + 2 * v250;
                v179 = v243 + v47;
                v180 = v243 + v47 + 2 * v243;
                v181 = v47 + 2 * v243;
                do
                {
                  v35.i64[0] = *(v45 + v88);
                  v36.i64[0] = *(v174 + v88);
                  v37.i64[0] = *(v176 + v88);
                  v38.i64[0] = *(v175 + v88);
                  v182 = vzip1q_s8(v38, v36);
                  v183 = vzip1q_s8(v37, v35);
                  v184 = vzip1q_s8(v182, v183);
                  v185 = vzip2q_s8(v182, v183);
                  v186 = vaddq_s32(vshlq_n_s64(v184, 0x20uLL), v184);
                  v187 = vaddq_s32(vshlq_n_s64(v185, 0x20uLL), v185);
                  v188 = vdupq_lane_s32(*v187.i8, 1);
                  v189 = vdupq_lane_s32(*v186.i8, 1);
                  v190 = vdupq_n_s32(v115);
                  v40.i64[0] = *(v46 + v88);
                  v191 = vaddq_s32(v187, v190);
                  v187.i64[0] = *(v177 + v88);
                  v41.i64[0] = *(v178 + v88);
                  v189.i64[0] = 0;
                  v42.i64[0] = *(result + v88);
                  v192 = vzip1q_s8(v42, v187);
                  v193 = vzip1q_s8(v41, v40);
                  v188.i64[0] = 0;
                  v194 = vzip1q_s8(v192, v193);
                  v195 = vaddq_s32(vshlq_n_s64(v194, 0x20uLL), v194);
                  v196 = vdupq_lane_s32(*v195.i8, 1);
                  v197 = vaddq_s32(v189, v186);
                  v198 = vzip2q_s8(v192, v193);
                  v196.i64[0] = 0;
                  v199 = vdupq_n_s32(v116);
                  v200 = vaddq_s32(v188, v191);
                  v193.i64[0] = *(v47 + v88);
                  v191.i64[0] = *(v179 + v88);
                  v41 = vaddq_s32(v196, v195);
                  v196.i64[0] = *(v181 + v88);
                  v43.i64[0] = *(v180 + v88);
                  v201 = vdupq_laneq_s32(v197, 3);
                  v202 = vzip1q_s8(v43, v191);
                  v203 = vzip1q_s8(v196, v193);
                  v204 = vzip1q_s8(v202, v203);
                  v205 = vaddq_s32(vshlq_n_s64(v204, 0x20uLL), v204);
                  v206 = vaddq_s32(v197, v190);
                  v207 = vdupq_lane_s32(*v205.i8, 1);
                  v207.i64[0] = 0;
                  v42 = vaddq_s32(v207, v205);
                  v208 = vaddq_s32(v41, v199);
                  v43 = vdupq_n_s32(v48);
                  v209 = vaddq_s32(v42, v43);
                  v283.val[0] = vzip1q_s32(v206, v44);
                  v210 = v117 + 16;
                  v283.val[1] = vzip1q_s32(v208, v209);
                  v211 = v117;
                  vst2q_f32(v211, v283);
                  v211 += 8;
                  v212 = vaddq_s32(vshlq_n_s64(v198, 0x20uLL), v198);
                  v213 = vdupq_lane_s32(*v212.i8, 1);
                  v213.i64[0] = 0;
                  v214 = vaddq_s32(v200, v201);
                  v215 = vaddq_s32(v213, vaddq_s32(v212, v199));
                  v216 = vzip2q_s8(v202, v203);
                  v35 = vaddq_s32(v215, vdupq_laneq_s32(v41, 3));
                  v217 = vaddq_s32(vshlq_n_s64(v216, 0x20uLL), v216);
                  v218 = vdupq_lane_s32(*v217.i8, 1);
                  v115 = v214.u32[3];
                  v218.i64[0] = 0;
                  v40 = vdupq_laneq_s32(v42, 3);
                  v116 = v35.u32[3];
                  v219 = v117 + 24;
                  v36 = vaddq_s32(vaddq_s32(v218, vaddq_s32(v217, v43)), v40);
                  v48 = v36.u32[3];
                  v267.val[0] = vzip2q_s32(v206, v44);
                  v267.val[1] = vzip2q_s32(v208, v209);
                  vst2q_f32(v211, v267);
                  v267.val[0] = vzip1q_s32(v214, v44);
                  v267.val[1] = vzip1q_s32(v35, v36);
                  vst2q_f32(v210, v267);
                  v37 = vzip2q_s32(v214, v44);
                  v38 = vzip2q_s32(v35, v36);
                  vst2q_f32(v219, *v37.i8);
                  v173 = v117 + 32;
                  v172 = v88 + 8;
                  v220 = v88 + 16;
                  v88 += 8;
                  v117 += 32;
                }

                while (v220 <= v32);
              }

              else
              {
                v172 = v88;
                v173 = v117;
              }

              if (v172 < v32)
              {
                do
                {
                  v115 += (*(v256[0] + v172) << 24) | (*(v256[0] + v172 + v257) << 16) | (*(v256[0] + v172 + 2 * v257) << 8) | *(v256[0] + v172 + 2 * v257);
                  v221 = *(v242[0] + v172 + 2 * v243);
                  v116 += (*(v249[0] + v172) << 24) | (*(v249[0] + v172 + v250) << 16) | (*(v249[0] + v172 + 2 * v250) << 8) | *(v249[0] + v172 + 2 * v250);
                  *&v222 = __PAIR64__(v116, v115);
                  DWORD2(v222) = a6;
                  v48 += (*(v242[0] + v172) << 24) | (*(v242[0] + v172 + v243) << 16) | (v221 << 8) | v221;
                  HIDWORD(v222) = v48;
                  *v173 = v222;
                  v173 += 4;
                  ++v172;
                }

                while (v32 != v172);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

__int16 *CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(__int16 *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v283 = 2;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v281 = v20.i32[0];
    v279 = v19;
    v277[1] = result;
    v280 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v278 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v282 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v277);
    v276 = 2;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v274 = v23.i32[0];
    v272 = v22;
    v270[1] = v17;
    v273 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v271 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v275 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v270);
    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v25 = _D0;
    }

    else
    {
      v25 = 32256;
    }

    v269 = 2;
    v31 = *(a7 + 8);
    v32 = a3[3];
    v267 = v32.i32[0];
    v265 = v31;
    v263[1] = v17;
    v266 = a3[6].i32[1] + v32.i32[1] * v18;
    v33 = a3[7].u32[1];
    v264 = vmin_u32(vmls_s32(*(*(*&v31[5] + 8 * v33) + 16), v31[6], v32), v31[6]).u32[0];
    v268 = v33;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v263);
    v34 = a3[6].u32[1];
    if (a3[7].u32[0] + v34 < v18)
    {
      v36 = a3[3].i32[1] * *(a2 + 60);
      v37 = a3[5].u32[1];
      v38 = v37 + a9;
      v262 = vdupq_n_s16(v25);
      do
      {
        v280 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v277);
        v273 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v270);
        v266 = v36 + v34;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v263);
        v41.i64[0] = 0xFFFFFFFF00000000;
        v41.i64[1] = 0xFFFFFFFF00000000;
        v42 = v277[0];
        if (v277[0])
        {
          v43 = v270[0];
          if (v270[0])
          {
            v44 = v263[0];
            if (v263[0])
            {
              if (v37 >= 0x20)
              {
                v49 = 0;
                v47 = 0;
                v46 = 0;
                v45 = 0;
                v50 = v278 + v277[0];
                v51 = v271 + v270[0];
                v52 = v264 + v263[0];
                do
                {
                  v54 = *(v277[0] + v49);
                  v53 = *(v277[0] + v49 + 16);
                  v56 = *(v50 + v49);
                  v55 = *(v50 + v49 + 16);
                  v57 = vzip1q_s8(v56, v54);
                  v58 = vzip2q_s8(v56, v54);
                  v59 = vzip1q_s8(v55, v53);
                  v60 = vzip2q_s8(v55, v53);
                  v61 = vaddq_s16(vshlq_n_s32(v57, 0x10uLL), v57);
                  v62 = vaddq_s16(vshlq_n_s32(v58, 0x10uLL), v58);
                  v63 = vaddq_s16(vshlq_n_s32(v59, 0x10uLL), v59);
                  v64 = vaddq_s16(vshlq_n_s32(v60, 0x10uLL), v60);
                  v65 = vaddq_s16(vandq_s8(vqtbl1q_s8(v64, xmmword_296B8F090), v41), v64);
                  v66 = vaddq_s16(vandq_s8(vqtbl1q_s8(v63, xmmword_296B8F090), v41), v63);
                  v67 = vaddq_s16(vandq_s8(vqtbl1q_s8(v62, xmmword_296B8F090), v41), v62);
                  v68 = vaddq_s16(vandq_s8(vqtbl1q_s8(v61, xmmword_296B8F090), v41), v61);
                  v70 = *(v270[0] + v49);
                  v69 = *(v270[0] + v49 + 16);
                  v72 = *(v51 + v49);
                  v71 = *(v51 + v49 + 16);
                  v73 = vzip1q_s8(v72, v70);
                  v74 = vzip2q_s8(v72, v70);
                  v75 = vzip1q_s8(v71, v69);
                  v76 = vzip2q_s8(v71, v69);
                  v77 = vaddq_s16(vshlq_n_s32(v73, 0x10uLL), v73);
                  v78 = vaddq_s16(vshlq_n_s32(v74, 0x10uLL), v74);
                  v79 = vaddq_s16(vshlq_n_s32(v75, 0x10uLL), v75);
                  v80 = vaddq_s16(vshlq_n_s32(v76, 0x10uLL), v76);
                  v81 = vaddq_s16(vandq_s8(vqtbl1q_s8(v80, xmmword_296B8F090), v41), v80);
                  v82 = vaddq_s16(vandq_s8(vqtbl1q_s8(v79, xmmword_296B8F090), v41), v79);
                  v83 = vaddq_s16(vandq_s8(vqtbl1q_s8(v78, xmmword_296B8F090), v41), v78);
                  v84 = vaddq_s16(vandq_s8(vqtbl1q_s8(v77, xmmword_296B8F090), v41), v77);
                  v85 = vaddq_s16(vdupq_lane_s16(*v82.i8, 3), v82);
                  v87 = *(v263[0] + v49);
                  v86 = *(v263[0] + v49 + 16);
                  v89 = *(v52 + v49);
                  v88 = *(v52 + v49 + 16);
                  v90 = vzip1q_s8(v89, v87);
                  v91 = vzip2q_s8(v89, v87);
                  v92 = vzip1q_s8(v88, v86);
                  v93 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v68.i8, 3), v68), vaddq_s16(vdupq_lane_s16(*v67.i8, 3), v67));
                  v94 = vzip2q_s8(v88, v86);
                  v95 = vaddq_s16(vshlq_n_s32(v90, 0x10uLL), v90);
                  v96 = vaddq_s16(vshlq_n_s32(v91, 0x10uLL), v91);
                  v97 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v66.i8, 3), v66), vaddq_s16(vdupq_lane_s16(*v65.i8, 3), v65));
                  v98 = vaddq_s16(vshlq_n_s32(v92, 0x10uLL), v92);
                  v99 = vaddq_s16(vshlq_n_s32(v94, 0x10uLL), v94);
                  v100 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v84.i8, 3), v84), vaddq_s16(vdupq_lane_s16(*v83.i8, 3), v83));
                  v101 = vaddq_s16(vandq_s8(vqtbl1q_s8(v99, xmmword_296B8F090), v41), v99);
                  v102 = vaddq_s16(vandq_s8(vqtbl1q_s8(v98, xmmword_296B8F090), v41), v98);
                  v103 = vaddq_s16(vandq_s8(vqtbl1q_s8(v96, xmmword_296B8F090), v41), v96);
                  v104 = vaddq_s16(v97, v93);
                  v105 = vaddq_s16(vandq_s8(vqtbl1q_s8(v95, xmmword_296B8F090), v41), v95);
                  v106 = v104.u16[7];
                  v40 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v105.i8, 3), v105), vaddq_s16(vdupq_lane_s16(*v103.i8, 3), v103));
                  v39 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v102.i8, 3), v102), vaddq_s16(vdupq_lane_s16(*v101.i8, 3), v101)), v40);
                  v47 += v106;
                  v46 += vaddq_s16(vaddq_s16(v85, vaddq_s16(vdupq_lane_s16(*&v81, 3), v81)), v100).u16[7];
                  v45 += v39.u16[7];
                  result = (v49 + 64);
                  v49 += 32;
                }

                while (result <= v37);
                v48 = v37 & 0xFFFFFFE0;
              }

              else
              {
                v45 = 0;
                v46 = 0;
                v47 = 0;
                v48 = 0;
              }

              if ((v48 | 8) <= v37)
              {
                result = (v264 + v263[0]);
                do
                {
                  v39.i64[0] = *(v277[0] + v48);
                  v40.i64[0] = *(v278 + v277[0] + v48);
                  v108 = vzip1q_s8(v40, v39);
                  v109 = vaddq_s16(vshlq_n_s32(v108, 0x10uLL), v108);
                  v110 = vextq_s8(v109, v109, 0xCuLL);
                  v111 = vaddq_s16(v110, v109);
                  v112 = v111.u16[3];
                  v113 = v111.u16[7] + v47;
                  v111.i64[0] = *(v270[0] + v48);
                  v110.i64[0] = *(v271 + v270[0] + v48);
                  v114 = vzip1q_s8(v110, v111);
                  v115 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                  v116 = vextq_s8(v115, v115, 0xCuLL);
                  v117 = vaddq_s16(v116, v115);
                  v47 = v113 + v112;
                  v118 = v117.u16[3];
                  v117.i64[0] = *(v263[0] + v48);
                  v46 += v117.u16[7] + v118;
                  v116.i64[0] = *(result + v48);
                  v119 = vzip1q_s8(v116, v117);
                  v120 = vaddq_s16(vshlq_n_s32(v119, 0x10uLL), v119);
                  v40 = vextq_s8(v120, v120, 0xCuLL);
                  v39 = vaddq_s16(v40, v120);
                  v45 += v39.u16[7] + v39.u16[3];
                  v107 = v48 + 8;
                  v121 = v48 + 16;
                  v48 += 8;
                }

                while (v121 <= v37);
              }

              else
              {
                v107 = v48;
              }

              v122 = v37 - v107;
              if (v37 > v107)
              {
                v123 = (v107 + v277[0] + v278);
                v124 = (v277[0] + v107);
                result = (v107 + v270[0] + v271);
                v125 = (v270[0] + v107);
                v126 = (v107 + v263[0] + v264);
                v127 = (v263[0] + v107);
                do
                {
                  v129 = *v124++;
                  v128 = v129;
                  v130 = *v123++;
                  v131 = v130 | (v128 << 8);
                  v133 = *v125++;
                  v132 = v133;
                  v47 += v131;
                  v134 = *result;
                  result = (result + 1);
                  v135 = v134 | (v132 << 8);
                  v137 = *v127++;
                  v136 = v137;
                  v46 += v135;
                  v138 = *v126++;
                  v45 += v138 | (v136 << 8);
                  --v122;
                }

                while (v122);
                v107 = v37;
              }

              if (v107 + 32 <= v38)
              {
                v141 = v278 + v277[0];
                v142 = v271 + v270[0];
                v143 = v264 + v263[0];
                result = a11;
                do
                {
                  v145 = *(v42 + v107);
                  v144 = *(v42 + v107 + 16);
                  v147 = *(v141 + v107);
                  v146 = *(v141 + v107 + 16);
                  v148 = vzip2q_s8(v147, v145);
                  v149 = vzip2q_s8(v146, v144);
                  v150 = vzip1q_s8(v146, v144);
                  v151 = vzip1q_s8(v147, v145);
                  v152 = vaddq_s16(vshlq_n_s32(v148, 0x10uLL), v148);
                  v153 = vaddq_s16(vshlq_n_s32(v149, 0x10uLL), v149);
                  v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                  v155 = vaddq_s16(vshlq_n_s32(v151, 0x10uLL), v151);
                  v156 = vaddq_s16(vandq_s8(vqtbl1q_s8(v155, xmmword_296B8F090), v41), v155);
                  v157 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v41), v154);
                  v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v41), v153);
                  v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v152, xmmword_296B8F090), v41), v152);
                  v160 = vdupq_n_s16(v47);
                  v162 = *(v43 + v107);
                  v161 = *(v43 + v107 + 16);
                  v164 = *(v142 + v107);
                  v163 = *(v142 + v107 + 16);
                  v165 = vzip2q_s8(v164, v162);
                  v166 = vzip2q_s8(v163, v161);
                  v167 = vzip1q_s8(v163, v161);
                  v168 = vzip1q_s8(v164, v162);
                  v169 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159);
                  v170 = vaddq_s16(vshlq_n_s32(v165, 0x10uLL), v165);
                  v171 = vaddq_s16(vshlq_n_s32(v166, 0x10uLL), v166);
                  v172 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158);
                  v173 = vaddq_s16(vshlq_n_s32(v167, 0x10uLL), v167);
                  v174 = vaddq_s16(vshlq_n_s32(v168, 0x10uLL), v168);
                  v175 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v157.i8, 3), xmmword_296B8F0A0), v157);
                  v176 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v156.i8, 3), xmmword_296B8F0A0), v156);
                  v177 = vaddq_s16(vandq_s8(vqtbl1q_s8(v174, xmmword_296B8F090), v41), v174);
                  v178 = vaddq_s16(vandq_s8(vqtbl1q_s8(v173, xmmword_296B8F090), v41), v173);
                  v179 = vaddq_s16(vandq_s8(vqtbl1q_s8(v171, xmmword_296B8F090), v41), v171);
                  v180 = vaddq_s16(vandq_s8(vqtbl1q_s8(v170, xmmword_296B8F090), v41), v170);
                  v181 = vdupq_laneq_s16(v176, 7);
                  v182 = vdupq_laneq_s16(v175, 7);
                  v183 = vaddq_s16(v175, v160);
                  v184 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v179.i8, 3), xmmword_296B8F0A0), v179);
                  v185 = vaddq_s16(v176, v160);
                  v186 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v178.i8, 3), xmmword_296B8F0A0), v178);
                  v187 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v177.i8, 3), xmmword_296B8F0A0), v177);
                  v188 = vdupq_laneq_s16(v187, 7);
                  v189 = vdupq_laneq_s16(v186, 7);
                  v190 = vdupq_n_s16(v46);
                  v191 = vaddq_s16(v186, v190);
                  v193 = *(v44 + v107);
                  v192 = *(v44 + v107 + 16);
                  v194 = vaddq_s16(v187, v190);
                  v196 = *(v143 + v107);
                  v195 = *(v143 + v107 + 16);
                  v197 = vzip2q_s8(v196, v193);
                  v198 = vaddq_s16(v182, v172);
                  v199 = vzip2q_s8(v195, v192);
                  v200 = vzip1q_s8(v195, v192);
                  v201 = vzip1q_s8(v196, v193);
                  v202 = vaddq_s16(v181, v169);
                  v203 = vaddq_s16(vshlq_n_s32(v197, 0x10uLL), v197);
                  v204 = vaddq_s16(vshlq_n_s32(v199, 0x10uLL), v199);
                  v205 = vaddq_s16(vshlq_n_s32(v200, 0x10uLL), v200);
                  v206 = vaddq_s16(v189, v184);
                  v207 = vaddq_s16(vshlq_n_s32(v201, 0x10uLL), v201);
                  v208 = vaddq_s16(v188, vaddq_s16(vandq_s8(vdupq_lane_s16(*v180.i8, 3), xmmword_296B8F0A0), v180));
                  v209 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_296B8F090), v41), v207);
                  v210 = vdupq_laneq_s16(v202, 7);
                  v211 = vaddq_s16(vandq_s8(vqtbl1q_s8(v205, xmmword_296B8F090), v41), v205);
                  v212 = vaddq_s16(vandq_s8(vqtbl1q_s8(v203, xmmword_296B8F090), v41), v203);
                  v213 = vaddq_s16(v198, v160);
                  v214 = vaddq_s16(vandq_s8(vqtbl1q_s8(v204, xmmword_296B8F090), v41), v204);
                  v215 = vaddq_s16(v202, v160);
                  v216 = vdupq_laneq_s16(v208, 7);
                  v217 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v211.i8, 3), xmmword_296B8F0A0), v211);
                  v218 = vaddq_s16(v206, v190);
                  v219 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v209.i8, 3), xmmword_296B8F0A0), v209);
                  v220 = vaddq_s16(v208, v190);
                  v221 = vaddq_s16(vdupq_laneq_s16(v217, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v214.i8, 3), xmmword_296B8F0A0), v214));
                  v222 = vaddq_s16(vdupq_laneq_s16(v219, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v212.i8, 3), xmmword_296B8F0A0), v212));
                  v223 = vdupq_n_s16(v45);
                  v224 = vdupq_laneq_s16(v222, 7);
                  v225 = vaddq_s16(v221, v223);
                  v226 = vaddq_s16(v222, v223);
                  v227 = vaddq_s16(v217, v223);
                  v228 = vaddq_s16(v219, v223);
                  v288.val[0] = vzip2q_s16(v215, v262);
                  v229 = vaddq_s16(v213, v210);
                  v288.val[1] = vzip2q_s16(v220, v226);
                  v287.val[0] = vzip1q_s16(v215, v262);
                  v287.val[1] = vzip1q_s16(v220, v226);
                  v289.val[0] = vzip2q_s16(v185, v262);
                  v289.val[1] = vzip2q_s16(v194, v228);
                  v230 = vaddq_s16(v183, v210);
                  v140 = result + 128;
                  v231 = result + 32;
                  v232 = result + 48;
                  v233 = result + 64;
                  v234 = result + 80;
                  v235 = vaddq_s16(v218, v216);
                  v236 = result + 96;
                  v237 = result + 112;
                  v290.val[0] = vzip1q_s16(v185, v262);
                  v290.val[1] = vzip1q_s16(v194, v228);
                  v39 = vaddq_s16(v191, v216);
                  vst2q_s16(result, v290);
                  v238 = result + 16;
                  v40 = vaddq_s16(v225, v224);
                  vst2q_s16(v238, v289);
                  v47 = v229.u16[7];
                  vst2q_s16(v231, v287);
                  v46 = v235.u16[7];
                  vst2q_s16(v232, v288);
                  v45 = v40.u16[7];
                  v239 = vaddq_s16(v227, v224);
                  v286.val[0] = vzip2q_s16(v229, v262);
                  v286.val[1] = vzip2q_s16(v235, v40);
                  v139 = v107 + 32;
                  v240 = v107 + 64;
                  v287.val[0] = vzip1q_s16(v230, v262);
                  v107 += 32;
                  v287.val[1] = vzip1q_s16(v39, v239);
                  vst2q_s16(v233, v287);
                  v287.val[0] = vzip2q_s16(v230, v262);
                  v287.val[1] = vzip2q_s16(v39, v239);
                  vst2q_s16(v234, v287);
                  v284.val[0] = vzip1q_s16(v229, v262);
                  v284.val[1] = vzip1q_s16(v235, v40);
                  vst2q_s16(v236, v284);
                  vst2q_s16(v237, v286);
                  result = v140;
                }

                while (v240 <= v38);
              }

              else
              {
                v139 = v107;
                v140 = a11;
              }

              if (v139 + 8 <= v38)
              {
                v243 = v278 + v42;
                v244 = v271 + v43;
                result = (v264 + v44);
                do
                {
                  v39.i64[0] = *(v42 + v139);
                  v40.i64[0] = *(v243 + v139);
                  v245 = vzip1q_s8(v40, v39);
                  v246 = vaddq_s16(vshlq_n_s32(v245, 0x10uLL), v245);
                  v247 = vaddq_s16(vandq_s8(vqtbl1q_s8(v246, xmmword_296B8F090), v41), v246);
                  v248 = vandq_s8(vdupq_lane_s16(*v247.i8, 3), xmmword_296B8F0A0);
                  v249 = vdupq_n_s16(v47);
                  v39 = vaddq_s16(vaddq_s16(v247, v249), v248);
                  v47 = v39.u16[7];
                  v248.i64[0] = *(v43 + v139);
                  v249.i64[0] = *(v244 + v139);
                  v250 = vzip1q_s8(v249, v248);
                  v251 = vaddq_s16(vshlq_n_s32(v250, 0x10uLL), v250);
                  v252 = vaddq_s16(vandq_s8(vqtbl1q_s8(v251, xmmword_296B8F090), v41), v251);
                  v253 = vandq_s8(vdupq_lane_s16(*v252.i8, 3), xmmword_296B8F0A0);
                  v254 = vdupq_n_s16(v46);
                  v40 = vaddq_s16(vaddq_s16(v252, v254), v253);
                  v46 = v40.u16[7];
                  v253.i64[0] = *(v44 + v139);
                  v254.i64[0] = *(result + v139);
                  v255 = vzip1q_s8(v254, v253);
                  v256 = vaddq_s16(vshlq_n_s32(v255, 0x10uLL), v255);
                  v257 = vaddq_s16(vandq_s8(vqtbl1q_s8(v256, xmmword_296B8F090), v41), v256);
                  v258 = vaddq_s16(vaddq_s16(v257, vdupq_n_s16(v45)), vandq_s8(vdupq_lane_s16(*v257.i8, 3), xmmword_296B8F0A0));
                  v45 = v258.u16[7];
                  v285.val[0] = vzip1q_s16(v39, v262);
                  v285.val[1] = vzip1q_s16(v40, v258);
                  v242 = v140 + 32;
                  vst2q_s16(v140, v285);
                  v259 = v140 + 16;
                  v285.val[0] = vzip2q_s16(v39, v262);
                  v285.val[1] = vzip2q_s16(v40, v258);
                  vst2q_s16(v259, v285);
                  v241 = v139 + 8;
                  v260 = v139 + 16;
                  v139 += 8;
                  v140 = v242;
                }

                while (v260 <= v38);
              }

              else
              {
                v241 = v139;
                v242 = v140;
              }

              if (v241 < v38)
              {
                do
                {
                  v47 += *(v277[0] + v241 + v278) | (*(v277[0] + v241) << 8);
                  v46 += *(v270[0] + v241 + v271) | (*(v270[0] + v241) << 8);
                  LOWORD(v261) = v47;
                  WORD1(v261) = v46;
                  WORD2(v261) = v25;
                  v45 += *(v263[0] + v241 + v264) | (*(v263[0] + v241) << 8);
                  HIWORD(v261) = v45;
                  *v242 = v261;
                  v242 += 4;
                  ++v241;
                }

                while (v38 != v241);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v34 += a10;
      }

      while (v34 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, double **a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v295 = 3;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v293 = v20.i32[0];
    v291 = v19;
    v289[1] = result;
    v292 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v290 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v294 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v289);
    v288 = 3;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v286 = v23.i32[0];
    v284 = v22;
    v282[1] = v17;
    v285 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v283 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v287 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v282);
    v26 = *a6;
    if (*(*a6 + 24))
    {
      v25 = *v26;
      *&v25 = *v26;
    }

    else
    {
      LODWORD(v25) = 2143289344;
    }

    v257 = *&v25;
    v281 = 3;
    v27 = *(a7 + 8);
    v28 = a3[3];
    v279 = v28.i32[0];
    v277 = v27;
    v275[1] = v17;
    v278 = a3[6].i32[1] + v28.i32[1] * v18;
    v29 = a3[7].u32[1];
    v276 = vmin_u32(vmls_s32(*(*(*&v27[5] + 8 * v29) + 16), v27[6], v28), v27[6]).u32[0];
    v280 = v29;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v275);
    v30 = a3[6].u32[1];
    if (a3[7].u32[0] + v30 < v18)
    {
      v32 = a3[3].i32[1] * *(a2 + 60);
      v33 = a3[5].u32[1];
      v34 = v33 + a9;
      v274 = vdupq_lane_s32(v257, 0);
      do
      {
        v292 = v32 + v30;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v289);
        v285 = v32 + v30;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v282);
        v278 = v32 + v30;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v275);
        v40 = 0uLL;
        v41 = v274;
        v42 = v289[0];
        if (v289[0])
        {
          v43 = v282[0];
          if (v282[0])
          {
            v44 = v275[0];
            if (v275[0])
            {
              if (v33 >= 0x20)
              {
                v51 = v289[0] + 2 * v290;
                v52 = v290 + v289[0];
                v53 = v282[0] + 2 * v283;
                v54 = v283 + v282[0];
                v55 = v275[0] + 2 * v276;
                v56 = v276 + v275[0];
                v48.i64[0] = 0;
                v57 = 32;
                v47.i64[0] = 0;
                v58.i64[0] = 0;
                v59 = xmmword_296B8F050;
                v60 = xmmword_296B8F0B0;
                v50 = xmmword_296B8F0D0;
                v49 = xmmword_296B8F070;
                do
                {
                  v269 = *v58.i8;
                  v272 = *v47.i8;
                  v297.val[1] = *(v289[0] + v57 - 32);
                  v299.val[1] = *(v289[0] + v57 - 16);
                  v297.val[0] = *(v51 + v57 - 32);
                  v299.val[0] = *(v51 + v57 - 16);
                  v308.val[1] = vqtbl2q_s8(v297, v59);
                  v62 = *(v52 + v57 - 32);
                  v61 = *(v52 + v57 - 16);
                  v308.val[0] = vqtbl1q_s8(v62, v60);
                  v311.val[1] = vqtbl2q_s8(v299, v59);
                  v311.val[0] = vqtbl1q_s8(v61, v60);
                  v308.val[0] = vqtbl2q_s8(v308, xmmword_296B8F020);
                  v308.val[1] = vqtbl2q_s8(v311, xmmword_296B8F020);
                  v311.val[1] = vqtbl2q_s8(v299, xmmword_296B8F000);
                  v311.val[0] = vqtbl1q_s8(v61, xmmword_296B8F0C0);
                  v313.val[1] = vqtbl2q_s8(v297, v49);
                  v313.val[0] = vqtbl1q_s8(v62, v50);
                  v311.val[0] = vqtbl2q_s8(v311, xmmword_296B8F020);
                  v311.val[1] = vqtbl2q_s8(v313, xmmword_296B8F020);
                  v313.val[1] = vqtbl2q_s8(v297, xmmword_296B8F000);
                  v313.val[0] = vqtbl1q_s8(v62, xmmword_296B8F0C0);
                  v297.val[1] = vqtbl2q_s8(v297, xmmword_296B8F030);
                  v297.val[0] = vqtbl1q_s8(v62, xmmword_296B8F0E0);
                  v63 = vqtbl2q_s8(v313, xmmword_296B8F020);
                  v313.val[0] = vqtbl2q_s8(v297, xmmword_296B8F020);
                  v297.val[1] = vqtbl2q_s8(v299, v49);
                  v297.val[0] = vqtbl1q_s8(v61, v50);
                  v299.val[1] = vqtbl2q_s8(v299, xmmword_296B8F030);
                  v299.val[0] = vqtbl1q_s8(v61, xmmword_296B8F0E0);
                  v313.val[1] = vqtbl2q_s8(v297, xmmword_296B8F020);
                  v299.val[1] = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v297.val[0] = vaddq_s32(vshlq_n_s64(v308.val[0], 0x20uLL), v308.val[0]);
                  v297.val[1] = vaddq_s32(vshlq_n_s64(v308.val[1], 0x20uLL), v308.val[1]);
                  v308.val[0] = vaddq_s32(vshlq_n_s64(v311.val[0], 0x20uLL), v311.val[0]);
                  v311.val[0] = vaddq_s32(vshlq_n_s64(v311.val[1], 0x20uLL), v311.val[1]);
                  v308.val[1] = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                  v299.val[0] = vaddq_s32(vshlq_n_s64(v313.val[0], 0x20uLL), v313.val[0]);
                  v299.val[1] = vaddq_s32(vshlq_n_s64(v299.val[1], 0x20uLL), v299.val[1]);
                  v64 = vaddq_s32(vshlq_n_s64(v313.val[1], 0x20uLL), v313.val[1]);
                  v315.val[1] = *(v282[0] + v57 - 32);
                  v319.val[1] = *(v282[0] + v57 - 16);
                  v65 = *(v54 + v57 - 32);
                  v313.val[0] = *(v54 + v57 - 16);
                  v315.val[0] = *(v53 + v57 - 32);
                  v319.val[0] = *(v53 + v57 - 16);
                  v317.val[1] = vqtbl2q_s8(v315, v59);
                  v317.val[0] = vqtbl1q_s8(v65, v60);
                  v66 = vqtbl2q_s8(v317, xmmword_296B8F020);
                  v317.val[1] = vqtbl2q_s8(v319, v59);
                  v317.val[0] = vqtbl1q_s8(v313.val[0], v60);
                  v67 = vqtbl2q_s8(v317, xmmword_296B8F020);
                  v317.val[1] = vqtbl2q_s8(v319, xmmword_296B8F000);
                  v317.val[0] = vqtbl1q_s8(v313.val[0], xmmword_296B8F0C0);
                  v68 = vqtbl2q_s8(v317, xmmword_296B8F020);
                  v304.val[1] = vqtbl2q_s8(v315, xmmword_296B8F070);
                  v317.val[1] = vdupq_lane_s32(*v308.val[0].i8, 1);
                  v304.val[0] = vqtbl1q_s8(v65, xmmword_296B8F0D0);
                  v304.val[0] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v69 = vqtbl2q_s8(v315, xmmword_296B8F000);
                  v304.val[1] = vqtbl1q_s8(v65, xmmword_296B8F0C0);
                  v317.val[0] = vdupq_lane_s32(*v297.val[1].i8, 1);
                  v311.val[1] = v297.val[1];
                  v304.val[1] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F020);
                  v315.val[1] = vqtbl2q_s8(v315, xmmword_296B8F030);
                  v315.val[0] = vqtbl1q_s8(v65, xmmword_296B8F0E0);
                  v70 = vqtbl2q_s8(v315, xmmword_296B8F020);
                  v315.val[0] = vdupq_lane_s32(*v297.val[0].i8, 1);
                  v306.val[1] = vqtbl2q_s8(v319, xmmword_296B8F070);
                  v306.val[0] = vqtbl1q_s8(v313.val[0], xmmword_296B8F0D0);
                  v306.val[0] = vqtbl2q_s8(v306, xmmword_296B8F020);
                  v319.val[1] = vqtbl2q_s8(v319, xmmword_296B8F030);
                  v315.val[0].i64[0] = 0;
                  v319.val[0] = vqtbl1q_s8(v313.val[0], xmmword_296B8F0E0);
                  v319.val[0] = vqtbl2q_s8(v319, xmmword_296B8F020);
                  v313.val[0] = vaddq_s32(vshlq_n_s64(v66, 0x20uLL), v66);
                  v317.val[0].i64[0] = 0;
                  v315.val[1] = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                  v71 = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
                  v317.val[1].i64[0] = 0;
                  v72 = vaddq_s32(vshlq_n_s64(v304.val[0], 0x20uLL), v304.val[0]);
                  v73 = vaddq_s32(vshlq_n_s64(v70, 0x20uLL), v70);
                  v319.val[0] = vaddq_s32(vshlq_n_s64(v319.val[0], 0x20uLL), v319.val[0]);
                  v74 = vaddq_s32(vdupq_lane_s32(*v308.val[1].i8, 1), v308.val[1]);
                  v75 = vaddq_s32(vshlq_n_s64(v306.val[0], 0x20uLL), v306.val[0]);
                  v308.val[1] = vaddq_s32(vdupq_lane_s32(*v64.i8, 1), v64);
                  v76 = vaddq_s32(vshlq_n_s64(v304.val[1], 0x20uLL), v304.val[1]);
                  v304.val[1] = vdupq_lane_s32(*v71.i8, 1);
                  v306.val[1] = vdupq_lane_s32(*v315.val[1].i8, 1);
                  v77 = vdupq_lane_s32(*v313.val[0].i8, 1);
                  v77.i64[0] = 0;
                  v306.val[1].i64[0] = 0;
                  v304.val[1].i64[0] = 0;
                  v308.val[0] = vaddq_s32(v317.val[1], v308.val[0]);
                  v78 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v299.val[0].i8, 1), v299.val[0]), v74);
                  v299.val[0] = vaddq_s32(vdupq_lane_s32(*v72.i8, 1), v72);
                  v59 = xmmword_296B8F050;
                  v297.val[1] = vaddq_s32(vdupq_lane_s32(*v75.i8, 1), v75);
                  v317.val[1] = vaddq_s32(vdupq_lane_s32(*v319.val[0].i8, 1), v319.val[0]);
                  v267 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v73.i8, 1), v73), vaddq_s32(vdupq_lane_s32(*v76.i8, 1), v76));
                  v319.val[0] = *(v275[0] + v57 - 32);
                  v79 = *(v275[0] + v57 - 16);
                  v297.val[0] = vaddq_s32(v315.val[0], v297.val[0]);
                  v80 = *(v56 + v57 - 32);
                  v315.val[0] = *(v56 + v57 - 16);
                  v81 = *(v55 + v57 - 32);
                  v319.val[1] = *(v55 + v57 - 16);
                  v313.val[1] = vaddq_s32(v304.val[1], v71);
                  v302.val[1] = vqtbl2q_s8(v319, xmmword_296B8F050);
                  v302.val[0] = vqtbl1q_s8(v80, xmmword_296B8F0B0);
                  v82 = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v302.val[1] = vqtbl2q_s8(*(&v319 + 16), xmmword_296B8F050);
                  v315.val[1] = vaddq_s32(v306.val[1], v315.val[1]);
                  v60 = xmmword_296B8F0B0;
                  v302.val[0] = vqtbl1q_s8(v315.val[0], xmmword_296B8F0B0);
                  v83 = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v302.val[1] = vqtbl2q_s8(*(&v319 + 16), xmmword_296B8F000);
                  v302.val[0] = vqtbl1q_s8(v315.val[0], xmmword_296B8F0C0);
                  v302.val[0] = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v304.val[0] = vqtbl2q_s8(v319, xmmword_296B8F070);
                  v302.val[1] = vqtbl1q_s8(v80, xmmword_296B8F0D0);
                  v302.val[1] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v304.val[1] = vqtbl2q_s8(v319, xmmword_296B8F000);
                  v304.val[0] = vqtbl1q_s8(v80, xmmword_296B8F0C0);
                  v311.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v311.val[0].i8, 1), v311.val[0]), v297.val[0]);
                  v84 = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v297.val[0] = vdupq_lane_s32(*v48.i8, 0);
                  v85 = vdupq_laneq_s32(v317.val[1], 3);
                  v308.val[1] = vaddq_s32(vdupq_laneq_s32(v308.val[1], 3), vaddq_s32(v317.val[0], v311.val[1]));
                  v317.val[1] = vqtbl2q_s8(v319, xmmword_296B8F030);
                  v50 = xmmword_296B8F0D0;
                  v317.val[0] = vqtbl1q_s8(v80, xmmword_296B8F0E0);
                  v49 = xmmword_296B8F070;
                  v317.val[0] = vqtbl2q_s8(v317, xmmword_296B8F020);
                  v86 = vqtbl2q_s8(*(&v319 + 16), xmmword_296B8F070);
                  v317.val[1] = vqtbl1q_s8(v315.val[0], xmmword_296B8F0D0);
                  v299.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v299.val[1].i8, 1), v299.val[1]), 3), v308.val[0]);
                  v308.val[0] = vqtbl2q_s8(*(&v317 + 16), xmmword_296B8F020);
                  v299.val[0] = vaddq_s32(v299.val[0], vaddq_s32(v77, v313.val[0]));
                  v87 = vqtbl2q_s8(*(&v319 + 16), xmmword_296B8F030);
                  v317.val[1] = vqtbl1q_s8(v315.val[0], xmmword_296B8F0E0);
                  v313.val[0] = vqtbl2q_s8(*(&v317 + 16), xmmword_296B8F020);
                  v311.val[1] = vaddq_s32(vdupq_laneq_s32(v297.val[1], 3), v315.val[1]);
                  v315.val[1] = vaddq_s32(vshlq_n_s64(v82, 0x20uLL), v82);
                  v88 = vaddq_s32(vshlq_n_s64(v302.val[0], 0x20uLL), v302.val[0]);
                  v89 = vaddq_s32(v85, v313.val[1]);
                  v313.val[1] = vaddq_s32(vshlq_n_s64(v84, 0x20uLL), v84);
                  v308.val[0] = vaddq_s32(vshlq_n_s64(v308.val[0], 0x20uLL), v308.val[0]);
                  v299.val[1] = vaddq_s32(v299.val[1], v308.val[1]);
                  v308.val[1] = vaddq_s32(vshlq_n_s64(v313.val[0], 0x20uLL), v313.val[0]);
                  v90 = vaddq_s32(v311.val[0], v78);
                  v311.val[0] = vaddq_s32(vshlq_n_s64(v317.val[0], 0x20uLL), v317.val[0]);
                  v91 = vaddq_s32(v89, v311.val[1]);
                  v311.val[1] = vaddq_s32(vshlq_n_s64(v302.val[1], 0x20uLL), v302.val[1]);
                  v92 = vdupq_lane_s32(*v88.i8, 1);
                  v297.val[1] = vaddq_s32(v299.val[0], v267);
                  v299.val[0] = vaddq_s32(vshlq_n_s64(v83, 0x20uLL), v83);
                  v93 = vdupq_lane_s32(*v299.val[0].i8, 1);
                  v92.i64[0] = 0;
                  v317.val[1] = vdupq_lane_s32(*v315.val[1].i8, 1);
                  v93.i64[0] = 0;
                  v297.val[1] = vaddq_s32(v91, v297.val[1]);
                  v317.val[1].i64[0] = 0;
                  v48 = vaddq_s32(vdupq_lane_s32(*v311.val[1].i8, 1), v311.val[1]);
                  v297.val[0] = vaddq_s32(vaddq_s32(v299.val[1], v90), v297.val[0]);
                  v39 = vaddq_s32(vdupq_lane_s32(*v311.val[0].i8, 1), v311.val[0]);
                  v47 = vaddq_s32(v297.val[1], vdupq_lane_s32(v272, 0));
                  v297.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v308.val[0].i8, 1), v308.val[0]), 3);
                  v37 = vaddq_s32(v39, vaddq_s32(vdupq_lane_s32(*v313.val[1].i8, 1), v313.val[1]));
                  v38 = vaddq_s32(v48, vaddq_s32(v317.val[1], v315.val[1]));
                  v48.i32[0] = v297.val[0].i32[3];
                  v297.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v308.val[1].i8, 1), v308.val[1]), 3), vaddq_s32(v92, v88)), vaddq_s32(v297.val[1], vaddq_s32(v93, v299.val[0])));
                  v36 = vaddq_s32(v38, v37);
                  v35 = vaddq_s32(v297.val[0], v36);
                  v47.i32[0] = v47.i32[3];
                  v58 = vaddq_s32(v35, vdupq_lane_s32(v269, 0));
                  v57 += 32;
                  v58.i32[0] = v58.i32[3];
                }

                while (v57 <= v33);
                v45 = v33 & 0xFFFFFFE0;
                v41 = v274;
                v40 = 0uLL;
                v46.i64[0] = v58.i64[0];
              }

              else
              {
                v45 = 0;
                v46.i64[0] = 0;
                v47.i64[0] = 0;
                v48.i64[0] = 0;
                v50 = xmmword_296B8F0D0;
                v49 = xmmword_296B8F070;
              }

              if ((v45 | 8) <= v33)
              {
                do
                {
                  v35.i64[0] = *(v289[0] + v45);
                  v36.i64[0] = *(v290 + v289[0] + v45);
                  v37.i64[0] = *(v289[0] + 2 * v290 + v45);
                  v95 = vzip1q_s8(v40, v36);
                  v96 = vzip1q_s8(v37, v35);
                  v97 = vzip1q_s8(v95, v96);
                  v98 = vzip2q_s8(v95, v96);
                  v99 = vaddq_s32(vshlq_n_s64(v97, 0x20uLL), v97);
                  v100 = vaddq_s32(vshlq_n_s64(v98, 0x20uLL), v98);
                  v101 = vdupq_lane_s32(*v100.i8, 1);
                  v102 = vaddq_s32(vdupq_lane_s32(*v99.i8, 1), v99);
                  v103 = vaddq_s32(v101, vaddq_s32(v100, vdupq_lane_s32(*v48.i8, 0)));
                  v103.i64[0] = *(v282[0] + v45);
                  v101.i64[0] = *(v283 + v282[0] + v45);
                  v104 = v103.i32[3] + v102.i32[3];
                  v102.i64[0] = *(v282[0] + 2 * v283 + v45);
                  v105 = vzip1q_s8(v40, v101);
                  v106 = vzip1q_s8(v102, v103);
                  v107 = vzip1q_s8(v105, v106);
                  v108 = vzip2q_s8(v105, v106);
                  v109 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
                  v110 = vdupq_lane_s32(*v109.i8, 1);
                  v111 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                  v48 = vdupq_lane_s32(*v111.i8, 1);
                  v112 = vaddq_s32(v48, v111);
                  v47 = vaddq_s32(v110, vaddq_s32(v109, vdupq_lane_s32(*v47.i8, 0)));
                  v48.i32[0] = v104;
                  v109.i64[0] = *(v275[0] + v45);
                  v110.i64[0] = *(v276 + v275[0] + v45);
                  v47.i32[0] = v47.i32[3] + v112.i32[3];
                  v112.i64[0] = *(v275[0] + 2 * v276 + v45);
                  v113 = vzip1q_s8(v40, v110);
                  v114 = vzip1q_s8(v112, v109);
                  v115 = vzip1q_s8(v113, v114);
                  v116 = vzip2q_s8(v113, v114);
                  v35 = vaddq_s32(vshlq_n_s64(v116, 0x20uLL), v116);
                  v36 = vdupq_lane_s32(*v35.i8, 1);
                  v117 = vaddq_s32(vshlq_n_s64(v115, 0x20uLL), v115);
                  v37 = vaddq_s32(vdupq_lane_s32(*v117.i8, 1), v117);
                  v46.i32[0] = vaddq_s32(*&v36, vaddq_s32(*&v35, vdupq_lane_s32(*&v46, 0))).i32[3] + v37.i32[3];
                  v94 = v45 + 8;
                  v118 = v45 + 16;
                  v45 += 8;
                }

                while (v118 <= v33);
              }

              else
              {
                v94 = v45;
              }

              if (v94 <= v33)
              {
                v119 = v33;
              }

              else
              {
                v119 = v94;
              }

              if (v119 + 32 <= v34)
              {
                v122 = v289[0] + 2 * v290;
                v123 = v290 + v289[0];
                v124 = v282[0] + 2 * v283;
                v125 = v283 + v282[0];
                v126 = v275[0] + 2 * v276;
                v127 = v276 + v275[0];
                v128 = a11;
                do
                {
                  v309.val[1] = *(v42 + v119);
                  v309.val[0] = *(v122 + v119);
                  v314.val[1] = *(v42 + v119 + 16);
                  v273.val[0] = *(v122 + v119 + 16);
                  v314.val[0] = v273.val[0];
                  v273.val[1] = v314.val[1];
                  v312.val[1] = vqtbl2q_s8(v309, v49);
                  v129 = *(v123 + v119);
                  v271 = *(v123 + v119 + 16);
                  v312.val[0] = vqtbl1q_s8(v129, v50);
                  v300.val[1] = vqtbl2q_s8(v309, xmmword_296B8F030);
                  v130 = vqtbl2q_s8(v312, xmmword_296B8F020);
                  v300.val[0] = vqtbl1q_s8(v129, xmmword_296B8F0E0);
                  v131 = vqtbl2q_s8(v314, v49);
                  v314.val[1] = vqtbl1q_s8(v271, v50);
                  v262 = vdupq_lane_s32(*v48.i8, 0);
                  v132 = vqtbl2q_s8(v300, xmmword_296B8F020);
                  v318.val[1] = *(v43 + v119);
                  v314.val[0] = vaddq_s32(vshlq_n_s64(v130, 0x20uLL), v130);
                  v318.val[0] = *(v124 + v119);
                  v270.val[0] = *(v124 + v119 + 16);
                  v270.val[1] = *(v43 + v119 + 16);
                  v312.val[1] = vqtbl2q_s8(v318, v49);
                  v133 = vdupq_lane_s32(*v314.val[0].i8, 1);
                  v134 = *(v125 + v119);
                  v268 = *(v125 + v119 + 16);
                  v312.val[0] = vqtbl1q_s8(v134, v50);
                  v39 = vqtbl2q_s8(v312, xmmword_296B8F020);
                  v133.i64[0] = 0;
                  v135 = vaddq_s32(vshlq_n_s64(v39, 0x20uLL), v39);
                  v136 = vdupq_lane_s32(*v135.i8, 1);
                  v136.i64[0] = 0;
                  v137 = vdupq_lane_s32(*v47.i8, 0);
                  v300.val[0] = *(v44 + v119);
                  v138 = vaddq_s32(v133, v314.val[0]);
                  v139 = *(v126 + v119);
                  *&v265[16] = *(v126 + v119 + 16);
                  v266 = *(v44 + v119 + 16);
                  v264 = v139;
                  *v265 = v300.val[0];
                  v305.val[1] = vqtbl2q_s8(v300, xmmword_296B8F070);
                  v140 = vaddq_s32(v136, v135);
                  v141 = *(v127 + v119);
                  v263 = *(v127 + v119 + 16);
                  v305.val[0] = vqtbl1q_s8(v141, xmmword_296B8F0D0);
                  v305.val[0] = vqtbl2q_s8(v305, xmmword_296B8F020);
                  v142 = vaddq_s32(v138, v262);
                  v305.val[1] = vaddq_s32(vshlq_n_s64(v305.val[0], 0x20uLL), v305.val[0]);
                  v143 = vdupq_lane_s32(*v305.val[1].i8, 1);
                  v143.i64[0] = 0;
                  v305.val[0] = vaddq_s32(v140, v137);
                  v144 = v137;
                  v305.val[1] = vaddq_s32(v143, v305.val[1]);
                  v145 = vdupq_lane_s32(*v46.i8, 0);
                  v300.val[0] = vaddq_s32(v305.val[1], v145);
                  v259 = v145;
                  v307.val[0] = vzip1q_s32(v142, v274);
                  v307.val[1] = vzip1q_s32(v305.val[0], v300.val[0]);
                  v146 = v128;
                  vst2q_f32(v146, v307);
                  v146 += 8;
                  v147 = vqtbl2q_s8(*(&v314 + 16), xmmword_296B8F020);
                  v307.val[1] = vqtbl2q_s8(v273, xmmword_296B8F030);
                  v307.val[0] = vqtbl1q_s8(v271, xmmword_296B8F0E0);
                  v307.val[0] = vqtbl2q_s8(v307, xmmword_296B8F020);
                  v39.i64[1] = 0x17FF07FF16FF06FFLL;
                  v148 = vqtbl2q_s8(v273, xmmword_296B8F050);
                  v307.val[1] = vqtbl1q_s8(v271, xmmword_296B8F0B0);
                  v149 = vqtbl2q_s8(*(&v307 + 16), xmmword_296B8F020);
                  v296.val[1] = vqtbl2q_s8(v309, xmmword_296B8F000);
                  v296.val[0] = vqtbl1q_s8(v129, xmmword_296B8F0C0);
                  v309.val[1] = vqtbl2q_s8(v309, xmmword_296B8F050);
                  v309.val[0] = vqtbl1q_s8(v129, xmmword_296B8F0B0);
                  v296.val[0] = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v296.val[1] = vqtbl2q_s8(v309, xmmword_296B8F020);
                  v314.val[1] = vaddq_s32(vshlq_n_s64(v132, 0x20uLL), v132);
                  v309.val[1] = vaddq_s32(vshlq_n_s64(v147, 0x20uLL), v147);
                  v150 = vaddq_s32(vshlq_n_s64(v307.val[0], 0x20uLL), v307.val[0]);
                  v296.val[0] = vaddq_s32(vshlq_n_s64(v296.val[0], 0x20uLL), v296.val[0]);
                  v296.val[1] = vaddq_s32(vshlq_n_s64(v296.val[1], 0x20uLL), v296.val[1]);
                  v309.val[0] = vdupq_lane_s32(*v296.val[1].i8, 1);
                  v309.val[0].i64[0] = 0;
                  v151 = vdupq_lane_s32(*v296.val[0].i8, 1);
                  v152 = vaddq_s32(vshlq_n_s64(v149, 0x20uLL), v149);
                  v296.val[1] = vaddq_s32(v309.val[0], v296.val[1]);
                  v309.val[0] = vdupq_lane_s32(*v152.i8, 1);
                  v151.i64[0] = 0;
                  v153 = v128 + 16;
                  v154 = vaddq_s32(v151, v296.val[0]);
                  v296.val[0] = vdupq_lane_s32(*v150.i8, 1);
                  v296.val[0].i64[0] = 0;
                  v309.val[0].i64[0] = 0;
                  v307.val[0] = vaddq_s32(v309.val[0], v152);
                  v261 = vaddq_s32(v296.val[0], v150);
                  v155 = vqtbl2q_s8(v318, xmmword_296B8F050);
                  v307.val[1] = vqtbl1q_s8(v134, xmmword_296B8F0B0);
                  v296.val[0] = vqtbl2q_s8(*(&v307 + 16), xmmword_296B8F020);
                  v156 = vdupq_lane_s32(*v309.val[1].i8, 1);
                  v157 = vaddq_s32(vdupq_laneq_s32(v138, 3), v296.val[1]);
                  v296.val[0] = vaddq_s32(vshlq_n_s64(v296.val[0], 0x20uLL), v296.val[0]);
                  v296.val[1] = vdupq_lane_s32(*v296.val[0].i8, 1);
                  v156.i64[0] = 0;
                  v296.val[1].i64[0] = 0;
                  v158 = vaddq_s32(vdupq_laneq_s32(v140, 3), vaddq_s32(v296.val[1], v296.val[0]));
                  v296.val[0] = v139;
                  *(&v296 + 16) = *v265;
                  v296.val[1] = vqtbl2q_s8(v296, xmmword_296B8F050);
                  v296.val[0] = vqtbl1q_s8(v141, xmmword_296B8F0B0);
                  v296.val[0] = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v296.val[0] = vaddq_s32(vshlq_n_s64(v296.val[0], 0x20uLL), v296.val[0]);
                  v303.val[0] = vzip2q_s32(v142, v274);
                  v303.val[1] = vzip2q_s32(v305.val[0], v300.val[0]);
                  v296.val[1] = vdupq_lane_s32(*v296.val[0].i8, 1);
                  v296.val[1].i64[0] = 0;
                  v305.val[0] = vaddq_s32(v157, v262);
                  v309.val[0] = v144;
                  v159 = vaddq_s32(v158, v144);
                  v160 = vaddq_s32(vdupq_laneq_s32(v305.val[1], 3), vaddq_s32(v296.val[1], v296.val[0]));
                  v161 = vaddq_s32(v160, v145);
                  vst2q_f32(v146, v303);
                  v303.val[0] = vzip1q_s32(v305.val[0], v274);
                  v303.val[1] = vzip1q_s32(v159, v161);
                  vst2q_f32(v153, v303);
                  v303.val[1] = vqtbl2q_s8(v318, xmmword_296B8F030);
                  v260 = vaddq_s32(v156, v309.val[1]);
                  v303.val[0] = vqtbl1q_s8(v134, xmmword_296B8F0E0);
                  v162 = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v303.val[1] = vqtbl2q_s8(v270, xmmword_296B8F070);
                  v303.val[0] = vqtbl1q_s8(v268, xmmword_296B8F0D0);
                  v303.val[0] = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v163 = vqtbl2q_s8(v270, xmmword_296B8F030);
                  v305.val[1] = vqtbl1q_s8(v268, xmmword_296B8F0E0);
                  v303.val[1] = vqtbl2q_s8(*(&v305 + 16), xmmword_296B8F020);
                  v164 = vqtbl2q_s8(v270, xmmword_296B8F050);
                  v305.val[1] = vqtbl1q_s8(v268, xmmword_296B8F0B0);
                  v305.val[1] = vqtbl2q_s8(*(&v305 + 16), xmmword_296B8F020);
                  v318.val[0] = vqtbl2q_s8(v318, xmmword_296B8F000);
                  v165 = vqtbl1q_s8(v134, xmmword_296B8F0C0);
                  v318.val[1] = vdupq_lane_s32(*v314.val[1].i8, 1);
                  v318.val[1].i64[0] = 0;
                  v318.val[1] = vaddq_s32(v318.val[1], v314.val[1]);
                  v166 = v128 + 24;
                  v167 = v128 + 32;
                  v168 = v128 + 40;
                  v169 = v128 + 48;
                  v314.val[1] = vqtbl2q_s8(v318, xmmword_296B8F020);
                  v170 = vaddq_s32(vshlq_n_s64(v162, 0x20uLL), v162);
                  v171 = vaddq_s32(vshlq_n_s64(v303.val[0], 0x20uLL), v303.val[0]);
                  v318.val[0] = vaddq_s32(vshlq_n_s64(v303.val[1], 0x20uLL), v303.val[1]);
                  v303.val[0] = vaddq_s32(vshlq_n_s64(v305.val[1], 0x20uLL), v305.val[1]);
                  v303.val[1] = vaddq_s32(vshlq_n_s64(v314.val[1], 0x20uLL), v314.val[1]);
                  v258 = vaddq_s32(vdupq_laneq_s32(v260, 3), v307.val[0]);
                  v305.val[0] = vzip2q_s32(v305.val[0], v274);
                  v305.val[1] = vzip2q_s32(v159, v161);
                  v296.val[0] = vdupq_lane_s32(*v303.val[1].f32, 1);
                  v296.val[1] = vdupq_lane_s32(*v303.val[0].f32, 1);
                  v172 = v128 + 56;
                  v296.val[0].i64[0] = 0;
                  v296.val[0] = vaddq_s32(v296.val[0], v303.val[1]);
                  v303.val[1] = vdupq_laneq_s32(v318.val[1], 3);
                  v296.val[1].i64[0] = 0;
                  v296.val[1] = vaddq_s32(v296.val[1], v303.val[0]);
                  v303.val[0] = vdupq_lane_s32(*v171.i8, 1);
                  v173 = vaddq_s32(v318.val[1], v262);
                  v303.val[0].i64[0] = 0;
                  v318.val[1] = vaddq_s32(v303.val[0], v171);
                  v174 = vdupq_lane_s32(*v318.val[0].i8, 1);
                  v303.val[0] = vdupq_lane_s32(*v170.i8, 1);
                  v303.val[0].i64[0] = 0;
                  v175 = vdupq_laneq_s32(v157, 3);
                  v174.i64[0] = 0;
                  vst2q_f32(v166, v305);
                  v176 = vaddq_s32(v303.val[0], v170);
                  v305.val[0] = vaddq_s32(vaddq_s32(v303.val[1], v154), v175);
                  v314.val[1] = vaddq_s32(v174, v318.val[0]);
                  v318.val[0] = vaddq_s32(vdupq_laneq_s32(v318.val[1], 3), v296.val[1]);
                  v296.val[1] = vdupq_laneq_s32(v158, 3);
                  v177 = vaddq_s32(v173, v175);
                  v316.val[1] = vqtbl2q_s8(*&v265[-16], xmmword_296B8F030);
                  v316.val[0] = vqtbl1q_s8(v141, xmmword_296B8F0E0);
                  v316.val[0] = vqtbl2q_s8(v316, xmmword_296B8F020);
                  v296.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v176, 3), v296.val[0]), v296.val[1]);
                  v316.val[0] = vaddq_s32(vshlq_n_s64(v316.val[0], 0x20uLL), v316.val[0]);
                  v316.val[1] = vdupq_lane_s32(*v316.val[0].i8, 1);
                  v316.val[1].i64[0] = 0;
                  v296.val[1] = vaddq_s32(vaddq_s32(v176, v309.val[0]), v296.val[1]);
                  v48 = *&v265[16];
                  v300.val[0] = v266;
                  v303.val[1] = vqtbl2q_s8(*v48.i8, xmmword_296B8F070);
                  v178 = vaddq_s32(v316.val[1], v316.val[0]);
                  v179 = vdupq_laneq_s32(v160, 3);
                  v305.val[1] = vaddq_s32(vaddq_s32(v178, v259), v179);
                  v316.val[0] = vzip1q_s32(v177, v274);
                  v316.val[1] = vzip1q_s32(v296.val[1], v305.val[1]);
                  vst2q_f32(v167, v316);
                  v303.val[0] = vqtbl1q_s8(v263, xmmword_296B8F0D0);
                  v303.val[0] = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v307.val[0] = vqtbl2q_s8(*v48.i8, xmmword_296B8F030);
                  v180 = vqtbl1q_s8(v263, xmmword_296B8F0E0);
                  v316.val[1] = vdupq_laneq_s32(v258, 3);
                  v303.val[1] = vqtbl2q_s8(v307, xmmword_296B8F020);
                  v316.val[0] = vdupq_laneq_s32(v318.val[0], 3);
                  v320.val[1] = vqtbl2q_s8(*&v265[-16], xmmword_296B8F000);
                  v320.val[0] = vqtbl1q_s8(v141, xmmword_296B8F0C0);
                  v320.val[0] = vqtbl2q_s8(v320, xmmword_296B8F020);
                  v320.val[0] = vaddq_s32(vshlq_n_s64(v320.val[0], 0x20uLL), v320.val[0]);
                  v181 = vzip2q_s32(v177, v274);
                  v307.val[0] = vzip2q_s32(v296.val[1], v305.val[1]);
                  v296.val[1] = vaddq_s32(v305.val[0], v262);
                  v320.val[1] = vdupq_lane_s32(*v320.val[0].i8, 1);
                  v320.val[1].i64[0] = 0;
                  v320.val[0] = vaddq_s32(v320.val[1], v320.val[0]);
                  v320.val[1] = vaddq_s32(v296.val[0], v309.val[0]);
                  vst2q_f32(v168, v307);
                  v182 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v178, 3), v320.val[0]), v179);
                  v183 = vaddq_s32(v182, v259);
                  v305.val[1] = vzip2q_s32(v296.val[1], v274);
                  v184 = vzip2q_s32(v320.val[1], v183);
                  v307.val[0] = vzip1q_s32(v296.val[1], v274);
                  v307.val[1] = vzip1q_s32(v320.val[1], v183);
                  v320.val[0] = vqtbl2q_s8(*v48.i8, xmmword_296B8F050);
                  v185 = vqtbl1q_s8(v263, xmmword_296B8F0B0);
                  v296.val[1] = vqtbl2q_s8(v320, xmmword_296B8F020);
                  v186 = vdupq_laneq_s32(v305.val[0], 3);
                  v320.val[1] = vaddq_s32(vshlq_n_s64(v303.val[0], 0x20uLL), v303.val[0]);
                  v187 = vaddq_s32(vshlq_n_s64(v303.val[1], 0x20uLL), v303.val[1]);
                  v296.val[1] = vaddq_s32(vshlq_n_s64(v296.val[1], 0x20uLL), v296.val[1]);
                  vst2q_f32(v169, v307);
                  v303.val[1] = vdupq_lane_s32(*v296.val[1].i8, 1);
                  v305.val[0] = vdupq_lane_s32(*v187.i8, 1);
                  v320.val[0] = vdupq_laneq_s32(v296.val[0], 3);
                  v303.val[1].i64[0] = 0;
                  v296.val[0] = vaddq_s32(v303.val[1], v296.val[1]);
                  v296.val[1] = vdupq_lane_s32(*v320.val[1].i8, 1);
                  v296.val[1].i64[0] = 0;
                  v305.val[0].i64[0] = 0;
                  v296.val[1] = vaddq_s32(v296.val[1], v320.val[1]);
                  v307.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v261, v316.val[1]), v262), v186);
                  v296.val[0] = vaddq_s32(vdupq_laneq_s32(v296.val[1], 3), v296.val[0]);
                  v320.val[1] = vdupq_laneq_s32(v296.val[0], 3);
                  v307.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v314.val[1], v316.val[0]), v309.val[0]), v320.val[0]);
                  v303.val[1] = vaddq_s32(v305.val[0], v187);
                  v188 = vdupq_laneq_s32(v182, 3);
                  v189 = vaddq_s32(vaddq_s32(vaddq_s32(v303.val[1], v320.val[1]), v259), v188);
                  vst2q_f32(v172, *(&v305 + 16));
                  v190 = vzip2q_s32(v307.val[0], v274);
                  v303.val[0] = vzip2q_s32(v307.val[1], v189);
                  v305.val[0] = vzip1q_s32(v307.val[0], v274);
                  v305.val[1] = vzip1q_s32(v307.val[1], v189);
                  v191 = vaddq_s32(vaddq_s32(v260, v262), v186);
                  v309.val[1] = vaddq_s32(vaddq_s32(v318.val[1], v309.val[0]), v320.val[0]);
                  v296.val[1] = vaddq_s32(vaddq_s32(v296.val[1], v259), v188);
                  v192 = vzip2q_s32(v191, v274);
                  v46 = vzip2q_s32(v309.val[1], v296.val[1]);
                  v307.val[1] = vzip1q_s32(v191, v274);
                  v193 = vzip1q_s32(v309.val[1], v296.val[1]);
                  v194 = v128 + 64;
                  vst2q_f32(v194, *(&v307 + 16));
                  v195 = v128 + 72;
                  v196 = v128 + 80;
                  v296.val[1] = vaddq_s32(vaddq_s32(v258, v262), v186);
                  v38 = vaddq_s32(vaddq_s32(v318.val[0], v309.val[0]), v320.val[0]);
                  v296.val[0] = vaddq_s32(vaddq_s32(v296.val[0], v259), v188);
                  vst2q_f32(v195, *(&v46 - 1));
                  v41 = v274;
                  v318.val[0] = vzip1q_s32(v296.val[1], v274);
                  v318.val[1] = vzip1q_s32(v38, v296.val[0]);
                  vst2q_f32(v196, v318);
                  v318.val[0] = vzip2q_s32(v296.val[1], v274);
                  v318.val[1] = vzip2q_s32(v38, v296.val[0]);
                  v38.i64[1] = 0x1F0E1D0C1B0A1908;
                  v197 = v128 + 88;
                  vst2q_f32(v197, v318);
                  v198 = v128 + 96;
                  vst2q_f32(v198, v305);
                  v50 = xmmword_296B8F0D0;
                  v296.val[1] = vqtbl2q_s8(v273, xmmword_296B8F000);
                  v296.val[0] = vqtbl1q_s8(v271, xmmword_296B8F0C0);
                  v296.val[0] = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v296.val[0] = vaddq_s32(vshlq_n_s64(v296.val[0], 0x20uLL), v296.val[0]);
                  v296.val[1] = vdupq_lane_s32(*v296.val[0].i8, 1);
                  v296.val[1].i64[0] = 0;
                  v296.val[0] = vaddq_s32(vdupq_laneq_s32(v261, 3), vaddq_s32(v296.val[1], v296.val[0]));
                  v298.val[1] = vqtbl2q_s8(v270, xmmword_296B8F000);
                  v298.val[0] = vqtbl1q_s8(v268, xmmword_296B8F0C0);
                  v296.val[1] = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v296.val[1] = vaddq_s32(vshlq_n_s64(v296.val[1], 0x20uLL), v296.val[1]);
                  v298.val[0] = vdupq_lane_s32(*v296.val[1].i8, 1);
                  v298.val[0].i64[0] = 0;
                  v296.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v314.val[1], 3), vaddq_s32(v298.val[0], v296.val[1])), v316.val[0]), v309.val[0]);
                  v296.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v296.val[0], v316.val[1]), v262), v186);
                  v298.val[0] = v266;
                  v298.val[0] = vqtbl2q_s8(v298, xmmword_296B8F000);
                  v199 = vqtbl1q_s8(v263, xmmword_296B8F0C0);
                  v200 = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v201 = vaddq_s32(vshlq_n_s64(v200, 0x20uLL), v200);
                  v47 = vaddq_s32(v296.val[1], v320.val[0]);
                  v298.val[0] = vdupq_lane_s32(*v201.i8, 1);
                  v298.val[0].i64[0] = 0;
                  v35 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v303.val[1], 3), vaddq_s32(v298.val[0], v201)), v320.val[1]), v259), v188);
                  v202 = v128 + 104;
                  v203 = v128 + 112;
                  v204 = v128 + 120;
                  vst2q_f32(v202, v303);
                  v49 = xmmword_296B8F070;
                  v298.val[0] = vzip1q_s32(v296.val[0], v274);
                  v298.val[1] = vzip1q_s32(v47, v35);
                  vst2q_f32(v203, v298);
                  v36 = vzip2q_s32(v296.val[0], v274);
                  v37 = vzip2q_s32(v47, v35);
                  vst2q_f32(v204, *v36.i8);
                  v121 = v128 + 128;
                  v120 = v119 + 32;
                  v205 = v119 + 64;
                  v48.i64[0] = __PAIR64__(v309.val[0].u32[1], v296.val[0].u32[3]);
                  v119 += 32;
                  v47.i32[0] = v47.i32[3];
                  v128 += 128;
                  v46.i32[0] = v35.i32[3];
                }

                while (v205 <= v34);
              }

              else
              {
                v120 = v119;
                v121 = a11;
              }

              if (v120 + 8 <= v34)
              {
                v207 = v42 + 2 * v290;
                v208 = v290 + v42;
                v209 = v43 + 2 * v283;
                v210 = v283 + v43;
                v211 = v44 + 2 * v276;
                v212 = v276 + v44;
                do
                {
                  v35.i64[0] = *(v42 + v120);
                  v36.i64[0] = *(v208 + v120);
                  v37.i64[0] = *(v207 + v120);
                  v213 = vzip1q_s8(0, v36);
                  v214 = vzip1q_s8(v37, v35);
                  v215 = vzip1q_s8(v213, v214);
                  v216 = vzip2q_s8(v213, v214);
                  v217 = vshlq_n_s64(v216, 0x20uLL);
                  v218 = vshlq_n_s64(v215, 0x20uLL);
                  v219 = vaddq_s32(v218, v215);
                  v220 = vdupq_lane_s32(*v48.i8, 0);
                  v221 = vaddq_s32(v217, v216);
                  v217.i64[0] = *(v43 + v120);
                  v218.i64[0] = *(v210 + v120);
                  v222 = vdupq_lane_s32(*v221.i8, 1);
                  v38.i64[0] = *(v209 + v120);
                  v223 = vzip1q_s8(0, v218);
                  v224 = vzip1q_s8(v38, v217);
                  v225 = vdupq_lane_s32(*v219.i8, 1);
                  v226 = vzip1q_s8(v223, v224);
                  v227 = vzip2q_s8(v223, v224);
                  v225.i64[0] = 0;
                  v228 = vaddq_s32(vshlq_n_s64(v226, 0x20uLL), v226);
                  v229 = vaddq_s32(vshlq_n_s64(v227, 0x20uLL), v227);
                  v230 = vdupq_lane_s32(*v229.i8, 1);
                  v222.i64[0] = 0;
                  v231 = vdupq_lane_s32(*v228.i8, 1);
                  v231.i64[0] = 0;
                  v230.i64[0] = 0;
                  v232 = vdupq_lane_s32(*v47.i8, 0);
                  v39.i64[0] = *(v44 + v120);
                  v233 = vaddq_s32(v225, v219);
                  v234 = vaddq_s32(v222, vaddq_s32(v221, v220));
                  v222.i64[0] = *(v212 + v120);
                  v225.i64[0] = *(v211 + v120);
                  v235 = vaddq_s32(v231, v228);
                  v236 = vzip1q_s8(0, v222);
                  v237 = vzip1q_s8(v225, v39);
                  v238 = vzip1q_s8(v236, v237);
                  v39 = vdupq_laneq_s32(v233, 3);
                  v239 = vzip2q_s8(v236, v237);
                  v240 = vaddq_s32(vshlq_n_s64(v238, 0x20uLL), v238);
                  v241 = vaddq_s32(vshlq_n_s64(v239, 0x20uLL), v239);
                  v242 = vaddq_s32(v233, v220);
                  v243 = vdupq_lane_s32(*v241.i8, 1);
                  v244 = vdupq_lane_s32(*v240.i8, 1);
                  v245 = vdupq_laneq_s32(v235, 3);
                  v246 = vaddq_s32(v230, vaddq_s32(v229, v232));
                  v244.i64[0] = 0;
                  v243.i64[0] = 0;
                  v47 = vaddq_s32(v235, v232);
                  v247 = vaddq_s32(v244, v240);
                  v38 = vdupq_laneq_s32(v247, 3);
                  v248 = vdupq_lane_s32(*v46.i8, 0);
                  v35 = vaddq_s32(v234, v39);
                  v249 = vaddq_s32(v247, v248);
                  v250 = vaddq_s32(v243, vaddq_s32(v241, v248));
                  v310.val[0] = vzip2q_s32(v242, v41);
                  v37 = vzip1q_s32(v242, v41);
                  v36 = vaddq_s32(v246, v245);
                  v48 = vzip1q_s32(v47, v249);
                  v206 = v121 + 32;
                  v251 = v121 + 16;
                  v252 = v121 + 24;
                  v253 = vaddq_s32(v250, v38);
                  vst2q_f32(v121, *v37.i8);
                  v254 = v121 + 8;
                  v48.i32[0] = v35.i32[3];
                  v310.val[1] = vzip2q_s32(v47, v249);
                  vst2q_f32(v254, v310);
                  v47.i32[0] = v36.i32[3];
                  v301.val[0] = vzip1q_s32(v35, v41);
                  v301.val[1] = vzip1q_s32(v36, v253);
                  vst2q_f32(v251, v301);
                  v301.val[0] = vzip2q_s32(v35, v41);
                  v301.val[1] = vzip2q_s32(v36, v253);
                  vst2q_f32(v252, v301);
                  v46.i32[0] = v253.i32[3];
                  result = v120 + 8;
                  v255 = v120 + 16;
                  v120 += 8;
                  v121 = v206;
                }

                while (v255 <= v34);
              }

              else
              {
                result = v120;
                v206 = v121;
              }

              if (result < v34)
              {
                do
                {
                  LODWORD(v256) = ((*(v289[0] + result) << 24) | (*(v289[0] + result + v290) << 16) | (*(v289[0] + result + 2 * v290) << 8)) + v48.i32[0];
                  DWORD1(v256) = ((*(v282[0] + result) << 24) | (*(v282[0] + result + v283) << 16) | (*(v282[0] + result + 2 * v283) << 8)) + v47.i32[0];
                  DWORD2(v256) = v257.i32[0];
                  HIDWORD(v256) = ((*(v275[0] + result) << 24) | (*(v275[0] + result + v276) << 16) | (*(v275[0] + result + 2 * v276) << 8)) + v46.i32[0];
                  *v206 = v256;
                  v206 += 4;
                  ++result;
                }

                while (v34 != result);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v30 += a10;
      }

      while (v30 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      v13 = **a4;
    }

    if (*(*a5 + 24))
    {
      v12 = **a5;
    }

    v206 = 4;
    v19 = *(a6 + 8);
    v20 = a3[3];
    v204 = v20.i32[0];
    v202 = v19;
    v200[1] = result;
    v203 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v201 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v205 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v200);
    v199 = 4;
    v22 = *(a7 + 8);
    v23 = a3[3];
    v197 = v23.i32[0];
    v195 = v22;
    v193[1] = v17;
    v196 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v194 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v198 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v193);
    v25 = a3[6].u32[1];
    if (a3[7].u32[0] + v25 < v18)
    {
      v27 = a3[3].i32[1] * *(a2 + 60);
      v28 = a3[5].u32[1];
      v29 = v28 + a9;
      v183 = vdupq_n_s32(v12);
      v184 = vdupq_n_s32(v13);
      do
      {
        v203 = v27 + v25;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v200);
        v196 = v27 + v25;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v193);
        v37 = v184;
        v38 = __PAIR64__(v12, v13);
        v39 = v183;
        v40 = v200[0];
        if (v200[0])
        {
          v41 = v193[0];
          if (v193[0])
          {
            if (v28 >= 0x20)
            {
              v44 = v201 + v200[0];
              v45 = v201 + v200[0] + 2 * v201;
              v46 = v200[0] + 2 * v201;
              v47 = v194 + v193[0];
              v48 = v194 + v193[0] + 2 * v194;
              v49 = v193[0] + 2 * v194;
              v43 = 0uLL;
              v50 = 32;
              v51 = xmmword_296B8F040;
              do
              {
                v192 = v43;
                result = v44 + v50;
                v219.val[1] = *(v200[0] + v50 - 32);
                v228.val[1] = *(v200[0] + v50 - 16);
                v222.val[1] = *(v44 + v50 - 32);
                v226.val[1] = *(v44 + v50 - 16);
                v219.val[0] = *(v46 + v50 - 32);
                v228.val[0] = *(v46 + v50 - 16);
                v222.val[0] = *(v45 + v50 - 32);
                v226.val[0] = *(v45 + v50 - 16);
                v191.val[0] = vqtbl2q_s8(v222, v51);
                v191.val[1] = vqtbl2q_s8(v219, xmmword_296B8F030);
                v190.val[0] = vqtbl2q_s8(v222, xmmword_296B8F010);
                v190.val[1] = vqtbl2q_s8(v219, xmmword_296B8F000);
                v189.val[0] = vqtbl2q_s8(v222, xmmword_296B8F080);
                v189.val[1] = vqtbl2q_s8(v219, xmmword_296B8F070);
                v187 = vqtbl2q_s8(v222, xmmword_296B8F060);
                v188 = vqtbl2q_s8(v219, xmmword_296B8F050);
                v185 = vqtbl2q_s8(v226, xmmword_296B8F010);
                v186 = vqtbl2q_s8(v228, xmmword_296B8F000);
                v222.val[0] = vqtbl2q_s8(v228, xmmword_296B8F050);
                v219.val[1] = vqtbl2q_s8(v226, xmmword_296B8F060);
                v225.val[1] = vqtbl2q_s8(v228, xmmword_296B8F070);
                v225.val[0] = vqtbl2q_s8(v226, xmmword_296B8F080);
                v228.val[1] = vqtbl2q_s8(v228, xmmword_296B8F030);
                v230.val[1] = *(v193[0] + v50 - 32);
                v232.val[1] = *(v193[0] + v50 - 16);
                v217.val[1] = *(v47 + v50 - 32);
                v218.val[1] = *(v47 + v50 - 16);
                v228.val[0] = vqtbl2q_s8(v226, xmmword_296B8F040);
                v230.val[0] = *(v49 + v50 - 32);
                v232.val[0] = *(v49 + v50 - 16);
                v217.val[0] = *(v48 + v50 - 32);
                v218.val[0] = *(v48 + v50 - 16);
                v226.val[1] = vqtbl2q_s8(v230, xmmword_296B8F030);
                v226.val[0] = vqtbl2q_s8(v217, xmmword_296B8F040);
                v215.val[1] = vqtbl2q_s8(v230, xmmword_296B8F000);
                v215.val[0] = vqtbl2q_s8(v217, xmmword_296B8F010);
                v213.val[1] = vqtbl2q_s8(v230, xmmword_296B8F070);
                v213.val[0] = vqtbl2q_s8(v217, xmmword_296B8F080);
                v230.val[1] = vqtbl2q_s8(v230, xmmword_296B8F050);
                v230.val[0] = vqtbl2q_s8(v217, xmmword_296B8F060);
                v217.val[1] = vqtbl2q_s8(v232, xmmword_296B8F000);
                v217.val[0] = vqtbl2q_s8(v218, xmmword_296B8F010);
                v209.val[1] = vqtbl2q_s8(v232, xmmword_296B8F050);
                v209.val[0] = vqtbl2q_s8(v218, xmmword_296B8F060);
                v207.val[1] = vqtbl2q_s8(v232, xmmword_296B8F070);
                v207.val[0] = vqtbl2q_s8(v218, xmmword_296B8F080);
                v232.val[1] = vqtbl2q_s8(v232, xmmword_296B8F030);
                v232.val[0] = vqtbl2q_s8(v218, xmmword_296B8F040);
                v51 = xmmword_296B8F040;
                v52 = vqtbl2q_s8(v191, xmmword_296B8F020);
                v218.val[0] = vqtbl2q_s8(v190, xmmword_296B8F020);
                v53 = vqtbl2q_s8(v189, xmmword_296B8F020);
                v222.val[1] = v187;
                v54 = v188;
                v55 = vqtbl2q_s8(*(&v222 + 16), xmmword_296B8F020);
                v222.val[1] = v185;
                v56 = v186;
                v219.val[0] = vqtbl2q_s8(*(&v222 + 16), xmmword_296B8F020);
                v57 = vqtbl2q_s8(*(&v219 + 16), xmmword_296B8F020);
                v58 = vqtbl2q_s8(v225, xmmword_296B8F020);
                v225.val[0] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v219.val[1] = vaddq_s32(vshlq_n_s64(v52, 0x20uLL), v52);
                v222.val[0] = vaddq_s32(vshlq_n_s64(v218.val[0], 0x20uLL), v218.val[0]);
                v222.val[1] = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
                v59 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
                v60 = vaddq_s32(vshlq_n_s64(v219.val[0], 0x20uLL), v219.val[0]);
                v61 = vaddq_s32(vshlq_n_s64(v57, 0x20uLL), v57);
                v219.val[0] = vaddq_s32(vshlq_n_s64(v58, 0x20uLL), v58);
                v62 = vqtbl2q_s8(v226, xmmword_296B8F020);
                v63 = vqtbl2q_s8(v215, xmmword_296B8F020);
                v225.val[0] = vaddq_s32(vshlq_n_s64(v225.val[0], 0x20uLL), v225.val[0]);
                v225.val[1] = vqtbl2q_s8(v213, xmmword_296B8F020);
                v226.val[0] = vqtbl2q_s8(v230, xmmword_296B8F020);
                v226.val[1] = vqtbl2q_s8(v217, xmmword_296B8F020);
                v209.val[0] = vqtbl2q_s8(v209, xmmword_296B8F020);
                v207.val[0] = vqtbl2q_s8(v207, xmmword_296B8F020);
                v207.val[1] = vqtbl2q_s8(v232, xmmword_296B8F020);
                v33 = vaddq_s32(vshlq_n_s64(v62, 0x20uLL), v62);
                v64 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                v65 = vaddq_s32(vshlq_n_s64(v225.val[1], 0x20uLL), v225.val[1]);
                v225.val[1] = vaddq_s32(vshlq_n_s64(v226.val[0], 0x20uLL), v226.val[0]);
                v226.val[0] = vaddq_s32(vshlq_n_s64(v226.val[1], 0x20uLL), v226.val[1]);
                v209.val[0] = vaddq_s32(vshlq_n_s64(v209.val[0], 0x20uLL), v209.val[0]);
                v207.val[0] = vaddq_s32(vshlq_n_s64(v207.val[0], 0x20uLL), v207.val[0]);
                v207.val[1] = vaddq_s32(vshlq_n_s64(v207.val[1], 0x20uLL), v207.val[1]);
                v207.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v207.val[0].i8, 1), v207.val[0]), 3);
                v30 = vextq_s8(v207.val[0], v207.val[0], 8uLL);
                *v30.i8 = vadd_s32(*v30.i8, vadd_s32(vdup_lane_s32(*v209.val[0].i8, 1), *&vextq_s8(v209.val[0], v209.val[0], 8uLL)));
                v32 = vextq_s8(v65, v65, 8uLL);
                v207.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v207.val[1].i8, 1), v207.val[1]), 3);
                *v32.i8 = vadd_s32(vadd_s32(vadd_s32(*v65.i8, *v32.i8), vadd_s32(*v225.val[1].i8, *&vextq_s8(v225.val[1], v225.val[1], 8uLL))), vadd_s32(vadd_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)), vadd_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL))));
                v36 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v219.val[0].i8, 1), v219.val[0]), 3);
                *v33.i8 = vadd_s32(*&vextq_s8(v36, v36, 8uLL), vadd_s32(vdup_lane_s32(*v61.i8, 1), *&vextq_s8(v61, v61, 8uLL)));
                v66 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v225.val[0].i8, 1), v225.val[0]), 3);
                *v60.i8 = vadd_s32(*&vextq_s8(v66, v66, 8uLL), vadd_s32(vdup_lane_s32(*v60.i8, 1), *&vextq_s8(v60, v60, 8uLL)));
                v43.i64[1] = v192.i64[1];
                *v30.i8 = vadd_s32(vadd_s32(*&vextq_s8(v207.val[1], v207.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v226.val[0].i8, 1), *&vextq_s8(v226.val[0], v226.val[0], 8uLL))), *v30.i8);
                v31 = vextq_s8(v59, v59, 8uLL);
                *v31.i8 = vadd_s32(vadd_s32(*v222.val[1].i8, *&vextq_s8(v222.val[1], v222.val[1], 8uLL)), vadd_s32(*v59.i8, *v31.i8));
                *v33.i8 = vadd_s32(*v60.i8, *v33.i8);
                v34 = vextq_s8(v222.val[0], v222.val[0], 8uLL);
                v35 = vextq_s8(v219.val[1], v219.val[1], 8uLL);
                *v31.i8 = vadd_s32(*v33.i8, vadd_s32(*v31.i8, vadd_s32(vadd_s32(*v219.val[1].i8, *v35.i8), vadd_s32(*v222.val[0].i8, *v34.i8))));
                *v30.i8 = vzip2_s32(*v31.i8, vadd_s32(*v30.i8, *v32.i8));
                *v43.i8 = vadd_s32(*v30.i8, *v192.i8);
                v50 += 32;
              }

              while (v50 <= v28);
              v42 = v28 & 0xFFFFFFE0;
              v39 = v183;
              v37 = v184;
              v38 = __PAIR64__(v12, v13);
            }

            else
            {
              v42 = 0;
              v43 = 0uLL;
            }

            v68 = xmmword_296B8F000;
            v67 = xmmword_296B8F030;
            v69 = xmmword_296B8F020;
            v70 = xmmword_296B8F010;
            if ((v42 | 8) <= v28)
            {
              do
              {
                v30.i64[0] = *(v200[0] + v42);
                v31.i64[0] = *(v201 + v200[0] + v42);
                v32.i64[0] = *(v200[0] + 2 * v201 + v42);
                v33.i64[0] = *(v201 + v200[0] + 2 * v201 + v42);
                v72 = vzip1q_s8(v33, v31);
                v73 = vzip1q_s8(v32, v30);
                v74 = vzip1q_s8(v72, v73);
                v75 = vzip2q_s8(v72, v73);
                v76 = vshlq_n_s64(v75, 0x20uLL);
                v77 = vshlq_n_s64(v74, 0x20uLL);
                v32 = vaddq_s32(v77, v74);
                v30 = vaddq_s32(v76, v75);
                v76.i64[0] = *(v193[0] + v42);
                v77.i64[0] = *(v194 + v193[0] + v42);
                v34.i64[0] = *(v193[0] + 2 * v194 + v42);
                v35.i64[0] = *(v194 + v193[0] + 2 * v194 + v42);
                v78 = vzip1q_s8(v35, v77);
                v79 = vzip1q_s8(v34, v76);
                v80 = vzip1q_s8(v78, v79);
                v81 = vzip2q_s8(v78, v79);
                v35 = vshlq_n_s64(v80, 0x20uLL);
                v34 = vaddq_s32(v35, v80);
                v82 = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                *v30.i8 = vadd_s32(vzip2_s32(vadd_s32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), vadd_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL))), *v43.i8);
                v31 = vextq_s8(v34, v34, 8uLL);
                v33 = vextq_s8(v32, v32, 8uLL);
                *v31.i8 = vzip2_s32(vadd_s32(*v32.i8, *v33.i8), vadd_s32(*v34.i8, *v31.i8));
                *v43.i8 = vadd_s32(*v30.i8, *v31.i8);
                v71 = v42 + 8;
                result = v42 + 16;
                v42 += 8;
              }

              while (result <= v28);
            }

            else
            {
              v71 = v42;
            }

            if (v71 < v28)
            {
              do
              {
                result = v193[0] + v71;
                v30.i8[0] = *(v201 + v200[0] + v71);
                v30.i8[4] = *(v193[0] + v71);
                v31.i8[0] = *(v200[0] + v71);
                v31.i8[4] = *(v194 + v193[0] + v71);
                v83 = vshl_u32(vand_s8(*v31.i8, 0xFF000000FFLL), 0x1000000018);
                v84 = vorr_s8(v83, vshl_u32(vand_s8(*v30.i8, 0xFF000000FFLL), 0x1800000010));
                v83.i8[0] = *(v200[0] + 2 * v201 + v71);
                v83.i8[4] = *(v193[0] + 2 * v194 + v71);
                v85 = vand_s8(v83, 0xFF000000FFLL);
                *v31.i8 = vorr_s8(vshl_n_s32(v85, 8uLL), v85);
                *v30.i8 = vorr_s8(v84, *v31.i8);
                *v43.i8 = vadd_s32(*v30.i8, *v43.i8);
                ++v71;
              }

              while (v28 != v71);
              v71 = v28;
            }

            if (v71 + 32 <= v29)
            {
              v89 = v201 + v200[0];
              v90 = v201 + v200[0] + 2 * v201;
              v91 = v200[0] + 2 * v201;
              v92 = v194 + v193[0];
              v93 = v194 + v193[0] + 2 * v194;
              v94 = v193[0] + 2 * v194;
              v88 = a11;
              v95 = xmmword_296B8F080;
              v96 = xmmword_296B8F070;
              v98 = xmmword_296B8F060;
              v97 = xmmword_296B8F050;
              do
              {
                v220.val[1] = *(v40 + v71);
                v211.val[1] = *(v40 + v71 + 16);
                v223.val[1] = *(v89 + v71);
                v208.val[1] = *(v89 + v71 + 16);
                v220.val[0] = *(v91 + v71);
                v211.val[0] = *(v91 + v71 + 16);
                v99 = *v43.i8;
                v212.val[1] = vqtbl2q_s8(v220, v96);
                v223.val[0] = *(v90 + v71);
                v208.val[0] = *(v90 + v71 + 16);
                v212.val[0] = vqtbl2q_s8(v223, v95);
                v224.val[1] = vqtbl2q_s8(v220, v67);
                v100 = vqtbl2q_s8(v212, v69);
                v224.val[0] = vqtbl2q_s8(v223, xmmword_296B8F040);
                v101 = vqtbl2q_s8(v224, xmmword_296B8F020);
                v212.val[1] = vqtbl2q_s8(v211, v96);
                v212.val[0] = vqtbl2q_s8(v208, v95);
                v224.val[1] = vqtbl2q_s8(v211, v97);
                v212.val[0] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v224.val[0] = vqtbl2q_s8(v208, v98);
                v212.val[1] = vqtbl2q_s8(v224, xmmword_296B8F020);
                v224.val[1] = vqtbl2q_s8(v220, v68);
                v224.val[0] = vqtbl2q_s8(v223, v70);
                v220.val[1] = vqtbl2q_s8(v220, v97);
                v102 = vqtbl2q_s8(v224, xmmword_296B8F020);
                v220.val[0] = vqtbl2q_s8(v223, v98);
                v223.val[1] = vqtbl2q_s8(v220, xmmword_296B8F020);
                v103 = vaddq_s32(vshlq_n_s64(v100, 0x20uLL), v100);
                v227.val[1] = *(v41 + v71);
                v220.val[1] = *(v41 + v71 + 16);
                v104 = vaddq_s32(vshlq_n_s64(v101, 0x20uLL), v101);
                v229.val[1] = *(v92 + v71);
                v223.val[0] = *(v92 + v71 + 16);
                v227.val[0] = *(v94 + v71);
                v229.val[0] = *(v93 + v71);
                v105 = vaddq_s32(vshlq_n_s64(v223.val[1], 0x20uLL), v223.val[1]);
                v231.val[1] = vqtbl2q_s8(v227, v96);
                v231.val[0] = vqtbl2q_s8(v229, v95);
                v214.val[1] = vqtbl2q_s8(v227, xmmword_296B8F030);
                v214.val[0] = vqtbl2q_s8(v229, xmmword_296B8F040);
                v223.val[1] = vdupq_lane_s32(*v105.i8, 1);
                v224.val[1] = vqtbl2q_s8(v227, xmmword_296B8F000);
                v224.val[0] = vqtbl2q_s8(v229, xmmword_296B8F010);
                v216.val[1] = vqtbl2q_s8(v227, xmmword_296B8F050);
                v216.val[0] = vqtbl2q_s8(v229, xmmword_296B8F060);
                v227.val[1] = vdupq_lane_s32(*v104.i8, 1);
                v229.val[0] = vdupq_lane_s32(*v103.i8, 1);
                v229.val[0].i64[0] = 0;
                v223.val[1].i64[0] = 0;
                v106 = vaddq_s32(v223.val[1], v105);
                v229.val[1] = vqtbl2q_s8(v231, xmmword_296B8F020);
                v223.val[1] = vdupq_lane_s32(v99, 0);
                v227.val[1].i64[0] = 0;
                v227.val[0] = vqtbl2q_s8(v214, xmmword_296B8F020);
                v231.val[0] = vqtbl2q_s8(v216, xmmword_296B8F020);
                v98 = xmmword_296B8F060;
                v229.val[1] = vaddq_s32(vshlq_n_s64(v229.val[1], 0x20uLL), v229.val[1]);
                v107 = vaddq_s32(v227.val[1], v104);
                v231.val[0] = vaddq_s32(vshlq_n_s64(v231.val[0], 0x20uLL), v231.val[0]);
                v231.val[1] = vdupq_lane_s32(*v231.val[0].i8, 1);
                v108 = vdupq_lane_s32(*v229.val[1].i8, 1);
                v109 = vaddq_s32(v229.val[0], v103);
                v108.i64[0] = 0;
                v231.val[1].i64[0] = 0;
                v227.val[1] = vaddq_s32(v109, v223.val[1]);
                v229.val[0] = vaddq_s32(v231.val[1], v231.val[0]);
                v231.val[0] = vaddq_s32(v108, v229.val[1]);
                v229.val[1] = vdupq_laneq_s32(v231.val[0], 3);
                v110 = vaddq_s32(vdupq_laneq_s32(v109, 3), v106);
                v111 = vdupq_lane_s32(v99, 1);
                v231.val[0] = vaddq_s32(v231.val[0], v111);
                v231.val[1] = vzip2q_s32(v37, v227.val[1]);
                v112 = vzip2q_s32(v39, v231.val[0]);
                v229.val[0] = vaddq_s32(v229.val[1], v229.val[0]);
                v214.val[0] = vzip1q_s32(v37, v227.val[1]);
                v214.val[1] = vzip1q_s32(v39, v231.val[0]);
                v220.val[0] = *(v94 + v71 + 16);
                v113 = *(v93 + v71 + 16);
                v114 = v88;
                vst2q_f32(v114, v214);
                v114 += 8;
                v227.val[1] = vaddq_s32(v110, v223.val[1]);
                v229.val[1] = vaddq_s32(v229.val[0], v111);
                vst2q_f32(v114, *(&v231 + 16));
                v231.val[0] = vzip1q_s32(v37, v227.val[1]);
                v231.val[1] = vzip1q_s32(v39, v229.val[1]);
                v115 = v88 + 16;
                vst2q_f32(v115, v231);
                v227.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v231.val[0] = vdupq_lane_s32(*v227.val[0].i8, 1);
                v116 = vdupq_laneq_s32(v110, 3);
                v231.val[0].i64[0] = 0;
                v229.val[0] = vdupq_laneq_s32(v229.val[0], 3);
                v231.val[1] = vaddq_s32(vaddq_s32(v107, v223.val[1]), v116);
                v227.val[0] = vaddq_s32(v231.val[0], v227.val[0]);
                v214.val[0] = vzip2q_s32(v37, v227.val[1]);
                v214.val[1] = vzip2q_s32(v39, v229.val[1]);
                v117 = v88 + 24;
                v227.val[1] = vaddq_s32(vaddq_s32(v227.val[0], v111), v229.val[0]);
                vst2q_f32(v117, v214);
                v97 = xmmword_296B8F050;
                v95 = xmmword_296B8F080;
                v96 = xmmword_296B8F070;
                v229.val[1] = vzip1q_s32(v37, v231.val[1]);
                v231.val[0] = vzip1q_s32(v39, v227.val[1]);
                v118 = v88 + 32;
                vst2q_f32(v118, *(&v229 + 16));
                v212.val[0] = vaddq_s32(vshlq_n_s64(v212.val[0], 0x20uLL), v212.val[0]);
                v119 = vaddq_s32(vshlq_n_s64(v102, 0x20uLL), v102);
                v229.val[1] = vdupq_lane_s32(*v119.i8, 1);
                v212.val[1] = vaddq_s32(vshlq_n_s64(v212.val[1], 0x20uLL), v212.val[1]);
                v231.val[0] = vdupq_lane_s32(*v212.val[1].i8, 1);
                v229.val[1].i64[0] = 0;
                v120 = vaddq_s32(v229.val[1], v119);
                v229.val[1] = vdupq_lane_s32(*v212.val[0].i8, 1);
                v229.val[1].i64[0] = 0;
                v231.val[0].i64[0] = 0;
                v231.val[0] = vaddq_s32(v231.val[0], v212.val[1]);
                v229.val[1] = vaddq_s32(v229.val[1], v212.val[0]);
                v212.val[0] = vqtbl2q_s8(v224, xmmword_296B8F020);
                v212.val[1] = vaddq_s32(vdupq_laneq_s32(v107, 3), v120);
                v212.val[0] = vaddq_s32(vshlq_n_s64(v212.val[0], 0x20uLL), v212.val[0]);
                v121 = vdupq_lane_s32(*v212.val[0].i8, 1);
                v121.i64[0] = 0;
                v212.val[1] = vaddq_s32(v212.val[1], v116);
                v224.val[0] = vzip2q_s32(v37, v231.val[1]);
                v224.val[1] = vzip2q_s32(v39, v227.val[1]);
                v122 = vaddq_s32(v212.val[1], v223.val[1]);
                v123 = v88 + 40;
                vst2q_f32(v123, v224);
                v124 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v227.val[0], 3), vaddq_s32(v121, v212.val[0])), v229.val[0]);
                v224.val[0] = vaddq_s32(v124, v111);
                v125 = vzip1q_s32(v37, v122);
                v126 = v88 + 48;
                v227.val[0] = vzip1q_s32(v39, v224.val[0]);
                vst2q_f32(v126, v227);
                v227.val[0] = vqtbl2q_s8(v220, xmmword_296B8F070);
                v127 = vqtbl2q_s8(v223, xmmword_296B8F080);
                v212.val[0] = vqtbl2q_s8(v227, xmmword_296B8F020);
                v128 = vaddq_s32(vshlq_n_s64(v212.val[0], 0x20uLL), v212.val[0]);
                v35 = vdupq_laneq_s32(v212.val[1], 3);
                v212.val[1] = vdupq_lane_s32(*v128.i8, 1);
                v212.val[1].i64[0] = 0;
                v129 = vaddq_s32(v212.val[1], v128);
                v224.val[1] = vaddq_s32(vaddq_s32(v229.val[1], v223.val[1]), v35);
                v43 = vdupq_laneq_s32(v124, 3);
                v227.val[0] = vzip2q_s32(v37, v122);
                v227.val[1] = vzip2q_s32(v39, v224.val[0]);
                v130 = vaddq_s32(vaddq_s32(v129, v111), v43);
                v131 = v88 + 56;
                vst2q_f32(v131, v227);
                v227.val[0] = vzip1q_s32(v37, v224.val[1]);
                v227.val[1] = vzip1q_s32(v39, v130);
                v132 = v88 + 64;
                vst2q_f32(v132, v227);
                v227.val[1] = vqtbl2q_s8(v220, xmmword_296B8F050);
                v227.val[0] = vqtbl2q_s8(v223, xmmword_296B8F060);
                v224.val[0] = vqtbl2q_s8(v227, xmmword_296B8F020);
                v133 = vaddq_s32(vdupq_laneq_s32(v229.val[1], 3), v231.val[0]);
                v224.val[0] = vaddq_s32(vshlq_n_s64(v224.val[0], 0x20uLL), v224.val[0]);
                v227.val[0] = vdupq_lane_s32(*v224.val[0].i8, 1);
                v227.val[0].i64[0] = 0;
                v224.val[0] = vaddq_s32(v227.val[0], v224.val[0]);
                v227.val[0] = vzip2q_s32(v37, v224.val[1]);
                v227.val[1] = vzip2q_s32(v39, v130);
                v134 = vaddq_s32(vaddq_s32(v133, v223.val[1]), v35);
                v135 = v88 + 72;
                vst2q_f32(v135, v227);
                v68 = xmmword_296B8F000;
                v67 = xmmword_296B8F030;
                v224.val[0] = vaddq_s32(vdupq_laneq_s32(v129, 3), v224.val[0]);
                v224.val[1] = vaddq_s32(vaddq_s32(v224.val[0], v111), v43);
                v136 = vzip1q_s32(v37, v134);
                v137 = v88 + 80;
                v227.val[0] = vzip1q_s32(v39, v224.val[1]);
                vst2q_f32(v137, v227);
                v227.val[0] = vqtbl2q_s8(v211, xmmword_296B8F030);
                v138 = vqtbl2q_s8(v208, xmmword_296B8F040);
                v139 = vqtbl2q_s8(v227, xmmword_296B8F020);
                v70 = xmmword_296B8F010;
                v211.val[1] = vqtbl2q_s8(v211, xmmword_296B8F000);
                v140 = vaddq_s32(vshlq_n_s64(v139, 0x20uLL), v139);
                v227.val[0] = vdupq_lane_s32(*v140.i8, 1);
                v211.val[0] = vqtbl2q_s8(v208, xmmword_296B8F010);
                v208.val[1] = vqtbl2q_s8(v220, xmmword_296B8F030);
                v208.val[0] = vqtbl2q_s8(v223, xmmword_296B8F040);
                v220.val[1] = vqtbl2q_s8(v220, xmmword_296B8F000);
                v227.val[0].i64[0] = 0;
                v220.val[0] = vqtbl2q_s8(v223, xmmword_296B8F010);
                v141 = vaddq_s32(v227.val[0], v140);
                v223.val[0] = vdupq_laneq_s32(v133, 3);
                v208.val[0] = vqtbl2q_s8(v208, xmmword_296B8F020);
                v208.val[0] = vaddq_s32(vshlq_n_s64(v208.val[0], 0x20uLL), v208.val[0]);
                v208.val[1] = vdupq_lane_s32(*v208.val[0].i8, 1);
                v142 = vaddq_s32(vaddq_s32(vaddq_s32(v141, v223.val[0]), v223.val[1]), v35);
                v208.val[1].i64[0] = 0;
                v208.val[0] = vaddq_s32(v208.val[1], v208.val[0]);
                v208.val[1] = vdupq_laneq_s32(v224.val[0], 3);
                v143 = vzip2q_s32(v37, v134);
                v227.val[0] = vzip2q_s32(v39, v224.val[1]);
                v144 = v88 + 88;
                vst2q_f32(v144, v227);
                v145 = vaddq_s32(vaddq_s32(vaddq_s32(v208.val[0], v208.val[1]), v111), v43);
                v224.val[0] = vzip1q_s32(v37, v142);
                v146 = v88 + 96;
                v224.val[1] = vzip1q_s32(v39, v145);
                vst2q_f32(v146, v224);
                v224.val[0] = vzip2q_s32(v37, v142);
                v224.val[1] = vzip2q_s32(v39, v145);
                v147 = v88 + 104;
                vst2q_f32(v147, v224);
                v211.val[0] = vqtbl2q_s8(v211, xmmword_296B8F020);
                v211.val[0] = vaddq_s32(vshlq_n_s64(v211.val[0], 0x20uLL), v211.val[0]);
                v211.val[1] = vdupq_lane_s32(*v211.val[0].i8, 1);
                v211.val[1].i64[0] = 0;
                v211.val[0] = vaddq_s32(v211.val[1], v211.val[0]);
                v211.val[1] = vdupq_laneq_s32(v141, 3);
                v69 = xmmword_296B8F020;
                v211.val[0] = vaddq_s32(v211.val[1], v211.val[0]);
                v211.val[1] = vqtbl2q_s8(v220, xmmword_296B8F020);
                v211.val[1] = vaddq_s32(vshlq_n_s64(v211.val[1], 0x20uLL), v211.val[1]);
                v36 = vdupq_lane_s32(*v211.val[1].i8, 1);
                v36.i64[0] = 0;
                v211.val[1] = vaddq_s32(vdupq_laneq_s32(v208.val[0], 3), vaddq_s32(v36, v211.val[1]));
                v31 = vaddq_s32(vaddq_s32(vaddq_s32(v211.val[0], v223.val[0]), v223.val[1]), v35);
                v32 = vaddq_s32(vaddq_s32(vaddq_s32(v211.val[1], v208.val[1]), v111), v43);
                v211.val[0] = vzip1q_s32(v37, v31);
                v148 = v88 + 112;
                v211.val[1] = vzip1q_s32(v39, v32);
                vst2q_f32(v148, v211);
                v211.val[0] = vzip2q_s32(v37, v31);
                v211.val[1] = vzip2q_s32(v39, v32);
                v149 = v88 + 120;
                vst2q_f32(v149, v211);
                v30 = vextq_s8(v32, v32, 8uLL);
                v33 = vextq_s8(v31, v31, 8uLL);
                *v43.i8 = vzip2_s32(*v33.i8, *v30.i8);
                v88 += 128;
                result = v71 + 64;
                v71 += 32;
              }

              while (result <= v29);
              v87 = v32.u32[3];
              v86 = v31.u32[3];
              v38 = __PAIR64__(v12, v13);
            }

            else
            {
              v86 = v43.i32[0];
              v87 = v43.u32[1];
              v88 = a11;
            }

            if (v71 + 8 <= v29)
            {
              v152 = v201 + v40;
              v153 = v201 + v40 + 2 * v201;
              v154 = v40 + 2 * v201;
              v155 = v194 + v41;
              result = v194 + v41 + 2 * v194;
              v156 = v41 + 2 * v194;
              do
              {
                v30.i64[0] = *(v40 + v71);
                v31.i64[0] = *(v152 + v71);
                v32.i64[0] = *(v154 + v71);
                v33.i64[0] = *(v153 + v71);
                v157 = vzip1q_s8(v33, v31);
                v158 = vzip1q_s8(v32, v30);
                v159 = vzip1q_s8(v157, v158);
                v160 = vzip2q_s8(v157, v158);
                v161 = vaddq_s32(vshlq_n_s64(v159, 0x20uLL), v159);
                v162 = vaddq_s32(vshlq_n_s64(v160, 0x20uLL), v160);
                v163 = vdupq_lane_s32(*v162.i8, 1);
                v164 = vdupq_lane_s32(*v161.i8, 1);
                v164.i64[0] = 0;
                v165 = vdupq_n_s32(v86);
                v163.i64[0] = 0;
                v35.i64[0] = *(v41 + v71);
                v43.i64[0] = *(v155 + v71);
                v166 = vaddq_s32(v164, v161);
                v164.i64[0] = *(v156 + v71);
                v36.i64[0] = *(result + v71);
                v167 = vzip1q_s8(v36, v43);
                v168 = vaddq_s32(v163, vaddq_s32(v162, v165));
                v169 = vzip1q_s8(v164, v35);
                v170 = vzip1q_s8(v167, v169);
                v171 = vaddq_s32(vshlq_n_s64(v170, 0x20uLL), v170);
                v35 = vdupq_laneq_s32(v166, 3);
                v172 = vdupq_lane_s32(*v171.i8, 1);
                v172.i64[0] = 0;
                v173 = vaddq_s32(v172, v171);
                v174 = vaddq_s32(v166, v165);
                v175 = vdupq_n_s32(v87);
                v36 = vaddq_s32(v173, v175);
                v221.val[0] = vzip1q_s32(v37, v174);
                v176 = v88 + 16;
                v221.val[1] = vzip1q_s32(v39, v36);
                v177 = v88;
                vst2q_f32(v177, v221);
                v177 += 8;
                v178 = vzip2q_s8(v167, v169);
                v179 = vaddq_s32(vshlq_n_s64(v178, 0x20uLL), v178);
                v43 = vdupq_lane_s32(*v179.i8, 1);
                v30 = vaddq_s32(v168, v35);
                v43.i64[0] = 0;
                v86 = v30.u32[3];
                v180 = v88 + 24;
                v31 = vaddq_s32(vaddq_s32(v43, vaddq_s32(v179, v175)), vdupq_laneq_s32(v173, 3));
                v87 = v31.u32[3];
                v210.val[0] = vzip2q_s32(v37, v174);
                v210.val[1] = vzip2q_s32(v39, v36);
                vst2q_f32(v177, v210);
                v210.val[0] = vzip1q_s32(v37, v30);
                v210.val[1] = vzip1q_s32(v39, v31);
                vst2q_f32(v176, v210);
                v32 = vzip2q_s32(v37, v30);
                v33 = vzip2q_s32(v39, v31);
                vst2q_f32(v180, *v32.i8);
                v151 = v88 + 32;
                v150 = v71 + 8;
                v181 = v71 + 16;
                v71 += 8;
                v88 += 32;
              }

              while (v181 <= v29);
            }

            else
            {
              v150 = v71;
              v151 = v88;
            }

            if (v150 < v29)
            {
              do
              {
                v86 += (*(v200[0] + v150) << 24) | (*(v200[0] + v150 + v201) << 16) | (*(v200[0] + v150 + 2 * v201) << 8) | *(v200[0] + v150 + 2 * v201);
                *&v182 = v38;
                DWORD2(v182) = v86;
                v87 += (*(v193[0] + v150) << 24) | (*(v193[0] + v150 + v194) << 16) | (*(v193[0] + v150 + 2 * v194) << 8) | *(v193[0] + v150 + 2 * v194);
                HIDWORD(v182) = v87;
                *v151 = v182;
                v151 += 4;
                ++v150;
              }

              while (v29 != v150);
            }
          }
        }

        a11 = (a11 + a12);
        v25 += a10;
      }

      while (v25 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v15 = result;
    v16 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v17 = _D0;
    }

    else
    {
      v17 = 32256;
    }

    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v23 = _D0;
    }

    else
    {
      v23 = 32256;
    }

    v201 = 2;
    v25 = *(a6 + 8);
    v26 = a3[3];
    v199 = v26.i32[0];
    v197 = v25;
    v195[1] = result;
    v198 = a3[6].i32[1] + v26.i32[1] * v16;
    v27 = a3[7].u32[1];
    v196 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v200 = v27;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
    v194 = 2;
    v28 = *(a7 + 8);
    v29 = a3[3];
    v192 = v29.i32[0];
    v190 = v28;
    v188[1] = v15;
    v191 = a3[6].i32[1] + v29.i32[1] * v16;
    v30 = a3[7].u32[1];
    v189 = vmin_u32(vmls_s32(*(*(*&v28[5] + 8 * v30) + 16), v28[6], v29), v28[6]).u32[0];
    v193 = v30;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v188);
    v31 = a3[6].u32[1];
    if (a3[7].u32[0] + v31 < v16)
    {
      v33 = a3[3].i32[1] * *(a2 + 60);
      v34 = a3[5].u32[1];
      v35 = v34 + a9;
      LOWORD(v36) = v17;
      HIWORD(v36) = v23;
      v186 = vdupq_n_s16(v23);
      v187 = vdupq_n_s16(v17);
      v185 = v36;
      do
      {
        v198 = v33 + v31;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
        v191 = v33 + v31;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v188);
        v39.i64[0] = 0xFFFFFFFF00000000;
        v39.i64[1] = 0xFFFFFFFF00000000;
        v40 = v195[0];
        if (v195[0])
        {
          v41 = v188[0];
          if (v188[0])
          {
            if (v34 >= 0x20)
            {
              v45 = 0;
              v43 = 0;
              v42 = 0;
              v46 = v196 + v195[0];
              v47 = v189 + v188[0];
              do
              {
                v49 = *(v195[0] + v45);
                v48 = *(v195[0] + v45 + 16);
                v51 = *(v46 + v45);
                v50 = *(v46 + v45 + 16);
                v52 = vzip1q_s8(v51, v49);
                v53 = vzip2q_s8(v51, v49);
                v54 = vzip1q_s8(v50, v48);
                v55 = vzip2q_s8(v50, v48);
                v56 = vaddq_s16(vshlq_n_s32(v52, 0x10uLL), v52);
                v57 = vaddq_s16(vshlq_n_s32(v53, 0x10uLL), v53);
                v58 = vaddq_s16(vshlq_n_s32(v54, 0x10uLL), v54);
                v59 = vaddq_s16(vshlq_n_s32(v55, 0x10uLL), v55);
                v60 = vaddq_s16(vandq_s8(vqtbl1q_s8(v59, xmmword_296B8F090), v39), v59);
                v61 = vaddq_s16(vandq_s8(vqtbl1q_s8(v58, xmmword_296B8F090), v39), v58);
                v62 = vaddq_s16(vandq_s8(vqtbl1q_s8(v57, xmmword_296B8F090), v39), v57);
                v63 = vaddq_s16(vandq_s8(vqtbl1q_s8(v56, xmmword_296B8F090), v39), v56);
                v65 = *(v188[0] + v45);
                v64 = *(v188[0] + v45 + 16);
                v67 = *(v47 + v45);
                v66 = *(v47 + v45 + 16);
                v68 = vzip1q_s8(v67, v65);
                v69 = vzip2q_s8(v67, v65);
                v70 = vzip1q_s8(v66, v64);
                v71 = vzip2q_s8(v66, v64);
                v72 = vaddq_s16(vshlq_n_s32(v68, 0x10uLL), v68);
                v73 = vaddq_s16(vshlq_n_s32(v69, 0x10uLL), v69);
                v74 = vaddq_s16(vshlq_n_s32(v70, 0x10uLL), v70);
                v75 = vaddq_s16(vshlq_n_s32(v71, 0x10uLL), v71);
                v76 = vaddq_s16(vandq_s8(vqtbl1q_s8(v75, xmmword_296B8F090), v39), v75);
                v77 = vaddq_s16(vandq_s8(vqtbl1q_s8(v74, xmmword_296B8F090), v39), v74);
                v78 = vaddq_s16(vandq_s8(vqtbl1q_s8(v73, xmmword_296B8F090), v39), v73);
                v79 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v63.i8, 3), v63), vaddq_s16(vdupq_lane_s16(*v62.i8, 3), v62));
                v80 = vaddq_s16(vandq_s8(vqtbl1q_s8(v72, xmmword_296B8F090), v39), v72);
                v81 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*&v61, 3), v61), vaddq_s16(vdupq_lane_s16(*&v60, 3), v60)), v79).u16[7];
                v38 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v77.i8, 3), v77), vaddq_s16(vdupq_lane_s16(*v76.i8, 3), v76));
                v37 = vaddq_s16(v38, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v80.i8, 3), v80), vaddq_s16(vdupq_lane_s16(*v78.i8, 3), v78)));
                v43 += v81;
                v42 += v37.u16[7];
                v82 = v45 + 64;
                v45 += 32;
              }

              while (v82 <= v34);
              v44 = v34 & 0xFFFFFFE0;
            }

            else
            {
              v42 = 0;
              v43 = 0;
              v44 = 0;
            }

            if ((v44 | 8) <= v34)
            {
              do
              {
                v37.i64[0] = *(v195[0] + v44);
                v38.i64[0] = *(v196 + v195[0] + v44);
                v84 = vzip1q_s8(v38, v37);
                v85 = vaddq_s16(vshlq_n_s32(v84, 0x10uLL), v84);
                v86 = vextq_s8(v85, v85, 0xCuLL);
                v87 = vaddq_s16(v86, v85);
                v88 = v87.u16[3];
                v87.i64[0] = *(v188[0] + v44);
                v43 += v87.u16[7] + v88;
                v86.i64[0] = *(v189 + v188[0] + v44);
                v89 = vzip1q_s8(v86, v87);
                v90 = vaddq_s16(vshlq_n_s32(v89, 0x10uLL), v89);
                v38 = vextq_s8(v90, v90, 0xCuLL);
                v37 = vaddq_s16(v38, v90);
                v42 += v37.u16[7] + v37.u16[3];
                v83 = v44 + 8;
                v91 = v44 + 16;
                v44 += 8;
              }

              while (v91 <= v34);
            }

            else
            {
              v83 = v44;
            }

            v92 = v34 - v83;
            if (v34 > v83)
            {
              v93 = (v83 + v195[0] + v196);
              v94 = (v195[0] + v83);
              v95 = (v83 + v188[0] + v189);
              v96 = (v188[0] + v83);
              do
              {
                v98 = *v94++;
                v97 = v98;
                v99 = *v93++;
                v100 = v99 | (v97 << 8);
                v101 = *v96++;
                result = v101;
                v43 += v100;
                v102 = *v95++;
                v42 += v102 | (result << 8);
                --v92;
              }

              while (v92);
              v83 = v34;
            }

            if (v83 + 32 <= v35)
            {
              v105 = v196 + v195[0];
              v106 = v189 + v188[0];
              v107 = a11;
              do
              {
                v109 = *(v40 + v83);
                v108 = *(v40 + v83 + 16);
                v111 = *(v105 + v83);
                v110 = *(v105 + v83 + 16);
                v112 = vzip2q_s8(v111, v109);
                v113 = vzip2q_s8(v110, v108);
                v114 = vzip1q_s8(v110, v108);
                v115 = vzip1q_s8(v111, v109);
                v116 = vaddq_s16(vshlq_n_s32(v112, 0x10uLL), v112);
                v117 = vaddq_s16(vshlq_n_s32(v113, 0x10uLL), v113);
                v118 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                v119 = vaddq_s16(vshlq_n_s32(v115, 0x10uLL), v115);
                v120 = vaddq_s16(vandq_s8(vqtbl1q_s8(v119, xmmword_296B8F090), v39), v119);
                v121 = vaddq_s16(vandq_s8(vqtbl1q_s8(v118, xmmword_296B8F090), v39), v118);
                v122 = vaddq_s16(vandq_s8(vqtbl1q_s8(v117, xmmword_296B8F090), v39), v117);
                v123 = vaddq_s16(vandq_s8(vqtbl1q_s8(v116, xmmword_296B8F090), v39), v116);
                v124 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v121.i8, 3), xmmword_296B8F0A0), v121);
                v125 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v120.i8, 3), xmmword_296B8F0A0), v120);
                v126 = vdupq_n_s16(v43);
                v128 = *(v41 + v83);
                v127 = *(v41 + v83 + 16);
                v129 = vdupq_laneq_s16(v125, 7);
                v131 = *(v106 + v83);
                v130 = *(v106 + v83 + 16);
                v132 = vdupq_laneq_s16(v124, 7);
                v133 = vzip2q_s8(v131, v128);
                v134 = vzip1q_s8(v131, v128);
                v135 = vaddq_s16(vshlq_n_s32(v134, 0x10uLL), v134);
                v136 = vaddq_s16(v124, v126);
                v137 = vaddq_s16(vandq_s8(vqtbl1q_s8(v135, xmmword_296B8F090), v39), v135);
                v138 = vaddq_s16(v125, v126);
                v139 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v137.i8, 3), xmmword_296B8F0A0), v137);
                v140 = vdupq_n_s16(v42);
                v141 = vaddq_s16(v139, v140);
                v142 = v107 + 32;
                v207.val[0] = vzip1q_s16(v187, v138);
                v143 = v107 + 48;
                v144 = v107 + 64;
                v145 = v107 + 80;
                v146 = v107 + 96;
                v147 = v107 + 112;
                v207.val[1] = vzip1q_s16(v186, v141);
                v148 = v107;
                vst2q_s16(v148, v207);
                v148 += 16;
                v207.val[0] = vzip2q_s16(v187, v138);
                v207.val[1] = vzip2q_s16(v186, v141);
                vst2q_s16(v148, v207);
                v149 = vzip2q_s8(v130, v127);
                v150 = vzip1q_s8(v130, v127);
                v151 = vaddq_s16(v132, vaddq_s16(vandq_s8(vdupq_lane_s16(*v122.i8, 3), xmmword_296B8F0A0), v122));
                v152 = vaddq_s16(vshlq_n_s32(v133, 0x10uLL), v133);
                v153 = vaddq_s16(vshlq_n_s32(v149, 0x10uLL), v149);
                v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                v155 = vaddq_s16(v129, vaddq_s16(vandq_s8(vdupq_lane_s16(*v123.i8, 3), xmmword_296B8F0A0), v123));
                v156 = vdupq_laneq_s16(v155, 7);
                v157 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v39), v154);
                v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v39), v153);
                v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v152, xmmword_296B8F090), v39), v152);
                v160 = vaddq_s16(v151, v126);
                v161 = vaddq_s16(v155, v126);
                v162 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v157.i8, 3), xmmword_296B8F0A0), v157);
                v163 = vaddq_s16(v160, v156);
                v164 = vaddq_s16(v136, v156);
                v165 = vaddq_s16(vdupq_laneq_s16(v139, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159));
                v166 = vdupq_laneq_s16(v165, 7);
                v167 = vaddq_s16(v165, v140);
                v38 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v162, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158)), v140), v166);
                v168 = vaddq_s16(v162, v140);
                v205.val[0] = vzip2q_s16(v187, v161);
                v205.val[1] = vzip2q_s16(v186, v167);
                v206.val[0] = vzip1q_s16(v187, v161);
                v206.val[1] = vzip1q_s16(v186, v167);
                v37 = vaddq_s16(v168, v166);
                vst2q_s16(v142, v206);
                v43 = v163.u16[7];
                vst2q_s16(v143, v205);
                v42 = v38.u16[7];
                v204.val[0] = vzip1q_s16(v187, v164);
                v204.val[1] = vzip1q_s16(v186, v37);
                vst2q_s16(v144, v204);
                v169 = vzip2q_s16(v187, v164);
                v204.val[0] = vzip2q_s16(v186, v37);
                vst2q_s16(v145, v204);
                v170 = vzip1q_s16(v187, v163);
                v204.val[0] = vzip1q_s16(v186, v38);
                vst2q_s16(v146, v204);
                v202.val[0] = vzip2q_s16(v187, v163);
                v202.val[1] = vzip2q_s16(v186, v38);
                vst2q_s16(v147, v202);
                v104 = v107 + 128;
                v103 = v83 + 32;
                result = v83 + 64;
                v83 += 32;
                v107 += 128;
              }

              while (result <= v35);
            }

            else
            {
              v103 = v83;
              v104 = a11;
            }

            if (v103 + 8 <= v35)
            {
              v173 = v196 + v40;
              v174 = v189 + v41;
              do
              {
                v37.i64[0] = *(v40 + v103);
                v38.i64[0] = *(v173 + v103);
                v175 = vzip1q_s8(v38, v37);
                v176 = vaddq_s16(vshlq_n_s32(v175, 0x10uLL), v175);
                v177 = vaddq_s16(vandq_s8(vqtbl1q_s8(v176, xmmword_296B8F090), v39), v176);
                v178 = vandq_s8(vdupq_lane_s16(*v177.i8, 3), xmmword_296B8F0A0);
                v179 = vdupq_n_s16(v43);
                v37 = vaddq_s16(vaddq_s16(v177, v179), v178);
                v43 = v37.u16[7];
                v178.i64[0] = *(v41 + v103);
                v179.i64[0] = *(v174 + v103);
                v180 = vzip1q_s8(v179, v178);
                v181 = vaddq_s16(vshlq_n_s32(v180, 0x10uLL), v180);
                v182 = vaddq_s16(vandq_s8(vqtbl1q_s8(v181, xmmword_296B8F090), v39), v181);
                v38 = vaddq_s16(vaddq_s16(v182, vdupq_n_s16(v42)), vandq_s8(vdupq_lane_s16(*v182.i8, 3), xmmword_296B8F0A0));
                v42 = v38.u16[7];
                v203.val[0] = vzip1q_s16(v187, v37);
                v203.val[1] = vzip1q_s16(v186, v38);
                v172 = v104 + 32;
                vst2q_s16(v104, v203);
                v183 = v104 + 16;
                v203.val[0] = vzip2q_s16(v187, v37);
                v203.val[1] = vzip2q_s16(v186, v38);
                vst2q_s16(v183, v203);
                v171 = v103 + 8;
                result = v103 + 16;
                v103 += 8;
                v104 = v172;
              }

              while (result <= v35);
            }

            else
            {
              v171 = v103;
              v172 = v104;
            }

            if (v171 < v35)
            {
              do
              {
                v43 += *(v195[0] + v171 + v196) | (*(v195[0] + v171) << 8);
                v42 += *(v188[0] + v171 + v189) | (*(v188[0] + v171) << 8);
                LODWORD(v184) = v185;
                WORD2(v184) = v43;
                HIWORD(v184) = v42;
                *v172 = v184;
                v172 += 4;
                ++v171;
              }

              while (v35 != v171);
            }
          }
        }

        a11 = (a11 + a12);
        v31 += a10;
      }

      while (v31 + a3[7].u32[0] < v16);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, double **a4, double **a5, uint64_t a6, uint64_t a7, double a8, uint64_t a9, uint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  if (a10)
  {
    v16 = result;
    v17 = HIDWORD(*(a2 + 56));
    v18 = *a4;
    if (*(*a4 + 24))
    {
      a8 = *v18;
      *&a8 = *v18;
    }

    else
    {
      LODWORD(a8) = 2143289344;
    }

    v19 = *a5;
    v204 = *&a8;
    if (*(*a5 + 24))
    {
      a8 = *v19;
      *&a8 = *v19;
    }

    else
    {
      LODWORD(a8) = 2143289344;
    }

    v208 = *&a8;
    v222 = 3;
    v20 = *(a6 + 8);
    v21 = a3[3];
    v220 = v21.i32[0];
    v218 = v20;
    v216[1] = result;
    v219 = a3[6].i32[1] + v21.i32[1] * v17;
    v22 = a3[7].u32[1];
    v217 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v221 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v216);
    v215 = 3;
    v23 = *(a7 + 8);
    v24 = a3[3];
    v213 = v24.i32[0];
    v211 = v23;
    v209[1] = v16;
    v212 = a3[6].i32[1] + v24.i32[1] * v17;
    v25 = a3[7].u32[1];
    v210 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v214 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v209);
    v26 = a3[6].u32[1];
    if (a3[7].u32[0] + v26 < v17)
    {
      v28 = a3[3].i32[1] * *(a2 + 60);
      v29 = a3[5].u32[1];
      v30 = v29 + a10;
      v206 = vdupq_lane_s32(v208, 0);
      v207 = vdupq_lane_s32(v204, 0);
      v205 = __PAIR64__(v208.u32[0], v204.u32[0]);
      do
      {
        v219 = v28 + v26;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v216);
        v212 = v28 + v26;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v209);
        v35 = 0uLL;
        v36 = v216[0];
        if (v216[0])
        {
          v37 = v209[0];
          if (v209[0])
          {
            if (v29 >= 0x20)
            {
              v46 = 0;
              v47 = v216[0] + 2 * v217;
              v48 = v217 + v216[0];
              v49 = v209[0] + 2 * v210;
              v50 = v210 + v209[0];
              v40.i64[0] = 0;
              v39.i64[0] = 0;
              v41 = xmmword_296B8F050;
              v43 = xmmword_296B8F000;
              v42 = xmmword_296B8F0B0;
              v45 = xmmword_296B8F0C0;
              v44 = xmmword_296B8F020;
              do
              {
                v223.val[1] = *(v216[0] + v46);
                v225.val[1] = *(v216[0] + v46 + 16);
                v223.val[0] = *(v47 + v46);
                v225.val[0] = *(v47 + v46 + 16);
                v227.val[1] = vqtbl2q_s8(v223, xmmword_296B8F050);
                v52 = *(v48 + v46);
                v51 = *(v48 + v46 + 16);
                v227.val[0] = vqtbl1q_s8(v52, v42);
                v227.val[0] = vqtbl2q_s8(v227, v44);
                v231.val[1] = vqtbl2q_s8(v225, xmmword_296B8F050);
                v231.val[0] = vqtbl1q_s8(v51, v42);
                v227.val[1] = vqtbl2q_s8(v231, v44);
                v231.val[1] = vqtbl2q_s8(v225, v43);
                v231.val[0] = vqtbl1q_s8(v51, v45);
                v231.val[0] = vqtbl2q_s8(v231, v44);
                v53 = vqtbl2q_s8(v223, xmmword_296B8F070);
                v231.val[1] = vqtbl1q_s8(v52, xmmword_296B8F0D0);
                v231.val[1] = vqtbl2q_s8(*(&v231 + 16), v44);
                v234.val[1] = vqtbl2q_s8(v223, v43);
                v234.val[0] = vqtbl1q_s8(v52, v45);
                v234.val[0] = vqtbl2q_s8(v234, v44);
                v223.val[1] = vqtbl2q_s8(v223, xmmword_296B8F030);
                v223.val[0] = vqtbl1q_s8(v52, xmmword_296B8F0E0);
                v54 = vqtbl2q_s8(v223, v44);
                v223.val[1] = vqtbl2q_s8(v225, xmmword_296B8F070);
                v223.val[0] = vqtbl1q_s8(v51, xmmword_296B8F0D0);
                v234.val[1] = vqtbl2q_s8(v223, v44);
                v223.val[1] = vqtbl2q_s8(v225, xmmword_296B8F030);
                v223.val[0] = vqtbl1q_s8(v51, xmmword_296B8F0E0);
                v225.val[1] = vqtbl2q_s8(v223, v44);
                v223.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v223.val[1] = vaddq_s32(vshlq_n_s64(v227.val[1], 0x20uLL), v227.val[1]);
                v225.val[0] = vaddq_s32(vshlq_n_s64(v231.val[0], 0x20uLL), v231.val[0]);
                v231.val[1] = vaddq_s32(vshlq_n_s64(v231.val[1], 0x20uLL), v231.val[1]);
                v55 = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
                v227.val[1] = vaddq_s32(vshlq_n_s64(v234.val[1], 0x20uLL), v234.val[1]);
                v225.val[1] = vaddq_s32(vshlq_n_s64(v225.val[1], 0x20uLL), v225.val[1]);
                v234.val[0] = vaddq_s32(vshlq_n_s64(v234.val[0], 0x20uLL), v234.val[0]);
                v236.val[1] = *(v209[0] + v46);
                v238.val[1] = *(v209[0] + v46 + 16);
                v56 = v43;
                v58 = *(v50 + v46);
                v57 = *(v50 + v46 + 16);
                v236.val[0] = *(v49 + v46);
                v238.val[0] = *(v49 + v46 + 16);
                v240.val[1] = vqtbl2q_s8(v236, xmmword_296B8F050);
                v240.val[0] = vqtbl1q_s8(v58, v42);
                v234.val[1] = vdupq_lane_s32(*v225.val[0].i8, 1);
                v240.val[0] = vqtbl2q_s8(v240, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v238, xmmword_296B8F050);
                v228.val[0] = vqtbl1q_s8(v57, v42);
                v240.val[1] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v238, v43);
                v228.val[0] = vqtbl1q_s8(v57, xmmword_296B8F0C0);
                v59 = vqtbl2q_s8(v228, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v236, xmmword_296B8F070);
                v228.val[0] = vqtbl1q_s8(v58, xmmword_296B8F0D0);
                v228.val[0] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v60 = vqtbl2q_s8(v236, v43);
                v228.val[1] = vqtbl1q_s8(v58, xmmword_296B8F0C0);
                v61 = vqtbl2q_s8(*(&v228 + 16), xmmword_296B8F020);
                v42 = xmmword_296B8F0B0;
                v228.val[1] = vdupq_lane_s32(*v223.val[1].i8, 1);
                v236.val[1] = vqtbl2q_s8(v236, xmmword_296B8F030);
                v236.val[0] = vqtbl1q_s8(v58, xmmword_296B8F0E0);
                v231.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[1] = vqtbl2q_s8(v238, xmmword_296B8F070);
                v236.val[0] = vqtbl1q_s8(v57, xmmword_296B8F0D0);
                v62 = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[1] = vqtbl2q_s8(v238, xmmword_296B8F030);
                v236.val[0] = vqtbl1q_s8(v57, xmmword_296B8F0E0);
                v238.val[0] = vdupq_lane_s32(*v223.val[0].i8, 1);
                v238.val[0].i64[0] = 0;
                v228.val[1].i64[0] = 0;
                v234.val[1].i64[0] = 0;
                v227.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[0] = vaddq_s32(vshlq_n_s64(v240.val[0], 0x20uLL), v240.val[0]);
                v236.val[1] = vaddq_s32(vshlq_n_s64(v240.val[1], 0x20uLL), v240.val[1]);
                v63 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v55.i8, 1), v55), vaddq_s32(vdupq_lane_s32(*v234.val[0].i8, 1), v234.val[0]));
                v234.val[0] = vaddq_s32(vshlq_n_s64(v59, 0x20uLL), v59);
                v238.val[1] = vaddq_s32(vshlq_n_s64(v228.val[0], 0x20uLL), v228.val[0]);
                v225.val[0] = vaddq_s32(v234.val[1], v225.val[0]);
                v234.val[1] = vaddq_s32(vshlq_n_s64(v61, 0x20uLL), v61);
                v64 = vaddq_s32(vshlq_n_s64(v62, 0x20uLL), v62);
                v227.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v231.val[0] = vaddq_s32(vshlq_n_s64(v231.val[0], 0x20uLL), v231.val[0]);
                v65 = vdupq_lane_s32(*v234.val[0].i8, 1);
                v223.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v231.val[1].i8, 1), v231.val[1]), vaddq_s32(v238.val[0], v223.val[0]));
                v65.i64[0] = 0;
                v231.val[1] = vaddq_s32(v65, v234.val[0]);
                v43 = v56;
                v234.val[0] = vdupq_lane_s32(*v236.val[1].i8, 1);
                v223.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v227.val[1].i8, 1), v227.val[1]), 3), vaddq_s32(v228.val[1], v223.val[1]));
                v234.val[0].i64[0] = 0;
                v34 = vaddq_s32(v234.val[0], v236.val[1]);
                v236.val[1] = vdupq_lane_s32(*v236.val[0].i8, 1);
                v223.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v225.val[1].i8, 1), v225.val[1]), 3), v225.val[0]), v223.val[1]);
                v236.val[1].i64[0] = 0;
                v225.val[0] = vaddq_s32(v236.val[1], v236.val[0]);
                v45 = xmmword_296B8F0C0;
                v44 = xmmword_296B8F020;
                v33 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v238.val[1].i8, 1), v238.val[1]), v225.val[0]);
                v40 = vaddq_s32(vaddq_s32(v223.val[1], vaddq_s32(v223.val[0], v63)), vdupq_lane_s32(*v40.i8, 0));
                v32 = vaddq_s32(v33, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v231.val[0].i8, 1), v231.val[0]), vaddq_s32(vdupq_lane_s32(*v234.val[1].i8, 1), v234.val[1])));
                v66 = v46 + 64;
                v40.i32[0] = v40.i32[3];
                v31 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v227.val[0].i8, 1), v227.val[0]), 3), v231.val[1]), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v64.i8, 1), v64), 3), v34)), v32);
                v46 += 32;
                v39 = vaddq_s32(v31, vdupq_lane_s32(*v39.i8, 0));
                v39.i32[0] = v39.i32[3];
              }

              while (v66 <= v29);
              v38 = v29 & 0xFFFFFFE0;
              v35 = 0uLL;
            }

            else
            {
              v38 = 0;
              v39.i64[0] = 0;
              v40.i64[0] = 0;
              v41 = xmmword_296B8F050;
              v43 = xmmword_296B8F000;
              v42 = xmmword_296B8F0B0;
              v45 = xmmword_296B8F0C0;
              v44 = xmmword_296B8F020;
            }

            v67 = xmmword_296B8F0E0;
            v68 = xmmword_296B8F030;
            if ((v38 | 8) <= v29)
            {
              do
              {
                v31.i64[0] = *(v216[0] + v38);
                v32.i64[0] = *(v217 + v216[0] + v38);
                v33.i64[0] = *(v216[0] + 2 * v217 + v38);
                v70 = vzip1q_s8(v35, v32);
                v71 = vzip1q_s8(v33, v31);
                v72 = vzip1q_s8(v70, v71);
                v73 = vzip2q_s8(v70, v71);
                v74 = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                v75 = vdupq_lane_s32(*v74.i8, 1);
                v76 = vaddq_s32(vshlq_n_s64(v72, 0x20uLL), v72);
                v77 = vaddq_s32(vdupq_lane_s32(*v76.i8, 1), v76);
                v40 = vaddq_s32(v75, vaddq_s32(v74, vdupq_lane_s32(*v40.i8, 0)));
                v74.i64[0] = *(v209[0] + v38);
                v75.i64[0] = *(v210 + v209[0] + v38);
                v40.i32[0] = v40.i32[3] + v77.i32[3];
                v77.i64[0] = *(v209[0] + 2 * v210 + v38);
                v78 = vzip1q_s8(v35, v75);
                v79 = vzip1q_s8(v77, v74);
                v80 = vzip1q_s8(v78, v79);
                v81 = vzip2q_s8(v78, v79);
                v31 = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                v32 = vdupq_lane_s32(*v31.i8, 1);
                v82 = vaddq_s32(vshlq_n_s64(v80, 0x20uLL), v80);
                v33 = vaddq_s32(vdupq_lane_s32(*v82.i8, 1), v82);
                v39 = vaddq_s32(v32, vaddq_s32(v31, vdupq_lane_s32(*v39.i8, 0)));
                v39.i32[0] = v39.i32[3] + v33.i32[3];
                v69 = v38 + 8;
                v83 = v38 + 16;
                v38 += 8;
              }

              while (v83 <= v29);
            }

            else
            {
              v69 = v38;
            }

            if (v69 <= v29)
            {
              v84 = v29;
            }

            else
            {
              v84 = v69;
            }

            if (v84 + 32 <= v30)
            {
              v87 = v216[0] + 2 * v217;
              v88 = v217 + v216[0];
              v89 = v209[0] + 2 * v210;
              v90 = v210 + v209[0];
              v91 = a12;
              do
              {
                v226.val[1] = *(v36 + v84);
                v224.val[1] = *(v36 + v84 + 16);
                v93 = *(v88 + v84);
                v92 = *(v88 + v84 + 16);
                v226.val[0] = *(v87 + v84);
                v224.val[0] = *(v87 + v84 + 16);
                v230.val[1] = vqtbl2q_s8(v226, xmmword_296B8F070);
                v230.val[0] = vqtbl1q_s8(v93, xmmword_296B8F0D0);
                v230.val[0] = vqtbl2q_s8(v230, v44);
                v94 = vqtbl2q_s8(v226, v68);
                v230.val[1] = vqtbl1q_s8(v93, v67);
                v233.val[1] = vqtbl2q_s8(v224, xmmword_296B8F070);
                v230.val[1] = vqtbl2q_s8(*(&v230 + 16), v44);
                v233.val[0] = vqtbl1q_s8(v92, xmmword_296B8F0D0);
                v95 = vqtbl2q_s8(v233, v44);
                v233.val[1] = vqtbl2q_s8(v224, v68);
                v233.val[0] = vqtbl1q_s8(v92, v67);
                v235.val[1] = vqtbl2q_s8(v224, v41);
                v233.val[0] = vqtbl2q_s8(v233, v44);
                v235.val[0] = vqtbl1q_s8(v92, v42);
                v235.val[0] = vqtbl2q_s8(v235, v44);
                v96 = vqtbl2q_s8(v226, v43);
                v235.val[1] = vqtbl1q_s8(v93, v45);
                v226.val[1] = vqtbl2q_s8(v226, v41);
                v235.val[1] = vqtbl2q_s8(*(&v235 + 16), xmmword_296B8F020);
                v226.val[0] = vqtbl1q_s8(v93, v42);
                v226.val[0] = vqtbl2q_s8(v226, xmmword_296B8F020);
                v97 = vaddq_s32(vshlq_n_s64(v230.val[0], 0x20uLL), v230.val[0]);
                v98 = vaddq_s32(vshlq_n_s64(v230.val[1], 0x20uLL), v230.val[1]);
                v233.val[1] = vaddq_s32(vshlq_n_s64(v95, 0x20uLL), v95);
                v230.val[0] = vaddq_s32(vshlq_n_s64(v233.val[0], 0x20uLL), v233.val[0]);
                v230.val[1] = vaddq_s32(vshlq_n_s64(v235.val[0], 0x20uLL), v235.val[0]);
                v235.val[1] = vaddq_s32(vshlq_n_s64(v235.val[1], 0x20uLL), v235.val[1]);
                v226.val[0] = vaddq_s32(vshlq_n_s64(v226.val[0], 0x20uLL), v226.val[0]);
                v226.val[1] = vdupq_lane_s32(*v226.val[0].i8, 1);
                v99 = vdupq_lane_s32(*v235.val[1].i8, 1);
                v100 = vdupq_lane_s32(*v230.val[1].i8, 1);
                v101 = vdupq_lane_s32(*v230.val[0].i8, 1);
                v102 = vdupq_lane_s32(*v233.val[1].i8, 1);
                v103 = vdupq_lane_s32(*v98.i8, 1);
                v104 = vdupq_lane_s32(*v97.i8, 1);
                v104.i64[0] = 0;
                v101.i64[0] = 0;
                v100.i64[0] = 0;
                v99.i64[0] = 0;
                v226.val[1].i64[0] = 0;
                v105 = vaddq_s32(v226.val[1], v226.val[0]);
                v233.val[0] = *(v37 + v84);
                v35 = *(v37 + v84 + 16);
                v235.val[0] = *(v90 + v84);
                v34 = *(v90 + v84 + 16);
                v235.val[1] = vaddq_s32(v99, v235.val[1]);
                v106 = *(v89 + v84);
                v226.val[0] = *(v89 + v84 + 16);
                v229.val[1] = vqtbl2q_s8(v233, xmmword_296B8F070);
                v229.val[0] = vqtbl1q_s8(v235.val[0], xmmword_296B8F0D0);
                v230.val[1] = vaddq_s32(v100, v230.val[1]);
                v107 = vqtbl2q_s8(v229, xmmword_296B8F020);
                v229.val[1] = vqtbl2q_s8(v233, xmmword_296B8F030);
                v229.val[0] = vqtbl1q_s8(v235.val[0], v67);
                v108 = vqtbl2q_s8(v229, xmmword_296B8F020);
                v229.val[1] = vqtbl2q_s8(*(&v35 - 1), xmmword_296B8F070);
                v230.val[0] = vaddq_s32(v101, v230.val[0]);
                v229.val[0] = vqtbl1q_s8(v34, xmmword_296B8F0D0);
                v109 = vqtbl2q_s8(v229, xmmword_296B8F020);
                v229.val[1] = vqtbl2q_s8(v233, v41);
                v229.val[0] = vqtbl1q_s8(v235.val[0], v42);
                v103.i64[0] = 0;
                v229.val[0] = vqtbl2q_s8(v229, xmmword_296B8F020);
                v67 = xmmword_296B8F0E0;
                v102.i64[0] = 0;
                v110 = vdupq_lane_s32(*v40.i8, 0);
                v233.val[1] = vaddq_s32(v102, v233.val[1]);
                v111 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                v112 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
                v113 = vaddq_s32(v103, v98);
                v114 = vaddq_s32(vshlq_n_s64(v229.val[0], 0x20uLL), v229.val[0]);
                v115 = vdupq_lane_s32(*v114.i8, 1);
                v229.val[0] = vdupq_lane_s32(*v111.i8, 1);
                v116 = vaddq_s32(v104, v97);
                v229.val[0].i64[0] = 0;
                v115.i64[0] = 0;
                v117 = vaddq_s32(v116, v110);
                v118 = vaddq_s32(v115, v114);
                v119 = vaddq_s32(v229.val[0], v111);
                v120 = vaddq_s32(vdupq_laneq_s32(v116, 3), v105);
                v121 = vdupq_lane_s32(*v39.i8, 0);
                v122 = vaddq_s32(v119, v121);
                v229.val[0] = vzip2q_s32(v207, v117);
                v229.val[1] = vzip2q_s32(v206, v122);
                v123 = vaddq_s32(vdupq_laneq_s32(v119, 3), v118);
                v241.val[0] = vzip1q_s32(v207, v117);
                v241.val[1] = vzip1q_s32(v206, v122);
                v124 = v91 + 16;
                v125 = v91 + 24;
                v126 = v91 + 32;
                v127 = v91;
                vst2q_f32(v127, v241);
                v127 += 8;
                v128 = vaddq_s32(v120, v110);
                v129 = vaddq_s32(v123, v121);
                vst2q_f32(v127, v229);
                v241.val[0] = vzip1q_s32(v207, v128);
                v241.val[1] = vzip1q_s32(v206, v129);
                vst2q_f32(v124, v241);
                v241.val[1] = vdupq_lane_s32(*v112.i8, 1);
                v241.val[1].i64[0] = 0;
                v130 = vdupq_laneq_s32(v120, 3);
                v241.val[1] = vaddq_s32(v241.val[1], v112);
                v131 = vdupq_laneq_s32(v123, 3);
                v229.val[0] = vzip2q_s32(v207, v128);
                v229.val[1] = vzip2q_s32(v206, v129);
                v132 = vaddq_s32(vaddq_s32(v113, v110), v130);
                v68 = xmmword_296B8F030;
                vst2q_f32(v125, v229);
                v133 = vaddq_s32(vaddq_s32(v241.val[1], v121), v131);
                v229.val[0] = vzip1q_s32(v207, v132);
                v229.val[1] = vzip1q_s32(v206, v133);
                vst2q_f32(v126, v229);
                v229.val[1] = vqtbl2q_s8(*(&v35 - 1), xmmword_296B8F030);
                v229.val[0] = vqtbl1q_s8(v34, xmmword_296B8F0E0);
                v134 = vqtbl2q_s8(v229, xmmword_296B8F020);
                v233.val[0] = vqtbl2q_s8(v233, xmmword_296B8F000);
                v135 = vqtbl1q_s8(v235.val[0], xmmword_296B8F0C0);
                v136 = vqtbl2q_s8(v233, xmmword_296B8F020);
                v233.val[0] = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
                v235.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v113, 3), v235.val[1]), v130);
                v137 = vaddq_s32(vshlq_n_s64(v136, 0x20uLL), v136);
                v235.val[1] = vdupq_lane_s32(*v137.i8, 1);
                v235.val[1].i64[0] = 0;
                v138 = v91 + 40;
                v139 = v91 + 48;
                v140 = v91 + 56;
                v141 = v91 + 64;
                v142 = vaddq_s32(vdupq_laneq_s32(v241.val[1], 3), vaddq_s32(v235.val[1], v137));
                v235.val[1] = vaddq_s32(v235.val[0], v110);
                v143 = vaddq_s32(v142, v131);
                v239.val[0] = vzip2q_s32(v207, v132);
                v239.val[1] = vzip2q_s32(v206, v133);
                v144 = vaddq_s32(v143, v121);
                vst2q_f32(v138, v239);
                v239.val[0] = vzip1q_s32(v207, v235.val[1]);
                v239.val[1] = vzip1q_s32(v206, v144);
                vst2q_f32(v139, v239);
                v239.val[1] = vdupq_lane_s32(*v233.val[0].i8, 1);
                v239.val[1].i64[0] = 0;
                v145 = vdupq_laneq_s32(v235.val[0], 3);
                v235.val[0] = vaddq_s32(v239.val[1], v233.val[0]);
                v233.val[0] = vdupq_laneq_s32(v143, 3);
                v235.val[1] = vzip2q_s32(v207, v235.val[1]);
                v146 = vzip2q_s32(v206, v144);
                v147 = vaddq_s32(vaddq_s32(v233.val[1], v110), v145);
                vst2q_f32(v140, *(&v235 + 16));
                v235.val[1] = vaddq_s32(vaddq_s32(v235.val[0], v121), v233.val[0]);
                v239.val[0] = vzip1q_s32(v207, v147);
                v239.val[1] = vzip1q_s32(v206, v235.val[1]);
                vst2q_f32(v141, v239);
                v239.val[1] = vqtbl2q_s8(*(&v35 - 1), v41);
                v239.val[0] = vqtbl1q_s8(v34, v42);
                v148 = vqtbl2q_s8(v239, xmmword_296B8F020);
                v149 = vaddq_s32(vshlq_n_s64(v148, 0x20uLL), v148);
                v150 = v91 + 72;
                v151 = v91 + 80;
                v152 = v91 + 88;
                v153 = v91 + 96;
                v230.val[1] = vaddq_s32(vdupq_laneq_s32(v233.val[1], 3), v230.val[1]);
                v233.val[1] = vdupq_lane_s32(*v149.i8, 1);
                v233.val[1].i64[0] = 0;
                v233.val[1] = vaddq_s32(v233.val[1], v149);
                v154 = vaddq_s32(vaddq_s32(v230.val[1], v110), v145);
                v233.val[1] = vaddq_s32(vdupq_laneq_s32(v235.val[0], 3), v233.val[1]);
                v239.val[0] = vzip2q_s32(v207, v147);
                v239.val[1] = vzip2q_s32(v206, v235.val[1]);
                v235.val[0] = vaddq_s32(vaddq_s32(v233.val[1], v121), v233.val[0]);
                vst2q_f32(v150, v239);
                v239.val[0] = vzip1q_s32(v207, v154);
                v239.val[1] = vzip1q_s32(v206, v235.val[0]);
                vst2q_f32(v151, v239);
                v43 = xmmword_296B8F000;
                v235.val[1] = vaddq_s32(vshlq_n_s64(v134, 0x20uLL), v134);
                v155 = vdupq_lane_s32(*v235.val[1].i8, 1);
                v230.val[1] = vdupq_laneq_s32(v230.val[1], 3);
                v155.i64[0] = 0;
                v233.val[1] = vdupq_laneq_s32(v233.val[1], 3);
                v235.val[1] = vaddq_s32(v155, v235.val[1]);
                v237.val[0] = vzip2q_s32(v207, v154);
                v237.val[1] = vzip2q_s32(v206, v235.val[0]);
                v156 = vaddq_s32(vaddq_s32(vaddq_s32(v230.val[0], v230.val[1]), v110), v145);
                v235.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v235.val[1], v233.val[1]), v121), v233.val[0]);
                vst2q_f32(v152, v237);
                v237.val[0] = vzip1q_s32(v207, v156);
                v237.val[1] = vzip1q_s32(v206, v235.val[0]);
                vst2q_f32(v153, v237);
                v45 = xmmword_296B8F0C0;
                v44 = xmmword_296B8F020;
                v224.val[1] = vqtbl2q_s8(v224, xmmword_296B8F000);
                v224.val[0] = vqtbl1q_s8(v92, xmmword_296B8F0C0);
                v157 = vqtbl2q_s8(v224, xmmword_296B8F020);
                v158 = vaddq_s32(vshlq_n_s64(v157, 0x20uLL), v157);
                v224.val[0] = vdupq_lane_s32(*v158.i8, 1);
                v224.val[0].i64[0] = 0;
                v159 = vaddq_s32(vdupq_laneq_s32(v230.val[0], 3), vaddq_s32(v224.val[0], v158));
                v224.val[1] = vqtbl2q_s8(*(&v35 - 1), xmmword_296B8F000);
                v224.val[0] = vqtbl1q_s8(v34, xmmword_296B8F0C0);
                v224.val[0] = vqtbl2q_s8(v224, xmmword_296B8F020);
                v224.val[0] = vaddq_s32(vshlq_n_s64(v224.val[0], 0x20uLL), v224.val[0]);
                v33 = vdupq_lane_s32(*v224.val[0].i8, 1);
                v33.i64[0] = 0;
                v40 = vaddq_s32(vaddq_s32(vaddq_s32(v159, v230.val[1]), v110), v145);
                v39 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v235.val[1], 3), vaddq_s32(v33, v224.val[0])), v233.val[1]), v121), v233.val[0]);
                v160 = vzip2q_s32(v207, v156);
                v224.val[0] = vzip2q_s32(v206, v235.val[0]);
                v161 = v91 + 104;
                v162 = v91 + 112;
                v163 = v91 + 120;
                vst2q_f32(v161, v224);
                v164 = vzip1q_s32(v207, v40);
                v224.val[0] = vzip1q_s32(v206, v39);
                vst2q_f32(v162, v224);
                v31 = vzip2q_s32(v207, v40);
                v32 = vzip2q_s32(v206, v39);
                vst2q_f32(v163, *v31.i8);
                v86 = v91 + 128;
                v85 = v84 + 32;
                result = v84 + 64;
                v84 += 32;
                v40.i32[0] = v40.i32[3];
                v91 += 128;
                v39.i32[0] = v39.i32[3];
              }

              while (result <= v30);
            }

            else
            {
              v85 = v84;
              v86 = a12;
            }

            if (v85 + 8 <= v30)
            {
              v167 = v36 + 2 * v217;
              v168 = v217 + v36;
              v169 = v37 + 2 * v210;
              v170 = v210 + v37;
              do
              {
                v31.i64[0] = *(v36 + v85);
                v32.i64[0] = *(v168 + v85);
                v33.i64[0] = *(v167 + v85);
                v171 = vzip1q_s8(0, v32);
                v172 = vzip1q_s8(v33, v31);
                v173 = vzip1q_s8(v171, v172);
                v174 = vzip2q_s8(v171, v172);
                v175 = vshlq_n_s64(v174, 0x20uLL);
                v176 = vaddq_s32(vshlq_n_s64(v173, 0x20uLL), v173);
                v177 = vaddq_s32(v175, v174);
                v178 = vdupq_lane_s32(*v40.i8, 0);
                v175.i64[0] = *(v37 + v85);
                v179 = vdupq_lane_s32(*v177.i8, 1);
                v35.i64[0] = *(v170 + v85);
                v34.i64[0] = *(v169 + v85);
                v180 = vdupq_lane_s32(*v176.i8, 1);
                v181 = vaddq_s32(v177, v178);
                v182 = vzip1q_s8(0, v35);
                v183 = vzip1q_s8(v34, v175);
                v184 = vzip1q_s8(v182, v183);
                v180.i64[0] = 0;
                v185 = vzip2q_s8(v182, v183);
                v186 = vaddq_s32(vshlq_n_s64(v184, 0x20uLL), v184);
                v179.i64[0] = 0;
                v187 = vaddq_s32(vshlq_n_s64(v185, 0x20uLL), v185);
                v188 = vdupq_lane_s32(*v187.i8, 1);
                v189 = vdupq_lane_s32(*v186.i8, 1);
                v190 = vaddq_s32(v180, v176);
                v189.i64[0] = 0;
                v188.i64[0] = 0;
                v191 = vdupq_laneq_s32(v190, 3);
                v34 = vaddq_s32(v189, v186);
                v192 = vdupq_laneq_s32(v34, 3);
                v193 = vdupq_lane_s32(*v39.i8, 0);
                v40 = vaddq_s32(v190, v178);
                v194 = vaddq_s32(v179, v181);
                v195 = vaddq_s32(v34, v193);
                v34.i64[1] = v207.i64[1];
                v196 = vzip2q_s32(v207, v40);
                v232.val[0] = vzip1q_s32(v207, v40);
                v232.val[1] = vzip1q_s32(v206, v195);
                v166 = v86 + 32;
                v197 = v86 + 16;
                v198 = v86 + 24;
                v199 = vaddq_s32(v194, v191);
                vst2q_f32(v86, v232);
                v200 = v86 + 8;
                v39 = vaddq_s32(vaddq_s32(v188, vaddq_s32(v187, v193)), v192);
                v35 = vzip2q_s32(v206, v195);
                vst2q_f32(v200, *(&v35 - 1));
                v40.i32[0] = v199.i32[3];
                v201 = vzip1q_s32(v207, v199);
                v33 = vzip1q_s32(v206, v39);
                vst2q_f32(v197, *(&v33 - 1));
                v31 = vzip2q_s32(v207, v199);
                v32 = vzip2q_s32(v206, v39);
                vst2q_f32(v198, *v31.i8);
                v39.i32[0] = v39.i32[3];
                v165 = v85 + 8;
                result = v85 + 16;
                v85 += 8;
                v86 = v166;
              }

              while (result <= v30);
            }

            else
            {
              v165 = v85;
              v166 = v86;
            }

            if (v165 < v30)
            {
              v202 = v40.i32[0];
              do
              {
                *&v203 = v205;
                DWORD2(v203) = ((*(v216[0] + v165) << 24) | (*(v216[0] + v165 + v217) << 16) | (*(v216[0] + v165 + 2 * v217) << 8)) + v202;
                HIDWORD(v203) = ((*(v209[0] + v165) << 24) | (*(v209[0] + v165 + v210) << 16) | (*(v209[0] + v165 + 2 * v210) << 8)) + v39.i32[0];
                *v166 = v203;
                v166 += 4;
                ++v165;
              }

              while (v30 != v165);
            }
          }
        }

        a12 = (a12 + a13);
        v26 += a11;
      }

      while (v26 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v250 = 4;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v248 = v20.i32[0];
    v246 = v19;
    v244[1] = result;
    v247 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v245 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v249 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v244);
    if (*(*a5 + 24))
    {
      LODWORD(a5) = **a5;
    }

    v243 = 4;
    v22 = *(a6 + 8);
    v23 = a3[3];
    v241 = v23.i32[0];
    v239 = v22;
    v237[1] = v17;
    v240 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v238 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v242 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v237);
    v236 = 4;
    v25 = *(a7 + 8);
    v26 = a3[3];
    v234 = v26.i32[0];
    v232 = v25;
    v230[1] = v17;
    v233 = a3[6].i32[1] + v26.i32[1] * v18;
    v27 = a3[7].u32[1];
    v231 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v235 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v230);
    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v18)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a9;
      v33 = 0x1800000010;
      v34 = 0x1000000018;
      v210 = vdupq_n_s32(a5);
      do
      {
        v247 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v244);
        v240 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v237);
        v233 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v230);
        v43 = v210;
        v44 = v244[0];
        if (v244[0])
        {
          v45 = v237[0];
          if (v237[0])
          {
            v46 = v230[0];
            if (v230[0])
            {
              v208 = v34;
              v209 = v33;
              v47 = 0;
              if (v31 >= 0x20)
              {
                v52 = v245 + v244[0];
                v53 = v245 + v244[0] + 2 * v245;
                v54 = v244[0] + 2 * v245;
                v55 = v238 + v237[0];
                v56 = v238 + v237[0] + 2 * v238;
                v57 = v237[0] + 2 * v238;
                result = v231 + v230[0];
                v58 = v231 + v230[0] + 2 * v231;
                v59 = v230[0] + 2 * v231;
                v49 = 0uLL;
                v60 = 32;
                v62 = xmmword_296B8F040;
                v61 = xmmword_296B8F020;
                v51 = xmmword_296B8F080;
                v50 = xmmword_296B8F070;
                do
                {
                  v228 = v49;
                  v256.val[1] = *(v244[0] + v60 - 32);
                  v264.val[1] = *(v244[0] + v60 - 16);
                  v258.val[1] = *(v52 + v60 - 32);
                  v266.val[1] = *(v52 + v60 - 16);
                  v256.val[0] = *(v54 + v60 - 32);
                  v264.val[0] = *(v54 + v60 - 16);
                  v258.val[0] = *(v53 + v60 - 32);
                  v266.val[0] = *(v53 + v60 - 16);
                  v251.val[1] = vqtbl2q_s8(v256, xmmword_296B8F030);
                  v251.val[0] = vqtbl2q_s8(v258, v62);
                  v251.val[1] = vqtbl2q_s8(v251, v61);
                  v253.val[1] = vqtbl2q_s8(v256, xmmword_296B8F000);
                  v253.val[0] = vqtbl2q_s8(v258, xmmword_296B8F010);
                  v253.val[0] = vqtbl2q_s8(v253, v61);
                  v268.val[1] = vqtbl2q_s8(v256, v50);
                  v268.val[0] = vqtbl2q_s8(v258, v51);
                  v253.val[1] = vqtbl2q_s8(v268, v61);
                  v256.val[1] = vqtbl2q_s8(v256, xmmword_296B8F050);
                  v256.val[0] = vqtbl2q_s8(v258, xmmword_296B8F060);
                  v256.val[1] = vqtbl2q_s8(v256, v61);
                  v258.val[1] = vqtbl2q_s8(v264, xmmword_296B8F000);
                  v258.val[0] = vqtbl2q_s8(v266, xmmword_296B8F010);
                  v251.val[0] = vqtbl2q_s8(v258, v61);
                  v258.val[1] = vqtbl2q_s8(v264, xmmword_296B8F050);
                  v258.val[0] = vqtbl2q_s8(v266, xmmword_296B8F060);
                  v258.val[0] = vqtbl2q_s8(v258, v61);
                  v268.val[1] = vqtbl2q_s8(v264, v50);
                  v268.val[0] = vqtbl2q_s8(v266, v51);
                  v258.val[1] = vqtbl2q_s8(v268, v61);
                  v264.val[1] = vqtbl2q_s8(v264, xmmword_296B8F030);
                  v264.val[0] = vqtbl2q_s8(v266, v62);
                  v256.val[0] = vqtbl2q_s8(v264, v61);
                  v272.val[1] = *(v237[0] + v60 - 32);
                  v274.val[1] = *(v237[0] + v60 - 16);
                  v276.val[1] = *(v55 + v60 - 32);
                  v278.val[1] = *(v55 + v60 - 16);
                  v272.val[0] = *(v57 + v60 - 32);
                  v274.val[0] = *(v57 + v60 - 16);
                  v225 = vaddq_s32(vshlq_n_s64(v251.val[1], 0x20uLL), v251.val[1]);
                  v276.val[0] = *(v56 + v60 - 32);
                  v278.val[0] = *(v56 + v60 - 16);
                  v260.val[1] = vqtbl2q_s8(v272, xmmword_296B8F030);
                  v260.val[0] = vqtbl2q_s8(v276, xmmword_296B8F040);
                  v222 = vaddq_s32(vshlq_n_s64(v253.val[0], 0x20uLL), v253.val[0]);
                  v63 = vqtbl2q_s8(v260, xmmword_296B8F020);
                  v260.val[1] = vqtbl2q_s8(v272, xmmword_296B8F000);
                  v260.val[0] = vqtbl2q_s8(v276, xmmword_296B8F010);
                  v260.val[0] = vqtbl2q_s8(v260, xmmword_296B8F020);
                  v64 = vqtbl2q_s8(v272, xmmword_296B8F070);
                  v220 = vaddq_s32(vshlq_n_s64(v253.val[1], 0x20uLL), v253.val[1]);
                  v260.val[1] = vqtbl2q_s8(v276, xmmword_296B8F080);
                  v268.val[1] = vqtbl2q_s8(*(&v260 + 16), xmmword_296B8F020);
                  v272.val[0] = vqtbl2q_s8(v272, xmmword_296B8F050);
                  v65 = vqtbl2q_s8(v276, xmmword_296B8F060);
                  v272.val[0] = vqtbl2q_s8(v272, xmmword_296B8F020);
                  v218 = vaddq_s32(vshlq_n_s64(v256.val[1], 0x20uLL), v256.val[1]);
                  v276.val[1] = vqtbl2q_s8(v274, xmmword_296B8F000);
                  v276.val[0] = vqtbl2q_s8(v278, xmmword_296B8F010);
                  v268.val[0] = vqtbl2q_s8(v276, xmmword_296B8F020);
                  v276.val[1] = vqtbl2q_s8(v274, xmmword_296B8F050);
                  v276.val[0] = vqtbl2q_s8(v278, xmmword_296B8F060);
                  v216 = vaddq_s32(vshlq_n_s64(v251.val[0], 0x20uLL), v251.val[0]);
                  v266.val[1] = vqtbl2q_s8(v276, xmmword_296B8F020);
                  v276.val[1] = vqtbl2q_s8(v274, xmmword_296B8F070);
                  v276.val[0] = vqtbl2q_s8(v278, xmmword_296B8F080);
                  v276.val[0] = vqtbl2q_s8(v276, xmmword_296B8F020);
                  v274.val[0] = vqtbl2q_s8(v274, xmmword_296B8F030);
                  v258.val[0] = vaddq_s32(vshlq_n_s64(v258.val[0], 0x20uLL), v258.val[0]);
                  v272.val[1] = vqtbl2q_s8(v278, xmmword_296B8F040);
                  v266.val[0] = vqtbl2q_s8(*(&v272 + 16), xmmword_296B8F020);
                  v258.val[1] = vaddq_s32(vshlq_n_s64(v258.val[1], 0x20uLL), v258.val[1]);
                  v66 = vaddq_s32(vshlq_n_s64(v256.val[0], 0x20uLL), v256.val[0]);
                  v39 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                  v67 = vaddq_s32(vshlq_n_s64(v260.val[0], 0x20uLL), v260.val[0]);
                  v278.val[0] = vaddq_s32(vshlq_n_s64(v268.val[1], 0x20uLL), v268.val[1]);
                  v278.val[1] = vaddq_s32(vshlq_n_s64(v272.val[0], 0x20uLL), v272.val[0]);
                  v264.val[1] = vaddq_s32(vshlq_n_s64(v268.val[0], 0x20uLL), v268.val[0]);
                  v41 = vaddq_s32(vshlq_n_s64(v266.val[1], 0x20uLL), v266.val[1]);
                  v272.val[0] = vaddq_s32(vshlq_n_s64(v276.val[0], 0x20uLL), v276.val[0]);
                  v268.val[0] = vaddq_s32(vshlq_n_s64(v266.val[0], 0x20uLL), v266.val[0]);
                  *v39.i8 = vadd_s32(vadd_s32(vadd_s32(*v278.val[0].i8, *&vextq_s8(v278.val[0], v278.val[0], 8uLL)), vadd_s32(*v278.val[1].i8, *&vextq_s8(v278.val[1], v278.val[1], 8uLL))), vadd_s32(vadd_s32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)), vadd_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL))));
                  v276.val[1] = *(v230[0] + v60 - 32);
                  v68 = *(v230[0] + v60 - 16);
                  v260.val[1] = *(result + v60 - 32);
                  v278.val[1] = *(result + v60 - 16);
                  v276.val[0] = *(v59 + v60 - 32);
                  v274.val[1] = *(v59 + v60 - 16);
                  v260.val[0] = *(v58 + v60 - 32);
                  v278.val[0] = *(v58 + v60 - 16);
                  v272.val[1] = vaddq_s32(vdupq_lane_s32(*v268.val[0].i8, 1), v268.val[0]);
                  v263.val[1] = vqtbl2q_s8(*(&v274 + 16), xmmword_296B8F000);
                  v263.val[0] = vqtbl2q_s8(v278, xmmword_296B8F010);
                  v268.val[1] = vqtbl2q_s8(*(&v274 + 16), xmmword_296B8F030);
                  v268.val[0] = vqtbl2q_s8(v278, xmmword_296B8F040);
                  *v266.val[0].i8 = vadd_s32(vdup_lane_s32(*v41.i8, 1), *&vextq_s8(v41, v41, 8uLL));
                  v262.val[1] = vqtbl2q_s8(*(&v274 + 16), xmmword_296B8F050);
                  v262.val[0] = vqtbl2q_s8(v278, xmmword_296B8F060);
                  v274.val[1] = vqtbl2q_s8(*(&v274 + 16), xmmword_296B8F070);
                  v274.val[0] = vqtbl2q_s8(v278, xmmword_296B8F080);
                  v278.val[1] = vqtbl2q_s8(v276, xmmword_296B8F050);
                  *v41.i8 = vadd_s32(vdup_lane_s32(*v264.val[1].i8, 1), *&vextq_s8(v264.val[1], v264.val[1], 8uLL));
                  v278.val[0] = vqtbl2q_s8(v260, xmmword_296B8F060);
                  v253.val[1] = vqtbl2q_s8(v276, xmmword_296B8F070);
                  v253.val[0] = vqtbl2q_s8(v260, xmmword_296B8F080);
                  v251.val[1] = vqtbl2q_s8(v276, xmmword_296B8F000);
                  v251.val[0] = vqtbl2q_s8(v260, xmmword_296B8F010);
                  v276.val[0] = vqtbl2q_s8(v276, xmmword_296B8F030);
                  v69 = vqtbl2q_s8(v260, xmmword_296B8F040);
                  v62 = xmmword_296B8F040;
                  v61 = xmmword_296B8F020;
                  v40 = vextq_s8(v218, v218, 8uLL);
                  v266.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v272.val[0].i8, 1), v272.val[0]), 3);
                  *v266.val[0].i8 = vadd_s32(*&vextq_s8(v266.val[1], v266.val[1], 8uLL), *v266.val[0].i8);
                  v272.val[0] = vdupq_laneq_s32(v272.val[1], 3);
                  v258.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v258.val[1].i8, 1), v258.val[1]), 3);
                  *v258.val[0].i8 = vadd_s32(*&vextq_s8(v258.val[1], v258.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v258.val[0].i8, 1), *&vextq_s8(v258.val[0], v258.val[0], 8uLL)));
                  v258.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v66.i8, 1), v66), 3);
                  v264.val[1] = vqtbl2q_s8(v263, xmmword_296B8F020);
                  v266.val[1] = vqtbl2q_s8(v268, xmmword_296B8F020);
                  v268.val[0] = vqtbl2q_s8(v262, xmmword_296B8F020);
                  v268.val[1] = vqtbl2q_s8(v274, xmmword_296B8F020);
                  v70 = vqtbl2q_s8(v278, xmmword_296B8F020);
                  *v41.i8 = vadd_s32(vadd_s32(*&vextq_s8(v272.val[0], v272.val[0], 8uLL), *v41.i8), *v266.val[0].i8);
                  v253.val[0] = vqtbl2q_s8(v253, xmmword_296B8F020);
                  v251.val[0] = vqtbl2q_s8(v251, xmmword_296B8F020);
                  v251.val[1] = vqtbl2q_s8(v276, xmmword_296B8F020);
                  v51 = xmmword_296B8F080;
                  v50 = xmmword_296B8F070;
                  v253.val[1] = vaddq_s32(vshlq_n_s64(v264.val[1], 0x20uLL), v264.val[1]);
                  v264.val[1] = vaddq_s32(vshlq_n_s64(v266.val[1], 0x20uLL), v266.val[1]);
                  v266.val[0] = vaddq_s32(vshlq_n_s64(v268.val[0], 0x20uLL), v268.val[0]);
                  v266.val[1] = vaddq_s32(vshlq_n_s64(v268.val[1], 0x20uLL), v268.val[1]);
                  v268.val[0] = vaddq_s32(vshlq_n_s64(v70, 0x20uLL), v70);
                  v253.val[0] = vaddq_s32(vshlq_n_s64(v253.val[0], 0x20uLL), v253.val[0]);
                  v251.val[0] = vaddq_s32(vshlq_n_s64(v251.val[0], 0x20uLL), v251.val[0]);
                  v251.val[1] = vaddq_s32(vshlq_n_s64(v251.val[1], 0x20uLL), v251.val[1]);
                  v42 = vaddq_s32(vdupq_lane_s32(*v266.val[0].i8, 1), v266.val[0]);
                  v251.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v251.val[1].i8, 1), v251.val[1]), vaddq_s32(vdupq_lane_s32(*v251.val[0].i8, 1), v251.val[0]));
                  v36 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v253.val[0].i8, 1), v253.val[0]), vaddq_s32(vdupq_lane_s32(*v268.val[0].i8, 1), v268.val[0]));
                  v38 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v264.val[1].i8, 1), v264.val[1]), vaddq_s32(vdupq_lane_s32(*v253.val[1].i8, 1), v253.val[1]));
                  v37 = vaddq_s32(v38, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v266.val[1].i8, 1), v266.val[1]), v42));
                  v35 = vaddq_s32(v37, vaddq_s32(v36, v251.val[0]));
                  *v36.i8 = vadd_s32(vadd_s32(vadd_s32(*&vextq_s8(v258.val[1], v258.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v216.i8, 1), *&vextq_s8(v216, v216, 8uLL))), *v258.val[0].i8), vadd_s32(vadd_s32(vadd_s32(*v220.i8, *&vextq_s8(v220, v220, 8uLL)), vadd_s32(*v218.i8, *v40.i8)), vadd_s32(vadd_s32(*v225.i8, *&vextq_s8(v225, v225, 8uLL)), vadd_s32(*v222.i8, *&vextq_s8(v222, v222, 8uLL)))));
                  v49.i64[1] = v228.i64[1];
                  *v35.i8 = vzip2_s32(*v36.i8, vadd_s32(*v41.i8, *v39.i8));
                  *v49.i8 = vadd_s32(*v35.i8, *v228.i8);
                  v47 += v35.u32[3];
                  v60 += 32;
                }

                while (v60 <= v31);
                v48 = v31 & 0xFFFFFFE0;
                v43 = v210;
                v34 = v208;
                v33 = v209;
              }

              else
              {
                v48 = 0;
                v49.i64[0] = 0;
                v51 = xmmword_296B8F080;
                v50 = xmmword_296B8F070;
              }

              v71.i64[1] = 0x17FF07FF16FF06FFLL;
              v72 = xmmword_296B8F000;
              v73 = xmmword_296B8F010;
              v74 = xmmword_296B8F060;
              if ((v48 | 8) <= v31)
              {
                result = v237[0] + 2 * v238;
                do
                {
                  v35.i64[0] = *(v244[0] + v48);
                  v36.i64[0] = *(v245 + v244[0] + v48);
                  v37.i64[0] = *(v244[0] + 2 * v245 + v48);
                  v38.i64[0] = *(v245 + v244[0] + 2 * v245 + v48);
                  v76 = vzip1q_s8(v38, v36);
                  v77 = vzip1q_s8(v37, v35);
                  v78 = vzip1q_s8(v76, v77);
                  v79 = vzip2q_s8(v76, v77);
                  v80 = vshlq_n_s64(v79, 0x20uLL);
                  v81 = vshlq_n_s64(v78, 0x20uLL);
                  v82 = vaddq_s32(v81, v78);
                  v83 = vaddq_s32(v80, v79);
                  v80.i64[0] = *(v237[0] + v48);
                  v81.i64[0] = *(v238 + v237[0] + v48);
                  v39.i64[0] = *(result + v48);
                  v40.i64[0] = *(v238 + v237[0] + 2 * v238 + v48);
                  v84 = vzip1q_s8(v40, v81);
                  v85 = vzip1q_s8(v39, v80);
                  v86 = vzip1q_s8(v84, v85);
                  v87 = vzip2q_s8(v84, v85);
                  v40 = vshlq_n_s64(v86, 0x20uLL);
                  v39 = vaddq_s32(v40, v86);
                  v88 = vaddq_s32(vshlq_n_s64(v87, 0x20uLL), v87);
                  *v83.i8 = vadd_s32(vzip2_s32(vadd_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL)), vadd_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL))), *v49.i8);
                  v89 = vextq_s8(v39, v39, 8uLL);
                  v90 = vextq_s8(v82, v82, 8uLL);
                  *v49.i8 = vadd_s32(*v83.i8, vzip2_s32(vadd_s32(*v82.i8, *v90.i8), vadd_s32(*v39.i8, *v89.i8)));
                  v83.i64[0] = *(v230[0] + v48);
                  v89.i64[0] = *(v231 + v230[0] + v48);
                  v82.i64[0] = *(v230[0] + 2 * v231 + v48);
                  v90.i64[0] = *(v231 + v230[0] + 2 * v231 + v48);
                  v91 = vzip1q_s8(v90, v89);
                  v92 = vzip1q_s8(v82, v83);
                  v93 = vzip1q_s8(v91, v92);
                  v94 = vzip2q_s8(v91, v92);
                  v95 = vaddq_s32(vshlq_n_s64(v93, 0x20uLL), v93);
                  v96 = vaddq_s32(vshlq_n_s64(v94, 0x20uLL), v94);
                  v36 = vdupq_lane_s32(*v96.i8, 1);
                  v38 = vdupq_lane_s32(*v95.i8, 1);
                  v37 = vaddq_s32(v38, v95);
                  v35 = vaddq_s32(v36, v96);
                  v47 += v35.i32[3] + v37.i32[3];
                  v75 = v48 + 8;
                  v97 = v48 + 16;
                  v48 += 8;
                }

                while (v97 <= v31);
              }

              else
              {
                v75 = v48;
              }

              if (v75 < v31)
              {
                do
                {
                  v35.i8[0] = *(v245 + v244[0] + v75);
                  v35.i8[4] = *(v237[0] + v75);
                  v36.i8[0] = *(v244[0] + v75);
                  v36.i8[4] = *(v238 + v237[0] + v75);
                  v98 = vshl_u32(vand_s8(*v36.i8, 0xFF000000FFLL), v34);
                  v99 = vorr_s8(v98, vshl_u32(vand_s8(*v35.i8, 0xFF000000FFLL), v33));
                  v98.i8[0] = *(v244[0] + 2 * v245 + v75);
                  v98.i8[4] = *(v237[0] + 2 * v238 + v75);
                  v100 = vand_s8(v98, 0xFF000000FFLL);
                  *v36.i8 = vorr_s8(vshl_n_s32(v100, 8uLL), v100);
                  *v35.i8 = vorr_s8(v99, *v36.i8);
                  *v49.i8 = vadd_s32(*v35.i8, *v49.i8);
                  v101 = *(v230[0] + 2 * v231 + v75);
                  result = (*(v230[0] + v75) << 24) | (*(v231 + v230[0] + v75) << 16) | (v101 << 8) | v101;
                  v47 += result;
                  ++v75;
                }

                while (v31 != v75);
                v75 = v31;
              }

              if (v75 + 32 <= v32)
              {
                v105 = v245 + v244[0];
                v106 = v245 + v244[0] + 2 * v245;
                v107 = v244[0] + 2 * v245;
                v108 = v238 + v237[0];
                v109 = v238 + v237[0] + 2 * v238;
                v110 = v237[0] + 2 * v238;
                result = v231 + v230[0];
                v111 = v231 + v230[0] + 2 * v231;
                v112 = v230[0] + 2 * v231;
                v104 = a11;
                v113 = xmmword_296B8F030;
                v114 = xmmword_296B8F040;
                v115 = xmmword_296B8F050;
                do
                {
                  v229 = *v49.i8;
                  v254.val[1] = *(v44 + v75);
                  v257.val[1] = *(v44 + v75 + 16);
                  v254.val[0] = *(v107 + v75);
                  v257.val[0] = *(v107 + v75 + 16);
                  v252.val[1] = *(v105 + v75);
                  v259.val[1] = *(v105 + v75 + 16);
                  v252.val[0] = *(v106 + v75);
                  v259.val[0] = *(v106 + v75 + 16);
                  v221.val[0] = vqtbl2q_s8(v252, v51);
                  v221.val[1] = vqtbl2q_s8(v254, v50);
                  v219.val[0] = vqtbl2q_s8(v252, v114);
                  v219.val[1] = vqtbl2q_s8(v254, v113);
                  v217.val[0] = vqtbl2q_s8(v259, v51);
                  v217.val[1] = vqtbl2q_s8(v257, v50);
                  v215.val[0] = vqtbl2q_s8(v259, v114);
                  v215.val[1] = vqtbl2q_s8(v257, v113);
                  v226 = vqtbl2q_s8(v259, v73);
                  v227 = vqtbl2q_s8(v257, v72);
                  v214.val[0] = vqtbl2q_s8(v259, v74);
                  v214.val[1] = vqtbl2q_s8(v257, v115);
                  v213.val[0] = vqtbl2q_s8(v252, v73);
                  v213.val[1] = vqtbl2q_s8(v254, v72);
                  v259.val[1] = vqtbl2q_s8(v254, v115);
                  v254.val[1] = *(v45 + v75);
                  v257.val[1] = *(v45 + v75 + 16);
                  v211.val[0] = vqtbl2q_s8(v252, v74);
                  v211.val[1] = v259.val[1];
                  v252.val[1] = *(v108 + v75);
                  v259.val[1] = *(v108 + v75 + 16);
                  v254.val[0] = *(v110 + v75);
                  v257.val[0] = *(v110 + v75 + 16);
                  v277.val[1] = vqtbl2q_s8(v257, xmmword_296B8F070);
                  v252.val[0] = *(v109 + v75);
                  v259.val[0] = *(v109 + v75 + 16);
                  v277.val[0] = vqtbl2q_s8(v259, xmmword_296B8F080);
                  v116 = v115;
                  v261.val[1] = vqtbl2q_s8(v257, v113);
                  v261.val[0] = vqtbl2q_s8(v259, v114);
                  v223 = vqtbl2q_s8(v259, v73);
                  v224 = vqtbl2q_s8(v257, v72);
                  v275.val[1] = vqtbl2q_s8(v257, v116);
                  v275.val[0] = vqtbl2q_s8(v259, v74);
                  v265.val[1] = vqtbl2q_s8(v254, xmmword_296B8F070);
                  v265.val[0] = vqtbl2q_s8(v252, xmmword_296B8F080);
                  v267.val[1] = vqtbl2q_s8(v254, v113);
                  v267.val[0] = vqtbl2q_s8(v252, v114);
                  v271.val[1] = vqtbl2q_s8(v254, v72);
                  v271.val[0] = vqtbl2q_s8(v252, v73);
                  v269.val[1] = vqtbl2q_s8(v254, v116);
                  v269.val[0] = vqtbl2q_s8(v252, v74);
                  v254.val[1] = *(v46 + v75);
                  v254.val[0] = *(v112 + v75);
                  v252.val[1] = *(result + v75);
                  v252.val[0] = *(v111 + v75);
                  v259.val[1] = vqtbl2q_s8(v254, xmmword_296B8F070);
                  v259.val[0] = vqtbl2q_s8(v252, xmmword_296B8F080);
                  v257.val[1] = vqtbl2q_s8(v254, v113);
                  v257.val[0] = vqtbl2q_s8(v252, v114);
                  v212.val[0] = vqtbl2q_s8(v252, xmmword_296B8F010);
                  v212.val[1] = vqtbl2q_s8(v254, v72);
                  v254.val[1] = vqtbl2q_s8(v254, v116);
                  v254.val[0] = vqtbl2q_s8(v252, v74);
                  v252.val[0] = vqtbl2q_s8(v221, xmmword_296B8F020);
                  v252.val[1] = vqtbl2q_s8(v219, xmmword_296B8F020);
                  v117 = vqtbl2q_s8(v217, xmmword_296B8F020);
                  v118 = vqtbl2q_s8(v215, xmmword_296B8F020);
                  v119 = vqtbl2q_s8(v214, xmmword_296B8F020);
                  v120 = vqtbl2q_s8(v213, xmmword_296B8F020);
                  v121 = vqtbl2q_s8(v211, xmmword_296B8F020);
                  v252.val[0] = vaddq_s32(vshlq_n_s64(v252.val[0], 0x20uLL), v252.val[0]);
                  v252.val[1] = vaddq_s32(vshlq_n_s64(v252.val[1], 0x20uLL), v252.val[1]);
                  v122 = vaddq_s32(vshlq_n_s64(v117, 0x20uLL), v117);
                  v123 = vaddq_s32(vshlq_n_s64(v118, 0x20uLL), v118);
                  v124 = vaddq_s32(vshlq_n_s64(v119, 0x20uLL), v119);
                  v125 = vaddq_s32(vshlq_n_s64(v121, 0x20uLL), v121);
                  v126 = vdupq_lane_s32(*v125.i8, 1);
                  v126.i64[0] = 0;
                  v127 = vaddq_s32(vshlq_n_s64(v120, 0x20uLL), v120);
                  v128 = vaddq_s32(v126, v125);
                  v129 = vdupq_lane_s32(*v127.i8, 1);
                  v129.i64[0] = 0;
                  v130 = vaddq_s32(v129, v127);
                  v131 = vdupq_lane_s32(*v124.i8, 1);
                  v131.i64[0] = 0;
                  v132 = vaddq_s32(v131, v124);
                  v265.val[0] = vqtbl2q_s8(v265, xmmword_296B8F020);
                  v265.val[1] = vdupq_lane_s32(*v123.i8, 1);
                  v265.val[1].i64[0] = 0;
                  v221.val[0] = vaddq_s32(v265.val[1], v123);
                  v265.val[1] = vqtbl2q_s8(v267, xmmword_296B8F020);
                  v267.val[0] = vdupq_lane_s32(*v122.i8, 1);
                  v267.val[0].i64[0] = 0;
                  v133 = vaddq_s32(v267.val[0], v122);
                  v267.val[0] = vqtbl2q_s8(v277, xmmword_296B8F020);
                  v267.val[1] = vdupq_lane_s32(*v252.val[1].i8, 1);
                  v267.val[1].i64[0] = 0;
                  v134 = vaddq_s32(v267.val[1], v252.val[1]);
                  v252.val[1] = vqtbl2q_s8(v261, xmmword_296B8F020);
                  v267.val[1] = vdupq_lane_s32(*v252.val[0].i8, 1);
                  v267.val[1].i64[0] = 0;
                  v252.val[0] = vaddq_s32(v267.val[1], v252.val[0]);
                  v267.val[1] = vqtbl2q_s8(v275, xmmword_296B8F020);
                  v50 = xmmword_296B8F070;
                  v271.val[0] = vqtbl2q_s8(v271, xmmword_296B8F020);
                  v269.val[0] = vqtbl2q_s8(v269, xmmword_296B8F020);
                  v265.val[0] = vaddq_s32(vshlq_n_s64(v265.val[0], 0x20uLL), v265.val[0]);
                  v265.val[1] = vaddq_s32(vshlq_n_s64(v265.val[1], 0x20uLL), v265.val[1]);
                  v269.val[1] = vaddq_s32(vshlq_n_s64(v267.val[0], 0x20uLL), v267.val[0]);
                  v252.val[1] = vaddq_s32(vshlq_n_s64(v252.val[1], 0x20uLL), v252.val[1]);
                  v267.val[0] = vaddq_s32(vshlq_n_s64(v267.val[1], 0x20uLL), v267.val[1]);
                  v267.val[1] = vaddq_s32(vshlq_n_s64(v269.val[0], 0x20uLL), v269.val[0]);
                  v271.val[1] = vdupq_lane_s32(*v267.val[1].i8, 1);
                  v269.val[0] = vaddq_s32(vshlq_n_s64(v271.val[0], 0x20uLL), v271.val[0]);
                  v271.val[1].i64[0] = 0;
                  v271.val[0] = vaddq_s32(v271.val[1], v267.val[1]);
                  v267.val[1] = vdupq_lane_s32(*v269.val[0].i8, 1);
                  v267.val[1].i64[0] = 0;
                  v271.val[1] = vaddq_s32(v267.val[1], v269.val[0]);
                  v261.val[0] = vaddq_s32(vdupq_laneq_s32(v133, 3), v132);
                  v267.val[1] = vdupq_lane_s32(*v267.val[0].i8, 1);
                  v267.val[1].i64[0] = 0;
                  v269.val[0] = vdupq_lane_s32(*v252.val[1].i8, 1);
                  v261.val[1] = vaddq_s32(v267.val[1], v267.val[0]);
                  v269.val[0].i64[0] = 0;
                  v135 = vaddq_s32(v269.val[0], v252.val[1]);
                  v252.val[1] = vdupq_lane_s32(*v269.val[1].i8, 1);
                  v219.val[0] = *(v112 + v75 + 16);
                  v219.val[1] = *(v46 + v75 + 16);
                  v252.val[1].i64[0] = 0;
                  v269.val[1] = vaddq_s32(v252.val[1], v269.val[1]);
                  v252.val[1] = vdupq_lane_s32(*v265.val[1].i8, 1);
                  v277.val[1] = *(result + v75 + 16);
                  v277.val[0] = *(v111 + v75 + 16);
                  v252.val[1].i64[0] = 0;
                  v136 = vaddq_s32(v252.val[1], v265.val[1]);
                  v252.val[1] = vdupq_lane_s32(*v265.val[0].i8, 1);
                  v252.val[1].i64[0] = 0;
                  v252.val[1] = vaddq_s32(v252.val[1], v265.val[0]);
                  v137 = vdupq_laneq_s32(v252.val[0], 3);
                  v259.val[0] = vqtbl2q_s8(v259, xmmword_296B8F020);
                  v267.val[1] = vdupq_lane_s32(v229, 0);
                  v265.val[0] = vqtbl2q_s8(v257, xmmword_296B8F020);
                  v265.val[1] = vaddq_s32(v252.val[0], v267.val[1]);
                  v269.val[0] = vdupq_lane_s32(v229, 1);
                  v252.val[0] = vqtbl2q_s8(v254, xmmword_296B8F020);
                  v254.val[0] = vaddq_s32(vdupq_laneq_s32(v134, 3), v130);
                  v43 = v210;
                  v257.val[0] = vaddq_s32(vshlq_n_s64(v259.val[0], 0x20uLL), v259.val[0]);
                  v252.val[0] = vaddq_s32(vshlq_n_s64(v252.val[0], 0x20uLL), v252.val[0]);
                  v257.val[1] = vdupq_lane_s32(*v252.val[0].i8, 1);
                  v275.val[1] = vaddq_s32(v137, v128);
                  v113 = xmmword_296B8F030;
                  v259.val[0] = vdupq_lane_s32(*v257.val[0].i8, 1);
                  v259.val[0].i64[0] = 0;
                  v254.val[1] = vaddq_s32(v252.val[1], v269.val[0]);
                  v257.val[1].i64[0] = 0;
                  v252.val[0] = vaddq_s32(v257.val[1], v252.val[0]);
                  v257.val[0] = vaddq_s32(v259.val[0], v257.val[0]);
                  v252.val[1] = vaddq_s32(vdupq_laneq_s32(v252.val[1], 3), v271.val[0]);
                  v257.val[1] = vdupq_laneq_s32(v257.val[0], 3);
                  v271.val[0] = vdupq_n_s32(v47);
                  v257.val[0] = vaddq_s32(v257.val[0], v271.val[0]);
                  v252.val[0] = vaddq_s32(v257.val[1], v252.val[0]);
                  v257.val[1] = vzip2q_s32(v265.val[1], v254.val[1]);
                  v259.val[0] = vzip2q_s32(v210, v257.val[0]);
                  v273.val[0] = vzip1q_s32(v265.val[1], v254.val[1]);
                  v273.val[1] = vzip1q_s32(v210, v257.val[0]);
                  v138 = v104;
                  v254.val[1] = vaddq_s32(v275.val[1], v267.val[1]);
                  vst2q_f32(v138, v273);
                  v138 += 8;
                  v257.val[0] = vaddq_s32(v252.val[1], v269.val[0]);
                  v259.val[1] = vaddq_s32(v252.val[0], v271.val[0]);
                  vst2q_f32(v138, *(&v257 + 16));
                  v257.val[1] = vzip1q_s32(v254.val[1], v257.val[0]);
                  v259.val[0] = vzip1q_s32(v210, v259.val[1]);
                  v139 = v104 + 16;
                  vst2q_f32(v139, *(&v257 + 16));
                  v257.val[1] = vaddq_s32(vshlq_n_s64(v265.val[0], 0x20uLL), v265.val[0]);
                  v259.val[0] = vdupq_lane_s32(*v257.val[1].i8, 1);
                  v265.val[0] = vaddq_s32(vdupq_laneq_s32(v136, 3), v271.val[1]);
                  v259.val[0].i64[0] = 0;
                  v257.val[1] = vaddq_s32(v259.val[0], v257.val[1]);
                  v259.val[0] = vdupq_laneq_s32(v275.val[1], 3);
                  v51 = xmmword_296B8F080;
                  v265.val[1] = vaddq_s32(vaddq_s32(v134, v267.val[1]), v259.val[0]);
                  v252.val[1] = vdupq_laneq_s32(v252.val[1], 3);
                  v271.val[1] = vaddq_s32(v136, v269.val[0]);
                  v114 = xmmword_296B8F040;
                  v271.val[1] = vaddq_s32(v271.val[1], v252.val[1]);
                  v252.val[0] = vdupq_laneq_s32(v252.val[0], 3);
                  v254.val[1] = vzip2q_s32(v254.val[1], v257.val[0]);
                  v257.val[0] = vzip2q_s32(v210, v259.val[1]);
                  v259.val[1] = vaddq_s32(vaddq_s32(v257.val[1], v271.val[0]), v252.val[0]);
                  v140 = v104 + 24;
                  vst2q_f32(v140, *(&v254 + 16));
                  v254.val[1] = vzip1q_s32(v265.val[1], v271.val[1]);
                  v257.val[0] = vzip1q_s32(v210, v259.val[1]);
                  v141 = v104 + 32;
                  vst2q_f32(v141, *(&v254 + 16));
                  v257.val[0] = vqtbl2q_s8(v219, xmmword_296B8F070);
                  v254.val[1] = vqtbl2q_s8(v277, xmmword_296B8F080);
                  v254.val[1] = vqtbl2q_s8(*(&v254 + 16), xmmword_296B8F020);
                  v257.val[0] = vqtbl2q_s8(v212, xmmword_296B8F020);
                  v254.val[0] = vaddq_s32(v254.val[0], v259.val[0]);
                  v257.val[0] = vaddq_s32(vshlq_n_s64(v257.val[0], 0x20uLL), v257.val[0]);
                  v273.val[0] = vdupq_lane_s32(*v257.val[0].i8, 1);
                  v273.val[0].i64[0] = 0;
                  v254.val[1] = vaddq_s32(vshlq_n_s64(v254.val[1], 0x20uLL), v254.val[1]);
                  v257.val[0] = vaddq_s32(vdupq_laneq_s32(v257.val[1], 3), vaddq_s32(v273.val[0], v257.val[0]));
                  v252.val[1] = vaddq_s32(v265.val[0], v252.val[1]);
                  v257.val[1] = vaddq_s32(v254.val[0], v267.val[1]);
                  v252.val[0] = vaddq_s32(v257.val[0], v252.val[0]);
                  v257.val[0] = vaddq_s32(v252.val[1], v269.val[0]);
                  v265.val[0] = vzip2q_s32(v265.val[1], v271.val[1]);
                  v265.val[1] = vzip2q_s32(v210, v259.val[1]);
                  v259.val[0] = vaddq_s32(v252.val[0], v271.val[0]);
                  v142 = v104 + 40;
                  vst2q_f32(v142, v265);
                  v265.val[0] = vzip1q_s32(v257.val[1], v257.val[0]);
                  v265.val[1] = vzip1q_s32(v210, v259.val[0]);
                  v143 = v104 + 48;
                  vst2q_f32(v143, v265);
                  v259.val[1] = vdupq_lane_s32(*v254.val[1].i8, 1);
                  v259.val[1].i64[0] = 0;
                  v265.val[0] = vaddq_s32(vdupq_laneq_s32(v269.val[1], 3), v261.val[1]);
                  v259.val[1] = vaddq_s32(v259.val[1], v254.val[1]);
                  v254.val[1] = vdupq_laneq_s32(v261.val[0], 3);
                  v254.val[0] = vdupq_laneq_s32(v254.val[0], 3);
                  v265.val[1] = vaddq_s32(v133, v267.val[1]);
                  v74 = xmmword_296B8F060;
                  v115 = xmmword_296B8F050;
                  v265.val[1] = vaddq_s32(v265.val[1], v254.val[0]);
                  v252.val[1] = vdupq_laneq_s32(v252.val[1], 3);
                  v269.val[1] = vaddq_s32(vaddq_s32(v269.val[1], v269.val[0]), v252.val[1]);
                  v252.val[0] = vdupq_laneq_s32(v252.val[0], 3);
                  v257.val[0] = vzip2q_s32(v257.val[1], v257.val[0]);
                  v257.val[1] = vzip2q_s32(v210, v259.val[0]);
                  v259.val[0] = vaddq_s32(vaddq_s32(v259.val[1], v271.val[0]), v252.val[0]);
                  v144 = v104 + 56;
                  vst2q_f32(v144, v257);
                  v257.val[0] = vzip1q_s32(v265.val[1], v269.val[1]);
                  v257.val[1] = vzip1q_s32(v210, v259.val[0]);
                  v145 = v104 + 64;
                  vst2q_f32(v145, v257);
                  v257.val[1] = vqtbl2q_s8(v219, xmmword_296B8F050);
                  v257.val[0] = vqtbl2q_s8(v277, xmmword_296B8F060);
                  v257.val[0] = vqtbl2q_s8(v257, xmmword_296B8F020);
                  v257.val[0] = vaddq_s32(vshlq_n_s64(v257.val[0], 0x20uLL), v257.val[0]);
                  v271.val[1] = vdupq_lane_s32(*v257.val[0].i8, 1);
                  v271.val[1].i64[0] = 0;
                  v257.val[0] = vaddq_s32(vdupq_laneq_s32(v259.val[1], 3), vaddq_s32(v271.val[1], v257.val[0]));
                  v259.val[1] = vdupq_laneq_s32(v265.val[0], 3);
                  v257.val[1] = vaddq_s32(vaddq_s32(v261.val[0], v267.val[1]), v254.val[0]);
                  v265.val[0] = vaddq_s32(vaddq_s32(v265.val[0], v269.val[0]), v252.val[1]);
                  v273.val[0] = vzip2q_s32(v265.val[1], v269.val[1]);
                  v273.val[1] = vzip2q_s32(v210, v259.val[0]);
                  v259.val[0] = vaddq_s32(vaddq_s32(v257.val[0], v271.val[0]), v252.val[0]);
                  v146 = v104 + 72;
                  vst2q_f32(v146, v273);
                  v273.val[0] = vzip1q_s32(v257.val[1], v265.val[0]);
                  v273.val[1] = vzip1q_s32(v210, v259.val[0]);
                  v147 = v104 + 80;
                  vst2q_f32(v147, v273);
                  v273.val[1] = vqtbl2q_s8(v219, xmmword_296B8F030);
                  v273.val[0] = vqtbl2q_s8(v277, xmmword_296B8F040);
                  v265.val[1] = vqtbl2q_s8(v273, xmmword_296B8F020);
                  v265.val[1] = vaddq_s32(vshlq_n_s64(v265.val[1], 0x20uLL), v265.val[1]);
                  v271.val[1] = vdupq_lane_s32(*v265.val[1].i8, 1);
                  v271.val[1].i64[0] = 0;
                  v265.val[1] = vaddq_s32(v271.val[1], v265.val[1]);
                  v269.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v221.val[0], v254.val[1]), v267.val[1]), v254.val[0]);
                  v271.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v135, v259.val[1]), v269.val[0]), v252.val[1]);
                  v257.val[0] = vdupq_laneq_s32(v257.val[0], 3);
                  v273.val[0] = vzip2q_s32(v257.val[1], v265.val[0]);
                  v273.val[1] = vzip2q_s32(v210, v259.val[0]);
                  v148 = v104 + 88;
                  vst2q_f32(v148, v273);
                  v257.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v265.val[1], v257.val[0]), v271.val[0]), v252.val[0]);
                  v273.val[0] = vzip1q_s32(v269.val[1], v271.val[1]);
                  v149 = v104 + 96;
                  v273.val[1] = vzip1q_s32(v210, v257.val[1]);
                  vst2q_f32(v149, v273);
                  v271.val[1] = vzip2q_s32(v269.val[1], v271.val[1]);
                  v273.val[0] = vzip2q_s32(v210, v257.val[1]);
                  v150 = v104 + 104;
                  vst2q_f32(v150, *(&v271 + 16));
                  v259.val[0] = vqtbl2q_s8(v219, xmmword_296B8F000);
                  v72 = xmmword_296B8F000;
                  v257.val[1] = vqtbl2q_s8(v277, xmmword_296B8F010);
                  v73 = xmmword_296B8F010;
                  v271.val[1] = v226;
                  v273.val[0] = v227;
                  v265.val[0] = vqtbl2q_s8(*(&v271 + 16), xmmword_296B8F020);
                  v265.val[0] = vaddq_s32(vshlq_n_s64(v265.val[0], 0x20uLL), v265.val[0]);
                  v269.val[1] = vdupq_lane_s32(*v265.val[0].i8, 1);
                  v269.val[1].i64[0] = 0;
                  v254.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v221.val[0], 3), vaddq_s32(v269.val[1], v265.val[0])), v254.val[1]);
                  v271.val[1] = v223;
                  v273.val[0] = v224;
                  v265.val[0] = vqtbl2q_s8(*(&v271 + 16), xmmword_296B8F020);
                  v265.val[0] = vaddq_s32(vshlq_n_s64(v265.val[0], 0x20uLL), v265.val[0]);
                  v269.val[1] = vdupq_lane_s32(*v265.val[0].i8, 1);
                  v269.val[1].i64[0] = 0;
                  v42 = vdupq_laneq_s32(v135, 3);
                  v41 = vaddq_s32(v42, vaddq_s32(v269.val[1], v265.val[0]));
                  v257.val[1] = vqtbl2q_s8(*(&v257 + 16), xmmword_296B8F020);
                  v257.val[1] = vaddq_s32(vshlq_n_s64(v257.val[1], 0x20uLL), v257.val[1]);
                  v49 = vaddq_s32(vaddq_s32(v41, v259.val[1]), v269.val[0]);
                  v71 = vdupq_lane_s32(*v257.val[1].i8, 1);
                  v71.i64[0] = 0;
                  v40 = vaddq_s32(v71, v257.val[1]);
                  v37 = vaddq_s32(vaddq_s32(v254.val[1], v267.val[1]), v254.val[0]);
                  v36 = vaddq_s32(v49, v252.val[1]);
                  v252.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v265.val[1], 3), v40), v257.val[0]), v271.val[0]), v252.val[0]);
                  v47 = v252.val[0].u32[3];
                  v254.val[1] = vzip1q_s32(v37, v36);
                  v151 = v104 + 112;
                  v257.val[0] = vzip1q_s32(v210, v252.val[0]);
                  vst2q_f32(v151, *(&v254 + 16));
                  v254.val[1] = vzip2q_s32(v37, v36);
                  v257.val[0] = vzip2q_s32(v210, v252.val[0]);
                  v152 = v104 + 120;
                  vst2q_f32(v152, *(&v254 + 16));
                  v35 = vextq_s8(v36, v36, 8uLL);
                  v38 = vextq_s8(v37, v37, 8uLL);
                  *v49.i8 = vzip2_s32(*v38.i8, *v35.i8);
                  v104 += 128;
                  v153 = v75 + 64;
                  v75 += 32;
                }

                while (v153 <= v32);
                v103 = v36.u32[3];
                v102 = v37.u32[3];
                v34 = v208;
                v33 = v209;
              }

              else
              {
                v102 = v49.i32[0];
                v103 = v49.u32[1];
                v104 = a11;
              }

              if (v75 + 8 <= v32)
              {
                v156 = v245 + v44;
                v157 = v245 + v44 + 2 * v245;
                v158 = v44 + 2 * v245;
                v159 = v238 + v45;
                result = v238 + v45 + 2 * v238;
                v160 = v45 + 2 * v238;
                v161 = v231 + v46;
                v162 = v231 + v46 + 2 * v231;
                v163 = v46 + 2 * v231;
                do
                {
                  v35.i64[0] = *(v44 + v75);
                  v36.i64[0] = *(v156 + v75);
                  v37.i64[0] = *(v158 + v75);
                  v38.i64[0] = *(v157 + v75);
                  v164 = vzip1q_s8(v38, v36);
                  v165 = vzip1q_s8(v37, v35);
                  v166 = vzip1q_s8(v164, v165);
                  v167 = vzip2q_s8(v164, v165);
                  v168 = vaddq_s32(vshlq_n_s64(v166, 0x20uLL), v166);
                  v169 = vaddq_s32(vshlq_n_s64(v167, 0x20uLL), v167);
                  v170 = vdupq_lane_s32(*v169.i8, 1);
                  v171 = vdupq_lane_s32(*v168.i8, 1);
                  v172 = vdupq_n_s32(v102);
                  v40.i64[0] = *(v45 + v75);
                  v173 = vaddq_s32(v169, v172);
                  v169.i64[0] = *(v159 + v75);
                  v71.i64[0] = *(v160 + v75);
                  v171.i64[0] = 0;
                  v41.i64[0] = *(result + v75);
                  v174 = vzip1q_s8(v41, v169);
                  v175 = vzip1q_s8(v71, v40);
                  v170.i64[0] = 0;
                  v176 = vzip1q_s8(v174, v175);
                  v177 = vaddq_s32(vshlq_n_s64(v176, 0x20uLL), v176);
                  v178 = vdupq_lane_s32(*v177.i8, 1);
                  v179 = vaddq_s32(v171, v168);
                  v180 = vzip2q_s8(v174, v175);
                  v178.i64[0] = 0;
                  v181 = vdupq_n_s32(v103);
                  v182 = vaddq_s32(v170, v173);
                  v173.i64[0] = *(v46 + v75);
                  v42.i64[0] = *(v161 + v75);
                  v183 = vaddq_s32(v178, v177);
                  v177.i64[0] = *(v163 + v75);
                  v178.i64[0] = *(v162 + v75);
                  v184 = vdupq_laneq_s32(v179, 3);
                  v41 = vzip1q_s8(v178, v42);
                  v185 = vzip1q_s8(v177, v173);
                  v186 = vzip1q_s8(v41, v185);
                  v187 = vaddq_s32(vshlq_n_s64(v186, 0x20uLL), v186);
                  v188 = vaddq_s32(v179, v172);
                  v189 = vdupq_lane_s32(*v187.i8, 1);
                  v189.i64[0] = 0;
                  v71 = vaddq_s32(v189, v187);
                  v190 = vaddq_s32(v183, v181);
                  v42 = vdupq_n_s32(v47);
                  v191 = vaddq_s32(v71, v42);
                  v270.val[0] = vzip1q_s32(v188, v190);
                  v192 = v104 + 16;
                  v270.val[1] = vzip1q_s32(v43, v191);
                  v193 = v104;
                  vst2q_f32(v193, v270);
                  v193 += 8;
                  v194 = vaddq_s32(vshlq_n_s64(v180, 0x20uLL), v180);
                  v195 = vdupq_lane_s32(*v194.i8, 1);
                  v195.i64[0] = 0;
                  v196 = vaddq_s32(v182, v184);
                  v197 = vaddq_s32(v195, vaddq_s32(v194, v181));
                  v198 = vzip2q_s8(v41, v185);
                  v35 = vaddq_s32(v197, vdupq_laneq_s32(v183, 3));
                  v199 = vaddq_s32(vshlq_n_s64(v198, 0x20uLL), v198);
                  v200 = vdupq_lane_s32(*v199.i8, 1);
                  v102 = v196.u32[3];
                  v200.i64[0] = 0;
                  v40 = vdupq_laneq_s32(v71, 3);
                  v103 = v35.u32[3];
                  v201 = v104 + 24;
                  v36 = vaddq_s32(vaddq_s32(v200, vaddq_s32(v199, v42)), v40);
                  v47 = v36.u32[3];
                  v255.val[0] = vzip2q_s32(v188, v190);
                  v255.val[1] = vzip2q_s32(v43, v191);
                  vst2q_f32(v193, v255);
                  v255.val[0] = vzip1q_s32(v196, v35);
                  v255.val[1] = vzip1q_s32(v43, v36);
                  vst2q_f32(v192, v255);
                  v37 = vzip2q_s32(v196, v35);
                  v38 = vzip2q_s32(v43, v36);
                  vst2q_f32(v201, *v37.i8);
                  v155 = v104 + 32;
                  v154 = v75 + 8;
                  v202 = v75 + 16;
                  v75 += 8;
                  v104 += 32;
                }

                while (v202 <= v32);
              }

              else
              {
                v154 = v75;
                v155 = v104;
              }

              if (v154 < v32)
              {
                do
                {
                  v203 = *(v244[0] + v154 + 2 * v245);
                  v204 = *(v237[0] + v154 + 2 * v238);
                  v102 += (*(v244[0] + v154) << 24) | (*(v244[0] + v154 + v245) << 16) | (v203 << 8) | v203;
                  v205 = (*(v237[0] + v154) << 24) | (*(v237[0] + v154 + v238) << 16) | (v204 << 8) | v204;
                  v206 = *(v230[0] + v154 + 2 * v231);
                  v103 += v205;
                  *&v207 = __PAIR64__(a5, v102);
                  DWORD2(v207) = v103;
                  v47 += (*(v230[0] + v154) << 24) | (*(v230[0] + v154 + v231) << 16) | (v206 << 8) | v206;
                  HIDWORD(v207) = v47;
                  *v155 = v207;
                  v155 += 4;
                  ++v154;
                }

                while (v32 != v154);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

__int16 *CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(__int16 *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v285 = 2;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v283 = v20.i32[0];
    v281 = v19;
    v279[1] = result;
    v282 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v280 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v284 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v279);
    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v22 = _D0;
    }

    else
    {
      v22 = 32256;
    }

    v278 = 2;
    v28 = *(a6 + 8);
    v29 = a3[3];
    v276 = v29.i32[0];
    v274 = v28;
    v272[1] = v17;
    v275 = a3[6].i32[1] + v29.i32[1] * v18;
    v30 = a3[7].u32[1];
    v273 = vmin_u32(vmls_s32(*(*(*&v28[5] + 8 * v30) + 16), v28[6], v29), v28[6]).u32[0];
    v277 = v30;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v272);
    v271 = 2;
    v31 = *(a7 + 8);
    v32 = a3[3];
    v269 = v32.i32[0];
    v267 = v31;
    v265[1] = v17;
    v268 = a3[6].i32[1] + v32.i32[1] * v18;
    v33 = a3[7].u32[1];
    v266 = vmin_u32(vmls_s32(*(*(*&v31[5] + 8 * v33) + 16), v31[6], v32), v31[6]).u32[0];
    v270 = v33;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v265);
    v34 = a3[6].u32[1];
    if (a3[7].u32[0] + v34 < v18)
    {
      v36 = a3[3].i32[1] * *(a2 + 60);
      v37 = a3[5].u32[1];
      v38 = v37 + a9;
      v264 = vdupq_n_s16(v22);
      do
      {
        v282 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v279);
        v275 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v272);
        v268 = v36 + v34;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v265);
        v41.i64[0] = 0xFFFFFFFF00000000;
        v41.i64[1] = 0xFFFFFFFF00000000;
        v42 = v279[0];
        if (v279[0])
        {
          v43 = v272[0];
          if (v272[0])
          {
            v44 = v265[0];
            if (v265[0])
            {
              if (v37 >= 0x20)
              {
                v49 = 0;
                v47 = 0;
                v46 = 0;
                v45 = 0;
                v50 = v280 + v279[0];
                v51 = v273 + v272[0];
                v52 = v266 + v265[0];
                do
                {
                  v54 = *(v279[0] + v49);
                  v53 = *(v279[0] + v49 + 16);
                  v56 = *(v50 + v49);
                  v55 = *(v50 + v49 + 16);
                  v57 = vzip1q_s8(v56, v54);
                  v58 = vzip2q_s8(v56, v54);
                  v59 = vzip1q_s8(v55, v53);
                  v60 = vzip2q_s8(v55, v53);
                  v61 = vaddq_s16(vshlq_n_s32(v57, 0x10uLL), v57);
                  v62 = vaddq_s16(vshlq_n_s32(v58, 0x10uLL), v58);
                  v63 = vaddq_s16(vshlq_n_s32(v59, 0x10uLL), v59);
                  v64 = vaddq_s16(vshlq_n_s32(v60, 0x10uLL), v60);
                  v65 = vaddq_s16(vandq_s8(vqtbl1q_s8(v64, xmmword_296B8F090), v41), v64);
                  v66 = vaddq_s16(vandq_s8(vqtbl1q_s8(v63, xmmword_296B8F090), v41), v63);
                  v67 = vaddq_s16(vandq_s8(vqtbl1q_s8(v62, xmmword_296B8F090), v41), v62);
                  v68 = vaddq_s16(vandq_s8(vqtbl1q_s8(v61, xmmword_296B8F090), v41), v61);
                  v70 = *(v272[0] + v49);
                  v69 = *(v272[0] + v49 + 16);
                  v72 = *(v51 + v49);
                  v71 = *(v51 + v49 + 16);
                  v73 = vzip1q_s8(v72, v70);
                  v74 = vzip2q_s8(v72, v70);
                  v75 = vzip1q_s8(v71, v69);
                  v76 = vzip2q_s8(v71, v69);
                  v77 = vaddq_s16(vshlq_n_s32(v73, 0x10uLL), v73);
                  v78 = vaddq_s16(vshlq_n_s32(v74, 0x10uLL), v74);
                  v79 = vaddq_s16(vshlq_n_s32(v75, 0x10uLL), v75);
                  v80 = vaddq_s16(vshlq_n_s32(v76, 0x10uLL), v76);
                  v81 = vaddq_s16(vandq_s8(vqtbl1q_s8(v80, xmmword_296B8F090), v41), v80);
                  v82 = vaddq_s16(vandq_s8(vqtbl1q_s8(v79, xmmword_296B8F090), v41), v79);
                  v83 = vaddq_s16(vandq_s8(vqtbl1q_s8(v78, xmmword_296B8F090), v41), v78);
                  v84 = vaddq_s16(vandq_s8(vqtbl1q_s8(v77, xmmword_296B8F090), v41), v77);
                  v85 = vaddq_s16(vdupq_lane_s16(*v82.i8, 3), v82);
                  v87 = *(v265[0] + v49);
                  v86 = *(v265[0] + v49 + 16);
                  v89 = *(v52 + v49);
                  v88 = *(v52 + v49 + 16);
                  v90 = vzip1q_s8(v89, v87);
                  v91 = vzip2q_s8(v89, v87);
                  v92 = vzip1q_s8(v88, v86);
                  v93 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v68.i8, 3), v68), vaddq_s16(vdupq_lane_s16(*v67.i8, 3), v67));
                  v94 = vzip2q_s8(v88, v86);
                  v95 = vaddq_s16(vshlq_n_s32(v90, 0x10uLL), v90);
                  v96 = vaddq_s16(vshlq_n_s32(v91, 0x10uLL), v91);
                  v97 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v66.i8, 3), v66), vaddq_s16(vdupq_lane_s16(*v65.i8, 3), v65));
                  v98 = vaddq_s16(vshlq_n_s32(v92, 0x10uLL), v92);
                  v99 = vaddq_s16(vshlq_n_s32(v94, 0x10uLL), v94);
                  v100 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v84.i8, 3), v84), vaddq_s16(vdupq_lane_s16(*v83.i8, 3), v83));
                  v101 = vaddq_s16(vandq_s8(vqtbl1q_s8(v99, xmmword_296B8F090), v41), v99);
                  v102 = vaddq_s16(vandq_s8(vqtbl1q_s8(v98, xmmword_296B8F090), v41), v98);
                  v103 = vaddq_s16(vandq_s8(vqtbl1q_s8(v96, xmmword_296B8F090), v41), v96);
                  v104 = vaddq_s16(v97, v93);
                  v105 = vaddq_s16(vandq_s8(vqtbl1q_s8(v95, xmmword_296B8F090), v41), v95);
                  v106 = v104.u16[7];
                  v40 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v105.i8, 3), v105), vaddq_s16(vdupq_lane_s16(*v103.i8, 3), v103));
                  v39 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v102.i8, 3), v102), vaddq_s16(vdupq_lane_s16(*v101.i8, 3), v101)), v40);
                  v47 += v106;
                  v46 += vaddq_s16(vaddq_s16(v85, vaddq_s16(vdupq_lane_s16(*&v81, 3), v81)), v100).u16[7];
                  v45 += v39.u16[7];
                  result = (v49 + 64);
                  v49 += 32;
                }

                while (result <= v37);
                v48 = v37 & 0xFFFFFFE0;
              }

              else
              {
                v45 = 0;
                v46 = 0;
                v47 = 0;
                v48 = 0;
              }

              if ((v48 | 8) <= v37)
              {
                result = (v266 + v265[0]);
                do
                {
                  v39.i64[0] = *(v279[0] + v48);
                  v40.i64[0] = *(v280 + v279[0] + v48);
                  v108 = vzip1q_s8(v40, v39);
                  v109 = vaddq_s16(vshlq_n_s32(v108, 0x10uLL), v108);
                  v110 = vextq_s8(v109, v109, 0xCuLL);
                  v111 = vaddq_s16(v110, v109);
                  v112 = v111.u16[3];
                  v113 = v111.u16[7] + v47;
                  v111.i64[0] = *(v272[0] + v48);
                  v110.i64[0] = *(v273 + v272[0] + v48);
                  v114 = vzip1q_s8(v110, v111);
                  v115 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                  v116 = vextq_s8(v115, v115, 0xCuLL);
                  v117 = vaddq_s16(v116, v115);
                  v47 = v113 + v112;
                  v118 = v117.u16[3];
                  v117.i64[0] = *(v265[0] + v48);
                  v46 += v117.u16[7] + v118;
                  v116.i64[0] = *(result + v48);
                  v119 = vzip1q_s8(v116, v117);
                  v120 = vaddq_s16(vshlq_n_s32(v119, 0x10uLL), v119);
                  v40 = vextq_s8(v120, v120, 0xCuLL);
                  v39 = vaddq_s16(v40, v120);
                  v45 += v39.u16[7] + v39.u16[3];
                  v107 = v48 + 8;
                  v121 = v48 + 16;
                  v48 += 8;
                }

                while (v121 <= v37);
              }

              else
              {
                v107 = v48;
              }

              v122 = v37 - v107;
              if (v37 > v107)
              {
                v123 = (v107 + v279[0] + v280);
                v124 = (v279[0] + v107);
                result = (v107 + v272[0] + v273);
                v125 = (v272[0] + v107);
                v126 = (v107 + v265[0] + v266);
                v127 = (v265[0] + v107);
                do
                {
                  v129 = *v124++;
                  v128 = v129;
                  v130 = *v123++;
                  v131 = v130 | (v128 << 8);
                  v133 = *v125++;
                  v132 = v133;
                  v47 += v131;
                  v134 = *result;
                  result = (result + 1);
                  v135 = v134 | (v132 << 8);
                  v137 = *v127++;
                  v136 = v137;
                  v46 += v135;
                  v138 = *v126++;
                  v45 += v138 | (v136 << 8);
                  --v122;
                }

                while (v122);
                v107 = v37;
              }

              if (v107 + 32 <= v38)
              {
                v141 = v280 + v279[0];
                v142 = v273 + v272[0];
                v143 = v266 + v265[0];
                result = a11;
                do
                {
                  v145 = *(v42 + v107);
                  v144 = *(v42 + v107 + 16);
                  v147 = *(v141 + v107);
                  v146 = *(v141 + v107 + 16);
                  v148 = vzip2q_s8(v147, v145);
                  v149 = vzip2q_s8(v146, v144);
                  v150 = vzip1q_s8(v146, v144);
                  v151 = vzip1q_s8(v147, v145);
                  v152 = vaddq_s16(vshlq_n_s32(v148, 0x10uLL), v148);
                  v153 = vaddq_s16(vshlq_n_s32(v149, 0x10uLL), v149);
                  v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                  v155 = vaddq_s16(vshlq_n_s32(v151, 0x10uLL), v151);
                  v156 = vaddq_s16(vandq_s8(vqtbl1q_s8(v155, xmmword_296B8F090), v41), v155);
                  v157 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v41), v154);
                  v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v41), v153);
                  v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v152, xmmword_296B8F090), v41), v152);
                  v160 = vdupq_n_s16(v47);
                  v162 = *(v43 + v107);
                  v161 = *(v43 + v107 + 16);
                  v164 = *(v142 + v107);
                  v163 = *(v142 + v107 + 16);
                  v165 = vzip2q_s8(v164, v162);
                  v166 = vzip2q_s8(v163, v161);
                  v167 = vzip1q_s8(v163, v161);
                  v168 = vzip1q_s8(v164, v162);
                  v169 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159);
                  v170 = vaddq_s16(vshlq_n_s32(v165, 0x10uLL), v165);
                  v171 = vaddq_s16(vshlq_n_s32(v166, 0x10uLL), v166);
                  v172 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158);
                  v173 = vaddq_s16(vshlq_n_s32(v167, 0x10uLL), v167);
                  v174 = vaddq_s16(vshlq_n_s32(v168, 0x10uLL), v168);
                  v175 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v157.i8, 3), xmmword_296B8F0A0), v157);
                  v176 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v156.i8, 3), xmmword_296B8F0A0), v156);
                  v177 = vaddq_s16(vandq_s8(vqtbl1q_s8(v174, xmmword_296B8F090), v41), v174);
                  v178 = vaddq_s16(vandq_s8(vqtbl1q_s8(v173, xmmword_296B8F090), v41), v173);
                  v179 = vaddq_s16(vandq_s8(vqtbl1q_s8(v171, xmmword_296B8F090), v41), v171);
                  v180 = vaddq_s16(vandq_s8(vqtbl1q_s8(v170, xmmword_296B8F090), v41), v170);
                  v181 = vdupq_laneq_s16(v176, 7);
                  v182 = vdupq_laneq_s16(v175, 7);
                  v183 = vaddq_s16(v175, v160);
                  v184 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v179.i8, 3), xmmword_296B8F0A0), v179);
                  v185 = vaddq_s16(v176, v160);
                  v186 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v178.i8, 3), xmmword_296B8F0A0), v178);
                  v187 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v177.i8, 3), xmmword_296B8F0A0), v177);
                  v188 = vdupq_laneq_s16(v187, 7);
                  v189 = vdupq_laneq_s16(v186, 7);
                  v190 = vdupq_n_s16(v46);
                  v191 = vaddq_s16(v186, v190);
                  v193 = *(v44 + v107);
                  v192 = *(v44 + v107 + 16);
                  v194 = vaddq_s16(v187, v190);
                  v196 = *(v143 + v107);
                  v195 = *(v143 + v107 + 16);
                  v197 = vzip2q_s8(v196, v193);
                  v198 = vaddq_s16(v182, v172);
                  v199 = vzip2q_s8(v195, v192);
                  v200 = vzip1q_s8(v195, v192);
                  v201 = vzip1q_s8(v196, v193);
                  v202 = vaddq_s16(v181, v169);
                  v203 = vaddq_s16(vshlq_n_s32(v197, 0x10uLL), v197);
                  v204 = vaddq_s16(vshlq_n_s32(v199, 0x10uLL), v199);
                  v205 = vaddq_s16(vshlq_n_s32(v200, 0x10uLL), v200);
                  v206 = vaddq_s16(v189, v184);
                  v207 = vaddq_s16(vshlq_n_s32(v201, 0x10uLL), v201);
                  v208 = vaddq_s16(v188, vaddq_s16(vandq_s8(vdupq_lane_s16(*v180.i8, 3), xmmword_296B8F0A0), v180));
                  v209 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_296B8F090), v41), v207);
                  v210 = vdupq_laneq_s16(v202, 7);
                  v211 = vaddq_s16(vandq_s8(vqtbl1q_s8(v205, xmmword_296B8F090), v41), v205);
                  v212 = vaddq_s16(vandq_s8(vqtbl1q_s8(v203, xmmword_296B8F090), v41), v203);
                  v213 = vaddq_s16(v198, v160);
                  v214 = vaddq_s16(vandq_s8(vqtbl1q_s8(v204, xmmword_296B8F090), v41), v204);
                  v215 = vaddq_s16(v202, v160);
                  v216 = vdupq_laneq_s16(v208, 7);
                  v217 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v211.i8, 3), xmmword_296B8F0A0), v211);
                  v218 = vaddq_s16(v206, v190);
                  v219 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v209.i8, 3), xmmword_296B8F0A0), v209);
                  v220 = vaddq_s16(v208, v190);
                  v221 = vaddq_s16(vdupq_laneq_s16(v217, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v214.i8, 3), xmmword_296B8F0A0), v214));
                  v222 = vaddq_s16(vdupq_laneq_s16(v219, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v212.i8, 3), xmmword_296B8F0A0), v212));
                  v223 = vdupq_n_s16(v45);
                  v224 = vdupq_laneq_s16(v222, 7);
                  v225 = vaddq_s16(v221, v223);
                  v226 = vaddq_s16(v222, v223);
                  v227 = vaddq_s16(v217, v223);
                  v228 = vaddq_s16(v219, v223);
                  v290.val[0] = vzip2q_s16(v215, v220);
                  v229 = vaddq_s16(v213, v210);
                  v290.val[1] = vzip2q_s16(v264, v226);
                  v289.val[0] = vzip1q_s16(v215, v220);
                  v289.val[1] = vzip1q_s16(v264, v226);
                  v291.val[0] = vzip2q_s16(v185, v194);
                  v291.val[1] = vzip2q_s16(v264, v228);
                  v230 = vaddq_s16(v183, v210);
                  v140 = result + 128;
                  v231 = result + 32;
                  v232 = result + 48;
                  v233 = result + 64;
                  v234 = result + 80;
                  v235 = vaddq_s16(v218, v216);
                  v236 = result + 96;
                  v237 = result + 112;
                  v292.val[0] = vzip1q_s16(v185, v194);
                  v292.val[1] = vzip1q_s16(v264, v228);
                  v39 = vaddq_s16(v191, v216);
                  vst2q_s16(result, v292);
                  v238 = result + 16;
                  v40 = vaddq_s16(v225, v224);
                  vst2q_s16(v238, v291);
                  v47 = v229.u16[7];
                  vst2q_s16(v231, v289);
                  v46 = v235.u16[7];
                  vst2q_s16(v232, v290);
                  v45 = v40.u16[7];
                  v239 = vaddq_s16(v227, v224);
                  v288.val[0] = vzip2q_s16(v229, v235);
                  v288.val[1] = vzip2q_s16(v264, v40);
                  v139 = v107 + 32;
                  v240 = v107 + 64;
                  v289.val[0] = vzip1q_s16(v230, v39);
                  v107 += 32;
                  v289.val[1] = vzip1q_s16(v264, v239);
                  vst2q_s16(v233, v289);
                  v289.val[0] = vzip2q_s16(v230, v39);
                  v289.val[1] = vzip2q_s16(v264, v239);
                  vst2q_s16(v234, v289);
                  v286.val[0] = vzip1q_s16(v229, v235);
                  v286.val[1] = vzip1q_s16(v264, v40);
                  vst2q_s16(v236, v286);
                  vst2q_s16(v237, v288);
                  result = v140;
                }

                while (v240 <= v38);
              }

              else
              {
                v139 = v107;
                v140 = a11;
              }

              if (v139 + 8 <= v38)
              {
                v243 = v280 + v42;
                v244 = v273 + v43;
                result = (v266 + v44);
                do
                {
                  v39.i64[0] = *(v42 + v139);
                  v40.i64[0] = *(v243 + v139);
                  v245 = vzip1q_s8(v40, v39);
                  v246 = vaddq_s16(vshlq_n_s32(v245, 0x10uLL), v245);
                  v247 = vaddq_s16(vandq_s8(vqtbl1q_s8(v246, xmmword_296B8F090), v41), v246);
                  v248 = vandq_s8(vdupq_lane_s16(*v247.i8, 3), xmmword_296B8F0A0);
                  v249 = vdupq_n_s16(v47);
                  v250 = vaddq_s16(vaddq_s16(v247, v249), v248);
                  v47 = v250.u16[7];
                  v248.i64[0] = *(v43 + v139);
                  v249.i64[0] = *(v244 + v139);
                  v251 = vzip1q_s8(v249, v248);
                  v252 = vaddq_s16(vshlq_n_s32(v251, 0x10uLL), v251);
                  v253 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_296B8F090), v41), v252);
                  v254 = vandq_s8(vdupq_lane_s16(*v253.i8, 3), xmmword_296B8F0A0);
                  v255 = vdupq_n_s16(v46);
                  v256 = vaddq_s16(vaddq_s16(v253, v255), v254);
                  v46 = v256.u16[7];
                  v254.i64[0] = *(v44 + v139);
                  v255.i64[0] = *(result + v139);
                  v257 = vzip1q_s8(v255, v254);
                  v258 = vaddq_s16(vshlq_n_s32(v257, 0x10uLL), v257);
                  v259 = vaddq_s16(vandq_s8(vqtbl1q_s8(v258, xmmword_296B8F090), v41), v258);
                  v260 = vaddq_s16(vaddq_s16(v259, vdupq_n_s16(v45)), vandq_s8(vdupq_lane_s16(*v259.i8, 3), xmmword_296B8F0A0));
                  v45 = v260.u16[7];
                  v287.val[0] = vzip1q_s16(v250, v256);
                  v287.val[1] = vzip1q_s16(v264, v260);
                  v242 = v140 + 32;
                  vst2q_s16(v140, v287);
                  v261 = v140 + 16;
                  v39 = vzip2q_s16(v250, v256);
                  v40 = vzip2q_s16(v264, v260);
                  vst2q_s16(v261, *v39.i8);
                  v241 = v139 + 8;
                  v262 = v139 + 16;
                  v139 += 8;
                  v140 = v242;
                }

                while (v262 <= v38);
              }

              else
              {
                v241 = v139;
                v242 = v140;
              }

              if (v241 < v38)
              {
                do
                {
                  v47 += *(v279[0] + v241 + v280) | (*(v279[0] + v241) << 8);
                  v46 += *(v272[0] + v241 + v273) | (*(v272[0] + v241) << 8);
                  LOWORD(v263) = v47;
                  WORD1(v263) = v22;
                  WORD2(v263) = v46;
                  v45 += *(v265[0] + v241 + v266) | (*(v265[0] + v241) << 8);
                  HIWORD(v263) = v45;
                  *v242 = v263;
                  v242 += 4;
                  ++v241;
                }

                while (v38 != v241);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v34 += a10;
      }

      while (v34 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, double **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v280 = 3;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v278 = v20.i32[0];
    v276 = v19;
    v274[1] = result;
    v277 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v275 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v279 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v274);
    v23 = *a5;
    if (*(*a5 + 24))
    {
      v22 = *v23;
      *&v22 = *v23;
    }

    else
    {
      LODWORD(v22) = 2143289344;
    }

    v247 = *&v22;
    v273 = 3;
    v24 = *(a6 + 8);
    v25 = a3[3];
    v271 = v25.i32[0];
    v269 = v24;
    v267[1] = v17;
    v270 = a3[6].i32[1] + v25.i32[1] * v18;
    v26 = a3[7].u32[1];
    v268 = vmin_u32(vmls_s32(*(*(*&v24[5] + 8 * v26) + 16), v24[6], v25), v24[6]).u32[0];
    v272 = v26;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v267);
    v266 = 3;
    v27 = *(a7 + 8);
    v28 = a3[3];
    v264 = v28.i32[0];
    v262 = v27;
    v260[1] = v17;
    v263 = a3[6].i32[1] + v28.i32[1] * v18;
    v29 = a3[7].u32[1];
    v261 = vmin_u32(vmls_s32(*(*(*&v27[5] + 8 * v29) + 16), v27[6], v28), v27[6]).u32[0];
    v265 = v29;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v260);
    v30 = a3[6].u32[1];
    if (a3[7].u32[0] + v30 < v18)
    {
      v32 = a3[3].i32[1] * *(a2 + 60);
      v33 = a3[5].u32[1];
      v34 = v33 + a9;
      v259 = vdupq_lane_s32(v247, 0);
      do
      {
        v277 = v32 + v30;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v274);
        v270 = v32 + v30;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v267);
        v263 = v32 + v30;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v260);
        v39 = 0uLL;
        v40 = v259;
        v41 = v274[0];
        if (v274[0])
        {
          v42 = v267[0];
          if (v267[0])
          {
            v43 = v260[0];
            if (v260[0])
            {
              if (v33 >= 0x20)
              {
                v53 = v274[0] + 2 * v275;
                v54 = v275 + v274[0];
                v55 = v267[0] + 2 * v268;
                v56 = v268 + v267[0];
                v57 = v260[0] + 2 * v261;
                v58 = v261 + v260[0];
                v47.i64[0] = 0;
                v59 = 32;
                v46.i64[0] = 0;
                v45.i64[0] = 0;
                v48 = xmmword_296B8F050;
                v49 = xmmword_296B8F0B0;
                v51 = xmmword_296B8F0D0;
                v50 = xmmword_296B8F070;
                v52 = xmmword_296B8F030;
                do
                {
                  v255 = *v45.i8;
                  v282.val[1] = *(v274[0] + v59 - 32);
                  v284.val[1] = *(v274[0] + v59 - 16);
                  v282.val[0] = *(v53 + v59 - 32);
                  v284.val[0] = *(v53 + v59 - 16);
                  v293.val[1] = vqtbl2q_s8(v282, v48);
                  v61 = *(v54 + v59 - 32);
                  v60 = *(v54 + v59 - 16);
                  v293.val[0] = vqtbl1q_s8(v61, v49);
                  v296.val[1] = vqtbl2q_s8(v284, v48);
                  v296.val[0] = vqtbl1q_s8(v60, v49);
                  v293.val[0] = vqtbl2q_s8(v293, xmmword_296B8F020);
                  v293.val[1] = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v296.val[1] = vqtbl2q_s8(v284, xmmword_296B8F000);
                  v296.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0C0);
                  v298.val[1] = vqtbl2q_s8(v282, v50);
                  v298.val[0] = vqtbl1q_s8(v61, v51);
                  v296.val[0] = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v296.val[1] = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v298.val[1] = vqtbl2q_s8(v282, xmmword_296B8F000);
                  v298.val[0] = vqtbl1q_s8(v61, xmmword_296B8F0C0);
                  v282.val[1] = vqtbl2q_s8(v282, v52);
                  v282.val[0] = vqtbl1q_s8(v61, xmmword_296B8F0E0);
                  v62 = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v298.val[0] = vqtbl2q_s8(v282, xmmword_296B8F020);
                  v282.val[1] = vqtbl2q_s8(v284, v50);
                  v282.val[0] = vqtbl1q_s8(v60, v51);
                  v284.val[1] = vqtbl2q_s8(v284, v52);
                  v284.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0E0);
                  v298.val[1] = vqtbl2q_s8(v282, xmmword_296B8F020);
                  v63 = vqtbl2q_s8(v284, xmmword_296B8F020);
                  v250 = vaddq_s32(vshlq_n_s64(v293.val[0], 0x20uLL), v293.val[0]);
                  v282.val[0] = vaddq_s32(vshlq_n_s64(v293.val[1], 0x20uLL), v293.val[1]);
                  v293.val[0] = vaddq_s32(vshlq_n_s64(v296.val[0], 0x20uLL), v296.val[0]);
                  v296.val[0] = vaddq_s32(vshlq_n_s64(v296.val[1], 0x20uLL), v296.val[1]);
                  v293.val[1] = vaddq_s32(vshlq_n_s64(v62, 0x20uLL), v62);
                  v284.val[1] = vaddq_s32(vshlq_n_s64(v298.val[0], 0x20uLL), v298.val[0]);
                  v64 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                  v65 = vaddq_s32(vshlq_n_s64(v298.val[1], 0x20uLL), v298.val[1]);
                  v300.val[1] = *(v267[0] + v59 - 32);
                  v304.val[1] = *(v267[0] + v59 - 16);
                  v66 = *(v56 + v59 - 32);
                  v298.val[0] = *(v56 + v59 - 16);
                  v300.val[0] = *(v55 + v59 - 32);
                  v304.val[0] = *(v55 + v59 - 16);
                  v302.val[1] = vqtbl2q_s8(v300, v48);
                  v302.val[0] = vqtbl1q_s8(v66, v49);
                  v67 = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v302.val[1] = vqtbl2q_s8(v304, v48);
                  v302.val[0] = vqtbl1q_s8(v298.val[0], v49);
                  v68 = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v302.val[1] = vqtbl2q_s8(v304, xmmword_296B8F000);
                  v302.val[0] = vqtbl1q_s8(v298.val[0], xmmword_296B8F0C0);
                  v69 = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v289.val[1] = vqtbl2q_s8(v300, xmmword_296B8F070);
                  v302.val[1] = vdupq_lane_s32(*v293.val[0].i8, 1);
                  v289.val[0] = vqtbl1q_s8(v66, xmmword_296B8F0D0);
                  v289.val[0] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v70 = vqtbl2q_s8(v300, xmmword_296B8F000);
                  v289.val[1] = vqtbl1q_s8(v66, xmmword_296B8F0C0);
                  v302.val[0] = vdupq_lane_s32(*v282.val[0].i8, 1);
                  v289.val[1] = vqtbl2q_s8(*(&v289 + 16), xmmword_296B8F020);
                  v300.val[1] = vqtbl2q_s8(v300, xmmword_296B8F030);
                  v300.val[0] = vqtbl1q_s8(v66, xmmword_296B8F0E0);
                  v71 = vqtbl2q_s8(v300, xmmword_296B8F020);
                  v300.val[0] = vdupq_lane_s32(*v250.i8, 1);
                  v290.val[1] = vqtbl2q_s8(v304, xmmword_296B8F070);
                  v290.val[0] = vqtbl1q_s8(v298.val[0], xmmword_296B8F0D0);
                  v290.val[0] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v304.val[1] = vqtbl2q_s8(v304, xmmword_296B8F030);
                  v300.val[0].i64[0] = 0;
                  v304.val[0] = vqtbl1q_s8(v298.val[0], xmmword_296B8F0E0);
                  v304.val[0] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v298.val[0] = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                  v302.val[0].i64[0] = 0;
                  v300.val[1] = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
                  v72 = vaddq_s32(vshlq_n_s64(v69, 0x20uLL), v69);
                  v302.val[1].i64[0] = 0;
                  v73 = vaddq_s32(vshlq_n_s64(v289.val[0], 0x20uLL), v289.val[0]);
                  v74 = vaddq_s32(vshlq_n_s64(v71, 0x20uLL), v71);
                  v304.val[0] = vaddq_s32(vshlq_n_s64(v304.val[0], 0x20uLL), v304.val[0]);
                  v75 = vaddq_s32(vdupq_lane_s32(*v293.val[1].i8, 1), v293.val[1]);
                  v76 = vaddq_s32(vshlq_n_s64(v290.val[0], 0x20uLL), v290.val[0]);
                  v293.val[1] = vaddq_s32(vdupq_lane_s32(*v65.i8, 1), v65);
                  v77 = vaddq_s32(vshlq_n_s64(v289.val[1], 0x20uLL), v289.val[1]);
                  v289.val[1] = vdupq_lane_s32(*v72.i8, 1);
                  v290.val[1] = vdupq_lane_s32(*v300.val[1].i8, 1);
                  v78 = vdupq_lane_s32(*v298.val[0].i8, 1);
                  v78.i64[0] = 0;
                  v290.val[1].i64[0] = 0;
                  v289.val[1].i64[0] = 0;
                  v293.val[0] = vaddq_s32(v302.val[1], v293.val[0]);
                  v284.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v284.val[1].i8, 1), v284.val[1]), v75);
                  v284.val[1] = vaddq_s32(vdupq_lane_s32(*v73.i8, 1), v73);
                  v296.val[1] = vaddq_s32(vdupq_lane_s32(*v77.i8, 1), v77);
                  v48 = xmmword_296B8F050;
                  v79 = vaddq_s32(vdupq_lane_s32(*v76.i8, 1), v76);
                  v302.val[0] = vaddq_s32(v302.val[0], v282.val[0]);
                  v302.val[1] = vaddq_s32(vdupq_lane_s32(*v304.val[0].i8, 1), v304.val[0]);
                  v253 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v74.i8, 1), v74), v296.val[1]);
                  v304.val[0] = *(v260[0] + v59 - 32);
                  v80 = *(v260[0] + v59 - 16);
                  v298.val[1] = vaddq_s32(v300.val[0], v250);
                  v81 = *(v58 + v59 - 32);
                  v300.val[0] = *(v58 + v59 - 16);
                  v82 = *(v57 + v59 - 32);
                  v304.val[1] = *(v57 + v59 - 16);
                  v296.val[1] = vaddq_s32(v289.val[1], v72);
                  v287.val[1] = vqtbl2q_s8(v304, xmmword_296B8F050);
                  v287.val[0] = vqtbl1q_s8(v81, xmmword_296B8F0B0);
                  v83 = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v287.val[1] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F050);
                  v300.val[1] = vaddq_s32(v290.val[1], v300.val[1]);
                  v49 = xmmword_296B8F0B0;
                  v287.val[0] = vqtbl1q_s8(v300.val[0], xmmword_296B8F0B0);
                  v282.val[0] = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v287.val[1] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F000);
                  v287.val[0] = vqtbl1q_s8(v300.val[0], xmmword_296B8F0C0);
                  v287.val[0] = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v289.val[0] = vqtbl2q_s8(v304, xmmword_296B8F070);
                  v287.val[1] = vqtbl1q_s8(v81, xmmword_296B8F0D0);
                  v287.val[1] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v289.val[1] = vqtbl2q_s8(v304, xmmword_296B8F000);
                  v289.val[0] = vqtbl1q_s8(v81, xmmword_296B8F0C0);
                  v296.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v296.val[0].i8, 1), v296.val[0]), v298.val[1]);
                  v298.val[1] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v51 = xmmword_296B8F0D0;
                  v50 = xmmword_296B8F070;
                  v293.val[1] = vaddq_s32(vdupq_laneq_s32(v293.val[1], 3), v302.val[0]);
                  v304.val[0] = vqtbl2q_s8(v304, xmmword_296B8F030);
                  v84 = vqtbl1q_s8(v81, xmmword_296B8F0E0);
                  v52 = xmmword_296B8F030;
                  v302.val[0] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v304.val[0] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F070);
                  v85 = vqtbl1q_s8(v300.val[0], xmmword_296B8F0D0);
                  v86 = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v64.i8, 1), v64), 3), v293.val[0]);
                  v293.val[0] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v284.val[1] = vaddq_s32(v284.val[1], vaddq_s32(v78, v298.val[0]));
                  v304.val[0] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F030);
                  v87 = vqtbl1q_s8(v300.val[0], xmmword_296B8F0E0);
                  v298.val[0] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v88 = vaddq_s32(vdupq_laneq_s32(v79, 3), v300.val[1]);
                  v300.val[1] = vaddq_s32(vshlq_n_s64(v83, 0x20uLL), v83);
                  v304.val[0] = vaddq_s32(vshlq_n_s64(v287.val[0], 0x20uLL), v287.val[0]);
                  v298.val[1] = vaddq_s32(vshlq_n_s64(v298.val[1], 0x20uLL), v298.val[1]);
                  v293.val[0] = vaddq_s32(vshlq_n_s64(v293.val[0], 0x20uLL), v293.val[0]);
                  v89 = vaddq_s32(v86, v293.val[1]);
                  v293.val[1] = vaddq_s32(vshlq_n_s64(v298.val[0], 0x20uLL), v298.val[0]);
                  v284.val[0] = vaddq_s32(v296.val[0], v284.val[0]);
                  v296.val[0] = vaddq_s32(vshlq_n_s64(v302.val[0], 0x20uLL), v302.val[0]);
                  v90 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v302.val[1], 3), v296.val[1]), v88);
                  v296.val[1] = vaddq_s32(vshlq_n_s64(v287.val[1], 0x20uLL), v287.val[1]);
                  v91 = vdupq_lane_s32(*v304.val[0].i8, 1);
                  v282.val[1] = vaddq_s32(v284.val[1], v253);
                  v282.val[0] = vaddq_s32(vshlq_n_s64(v282.val[0], 0x20uLL), v282.val[0]);
                  v284.val[1] = vdupq_lane_s32(*v282.val[0].i8, 1);
                  v91.i64[0] = 0;
                  v92 = vdupq_lane_s32(*v300.val[1].i8, 1);
                  v284.val[1].i64[0] = 0;
                  v92.i64[0] = 0;
                  v47 = vaddq_s32(vaddq_s32(v89, v284.val[0]), vdupq_lane_s32(*v47.i8, 0));
                  v38 = vaddq_s32(vdupq_lane_s32(*v296.val[0].i8, 1), v296.val[0]);
                  v46 = vaddq_s32(vaddq_s32(v90, v282.val[1]), vdupq_lane_s32(*v46.i8, 0));
                  v37 = vaddq_s32(v38, vaddq_s32(vdupq_lane_s32(*v298.val[1].i8, 1), v298.val[1]));
                  v47.i32[0] = v47.i32[3];
                  v36 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v296.val[1].i8, 1), v296.val[1]), vaddq_s32(v92, v300.val[1])), v37);
                  v35 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v293.val[1].i8, 1), v293.val[1]), 3), vaddq_s32(v91, v304.val[0])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v293.val[0].i8, 1), v293.val[0]), 3), vaddq_s32(v284.val[1], v282.val[0]))), v36);
                  v46.i32[0] = v46.i32[3];
                  v45 = vaddq_s32(v35, vdupq_lane_s32(v255, 0));
                  v59 += 32;
                  v45.i32[0] = v45.i32[3];
                }

                while (v59 <= v33);
                v44 = v33 & 0xFFFFFFE0;
                v40 = v259;
                v39 = 0uLL;
              }

              else
              {
                v44 = 0;
                v45.i64[0] = 0;
                v46.i64[0] = 0;
                v47.i64[0] = 0;
                v48 = xmmword_296B8F050;
                v49 = xmmword_296B8F0B0;
                v51 = xmmword_296B8F0D0;
                v50 = xmmword_296B8F070;
                v52 = xmmword_296B8F030;
              }

              v93 = xmmword_296B8F020;
              v94 = xmmword_296B8F0E0;
              if ((v44 | 8) <= v33)
              {
                do
                {
                  v35.i64[0] = *(v274[0] + v44);
                  v36.i64[0] = *(v275 + v274[0] + v44);
                  v37.i64[0] = *(v274[0] + 2 * v275 + v44);
                  v96 = vzip1q_s8(v39, v36);
                  v97 = vzip1q_s8(v37, v35);
                  v98 = vzip1q_s8(v96, v97);
                  v99 = vzip2q_s8(v96, v97);
                  v100 = vaddq_s32(vshlq_n_s64(v98, 0x20uLL), v98);
                  v101 = vaddq_s32(vshlq_n_s64(v99, 0x20uLL), v99);
                  v102 = vdupq_lane_s32(*v101.i8, 1);
                  v103 = vaddq_s32(v102, vaddq_s32(v101, vdupq_lane_s32(*v47.i8, 0)));
                  v103.i64[0] = *(v267[0] + v44);
                  v101.i64[0] = *(v268 + v267[0] + v44);
                  v104 = v103.i32[3] + vaddq_s32(vdupq_lane_s32(*&v100, 1), v100).i32[3];
                  v102.i64[0] = *(v267[0] + 2 * v268 + v44);
                  v105 = vzip1q_s8(v39, v101);
                  v106 = vzip1q_s8(v102, v103);
                  v107 = vzip1q_s8(v105, v106);
                  v108 = vzip2q_s8(v105, v106);
                  v47 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
                  v109 = vdupq_lane_s32(*v47.i8, 1);
                  v110 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                  v111 = vdupq_lane_s32(*v110.i8, 1);
                  v112 = vaddq_s32(v111, v110);
                  v46 = vaddq_s32(v109, vaddq_s32(v47, vdupq_lane_s32(*v46.i8, 0)));
                  v47.i32[0] = v104;
                  v109.i64[0] = *(v260[0] + v44);
                  v112.i64[0] = *(v261 + v260[0] + v44);
                  v46.i32[0] = v46.i32[3] + v112.i32[3];
                  v111.i64[0] = *(v260[0] + 2 * v261 + v44);
                  v113 = vzip1q_s8(v39, v112);
                  v114 = vzip1q_s8(v111, v109);
                  v115 = vzip1q_s8(v113, v114);
                  v116 = vzip2q_s8(v113, v114);
                  v35 = vaddq_s32(vshlq_n_s64(v116, 0x20uLL), v116);
                  v36 = vdupq_lane_s32(*v35.i8, 1);
                  v117 = vaddq_s32(vshlq_n_s64(v115, 0x20uLL), v115);
                  v37 = vaddq_s32(vdupq_lane_s32(*v117.i8, 1), v117);
                  v45 = vaddq_s32(v36, vaddq_s32(v35, vdupq_lane_s32(*v45.i8, 0)));
                  v45.i32[0] = v45.i32[3] + v37.i32[3];
                  v95 = v44 + 8;
                  v118 = v44 + 16;
                  v44 += 8;
                }

                while (v118 <= v33);
              }

              else
              {
                v95 = v44;
              }

              if (v95 <= v33)
              {
                v119 = v33;
              }

              else
              {
                v119 = v95;
              }

              if (v119 + 32 <= v34)
              {
                v122 = v274[0] + 2 * v275;
                v123 = v275 + v274[0];
                v124 = v267[0] + 2 * v268;
                v125 = v268 + v267[0];
                v126 = v260[0] + 2 * v261;
                v127 = v261 + v260[0];
                v128 = a11;
                do
                {
                  v294.val[1] = *(v41 + v119);
                  v294.val[0] = *(v122 + v119);
                  v258.val[0] = *(v122 + v119 + 16);
                  v258.val[1] = *(v41 + v119 + 16);
                  v285.val[1] = vqtbl2q_s8(v294, v50);
                  v129 = *(v123 + v119);
                  v257 = *(v123 + v119 + 16);
                  v285.val[0] = vqtbl1q_s8(v129, v51);
                  v285.val[0] = vqtbl2q_s8(v285, v93);
                  v297.val[1] = vqtbl2q_s8(v294, v52);
                  v297.val[0] = vqtbl1q_s8(v129, v94);
                  v299.val[1] = vqtbl2q_s8(v294, v48);
                  v299.val[0] = vqtbl1q_s8(v129, v49);
                  v285.val[1] = vqtbl2q_s8(v297, v93);
                  v130 = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v297.val[0] = vaddq_s32(vshlq_n_s64(v285.val[1], 0x20uLL), v285.val[1]);
                  v297.val[1] = vaddq_s32(vshlq_n_s64(v130, 0x20uLL), v130);
                  v299.val[0] = vdupq_lane_s32(*v297.val[1].i8, 1);
                  v131 = vdupq_lane_s32(*v47.i8, 0);
                  v132 = vdupq_lane_s32(*v297.val[0].i8, 1);
                  v133 = vaddq_s32(vshlq_n_s64(v285.val[0], 0x20uLL), v285.val[0]);
                  v134 = *(v42 + v119);
                  v283.val[1] = *(v42 + v119 + 16);
                  v135 = vdupq_lane_s32(*v133.i8, 1);
                  v299.val[1] = *(v124 + v119);
                  v283.val[0] = *(v124 + v119 + 16);
                  v305.val[1] = vqtbl2q_s8(*(&v299 + 16), v50);
                  v135.i64[0] = 0;
                  v136 = *(v125 + v119);
                  v256 = *(v125 + v119 + 16);
                  v305.val[0] = vqtbl1q_s8(v136, v51);
                  v132.i64[0] = 0;
                  v305.val[0] = vqtbl2q_s8(v305, xmmword_296B8F020);
                  v137 = vqtbl2q_s8(*(&v299 + 16), v52);
                  v305.val[1] = vqtbl1q_s8(v136, v94);
                  v305.val[1] = vqtbl2q_s8(*(&v305 + 16), xmmword_296B8F020);
                  v299.val[0].i64[0] = 0;
                  v286.val[1] = vqtbl2q_s8(*(&v299 + 16), v48);
                  v286.val[0] = vqtbl1q_s8(v136, v49);
                  v286.val[0] = vqtbl2q_s8(v286, xmmword_296B8F020);
                  v138 = vaddq_s32(v299.val[0], v297.val[1]);
                  v297.val[1] = vaddq_s32(vshlq_n_s64(v305.val[0], 0x20uLL), v305.val[0]);
                  v299.val[0] = vaddq_s32(vshlq_n_s64(v286.val[0], 0x20uLL), v286.val[0]);
                  v286.val[0] = vdupq_lane_s32(*v299.val[0].i8, 1);
                  v139 = vaddq_s32(v132, v297.val[0]);
                  v305.val[0] = vaddq_s32(vshlq_n_s64(v305.val[1], 0x20uLL), v305.val[1]);
                  v297.val[0] = vdupq_lane_s32(*v297.val[1].i8, 1);
                  v297.val[0].i64[0] = 0;
                  v286.val[1] = vaddq_s32(v135, v133);
                  v286.val[0].i64[0] = 0;
                  v140 = vaddq_s32(v297.val[0], v297.val[1]);
                  v141 = vdupq_lane_s32(*v46.i8, 0);
                  v303.val[1] = *(v43 + v119);
                  v305.val[1] = *(v127 + v119);
                  v254 = *(v127 + v119 + 16);
                  v142 = vaddq_s32(vdupq_laneq_s32(v286.val[1], 3), v138);
                  v303.val[0] = *(v126 + v119);
                  v291.val[1] = vqtbl2q_s8(v303, xmmword_296B8F070);
                  v291.val[0] = vqtbl1q_s8(v305.val[1], xmmword_296B8F0D0);
                  v291.val[0] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v143 = vqtbl2q_s8(v303, xmmword_296B8F050);
                  v286.val[0] = vaddq_s32(vdupq_laneq_s32(v140, 3), vaddq_s32(v286.val[0], v299.val[0]));
                  v291.val[1] = vqtbl1q_s8(v305.val[1], xmmword_296B8F0B0);
                  v144 = vqtbl2q_s8(*(&v291 + 16), xmmword_296B8F020);
                  v145 = vdupq_lane_s32(*v305.val[0].i8, 1);
                  v291.val[0] = vaddq_s32(vshlq_n_s64(v291.val[0], 0x20uLL), v291.val[0]);
                  v146 = vaddq_s32(vshlq_n_s64(v144, 0x20uLL), v144);
                  v291.val[1] = vdupq_lane_s32(*v146.i8, 1);
                  v147 = vdupq_lane_s32(*v291.val[0].i8, 1);
                  v251 = *(v126 + v119 + 16);
                  v252 = *(v43 + v119 + 16);
                  v147.i64[0] = 0;
                  v291.val[1].i64[0] = 0;
                  v286.val[1] = vaddq_s32(v286.val[1], v131);
                  v148 = vaddq_s32(v140, v141);
                  v291.val[0] = vaddq_s32(v147, v291.val[0]);
                  v149 = vaddq_s32(vdupq_laneq_s32(v291.val[0], 3), vaddq_s32(v291.val[1], v146));
                  v297.val[1] = vdupq_lane_s32(*v45.i8, 0);
                  v291.val[0] = vaddq_s32(v291.val[0], v297.val[1]);
                  v291.val[1] = vzip2q_s32(v286.val[1], v148);
                  v281.val[0] = vzip1q_s32(v286.val[1], v148);
                  v150 = vzip2q_s32(v259, v291.val[0]);
                  v281.val[1] = vzip1q_s32(v259, v291.val[0]);
                  v151 = v128 + 16;
                  v152 = v128 + 24;
                  v153 = v128 + 32;
                  v154 = v128;
                  v248 = v131;
                  v285.val[1] = vaddq_s32(v142, v131);
                  vst2q_f32(v154, v281);
                  v154 += 8;
                  v281.val[0] = vaddq_s32(v286.val[0], v141);
                  v281.val[1] = vaddq_s32(v149, v297.val[1]);
                  vst2q_f32(v154, *(&v291 + 16));
                  v291.val[0] = vzip1q_s32(v285.val[1], v281.val[0]);
                  v291.val[1] = vzip1q_s32(v259, v281.val[1]);
                  vst2q_f32(v151, v291);
                  v145.i64[0] = 0;
                  v291.val[0] = vaddq_s32(v145, v305.val[0]);
                  v288.val[1] = vqtbl2q_s8(v303, xmmword_296B8F030);
                  v291.val[1] = vdupq_laneq_s32(v142, 3);
                  v288.val[0] = vqtbl1q_s8(v305.val[1], xmmword_296B8F0E0);
                  v305.val[0] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v305.val[0] = vaddq_s32(vshlq_n_s64(v305.val[0], 0x20uLL), v305.val[0]);
                  v288.val[0] = vdupq_laneq_s32(v286.val[0], 3);
                  v155 = vdupq_lane_s32(*v305.val[0].i8, 1);
                  v155.i64[0] = 0;
                  v156 = vaddq_s32(v155, v305.val[0]);
                  v305.val[0] = vaddq_s32(vaddq_s32(v139, v131), v291.val[1]);
                  v286.val[0] = vdupq_laneq_s32(v149, 3);
                  v288.val[1] = vzip2q_s32(v285.val[1], v281.val[0]);
                  v157 = vzip2q_s32(v259, v281.val[1]);
                  v286.val[1] = vaddq_s32(vaddq_s32(v291.val[0], v141), v288.val[0]);
                  vst2q_f32(v152, *(&v288 + 16));
                  v288.val[1] = vaddq_s32(vaddq_s32(v156, v297.val[1]), v286.val[0]);
                  v281.val[0] = vzip1q_s32(v305.val[0], v286.val[1]);
                  v281.val[1] = vzip1q_s32(v259, v288.val[1]);
                  vst2q_f32(v153, v281);
                  v281.val[1] = vqtbl2q_s8(v258, xmmword_296B8F070);
                  v281.val[0] = vqtbl1q_s8(v257, xmmword_296B8F0D0);
                  v281.val[0] = vqtbl2q_s8(v281, xmmword_296B8F020);
                  v292.val[1] = vqtbl2q_s8(v258, xmmword_296B8F030);
                  v292.val[0] = vqtbl1q_s8(v257, xmmword_296B8F0E0);
                  v281.val[1] = vqtbl2q_s8(v292, xmmword_296B8F020);
                  v294.val[0] = vqtbl2q_s8(v294, xmmword_296B8F000);
                  v292.val[1] = vqtbl1q_s8(v129, xmmword_296B8F0C0);
                  v158 = vqtbl2q_s8(v258, xmmword_296B8F050);
                  v294.val[1] = vqtbl1q_s8(v257, xmmword_296B8F0B0);
                  v285.val[1] = vqtbl2q_s8(*(&v294 + 16), xmmword_296B8F020);
                  v292.val[1] = vqtbl2q_s8(v294, xmmword_296B8F020);
                  v294.val[1] = vaddq_s32(vshlq_n_s64(v281.val[0], 0x20uLL), v281.val[0]);
                  v281.val[0] = vaddq_s32(vshlq_n_s64(v281.val[1], 0x20uLL), v281.val[1]);
                  v281.val[1] = vaddq_s32(vshlq_n_s64(v292.val[1], 0x20uLL), v292.val[1]);
                  v292.val[1] = vdupq_lane_s32(*v281.val[1].f32, 1);
                  v292.val[1].i64[0] = 0;
                  v285.val[1] = vaddq_s32(vshlq_n_s64(v285.val[1], 0x20uLL), v285.val[1]);
                  v281.val[1] = vaddq_s32(v292.val[1], v281.val[1]);
                  v292.val[1] = vdupq_lane_s32(*v285.val[1].i8, 1);
                  v292.val[1].i64[0] = 0;
                  v159 = vaddq_s32(v292.val[1], v285.val[1]);
                  v285.val[1] = vdupq_lane_s32(*v281.val[0].f32, 1);
                  v285.val[1].i64[0] = 0;
                  v294.val[0] = vaddq_s32(v285.val[1], v281.val[0]);
                  v292.val[1] = vqtbl2q_s8(v283, xmmword_296B8F070);
                  v292.val[0] = vqtbl1q_s8(v256, xmmword_296B8F0D0);
                  v160 = vqtbl2q_s8(v292, xmmword_296B8F020);
                  v281.val[0] = vaddq_s32(vdupq_laneq_s32(v139, 3), v281.val[1]);
                  v161 = vqtbl2q_s8(*(&v299 + 16), xmmword_296B8F000);
                  v299.val[1] = vqtbl1q_s8(v136, xmmword_296B8F0C0);
                  v281.val[1] = vqtbl2q_s8(*(&v299 + 16), xmmword_296B8F020);
                  v281.val[1] = vaddq_s32(vshlq_n_s64(v281.val[1], 0x20uLL), v281.val[1]);
                  v299.val[1] = vaddq_s32(v281.val[0], v291.val[1]);
                  v49 = xmmword_296B8F0B0;
                  v281.val[0] = vdupq_lane_s32(*v281.val[1].f32, 1);
                  v281.val[0].i64[0] = 0;
                  v285.val[1] = vdupq_laneq_s32(v291.val[0], 3);
                  v48 = xmmword_296B8F050;
                  v281.val[0] = vaddq_s32(v285.val[1], vaddq_s32(v281.val[0], v281.val[1]));
                  v301.val[1] = vqtbl2q_s8(v303, xmmword_296B8F000);
                  v301.val[0] = vqtbl1q_s8(v305.val[1], xmmword_296B8F0C0);
                  v162 = v128 + 40;
                  v163 = v128 + 48;
                  v164 = v128 + 56;
                  v165 = v128 + 64;
                  v166 = v128 + 72;
                  v167 = v128 + 80;
                  v281.val[1] = vqtbl2q_s8(v301, xmmword_296B8F020);
                  v281.val[1] = vaddq_s32(vshlq_n_s64(v281.val[1], 0x20uLL), v281.val[1]);
                  v285.val[1] = vdupq_lane_s32(*v294.val[1].i8, 1);
                  v285.val[1].i64[0] = 0;
                  v281.val[0] = vaddq_s32(v281.val[0], v288.val[0]);
                  v292.val[1] = vdupq_lane_s32(*v281.val[1].f32, 1);
                  v292.val[1].i64[0] = 0;
                  v281.val[1] = vaddq_s32(v292.val[1], v281.val[1]);
                  v292.val[1] = vaddq_s32(v299.val[1], v131);
                  v301.val[1] = vaddq_s32(v281.val[0], v141);
                  v281.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v156, 3), v281.val[1]), v286.val[0]);
                  v168 = vaddq_s32(v281.val[1], v297.val[1]);
                  v303.val[0] = vzip2q_s32(v305.val[0], v286.val[1]);
                  v303.val[1] = vzip2q_s32(v259, v288.val[1]);
                  v50 = xmmword_296B8F070;
                  vst2q_f32(v162, v303);
                  v303.val[0] = vzip1q_s32(v292.val[1], v301.val[1]);
                  v303.val[1] = vzip1q_s32(v259, v168);
                  vst2q_f32(v163, v303);
                  v249 = v283;
                  v303.val[1] = vqtbl2q_s8(v283, xmmword_296B8F030);
                  v303.val[0] = vqtbl1q_s8(v256, xmmword_296B8F0E0);
                  v301.val[0] = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v303.val[1] = vqtbl2q_s8(v283, xmmword_296B8F050);
                  v303.val[0] = vqtbl1q_s8(v256, xmmword_296B8F0B0);
                  v285.val[1] = vaddq_s32(v285.val[1], v294.val[1]);
                  v294.val[1] = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v303.val[1] = vaddq_s32(vshlq_n_s64(v160, 0x20uLL), v160);
                  v51 = xmmword_296B8F0D0;
                  v301.val[0] = vaddq_s32(vshlq_n_s64(v301.val[0], 0x20uLL), v301.val[0]);
                  v294.val[1] = vaddq_s32(vshlq_n_s64(v294.val[1], 0x20uLL), v294.val[1]);
                  v303.val[0] = vdupq_lane_s32(*v294.val[1].i8, 1);
                  v305.val[0] = vaddq_s32(vdupq_laneq_s32(v285.val[1], 3), v159);
                  v169 = vdupq_lane_s32(*v303.val[1].i8, 1);
                  v169.i64[0] = 0;
                  v303.val[0].i64[0] = 0;
                  v303.val[0] = vaddq_s32(v303.val[0], v294.val[1]);
                  v303.val[1] = vaddq_s32(v169, v303.val[1]);
                  v170 = v251;
                  v283.val[0] = v252;
                  v171 = vqtbl2q_s8(v283, xmmword_296B8F070);
                  v299.val[1] = vdupq_laneq_s32(v299.val[1], 3);
                  v294.val[1] = vqtbl1q_s8(v254, xmmword_296B8F0D0);
                  v294.val[1] = vqtbl2q_s8(*(&v294 + 16), xmmword_296B8F020);
                  v172 = vaddq_s32(vshlq_n_s64(v294.val[1], 0x20uLL), v294.val[1]);
                  v294.val[1] = vdupq_laneq_s32(v281.val[0], 3);
                  v281.val[0] = vdupq_lane_s32(*v172.i8, 1);
                  v281.val[0].i64[0] = 0;
                  v281.val[0] = vaddq_s32(v281.val[0], v172);
                  v285.val[1] = vaddq_s32(vaddq_s32(v285.val[1], v248), v299.val[1]);
                  v38 = vdupq_laneq_s32(v281.val[1], 3);
                  v286.val[0] = vzip2q_s32(v292.val[1], v301.val[1]);
                  v286.val[1] = vzip2q_s32(v259, v168);
                  v281.val[1] = vaddq_s32(vaddq_s32(v303.val[1], v141), v294.val[1]);
                  vst2q_f32(v164, v286);
                  v292.val[1] = vaddq_s32(vaddq_s32(v281.val[0], v297.val[1]), v38);
                  v301.val[1] = vzip1q_s32(v285.val[1], v281.val[1]);
                  v173 = vzip1q_s32(v259, v292.val[1]);
                  vst2q_f32(v165, *(&v301 + 16));
                  v301.val[1] = vaddq_s32(vdupq_laneq_s32(v303.val[1], 3), v303.val[0]);
                  v303.val[0] = vqtbl2q_s8(v283, xmmword_296B8F050);
                  v286.val[1] = v251;
                  v288.val[0] = v252;
                  v303.val[1] = vdupq_lane_s32(*v301.val[0].i8, 1);
                  v174 = vqtbl1q_s8(v254, xmmword_296B8F0B0);
                  v175 = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v176 = vaddq_s32(vshlq_n_s64(v175, 0x20uLL), v175);
                  v303.val[0] = vdupq_lane_s32(*v176.i8, 1);
                  v177 = v128 + 88;
                  v303.val[0].i64[0] = 0;
                  v178 = vaddq_s32(v303.val[0], v176);
                  v303.val[0] = vdupq_laneq_s32(v305.val[0], 3);
                  v179 = v128 + 96;
                  v303.val[1].i64[0] = 0;
                  v305.val[0] = vaddq_s32(vaddq_s32(v305.val[0], v248), v299.val[1]);
                  v281.val[0] = vaddq_s32(vdupq_laneq_s32(v281.val[0], 3), v178);
                  v180 = vaddq_s32(vaddq_s32(v301.val[1], v141), v294.val[1]);
                  v305.val[1] = vzip2q_s32(v285.val[1], v281.val[1]);
                  v181 = vzip2q_s32(v259, v292.val[1]);
                  v281.val[1] = vaddq_s32(vaddq_s32(v281.val[0], v297.val[1]), v38);
                  vst2q_f32(v166, *(&v305 + 16));
                  v305.val[1] = vzip1q_s32(v305.val[0], v180);
                  v182 = vzip1q_s32(v259, v281.val[1]);
                  vst2q_f32(v167, *(&v305 + 16));
                  v285.val[1] = vaddq_s32(v303.val[1], v301.val[0]);
                  v292.val[1] = vdupq_laneq_s32(v301.val[1], 3);
                  v301.val[1] = vqtbl2q_s8(*(&v286 + 16), xmmword_296B8F030);
                  v301.val[0] = vqtbl1q_s8(v254, xmmword_296B8F0E0);
                  v301.val[0] = vqtbl2q_s8(v301, xmmword_296B8F020);
                  v301.val[0] = vaddq_s32(vshlq_n_s64(v301.val[0], 0x20uLL), v301.val[0]);
                  v301.val[1] = vdupq_lane_s32(*v301.val[0].i8, 1);
                  v301.val[1].i64[0] = 0;
                  v301.val[0] = vaddq_s32(v301.val[1], v301.val[0]);
                  v303.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v294.val[0], v303.val[0]), v248), v299.val[1]);
                  v281.val[0] = vdupq_laneq_s32(v281.val[0], 3);
                  v305.val[0] = vzip2q_s32(v305.val[0], v180);
                  v305.val[1] = vzip2q_s32(v259, v281.val[1]);
                  v301.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v285.val[1], v292.val[1]), v141), v294.val[1]);
                  v281.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v301.val[0], v281.val[0]), v297.val[1]), v38);
                  vst2q_f32(v177, v305);
                  v305.val[0] = vzip1q_s32(v303.val[1], v301.val[1]);
                  v305.val[1] = vzip1q_s32(v259, v281.val[1]);
                  vst2q_f32(v179, v305);
                  v183 = v258.val[0];
                  v283.val[0] = v258.val[1];
                  v283.val[1] = vqtbl2q_s8(v283, xmmword_296B8F000);
                  v283.val[0] = vqtbl1q_s8(v257, xmmword_296B8F0C0);
                  v283.val[0] = vqtbl2q_s8(v283, xmmword_296B8F020);
                  v283.val[0] = vaddq_s32(vshlq_n_s64(v283.val[0], 0x20uLL), v283.val[0]);
                  v283.val[1] = vdupq_lane_s32(*v283.val[0].i8, 1);
                  v283.val[1].i64[0] = 0;
                  v283.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v294.val[0], 3), vaddq_s32(v283.val[1], v283.val[0])), v303.val[0]);
                  v184 = v249.val[0];
                  v303.val[0] = v249.val[1];
                  v303.val[0] = vqtbl2q_s8(v303, xmmword_296B8F000);
                  v185 = vqtbl1q_s8(v256, xmmword_296B8F0C0);
                  v283.val[1] = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v283.val[1] = vaddq_s32(vshlq_n_s64(v283.val[1], 0x20uLL), v283.val[1]);
                  v294.val[0] = vdupq_lane_s32(*v283.val[1].i8, 1);
                  v186 = vaddq_s32(v283.val[0], v248);
                  v52 = xmmword_296B8F030;
                  v294.val[0].i64[0] = 0;
                  v283.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v285.val[1], 3), vaddq_s32(v294.val[0], v283.val[1])), v292.val[1]);
                  v294.val[0] = vqtbl2q_s8(*(&v286 + 16), xmmword_296B8F000);
                  v94 = xmmword_296B8F0E0;
                  v40 = v259;
                  v292.val[1] = vqtbl1q_s8(v254, xmmword_296B8F0C0);
                  v283.val[1] = vqtbl2q_s8(v294, xmmword_296B8F020);
                  v93 = xmmword_296B8F020;
                  v35 = vaddq_s32(v186, v299.val[1]);
                  v283.val[1] = vaddq_s32(vshlq_n_s64(v283.val[1], 0x20uLL), v283.val[1]);
                  v285.val[1] = vdupq_lane_s32(*v283.val[1].i8, 1);
                  v285.val[1].i64[0] = 0;
                  v187 = vaddq_s32(v283.val[0], v141);
                  v36 = vaddq_s32(vdupq_laneq_s32(v301.val[0], 3), vaddq_s32(v285.val[1], v283.val[1]));
                  v37 = vaddq_s32(v187, v294.val[1]);
                  v45 = vaddq_s32(vaddq_s32(vaddq_s32(v36, v281.val[0]), v297.val[1]), v38);
                  v285.val[0] = vzip2q_s32(v303.val[1], v301.val[1]);
                  v285.val[1] = vzip2q_s32(v259, v281.val[1]);
                  v188 = v128 + 104;
                  v189 = v128 + 112;
                  v190 = v128 + 120;
                  vst2q_f32(v188, v285);
                  v281.val[1] = vzip1q_s32(v35, v37);
                  v191 = vzip1q_s32(v259, v45);
                  vst2q_f32(v189, *(&v281 + 16));
                  v46 = vzip2q_s32(v35, v37);
                  v47 = vzip2q_s32(v259, v45);
                  vst2q_f32(v190, *v46.i8);
                  v121 = v128 + 128;
                  v120 = v119 + 32;
                  v192 = v119 + 64;
                  v47.i32[0] = v35.i32[3];
                  v119 += 32;
                  v46.i32[0] = v37.i32[3];
                  v128 += 128;
                  v45.i32[0] = v45.i32[3];
                }

                while (v192 <= v34);
              }

              else
              {
                v120 = v119;
                v121 = a11;
              }

              if (v120 + 8 <= v34)
              {
                v194 = v41 + 2 * v275;
                v195 = v275 + v41;
                v196 = v42 + 2 * v268;
                v197 = v268 + v42;
                v198 = v43 + 2 * v261;
                v199 = v261 + v43;
                do
                {
                  v35.i64[0] = *(v41 + v120);
                  v36.i64[0] = *(v195 + v120);
                  v37.i64[0] = *(v194 + v120);
                  v200 = vzip1q_s8(0, v36);
                  v201 = vzip1q_s8(v37, v35);
                  v202 = vzip1q_s8(v200, v201);
                  v203 = vzip2q_s8(v200, v201);
                  v204 = vshlq_n_s64(v203, 0x20uLL);
                  v205 = vshlq_n_s64(v202, 0x20uLL);
                  v206 = vaddq_s32(v205, v202);
                  v207 = vdupq_lane_s32(*v47.i8, 0);
                  v208 = vaddq_s32(v204, v203);
                  v204.i64[0] = *(v42 + v120);
                  v205.i64[0] = *(v197 + v120);
                  v209 = vdupq_lane_s32(*v208.i8, 1);
                  v93.i64[0] = *(v196 + v120);
                  v210 = vzip1q_s8(0, v205);
                  v211 = vzip1q_s8(v93, v204);
                  v212 = vdupq_lane_s32(*v206.i8, 1);
                  v213 = vzip1q_s8(v210, v211);
                  v214 = vzip2q_s8(v210, v211);
                  v212.i64[0] = 0;
                  v215 = vaddq_s32(vshlq_n_s64(v213, 0x20uLL), v213);
                  v216 = vaddq_s32(vshlq_n_s64(v214, 0x20uLL), v214);
                  v217 = vdupq_lane_s32(*v216.i8, 1);
                  v209.i64[0] = 0;
                  v218 = vdupq_lane_s32(*v215.i8, 1);
                  v218.i64[0] = 0;
                  v217.i64[0] = 0;
                  v219 = vdupq_lane_s32(*v46.i8, 0);
                  v38.i64[0] = *(v43 + v120);
                  v220 = vaddq_s32(v212, v206);
                  v221 = vaddq_s32(v209, vaddq_s32(v208, v207));
                  v209.i64[0] = *(v199 + v120);
                  v212.i64[0] = *(v198 + v120);
                  v222 = vaddq_s32(v218, v215);
                  v223 = vzip1q_s8(0, v209);
                  v224 = vzip1q_s8(v212, v38);
                  v225 = vzip1q_s8(v223, v224);
                  v38 = vdupq_laneq_s32(v220, 3);
                  v226 = vzip2q_s8(v223, v224);
                  v227 = vaddq_s32(vshlq_n_s64(v225, 0x20uLL), v225);
                  v228 = vaddq_s32(vshlq_n_s64(v226, 0x20uLL), v226);
                  v229 = vaddq_s32(v220, v207);
                  v230 = vdupq_lane_s32(*v228.i8, 1);
                  v231 = vdupq_lane_s32(*v227.i8, 1);
                  v232 = vdupq_laneq_s32(v222, 3);
                  v233 = vaddq_s32(v217, vaddq_s32(v216, v219));
                  v231.i64[0] = 0;
                  v230.i64[0] = 0;
                  v234 = vaddq_s32(v222, v219);
                  v235 = vaddq_s32(v231, v227);
                  v93 = vdupq_laneq_s32(v235, 3);
                  v236 = vdupq_lane_s32(*v45.i8, 0);
                  v237 = vaddq_s32(v221, v38);
                  v238 = vaddq_s32(v235, v236);
                  v295.val[0] = vzip2q_s32(v229, v234);
                  v46 = vzip1q_s32(v229, v234);
                  v239 = vaddq_s32(v233, v232);
                  v47 = vzip1q_s32(v40, v238);
                  v193 = v121 + 32;
                  v240 = v121 + 16;
                  v241 = v121 + 24;
                  v45 = vaddq_s32(vaddq_s32(v230, vaddq_s32(v228, v236)), v93);
                  vst2q_f32(v121, *v46.i8);
                  v242 = v121 + 8;
                  v47.i32[0] = v237.i32[3];
                  v295.val[1] = vzip2q_s32(v40, v238);
                  vst2q_f32(v242, v295);
                  v46.i32[0] = v239.i32[3];
                  v37 = vzip1q_s32(v237, v239);
                  v243 = vzip1q_s32(v40, v45);
                  vst2q_f32(v240, *v37.i8);
                  v35 = vzip2q_s32(v237, v239);
                  v36 = vzip2q_s32(v40, v45);
                  vst2q_f32(v241, *v35.i8);
                  v45.i32[0] = v45.i32[3];
                  result = v120 + 8;
                  v244 = v120 + 16;
                  v120 += 8;
                  v121 = v193;
                }

                while (v244 <= v34);
              }

              else
              {
                result = v120;
                v193 = v121;
              }

              if (result < v34)
              {
                v245 = v46.i32[0];
                do
                {
                  LODWORD(v246) = ((*(v274[0] + result) << 24) | (*(v274[0] + result + v275) << 16) | (*(v274[0] + result + 2 * v275) << 8)) + v47.i32[0];
                  DWORD1(v246) = v247.i32[0];
                  DWORD2(v246) = ((*(v267[0] + result) << 24) | (*(v267[0] + result + v268) << 16) | (*(v267[0] + result + 2 * v268) << 8)) + v245;
                  HIDWORD(v246) = ((*(v260[0] + result) << 24) | (*(v260[0] + result + v261) << 16) | (*(v260[0] + result + 2 * v261) << 8)) + v45.i32[0];
                  *v193 = v246;
                  v193 += 4;
                  ++result;
                }

                while (v34 != result);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v30 += a10;
      }

      while (v30 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      v12 = **a4;
    }

    v265 = 4;
    v19 = *(a5 + 8);
    v20 = a3[3];
    v263 = v20.i32[0];
    v261 = v19;
    v259[1] = result;
    v262 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v260 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v264 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v259);
    v258 = 4;
    v22 = *(a6 + 8);
    v23 = a3[3];
    v256 = v23.i32[0];
    v254 = v22;
    v252[1] = v17;
    v255 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v253 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v257 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v252);
    v251 = 4;
    v25 = *(a7 + 8);
    v26 = a3[3];
    v249 = v26.i32[0];
    v247 = v25;
    v245[1] = v17;
    v248 = a3[6].i32[1] + v26.i32[1] * v18;
    v27 = a3[7].u32[1];
    v246 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v250 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v245);
    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v18)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a9;
      v33 = 0x1800000010;
      v34 = 0x1000000018;
      v244 = vdupq_n_s32(v12);
      v227 = v12;
      do
      {
        v262 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v259);
        v255 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v252);
        v248 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v245);
        v44 = v244;
        v45 = v259[0];
        if (v259[0])
        {
          v46 = v252[0];
          if (v252[0])
          {
            v47 = v245[0];
            if (v245[0])
            {
              v225 = v34;
              v226 = v33;
              v48 = 0;
              if (v31 >= 0x20)
              {
                v55 = v260 + v259[0];
                v56 = v260 + v259[0] + 2 * v260;
                v57 = v259[0] + 2 * v260;
                v58 = v253 + v252[0];
                v59 = v253 + v252[0] + 2 * v253;
                v60 = v252[0] + 2 * v253;
                result = v246 + v245[0];
                v61 = v246 + v245[0] + 2 * v246;
                v62 = v245[0] + 2 * v246;
                v50 = 0uLL;
                v63 = 32;
                v64 = xmmword_296B8F040;
                v51 = xmmword_296B8F030;
                v53 = xmmword_296B8F050;
                v52 = xmmword_296B8F080;
                v54 = xmmword_296B8F060;
                do
                {
                  v242.val[0] = v50;
                  v271.val[1] = *(v259[0] + v63 - 32);
                  v280.val[1] = *(v259[0] + v63 - 16);
                  v282.val[1] = *(v55 + v63 - 32);
                  v284.val[1] = *(v55 + v63 - 16);
                  v271.val[0] = *(v57 + v63 - 32);
                  v280.val[0] = *(v57 + v63 - 16);
                  v282.val[0] = *(v56 + v63 - 32);
                  v284.val[0] = *(v56 + v63 - 16);
                  v266.val[1] = vqtbl2q_s8(v271, v51);
                  v266.val[0] = vqtbl2q_s8(v282, v64);
                  v266.val[0] = vqtbl2q_s8(v266, xmmword_296B8F020);
                  v65 = vqtbl2q_s8(v271, xmmword_296B8F000);
                  v266.val[1] = vqtbl2q_s8(v282, xmmword_296B8F010);
                  v266.val[1] = vqtbl2q_s8(*(&v266 + 16), xmmword_296B8F020);
                  v268.val[1] = vqtbl2q_s8(v271, xmmword_296B8F070);
                  v268.val[0] = vqtbl2q_s8(v282, v52);
                  v268.val[0] = vqtbl2q_s8(v268, xmmword_296B8F020);
                  v271.val[1] = vqtbl2q_s8(v271, v53);
                  v271.val[0] = vqtbl2q_s8(v282, v54);
                  v271.val[0] = vqtbl2q_s8(v271, xmmword_296B8F020);
                  v66 = vqtbl2q_s8(v280, xmmword_296B8F000);
                  v271.val[1] = vqtbl2q_s8(v284, xmmword_296B8F010);
                  v271.val[1] = vqtbl2q_s8(*(&v271 + 16), xmmword_296B8F020);
                  v282.val[1] = vqtbl2q_s8(v280, v53);
                  v282.val[0] = vqtbl2q_s8(v284, v54);
                  v67 = vqtbl2q_s8(v282, xmmword_296B8F020);
                  v282.val[1] = vqtbl2q_s8(v280, xmmword_296B8F070);
                  v282.val[0] = vqtbl2q_s8(v284, v52);
                  v68 = vqtbl2q_s8(v282, xmmword_296B8F020);
                  v280.val[1] = vqtbl2q_s8(v280, v51);
                  v280.val[0] = vqtbl2q_s8(v284, v64);
                  v268.val[1] = vqtbl2q_s8(v280, xmmword_296B8F020);
                  v287.val[1] = *(v252[0] + v63 - 32);
                  v288.val[1] = *(v252[0] + v63 - 16);
                  v291.val[1] = *(v58 + v63 - 32);
                  v273.val[1] = *(v58 + v63 - 16);
                  v287.val[0] = *(v60 + v63 - 32);
                  v288.val[0] = *(v60 + v63 - 16);
                  v240 = vaddq_s32(vshlq_n_s64(v266.val[0], 0x20uLL), v266.val[0]);
                  v291.val[0] = *(v59 + v63 - 32);
                  v273.val[0] = *(v59 + v63 - 16);
                  v275.val[1] = vqtbl2q_s8(v287, xmmword_296B8F030);
                  v275.val[0] = vqtbl2q_s8(v291, xmmword_296B8F040);
                  v237 = vaddq_s32(vshlq_n_s64(v266.val[1], 0x20uLL), v266.val[1]);
                  v69 = vqtbl2q_s8(v275, xmmword_296B8F020);
                  v275.val[1] = vqtbl2q_s8(v287, xmmword_296B8F000);
                  v275.val[0] = vqtbl2q_s8(v291, xmmword_296B8F010);
                  v266.val[1] = v53;
                  v70 = vqtbl2q_s8(v275, xmmword_296B8F020);
                  v275.val[1] = vqtbl2q_s8(v287, xmmword_296B8F070);
                  v275.val[0] = vqtbl2q_s8(v291, xmmword_296B8F080);
                  v284.val[1] = vqtbl2q_s8(v275, xmmword_296B8F020);
                  v287.val[0] = vqtbl2q_s8(v287, v266.val[1]);
                  v71 = vqtbl2q_s8(v291, v54);
                  v287.val[0] = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v271.val[0] = vaddq_s32(vshlq_n_s64(v271.val[0], 0x20uLL), v271.val[0]);
                  v291.val[1] = vqtbl2q_s8(v288, xmmword_296B8F000);
                  v291.val[0] = vqtbl2q_s8(v273, xmmword_296B8F010);
                  v284.val[0] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v291.val[1] = vqtbl2q_s8(v288, v266.val[1]);
                  v291.val[0] = vqtbl2q_s8(v273, v54);
                  v271.val[1] = vaddq_s32(vshlq_n_s64(v271.val[1], 0x20uLL), v271.val[1]);
                  v282.val[1] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v291.val[1] = vqtbl2q_s8(v288, xmmword_296B8F070);
                  v291.val[0] = vqtbl2q_s8(v273, xmmword_296B8F080);
                  v291.val[0] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v288.val[0] = vqtbl2q_s8(v288, xmmword_296B8F030);
                  v72 = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                  v287.val[1] = vqtbl2q_s8(v273, xmmword_296B8F040);
                  v282.val[0] = vqtbl2q_s8(*(&v287 + 16), xmmword_296B8F020);
                  v73 = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
                  v74 = vaddq_s32(vshlq_n_s64(v268.val[1], 0x20uLL), v268.val[1]);
                  v268.val[1] = vaddq_s32(vshlq_n_s64(v69, 0x20uLL), v69);
                  v75 = vaddq_s32(vshlq_n_s64(v70, 0x20uLL), v70);
                  v76 = vaddq_s32(vshlq_n_s64(v284.val[1], 0x20uLL), v284.val[1]);
                  v273.val[0] = vaddq_s32(vshlq_n_s64(v287.val[0], 0x20uLL), v287.val[0]);
                  v280.val[1] = vaddq_s32(vshlq_n_s64(v284.val[0], 0x20uLL), v284.val[0]);
                  v280.val[0] = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v287.val[0] = vaddq_s32(vshlq_n_s64(v291.val[0], 0x20uLL), v291.val[0]);
                  v284.val[0] = vaddq_s32(vshlq_n_s64(v282.val[0], 0x20uLL), v282.val[0]);
                  *v282.val[0].i8 = vdup_lane_s32(*v280.val[0].i8, 1);
                  v282.val[1].i64[0] = vextq_s8(v280.val[0], v280.val[0], 8uLL).u64[0];
                  v232 = vaddq_s32(vdupq_lane_s32(*v73.i8, 1), v73);
                  v234 = vadd_s32(vadd_s32(vadd_s32(*v76.i8, *&vextq_s8(v76, v76, 8uLL)), vadd_s32(*v273.val[0].i8, *&vextq_s8(v273.val[0], v273.val[0], 8uLL))), vadd_s32(vadd_s32(*v268.val[1].i8, *&vextq_s8(v268.val[1], v268.val[1], 8uLL)), vadd_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL))));
                  v77 = vaddq_s32(vdupq_lane_s32(*v74.i8, 1), v74);
                  v291.val[1] = *(v245[0] + v63 - 32);
                  v78 = *(v245[0] + v63 - 16);
                  v275.val[1] = *(result + v63 - 32);
                  v273.val[1] = *(result + v63 - 16);
                  v79 = vaddq_s32(vdupq_lane_s32(*v287.val[0].i8, 1), v287.val[0]);
                  v291.val[0] = *(v62 + v63 - 32);
                  v288.val[1] = *(v62 + v63 - 16);
                  v275.val[0] = *(v61 + v63 - 32);
                  v273.val[0] = *(v61 + v63 - 16);
                  v287.val[1] = vaddq_s32(vdupq_lane_s32(*v284.val[0].i8, 1), v284.val[0]);
                  v284.val[1] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F000);
                  v284.val[0] = vqtbl2q_s8(v273, xmmword_296B8F010);
                  v287.val[0] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F030);
                  v80 = vqtbl2q_s8(v273, xmmword_296B8F040);
                  v277.val[1] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F050);
                  v277.val[0] = vqtbl2q_s8(v273, xmmword_296B8F060);
                  v288.val[1] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F070);
                  v288.val[0] = vqtbl2q_s8(v273, xmmword_296B8F080);
                  v273.val[1] = vqtbl2q_s8(v291, xmmword_296B8F050);
                  *v280.val[0].i8 = vadd_s32(vdup_lane_s32(*v280.val[1].i8, 1), *&vextq_s8(v280.val[1], v280.val[1], 8uLL));
                  v273.val[0] = vqtbl2q_s8(v275, xmmword_296B8F060);
                  v81 = vqtbl2q_s8(v291, xmmword_296B8F070);
                  v268.val[1] = vqtbl2q_s8(v275, xmmword_296B8F080);
                  v266.val[1] = vqtbl2q_s8(v291, xmmword_296B8F000);
                  v266.val[0] = vqtbl2q_s8(v275, xmmword_296B8F010);
                  v291.val[0] = vqtbl2q_s8(v291, xmmword_296B8F030);
                  v82 = vqtbl2q_s8(v275, xmmword_296B8F040);
                  v64 = xmmword_296B8F040;
                  v51 = xmmword_296B8F030;
                  v37 = vaddq_s32(vshlq_n_s64(v268.val[0], 0x20uLL), v268.val[0]);
                  *v37.i8 = vadd_s32(vadd_s32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), vadd_s32(*v271.val[0].i8, *&vextq_s8(v271.val[0], v271.val[0], 8uLL)));
                  v271.val[0] = vdupq_laneq_s32(v79, 3);
                  *v280.val[1].i8 = vadd_s32(*&vextq_s8(v271.val[0], v271.val[0], 8uLL), vadd_s32(*v282.val[0].i8, *v282.val[1].i8));
                  v271.val[0] = vdupq_laneq_s32(v287.val[1], 3);
                  *v280.val[0].i8 = vadd_s32(*&vextq_s8(v271.val[0], v271.val[0], 8uLL), *v280.val[0].i8);
                  v271.val[0] = vdupq_laneq_s32(v232, 3);
                  v40 = vextq_s8(v271.val[0], v271.val[0], 8uLL);
                  *v40.i8 = vadd_s32(*v40.i8, vadd_s32(vdup_lane_s32(*v72.i8, 1), *&vextq_s8(v72, v72, 8uLL)));
                  v83 = vdupq_laneq_s32(v77, 3);
                  v53 = xmmword_296B8F050;
                  v52 = xmmword_296B8F080;
                  *v271.val[1].i8 = vadd_s32(*&vextq_s8(v83, v83, 8uLL), vadd_s32(vdup_lane_s32(*v271.val[1].i8, 1), *&vextq_s8(v271.val[1], v271.val[1], 8uLL)));
                  v84 = vqtbl2q_s8(v284, xmmword_296B8F020);
                  v85 = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v50.i64[1] = v242.val[0].i64[1];
                  v282.val[0] = vqtbl2q_s8(v277, xmmword_296B8F020);
                  v54 = xmmword_296B8F060;
                  v282.val[1] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v284.val[0] = vqtbl2q_s8(v273, xmmword_296B8F020);
                  *v280.val[0].i8 = vadd_s32(*v280.val[0].i8, *v280.val[1].i8);
                  v268.val[1] = vqtbl2q_s8(*(&v268 + 16), xmmword_296B8F020);
                  v266.val[0] = vqtbl2q_s8(v266, xmmword_296B8F020);
                  v266.val[1] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v86 = vaddq_s32(vshlq_n_s64(v84, 0x20uLL), v84);
                  v87 = vaddq_s32(vshlq_n_s64(v85, 0x20uLL), v85);
                  v88 = vaddq_s32(vshlq_n_s64(v282.val[0], 0x20uLL), v282.val[0]);
                  v280.val[1] = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v282.val[0] = vaddq_s32(vshlq_n_s64(v284.val[0], 0x20uLL), v284.val[0]);
                  v268.val[1] = vaddq_s32(vshlq_n_s64(v268.val[1], 0x20uLL), v268.val[1]);
                  v266.val[0] = vaddq_s32(vshlq_n_s64(v266.val[0], 0x20uLL), v266.val[0]);
                  v266.val[1] = vaddq_s32(vshlq_n_s64(v266.val[1], 0x20uLL), v266.val[1]);
                  v41 = vaddq_s32(vdupq_lane_s32(*v87.i8, 1), v87);
                  v42 = vaddq_s32(vdupq_lane_s32(*v88.i8, 1), v88);
                  v43 = vaddq_s32(vdupq_lane_s32(*v280.val[1].i8, 1), v280.val[1]);
                  v266.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v266.val[1].i8, 1), v266.val[1]), vaddq_s32(vdupq_lane_s32(*v266.val[0].i8, 1), v266.val[0]));
                  v36 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v268.val[1].i8, 1), v268.val[1]), vaddq_s32(vdupq_lane_s32(*v282.val[0].i8, 1), v282.val[0]));
                  v39 = vaddq_s32(v41, vaddq_s32(vdupq_lane_s32(*v86.i8, 1), v86));
                  v38 = vaddq_s32(v39, vaddq_s32(v43, v42));
                  v35 = vaddq_s32(v38, vaddq_s32(v36, v266.val[0]));
                  *v36.i8 = vadd_s32(vadd_s32(*v271.val[1].i8, *v40.i8), vadd_s32(*v37.i8, vadd_s32(vadd_s32(*v240.i8, *&vextq_s8(v240, v240, 8uLL)), vadd_s32(*v237.i8, *&vextq_s8(v237, v237, 8uLL)))));
                  *v35.i8 = vzip2_s32(*v36.i8, vadd_s32(*v280.val[0].i8, v234));
                  *v50.i8 = vadd_s32(*v35.i8, *v242.val[0].i8);
                  v48 += v35.u32[3];
                  v63 += 32;
                }

                while (v63 <= v31);
                v49 = v31 & 0xFFFFFFE0;
                v44 = v244;
                v34 = v225;
                v33 = v226;
              }

              else
              {
                v49 = 0;
                v50.i64[0] = 0;
                v51 = xmmword_296B8F030;
                v53 = xmmword_296B8F050;
                v52 = xmmword_296B8F080;
                v54 = xmmword_296B8F060;
              }

              v89 = xmmword_296B8F020;
              v90 = xmmword_296B8F000;
              if ((v49 | 8) <= v31)
              {
                result = v252[0] + 2 * v253;
                do
                {
                  v35.i64[0] = *(v259[0] + v49);
                  v36.i64[0] = *(v260 + v259[0] + v49);
                  v37.i64[0] = *(v259[0] + 2 * v260 + v49);
                  v38.i64[0] = *(v260 + v259[0] + 2 * v260 + v49);
                  v92 = vzip1q_s8(v38, v36);
                  v93 = vzip1q_s8(v37, v35);
                  v94 = vzip1q_s8(v92, v93);
                  v95 = vzip2q_s8(v92, v93);
                  v96 = vshlq_n_s64(v95, 0x20uLL);
                  v97 = vshlq_n_s64(v94, 0x20uLL);
                  v98 = vaddq_s32(v97, v94);
                  v99 = vaddq_s32(v96, v95);
                  v96.i64[0] = *(v252[0] + v49);
                  v97.i64[0] = *(v253 + v252[0] + v49);
                  v39.i64[0] = *(result + v49);
                  v40.i64[0] = *(v253 + v252[0] + 2 * v253 + v49);
                  v100 = vzip1q_s8(v40, v97);
                  v101 = vzip1q_s8(v39, v96);
                  v102 = vzip1q_s8(v100, v101);
                  v103 = vzip2q_s8(v100, v101);
                  v40 = vshlq_n_s64(v102, 0x20uLL);
                  v39 = vaddq_s32(v40, v102);
                  v104 = vaddq_s32(vshlq_n_s64(v103, 0x20uLL), v103);
                  *v99.i8 = vadd_s32(vzip2_s32(vadd_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL)), vadd_s32(*v104.i8, *&vextq_s8(v104, v104, 8uLL))), *v50.i8);
                  v105 = vextq_s8(v39, v39, 8uLL);
                  v106 = vextq_s8(v98, v98, 8uLL);
                  *v50.i8 = vadd_s32(*v99.i8, vzip2_s32(vadd_s32(*v98.i8, *v106.i8), vadd_s32(*v39.i8, *v105.i8)));
                  v99.i64[0] = *(v245[0] + v49);
                  v105.i64[0] = *(v246 + v245[0] + v49);
                  v98.i64[0] = *(v245[0] + 2 * v246 + v49);
                  v106.i64[0] = *(v246 + v245[0] + 2 * v246 + v49);
                  v107 = vzip1q_s8(v106, v105);
                  v108 = vzip1q_s8(v98, v99);
                  v109 = vzip1q_s8(v107, v108);
                  v110 = vzip2q_s8(v107, v108);
                  v111 = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
                  v112 = vaddq_s32(vshlq_n_s64(v110, 0x20uLL), v110);
                  v36 = vdupq_lane_s32(*v112.i8, 1);
                  v38 = vdupq_lane_s32(*v111.i8, 1);
                  v37 = vaddq_s32(v38, v111);
                  v35 = vaddq_s32(v36, v112);
                  v48 += v35.i32[3] + v37.i32[3];
                  v91 = v49 + 8;
                  v113 = v49 + 16;
                  v49 += 8;
                }

                while (v113 <= v31);
              }

              else
              {
                v91 = v49;
              }

              if (v91 < v31)
              {
                do
                {
                  v35.i8[0] = *(v260 + v259[0] + v91);
                  v35.i8[4] = *(v252[0] + v91);
                  v36.i8[0] = *(v259[0] + v91);
                  v36.i8[4] = *(v253 + v252[0] + v91);
                  v114 = vshl_u32(vand_s8(*v36.i8, 0xFF000000FFLL), v34);
                  v115 = vorr_s8(v114, vshl_u32(vand_s8(*v35.i8, 0xFF000000FFLL), v33));
                  v114.i8[0] = *(v259[0] + 2 * v260 + v91);
                  v114.i8[4] = *(v252[0] + 2 * v253 + v91);
                  v116 = vand_s8(v114, 0xFF000000FFLL);
                  *v36.i8 = vorr_s8(vshl_n_s32(v116, 8uLL), v116);
                  *v35.i8 = vorr_s8(v115, *v36.i8);
                  *v50.i8 = vadd_s32(*v35.i8, *v50.i8);
                  v117 = *(v245[0] + 2 * v246 + v91);
                  result = (*(v245[0] + v91) << 24) | (*(v246 + v245[0] + v91) << 16) | (v117 << 8) | v117;
                  v48 += result;
                  ++v91;
                }

                while (v31 != v91);
                v91 = v31;
              }

              if (v91 + 32 <= v32)
              {
                v121 = v260 + v259[0];
                v122 = v260 + v259[0] + 2 * v260;
                v123 = v259[0] + 2 * v260;
                v124 = v253 + v252[0];
                v125 = v253 + v252[0] + 2 * v253;
                v126 = v252[0] + 2 * v253;
                result = v246 + v245[0];
                v127 = v246 + v245[0] + 2 * v246;
                v128 = v245[0] + 2 * v246;
                v120 = a11;
                v129 = xmmword_296B8F040;
                v131 = xmmword_296B8F070;
                v130 = xmmword_296B8F010;
                do
                {
                  v267.val[1] = *(v45 + v91);
                  v269.val[1] = *(v45 + v91 + 16);
                  v267.val[0] = *(v123 + v91);
                  v269.val[0] = *(v123 + v91 + 16);
                  v272.val[1] = vqtbl2q_s8(v267, v131);
                  v279.val[1] = *(v121 + v91);
                  v281.val[1] = *(v121 + v91 + 16);
                  v279.val[0] = *(v122 + v91);
                  v281.val[0] = *(v122 + v91 + 16);
                  v272.val[0] = vqtbl2q_s8(v279, v52);
                  v235.val[0] = vqtbl2q_s8(v279, v129);
                  v235.val[1] = vqtbl2q_s8(v267, v51);
                  v241.val[0] = vqtbl2q_s8(v281, v52);
                  v241.val[1] = vqtbl2q_s8(v269, v131);
                  v238 = vqtbl2q_s8(v281, v129);
                  v239 = vqtbl2q_s8(v269, v51);
                  v243.val[0] = vqtbl2q_s8(v281, v130);
                  v243.val[1] = vqtbl2q_s8(v269, v90);
                  v236.val[0] = vqtbl2q_s8(v281, v54);
                  v236.val[1] = vqtbl2q_s8(v269, v53);
                  v132 = vqtbl2q_s8(v272, v89);
                  v233.val[0] = vqtbl2q_s8(v279, v130);
                  v233.val[1] = vqtbl2q_s8(v267, v90);
                  v283.val[1] = vqtbl2q_s8(v267, v53);
                  v283.val[0] = vqtbl2q_s8(v279, v54);
                  v290.val[1] = *(v46 + v91);
                  v292.val[1] = *(v46 + v91 + 16);
                  v290.val[0] = *(v126 + v91);
                  v269.val[0] = vqtbl2q_s8(v290, v131);
                  v133 = vaddq_s32(vshlq_n_s64(v132, 0x20uLL), v132);
                  v276.val[1] = *(v124 + v91);
                  v278.val[1] = *(v124 + v91 + 16);
                  v276.val[0] = *(v125 + v91);
                  v267.val[0] = vdupq_lane_s32(*v133.i8, 1);
                  v267.val[1] = vqtbl2q_s8(v276, xmmword_296B8F080);
                  v267.val[1] = vqtbl2q_s8(*(&v267 + 16), xmmword_296B8F020);
                  v272.val[0] = vaddq_s32(vshlq_n_s64(v267.val[1], 0x20uLL), v267.val[1]);
                  v267.val[0].i64[0] = 0;
                  v286.val[1] = *(v47 + v91);
                  v228 = vaddq_s32(v267.val[0], v133);
                  v286.val[0] = *(v128 + v91);
                  v279.val[1] = *(result + v91);
                  v289.val[1] = *(result + v91 + 16);
                  v279.val[0] = *(v127 + v91);
                  v289.val[0] = *(v127 + v91 + 16);
                  v134 = vqtbl2q_s8(v286, xmmword_296B8F070);
                  v272.val[1] = vqtbl2q_s8(v279, xmmword_296B8F080);
                  v269.val[1] = vqtbl2q_s8(*(&v272 + 16), xmmword_296B8F020);
                  v269.val[1] = vaddq_s32(vshlq_n_s64(v269.val[1], 0x20uLL), v269.val[1]);
                  v272.val[1] = vdupq_lane_s32(*v272.val[0].i8, 1);
                  v272.val[1].i64[0] = 0;
                  v135 = vdupq_lane_s32(*v269.val[1].i8, 1);
                  v135.i64[0] = 0;
                  v136 = vaddq_s32(v272.val[1], v272.val[0]);
                  v137 = vaddq_s32(v135, v269.val[1]);
                  v292.val[0] = *(v126 + v91 + 16);
                  v278.val[0] = *(v125 + v91 + 16);
                  v231.val[0] = *(v128 + v91 + 16);
                  v231.val[1] = *(v47 + v91 + 16);
                  v138 = vdupq_lane_s32(*v50.i8, 0);
                  v50 = vdupq_lane_s32(*v50.i8, 1);
                  v269.val[1] = vaddq_s32(v228, v138);
                  v272.val[0] = vaddq_s32(v136, v50);
                  v139 = vdupq_n_s32(v48);
                  v272.val[1] = vaddq_s32(v137, v139);
                  v281.val[0] = vzip1q_s32(v244, v272.val[0]);
                  v281.val[1] = vzip1q_s32(v269.val[1], v272.val[1]);
                  v140 = v120;
                  vst2q_f32(v140, v281);
                  v140 += 8;
                  v281.val[0] = vzip2q_s32(v244, v272.val[0]);
                  v281.val[1] = vzip2q_s32(v269.val[1], v272.val[1]);
                  vst2q_f32(v140, v281);
                  v141 = vqtbl2q_s8(v292, xmmword_296B8F070);
                  v272.val[1] = vqtbl2q_s8(v278, xmmword_296B8F080);
                  v272.val[0] = vqtbl2q_s8(v292, xmmword_296B8F030);
                  v269.val[1] = vqtbl2q_s8(v278, xmmword_296B8F040);
                  v229 = vqtbl2q_s8(v278, xmmword_296B8F010);
                  v230 = vqtbl2q_s8(v292, xmmword_296B8F000);
                  v292.val[1] = vqtbl2q_s8(v292, xmmword_296B8F050);
                  v292.val[0] = vqtbl2q_s8(v278, xmmword_296B8F060);
                  v278.val[1] = vqtbl2q_s8(v290, xmmword_296B8F030);
                  v278.val[0] = vqtbl2q_s8(v276, xmmword_296B8F040);
                  v267.val[0] = vqtbl2q_s8(v290, xmmword_296B8F000);
                  v142 = vqtbl2q_s8(v276, xmmword_296B8F010);
                  v290.val[1] = vqtbl2q_s8(v290, xmmword_296B8F050);
                  v290.val[0] = vqtbl2q_s8(v276, xmmword_296B8F060);
                  v283.val[0] = vqtbl2q_s8(v283, xmmword_296B8F020);
                  v283.val[0] = vaddq_s32(vshlq_n_s64(v283.val[0], 0x20uLL), v283.val[0]);
                  v276.val[1] = vqtbl2q_s8(v286, xmmword_296B8F030);
                  v276.val[0] = vqtbl2q_s8(v279, xmmword_296B8F040);
                  v269.val[0] = vqtbl2q_s8(v286, xmmword_296B8F000);
                  v267.val[1] = vqtbl2q_s8(v279, xmmword_296B8F010);
                  v286.val[0] = vqtbl2q_s8(v286, xmmword_296B8F050);
                  v286.val[1] = vdupq_lane_s32(*v283.val[0].i8, 1);
                  v283.val[1] = vqtbl2q_s8(v279, xmmword_296B8F060);
                  v286.val[1].i64[0] = 0;
                  v279.val[0] = vaddq_s32(v286.val[1], v283.val[0]);
                  v279.val[1] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v279.val[1] = vaddq_s32(vshlq_n_s64(v279.val[1], 0x20uLL), v279.val[1]);
                  v283.val[0] = vdupq_lane_s32(*v279.val[1].i8, 1);
                  v283.val[0].i64[0] = 0;
                  v279.val[1] = vaddq_s32(v283.val[0], v279.val[1]);
                  v283.val[0] = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F020);
                  v283.val[0] = vaddq_s32(vshlq_n_s64(v283.val[0], 0x20uLL), v283.val[0]);
                  v279.val[0] = vaddq_s32(vdupq_laneq_s32(v228, 3), v279.val[0]);
                  v283.val[1] = vdupq_lane_s32(*v283.val[0].i8, 1);
                  v283.val[1].i64[0] = 0;
                  v279.val[1] = vaddq_s32(vdupq_laneq_s32(v136, 3), v279.val[1]);
                  v283.val[0] = vaddq_s32(vdupq_laneq_s32(v137, 3), vaddq_s32(v283.val[1], v283.val[0]));
                  v283.val[1] = vaddq_s32(v279.val[0], v138);
                  v286.val[0] = vaddq_s32(v279.val[1], v50);
                  v286.val[1] = vaddq_s32(v283.val[0], v139);
                  v290.val[0] = vzip2q_s32(v244, v286.val[0]);
                  v290.val[1] = vzip2q_s32(v283.val[1], v286.val[1]);
                  v274.val[0] = vzip1q_s32(v244, v286.val[0]);
                  v274.val[1] = vzip1q_s32(v283.val[1], v286.val[1]);
                  v143 = v120 + 16;
                  vst2q_f32(v143, v274);
                  v283.val[1] = vqtbl2q_s8(v235, xmmword_296B8F020);
                  v286.val[0] = vqtbl2q_s8(v233, xmmword_296B8F020);
                  v286.val[0] = vaddq_s32(vshlq_n_s64(v286.val[0], 0x20uLL), v286.val[0]);
                  v274.val[0] = vdupq_lane_s32(*v286.val[0].i8, 1);
                  v283.val[1] = vaddq_s32(vshlq_n_s64(v283.val[1], 0x20uLL), v283.val[1]);
                  v274.val[0].i64[0] = 0;
                  v286.val[0] = vaddq_s32(v274.val[0], v286.val[0]);
                  v286.val[1] = vdupq_lane_s32(*v283.val[1].i8, 1);
                  v286.val[1].i64[0] = 0;
                  v286.val[1] = vaddq_s32(v286.val[1], v283.val[1]);
                  v283.val[1] = vqtbl2q_s8(v278, xmmword_296B8F020);
                  v144 = vqtbl2q_s8(v267, xmmword_296B8F020);
                  v145 = vaddq_s32(vshlq_n_s64(v144, 0x20uLL), v144);
                  v267.val[0] = vdupq_lane_s32(*v145.i8, 1);
                  v267.val[0].i64[0] = 0;
                  v283.val[1] = vaddq_s32(vshlq_n_s64(v283.val[1], 0x20uLL), v283.val[1]);
                  v146 = vaddq_s32(v267.val[0], v145);
                  v267.val[0] = vdupq_lane_s32(*v283.val[1].i8, 1);
                  v267.val[0].i64[0] = 0;
                  v274.val[0] = vaddq_s32(v267.val[0], v283.val[1]);
                  v267.val[0] = vqtbl2q_s8(v276, xmmword_296B8F020);
                  v267.val[1] = vqtbl2q_s8(*(&v267 + 16), xmmword_296B8F020);
                  v269.val[0] = vaddq_s32(vdupq_laneq_s32(v286.val[1], 3), v286.val[0]);
                  v267.val[0] = vaddq_s32(vshlq_n_s64(v267.val[0], 0x20uLL), v267.val[0]);
                  v267.val[1] = vaddq_s32(vshlq_n_s64(v267.val[1], 0x20uLL), v267.val[1]);
                  v283.val[1] = vdupq_lane_s32(*v267.val[0].i8, 1);
                  v283.val[1].i64[0] = 0;
                  v286.val[0] = vaddq_s32(v283.val[1], v267.val[0]);
                  v267.val[0] = vdupq_lane_s32(*v267.val[1].i8, 1);
                  v267.val[0].i64[0] = 0;
                  v283.val[1] = vaddq_s32(vdupq_laneq_s32(v286.val[0], 3), vaddq_s32(v267.val[0], v267.val[1]));
                  v279.val[0] = vdupq_laneq_s32(v279.val[0], 3);
                  v279.val[1] = vdupq_laneq_s32(v279.val[1], 3);
                  v267.val[0] = vaddq_s32(v269.val[0], v279.val[0]);
                  v267.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v274.val[0], 3), v146), v279.val[1]);
                  v147 = vdupq_laneq_s32(v283.val[0], 3);
                  v269.val[0] = vaddq_s32(v283.val[1], v147);
                  v274.val[1] = vaddq_s32(v267.val[0], v138);
                  v148 = vaddq_s32(v267.val[1], v50);
                  v276.val[0] = vaddq_s32(v269.val[0], v139);
                  v283.val[0] = vzip2q_s32(v244, v148);
                  v283.val[1] = vzip2q_s32(v274.val[1], v276.val[0]);
                  v276.val[1] = vzip1q_s32(v244, v148);
                  v129 = xmmword_296B8F040;
                  v278.val[0] = vzip1q_s32(v274.val[1], v276.val[0]);
                  v90 = xmmword_296B8F000;
                  v149 = v120 + 24;
                  vst2q_f32(v149, v290);
                  v279.val[0] = vaddq_s32(vaddq_s32(v286.val[1], v138), v279.val[0]);
                  v286.val[1] = vaddq_s32(v274.val[0], v50);
                  v131 = xmmword_296B8F070;
                  v130 = xmmword_296B8F010;
                  v279.val[1] = vaddq_s32(v286.val[1], v279.val[1]);
                  v150 = vaddq_s32(vaddq_s32(v286.val[0], v139), v147);
                  v286.val[0] = vzip2q_s32(v244, v279.val[1]);
                  v286.val[1] = vzip2q_s32(v279.val[0], v150);
                  v290.val[0] = vzip1q_s32(v244, v279.val[1]);
                  v290.val[1] = vzip1q_s32(v279.val[0], v150);
                  v151 = vqtbl2q_s8(v241, xmmword_296B8F020);
                  v279.val[1] = v238;
                  v281.val[0] = v239;
                  v279.val[0] = vqtbl2q_s8(*(&v279 + 16), xmmword_296B8F020);
                  v279.val[1] = vqtbl2q_s8(v236, xmmword_296B8F020);
                  v152 = v120 + 32;
                  vst2q_f32(v152, v290);
                  v290.val[1] = vaddq_s32(vshlq_n_s64(v151, 0x20uLL), v151);
                  v279.val[1] = vaddq_s32(vshlq_n_s64(v279.val[1], 0x20uLL), v279.val[1]);
                  v290.val[0] = vdupq_lane_s32(*v279.val[1].i8, 1);
                  v153 = vaddq_s32(vshlq_n_s64(v279.val[0], 0x20uLL), v279.val[0]);
                  v279.val[0] = vdupq_lane_s32(*v153.i8, 1);
                  v290.val[0].i64[0] = 0;
                  v279.val[1] = vaddq_s32(v290.val[0], v279.val[1]);
                  v290.val[0] = vdupq_lane_s32(*v290.val[1].i8, 1);
                  v290.val[0].i64[0] = 0;
                  v279.val[0].i64[0] = 0;
                  v154 = vaddq_s32(v279.val[0], v153);
                  v279.val[0] = vaddq_s32(v290.val[0], v290.val[1]);
                  v272.val[1] = vqtbl2q_s8(*(&v272 + 16), xmmword_296B8F020);
                  v269.val[1] = vqtbl2q_s8(*(&v269 + 16), xmmword_296B8F020);
                  v272.val[0] = vqtbl2q_s8(v292, xmmword_296B8F020);
                  v272.val[1] = vaddq_s32(vshlq_n_s64(v272.val[1], 0x20uLL), v272.val[1]);
                  v272.val[0] = vaddq_s32(vshlq_n_s64(v272.val[0], 0x20uLL), v272.val[0]);
                  v155 = vaddq_s32(vdupq_laneq_s32(v279.val[0], 3), v279.val[1]);
                  v156 = v120 + 40;
                  vst2q_f32(v156, v286);
                  v286.val[0] = vdupq_lane_s32(*v272.val[0].i8, 1);
                  v286.val[1] = vdupq_lane_s32(*v272.val[1].i8, 1);
                  v286.val[1].i64[0] = 0;
                  v279.val[1] = vaddq_s32(vshlq_n_s64(v269.val[1], 0x20uLL), v269.val[1]);
                  v286.val[0].i64[0] = 0;
                  v269.val[1] = vdupq_laneq_s32(v155, 3);
                  v272.val[1] = vaddq_s32(v286.val[1], v272.val[1]);
                  v272.val[0] = vaddq_s32(vdupq_laneq_s32(v272.val[1], 3), vaddq_s32(v286.val[0], v272.val[0]));
                  v286.val[0] = vdupq_lane_s32(*v279.val[1].i8, 1);
                  v286.val[0].i64[0] = 0;
                  v267.val[0] = vdupq_laneq_s32(v267.val[0], 3);
                  v157 = v120 + 48;
                  vst2q_f32(v157, *(&v276 + 16));
                  v54 = xmmword_296B8F060;
                  v53 = xmmword_296B8F050;
                  v290.val[1] = vqtbl2q_s8(v231, xmmword_296B8F070);
                  v290.val[0] = vqtbl2q_s8(v289, xmmword_296B8F080);
                  v286.val[1] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v267.val[1] = vdupq_laneq_s32(v267.val[1], 3);
                  v286.val[1] = vaddq_s32(vshlq_n_s64(v286.val[1], 0x20uLL), v286.val[1]);
                  v290.val[0] = vdupq_lane_s32(*v286.val[1].i8, 1);
                  v290.val[0].i64[0] = 0;
                  v279.val[0] = vaddq_s32(vaddq_s32(v279.val[0], v138), v267.val[0]);
                  v272.val[1] = vaddq_s32(vaddq_s32(v272.val[1], v50), v267.val[1]);
                  v286.val[1] = vaddq_s32(v290.val[0], v286.val[1]);
                  v269.val[0] = vdupq_laneq_s32(v269.val[0], 3);
                  v290.val[0] = vaddq_s32(vaddq_s32(v286.val[1], v139), v269.val[0]);
                  v158 = v120 + 56;
                  vst2q_f32(v158, v283);
                  v283.val[0] = vzip1q_s32(v244, v272.val[1]);
                  v283.val[1] = vzip1q_s32(v279.val[0], v290.val[0]);
                  v159 = v120 + 64;
                  vst2q_f32(v159, v283);
                  v283.val[1] = vqtbl2q_s8(v231, xmmword_296B8F050);
                  v283.val[0] = vqtbl2q_s8(v289, xmmword_296B8F060);
                  v283.val[0] = vqtbl2q_s8(v283, xmmword_296B8F020);
                  v283.val[0] = vaddq_s32(vshlq_n_s64(v283.val[0], 0x20uLL), v283.val[0]);
                  v290.val[1] = vzip2q_s32(v244, v272.val[1]);
                  v292.val[0] = vzip2q_s32(v279.val[0], v290.val[0]);
                  v272.val[1] = vdupq_lane_s32(*v283.val[0].i8, 1);
                  v272.val[1].i64[0] = 0;
                  v272.val[1] = vaddq_s32(v272.val[1], v283.val[0]);
                  v283.val[0] = vdupq_laneq_s32(v272.val[0], 3);
                  v160 = vaddq_s32(vaddq_s32(v155, v138), v267.val[0]);
                  v272.val[0] = vaddq_s32(vaddq_s32(v272.val[0], v50), v267.val[1]);
                  v272.val[1] = vaddq_s32(vdupq_laneq_s32(v286.val[1], 3), v272.val[1]);
                  v283.val[1] = vaddq_s32(vaddq_s32(v272.val[1], v139), v269.val[0]);
                  v161 = v120 + 72;
                  vst2q_f32(v161, *(&v290 + 16));
                  v51 = xmmword_296B8F030;
                  v290.val[0] = vzip1q_s32(v244, v272.val[0]);
                  v290.val[1] = vzip1q_s32(v160, v283.val[1]);
                  v162 = v120 + 80;
                  vst2q_f32(v162, v290);
                  v279.val[1] = vaddq_s32(v286.val[0], v279.val[1]);
                  v290.val[1] = vqtbl2q_s8(v231, xmmword_296B8F030);
                  v290.val[0] = vqtbl2q_s8(v289, xmmword_296B8F040);
                  v42 = vaddq_s32(vaddq_s32(vaddq_s32(v154, v269.val[1]), v138), v267.val[0]);
                  v286.val[1] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v286.val[1] = vaddq_s32(vshlq_n_s64(v286.val[1], 0x20uLL), v286.val[1]);
                  v290.val[0] = vdupq_lane_s32(*v286.val[1].i8, 1);
                  v286.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v279.val[1], v283.val[0]), v50), v267.val[1]);
                  v290.val[0].i64[0] = 0;
                  v286.val[1] = vaddq_s32(v290.val[0], v286.val[1]);
                  v272.val[1] = vdupq_laneq_s32(v272.val[1], 3);
                  v290.val[0] = vzip2q_s32(v244, v272.val[0]);
                  v290.val[1] = vzip2q_s32(v160, v283.val[1]);
                  v163 = v120 + 88;
                  vst2q_f32(v163, v290);
                  v272.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v286.val[1], v272.val[1]), v139), v269.val[0]);
                  v290.val[0] = vzip2q_s32(v244, v286.val[0]);
                  v290.val[1] = vzip2q_s32(v42, v272.val[0]);
                  v283.val[1] = vzip1q_s32(v244, v286.val[0]);
                  v286.val[0] = vzip1q_s32(v42, v272.val[0]);
                  v164 = v120 + 96;
                  vst2q_f32(v164, *(&v283 + 16));
                  v165 = v120 + 104;
                  vst2q_f32(v165, v290);
                  v286.val[0] = vqtbl2q_s8(v231, xmmword_296B8F000);
                  v283.val[1] = vqtbl2q_s8(v289, xmmword_296B8F010);
                  v272.val[0] = vqtbl2q_s8(v243, xmmword_296B8F020);
                  v272.val[0] = vaddq_s32(vshlq_n_s64(v272.val[0], 0x20uLL), v272.val[0]);
                  v166 = vdupq_lane_s32(*v272.val[0].i8, 1);
                  v166.i64[0] = 0;
                  v167 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v154, 3), vaddq_s32(v166, v272.val[0])), v269.val[1]);
                  v43 = v229;
                  v281.val[1] = v230;
                  v269.val[1] = vqtbl2q_s8(*v43.i8, xmmword_296B8F020);
                  v269.val[1] = vaddq_s32(vshlq_n_s64(v269.val[1], 0x20uLL), v269.val[1]);
                  v272.val[0] = vdupq_lane_s32(*v269.val[1].i8, 1);
                  v168 = vaddq_s32(v167, v138);
                  v52 = xmmword_296B8F080;
                  v272.val[0].i64[0] = 0;
                  v269.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v279.val[1], 3), vaddq_s32(v272.val[0], v269.val[1])), v283.val[0]);
                  v89 = xmmword_296B8F020;
                  v272.val[0] = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F020);
                  v272.val[0] = vaddq_s32(vshlq_n_s64(v272.val[0], 0x20uLL), v272.val[0]);
                  v41 = vdupq_lane_s32(*v272.val[0].i8, 1);
                  v41.i64[0] = 0;
                  v35 = vaddq_s32(v168, v267.val[0]);
                  v267.val[0] = vdupq_laneq_s32(v286.val[1], 3);
                  v44 = v244;
                  v40 = vaddq_s32(vaddq_s32(vaddq_s32(v267.val[0], vaddq_s32(v41, v272.val[0])), v272.val[1]), v139);
                  v36 = vaddq_s32(vaddq_s32(v269.val[1], v50), v267.val[1]);
                  v267.val[1] = vaddq_s32(v40, v269.val[0]);
                  v48 = v267.val[1].u32[3];
                  v269.val[0] = vzip1q_s32(v244, v36);
                  v169 = v120 + 112;
                  v269.val[1] = vzip1q_s32(v35, v267.val[1]);
                  vst2q_f32(v169, v269);
                  v269.val[0] = vzip2q_s32(v244, v36);
                  v269.val[1] = vzip2q_s32(v35, v267.val[1]);
                  v170 = v120 + 120;
                  vst2q_f32(v170, v269);
                  v37 = vextq_s8(v36, v36, 8uLL);
                  v38 = vextq_s8(v35, v35, 8uLL);
                  *v50.i8 = vzip2_s32(*v38.i8, *v37.i8);
                  v120 += 128;
                  v171 = v91 + 64;
                  v91 += 32;
                }

                while (v171 <= v32);
                v119 = v36.u32[3];
                v118 = v35.u32[3];
                v34 = v225;
                v33 = v226;
              }

              else
              {
                v118 = v50.i32[0];
                v119 = v50.u32[1];
                v120 = a11;
              }

              if (v91 + 8 <= v32)
              {
                v174 = v260 + v45;
                v175 = v260 + v45 + 2 * v260;
                v176 = v45 + 2 * v260;
                v177 = v253 + v46;
                result = v253 + v46 + 2 * v253;
                v178 = v46 + 2 * v253;
                v179 = v246 + v47;
                v180 = v246 + v47 + 2 * v246;
                v181 = v47 + 2 * v246;
                do
                {
                  v35.i64[0] = *(v45 + v91);
                  v36.i64[0] = *(v174 + v91);
                  v37.i64[0] = *(v176 + v91);
                  v38.i64[0] = *(v175 + v91);
                  v182 = vzip1q_s8(v38, v36);
                  v183 = vzip1q_s8(v37, v35);
                  v184 = vzip1q_s8(v182, v183);
                  v185 = vzip2q_s8(v182, v183);
                  v186 = vaddq_s32(vshlq_n_s64(v184, 0x20uLL), v184);
                  v187 = vaddq_s32(vshlq_n_s64(v185, 0x20uLL), v185);
                  v188 = vdupq_lane_s32(*v187.i8, 1);
                  v189 = vdupq_lane_s32(*v186.i8, 1);
                  v190 = vdupq_n_s32(v118);
                  v40.i64[0] = *(v46 + v91);
                  v191 = vaddq_s32(v187, v190);
                  v187.i64[0] = *(v177 + v91);
                  v41.i64[0] = *(v178 + v91);
                  v189.i64[0] = 0;
                  v42.i64[0] = *(result + v91);
                  v192 = vzip1q_s8(v42, v187);
                  v193 = vzip1q_s8(v41, v40);
                  v188.i64[0] = 0;
                  v194 = vzip1q_s8(v192, v193);
                  v195 = vaddq_s32(vshlq_n_s64(v194, 0x20uLL), v194);
                  v196 = vdupq_lane_s32(*v195.i8, 1);
                  v197 = vaddq_s32(v189, v186);
                  v198 = vzip2q_s8(v192, v193);
                  v196.i64[0] = 0;
                  v199 = vdupq_n_s32(v119);
                  v200 = vaddq_s32(v188, v191);
                  v193.i64[0] = *(v47 + v91);
                  v191.i64[0] = *(v179 + v91);
                  v41 = vaddq_s32(v196, v195);
                  v196.i64[0] = *(v181 + v91);
                  v43.i64[0] = *(v180 + v91);
                  v201 = vdupq_laneq_s32(v197, 3);
                  v202 = vzip1q_s8(v43, v191);
                  v203 = vzip1q_s8(v196, v193);
                  v204 = vzip1q_s8(v202, v203);
                  v205 = vaddq_s32(vshlq_n_s64(v204, 0x20uLL), v204);
                  v206 = vaddq_s32(v197, v190);
                  v207 = vdupq_lane_s32(*v205.i8, 1);
                  v207.i64[0] = 0;
                  v42 = vaddq_s32(v207, v205);
                  v208 = vaddq_s32(v41, v199);
                  v43 = vdupq_n_s32(v48);
                  v209 = vaddq_s32(v42, v43);
                  v285.val[0] = vzip1q_s32(v44, v208);
                  v210 = v120 + 16;
                  v285.val[1] = vzip1q_s32(v206, v209);
                  v211 = v120;
                  vst2q_f32(v211, v285);
                  v211 += 8;
                  v212 = vaddq_s32(vshlq_n_s64(v198, 0x20uLL), v198);
                  v213 = vdupq_lane_s32(*v212.i8, 1);
                  v213.i64[0] = 0;
                  v37 = vaddq_s32(v200, v201);
                  v214 = vaddq_s32(v213, vaddq_s32(v212, v199));
                  v215 = vzip2q_s8(v202, v203);
                  v35 = vaddq_s32(v214, vdupq_laneq_s32(v41, 3));
                  v216 = vaddq_s32(vshlq_n_s64(v215, 0x20uLL), v215);
                  v217 = vdupq_lane_s32(*v216.i8, 1);
                  v118 = v37.u32[3];
                  v217.i64[0] = 0;
                  v119 = v35.u32[3];
                  v218 = v120 + 24;
                  v36 = vaddq_s32(vaddq_s32(v217, vaddq_s32(v216, v43)), vdupq_laneq_s32(v42, 3));
                  v48 = v36.u32[3];
                  v40 = vzip2q_s32(v44, v208);
                  v219 = vzip2q_s32(v206, v209);
                  vst2q_f32(v211, *v40.i8);
                  v270.val[0] = vzip1q_s32(v44, v35);
                  v270.val[1] = vzip1q_s32(v37, v36);
                  vst2q_f32(v210, v270);
                  v38 = vzip2q_s32(v44, v35);
                  v270.val[1] = vzip2q_s32(v37, v36);
                  vst2q_f32(v218, *v38.i8);
                  v173 = v120 + 32;
                  v172 = v91 + 8;
                  v220 = v91 + 16;
                  v91 += 8;
                  v120 += 32;
                }

                while (v220 <= v32);
              }

              else
              {
                v172 = v91;
                v173 = v120;
              }

              if (v172 < v32)
              {
                do
                {
                  v221 = *(v259[0] + v172 + 2 * v260);
                  v222 = *(v252[0] + v172 + 2 * v253);
                  v118 += (*(v259[0] + v172) << 24) | (*(v259[0] + v172 + v260) << 16) | (v221 << 8) | v221;
                  v223 = *(v245[0] + v172 + 2 * v246);
                  v119 += (*(v252[0] + v172) << 24) | (*(v252[0] + v172 + v253) << 16) | (v222 << 8) | v222;
                  *&v224 = __PAIR64__(v118, v227);
                  DWORD2(v224) = v119;
                  v48 += (*(v245[0] + v172) << 24) | (*(v245[0] + v172 + v246) << 16) | (v223 << 8) | v223;
                  HIDWORD(v224) = v48;
                  *v173 = v224;
                  v173 += 4;
                  ++v172;
                }

                while (v32 != v172);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v16 = result;
    v17 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v18 = _D0;
    }

    else
    {
      v18 = 32256;
    }

    v285 = 2;
    v24 = *(a5 + 8);
    v25 = a3[3];
    v283 = v25.i32[0];
    v281 = v24;
    v279[1] = result;
    v282 = a3[6].i32[1] + v25.i32[1] * v17;
    v26 = a3[7].u32[1];
    v280 = vmin_u32(vmls_s32(*(*(*&v24[5] + 8 * v26) + 16), v24[6], v25), v24[6]).u32[0];
    v284 = v26;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v279);
    v278 = 2;
    v27 = *(a6 + 8);
    v28 = a3[3];
    v276 = v28.i32[0];
    v274 = v27;
    v272[1] = v16;
    v275 = a3[6].i32[1] + v28.i32[1] * v17;
    v29 = a3[7].u32[1];
    v273 = vmin_u32(vmls_s32(*(*(*&v27[5] + 8 * v29) + 16), v27[6], v28), v27[6]).u32[0];
    v277 = v29;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v272);
    v271 = 2;
    v30 = *(a7 + 8);
    v31 = a3[3];
    v269 = v31.i32[0];
    v267 = v30;
    v265[1] = v16;
    v268 = a3[6].i32[1] + v31.i32[1] * v17;
    v32 = a3[7].u32[1];
    v266 = vmin_u32(vmls_s32(*(*(*&v30[5] + 8 * v32) + 16), v30[6], v31), v30[6]).u32[0];
    v270 = v32;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v265);
    v33 = a3[6].u32[1];
    if (a3[7].u32[0] + v33 < v17)
    {
      v35 = a3[3].i32[1] * *(a2 + 60);
      v36 = a3[5].u32[1];
      v37 = v36 + a9;
      v264 = vdupq_n_s16(v18);
      do
      {
        v282 = v35 + v33;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v279);
        v275 = v35 + v33;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v272);
        v268 = v35 + v33;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v265);
        v40.i64[0] = 0xFFFFFFFF00000000;
        v40.i64[1] = 0xFFFFFFFF00000000;
        v41 = v279[0];
        if (v279[0])
        {
          v42 = v272[0];
          if (v272[0])
          {
            v43 = v265[0];
            if (v265[0])
            {
              if (v36 >= 0x20)
              {
                v48 = 0;
                v46 = 0;
                v45 = 0;
                v44 = 0;
                v49 = v280 + v279[0];
                v50 = v273 + v272[0];
                v51 = v266 + v265[0];
                do
                {
                  v53 = *(v279[0] + v48);
                  v52 = *(v279[0] + v48 + 16);
                  v55 = *(v49 + v48);
                  v54 = *(v49 + v48 + 16);
                  v56 = vzip1q_s8(v55, v53);
                  v57 = vzip2q_s8(v55, v53);
                  v58 = vzip1q_s8(v54, v52);
                  v59 = vzip2q_s8(v54, v52);
                  v60 = vaddq_s16(vshlq_n_s32(v56, 0x10uLL), v56);
                  v61 = vaddq_s16(vshlq_n_s32(v57, 0x10uLL), v57);
                  v62 = vaddq_s16(vshlq_n_s32(v58, 0x10uLL), v58);
                  v63 = vaddq_s16(vshlq_n_s32(v59, 0x10uLL), v59);
                  v64 = vaddq_s16(vandq_s8(vqtbl1q_s8(v63, xmmword_296B8F090), v40), v63);
                  v65 = vaddq_s16(vandq_s8(vqtbl1q_s8(v62, xmmword_296B8F090), v40), v62);
                  v66 = vaddq_s16(vandq_s8(vqtbl1q_s8(v61, xmmword_296B8F090), v40), v61);
                  v67 = vaddq_s16(vandq_s8(vqtbl1q_s8(v60, xmmword_296B8F090), v40), v60);
                  v69 = *(v272[0] + v48);
                  v68 = *(v272[0] + v48 + 16);
                  v71 = *(v50 + v48);
                  v70 = *(v50 + v48 + 16);
                  v72 = vzip1q_s8(v71, v69);
                  v73 = vzip2q_s8(v71, v69);
                  v74 = vzip1q_s8(v70, v68);
                  v75 = vzip2q_s8(v70, v68);
                  v76 = vaddq_s16(vshlq_n_s32(v72, 0x10uLL), v72);
                  v77 = vaddq_s16(vshlq_n_s32(v73, 0x10uLL), v73);
                  v78 = vaddq_s16(vshlq_n_s32(v74, 0x10uLL), v74);
                  v79 = vaddq_s16(vshlq_n_s32(v75, 0x10uLL), v75);
                  v80 = vaddq_s16(vandq_s8(vqtbl1q_s8(v79, xmmword_296B8F090), v40), v79);
                  v81 = vaddq_s16(vandq_s8(vqtbl1q_s8(v78, xmmword_296B8F090), v40), v78);
                  v82 = vaddq_s16(vandq_s8(vqtbl1q_s8(v77, xmmword_296B8F090), v40), v77);
                  v83 = vaddq_s16(vandq_s8(vqtbl1q_s8(v76, xmmword_296B8F090), v40), v76);
                  v84 = vaddq_s16(vdupq_lane_s16(*v81.i8, 3), v81);
                  v86 = *(v265[0] + v48);
                  v85 = *(v265[0] + v48 + 16);
                  v88 = *(v51 + v48);
                  v87 = *(v51 + v48 + 16);
                  v89 = vzip1q_s8(v88, v86);
                  v90 = vzip2q_s8(v88, v86);
                  v91 = vzip1q_s8(v87, v85);
                  v92 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v67.i8, 3), v67), vaddq_s16(vdupq_lane_s16(*v66.i8, 3), v66));
                  v93 = vzip2q_s8(v87, v85);
                  v94 = vaddq_s16(vshlq_n_s32(v89, 0x10uLL), v89);
                  v95 = vaddq_s16(vshlq_n_s32(v90, 0x10uLL), v90);
                  v96 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v65.i8, 3), v65), vaddq_s16(vdupq_lane_s16(*v64.i8, 3), v64));
                  v97 = vaddq_s16(vshlq_n_s32(v91, 0x10uLL), v91);
                  v98 = vaddq_s16(vshlq_n_s32(v93, 0x10uLL), v93);
                  v99 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v83.i8, 3), v83), vaddq_s16(vdupq_lane_s16(*v82.i8, 3), v82));
                  v100 = vaddq_s16(vandq_s8(vqtbl1q_s8(v98, xmmword_296B8F090), v40), v98);
                  v101 = vaddq_s16(vandq_s8(vqtbl1q_s8(v97, xmmword_296B8F090), v40), v97);
                  v102 = vaddq_s16(vandq_s8(vqtbl1q_s8(v95, xmmword_296B8F090), v40), v95);
                  v103 = vaddq_s16(v96, v92);
                  v104 = vaddq_s16(vandq_s8(vqtbl1q_s8(v94, xmmword_296B8F090), v40), v94);
                  v105 = v103.u16[7];
                  v39 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v104.i8, 3), v104), vaddq_s16(vdupq_lane_s16(*v102.i8, 3), v102));
                  v38 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v101.i8, 3), v101), vaddq_s16(vdupq_lane_s16(*v100.i8, 3), v100)), v39);
                  v46 += v105;
                  v45 += vaddq_s16(vaddq_s16(v84, vaddq_s16(vdupq_lane_s16(*&v80, 3), v80)), v99).u16[7];
                  v44 += v38.u16[7];
                  v106 = v48 + 64;
                  v48 += 32;
                }

                while (v106 <= v36);
                v47 = v36 & 0xFFFFFFE0;
              }

              else
              {
                v44 = 0;
                v45 = 0;
                v46 = 0;
                v47 = 0;
              }

              if ((v47 | 8) <= v36)
              {
                do
                {
                  v38.i64[0] = *(v279[0] + v47);
                  v39.i64[0] = *(v280 + v279[0] + v47);
                  v108 = vzip1q_s8(v39, v38);
                  v109 = vaddq_s16(vshlq_n_s32(v108, 0x10uLL), v108);
                  v110 = vextq_s8(v109, v109, 0xCuLL);
                  v111 = vaddq_s16(v110, v109);
                  v112 = v111.u16[3];
                  v113 = v111.u16[7] + v46;
                  v111.i64[0] = *(v272[0] + v47);
                  v110.i64[0] = *(v273 + v272[0] + v47);
                  v114 = vzip1q_s8(v110, v111);
                  v115 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                  v116 = vextq_s8(v115, v115, 0xCuLL);
                  v117 = vaddq_s16(v116, v115);
                  v46 = v113 + v112;
                  v118 = v117.u16[3];
                  v117.i64[0] = *(v265[0] + v47);
                  v45 += v117.u16[7] + v118;
                  v116.i64[0] = *(v266 + v265[0] + v47);
                  v119 = vzip1q_s8(v116, v117);
                  v120 = vaddq_s16(vshlq_n_s32(v119, 0x10uLL), v119);
                  v39 = vextq_s8(v120, v120, 0xCuLL);
                  v38 = vaddq_s16(v39, v120);
                  v44 += v38.u16[7] + v38.u16[3];
                  v107 = v47 + 8;
                  v121 = v47 + 16;
                  v47 += 8;
                }

                while (v121 <= v36);
              }

              else
              {
                v107 = v47;
              }

              v122 = v36 - v107;
              if (v36 > v107)
              {
                v123 = (v107 + v279[0] + v280);
                v124 = (v279[0] + v107);
                v125 = (v107 + v272[0] + v273);
                v126 = (v272[0] + v107);
                v127 = (v107 + v265[0] + v266);
                v128 = (v265[0] + v107);
                do
                {
                  v130 = *v124++;
                  v129 = v130;
                  v131 = *v123++;
                  v132 = v131 | (v129 << 8);
                  v134 = *v126++;
                  v133 = v134;
                  v46 += v132;
                  v135 = *v125++;
                  v136 = v135 | (v133 << 8);
                  v138 = *v128++;
                  v137 = v138;
                  v45 += v136;
                  v139 = *v127++;
                  v44 += v139 | (v137 << 8);
                  --v122;
                }

                while (v122);
                v107 = v36;
              }

              if (v107 + 32 <= v37)
              {
                v142 = v280 + v279[0];
                v143 = v273 + v272[0];
                v144 = v266 + v265[0];
                v145 = a11;
                do
                {
                  v147 = *(v41 + v107);
                  v146 = *(v41 + v107 + 16);
                  v149 = *(v142 + v107);
                  v148 = *(v142 + v107 + 16);
                  v150 = vzip2q_s8(v149, v147);
                  v151 = vzip2q_s8(v148, v146);
                  v152 = vzip1q_s8(v148, v146);
                  v153 = vzip1q_s8(v149, v147);
                  v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                  v155 = vaddq_s16(vshlq_n_s32(v151, 0x10uLL), v151);
                  v156 = vaddq_s16(vshlq_n_s32(v152, 0x10uLL), v152);
                  v157 = vaddq_s16(vshlq_n_s32(v153, 0x10uLL), v153);
                  v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v157, xmmword_296B8F090), v40), v157);
                  v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v156, xmmword_296B8F090), v40), v156);
                  v160 = vaddq_s16(vandq_s8(vqtbl1q_s8(v155, xmmword_296B8F090), v40), v155);
                  v161 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v40), v154);
                  v162 = vdupq_n_s16(v46);
                  v164 = *(v42 + v107);
                  v163 = *(v42 + v107 + 16);
                  v166 = *(v143 + v107);
                  v165 = *(v143 + v107 + 16);
                  v167 = vzip2q_s8(v166, v164);
                  v168 = vzip2q_s8(v165, v163);
                  v169 = vzip1q_s8(v165, v163);
                  v170 = vzip1q_s8(v166, v164);
                  v171 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v161.i8, 3), xmmword_296B8F0A0), v161);
                  v172 = vaddq_s16(vshlq_n_s32(v167, 0x10uLL), v167);
                  v173 = vaddq_s16(vshlq_n_s32(v168, 0x10uLL), v168);
                  v174 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v160.i8, 3), xmmword_296B8F0A0), v160);
                  v175 = vaddq_s16(vshlq_n_s32(v169, 0x10uLL), v169);
                  v176 = vaddq_s16(vshlq_n_s32(v170, 0x10uLL), v170);
                  v177 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159);
                  v178 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158);
                  v179 = vaddq_s16(vandq_s8(vqtbl1q_s8(v176, xmmword_296B8F090), v40), v176);
                  v180 = vaddq_s16(vandq_s8(vqtbl1q_s8(v175, xmmword_296B8F090), v40), v175);
                  v181 = vaddq_s16(vandq_s8(vqtbl1q_s8(v173, xmmword_296B8F090), v40), v173);
                  v182 = vaddq_s16(vandq_s8(vqtbl1q_s8(v172, xmmword_296B8F090), v40), v172);
                  v183 = vdupq_laneq_s16(v178, 7);
                  v184 = vdupq_laneq_s16(v177, 7);
                  v185 = vaddq_s16(v177, v162);
                  v186 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v181.i8, 3), xmmword_296B8F0A0), v181);
                  v187 = vaddq_s16(v178, v162);
                  v188 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v180.i8, 3), xmmword_296B8F0A0), v180);
                  v189 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v179.i8, 3), xmmword_296B8F0A0), v179);
                  v190 = vdupq_laneq_s16(v189, 7);
                  v191 = vdupq_laneq_s16(v188, 7);
                  v192 = vdupq_n_s16(v45);
                  v193 = vaddq_s16(v188, v192);
                  v195 = *(v43 + v107);
                  v194 = *(v43 + v107 + 16);
                  v196 = vaddq_s16(v189, v192);
                  v198 = *(v144 + v107);
                  v197 = *(v144 + v107 + 16);
                  v199 = vzip2q_s8(v198, v195);
                  v200 = vaddq_s16(v184, v174);
                  v201 = vzip2q_s8(v197, v194);
                  v202 = vzip1q_s8(v197, v194);
                  v203 = vzip1q_s8(v198, v195);
                  v204 = vaddq_s16(v183, v171);
                  v205 = vaddq_s16(vshlq_n_s32(v199, 0x10uLL), v199);
                  v206 = vaddq_s16(vshlq_n_s32(v201, 0x10uLL), v201);
                  v207 = vaddq_s16(vshlq_n_s32(v202, 0x10uLL), v202);
                  v208 = vaddq_s16(v191, v186);
                  v209 = vaddq_s16(vshlq_n_s32(v203, 0x10uLL), v203);
                  v210 = vaddq_s16(v190, vaddq_s16(vandq_s8(vdupq_lane_s16(*v182.i8, 3), xmmword_296B8F0A0), v182));
                  v211 = vaddq_s16(vandq_s8(vqtbl1q_s8(v209, xmmword_296B8F090), v40), v209);
                  v212 = vdupq_laneq_s16(v204, 7);
                  v213 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_296B8F090), v40), v207);
                  v214 = vaddq_s16(vandq_s8(vqtbl1q_s8(v205, xmmword_296B8F090), v40), v205);
                  v215 = vaddq_s16(v200, v162);
                  v216 = vaddq_s16(vandq_s8(vqtbl1q_s8(v206, xmmword_296B8F090), v40), v206);
                  v217 = vaddq_s16(v204, v162);
                  v218 = vdupq_laneq_s16(v210, 7);
                  v219 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v213.i8, 3), xmmword_296B8F0A0), v213);
                  v220 = vaddq_s16(v208, v192);
                  v221 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v211.i8, 3), xmmword_296B8F0A0), v211);
                  v222 = vaddq_s16(v210, v192);
                  v223 = vaddq_s16(vdupq_laneq_s16(v219, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v216.i8, 3), xmmword_296B8F0A0), v216));
                  v224 = vaddq_s16(vdupq_laneq_s16(v221, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v214.i8, 3), xmmword_296B8F0A0), v214));
                  v225 = vdupq_n_s16(v44);
                  v226 = vdupq_laneq_s16(v224, 7);
                  v227 = vaddq_s16(v223, v225);
                  v228 = vaddq_s16(v224, v225);
                  v229 = vaddq_s16(v219, v225);
                  v230 = vaddq_s16(v221, v225);
                  v290.val[0] = vzip2q_s16(v264, v222);
                  v231 = vaddq_s16(v215, v212);
                  v290.val[1] = vzip2q_s16(v217, v228);
                  v291.val[0] = vzip1q_s16(v264, v222);
                  v291.val[1] = vzip1q_s16(v217, v228);
                  v289.val[0] = vzip2q_s16(v264, v196);
                  v289.val[1] = vzip2q_s16(v187, v230);
                  v232 = vaddq_s16(v185, v212);
                  v141 = v145 + 128;
                  v233 = v145 + 32;
                  v234 = v145 + 48;
                  v235 = v145 + 64;
                  v236 = v145 + 80;
                  v237 = vaddq_s16(v220, v218);
                  v238 = v145 + 96;
                  v239 = v145 + 112;
                  v292.val[0] = vzip1q_s16(v264, v196);
                  v292.val[1] = vzip1q_s16(v187, v230);
                  v38 = vaddq_s16(v193, v218);
                  vst2q_s16(v145, v292);
                  v240 = v145 + 16;
                  v39 = vaddq_s16(v227, v226);
                  vst2q_s16(v240, v289);
                  v46 = v231.u16[7];
                  vst2q_s16(v233, v291);
                  v45 = v237.u16[7];
                  vst2q_s16(v234, v290);
                  v44 = v39.u16[7];
                  v241 = vaddq_s16(v229, v226);
                  v288.val[0] = vzip2q_s16(v264, v237);
                  v288.val[1] = vzip2q_s16(v231, v39);
                  v140 = v107 + 32;
                  v242 = v107 + 64;
                  v289.val[0] = vzip1q_s16(v264, v38);
                  v107 += 32;
                  v289.val[1] = vzip1q_s16(v232, v241);
                  vst2q_s16(v235, v289);
                  v289.val[0] = vzip2q_s16(v264, v38);
                  v289.val[1] = vzip2q_s16(v232, v241);
                  vst2q_s16(v236, v289);
                  v286.val[0] = vzip1q_s16(v264, v237);
                  v286.val[1] = vzip1q_s16(v231, v39);
                  vst2q_s16(v238, v286);
                  vst2q_s16(v239, v288);
                  v145 = v141;
                }

                while (v242 <= v37);
              }

              else
              {
                v140 = v107;
                v141 = a11;
              }

              if (v140 + 8 <= v37)
              {
                v244 = v280 + v41;
                v245 = v273 + v42;
                v246 = v266 + v43;
                do
                {
                  v38.i64[0] = *(v41 + v140);
                  v39.i64[0] = *(v244 + v140);
                  v247 = vzip1q_s8(v39, v38);
                  v248 = vaddq_s16(vshlq_n_s32(v247, 0x10uLL), v247);
                  v249 = vaddq_s16(vandq_s8(vqtbl1q_s8(v248, xmmword_296B8F090), v40), v248);
                  v250 = vandq_s8(vdupq_lane_s16(*v249.i8, 3), xmmword_296B8F0A0);
                  v251 = vdupq_n_s16(v46);
                  v38 = vaddq_s16(vaddq_s16(v249, v251), v250);
                  v46 = v38.u16[7];
                  v250.i64[0] = *(v42 + v140);
                  v251.i64[0] = *(v245 + v140);
                  v252 = vzip1q_s8(v251, v250);
                  v253 = vaddq_s16(vshlq_n_s32(v252, 0x10uLL), v252);
                  v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_296B8F090), v40), v253);
                  v255 = vandq_s8(vdupq_lane_s16(*v254.i8, 3), xmmword_296B8F0A0);
                  v256 = vdupq_n_s16(v45);
                  v39 = vaddq_s16(vaddq_s16(v254, v256), v255);
                  v45 = v39.u16[7];
                  v255.i64[0] = *(v43 + v140);
                  v256.i64[0] = *(v246 + v140);
                  v257 = vzip1q_s8(v256, v255);
                  v258 = vaddq_s16(vshlq_n_s32(v257, 0x10uLL), v257);
                  v259 = vaddq_s16(vandq_s8(vqtbl1q_s8(v258, xmmword_296B8F090), v40), v258);
                  v260 = vaddq_s16(vaddq_s16(v259, vdupq_n_s16(v44)), vandq_s8(vdupq_lane_s16(*v259.i8, 3), xmmword_296B8F0A0));
                  v44 = v260.u16[7];
                  v287.val[0] = vzip1q_s16(v264, v39);
                  v287.val[1] = vzip1q_s16(v38, v260);
                  v243 = v141 + 32;
                  vst2q_s16(v141, v287);
                  v261 = v141 + 16;
                  v287.val[0] = vzip2q_s16(v264, v39);
                  v287.val[1] = vzip2q_s16(v38, v260);
                  vst2q_s16(v261, v287);
                  result = v140 + 8;
                  v262 = v140 + 16;
                  v140 += 8;
                  v141 = v243;
                }

                while (v262 <= v37);
              }

              else
              {
                result = v140;
                v243 = v141;
              }

              if (result < v37)
              {
                do
                {
                  v46 += *(v279[0] + result + v280) | (*(v279[0] + result) << 8);
                  v45 += *(v272[0] + result + v273) | (*(v272[0] + result) << 8);
                  LOWORD(v263) = v18;
                  WORD1(v263) = v46;
                  WORD2(v263) = v45;
                  v44 += *(v265[0] + result + v266) | (*(v265[0] + result) << 8);
                  HIWORD(v263) = v44;
                  *v243 = v263;
                  v243 += 4;
                  ++result;
                }

                while (v37 != result);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v33 += a10;
      }

      while (v33 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, double **a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, uint64_t a9, uint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  if (a10)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v19 = *a4;
    if (*(*a4 + 24))
    {
      a8 = *v19;
      *&a8 = *v19;
    }

    else
    {
      LODWORD(a8) = 2143289344;
    }

    v248 = *&a8;
    v287 = 3;
    v20 = *(a5 + 8);
    v21 = a3[3];
    v285 = v21.i32[0];
    v283 = v20;
    v281[1] = result;
    v284 = a3[6].i32[1] + v21.i32[1] * v18;
    v22 = a3[7].u32[1];
    v282 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v286 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v281);
    v280 = 3;
    v23 = *(a6 + 8);
    v24 = a3[3];
    v278 = v24.i32[0];
    v276 = v23;
    v274[1] = v17;
    v277 = a3[6].i32[1] + v24.i32[1] * v18;
    v25 = a3[7].u32[1];
    v275 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v279 = v25;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v274);
    v273 = 3;
    v26 = *(a7 + 8);
    v27 = a3[3];
    v271 = v27.i32[0];
    v269 = v26;
    v267[1] = v17;
    v270 = a3[6].i32[1] + v27.i32[1] * v18;
    v28 = a3[7].u32[1];
    v268 = vmin_u32(vmls_s32(*(*(*&v26[5] + 8 * v28) + 16), v26[6], v27), v26[6]).u32[0];
    v272 = v28;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v267);
    v29 = a3[6].u32[1];
    if (a3[7].u32[0] + v29 < v18)
    {
      v31 = a3[3].i32[1] * *(a2 + 60);
      v32 = a3[5].u32[1];
      v33 = v32 + a10;
      v266 = vdupq_lane_s32(v248, 0);
      do
      {
        v284 = v31 + v29;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v281);
        v277 = v31 + v29;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v274);
        v270 = v31 + v29;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v267);
        v39 = 0uLL;
        v40 = v266;
        v41 = v281[0];
        if (v281[0])
        {
          v42 = v274[0];
          if (v274[0])
          {
            v43 = v267[0];
            if (v267[0])
            {
              if (v32 >= 0x20)
              {
                v50 = v281[0] + 2 * v282;
                v51 = v282 + v281[0];
                v52 = v274[0] + 2 * v275;
                v53 = v275 + v274[0];
                v54 = v267[0] + 2 * v268;
                v55 = v268 + v267[0];
                v47.i64[0] = 0;
                v56 = 32;
                v46.i64[0] = 0;
                v57.i64[0] = 0;
                v58 = xmmword_296B8F050;
                v59 = xmmword_296B8F0B0;
                v49 = xmmword_296B8F0D0;
                v48 = xmmword_296B8F070;
                do
                {
                  v261 = *v57.i8;
                  v264 = *v46.i8;
                  v289.val[1] = *(v281[0] + v56 - 32);
                  v291.val[1] = *(v281[0] + v56 - 16);
                  v289.val[0] = *(v50 + v56 - 32);
                  v291.val[0] = *(v50 + v56 - 16);
                  v300.val[1] = vqtbl2q_s8(v289, v58);
                  v61 = *(v51 + v56 - 32);
                  v60 = *(v51 + v56 - 16);
                  v300.val[0] = vqtbl1q_s8(v61, v59);
                  v303.val[1] = vqtbl2q_s8(v291, v58);
                  v303.val[0] = vqtbl1q_s8(v60, v59);
                  v300.val[0] = vqtbl2q_s8(v300, xmmword_296B8F020);
                  v300.val[1] = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v303.val[1] = vqtbl2q_s8(v291, xmmword_296B8F000);
                  v303.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0C0);
                  v305.val[1] = vqtbl2q_s8(v289, v48);
                  v305.val[0] = vqtbl1q_s8(v61, v49);
                  v303.val[0] = vqtbl2q_s8(v303, xmmword_296B8F020);
                  v303.val[1] = vqtbl2q_s8(v305, xmmword_296B8F020);
                  v305.val[1] = vqtbl2q_s8(v289, xmmword_296B8F000);
                  v305.val[0] = vqtbl1q_s8(v61, xmmword_296B8F0C0);
                  v289.val[1] = vqtbl2q_s8(v289, xmmword_296B8F030);
                  v289.val[0] = vqtbl1q_s8(v61, xmmword_296B8F0E0);
                  v62 = vqtbl2q_s8(v305, xmmword_296B8F020);
                  v305.val[0] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v289.val[1] = vqtbl2q_s8(v291, v48);
                  v289.val[0] = vqtbl1q_s8(v60, v49);
                  v291.val[1] = vqtbl2q_s8(v291, xmmword_296B8F030);
                  v291.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0E0);
                  v305.val[1] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v291.val[1] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v289.val[0] = vaddq_s32(vshlq_n_s64(v300.val[0], 0x20uLL), v300.val[0]);
                  v289.val[1] = vaddq_s32(vshlq_n_s64(v300.val[1], 0x20uLL), v300.val[1]);
                  v300.val[0] = vaddq_s32(vshlq_n_s64(v303.val[0], 0x20uLL), v303.val[0]);
                  v303.val[0] = vaddq_s32(vshlq_n_s64(v303.val[1], 0x20uLL), v303.val[1]);
                  v300.val[1] = vaddq_s32(vshlq_n_s64(v62, 0x20uLL), v62);
                  v291.val[0] = vaddq_s32(vshlq_n_s64(v305.val[0], 0x20uLL), v305.val[0]);
                  v291.val[1] = vaddq_s32(vshlq_n_s64(v291.val[1], 0x20uLL), v291.val[1]);
                  v63 = vaddq_s32(vshlq_n_s64(v305.val[1], 0x20uLL), v305.val[1]);
                  v307.val[1] = *(v274[0] + v56 - 32);
                  v311.val[1] = *(v274[0] + v56 - 16);
                  v64 = *(v53 + v56 - 32);
                  v305.val[0] = *(v53 + v56 - 16);
                  v307.val[0] = *(v52 + v56 - 32);
                  v311.val[0] = *(v52 + v56 - 16);
                  v309.val[1] = vqtbl2q_s8(v307, v58);
                  v309.val[0] = vqtbl1q_s8(v64, v59);
                  v65 = vqtbl2q_s8(v309, xmmword_296B8F020);
                  v309.val[1] = vqtbl2q_s8(v311, v58);
                  v309.val[0] = vqtbl1q_s8(v305.val[0], v59);
                  v66 = vqtbl2q_s8(v309, xmmword_296B8F020);
                  v309.val[1] = vqtbl2q_s8(v311, xmmword_296B8F000);
                  v309.val[0] = vqtbl1q_s8(v305.val[0], xmmword_296B8F0C0);
                  v67 = vqtbl2q_s8(v309, xmmword_296B8F020);
                  v296.val[1] = vqtbl2q_s8(v307, xmmword_296B8F070);
                  v309.val[1] = vdupq_lane_s32(*v300.val[0].i8, 1);
                  v296.val[0] = vqtbl1q_s8(v64, xmmword_296B8F0D0);
                  v296.val[0] = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v68 = vqtbl2q_s8(v307, xmmword_296B8F000);
                  v296.val[1] = vqtbl1q_s8(v64, xmmword_296B8F0C0);
                  v309.val[0] = vdupq_lane_s32(*v289.val[1].i8, 1);
                  v303.val[1] = v289.val[1];
                  v296.val[1] = vqtbl2q_s8(*(&v296 + 16), xmmword_296B8F020);
                  v307.val[1] = vqtbl2q_s8(v307, xmmword_296B8F030);
                  v307.val[0] = vqtbl1q_s8(v64, xmmword_296B8F0E0);
                  v69 = vqtbl2q_s8(v307, xmmword_296B8F020);
                  v307.val[0] = vdupq_lane_s32(*v289.val[0].i8, 1);
                  v298.val[1] = vqtbl2q_s8(v311, xmmword_296B8F070);
                  v298.val[0] = vqtbl1q_s8(v305.val[0], xmmword_296B8F0D0);
                  v298.val[0] = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v311.val[1] = vqtbl2q_s8(v311, xmmword_296B8F030);
                  v307.val[0].i64[0] = 0;
                  v311.val[0] = vqtbl1q_s8(v305.val[0], xmmword_296B8F0E0);
                  v311.val[0] = vqtbl2q_s8(v311, xmmword_296B8F020);
                  v305.val[0] = vaddq_s32(vshlq_n_s64(v65, 0x20uLL), v65);
                  v309.val[0].i64[0] = 0;
                  v307.val[1] = vaddq_s32(vshlq_n_s64(v66, 0x20uLL), v66);
                  v70 = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                  v309.val[1].i64[0] = 0;
                  v71 = vaddq_s32(vshlq_n_s64(v296.val[0], 0x20uLL), v296.val[0]);
                  v72 = vaddq_s32(vshlq_n_s64(v69, 0x20uLL), v69);
                  v311.val[0] = vaddq_s32(vshlq_n_s64(v311.val[0], 0x20uLL), v311.val[0]);
                  v73 = vaddq_s32(vdupq_lane_s32(*v300.val[1].i8, 1), v300.val[1]);
                  v74 = vaddq_s32(vshlq_n_s64(v298.val[0], 0x20uLL), v298.val[0]);
                  v300.val[1] = vaddq_s32(vdupq_lane_s32(*v63.i8, 1), v63);
                  v75 = vaddq_s32(vshlq_n_s64(v296.val[1], 0x20uLL), v296.val[1]);
                  v296.val[1] = vdupq_lane_s32(*v70.i8, 1);
                  v298.val[1] = vdupq_lane_s32(*v307.val[1].i8, 1);
                  v76 = vdupq_lane_s32(*v305.val[0].i8, 1);
                  v76.i64[0] = 0;
                  v298.val[1].i64[0] = 0;
                  v296.val[1].i64[0] = 0;
                  v300.val[0] = vaddq_s32(v309.val[1], v300.val[0]);
                  v77 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v291.val[0].i8, 1), v291.val[0]), v73);
                  v291.val[0] = vaddq_s32(vdupq_lane_s32(*v71.i8, 1), v71);
                  v58 = xmmword_296B8F050;
                  v289.val[1] = vaddq_s32(vdupq_lane_s32(*v74.i8, 1), v74);
                  v309.val[1] = vaddq_s32(vdupq_lane_s32(*v311.val[0].i8, 1), v311.val[0]);
                  v259 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v72.i8, 1), v72), vaddq_s32(vdupq_lane_s32(*v75.i8, 1), v75));
                  v311.val[0] = *(v267[0] + v56 - 32);
                  v78 = *(v267[0] + v56 - 16);
                  v289.val[0] = vaddq_s32(v307.val[0], v289.val[0]);
                  v79 = *(v55 + v56 - 32);
                  v307.val[0] = *(v55 + v56 - 16);
                  v80 = *(v54 + v56 - 32);
                  v311.val[1] = *(v54 + v56 - 16);
                  v305.val[1] = vaddq_s32(v296.val[1], v70);
                  v295.val[1] = vqtbl2q_s8(v311, xmmword_296B8F050);
                  v295.val[0] = vqtbl1q_s8(v79, xmmword_296B8F0B0);
                  v81 = vqtbl2q_s8(v295, xmmword_296B8F020);
                  v295.val[1] = vqtbl2q_s8(*(&v311 + 16), xmmword_296B8F050);
                  v307.val[1] = vaddq_s32(v298.val[1], v307.val[1]);
                  v59 = xmmword_296B8F0B0;
                  v295.val[0] = vqtbl1q_s8(v307.val[0], xmmword_296B8F0B0);
                  v82 = vqtbl2q_s8(v295, xmmword_296B8F020);
                  v295.val[1] = vqtbl2q_s8(*(&v311 + 16), xmmword_296B8F000);
                  v295.val[0] = vqtbl1q_s8(v307.val[0], xmmword_296B8F0C0);
                  v295.val[0] = vqtbl2q_s8(v295, xmmword_296B8F020);
                  v296.val[0] = vqtbl2q_s8(v311, xmmword_296B8F070);
                  v295.val[1] = vqtbl1q_s8(v79, xmmword_296B8F0D0);
                  v295.val[1] = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v296.val[1] = vqtbl2q_s8(v311, xmmword_296B8F000);
                  v296.val[0] = vqtbl1q_s8(v79, xmmword_296B8F0C0);
                  v303.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v303.val[0].i8, 1), v303.val[0]), v289.val[0]);
                  v83 = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v289.val[0] = vdupq_lane_s32(*v47.i8, 0);
                  v84 = vdupq_laneq_s32(v309.val[1], 3);
                  v300.val[1] = vaddq_s32(vdupq_laneq_s32(v300.val[1], 3), vaddq_s32(v309.val[0], v303.val[1]));
                  v309.val[1] = vqtbl2q_s8(v311, xmmword_296B8F030);
                  v49 = xmmword_296B8F0D0;
                  v309.val[0] = vqtbl1q_s8(v79, xmmword_296B8F0E0);
                  v48 = xmmword_296B8F070;
                  v309.val[0] = vqtbl2q_s8(v309, xmmword_296B8F020);
                  v85 = vqtbl2q_s8(*(&v311 + 16), xmmword_296B8F070);
                  v309.val[1] = vqtbl1q_s8(v307.val[0], xmmword_296B8F0D0);
                  v291.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v291.val[1].i8, 1), v291.val[1]), 3), v300.val[0]);
                  v300.val[0] = vqtbl2q_s8(*(&v309 + 16), xmmword_296B8F020);
                  v291.val[0] = vaddq_s32(v291.val[0], vaddq_s32(v76, v305.val[0]));
                  v86 = vqtbl2q_s8(*(&v311 + 16), xmmword_296B8F030);
                  v309.val[1] = vqtbl1q_s8(v307.val[0], xmmword_296B8F0E0);
                  v305.val[0] = vqtbl2q_s8(*(&v309 + 16), xmmword_296B8F020);
                  v303.val[1] = vaddq_s32(vdupq_laneq_s32(v289.val[1], 3), v307.val[1]);
                  v307.val[1] = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                  v87 = vaddq_s32(vshlq_n_s64(v295.val[0], 0x20uLL), v295.val[0]);
                  v88 = vaddq_s32(v84, v305.val[1]);
                  v305.val[1] = vaddq_s32(vshlq_n_s64(v83, 0x20uLL), v83);
                  v300.val[0] = vaddq_s32(vshlq_n_s64(v300.val[0], 0x20uLL), v300.val[0]);
                  v291.val[1] = vaddq_s32(v291.val[1], v300.val[1]);
                  v300.val[1] = vaddq_s32(vshlq_n_s64(v305.val[0], 0x20uLL), v305.val[0]);
                  v89 = vaddq_s32(v303.val[0], v77);
                  v303.val[0] = vaddq_s32(vshlq_n_s64(v309.val[0], 0x20uLL), v309.val[0]);
                  v90 = vaddq_s32(v88, v303.val[1]);
                  v303.val[1] = vaddq_s32(vshlq_n_s64(v295.val[1], 0x20uLL), v295.val[1]);
                  v91 = vdupq_lane_s32(*v87.i8, 1);
                  v289.val[1] = vaddq_s32(v291.val[0], v259);
                  v291.val[0] = vaddq_s32(vshlq_n_s64(v82, 0x20uLL), v82);
                  v92 = vdupq_lane_s32(*v291.val[0].i8, 1);
                  v91.i64[0] = 0;
                  v309.val[1] = vdupq_lane_s32(*v307.val[1].i8, 1);
                  v92.i64[0] = 0;
                  v289.val[1] = vaddq_s32(v90, v289.val[1]);
                  v309.val[1].i64[0] = 0;
                  v47 = vaddq_s32(vdupq_lane_s32(*v303.val[1].i8, 1), v303.val[1]);
                  v289.val[0] = vaddq_s32(vaddq_s32(v291.val[1], v89), v289.val[0]);
                  v38 = vaddq_s32(vdupq_lane_s32(*v303.val[0].i8, 1), v303.val[0]);
                  v46 = vaddq_s32(v289.val[1], vdupq_lane_s32(v264, 0));
                  v289.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v300.val[0].i8, 1), v300.val[0]), 3);
                  v36 = vaddq_s32(v38, vaddq_s32(vdupq_lane_s32(*v305.val[1].i8, 1), v305.val[1]));
                  v37 = vaddq_s32(v47, vaddq_s32(v309.val[1], v307.val[1]));
                  v47.i32[0] = v289.val[0].i32[3];
                  v289.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v300.val[1].i8, 1), v300.val[1]), 3), vaddq_s32(v91, v87)), vaddq_s32(v289.val[1], vaddq_s32(v92, v291.val[0])));
                  v35 = vaddq_s32(v37, v36);
                  v34 = vaddq_s32(v289.val[0], v35);
                  v46.i32[0] = v46.i32[3];
                  v57 = vaddq_s32(v34, vdupq_lane_s32(v261, 0));
                  v56 += 32;
                  v57.i32[0] = v57.i32[3];
                }

                while (v56 <= v32);
                v44 = v32 & 0xFFFFFFE0;
                v40 = v266;
                v39 = 0uLL;
                v45.i64[0] = v57.i64[0];
              }

              else
              {
                v44 = 0;
                v45.i64[0] = 0;
                v46.i64[0] = 0;
                v47.i64[0] = 0;
                v49 = xmmword_296B8F0D0;
                v48 = xmmword_296B8F070;
              }

              if ((v44 | 8) <= v32)
              {
                do
                {
                  v34.i64[0] = *(v281[0] + v44);
                  v35.i64[0] = *(v282 + v281[0] + v44);
                  v36.i64[0] = *(v281[0] + 2 * v282 + v44);
                  v94 = vzip1q_s8(v39, v35);
                  v95 = vzip1q_s8(v36, v34);
                  v96 = vzip1q_s8(v94, v95);
                  v97 = vzip2q_s8(v94, v95);
                  v98 = vaddq_s32(vshlq_n_s64(v96, 0x20uLL), v96);
                  v99 = vaddq_s32(vshlq_n_s64(v97, 0x20uLL), v97);
                  v100 = vdupq_lane_s32(*v99.i8, 1);
                  v101 = vaddq_s32(vdupq_lane_s32(*v98.i8, 1), v98);
                  v102 = vaddq_s32(v100, vaddq_s32(v99, vdupq_lane_s32(*v47.i8, 0)));
                  v102.i64[0] = *(v274[0] + v44);
                  v100.i64[0] = *(v275 + v274[0] + v44);
                  v103 = v102.i32[3] + v101.i32[3];
                  v101.i64[0] = *(v274[0] + 2 * v275 + v44);
                  v104 = vzip1q_s8(v39, v100);
                  v105 = vzip1q_s8(v101, v102);
                  v106 = vzip1q_s8(v104, v105);
                  v107 = vzip2q_s8(v104, v105);
                  v108 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                  v109 = vdupq_lane_s32(*v108.i8, 1);
                  v110 = vaddq_s32(vshlq_n_s64(v106, 0x20uLL), v106);
                  v47 = vdupq_lane_s32(*v110.i8, 1);
                  v111 = vaddq_s32(v47, v110);
                  v46 = vaddq_s32(v109, vaddq_s32(v108, vdupq_lane_s32(*v46.i8, 0)));
                  v47.i32[0] = v103;
                  v108.i64[0] = *(v267[0] + v44);
                  v109.i64[0] = *(v268 + v267[0] + v44);
                  v46.i32[0] = v46.i32[3] + v111.i32[3];
                  v111.i64[0] = *(v267[0] + 2 * v268 + v44);
                  v112 = vzip1q_s8(v39, v109);
                  v113 = vzip1q_s8(v111, v108);
                  v114 = vzip1q_s8(v112, v113);
                  v115 = vzip2q_s8(v112, v113);
                  v34 = vaddq_s32(vshlq_n_s64(v115, 0x20uLL), v115);
                  v35 = vdupq_lane_s32(*v34.i8, 1);
                  v116 = vaddq_s32(vshlq_n_s64(v114, 0x20uLL), v114);
                  v36 = vaddq_s32(vdupq_lane_s32(*v116.i8, 1), v116);
                  v45.i32[0] = vaddq_s32(*&v35, vaddq_s32(*&v34, vdupq_lane_s32(*&v45, 0))).i32[3] + v36.i32[3];
                  v93 = v44 + 8;
                  v117 = v44 + 16;
                  v44 += 8;
                }

                while (v117 <= v32);
              }

              else
              {
                v93 = v44;
              }

              if (v93 <= v32)
              {
                v118 = v32;
              }

              else
              {
                v118 = v93;
              }

              if (v118 + 32 <= v33)
              {
                v121 = v281[0] + 2 * v282;
                v122 = v282 + v281[0];
                v123 = v274[0] + 2 * v275;
                v124 = v275 + v274[0];
                v125 = v267[0] + 2 * v268;
                v126 = v268 + v267[0];
                v127 = a12;
                do
                {
                  v301.val[1] = *(v41 + v118);
                  v290.val[1] = *(v41 + v118 + 16);
                  v301.val[0] = *(v121 + v118);
                  v290.val[0] = *(v121 + v118 + 16);
                  v304.val[1] = vqtbl2q_s8(v301, v48);
                  v128 = *(v122 + v118);
                  v265 = *(v122 + v118 + 16);
                  v304.val[0] = vqtbl1q_s8(v128, v49);
                  v292.val[1] = vqtbl2q_s8(v301, xmmword_296B8F030);
                  v129 = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v292.val[0] = vqtbl1q_s8(v128, xmmword_296B8F0E0);
                  v308.val[1] = vqtbl2q_s8(v290, v48);
                  v308.val[0] = vqtbl1q_s8(v265, v49);
                  v130 = vqtbl2q_s8(v292, xmmword_296B8F020);
                  v310.val[1] = *(v42 + v118);
                  v131 = vaddq_s32(vshlq_n_s64(v129, 0x20uLL), v129);
                  v310.val[0] = *(v123 + v118);
                  v263.val[0] = *(v123 + v118 + 16);
                  v263.val[1] = *(v42 + v118 + 16);
                  v304.val[1] = vqtbl2q_s8(v310, v48);
                  v132 = vdupq_lane_s32(*v131.i8, 1);
                  v262 = *(v124 + v118 + 16);
                  v304.val[0] = vqtbl1q_s8(*(v124 + v118), v49);
                  v304.val[0] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v132.i64[0] = 0;
                  v133 = vaddq_s32(vshlq_n_s64(v304.val[0], 0x20uLL), v304.val[0]);
                  v134 = vdupq_lane_s32(*v133.i8, 1);
                  v134.i64[0] = 0;
                  v253 = vdupq_lane_s32(*v46.i8, 0);
                  v254 = *(v124 + v118);
                  v292.val[1] = *(v43 + v118);
                  v135 = vaddq_s32(v132, v131);
                  v292.val[0] = *(v125 + v118);
                  v260.val[0] = *(v125 + v118 + 16);
                  v260.val[1] = *(v43 + v118 + 16);
                  v258 = v292;
                  v297.val[1] = vqtbl2q_s8(v292, xmmword_296B8F070);
                  v136 = vaddq_s32(v134, v133);
                  v257 = *(v126 + v118 + 16);
                  v297.val[0] = vqtbl1q_s8(*(v126 + v118), xmmword_296B8F0D0);
                  v38 = *(v126 + v118);
                  v250 = v38;
                  v297.val[0] = vqtbl2q_s8(v297, xmmword_296B8F020);
                  v137 = vdupq_lane_s32(*v47.i8, 0);
                  v138 = vaddq_s32(v135, v137);
                  v297.val[1] = vaddq_s32(vshlq_n_s64(v297.val[0], 0x20uLL), v297.val[0]);
                  v139 = vdupq_lane_s32(*v297.val[1].i8, 1);
                  v139.i64[0] = 0;
                  v292.val[0] = vaddq_s32(v136, v253);
                  v297.val[1] = vaddq_s32(v139, v297.val[1]);
                  v140 = vdupq_lane_s32(*v45.i8, 0);
                  v141 = vaddq_s32(v297.val[1], v140);
                  v142 = v140;
                  v249 = v140;
                  v299.val[0] = vzip1q_s32(v266, v292.val[0]);
                  v299.val[1] = vzip1q_s32(v138, v141);
                  v143 = v127;
                  vst2q_f32(v143, v299);
                  v143 += 8;
                  v308.val[1] = vqtbl2q_s8(v308, xmmword_296B8F020);
                  v256 = v290;
                  v299.val[1] = vqtbl2q_s8(v290, xmmword_296B8F030);
                  v299.val[0] = vqtbl1q_s8(v265, xmmword_296B8F0E0);
                  v299.val[0] = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v144 = vqtbl2q_s8(v290, xmmword_296B8F050);
                  v299.val[1] = vqtbl1q_s8(v265, xmmword_296B8F0B0);
                  v145 = vqtbl2q_s8(*(&v299 + 16), xmmword_296B8F020);
                  v288.val[1] = vqtbl2q_s8(v301, xmmword_296B8F000);
                  v288.val[0] = vqtbl1q_s8(v128, xmmword_296B8F0C0);
                  v301.val[1] = vqtbl2q_s8(v301, xmmword_296B8F050);
                  v301.val[0] = vqtbl1q_s8(v128, xmmword_296B8F0B0);
                  v288.val[0] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v288.val[1] = vqtbl2q_s8(v301, xmmword_296B8F020);
                  v308.val[0] = vaddq_s32(vshlq_n_s64(v130, 0x20uLL), v130);
                  v301.val[1] = vaddq_s32(vshlq_n_s64(v308.val[1], 0x20uLL), v308.val[1]);
                  v308.val[1] = vaddq_s32(vshlq_n_s64(v299.val[0], 0x20uLL), v299.val[0]);
                  v288.val[0] = vaddq_s32(vshlq_n_s64(v288.val[0], 0x20uLL), v288.val[0]);
                  v288.val[1] = vaddq_s32(vshlq_n_s64(v288.val[1], 0x20uLL), v288.val[1]);
                  v301.val[0] = vdupq_lane_s32(*v288.val[1].i8, 1);
                  v301.val[0].i64[0] = 0;
                  v146 = vdupq_lane_s32(*v288.val[0].i8, 1);
                  v147 = vaddq_s32(vshlq_n_s64(v145, 0x20uLL), v145);
                  v288.val[1] = vaddq_s32(v301.val[0], v288.val[1]);
                  v301.val[0] = vdupq_lane_s32(*v147.i8, 1);
                  v146.i64[0] = 0;
                  v148 = v127 + 16;
                  v149 = vaddq_s32(v146, v288.val[0]);
                  v288.val[0] = vdupq_lane_s32(*v308.val[1].i8, 1);
                  v288.val[0].i64[0] = 0;
                  v301.val[0].i64[0] = 0;
                  v299.val[0] = vaddq_s32(v301.val[0], v147);
                  v252 = vaddq_s32(v288.val[0], v308.val[1]);
                  v150 = vqtbl2q_s8(v310, xmmword_296B8F050);
                  v299.val[1] = vqtbl1q_s8(v254, xmmword_296B8F0B0);
                  v288.val[0] = vqtbl2q_s8(*(&v299 + 16), xmmword_296B8F020);
                  v151 = vdupq_lane_s32(*v301.val[1].i8, 1);
                  v308.val[1] = vaddq_s32(vdupq_laneq_s32(v135, 3), v288.val[1]);
                  v288.val[0] = vaddq_s32(vshlq_n_s64(v288.val[0], 0x20uLL), v288.val[0]);
                  v288.val[1] = vdupq_lane_s32(*v288.val[0].i8, 1);
                  v151.i64[0] = 0;
                  v288.val[1].i64[0] = 0;
                  v152 = vaddq_s32(vdupq_laneq_s32(v136, 3), vaddq_s32(v288.val[1], v288.val[0]));
                  v288.val[0] = v258.val[0];
                  v288.val[1] = v292.val[1];
                  v288.val[1] = vqtbl2q_s8(v288, xmmword_296B8F050);
                  v288.val[0] = vqtbl1q_s8(v38, xmmword_296B8F0B0);
                  v288.val[0] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v288.val[0] = vaddq_s32(vshlq_n_s64(v288.val[0], 0x20uLL), v288.val[0]);
                  v294.val[0] = vzip2q_s32(v266, v292.val[0]);
                  v294.val[1] = vzip2q_s32(v138, v141);
                  v288.val[1] = vdupq_lane_s32(*v288.val[0].i8, 1);
                  v288.val[1].i64[0] = 0;
                  v153 = vaddq_s32(v308.val[1], v137);
                  v301.val[0] = vaddq_s32(v152, v253);
                  v154 = vaddq_s32(vdupq_laneq_s32(v297.val[1], 3), vaddq_s32(v288.val[1], v288.val[0]));
                  v292.val[1] = vaddq_s32(v154, v142);
                  vst2q_f32(v143, v294);
                  v294.val[0] = vzip1q_s32(v266, v301.val[0]);
                  v294.val[1] = vzip1q_s32(v153, v292.val[1]);
                  vst2q_f32(v148, v294);
                  v294.val[1] = vqtbl2q_s8(v310, xmmword_296B8F030);
                  v251 = vaddq_s32(v151, v301.val[1]);
                  v294.val[0] = vqtbl1q_s8(v254, xmmword_296B8F0E0);
                  v155 = vqtbl2q_s8(v294, xmmword_296B8F020);
                  v288.val[1] = v263.val[0];
                  v156 = v263.val[1];
                  v294.val[1] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F070);
                  v294.val[0] = vqtbl1q_s8(v262, xmmword_296B8F0D0);
                  v294.val[0] = vqtbl2q_s8(v294, xmmword_296B8F020);
                  v297.val[1] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F030);
                  v297.val[0] = vqtbl1q_s8(v262, xmmword_296B8F0E0);
                  v294.val[1] = vqtbl2q_s8(v297, xmmword_296B8F020);
                  v297.val[1] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F050);
                  v297.val[0] = vqtbl1q_s8(v262, xmmword_296B8F0B0);
                  v297.val[0] = vqtbl2q_s8(v297, xmmword_296B8F020);
                  v310.val[1] = vqtbl2q_s8(v310, xmmword_296B8F000);
                  v310.val[0] = vqtbl1q_s8(v254, xmmword_296B8F0C0);
                  v157 = vdupq_lane_s32(*v308.val[0].i8, 1);
                  v157.i64[0] = 0;
                  v158 = vaddq_s32(v157, v308.val[0]);
                  v159 = v127 + 24;
                  v160 = v127 + 32;
                  v161 = v127 + 40;
                  v162 = v127 + 48;
                  v308.val[0] = vqtbl2q_s8(v310, xmmword_296B8F020);
                  v163 = vaddq_s32(vshlq_n_s64(v155, 0x20uLL), v155);
                  v310.val[0] = vaddq_s32(vshlq_n_s64(v294.val[0], 0x20uLL), v294.val[0]);
                  v310.val[1] = vaddq_s32(vshlq_n_s64(v294.val[1], 0x20uLL), v294.val[1]);
                  v294.val[0] = vaddq_s32(vshlq_n_s64(v297.val[0], 0x20uLL), v297.val[0]);
                  v294.val[1] = vaddq_s32(vshlq_n_s64(v308.val[0], 0x20uLL), v308.val[0]);
                  v255 = vaddq_s32(vdupq_laneq_s32(v251, 3), v299.val[0]);
                  v297.val[0] = vzip2q_s32(v266, v301.val[0]);
                  v297.val[1] = vzip2q_s32(v153, v292.val[1]);
                  v288.val[0] = vdupq_lane_s32(*v294.val[1].f32, 1);
                  v288.val[1] = vdupq_lane_s32(*v294.val[0].f32, 1);
                  v164 = v127 + 56;
                  v288.val[0].i64[0] = 0;
                  v288.val[0] = vaddq_s32(v288.val[0], v294.val[1]);
                  v294.val[1] = vdupq_laneq_s32(v158, 3);
                  v288.val[1].i64[0] = 0;
                  v288.val[1] = vaddq_s32(v288.val[1], v294.val[0]);
                  v294.val[0] = vdupq_lane_s32(*v310.val[0].i8, 1);
                  v165 = vaddq_s32(v158, v137);
                  v294.val[0].i64[0] = 0;
                  v166 = vaddq_s32(v294.val[0], v310.val[0]);
                  v310.val[0] = vdupq_lane_s32(*v310.val[1].i8, 1);
                  v167 = vaddq_s32(v294.val[1], v149);
                  v294.val[0] = vdupq_lane_s32(*v163.i8, 1);
                  v294.val[0].i64[0] = 0;
                  v294.val[1] = vdupq_laneq_s32(v308.val[1], 3);
                  v310.val[0].i64[0] = 0;
                  vst2q_f32(v159, v297);
                  v168 = vaddq_s32(v294.val[0], v163);
                  v297.val[1] = vaddq_s32(v167, v294.val[1]);
                  v169 = vaddq_s32(v310.val[0], v310.val[1]);
                  v310.val[1] = vaddq_s32(vdupq_laneq_s32(v166, 3), v288.val[1]);
                  v288.val[1] = vdupq_laneq_s32(v152, 3);
                  v294.val[0] = vaddq_s32(v165, v294.val[1]);
                  v310.val[0] = vqtbl2q_s8(v258, xmmword_296B8F030);
                  v308.val[1] = vqtbl1q_s8(v38, xmmword_296B8F0E0);
                  v308.val[1] = vqtbl2q_s8(*(&v308 + 16), xmmword_296B8F020);
                  v301.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v168, 3), v288.val[0]), v288.val[1]);
                  v308.val[1] = vaddq_s32(vshlq_n_s64(v308.val[1], 0x20uLL), v308.val[1]);
                  v310.val[0] = vdupq_lane_s32(*v308.val[1].i8, 1);
                  v310.val[0].i64[0] = 0;
                  v288.val[1] = vaddq_s32(vaddq_s32(v168, v253), v288.val[1]);
                  v170 = vqtbl2q_s8(v260, xmmword_296B8F070);
                  v171 = vaddq_s32(v310.val[0], v308.val[1]);
                  v172 = vdupq_laneq_s32(v154, 3);
                  v297.val[0] = vaddq_s32(vaddq_s32(v171, v249), v172);
                  v308.val[1] = vzip1q_s32(v266, v288.val[1]);
                  v310.val[0] = vzip1q_s32(v294.val[0], v297.val[0]);
                  vst2q_f32(v160, *(&v308 + 16));
                  v294.val[1] = vqtbl1q_s8(v257, xmmword_296B8F0D0);
                  v294.val[1] = vqtbl2q_s8(*(&v294 + 16), xmmword_296B8F020);
                  v299.val[0] = vqtbl2q_s8(v260, xmmword_296B8F030);
                  v173 = vqtbl1q_s8(v257, xmmword_296B8F0E0);
                  v310.val[0] = vdupq_laneq_s32(v255, 3);
                  v174 = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v308.val[1] = vdupq_laneq_s32(v310.val[1], 3);
                  v38.i64[1] = 0x1FFF0FFF1EFF0EFFLL;
                  v312.val[1] = vqtbl2q_s8(v258, xmmword_296B8F000);
                  v312.val[0] = vqtbl1q_s8(v250, xmmword_296B8F0C0);
                  v312.val[0] = vqtbl2q_s8(v312, xmmword_296B8F020);
                  v312.val[0] = vaddq_s32(vshlq_n_s64(v312.val[0], 0x20uLL), v312.val[0]);
                  v175 = vzip2q_s32(v266, v288.val[1]);
                  v299.val[0] = vzip2q_s32(v294.val[0], v297.val[0]);
                  v288.val[1] = vaddq_s32(v297.val[1], v137);
                  v312.val[1] = vdupq_lane_s32(*v312.val[0].i8, 1);
                  v312.val[1].i64[0] = 0;
                  v312.val[0] = vaddq_s32(v312.val[1], v312.val[0]);
                  v312.val[1] = vaddq_s32(v301.val[0], v253);
                  vst2q_f32(v161, v299);
                  v176 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v171, 3), v312.val[0]), v172);
                  v177 = vaddq_s32(v176, v249);
                  v178 = vzip2q_s32(v266, v312.val[1]);
                  v299.val[0] = vzip2q_s32(v288.val[1], v177);
                  v312.val[0] = vzip1q_s32(v266, v312.val[1]);
                  v312.val[1] = vzip1q_s32(v288.val[1], v177);
                  v290.val[1] = vqtbl2q_s8(v260, xmmword_296B8F050);
                  v290.val[0] = vqtbl1q_s8(v257, xmmword_296B8F0B0);
                  v288.val[1] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v179 = vdupq_laneq_s32(v297.val[1], 3);
                  v290.val[0] = vaddq_s32(vshlq_n_s64(v294.val[1], 0x20uLL), v294.val[1]);
                  v290.val[1] = vaddq_s32(vshlq_n_s64(v174, 0x20uLL), v174);
                  v180 = v137;
                  v288.val[1] = vaddq_s32(vshlq_n_s64(v288.val[1], 0x20uLL), v288.val[1]);
                  vst2q_f32(v162, v312);
                  v312.val[1] = vdupq_lane_s32(*v288.val[1].i8, 1);
                  v294.val[1] = vdupq_lane_s32(*v290.val[1].i8, 1);
                  v312.val[0] = vdupq_laneq_s32(v301.val[0], 3);
                  v312.val[1].i64[0] = 0;
                  v288.val[0] = vaddq_s32(v312.val[1], v288.val[1]);
                  v288.val[1] = vdupq_lane_s32(*v290.val[0].i8, 1);
                  v288.val[1].i64[0] = 0;
                  v294.val[1].i64[0] = 0;
                  v288.val[1] = vaddq_s32(v288.val[1], v290.val[0]);
                  v290.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v252, v310.val[0]), v137), v179);
                  v288.val[0] = vaddq_s32(vdupq_laneq_s32(v288.val[1], 3), v288.val[0]);
                  v312.val[1] = vdupq_laneq_s32(v288.val[0], 3);
                  v297.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v169, v308.val[1]), v253), v312.val[0]);
                  v181 = vaddq_s32(v294.val[1], v290.val[1]);
                  v182 = vdupq_laneq_s32(v176, 3);
                  v290.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v181, v312.val[1]), v249), v182);
                  vst2q_f32(v164, v299);
                  v294.val[0] = vzip2q_s32(v266, v297.val[0]);
                  v294.val[1] = vzip2q_s32(v290.val[0], v290.val[1]);
                  v297.val[0] = vzip1q_s32(v266, v297.val[0]);
                  v297.val[1] = vzip1q_s32(v290.val[0], v290.val[1]);
                  v290.val[0] = vaddq_s32(vaddq_s32(v251, v180), v179);
                  v290.val[1] = vaddq_s32(vaddq_s32(v166, v253), v312.val[0]);
                  v288.val[1] = vaddq_s32(vaddq_s32(v288.val[1], v249), v182);
                  v183 = vzip2q_s32(v266, v290.val[1]);
                  v45 = vzip2q_s32(v290.val[0], v288.val[1]);
                  v299.val[1] = vzip1q_s32(v266, v290.val[1]);
                  v37 = vzip1q_s32(v290.val[0], v288.val[1]);
                  v184 = v127 + 64;
                  vst2q_f32(v184, *(&v37 - 1));
                  v185 = v127 + 72;
                  v186 = v127 + 80;
                  v288.val[1] = vaddq_s32(vaddq_s32(v255, v180), v179);
                  v290.val[0] = vaddq_s32(vaddq_s32(v310.val[1], v253), v312.val[0]);
                  v288.val[0] = vaddq_s32(vaddq_s32(v288.val[0], v249), v182);
                  vst2q_f32(v185, *(&v45 - 1));
                  v40 = v266;
                  v37.i64[1] = 0x1F0E1D0C1B0A1908;
                  v310.val[1] = vzip1q_s32(v266, v290.val[0]);
                  v187 = vzip1q_s32(v288.val[1], v288.val[0]);
                  vst2q_f32(v186, *(&v310 + 16));
                  v290.val[0] = vzip2q_s32(v266, v290.val[0]);
                  v290.val[1] = vzip2q_s32(v288.val[1], v288.val[0]);
                  v188 = v127 + 88;
                  vst2q_f32(v188, v290);
                  v189 = v127 + 96;
                  vst2q_f32(v189, v297);
                  v49 = xmmword_296B8F0D0;
                  v288.val[1] = vqtbl2q_s8(v256, xmmword_296B8F000);
                  v288.val[0] = vqtbl1q_s8(v265, xmmword_296B8F0C0);
                  v288.val[0] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v288.val[0] = vaddq_s32(vshlq_n_s64(v288.val[0], 0x20uLL), v288.val[0]);
                  v288.val[1] = vdupq_lane_s32(*v288.val[0].i8, 1);
                  v288.val[1].i64[0] = 0;
                  v288.val[0] = vaddq_s32(vdupq_laneq_s32(v252, 3), vaddq_s32(v288.val[1], v288.val[0]));
                  v290.val[1] = vqtbl2q_s8(v263, xmmword_296B8F000);
                  v290.val[0] = vqtbl1q_s8(v262, xmmword_296B8F0C0);
                  v288.val[1] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v288.val[1] = vaddq_s32(vshlq_n_s64(v288.val[1], 0x20uLL), v288.val[1]);
                  v290.val[0] = vdupq_lane_s32(*v288.val[1].i8, 1);
                  v290.val[0].i64[0] = 0;
                  v288.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v169, 3), vaddq_s32(v290.val[0], v288.val[1])), v308.val[1]), v253);
                  v288.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v288.val[0], v310.val[0]), v180), v179);
                  v190 = v260.val[0];
                  v290.val[0] = v260.val[1];
                  v290.val[0] = vqtbl2q_s8(v290, xmmword_296B8F000);
                  v191 = vqtbl1q_s8(v257, xmmword_296B8F0C0);
                  v192 = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v193 = vaddq_s32(vshlq_n_s64(v192, 0x20uLL), v192);
                  v46 = vaddq_s32(v288.val[1], v312.val[0]);
                  v290.val[0] = vdupq_lane_s32(*v193.i8, 1);
                  v290.val[0].i64[0] = 0;
                  v34 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v181, 3), vaddq_s32(v290.val[0], v193)), v312.val[1]), v249), v182);
                  v194 = v127 + 104;
                  v195 = v127 + 112;
                  v196 = v127 + 120;
                  vst2q_f32(v194, v294);
                  v48 = xmmword_296B8F070;
                  v290.val[0] = vzip1q_s32(v266, v46);
                  v290.val[1] = vzip1q_s32(v288.val[0], v34);
                  vst2q_f32(v195, v290);
                  v35 = vzip2q_s32(v266, v46);
                  v36 = vzip2q_s32(v288.val[0], v34);
                  vst2q_f32(v196, *v35.i8);
                  v120 = v127 + 128;
                  v119 = v118 + 32;
                  v197 = v118 + 64;
                  v47.i64[0] = __PAIR64__(v253.u32[1], v288.val[0].u32[3]);
                  v118 += 32;
                  v46.i32[0] = v46.i32[3];
                  v127 += 128;
                  v45.i32[0] = v34.i32[3];
                }

                while (v197 <= v33);
              }

              else
              {
                v119 = v118;
                v120 = a12;
              }

              if (v119 + 8 <= v33)
              {
                v199 = v41 + 2 * v282;
                v200 = v282 + v41;
                v201 = v42 + 2 * v275;
                v202 = v275 + v42;
                v203 = v43 + 2 * v268;
                v204 = v268 + v43;
                do
                {
                  v34.i64[0] = *(v41 + v119);
                  v35.i64[0] = *(v200 + v119);
                  v36.i64[0] = *(v199 + v119);
                  v205 = vzip1q_s8(0, v35);
                  v206 = vzip1q_s8(v36, v34);
                  v207 = vzip1q_s8(v205, v206);
                  v208 = vzip2q_s8(v205, v206);
                  v209 = vshlq_n_s64(v208, 0x20uLL);
                  v210 = vshlq_n_s64(v207, 0x20uLL);
                  v211 = vaddq_s32(v210, v207);
                  v212 = vdupq_lane_s32(*v47.i8, 0);
                  v213 = vaddq_s32(v209, v208);
                  v209.i64[0] = *(v42 + v119);
                  v210.i64[0] = *(v202 + v119);
                  v214 = vdupq_lane_s32(*v213.i8, 1);
                  v37.i64[0] = *(v201 + v119);
                  v215 = vzip1q_s8(0, v210);
                  v216 = vzip1q_s8(v37, v209);
                  v217 = vdupq_lane_s32(*v211.i8, 1);
                  v218 = vzip1q_s8(v215, v216);
                  v219 = vzip2q_s8(v215, v216);
                  v217.i64[0] = 0;
                  v220 = vaddq_s32(vshlq_n_s64(v218, 0x20uLL), v218);
                  v221 = vaddq_s32(vshlq_n_s64(v219, 0x20uLL), v219);
                  v222 = vdupq_lane_s32(*v221.i8, 1);
                  v214.i64[0] = 0;
                  v223 = vdupq_lane_s32(*v220.i8, 1);
                  v223.i64[0] = 0;
                  v222.i64[0] = 0;
                  v224 = vdupq_lane_s32(*v46.i8, 0);
                  v38.i64[0] = *(v43 + v119);
                  v225 = vaddq_s32(v217, v211);
                  v226 = vaddq_s32(v214, vaddq_s32(v213, v212));
                  v214.i64[0] = *(v204 + v119);
                  v217.i64[0] = *(v203 + v119);
                  v227 = vaddq_s32(v223, v220);
                  v228 = vzip1q_s8(0, v214);
                  v229 = vzip1q_s8(v217, v38);
                  v230 = vzip1q_s8(v228, v229);
                  v38 = vdupq_laneq_s32(v225, 3);
                  v231 = vzip2q_s8(v228, v229);
                  v232 = vaddq_s32(vshlq_n_s64(v230, 0x20uLL), v230);
                  v233 = vaddq_s32(vshlq_n_s64(v231, 0x20uLL), v231);
                  v234 = vaddq_s32(v225, v212);
                  v47 = vdupq_lane_s32(*v233.i8, 1);
                  v235 = vdupq_lane_s32(*v232.i8, 1);
                  v236 = vdupq_laneq_s32(v227, 3);
                  v237 = vaddq_s32(v222, vaddq_s32(v221, v224));
                  v235.i64[0] = 0;
                  v47.i64[0] = 0;
                  v46 = vaddq_s32(v227, v224);
                  v238 = vaddq_s32(v235, v232);
                  v37 = vdupq_laneq_s32(v238, 3);
                  v239 = vdupq_lane_s32(*v45.i8, 0);
                  v34 = vaddq_s32(v226, v38);
                  v240 = vaddq_s32(v238, v239);
                  v302.val[0] = vzip2q_s32(v40, v46);
                  v306.val[0] = vzip1q_s32(v40, v46);
                  v241 = vaddq_s32(v237, v236);
                  v306.val[1] = vzip1q_s32(v234, v240);
                  v198 = v120 + 32;
                  v242 = v120 + 16;
                  v243 = v120 + 24;
                  v244 = vaddq_s32(vaddq_s32(v47, vaddq_s32(v233, v239)), v37);
                  vst2q_f32(v120, v306);
                  v245 = v120 + 8;
                  v47.i32[0] = v34.i32[3];
                  v302.val[1] = vzip2q_s32(v234, v240);
                  vst2q_f32(v245, v302);
                  v46.i32[0] = v241.i32[3];
                  v293.val[0] = vzip1q_s32(v40, v241);
                  v293.val[1] = vzip1q_s32(v34, v244);
                  vst2q_f32(v242, v293);
                  v35 = vzip2q_s32(v40, v241);
                  v36 = vzip2q_s32(v34, v244);
                  vst2q_f32(v243, *v35.i8);
                  v45.i32[0] = v244.i32[3];
                  result = v119 + 8;
                  v246 = v119 + 16;
                  v119 += 8;
                  v120 = v198;
                }

                while (v246 <= v33);
              }

              else
              {
                result = v119;
                v198 = v120;
              }

              if (result < v33)
              {
                do
                {
                  LODWORD(v247) = v248.i32[0];
                  DWORD1(v247) = ((*(v281[0] + result) << 24) | (*(v281[0] + result + v282) << 16) | (*(v281[0] + result + 2 * v282) << 8)) + v47.i32[0];
                  DWORD2(v247) = ((*(v274[0] + result) << 24) | (*(v274[0] + result + v275) << 16) | (*(v274[0] + result + 2 * v275) << 8)) + v46.i32[0];
                  HIDWORD(v247) = ((*(v267[0] + result) << 24) | (*(v267[0] + result + v268) << 16) | (*(v267[0] + result + 2 * v268) << 8)) + v45.i32[0];
                  *v198 = v247;
                  v198 += 4;
                  ++result;
                }

                while (v33 != result);
              }
            }
          }
        }

        a12 = (a12 + a13);
        v29 += a11;
      }

      while (v29 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = *(a2 + 56);
    v380 = 4;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v378 = v20.i32[0];
    v376 = v19;
    v374[1] = result;
    v377 = a3[6].i32[1] + v20.i32[1] * HIDWORD(v18);
    v21 = a3[7].u32[1];
    v375 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v379 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v374);
    v373 = 4;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v371 = v23.i32[0];
    v369 = v22;
    v367[1] = v17;
    v370 = a3[6].i32[1] + v23.i32[1] * HIDWORD(v18);
    v24 = a3[7].u32[1];
    v368 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v372 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v367);
    v366 = 4;
    v25 = *(a6 + 8);
    v26 = a3[3];
    v364 = v26.i32[0];
    v362 = v25;
    v360[1] = v17;
    v363 = a3[6].i32[1] + v26.i32[1] * HIDWORD(v18);
    v27 = a3[7].u32[1];
    v361 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v365 = v27;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v360);
    v359 = 4;
    v28 = *(a7 + 8);
    v29 = HIDWORD(v18);
    v30 = a3[3];
    v357 = v30.i32[0];
    v355 = v28;
    v353[1] = v17;
    v356 = a3[6].i32[1] + v30.i32[1] * HIDWORD(v18);
    v31 = a3[7].u32[1];
    v354 = vmin_u32(vmls_s32(*(*(*&v28[5] + 8 * v31) + 16), v28[6], v30), v28[6]).u32[0];
    v358 = v31;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v353);
    v32 = a3[6].u32[1];
    if (a3[7].u32[0] + v32 < HIDWORD(v18))
    {
      v296 = a3[3].i32[1] * *(a2 + 60);
      v35 = a3[5].u32[1];
      v36 = v35 + a9;
      v37 = a10;
      do
      {
        v377 = v296 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v374);
        v370 = v296 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v367);
        v363 = v296 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v360);
        v356 = v296 + v32;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v353);
        v47 = v374[0];
        if (v374[0])
        {
          v48 = v367[0];
          if (v367[0])
          {
            v49 = v360[0];
            if (v360[0])
            {
              v50 = v353[0];
              if (v353[0])
              {
                v294 = a12;
                v295 = v29;
                v293 = v37;
                if (v35 >= 0x20)
                {
                  v54 = 0;
                  v53 = 0;
                  v52 = 0;
                  v51 = 0;
                  v61 = v375 + v374[0];
                  v62 = v375 + v374[0] + 2 * v375;
                  result = v374[0] + 2 * v375;
                  v63 = v368 + v367[0];
                  v64 = v368 + v367[0] + 2 * v368;
                  v65 = v367[0] + 2 * v368;
                  v66 = v361 + v360[0];
                  v67 = v361 + v360[0] + 2 * v361;
                  v68 = v360[0] + 2 * v361;
                  v69 = v354 + v353[0];
                  v70 = v354 + v353[0] + 2 * v354;
                  v71 = 32;
                  v72 = v353[0] + 2 * v354;
                  v57 = xmmword_296B8F010;
                  v56 = xmmword_296B8F000;
                  v58 = xmmword_296B8F030;
                  v59 = xmmword_296B8F020;
                  v60 = xmmword_296B8F040;
                  do
                  {
                    v384.val[1] = *(v374[0] + v71 - 32);
                    v386.val[1] = *(v374[0] + v71 - 16);
                    v381.val[1] = *(v61 + v71 - 32);
                    v388.val[1] = *(v61 + v71 - 16);
                    v384.val[0] = *(result + v71 - 32);
                    v386.val[0] = *(result + v71 - 16);
                    v391.val[1] = vqtbl2q_s8(v386, v56);
                    v381.val[0] = *(v62 + v71 - 32);
                    v388.val[0] = *(v62 + v71 - 16);
                    v391.val[0] = vqtbl2q_s8(v388, v57);
                    v349.val[0] = vqtbl2q_s8(v388, v60);
                    v349.val[1] = vqtbl2q_s8(v386, v58);
                    v346.val[0] = vqtbl2q_s8(v388, xmmword_296B8F060);
                    v346.val[1] = vqtbl2q_s8(v386, xmmword_296B8F050);
                    v344.val[0] = vqtbl2q_s8(v388, xmmword_296B8F080);
                    v344.val[1] = vqtbl2q_s8(v386, xmmword_296B8F070);
                    v342.val[0] = vqtbl2q_s8(v381, xmmword_296B8F060);
                    v342.val[1] = vqtbl2q_s8(v384, xmmword_296B8F050);
                    v340.val[0] = vqtbl2q_s8(v381, xmmword_296B8F080);
                    v340.val[1] = vqtbl2q_s8(v384, xmmword_296B8F070);
                    v338.val[0] = vqtbl2q_s8(v381, v57);
                    v338.val[1] = vqtbl2q_s8(v384, v56);
                    v73 = vqtbl2q_s8(v384, v58);
                    v384.val[1] = *(v367[0] + v71 - 32);
                    v386.val[1] = *(v367[0] + v71 - 16);
                    v392.val[1] = *(v63 + v71 - 32);
                    v388.val[1] = *(v63 + v71 - 16);
                    v323 = vqtbl2q_s8(v381, v60);
                    v325 = v73;
                    v384.val[0] = *(v65 + v71 - 32);
                    v386.val[0] = *(v65 + v71 - 16);
                    v392.val[0] = *(v64 + v71 - 32);
                    v388.val[0] = *(v64 + v71 - 16);
                    v335.val[0] = vqtbl2q_s8(v388, v57);
                    v335.val[1] = vqtbl2q_s8(v386, v56);
                    v333.val[0] = vqtbl2q_s8(v388, v60);
                    v333.val[1] = vqtbl2q_s8(v386, v58);
                    v331.val[0] = vqtbl2q_s8(v388, xmmword_296B8F060);
                    v331.val[1] = vqtbl2q_s8(v386, xmmword_296B8F050);
                    v329.val[0] = vqtbl2q_s8(v388, xmmword_296B8F080);
                    v329.val[1] = vqtbl2q_s8(v386, xmmword_296B8F070);
                    v327.val[0] = vqtbl2q_s8(v392, xmmword_296B8F060);
                    v327.val[1] = vqtbl2q_s8(v384, xmmword_296B8F050);
                    v320.val[0] = vqtbl2q_s8(v392, xmmword_296B8F080);
                    v320.val[1] = vqtbl2q_s8(v384, xmmword_296B8F070);
                    v318.val[0] = vqtbl2q_s8(v392, v57);
                    v318.val[1] = vqtbl2q_s8(v384, v56);
                    v316.val[0] = vqtbl2q_s8(v392, v60);
                    v316.val[1] = vqtbl2q_s8(v384, v58);
                    v384.val[1] = *(v360[0] + v71 - 32);
                    v381.val[1] = *(v360[0] + v71 - 16);
                    v381.val[0] = *(v68 + v71 - 16);
                    v388.val[1] = *(v66 + v71 - 32);
                    v386.val[1] = *(v66 + v71 - 16);
                    v388.val[0] = *(v67 + v71 - 32);
                    v386.val[0] = *(v67 + v71 - 16);
                    v314.val[0] = vqtbl2q_s8(v386, v57);
                    v314.val[1] = vqtbl2q_s8(v381, v56);
                    v312.val[0] = vqtbl2q_s8(v386, v60);
                    v312.val[1] = vqtbl2q_s8(v381, v58);
                    v310.val[0] = vqtbl2q_s8(v386, xmmword_296B8F060);
                    v310.val[1] = vqtbl2q_s8(v381, xmmword_296B8F050);
                    v307 = vqtbl2q_s8(v386, xmmword_296B8F080);
                    v309 = vqtbl2q_s8(v381, xmmword_296B8F070);
                    v384.val[0] = *(v68 + v71 - 32);
                    v305.val[0] = vqtbl2q_s8(v388, xmmword_296B8F060);
                    v305.val[1] = vqtbl2q_s8(v384, xmmword_296B8F050);
                    v302 = vqtbl2q_s8(v388, xmmword_296B8F080);
                    v304 = vqtbl2q_s8(v384, xmmword_296B8F070);
                    v299 = vqtbl2q_s8(v388, v57);
                    v301 = vqtbl2q_s8(v384, v56);
                    v298.val[0] = vqtbl2q_s8(v388, v60);
                    v298.val[1] = vqtbl2q_s8(v384, v58);
                    v384.val[1] = *(v353[0] + v71 - 32);
                    v381.val[1] = *(v353[0] + v71 - 16);
                    v384.val[0] = *(v72 + v71 - 32);
                    v381.val[0] = *(v72 + v71 - 16);
                    v406.val[1] = *(v69 + v71 - 32);
                    v386.val[1] = *(v69 + v71 - 16);
                    v406.val[0] = *(v70 + v71 - 32);
                    v386.val[0] = *(v70 + v71 - 16);
                    v297.val[0] = vqtbl2q_s8(v386, v57);
                    v297.val[1] = vqtbl2q_s8(v381, v56);
                    v404.val[1] = vqtbl2q_s8(v381, xmmword_296B8F030);
                    v404.val[0] = vqtbl2q_s8(v386, xmmword_296B8F040);
                    v402.val[1] = vqtbl2q_s8(v381, xmmword_296B8F050);
                    v402.val[0] = vqtbl2q_s8(v386, xmmword_296B8F060);
                    v401.val[1] = vqtbl2q_s8(v381, xmmword_296B8F070);
                    v401.val[0] = vqtbl2q_s8(v386, xmmword_296B8F080);
                    v399.val[1] = vqtbl2q_s8(v384, xmmword_296B8F050);
                    v399.val[0] = vqtbl2q_s8(v406, xmmword_296B8F060);
                    v397.val[1] = vqtbl2q_s8(v384, xmmword_296B8F070);
                    v397.val[0] = vqtbl2q_s8(v406, xmmword_296B8F080);
                    v395.val[1] = vqtbl2q_s8(v384, v56);
                    v395.val[0] = vqtbl2q_s8(v406, v57);
                    v392.val[1] = vqtbl2q_s8(v384, xmmword_296B8F030);
                    v392.val[0] = vqtbl2q_s8(v406, xmmword_296B8F040);
                    v384.val[0] = vqtbl2q_s8(v391, v59);
                    v384.val[1] = vqtbl2q_s8(v349, v59);
                    v406.val[0] = vqtbl2q_s8(v346, v59);
                    v406.val[1] = vqtbl2q_s8(v344, v59);
                    v381.val[0] = vqtbl2q_s8(v342, v59);
                    v381.val[1] = vqtbl2q_s8(v340, v59);
                    v386.val[0] = vqtbl2q_s8(v338, v59);
                    v386.val[1] = v323;
                    v388.val[0] = v325;
                    v388.val[1] = vqtbl2q_s8(*(&v386 + 16), v59);
                    v384.val[0] = vaddq_s32(vshlq_n_s64(v384.val[0], 0x20uLL), v384.val[0]);
                    v384.val[1] = vaddq_s32(vshlq_n_s64(v384.val[1], 0x20uLL), v384.val[1]);
                    v406.val[0] = vaddq_s32(vshlq_n_s64(v406.val[0], 0x20uLL), v406.val[0]);
                    v406.val[1] = vaddq_s32(vshlq_n_s64(v406.val[1], 0x20uLL), v406.val[1]);
                    v381.val[0] = vaddq_s32(vshlq_n_s64(v381.val[0], 0x20uLL), v381.val[0]);
                    v381.val[1] = vaddq_s32(vshlq_n_s64(v381.val[1], 0x20uLL), v381.val[1]);
                    v386.val[0] = vaddq_s32(vshlq_n_s64(v386.val[0], 0x20uLL), v386.val[0]);
                    v388.val[1] = vaddq_s32(vshlq_n_s64(v388.val[1], 0x20uLL), v388.val[1]);
                    v391.val[1] = vaddq_s32(vdupq_lane_s32(*v384.val[0].i8, 1), v384.val[0]);
                    v386.val[1] = vaddq_s32(vdupq_lane_s32(*v384.val[1].i8, 1), v384.val[1]);
                    v74 = vaddq_s32(vdupq_lane_s32(*v406.val[1].i8, 1), v406.val[1]);
                    v384.val[1] = vaddq_s32(vdupq_lane_s32(*v381.val[0].i8, 1), v381.val[0]);
                    v349.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v388.val[1].i8, 1), v388.val[1]), vaddq_s32(vdupq_lane_s32(*v386.val[0].i8, 1), v386.val[0]));
                    v386.val[0] = vqtbl2q_s8(v335, xmmword_296B8F020);
                    v388.val[1] = vqtbl2q_s8(v333, xmmword_296B8F020);
                    v406.val[1] = vqtbl2q_s8(v331, xmmword_296B8F020);
                    v381.val[0] = vqtbl2q_s8(v329, xmmword_296B8F020);
                    v388.val[0] = vqtbl2q_s8(v327, xmmword_296B8F020);
                    v384.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v381.val[1].i8, 1), v381.val[1]), v384.val[1]);
                    v384.val[1] = vqtbl2q_s8(v320, xmmword_296B8F020);
                    v381.val[1] = vqtbl2q_s8(v318, xmmword_296B8F020);
                    v391.val[0] = vqtbl2q_s8(v316, xmmword_296B8F020);
                    v386.val[0] = vaddq_s32(vshlq_n_s64(v386.val[0], 0x20uLL), v386.val[0]);
                    v388.val[1] = vaddq_s32(vshlq_n_s64(v388.val[1], 0x20uLL), v388.val[1]);
                    v406.val[1] = vaddq_s32(vshlq_n_s64(v406.val[1], 0x20uLL), v406.val[1]);
                    v381.val[0] = vaddq_s32(vshlq_n_s64(v381.val[0], 0x20uLL), v381.val[0]);
                    v388.val[0] = vaddq_s32(vshlq_n_s64(v388.val[0], 0x20uLL), v388.val[0]);
                    v384.val[1] = vaddq_s32(vshlq_n_s64(v384.val[1], 0x20uLL), v384.val[1]);
                    v381.val[1] = vaddq_s32(vshlq_n_s64(v381.val[1], 0x20uLL), v381.val[1]);
                    v406.val[0] = vaddq_s32(v74, vaddq_s32(vdupq_lane_s32(*v406.val[0].i8, 1), v406.val[0]));
                    v75 = vaddq_s32(vshlq_n_s64(v391.val[0], 0x20uLL), v391.val[0]);
                    v386.val[1] = vaddq_s32(v386.val[1], v391.val[1]);
                    v381.val[1] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v75.i8, 1), v75), vaddq_s32(vdupq_lane_s32(*v381.val[1].i8, 1), v381.val[1]));
                    v384.val[1] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v384.val[1].i8, 1), v384.val[1]), vaddq_s32(vdupq_lane_s32(*v388.val[0].i8, 1), v388.val[0]));
                    v381.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v381.val[0].i8, 1), v381.val[0]), vaddq_s32(vdupq_lane_s32(*v406.val[1].i8, 1), v406.val[1]));
                    v388.val[0] = vqtbl2q_s8(v314, xmmword_296B8F020);
                    v406.val[1] = vqtbl2q_s8(v312, xmmword_296B8F020);
                    v76 = vqtbl2q_s8(v310, xmmword_296B8F020);
                    v77 = v307;
                    v391.val[0] = v309;
                    v78 = vqtbl2q_s8(v391, xmmword_296B8F020);
                    v391.val[0] = vqtbl2q_s8(v305, xmmword_296B8F020);
                    v386.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v388.val[1].i8, 1), v388.val[1]), vaddq_s32(vdupq_lane_s32(*v386.val[0].i8, 1), v386.val[0]));
                    v391.val[1] = v302;
                    v79 = v304;
                    v388.val[1] = vqtbl2q_s8(*(&v391 + 16), xmmword_296B8F020);
                    v391.val[1] = v299;
                    v80 = v301;
                    v391.val[1] = vqtbl2q_s8(*(&v391 + 16), xmmword_296B8F020);
                    v81 = vqtbl2q_s8(v298, xmmword_296B8F020);
                    v388.val[0] = vaddq_s32(vshlq_n_s64(v388.val[0], 0x20uLL), v388.val[0]);
                    v406.val[1] = vaddq_s32(vshlq_n_s64(v406.val[1], 0x20uLL), v406.val[1]);
                    v82 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
                    v83 = vaddq_s32(vshlq_n_s64(v78, 0x20uLL), v78);
                    v84 = vaddq_s32(vshlq_n_s64(v391.val[0], 0x20uLL), v391.val[0]);
                    v388.val[1] = vaddq_s32(vshlq_n_s64(v388.val[1], 0x20uLL), v388.val[1]);
                    v391.val[0] = vaddq_s32(vshlq_n_s64(v391.val[1], 0x20uLL), v391.val[1]);
                    v386.val[1] = vaddq_s32(v386.val[1], v406.val[0]);
                    v406.val[0] = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                    v59 = xmmword_296B8F020;
                    v388.val[1] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v388.val[1].i8, 1), v388.val[1]), vaddq_s32(vdupq_lane_s32(*v84.i8, 1), v84));
                    v381.val[0] = vaddq_s32(v386.val[0], v381.val[0]);
                    v386.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v83.i8, 1), v83), vaddq_s32(vdupq_lane_s32(*v82.i8, 1), v82));
                    v57 = xmmword_296B8F010;
                    v56 = xmmword_296B8F000;
                    v388.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v406.val[1].i8, 1), v406.val[1]), vaddq_s32(vdupq_lane_s32(*v388.val[0].i8, 1), v388.val[0]));
                    v406.val[1] = vqtbl2q_s8(v297, xmmword_296B8F020);
                    v60 = xmmword_296B8F040;
                    v58 = xmmword_296B8F030;
                    v404.val[0] = vqtbl2q_s8(v404, xmmword_296B8F020);
                    v402.val[0] = vqtbl2q_s8(v402, xmmword_296B8F020);
                    v381.val[1] = vaddq_s32(v384.val[1], v381.val[1]);
                    v384.val[1] = vqtbl2q_s8(v401, xmmword_296B8F020);
                    v399.val[0] = vqtbl2q_s8(v399, xmmword_296B8F020);
                    v397.val[0] = vqtbl2q_s8(v397, xmmword_296B8F020);
                    v395.val[0] = vqtbl2q_s8(v395, xmmword_296B8F020);
                    v392.val[0] = vqtbl2q_s8(v392, xmmword_296B8F020);
                    v386.val[0] = vaddq_s32(v388.val[0], v386.val[0]);
                    v395.val[1] = vaddq_s32(vshlq_n_s64(v406.val[1], 0x20uLL), v406.val[1]);
                    v399.val[1] = vaddq_s32(vshlq_n_s64(v404.val[0], 0x20uLL), v404.val[0]);
                    v401.val[0] = vaddq_s32(vshlq_n_s64(v402.val[0], 0x20uLL), v402.val[0]);
                    v384.val[0] = vaddq_s32(v386.val[1], vaddq_s32(v384.val[0], v349.val[0]));
                    v384.val[1] = vaddq_s32(vshlq_n_s64(v384.val[1], 0x20uLL), v384.val[1]);
                    v386.val[1] = vaddq_s32(vshlq_n_s64(v399.val[0], 0x20uLL), v399.val[0]);
                    v44 = vaddq_s32(vshlq_n_s64(v397.val[0], 0x20uLL), v397.val[0]);
                    v392.val[1] = vaddq_s32(vshlq_n_s64(v395.val[0], 0x20uLL), v395.val[0]);
                    v381.val[0] = vaddq_s32(v381.val[0], v381.val[1]);
                    v381.val[1] = vaddq_s32(vshlq_n_s64(v392.val[0], 0x20uLL), v392.val[0]);
                    v43 = vdupq_lane_s32(*v381.val[1].i8, 1);
                    v85 = v384.val[0].i32[3];
                    v45 = vdupq_lane_s32(*v401.val[0].i8, 1);
                    v46 = vdupq_lane_s32(*v395.val[1].i8, 1);
                    v86 = vaddq_s32(*&v386, vaddq_s32(*(&v388 + 16), vaddq_s32(vaddq_s32(vdupq_lane_s32(*&v406, 1), *&v406), vaddq_s32(vdupq_lane_s32(*&v391, 1), *&v391)))).i32[3];
                    v42 = vaddq_s32(v46, v395.val[1]);
                    v384.val[0] = vaddq_s32(vdupq_lane_s32(*v384.val[1].i8, 1), v384.val[1]);
                    v54 += v85;
                    v53 += v381.val[0].u32[3];
                    v41 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v44.i8, 1), v44), vaddq_s32(vdupq_lane_s32(*v386.val[1].i8, 1), v386.val[1]));
                    v40 = vaddq_s32(v384.val[0], vaddq_s32(v45, v401.val[0]));
                    v39 = vaddq_s32(v41, vaddq_s32(vaddq_s32(v43, v381.val[1]), vaddq_s32(vdupq_lane_s32(*v392.val[1].i8, 1), v392.val[1])));
                    v52 += v86;
                    v38 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v399.val[1].i8, 1), v399.val[1]), v42), v40), v39);
                    v51 += v38.u32[3];
                    v71 += 32;
                  }

                  while (v71 <= v35);
                  v55 = v35 & 0xFFFFFFE0;
                }

                else
                {
                  v51 = 0;
                  v52 = 0;
                  v53 = 0;
                  v54 = 0;
                  v55 = 0;
                  v57 = xmmword_296B8F010;
                  v56 = xmmword_296B8F000;
                  v58 = xmmword_296B8F030;
                  v59 = xmmword_296B8F020;
                  v60 = xmmword_296B8F040;
                }

                if ((v55 | 8uLL) <= v35)
                {
                  result = v375 + v374[0];
                  do
                  {
                    v38.i64[0] = *(v374[0] + v55);
                    v39.i64[0] = *(result + v55);
                    v40.i64[0] = *(v374[0] + 2 * v375 + v55);
                    v41.i64[0] = *(v375 + v374[0] + 2 * v375 + v55);
                    v88 = vzip1q_s8(v41, v39);
                    v89 = vzip1q_s8(v40, v38);
                    v90 = vzip1q_s8(v88, v89);
                    v91 = vzip2q_s8(v88, v89);
                    v92 = vaddq_s32(vshlq_n_s64(v90, 0x20uLL), v90);
                    v93 = vaddq_s32(vshlq_n_s64(v91, 0x20uLL), v91);
                    v94 = vdupq_lane_s32(*v93.i8, 1);
                    v95 = vdupq_lane_s32(*v92.i8, 1);
                    v96 = vaddq_s32(v95, v92);
                    v97 = vaddq_s32(v94, v93);
                    v54 += v97.i32[3] + v96.i32[3];
                    v97.i64[0] = *(v367[0] + v55);
                    v94.i64[0] = *(v368 + v367[0] + v55);
                    v96.i64[0] = *(v367[0] + 2 * v368 + v55);
                    v95.i64[0] = *(v368 + v367[0] + 2 * v368 + v55);
                    v98 = vzip1q_s8(v95, v94);
                    v99 = vzip1q_s8(v96, v97);
                    v100 = vzip1q_s8(v98, v99);
                    v101 = vzip2q_s8(v98, v99);
                    v102 = vaddq_s32(vshlq_n_s64(v100, 0x20uLL), v100);
                    v103 = vaddq_s32(vshlq_n_s64(v101, 0x20uLL), v101);
                    v104 = vdupq_lane_s32(*v103.i8, 1);
                    v105 = vdupq_lane_s32(*v102.i8, 1);
                    v106 = vaddq_s32(v105, v102);
                    v107 = vaddq_s32(v104, v103);
                    v53 += v107.i32[3] + v106.i32[3];
                    v107.i64[0] = *(v360[0] + v55);
                    v104.i64[0] = *(v361 + v360[0] + v55);
                    v106.i64[0] = *(v360[0] + 2 * v361 + v55);
                    v105.i64[0] = *(v361 + v360[0] + 2 * v361 + v55);
                    v108 = vzip1q_s8(v105, v104);
                    v109 = vzip1q_s8(v106, v107);
                    v110 = vzip1q_s8(v108, v109);
                    v111 = vzip2q_s8(v108, v109);
                    v112 = vaddq_s32(vshlq_n_s64(v110, 0x20uLL), v110);
                    v113 = vaddq_s32(vshlq_n_s64(v111, 0x20uLL), v111);
                    v114 = vdupq_lane_s32(*v113.i8, 1);
                    v115 = vdupq_lane_s32(*v112.i8, 1);
                    v116 = vaddq_s32(v115, v112);
                    v117 = vaddq_s32(v114, v113);
                    v52 += v117.i32[3] + v116.i32[3];
                    v117.i64[0] = *(v353[0] + v55);
                    v114.i64[0] = *(v354 + v353[0] + v55);
                    v116.i64[0] = *(v353[0] + 2 * v354 + v55);
                    v115.i64[0] = *(v354 + v353[0] + 2 * v354 + v55);
                    v118 = vzip1q_s8(v115, v114);
                    v119 = vzip1q_s8(v116, v117);
                    v120 = vzip1q_s8(v118, v119);
                    v121 = vzip2q_s8(v118, v119);
                    v122 = vaddq_s32(vshlq_n_s64(v120, 0x20uLL), v120);
                    v123 = vaddq_s32(vshlq_n_s64(v121, 0x20uLL), v121);
                    v39 = vdupq_lane_s32(*v123.i8, 1);
                    v41 = vdupq_lane_s32(*v122.i8, 1);
                    v40 = vaddq_s32(v41, v122);
                    v38 = vaddq_s32(v39, v123);
                    v51 += v38.i32[3] + v40.i32[3];
                    v87 = v55 + 8;
                    v124 = v55 + 16;
                    v55 += 8;
                  }

                  while (v124 <= v35);
                }

                else
                {
                  v87 = v55;
                }

                if (v87 < v35)
                {
                  result = v375 + v374[0];
                  do
                  {
                    v54 += (*(v374[0] + v87) << 24) | (*(result + v87) << 16) | (*(v374[0] + 2 * v375 + v87) << 8) | *(v374[0] + 2 * v375 + v87);
                    v53 += (*(v367[0] + v87) << 24) | (*(v368 + v367[0] + v87) << 16) | (*(v367[0] + 2 * v368 + v87) << 8) | *(v367[0] + 2 * v368 + v87);
                    v52 += (*(v360[0] + v87) << 24) | (*(v361 + v360[0] + v87) << 16) | (*(v360[0] + 2 * v361 + v87) << 8) | *(v360[0] + 2 * v361 + v87);
                    v51 += (*(v353[0] + v87) << 24) | (*(v354 + v353[0] + v87) << 16) | (*(v353[0] + 2 * v354 + v87) << 8) | *(v353[0] + 2 * v354 + v87);
                    ++v87;
                  }

                  while (v35 != v87);
                  v87 = v35;
                }

                if (v87 + 32 <= v36)
                {
                  v127 = v375 + v374[0];
                  v311 = v375 + v374[0] + 2 * v375;
                  v308 = v374[0] + 2 * v375;
                  v128 = v368 + v367[0];
                  v306 = v368 + v367[0] + 2 * v368;
                  v303 = v367[0] + 2 * v368;
                  v129 = v361 + v360[0];
                  v300 = v361 + v360[0] + 2 * v361;
                  v130 = v360[0] + 2 * v361;
                  v131 = v354 + v353[0];
                  v132 = v354 + v353[0] + 2 * v354;
                  v133 = a11;
                  v134 = v353[0] + 2 * v354;
                  do
                  {
                    v382.val[1] = *(v47 + v87);
                    v385.val[1] = *(v47 + v87 + 16);
                    v382.val[0] = *(v308 + v87);
                    v385.val[0] = *(v308 + v87 + 16);
                    v387.val[1] = vqtbl2q_s8(v382, xmmword_296B8F070);
                    v393.val[1] = *(v127 + v87);
                    v396.val[1] = *(v127 + v87 + 16);
                    v393.val[0] = *(v311 + v87);
                    v396.val[0] = *(v311 + v87 + 16);
                    v387.val[0] = vqtbl2q_s8(v393, xmmword_296B8F080);
                    v339.val[0] = vqtbl2q_s8(v393, v60);
                    v339.val[1] = vqtbl2q_s8(v382, v58);
                    v343.val[0] = vqtbl2q_s8(v396, xmmword_296B8F080);
                    v343.val[1] = vqtbl2q_s8(v385, xmmword_296B8F070);
                    v347 = vqtbl2q_s8(v396, v60);
                    v348 = vqtbl2q_s8(v385, v58);
                    v350 = vqtbl2q_s8(v396, v57);
                    v352 = vqtbl2q_s8(v385, v56);
                    v345.val[0] = vqtbl2q_s8(v396, xmmword_296B8F060);
                    v345.val[1] = vqtbl2q_s8(v385, xmmword_296B8F050);
                    v135 = vqtbl2q_s8(v387, v59);
                    v341.val[0] = vqtbl2q_s8(v393, v57);
                    v341.val[1] = vqtbl2q_s8(v382, v56);
                    v336 = vqtbl2q_s8(v393, xmmword_296B8F060);
                    v337 = vqtbl2q_s8(v382, xmmword_296B8F050);
                    v385.val[0] = *(v48 + v87);
                    v334.val[0] = *(v303 + v87);
                    v382.val[1] = v334.val[0];
                    v334.val[1] = v385.val[0];
                    v385.val[0] = vqtbl2q_s8(*(&v382 + 16), xmmword_296B8F070);
                    v382.val[0] = vaddq_s32(vshlq_n_s64(v135, 0x20uLL), v135);
                    v403.val[1] = *(v128 + v87);
                    v389.val[1] = *(v128 + v87 + 16);
                    v403.val[0] = *(v306 + v87);
                    v387.val[1] = vdupq_lane_s32(*v382.val[0].i8, 1);
                    v382.val[1] = vqtbl2q_s8(v403, xmmword_296B8F080);
                    v136 = vqtbl2q_s8(*(&v382 + 16), v59);
                    v137 = vaddq_s32(vshlq_n_s64(v136, 0x20uLL), v136);
                    v387.val[1].i64[0] = 0;
                    v390.val[1] = *(v49 + v87);
                    v405.val[1] = *(v129 + v87);
                    v138 = vaddq_s32(v387.val[1], v382.val[0]);
                    v390.val[0] = *(v130 + v87);
                    v405.val[0] = *(v300 + v87);
                    v139 = vqtbl2q_s8(v390, xmmword_296B8F070);
                    v387.val[1] = vqtbl2q_s8(v405, xmmword_296B8F080);
                    v382.val[0] = vqtbl2q_s8(*(&v387 + 16), v59);
                    v382.val[0] = vaddq_s32(vshlq_n_s64(v382.val[0], 0x20uLL), v382.val[0]);
                    v407.val[1] = *(v50 + v87);
                    v407.val[0] = *(v134 + v87);
                    v393.val[1] = *(v131 + v87);
                    v393.val[0] = *(v132 + v87);
                    v398.val[1] = vqtbl2q_s8(v407, xmmword_296B8F070);
                    v398.val[0] = vqtbl2q_s8(v393, xmmword_296B8F080);
                    v396.val[0] = vqtbl2q_s8(v398, v59);
                    v396.val[0] = vaddq_s32(vshlq_n_s64(v396.val[0], 0x20uLL), v396.val[0]);
                    v398.val[0] = vdupq_lane_s32(*v137.i8, 1);
                    v398.val[0].i64[0] = 0;
                    v398.val[0] = vaddq_s32(v398.val[0], v137);
                    v140 = vdupq_lane_s32(*v382.val[0].i8, 1);
                    v140.i64[0] = 0;
                    v398.val[1] = vdupq_lane_s32(*v396.val[0].i8, 1);
                    v141 = vaddq_s32(v140, v382.val[0]);
                    v398.val[1].i64[0] = 0;
                    v142 = vaddq_s32(v398.val[1], v396.val[0]);
                    v396.val[1] = *(v48 + v87 + 16);
                    v396.val[0] = *(v303 + v87 + 16);
                    v389.val[0] = *(v306 + v87 + 16);
                    v324 = *(v130 + v87 + 16);
                    v326 = *(v49 + v87 + 16);
                    v321 = *(v300 + v87 + 16);
                    v322 = *(v129 + v87 + 16);
                    v330.val[0] = *(v134 + v87 + 16);
                    v330.val[1] = *(v50 + v87 + 16);
                    v328.val[0] = *(v132 + v87 + 16);
                    v328.val[1] = *(v131 + v87 + 16);
                    v143 = vdupq_n_s32(v54);
                    v144 = vaddq_s32(v138, v143);
                    v145 = v143;
                    v146 = vdupq_n_s32(v53);
                    v315 = vdupq_n_s32(v52);
                    v382.val[1] = vaddq_s32(v398.val[0], v146);
                    v398.val[1] = vaddq_s32(v141, v315);
                    v313 = vdupq_n_s32(v51);
                    v147 = vaddq_s32(v142, v313);
                    v148 = vzip1q_s32(v144, v398.val[1]);
                    v382.val[0] = vzip1q_s32(v382.val[1], v147);
                    v149 = v133;
                    vst2q_f32(v149, v382);
                    v149 += 8;
                    v150 = vzip2q_s32(v144, v398.val[1]);
                    v382.val[0] = vzip2q_s32(v382.val[1], v147);
                    vst2q_f32(v149, v382);
                    v383 = v396;
                    v396.val[1] = vqtbl2q_s8(v396, xmmword_296B8F070);
                    v396.val[0] = vqtbl2q_s8(v389, xmmword_296B8F080);
                    v319.val[0] = vqtbl2q_s8(v389, xmmword_296B8F040);
                    v319.val[1] = vqtbl2q_s8(v383, xmmword_296B8F030);
                    v332.val[0] = vqtbl2q_s8(v389, xmmword_296B8F010);
                    v332.val[1] = vqtbl2q_s8(v383, xmmword_296B8F000);
                    v317.val[0] = vqtbl2q_s8(v389, xmmword_296B8F060);
                    v317.val[1] = vqtbl2q_s8(v383, xmmword_296B8F050);
                    v387.val[0] = vqtbl2q_s8(v334, xmmword_296B8F030);
                    v385.val[1] = vqtbl2q_s8(v403, xmmword_296B8F040);
                    v389.val[1] = vqtbl2q_s8(v334, xmmword_296B8F000);
                    v389.val[0] = vqtbl2q_s8(v403, xmmword_296B8F010);
                    v383.val[0] = vqtbl2q_s8(v334, xmmword_296B8F050);
                    v151 = vqtbl2q_s8(v403, xmmword_296B8F060);
                    v152 = v336;
                    v403.val[0] = v337;
                    v153 = vqtbl2q_s8(v403, xmmword_296B8F020);
                    v154 = vaddq_s32(vshlq_n_s64(v153, 0x20uLL), v153);
                    v385.val[0] = vqtbl2q_s8(v390, xmmword_296B8F030);
                    v383.val[1] = vqtbl2q_s8(v405, xmmword_296B8F040);
                    v403.val[1] = vqtbl2q_s8(v390, xmmword_296B8F000);
                    v403.val[0] = vqtbl2q_s8(v405, xmmword_296B8F010);
                    v390.val[1] = vqtbl2q_s8(v390, xmmword_296B8F050);
                    v398.val[1] = vdupq_lane_s32(*v154.i8, 1);
                    v390.val[0] = vqtbl2q_s8(v405, xmmword_296B8F060);
                    v398.val[1].i64[0] = 0;
                    v155 = vqtbl2q_s8(v383, xmmword_296B8F020);
                    v156 = vaddq_s32(vshlq_n_s64(v155, 0x20uLL), v155);
                    v383.val[0] = vdupq_lane_s32(*v156.i8, 1);
                    v383.val[0].i64[0] = 0;
                    v157 = vaddq_s32(v383.val[0], v156);
                    v383.val[0] = vqtbl2q_s8(v390, xmmword_296B8F020);
                    v383.val[0] = vaddq_s32(vshlq_n_s64(v383.val[0], 0x20uLL), v383.val[0]);
                    v158 = vaddq_s32(vdupq_laneq_s32(v138, 3), vaddq_s32(v398.val[1], v154));
                    v398.val[1] = vdupq_lane_s32(*v383.val[0].i8, 1);
                    v398.val[1].i64[0] = 0;
                    v159 = vaddq_s32(vdupq_laneq_s32(v398.val[0], 3), v157);
                    v383.val[0] = vaddq_s32(vdupq_laneq_s32(v141, 3), vaddq_s32(v398.val[1], v383.val[0]));
                    v398.val[1] = vqtbl2q_s8(v407, xmmword_296B8F050);
                    v398.val[0] = vqtbl2q_s8(v393, xmmword_296B8F060);
                    v387.val[1] = vqtbl2q_s8(v398, xmmword_296B8F020);
                    v387.val[1] = vaddq_s32(vshlq_n_s64(v387.val[1], 0x20uLL), v387.val[1]);
                    v398.val[0] = vdupq_lane_s32(*v387.val[1].i8, 1);
                    v398.val[0].i64[0] = 0;
                    v387.val[1] = vaddq_s32(vdupq_laneq_s32(v142, 3), vaddq_s32(v398.val[0], v387.val[1]));
                    v160 = v133 + 16;
                    v161 = vaddq_s32(v158, v145);
                    v398.val[0] = vaddq_s32(v159, v146);
                    v398.val[1] = vaddq_s32(v383.val[0], v315);
                    v162 = vaddq_s32(v387.val[1], v313);
                    v405.val[0] = vzip1q_s32(v161, v398.val[1]);
                    v405.val[1] = vzip1q_s32(v398.val[0], v162);
                    vst2q_f32(v160, v405);
                    v405.val[0] = vzip2q_s32(v161, v398.val[1]);
                    v405.val[1] = vzip2q_s32(v398.val[0], v162);
                    v163 = v133 + 24;
                    vst2q_f32(v163, v405);
                    v164 = vqtbl2q_s8(v339, xmmword_296B8F020);
                    v165 = vaddq_s32(vshlq_n_s64(v164, 0x20uLL), v164);
                    v385.val[1] = vqtbl2q_s8(*(&v385 + 16), xmmword_296B8F020);
                    v385.val[1] = vaddq_s32(vshlq_n_s64(v385.val[1], 0x20uLL), v385.val[1]);
                    v383.val[1] = vqtbl2q_s8(v385, xmmword_296B8F020);
                    v385.val[0] = vdupq_lane_s32(*v165.i8, 1);
                    v385.val[0].i64[0] = 0;
                    v385.val[0] = vaddq_s32(v385.val[0], v165);
                    v383.val[1] = vaddq_s32(vshlq_n_s64(v383.val[1], 0x20uLL), v383.val[1]);
                    v398.val[0] = vqtbl2q_s8(v407, xmmword_296B8F030);
                    v166 = vqtbl2q_s8(v393, xmmword_296B8F040);
                    v387.val[0] = vqtbl2q_s8(v398, xmmword_296B8F020);
                    v387.val[0] = vaddq_s32(vshlq_n_s64(v387.val[0], 0x20uLL), v387.val[0]);
                    v167 = vdupq_lane_s32(*v385.val[1].i8, 1);
                    v167.i64[0] = 0;
                    v385.val[1] = vaddq_s32(v167, v385.val[1]);
                    v168 = vdupq_lane_s32(*v383.val[1].i8, 1);
                    v168.i64[0] = 0;
                    v398.val[0] = vdupq_lane_s32(*v387.val[0].i8, 1);
                    v383.val[1] = vaddq_s32(v168, v383.val[1]);
                    v398.val[0].i64[0] = 0;
                    v387.val[0] = vaddq_s32(v398.val[0], v387.val[0]);
                    v169 = vdupq_laneq_s32(v158, 3);
                    v170 = vaddq_s32(vaddq_s32(v385.val[0], v145), v169);
                    v171 = vdupq_laneq_s32(v159, 3);
                    v398.val[0] = vaddq_s32(vaddq_s32(v385.val[1], v146), v171);
                    v383.val[0] = vdupq_laneq_s32(v383.val[0], 3);
                    v387.val[1] = vdupq_laneq_s32(v387.val[1], 3);
                    v398.val[1] = vaddq_s32(vaddq_s32(v383.val[1], v315), v383.val[0]);
                    v172 = vaddq_s32(vaddq_s32(v387.val[0], v313), v387.val[1]);
                    v405.val[0] = vzip2q_s32(v170, v398.val[1]);
                    v405.val[1] = vzip2q_s32(v398.val[0], v172);
                    v390.val[0] = vzip1q_s32(v170, v398.val[1]);
                    v390.val[1] = vzip1q_s32(v398.val[0], v172);
                    v173 = v133 + 32;
                    vst2q_f32(v173, v390);
                    v57 = xmmword_296B8F010;
                    v174 = v133 + 40;
                    vst2q_f32(v174, v405);
                    v175 = vqtbl2q_s8(v341, xmmword_296B8F020);
                    v176 = vaddq_s32(vshlq_n_s64(v175, 0x20uLL), v175);
                    v398.val[1] = vqtbl2q_s8(v407, xmmword_296B8F000);
                    v177 = vdupq_lane_s32(*v176.i8, 1);
                    v177.i64[0] = 0;
                    v398.val[0] = vqtbl2q_s8(v393, xmmword_296B8F010);
                    v393.val[1] = vqtbl2q_s8(v389, xmmword_296B8F020);
                    v60 = xmmword_296B8F040;
                    v393.val[0] = vaddq_s32(vshlq_n_s64(v393.val[1], 0x20uLL), v393.val[1]);
                    v393.val[1] = vdupq_lane_s32(*v393.val[0].i8, 1);
                    v393.val[1].i64[0] = 0;
                    v393.val[0] = vaddq_s32(vdupq_laneq_s32(v385.val[1], 3), vaddq_s32(v393.val[1], v393.val[0]));
                    v393.val[1] = vqtbl2q_s8(v403, xmmword_296B8F020);
                    v385.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v385.val[0], 3), vaddq_s32(v177, v176)), v169);
                    v385.val[0] = vaddq_s32(vshlq_n_s64(v393.val[1], 0x20uLL), v393.val[1]);
                    v178 = vdupq_lane_s32(*v385.val[0].i8, 1);
                    v178.i64[0] = 0;
                    v383.val[1] = vaddq_s32(vdupq_laneq_s32(v383.val[1], 3), vaddq_s32(v178, v385.val[0]));
                    v385.val[0] = vqtbl2q_s8(v398, xmmword_296B8F020);
                    v179 = vaddq_s32(v393.val[0], v171);
                    v385.val[0] = vaddq_s32(vshlq_n_s64(v385.val[0], 0x20uLL), v385.val[0]);
                    v180 = vdupq_lane_s32(*v385.val[0].i8, 1);
                    v180.i64[0] = 0;
                    v383.val[0] = vaddq_s32(v383.val[1], v383.val[0]);
                    v387.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v387.val[0], 3), vaddq_s32(v180, v385.val[0])), v387.val[1]);
                    v181 = v133 + 48;
                    v383.val[1] = vaddq_s32(v385.val[1], v145);
                    v385.val[0] = vaddq_s32(v179, v146);
                    v387.val[0] = vaddq_s32(v383.val[0], v315);
                    v182 = vaddq_s32(v387.val[1], v313);
                    v393.val[0] = vzip1q_s32(v383.val[1], v387.val[0]);
                    v393.val[1] = vzip1q_s32(v385.val[0], v182);
                    vst2q_f32(v181, v393);
                    v393.val[0] = vzip2q_s32(v383.val[1], v387.val[0]);
                    v393.val[1] = vzip2q_s32(v385.val[0], v182);
                    v183 = v133 + 56;
                    vst2q_f32(v183, v393);
                    v383.val[1] = vqtbl2q_s8(v343, xmmword_296B8F020);
                    v387.val[0] = vaddq_s32(vshlq_n_s64(v383.val[1], 0x20uLL), v383.val[1]);
                    v184 = v324;
                    v403.val[0] = v326;
                    v398.val[0] = vqtbl2q_s8(v403, xmmword_296B8F070);
                    v405.val[1] = v321;
                    v407.val[0] = v322;
                    v185 = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F080);
                    v393.val[1] = vqtbl2q_s8(v403, xmmword_296B8F030);
                    v393.val[0] = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F040);
                    v343.val[0] = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F010);
                    v343.val[1] = vqtbl2q_s8(v403, xmmword_296B8F000);
                    v403.val[1] = vqtbl2q_s8(v403, xmmword_296B8F050);
                    v186 = vdupq_lane_s32(*v387.val[0].i8, 1);
                    v403.val[0] = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F060);
                    v186.i64[0] = 0;
                    v187 = vaddq_s32(v186, v387.val[0]);
                    v387.val[0] = vqtbl2q_s8(v396, xmmword_296B8F020);
                    v387.val[0] = vaddq_s32(vshlq_n_s64(v387.val[0], 0x20uLL), v387.val[0]);
                    v188 = vqtbl2q_s8(v398, xmmword_296B8F020);
                    v189 = vaddq_s32(vshlq_n_s64(v188, 0x20uLL), v188);
                    v396.val[0] = vdupq_lane_s32(*v387.val[0].i8, 1);
                    v396.val[0].i64[0] = 0;
                    v396.val[1] = vdupq_lane_s32(*v189.i8, 1);
                    v396.val[1].i64[0] = 0;
                    v396.val[0] = vaddq_s32(v396.val[0], v387.val[0]);
                    v396.val[1] = vaddq_s32(v396.val[1], v189);
                    v398.val[0] = vqtbl2q_s8(v330, xmmword_296B8F070);
                    v190 = vqtbl2q_s8(v328, xmmword_296B8F080);
                    v387.val[0] = vqtbl2q_s8(v398, xmmword_296B8F020);
                    v387.val[0] = vaddq_s32(vshlq_n_s64(v387.val[0], 0x20uLL), v387.val[0]);
                    v191 = vdupq_lane_s32(*v387.val[0].i8, 1);
                    v191.i64[0] = 0;
                    v192 = vaddq_s32(v191, v387.val[0]);
                    v193 = v133 + 64;
                    v387.val[0] = vdupq_laneq_s32(v385.val[1], 3);
                    v385.val[1] = vdupq_laneq_s32(v179, 3);
                    v194 = vaddq_s32(vaddq_s32(v187, v145), v387.val[0]);
                    v398.val[0] = vaddq_s32(vaddq_s32(v396.val[0], v146), v385.val[1]);
                    v195 = vdupq_laneq_s32(v383.val[0], 3);
                    v398.val[1] = vaddq_s32(vaddq_s32(v396.val[1], v315), v195);
                    v383.val[0] = vdupq_laneq_s32(v387.val[1], 3);
                    v387.val[1] = vaddq_s32(vaddq_s32(v192, v313), v383.val[0]);
                    v405.val[0] = vzip1q_s32(v194, v398.val[1]);
                    v405.val[1] = vzip1q_s32(v398.val[0], v387.val[1]);
                    vst2q_f32(v193, v405);
                    v405.val[0] = vzip2q_s32(v194, v398.val[1]);
                    v405.val[1] = vzip2q_s32(v398.val[0], v387.val[1]);
                    v196 = v133 + 72;
                    vst2q_f32(v196, v405);
                    v387.val[1] = vqtbl2q_s8(v345, xmmword_296B8F020);
                    v405.val[0] = vaddq_s32(vshlq_n_s64(v387.val[1], 0x20uLL), v387.val[1]);
                    v405.val[1] = v330.val[0];
                    v407.val[0] = v330.val[1];
                    v398.val[1] = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F030);
                    v398.val[0] = vqtbl2q_s8(v328, xmmword_296B8F040);
                    v197 = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F000);
                    v387.val[1] = vqtbl2q_s8(v328, xmmword_296B8F010);
                    v407.val[0] = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F050);
                    v407.val[1] = vdupq_lane_s32(*v405.val[0].i8, 1);
                    v407.val[1].i64[0] = 0;
                    v405.val[1] = vqtbl2q_s8(v328, xmmword_296B8F060);
                    v58 = xmmword_296B8F030;
                    v198 = vqtbl2q_s8(v317, xmmword_296B8F020);
                    v199 = vaddq_s32(vdupq_laneq_s32(v187, 3), vaddq_s32(v407.val[1], v405.val[0]));
                    v200 = vaddq_s32(vshlq_n_s64(v198, 0x20uLL), v198);
                    v201 = vdupq_lane_s32(*v200.i8, 1);
                    v201.i64[0] = 0;
                    v202 = vaddq_s32(v201, v200);
                    v203 = vqtbl2q_s8(v403, xmmword_296B8F020);
                    v204 = v133 + 80;
                    v396.val[0] = vaddq_s32(vdupq_laneq_s32(v396.val[0], 3), v202);
                    v205 = vaddq_s32(vshlq_n_s64(v203, 0x20uLL), v203);
                    v206 = vdupq_lane_s32(*v205.i8, 1);
                    v206.i64[0] = 0;
                    v396.val[1] = vaddq_s32(vdupq_laneq_s32(v396.val[1], 3), vaddq_s32(v206, v205));
                    v403.val[0] = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F020);
                    v403.val[0] = vaddq_s32(vshlq_n_s64(v403.val[0], 0x20uLL), v403.val[0]);
                    v403.val[1] = vdupq_lane_s32(*v403.val[0].i8, 1);
                    v207 = vaddq_s32(vaddq_s32(v199, v145), v387.val[0]);
                    v208 = vaddq_s32(vaddq_s32(v396.val[0], v146), v385.val[1]);
                    v403.val[1].i64[0] = 0;
                    v403.val[0] = vaddq_s32(v403.val[1], v403.val[0]);
                    v403.val[1] = vaddq_s32(vaddq_s32(v396.val[1], v315), v195);
                    v209 = vaddq_s32(vdupq_laneq_s32(v192, 3), v403.val[0]);
                    v403.val[0] = vaddq_s32(vaddq_s32(v209, v313), v383.val[0]);
                    v405.val[0] = vzip1q_s32(v207, v403.val[1]);
                    v405.val[1] = vzip1q_s32(v208, v403.val[0]);
                    vst2q_f32(v204, v405);
                    v405.val[1] = v347;
                    v407.val[0] = v348;
                    v405.val[0] = vqtbl2q_s8(*(&v405 + 16), xmmword_296B8F020);
                    v405.val[0] = vaddq_s32(vshlq_n_s64(v405.val[0], 0x20uLL), v405.val[0]);
                    v405.val[1] = vdupq_lane_s32(*v405.val[0].i8, 1);
                    v405.val[1].i64[0] = 0;
                    v405.val[0] = vaddq_s32(v405.val[1], v405.val[0]);
                    v405.val[1] = vqtbl2q_s8(v319, xmmword_296B8F020);
                    v405.val[1] = vaddq_s32(vshlq_n_s64(v405.val[1], 0x20uLL), v405.val[1]);
                    v407.val[0] = vdupq_lane_s32(*v405.val[1].i8, 1);
                    v407.val[0].i64[0] = 0;
                    v405.val[1] = vaddq_s32(v407.val[0], v405.val[1]);
                    v210 = v133 + 88;
                    v211 = vdupq_laneq_s32(v199, 3);
                    v212 = v133 + 96;
                    v393.val[0] = vqtbl2q_s8(v393, xmmword_296B8F020);
                    v393.val[0] = vaddq_s32(vshlq_n_s64(v393.val[0], 0x20uLL), v393.val[0]);
                    v393.val[1] = vdupq_laneq_s32(v396.val[0], 3);
                    v407.val[0] = vzip2q_s32(v207, v403.val[1]);
                    v407.val[1] = vzip2q_s32(v208, v403.val[0]);
                    v213 = vdupq_lane_s32(*v393.val[0].i8, 1);
                    v213.i64[0] = 0;
                    v396.val[1] = vdupq_laneq_s32(v396.val[1], 3);
                    v393.val[0] = vaddq_s32(v213, v393.val[0]);
                    v398.val[0] = vqtbl2q_s8(v398, xmmword_296B8F020);
                    v396.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v405.val[0], v211), v145), v387.val[0]);
                    v398.val[0] = vaddq_s32(vshlq_n_s64(v398.val[0], 0x20uLL), v398.val[0]);
                    v398.val[1] = vdupq_lane_s32(*v398.val[0].i8, 1);
                    v398.val[1].i64[0] = 0;
                    v214 = vaddq_s32(vaddq_s32(vaddq_s32(v405.val[1], v393.val[1]), v146), v385.val[1]);
                    v45 = vaddq_s32(v398.val[1], v398.val[0]);
                    v44 = vdupq_laneq_s32(v209, 3);
                    v215 = vaddq_s32(vaddq_s32(vaddq_s32(v393.val[0], v396.val[1]), v315), v195);
                    v398.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v45, v44), v313), v383.val[0]);
                    vst2q_f32(v210, v407);
                    v403.val[0] = vzip1q_s32(v396.val[0], v215);
                    v403.val[1] = vzip1q_s32(v214, v398.val[1]);
                    vst2q_f32(v212, v403);
                    v403.val[0] = vzip2q_s32(v396.val[0], v215);
                    v403.val[1] = vzip2q_s32(v214, v398.val[1]);
                    v398.val[1] = v350;
                    v216 = v352;
                    v396.val[0] = vqtbl2q_s8(*(&v398 + 16), xmmword_296B8F020);
                    v396.val[0] = vaddq_s32(vshlq_n_s64(v396.val[0], 0x20uLL), v396.val[0]);
                    v398.val[1] = vdupq_lane_s32(*v396.val[0].i8, 1);
                    v398.val[1].i64[0] = 0;
                    v396.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v405.val[0], 3), vaddq_s32(v398.val[1], v396.val[0])), v211);
                    v398.val[1] = vqtbl2q_s8(v332, xmmword_296B8F020);
                    v46 = vaddq_s32(vshlq_n_s64(v398.val[1], 0x20uLL), v398.val[1]);
                    v217 = vdupq_lane_s32(*v46.i8, 1);
                    v217.i64[0] = 0;
                    v393.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v405.val[1], 3), vaddq_s32(v217, v46)), v393.val[1]);
                    v46.i64[1] = 0x1F0E1D0C1B0A1908;
                    v383.val[1] = v343.val[0];
                    v385.val[0] = v343.val[1];
                    v383.val[1] = vqtbl2q_s8(v385, xmmword_296B8F020);
                    v383.val[1] = vaddq_s32(vshlq_n_s64(v383.val[1], 0x20uLL), v383.val[1]);
                    v385.val[0] = vaddq_s32(v393.val[1], v146);
                    v59 = xmmword_296B8F020;
                    v393.val[1] = vdupq_lane_s32(*v383.val[1].i8, 1);
                    v393.val[1].i64[0] = 0;
                    v387.val[0] = vaddq_s32(vaddq_s32(v396.val[0], v145), v387.val[0]);
                    v387.val[1] = vqtbl2q_s8(*(&v387 + 16), xmmword_296B8F020);
                    v41 = vaddq_s32(v385.val[0], v385.val[1]);
                    v385.val[1] = vaddq_s32(vshlq_n_s64(v387.val[1], 0x20uLL), v387.val[1]);
                    v387.val[1] = vdupq_lane_s32(*v385.val[1].i8, 1);
                    v387.val[1].i64[0] = 0;
                    v56 = xmmword_296B8F000;
                    v42 = vaddq_s32(vdupq_laneq_s32(v45, 3), vaddq_s32(v387.val[1], v385.val[1]));
                    v38 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v393.val[0], 3), vaddq_s32(v393.val[1], v383.val[1])), v396.val[1]), v315), v195);
                    v40 = vaddq_s32(vaddq_s32(v42, v44), v313);
                    v39 = vaddq_s32(v40, v383.val[0]);
                    v218 = v133 + 104;
                    v219 = v133 + 112;
                    v220 = v133 + 120;
                    vst2q_f32(v218, v403);
                    v387.val[1] = vzip1q_s32(v387.val[0], v38);
                    v221 = vzip1q_s32(v41, v39);
                    vst2q_f32(v219, *(&v387 + 16));
                    v43 = vzip2q_s32(v387.val[0], v38);
                    v222 = vzip2q_s32(v41, v39);
                    vst2q_f32(v220, *v43.i8);
                    v54 = v387.val[0].u32[3];
                    v53 = v41.u32[3];
                    v52 = v38.u32[3];
                    v51 = v39.u32[3];
                    v126 = v133 + 128;
                    v125 = v87 + 32;
                    result = v87 + 64;
                    v87 += 32;
                    v133 += 128;
                  }

                  while (result <= v36);
                }

                else
                {
                  v125 = v87;
                  v126 = a11;
                }

                v351 = a11;
                if (v125 + 8 <= v36)
                {
                  v225 = v375 + v47;
                  v226 = v375 + v47 + 2 * v375;
                  result = v47 + 2 * v375;
                  v227 = v368 + v48;
                  v228 = v368 + v48 + 2 * v368;
                  v229 = v48 + 2 * v368;
                  v230 = v361 + v49;
                  v231 = v361 + v49 + 2 * v361;
                  v232 = v49 + 2 * v361;
                  v233 = v354 + v50;
                  v234 = v354 + v50 + 2 * v354;
                  v235 = v50 + 2 * v354;
                  do
                  {
                    v38.i64[0] = *(v47 + v125);
                    v39.i64[0] = *(v225 + v125);
                    v40.i64[0] = *(result + v125);
                    v41.i64[0] = *(v226 + v125);
                    v236 = vzip1q_s8(v41, v39);
                    v237 = vzip1q_s8(v40, v38);
                    v238 = vzip1q_s8(v236, v237);
                    v239 = vzip2q_s8(v236, v237);
                    v240 = vshlq_n_s64(v239, 0x20uLL);
                    v241 = vdupq_n_s32(v54);
                    v42.i64[0] = *(v48 + v125);
                    v242 = vshlq_n_s64(v238, 0x20uLL);
                    v243 = vaddq_s32(v242, v238);
                    v242.i64[0] = *(v227 + v125);
                    v43.i64[0] = *(v229 + v125);
                    v244 = vaddq_s32(v240, v239);
                    v240.i64[0] = *(v228 + v125);
                    v245 = vzip1q_s8(v240, v242);
                    v246 = vzip1q_s8(v43, v42);
                    v247 = vdupq_lane_s32(*v244.i8, 1);
                    v248 = vzip1q_s8(v245, v246);
                    v249 = vzip2q_s8(v245, v246);
                    v250 = vdupq_lane_s32(*v243.i8, 1);
                    v251 = vaddq_s32(vshlq_n_s64(v248, 0x20uLL), v248);
                    v252 = vaddq_s32(vshlq_n_s64(v249, 0x20uLL), v249);
                    v253 = vdupq_lane_s32(*v252.i8, 1);
                    v250.i64[0] = 0;
                    v254 = vdupq_lane_s32(*v251.i8, 1);
                    v255 = vdupq_n_s32(v53);
                    v247.i64[0] = 0;
                    v256 = vaddq_s32(v244, v241);
                    v257 = vaddq_s32(v252, v255);
                    v244.i64[0] = *(v49 + v125);
                    v254.i64[0] = 0;
                    v252.i64[0] = *(v230 + v125);
                    v44.i64[0] = *(v232 + v125);
                    v253.i64[0] = 0;
                    v45.i64[0] = *(v231 + v125);
                    v258 = vzip1q_s8(v45, v252);
                    v259 = vzip1q_s8(v44, v244);
                    v260 = vzip1q_s8(v258, v259);
                    v261 = vaddq_s32(v250, v243);
                    v262 = vzip2q_s8(v258, v259);
                    v263 = vaddq_s32(vshlq_n_s64(v260, 0x20uLL), v260);
                    v264 = vdupq_lane_s32(*v263.i8, 1);
                    v265 = vaddq_s32(v247, v256);
                    v264.i64[0] = 0;
                    v266 = vdupq_n_s32(v52);
                    v267 = vaddq_s32(v254, v251);
                    v268 = vaddq_s32(vshlq_n_s64(v262, 0x20uLL), v262);
                    v254.i64[0] = *(v50 + v125);
                    v46.i64[0] = *(v233 + v125);
                    v269 = vaddq_s32(v253, v257);
                    v270 = vaddq_s32(v264, v263);
                    v253.i64[0] = *(v235 + v125);
                    v257.i64[0] = *(v234 + v125);
                    v271 = vaddq_s32(v261, v241);
                    v272 = vzip1q_s8(v257, v46);
                    v273 = vzip1q_s8(v253, v254);
                    v274 = vzip1q_s8(v272, v273);
                    v275 = vaddq_s32(vshlq_n_s64(v274, 0x20uLL), v274);
                    v276 = vaddq_s32(v267, v255);
                    v277 = vdupq_lane_s32(*v275.i8, 1);
                    v277.i64[0] = 0;
                    v278 = vaddq_s32(v277, v275);
                    v44 = vaddq_s32(v270, v266);
                    v45 = vdupq_n_s32(v51);
                    v46 = vaddq_s32(v278, v45);
                    v400.val[0] = vzip1q_s32(v271, v44);
                    v279 = v126 + 16;
                    v400.val[1] = vzip1q_s32(v276, v46);
                    v280 = v126;
                    vst2q_f32(v280, v400);
                    v280 += 8;
                    v281 = vaddq_s32(v268, v266);
                    v282 = vdupq_lane_s32(*v268.i8, 1);
                    v283 = vaddq_s32(v265, vdupq_laneq_s32(v261, 3));
                    v282.i64[0] = 0;
                    v41 = vaddq_s32(v269, vdupq_laneq_s32(v267, 3));
                    v40 = vaddq_s32(vaddq_s32(v282, v281), vdupq_laneq_s32(v270, 3));
                    v284 = vzip2q_s8(v272, v273);
                    v54 = v283.u32[3];
                    v285 = vaddq_s32(vshlq_n_s64(v284, 0x20uLL), v284);
                    v286 = vdupq_lane_s32(*v285.i8, 1);
                    v53 = v41.u32[3];
                    v286.i64[0] = 0;
                    v52 = v40.u32[3];
                    v287 = v126 + 24;
                    v42 = vaddq_s32(vaddq_s32(v286, vaddq_s32(v285, v45)), vdupq_laneq_s32(v278, 3));
                    v51 = v42.u32[3];
                    v394.val[0] = vzip2q_s32(v271, v44);
                    v394.val[1] = vzip2q_s32(v276, v46);
                    vst2q_f32(v280, v394);
                    v288 = vzip1q_s32(v283, v40);
                    v43 = vzip1q_s32(v41, v42);
                    vst2q_f32(v279, *(&v43 - 1));
                    v38 = vzip2q_s32(v283, v40);
                    v39 = vzip2q_s32(v41, v42);
                    vst2q_f32(v287, *v38.i8);
                    v224 = v126 + 32;
                    v223 = v125 + 8;
                    v289 = v125 + 16;
                    v125 += 8;
                    v126 += 32;
                  }

                  while (v289 <= v36);
                }

                else
                {
                  v223 = v125;
                  v224 = v126;
                }

                a12 = v294;
                v29 = v295;
                a11 = v351;
                v37 = v293;
                if (v223 < v36)
                {
                  do
                  {
                    v290 = *(v360[0] + v223 + 2 * v361);
                    v54 += (*(v374[0] + v223) << 24) | (*(v374[0] + v223 + v375) << 16) | (*(v374[0] + v223 + 2 * v375) << 8) | *(v374[0] + v223 + 2 * v375);
                    v53 += (*(v367[0] + v223) << 24) | (*(v367[0] + v223 + v368) << 16) | (*(v367[0] + v223 + 2 * v368) << 8) | *(v367[0] + v223 + 2 * v368);
                    v291 = *(v353[0] + v223 + 2 * v354);
                    v52 += (*(v360[0] + v223) << 24) | (*(v360[0] + v223 + v361) << 16) | (v290 << 8) | v290;
                    *&v292 = __PAIR64__(v53, v54);
                    DWORD2(v292) = v52;
                    v51 += (*(v353[0] + v223) << 24) | (*(v353[0] + v223 + v354) << 16) | (v291 << 8) | v291;
                    HIDWORD(v292) = v51;
                    *v224 = v292;
                    v224 += 4;
                    ++v223;
                  }

                  while (v36 != v223);
                }
              }
            }
          }
        }

        a11 = (a11 + a12);
        v32 += v37;
      }

      while (v32 + a3[7].u32[0] < v29);
    }
  }

  return result;
}