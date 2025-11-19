int16x8_t *vpx_idct16x16_38_add_half1d(int16x8_t *result, int16x8_t *a2, int16x8_t *a3, int a4, int a5)
{
  if (a2)
  {
    v5 = vuzp1q_s16(*result, result[1]);
    v6 = vuzp1q_s16(result[4], result[5]);
    v7 = vuzp1q_s16(result[8], result[9]);
    v8 = vuzp1q_s16(result[12], result[13]);
    v9 = vuzp1q_s16(result[16], result[17]);
    v10 = vuzp1q_s16(result[20], result[21]);
    v11 = vuzp1q_s16(result[24], result[25]);
    v12 = vuzp1q_s16(result[28], result[29]);
  }

  else
  {
    v5 = *result;
    v6 = result[2];
    v7 = result[4];
    v8 = result[6];
    v9 = result[8];
    v10 = result[10];
    v11 = result[12];
    v12 = result[14];
  }

  v13 = vtrn1q_s16(v5, v6);
  v14 = vtrn2q_s16(v5, v6);
  v15 = vtrn1q_s16(v7, v8);
  v16 = vtrn2q_s16(v7, v8);
  v17 = vtrn1q_s16(v9, v10);
  v18 = vtrn2q_s16(v9, v10);
  v19 = vtrn1q_s16(v11, v12);
  v20 = vtrn2q_s16(v11, v12);
  v21 = vtrn1q_s32(v13, v15);
  v22 = vtrn2q_s32(v13, v15);
  v23 = vtrn1q_s32(v14, v16);
  v24 = vtrn2q_s32(v14, v16);
  v25 = vtrn1q_s32(v17, v19);
  v26 = vtrn2q_s32(v17, v19);
  v27 = vtrn1q_s32(v18, v20);
  v28 = vtrn2q_s32(v18, v20);
  v29 = vzip2q_s64(v21, v25);
  v21.i64[1] = v25.i64[0];
  v30 = vzip2q_s64(v23, v27);
  v23.i64[1] = v27.i64[0];
  v31 = vzip2q_s64(v22, v26);
  v22.i64[1] = v26.i64[0];
  v32 = vzip2q_s64(v24, v28);
  v24.i64[1] = v28.i64[0];
  v33 = vqrdmulhq_lane_s16(v23, 0x3C5670E20C8C7F62, 1);
  v34 = vqrdmulhq_lane_s16(v32, 0xAECC62F2DAD87A7ELL, 3);
  v35 = vqrdmulhq_lane_s16(v30, 0x3C5670E20C8C7F62, 3);
  v36 = vqrdmulhq_lane_s16(v24, 0xAECC62F2DAD87A7ELL, 1);
  v37 = vqrdmulhq_lane_s16(v24, 0xAECC62F2DAD87A7ELL, 0);
  v38 = vqrdmulhq_lane_s16(v30, 0x3C5670E20C8C7F62, 2);
  v39 = vqrdmulhq_lane_s16(v32, 0xAECC62F2DAD87A7ELL, 2);
  v40 = vqrdmulhq_lane_s16(v23, 0x3C5670E20C8C7F62, 0);
  v41 = vqrdmulhq_lane_s16(v22, 0x18F8B8E46A6E7D8ALL, 3);
  v42 = vqrdmulhq_lane_s16(v31, 0x18F8B8E46A6E7D8ALL, 2);
  v43 = vqrdmulhq_lane_s16(v31, 0x18F8B8E46A6E7D8ALL, 1);
  v44 = vqrdmulhq_lane_s16(v22, 0x18F8B8E46A6E7D8ALL, 0);
  v45 = vaddq_s16(v34, v33);
  v46 = vsubq_s16(v33, v34);
  v47 = vsubq_s16(v36, v35);
  v48 = vaddq_s16(v36, v35);
  v49 = vaddq_s16(v38, v37);
  v50 = vsubq_s16(v37, v38);
  v51 = vsubq_s16(v40, v39);
  v52 = vaddq_s16(v40, v39);
  v53 = vqrdmulhq_lane_s16(v21, 0x30FC5A8276428000, 2);
  v54 = vqrdmulhq_lane_s16(v29, 0x30FC5A8276428000, 3);
  v55 = vqrdmulhq_lane_s16(v29, 0x30FC5A8276428000, 1);
  v56 = vaddq_s16(v42, v41);
  v57 = vsubq_s16(v41, v42);
  v58 = vsubq_s16(v44, v43);
  v59 = vaddq_s16(v44, v43);
  v60 = vdupq_n_s16(0x187Eu);
  v61 = vdupq_n_s16(0x3B21u);
  v62 = vmlsl_high_s16(vmull_high_s16(v51, v60), v46, v61);
  v63 = vmlal_s16(vmull_s16(*v51.i8, *v61.i8), *v46.i8, *v60.i8);
  v64 = vmlal_high_s16(vmull_high_s16(v51, v61), v46, v60);
  *v46.i8 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v51.i8, *v60.i8), *v46.i8, *v61.i8), 0xEuLL);
  *v29.i8 = vrshrn_n_s32(v62, 0xEuLL);
  *v51.i8 = vrshrn_n_s32(vnegq_s32(vmlal_s16(vmull_s16(*v47.i8, *v60.i8), *v50.i8, *v61.i8)), 0xEuLL);
  v65 = vsub_s16(*v46.i8, *v51.i8);
  v66 = vrshrn_high_n_s32(*v46.i8, v62, 0xEuLL);
  *v62.i8 = vrshrn_n_s32(v63, 0xEuLL);
  *v63.i8 = vrshrn_n_s32(v64, 0xEuLL);
  v67 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v50.i8, *v60.i8), *v47.i8, *v61.i8), 0xEuLL);
  v68 = vsub_s16(*v62.i8, v67);
  v69 = vrshrn_high_n_s32(*v62.i8, v64, 0xEuLL);
  v70 = vmlsl_high_s16(vmull_high_s16(v50, v60), v47, v61);
  v71 = vnegq_s32(vmlal_high_s16(vmull_high_s16(v47, v60), v50, v61));
  *v60.i8 = vrshrn_n_s32(v70, 0xEuLL);
  v72 = vrshrn_high_n_s32(v67, v70, 0xEuLL);
  *v61.i8 = vrshrn_n_s32(v71, 0xEuLL);
  v73 = vaddq_s16(v55, v53);
  v74 = vaddq_s16(v54, v53);
  v75 = vsubq_s16(v53, v54);
  v76 = vsubq_s16(v53, v55);
  v77 = vdupq_n_s16(0x2D41u);
  v78 = vmlal_s16(vmull_s16(*v57.i8, *v77.i8), *v58.i8, *v77.i8);
  v79 = vmlal_high_s16(vmull_high_s16(v57, v77), v58, v77);
  v80 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v58.i8, *v77.i8), *v57.i8, *v77.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v58, v77), v57, v77), 0xEuLL);
  v81 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xEuLL), v79, 0xEuLL);
  v82 = vaddq_s16(v48, v45);
  v83 = vaddq_s16(vrshrn_high_n_s32(*v51.i8, v71, 0xEuLL), v66);
  v84 = vsubq_s16(v45, v48);
  v85 = vsubq_s16(v52, v49);
  v86 = vaddq_s16(v72, v69);
  v87 = vaddq_s16(v52, v49);
  v88 = vaddq_s16(v73, v59);
  v89 = vaddq_s16(v81, v74);
  v90 = vaddq_s16(v80, v75);
  v91 = vaddq_s16(v76, v56);
  v92 = vsubq_s16(v76, v56);
  v93 = vsubq_s16(v75, v80);
  v94 = vsubq_s16(v74, v81);
  v95 = vsubq_s16(v73, v59);
  *v76.i8 = vsub_s16(*v63.i8, *v60.i8);
  *v29.i8 = vsub_s16(*v29.i8, *v61.i8);
  v96 = vmlal_s16(vmull_s16(v65, *v77.i8), v68, *v77.i8);
  v97 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v68, *v77.i8), v65, *v77.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v76.i8, *v77.i8), *v29.i8, *v77.i8), 0xEuLL);
  v98 = vrshrn_high_n_s32(vrshrn_n_s32(v96, 0xEuLL), vmlal_s16(vmull_s16(*v29.i8, *v77.i8), *v76.i8, *v77.i8), 0xEuLL);
  v99 = vmlal_s16(vmull_s16(*v84.i8, *v77.i8), *v85.i8, *v77.i8);
  v100 = vmlal_high_s16(vmull_high_s16(v84, v77), v85, v77);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v85.i8, *v77.i8), *v84.i8, *v77.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v85, v77), v84, v77), 0xEuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(v99, 0xEuLL), v100, 0xEuLL);
  v103 = vqaddq_s16(v88, v87);
  v104 = vqaddq_s16(v89, v86);
  v105 = vqaddq_s16(v90, v98);
  v106 = vqaddq_s16(v91, v102);
  v107 = vqaddq_s16(v92, v101);
  v108 = vqaddq_s16(v93, v97);
  v109 = vqaddq_s16(v94, v83);
  v110 = vqaddq_s16(v95, v82);
  v111 = vqsubq_s16(v95, v82);
  v112 = vqsubq_s16(v94, v83);
  v113 = vqsubq_s16(v93, v97);
  v114 = vqsubq_s16(v92, v101);
  v115 = vqsubq_s16(v91, v102);
  v116 = vqsubq_s16(v90, v98);
  v117 = vqsubq_s16(v89, v86);
  v118 = vqsubq_s16(v88, v87);
  if (a2)
  {
    *a2 = v103;
    a2[2] = v104;
    a2[4] = v105;
    a2[6] = v106;
    a2[8] = v107;
    a2[10] = v108;
    a2[12] = v109;
    a2[14] = v110;
    a2[16] = v111;
    a2[18] = v112;
    a2[20] = v113;
    a2[22] = v114;
    a2[24] = v115;
    a2[26] = v116;
    a2[28] = v117;
    a2[30] = v118;
  }

  else if (a5)
  {
    v119 = vrshrq_n_s16(v105, 6uLL);
    v120 = vrshrq_n_s16(v111, 6uLL);
    v121 = vrshrq_n_s16(v112, 6uLL);
    v122 = vrshrq_n_s16(v113, 6uLL);
    v123 = vrshrq_n_s16(v114, 6uLL);
    v124 = vrshrq_n_s16(v115, 6uLL);
    v125 = vrshrq_n_s16(v116, 6uLL);
    v126 = vrshrq_n_s16(v117, 6uLL);
    v127.i64[0] = 0xFF00FF00FF00FFLL;
    v127.i64[1] = 0xFF00FF00FF00FFLL;
    *a3 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v103, 6uLL), *a3), v127), 0);
    v128 = 2 * a4;
    *(a3 + v128) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v104, 6uLL), *(a3 + v128)), v127), 0);
    v129 = (a3 + v128 + v128);
    *v129 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v119, *v129), v127), 0);
    v130 = (v129 + v128);
    *v130 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v106, 6uLL), *v130), v127), 0);
    v131 = (v130 + v128);
    *v131 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v107, 6uLL), *v131), v127), 0);
    v132 = (v131 + v128);
    *v132 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v108, 6uLL), *v132), v127), 0);
    v133 = (v132 + v128);
    *v133 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v109, 6uLL), *v133), v127), 0);
    v134 = (v133 + v128);
    *v134 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v110, 6uLL), *v134), v127), 0);
    v135 = (v134 + v128);
    *v135 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v120, *v135), v127), 0);
    v136 = (v135 + v128);
    *v136 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v121, *v136), v127), 0);
    v137 = (v136 + v128);
    *v137 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v122, *v137), v127), 0);
    v138 = (v137 + v128);
    *v138 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v123, *v138), v127), 0);
    v139 = (v138 + v128);
    *v139 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v124, *v139), v127), 0);
    v140 = (v139 + v128);
    *v140 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v125, *v140), v127), 0);
    v141 = (v140 + v128);
    *v141 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v126, *v141), v127), 0);
    *(v141 + v128) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v118, 6uLL), *(v141 + v128)), v127), 0);
  }

  else
  {
    *a3->i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a3->i8), v103, 6uLL));
    v142 = &a3->i8[a4];
    *v142 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v142), v104, 6uLL));
    v143 = (v142 + a4);
    *v143 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v143), v105, 6uLL));
    v144 = (v143 + a4);
    *v144 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v144), v106, 6uLL));
    v145 = (v144 + a4);
    *v145 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v145), v107, 6uLL));
    v146 = (v145 + a4);
    *v146 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v146), v108, 6uLL));
    v147 = (v146 + a4);
    *v147 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v147), v109, 6uLL));
    v148 = (v147 + a4);
    *v148 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v148), v110, 6uLL));
    v149 = (v148 + a4);
    *v149 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v149), v111, 6uLL));
    v150 = (v149 + a4);
    *v150 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v150), v112, 6uLL));
    v151 = (v150 + a4);
    *v151 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v151), v113, 6uLL));
    v152 = (v151 + a4);
    *v152 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v152), v114, 6uLL));
    v153 = (v152 + a4);
    *v153 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v153), v115, 6uLL));
    v154 = (v153 + a4);
    *v154 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v154), v116, 6uLL));
    v155 = (v154 + a4);
    *v155 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v155), v117, 6uLL));
    *(v155 + a4) = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v155 + a4)), v118, 6uLL));
  }

  return result;
}

int16x4_t vpx_idct16x16_10_add_half1d_pass1(int32x4_t *a1, int16x4_t *a2)
{
  v2 = vmovn_s32(*a1);
  v3 = vmovn_s32(a1[4]);
  v4 = vmovn_s32(a1[8]);
  v5 = vmovn_s32(a1[12]);
  v6 = vtrn1_s16(v2, v3);
  v7 = vtrn2_s16(v2, v3);
  v8 = vtrn1_s16(v4, v5);
  v9 = vtrn2_s16(v4, v5);
  v10 = vzip1_s32(v6, v8);
  v11 = vzip2_s32(v6, v8);
  v12 = vzip1_s32(v7, v9);
  v13 = vzip2_s32(v7, v9);
  v14 = vqrdmulh_lane_s16(v12, 0x3C5670E20C8C7F62, 1);
  v15 = vqrdmulh_lane_s16(v13, 0xAECC62F2DAD87A7ELL, 1);
  v16 = vqrdmulh_lane_s16(v13, 0xAECC62F2DAD87A7ELL, 0);
  v17 = vqrdmulh_lane_s16(v12, 0x3C5670E20C8C7F62, 0);
  v18 = vqrdmulh_lane_s16(v11, 0x18F8B8E46A6E7D8ALL, 3);
  v19 = vqrdmulh_lane_s16(v11, 0x18F8B8E46A6E7D8ALL, 0);
  v20 = vqrdmulh_lane_s16(v10, 0x30FC5A8276428000, 2);
  v21 = vdup_n_s16(0x187Eu);
  v22 = vdup_n_s16(0x3B21u);
  v23 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v17, v21), v14, v22), 0xEuLL);
  v24 = vrshrn_n_s32(vmlal_s16(vmull_s16(v17, v22), v14, v21), 0xEuLL);
  v25 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v16, v21), v15, v22), 0xEuLL);
  v26 = vrshrn_n_s32(vnegq_s32(vmlal_s16(vmull_s16(v15, v21), v16, v22)), 0xEuLL);
  v27 = vdup_n_s16(0x2D41u);
  v28 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v19, v27), v18, v27), 0xEuLL);
  v29 = vrshrn_n_s32(vmlal_s16(vmull_s16(v18, v27), v19, v27), 0xEuLL);
  v30 = vsub_s16(v23, v26);
  v31 = vsub_s16(v14, v15);
  v32 = vsub_s16(v17, v16);
  v33 = vsub_s16(v24, v25);
  v34 = vadd_s16(v25, v24);
  v35 = vadd_s16(v17, v16);
  v36 = vadd_s16(v20, v19);
  v37 = vadd_s16(v29, v20);
  v38 = vadd_s16(v28, v20);
  v39 = vadd_s16(v20, v18);
  v40 = vsub_s16(v20, v18);
  v41 = vsub_s16(v20, v28);
  v42 = vmlal_s16(vmull_s16(v30, v27), v33, v27);
  v43 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v33, v27), v30, v27), 0xEuLL);
  v44 = vrshrn_n_s32(v42, 0xEuLL);
  v45 = vmlsl_s16(vmull_s16(v32, v27), v31, v27);
  *a2 = vadd_s16(v36, v35);
  a2[1] = vadd_s16(v37, v34);
  v46 = vrshrn_n_s32(vmlal_s16(vmull_s16(v31, v27), v32, v27), 0xEuLL);
  a2[2] = vadd_s16(v44, v38);
  a2[3] = vadd_s16(v46, v39);
  v47 = vrshrn_n_s32(v45, 0xEuLL);
  a2[4] = vadd_s16(v47, v40);
  a2[5] = vadd_s16(v43, v41);
  v48 = vadd_s16(v15, v14);
  v49 = vadd_s16(v26, v23);
  v50 = vsub_s16(v20, v29);
  v51 = vsub_s16(v20, v19);
  a2[6] = vadd_s16(v50, v49);
  a2[7] = vadd_s16(v51, v48);
  a2[8] = vsub_s16(v51, v48);
  a2[9] = vsub_s16(v50, v49);
  a2[10] = vsub_s16(v41, v43);
  a2[11] = vsub_s16(v40, v47);
  a2[12] = vsub_s16(v39, v46);
  a2[13] = vsub_s16(v38, v44);
  result = vsub_s16(v36, v35);
  a2[14] = vsub_s16(v37, v34);
  a2[15] = result;
  return result;
}

uint64_t *vpx_idct16x16_10_add_half1d_pass2(uint64_t *result, int16x8_t *a2, int16x8_t *a3, int a4, int a5)
{
  v5.i64[0] = *result;
  v6.i64[0] = result[1];
  v7.i64[0] = result[2];
  v8.i64[0] = result[3];
  v5.i64[1] = result[4];
  v6.i64[1] = result[5];
  v7.i64[1] = result[6];
  v8.i64[1] = result[7];
  v9 = vtrn1q_s16(v5, v6);
  v10 = vtrn2q_s16(v5, v6);
  v11 = vtrn1q_s16(v7, v8);
  v12 = vtrn2q_s16(v7, v8);
  v13 = vtrn1q_s32(v9, v11);
  v14 = vtrn2q_s32(v9, v11);
  v15 = vtrn1q_s32(v10, v12);
  v16 = vtrn2q_s32(v10, v12);
  v17 = vqrdmulhq_lane_s16(v15, 0x3C5670E20C8C7F62, 1);
  v18 = vqrdmulhq_lane_s16(v16, 0xAECC62F2DAD87A7ELL, 1);
  v19 = vqrdmulhq_lane_s16(v16, 0xAECC62F2DAD87A7ELL, 0);
  v20 = vqrdmulhq_lane_s16(v15, 0x3C5670E20C8C7F62, 0);
  v21 = vqrdmulhq_lane_s16(v14, 0x18F8B8E46A6E7D8ALL, 3);
  v22 = vqrdmulhq_lane_s16(v14, 0x18F8B8E46A6E7D8ALL, 0);
  v23 = vqrdmulhq_lane_s16(v13, 0x30FC5A8276428000, 2);
  v24 = vdupq_n_s16(0x187Eu);
  v25 = vdupq_n_s16(0x3B21u);
  v26 = vmlsl_high_s16(vmull_high_s16(v20, v24), v17, v25);
  v27 = vmlal_high_s16(vmull_high_s16(v20, v25), v17, v24);
  v28 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v20.i8, *v24.i8), *v17.i8, *v25.i8), 0xEuLL);
  v29 = vrshrn_n_s32(v26, 0xEuLL);
  v30 = vrshrn_n_s32(vnegq_s32(vmlal_s16(vmull_s16(*v18.i8, *v24.i8), *v19.i8, *v25.i8)), 0xEuLL);
  v31 = vsub_s16(v28, v30);
  v32 = vrshrn_high_n_s32(v28, v26, 0xEuLL);
  *v26.i8 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v20.i8, *v25.i8), *v17.i8, *v24.i8), 0xEuLL);
  v33 = vrshrn_n_s32(v27, 0xEuLL);
  v34 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v19.i8, *v24.i8), *v18.i8, *v25.i8), 0xEuLL);
  v35 = vsub_s16(*v26.i8, v34);
  v36 = vrshrn_high_n_s32(*v26.i8, v27, 0xEuLL);
  v37 = vmlsl_high_s16(vmull_high_s16(v19, v24), v18, v25);
  v38 = vnegq_s32(vmlal_high_s16(vmull_high_s16(v18, v24), v19, v25));
  *v25.i8 = vrshrn_n_s32(v37, 0xEuLL);
  v39 = vrshrn_n_s32(v38, 0xEuLL);
  v40 = vrshrn_high_n_s32(v30, v38, 0xEuLL);
  v41 = vdupq_n_s16(0x2D41u);
  v42 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v22.i8, *v41.i8), *v21.i8, *v41.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v22, v41), v21, v41), 0xEuLL);
  v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v21.i8, *v41.i8), *v22.i8, *v41.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v21, v41), v22, v41), 0xEuLL);
  v44 = vaddq_s16(v18, v17);
  v45 = vaddq_s16(v40, v32);
  v46 = vsubq_s16(v17, v18);
  v47 = vsubq_s16(v20, v19);
  v48 = vaddq_s16(vrshrn_high_n_s32(v34, v37, 0xEuLL), v36);
  v49 = vaddq_s16(v20, v19);
  v50 = vaddq_s16(v23, v22);
  v51 = vaddq_s16(v43, v23);
  v52 = vaddq_s16(v42, v23);
  v53 = vaddq_s16(v23, v21);
  v54 = vsubq_s16(v23, v21);
  v55 = vsubq_s16(v23, v42);
  v56 = vsubq_s16(v23, v43);
  v57 = vsubq_s16(v23, v22);
  *v25.i8 = vsub_s16(v33, *v25.i8);
  v58 = vsub_s16(v29, v39);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v35, *v41.i8), v31, *v41.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v25.i8, *v41.i8), v58, *v41.i8), 0xEuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(v31, *v41.i8), v35, *v41.i8), 0xEuLL), vmlal_s16(vmull_s16(v58, *v41.i8), *v25.i8, *v41.i8), 0xEuLL);
  v61 = vmlal_s16(vmull_s16(*v46.i8, *v41.i8), *v47.i8, *v41.i8);
  v62 = vmlal_high_s16(vmull_high_s16(v46, v41), v47, v41);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v47.i8, *v41.i8), *v46.i8, *v41.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v47, v41), v46, v41), 0xEuLL);
  v64 = vrshrn_high_n_s32(vrshrn_n_s32(v61, 0xEuLL), v62, 0xEuLL);
  v65 = vqaddq_s16(v50, v49);
  v66 = vqaddq_s16(v51, v48);
  v67 = vqaddq_s16(v52, v60);
  v68 = vqaddq_s16(v53, v64);
  v69 = vqaddq_s16(v54, v63);
  v70 = vqaddq_s16(v55, v59);
  v71 = vqaddq_s16(v56, v45);
  v72 = vqaddq_s16(v57, v44);
  v73 = vqsubq_s16(v57, v44);
  v74 = vqsubq_s16(v56, v45);
  v75 = vqsubq_s16(v55, v59);
  v76 = vqsubq_s16(v54, v63);
  v77 = vqsubq_s16(v53, v64);
  v78 = vqsubq_s16(v52, v60);
  v79 = vqsubq_s16(v51, v48);
  v80 = vqsubq_s16(v50, v49);
  if (a2)
  {
    *a2 = v65;
    a2[2] = v66;
    a2[4] = v67;
    a2[6] = v68;
    a2[8] = v69;
    a2[10] = v70;
    a2[12] = v71;
    a2[14] = v72;
    a2[16] = v73;
    a2[18] = v74;
    a2[20] = v75;
    a2[22] = v76;
    a2[24] = v77;
    a2[26] = v78;
    a2[28] = v79;
    a2[30] = v80;
  }

  else if (a5)
  {
    v81 = vrshrq_n_s16(v69, 6uLL);
    v82 = vrshrq_n_s16(v73, 6uLL);
    v83 = vrshrq_n_s16(v74, 6uLL);
    v84 = vrshrq_n_s16(v75, 6uLL);
    v85 = vrshrq_n_s16(v76, 6uLL);
    v86 = vrshrq_n_s16(v77, 6uLL);
    v87 = vrshrq_n_s16(v78, 6uLL);
    v88 = vrshrq_n_s16(v79, 6uLL);
    v89.i64[0] = 0xFF00FF00FF00FFLL;
    v89.i64[1] = 0xFF00FF00FF00FFLL;
    *a3 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v65, 6uLL), *a3), v89), 0);
    v90 = 2 * a4;
    *(a3 + v90) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v66, 6uLL), *(a3 + v90)), v89), 0);
    v91 = (a3 + v90 + v90);
    *v91 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v67, 6uLL), *v91), v89), 0);
    v92 = (v91 + v90);
    *v92 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v68, 6uLL), *v92), v89), 0);
    v93 = (v92 + v90);
    *v93 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v81, *v93), v89), 0);
    v94 = (v93 + v90);
    *v94 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v70, 6uLL), *v94), v89), 0);
    v95 = (v94 + v90);
    *v95 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v71, 6uLL), *v95), v89), 0);
    v96 = (v95 + v90);
    *v96 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v72, 6uLL), *v96), v89), 0);
    v97 = (v96 + v90);
    *v97 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v82, *v97), v89), 0);
    v98 = (v97 + v90);
    *v98 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v83, *v98), v89), 0);
    v99 = (v98 + v90);
    *v99 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v84, *v99), v89), 0);
    v100 = (v99 + v90);
    *v100 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v85, *v100), v89), 0);
    v101 = (v100 + v90);
    *v101 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v86, *v101), v89), 0);
    v102 = (v101 + v90);
    *v102 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v87, *v102), v89), 0);
    v103 = (v102 + v90);
    *v103 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v88, *v103), v89), 0);
    *(v103 + v90) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v80, 6uLL), *(v103 + v90)), v89), 0);
  }

  else
  {
    *a3->i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a3->i8), v65, 6uLL));
    v104 = &a3->i8[a4];
    *v104 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v104), v66, 6uLL));
    v105 = (v104 + a4);
    *v105 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v105), v67, 6uLL));
    v106 = (v105 + a4);
    *v106 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v106), v68, 6uLL));
    v107 = (v106 + a4);
    *v107 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v107), v69, 6uLL));
    v108 = (v107 + a4);
    *v108 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v108), v70, 6uLL));
    v109 = (v108 + a4);
    *v109 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v109), v71, 6uLL));
    v110 = (v109 + a4);
    *v110 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v110), v72, 6uLL));
    v111 = (v110 + a4);
    *v111 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v111), v73, 6uLL));
    v112 = (v111 + a4);
    *v112 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v112), v74, 6uLL));
    v113 = (v112 + a4);
    *v113 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v113), v75, 6uLL));
    v114 = (v113 + a4);
    *v114 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v114), v76, 6uLL));
    v115 = (v114 + a4);
    *v115 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v115), v77, 6uLL));
    v116 = (v115 + a4);
    *v116 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v116), v78, 6uLL));
    v117 = (v116 + a4);
    *v117 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v117), v79, 6uLL));
    *(v117 + a4) = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v117 + a4)), v80, 6uLL));
  }

  return result;
}

uint64_t *vpx_idct16x16_10_add_neon(int32x4_t *a1, uint64_t a2, int a3)
{
  v57[8] = *MEMORY[0x277D85DE8];
  v5 = vmovn_s32(*a1);
  v6 = vmovn_s32(a1[4]);
  v7 = vmovn_s32(a1[8]);
  v8 = vmovn_s32(a1[12]);
  v9 = vtrn1_s16(v5, v6);
  v10 = vtrn2_s16(v5, v6);
  v11 = vtrn1_s16(v7, v8);
  v12 = vtrn2_s16(v7, v8);
  v13 = vzip1_s32(v9, v11);
  v14 = vzip2_s32(v9, v11);
  v15 = vzip1_s32(v10, v12);
  v16 = vzip2_s32(v10, v12);
  v17 = vqrdmulh_lane_s16(v15, 0x3C5670E20C8C7F62, 1);
  v18 = vqrdmulh_lane_s16(v16, 0xAECC62F2DAD87A7ELL, 1);
  v19 = vqrdmulh_lane_s16(v16, 0xAECC62F2DAD87A7ELL, 0);
  v20 = vqrdmulh_lane_s16(v15, 0x3C5670E20C8C7F62, 0);
  v21 = vqrdmulh_lane_s16(v14, 0x18F8B8E46A6E7D8ALL, 3);
  v22 = vqrdmulh_lane_s16(v14, 0x18F8B8E46A6E7D8ALL, 0);
  v23 = vqrdmulh_lane_s16(v13, 0x30FC5A8276428000, 2);
  v24 = vdup_n_s16(0x187Eu);
  v25 = vdup_n_s16(0x3B21u);
  v26 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v20, v24), v17, v25), 0xEuLL);
  v27 = vrshrn_n_s32(vmlal_s16(vmull_s16(v20, v25), v17, v24), 0xEuLL);
  v28 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v19, v24), v18, v25), 0xEuLL);
  v29 = vrshrn_n_s32(vnegq_s32(vmlal_s16(vmull_s16(v18, v24), v19, v25)), 0xEuLL);
  v30 = vdup_n_s16(0x2D41u);
  v31 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v22, v30), v21, v30), 0xEuLL);
  v32 = vrshrn_n_s32(vmlal_s16(vmull_s16(v21, v30), v22, v30), 0xEuLL);
  v33 = vsub_s16(v26, v29);
  v34 = vsub_s16(v17, v18);
  v35 = vsub_s16(v20, v19);
  v36 = vsub_s16(v27, v28);
  v37 = vadd_s16(v28, v27);
  v38 = vadd_s16(v20, v19);
  v39 = vadd_s16(v23, v22);
  v40 = vadd_s16(v32, v23);
  v41 = vadd_s16(v31, v23);
  v42 = vadd_s16(v23, v21);
  v43 = vsub_s16(v23, v21);
  v44 = vsub_s16(v23, v31);
  v45 = vmlal_s16(vmull_s16(v33, v30), v36, v30);
  v46 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v36, v30), v33, v30), 0xEuLL);
  v47 = vrshrn_n_s32(v45, 0xEuLL);
  v48 = vmlsl_s16(vmull_s16(v35, v30), v34, v30);
  v56[0] = vadd_s16(v39, v38);
  v56[1] = vadd_s16(v40, v37);
  v49 = vrshrn_n_s32(vmlal_s16(vmull_s16(v34, v30), v35, v30), 0xEuLL);
  v56[2] = vadd_s16(v47, v41);
  v56[3] = vadd_s16(v49, v42);
  v50 = vrshrn_n_s32(v48, 0xEuLL);
  v56[4] = vadd_s16(v50, v43);
  v56[5] = vadd_s16(v46, v44);
  v51 = vadd_s16(v18, v17);
  v52 = vadd_s16(v29, v26);
  v53 = vsub_s16(v23, v32);
  v54 = vsub_s16(v23, v22);
  v56[6] = vadd_s16(v53, v52);
  v56[7] = vadd_s16(v54, v51);
  v57[0] = vsub_s16(v54, v51);
  v57[1] = vsub_s16(v53, v52);
  v57[2] = vsub_s16(v44, v46);
  v57[3] = vsub_s16(v43, v50);
  v57[4] = vsub_s16(v42, v49);
  v57[5] = vsub_s16(v41, v47);
  v57[6] = vsub_s16(v40, v37);
  v57[7] = vsub_s16(v39, v38);
  vpx_idct16x16_10_add_half1d_pass2(v56, 0, a2, a3, 0);
  return vpx_idct16x16_10_add_half1d_pass2(v57, 0, (a2 + 8), a3, 0);
}

int16x8_t vpx_idct32_12_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vuzp1q_s16(*a1, a1[1]);
  v3 = vuzp1q_s16(a1[8], a1[9]);
  v4 = vuzp1q_s16(a1[16], a1[17]);
  v5 = vuzp1q_s16(a1[24], a1[25]);
  v6 = vuzp1q_s16(a1[32], a1[33]);
  v7 = vuzp1q_s16(a1[40], a1[41]);
  v8 = vuzp1q_s16(a1[48], a1[49]);
  v9 = vuzp1q_s16(a1[56], a1[57]);
  v10 = vtrn1q_s16(v2, v3);
  v11 = vtrn2q_s16(v2, v3);
  v12 = vtrn1q_s16(v4, v5);
  v13 = vtrn2q_s16(v4, v5);
  v14 = vtrn1q_s16(v6, v7);
  v15 = vtrn2q_s16(v6, v7);
  v16 = vtrn1q_s16(v8, v9);
  v17 = vtrn2q_s16(v8, v9);
  v18 = vtrn1q_s32(v10, v12);
  v19 = vtrn2q_s32(v10, v12);
  v20 = vtrn1q_s32(v11, v13);
  v21 = vtrn2q_s32(v11, v13);
  v22 = vtrn1q_s32(v14, v16);
  v23 = vtrn2q_s32(v14, v16);
  v24 = vtrn1q_s32(v15, v17);
  v25 = vtrn2q_s32(v15, v17);
  v26 = vzip2q_s64(v18, v22);
  v12.i64[0] = v18.i64[0];
  v12.i64[1] = v22.i64[0];
  v27 = vzip2q_s64(v20, v24);
  v20.i64[1] = v24.i64[0];
  v28 = vzip2q_s64(v19, v23);
  v15.i64[0] = v19.i64[0];
  v15.i64[1] = v23.i64[0];
  v29 = vzip2q_s64(v21, v25);
  v19.i64[0] = v21.i64[0];
  v19.i64[1] = v25.i64[0];
  v30 = vuzp1q_s16(a1[2], a1[34]);
  v31 = vuzp1q_s16(a1[10], a1[42]);
  v32 = vuzp1q_s16(a1[18], a1[50]);
  v33 = vuzp1q_s16(a1[26], a1[58]);
  v34 = vtrn1q_s16(v30, v31);
  v35 = vtrn2q_s16(v30, v31);
  v36 = vtrn1q_s16(v32, v33);
  v37 = vtrn2q_s16(v32, v33);
  v38 = vtrn1q_s32(v34, v36);
  v39 = vtrn2q_s32(v34, v36);
  v40 = vtrn1q_s32(v35, v37);
  v41 = vtrn2q_s32(v35, v37);
  v42 = vqrdmulhq_s16(v20, vdupq_n_s16(0x648u));
  v37.i64[0] = 0x27002700270027;
  v37.i64[1] = 0x27002700270027;
  v43 = vqrdmulhq_s16(v20, vnegq_f16(v37));
  v44 = vqrdmulhq_s16(v40, vdupq_n_s16(0x36BAu));
  v45 = vqrdmulhq_s16(v40, vdupq_n_s16(0x73B6u));
  v46 = vqrdmulhq_s16(v29, vdupq_n_s16(0xD4E0u));
  v47 = vqrdmulhq_s16(v29, vdupq_n_s16(0x7884u));
  v48 = vqrdmulhq_s16(v27, vdupq_n_s16(0x1F1Au));
  v49 = vqrdmulhq_s16(v27, vdupq_n_s16(0x7C2Au));
  v50 = vqrdmulhq_s16(v41, vdupq_n_s16(0xBE32u));
  v51 = vqrdmulhq_s16(v41, vdupq_n_s16(0x6DCAu));
  v52 = vqrdmulhq_s16(v19, vdupq_n_s16(0xED38u));
  v53 = vqrdmulhq_s16(v19, vdupq_n_s16(0x7E9Eu));
  v41.i64[0] = 0x8C8C8C8C8C8C8C8CLL;
  v41.i64[1] = 0x8C8C8C8C8C8C8C8CLL;
  v54 = vqrdmulhq_s16(v15, vnegq_f16(v41));
  v41.i64[0] = 0x9D009D009D009DLL;
  v41.i64[1] = 0x9D009D009D009DLL;
  v200 = vqrdmulhq_s16(v15, vnegq_f16(v41));
  v202 = v54;
  v55 = vqrdmulhq_s16(v39, vdupq_n_s16(0x3C56u));
  v56 = vqrdmulhq_s16(v39, vdupq_n_s16(0x70E2u));
  v57 = vqrdmulhq_s16(v28, vdupq_n_s16(0xDAD8u));
  v58 = vqrdmulhq_s16(v28, vdupq_n_s16(0x7A7Eu));
  v59 = vsubq_s16(v46, v44);
  v217 = vaddq_s16(v46, v44);
  v194 = vaddq_s16(v50, v48);
  v60 = vsubq_s16(v48, v50);
  v61 = vsubq_s16(v49, v51);
  v169 = vaddq_s16(v51, v49);
  v198 = vaddq_s16(v47, v45);
  v62 = vsubq_s16(v47, v45);
  v203 = vqrdmulhq_s16(v26, vdupq_n_s16(0x7D8Au));
  v205 = vqrdmulhq_s16(v26, vdupq_n_s16(0x18F8u));
  v63 = vsubq_s16(v57, v55);
  v207 = vaddq_s16(v57, v55);
  v209 = vaddq_s16(v58, v56);
  v64 = vdupq_n_s16(0xC13Bu);
  v65 = vdupq_n_s16(0xC7Cu);
  v66 = vsubq_s16(v58, v56);
  v190 = v43;
  v213 = v42;
  v67 = vmlal_s16(vmull_s16(*v43.i8, *v65.i8), *v42.i8, *v64.i8);
  v68 = vmlal_high_s16(vmull_high_s16(v43, v65), v42, v64);
  v69 = vdupq_n_s16(0x3EC5u);
  v70 = vmlal_s16(vmull_s16(*v43.i8, *v69.i8), *v42.i8, *v65.i8);
  v71 = vmlal_high_s16(vmull_high_s16(v43, v69), v42, v65);
  v72 = vdupq_n_s16(0xF384u);
  v73 = vmlal_s16(vmull_s16(*v62.i8, *v64.i8), *v59.i8, *v72.i8);
  v74 = vmlal_high_s16(vmull_high_s16(v62, v64), v59, v72);
  v75 = vmlal_s16(vmull_s16(*v62.i8, *v65.i8), *v59.i8, *v64.i8);
  v76 = vmlal_high_s16(vmull_high_s16(v62, v65), v59, v64);
  v77 = vdupq_n_s16(0xDC72u);
  v78 = vdupq_n_s16(0x3537u);
  v215 = vmlal_s16(vmull_s16(*v61.i8, *v78.i8), *v60.i8, *v77.i8);
  v79 = vdupq_n_s16(0x238Eu);
  v80 = vmull_high_s16(v61, v79);
  v81 = vmlal_high_s16(vmull_high_s16(v61, v78), v60, v77);
  v82 = vmlal_s16(vmull_s16(*v61.i8, *v79.i8), *v60.i8, *v78.i8);
  v83 = vdupq_n_s16(0xCAC9u);
  v84 = vmlal_high_s16(v80, v60, v78);
  v85 = v52;
  v86 = vmlal_s16(vmull_s16(*v53.i8, *v77.i8), *v52.i8, *v83.i8);
  v87 = vmlal_high_s16(vmull_high_s16(v53, v77), v52, v83);
  v88 = vmlal_s16(vmull_s16(*v53.i8, *v78.i8), *v52.i8, *v77.i8);
  v89 = vmlal_high_s16(vmull_high_s16(v53, v78), v52, v77);
  v166 = v52;
  v90 = vqrdmulhq_s16(v12, vdupq_n_s16(0x5A82u));
  v184 = vqrdmulhq_s16(v38, vdupq_n_s16(0x7642u));
  v186 = vqrdmulhq_s16(v38, vdupq_n_s16(0x30FCu));
  v91 = vdupq_n_s16(0xC4DFu);
  v92 = vdupq_n_s16(0xE782u);
  v172 = vmlal_s16(vmull_s16(*v66.i8, *v91.i8), *v63.i8, *v92.i8);
  v180 = vmlal_high_s16(vmull_high_s16(v66, v91), v63, v92);
  v93 = vdupq_n_s16(0x187Eu);
  v176 = vmlal_s16(vmull_s16(*v66.i8, *v93.i8), *v63.i8, *v91.i8);
  v178 = vmlal_high_s16(vmull_high_s16(v66, v93), v63, v91);
  v94 = vrshrn_n_s32(v67, 0xEuLL);
  *v52.i8 = vrshrn_n_s32(v73, 0xEuLL);
  *v77.i8 = vsub_s16(v94, *v52.i8);
  v95 = vrshrn_high_n_s32(v94, v68, 0xEuLL);
  *v68.i8 = vsub_s16(vrshrn_n_s32(v68, 0xEuLL), vrshrn_n_s32(v74, 0xEuLL));
  *v42.i8 = vrshrn_n_s32(v70, 0xEuLL);
  *v43.i8 = vrshrn_n_s32(v75, 0xEuLL);
  *v70.i8 = vsub_s16(*v42.i8, *v43.i8);
  v96 = vrshrn_high_n_s32(*v42.i8, v71, 0xEuLL);
  *v71.i8 = vsub_s16(vrshrn_n_s32(v71, 0xEuLL), vrshrn_n_s32(v76, 0xEuLL));
  v196 = vmlal_s16(vmull_s16(*v70.i8, *v93.i8), *v77.i8, *v91.i8);
  v97 = vdupq_n_s16(0x3B21u);
  v182 = vmlal_s16(vmull_s16(*v70.i8, *v97.i8), *v77.i8, *v93.i8);
  v220 = vmlal_s16(vmull_s16(*v71.i8, *v93.i8), *v68.i8, *v91.i8);
  v192 = vmlal_s16(vmull_s16(*v71.i8, *v97.i8), *v68.i8, *v93.i8);
  v98 = vsubq_s16(v85, v194);
  v99 = vsubq_s16(v53, v169);
  v188 = vmlal_s16(vmull_s16(*v99.i8, *v91.i8), *v98.i8, *v92.i8);
  v219 = vmlal_high_s16(vmull_high_s16(v99, v91), v98, v92);
  v100 = vmlal_s16(vmull_s16(*v99.i8, *v93.i8), *v98.i8, *v91.i8);
  v101 = vmlal_high_s16(vmull_high_s16(v99, v93), v98, v91);
  *v98.i8 = vrshrn_n_s32(v215, 0xEuLL);
  *v85.i8 = vrshrn_n_s32(v86, 0xEuLL);
  *v99.i8 = vsub_s16(*v85.i8, *v98.i8);
  v102 = vrshrn_high_n_s32(*v98.i8, v81, 0xEuLL);
  v103 = vrshrn_high_n_s32(*v85.i8, v87, 0xEuLL);
  *v67.i8 = vsub_s16(vrshrn_n_s32(v87, 0xEuLL), vrshrn_n_s32(v81, 0xEuLL));
  *v77.i8 = vrshrn_n_s32(v82, 0xEuLL);
  *v87.i8 = vrshrn_n_s32(v88, 0xEuLL);
  *v86.i8 = vsub_s16(*v87.i8, *v77.i8);
  v104 = vrshrn_high_n_s32(*v77.i8, v84, 0xEuLL);
  v105 = vrshrn_high_n_s32(*v87.i8, v89, 0xEuLL);
  *v89.i8 = vsub_s16(vrshrn_n_s32(v89, 0xEuLL), vrshrn_n_s32(v84, 0xEuLL));
  v174 = vmlal_s16(vmull_s16(*v86.i8, *v91.i8), *v99.i8, *v92.i8);
  v216 = vmlal_s16(vmull_s16(*v89.i8, *v91.i8), *v67.i8, *v92.i8);
  v106 = vmlal_s16(vmull_s16(*v86.i8, *v93.i8), *v99.i8, *v91.i8);
  v107 = vmlal_s16(vmull_s16(*v89.i8, *v93.i8), *v67.i8, *v91.i8);
  v108 = vmlal_s16(vmull_s16(*v200.i8, *v93.i8), *v202.i8, *v91.i8);
  v109 = vmlal_high_s16(vmull_high_s16(v200, v93), v202, v91);
  v110 = vsubq_s16(v213, v217);
  v111 = vsubq_s16(v190, v198);
  v112 = vmlal_s16(vmull_s16(*v111.i8, *v93.i8), *v110.i8, *v91.i8);
  v113 = vmlal_high_s16(vmull_high_s16(v111, v93), v110, v91);
  v114 = vmlal_s16(vmull_s16(*v111.i8, *v97.i8), *v110.i8, *v93.i8);
  v115 = vmlal_high_s16(vmull_high_s16(v111, v97), v110, v93);
  v116 = vmlal_s16(vmull_s16(*v200.i8, *v97.i8), *v202.i8, *v93.i8);
  v117 = vmlal_high_s16(vmull_high_s16(v200, v97), v202, v93);
  v118 = vaddq_s16(v217, v213);
  v214 = vaddq_s16(vrshrn_high_n_s32(*v52.i8, v74, 0xEuLL), v95);
  v211 = v118;
  v212 = vaddq_s16(v103, v102);
  v218 = vaddq_s16(v166, v194);
  v167 = vaddq_s16(v105, v104);
  v170 = vaddq_s16(v53, v169);
  v119 = vaddq_s16(vrshrn_high_n_s32(*v43.i8, v76, 0xEuLL), v96);
  v120 = vaddq_s16(v198, v190);
  v121 = vaddq_s16(v186, v90);
  v122 = vsubq_s16(v90, v186);
  v123 = vaddq_s16(v184, v90);
  v124 = vsubq_s16(v90, v184);
  v125 = vdupq_n_s32(0x2D41u);
  v126 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v203.i8, *v205.i8), v125), 0xEuLL), vmulq_s32(vsubl_high_s16(v203, v205), v125), 0xEuLL);
  v127 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v203.i8, *v205.i8), v125), 0xEuLL), vmulq_s32(vaddl_high_s16(v203, v205), v125), 0xEuLL);
  *v60.i8 = vrshrn_n_s32(v108, 0xEuLL);
  *v108.i8 = vrshrn_n_s32(v172, 0xEuLL);
  *v102.i8 = vsub_s16(*v60.i8, *v108.i8);
  v128 = vaddq_s16(vrshrn_high_n_s32(*v108.i8, v180, 0xEuLL), vrshrn_high_n_s32(*v60.i8, v109, 0xEuLL));
  v129 = vaddq_s16(v207, v202);
  v130 = vsubq_s16(v202, v207);
  *v116.i8 = vrshrn_n_s32(v116, 0xEuLL);
  *v110.i8 = vrshrn_n_s32(v176, 0xEuLL);
  *v93.i8 = vsub_s16(*v116.i8, *v110.i8);
  v131 = vaddq_s16(vrshrn_high_n_s32(*v110.i8, v178, 0xEuLL), vrshrn_high_n_s32(*v116.i8, v117, 0xEuLL));
  v132 = vsubq_s16(v200, v209);
  v199 = vaddq_s16(v209, v200);
  v208 = vaddq_s16(v124, v205);
  v133 = vsubq_s16(v124, v205);
  v206 = vaddq_s16(v126, v122);
  v134 = vsubq_s16(v122, v126);
  v201 = vaddq_s16(v127, v121);
  v135 = vsubq_s16(v121, v127);
  v195 = vaddq_s16(v123, v203);
  v136 = vsubq_s16(v123, v203);
  *v124.i8 = vsub_s16(vrshrn_n_s32(v117, 0xEuLL), vrshrn_n_s32(v178, 0xEuLL));
  *v123.i8 = vsub_s16(vrshrn_n_s32(v109, 0xEuLL), vrshrn_n_s32(v180, 0xEuLL));
  v137 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v93.i8, *v102.i8), v125), 0xEuLL), vmulq_s32(vsubl_s16(*v124.i8, *v123.i8), v125), 0xEuLL);
  v204 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v93.i8, *v102.i8), v125), 0xEuLL), vmulq_s32(vaddl_s16(*v124.i8, *v123.i8), v125), 0xEuLL);
  v138 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v132.i8, *v130.i8), v125), 0xEuLL), vmulq_s32(vsubl_high_s16(v132, v130), v125), 0xEuLL);
  v139 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v132.i8, *v130.i8), v125), 0xEuLL), vmulq_s32(vaddl_high_s16(v132, v130), v125), 0xEuLL);
  *v132.i8 = vrshrn_n_s32(v114, 0xEuLL);
  *v124.i8 = vrshrn_n_s32(v100, 0xEuLL);
  *v121.i8 = vsub_s16(*v132.i8, *v124.i8);
  v140 = vaddq_s16(vrshrn_high_n_s32(*v124.i8, v101, 0xEuLL), vrshrn_high_n_s32(*v132.i8, v115, 0xEuLL));
  *v132.i8 = vrshrn_n_s32(v182, 0xEuLL);
  *v124.i8 = vrshrn_n_s32(v106, 0xEuLL);
  *v66.i8 = vsub_s16(*v132.i8, *v124.i8);
  v210 = vaddq_s16(vrshrn_high_n_s32(*v124.i8, v107, 0xEuLL), vrshrn_high_n_s32(*v132.i8, v192, 0xEuLL));
  v141 = vsubq_s16(v119, v167);
  v168 = vaddq_s16(v167, v119);
  v142 = vsubq_s16(v120, v170);
  v173 = vaddq_s16(v170, v120);
  v179 = vaddq_s16(v135, v128);
  v181 = vaddq_s16(v136, v129);
  v183 = vsubq_s16(v135, v128);
  v185 = vsubq_s16(v136, v129);
  v143 = vaddq_s16(v137, v134);
  v191 = vsubq_s16(v134, v137);
  v177 = vaddq_s16(v138, v133);
  v187 = vsubq_s16(v133, v138);
  *v138.i8 = vsub_s16(vrshrn_n_s32(v115, 0xEuLL), vrshrn_n_s32(v101, 0xEuLL));
  *v135.i8 = vrshrn_n_s32(v112, 0xEuLL);
  v144 = vrshrn_high_n_s32(*v135.i8, v113, 0xEuLL);
  *v73.i8 = vsub_s16(vrshrn_n_s32(v113, 0xEuLL), vrshrn_n_s32(v219, 0xEuLL));
  *v123.i8 = vrshrn_n_s32(v188, 0xEuLL);
  *v115.i8 = vsub_s16(*v135.i8, *v123.i8);
  v189 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v121.i8, *v115.i8), v125), 0xEuLL), vmulq_s32(vsubl_s16(*v138.i8, *v73.i8), v125), 0xEuLL);
  v171 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v121.i8, *v115.i8), v125), 0xEuLL), vmulq_s32(vaddl_s16(*v138.i8, *v73.i8), v125), 0xEuLL);
  *v73.i8 = vsub_s16(vrshrn_n_s32(v192, 0xEuLL), vrshrn_n_s32(v107, 0xEuLL));
  *v121.i8 = vsub_s16(vrshrn_n_s32(v220, 0xEuLL), vrshrn_n_s32(v216, 0xEuLL));
  *v134.i8 = vrshrn_n_s32(v196, 0xEuLL);
  *v113.i8 = vrshrn_n_s32(v174, 0xEuLL);
  *v115.i8 = vsub_s16(*v134.i8, *v113.i8);
  v145 = vsubl_s16(*v66.i8, *v115.i8);
  v146 = vaddl_s16(*v66.i8, *v115.i8);
  v147 = vsubl_s16(*v73.i8, *v121.i8);
  v148 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v146, v125), 0xEuLL), vmulq_s32(vaddl_s16(*v73.i8, *v121.i8), v125), 0xEuLL);
  v149 = vsubq_s16(v214, v212);
  v150 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v141.i8, *v149.i8), v125), 0xEuLL), vmulq_s32(vsubl_high_s16(v141, v149), v125), 0xEuLL);
  v151 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v141.i8, *v149.i8), v125), 0xEuLL), vmulq_s32(vaddl_high_s16(v141, v149), v125), 0xEuLL);
  v152 = vsubq_s16(v211, v218);
  v153 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v142.i8, *v152.i8), v125), 0xEuLL), vmulq_s32(vsubl_high_s16(v142, v152), v125), 0xEuLL);
  v197 = vaddq_s16(v195, v199);
  *a2 = vaddq_s16(v197, v173);
  v193 = vaddq_s16(v201, v131);
  a2[2] = vaddq_s16(v193, v168);
  v175 = vaddq_s16(v204, v206);
  a2[4] = vaddq_s16(v175, v210);
  v154 = vaddq_s16(v139, v208);
  a2[6] = vaddq_s16(v154, v140);
  a2[8] = vaddq_s16(v171, v177);
  a2[10] = vaddq_s16(v148, v143);
  v155 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v142.i8, *v152.i8), v125), 0xEuLL), vmulq_s32(vaddl_high_s16(v142, v152), v125), 0xEuLL);
  a2[12] = vaddq_s16(v151, v179);
  a2[14] = vaddq_s16(v155, v181);
  a2[16] = vaddq_s16(v153, v185);
  a2[18] = vaddq_s16(v150, v183);
  v156 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v145, v125), 0xEuLL), vmulq_s32(v147, v125), 0xEuLL);
  a2[20] = vaddq_s16(v156, v191);
  a2[22] = vaddq_s16(v189, v187);
  v157 = vaddq_s16(vrshrn_high_n_s32(*v123.i8, v219, 0xEuLL), v144);
  v158 = vsubq_s16(v208, v139);
  a2[24] = vaddq_s16(v158, v157);
  v159 = vaddq_s16(vrshrn_high_n_s32(*v113.i8, v216, 0xEuLL), vrshrn_high_n_s32(*v134.i8, v220, 0xEuLL));
  v160 = vsubq_s16(v206, v204);
  a2[26] = vaddq_s16(v160, v159);
  v161 = vaddq_s16(v212, v214);
  v162 = vsubq_s16(v201, v131);
  a2[28] = vaddq_s16(v162, v161);
  v163 = vaddq_s16(v218, v211);
  v164 = vsubq_s16(v195, v199);
  a2[30] = vaddq_s16(v164, v163);
  a2[32] = vsubq_s16(v164, v163);
  a2[34] = vsubq_s16(v162, v161);
  a2[36] = vsubq_s16(v160, v159);
  a2[38] = vsubq_s16(v158, v157);
  a2[40] = vsubq_s16(v187, v189);
  a2[42] = vsubq_s16(v191, v156);
  a2[44] = vsubq_s16(v183, v150);
  a2[46] = vsubq_s16(v185, v153);
  a2[48] = vsubq_s16(v181, v155);
  a2[50] = vsubq_s16(v179, v151);
  a2[52] = vsubq_s16(v143, v148);
  a2[54] = vsubq_s16(v177, v171);
  a2[56] = vsubq_s16(v154, v140);
  a2[58] = vsubq_s16(v175, v210);
  a2[60] = vsubq_s16(v193, v168);
  result = vsubq_s16(v197, v173);
  a2[62] = result;
  return result;
}

int16x8_t *vpx_idct32_16_neon(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  v395 = result[2];
  v368 = result[1];
  v371 = result[3];
  v4 = vtrn2q_s16(*result, v395);
  v387 = result[4];
  v389 = result[6];
  v361 = result[5];
  v365 = result[7];
  v5 = vtrn2q_s16(v387, v389);
  v380 = result[8];
  v384 = result[10];
  v355 = result[9];
  v357 = result[11];
  v6 = vtrn2q_s16(v380, v384);
  v375 = result[12];
  v377 = result[14];
  v349 = result[13];
  v352 = result[15];
  v7 = vtrn2q_s16(v375, v377);
  v8 = vtrn1q_s32(v4, v5);
  v9 = vtrn2q_s32(v4, v5);
  v10 = vtrn1q_s32(v6, v7);
  v11 = vtrn2q_s32(v6, v7);
  v6.i64[0] = v8.i64[0];
  v6.i64[1] = v10.i64[0];
  v12 = vzip2q_s64(v9, v11);
  v13 = vtrn2q_s16(v368, v371);
  v14 = vtrn2q_s16(v361, v365);
  v15 = vtrn2q_s16(v355, v357);
  v16 = vtrn2q_s16(v349, v352);
  v17 = vtrn1q_s32(v13, v14);
  v18 = vtrn2q_s32(v13, v14);
  v19 = vtrn1q_s32(v15, v16);
  v20 = vtrn2q_s32(v15, v16);
  v13.i64[0] = v17.i64[0];
  v13.i64[1] = v19.i64[0];
  v21 = vzip2q_s64(v18, v20);
  v324 = vqrdmulhq_s16(v6, vdupq_n_s16(0x648u));
  v15.i64[0] = 0x27002700270027;
  v15.i64[1] = 0x27002700270027;
  v22 = vqrdmulhq_s16(v6, vnegq_f16(v15));
  v23 = vqrdmulhq_s16(v21, vdupq_n_s16(0xAA0Au));
  v24 = vqrdmulhq_s16(v21, vdupq_n_s16(0x5ED8u));
  v25 = vqrdmulhq_s16(v13, vdupq_n_s16(0x36BAu));
  v26 = vqrdmulhq_s16(v13, vdupq_n_s16(0x73B6u));
  v27 = vqrdmulhq_s16(v12, vdupq_n_s16(0xD4E0u));
  v320 = vqrdmulhq_s16(v12, vdupq_n_s16(0x7884u));
  v28 = vsubq_s16(v324, v23);
  v29 = vdupq_n_s16(0xC13Bu);
  v30 = vsubq_s16(v22, v24);
  v31 = v24;
  v32 = v22;
  v33 = vdupq_n_s16(0xC7Cu);
  v330 = vmlal_s16(vmull_s16(*v30.i8, *v33.i8), *v28.i8, *v29.i8);
  v34 = vdupq_n_s16(0x3EC5u);
  v316 = vmlal_high_s16(vmull_high_s16(v30, v33), v28, v29);
  v328 = vmlal_s16(vmull_s16(*v30.i8, *v34.i8), *v28.i8, *v33.i8);
  v346 = vmlal_high_s16(vmull_high_s16(v30, v34), v28, v33);
  v35 = vsubq_s16(v27, v25);
  v36 = vdupq_n_s16(0xF384u);
  v37 = vsubq_s16(v320, v26);
  v38 = vmlal_s16(vmull_s16(*v37.i8, *v29.i8), *v35.i8, *v36.i8);
  v307 = vmlal_high_s16(vmull_high_s16(v37, v29), v35, v36);
  v39 = vmlal_s16(vmull_s16(*v37.i8, *v33.i8), *v35.i8, *v29.i8);
  v323 = vmlal_high_s16(vmull_high_s16(v37, v33), v35, v29);
  v40 = vzip2q_s64(v8, v10);
  v41 = vzip2q_s64(v17, v19);
  v10.i64[0] = v9.i64[0];
  v10.i64[1] = v11.i64[0];
  v18.i64[1] = v20.i64[0];
  v42 = vqrdmulhq_s16(v40, vdupq_n_s16(0x1F1Au));
  v43 = vqrdmulhq_s16(v40, vdupq_n_s16(0x7C2Au));
  v44 = vqrdmulhq_s16(v18, vdupq_n_s16(0xBE32u));
  v45 = vqrdmulhq_s16(v18, vdupq_n_s16(0x6DCAu));
  v46 = vqrdmulhq_s16(v41, vdupq_n_s16(0x4C40u));
  v47 = vqrdmulhq_s16(v41, vdupq_n_s16(0x66D0u));
  v48 = vqrdmulhq_s16(v10, vdupq_n_s16(0xED38u));
  v49 = vqrdmulhq_s16(v10, vdupq_n_s16(0x7E9Eu));
  v50 = vsubq_s16(v42, v44);
  v51 = vdupq_n_s16(0xDC72u);
  v52 = vsubq_s16(v43, v45);
  v53 = vdupq_n_s16(0x3537u);
  v342 = vmlal_s16(vmull_s16(*v52.i8, *v53.i8), *v50.i8, *v51.i8);
  v54 = vdupq_n_s16(0x238Eu);
  v333 = vmlal_high_s16(vmull_high_s16(v52, v53), v50, v51);
  v326 = vmlal_s16(vmull_s16(*v52.i8, *v54.i8), *v50.i8, *v53.i8);
  v344 = vmlal_high_s16(vmull_high_s16(v52, v54), v50, v53);
  v55 = vsubq_s16(v48, v46);
  v56 = vdupq_n_s16(0xCAC9u);
  v57 = vsubq_s16(v49, v47);
  v58 = vmlal_s16(vmull_s16(*v57.i8, *v51.i8), *v55.i8, *v56.i8);
  v322 = vmlal_high_s16(vmull_high_s16(v57, v51), v55, v56);
  v59 = vmlal_s16(vmull_s16(*v57.i8, *v53.i8), *v55.i8, *v51.i8);
  v60 = vmlal_high_s16(vmull_high_s16(v57, v53), v55, v51);
  v334 = vtrn1q_s16(v380, v384);
  v336 = vtrn1q_s16(*result, v395);
  v338 = vtrn1q_s16(v375, v377);
  v340 = vtrn1q_s16(v387, v389);
  v61 = vtrn2q_s32(v336, v340);
  v62 = vtrn2q_s32(v334, v338);
  v51.i64[0] = v61.i64[0];
  v51.i64[1] = v62.i64[0];
  v63 = vzip2q_s64(v61, v62);
  v332 = vtrn1q_s16(v368, v371);
  v64 = vtrn1q_s16(v361, v365);
  v358 = vtrn1q_s16(v355, v357);
  v362 = vtrn1q_s16(v349, v352);
  v65 = vtrn2q_s32(v332, v64);
  v66 = vtrn2q_s32(v358, v362);
  v67 = vzip2q_s64(v65, v66);
  v65.i64[1] = v66.i64[0];
  v66.i64[0] = 0x8C8C8C8C8C8C8C8CLL;
  v66.i64[1] = 0x8C8C8C8C8C8C8C8CLL;
  v68 = vqrdmulhq_s16(v51, vnegq_f16(v66));
  v66.i64[0] = 0x9D009D009D009DLL;
  v66.i64[1] = 0x9D009D009D009DLL;
  v312 = v68;
  v313 = vqrdmulhq_s16(v67, vdupq_n_s16(0xAECCu));
  v314 = vqrdmulhq_s16(v51, vnegq_f16(v66));
  v315 = vqrdmulhq_s16(v67, vdupq_n_s16(0x62F2u));
  v308 = vqrdmulhq_s16(v65, vdupq_n_s16(0x70E2u));
  v309 = vqrdmulhq_s16(v65, vdupq_n_s16(0x3C56u));
  v310 = vqrdmulhq_s16(v63, vdupq_n_s16(0xDAD8u));
  v69 = vqrdmulhq_s16(v63, vdupq_n_s16(0x7A7Eu));
  v301 = vaddq_s16(v23, v324);
  v302 = vaddq_s16(v27, v25);
  v70 = vaddq_s16(v44, v42);
  v305 = vaddq_s16(v49, v47);
  v306 = vaddq_s16(v48, v46);
  v303 = vaddq_s16(v320, v26);
  v304 = vaddq_s16(v31, v32);
  v71 = vdupq_n_s16(0xC4DFu);
  v72 = vsubq_s16(v68, v313);
  v73 = vsubq_s16(v314, v315);
  v74 = vdupq_n_s16(0x187Eu);
  v372 = vmlal_s16(vmull_s16(*v73.i8, *v74.i8), *v72.i8, *v71.i8);
  v390 = vmlal_high_s16(vmull_high_s16(v73, v74), v72, v71);
  v75 = vdupq_n_s16(0x3B21u);
  v381 = vmlal_s16(vmull_s16(*v73.i8, *v75.i8), *v72.i8, *v74.i8);
  v385 = vmlal_high_s16(vmull_high_s16(v73, v75), v72, v74);
  v76 = vsubq_s16(v310, v309);
  v77 = vdupq_n_s16(0xE782u);
  v78 = vsubq_s16(v69, v308);
  v317 = vmlal_s16(vmull_s16(*v78.i8, *v71.i8), *v76.i8, *v77.i8);
  v353 = vmlal_high_s16(vmull_high_s16(v78, v71), v76, v77);
  v325 = vmlal_s16(vmull_s16(*v78.i8, *v74.i8), *v76.i8, *v71.i8);
  v350 = vmlal_high_s16(vmull_high_s16(v78, v74), v76, v71);
  *v78.i8 = vsub_s16(vrshrn_n_s32(v316, 0xEuLL), vrshrn_n_s32(v307, 0xEuLL));
  *v32.i8 = vsub_s16(vrshrn_n_s32(v346, 0xEuLL), vrshrn_n_s32(v323, 0xEuLL));
  *v31.i8 = vrshrn_n_s32(v330, 0xEuLL);
  v79 = vrshrn_n_s32(v328, 0xEuLL);
  *v68.i8 = vrshrn_n_s32(v38, 0xEuLL);
  *v76.i8 = vrshrn_n_s32(v39, 0xEuLL);
  *v48.i8 = vsub_s16(*v31.i8, *v68.i8);
  *v46.i8 = vsub_s16(v79, *v76.i8);
  v318 = vmlal_s16(vmull_s16(*v46.i8, *v74.i8), *v48.i8, *v71.i8);
  v396 = vmlal_s16(vmull_s16(*v46.i8, *v75.i8), *v48.i8, *v74.i8);
  v388 = vmlal_s16(vmull_s16(*v32.i8, *v74.i8), *v78.i8, *v71.i8);
  v393 = vmlal_s16(vmull_s16(*v32.i8, *v75.i8), *v78.i8, *v74.i8);
  v80 = vsubq_s16(v301, v302);
  v81 = vsubq_s16(v304, v303);
  v378 = vmlal_s16(vmull_s16(*v81.i8, *v74.i8), *v80.i8, *v71.i8);
  v356 = vmlal_high_s16(vmull_high_s16(v81, v74), v80, v71);
  v369 = vmlal_s16(vmull_s16(*v81.i8, *v75.i8), *v80.i8, *v74.i8);
  v376 = vmlal_high_s16(vmull_high_s16(v81, v75), v80, v74);
  v82 = vsubq_s16(v306, v70);
  v83 = v70;
  v84 = vaddq_s16(v45, v43);
  v85 = vsubq_s16(v305, v84);
  v319 = vmlal_s16(vmull_s16(*v85.i8, *v71.i8), *v82.i8, *v77.i8);
  v329 = vmlal_high_s16(vmull_high_s16(v85, v71), v82, v77);
  v321 = vmlal_s16(vmull_s16(*v85.i8, *v74.i8), *v82.i8, *v71.i8);
  v331 = vmlal_high_s16(vmull_high_s16(v85, v74), v82, v71);
  *v82.i8 = vsub_s16(vrshrn_n_s32(v322, 0xEuLL), vrshrn_n_s32(v333, 0xEuLL));
  *v85.i8 = vsub_s16(vrshrn_n_s32(v60, 0xEuLL), vrshrn_n_s32(v344, 0xEuLL));
  *v81.i8 = vrshrn_n_s32(v342, 0xEuLL);
  *v43.i8 = vrshrn_n_s32(v326, 0xEuLL);
  *v45.i8 = vrshrn_n_s32(v58, 0xEuLL);
  *v56.i8 = vrshrn_n_s32(v59, 0xEuLL);
  *v46.i8 = vsub_s16(*v45.i8, *v81.i8);
  *v59.i8 = vsub_s16(*v56.i8, *v43.i8);
  v86 = vmlal_s16(vmull_s16(*v59.i8, *v71.i8), *v46.i8, *v77.i8);
  v311 = vmlal_s16(vmull_s16(*v85.i8, *v71.i8), *v82.i8, *v77.i8);
  v327 = vmlal_s16(vmull_s16(*v59.i8, *v74.i8), *v46.i8, *v71.i8);
  v343 = vmlal_s16(vmull_s16(*v85.i8, *v74.i8), *v82.i8, *v71.i8);
  v87 = vtrn1q_s32(v336, v340);
  v88 = vtrn1q_s32(v334, v338);
  v89 = vzip2q_s64(v87, v88);
  v82.i64[0] = v87.i64[0];
  v82.i64[1] = v88.i64[0];
  v90 = vtrn1q_s32(v332, v64);
  v91 = vtrn1q_s32(v358, v362);
  v92 = vzip2q_s64(v90, v91);
  v59.i64[0] = v90.i64[0];
  v59.i64[1] = v91.i64[0];
  v93 = vqrdmulhq_s16(v89, vdupq_n_s16(0x18F8u));
  v94 = vqrdmulhq_s16(v89, vdupq_n_s16(0x7D8Au));
  v95 = vqrdmulhq_s16(v92, vdupq_n_s16(0xB8E4u));
  v96 = vqrdmulhq_s16(v92, vdupq_n_s16(0x6A6Eu));
  v97 = vaddq_s16(v313, v312);
  v98 = vaddq_s16(v310, v309);
  v99 = vaddq_s16(v69, v308);
  v100 = vaddq_s16(v315, v314);
  v101 = vqrdmulhq_s16(v82, vdupq_n_s16(0x5A82u));
  v102 = vqrdmulhq_s16(v59, vdupq_n_s16(0x30FCu));
  v103 = vqrdmulhq_s16(v59, vdupq_n_s16(0x7642u));
  v104 = vaddq_s16(v95, v93);
  v105 = vsubq_s16(v93, v95);
  v106 = vsubq_s16(v94, v96);
  v107 = vaddq_s16(v96, v94);
  v108 = vaddq_s16(vrshrn_high_n_s32(*v45.i8, v322, 0xEuLL), vrshrn_high_n_s32(*v81.i8, v333, 0xEuLL));
  v339 = vaddq_s16(vrshrn_high_n_s32(*v68.i8, v307, 0xEuLL), vrshrn_high_n_s32(*v31.i8, v316, 0xEuLL));
  v341 = vaddq_s16(v306, v83);
  v359 = vaddq_s16(vrshrn_high_n_s32(*v56.i8, v60, 0xEuLL), vrshrn_high_n_s32(*v43.i8, v344, 0xEuLL));
  v345 = vaddq_s16(v302, v301);
  v347 = vaddq_s16(vrshrn_high_n_s32(*v76.i8, v323, 0xEuLL), vrshrn_high_n_s32(v79, v346, 0xEuLL));
  v363 = vaddq_s16(v303, v304);
  v366 = vaddq_s16(v305, v84);
  v109 = vaddq_s16(v102, v101);
  v110 = vsubq_s16(v101, v102);
  v111 = vaddq_s16(v103, v101);
  v112 = vsubq_s16(v101, v103);
  v113 = vdupq_n_s32(0x2D41u);
  v114 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v106.i8, *v105.i8), v113), 0xEuLL), vmulq_s32(vsubl_high_s16(v106, v105), v113), 0xEuLL);
  v115 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v106.i8, *v105.i8), v113), 0xEuLL), vmulq_s32(vaddl_high_s16(v106, v105), v113), 0xEuLL);
  *v106.i8 = vrshrn_n_s32(v372, 0xEuLL);
  v116 = vrshrn_n_s32(v317, 0xEuLL);
  *v84.i8 = vsub_s16(*v106.i8, v116);
  v373 = vaddq_s16(vrshrn_high_n_s32(v116, v353, 0xEuLL), vrshrn_high_n_s32(*v106.i8, v390, 0xEuLL));
  v117 = vaddq_s16(v98, v97);
  v118 = vsubq_s16(v97, v98);
  *v97.i8 = vrshrn_n_s32(v381, 0xEuLL);
  *v98.i8 = vrshrn_n_s32(v325, 0xEuLL);
  *v94.i8 = vsub_s16(*v97.i8, *v98.i8);
  v382 = vaddq_s16(vrshrn_high_n_s32(*v98.i8, v350, 0xEuLL), vrshrn_high_n_s32(*v97.i8, v385, 0xEuLL));
  v119 = vsubq_s16(v100, v99);
  v120 = vaddq_s16(v112, v104);
  v121 = vsubq_s16(v112, v104);
  v335 = vaddq_s16(v114, v110);
  v337 = vaddq_s16(v99, v100);
  v122 = vsubq_s16(v110, v114);
  v123 = vaddq_s16(v115, v109);
  v124 = vsubq_s16(v109, v115);
  v125 = vaddq_s16(v111, v107);
  v126 = vsubq_s16(v111, v107);
  *v109.i8 = vsub_s16(vrshrn_n_s32(v385, 0xEuLL), vrshrn_n_s32(v350, 0xEuLL));
  *v107.i8 = vsub_s16(vrshrn_n_s32(v390, 0xEuLL), vrshrn_n_s32(v353, 0xEuLL));
  v127 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v94.i8, *v84.i8), v113), 0xEuLL), vmulq_s32(vsubl_s16(*v109.i8, *v107.i8), v113), 0xEuLL);
  v128 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v94.i8, *v84.i8), v113), 0xEuLL), vmulq_s32(vaddl_s16(*v109.i8, *v107.i8), v113), 0xEuLL);
  v129 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v119.i8, *v118.i8), v113), 0xEuLL), vmulq_s32(vsubl_high_s16(v119, v118), v113), 0xEuLL);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v119.i8, *v118.i8), v113), 0xEuLL), vmulq_s32(vaddl_high_s16(v119, v118), v113), 0xEuLL);
  *v119.i8 = vrshrn_n_s32(v318, 0xEuLL);
  *v118.i8 = vrshrn_n_s32(v86, 0xEuLL);
  *v111.i8 = vsub_s16(*v119.i8, *v118.i8);
  v391 = vaddq_s16(vrshrn_high_n_s32(*v118.i8, v311, 0xEuLL), vrshrn_high_n_s32(*v119.i8, v388, 0xEuLL));
  *v119.i8 = vrshrn_n_s32(v378, 0xEuLL);
  *v118.i8 = vrshrn_n_s32(v319, 0xEuLL);
  *v56.i8 = vsub_s16(*v119.i8, *v118.i8);
  v379 = vaddq_s16(vrshrn_high_n_s32(*v118.i8, v329, 0xEuLL), vrshrn_high_n_s32(*v119.i8, v356, 0xEuLL));
  v131 = vsubq_s16(v339, v108);
  v351 = vaddq_s16(v341, v345);
  v354 = vaddq_s16(v108, v339);
  v132 = vsubq_s16(v345, v341);
  *v119.i8 = vrshrn_n_s32(v369, 0xEuLL);
  *v118.i8 = vrshrn_n_s32(v321, 0xEuLL);
  v133 = vsub_s16(*v119.i8, *v118.i8);
  v386 = vaddq_s16(vrshrn_high_n_s32(*v118.i8, v331, 0xEuLL), vrshrn_high_n_s32(*v119.i8, v376, 0xEuLL));
  *v119.i8 = vrshrn_n_s32(v396, 0xEuLL);
  *v118.i8 = vrshrn_n_s32(v327, 0xEuLL);
  *v112.i8 = vsub_s16(*v119.i8, *v118.i8);
  v370 = vaddq_s16(vrshrn_high_n_s32(*v118.i8, v343, 0xEuLL), vrshrn_high_n_s32(*v119.i8, v393, 0xEuLL));
  v134 = vsubq_s16(v347, v359);
  v360 = vaddq_s16(v359, v347);
  v135 = vsubq_s16(v363, v366);
  v367 = vaddq_s16(v366, v363);
  v136 = vaddq_s16(v126, v117);
  v137 = vsubq_s16(v126, v117);
  v138 = vaddq_s16(v124, v373);
  v139 = vsubq_s16(v124, v373);
  v397 = vaddq_s16(v127, v122);
  v140 = vsubq_s16(v122, v127);
  v141 = vaddq_s16(v129, v121);
  v142 = vsubq_s16(v121, v129);
  v348 = vaddq_s16(v130, v120);
  v143 = vsubq_s16(v120, v130);
  v364 = vaddq_s16(v128, v335);
  v144 = vsubq_s16(v335, v128);
  v374 = vaddq_s16(v123, v382);
  v145 = vsubq_s16(v123, v382);
  v383 = vaddq_s16(v125, v337);
  v146 = vsubq_s16(v125, v337);
  *v121.i8 = vsub_s16(vrshrn_n_s32(v376, 0xEuLL), vrshrn_n_s32(v331, 0xEuLL));
  *v120.i8 = vsub_s16(vrshrn_n_s32(v356, 0xEuLL), vrshrn_n_s32(v329, 0xEuLL));
  v147 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(v133, *v56.i8), v113), 0xEuLL), vmulq_s32(vsubl_s16(*v121.i8, *v120.i8), v113), 0xEuLL);
  v148 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(v133, *v56.i8), v113), 0xEuLL), vmulq_s32(vaddl_s16(*v121.i8, *v120.i8), v113), 0xEuLL);
  *v109.i8 = vsub_s16(vrshrn_n_s32(v393, 0xEuLL), vrshrn_n_s32(v343, 0xEuLL));
  *v107.i8 = vsub_s16(vrshrn_n_s32(v388, 0xEuLL), vrshrn_n_s32(v311, 0xEuLL));
  v149 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v112.i8, *v111.i8), v113), 0xEuLL), vmulq_s32(vsubl_s16(*v109.i8, *v107.i8), v113), 0xEuLL);
  v150 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v112.i8, *v111.i8), v113), 0xEuLL), vmulq_s32(vaddl_s16(*v109.i8, *v107.i8), v113), 0xEuLL);
  v151 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v134.i8, *v131.i8), v113), 0xEuLL), vmulq_s32(vsubl_high_s16(v134, v131), v113), 0xEuLL);
  v152 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v134.i8, *v131.i8), v113), 0xEuLL), vmulq_s32(vaddl_high_s16(v134, v131), v113), 0xEuLL);
  v153 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v135.i8, *v132.i8), v113), 0xEuLL), vmulq_s32(vsubl_high_s16(v135, v132), v113), 0xEuLL);
  v154 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v135.i8, *v132.i8), v113), 0xEuLL), vmulq_s32(vaddl_high_s16(v135, v132), v113), 0xEuLL);
  v155 = vqaddq_s16(v146, v351);
  v156 = vqsubq_s16(v146, v351);
  v157 = vqaddq_s16(v145, v354);
  v158 = vqsubq_s16(v145, v354);
  v159 = vqaddq_s16(v144, v391);
  v160 = vqsubq_s16(v144, v391);
  v161 = vqaddq_s16(v143, v379);
  v162 = vqsubq_s16(v143, v379);
  v163 = vqaddq_s16(v142, v147);
  v164 = vqsubq_s16(v142, v147);
  v165 = vqaddq_s16(v140, v149);
  v166 = vqsubq_s16(v140, v149);
  v167 = vqaddq_s16(v139, v151);
  v168 = vqsubq_s16(v139, v151);
  v169 = vqaddq_s16(v137, v153);
  v170 = vqsubq_s16(v137, v153);
  v171 = vqaddq_s16(v136, v154);
  v392 = v164;
  v394 = vqsubq_s16(v136, v154);
  v172 = vqaddq_s16(v138, v152);
  v173 = vqsubq_s16(v138, v152);
  v174 = vqaddq_s16(v397, v150);
  v398 = vqsubq_s16(v397, v150);
  v175 = vqaddq_s16(v141, v148);
  v176 = vqsubq_s16(v141, v148);
  v177 = vqaddq_s16(v348, v386);
  v178 = vqsubq_s16(v348, v386);
  v179 = vqaddq_s16(v364, v370);
  v180 = vqsubq_s16(v364, v370);
  v181 = vqaddq_s16(v374, v360);
  v182 = vqsubq_s16(v374, v360);
  v183 = vqaddq_s16(v383, v367);
  v184 = vqsubq_s16(v383, v367);
  if (a4)
  {
    *a2 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*a2, v183, 6uLL)));
    v185 = 2 * a3;
    *(a2 + v185) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(a2 + v185), v181, 6uLL)));
    v186 = (a2 + v185 + v185);
    *v186 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v186, v179, 6uLL)));
    v187 = (v186 + v185);
    *v187 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v187, v177, 6uLL)));
    v188 = (v187 + v185);
    *v188 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v188, v175, 6uLL)));
    v189 = (v188 + v185);
    *v189 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v189, v174, 6uLL)));
    v190 = (v189 + v185);
    *v190 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v190, v172, 6uLL)));
    v191 = (v190 + v185);
    *v191 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v191, v171, 6uLL)));
    v192 = (v191 + v185);
    *v192 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v192, v169, 6uLL)));
    v193 = (v192 + v185);
    *v193 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v193, v167, 6uLL)));
    v194 = (v193 + v185);
    *v194 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v194, v165, 6uLL)));
    v195 = (v194 + v185);
    *v195 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v195, v163, 6uLL)));
    v196 = (v195 + v185);
    *v196 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v196, v161, 6uLL)));
    v197 = (v196 + v185);
    *v197 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v197, v159, 6uLL)));
    v198 = (v197 + v185);
    *v198 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v198, v157, 6uLL)));
    v199 = (v198 + v185);
    *v199 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v199, v155, 6uLL)));
    v200 = (v199 + v185);
    *v200 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v200, v156, 6uLL)));
    v201 = (v200 + v185);
    *v201 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v201, v158, 6uLL)));
    v202 = (v201 + v185);
    *v202 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v202, v160, 6uLL)));
    v203 = (v202 + v185);
    *v203 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v203, v162, 6uLL)));
    v204 = (v203 + v185);
    *v204 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v204, v392, 6uLL)));
    v205 = (v204 + v185);
    *v205 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v205, v166, 6uLL)));
    v206 = (v205 + v185);
    *v206 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v206, v168, 6uLL)));
    v207 = (v206 + v185);
    *v207 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v207, v170, 6uLL)));
    v208 = (v207 + v185);
    *v208 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v208, v394, 6uLL)));
    v209 = (v208 + v185);
    *v209 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v209, v173, 6uLL)));
    v210 = (v209 + v185);
    *v210 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v210, v398, 6uLL)));
    v211 = (v210 + v185);
    *v211 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v211, v176, 6uLL)));
    v212 = (v211 + v185);
    *v212 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v212, v178, 6uLL)));
    v213 = (v212 + v185);
    *v213 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v213, v180, 6uLL)));
    v214 = (v213 + v185);
    *v214 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v214, v182, 6uLL)));
    *(v214 + v185) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v214 + v185), v184, 6uLL)));
  }

  else
  {
    v215 = &a2->i8[a3];
    v216 = v168;
    v217 = vrsraq_n_s16(vmovl_u8(*v215), v181, 6uLL);
    v218 = (v215 + a3);
    v219 = vrsraq_n_s16(vmovl_u8(*v218), v179, 6uLL);
    v220 = (v218 + a3);
    v221 = vrsraq_n_s16(vmovl_u8(*v220), v177, 6uLL);
    v222 = (v220 + a3);
    v223 = vrsraq_n_s16(vmovl_u8(*v222), v175, 6uLL);
    v224 = (v222 + a3);
    v225 = vrsraq_n_s16(vmovl_u8(*v224), v174, 6uLL);
    v226 = (v224 + a3);
    v227 = vrsraq_n_s16(vmovl_u8(*v226), v172, 6uLL);
    v228 = (v226 + a3);
    v229 = vrsraq_n_s16(vmovl_u8(*v228), v171, 6uLL);
    v230 = 7 * a3;
    v231 = (v228 - v230);
    *v231 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a2->i8), v183, 6uLL));
    v232 = (v231 + a3);
    *v232 = vqmovun_s16(v217);
    v233 = (v232 + a3);
    *v233 = vqmovun_s16(v219);
    v234 = (v233 + a3);
    *v234 = vqmovun_s16(v221);
    v235 = (v234 + a3);
    *v235 = vqmovun_s16(v223);
    v236 = (v235 + a3);
    *v236 = vqmovun_s16(v225);
    v237 = (v236 + a3);
    *v237 = vqmovun_s16(v227);
    *(v237 + a3) = vqmovun_s16(v229);
    v238 = &a2->i64[a3];
    v227.i64[0] = *v238;
    v239 = (v238 + a3);
    v240 = *v239;
    v241 = (v239 + a3);
    v225.i64[0] = *v241;
    v242 = (v241 + a3);
    v217.i64[0] = *v242;
    v243 = (v242 + a3);
    v229.i64[0] = *v243;
    v244 = (v243 + a3);
    v245 = vrsraq_n_s16(vmovl_u8(*v229.i8), v161, 6uLL);
    v246 = *v244;
    v247 = (v244 + a3);
    v248 = vrsraq_n_s16(vmovl_u8(v246), v159, 6uLL);
    v249 = *v247;
    v250 = (v247 + a3);
    v251 = vrsraq_n_s16(vmovl_u8(v249), v157, 6uLL);
    v252 = vrsraq_n_s16(vmovl_u8(*v250), v155, 6uLL);
    v253 = (v250 - v230);
    *v253 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v227.i8), v169, 6uLL));
    v254 = (v253 + a3);
    *v254 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v240), v167, 6uLL));
    v255 = (v254 + a3);
    *v255 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v225.i8), v165, 6uLL));
    v256 = (v255 + a3);
    *v256 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v217.i8), v163, 6uLL));
    v257 = (v256 + a3);
    *v257 = vqmovun_s16(v245);
    v258 = (v257 + a3);
    *v258 = vqmovun_s16(v248);
    v259 = (v258 + a3);
    *v259 = vqmovun_s16(v251);
    *(v259 + a3) = vqmovun_s16(v252);
    v260 = &a2[a3];
    v261 = *v260->i8;
    v262 = (v260->i64 + a3);
    v263 = vrsraq_n_s16(vmovl_u8(v261), v156, 6uLL);
    v252.i64[0] = *v262;
    v264 = (v262 + a3);
    v265 = vrsraq_n_s16(vmovl_u8(*v252.i8), v158, 6uLL);
    v227.i64[0] = *v264;
    v266 = (v264 + a3);
    v267 = *v266;
    v268 = (v266 + a3);
    v269 = *v268;
    v270 = (v268 + a3);
    v271 = *v270;
    v272 = (v270 + a3);
    v248.i64[0] = *v272;
    v273 = (v272 + a3);
    v274 = vrsraq_n_s16(vmovl_u8(*v273), v170, 6uLL);
    v275 = (v273 - v230);
    *v275 = vqmovun_s16(v263);
    v276 = (v275 + a3);
    *v276 = vqmovun_s16(v265);
    v277 = (v276 + a3);
    *v277 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v227.i8), v160, 6uLL));
    v278 = (v277 + a3);
    *v278 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v267), v162, 6uLL));
    v279 = (v278 + a3);
    *v279 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v269), v392, 6uLL));
    v280 = (v279 + a3);
    *v280 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v271), v166, 6uLL));
    v281 = (v280 + a3);
    *v281 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v248.i8), v216, 6uLL));
    *(v281 + a3) = vqmovun_s16(v274);
    v282 = &a2->i64[3 * a3];
    v263.i64[0] = *v282;
    v283 = (v282 + a3);
    v265.i64[0] = *v283;
    v284 = (v283 + a3);
    v227.i64[0] = *v284;
    v285 = (v284 + a3);
    v286 = *v285;
    v287 = (v285 + a3);
    v288 = *v287;
    v289 = (v287 + a3);
    v290 = *v289;
    v291 = (v289 + a3);
    v248.i64[0] = *v291;
    v292 = (v291 + a3);
    v293 = vrsraq_n_s16(vmovl_u8(*v292), v184, 6uLL);
    v294 = (v292 - v230);
    *v294 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v263.i8), v394, 6uLL));
    v295 = (v294 + a3);
    *v295 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v265.i8), v173, 6uLL));
    v296 = (v295 + a3);
    *v296 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v227.i8), v398, 6uLL));
    v297 = (v296 + a3);
    *v297 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v286), v176, 6uLL));
    v298 = (v297 + a3);
    *v298 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v288), v178, 6uLL));
    v299 = (v298 + a3);
    *v299 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v290), v180, 6uLL));
    v300 = (v299 + a3);
    *v300 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v248.i8), v182, 6uLL));
    *(v300 + a3) = vqmovun_s16(v293);
  }

  return result;
}

uint8x16_t vpx_idct32x32_1_add_neon(__int16 *a1, uint8x16_t *a2, int a3)
{
  v3 = ((46340 * ((46340 * *a1 + 0x8000) >> 16) + 0x8000) >> 16) + 32;
  if ((v3 & 0x200000) != 0)
  {
    v70 = -(v3 >> 6);
    if (v70 >= 255)
    {
      v70 = 255;
    }

    v71 = vdupq_n_s8(v70 & ~(v70 >> 31));
    v72 = vqsubq_u8(a2[1], v71);
    *a2 = vqsubq_u8(*a2, v71);
    a2[1] = v72;
    v73 = (a2 + a3);
    v74 = vqsubq_u8(v73[1], v71);
    *v73 = vqsubq_u8(*v73, v71);
    v73[1] = v74;
    v75 = (v73 + a3);
    v76 = vqsubq_u8(v75[1], v71);
    *v75 = vqsubq_u8(*v75, v71);
    v75[1] = v76;
    v77 = (v75 + a3);
    v78 = vqsubq_u8(v77[1], v71);
    *v77 = vqsubq_u8(*v77, v71);
    v77[1] = v78;
    v79 = (v77 + a3);
    v80 = vqsubq_u8(v79[1], v71);
    *v79 = vqsubq_u8(*v79, v71);
    v79[1] = v80;
    v81 = (v79 + a3);
    v82 = vqsubq_u8(v81[1], v71);
    *v81 = vqsubq_u8(*v81, v71);
    v81[1] = v82;
    v83 = (v81 + a3);
    v84 = vqsubq_u8(v83[1], v71);
    *v83 = vqsubq_u8(*v83, v71);
    v83[1] = v84;
    v85 = (v83 + a3);
    v86 = vqsubq_u8(v85[1], v71);
    *v85 = vqsubq_u8(*v85, v71);
    v85[1] = v86;
    v87 = (v85 + a3);
    v88 = vqsubq_u8(v87[1], v71);
    *v87 = vqsubq_u8(*v87, v71);
    v87[1] = v88;
    v89 = (v87 + a3);
    v90 = vqsubq_u8(v89[1], v71);
    *v89 = vqsubq_u8(*v89, v71);
    v89[1] = v90;
    v91 = (v89 + a3);
    v92 = vqsubq_u8(v91[1], v71);
    *v91 = vqsubq_u8(*v91, v71);
    v91[1] = v92;
    v93 = (v91 + a3);
    v94 = vqsubq_u8(v93[1], v71);
    *v93 = vqsubq_u8(*v93, v71);
    v93[1] = v94;
    v95 = (v93 + a3);
    v96 = vqsubq_u8(v95[1], v71);
    *v95 = vqsubq_u8(*v95, v71);
    v95[1] = v96;
    v97 = (v95 + a3);
    v98 = vqsubq_u8(v97[1], v71);
    *v97 = vqsubq_u8(*v97, v71);
    v97[1] = v98;
    v99 = (v97 + a3);
    v100 = vqsubq_u8(v99[1], v71);
    *v99 = vqsubq_u8(*v99, v71);
    v99[1] = v100;
    v101 = (v99 + a3);
    v102 = vqsubq_u8(v101[1], v71);
    *v101 = vqsubq_u8(*v101, v71);
    v101[1] = v102;
    v103 = (v101 + a3);
    v104 = vqsubq_u8(v103[1], v71);
    *v103 = vqsubq_u8(*v103, v71);
    v103[1] = v104;
    v105 = (v103 + a3);
    v106 = vqsubq_u8(v105[1], v71);
    *v105 = vqsubq_u8(*v105, v71);
    v105[1] = v106;
    v107 = (v105 + a3);
    v108 = vqsubq_u8(v107[1], v71);
    *v107 = vqsubq_u8(*v107, v71);
    v107[1] = v108;
    v109 = (v107 + a3);
    v110 = vqsubq_u8(v109[1], v71);
    *v109 = vqsubq_u8(*v109, v71);
    v109[1] = v110;
    v111 = (v109 + a3);
    v112 = vqsubq_u8(v111[1], v71);
    *v111 = vqsubq_u8(*v111, v71);
    v111[1] = v112;
    v113 = (v111 + a3);
    v114 = vqsubq_u8(v113[1], v71);
    *v113 = vqsubq_u8(*v113, v71);
    v113[1] = v114;
    v115 = (v113 + a3);
    v116 = vqsubq_u8(v115[1], v71);
    *v115 = vqsubq_u8(*v115, v71);
    v115[1] = v116;
    v117 = (v115 + a3);
    v118 = vqsubq_u8(v117[1], v71);
    *v117 = vqsubq_u8(*v117, v71);
    v117[1] = v118;
    v119 = (v117 + a3);
    v120 = vqsubq_u8(v119[1], v71);
    *v119 = vqsubq_u8(*v119, v71);
    v119[1] = v120;
    v121 = (v119 + a3);
    v122 = vqsubq_u8(v121[1], v71);
    *v121 = vqsubq_u8(*v121, v71);
    v121[1] = v122;
    v123 = (v121 + a3);
    v124 = vqsubq_u8(v123[1], v71);
    *v123 = vqsubq_u8(*v123, v71);
    v123[1] = v124;
    v125 = (v123 + a3);
    v126 = vqsubq_u8(v125[1], v71);
    *v125 = vqsubq_u8(*v125, v71);
    v125[1] = v126;
    v127 = (v125 + a3);
    v128 = vqsubq_u8(v127[1], v71);
    *v127 = vqsubq_u8(*v127, v71);
    v127[1] = v128;
    v129 = (v127 + a3);
    v130 = vqsubq_u8(v129[1], v71);
    *v129 = vqsubq_u8(*v129, v71);
    v129[1] = v130;
    v131 = (v129 + a3);
    v132 = vqsubq_u8(v131[1], v71);
    *v131 = vqsubq_u8(*v131, v71);
    v131[1] = v132;
    v133 = (v131 + a3);
    v134 = vqsubq_u8(*v133, v71);
    result = vqsubq_u8(v133[1], v71);
    *v133 = v134;
    v133[1] = result;
  }

  else
  {
    v4 = v3 >> 6;
    if (v4 >= 255)
    {
      v4 = 255;
    }

    v5 = vdupq_n_s8(v4);
    v6 = vqaddq_u8(a2[1], v5);
    *a2 = vqaddq_u8(*a2, v5);
    a2[1] = v6;
    v7 = (a2 + a3);
    v8 = vqaddq_u8(v7[1], v5);
    *v7 = vqaddq_u8(*v7, v5);
    v7[1] = v8;
    v9 = (v7 + a3);
    v10 = vqaddq_u8(v9[1], v5);
    *v9 = vqaddq_u8(*v9, v5);
    v9[1] = v10;
    v11 = (v9 + a3);
    v12 = vqaddq_u8(v11[1], v5);
    *v11 = vqaddq_u8(*v11, v5);
    v11[1] = v12;
    v13 = (v11 + a3);
    v14 = vqaddq_u8(v13[1], v5);
    *v13 = vqaddq_u8(*v13, v5);
    v13[1] = v14;
    v15 = (v13 + a3);
    v16 = vqaddq_u8(v15[1], v5);
    *v15 = vqaddq_u8(*v15, v5);
    v15[1] = v16;
    v17 = (v15 + a3);
    v18 = vqaddq_u8(v17[1], v5);
    *v17 = vqaddq_u8(*v17, v5);
    v17[1] = v18;
    v19 = (v17 + a3);
    v20 = vqaddq_u8(v19[1], v5);
    *v19 = vqaddq_u8(*v19, v5);
    v19[1] = v20;
    v21 = (v19 + a3);
    v22 = vqaddq_u8(v21[1], v5);
    *v21 = vqaddq_u8(*v21, v5);
    v21[1] = v22;
    v23 = (v21 + a3);
    v24 = vqaddq_u8(v23[1], v5);
    *v23 = vqaddq_u8(*v23, v5);
    v23[1] = v24;
    v25 = (v23 + a3);
    v26 = vqaddq_u8(v25[1], v5);
    *v25 = vqaddq_u8(*v25, v5);
    v25[1] = v26;
    v27 = (v25 + a3);
    v28 = vqaddq_u8(v27[1], v5);
    *v27 = vqaddq_u8(*v27, v5);
    v27[1] = v28;
    v29 = (v27 + a3);
    v30 = vqaddq_u8(v29[1], v5);
    *v29 = vqaddq_u8(*v29, v5);
    v29[1] = v30;
    v31 = (v29 + a3);
    v32 = vqaddq_u8(v31[1], v5);
    *v31 = vqaddq_u8(*v31, v5);
    v31[1] = v32;
    v33 = (v31 + a3);
    v34 = vqaddq_u8(v33[1], v5);
    *v33 = vqaddq_u8(*v33, v5);
    v33[1] = v34;
    v35 = (v33 + a3);
    v36 = vqaddq_u8(v35[1], v5);
    *v35 = vqaddq_u8(*v35, v5);
    v35[1] = v36;
    v37 = (v35 + a3);
    v38 = vqaddq_u8(v37[1], v5);
    *v37 = vqaddq_u8(*v37, v5);
    v37[1] = v38;
    v39 = (v37 + a3);
    v40 = vqaddq_u8(v39[1], v5);
    *v39 = vqaddq_u8(*v39, v5);
    v39[1] = v40;
    v41 = (v39 + a3);
    v42 = vqaddq_u8(v41[1], v5);
    *v41 = vqaddq_u8(*v41, v5);
    v41[1] = v42;
    v43 = (v41 + a3);
    v44 = vqaddq_u8(v43[1], v5);
    *v43 = vqaddq_u8(*v43, v5);
    v43[1] = v44;
    v45 = (v43 + a3);
    v46 = vqaddq_u8(v45[1], v5);
    *v45 = vqaddq_u8(*v45, v5);
    v45[1] = v46;
    v47 = (v45 + a3);
    v48 = vqaddq_u8(v47[1], v5);
    *v47 = vqaddq_u8(*v47, v5);
    v47[1] = v48;
    v49 = (v47 + a3);
    v50 = vqaddq_u8(v49[1], v5);
    *v49 = vqaddq_u8(*v49, v5);
    v49[1] = v50;
    v51 = (v49 + a3);
    v52 = vqaddq_u8(v51[1], v5);
    *v51 = vqaddq_u8(*v51, v5);
    v51[1] = v52;
    v53 = (v51 + a3);
    v54 = vqaddq_u8(v53[1], v5);
    *v53 = vqaddq_u8(*v53, v5);
    v53[1] = v54;
    v55 = (v53 + a3);
    v56 = vqaddq_u8(v55[1], v5);
    *v55 = vqaddq_u8(*v55, v5);
    v55[1] = v56;
    v57 = (v55 + a3);
    v58 = vqaddq_u8(v57[1], v5);
    *v57 = vqaddq_u8(*v57, v5);
    v57[1] = v58;
    v59 = (v57 + a3);
    v60 = vqaddq_u8(v59[1], v5);
    *v59 = vqaddq_u8(*v59, v5);
    v59[1] = v60;
    v61 = (v59 + a3);
    v62 = vqaddq_u8(v61[1], v5);
    *v61 = vqaddq_u8(*v61, v5);
    v61[1] = v62;
    v63 = (v61 + a3);
    v64 = vqaddq_u8(v63[1], v5);
    *v63 = vqaddq_u8(*v63, v5);
    v63[1] = v64;
    v65 = (v63 + a3);
    v66 = vqaddq_u8(v65[1], v5);
    *v65 = vqaddq_u8(*v65, v5);
    v65[1] = v66;
    v67 = (v65 + a3);
    v68 = vqaddq_u8(*v67, v5);
    result = vqaddq_u8(v67[1], v5);
    *v67 = v68;
    v67[1] = result;
  }

  return result;
}

int16x8_t vpx_idct32_6_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vuzp1q_s16(*a1, a1[1]);
  v3 = vuzp1q_s16(a1[8], a1[9]);
  v4 = vuzp1q_s16(a1[16], a1[17]);
  v5 = vuzp1q_s16(a1[24], a1[25]);
  v6 = vuzp1q_s16(a1[32], a1[33]);
  v7 = vuzp1q_s16(a1[40], a1[41]);
  v8 = vuzp1q_s16(a1[48], a1[49]);
  v9 = vuzp1q_s16(a1[56], a1[57]);
  v10 = vtrn1q_s16(v2, v3);
  v11 = vtrn2q_s16(v2, v3);
  v12 = vtrn1q_s16(v4, v5);
  v13 = vtrn2q_s16(v4, v5);
  v14 = vtrn1q_s16(v6, v7);
  v15 = vtrn2q_s16(v6, v7);
  v16 = vtrn1q_s16(v8, v9);
  v17 = vtrn2q_s16(v8, v9);
  v18 = vtrn1q_s32(v10, v12);
  v12.i64[0] = vtrn2q_s32(v10, v12).u64[0];
  v19 = vtrn1q_s32(v11, v13);
  v13.i64[0] = vtrn2q_s32(v11, v13).u64[0];
  v20 = vtrn1q_s32(v14, v16);
  v14.i64[0] = vtrn2q_s32(v14, v16).u64[0];
  v21 = vtrn1q_s32(v15, v17);
  v15.i64[0] = vtrn2q_s32(v15, v17).u64[0];
  v22 = vzip2q_s64(v18, v20);
  v11.i64[0] = v18.i64[0];
  v11.i64[1] = v20.i64[0];
  v17.i64[0] = v19.i64[0];
  v17.i64[1] = v21.i64[0];
  v12.i64[1] = v14.i64[0];
  v13.i64[1] = v15.i64[0];
  v23 = vzip2q_s64(v19, v21);
  v24 = vqrdmulhq_s16(v17, vdupq_n_s16(0x648u));
  v15.i64[0] = 0x27002700270027;
  v15.i64[1] = 0x27002700270027;
  v25 = vqrdmulhq_s16(v17, vnegq_f16(v15));
  v26 = vqrdmulhq_s16(v23, vdupq_n_s16(0x1F1Au));
  v27 = vqrdmulhq_s16(v23, vdupq_n_s16(0x7C2Au));
  v28 = vqrdmulhq_s16(v13, vdupq_n_s16(0xED38u));
  v29 = vqrdmulhq_s16(v13, vdupq_n_s16(0x7E9Eu));
  v13.i64[0] = 0x8C8C8C8C8C8C8C8CLL;
  v13.i64[1] = 0x8C8C8C8C8C8C8C8CLL;
  v30 = vqrdmulhq_s16(v12, vnegq_f16(v13));
  v13.i64[0] = 0x9D009D009D009DLL;
  v13.i64[1] = 0x9D009D009D009DLL;
  v31 = vqrdmulhq_s16(v12, vnegq_f16(v13));
  v32 = vqrdmulhq_s16(v22, vdupq_n_s16(0x18F8u));
  v33 = vqrdmulhq_s16(v22, vdupq_n_s16(0x7D8Au));
  v34 = vdupq_n_s16(0xC13Bu);
  v35 = vdupq_n_s16(0xC7Cu);
  v36 = vmlal_high_s16(vmull_high_s16(v25, v35), v24, v34);
  *v19.i8 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v25.i8, *v35.i8), *v24.i8, *v34.i8), 0xEuLL);
  v37 = vrshrn_n_s32(v36, 0xEuLL);
  v38 = vdupq_n_s16(0x3EC5u);
  v39 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v25.i8, *v38.i8), *v24.i8, *v35.i8), 0xEuLL);
  v40 = vdupq_n_s16(0xC4DFu);
  v41 = vdupq_n_s16(0x187Eu);
  v42 = vdupq_n_s16(0x3B21u);
  v139 = vmlal_s16(vmull_s16(v39, *v41.i8), *v19.i8, *v40.i8);
  v141 = vmlal_s16(vmull_s16(v39, *v42.i8), *v19.i8, *v41.i8);
  v147 = vrshrn_high_n_s32(*v19.i8, v36, 0xEuLL);
  v43 = vmlal_high_s16(vmull_high_s16(v25, v38), v24, v35);
  *v35.i8 = vrshrn_n_s32(v43, 0xEuLL);
  v44 = vdupq_n_s16(0xDC72u);
  v137 = vrshrn_high_n_s32(v39, v43, 0xEuLL);
  v45 = vdupq_n_s16(0x3537u);
  v46 = vmlal_high_s16(vmull_high_s16(v27, v45), v26, v44);
  *v21.i8 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v27.i8, *v45.i8), *v26.i8, *v44.i8), 0xEuLL);
  v47 = vdupq_n_s16(0xCAC9u);
  v48 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v29.i8, *v44.i8), *v28.i8, *v47.i8), 0xEuLL);
  *v19.i8 = vsub_s16(v48, *v21.i8);
  v49 = vrshrn_high_n_s32(*v21.i8, v46, 0xEuLL);
  v50 = vdupq_n_s16(0x238Eu);
  v51 = vmlal_high_s16(vmull_high_s16(v27, v50), v26, v45);
  v52 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v27.i8, *v50.i8), *v26.i8, *v45.i8), 0xEuLL);
  v53 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v29.i8, *v45.i8), *v28.i8, *v44.i8), 0xEuLL);
  *v17.i8 = vsub_s16(v53, v52);
  v54 = vmlal_high_s16(vmull_high_s16(v29, v44), v28, v47);
  v55 = vmlal_high_s16(vmull_high_s16(v29, v45), v28, v44);
  v56 = vqrdmulhq_s16(v11, vdupq_n_s16(0x5A82u));
  v57 = vsubq_s16(v28, v26);
  v146 = vaddq_s16(vrshrn_high_n_s32(v48, v54, 0xEuLL), v49);
  v136 = vaddq_s16(v28, v26);
  v129 = vaddq_s16(v29, v27);
  v58 = vaddq_s16(vrshrn_high_n_s32(v53, v55, 0xEuLL), vrshrn_high_n_s32(v52, v51, 0xEuLL));
  v59 = vsubq_s16(v29, v27);
  v60 = vdupq_n_s32(0x2D41u);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v33.i8, *v32.i8), v60), 0xEuLL), vmulq_s32(vsubl_high_s16(v33, v32), v60), 0xEuLL);
  v62 = v32;
  v63 = v33;
  v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v33.i8, *v32.i8), v60), 0xEuLL), vmulq_s32(vaddl_high_s16(v33, v32), v60), 0xEuLL);
  v65 = vmlal_s16(vmull_s16(*v35.i8, *v41.i8), v37, *v40.i8);
  v66 = vmlal_s16(vmull_s16(*v35.i8, *v42.i8), v37, *v41.i8);
  v67 = vdupq_n_s16(0xE782u);
  v68 = vmlal_s16(vmull_s16(*v59.i8, *v40.i8), *v57.i8, *v67.i8);
  v143 = vmlal_high_s16(vmull_high_s16(v59, v40), v57, v67);
  v69 = vmlal_s16(vmull_s16(*v59.i8, *v41.i8), *v57.i8, *v40.i8);
  v70 = vmlal_high_s16(vmull_high_s16(v59, v41), v57, v40);
  *v46.i8 = vsub_s16(vrshrn_n_s32(v54, 0xEuLL), vrshrn_n_s32(v46, 0xEuLL));
  *v55.i8 = vsub_s16(vrshrn_n_s32(v55, 0xEuLL), vrshrn_n_s32(v51, 0xEuLL));
  v71 = vmlal_s16(vmull_s16(*v17.i8, *v40.i8), *v19.i8, *v67.i8);
  v144 = vmlal_s16(vmull_s16(*v55.i8, *v40.i8), *v46.i8, *v67.i8);
  v72 = vmlal_s16(vmull_s16(*v17.i8, *v41.i8), *v19.i8, *v40.i8);
  v73 = vmlal_s16(vmull_s16(*v55.i8, *v41.i8), *v46.i8, *v40.i8);
  v74 = vmlal_s16(vmull_s16(*v31.i8, *v41.i8), *v30.i8, *v40.i8);
  v75 = vmlal_high_s16(vmull_high_s16(v31, v41), v30, v40);
  v76 = vmlal_s16(vmull_s16(*v25.i8, *v41.i8), *v24.i8, *v40.i8);
  v145 = vmlal_high_s16(vmull_high_s16(v25, v41), v24, v40);
  v77 = vmlal_s16(vmull_s16(*v31.i8, *v42.i8), *v30.i8, *v41.i8);
  v78 = vmlal_high_s16(vmull_high_s16(v31, v42), v30, v41);
  v79 = vmlal_s16(vmull_s16(*v25.i8, *v42.i8), *v24.i8, *v41.i8);
  v80 = vmlal_high_s16(vmull_high_s16(v25, v42), v24, v41);
  v135 = vaddq_s16(v56, v62);
  v81 = vsubq_s16(v56, v62);
  v132 = v24;
  v133 = vaddq_s16(v61, v56);
  v82 = vsubq_s16(v56, v61);
  v134 = vaddq_s16(v64, v56);
  v83 = vsubq_s16(v56, v64);
  v131 = vaddq_s16(v56, v63);
  v84 = vsubq_s16(v56, v63);
  *v74.i8 = vrshrn_n_s32(v74, 0xEuLL);
  *v41.i8 = vrshrn_n_s32(v77, 0xEuLL);
  v85 = vsubl_s16(*v41.i8, *v74.i8);
  v86 = vaddl_s16(*v41.i8, *v74.i8);
  v87 = vrshrn_high_n_s32(*v74.i8, v75, 0xEuLL);
  *v75.i8 = vrshrn_n_s32(v75, 0xEuLL);
  v88 = vrshrn_high_n_s32(*v41.i8, v78, 0xEuLL);
  *v78.i8 = vrshrn_n_s32(v78, 0xEuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v85, v60), 0xEuLL), vmulq_s32(vsubl_s16(*v78.i8, *v75.i8), v60), 0xEuLL);
  v128 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v86, v60), 0xEuLL), vmulq_s32(vaddl_s16(*v78.i8, *v75.i8), v60), 0xEuLL);
  v90 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v31.i8, *v30.i8), v60), 0xEuLL), vmulq_s32(vsubl_high_s16(v31, v30), v60), 0xEuLL);
  v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v31.i8, *v30.i8), v60), 0xEuLL), vmulq_s32(vaddl_high_s16(v31, v30), v60), 0xEuLL);
  *v79.i8 = vrshrn_n_s32(v79, 0xEuLL);
  *v85.i8 = vrshrn_n_s32(v69, 0xEuLL);
  *v75.i8 = vsub_s16(*v79.i8, *v85.i8);
  v92 = vaddq_s16(vrshrn_high_n_s32(*v85.i8, v70, 0xEuLL), vrshrn_high_n_s32(*v79.i8, v80, 0xEuLL));
  *v79.i8 = vrshrn_n_s32(v141, 0xEuLL);
  *v72.i8 = vrshrn_n_s32(v72, 0xEuLL);
  *v67.i8 = vsub_s16(*v79.i8, *v72.i8);
  v142 = vaddq_s16(vrshrn_high_n_s32(*v72.i8, v73, 0xEuLL), vrshrn_high_n_s32(*v79.i8, v66, 0xEuLL));
  v93 = vsubq_s16(v137, v58);
  v118 = vaddq_s16(v58, v137);
  v94 = vsubq_s16(v25, v129);
  v124 = vaddq_s16(v84, v30);
  v127 = vsubq_s16(v84, v30);
  v123 = vaddq_s16(v83, v87);
  v126 = vsubq_s16(v83, v87);
  v122 = vaddq_s16(v89, v82);
  v138 = vsubq_s16(v82, v89);
  v120 = vaddq_s16(v129, v25);
  v121 = vaddq_s16(v90, v81);
  v130 = vsubq_s16(v81, v90);
  *v79.i8 = vsub_s16(vrshrn_n_s32(v80, 0xEuLL), vrshrn_n_s32(v70, 0xEuLL));
  *v89.i8 = vsub_s16(vrshrn_n_s32(v145, 0xEuLL), vrshrn_n_s32(v143, 0xEuLL));
  *v70.i8 = vrshrn_n_s32(v76, 0xEuLL);
  v125 = vrshrn_n_s32(v68, 0xEuLL);
  *v76.i8 = vsub_s16(*v70.i8, v125);
  v95 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v75.i8, *v76.i8), v60), 0xEuLL), vmulq_s32(vsubl_s16(*v79.i8, *v89.i8), v60), 0xEuLL);
  v115 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v75.i8, *v76.i8), v60), 0xEuLL), vmulq_s32(vaddl_s16(*v79.i8, *v89.i8), v60), 0xEuLL);
  *v79.i8 = vsub_s16(vrshrn_n_s32(v66, 0xEuLL), vrshrn_n_s32(v73, 0xEuLL));
  *v75.i8 = vrshrn_n_s32(v139, 0xEuLL);
  v96 = vrshrn_high_n_s32(*v75.i8, v65, 0xEuLL);
  *v76.i8 = vsub_s16(vrshrn_n_s32(v65, 0xEuLL), vrshrn_n_s32(v144, 0xEuLL));
  *v87.i8 = vrshrn_n_s32(v71, 0xEuLL);
  *v75.i8 = vsub_s16(*v75.i8, *v87.i8);
  v97 = vsubl_s16(*v67.i8, *v75.i8);
  v98 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v67.i8, *v75.i8), v60), 0xEuLL), vmulq_s32(vaddl_s16(*v79.i8, *v76.i8), v60), 0xEuLL);
  v99 = vsubq_s16(v147, v146);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v93.i8, *v99.i8), v60), 0xEuLL), vmulq_s32(vsubl_high_s16(v93, v99), v60), 0xEuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v93.i8, *v99.i8), v60), 0xEuLL), vmulq_s32(vaddl_high_s16(v93, v99), v60), 0xEuLL);
  v102 = vsubq_s16(v132, v136);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v94.i8, *v102.i8), v60), 0xEuLL), vmulq_s32(vsubl_high_s16(v94, v102), v60), 0xEuLL);
  v140 = vaddq_s16(v131, v31);
  v119 = vaddq_s16(v134, v88);
  *a2 = vaddq_s16(v140, v120);
  a2[1] = vaddq_s16(v119, v118);
  v116 = vaddq_s16(v91, v135);
  v117 = vaddq_s16(v128, v133);
  a2[2] = vaddq_s16(v117, v142);
  a2[3] = vaddq_s16(v116, v92);
  a2[4] = vaddq_s16(v115, v121);
  a2[5] = vaddq_s16(v98, v122);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v94.i8, *v102.i8), v60), 0xEuLL), vmulq_s32(vaddl_high_s16(v94, v102), v60), 0xEuLL);
  a2[6] = vaddq_s16(v101, v123);
  a2[7] = vaddq_s16(v104, v124);
  a2[8] = vaddq_s16(v103, v127);
  a2[9] = vaddq_s16(v100, v126);
  v105 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v97, v60), 0xEuLL), vmulq_s32(vsubl_s16(*v79.i8, *v76.i8), v60), 0xEuLL);
  a2[10] = vaddq_s16(v105, v138);
  a2[11] = vaddq_s16(v95, v130);
  v106 = vaddq_s16(vrshrn_high_n_s32(*v87.i8, v144, 0xEuLL), v96);
  v107 = vaddq_s16(vrshrn_high_n_s32(v125, v143, 0xEuLL), vrshrn_high_n_s32(*v70.i8, v145, 0xEuLL));
  v108 = vsubq_s16(v135, v91);
  v109 = vsubq_s16(v133, v128);
  a2[12] = vaddq_s16(v108, v107);
  a2[13] = vaddq_s16(v109, v106);
  v110 = vaddq_s16(v136, v132);
  v111 = vaddq_s16(v146, v147);
  v112 = vsubq_s16(v134, v88);
  v113 = vsubq_s16(v131, v31);
  a2[14] = vaddq_s16(v112, v111);
  a2[15] = vaddq_s16(v113, v110);
  a2[16] = vsubq_s16(v113, v110);
  a2[17] = vsubq_s16(v112, v111);
  a2[18] = vsubq_s16(v109, v106);
  a2[19] = vsubq_s16(v108, v107);
  a2[20] = vsubq_s16(v130, v95);
  a2[21] = vsubq_s16(v138, v105);
  a2[22] = vsubq_s16(v126, v100);
  a2[23] = vsubq_s16(v127, v103);
  a2[24] = vsubq_s16(v124, v104);
  a2[25] = vsubq_s16(v123, v101);
  a2[26] = vsubq_s16(v122, v98);
  a2[27] = vsubq_s16(v121, v115);
  a2[28] = vsubq_s16(v116, v92);
  a2[29] = vsubq_s16(v117, v142);
  result = vsubq_s16(v119, v118);
  a2[30] = result;
  a2[31] = vsubq_s16(v140, v120);
  return result;
}

int16x8_t *vpx_idct32_8_neon(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  v4 = result[1];
  v5 = vtrn1q_s16(*result, v4);
  v6 = vtrn2q_s16(*result, v4);
  v7 = result[2];
  v8 = result[3];
  v9 = vtrn1q_s16(v7, v8);
  v10 = vtrn2q_s16(v7, v8);
  v11 = result[4];
  v12 = result[5];
  v13 = vtrn1q_s16(v11, v12);
  v14 = vtrn2q_s16(v11, v12);
  v15 = result[6];
  v16 = result[7];
  v17 = vtrn1q_s16(v15, v16);
  v18 = vtrn2q_s16(v15, v16);
  v19 = vtrn1q_s32(v5, v9);
  v20 = vtrn2q_s32(v5, v9);
  v21 = vtrn1q_s32(v6, v10);
  v22 = vtrn2q_s32(v6, v10);
  v23 = vtrn1q_s32(v13, v17);
  v24 = vtrn2q_s32(v13, v17);
  v25 = vtrn1q_s32(v14, v18);
  v26 = vtrn2q_s32(v14, v18);
  v27 = vzip2q_s64(v19, v23);
  v19.i64[1] = v23.i64[0];
  v28 = vzip2q_s64(v21, v25);
  v21.i64[1] = v25.i64[0];
  v29 = vzip2q_s64(v20, v24);
  v20.i64[1] = v24.i64[0];
  v24.i64[0] = v22.i64[0];
  v24.i64[1] = v26.i64[0];
  v30 = vzip2q_s64(v22, v26);
  v31 = vqrdmulhq_s16(v21, vdupq_n_s16(0x648u));
  v26.i64[0] = 0x27002700270027;
  v26.i64[1] = 0x27002700270027;
  v32 = vqrdmulhq_s16(v21, vnegq_f16(v26));
  v33 = vqrdmulhq_s16(v30, vdupq_n_s16(0xD4E0u));
  v34 = vqrdmulhq_s16(v30, vdupq_n_s16(0x7884u));
  v35 = vqrdmulhq_s16(v28, vdupq_n_s16(0x1F1Au));
  v36 = vqrdmulhq_s16(v28, vdupq_n_s16(0x7C2Au));
  v37 = vqrdmulhq_s16(v24, vdupq_n_s16(0xED38u));
  v38 = vqrdmulhq_s16(v24, vdupq_n_s16(0x7E9Eu));
  v30.i64[0] = 0x8C8C8C8C8C8C8C8CLL;
  v30.i64[1] = 0x8C8C8C8C8C8C8C8CLL;
  v39 = vqrdmulhq_s16(v20, vnegq_f16(v30));
  v30.i64[0] = 0x9D009D009D009DLL;
  v30.i64[1] = 0x9D009D009D009DLL;
  v320 = vqrdmulhq_s16(v20, vnegq_f16(v30));
  v322 = v39;
  v316 = vqrdmulhq_s16(v29, vdupq_n_s16(0x7A7Eu));
  v318 = vqrdmulhq_s16(v29, vdupq_n_s16(0xDAD8u));
  v325 = vqrdmulhq_s16(v27, vdupq_n_s16(0x7D8Au));
  v328 = vqrdmulhq_s16(v27, vdupq_n_s16(0x18F8u));
  v40 = vdupq_n_s16(0xC13Bu);
  v41 = vdupq_n_s16(0xC7Cu);
  v42 = vmlal_high_s16(vmull_high_s16(v32, v41), v31, v40);
  v43 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v32.i8, *v41.i8), *v31.i8, *v40.i8), 0xEuLL);
  v44 = vdupq_n_s16(0x3EC5u);
  v45 = vmlal_s16(vmull_s16(*v32.i8, *v44.i8), *v31.i8, *v41.i8);
  v283 = v32;
  v46 = vmlal_high_s16(vmull_high_s16(v32, v44), v31, v41);
  v47 = vdupq_n_s16(0xF384u);
  v48 = vmlal_high_s16(vmull_high_s16(v34, v40), v33, v47);
  v49 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v34.i8, *v40.i8), *v33.i8, *v47.i8), 0xEuLL);
  v50 = vmlal_s16(vmull_s16(*v34.i8, *v41.i8), *v33.i8, *v40.i8);
  v51 = vmlal_high_s16(vmull_high_s16(v34, v41), v33, v40);
  v52 = vdupq_n_s16(0xDC72u);
  v53 = vdupq_n_s16(0x3537u);
  v54 = vmlal_s16(vmull_s16(*v36.i8, *v53.i8), *v35.i8, *v52.i8);
  v55 = vmlal_high_s16(vmull_high_s16(v36, v53), v35, v52);
  v56 = vdupq_n_s16(0x238Eu);
  v303 = vmlal_s16(vmull_s16(*v36.i8, *v56.i8), *v35.i8, *v53.i8);
  v57 = vmlal_high_s16(vmull_high_s16(v36, v56), v35, v53);
  v58 = vdupq_n_s16(0xCAC9u);
  v59 = vmlal_s16(vmull_s16(*v38.i8, *v52.i8), *v37.i8, *v58.i8);
  v60 = vmlal_high_s16(vmull_high_s16(v38, v52), v37, v58);
  v61 = vmlal_s16(vmull_s16(*v38.i8, *v53.i8), *v37.i8, *v52.i8);
  v62 = vmlal_high_s16(vmull_high_s16(v38, v53), v37, v52);
  v63 = vqrdmulhq_s16(v19, vdupq_n_s16(0x5A82u));
  v64 = vsub_s16(v43, v49);
  v65 = vrshrn_high_n_s32(v43, v42, 0xEuLL);
  v66 = vrshrn_n_s32(v45, 0xEuLL);
  v67 = vrshrn_high_n_s32(v49, v48, 0xEuLL);
  v68 = vrshrn_n_s32(v50, 0xEuLL);
  *v42.i8 = vsub_s16(vrshrn_n_s32(v42, 0xEuLL), vrshrn_n_s32(v48, 0xEuLL));
  *v45.i8 = vsub_s16(v66, v68);
  v69 = vrshrn_high_n_s32(v66, v46, 0xEuLL);
  v70 = vrshrn_high_n_s32(v68, v51, 0xEuLL);
  *v46.i8 = vsub_s16(vrshrn_n_s32(v46, 0xEuLL), vrshrn_n_s32(v51, 0xEuLL));
  v71 = vdupq_n_s16(0xC4DFu);
  v72 = vdupq_n_s16(0x187Eu);
  v295 = vmlal_s16(vmull_s16(*v45.i8, *v72.i8), v64, *v71.i8);
  v73 = vdupq_n_s16(0x3B21u);
  v314 = vmlal_s16(vmull_s16(*v45.i8, *v73.i8), v64, *v72.i8);
  v312 = vmlal_s16(vmull_s16(*v46.i8, *v72.i8), *v42.i8, *v71.i8);
  v313 = vmlal_s16(vmull_s16(*v46.i8, *v73.i8), *v42.i8, *v72.i8);
  v74 = vsubq_s16(v31, v33);
  v75 = vsubq_s16(v32, v34);
  v306 = vmlal_s16(vmull_s16(*v75.i8, *v72.i8), *v74.i8, *v71.i8);
  v308 = vmlal_high_s16(vmull_high_s16(v75, v72), v74, v71);
  v309 = vmlal_s16(vmull_s16(*v75.i8, *v73.i8), *v74.i8, *v72.i8);
  v311 = vmlal_high_s16(vmull_high_s16(v75, v73), v74, v72);
  v76 = vdupq_n_s16(0xE782u);
  v77 = vsubq_s16(v37, v35);
  v78 = vsubq_s16(v38, v36);
  v297 = vmlal_s16(vmull_s16(*v78.i8, *v71.i8), *v77.i8, *v76.i8);
  v301 = vmlal_high_s16(vmull_high_s16(v78, v71), v77, v76);
  v299 = vmlal_s16(vmull_s16(*v78.i8, *v72.i8), *v77.i8, *v71.i8);
  v302 = vmlal_high_s16(vmull_high_s16(v78, v72), v77, v71);
  *v77.i8 = vrshrn_n_s32(v54, 0xEuLL);
  *v59.i8 = vrshrn_n_s32(v59, 0xEuLL);
  *v78.i8 = vsub_s16(*v59.i8, *v77.i8);
  v79 = vrshrn_high_n_s32(*v77.i8, v55, 0xEuLL);
  v80 = vrshrn_high_n_s32(*v59.i8, v60, 0xEuLL);
  *v55.i8 = vsub_s16(vrshrn_n_s32(v60, 0xEuLL), vrshrn_n_s32(v55, 0xEuLL));
  *v48.i8 = vrshrn_n_s32(v303, 0xEuLL);
  *v61.i8 = vrshrn_n_s32(v61, 0xEuLL);
  *v50.i8 = vsub_s16(*v61.i8, *v48.i8);
  v81 = vrshrn_high_n_s32(*v48.i8, v57, 0xEuLL);
  v82 = vrshrn_high_n_s32(*v61.i8, v62, 0xEuLL);
  *v62.i8 = vsub_s16(vrshrn_n_s32(v62, 0xEuLL), vrshrn_n_s32(v57, 0xEuLL));
  v83 = vmlal_s16(vmull_s16(*v316.i8, *v71.i8), *v318.i8, *v76.i8);
  v84 = vmlal_high_s16(vmull_high_s16(v316, v71), v318, v76);
  v85 = vmlal_s16(vmull_s16(*v50.i8, *v71.i8), *v78.i8, *v76.i8);
  v288 = vmlal_s16(vmull_s16(*v62.i8, *v71.i8), *v55.i8, *v76.i8);
  v86 = vmlal_s16(vmull_s16(*v50.i8, *v72.i8), *v78.i8, *v71.i8);
  v87 = vmlal_s16(vmull_s16(*v62.i8, *v72.i8), *v55.i8, *v71.i8);
  v88 = vmlal_s16(vmull_s16(*v320.i8, *v72.i8), *v39.i8, *v71.i8);
  v89 = vmlal_high_s16(vmull_high_s16(v320, v72), v39, v71);
  v90 = vmlal_s16(vmull_s16(*v320.i8, *v73.i8), *v39.i8, *v72.i8);
  v91 = vmlal_high_s16(vmull_high_s16(v320, v73), v39, v72);
  v92 = vmlal_s16(vmull_s16(*v316.i8, *v72.i8), *v318.i8, *v71.i8);
  v93 = vmlal_high_s16(vmull_high_s16(v316, v72), v318, v71);
  v286 = vaddq_s16(v33, v31);
  v94 = vaddq_s16(v67, v65);
  v95 = vaddq_s16(v80, v79);
  v96 = vaddq_s16(v37, v35);
  v304 = vaddq_s16(v38, v36);
  v291 = vaddq_s16(v82, v81);
  v289 = vaddq_s16(v70, v69);
  v293 = vaddq_s16(v34, v283);
  v97 = vdupq_n_s32(0x2D41u);
  v98 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v325.i8, *v328.i8), v97), 0xEuLL), vmulq_s32(vsubl_high_s16(v325, v328), v97), 0xEuLL);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v325.i8, *v328.i8), v97), 0xEuLL), vmulq_s32(vaddl_high_s16(v325, v328), v97), 0xEuLL);
  *v82.i8 = vrshrn_n_s32(v88, 0xEuLL);
  *v83.i8 = vrshrn_n_s32(v83, 0xEuLL);
  *v70.i8 = vsub_s16(*v82.i8, *v83.i8);
  v284 = vaddq_s16(vrshrn_high_n_s32(*v83.i8, v84, 0xEuLL), vrshrn_high_n_s32(*v82.i8, v89, 0xEuLL));
  v100 = vaddq_s16(v318, v322);
  v101 = vsubq_s16(v322, v318);
  *v90.i8 = vrshrn_n_s32(v90, 0xEuLL);
  *v92.i8 = vrshrn_n_s32(v92, 0xEuLL);
  *v33.i8 = vsub_s16(*v90.i8, *v92.i8);
  v102 = vaddq_s16(vrshrn_high_n_s32(*v92.i8, v93, 0xEuLL), vrshrn_high_n_s32(*v90.i8, v91, 0xEuLL));
  v103 = vsubq_s16(v320, v316);
  v321 = vaddq_s16(v316, v320);
  v323 = v102;
  v104 = vsubq_s16(v63, v328);
  v317 = vaddq_s16(v63, v328);
  v319 = vaddq_s16(v98, v63);
  v105 = vsubq_s16(v63, v98);
  v329 = vaddq_s16(v99, v63);
  v106 = vsubq_s16(v63, v99);
  v107 = vaddq_s16(v63, v325);
  v108 = vsubq_s16(v63, v325);
  *v91.i8 = vsub_s16(vrshrn_n_s32(v91, 0xEuLL), vrshrn_n_s32(v93, 0xEuLL));
  *v90.i8 = vsub_s16(vrshrn_n_s32(v89, 0xEuLL), vrshrn_n_s32(v84, 0xEuLL));
  v109 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v33.i8, *v70.i8), v97), 0xEuLL), vmulq_s32(vsubl_s16(*v91.i8, *v90.i8), v97), 0xEuLL);
  v110 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v33.i8, *v70.i8), v97), 0xEuLL), vmulq_s32(vaddl_s16(*v91.i8, *v90.i8), v97), 0xEuLL);
  v111 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v103.i8, *v101.i8), v97), 0xEuLL), vmulq_s32(vsubl_high_s16(v103, v101), v97), 0xEuLL);
  v112 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v103.i8, *v101.i8), v97), 0xEuLL), vmulq_s32(vaddl_high_s16(v103, v101), v97), 0xEuLL);
  *v103.i8 = vrshrn_n_s32(v295, 0xEuLL);
  *v90.i8 = vrshrn_n_s32(v85, 0xEuLL);
  *v79.i8 = vsub_s16(*v103.i8, *v90.i8);
  v326 = vaddq_s16(vrshrn_high_n_s32(*v90.i8, v288, 0xEuLL), vrshrn_high_n_s32(*v103.i8, v312, 0xEuLL));
  *v103.i8 = vrshrn_n_s32(v306, 0xEuLL);
  *v90.i8 = vrshrn_n_s32(v297, 0xEuLL);
  *v99.i8 = vsub_s16(*v103.i8, *v90.i8);
  v307 = vaddq_s16(vrshrn_high_n_s32(*v90.i8, v301, 0xEuLL), vrshrn_high_n_s32(*v103.i8, v308, 0xEuLL));
  v113 = vsubq_s16(v94, v95);
  v296 = vaddq_s16(v96, v286);
  v298 = vaddq_s16(v95, v94);
  v114 = vsubq_s16(v286, v96);
  *v95.i8 = vrshrn_n_s32(v309, 0xEuLL);
  *v94.i8 = vrshrn_n_s32(v299, 0xEuLL);
  *v82.i8 = vsub_s16(*v95.i8, *v94.i8);
  v310 = vaddq_s16(vrshrn_high_n_s32(*v94.i8, v302, 0xEuLL), vrshrn_high_n_s32(*v95.i8, v311, 0xEuLL));
  *v95.i8 = vrshrn_n_s32(v314, 0xEuLL);
  *v94.i8 = vrshrn_n_s32(v86, 0xEuLL);
  *v31.i8 = vsub_s16(*v95.i8, *v94.i8);
  v315 = vaddq_s16(vrshrn_high_n_s32(*v94.i8, v87, 0xEuLL), vrshrn_high_n_s32(*v95.i8, v313, 0xEuLL));
  v115 = vsubq_s16(v289, v291);
  v300 = vaddq_s16(v291, v289);
  v116 = vsubq_s16(v293, v304);
  v305 = vaddq_s16(v304, v293);
  v117 = vsubq_s16(v108, v100);
  v290 = vaddq_s16(v108, v100);
  v292 = vaddq_s16(v106, v284);
  v118 = vsubq_s16(v106, v284);
  v119 = vsubq_s16(v105, v109);
  v285 = vaddq_s16(v109, v105);
  v287 = vaddq_s16(v111, v104);
  v120 = vsubq_s16(v104, v111);
  v294 = vaddq_s16(v112, v317);
  v121 = vsubq_s16(v317, v112);
  v122 = vaddq_s16(v110, v319);
  v123 = vsubq_s16(v319, v110);
  v124 = vaddq_s16(v329, v323);
  v125 = vsubq_s16(v329, v323);
  v126 = vaddq_s16(v107, v321);
  v127 = vsubq_s16(v107, v321);
  *v105.i8 = vsub_s16(vrshrn_n_s32(v311, 0xEuLL), vrshrn_n_s32(v302, 0xEuLL));
  *v107.i8 = vsub_s16(vrshrn_n_s32(v308, 0xEuLL), vrshrn_n_s32(v301, 0xEuLL));
  v128 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v82.i8, *v99.i8), v97), 0xEuLL), vmulq_s32(vsubl_s16(*v105.i8, *v107.i8), v97), 0xEuLL);
  v129 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v82.i8, *v99.i8), v97), 0xEuLL), vmulq_s32(vaddl_s16(*v105.i8, *v107.i8), v97), 0xEuLL);
  *v82.i8 = vsub_s16(vrshrn_n_s32(v313, 0xEuLL), vrshrn_n_s32(v87, 0xEuLL));
  *v87.i8 = vsub_s16(vrshrn_n_s32(v312, 0xEuLL), vrshrn_n_s32(v288, 0xEuLL));
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v31.i8, *v79.i8), v97), 0xEuLL), vmulq_s32(vsubl_s16(*v82.i8, *v87.i8), v97), 0xEuLL);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v31.i8, *v79.i8), v97), 0xEuLL), vmulq_s32(vaddl_s16(*v82.i8, *v87.i8), v97), 0xEuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v115.i8, *v113.i8), v97), 0xEuLL), vmulq_s32(vsubl_high_s16(v115, v113), v97), 0xEuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v115.i8, *v113.i8), v97), 0xEuLL), vmulq_s32(vaddl_high_s16(v115, v113), v97), 0xEuLL);
  v134 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v116.i8, *v114.i8), v97), 0xEuLL), vmulq_s32(vsubl_high_s16(v116, v114), v97), 0xEuLL);
  v135 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddl_s16(*v116.i8, *v114.i8), v97), 0xEuLL), vmulq_s32(vaddl_high_s16(v116, v114), v97), 0xEuLL);
  v136 = vqaddq_s16(v127, v296);
  v137 = vqsubq_s16(v127, v296);
  v138 = vqaddq_s16(v125, v298);
  v139 = vqsubq_s16(v125, v298);
  v140 = vqaddq_s16(v123, v326);
  v141 = vqsubq_s16(v123, v326);
  v142 = vqaddq_s16(v121, v307);
  v143 = vqsubq_s16(v121, v307);
  v144 = vqaddq_s16(v120, v128);
  v145 = vqsubq_s16(v120, v128);
  v146 = vqaddq_s16(v119, v130);
  v147 = vqsubq_s16(v119, v130);
  v148 = vqaddq_s16(v118, v132);
  v149 = vqaddq_s16(v117, v134);
  v324 = vqsubq_s16(v118, v132);
  v327 = vqsubq_s16(v117, v134);
  v150 = vqaddq_s16(v290, v135);
  v330 = vqsubq_s16(v290, v135);
  v151 = vqaddq_s16(v292, v133);
  v152 = vqsubq_s16(v292, v133);
  v153 = vqaddq_s16(v285, v131);
  v154 = vqsubq_s16(v285, v131);
  v155 = vqaddq_s16(v287, v129);
  v156 = vqsubq_s16(v287, v129);
  v157 = vqaddq_s16(v294, v310);
  v158 = vqsubq_s16(v294, v310);
  v159 = vqaddq_s16(v122, v315);
  v160 = vqsubq_s16(v122, v315);
  v161 = vqaddq_s16(v124, v300);
  v162 = vqsubq_s16(v124, v300);
  v163 = vqaddq_s16(v126, v305);
  v164 = vqsubq_s16(v126, v305);
  if (a4)
  {
    *a2 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*a2, v163, 6uLL)));
    v165 = 2 * a3;
    *(a2 + v165) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(a2 + v165), v161, 6uLL)));
    v166 = (a2 + v165 + v165);
    *v166 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v166, v159, 6uLL)));
    v167 = (v166 + v165);
    *v167 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v167, v157, 6uLL)));
    v168 = (v167 + v165);
    *v168 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v168, v155, 6uLL)));
    v169 = (v168 + v165);
    *v169 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v169, v153, 6uLL)));
    v170 = (v169 + v165);
    *v170 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v170, v151, 6uLL)));
    v171 = (v170 + v165);
    *v171 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v171, v150, 6uLL)));
    v172 = (v171 + v165);
    *v172 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v172, v149, 6uLL)));
    v173 = (v172 + v165);
    *v173 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v173, v148, 6uLL)));
    v174 = (v173 + v165);
    *v174 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v174, v146, 6uLL)));
    v175 = (v174 + v165);
    *v175 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v175, v144, 6uLL)));
    v176 = (v175 + v165);
    *v176 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v176, v142, 6uLL)));
    v177 = (v176 + v165);
    *v177 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v177, v140, 6uLL)));
    v178 = (v177 + v165);
    *v178 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v178, v138, 6uLL)));
    v179 = (v178 + v165);
    *v179 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v179, v136, 6uLL)));
    v180 = (v179 + v165);
    *v180 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v180, v137, 6uLL)));
    v181 = (v180 + v165);
    *v181 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v181, v139, 6uLL)));
    v182 = (v181 + v165);
    *v182 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v182, v141, 6uLL)));
    v183 = (v182 + v165);
    *v183 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v183, v143, 6uLL)));
    v184 = (v183 + v165);
    *v184 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v184, v145, 6uLL)));
    v185 = (v184 + v165);
    *v185 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v185, v147, 6uLL)));
    v186 = (v185 + v165);
    *v186 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v186, v324, 6uLL)));
    v187 = (v186 + v165);
    *v187 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v187, v327, 6uLL)));
    v188 = (v187 + v165);
    *v188 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v188, v330, 6uLL)));
    v189 = (v188 + v165);
    *v189 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v189, v152, 6uLL)));
    v190 = (v189 + v165);
    *v190 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v190, v154, 6uLL)));
    v191 = (v190 + v165);
    *v191 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v191, v156, 6uLL)));
    v192 = (v191 + v165);
    *v192 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v192, v158, 6uLL)));
    v193 = (v192 + v165);
    *v193 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v193, v160, 6uLL)));
    v194 = (v193 + v165);
    *v194 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v194, v162, 6uLL)));
    *(v194 + v165) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v194 + v165), v164, 6uLL)));
  }

  else
  {
    v195 = &a2->i8[a3];
    v196 = vrsraq_n_s16(vmovl_u8(*v195), v161, 6uLL);
    v197 = (v195 + a3);
    v198 = vrsraq_n_s16(vmovl_u8(*v197), v159, 6uLL);
    v199 = (v197 + a3);
    v200 = vrsraq_n_s16(vmovl_u8(*v199), v157, 6uLL);
    v201 = (v199 + a3);
    v202 = vrsraq_n_s16(vmovl_u8(*v201), v155, 6uLL);
    v203 = (v201 + a3);
    v204 = vrsraq_n_s16(vmovl_u8(*v203), v153, 6uLL);
    v205 = (v203 + a3);
    v206 = vrsraq_n_s16(vmovl_u8(*v205), v151, 6uLL);
    v207 = (v205 + a3);
    v208 = vrsraq_n_s16(vmovl_u8(*v207), v150, 6uLL);
    v209 = 7 * a3;
    v210 = (v207 - v209);
    *v210 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a2->i8), v163, 6uLL));
    v211 = (v210 + a3);
    *v211 = vqmovun_s16(v196);
    v212 = (v211 + a3);
    *v212 = vqmovun_s16(v198);
    v213 = (v212 + a3);
    *v213 = vqmovun_s16(v200);
    v214 = (v213 + a3);
    *v214 = vqmovun_s16(v202);
    v215 = (v214 + a3);
    *v215 = vqmovun_s16(v204);
    v216 = (v215 + a3);
    *v216 = vqmovun_s16(v206);
    *(v216 + a3) = vqmovun_s16(v208);
    v217 = &a2->i64[a3];
    v206.i64[0] = *v217;
    v218 = (v217 + a3);
    v219 = vrsraq_n_s16(vmovl_u8(*v206.i8), v149, 6uLL);
    v204.i64[0] = *v218;
    v220 = (v218 + a3);
    v221 = *v220;
    v222 = (v220 + a3);
    v208.i64[0] = *v222;
    v223 = (v222 + a3);
    v224 = vrsraq_n_s16(vmovl_u8(*v208.i8), v144, 6uLL);
    v225 = *v223;
    v226 = (v223 + a3);
    v227 = vrsraq_n_s16(vmovl_u8(v225), v142, 6uLL);
    v228 = *v226;
    v229 = (v226 + a3);
    v230 = *v229;
    v231 = (v229 + a3);
    v232 = vrsraq_n_s16(vmovl_u8(v230), v138, 6uLL);
    v233 = vrsraq_n_s16(vmovl_u8(*v231), v136, 6uLL);
    v234 = (v231 - v209);
    *v234 = vqmovun_s16(v219);
    v235 = (v234 + a3);
    *v235 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v204.i8), v148, 6uLL));
    v236 = (v235 + a3);
    *v236 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v221), v146, 6uLL));
    v237 = (v236 + a3);
    *v237 = vqmovun_s16(v224);
    v238 = (v237 + a3);
    *v238 = vqmovun_s16(v227);
    v239 = (v238 + a3);
    *v239 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v228), v140, 6uLL));
    v240 = (v239 + a3);
    *v240 = vqmovun_s16(v232);
    *(v240 + a3) = vqmovun_s16(v233);
    v241 = &a2[a3];
    v233.i64[0] = v241->i64[0];
    v242 = &v241->i8[a3];
    v243 = vrsraq_n_s16(vmovl_u8(*v233.i8), v137, 6uLL);
    v244 = *v242;
    v245 = (v242 + a3);
    v219.i64[0] = *v245;
    v246 = (v245 + a3);
    v247 = vrsraq_n_s16(vmovl_u8(*v219.i8), v141, 6uLL);
    v248 = *v246;
    v249 = (v246 + a3);
    v227.i64[0] = *v249;
    v250 = (v249 + a3);
    v251 = *v250;
    v252 = (v250 + a3);
    v204.i64[0] = *v252;
    v253 = (v252 + a3);
    v254 = vrsraq_n_s16(vmovl_u8(*v253), v327, 6uLL);
    v255 = (v253 - v209);
    *v255 = vqmovun_s16(v243);
    v256 = (v255 + a3);
    *v256 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v244), v139, 6uLL));
    v257 = (v256 + a3);
    *v257 = vqmovun_s16(v247);
    v258 = (v257 + a3);
    *v258 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v248), v143, 6uLL));
    v259 = (v258 + a3);
    *v259 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v227.i8), v145, 6uLL));
    v260 = (v259 + a3);
    *v260 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v251), v147, 6uLL));
    v261 = (v260 + a3);
    *v261 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v204.i8), v324, 6uLL));
    *(v261 + a3) = vqmovun_s16(v254);
    v262 = &a2->i64[3 * a3];
    v243.i64[0] = *v262;
    v263 = (v262 + a3);
    v264 = *v263;
    v265 = (v263 + a3);
    v247.i64[0] = *v265;
    v266 = (v265 + a3);
    v267 = *v266;
    v268 = (v266 + a3);
    v227.i64[0] = *v268;
    v269 = (v268 + a3);
    v270 = vrsraq_n_s16(vmovl_u8(*v227.i8), v158, 6uLL);
    v271 = *v269;
    v272 = (v269 + a3);
    v273 = *v272;
    v274 = (v272 + a3);
    v275 = vrsraq_n_s16(vmovl_u8(*v274), v164, 6uLL);
    v276 = (v274 - v209);
    *v276 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v243.i8), v330, 6uLL));
    v277 = (v276 + a3);
    *v277 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v264), v152, 6uLL));
    v278 = (v277 + a3);
    *v278 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v247.i8), v154, 6uLL));
    v279 = (v278 + a3);
    *v279 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v267), v156, 6uLL));
    v280 = (v279 + a3);
    *v280 = vqmovun_s16(v270);
    v281 = (v280 + a3);
    *v281 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v271), v160, 6uLL));
    v282 = (v281 + a3);
    *v282 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v273), v162, 6uLL));
    *(v282 + a3) = vqmovun_s16(v275);
  }

  return result;
}

int16x8_t *vpx_idct32_32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v686 = *MEMORY[0x277D85DE8];
  v7 = v6;
  v576 = 31 * v6;
  v575 = 2 * v6;
  v574 = 15 * v6;
  v8 = -v6;
  v9 = 2 * v6;
  v10 = -2 * v6;
  LOBYTE(v11) = 1;
  v12 = v685;
  v13 = v685;
  v14 = v4;
  do
  {
    v15 = v11;
    v11 = 4;
    do
    {
      while (1)
      {
        if (v15)
        {
          v28 = vuzp1q_s16(*result, result[1]);
          v29 = vuzp1q_s16(result[8], result[9]);
          v30 = vuzp1q_s16(result[16], result[17]);
          v31 = vuzp1q_s16(result[24], result[25]);
          v32 = vuzp1q_s16(result[32], result[33]);
          v33 = vuzp1q_s16(result[40], result[41]);
          v34 = vuzp1q_s16(result[48], result[49]);
          v35 = vuzp1q_s16(result[56], result[57]);
          v36 = vtrn1q_s16(v28, v29);
          v37 = vtrn2q_s16(v28, v29);
          v38 = vtrn1q_s16(v30, v31);
          v39 = vtrn2q_s16(v30, v31);
          v40 = vtrn1q_s16(v32, v33);
          v41 = vtrn2q_s16(v32, v33);
          v42 = vtrn1q_s16(v34, v35);
          v43 = vtrn2q_s16(v34, v35);
          v44 = vtrn1q_s32(v36, v38);
          v45 = vtrn2q_s32(v36, v38);
          v103 = vtrn1q_s32(v37, v39);
          v46 = vtrn2q_s32(v37, v39);
          v47 = vtrn1q_s32(v40, v42);
          v48 = vtrn2q_s32(v40, v42);
          v49 = vtrn1q_s32(v41, v43);
          v673 = vtrn2q_s32(v41, v43);
          v50 = vuzp1q_s16(result[2], result[3]);
          v51 = vuzp1q_s16(result[10], result[11]);
          v52 = vuzp1q_s16(result[18], result[19]);
          v53 = vuzp1q_s16(result[26], result[27]);
          v54 = vuzp1q_s16(result[34], result[35]);
          v55 = vuzp1q_s16(result[42], result[43]);
          v56 = vuzp1q_s16(result[50], result[51]);
          v57 = vuzp1q_s16(result[58], result[59]);
          v58 = vtrn1q_s16(v50, v51);
          v59 = vtrn2q_s16(v50, v51);
          v60 = vtrn1q_s16(v52, v53);
          v61 = vtrn2q_s16(v52, v53);
          v62 = vtrn1q_s16(v54, v55);
          v63 = vtrn2q_s16(v54, v55);
          v64 = vtrn1q_s16(v56, v57);
          v65 = vtrn2q_s16(v56, v57);
          v66 = vtrn1q_s32(v58, v60);
          v107 = vtrn2q_s32(v58, v60);
          v106 = vtrn1q_s32(v59, v61);
          v110 = vtrn2q_s32(v59, v61);
          v67 = vtrn1q_s32(v62, v64);
          v68 = vtrn2q_s32(v62, v64);
          v69 = vtrn1q_s32(v63, v65);
          v70 = vtrn2q_s32(v63, v65);
          v71 = vuzp1q_s16(result[4], result[5]);
          v72 = vuzp1q_s16(result[12], result[13]);
          v73 = vuzp1q_s16(result[20], result[21]);
          v74 = vuzp1q_s16(result[28], result[29]);
          v75 = vuzp1q_s16(result[36], result[37]);
          v76 = vuzp1q_s16(result[44], result[45]);
          v77 = vuzp1q_s16(result[52], result[53]);
          v78 = vuzp1q_s16(result[60], result[61]);
          v79 = vtrn1q_s16(v71, v72);
          v80 = vtrn2q_s16(v71, v72);
          v81 = vtrn1q_s16(v73, v74);
          v82 = vtrn2q_s16(v73, v74);
          v83 = vtrn1q_s16(v75, v76);
          v84 = vtrn2q_s16(v75, v76);
          v85 = vtrn1q_s16(v77, v78);
          v86 = vtrn2q_s16(v77, v78);
          v87 = vtrn1q_s32(v79, v81);
          v123 = vtrn2q_s32(v79, v81);
          v88 = vtrn1q_s32(v80, v82);
          v89 = vtrn2q_s32(v80, v82);
          v90 = vtrn1q_s32(v83, v85);
          v91 = vtrn2q_s32(v83, v85);
          v92 = vtrn1q_s32(v84, v86);
          v93 = vtrn2q_s32(v84, v86);
          v94 = vuzp1q_s16(result[6], result[7]);
          v95 = vuzp1q_s16(result[14], result[15]);
          v96 = vuzp1q_s16(result[22], result[23]);
          v97 = vuzp1q_s16(result[30], result[31]);
          v98 = vuzp1q_s16(result[38], result[39]);
          v99 = vuzp1q_s16(result[46], result[47]);
          v100 = vuzp1q_s16(result[54], result[55]);
          v101 = vzip2q_s64(v44, v47);
          v44.i64[1] = v47.i64[0];
          v621 = v101;
          v623 = v44;
          v102 = vzip2q_s64(v103, v49);
          v103.i64[1] = v49.i64[0];
          v681 = vzip2q_s64(v45, v48);
          v45.i64[1] = v48.i64[0];
          v679 = v45;
          v44.i64[0] = v46.i64[0];
          v104 = vzip2q_s64(v46, v673);
          v44.i64[1] = v673.i64[0];
          v619 = vzip2q_s64(v66, v67);
          v66.i64[1] = v67.i64[0];
          v670 = v66;
          v105 = vzip2q_s64(v106, v69);
          v106.i64[1] = v69.i64[0];
          v677 = vzip2q_s64(v107, v68);
          v107.i64[1] = v68.i64[0];
          v108 = vuzp1q_s16(result[62], result[63]);
          v109 = vzip2q_s64(v110, v70);
          v110.i64[1] = v70.i64[0];
          v111 = vtrn1q_s16(v94, v95);
          v112 = vtrn2q_s16(v94, v95);
          v666 = vzip2q_s64(v87, v90);
          v87.i64[1] = v90.i64[0];
          v669 = v87;
          v113 = vtrn1q_s16(v96, v97);
          v114 = vtrn2q_s16(v96, v97);
          v115 = v102;
          v116 = v105;
          v117 = vzip2q_s64(v88, v92);
          v118.i64[0] = v88.i64[0];
          v118.i64[1] = v92.i64[0];
          v119 = vtrn1q_s16(v98, v99);
          v120 = vtrn2q_s16(v98, v99);
          v121 = v44;
          v122 = vzip2q_s64(v123, v91);
          v123.i64[1] = v91.i64[0];
          v124 = vtrn1q_s16(v100, v108);
          v125 = vtrn2q_s16(v100, v108);
          v126 = vzip2q_s64(v89, v93);
          v127.i64[0] = v89.i64[0];
          v127.i64[1] = v93.i64[0];
          v128 = vtrn1q_s32(v111, v113);
          v135 = vtrn2q_s32(v111, v113);
          v133 = vtrn1q_s32(v112, v114);
          v138 = vtrn2q_s32(v112, v114);
          v129 = vtrn1q_s32(v119, v124);
          v130 = vtrn2q_s32(v119, v124);
          v664 = vzip2q_s64(v128, v129);
          v128.i64[1] = v129.i64[0];
          v668 = v128;
          v131 = vtrn1q_s32(v120, v125);
          v132 = vzip2q_s64(v133, v131);
          v133.i64[1] = v131.i64[0];
          v134 = vzip2q_s64(v135, v130);
          v135.i64[1] = v130.i64[0];
          v136 = vtrn2q_s32(v120, v125);
          v137 = vzip2q_s64(v138, v136);
          v138.i64[1] = v136.i64[0];
          result += 64;
        }

        else
        {
          v139 = v13[1];
          v140 = v13[4];
          v141 = v13[5];
          v142 = vtrn1q_s16(*v13, v140);
          v143 = vtrn2q_s16(*v13, v140);
          v144 = v13[8];
          v145 = v13[9];
          v146 = v13[12];
          v147 = v13[13];
          v148 = vtrn1q_s16(v144, v146);
          v149 = vtrn2q_s16(v144, v146);
          v150 = v13[16];
          v151 = v13[17];
          v152 = v13[20];
          v153 = v13[21];
          v154 = vtrn1q_s16(v150, v152);
          v155 = vtrn2q_s16(v150, v152);
          v156 = v13[24];
          v157 = v13[25];
          v158 = v13[28];
          v159 = v13[29];
          v160 = vtrn1q_s16(v156, v158);
          v161 = vtrn2q_s16(v156, v158);
          v162 = vtrn1q_s32(v142, v148);
          v163 = vtrn2q_s32(v142, v148);
          v103 = vtrn1q_s32(v143, v149);
          v121 = vtrn2q_s32(v143, v149);
          v164 = vtrn1q_s32(v154, v160);
          v165 = vtrn2q_s32(v154, v160);
          v166 = vtrn1q_s32(v155, v161);
          v167 = vzip2q_s64(v162, v164);
          v162.i64[1] = v164.i64[0];
          v621 = v167;
          v623 = v162;
          v168 = vtrn2q_s32(v155, v161);
          v115 = vzip2q_s64(v103, v166);
          v103.i64[1] = v166.i64[0];
          v681 = vzip2q_s64(v163, v165);
          v163.i64[1] = v165.i64[0];
          v679 = v163;
          v104 = vzip2q_s64(v121, v168);
          v169 = vtrn1q_s16(v139, v141);
          v170 = vtrn2q_s16(v139, v141);
          v171 = vtrn1q_s16(v145, v147);
          v172 = vtrn2q_s16(v145, v147);
          v173 = vtrn1q_s16(v151, v153);
          v174 = vtrn2q_s16(v151, v153);
          v175 = vtrn1q_s16(v157, v159);
          v176 = vtrn2q_s16(v157, v159);
          v177 = vtrn1q_s32(v169, v171);
          v107 = vtrn2q_s32(v169, v171);
          v106 = vtrn1q_s32(v170, v172);
          v110 = vtrn2q_s32(v170, v172);
          v178 = vtrn1q_s32(v173, v175);
          v179 = vtrn2q_s32(v173, v175);
          v180 = vtrn1q_s32(v174, v176);
          v181 = vtrn2q_s32(v174, v176);
          v619 = vzip2q_s64(v177, v178);
          v116 = vzip2q_s64(v106, v180);
          v182 = v13[2];
          v183 = v13[3];
          v184 = v13[6];
          v185 = v13[7];
          v186 = vtrn1q_s16(v182, v184);
          v187 = vtrn2q_s16(v182, v184);
          v188 = v13[10];
          v189 = v13[11];
          v190 = v13[14];
          v191 = v13[15];
          v192 = vtrn1q_s16(v188, v190);
          v193 = vtrn2q_s16(v188, v190);
          v194 = v13[18];
          v195 = v13[19];
          v196 = v13[22];
          v197 = v13[23];
          v198 = vtrn1q_s16(v194, v196);
          v121.i64[1] = v168.i64[0];
          v177.i64[1] = v178.i64[0];
          v670 = v177;
          v106.i64[1] = v180.i64[0];
          v199 = vtrn2q_s16(v194, v196);
          v200 = v13[26];
          v201 = v13[27];
          v203 = v13[30];
          v202 = v13[31];
          v204 = vtrn1q_s16(v200, v203);
          v205 = vtrn2q_s16(v200, v203);
          v677 = vzip2q_s64(v107, v179);
          v107.i64[1] = v179.i64[0];
          v206 = vtrn1q_s32(v186, v192);
          v123 = vtrn2q_s32(v186, v192);
          v109 = vzip2q_s64(v110, v181);
          v110.i64[1] = v181.i64[0];
          v207 = vtrn1q_s32(v187, v193);
          v208 = vtrn2q_s32(v187, v193);
          v209 = vtrn1q_s32(v198, v204);
          v666 = vzip2q_s64(v206, v209);
          v206.i64[1] = v209.i64[0];
          v669 = v206;
          v210 = vtrn2q_s32(v198, v204);
          v211 = vtrn1q_s32(v199, v205);
          v117 = vzip2q_s64(v207, v211);
          v118.i64[0] = v207.i64[0];
          v118.i64[1] = v211.i64[0];
          v212 = vtrn2q_s32(v199, v205);
          v122 = vzip2q_s64(v123, v210);
          v123.i64[1] = v210.i64[0];
          v126 = vzip2q_s64(v208, v212);
          v127.i64[0] = v208.i64[0];
          v127.i64[1] = v212.i64[0];
          v213 = vtrn1q_s16(v183, v185);
          v214 = vtrn2q_s16(v183, v185);
          v215 = vtrn1q_s16(v189, v191);
          v216 = vtrn2q_s16(v189, v191);
          v217 = vtrn1q_s16(v195, v197);
          v218 = vtrn2q_s16(v195, v197);
          v219 = vtrn1q_s16(v201, v202);
          v220 = vtrn2q_s16(v201, v202);
          v221 = vtrn1q_s32(v213, v215);
          v135 = vtrn2q_s32(v213, v215);
          v222 = vtrn1q_s32(v214, v216);
          v223 = vtrn2q_s32(v214, v216);
          v224 = vtrn1q_s32(v217, v219);
          v225 = vtrn2q_s32(v217, v219);
          v664 = vzip2q_s64(v221, v224);
          v221.i64[1] = v224.i64[0];
          v668 = v221;
          v226 = vtrn1q_s32(v218, v220);
          v132 = vzip2q_s64(v222, v226);
          v133.i64[0] = v222.i64[0];
          v133.i64[1] = v226.i64[0];
          v134 = vzip2q_s64(v135, v225);
          v135.i64[1] = v225.i64[0];
          v227 = vtrn2q_s32(v218, v220);
          v137 = vzip2q_s64(v223, v227);
          v138.i64[0] = v223.i64[0];
          v138.i64[1] = v227.i64[0];
          v13 += 32;
        }

        v228 = vdupq_n_s16(0x324u);
        v229 = vdupq_n_s16(0x3FECu);
        v658 = vmlsl_s16(vmull_s16(*v103.i8, *v228.i8), *v137.i8, *v229.i8);
        v652 = vmlsl_high_s16(vmull_high_s16(v103, v228), v137, v229);
        v648 = vmlal_s16(vmull_s16(*v137.i8, *v228.i8), *v103.i8, *v229.i8);
        v640 = vmlal_high_s16(vmull_high_s16(v137, v228), v103, v229);
        v230 = vdupq_n_s16(0x2F6Cu);
        v231 = vdupq_n_s16(0x2AFBu);
        v630 = vmlsl_s16(vmull_s16(*v118.i8, *v230.i8), *v109.i8, *v231.i8);
        v626 = vmlsl_high_s16(vmull_high_s16(v118, v230), v109, v231);
        v628 = vmlal_s16(vmull_s16(*v109.i8, *v230.i8), *v118.i8, *v231.i8);
        v624 = vmlal_high_s16(vmull_high_s16(v109, v230), v118, v231);
        v232 = vdupq_n_s16(0x1B5Du);
        v233 = vdupq_n_s16(0x39DBu);
        v234 = vmlsl_s16(vmull_s16(*v106.i8, *v232.i8), *v126.i8, *v233.i8);
        v235 = vmlsl_high_s16(vmull_high_s16(v106, v232), v126, v233);
        v236 = vmlal_s16(vmull_s16(*v126.i8, *v232.i8), *v106.i8, *v233.i8);
        v650 = vmlal_high_s16(vmull_high_s16(v126, v232), v106, v233);
        v237 = vdupq_n_s16(0x3C42u);
        v238 = vdupq_n_s16(0x1590u);
        v239 = vmlsl_s16(vmull_s16(*v133.i8, *v237.i8), *v104.i8, *v238.i8);
        v660 = v235;
        v662 = vmlsl_high_s16(vmull_high_s16(v133, v237), v104, v238);
        v240 = vmull_s16(*v104.i8, *v237.i8);
        v656 = vmlal_high_s16(vmull_high_s16(v104, v237), v133, v238);
        *v237.i8 = vsub_s16(vrshrn_n_s32(v662, 0xEuLL), vrshrn_n_s32(v235, 0xEuLL));
        v241 = vsub_s16(vrshrn_n_s32(v656, 0xEuLL), vrshrn_n_s32(v650, 0xEuLL));
        v636 = vrshrn_n_s32(v234, 0xEuLL);
        v638 = vrshrn_n_s32(v236, 0xEuLL);
        v642 = vrshrn_n_s32(v239, 0xEuLL);
        v644 = vrshrn_n_s32(vmlal_s16(v240, *v133.i8, *v238.i8), 0xEuLL);
        *v234.i8 = vsub_s16(v642, v636);
        *v239.i8 = vsub_s16(v644, v638);
        *v238.i8 = vdup_n_s16(0xC13Bu);
        v242 = vdup_n_s16(0xF384u);
        v654 = vmlsl_s16(vmull_s16(*v234.i8, *v238.i8), *v239.i8, v242);
        v646 = vmlsl_s16(vmull_s16(*v237.i8, *v238.i8), v241, v242);
        v632 = vmlal_s16(vmull_s16(v241, *v238.i8), *v237.i8, v242);
        v634 = vmlal_s16(vmull_s16(*v239.i8, *v238.i8), *v234.i8, v242);
        v243 = vdupq_n_s16(0xF8Du);
        v244 = vdupq_n_s16(0x3E15u);
        v245 = vmlsl_s16(vmull_s16(*v115.i8, *v243.i8), *v138.i8, *v244.i8);
        v246 = vmlsl_high_s16(vmull_high_s16(v115, v243), v138, v244);
        v247 = vmlal_s16(vmull_s16(*v138.i8, *v243.i8), *v115.i8, *v244.i8);
        v248 = vmlal_high_s16(vmull_high_s16(v138, v243), v115, v244);
        v249 = vdupq_n_s16(0x36E5u);
        v250 = vdupq_n_s16(0x20E7u);
        v251 = vmlsl_s16(vmull_s16(*v117.i8, *v249.i8), *v110.i8, *v250.i8);
        v252 = vmlsl_high_s16(vmull_high_s16(v117, v249), v110, v250);
        v253 = vmlal_s16(vmull_s16(*v110.i8, *v249.i8), *v117.i8, *v250.i8);
        v254 = vmlal_high_s16(vmull_high_s16(v110, v249), v117, v250);
        v255 = vdupq_n_s16(0x2620u);
        v256 = vdupq_n_s16(0x3368u);
        v257 = vmlsl_s16(vmull_s16(*v116.i8, *v255.i8), *v127.i8, *v256.i8);
        v258 = vmlsl_high_s16(vmull_high_s16(v116, v255), v127, v256);
        v259 = vmlal_s16(vmull_s16(*v127.i8, *v255.i8), *v116.i8, *v256.i8);
        v260 = vmlal_high_s16(vmull_high_s16(v127, v255), v116, v256);
        v261 = vdupq_n_s16(0x3F4Fu);
        v262 = vdupq_n_s16(0x964u);
        v263 = vmlsl_s16(vmull_s16(*v132.i8, *v261.i8), *v121.i8, *v262.i8);
        v264 = vmlsl_high_s16(vmull_high_s16(v132, v261), v121, v262);
        v265 = vmlal_s16(vmull_s16(*v121.i8, *v261.i8), *v132.i8, *v262.i8);
        v266 = vmlal_high_s16(vmull_high_s16(v121, v261), v132, v262);
        v267 = vsub_s16(vrshrn_n_s32(v264, 0xEuLL), vrshrn_n_s32(v258, 0xEuLL));
        v268 = vsub_s16(vrshrn_n_s32(v266, 0xEuLL), vrshrn_n_s32(v260, 0xEuLL));
        *v261.i8 = vrshrn_n_s32(v257, 0xEuLL);
        v269 = vrshrn_n_s32(v259, 0xEuLL);
        *v262.i8 = vrshrn_n_s32(v263, 0xEuLL);
        v674 = vrshrn_n_s32(v265, 0xEuLL);
        *v259.i8 = vsub_s16(*v262.i8, *v261.i8);
        *v263.i8 = vsub_s16(v674, v269);
        v270 = vdup_n_s16(0xDC72u);
        v271 = vdup_n_s16(0xCAC9u);
        v272 = vmlsl_s16(vmull_s16(*v259.i8, v270), *v263.i8, v271);
        v273 = vmlal_s16(vmull_s16(*v263.i8, v270), *v259.i8, v271);
        v605 = vmlsl_s16(vmull_s16(v267, v270), v268, v271);
        v584 = vmlal_s16(vmull_s16(v268, v270), v267, v271);
        v274 = vdupq_n_s16(0x646u);
        v275 = vdupq_n_s16(0x3FB1u);
        v614 = vmlsl_s16(vmull_s16(*v679.i8, *v274.i8), *v134.i8, *v275.i8);
        v615 = vmlsl_high_s16(vmull_high_s16(v679, v274), v134, v275);
        v613 = vmlal_s16(vmull_s16(*v134.i8, *v274.i8), *v679.i8, *v275.i8);
        v617 = vmlal_high_s16(vmull_high_s16(v134, v274), v679, v275);
        v276 = vdupq_n_s16(0x3179u);
        v277 = vdupq_n_s16(0x289Au);
        v608 = vmlsl_s16(vmull_s16(*v123.i8, *v276.i8), *v677.i8, *v277.i8);
        v610 = vmlsl_high_s16(vmull_high_s16(v123, v276), v677, v277);
        v606 = vmlal_s16(vmull_s16(*v677.i8, *v276.i8), *v123.i8, *v277.i8);
        v612 = vmlal_high_s16(vmull_high_s16(v677, v276), v123, v277);
        v278 = vdupq_n_s16(0x1E2Bu);
        v279 = vdupq_n_s16(0x3871u);
        v280 = vmlsl_s16(vmull_s16(*v107.i8, *v278.i8), *v122.i8, *v279.i8);
        v602 = vmlsl_high_s16(vmull_high_s16(v107, v278), v122, v279);
        v281 = vmlal_s16(vmull_s16(*v122.i8, *v278.i8), *v107.i8, *v279.i8);
        v598 = vmlal_high_s16(vmull_high_s16(v122, v278), v107, v279);
        v282 = vdupq_n_s16(0x3D3Fu);
        v283 = vdupq_n_s16(0x1294u);
        v284 = vmlsl_s16(vmull_s16(*v135.i8, *v282.i8), *v681.i8, *v283.i8);
        v603 = vmlsl_high_s16(vmull_high_s16(v135, v282), v681, v283);
        v285 = vmlal_s16(vmull_s16(*v681.i8, *v282.i8), *v135.i8, *v283.i8);
        v600 = vmlal_high_s16(vmull_high_s16(v681, v282), v135, v283);
        *v245.i8 = vrshrn_n_s32(v245, 0xEuLL);
        *v251.i8 = vrshrn_n_s32(v251, 0xEuLL);
        *v282.i8 = vsub_s16(*v245.i8, *v251.i8);
        v586 = vaddq_s16(vrshrn_high_n_s32(*v251.i8, v252, 0xEuLL), vrshrn_high_n_s32(*v245.i8, v246, 0xEuLL));
        *v247.i8 = vrshrn_n_s32(v247, 0xEuLL);
        *v245.i8 = vrshrn_n_s32(v253, 0xEuLL);
        *v251.i8 = vsub_s16(*v247.i8, *v245.i8);
        v590 = vaddq_s16(vrshrn_high_n_s32(*v245.i8, v254, 0xEuLL), vrshrn_high_n_s32(*v247.i8, v248, 0xEuLL));
        *v245.i8 = vsub_s16(vrshrn_n_s32(v248, 0xEuLL), vrshrn_n_s32(v254, 0xEuLL));
        *v254.i8 = vsub_s16(vrshrn_n_s32(v246, 0xEuLL), vrshrn_n_s32(v252, 0xEuLL));
        v286 = vdupq_n_s16(0x3537u);
        v287 = vdupq_n_s16(0x238Eu);
        v288 = vmlsl_s16(vmull_s16(*v251.i8, *v286.i8), *v282.i8, *v287.i8);
        v289 = vmlal_s16(vmull_s16(*v282.i8, *v286.i8), *v251.i8, *v287.i8);
        v290 = vmlsl_s16(vmull_s16(*v245.i8, *v286.i8), *v254.i8, *v287.i8);
        v291 = vmlal_s16(vmull_s16(*v254.i8, *v286.i8), *v245.i8, *v287.i8);
        v588 = vaddq_s16(vrshrn_high_n_s32(*v262.i8, v264, 0xEuLL), vrshrn_high_n_s32(*v261.i8, v258, 0xEuLL));
        v585 = vaddq_s16(vrshrn_high_n_s32(v674, v266, 0xEuLL), vrshrn_high_n_s32(v269, v260, 0xEuLL));
        v292 = vsubq_s16(v588, v586);
        v293 = vsubq_s16(v585, v590);
        v294 = vdupq_n_s16(0xC4DFu);
        v295 = vdupq_n_s16(0xE782u);
        v296 = vmlsl_s16(vmull_s16(*v292.i8, *v294.i8), *v293.i8, *v295.i8);
        v675 = vmlsl_high_s16(vmull_high_s16(v292, v294), v293, v295);
        v297 = vmlal_s16(vmull_s16(*v293.i8, *v294.i8), *v292.i8, *v295.i8);
        v592 = vmlal_high_s16(vmull_high_s16(v293, v294), v292, v295);
        *v260.i8 = vsub_s16(vrshrn_n_s32(v584, 0xEuLL), vrshrn_n_s32(v290, 0xEuLL));
        *v258.i8 = vsub_s16(vrshrn_n_s32(v605, 0xEuLL), vrshrn_n_s32(v291, 0xEuLL));
        *v292.i8 = vrshrn_n_s32(v288, 0xEuLL);
        *v293.i8 = vrshrn_n_s32(v289, 0xEuLL);
        v298 = vrshrn_n_s32(v272, 0xEuLL);
        v299 = vrshrn_n_s32(v273, 0xEuLL);
        *v288.i8 = vsub_s16(v299, *v292.i8);
        *v264.i8 = vsub_s16(v298, *v293.i8);
        v300 = vmlsl_s16(vmull_s16(*v288.i8, *v294.i8), *v264.i8, *v295.i8);
        v301 = vmlal_s16(vmull_s16(*v264.i8, *v294.i8), *v288.i8, *v295.i8);
        v671 = vmlsl_s16(vmull_s16(*v260.i8, *v294.i8), *v258.i8, *v295.i8);
        v682 = vmlal_s16(vmull_s16(*v258.i8, *v294.i8), *v260.i8, *v295.i8);
        *v260.i8 = vsub_s16(vrshrn_n_s32(v603, 0xEuLL), vrshrn_n_s32(v602, 0xEuLL));
        *v288.i8 = vsub_s16(vrshrn_n_s32(v600, 0xEuLL), vrshrn_n_s32(v598, 0xEuLL));
        v593 = vrshrn_n_s32(v280, 0xEuLL);
        v594 = vrshrn_n_s32(v281, 0xEuLL);
        v595 = vrshrn_n_s32(v284, 0xEuLL);
        v596 = vrshrn_n_s32(v285, 0xEuLL);
        *v280.i8 = vsub_s16(v595, v593);
        *v258.i8 = vsub_s16(v596, v594);
        v599 = vmlsl_s16(vmull_s16(*v280.i8, *v294.i8), *v258.i8, *v295.i8);
        v597 = vmlal_s16(vmull_s16(*v258.i8, *v294.i8), *v280.i8, *v295.i8);
        v680 = vmlsl_s16(vmull_s16(*v260.i8, *v294.i8), *v288.i8, *v295.i8);
        v678 = vmlal_s16(vmull_s16(*v288.i8, *v294.i8), *v260.i8, *v295.i8);
        *v285.i8 = vsub_s16(vrshrn_n_s32(v640, 0xEuLL), vrshrn_n_s32(v624, 0xEuLL));
        *v280.i8 = vsub_s16(vrshrn_n_s32(v652, 0xEuLL), vrshrn_n_s32(v626, 0xEuLL));
        *v284.i8 = vrshrn_n_s32(v658, 0xEuLL);
        *v264.i8 = vrshrn_n_s32(v648, 0xEuLL);
        *v258.i8 = vrshrn_n_s32(v630, 0xEuLL);
        *v288.i8 = vrshrn_n_s32(v628, 0xEuLL);
        *v294.i8 = vsub_s16(*v264.i8, *v288.i8);
        *v295.i8 = vsub_s16(*v284.i8, *v258.i8);
        v302 = vdupq_n_s16(0xC7Cu);
        v303 = vdupq_n_s16(0x3EC5u);
        v304 = vmlsl_s16(vmull_s16(*v294.i8, *v302.i8), *v295.i8, *v303.i8);
        v305 = vmlal_s16(vmull_s16(*v295.i8, *v302.i8), *v294.i8, *v303.i8);
        v306 = vmlsl_s16(vmull_s16(*v285.i8, *v302.i8), *v280.i8, *v303.i8);
        v307 = vmlal_s16(vmull_s16(*v280.i8, *v302.i8), *v285.i8, *v303.i8);
        v659 = vmlsl_s16(vmull_s16(*v621.i8, *v302.i8), *v664.i8, *v303.i8);
        v308 = vmlsl_high_s16(vmull_high_s16(v621, v302), v664, v303);
        v309 = vmull_high_s16(v664, v302);
        v665 = vmlal_s16(vmull_s16(*v664.i8, *v302.i8), *v621.i8, *v303.i8);
        v649 = vmlsl_s16(vmull_s16(*v666.i8, *v286.i8), *v619.i8, *v287.i8);
        v577 = v308;
        v578 = vmlsl_high_s16(vmull_high_s16(v666, v286), v619, v287);
        v631 = vmlal_s16(vmull_s16(*v619.i8, *v286.i8), *v666.i8, *v287.i8);
        v580 = vmlal_high_s16(vmull_high_s16(v619, v286), v666, v287);
        v581 = vmlal_high_s16(v309, v621, v303);
        v310 = vaddq_s16(vrshrn_high_n_s32(*v258.i8, v626, 0xEuLL), vrshrn_high_n_s32(*v284.i8, v652, 0xEuLL));
        v311 = vaddq_s16(vrshrn_high_n_s32(*v288.i8, v624, 0xEuLL), vrshrn_high_n_s32(*v264.i8, v640, 0xEuLL));
        v312 = vaddq_s16(vrshrn_high_n_s32(v644, v656, 0xEuLL), vrshrn_high_n_s32(v638, v650, 0xEuLL));
        v313 = vaddq_s16(vrshrn_high_n_s32(v642, v662, 0xEuLL), vrshrn_high_n_s32(v636, v660, 0xEuLL));
        *v287.i8 = vrshrn_n_s32(v304, 0xEuLL);
        *v286.i8 = vrshrn_n_s32(v634, 0xEuLL);
        *v304.i8 = vsub_s16(*v287.i8, *v286.i8);
        v661 = vaddq_s16(vrshrn_high_n_s32(*v286.i8, v632, 0xEuLL), vrshrn_high_n_s32(*v287.i8, v306, 0xEuLL));
        *v287.i8 = vrshrn_n_s32(v305, 0xEuLL);
        *v286.i8 = vrshrn_n_s32(v654, 0xEuLL);
        *v305.i8 = vsub_s16(*v287.i8, *v286.i8);
        v667 = vaddq_s16(vrshrn_high_n_s32(*v286.i8, v646, 0xEuLL), vrshrn_high_n_s32(*v287.i8, v307, 0xEuLL));
        *v303.i8 = vsub_s16(vrshrn_n_s32(v307, 0xEuLL), vrshrn_n_s32(v646, 0xEuLL));
        *v302.i8 = vsub_s16(vrshrn_n_s32(v306, 0xEuLL), vrshrn_n_s32(v632, 0xEuLL));
        v314 = vdupq_n_s16(0x187Eu);
        v315 = vdupq_n_s16(0x3B21u);
        v316 = vmlsl_s16(vmull_s16(*v305.i8, *v314.i8), *v304.i8, *v315.i8);
        v317 = vmlal_s16(vmull_s16(*v304.i8, *v314.i8), *v305.i8, *v315.i8);
        v318 = vmlsl_s16(vmull_s16(*v303.i8, *v314.i8), *v302.i8, *v315.i8);
        v319 = vmlal_s16(vmull_s16(*v302.i8, *v314.i8), *v303.i8, *v315.i8);
        v583 = vaddq_s16(v313, v310);
        v320 = vsubq_s16(v310, v313);
        v639 = vaddq_s16(v312, v311);
        v321 = vsubq_s16(v311, v312);
        v322 = vmlsl_high_s16(vmull_high_s16(v321, v314), v320, v315);
        v323 = vmlal_high_s16(vmull_high_s16(v320, v314), v321, v315);
        v663 = vaddq_s16(vrshrn_high_n_s32(v299, v584, 0xEuLL), vrshrn_high_n_s32(*v292.i8, v290, 0xEuLL));
        v627 = vaddq_s16(v588, v586);
        v641 = vaddq_s16(v585, v590);
        v657 = vaddq_s16(vrshrn_high_n_s32(v298, v605, 0xEuLL), vrshrn_high_n_s32(*v293.i8, v291, 0xEuLL));
        v324 = vsubq_s16(v661, v663);
        v325 = vsubq_s16(v667, v657);
        v326 = vdupq_n_s16(0x2D41u);
        v655 = vmlsl_s16(vmull_s16(*v325.i8, *v326.i8), *v324.i8, *v326.i8);
        v653 = vmlsl_high_s16(vmull_high_s16(v325, v326), v324, v326);
        v651 = vmlal_s16(vmull_s16(*v324.i8, *v326.i8), *v325.i8, *v326.i8);
        v647 = vmlal_high_s16(vmull_high_s16(v324, v326), v325, v326);
        v327 = vsubq_s16(v583, v627);
        v328 = vsubq_s16(v639, v641);
        v645 = vmlsl_s16(vmull_s16(*v328.i8, *v326.i8), *v327.i8, *v326.i8);
        v643 = vmlsl_high_s16(vmull_high_s16(v328, v326), v327, v326);
        v635 = vmlal_high_s16(vmull_high_s16(v327, v326), v328, v326);
        v637 = vmlal_s16(vmull_s16(*v327.i8, *v326.i8), *v328.i8, *v326.i8);
        *v327.i8 = vsub_s16(vrshrn_n_s32(v323, 0xEuLL), vrshrn_n_s32(v675, 0xEuLL));
        *v328.i8 = vsub_s16(vrshrn_n_s32(v322, 0xEuLL), vrshrn_n_s32(v592, 0xEuLL));
        *v312.i8 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v321.i8, *v314.i8), *v320.i8, *v315.i8), 0xEuLL);
        *v585.i8 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v320.i8, *v314.i8), *v321.i8, *v315.i8), 0xEuLL);
        *v605.i8 = vrshrn_n_s32(v296, 0xEuLL);
        v620 = vrshrn_n_s32(v297, 0xEuLL);
        *v291.i8 = vsub_s16(*v585.i8, *v605.i8);
        *v320.i8 = vsub_s16(*v312.i8, v620);
        v633 = vmlsl_s16(vmull_s16(*v291.i8, *v326.i8), *v320.i8, *v326.i8);
        v629 = vmlal_s16(vmull_s16(*v320.i8, *v326.i8), *v291.i8, *v326.i8);
        v625 = vmlsl_s16(vmull_s16(*v327.i8, *v326.i8), *v328.i8, *v326.i8);
        v622 = vmlal_s16(vmull_s16(*v328.i8, *v326.i8), *v327.i8, *v326.i8);
        *v327.i8 = vsub_s16(vrshrn_n_s32(v319, 0xEuLL), vrshrn_n_s32(v671, 0xEuLL));
        *v328.i8 = vsub_s16(vrshrn_n_s32(v318, 0xEuLL), vrshrn_n_s32(v682, 0xEuLL));
        v329 = vrshrn_n_s32(v316, 0xEuLL);
        *v289.i8 = vrshrn_n_s32(v317, 0xEuLL);
        *v317.i8 = vrshrn_n_s32(v300, 0xEuLL);
        *v584.i8 = vrshrn_n_s32(v301, 0xEuLL);
        *v316.i8 = vsub_s16(*v289.i8, *v317.i8);
        v301.i64[0] = v317.i64[0];
        *v317.i8 = vsub_s16(v329, *v584.i8);
        v589 = vmlal_s16(vmull_s16(*v317.i8, *v326.i8), *v316.i8, *v326.i8);
        v591 = vmlsl_s16(vmull_s16(*v316.i8, *v326.i8), *v317.i8, *v326.i8);
        v582 = vmlsl_s16(vmull_s16(*v327.i8, *v326.i8), *v328.i8, *v326.i8);
        v587 = vmlal_s16(vmull_s16(*v328.i8, *v326.i8), *v327.i8, *v326.i8);
        *v316.i8 = vrshrn_n_s32(v614, 0xEuLL);
        *v327.i8 = vrshrn_n_s32(v608, 0xEuLL);
        *v328.i8 = vsub_s16(*v316.i8, *v327.i8);
        v579 = vaddq_s16(vrshrn_high_n_s32(*v327.i8, v610, 0xEuLL), vrshrn_high_n_s32(*v316.i8, v615, 0xEuLL));
        *v316.i8 = vrshrn_n_s32(v613, 0xEuLL);
        *v327.i8 = vrshrn_n_s32(v606, 0xEuLL);
        *v317.i8 = vsub_s16(*v316.i8, *v327.i8);
        v607 = vaddq_s16(vrshrn_high_n_s32(*v327.i8, v612, 0xEuLL), vrshrn_high_n_s32(*v316.i8, v617, 0xEuLL));
        *v316.i8 = vsub_s16(vrshrn_n_s32(v617, 0xEuLL), vrshrn_n_s32(v612, 0xEuLL));
        *v327.i8 = vsub_s16(vrshrn_n_s32(v615, 0xEuLL), vrshrn_n_s32(v610, 0xEuLL));
        v330 = vmlsl_s16(vmull_s16(*v317.i8, *v314.i8), *v328.i8, *v315.i8);
        v331 = vmlal_s16(vmull_s16(*v328.i8, *v314.i8), *v317.i8, *v315.i8);
        v332 = vmlsl_s16(vmull_s16(*v316.i8, *v314.i8), *v327.i8, *v315.i8);
        v333 = vmlal_s16(vmull_s16(*v327.i8, *v314.i8), *v316.i8, *v315.i8);
        v609 = vaddq_s16(vrshrn_high_n_s32(v596, v600, 0xEuLL), vrshrn_high_n_s32(v594, v598, 0xEuLL));
        *v316.i8 = vsub_s16(vrshrn_n_s32(v333, 0xEuLL), vrshrn_n_s32(v680, 0xEuLL));
        *v327.i8 = vsub_s16(vrshrn_n_s32(v332, 0xEuLL), vrshrn_n_s32(v678, 0xEuLL));
        v601 = vaddq_s16(vrshrn_high_n_s32(v595, v603, 0xEuLL), vrshrn_high_n_s32(v593, v602, 0xEuLL));
        *v602.i8 = vrshrn_n_s32(v330, 0xEuLL);
        *v612.i8 = vrshrn_n_s32(v331, 0xEuLL);
        *v613.i8 = vrshrn_n_s32(v599, 0xEuLL);
        *v321.i8 = vrshrn_n_s32(v597, 0xEuLL);
        *v331.i8 = vsub_s16(*v612.i8, *v613.i8);
        *v330.i8 = vsub_s16(*v602.i8, *v321.i8);
        v334 = vmlsl_s16(vmull_s16(*v331.i8, *v326.i8), *v330.i8, *v326.i8);
        v618 = vmlal_s16(vmull_s16(*v330.i8, *v326.i8), *v331.i8, *v326.i8);
        v335 = vmlsl_s16(vmull_s16(*v316.i8, *v326.i8), *v327.i8, *v326.i8);
        v616 = vmlal_s16(vmull_s16(*v327.i8, *v326.i8), *v316.i8, *v326.i8);
        v336 = vsubq_s16(v579, v601);
        v337 = vsubq_s16(v607, v609);
        v338 = vmlsl_s16(vmull_s16(*v337.i8, *v326.i8), *v336.i8, *v326.i8);
        v611 = vmlsl_high_s16(vmull_high_s16(v337, v326), v336, v326);
        v339 = vmlal_s16(vmull_s16(*v336.i8, *v326.i8), *v337.i8, *v326.i8);
        v604 = vmlal_high_s16(vmull_high_s16(v336, v326), v337, v326);
        *v336.i8 = vsub_s16(vrshrn_n_s32(v581, 0xEuLL), vrshrn_n_s32(v580, 0xEuLL));
        v340 = vsub_s16(vrshrn_n_s32(v308, 0xEuLL), vrshrn_n_s32(v578, 0xEuLL));
        *v598.i8 = vrshrn_n_s32(v659, 0xEuLL);
        *v599.i8 = vrshrn_n_s32(v665, 0xEuLL);
        *v331.i8 = vrshrn_n_s32(v649, 0xEuLL);
        *v665.i8 = vrshrn_n_s32(v631, 0xEuLL);
        v341 = vsub_s16(*v599.i8, *v665.i8);
        *v337.i8 = vsub_s16(*v598.i8, *v331.i8);
        v342 = vrshrn_high_n_s32(v329, v318, 0xEuLL);
        v343 = vrshrn_high_n_s32(*v289.i8, v319, 0xEuLL);
        v344 = vrshrn_high_n_s32(*v312.i8, v322, 0xEuLL);
        v345 = vrshrn_high_n_s32(*v585.i8, v323, 0xEuLL);
        v346 = vaddq_s16(v627, v583);
        v347 = vaddq_s16(v663, v661);
        v348 = vrshrn_high_n_s32(vrshrn_n_s32(v651, 0xEuLL), v647, 0xEuLL);
        v349 = vrshrn_high_n_s32(vrshrn_n_s32(v637, 0xEuLL), v635, 0xEuLL);
        v350 = vrshrn_high_n_s32(*v301.i8, v671, 0xEuLL);
        v672 = vaddq_s16(vrshrn_high_n_s32(*v584.i8, v682, 0xEuLL), v342);
        v676 = vaddq_s16(vrshrn_high_n_s32(*v605.i8, v675, 0xEuLL), v345);
        v683 = vaddq_s16(v350, v343);
        v351 = vrshrn_high_n_s32(vrshrn_n_s32(v633, 0xEuLL), v625, 0xEuLL);
        v352 = vrshrn_high_n_s32(vrshrn_n_s32(v629, 0xEuLL), v622, 0xEuLL);
        v353 = vrshrn_high_n_s32(vrshrn_n_s32(v591, 0xEuLL), v582, 0xEuLL);
        v354 = vrshrn_high_n_s32(*v612.i8, v333, 0xEuLL);
        v355 = vaddq_s16(vrshrn_high_n_s32(*v321.i8, v678, 0xEuLL), vrshrn_high_n_s32(*v602.i8, v332, 0xEuLL));
        v356 = vaddq_s16(vrshrn_high_n_s32(*v613.i8, v680, 0xEuLL), v354);
        v357 = vaddq_s16(v609, v607);
        v358 = vrshrn_high_n_s32(vrshrn_n_s32(v334, 0xEuLL), v335, 0xEuLL);
        v359 = vrshrn_high_n_s32(vrshrn_n_s32(v618, 0xEuLL), v616, 0xEuLL);
        v360 = vrshrn_high_n_s32(vrshrn_n_s32(v338, 0xEuLL), v611, 0xEuLL);
        v361 = vrshrn_high_n_s32(vrshrn_n_s32(v339, 0xEuLL), v604, 0xEuLL);
        v362 = vaddq_s16(v601, v579);
        v363 = vaddq_s16(vrshrn_high_n_s32(v620, v592, 0xEuLL), v344);
        v364 = vaddq_s16(vrshrn_high_n_s32(*v331.i8, v578, 0xEuLL), vrshrn_high_n_s32(*v598.i8, v577, 0xEuLL));
        v365 = vaddq_s16(vrshrn_high_n_s32(*v665.i8, v580, 0xEuLL), vrshrn_high_n_s32(*v599.i8, v581, 0xEuLL));
        v366 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v341, *v326.i8), *v337.i8, *v326.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v336.i8, *v326.i8), v340, *v326.i8), 0xEuLL);
        v367 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v337.i8, *v326.i8), v341, *v326.i8), 0xEuLL), vmlal_s16(vmull_s16(v340, *v326.i8), *v336.i8, *v326.i8), 0xEuLL);
        v368 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v623.i8, *v326.i8), *v669.i8, *v326.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v623, v326), v669, v326), 0xEuLL);
        v369 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v669.i8, *v326.i8), *v623.i8, *v326.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v669, v326), v623, v326), 0xEuLL);
        v370 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v670.i8, *v314.i8), *v668.i8, *v315.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v670, v314), v668, v315), 0xEuLL);
        v371 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v668.i8, *v314.i8), *v670.i8, *v315.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v668, v314), v670, v315), 0xEuLL);
        v372 = vaddq_s16(v371, v369);
        v373 = vsubq_s16(v369, v371);
        v374 = vsubq_s16(v368, v370);
        v375 = vaddq_s16(v370, v368);
        v376 = vaddq_s16(v373, v364);
        v377 = vsubq_s16(v373, v364);
        v378 = vaddq_s16(v374, v366);
        v379 = vsubq_s16(v374, v366);
        v380 = vaddq_s16(v375, v367);
        v381 = vsubq_s16(v375, v367);
        v382 = vaddq_s16(v372, v365);
        v383 = vsubq_s16(v372, v365);
        v12[56] = v356;
        v384 = vaddq_s16(v380, v356);
        v385 = vsubq_s16(v380, v356);
        v12[60] = v357;
        v386 = vaddq_s16(v382, v357);
        v387 = vsubq_s16(v382, v357);
        v388 = vrshrn_high_n_s32(vrshrn_n_s32(v589, 0xEuLL), v587, 0xEuLL);
        v12[64] = v346;
        v389 = vqaddq_s16(v387, v346);
        v390 = vqsubq_s16(v387, v346);
        v391 = vrshrn_high_n_s32(vrshrn_n_s32(v645, 0xEuLL), v643, 0xEuLL);
        v392 = vrshrn_high_n_s32(vrshrn_n_s32(v655, 0xEuLL), v653, 0xEuLL);
        v12[68] = v347;
        v393 = vqaddq_s16(v385, v347);
        v394 = vqsubq_s16(v385, v347);
        v395 = vaddq_s16(v641, v639);
        v396 = vaddq_s16(v657, v667);
        v12[120] = v396;
        v12[124] = v395;
        v12[100] = v348;
        v12[88] = v392;
        v12[96] = v349;
        v12[92] = v391;
        v12[72] = v672;
        v12[76] = v363;
        v12[112] = v676;
        v12[116] = v683;
        v12[80] = v351;
        v12[108] = v352;
        v12[84] = v353;
        v12[104] = v388;
        v12[32] = v362;
        v12[36] = v355;
        v12[52] = v359;
        v12[40] = v358;
        v12[44] = v360;
        v12[48] = v361;
        if ((v15 & 1) == 0)
        {
          break;
        }

        v12[64] = v390;
        v12[68] = v394;
        v12[56] = v393;
        v12[60] = v389;
        v12[120] = vsubq_s16(v384, v396);
        v12[124] = vsubq_s16(v386, v395);
        *v12 = vaddq_s16(v386, v395);
        v12[4] = vaddq_s16(v384, v396);
        v16 = vaddq_s16(v378, v359);
        v17 = vaddq_s16(v376, v361);
        v18 = vsubq_s16(v376, v361);
        v19 = vsubq_s16(v378, v359);
        v12[72] = vsubq_s16(v19, v672);
        v12[76] = vsubq_s16(v18, v363);
        v12[48] = vaddq_s16(v18, v363);
        v12[52] = vaddq_s16(v19, v672);
        v12[112] = vsubq_s16(v17, v676);
        v12[116] = vsubq_s16(v16, v683);
        v12[8] = vaddq_s16(v16, v683);
        v12[12] = vaddq_s16(v17, v676);
        v20 = vaddq_s16(v377, v360);
        v21 = vaddq_s16(v379, v358);
        v22 = vsubq_s16(v379, v358);
        v23 = vsubq_s16(v377, v360);
        v12[80] = vsubq_s16(v23, v351);
        v12[84] = vsubq_s16(v22, v353);
        v12[40] = vaddq_s16(v22, v353);
        v12[44] = vaddq_s16(v23, v351);
        v12[104] = vsubq_s16(v21, v388);
        v12[108] = vsubq_s16(v20, v352);
        v12[16] = vaddq_s16(v20, v352);
        v12[20] = vaddq_s16(v21, v388);
        v24 = vaddq_s16(v381, v355);
        v25 = vaddq_s16(v383, v362);
        v26 = vsubq_s16(v383, v362);
        v27 = vsubq_s16(v381, v355);
        v12[88] = vsubq_s16(v27, v392);
        v12[92] = vsubq_s16(v26, v391);
        v12[32] = vaddq_s16(v26, v391);
        v12[36] = vaddq_s16(v27, v392);
        v12[96] = vsubq_s16(v25, v349);
        v12[100] = vsubq_s16(v24, v348);
        v12[24] = vaddq_s16(v24, v348);
        v12[28] = vaddq_s16(v25, v349);
        ++v12;
        if (!--v11)
        {
          goto LABEL_2;
        }
      }

      v397 = vrshrq_n_s16(v390, 6uLL);
      v398 = vrshrq_n_s16(v394, 6uLL);
      v399 = vrshrq_n_s16(v393, 6uLL);
      v400 = vrshrq_n_s16(v389, 6uLL);
      if (v5)
      {
        v401 = (v4 + 2 * v576);
        v402 = &v4[v575];
        v403 = (v4 + 2 * v574);
        v404 = 2 * v7;
        v405 = 2 * v8;
        v406 = vmovl_u8(vqmovun_s16(vaddq_s16(*v402, v397)));
        v407 = vmovl_u8(vqmovun_s16(vaddq_s16(*(v403 + 2 * v8), v399)));
        v408 = vmovl_u8(vqmovun_s16(vaddq_s16(*v403, v400)));
        *(v402 + v404) = vmovl_u8(vqmovun_s16(vaddq_s16(*(v402 + 2 * v7), v398)));
        *v402 = v406;
        *(v403 + v405) = v407;
        *v403 = v408;
        v409 = (v402 + 2 * v9);
        v410 = (v403 + 2 * v10);
        v411 = v12[120];
        v412 = v12[124];
        v413 = vqaddq_s16(v384, v411);
        v414 = vrsraq_n_s16(*(v401 + 2 * v8), vqsubq_s16(v384, v411), 6uLL);
        v415 = vrsraq_n_s16(*v401, vqsubq_s16(v386, v412), 6uLL);
        v416 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v4, vqaddq_s16(v386, v412), 6uLL)));
        *(v4 + v404) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v4 + 2 * v7), v413, 6uLL)));
        *v4 = v416;
        *(v401 + v405) = vmovl_u8(vqmovun_s16(v414));
        *v401 = vmovl_u8(vqmovun_s16(v415));
        v417 = (v4 + 2 * v9);
        v418 = (v401 + 2 * v10);
        v419 = v12[48];
        v420 = v12[52];
        v421 = vaddq_s16(v420, v378);
        v422 = vaddq_s16(v419, v376);
        v423 = vsubq_s16(v376, v419);
        v424 = vsubq_s16(v378, v420);
        v425 = v12[72];
        v426 = v12[76];
        v427 = vqaddq_s16(v423, v426);
        v428 = vqaddq_s16(v424, v425);
        v429 = vrsraq_n_s16(*(v409 + 2 * v7), vqsubq_s16(v423, v426), 6uLL);
        v430 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v409, vqsubq_s16(v424, v425), 6uLL)));
        v431 = vmovl_u8(vqmovun_s16(v429));
        v432 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v410 + 2 * v8), v427, 6uLL)));
        v433 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v410, v428, 6uLL)));
        *(v409 + v404) = v431;
        *v409 = v430;
        *(v410 + v405) = v432;
        *v410 = v433;
        v434 = (v409 + 2 * v9);
        v435 = (v410 + 2 * v10);
        v436 = v12[112];
        v437 = v12[116];
        v438 = vqaddq_s16(v422, v436);
        v439 = vrsraq_n_s16(*(v418 + 2 * v8), vqsubq_s16(v422, v436), 6uLL);
        v440 = vrsraq_n_s16(*v418, vqsubq_s16(v421, v437), 6uLL);
        v441 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v417, vqaddq_s16(v421, v437), 6uLL)));
        *(v417 + v404) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v417 + 2 * v7), v438, 6uLL)));
        *v417 = v441;
        *(v418 + v405) = vmovl_u8(vqmovun_s16(v439));
        *v418 = vmovl_u8(vqmovun_s16(v440));
        v442 = (v417 + 2 * v9);
        v443 = (v418 + 2 * v10);
        v444 = v12[40];
        v445 = v12[44];
        v446 = vaddq_s16(v445, v377);
        v447 = vaddq_s16(v444, v379);
        v448 = vsubq_s16(v379, v444);
        v449 = vsubq_s16(v377, v445);
        v450 = v12[80];
        v451 = v12[84];
        v452 = vqaddq_s16(v448, v451);
        v453 = vqaddq_s16(v449, v450);
        v454 = vrsraq_n_s16(*(v434 + 2 * v7), vqsubq_s16(v448, v451), 6uLL);
        v455 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v434, vqsubq_s16(v449, v450), 6uLL)));
        v456 = vmovl_u8(vqmovun_s16(v454));
        v457 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v435 + 2 * v8), v452, 6uLL)));
        v458 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v435, v453, 6uLL)));
        *(v434 + v404) = v456;
        *v434 = v455;
        *(v435 + v405) = v457;
        *v435 = v458;
        v459 = (v434 + 2 * v9);
        v460 = (v435 + 2 * v10);
        v461 = v12[104];
        v462 = v12[108];
        v463 = vqaddq_s16(v447, v461);
        v464 = vrsraq_n_s16(*(v443 + 2 * v8), vqsubq_s16(v447, v461), 6uLL);
        v465 = vrsraq_n_s16(*v443, vqsubq_s16(v446, v462), 6uLL);
        v466 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v442, vqaddq_s16(v446, v462), 6uLL)));
        *(v442 + v404) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v442 + 2 * v7), v463, 6uLL)));
        *v442 = v466;
        *(v443 + v405) = vmovl_u8(vqmovun_s16(v464));
        *v443 = vmovl_u8(vqmovun_s16(v465));
        v467 = (v442 + 2 * v9);
        v468 = (v443 + 2 * v10);
        v469 = v12[32];
        v470 = v12[36];
        v471 = vaddq_s16(v470, v381);
        v472 = vaddq_s16(v469, v383);
        v473 = vsubq_s16(v383, v469);
        v474 = vsubq_s16(v381, v470);
        v475 = v12[88];
        v476 = v12[92];
        v477 = vqaddq_s16(v473, v476);
        v478 = vqaddq_s16(v474, v475);
        v479 = vrsraq_n_s16(*(v459 + 2 * v7), vqsubq_s16(v473, v476), 6uLL);
        v480 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v459, vqsubq_s16(v474, v475), 6uLL)));
        v481 = vmovl_u8(vqmovun_s16(v479));
        v482 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v460 + 2 * v8), v477, 6uLL)));
        *v479.i8 = vqmovun_s16(vrsraq_n_s16(*v460, v478, 6uLL));
        *(v459 + v404) = v481;
        *v459 = v480;
        *(v460 + v405) = v482;
        *v460 = vmovl_u8(*v479.i8);
        v483 = v12[96];
        v484 = v12[100];
        v485 = vqaddq_s16(v472, v483);
        v486 = vrsraq_n_s16(*(v468 + 2 * v8), vqsubq_s16(v472, v483), 6uLL);
        v487 = vrsraq_n_s16(*v468, vqsubq_s16(v471, v484), 6uLL);
        v488 = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*v467, vqaddq_s16(v471, v484), 6uLL)));
        *(v467 + v404) = vmovl_u8(vqmovun_s16(vrsraq_n_s16(*(v467 + 2 * v7), v485, 6uLL)));
        *v467 = v488;
        *(v468 + v405) = vmovl_u8(vqmovun_s16(v486));
        *v468 = vmovl_u8(vqmovun_s16(v487));
        ++v4;
      }

      else
      {
        v489 = (v14 + v576);
        v490 = &v14[v575];
        v491 = (v14 + v574);
        v492 = vaddw_u8(v400, *(v14 + v574));
        v493 = vqmovun_s16(vaddw_u8(v397, v14[v575]));
        v494 = vqmovun_s16(vaddw_u8(v399, *(v14 + v574 + v8)));
        *(v490 + v7) = vqmovun_s16(vaddw_u8(v398, *(&v14[v575] + v7)));
        *v490 = v493;
        *(v491 + v8) = v494;
        *v491 = vqmovun_s16(v492);
        v495 = (&v14[v575] + v9);
        v496 = (v14 + v574 + v10);
        v497 = v12[120];
        v498 = v12[124];
        v499 = vrsraq_n_s16(vmovl_u8(*v14), vqaddq_s16(v386, v498), 6uLL);
        v500 = vrsraq_n_s16(vmovl_u8(*(v14 + v7)), vqaddq_s16(v384, v497), 6uLL);
        v501 = vrsraq_n_s16(vmovl_u8(*(v14 + v576 + v8)), vqsubq_s16(v384, v497), 6uLL);
        v502 = vrsraq_n_s16(vmovl_u8(*(v14 + v576)), vqsubq_s16(v386, v498), 6uLL);
        *(v14 + v7) = vqmovun_s16(v500);
        *v14 = vqmovun_s16(v499);
        *(v489 + v8) = vqmovun_s16(v501);
        *v489 = vqmovun_s16(v502);
        v503 = (v14 + v9);
        v504 = (v14 + v576 + v10);
        v505 = v12[48];
        v506 = v12[52];
        v507 = vaddq_s16(v506, v378);
        v508 = vaddq_s16(v505, v376);
        v509 = vsubq_s16(v376, v505);
        v510 = vsubq_s16(v378, v506);
        v511 = v12[72];
        v512 = v12[76];
        v513 = vqaddq_s16(v510, v511);
        v514 = vrsraq_n_s16(vmovl_u8(*v495), vqsubq_s16(v510, v511), 6uLL);
        v515 = vrsraq_n_s16(vmovl_u8(*(v495 + v7)), vqsubq_s16(v509, v512), 6uLL);
        v516 = vrsraq_n_s16(vmovl_u8(*(v496 + v8)), vqaddq_s16(v509, v512), 6uLL);
        *v512.i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v496), v513, 6uLL));
        *(v495 + v7) = vqmovun_s16(v515);
        *v495 = vqmovun_s16(v514);
        *(v496 + v8) = vqmovun_s16(v516);
        *v496 = *v512.i8;
        v517 = (v495 + v9);
        v518 = (v496 + v10);
        v519 = v12[112];
        v520 = v12[116];
        v521 = vqaddq_s16(v507, v520);
        v522 = vqaddq_s16(v508, v519);
        v523 = vqsubq_s16(v507, v520);
        v524 = vrsraq_n_s16(vmovl_u8(*(v14 + v9)), v521, 6uLL);
        v525 = vrsraq_n_s16(vmovl_u8(*(v504 + v8)), vqsubq_s16(v508, v519), 6uLL);
        v526 = vrsraq_n_s16(vmovl_u8(*v504), v523, 6uLL);
        *(v503 + v7) = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v14 + v9 + v7)), v522, 6uLL));
        *v503 = vqmovun_s16(v524);
        *(v504 + v8) = vqmovun_s16(v525);
        *v504 = vqmovun_s16(v526);
        v527 = (v14 + v9 + v9);
        v528 = (v504 + v10);
        v529 = v12[40];
        v530 = v12[44];
        v531 = vaddq_s16(v530, v377);
        v532 = vaddq_s16(v529, v379);
        v533 = vsubq_s16(v379, v529);
        v534 = vsubq_s16(v377, v530);
        v535 = v12[80];
        v536 = v12[84];
        v537 = vqaddq_s16(v534, v535);
        v538 = vrsraq_n_s16(vmovl_u8(*v517), vqsubq_s16(v534, v535), 6uLL);
        v539 = vrsraq_n_s16(vmovl_u8(*(v517 + v7)), vqsubq_s16(v533, v536), 6uLL);
        v540 = vrsraq_n_s16(vmovl_u8(*(v518 + v8)), vqaddq_s16(v533, v536), 6uLL);
        *v536.i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v518), v537, 6uLL));
        *(v517 + v7) = vqmovun_s16(v539);
        *v517 = vqmovun_s16(v538);
        *(v518 + v8) = vqmovun_s16(v540);
        *v518 = *v536.i8;
        v541 = (v517 + v9);
        v542 = (v518 + v10);
        v543 = v12[104];
        v544 = v12[108];
        v545 = vqaddq_s16(v531, v544);
        v546 = vqaddq_s16(v532, v543);
        v547 = vqsubq_s16(v531, v544);
        v548 = vrsraq_n_s16(vmovl_u8(*v527), v545, 6uLL);
        v549 = vrsraq_n_s16(vmovl_u8(*(v528 + v8)), vqsubq_s16(v532, v543), 6uLL);
        v550 = vrsraq_n_s16(vmovl_u8(*v528), v547, 6uLL);
        *(v527 + v7) = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v527 + v7)), v546, 6uLL));
        *v527 = vqmovun_s16(v548);
        *(v528 + v8) = vqmovun_s16(v549);
        *v528 = vqmovun_s16(v550);
        v551 = (v527 + v9);
        v552 = (v528 + v10);
        v553 = v12[32];
        v554 = v12[36];
        v555 = vaddq_s16(v554, v381);
        v556 = vaddq_s16(v553, v383);
        v557 = vsubq_s16(v383, v553);
        v558 = vsubq_s16(v381, v554);
        v559 = v12[88];
        v560 = v12[92];
        v561 = vqaddq_s16(v558, v559);
        v562 = vrsraq_n_s16(vmovl_u8(*v541), vqsubq_s16(v558, v559), 6uLL);
        v563 = vrsraq_n_s16(vmovl_u8(*(v541 + v7)), vqsubq_s16(v557, v560), 6uLL);
        v564 = vrsraq_n_s16(vmovl_u8(*(v542 + v8)), vqaddq_s16(v557, v560), 6uLL);
        v565 = vrsraq_n_s16(vmovl_u8(*v542), v561, 6uLL);
        *(v541 + v7) = vqmovun_s16(v563);
        *v541 = vqmovun_s16(v562);
        *(v542 + v8) = vqmovun_s16(v564);
        *v542 = vqmovun_s16(v565);
        v566 = v12[96];
        v567 = v12[100];
        v568 = vqaddq_s16(v555, v567);
        v569 = vqaddq_s16(v556, v566);
        v570 = vqsubq_s16(v555, v567);
        v571 = vrsraq_n_s16(vmovl_u8(*v551), v568, 6uLL);
        v572 = vrsraq_n_s16(vmovl_u8(*(v528 + v10 + v8)), vqsubq_s16(v556, v566), 6uLL);
        v573 = vrsraq_n_s16(vmovl_u8(*(v528 + v10)), v570, 6uLL);
        *(v551 + v7) = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v551 + v7)), v569, 6uLL));
        *v551 = vqmovun_s16(v571);
        *(v552 + v8) = vqmovun_s16(v572);
        *v552 = vqmovun_s16(v573);
        ++v14;
      }

      ++v12;
      --v11;
    }

    while (v11);
LABEL_2:
    v12 = &v684;
  }

  while ((v15 & 1) != 0);
  return result;
}

int8x8_t vpx_idct4x4_16_add_neon(int16x8_t *a1, __int32 *a2, int a3)
{
  v3 = vuzp1q_s16(*a1, a1[1]);
  v4 = vuzp1q_s16(a1[2], a1[3]);
  v5 = vtrn1q_s32(v3, v4);
  v6 = vtrn2q_s32(v3, v4);
  v7 = vzip2q_s64(v5, v6);
  v5.i64[1] = v6.i64[0];
  v8 = vtrn1q_s16(v5, v7);
  v9 = vtrn2q_s16(v5, v7);
  v10 = vdupq_n_s16(0x2D41u);
  v11 = vmull_s16(*v8.i8, *v10.i8);
  v12 = vmlsl_high_s16(v11, v8, v10);
  v13 = vmlal_high_s16(v11, v8, v10);
  v14 = vdupq_n_s16(0x187Eu);
  v15 = vdupq_n_s16(0x3B21u);
  v16 = vmlsl_high_s16(vmull_s16(*v9.i8, *v14.i8), v9, v15);
  v17 = vmlal_high_s16(vmull_s16(*v9.i8, *v15.i8), v9, v14);
  v18 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v17, 0xEuLL), v16, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v13, 0xEuLL), v12, 0xEuLL));
  v19 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xEuLL), v13, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v16, 0xEuLL), v17, 0xEuLL));
  v20 = vtrn1q_s32(v18, v19);
  v21 = vtrn2q_s32(v18, v19);
  v22 = vzip2q_s64(v20, v21);
  v20.i64[1] = v21.i64[0];
  v23 = vtrn1q_s16(v20, v22);
  v24 = vtrn2q_s16(v20, v22);
  v25 = vmull_s16(*v23.i8, *v10.i8);
  v26 = vmlsl_high_s16(v25, v23, v10);
  v27 = vmlal_high_s16(v25, v23, v10);
  v28 = vmlsl_high_s16(vmull_s16(*v24.i8, *v14.i8), v24, v15);
  v29 = vmlal_high_s16(vmull_s16(*v24.i8, *v15.i8), v24, v14);
  v30 = vrshrn_high_n_s32(vrshrn_n_s32(v27, 0xEuLL), v26, 0xEuLL);
  v31 = vrshrn_high_n_s32(vrshrn_n_s32(v29, 0xEuLL), v28, 0xEuLL);
  v32 = vaddq_s16(v31, v30);
  v33 = vsubq_s16(v30, v31);
  v34 = (a2 + a3);
  v31.i32[0] = *a2;
  v31.i32[1] = *v34;
  v35 = (a2 + 2 * a3);
  v24.i32[0] = *(v35 + a3);
  v24.i32[1] = *v35;
  *v31.i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v31.i8), v32, 4uLL));
  *a2 = v31.i32[0];
  *v34 = v31.i32[1];
  result = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v24.i8), v33, 4uLL));
  *v35 = result.i32[1];
  *(v35 + a3) = result.i32[0];
  return result;
}

__int16 *vpx_idct8x8_1_add_neon(__int16 *result, uint8x8_t *a2, int a3)
{
  v3 = ((46340 * ((46340 * *result + 0x8000) >> 16) + 0x8000) >> 16) + 16;
  if ((v3 & 0x100000) != 0)
  {
    v12 = vqmovun_s16(vdupq_n_s16(-(v3 >> 5)));
    *a2 = vqsub_u8(*a2, v12);
    v13 = (a2 + a3);
    *v13 = vqsub_u8(*v13, v12);
    v14 = (v13 + a3);
    *v14 = vqsub_u8(*v14, v12);
    v15 = (v14 + a3);
    *v15 = vqsub_u8(*v15, v12);
    v16 = (v15 + a3);
    *v16 = vqsub_u8(*v16, v12);
    v17 = (v16 + a3);
    *v17 = vqsub_u8(*v17, v12);
    v10 = (v17 + a3);
    *v10 = vqsub_u8(*v10, v12);
    v11 = vqsub_u8(*(v10 + a3), v12);
  }

  else
  {
    v4 = vqmovun_s16(vdupq_n_s16(v3 >> 5));
    *a2 = vqadd_u8(*a2, v4);
    v5 = (a2 + a3);
    *v5 = vqadd_u8(*v5, v4);
    v6 = (v5 + a3);
    *v6 = vqadd_u8(*v6, v4);
    v7 = (v6 + a3);
    *v7 = vqadd_u8(*v7, v4);
    v8 = (v7 + a3);
    *v8 = vqadd_u8(*v8, v4);
    v9 = (v8 + a3);
    *v9 = vqadd_u8(*v9, v4);
    v10 = (v9 + a3);
    *v10 = vqadd_u8(*v10, v4);
    v11 = vqadd_u8(*(v10 + a3), v4);
  }

  *(v10 + a3) = v11;
  return result;
}

int8x8_t vpx_idct8x8_64_add_neon(int16x8_t *a1, uint8x8_t *a2, int a3)
{
  v3 = vuzp1q_s16(*a1, a1[1]);
  v4 = vuzp1q_s16(a1[2], a1[3]);
  v5 = vuzp1q_s16(a1[4], a1[5]);
  v6 = vuzp1q_s16(a1[6], a1[7]);
  v7 = vuzp1q_s16(a1[8], a1[9]);
  v8 = vuzp1q_s16(a1[10], a1[11]);
  v9 = vuzp1q_s16(a1[12], a1[13]);
  v10 = vuzp1q_s16(a1[14], a1[15]);
  v11 = vtrn1q_s16(v3, v4);
  v12 = vtrn2q_s16(v3, v4);
  v13 = vtrn1q_s16(v5, v6);
  v14 = vtrn2q_s16(v5, v6);
  v15 = vtrn1q_s16(v7, v8);
  v16 = vtrn2q_s16(v7, v8);
  v17 = vtrn1q_s16(v9, v10);
  v18 = vtrn2q_s16(v9, v10);
  v19 = vtrn1q_s32(v11, v13);
  v20 = vtrn2q_s32(v11, v13);
  v21 = vtrn1q_s32(v12, v14);
  v22 = vtrn2q_s32(v12, v14);
  v23 = vtrn1q_s32(v15, v17);
  v24 = vtrn2q_s32(v15, v17);
  v25 = vtrn1q_s32(v16, v18);
  v26 = vtrn2q_s32(v16, v18);
  v27 = vzip2q_s64(v19, v23);
  v28 = vzip2q_s64(v21, v25);
  v29 = vzip2q_s64(v20, v24);
  v30 = vzip2q_s64(v22, v26);
  v31 = vdupq_n_s16(0xC7Cu);
  v14.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
  v32 = vdupq_n_s16(0xDC72u);
  v33 = vextq_s8(v32, v32, 8uLL).u64[0];
  v34 = vmull_s16(*v26.i8, v33);
  v35 = vdupq_n_s16(0x3537u);
  v36 = vextq_s8(v35, v35, 8uLL).u64[0];
  v37 = vmull_s16(*v26.i8, v36);
  v38 = vdupq_n_s16(0x3EC5u);
  v11.i64[0] = vextq_s8(v38, v38, 8uLL).u64[0];
  v39 = vmlsl_s16(vmull_s16(*v21.i8, *v31.i8), *v30.i8, *v38.i8);
  v40 = vmlsl_high_s16(vmull_s16(*v25.i8, *v14.i8), v30, v38);
  v41 = vmlal_s16(vmull_s16(*v28.i8, *v35.i8), *v22.i8, *v32.i8);
  v42 = vmlal_high_s16(v34, v28, v35);
  v43 = vmlsl_s16(vmull_s16(*v22.i8, *v35.i8), *v28.i8, *v32.i8);
  v44 = vmlsl_high_s16(v37, v28, v32);
  v45 = vmlal_s16(vmull_s16(*v30.i8, *v31.i8), *v21.i8, *v38.i8);
  v46 = vmlal_high_s16(vmull_s16(*v25.i8, *v11.i8), v30, v31);
  v47 = vdupq_n_s16(0x2D41u);
  v48 = vmull_s16(*v19.i8, *v47.i8);
  v25.i64[0] = vextq_s8(v47, v47, 8uLL).u64[0];
  v49 = vmull_s16(*v23.i8, *v25.i8);
  v50 = vdupq_n_s16(0x187Eu);
  v51 = vmull_s16(*v20.i8, *v50.i8);
  v28.i64[0] = vextq_s8(v50, v50, 8uLL).u64[0];
  v52 = vdupq_n_s16(0x3B21u);
  v53 = vmlal_s16(vmull_s16(*v27.i8, *v47.i8), *v19.i8, *v47.i8);
  v54 = vmlal_high_s16(v49, v27, v47);
  v55 = vmlsl_s16(v48, *v27.i8, *v47.i8);
  v56 = vmlsl_high_s16(v49, v27, v47);
  v57 = vmlal_s16(vmull_s16(*v29.i8, *v50.i8), *v20.i8, *v52.i8);
  v20.i64[0] = vextq_s8(v52, v52, 8uLL).u64[0];
  v58 = vmlsl_s16(v51, *v29.i8, *v52.i8);
  v59 = vmlsl_high_s16(vmull_s16(*v24.i8, *v28.i8), v29, v52);
  v60 = vmlal_high_s16(vmull_s16(*v24.i8, *v20.i8), v29, v50);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xEuLL), v54, 0xEuLL);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(v55, 0xEuLL), v56, 0xEuLL);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xEuLL), v59, 0xEuLL);
  *v39.i8 = vrshrn_n_s32(v39, 0xEuLL);
  *v41.i8 = vrshrn_n_s32(v41, 0xEuLL);
  v64 = vrshrn_high_n_s32(vrshrn_n_s32(v57, 0xEuLL), v60, 0xEuLL);
  *v60.i8 = vsub_s16(*v39.i8, *v41.i8);
  *v43.i8 = vrshrn_n_s32(v43, 0xEuLL);
  *v45.i8 = vrshrn_n_s32(v45, 0xEuLL);
  v65 = vaddq_s16(vrshrn_high_n_s32(*v41.i8, v42, 0xEuLL), vrshrn_high_n_s32(*v39.i8, v40, 0xEuLL));
  *v41.i8 = vsub_s16(*v45.i8, *v43.i8);
  v66 = vaddq_s16(vrshrn_high_n_s32(*v45.i8, v46, 0xEuLL), vrshrn_high_n_s32(*v43.i8, v44, 0xEuLL));
  v67 = vaddq_s16(v63, v62);
  v68 = vsubq_s16(v62, v63);
  v69 = vaddq_s16(v64, v61);
  v70 = vsubq_s16(v61, v64);
  *v44.i8 = vsub_s16(vrshrn_n_s32(v46, 0xEuLL), vrshrn_n_s32(v44, 0xEuLL));
  *v40.i8 = vsub_s16(vrshrn_n_s32(v40, 0xEuLL), vrshrn_n_s32(v42, 0xEuLL));
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v41.i8, *v47.i8), *v60.i8, *v47.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v44.i8, *v47.i8), *v40.i8, *v47.i8), 0xEuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v60.i8, *v47.i8), *v41.i8, *v47.i8), 0xEuLL), vmlal_s16(vmull_s16(*v40.i8, *v47.i8), *v44.i8, *v47.i8), 0xEuLL);
  v73 = vaddq_s16(v69, v66);
  v74 = vaddq_s16(v70, v65);
  v75 = vsubq_s16(v70, v65);
  v76 = vaddq_s16(v71, v68);
  v77 = vsubq_s16(v68, v71);
  v78 = vaddq_s16(v72, v67);
  v79 = vsubq_s16(v67, v72);
  v80 = vsubq_s16(v69, v66);
  v81 = vtrn1q_s16(v73, v78);
  v82 = vtrn2q_s16(v73, v78);
  v83 = vtrn1q_s16(v76, v74);
  v84 = vtrn2q_s16(v76, v74);
  v85 = vtrn1q_s16(v75, v77);
  v86 = vtrn2q_s16(v75, v77);
  v87 = vtrn1q_s16(v79, v80);
  v88 = vtrn2q_s16(v79, v80);
  v89 = vtrn1q_s32(v81, v83);
  v90 = vtrn2q_s32(v81, v83);
  v91 = vtrn1q_s32(v82, v84);
  v92 = vtrn2q_s32(v82, v84);
  v93 = vtrn1q_s32(v85, v87);
  v94 = vtrn2q_s32(v85, v87);
  v95 = vtrn1q_s32(v86, v88);
  v96 = vtrn2q_s32(v86, v88);
  v97 = vzip2q_s64(v91, v95);
  v98 = vmlal_high_s16(vmull_s16(*v96.i8, v33), v97, v35);
  v99 = vmlsl_s16(vmull_s16(*v92.i8, *v35.i8), *v97.i8, *v32.i8);
  v100 = vmlsl_high_s16(vmull_s16(*v96.i8, v36), v97, v32);
  v101 = vmlal_s16(vmull_s16(*v97.i8, *v35.i8), *v92.i8, *v32.i8);
  v102 = vzip2q_s64(v92, v96);
  v103 = vzip2q_s64(v89, v93);
  v104 = vmull_s16(*v95.i8, *v14.i8);
  v105 = vmull_s16(*v95.i8, *v11.i8);
  v106 = vmlal_s16(vmull_s16(*v102.i8, *v31.i8), *v91.i8, *v38.i8);
  v107 = vmlsl_s16(vmull_s16(*v91.i8, *v31.i8), *v102.i8, *v38.i8);
  v108 = vmlsl_high_s16(v104, v102, v38);
  v109 = vzip2q_s64(v90, v94);
  v110 = vmlal_high_s16(v105, v102, v31);
  *v31.i8 = vrshrn_n_s32(v107, 0xEuLL);
  *v38.i8 = vrshrn_n_s32(v101, 0xEuLL);
  *v101.i8 = vrshrn_n_s32(v99, 0xEuLL);
  v111 = vmull_s16(*v94.i8, *v20.i8);
  v112 = vmlal_s16(vmull_s16(*v109.i8, *v50.i8), *v90.i8, *v52.i8);
  v113 = vmlsl_s16(vmull_s16(*v90.i8, *v50.i8), *v109.i8, *v52.i8);
  v114 = vmlsl_high_s16(vmull_s16(*v94.i8, *v28.i8), v109, v52);
  *v94.i8 = vrshrn_n_s32(v106, 0xEuLL);
  v115 = vmlal_high_s16(v111, v109, v50);
  v116 = vmull_s16(*v89.i8, *v47.i8);
  v117 = vmull_s16(*v93.i8, *v25.i8);
  v118 = vmlal_s16(vmull_s16(*v103.i8, *v47.i8), *v89.i8, *v47.i8);
  v119 = vmlal_high_s16(v117, v103, v47);
  v120 = vmlsl_s16(v116, *v103.i8, *v47.i8);
  v121 = vmlsl_high_s16(v117, v103, v47);
  *v103.i8 = vsub_s16(*v94.i8, *v101.i8);
  *v50.i8 = vsub_s16(vrshrn_n_s32(v110, 0xEuLL), vrshrn_n_s32(v100, 0xEuLL));
  *v102.i8 = vsub_s16(vrshrn_n_s32(v108, 0xEuLL), vrshrn_n_s32(v98, 0xEuLL));
  *v96.i8 = vsub_s16(*v31.i8, *v38.i8);
  v122 = vmlsl_s16(vmull_s16(*v103.i8, *v47.i8), *v96.i8, *v47.i8);
  v123 = vmlal_s16(vmull_s16(*v96.i8, *v47.i8), *v103.i8, *v47.i8);
  v124 = vmlsl_s16(vmull_s16(*v50.i8, *v47.i8), *v102.i8, *v47.i8);
  v125 = vmlal_s16(vmull_s16(*v102.i8, *v47.i8), *v50.i8, *v47.i8);
  v126 = vrshrn_high_n_s32(*v31.i8, v108, 0xEuLL);
  v127 = vrshrn_high_n_s32(*v94.i8, v110, 0xEuLL);
  v128 = vrshrn_high_n_s32(vrshrn_n_s32(v118, 0xEuLL), v119, 0xEuLL);
  v129 = vrshrn_high_n_s32(vrshrn_n_s32(v120, 0xEuLL), v121, 0xEuLL);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(v113, 0xEuLL), v114, 0xEuLL);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v112, 0xEuLL), v115, 0xEuLL);
  v132 = vaddq_s16(vrshrn_high_n_s32(*v38.i8, v98, 0xEuLL), v126);
  v133 = vaddq_s16(v127, vrshrn_high_n_s32(*v101.i8, v100, 0xEuLL));
  v134 = vaddq_s16(v130, v129);
  v135 = vsubq_s16(v129, v130);
  v136 = vaddq_s16(v131, v128);
  v137 = vsubq_s16(v128, v131);
  v138 = vrshrn_high_n_s32(vrshrn_n_s32(v122, 0xEuLL), v124, 0xEuLL);
  v139 = vrshrn_high_n_s32(vrshrn_n_s32(v123, 0xEuLL), v125, 0xEuLL);
  *a2 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a2), vaddq_s16(v136, v133), 5uLL));
  v140 = (a2 + a3);
  *v140 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v140), vaddq_s16(v139, v134), 5uLL));
  v141 = (v140 + a3);
  *v141 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v141), vaddq_s16(v138, v135), 5uLL));
  v142 = (v141 + a3);
  *v142 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v142), vaddq_s16(v137, v132), 5uLL));
  v143 = (v142 + a3);
  *v143 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v143), vsubq_s16(v137, v132), 5uLL));
  v144 = (v143 + a3);
  *v144 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v144), vsubq_s16(v135, v138), 5uLL));
  v145 = (v144 + a3);
  *v145 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v145), vsubq_s16(v134, v139), 5uLL));
  result = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v145 + a3)), vsubq_s16(v136, v133), 5uLL));
  *(v145 + a3) = result;
  return result;
}

int8x8_t vpx_idct8x8_12_add_neon(int32x4_t *a1, uint8x8_t *a2, int a3)
{
  v3 = vmovn_s32(*a1);
  v4 = vmovn_s32(a1[2]);
  v5 = vmovn_s32(a1[4]);
  v6 = vmovn_s32(a1[6]);
  v7 = vtrn1_s16(v3, v4);
  v8 = vtrn2_s16(v3, v4);
  v9 = vtrn1_s16(v5, v6);
  v10 = vtrn2_s16(v5, v6);
  v11 = vzip1_s32(v7, v9);
  v12 = vzip2_s32(v7, v9);
  v13 = vzip1_s32(v8, v10);
  v14 = vzip2_s32(v8, v10);
  v15 = vqrdmulh_lane_s16(v13, 0x18F8B8E46A6E7D8ALL, 3);
  v16 = vqrdmulh_lane_s16(v14, 0x18F8B8E46A6E7D8ALL, 2);
  v17 = vqrdmulh_lane_s16(v14, 0x18F8B8E46A6E7D8ALL, 1);
  v18 = vqrdmulh_lane_s16(v13, 0x18F8B8E46A6E7D8ALL, 0);
  v19 = vqrdmulh_lane_s16(v11, 0x30FC5A8276428000, 2);
  v20 = vqrdmulh_lane_s16(v12, 0x30FC5A8276428000, 3);
  v21 = vqrdmulh_lane_s16(v12, 0x30FC5A8276428000, 1);
  v22 = vadd_s16(v16, v15);
  v23 = vsub_s16(v15, v16);
  v24 = vsub_s16(v18, v17);
  v25 = vadd_s16(v18, v17);
  v26 = vadd_s16(v21, v19);
  v27 = vadd_s16(v20, v19);
  v28 = vsub_s16(v19, v20);
  v29 = vsub_s16(v19, v21);
  v30 = vdupq_n_s16(0x2D41u);
  v31 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v24, *v30.i8), v23, *v30.i8), 0xEuLL);
  v32 = vrshrn_n_s32(vmlal_s16(vmull_s16(v23, *v30.i8), v24, *v30.i8), 0xEuLL);
  *v33.i8 = vadd_s16(v26, v25);
  *v34.i8 = vadd_s16(v32, v27);
  *v35.i8 = vadd_s16(v31, v28);
  *v36.i8 = vadd_s16(v29, v22);
  v33.u64[1] = vsub_s16(v29, v22);
  v34.u64[1] = vsub_s16(v28, v31);
  v35.u64[1] = vsub_s16(v27, v32);
  v36.u64[1] = vsub_s16(v26, v25);
  v37 = vtrn1q_s16(v33, v34);
  v38 = vtrn2q_s16(v33, v34);
  v39 = vtrn1q_s16(v35, v36);
  v40 = vtrn2q_s16(v35, v36);
  v41 = vtrn1q_s32(v37, v39);
  v42 = vtrn2q_s32(v37, v39);
  v43 = vtrn1q_s32(v38, v40);
  v44 = vtrn2q_s32(v38, v40);
  v45 = vqrdmulhq_lane_s16(v43, 0x18F8B8E46A6E7D8ALL, 3);
  v46 = vqrdmulhq_lane_s16(v44, 0x18F8B8E46A6E7D8ALL, 2);
  v47 = vqrdmulhq_lane_s16(v44, 0x18F8B8E46A6E7D8ALL, 1);
  v48 = vqrdmulhq_lane_s16(v43, 0x18F8B8E46A6E7D8ALL, 0);
  v49 = vqrdmulhq_lane_s16(v41, 0x30FC5A8276428000, 2);
  v50 = vqrdmulhq_lane_s16(v42, 0x30FC5A8276428000, 3);
  v51 = vqrdmulhq_lane_s16(v42, 0x30FC5A8276428000, 1);
  v52 = vaddq_s16(v46, v45);
  v53 = vsubq_s16(v45, v46);
  v54 = vsubq_s16(v48, v47);
  v55 = vaddq_s16(v48, v47);
  v56 = vaddq_s16(v51, v49);
  v57 = vaddq_s16(v50, v49);
  v58 = vsubq_s16(v49, v50);
  v59 = vsubq_s16(v49, v51);
  v60 = vmlal_s16(vmull_s16(*v53.i8, *v30.i8), *v54.i8, *v30.i8);
  v61 = vmlal_high_s16(vmull_high_s16(v53, v30), v54, v30);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v54.i8, *v30.i8), *v53.i8, *v30.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v54, v30), v53, v30), 0xEuLL);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(v60, 0xEuLL), v61, 0xEuLL);
  *a2 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a2), vaddq_s16(v56, v55), 5uLL));
  v64 = (a2 + a3);
  *v64 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v64), vaddq_s16(v63, v57), 5uLL));
  v65 = (v64 + a3);
  *v65 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v65), vaddq_s16(v62, v58), 5uLL));
  v66 = (v65 + a3);
  *v66 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v66), vaddq_s16(v59, v52), 5uLL));
  v67 = (v66 + a3);
  *v67 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v67), vsubq_s16(v59, v52), 5uLL));
  v68 = (v67 + a3);
  *v68 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v68), vsubq_s16(v58, v62), 5uLL));
  v69 = (v68 + a3);
  *v69 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v69), vsubq_s16(v57, v63), 5uLL));
  result = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v69 + a3)), vsubq_s16(v56, v55), 5uLL));
  *(v69 + a3) = result;
  return result;
}

uint8x8_t *vp8_dequant_idct_add_y_block_neon(uint8x8_t *result, int16x8_t *a2, uint8x8_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = a4;
  v7 = 4 * a4;
  v8 = &result[8];
  v9 = 2 * a4;
  v10 = 3 * a4;
  v11 = vdupq_n_s16(0x4546u);
  v12 = vdupq_n_s16(0x4E7Bu);
  do
  {
    if (*(a5 + v5))
    {
      if ((*(a5 + v5) & 0xFEFE) != 0)
      {
        v29 = *a2;
        v30 = a2[1];
        v31 = v8[-4];
        v32 = v8[-3];
        v8[-4] = 0uLL;
        v8[-3] = 0uLL;
        v33 = v8[-2];
        v34 = v8[-1];
        v8[-2] = 0uLL;
        v8[-1] = 0uLL;
        v35 = (a3 + v6 + v6);
        v36 = v35 + 1;
        v37 = (v35 + v6);
        result = (v35 + v6 + 4);
        v38 = vmulq_s16(v31, v29);
        v39 = vmulq_s16(v32, v30);
        v40 = vmulq_s16(v33, v29);
        v41 = vmulq_s16(v34, v30);
        v33.i64[0] = vextq_s8(v38, v38, 8uLL).u64[0];
        v38.i64[1] = v40.i64[0];
        v33.i64[1] = vextq_s8(v40, v40, 8uLL).u64[0];
        v40.i64[0] = vextq_s8(v39, v39, 8uLL).u64[0];
        v39.i64[1] = v41.i64[0];
        v40.i64[1] = vextq_s8(v41, v41, 8uLL).u64[0];
        v42 = vqdmulhq_s16(v40, v11);
        v43 = vqaddq_s16(v38, v39);
        v44 = vqsubq_s16(v38, v39);
        v45 = vqsubq_s16(vqdmulhq_s16(v33, v11), vqaddq_s16(v40, vshrq_n_s16(vqdmulhq_s16(v40, v12), 1uLL)));
        v46 = vqaddq_s16(v42, vqaddq_s16(v33, vshrq_n_s16(vqdmulhq_s16(v33, v12), 1uLL)));
        v47 = vqaddq_s16(v43, v46);
        v48 = vqaddq_s16(v44, v45);
        v49 = vqsubq_s16(v44, v45);
        v50 = vqsubq_s16(v43, v46);
        v51 = vtrn1q_s32(v47, v49);
        v52 = vtrn2q_s32(v47, v49);
        v53 = vtrn1q_s32(v48, v50);
        v54 = vtrn2q_s32(v48, v50);
        v55 = vtrn1q_s16(v51, v53);
        v56 = vtrn2q_s16(v51, v53);
        v57 = vtrn1q_s16(v52, v54);
        v58 = vtrn2q_s16(v52, v54);
        v59 = vqdmulhq_s16(v58, v11);
        v60 = vqaddq_s16(v55, v57);
        v61 = vqsubq_s16(v55, v57);
        v62 = vqsubq_s16(vqdmulhq_s16(v56, v11), vqaddq_s16(v58, vshrq_n_s16(vqdmulhq_s16(v58, v12), 1uLL)));
        v63 = vqaddq_s16(v59, vqaddq_s16(v56, vshrq_n_s16(vqdmulhq_s16(v56, v12), 1uLL)));
        v64 = vqaddq_s16(v61, v62);
        v65 = vqsubq_s16(v61, v62);
        v66 = vrshrq_n_s16(vqaddq_s16(v60, v63), 3uLL);
        v67 = vrshrq_n_s16(v64, 3uLL);
        v68 = vrshrq_n_s16(v65, 3uLL);
        v69 = vrshrq_n_s16(vqsubq_s16(v60, v63), 3uLL);
        v70 = vtrn1q_s32(v66, v68);
        v71 = vtrn2q_s32(v66, v68);
        v72 = vtrn1q_s32(v67, v69);
        v73 = vtrn2q_s32(v67, v69);
        v74 = vtrn1q_s16(v70, v72);
        v75 = vtrn2q_s16(v70, v72);
        v76 = vtrn1q_s16(v71, v73);
        v77 = vaddw_u8(vtrn2q_s16(v71, v73), *(a3 + v10));
        *v73.i8 = vqmovun_s16(vaddw_u8(v75, *(a3 + v6)));
        v78 = vqmovun_s16(vaddw_u8(v76, *(a3 + v9)));
        v79 = vqmovun_s16(v77);
        *a3 = vqmovun_s16(vaddw_u8(v74, *a3));
        *(a3 + v6) = *v73.i8;
      }

      else
      {
        v80 = a2->i16[0];
        v81 = (v8[-4].i16[0] * v80 + 4) >> 3;
        v82 = (v8[-2].i16[0] * v80 + 4) >> 3;
        v8[-2].i16[0] = 0;
        v8[-4].i16[0] = 0;
        v83 = vdupq_n_s16(v81);
        v84 = vdupq_n_s16(v82);
        v85.i32[0] = a3->i32[0];
        v85.i32[1] = *(a3->i32 + v6);
        v36 = (a3 + v6 + 4);
        v86.i32[0] = *(a3->i32 + v9);
        v86.i32[1] = *(a3->i32 + v10);
        result = (a3 + v10 + 4);
        v87 = vqmovun_s16(vaddw_u8(v83, v85));
        *v83.i8 = vqmovun_s16(vaddw_u8(v83, v86));
        a3->i32[0] = v87.i32[0];
        *(a3->i32 + v6) = v87.i32[1];
        *(a3->i32 + v9) = v83.i32[0];
        *(a3->i32 + v10) = v83.i32[1];
        v35 = (a3 + 4);
        v83.i32[0] = a3->i32[1];
        v83.i32[1] = *v36;
        v37 = (a3 + v9 + 4);
        v87.i32[0] = *v37;
        v87.i32[1] = result->i32[0];
        v88 = vaddw_u8(v84, v87);
        v78 = vqmovun_s16(vaddw_u8(v84, *v83.i8));
        v79 = vqmovun_s16(v88);
      }

      v35->i32[0] = v78.i32[0];
      *v36 = v78.i32[1];
      *v37 = v79.i32[0];
      result->i32[0] = v79.i32[1];
    }

    if (*(a5 + v5 + 2))
    {
      if ((*(a5 + v5 + 2) & 0xFEFE) != 0)
      {
        v89 = *a2;
        v90 = a2[1];
        v91 = *v8;
        v92 = v8[1];
        *v8 = 0uLL;
        v8[1] = 0uLL;
        v93 = v8[2];
        v94 = v8[3];
        v8[2] = 0uLL;
        v8[3] = 0uLL;
        result = (a3 + 2 * v6 + 8);
        v23 = (&a3[1] + v6 + v6 + 4);
        v24 = (result + v6);
        v25 = (v23 + v6);
        v95 = vmulq_s16(v91, v89);
        v96 = vmulq_s16(v92, v90);
        v97 = vmulq_s16(v93, v89);
        v98 = vmulq_s16(v94, v90);
        v93.i64[0] = vextq_s8(v95, v95, 8uLL).u64[0];
        v95.i64[1] = v97.i64[0];
        v93.i64[1] = vextq_s8(v97, v97, 8uLL).u64[0];
        v97.i64[0] = vextq_s8(v96, v96, 8uLL).u64[0];
        v96.i64[1] = v98.i64[0];
        v97.i64[1] = vextq_s8(v98, v98, 8uLL).u64[0];
        v99 = vqdmulhq_s16(v97, v11);
        v100 = vqaddq_s16(v95, v96);
        v101 = vqsubq_s16(v95, v96);
        v102 = vqsubq_s16(vqdmulhq_s16(v93, v11), vqaddq_s16(v97, vshrq_n_s16(vqdmulhq_s16(v97, v12), 1uLL)));
        v103 = vqaddq_s16(v99, vqaddq_s16(v93, vshrq_n_s16(vqdmulhq_s16(v93, v12), 1uLL)));
        v104 = vqaddq_s16(v100, v103);
        v105 = vqaddq_s16(v101, v102);
        v106 = vqsubq_s16(v101, v102);
        v107 = vqsubq_s16(v100, v103);
        v108 = vtrn1q_s32(v104, v106);
        v109 = vtrn2q_s32(v104, v106);
        v110 = vtrn1q_s32(v105, v107);
        v111 = vtrn2q_s32(v105, v107);
        v112 = vtrn1q_s16(v108, v110);
        v113 = vtrn2q_s16(v108, v110);
        v114 = vtrn1q_s16(v109, v111);
        v115 = vtrn2q_s16(v109, v111);
        v116 = vqdmulhq_s16(v115, v11);
        v117 = vqaddq_s16(v112, v114);
        v118 = vqsubq_s16(v112, v114);
        v119 = vqsubq_s16(vqdmulhq_s16(v113, v11), vqaddq_s16(v115, vshrq_n_s16(vqdmulhq_s16(v115, v12), 1uLL)));
        v120 = vqaddq_s16(v116, vqaddq_s16(v113, vshrq_n_s16(vqdmulhq_s16(v113, v12), 1uLL)));
        v121 = vqaddq_s16(v118, v119);
        v122 = vqsubq_s16(v118, v119);
        v123 = vrshrq_n_s16(vqaddq_s16(v117, v120), 3uLL);
        v124 = vrshrq_n_s16(v121, 3uLL);
        v125 = vrshrq_n_s16(v122, 3uLL);
        v126 = vrshrq_n_s16(vqsubq_s16(v117, v120), 3uLL);
        v127 = vtrn1q_s32(v123, v125);
        v128 = vtrn2q_s32(v123, v125);
        v129 = vtrn1q_s32(v124, v126);
        v130 = vtrn2q_s32(v124, v126);
        v131 = vtrn1q_s16(v127, v129);
        v132 = vtrn2q_s16(v127, v129);
        v133 = vtrn1q_s16(v128, v130);
        v134 = vaddw_u8(vtrn2q_s16(v128, v130), *(&a3[1] + v10));
        *v130.i8 = vqmovun_s16(vaddw_u8(v132, *(&a3[1] + v6)));
        v27 = vqmovun_s16(vaddw_u8(v133, *(&a3[1] + v9)));
        v28 = vqmovun_s16(v134);
        a3[1] = vqmovun_s16(vaddw_u8(v131, a3[1]));
        *(&a3[1] + v6) = *v130.i8;
      }

      else
      {
        v13 = a2->i16[0];
        v14 = (v8->i16[0] * v13 + 4) >> 3;
        v15 = (v8[2].i16[0] * v13 + 4) >> 3;
        v8[2].i16[0] = 0;
        v8->i16[0] = 0;
        v16 = vdupq_n_s16(v14);
        v17 = vdupq_n_s16(v15);
        v18 = (&a3[1] + v6);
        v19.i32[0] = a3[1].i32[0];
        v19.i32[1] = *v18;
        v20 = (&a3[1] + v10);
        v21.i32[0] = *(a3[1].i32 + v9);
        v21.i32[1] = *v20;
        v22 = vqmovun_s16(vaddw_u8(v16, v19));
        *v16.i8 = vqmovun_s16(vaddw_u8(v16, v21));
        a3[1].i32[0] = v22.i32[0];
        *v18 = v22.i32[1];
        *(a3[1].i32 + v9) = v16.i32[0];
        *v20 = v16.i32[1];
        result = (a3 + 12);
        v23 = (&a3[1] + v6 + 4);
        v16.i32[0] = a3[1].i32[1];
        v16.i32[1] = *v23;
        v24 = (&a3[1] + v9 + 4);
        v25 = (&a3[1] + v10 + 4);
        v22.i32[0] = *v24;
        v22.i32[1] = *v25;
        v26 = vaddw_u8(v17, v22);
        v27 = vqmovun_s16(vaddw_u8(v17, *v16.i8));
        v28 = vqmovun_s16(v26);
      }

      result->i32[0] = v27.i32[0];
      *v23 = v27.i32[1];
      *v24 = v28.i32[0];
      *v25 = v28.i32[1];
    }

    a3 = (a3 + v7);
    v5 += 4;
    v8 += 8;
  }

  while (v5 != 16);
  return result;
}

int16x8_t *vp8_dequant_idct_add_uv_block_neon(int16x8_t *result, int16x8_t *a2, uint8x8_t *a3, uint8x8_t *a4, int a5, _WORD *a6)
{
  if (*a6)
  {
    if ((*a6 & 0xFEFE) != 0)
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = *result;
      v9 = result[1];
      *result = 0u;
      result[1] = 0u;
      v10 = result[2];
      v11 = result[3];
      result[2] = 0u;
      result[3] = 0u;
      v12 = (a3 + a5);
      v13 = (v12 + a5);
      v14 = v13 + 1;
      v15 = (v13 + a5);
      v16 = (v13 + a5 + 4);
      v17 = vmulq_s16(v8, v6);
      v18 = vmulq_s16(v9, v7);
      v19 = vmulq_s16(v10, v6);
      v20 = vmulq_s16(v11, v7);
      v10.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
      v17.i64[1] = v19.i64[0];
      v10.i64[1] = vextq_s8(v19, v19, 8uLL).u64[0];
      v19.i64[0] = vextq_s8(v18, v18, 8uLL).u64[0];
      v18.i64[1] = v20.i64[0];
      v19.i64[1] = vextq_s8(v20, v20, 8uLL).u64[0];
      v21 = vdupq_n_s16(0x4546u);
      v22 = vqdmulhq_s16(v19, v21);
      v23 = vdupq_n_s16(0x4E7Bu);
      v24 = vqaddq_s16(v17, v18);
      v25 = vqsubq_s16(v17, v18);
      v26 = vqsubq_s16(vqdmulhq_s16(v10, v21), vqaddq_s16(v19, vshrq_n_s16(vqdmulhq_s16(v19, v23), 1uLL)));
      v27 = vqaddq_s16(v22, vqaddq_s16(v10, vshrq_n_s16(vqdmulhq_s16(v10, v23), 1uLL)));
      v28 = vqaddq_s16(v24, v27);
      v29 = vqaddq_s16(v25, v26);
      v30 = vqsubq_s16(v25, v26);
      v31 = vqsubq_s16(v24, v27);
      v32 = vtrn1q_s32(v28, v30);
      v33 = vtrn2q_s32(v28, v30);
      v34 = vtrn1q_s32(v29, v31);
      v35 = vtrn2q_s32(v29, v31);
      v36 = vtrn1q_s16(v32, v34);
      v37 = vtrn2q_s16(v32, v34);
      v38 = vtrn1q_s16(v33, v35);
      v39 = vtrn2q_s16(v33, v35);
      v40 = vqdmulhq_s16(v37, v21);
      v41 = vqdmulhq_s16(v39, v21);
      v42 = vqaddq_s16(v36, v38);
      v43 = vqsubq_s16(v36, v38);
      v44 = vqsubq_s16(v40, vqaddq_s16(v39, vshrq_n_s16(vqdmulhq_s16(v39, v23), 1uLL)));
      v45 = vqaddq_s16(v41, vqaddq_s16(v37, vshrq_n_s16(vqdmulhq_s16(v37, v23), 1uLL)));
      v46 = vrshrq_n_s16(vqaddq_s16(v42, v45), 3uLL);
      v47 = vrshrq_n_s16(vqaddq_s16(v43, v44), 3uLL);
      v48 = vrshrq_n_s16(vqsubq_s16(v43, v44), 3uLL);
      v49 = vrshrq_n_s16(vqsubq_s16(v42, v45), 3uLL);
      v50 = vtrn1q_s32(v46, v48);
      v51 = vtrn2q_s32(v46, v48);
      v52 = vtrn1q_s32(v47, v49);
      v53 = vtrn2q_s32(v47, v49);
      v54 = vtrn1q_s16(v50, v52);
      *v52.i8 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v50, v52), *v12));
      v55 = vqmovun_s16(vaddw_u8(vtrn1q_s16(v51, v53), *v13));
      v56 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v51, v53), *v15));
      *a3 = vqmovun_s16(vaddw_u8(v54, *a3));
      *v12 = *v52.i8;
    }

    else
    {
      v57 = a2->i16[0];
      v58 = (result->i16[0] * v57 + 4) >> 3;
      v59 = (result[2].i16[0] * v57 + 4) >> 3;
      result[2].i16[0] = 0;
      result->i16[0] = 0;
      v60 = vdupq_n_s16(v58);
      v61 = vdupq_n_s16(v59);
      v62.i32[0] = a3->i32[0];
      v63 = (a3 + a5);
      v62.i32[1] = *v63;
      v64 = (v63 + a5);
      v65 = (v64 + a5);
      v66.i32[0] = *v64;
      v66.i32[1] = *v65;
      v67 = vqmovun_s16(vaddw_u8(v60, v62));
      *v60.i8 = vqmovun_s16(vaddw_u8(v60, v66));
      a3->i32[0] = v67.i32[0];
      *(a3->i32 + a5) = v67.i32[1];
      *v64 = v60.i32[0];
      *v65 = v60.i32[1];
      v13 = (a3 + 4);
      v14 = (a3 + a5 + 4);
      v60.i32[0] = a3->i32[1];
      v60.i32[1] = *v14;
      v15 = (v14 + a5);
      v16 = (v15 + a5);
      v67.i32[0] = v15->i32[0];
      v67.i32[1] = *v16;
      v68 = vaddw_u8(v61, v67);
      v55 = vqmovun_s16(vaddw_u8(v61, *v60.i8));
      v56 = vqmovun_s16(v68);
    }

    v13->i32[0] = v55.i32[0];
    *v14 = v55.i32[1];
    v15->i32[0] = v56.i32[0];
    *v16 = v56.i32[1];
  }

  v69 = 4 * a5;
  if (a6[1])
  {
    v70 = (a3 + v69);
    if ((a6[1] & 0xFEFE) != 0)
    {
      v71 = *a2;
      v72 = a2[1];
      v73 = result[4];
      v74 = result[5];
      result[4] = 0u;
      result[5] = 0u;
      v75 = result[6];
      v76 = result[7];
      result[6] = 0u;
      result[7] = 0u;
      v77 = (v70 + a5 + a5);
      v78 = v77 + 1;
      v79 = (v77 + a5);
      v80 = (v77 + a5 + 4);
      v81 = vmulq_s16(v73, v71);
      v82 = vmulq_s16(v74, v72);
      v83 = vmulq_s16(v75, v71);
      v84 = vmulq_s16(v76, v72);
      v75.i64[0] = vextq_s8(v81, v81, 8uLL).u64[0];
      v81.i64[1] = v83.i64[0];
      v75.i64[1] = vextq_s8(v83, v83, 8uLL).u64[0];
      v83.i64[0] = vextq_s8(v82, v82, 8uLL).u64[0];
      v82.i64[1] = v84.i64[0];
      v83.i64[1] = vextq_s8(v84, v84, 8uLL).u64[0];
      v85 = vdupq_n_s16(0x4546u);
      v86 = vqdmulhq_s16(v83, v85);
      v87 = vdupq_n_s16(0x4E7Bu);
      v88 = vqaddq_s16(v81, v82);
      v89 = vqsubq_s16(v81, v82);
      v90 = vqsubq_s16(vqdmulhq_s16(v75, v85), vqaddq_s16(v83, vshrq_n_s16(vqdmulhq_s16(v83, v87), 1uLL)));
      v91 = vqaddq_s16(v86, vqaddq_s16(v75, vshrq_n_s16(vqdmulhq_s16(v75, v87), 1uLL)));
      v92 = vqaddq_s16(v88, v91);
      v93 = vqaddq_s16(v89, v90);
      v94 = vqsubq_s16(v89, v90);
      v95 = vqsubq_s16(v88, v91);
      v96 = vtrn1q_s32(v92, v94);
      v97 = vtrn2q_s32(v92, v94);
      v98 = vtrn1q_s32(v93, v95);
      v99 = vtrn2q_s32(v93, v95);
      v100 = vtrn1q_s16(v96, v98);
      v101 = vtrn2q_s16(v96, v98);
      v102 = vtrn1q_s16(v97, v99);
      v103 = vtrn2q_s16(v97, v99);
      v104 = vqdmulhq_s16(v101, v85);
      v105 = vqdmulhq_s16(v103, v85);
      v106 = vqaddq_s16(v100, v102);
      v107 = vqsubq_s16(v100, v102);
      v108 = vqsubq_s16(v104, vqaddq_s16(v103, vshrq_n_s16(vqdmulhq_s16(v103, v87), 1uLL)));
      v109 = vqaddq_s16(v105, vqaddq_s16(v101, vshrq_n_s16(vqdmulhq_s16(v101, v87), 1uLL)));
      v110 = vrshrq_n_s16(vqaddq_s16(v106, v109), 3uLL);
      v111 = vrshrq_n_s16(vqaddq_s16(v107, v108), 3uLL);
      v112 = vrshrq_n_s16(vqsubq_s16(v107, v108), 3uLL);
      v113 = vrshrq_n_s16(vqsubq_s16(v106, v109), 3uLL);
      v114 = vtrn1q_s32(v110, v112);
      v115 = vtrn2q_s32(v110, v112);
      v116 = vtrn1q_s32(v111, v113);
      v117 = vtrn2q_s32(v111, v113);
      v118 = vtrn1q_s16(v114, v116);
      *v116.i8 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v114, v116), *(v70 + a5)));
      v119 = vqmovun_s16(vaddw_u8(vtrn1q_s16(v115, v117), *v77));
      v120 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v115, v117), *v79));
      *v70 = vqmovun_s16(vaddw_u8(v118, *v70));
      *(v70 + a5) = *v116.i8;
    }

    else
    {
      v121 = a2->i16[0];
      v122 = (result[4].i16[0] * v121 + 4) >> 3;
      v123 = (result[6].i16[0] * v121 + 4) >> 3;
      result[6].i16[0] = 0;
      result[4].i16[0] = 0;
      v124.i32[0] = v70->i32[0];
      v124.i32[1] = *(v70->i32 + a5);
      v125 = (v70 + a5 + a5);
      v126 = vdupq_n_s16(v122);
      v127.i32[0] = *v125;
      v127.i32[1] = *(v125 + a5);
      v128 = vqmovun_s16(vaddw_u8(v126, v124));
      v70->i32[0] = v128.i32[0];
      *(v70->i32 + a5) = v128.i32[1];
      v129 = vqmovun_s16(vaddw_u8(v126, v127));
      *v125 = v129.i32[0];
      *(v125 + a5) = v129.i32[1];
      v131 = v70->i32[1];
      v130 = (v70 + 4);
      v78 = (v130 + a5);
      v129.i32[0] = v131;
      v129.i32[1] = *v78;
      v79 = (v78 + a5);
      v132 = vdupq_n_s16(v123);
      v80 = (v79 + a5);
      v127.i32[0] = v79->i32[0];
      v127.i32[1] = *v80;
      v133 = vaddw_u8(v132, v127);
      v119 = vqmovun_s16(vaddw_u8(v132, v129));
      v120 = vqmovun_s16(v133);
      v77 = v130;
    }

    v77->i32[0] = v119.i32[0];
    *v78 = v119.i32[1];
    v79->i32[0] = v120.i32[0];
    *v80 = v120.i32[1];
  }

  if (a6[2])
  {
    if ((a6[2] & 0xFEFE) != 0)
    {
      v134 = *a2;
      v135 = a2[1];
      v136 = result[8];
      v137 = result[9];
      result[8] = 0u;
      result[9] = 0u;
      v138 = result[10];
      v139 = result[11];
      result[10] = 0u;
      result[11] = 0u;
      v140 = (a4 + a5 + a5);
      v141 = v140 + 1;
      v142 = (v140 + a5);
      v143 = (v140 + a5 + 4);
      v144 = vmulq_s16(v136, v134);
      v145 = vmulq_s16(v137, v135);
      v146 = vmulq_s16(v138, v134);
      v147 = vmulq_s16(v139, v135);
      v138.i64[0] = vextq_s8(v144, v144, 8uLL).u64[0];
      v144.i64[1] = v146.i64[0];
      v138.i64[1] = vextq_s8(v146, v146, 8uLL).u64[0];
      v146.i64[0] = vextq_s8(v145, v145, 8uLL).u64[0];
      v145.i64[1] = v147.i64[0];
      v146.i64[1] = vextq_s8(v147, v147, 8uLL).u64[0];
      v148 = vdupq_n_s16(0x4546u);
      v149 = vqdmulhq_s16(v146, v148);
      v150 = vdupq_n_s16(0x4E7Bu);
      v151 = vqaddq_s16(v144, v145);
      v152 = vqsubq_s16(v144, v145);
      v153 = vqsubq_s16(vqdmulhq_s16(v138, v148), vqaddq_s16(v146, vshrq_n_s16(vqdmulhq_s16(v146, v150), 1uLL)));
      v154 = vqaddq_s16(v149, vqaddq_s16(v138, vshrq_n_s16(vqdmulhq_s16(v138, v150), 1uLL)));
      v155 = vqaddq_s16(v151, v154);
      v156 = vqaddq_s16(v152, v153);
      v157 = vqsubq_s16(v152, v153);
      v158 = vqsubq_s16(v151, v154);
      v159 = vtrn1q_s32(v155, v157);
      v160 = vtrn2q_s32(v155, v157);
      v161 = vtrn1q_s32(v156, v158);
      v162 = vtrn2q_s32(v156, v158);
      v163 = vtrn1q_s16(v159, v161);
      v164 = vtrn2q_s16(v159, v161);
      v165 = vtrn1q_s16(v160, v162);
      v166 = vtrn2q_s16(v160, v162);
      v167 = vqdmulhq_s16(v164, v148);
      v168 = vqdmulhq_s16(v166, v148);
      v169 = vqaddq_s16(v163, v165);
      v170 = vqsubq_s16(v163, v165);
      v171 = vqsubq_s16(v167, vqaddq_s16(v166, vshrq_n_s16(vqdmulhq_s16(v166, v150), 1uLL)));
      v172 = vqaddq_s16(v168, vqaddq_s16(v164, vshrq_n_s16(vqdmulhq_s16(v164, v150), 1uLL)));
      v173 = vrshrq_n_s16(vqaddq_s16(v169, v172), 3uLL);
      v174 = vrshrq_n_s16(vqaddq_s16(v170, v171), 3uLL);
      v175 = vrshrq_n_s16(vqsubq_s16(v170, v171), 3uLL);
      v176 = vrshrq_n_s16(vqsubq_s16(v169, v172), 3uLL);
      v177 = vtrn1q_s32(v173, v175);
      v178 = vtrn2q_s32(v173, v175);
      v179 = vtrn1q_s32(v174, v176);
      v180 = vtrn2q_s32(v174, v176);
      v181 = vtrn1q_s16(v177, v179);
      *v179.i8 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v177, v179), *(a4 + a5)));
      v182 = vqmovun_s16(vaddw_u8(vtrn1q_s16(v178, v180), *v140));
      v183 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v178, v180), *v142));
      *a4 = vqmovun_s16(vaddw_u8(v181, *a4));
      *(a4 + a5) = *v179.i8;
    }

    else
    {
      v184 = a2->i16[0];
      v185 = (result[8].i16[0] * v184 + 4) >> 3;
      v186 = (result[10].i16[0] * v184 + 4) >> 3;
      result[10].i16[0] = 0;
      result[8].i16[0] = 0;
      v187 = vdupq_n_s16(v185);
      v188 = vdupq_n_s16(v186);
      v189.i32[0] = a4->i32[0];
      v189.i32[1] = *(a4->i32 + a5);
      v190 = (a4 + a5 + a5);
      v191.i32[0] = *v190;
      v191.i32[1] = *(v190 + a5);
      v192 = vqmovun_s16(vaddw_u8(v187, v189));
      *v187.i8 = vqmovun_s16(vaddw_u8(v187, v191));
      a4->i32[0] = v192.i32[0];
      *(a4->i32 + a5) = v192.i32[1];
      *v190 = v187.i32[0];
      *(v190 + a5) = v187.i32[1];
      v140 = (a4 + 4);
      v141 = (a4 + a5 + 4);
      v187.i32[0] = a4->i32[1];
      v187.i32[1] = *v141;
      v142 = (v141 + a5);
      v143 = (v142 + a5);
      v192.i32[0] = v142->i32[0];
      v192.i32[1] = *v143;
      v193 = vaddw_u8(v188, v192);
      v182 = vqmovun_s16(vaddw_u8(v188, *v187.i8));
      v183 = vqmovun_s16(v193);
    }

    v140->i32[0] = v182.i32[0];
    *v141 = v182.i32[1];
    v142->i32[0] = v183.i32[0];
    *v143 = v183.i32[1];
  }

  if (a6[3])
  {
    v194 = (a4 + v69);
    if ((a6[3] & 0xFEFE) != 0)
    {
      v195 = *a2;
      v196 = a2[1];
      v197 = result[12];
      v198 = result[13];
      result[12] = 0u;
      result[13] = 0u;
      v199 = result[14];
      v200 = result[15];
      result[14] = 0u;
      result[15] = 0u;
      v201 = (v194 + a5 + a5);
      v202 = v201 + 1;
      v203 = (v201 + a5);
      v204 = (v201 + a5 + 4);
      v205 = vmulq_s16(v197, v195);
      v206 = vmulq_s16(v198, v196);
      v207 = vmulq_s16(v199, v195);
      v208 = vmulq_s16(v200, v196);
      v199.i64[0] = vextq_s8(v205, v205, 8uLL).u64[0];
      v205.i64[1] = v207.i64[0];
      v199.i64[1] = vextq_s8(v207, v207, 8uLL).u64[0];
      v207.i64[0] = vextq_s8(v206, v206, 8uLL).u64[0];
      v206.i64[1] = v208.i64[0];
      v207.i64[1] = vextq_s8(v208, v208, 8uLL).u64[0];
      v209 = vdupq_n_s16(0x4546u);
      v210 = vqdmulhq_s16(v207, v209);
      v211 = vdupq_n_s16(0x4E7Bu);
      v212 = vqaddq_s16(v205, v206);
      v213 = vqsubq_s16(v205, v206);
      v214 = vqsubq_s16(vqdmulhq_s16(v199, v209), vqaddq_s16(v207, vshrq_n_s16(vqdmulhq_s16(v207, v211), 1uLL)));
      v215 = vqaddq_s16(v210, vqaddq_s16(v199, vshrq_n_s16(vqdmulhq_s16(v199, v211), 1uLL)));
      v216 = vqaddq_s16(v212, v215);
      v217 = vqaddq_s16(v213, v214);
      v218 = vqsubq_s16(v213, v214);
      v219 = vqsubq_s16(v212, v215);
      v220 = vtrn1q_s32(v216, v218);
      v221 = vtrn2q_s32(v216, v218);
      v222 = vtrn1q_s32(v217, v219);
      v223 = vtrn2q_s32(v217, v219);
      v224 = vtrn1q_s16(v220, v222);
      v225 = vtrn2q_s16(v220, v222);
      v226 = vtrn1q_s16(v221, v223);
      v227 = vtrn2q_s16(v221, v223);
      v228 = vqdmulhq_s16(v225, v209);
      v229 = vqdmulhq_s16(v227, v209);
      v230 = vqaddq_s16(v224, v226);
      v231 = vqsubq_s16(v224, v226);
      v232 = vqsubq_s16(v228, vqaddq_s16(v227, vshrq_n_s16(vqdmulhq_s16(v227, v211), 1uLL)));
      v233 = vqaddq_s16(v229, vqaddq_s16(v225, vshrq_n_s16(vqdmulhq_s16(v225, v211), 1uLL)));
      v234 = vrshrq_n_s16(vqaddq_s16(v230, v233), 3uLL);
      v235 = vrshrq_n_s16(vqaddq_s16(v231, v232), 3uLL);
      v236 = vrshrq_n_s16(vqsubq_s16(v231, v232), 3uLL);
      v237 = vrshrq_n_s16(vqsubq_s16(v230, v233), 3uLL);
      v238 = vtrn1q_s32(v234, v236);
      v239 = vtrn2q_s32(v234, v236);
      v240 = vtrn1q_s32(v235, v237);
      v241 = vtrn2q_s32(v235, v237);
      v242 = vtrn1q_s16(v238, v240);
      *v240.i8 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v238, v240), *(v194 + a5)));
      v243 = vqmovun_s16(vaddw_u8(vtrn1q_s16(v239, v241), *v201));
      v244 = vqmovun_s16(vaddw_u8(vtrn2q_s16(v239, v241), *v203));
      *v194 = vqmovun_s16(vaddw_u8(v242, *v194));
      *(v194 + a5) = *v240.i8;
    }

    else
    {
      v245 = a2->i16[0];
      v246 = (result[12].i16[0] * v245 + 4) >> 3;
      v247 = (result[14].i16[0] * v245 + 4) >> 3;
      result[14].i16[0] = 0;
      result[12].i16[0] = 0;
      v248.i32[0] = v194->i32[0];
      v248.i32[1] = *(v194->i32 + a5);
      v249 = (v194 + a5 + a5);
      v250 = vdupq_n_s16(v246);
      v251.i32[0] = *v249;
      v251.i32[1] = *(v249 + a5);
      v252 = vqmovun_s16(vaddw_u8(v250, v248));
      v194->i32[0] = v252.i32[0];
      *(v194->i32 + a5) = v252.i32[1];
      v253 = vqmovun_s16(vaddw_u8(v250, v251));
      *v249 = v253.i32[0];
      *(v249 + a5) = v253.i32[1];
      v255 = v194->i32[1];
      v254 = (v194 + 4);
      v202 = (v254 + a5);
      v253.i32[0] = v255;
      v253.i32[1] = *v202;
      v203 = (v202 + a5);
      v256 = vdupq_n_s16(v247);
      v204 = (v203 + a5);
      v251.i32[0] = v203->i32[0];
      v251.i32[1] = *v204;
      v257 = vaddw_u8(v256, v251);
      v243 = vqmovun_s16(vaddw_u8(v256, v253));
      v244 = vqmovun_s16(v257);
      v201 = v254;
    }

    v201->i32[0] = v243.i32[0];
    *v202 = v243.i32[1];
    v203->i32[0] = v244.i32[0];
    *v204 = v244.i32[1];
  }

  return result;
}

_DWORD *vpx_he_predictor_4x4_c(_DWORD *result, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *a4;
  v5 = a4[1];
  v6 = a4[2];
  v7 = a4[3];
  *result = 16843009 * ((*(a3 - 1) + 2 * v4 + v5 + 2) >> 2);
  *(result + a2) = 16843009 * ((v4 + 2 * v5 + v6 + 2) >> 2);
  *(result + 2 * a2) = 16843009 * ((v5 + 2 + 2 * v6 + v7) >> 2);
  *(result + 3 * a2) = 16843009 * ((v6 + 2 + v7 + 2 * v7) >> 2);
  return result;
}

_BYTE *vpx_ve_predictor_4x4_c(_BYTE *result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  *result = (*(a3 - 1) + 2 * v3 + v4 + 2) >> 2;
  result[1] = (v3 + 2 * v4 + v5 + 2) >> 2;
  result[2] = (v4 + 2 + 2 * v5 + v6) >> 2;
  result[3] = (v5 + 2 + 2 * v6 + v7) >> 2;
  *&result[a2] = *result;
  *&result[2 * a2] = *result;
  *&result[3 * a2] = *result;
  return result;
}

_BYTE *vpx_d63e_predictor_4x4_c(_BYTE *result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = (v4 + v5 + 1) >> 1;
  v7 = a3[3];
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[6];
  v11 = a3[7];
  *result = (v4 + v3 + 1) >> 1;
  v12 = &result[2 * a2];
  *v12 = v6;
  result[1] = v6;
  v13 = (v7 + v5 + 1) >> 1;
  v12[1] = v13;
  result[2] = v13;
  v14 = (v7 + v8 + 1) >> 1;
  v12[2] = v14;
  result[3] = v14;
  v12[3] = (v8 + 2 * v9 + v10 + 2) >> 2;
  LODWORD(v12) = v5 + 2;
  v15 = &result[a2];
  *v15 = (v3 + 2 * v4 + v5 + 2) >> 2;
  v16 = (v4 + 2 * v5 + v7 + 2) >> 2;
  v17 = &result[2 * a2 + a2];
  *v17 = v16;
  v15[1] = v16;
  v18 = (v12 + 2 * v7 + v8) >> 2;
  v17[1] = v18;
  v15[2] = v18;
  v19 = (v7 + 2 + 2 * v8 + v9) >> 2;
  v17[2] = v19;
  v15[3] = v19;
  v17[3] = (v9 + 2 * v10 + v11 + 2) >> 2;
  return result;
}

_BYTE *vpx_d45e_predictor_4x4_c(_BYTE *result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3[1];
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[6];
  v9 = (*a3 + 2 * v3 + v4 + 2) >> 2;
  v10 = (v3 + 2 * v4 + v5 + 2) >> 2;
  v11 = a3[7];
  *result = v9;
  v12 = &result[a2];
  *v12 = v10;
  result[1] = v10;
  v13 = (v4 + 2 + 2 * v5 + v6) >> 2;
  v14 = &result[2 * a2];
  *v14 = v13;
  v12[1] = v13;
  result[2] = v13;
  v15 = (v5 + 2 + 2 * v6 + v7) >> 2;
  v16 = &result[2 * a2 + a2];
  *v16 = v15;
  v14[1] = v15;
  v12[2] = v15;
  result[3] = v15;
  v17 = (v8 + 2 + v6 + 2 * v7) >> 2;
  v16[1] = v17;
  v14[2] = v17;
  v12[3] = v17;
  LODWORD(v12) = (v11 + v7 + 2 * v8 + 2) >> 2;
  v16[2] = v12;
  v14[3] = v12;
  v16[3] = (v8 + 2 + v11 + 2 * v11) >> 2;
  return result;
}

int8x8_t vpx_dc_predictor_4x4_neon(_DWORD *a1, uint64_t a2, __int32 *a3, __int32 *a4, uint8x8_t a5, uint8x8_t a6)
{
  a5.i32[0] = *a3;
  a6.i32[0] = *a4;
  v6 = vaddl_u8(a6, a5).u64[0];
  v6.i16[0] = vaddv_s16(v6);
  result = vrshrn_n_s16(vdupq_lane_s16(v6, 0), 3uLL);
  *a1 = result.i32[0];
  *(a1 + a2) = result.i32[0];
  v8 = (a1 + a2 + a2);
  *v8 = result.i32[0];
  *(v8 + a2) = result.i32[0];
  return result;
}

int8x8_t vpx_dc_left_predictor_4x4_neon(_DWORD *a1, uint64_t a2, uint8x8_t a3, uint64_t a4, __int32 *a5)
{
  a3.i32[0] = *a5;
  a3.i16[0] = vaddlv_u8(a3);
  result = vrshrn_n_s16(vdupq_lane_s16(a3, 0), 2uLL);
  *a1 = result.i32[0];
  *(a1 + a2) = result.i32[0];
  v6 = (a1 + a2 + a2);
  *v6 = result.i32[0];
  *(v6 + a2) = result.i32[0];
  return result;
}

int8x8_t vpx_dc_top_predictor_4x4_neon(_DWORD *a1, uint64_t a2, __int32 *a3, uint8x8_t a4)
{
  a4.i32[0] = *a3;
  a4.i16[0] = vaddlv_u8(a4);
  result = vrshrn_n_s16(vdupq_lane_s16(a4, 0), 2uLL);
  *a1 = result.i32[0];
  *(a1 + a2) = result.i32[0];
  v5 = (a1 + a2 + a2);
  *v5 = result.i32[0];
  *(v5 + a2) = result.i32[0];
  return result;
}

_DWORD *vpx_dc_128_predictor_4x4_neon(_DWORD *result, uint64_t a2)
{
  *result = -2139062144;
  *(result + a2) = -2139062144;
  v2 = (result + a2 + a2);
  *v2 = -2139062144;
  *(v2 + a2) = -2139062144;
  return result;
}

int8x8_t vpx_dc_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint8x8_t *a4)
{
  v4 = vaddl_u8(*a4, *a3);
  v4.i32[0] = vaddlvq_u16(v4);
  result = vrshrn_n_s16(vdupq_lane_s16(*v4.i8, 0), 4uLL);
  *a1 = result;
  *(a1 + a2) = result;
  v6 = (a1 + a2 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  v10 = (v9 + a2);
  *v10 = result;
  *(v10 + a2) = result;
  return result;
}

int8x8_t vpx_dc_left_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint64_t a3, uint8x8_t *a4)
{
  v4 = *a4;
  v4.i16[0] = vaddlv_u8(*a4);
  result = vrshrn_n_s16(vdupq_lane_s16(v4, 0), 3uLL);
  *a1 = result;
  *(a1 + a2) = result;
  v6 = (a1 + a2 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  v10 = (v9 + a2);
  *v10 = result;
  *(v10 + a2) = result;
  return result;
}

int8x8_t vpx_dc_top_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint8x8_t *a3)
{
  v3 = *a3;
  v3.i16[0] = vaddlv_u8(*a3);
  result = vrshrn_n_s16(vdupq_lane_s16(v3, 0), 3uLL);
  *a1 = result;
  *(a1 + a2) = result;
  v5 = (a1 + a2 + a2);
  *v5 = result;
  v6 = (v5 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  *(v9 + a2) = result;
  return result;
}

double vpx_dc_128_predictor_8x8_neon(void *a1, uint64_t a2)
{
  result = -2.93744652e-306;
  *a1 = 0x8080808080808080;
  *(a1 + a2) = 0x8080808080808080;
  v3 = (a1 + a2 + a2);
  *v3 = 0x8080808080808080;
  v4 = (v3 + a2);
  *v4 = 0x8080808080808080;
  v5 = (v4 + a2);
  *v5 = 0x8080808080808080;
  v6 = (v5 + a2);
  *v6 = 0x8080808080808080;
  v7 = (v6 + a2);
  *v7 = 0x8080808080808080;
  *(v7 + a2) = 0x8080808080808080;
  return result;
}

int8x16_t vpx_dc_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = *a3;
  v4.i32[0] = vaddlvq_u16(vpadalq_u8(vpaddlq_u8(*a4), *a3));
  result = vdupq_lane_s8(vrshrn_n_s16(v4, 5uLL), 0);
  *a1 = result;
  *(a1 + a2) = result;
  v6 = (a1 + a2 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  v10 = (v9 + a2);
  *v10 = result;
  v11 = (v10 + a2);
  *v11 = result;
  v12 = (v11 + a2);
  *v12 = result;
  v13 = (v12 + a2);
  *v13 = result;
  v14 = (v13 + a2);
  *v14 = result;
  v15 = (v14 + a2);
  *v15 = result;
  v16 = (v15 + a2);
  *v16 = result;
  v17 = (v16 + a2);
  *v17 = result;
  v18 = (v17 + a2);
  *v18 = result;
  *(v18 + a2) = result;
  return result;
}

int8x16_t vpx_dc_left_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = *a4;
  v4.i16[0] = vaddlvq_u8(*a4);
  result = vdupq_lane_s8(vrshrn_n_s16(v4, 4uLL), 0);
  *a1 = result;
  *(a1 + a2) = result;
  v6 = (a1 + a2 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  v10 = (v9 + a2);
  *v10 = result;
  v11 = (v10 + a2);
  *v11 = result;
  v12 = (v11 + a2);
  *v12 = result;
  v13 = (v12 + a2);
  *v13 = result;
  v14 = (v13 + a2);
  *v14 = result;
  v15 = (v14 + a2);
  *v15 = result;
  v16 = (v15 + a2);
  *v16 = result;
  v17 = (v16 + a2);
  *v17 = result;
  v18 = (v17 + a2);
  *v18 = result;
  *(v18 + a2) = result;
  return result;
}

int8x16_t vpx_dc_top_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3)
{
  v3 = *a3;
  v3.i16[0] = vaddlvq_u8(*a3);
  result = vdupq_lane_s8(vrshrn_n_s16(v3, 4uLL), 0);
  *a1 = result;
  *(a1 + a2) = result;
  v5 = (a1 + a2 + a2);
  *v5 = result;
  v6 = (v5 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  v10 = (v9 + a2);
  *v10 = result;
  v11 = (v10 + a2);
  *v11 = result;
  v12 = (v11 + a2);
  *v12 = result;
  v13 = (v12 + a2);
  *v13 = result;
  v14 = (v13 + a2);
  *v14 = result;
  v15 = (v14 + a2);
  *v15 = result;
  v16 = (v15 + a2);
  *v16 = result;
  v17 = (v16 + a2);
  *v17 = result;
  *(v17 + a2) = result;
  return result;
}

__n128 vpx_dc_128_predictor_16x16_neon(__n128 *a1, uint64_t a2)
{
  result.n128_u64[0] = 0x8080808080808080;
  result.n128_u64[1] = 0x8080808080808080;
  *a1 = result;
  *(a1 + a2) = result;
  v3 = (a1 + a2 + a2);
  *v3 = result;
  v4 = (v3 + a2);
  *v4 = result;
  v5 = (v4 + a2);
  *v5 = result;
  v6 = (v5 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  v10 = (v9 + a2);
  *v10 = result;
  v11 = (v10 + a2);
  *v11 = result;
  v12 = (v11 + a2);
  *v12 = result;
  v13 = (v12 + a2);
  *v13 = result;
  v14 = (v13 + a2);
  *v14 = result;
  v15 = (v14 + a2);
  *v15 = result;
  *(v15 + a2) = result;
  return result;
}

int8x16_t vpx_dc_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = *a3;
  v4.i32[0] = vaddlvq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), *a4), a4[1]));
  result = vdupq_lane_s8(vrshrn_n_s16(v4, 6uLL), 0);
  *a1 = result;
  a1[1] = result;
  v6 = (a1 + a2);
  *v6 = result;
  v6[1] = result;
  v7 = (a1 + a2 + a2);
  *v7 = result;
  v7[1] = result;
  v8 = (v7 + a2);
  *v8 = result;
  v8[1] = result;
  v9 = (v8 + a2);
  *v9 = result;
  v9[1] = result;
  v10 = (v9 + a2);
  *v10 = result;
  v10[1] = result;
  v11 = (v10 + a2);
  *v11 = result;
  v11[1] = result;
  v12 = (v11 + a2);
  *v12 = result;
  v12[1] = result;
  v13 = (v12 + a2);
  *v13 = result;
  v13[1] = result;
  v14 = (v13 + a2);
  *v14 = result;
  v14[1] = result;
  v15 = (v14 + a2);
  *v15 = result;
  v15[1] = result;
  v16 = (v15 + a2);
  *v16 = result;
  v16[1] = result;
  v17 = (v16 + a2);
  *v17 = result;
  v17[1] = result;
  v18 = (v17 + a2);
  *v18 = result;
  v18[1] = result;
  v19 = (v18 + a2);
  *v19 = result;
  v19[1] = result;
  v20 = (v19 + a2);
  *v20 = result;
  v20[1] = result;
  v21 = (v20 + a2);
  *v21 = result;
  v21[1] = result;
  v22 = (v21 + a2);
  *v22 = result;
  v22[1] = result;
  v23 = (v22 + a2);
  *v23 = result;
  v23[1] = result;
  v24 = (v23 + a2);
  *v24 = result;
  v24[1] = result;
  v25 = (v24 + a2);
  *v25 = result;
  v25[1] = result;
  v26 = (v25 + a2);
  *v26 = result;
  v26[1] = result;
  v27 = (v26 + a2);
  *v27 = result;
  v27[1] = result;
  v28 = (v27 + a2);
  *v28 = result;
  v28[1] = result;
  v29 = (v28 + a2);
  *v29 = result;
  v29[1] = result;
  v30 = (v29 + a2);
  *v30 = result;
  v30[1] = result;
  v31 = (v30 + a2);
  *v31 = result;
  v31[1] = result;
  v32 = (v31 + a2);
  *v32 = result;
  v32[1] = result;
  v33 = (v32 + a2);
  *v33 = result;
  v33[1] = result;
  v34 = (v33 + a2);
  *v34 = result;
  v34[1] = result;
  v35 = (v34 + a2);
  *v35 = result;
  v35[1] = result;
  v36 = (v35 + a2);
  *v36 = result;
  v36[1] = result;
  return result;
}

int8x16_t vpx_dc_left_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = *a4;
  v4.i32[0] = vaddlvq_u16(vpadalq_u8(vpaddlq_u8(a4[1]), *a4));
  result = vdupq_lane_s8(vrshrn_n_s16(v4, 5uLL), 0);
  *a1 = result;
  a1[1] = result;
  v6 = (a1 + a2);
  *v6 = result;
  v6[1] = result;
  v7 = (a1 + a2 + a2);
  *v7 = result;
  v7[1] = result;
  v8 = (v7 + a2);
  *v8 = result;
  v8[1] = result;
  v9 = (v8 + a2);
  *v9 = result;
  v9[1] = result;
  v10 = (v9 + a2);
  *v10 = result;
  v10[1] = result;
  v11 = (v10 + a2);
  *v11 = result;
  v11[1] = result;
  v12 = (v11 + a2);
  *v12 = result;
  v12[1] = result;
  v13 = (v12 + a2);
  *v13 = result;
  v13[1] = result;
  v14 = (v13 + a2);
  *v14 = result;
  v14[1] = result;
  v15 = (v14 + a2);
  *v15 = result;
  v15[1] = result;
  v16 = (v15 + a2);
  *v16 = result;
  v16[1] = result;
  v17 = (v16 + a2);
  *v17 = result;
  v17[1] = result;
  v18 = (v17 + a2);
  *v18 = result;
  v18[1] = result;
  v19 = (v18 + a2);
  *v19 = result;
  v19[1] = result;
  v20 = (v19 + a2);
  *v20 = result;
  v20[1] = result;
  v21 = (v20 + a2);
  *v21 = result;
  v21[1] = result;
  v22 = (v21 + a2);
  *v22 = result;
  v22[1] = result;
  v23 = (v22 + a2);
  *v23 = result;
  v23[1] = result;
  v24 = (v23 + a2);
  *v24 = result;
  v24[1] = result;
  v25 = (v24 + a2);
  *v25 = result;
  v25[1] = result;
  v26 = (v25 + a2);
  *v26 = result;
  v26[1] = result;
  v27 = (v26 + a2);
  *v27 = result;
  v27[1] = result;
  v28 = (v27 + a2);
  *v28 = result;
  v28[1] = result;
  v29 = (v28 + a2);
  *v29 = result;
  v29[1] = result;
  v30 = (v29 + a2);
  *v30 = result;
  v30[1] = result;
  v31 = (v30 + a2);
  *v31 = result;
  v31[1] = result;
  v32 = (v31 + a2);
  *v32 = result;
  v32[1] = result;
  v33 = (v32 + a2);
  *v33 = result;
  v33[1] = result;
  v34 = (v33 + a2);
  *v34 = result;
  v34[1] = result;
  v35 = (v34 + a2);
  *v35 = result;
  v35[1] = result;
  v36 = (v35 + a2);
  *v36 = result;
  v36[1] = result;
  return result;
}

int8x16_t vpx_dc_top_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3)
{
  v3 = *a3;
  v3.i32[0] = vaddlvq_u16(vpadalq_u8(vpaddlq_u8(a3[1]), *a3));
  result = vdupq_lane_s8(vrshrn_n_s16(v3, 5uLL), 0);
  *a1 = result;
  a1[1] = result;
  v5 = (a1 + a2);
  *v5 = result;
  v5[1] = result;
  v6 = (a1 + a2 + a2);
  *v6 = result;
  v6[1] = result;
  v7 = (v6 + a2);
  *v7 = result;
  v7[1] = result;
  v8 = (v7 + a2);
  *v8 = result;
  v8[1] = result;
  v9 = (v8 + a2);
  *v9 = result;
  v9[1] = result;
  v10 = (v9 + a2);
  *v10 = result;
  v10[1] = result;
  v11 = (v10 + a2);
  *v11 = result;
  v11[1] = result;
  v12 = (v11 + a2);
  *v12 = result;
  v12[1] = result;
  v13 = (v12 + a2);
  *v13 = result;
  v13[1] = result;
  v14 = (v13 + a2);
  *v14 = result;
  v14[1] = result;
  v15 = (v14 + a2);
  *v15 = result;
  v15[1] = result;
  v16 = (v15 + a2);
  *v16 = result;
  v16[1] = result;
  v17 = (v16 + a2);
  *v17 = result;
  v17[1] = result;
  v18 = (v17 + a2);
  *v18 = result;
  v18[1] = result;
  v19 = (v18 + a2);
  *v19 = result;
  v19[1] = result;
  v20 = (v19 + a2);
  *v20 = result;
  v20[1] = result;
  v21 = (v20 + a2);
  *v21 = result;
  v21[1] = result;
  v22 = (v21 + a2);
  *v22 = result;
  v22[1] = result;
  v23 = (v22 + a2);
  *v23 = result;
  v23[1] = result;
  v24 = (v23 + a2);
  *v24 = result;
  v24[1] = result;
  v25 = (v24 + a2);
  *v25 = result;
  v25[1] = result;
  v26 = (v25 + a2);
  *v26 = result;
  v26[1] = result;
  v27 = (v26 + a2);
  *v27 = result;
  v27[1] = result;
  v28 = (v27 + a2);
  *v28 = result;
  v28[1] = result;
  v29 = (v28 + a2);
  *v29 = result;
  v29[1] = result;
  v30 = (v29 + a2);
  *v30 = result;
  v30[1] = result;
  v31 = (v30 + a2);
  *v31 = result;
  v31[1] = result;
  v32 = (v31 + a2);
  *v32 = result;
  v32[1] = result;
  v33 = (v32 + a2);
  *v33 = result;
  v33[1] = result;
  v34 = (v33 + a2);
  *v34 = result;
  v34[1] = result;
  v35 = (v34 + a2);
  *v35 = result;
  v35[1] = result;
  return result;
}

__n128 vpx_dc_128_predictor_32x32_neon(__n128 *a1, uint64_t a2)
{
  result.n128_u64[0] = 0x8080808080808080;
  result.n128_u64[1] = 0x8080808080808080;
  *a1 = result;
  a1[1] = result;
  v3 = (a1 + a2);
  v4 = (a1 + a2 + a2);
  *v3 = result;
  v3[1] = result;
  v5 = (v4 + a2);
  *v4 = result;
  v4[1] = result;
  v6 = (v4 + a2 + a2);
  *v5 = result;
  v5[1] = result;
  v7 = (v6 + a2);
  *v6 = result;
  v6[1] = result;
  v8 = (v6 + a2 + a2);
  *v7 = result;
  v7[1] = result;
  v9 = (v8 + a2);
  *v8 = result;
  v8[1] = result;
  v10 = (v8 + a2 + a2);
  *v9 = result;
  v9[1] = result;
  v11 = (v10 + a2);
  *v10 = result;
  v10[1] = result;
  v12 = (v10 + a2 + a2);
  *v11 = result;
  v11[1] = result;
  v13 = (v12 + a2);
  *v12 = result;
  v12[1] = result;
  v14 = (v12 + a2 + a2);
  *v13 = result;
  v13[1] = result;
  v15 = (v14 + a2);
  *v14 = result;
  v14[1] = result;
  v16 = (v14 + a2 + a2);
  *v15 = result;
  v15[1] = result;
  v17 = (v16 + a2);
  *v16 = result;
  v16[1] = result;
  v18 = (v16 + a2 + a2);
  *v17 = result;
  v17[1] = result;
  v19 = (v18 + a2);
  *v18 = result;
  v18[1] = result;
  v20 = (v18 + a2 + a2);
  *v19 = result;
  v19[1] = result;
  v21 = (v20 + a2);
  *v20 = result;
  v20[1] = result;
  v22 = (v20 + a2 + a2);
  *v21 = result;
  v21[1] = result;
  v23 = (v22 + a2);
  *v22 = result;
  v22[1] = result;
  v24 = (v22 + a2 + a2);
  *v23 = result;
  v23[1] = result;
  v25 = (v24 + a2);
  *v24 = result;
  v24[1] = result;
  v26 = (v24 + a2 + a2);
  *v25 = result;
  v25[1] = result;
  v27 = (v26 + a2);
  *v26 = result;
  v26[1] = result;
  v28 = (v26 + a2 + a2);
  *v27 = result;
  v27[1] = result;
  v29 = (v28 + a2);
  *v28 = result;
  v28[1] = result;
  v30 = (v28 + a2 + a2);
  *v29 = result;
  v29[1] = result;
  v31 = (v30 + a2);
  *v30 = result;
  v30[1] = result;
  v32 = (v30 + a2 + a2);
  *v31 = result;
  v31[1] = result;
  v33 = (v32 + a2);
  *v32 = result;
  v32[1] = result;
  *v33 = result;
  v33[1] = result;
  return result;
}

int8x8_t vpx_d45_predictor_4x4_neon(_DWORD *a1, uint64_t a2, uint8x8_t *a3)
{
  result = *a3;
  v4 = vrhadd_u8(vhadd_u8(*a3, vext_s8(result, result, 2uLL)), vext_s8(result, result, 1uLL));
  *a1 = v4.i32[0];
  *(a1 + a2) = vext_s8(v4, result, 1uLL).u32[0];
  *(a1 + 2 * a2) = vext_s8(v4, result, 2uLL).u32[0];
  v5 = a1 + 2 * a2 + a2;
  *v5 = vext_s8(v4, result, 3uLL).u32[0];
  *(v5 + 3) = result.i8[7];
  return result;
}

int8x8_t vpx_d45_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = vdup_lane_s8(*a3, 7);
  v4 = vrhadd_u8(vhadd_u8(vext_s8(*a3, *a3, 7uLL), *(a3 + 1)), *a3);
  *a1 = vext_s8(v4, v3, 1uLL);
  *(a1 + a2) = vext_s8(v4, v3, 2uLL);
  *(a1 + 2 * a2) = vext_s8(v4, v3, 3uLL);
  *(a1 + 3 * a2) = vext_s8(v4, v3, 4uLL);
  *(a1 + 4 * a2) = vext_s8(v4, v3, 5uLL);
  *(a1 + 5 * a2) = vext_s8(v4, v3, 6uLL);
  result = vext_s8(v4, v3, 7uLL);
  *(a1 + 6 * a2) = result;
  *(&a1[a2] - a2) = v3;
  return result;
}

int8x16_t vpx_d45_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 1);
  v4 = vdupq_laneq_s8(v3, 14);
  v5 = vrhaddq_u8(vhaddq_u8(vextq_s8(*a3, *a3, 0xFuLL), v3), *a3);
  *a1 = vextq_s8(v5, v4, 1uLL);
  *(a1 + a2) = vextq_s8(v5, v4, 2uLL);
  *(a1 + 2 * a2) = vextq_s8(v5, v4, 3uLL);
  *(a1 + 3 * a2) = vextq_s8(v5, v4, 4uLL);
  *(a1 + 4 * a2) = vextq_s8(v5, v4, 5uLL);
  *(a1 + 5 * a2) = vextq_s8(v5, v4, 6uLL);
  *(a1 + 6 * a2) = vextq_s8(v5, v4, 7uLL);
  *(a1 + 7 * a2) = vextq_s8(v5, v4, 8uLL);
  *(a1 + 8 * a2) = vextq_s8(v5, v4, 9uLL);
  *(a1 + 9 * a2) = vextq_s8(v5, v4, 0xAuLL);
  *(a1 + 10 * a2) = vextq_s8(v5, v4, 0xBuLL);
  *(a1 + 11 * a2) = vextq_s8(v5, v4, 0xCuLL);
  *(a1 + 12 * a2) = vextq_s8(v5, v4, 0xDuLL);
  *(a1 + 13 * a2) = vextq_s8(v5, v4, 0xEuLL);
  result = vextq_s8(v5, v4, 0xFuLL);
  *(a1 + 14 * a2) = result;
  *(&a1[a2] - a2) = v4;
  return result;
}

int8x16_t vpx_d45_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 17);
  result = vdupq_laneq_s8(v3, 14);
  v5 = vrhaddq_u8(vhaddq_u8(vextq_s8(*a3, *a3, 0xFuLL), *(a3 + 1)), *a3);
  v6 = vrhaddq_u8(vhaddq_u8(*(a3 + 15), v3), *(a3 + 16));
  v7 = vextq_s8(v6, result, 1uLL);
  *a1 = vextq_s8(v5, v6, 1uLL);
  a1[1] = v7;
  v8 = (a1 + a2);
  v9 = vextq_s8(v6, result, 2uLL);
  *v8 = vextq_s8(v5, v6, 2uLL);
  v8[1] = v9;
  v10 = (a1 + 2 * a2);
  v11 = vextq_s8(v6, result, 3uLL);
  *v10 = vextq_s8(v5, v6, 3uLL);
  v10[1] = v11;
  v12 = a1->i64 + 2 * a2 + a2;
  v13 = vextq_s8(v6, result, 4uLL);
  *v12 = vextq_s8(v5, v6, 4uLL);
  *(v12 + 16) = v13;
  v14 = (a1 + 4 * a2);
  v15 = vextq_s8(v6, result, 5uLL);
  *v14 = vextq_s8(v5, v6, 5uLL);
  v14[1] = v15;
  v16 = a1->i64 + 4 * a2 + a2;
  v17 = vextq_s8(v6, result, 6uLL);
  *v16 = vextq_s8(v5, v6, 6uLL);
  *(v16 + 16) = v17;
  v18 = (a1 + 6 * a2);
  v19 = vextq_s8(v6, result, 7uLL);
  *v18 = vextq_s8(v5, v6, 7uLL);
  v18[1] = v19;
  v20 = (a1 + 7 * a2);
  v21 = vextq_s8(v6, result, 8uLL);
  *v20 = vextq_s8(v5, v6, 8uLL);
  v20[1] = v21;
  v22 = (a1 + 8 * a2);
  v23 = vextq_s8(v6, result, 9uLL);
  *v22 = vextq_s8(v5, v6, 9uLL);
  v22[1] = v23;
  v24 = &a1->i64[a2] + a2;
  v25 = vextq_s8(v6, result, 0xAuLL);
  *v24 = vextq_s8(v5, v6, 0xAuLL);
  *(v24 + 16) = v25;
  v26 = (a1 + 10 * a2);
  v27 = vextq_s8(v6, result, 0xBuLL);
  *v26 = vextq_s8(v5, v6, 0xBuLL);
  v26[1] = v27;
  v28 = (a1 + 11 * a2);
  v29 = vextq_s8(v6, result, 0xCuLL);
  *v28 = vextq_s8(v5, v6, 0xCuLL);
  v28[1] = v29;
  v30 = (a1 + 12 * a2);
  v31 = vextq_s8(v6, result, 0xDuLL);
  *v30 = vextq_s8(v5, v6, 0xDuLL);
  v30[1] = v31;
  v32 = (a1 + 13 * a2);
  v33 = vextq_s8(v6, result, 0xEuLL);
  *v32 = vextq_s8(v5, v6, 0xEuLL);
  v32[1] = v33;
  v34 = vextq_s8(v5, v6, 0xFuLL);
  v35 = (a1 + 14 * a2);
  v36 = vextq_s8(v6, result, 0xFuLL);
  *v35 = v34;
  v35[1] = v36;
  v37 = (a1 + 15 * a2);
  *v37 = v6;
  v37[1] = result;
  v38 = &a1[a2];
  *v38 = v7;
  v38[1] = result;
  v39 = a1[a2].i64 + a2;
  *v39 = v9;
  *(v39 + 16) = result;
  v40 = (a1 + 18 * a2);
  *v40 = v11;
  v40[1] = result;
  v41 = (a1 + 19 * a2);
  *v41 = v13;
  v41[1] = result;
  v42 = (a1 + 20 * a2);
  *v42 = v15;
  v42[1] = result;
  v43 = (a1 + 21 * a2);
  *v43 = v17;
  v43[1] = result;
  v44 = (a1 + 22 * a2);
  *v44 = v19;
  v44[1] = result;
  v45 = (a1 + 23 * a2);
  *v45 = v21;
  v45[1] = result;
  v46 = (a1 + 24 * a2);
  *v46 = v23;
  v46[1] = result;
  v47 = (a1 + 25 * a2);
  *v47 = v25;
  v47[1] = result;
  v48 = (a1 + 26 * a2);
  *v48 = v27;
  v48[1] = result;
  v49 = (a1 + 27 * a2);
  *v49 = v29;
  v49[1] = result;
  v50 = (a1 + 28 * a2);
  *v50 = v31;
  v50[1] = result;
  v51 = (a1 + 29 * a2);
  *v51 = v33;
  v51[1] = result;
  v52 = (a1 + 30 * a2);
  *v52 = v36;
  v52[1] = result;
  v53 = (&a1[2 * a2] - a2);
  *v53 = result;
  v53[1] = result;
  return result;
}

uint8x8_t vpx_d63_predictor_4x4_neon(unsigned __int32 *a1, uint64_t a2, __int32 *a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint8x8_t a7)
{
  a4.i32[0] = *a3;
  a5.i32[0] = *(a3 + 1);
  a6.i32[0] = *(a3 + 2);
  a7.i32[0] = *(a3 + 3);
  v7 = vrhadd_u8(a4, a5).u32[0];
  result = vrhadd_u8(vhadd_u8(a4, a6), a5);
  *a1 = v7;
  *(a1 + a2) = result.i32[0];
  *(a1 + 2 * a2) = vrhadd_u8(a5, a6).u32[0];
  *(a1 + 3 * a2) = vrhadd_u8(vhadd_u8(a5, a7), a6).u32[0];
  return result;
}

int8x8_t vpx_d63_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 1);
  v4 = vdup_lane_s8(*a3, 7);
  v5 = vrhadd_u8(*a3, v3);
  v6 = vrhadd_u8(vhadd_u8(*a3, *(a3 + 2)), v3);
  *a1 = v5;
  *(a1 + a2) = v6;
  v7 = vext_s8(v5, v5, 7uLL);
  v8 = vext_s8(v6, v6, 7uLL);
  *(a1 + 2 * a2) = vext_s8(v7, v4, 2uLL);
  *(a1 + 3 * a2) = vext_s8(v8, v4, 2uLL);
  *(a1 + 4 * a2) = vext_s8(v7, v4, 3uLL);
  *(a1 + 5 * a2) = vext_s8(v8, v4, 3uLL);
  *(a1 + 6 * a2) = vext_s8(v7, v4, 4uLL);
  result = vext_s8(v8, v4, 4uLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d63_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 1);
  v4 = *(a3 + 2);
  v5 = vdupq_laneq_s8(v4, 13);
  v6 = vrhaddq_u8(*a3, v3);
  v7 = vrhaddq_u8(vhaddq_u8(*a3, v4), v3);
  *a1 = v6;
  *(a1 + a2) = v7;
  v8 = vextq_s8(v6, v6, 0xFuLL);
  v9 = vextq_s8(v7, v7, 0xFuLL);
  *(a1 + 2 * a2) = vextq_s8(v8, v5, 2uLL);
  *(a1 + 3 * a2) = vextq_s8(v9, v5, 2uLL);
  *(a1 + 4 * a2) = vextq_s8(v8, v5, 3uLL);
  *(a1 + 5 * a2) = vextq_s8(v9, v5, 3uLL);
  *(a1 + 6 * a2) = vextq_s8(v8, v5, 4uLL);
  *(a1 + 7 * a2) = vextq_s8(v9, v5, 4uLL);
  *(a1 + 8 * a2) = vextq_s8(v8, v5, 5uLL);
  *(a1 + 9 * a2) = vextq_s8(v9, v5, 5uLL);
  *(a1 + 10 * a2) = vextq_s8(v8, v5, 6uLL);
  *(a1 + 11 * a2) = vextq_s8(v9, v5, 6uLL);
  *(a1 + 12 * a2) = vextq_s8(v8, v5, 7uLL);
  *(a1 + 13 * a2) = vextq_s8(v9, v5, 7uLL);
  *(a1 + 14 * a2) = vextq_s8(v8, v5, 8uLL);
  result = vextq_s8(v9, v5, 8uLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d63_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 1);
  v5 = *(a3 + 17);
  v6 = *(a3 + 18);
  result = vdupq_laneq_s8(v6, 13);
  v8 = vrhaddq_u8(*a3, v4);
  v9 = vrhaddq_u8(v3, v5);
  v10 = vrhaddq_u8(vhaddq_u8(*a3, *(a3 + 2)), v4);
  v11 = vrhaddq_u8(vhaddq_u8(v3, v6), v5);
  *a1 = v8;
  a1[1] = v9;
  v12 = (a1 + a2);
  *v12 = v10;
  v12[1] = v11;
  v13 = vextq_s8(v8, v9, 0xFuLL);
  v14 = vextq_s8(v8, v8, 0xFuLL);
  v15 = vextq_s8(v10, v11, 0xFuLL);
  v16 = vextq_s8(v10, v10, 0xFuLL);
  v17 = (a1 + 2 * a2);
  *v17 = vextq_s8(v14, v13, 2uLL);
  v17[1] = vextq_s8(v13, result, 2uLL);
  v18 = (a1 + 2 * a2 + a2);
  *v18 = vextq_s8(v16, v15, 2uLL);
  v18[1] = vextq_s8(v15, result, 2uLL);
  v19 = (a1 + 4 * a2);
  *v19 = vextq_s8(v14, v13, 3uLL);
  v19[1] = vextq_s8(v13, result, 3uLL);
  v20 = (a1 + 4 * a2 + a2);
  *v20 = vextq_s8(v16, v15, 3uLL);
  v20[1] = vextq_s8(v15, result, 3uLL);
  v21 = (a1 + 6 * a2);
  *v21 = vextq_s8(v14, v13, 4uLL);
  v21[1] = vextq_s8(v13, result, 4uLL);
  v22 = (a1 + 7 * a2);
  *v22 = vextq_s8(v16, v15, 4uLL);
  v22[1] = vextq_s8(v15, result, 4uLL);
  v23 = (a1 + 8 * a2);
  *v23 = vextq_s8(v14, v13, 5uLL);
  v23[1] = vextq_s8(v13, result, 5uLL);
  v24 = (a1 + 8 * a2 + a2);
  *v24 = vextq_s8(v16, v15, 5uLL);
  v24[1] = vextq_s8(v15, result, 5uLL);
  v25 = (a1 + 10 * a2);
  *v25 = vextq_s8(v14, v13, 6uLL);
  v25[1] = vextq_s8(v13, result, 6uLL);
  v26 = (a1 + 11 * a2);
  *v26 = vextq_s8(v16, v15, 6uLL);
  v26[1] = vextq_s8(v15, result, 6uLL);
  v27 = (a1 + 12 * a2);
  *v27 = vextq_s8(v14, v13, 7uLL);
  v27[1] = vextq_s8(v13, result, 7uLL);
  v28 = (a1 + 13 * a2);
  *v28 = vextq_s8(v16, v15, 7uLL);
  v28[1] = vextq_s8(v15, result, 7uLL);
  v29 = (a1 + 14 * a2);
  *v29 = vextq_s8(v14, v13, 8uLL);
  v29[1] = vextq_s8(v13, result, 8uLL);
  v30 = (a1 + 15 * a2);
  *v30 = vextq_s8(v16, v15, 8uLL);
  v30[1] = vextq_s8(v15, result, 8uLL);
  v31 = &a1[a2];
  *v31 = vextq_s8(v14, v13, 9uLL);
  v31[1] = vextq_s8(v13, result, 9uLL);
  v32 = (&a1[a2] + a2);
  *v32 = vextq_s8(v16, v15, 9uLL);
  v32[1] = vextq_s8(v15, result, 9uLL);
  v33 = (a1 + 18 * a2);
  *v33 = vextq_s8(v14, v13, 0xAuLL);
  v33[1] = vextq_s8(v13, result, 0xAuLL);
  v34 = (a1 + 19 * a2);
  *v34 = vextq_s8(v16, v15, 0xAuLL);
  v34[1] = vextq_s8(v15, result, 0xAuLL);
  v35 = (a1 + 20 * a2);
  *v35 = vextq_s8(v14, v13, 0xBuLL);
  v35[1] = vextq_s8(v13, result, 0xBuLL);
  v36 = (a1 + 21 * a2);
  *v36 = vextq_s8(v16, v15, 0xBuLL);
  v36[1] = vextq_s8(v15, result, 0xBuLL);
  v37 = (a1 + 22 * a2);
  *v37 = vextq_s8(v14, v13, 0xCuLL);
  v37[1] = vextq_s8(v13, result, 0xCuLL);
  v38 = (a1 + 23 * a2);
  *v38 = vextq_s8(v16, v15, 0xCuLL);
  v38[1] = vextq_s8(v15, result, 0xCuLL);
  v39 = (a1 + 24 * a2);
  *v39 = vextq_s8(v14, v13, 0xDuLL);
  v39[1] = vextq_s8(v13, result, 0xDuLL);
  v40 = (a1 + 25 * a2);
  *v40 = vextq_s8(v16, v15, 0xDuLL);
  v40[1] = vextq_s8(v15, result, 0xDuLL);
  v41 = (a1 + 26 * a2);
  *v41 = vextq_s8(v14, v13, 0xEuLL);
  v41[1] = vextq_s8(v13, result, 0xEuLL);
  v42 = (a1 + 27 * a2);
  *v42 = vextq_s8(v16, v15, 0xEuLL);
  v42[1] = vextq_s8(v15, result, 0xEuLL);
  v43 = (a1 + 28 * a2);
  *v43 = vextq_s8(v14, v13, 0xFuLL);
  v43[1] = vextq_s8(v13, result, 0xFuLL);
  v44 = (a1 + 29 * a2);
  *v44 = vextq_s8(v16, v15, 0xFuLL);
  v44[1] = vextq_s8(v15, result, 0xFuLL);
  v45 = (a1 + 30 * a2);
  *v45 = v13;
  v45[1] = result;
  v46 = a1[2 * a2].i64 - a2;
  *v46 = v15;
  *(v46 + 16) = result;
  return result;
}

int8x8_t vpx_d117_predictor_4x4_neon(_DWORD *a1, uint64_t a2, __int32 *a3, unsigned __int8 *a4, double a5, uint8x8_t a6)
{
  v6 = *(a3 - 1);
  a6.i32[0] = *a3;
  v7 = *a4;
  v8 = a4[1];
  v9 = vdup_n_s8((2 * v7 + v6.u8[0] + v8 + 2) >> 2);
  v10 = vrhadd_u8(v6.u32[0], a6);
  result = vrhadd_u8(vhadd_u8(vext_s8(vdup_n_s8(v7), v6, 7uLL), a6), v6.u32[0]);
  v12 = vext_s8(vdup_n_s8((v7 + 2 * v8 + a4[2] + 2) >> 2), result, 7uLL).u32[0];
  *a1 = v10.i32[0];
  *(a1 + a2) = result.i32[0];
  *(a1 + 2 * a2) = vext_s8(v9, v10, 7uLL).u32[0];
  *(a1 + 3 * a2) = v12;
  return result;
}

int8x8_t vpx_d117_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, int8x8_t *a4)
{
  v4 = *(&a3[-1] + 7);
  v5 = vld1_dup_s8(a4);
  v6 = vext_s8(vdup_lane_s8(v4, 0), *a4, 7uLL);
  v7 = vrhadd_u8(v4, *a3);
  v8 = vrhadd_u8(vhadd_u8(vext_s8(v5, v4, 7uLL), *a3), v4);
  v9 = vrev64_s8(vrhadd_u8(vhadd_u8(v6, vext_s8(*a4, *a4, 1uLL)), *a4));
  v10 = vuzp1_s8(v9, v9);
  *a1 = v7;
  *(a1 + a2) = v8;
  *(a1 + 2 * a2) = vext_s8(v9, v7, 7uLL);
  *(a1 + 3 * a2) = vext_s8(v10, v8, 7uLL);
  v11 = vuzp2_s8(v9, v9);
  *(a1 + 4 * a2) = vext_s8(v11, v7, 6uLL);
  *(a1 + 5 * a2) = vext_s8(v10, v8, 6uLL);
  *(a1 + 6 * a2) = vext_s8(v11, v7, 5uLL);
  result = vext_s8(v10, v8, 5uLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d117_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3, int8x16_t *a4)
{
  v4 = *(&a3[-1] + 15);
  v5 = vld1q_dup_s8(a4->i8);
  v6 = vextq_s8(vdupq_lane_s8(*v4.i8, 0), *a4, 0xFuLL);
  v7 = vrhaddq_u8(v4, *a3);
  v8 = vrhaddq_u8(vhaddq_u8(vextq_s8(v5, v4, 0xFuLL), *a3), v4);
  v9 = vrhaddq_u8(vhaddq_u8(v6, vextq_s8(*a4, *a4, 1uLL)), *a4);
  v10 = vrev64q_s8(vextq_s8(v9, v9, 8uLL));
  v11 = vuzp1q_s8(v10, v10);
  v12 = vuzp2q_s8(v10, v10);
  *a1 = v7;
  *(a1 + a2) = v8;
  *(a1 + 2 * a2) = vextq_s8(v10, v7, 0xFuLL);
  *(a1 + 3 * a2) = vextq_s8(v11, v8, 0xFuLL);
  *(a1 + 4 * a2) = vextq_s8(v12, v7, 0xEuLL);
  *(a1 + 5 * a2) = vextq_s8(v11, v8, 0xEuLL);
  *(a1 + 6 * a2) = vextq_s8(v12, v7, 0xDuLL);
  *(a1 + 7 * a2) = vextq_s8(v11, v8, 0xDuLL);
  *(a1 + 8 * a2) = vextq_s8(v12, v7, 0xCuLL);
  *(a1 + 9 * a2) = vextq_s8(v11, v8, 0xCuLL);
  *(a1 + 10 * a2) = vextq_s8(v12, v7, 0xBuLL);
  *(a1 + 11 * a2) = vextq_s8(v11, v8, 0xBuLL);
  *(a1 + 12 * a2) = vextq_s8(v12, v7, 0xAuLL);
  *(a1 + 13 * a2) = vextq_s8(v11, v8, 0xAuLL);
  *(a1 + 14 * a2) = vextq_s8(v12, v7, 9uLL);
  result = vextq_s8(v11, v8, 9uLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d117_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 - 1);
  v5 = *(a3 + 16);
  v6 = *(a3 + 15);
  v7 = a4;
  v8 = vld1q_dup_s8(v7->i8);
  v7 = (v7 + 1);
  v9 = vextq_s8(v8, v4, 0xFuLL);
  v10 = vextq_s8(vdupq_lane_s8(*v4.i8, 0), *a4, 0xFuLL);
  v11 = vrhaddq_u8(v4, *a3);
  v12 = vrhaddq_u8(v6, v5);
  v13 = vrhaddq_u8(vhaddq_u8(v9, *a3), v4);
  v14 = vrhaddq_u8(vhaddq_u8(*(a3 + 14), v5), v6);
  v15 = vrhaddq_u8(vhaddq_u8(v10, *v7), *a4);
  v16 = vrhaddq_u8(vhaddq_u8(*(a4 + 15), vextq_s8(*(a4 + 16), *(a4 + 16), 1uLL)), *(a4 + 16));
  v17 = vrev64q_s8(vextq_s8(v15, v15, 8uLL));
  v18 = vrev64q_s8(vextq_s8(v16, v16, 8uLL));
  *a1 = v11;
  a1[1] = v12;
  v19 = vuzp1q_s8(v18, v17);
  v20 = vuzp2q_s8(v18, v17);
  v21 = (a1 + a2);
  *v21 = v13;
  v21[1] = v14;
  v22 = (a1 + 2 * a2);
  *v22 = vextq_s8(v20, v11, 0xFuLL);
  v22[1] = vextq_s8(v11, v12, 0xFuLL);
  v23 = (a1 + 2 * a2 + a2);
  *v23 = vextq_s8(v19, v13, 0xFuLL);
  v23[1] = vextq_s8(v13, v14, 0xFuLL);
  v24 = (a1 + 4 * a2);
  *v24 = vextq_s8(v20, v11, 0xEuLL);
  v24[1] = vextq_s8(v11, v12, 0xEuLL);
  v25 = (a1 + 4 * a2 + a2);
  *v25 = vextq_s8(v19, v13, 0xEuLL);
  v25[1] = vextq_s8(v13, v14, 0xEuLL);
  v26 = (a1 + 6 * a2);
  *v26 = vextq_s8(v20, v11, 0xDuLL);
  v26[1] = vextq_s8(v11, v12, 0xDuLL);
  v27 = (a1 + 7 * a2);
  *v27 = vextq_s8(v19, v13, 0xDuLL);
  v27[1] = vextq_s8(v13, v14, 0xDuLL);
  v28 = (a1 + 8 * a2);
  *v28 = vextq_s8(v20, v11, 0xCuLL);
  v28[1] = vextq_s8(v11, v12, 0xCuLL);
  v29 = (a1 + 8 * a2 + a2);
  *v29 = vextq_s8(v19, v13, 0xCuLL);
  v29[1] = vextq_s8(v13, v14, 0xCuLL);
  v30 = (a1 + 10 * a2);
  *v30 = vextq_s8(v20, v11, 0xBuLL);
  v30[1] = vextq_s8(v11, v12, 0xBuLL);
  v31 = (a1 + 11 * a2);
  *v31 = vextq_s8(v19, v13, 0xBuLL);
  v31[1] = vextq_s8(v13, v14, 0xBuLL);
  v32 = (a1 + 12 * a2);
  *v32 = vextq_s8(v20, v11, 0xAuLL);
  v32[1] = vextq_s8(v11, v12, 0xAuLL);
  v33 = (a1 + 13 * a2);
  *v33 = vextq_s8(v19, v13, 0xAuLL);
  v33[1] = vextq_s8(v13, v14, 0xAuLL);
  v34 = (a1 + 14 * a2);
  *v34 = vextq_s8(v20, v11, 9uLL);
  v34[1] = vextq_s8(v11, v12, 9uLL);
  v35 = (a1 + 15 * a2);
  *v35 = vextq_s8(v19, v13, 9uLL);
  v35[1] = vextq_s8(v13, v14, 9uLL);
  v36 = &a1[a2];
  *v36 = vextq_s8(v20, v11, 8uLL);
  v36[1] = vextq_s8(v11, v12, 8uLL);
  v37 = (&a1[a2] + a2);
  *v37 = vextq_s8(v19, v13, 8uLL);
  v37[1] = vextq_s8(v13, v14, 8uLL);
  v38 = (a1 + 18 * a2);
  *v38 = vextq_s8(v20, v11, 7uLL);
  v38[1] = vextq_s8(v11, v12, 7uLL);
  v39 = (a1 + 19 * a2);
  *v39 = vextq_s8(v19, v13, 7uLL);
  v39[1] = vextq_s8(v13, v14, 7uLL);
  v40 = (a1 + 20 * a2);
  *v40 = vextq_s8(v20, v11, 6uLL);
  v40[1] = vextq_s8(v11, v12, 6uLL);
  v41 = (a1 + 21 * a2);
  *v41 = vextq_s8(v19, v13, 6uLL);
  v41[1] = vextq_s8(v13, v14, 6uLL);
  v42 = (a1 + 22 * a2);
  *v42 = vextq_s8(v20, v11, 5uLL);
  v42[1] = vextq_s8(v11, v12, 5uLL);
  v43 = (a1 + 23 * a2);
  *v43 = vextq_s8(v19, v13, 5uLL);
  v43[1] = vextq_s8(v13, v14, 5uLL);
  v44 = (a1 + 24 * a2);
  *v44 = vextq_s8(v20, v11, 4uLL);
  v44[1] = vextq_s8(v11, v12, 4uLL);
  v45 = (a1 + 25 * a2);
  *v45 = vextq_s8(v19, v13, 4uLL);
  v45[1] = vextq_s8(v13, v14, 4uLL);
  v46 = (a1 + 26 * a2);
  *v46 = vextq_s8(v20, v11, 3uLL);
  v46[1] = vextq_s8(v11, v12, 3uLL);
  v47 = (a1 + 27 * a2);
  *v47 = vextq_s8(v19, v13, 3uLL);
  v47[1] = vextq_s8(v13, v14, 3uLL);
  v48 = (a1 + 28 * a2);
  *v48 = vextq_s8(v20, v11, 2uLL);
  v48[1] = vextq_s8(v11, v12, 2uLL);
  v49 = (a1 + 29 * a2);
  *v49 = vextq_s8(v19, v13, 2uLL);
  v49[1] = vextq_s8(v13, v14, 2uLL);
  v50 = (a1 + 30 * a2);
  *v50 = vextq_s8(v20, v11, 1uLL);
  v50[1] = vextq_s8(v11, v12, 1uLL);
  v51 = vextq_s8(v19, v13, 1uLL);
  v52 = a1[2 * a2].i64 - a2;
  result = vextq_s8(v13, v14, 1uLL);
  *v52 = v51;
  *(v52 + 16) = result;
  return result;
}

int8x8_t vpx_d135_predictor_4x4_neon(_DWORD *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *(a3 - 1);
  v5 = vrev64_s8(*a4);
  v6 = vext_s8(v5, v4, 4uLL);
  v7 = vext_s8(v5, v4, 5uLL);
  result = vrhadd_u8(vhadd_u8(vext_s8(v7, v7, 1uLL), v6), v7);
  *a1 = vext_s8(result, result, 3uLL).u32[0];
  *(a1 + a2) = vext_s8(result, result, 2uLL).u32[0];
  *(a1 + 2 * a2) = vext_s8(result, result, 1uLL).u32[0];
  *(a1 + 3 * a2) = result.i32[0];
  return result;
}

int8x16_t vpx_d135_predictor_8x8_neon(void *a1, uint64_t a2, uint64_t *a3, int8x8_t *a4)
{
  v4 = *(a3 - 1);
  *v5.i8 = vrev64_s8(*a4);
  *v6.i8 = vext_s8(*v5.i8, v4, 1uLL);
  *v7.i8 = vext_s8(*v5.i8, v4, 2uLL);
  v5.u64[1] = v4;
  v6.i64[1] = *a3;
  v7.i64[1] = *(a3 + 1);
  result = vrhaddq_u8(vhaddq_u8(v5, v7), v6);
  *a1 = vextq_s8(result, result, 7uLL).u64[0];
  *(a1 + a2) = vextq_s8(result, result, 6uLL).u64[0];
  *(a1 + 2 * a2) = vextq_s8(result, result, 5uLL).u64[0];
  *(a1 + 3 * a2) = vextq_s8(result, result, 4uLL).u64[0];
  *(a1 + 4 * a2) = vextq_s8(result, result, 3uLL).u64[0];
  *(a1 + 5 * a2) = vextq_s8(result, result, 2uLL).u64[0];
  *(a1 + 6 * a2) = vextq_s8(result, result, 1uLL).u64[0];
  *(&a1[a2] - a2) = result.i64[0];
  return result;
}

int8x16_t vpx_d135_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = *(a3 - 1);
  *v5.i8 = vrev64_s8(*&vextq_s8(*a4, *a4, 8uLL));
  v5.u64[1] = vrev64_s8(*a4->i8);
  v6 = vrhaddq_u8(vhaddq_u8(v5, vextq_s8(v5, v4, 2uLL)), vextq_s8(v5, v4, 1uLL));
  v7 = vrhaddq_u8(vhaddq_u8(v4, *(a3 + 1)), *a3);
  v8 = vextq_s8(v6, v7, 0xFuLL);
  v9 = vextq_s8(v6, v7, 0xEuLL);
  v10 = vextq_s8(v6, v7, 0xDuLL);
  v11 = vextq_s8(v6, v7, 0xCuLL);
  v12 = vextq_s8(v6, v7, 0xBuLL);
  v13 = vextq_s8(v6, v7, 0xAuLL);
  v14 = vextq_s8(v6, v7, 9uLL);
  v15 = vextq_s8(v6, v7, 8uLL);
  v16 = vextq_s8(v6, v7, 7uLL);
  v17 = vextq_s8(v6, v7, 6uLL);
  v18 = vextq_s8(v6, v7, 5uLL);
  v19 = vextq_s8(v6, v7, 4uLL);
  v20 = vextq_s8(v6, v7, 3uLL);
  v21 = vextq_s8(v6, v7, 2uLL);
  result = vextq_s8(v6, v7, 1uLL);
  *a1 = v8;
  *(a1 + a2) = v9;
  v23 = (a1 + a2 + a2);
  *v23 = v10;
  v24 = (v23 + a2);
  *v24 = v11;
  v25 = (v24 + a2);
  *v25 = v12;
  v26 = (v25 + a2);
  *v26 = v13;
  v27 = (v26 + a2);
  *v27 = v14;
  v28 = (v27 + a2);
  *v28 = v15;
  v29 = (v28 + a2);
  *v29 = v16;
  v30 = (v29 + a2);
  *v30 = v17;
  v31 = (v30 + a2);
  *v31 = v18;
  v32 = (v31 + a2);
  *v32 = v19;
  v33 = (v32 + a2);
  *v33 = v20;
  v34 = (v33 + a2);
  *v34 = v21;
  v35 = (v34 + a2);
  *v35 = result;
  *(v35 + a2) = v6;
  return result;
}

int8x16_t vpx_d135_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = a4[1];
  *v5.i8 = vrev64_s8(*&vextq_s8(v4, v4, 8uLL));
  v5.u64[1] = vrev64_s8(*v4.i8);
  *v6.i8 = vrev64_s8(*&vextq_s8(*a4, *a4, 8uLL));
  v6.u64[1] = vrev64_s8(*a4->i8);
  v7 = *(a3 - 1);
  result = vrhaddq_u8(vhaddq_u8(v6, vextq_s8(v6, v7, 2uLL)), vextq_s8(v6, v7, 1uLL));
  v9 = vrhaddq_u8(vhaddq_u8(v7, *(a3 + 1)), *a3);
  v10 = vrhaddq_u8(vhaddq_u8(*(a3 + 15), *(a3 + 17)), *(a3 + 16));
  v11 = vextq_s8(result, v9, 0xFuLL);
  *a1 = v11;
  a1[1] = vextq_s8(v9, v10, 0xFuLL);
  v12 = vrhaddq_u8(vhaddq_u8(v5, vextq_s8(v5, v6, 2uLL)), vextq_s8(v5, v6, 1uLL));
  v13 = &a1[a2];
  *v13 = vextq_s8(v12, result, 0xFuLL);
  v13[1] = v11;
  v14 = (a1 + a2);
  v15 = vextq_s8(result, v9, 0xEuLL);
  *v14 = v15;
  v14[1] = vextq_s8(v9, v10, 0xEuLL);
  v16 = a1[a2].i64 + a2;
  *v16 = vextq_s8(v12, result, 0xEuLL);
  *(v16 + 16) = v15;
  v17 = (a1 + a2 + a2);
  v18 = vextq_s8(result, v9, 0xDuLL);
  *v17 = v18;
  v17[1] = vextq_s8(v9, v10, 0xDuLL);
  v19 = &v17[a2];
  *v19 = vextq_s8(v12, result, 0xDuLL);
  v19[1] = v18;
  v20 = (v17 + a2);
  v21 = vextq_s8(result, v9, 0xCuLL);
  *v20 = v21;
  v20[1] = vextq_s8(v9, v10, 0xCuLL);
  v22 = &v20[a2];
  *v22 = vextq_s8(v12, result, 0xCuLL);
  v22[1] = v21;
  v23 = (v20 + a2);
  v24 = vextq_s8(result, v9, 0xBuLL);
  *v23 = v24;
  v23[1] = vextq_s8(v9, v10, 0xBuLL);
  v25 = &v23[a2];
  *v25 = vextq_s8(v12, result, 0xBuLL);
  v25[1] = v24;
  v26 = (v23 + a2);
  v27 = vextq_s8(result, v9, 0xAuLL);
  *v26 = v27;
  v26[1] = vextq_s8(v9, v10, 0xAuLL);
  v28 = &v26[a2];
  *v28 = vextq_s8(v12, result, 0xAuLL);
  v28[1] = v27;
  v29 = (v26 + a2);
  v30 = vextq_s8(result, v9, 9uLL);
  *v29 = v30;
  v29[1] = vextq_s8(v9, v10, 9uLL);
  v31 = &v29[a2];
  *v31 = vextq_s8(v12, result, 9uLL);
  v31[1] = v30;
  v32 = (v29 + a2);
  v33 = vextq_s8(result, v9, 8uLL);
  *v32 = v33;
  v32[1] = vextq_s8(v9, v10, 8uLL);
  v34 = &v32[a2];
  *v34 = vextq_s8(v12, result, 8uLL);
  v34[1] = v33;
  v35 = (v32 + a2);
  v36 = vextq_s8(result, v9, 7uLL);
  *v35 = v36;
  v35[1] = vextq_s8(v9, v10, 7uLL);
  v37 = &v35[a2];
  *v37 = vextq_s8(v12, result, 7uLL);
  v37[1] = v36;
  v38 = (v35 + a2);
  v39 = vextq_s8(result, v9, 6uLL);
  *v38 = v39;
  v38[1] = vextq_s8(v9, v10, 6uLL);
  v40 = &v38[a2];
  *v40 = vextq_s8(v12, result, 6uLL);
  v40[1] = v39;
  v41 = (v38 + a2);
  v42 = vextq_s8(result, v9, 5uLL);
  *v41 = v42;
  v41[1] = vextq_s8(v9, v10, 5uLL);
  v43 = &v41[a2];
  *v43 = vextq_s8(v12, result, 5uLL);
  v43[1] = v42;
  v44 = (v41 + a2);
  v45 = vextq_s8(result, v9, 4uLL);
  *v44 = v45;
  v44[1] = vextq_s8(v9, v10, 4uLL);
  v46 = &v44[a2];
  *v46 = vextq_s8(v12, result, 4uLL);
  v46[1] = v45;
  v47 = (v44 + a2);
  v48 = vextq_s8(result, v9, 3uLL);
  *v47 = v48;
  v47[1] = vextq_s8(v9, v10, 3uLL);
  v49 = &v47[a2];
  *v49 = vextq_s8(v12, result, 3uLL);
  v49[1] = v48;
  v50 = (v47 + a2);
  v51 = vextq_s8(result, v9, 2uLL);
  *v50 = v51;
  v50[1] = vextq_s8(v9, v10, 2uLL);
  v52 = &v50[a2];
  *v52 = vextq_s8(v12, result, 2uLL);
  v52[1] = v51;
  v53 = (v50 + a2);
  v54 = vextq_s8(result, v9, 1uLL);
  *v53 = v54;
  v53[1] = vextq_s8(v9, v10, 1uLL);
  v55 = &v53[a2];
  *v55 = vextq_s8(v12, result, 1uLL);
  v55[1] = v54;
  v56 = (v53 + a2);
  *v56 = result;
  v56[1] = v9;
  v57 = &v56[a2];
  *v57 = v12;
  v57[1] = result;
  return result;
}

int8x8_t vpx_d153_predictor_4x4_neon(_DWORD *a1, uint64_t a2, __int32 *a3, const char *a4, double a5, uint8x8_t a6, double a7, int8x8_t a8, uint8x8_t a9)
{
  v9 = *(a3 - 1);
  a6.i32[0] = *a3;
  v10 = a4;
  v11 = vld1_dup_s8(v10++);
  a8.i32[0] = *a4;
  a9.i32[0] = *v10;
  v12 = vext_s8(vdup_n_s8(v9.u32[0]), a8, 7uLL);
  v13 = vrhadd_u8(vhadd_u8(vext_s8(v11, v9, 7uLL), a6), v9.u32[0]);
  v14 = vrev64_s8(vzip1_s8(vrhadd_u8(v12, a8), vrhadd_u8(vhadd_u8(v12, a9), a8)));
  *a1 = vext_s8(v14, v13, 7uLL).u32[0];
  v15 = vext_s8(v14, v13, 5uLL);
  *(a1 + a2) = v15.i32[0];
  v16 = vext_s8(v14, v15, 3uLL);
  *(a1 + 2 * a2) = v16.i32[0];
  result = vext_s8(v14, v16, 1uLL);
  *(a1 + 3 * a2) = result.i32[0];
  return result;
}

int8x8_t vpx_d153_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, int8x8_t *a4)
{
  v4 = *(&a3[-1] + 7);
  v5 = vld1_dup_s8(a4);
  v6 = vext_s8(vdup_lane_s8(v4, 0), *a4, 7uLL);
  v7 = vrhadd_u8(vhadd_u8(vext_s8(v5, v4, 7uLL), *a3), v4);
  v8 = vrev64_s8(vrhadd_u8(vhadd_u8(v6, vext_s8(*a4, *a4, 1uLL)), *a4));
  v9 = vrev64_s8(vrhadd_u8(v6, *a4));
  v10 = vzip2_s8(v8, v9);
  *a1 = vext_s8(v10, v7, 7uLL);
  *(a1 + a2) = vext_s8(v10, v7, 5uLL);
  *(a1 + 2 * a2) = vext_s8(v10, v7, 3uLL);
  *(a1 + 3 * a2) = vext_s8(v10, v7, 1uLL);
  v11 = vzip1_s8(v8, v9);
  *(a1 + 4 * a2) = vext_s8(v11, v10, 7uLL);
  *(a1 + 5 * a2) = vext_s8(v11, v10, 5uLL);
  *(a1 + 6 * a2) = vext_s8(v11, v10, 3uLL);
  result = vext_s8(v11, v10, 1uLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d153_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3, int8x16_t *a4)
{
  v4 = *(&a3[-1] + 15);
  v5 = vld1q_dup_s8(a4->i8);
  v6 = vextq_s8(vdupq_lane_s8(*v4.i8, 0), *a4, 0xFuLL);
  v7 = vrhaddq_u8(v6, *a4);
  v8 = vrhaddq_u8(vhaddq_u8(vextq_s8(v5, v4, 0xFuLL), *a3), v4);
  v9 = vrhaddq_u8(vhaddq_u8(v6, vextq_s8(*a4, *a4, 1uLL)), *a4);
  v10 = vrev64q_s8(vextq_s8(v7, v7, 8uLL));
  v11 = vrev64q_s8(vextq_s8(v9, v9, 8uLL));
  v12 = vzip2q_s8(v11, v10);
  *a1 = vextq_s8(v12, v8, 0xFuLL);
  *(a1 + a2) = vextq_s8(v12, v8, 0xDuLL);
  *(a1 + 2 * a2) = vextq_s8(v12, v8, 0xBuLL);
  *(a1 + 3 * a2) = vextq_s8(v12, v8, 9uLL);
  *(a1 + 4 * a2) = vextq_s8(v12, v8, 7uLL);
  *(a1 + 5 * a2) = vextq_s8(v12, v8, 5uLL);
  v13 = vzip1q_s8(v11, v10);
  *(a1 + 6 * a2) = vextq_s8(v12, v8, 3uLL);
  *(a1 + 7 * a2) = vextq_s8(v12, v8, 1uLL);
  *(a1 + 8 * a2) = vextq_s8(v13, v12, 0xFuLL);
  *(a1 + 9 * a2) = vextq_s8(v13, v12, 0xDuLL);
  *(a1 + 10 * a2) = vextq_s8(v13, v12, 0xBuLL);
  *(a1 + 11 * a2) = vextq_s8(v13, v12, 9uLL);
  *(a1 + 12 * a2) = vextq_s8(v13, v12, 7uLL);
  *(a1 + 13 * a2) = vextq_s8(v13, v12, 5uLL);
  *(a1 + 14 * a2) = vextq_s8(v13, v12, 3uLL);
  result = vextq_s8(v13, v12, 1uLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d153_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 - 1);
  v5 = a4;
  v6 = vld1q_dup_s8(v5->i8);
  v5 = (v5 + 1);
  v7 = vextq_s8(v6, v4, 0xFuLL);
  v8 = *(a4 + 16);
  v9 = *(a4 + 15);
  v10 = vextq_s8(vdupq_lane_s8(*v4.i8, 0), *a4, 0xFuLL);
  v11 = vrhaddq_u8(v10, *a4);
  v12 = vrhaddq_u8(vhaddq_u8(v7, *a3), v4);
  v13 = vrhaddq_u8(vhaddq_u8(*(a3 + 14), *(a3 + 16)), *(a3 + 15));
  v14 = vrhaddq_u8(vhaddq_u8(v10, *v5), *a4);
  v15 = vrev64q_s8(vextq_s8(v11, v11, 8uLL));
  v16 = vrev64q_s8(vextq_s8(v14, v14, 8uLL));
  v17 = vzip2q_s8(v16, v15);
  v18 = vextq_s8(v17, v12, 0xFuLL);
  *a1 = v18;
  a1[1] = vextq_s8(v12, v13, 0xFuLL);
  v19 = vextq_s8(v17, v12, 0xDuLL);
  v20 = (a1 + a2);
  *v20 = v19;
  v20[1] = vextq_s8(v12, v13, 0xDuLL);
  v21 = vextq_s8(v17, v12, 0xBuLL);
  v22 = (a1 + 2 * a2);
  *v22 = v21;
  v22[1] = vextq_s8(v12, v13, 0xBuLL);
  v23 = vextq_s8(v17, v12, 9uLL);
  v24 = a1->i64 + 2 * a2 + a2;
  *v24 = v23;
  *(v24 + 16) = vextq_s8(v12, v13, 9uLL);
  v25 = vextq_s8(v17, v12, 7uLL);
  v26 = (a1 + 4 * a2);
  *v26 = v25;
  v26[1] = vextq_s8(v12, v13, 7uLL);
  v27 = vextq_s8(v17, v12, 5uLL);
  v28 = a1->i64 + 4 * a2 + a2;
  *v28 = v27;
  *(v28 + 16) = vextq_s8(v12, v13, 5uLL);
  v29 = vextq_s8(v17, v12, 3uLL);
  v30 = (a1 + 6 * a2);
  *v30 = v29;
  v30[1] = vextq_s8(v12, v13, 3uLL);
  v31 = vextq_s8(v12, v13, 1uLL);
  v32 = vextq_s8(v17, v12, 1uLL);
  v33 = (a1 + 7 * a2);
  *v33 = v32;
  v33[1] = v31;
  v34 = vhaddq_u8(v9, vextq_s8(v8, v8, 1uLL));
  v35 = vrhaddq_u8(v9, v8);
  v36 = vrhaddq_u8(v34, v8);
  v37 = vzip1q_s8(v16, v15);
  v38 = vextq_s8(v37, v17, 0xFuLL);
  v39 = (a1 + 8 * a2);
  *v39 = v38;
  v39[1] = v18;
  v40 = vrev64q_s8(vextq_s8(v35, v35, 8uLL));
  v41 = vextq_s8(v37, v17, 0xDuLL);
  v42 = (a1 + 8 * a2 + a2);
  *v42 = v41;
  v42[1] = v19;
  v43 = vextq_s8(v37, v17, 0xBuLL);
  v44 = (a1 + 10 * a2);
  *v44 = v43;
  v44[1] = v21;
  v45 = vrev64q_s8(vextq_s8(v36, v36, 8uLL));
  v46 = vextq_s8(v37, v17, 9uLL);
  v47 = (a1 + 11 * a2);
  *v47 = v46;
  v47[1] = v23;
  v48 = vzip1q_s8(v45, v40);
  v49 = vextq_s8(v37, v17, 7uLL);
  v50 = (a1 + 12 * a2);
  *v50 = v49;
  v50[1] = v25;
  v51 = vzip2q_s8(v45, v40);
  v52 = vextq_s8(v37, v17, 5uLL);
  v53 = (a1 + 13 * a2);
  *v53 = v52;
  v53[1] = v27;
  v54 = vextq_s8(v37, v17, 3uLL);
  v55 = (a1 + 14 * a2);
  *v55 = v54;
  v55[1] = v29;
  v56 = vextq_s8(v37, v17, 1uLL);
  v57 = (a1 + 15 * a2);
  *v57 = v56;
  v57[1] = v32;
  v58 = vextq_s8(v51, v37, 0xFuLL);
  v59 = &a1[a2];
  *v59 = v58;
  v59[1] = v38;
  v60 = vextq_s8(v51, v37, 0xDuLL);
  v61 = (&a1[a2] + a2);
  *v61 = v60;
  v61[1] = v41;
  v62 = vextq_s8(v51, v37, 0xBuLL);
  v63 = (a1 + 18 * a2);
  *v63 = v62;
  v63[1] = v43;
  v64 = vextq_s8(v51, v37, 9uLL);
  v65 = (a1 + 19 * a2);
  *v65 = v64;
  v65[1] = v46;
  v66 = vextq_s8(v51, v37, 7uLL);
  v67 = (a1 + 20 * a2);
  *v67 = v66;
  v67[1] = v49;
  v68 = vextq_s8(v51, v37, 5uLL);
  v69 = (a1 + 21 * a2);
  *v69 = v68;
  v69[1] = v52;
  v70 = vextq_s8(v51, v37, 3uLL);
  v71 = (a1 + 22 * a2);
  *v71 = v70;
  v71[1] = v54;
  v72 = vextq_s8(v51, v37, 1uLL);
  v73 = (a1 + 23 * a2);
  *v73 = v72;
  v73[1] = v56;
  v74 = (a1 + 24 * a2);
  *v74 = vextq_s8(v48, v51, 0xFuLL);
  v74[1] = v58;
  v75 = (a1 + 25 * a2);
  *v75 = vextq_s8(v48, v51, 0xDuLL);
  v75[1] = v60;
  v76 = (a1 + 26 * a2);
  *v76 = vextq_s8(v48, v51, 0xBuLL);
  v76[1] = v62;
  v77 = (a1 + 27 * a2);
  *v77 = vextq_s8(v48, v51, 9uLL);
  v77[1] = v64;
  v78 = (a1 + 28 * a2);
  *v78 = vextq_s8(v48, v51, 7uLL);
  v78[1] = v66;
  v79 = (a1 + 29 * a2);
  *v79 = vextq_s8(v48, v51, 5uLL);
  v79[1] = v68;
  v80 = (a1 + 30 * a2);
  *v80 = vextq_s8(v48, v51, 3uLL);
  v80[1] = v70;
  result = vextq_s8(v48, v51, 1uLL);
  v82 = a1[2 * a2].i64 - a2;
  *v82 = result;
  *(v82 + 16) = v72;
  return result;
}

int8x8_t vpx_d207_predictor_4x4_neon(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = vdup_n_s32(*a4);
  v5 = vdup_n_s8(HIBYTE(*a4));
  v6 = vext_s8(v4, v5, 5uLL);
  result = vzip1_s8(vrhadd_u8(v4, v6), vrhadd_u8(vhadd_u8(v4, vext_s8(v4, v5, 6uLL)), v6));
  v8 = vext_s8(result, v5, 2uLL);
  *a1 = result.i32[0];
  *(a1 + a2) = v8.i32[0];
  *(a1 + 2 * a2) = result.i32[1];
  *(a1 + 2 * a2 + a2) = v8.i32[1];
  return result;
}

int8x8_t vpx_d207_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = vdup_lane_s8(*a4, 7);
  v5 = vext_s8(*a4, v4, 1uLL);
  v6 = vrhadd_u8(*a4, v5);
  v7 = vrhadd_u8(vhadd_u8(*a4, vext_s8(*a4, v4, 2uLL)), v5);
  v8 = vzip1_s8(v6, v7);
  v9 = vzip2_s8(v6, v7);
  *a1 = v8;
  *(a1 + a2) = vext_s8(v8, v9, 2uLL);
  *(a1 + 2 * a2) = vext_s8(v8, v9, 4uLL);
  *(a1 + 3 * a2) = vext_s8(v8, v9, 6uLL);
  *(a1 + 4 * a2) = v9;
  *(a1 + 5 * a2) = vext_s8(v9, v4, 2uLL);
  *(a1 + 6 * a2) = vext_s8(v9, v4, 4uLL);
  result = vext_s8(v9, v4, 6uLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d207_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = vdupq_laneq_s8(*a4, 15);
  v5 = vextq_s8(*a4, v4, 1uLL);
  v6 = vrhaddq_u8(*a4, v5);
  v7 = vrhaddq_u8(vhaddq_u8(*a4, vextq_s8(*a4, v4, 2uLL)), v5);
  v8 = vzip1q_s8(v6, v7);
  v9 = vzip2q_s8(v6, v7);
  *a1 = v8;
  *(a1 + a2) = vextq_s8(v8, v9, 2uLL);
  *(a1 + 2 * a2) = vextq_s8(v8, v9, 4uLL);
  *(a1 + 3 * a2) = vextq_s8(v8, v9, 6uLL);
  *(a1 + 4 * a2) = vextq_s8(v8, v9, 8uLL);
  *(a1 + 5 * a2) = vextq_s8(v8, v9, 0xAuLL);
  *(a1 + 6 * a2) = vextq_s8(v8, v9, 0xCuLL);
  *(a1 + 7 * a2) = vextq_s8(v8, v9, 0xEuLL);
  *(a1 + 8 * a2) = v9;
  *(a1 + 9 * a2) = vextq_s8(v9, v4, 2uLL);
  *(a1 + 10 * a2) = vextq_s8(v9, v4, 4uLL);
  *(a1 + 11 * a2) = vextq_s8(v9, v4, 6uLL);
  *(a1 + 12 * a2) = vextq_s8(v9, v4, 8uLL);
  *(a1 + 13 * a2) = vextq_s8(v9, v4, 0xAuLL);
  *(a1 + 14 * a2) = vextq_s8(v9, v4, 0xCuLL);
  result = vextq_s8(v9, v4, 0xEuLL);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t vpx_d207_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = a4[1];
  result = vdupq_laneq_s8(v4, 15);
  v6 = vextq_s8(*a4, v4, 1uLL);
  v7 = vrhaddq_u8(*a4, v6);
  v8 = vrhaddq_u8(vhaddq_u8(*a4, vextq_s8(*a4, v4, 2uLL)), v6);
  v9 = vzip1q_s8(v7, v8);
  v10 = vzip2q_s8(v7, v8);
  *a1 = v9;
  a1[1] = v10;
  v11 = vextq_s8(v4, result, 1uLL);
  v12 = vrhaddq_u8(v4, v11);
  v13 = vrhaddq_u8(vhaddq_u8(v4, vextq_s8(v4, result, 2uLL)), v11);
  v14 = vzip1q_s8(v12, v13);
  v15 = (a1 + a2);
  v16 = vextq_s8(v10, v14, 2uLL);
  *v15 = vextq_s8(v9, v10, 2uLL);
  v15[1] = v16;
  v17 = (a1 + 2 * a2);
  v18 = vextq_s8(v10, v14, 4uLL);
  *v17 = vextq_s8(v9, v10, 4uLL);
  v17[1] = v18;
  v19 = a1->i64 + 2 * a2 + a2;
  v20 = vextq_s8(v10, v14, 6uLL);
  *v19 = vextq_s8(v9, v10, 6uLL);
  *(v19 + 16) = v20;
  v21 = (a1 + 4 * a2);
  v22 = vextq_s8(v10, v14, 8uLL);
  *v21 = vextq_s8(v9, v10, 8uLL);
  v21[1] = v22;
  v23 = a1->i64 + 4 * a2 + a2;
  v24 = vextq_s8(v10, v14, 0xAuLL);
  *v23 = vextq_s8(v9, v10, 0xAuLL);
  *(v23 + 16) = v24;
  v25 = (a1 + 6 * a2);
  v26 = vextq_s8(v10, v14, 0xCuLL);
  *v25 = vextq_s8(v9, v10, 0xCuLL);
  v25[1] = v26;
  v27 = (a1 + 7 * a2);
  v28 = vextq_s8(v10, v14, 0xEuLL);
  *v27 = vextq_s8(v9, v10, 0xEuLL);
  v27[1] = v28;
  v29 = (a1 + 8 * a2);
  *v29 = v10;
  v29[1] = v14;
  v30 = vzip2q_s8(v12, v13);
  v31 = (a1 + 8 * a2 + a2);
  v32 = vextq_s8(v14, v30, 2uLL);
  *v31 = v16;
  v31[1] = v32;
  v33 = (a1 + 10 * a2);
  v34 = vextq_s8(v14, v30, 4uLL);
  *v33 = v18;
  v33[1] = v34;
  v35 = (a1 + 11 * a2);
  v36 = vextq_s8(v14, v30, 6uLL);
  *v35 = v20;
  v35[1] = v36;
  v37 = (a1 + 12 * a2);
  v38 = vextq_s8(v14, v30, 8uLL);
  *v37 = v22;
  v37[1] = v38;
  v39 = (a1 + 13 * a2);
  v40 = vextq_s8(v14, v30, 0xAuLL);
  *v39 = v24;
  v39[1] = v40;
  v41 = (a1 + 14 * a2);
  v42 = vextq_s8(v14, v30, 0xCuLL);
  *v41 = v26;
  v41[1] = v42;
  v43 = (a1 + 15 * a2);
  v44 = vextq_s8(v14, v30, 0xEuLL);
  *v43 = v28;
  v43[1] = v44;
  v45 = &a1[a2];
  *v45 = v14;
  v45[1] = v30;
  v46 = (&a1[a2] + a2);
  v47 = vextq_s8(v30, result, 2uLL);
  *v46 = v32;
  v46[1] = v47;
  v48 = (a1 + 18 * a2);
  v49 = vextq_s8(v30, result, 4uLL);
  *v48 = v34;
  v48[1] = v49;
  v50 = (a1 + 19 * a2);
  v51 = vextq_s8(v30, result, 6uLL);
  *v50 = v36;
  v50[1] = v51;
  v52 = (a1 + 20 * a2);
  v53 = vextq_s8(v30, result, 8uLL);
  *v52 = v38;
  v52[1] = v53;
  v54 = (a1 + 21 * a2);
  v55 = vextq_s8(v30, result, 0xAuLL);
  *v54 = v40;
  v54[1] = v55;
  v56 = (a1 + 22 * a2);
  v57 = vextq_s8(v30, result, 0xCuLL);
  *v56 = v42;
  v56[1] = v57;
  v58 = (a1 + 23 * a2);
  v59 = vextq_s8(v30, result, 0xEuLL);
  *v58 = v44;
  v58[1] = v59;
  v60 = (a1 + 24 * a2);
  *v60 = v30;
  v60[1] = result;
  v61 = (a1 + 25 * a2);
  *v61 = v47;
  v61[1] = result;
  v62 = (a1 + 26 * a2);
  *v62 = v49;
  v62[1] = result;
  v63 = (a1 + 27 * a2);
  *v63 = v51;
  v63[1] = result;
  v64 = (a1 + 28 * a2);
  *v64 = v53;
  v64[1] = result;
  v65 = (a1 + 29 * a2);
  *v65 = v55;
  v65[1] = result;
  v66 = (a1 + 30 * a2);
  *v66 = v57;
  v66[1] = result;
  v67 = a1[2 * a2].i64 - a2;
  *v67 = v59;
  *(v67 + 16) = result;
  return result;
}

int *vpx_v_predictor_4x4_neon(int *result, uint64_t a2, int *a3)
{
  v3 = *a3;
  *result = *a3;
  *(result + a2) = v3;
  v4 = (result + a2 + a2);
  *v4 = v3;
  *(v4 + a2) = v3;
  return result;
}

double vpx_v_predictor_8x8_neon(void *a1, uint64_t a2, double *a3)
{
  result = *a3;
  *a1 = *a3;
  *(a1 + a2) = result;
  v4 = (a1 + a2 + a2);
  *v4 = result;
  v5 = (v4 + a2);
  *v5 = result;
  v6 = (v5 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  *(v8 + a2) = result;
  return result;
}

__n128 vpx_v_predictor_16x16_neon(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a3;
  *a1 = *a3;
  *(a1 + a2) = result;
  v4 = (a1 + a2 + a2);
  *v4 = result;
  v5 = (v4 + a2);
  *v5 = result;
  v6 = (v5 + a2);
  *v6 = result;
  v7 = (v6 + a2);
  *v7 = result;
  v8 = (v7 + a2);
  *v8 = result;
  v9 = (v8 + a2);
  *v9 = result;
  v10 = (v9 + a2);
  *v10 = result;
  v11 = (v10 + a2);
  *v11 = result;
  v12 = (v11 + a2);
  *v12 = result;
  v13 = (v12 + a2);
  *v13 = result;
  v14 = (v13 + a2);
  *v14 = result;
  v15 = (v14 + a2);
  *v15 = result;
  v16 = (v15 + a2);
  *v16 = result;
  *(v16 + a2) = result;
  return result;
}

__n128 vpx_v_predictor_32x32_neon(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a1 = *a3;
  a1[1] = v4;
  v5 = a1 + a2;
  *v5 = result;
  *(v5 + 1) = v4;
  v6 = a1 + a2 + a2;
  *v6 = result;
  *(v6 + 1) = v4;
  v7 = &v6[a2];
  *v7 = result;
  *(v7 + 1) = v4;
  v8 = &v7[a2];
  *v8 = result;
  *(v8 + 1) = v4;
  v9 = &v8[a2];
  *v9 = result;
  *(v9 + 1) = v4;
  v10 = &v9[a2];
  *v10 = result;
  *(v10 + 1) = v4;
  v11 = &v10[a2];
  *v11 = result;
  *(v11 + 1) = v4;
  v12 = &v11[a2];
  *v12 = result;
  *(v12 + 1) = v4;
  v13 = &v12[a2];
  *v13 = result;
  *(v13 + 1) = v4;
  v14 = &v13[a2];
  *v14 = result;
  *(v14 + 16) = v4;
  v15 = v14 + a2;
  *v15 = result;
  *(v15 + 16) = v4;
  v16 = v15 + a2;
  *v16 = result;
  *(v16 + 16) = v4;
  v17 = v16 + a2;
  *v17 = result;
  *(v17 + 16) = v4;
  v18 = v17 + a2;
  *v18 = result;
  *(v18 + 16) = v4;
  v19 = v18 + a2;
  *v19 = result;
  *(v19 + 16) = v4;
  v20 = v19 + a2;
  *v20 = result;
  *(v20 + 16) = v4;
  v21 = v20 + a2;
  *v21 = result;
  *(v21 + 16) = v4;
  v22 = v21 + a2;
  *v22 = result;
  *(v22 + 16) = v4;
  v23 = v22 + a2;
  *v23 = result;
  *(v23 + 16) = v4;
  v24 = v23 + a2;
  *v24 = result;
  *(v24 + 16) = v4;
  v25 = v24 + a2;
  *v25 = result;
  *(v25 + 16) = v4;
  v26 = v25 + a2;
  *v26 = result;
  *(v26 + 16) = v4;
  v27 = v26 + a2;
  *v27 = result;
  *(v27 + 16) = v4;
  v28 = v27 + a2;
  *v28 = result;
  *(v28 + 16) = v4;
  v29 = v28 + a2;
  *v29 = result;
  *(v29 + 16) = v4;
  v30 = v29 + a2;
  *v30 = result;
  *(v30 + 16) = v4;
  v31 = v30 + a2;
  *v31 = result;
  *(v31 + 16) = v4;
  v32 = v31 + a2;
  *v32 = result;
  *(v32 + 16) = v4;
  v33 = v32 + a2;
  *v33 = result;
  *(v33 + 16) = v4;
  v34 = v33 + a2;
  *v34 = result;
  *(v34 + 16) = v4;
  v35 = v34 + a2;
  *v35 = result;
  *(v35 + 16) = v4;
  return result;
}

int8x8_t vpx_h_predictor_4x4_neon(_DWORD *a1, uint64_t a2, int8x8_t a3, uint64_t a4, __int32 *a5)
{
  a3.i32[0] = *a5;
  *a1 = vdup_lane_s8(a3, 0).u32[0];
  *(a1 + a2) = vdup_lane_s8(a3, 1).u32[0];
  v5 = (a1 + a2 + a2);
  *v5 = vdup_lane_s8(a3, 2).u32[0];
  result = vdup_lane_s8(a3, 3);
  *(v5 + a2) = result.i32[0];
  return result;
}

int8x8_t vpx_h_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4;
  *a1 = vdup_lane_s8(*a4, 0);
  *(a1 + a2) = vdup_lane_s8(v4, 1);
  v5 = (a1 + a2 + a2);
  *v5 = vdup_lane_s8(v4, 2);
  v6 = (v5 + a2);
  *v6 = vdup_lane_s8(v4, 3);
  v7 = (v6 + a2);
  *v7 = vdup_lane_s8(v4, 4);
  v8 = (v7 + a2);
  *v8 = vdup_lane_s8(v4, 5);
  v9 = (v8 + a2);
  *v9 = vdup_lane_s8(v4, 6);
  result = vdup_lane_s8(v4, 7);
  *(v9 + a2) = result;
  return result;
}

int8x16_t vpx_h_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4->i8;
  v5 = vdupq_lane_s8(*a4, 1);
  v6 = vdupq_lane_s8(*a4, 2);
  v7 = vdupq_lane_s8(*a4, 3);
  v8 = vdupq_lane_s8(*a4, 4);
  v9 = vdupq_lane_s8(*a4, 5);
  v10 = vdupq_lane_s8(*a4, 6);
  v11 = vdupq_lane_s8(*a4, 7);
  *a1 = vdupq_lane_s8(*a4, 0);
  *(a1 + a2) = v5;
  v12 = (a1 + a2 + a2);
  *v12 = v6;
  v13 = (v12 + a2);
  *v13 = v7;
  v14 = (v13 + a2);
  *v14 = v8;
  v15 = (v14 + a2);
  *v15 = v9;
  v16 = (v15 + a2);
  *v16 = v10;
  v17 = (v16 + a2);
  *v17 = v11;
  v18 = vdupq_laneq_s8(v4, 8);
  v19 = vdupq_laneq_s8(v4, 9);
  v20 = vdupq_laneq_s8(v4, 10);
  v21 = vdupq_laneq_s8(v4, 11);
  v22 = vdupq_laneq_s8(v4, 12);
  v23 = vdupq_laneq_s8(v4, 13);
  v24 = vdupq_laneq_s8(v4, 14);
  v25 = (v17 + a2);
  result = vdupq_laneq_s8(v4, 15);
  *v25 = v18;
  v27 = (v25 + a2);
  *v27 = v19;
  v28 = (v27 + a2);
  *v28 = v20;
  v29 = (v28 + a2);
  *v29 = v21;
  v30 = (v29 + a2);
  *v30 = v22;
  v31 = (v30 + a2);
  *v31 = v23;
  v32 = (v31 + a2);
  *v32 = v24;
  *(v32 + a2) = result;
  return result;
}

int8x16_t vpx_h_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = *a4;
  v5 = vdupq_lane_s8(*a4->i8, 0);
  v6 = vdupq_lane_s8(*a4->i8, 1);
  v7 = vdupq_lane_s8(*a4->i8, 2);
  v8 = vdupq_lane_s8(*a4->i8, 3);
  v9 = vdupq_lane_s8(*a4->i8, 4);
  v10 = vdupq_lane_s8(*a4->i8, 5);
  v11 = vdupq_lane_s8(*a4->i8, 6);
  v12 = vdupq_lane_s8(*a4->i8, 7);
  *a1 = v5;
  a1[1] = v5;
  v13 = (a1 + a2);
  *v13 = v6;
  v13[1] = v6;
  v14 = (a1 + a2 + a2);
  *v14 = v7;
  v14[1] = v7;
  v15 = (v14 + a2);
  *v15 = v8;
  v15[1] = v8;
  v16 = (v15 + a2);
  *v16 = v9;
  v16[1] = v9;
  v17 = (v16 + a2);
  *v17 = v10;
  v17[1] = v10;
  v18 = (v17 + a2);
  *v18 = v11;
  v18[1] = v11;
  v19 = (v18 + a2);
  *v19 = v12;
  v19[1] = v12;
  v20 = (v19 + a2);
  v21 = vdupq_laneq_s8(v4, 8);
  v22 = vdupq_laneq_s8(v4, 9);
  v23 = vdupq_laneq_s8(v4, 10);
  v24 = vdupq_laneq_s8(v4, 11);
  v25 = vdupq_laneq_s8(v4, 12);
  v26 = vdupq_laneq_s8(v4, 13);
  v27 = vdupq_laneq_s8(v4, 14);
  v28 = vdupq_laneq_s8(v4, 15);
  *v20 = v21;
  v20[1] = v21;
  v29 = (v20 + a2);
  *v29 = v22;
  v29[1] = v22;
  v30 = (v29 + a2);
  *v30 = v23;
  v30[1] = v23;
  v31 = (v30 + a2);
  *v31 = v24;
  v31[1] = v24;
  v32 = (v31 + a2);
  *v32 = v25;
  v32[1] = v25;
  v33 = (v32 + a2);
  *v33 = v26;
  v33[1] = v26;
  v34 = (v33 + a2);
  *v34 = v27;
  v34[1] = v27;
  v35 = (v34 + a2);
  *v35 = v28;
  v35[1] = v28;
  v36 = a4[1];
  v37 = vdupq_lane_s8(*v36.i8, 0);
  v38 = vdupq_lane_s8(*v36.i8, 1);
  v39 = vdupq_lane_s8(*v36.i8, 2);
  v40 = vdupq_lane_s8(*v36.i8, 3);
  v41 = vdupq_lane_s8(*v36.i8, 4);
  v42 = vdupq_lane_s8(*v36.i8, 5);
  v43 = vdupq_lane_s8(*v36.i8, 6);
  v44 = (v35 + a2);
  v45 = vdupq_lane_s8(*v36.i8, 7);
  *v44 = v37;
  v44[1] = v37;
  v46 = (v44 + a2);
  *v46 = v38;
  v46[1] = v38;
  v47 = (v46 + a2);
  *v47 = v39;
  v47[1] = v39;
  v48 = (v47 + a2);
  *v48 = v40;
  v48[1] = v40;
  v49 = (v48 + a2);
  *v49 = v41;
  v49[1] = v41;
  v50 = (v49 + a2);
  *v50 = v42;
  v50[1] = v42;
  v51 = (v50 + a2);
  *v51 = v43;
  v51[1] = v43;
  v52 = (v51 + a2);
  *v52 = v45;
  v52[1] = v45;
  v53 = vdupq_laneq_s8(v36, 8);
  v54 = vdupq_laneq_s8(v36, 9);
  v55 = vdupq_laneq_s8(v36, 10);
  v56 = vdupq_laneq_s8(v36, 11);
  v57 = vdupq_laneq_s8(v36, 12);
  v58 = vdupq_laneq_s8(v36, 13);
  v59 = vdupq_laneq_s8(v36, 14);
  result = vdupq_laneq_s8(v36, 15);
  v61 = (v52 + a2);
  *v61 = v53;
  v61[1] = v53;
  v62 = (v61 + a2);
  *v62 = v54;
  v62[1] = v54;
  v63 = (v62 + a2);
  *v63 = v55;
  v63[1] = v55;
  v64 = (v63 + a2);
  *v64 = v56;
  v64[1] = v56;
  v65 = (v64 + a2);
  *v65 = v57;
  v65[1] = v57;
  v66 = (v65 + a2);
  *v66 = v58;
  v66[1] = v58;
  v67 = (v66 + a2);
  *v67 = v59;
  v67[1] = v59;
  v68 = (v67 + a2);
  *v68 = result;
  v68[1] = result;
  return result;
}

int8x8_t vpx_tm_predictor_4x4_neon(_DWORD *a1, uint64_t a2, uint8x8_t *a3, uint8x8_t *a4)
{
  v4 = &a3[-1] + 7;
  v5 = vld1_dup_s8(v4);
  v6 = vmovl_u8(*a4).u64[0];
  v7.i64[0] = vsubl_u8(*a3, v5).u64[0];
  v7.i64[1] = v7.i64[0];
  *v8.i8 = vdup_lane_s16(v6, 0);
  v8.u64[1] = vdup_lane_s16(v6, 1);
  *v8.i8 = vqmovun_s16(vaddq_s16(v8, v7));
  *a1 = v8.i32[0];
  *(a1 + a2) = v8.i32[1];
  v9 = (a1 + a2 + a2);
  *v8.i8 = vdup_lane_s16(v6, 2);
  v8.u64[1] = vdup_lane_s16(v6, 3);
  result = vqmovun_s16(vaddq_s16(v8, v7));
  *v9 = result.i32[0];
  *(v9 + a2) = result.i32[1];
  return result;
}

int8x8_t vpx_tm_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint8x8_t *a4)
{
  v4 = &a3[-1] + 7;
  v5 = vld1_dup_s8(v4);
  v6 = vmovl_u8(*a4);
  v7 = vsubl_u8(*a3, v5);
  *a1 = vqmovun_s16(vaddq_s16(vdupq_lane_s16(*v6.i8, 0), v7));
  *(a1 + a2) = vqmovun_s16(vaddq_s16(vdupq_lane_s16(*v6.i8, 1), v7));
  v8 = (a1 + a2 + a2);
  *v8 = vqmovun_s16(vaddq_s16(vdupq_lane_s16(*v6.i8, 2), v7));
  v9 = (v8 + a2);
  *v9 = vqmovun_s16(vaddq_s16(vdupq_lane_s16(*v6.i8, 3), v7));
  v10 = (v9 + a2);
  *v10 = vqmovun_s16(vaddq_s16(vdupq_laneq_s16(v6, 4), v7));
  v11 = (v10 + a2);
  *v11 = vqmovun_s16(vaddq_s16(vdupq_laneq_s16(v6, 5), v7));
  v12 = (v11 + a2);
  *v12 = vqmovun_s16(vaddq_s16(vdupq_laneq_s16(v6, 6), v7));
  result = vqmovun_s16(vaddq_s16(vdupq_laneq_s16(v6, 7), v7));
  *(v12 + a2) = result;
  return result;
}

int8x8_t vpx_tm_predictor_16x16_neon(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint8x8_t *a4)
{
  v4 = a3[-1].u8[7];
  v5 = vsubl_u8(*a3, vdup_n_s8(v4));
  v6 = vsubl_high_u8(*a3->i8, vdupq_n_s8(v4));
  v7 = vmovl_u8(*a4);
  v8 = vdupq_lane_s16(*v7.i8, 0);
  *a1 = vqmovun_s16(vaddq_s16(v8, v5));
  a1[1] = vqmovun_s16(vaddq_s16(v8, v6));
  v9 = a1 + 1;
  v10 = (v9 + a2);
  v11 = vdupq_lane_s16(*v7.i8, 1);
  v10[-1] = vqmovun_s16(vaddq_s16(v11, v5));
  *v10 = vqmovun_s16(vaddq_s16(v11, v6));
  v12 = vdupq_lane_s16(*v7.i8, 2);
  v13 = (v9 + a2 + a2);
  v13[-1] = vqmovun_s16(vaddq_s16(v12, v5));
  *v13 = vqmovun_s16(vaddq_s16(v12, v6));
  v14 = (v13 + a2);
  v15 = vdupq_lane_s16(*v7.i8, 3);
  v14[-1] = vqmovun_s16(vaddq_s16(v15, v5));
  *v14 = vqmovun_s16(vaddq_s16(v15, v6));
  v16 = vdupq_laneq_s16(v7, 4);
  v17 = (v14 + a2);
  v17[-1] = vqmovun_s16(vaddq_s16(v16, v5));
  *v17 = vqmovun_s16(vaddq_s16(v16, v6));
  v18 = (v17 + a2);
  v19 = vdupq_laneq_s16(v7, 5);
  v18[-1] = vqmovun_s16(vaddq_s16(v19, v5));
  *v18 = vqmovun_s16(vaddq_s16(v19, v6));
  v20 = vdupq_laneq_s16(v7, 6);
  v21 = (v18 + a2);
  v21[-1] = vqmovun_s16(vaddq_s16(v20, v5));
  *v21 = vqmovun_s16(vaddq_s16(v20, v6));
  v22 = (v21 + a2);
  v23 = vdupq_laneq_s16(v7, 7);
  v22[-1] = vqmovun_s16(vaddq_s16(v23, v5));
  *v22 = vqmovun_s16(vaddq_s16(v23, v6));
  v24 = (v22 + a2);
  v25 = vmovl_u8(a4[1]);
  v26 = vdupq_lane_s16(*v25.i8, 0);
  v24[-1] = vqmovun_s16(vaddq_s16(v26, v5));
  *v24 = vqmovun_s16(vaddq_s16(v26, v6));
  v27 = (v24 + a2);
  v28 = vdupq_lane_s16(*v25.i8, 1);
  v27[-1] = vqmovun_s16(vaddq_s16(v28, v5));
  *v27 = vqmovun_s16(vaddq_s16(v28, v6));
  v29 = (v27 + a2);
  v30 = vdupq_lane_s16(*v25.i8, 2);
  v29[-1] = vqmovun_s16(vaddq_s16(v30, v5));
  *v29 = vqmovun_s16(vaddq_s16(v30, v6));
  v31 = (v29 + a2);
  v32 = vdupq_lane_s16(*v25.i8, 3);
  v31[-1] = vqmovun_s16(vaddq_s16(v32, v5));
  *v31 = vqmovun_s16(vaddq_s16(v32, v6));
  v33 = (v31 + a2);
  v34 = vdupq_laneq_s16(v25, 4);
  v33[-1] = vqmovun_s16(vaddq_s16(v34, v5));
  *v33 = vqmovun_s16(vaddq_s16(v34, v6));
  v35 = (v33 + a2);
  v36 = vdupq_laneq_s16(v25, 5);
  v35[-1] = vqmovun_s16(vaddq_s16(v36, v5));
  *v35 = vqmovun_s16(vaddq_s16(v36, v6));
  v37 = (v35 + a2);
  v38 = vdupq_laneq_s16(v25, 6);
  v37[-1] = vqmovun_s16(vaddq_s16(v38, v5));
  *v37 = vqmovun_s16(vaddq_s16(v38, v6));
  v39 = (v37 + a2);
  v40 = vdupq_laneq_s16(v25, 7);
  result = vqmovun_s16(vaddq_s16(v40, v5));
  v39[-1] = result;
  *v39 = vqmovun_s16(vaddq_s16(v40, v6));
  return result;
}

int8x16_t *vpx_tm_predictor_32x32_neon(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(a3 - 1);
  v6 = *(a3 + 16);
  v7 = vdupq_n_s8(v5);
  v8 = vdup_n_s8(v5);
  v9 = vsubl_u8(*a3, v8);
  v10 = vsubl_high_u8(*a3, v7);
  v11 = vsubl_u8(*v6.i8, v8);
  v12 = vsubl_high_u8(v6, v7);
  do
  {
    v13 = vmovl_u8(*(a4 + v4));
    v14 = vdupq_lane_s16(*v13.i8, 0);
    *result = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v14, v9)), vaddq_s16(v14, v10));
    result[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v14, v11)), vaddq_s16(v14, v12));
    v15 = vdupq_lane_s16(*v13.i8, 1);
    v16 = (result + a2);
    *v16 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v15, v9)), vaddq_s16(v15, v10));
    v16[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v15, v11)), vaddq_s16(v15, v12));
    v17 = vdupq_lane_s16(*v13.i8, 2);
    v18 = (result + a2 + a2);
    *v18 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v17, v9)), vaddq_s16(v17, v10));
    v18[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v17, v11)), vaddq_s16(v17, v12));
    v19 = vdupq_lane_s16(*v13.i8, 3);
    v20 = vaddq_s16(v19, v9);
    v21 = vaddq_s16(v19, v10);
    v22 = (v18 + a2);
    v23 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v19, v11)), vaddq_s16(v19, v12));
    v24 = vdupq_laneq_s16(v13, 4);
    *v22 = vqmovun_high_s16(vqmovun_s16(v20), v21);
    v22[1] = v23;
    v25 = (v22 + a2);
    *v25 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v24, v9)), vaddq_s16(v24, v10));
    v25[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v24, v11)), vaddq_s16(v24, v12));
    v26 = vdupq_laneq_s16(v13, 5);
    v27 = (v25 + a2);
    *v27 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v26, v9)), vaddq_s16(v26, v10));
    v27[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v26, v11)), vaddq_s16(v26, v12));
    v28 = vdupq_laneq_s16(v13, 6);
    v29 = (v27 + a2);
    *v29 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v28, v9)), vaddq_s16(v28, v10));
    v29[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v28, v11)), vaddq_s16(v28, v12));
    v30 = vdupq_laneq_s16(v13, 7);
    v31 = (v29 + a2);
    *v31 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v30, v9)), vaddq_s16(v30, v10));
    v31[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v30, v11)), vaddq_s16(v30, v12));
    v4 += 8;
    result = (v31 + a2);
  }

  while (v4 != 32);
  return result;
}

uint64_t vpx_iwht4x4_16_add_c(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = a1[1] >> 2;
  v4 = a1[3] >> 2;
  v5 = v3 + (*a1 >> 2);
  v6 = (a1[2] >> 2) - v4;
  v7 = (v5 - v6) >> 1;
  v8 = v7 - v4;
  v9 = v7 - v3;
  v10 = v7 - v3 + v6;
  v11 = v5 - (v7 - v4);
  v12 = a1[5] >> 2;
  v13 = a1[7] >> 2;
  v14 = v12 + (a1[4] >> 2);
  v15 = (a1[6] >> 2) - v13;
  v16 = (v14 - v15) >> 1;
  v17 = v16 - v13;
  v18 = v16 - v12;
  v19 = v16 - v12 + v15;
  v20 = v14 - (v16 - v13);
  v21 = a1[9] >> 2;
  v22 = a1[11] >> 2;
  v23 = v21 + (a1[8] >> 2);
  v24 = (a1[10] >> 2) - v22;
  v25 = (v23 - v24) >> 1;
  v26 = v25 - v22;
  v27 = v25 - v21;
  v28 = v25 - v21 + v24;
  v29 = v23 - (v25 - v22);
  v30 = a1[12];
  v31 = a1[13] >> 2;
  v32 = a1[14];
  v33 = a1[15] >> 2;
  v34 = v31 + (v30 >> 2);
  v35 = (v32 >> 2) - v33;
  v36 = (v34 - v35) >> 1;
  v37 = v36 - v33;
  result = (v36 - v31);
  v39 = v34 - v37;
  v40 = a3;
  v41 = 2 * a3;
  v42 = v20 + v11;
  v43 = v29 - v39;
  v44 = (v42 - v43) >> 1;
  v45 = v44 - v39;
  v46 = (v42 - v45 + *a2) & ~((v42 - v45 + *a2) >> 31);
  if (v46 >= 255)
  {
    LOBYTE(v46) = -1;
  }

  *a2 = v46;
  v47 = v45 + a2[v40];
  v48 = v41 + v40;
  v49 = v47 & ~(v47 >> 31);
  if (v49 >= 255)
  {
    LOBYTE(v49) = -1;
  }

  a2[v40] = v49;
  v50 = v44 - v20;
  v51 = (v50 + a2[v41]) & ~((v50 + a2[v41]) >> 31);
  if (v51 >= 255)
  {
    LOBYTE(v51) = -1;
  }

  a2[v41] = v51;
  v52 = (v50 + v43 + a2[v48]) & ~((v50 + v43 + a2[v48]) >> 31);
  if (v52 >= 255)
  {
    LOBYTE(v52) = -1;
  }

  a2[v48] = v52;
  v53 = v17 + v8;
  v54 = v26 - v37;
  v55 = (v53 - v54) >> 1;
  v56 = v55 - v37;
  v57 = a2 + 1;
  v58 = (v53 - v56 + a2[1]) & ~((v53 - v56 + a2[1]) >> 31);
  if (v58 >= 255)
  {
    LOBYTE(v58) = -1;
  }

  *v57 = v58;
  v59 = (v57[v40] + v56) & ~((v57[v40] + v56) >> 31);
  if (v59 >= 255)
  {
    LOBYTE(v59) = -1;
  }

  v57[v40] = v59;
  v60 = v55 - v17;
  v61 = (v57[v41] + v60) & ~((v57[v41] + v60) >> 31);
  if (v61 >= 255)
  {
    LOBYTE(v61) = -1;
  }

  v57[v41] = v61;
  v62 = (v57[v48] + v54 + v60) & ~((v57[v48] + v54 + v60) >> 31);
  if (v62 >= 255)
  {
    LOBYTE(v62) = -1;
  }

  v57[v48] = v62;
  v63 = v18 + v9;
  v64 = v27 - result;
  v65 = (v63 - v64) >> 1;
  v66 = v65 - result;
  v67 = a2 + 2;
  v68 = (a2[2] + v63 - v66) & ~((a2[2] + v63 - v66) >> 31);
  if (v68 >= 255)
  {
    LOBYTE(v68) = -1;
  }

  *v67 = v68;
  v69 = (v67[v40] + v66) & ~((v67[v40] + v66) >> 31);
  if (v69 >= 255)
  {
    LOBYTE(v69) = -1;
  }

  v67[v40] = v69;
  v70 = v65 - v18;
  v71 = (v67[v41] + v70) & ~((v67[v41] + v70) >> 31);
  if (v71 >= 255)
  {
    LOBYTE(v71) = -1;
  }

  v67[v41] = v71;
  v72 = (v67[v48] + v64 + v70) & ~((v67[v48] + v64 + v70) >> 31);
  if (v72 >= 255)
  {
    LOBYTE(v72) = -1;
  }

  v67[v48] = v72;
  v73 = v19 + v10;
  v74 = v28 - (result + v35);
  v75 = (v73 - v74) >> 1;
  v76 = v75 - (result + v35);
  v78 = a2[3];
  v77 = a2 + 3;
  v79 = (v78 + v73 - v76) & ~((v78 + v73 - v76) >> 31);
  if (v79 >= 255)
  {
    LOBYTE(v79) = -1;
  }

  *v77 = v79;
  v80 = (v77[v40] + v76) & ~((v77[v40] + v76) >> 31);
  if (v80 >= 255)
  {
    LOBYTE(v80) = -1;
  }

  v77[v40] = v80;
  v81 = v75 - v19;
  v82 = (v77[v41] + v81) & ~((v77[v41] + v81) >> 31);
  if (v82 >= 255)
  {
    LOBYTE(v82) = -1;
  }

  v77[v41] = v82;
  v83 = (v77[v48] + v74 + v81) & ~((v77[v48] + v74 + v81) >> 31);
  if (v83 >= 255)
  {
    LOBYTE(v83) = -1;
  }

  v77[v48] = v83;
  return result;
}

int *vpx_iwht4x4_1_add_c(int *result, unsigned __int8 *a2, int a3)
{
  v3 = *result;
  v4 = *result >> 3;
  v5 = (*result >> 2) - v4;
  v6 = v5 >> 1;
  v7 = (v5 + *a2 - v6) & ~((v5 + *a2 - v6) >> 31);
  if (v7 >= 255)
  {
    LOBYTE(v7) = -1;
  }

  *a2 = v7;
  v8 = (v6 + a2[a3]) & ~((v6 + a2[a3]) >> 31);
  if (v8 >= 255)
  {
    LOBYTE(v8) = -1;
  }

  a2[a3] = v8;
  v9 = (v6 + a2[2 * a3]) & ~((v6 + a2[2 * a3]) >> 31);
  if (v9 >= 255)
  {
    LOBYTE(v9) = -1;
  }

  a2[2 * a3] = v9;
  v10 = a2[3 * a3];
  v11 = (v6 + v10) & ~((v6 + v10) >> 31);
  if (v11 >= 255)
  {
    LOBYTE(v11) = -1;
  }

  a2[3 * a3] = v11;
  v12 = v3 >> 4;
  v13 = v4 - v12;
  v14 = a2 + 1;
  v15 = (v13 + a2[1]) & ~((v13 + a2[1]) >> 31);
  if (v15 >= 255)
  {
    LOBYTE(v15) = -1;
  }

  *v14 = v15;
  v16 = (v12 + v14[a3]) & ~((v12 + v14[a3]) >> 31);
  if (v16 >= 255)
  {
    LOBYTE(v16) = -1;
  }

  v14[a3] = v16;
  v17 = (v12 + v14[2 * a3]) & ~((v12 + v14[2 * a3]) >> 31);
  if (v17 >= 255)
  {
    LOBYTE(v17) = -1;
  }

  v14[2 * a3] = v17;
  v18 = (v12 + v14[3 * a3]) & ~((v12 + v14[3 * a3]) >> 31);
  if (v18 >= 255)
  {
    LOBYTE(v18) = -1;
  }

  v14[3 * a3] = v18;
  v19 = a2 + 2;
  v20 = (v13 + a2[2]) & ~((v13 + a2[2]) >> 31);
  if (v20 >= 255)
  {
    LOBYTE(v20) = -1;
  }

  *v19 = v20;
  v21 = (v12 + v19[a3]) & ~((v12 + v19[a3]) >> 31);
  if (v21 >= 255)
  {
    LOBYTE(v21) = -1;
  }

  v19[a3] = v21;
  v22 = (v12 + v19[2 * a3]) & ~((v12 + v19[2 * a3]) >> 31);
  if (v22 >= 255)
  {
    LOBYTE(v22) = -1;
  }

  v19[2 * a3] = v22;
  v23 = (v12 + v19[3 * a3]) & ~((v12 + v19[3 * a3]) >> 31);
  if (v23 >= 255)
  {
    LOBYTE(v23) = -1;
  }

  v19[3 * a3] = v23;
  v25 = a2[3];
  v24 = a2 + 3;
  v26 = (v13 + v25) & ~((v13 + v25) >> 31);
  if (v26 >= 255)
  {
    LOBYTE(v26) = -1;
  }

  *v24 = v26;
  v27 = (v12 + v24[a3]) & ~((v12 + v24[a3]) >> 31);
  if (v27 >= 255)
  {
    LOBYTE(v27) = -1;
  }

  v24[a3] = v27;
  v28 = (v12 + v24[2 * a3]) & ~((v12 + v24[2 * a3]) >> 31);
  if (v28 >= 255)
  {
    LOBYTE(v28) = -1;
  }

  v24[2 * a3] = v28;
  v29 = (v12 + v24[3 * a3]) & ~((v12 + v24[3 * a3]) >> 31);
  if (v29 >= 255)
  {
    LOBYTE(v29) = -1;
  }

  v24[3 * a3] = v29;
  return result;
}

uint64_t vpx_highbd_iwht4x4_16_add_c(int *a1, __int16 *a2, int a3, int a4)
{
  v4 = a1[1] >> 2;
  v5 = a1[3] >> 2;
  v6 = v4 + (*a1 >> 2);
  v7 = (a1[2] >> 2) - v5;
  v8 = (v6 - v7) >> 1;
  v9 = v8 - v5;
  v10 = v8 - v4;
  v11 = v8 - v4 + v7;
  v12 = v6 - v9;
  v13 = a1[5] >> 2;
  v14 = a1[7] >> 2;
  v15 = v13 + (a1[4] >> 2);
  v16 = (a1[6] >> 2) - v14;
  v17 = (v15 - v16) >> 1;
  v18 = v17 - v14;
  v19 = v17 - v13;
  v20 = v17 - v13 + v16;
  v21 = v15 - (v17 - v14);
  v22 = a1[9] >> 2;
  v23 = a1[11] >> 2;
  v24 = v22 + (a1[8] >> 2);
  v25 = (a1[10] >> 2) - v23;
  v26 = (v24 - v25) >> 1;
  v27 = v26 - v23;
  v28 = v26 - v22;
  v29 = v26 - v22 + v25;
  v30 = v24 - v27;
  v31 = a1[13] >> 2;
  v32 = a1[15] >> 2;
  v33 = v31 + (a1[12] >> 2);
  v34 = (a1[14] >> 2) - v32;
  v35 = (v33 - v34) >> 1;
  v36 = v35 - v32;
  v37 = v35 - v31;
  v38 = v35 - v31 + v34;
  v39 = v33 - v36;
  v40 = a3;
  v41 = 2 * a3;
  v42 = 3 * a3;
  v43 = v21 + v12;
  v44 = v30 - v39;
  v45 = (v43 - v44) >> 1;
  v46 = v45 - v39;
  v47 = v45 - v21;
  v48 = v43 - (v45 - v39);
  v49 = v47 + v44;
  v50 = v48 + *a2;
  if (a4 == 12)
  {
    result = 4095;
    if (v50 >= 0xFFF)
    {
      v118 = 4095;
    }

    else
    {
      v118 = v50;
    }

    if (v50 < 0)
    {
      v118 = 0;
    }

    *a2 = v118;
    v119 = a2[v40] + v46;
    if (v119 >= 0xFFF)
    {
      v120 = 4095;
    }

    else
    {
      v120 = a2[v40] + v46;
    }

    if (v119 >= 0)
    {
      v121 = v120;
    }

    else
    {
      v121 = 0;
    }

    a2[v40] = v121;
    v122 = a2[v41] + v47;
    if (v122 >= 0xFFF)
    {
      v123 = 4095;
    }

    else
    {
      v123 = a2[v41] + v47;
    }

    if (v122 >= 0)
    {
      v124 = v123;
    }

    else
    {
      v124 = 0;
    }

    a2[v41] = v124;
    v125 = v42;
    v126 = a2[v125] + v49;
    if (v126 >= 0xFFF)
    {
      v127 = 4095;
    }

    else
    {
      v127 = a2[v125] + v49;
    }

    if (v126 >= 0)
    {
      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    a2[v125] = v128;
    v129 = v18 + v9;
    v130 = v27 - v36;
    v131 = (v129 - v130) >> 1;
    v132 = v131 - v36;
    v133 = a2 + 1;
    v134 = a2[1] + v129 - v132;
    if (v134 >= 0xFFF)
    {
      v135 = 4095;
    }

    else
    {
      v135 = v134;
    }

    if (v134 >= 0)
    {
      v136 = v135;
    }

    else
    {
      v136 = 0;
    }

    *v133 = v136;
    v137 = v133[v40] + v132;
    if (v137 >= 0xFFF)
    {
      v138 = 4095;
    }

    else
    {
      v138 = v133[v40] + v132;
    }

    if (v137 >= 0)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    v133[v40] = v139;
    v140 = v131 - v18;
    v141 = v133[v41] + v131 - v18;
    if (v141 >= 0xFFF)
    {
      v142 = 4095;
    }

    else
    {
      v142 = v141;
    }

    if (v141 >= 0)
    {
      v143 = v142;
    }

    else
    {
      v143 = 0;
    }

    v133[v41] = v143;
    v144 = v133[v125] + v130 + v140;
    if (v144 >= 0xFFF)
    {
      v145 = 4095;
    }

    else
    {
      v145 = v144;
    }

    if (v144 >= 0)
    {
      v146 = v145;
    }

    else
    {
      v146 = 0;
    }

    v133[v125] = v146;
    v147 = v19 + v10;
    v148 = v28 - v37;
    v149 = (v147 - v148) >> 1;
    v150 = v149 - v37;
    v151 = a2 + 2;
    v152 = a2[2] + v147 - v150;
    if (v152 >= 0xFFF)
    {
      v153 = 4095;
    }

    else
    {
      v153 = v152;
    }

    if (v152 >= 0)
    {
      v154 = v153;
    }

    else
    {
      v154 = 0;
    }

    *v151 = v154;
    v155 = v151[v40] + v150;
    if (v155 >= 0xFFF)
    {
      v156 = 4095;
    }

    else
    {
      v156 = v151[v40] + v150;
    }

    if (v155 >= 0)
    {
      v157 = v156;
    }

    else
    {
      v157 = 0;
    }

    v151[v40] = v157;
    v158 = v149 - v19;
    v159 = v151[v41] + v158;
    if (v159 >= 0xFFF)
    {
      v160 = 4095;
    }

    else
    {
      v160 = v151[v41] + v158;
    }

    if (v159 >= 0)
    {
      v161 = v160;
    }

    else
    {
      v161 = 0;
    }

    v151[v41] = v161;
    v162 = v151[v125] + v148 + v158;
    if (v162 >= 0xFFF)
    {
      v163 = 4095;
    }

    else
    {
      v163 = v162;
    }

    if (v162 >= 0)
    {
      v164 = v163;
    }

    else
    {
      v164 = 0;
    }

    v151[v125] = v164;
    v165 = v20 + v11;
    v166 = v29 - v38;
    v167 = (v165 - v166) >> 1;
    v168 = v167 - v38;
    v169 = v167 - v20;
    v171 = a2[3];
    v170 = a2 + 3;
    v172 = v171 + v165 - v168;
    if (v172 >= 0xFFF)
    {
      v173 = 4095;
    }

    else
    {
      v173 = v172;
    }

    if (v172 >= 0)
    {
      v174 = v173;
    }

    else
    {
      v174 = 0;
    }

    *v170 = v174;
    v175 = v170[v40] + v168;
    if (v175 >= 0xFFF)
    {
      v176 = 4095;
    }

    else
    {
      v176 = v170[v40] + v168;
    }

    if (v175 >= 0)
    {
      v177 = v176;
    }

    else
    {
      v177 = 0;
    }

    v170[v40] = v177;
    v178 = v170[v41] + v169;
    if (v178 >= 0xFFF)
    {
      v179 = 4095;
    }

    else
    {
      v179 = v170[v41] + v169;
    }

    if (v178 >= 0)
    {
      v180 = v179;
    }

    else
    {
      v180 = 0;
    }

    v170[v41] = v180;
    v115 = &v170[v125];
    v116 = v170[v125] + v166 + v169;
    v117 = v116 >= 0xFFF;
  }

  else if (a4 == 10)
  {
    result = 1023;
    if (v50 >= 0x3FF)
    {
      v52 = 1023;
    }

    else
    {
      v52 = v50;
    }

    if (v50 < 0)
    {
      v52 = 0;
    }

    *a2 = v52;
    v53 = a2[v40] + v46;
    if (v53 >= 0x3FF)
    {
      v54 = 1023;
    }

    else
    {
      v54 = a2[v40] + v46;
    }

    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    a2[v40] = v55;
    v56 = a2[v41] + v47;
    if (v56 >= 0x3FF)
    {
      v57 = 1023;
    }

    else
    {
      v57 = a2[v41] + v47;
    }

    if (v56 >= 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    a2[v41] = v58;
    v59 = v42;
    v60 = a2[v59] + v49;
    if (v60 >= 0x3FF)
    {
      v61 = 1023;
    }

    else
    {
      v61 = a2[v59] + v49;
    }

    if (v60 >= 0)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    a2[v59] = v62;
    v63 = v18 + v9;
    v64 = v27 - v36;
    v65 = (v63 - v64) >> 1;
    v66 = v65 - v36;
    v67 = a2 + 1;
    v68 = a2[1] + v63 - v66;
    if (v68 >= 0x3FF)
    {
      v69 = 1023;
    }

    else
    {
      v69 = v68;
    }

    if (v68 >= 0)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    *v67 = v70;
    v71 = v67[v40] + v66;
    if (v71 >= 0x3FF)
    {
      v72 = 1023;
    }

    else
    {
      v72 = v67[v40] + v66;
    }

    if (v71 >= 0)
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    v67[v40] = v73;
    v74 = v65 - v18;
    v75 = v67[v41] + v65 - v18;
    if (v75 >= 0x3FF)
    {
      v76 = 1023;
    }

    else
    {
      v76 = v75;
    }

    if (v75 >= 0)
    {
      v77 = v76;
    }

    else
    {
      v77 = 0;
    }

    v67[v41] = v77;
    v78 = v67[v59] + v64 + v74;
    if (v78 >= 0x3FF)
    {
      v79 = 1023;
    }

    else
    {
      v79 = v78;
    }

    if (v78 >= 0)
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    v67[v59] = v80;
    v81 = v19 + v10;
    v82 = v28 - v37;
    v83 = (v81 - v82) >> 1;
    v84 = v83 - v37;
    v85 = a2 + 2;
    v86 = a2[2] + v81 - v84;
    if (v86 >= 0x3FF)
    {
      v87 = 1023;
    }

    else
    {
      v87 = v86;
    }

    if (v86 >= 0)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    *v85 = v88;
    v89 = v85[v40] + v84;
    if (v89 >= 0x3FF)
    {
      v90 = 1023;
    }

    else
    {
      v90 = v85[v40] + v84;
    }

    if (v89 >= 0)
    {
      v91 = v90;
    }

    else
    {
      v91 = 0;
    }

    v85[v40] = v91;
    v92 = v83 - v19;
    v93 = v85[v41] + v92;
    if (v93 >= 0x3FF)
    {
      v94 = 1023;
    }

    else
    {
      v94 = v85[v41] + v92;
    }

    if (v93 >= 0)
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    v85[v41] = v95;
    v96 = v85[v59] + v82 + v92;
    if (v96 >= 0x3FF)
    {
      v97 = 1023;
    }

    else
    {
      v97 = v96;
    }

    if (v96 >= 0)
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    v85[v59] = v98;
    v99 = v20 + v11;
    v100 = v29 - v38;
    v101 = (v99 - v100) >> 1;
    v102 = v101 - v38;
    v103 = v101 - v20;
    v105 = a2[3];
    v104 = a2 + 3;
    v106 = v105 + v99 - v102;
    if (v106 >= 0x3FF)
    {
      v107 = 1023;
    }

    else
    {
      v107 = v106;
    }

    if (v106 >= 0)
    {
      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    *v104 = v108;
    v109 = v104[v40] + v102;
    if (v109 >= 0x3FF)
    {
      v110 = 1023;
    }

    else
    {
      v110 = v104[v40] + v102;
    }

    if (v109 >= 0)
    {
      v111 = v110;
    }

    else
    {
      v111 = 0;
    }

    v104[v40] = v111;
    v112 = v104[v41] + v103;
    if (v112 >= 0x3FF)
    {
      v113 = 1023;
    }

    else
    {
      v113 = v104[v41] + v103;
    }

    if (v112 >= 0)
    {
      v114 = v113;
    }

    else
    {
      v114 = 0;
    }

    v104[v41] = v114;
    v115 = &v104[v59];
    v116 = v104[v59] + v100 + v103;
    v117 = v116 >= 0x3FF;
  }

  else
  {
    result = 255;
    if (v50 >= 0xFF)
    {
      v181 = 255;
    }

    else
    {
      v181 = v50;
    }

    if (v50 < 0)
    {
      v181 = 0;
    }

    *a2 = v181;
    v182 = a2[v40] + v46;
    if (v182 >= 0xFF)
    {
      v183 = 255;
    }

    else
    {
      v183 = a2[v40] + v46;
    }

    if (v182 >= 0)
    {
      v184 = v183;
    }

    else
    {
      v184 = 0;
    }

    a2[v40] = v184;
    v185 = a2[v41] + v47;
    if (v185 >= 0xFF)
    {
      v186 = 255;
    }

    else
    {
      v186 = a2[v41] + v47;
    }

    if (v185 >= 0)
    {
      v187 = v186;
    }

    else
    {
      v187 = 0;
    }

    a2[v41] = v187;
    v188 = v42;
    v189 = a2[v188] + v49;
    if (v189 >= 0xFF)
    {
      v190 = 255;
    }

    else
    {
      v190 = a2[v188] + v49;
    }

    if (v189 >= 0)
    {
      v191 = v190;
    }

    else
    {
      v191 = 0;
    }

    a2[v188] = v191;
    v192 = v18 + v9;
    v193 = v27 - v36;
    v194 = (v192 - v193) >> 1;
    v195 = v194 - v36;
    v196 = a2 + 1;
    v197 = a2[1] + v192 - v195;
    if (v197 >= 0xFF)
    {
      v198 = 255;
    }

    else
    {
      v198 = v197;
    }

    if (v197 >= 0)
    {
      v199 = v198;
    }

    else
    {
      v199 = 0;
    }

    *v196 = v199;
    v200 = v196[v40] + v195;
    if (v200 >= 0xFF)
    {
      v201 = 255;
    }

    else
    {
      v201 = v196[v40] + v195;
    }

    if (v200 >= 0)
    {
      v202 = v201;
    }

    else
    {
      v202 = 0;
    }

    v196[v40] = v202;
    v203 = v194 - v18;
    v204 = v196[v41] + v194 - v18;
    if (v204 >= 0xFF)
    {
      v205 = 255;
    }

    else
    {
      v205 = v204;
    }

    if (v204 >= 0)
    {
      v206 = v205;
    }

    else
    {
      v206 = 0;
    }

    v196[v41] = v206;
    v207 = v196[v188] + v193 + v203;
    if (v207 >= 0xFF)
    {
      v208 = 255;
    }

    else
    {
      v208 = v207;
    }

    if (v207 >= 0)
    {
      v209 = v208;
    }

    else
    {
      v209 = 0;
    }

    v196[v188] = v209;
    v210 = v19 + v10;
    v211 = v28 - v37;
    v212 = (v210 - v211) >> 1;
    v213 = v212 - v37;
    v214 = a2 + 2;
    v215 = a2[2] + v210 - v213;
    if (v215 >= 0xFF)
    {
      v216 = 255;
    }

    else
    {
      v216 = v215;
    }

    if (v215 >= 0)
    {
      v217 = v216;
    }

    else
    {
      v217 = 0;
    }

    *v214 = v217;
    v218 = v214[v40] + v213;
    if (v218 >= 0xFF)
    {
      v219 = 255;
    }

    else
    {
      v219 = v214[v40] + v213;
    }

    if (v218 >= 0)
    {
      v220 = v219;
    }

    else
    {
      v220 = 0;
    }

    v214[v40] = v220;
    v221 = v212 - v19;
    v222 = v214[v41] + v221;
    if (v222 >= 0xFF)
    {
      v223 = 255;
    }

    else
    {
      v223 = v214[v41] + v221;
    }

    if (v222 >= 0)
    {
      v224 = v223;
    }

    else
    {
      v224 = 0;
    }

    v214[v41] = v224;
    v225 = v214[v188] + v211 + v221;
    if (v225 >= 0xFF)
    {
      v226 = 255;
    }

    else
    {
      v226 = v225;
    }

    if (v225 >= 0)
    {
      v227 = v226;
    }

    else
    {
      v227 = 0;
    }

    v214[v188] = v227;
    v228 = v20 + v11;
    v229 = v29 - v38;
    v230 = (v228 - v229) >> 1;
    v231 = v230 - v38;
    v232 = v230 - v20;
    v234 = a2[3];
    v233 = a2 + 3;
    v235 = v234 + v228 - v231;
    if (v235 >= 0xFF)
    {
      v236 = 255;
    }

    else
    {
      v236 = v235;
    }

    if (v235 >= 0)
    {
      v237 = v236;
    }

    else
    {
      v237 = 0;
    }

    *v233 = v237;
    v238 = v233[v40] + v231;
    if (v238 >= 0xFF)
    {
      v239 = 255;
    }

    else
    {
      v239 = v233[v40] + v231;
    }

    if (v238 >= 0)
    {
      v240 = v239;
    }

    else
    {
      v240 = 0;
    }

    v233[v40] = v240;
    v241 = v233[v41] + v232;
    if (v241 >= 0xFF)
    {
      v242 = 255;
    }

    else
    {
      v242 = v233[v41] + v232;
    }

    if (v241 >= 0)
    {
      v243 = v242;
    }

    else
    {
      v243 = 0;
    }

    v233[v41] = v243;
    v115 = &v233[v188];
    v116 = v233[v188] + v229 + v232;
    v117 = v116 >= 0xFF;
  }

  if (v117)
  {
    v244 = result;
  }

  else
  {
    v244 = v116;
  }

  if ((v116 & 0x80000000) == 0)
  {
    v245 = v244;
  }

  else
  {
    v245 = 0;
  }

  *v115 = v245;
  return result;
}

int *vpx_highbd_iwht4x4_1_add_c(int *result, unsigned __int16 *a2, int a3, int a4)
{
  v4 = *result;
  v5 = *result >> 3;
  v6 = (*result >> 2) - v5;
  v7 = v6 >> 1;
  v8 = v6 - (v6 >> 1) + *a2;
  if (a4 == 12)
  {
    if (v8 >= 0xFFF)
    {
      LOWORD(v62) = 4095;
    }

    else
    {
      v62 = v6 - (v6 >> 1) + *a2;
    }

    if (v8 >= 0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    *a2 = v63;
    v64 = v7 + a2[a3];
    if (v64 >= 0xFFF)
    {
      v65 = 4095;
    }

    else
    {
      v65 = v7 + a2[a3];
    }

    if (v64 >= 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    a2[a3] = v66;
    v67 = v7 + a2[2 * a3];
    if (v67 >= 0xFFF)
    {
      v68 = 4095;
    }

    else
    {
      v68 = v7 + a2[2 * a3];
    }

    if (v67 >= 0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    a2[2 * a3] = v69;
    v70 = v7 + a2[3 * a3];
    if (v70 >= 0xFFF)
    {
      v71 = 4095;
    }

    else
    {
      v71 = v70;
    }

    if (v70 >= 0)
    {
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    a2[3 * a3] = v72;
    v73 = v4 >> 4;
    v74 = v5 - v73;
    v75 = (a2 + 1);
    v76 = v74 + a2[1];
    if (v76 >= 0xFFF)
    {
      v77 = 4095;
    }

    else
    {
      v77 = v74 + a2[1];
    }

    if (v76 >= 0)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    *v75 = v78;
    v79 = v73 + v75[a3];
    if (v79 >= 0xFFF)
    {
      v80 = 4095;
    }

    else
    {
      v80 = v73 + v75[a3];
    }

    if (v79 >= 0)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v75[a3] = v81;
    v82 = v73 + v75[2 * a3];
    if (v82 >= 0xFFF)
    {
      v83 = 4095;
    }

    else
    {
      v83 = v73 + v75[2 * a3];
    }

    if (v82 >= 0)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    v75[2 * a3] = v84;
    v85 = v73 + v75[3 * a3];
    if (v85 >= 0xFFF)
    {
      v86 = 4095;
    }

    else
    {
      v86 = v73 + v75[3 * a3];
    }

    if (v85 >= 0)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    v75[3 * a3] = v87;
    v88 = (a2 + 2);
    v89 = v74 + a2[2];
    if (v89 >= 0xFFF)
    {
      v90 = 4095;
    }

    else
    {
      v90 = v74 + a2[2];
    }

    if (v89 >= 0)
    {
      v91 = v90;
    }

    else
    {
      v91 = 0;
    }

    *v88 = v91;
    v92 = v73 + v88[a3];
    if (v92 >= 0xFFF)
    {
      v93 = 4095;
    }

    else
    {
      v93 = v73 + v88[a3];
    }

    if (v92 >= 0)
    {
      v94 = v93;
    }

    else
    {
      v94 = 0;
    }

    v88[a3] = v94;
    v95 = v73 + v88[2 * a3];
    if (v95 >= 0xFFF)
    {
      v96 = 4095;
    }

    else
    {
      v96 = v73 + v88[2 * a3];
    }

    if (v95 >= 0)
    {
      v97 = v96;
    }

    else
    {
      v97 = 0;
    }

    v88[2 * a3] = v97;
    v98 = v73 + v88[3 * a3];
    if (v98 >= 0xFFF)
    {
      v99 = 4095;
    }

    else
    {
      v99 = v73 + v88[3 * a3];
    }

    if (v98 >= 0)
    {
      v100 = v99;
    }

    else
    {
      v100 = 0;
    }

    v88[3 * a3] = v100;
    v102 = a2[3];
    v101 = (a2 + 3);
    v103 = v74 + v102;
    if (v103 >= 0xFFF)
    {
      v104 = 4095;
    }

    else
    {
      v104 = v103;
    }

    if (v103 >= 0)
    {
      v105 = v104;
    }

    else
    {
      v105 = 0;
    }

    *v101 = v105;
    v106 = v73 + v101[a3];
    if (v106 >= 0xFFF)
    {
      v107 = 4095;
    }

    else
    {
      v107 = v73 + v101[a3];
    }

    if (v106 >= 0)
    {
      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    v101[a3] = v108;
    v109 = v73 + v101[2 * a3];
    if (v109 >= 0xFFF)
    {
      v110 = 4095;
    }

    else
    {
      v110 = v73 + v101[2 * a3];
    }

    if (v109 >= 0)
    {
      v111 = v110;
    }

    else
    {
      v111 = 0;
    }

    v101[2 * a3] = v111;
    v112 = v73 + v101[3 * a3];
    if (v112 >= 0xFFF)
    {
      v113 = 4095;
    }

    else
    {
      v113 = v73 + v101[3 * a3];
    }

    if (v112 >= 0)
    {
      v114 = v113;
    }

    else
    {
      v114 = 0;
    }

    v101[3 * a3] = v114;
  }

  else if (a4 == 10)
  {
    if (v8 >= 0x3FF)
    {
      LOWORD(v9) = 1023;
    }

    else
    {
      v9 = v6 - (v6 >> 1) + *a2;
    }

    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    *a2 = v10;
    v11 = v7 + a2[a3];
    if (v11 >= 0x3FF)
    {
      v12 = 1023;
    }

    else
    {
      v12 = v7 + a2[a3];
    }

    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    a2[a3] = v13;
    v14 = v7 + a2[2 * a3];
    if (v14 >= 0x3FF)
    {
      v15 = 1023;
    }

    else
    {
      v15 = v7 + a2[2 * a3];
    }

    if (v14 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    a2[2 * a3] = v16;
    v17 = v7 + a2[3 * a3];
    if (v17 >= 0x3FF)
    {
      v18 = 1023;
    }

    else
    {
      v18 = v17;
    }

    if (v17 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    a2[3 * a3] = v19;
    v20 = v4 >> 4;
    v21 = v5 - v20;
    v22 = (a2 + 1);
    v23 = v21 + a2[1];
    if (v23 >= 0x3FF)
    {
      v24 = 1023;
    }

    else
    {
      v24 = v21 + a2[1];
    }

    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    *v22 = v25;
    v26 = v20 + v22[a3];
    if (v26 >= 0x3FF)
    {
      v27 = 1023;
    }

    else
    {
      v27 = v20 + v22[a3];
    }

    if (v26 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v22[a3] = v28;
    v29 = v20 + v22[2 * a3];
    if (v29 >= 0x3FF)
    {
      v30 = 1023;
    }

    else
    {
      v30 = v20 + v22[2 * a3];
    }

    if (v29 >= 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v22[2 * a3] = v31;
    v32 = v20 + v22[3 * a3];
    if (v32 >= 0x3FF)
    {
      v33 = 1023;
    }

    else
    {
      v33 = v20 + v22[3 * a3];
    }

    if (v32 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v22[3 * a3] = v34;
    v35 = (a2 + 2);
    v36 = v21 + a2[2];
    if (v36 >= 0x3FF)
    {
      v37 = 1023;
    }

    else
    {
      v37 = v21 + a2[2];
    }

    if (v36 >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    *v35 = v38;
    v39 = v20 + v35[a3];
    if (v39 >= 0x3FF)
    {
      v40 = 1023;
    }

    else
    {
      v40 = v20 + v35[a3];
    }

    if (v39 >= 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v35[a3] = v41;
    v42 = v20 + v35[2 * a3];
    if (v42 >= 0x3FF)
    {
      v43 = 1023;
    }

    else
    {
      v43 = v20 + v35[2 * a3];
    }

    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    v35[2 * a3] = v44;
    v45 = v20 + v35[3 * a3];
    if (v45 >= 0x3FF)
    {
      v46 = 1023;
    }

    else
    {
      v46 = v20 + v35[3 * a3];
    }

    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v35[3 * a3] = v47;
    v49 = a2[3];
    v48 = (a2 + 3);
    v50 = v21 + v49;
    if (v50 >= 0x3FF)
    {
      v51 = 1023;
    }

    else
    {
      v51 = v50;
    }

    if (v50 >= 0)
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    *v48 = v52;
    v53 = v20 + v48[a3];
    if (v53 >= 0x3FF)
    {
      v54 = 1023;
    }

    else
    {
      v54 = v20 + v48[a3];
    }

    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v48[a3] = v55;
    v56 = v20 + v48[2 * a3];
    if (v56 >= 0x3FF)
    {
      v57 = 1023;
    }

    else
    {
      v57 = v20 + v48[2 * a3];
    }

    if (v56 >= 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    v48[2 * a3] = v58;
    v59 = v20 + v48[3 * a3];
    if (v59 >= 0x3FF)
    {
      v60 = 1023;
    }

    else
    {
      v60 = v20 + v48[3 * a3];
    }

    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v48[3 * a3] = v61;
  }

  else
  {
    if (v8 >= 0xFF)
    {
      LOWORD(v115) = 255;
    }

    else
    {
      v115 = v6 - (v6 >> 1) + *a2;
    }

    if (v8 >= 0)
    {
      v116 = v115;
    }

    else
    {
      v116 = 0;
    }

    *a2 = v116;
    v117 = v7 + a2[a3];
    if (v117 >= 0xFF)
    {
      v118 = 255;
    }

    else
    {
      v118 = v7 + a2[a3];
    }

    if (v117 >= 0)
    {
      v119 = v118;
    }

    else
    {
      v119 = 0;
    }

    a2[a3] = v119;
    v120 = v7 + a2[2 * a3];
    if (v120 >= 0xFF)
    {
      v121 = 255;
    }

    else
    {
      v121 = v7 + a2[2 * a3];
    }

    if (v120 >= 0)
    {
      v122 = v121;
    }

    else
    {
      v122 = 0;
    }

    a2[2 * a3] = v122;
    v123 = v7 + a2[3 * a3];
    if (v123 >= 0xFF)
    {
      v124 = 255;
    }

    else
    {
      v124 = v123;
    }

    if (v123 >= 0)
    {
      v125 = v124;
    }

    else
    {
      v125 = 0;
    }

    a2[3 * a3] = v125;
    v126 = v4 >> 4;
    v127 = v5 - v126;
    v128 = (a2 + 1);
    v129 = v127 + a2[1];
    if (v129 >= 0xFF)
    {
      v130 = 255;
    }

    else
    {
      v130 = v127 + a2[1];
    }

    if (v129 >= 0)
    {
      v131 = v130;
    }

    else
    {
      v131 = 0;
    }

    *v128 = v131;
    v132 = v126 + v128[a3];
    if (v132 >= 0xFF)
    {
      v133 = 255;
    }

    else
    {
      v133 = v126 + v128[a3];
    }

    if (v132 >= 0)
    {
      v134 = v133;
    }

    else
    {
      v134 = 0;
    }

    v128[a3] = v134;
    v135 = v126 + v128[2 * a3];
    if (v135 >= 0xFF)
    {
      v136 = 255;
    }

    else
    {
      v136 = v126 + v128[2 * a3];
    }

    if (v135 >= 0)
    {
      v137 = v136;
    }

    else
    {
      v137 = 0;
    }

    v128[2 * a3] = v137;
    v138 = v126 + v128[3 * a3];
    if (v138 >= 0xFF)
    {
      v139 = 255;
    }

    else
    {
      v139 = v126 + v128[3 * a3];
    }

    if (v138 >= 0)
    {
      v140 = v139;
    }

    else
    {
      v140 = 0;
    }

    v128[3 * a3] = v140;
    v141 = (a2 + 2);
    v142 = v127 + a2[2];
    if (v142 >= 0xFF)
    {
      v143 = 255;
    }

    else
    {
      v143 = v127 + a2[2];
    }

    if (v142 >= 0)
    {
      v144 = v143;
    }

    else
    {
      v144 = 0;
    }

    *v141 = v144;
    v145 = v126 + v141[a3];
    if (v145 >= 0xFF)
    {
      v146 = 255;
    }

    else
    {
      v146 = v126 + v141[a3];
    }

    if (v145 >= 0)
    {
      v147 = v146;
    }

    else
    {
      v147 = 0;
    }

    v141[a3] = v147;
    v148 = v126 + v141[2 * a3];
    if (v148 >= 0xFF)
    {
      v149 = 255;
    }

    else
    {
      v149 = v126 + v141[2 * a3];
    }

    if (v148 >= 0)
    {
      v150 = v149;
    }

    else
    {
      v150 = 0;
    }

    v141[2 * a3] = v150;
    v151 = v126 + v141[3 * a3];
    if (v151 >= 0xFF)
    {
      v152 = 255;
    }

    else
    {
      v152 = v126 + v141[3 * a3];
    }

    if (v151 >= 0)
    {
      v153 = v152;
    }

    else
    {
      v153 = 0;
    }

    v141[3 * a3] = v153;
    v155 = a2[3];
    v154 = (a2 + 3);
    v156 = v127 + v155;
    if (v156 >= 0xFF)
    {
      v157 = 255;
    }

    else
    {
      v157 = v156;
    }

    if (v156 >= 0)
    {
      v158 = v157;
    }

    else
    {
      v158 = 0;
    }

    *v154 = v158;
    v159 = v126 + v154[a3];
    if (v159 >= 0xFF)
    {
      v160 = 255;
    }

    else
    {
      v160 = v126 + v154[a3];
    }

    if (v159 >= 0)
    {
      v161 = v160;
    }

    else
    {
      v161 = 0;
    }

    v154[a3] = v161;
    v162 = v126 + v154[2 * a3];
    if (v162 >= 0xFF)
    {
      v163 = 255;
    }

    else
    {
      v163 = v126 + v154[2 * a3];
    }

    if (v162 >= 0)
    {
      v164 = v163;
    }

    else
    {
      v164 = 0;
    }

    v154[2 * a3] = v164;
    v165 = v126 + v154[3 * a3];
    if (v165 >= 0xFF)
    {
      v166 = 255;
    }

    else
    {
      v166 = v126 + v154[3 * a3];
    }

    if (v165 >= 0)
    {
      v167 = v166;
    }

    else
    {
      v167 = 0;
    }

    v154[3 * a3] = v167;
  }

  return result;
}

void *vp8_lookahead_init(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 2;
    v6 = malloc_type_calloc(2uLL, 0xB8uLL, 0x10100400B4EC111uLL);
    v5[2] = v6;
    if (!v6)
    {
LABEL_22:
      free(v5);
      return 0;
    }

    v7 = a1 + 15;
    v8 = a2 + 15;
    if (v6[12])
    {
      v9 = v6[11];
      if (v9)
      {
        v10 = v6;
        free(*(v9 - 8));
        v6 = v10;
      }
    }

    *(v6 + 8) = 0u;
    *(v6 + 9) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    if (vp8_yv12_realloc_frame_buffer(v6, v7 & 0xFFFFFFF0, v8 & 0xFFFFFFF0, 32))
    {
      goto LABEL_11;
    }

    v11 = v5[2];
    v12 = (v11 + 184);
    if (*(v11 + 280))
    {
      v13 = *(v11 + 272);
      if (v13)
      {
        free(*(v13 - 8));
      }
    }

    v12[8] = 0u;
    v12[9] = 0u;
    v12[6] = 0u;
    v12[7] = 0u;
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    if (vp8_yv12_realloc_frame_buffer(v12, v7 & 0xFFFFFFF0, v8 & 0xFFFFFFF0, 32))
    {
LABEL_11:
      v14 = v5[2];
      if (v14)
      {
        v15 = *v5;
        if (v15)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0uLL;
          do
          {
            v19 = v5[2];
            if (v19)
            {
              v20 = (v19 + v16);
              if (*(v19 + v16 + 96))
              {
                v21 = *(v19 + v16 + 88);
                if (v21)
                {
                  free(*(v21 - 8));
                  v18 = 0uLL;
                }
              }

              v20[8] = v18;
              v20[9] = v18;
              v20[6] = v18;
              v20[7] = v18;
              v20[4] = v18;
              v20[5] = v18;
              v20[2] = v18;
              v20[3] = v18;
              *v20 = v18;
              v20[1] = v18;
              v15 = *v5;
            }

            ++v17;
            v16 += 184;
          }

          while (v17 < v15);
          v14 = v5[2];
        }

        free(v14);
      }

      goto LABEL_22;
    }
  }

  return v5;
}

uint64_t vp8_lookahead_push(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a1 + 4);
  if ((v7 + 2) > *a1)
  {
    return 1;
  }

  v11 = *a2;
  v12 = a2[1];
  *(a1 + 4) = v7 + 1;
  v14 = *(a1 + 12);
  if (v14 + 1 >= v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  v13 = *(a1 + 16);
  v16 = v13 + 184 * v14;
  *(a1 + 12) = v14 + 1 - v15;
  if (!a5 && (v17 = a6) != 0 && v6 == 1)
  {
    v18 = (v12 + 15) >> 4;
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = ((v11 + 15) >> 4);
      do
      {
        for (i = 0; ; i = v22)
        {
          if (i < v20)
          {
            i = i;
            while (!*(v17 + i))
            {
              if (v20 == ++i)
              {
                goto LABEL_11;
              }
            }
          }

          if (i == v20)
          {
            break;
          }

          v22 = i;
          if (i < v20)
          {
            v22 = i;
            while (*(v17 + v22))
            {
              if (v20 == ++v22)
              {
                v22 = v20;
                break;
              }
            }
          }

          vp8_copy_and_extend_frame_with_rect(a2, v16, 16 * v19, 16 * i, 16, 16 * (v22 - i));
        }

LABEL_11:
        v17 += v20;
        ++v19;
      }

      while (v19 != v18);
    }
  }

  else
  {
    vp8_copy_and_extend_frame(a2, v13 + 184 * v14);
  }

  result = 0;
  *(v16 + 160) = a3;
  *(v16 + 168) = a4;
  *(v16 + 176) = a5;
  return result;
}

int8x8_t vpx_lpf_vertical_4_neon(uint64_t a1, int a2, const char *a3, const char *a4, const char *a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v16 = vld1_dup_s8(a3);
  v17 = vld1_dup_s8(a4);
  v18 = vld1_dup_s8(a5);
  v20 = *(a1 - 4);
  v19 = (a1 - 4);
  a9.i64[0] = v20;
  v21 = &v19[a2];
  a10.i64[0] = *v21;
  v22 = (v21 + a2);
  a11.i64[0] = *v22;
  v23 = (v22 + a2);
  a12.i64[0] = *v23;
  v24 = (v23 + a2);
  a13.i64[0] = *v24;
  v25 = (v24 + a2);
  v13.i64[0] = *v25;
  v26 = (v25 + a2);
  v14.i64[0] = *v26;
  v15.i64[0] = *(v26 + a2);
  v27 = vzip1q_s8(a9, a10);
  v28 = vzip1q_s8(a11, a12);
  v29 = vzip1q_s8(a13, v13);
  v30 = vzip1q_s8(v14, v15);
  v31 = vzip1q_s16(v27, v28);
  v32 = vzip2q_s16(v27, v28);
  v33 = vzip1q_s16(v29, v30);
  v34 = vzip2q_s16(v29, v30);
  v35 = vzip1q_s32(v31, v33);
  v36 = vzip2q_s32(v31, v33);
  v37 = vzip1q_s32(v32, v34);
  v38 = vzip2q_s32(v32, v34);
  v34.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  v39 = vextq_s8(v36, v36, 8uLL).u64[0];
  v40 = vextq_s8(v37, v37, 8uLL).u64[0];
  v41 = vmax_u8(vabd_u8(*v36.i8, v39), vabd_u8(v40, *v37.i8));
  v42 = vcgt_u8(v41, v18);
  *v38.i8 = vmax_u8(vmax_u8(vmax_u8(vmax_u8(v41, vabd_u8(*v35.i8, *v34.i8)), vabd_u8(*v34.i8, *v36.i8)), vabd_u8(*v38.i8, v40)), vabd_u8(*&vextq_s8(v38, v38, 8uLL), *v38.i8));
  *v34.i8 = vabd_u8(v39, *v37.i8);
  v43 = vcge_u8(v16, vqadd_u8(vqadd_u8(*v34.i8, *v34.i8), vshr_n_u8(vabd_u8(*v36.i8, v40), 1uLL)));
  *v36.i8 = veor_s8(*v36.i8, 0x8080808080808080);
  *v34.i8 = veor_s8(v39, 0x8080808080808080);
  *v35.i8 = veor_s8(*v37.i8, 0x8080808080808080);
  *v37.i8 = veor_s8(v40, 0x8080808080808080);
  v44 = vqsub_s8(*v35.i8, *v34.i8);
  v45 = vand_s8(vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(*v36.i8, *v37.i8), v42), v44), v44), v44), v43), vcge_u8(v17, *v38.i8));
  v46 = vshr_n_s8(vqadd_s8(v45, 0x404040404040404), 3uLL);
  v47 = veor_s8(vqsub_s8(*v35.i8, v46), 0x8080808080808080);
  v48 = veor_s8(vqadd_s8(*v34.i8, vshr_n_s8(vqadd_s8(v45, 0x303030303030303), 3uLL)), 0x8080808080808080);
  v49 = vbic_s8(vrshr_n_s8(v46, 1uLL), v42);
  v50 = vqsub_s8(*v37.i8, v49);
  result = vqadd_s8(*v36.i8, v49);
  v52 = veor_s8(v50, 0x8080808080808080);
  v53 = veor_s8(result, 0x8080808080808080);
  v19[2] = v53.i8[0];
  v19[3] = v48.i8[0];
  v19[4] = v47.i8[0];
  v19[5] = v52.i8[0];
  v54 = &v19[a2 + 2];
  *v54 = v53.i8[1];
  v54[1] = v48.i8[1];
  v54[2] = v47.i8[1];
  v54[3] = v52.i8[1];
  v55 = &v54[a2];
  *v55 = v53.i8[2];
  v55[1] = v48.i8[2];
  v55[2] = v47.i8[2];
  v55[3] = v52.i8[2];
  v56 = &v55[a2];
  *v56 = v53.i8[3];
  v56[1] = v48.i8[3];
  v56[2] = v47.i8[3];
  v56[3] = v52.i8[3];
  v57 = &v56[a2];
  *v57 = v53.i8[4];
  v57[1] = v48.i8[4];
  v57[2] = v47.i8[4];
  v57[3] = v52.i8[4];
  v58 = &v57[a2];
  *v58 = v53.i8[5];
  v58[1] = v48.i8[5];
  v58[2] = v47.i8[5];
  v58[3] = v52.i8[5];
  v59 = &v58[a2];
  *v59 = v53.i8[6];
  v59[1] = v48.i8[6];
  v59[2] = v47.i8[6];
  v59[3] = v52.i8[6];
  v60 = &v59[a2];
  *v60 = v53.i8[7];
  v60[1] = v48.i8[7];
  v60[2] = v47.i8[7];
  v60[3] = v52.i8[7];
  return result;
}

double vpx_lpf_vertical_4_dual_neon(uint64_t a1, int a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8)
{
  v8 = vld1_dup_s8(a6);
  *v9.i8 = vld1_dup_s8(a3);
  v9.u64[1] = v8;
  v10 = vld1_dup_s8(a7);
  *v11.i8 = vld1_dup_s8(a4);
  v11.u64[1] = v10;
  v12 = vld1_dup_s8(a8);
  *v13.i8 = vld1_dup_s8(a5);
  v13.u64[1] = v12;
  v15 = *(a1 - 4);
  v14 = (a1 - 4);
  v16.i64[0] = v15;
  v17 = &v14[a2];
  v18.i64[0] = *v17;
  v19 = (v17 + a2);
  v20.i64[0] = *v19;
  v21 = (v19 + a2);
  v22.i64[0] = *v21;
  v23 = (v21 + a2);
  v24.i64[0] = *v23;
  v25 = (v23 + a2);
  v26.i64[0] = *v25;
  v27 = (v25 + a2);
  v28.i64[0] = *v27;
  v29 = (v27 + a2);
  v30.i64[0] = *v29;
  v31 = (v29 + a2);
  v32 = *v31;
  v33 = (v31 + a2);
  v34 = *v33;
  v35 = (v33 + a2);
  v36 = *v35;
  v37 = (v35 + a2);
  v38 = *v37;
  v39 = (v37 + a2);
  v40 = *v39;
  v41 = (v39 + a2);
  v42 = *v41;
  v43 = (v41 + a2);
  v16.i64[1] = v32;
  v18.i64[1] = v34;
  v20.i64[1] = v36;
  v22.i64[1] = v38;
  v24.i64[1] = v40;
  v26.i64[1] = v42;
  v28.i64[1] = *v43;
  v30.i64[1] = *(v43 + a2);
  v44 = vtrn1q_s8(v16, v18);
  v45 = vtrn2q_s8(v16, v18);
  v46 = vtrn1q_s8(v20, v22);
  v47 = vtrn2q_s8(v20, v22);
  v48 = vtrn1q_s8(v24, v26);
  v49 = vtrn2q_s8(v24, v26);
  v50 = vtrn1q_s8(v28, v30);
  v51 = vtrn2q_s8(v28, v30);
  v52 = vtrn1q_s16(v44, v46);
  v53 = vtrn2q_s16(v44, v46);
  v54 = vtrn1q_s16(v45, v47);
  v55 = vtrn2q_s16(v45, v47);
  v56 = vtrn1q_s16(v48, v50);
  v57 = vtrn2q_s16(v48, v50);
  v58 = vtrn1q_s16(v49, v51);
  v59 = vtrn2q_s16(v49, v51);
  v60 = vtrn1q_s32(v52, v56);
  v61 = vtrn2q_s32(v52, v56);
  v62 = vtrn1q_s32(v53, v57);
  v63 = vtrn2q_s32(v53, v57);
  v64 = vtrn1q_s32(v54, v58);
  v65 = vtrn2q_s32(v54, v58);
  v66 = vtrn1q_s32(v55, v59);
  v67 = vtrn2q_s32(v55, v59);
  v68 = vmaxq_u8(vabdq_u8(v62, v66), vabdq_u8(v65, v61));
  v69 = vcgtq_u8(v68, v13);
  v70 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v68, vabdq_u8(v60, v64)), vabdq_u8(v64, v62)), vabdq_u8(v63, v65)), vabdq_u8(v67, v63));
  v71 = vabdq_u8(v66, v61);
  v72 = vcgeq_u8(v11, v70);
  v73 = vcgeq_u8(v9, vqaddq_u8(vqaddq_u8(v71, v71), vshrq_n_u8(vabdq_u8(v62, v65), 1uLL)));
  v70.i64[0] = 0x8080808080808080;
  v70.i64[1] = 0x8080808080808080;
  v74 = veorq_s8(v62, v70);
  v75 = veorq_s8(v66, v70);
  v76 = veorq_s8(v61, v70);
  v77 = veorq_s8(v65, v70);
  v78 = vqsubq_s8(v76, v75);
  v79 = vandq_s8(vandq_s8(vqaddq_s8(vqaddq_s8(vqaddq_s8(vandq_s8(vqsubq_s8(v74, v77), v69), v78), v78), v78), v73), v72);
  v72.i64[0] = 0x404040404040404;
  v72.i64[1] = 0x404040404040404;
  v80 = vshrq_n_s8(vqaddq_s8(v79, v72), 3uLL);
  v65.i64[0] = 0x303030303030303;
  v65.i64[1] = 0x303030303030303;
  v81 = veorq_s8(vqsubq_s8(v76, v80), v70);
  v82 = veorq_s8(vqaddq_s8(v75, vshrq_n_s8(vqaddq_s8(v79, v65), 3uLL)), v70);
  v83 = vbicq_s8(vrshrq_n_s8(v80, 1uLL), v69);
  v84 = veorq_s8(vqsubq_s8(v77, v83), v70);
  v85 = veorq_s8(vqaddq_s8(v74, v83), v70);
  v86 = &v14[a2 + 2];
  v14[2] = v85.i8[0];
  v14[3] = v82.i8[0];
  v14[4] = v81.i8[0];
  v14[5] = v84.i8[0];
  v87 = &v14[8 * a2 + 2];
  *v86 = v85.i8[1];
  v86[1] = v82.i8[1];
  v86[2] = v81.i8[1];
  v86[3] = v84.i8[1];
  v88 = &v86[a2];
  *v88 = v85.i8[2];
  v88[1] = v82.i8[2];
  v88[2] = v81.i8[2];
  v88[3] = v84.i8[2];
  v89 = &v88[a2];
  *v89 = v85.i8[3];
  v89[1] = v82.i8[3];
  v89[2] = v81.i8[3];
  v89[3] = v84.i8[3];
  v90 = &v89[a2];
  *v90 = v85.i8[4];
  v90[1] = v82.i8[4];
  v90[2] = v81.i8[4];
  v90[3] = v84.i8[4];
  v91 = &v90[a2];
  *v91 = v85.i8[5];
  v91[1] = v82.i8[5];
  v91[2] = v81.i8[5];
  v91[3] = v84.i8[5];
  v92 = &v91[a2];
  *v92 = v85.i8[6];
  v92[1] = v82.i8[6];
  v92[2] = v81.i8[6];
  v92[3] = v84.i8[6];
  v93 = &v92[a2];
  *v93 = v85.i8[7];
  v93[1] = v82.i8[7];
  v93[2] = v81.i8[7];
  v93[3] = v84.i8[7];
  *&result = vextq_s8(v85, v85, 8uLL).u64[0];
  v80.i64[0] = vextq_s8(v82, v82, 8uLL).u64[0];
  v69.i64[0] = vextq_s8(v81, v81, 8uLL).u64[0];
  v70.i64[0] = vextq_s8(v84, v84, 8uLL).u64[0];
  *v87 = LOBYTE(result);
  v87[1] = v80.i8[0];
  v87[2] = v69.i8[0];
  v87[3] = v70.i8[0];
  v95 = &v87[a2];
  *v95 = BYTE1(result);
  v95[1] = v80.i8[1];
  v95[2] = v69.i8[1];
  v95[3] = v70.i8[1];
  v96 = &v95[a2];
  *v96 = BYTE2(result);
  v96[1] = v80.i8[2];
  v96[2] = v69.i8[2];
  v96[3] = v70.i8[2];
  v97 = &v96[a2];
  *v97 = BYTE3(result);
  v97[1] = v80.i8[3];
  v97[2] = v69.i8[3];
  v97[3] = v70.i8[3];
  v98 = &v97[a2];
  *v98 = BYTE4(result);
  v98[1] = v80.i8[4];
  v98[2] = v69.i8[4];
  v98[3] = v70.i8[4];
  v99 = &v98[a2];
  *v99 = BYTE5(result);
  v99[1] = v80.i8[5];
  v99[2] = v69.i8[5];
  v99[3] = v70.i8[5];
  v100 = &v99[a2];
  *v100 = BYTE6(result);
  v100[1] = v80.i8[6];
  v100[2] = v69.i8[6];
  v100[3] = v70.i8[6];
  v101 = &v100[a2];
  *v101 = HIBYTE(result);
  v101[1] = v80.i8[7];
  v101[2] = v69.i8[7];
  v101[3] = v70.i8[7];
  return result;
}