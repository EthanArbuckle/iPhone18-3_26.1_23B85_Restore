uint8x8_t *dist_wtd_convolve_y_6tap_dist_wtd_avg_neon(uint8x8_t *result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int16x8_t a8, double a9, double a10, double a11, double a12, double a13, uint16x4_t a14, uint16x4_t a15)
{
  v23 = *(a7 + 40);
  v22 = *(a7 + 44);
  v24 = *(a7 + 8);
  v25 = *(a7 + 16);
  if (a5 == 4 || a6 == 4)
  {
    v120 = 0;
    v121 = a2;
    v122 = 2 * a2;
    v123 = vdup_lane_s16(*a8.i8, 1);
    v124 = vdup_lane_s16(*a8.i8, 2);
    v125 = vdup_lane_s16(*a8.i8, 3);
    v126 = vdup_laneq_s16(a8, 4);
    v127 = vdup_laneq_s16(a8, 5);
    a14.i32[0] = v23;
    a15.i32[0] = v22;
    v128 = 2 * a4;
    v173 = a3 + v128;
    v129 = 4 * a2;
    v171 = a3 + a4;
    v169 = v171 + v128;
    v130 = 5 * a2;
    v131 = v24 + 6 * v25;
    v132 = 3 * a2;
    v133 = result + v130 + v132;
    v134 = 4 * a4;
    v135 = 8 * v25;
    v136 = vdup_laneq_s16(a8, 6);
    v137 = v122;
    v138.i64[0] = 0xE800E800E800E800;
    v138.i64[1] = 0xE800E800E800E800;
    v139 = result + v122 + v130;
    v140 = v121;
    v141 = result + v121 + v130;
    v142 = result + v130;
    v143 = v24 + 4 * v25;
    v144 = v24 + 2 * v25;
    do
    {
      v145 = 0;
      v15.i32[0] = *(result->i32 + v140);
      v16.i32[0] = *(result->i32 + v137);
      v17.i32[0] = *(result->i32 + v132);
      v18.i32[0] = result->i32[v129 / 4];
      v146 = vmovl_u8(result->u32[0]).u64[0];
      v147 = v142;
      v148 = vmovl_u8(v15).u64[0];
      v16 = vmovl_u8(v16).u64[0];
      v149 = vmovl_u8(v17).u64[0];
      v150 = v141;
      v151 = v139;
      v152 = v133;
      v154 = v169;
      v153 = v171;
      v15 = vmovl_u8(*v18.i8).u64[0];
      v155 = v173;
      v156 = a3;
      v157 = a6;
      do
      {
        v19.i32[0] = *&v147[v120];
        v20.i32[0] = *&v150[v120];
        v21.i32[0] = *&v151[v120];
        v17.i32[0] = *&v152[v120];
        v158 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v15, v127), v149, v126), v16, v125), v148, v124);
        v159 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v15, v126), v149, v125), v16, v124), v148, v123);
        v160 = vmla_s16(vmla_s16(vmul_s16(v15, v125), v149, v124), v16, v123);
        v148 = vmovl_u8(*v19.i8).u64[0];
        v16 = vmovl_u8(*v20.i8).u64[0];
        v161 = vmla_s16(vmul_s16(v15, v124), v149, v123);
        v149 = vmovl_u8(v21).u64[0];
        v162 = vmla_s16(v158, v146, v123);
        v146 = v15;
        v15 = vmovl_u8(v17).u64[0];
        v21 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v161, v148, v125), v16, v126), v149, v127), v15, v136), 2uLL);
        v19 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v160, v148, v126), v16, v127), v149, v136), 2uLL), a15, 0), *&v143[v145], a14, 0);
        v163 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(v162, v148, v136), 2uLL), a15, 0), *(v24 + v145), a14, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v159, v148, v127), v16, v136), 2uLL), a15, 0), *&v144[v145], a14, 0), 4uLL);
        v20 = vmlal_lane_u16(vmull_lane_u16(v21, a15, 0), *&v131[v145], a14, 0);
        v18 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v19, 4uLL), v20, 4uLL), v138);
        *v163.i8 = vqrshrun_n_s16(vaddq_s16(v163, v138), 4uLL);
        *(v156 + v120) = v163.i32[0];
        v164 = (v154 + v120);
        *(v153 + v120) = v163.i32[1];
        v156 += v134;
        v154 += v134;
        v17 = vqrshrun_n_s16(v18, 4uLL);
        v153 += v134;
        *(v155 + v120) = v17.i32[0];
        v145 += v135;
        v152 += v129;
        v151 += v129;
        v150 += v129;
        v147 += v129;
        v155 += v134;
        *v164 = v17.i32[1];
        v157 -= 4;
      }

      while (v157);
      result = (result + 4);
      ++v24;
      v120 += 4;
      v131 += 8;
      v143 += 8;
      v144 += 8;
      a5 -= 4;
    }

    while (a5);
  }

  else
  {
    v26 = 0;
    v27 = a2;
    v28 = a4;
    v29 = 4 * a4;
    v30 = vdupq_lane_s16(*a8.i8, 1);
    v31 = vdupq_lane_s16(*a8.i8, 2);
    v32 = vdupq_lane_s16(*a8.i8, 3);
    v33 = vdupq_laneq_s16(a8, 4);
    v34 = vdupq_laneq_s16(a8, 5);
    a14.i32[0] = v23;
    a15.i32[0] = v22;
    v35 = 2 * v25;
    v36 = 6 * v25;
    v37 = 8 * v25;
    v38 = 6 * v25 + v37;
    v39 = 4 * v25;
    v40 = 4 * v25 + v37;
    v41 = 2 * v25 + v37;
    v42 = 2 * a4;
    v43 = vdupq_laneq_s16(a8, 6);
    v44 = 3 * a4;
    v45 = 8 * a2;
    v172 = a3 + v44 + v29;
    v46 = a3 + v42;
    v47 = 16 * v25;
    v48 = 2 * v29;
    v168 = v46 + v29;
    v170 = v46;
    v49.i64[0] = 0xE800E800E800E800;
    v49.i64[1] = 0xE800E800E800E800;
    v50 = a3 + v28;
    v167 = a3 + v28 + v29;
    v166 = a3 + v29;
    v165 = a3 + v44;
    v51 = result + 5 * a2;
    do
    {
      v52 = (result + v27 + v27);
      v53 = *v52;
      v54 = (v52 + v27);
      v55 = vmovl_u8(*result);
      v56 = a3;
      v57 = v50;
      v58 = v168;
      v59 = v170;
      v60 = vmovl_u8(*(result + v27));
      v61 = vmovl_u8(v53);
      v62 = vmovl_u8(*v54);
      v64 = v165;
      v63 = v166;
      v65 = v167;
      v66 = vmovl_u8(*(v54 + v27));
      v67 = v172;
      v68 = v24;
      v69 = v51;
      v70 = a6;
      do
      {
        v71 = &v69[v26 + v27];
        v72 = *v71;
        v73 = (v71 + v27);
        v74 = *v73;
        v75 = (v73 + v27);
        v76 = *v75;
        v77 = (v75 + v27);
        v78 = *v77;
        v79 = (v77 + v27);
        v80 = *v79;
        v81 = (v79 + v27);
        v82 = vmovl_u8(*&v69[v26]);
        v83 = vmovl_u8(v72);
        v84 = vmovl_u8(v74);
        v85 = vmulq_s16(v55, v30);
        v55 = vmovl_u8(v76);
        v86 = vmlaq_s16(vmlaq_s16(v85, v60, v31), v61, v32);
        v87 = vmulq_s16(v60, v30);
        v60 = vmovl_u8(v78);
        v88 = vmlaq_s16(v86, v62, v33);
        v89 = vmlaq_s16(vmlaq_s16(v87, v61, v31), v62, v32);
        v90 = vmlaq_s16(vmulq_s16(v61, v30), v62, v31);
        v61 = vmovl_u8(v80);
        v91 = vmulq_s16(v62, v30);
        v62 = vmovl_u8(*v81);
        v92 = vmlaq_s16(v89, v66, v33);
        v93 = vmlaq_s16(v90, v66, v32);
        v94 = vmlaq_s16(v91, v66, v31);
        v95 = vmlaq_s16(v88, v66, v34);
        v96 = vmulq_s16(v66, v30);
        v66 = vmovl_u8(*(v81 + v27));
        v97.i64[0] = 0x1800180018001800;
        v97.i64[1] = 0x1800180018001800;
        v98 = vrsraq_n_s16(v97, vmlaq_s16(v95, v43, v82), 2uLL);
        v99.i64[0] = 0x1800180018001800;
        v99.i64[1] = 0x1800180018001800;
        v100 = vrsraq_n_s16(v99, vmlaq_s16(vmlaq_s16(v92, v34, v82), v43, v83), 2uLL);
        v101.i64[0] = 0x1800180018001800;
        v101.i64[1] = 0x1800180018001800;
        v102 = vrsraq_n_s16(v101, vmlaq_s16(vmlaq_s16(vmlaq_s16(v93, v33, v82), v34, v83), v43, v84), 2uLL);
        v95.i64[0] = 0x1800180018001800;
        v95.i64[1] = 0x1800180018001800;
        v103 = vrsraq_n_s16(v95, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v94, v32, v82), v33, v83), v34, v84), v43, v55), 2uLL);
        v104.i64[0] = 0x1800180018001800;
        v104.i64[1] = 0x1800180018001800;
        v105 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v96, v31, v82), v32, v83), v33, v84), v34, v55), v43, v60);
        v106 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v30, v82), v31, v83), v32, v84), v33, v55), v34, v60);
        v82.i64[0] = 0x1800180018001800;
        v82.i64[1] = 0x1800180018001800;
        v107 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v30, v83), v31, v84), v32, v55), v33, v60), v34, v61);
        v83.i64[0] = 0x1800180018001800;
        v83.i64[1] = 0x1800180018001800;
        v108 = vrsraq_n_s16(v104, v105, 2uLL);
        v109 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v30, v84), v31, v55), v32, v60), v33, v61), v34, v62);
        v110 = *&v68->i8[v35];
        v84.i64[0] = 0x1800180018001800;
        v84.i64[1] = 0x1800180018001800;
        v111 = *&v68->i8[v39];
        v112 = *&v68->i8[v36];
        v113 = vrsraq_n_s16(v82, vmlaq_s16(v106, v43, v61), 2uLL);
        v114 = vrsraq_n_s16(v83, vmlaq_s16(v107, v43, v62), 2uLL);
        v115 = vrsraq_n_s16(v84, vmlaq_s16(v109, v43, v66), 2uLL);
        *(v56 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v98.i8, a15, 0), *v68, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v98, a15, 0), *v68->i8, a14, 0), 4uLL), v49), 4uLL);
        *(v57 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v100.i8, a15, 0), *v110.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v100, a15, 0), v110, a14, 0), 4uLL), v49), 4uLL);
        *(v59 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v102.i8, a15, 0), *v111.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v102, a15, 0), v111, a14, 0), 4uLL), v49), 4uLL);
        *(v64 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v103.i8, a15, 0), *v112.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v103, a15, 0), v112, a14, 0), 4uLL), v49), 4uLL);
        v116 = *&v68->i8[v40];
        v117 = *&v68->i8[v38];
        v118 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v108.i8, a15, 0), v68[v37 / 8], a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v108, a15, 0), *v68[v37 / 8].i8, a14, 0), 4uLL);
        v119 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v113.i8, a15, 0), *(v68 + v41), a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v113, a15, 0), *&v68->i8[v41], a14, 0), 4uLL);
        *(v63 + v26) = vqrshrun_n_s16(vaddq_s16(v118, v49), 4uLL);
        *(v65 + v26) = vqrshrun_n_s16(vaddq_s16(v119, v49), 4uLL);
        *(v58 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v114.i8, a15, 0), *v116.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v114, a15, 0), v116, a14, 0), 4uLL), v49), 4uLL);
        *(v67 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v115.i8, a15, 0), *v117.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v115, a15, 0), v117, a14, 0), 4uLL), v49), 4uLL);
        v69 += v45;
        v68 = (v68 + v47);
        v67 += v48;
        v58 += v48;
        v65 += v48;
        v64 += v48;
        v59 += v48;
        v57 += v48;
        v56 += v48;
        v63 += v48;
        v70 -= 8;
      }

      while (v70);
      ++result;
      v24 += 2;
      v26 += 8;
      a5 -= 8;
    }

    while (a5);
  }

  return result;
}

uint8x8_t *dist_wtd_convolve_y_8tap_dist_wtd_avg_neon(uint8x8_t *result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int16x8_t a8, uint16x4_t a9, uint16x4_t a10)
{
  v20 = a2;
  v272 = 3 * a2;
  v273 = 2 * a2;
  v21 = 4 * a2;
  v22 = *(a7 + 8);
  v274 = *(a7 + 16);
  v270 = 6 * a2;
  v23 = 2 * a4;
  v24 = 3 * a4;
  a9.i16[0] = *(a7 + 40);
  a10.i16[0] = *(a7 + 44);
  v269 = 5 * a2;
  if (a5 == 4 || a6 == 4)
  {
    v188 = 0;
    v281 = 2 * v274;
    v280 = 3 * v274;
    v189 = vdup_lane_s16(*a8.i8, 0);
    v190 = vdup_lane_s16(*a8.i8, 1);
    v191 = vdup_lane_s16(*a8.i8, 2);
    v192 = vdup_lane_s16(*a8.i8, 3);
    v193 = vdup_laneq_s16(a8, 4);
    v194 = vdup_laneq_s16(a8, 5);
    v195 = 7 * a2;
    v196 = vdup_laneq_s16(a8, 6);
    v278 = a3 + v24;
    v268 = a3 + v23;
    v266 = a3 + a4 + v23;
    v197 = 4 * a4;
    v263 = result + v195 + v272;
    v198 = vdup_laneq_s16(a8, 7);
    v262 = result + v273 + v195;
    v260 = result + a2 + v195;
    v258 = result + v195;
    v199.i64[0] = 0xE800E800E800E800;
    v199.i64[1] = 0xE800E800E800E800;
    _X25 = *(a7 + 8);
    do
    {
      v277 = a5;
      __asm { PRFM            #0, [X0] }

      _X10 = result + v20;
      __asm { PRFM            #0, [X10] }

      _X12 = result + v273;
      __asm { PRFM            #0, [X12] }

      _X13 = result + v272;
      __asm { PRFM            #0, [X13] }

      v11.i32[0] = *(result->i32 + v20);
      v12.i32[0] = *(result->i32 + v273);
      v13.i32[0] = *(result->i32 + v272);
      v14.i32[0] = result->i32[v21 / 4];
      v15.i32[0] = *(result->i32 + v269);
      v16.i32[0] = *(result->i32 + v270);
      v208 = vmovl_u8(result->u32[0]).u64[0];
      v11 = vmovl_u8(v11).u64[0];
      v209 = vmovl_u8(v12).u64[0];
      v210 = vmovl_u8(v13).u64[0];
      v14 = vmovl_u8(v14).u64[0];
      _X10 = _X25 + 2 * v274;
      _X12 = _X25 + 2 * v281;
      v13 = vmovl_u8(v15).u64[0];
      v12 = vmovl_u8(*v16.i8).u64[0];
      _X13 = _X25 + 2 * v280;
      v214 = v258;
      v215 = v260;
      v216 = v262;
      v217 = v263;
      __asm
      {
        PRFM            #0, [X25]
        PRFM            #0, [X10]
      }

      v220 = _X25;
      v221 = a3 + a4;
      v222 = v266;
      __asm
      {
        PRFM            #0, [X12]
        PRFM            #0, [X13]
      }

      v225 = v268;
      v226 = v278;
      v227 = a3;
      v228 = a6;
      do
      {
        _X13 = (v227 + v188);
        v10.i32[0] = *&v214[v188];
        v18.i32[0] = *&v215[v188];
        v19.i32[0] = *&v216[v188];
        v17.i32[0] = *&v217[v188];
        v230 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v194), v13, v193), v14, v192), v210, v191);
        v231 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v196), v13, v194), v14, v193), v210, v192), v209, v191);
        v232 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v193), v13, v192), v14, v191), v210, v190);
        v233 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v192), v13, v191), v14, v190), v210, v189);
        v210 = vmovl_u8(v10).u64[0];
        v234 = vmla_s16(vmla_s16(v231, v11, v190), v208, v189);
        v235 = vmla_s16(vmla_s16(v230, v209, v190), v11, v189);
        v208 = v14;
        v14 = vmovl_u8(*v18.i8).u64[0];
        v11 = v13;
        v13 = vmovl_u8(*v19.i8).u64[0];
        v236 = vmla_s16(v232, v209, v189);
        v209 = v12;
        v12 = vmovl_u8(*v17.i8).u64[0];
        __asm { PRFM            #0, [X25] }

        _X14 = (_X25 + 2 * v274);
        __asm { PRFM            #0, [X14] }

        _X15 = _X25 + 2 * v281;
        __asm { PRFM            #0, [X15] }

        _X15 = _X25 + 2 * v280;
        __asm
        {
          PRFM            #0, [X15]
          PRFM            #0, [X13]
        }

        _X15 = (v221 + v188);
        __asm { PRFM            #0, [X15] }

        _X16 = (v225 + v188);
        __asm { PRFM            #0, [X16] }

        _X1 = v226 + v188;
        __asm { PRFM            #0, [X1] }

        v10 = *(_X25 + 6 * v274);
        v18 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v235, v210, v196), v14, v198), 2uLL), a10, 0), *_X14, a9, 0);
        v19 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v236, v210, v194), v14, v196), v13, v198), 2uLL), a10, 0), *(_X25 + 4 * v274), a9, 0);
        v17 = vshrn_high_n_s32(vshrn_n_s32(v19, 4uLL), vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v233, v210, v193), v14, v194), v13, v196), v12, v198), 2uLL), a10, 0), v10, a9, 0), 4uLL);
        v251 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(v234, v210, v198), 2uLL), a10, 0), *_X25, a9, 0), 4uLL), v18, 4uLL), v199);
        v16 = vaddq_s16(v17, v199);
        *v251.i8 = vqrshrun_n_s16(v251, 4uLL);
        v252 = (v222 + v188);
        *_X13 = v251.i32[0];
        v227 += v197;
        v226 += v197;
        v225 += v197;
        v222 += v197;
        *_X15 = v251.i32[1];
        v15 = vqrshrun_n_s16(v16, 4uLL);
        v221 += v197;
        _X25 += v274;
        v217 += v21;
        v216 += v21;
        *_X16 = v15.i32[0];
        *v252 = v15.i32[1];
        v215 += v21;
        v214 += v21;
        v228 -= 4;
      }

      while (v228);
      result = (result + 4);
      _X25 = v220 + 1;
      v188 += 4;
      a5 -= 4;
    }

    while (v277 != 4);
  }

  else
  {
    v25 = 0;
    v26 = 2 * v274;
    v27 = vdupq_lane_s16(*a8.i8, 0);
    v28 = 4 * a4;
    v29 = vdupq_lane_s16(*a8.i8, 1);
    v30 = vdupq_lane_s16(*a8.i8, 2);
    v31 = vdupq_lane_s16(*a8.i8, 3);
    v32 = vdupq_laneq_s16(a8, 4);
    v33 = vdupq_laneq_s16(a8, 5);
    v34 = vdupq_laneq_s16(a8, 6);
    v265 = 7 * a2;
    v264 = result + v265;
    v35 = 6 * v274;
    v36 = 8 * v274;
    v37 = 6 * v274 + v36;
    v38 = 4 * v274;
    v39 = 4 * v274 + v36;
    v40 = 2 * v274 + v36;
    v261 = a3 + v28;
    v259 = a3 + v28 + 3 * a4;
    v41 = 8 * a2;
    v257 = a3 + 2 * a4 + v28;
    v42 = vdupq_laneq_s16(a8, 7);
    v43 = 16 * v274;
    v256 = a3 + a4;
    v255 = v256 + v28;
    v254 = a3 + 3 * a4;
    v253 = a3 + 2 * a4;
    v44.i64[0] = 0xE800E800E800E800;
    v44.i64[1] = 0xE800E800E800E800;
    v45 = 2 * v28;
    _X7 = v22;
    v47 = 2 * a4;
    v49 = 2 * v23;
    v48 = 2 * v24;
    do
    {
      v276 = a5;
      __asm { PRFM            #0, [X0] }

      _X9 = result + v20;
      __asm { PRFM            #0, [X9] }

      _X10 = result + v273;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v272;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v21;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v269;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v270;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v265;
      __asm { PRFM            #0, [X10] }

      v267 = result;
      v69 = (result + v20 + v20);
      v70 = *v69;
      v71 = (v69 + v20);
      v72 = *v71;
      v73 = (v71 + v20);
      v74 = *v73;
      v75 = (v73 + v20);
      v76 = *(v75 + v20);
      v77 = *v75;
      v78 = vmovl_u8(*result);
      v79 = a3;
      v279 = _X7 + 2 * v26;
      v80 = vmovl_u8(*(result + v20));
      v81 = vmovl_u8(v70);
      v82 = v257;
      v84 = v255;
      v83 = v256;
      v86 = v253;
      v85 = v254;
      v87 = vmovl_u8(v72);
      v88 = vmovl_u8(v74);
      v89 = vmovl_u8(v77);
      v90 = v259;
      v91 = v261;
      v92 = vmovl_u8(v76);
      _X4 = _X7;
      v94 = v264;
      v95 = a6;
      do
      {
        v96 = v43;
        v97 = v41;
        v98 = v40;
        v99 = v39;
        v100 = v38;
        v101 = v37;
        v102 = v36;
        v103 = v35;
        v104 = v26;
        v105 = &v94[v25 + v20];
        v106 = *v105;
        v107 = (v105 + v20);
        v108 = *v107;
        v109 = (v107 + v20);
        v110 = *v109;
        v111 = (v109 + v20);
        v112 = *v111;
        v113 = (v111 + v20);
        v114 = *v113;
        v115 = (v113 + v20);
        v116 = *(v115 + v20);
        v117 = vmovl_u8(*&v94[v25]);
        v118 = vmulq_s16(v78, v27);
        v78 = vmovl_u8(v106);
        v119 = vmlaq_s16(vmlaq_s16(v118, v80, v29), v81, v30);
        v120 = vmlaq_s16(vmulq_s16(v80, v27), v81, v29);
        v80 = vmovl_u8(v108);
        v121 = vmulq_s16(v81, v27);
        v81 = vmovl_u8(v110);
        v122 = vmlaq_s16(v120, v87, v30);
        v123 = vmlaq_s16(v121, v87, v29);
        v124 = vmulq_s16(v87, v27);
        v125 = vmlaq_s16(v119, v87, v31);
        v87 = vmovl_u8(v112);
        v126 = vmlaq_s16(v122, v88, v31);
        v127 = vmlaq_s16(v123, v88, v30);
        v128 = vmlaq_s16(v124, v88, v29);
        v129 = vmulq_s16(v88, v27);
        v130 = vmlaq_s16(v125, v88, v32);
        v88 = vmovl_u8(v114);
        v131 = vmlaq_s16(v126, v89, v32);
        v132 = vmlaq_s16(v127, v89, v31);
        v133 = vmlaq_s16(v128, v89, v30);
        v134 = vmlaq_s16(v129, v89, v29);
        v135 = vmlaq_s16(v130, v89, v33);
        v136 = vmulq_s16(v89, v27);
        v89 = vmovl_u8(*v115);
        __asm { PRFM            #0, [X7] }

        _X6 = _X7 + 2 * v274;
        __asm { PRFM            #0, [X6] }

        v140 = vmlaq_s16(v131, v92, v33);
        v141 = vmlaq_s16(v135, v92, v34);
        v142 = vmlaq_s16(v132, v92, v32);
        v143 = vmlaq_s16(v133, v92, v31);
        v144 = vmlaq_s16(v134, v92, v30);
        v145 = vmlaq_s16(v136, v92, v29);
        v146 = vmulq_s16(v92, v27);
        v92 = vmovl_u8(v116);
        _X6 = v279;
        __asm { PRFM            #0, [X6] }

        _X6 = _X7 + 6 * v274;
        __asm { PRFM            #0, [X6] }

        v151.i64[0] = 0x1800180018001800;
        v151.i64[1] = 0x1800180018001800;
        v152.i64[0] = 0x1800180018001800;
        v152.i64[1] = 0x1800180018001800;
        v153.i64[0] = 0x1800180018001800;
        v153.i64[1] = 0x1800180018001800;
        v154 = vrsraq_n_s16(v151, vmlaq_s16(v141, v42, v117), 2uLL);
        v155.i64[0] = 0x1800180018001800;
        v155.i64[1] = 0x1800180018001800;
        v156 = vrsraq_n_s16(v152, vmlaq_s16(vmlaq_s16(v140, v34, v117), v42, v78), 2uLL);
        v157 = vrsraq_n_s16(v153, vmlaq_s16(vmlaq_s16(vmlaq_s16(v142, v33, v117), v34, v78), v42, v80), 2uLL);
        v140.i64[0] = 0x1800180018001800;
        v140.i64[1] = 0x1800180018001800;
        v158 = vrsraq_n_s16(v155, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v143, v32, v117), v33, v78), v34, v80), v42, v81), 2uLL);
        v159.i64[0] = 0x1800180018001800;
        v159.i64[1] = 0x1800180018001800;
        v160 = vrsraq_n_s16(v140, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v144, v31, v117), v32, v78), v33, v80), v34, v81), v42, v87), 2uLL);
        v141.i64[0] = 0x1800180018001800;
        v141.i64[1] = 0x1800180018001800;
        v161 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v146, v29, v117), v30, v78), v31, v80), v32, v81), v33, v87), v34, v88), v42, v89);
        v162 = vrsraq_n_s16(v159, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v145, v30, v117), v31, v78), v32, v80), v33, v81), v34, v87), v42, v88), 2uLL);
        v163 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v27, v117), v29, v78), v30, v80), v31, v81), v32, v87), v33, v88), v34, v89), v42, v92);
        v117.i64[0] = 0x1800180018001800;
        v117.i64[1] = 0x1800180018001800;
        __asm { PRFM            #0, [X4] }

        v165 = vrsraq_n_s16(v141, v161, 2uLL);
        _X6 = _X4 + v47;
        __asm { PRFM            #0, [X6] }

        _X6 = _X4 + v49;
        __asm { PRFM            #0, [X6] }

        _X6 = _X4 + v48;
        v171 = vrsraq_n_s16(v117, v163, 2uLL);
        __asm { PRFM            #0, [X6] }

        v26 = v104;
        v35 = v103;
        v36 = v102;
        v37 = v101;
        v38 = v100;
        v39 = v99;
        v40 = v98;
        v41 = v97;
        v43 = v96;
        v173 = *&_X4->i8[v26];
        v174 = *&_X4->i8[v38];
        v175 = vmlal_lane_u16(vmull_lane_u16(*v156.i8, a10, 0), *v173.i8, a9, 0);
        v176 = vmlal_high_lane_u16(vmull_high_lane_u16(v156, a10, 0), v173, a9, 0);
        v177 = vmlal_lane_u16(vmull_lane_u16(*v157.i8, a10, 0), *v174.i8, a9, 0);
        v178 = vmlal_high_lane_u16(vmull_high_lane_u16(v157, a10, 0), v174, a9, 0);
        v179 = *&_X4->i8[v35];
        *(v79 + v25) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v154.i8, a10, 0), *_X4, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v154, a10, 0), *_X4->i8, a9, 0), 4uLL), v44), 4uLL);
        *(v83 + v25) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v175, 4uLL), v176, 4uLL), v44), 4uLL);
        *(v86 + v25) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v177, 4uLL), v178, 4uLL), v44), 4uLL);
        *(v85 + v25) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v158.i8, a10, 0), *v179.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v158, a10, 0), v179, a9, 0), 4uLL), v44), 4uLL);
        v180 = *&_X4->i8[v40];
        v181 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v160.i8, a10, 0), *(_X4 + v36), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v160, a10, 0), *&_X4->i8[v36], a9, 0), 4uLL);
        v182 = vmlal_lane_u16(vmull_lane_u16(*v162.i8, a10, 0), *v180.i8, a9, 0);
        v183 = vmlal_high_lane_u16(vmull_high_lane_u16(v162, a10, 0), v180, a9, 0);
        v184 = *&_X4->i8[v39];
        v185 = vmlal_lane_u16(vmull_lane_u16(*v165.i8, a10, 0), *v184.i8, a9, 0);
        v186 = vmlal_high_lane_u16(vmull_high_lane_u16(v165, a10, 0), v184, a9, 0);
        v187 = *&_X4->i8[v37];
        *(v91 + v25) = vqrshrun_n_s16(vaddq_s16(v181, v44), 4uLL);
        *(v84 + v25) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v182, 4uLL), v183, 4uLL), v44), 4uLL);
        *(v82 + v25) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v185, 4uLL), v186, 4uLL), v44), 4uLL);
        *(v90 + v25) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v171.i8, a10, 0), *v187.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v171, a10, 0), v187, a9, 0), 4uLL), v44), 4uLL);
        v94 += v41;
        _X4 = (_X4 + v96);
        v90 += v45;
        v82 += v45;
        v85 += v45;
        v84 += v45;
        v86 += v45;
        v83 += v45;
        v79 += v45;
        v91 += v45;
        v95 -= 8;
      }

      while (v95);
      result = v267 + 1;
      _X7 += 2;
      v25 += 8;
      a5 = v276 - 8;
    }

    while (v276 != 8);
  }

  return result;
}

uint64_t av1_compound_type_rd(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, char a6, int a7, unint64_t a8, double a9, double a10, double a11, uint16x8_t a12, int16x8_t a13, uint16x8_t a14, uint32x4_t a15, double a16, uint64_t a17, uint8x8_t **a18, int *a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25)
{
  v414.n128_u64[1] = a8;
  *&v415 = a5;
  HIDWORD(v417) = a4;
  v398 = a3;
  v26 = a2;
  v27 = a1;
  v406 = a20;
  v28 = a19;
  v393 = a18;
  v450[2] = *MEMORY[0x277D85DE8];
  v405 = (a1 + 389212);
  v29 = **(a2 + 8280);
  v30 = *(*&v29 + 2);
  v31 = *(*&v29 + 17);
  v32 = *(*&v29 + 16);
  v33 = *(*&v29 + 16);
  if (v31 >= 1)
  {
    v34 = v31 >= 5 && v32 < 5;
    if (v34)
    {
      goto LABEL_30;
    }

    v35 = *(*&v29 + 16);
    if (v35 <= 2)
    {
      if (v35 == 1)
      {
        v37 = v31 - 2;
        if ((v31 - 2) < 3u)
        {
LABEL_516:
          v33 = (v37 + 20);
          goto LABEL_31;
        }

LABEL_30:
        v33 = (v32 + 4 * v31 - 13);
        goto LABEL_31;
      }

      if (v35 != 2)
      {
        goto LABEL_30;
      }

      if (v31 == 4)
      {
        v37 = 5;
      }

      else
      {
        v37 = -1;
      }

      if (v31 == 3)
      {
        v33 = 24;
        goto LABEL_31;
      }
    }

    else
    {
      if (v35 == 3)
      {
        if (v31 == 4)
        {
          v33 = 26;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v35 != 5)
      {
        v36 = v35 == 6 && v31 == 7;
        if (v36)
        {
          v33 = 28;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v31 == 6)
      {
        v37 = 7;
      }

      else
      {
        v37 = -1;
      }

      if (v31 == 7)
      {
        v33 = 23;
        goto LABEL_31;
      }
    }

    if ((v37 & 0x80) == 0)
    {
      goto LABEL_516;
    }

    goto LABEL_30;
  }

LABEL_31:
  v391 = v33;
  *&v422 = a4;
  v38 = block_size_wide_6[a4];
  HIDWORD(v400) = *a19;
  *(v450 + 7) = 0;
  *(&v420 + 1) = a1 + 263736;
  v39 = a18[1];
  v449 = *a18;
  v450[0] = 0;
  v448 = v39;
  v396 = v38;
  v434 = v38;
  v40.i64[1] = 0x7FFFFFFFFFFFFFFFLL;
  v445 = xmmword_273BDEF78;
  v446 = unk_273BDEF88;
  v443 = xmmword_273BCF730;
  v444 = xmmword_273BCF730;
  v441 = unk_273BDEF88;
  v442 = xmmword_273BCF730;
  v440 = xmmword_273BDEF78;
  v41 = *(a2 + 119984);
  if (v41 < 1)
  {
LABEL_64:
    v43 = 0;
    v56 = 1;
    goto LABEL_65;
  }

  v42 = 0;
  v43 = 0;
  v45 = v30 == 15 || v30 == 23;
  v46 = a2 + 109824;
  v47 = 1;
  while (1)
  {
    v48 = v46 + v42;
    if (*(v46 + v42 + 44) == *(*&v29 + 20) && *(v48 + 40) == v32 && *(v46 + v42 + 32) == *(*&v29 + 8))
    {
      v49 = *(v26 + 11160);
      v50 = **&v29;
      v51 = block_size_high_5[v50];
      if (block_size_wide_6[v50] < v51)
      {
        LOBYTE(v51) = block_size_wide_6[v50];
      }

      v52 = *(v49 + 36 * v32 + 32) > 1u && v45;
      v53 = v51 > 7u && v52;
      if (*(v48 + 52) == v53 && *(v46 + v42 + 41) == v31 && *(v46 + v42 + 36) == *(*&v29 + 12))
      {
        v54 = *(v49 + 36 * v31 + 32) > 1u && v45;
        if (v51 <= 7u)
        {
          v54 = 0;
        }

        if (*(v46 + v42 + 56) == v54)
        {
          break;
        }
      }
    }

    v47 = ++v43 < v41;
    v42 += 160;
    if (160 * v41 == v42)
    {
      goto LABEL_64;
    }
  }

  v55 = (v30 <= 0x18 && ((1 << v30) & 0x1790000) != 0 || (v383 = *(v26 + v42 + 109866), v383 <= 0x18) && ((1 << v383) & 0x1790000) != 0) && !*(a1 + 389280);
  if (!*(a1 + 389320))
  {
    if (v30 - 16 < 9 && ((0x179u >> (v30 - 16)) & 1) != 0)
    {
      LOBYTE(v380) = 1;
      goto LABEL_520;
    }

    v382 = *(v26 + v42 + 109866);
    if (v382 < 0x19)
    {
      v380 = 0x1790000u >> v382;
      goto LABEL_520;
    }
  }

  LOBYTE(v380) = 0;
LABEL_520:
  v381 = v26 + v42;
  *&v444 = *(v26 + v42 + 109744);
  v445 = *(v26 + v42 + 109760);
  *&v442 = *(v26 + v42 + 109792);
  v40 = *(v26 + v42 + 109808);
  v440 = v40;
  *&v443 = *(v26 + v42 + 109840);
  if (!v55)
  {
    DWORD2(v444) = *(v381 + 109752);
    *&v446 = *(v381 + 109776);
    DWORD2(v442) = *(v381 + 109800);
    *&v441 = *(v381 + 109824);
    DWORD2(v443) = *(v381 + 109848);
  }

  if ((v380 & 1) == 0)
  {
    HIDWORD(v444) = *(v26 + v42 + 109756);
    *(&v446 + 1) = *(v26 + v42 + 109784);
    HIDWORD(v442) = *(v26 + v42 + 109804);
    *(&v441 + 1) = *(v26 + v42 + 109832);
    HIDWORD(v443) = *(v26 + v42 + 109852);
  }

  v56 = !v47;
LABEL_65:
  HIDWORD(v395) = v56;
  v57 = *v415;
  *a20 = 0x7FFFFFFFFFFFFFFFLL;
  v433 = 50462976;
  if ((a6 & 2) != 0 && *(**(&v420 + 1) + 48) == 1)
  {
    v58 = *(a1 + 389284) == 2;
    if ((a6 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v58 = 1;
    if ((a6 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  v59 = block_size_high_5[HIDWORD(v417)];
  if (v396 < v59)
  {
    v59 = v396;
  }

  if (v59 < 8)
  {
LABEL_73:
    LODWORD(v60) = 0;
    if (v58)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  LOBYTE(v433) = 0;
  LODWORD(v60) = 1;
  if (v58)
  {
    goto LABEL_80;
  }

LABEL_76:
  v61 = block_size_high_5[HIDWORD(v417)];
  if (v396 < v61)
  {
    v61 = v396;
  }

  if (v61 >= 8)
  {
    v62 = v60;
    LODWORD(v60) = v60 + 1;
    *(&v433 | v62) = 1;
  }

LABEL_80:
  if (!a7)
  {
    goto LABEL_96;
  }

  if (*(a1 + 389268) >= *(v26 + 146584))
  {
    v63 = 1;
    if ((a6 & 4) == 0)
    {
      goto LABEL_90;
    }

LABEL_85:
    v64 = block_size_high_5[HIDWORD(v417)];
    if (v396 < v64)
    {
      v64 = v396;
    }

    if (v64 >= 8 && !((av1_wedge_params_lookup[8 * HIDWORD(v417)] < 1) | v63 & 1))
    {
      v65 = v60;
      LODWORD(v60) = v60 + 1;
      *(&v433 | v65) = 2;
    }

    goto LABEL_90;
  }

  v63 = *(a1 + 265516) ^ 1;
  if ((a6 & 4) != 0)
  {
    goto LABEL_85;
  }

LABEL_90:
  if ((a6 & 8) != 0)
  {
    v66 = block_size_high_5[HIDWORD(v417)];
    if (v396 < v66)
    {
      v66 = v396;
    }

    if (*(a1 + 265515) && v66 >= 8)
    {
      *(&v433 + v60) = 3;
      LODWORD(v60) = v60 + 1;
    }
  }

LABEL_96:
  v67 = *(v26 + 8296);
  v68 = *(v26 + 8304);
  if (v68)
  {
    if (*(v68 + 17) < 1)
    {
      if (*(v68 + 16) == 7)
      {
        v69 = 3;
      }

      else
      {
        v69 = 0;
      }

      if (v67)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v69 = HIBYTE(*(v68 + 167)) & 1;
      if (v67)
      {
        goto LABEL_99;
      }
    }

LABEL_102:
    v70 = 0;
    goto LABEL_111;
  }

  v69 = 0;
  if (!v67)
  {
    goto LABEL_102;
  }

LABEL_99:
  if (*(v67 + 17) < 1)
  {
    if (*(v67 + 16) == 7)
    {
      v70 = 3;
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = HIBYTE(*(v67 + 167)) & 1;
  }

LABEL_111:
  v71 = v70 + v69;
  if (v71 >= 5)
  {
    v71 = 5;
  }

  v72 = *(*&v29 + 16);
  if ((v72 - 1) > 7 || (v73 = *(a1 + 4 * (v72 - 1) + 239296), v73 == -1))
  {
    v74 = 0;
    v75 = *(*&v29 + 17);
    if ((v75 - 1) > 7)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v74 = *(a1 + 8 * v73 + 239472);
    v75 = *(*&v29 + 17);
    if ((v75 - 1) > 7)
    {
      goto LABEL_124;
    }
  }

  v76 = *(a1 + 4 * (v75 - 1) + 239296);
  if (v76 != -1)
  {
    v77 = *(a1 + 8 * v76 + 239472);
    if (v74)
    {
      goto LABEL_125;
    }

LABEL_120:
    v78 = 0;
    if (v77)
    {
      goto LABEL_126;
    }

LABEL_121:
    v79 = 0;
    v80 = **(&v420 + 1);
    if (*(**(&v420 + 1) + 40))
    {
      goto LABEL_127;
    }

LABEL_122:
    v81 = 0;
    v82 = 0;
    if (!v68)
    {
      goto LABEL_130;
    }

    goto LABEL_128;
  }

LABEL_124:
  v77 = 0;
  if (!v74)
  {
    goto LABEL_120;
  }

LABEL_125:
  v78 = *(v74 + 4);
  if (!v77)
  {
    goto LABEL_121;
  }

LABEL_126:
  v79 = *(v77 + 4);
  v80 = **(&v420 + 1);
  if (!*(**(&v420 + 1) + 40))
  {
    goto LABEL_122;
  }

LABEL_127:
  v83 = *(*(a1 + 239288) + 4);
  v84 = 1 << *(v80 + 44);
  v81 = ((v84 - 1) & (v79 - v83)) - (v84 & (v79 - v83));
  v82 = ((v84 - 1) & (v83 - v78)) - (v84 & (v83 - v78));
  if (!v68)
  {
    goto LABEL_130;
  }

LABEL_128:
  if (*(v68 + 17) < 1)
  {
    v68 = *(v68 + 16) == 7;
    if (!v67)
    {
      goto LABEL_136;
    }

    goto LABEL_131;
  }

  v68 = (*(v68 + 167) >> 9) & 1;
LABEL_130:
  if (!v67)
  {
    goto LABEL_136;
  }

LABEL_131:
  if (*(v67 + 17) < 1)
  {
    v67 = *(v67 + 16) == 7;
  }

  else
  {
    v67 = (*(v67 + 167) >> 9) & 1;
  }

LABEL_136:
  v425 = (v26 + 16904);
  if (v81 < 0)
  {
    v81 = -v81;
  }

  if (v82 < 0)
  {
    v82 = -v82;
  }

  v36 = v81 == v82;
  v85 = 3;
  if (!v36)
  {
    v85 = 0;
  }

  v86 = v68 + v67 + v85;
  if (a7)
  {
    v40.i64[0] = *(v26 + 8 * v71 + 35288);
  }

  else
  {
    v40 = 0uLL;
  }

  v87.i64[0] = *(v26 + 8 * v86 + 35240);
  v87.i64[1] = *(v26 + 8 * HIDWORD(v417) + 33384);
  v88.i64[0] = vrev64q_s32(v87).u64[0];
  v88.i64[1] = v87.i64[1];
  v89 = vaddq_s32(v88, vzip1q_s32(v40, v40));
  v447 = v89;
  v414.n128_u32[0] = *(v26 + 420);
  v414.n128_u32[1] = *(v26 + 416);
  if ((v395 & 0x100000000) == 0 && *(a1 + 389312))
  {
    v90 = v26 + 160 * v43;
    v91 = *(v90 + 109899);
    v92 = *(&v444 + *(v90 + 109899));
    if (v92 == 0x7FFFFFFF)
    {
      return 0;
    }

    *(*&v29 + 83) = v91;
    *(*&v29 + 167) = ((v91 > 1) << 8) | ((v91 != 1) << 9) | *(*&v29 + 167) & 0xFCFF;
    *(*&v29 + 72) = *(v90 + 109888);
    result = *(&v443 + v91);
    *a20 = ((*(v26 + 16920) * (result + v92 + *a19) + 256) >> 9) + (*(&v445 + v91) << 7);
    *(*&v29 + 8) = *v415;
    *(*&v29 + 12) = *(v415 + 4);
    return result;
  }

  *&v424 = a21;
  if (v433)
  {
    v94 = *(a17 + 24);
    *(v26 + 448) = *a17;
    *(v26 + 472) = v94;
  }

  v397 = a17;
  if (!v60)
  {
    v362 = 0;
    v361 = 0;
    result = 0;
    v363 = 512;
    goto LABEL_488;
  }

  v95 = 0;
  LODWORD(v400) = 0;
  HIDWORD(v394) = 0;
  LODWORD(v395) = 0;
  v387 = a24;
  v390 = a25;
  v96 = v398 + 1326;
  v97 = v391;
  *&v417 = a22;
  *&v423 = a23;
  *(&v419 + 1) = a1 + 389152;
  v410 = v26 + 35968;
  *(&v415 + 1) = v26 + 33560;
  v388 = &av1_wedge_params_lookup[8 * HIDWORD(v417)];
  v60 = v60;
  *(&v422 + 1) = &av1_ss_size_lookup[4 * HIDWORD(v417)];
  HIDWORD(v389) = 1;
  v399 = 0x7FFFFFFFFFFFFFFFLL;
  *&v416 = v26;
  v412 = v29;
  *&v413 = a19;
  HIDWORD(v413) = v30;
  *&v419 = a1;
  v402 = v391;
  v403 = (v398 + 1326);
  v401 = v60;
  while (2)
  {
    v101 = *(&v433 + v95);
    if (v96[v97])
    {
      v102 = 0;
    }

    else
    {
      v102 = v101 == 2;
    }

    if (v102)
    {
      goto LABEL_156;
    }

    v404 = v95;
    v99 = *v28;
    v103 = v417;
    if (v417 >= *v406)
    {
      v103 = *v406;
    }

    *(*&v29 + 83) = v101;
    *(*&v29 + 167) = ((v101 > 1) << 8) | ((v101 != 1) << 9) | *(*&v29 + 167) & 0xFCFF;
    v98 = v447.i32[v101];
    v104 = *v424;
    v105 = v425[4];
    v106 = (v105 * (*v424 + v98) + 256) >> 9;
    *&v417 = v103;
    if (v106 >= v103)
    {
      goto LABEL_155;
    }

    v107 = v98;
    v108 = v405[27];
    *(&v424 + 1) = 256;
    *&v420 = v447.u32[v101];
    if (v108 == 3)
    {
      if (v101 >= 2)
      {
        if (v101 != 2)
        {
          goto LABEL_288;
        }

        goto LABEL_191;
      }

LABEL_177:
      LODWORD(v435) = 0;
      LOBYTE(v439) = 0;
      v437 = 0;
      v436 = 0;
      v111 = *(&v444 + v101);
      if (v111 != 0x7FFFFFFF)
      {
        v186 = *v28 + v98;
        *(&v421 + 1) = ((v105 * (v186 + v111) + 256) >> 9) + (*(&v445 + v101) << 7);
        v100 = (((*(&v442 + v101) + v186) * v105 + 256) >> 9) + (*(&v440 + v101) << 7);
        v187 = v406;
        v115 = v397;
        if (v101)
        {
          goto LABEL_481;
        }

        goto LABEL_254;
      }

      v112 = v99;
      av1_enc_build_inter_predictor(v27 + 239056, v26 + 416, v414.n128_u32[1], v414.n128_u32[0], v414.n128_i64[1], HIDWORD(v417), 0, 0, *v89.i64, *v87.i64, *v88.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i64, a16, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, *&v426, *(&v426 + 1), v427, v428, v429);
      if (!v101)
      {
        *v387 = 1;
      }

      *&v428 = 0;
      v89.i64[0] = 0;
      v426 = 0u;
      v427 = 0u;
      if (*v406 >= v390)
      {
        v113 = v390;
      }

      else
      {
        v113 = *v406;
      }

      v114 = *(*(&v419 + 1) + 8 * (*(**(&v420 + 1) + 63) != 0));
      v115 = v397;
      if (!v114)
      {
        goto LABEL_327;
      }

      v116 = *(v416 + 436);
      v117 = *(v416 + 440);
      v118 = *(*(&v422 + 1) + 2 * v116 + v117);
      v119 = block_size_high_5[v118];
      v120 = *(v416 + 8352);
      if (v120 < 0)
      {
        v119 = ((v120 >> (v117 + 3)) + v119) & ~(((v120 >> (v117 + 3)) + v119) >> 31);
        v121 = block_size_wide_6[v118];
        v122 = *(v416 + 8344);
        v123 = v413;
        if ((v122 & 0x80000000) == 0)
        {
          goto LABEL_186;
        }
      }

      else
      {
        v121 = block_size_wide_6[v118];
        v122 = *(v416 + 8344);
        v123 = v413;
        if ((v122 & 0x80000000) == 0)
        {
LABEL_186:
          v124 = *v123;
          v125 = *(v416 + 11072);
          v126 = aom_sse(*(v416 + 48), *(v416 + 72), *(v416 + 448), *(v416 + 472), v121, v119);
          if ((*(v416 + 146584) << (num_pels_log2_lookup_4[v422] + 7)) < v423 && *v425 >= dword_273BDF00C[v114])
          {
            v127 = 4 * dword_273BDEFF4[v114];
            v115 = v397;
            v100 = 0x7FFFFFFFFFFFFFFFLL;
            if (v423 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_327;
            }
          }

          else
          {
            v127 = 4;
            v115 = v397;
            v100 = 0x7FFFFFFFFFFFFFFFLL;
            if (v423 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_327:
              v100 = 0x7FFFFFFFFFFFFFFFLL;
              v272 = v113 - v106;
              if (v272 < 0)
              {
                v271 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                aom_subtract_block_neon(block_size_high_12[v422], block_size_wide_13[v422], *v416, block_size_wide_13[v422], *(v416 + 48), *(v416 + 72), *(v416 + 448), *(v416 + 472));
                if (av1_estimate_txfm_yrd(v419, v416, &v426, v272, HIDWORD(v417), max_txsize_rect_lookup_1[v422]) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v271 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v273 = *(v416 + 8304);
                  if (v273)
                  {
                    v273 = *(v273 + 144);
                  }

                  v274 = *(v416 + 8296);
                  if (v274)
                  {
                    v274 = *(v274 + 144);
                  }

                  v275 = v274 + v273;
                  if (v428)
                  {
                    v276 = *(v410 + 8 * v275 + 4);
                  }

                  else
                  {
                    v276 = v426 + *(v410 + 8 * v275);
                  }

                  LODWORD(v426) = v276;
                  v271 = ((v425[4] * (v276 + *v413 + v420) + 256) >> 9) + (*(&v426 + 1) << 7);
                  model_rd_for_sb_with_curvfit(HIDWORD(v417), v416, v416 + 416, &v435, &v437, &v439, &v436);
                  v324 = v435;
                  v325 = v437;
                  v100 = ((v425[4] * (*v413 + v435 + v420) + 256) >> 9) + (v437 << 7);
                  *(&v444 + v101) = v426;
                  *(&v445 + v101) = *(&v426 + 1);
                  *(&v442 + v101) = v324;
                  *(&v440 + v101) = v325;
                  *(&v443 + v101) = v420;
                }

                v115 = v397;
              }

LABEL_419:
              *(&v421 + 1) = v271;
              v26 = v416;
              v28 = v413;
              v30 = HIDWORD(v413);
              v187 = v406;
              v27 = v419;
              v99 = v112;
              v98 = v420;
              if (v101)
              {
                goto LABEL_481;
              }

              goto LABEL_254;
            }
          }

          v270 = ((*(&v424 + 1) + v425[4] * (v124 + v107)) >> 9) + ((v126 + ((1 << (2 * v125 - 16)) >> 1)) >> (2 * v125 - 16) << 11);
          v271 = 0x7FFFFFFFFFFFFFFFLL;
          v34 = (v127 * v423 * dword_273BDF024[v114]) >> 6 < v270;
          v115 = v397;
          if (v34)
          {
            goto LABEL_419;
          }

          goto LABEL_327;
        }
      }

      v121 = ((v122 >> (v116 + 3)) + v121) & ~(((v122 >> (v116 + 3)) + v121) >> 31);
      goto LABEL_186;
    }

    if (v108)
    {
      v109 = 0;
    }

    else
    {
      v109 = v101 == 3;
    }

    v110 = v109;
    if (v101 < 2)
    {
      if (v108 == 2 && v30 != 24)
      {
        goto LABEL_177;
      }

      if (v30 <= 0x18 && ((1 << v30) & 0x1390000) != 0 || v30 == 22)
      {
        v432 = 0;
        memset(v431, 0, sizeof(v431));
        v429 = 0u;
        v430 = 0u;
        v427 = 0u;
        v428 = 0u;
        v426 = 0u;
        av1_dist_wtd_comp_weight_assign(v27 + 239056, *&v29, v431 + 2, v431 + 3, v431 + 1, 1);
        memset(*(v26 + 11184), 4 * BYTE8(v431[0]), 0x8000uLL);
        v190 = HIDWORD(v417);
        v191 = av1_interinter_compound_motion_search(v27, v26, v415);
      }

      else
      {
        v191 = *v28;
        v190 = HIDWORD(v417);
      }

      av1_enc_build_inter_predictor(v27 + 239056, v26 + 416, v414.n128_u32[1], v414.n128_u32[0], v414.n128_i64[1], v190, 0, 0, *v89.i64, *v87.i64, *v88.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i64, a16, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, *&v426, *(&v426 + 1), v427, v428, v429);
      if (!v101)
      {
        *v387 = 1;
      }

      v192 = *(*(&v419 + 1) + 8 * (*(**(&v420 + 1) + 63) != 0));
      if (!v192)
      {
LABEL_397:
        *&v428 = 0;
        v313 = block_size_wide_13[v422];
        v314 = block_size_high_12[v422];
        v426 = 0u;
        v427 = 0u;
        aom_subtract_block_neon(v314, v313, *v26, v313, *(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472));
        v27 = v419;
        if (av1_estimate_txfm_yrd(v419, v26, &v426, 0x7FFFFFFFFFFFFFFFLL, HIDWORD(v417), max_txsize_rect_lookup_1[v422]) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v315 = v426;
          v30 = HIDWORD(v413);
          v99 = v191;
          v98 = v420;
        }

        else
        {
          v316 = *(v26 + 8304);
          v99 = v191;
          v98 = v420;
          if (v316)
          {
            v316 = *(v316 + 144);
          }

          v317 = *(v26 + 8296);
          v30 = HIDWORD(v413);
          if (v317)
          {
            v317 = *(v317 + 144);
          }

          v318 = v317 + v316;
          if (v428)
          {
            v315 = *(v410 + 8 * v318 + 4);
          }

          else
          {
            v315 = v426 + *(v410 + 8 * v318);
          }
        }

        *(&v421 + 1) = ((v425[4] * (v99 + v98 + v315) + 256) >> 9) + (*(&v426 + 1) << 7);
        v100 = 0x7FFFFFFFFFFFFFFFLL;
        v187 = v406;
        v115 = v397;
        if (v101)
        {
          goto LABEL_481;
        }

LABEL_254:
        v188 = *v115;
        v189 = *(v115 + 24);
        *(v26 + 448) = v188;
        v187 = v406;
        *(v26 + 472) = v189;
        goto LABEL_481;
      }

      v193 = *(v26 + 436);
      v194 = *(v26 + 440);
      v195 = *(*(&v422 + 1) + 2 * v193 + v194);
      v196 = block_size_high_5[v195];
      v197 = *(v26 + 8352);
      if (v197 < 0)
      {
        v196 = ((v197 >> (v194 + 3)) + v196) & ~(((v197 >> (v194 + 3)) + v196) >> 31);
        v198 = block_size_wide_6[v195];
        v199 = *(v26 + 8344);
        if ((v199 & 0x80000000) == 0)
        {
          goto LABEL_263;
        }
      }

      else
      {
        v198 = block_size_wide_6[v195];
        v199 = *(v26 + 8344);
        if ((v199 & 0x80000000) == 0)
        {
LABEL_263:
          v200 = *v28;
          v201 = *(v26 + 11072);
          v202 = aom_sse(*(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472), v198, v196);
          if ((*(v26 + 146584) << (num_pels_log2_lookup_4[v422] + 7)) < v423 && *v425 >= dword_273BDF00C[v192])
          {
            v203 = 4 * dword_273BDEFF4[v192];
            v100 = 0x7FFFFFFFFFFFFFFFLL;
            if (v423 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_397;
            }
          }

          else
          {
            v203 = 4;
            v100 = 0x7FFFFFFFFFFFFFFFLL;
            if (v423 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_397;
            }
          }

          if ((v203 * v423 * dword_273BDF024[v192]) >> 6 < ((*(&v424 + 1) + v425[4] * (v200 + v107)) >> 9) + ((v202 + ((1 << (2 * v201 - 16)) >> 1)) >> (2 * v201 - 16) << 11))
          {
            *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v30 = HIDWORD(v413);
            v187 = v406;
            v27 = v419;
            v115 = v397;
            v99 = v191;
            v98 = v420;
            if (v101)
            {
              goto LABEL_481;
            }

            goto LABEL_254;
          }

          goto LABEL_397;
        }
      }

      v198 = ((v199 >> (v193 + 3)) + v198) & ~(((v199 >> (v193 + 3)) + v198) >> 31);
      goto LABEL_263;
    }

    if (v101 != 2)
    {
      if (!v110)
      {
LABEL_288:
        v234 = *v406;
        if (*v406 == 0x7FFFFFFFFFFFFFFFLL || v234 / comp_type_rd_threshold_div[v405[1]] * comp_type_rd_threshold_mul[v405[1]] < v103)
        {
          HIDWORD(v423) = v99;
          if (v234 >= v390)
          {
            v234 = v390;
          }

          *(&v418 + 1) = v234;
          v235 = *v28;
          v237 = *(v393 + 16);
          v236 = *(v393 + 24);
          v238 = **(v26 + 8280);
          *&v421 = v238[83];
          if (HIDWORD(v389))
          {
            v239 = block_size_high_5[v422];
            *(&v421 + 1) = **(v26 + 8280);
            av1_build_inter_predictors_for_planes_single_buf((v26 + 416), SHIDWORD(v417), 0, 0, 0, &v449, &v434, *v89.i64, *v87.i64, v88, a12, a13, a14, a15, *&a16);
            av1_build_inter_predictors_for_planes_single_buf((v26 + 416), SHIDWORD(v417), 0, 0, 1, &v448, &v434, v240, v241, v242, v243, v244, v245, v246, v247);
            aom_subtract_block_neon(v239, v396, v237, v396, *(v26 + 48), *(v26 + 72), v448, v396);
            aom_subtract_block_neon(v239, v396, v236, v396, v448, v396, v449, v396);
          }

          v438 = 0;
          v436 = 0;
          v249 = v448;
          v248 = v449;
          if (v421 == 2)
          {
            LODWORD(v426) = 0;
            (*(*v419 + (v422 << 7) + 51416))(v449, v434, v448, v434, &v426);
            v250 = (v426 + (1 << num_pels_log2_lookup_4[v422] >> 1)) >> num_pels_log2_lookup_4[v422];
            if (v250 < 8 || (HIDWORD(v413) > 0x18 || ((1 << SBYTE12(v413)) & 0x1390000) == 0) && HIDWORD(v413) != 22 && v250 <= 0x3F)
            {
              v100 = 0x7FFFFFFFFFFFFFFFLL;
              *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              v99 = HIDWORD(v423);
              LODWORD(v251) = v420;
LABEL_480:
              HIDWORD(v389) = 0;
              v98 = v251;
              v30 = HIDWORD(v413);
              v187 = v406;
              v27 = v419;
              goto LABEL_481;
            }

            v249 = v448;
            v248 = v449;
          }

          v435 = -1;
          v253 = (off_2882ACAC0[v421 - 2])(v419, v26, HIDWORD(v417), v248, v249, v237, v236, &v435);
          if (v238[83] == 2)
          {
            v254 = *v238;
            v99 = HIDWORD(v423);
            v255 = v420;
            if (av1_wedge_params_lookup[8 * v254] < 1)
            {
              v256 = 0;
            }

            else
            {
              v256 = *(*(&v415 + 1) + (v254 << 6) + 4 * v238[80]) + 512;
            }
          }

          else
          {
            v256 = 512;
            v99 = HIDWORD(v423);
            v255 = v420;
          }

          v251 = (v256 + v255);
          v319 = v425[4];
          if (*(&v418 + 1) < (v319 * (v251 + v104) + 256) >> 9)
          {
            v100 = 0x7FFFFFFFFFFFFFFFLL;
            *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_479:
            v28 = v413;
            goto LABEL_480;
          }

          v320 = v251 + v235;
          v321 = (v319 * (v251 + v235) + 256) >> 9;
          v322 = *(*(&v419 + 1) + 8 * (*(**(&v420 + 1) + 63) != 0));
          if (v322)
          {
            if ((*(v26 + 146584) << (num_pels_log2_lookup_4[v422] + 7)) < v423 && *v425 >= dword_273BDF00C[v322])
            {
              v323 = 4 * dword_273BDEFF4[v322];
              v100 = 0x7FFFFFFFFFFFFFFFLL;
              if (v423 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_426;
              }
            }

            else
            {
              v323 = 4;
              v100 = 0x7FFFFFFFFFFFFFFFLL;
              if (v423 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_426;
              }
            }

            *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            if ((v323 * v423 * dword_273BDF024[v322]) >> 6 < v321 + (v435 << 11))
            {
              goto LABEL_479;
            }
          }

LABEL_426:
          v327 = *(&v444 + v421);
          if (v327 != 0x7FFFFFFF)
          {
            *(&v421 + 1) = (*(&v445 + v421) << 7) + ((v319 * (v327 + v320) + 256) >> 9);
            v100 = (((*(&v442 + v421) + v320) * v319 + 256) >> 9) + (*(&v440 + v421) << 7);
            v99 = v235;
            goto LABEL_479;
          }

          *(&v424 + 1) = v253;
          *&v420 = v251;
          if (HIDWORD(v413) <= 0x18 && ((1 << SBYTE12(v413)) & 0x1790000) != 0 && v421 == 2 && !v405[17])
          {
            v328 = HIDWORD(v417);
            v347 = av1_interinter_compound_motion_search(v419, v26, v415);
            av1_enc_build_inter_predictor(v419 + 239056, v26 + 416, *(v26 + 416), *(v26 + 420), v414.n128_i64[1], HIDWORD(v417), 0, 0, v348, v349, v350, v351, v352, v353, v354, v355, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, *&v426, *(&v426 + 1), v427, v428, v429);
            v329 = 0;
            v330 = v347;
            v320 = v347 + v420;
          }

          else
          {
            v328 = HIDWORD(v417);
            av1_build_wedge_inter_predictor_from_buf((v26 + 416), SHIDWORD(v417), 0, 0, &v449, &v434, &v448, &v434);
            v329 = 1;
            v330 = v235;
          }

          v439 = 0;
          v437 = 0;
          model_rd_for_sb_with_curvfit(v328, v26, v26 + 416, &v439, &v437, &v438, &v436);
          v331 = v439;
          v332 = (v425[4] * (v439 + v320) + 256) >> 9;
          v333 = v437;
          v100 = v332 + (v437 << 7);
          if (v329)
          {
            v99 = v330;
            v29 = v412;
            if (!*v405)
            {
              goto LABEL_460;
            }
          }

          else
          {
            v334 = v321 + *(&v424 + 1);
            v99 = v330;
            if (v100 >= v334)
            {
              *(v238 + 2) = *v415;
              *(v238 + 3) = *(v415 + 4);
              av1_build_wedge_inter_predictor_from_buf((v416 + 416), SHIDWORD(v417), 0, 0, &v449, &v434, &v448, &v434);
              v99 = v235;
              v100 = v334;
            }

            v29 = v412;
            if (!*v405)
            {
              goto LABEL_460;
            }
          }

          if (v100 > v399)
          {
            v100 = 0x7FFFFFFFFFFFFFFFLL;
            *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v26 = v416;
            LODWORD(v251) = v420;
            goto LABEL_479;
          }

LABEL_460:
          *&v428 = 0;
          v89.i64[0] = 0;
          v426 = 0u;
          v427 = 0u;
          LODWORD(v251) = v420;
          v344 = v99 + v420;
          v345 = *(&v418 + 1) - ((v425[4] * (v99 + v420) + 256) >> 9);
          *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          if (v345 >= 0)
          {
            v346 = v99;
            av1_subtract_plane(v416, SHIDWORD(v417), 0);
            if (av1_estimate_txfm_yrd(v419, v416, &v426, v345, HIDWORD(v417), max_txsize_rect_lookup_1[v422]) == 0x7FFFFFFFFFFFFFFFLL)
            {
              v99 = v346;
              LODWORD(v251) = v420;
            }

            else
            {
              v356 = *(v416 + 8304);
              if (v356)
              {
                v356 = *(v356 + 144);
              }

              v99 = v346;
              LODWORD(v251) = v420;
              v357 = *(v416 + 8296);
              if (v357)
              {
                v357 = *(v357 + 144);
              }

              v358 = v357 + v356;
              if (v428)
              {
                v359 = *(v410 + 8 * v358 + 4);
              }

              else
              {
                v359 = v426 + *(v410 + 8 * v358);
              }

              v360 = *(&v426 + 1);
              *(&v421 + 1) = ((v425[4] * (v359 + v344) + 256) >> 9) + (*(&v426 + 1) << 7);
              *(&v444 + v421) = v359;
              *(&v445 + v421) = v360;
              *(&v442 + v421) = v331;
              *(&v440 + v421) = v333;
              *(&v443 + v421) = v420;
            }
          }

          v26 = v416;
          goto LABEL_479;
        }

LABEL_153:
        v98 = v400;
        v99 = HIDWORD(v400);
        v100 = v399;
        goto LABEL_154;
      }

      v208 = v98 + 512;
      v209 = v398[1325];
      if (v209 != -1)
      {
        v210 = v99;
        *(*&v29 + 82) = v209;
        if (v209)
        {
          v211 = 26;
        }

        else
        {
          v211 = 38;
        }

        memset(*(v26 + 11184), v211, 0x8000uLL);
        if (v30 > 0x18)
        {
          v220 = HIDWORD(v417);
        }

        else
        {
          v220 = HIDWORD(v417);
          if (((1 << v30) & 0x1790000) != 0)
          {
            v210 = av1_interinter_compound_motion_search(v27, v26, v415);
          }
        }

        HIDWORD(v423) = *(*&v29 + 82);
        v25 = *(*&v29 + 8);
        av1_enc_build_inter_predictor(v27 + 239056, v26 + 416, v414.n128_u32[1], v414.n128_u32[0], v414.n128_i64[1], v220, 0, 0, v212, v213, v214, v215, v216, v217, v218, v219, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, *&v426, *(&v426 + 1), v427, v428, v429);
        *&v428 = 0;
        v89.i64[0] = 0;
        v426 = 0u;
        v427 = 0u;
        v221 = *(*(&v419 + 1) + 8 * (*(**(&v420 + 1) + 63) != 0));
        if (v221)
        {
          v222 = *(v26 + 436);
          v223 = *(v26 + 440);
          v224 = *(*(&v422 + 1) + 2 * v222 + v223);
          v225 = block_size_high_5[v224];
          v226 = *(v26 + 8352);
          if (v226 < 0)
          {
            v225 = ((v226 >> (v223 + 3)) + v225) & ~(((v226 >> (v223 + 3)) + v225) >> 31);
          }

          v227 = block_size_wide_6[v224];
          v228 = *(v26 + 8344);
          if (v228 < 0)
          {
            v227 = ((v228 >> (v222 + 3)) + v227) & ~(((v228 >> (v222 + 3)) + v227) >> 31);
          }

          v229 = *v28;
          v230 = *(v26 + 11072);
          v231 = aom_sse(*(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472), v227, v225);
          if ((*(v26 + 146584) << (num_pels_log2_lookup_4[v422] + 7)) >= v423)
          {
            v233 = 4;
            v232 = v208;
          }

          else
          {
            v232 = v208;
            if (*v425 >= dword_273BDF00C[v221])
            {
              v233 = 4 * dword_273BDEFF4[v221];
            }

            else
            {
              v233 = 4;
            }
          }

          v335 = ((*(&v424 + 1) + v425[4] * (v229 + v232)) >> 9) + ((v231 + ((1 << (2 * v230 - 16)) >> 1)) >> (2 * v230 - 16) << 11);
          *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          v336 = (v233 * v423 * dword_273BDF024[v221]) >> 6;
          v338 = v423 != 0x7FFFFFFFFFFFFFFFLL && v336 < v335;
          if ((v417 & 0x8000000000000000) != 0)
          {
            v99 = v210;
            v98 = v208;
            goto LABEL_466;
          }

          v99 = v210;
          v98 = v208;
          if (v338)
          {
LABEL_466:
            v187 = v406;
            v312 = BYTE12(v423);
            goto LABEL_467;
          }
        }

        else if ((v417 & 0x8000000000000000) != 0)
        {
          v99 = v210;
          v98 = v107 + 512;
          v326 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_465;
        }

        aom_subtract_block_neon(block_size_high_12[v422], block_size_wide_13[v422], *v26, block_size_wide_13[v422], *(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472));
        v339 = av1_estimate_txfm_yrd(v27, v26, &v426, v417, HIDWORD(v417), max_txsize_rect_lookup_1[v422]);
        v98 = v208;
        *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        v99 = v210;
        if (v339 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_466;
        }

        v340 = *(v26 + 8304);
        if (v340)
        {
          v340 = *(v340 + 144);
        }

        v341 = *(v26 + 8296);
        if (v341)
        {
          v341 = *(v341 + 144);
        }

        v342 = v341 + v340;
        if (v428)
        {
          v343 = *(v410 + 8 * v342 + 4);
        }

        else
        {
          v343 = v426 + *(v410 + 8 * v342);
        }

        v326 = ((v425[4] * (v210 + v208 + v343) + 256) >> 9) + (*(&v426 + 1) << 7);
LABEL_465:
        *(&v421 + 1) = v326;
        goto LABEL_466;
      }

      v283 = 0;
      HIDWORD(v423) = 0;
      v284 = 1;
      v285 = 38;
      *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v286 = v284;
        v287 = *v28;
        *(*&v29 + 82) = v283;
        if (v30 > 0x18)
        {
          v288 = HIDWORD(v417);
        }

        else
        {
          v288 = HIDWORD(v417);
          if (((1 << v30) & 0x1790000) != 0)
          {
            memset(*(v26 + 11184), v285, 0x8000uLL);
            v287 = av1_interinter_compound_motion_search(v27, v26, v415);
          }
        }

        v289 = v287;
        av1_enc_build_inter_predictor(v27 + 239056, v26 + 416, v414.n128_u32[1], v414.n128_u32[0], v414.n128_i64[1], v288, 0, 0, *v89.i64, *v87.i64, *v88.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i64, a16, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, *&v426, *(&v426 + 1), v427, v428, v429);
        *&v428 = 0;
        v89.i64[0] = 0;
        v426 = 0u;
        v427 = 0u;
        v290 = *(*(&v419 + 1) + 8 * (*(**(&v420 + 1) + 63) != 0));
        if (!v290)
        {
          if ((v417 & 0x8000000000000000) != 0)
          {
            goto LABEL_350;
          }

          goto LABEL_375;
        }

        v291 = *(v26 + 436);
        v292 = *(v26 + 440);
        v293 = *(*(&v422 + 1) + 2 * v291 + v292);
        v294 = block_size_high_5[v293];
        v295 = *(v26 + 8352);
        if (v295 < 0)
        {
          v294 = ((v295 >> (v292 + 3)) + v294) & ~(((v295 >> (v292 + 3)) + v294) >> 31);
          v296 = block_size_wide_6[v293];
          v297 = *(v26 + 8344);
          if (v297 < 0)
          {
LABEL_365:
            v296 = ((v297 >> (v291 + 3)) + v296) & ~(((v297 >> (v291 + 3)) + v296) >> 31);
          }
        }

        else
        {
          v296 = block_size_wide_6[v293];
          v297 = *(v26 + 8344);
          if (v297 < 0)
          {
            goto LABEL_365;
          }
        }

        v298 = *v28;
        v299 = *(v26 + 11072);
        v300 = aom_sse(*(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472), v296, v294);
        if ((*(v26 + 146584) << (num_pels_log2_lookup_4[v422] + 7)) >= v423)
        {
          v302 = 4;
          v301 = v208;
        }

        else
        {
          v301 = v208;
          if (*v425 >= dword_273BDF00C[v290])
          {
            v302 = 4 * dword_273BDEFF4[v290];
          }

          else
          {
            v302 = 4;
          }
        }

        v303 = ((*(&v424 + 1) + v425[4] * (v298 + v301)) >> 9) + ((v300 + ((1 << (2 * v299 - 16)) >> 1)) >> (2 * v299 - 16) << 11);
        v304 = (v302 * v423 * dword_273BDF024[v290]) >> 6;
        v306 = v423 != 0x7FFFFFFFFFFFFFFFLL && v304 < v303;
        if ((v417 & 0x8000000000000000) != 0)
        {
          v27 = v419;
          goto LABEL_350;
        }

        v27 = v419;
        if (v306)
        {
          goto LABEL_350;
        }

LABEL_375:
        aom_subtract_block_neon(block_size_high_12[v422], block_size_wide_13[v422], *v26, block_size_wide_13[v422], *(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472));
        if (av1_estimate_txfm_yrd(v27, v26, &v426, v417, HIDWORD(v417), max_txsize_rect_lookup_1[v422]) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v307 = *(v26 + 8304);
          v99 = v289;
          v98 = v208;
          if (v307)
          {
            v307 = *(v307 + 144);
          }

          v308 = *(v26 + 8296);
          if (v308)
          {
            v308 = *(v308 + 144);
          }

          v309 = v308 + v307;
          if (v428)
          {
            v310 = *(v410 + 8 * v309 + 4);
          }

          else
          {
            v310 = v426 + *(v410 + 8 * v309);
          }

          v311 = ((v425[4] * (v289 + v208 + v310) + 256) >> 9) + (*(&v426 + 1) << 7);
          if (v311 < *(&v421 + 1))
          {
            HIDWORD(v423) = *(*&v29 + 82);
            v25 = *(*&v29 + 8);
            *(&v421 + 1) = v311;
          }

          goto LABEL_351;
        }

LABEL_350:
        v99 = v289;
        v98 = v208;
LABEL_351:
        v284 = 0;
        v283 = 1;
        v285 = 26;
        if ((v286 & 1) == 0)
        {
          if (v30 == 24)
          {
            v312 = BYTE12(v423);
            v398[1325] = HIDWORD(v423);
            v187 = v406;
LABEL_467:
            *(*&v29 + 82) = v312;
            *(*&v29 + 8) = v25;
            v100 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_481;
          }

          goto LABEL_466;
        }
      }
    }

LABEL_191:
    DWORD2(v418) = 0;
    if (v30 <= 0x18 && ((1 << v30) & 0x1790000) != 0)
    {
      DWORD2(v418) = v405[17] == 0;
    }

    v128 = *(*&v29 + 8);
    LODWORD(v407) = *v388;
    HIDWORD(v407) = *v28;
    HIDWORD(v392) = v398[1323];
    if (HIDWORD(v392) == -1 && (BYTE8(v418) & 1) == 0)
    {
      v129 = v99;
      av1_build_inter_predictors_for_planes_single_buf((v26 + 416), SHIDWORD(v417), 0, 0, 0, &v449, &v434, *v89.i64, *v87.i64, v88, a12, a13, a14, a15, *&a16);
      av1_build_inter_predictors_for_planes_single_buf((v26 + 416), SHIDWORD(v417), 0, 0, 1, &v448, &v434, v130, v131, v132, v133, v134, v135, v136, v137);
      v98 = v420;
      v99 = v129;
    }

    v408 = 0;
    *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    if (v407 < 1 || HIDWORD(v392) != -1)
    {
      LODWORD(v409) = 0;
      v138 = 0;
      goto LABEL_268;
    }

    v138 = 0;
    LODWORD(v409) = 0;
    v408 = 0;
    v139 = 0;
    v140 = v417 / 2;
    *(&v421 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    *&v418 = v417 / 2;
    while (2)
    {
      HIDWORD(v411) = v138;
      v141 = 0;
      *(&v416 + 1) = v139;
      v142 = 1;
      *&v421 = v139;
      do
      {
        LODWORD(v143) = v142;
        v99 = *v28;
        *(*&v29 + 80) = v139;
        *(*&v29 + 81) = v141;
        if (*(*&v29 + 83) == 2)
        {
          v144 = **&v29;
          if (av1_wedge_params_lookup[8 * v144] < 1)
          {
            v145 = 0;
          }

          else
          {
            v145 = *(*(&v415 + 1) + (v144 << 6) + 4 * *(&v416 + 1)) + 512;
          }
        }

        else
        {
          v145 = 512;
        }

        v146 = (v145 + v98);
        if (v140 <= (*(&v424 + 1) + (*v424 + v146) * v425[4]) >> 9)
        {
          goto LABEL_205;
        }

        if (BYTE8(v418))
        {
          HIDWORD(v423) = av1_interinter_compound_motion_search(v27, v26, v415);
          av1_enc_build_inter_predictor(v27 + 239056, v26 + 416, v414.n128_u32[1], v414.n128_u32[0], v414.n128_i64[1], HIDWORD(v417), 0, 0, v147, v148, v149, v150, v151, v152, v153, v154, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, *&v426, *(&v426 + 1), v427, v428, v429);
        }

        else
        {
          HIDWORD(v423) = v99;
          v155 = *(*(&v422 + 1) + 2 * *(v26 + 436) + *(v26 + 440));
          v156 = block_size_wide_28[v155];
          v157 = block_size_high_26[v155];
          v158 = v448;
          v159 = v449;
          v160 = v434;
          v161 = **(v26 + 8280);
          LODWORD(v155) = v161[17];
          v162 = *(v26 + 448);
          v163 = *(v26 + 11184);
          *(v161 + 9) = v163;
          v164 = (v161 + 72);
          if (v155 >= 1 && (v165 = v161[83], (v165 & 0xFE) == 2))
          {
            if (v165 == 3)
            {
              HIDWORD(v409) = v143;
              v143 = v158;
              av1_build_compound_diffwtd_mask_neon(v163, v161[82], v159, v160, v158, v160, v157, v156);
              v158 = v143;
              LOBYTE(v143) = BYTE4(v409);
              v166 = v161[83] == 2;
            }

            else
            {
              v166 = 1;
            }

            v167 = *v161;
            if (v166)
            {
              v164 = (*&av1_wedge_params_lookup[8 * v167 + 6] + (v161[81] << 7) + 8 * v161[80]);
            }

            aom_blend_a64_mask_neon(v162, *(v416 + 472), v159, v160, v158, v160, *v164, block_size_wide_28[v167], v156, v157, __SPAIR64__(2 << mi_size_high_log2_4[v167] == v157, 2 << mi_size_wide_log2_12[v167] == v156));
            v29 = v412;
            v26 = v416;
          }

          else
          {
            v26 = v416;
            aom_convolve_copy_neon(v159, v160, v162, *(v416 + 472), v156, v157);
            v29 = v412;
          }

          v28 = v413;
          v30 = HIDWORD(v413);
        }

        *&v428 = 0;
        v89.i64[0] = 0;
        v426 = 0u;
        v427 = 0u;
        v168 = *(*(&v419 + 1) + 8 * (*(**(&v420 + 1) + 63) != 0));
        if (!v168)
        {
          goto LABEL_235;
        }

        v169 = *(v26 + 436);
        v170 = *(v26 + 440);
        v171 = *(*(&v422 + 1) + 2 * v169 + v170);
        v172 = block_size_high_5[v171];
        v173 = *(v26 + 8352);
        if (v173 < 0)
        {
          v172 = ((v173 >> (v170 + 3)) + v172) & ~(((v173 >> (v170 + 3)) + v172) >> 31);
          v174 = block_size_wide_6[v171];
          v175 = *(v26 + 8344);
          if (v175 < 0)
          {
LABEL_232:
            v174 = ((v175 >> (v169 + 3)) + v174) & ~(((v175 >> (v169 + 3)) + v174) >> 31);
          }
        }

        else
        {
          v174 = block_size_wide_6[v171];
          v175 = *(v26 + 8344);
          if (v175 < 0)
          {
            goto LABEL_232;
          }
        }

        v176 = *v28;
        v177 = *(v26 + 11072);
        v178 = aom_sse(*(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472), v174, v172);
        if ((*(v26 + 146584) << (num_pels_log2_lookup_4[v422] + 7)) < v423 && *v425 >= dword_273BDF00C[v168])
        {
          v179 = 4 * dword_273BDEFF4[v168];
          if (v423 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_234:
            if ((v179 * v423 * dword_273BDF024[v168]) >> 6 < ((*(&v424 + 1) + v425[4] * (v176 + v146)) >> 9) + ((v178 + ((1 << (2 * v177 - 16)) >> 1)) >> (2 * v177 - 16) << 11))
            {
              goto LABEL_203;
            }
          }
        }

        else
        {
          v179 = 4;
          if (v423 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_234;
          }
        }

LABEL_235:
        if (*(&v421 + 1) >= v417)
        {
          v180 = v417;
        }

        else
        {
          v180 = *(&v421 + 1);
        }

        if (v180 < 0)
        {
LABEL_203:
          v27 = v419;
LABEL_204:
          v99 = HIDWORD(v423);
          v98 = v420;
          v140 = v418;
          LODWORD(v139) = v421;
          goto LABEL_205;
        }

        aom_subtract_block_neon(block_size_high_12[v422], block_size_wide_13[v422], *v26, block_size_wide_13[v422], *(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472));
        v27 = v419;
        if (av1_estimate_txfm_yrd(v419, v26, &v426, v180, HIDWORD(v417), max_txsize_rect_lookup_1[v422]) == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_204;
        }

        v181 = *(v26 + 8304);
        v99 = HIDWORD(v423);
        v98 = v420;
        v140 = v418;
        LODWORD(v139) = v421;
        if (v181)
        {
          v181 = *(v181 + 144);
        }

        v182 = *(v26 + 8296);
        if (v182)
        {
          v182 = *(v182 + 144);
        }

        v183 = v182 + v181;
        if (v428)
        {
          v184 = *(v410 + 8 * v183 + 4);
        }

        else
        {
          v184 = v426 + *(v410 + 8 * v183);
        }

        v185 = ((v425[4] * (HIDWORD(v423) + v146 + v184) + 256) >> 9) + (*(&v426 + 1) << 7);
        if (v185 < *(&v421 + 1))
        {
          HIDWORD(v407) = HIDWORD(v423);
          v128 = *(*&v29 + 8);
          v408 = v146;
          LODWORD(v409) = v141;
          HIDWORD(v411) = v421;
          *(&v421 + 1) = v185;
        }

LABEL_205:
        v142 = 0;
        v141 = 1;
      }

      while ((v143 & 1) != 0);
      if (v139 != 7)
      {
        v138 = HIDWORD(v411);
        goto LABEL_201;
      }

      v138 = HIDWORD(v411);
      if (!v405[29])
      {
LABEL_201:
        v139 = (v139 + 1);
        if (v139 >= v407)
        {
          goto LABEL_268;
        }

        continue;
      }

      break;
    }

    if (SHIDWORD(v411) <= 3)
    {
      LODWORD(v139) = dword_273BDF070[SHIDWORD(v411)];
      LODWORD(v407) = v139 + 3;
      goto LABEL_201;
    }

LABEL_268:
    if (HIDWORD(v392) == -1)
    {
      if (v30 == 24 || v405[28])
      {
        v398[1323] = v138;
        v398[1324] = v409;
      }

      v187 = v406;
      v98 = v408;
      v99 = HIDWORD(v407);
      goto LABEL_392;
    }

    v204 = v398[1323];
    *(*&v29 + 80) = v204;
    LODWORD(v409) = v398[1324];
    *(*&v29 + 81) = v409;
    if (DWORD2(v418))
    {
      v205 = av1_interinter_compound_motion_search(v27, v26, v415);
      v98 = v420;
      HIDWORD(v411) = v398[1323];
      LODWORD(v409) = v398[1324];
      v128 = *(*&v29 + 8);
      if (*(*&v29 + 83) != 2)
      {
        goto LABEL_271;
      }

LABEL_302:
      v252 = **&v29;
      v206 = v205;
      if (av1_wedge_params_lookup[8 * v252] < 1)
      {
        v207 = 0;
      }

      else
      {
        v207 = *(*(&v415 + 1) + (v252 << 6) + 4 * *(*&v29 + 80)) + 512;
      }
    }

    else
    {
      HIDWORD(v411) = v204;
      v205 = v99;
      v128 = *(*&v29 + 8);
      if (*(*&v29 + 83) == 2)
      {
        goto LABEL_302;
      }

LABEL_271:
      v206 = v205;
      v207 = 512;
    }

    v257 = v207 + v98;
    av1_enc_build_inter_predictor(v27 + 239056, v26 + 416, v414.n128_u32[1], v414.n128_u32[0], v414.n128_i64[1], HIDWORD(v417), 0, 0, *v89.i64, *v87.i64, *v88.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i64, a16, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, *&v426, *(&v426 + 1), v427, v428, v429);
    v258 = *(*(&v419 + 1) + 8 * (*(**(&v420 + 1) + 63) != 0));
    if (!v258)
    {
LABEL_340:
      *&v428 = 0;
      v277 = block_size_wide_13[v422];
      v278 = block_size_high_12[v422];
      v426 = 0u;
      v427 = 0u;
      aom_subtract_block_neon(v278, v277, *v26, v277, *(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472));
      if (av1_estimate_txfm_yrd(v27, v26, &v426, 0x7FFFFFFFFFFFFFFFLL, HIDWORD(v417), max_txsize_rect_lookup_1[v422]) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v279 = v426;
        v98 = v257;
        v99 = v206;
        LOBYTE(v138) = BYTE4(v411);
      }

      else
      {
        v280 = *(v26 + 8304);
        v98 = v257;
        v99 = v206;
        if (v280)
        {
          v280 = *(v280 + 144);
        }

        LOBYTE(v138) = BYTE4(v411);
        v281 = *(v26 + 8296);
        if (v281)
        {
          v281 = *(v281 + 144);
        }

        v282 = v281 + v280;
        if (v428)
        {
          v279 = *(v410 + 8 * v282 + 4);
        }

        else
        {
          v279 = v426 + *(v410 + 8 * v282);
        }
      }

      *(&v421 + 1) = ((v425[4] * (v98 + v99 + v279) + 256) >> 9) + (*(&v426 + 1) << 7);
      v187 = v406;
      goto LABEL_392;
    }

    v259 = *(v26 + 436);
    v260 = *(v26 + 440);
    v261 = *(*(&v422 + 1) + 2 * v259 + v260);
    v262 = block_size_high_5[v261];
    v263 = *(v26 + 8352);
    if (v263 < 0)
    {
      v262 = ((v263 >> (v260 + 3)) + v262) & ~(((v263 >> (v260 + 3)) + v262) >> 31);
      v264 = block_size_wide_6[v261];
      v265 = *(v26 + 8344);
      if ((v265 & 0x80000000) == 0)
      {
        goto LABEL_319;
      }

LABEL_324:
      v264 = ((v265 >> (v259 + 3)) + v264) & ~(((v265 >> (v259 + 3)) + v264) >> 31);
      goto LABEL_319;
    }

    v264 = block_size_wide_6[v261];
    v265 = *(v26 + 8344);
    if (v265 < 0)
    {
      goto LABEL_324;
    }

LABEL_319:
    v266 = *v28;
    v267 = *(v26 + 11072);
    v268 = aom_sse(*(v26 + 48), *(v26 + 72), *(v26 + 448), *(v26 + 472), v264, v262);
    if ((*(v26 + 146584) << (num_pels_log2_lookup_4[v422] + 7)) < v423 && *v425 >= dword_273BDF00C[v258])
    {
      v269 = 4 * dword_273BDEFF4[v258];
      if (v423 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_340;
      }
    }

    else
    {
      v269 = 4;
      if (v423 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_340;
      }
    }

    if ((v269 * v423 * dword_273BDF024[v258]) >> 6 >= ((*(&v424 + 1) + v425[4] * (v266 + v257)) >> 9) + ((v268 + ((1 << (2 * v267 - 16)) >> 1)) >> (2 * v267 - 16) << 11))
    {
      goto LABEL_340;
    }

    v187 = v406;
    v98 = v257;
    v99 = v206;
    LOBYTE(v138) = BYTE4(v411);
LABEL_392:
    *(*&v29 + 80) = v138;
    *(*&v29 + 81) = v409;
    v100 = 0x7FFFFFFFFFFFFFFFLL;
    *(*&v29 + 8) = v128;
LABEL_481:
    if (*(&v421 + 1) >= *v187)
    {
      goto LABEL_153;
    }

    *v187 = *(&v421 + 1);
    v450[0] = *(*&v29 + 72);
    *(v450 + 7) = *(*&v29 + 79);
    HIDWORD(v394) = *(*&v29 + 84);
    LODWORD(v395) = *(*&v29 + 83);
    if (v30 <= 0x18 && ((1 << v30) & 0x1790000) != 0)
    {
      v57 = *(*&v29 + 8);
    }

    else
    {
      v99 = HIDWORD(v400);
    }

LABEL_154:
    *(*&v29 + 8) = *v415;
    *(*&v29 + 12) = *(v415 + 4);
    v400 = __PAIR64__(v99, v98);
    v399 = v100;
LABEL_155:
    v96 = v403;
    v95 = v404;
    v60 = v401;
    v97 = v402;
LABEL_156:
    if (++v95 != v60)
    {
      continue;
    }

    break;
  }

  v361 = HIDWORD(v394);
  v362 = v395;
  v363 = ((v395 > 1u) << 8) | ((v395 != 1) << 9);
  result = v400;
LABEL_488:
  *(*&v29 + 72) = v450[0];
  *(*&v29 + 167) = *(*&v29 + 167) & 0xFCFF | v363;
  *(*&v29 + 79) = *(v450 + 7);
  *(*&v29 + 83) = v362;
  *(*&v29 + 84) = v361;
  if (v30 <= 0x18 && ((1 << v30) & 0x1790000) != 0)
  {
    *(*&v29 + 8) = v57;
    *v424 += HIDWORD(v400) - *v28;
    *v28 = HIDWORD(v400);
    if (v30 == 24)
    {
      v398[v391 + 1326] = v362;
    }
  }

  v364 = *(v414.n128_u64[1] + 24);
  *(v26 + 448) = *v414.n128_u64[1];
  *(v26 + 472) = v364;
  if ((v395 & 0x100000000) != 0)
  {
    v365 = *(v26 + 119984);
    if (v365 <= 63)
    {
      v366 = v26 + 160 * v365 + 109744;
      v367 = v445;
      v368 = v446;
      *v366 = v444;
      *(v366 + 16) = v367;
      v370 = v441;
      v369 = v442;
      *(v366 + 32) = v368;
      *(v366 + 48) = v369;
      *(v366 + 64) = v440;
      *(v366 + 80) = v370;
      *(v366 + 96) = v443;
      *(v366 + 112) = *v415;
      *(v366 + 120) = *(*&v29 + 16);
      *(v366 + 122) = *(*&v29 + 2);
      *(v366 + 124) = *(*&v29 + 20);
      *(v366 + 128) = (*(*&v29 + 167) >> 4) & 3;
      v371 = *(v26 + 11160);
      v372 = **&v29;
      v373 = block_size_wide_6[v372];
      v374 = block_size_high_5[v372];
      v375 = *(*&v29 + 2);
      if (v373 < v374)
      {
        v374 = v373;
      }

      v377 = v375 == 15 || v375 == 23;
      v378 = *(v371 + 36 * *(*&v29 + 16) + 32) > 1u && v377;
      if (v374 <= 7)
      {
        v378 = 0;
      }

      *(v366 + 132) = v378;
      v379 = *(v371 + 36 * *(*&v29 + 17) + 32) > 1u && v377;
      if (v374 <= 7)
      {
        v379 = 0;
      }

      *(v366 + 136) = v379;
      *(v366 + 144) = *(*&v29 + 72);
      ++*(v26 + 119984);
    }
  }

  return result;
}

uint64_t pick_wedge_fixed_sign(uint64_t a1, unsigned int a2, int16x4_t *a3, int16x4_t *a4, int a5, _BYTE *a6, unint64_t *a7)
{
  v8 = a2;
  v9 = SLOBYTE(av1_wedge_params_lookup[8 * a2]);
  if (v9 < 1)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
    v11 = block_size_high_5[a2] * block_size_wide_6[a2];
    v12 = v11;
    v13 = a4 + 2;
    v14 = a3 + 2;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = *&av1_wedge_params_lookup[8 * a2 + 6] + (a5 << 7);
    v17 = 0uLL;
    v51 = a3 + 2;
    v52 = v16;
    do
    {
      v18 = 0;
      v19 = v14;
      v20 = v13;
      v21 = 0uLL;
      v22 = 0uLL;
      do
      {
        v23 = *v19[-2].i8;
        v24 = *v20[-2].i8;
        v25 = *(*(v16 + 8 * v10) + v18);
        v26 = vzip1q_s8(v25, v17);
        v27 = vzip2q_s8(v25, v17);
        v28 = vshll_n_s16(*v23.i8, 6uLL);
        v29 = vmlal_high_s16(vshll_high_n_s16(v23, 6uLL), v26, v24);
        *v24.i8 = vqmovn_s32(vmlal_s16(v28, *v26.i8, *v24.i8));
        *v29.i8 = vqmovn_s32(v29);
        v30 = vqmovn_s32(vmlal_s16(vshll_n_s16(*v19, 6uLL), *v27.i8, *v20));
        v31 = vqmovn_s32(vmlal_high_s16(vshll_high_n_s16(*v19->i8, 6uLL), v27, *v20->i8));
        v21 = vpadalq_u32(v21, vmlal_s16(vmull_s16(*v29.i8, *v29.i8), *v24.i8, *v24.i8));
        v22 = vpadalq_u32(v22, vmlal_s16(vmull_s16(v31, v31), v30, v30));
        v18 += 16;
        v20 += 4;
        v19 += 4;
      }

      while (v18 < v11);
      v32 = vaddvq_s64(vaddq_s64(v22, v21));
      v33 = (v32 + 2048) >> 12;
      if ((v32 + 2048) >= 0x1000)
      {
        v36 = *(*(a1 + 128) + 2) >> 3;
        if (v36 <= 1)
        {
          v36 = 1;
        }

        v37 = v33 / v12;
        v38 = fmin(fmax(log2(v37 / (v36 * v36)), -14.999999), 15.999999);
        v39 = v38 + 15.5 + v38 + 15.5;
        v40 = vcvtmd_s64_f64(v39);
        v41 = v39 - v40;
        v42 = v40 - 1;
        v43 = (&interp_rgrid_curv + 520 * bsize_curvfit_model_cat_lookup[v8] + 8 * v42);
        v44 = (v43[1] + v41 * 0.5 * (v43[2] - *v43 + v41 * (v43[1] * -5.0 + *v43 * 2.0 + v43[2] * 4.0 - v43[3] + v41 * (v43[3] + (v43[1] - v43[2]) * 3.0 - *v43)))) * v12;
        if (v44 < 0.0)
        {
          v44 = 0.0;
        }

        v34 = (v44 + 0.5);
        v45 = 16 * v33;
        if (v34)
        {
          v46 = (&interp_dgrid_curv + 520 * (v37 > 16.0) + 8 * v42);
          v47 = v37 * (v46[1] + v41 * 0.5 * (v46[2] - *v46 + v41 * (v46[1] * -5.0 + *v46 * 2.0 + v46[2] * 4.0 - v46[3] + v41 * (v46[3] + (v46[1] - v46[2]) * 3.0 - *v46)))) * v12;
          if (v47 < 0.0)
          {
            v47 = 0.0;
          }

          v48 = v47 + 0.5;
          if ((v48 << 7) + ((*(a1 + 16920) * v34 + 256) >> 9) < (v33 << 11))
          {
            v45 = v48;
          }

          else
          {
            v34 = 0;
          }
        }

        v35 = v45 << 7;
        v14 = v51;
        v16 = v52;
        v17 = 0uLL;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      v49 = v35 + (((*(a1 + 33560 + (v8 << 6) + 4 * v10) + v34) * *(a1 + 16920) + 256) >> 9);
      if (v49 < v15)
      {
        *a6 = v10;
        *a7 = v33;
        v15 = v49;
      }

      ++v10;
    }

    while (v9 > v10);
  }

  return v15 - ((*(a1 + 16920) * *(a1 + (v8 << 6) + 4 * *a6 + 33560) + 256) >> 9);
}

void model_rd_for_sb_with_curvfit(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t *a5, BOOL *a6, uint64_t *a7)
{
  v11 = *(**(a3 + 7864) + 16);
  v12 = a2 + 146608;
  v13 = *(a3 + 20);
  v14 = *(a3 + 24);
  v15 = av1_ss_size_lookup[4 * a1 + 2 * v13 + v14];
  v16 = *(a3 + 7936);
  v17 = ((v16 >> (v14 + 3)) + block_size_high_5[v15]) & ~(((v16 >> (v14 + 3)) + block_size_high_5[v15]) >> 31);
  if (v16 < 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = block_size_high_5[v15];
  }

  v19 = *(a3 + 7928);
  v20 = ((v19 >> (v13 + 3)) + block_size_wide_6[v15]) & ~(((v19 >> (v13 + 3)) + block_size_wide_6[v15]) >> 31);
  if (v19 < 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = block_size_wide_6[v15];
  }

  v22 = *(a3 + 10656);
  v23 = (aom_sse(*(a2 + 48), *(a2 + 72), *(a3 + 32), *(a3 + 56), v21, v18) + ((1 << (2 * v22 - 16)) >> 1)) >> (2 * v22 - 16);
  if (!v23)
  {
    v40 = 0;
    v42 = 0;
    v43 = 0;
    *(v12 + 4 * v11) = 0;
    if (!a6)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v24 = *(*(a2 + 128) + 2) >> 3;
  if (v24 <= 1)
  {
    v24 = 1;
  }

  v25 = (v21 * v18);
  v26 = v23 / v25;
  v27 = fmin(fmax(log2(v26 / (v24 * v24)), -14.999999), 15.999999);
  v28 = v27 + 15.5 + v27 + 15.5;
  v29 = vcvtmd_s64_f64(v28);
  v30 = v28 - v29;
  v31 = v29 - 1;
  v32 = (&interp_rgrid_curv + 520 * bsize_curvfit_model_cat_lookup[v15] + 8 * v31);
  v33 = (v32[1] + v30 * 0.5 * (v32[2] - *v32 + v30 * (v32[1] * -5.0 + *v32 * 2.0 + v32[2] * 4.0 - v32[3] + v30 * (v32[3] + (v32[1] - v32[2]) * 3.0 - *v32)))) * v25;
  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = (v33 + 0.5);
  if (v34)
  {
    v35 = (&interp_dgrid_curv + 520 * (v26 > 16.0) + 8 * v31);
    v36 = v26 * (v35[1] + v30 * 0.5 * (v35[2] - *v35 + v30 * (v35[1] * -5.0 + *v35 * 2.0 + v35[2] * 4.0 - v35[3] + v30 * (v35[3] + (v35[1] - v35[2]) * 3.0 - *v35)))) * v25;
    if (v36 < 0.0)
    {
      v36 = 0.0;
    }

    v37 = v36 + 0.5;
    v38 = v34;
    v39 = (v37 << 7) + ((*(a2 + 16920) * v34 + 256) >> 9);
    v40 = 16 * v23;
    v41 = v39 < v23 << 11;
    if (v39 >= v23 << 11)
    {
      v42 = 16 * v23;
    }

    else
    {
      v42 = v37;
    }

    if (v41)
    {
      v43 = v38;
    }

    else
    {
      v43 = 0;
    }

    v44 = -1;
    if (v23 < 0xFFFFFFFFLL)
    {
      v44 = v23;
    }

    *(v12 + 4 * v11) = v44;
    if (!a6)
    {
      goto LABEL_27;
    }

LABEL_26:
    *a6 = v43 == 0;
    goto LABEL_27;
  }

  v43 = 0;
  v40 = 16 * v23;
  v42 = 16 * v23;
  v45 = -1;
  if (v23 < 0xFFFFFFFFLL)
  {
    v45 = v23;
  }

  *(v12 + 4 * v11) = v45;
  if (a6)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (a7)
  {
    *a7 = v40;
  }

  *a4 = v43;
  *a5 = v42;
}

uint64_t pick_interinter_wedge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v11 = v6;
  STACK[0x8078] = *MEMORY[0x277D85DE8];
  v12 = block_size_wide_6[v5];
  v13 = **(v4 + 8280);
  HIBYTE(v299) = -1;
  if (*(v3 + 389276))
  {
    v293 = v8;
    v295 = v10;
    v14 = *(v4 + 48);
    v15 = *(v4 + 72);
    v16 = block_size_high_5[v5] >> 1;
    v17 = estimate_wedge_sign_split_qtr[v5] << 7;
    v297 = v4;
    v18 = v7;
    v19 = v3;
    v289 = v5;
    v291 = v9;
    (*(*v3 + v17 + 51416))(v14, v15, v6, v12, &v300);
    v20 = v14 + v15 * v16;
    v21 = (v16 * v12);
    (*(*v19 + v17 + 51416))(v20 + (v12 >> 1), v15, v11 + (v12 >> 1) + v21, v12, &v300.i8[4]);
    (*(*v19 + v17 + 51416))(v14, v15, v18, v12, &v300.u64[1]);
    (*(*v19 + v17 + 51416))(v20 + (v12 >> 1), v15, v18 + (v12 >> 1) + v21, v12, &v300.i8[12]);
    v22 = v300.u32[3] + v300.u32[0] > v300.u32[1] + v300.u32[2];
    result = pick_wedge_fixed_sign(v297, v289, v293, v291, v22, &v299 + 7, v295);
    v24 = HIBYTE(v299);
    goto LABEL_73;
  }

  v25 = v9;
  v26 = v8;
  v27 = v10;
  v28 = block_size_high_5[v5];
  v29 = (v28 * v12);
  v294 = v5;
  v30 = av1_wedge_params_lookup[8 * v5];
  v31 = v4;
  aom_subtract_block_neon(v28, v12, &v300, v12, *(v4 + 48), *(v4 + 72), v6, v12);
  if (v29 < 8)
  {
    if (v29 > 3)
    {
      v168 = vaddvq_s64(vpaddlq_u32(vmull_s16(*v300.i8, *v300.i8)));
      v169 = (v29 - 4);
      if (v29 == 4)
      {
        v38 = v168;
        v42 = v26;
        v77 = vaddvq_s64(vpaddlq_u32(vmull_s16(*v26, *v26)));
        v39 = v31;
        v40 = v27;
        v41 = v294;
        goto LABEL_46;
      }

      v181 = &v300.i64[1];
      if (v169 < 4)
      {
        v182 = 0;
        v183 = v29 - 4;
        goto LABEL_135;
      }

      if (v169 >= 0x10)
      {
        v231 = 0uLL;
        v191 = v169 & 0xFFFFFFF0;
        v232 = 0uLL;
        v233 = (&v300 | 0x18);
        v234 = v191;
        v235 = 0uLL;
        v236 = 0uLL;
        v237 = 0uLL;
        v238 = 0uLL;
        v239 = 0uLL;
        v240 = 0uLL;
        do
        {
          v241 = v233[-1];
          v242 = *v233;
          v243 = vmull_high_s16(v241, v241);
          v244 = vmull_s16(*v241.i8, *v241.i8);
          v245 = vmull_high_s16(v242, v242);
          v246 = vmull_s16(*v242.i8, *v242.i8);
          v236 = vaddw_high_u32(v236, v243);
          v235 = vaddw_u32(v235, *v243.i8);
          v232 = vaddw_high_u32(v232, v244);
          v231 = vaddw_u32(v231, *v244.i8);
          v240 = vaddw_high_u32(v240, v245);
          v239 = vaddw_u32(v239, *v245.i8);
          v238 = vaddw_high_u32(v238, v246);
          v237 = vaddw_u32(v237, *v246.i8);
          v233 += 2;
          v234 -= 16;
        }

        while (v234);
        v182 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v237, v231), vaddq_s64(v239, v235)), vaddq_s64(vaddq_s64(v238, v232), vaddq_s64(v240, v236))));
        if (v191 == v169)
        {
          goto LABEL_136;
        }

        if (((v29 - 4) & 0xC) == 0)
        {
          v181 = (&v300.i64[1] + 2 * v191);
          v183 = v169 - v191;
          do
          {
LABEL_135:
            v283 = *v181;
            v181 = (v181 + 2);
            v182 += (v283 * v283);
            --v183;
          }

          while (v183);
LABEL_136:
          v38 = v168 + v182;
          v39 = v31;
          v40 = v27;
          v41 = v294;
          v42 = v26;
          goto LABEL_24;
        }
      }

      else
      {
        v182 = 0;
        v191 = 0;
      }

      v183 = v169 - (v169 & 0xFFFFFFFC);
      v181 = (&v300.i64[1] + 2 * (v169 & 0xFFFFFFFC));
      v247 = 0uLL;
      v248 = v182;
      v249 = (&v300.u64[1] + 2 * v191);
      v250 = v191 - (v169 & 0xFFFFFFFC);
      do
      {
        v251 = *v249++;
        v252 = vmull_s16(v251, v251);
        v247 = vaddw_high_u32(v247, v252);
        v248 = vaddw_u32(v248, *v252.i8);
        v250 += 4;
      }

      while (v250);
      v182 = vaddvq_s64(vaddq_s64(v248, v247));
      if ((v169 & 0xFFFFFFFC) == v169)
      {
        goto LABEL_136;
      }

      goto LABEL_135;
    }

    v174 = (v29 - 1);
    if (v174 < 3)
    {
      v38 = 0;
      v175 = &v300;
      v176 = v29;
      v39 = v31;
      v40 = v27;
      v41 = v294;
      v42 = v26;
      goto LABEL_129;
    }

    v184 = v174 + 1;
    if (v174 >= 0xF)
    {
      v192 = 0uLL;
      v185 = v184 & 0x1FFFFFFF0;
      v193 = 0uLL;
      v194 = (&v300 | 0x10);
      v195 = v184 & 0x1FFFFFFF0;
      v196 = 0uLL;
      v197 = 0uLL;
      v198 = 0uLL;
      v199 = 0uLL;
      v200 = 0uLL;
      v201 = 0uLL;
      do
      {
        v202 = v194[-1];
        v203 = *v194;
        v204 = vmull_high_s16(v202, v202);
        v205 = vmull_s16(*v202.i8, *v202.i8);
        v206 = vmull_high_s16(v203, v203);
        v207 = vmull_s16(*v203.i8, *v203.i8);
        v197 = vaddw_high_u32(v197, v204);
        v196 = vaddw_u32(v196, *v204.i8);
        v193 = vaddw_high_u32(v193, v205);
        v192 = vaddw_u32(v192, *v205.i8);
        v201 = vaddw_high_u32(v201, v206);
        v200 = vaddw_u32(v200, *v206.i8);
        v199 = vaddw_high_u32(v199, v207);
        v198 = vaddw_u32(v198, *v207.i8);
        v194 += 2;
        v195 -= 16;
      }

      while (v195);
      v38 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v198, v192), vaddq_s64(v200, v196)), vaddq_s64(vaddq_s64(v199, v193), vaddq_s64(v201, v197))));
      if (v184 == v185)
      {
        v39 = v31;
        v40 = v27;
        v41 = v294;
        v42 = v26;
        goto LABEL_24;
      }

      if ((v184 & 0xC) == 0)
      {
        v175 = (&v300 + 2 * v185);
        v176 = v29 - v185;
        v39 = v31;
        v40 = v27;
        v41 = v294;
        v42 = v26;
        goto LABEL_129;
      }
    }

    else
    {
      v38 = 0;
      v185 = 0;
    }

    v176 = v29 - (v184 & 0xFFFFFFFC);
    v175 = (&v300 + 2 * (v184 & 0x1FFFFFFFCLL));
    v253 = 0uLL;
    v254 = v38;
    v255 = (&v300 + 2 * v185);
    v256 = v185 - (v184 & 0x1FFFFFFFCLL);
    do
    {
      v257 = *v255++;
      v258 = vmull_s16(v257, v257);
      v253 = vaddw_high_u32(v253, v258);
      v254 = vaddw_u32(v254, *v258.i8);
      v256 += 4;
    }

    while (v256);
    v38 = vaddvq_s64(vaddq_s64(v254, v253));
    v39 = v31;
    v40 = v27;
    v41 = v294;
    v42 = v26;
    if (v184 == (v184 & 0x1FFFFFFFCLL))
    {
      goto LABEL_24;
    }

    do
    {
LABEL_129:
      v281 = v175->i16[0];
      v175 = (v175 + 2);
      v38 += (v281 * v281);
      --v176;
    }

    while (v176);
    goto LABEL_24;
  }

  v32 = &v300 | 0x10;
  v33 = 0uLL;
  v34 = v29;
  v35 = 0uLL;
  do
  {
    v36 = v34;
    v37 = *(v32 - 16);
    v33 = vpadalq_u32(v33, vmull_s16(*v37.i8, *v37.i8));
    v35 = vpadalq_u32(v35, vmull_high_s16(v37, v37));
    v34 -= 8;
    v32 += 16;
  }

  while (v36 > 0xF);
  v38 = vaddvq_s64(vaddq_s64(v35, v33));
  v39 = v31;
  v40 = v27;
  v41 = v294;
  v42 = v26;
  if (v34 + 8 >= 9)
  {
    v43 = v29 - 15;
    if (v29 < 0xF)
    {
      v43 = 0;
    }

    v44 = v29 - ((v43 + 7) & 0x1FFF8) - 9;
    if (v44 < 3)
    {
      v45 = 0;
      v46 = (v32 - 16);
      goto LABEL_22;
    }

    v47 = v44 + 1;
    if (v44 >= 0xF)
    {
      v49 = 0uLL;
      v48 = v47 & 0x1FFFFFFF0;
      v50 = 0uLL;
      v51 = v47 & 0x1FFFFFFF0;
      v52 = v32;
      v53 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      do
      {
        v59 = v52[-1];
        v60 = *v52;
        v61 = vmull_high_s16(v59, v59);
        v62 = vmull_s16(*v59.i8, *v59.i8);
        v63 = vmull_high_s16(v60, v60);
        v64 = vmull_s16(*v60.i8, *v60.i8);
        v54 = vaddw_high_u32(v54, v61);
        v53 = vaddw_u32(v53, *v61.i8);
        v50 = vaddw_high_u32(v50, v62);
        v49 = vaddw_u32(v49, *v62.i8);
        v58 = vaddw_high_u32(v58, v63);
        v57 = vaddw_u32(v57, *v63.i8);
        v56 = vaddw_high_u32(v56, v64);
        v55 = vaddw_u32(v55, *v64.i8);
        v52 += 2;
        v51 -= 16;
      }

      while (v51);
      v45 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v55, v49), vaddq_s64(v57, v53)), vaddq_s64(vaddq_s64(v56, v50), vaddq_s64(v58, v54))));
      if (v47 == v48)
      {
        goto LABEL_23;
      }

      if ((v47 & 0xC) == 0)
      {
        v46 = (v32 + 2 * v48 - 16);
        v34 -= v47 & 0xFFFFFFF0;
        do
        {
LABEL_22:
          v70 = *v46++;
          v45 += (v70 * v70);
          --v34;
        }

        while (v34);
LABEL_23:
        v38 += v45;
        goto LABEL_24;
      }
    }

    else
    {
      v45 = 0;
      v48 = 0;
    }

    v34 -= v47 & 0xFFFFFFFC;
    v46 = (v32 + 2 * (v47 & 0x1FFFFFFFCLL) - 16);
    v65 = 0uLL;
    v66 = v45;
    v67 = 2 * v48;
    v68 = v48 - (v47 & 0x1FFFFFFFCLL);
    do
    {
      v69 = vmull_s16(*(v32 + v67 - 16), *(v32 + v67 - 16));
      v65 = vaddw_high_u32(v65, v69);
      v66 = vaddw_u32(v66, *v69.i8);
      v67 += 8;
      v68 += 4;
    }

    while (v68);
    v45 = vaddvq_s64(vaddq_s64(v66, v65));
    if (v47 == (v47 & 0x1FFFFFFFCLL))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  if (v29 >= 8)
  {
    v71 = v42 + 2;
    v72 = 0uLL;
    v73 = v29;
    v74 = 0uLL;
    do
    {
      v75 = v73;
      v76 = *v71[-2].i8;
      v72 = vpadalq_u32(v72, vmull_s16(*v76.i8, *v76.i8));
      v74 = vpadalq_u32(v74, vmull_high_s16(v76, v76));
      v73 -= 8;
      v71 += 2;
    }

    while (v75 > 15);
    v77 = vaddvq_s64(vaddq_s64(v74, v72));
    if (v73 + 8 < 9)
    {
      goto LABEL_46;
    }

    if (v29 >= 15)
    {
      v78 = 15;
    }

    else
    {
      v78 = v29;
    }

    v79 = v29 - ((v29 - v78 + 7) & 0xFFFFFFF8) - 9;
    if (v79 < 3)
    {
      v80 = 0;
      v81 = v71 - 2;
      goto LABEL_44;
    }

    v82 = v79 + 1;
    if (v79 >= 0xF)
    {
      v84 = 0uLL;
      v83 = v82 & 0x1FFFFFFF0;
      v85 = 0uLL;
      v86 = v82 & 0x1FFFFFFF0;
      v87 = v71;
      v88 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      do
      {
        v94 = v87[-1];
        v95 = *v87;
        v96 = vmull_high_s16(v94, v94);
        v97 = vmull_s16(*v94.i8, *v94.i8);
        v98 = vmull_high_s16(v95, v95);
        v99 = vmull_s16(*v95.i8, *v95.i8);
        v89 = vaddw_high_u32(v89, v96);
        v88 = vaddw_u32(v88, *v96.i8);
        v85 = vaddw_high_u32(v85, v97);
        v84 = vaddw_u32(v84, *v97.i8);
        v93 = vaddw_high_u32(v93, v98);
        v92 = vaddw_u32(v92, *v98.i8);
        v91 = vaddw_high_u32(v91, v99);
        v90 = vaddw_u32(v90, *v99.i8);
        v87 += 2;
        v86 -= 16;
      }

      while (v86);
      v80 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v90, v84), vaddq_s64(v92, v88)), vaddq_s64(vaddq_s64(v91, v85), vaddq_s64(v93, v89))));
      if (v82 == v83)
      {
        goto LABEL_45;
      }

      if ((v82 & 0xC) == 0)
      {
        v81 = (v71 + 2 * v83 - 16);
        v73 -= v82 & 0xFFFFFFF0;
        do
        {
LABEL_44:
          v105 = v81->i16[0];
          v81 = (v81 + 2);
          v80 += (v105 * v105);
          --v73;
        }

        while (v73);
LABEL_45:
        v77 += v80;
        goto LABEL_46;
      }
    }

    else
    {
      v80 = 0;
      v83 = 0;
    }

    v73 -= v82 & 0xFFFFFFFC;
    v81 = (v71 + 2 * (v82 & 0x1FFFFFFFCLL) - 16);
    v100 = 0uLL;
    v101 = v80;
    v102 = 2 * v83;
    v103 = v83 - (v82 & 0x1FFFFFFFCLL);
    do
    {
      v104 = vmull_s16(*(&v71[-2] + v102), *(&v71[-2] + v102));
      v100 = vaddw_high_u32(v100, v104);
      v101 = vaddw_u32(v101, *v104.i8);
      v102 += 8;
      v103 += 4;
    }

    while (v103);
    v80 = vaddvq_s64(vaddq_s64(v101, v100));
    if (v82 == (v82 & 0x1FFFFFFFCLL))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v29 <= 3)
  {
    v177 = v42;
    v170 = v40;
    v171 = v39;
    v178 = (v29 - 1);
    if (v178 < 3)
    {
      v77 = 0;
      v179 = v29;
      v180 = v42;
      goto LABEL_132;
    }

    v189 = v178 + 1;
    if (v178 >= 0xF)
    {
      v209 = 0uLL;
      v190 = v189 & 0x1FFFFFFF0;
      v210 = 0uLL;
      v211 = &v42[2];
      v212 = v189 & 0x1FFFFFFF0;
      v213 = 0uLL;
      v214 = 0uLL;
      v215 = 0uLL;
      v216 = 0uLL;
      v217 = 0uLL;
      v218 = 0uLL;
      do
      {
        v219 = v211[-1];
        v220 = *v211;
        v221 = vmull_high_s16(v219, v219);
        v222 = vmull_s16(*v219.i8, *v219.i8);
        v223 = vmull_high_s16(v220, v220);
        v224 = vmull_s16(*v220.i8, *v220.i8);
        v214 = vaddw_high_u32(v214, v221);
        v213 = vaddw_u32(v213, *v221.i8);
        v210 = vaddw_high_u32(v210, v222);
        v209 = vaddw_u32(v209, *v222.i8);
        v218 = vaddw_high_u32(v218, v223);
        v217 = vaddw_u32(v217, *v223.i8);
        v216 = vaddw_high_u32(v216, v224);
        v215 = vaddw_u32(v215, *v224.i8);
        v211 += 2;
        v212 -= 16;
      }

      while (v212);
      v77 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v215, v209), vaddq_s64(v217, v213)), vaddq_s64(vaddq_s64(v216, v210), vaddq_s64(v218, v214))));
      if (v189 == v190)
      {
        goto LABEL_140;
      }

      if ((v189 & 0xC) == 0)
      {
        v180 = (v42 + 2 * v190);
        v179 = v29 - v190;
        do
        {
LABEL_132:
          v282 = v180->i16[0];
          v180 = (v180 + 2);
          v77 += (v282 * v282);
          --v179;
        }

        while (v179);
        goto LABEL_140;
      }
    }

    else
    {
      v77 = 0;
      v190 = 0;
    }

    v179 = v29 - (v189 & 0xFFFFFFFC);
    v180 = (v42 + 2 * (v189 & 0x1FFFFFFFCLL));
    v225 = 0uLL;
    v226 = v77;
    v227 = (v42 + 2 * v190);
    v228 = v190 - (v189 & 0x1FFFFFFFCLL);
    do
    {
      v229 = *v227++;
      v230 = vmull_s16(v229, v229);
      v225 = vaddw_high_u32(v225, v230);
      v226 = vaddw_u32(v226, *v230.i8);
      v228 += 4;
    }

    while (v228);
    v77 = vaddvq_s64(vaddq_s64(v226, v225));
    if (v189 == (v189 & 0x1FFFFFFFCLL))
    {
      goto LABEL_140;
    }

    goto LABEL_132;
  }

  v170 = v40;
  v171 = v39;
  v172 = vpaddlq_u32(vmull_s16(*v42, *v42));
  v173 = (v29 - 4);
  v177 = v42;
  v186 = v42 + 1;
  if (v173 < 4)
  {
    v187 = 0;
    v188 = v29 - 4;
    goto LABEL_138;
  }

  if (v173 < 0x10)
  {
    v187 = 0;
    v208 = 0;
    goto LABEL_124;
  }

  v259 = 0uLL;
  v208 = v173 & 0xFFFFFFF0;
  v260 = 0uLL;
  v261 = &v42[3];
  v262 = v208;
  v263 = 0uLL;
  v264 = 0uLL;
  v265 = 0uLL;
  v266 = 0uLL;
  v267 = 0uLL;
  v268 = 0uLL;
  do
  {
    v269 = v261[-1];
    v270 = *v261;
    v271 = vmull_high_s16(v269, v269);
    v272 = vmull_s16(*v269.i8, *v269.i8);
    v273 = vmull_high_s16(v270, v270);
    v274 = vmull_s16(*v270.i8, *v270.i8);
    v264 = vaddw_high_u32(v264, v271);
    v263 = vaddw_u32(v263, *v271.i8);
    v260 = vaddw_high_u32(v260, v272);
    v259 = vaddw_u32(v259, *v272.i8);
    v268 = vaddw_high_u32(v268, v273);
    v267 = vaddw_u32(v267, *v273.i8);
    v266 = vaddw_high_u32(v266, v274);
    v265 = vaddw_u32(v265, *v274.i8);
    v261 += 2;
    v262 -= 16;
  }

  while (v262);
  v187 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v265, v259), vaddq_s64(v267, v263)), vaddq_s64(vaddq_s64(v266, v260), vaddq_s64(v268, v264))));
  if (v208 == v173)
  {
    goto LABEL_139;
  }

  if (((v29 - 4) & 0xC) != 0)
  {
LABEL_124:
    v188 = v173 - (v173 & 0xFFFFFFFC);
    v186 = (v186 + 2 * (v173 & 0xFFFFFFFC));
    v275 = 0uLL;
    v276 = v187;
    v277 = (v42 + 2 * v208 + 8);
    v278 = v208 - (v173 & 0xFFFFFFFC);
    do
    {
      v279 = *v277++;
      v280 = vmull_s16(v279, v279);
      v275 = vaddw_high_u32(v275, v280);
      v276 = vaddw_u32(v276, *v280.i8);
      v278 += 4;
    }

    while (v278);
    v187 = vaddvq_s64(vaddq_s64(v276, v275));
    if ((v173 & 0xFFFFFFFC) == v173)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  v186 = (v186 + 2 * v208);
  v188 = v173 - v208;
  do
  {
LABEL_138:
    v284 = v186->i16[0];
    v186 = (v186 + 2);
    v187 += (v284 * v284);
    --v188;
  }

  while (v188);
LABEL_139:
  v77 = vaddvq_s64(v172) + v187;
LABEL_140:
  v39 = v171;
  v40 = v170;
  v41 = v294;
  v42 = v177;
LABEL_46:
  v106 = 0;
  v107 = v38 - v77;
  v108 = v29;
  do
  {
    *(&v300 + v106 * 8) = vqmovn_high_s32(vqmovn_s32(vmlsl_s16(vmull_s16(*&v300.i8[v106 * 8], *&v300.i8[v106 * 8]), v42[v106], v42[v106])), vmlsl_high_s16(vmull_high_s16(*(&v300 + v106 * 8), *(&v300 + v106 * 8)), *v42[v106].i8, *v42[v106].i8));
    v106 += 2;
    v108 -= 8;
  }

  while (v108);
  v109 = v30;
  if (v30 <= 0)
  {
    v22 = 0;
    LODWORD(v115) = *(v39 + 16920);
    v119 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = -1;
  }

  else
  {
    v296 = v40;
    v285 = v13;
    v292 = 0;
    v110 = 0;
    v111 = 32 * v107;
    v112 = *&av1_wedge_params_lookup[8 * v41 + 6];
    v113 = v29;
    v114 = v39 + 33560;
    v298 = v39;
    v115 = *(v39 + 16920);
    v116 = v25 + 2;
    v117 = v42 + 2;
    v118 = 0uLL;
    v119 = 0x7FFFFFFFFFFFFFFFLL;
    v288 = v112;
    v290 = -1;
    v120 = v114 + (v41 << 6);
    v286 = v111;
    v287 = v42 + 2;
    do
    {
      v121 = *(v112 + 8 * v110);
      v122 = &v300;
      v123 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v127 = v29;
      do
      {
        v128 = *v122;
        v129 = v122[1];
        v122 += 2;
        v130 = *v121++;
        v131 = vmovl_s8(*v130.i8);
        v132 = vmovl_high_s8(v130);
        v123 = vmlal_s16(v123, *v128.i8, *v131.i8);
        v124 = vmlal_high_s16(v124, v128, v131);
        v125 = vmlal_s16(v125, *v129.i8, *v132.i8);
        v126 = vmlal_high_s16(v126, v129, v132);
        v127 -= 16;
      }

      while (v127);
      v133 = 0;
      v134 = vaddvq_s64(vpadalq_s32(vpadalq_s32(vpadalq_s32(vpaddlq_s32(v124), v123), v125), v126));
      v135 = 0uLL;
      v136 = v117;
      v137 = v116;
      v138 = 0uLL;
      do
      {
        v139 = *v136[-2].i8;
        v140 = *v137[-2].i8;
        v141 = *(*(v112 + ((v134 > v111) << 7) + 8 * v110) + v133);
        v142 = vzip1q_s8(v141, v118);
        v143 = vzip2q_s8(v141, v118);
        v144 = vshll_n_s16(*v139.i8, 6uLL);
        v145 = vmlal_high_s16(vshll_high_n_s16(v139, 6uLL), v142, v140);
        *v140.i8 = vqmovn_s32(vmlal_s16(v144, *v142.i8, *v140.i8));
        *v145.i8 = vqmovn_s32(v145);
        v146 = vqmovn_s32(vmlal_s16(vshll_n_s16(*v136, 6uLL), *v143.i8, *v137));
        v147 = vqmovn_s32(vmlal_high_s16(vshll_high_n_s16(*v136->i8, 6uLL), v143, *v137->i8));
        v135 = vpadalq_u32(v135, vmlal_s16(vmull_s16(*v145.i8, *v145.i8), *v140.i8, *v140.i8));
        v138 = vpadalq_u32(v138, vmlal_s16(vmull_s16(v147, v147), v146, v146));
        v133 += 16;
        v137 += 4;
        v136 += 4;
      }

      while (v133 < v29);
      v148 = v134 > v111;
      v149 = vaddvq_s64(vaddq_s64(v138, v135));
      v150 = (v149 + 2048) >> 12;
      if ((v149 + 2048) >= 0x1000)
      {
        v153 = *(*(v298 + 128) + 2) >> 3;
        if (v153 <= 1)
        {
          v153 = 1;
        }

        v154 = v150 / v113;
        v155 = log2(v154 / (v153 * v153));
        v41 = v294;
        v156 = fmin(fmax(v155, -14.999999), 15.999999);
        v157 = v156 + 15.5 + v156 + 15.5;
        v158 = vcvtmd_s64_f64(v157);
        v159 = v157 - v158;
        v160 = v158 - 1;
        v161 = (&interp_rgrid_curv + 520 * bsize_curvfit_model_cat_lookup[v294] + 8 * v160);
        v162 = (v161[1] + v159 * 0.5 * (v161[2] - *v161 + v159 * (v161[1] * -5.0 + *v161 * 2.0 + v161[2] * 4.0 - v161[3] + v159 * (v161[3] + (v161[1] - v161[2]) * 3.0 - *v161)))) * v113;
        if (v162 < 0.0)
        {
          v162 = 0.0;
        }

        v151 = (v162 + 0.5);
        v163 = 16 * v150;
        if (v151)
        {
          v164 = (&interp_dgrid_curv + 520 * (v154 > 16.0) + 8 * v160);
          v165 = v154 * (v164[1] + v159 * 0.5 * (v164[2] - *v164 + v159 * (v164[1] * -5.0 + *v164 * 2.0 + v164[2] * 4.0 - v164[3] + v159 * (v164[3] + (v164[1] - v164[2]) * 3.0 - *v164)))) * v113;
          if (v165 < 0.0)
          {
            v165 = 0.0;
          }

          v166 = v165 + 0.5;
          if ((v166 << 7) + ((v115 * v151 + 256) >> 9) < (v150 << 11))
          {
            v163 = v166;
          }

          else
          {
            v151 = 0;
          }
        }

        v152 = v163 << 7;
        v111 = v286;
        v117 = v287;
        v112 = v288;
        v118 = 0uLL;
      }

      else
      {
        v151 = 0;
        v152 = 0;
      }

      v167 = v152 + (((*(v120 + 4 * v110) + v151) * v115 + 256) >> 9);
      if (v167 < v119)
      {
        *v296 = v150;
        v290 = v110;
        v292 = v148;
        v119 = v167;
      }

      ++v110;
    }

    while (v109 > v110);
    v13 = v285;
    v39 = v298;
    v22 = v292;
    v24 = v290;
  }

  result = v119 - ((v115 * *(v39 + (v41 << 6) + 4 * v24 + 33560) + 256) >> 9);
LABEL_73:
  *(v13 + 81) = v22;
  *(v13 + 80) = v24;
  return result;
}

uint64_t pick_interinter_seg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1, a2, a3);
  v94 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v96 = *MEMORY[0x277D85DE8];
  v16 = block_size_wide_6[v12];
  v17 = block_size_high_5[v12];
  v93 = **(v14 + 8280);
  v91 = num_pels_log2_lookup_4[v12];
  v18 = 1 << v91;
  v19 = *(v14 + 11184);
  v20 = (1 << v91);
  av1_build_compound_diffwtd_mask_neon(v19, 0, v10, v16, v8, v16, v17, v16);
  v21 = 0;
  v92 = v5;
  v22 = v5 + 2;
  v23 = v7 + 2;
  v24 = 0uLL;
  v25 = 0uLL;
  do
  {
    v26 = *v23[-2].i8;
    v27 = *v22[-2].i8;
    v28 = v19[v21 / 0x10];
    v29 = vzip1q_s8(v28, 0);
    v30 = vzip2q_s8(v28, 0);
    v31 = vshll_n_s16(*v26.i8, 6uLL);
    v32 = vmlal_high_s16(vshll_high_n_s16(v26, 6uLL), v29, v27);
    *v27.i8 = vqmovn_s32(vmlal_s16(v31, *v29.i8, *v27.i8));
    *v32.i8 = vqmovn_s32(v32);
    v33 = vqmovn_s32(vmlal_s16(vshll_n_s16(*v23, 6uLL), *v30.i8, *v22));
    v34 = vqmovn_s32(vmlal_high_s16(vshll_high_n_s16(*v23->i8, 6uLL), v30, *v22->i8));
    v24 = vpadalq_u32(v24, vmlal_s16(vmull_s16(*v32.i8, *v32.i8), *v27.i8, *v27.i8));
    v25 = vpadalq_u32(v25, vmlal_s16(vmull_s16(v34, v34), v33, v33));
    v21 += 16;
    v22 += 4;
    v23 += 4;
  }

  while (v21 < v18);
  v35 = vaddvq_s64(vaddq_s64(v25, v24));
  v36 = (v35 + 2048) >> 12;
  if ((v35 + 2048) >= 0x1000)
  {
    v39 = *(*(v15 + 128) + 2) >> 3;
    if (v39 <= 1)
    {
      v39 = 1;
    }

    v40 = v36 / v20;
    v41 = fmin(fmax(log2(v40 / (v39 * v39)), -14.999999), 15.999999);
    v42 = v41 + 15.5 + v41 + 15.5;
    v43 = vcvtmd_s64_f64(v42);
    v44 = v42 - v43;
    v45 = v43 - 1;
    v46 = (&interp_rgrid_curv + 520 * bsize_curvfit_model_cat_lookup[v13] + 8 * v45);
    v47 = (v46[1] + v44 * 0.5 * (v46[2] - *v46 + v44 * (v46[1] * -5.0 + *v46 * 2.0 + v46[2] * 4.0 - v46[3] + v44 * (v46[3] + (v46[1] - v46[2]) * 3.0 - *v46)))) * v20;
    if (v47 < 0.0)
    {
      v47 = 0.0;
    }

    v48 = (v47 + 0.5);
    if (v48)
    {
      v49 = (&interp_dgrid_curv + 520 * (v40 > 16.0) + 8 * v45);
      v50 = v40 * (v49[1] + v44 * 0.5 * (v49[2] - *v49 + v44 * (v49[1] * -5.0 + *v49 * 2.0 + v49[2] * 4.0 - v49[3] + v44 * (v49[3] + (v49[1] - v49[2]) * 3.0 - *v49)))) * v20;
      if (v50 < 0.0)
      {
        v50 = 0.0;
      }

      v51 = v50 + 0.5;
      v52 = (v51 << 7) + ((*(v15 + 16920) * v48 + 256) >> 9);
      v53 = v52 < (v36 << 11);
      if (v52 >= (v36 << 11))
      {
        v54 = 16 * v36;
      }

      else
      {
        v54 = v51;
      }

      if (v53)
      {
        v37 = v48;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
      v54 = 16 * v36;
    }

    v38 = v54 << 7;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v55 = v38 + ((v37 * *(v15 + 16920) + 256) >> 9);
  if (v55 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *v94 = v36;
  }

  av1_build_compound_diffwtd_mask_neon(__src, 1, v11, v16, v9, v16, v17, v16);
  v56 = 0;
  v57 = v92 + 2;
  v58 = v7 + 2;
  v59 = 0uLL;
  v60 = 0uLL;
  do
  {
    v61 = *v58[-2].i8;
    v62 = *v57[-2].i8;
    v63 = __src[v56 / 0x10];
    v64 = vzip1q_s8(v63, 0);
    v65 = vzip2q_s8(v63, 0);
    v66 = vshll_n_s16(*v61.i8, 6uLL);
    v67 = vmlal_high_s16(vshll_high_n_s16(v61, 6uLL), v64, v62);
    *v62.i8 = vqmovn_s32(vmlal_s16(v66, *v64.i8, *v62.i8));
    *v67.i8 = vqmovn_s32(v67);
    v68 = vqmovn_s32(vmlal_s16(vshll_n_s16(*v58, 6uLL), *v65.i8, *v57));
    v69 = vqmovn_s32(vmlal_high_s16(vshll_high_n_s16(*v58->i8, 6uLL), v65, *v57->i8));
    v59 = vpadalq_u32(v59, vmlal_s16(vmull_s16(*v67.i8, *v67.i8), *v62.i8, *v62.i8));
    v60 = vpadalq_u32(v60, vmlal_s16(vmull_s16(v69, v69), v68, v68));
    v56 += 16;
    v57 += 4;
    v58 += 4;
  }

  while (v56 < v18);
  v70 = vaddvq_s64(vaddq_s64(v60, v59));
  v71 = (v70 + 2048) >> 12;
  if ((v70 + 2048) >= 0x1000)
  {
    v73 = *(*(v15 + 128) + 2) >> 3;
    if (v73 <= 1)
    {
      v73 = 1;
    }

    v74 = v71 / v20;
    v75 = fmin(fmax(log2(v74 / (v73 * v73)), -14.999999), 15.999999);
    v76 = v75 + 15.5 + v75 + 15.5;
    v77 = vcvtmd_s64_f64(v76);
    v78 = v76 - v77;
    v79 = v77 - 1;
    v80 = (&interp_rgrid_curv + 520 * bsize_curvfit_model_cat_lookup[v13] + 8 * v79);
    v81 = (v80[1] + v78 * 0.5 * (v80[2] - *v80 + v78 * (v80[1] * -5.0 + *v80 * 2.0 + v80[2] * 4.0 - v80[3] + v78 * (v80[3] + (v80[1] - v80[2]) * 3.0 - *v80)))) * v20;
    if (v81 < 0.0)
    {
      v81 = 0.0;
    }

    v82 = (v81 + 0.5);
    if (v82)
    {
      v83 = (&interp_dgrid_curv + 520 * (v74 > 16.0) + 8 * v79);
      v84 = v74 * (v83[1] + v78 * 0.5 * (v83[2] - *v83 + v78 * (v83[1] * -5.0 + *v83 * 2.0 + v83[2] * 4.0 - v83[3] + v78 * (v83[3] + (v83[1] - v83[2]) * 3.0 - *v83)))) * v20;
      if (v84 < 0.0)
      {
        v84 = 0.0;
      }

      v85 = v84 + 0.5;
      v86 = (v85 << 7) + ((*(v15 + 16920) * v82 + 256) >> 9);
      v87 = v86 < (v71 << 11);
      if (v86 >= (v71 << 11))
      {
        v88 = 16 * v71;
      }

      else
      {
        v88 = v85;
      }

      if (v87)
      {
        v89 = v82;
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v89 = 0;
      v88 = 16 * v71;
    }

    v72 = (v88 << 7) + ((v89 * *(v15 + 16920) + 256) >> 9);
    if (v72 >= v55)
    {
      goto LABEL_26;
    }

LABEL_42:
    *v94 = v71;
    *(v93 + 82) = 1;
    memcpy(*(v15 + 11184), __src, 2 << v91);
    return v72;
  }

  v72 = 0;
  if (v55 > 0)
  {
    goto LABEL_42;
  }

LABEL_26:
  *(v93 + 82) = 0;
  return v55;
}

uint64_t av1_setup_shared_coeff_buffer(uint64_t a1, unint64_t *a2, jmp_buf a3)
{
  v5 = *(a1 + 77);
  v6 = 1 << num_pels_log2_lookup_5[*(a1 + 28)];
  v7 = *(a1 + 96);
  v8 = *(a1 + 100);
  v9 = 4 * v6;
  if (v9 > 0x1FFFFFFD9)
  {
    *a2 = 0;
    aom_internal_error(a3, 2, "Failed to allocate shared_bufs->coeff_buf[i]");
    a2[3] = 0;
    aom_internal_error(a3, 2, "Failed to allocate shared_bufs->qcoeff_buf[i]");
LABEL_15:
    a2[6] = 0;
    goto LABEL_16;
  }

  v10 = malloc_type_malloc(v9 + 39, 0x5F484EBFuLL);
  if (v10)
  {
    v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v11 - 8) = v10;
    *a2 = v11;
    if (v11)
    {
      v12 = malloc_type_malloc(v9 + 39, 0x5F484EBFuLL);
      if (v12)
      {
        goto LABEL_6;
      }

LABEL_13:
      a2[3] = 0;
LABEL_14:
      aom_internal_error(a3, 2, "Failed to allocate shared_bufs->qcoeff_buf[i]");
      result = malloc_type_malloc(v9 + 39, 0x5F484EBFuLL);
      if (!result)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
  }

  aom_internal_error(a3, 2, "Failed to allocate shared_bufs->coeff_buf[i]");
  v12 = malloc_type_malloc(v9 + 39, 0x5F484EBFuLL);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  v13 = (v12 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v13 - 8) = v12;
  a2[3] = v13;
  if (!v13)
  {
    goto LABEL_14;
  }

  result = malloc_type_malloc(v9 + 39, 0x5F484EBFuLL);
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_8:
  v15 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v15 - 8) = result;
  a2[6] = v15;
  if (v15)
  {
    if (v5)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_16:
  result = aom_internal_error(a3, 2, "Failed to allocate shared_bufs->dqcoeff_buf[i]");
  if (v5)
  {
    return result;
  }

LABEL_18:
  v16 = 4 * (v6 >> (v8 + v7));
  if (v16 <= 0x1FFFFFFD9)
  {
    v17 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
    if (v17)
    {
      v18 = (v17 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v18 - 8) = v17;
      a2[1] = v18;
      if (v18)
      {
        v19 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
        if (v19)
        {
          goto LABEL_23;
        }

        goto LABEL_35;
      }
    }

    else
    {
      a2[1] = 0;
    }

    aom_internal_error(a3, 2, "Failed to allocate shared_bufs->coeff_buf[i]");
    v19 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
    if (v19)
    {
LABEL_23:
      v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v20 - 8) = v19;
      a2[4] = v20;
      if (v20)
      {
        v21 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
        if (v21)
        {
          goto LABEL_25;
        }

        goto LABEL_37;
      }

LABEL_36:
      aom_internal_error(a3, 2, "Failed to allocate shared_bufs->qcoeff_buf[i]");
      v21 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
      if (v21)
      {
LABEL_25:
        v22 = (v21 + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v22 - 8) = v21;
        a2[7] = v22;
        if (v22)
        {
          v23 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
          if (v23)
          {
            goto LABEL_27;
          }

          goto LABEL_39;
        }

LABEL_38:
        aom_internal_error(a3, 2, "Failed to allocate shared_bufs->dqcoeff_buf[i]");
        v23 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
        if (v23)
        {
LABEL_27:
          v24 = (v23 + 39) & 0xFFFFFFFFFFFFFFE0;
          *(v24 - 8) = v23;
          a2[2] = v24;
          if (v24)
          {
            v25 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
            if (v25)
            {
              goto LABEL_29;
            }

            goto LABEL_41;
          }

LABEL_40:
          aom_internal_error(a3, 2, "Failed to allocate shared_bufs->coeff_buf[i]");
          v25 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
          if (v25)
          {
LABEL_29:
            v26 = (v25 + 39) & 0xFFFFFFFFFFFFFFE0;
            *(v26 - 8) = v25;
            a2[5] = v26;
            if (v26)
            {
              result = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
              if (!result)
              {
                goto LABEL_43;
              }

LABEL_31:
              v27 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
              *(v27 - 8) = result;
              a2[8] = v27;
              if (v27)
              {
                return result;
              }

              goto LABEL_44;
            }

LABEL_42:
            aom_internal_error(a3, 2, "Failed to allocate shared_bufs->qcoeff_buf[i]");
            result = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
            if (!result)
            {
              goto LABEL_43;
            }

            goto LABEL_31;
          }

LABEL_41:
          a2[5] = 0;
          goto LABEL_42;
        }

LABEL_39:
        a2[2] = 0;
        goto LABEL_40;
      }

LABEL_37:
      a2[7] = 0;
      goto LABEL_38;
    }

LABEL_35:
    a2[4] = 0;
    goto LABEL_36;
  }

  a2[1] = 0;
  aom_internal_error(a3, 2, "Failed to allocate shared_bufs->coeff_buf[i]");
  a2[4] = 0;
  aom_internal_error(a3, 2, "Failed to allocate shared_bufs->qcoeff_buf[i]");
  a2[7] = 0;
  aom_internal_error(a3, 2, "Failed to allocate shared_bufs->dqcoeff_buf[i]");
  a2[2] = 0;
  aom_internal_error(a3, 2, "Failed to allocate shared_bufs->coeff_buf[i]");
  a2[5] = 0;
  aom_internal_error(a3, 2, "Failed to allocate shared_bufs->qcoeff_buf[i]");
LABEL_43:
  a2[8] = 0;
LABEL_44:

  return aom_internal_error(a3, 2, "Failed to allocate shared_bufs->dqcoeff_buf[i]");
}

void av1_free_shared_coeff_buffer(void *a1)
{
  if (*a1)
  {
    free(*(*a1 - 8));
  }

  v2 = a1[3];
  if (v2)
  {
    free(*(v2 - 8));
  }

  v3 = a1[6];
  if (v3)
  {
    free(*(v3 - 8));
  }

  *a1 = 0;
  a1[3] = 0;
  a1[6] = 0;
  v4 = a1[1];
  if (v4)
  {
    free(*(v4 - 8));
  }

  v5 = a1[4];
  if (v5)
  {
    free(*(v5 - 8));
  }

  v6 = a1[7];
  if (v6)
  {
    free(*(v6 - 8));
  }

  a1[1] = 0;
  a1[4] = 0;
  a1[7] = 0;
  v7 = a1[2];
  if (v7)
  {
    free(*(v7 - 8));
  }

  v8 = a1[5];
  if (v8)
  {
    free(*(v8 - 8));
  }

  v9 = a1[8];
  if (v9)
  {
    free(*(v9 - 8));
  }

  a1[2] = 0;
  a1[5] = 0;
  a1[8] = 0;
}

unint64_t av1_alloc_pmc(uint64_t a1, int a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  memset(v36, 0, 196);
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  if (!setjmp(&v36[1]))
  {
    v36[0] = 1;
    v8 = malloc_type_malloc(0x217uLL, 0x5F484EBFuLL);
    if (v8)
    {
      v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v9 - 1) = v8;
      if (v9)
      {
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1E0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1F0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1C0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1D0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1A0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x1B0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x180) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x190) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x160) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x170) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x140) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x150) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x120) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x130) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x100) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x110) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xE0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xF0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xC0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xD0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
        *v9 = 0u;
        *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      }

      v33 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
      if (v9)
      {
LABEL_10:
        v10 = *(a1 + 263736);
        *(v33 + 464) = 0;
        v11 = *(v10 + 77);
        v12 = block_size_high_6[a2] * block_size_wide_7[a2];
        v13 = v12 >> 4;
        v14 = v13;
        v15 = malloc_type_malloc(v13 + 23, 0x5F484EBFuLL);
        if (v15 && (v16 = v15, v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF0), *(v17 - 1) = v16, v17))
        {
          v18 = v17;
          bzero(v17, v13);
          *(v33 + 280) = v18;
          if (!*(v33 + 280))
          {
LABEL_19:
            aom_internal_error(v34, 2, "Failed to allocate ctx->blk_skip");
            v19 = malloc_type_malloc(v13 + 23, 0x5F484EBFuLL);
            if (!v19)
            {
              goto LABEL_23;
            }

LABEL_20:
            v20 = v19;
            v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF0);
            *(v21 - 1) = v20;
            if (v21)
            {
              v22 = v21;
              bzero(v21, v13);
              *(v33 + 408) = v22;
              if (*(v33 + 408))
              {
                goto LABEL_25;
              }

LABEL_24:
              aom_internal_error(v34, 2, "Failed to allocate ctx->tx_type_map");
LABEL_25:
              *(v33 + 416) = v13;
              v23 = 2 * v13;
              *(v33 + 288) = *a3;
              *(v33 + 312) = a3[3];
              *(v33 + 336) = a3[6];
              v24 = malloc_type_malloc(2 * v14 + 39, 0x5F484EBFuLL);
              if (v24)
              {
                *(((v24 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v24;
                *(v33 + 360) = (v24 + 39) & 0xFFFFFFFFFFFFFFE0;
                if (*(v33 + 360))
                {
                  goto LABEL_27;
                }
              }

              else
              {
                *(v33 + 360) = 0;
                if (*(v33 + 360))
                {
LABEL_27:
                  v25 = malloc_type_malloc(v14 + 39, 0x5F484EBFuLL);
                  if (v25)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_49;
                }
              }

              aom_internal_error(v34, 2, "Failed to allocate ctx->eobs[i]");
              v25 = malloc_type_malloc(v14 + 39, 0x5F484EBFuLL);
              if (v25)
              {
LABEL_28:
                *(((v25 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v25;
                *(v33 + 384) = (v25 + 39) & 0xFFFFFFFFFFFFFFE0;
                if (*(v33 + 384))
                {
                  goto LABEL_30;
                }

                goto LABEL_29;
              }

LABEL_49:
              *(v33 + 384) = 0;
              if (*(v33 + 384))
              {
LABEL_30:
                if (v11)
                {
                  goto LABEL_38;
                }

                *(v33 + 296) = a3[1];
                *(v33 + 320) = a3[4];
                *(v33 + 344) = a3[7];
                v26 = malloc_type_malloc(v23 + 39, 0x5F484EBFuLL);
                if (v26)
                {
                  *(((v26 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v26;
                  *(v33 + 368) = (v26 + 39) & 0xFFFFFFFFFFFFFFE0;
                  if (*(v33 + 368))
                  {
                    goto LABEL_34;
                  }
                }

                else
                {
                  *(v33 + 368) = 0;
                  if (*(v33 + 368))
                  {
LABEL_34:
                    v27 = malloc_type_malloc(v14 + 39, 0x5F484EBFuLL);
                    if (v27)
                    {
                      *(((v27 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v27;
                      *(v33 + 392) = (v27 + 39) & 0xFFFFFFFFFFFFFFE0;
                      if (*(v33 + 392))
                      {
                        goto LABEL_58;
                      }
                    }

                    else
                    {
                      *(v33 + 392) = 0;
                      if (*(v33 + 392))
                      {
LABEL_58:
                        *(v33 + 304) = a3[2];
                        *(v33 + 328) = a3[5];
                        *(v33 + 352) = a3[8];
                        v31 = malloc_type_malloc(v23 + 39, 0x5F484EBFuLL);
                        if (v31)
                        {
                          *(((v31 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v31;
                          *(v33 + 376) = (v31 + 39) & 0xFFFFFFFFFFFFFFE0;
                          if (*(v33 + 376))
                          {
                            goto LABEL_61;
                          }
                        }

                        else
                        {
                          *(v33 + 376) = 0;
                          if (*(v33 + 376))
                          {
LABEL_61:
                            v32 = malloc_type_malloc(v14 + 39, 0x5F484EBFuLL);
                            if (v32)
                            {
                              *(((v32 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v32;
                              *(v33 + 400) = (v32 + 39) & 0xFFFFFFFFFFFFFFE0;
                              if (*(v33 + 400))
                              {
                                goto LABEL_38;
                              }
                            }

                            else
                            {
                              *(v33 + 400) = 0;
                              if (*(v33 + 400))
                              {
                                goto LABEL_38;
                              }
                            }

                            aom_internal_error(v34, 2, "Failed to allocate ctx->txb_entropy_ctx[i]");
LABEL_38:
                            if (v12 > 0x1000)
                            {
                              goto LABEL_53;
                            }

                            if ((*(a1 + 239551) & 1) == 0)
                            {
                              *(v33 + 264) = 0;
                              goto LABEL_52;
                            }

                            v28 = malloc_type_malloc(v12 + 39, 0x5F484EBFuLL);
                            if (v28)
                            {
                              *(((v28 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v28;
                              *(v33 + 264) = (v28 + 39) & 0xFFFFFFFFFFFFFFE0;
                              if (*(v33 + 264))
                              {
                                goto LABEL_43;
                              }
                            }

                            else
                            {
                              *(v33 + 264) = 0;
                              if (*(v33 + 264))
                              {
LABEL_43:
                                if (*(a1 + 239551))
                                {
                                  v29 = malloc_type_malloc(v12 + 39, 0x5F484EBFuLL);
                                  if (v29)
                                  {
                                    *(((v29 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v29;
                                    *(v33 + 272) = (v29 + 39) & 0xFFFFFFFFFFFFFFE0;
                                    if (!*(v33 + 272))
                                    {
                                      goto LABEL_71;
                                    }
                                  }

                                  else
                                  {
                                    *(v33 + 272) = 0;
                                    if (!*(v33 + 272))
                                    {
LABEL_71:
                                      aom_internal_error(v34, 2, "Failed to allocate ctx->color_index_map[i]");
                                    }
                                  }

LABEL_53:
                                  *(v33 + 424) = 0x7FFFFFFFLL;
                                  v30.f64[0] = NAN;
                                  v30.f64[1] = NAN;
                                  *(v33 + 432) = vnegq_f64(v30);
                                  *(v33 + 448) = 0x7FFFFFFFFFFFFFFFLL;
                                  *(v33 + 456) = 0;
                                  return v33;
                                }

LABEL_52:
                                *(v33 + 272) = 0;
                                goto LABEL_53;
                              }
                            }

                            aom_internal_error(v34, 2, "Failed to allocate ctx->color_index_map[i]");
                            goto LABEL_43;
                          }
                        }

                        aom_internal_error(v34, 2, "Failed to allocate ctx->eobs[i]");
                        goto LABEL_61;
                      }
                    }

                    aom_internal_error(v34, 2, "Failed to allocate ctx->txb_entropy_ctx[i]");
                    goto LABEL_58;
                  }
                }

                aom_internal_error(v34, 2, "Failed to allocate ctx->eobs[i]");
                goto LABEL_34;
              }

LABEL_29:
              aom_internal_error(v34, 2, "Failed to allocate ctx->txb_entropy_ctx[i]");
              goto LABEL_30;
            }

LABEL_23:
            *(v33 + 408) = 0;
            if (*(v33 + 408))
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else
        {
          *(v33 + 280) = 0;
          if (!*(v33 + 280))
          {
            goto LABEL_19;
          }
        }

        v19 = malloc_type_malloc(v13 + 23, 0x5F484EBFuLL);
        if (!v19)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v33 = 0;
    }

    aom_internal_error(v34, 2, "Failed to allocate ctx");
    goto LABEL_10;
  }

  if (*(*(a1 + 263736) + 77))
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  av1_free_pmc(0, v6);
  return 0;
}

void av1_free_pmc(void *a1, int a2)
{
  if (a1)
  {
    LODWORD(v2) = a2;
    v4 = a1[35];
    if (v4)
    {
      free(*(v4 - 8));
    }

    a1[35] = 0;
    v5 = a1[51];
    if (v5)
    {
      free(*(v5 - 8));
    }

    if (v2 >= 1)
    {
      v6 = a1 + 48;
      v2 = v2;
      do
      {
        *(v6 - 12) = 0;
        *(v6 - 9) = 0;
        *(v6 - 6) = 0;
        v7 = *(v6 - 3);
        if (v7)
        {
          free(*(v7 - 8));
        }

        *(v6 - 3) = 0;
        if (*v6)
        {
          free(*(*v6 - 8));
        }

        *v6++ = 0;
        --v2;
      }

      while (v2);
    }

    v8 = a1[33];
    if (v8)
    {
      free(*(v8 - 8));
      a1[33] = 0;
    }

    v9 = a1[34];
    if (v9)
    {
      free(*(v9 - 8));
      a1[34] = 0;
    }

    v10 = *(a1 - 1);

    free(v10);
  }
}

float64x2_t av1_reset_pmc(uint64_t a1)
{
  bzero(*(a1 + 280), *(a1 + 416));
  bzero(*(a1 + 408), *(a1 + 416));
  *(a1 + 424) = 0x7FFFFFFFLL;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  result = vnegq_f64(v2);
  *(a1 + 432) = result;
  *(a1 + 448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 456) = 0;
  return result;
}

double av1_alloc_pc_tree_node(char a1)
{
  v2 = malloc_type_malloc(0x6FuLL, 0x5F484EBFuLL);
  if (v2)
  {
    v4 = v2;
    v5 = (v2 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v5 - 8) = v4;
    if (v5)
    {
      result = 0.0;
      *(v5 + 80) = 0;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *v5 = 0;
      *(v5 + 1) = a1;
    }
  }

  return result;
}

void av1_free_pc_tree_recursive(char *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return;
  }

  v8 = a4 | a3;
  if (a5 != 2 || v8)
  {
    v13 = *a1;
    if (a4)
    {
      v14 = a3 == 0;
      if (a3)
      {
LABEL_14:
        if (v13 == 1)
        {
          v15 = (a1 + 32);
          v16 = 40;
LABEL_23:
          av1_free_pmc(*v15, a2);
          *v15 = 0;
          av1_free_pmc(*&a1[v16], a2);
          *&a1[v16] = 0;
LABEL_24:
          v18 = *(a1 + 6);
          if (v18)
          {
            av1_free_pc_tree_recursive(v18, a2, 0, 0, a5);
            *(a1 + 6) = 0;
          }

          v19 = *(a1 + 7);
          if (v19)
          {
            av1_free_pc_tree_recursive(v19, a2, 0, 0, a5);
            *(a1 + 7) = 0;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            av1_free_pc_tree_recursive(v20, a2, 0, 0, a5);
            *(a1 + 8) = 0;
          }

          v21 = *(a1 + 9);
          if (v21)
          {
            av1_free_pc_tree_recursive(v21, a2, 0, 0, a5);
            *(a1 + 9) = 0;
          }

LABEL_34:
          if (v8)
          {
            return;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
      if (a3 && !*a1)
      {
        v14 = 0;
        goto LABEL_32;
      }

      v17 = a3;
      av1_free_pmc(*(a1 + 1), a2);
      a3 = v17;
      *(a1 + 1) = 0;
      v14 = v17 == 0;
      if (a3)
      {
        goto LABEL_14;
      }
    }

    if (a3 && v13 == 2)
    {
      v15 = (a1 + 16);
      v16 = 24;
      goto LABEL_23;
    }

LABEL_32:
    av1_free_pmc(*(a1 + 2), a2);
    *(a1 + 2) = 0;
    av1_free_pmc(*(a1 + 4), a2);
    *(a1 + 4) = 0;
    av1_free_pmc(*(a1 + 3), a2);
    *(a1 + 3) = 0;
    av1_free_pmc(*(a1 + 5), a2);
    *(a1 + 5) = 0;
    if (v13 == 3 && !v14)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  av1_free_pmc(*(a1 + 1), a2);
  *(a1 + 1) = 0;
  av1_free_pmc(*(a1 + 2), a2);
  *(a1 + 2) = 0;
  av1_free_pmc(*(a1 + 4), a2);
  *(a1 + 4) = 0;
  av1_free_pmc(*(a1 + 3), a2);
  *(a1 + 3) = 0;
  av1_free_pmc(*(a1 + 5), a2);
  *(a1 + 5) = 0;
  v9 = *(a1 + 6);
  if (v9)
  {
    av1_free_pc_tree_recursive(v9, a2, 0, 0, 2);
    *(a1 + 6) = 0;
  }

  v10 = *(a1 + 7);
  if (v10)
  {
    av1_free_pc_tree_recursive(v10, a2, 0, 0, 2);
    *(a1 + 7) = 0;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    av1_free_pc_tree_recursive(v11, a2, 0, 0, 2);
    *(a1 + 8) = 0;
  }

  v12 = *(a1 + 9);
  if (v12)
  {
    av1_free_pc_tree_recursive(v12, a2, 0, 0, 2);
    *(a1 + 9) = 0;
  }

LABEL_36:
  v22 = *(a1 - 1);

  free(v22);
}

uint64_t av1_setup_sms_tree(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 264608))
  {
    return 0;
  }

  v2 = a2 + 147456;
  v3 = *(a1 + 265608) != 1 && *(a1 + 637512) != 1;
  v5 = *(*(a1 + 263736) + 28);
  if (v5 == 15)
  {
    v6 = 1365;
  }

  else
  {
    v6 = 341;
  }

  v7 = *(a2 + 148216);
  if (v7)
  {
    free(*(v7 - 8));
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  v9 = malloc_type_malloc(120 * v8 + 23, 0x5F484EBFuLL);
  if (v9 && (v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF0), *(v10 - 1) = v9, v10))
  {
    bzero(((v9 + 23) & 0xFFFFFFFFFFFFFFF0), 120 * v8);
    *(v2 + 760) = v10;
    if (v3)
    {
      if (v5 == 15)
      {
        v11 = 1024;
      }

      else
      {
        v11 = 256;
      }

      v12 = v11;
      v13 = v10;
      do
      {
        *v13 = 0;
        v13[120] = 0;
        v13 += 240;
        v12 -= 2;
      }

      while (v12);
      v14 = 1u;
      v15 = v11;
      do
      {
        if (v11 < 4)
        {
          break;
        }

        v16 = 0;
        v17 = *(&square + v14);
        v18 = 120 * v15;
        v15 += v11 >> 2;
        do
        {
          v19 = *(v2 + 760) + v18 + v16;
          *v19 = v17;
          *(v19 + 8) = v10;
          *(v19 + 16) = v10 + 120;
          v20 = v10 + 480;
          *(v19 + 24) = v10 + 240;
          *(v19 + 32) = v10 + 360;
          v16 += 120;
          v10 += 480;
        }

        while (120 * (v11 >> 2) != v16);
        ++v14;
        v10 = v20;
        v21 = v11 >= 0x10;
        LODWORD(v11) = v11 >> 2;
      }

      while (v21);
      v10 = *(v2 + 760);
    }

    else
    {
      *v10 = 6;
    }

    result = 0;
    *(v2 + 768) = &v10[120 * v8 - 120];
  }

  else
  {
    *(v2 + 760) = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

int16x8_t *av1_convolve_2d_sr_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2, a3);
  v128 = v19;
  v131 = v20;
  v133[4446] = *MEMORY[0x277D85DE8];
  v21 = *(v17 + 8);
  v22 = (v15 + v21 - 1);
  v125 = *(v17 + 8);
  v126 = v21 >> 1;
  v129 = (v21 >> 1) - 1;
  v23 = *(a12 + 20);
  v124 = *(a12 + 24);
  if (v22 >= 1 && v14 >= 1)
  {
    v24 = *(v16 + 8);
    v25 = 1 << v23 >> 1;
    if (*(v16 + 8))
    {
      v26 = 0;
      v27 = v129 * v13;
      v28 = *v16 + 2 * (a9 & 0xF) * v24;
      v29 = v12 - v27 + 16;
      v30 = 1 - (v24 >> 1);
      v31 = v12 - v27;
      while (1)
      {
        v32 = 0;
        v33 = v30;
        do
        {
          if (v24 < 4)
          {
            v34 = 0;
            v35 = 0x4000;
LABEL_19:
            v62 = v24 - v34;
            v63 = (v31 + v34 + v33);
            v64 = (v28 + 2 * v34);
            do
            {
              v66 = *v64++;
              v65 = v66;
              v67 = *v63++;
              v35 += v67 * v65;
              --v62;
            }

            while (v62);
            goto LABEL_7;
          }

          if (v24 >= 0x20)
          {
            v37 = 0uLL;
            v38 = (v29 + v33);
            v39 = (v28 + 32);
            v40 = v24 & 0xFFE0;
            v41 = xmmword_273BDF0D0;
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            v46 = 0uLL;
            v47 = 0uLL;
            do
            {
              v48 = v39[-2];
              v49 = v39[-1];
              v50 = *v39;
              v51 = v39[1];
              v39 += 4;
              v52 = v38[-1];
              v53 = vqtbl1q_s8(*v38, xmmword_273B8E7C0);
              v54 = vqtbl1q_s8(*v38, xmmword_273B8E7B0);
              v55 = vqtbl1q_s8(*v38, xmmword_273B8E7D0);
              v43 = vmlaq_s32(v43, vqtbl1q_s8(v52, xmmword_273B8E7A0), vmovl_high_s16(v49));
              v37 = vmlaq_s32(v37, vqtbl1q_s8(v52, xmmword_273B8E7C0), vmovl_high_s16(v48));
              v42 = vmlaq_s32(v42, vqtbl1q_s8(v52, xmmword_273B8E7B0), vmovl_s16(*v49.i8));
              v41 = vmlaq_s32(v41, vqtbl1q_s8(v52, xmmword_273B8E7D0), vmovl_s16(*v48.i8));
              v47 = vmlaq_s32(v47, vqtbl1q_s8(*v38, xmmword_273B8E7A0), vmovl_high_s16(v51));
              v38 += 2;
              v45 = vmlaq_s32(v45, v53, vmovl_high_s16(v50));
              v46 = vmlaq_s32(v46, v54, vmovl_s16(*v51.i8));
              v44 = vmlaq_s32(v44, v55, vmovl_s16(*v50.i8));
              v40 -= 32;
            }

            while (v40);
            v18 = vaddq_s32(v46, v42);
            v35 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v44, v41), v18), vaddq_s32(vaddq_s32(v45, v37), vaddq_s32(v47, v43))));
            if ((v24 & 0xFFE0) == v24)
            {
              goto LABEL_7;
            }

            v36 = v24 & 0xFFE0;
            v34 = v36;
            if ((v24 & 0x1C) == 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v36 = 0;
            v35 = 0x4000;
          }

          v56 = v35;
          v57 = (v28 + 2 * v36);
          v58 = (v31 + v36 + v33);
          v59 = v36 - (v24 & 0xFFFC);
          do
          {
            v60 = *v57++;
            v61 = v60;
            v60.i32[0] = *v58++;
            v18.i32[0] = v60.i32[0];
            v18.i64[0] = vmovl_u8(*v18.i8).u64[0];
            v56 = vmlal_s16(v56, *v18.i8, v61);
            v59 += 4;
          }

          while (v59);
          v35 = vaddvq_s32(v56);
          v34 = v24 & 0xFFFC;
          if (v34 != v24)
          {
            goto LABEL_19;
          }

LABEL_7:
          v132[v32 + v26 * v14] = (v35 + v25) >> v23;
          ++v32;
          ++v33;
        }

        while (v32 != v14);
        ++v26;
        v30 += v13;
        if (v26 == v22)
        {
          goto LABEL_38;
        }
      }
    }

    v68 = 0;
    v69 = 0;
    v70 = (v25 + 0x4000) >> v23;
    v71 = vdupq_n_s16(v70);
    v72 = v133;
    do
    {
      if (v14 >= 4)
      {
        if (v14 < 0x10)
        {
          v74 = 0;
LABEL_32:
          v77 = &v132[v74 + v68];
          v78 = v74 - (v14 & 0x7FFFFFFC);
          do
          {
            *v77++ = v71.i64[0];
            v78 += 4;
          }

          while (v78);
          v73 = v14 & 0x7FFFFFFC;
          if (v73 == v14)
          {
            goto LABEL_23;
          }

          goto LABEL_35;
        }

        v75 = v14 & 0x7FFFFFF0;
        v76 = v72;
        do
        {
          v76[-1] = v71;
          *v76 = v71;
          v76 += 2;
          v75 -= 16;
        }

        while (v75);
        if ((v14 & 0x7FFFFFF0) == v14)
        {
          goto LABEL_23;
        }

        v74 = v14 & 0x7FFFFFF0;
        v73 = v74;
        if ((v14 & 0xC) != 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v73 = 0;
      }

LABEL_35:
      v79 = v14 - v73;
      v80 = &v132[v73 + v68];
      do
      {
        *v80++ = v70;
        --v79;
      }

      while (v79);
LABEL_23:
      ++v69;
      v72 = (v72 + 2 * v14);
      v68 += v14;
    }

    while (v69 != v22);
  }

LABEL_38:
  result = v15;
  if (v15 >= 1 && v14 >= 1)
  {
    v82 = 0;
    v83 = (v129 * v14);
    v130 = &v132[v83];
    v84 = 22 - v23;
    v127 = v15;
    v85.i32[1] = 0;
    v85.i64[1] = 0;
    v86 = &v132[v83 - v126];
    result = (v86 + 9);
    v87 = *v17 + 2 * (a11 & 0xFu) * v125;
    v88 = v86 + 1;
    v89 = 2 * v14;
    v90 = 1 - v126;
    do
    {
      v91 = 0;
      v92 = v130;
      v93 = v88;
      v94 = result;
      do
      {
        v99 = *(v17 + 8);
        v100 = 1 << v84;
        if (*(v17 + 8))
        {
          if (v99 < 4 || v14 != 1)
          {
            v102 = 0;
            v100 = 1 << v84;
LABEL_61:
            v120 = v99 - v102;
            v121 = (v92 + v89 * (v90 + v102));
            v122 = (v87 + 2 * v102);
            do
            {
              v123 = *v122++;
              v100 += *v121 * v123;
              v121 = (v121 + v89);
              --v120;
            }

            while (v120);
            goto LABEL_43;
          }

          if (v99 >= 0x10)
          {
            v102 = v99 & 0xFFF0;
            v103 = 0uLL;
            v104 = (v87 + 16);
            v105 = v102;
            v106 = v94;
            v85.i32[0] = 1 << (22 - v23);
            v107 = v85;
            v108 = 0uLL;
            v109 = 0uLL;
            do
            {
              v110 = v104[-1];
              v111 = v106[-1];
              v108 = vmlal_high_s16(v108, v111, v110);
              v107 = vmlal_s16(v107, *v111.i8, *v110.i8);
              v109 = vmlal_high_s16(v109, *v106, *v104);
              v103 = vmlal_s16(v103, *v106->i8, *v104->i8);
              v106 += 2;
              v104 += 2;
              v105 -= 16;
            }

            while (v105);
            v100 = vaddvq_s32(vaddq_s32(vaddq_s32(v103, v107), vaddq_s32(v109, v108)));
            if (v102 == v99)
            {
              goto LABEL_43;
            }

            if ((v99 & 0xC) == 0)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v102 = 0;
            v100 = 1 << v84;
          }

          v112 = v102;
          v102 = v99 & 0xFFFC;
          v113 = v100;
          v114 = &v93[v112];
          v115 = (v87 + 2 * v112);
          v116 = v112 - v102;
          do
          {
            v117 = *v115++;
            v118 = v117;
            v119 = *v114++;
            v113 = vmlal_s16(v113, v119, v118);
            v116 += 4;
          }

          while (v116);
          v100 = vaddvq_s32(v113);
          if (v102 == v99)
          {
            goto LABEL_43;
          }

          goto LABEL_61;
        }

LABEL_43:
        v95 = *(a12 + 24);
        v96 = (v100 + (1 << v95 >> 1)) >> v95;
        v97 = (-1 << (v84 - v95 - 1)) + (-1 << (v84 - v95));
        v98 = (((1 << (14 - (v23 + v124)) >> 1) + (v97 + v96)) >> (14 - (v23 + v124))) & ~(((1 << (14 - (v23 + v124)) >> 1) + (v97 + v96)) >> (14 - (v23 + v124)) >> 31);
        if (v98 >= 255)
        {
          LOBYTE(v98) = -1;
        }

        *(v131 + v82 * v128 + v91++) = v98;
        v94 = (v94 + 2);
        ++v93;
        ++v92;
      }

      while (v91 != v14);
      ++v82;
      result = (result + 2);
      ++v88;
      ++v90;
    }

    while (v82 != v127);
  }

  return result;
}

uint64_t av1_convolve_2d_scale_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, int a12, uint64_t a13)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v123 = v20;
  v126 = v21;
  v132[8574] = *MEMORY[0x277D85DE8];
  v22 = *(v18 + 4);
  v125 = *(a13 + 8);
  v23 = *(a13 + 20);
  v129 = v22 + ((a11 + (v16 - 1) * a12) >> 10);
  v130 = *(a13 + 16);
  v121 = *(a13 + 24);
  v122 = *(v18 + 4);
  v124 = (v22 >> 1) - 1;
  if (v129 < 1)
  {
LABEL_38:
    if (v15 < 1 || v16 < 1)
    {
      return result;
    }

    v76 = 0;
    v77 = 14 - (v23 + v121);
    v78 = 22 - v23;
    result = 1;
    v79 = 1 << v77 >> 1;
    v80 = &v131[v124 * v15];
    v81.i32[1] = 0;
    v81.i64[1] = 0;
    v82 = 2 * v15;
LABEL_42:
    v83 = 0;
    v84 = v126 + v76;
    v85 = a11;
    v128 = v76;
    v86 = v125 + 2 * v76;
    while (1)
    {
      v89 = *(v18 + 4);
      v90 = 1 << v78;
      if (*(v18 + 4))
      {
        break;
      }

LABEL_64:
      v116 = *(a13 + 24);
      v117 = (v90 + (1 << v116 >> 1)) >> v116;
      if (*(a13 + 32))
      {
        v118 = v83 * v130;
        if (*a13)
        {
          v119 = *(v86 + 2 * v118);
          if (*(a13 + 36))
          {
            v120 = (*(a13 + 40) * v119 + *(a13 + 44) * ((v90 + (1 << v116 >> 1)) >> v116)) >> 4;
          }

          else
          {
            v120 = (v119 + v117) >> 1;
          }

          v87 = (-1 << (v78 - v116)) + v79 + (-1 << (v78 - v116 - 1)) + v120;
          goto LABEL_44;
        }

        *(v86 + 2 * v118) = v117;
        ++v83;
        v85 += a12;
        if (v83 == v16)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v87 = (-1 << (v78 - v116)) + v79 + (-1 << (v78 - v116 - 1)) + v117;
LABEL_44:
        v88 = (v87 >> v77) & ~(v87 >> v77 >> 31);
        if (v88 >= 255)
        {
          LOBYTE(v88) = -1;
        }

        *(v84 + v83 * v123) = v88;
        ++v83;
        v85 += a12;
        if (v83 == v16)
        {
LABEL_41:
          ++v80;
          v76 = v128 + 1;
          if (v128 + 1 == v15)
          {
            return result;
          }

          goto LABEL_42;
        }
      }
    }

    v91 = (v85 >> 6) & 0xF;
    v92 = ((v85 >> 10) * v15);
    v93 = *v18;
    if (v89 < 4 || v15 != 1)
    {
      v95 = 0;
      v90 = 1 << v78;
LABEL_62:
      v112 = v89 - v95;
      v113 = v82 * (1 - (v122 >> 1) + v95) + 2 * v92;
      v114 = (v93 + 2 * v95 + 2 * (v89 * v91));
      do
      {
        v115 = *v114++;
        v90 += *(v80 + v113) * v115;
        v113 += v82;
        --v112;
      }

      while (v112);
      goto LABEL_64;
    }

    if (v89 >= 0x10)
    {
      v95 = v89 & 0xFFF0;
      v96 = (v93 + 2 * (v89 * v91) + 16);
      v97 = -2 * (v122 >> 1) + 2 * v92;
      v98 = 0uLL;
      v99 = v95;
      v81.i32[0] = 1 << v78;
      v100 = v81;
      v101 = 0uLL;
      v102 = 0uLL;
      do
      {
        v103 = v96[-1];
        v104 = *(v80 + v97 + 2);
        v105 = *(v80 + v97 + 18);
        v101 = vmlal_high_s16(v101, v104, v103);
        v100 = vmlal_s16(v100, *v104.i8, *v103.i8);
        v102 = vmlal_high_s16(v102, v105, *v96);
        v98 = vmlal_s16(v98, *v105.i8, *v96->i8);
        v96 += 2;
        v97 += 32;
        v99 -= 16;
      }

      while (v99);
      v90 = vaddvq_s32(vaddq_s32(vaddq_s32(v98, v100), vaddq_s32(v102, v101)));
      if (v95 == v89)
      {
        goto LABEL_64;
      }

      if ((v89 & 0xC) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v95 = 0;
      v90 = 1 << v78;
    }

    v106 = v95;
    v95 = v89 & 0xFFFC;
    v107 = v90;
    v108 = (v93 + 2 * v106 + 2 * (v89 * v91));
    v109 = 2 - 2 * (v122 >> 1) + 2 * (v106 + v92);
    v110 = v106 - v95;
    do
    {
      v111 = *v108++;
      v107 = vmlal_s16(v107, *(v80 + v109), v111);
      v109 += 8;
      v110 += 4;
    }

    while (v110);
    v90 = vaddvq_s32(v107);
    if (v95 == v89)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  if (v15 >= 1)
  {
    v24 = *(v17 + 4);
    v25 = 1 << v23 >> 1;
    if (*(v17 + 4))
    {
      v26 = 0;
      result -= v124 * v14;
      v127 = v14;
      v27 = *v17;
      v28 = 1 - (v24 >> 1);
      while (1)
      {
        v29 = 0;
        v30 = a9;
        do
        {
          v31 = 2 * v24 * ((v30 >> 6) & 0xF);
          v32 = v30 >> 10;
          if (v24 < 4)
          {
            v33 = 0;
            v34 = 0x4000;
LABEL_19:
            v58 = v24 - v33;
            v59 = v28 + v33 + v32;
            v60 = (v27 + v31 + 2 * v33);
            do
            {
              v61 = *v60++;
              v34 += *(result + v59++) * v61;
              --v58;
            }

            while (v58);
            goto LABEL_7;
          }

          if (v24 >= 0x20)
          {
            v36 = 0uLL;
            v37 = (v27 + 32 + v31);
            v38 = v32 - (v24 >> 1);
            v39 = v24 & 0xFFE0;
            v40 = xmmword_273BDF0D0;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            v46 = 0uLL;
            do
            {
              v47 = v37[-2];
              v48 = v37[-1];
              v49 = *v37;
              v50 = v37[1];
              v37 += 4;
              v51 = *(result + v38 + 1);
              v52 = *(result + v38 + 17);
              v42 = vmlaq_s32(v42, vqtbl1q_s8(v51, xmmword_273B8E7A0), vmovl_high_s16(v48));
              v41 = vmlaq_s32(v41, vqtbl1q_s8(v51, xmmword_273B8E7B0), vmovl_s16(*v48.i8));
              v36 = vmlaq_s32(v36, vqtbl1q_s8(v51, xmmword_273B8E7C0), vmovl_high_s16(v47));
              v40 = vmlaq_s32(v40, vqtbl1q_s8(v51, xmmword_273B8E7D0), vmovl_s16(*v47.i8));
              v46 = vmlaq_s32(v46, vqtbl1q_s8(v52, xmmword_273B8E7A0), vmovl_high_s16(v50));
              v45 = vmlaq_s32(v45, vqtbl1q_s8(v52, xmmword_273B8E7B0), vmovl_s16(*v50.i8));
              v44 = vmlaq_s32(v44, vqtbl1q_s8(v52, xmmword_273B8E7C0), vmovl_high_s16(v49));
              v43 = vmlaq_s32(v43, vqtbl1q_s8(v52, xmmword_273B8E7D0), vmovl_s16(*v49.i8));
              v38 += 32;
              v39 -= 32;
            }

            while (v39);
            v19 = vaddq_s32(v45, v41);
            v34 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v43, v40), v19), vaddq_s32(vaddq_s32(v44, v36), vaddq_s32(v46, v42))));
            if ((v24 & 0xFFE0) == v24)
            {
              goto LABEL_7;
            }

            v35 = v24 & 0xFFE0;
            v33 = v35;
            if ((v24 & 0x1C) == 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v35 = 0;
            v34 = 0x4000;
          }

          v53 = v34;
          v54 = (v27 + v31 + 2 * v35);
          v55 = v28 + v35 + v32;
          v56 = v35 - (v24 & 0xFFFC);
          do
          {
            v57 = *v54++;
            v19.i32[0] = *(result + v55);
            v19.i64[0] = vmovl_u8(*v19.i8).u64[0];
            v53 = vmlal_s16(v53, *v19.i8, v57);
            v55 += 4;
            v56 += 4;
          }

          while (v56);
          v34 = vaddvq_s32(v53);
          v33 = v24 & 0xFFFC;
          if (v33 != v24)
          {
            goto LABEL_19;
          }

LABEL_7:
          v131[v29 + v26 * v15] = (v34 + v25) >> v23;
          ++v29;
          v30 += a10;
        }

        while (v29 != v15);
        result += v127;
        if (++v26 == v129)
        {
          goto LABEL_38;
        }
      }
    }

    v62 = 0;
    v63 = 0;
    v64 = (v25 + 0x4000) >> v23;
    v65 = vdupq_n_s16(v64);
    result = v15 & 0xC;
    v66 = v15 & 0x7FFFFFFC;
    v67 = v132;
    while (1)
    {
      if (v15 >= 4)
      {
        if (v15 < 0x10)
        {
          v69 = 0;
LABEL_32:
          v72 = &v131[v69 + v62];
          v73 = v69 - v66;
          do
          {
            *v72++ = v65.i64[0];
            v73 += 4;
          }

          while (v73);
          v68 = v15 & 0x7FFFFFFC;
          if (v66 == v15)
          {
            goto LABEL_23;
          }

          goto LABEL_35;
        }

        v70 = v15 & 0x7FFFFFF0;
        v71 = v67;
        do
        {
          v71[-1] = v65;
          *v71 = v65;
          v71 += 2;
          v70 -= 16;
        }

        while (v70);
        if ((v15 & 0x7FFFFFF0) == v15)
        {
          goto LABEL_23;
        }

        v69 = v15 & 0x7FFFFFF0;
        v68 = v69;
        if ((v15 & 0xC) != 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v68 = 0;
      }

LABEL_35:
      v74 = v15 - v68;
      v75 = &v131[v68 + v62];
      do
      {
        *v75++ = v64;
        --v74;
      }

      while (v74);
LABEL_23:
      ++v63;
      v67 = (v67 + 2 * v15);
      v62 += v15;
      if (v63 == v129)
      {
        goto LABEL_38;
      }
    }
  }

  return result;
}

uint8x8_t *av1_convolve_2d_facade(uint8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int a8, double a9, uint16x8_t a10, uint16x8_t a11, uint16x8_t a12, int16x8_t a13, uint16x8_t a14, uint32x4_t a15, uint16x4_t a16, int a17, unsigned int a18, int a19, int a20, uint64_t a21)
{
  v23 = *a7;
  v24 = a7[1];
  if (*(v23 + 8) != 2 && *(v24 + 8) != 2)
  {
    goto LABEL_10;
  }

  if (a8 && a18)
  {
    return av1_convolve_2d_sr_intrabc_neon(result, a2, a3);
  }

  if (a8)
  {
    return av1_convolve_x_sr_intrabc_neon(result, a2, a3, a4, a5, a6);
  }

  if (a18)
  {
    return av1_convolve_y_sr_intrabc_neon(result, a2, a3, a4, a5, a6, a9, *a10.i8, *a11.i8);
  }

LABEL_10:
  if (a20)
  {
    return av1_convolve_2d_scale_c(result, a2, a3, a4, a5, a6, v23, v24, a8, a17, a18, a19, a21);
  }

  if (*(a21 + 32))
  {
    if (a8 | a18)
    {
      if (!a8 || a18)
      {
        if (a8 || !a18)
        {
          return av1_dist_wtd_convolve_2d(result, a2);
        }

        else
        {
          return av1_dist_wtd_convolve_y_neon(result, a2, a3, a4, a5, a6, v24, a18, a9, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i8, a16, a21);
        }
      }

      else
      {
        return av1_dist_wtd_convolve_x(result);
      }
    }

    else
    {
      return av1_dist_wtd_convolve_2d_copy_neon(result, a2, a3, a4, a5, a6, a21, *&a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else if (a8 | a18)
  {
    if (!a8 || a18)
    {
      if (a8 || !a18)
      {
        return av1_convolve_2d_sr(result, a2);
      }

      else
      {
        return av1_convolve_y_sr(result, a2, a3, a4, a5, a6, v24, a18);
      }
    }

    else
    {
      return av1_convolve_x_sr(result);
    }
  }

  else if ((a5 & 0xF) != 0)
  {
    if ((a5 & 7) != 0)
    {
      if ((a5 & 3) != 0)
      {
        if ((a5 & 1) == 0 && a6 >= 1)
        {
          do
          {
            a3->i16[0] = result->i16[0];
            result = (result + a2);
            a3 = (a3 + a4);
            LODWORD(a6) = a6 - 1;
          }

          while (a6);
        }
      }

      else if (a6 >= 1)
      {
        do
        {
          a3->i32[0] = result->i32[0];
          result = (result + a2);
          a3 = (a3 + a4);
          LODWORD(a6) = a6 - 1;
        }

        while (a6);
      }
    }

    else if (a6 >= 1)
    {
      do
      {
        *a3 = *result;
        result = (result + a2);
        a3 = (a3 + a4);
        LODWORD(a6) = a6 - 1;
      }

      while (a6);
    }
  }

  else if (a6 >= 1 && a5 >> 4 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = 0;
      do
      {
        *a3[2 * v26].i8 = *result[2 * v26].i8;
        ++v26;
      }

      while (a5 >> 4 != v26);
      result = (result + a2);
      a3 = (a3 + a4);
      ++v25;
    }

    while (v25 != a6);
  }

  return result;
}

uint64_t av1_convolve_x_sr_neon(uint64_t result, int a2, _DWORD *_X2, int a4, int a5, int a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15, uint64_t a16)
{
  v16 = *(a7 + 8);
  if (a5 == 2 || a6 == 2)
  {
    if (a6 < 1 || a5 < 1)
    {
      return result;
    }

    v107 = 0;
    v108 = 7 - *(a16 + 20);
    v109 = 1 << (7 - *(a16 + 20)) >> 1;
    v110 = a5;
    v111 = *a7 + 2 * (a8 & 0xF) * v16;
    v112 = 1 - (v16 >> 1);
LABEL_13:
    v113 = 0;
    v114 = v112;
    while (1)
    {
      v117 = *(a7 + 8);
      if (*(a7 + 8))
      {
        break;
      }

      v115 = 0;
LABEL_15:
      v116 = ((((v115 + (1 << *(a16 + 20) >> 1)) >> *(a16 + 20)) + v109) >> v108) & ~((((v115 + (1 << *(a16 + 20) >> 1)) >> *(a16 + 20)) + v109) >> v108 >> 31);
      if (v116 >= 255)
      {
        LOBYTE(v116) = -1;
      }

      *(_X2 + v107 * a4 + v113++) = v116;
      ++v114;
      if (v113 == v110)
      {
        ++v107;
        v112 += a2;
        if (v107 == a6)
        {
          return result;
        }

        goto LABEL_13;
      }
    }

    if (v117 < 4)
    {
      v118 = 0;
      v115 = 0;
LABEL_30:
      v145 = v117 - v118;
      v146 = (result + v118 + v114);
      v147 = (v111 + 2 * v118);
      do
      {
        v149 = *v147++;
        v148 = v149;
        v150 = *v146++;
        v115 += v150 * v148;
        --v145;
      }

      while (v145);
      goto LABEL_15;
    }

    if (v117 >= 0x20)
    {
      v119 = 0uLL;
      v120 = (result + 16 + v114);
      v121 = 0uLL;
      v118 = v117 & 0xFFE0;
      v122 = v118;
      v123 = (v111 + 32);
      v124 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      do
      {
        v130 = v123[-2];
        v131 = v123[-1];
        v132 = *v123;
        v133 = v123[1];
        v123 += 4;
        v134 = v120[-1];
        v135 = vqtbl1q_s8(*v120, xmmword_273B8E7C0);
        v136 = vqtbl1q_s8(*v120, xmmword_273B8E7B0);
        v137 = vqtbl1q_s8(*v120, xmmword_273B8E7D0);
        v125 = vmlaq_s32(v125, vqtbl1q_s8(v134, xmmword_273B8E7A0), vmovl_high_s16(v131));
        v121 = vmlaq_s32(v121, vqtbl1q_s8(v134, xmmword_273B8E7C0), vmovl_high_s16(v130));
        v124 = vmlaq_s32(v124, vqtbl1q_s8(v134, xmmword_273B8E7B0), vmovl_s16(*v131.i8));
        v119 = vmlaq_s32(v119, vqtbl1q_s8(v134, xmmword_273B8E7D0), vmovl_s16(*v130.i8));
        v129 = vmlaq_s32(v129, vqtbl1q_s8(*v120, xmmword_273B8E7A0), vmovl_high_s16(v133));
        v120 += 2;
        v127 = vmlaq_s32(v127, v135, vmovl_high_s16(v132));
        v128 = vmlaq_s32(v128, v136, vmovl_s16(*v133.i8));
        v126 = vmlaq_s32(v126, v137, vmovl_s16(*v132.i8));
        v122 -= 32;
      }

      while (v122);
      a15 = vaddq_s32(v128, v124);
      v115 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v126, v119), a15), vaddq_s32(vaddq_s32(v127, v121), vaddq_s32(v129, v125))));
      if (v118 == v117)
      {
        goto LABEL_15;
      }

      if ((v117 & 0x1C) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v115 = 0;
      v118 = 0;
    }

    v138 = v118;
    v118 = v117 & 0xFFFC;
    v139 = v115;
    v140 = (v111 + 2 * v138);
    v141 = (result + v138 + v114);
    v142 = v138 - v118;
    do
    {
      v143 = *v140++;
      v144 = v143;
      v143.i32[0] = *v141++;
      a15.i32[0] = v143.i32[0];
      a15.i64[0] = vmovl_u8(*a15.i8).u64[0];
      v139 = vmlal_s16(v139, *a15.i8, v144);
      v142 += 4;
    }

    while (v142);
    v115 = vaddvq_s32(v139);
    if (v118 == v117)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v17 = ((v16 >> 1) - 1);
  v18 = (result - v17);
  v19 = (*a7 + 2 * (a8 & 0xF) * v16);
  if (v16 == 12)
  {
    v20 = 4 * a2;
    v21 = a2;
    v22 = *v19;
    v23 = *(v19 + 8);
    v24 = 2 * a4;
    v25 = 4 * a4;
    v26 = 3 * a2 - v17 + result + 11;
    v27 = &v18[1] + 2 * a2 + 3;
    v28 = a2 - v17 + result + 11;
    v29 = _X2 + v24;
    v30 = _X2 + a4;
    v31 = &v30[v24];
    result = a5;
    do
    {
      v32 = 0;
      v33 = *(v18 + v21);
      v34 = (v18 + v21 + v21);
      v35 = *v34;
      v36 = *(v34 + v21);
      v37 = v18[1];
      v38 = (v18 + v21 + 8);
      v39 = *v38;
      v40 = (v38 + v21);
      v41 = *(v40 + v21);
      v42 = vtrn1_s8(*v18, v33);
      v43 = vtrn2_s8(*v18, v33);
      v44 = vtrn1_s8(v35, v36);
      v45 = vtrn2_s8(v35, v36);
      v46 = vmovl_u8(vtrn1_s16(v42, v44));
      v47 = vmovl_u8(vtrn1_s16(v43, v45));
      v48 = vmovl_u8(vtrn2_s16(v42, v44));
      v49 = vmovl_u8(vtrn2_s16(v43, v45));
      v50 = vextq_s8(v46, v46, 8uLL).u64[0];
      v51 = vextq_s8(v47, v47, 8uLL).u64[0];
      v52 = vextq_s8(v48, v48, 8uLL).u64[0];
      v53 = vextq_s8(v49, v49, 8uLL).u64[0];
      v54 = vtrn1_s8(v37, v39);
      v55 = vtrn2_s8(v37, v39);
      v56 = vtrn1_s8(*v40, v41);
      v57 = vtrn2_s8(*v40, v41);
      v58 = vzip1_s16(v54, v56);
      v59 = vtrn2_s16(v54, v56);
      v60 = vzip1_s16(v55, v57);
      v61 = vmovl_u8(v58).u64[0];
      v62 = vmovl_u8(v60).u64[0];
      v63 = vmovl_u8(v59).u64[0];
      do
      {
        v64 = *(v28 + v32);
        v65 = *(v27 + v32);
        v66 = *(&v18[1] + v32 + 3);
        v67 = *(v26 + v32);
        v68 = vtrn1_s8(v66, v64);
        v69 = vtrn2_s8(v66, v64);
        v70 = vtrn1_s8(v65, v67);
        v71 = vtrn2_s8(v65, v67);
        v72 = vzip1_s16(v68, v70);
        v73 = vtrn2_s16(v68, v70);
        v74 = vzip1_s16(v69, v71);
        v75 = vtrn2_s16(v69, v71);
        v76.i64[0] = 0x400000004;
        v76.i64[1] = 0x400000004;
        v77 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v76, *v46.i8, *v22.i8, 0), *v47.i8, *v22.i8, 1), *v48.i8, *v22.i8, 2), *v49.i8, *v22.i8, 3), v50, v22, 4), v51, v22, 5), v52, v22, 6), v53, v22, 7);
        v78.i64[0] = 0x400000004;
        v78.i64[1] = 0x400000004;
        v79 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v78, *v47.i8, *v22.i8, 0), *v48.i8, *v22.i8, 1), *v49.i8, *v22.i8, 2), v50, *v22.i8, 3), v51, v22, 4), v52, v22, 5), v53, v22, 6);
        v80.i64[0] = 0x400000004;
        v80.i64[1] = 0x400000004;
        v81 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v80, *v48.i8, *v22.i8, 0), *v49.i8, *v22.i8, 1), v50, *v22.i8, 2), v51, *v22.i8, 3), v52, v22, 4), v53, v22, 5);
        v82.i64[0] = 0x400000004;
        v82.i64[1] = 0x400000004;
        v83 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v82, *v49.i8, *v22.i8, 0), v50, *v22.i8, 1), v51, *v22.i8, 2), v52, *v22.i8, 3), v53, v22, 4);
        *v49.i8 = v53;
        v53 = vmovl_u8(v72).u64[0];
        v84 = vmlal_lane_s16(v77, v61, v23, 0);
        v85 = vmlal_laneq_s16(v79, v61, v22, 7);
        v86 = vmlal_laneq_s16(v81, v61, v22, 6);
        v87 = vmlal_laneq_s16(v83, v61, v22, 5);
        *v46.i8 = v50;
        v50 = v61;
        v61 = vmovl_u8(v74).u64[0];
        v88 = vmlal_lane_s16(v84, v62, v23, 1);
        v89 = vmlal_lane_s16(v85, v62, v23, 0);
        v90 = vmlal_laneq_s16(v86, v62, v22, 7);
        v91 = vmlal_laneq_s16(v87, v62, v22, 6);
        *v47.i8 = v51;
        v51 = v62;
        v62 = vmovl_u8(v73).u64[0];
        v92 = vmlal_lane_s16(v88, v63, v23, 2);
        v93 = vmlal_lane_s16(v89, v63, v23, 1);
        v94 = vmlal_lane_s16(v90, v63, v23, 0);
        v95 = vmlal_laneq_s16(v91, v63, v22, 7);
        *v48.i8 = v52;
        v52 = v63;
        v63 = vmovl_u8(v75).u64[0];
        v96 = vqrshrn_n_s32(vmlal_lane_s16(v92, v53, v23, 3), 7uLL);
        v97 = vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v93, v53, v23, 2), v61, v23, 3), 7uLL);
        *v92.i8 = vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v94, v53, v23, 1), v61, v23, 2), v62, v23, 3), 7uLL);
        v98 = vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v95, v53, v23, 0), v61, v23, 1), v62, v23, 2), v63, v23, 3), 7uLL);
        v99 = vtrn1_s16(v96, v97);
        v100 = vtrn2_s16(v96, v97);
        v101 = vtrn1_s16(*v92.i8, v98);
        *v92.i8 = vtrn2_s16(*v92.i8, v98);
        *v102.i8 = vzip1_s32(v99, v101);
        *v103.i8 = vzip2_s32(v99, v101);
        v102.u64[1] = vzip1_s32(v100, *v92.i8);
        v103.u64[1] = vzip2_s32(v100, *v92.i8);
        v104 = vqmovun_s16(v102);
        _X2[v32 / 4] = v104.i32[0];
        *&v30[v32] = v104.i32[1];
        v105 = vqmovun_s16(v103);
        *&v29[v32] = v105.i32[0];
        v106 = &v31[v32];
        v32 += 4;
        *v106 = v105.i32[1];
      }

      while (a5 != v32);
      v18 = (v18 + v20);
      _X2 = (_X2 + v25);
      v26 += v20;
      v27 += v20;
      v28 += v20;
      v29 += v25;
      v31 += v25;
      v30 += v25;
      a6 -= 4;
    }

    while (a6);
    return result;
  }

  if (v19[7] | *v19 || v19[6] | v19[1])
  {
    v151 = vshrq_n_s16(*v19, 1uLL);
    v152 = vdupq_lane_s16(*v151.i8, 0);
    v153 = vdupq_lane_s16(*v151.i8, 1);
    v154 = vdupq_lane_s16(*v151.i8, 2);
    v155 = vdupq_lane_s16(*v151.i8, 3);
    v156 = vdupq_laneq_s16(v151, 4);
    v157 = vdupq_laneq_s16(v151, 5);
    v158 = vdupq_laneq_s16(v151, 6);
    v159 = vdupq_laneq_s16(v151, 7);
    if (a6 < 8)
    {
      v265 = a6;
      if (!a6)
      {
        return result;
      }
    }

    else
    {
      result = 8 * a2;
      v160.i64[0] = 0x2000200020002;
      v160.i64[1] = 0x2000200020002;
      do
      {
        v161 = 0;
        *v162.i8 = *v18;
        *v163.i8 = *(v18 + a2);
        v164 = (v18 + a2 + a2);
        v165.i64[0] = *v164;
        v166 = (v164 + a2);
        v167.i64[0] = *v166;
        v168 = (v166 + a2);
        v169 = *v168;
        v170 = (v168 + a2);
        v171 = *v170;
        v172 = (v170 + a2);
        v173 = *v172;
        v174 = *(v172 + a2);
        __asm { PRFM            #0, [X2] }

        _X19 = _X2 + a4;
        __asm { PRFM            #0, [X19] }

        _X19 = _X2 + 2 * a4;
        __asm { PRFM            #0, [X19] }

        _X19 = _X2 + 3 * a4;
        __asm { PRFM            #0, [X19] }

        _X19 = &_X2[a4];
        __asm { PRFM            #0, [X19] }

        _X19 = _X2 + 5 * a4;
        __asm { PRFM            #0, [X19] }

        _X19 = _X2 + 6 * a4;
        __asm { PRFM            #0, [X19] }

        _X19 = _X2 + 7 * a4;
        __asm { PRFM            #0, [X19] }

        v162.i64[1] = v169;
        v163.i64[1] = v171;
        v194 = vtrn1q_s8(v162, v163);
        v195 = vtrn2q_s8(v162, v163);
        v165.i64[1] = v173;
        v167.i64[1] = v174;
        v196 = vtrn1q_s8(v165, v167);
        v197 = vtrn2q_s8(v165, v167);
        v198 = vtrn1q_s16(v194, v196);
        v199 = vtrn2q_s16(v194, v196);
        v200 = vtrn1q_s16(v195, v197);
        v201 = vtrn2q_s16(v195, v197);
        v202 = vuzp1q_s32(v198, v200);
        v203 = vuzp2q_s32(v198, v200);
        v204 = vuzp1q_s32(v199, v201);
        v205 = vzip2_s32(*v199.i8, *&vextq_s8(v199, v199, 8uLL));
        v206 = vmovl_u8(*v202.i8);
        v207 = vmovl_high_u8(v202);
        v208 = vmovl_u8(*v204.i8);
        v209 = vmovl_high_u8(v204);
        v210 = vmovl_u8(*v203.i8);
        v211 = vmovl_high_u8(v203);
        v212 = vmovl_u8(v205);
        do
        {
          *v213.i8 = *(&v18[v161 / 2] + 7);
          v214 = (&v18[v161 / 2] + a2 + 7);
          v215.i64[0] = *v214;
          v216 = (v214 + a2);
          v217.i64[0] = *v216;
          v218 = (v216 + a2);
          v219.i64[0] = *v218;
          v220 = *(v218 + a2);
          v221 = (v218 + a2 + a2);
          v222 = *v221;
          v223 = (v221 + a2);
          v213.i64[1] = v220;
          v215.i64[1] = v222;
          v224 = vtrn1q_s8(v213, v215);
          v225 = vtrn2q_s8(v213, v215);
          v217.i64[1] = *v223;
          v219.i64[1] = *(v223 + a2);
          v226 = vtrn1q_s8(v217, v219);
          v227 = vtrn2q_s8(v217, v219);
          v228 = vtrn1q_s16(v224, v226);
          v229 = vtrn2q_s16(v224, v226);
          v230 = vtrn1q_s16(v225, v227);
          v231 = vtrn2q_s16(v225, v227);
          v232 = vuzp1q_s32(v228, v230);
          v233 = vuzp2q_s32(v228, v230);
          v234 = vuzp1q_s32(v229, v231);
          v235 = vuzp2q_s32(v229, v231);
          v236 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v211, v157), v212, v158), v210, v156), v209, v155), v208, v154), v207, v153), v206, v152);
          v237 = vmovl_u8(*v232.i8);
          v238 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v211, v156), v212, v157), v210, v155), v209, v154), v208, v153), v207, v152);
          v206 = vmovl_high_u8(v232);
          v239 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v211, v155), v212, v156), v210, v154), v209, v153), v208, v152);
          v207 = vmovl_u8(*v234.i8);
          v208 = vmovl_high_u8(v234);
          v240 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v211, v154), v212, v155), v210, v153), v209, v152);
          v209 = vmovl_u8(*v233.i8);
          v241 = vmlaq_s16(vmlaq_s16(vmulq_s16(v211, v153), v212, v154), v210, v152);
          v210 = vmovl_high_u8(v233);
          v242 = vmulq_s16(v211, v152);
          v211 = vmovl_u8(*v235.i8);
          v243 = vmlaq_s16(v242, v212, v153);
          v244 = vmlaq_s16(vmulq_s16(v153, v237), v212, v152);
          v212 = vmovl_high_u8(v235);
          v245 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(vmlaq_s16(v236, v159, v237), v160), 6uLL), vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v241, v155, v237), v156, v206), v157, v207), v158, v208), v159, v209), v160), 6uLL);
          v246 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(v238, v158, v237), v159, v206), v160), 6uLL), vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v243, v154, v237), v155, v206), v156, v207), v157, v208), v158, v209), v159, v210), v160), 6uLL);
          v247 = vtrn1q_s8(v245, v246);
          v248 = vtrn2q_s8(v245, v246);
          v249 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v239, v157, v237), v158, v206), v159, v207), v160), 6uLL), vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v244, v154, v206), v155, v207), v156, v208), v157, v209), v158, v210), v159, v211), v160), 6uLL);
          v250 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v240, v156, v237), v157, v206), v158, v207), v159, v208), v160), 6uLL), vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v153, v206), v152, v237), v154, v207), v155, v208), v156, v209), v157, v210), v158, v211), v159, v212), v160), 6uLL);
          v251 = vtrn1q_s8(v249, v250);
          v252 = vtrn2q_s8(v249, v250);
          v253 = vtrn1q_s16(v247, v251);
          v254 = vtrn2q_s16(v247, v251);
          v255 = vtrn1q_s16(v248, v252);
          v256 = vtrn2q_s16(v248, v252);
          v257 = vuzp1q_s32(v253, v255);
          v258 = vuzp2q_s32(v253, v255);
          v259 = vuzp1q_s32(v254, v256);
          v260 = vuzp2q_s32(v254, v256);
          *&_X2[v161] = v257.i64[0];
          v261 = (&_X2[v161] + a4);
          *v261 = vextq_s8(v257, v257, 8uLL).u64[0];
          v262 = (v261 + a4);
          v263 = (v262 + a4 + a4);
          *v262 = v259.i64[0];
          *(v262 + a4) = vextq_s8(v259, v259, 8uLL).u64[0];
          v264 = (v263 + a4 + a4);
          v161 += 2;
          *v263 = v258.i64[0];
          *(v263 + a4) = vextq_s8(v258, v258, 8uLL).u64[0];
          *v264 = v260.i64[0];
          *(v264 + a4) = vextq_s8(v260, v260, 8uLL).u64[0];
        }

        while (a5 != (v161 * 4));
        v18 = (v18 + result);
        _X2 += 2 * a4;
        v265 = a6 - 8;
        v266 = a6 <= 15;
        a6 -= 8;
      }

      while (!v266);
      if (!v265)
      {
        return result;
      }
    }

    v267.i64[0] = 0x2000200020002;
    v267.i64[1] = 0x2000200020002;
    do
    {
      v268 = 0;
      v269 = vmovl_u8(*v18);
      __asm { PRFM            #0, [X2] }

      do
      {
        v271 = vmovl_u8(v18[v268 / 2 + 1]);
        *&_X2[v268] = vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(vextq_s8(v269, v271, 2uLL), v153), v269, v152), vextq_s8(v269, v271, 4uLL), v154), vextq_s8(v269, v271, 6uLL), v155), vextq_s8(v269, v271, 8uLL), v156), vextq_s8(v269, v271, 0xAuLL), v157), vextq_s8(v269, v271, 0xCuLL), v158), vextq_s8(v269, v271, 0xEuLL), v159), v267), 6uLL);
        v268 += 2;
        v269 = v271;
      }

      while (a5 != (v268 * 4));
      v18 = (v18 + a2);
      _X2 = (_X2 + a4);
      --v265;
    }

    while (v265);
    return result;
  }

  v272 = vshr_n_s16(*(v19 + 2), 1uLL);
  v273 = 2 * a4;
  if (a5 == 4)
  {
    v274 = (v18 + 2);
    v275 = vdupq_lane_s16(v272, 0);
    v276 = vdupq_lane_s16(v272, 1);
    v277 = vdupq_lane_s16(v272, 2);
    v278 = vdupq_lane_s16(v272, 3);
    v279.i64[0] = 0x2000200020002;
    v279.i64[1] = 0x2000200020002;
    do
    {
      v280.i32[0] = *v274;
      v280.i32[1] = *(v274 + a2);
      v281.i32[0] = *(v274 + 1);
      v281.i32[1] = *(v274 + a2 + 1);
      v282.i32[0] = *(v274 + 2);
      v282.i32[1] = *(v274 + a2 + 2);
      v283.i32[0] = *(v274 + 3);
      v283.i32[1] = *(v274 + a2 + 3);
      v284 = vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v276, vmovl_u8(v281)), v275, vmovl_u8(v280)), v277, vmovl_u8(v282)), v278, vmovl_u8(v283)), v279), 6uLL);
      *_X2 = v284.i32[0];
      *(_X2 + a4) = v284.i32[1];
      v274 = (v274 + 2 * a2);
      _X2 = (_X2 + v273);
      a6 -= 2;
    }

    while (a6);
  }

  else
  {
    v285 = vdupq_lane_s16(v272, 0);
    v286 = vdupq_lane_s16(v272, 1);
    v287 = vdupq_lane_s16(v272, 2);
    v288 = vdupq_lane_s16(v272, 3);
    v289 = 2 * a2;
    v290 = _X2 + a4;
    v291 = v18 + a2 + 2;
    v292.i64[0] = 0x2000200020002;
    v292.i64[1] = 0x2000200020002;
    do
    {
      v293 = 0;
      do
      {
        v294 = vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v286, vmovl_u8(*(v291 + v293 + 1))), v285, vmovl_u8(*(v291 + v293))), v287, vmovl_u8(*(v291 + v293 + 2))), v288, vmovl_u8(*(v291 + v293 + 3))), v292), 6uLL);
        *&_X2[v293 / 4] = vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v286, vmovl_u8(*(&v18[v293 / 8] + 3))), v285, vmovl_u8(*(&v18[v293 / 8] + 2))), v287, vmovl_u8(*(&v18[v293 / 8] + 4))), v288, vmovl_u8(*(&v18[v293 / 8] + 5))), v292), 6uLL);
        *&v290[v293] = v294;
        v293 += 8;
      }

      while (a5 != v293);
      _X2 = (_X2 + v273);
      v290 += v273;
      v18 = (v18 + v289);
      v291 += v289;
      a6 -= 2;
    }

    while (a6);
  }

  return result;
}

char *av1_convolve_y_sr_neon(char *result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, char a8, double a9, uint8x8_t a10, uint8x8_t a11, uint8x8_t a12, uint8x8_t a13, uint8x8_t a14, int32x4_t a15)
{
  if (a5 == 2 || a6 == 2)
  {
    if (a5 < 1 || a6 < 1)
    {
      return result;
    }

    v78 = 0;
    v79 = *(a7 + 8);
    v80 = a5;
    v81 = &result[-(v79 >> 1) + 17];
    v82 = *a7 + 2 * (a8 & 0xF) * v79;
    v83 = 1 - (v79 >> 1);
    v84 = &result[v83];
LABEL_12:
    v85 = 0;
    v86 = result;
    v87 = v84;
    v88 = v81;
    while (1)
    {
      v89 = *(a7 + 8);
      if (!*(a7 + 8))
      {
        goto LABEL_14;
      }

      if (v89 >= 4 && a2 == 1)
      {
        if (v89 < 0x20)
        {
          v93 = 0;
          v92 = 0;
LABEL_29:
          v113 = v92;
          v92 = v89 & 0xFFFC;
          v114 = v93;
          v115 = &v87[v113];
          v116 = (v82 + 2 * v113);
          v117 = v113 - v92;
          do
          {
            v118 = *v116++;
            v119 = v118;
            v118.i32[0] = *v115++;
            a15.i32[0] = v118.i32[0];
            a15.i64[0] = vmovl_u8(*a15.i8).u64[0];
            v114 = vmlal_s16(v114, *a15.i8, v119);
            v117 += 4;
          }

          while (v117);
          v93 = vaddvq_s32(v114);
          if (v92 == v89)
          {
            goto LABEL_13;
          }

          goto LABEL_32;
        }

        v94 = 0uLL;
        v92 = v89 & 0xFFE0;
        v95 = 0uLL;
        v96 = (v82 + 32);
        v97 = v88;
        v98 = v92;
        v99 = 0uLL;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v103 = 0uLL;
        v104 = 0uLL;
        do
        {
          v105 = v96[-2];
          v106 = v96[-1];
          v107 = *v96;
          v108 = v96[1];
          v96 += 4;
          v109 = v97[-1];
          v110 = vqtbl1q_s8(*v97, xmmword_273B8E7C0);
          v111 = vqtbl1q_s8(*v97, xmmword_273B8E7B0);
          v112 = vqtbl1q_s8(*v97, xmmword_273B8E7D0);
          v100 = vmlaq_s32(v100, vqtbl1q_s8(v109, xmmword_273B8E7A0), vmovl_high_s16(v106));
          v95 = vmlaq_s32(v95, vqtbl1q_s8(v109, xmmword_273B8E7C0), vmovl_high_s16(v105));
          v99 = vmlaq_s32(v99, vqtbl1q_s8(v109, xmmword_273B8E7B0), vmovl_s16(*v106.i8));
          v94 = vmlaq_s32(v94, vqtbl1q_s8(v109, xmmword_273B8E7D0), vmovl_s16(*v105.i8));
          v104 = vmlaq_s32(v104, vqtbl1q_s8(*v97, xmmword_273B8E7A0), vmovl_high_s16(v108));
          v97 += 2;
          v102 = vmlaq_s32(v102, v110, vmovl_high_s16(v107));
          v103 = vmlaq_s32(v103, v111, vmovl_s16(*v108.i8));
          v101 = vmlaq_s32(v101, v112, vmovl_s16(*v107.i8));
          v98 -= 32;
        }

        while (v98);
        a15 = vaddq_s32(v103, v99);
        v93 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v101, v94), a15), vaddq_s32(vaddq_s32(v102, v95), vaddq_s32(v104, v100))));
        if (v92 == v89)
        {
          goto LABEL_13;
        }

        if ((v89 & 0x1C) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
      }

LABEL_32:
      v120 = v89 - v92;
      v121 = &v86[a2 * (v83 + v92)];
      v122 = (v82 + 2 * v92);
      do
      {
        v123 = *v122++;
        v93 += *v121 * v123;
        v121 += a2;
        --v120;
      }

      while (v120);
LABEL_13:
      LODWORD(v89) = (v93 + 64) >> 7;
LABEL_14:
      v90 = v89 & ~(v89 >> 31);
      if (v90 >= 255)
      {
        LOBYTE(v90) = -1;
      }

      *(a3 + v78 * a4 + v85++) = v90;
      v88 = (v88 + 1);
      ++v87;
      ++v86;
      if (v85 == v80)
      {
        ++v78;
        ++v81;
        ++v84;
        ++v83;
        if (v78 == a6)
        {
          return result;
        }

        goto LABEL_12;
      }
    }
  }

  v16 = *(a7 + 8);
  v17 = (*a7 + 2 * (a8 & 0xFu) * v16);
  if (v16 == 12)
  {
    v18 = 5 * a2;
    v19 = &result[-v18];
    v20 = *v17;
    v21 = *v17[1].i8;
    v22 = a2;
    if (a5 >= 5)
    {
      v125 = 0;
      v126 = 11 * a2;
      v127 = vdupq_lane_s16(*v20.i8, 0);
      v128 = vdupq_lane_s16(*v20.i8, 1);
      v129 = vdupq_lane_s16(*v20.i8, 2);
      v130 = vdupq_lane_s16(*v20.i8, 3);
      v131 = vdupq_laneq_s16(v20, 4);
      v132 = vdupq_laneq_s16(v20, 7);
      v133 = vdupq_lane_s16(v21, 0);
      v134 = vdupq_lane_s16(v21, 1);
      v135 = vdupq_lane_s16(v21, 2);
      v136 = vdupq_lane_s16(v21, 3);
      v137 = vdupq_laneq_s16(v20, 5);
      v138 = v126 + 2 * a2;
      v139 = v138 + a2 - v18;
      v140 = v138 - v18;
      v141 = a2 + v126 - v18;
      v142 = v126 - v18;
      v143 = vdupq_laneq_s16(v20, 6);
      v144 = 4 * a2;
      v145 = 4 * a4;
      v146 = &result[v139];
      v147 = &result[v140];
      v148 = &result[v141];
      v149 = &result[v142];
      v150 = a3 + 3 * a4;
      result = a3 + 2 * a4;
      v151 = a3 + a4;
      do
      {
        v152 = (v19 + v22 + v22);
        v153 = *v152;
        v154 = (v152 + v22);
        v155 = *v154;
        v156 = (v154 + v22);
        v157 = *v156;
        v158 = (v156 + v22);
        v159 = *v158;
        v160 = (v158 + v22);
        v161 = *v160;
        v162 = (v160 + v22);
        v163 = *v162;
        v164 = (v162 + v22);
        v165 = *v164;
        v166 = (v164 + v22);
        v167 = *v166;
        v168 = *(v166 + v22);
        v169 = vmovl_u8(*v19);
        v170 = vmovl_u8(*(v19 + v22));
        v171 = vmovl_u8(v153);
        v172 = vmovl_u8(v155);
        v173 = vmovl_u8(v157);
        v174 = vmovl_u8(v159);
        v175 = vmovl_u8(v161);
        v176 = a3;
        v177 = vmovl_u8(v163);
        v178 = vmovl_u8(v165);
        v179 = vmovl_u8(v167);
        v180 = v151;
        v181 = result;
        v182 = v150;
        v183 = v149;
        v184 = vmovl_u8(v168);
        v185 = v148;
        v186 = v147;
        v187 = v146;
        v188 = a6;
        do
        {
          v189 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v169, v127), v170, v128), v171, v129), v172, v130), v173, v131), v177, v132);
          v190 = vmlaq_s16(vmlaq_s16(vmulq_s16(v170, v127), v171, v128), v172, v129);
          v191 = vmulq_s16(v177, v143);
          v192 = vmlaq_s16(vmulq_s16(v171, v127), v172, v128);
          v193 = vmulq_s16(v177, v137);
          v194 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v172, v127), v173, v128), v174, v129), v175, v130), v177, v131);
          v172 = v177;
          v177 = vmovl_u8(*&v183[v125]);
          v195 = vmlaq_s16(v189, v178, v133);
          v196 = vmlaq_s16(vmlaq_s16(vmlaq_s16(v190, v173, v130), v174, v131), v178, v132);
          v197 = vmlaq_s16(v192, v173, v129);
          v198 = vmulq_s16(v178, v143);
          v199 = vmulq_s16(v178, v137);
          v169 = v173;
          v173 = v178;
          v178 = vmovl_u8(*&v185[v125]);
          v200 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v195, v179, v134), v184, v135), v136, v177), vmulq_s16(v174, v137)), vmulq_s16(v175, v143));
          v201 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v196, v179, v133), v184, v134), v135, v177), v136, v178), vmulq_s16(v175, v137)), v191);
          v202 = vmlaq_s16(vmlaq_s16(vmlaq_s16(v197, v174, v130), v175, v131), v179, v132);
          v203 = vmulq_s16(v179, v143);
          v170 = v174;
          v174 = v179;
          v179 = vmovl_u8(*&v186[v125]);
          v204 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v202, v184, v133), v134, v177), v135, v178), v136, v179), v193), v198);
          v205 = vmlaq_s16(v194, v184, v132);
          v171 = v175;
          v175 = v184;
          v184 = vmovl_u8(*&v187[v125]);
          *&v176[v125 / 4] = vqrshrun_n_s16(v200, 7uLL);
          *&v180[v125] = vqrshrun_n_s16(v201, 7uLL);
          *&v181[v125] = vqrshrun_n_s16(v204, 7uLL);
          *&v182[v125] = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v205, v133, v177), v134, v178), v135, v179), v136, v184), v199), v203), 7uLL);
          v187 += v144;
          v186 += v144;
          v185 += v144;
          v183 += v144;
          v182 += v145;
          v181 += v145;
          v180 += v145;
          v176 = (v176 + v145);
          v188 -= 4;
        }

        while (v188);
        ++v19;
        v125 += 8;
        a5 -= 8;
      }

      while (a5);
    }

    else
    {
      v23 = (v19 + a2 + a2);
      v24 = *v23;
      v25 = (v23 + a2);
      v26 = *v25;
      v27 = (v25 + a2);
      v28 = *v27;
      v29 = (v27 + a2);
      v30 = *v29;
      v31 = (v29 + a2);
      v32 = *v31;
      v33 = (v31 + a2);
      v34 = *v33;
      v35 = (v33 + a2);
      v36 = *v35;
      v37 = (v35 + a2);
      v38 = vmovl_u8(*v19).u64[0];
      v39 = vmovl_u8(*(v19 + a2)).u64[0];
      v40 = vmovl_u8(v24).u64[0];
      v41 = vmovl_u8(v26).u64[0];
      v42 = vmovl_u8(v28).u64[0];
      v43 = vmovl_u8(v30).u64[0];
      v44 = vmovl_u8(v32).u64[0];
      v45 = vmovl_u8(v34).u64[0];
      v46 = vmovl_u8(v36).u64[0];
      v47 = vmovl_u8(*v37).u64[0];
      v48 = vmovl_u8(*(v37 + a2)).u64[0];
      v49 = vdup_lane_s16(*v20.i8, 0);
      v50 = vdup_lane_s16(*v20.i8, 1);
      v51 = vdup_lane_s16(*v20.i8, 2);
      v52 = vdup_lane_s16(*v20.i8, 3);
      v53 = vdup_laneq_s16(v20, 4);
      v54 = vdup_laneq_s16(v20, 7);
      v55 = vdup_lane_s16(v21, 0);
      v56 = vdup_lane_s16(v21, 1);
      v57 = vdup_lane_s16(v21, 2);
      v58 = vdup_lane_s16(v21, 3);
      v59 = vdup_laneq_s16(v20, 5);
      v60 = (v19 + 11 * a2);
      v61 = vdup_laneq_s16(v20, 6);
      v62 = 2 * a4;
      do
      {
        v63 = v42;
        v64 = v43;
        v65 = v44;
        v42 = v46;
        v43 = v47;
        v44 = v48;
        v66 = vmul_s16(v45, v61);
        v67 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v48, v57), v47, v56), v46, v55), v45, v54), v63, v53), v41, v52);
        v68 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v44, v56), v47, v55), v46, v54), v64, v53), v63, v52), v41, v51);
        v69 = vmul_s16(v45, v59);
        v70 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v44, v55), v47, v54), v65, v53), v64, v52), v63, v51), v41, v50);
        v71 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v44, v54), v45, v53), v65, v52), v64, v51), v63, v50), v41, v49);
        v41 = v45;
        v45 = vmovl_u8(*v60).u64[0];
        v46 = vmovl_u8(*(v60 + a2)).u64[0];
        v72 = vqadd_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v67, v40, v51), v39, v50), v38, v49), v45, v58), vmul_s16(v64, v59));
        v73 = vqadd_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v68, v40, v50), v39, v49), v45, v57), v46, v58), vmul_s16(v65, v59));
        v47 = vmovl_u8(*(v60 + 2 * a2)).u64[0];
        v48 = vmovl_u8(*(v60 + 3 * a2)).u64[0];
        v74 = vmla_s16(v70, v40, v49);
        *v75.i8 = vqadd_s16(v72, vmul_s16(v65, v61));
        *v76.i8 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v74, v45, v56), v46, v57), v47, v58), v69), vmul_s16(v42, v61));
        v75.u64[1] = vqadd_s16(v73, v66);
        *v75.i8 = vqrshrun_n_s16(v75, 7uLL);
        v76.u64[1] = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v71, v45, v55), v46, v56), v47, v57), v48, v58), vmul_s16(v42, v59)), vmul_s16(v43, v61));
        *a3 = v75.i32[0];
        *(a3 + a4) = v75.i32[1];
        *v75.i8 = vqrshrun_n_s16(v76, 7uLL);
        *(a3 + v62) = v75.i32[0];
        v77 = (a3 + a4 + v62);
        v60 = (v60 + 4 * a2);
        a3 += a4;
        *v77 = v75.i32[1];
        v40 = v65;
        v39 = v64;
        v38 = v63;
        a6 -= 4;
      }

      while (a6);
    }
  }

  else
  {
    if (v17->u16[7] | v17->u16[0])
    {
      v124 = 8;
    }

    else if (v17->u16[6] | v17->u16[1])
    {
      v124 = 6;
    }

    else
    {
      v124 = 4;
    }

    v206 = (((v124 >> 1) - 1) * a2);
    v207 = &result[-v206];
    v208 = *v17;
    if (v124 > 4)
    {
      v228 = vshrq_n_s16(v208, 1uLL);
      if (v124 == 6)
      {
        if (a5 >= 5)
        {
          v324 = 0;
          v325 = a2;
          v326 = 4 * a2;
          v327 = vdupq_lane_s16(*v228.i8, 1);
          v328 = vdupq_lane_s16(*v228.i8, 2);
          v329 = vdupq_lane_s16(*v228.i8, 3);
          v330 = vdupq_laneq_s16(v228, 4);
          v331 = vdupq_laneq_s16(v228, 5);
          v332 = 5 * a2;
          v333 = v332 + 2 * a2;
          v334 = v333 + a2 - v206;
          v335 = v333 - v206;
          v336 = a2 + v332 - v206;
          v337 = v332 - v206;
          v338 = vdupq_laneq_s16(v228, 6);
          v339 = v326;
          v340 = 4 * a4;
          v341 = &result[v334];
          v342 = &result[v335];
          v343 = &result[v336];
          v344 = &result[v337];
          v345 = a3 + 3 * a4;
          result = a3 + 2 * a4;
          v346 = a3 + a4;
          do
          {
            v347 = (v207 + v325 + v325);
            v348 = *v347;
            v349 = (v347 + v325);
            v350 = *v349;
            v351 = *(v349 + v325);
            v352 = vmovl_u8(*v207);
            v353 = a3;
            v354 = vmovl_u8(*(v207 + v325));
            v355 = vmovl_u8(v348);
            v356 = vmovl_u8(v350);
            v357 = v346;
            v358 = result;
            v359 = v345;
            v360 = v344;
            v361 = vmovl_u8(v351);
            v362 = v343;
            v363 = v342;
            v364 = v341;
            v365 = a6;
            do
            {
              v366 = vmlaq_s16(vmulq_s16(v352, v327), v354, v328);
              v367 = vmulq_s16(v354, v327);
              v354 = vmovl_u8(*&v360[v324]);
              v368 = vmlaq_s16(v366, v355, v329);
              v369 = vmlaq_s16(v367, v355, v328);
              v370 = vmulq_s16(v355, v327);
              v355 = vmovl_u8(*&v362[v324]);
              v371 = vmlaq_s16(v368, v356, v330);
              v372 = vmlaq_s16(v369, v356, v329);
              v373 = vmlaq_s16(v370, v356, v328);
              v374 = vmulq_s16(v356, v327);
              v356 = vmovl_u8(*&v363[v324]);
              v375 = vmlaq_s16(v371, v361, v331);
              v376 = vmlaq_s16(v372, v361, v330);
              v377 = vmlaq_s16(v373, v361, v329);
              v378 = vmlaq_s16(v374, v361, v328);
              v352 = v361;
              v361 = vmovl_u8(*&v364[v324]);
              *&v353[v324 / 4] = vqrshrun_n_s16(vmlaq_s16(v375, v338, v354), 6uLL);
              *&v357[v324] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v376, v331, v354), v338, v355), 6uLL);
              *&v358[v324] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v377, v330, v354), v331, v355), v338, v356), 6uLL);
              *&v359[v324] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v378, v329, v354), v330, v355), v331, v356), v338, v361), 6uLL);
              v364 += v339;
              v363 += v339;
              v362 += v339;
              v360 += v339;
              v359 += v340;
              v358 += v340;
              v357 += v340;
              v353 = (v353 + v340);
              v365 -= 4;
            }

            while (v365);
            ++v207;
            v324 += 8;
            a5 -= 8;
          }

          while (a5);
        }

        else
        {
          v229 = a2;
          v230 = (v207 + 5 * a2);
          a10.i32[0] = *(v207->i32 + a2);
          a11.i32[0] = *(v207->i32 + 2 * a2);
          a12.i32[0] = *(v207->i32 + 3 * a2);
          a15.i32[0] = v207->i32[v229];
          v231.i64[0] = vmovl_u8(v207->u32[0]).u64[0];
          v232.i64[0] = vmovl_u8(a10).u64[0];
          v233.i64[0] = vmovl_u8(a11).u64[0];
          v234.i64[0] = vmovl_u8(a12).u64[0];
          *v245.i8 = vdup_lane_s16(*v228.i8, 1);
          *v242.i8 = vdup_lane_s16(*v228.i8, 2);
          v235 = vmovl_u8(*a15.i8).u64[0];
          v236 = vdupq_laneq_s16(v228, 4);
          v237 = vdupq_laneq_s16(v228, 5);
          v238 = 2 * a4;
          v239.i64[0] = v237.i64[0];
          v239.i64[1] = v236.i64[0];
          v240.i64[0] = v236.i64[0];
          v240.u64[1] = vdup_lane_s16(*v228.i8, 3);
          v241.i64[0] = v240.i64[1];
          v241.i64[1] = v242.i64[0];
          v242.i64[1] = v245.i64[0];
          v243 = vdupq_laneq_s16(v228, 6);
          v244.i64[0] = v245.i64[0];
          v244.i64[1] = v237.i64[0];
          v245.i64[1] = v240.i64[1];
          v246 = v230;
          do
          {
            v247.i32[0] = *v246;
            v246 = (v246 + v229 * 4);
            v248.i32[0] = *(v230 + a2);
            result = *(v230 + 2 * a2);
            v249.i32[0] = result;
            v250 = *(v230 + 3 * a2);
            v234.i64[1] = v234.i64[0];
            v251.i64[0] = v235;
            v251.i64[1] = v235;
            v252.i64[0] = v233.i64[0];
            v252.i64[1] = v233.i64[0];
            v232.i64[1] = v232.i64[0];
            v231.i64[1] = vmovl_u8(v247.u32[0]).u64[0];
            v253 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v251, v239), v234, v240), v252, v241), v232, v242), v231, v244);
            v231.i64[0] = v235;
            v235 = vmovl_u8(v250).u64[0];
            v247.i32[1] = v248.i32[0];
            v232 = vmovl_u8(v247);
            v254 = vqrshrun_n_s16(vmlaq_s16(v253, v232, v243), 6uLL);
            v233.i64[1] = v231.i64[1];
            v248.i32[1] = result;
            v249.i32[1] = v250;
            *a3 = v254.i32[0];
            *(a3 + a4) = v254.i32[1];
            *v233.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v251, v241), v234, v242), v233, v245), v232, v236), vmovl_u8(v248), v237), vmovl_u8(v249), v243), 6uLL);
            *(a3 + v238) = v233.i32[0];
            v255 = (a3 + a4 + v238);
            a3 += a4;
            v234.i64[0] = vmovl_u8(result).u64[0];
            *v255 = v233.i32[1];
            v233.i64[0] = vmovl_u8(v248.u32[0]).u64[0];
            v232.i64[0] = v231.i64[1];
            v230 = v246;
            a6 -= 4;
          }

          while (a6);
        }
      }

      else if (a5 >= 5)
      {
        v379 = 0;
        v380 = a2;
        v381 = 7 * a2;
        v382 = vdupq_lane_s16(*v228.i8, 0);
        v383 = vdupq_lane_s16(*v228.i8, 1);
        v384 = vdupq_lane_s16(*v228.i8, 2);
        v385 = vdupq_lane_s16(*v228.i8, 3);
        v386 = vdupq_laneq_s16(v228, 4);
        v387 = vdupq_laneq_s16(v228, 5);
        v388 = vdupq_laneq_s16(v228, 6);
        v389 = v381 + 2 * a2;
        v390 = v389 + a2 - v206;
        v391 = v389 - v206;
        v392 = a2 + v381 - v206;
        v393 = v381 - v206;
        v394 = vdupq_laneq_s16(v228, 7);
        v395 = 4 * a2;
        v396 = 4 * a4;
        v397 = &result[v390];
        v398 = &result[v391];
        v399 = &result[v392];
        v400 = &result[v393];
        v401 = a3 + 3 * a4;
        result = a3 + 2 * a4;
        v402 = a3 + a4;
        do
        {
          v403 = (v207 + v380 + v380);
          v404 = *v403;
          v405 = (v403 + v380);
          v406 = *v405;
          v407 = (v405 + v380);
          v408 = *v407;
          v409 = (v407 + v380);
          v410 = *v409;
          v411 = *(v409 + v380);
          v412 = vmovl_u8(*v207);
          v413 = vmovl_u8(*(v207 + v380));
          v414 = vmovl_u8(v404);
          v415 = a3;
          v416 = vmovl_u8(v406);
          v417 = vmovl_u8(v408);
          v418 = vmovl_u8(v410);
          v419 = v402;
          v420 = result;
          v421 = v401;
          v422 = v400;
          v423 = vmovl_u8(v411);
          v424 = v399;
          v425 = v398;
          v426 = v397;
          v427 = a6;
          do
          {
            v428 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v412, v382), v413, v383), v414, v384), v416, v385);
            v429 = vmlaq_s16(vmlaq_s16(vmulq_s16(v413, v382), v414, v383), v416, v384);
            v430 = vmlaq_s16(vmulq_s16(v414, v382), v416, v383);
            v431 = vmulq_s16(v416, v382);
            v416 = vmovl_u8(*&v422[v379]);
            v432 = vmlaq_s16(v428, v417, v386);
            v433 = vmlaq_s16(v429, v417, v385);
            v434 = vmlaq_s16(v430, v417, v384);
            v435 = vmlaq_s16(v431, v417, v383);
            v412 = v417;
            v417 = vmovl_u8(*&v424[v379]);
            v436 = vmlaq_s16(v432, v418, v387);
            v437 = vmlaq_s16(v433, v418, v386);
            v438 = vmlaq_s16(v434, v418, v385);
            v439 = vmlaq_s16(v435, v418, v384);
            v413 = v418;
            v418 = vmovl_u8(*&v425[v379]);
            v440 = vmlaq_s16(v436, v423, v388);
            v441 = vmlaq_s16(v437, v423, v387);
            v442 = vmlaq_s16(v438, v423, v386);
            v443 = vmlaq_s16(v439, v423, v385);
            v414 = v423;
            v423 = vmovl_u8(*&v426[v379]);
            *&v415[v379 / 4] = vqrshrun_n_s16(vmlaq_s16(v440, v394, v416), 6uLL);
            *&v419[v379] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v441, v388, v416), v394, v417), 6uLL);
            *&v420[v379] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v442, v387, v416), v388, v417), v394, v418), 6uLL);
            *&v421[v379] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v443, v386, v416), v387, v417), v388, v418), v394, v423), 6uLL);
            v426 += v395;
            v425 += v395;
            v424 += v395;
            v422 += v395;
            v421 += v396;
            v420 += v396;
            v419 += v396;
            v415 = (v415 + v396);
            v427 -= 4;
          }

          while (v427);
          ++v207;
          v379 += 8;
          a5 -= 8;
        }

        while (a5);
      }

      else
      {
        v292 = (v207 + 7 * a2);
        a10.i32[0] = *(v207->i32 + a2);
        a11.i32[0] = *(v207->i32 + 2 * a2);
        a12.i32[0] = *(v207->i32 + 3 * a2);
        v293 = a2;
        a13.i32[0] = v207->i32[v293];
        a14.i32[0] = *(v207->i32 + 5 * a2);
        v15.i32[0] = *(v207->i32 + 6 * a2);
        v294.i64[0] = vmovl_u8(v207->u32[0]).u64[0];
        v295.i64[0] = vmovl_u8(a10).u64[0];
        v296.i64[0] = vmovl_u8(a11).u64[0];
        v297.i64[0] = vmovl_u8(a12).u64[0];
        v298 = vmovl_u8(a13).u64[0];
        v299 = vmovl_u8(a14).u64[0];
        *v312.i8 = vdup_lane_s16(*v228.i8, 0);
        *v309.i8 = vdup_lane_s16(*v228.i8, 1);
        *v308.i8 = vdup_lane_s16(*v228.i8, 2);
        *v307.i8 = vdup_lane_s16(*v228.i8, 3);
        v300 = vdupq_laneq_s16(v228, 5);
        v301 = vdupq_laneq_s16(v228, 6);
        v302 = vmovl_u8(v15).u64[0];
        v303 = 2 * a4;
        v304.i64[0] = v301.i64[0];
        v304.i64[1] = v300.i64[0];
        v305.i64[0] = v300.i64[0];
        v305.u64[1] = vdup_laneq_s16(v228, 4);
        v306.i64[0] = v305.i64[1];
        v306.i64[1] = v307.i64[0];
        v307.i64[1] = v308.i64[0];
        v308.i64[1] = v309.i64[0];
        v309.i64[1] = v312.i64[0];
        v310 = vdupq_laneq_s16(v228, 7);
        v311.i64[0] = v312.i64[0];
        v311.i64[1] = v301.i64[0];
        v312.i64[1] = v305.i64[1];
        v313 = v292;
        do
        {
          v314.i32[0] = *v313;
          v313 = (v313 + v293 * 4);
          result = *(v292 + a2);
          v315.i32[0] = result;
          v316 = *(v292 + 2 * a2);
          v317.i64[0] = v299;
          v317.i64[1] = v299;
          v318.i64[0] = v302;
          v318.i64[1] = v302;
          v319.i64[0] = v298;
          v319.i64[1] = v298;
          v297.i64[1] = v297.i64[0];
          v320.i64[0] = v296.i64[0];
          v320.i64[1] = v296.i64[0];
          v295.i64[1] = v295.i64[0];
          v294.i64[1] = vmovl_u8(v314.u32[0]).u64[0];
          v321 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v318, v304), v317, v305), v319, v306), v297, v307), v320, v308), v295, v309), v294, v311);
          v294.i64[0] = v298;
          v298 = vmovl_u8(result).u64[0];
          v295.i64[0] = v299;
          v299 = vmovl_u8(v316).u64[0];
          v296.i64[1] = v294.i64[1];
          v322 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v318, v306), v317, v307), v319, v308), v297, v309), v296, v312);
          v296.i64[0] = v302;
          v302 = vmovl_u8(*(v292 + 3 * a2)).u64[0];
          v314.i32[1] = *(v292 + a2);
          v297 = vmovl_u8(v314);
          v323 = vqrshrun_n_s16(vmlaq_s16(v321, v297, v310), 6uLL);
          v315.i32[1] = *(v292 + 2 * a2);
          v316.i32[1] = *(v292 + 3 * a2);
          *v297.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v322, v297, v300), vmovl_u8(v315), v301), vmovl_u8(v316), v310), 6uLL);
          *a3 = v323.i32[0];
          *(a3 + a4) = v323.i32[1];
          *(a3 + v303) = v297.i32[0];
          *(a3 + a4 + v303) = v297.i32[1];
          a3 += a4;
          v297.i64[0] = v294.i64[1];
          v292 = v313;
          a6 -= 4;
        }

        while (a6);
      }
    }

    else
    {
      v209 = vshr_n_s16((v208 >> 32), 1uLL);
      if (a5 == 4)
      {
        v210 = (v207 + a2);
        v211.i32[0] = v207->i32[0];
        v211.i32[1] = *v210;
        v212.i32[0] = *v210;
        v212.i32[1] = *(v210 + a2);
        v213 = vmovl_u8(v211);
        v214 = vmovl_u8(v212);
        v215 = (v207 + 2 * a2);
        v216 = vdupq_lane_s16(v209, 0);
        v217 = vdupq_lane_s16(v209, 1);
        v218 = vdupq_lane_s16(v209, 2);
        v219 = vdupq_lane_s16(v209, 3);
        do
        {
          v220.i32[0] = *v215;
          v220.i32[1] = *(v215 + a2);
          result = *(v215 + a2 + a2);
          v221.i32[0] = v220.i32[1];
          v221.i32[1] = *(v215 + a2 + a2);
          v222.i32[0] = v221.i32[1];
          v222.i32[1] = *(v215 + 2 * a2 + a2);
          v223.i32[0] = v222.i32[1];
          v223.i32[1] = *(v215 + 3 * a2 + a2);
          v224 = vmovl_u8(v220);
          v225 = vmovl_u8(v221);
          v226 = vmlaq_s16(vmulq_s16(v214, v217), v213, v216);
          v213 = vmovl_u8(v222);
          v227 = vmovl_u8(v223);
          *v226.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v226, v218, v224), v219, v225), 6uLL);
          *v224.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v216, v224), v217, v225), v218, v213), v219, v227), 6uLL);
          *a3 = v226.i32[0];
          *(a3 + a4) = v226.i32[1];
          *(a3 + 2 * a4) = v224.i32[0];
          v215 += a2;
          *(a3 + 2 * a4 + a4) = v224.i32[1];
          a3 += a4;
          v214 = v227;
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v256 = 0;
        v257 = a2;
        v258 = 3 * a2;
        v259 = vdupq_lane_s16(v209, 0);
        v260 = vdupq_lane_s16(v209, 1);
        v261 = vdupq_lane_s16(v209, 2);
        v262 = v258 + 2 * a2;
        v263 = v262 + a2 - v206;
        v264 = vdupq_lane_s16(v209, 3);
        v265 = v262 - v206;
        v266 = a2 + v258 - v206;
        v267 = v258 - v206;
        v268 = 4 * a2;
        v269 = 4 * a4;
        v270 = &result[v263];
        v271 = &result[v265];
        v272 = &result[v266];
        v273 = &result[v267];
        v274 = a3 + 3 * a4;
        result = a3 + 2 * a4;
        v275 = a3 + a4;
        do
        {
          v276 = a3;
          v277 = vmovl_u8(*v207);
          v278 = vmovl_u8(*(v207 + v257));
          v279 = v275;
          v280 = result;
          v281 = v274;
          v282 = v273;
          v283 = vmovl_u8(*(v207 + v257 + v257));
          v284 = v272;
          v285 = v271;
          v286 = v270;
          v287 = a6;
          do
          {
            v288 = vmovl_u8(*&v282[v256]);
            v289 = vmlaq_s16(vmlaq_s16(vmulq_s16(v278, v260), v283, v261), v277, v259);
            v277 = vmovl_u8(*&v284[v256]);
            v290 = vmovl_u8(*&v285[v256]);
            v291 = vmovl_u8(*&v286[v256]);
            *&v276[v256 / 4] = vqrshrun_n_s16(vmlaq_s16(v289, v264, v288), 6uLL);
            *&v279[v256] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v278, v259), v283, v260), v261, v288), v264, v277), 6uLL);
            *&v280[v256] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v283, v259), v260, v288), v261, v277), v264, v290), 6uLL);
            *&v281[v256] = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v259, v288), v260, v277), v261, v290), v264, v291), 6uLL);
            v286 += v268;
            v285 += v268;
            v284 += v268;
            v282 += v268;
            v281 += v269;
            v280 += v269;
            v279 += v269;
            v276 = (v276 + v269);
            v278 = v290;
            v283 = v291;
            v287 -= 4;
          }

          while (v287);
          ++v207;
          v256 += 8;
          a5 -= 8;
        }

        while (a5);
      }
    }
  }

  return result;
}

uint64_t av1_convolve_2d_sr_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v491[4097] = *MEMORY[0x277D85DE8];
  if (v16 == 2 || v17 == 2)
  {

    return av1_convolve_2d_sr_c(result, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
  }

  else
  {
    v20 = *(v19 + 8);
    v21 = (*v19 + 2 * (a11 & 0xFu) * v20);
    if (v20 == 12)
    {
      v22 = 12;
    }

    else if (v21[7] | *v21)
    {
      v22 = 8;
    }

    else if (v21[6] | v21[1])
    {
      v22 = 6;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(v18 + 8);
    v24 = (*v18 + 2 * (a9 & 0xF) * v23);
    v25 = v23 != 12 && !(v24[7] | *v24) && (v24[6] | v24[1]) == 0;
    v26 = v22 + v17;
    v27 = v22 + v17 - 1;
    v28 = v23 >> 1;
    v29 = (((v22 >> 1) - 1) * v13);
    v30 = (result - v29 - (v23 >> 1) + 1);
    if (v23 < 9)
    {
      if (v25)
      {
        v135 = (result - v29 - (v23 >> 1) + 3);
        v136 = v13;
        v137 = vshr_n_s16(*(v24 + 2), 1uLL);
        v138 = 2 * v13;
        v139 = vdupq_lane_s16(v137, 0);
        v140 = vdupq_lane_s16(v137, 1);
        v141 = vdupq_lane_s16(v137, 2);
        v142 = vdupq_lane_s16(v137, 3);
        if (v16 == 4)
        {
          v143 = v22 + v17 + 1;
          v144 = v483;
          v145 = vdupq_n_s16(0x2002u);
          do
          {
            v146.i32[0] = *v135;
            v146.i32[1] = *(v135 + v13);
            v147.i32[0] = *(v135 + 1);
            v147.i32[1] = *(v135 + v13 + 1);
            v148.i32[0] = *(v135 + 2);
            v148.i32[1] = *(v135 + v13 + 2);
            v149.i32[0] = *(v135 + 3);
            v149.i32[1] = *(v135 + v13 + 3);
            v150 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v140, vmovl_u8(v147)), v139, vmovl_u8(v146)), v141, vmovl_u8(v148)), v142, vmovl_u8(v149)), v145), 2uLL);
            *v144 = v150.i64[0];
            v144[32] = v150.i64[1];
            v135 = (v135 + v138);
            v144 += 64;
            v143 -= 2;
          }

          while (v143 > 2);
        }

        else
        {
          v305 = result - v28 - v29 + 6;
          v306 = v13 - v28 - v29 + result + 6;
          v307 = v483;
          v308 = vdupq_n_s16(0x2002u);
          do
          {
            v309 = v306;
            result = v305;
            v310 = v307;
            v311 = v16;
            do
            {
              v312 = *(result - 3);
              v313 = *(result - 2);
              v314 = *(result - 1);
              v315 = *result;
              result += 8;
              v316 = v315;
              v317 = *(v309 - 3);
              v318 = *(v309 - 2);
              v319 = *(v309 - 1);
              v320 = *v309++;
              *v310 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v140, vmovl_u8(v313)), v139, vmovl_u8(v312)), v141, vmovl_u8(v314)), v142, vmovl_u8(v316)), v308), 2uLL);
              v310[16] = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v140, vmovl_u8(v318)), v139, vmovl_u8(v317)), v141, vmovl_u8(v319)), v142, vmovl_u8(v320)), v308), 2uLL);
              ++v310;
              v311 -= 8;
            }

            while (v311);
            v135 = (v135 + v138);
            v307 += 32;
            v321 = v27 - 2;
            v305 += v138;
            v306 += v138;
            v104 = v27 <= 4;
            v27 -= 2;
          }

          while (!v104);
          v322 = vdupq_n_s16(0x2002u);
          do
          {
            v323 = v135;
            v324 = v307;
            v325 = v16;
            do
            {
              *v324++ = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v140, vmovl_u8(*(v323 + 1))), v139, vmovl_u8(*v323)), v141, vmovl_u8(*(v323 + 2))), v142, vmovl_u8(*(v323 + 3))), v322), 2uLL);
              v323 += 2;
              v325 -= 8;
            }

            while (v325);
            v135 = (v135 + v136);
            v307 += 16;
            --v321;
          }

          while (v321);
        }
      }

      else
      {
        v200 = vshrq_n_s16(*v24, 1uLL);
        v201 = vdupq_lane_s16(*v200.i8, 0);
        v202 = vdupq_lane_s16(*v200.i8, 1);
        v203 = vdupq_lane_s16(*v200.i8, 2);
        v204 = vdupq_lane_s16(*v200.i8, 3);
        v205 = vdupq_laneq_s16(v200, 4);
        v206 = vdupq_laneq_s16(v200, 5);
        v207 = vdupq_laneq_s16(v200, 6);
        v208 = vdupq_laneq_s16(v200, 7);
        if (v26 < 10)
        {
          v209 = v483;
        }

        else
        {
          v209 = v483;
          v210 = vdupq_n_s16(0x2002u);
          v211 = v26 - 1;
          do
          {
            *v212.i8 = *v30;
            *v213.i8 = *(v30 + v13);
            v214 = (v30 + v13 + v13);
            v215.i64[0] = *v214;
            v216 = (v214 + v13);
            v217.i64[0] = *v216;
            v218 = (v216 + v13);
            v219 = *v218;
            v220 = (v218 + v13);
            v221 = *v220;
            v222 = (v220 + v13);
            v212.i64[1] = v219;
            v213.i64[1] = v221;
            v223 = vtrn1q_s8(v212, v213);
            v215.i64[1] = *v222;
            v224 = vtrn2q_s8(v212, v213);
            v217.i64[1] = *(v222 + v13);
            v225 = vtrn1q_s8(v215, v217);
            v226 = vtrn2q_s8(v215, v217);
            v227 = vtrn1q_s16(v223, v225);
            v228 = vtrn2q_s16(v223, v225);
            v229 = vtrn1q_s16(v224, v226);
            v230 = vtrn2q_s16(v224, v226);
            v231 = vuzp1q_s32(v227, v229);
            v232 = vuzp2q_s32(v227, v229);
            v233 = vuzp1q_s32(v228, v230);
            v234 = vzip2_s32(*v228.i8, *&vextq_s8(v228, v228, 8uLL));
            v235 = vmovl_u8(*v231.i8);
            v236 = vmovl_high_u8(v231);
            v237 = vmovl_u8(*v233.i8);
            v238 = vmovl_high_u8(v233);
            v239 = vmovl_u8(*v232.i8);
            v240 = vmovl_high_u8(v232);
            v241 = vmovl_u8(v234);
            v242 = (v30 + 7);
            v243 = v16;
            v244 = v209;
            do
            {
              v245.i64[0] = *v242;
              v246.i64[0] = *(v242 + v13);
              v247 = (v242 + v13 + v13);
              v248.i64[0] = *v247;
              v249 = (v247 + v13);
              v250.i64[0] = *v249;
              v251 = (v249 + v13);
              v252 = *v251;
              v253 = (v251 + v13);
              v254 = *v253;
              result = v253 + v13;
              v245.i64[1] = v252;
              v246.i64[1] = v254;
              v255 = vtrn1q_s8(v245, v246);
              v248.i64[1] = *result;
              v256 = vtrn2q_s8(v245, v246);
              v250.i64[1] = *(result + v13);
              v257 = vtrn1q_s8(v248, v250);
              v258 = vtrn2q_s8(v248, v250);
              v259 = vtrn1q_s16(v255, v257);
              v260 = vtrn2q_s16(v255, v257);
              v261 = vtrn1q_s16(v256, v258);
              v262 = vtrn2q_s16(v256, v258);
              v263 = vuzp1q_s32(v259, v261);
              v264 = vuzp2q_s32(v259, v261);
              v265 = vuzp1q_s32(v260, v262);
              v266 = vuzp2q_s32(v260, v262);
              v267 = vmovl_u8(*v263.i8);
              v268 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v240, v206), v241, v207), v239, v205), v238, v204), v237, v203), v236, v202), v235, v201);
              v235 = vmovl_high_u8(v263);
              v269 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v240, v205), v241, v206), v239, v204), v238, v203), v237, v202), v236, v201);
              v236 = vmovl_u8(*v265.i8);
              v270 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v240, v204), v241, v205), v239, v203), v238, v202), v237, v201);
              v237 = vmovl_high_u8(v265);
              v271 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v240, v203), v241, v204), v239, v202), v238, v201);
              v272 = vmlaq_s16(vmlaq_s16(vmulq_s16(v240, v202), v241, v203), v239, v201);
              v238 = vmovl_u8(*v264.i8);
              v239 = vmovl_high_u8(v264);
              v273 = vmulq_s16(v240, v201);
              v240 = vmovl_u8(*v266.i8);
              v274 = vmlaq_s16(v273, v241, v202);
              v275 = vmlaq_s16(vmulq_s16(v202, v267), v241, v201);
              v241 = vmovl_high_u8(v266);
              v276 = vshrq_n_s16(vaddq_s16(vmlaq_s16(v268, v208, v267), v210), 2uLL);
              v277 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(v269, v207, v267), v208, v235), v210), 2uLL);
              v278 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v270, v206, v267), v207, v235), v208, v236), v210), 2uLL);
              v279 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v271, v205, v267), v206, v235), v207, v236), v208, v237), v210), 2uLL);
              v280 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v272, v204, v267), v205, v235), v206, v236), v207, v237), v208, v238), v210), 2uLL);
              v281 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v274, v203, v267), v204, v235), v205, v236), v206, v237), v207, v238), v208, v239), v210), 2uLL);
              v282 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v202, v235), v201, v267), v203, v236), v204, v237), v205, v238), v206, v239);
              v283 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v275, v203, v235), v204, v236), v205, v237), v206, v238), v207, v239), v208, v240), v210), 2uLL);
              v284 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(v282, v207, v240), v208, v241), v210), 2uLL);
              v285 = vtrn1q_s16(v276, v277);
              v286 = vtrn2q_s16(v276, v277);
              v287 = vtrn1q_s16(v278, v279);
              v288 = vtrn2q_s16(v278, v279);
              v289 = vtrn1q_s16(v280, v281);
              v290 = vtrn2q_s16(v280, v281);
              v291 = vtrn1q_s16(v283, v284);
              v292 = vtrn2q_s16(v283, v284);
              v293 = vtrn1q_s32(v285, v287);
              v294 = vtrn2q_s32(v285, v287);
              v295 = vtrn1q_s32(v286, v288);
              v296 = vtrn2q_s32(v286, v288);
              v297 = vtrn1q_s32(v289, v291);
              v298 = vtrn2q_s32(v289, v291);
              v299 = vtrn1q_s32(v290, v292);
              v300 = vtrn2q_s32(v290, v292);
              v301 = vzip2q_s64(v293, v297);
              v293.i64[1] = v297.i64[0];
              v302 = vzip2q_s64(v295, v299);
              v303 = vzip2q_s64(v294, v298);
              v295.i64[1] = v299.i64[0];
              v294.i64[1] = v298.i64[0];
              v304 = vzip2q_s64(v296, v300);
              v296.i64[1] = v300.i64[0];
              *v244 = v293;
              v244[16] = v295;
              v244[32] = v294;
              ++v242;
              v244[48] = v296;
              v244[64] = v301;
              v244[80] = v302;
              v244[96] = v303;
              v244[112] = v304;
              ++v244;
              v243 -= 8;
            }

            while (v243);
            v30 += v13;
            v209 += 128;
            v27 = v211 - 8;
            v104 = v211 <= 16;
            v211 -= 8;
          }

          while (!v104);
        }

        v326 = vdupq_n_s16(0x2002u);
        do
        {
          v327 = vmovl_u8(*v30);
          v328 = 1;
          v329 = v16;
          v330 = v209;
          do
          {
            v331 = vmovl_u8(v30[v328]);
            *v330++ = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(vextq_s8(v327, v331, 2uLL), v202), v327, v201), vextq_s8(v327, v331, 4uLL), v203), vextq_s8(v327, v331, 6uLL), v204), vextq_s8(v327, v331, 8uLL), v205), vextq_s8(v327, v331, 0xAuLL), v206), vextq_s8(v327, v331, 0xCuLL), v207), vextq_s8(v327, v331, 0xEuLL), v208), v326), 2uLL);
            ++v328;
            v327 = v331;
            v329 -= 8;
          }

          while (v329);
          v30 = (v30 + v13);
          v209 += 16;
          --v27;
        }

        while (v27);
      }

      v332 = *v21;
      if (v22 > 4)
      {
        if (v22 == 6)
        {
          if (v16 >= 5)
          {
            v413 = v14 + 3 * v15;
            v414 = v14 + 2 * v15;
            v415 = v14 + v15;
            v416 = v483;
            v417.i64[0] = 0x7F007F007F007FLL;
            v417.i64[1] = 0x7F007F007F007FLL;
            do
            {
              v418 = 0;
              v419 = *v416;
              v420 = v416[16];
              v421 = v416[32];
              v422 = v416[48];
              v423 = 80;
              v424 = v17;
              v425 = v416[64];
              do
              {
                v426 = vmull_lane_s16(*v420.i8, *&v332, 2);
                v427 = vmull_high_lane_s16(v420, *&v332, 2);
                v428 = vmlal_lane_s16(vmull_lane_s16(*v421.i8, *&v332, 2), *v420.i8, *&v332, 1);
                v429 = vmlal_high_lane_s16(vmull_high_lane_s16(v421, *&v332, 2), v420, *&v332, 1);
                v420 = v416[v423];
                v430 = vmlal_lane_s16(vmlal_lane_s16(v426, *v419.i8, *&v332, 1), *v421.i8, *&v332, 3);
                v431 = vmlal_high_lane_s16(vmlal_high_lane_s16(v427, v419, *&v332, 1), v421, *&v332, 3);
                v432 = vmlal_lane_s16(vmull_lane_s16(*v422.i8, *&v332, 2), *v421.i8, *&v332, 1);
                v433 = vmlal_high_lane_s16(vmull_high_lane_s16(v422, *&v332, 2), v421, *&v332, 1);
                v421 = v416[v423 + 16];
                v434 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v430, *v422.i8, v332, 4), *v425.i8, v332, 5), *v420.i8, v332, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v431, v422, v332, 4), v425, v332, 5), v420, v332, 6), 0xBuLL);
                v435 = vmlal_lane_s16(v428, *v422.i8, *&v332, 3);
                v436 = vmlal_high_lane_s16(v429, v422, *&v332, 3);
                v437 = vmlal_lane_s16(vmull_lane_s16(*v425.i8, *&v332, 2), *v422.i8, *&v332, 1);
                v438 = vmlal_high_lane_s16(vmull_high_lane_s16(v425, *&v332, 2), v422, *&v332, 1);
                v422 = v416[v423 + 32];
                v439 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v435, *v425.i8, v332, 4), *v420.i8, v332, 5), *v421.i8, v332, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v436, v425, v332, 4), v420, v332, 5), v421, v332, 6), 0xBuLL);
                v440 = vmlal_lane_s16(v432, *v425.i8, *&v332, 3);
                v441 = vmlal_high_lane_s16(v433, v425, *&v332, 3);
                v419 = v425;
                v425 = v416[v423 + 48];
                *&v14[v418 / 4] = vqmovun_s16(vaddq_s16(v434, v417));
                *&v415[v418] = vqmovun_s16(vaddq_s16(v439, v417));
                *&v414[v418] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v440, *v420.i8, v332, 4), *v421.i8, v332, 5), *v422.i8, v332, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v441, v420, v332, 4), v421, v332, 5), v422, v332, 6), 0xBuLL), v417));
                *&v413[v418] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v437, *v420.i8, *&v332, 3), *v421.i8, v332, 4), *v422.i8, v332, 5), *v425.i8, v332, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v438, v420, *&v332, 3), v421, v332, 4), v422, v332, 5), v425, v332, 6), 0xBuLL), v417));
                v423 += 64;
                v418 += 4 * v15;
                v424 -= 4;
              }

              while (v424);
              ++v416;
              v14 += 2;
              v413 += 8;
              v414 += 8;
              v415 += 8;
              LODWORD(v16) = v16 - 8;
            }

            while (v16);
          }

          else
          {
            v348 = v483[0];
            v349 = v484;
            v350 = v485;
            v351 = v486;
            v352 = &v488;
            v353 = v487;
            v354 = 2 * v15;
            v355.i64[0] = 0x7F007F007F007FLL;
            v355.i64[1] = 0x7F007F007F007FLL;
            do
            {
              v356 = vmlal_lane_s16(vmull_lane_s16(v349, *&v332, 2), v348, *&v332, 1);
              v348 = v353;
              v357 = vmlal_lane_s16(vmull_lane_s16(v350, *&v332, 2), v349, *&v332, 1);
              v349 = *v352;
              v358 = vmlal_lane_s16(v356, v350, *&v332, 3);
              v359 = vmlal_lane_s16(vmull_lane_s16(v351, *&v332, 2), v350, *&v332, 1);
              v350 = v352[32];
              v360 = vmlal_laneq_s16(v358, v351, v332, 4);
              v361 = vmlal_lane_s16(v357, v351, *&v332, 3);
              v362 = vmlal_lane_s16(vmull_lane_s16(v353, *&v332, 2), v351, *&v332, 1);
              v351 = v352[64];
              v363 = vmlal_laneq_s16(v360, v353, v332, 5);
              v364 = vmlal_laneq_s16(v361, v353, v332, 4);
              v365 = vmlal_lane_s16(v359, v353, *&v332, 3);
              v353 = v352[96];
              *v363.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(v363, *v352, v332, 6), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(v364, *v352, v332, 5), v350, v332, 6), 0xBuLL), v355));
              v366 = vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v365, *v352, v332, 4), v350, v332, 5), v351, v332, 6), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v362, *v352, *&v332, 3), v350, v332, 4), v351, v332, 5), v353, v332, 6), 0xBuLL), v355);
              *v14 = v363.i32[0];
              *(v14 + v15) = v363.i32[1];
              *v363.i8 = vqmovun_s16(v366);
              *(v14 + v354) = v363.i32[0];
              v367 = (v14 + v354 + v15);
              v352 += 128;
              v14 += v15;
              *v367 = v363.i32[1];
              LODWORD(v17) = v17 - 4;
            }

            while (v17);
          }
        }

        else if (v16 >= 5)
        {
          v442 = v14 + 3 * v15;
          v443 = v14 + 2 * v15;
          v444 = v14 + v15;
          v445 = v483;
          v446.i64[0] = 0x7F007F007F007FLL;
          v446.i64[1] = 0x7F007F007F007FLL;
          do
          {
            v447 = 0;
            v448 = *v445;
            v449 = v445[16];
            v450 = v445[32];
            v451 = v445[48];
            v452 = v445[64];
            v453 = v445[80];
            v454 = 112;
            v455 = v17;
            v456 = v445[96];
            do
            {
              v457 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v449.i8, *&v332, 1), *v448.i8, *&v332, 0), *v450.i8, *&v332, 2), *v451.i8, *&v332, 3);
              v458 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v449, *&v332, 1), v448, *&v332, 0), v450, *&v332, 2), v451, *&v332, 3);
              v459 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v450.i8, *&v332, 1), *v449.i8, *&v332, 0), *v451.i8, *&v332, 2);
              v460 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v450, *&v332, 1), v449, *&v332, 0), v451, *&v332, 2);
              v461 = vmull_lane_s16(*v451.i8, *&v332, 1);
              v462 = vmull_high_lane_s16(v451, *&v332, 1);
              v463 = vmlal_lane_s16(vmull_lane_s16(*v452.i8, *&v332, 1), *v451.i8, *&v332, 0);
              v464 = vmlal_high_lane_s16(vmull_high_lane_s16(v452, *&v332, 1), v451, *&v332, 0);
              v451 = v445[v454];
              v465 = vmlal_laneq_s16(v457, *v452.i8, v332, 4);
              v466 = vmlal_high_laneq_s16(v458, v452, v332, 4);
              v467 = vmlal_lane_s16(v459, *v452.i8, *&v332, 3);
              v468 = vmlal_high_lane_s16(v460, v452, *&v332, 3);
              v469 = vmlal_lane_s16(vmlal_lane_s16(v461, *v450.i8, *&v332, 0), *v452.i8, *&v332, 2);
              v470 = vmlal_high_lane_s16(vmlal_high_lane_s16(v462, v450, *&v332, 0), v452, *&v332, 2);
              v448 = v452;
              v452 = v445[v454 + 16];
              v471 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v465, *v453.i8, v332, 5), *v456.i8, v332, 6), *v451.i8, v332, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v466, v453, v332, 5), v456, v332, 6), v451, v332, 7), 0xBuLL);
              v472 = vmlal_laneq_s16(v467, *v453.i8, v332, 4);
              v473 = vmlal_high_laneq_s16(v468, v453, v332, 4);
              v474 = vmlal_lane_s16(v469, *v453.i8, *&v332, 3);
              v475 = vmlal_high_lane_s16(v470, v453, *&v332, 3);
              v476 = vmlal_lane_s16(v463, *v453.i8, *&v332, 2);
              v477 = vmlal_high_lane_s16(v464, v453, *&v332, 2);
              v449 = v453;
              v453 = v445[v454 + 32];
              v478 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v472, *v456.i8, v332, 5), *v451.i8, v332, 6), *v452.i8, v332, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v473, v456, v332, 5), v451, v332, 6), v452, v332, 7), 0xBuLL);
              v479 = vmlal_laneq_s16(v474, *v456.i8, v332, 4);
              v480 = vmlal_high_laneq_s16(v475, v456, v332, 4);
              v481 = vmlal_lane_s16(v476, *v456.i8, *&v332, 3);
              v482 = vmlal_high_lane_s16(v477, v456, *&v332, 3);
              v450 = v456;
              v456 = v445[v454 + 48];
              *&v14[v447 / 4] = vqmovun_s16(vaddq_s16(v471, v446));
              *&v444[v447] = vqmovun_s16(vaddq_s16(v478, v446));
              *&v443[v447] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v479, *v451.i8, v332, 5), *v452.i8, v332, 6), *v453.i8, v332, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v480, v451, v332, 5), v452, v332, 6), v453, v332, 7), 0xBuLL), v446));
              *&v442[v447] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v481, *v451.i8, v332, 4), *v452.i8, v332, 5), *v453.i8, v332, 6), *v456.i8, v332, 7), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v482, v451, v332, 4), v452, v332, 5), v453, v332, 6), v456, v332, 7), 0xBuLL), v446));
              v454 += 64;
              v447 += 4 * v15;
              v455 -= 4;
            }

            while (v455);
            ++v445;
            v14 += 2;
            v442 += 8;
            v443 += 8;
            v444 += 8;
            LODWORD(v16) = v16 - 8;
          }

          while (v16);
        }

        else
        {
          v387 = v483[0];
          v388 = v484;
          v389 = v485;
          v390 = v486;
          v391 = v490;
          v392 = v487;
          v393 = v488;
          v394 = 2 * v15;
          v395.i64[0] = 0x7F007F007F007FLL;
          v395.i64[1] = 0x7F007F007F007FLL;
          v396 = v489;
          do
          {
            v397 = vmlal_lane_s16(vmull_lane_s16(v388, *&v332, 1), v387, *&v332, 0);
            v387 = v392;
            v398 = vmlal_lane_s16(vmull_lane_s16(v390, *&v332, 1), v389, *&v332, 0);
            v399 = vmlal_lane_s16(vmlal_lane_s16(v397, v389, *&v332, 2), v390, *&v332, 3);
            v400 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v389, *&v332, 1), v388, *&v332, 0), v390, *&v332, 2);
            v401 = vmlal_lane_s16(vmull_lane_s16(v392, *&v332, 1), v390, *&v332, 0);
            v390 = *v391;
            v402 = vmlal_laneq_s16(v399, v392, v332, 4);
            v403 = vmlal_lane_s16(v400, v392, *&v332, 3);
            v404 = vmlal_lane_s16(v398, v392, *&v332, 2);
            v392 = v391[32];
            v405 = vmlal_laneq_s16(v402, v393, v332, 5);
            v406 = vmlal_laneq_s16(v403, v393, v332, 4);
            v407 = vmlal_lane_s16(v404, v393, *&v332, 3);
            v408 = vmlal_lane_s16(v401, v393, *&v332, 2);
            v388 = v393;
            v393 = v391[64];
            v409 = vmlal_laneq_s16(v405, v396, v332, 6);
            v410 = vmlal_laneq_s16(v406, v396, v332, 5);
            v411 = vmlal_laneq_s16(v407, v396, v332, 4);
            v412 = vmlal_lane_s16(v408, v396, *&v332, 3);
            v389 = v396;
            v396 = v391[96];
            *v409.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(v409, *v391, v332, 7), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(v410, *v391, v332, 6), v392, v332, 7), 0xBuLL), v395));
            *v410.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v411, *v391, v332, 5), v392, v332, 6), v393, v332, 7), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v412, *v391, v332, 4), v392, v332, 5), v393, v332, 6), v396, v332, 7), 0xBuLL), v395));
            *v14 = v409.i32[0];
            *(v14 + v15) = v409.i32[1];
            *(v14 + v394) = v410.i32[0];
            *(v14 + v394 + v15) = v410.i32[1];
            v391 += 128;
            v14 += v15;
            LODWORD(v17) = v17 - 4;
          }

          while (v17);
        }
      }

      else
      {
        v333 = (v332 >> 32);
        if (v16 == 4)
        {
          v334 = v483[0];
          v335 = v484;
          v336 = v485;
          v337 = &v486;
          v338 = 2 * v15;
          v339.i64[0] = 0x7F007F007F007FLL;
          v339.i64[1] = 0x7F007F007F007FLL;
          do
          {
            v340 = vmlal_lane_s16(vmull_lane_s16(v335, v333, 1), v334, v333, 0);
            v334 = v337[32];
            v341 = vmlal_lane_s16(vmull_lane_s16(v336, v333, 1), v335, v333, 0);
            v335 = v337[64];
            v342 = vmlal_lane_s16(v340, v336, v333, 2);
            v343 = vmlal_lane_s16(vmull_lane_s16(*v337, v333, 1), v336, v333, 0);
            v336 = v337[96];
            v344 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(v342, *v337, v333, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(v341, *v337, v333, 2), v334, v333, 3), 0xBuLL), v339));
            v345 = vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v343, v334, v333, 2), v335, v333, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v334, v333, 1), *v337, v333, 0), v335, v333, 2), v336, v333, 3), 0xBuLL), v339);
            *v14 = v344.i32[0];
            *(v14 + v15) = v344.i32[1];
            v346 = vqmovun_s16(v345);
            *(v14 + v338) = v346.i32[0];
            v347 = (v14 + v338 + v15);
            v337 += 128;
            v14 += v15;
            *v347 = v346.i32[1];
            LODWORD(v17) = v17 - 4;
          }

          while (v17);
        }

        else
        {
          v368 = v14 + 3 * v15;
          v369 = v14 + 2 * v15;
          v370 = v14 + v15;
          v371 = v483;
          v372.i64[0] = 0x7F007F007F007FLL;
          v372.i64[1] = 0x7F007F007F007FLL;
          do
          {
            v373 = 0;
            v374 = *v371;
            v375 = v371[16];
            v376 = 48;
            v377 = v17;
            v378 = v371[32];
            do
            {
              v379 = v371[v376];
              v380 = vmlal_lane_s16(vmull_lane_s16(*v375.i8, v333, 1), *v374.i8, v333, 0);
              v381 = vmlal_high_lane_s16(vmull_high_lane_s16(v375, v333, 1), v374, v333, 0);
              v374 = v371[v376 + 16];
              v382 = vmlal_lane_s16(vmull_lane_s16(*v378.i8, v333, 1), *v375.i8, v333, 0);
              v383 = vmlal_high_lane_s16(vmull_high_lane_s16(v378, v333, 1), v375, v333, 0);
              v375 = v371[v376 + 32];
              v384 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v380, *v378.i8, v333, 2), *v379.i8, v333, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v381, v378, v333, 2), v379, v333, 3), 0xBuLL);
              v385 = vmlal_lane_s16(vmull_lane_s16(*v379.i8, v333, 1), *v378.i8, v333, 0);
              v386 = vmlal_high_lane_s16(vmull_high_lane_s16(v379, v333, 1), v378, v333, 0);
              v378 = v371[v376 + 48];
              *&v14[v373 / 4] = vqmovun_s16(vaddq_s16(v384, v372));
              *&v370[v373] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v382, *v379.i8, v333, 2), *v374.i8, v333, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v383, v379, v333, 2), v374, v333, 3), 0xBuLL), v372));
              *&v369[v373] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v385, *v374.i8, v333, 2), *v375.i8, v333, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v386, v374, v333, 2), v375, v333, 3), 0xBuLL), v372));
              *&v368[v373] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v374.i8, v333, 1), *v379.i8, v333, 0), *v375.i8, v333, 2), *v378.i8, v333, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v374, v333, 1), v379, v333, 0), v375, v333, 2), v378, v333, 3), 0xBuLL), v372));
              v376 += 64;
              v373 += 4 * v15;
              v377 -= 4;
            }

            while (v377);
            ++v371;
            v14 += 2;
            v368 += 8;
            v369 += 8;
            v370 += 8;
            LODWORD(v16) = v16 - 8;
          }

          while (v16);
        }
      }
    }

    else
    {
      v31 = *v24;
      v32 = *(v24 + 8);
      v33 = 4 * v13;
      v34 = v13;
      v35 = *v21;
      v36 = *(v21 + 8);
      v37 = 3 * v13 - v28 - v29 + result + 12;
      v38 = 2 * v13 - v28 - v29 + result + 12;
      v39 = v13 - v28 - v29 + result + 12;
      v40 = result - v28 - v29 + 12;
      v41 = v483;
      result = 16388;
      do
      {
        v42 = 0;
        v43 = *(v30 + v34);
        v44 = (v30 + v34 + v34);
        v45 = *(v44 + v34);
        v46 = vtrn1_s8(*v30, v43);
        v47 = vtrn2_s8(*v30, v43);
        v48 = vtrn1_s8(*v44, v45);
        v49 = vtrn2_s8(*v44, v45);
        v50 = vmovl_u8(vtrn1_s16(v46, v48));
        v51 = vmovl_u8(vtrn1_s16(v47, v49));
        v52 = vmovl_u8(vtrn2_s16(v46, v48));
        v53 = vmovl_u8(vtrn2_s16(v47, v49));
        v54 = vextq_s8(v50, v50, 8uLL).u64[0];
        v55 = vextq_s8(v51, v51, 8uLL).u64[0];
        v56 = vextq_s8(v52, v52, 8uLL).u64[0];
        v57 = v30[1];
        v58 = vextq_s8(v53, v53, 8uLL).u64[0];
        v59 = (&v30[1] + v34);
        v60 = *v59;
        v61 = (v59 + v34);
        v62 = *(v61 + v34);
        v63 = vtrn1_s8(v57, v60);
        v64 = vtrn2_s8(v57, v60);
        v65 = vtrn1_s8(*v61, v62);
        v66 = vzip1_s16(v63, v65);
        v67 = vtrn2_s16(v63, v65);
        v68 = vmovl_u8(v66).u64[0];
        v69 = vmovl_u8(vzip1_s16(v64, vtrn2_s8(*v61, v62))).u64[0];
        v70 = vmovl_u8(v67).u64[0];
        v71 = v41;
        do
        {
          v72 = *(v40 + v42);
          v73 = *(v39 + v42);
          v74 = *(v38 + v42);
          v75 = *(v37 + v42);
          v76 = vdupq_n_s32(0x4004u);
          v77 = vmlal_lane_s16(v76, *v50.i8, *v31.i8, 0);
          *v50.i8 = v54;
          v78 = vtrn1_s8(v72, v73);
          v79 = vtrn2_s8(v72, v73);
          v80 = vmlal_lane_s16(v77, *v51.i8, *v31.i8, 1);
          v81 = vmlal_lane_s16(v76, *v51.i8, *v31.i8, 0);
          *v51.i8 = v55;
          v82 = vmlal_lane_s16(v80, *v52.i8, *v31.i8, 2);
          v83 = vmlal_lane_s16(v81, *v52.i8, *v31.i8, 1);
          v84 = vmlal_lane_s16(v76, *v52.i8, *v31.i8, 0);
          v85 = vtrn1_s8(v74, v75);
          *v52.i8 = v56;
          v86 = vtrn2_s8(v74, v75);
          v87 = vmlal_lane_s16(v82, *v53.i8, *v31.i8, 3);
          v88 = vmlal_lane_s16(v83, *v53.i8, *v31.i8, 2);
          v89 = vmlal_lane_s16(v84, *v53.i8, *v31.i8, 1);
          v90 = vmlal_lane_s16(v76, *v53.i8, *v31.i8, 0);
          *v53.i8 = v58;
          v91 = vmlal_laneq_s16(v87, v54, v31, 4);
          v92 = vmlal_lane_s16(v88, v54, *v31.i8, 3);
          v93 = vmlal_lane_s16(v89, v54, *v31.i8, 2);
          v94 = vmlal_lane_s16(v90, v54, *v31.i8, 1);
          v54 = v68;
          v95 = vmlal_laneq_s16(v91, v55, v31, 5);
          v96 = vmlal_laneq_s16(v92, v55, v31, 4);
          v97 = vmlal_lane_s16(v93, v55, *v31.i8, 3);
          v98 = vmlal_lane_s16(v94, v55, *v31.i8, 2);
          v55 = v69;
          v99 = vzip1_s16(v79, v86);
          v100 = vtrn2_s16(v79, v86);
          v68 = vmovl_u8(v99).u64[0];
          v69 = vmovl_u8(vtrn2_s16(v78, v85)).u64[0];
          v56 = v70;
          v58 = vmovl_u8(vzip1_s16(v78, v85)).u64[0];
          v70 = vmovl_u8(v100).u64[0];
          *v95.i8 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(v95, *v52.i8, v31, 6), *v53.i8, v31, 7), v54, v32, 0), v55, v32, 1), v56, v32, 2), v58, v32, 3), 3uLL);
          *v96.i8 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v96, *v52.i8, v31, 5), *v53.i8, v31, 6), v54, v31, 7), v55, v32, 0), v56, v32, 1), v58, v32, 2), v68, v32, 3), 3uLL);
          v101 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v97, *v52.i8, v31, 4), *v53.i8, v31, 5), v54, v31, 6), v55, v31, 7), v56, v32, 0), v58, v32, 1), v68, v32, 2), v69, v32, 3), 3uLL);
          *v98.i8 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v98, *v52.i8, *v31.i8, 3), *v53.i8, v31, 4), v54, v31, 5), v55, v31, 6), v56, v31, 7), v58, v32, 0), v68, v32, 1), v69, v32, 2), v70, v32, 3), 3uLL);
          v102 = vtrn1_s16(*v95.i8, *v96.i8);
          *v95.i8 = vtrn2_s16(*v95.i8, *v96.i8);
          *v96.i8 = vtrn1_s16(v101, *v98.i8);
          *v98.i8 = vtrn2_s16(v101, *v98.i8);
          *v71 = vzip1_s32(v102, *v96.i8);
          v71[32] = vzip1_s32(*v95.i8, *v98.i8);
          v71[64] = vzip2_s32(v102, *v96.i8);
          v71[96] = vzip2_s32(*v95.i8, *v98.i8);
          ++v71;
          v42 += 4;
        }

        while (v16 != v42);
        v30 = (v30 + v33);
        v41 += 128;
        v103 = v27 - 4;
        v37 += v33;
        v38 += v33;
        v39 += v33;
        v40 += v33;
        v104 = v27 <= 8;
        v27 -= 4;
      }

      while (!v104);
      v105 = vdupq_n_s32(0x4004u);
      do
      {
        v106 = v16;
        v107 = v41;
        v108 = v30;
        do
        {
          v109 = *v108->i8;
          v108 = (v108 + 4);
          v110 = vmovl_u8(*v109.i8);
          v111 = vmovl_high_u8(v109);
          *v107++ = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v105, *v110.i8, *v31.i8, 0), *&vextq_s8(v110, v110, 2uLL), *v31.i8, 1), *&vextq_s8(v110, v110, 4uLL), *v31.i8, 2), *&vextq_s8(v110, v110, 6uLL), *v31.i8, 3), v110, v31, 4), *&vextq_s8(v110, v111, 0xAuLL), v31, 5), *&vextq_s8(v110, v111, 0xCuLL), v31, 6), *&vextq_s8(v110, v111, 0xEuLL), v31, 7), *v111.i8, v32, 0), *&vextq_s8(v111, v111, 2uLL), v32, 1), *&vextq_s8(v111, v111, 4uLL), v32, 2), *&vextq_s8(v111, v111, 6uLL), v32, 3), 3uLL);
          v106 -= 4;
        }

        while (v106);
        v30 = (v30 + v34);
        v41 += 32;
        --v103;
      }

      while (v103);
      if (v16 >= 5)
      {
        v151 = v14 + 3 * v15;
        v152 = v14 + 2 * v15;
        v153 = v14 + v15;
        v154 = v483;
        v155.i64[0] = 0x7F007F007F007FLL;
        v155.i64[1] = 0x7F007F007F007FLL;
        do
        {
          v156 = 0;
          v157 = *v154;
          v158 = v154[16];
          v159 = v154[32];
          v160 = v154[48];
          v161 = v154[64];
          v162 = v154[80];
          v163 = v154[96];
          v164 = v154[112];
          v165 = v154[128];
          v166 = v154[144];
          v167 = 176;
          v168 = v17;
          v169 = v154[160];
          do
          {
            v170 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v159.i8, *v35.i8, 1), *v158.i8, *v35.i8, 0), *v160.i8, *v35.i8, 2), *v161.i8, *v35.i8, 3), *v162.i8, v35, 4), *v163.i8, v35, 5), *v164.i8, v35, 6);
            v171 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v160.i8, *v35.i8, 1), *v159.i8, *v35.i8, 0), *v161.i8, *v35.i8, 2), *v162.i8, *v35.i8, 3), *v163.i8, v35, 4), *v164.i8, v35, 5);
            v172 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v159, *v35.i8, 1), v158, *v35.i8, 0), v160, *v35.i8, 2), v161, *v35.i8, 3), v162, v35, 4), v163, v35, 5), v164, v35, 6);
            v173 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v160, *v35.i8, 1), v159, *v35.i8, 0), v161, *v35.i8, 2), v162, *v35.i8, 3), v163, v35, 4), v164, v35, 5);
            v174 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v158.i8, *v35.i8, 1), *v157.i8, *v35.i8, 0), *v159.i8, *v35.i8, 2), *v160.i8, *v35.i8, 3), *v161.i8, v35, 4), *v162.i8, v35, 5), *v163.i8, v35, 6), *v164.i8, v35, 7);
            v175 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v161.i8, *v35.i8, 1), *v160.i8, *v35.i8, 0), *v162.i8, *v35.i8, 2), *v163.i8, *v35.i8, 3), *v164.i8, v35, 4);
            v176 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v158, *v35.i8, 1), v157, *v35.i8, 0), v159, *v35.i8, 2), v160, *v35.i8, 3), v161, v35, 4), v162, v35, 5), v163, v35, 6), v164, v35, 7);
            v177 = vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v161, *v35.i8, 1), v160, *v35.i8, 0), v162, *v35.i8, 2), v163, *v35.i8, 3), v164, v35, 4);
            v160 = v164;
            v164 = v154[v167];
            v178 = vmlal_lane_s16(v174, *v165.i8, v36, 0);
            v179 = vmlal_laneq_s16(v170, *v165.i8, v35, 7);
            v180 = vmlal_high_laneq_s16(v172, v165, v35, 7);
            v181 = vmlal_laneq_s16(v171, *v165.i8, v35, 6);
            v182 = vmlal_high_laneq_s16(v173, v165, v35, 6);
            v183 = vmlal_high_lane_s16(v176, v165, v36, 0);
            v184 = vmlal_laneq_s16(v175, *v165.i8, v35, 5);
            v185 = vmlal_high_laneq_s16(v177, v165, v35, 5);
            v157 = v161;
            v161 = v165;
            v165 = v154[v167 + 16];
            v186 = vmlal_lane_s16(v178, *v166.i8, v36, 1);
            v187 = vmlal_lane_s16(v179, *v166.i8, v36, 0);
            v188 = vmlal_high_lane_s16(v180, v166, v36, 0);
            v189 = vmlal_laneq_s16(v181, *v166.i8, v35, 7);
            v190 = vmlal_high_laneq_s16(v182, v166, v35, 7);
            v191 = vmlal_laneq_s16(v184, *v166.i8, v35, 6);
            v192 = vmlal_high_lane_s16(v183, v166, v36, 1);
            v193 = vmlal_high_laneq_s16(v185, v166, v35, 6);
            v158 = v162;
            v162 = v166;
            v166 = v154[v167 + 32];
            v194 = vmlal_lane_s16(v189, *v169.i8, v36, 0);
            v195 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v186, *v169.i8, v36, 2), *v164.i8, v36, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v192, v169, v36, 2), v164, v36, 3), 0xBuLL);
            v196 = vmlal_high_lane_s16(v190, v169, v36, 0);
            v197 = vmlal_laneq_s16(v191, *v169.i8, v35, 7);
            v198 = vmlal_high_laneq_s16(v193, v169, v35, 7);
            v159 = v163;
            v163 = v169;
            v199 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v187, *v169.i8, v36, 1), *v164.i8, v36, 2), *v165.i8, v36, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v188, v169, v36, 1), v164, v36, 2), v165, v36, 3), 0xBuLL);
            v169 = v154[v167 + 48];
            *&v14[v156 / 4] = vqmovun_s16(vaddq_s16(v195, v155));
            *&v153[v156] = vqmovun_s16(vaddq_s16(v199, v155));
            *&v152[v156] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v194, *v164.i8, v36, 1), *v165.i8, v36, 2), *v166.i8, v36, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v196, v164, v36, 1), v165, v36, 2), v166, v36, 3), 0xBuLL), v155));
            v167 += 64;
            *&v151[v156] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v197, *v164.i8, v36, 0), *v165.i8, v36, 1), *v166.i8, v36, 2), *v169.i8, v36, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v198, v164, v36, 0), v165, v36, 1), v166, v36, 2), v169, v36, 3), 0xBuLL), v155));
            v156 += 4 * v15;
            v168 -= 4;
          }

          while (v168);
          ++v154;
          v14 += 2;
          v151 += 8;
          v152 += 8;
          v153 += 8;
          LODWORD(v16) = v16 - 8;
        }

        while (v16);
      }

      else
      {
        v112 = v483[0];
        v113 = v484;
        v114 = v485;
        v115 = v486;
        v116 = v487;
        v117 = v488;
        v118 = v491;
        v119 = v489;
        v120 = v490[0];
        v121 = v490[32];
        v122 = v490[64];
        v123 = 2 * v15;
        v124.i64[0] = 0x7F007F007F007FLL;
        v124.i64[1] = 0x7F007F007F007FLL;
        v125 = v490[96];
        do
        {
          v126 = vmlal_lane_s16(vmull_lane_s16(v113, *v35.i8, 1), v112, *v35.i8, 0);
          v112 = v116;
          v127 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v114, *v35.i8, 1), v113, *v35.i8, 0), v115, *v35.i8, 2), v116, *v35.i8, 3), v117, v35, 4), v119, v35, 5);
          v128 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v126, v114, *v35.i8, 2), v115, *v35.i8, 3), v116, v35, 4), v117, v35, 5), v119, v35, 6);
          v129 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v115, *v35.i8, 1), v114, *v35.i8, 0), v116, *v35.i8, 2), v117, *v35.i8, 3), v119, v35, 4);
          v130 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v116, *v35.i8, 1), v115, *v35.i8, 0), v117, *v35.i8, 2), v119, *v35.i8, 3);
          v114 = v119;
          v113 = v117;
          v119 = v125;
          v117 = v122;
          v116 = v121;
          v121 = v118[32];
          v122 = v118[64];
          v125 = v118[96];
          v131 = vmlal_laneq_s16(v128, v120, v35, 7);
          v132 = vmlal_laneq_s16(v127, v120, v35, 6);
          v133 = vmlal_laneq_s16(v129, v120, v35, 5);
          v134 = vmlal_laneq_s16(v130, v120, v35, 4);
          v115 = v120;
          v120 = *v118;
          *v131.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v131, v116, v36, 0), v117, v36, 1), v119, v36, 2), *v118, v36, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(v132, v116, v35, 7), v117, v36, 0), v119, v36, 1), *v118, v36, 2), v121, v36, 3), 0xBuLL), v124));
          *v132.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(v133, v116, v35, 6), v117, v35, 7), v119, v36, 0), *v118, v36, 1), v121, v36, 2), v122, v36, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v134, v116, v35, 5), v117, v35, 6), v119, v35, 7), *v118, v36, 0), v121, v36, 1), v122, v36, 2), v125, v36, 3), 0xBuLL), v124));
          *v14 = v131.i32[0];
          *(v14 + v15) = v131.i32[1];
          *(v14 + v123) = v132.i32[0];
          *(v14 + v123 + v15) = v132.i32[1];
          v118 += 128;
          v14 += v15;
          LODWORD(v17) = v17 - 4;
        }

        while (v17);
      }
    }
  }

  return result;
}

uint64_t av1_convolve_x_sr_intrabc_neon(uint64_t result, int a2, uint8x8_t *a3, int a4, int a5, int a6)
{
  if (a5 > 4)
  {
    if (a5 == 8)
    {
      do
      {
        v10 = vrhadd_u8(*(result + a2), *(result + a2 + 1));
        *a3 = vrhadd_u8(*result, *(result + 1));
        *(a3 + a4) = v10;
        result += 2 * a2;
        a3 = (a3 + 2 * a4);
        a6 -= 2;
      }

      while (a6);
    }

    else
    {
      do
      {
        v11 = 0;
        do
        {
          *a3[v11 / 8].i8 = vrhaddq_u8(*(result + v11), *(result + v11 + 1));
          v11 += 16;
        }

        while (a5 != v11);
        result += a2;
        a3 = (a3 + a4);
        --a6;
      }

      while (a6);
    }
  }

  else
  {
    v6 = 2 * a2;
    v7 = 2 * a4;
    if (a5 == 2)
    {
      do
      {
        v8 = vrhadd_u8(*(result + a2), *(result + a2 + 1)).u16[0];
        a3->i16[0] = vrhadd_u8(*result, *(result + 1)).u16[0];
        *(a3->i16 + a4) = v8;
        result += v6;
        a3 = (a3 + v7);
        a6 -= 2;
      }

      while (a6);
    }

    else
    {
      do
      {
        v9 = vrhadd_u8(*(result + a2), *(result + a2 + 1)).u32[0];
        a3->i32[0] = vrhadd_u8(*result, *(result + 1)).u32[0];
        *(a3->i32 + a4) = v9;
        result += v6;
        a3 = (a3 + v7);
        a6 -= 2;
      }

      while (a6);
    }
  }

  return result;
}

uint8x8_t *av1_convolve_y_sr_intrabc_neon(uint8x8_t *result, int a2, uint8x16_t *a3, int a4, int a5, int a6, double a7, uint8x8_t a8, uint8x8_t a9)
{
  if (a5 > 4)
  {
    if (a5 == 8)
    {
      do
      {
        v15 = *result;
        v16 = *(result + a2);
        result = (result + 2 * a2);
        v17 = vrhadd_u8(v15, v16);
        v18 = vrhadd_u8(v16, *result);
        *a3->i8 = v17;
        *&a3->i8[a4] = v18;
        a3 = (a3 + 2 * a4);
        a6 -= 2;
      }

      while (a6);
    }

    else
    {
      v19 = result + a2;
      do
      {
        v20 = 0;
        v21 = a6;
        v22 = a3;
        do
        {
          *v22 = vrhaddq_u8(*&result->i8[v20], *&v19[v20]);
          v22 = (v22 + a4);
          v20 += a2;
          --v21;
        }

        while (v21);
        result += 2;
        ++a3;
        v19 += 16;
        a5 -= 16;
      }

      while (a5);
    }
  }

  else
  {
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = result;
    if (a5 == 2)
    {
      do
      {
        v12 = v11->i32[0];
        v11 = (v11 + v9);
        a8.i32[0] = *(result->i32 + a2);
        a9.i32[0] = v11->i32[0];
        LOWORD(v12) = vrhadd_u8(v12, a8).u16[0];
        a8 = vrhadd_u8(a8, a9);
        a3->i16[0] = v12;
        *(a3->i16 + a4) = a8.i16[0];
        a3 = (a3 + v10);
        result = v11;
        a6 -= 2;
      }

      while (a6);
    }

    else
    {
      do
      {
        v13 = v11->i32[0];
        v11 = (v11 + v9);
        a8.i32[0] = *(result->i32 + a2);
        a9.i32[0] = v11->i32[0];
        v14 = vrhadd_u8(v13, a8).u32[0];
        a8 = vrhadd_u8(a8, a9);
        a3->i32[0] = v14;
        *(a3->i32 + a4) = a8.i32[0];
        a3 = (a3 + v10);
        result = v11;
        a6 -= 2;
      }

      while (a6);
    }
  }

  return result;
}

uint64_t av1_convolve_2d_sr_intrabc_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v29[4448] = *MEMORY[0x277D85DE8];
  v10 = v8 + 1;
  if (v7 >= 5)
  {
    v14 = v29;
    do
    {
      v15 = 0;
      v16 = v14;
      do
      {
        v13 = vaddl_u8(*(result + v15 + 1), *(result + v15));
        *v16++ = v13;
        v15 += 8;
      }

      while (v7 != v15);
      result += v4;
      v14 = (v14 + 2 * v7);
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = (result + 1);
    v12 = v29;
    do
    {
      v13 = vaddl_u8(*v11, *(v11 - 1));
      *v12 = v13.i64[0];
      v12 = (v12 + 2 * v7);
      v11 = (v11 + v4);
      --v10;
    }

    while (v10);
  }

  if (v7 >= 5)
  {
    v22 = 2 * v7;
    v23 = v29;
    do
    {
      v24 = *v23;
      v25 = v22;
      v26 = v5;
      v27 = v8;
      do
      {
        v28 = *(v23 + v25);
        *v26 = vqrshrn_n_u16(vaddq_s16(v28, v24), 2uLL);
        v26 = (v26 + v6);
        v25 += v22;
        v24 = v28;
        --v27;
      }

      while (v27);
      ++v23;
      ++v5;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v13.i64[0] = v29[0];
    v17 = 2 * v6;
    v18 = 4 * v7;
    v19 = v29;
    if (v7 == 2)
    {
      do
      {
        v9.i64[0] = *(v19 + 4);
        v19 = (v19 + v18);
        *v13.i8 = vadd_s16(*v9.i8, *v13.i8);
        v20 = *v19;
        *v9.i8 = vadd_s16(*v19, *v9.i8);
        v5->i16[0] = vqrshrn_n_u16(v13, 2uLL).u16[0];
        *(v5->i16 + v6) = vqrshrn_n_u16(v9, 2uLL).u16[0];
        v5 = (v5 + v17);
        *v13.i8 = v20;
        v8 -= 2;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9.i64[0] = *(v19 + 2 * v7);
        v19 = (v19 + v18);
        *v13.i8 = vadd_s16(*v9.i8, *v13.i8);
        v21 = *v19;
        *v9.i8 = vadd_s16(*v19, *v9.i8);
        v5->i32[0] = vqrshrn_n_u16(v13, 2uLL).u32[0];
        *(v5->i32 + v6) = vqrshrn_n_u16(v9, 2uLL).u32[0];
        v5 = (v5 + v17);
        *v13.i8 = v21;
        v8 -= 2;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t av1_print_frame_contexts(unsigned __int16 *a1, char *__filename)
{
  v3 = fopen(__filename, "w");
  v4 = 10622;
  do
  {
    v5 = *a1++;
    fprintf(v3, "%d ", v5);
    --v4;
  }

  while (v4);

  return fclose(v3);
}

uint64_t av1_check_trailing_bits(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 16) & 7;
  v6 = v5 ^ 7;
  v7 = (*a2 + (v4 >> 3));
  if (v7 >= *(a2 + 8))
  {
    v10 = *(a2 + 32);
    if (v10)
    {
      v10(*(a2 + 24));
    }

    v9 = 0;
    if (v5 == 7)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v8 = (*v7 >> (~v4 & 7)) & 1;
    *(a2 + 16) = v4 + 1;
    v9 = v8 << v6;
    if (v5 == 7)
    {
      goto LABEL_49;
    }
  }

  v11 = 6 - v5;
  v12 = *(a2 + 16);
  v13 = (*a2 + (v12 >> 3));
  if (v13 >= *(a2 + 8))
  {
    v15 = *(a2 + 32);
    if (v15)
    {
      v15(*(a2 + 24));
    }

    if (v6 < 2)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v14 = (*v13 >> (~v12 & 7)) & 1;
    *(a2 + 16) = v12 + 1;
    v9 |= v14 << v11;
    if (v6 < 2)
    {
      goto LABEL_49;
    }
  }

  v16 = 5 - v5;
  v17 = *(a2 + 16);
  v18 = (*a2 + (v17 >> 3));
  if (v18 >= *(a2 + 8))
  {
    v20 = *(a2 + 32);
    if (v20)
    {
      v20(*(a2 + 24));
    }

    if (v11 < 2)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v19 = (*v18 >> (~v17 & 7)) & 1;
    *(a2 + 16) = v17 + 1;
    v9 |= v19 << v16;
    if (v11 < 2)
    {
      goto LABEL_49;
    }
  }

  v21 = 4 - v5;
  v22 = *(a2 + 16);
  v23 = (*a2 + (v22 >> 3));
  if (v23 < *(a2 + 8))
  {
    v24 = (*v23 >> (~v22 & 7)) & 1;
    *(a2 + 16) = v22 + 1;
    v9 |= v24 << v21;
    if (v16 < 2)
    {
      goto LABEL_49;
    }

    goto LABEL_25;
  }

  v25 = *(a2 + 32);
  if (v25)
  {
    v25(*(a2 + 24));
  }

  if (v16 >= 2)
  {
LABEL_25:
    v26 = 3 - v5;
    v27 = *(a2 + 16);
    v28 = (*a2 + (v27 >> 3));
    if (v28 >= *(a2 + 8))
    {
      v30 = *(a2 + 32);
      if (v30)
      {
        v30(*(a2 + 24));
      }

      v29 = 0;
    }

    else
    {
      v29 = (*v28 >> (~v27 & 7)) & 1;
      *(a2 + 16) = v27 + 1;
    }

    v9 |= v29 << v26;
    if (v21 >= 2)
    {
      v31 = 2 - v5;
      v32 = *(a2 + 16);
      v33 = (*a2 + (v32 >> 3));
      if (v33 >= *(a2 + 8))
      {
        v35 = *(a2 + 32);
        if (v35)
        {
          v35(*(a2 + 24));
        }

        v34 = 0;
      }

      else
      {
        v34 = (*v33 >> (~v32 & 7)) & 1;
        *(a2 + 16) = v32 + 1;
      }

      v9 |= v34 << v31;
      if (v26 >= 2)
      {
        v36 = *(a2 + 16);
        v37 = (*a2 + (v36 >> 3));
        if (v37 >= *(a2 + 8))
        {
          v39 = *(a2 + 32);
          if (v39)
          {
            v39(*(a2 + 24));
          }

          v38 = 0;
        }

        else
        {
          v38 = (*v37 >> (~v36 & 7)) & 1;
          *(a2 + 16) = v36 + 1;
        }

        v9 |= v38 << (1 - v5);
        if (v31 >= 2)
        {
          v40 = *(a2 + 16);
          v41 = (*a2 + (v40 >> 3));
          if (v41 >= *(a2 + 8))
          {
            v43 = *(a2 + 32);
            if (v43)
            {
              v43(*(a2 + 24));
            }

            v42 = 0;
          }

          else
          {
            v42 = (*v41 >> (~v40 & 7)) & 1;
            *(a2 + 16) = v40 + 1;
          }

          v9 |= v42 << -v5;
        }
      }
    }
  }

LABEL_49:
  if (v9 == 1 << (v5 ^ 7))
  {
    return 0;
  }

  *(a1 + 390868) = 7;
  return 0xFFFFFFFFLL;
}

double av1_dec_row_mt_dealloc(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (a1[4] < 1)
      {
        goto LABEL_7;
      }

      v3 = 0;
      v4 = 0;
      do
      {
        pthread_mutex_destroy((*a1 + v3));
        ++v4;
        v3 += 64;
      }

      while (v4 < a1[4]);
      v2 = *a1;
      if (*a1)
      {
LABEL_7:
        free(*(v2 - 8));
      }
    }

    v5 = *(a1 + 1);
    if (v5)
    {
      if (a1[4] < 1)
      {
        goto LABEL_13;
      }

      v6 = 0;
      v7 = 0;
      do
      {
        pthread_cond_destroy((*(a1 + 1) + v6));
        ++v7;
        v6 += 48;
      }

      while (v7 < a1[4]);
      v5 = *(a1 + 1);
      if (v5)
      {
LABEL_13:
        free(*(v5 - 8));
      }
    }

    v8 = *(a1 + 3);
    if (v8)
    {
      free(*(v8 - 8));
    }

    result = 0.0;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

void av1_free_mc_tmp_buf(uint64_t a1)
{
  v1 = a1 + 253952;
  v2 = *(a1 + 256900);
  v3 = *(a1 + 256872);
  if (v2)
  {
    v3 *= 2;
  }

  if (v3)
  {
    free(*(v3 - 8));
    v2 = *(v1 + 2948);
  }

  *(v1 + 2920) = 0;
  if (v2)
  {
    v4 = 2 * *(v1 + 2928);
  }

  else
  {
    v4 = *(v1 + 2928);
  }

  if (v4)
  {
    free(*(v4 - 8));
  }

  *(v1 + 2928) = 0;
  *(v1 + 2944) = 0;
  v5 = *(v1 + 2952);
  if (v5)
  {
    free(*(v5 - 8));
  }

  *(v1 + 2952) = 0;
  v6 = *(v1 + 2936);
  if (v6)
  {
    free(*(v6 - 8));
  }

  *(v1 + 2936) = 0;
  v7 = *(v1 + 2960);
  if (v7)
  {
    free(*(v7 - 8));
  }

  *(v1 + 2960) = 0;
  v8 = *(v1 + 2968);
  if (v8)
  {
    free(*(v8 - 8));
  }

  *(v1 + 2968) = 0;
}

uint64_t *av1_read_color_config(uint64_t *result, int a2, uint64_t a3, jmp_buf a4)
{
  v7 = result;
  v8 = *(result + 4);
  v9 = *result;
  v10 = result[1];
  v11 = (*result + (v8 >> 3));
  if (v11 >= v10)
  {
    v21 = result[4];
    if (v21)
    {
      result = v21(result[3]);
    }

    v16 = 0;
    LOBYTE(v14) = *(a3 + 69);
  }

  else
  {
    v12 = *v11;
    v13 = v8 + 1;
    *(result + 4) = v8 + 1;
    v14 = *(a3 + 69);
    v15 = (1 << (~v8 & 7)) & v12;
    v16 = v15 != 0;
    if (v14 == 2 && v15 != 0)
    {
      v18 = (v9 + (v13 >> 3));
      if (v18 >= v10)
      {
        v23 = result[4];
        if (v23)
        {
          v23(result[3]);
        }
      }

      else
      {
        v19 = *v18;
        *(result + 4) = v8 + 2;
        if ((v19 >> (~v13 & 7)))
        {
          v20 = 12;
LABEL_23:
          *(a3 + 72) = v20;
          goto LABEL_24;
        }
      }

      v20 = 10;
      goto LABEL_23;
    }
  }

  if (v14 <= 2)
  {
    if (v16)
    {
      v20 = 10;
    }

    else
    {
      v20 = 8;
    }

    *(a3 + 72) = v20;
    if (v20 >= 9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_25;
  }

  result = aom_internal_error(a4, 5, "Unsupported profile/bit-depth combination");
  v20 = *(a3 + 72);
  if (v20 < 9)
  {
    goto LABEL_19;
  }

LABEL_24:
  result = aom_internal_error(a4, 5, "Bit-depth %d not supported", v20);
  v22 = *(a3 + 72) > 8u;
LABEL_25:
  if (!a2)
  {
    v22 = 1;
  }

  *(a3 + 76) = v22;
  v24 = *(v7 + 16);
  v25 = *v7;
  v26 = *(v7 + 8);
  if (*(a3 + 69) == 1)
  {
LABEL_28:
    v27 = 0;
    *(a3 + 77) = 0;
    v28 = (v25 + (v24 >> 3));
    if (v28 < v26)
    {
      goto LABEL_29;
    }

LABEL_35:
    v37 = *(v7 + 32);
    if (v37)
    {
      result = v37(*(v7 + 24));
    }

LABEL_37:
    *(a3 + 80) = 0x200000002;
    v38 = 2;
    *(a3 + 88) = 2;
    if (!v27)
    {
      goto LABEL_138;
    }

    goto LABEL_38;
  }

  v36 = (v25 + (v24 >> 3));
  if (v36 >= v26)
  {
    v44 = *(v7 + 32);
    if (!v44)
    {
      goto LABEL_28;
    }

    result = v44(*(v7 + 24));
    v27 = 0;
    LODWORD(v24) = *(v7 + 16);
    v25 = *v7;
    v26 = *(v7 + 8);
    *(a3 + 77) = 0;
    v28 = (v25 + (v24 >> 3));
    if (v28 >= v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v27 = (*v36 >> (~v24 & 7)) & 1;
    LODWORD(v24) = v24 + 1;
    *(v7 + 16) = v24;
    *(a3 + 77) = v27;
    v28 = (v25 + (v24 >> 3));
    if (v28 >= v26)
    {
      goto LABEL_35;
    }
  }

LABEL_29:
  v29 = *v28;
  v30 = v24 + 1;
  *(v7 + 16) = v24 + 1;
  if (((v29 >> (~v24 & 7)) & 1) == 0)
  {
    goto LABEL_37;
  }

  v31 = (v25 + (v30 >> 3));
  if (v31 >= v26)
  {
    v45 = *(v7 + 32);
    if (v45)
    {
      result = v45(*(v7 + 24));
      v33 = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
      v34 = (*v7 + (v30 >> 3));
      if (v34 < v26)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v33 = 0;
      v34 = (v25 + (v30 >> 3));
      if (v34 < v26)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v32 = *v31 >> (~v30 & 7);
    v30 = v24 + 2;
    *(v7 + 16) = v24 + 2;
    v33 = (v32 & 1) << 7;
    v34 = (v25 + ((v24 + 2) >> 3));
    if (v34 < v26)
    {
LABEL_32:
      v35 = *v34 >> (~v30++ & 7);
      *(v7 + 16) = v30;
      LODWORD(v34) = (v35 & 1) << 6;
      goto LABEL_51;
    }
  }

  v34 = *(v7 + 32);
  if (v34)
  {
    result = v34(*(v7 + 24));
    LODWORD(v34) = 0;
    v30 = *(v7 + 16);
    v25 = *v7;
    v26 = *(v7 + 8);
  }

LABEL_51:
  v46 = v34 | v33;
  v47 = (v25 + (v30 >> 3));
  if (v47 >= v26)
  {
    v47 = *(v7 + 32);
    if (v47)
    {
      result = v47(*(v7 + 24));
      LODWORD(v47) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v48 = *v47 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v47) = 32 * (v48 & 1);
  }

  v49 = v47 | v46;
  v50 = (v25 + (v30 >> 3));
  if (v50 >= v26)
  {
    v50 = *(v7 + 32);
    if (v50)
    {
      result = v50(*(v7 + 24));
      LODWORD(v50) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v51 = *v50 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v50) = 16 * (v51 & 1);
  }

  v52 = v50 | v49;
  v53 = (v25 + (v30 >> 3));
  if (v53 >= v26)
  {
    v53 = *(v7 + 32);
    if (v53)
    {
      result = v53(*(v7 + 24));
      LODWORD(v53) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v54 = *v53 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v53) = 8 * (v54 & 1);
  }

  v55 = v53 | v52;
  v56 = (v25 + (v30 >> 3));
  if (v56 >= v26)
  {
    v56 = *(v7 + 32);
    if (v56)
    {
      result = v56(*(v7 + 24));
      LODWORD(v56) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v57 = *v56 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v56) = 4 * (v57 & 1);
  }

  v58 = v56 | v55;
  v59 = (v25 + (v30 >> 3));
  if (v59 >= v26)
  {
    v59 = *(v7 + 32);
    if (v59)
    {
      result = v59(*(v7 + 24));
      LODWORD(v59) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v60 = *v59 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v59) = 2 * (v60 & 1);
  }

  v61 = v59 | v58;
  v62 = (v25 + (v30 >> 3));
  if (v62 >= v26)
  {
    v62 = *(v7 + 32);
    if (v62)
    {
      result = v62(*(v7 + 24));
      LODWORD(v62) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    LODWORD(v62) = (*v62 >> (~v30++ & 7)) & 1;
    *(v7 + 16) = v30;
  }

  *(a3 + 80) = v62 | v61;
  v63 = (v25 + (v30 >> 3));
  if (v63 >= v26)
  {
    v68 = *(v7 + 32);
    if (v68)
    {
      result = v68(*(v7 + 24));
      v65 = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
      v66 = (*v7 + (v30 >> 3));
      if (v66 < v26)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v65 = 0;
      v66 = (v25 + (v30 >> 3));
      if (v66 < v26)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    v64 = *v63 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    v65 = (v64 & 1) << 7;
    v66 = (v25 + (v30 >> 3));
    if (v66 < v26)
    {
LABEL_77:
      v67 = *v66 >> (~v30++ & 7);
      *(v7 + 16) = v30;
      LODWORD(v66) = (v67 & 1) << 6;
      goto LABEL_82;
    }
  }

  v66 = *(v7 + 32);
  if (v66)
  {
    result = v66(*(v7 + 24));
    LODWORD(v66) = 0;
    v30 = *(v7 + 16);
    v25 = *v7;
    v26 = *(v7 + 8);
  }

LABEL_82:
  v69 = v66 | v65;
  v70 = (v25 + (v30 >> 3));
  if (v70 >= v26)
  {
    v70 = *(v7 + 32);
    if (v70)
    {
      result = v70(*(v7 + 24));
      LODWORD(v70) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v71 = *v70 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v70) = 32 * (v71 & 1);
  }

  v72 = v70 | v69;
  v73 = (v25 + (v30 >> 3));
  if (v73 >= v26)
  {
    v73 = *(v7 + 32);
    if (v73)
    {
      result = v73(*(v7 + 24));
      LODWORD(v73) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v74 = *v73 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v73) = 16 * (v74 & 1);
  }

  v75 = v73 | v72;
  v76 = (v25 + (v30 >> 3));
  if (v76 >= v26)
  {
    v76 = *(v7 + 32);
    if (v76)
    {
      result = v76(*(v7 + 24));
      LODWORD(v76) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v77 = *v76 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v76) = 8 * (v77 & 1);
  }

  v78 = v76 | v75;
  v79 = (v25 + (v30 >> 3));
  if (v79 >= v26)
  {
    v79 = *(v7 + 32);
    if (v79)
    {
      result = v79(*(v7 + 24));
      LODWORD(v79) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v80 = *v79 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v79) = 4 * (v80 & 1);
  }

  v81 = v79 | v78;
  v82 = (v25 + (v30 >> 3));
  if (v82 >= v26)
  {
    v82 = *(v7 + 32);
    if (v82)
    {
      result = v82(*(v7 + 24));
      LODWORD(v82) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v83 = *v82 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v82) = 2 * (v83 & 1);
  }

  v84 = v82 | v81;
  v85 = (v25 + (v30 >> 3));
  if (v85 >= v26)
  {
    v85 = *(v7 + 32);
    if (v85)
    {
      result = v85(*(v7 + 24));
      LODWORD(v85) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    LODWORD(v85) = (*v85 >> (~v30++ & 7)) & 1;
    *(v7 + 16) = v30;
  }

  *(a3 + 84) = v85 | v84;
  v86 = (v25 + (v30 >> 3));
  if (v86 >= v26)
  {
    v91 = *(v7 + 32);
    if (v91)
    {
      result = v91(*(v7 + 24));
      v88 = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
      v89 = (*v7 + (v30 >> 3));
      if (v89 < v26)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v88 = 0;
      v89 = (v25 + (v30 >> 3));
      if (v89 < v26)
      {
        goto LABEL_108;
      }
    }
  }

  else
  {
    v87 = *v86 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    v88 = (v87 & 1) << 7;
    v89 = (v25 + (v30 >> 3));
    if (v89 < v26)
    {
LABEL_108:
      v90 = *v89 >> (~v30++ & 7);
      *(v7 + 16) = v30;
      LODWORD(v89) = (v90 & 1) << 6;
      goto LABEL_113;
    }
  }

  v89 = *(v7 + 32);
  if (v89)
  {
    result = v89(*(v7 + 24));
    LODWORD(v89) = 0;
    v30 = *(v7 + 16);
    v25 = *v7;
    v26 = *(v7 + 8);
  }

LABEL_113:
  v92 = v89 | v88;
  v93 = (v25 + (v30 >> 3));
  if (v93 >= v26)
  {
    v93 = *(v7 + 32);
    if (v93)
    {
      result = v93(*(v7 + 24));
      LODWORD(v93) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v94 = *v93 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v93) = 32 * (v94 & 1);
  }

  v95 = v93 | v92;
  v96 = (v25 + (v30 >> 3));
  if (v96 >= v26)
  {
    v96 = *(v7 + 32);
    if (v96)
    {
      result = v96(*(v7 + 24));
      LODWORD(v96) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v97 = *v96 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v96) = 16 * (v97 & 1);
  }

  v98 = v96 | v95;
  v99 = (v25 + (v30 >> 3));
  if (v99 >= v26)
  {
    v99 = *(v7 + 32);
    if (v99)
    {
      result = v99(*(v7 + 24));
      LODWORD(v99) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v100 = *v99 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v99) = 8 * (v100 & 1);
  }

  v101 = v99 | v98;
  v102 = (v25 + (v30 >> 3));
  if (v102 >= v26)
  {
    v102 = *(v7 + 32);
    if (v102)
    {
      result = v102(*(v7 + 24));
      LODWORD(v102) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v103 = *v102 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v102) = 4 * (v103 & 1);
  }

  v104 = v102 | v101;
  v105 = (v25 + (v30 >> 3));
  if (v105 >= v26)
  {
    v105 = *(v7 + 32);
    if (v105)
    {
      result = v105(*(v7 + 24));
      LODWORD(v105) = 0;
      v30 = *(v7 + 16);
      v25 = *v7;
      v26 = *(v7 + 8);
    }
  }

  else
  {
    v106 = *v105 >> (~v30++ & 7);
    *(v7 + 16) = v30;
    LODWORD(v105) = 2 * (v106 & 1);
  }

  v107 = v105 | v104;
  v108 = (v25 + (v30 >> 3));
  if (v108 >= v26)
  {
    v108 = *(v7 + 32);
    if (v108)
    {
      result = v108(*(v7 + 24));
      LODWORD(v108) = 0;
    }
  }

  else
  {
    LODWORD(v108) = (*v108 >> (~v30 & 7)) & 1;
    *(v7 + 16) = v30 + 1;
  }

  v38 = v108 | v107;
  *(a3 + 88) = v38;
  if (!v27)
  {
LABEL_138:
    if (*(a3 + 80) == 1 && *(a3 + 84) == 13 && !v38)
    {
      *(a3 + 100) = 0;
      *(a3 + 92) = 1;
      v109 = *(a3 + 69);
      if (v109 != 1 && (v109 != 2 || *(a3 + 72) != 12))
      {
        result = aom_internal_error(a4, 5, "sRGB colorspace not compatible with specified profile");
      }

      goto LABEL_186;
    }

    v110 = *(v7 + 16);
    v111 = (*v7 + (v110 >> 3));
    if (v111 >= *(v7 + 8))
    {
      v115 = *(v7 + 32);
      if (v115)
      {
        result = v115(*(v7 + 24));
      }

      *(a3 + 92) = 0;
      v113 = *(a3 + 69);
      if (v113 != 1)
      {
LABEL_147:
        if (!v113)
        {
          *(a3 + 96) = 0x100000001;
          LOBYTE(v114) = 1;
          if (*(a3 + 88))
          {
            goto LABEL_175;
          }

          goto LABEL_173;
        }

        if (*(a3 + 72) != 12)
        {
          LOBYTE(v114) = 0;
          *(a3 + 96) = 1;
          if (*(a3 + 88))
          {
            goto LABEL_175;
          }

          goto LABEL_173;
        }

        v116 = *(v7 + 16);
        v117 = *v7;
        v118 = *(v7 + 8);
        v119 = (*v7 + (v116 >> 3));
        if (v119 >= v118)
        {
          v122 = *(v7 + 32);
          if (v122)
          {
            result = v122(*(v7 + 24));
          }

          *(a3 + 96) = 0;
        }

        else
        {
          v120 = *v119 >> (~v116 & 7);
          v121 = v116 + 1;
          *(v7 + 16) = v116 + 1;
          *(a3 + 96) = v120 & 1;
          if (v120)
          {
            v114 = (v117 + (v121 >> 3));
            if (v114 >= v118)
            {
              v114 = *(v7 + 32);
              if (v114)
              {
                result = v114(*(v7 + 24));
                LODWORD(v114) = 0;
              }

              *(a3 + 100) = v114;
              if (*(a3 + 88))
              {
LABEL_175:
                if (!*(a3 + 96) || !*(a3 + 100))
                {
LABEL_186:
                  v43 = *(v7 + 16);
                  v133 = (*v7 + (v43 >> 3));
                  if (v133 >= *(v7 + 8))
                  {
                    v43 = *(v7 + 32);
                    if (v43)
                    {
                      result = (v43)(*(v7 + 24));
                      LOBYTE(v43) = 0;
                    }
                  }

                  else
                  {
                    v134 = *v133 >> (~v43 & 7);
                    *(v7 + 16) = v43 + 1;
                    LOBYTE(v43) = v134 & 1;
                  }

                  goto LABEL_190;
                }

                v123 = *(v7 + 16);
                v124 = *v7;
                v125 = *(v7 + 8);
                v126 = (*v7 + (v123 >> 3));
                if (v126 >= v125)
                {
                  v131 = *(v7 + 32);
                  if (v131)
                  {
                    result = v131(*(v7 + 24));
                    v128 = 0;
                    LODWORD(v123) = *(v7 + 16);
                    v129 = (*v7 + (v123 >> 3));
                    if (v129 < *(v7 + 8))
                    {
                      goto LABEL_179;
                    }
                  }

                  else
                  {
                    v128 = 0;
                    v129 = (v124 + (v123 >> 3));
                    if (v129 < v125)
                    {
                      goto LABEL_179;
                    }
                  }
                }

                else
                {
                  v127 = *v126 >> (~v123 & 7);
                  LODWORD(v123) = v123 + 1;
                  *(v7 + 16) = v123;
                  v128 = 2 * (v127 & 1);
                  v129 = (v124 + (v123 >> 3));
                  if (v129 < v125)
                  {
LABEL_179:
                    v130 = (*v129 >> (~v123 & 7)) & 1;
                    *(v7 + 16) = v123 + 1;
LABEL_185:
                    *(a3 + 104) = v130 | v128;
                    goto LABEL_186;
                  }
                }

                v132 = *(v7 + 32);
                if (v132)
                {
                  result = v132(*(v7 + 24));
                }

                v130 = 0;
                goto LABEL_185;
              }
            }

            else
            {
              LODWORD(v114) = (*v114 >> (~v121 & 7)) & 1;
              *(v7 + 16) = v116 + 2;
              *(a3 + 100) = v114;
              if (*(a3 + 88))
              {
                goto LABEL_175;
              }
            }

LABEL_173:
            if ((*(a3 + 96) != 0) | v114 & 1)
            {
              result = aom_internal_error(a4, 5, "Identity CICP Matrix incompatible with non 4:4:4 color sampling");
            }

            goto LABEL_175;
          }
        }

        LOBYTE(v114) = 0;
        *(a3 + 100) = 0;
        if (*(a3 + 88))
        {
          goto LABEL_175;
        }

        goto LABEL_173;
      }
    }

    else
    {
      v112 = (*v111 >> (~v110 & 7)) & 1;
      *(v7 + 16) = v110 + 1;
      *(a3 + 92) = v112;
      v113 = *(a3 + 69);
      if (v113 != 1)
      {
        goto LABEL_147;
      }
    }

    LOBYTE(v114) = 0;
    *(a3 + 96) = 0;
    if (*(a3 + 88))
    {
      goto LABEL_175;
    }

    goto LABEL_173;
  }

LABEL_38:
  v39 = *(v7 + 16);
  v40 = (*v7 + (v39 >> 3));
  if (v40 >= *(v7 + 8))
  {
    v42 = *(v7 + 32);
    if (v42)
    {
      result = v42(*(v7 + 24));
    }

    v41 = 0;
  }

  else
  {
    v41 = (*v40 >> (~v39 & 7)) & 1;
    *(v7 + 16) = v39 + 1;
  }

  LOBYTE(v43) = 0;
  *(a3 + 92) = v41;
  *(a3 + 96) = 0x100000001;
  *(a3 + 104) = 0;
LABEL_190:
  *(a3 + 108) = v43;
  return result;
}